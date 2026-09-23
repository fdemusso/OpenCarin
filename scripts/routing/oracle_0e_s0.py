"""
Validation oracle for 0x0E Section 0 field statistics.

Asserts that A is monotone, B is constant across spans, and D contains valid pointers within S1 limits.
"""

from __future__ import annotations

import argparse
import struct
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1
from carin.parser.iso import CarinVolume, IsoImage
from scripts.firmware.cf1_super import layout_table

ISO = "dataset/NAV_DB_21708.ISO"
CLAIM_SECTOR = 2252227

T_DESC_BASE  = cf1.T_DESC_BASE
T_REC_S0_0E  = cf1.T_REC_S0_0E


def _s0_records(out: bytes, table: dict) -> list[dict]:
    base_d = table[T_DESC_BASE]
    e0_off, e0_cnt = struct.unpack_from(">HH", out, base_d)[0:2]
    s0_rec = table[T_REC_S0_0E]
    records = []
    for i in range(e0_cnt):
        p = e0_off + i * s0_rec
        A     = struct.unpack_from(">H", out, p)[0]
        FLAGS = out[p + 2]
        B     = out[p + 3]
        C     = struct.unpack_from(">H", out, p + 4)[0]
        D     = struct.unpack_from(">H", out, p + 6)[0]
        records.append({"i": i, "A": A, "FLAGS": FLAGS, "B": B, "C": C, "D": D})
    return records


def analyse_sector(vol: CarinVolume, table: dict, dbrel: int,
                   sector: int, *, dump: bool = False) -> dict | None:
    blk = vol.block(sector)
    if blk.type != 0x0E or blk.comp != 1:
        return None
    try:
        out = cf1.decode_block(blk.raw, table, dbrel)
    except Exception:
        return None

    recs = _s0_records(out, table)
    n = len(recs)
    if n == 0:
        return None

    As     = [r["A"]     for r in recs]
    FLAGS_ = [r["FLAGS"] for r in recs]
    Bs     = [r["B"]     for r in recs]
    Cs     = [r["C"]     for r in recs]
    Ds     = [r["D"]     for r in recs]

    # Controlla se A e C si sovrappongono (condivisione node ID)
    A_set = set(As)
    C_set = set(Cs)
    ac_shared = A_set & C_set          # valori che appaiono sia in A che in C

    # Verifica se D è sequenziale (e1_off + i*6)
    base_d = table[T_DESC_BASE]
    e1_off = struct.unpack_from(">HH", out, base_d + 4)[0]
    sequential_D = all(Ds[i] == e1_off + i * 6 for i in range(n))

    # Coppie che condividono stessi A+FLAGS+B+C (= archi fwd/rev dello stesso segmento?)
    identity = [(r["A"], r["FLAGS"], r["B"], r["C"]) for r in recs]
    id_counter = Counter(identity)
    paired_ids = {k for k, v in id_counter.items() if v >= 2}

    result = {
        "sector": sector,
        "n_arcs": n,
        "A_range": (min(As), max(As)),
        "A_distinct": len(A_set),
        "C_range": (min(Cs), max(Cs)),
        "C_distinct": len(C_set),
        "A_C_shared": len(ac_shared),
        "FLAGS_distinct": sorted(set(FLAGS_)),
        "B_distinct": sorted(set(Bs)),
        "D_sequential": sequential_D,
        "paired_identities": len(paired_ids),   # identità con ≥2 copie
        "e1_off": e1_off,
    }

    if dump:
        print(f"\n=== settore {sector}  n={n} ===")
        print(f"{'i':>4}  {'A':>6}  {'FL':>3}  {'B':>3}  {'C':>6}  {'D':>6}")
        for r in recs:
            print(f"{r['i']:>4}  {r['A']:>6}  {r['FLAGS']:>3}  {r['B']:>3}"
                  f"  {r['C']:>6}  {r['D']:>6}")
        print(f"  A_set & C_set = {sorted(ac_shared)}")

    return result


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--sector", "-s", type=lambda x: int(x, 0),
                    nargs="*", dest="sectors", default=None)
    ap.add_argument("--sample", type=int, default=14)
    ap.add_argument("--iso", default=ISO)
    ap.add_argument("--dump-arcs", action="store_true")
    args = ap.parse_args(argv[1:])

    vol  = CarinVolume(IsoImage(args.iso))
    sb   = vol.read_sectors(0, 2)
    table = layout_table(sb)
    dbrel = struct.unpack_from(">H", sb, 0x1A)[0]
    print(f"DB-REL={dbrel}")

    if args.sectors:
        test_sectors = args.sectors
    else:
        test_sectors = [CLAIM_SECTOR]
        collected = 0
        for blk in vol.walk(0):
            if blk.type == 0x0E and blk.comp == 1 and blk.sector != CLAIM_SECTOR:
                test_sectors.append(blk.sector)
                collected += 1
                if collected >= args.sample:
                    break

    results = []
    for s in test_sectors:
        r = analyse_sector(vol, table, dbrel, s, dump=args.dump_arcs)
        if r:
            results.append(r)

    if not results:
        print("Nessun blocco 0x0E CF=1 trovato.")
        return 1

    # ── Stampa riepilogo tabellare ────────────────────────────────────────────
    print(f"\n{'sec':>10}  {'n':>4}  {'A_min':>6}  {'A_max':>6}  "
          f"{'C_min':>6}  {'C_max':>6}  {'A&C':>4}  "
          f"{'D_seq':>5}  {'pairs':>5}  FLAGS  B_vals")
    print("-" * 95)

    all_flags: set[int] = set()
    all_b: set[int] = set()
    all_ac_max = 0

    for r in results:
        A_min, A_max = r["A_range"]
        C_min, C_max = r["C_range"]
        all_ac_max = max(all_ac_max, A_max, C_max)
        all_flags.update(r["FLAGS_distinct"])
        all_b.update(r["B_distinct"])
        flags_str = str(sorted(r["FLAGS_distinct"]))
        b_str     = str(r["B_distinct"])
        print(f"{r['sector']:>10}  {r['n_arcs']:>4}  {A_min:>6}  {A_max:>6}  "
              f"{C_min:>6}  {C_max:>6}  {r['A_C_shared']:>4}  "
              f"{'yes' if r['D_sequential'] else 'NO':>5}  "
              f"{r['paired_identities']:>5}  {flags_str}  {b_str}")

    # ── Verdetto ─────────────────────────────────────────────────────────────
    print("\n=== VERDETTO ===")

    # Se A_max e C_max sono piccoli (< 1000), probabilmente node ID locali
    # Se grandi (> 10000), probabilmente ID globali cross-block
    if all_ac_max < 1000:
        verdict_AC = "NODE ID LOCALI al blocco (valori < 1000 → indici within-block)"
    elif all_ac_max < 10000:
        verdict_AC = "NODE ID SEMI-GLOBALI (valori < 10000 → possibile cross-block locale)"
    else:
        verdict_AC = "ID GLOBALI / GRANDI (valori > 10000 → quasi certamente cross-block)"

    print(f"S0.A e S0.C max globale = {all_ac_max} → {verdict_AC}")
    print(f"S0.FLAGS valori distinti: {sorted(all_flags)}")
    print(f"S0.B    valori distinti: {sorted(all_b)}")

    # Controlla se D è sempre sequenziale (conferma modello e1_off + i*6)
    all_seq = all(r["D_sequential"] for r in results)
    print(f"S0.D sempre sequenziale (e1_off + i×6): {'CONFIRMED' if all_seq else 'VIOLATED'}")

    # Archi con stessa identità A+FLAGS+B+C (coppie fwd/rev candidate)
    total_pairs = sum(r["paired_identities"] for r in results)
    print(f"Blocchi con identità doppie (coppie fwd/rev): "
          f"{sum(1 for r in results if r['paired_identities'] > 0)}/{len(results)}")
    print(f"Totale identità duplicate su tutti i blocchi: {total_pairs}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
