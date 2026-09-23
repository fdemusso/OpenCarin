"""
Export the extracted 0x0E blocks to a single GeoJSON file.

This script reads the list of sectors (e.g. italy_sectors.txt), decodes the
CF=1 or CF=2 blocks using the carin parser, extracts the absolute S2 coordinates,
and streams them into a massive GeoJSON file.

Since the output can be very large (millions of segments), it writes the JSON
incrementally.
"""

import sys
import argparse
from pathlib import Path
from carin.parser.iso import IsoImage, CarinVolume
from carin.parser import cf1

K_INV = 360.0 / 2_000_000_000.0

def carin_to_lonlat(x: int, y: int) -> tuple[float, float]:
    lon = (x * K_INV) - 30.0
    lat = y * K_INV
    return lon, lat

def main():
    parser = argparse.ArgumentParser(description="Export 0x0E sectors to GeoJSON.")
    parser.add_argument("--iso", default=str(Path(__file__).resolve().parent.parent.parent / "dataset" / "NAV_DB_21708.ISO"), help="Path to CARINdb ISO")
    parser.add_argument("--sectors", default="italy_sectors.txt", help="Input text file with sector numbers")
    parser.add_argument("--out", default="italy_roads.geojson", help="Output GeoJSON file")
    # A limit helps for quick testing; set to 0 for no limit.
    parser.add_argument("--limit", type=int, default=0, help="Limit number of sectors to process (0 = all)")
    args = parser.parse_args()

    iso_path = Path(args.iso).resolve()
    if not iso_path.exists():
        print(f"Error: ISO not found at {iso_path}")
        return

    print(f"Loading ISO image from {iso_path}...")
    vol = CarinVolume(IsoImage(str(iso_path)))

    with open(args.sectors, 'r', encoding='utf-8') as f:
        sectors = [int(line.strip()) for line in f if line.strip()]

    if args.limit > 0:
        sectors = sectors[:args.limit]
        print(f"Limited to {args.limit} sectors for testing.")
    else:
        print(f"Processing all {len(sectors)} sectors...")

    out_path = Path(args.out)
    
    # Stream the GeoJSON to avoid loading GBs of JSON into memory
    with open(out_path, 'w', encoding='utf-8') as out_f:
        out_f.write('{"type": "FeatureCollection", "features": [\n')
        
        first = True
        total_arcs = 0
        
        for i, sec in enumerate(sectors):
            if i > 0 and i % 500 == 0:
                print(f"  Processed {i}/{len(sectors)} sectors (exported {total_arcs} arcs)...")
                
            try:
                blk = vol.block(sec)
                payload = blk.data
                if payload is None:
                    continue
                
                coords = cf1.decode_s2_coords(payload, vol.layout)
                
                for c in coords:
                    if c is None:
                        continue # Sentinel (no geometry)
                        
                    pt1, pt2 = c
                    lon1, lat1 = carin_to_lonlat(pt1[0], pt1[1])
                    lon2, lat2 = carin_to_lonlat(pt2[0], pt2[1])
                    
                    feat = {
                        "type": "Feature",
                        "geometry": {
                            "type": "LineString",
                            "coordinates": [[lon1, lat1], [lon2, lat2]]
                        },
                        "properties": {
                            "sector": sec
                        }
                    }
                    
                    if not first:
                        out_f.write(',\n')
                    import json
                    out_f.write(json.dumps(feat))
                    first = False
                    total_arcs += 1
                    
            except Exception as e:
                print(f"Warning: Failed to decode sector {sec}: {e}")
                
        out_f.write('\n]}\n')

    print(f"Done! Exported {total_arcs} road segments to {out_path}.")
    print(f"File size: {out_path.stat().st_size / (1024*1024):.2f} MB")

if __name__ == "__main__":
    main()
