import argparse
import os
import sys
import struct
import json
import fiona
from shapely.geometry import shape, box
from shapely.prepared import prep
from pathlib import Path
from multiprocessing import Pool, cpu_count

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from carin.parser.iso import IsoImage, CarinVolume

italy_prep = None
min_lon, min_lat, max_lon, max_lat = 0, 0, 0, 0
K = 2000000000 / 360.0

def init_worker(mask_path):
    global italy_prep, min_lon, min_lat, max_lon, max_lat
    with open(mask_path, 'r', encoding='utf-8') as f:
        gj = json.load(f)
    italy_geom = shape(gj['features'][0]['geometry'])
    italy_prep = prep(italy_geom)
    min_lon, min_lat, max_lon, max_lat = italy_geom.bounds

def process_sector(sector):
    try:
        vol = CarinVolume(IsoImage('dataset/NAV_DB_21708.ISO'))
        blk = vol.block(sector)
        data = blk.data
        if not data: return []
        
        xmin, ymin, xmax, ymax = struct.unpack_from('>iiii', data, 0x44)
        b_min_lon = (xmin / K) - 30.0
        b_min_lat = (ymin / K)
        b_max_lon = (xmax / K) - 30.0
        b_max_lat = (ymax / K)
        
        if (b_max_lon < min_lon or b_min_lon > max_lon or
            b_max_lat < min_lat or b_min_lat > max_lat):
            return []
            
        b_box = box(b_min_lon, b_min_lat, b_max_lon, b_max_lat)
        if not italy_prep.intersects(b_box):
            return []
            
        sx, sy = 64.0, 64.0
            
        base_d = 8
        s4_off, s4_cnt = struct.unpack_from(">HH", data, base_d + 4 * 4)
        s7_off, s7_cnt = struct.unpack_from(">HH", data, base_d + 7 * 4)
        
        points = []
        for i in range(s7_cnt):
            x, y, _ = struct.unpack_from(">HHB", data, s7_off + i * 6)
            lon = ((xmin + x * sx) / K) - 30.0
            lat = ((ymin + y * sy) / K)
            points.append((lon, lat))
            
        polylines = []
        for i in range(s4_cnt):
            ptr_s7 = struct.unpack_from(">H", data, s4_off + i * 32 + 4)[0]
            if i < s4_cnt - 1:
                next_ptr = struct.unpack_from(">H", data, s4_off + (i + 1) * 32 + 4)[0]
            else:
                next_ptr = s7_off + s7_cnt * 6
                
            if ptr_s7 >= s7_off and next_ptr >= ptr_s7:
                start_idx = (ptr_s7 - s7_off) // 6
                end_idx = (next_ptr - s7_off) // 6
                line_coords = points[start_idx:end_idx]
                if len(line_coords) > 1:
                    polylines.append({
                        'geometry': {'type': 'LineString', 'coordinates': line_coords},
                        'properties': {'sector': sector, 'line_id': i}
                    })
        return polylines
    except Exception:
        return []

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--iso", default="dataset/NAV_DB_21708.ISO")
    parser.add_argument("--mask", default="italy_simplified.geojson")
    parser.add_argument("--out", default="italy_graphics_v2.gpkg")
    args = parser.parse_args()

    vol = CarinVolume(IsoImage(args.iso))
    sectors = [b.sector for b in vol.walk() if b.type == 0x00 and b.comp == 1]
    
    schema = {'geometry': 'LineString', 'properties': {'sector': 'int', 'line_id': 'int'}}
    os.environ['OGR_SQLITE_PRAGMA'] = 'synchronous=OFF,journal_mode=WAL,cache_size=100000'

    print(f"Scanning {len(sectors)} blocks across {cpu_count()} CPU cores...")
    
    total_lines = 0
    total_blocks = 0
    batch = []
    
    with fiona.open(args.out, "w", driver="GPKG", crs="EPSG:4326", schema=schema) as layer:
        with Pool(cpu_count(), initializer=init_worker, initargs=(args.mask,)) as pool:
            for i, result in enumerate(pool.imap_unordered(process_sector, sectors, chunksize=100)):
                if i % 1000 == 0:
                    print(f"Progress: {i}/{len(sectors)} blocks scanned...")
                if not result:
                    continue
                
                total_blocks += 1
                total_lines += len(result)
                batch.extend(result)
                
                if len(batch) >= 50_000:
                    layer.writerecords(batch)
                    batch.clear()
                    print(f"  ... flushed {total_lines} total lines ...")
                    
            if batch:
                layer.writerecords(batch)

    print(f"Done! Extracted {total_lines} graphic polylines from {total_blocks} Italy blocks.")

if __name__ == "__main__":
    main()
