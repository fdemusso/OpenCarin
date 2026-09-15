"""Scan the CARINdb for blocks of the same (BLOCK_TYPE, bbox) with mixed
COMPRESSION_FLAG. A hit would give an exact CF=1 / CF=0 (or CF=2) plaintext
pair for the same tile -- the strongest possible known-plaintext attack on
COMPRESSION_FLAG=1.

Result on NAV_DB_21708.ISO (2026 session): 18,481 blocks scanned across types
0x14/0x15/0x16/0x1C/0x1D/0x1E, 18,406 distinct (type, bbox) groups, ZERO groups
with mixed CF. Every quadtree tile is stored exactly once, at exactly one
compression level -- there is no duplicate-content pair on this disk.
See docs/CARINDB_BLUEPRINT.md section 9.6.1.
"""
from __future__ import annotations

import collections
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from carin.parser.iso import IsoImage, CarinVolume, find_bbox  # noqa: E402

TYPES = {0x14, 0x15, 0x16, 0x1C, 0x1D, 0x1E}


def main() -> None:
    iso = sys.argv[1] if len(sys.argv) > 1 else "dataset/NAV_DB_21708.ISO"
    img = IsoImage(iso)
    vol = CarinVolume(img)

    groups: dict = collections.defaultdict(list)
    count = 0
    for b in vol.walk():
        if b.type not in TYPES or b.comp not in (0, 1):
            continue
        count += 1
        raw = vol.read_sectors(b.sector, 1)
        bb = find_bbox(raw)
        if not bb:
            continue
        _, bbox = bb
        groups[(b.type, bbox)].append((b.sector, b.comp, b.length))

    print(f"scanned {count} blocks (cf 0/1) of types {sorted(hex(t) for t in TYPES)}")
    print(f"distinct (type,bbox) groups: {len(groups)}")

    hits = [(k, v) for k, v in groups.items() if len({cf for _, cf, _ in v}) > 1]
    print(f"groups with mixed CF (exact bbox match): {len(hits)}")
    for k, v in hits[:50]:
        print(k, v)


if __name__ == "__main__":
    main()
