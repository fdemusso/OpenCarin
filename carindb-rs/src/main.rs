mod iso;
mod cf1;
mod extract;

use std::fs::File;
use std::io::{self, Write};
use std::time::Instant;
use geojson::FeatureCollection;
use std::env;

fn main() -> io::Result<()> {
    let args: Vec<String> = env::args().collect();
    let iso_path = if args.len() > 1 { &args[1] } else { "../dataset/NAV_DB_21708.ISO" };
    let out_path = if args.len() > 2 { &args[2] } else { "italy_graphics.geojson" };

    println!("Loading ISO from: {}", iso_path);
    let start_time = Instant::now();

    let image = iso::IsoImage::new(iso_path)?;
    let vol = iso::CarinVolume::new(image)?;

    println!("Volume loaded. db_rel = {}, blocks = {}", vol.db_rel, vol.layout().len());

    let min_lon = 16.74;
    let min_lat = 41.06;
    let max_lon = 16.80;
    let max_lat = 41.11;
    let k = 2_000_000_000.0 / 360.0;

    let mut total_blocks = 0;
    let mut total_lines = 0;
    let mut all_features = Vec::new();

    println!("Scanning volume for 0x00 map blocks intersecting BBox...");

    for blk in vol.iter_blocks() {
        if blk.btype != 0x00 || blk.comp != 1 {
            continue;
        }

        let decoded_data = match blk.comp {
            0 => blk.raw.to_vec(),
            1 => cf1::decode_type00(blk.raw, vol.layout(), vol.db_rel, (blk.usize_ as usize) * 512),
            _ => continue,
        };

        if decoded_data.len() < 0x48 { continue; }

        let xmin = i32::from_be_bytes(decoded_data[0x44..0x48].try_into().unwrap()) as f64;
        let ymin = i32::from_be_bytes(decoded_data[0x48..0x4C].try_into().unwrap()) as f64;
        let xmax = i32::from_be_bytes(decoded_data[0x4C..0x50].try_into().unwrap()) as f64;
        let ymax = i32::from_be_bytes(decoded_data[0x50..0x54].try_into().unwrap()) as f64;

        let b_min_lon = (xmin / k) - 30.0;
        let b_min_lat = ymin / k;
        let b_max_lon = (xmax / k) - 30.0;
        let b_max_lat = ymax / k;

        if b_max_lon < min_lon || b_min_lon > max_lon || b_max_lat < min_lat || b_min_lat > max_lat {
            continue;
        }

        total_blocks += 1;
        let mut features = extract::extract_linestrings(&decoded_data, blk.sector);
        total_lines += features.len();
        all_features.append(&mut features);

        if total_blocks % 10 == 0 {
            println!("  ... exported {} graphical polylines from {} blocks ...", total_lines, total_blocks);
        }
    }

    println!("Extraction done. Total exported: {} polylines across {} blocks.", total_lines, total_blocks);
    println!("Writing GeoJSON to {}...", out_path);

    let feature_collection = FeatureCollection {
        bbox: None,
        features: all_features,
        foreign_members: None,
    };

    let mut out_file = File::create(out_path)?;
    let geojson_str = feature_collection.to_string();
    out_file.write_all(geojson_str.as_bytes())?;

    println!("Completed in {:?}", start_time.elapsed());
    Ok(())
}