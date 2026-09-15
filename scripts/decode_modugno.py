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
    
    cursor = tbl[0x2b] # 48
    
    # In firmware: copy_raw(8) into -$7126
    cursor += 8
    
    count_N = struct.unpack_from(">H", src, cursor)[0]
    cursor += 2
    raw_12 = src[cursor : cursor + count_N * 12]
    cursor += count_N * 12
    
    M_hi = src[cursor]
    M_lo = src[cursor+1]
    cursor += 2
    
    bits = BitReader(src, cursor)
    hdr = struct.unpack_from(">HBBBBH", src, 0)
    usize = hdr[2]
    ptrbits = bits_needed(usize * 512)
    
    for i in range(e0["count"]):
        A = bits.get(ptrbits)
        flags_low = bits.get(2)
        flags_hi = bits.get(1)
        inherit = bits.get(1)
        if inherit:
            _ = bits.get(3)
            _ = bits.get(ptrbits)
        D_idx = bits.get(bits_needed(e1["count"] + 1))
        
    s1_edges = []
    for i in range(e1["count"]):
        s2_bits = bits_needed(e2["count"] + 1)
        s2_idx = bits.get(s2_bits)
        inherit2 = bits.get(1)
        if inherit2:
            count2 = bits.get(s2_bits) + 2
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
    count = edge["count"]
    
    if s2_idx >= len(s2_recs): continue
    
    coords = []
    for j in range(count):
        if s2_idx + j >= len(s2_recs): break
        rec = s2_recs[s2_idx + j]
        
        if rec["idx_N"] >= 159: continue # skip bad ones for drawing
        
        lon, lat = to_wgs84(rec["x_anc"], rec["y_anc"])
        coords.append([lon, lat])
        
        d = rec["deltas"]
        if d[0][0] != 0x7FFF:
            dx1 = sign_extend(d[0][0], d[0][1])
            dy1 = sign_extend(d[1][0], d[1][1])
            dx2 = sign_extend(d[2][0], d[2][1])
            dy2 = sign_extend(d[3][0], d[3][1])
            
            coords.append(list(to_wgs84(rec["x_anc"] + dx1, rec["y_anc"] + dy1)))
            if dx2 != 0x7FFF and d[2][0] != 0x7FFF:
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
