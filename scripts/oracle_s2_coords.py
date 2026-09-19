"""Oracle — decode_s2_coords: verifica che i punti ricostruiti siano nel range delta.

Methodologia:
  1. Campiona 10 blocchi 0x0E CF=1 dal DB.
  2. Per ogni blocco:
     - decode_block → decoded  (decoded[7] = M_hi, decoded[6] = M_lo)
     - decode_s2_coords(decoded, table) → lista coord
     - Per ogni record S2 con anchor non-zero e anchor nel bbox degli anchor:
         * Per ogni delta dk con larghezza wk = (16 if dk>thresh else M_hi):
             max_magnitude_k = 32767 se is_16, altrimenti (1 << (M_hi-1))
         * Verifica |pt.x - x_anc| ≤ max_m[0] e |pt.y - y_anc| ≤ max_m[1]
  3. PASS = 0 punti fuori dal range delta per anchor in-bbox.

Uso:
  python3 scripts/oracle_s2_coords.py            # 10 blocchi CF=1 auto-campionati
  python3 scripts/oracle_s2_coords.py --sector S  # settore specifico
  python3 scripts/oracle_s2_coords.py --sample N  # N blocchi (default 10)
"""

from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1                           # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage     # noqa: E402
from cf1_super import layout_table                     # noqa: E402

ISO = "dataset/NAV_DB_21708.ISO"

GREEN = "\x1b[32m"
RED   = "\x1b[31m"
RESET = "\x1b[0m"


def _test_block(vol: CarinVolume, table: dict, dbrel: int,
                sector: int) -> tuple[bool, dict]:
    blk = vol.block(sector)
    info: dict = {"sector": sector}

    if blk.type != 0x0E or blk.comp != 1:
        info["skip"] = f"type={blk.type:#04x} cf={blk.comp}"
        return True, info

    raw = vol.read_sectors(sector, blk.length)

    try:
        decoded = cf1.decode_block(raw, table, dbrel)
    except Exception as exc:
        info["error"] = f"decode_block: {exc}"
        return False, info

    try:
        coords = cf1.decode_s2_coords(decoded, table)
    except Exception as exc:
        info["error"] = f"decode_s2_coords: {exc}"
        return False, info

    base_d = table[cf1.T_DESC_BASE]
    s2_rec = table[cf1.T_REC_S2_0E]
    e2_off, e2_cnt = struct.unpack_from(">HH", decoded, base_d + 8)

    # bbox degli anchor non-zero (i blocchi 0x0E non hanno bbox nel prolog)
    xs: list[int] = []
    ys: list[int] = []
    for j in range(e2_cnt):
        off = e2_off + j * s2_rec
        xa, ya = struct.unpack_from(">ii", decoded, off)
        if xa != 0 or ya != 0:
            xs.append(xa); ys.append(ya)
    if not xs:
        info["skip"] = "no non-zero anchors"
        return True, info
    x0, y0, x1, y1 = min(xs), min(ys), max(xs), max(ys)

    # M_hi dal pre-header (decode_block lo scrive a decoded[7])
    M_hi   = decoded[7] if decoded[7] else 1
    thresh = (1 << M_hi) - 1

    s2_total  = e2_cnt
    sentinel  = sum(1 for c in coords if c is None)
    cross_anc = 0
    in_range  = 0
    out_range = 0

    for i, c in enumerate(coords):
        if c is None:
            continue
        b = e2_off + i * s2_rec
        x_anc, y_anc = struct.unpack_from(">ii", decoded, b)

        if x_anc == 0 and y_anc == 0:
            continue  # zero anchor (idx_N >= count_N)

        anchor_in_bbox = (x0 <= x_anc <= x1) and (y0 <= y_anc <= y1)
        if not anchor_in_bbox:
            cross_anc += 1
            continue

        # max signed magnitude per ciascun campo delta
        d = struct.unpack_from(">HHHH", decoded, b + 8)
        max_m = [32767 if dk > thresh else (1 << (M_hi - 1)) for dk in d]

        (x1p, y1p), (x2p, y2p) = c
        pt1_ok = abs(x1p - x_anc) <= max_m[0] and abs(y1p - y_anc) <= max_m[1]
        pt2_ok = abs(x2p - x_anc) <= max_m[2] and abs(y2p - y_anc) <= max_m[3]
        if pt1_ok and pt2_ok:
            in_range += 1
        else:
            out_range += 1

    ok = out_range == 0
    info.update(
        s2_total=s2_total,
        sentinel=sentinel,
        cross_anc=cross_anc,
        in_range=in_range,
        out_range=out_range,
        M_hi=M_hi,
        bbox=(x0, y0, x1, y1),
    )
    return ok, info


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--sector", "-s", type=lambda x: int(x, 0),
                    nargs="*", dest="sectors", default=None)
    ap.add_argument("--sample", type=int, default=10)
    ap.add_argument("--iso", default=ISO)
    args = ap.parse_args(argv[1:])

    vol   = CarinVolume(IsoImage(args.iso))
    sb    = vol.read_sectors(0, 2)
    table = layout_table(sb)
    dbrel = struct.unpack_from(">H", sb, 0x1A)[0]

    print(f"DB-REL={dbrel}  ISO={args.iso}")
    print("decode_s2_coords delta-range oracle\n")

    if args.sectors:
        test_sectors = args.sectors
    else:
        test_sectors = []
        for blk in vol.walk(0):
            if blk.type == 0x0E and blk.comp == 1:
                test_sectors.append(blk.sector)
                if len(test_sectors) >= args.sample:
                    break

    if not test_sectors:
        print("No 0x0E CF=1 blocks found.")
        return 1

    hdr = (f"{'sector':>10}  {'M_hi':>4}  {'S2':>5}  {'sent':>5}  {'cross':>5}  "
           f"{'in':>5}  {'out':>5}  result")
    print(hdr)
    print("-" * len(hdr))

    passed = 0
    for sec in test_sectors:
        ok, info = _test_block(vol, table, dbrel, sec)

        if info.get("skip"):
            print(f"{sec:>10}  {'–':>4}  {'–':>5}  {'–':>5}  {'–':>5}  "
                  f"{'–':>5}  {'–':>5}  SKIP ({info['skip']})")
            passed += 1
            continue

        if info.get("error"):
            print(f"{sec:>10}  {'?':>4}  {'?':>5}  {'?':>5}  {'?':>5}  "
                  f"{'?':>5}  {'?':>5}  {RED}FAIL{RESET}  ← {info['error']}")
            continue

        tag = f"{GREEN}PASS{RESET}" if ok else f"{RED}FAIL{RESET}"
        extra = f"  ← {info['out_range']} punti fuori range delta" if not ok else ""
        print(f"{sec:>10}  {info['M_hi']:>4}  {info['s2_total']:>5}  {info['sentinel']:>5}  "
              f"{info['cross_anc']:>5}  {info['in_range']:>5}  "
              f"{info['out_range']:>5}  {tag}{extra}")
        passed += int(ok)

    n = len(test_sectors)
    print("-" * len(hdr))
    color = GREEN if passed == n else RED
    print(f"\n{color}{passed}/{n} blocchi PASS (0 punti fuori range delta per anchor in-bbox){RESET}")
    return 0 if passed == n else 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
