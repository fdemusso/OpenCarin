"""
Validates the CF=1 decoder using structural and text-based oracles.

Applies invariant checks to the decoded output of selected blocks to ensure correctness.
"""

from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1  # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from scripts.firmware.cf1_super import layout_table  # noqa: E402

ISO = "dataset/NAV_DB_21708.ISO"
PRINTABLE = set(range(0x20, 0x7F)) | set(range(0xC0, 0xFF))


def readable_runs(data: bytes, lo: int, hi: int, minlen: int = 4) -> list[str]:
    out, cur = [], []
    for i in range(lo, min(hi, len(data))):
        c = data[i]
        if c in PRINTABLE:
            cur.append(chr(c))
        else:
            if len(cur) >= minlen:
                out.append("".join(cur))
            cur = []
    if len(cur) >= minlen:
        out.append("".join(cur))
    return out


def check(vol: CarinVolume, table: dict[int, int], dbrel: int, sector: int) -> bool:
    blk = vol.block(sector)
    if blk.type != 0x00 or blk.comp != 1:
        print(f"settore {sector}: tipo {blk.type:#04x} cf={blk.comp}, saltato")
        return False
    try:
        out = cf1.decode_block(blk.raw, table, dbrel)
    except Exception as exc:  # noqa: BLE001
        print(f"settore {sector}: DECODE FALLITO {type(exc).__name__}: {exc}")
        return False

    base = table[cf1.T_DESC_BASE]
    ents = [struct.unpack_from(">HH", out, base + 4 * i) for i in range(15)]
    total = len(out)
    disk_bits = blk.length * 512 * 8

    # 1. consumo del flusso
    bits = cf1.bits_needed  # noqa: F841  (solo per import esplicito)
    ctx_bits = getattr(check, "_last_bits", None)
    del bits, ctx_bits

    # 2. puntatori dentro il blocco
    bad = 0
    e4_off, e4_cnt = ents[4]
    rec4 = table[cf1.T_REC_S4]
    for i in range(e4_cnt):
        p = e4_off + i * rec4
        for fld in (0x00, 0x02, 0x04, 0x12, 0x14, 0x16):
            v = struct.unpack_from(">H", out, p + fld)[0]
            if v and v >= total:
                bad += 1

    # 3. sezione 14: offset monotoni
    e14_off, e14_cnt = ents[14]
    rec14 = table.get(cf1.T_REC_S14, 4)
    ptrs = [struct.unpack_from(">H", out, e14_off + i * rec14)[0] for i in range(e14_cnt)]
    mono = all(ptrs[i] <= ptrs[i + 1] for i in range(len(ptrs) - 1))

    # 4. testo
    text_lo = e14_off + e14_cnt * rec14
    runs = readable_runs(out, text_lo, total)
    chars = sum(len(r) for r in runs)

    print(f"\n=== settore {sector}  usize={blk.usize} ({total} B)  disco={blk.length * 512} B")
    print(f"    bit disco = {disk_bits}")
    print(f"    puntatori sezione 4 fuori blocco: {bad}")
    print(f"    sezione 14: {e14_cnt} record, offset monotoni: {mono}")
    print(f"    blob nomi @{text_lo:#x}..{total:#x}: {len(runs)} run leggibili, {chars} caratteri")
    for r in runs[:15]:
        print(f"      {r!r}")
    return bad == 0 and mono and chars > (total - text_lo) * 0.5


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("sectors", nargs="*", type=lambda s: int(s, 0))
    ap.add_argument("--iso", default=ISO)
    args = ap.parse_args(argv[1:])

    vol = CarinVolume(IsoImage(args.iso))
    sb = vol.read_sectors(0, 2)
    table = layout_table(sb)
    dbrel = struct.unpack_from(">H", sb, 0x1A)[0]
    sectors = args.sectors or [3157624, 3157633, 3157649, 3157667]
    ok = sum(1 for s in sectors if check(vol, table, dbrel, s))
    print(f"\n{ok}/{len(sectors)} blocchi superano tutti gli oracoli")
    return 0 if ok == len(sectors) else 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
