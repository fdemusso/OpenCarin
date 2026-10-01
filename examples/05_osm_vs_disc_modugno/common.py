"""Shared constants and helpers of the OSM-vs-disc study (flat-earth geometry, areas, CSV I/O)."""
from __future__ import annotations

import csv
import gzip
import json
import sys
from collections import Counter, defaultdict
from math import atan2, cos, degrees, hypot, radians
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[1]
DATA = HERE / "dataset"                      # git-ignored, safe to delete: every script rebuilds what it needs
RUST = REPO / "carindb-rs" / "target" / "release" / "carindb-rs"
sys.path.insert(0, str(REPO))

# The two discs are read in place, never copied. dataset/*.ISO at the repository root are symlinks.
DISCS = {
    "21708": REPO / "dataset" / "NAV_DB_21708.ISO",     # HERE/Navteq 14q4, compiled 2015-07-21
    "21734": REPO / "dataset" / "NAV_DB_21734.ISO",     # newer, TPD of 2018-05-08
}
# (lon0, lat0, lon1, lat1). bari_modugno: city + ring road; rural_a14: A14, SS16, small towns, countryside
# (Bitonto-Molfetta-Terlizzi); altamura: small town and open country.
AREAS = {
    "bari_modugno": (16.74, 40.98, 16.95, 41.20),
    "rural_a14": (16.55, 41.08, 16.74, 41.22),
    "altamura": (16.50, 40.78, 16.64, 40.88),
    # one street tile each, found by 08_sample_disc.py as the densest in rare values (outside Puglia):
    "x_slovenia": (14.5376, 46.2577, 14.6084, 46.2931),     # +0x10 bit 7
    "x_czech": (17.0856, 49.1242, 17.1564, 49.1950),        # +0x10 bit 7
    "x_duisburg": (6.7873, 51.4245, 6.8227, 51.4422),       # junction 3, +0x1D bits 4-6
    "x_gennep": (6.1326, 51.7784, 6.1503, 51.7961),         # junction 3, +0x1D bits 4-6
    "x_solingen": (7.1766, 51.1768, 7.1943, 51.1945),       # junction 4
    "x_nancy": (5.9026, 48.6288, 5.9734, 48.6642),          # +0x1D bits 4-6
}
PUGLIA = ("bari_modugno", "rural_a14", "altamura")
SNAPSHOTS = {"now": None, "2015": "2015-07-21T00:00:00Z"}     # OSM today / at the build date of disc 21708
ENDPOINTS = ["https://overpass-api.de/api/interpreter", "https://overpass.kumi.systems/api/interpreter",
             "https://overpass.private.coffee/api/interpreter"]

M_LAT = 111_320.0


def m_lon(lat: float) -> float:
    return M_LAT * cos(radians(lat))


def planar(lon: float, lat: float, lat0: float):
    return lon * m_lon(lat0), lat * M_LAT


def bearing_deg(a, b) -> float:
    """Compass bearing a -> b (lon, lat), 0 = north, clockwise."""
    e, n = (b[0] - a[0]) * cos(radians(a[1])), b[1] - a[1]
    return degrees(atan2(e, n)) % 360


def length_m(coords) -> float:
    lat0 = coords[0][1]
    pts = [planar(lon, lat, lat0) for lon, lat in coords]
    return sum(hypot(b[0] - a[0], b[1] - a[1]) for a, b in zip(pts, pts[1:]))


def parse_wkt(s: str):
    return [tuple(map(float, p.split())) for p in s[11:-1].split(", ")]


def wkt(coords) -> str:
    return "LINESTRING(" + ", ".join(f"{x:.6f} {y:.6f}" for x, y in coords) + ")"


def write_csv(path: Path, rows: list[dict]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    opener = gzip.open if str(path).endswith(".gz") else open
    with opener(path, "wt", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0]) if rows else ["empty"])
        w.writeheader()
        w.writerows(rows)


def read_csv(path: Path) -> list[dict]:
    opener = gzip.open if str(path).endswith(".gz") else open
    with opener(path, "rt", newline="") as f:
        return list(csv.DictReader(f))


def load_json(path: Path):
    with gzip.open(path, "rt") as f:
        return json.load(f)


def table(rows, key_a, key_b, *, min_n: int = 0, top: int = 12, title: str = "") -> str:
    """Cross-tab as text: rows keyed by key_a(row), columns by key_b(row); columns sorted by total."""
    ct: dict = defaultdict(Counter)
    tot: Counter = Counter()
    for r in rows:
        a, b = key_a(r), key_b(r)
        ct[a][b] += 1
        tot[b] += 1
    cols = [c for c, _ in tot.most_common(top)]
    lines = [title] if title else []
    lines.append(f"{'':>14} {'n':>7} " + " ".join(f"{str(c)[:10]:>10}" for c in cols))
    for a in sorted(ct, key=lambda k: -sum(ct[k].values())):
        n = sum(ct[a].values())
        if n < min_n:
            continue
        lines.append(f"{str(a)[:14]:>14} {n:>7} " + " ".join(f"{ct[a][c]:>10}" for c in cols))
    return "\n".join(lines)


def need(path: Path, step: str) -> Path:
    if not path.exists():
        raise SystemExit(f"missing {path.relative_to(HERE)}: run {step} first")
    return path


def fold(s: str) -> str:
    """Case-, accent- and space-folded name, as in scripts/routing/check_house_number_sides.py."""
    import re
    import unicodedata
    s = unicodedata.normalize("NFKD", s.casefold().replace("’", "'"))
    return re.sub(r"\s+", " ", "".join(c for c in s if not unicodedata.combining(c))).strip()


def load_joined(disc: str, snap: str, areas=None, *, min_cover: float = 0.7) -> list[dict]:
    """Disc segments (in the bounding box) joined with their OSM match; rows get `area`, `tg` (tag dict) and `matched`.

    Every field of the segment table is kept as a string; use int() where needed. A row is `matched` when an
    OSM way covers at least `min_cover` of the segment's samples.
    """
    rows = []
    for area in areas or AREAS:
        mp = DATA / f"match_{disc}_{area}_{snap}.csv.gz"
        if not mp.exists():
            continue
        m = {r["id"]: r for r in read_csv(mp)}
        for r in read_csv(DATA / f"disc_{disc}_{area}_segments.csv.gz"):
            x = m.get(r["id"])
            if x is None:
                continue
            r["area"] = area
            r.update({k: x[k] for k in ("osm_id", "cover", "dist", "name_ok", "along", "n_ways")})
            r["tg"] = json.loads(x["tags"]) if x["tags"] else {}
            r["matched"] = bool(x["osm_id"]) and float(x["cover"]) >= min_cover
            rows.append(r)
    return rows


SKIP_TAGS = {"name", "ref", "alt_name", "official_name", "old_name", "loc_name", "int_ref", "source", "note", "fixme", "FIXME",
             "created_by", "check_date", "wikidata", "wikipedia", "description", "source:name", "name:it", "start_date", "operator",
             "destination", "destination:ref", "old_ref", "nat_ref", "survey:date", "image", "website"}


def features(r: dict) -> set:
    """OSM tags (k=v) and graph-context flags of a joined row, as strings."""
    f = {f"{k}={v}" for k, v in r.get("tg", {}).items() if k not in SKIP_TAGS and len(v) < 25 and not k.startswith(("name:", "source:", "addr:", "tiger:", "gnis:"))}
    f |= {f"tagkey:{k}" for k in r.get("tg", {}) if k not in SKIP_TAGS and not k.startswith(("name:", "source:", "addr:"))}
    da, db = int(r["a_deg"]), int(r["b_deg"])
    ea, eb = int(r["a_edge"]), int(r["b_edge"])
    if (da == 1 and not ea) or (db == 1 and not eb):
        f.add("ctx:dead_end")
    if (da == 1 and not ea) and (db == 1 and not eb):
        f.add("ctx:isolated")
    f.add(f"ctx:deg_max={min(max(da, db), 5)}")
    if ea or eb:
        f.add("ctx:tile_edge")
    ln = int(r["len"])
    f.add("ctx:len=" + ("<20" if ln < 20 else "<60" if ln < 60 else "<200" if ln < 200 else ">=200"))
    return f


def assoc(rows, pred, *, title="", min_n: int = 12, top: int = 25, show_all: bool = False) -> str:
    """Features most associated with pred(row): n in the group, n overall, rates inside / outside the group and chi-square.

    Sorted by chi-square; only features seen on at least min_n rows of the group or of the rest.
    """
    from collections import Counter as C
    inn, out = C(), C()
    n_in = n_out = 0
    for r in rows:
        f = features(r)
        if pred(r):
            n_in += 1
            inn.update(f)
        else:
            n_out += 1
            out.update(f)
    res = []
    for k in set(inn) | set(out):
        a, c = inn[k], out[k]
        if a + c < min_n:
            continue
        b, d = n_in - a, n_out - c
        tot = n_in + n_out
        e = (a + c) * n_in / tot
        chi = sum((o - ex) ** 2 / ex for o, ex in ((a, e), (c, (a + c) * n_out / tot), (b, (tot - a - c) * n_in / tot), (d, (tot - a - c) * n_out / tot)) if ex > 0)
        res.append((chi, k, a, c))
    res.sort(reverse=True)
    lines = [f"{title}: group n={n_in}, rest n={n_out}", f"  {'feature':34} {'in grp':>13} {'in rest':>13}  chi2"]
    for chi, k, a, c in res[: (len(res) if show_all else top)]:
        lines.append(f"  {k:34} {a:6} {100 * a / max(1, n_in):5.1f}% {c:6} {100 * c / max(1, n_out):5.1f}%  {chi:7.0f}")
    return "\n".join(lines)
