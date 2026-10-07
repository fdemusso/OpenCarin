"""Export the road network of a CARiN disc (BLOCK_TYPE 0x00-0x04) as a routable network with layers.

    python3 scripts/routing/export_routable.py /path/to/carindb \
        --bbox 5.0 51.0 6.0 51.6 --out build/limburg --formats gpkg,csv,osm

`--bbox LON0 LAT0 LON1 LAT1` selects tiles by their header bounds (no decoding of other tiles).
The street level (`0x00`) gives the routable graph, with the section 11 signposts (destination and
route number per segment and direction) and the section 13 marks (a pair of segments at one node;
meaning open, see 03-road-network.md); `--layers` adds, from the same region:

  house_numbers  per-segment numbers of the linked `0x04` blocks (left / right, start / end)
  coarse         the coarse levels `0x01`-`0x03` as their own layer, and the highest level each street
                 edge reaches (`edges.level`: 1 = `0x01`, 2 = `0x02`, 3 = `0x03`, 0 = street only)

Outputs: <out>.gpkg (nodes, edges, restrictions, signposts, marks, coarse_edges), CSV files with the
same tables, <out>.osm (OSM XML for osrm-extract; for Valhalla run `osmium cat`), and a stats printout.
Tiles are decoded by `--jobs` worker processes (default: all cores). Reads ISO images and bare
`carindb` files; the sector unit is probed unless `--sector-size` is given. Stdlib only.
"""
from __future__ import annotations

import argparse
import dataclasses
import multiprocessing as mp
import os
import sys
import time
import zlib
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))

from carin.export import build_graph, parse_tile                      # noqa: E402
from carin.export.cost import CostModel                                  # noqa: E402
from carin.export.graph import attach_house_numbers, components       # noqa: E402
from carin.export.levels import build_coarse, class_rule_level, match_levels  # noqa: E402
from carin.export.writers import write_csv, write_gpkg, write_osm_xml  # noqa: E402
from carin.parser.geometry import header_bounds                       # noqa: E402
from carin.parser.house_numbers import segment_house_numbers, tile_block_id  # noqa: E402
from carin.parser.iso import BLOCK_HDR_SIZE, CarinVolume, open_image    # noqa: E402

LAYERS = ("house_numbers", "coarse")
COARSE_MARGIN = 0.05                # degrees around the bbox kept from the (large) coarse tiles

_vol = None
_bbox = None
_wanted = None


def open_volume(path: str, sector_size) -> CarinVolume:
    vol = CarinVolume(open_image(path), sector_size=sector_size)
    vol.calibrate()
    return vol


def _init(path, sector_size, bbox, wanted):
    global _vol, _bbox, _wanted
    _vol, _bbox, _wanted = open_volume(path, sector_size), bbox, wanted


def _plain(vol: CarinVolume, sector: int, length: int, comp: int) -> bytes:
    """Decompressed block when CF is 0 or 2 (the prologue of a CF=1 block is plain too)."""
    raw = vol.read_sectors(sector, length)
    if comp == 2:
        return raw[:BLOCK_HDR_SIZE] + zlib.decompress(raw[BLOCK_HDR_SIZE:])
    return raw


def _tile_job(task):
    """(sector, TileData | None | error text) for one 0x00-0x03 block; None outside the bbox."""
    sector, length, comp, btype = task
    try:
        hb = header_bounds(_plain(_vol, sector, length, comp), _vol.layout)
        if hb is None:
            return sector, None
        lon0, lat0, lon1, lat1 = hb
        b = _bbox
        if lon1 < b[0] or lon0 > b[2] or lat1 < b[1] or lat0 > b[3]:
            return sector, None
        return sector, parse_tile(sector, _vol.block(sector).payload, _vol.layout, level=btype)
    except Exception as e:  # noqa: BLE001
        return sector, f"{e!r}"


def _hn_job(task):
    """(tile sector, records) for a 0x04 block that belongs to one of the selected street tiles."""
    try:
        data = _plain(_vol, *task)
        link = tile_block_id(data) >> 8
        if link in _wanted:
            return link, segment_house_numbers(data)
    except Exception:  # noqa: BLE001
        pass
    return None


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("path")
    ap.add_argument("--sector-size", type=int, default=None,
                    help="CARINdb sector unit in bytes (512 or 2048); probed from the data if omitted")
    ap.add_argument("--bbox", type=float, nargs=4, metavar=("LON0", "LAT0", "LON1", "LAT1"),
                    required=True)
    ap.add_argument("--out", required=True, help="output prefix")
    ap.add_argument("--formats", default="gpkg,csv,osm")
    ap.add_argument("--layers", default=",".join(LAYERS),
                    help=f"comma list of {', '.join(LAYERS)} ('none' for the street graph only)")
    ap.add_argument("--speed-model", default=None,
                    help="cost-model JSON (carin.export.cost.CostModel): effective speeds for maxspeed / model_kmh")
    ap.add_argument("--jobs", type=int, default=os.cpu_count() or 1,
                    help="worker processes for tile decoding (default: all cores)")
    ap.add_argument("--max-tiles", type=int, default=0, help="stop after N street tiles (0 = all)")
    a = ap.parse_args()
    layers = set() if a.layers == "none" else set(a.layers.split(","))
    if layers - set(LAYERS):
        ap.error(f"unknown layer(s): {', '.join(sorted(layers - set(LAYERS)))}")

    vol = open_volume(a.path, a.sector_size)
    print(f"DB-REL={vol.db_rel} subrel={vol.subrel} sector_size={vol.sector_size} jobs={a.jobs}",
          flush=True)
    wanted_types = {0} | ({1, 2, 3} if "coarse" in layers else set())
    blocks = [b for b in vol.walk()
              if b.type in wanted_types or (b.type == 4 and "house_numbers" in layers)]
    tile_tasks = [(b.sector, b.length, b.comp, b.type) for b in blocks if b.type in wanted_types]
    hn_tasks = [(b.sector, b.length, b.comp) for b in blocks if b.type == 4 and b.comp in (0, 2)]
    print(f"blocks to look at: {len(tile_tasks)} tiles, {len(hn_tasks)} house-number blocks", flush=True)

    t0 = time.time()
    street, coarse_tiles, failed, done = [], [], 0, 0
    with mp.Pool(a.jobs, initializer=_init, initargs=(a.path, a.sector_size, a.bbox, None)) as pool:
        for sector, td in pool.imap_unordered(_tile_job, tile_tasks, chunksize=32):
            done += 1
            if isinstance(td, str):
                failed += 1
                print(f"  tile {sector}: {td}", flush=True)
            elif td is not None:
                (street if td.level == 0 else coarse_tiles).append(td)
            if done % 2000 == 0:
                print(f"  {done}/{len(tile_tasks)} blocks scanned, {len(street)} street tiles "
                      f"({time.time() - t0:.0f}s)", flush=True)
    street.sort(key=lambda t: t.sector)             # deterministic ids whatever the worker order
    coarse_tiles.sort(key=lambda t: (t.level, t.sector))
    if a.max_tiles:
        street = street[:a.max_tiles]
    print(f"tiles selected: {len(street)} street, {len(coarse_tiles)} coarse; failed: {failed}; "
          f"scanned: {len(tile_tasks)} ({time.time() - t0:.0f}s)", flush=True)

    g = build_graph(street)
    if "house_numbers" in layers and hn_tasks:
        wanted = {t.sector for t in street}
        by_tile = {}
        with mp.Pool(a.jobs, initializer=_init, initargs=(a.path, a.sector_size, a.bbox, wanted)) as pool:
            for res in pool.imap_unordered(_hn_job, hn_tasks, chunksize=64):
                if res:
                    by_tile[res[0]] = res[1]
        attach_house_numbers(g, by_tile)
        print(f"house numbers: 0x04 blocks for {len(by_tile)} of {len(wanted)} street tiles", flush=True)

    coarse = []
    if "coarse" in layers:
        b = a.bbox
        keep = [c for c in build_coarse(coarse_tiles)
                if any(b[0] - COARSE_MARGIN <= x <= b[2] + COARSE_MARGIN
                       and b[1] - COARSE_MARGIN <= y <= b[3] + COARSE_MARGIN for x, y in c.coords)]
        coarse = [dataclasses.replace(c, id=i) for i, c in enumerate(keep)]
        empty = [t.sector for t in coarse_tiles if not t.edges]
        skipped = sum(t.skipped for t in coarse_tiles)
        print(f"coarse tiles: {len(coarse_tiles)}, without any segment: {len(empty)}, "
              f"segment records skipped by the sanity guards: {skipped}")
        counts = match_levels(g, coarse)
        g.stats["coarse_edges"] = len(coarse)
        print(f"coarse edges kept: {len(coarse)} "
              f"({', '.join(f'0x0{lv}: {sum(1 for c in coarse if c.level == lv)}' for lv in (1, 2, 3))})")
        print(f"  street edges by the highest level they reach: "
              f"{ {k: counts[k] for k in '0123'} }")
        print(f"  coarse segments: resolved to a street path {counts['segments_resolved']}, "
              f"an end outside the exported street tiles {counts['segments_no_node']}, "
              f"no path {counts['segments_no_path']}, length differs {counts['segments_length_off']}")
        agree = sum(1 for e in g.edges if e.level == class_rule_level(e.road_class))
        print(f"  agree with the class rule (0x03: classes 0-2, 0x02: 0-1, 0x01: 0): "
              f"{agree}/{len(g.edges)} ({100 * agree / max(1, len(g.edges)):.1f}%)")

    for k, v in g.stats.items():
        print(f"  {k}: {v}")
    ratios = sorted(e.length_m / e.geom_m for e in g.edges if e.geom_m > 1)
    if ratios:
        print(f"  stored/geometry length ratio: median {ratios[len(ratios)//2]:.3f} "
              f"(p5 {ratios[len(ratios)//20]:.3f}, p95 {ratios[-len(ratios)//20-1]:.3f})")
    comps = components(g)
    if comps:
        print(f"  components: {len(comps)}, largest {len(comps[0])} nodes "
              f"({100*len(comps[0])/len(g.nodes):.1f}%), singletons "
              f"{sum(1 for c in comps if len(c) == 1)}")
    cars = [e for e in g.edges if e.car_ok]
    print(f"  car-passable edges: {len(cars)} ({100*len(cars)/max(1,len(g.edges)):.1f}%), "
          f"one-way: {sum(1 for e in cars if e.direction in (1, 2))}, "
          f"roundabout: {sum(1 for e in cars if e.roundabout)}, toll: {sum(1 for e in cars if e.toll)}")

    model = CostModel.load(a.speed_model) if a.speed_model else CostModel()
    fmts = set(a.formats.split(","))
    Path(a.out).parent.mkdir(parents=True, exist_ok=True)
    if "gpkg" in fmts:
        write_gpkg(g, a.out + ".gpkg", coarse)
    if "csv" in fmts:
        write_csv(g, a.out, model, coarse)
    if "osm" in fmts:
        write_osm_xml(g, a.out + ".osm", model)
    print("written:", ", ".join(sorted(fmts)), "->", a.out)
    return 0


if __name__ == "__main__":
    sys.exit(main())
