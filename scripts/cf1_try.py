"""Prova il decoder CF=1 su un blocco reale e stampa diagnostica strutturale.

Uso: python3 scripts/cf1_try.py [settore] [--iso path]
"""

from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1  # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from cf1_super import layout_table  # noqa: E402

ISO = "dataset/NAV_DB_21708.ISO"


def descriptor(data: bytes, base: int, n: int) -> list[tuple[int, int]]:
    return [struct.unpack_from(">HH", data, base + 4 * i) for i in range(n)]


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("sector", type=lambda s: int(s, 0), nargs="?", default=3157624)
    ap.add_argument("--iso", default=ISO)
    ap.add_argument("--entries", type=int, default=16)
    args = ap.parse_args(argv[1:])

    vol = CarinVolume(IsoImage(args.iso))
    sb = vol.read_sectors(0, 2)
    table = layout_table(sb)

    blk = vol.block(args.sector)
    print(f"settore {blk.sector} tipo {blk.type:#04x} cf={blk.comp} "
          f"len={blk.length} usize={blk.usize}  -> {blk.usize * 512} B attesi")
    raw = blk.raw
    prolog = table[cf1.T_PROLOG]
    print(f"prologo in chiaro = T[0x0b] = {prolog}")
    print("descrittore (dal raw, in chiaro):")
    for i, (off, cnt) in enumerate(descriptor(raw, table[cf1.T_DESC_BASE], args.entries)):
        print(f"   e{i:<2} off={off:#06x} count={cnt}")
    print("bbox/service:", raw[0x40:prolog].hex())

    try:
        dbrel = struct.unpack_from('>H', sb, 0x1a)[0]
        out = cf1.decode_block(raw, table, dbrel)
    except Exception as exc:  # noqa: BLE001
        print(f"\nDECODE FALLITO: {type(exc).__name__}: {exc}")
        return 1
    print(f"\noutput {len(out)} B")
    used = cf1.__dict__  # placeholder
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
