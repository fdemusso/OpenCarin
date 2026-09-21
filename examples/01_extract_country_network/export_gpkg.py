"""
Export the extracted 0x0E blocks directly to a highly optimized GeoPackage (.gpkg).

This script reads the list of sectors (e.g. italy_sectors.txt), decodes the
CF=1 or CF=2 blocks using the carin parser, extracts the absolute S2 coordinates,
and streams them directly into an SQLite-backed GeoPackage using Fiona.

This approach creates a much smaller, spatially indexed file that opens 
instantly in QGIS compared to a massive GeoJSON text file.
"""

import sys
import argparse
from pathlib import Path
from carin.parser.iso import IsoImage, CarinVolume
from carin.parser import cf1
import fiona

K_INV = 360.0 / 2_000_000_000.0

def carin_to_lonlat(x: int, y: int) -> tuple[float, float]:
    lon = (x * K_INV) - 30.0
    lat = y * K_INV
    return lon, lat

def main():
    parser = argparse.ArgumentParser(description="Export 0x0E sectors directly to GeoPackage.")
    parser.add_argument("--iso", default=str(Path(__file__).resolve().parent.parent.parent / "dataset" / "NAV_DB_21708.ISO"), help="Path to CARINdb ISO")
    parser.add_argument("--sectors", default="italy_sectors.txt", help="Input text file with sector numbers")
    parser.add_argument("--out", default="italy_roads.gpkg", help="Output GeoPackage file")
    parser.add_argument("--limit", type=int, default=0, help="Limit number of sectors to process (0 = all)")
    args = parser.parse_args()

    iso_path = Path(args.iso).resolve()
    if not iso_path.exists():
        print(f"Error: ISO not found at {iso_path}")
        return

    vol = CarinVolume(IsoImage(str(iso_path)))

    with open(args.sectors, 'r', encoding='utf-8') as f:
        sectors = [int(line.strip()) for line in f if line.strip()]

    if args.limit > 0:
        sectors = sectors[:args.limit]
        
    print(f"Processing {len(sectors)} sectors and writing to {args.out}...")

    schema = {
        'geometry': 'LineString',
        'properties': {'sector': 'int'}
    }

    # Open Fiona connection to write the GeoPackage
    with fiona.open(
        args.out,
        mode="w",
        driver="GPKG",
        crs="EPSG:4326",
        schema=schema
    ) as layer:
        
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
                        continue 
                        
                    pt1, pt2 = c
                    lon1, lat1 = carin_to_lonlat(pt1[0], pt1[1])
                    lon2, lat2 = carin_to_lonlat(pt2[0], pt2[1])
                    
                    feature = {
                        'geometry': {
                            'type': 'LineString',
                            'coordinates': [(lon1, lat1), (lon2, lat2)]
                        },
                        'properties': {
                            'sector': sec
                        }
                    }
                    layer.write(feature)
                    total_arcs += 1
                    
            except Exception as e:
                print(f"Warning: Failed to decode sector {sec}: {e}")

    print(f"Done! Exported {total_arcs} road segments to {args.out}.")

if __name__ == "__main__":
    main()
