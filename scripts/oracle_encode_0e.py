"""Oracle — BLOCK_TYPE 0x0E CF=1 encode_type0E round-trip.

Methodologia invariante: campiona 10 blocchi 0x0E CF=1 dal DB, esegue il
ciclo raw → decode_block → encode_type0E → decode_block e verifica che
decoded == redecoded (bytes [4:] per escludere block_id length-field che
dipende dalla dimensione encoded).

Uso:
  python3 scripts/oracle_encode_0e.py            # 10 blocchi CF=1 auto-campionati
  python3 scripts/oracle_encode_0e.py --sector S  # settore specifico
  python3 scripts/oracle_encode_0e.py --sample N  # N blocchi (default 10)
"""

from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1                          # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage   # noqa: E402
from cf1_super import layout_table                   # noqa: E402

ISO = "dataset/NAV_DB_21708.ISO"

GREEN = "\x1b[32m"
RED   = "\x1b[31m"
RESET = "\x1b[0m"


def _test_block(vol: CarinVolume, table: dict, dbrel: int,
                sector: int) -> tuple[bool, dict]:
    blk = vol.block(sector)
    info: dict = {"sector": sector, "cf": blk.comp, "type": blk.type}

    if blk.type != 0x0E:
        info["skip"] = f"type={blk.type:#04x}"
        return True, info

    if blk.comp != 1:
        info["skip"] = f"cf={blk.comp} (not CF=1)"
        return True, info

    raw = vol.read_sectors(sector, blk.length)

    # step 1: decode
    try:
        decoded = cf1.decode_block(raw, table, dbrel)
    except Exception as exc:
        info["error"] = f"decode_block: {exc}"
        return False, info

    # section counts for reporting
    base_d  = table[cf1.T_DESC_BASE]
    s0_rec  = table[cf1.T_REC_S0_0E]
    s1_rec  = table[cf1.T_REC_S1_0E]
    s2_rec  = table[cf1.T_REC_S2_0E]
    e0_off, e0_cnt = struct.unpack_from(">HH", decoded, base_d + 0)
    e1_off, e1_cnt = struct.unpack_from(">HH", decoded, base_d + 4)
    e2_off, e2_cnt = struct.unpack_from(">HH", decoded, base_d + 8)
    info.update(s0=e0_cnt, s1=e1_cnt, s2=e2_cnt)

    # step 2: re-encode
    try:
        reencoded = cf1.encode_type0E(decoded, table, dbrel)
    except Exception as exc:
        info["error"] = f"encode_type0E: {exc}"
        return False, info

    info["raw_len"]   = len(raw)
    info["reenc_len"] = len(reencoded)

    # step 3: re-decode
    try:
        redecoded = cf1.decode_block(reencoded, table, dbrel)
    except Exception as exc:
        info["error"] = f"decode_block(reencoded): {exc}"
        return False, info

    # step 4: compare (skip bytes 0-3 = block_id length field)
    if decoded[4:] != redecoded[4:]:
        # find first mismatch for diagnostics
        for idx, (a, b) in enumerate(zip(decoded[4:], redecoded[4:])):
            if a != b:
                info["error"] = (
                    f"mismatch at decoded[{idx + 4}]: "
                    f"orig={a:#04x} reenc={b:#04x}"
                )
                break
        else:
            info["error"] = f"length mismatch: {len(decoded)} vs {len(redecoded)}"
        return False, info

    return True, info


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
    print(f"encode_type0E round-trip oracle  (comparing decoded[4:] == redecoded[4:])\n")

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

    # header
    print(f"{'sector':>10}  {'cf':>3}  {'S0':>5}  {'S1':>5}  {'S2':>5}  "
          f"{'raw_B':>7}  {'enc_B':>7}  result")
    print("-" * 72)

    passed = 0
    for sec in test_sectors:
        ok, info = _test_block(vol, table, dbrel, sec)

        if info.get("skip"):
            print(f"{sec:>10}  {'–':>3}  {'–':>5}  {'–':>5}  {'–':>5}  "
                  f"{'–':>7}  {'–':>7}  SKIP ({info['skip']})")
            passed += 1
            continue

        tag = f"{GREEN}PASS{RESET}" if ok else f"{RED}FAIL{RESET}"
        extra = ""
        if not ok:
            extra = f"  ← {info.get('error', '?')}"
        elif info.get("reenc_len", 0) != info.get("raw_len", 0):
            delta = info["reenc_len"] - info["raw_len"]
            extra = f"  (size {'+' if delta > 0 else ''}{delta} B)"

        print(f"{sec:>10}  {info.get('cf', '?'):>3}  "
              f"{info.get('s0', '?'):>5}  {info.get('s1', '?'):>5}  "
              f"{info.get('s2', '?'):>5}  "
              f"{info.get('raw_len', 0):>7}  {info.get('reenc_len', 0):>7}  "
              f"{tag}{extra}")
        passed += int(ok)

    n = len(test_sectors)
    print("-" * 72)
    color = GREEN if passed == n else RED
    print(f"\n{color}{passed}/{n} blocchi: round-trip OK{RESET}")
    return 0 if passed == n else 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
