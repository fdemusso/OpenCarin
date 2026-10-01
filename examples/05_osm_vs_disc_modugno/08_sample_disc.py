"""Step 8: random sample of street tiles from the whole disc -> the rare values the study areas do not contain.

The study areas (Puglia) have no segment with junction type 3 or a `+0x11` high nibble other than 2.
This step decodes N random `0x00` tiles of the disc (a few hundred take about a minute), tabulates
the unexplained bytes over them and writes the segments that carry a rare value (junction 3/4/5/2, high
nibble != 2, `+0x18` = 0x10, `+0x10` bit 7, `+0x1D` bits 4-6, `+0x1C` other than 0x10/0x16/0x18)
with the tile's centre, so the place can be looked up and, if useful, fetched from OSM.

    uv run --with numpy python examples/05_osm_vs_disc_modugno/08_sample_disc.py [--disc 21708] [--n 400] [--seed 1] [--force]

Writes dataset/sample_<disc>_<n>_segments.csv.gz (every sampled segment, compact) and sample_<disc>_<n>_rare.csv.gz.
"""
from __future__ import annotations

import argparse
import random
import struct
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import DATA, DISCS, write_csv

from carin.parser.cf1.tile00 import Tile00
from carin.parser.iso import CarinVolume, IsoImage


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--disc", default="21708")
    ap.add_argument("--n", type=int, default=400)
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument("--force", action="store_true")
    a = ap.parse_args()
    out = DATA / f"sample_{a.disc}_{a.n}_segments.csv.gz"
    if out.exists() and not a.force:
        print(f"{out.name}: exists, skipped")
        return
    vol = CarinVolume(IsoImage(str(DISCS[a.disc])))
    vol.calibrate()
    blocks = [b for b in vol.walk() if b.type == 0x00]
    print(f"{len(blocks)} street blocks on the disc; sampling {a.n}")
    rows, rare, bad = [], [], 0
    for b in random.Random(a.seed).sample(blocks, min(a.n, len(blocks))):
        try:
            t = Tile00.parse(vol.block(b.sector).payload, vol.layout)
        except Exception:
            bad += 1
            continue
        lon, lat = t.frame.to_wgs84(0, 0)                      # south-west corner of the tile
        for i, s in enumerate(t.segs):
            r = s.raw
            row = {"tile": f"{(b.sector << 8) | b.length:#x}", "idx": i, "lon": round(lon, 4), "lat": round(lat, 4),
                   "cls": r[0x10] & 15, "sub": (r[0x10] >> 4) & 7, "b10_7": r[0x10] >> 7, "junc": r[0x11] & 15, "j_hi": r[0x11] >> 4,
                   "form": r[0x0B] & 15, "dir": (r[0x0B] >> 4) & 3, "b18": r[0x18], "b1c": r[0x1C], "b1d": r[0x1D], "speed": r[0x0A] & 31,
                   "b0a_hi": r[0x0A] >> 5, "n_turn": len(s.turns), "n_sign": len(s.signs), "n_tmc": len(s.tmc), "len": struct.unpack_from(">H", r, 0x0C)[0]}
            rows.append(row)
            if row["junc"] in (3, 4, 5, 2) or row["j_hi"] != 2 or row["b18"] == 0x10 or row["b10_7"] or row["b1d"] & 0x70:
                rare.append(row)
    write_csv(out, rows)
    write_csv(DATA / f"sample_{a.disc}_{a.n}_rare.csv.gz", rare)
    print(f"{len(rows)} segments ({bad} tiles not parsed), {len(rare)} with a rare value")
    for k in ("junc", "j_hi", "b10_7", "b18", "b1c"):
        print(f"  {k}: {Counter(r[k] for r in rows).most_common(10)}")
    print("  (junc, j_hi):", Counter((r["junc"], r["j_hi"]) for r in rows).most_common(12))
    print("  b1d >> 4 & 7:", Counter((r["b1d"] >> 4) & 7 for r in rows).most_common())


if __name__ == "__main__":
    main()
