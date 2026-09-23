import argparse
import json
import struct
import sys
from pathlib import Path

# Add root to sys.path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))

from carin.parser.iso import IsoImage, CarinVolume
from carin.parser import cf1

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("iso", help="Path to ISO")
    parser.add_argument("sector", type=int, help="Sector of 0x00 block")
    parser.add_argument("out", help="Output GeoJSON")
    args = parser.parse_args()

    vol = CarinVolume(IsoImage(args.iso))
    blk = vol.block(args.sector)
    
    if blk.type != 0x00:
        print("Not a 0x00 block!")
        sys.exit(1)
        
    data = blk.data
    if not data:
        print("Empty or unsupported block.")
        sys.exit(1)

    base_d = 8
    s4_off, s4_cnt = struct.unpack_from(">HH", data, base_d + 4 * 4)
    s7_off, s7_cnt = struct.unpack_from(">HH", data, base_d + 7 * 4)

    # Read all points from S7
    points = []
    for i in range(s7_cnt):
        x, y, flags = struct.unpack_from(">HHB", data, s7_off + i * 6)
        points.append((x, y))

    # Read S4 records to build polylines
    features = []
    for i in range(s4_cnt):
        ptr_s7 = struct.unpack_from(">H", data, s4_off + i * 32 + 4)[0]
        
        # Calculate next pointer to know how many points we have
        # (Assuming the next S4 record points to the end of our point array)
        if i < s4_cnt - 1:
            next_ptr = struct.unpack_from(">H", data, s4_off + (i + 1) * 32 + 4)[0]
        else:
            next_ptr = s7_off + s7_cnt * 6
            
        # Only process if it points to S7 and moves forward
        if ptr_s7 >= s7_off and next_ptr >= ptr_s7:
            start_idx = (ptr_s7 - s7_off) // 6
            end_idx = (next_ptr - s7_off) // 6
            
            line_coords = points[start_idx:end_idx]
            if len(line_coords) > 1:
                features.append({
                    "type": "Feature",
                    "geometry": {
                        "type": "LineString",
                        "coordinates": line_coords # using raw 16-bit values for now
                    },
                    "properties": {
                        "line_index": i
                    }
                })

    geojson = {
        "type": "FeatureCollection",
        "features": features
    }

    with open(args.out, "w") as f:
        json.dump(geojson, f, indent=2)

    print(f"Exported {len(features)} polylines to {args.out}")

if __name__ == "__main__":
    main()
