"""Step 4: form of way 7 and S10 flags 2 / 3 (worklist 1 and 4).

For each snapshot (OSM today, OSM 2015-07-21) and disc:
  A. form of way 7 against every OSM tag and graph-context flag (chi-square ranking, `assoc`), against the
     same segments' form on the other disc, and against S10 entries of the owner.
  B. S10 owners with a flag-2/3 entry (and the self entries of flags 0/1): the same ranking, plus the OSM
     turn restrictions (`type=restriction` relations) whose `from` or `to` way is the matched way.
  C. what the disc says on itself: owners' form, class, dead ends, entry patterns on both discs.

    uv run python examples/06_osm_vs_disc_modugno/04_form7_s10.py [--disc 21708] [--snapshot now 2015] [--areas ...]
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import DATA, PUGLIA, assoc, load_joined, load_json, read_csv, table


def turn_index(areas, disc):
    own = defaultdict(list)
    for ar in areas:
        for t in read_csv(DATA / f"disc_{disc}_{ar}_turns.csv.gz"):
            own[t["owner"]].append(t)
    return own


def restrictions(areas, snap):
    """OSM way id -> list of restriction values it takes part in as from / to / via."""
    out = defaultdict(list)
    for ar in areas:
        p = DATA / f"osm_{ar}_{snap}_rel.json.gz"
        if not p.exists():
            continue
        for e in load_json(p)["elements"]:
            if e["type"] == "relation":
                rv = e.get("tags", {}).get("restriction", e.get("tags", {}).get("restriction:conditional", "?"))
                for m in e.get("members", []):
                    if m["type"] == "way":
                        out[m["ref"]].append((m["role"], rv))
    return out


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--disc", default="21708")
    ap.add_argument("--snapshot", nargs="*", default=["now", "2015"])
    ap.add_argument("--areas", nargs="*", default=list(PUGLIA))
    a = ap.parse_args()
    own = turn_index(a.areas, a.disc)
    for snap in a.snapshot:
        rows = load_joined(a.disc, snap, a.areas)
        if not rows:
            print(f"[{snap}] no match tables: run 02 and 03 first")
            continue
        m = [r for r in rows if r["matched"]]
        print(f"\n######## disc {a.disc} vs OSM {snap}: {len(rows)} segments, {len(m)} matched (cover >= 0.7)")
        for r in rows:
            ts = own.get(r["id"], [])
            r["f23"] = any(t["flag"] in ("2", "3") for t in ts)
            r["f01self"] = any(t["flag"] in ("0", "1") and t["self"] == "1" for t in ts)
            r["f01other"] = any(t["flag"] in ("0", "1") and t["self"] == "0" for t in ts)
        print(table(m, lambda r: f"form={r['form']}", lambda r: r["tg"].get("highway", "-"), title="\nform x OSM highway (matched)", top=10))
        if any(r["form"] == "7" for r in m):
            print("\n" + assoc(m, lambda r: r["form"] == "7", title="A. form 7 vs OSM / context"))
            f7 = [r for r in m if r["form"] == "7"]
            print("\n   form 7 with and without S10 owner entries:", Counter((bool(own.get(r['id'])), r["f23"]) for r in f7))
        print("\n" + assoc(m, lambda r: r["f23"], title="B1. owners of a flag 2/3 entry"))
        print("\n" + assoc(m, lambda r: r["f01self"], title="B2. owners of a flag 0/1 SELF entry (U-turn ban?)"))
        print("\n" + assoc(m, lambda r: r["f01other"], title="B3. owners of a flag 0/1 entry into another segment (turn ban)"))
        res = restrictions(a.areas, snap)
        for label, key in (("flag 2/3", "f23"), ("flag 0/1 self", "f01self"), ("flag 0/1 other", "f01other")):
            sel = [r for r in m if r[key]]
            base = [r for r in m if not r[key]]
            h = lambda rs: sum(1 for r in rs if int(r["osm_id"]) in res) / max(1, len(rs))
            print(f"   OSM restriction relation on the matched way: {label}: {100 * h(sel):.1f}% of {len(sel)}  vs the rest {100 * h(base):.1f}% of {len(base)}")
            kinds = Counter(rv for r in sel for _, rv in res.get(int(r["osm_id"]), []))
            print("      restriction values:", kinds.most_common(6))


if __name__ == "__main__":
    main()
