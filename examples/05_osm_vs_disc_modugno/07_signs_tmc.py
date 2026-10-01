"""Step 7: which segments carry signposts (S11) and TMC references (S12)? (worklist 7)

  1. signposts: segments with n_sign > 0 against OSM tags (`assoc`), the texts of the signs against the OSM `destination`,
     `ref`, `name` of the matched way and of the ways it meets; sign flag (0/1) against the node it points at.
  2. TMC: segments with n_tmc > 0 against OSM highway / ref / maxspeed; direction codes (6, 7, 8); runs of consecutive
     location codes along a road.
  3. both on the second disc.

    uv run python examples/05_osm_vs_disc_modugno/07_signs_tmc.py [--disc 21708] [--snapshot now]
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import AREAS, DATA, assoc, fold, load_joined, read_csv, table


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--disc", default="21708")
    ap.add_argument("--snapshot", default="now")
    a = ap.parse_args()
    rows = load_joined(a.disc, a.snapshot, list(AREAS))
    m = [r for r in rows if r["matched"]]
    sg = defaultdict(list)
    for ar in AREAS:
        try:
            for s in read_csv(DATA / f"disc_{a.disc}_{ar}_signs.csv.gz"):
                sg[s["seg"]].append(s)
        except FileNotFoundError:
            pass
    print(f"disc {a.disc} vs OSM {a.snapshot}: {len(m)} matched of {len(rows)}")
    for r in rows:
        r["has_sign"] = any(s["kind"] == "sign" for s in sg.get(r["id"], []))
        r["has_tmc"] = any(s["kind"] == "tmc" for s in sg.get(r["id"], []))
    print("\n" + assoc(m, lambda r: r["has_sign"], title="1. segments with S11 signposts", top=20))
    print(f"\n   signposts on {sum(r['has_sign'] for r in rows)} segments, {sum(1 for r in rows for s in sg.get(r['id'], []) if s['kind'] == 'sign')} entries")
    print(table([r for r in rows if r["has_sign"]], lambda r: f"cls {r['cls']}", lambda r: f"form {r['form']}", title="   by class x form"))
    ex = 0
    print("\n   examples (sign dest / route -> OSM tags of the matched way)")
    names = {}
    for r in m:
        for k in ("name", "ref"):
            if r["tg"].get(k):
                names.setdefault(fold(r["tg"][k]), []).append(r)
    hit = tot = with_tag = dest_hit = 0
    for r in m:
        for s in sg.get(r["id"], []):
            if s["kind"] != "sign":
                continue
            tot += 1
            d = fold(s["v0"].split("((")[0].strip()) if s["v0"] else ""
            ok = d in names or fold(s["v1"].strip("()")) in names
            hit += ok
            dest = {fold(x) for k in ("destination", "destination:forward", "destination:backward", "destination:ref", "ref") for x in r["tg"].get(k, "").replace(",", ";").split(";") if x.strip()}
            if r["tg"].get("destination") or r["tg"].get("destination:forward") or r["tg"].get("destination:ref"):
                with_tag += 1
                dest_hit += bool(d and any(d == x or d in x or x in d for x in dest)) or bool(s["v1"] and fold(s["v1"].strip("()")) in dest)
            if ex < 14:
                ex += 1
                t = r["tg"]
                print(f"   {s['v0']!r:34} {s['v1']!r:12} fl={s['fl']}  {t.get('highway')} ref={t.get('ref')} dest={t.get('destination')} name={t.get('name')}")
    print(f"   sign text equals the name or ref of some OSM way in the area: {hit} / {tot}")
    print(f"   entries on ways that carry an OSM destination tag: {with_tag}; sign text found in destination / ref of that way: {dest_hit}")
    sl = [r for r in m if r["tg"].get("highway", "").endswith("_link")]
    print(f"   segments on OSM *_link ways: {len(sl)}, with signposts {sum(r['has_sign'] for r in sl)}; on other ways: {len(m) - len(sl)}, with signposts {sum(r['has_sign'] for r in m if r not in sl)}")
    print("\n" + assoc(m, lambda r: r["has_tmc"], title="2. segments with S12 TMC triples", top=20))
    tm = [s for ss in sg.values() for s in ss if s["kind"] == "tmc"]
    print(f"   TMC triples {len(tm)}: direction codes {Counter(s['v0'] for s in tm).most_common()}, flags {Counter(s['fl'] for s in tm).most_common(5)}")
    seq = Counter()
    for sid, ss in sg.items():
        t = sorted(int(s["v1"]) for s in ss if s["kind"] == "tmc")
        for x, y in zip(t, t[1:]):
            seq[y - x] += 1
    print("   gaps between location codes inside one segment:", seq.most_common(6))
    print(table([r for r in rows if r["has_tmc"]], lambda r: f"cls {r['cls']}", lambda r: f"form {r['form']}", title="   TMC by class x form"))


if __name__ == "__main__":
    main()
