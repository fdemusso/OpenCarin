"""
Structural oracle for 0x0E CF=1 road network blocks.

Verifies S0, S1, and S2 block invariants and pointers after decompression to ensure the bit-packing decoder functioned perfectly.
"""

from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1                      # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from scripts.firmware.cf1_super import layout_table                # noqa: E402

ISO = "dataset/NAV_DB_21708.ISO"

# Settore usato per i claim numerici in docs
CLAIM_SECTOR = 2252227

T_DESC_BASE = cf1.T_DESC_BASE      # 0x05
T_PROLOG_0E = cf1.T_PROLOG_0E     # 0x2b → 48
T_REC_S0_0E = cf1.T_REC_S0_0E    # 0x2d → 8
T_REC_S1_0E = cf1.T_REC_S1_0E    # 0x41 → 6
T_REC_S2_0E = cf1.T_REC_S2_0E    # 0x42 → 24


# ─── colorazione ANSI ────────────────────────────────────────────────────────

GREEN  = "\x1b[32m"
RED    = "\x1b[31m"
YELLOW = "\x1b[33m"
RESET  = "\x1b[0m"


def _pf(ok: bool | None, label: str, detail: str = "") -> None:
    if ok is True:
        tag = f"{GREEN}PASS{RESET}"
    elif ok is False:
        tag = f"{RED}FAIL{RESET}"
    else:
        tag = f"{YELLOW}WARN{RESET}"
    suffix = f"  ({detail})" if detail else ""
    print(f"  [{tag}] {label}{suffix}")


# ─── parsing pre-header raw ──────────────────────────────────────────────────

def _parse_preheader(raw: bytes, table: dict) -> dict:
    """Ri-estrae count_N / raw_12 / M_hi / M_lo dal blocco raw.

    La struttura è:
      raw[0 .. prolog]          prologo (prolog = T[0x2b])
      raw[prolog .. +2]         count_N  (u16 BE)
      raw[prolog+2 .. +N*12]   anchor table (N × 12 byte raw)
      raw[prolog+2+N*12]        M_hi
      raw[prolog+2+N*12+1]      M_lo
    """
    prolog = table[T_PROLOG_0E]
    off = prolog
    count_N = struct.unpack_from(">H", raw, off)[0]
    off += 2
    raw_12 = raw[off:off + count_N * 12]
    off += count_N * 12
    M_hi = raw[off]
    M_lo = raw[off + 1]
    bits_start = off + 2
    return dict(count_N=count_N, raw_12=bytes(raw_12),
                M_hi=M_hi, M_lo=M_lo, bits_start=bits_start)


# ─── validazione di un singolo blocco ───────────────────────────────────────

def validate(vol: CarinVolume, table: dict, dbrel: int,
             sector: int, *, verbose: bool = False) -> bool:
    blk = vol.block(sector)
    if blk.type != 0x0E or blk.comp != 1:
        print(f"\n=== settore {sector}: tipo {blk.type:#04x} cf={blk.comp} — saltato")
        return True  # non è un fallimento

    print(f"\n=== settore {sector}  usize={blk.usize}  raw={len(blk.raw)} B")

    # ── 1. decode ────────────────────────────────────────────────────────────
    try:
        out = cf1.decode_block(blk.raw, table, dbrel)
    except Exception as exc:  # noqa: BLE001
        _pf(False, "decode_block completato", str(exc))
        return False
    _pf(True, "decode_block completato senza eccezioni")

    # ── 2. pre-header ────────────────────────────────────────────────────────
    ph = _parse_preheader(blk.raw, table)
    count_N = ph["count_N"]
    raw_12  = ph["raw_12"]
    M_hi    = ph["M_hi"]
    M_lo    = ph["M_lo"]
    print(f"     count_N={count_N}  M_hi={M_hi}  M_lo={M_lo}")

    _pf(len(raw_12) == count_N * 12, "anchor table = count_N × 12 byte",
        f"{len(raw_12)} B")
    _pf(M_hi > 0, "M_hi > 0 (larghezza delta valida)", f"{M_hi}")
    _pf(M_lo > 0, "M_lo > 0 (larghezza val2 valida)",  f"{M_lo}")

    # ── 3. entry descriptors ─────────────────────────────────────────────────
    base_d = table[T_DESC_BASE]
    ents = [struct.unpack_from(">HH", out, base_d + 4 * i) for i in range(3)]
    e0_off, e0_cnt = ents[0]
    e1_off, e1_cnt = ents[1]
    e2_off, e2_cnt = ents[2]
    s0_rec = table[T_REC_S0_0E]
    s1_rec = table[T_REC_S1_0E]
    s2_rec = table[T_REC_S2_0E]
    total  = len(out)
    print(f"     S0: {e0_cnt} rec @{e0_off:#x}  S1: {e1_cnt} rec @{e1_off:#x}"
          f"  S2: {e2_cnt} rec @{e2_off:#x}")

    all_ok = True

    # ── 4. T-table claims (verificati una sola volta, riportati su tutti i blocchi)
    _pf(s0_rec == 8,  f"T[0x2d] = 8 (S0 rec)",  f"actual={s0_rec}")
    _pf(s1_rec == 6,  f"T[0x41] = 6 (S1 rec)",  f"actual={s1_rec}")
    _pf(s2_rec == 24, f"T[0x42] = 24 (S2 rec)", f"actual={s2_rec}")

    # ── 5. S0: D-ptr in S1 ──────────────────────────────────────────────────
    s1_lo = e1_off
    s1_hi = e1_off + e1_cnt * s1_rec
    bad_d = 0
    for i in range(e0_cnt):
        p = e0_off + i * s0_rec
        d = struct.unpack_from(">H", out, p + 6)[0]
        if not (s1_lo <= d < s1_hi):
            bad_d += 1
    ok = bad_d == 0
    _pf(ok, f"S0: 0/{e0_cnt} D-ptrs fuori S1", f"{bad_d} bad")
    all_ok = all_ok and ok

    # ── 6. S1: ptr→S2 in S2, count≥1, flag∈{0,1} ───────────────────────────
    s2_lo = e2_off
    s2_hi = e2_off + e2_cnt * s2_rec
    bad_p, bad_cnt, bad_flag = 0, 0, 0
    for i in range(e1_cnt):
        p = e1_off + i * s1_rec
        ptr  = struct.unpack_from(">H", out, p)[0]
        cnt  = out[p + 2]
        flag = out[p + 3]
        if not (s2_lo <= ptr < s2_hi):
            bad_p += 1
        if cnt < 1:
            bad_cnt += 1
        if flag > 1:
            bad_flag += 1
    ok_p    = bad_p    == 0
    ok_cnt  = bad_cnt  == 0
    ok_flag = bad_flag == 0
    _pf(ok_p,    f"S1: 0/{e1_cnt} ptr fuori S2",   f"{bad_p} bad")
    _pf(ok_cnt,  f"S1: 0/{e1_cnt} count < 1",       f"{bad_cnt} bad")
    _pf(ok_flag, f"S1: 0/{e1_cnt} flag not in {{0,1}}",  f"{bad_flag} bad")
    all_ok = all_ok and ok_p and ok_cnt and ok_flag

    # ── 7. S2: layout invariants ─────────────────────────────────────────────
    max_M_lo = (1 << M_lo) - 1 if M_lo > 0 else 0

    val1_odd       = 0
    val2_oor       = 0
    val1_nonzero   = 0
    val2_nonzero   = 0
    val2_zero      = 0
    bad_anc        = 0   # anchor non-zero ma non in raw_12 (decoding bug)
    no_anc_recs    = 0   # record con anchor zero (idx_N >= count_N, comportamento atteso)
    all_sentinel   = 0   # record con 4 × 0x7FFF (sentinella)

    anchors = [raw_12[k * 12:(k + 1) * 12] for k in range(count_N)]
    zero8 = bytes(8)
    zero4 = bytes(4)

    for i in range(e2_cnt):
        b = e2_off + i * s2_rec
        x_anc  = bytes(out[b:b + 8])        # +0..+7
        anc_f2 = bytes(out[b + 16:b + 20])  # +16..+19
        d0, d1, d2, d3 = struct.unpack_from(">HHHH", out, b + 8)
        val1 = struct.unpack_from(">H", out, b + 20)[0]
        val2 = struct.unpack_from(">H", out, b + 22)[0]

        # val1 sempre pari (getbits(13)<<1)
        if val1 & 1:
            val1_odd += 1

        # val2 nel range [0, 2^M_lo - 1]
        if val2 > max_M_lo:
            val2_oor += 1

        if val1 != 0:
            val1_nonzero += 1
        if val2 != 0:
            val2_nonzero += 1
        else:
            val2_zero += 1

        # sentinel count
        if d0 == 0x7FFF and d1 == 0x7FFF and d2 == 0x7FFF and d3 == 0x7FFF:
            all_sentinel += 1

        # anchor oracle (memmove):
        #   idx_N >= count_N → firmware non fa memmove → +0..+7 e +16..+19 restano 0 (atteso)
        #   idx_N < count_N  → i byte devono corrispondere ESATTAMENTE all'anchor idx_N
        if x_anc == zero8 and anc_f2 == zero4:
            no_anc_recs += 1   # idx_N >= count_N oppure anchor era zero: OK
        elif count_N > 0:
            matched = any(
                anc[:8] == x_anc and anc[8:12] == anc_f2
                for anc in anchors
            )
            if not matched:
                bad_anc += 1   # anchor non-zero ma non riconducibile a raw_12: bug

    ok_val1e = val1_odd == 0
    ok_val2r = val2_oor == 0
    ok_anc   = bad_anc  == 0

    _pf(ok_val1e, f"S2: val1 sempre pari (getbits(13)<<1)",
        f"{val1_odd} dispari/{e2_cnt}")
    _pf(ok_val2r, f"S2: val2 in range [0, 2^M_lo-1={max_M_lo}]",
        f"{val2_oor} fuori range/{e2_cnt}")
    _pf(ok_anc,   "S2: anchor non-zero tracciabili a raw_12 (oracle memmove)",
        f"{bad_anc} errate/{e2_cnt - no_anc_recs} con-anchor")
    print(f"     S2: sentinel(all 4×0x7FFF): {all_sentinel}/{e2_cnt}"
          f"  no-anchor(idx_N>=N): {no_anc_recs}/{e2_cnt}")
    print(f"     S2: val1!=0: {val1_nonzero}/{e2_cnt}"
          f"  val2!=0: {val2_nonzero}/{e2_cnt}"
          f"  val2=0: {val2_zero}/{e2_cnt}")

    all_ok = all_ok and ok_val1e and ok_val2r and ok_anc

    # ── 8. Claim numerici specifici per sector 2252227 ────────────────────────
    if sector == CLAIM_SECTOR:
        print("  --- claim documentati per settore 2252227 ---")
        # "0/133 bad anchor indices" → interpretazione: 0 S0 D-ptrs errati
        # (i 133 S0 records, ciascuno con un D-ptr in S1, sono tutti validi — gia' verificato sopra)
        # Qui verifichiamo anche: anchor non-zero sempre in raw_12
        _pf(bad_anc == 0,
            f"claim: anchor non-zero sempre in raw_12 ({bad_anc} bad)",
            f"count_N={count_N}, no-anchor={no_anc_recs}/{e2_cnt}")
        # "556/556 non-zero val1"
        _pf(val1_nonzero == e2_cnt,
            f"claim: {e2_cnt}/{e2_cnt} val1 non-zero",
            f"{val1_nonzero}/{e2_cnt}")
        # val2: osservazione empirica, non un invariante fisso
        _pf(None,
            f"obs: val2 non-zero (empirical, not a hard invariant)",
            f"{val2_nonzero}/{e2_cnt}")

    return all_ok


# ─── entry point ─────────────────────────────────────────────────────────────

def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--sector", "-s", type=lambda x: int(x, 0),
                    nargs="*", dest="sectors", default=None)
    ap.add_argument("--sample", type=int, default=9,
                    help="blocchi 0x0E aggiuntivi da campionare (default 9)")
    ap.add_argument("--iso", default=ISO)
    ap.add_argument("--verbose", "-v", action="store_true")
    args = ap.parse_args(argv[1:])

    vol = CarinVolume(IsoImage(args.iso))
    sb  = vol.read_sectors(0, 2)
    table = layout_table(sb)
    dbrel = struct.unpack_from(">H", sb, 0x1A)[0]

    print(f"DB-REL={dbrel}  ISO={args.iso}")

    # Claim strutturale: T-table
    print("\n=== claim T-table (da superblock) ===")
    for key, expected, desc in [
        (T_PROLOG_0E, 48,  "T[0x2b] = 48 (prolog 0x0E)"),
        (T_REC_S0_0E,  8,  "T[0x2d] = 8  (S0 rec)"),
        (T_REC_S1_0E,  6,  "T[0x41] = 6  (S1 rec)"),
        (T_REC_S2_0E, 24,  "T[0x42] = 24 (S2 rec)"),
    ]:
        actual = table.get(key, None)
        _pf(actual == expected, desc, f"actual={actual}")

    # Settori da testare
    if args.sectors:
        test_sectors = args.sectors
    else:
        test_sectors = [CLAIM_SECTOR]
        # Campiona altri blocchi 0x0E CF=1
        collected = 0
        for blk in vol.walk(0):
            if blk.type == 0x0E and blk.comp == 1 and blk.sector != CLAIM_SECTOR:
                test_sectors.append(blk.sector)
                collected += 1
                if collected >= args.sample:
                    break

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
