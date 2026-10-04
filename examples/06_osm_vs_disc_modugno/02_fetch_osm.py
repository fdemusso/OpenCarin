"""Step 2: OSM highways and turn restrictions of the study areas, today and at the disc's build date.

Overpass `out geom tags` (geometry, node ids and tags of every highway way) plus `type=restriction`
relations (members and tags), one request per (area, snapshot), kept on disk as gzip JSON so the
later steps need no network. The 2015 snapshot uses the attic: `[date:"2015-07-21T00:00:00Z"]`.

    uv run python examples/06_osm_vs_disc_modugno/02_fetch_osm.py [--area A ...] [--snapshot now 2015] [--force]

overpass-api.de is often busy ("Dispatcher_Client", "runtime error", HTTP 429/504): every request
is retried with a pause and on the mirrors. A file that exists is not fetched again.
"""
from __future__ import annotations

import argparse
import gzip
import json
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import AREAS, DATA, ENDPOINTS, SNAPSHOTS


def query(bbox, date) -> str:
    lon0, lat0, lon1, lat1 = bbox
    b = f"{lat0},{lon0},{lat1},{lon1}"
    d = f'[date:"{date}"]' if date else ""
    return f'[out:json][timeout:600]{d};way["highway"]({b});out geom tags;'


def query_rel(bbox, date) -> str:
    """Turn restrictions with their members (`out geom` would drop the member list)."""
    lon0, lat0, lon1, lat1 = bbox
    d = f'[date:"{date}"]' if date else ""
    return f'[out:json][timeout:600]{d};relation["type"="restriction"]({lat0},{lon0},{lat1},{lon1});out body;'



CELL = 0.07        # degrees: a request per cell of this size keeps Overpass answering; cells are cached and merged


def cells(bbox):
    lon0, lat0, lon1, lat1 = bbox
    nx, ny = max(1, round((lon1 - lon0) / CELL)), max(1, round((lat1 - lat0) / CELL))
    for i in range(nx):
        for j in range(ny):
            yield i, j, (lon0 + (lon1 - lon0) * i / nx, lat0 + (lat1 - lat0) * j / ny,
                         lon0 + (lon1 - lon0) * (i + 1) / nx, lat0 + (lat1 - lat0) * (j + 1) / ny)


def fetch(q: str, out: Path, tries: int = 12) -> dict:
    for attempt in range(tries):
        url = ENDPOINTS[attempt % len(ENDPOINTS)]
        tmp = out.with_suffix(".part")
        r = subprocess.run(["curl", "-s", "-m", "700", "-A", "opencarin-research/0.1 (github fdemusso)",
                            "--data-urlencode", f"data={q}", url, "-o", str(tmp)])
        try:
            els = json.load(open(tmp))
            if els.get("elements") is not None and "remark" not in els:
                tmp.unlink()
                return els
            print(f"  {url}: {els.get('remark', 'no elements')[:100]}")
        except (ValueError, OSError):
            print(f"  {url}: busy or error (curl {r.returncode}), retry")
        time.sleep(15 + 10 * attempt)
    raise SystemExit("Overpass did not answer; rerun later (finished files are kept)")


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--area", nargs="*", default=list(AREAS))
    ap.add_argument("--snapshot", nargs="*", default=list(SNAPSHOTS))
    ap.add_argument("--force", action="store_true")
    a = ap.parse_args()
    DATA.mkdir(exist_ok=True)
    for area in a.area:
        for snap in a.snapshot:
            out = DATA / f"osm_{area}_{snap}.json.gz"
            if out.exists() and not a.force:
                rel = DATA / f"osm_{area}_{snap}_rel.json.gz"
                if not rel.exists():
                    r = fetch(query_rel(AREAS[area], SNAPSHOTS[snap]), DATA / f"osm_{area}_{snap}.tmp")
                    with gzip.open(rel, "wt") as f:
                        json.dump(r, f, separators=(",", ":"))
                    print(f"{rel.name}: {len(r['elements'])} restriction relations")
                else:
                    print(f"{out.name}: exists, skipped")
                continue
            print(f"{area} / {snap}: asking Overpass")
            merged: dict = {}
            base = None
            for i, j, cb in cells(AREAS[area]):
                cache = DATA / f"osm_{area}_{snap}_cell{i}{j}.json.gz"
                if cache.exists():
                    part = json.load(gzip.open(cache, "rt"))
                else:
                    part = fetch(query(cb, SNAPSHOTS[snap]), DATA / f"osm_{area}_{snap}.tmp")
                    with gzip.open(cache, "wt") as f:
                        json.dump(part, f, separators=(",", ":"))
                base = part["osm3s"].get("timestamp_osm_base")
                for e in part["elements"]:
                    merged[(e["type"], e["id"])] = e
            els = {"osm3s": {"timestamp_osm_base": base}, "elements": list(merged.values())}
            for c in DATA.glob(f"osm_{area}_{snap}_cell*.json.gz"):
                c.unlink()
            rel = DATA / f"osm_{area}_{snap}_rel.json.gz"
            if not rel.exists() or a.force:
                r = fetch(query_rel(AREAS[area], SNAPSHOTS[snap]), DATA / f"osm_{area}_{snap}.tmp")
                with gzip.open(rel, "wt") as f:
                    json.dump(r, f, separators=(",", ":"))
                print(f"  {len(r['elements'])} restriction relations -> {rel.name}")
            n_w = sum(e["type"] == "way" for e in els["elements"])
            with gzip.open(out, "wt") as f:
                json.dump(els, f, separators=(",", ":"))
            print(f"  {n_w} ways, {len(els['elements']) - n_w} relations, base {els['osm3s'].get('timestamp_osm_base')} "
                  f"-> {out.name} ({out.stat().st_size // 1024} kB)")


if __name__ == "__main__":
    main()
