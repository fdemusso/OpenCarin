"""
Extract a country's road network 0x0E blocks using a standard WGS84 GeoJSON.

This script uses the spatial index (parcel_index.npz) previously built by scanning
the CARIN database. It projects the WGS84 GeoJSON coordinates into the CARIN 
internal system and performs a spatial intersection to find all 0x0E sectors 
belonging to the given country.
"""

import json
import argparse
from pathlib import Path

import numpy as np
from shapely.geometry import shape, Point, box

# Scale factor for CARIN coordinates
# Origin is at 30 degrees West on the Equator
K = 2_000_000_000 / 360.0

def lonlat_to_carin(lon: float, lat: float) -> tuple[int, int]:
    """Convert WGS84 (lon, lat) to CARIN internal coordinates."""
    x = int((lon + 30.0) * K)
    y = int(lat * K)
    return x, y

def transform_polygon_to_carin(geom_dict: dict) -> object:
    """Transform GeoJSON coordinates to CARIN coordinates using Shapely."""
    geom = shape(geom_dict)
    
    # We define a function to map coordinates
    def transform_coords(x, y, z=None):
        cx, cy = lonlat_to_carin(x, y)
        return cx, cy
    
    from shapely.ops import transform
    carin_geom = transform(transform_coords, geom)
    return carin_geom

def main():
    parser = argparse.ArgumentParser(description="Extract 0x0E block sectors for a given GeoJSON country boundary.")
    parser.add_argument("--geojson", required=True, help="Path to the simplified WGS84 GeoJSON file")
    parser.add_argument("--index", default=str(Path(__file__).resolve().parent.parent.parent / "dataset" / "parcel_index.npz"), help="Path to the precomputed parcel_index.npz")
    parser.add_argument("--out", default="country_sectors.txt", help="Output text file with the list of matching sectors")
    args = parser.parse_args()

    # 1. Load the spatial index
    idx_path = Path(args.index)
    if not idx_path.exists():
        print(f"Error: Spatial index {idx_path} not found. Run find_parcel.py to build it.")
        return

    print(f"Loading spatial index from {idx_path}...")
    idx_data = np.load(idx_path)["index"]
    print(f"Loaded {len(idx_data)} parcel records.")

    # 2. Load the GeoJSON
    with open(args.geojson, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # We assume a single Feature or a FeatureCollection
    geoms = []
    if data.get("type") == "FeatureCollection":
        for feat in data["features"]:
            geoms.append(feat["geometry"])
    elif data.get("type") == "Feature":
        geoms.append(data["geometry"])
    else:
        geoms.append(data) # Assume it's a raw geometry

    # Combine all geometries and project to CARIN
    print("Projecting geometries to CARIN coordinate space...")
    from shapely.geometry import GeometryCollection
    from shapely.ops import unary_union
    
    carin_polygons = [transform_polygon_to_carin(g) for g in geoms]
    country_shape = unary_union(carin_polygons)
    country_bbox = country_shape.bounds # (minx, miny, maxx, maxy)
    
    # 3. Fast broad-phase filtering using Bounding Boxes
    print(f"Filtering parcels within bounding box: {country_bbox}...")
    secs = idx_data[:, 0]
    x0s  = idx_data[:, 1]
    y0s  = idx_data[:, 2]
    x1s  = idx_data[:, 3]
    y1s  = idx_data[:, 4]
    
    minx, miny, maxx, maxy = country_bbox
    
    # Check if parcel bbox intersects country bbox
    mask = (x0s <= maxx) & (x1s >= minx) & (y0s <= maxy) & (y1s >= miny)
    candidates = np.where(mask)[0]
    print(f"Found {len(candidates)} candidate parcels in broad-phase.")
    
    # 4. Narrow-phase filtering (Exact intersection)
    print("Performing precise spatial intersection (this may take a few seconds)...")
    matching_sectors = []
    
    for i in candidates:
        sec = secs[i]
        # Create a Shapely box for the parcel's extent
        parcel_box = box(x0s[i], y0s[i], x1s[i], y1s[i])
        
        # If the parcel's bounding box intersects the country polygon, we keep it!
        # Note: we use 'intersects' because a parcel might cross the border. 
        if country_shape.intersects(parcel_box):
            matching_sectors.append(sec)
            
    print(f"Exact match: {len(matching_sectors)} sectors found belonging to the country.")
    
    # 5. Save the result
    with open(args.out, 'w', encoding='utf-8') as f:
        for sec in sorted(matching_sectors):
            f.write(f"{sec}\n")
            
    print(f"Success! List of sectors saved to {args.out}")
    print(f"You can now feed these sectors to cf1.decode_block to extract the specific graph.")

if __name__ == "__main__":
    main()
