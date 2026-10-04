"""Step 6: speed category (`+0x0A` bits 0-4, built-up bit 7) against OSM `maxspeed` and `highway` (worklist 6).

  1. speed x OSM maxspeed (km/h) on matched segments: the disc value each limit gets, and the limits each value holds.
  2. speed x (class, highway) where `maxspeed` is missing: is there a default per road type?
  3. predictors scored by majority vote, trained on tiles of even BLOCK_ID and tested on odd ones, Puglia areas
     (so the rule is not fitted to the test): class; class + built-up; class + maxspeed; class + highway + built-up; same + maxspeed.
  4. built-up bit (`+0x0A` bit 7) against OSM tags and the density of the neighbourhood (segments within 150 m).

    uv run python examples/06_osm_vs_disc_modugno/06_speed.py [--disc 21708] [--snapshot now]
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import AREAS, DATA, PUGLIA, assoc, load_joined, parse_wkt, table


def kmh(v: str):
    m = re.fullmatch(r"\s*(\d+)\s*(mph)?\s*", v or "")
    if not m:
        return None
    x = int(m.group(1))
    return round(x * 1.609) if m.group(2) else x


def majority(train, test, key) -> tuple[int, int, int]:
    tab = defaultdict(Counter)
    for r in train:
        tab[key(r)][r["speed"]] += 1
    ok = unseen = 0
    for r in test:
        k = key(r)
        if k not in tab:
            unseen += 1
        elif tab[k].most_common(1)[0][0] == r["speed"]:
            ok += 1
    return ok, len(test) - unseen, len(test)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--disc", default="21708")
    ap.add_argument("--snapshot", default="now")
    a = ap.parse_args()
    rows = [r for r in load_joined(a.disc, a.snapshot, list(AREAS)) if r["matched"]]
    for r in rows:
        r["ms"] = kmh(r["tg"].get("maxspeed", ""))
        r["bu"] = int(r["b0a_hi"]) >> 2 & 1
        r["hw"] = r["tg"].get("highway", "-")
    print(f"disc {a.disc} vs OSM {a.snapshot}: {len(rows)} matched segments; with a numeric maxspeed: {sum(1 for r in rows if r['ms'])}")
    print(table([r for r in rows if r["ms"]], lambda r: f"maxspeed {r['ms']}", lambda r: f"s={r['speed']}", title="\n1. maxspeed -> disc speed (km/h rows, disc values in columns)", top=10, min_n=15))
    print(table([r for r in rows if r["ms"]], lambda r: f"s={r['speed']}", lambda r: f"max {r['ms']}", title="   disc speed -> maxspeed", top=10, min_n=15))
    nm = [r for r in rows if not r["ms"]]
    print(table(nm, lambda r: f"cls {r['cls']} {r['hw']}", lambda r: f"s={r['speed']}", title=f"\n2. no maxspeed ({len(nm)} segments): (class, highway) -> speed", top=8, min_n=25))
    pu = [r for r in rows if r["area"] in PUGLIA]
    for r in pu:
        r["_t"] = int(r["tile"], 16) % 2 == 1
    train = [r for r in pu if not r["_t"]]
    test = [r for r in pu if r["_t"]]
    print(f"\n3. majority-vote predictors: train on tiles with even BLOCK_ID ({len(train)} segments), test on odd ({len(test)}), Puglia; (right, seen, all)")
    keys = {"class": lambda r: r["cls"], "class+built-up": lambda r: (r["cls"], r["bu"]), "class+maxspeed": lambda r: (r["cls"], r["ms"]),
            "class+highway": lambda r: (r["cls"], r["hw"]), "class+highway+built-up": lambda r: (r["cls"], r["hw"], r["bu"]),
            "class+highway+built-up+maxspeed": lambda r: (r["cls"], r["hw"], r["bu"], r["ms"]), "class+form": lambda r: (r["cls"], r["form"]),
            "class+form+built-up": lambda r: (r["cls"], r["form"], r["bu"]), "class+form+built-up+dir": lambda r: (r["cls"], r["form"], r["bu"], r["dir"]),
            "class+form+built-up+maxspeed": lambda r: (r["cls"], r["form"], r["bu"], r["ms"]), "class+form+built-up+highway": lambda r: (r["cls"], r["form"], r["bu"], r["hw"])}
    for n, k in keys.items():
        print(f"   {n:34} {majority(train, test, k)}")
    print()
    hi = [r for r in rows if r["cls"] in ("0", "1", "2")]
    print(table(hi, lambda r: f"cls {r['cls']} {r['hw']}", lambda r: f"s={r['speed']}", title="   classes 0-2 by highway", top=8, min_n=20))
    print("\n4. built-up bit (+0x0A bit 7): OSM tags and context")
    print(assoc(rows, lambda r: r["bu"] == 1, title="   built-up set", top=14))
    # density of the neighbourhood: disc segments with a midpoint within 150 m
    from math import hypot
    allseg = []
    for ar in PUGLIA:
        from common import read_csv
        for r in read_csv(DATA / f"disc_{a.disc}_{ar}_segments.csv.gz"):
            p = parse_wkt(r["wkt"])
            mid = p[len(p) // 2]
            allseg.append((mid[0] * 85000, mid[1] * 111320, r["id"]))
    grid = defaultdict(list)
    for x, y, i in allseg:
        grid[(int(x // 150), int(y // 150))].append((x, y, i))
    dens = {}
    for x, y, i in allseg:
        c = 0
        for dx in (-1, 0, 1):
            for dy in (-1, 0, 1):
                c += sum(1 for u, v, j in grid.get((int(x // 150) + dx, int(y // 150) + dy), ()) if hypot(u - x, v - y) <= 150)
        dens[i] = c
    pu_all = {r["id"]: r for r in pu}
    for lo, hi_ in ((0, 6), (6, 12), (12, 25), (25, 50), (50, 1000)):
        sel = [r for r in pu if lo <= dens.get(r["id"], 0) < hi_]
        print(f"   neighbours within 150 m {lo:3}-{hi_:4}: built-up set on {sum(r['bu'] for r in sel):5} / {len(sel):5}")


if __name__ == "__main__":
    main()
