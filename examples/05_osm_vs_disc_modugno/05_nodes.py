"""Step 5: node flags (S5 / S6 `+6`). Which bits are explained by degree, level and the attributes of the segments at the node?

Per node: bits 15-14 (level reached), bit 13, bit 12, bits 11-8 (nibble N), bits 7-0 (crossing byte).
Tests, on the disc alone (the tables of step 1) and on the OSM node degree where a segment is matched:

  1. N against the in-tile degree (S5 nodes are interior; an S6 edge node's degree counts only this tile).
  2. For S5 nodes of degree 2, the two segments at the node: which attribute change separates N = 5 from N = 4?
  3. N = 2 (degree 3-4): what do the segments have in common?
  4. bits 13 / 12 against the node section (S5 / S6) and the level.
  5. The same on the second disc.

    uv run python examples/05_osm_vs_disc_modugno/05_nodes.py [--disc 21708]
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import AREAS, DATA, read_csv, table

ATTRS = ["name", "cls", "speed", "form", "dir", "toll", "sub", "junc", "b0a_hi", "b1d", "b18", "b1c"]


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--disc", default="21708")
    a = ap.parse_args()
    nodes, segs = [], {}
    for ar in AREAS:
        nodes += read_csv(DATA / f"disc_{a.disc}_{ar}_nodes.csv.gz")
        for r in read_csv(DATA / f"disc_{a.disc}_{ar}_segments.csv.gz"):
            segs[r["id"]] = r
    at: dict = defaultdict(list)
    for r in segs.values():
        at[f"{r['tile']}:{r['a']}"].append((r, "a"))
        at[f"{r['tile']}:{r['b']}"].append((r, "b"))
    for r in nodes:
        f = int(r["flags"])
        r.update(f=f, lvl=f >> 14, b13=(f >> 13) & 1, b12=(f >> 12) & 1, N=(f >> 8) & 15, lo=f & 255, deg=int(r["deg"]))
    print(f"disc {a.disc}: {len(nodes)} nodes")
    print(table(nodes, lambda r: f"N={r['N']}", lambda r: f"{r['sec']}:deg{min(r['deg'], 5)}", title="\n1. nibble N x (section, in-tile degree)"))
    print(table(nodes, lambda r: f"b13b12={r['b13']}{r['b12']}", lambda r: f"sec{r['sec']}", title="\n4. bits 13/12 x section"))
    print(table(nodes, lambda r: f"b13b12={r['b13']}{r['b12']}", lambda r: f"lvl{r['lvl']}", title="   bits 13/12 x level (bits 15-14)"))
    print(table(nodes, lambda r: f"lo={r['lo']}", lambda r: f"N={r['N']}", title="   low byte x N"))

    # 2. degree-2 interior nodes: N=5 vs 4, which attribute differs between the two segments?
    d2 = [r for r in nodes if r["sec"] == "5" and r["deg"] == 2 and r["N"] in (4, 5)]
    diff = defaultdict(Counter)
    for r in d2:
        m = at.get(r["id"])
        if not m or len(m) != 2:
            continue
        (s1, _), (s2, _) = m
        for k in ATTRS:
            diff[k][(r["N"], s1[k] != s2[k])] += 1
    print("\n2. interior degree-2 nodes, N = 5 vs 4: share whose two segments differ in an attribute")
    for k in ATTRS:
        c = diff[k]
        print(f"   {k:7} N=5: {c[(5, True)]:5}/{c[(5, True)] + c[(5, False)]:5}   N=4: {c[(4, True)]:4}/{c[(4, True)] + c[(4, False)]:4}")
    # any-attribute rule
    ru = Counter()
    for r in d2:
        m = at.get(r["id"])
        if m and len(m) == 2:
            (s1, _), (s2, _) = m
            ru[(r["N"], any(s1[k] != s2[k] for k in ATTRS if k != "name"))] += 1
    print("   any attribute but the name differs:", dict(ru))
    # 3. N = 2
    n2 = [r for r in nodes if r["N"] == 2]
    print(f"\n3. N = 2: {len(n2)} nodes; degrees {dict(Counter(r['deg'] for r in n2))}, sections {dict(Counter(r['sec'] for r in n2))}")
    cc = Counter()
    for r in n2:
        for s, side in at.get(r["id"], []):
            cc[(s["form"], s["cls"], s["junc"])] += 1
    print("   (form, class, junction) of the segments at them:", cc.most_common(8))
    base = Counter()
    for r in nodes:
        if r["N"] == 0 and r["deg"] >= 3:
            for s, side in at.get(r["id"], []):
                base[(s["form"], s["cls"], s["junc"])] += 1
    print("   the same for N = 0 nodes of degree >= 3:", base.most_common(8))


if __name__ == "__main__":
    main()
