"""Twin-arc analysis: verifica ipotesi FLAGS bit4 = senso unico in blocchi 0x0E CF=1.

Logica: se bit4 = senso unico, allora:
  - archi FLAGS=0x00 (bidirezionale) devono comparire a coppie (A->B e B->A)
  - archi FLAGS=0x10 (senso unico) NON devono avere un gemello invertito

Test 1 — within-block: gemello cercato nello STESSO blocco.
Test 2 — cross-block: gemello cercato in TUTTI i blocchi del campione regionale.

Arco = percorso S0 -> S1 -> S2(span). Endpoint: p1 = inizio, p2 = fine.
Tolleranza gemello: 500 unita CARiN (~9 m).

Uso:
    python scripts/test_twin_arcs.py [--blocks N] [--tol T]
"""

import sys
import struct
import argparse
from collections import defaultdict
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage, to_carin
from carin.parser import cf1
from scripts.cf1_super import read_super, layout_table, DEFAULT_DB0
from scripts.find_parcel import _get_index
from scripts.analyze_flags import _blocks_near

DEFAULT_TOL = 500   # CARiN units ~9 m

# Europe bounding box in CARiN absolute coordinates
# K = 2_000_000_000/360 ~ 5_555_555  ; X=(lon+30)*K, Y=lat*K
_XMIN, _XMAX = 100_000_000, 450_000_000   # lon -12 to 51 °E
_YMIN, _YMAX = 100_000_000, 450_000_000   # lat 18 to 81 °N

FIXED_SECTORS = [2252227, 1114731]  # Modugno/Puglia, Roma centro

REGIONAL_CITIES = [
    (44.4938, 11.3428, "Bologna"),
    (45.0703, 7.6869,  "Torino"),
]

EXTRA_CITIES = [
    (41.8986, 12.4769, "Roma_centro"),
    (40.8518, 14.2681, "Napoli"),
    (43.7696, 11.2558, "Firenze"),
]


def _valid(x: int, y: int) -> bool:
    return _XMIN <= x <= _XMAX and _YMIN <= y <= _YMAX


def decode_arcs(vol: CarinVolume, sector: int,
                table: dict, dbrel: int,
                span1_only: bool = False) -> list[tuple]:
    """Restituisce (FLAGS, (x1,y1), (x2,y2), sector) per ogni arco del blocco.

    p1 = inizio del primo S2 record dell'arco;
    p2 = fine dell'ultimo S2 record (gestisce span>1).
    Coordinate invalide (zero-anchor) vengono scartate.
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
    s0_rec = table[cf1.T_REC_S0_0E]
    s1_rec = table[cf1.T_REC_S1_0E]
    s2_rec = table[cf1.T_REC_S2_0E]

    e0_off, e0_cnt = struct.unpack_from(">HH", decoded, base_d + 0)
    e1_off, e1_cnt = struct.unpack_from(">HH", decoded, base_d + 4)
    e2_off, e2_cnt = struct.unpack_from(">HH", decoded, base_d + 8)

    s2_coords = cf1.decode_s2_coords(decoded, table)

    arcs: list[tuple] = []
    for i in range(e0_cnt):
        b0    = e0_off + i * s0_rec
        FLAGS = decoded[b0 + 2]
        D     = struct.unpack_from(">H", decoded, b0 + 6)[0]

        s1_idx = (D - e1_off) // s1_rec
        if s1_idx >= e1_cnt:
            continue

        b1     = e1_off + s1_idx * s1_rec
        ptr_s2 = struct.unpack_from(">H", decoded, b1)[0]
        span   = decoded[b1 + 2]

        if span1_only and span != 1:
            continue

        s2_start = (ptr_s2 - e2_off) // s2_rec

        # first valid p1
        p1 = None
        for j in range(span):
            si = s2_start + j
            if si >= len(s2_coords) or s2_coords[si] is None:
                break
            cand = s2_coords[si][0]
            if _valid(*cand):
                p1 = cand
                break
        if p1 is None:
            continue

        # last valid p2
        p2 = None
        for j in range(span - 1, -1, -1):
            si = s2_start + j
            if si >= len(s2_coords) or s2_coords[si] is None:
                continue
            cand = s2_coords[si][1]
            if _valid(*cand):
                p2 = cand
                break
        if p2 is None:
            continue

        arcs.append((FLAGS, p1, p2, sector))

    return arcs


def _build_p1_index(arcs: list[tuple], tol: int) -> dict:
    """Indice spaziale a bucket sulle coordinate p1."""
    idx: dict[tuple, list[int]] = defaultdict(list)
    for i, (_, (x1, y1), _, _) in enumerate(arcs):
        idx[(x1 // tol, y1 // tol)].append(i)
    return idx


def _find_twins(arcs: list[tuple], tol: int,
                same_block: bool = False) -> dict[int, dict[str, int]]:
    """Per ogni FLAGS: conta archi con gemello invertito (twin) / senza (orphan).

    Se same_block=True, il gemello deve appartenere allo stesso settore.
    """
    by_p1 = _build_p1_index(arcs, tol)
    stats: dict[int, dict[str, int]] = {}

    for i, (FLAGS, (x1, y1), (x2, y2), sec_i) in enumerate(arcs):
        if FLAGS not in stats:
            stats[FLAGS] = {"twin": 0, "orphan": 0, "total": 0}
        stats[FLAGS]["total"] += 1

        bx, by = x2 // tol, y2 // tol
        found = False
        for dbx in (-1, 0, 1):
            if found:
                break
            for dby in (-1, 0, 1):
                for j in by_p1.get((bx + dbx, by + dby), []):
                    if j == i:
                        continue
                    _, (ax1, ay1), (ax2, ay2), sec_j = arcs[j]
                    if same_block and sec_j != sec_i:
                        continue
                    if (abs(ax1 - x2) <= tol and abs(ay1 - y2) <= tol and
                            abs(ax2 - x1) <= tol and abs(ay2 - y1) <= tol):
                        found = True
                        break
                if found:
                    break

        if found:
            stats[FLAGS]["twin"] += 1
        else:
            stats[FLAGS]["orphan"] += 1

    return stats


def _merge(a: dict, b: dict) -> dict:
    out = {f: dict(d) for f, d in a.items()}
    for f, d in b.items():
        if f not in out:
            out[f] = {"twin": 0, "orphan": 0, "total": 0}
        for k, v in d.items():
            out[f][k] += v
    return out


def _print_stats(stats: dict, label: str) -> dict[int, float]:
    print(f"\n{'='*70}")
    print(label)
    print(f"{'='*70}")
    print(f"{'FLAGS':>8}  {'twin':>7}  {'orfano':>7}  {'tot':>7}  "
          f"{'%twin':>7}  {'%orf':>6}")
    print("-" * 70)
    pct_twin: dict[int, float] = {}
    for flags in sorted(stats):
        d = stats[flags]
        if d["total"] == 0:
            continue
        pt = 100.0 * d["twin"] / d["total"]
        po = 100.0 * d["orphan"] / d["total"]
        pct_twin[flags] = pt
        print(f"  0x{flags:02X}    {d['twin']:>7}  {d['orphan']:>7}  {d['total']:>7}  "
              f"{pt:>6.1f}%  {po:>5.1f}%")
    return pct_twin


def _verdict(pct_twin: dict, global_stats: dict, label: str) -> str:
    pt00 = pct_twin.get(0x00, 0.0)
    pt10 = pct_twin.get(0x10, 0.0)
    delta = pt00 - pt10
    n00 = global_stats.get(0x00, {}).get("total", 0)
    n10 = global_stats.get(0x10, {}).get("total", 0)

    print(f"\n[{label}]")
    print(f"  0x00 twin rate: {pt00:.1f}%  (n={n00})")
    print(f"  0x10 twin rate: {pt10:.1f}%  (n={n10})")
    print(f"  delta: {delta:+.1f}%")

    if n00 < 50 or n10 < 50:
        v = "INCONCLUDENTE — campione troppo piccolo per 0x00 o 0x10"
    elif delta >= 40:
        v = "CONFERMATO — FLAGS bit4 = senso unico"
    elif abs(delta) <= 5:
        v = "SMENTITO — delta ~0%: archi non stored come coppie in questo scope"
    elif delta <= -20:
        v = "SMENTITO — nessuna differenza di twin rate tra 0x00 e 0x10"
    else:
        v = f"INCONCLUDENTE — delta {delta:+.1f}% non sufficiente (soglia 40%)"
    print(f"  >>> {v} <<<")
    return v


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--blocks", type=int, default=5,
                    help="blocchi per citta (default 5)")
    ap.add_argument("--regional-blocks", type=int, default=20,
                    help="blocchi per analisi cross-block (default 20)")
    ap.add_argument("--tol", type=int, default=DEFAULT_TOL,
                    help=f"tolleranza gemello in unita CARiN (default {DEFAULT_TOL})")
    args = ap.parse_args(argv)

    vol   = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
    sb    = read_super("dataset/NAV_DB_21708.ISO", DEFAULT_DB0)
    table = layout_table(sb)
    dbrel = vol.db_rel

    print(f"DB-REL: {dbrel}  tolleranza: {args.tol} CARiN (~{args.tol / 55.6:.0f} m)")
    idx = _get_index(vol)
    print(f"Indice spaziale: {len(idx)} blocchi 0x0E\n")

    # ── TEST 1: within-block ─────────────────────────────────────────────────
    print("TEST 1 — within-block (gemello nello stesso blocco)")
    print("=" * 70)

    seen: set[int] = set()
    sectors: list[tuple[int, str]] = []
    for s in FIXED_SECTORS:
        if s not in seen:
            seen.add(s)
            sectors.append((s, f"fixed_{s}"))
    for lat, lon, city in REGIONAL_CITIES + EXTRA_CITIES:
        cx, cy = to_carin(lon, lat)
        for s in _blocks_near(idx, cx, cy, max_blocks=args.blocks):
            if s not in seen:
                seen.add(s)
                sectors.append((s, city))

    print(f"Campione: {len(sectors)} blocchi")
    print("-" * 70)

    wb_stats: dict[int, dict[str, int]] = {}
    all_arcs_global: list[tuple] = []

    for sector, label in sectors:
        arcs = decode_arcs(vol, sector, table, dbrel)
        all_arcs_global.extend(arcs)
        if not arcs:
            print(f"  {label:<22} {sector:>10}  [skip — CF=0 o nessun arco valido]")
            continue

        bstats = _find_twins(arcs, args.tol, same_block=True)
        wb_stats = _merge(wb_stats, bstats)

        parts = []
        for f in sorted(bstats):
            d = bstats[f]
            if d["total"] == 0:
                continue
            pt = 100.0 * d["twin"] / d["total"]
            parts.append(f"0x{f:02X}:{d['twin']}/{d['total']}({pt:.0f}%tw)")
        print(f"  {label:<22} {sector:>10}  {len(arcs):>5} archi  {'  '.join(parts)}")

    pct1 = _print_stats(wb_stats, "RISULTATO TEST 1 — within-block")
    v1 = _verdict(pct1, wb_stats, "TEST 1")

    # ── TEST 2: cross-block (regionale) ─────────────────────────────────────
    print(f"\n\nTEST 2 — cross-block (gemello in qualsiasi blocco del campione regionale)")
    print("=" * 70)

    # Raccoglie piu blocchi per due citta regionali (Bologna + Torino)
    regional_sectors: set[int] = set()
    for lat, lon, city in REGIONAL_CITIES:
        cx, cy = to_carin(lon, lat)
        for s in _blocks_near(idx, cx, cy, max_blocks=args.regional_blocks):
            regional_sectors.add(s)

    print(f"Blocchi regionali (Bologna + Torino, top {args.regional_blocks} each): "
          f"{len(regional_sectors)}")

    regional_arcs: list[tuple] = []
    ok = skip = 0
    for s in regional_sectors:
        a = decode_arcs(vol, s, table, dbrel)
        if a:
            regional_arcs.extend(a)
            ok += 1
        else:
            skip += 1

    print(f"Blocchi decodificati: {ok}, skip: {skip}")
    print(f"Archi totali (con coord. valide): {len(regional_arcs)}")
    print("-" * 70)

    if len(regional_arcs) > 0:
        cb_stats = _find_twins(regional_arcs, args.tol, same_block=False)
        pct2 = _print_stats(cb_stats, "RISULTATO TEST 2 — cross-block")
        v2 = _verdict(pct2, cb_stats, "TEST 2")
    else:
        v2 = "INCONCLUDENTE — nessun arco regionale"

    # ── Conclusione finale ───────────────────────────────────────────────────
    print(f"\n{'='*70}")
    print("CONCLUSIONE FINALE")
    print(f"{'='*70}")
    print(f"  Test 1 (within-block): {v1}")
    print(f"  Test 2 (cross-block):  {v2}")
    print()

    # Verdetto sintetico
    p00_1 = pct1.get(0x00, 0.0)
    p10_1 = pct1.get(0x10, 0.0)
    if abs(p00_1 - p10_1) <= 5:
        print("  Interpretazione: archi NON stored come coppie (ne within ne cross-block).")
        print("  La semantica 'bit4=senso unico' rimane plausibile come flag di routing,")
        print("  ma il modello 'paired arcs' e SMENTITO — ogni segmento e stored UNA volta.")
        final = "SMENTITO (modello paired arcs); semantica bit4 richiede altra verifica"
    else:
        final = f"vedi verdetti Test1/Test2"

    print(f"\n>>> {final} <<<\n")


if __name__ == "__main__":
    main()
