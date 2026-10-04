"""Step 10: unexplained bytes of the segment record, the S7 shape flags and the tile header (worklist 2, 3, 8, 9).

  A. every byte offset of the 32-byte S4 record: distinct values and the most frequent ones, on the Puglia
     areas and on the random whole-disc sample (08_sample_disc.py), so nothing varying is missed (9).
  B. `+0x10` bit 7, `+0x1D` bits 4-6, `+0x18` (4, 0x10), `+0x11 >> 4` against OSM tags (`assoc`) and context (2, 3).
  C. S7 shape-point flag byte (+4: 0, 1, 2) against bridge / tunnel in the matched OSM way and `+0x1C` (8).
  D. tile header words that vary and the counts they might equal (8).

    uv run python examples/06_osm_vs_disc_modugno/10_bytes.py [--disc 21708] [--snapshot now]
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import AREAS, DATA, PUGLIA, assoc, load_joined, read_csv, table

KNOWN = {0x00: "start node", 0x02: "end node", 0x04: "S7", 0x06: "next@start", 0x08: "next@end", 0x0A: "speed|built-up", 0x0B: "form|dir|toll",
         0x0C: "length hi", 0x0D: "length lo", 0x0E: "bearing start", 0x0F: "bearing end", 0x10: "class|sub|b7?", 0x11: "junction|hi?",
         0x12: "S10", 0x14: "S12", 0x16: "S13", 0x18: "slip role|?", 0x19: "always 0", 0x1A: "street record", 0x1B: "street record",
         0x1C: "flags hi", 0x1D: "flags lo", 0x1E: "S11", 0x1F: "S11"}


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--disc", default="21708")
    ap.add_argument("--snapshot", default="now")
    a = ap.parse_args()
    segs = []
    for ar in PUGLIA:
        segs += read_csv(DATA / f"disc_{a.disc}_{ar}_segments.csv.gz")
    print(f"A. byte offsets of the 32-byte record, disc {a.disc}, Puglia areas, {len(segs)} segments (pointer bytes are zeroed by the model)")
    for off in range(32):
        vals = Counter(int(r["raw"][2 * off:2 * off + 2], 16) for r in segs)
        top = ", ".join(f"{v:#04x}:{c}" for v, c in vals.most_common(6))
        print(f"  +{off:#04x} {KNOWN.get(off, ''):16} {len(vals):3} values  {top}")
    # --- B/C need the OSM match
    rows = load_joined(a.disc, a.snapshot, list(AREAS))
    m = [r for r in rows if r["matched"]]
    if not m:
        print("\nno OSM match tables: run 02 and 03 first")
        return
    print(f"\nmatched with OSM {a.snapshot}: {len(m)} of {len(rows)} segments")
    for name, pred in (("+0x10 bit 7 set", lambda r: r["b10_7"] == "1"),
                       ("+0x1D bits 4-6 != 0", lambda r: (int(r["b1d"]) >> 4) & 7 != 0),
                       ("+0x18 == 4", lambda r: r["b18"] == "4"),
                       ("+0x18 == 16", lambda r: r["b18"] == "16"),
                       ("+0x11 >> 4 != 2", lambda r: r["j_hi"] != "2"),
                       ("+0x1D bit 0", lambda r: int(r["b1d"]) & 1 == 1),
                       ("+0x1C == 0x16", lambda r: r["b1c"] == "22"),
                       ("+0x1C bit 3 (0x18)", lambda r: int(r["b1c"]) & 8 == 8)):
        n = sum(1 for r in m if pred(r))
        if n >= 15:
            print("\n" + assoc(m, pred, title=f"B. {name}", top=14))
        else:
            print(f"\nB. {name}: only {n} matched segments, not tested")
    # C. shape flags
    print("\nC. S7 shape-point flag +4 against `+0x1C` and OSM bridge / tunnel of the matched way")
    def sflag(r):
        s = r["shape_flags"]
        return "".join(sorted(set(s[i] for i in range(0, len(s), 2)) - {"0"})) or "none"
    print(table(m, lambda r: f"shape {sflag(r)}", lambda r: f"1c={int(r['b1c']):#04x}", title="  shape flags x +0x1C"))
    print(table(m, lambda r: f"shape {sflag(r)}", lambda r: ("bridge=" + r["tg"].get("bridge", "-"), "tunnel=" + r["tg"].get("tunnel", "-")),
                title="  shape flags x (bridge, tunnel)", top=8))
    print(table(m, lambda r: f"1c={int(r['b1c']):#04x}", lambda r: ("bridge=" + r["tg"].get("bridge", "-"), "tunnel=" + r["tg"].get("tunnel", "-")),
                title="  +0x1C x (bridge, tunnel)", top=8))
    # E. junction types 2, 3, 4, 5 and the high nibble
    print("\nE. `+0x11` (junction type, high nibble) against OSM highway, matched segments of all areas")
    print(table([r for r in m if r["junc"] in ("3", "4", "5", "2")], lambda r: f"junc {r['junc']} hi {r['j_hi']}",
                lambda r: r["tg"].get("highway", "-"), title="  junction x highway", top=10))
    print(table([r for r in m if r["junc"] == "3"], lambda r: f"junc 3 hi {r['j_hi']}",
                lambda r: ("motor_vehicle=" + r["tg"].get("motor_vehicle", r["tg"].get("access", "-"))), title="  junction 3 x motor_vehicle / access", top=6))
    # clustering: share of junction-3 segments with another junction-3 segment within 60 m (disc geometry), against junction 9
    from math import hypot
    from common import parse_wkt
    for area in sorted({r["area"] for r in rows}):
        pts = {"3": [], "9": []}
        for r in read_csv(DATA / f"disc_{a.disc}_{area}_segments.csv.gz"):
            if r["junc"] in pts:
                w = parse_wkt(r["wkt"])
                pts[r["junc"]].append((w[len(w) // 2][0] * 69000, w[len(w) // 2][1] * 111320))
        for j, v in pts.items():
            if j == "3" and len(v) >= 10:
                near = sum(1 for i, p in enumerate(v) if any(hypot(p[0] - q[0], p[1] - q[1]) < 60 for k, q in enumerate(v) if k != i))
                print(f"  {area}: junction 3 segments {len(v)}, with another junction-3 segment within 60 m: {near}")
    # D. tile header
    tiles = []
    for ar in PUGLIA:
        tiles += read_csv(DATA / f"disc_{a.disc}_{ar}_tiles.csv.gz")
    print(f"\nD. {len(tiles)} tile headers: words that vary (u16 index) and the best single count they equal")
    H = [list(map(int, t["hdr"].split())) for t in tiles]
    feats = {k: [int(t[k]) for t in tiles] for k in ("nseg", "n5", "n6", "n_turn", "n_shape", "n_sign", "n_tmc")}
    for i in range(len(H[0])):
        col = [h[i] for h in H]
        if len(set(col)) < 3:
            continue
        hit = [(sum(1 for c, v in zip(col, f) if c == v), k) for k, f in feats.items()]
        best = max(hit)
        if best[0] >= 0.5 * len(H):
            print(f"  word {i}: equals {best[1]} on {best[0]}/{len(H)} tiles")


if __name__ == "__main__":
    main()
