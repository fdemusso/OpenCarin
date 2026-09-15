"""Legge il superblock (settore 0) e ne estrae la RECORD_SIZE_TABLE.

Il firmware CC-93 carica le costanti di layout da: descrittore a +0x28
{u16 offset, u16 count}, poi `count` coppie {u16 id, u16 value} a quell'offset.
Il DB-REL sta nella word a +0x1a.

Uso: python3 scripts/cf1_super.py [iso] [db0_offset]
"""

from __future__ import annotations

import struct
import sys

DEFAULT_ISO = "dataset/NAV_DB_21708.ISO"
DEFAULT_DB0 = 804864


def read_super(path: str, db0: int) -> bytes:
    with open(path, "rb") as fh:
        fh.seek(db0)
        return fh.read(2048)


def layout_table(sb: bytes) -> dict[int, int]:
    off, count = struct.unpack_from(">HH", sb, 0x28)
    out = {}
    for i in range(count):
        tid, val = struct.unpack_from(">HH", sb, off + 4 * i)
        out[tid] = val
    return out


def main(argv: list[str]) -> int:
    path = argv[1] if len(argv) > 1 else DEFAULT_ISO
    db0 = int(argv[2], 0) if len(argv) > 2 else DEFAULT_DB0
    sb = read_super(path, db0)
    bid, btype, cf, us = struct.unpack_from(">IHBB", sb, 0)
    print(f"BLOCK_ID={bid:#x} type={btype:#x} cf={cf} us={us}")
    print(f"DB-REL (word @0x1a) = {struct.unpack_from('>H', sb, 0x1a)[0]}")
    off, count = struct.unpack_from(">HH", sb, 0x28)
    print(f"descriptor@0x28 = offset {off:#x}, count {count}")
    tbl = layout_table(sb)
    for tid in sorted(tbl):
        print(f"  T[{tid:#04x}] = {tbl[tid]:#06x} ({tbl[tid]})")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
