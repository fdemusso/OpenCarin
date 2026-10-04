"""Step 1: street-level (0x00) tiles of an area, read in place from a disc -> segment, node, turn and sign tables.

The disc image is only read (`CarinVolume(IsoImage(path))`), never copied. The tiles that cover the
area bounding box are found with the spatial index and parsed with `carin.parser.cf1.tile00.Tile00`;
every field of the 32-byte segment record is kept, so later steps can tabulate any byte.

    uv run --with numpy python examples/06_osm_vs_disc_modugno/01_extract_disc.py [--disc 21708 21734] [--area A ...] [--force]

Writes (dataset/, gzip CSV):
  disc_<disc>_<area>_segments.csv.gz  one row per segment: raw record (hex), decoded fields, node ids, flags, degrees, WKT
  disc_<disc>_<area>_nodes.csv.gz     one row per S5/S6 node: flags, degree, lowest class of its segments, position in the tile
  disc_<disc>_<area>_turns.csv.gz     S10 entries: owner, flag, target, shared node
  disc_<disc>_<area>_signs.csv.gz     S11 signposts and S12 TMC triples per segment
  disc_<disc>_<area>_tiles.csv.gz     tile header words (prolog) and counts
"""
from __future__ import annotations

import argparse
import struct
import sys
import time
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from common import AREAS, DATA, DISCS, length_m, wkt, write_csv

from carin.parser.cf1.tile00 import Tile00
from carin.parser.geometry import VERTEX_SHIFT, road_segments
from carin.parser.house_numbers import segment_house_numbers, tile_block_id
from carin.parser.iso import CarinVolume, IsoImage
from carin.parser.spatial import tiles_at


def tiles_in(vol, bbox, step=0.003) -> set[int]:
    lon0, lat0, lon1, lat1 = bbox
    out, lon = set(), lon0
    while lon <= lon1 + step:
        lat = lat0
        while lat <= lat1 + step:
            out.update(tiles_at(vol, 0, min(lon, lon1), min(lat, lat1)))
            lat += step
        lon += step
    return out


def house_index(vol, disc: str) -> dict:
    """BLOCK_ID of a 0x00 tile -> sector of its 0x04 house-number block (one pass over the disc, cached in dataset/)."""
    import gzip
    import json
    cache = DATA / f"hn_index_{disc}.json.gz"
    if cache.exists():
        return {int(k): v for k, v in json.load(gzip.open(cache, "rt")).items()}
    idx = {}
    for b in vol.walk():
        if b.type == 0x04:
            try:
                idx[tile_block_id(vol.block(b.sector).payload)] = b.sector
            except Exception:
                pass
    json.dump(idx, gzip.open(cache, "wt"))
    return idx


def extract(vol, tile: int, bbox, hn_sector=None):
    blk = vol.block(tile >> 8)
    t = Tile00.parse(blk.payload, vol.layout)
    names = {s["index"]: (s["name"] or "", s["locality"] or "") for s in road_segments(blk.payload, vol.layout)}
    tid = f"{tile:#x}"
    hn = segment_house_numbers(vol.block(hn_sector).payload) if hn_sector else []
    nid = {}
    for sec, lst in ((5, t.nodes5), (6, t.nodes6)):
        for i, nd in enumerate(lst):
            nid[id(nd)] = (sec, i)
    sidx = {id(s): i for i, s in enumerate(t.segs)}
    deg, minclass = Counter(), {}
    for s in t.segs:
        for nd in (s.a, s.b):
            deg[id(nd)] += 1
            minclass[id(nd)] = min(minclass.get(id(nd), 9), s.raw[0x10] & 0x0F)
    fw, fh = t.frame.width >> VERTEX_SHIFT, t.frame.height >> VERTEX_SHIFT
    lon0, lat0, lon1, lat1 = bbox
    segs, turns, signs = [], [], []
    for i, s in enumerate(t.segs):
        poly = t.polyline(s)
        inside = any(lon0 <= x <= lon1 and lat0 <= y <= lat1 for x, y in poly)
        r = s.raw
        name, loc = names.get(i, ("", ""))
        segs.append({
            "id": f"{tid}:{i}", "tile": tid, "idx": i, "name": name, "locality": loc, "in_bbox": int(inside),
            "raw": bytes(r).hex(), "a": "%d:%d" % nid[id(s.a)], "b": "%d:%d" % nid[id(s.b)],
            "speed": r[0x0A] & 0x1F, "b0a_hi": r[0x0A] >> 5, "form": r[0x0B] & 0x0F, "dir": (r[0x0B] >> 4) & 3,
            "toll": (r[0x0B] >> 6) & 1, "b0b_hi": r[0x0B] >> 7, "len": struct.unpack_from(">H", r, 0x0C)[0],
            "cls": r[0x10] & 0x0F, "sub": (r[0x10] >> 4) & 7, "b10_7": r[0x10] >> 7,
            "junc": r[0x11] & 0x0F, "j_hi": r[0x11] >> 4, "b18": r[0x18], "b19": r[0x19],
            "b1c": r[0x1C], "b1d": r[0x1D],
            "hn_scheme": hn[i]["scheme"] if i < len(hn) else "", "hn_has": int(i < len(hn) and (hn[i]["side_a"] is not None or hn[i]["side_b"] is not None)),
            "n_turn": len(s.turns), "n_sign": len(s.signs), "n_tmc": len(s.tmc), "n_toll": len(s.tolls),
            "n_shape": len(s.shape), "shape_flags": "".join(f"{e[4]:x}{e[5]:x}" for e in s.shape),
            "a_flags": s.a.flags, "b_flags": s.b.flags, "a_deg": deg[id(s.a)], "b_deg": deg[id(s.b)],
            "a_edge": int(s.a.sec == 6), "b_edge": int(s.b.sec == 6),
            "a_uv": f"{s.a.u},{s.a.v}", "b_uv": f"{s.b.u},{s.b.v}", "tile_wh": f"{fw},{fh}",
            "geom_len": round(length_m(poly), 1), "wkt": wkt(poly),
        })
        for tid_, tgt, fl in s.turns:
            if isinstance(tgt, int):
                tj, shares = "ext", ""
            else:
                tj = sidx[id(tgt)]
                shares = "".join(c for c, x, y in (("A", s.a, tgt.a), ("B", s.a, tgt.b), ("C", s.b, tgt.a), ("D", s.b, tgt.b)) if x is y)
            turns.append({"owner": f"{tid}:{i}", "target": tj, "flag": fl, "self": int(tj == i), "shares": shares})
        for a_, b_, fl in s.signs:
            signs.append({"seg": f"{tid}:{i}", "kind": "sign", "v0": t.text(a_) or "", "v1": t.text(b_) or "", "fl": fl})
        for tr in s.tmc:
            d, loc_, fl = struct.unpack(">HHH", tr)
            signs.append({"seg": f"{tid}:{i}", "kind": "tmc", "v0": d, "v1": loc_, "fl": fl})
    nodes = []
    for sec, lst in ((5, t.nodes5), (6, t.nodes6)):
        for k, nd in enumerate(lst):
            lon, lat = t.lonlat(nd.u, nd.v)
            nodes.append({"id": f"{tid}:{sec}:{k}", "tile": tid, "sec": sec, "idx": k, "lon": round(lon, 6), "lat": round(lat, 6),
                          "u": nd.u, "v": nd.v, "flags": nd.flags, "deg": deg[id(nd)], "minclass": minclass.get(id(nd), -1),
                          "tile_wh": f"{fw},{fh}", "in_bbox": int(lon0 <= lon <= lon1 and lat0 <= lat <= lat1)})
    hdr = struct.unpack(">%dH" % (len(t.prolog) // 2), t.prolog)
    tiles = [{"tile": tid, "cf": blk.comp, "nseg": len(t.segs), "n5": len(t.nodes5), "n6": len(t.nodes6),
              "n_turn": sum(len(s.turns) for s in t.segs), "n_shape": sum(len(s.shape) for s in t.segs),
              "n_sign": sum(len(s.signs) for s in t.segs), "n_tmc": sum(len(s.tmc) for s in t.segs),
              "groups": ";".join(f"{a}/{b}" for a, b in t.groups), "hdr": " ".join(map(str, hdr))}]
    return segs, nodes, turns, signs, tiles


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--disc", nargs="*", default=list(DISCS))
    ap.add_argument("--area", nargs="*", default=list(AREAS))
    ap.add_argument("--force", action="store_true")
    a = ap.parse_args()
    DATA.mkdir(exist_ok=True)
    for disc in a.disc:
        todo = [ar for ar in a.area if a.force or not (DATA / f"disc_{disc}_{ar}_segments.csv.gz").exists()]
        for ar in a.area:
            if ar not in todo:
                print(f"disc_{disc}_{ar}: exists, skipped")
        if not todo:
            continue
        t0 = time.time()
        vol = CarinVolume(IsoImage(str(DISCS[disc])))
        vol.calibrate()
        hn = house_index(vol, disc)
        print(f"disc {disc}: {len(hn)} house-number blocks indexed")
        for ar in todo:
            tiles = sorted(tiles_in(vol, AREAS[ar]))
            out = {k: [] for k in ("segments", "nodes", "turns", "signs", "tiles")}
            bad = 0
            for tl in tiles:
                try:
                    res = extract(vol, tl, AREAS[ar], hn.get(tl))
                except Exception as e:                 # a tile the model does not parse: counted, never silent
                    bad += 1
                    print(f"  tile {tl:#x}: {type(e).__name__} {e}")
                    continue
                for k, rows in zip(out, res):
                    out[k] += rows
            for k, rows in out.items():
                write_csv(DATA / f"disc_{disc}_{ar}_{k}.csv.gz", rows)
            print(f"disc {disc} / {ar}: {len(tiles)} tiles ({bad} unparsed), {len(out['segments'])} segments, "
                  f"{len(out['nodes'])} nodes, {len(out['turns'])} S10 entries ({time.time() - t0:.0f} s)")


if __name__ == "__main__":
    main()
