import sys
import struct
import json
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage, to_wgs84
from carin.parser.cf1 import bits_needed, BitReader
from scripts.cf1_super import read_super, layout_table, DEFAULT_DB0

def sign_extend(val, bits):
    if (val & (1 << (bits - 1))) != 0:
        return val - (1 << bits)
    return val

def decode_0e(sector):
    vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
    blk = vol.block(sector)
    src = blk.raw
    
    sb = read_super("dataset/NAV_DB_21708.ISO", DEFAULT_DB0)
    tbl = layout_table(sb)
    desc_base = tbl[0x05]
    
    def get_entry(idx):
        off, count = struct.unpack_from(">HH", src, desc_base + idx * 4)
        return {"off": off, "count": count}
        
    e0 = get_entry(0)
    e1 = get_entry(1)
    e2 = get_entry(2)
    
    # tbl[0x2b] = 48-byte plaintext prologue length for type 0x0E (see
    # CARINDB_BLUEPRINT_EN.md sec. 9). Firmware's copy_raw(a2, n=tbl[0x2b])
    # at pbp+0x432a already consumes the whole prologue; count_N follows
    # immediately, no extra skip.
    cursor = tbl[0x2b] # 48

    count_N = struct.unpack_from(">H", src, cursor)[0]
    cursor += 2
    raw_12 = src[cursor : cursor + count_N * 12]
    cursor += count_N * 12
    
    M_hi = src[cursor]
    M_lo = src[cursor+1]
    cursor += 2
    
    bits = BitReader(src, cursor)
    # canonical header (cf1.decode_block): BLOCK_ID u32, BLOCK_TYPE u16,
    # COMPRESSION_FLAG @6, UNCOMPRESSED_SIZE @7 - the old ">HBBBBH" unpack
    # misread byte 3 (part of BLOCK_ID) as usize instead of byte 7.
    # pbp+0x4798 init(): PTRBITS = bits_needed(usize << 11) -- CD-ROM
    # sector (2048B), not the 512B SECTOR constant used elsewhere in cf1.py.
    usize = src[7]
    ptrbits = bits_needed(usize << 11)
    
    for i in range(e0["count"]):
        A = bits.get(ptrbits)
        flags_low = bits.get(2)
        flags_hi = bits.get(1)
        inherit = bits.get(1)
        if inherit:
            _ = bits.get(3)
            _ = bits.get(ptrbits)
        D_idx = bits.get(bits_needed(e1["count"]))

    s1_edges = []
    for i in range(e1["count"]):
        s2_bits = bits_needed(e2["count"])
        s2_idx = bits.get(s2_bits)
        inherit2 = bits.get(1)
        if inherit2:
            count2 = bits.get(s2_bits) + 2
            # Residual desync guard: a genuine edge never spans more
            # geometry records than exist in section 2. A handful of
            # records still decode an absurd span (seen: 258-930 vs
            # e2.count=556); until that's root-caused, treat it as
            # corrupt rather than drawing a line across the whole block.
            if count2 > e2["count"]:
                count2 = 1
        else:
            count2 = 1
        flag = bits.get(1)
        s1_edges.append({"s2_idx": s2_idx, "count": count2})
        
    s2_records = []
    idx_N_bits = bits_needed(count_N)
    for i in range(e2["count"]):
        idx_N = bits.get(idx_N_bits)
        if idx_N < count_N:
            x_anc, y_anc = struct.unpack_from(">ii", raw_12, idx_N * 12)
        else:
            x_anc, y_anc = 0, 0
            
        has_deltas = bits.get(1)
        deltas = []
        if has_deltas:
            for _ in range(4):
                is_16 = bits.get(1)
                width = 16 if is_16 else M_hi
                val = bits.get(width)
                deltas.append((val, width))
        else:
            deltas = [(0x7FFF, 16)] * 4
            
        val1 = bits.get(13) << 1
        val2 = bits.get(M_lo)
        
        s2_records.append({
            "x_anc": x_anc,
            "y_anc": y_anc,
            "deltas": deltas,
            "idx_N": idx_N
        })
        
    return s1_edges, s2_records

edges, s2_recs = decode_0e(2252227)

bad = [r for r in s2_recs if r["idx_N"] >= 159]
print(f"Decoded {len(edges)} edges and {len(s2_recs)} geometries.")
print(f"Bad geometries: {len(bad)}")

features = []
for edge in edges:
    s2_idx = edge["s2_idx"]
    # NOTE: edge["count"] ("count2") is bit-width-verified correct (matches
    # asm/decompile exactly) but its MEANING as "walk this many consecutive
    # s2_records" is wrong: consecutive array index is not consecutive
    # geography here (verified - a handful of s2_records form a real,
    # coherent Sardinia sub-cluster (anchor idx 1-11) sitting next to the
    # main Puglia cluster in the SAME anchor table; walking count2 stitches
    # a Sardinia anchor to an unrelated Puglia anchor into one LineString,
    # which is what produced the hairball. Single-record rendering below
    # has zero cross-cluster jumps; count2's real meaning is still unknown.
    if s2_idx >= len(s2_recs): continue
    rec = s2_recs[s2_idx]

    coords = []
    if rec["idx_N"] < 159: # skip bad ones for drawing
        d = rec["deltas"]
        # anchor is a shared coordinate-compression reference (159 anchors for
        # 556 records, 94% of anchors within 3m of another anchor), not a
        # rendered vertex. p1/p2 below are two independent anchor-relative
        # points forming a 2-point chord; drawing anchor->p1->p2 as a 3-point
        # chain (previous version) put a spurious kink at the anchor -
        # turn-angle check across 236 real records: mean 131.7 deg, 48% >150
        # deg (real roads don't fold back on themselves like that).
        if d[0][0] != 0x7FFF:
            dx1 = sign_extend(d[0][0], d[0][1])
            dy1 = sign_extend(d[1][0], d[1][1])
            dx2 = sign_extend(d[2][0], d[2][1])
            dy2 = sign_extend(d[3][0], d[3][1])

            coords.append(list(to_wgs84(rec["x_anc"] + dx1, rec["y_anc"] + dy1)))
            coords.append(list(to_wgs84(rec["x_anc"] + dx2, rec["y_anc"] + dy2)))

    if len(coords) > 1:
        features.append({
            "type": "Feature",
            "geometry": {
                "type": "LineString",
                "coordinates": coords
            }
        })

geojson = {
    "type": "FeatureCollection",
    "features": features
}

with open("modugno.geojson", "w") as f:
    json.dump(geojson, f)
print("Saved modugno.geojson")
