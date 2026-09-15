"""Ispeziona blocchi tipo 0x00 NON compressi per dedurre il layout dei record.

Serve a capire cosa contengono i campi che il decoder del firmware CC-93
(DB-REL <= 17) non scrive, perche' in DB-REL 34 i record sono piu' grandi:
sezioni 0/1/2 da 6 a 10 byte, sezione 4 da 28 a 32.

Uso: python3 scripts/cf1_layout_probe.py [--limit N]
"""

from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from cf1_super import layout_table  # noqa: E402

ISO = "dataset/NAV_DB_21708.ISO"
NENTRY = 15


def entries(data: bytes, base: int) -> list[tuple[int, int]]:
    return [struct.unpack_from(">HH", data, base + 4 * i) for i in range(NENTRY)]


def dump_section(data: bytes, off: int, count: int, rec: int, label: str, n: int = 6) -> None:
    print(f"  {label}: off={off:#06x} count={count} rec={rec}")
    for i in range(min(count, n)):
        p = off + i * rec
        row = data[p : p + rec]
        cols = " ".join(f"{struct.unpack_from('>H', row, k)[0]:04x}" for k in range(0, rec - 1, 2))
        print(f"    [{i:3}] {cols}")


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=2)
    args = ap.parse_args(argv[1:])

    vol = CarinVolume(IsoImage(ISO))
    table = layout_table(vol.read_sectors(0, 2))
    base = table[0x05]
    shown = 0
    for head in vol.walk(0):
        if head.type != 0x00 or head.comp != 0:
            continue
        sector, length = head.sector, head.length
        blk = vol.block(sector)
        data = blk.raw
        es = entries(data, base)
        print(f"\n=== settore {sector} len={length} usize={blk.usize} "
              f"({blk.usize * 512} B)")
        for i, (off, cnt) in enumerate(es):
            print(f"   e{i:<2} off={off:#06x} count={cnt}")
        dump_section(data, es[0][0], es[0][1], table[0x40], "e0 (T[0x40])")
        dump_section(data, es[1][0], es[1][1], table[0x40], "e1 (T[0x40])")
        dump_section(data, es[2][0], es[2][1], table[0x40], "e2 (T[0x40])")
        dump_section(data, es[4][0], es[4][1], table[0x08], "e4 (T[0x08])", n=8)
        dump_section(data, es[14][0], es[14][1], 4, "e14 (rec=4?)", n=8)
        shown += 1
        if shown >= args.limit:
            break
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
