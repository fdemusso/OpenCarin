"""Step 9 (optional): the same road on 21708 (2015) and 21734 (2018) -> which fields the compiler changes between releases.

Segments are paired by their end points (lon/lat rounded to 1e-5 deg, ~1 m) and a name that is the same
or empty on one side; unpaired segments are counted as added / removed. For each field of the segment
record the script reports how often it differs on pairs of unchanged geometry (same shape points) and the
most frequent transitions. A field that never changes where the road did not is derived from stable
properties; one that changes with the data is derived from source attributes that changed.

    uv run python examples/05_osm_vs_disc_modugno/09_disc_vs_disc.py [--area A ...]
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import AREAS, DATA, parse_wkt, read_csv

FIELDS = ["speed", "b0a_hi", "form", "dir", "toll", "cls", "sub", "b10_7", "junc", "j_hi", "b18", "b1c", "b1d", "n_turn", "n_sign", "n_tmc", "n_toll"]


def key(r):
    pts = parse_wkt(r["wkt"])
    f = lambda p: (round(p[0], 5), round(p[1], 5))
    a, b = f(pts[0]), f(pts[-1])
    return (a, b) if a <= b else (b, a), len(pts)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--area", nargs="*", default=list(AREAS))
    ap.add_argument("--min-diff", type=int, default=1)
    a = ap.parse_args()
    old, new = {}, {}
    for area in a.area:
        for disc, store in (("21708", old), ("21734", new)):
            for r in read_csv(DATA / f"disc_{disc}_{area}_segments.csv.gz"):
                if r["in_bbox"] == "1":
                    store.setdefault(key(r)[0], []).append(r)
    pairs, ambiguous = [], 0
    for k, lo in old.items():
        ln = new.get(k, [])
        if len(lo) == 1 and len(ln) == 1:
            pairs.append((lo[0], ln[0]))
        elif lo and ln:
            ambiguous += 1
    only_old = sum(1 for k in old if k not in new)
    only_new = sum(1 for k in new if k not in old)
    same_shape = [(o, n) for o, n in pairs if o["wkt"] == n["wkt"]]
    print(f"{len(old)} end-point keys on 21708, {len(new)} on 21734: {len(pairs)} paired 1:1 ({len(same_shape)} with identical shape), "
          f"{ambiguous} ambiguous, {only_old} only on 21708, {only_new} only on 21734")
    for label, ps in (("identical shape", same_shape), ("all pairs", pairs)):
        print(f"\n== {label}: {len(ps)} pairs")
        for f in FIELDS:
            tr = Counter((o[f], n[f]) for o, n in ps if o[f] != n[f])
            nd = sum(tr.values())
            print(f"  {f:7} differs {nd:5} ({100 * nd / max(1, len(ps)):5.1f}%)  " +
                  "  ".join(f"{x}->{y}:{c}" for (x, y), c in tr.most_common(6)))
    # node flags, by node position
    nodes = {}
    for disc in ("21708", "21734"):
        for area in a.area:
            for r in read_csv(DATA / f"disc_{disc}_{area}_nodes.csv.gz"):
                if r["in_bbox"] == "1":
                    nodes.setdefault((disc, round(float(r["lon"]), 5), round(float(r["lat"]), 5)), []).append(r)
    tr, n_pairs = Counter(), 0
    for (d, lo, la), v in nodes.items():
        if d != "21708" or len(v) != 1:
            continue
        w = nodes.get(("21734", lo, la))
        if w and len(w) == 1:
            n_pairs += 1
            x, y = int(v[0]["flags"]), int(w[0]["flags"])
            if x != y:
                tr[(f"{x:#06x}", f"{y:#06x}")] += 1
    print(f"\n== node flags: {n_pairs} nodes at the same position, {sum(tr.values())} with other flags")
    print("  " + "  ".join(f"{x}->{y}:{c}" for (x, y), c in tr.most_common(12)))


if __name__ == "__main__":
    main()
