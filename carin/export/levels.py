"""The coarse levels 0x01-0x03 as an export layer, and the level each street edge reaches.

`0x03`, `0x02` and `0x01` hold the main-road network with minor junctions merged: each coarse
segment is the shortest street path of its own class between two coarse nodes, and its length is
the sum of the street lengths (03-road-network.md §6.7, "Levels"). So a coarse segment is not a new
road; it is a name for a run of street edges. `match_levels` finds that run the way it was made:
both coarse nodes lie on street nodes, and the shortest path of the same road class between them
(following the one-way directions) that is as long as the coarse segment is the run. The highest
level it reaches goes into `Edge.level` (1 = still on `0x01`, 2 = up to `0x02`, 3 = up to `0x03`,
0 = street level only). Matching by shape does not work: a coarse shape keeps only a subset of the
street shape points, so its chord leaves the street edge by up to 10 m on curves.
"""
from __future__ import annotations

import heapq
import math
from collections import defaultdict
from dataclasses import dataclass
from typing import Dict, Iterable, List, Tuple

from .graph import DIR_BOTH, DIR_FORWARD, DIR_REVERSE, ONEWAY_NAMES, Graph, polyline_m
from .tiles import TileData


@dataclass
class CoarseEdge:
    id: int
    level: int                      # BLOCK_TYPE of the tile: 1, 2 or 3
    tile: int
    index: int
    coords: List[Tuple[float, float]]
    road_class: int
    form: int
    direction: int
    toll: bool
    junction: int
    speed_code: int
    built_up: bool
    length_m: float

    @property
    def oneway(self) -> str:
        return ONEWAY_NAMES[self.direction]


def build_coarse(tiles: Iterable[TileData]) -> List[CoarseEdge]:
    out: List[CoarseEdge] = []
    for t in tiles:
        if not t.level:
            continue
        for e in t.edges:
            out.append(CoarseEdge(
                id=len(out), level=t.level, tile=e.sector, index=e.index, coords=e.coords,
                road_class=e.class_byte & 0x0F, form=e.form_byte & 0x0F,
                direction=(e.form_byte >> 4) & 3, toll=bool(e.form_byte & 0x40),
                junction=e.junction_byte & 0x0F, speed_code=e.speed_byte & 0x1F,
                built_up=bool(e.speed_byte & 0x80),
                length_m=float(e.length_m) if e.length_m else polyline_m(e.coords)))
    return out


_NODE_TOL_M = 1.0                   # a coarse node sits exactly on a street node
_LENGTH_TOL_M = 2.0                 # stored lengths are metres; the sums agree within 1 m on the CD


def match_levels(graph: Graph, coarse: List[CoarseEdge]) -> Dict[str, int]:
    """Set `Edge.level` from the street paths the coarse segments are made of.

    Returns the number of street edges per level ("0".."3") and how the coarse segments fared:
    `segments_resolved`, `segments_no_node` (an end is not on a street node of the exported window,
    which happens at the window border), `segments_no_path` and `segments_length_off` (a path of
    the right class exists but its length differs from the stored one by more than 2 m)."""
    nodes = defaultdict(list)
    for n in graph.nodes:
        nodes[(round(n.lon * 1e5), round(n.lat * 1e5))].append(n)

    def at(p) -> List[int]:
        cx, cy = round(p[0] * 1e5), round(p[1] * 1e5)
        k = math.cos(math.radians(p[1]))
        return [n.id for i in (-1, 0, 1) for j in (-1, 0, 1) for n in nodes.get((cx + i, cy + j), ())
                if math.hypot((n.lon - p[0]) * 111320 * k, (n.lat - p[1]) * 110540) <= _NODE_TOL_M]

    out = defaultdict(list)                 # node -> (edge, other node) in the direction of travel
    for e in graph.edges:
        if e.direction in (DIR_BOTH, DIR_FORWARD):
            out[e.u].append((e.id, e.v))
        if e.direction in (DIR_BOTH, DIR_REVERSE):
            out[e.v].append((e.id, e.u))

    stat = {"segments_resolved": 0, "segments_no_node": 0, "segments_no_path": 0,
            "segments_length_off": 0}
    for e in graph.edges:
        e.level = 0
    for c in coarse:
        a, b = at(c.coords[0]), at(c.coords[-1])
        if not a or not b:
            stat["segments_no_node"] += 1
            continue
        src, dst = (b, set(a)) if c.direction == DIR_REVERSE else (a, set(b))
        limit = c.length_m + _LENGTH_TOL_M
        dist = {n: 0.0 for n in src}
        prev: Dict[int, Tuple[int, int]] = {}
        heap = [(0.0, n) for n in src]
        end = None
        while heap:
            d, u = heapq.heappop(heap)
            if d > dist.get(u, math.inf):
                continue
            if u in dst:
                end = u
                break
            for eid, v in out[u]:
                e = graph.edges[eid]
                nd = d + e.length_m
                if e.road_class == c.road_class and nd <= limit and nd < dist.get(v, math.inf):
                    dist[v], prev[v] = nd, (u, eid)
                    heapq.heappush(heap, (nd, v))
        if end is None:
            stat["segments_no_path"] += 1
            continue
        if abs(dist[end] - c.length_m) > _LENGTH_TOL_M:
            stat["segments_length_off"] += 1
            continue
        stat["segments_resolved"] += 1
        n = end
        while n in prev:
            n, eid = prev[n]
            e = graph.edges[eid]
            e.level = c.level if not e.level else min(e.level, c.level)
    counts = {str(lv): sum(1 for e in graph.edges if e.level == lv) for lv in range(4)}
    return {**counts, **stat}


def class_rule_level(road_class: int) -> int:
    """The level the documented rule gives a street class: `0x03` keeps classes 0-2, `0x02` 0-1,
    `0x01` class 0; 0 = street level only."""
    return 1 if road_class == 0 else 2 if road_class == 1 else 3 if road_class == 2 else 0
