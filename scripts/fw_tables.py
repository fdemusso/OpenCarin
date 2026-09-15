"""Cerca tabelle costanti tipiche dei decompressori dentro un firmware.

Cerca in tutte le larghezze/endianness plausibili:
  - inflate_mask  (0,1,3,7,...,0xffff)  -> qualunque bit-reader mascherato
  - border/order  (16,17,18,0,8,7,...)  -> zlib inflate dynamic-tree
  - cplens/cpdist                        -> zlib inflate length/dist base
  - potenze di due, tabelle di shift

Uso: python3 scripts/fw_tables.py <firmware> [...]
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from os9_modules import enumerate_modules  # noqa: E402

MASK = [(1 << i) - 1 for i in range(17)]
ORDER = [16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15]
CPLENS = [3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59,
          67, 83, 99, 115, 131, 163, 195, 227, 258]
CPDIST = [1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, 513,
          769, 1025, 1537, 2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577]
POW2 = [1 << i for i in range(16)]


def pack(vals: list[int], width: int, endian: str) -> bytes:
    return b"".join(v.to_bytes(width, endian) for v in vals)


def patterns() -> dict[str, bytes]:
    out: dict[str, bytes] = {}
    for name, vals in (("mask", MASK), ("order", ORDER), ("cplens", CPLENS),
                       ("cpdist", CPDIST), ("pow2", POW2)):
        for width in (1, 2, 4):
            if max(vals) >= 1 << (8 * width):
                continue
            for endian in ("big", "little"):
                if width == 1 and endian == "little":
                    continue
                out[f"{name}/{width}{endian[0]}"] = pack(vals, width, endian)
    return out


def main(argv: list[str]) -> int:
    pats = patterns()
    for path in argv[1:]:
        data = open(path, "rb").read()
        mods = enumerate_modules(data)
        print(f"== {path}")
        for name, pat in pats.items():
            # accetta anche un prefisso della tabella (le tabelle lunghe possono
            # essere troncate/riordinate nelle varianti di libreria)
            for trim in (len(pat), len(pat) * 3 // 4, len(pat) // 2):
                sub = pat[:trim]
                if len(sub) < 10:
                    break
                i = data.find(sub)
                if i < 0:
                    continue
                hits = []
                while i >= 0 and len(hits) < 8:
                    owner = next((m.name for m in mods
                                  if m.offset <= i < m.offset + m.size), "?")
                    hits.append(f"{i:#x}({owner})")
                    i = data.find(sub, i + 1)
                print(f"   {name} [{trim}/{len(pat)} B]: {' '.join(hits)}")
                break
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
