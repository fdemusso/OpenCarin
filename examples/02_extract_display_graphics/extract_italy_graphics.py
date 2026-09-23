import argparse
import os
import struct
import json
import fiona
from shapely.geometry import shape, box
from shapely.prepared import prep
from pathlib import Path
import sys

# Add root to sys.path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))

from carin.parser.iso import IsoImage, CarinVolume

def build_italy_mask(geojson_path):
    print("Loading Italy mask...")
    with open(geojson_path, 'r', encoding='utf-8') as f:
        gj = json.load(f)
    # The provided GeoJSON has one feature
    italy_geom = shape(gj['features'][0]['geometry'])
    return prep(italy_geom), italy_geom.bounds

def main():
    parser = argparse.ArgumentParser(description="Extract full display graphics (0x00) for Italy")
    parser.add_argument("--iso", default="dataset/NAV_DB_21708.ISO", help="Path to ISO")
    parser.add_argument("--mask", default="italy_simplified.geojson", help="Mask GeoJSON")
    parser.add_argument("--out", default="italy_graphics.gpkg", help="Output GeoPackage")
    args = parser.parse_args()

    # Modugno BBox
    # min_lon, min_lat, max_lon, max_lat = italy_bounds
    min_lon, min_lat, max_lon, max_lat = 16.74, 41.06, 16.80, 41.11
    
    vol = CarinVolume(IsoImage(args.iso))
    
    schema = {
        'geometry': 'LineString',
        'properties': {'sector': 'int', 'line_id': 'int'}
    }

    # SQLite Pragmas for massive insert speedup
    os.environ['OGR_SQLITE_PRAGMA'] = 'synchronous=OFF,journal_mode=WAL,cache_size=100000'

    print("Scanning volume for 0x00 map blocks intersecting Italy...")
    
    K = 2000000000 / 360.0
    sx, sy = 64.0, 64.0
    
    total_lines = 0
    total_blocks = 0
    batch = []
    BATCH_SIZE = 50_000

    with fiona.open(
        args.out,
        mode="w",
        driver="GPKG",
        crs="EPSG:4326",
        schema=schema
    ) as layer:
        
        for b in vol.walk():
            if b.type != 0x00 or b.comp != 1:
                continue
                
            try:
                blk = vol.block(b.sector)
                data = blk.data
                if not data: continue
                
                # Unpack block Bounding Box
                xmin, ymin, xmax, ymax = struct.unpack_from('>iiii', data, 0x44)
                
                # Fast AABB check first
                b_min_lon = (xmin / K) - 30.0
                b_min_lat = (ymin / K)
                b_max_lon = (xmax / K) - 30.0
                b_max_lat = (ymax / K)
                
                if (b_max_lon < min_lon or b_min_lon > max_lon or
                    b_max_lat < min_lat or b_min_lat > max_lat):
                    continue
                    
                # Exact shape intersection bypassed for Modugno
                # b_box = box(b_min_lon, b_min_lat, b_max_lon, b_max_lat)
                # if not italy_prep.intersects(b_box):
                #     continue
                    
                # IT INTERSECTS! Extract geometries
                total_blocks += 1
                base_d = 8
                s4_off, s4_cnt = struct.unpack_from(">HH", data, base_d + 4 * 4)
                s7_off, s7_cnt = struct.unpack_from(">HH", data, base_d + 7 * 4)
                
                # Dynamic scaling from decoder widths (stored in data[6:8])
                sx, sy = 64.0, 64.0
                
                # 1. Collect all valid S7 start pointers via BSP traversal
                s7_starts = set()
                stack = [0]
                visited = set()
                while stack:
                    node_idx = stack.pop()
                    if node_idx == 0xFFFF or node_idx in visited or node_idx >= s4_cnt:
                        continue
                    visited.add(node_idx)
                    
                    node_off = s4_off + node_idx * 32
                    s7_ptr, left_ptr, right_ptr = struct.unpack_from(">HHH", data, node_off + 4)
                    
                    if s7_ptr != 0xFFFF:
                        s7_idx = (s7_ptr - s7_off) // 6
                        if 0 <= s7_idx < s7_cnt:
                            s7_starts.add(s7_idx)
                            
                    if left_ptr != 0xFFFF:
                        stack.append((left_ptr - s4_off) // 32)
                    if right_ptr != 0xFFFF:
                        stack.append((right_ptr - s4_off) // 32)
                
                starts = sorted(list(s7_starts))
                
                # 2. Extract lines using turtle graphics states
                for i, start_idx in enumerate(starts):
                    end_idx = starts[i+1] if i + 1 < len(starts) else s7_cnt
                    current_line = []
                    
                    for j in range(start_idx, end_idx):
                        x, y, flag = struct.unpack_from(">HHB", data, s7_off + j * 6)
                        
                        abs_x = xmin + x * sx
                        abs_y = ymin + y * sy
                        lon = (abs_x / K) - 30.0
                        lat = (abs_y / K)
                        
                        # Turtle Graphics: bit 0 -> MoveTo (new line)
                        if (flag & 1) or not current_line:
                            if len(current_line) > 1:
                                batch.append({'geometry': {'type': 'LineString', 'coordinates': current_line}, 'properties': {'sector': b.sector, 'line_id': i}})
                                total_lines += 1
                            current_line = [(lon, lat)]
                        else:
                            current_line.append((lon, lat))
                            
                        # Turtle Graphics: bit 1 -> EndOfArray (terminate node)
                        if (flag & 2):
                            break
                            
                    if len(current_line) > 1:
                        batch.append({'geometry': {'type': 'LineString', 'coordinates': current_line}, 'properties': {'sector': b.sector, 'line_id': i}})
                        total_lines += 1
                        
                    if len(batch) >= BATCH_SIZE:
                        layer.writerecords(batch)
                        batch.clear()
                        print(f"  ... exported {total_lines} graphical polylines from {total_blocks} blocks ...")
                                
            except Exception as e:
                # Silently skip corrupted/unsupported blocks for now
                pass
                
        # Write remaining
        if batch:
            layer.writerecords(batch)

    print(f"Done! Exported {total_lines} graphical polylines across {total_blocks} blocks to {args.out}.")

if __name__ == "__main__":
    main()

