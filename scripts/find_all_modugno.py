import sys
import struct
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage, to_wgs84

vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
target_lon = 16.77
target_lat = 41.08
tolerance = 0.05

print("Scanning all 0x0E blocks...")
matches = []

for head in vol.walk(0):
    if head.type == 0x0E and head.comp == 1:
        blk = vol.block(head.sector)
        raw = blk.raw
        if len(raw) < 50: continue
        count_N = struct.unpack_from(">H", raw, 48)[0]
        if 50 + count_N * 12 > len(raw): continue
        
        found = 0
        for i in range(count_N):
            x, y = struct.unpack_from(">ii", raw, 50 + i * 12)
            lon, lat = to_wgs84(x, y)
            if abs(lon - target_lon) < tolerance and abs(lat - target_lat) < tolerance:
                found += 1
                
        if found > 0:
            matches.append((head.sector, count_N, found))

print(f"Found {len(matches)} blocks covering Modugno:")
for m in matches:
    print(f"Sector {m[0]}: {m[2]}/{m[1]} anchors in Modugno")
