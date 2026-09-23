use std::collections::HashSet;
use geojson::{Feature, Geometry, Value as GeoValue};
use serde_json::Map;

pub fn extract_linestrings(data: &[u8], block_sector: u32) -> Vec<Feature> {
    if data.len() < 0x48 { return vec![]; }

    // Read bounding box
    let xmin = i32::from_be_bytes(data[0x44..0x48].try_into().unwrap()) as f64;
    let ymin = i32::from_be_bytes(data[0x48..0x4C].try_into().unwrap()) as f64;
    
    let base_d = 8;
    // S4 section
    let s4_off = u16::from_be_bytes(data[base_d + 4*4..base_d + 4*4 + 2].try_into().unwrap()) as usize;
    let s4_cnt = u16::from_be_bytes(data[base_d + 4*4 + 2..base_d + 4*4 + 4].try_into().unwrap()) as usize;
    
    // S7 section
    let s7_off = u16::from_be_bytes(data[base_d + 7*4..base_d + 7*4 + 2].try_into().unwrap()) as usize;
    let s7_cnt = u16::from_be_bytes(data[base_d + 7*4 + 2..base_d + 7*4 + 4].try_into().unwrap()) as usize;

    let mut s7_starts = HashSet::new();
    let mut stack = vec![0];
    let mut visited = HashSet::new();

    while let Some(node_idx) = stack.pop() {
        if node_idx == 0xFFFF || !visited.insert(node_idx) || node_idx >= s4_cnt {
            continue;
        }

        let node_off = s4_off + node_idx * 32;
        if node_off + 10 > data.len() { continue; }

        let s7_ptr = u16::from_be_bytes(data[node_off+4..node_off+6].try_into().unwrap());
        let left_ptr = u16::from_be_bytes(data[node_off+6..node_off+8].try_into().unwrap());
        let right_ptr = u16::from_be_bytes(data[node_off+8..node_off+10].try_into().unwrap());

        if s7_ptr != 0xFFFF {
            let s7_idx = (s7_ptr as usize).saturating_sub(s7_off) / 6;
            if s7_idx < s7_cnt {
                s7_starts.insert(s7_idx);
            }
        }
        if left_ptr != 0xFFFF {
            stack.push((left_ptr as usize).saturating_sub(s4_off) / 32);
        }
        if right_ptr != 0xFFFF {
            stack.push((right_ptr as usize).saturating_sub(s4_off) / 32);
        }
    }

    let mut starts: Vec<usize> = s7_starts.into_iter().collect();
    starts.sort_unstable();

    let mut features = Vec::new();
    let k = 2_000_000_000.0 / 360.0;
    let sx = 64.0;
    let sy = 64.0;

    for (i, &start_idx) in starts.iter().enumerate() {
        let end_idx = starts.get(i+1).copied().unwrap_or(s7_cnt);
        let mut current_line = Vec::new();

        for j in start_idx..end_idx {
            let rec_off = s7_off + j * 6;
            if rec_off + 5 >= data.len() { break; }

            let x = u16::from_be_bytes(data[rec_off..rec_off+2].try_into().unwrap()) as f64;
            let y = u16::from_be_bytes(data[rec_off+2..rec_off+4].try_into().unwrap()) as f64;
            let flag = data[rec_off+4];

            let abs_x = xmin + x * sx;
            let abs_y = ymin + y * sy;
            let lon = (abs_x / k) - 30.0;
            let lat = abs_y / k;

            if (flag & 1) != 0 || current_line.is_empty() {
                if current_line.len() > 1 {
                    features.push(create_feature(&current_line, block_sector, i as u32));
                }
                current_line = vec![vec![lon, lat]];
            } else {
                current_line.push(vec![lon, lat]);
            }

            if (flag & 2) != 0 {
                break;
            }
        }

        if current_line.len() > 1 {
            features.push(create_feature(&current_line, block_sector, i as u32));
        }
    }

    features
}

fn create_feature(coords: &[Vec<f64>], sector: u32, line_id: u32) -> Feature {
    let geometry = Geometry::new(GeoValue::LineString(coords.to_vec()));
    let mut properties = Map::new();
    properties.insert("sector".to_string(), serde_json::Value::Number(sector.into()));
    properties.insert("line_id".to_string(), serde_json::Value::Number(line_id.into()));
    Feature {
        bbox: None,
        geometry: Some(geometry),
        id: None,
        properties: Some(properties),
        foreign_members: None,
    }
}
