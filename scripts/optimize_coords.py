"""Calibrate the CARINdb coordinate frame from named point features.

Anchors come from type 0x16 blocks (scripts/extract_anchors.py): each is a city
label carrying an absolute 32-bit CARIN (X, Y) that we pair with the published
WGS84 centre of that city.

Model (see docs/CARINDB_BLUEPRINT.md section 7):
    X = K * (lon + Cx)      Y = K * (lat + Cy)
"""
from __future__ import annotations

import math
import pickle
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from carin.parser.calibration import GeographicCalibrator  # noqa: E402

# city label -> (lon, lat) WGS84 centre.  Names as spelled in the database.
CITIES = {
    "sevilla": (-5.9845, 37.3891),   "madrid": (-3.7038, 40.4168),
    "valencia": (-0.3763, 39.4699),  "zaragoza": (-0.8891, 41.6488),
    "barcelona": (2.1734, 41.3851),  "toulouse": (1.4442, 43.6047),
    "bordeaux": (-0.5792, 44.8378),  "nantes": (-1.5536, 47.2184),
    "rennes": (-1.6778, 48.1173),    "paris": (2.3522, 48.8566),
    "lyon": (4.8357, 45.7640),       "marseille": (5.3698, 43.2965),
    "strasbourg": (7.7521, 48.5734), "bruxelles": (4.3517, 50.8503),
    "amsterdam": (4.9041, 52.3676),  "köln": (6.9603, 50.9375),
    "hamburg": (9.9937, 53.5511),    "berlin": (13.4050, 52.5200),
    "leipzig": (12.3731, 51.3397),   "münchen": (11.5820, 48.1351),
    "praha": (14.4378, 50.0755),     "wien": (16.3738, 48.2082),
    "milano": (9.1900, 45.4642),     "torino": (7.6869, 45.0703),
    "venezia": (12.3155, 45.4408),   "roma": (12.4964, 41.9028),
    "napoli": (14.2681, 40.8518),    "bari": (16.8719, 41.1171),
    "palermo": (13.3615, 38.1157),   "london": (-0.1276, 51.5074),
    "cardiff": (-3.1791, 51.4816),   "glasgow": (-4.2518, 55.8642),
    "edinburgh": (-3.1883, 55.9533), "aberdeen": (-2.0943, 57.1497),
    "göteborg": (11.9746, 57.7089),  "stockholm": (18.0686, 59.3293),
    "umeå": (20.2630, 63.8258),      "helsinki": (24.9384, 60.1699),
}

CLUSTER_GAP = 2_000_000  # CARIN units


def dominant_cluster(points):
    pts = sorted(points)
    clusters, cur = [], [pts[0]]
    for p in pts[1:]:
        if p[0] - cur[-1][0] > CLUSTER_GAP:
            clusters.append(cur)
            cur = [p]
        else:
            cur.append(p)
    clusters.append(cur)
    best = max(clusters, key=len)
    return (sum(p[0] for p in best) // len(best),
            sum(p[1] for p in best) // len(best),
            len(best))


def load_anchors(paths):
    merged = {}
    for p in paths:
        if Path(p).exists():
            for k, v in pickle.load(open(p, "rb")).items():
                merged.setdefault(k, []).extend(v)
    return merged


def report(cal, K, Cx, Cy, used, title):
    print(f"\n--- {title} ---")
    print(f"K  = {K:.3f}   (1 unit = {1/K*1e6:.6f} micro-degrees)")
    print(f"Cx = {Cx:.6f} deg    Cy = {Cy:.6f} deg")
    errs = []
    for name, x, y, lon, lat, n in used:
        dlon, dlat = x / K - Cx - lon, y / K - Cy - lat
        km = math.hypot(dlon * 111.32 * math.cos(math.radians(lat)), dlat * 110.57)
        errs.append((km, name, dlon, dlat, n))
    errs.sort(reverse=True)
    rms = math.sqrt(sum(e[0] ** 2 for e in errs) / len(errs))
    print(f"error: max {errs[0][0]:.2f} km ({errs[0][1]}), rms {rms:.2f} km, n={len(errs)}")
    return rms


def main() -> None:
    data = load_anchors(["build/cities.pkl", "build/cities2.pkl"])
    cal = GeographicCalibrator()
    used = []
    for name, (lon, lat) in CITIES.items():
        if name not in data:
            print(f"  [skip] {name}")
            continue
        x, y, n = dominant_cluster(data[name])
        cal.add_anchor(x=x, y=y, lon=lon, lat=lat)
        used.append((name, x, y, lon, lat, n))
    print(f"anchors: {len(used)}")

    res = cal.optimize(initial_guess=(2e9 / 360, 30.0, 0.0))
    K, Cx, Cy = res["K"], res["Cx"], res["Cy"]
    report(cal, K, Cx, Cy, used, "free fit (K, Cx, Cy)")

    # exact-design hypothesis: a full 360 deg turn == 2_000_000_000 units,
    # origin at 30 deg W on the equator
    KE, CXE, CYE = 2e9 / 360, 30.0, 0.0
    report(cal, KE, CXE, CYE, used, "hypothesis  K = 2e9/360, Cx = 30, Cy = 0")

    print(f"\nfree-fit K deviates from 2e9/360 by {100 * (K - KE) / KE:+.4f}%")
    print("per-anchor residuals under the hypothesis:")
    print(f"  {'city':<11}{'d lon':>9}{'d lat':>9}{'km':>7}  hits")
    rows = []
    for name, x, y, lon, lat, n in used:
        dlon, dlat = x / KE - CXE - lon, y / KE - CYE - lat
        rows.append((math.hypot(dlon * 111.32 * math.cos(math.radians(lat)), dlat * 110.57),
                     name, dlon, dlat, n))
    for km, name, dlon, dlat, n in sorted(rows):
        print(f"  {name:<11}{dlon:>9.4f}{dlat:>9.4f}{km:>7.2f}  {n}")


if __name__ == "__main__":
    main()
