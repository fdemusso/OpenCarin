"""
Disassembles m68k binary code in 68040 mode.

Configures the disassembler specifically for 68040 to properly interpret the BFEXTU instructions
used extensively in the CarinDB bit-packing implementation.
"""

from __future__ import annotations

import os
import sys
from dataclasses import dataclass, field
from pathlib import Path

import capstone

sys.path.insert(0, str(Path(__file__).resolve().parent))
from os9_modules import Module, enumerate_modules  # noqa: E402

FW = os.environ.get("CARIN_FW", "build/fw/CC93__0560_nav_sw_load")

SHIFTY = {"lsl", "lsr", "asl", "asr", "rol", "ror", "roxl", "roxr", "btst", "bset",
          "bclr", "bchg", "swap"}


def md() -> capstone.Cs:
    # il codice usa istruzioni bitfield (BFEXTU/BFINS), quindi serve almeno 68020
    m = capstone.Cs(capstone.CS_ARCH_M68K, capstone.CS_MODE_M68K_040)
    m.detail = False
    return m


def load(path: str) -> tuple[bytes, list[Module]]:
    data = open(path, "rb").read()
    return data, enumerate_modules(data)


def find_module(mods: list[Module], name: str) -> Module:
    for m in mods:
        if m.name == name:
            return m
    raise SystemExit(f"modulo {name!r} non trovato: {[m.name for m in mods]}")


def code_range(m: Module) -> tuple[int, int]:
    start = m.exec_off if m.exec_off else 0x4C
    end = m.idata if 0 < m.idata < m.size else m.size
    return start, end


@dataclass
class Func:
    start: int
    end: int = 0
    frame: int = 0
    insns: int = 0
    shifts: int = 0
    calls: list[int] = field(default_factory=list)
    text: list[tuple[int, str, str]] = field(default_factory=list)


def disasm_module(data: bytes, m: Module) -> list[tuple[int, int, str, str, bytes]]:
    """Ritorna [(module_off, size, mnemonic, op_str, raw)] sul range di codice."""
    start, end = code_range(m)
    base = m.offset
    cs = md()
    out = []
    pos = start
    while pos < end:
        chunk = data[base + pos : base + min(end, pos + 64)]
        got = False
        for ins in cs.disasm(chunk, pos, count=1):
            out.append((pos, ins.size, ins.mnemonic, ins.op_str, ins.bytes))
            pos += ins.size
            got = True
            break
        if not got:
            out.append((pos, 2, ".dc.w", f"${int.from_bytes(data[base+pos:base+pos+2],'big'):04x}",
                        data[base + pos : base + pos + 2]))
            pos += 2
    return out


def build_funcs(ins_list) -> list[Func]:
    funcs: list[Func] = []
    cur: Func | None = None
    for off, size, mn, ops, _raw in ins_list:
        if mn.startswith("link"):
            if cur is not None:
                cur.end = off
                funcs.append(cur)
            frame = 0
            if "#" in ops:
                try:
                    frame = int(ops.split("#")[-1].replace("$", "0x").replace("-", "-0x")
                                .replace("0x0x", "0x"), 0)
                except ValueError:
                    frame = 0
            cur = Func(start=off, frame=frame)
        if cur is None:
            continue
        cur.insns += 1
        if mn in SHIFTY:
            cur.shifts += 1
        if mn in ("bsr", "jsr"):
            cur.calls.append(off)
        cur.text.append((off, mn, ops))
    if cur is not None:
        cur.end = ins_list[-1][0] + ins_list[-1][1]
        funcs.append(cur)
    return funcs


def main(argv: list[str]) -> int:
    if len(argv) < 2:
        print(__doc__)
        return 1
    path = FW
    if argv[1] == "dumpall":
        outdir = Path(argv[2] if len(argv) > 2 else "build/asm")
        outdir.mkdir(parents=True, exist_ok=True)
        data, mods = load(path)
        for m in mods:
            if not m.is_code or m.size < 0x200:
                continue
            ins_list = disasm_module(data, m)
            with open(outdir / f"{m.name}.asm", "w") as fh:
                for o, _size, mn, ops, raw in ins_list:
                    fh.write(f"{o:06x}: {raw.hex():<12} {mn:<10} {ops}\n")
            print(f"{m.name}: {len(ins_list)} istruzioni")
        return 0
    if argv[1] == "allscan":
        data, mods = load(path)
        rows = []
        for m in mods:
            if not m.is_code or m.size < 0x200:
                continue
            try:
                ins_list = disasm_module(data, m)
            except Exception as exc:  # noqa: BLE001
                print(f"{m.name}: {exc}")
                continue
            for f in build_funcs(ins_list):
                if f.insns < 25:
                    continue
                rows.append((f.shifts / f.insns, f.shifts, f.insns, m.name, f.start, f.end))
        rows.sort(reverse=True)
        for ratio, sh, ins, name, s, e in rows[:40]:
            print(f"{ratio:.3f} shifts={sh:<4} insns={ins:<5} {name}+{s:#06x}..{e:#06x}")
        return 0
    if len(argv) < 3:
        print(__doc__)
        return 1
    cmd, modname = argv[1], argv[2]
    data, mods = load(path)
    m = find_module(mods, modname)
    ins_list = disasm_module(data, m)
    if cmd == "dis":
        off = int(argv[3], 0)
        n = int(argv[4], 0) if len(argv) > 4 else 60
        started = False
        count = 0
        for o, size, mn, ops, raw in ins_list:
            if o < off:
                continue
            started = True
            print(f"{o:06x}: {raw.hex():<12} {mn:<10} {ops}")
            count += 1
            if count >= n:
                break
        if not started:
            print("offset fuori range")
        return 0
    funcs = build_funcs(ins_list)
    if cmd == "funcs":
        for f in funcs:
            print(f"{f.start:06x}-{f.end:06x} frame={f.frame:<7} insns={f.insns:<5} "
                  f"shifts={f.shifts:<4} calls={len(f.calls)}")
        print(f"totale {len(funcs)} funzioni")
    elif cmd == "scan":
        ranked = sorted(funcs, key=lambda f: -(f.shifts / max(f.insns, 1)) if f.insns > 20 else 0)
        for f in ranked[:30]:
            ratio = f.shifts / max(f.insns, 1)
            print(f"{f.start:06x}-{f.end:06x} insns={f.insns:<5} shifts={f.shifts:<4} "
                  f"ratio={ratio:.3f} calls={len(f.calls)} frame={f.frame}")
    else:
        print(__doc__)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
