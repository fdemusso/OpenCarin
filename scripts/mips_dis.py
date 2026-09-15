"""Disassemblatore MIPS32 big-endian per i moduli OS-9000 di Mk3 / RR.

I moduli usano codice PIC: nel prologo ogni funzione ricostruisce
``$fp = module_base + 0x7ff0`` con la sequenza ``lui/bal/addiu ; sub $fp,$ra,$fp``,
e poi raggiunge dati e funzioni come ``addiu rX, $fp, imm16``.
Quindi un offset di modulo M si vede nel codice come immediato ``M - 0x7ff0``.

Comandi:
    dis  <modulo> <off> [n]      disassembla
    fpref <modulo> <off_modulo>  trova chi referenzia quell'offset via $fp
    find <modulo> <imm>          trova immediati uguali a imm
"""

from __future__ import annotations

import os
import struct
import sys
from pathlib import Path

import capstone

sys.path.insert(0, str(Path(__file__).resolve().parent))
from os9_modules import enumerate_modules  # noqa: E402

FW = os.environ.get("CARIN_FW2", "build/fw/Mk3_0127_BMWC01S_app_sw_bsw_load")
FP_BIAS = 0x7FF0


def md() -> capstone.Cs:
    m = capstone.Cs(capstone.CS_ARCH_MIPS,
                    capstone.CS_MODE_MIPS32 | capstone.CS_MODE_BIG_ENDIAN)
    m.detail = False
    return m


def load(path: str = FW):
    data = open(path, "rb").read()
    return data, enumerate_modules(data)


def find_module(mods, name: str):
    for m in mods:
        if m.name == name:
            return m
    raise SystemExit(f"modulo {name!r} non trovato")


def code_bounds(data: bytes, m):
    exec_off = struct.unpack_from(">I", data, m.offset + 0x30)[0]
    end = struct.unpack_from(">I", data, m.offset + 0x38)[0]  # inizio dati
    return exec_off, end


class Ins:
    __slots__ = ("address", "bytes", "mnemonic", "op_str")

    def __init__(self, address, raw, mnemonic, op_str):
        self.address, self.bytes, self.mnemonic, self.op_str = address, raw, mnemonic, op_str


def disasm_range(data: bytes, m, start: int, end: int) -> list[Ins]:
    """Disassembla parola per parola; le parole non valide diventano ``.word``."""
    cs = md()
    out: list[Ins] = []
    for off in range(start, end, 4):
        raw = data[m.offset + off : m.offset + off + 4]
        if len(raw) < 4:
            break
        got = None
        for ins in cs.disasm(raw, off, count=1):
            got = ins
            break
        if got is None:
            out.append(Ins(off, raw, ".word", f"0x{raw.hex()}"))
        else:
            out.append(Ins(off, raw, got.mnemonic, got.op_str))
    return out


def disasm(data: bytes, m, start: int, count: int):
    return disasm_range(data, m, start, start + count * 4)


def main(argv: list[str]) -> int:
    if len(argv) < 3:
        print(__doc__)
        return 1
    cmd, modname = argv[1], argv[2]
    data, mods = load()
    m = find_module(mods, modname)
    if cmd == "dis":
        off = int(argv[3], 0)
        n = int(argv[4], 0) if len(argv) > 4 else 60
        for ins in disasm(data, m, off, n):
            print(f"{ins.address:06x}: {ins.bytes.hex():<10}{ins.mnemonic:<10}{ins.op_str}")
        return 0
    if cmd in ("fpref", "find"):
        target = int(argv[3], 0)
        imm = (target - FP_BIAS) if cmd == "fpref" else target
        imm16 = imm & 0xFFFF
        start, end = code_bounds(data, m)
        cs = md()
        blob = data[m.offset + start : m.offset + end]
        hits = 0
        for ins in cs.disasm(blob, start):
            if ins.op_str.endswith(hex(imm)) or f"{imm16:#x}" in ins.op_str:
                if "$fp" in ins.op_str or cmd == "find":
                    print(f"{ins.address:06x}: {ins.bytes.hex():<10}{ins.mnemonic:<10}{ins.op_str}")
                    hits += 1
        print(f"({hits} occorrenze, imm={imm:#x})")
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
