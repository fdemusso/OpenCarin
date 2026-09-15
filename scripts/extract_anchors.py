"""Extract named point features (name, X, Y) from CARINdb type 0x16 blocks.

Type 0x16 blocks carry a georeferenced bbox at +0x20 and a section of 20-byte
records holding absolute 32-bit CARIN coordinates plus a pointer to an inline
Latin-1 name.  See docs/CARINDB_BLUEPRINT.md.
"""
from __future__ import annotations

import argparse
import collections
import pickle
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from carin.parser.iso import IsoImage, CarinVolume  # noqa: E402

FEATURE_REC = ">HHIiiHH"   # name_ptr, ptr, u32, X, Y, u16, u16
FEATURE_REC_SIZE = 20
BBOX_OFF = 0x20


def features(block_payload: bytes):
    d = block_payload
    if len(d) < 0x30:
        return
    off, cnt = struct.unpack_from(">HH", d, 12)      # descriptor entry #1
    if off == 0 or cnt == 0 or off + cnt * FEATURE_REC_SIZE > len(d):
        return
    x0, y0, x1, y1 = struct.unpack_from(">4i", d, BBOX_OFF)
    for i in range(cnt):
        nptr, _p, _c, X, Y, _e, _f = struct.unpack_from(FEATURE_REC, d, off + i * FEATURE_REC_SIZE)
        if nptr == 0 or nptr >= len(d):
            continue
        end = d.find(b"\x00", nptr)
        if end < 0 or end - nptr < 2 or end - nptr > 48:
            continue
        name = d[nptr:end]
        if not name[:1].isalpha():
            continue
        # sanity: coordinate must sit inside (or adjacent to) the block bbox
        span = max(x1 - x0, y1 - y0)
        if not (x0 - span <= X <= x1 + span and y0 - span <= Y <= y1 + span):
            continue
        yield name.decode("latin-1"), X, Y


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--iso", default="dataset/NAV_DB_21708.ISO")
    ap.add_argument("--type", type=lambda s: int(s, 0), default=0x16)
    ap.add_argument("--out", default="build/features.pkl")
    ap.add_argument("--names", nargs="*", help="keep only these names (default: keep all)")
    args = ap.parse_args()

    keep = set(args.names) if args.names else None
    img = IsoImage(args.iso)
    vol = CarinVolume(img)

    sectors = [b.sector for b in vol.walk() if b.type == args.type]
    print(f"type 0x{args.type:02X}: {len(sectors)} blocks", file=sys.stderr)

    found = collections.defaultdict(list)
    skipped = 0
    for n, sec in enumerate(sectors):
        blk = vol.block(sec)
        if blk.comp == 1:
            skipped += 1
            continue
        try:
            payload = blk.payload
        except Exception:
            skipped += 1
            continue
        for name, X, Y in features(payload):
            if keep is None or name in keep:
                found[name].append((X, Y, sec))
        if n % 2000 == 0:
            print(f"  {n}/{len(sectors)} blocks, {len(found)} names", file=sys.stderr)

    Path(args.out).parent.mkdir(parents=True, exist_ok=True)
    with open(args.out, "wb") as fh:
        pickle.dump(dict(found), fh)
    print(f"skipped (CF=1) {skipped}; distinct names {len(found)}; written {args.out}", file=sys.stderr)


if __name__ == "__main__":
    main()
