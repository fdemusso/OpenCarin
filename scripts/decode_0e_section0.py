"""Probe Section 0's shared-bit (B,C) group for type 0x0E CF=1 blocks.

Question: is 'C' (the field that's 0x0000 in every observed raw 0x0E struct,
per blueprint sec 6.3, but decoded via getbits(ptrbits) when the shared flag
bit is set, per sec 6.3.1) ever non-zero, and can it be an external pointer
to a companion 0x0D block?

Field widths / prologue offsets here follow scripts/decode_modugno.py
(bit-level verified against pbp_decompiled.c), NOT the approximate widths in
blueprint sec 6.3.1 (flags=4+1, B=8) which decode_modugno's comments show to
be wrong (flags=2+1, B=3, no 2-byte skip before count_N).
"""
import sys
import struct
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage
from carin.parser.cf1 import bits_needed, BitReader
from scripts.cf1_super import read_super, layout_table, DEFAULT_DB0

ISO = "dataset/NAV_DB_21708.ISO"
MAX_BLOCKS = int(sys.argv[1]) if len(sys.argv) > 1 else 500


def probe(sector, tbl):
    vol = CarinVolume(IsoImage(ISO))
    blk = vol.block(sector)
    src = blk.raw
    desc_base = tbl[0x05]

    def get_entry(idx):
        off, count = struct.unpack_from(">HH", src, desc_base + idx * 4)
        return {"off": off, "count": count}

    e0, e1 = get_entry(0), get_entry(1)

    cursor = tbl[0x2b]  # 48, no extra skip (decode_modugno.py verified)
    count_n = struct.unpack_from(">H", src, cursor)[0]
    cursor += 2 + count_n * 12
    cursor += 2  # M header

    bits = BitReader(src, cursor)
    usize = src[7]
    ptrbits = bits_needed(usize << 11)

    out = []
    for _ in range(e0["count"]):
        a = bits.get(ptrbits)
        flags = bits.get(2) | (bits.get(1) << 2)
        explicit = bits.get(1)
        b = c = None
        if explicit:
            b = bits.get(3)
            c = bits.get(ptrbits)
        _d_idx = bits.get(bits_needed(e1["count"]))
        out.append((a, flags, explicit, b, c))
    return out, usize, ptrbits, count_n


def main():
    sb = read_super(ISO, DEFAULT_DB0)
    tbl = layout_table(sb)

    vol = CarinVolume(IsoImage(ISO))
    n_blocks = n_records = n_explicit = n_c_nonzero = 0
    samples = []

    for head in vol.walk(0):
        if head.type != 0x0E or head.comp != 1:
            continue
        try:
            recs, usize, ptrbits, count_n = probe(head.sector, tbl)
        except Exception as exc:
            print(f"sector {head.sector}: {exc}")
            continue
        n_blocks += 1
        for a, flags, explicit, b, c in recs:
            n_records += 1
            if explicit:
                n_explicit += 1
                if c:
                    n_c_nonzero += 1
                    if len(samples) < 15:
                        samples.append((head.sector, a, flags, b, c, ptrbits, usize, count_n))
        if n_blocks >= MAX_BLOCKS:
            break

    print(f"blocks={n_blocks} records={n_records} explicit_bc={n_explicit} c_nonzero={n_c_nonzero}")
    for s in samples:
        sector, a, flags, b, c, ptrbits, usize, count_n = s
        max_addr = usize * 2048  # ptrbits sized off usize<<11 per decode_modugno
        print(f"sector={sector} A={a:#x} FLAGS={flags:#x} B={b:#x} C={c:#x} "
              f"ptrbits={ptrbits} usize={usize} blocklen={max_addr:#x} count_N={count_n}")


if __name__ == "__main__":
    main()
