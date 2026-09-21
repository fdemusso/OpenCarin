# Example 1: Extracting a Country's Road Network

This example demonstrates how to extract the entire road network (the graph of nodes and edges) for a specific country by leveraging a standard WGS84 GeoJSON file and our pre-computed spatial index.

## Background
As documented in `docs/carindb/03-road-network.md`, the CARIN database does not use explicit "Country IDs" within the `0x0E` road network blocks. Instead, the network is broken down geographically into thousands of "parcels" (tiles).
To extract a specific country, we must use a **spatial query**:
1. Take a geometric polygon of the country (e.g., Italy).
2. Convert the polygon's coordinates from WGS84 (lon/lat) to CARIN's internal coordinate system (`X = (lon + 30) * K`, `Y = lat * K`).
3. Intersect this projected polygon against the spatial index (`parcel_index.npz`) of all `0x0E` parcels.
4. Obtain the exact list of sectors (`BLOCK_ID`) that contain the roads for that country.

## Prerequisites
- The `parcel_index.npz` must be built. If it does not exist, run `python scripts/routing/find_parcel.py` (which will take ~30 seconds to scan the ISO).
- `shapely` and `numpy` must be installed (`uv pip install shapely numpy`).
- A simplified GeoJSON of the target country (e.g. `italy_simplified.geojson`).

## Usage
Run the script passing the path to the GeoJSON:

```bash
python extract_country_blocks.py --geojson ../../italy_simplified.geojson --out italy_sectors.txt
```

### What the script does:
1. Loads the `.npz` index containing the Bounding Boxes of all 74,247 `0x0E` blocks.
2. Projects the GeoJSON coordinates to CARIN's coordinate space.
3. **Broad-phase filtering**: Quickly finds all parcels whose bounding boxes overlap the country's bounding box.
4. **Narrow-phase filtering**: Uses Shapely to test exact intersection between the country's complex polygon and the parcel's bounding box.
5. Saves the final list of matching sectors to a text file.

You can then pass the output `italy_sectors.txt` to the `cf1` parser to extract the `0x0E` nodes and edges for the entire country!
