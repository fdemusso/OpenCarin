"""Oracle — find_parcel(vol, X, Y) -> sector.

Samples 10 0x0E blocks, computes the centroid of their S2 anchor coordinates,
then verifies that find_parcel returns the same sector.

Usage
-----
    python3 scripts/oracle_find_parcel.py [--rebuild]

    --rebuild   Force rebuild of the spatial index (ignore cache).

Methodology (template)
----------------------
Per ogni blocco campione:
  Campo        Fonte                              Metodo               Stato
  sector       vol.walk() (tipo 0x0E)             diretta              VERIFIED
  cx, cy       S2 x_anc/y_anc (media)             calcolo su dati      VERIFIED
  find_parcel  scripts/find_parcel.py             call + assert        ←questo oracle
"""

from __future__ import annotations

import argparse
import struct
import sys
import zlib
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1
from carin.parser.iso import CarinVolume, IsoImage, K, LON_ORIGIN
from find_parcel import find_parcel, _bbox_from_raw, _CACHE

ISO  = "dataset/NAV_DB_21708.ISO"
N    = 10   # blocchi da campionare

GREEN  = "\x1b[32m"; RED = "\x1b[31m"; YELLOW = "\x1b[33m"; RESET = "\x1b[0m"


def _pf(ok: bool | None, label: str, detail: str = "") -> None:
    tag   = {True: f"{GREEN}PASS{RESET}", False: f"{RED}FAIL{RESET}",
             None: f"{YELLOW}WARN{RESET}"}[ok]
    suf   = f"  ({detail})" if detail else ""
    print(f"  [{tag}] {label}{suf}")


def centroid_of_block(raw: bytes, comp: int,
                      table: dict, dbrel: int) -> tuple[int, int] | None:
    """Compute (cx, cy) from S2 anchor coordinates of a 0x0E block."""
    try:
        if comp == 2:
            data = raw[:8] + zlib.decompress(raw[8:])
        elif comp == 1:
            data = cf1.decode_block(raw, table, dbrel)
        else:
            data = raw
    except Exception as exc:
        print(f"    decode error: {exc}")
        return None

    base_d  = table[cf1.T_DESC_BASE]
    e2_off, e2_cnt = struct.unpack_from(">HH", data, base_d + 8)
    s2_rec  = table[cf1.T_REC_S2_0E]

    xs, ys = [], []
    for j in range(e2_cnt):
        off = e2_off + j * s2_rec
        if off + 8 > len(data):
            break
        x_anc, y_anc = struct.unpack_from(">ii", data, off)
        if x_anc != 0 or y_anc != 0:
            xs.append(x_anc)
            ys.append(y_anc)

    if not xs:
        return None
    return sum(xs) // len(xs), sum(ys) // len(ys)


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--rebuild", action="store_true",
                    help="Force rebuild of the spatial index")
    ap.add_argument("--iso", default=ISO)
    ap.add_argument("--n", type=int, default=N)
    args = ap.parse_args(argv[1:])

    if args.rebuild and _CACHE.exists():
        _CACHE.unlink()
        print(f"Cache rimossa: {_CACHE}")

    vol    = CarinVolume(IsoImage(args.iso))
    table  = vol.layout
    dbrel  = vol.db_rel
    print(f"DB-REL={dbrel}  ISO={args.iso}\n")

    # Raccoglie N blocchi 0x0E equidistanti
    # skip: every ~7425th block
    target_sectors: list[int] = []
    skip = max(1, 74247 // args.n)
    seen = 0
    for blk in vol.walk():
        if blk.type != 0x0E:
            continue
        if seen % skip == 0 and len(target_sectors) < args.n:
            target_sectors.append(blk.sector)
        seen += 1
        if len(target_sectors) >= args.n:
            break

    print(f"=== Oracle find_parcel: {len(target_sectors)} blocchi campione ===\n")

    all_pass = 0
    for sector in target_sectors:
        blk  = vol.block(sector)
        raw  = vol.read_sectors(sector, blk.length)
        print(f"--- settore {sector}  cf={blk.comp}  len={blk.length} ---")

        res  = centroid_of_block(raw, blk.comp, table, dbrel)
        if res is None:
            _pf(None, "centroide S2", "nessuna ancora non-zero — saltato")
            continue
        cx, cy = res
        lon = cx / K + LON_ORIGIN
        lat = cy / K
        print(f"    centroide: cx={cx}  cy={cy}  ({lon:.3f}°E, {lat:.3f}°N)")

        found = find_parcel(vol, cx, cy)
        ok    = found == sector
        _pf(ok, f"find_parcel(cx,cy) == {sector}",
            f"returned {found}" if not ok else f"sector={found}")
        if ok:
            all_pass += 1

    print(f"\n{'='*60}")
    n = len(target_sectors)
    color = GREEN if all_pass == n else RED
    print(f"{color}{all_pass}/{n} blocchi: find_parcel corretto{RESET}")
    return 0 if all_pass == n else 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
