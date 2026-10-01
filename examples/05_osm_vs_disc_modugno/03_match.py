"""Step 3: match every disc segment to an OSM way -> dataset/match_<disc>_<area>_<snapshot>.csv.gz.

Method (the idea of check_house_number_sides.py, with a direction test): the segment's polyline is
sampled every SAMPLE_M metres; each sample takes the nearest piece of an OSM highway way that is
within TOL_M metres, runs within ANGLE_DEG of the sample's own direction (mod 180) and, among
those, prefers a way with the same folded name. The way chosen by most samples is the match.

  cover      share of samples that chose that way
  dist       mean distance of those samples (m)
  name_ok    1 if a name / alt_name / official_name of the way equals the disc name (folded)
  along      share of those samples where the disc direction (start -> end) runs along the way's node order
  n_ways     number of different ways chosen by at least 2 samples (a disc segment spanning an OSM split)
  osm_*      the matched way's id, tags (JSON) and node count

    uv run python examples/05_osm_vs_disc_modugno/03_match.py [--disc 21708] [--snapshot now 2015] [--area A ...] [--force]
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from math import atan2, degrees, hypot
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import AREAS, DATA, SNAPSHOTS, fold, load_json, need, parse_wkt, planar, read_csv, write_csv

TOL_M = 15.0
ANGLE_DEG = 30.0
SAMPLE_M = 8.0
CELL_M = 40.0
NAME_KEYS = ("name", "alt_name", "official_name", "old_name", "name:it", "loc_name")


class Index:
    """Grid of OSM way pieces in planar metres around lat0."""

    def __init__(self, osm: dict, lat0: float):
        self.lat0 = lat0
        self.ways: dict[int, dict] = {}
        self.cells: dict[tuple, list] = defaultdict(list)
        for e in osm["elements"]:
            if e["type"] != "way" or "geometry" not in e or len(e["geometry"]) < 2:
                continue
            self.ways[e["id"]] = e
            e["_names"] = {fold(e["tags"][k]) for k in NAME_KEYS if e.get("tags", {}).get(k)}
            pts = [planar(p["lon"], p["lat"], lat0) for p in e["geometry"]]
            for a, b in zip(pts, pts[1:]):
                piece = (e["id"], a, b)
                x0, x1 = sorted((a[0], b[0]))
                y0, y1 = sorted((a[1], b[1]))
                for cx in range(int((x0 - TOL_M) // CELL_M), int((x1 + TOL_M) // CELL_M) + 1):
                    for cy in range(int((y0 - TOL_M) // CELL_M), int((y1 + TOL_M) // CELL_M) + 1):
                        self.cells[(cx, cy)].append(piece)

    def near(self, p):
        for piece in self.cells.get((int(p[0] // CELL_M), int(p[1] // CELL_M)), ()):
            yield piece


def sample_dirs(pts):
    """(point, unit direction) every SAMPLE_M along a planar polyline, plus both ends."""
    out = []
    for a, b in zip(pts, pts[1:]):
        L = hypot(b[0] - a[0], b[1] - a[1])
        if L == 0:
            continue
        d = ((b[0] - a[0]) / L, (b[1] - a[1]) / L)
        n = max(1, int(L // SAMPLE_M))
        for i in range(n + 1):
            f = i / n
            out.append(((a[0] + (b[0] - a[0]) * f, a[1] + (b[1] - a[1]) * f), d))
    return out


def match_one(idx: Index, pts, name: str):
    votes: Counter = Counter()
    dsum: dict = defaultdict(float)
    along: Counter = Counter()
    for p, d in sample_dirs(pts):
        best = None
        for wid, a, b in idx.near(p):
            vx, vy = b[0] - a[0], b[1] - a[1]
            L2 = vx * vx + vy * vy
            if L2 == 0:
                continue
            f = max(0.0, min(1.0, ((p[0] - a[0]) * vx + (p[1] - a[1]) * vy) / L2))
            dist = hypot(p[0] - (a[0] + f * vx), p[1] - (a[1] + f * vy))
            if dist > TOL_M:
                continue
            L = L2 ** 0.5
            cosang = (d[0] * vx + d[1] * vy) / L
            if abs(cosang) < 0.866:                    # cos(30 deg)
                continue
            score = dist - (6.0 if name and fold(name) in idx.ways[wid]["_names"] else 0.0)
            if best is None or score < best[0]:
                best = (score, wid, dist, cosang > 0)
        if best:
            votes[best[1]] += 1
            dsum[best[1]] += best[2]
            along[best[1]] += best[3]
    return votes, dsum, along


def run(disc: str, area: str, snap: str, force: bool) -> None:
    out = DATA / f"match_{disc}_{area}_{snap}.csv.gz"
    if out.exists() and not force:
        print(f"{out.name}: exists, skipped")
        return
    segs = [r for r in read_csv(need(DATA / f"disc_{disc}_{area}_segments.csv.gz", "01_extract_disc.py")) if r["in_bbox"] == "1"]
    osm = load_json(need(DATA / f"osm_{area}_{snap}.json.gz", "02_fetch_osm.py"))
    lat0 = (AREAS[area][1] + AREAS[area][3]) / 2
    idx = Index(osm, lat0)
    rows = []
    for r in segs:
        pts = [planar(x, y, lat0) for x, y in parse_wkt(r["wkt"])]
        votes, dsum, along = match_one(idx, pts, r["name"])
        n = sum(votes.values())
        row = {"id": r["id"], "n_samples": n, "osm_id": "", "cover": 0, "dist": "", "name_ok": 0, "along": "", "n_ways": 0, "tags": ""}
        if votes:
            wid, k = votes.most_common(1)[0]
            tot = len(sample_dirs(pts))
            w = idx.ways[wid]
            row.update(osm_id=wid, cover=round(k / tot, 3), dist=round(dsum[wid] / k, 1), along=round(along[wid] / k, 3),
                       name_ok=int(bool(r["name"]) and fold(r["name"]) in w["_names"]), n_ways=sum(1 for v in votes.values() if v >= 2),
                       tags=json.dumps(w.get("tags", {}), ensure_ascii=False, separators=(",", ":")))
        rows.append(row)
    write_csv(out, rows)
    ok = sum(1 for x in rows if x["osm_id"] and x["cover"] >= 0.7)
    print(f"{disc} / {area} / {snap}: {len(rows)} segments, {ok} matched with cover >= 0.7 -> {out.name}")


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--disc", nargs="*", default=["21708", "21734"])
    ap.add_argument("--snapshot", nargs="*", default=list(SNAPSHOTS))
    ap.add_argument("--area", nargs="*", default=list(AREAS))
    ap.add_argument("--force", action="store_true")
    a = ap.parse_args()
    for disc in a.disc:
        for area in a.area:
            for snap in a.snapshot:
                if (DATA / f"osm_{area}_{snap}.json.gz").exists():
                    run(disc, area, snap, a.force)
                else:
                    print(f"osm_{area}_{snap}.json.gz missing: step 2 first (skipped)")


if __name__ == "__main__":
    main()
