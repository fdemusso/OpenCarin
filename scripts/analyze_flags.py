"""Analisi empirica del campo FLAGS nei record S0 di blocchi 0x0E CF=1.

Per ogni FLAGS value {0x00,0x01,0x02,0x10,0x11} estrae la geometria S1→S2
e la esporta come GeoJSON colorato, da sovrapporre a OSM per verifica visiva.

Uso:
    python scripts/analyze_flags.py [--cities N] [--out file.geojson]
    python scripts/analyze_flags.py --stats-only

Output:
    flags_analysis.geojson  — LineString per ogni S2 segment, colorato per FLAGS
    Console: distribuzione FLAGS × B (functional class) × S1.flag
"""

import sys
import struct
import json
import argparse
from collections import defaultdict
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage, to_wgs84, to_carin
from carin.parser import cf1
from scripts.cf1_super import read_super, layout_table, DEFAULT_DB0
from scripts.find_parcel import _get_index

# ── FLAGS → colore per geojson.io ──────────────────────────────────────────
FLAGS_COLOR = {
    0x00: "#2196F3",  # blue   — entrambe le direzioni permesse (ipotesi)
    0x01: "#F44336",  # red    — bit0 set
    0x02: "#4CAF50",  # green  — bit1 set
    0x10: "#FF9800",  # orange — bit4 set
    0x11: "#9C27B0",  # purple — bit0+bit4 set
}

# ── Città italiane con centri storici noti per sensi unici ─────────────────
# (lat, lon, nome)
CITIES = [
    (44.4938, 11.3428, "Bologna"),
    (43.7696, 11.2558, "Firenze"),
    (41.8986, 12.4769, "Roma_centro"),
    (45.4654, 9.1895,  "Milano"),
    (40.8518, 14.2681, "Napoli"),
    (45.0703, 7.6869,  "Torino"),
    (43.3167, 13.4667, "Macerata"),   # piccolo centro storico
    (40.6403, 17.9289, "Brindisi"),
]


def _blocks_near(idx: np.ndarray, cx: int, cy: int,
                 max_blocks: int = 5) -> list[int]:
    """Settori dei `max_blocks` blocchi con centroide più vicino a (cx,cy)."""
    cxs = idx[:, 5].astype(np.int64)
    cys = idx[:, 6].astype(np.int64)
    dist2 = (cxs - cx) ** 2 + (cys - cy) ** 2
    order = np.argsort(dist2)[:max_blocks]
    return [int(idx[i, 0]) for i in order]


def _analyze_block(vol: CarinVolume, sector: int,
                   table: dict, dbrel: int) -> list[dict]:
    """Decoda un blocco 0x0E e restituisce record per ogni S2 segment.

    Returns list of dicts:
      flags, b_class, s1_flag, coords [(lon,lat),…], sector, s0_idx, s2_idx
    """
    blk = vol.block(sector)
    if blk.type != 0x0E:
        return []

    raw = vol.read_sectors(blk.sector, blk.length)
    try:
        decoded = cf1.decode_block(raw, table, dbrel)
    except Exception:
        return []

    base_d = table[cf1.T_DESC_BASE]
    s0_rec = table[cf1.T_REC_S0_0E]   # 8
    s1_rec = table[cf1.T_REC_S1_0E]   # 6
    s2_rec = table[cf1.T_REC_S2_0E]   # 24

    e0_off, e0_cnt = struct.unpack_from(">HH", decoded, base_d + 0)
    e1_off, e1_cnt = struct.unpack_from(">HH", decoded, base_d + 4)
    e2_off, e2_cnt = struct.unpack_from(">HH", decoded, base_d + 8)

    s2_coords = cf1.decode_s2_coords(decoded, table)

    results = []
    for i in range(e0_cnt):
        b0    = e0_off + i * s0_rec
        FLAGS = decoded[b0 + 2]
        B     = decoded[b0 + 3]          # functional class / 0xFF sentinel
        D     = struct.unpack_from(">H", decoded, b0 + 6)[0]

        s1_idx = (D - e1_off) // s1_rec
        if s1_idx >= e1_cnt:
            continue

        b1       = e1_off + s1_idx * s1_rec
        ptr_s2   = struct.unpack_from(">H", decoded, b1)[0]
        span     = decoded[b1 + 2]
        s1_flag  = decoded[b1 + 3]

        s2_start = (ptr_s2 - e2_off) // s2_rec
        if s2_start >= e2_cnt:
            continue

        for j in range(span):
            s2_i = s2_start + j
            if s2_i >= len(s2_coords):
                break
            geom = s2_coords[s2_i]
            if geom is None:
                continue
            (x1, y1), (x2, y2) = geom
            lon1, lat1 = to_wgs84(x1, y1)
            lon2, lat2 = to_wgs84(x2, y2)
            # filtro di sanità geografica: Europa plausibile
            if not (-10 < lon1 < 40 and 35 < lat1 < 72):
                continue
            results.append({
                "flags":   FLAGS,
                "b_class": B,
                "s1_flag": s1_flag,
                "coords":  [[lon1, lat1], [lon2, lat2]],
                "sector":  sector,
                "s0_idx":  i,
                "s2_idx":  s2_i,
            })

    return results


def build_geojson(records: list[dict], city_map: dict[int, str]) -> dict:
    features = []
    for r in records:
        flags = r["flags"]
        color = FLAGS_COLOR.get(flags, "#000000")
        features.append({
            "type": "Feature",
            "properties": {
                "flags":     flags,
                "flags_hex": f"0x{flags:02X}",
                "b_class":   r["b_class"],
                "s1_flag":   r["s1_flag"],
                "city":      city_map.get(r["sector"], "?"),
                "sector":    r["sector"],
                "stroke":    color,
                "stroke-width": 2,
                "stroke-opacity": 0.85,
            },
            "geometry": {
                "type": "LineString",
                "coordinates": r["coords"],
            },
        })
    return {"type": "FeatureCollection", "features": features}


def print_stats(records: list[dict]) -> None:
    # FLAGS × B (functional class)
    flags_b: dict[int, dict[int, int]] = defaultdict(lambda: defaultdict(int))
    flags_s1f: dict[int, dict[int, int]] = defaultdict(lambda: defaultdict(int))
    total = len(records)

    for r in records:
        flags_b[r["flags"]][r["b_class"]] += 1
        flags_s1f[r["flags"]][r["s1_flag"]] += 1

    print(f"\n{'='*60}")
    print(f"Totale segmenti esportati: {total}")
    print(f"{'='*60}")
    print(f"\n{'FLAGS':>8}  {'N':>6}  {'%tot':>6}  B_class più comuni       S1.flag")
    print(f"{'-'*60}")

    for flags in sorted(flags_b.keys()):
        n = sum(flags_b[flags].values())
        pct = 100.0 * n / total if total else 0
        top_b = sorted(flags_b[flags].items(), key=lambda x: -x[1])[:4]
        b_str = "  ".join(
            f"B=0x{b:02X}({cnt})" if b == 0xFF else f"B={b}({cnt})"
            for b, cnt in top_b
        )
        s1f = sorted(flags_s1f[flags].items(), key=lambda x: -x[1])
        s1_str = "  ".join(f"s1f={v}({c})" for v, c in s1f[:3])
        print(f"  0x{flags:02X}    {n:>6}  {pct:>5.1f}%  {b_str}  | {s1_str}")

    # distribuzione per bit
    print(f"\nDecomposizione per bit:")
    bit_counts = defaultdict(int)
    for r in records:
        for bit in (0, 1, 4):
            if r["flags"] & (1 << bit):
                bit_counts[bit] += 1
    for bit in (0, 1, 4):
        n = bit_counts[bit]
        print(f"  bit {bit} set: {n:5d}  ({100.0*n/total:.1f}%)  "
              f"[FLAGS che lo contengono: "
              f"{sorted({f for f in flags_b if f & (1<<bit)})}]")


def main(argv: list[str] | None = None) -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--cities", type=int, default=5,
                    help="Blocchi per città (default 5)")
    ap.add_argument("--out", default="flags_analysis.geojson")
    ap.add_argument("--stats-only", action="store_true",
                    help="Solo statistiche, nessun GeoJSON")
    args = ap.parse_args(argv)

    vol   = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
    sb    = read_super("dataset/NAV_DB_21708.ISO", DEFAULT_DB0)
    table = layout_table(sb)
    dbrel = vol.db_rel

    print(f"DB-REL: {dbrel}")
    idx = _get_index(vol)
    print(f"Indice spaziale: {len(idx)} blocchi 0x0E")

    all_records: list[dict] = []
    city_map: dict[int, str] = {}

    for lat, lon, city in CITIES:
        cx, cy   = to_carin(lon, lat)
        sectors  = _blocks_near(idx, cx, cy, max_blocks=args.cities)
        city_recs = 0
        for sec in sectors:
            recs = _analyze_block(vol, sec, table, dbrel)
            for r in recs:
                city_map[sec] = city
            all_records.extend(recs)
            city_recs += len(recs)
        flags_here = {r["flags"] for r in all_records if city_map.get(r["sector"]) == city}
        print(f"  {city:<15} {len(sectors)} blocchi -> {city_recs:5d} segmenti  "
              f"FLAGS: {sorted(flags_here)}")

    print_stats(all_records)

    if not args.stats_only:
        gj = build_geojson(all_records, city_map)
        out = Path(args.out)
        out.write_text(json.dumps(gj, separators=(",", ":")))
        print(f"\nGeoJSON scritto: {out}  ({out.stat().st_size // 1024} KB)")
        print("Apri su https://geojson.io per sovrapporre a OSM.")
        print("Legenda colori:")
        for f, c in sorted(FLAGS_COLOR.items()):
            print(f"  0x{f:02X} -> {c}")


if __name__ == "__main__":
    main()
