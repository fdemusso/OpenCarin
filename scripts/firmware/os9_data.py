"""
Analyzes the static data area of OS-9 modules.

Resolves global memory accesses made relative to the `a6` register to identify layout tables and state variables.
"""

from __future__ import annotations

import re
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from m68k_dis import FW, disasm_module, find_module, load  # noqa: E402

A6_BIAS = 0x8000


def idata_blocks(data: bytes, m) -> list[tuple[int, int, bytes]]:
    if not (0 < m.idata < m.size):
        return []
    p = m.offset + m.idata
    out = []
    while p + 8 <= m.offset + m.size:
        dest, size = struct.unpack_from(">II", data, p)
        p += 8
        if size == 0:
            break
        if size > m.size or p + size > m.offset + m.size:
            break
        out.append((dest, size, data[p : p + size]))
        p += size
    return out


def data_strings(data: bytes, m) -> list[tuple[int, str]]:
    """[(offset_nell_area_dati, stringa)]"""
    out = []
    for dest, _size, blob in idata_blocks(data, m):
        for mm in re.finditer(rb"[\x20-\x7e]{4,}\x00", blob):
            out.append((dest + mm.start(), mm.group()[:-1].decode("latin1")))
    return out


def a6_disp(data_off: int) -> int:
    d = data_off - A6_BIAS
    return d


def fmt_disp(d: int) -> str:
    return f"-${-d:x}" if d < 0 else f"${d:x}"


def main(argv: list[str]) -> int:
    if len(argv) < 3:
        print(__doc__)
        return 1
    cmd, modname = argv[1], argv[2]
    data, mods = load(FW)
    m = find_module(mods, modname)
    if cmd == "idata":
        for dest, size, blob in idata_blocks(data, m):
            print(f"dest={dest:#08x} size={size:#x} first={blob[:16].hex()}")
        return 0
    if cmd == "strings":
        for off, s in data_strings(data, m):
            print(f"{off:#08x} a6{fmt_disp(a6_disp(off)):>10}  {s!r}")
        return 0
    if cmd == "xref":
        needle = argv[3]
        hits = [(off, s) for off, s in data_strings(data, m) if needle in s]
        if not hits:
            print("nessuna stringa corrisponde")
            return 1
        asm = disasm_module(data, m)
        lines = [f"{o:06x}: {mn:<10} {ops}" for o, _sz, mn, ops, _r in asm]
        for off, s in hits:
            d = a6_disp(off)
            pat = f"{fmt_disp(d)}(a6)"
            print(f"\n== {s!r}  data={off:#x} disp={pat}")
            for ln in lines:
                if pat in ln:
                    print("   ", ln)
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
