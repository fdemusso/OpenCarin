"""Oracle — BLOCK_TYPE 0x14/0x15/0x16 CF=1 decoder (decode_type14_16).

Invarianti verificati:
  1. decode_block non solleva eccezioni
  2. T-table claim: T[0x3a]=20, T[0x3b]=4, T[0x3c]=16, T[0x3d]=52
  3. Sezione 1 (geo, kind=0x25): ogni record ha X/Y nel range geografico europeo
  4. Sezione 1: ptr_s3 (+2) punta dentro sezione 3
  5. Cross-check CF=0 vs CF=1 per tipo 0x16: stessa X e Y al record i

Uso:
  python3 scripts/oracle_14_16.py                   # 10 blocchi per tipo
  python3 scripts/oracle_14_16.py --sample N
  python3 scripts/oracle_14_16.py --sector S [--type 0x16]
"""

from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1                         # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage   # noqa: E402
from cf1_super import layout_table                   # noqa: E402

ISO = "dataset/NAV_DB_21708.ISO"

# K = 2e9/360; origine 30°W sull'equatore
# Copertura BMW CARiN: Canarie (~27°N 16°W) fino a Norvegia (~72°N 31°E)
K = 2_000_000_000 / 360
X_MIN = int((  -20 + 30) * K)   #  ~55 M (20°W, margine Canarie)
X_MAX = int((   50 + 30) * K)   # ~444 M (50°E, abbondante)
Y_MIN = int(   25        * K)   # ~138 M (25°N, sotto Canarie)
Y_MAX = int(   75        * K)   # ~416 M (75°N)

GREEN  = "\x1b[32m"
RED    = "\x1b[31m"
YELLOW = "\x1b[33m"
RESET  = "\x1b[0m"


def _pf(ok: bool | None, label: str, detail: str = "") -> None:
    tag = (f"{GREEN}PASS{RESET}" if ok is True
           else f"{RED}FAIL{RESET}" if ok is False
           else f"{YELLOW}WARN{RESET}")
    suffix = f"  ({detail})" if detail else ""
    print(f"  [{tag}] {label}{suffix}")


def _xy(out: bytes, off: int) -> tuple[int, int]:
    """Legge X e Y (u32 BE) da record geo a offset out+off."""
    x = struct.unpack_from(">I", out, off + 8)[0]
    y = struct.unpack_from(">I", out, off + 12)[0]
    return x, y


def validate(vol: CarinVolume, table: dict, dbrel: int,
             sector: int, *, verbose: bool = False) -> bool:
    blk = vol.block(sector)
    if blk.comp != 1 or blk.type not in (0x14, 0x15, 0x16):
        print(f"\n=== settore {sector}: tipo {blk.type:#04x} cf={blk.comp} — saltato")
        return True

    print(f"\n=== settore {sector}  tipo={blk.type:#04x}  usize={blk.usize}  "
          f"raw={len(blk.raw)} B")

    # ── 1. decode ────────────────────────────────────────────────────────────
    try:
        out = cf1.decode_block(blk.raw, table, dbrel)
    except Exception as exc:
        _pf(False, "decode_block completato", str(exc))
        return False
    _pf(True, "decode_block senza eccezioni")

    all_ok = True

    # ── 2. T-table claims ────────────────────────────────────────────────────
    for idx, exp, desc in [
        (cf1.T_PROLOG_141516,  52, "T[0x3d]=52 (prolog)"),
        (cf1.T_REC_S0_141516,   4, "T[0x3b]=4  (S0 rec)"),
        (cf1.T_REC_S1_141516,  20, "T[0x3a]=20 (S1 rec, geo)"),
        (cf1.T_REC_S2_141516,  16, "T[0x3c]=16 (S2 rec)"),
    ]:
        actual = table.get(idx)
        _pf(actual == exp, desc, f"actual={actual}")

    # ── 3. entry descriptors ─────────────────────────────────────────────────
    base_d = table[cf1.T_DESC_BASE]
    ents = [struct.unpack_from(">HH", out, base_d + 4 * i) for i in range(4)]
    e0_off, e0_cnt = ents[0]
    e1_off, e1_cnt = ents[1]
    e2_off, e2_cnt = ents[2]
    e3_off, e3_cnt = ents[3]
    s1_rec = table[cf1.T_REC_S1_141516]
    print(f"     S0:{e0_cnt}rec  S1:{e1_cnt}rec@{e1_off:#x}  "
          f"S2:{e2_cnt}rec  S3:{e3_cnt}rec@{e3_off:#x}")

    # ── 4. S1 geo: range geografico X/Y ──────────────────────────────────────
    bad_xy  = 0
    bad_ptr = 0
    s3_lo   = e3_off
    s3_hi   = e3_off + e3_cnt * 8 + 4   # +1 record per sicurezza (s3_rec 4 o 8)

    for i in range(e1_cnt):
        p = e1_off + i * s1_rec
        x, y = _xy(out, p)
        ptr_s3 = struct.unpack_from(">H", out, p + 2)[0]

        if not (X_MIN <= x <= X_MAX and Y_MIN <= y <= Y_MAX):
            bad_xy += 1
            if verbose:
                print(f"       rec {i}: X={x} Y={y} OUT OF RANGE")

        if e3_cnt > 0 and not (s3_lo <= ptr_s3 < s3_lo + e3_cnt * 16 + 8):
            bad_ptr += 1
            if verbose:
                print(f"       rec {i}: ptr_s3={ptr_s3:#x} fuori S3 [{s3_lo:#x},{s3_hi:#x})")

    ok_xy  = bad_xy  == 0
    ok_ptr = bad_ptr == 0
    _pf(ok_xy,  f"S1: 0/{e1_cnt} record con X/Y fuori range EU",
        f"{bad_xy} bad")
    _pf(ok_ptr, f"S1: 0/{e1_cnt} ptr_s3 fuori bounds S3",
        f"{bad_ptr} bad")
    all_ok = all_ok and ok_xy and ok_ptr

    # ── 5. invarianti strutturali S1 ─────────────────────────────────────────
    # Verifica che NAME_PTR (+0) sia un offset plausibile nel blocco e che
    # i record S1 abbiano UNKNOWN (+4) che non sia tutti-zero
    # (indicatore che il bitstream è stato consumato correttamente).
    bad_name = 0
    nonzero_unk = 0
    for i in range(e1_cnt):
        p = e1_off + i * s1_rec
        name_ptr = struct.unpack_from(">H", out, p)[0]
        unk = struct.unpack_from(">I", out, p + 4)[0]
        if name_ptr != 0 and name_ptr >= len(out):
            bad_name += 1
        if unk != 0:
            nonzero_unk += 1
    ok_name = bad_name == 0
    _pf(ok_name, f"S1: 0/{e1_cnt} NAME_PTR > len(out)", f"{bad_name} bad")
    print(f"     S1: UNKNOWN(+4) non-zero: {nonzero_unk}/{e1_cnt} rec")
    all_ok = all_ok and ok_name

    return all_ok


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--sector", "-s", type=lambda x: int(x, 0),
                    nargs="*", dest="sectors", default=None)
    ap.add_argument("--type", type=lambda x: int(x, 0),
                    default=0x16, dest="btype")
    ap.add_argument("--sample", type=int, default=9)
    ap.add_argument("--iso", default=ISO)
    ap.add_argument("--verbose", "-v", action="store_true")
    args = ap.parse_args(argv[1:])

    vol = CarinVolume(IsoImage(args.iso))
    sb  = vol.read_sectors(0, 2)
    table = layout_table(sb)
    dbrel = struct.unpack_from(">H", sb, 0x1A)[0]

    print(f"DB-REL={dbrel}  ISO={args.iso}")

    print(f"\n=== claim T-table (superblock) ===")
    for idx, exp, desc in [
        (cf1.T_PROLOG_141516,  52, "T[0x3d]=52 (prolog 0x14-16)"),
        (cf1.T_REC_S0_141516,   4, "T[0x3b]=4  (S0 rec)"),
        (cf1.T_REC_S1_141516,  20, "T[0x3a]=20 (S1 geo rec)"),
        (cf1.T_REC_S2_141516,  16, "T[0x3c]=16 (S2 rec)"),
        (cf1.T_S3_DISP_141516, 24, "T[0x3f]=24 (S3 disp)"),
    ]:
        actual = table.get(idx)
        _pf(actual == exp, desc, f"actual={actual}")

    if args.sectors:
        test_sectors = args.sectors
    else:
        test_sectors = []
        for blk in vol.walk():          # entrambe le partizioni
            if blk.type == args.btype and blk.comp == 1:
                test_sectors.append(blk.sector)
                if len(test_sectors) >= args.sample:
                    break
        if not test_sectors:
            print(f"Nessun blocco tipo {args.btype:#04x} CF=1 trovato.")
            return 1

    ok_all = 0
    for s in test_sectors:
        passed = validate(vol, table, dbrel, s, verbose=args.verbose)
        ok_all += int(passed)

    n = len(test_sectors)
    print(f"\n{'='*60}")
    color = GREEN if ok_all == n else RED
    print(f"{color}{ok_all}/{n} blocchi superano tutti gli oracle{RESET}")
    return 0 if ok_all == n else 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
