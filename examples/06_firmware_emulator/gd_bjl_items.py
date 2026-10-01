"""`gd_bjl` item creation (`sub_002238` `0x23f8`..`0x2838`) on real `dbq` streams (descriptor and points): compare the item with the field map
read from the listing (`docs/fw/04` §9, §13). The descriptors come from the `dbq` emulator, the tile from the disc.

    uv run --with capstone --with unicorn python examples/06_firmware_emulator/gd_bjl_items.py [disc]
"""

from __future__ import annotations

import struct
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser.cf1.constants import T_DESC_BASE, T_REC_S4  # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from dbq import DbqEmu  # noqa: E402
from gd_bjl import GdBjlEmu, ITEM_SIZE  # noqa: E402
from run_tile import study_tiles  # noqa: E402


def expected(d: bytes) -> dict[int, int]:
    """Item byte -> value, from the copy code at `gd_bjl` `0x2448`-`0x2578` (read) and the descriptor."""
    u16 = lambda o: struct.unpack_from(">H", d, o)[0]
    return {
        0x1E: int(d[0x13] == 2), 0x1F: int(d[0x19] == 2), 0x20: d[0x1D], 0x21: int(d[0x1D] != 0), 0x1D: d[0x2D],
        0x5C: d[0x1E], 0x5D: d[0x1F], 0x5E: d[0x29], 0x5F: d[0x22], 0x60: d[0x23], 0x61: d[0x24], 0x62: d[0x26],
        0x63: d[0x20], 0x65: d[0x28], 0x66: d[0x21], 0x22: d[0x2B], 0x24: int(d[0x2A] == 0),
    }


def main(argv: list[str]) -> None:
    disc = argv[0] if argv else "21708"
    vol = CarinVolume(IsoImage(str(ROOT / "dataset" / f"NAV_DB_{disc}.ISO")))
    T = vol.layout
    dbq = DbqEmu(layout=T, rel=vol.db_rel, subrel=9)
    tot, bad, bytype = 0, Counter(), Counter()
    for tile_id in study_tiles(disc, 2):
        payload = bytes(vol.block(tile_id >> 8).payload)
        s4_start, s4_count = struct.unpack_from(">HH", payload, T[T_DESC_BASE] + 16)
        for i in range(s4_count):
            cap, _ = dbq.run_tile(payload, s4_start + T[T_REC_S4] * i, tile_id)
            if not cap or len(cap[0]) != 0x34:
                continue
            d = cap[0]
            gd = GdBjlEmu()
            item = gd.feed_segment(b"".join(cap))
            raw = gd.read(item, ITEM_SIZE)
            tot += 1
            bytype[d[0x1D]] += 1
            for off, v in expected(d).items():
                if raw[off] != v:
                    bad[hex(off)] += 1
    print(f"{disc}: {tot} items, junction types {dict(sorted(bytype.items()))}, mismatches: {dict(bad) or 'none'}")


if __name__ == "__main__":
    main(sys.argv[1:])
