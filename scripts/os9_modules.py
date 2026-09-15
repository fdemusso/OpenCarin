"""Enumera i moduli OS-9/68K concatenati in un file firmware.

Ogni modulo comincia con M$Sync = 0x4AFC e dichiara la propria lunghezza in
M$Size (offset +4, u32 big-endian). L'header porta anche nome, tipo/linguaggio
e, per i moduli eseguibili, l'offset dell'entry point (M$Exec, +0x30).

Uso:
    python3 scripts/os9_modules.py build/fw/_CC93__0560_nav_sw_load
"""

from __future__ import annotations

import struct
import sys
from dataclasses import dataclass

SYNC = 0xAFC

MODULE_TYPES = {
    0x01: "Prgrm",
    0x02: "Sbrtn",
    0x03: "Multi",
    0x04: "Data",
    0x05: "CSDData",
    0x0B: "TrapLib",
    0x0C: "Systm",
    0x0D: "FlMgr",
    0x0E: "Drivr",
    0x0F: "Devic",
}

LANGUAGES = {0: "Objct", 1: "ICode", 2: "PCode", 3: "CCode", 4: "CblCode", 5: "FrtnCode"}


@dataclass
class Module:
    offset: int
    size: int
    name: str
    mtype: int
    lang: int
    exec_off: int
    mem: int
    idata: int
    irefs: int

    @property
    def type_name(self) -> str:
        return MODULE_TYPES.get(self.mtype, f"{self.mtype:#04x}")

    @property
    def lang_name(self) -> str:
        return LANGUAGES.get(self.lang, str(self.lang))

    @property
    def is_code(self) -> bool:
        return self.mtype in (0x01, 0x02, 0x03, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F)


def _cstr(data: bytes, off: int, limit: int = 64) -> str:
    end = off
    while end < len(data) and end - off < limit and data[end] not in (0x00,):
        end += 1
    raw = bytearray(data[off:end])
    # OS-9 termina il nome mettendo a 1 il bit alto dell'ultimo carattere
    out = []
    for i, b in enumerate(data[off:end]):
        out.append(chr(b & 0x7F))
    # cerca il carattere con bit alto: e' l'ultimo del nome
    name = []
    for b in data[off : off + limit]:
        if b == 0:
            break
        name.append(chr(b & 0x7F))
        if b & 0x80:
            break
    del raw, out
    return "".join(name)


def detect_sync(data: bytes) -> int:
    """CC-93 e Mk2 usano 0x4AFC; Mk3 e la generazione RR usano 0x4DAD."""
    head = struct.unpack_from(">H", data, 0)[0]
    return head if head in (0x4AFC, 0x4DAD) else 0x4AFC


def parse_module(data: bytes, off: int, sync_val: int = 0x4AFC) -> Module | None:
    if off + 0x30 > len(data):
        return None
    sync, _rev = struct.unpack_from(">HH", data, off)
    if sync != sync_val:
        return None
    size = struct.unpack_from(">I", data, off + 4)[0]
    if size < 0x30 or off + size > len(data):
        return None
    name_off = struct.unpack_from(">I", data, off + 0x0C)[0]
    tylg = struct.unpack_from(">H", data, off + 0x12)[0]
    mtype, lang = tylg >> 8, tylg & 0xFF
    name = _cstr(data, off + name_off) if 0 < name_off < size else "?"
    exec_off = mem = idata = irefs = 0
    if size >= 0x4C:
        exec_off, _excpt, mem, _stack, idata, irefs = struct.unpack_from(
            ">IIIIII", data, off + 0x30
        )
    return Module(off, size, name, mtype, lang, exec_off, mem, idata, irefs)


def enumerate_modules(data: bytes, sync_val: int | None = None) -> list[Module]:
    out: list[Module] = []
    sync_val = detect_sync(data) if sync_val is None else sync_val
    marker = struct.pack(">H", sync_val)
    off = 0
    while off < len(data):
        mod = parse_module(data, off, sync_val)
        if mod is None:
            # ri-sincronizza sul prossimo magic valido
            nxt = data.find(marker, off + 2)
            if nxt < 0:
                break
            off = nxt
            continue
        out.append(mod)
        off += mod.size
    return out


def main(argv: list[str]) -> int:
    for path in argv[1:]:
        data = open(path, "rb").read()
        mods = enumerate_modules(data)
        print(f"== {path}  ({len(data)} B, {len(mods)} moduli)")
        print(
            f"{'offset':>9} {'size':>8} {'type':<8} {'lang':<8} "
            f"{'exec':>8} {'mem':>7} {'idata':>8} name"
        )
        for m in mods:
            print(
                f"{m.offset:>9x} {m.size:>8x} {m.type_name:<8} {m.lang_name:<8} "
                f"{m.exec_off:>8x} {m.mem:>7x} {m.idata:>8x} {m.name}"
            )
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
