"""Parse one decoded `0x00` street tile into nodes, segments and forbidden turns.

Field meanings are the ones in docs/carindb/03-road-network.md §6.7 (segment record
section 4, nodes sections 5/6, forbidden turns section 10). This module only reads; it
does not decide how the pieces join across tiles (see graph.py).
"""
from __future__ import annotations

import struct
from dataclasses import dataclass, field
from typing import Dict, List, Optional, Tuple

from ..parser.cf1.constants import (T_REC_S4, T_REC_S5, T_REC_S6, T_REC_S7, T_REC_S10, T_REC_S11,
                                    T_REC_S13, T_TAIL_S4)
from ..parser.geometry import VERTEX_SHIFT, _names, _sections, _string, tile_frame

NodeKey = Tuple[int, int]          # (tile sector, in-block byte offset)


@dataclass
class RawNode:
    key: NodeKey
    lon: float
    lat: float
    flags: int                      # +6: bits 15-14 = highest level reached (3 = street only)
    twin: Optional[NodeKey] = None  # section 6 only: node of the neighbouring tile


@dataclass
class RawRestriction:
    target_index: Optional[int]     # segment index in the same tile, None if unresolved
    flag: int                       # 0 = at owner's start node, 1 = at end node, 2/3 = other
    via: NodeKey                    # owner's start (flag 0) or end node (flag 1)


@dataclass
class RawSignpost:
    destination: Optional[str]      # S11 entry, u16 text pointer (None if it does not resolve)
    route: Optional[str]            # u16 route-number text pointer, 0 = none
    flag: int                       # 0 = for travel along the stored direction, 1 = against it


@dataclass
class RawMark:
    """One section 13 entry: a (owner, target) pair of segments at one of the owner's nodes."""
    target_index: Optional[int]
    flag: int                       # 0x1000 = owner's start node, 0x3000 = owner's end node
    node: Optional[NodeKey]         # that node, None for other flag values


@dataclass
class RawEdge:
    sector: int
    index: int
    start: NodeKey
    end: NodeKey
    coords: List[Tuple[float, float]]
    name: Optional[str]
    locality: Optional[str]
    speed_byte: int                 # +0x0A
    form_byte: int                  # +0x0B
    length_m: int                   # +0x0C
    bearing_start: int              # +0x0E, 1/256 turn
    bearing_end: int                # +0x0F
    class_byte: int                 # +0x10
    junction_byte: int              # +0x11
    slip_byte: int                  # +0x18 (0 when the record has no such byte)
    restrictions: List[RawRestriction] = field(default_factory=list)
    signposts: List[RawSignpost] = field(default_factory=list)
    marks: List[RawMark] = field(default_factory=list)


@dataclass
class TileData:
    sector: int
    nodes: Dict[NodeKey, RawNode]
    edges: List[RawEdge]
    skipped: int = 0                # segment records dropped by the sanity guards
    level: int = 0                  # BLOCK_TYPE: 0 street level, 1-3 coarse levels


def _coarse_rec4(data: bytes, secs, table: dict) -> int:
    """S4 record size of a coarse tile: `T[0x08]` (32) is the street size; the coarse tiles of the
    CD checked (DB-REL 34) hold 26-byte records, and one sentinel record after the `n4` counted
    ones. The next section starts at the next 4-byte boundary, so the size is the one whose
    `n4 + 1` records end just before the next section (9 of 9 tiles listed in full: 6 exact, 3 with
    two bytes of padding)."""
    s4, n4 = secs[4]
    nxt = min((off for k, (off, n) in enumerate(secs) if k != 4 and n and off > s4), default=0)
    for rec in (26, *range(0x14, 0x21)):
        end = s4 + rec * (n4 + 1)
        if nxt and (end + 3) // 4 * 4 == nxt:
            return rec
    return table.get(T_REC_S4) or 0


def _cover(data: bytes, s4: int, rec4: int, n4: int, field_off: int, sec: Tuple[int, int],
           rec: int) -> Optional[List[Tuple[int, int]]]:
    """Per-segment [lo, hi) entry ranges of a section a segment owns up to the next segment's pointer."""
    off, n = sec
    end = off + rec * n
    if not n or field_off + 2 > rec4 or end > len(data):
        return None
    ptrs = [struct.unpack_from(">H", data, s4 + rec4 * i + field_off)[0] for i in range(n4)]
    out = []
    for i, lo in enumerate(ptrs):
        hi = ptrs[i + 1] if i + 1 < n4 else end
        out.append((lo, hi) if off <= lo <= hi <= end else (0, 0))
    return out


def parse_tile(sector: int, data: bytes, table: dict, level: int = 0) -> Optional[TileData]:
    """Return the tile's graph pieces, or None if the frame / sections are not usable.

    `level` is the BLOCK_TYPE (0 street level, 1-3 coarse): coarse tiles have shorter S4 records
    and no names, signposts or section 13 of their own."""
    frame = tile_frame(data, table)
    if frame is None:
        return None
    secs = _sections(data, table)
    (s4, n4), (s5, n5), (s6, n6), (s7, n7) = secs[4], secs[5], secs[6], secs[7]
    s10, n10 = secs[10]
    rec4, rec7 = table.get(T_REC_S4), table.get(T_REC_S7, 6)
    if level:
        rec4 = _coarse_rec4(data, secs, table)
    rec5, rec6, rec10 = table.get(T_REC_S5, 8), table.get(T_REC_S6, 16), table.get(T_REC_S10, 8)
    if not rec4 or rec4 < 0x14 or s4 + rec4 * n4 > len(data):
        return None
    end7 = s7 + rec7 * n7
    end10 = s10 + rec10 * n10
    if end7 > len(data) or end10 > len(data):
        return None
    lim_u, lim_v = frame.width >> VERTEX_SHIFT, frame.height >> VERTEX_SHIFT

    nodes: Dict[NodeKey, RawNode] = {}
    for off, n, rec, is_edge in ((s5, n5, rec5, False), (s6, n6, rec6, True)):
        for i in range(n):
            p = off + rec * i
            if p + 8 > len(data):
                continue
            u, v, _first, flags = struct.unpack_from(">HHHH", data, p)
            lon, lat = frame.to_wgs84(u, v)
            twin = None
            if is_edge and rec >= 14:
                bid, toff = struct.unpack_from(">IH", data, p + 8)
                if bid:
                    twin = (bid >> 8, toff)
            nodes[(sector, p)] = RawNode((sector, p), lon, lat, flags, twin)

    ptr7 = [struct.unpack_from(">H", data, s4 + rec4 * i + 4)[0] for i in range(n4)]
    ptr10 = [struct.unpack_from(">H", data, s4 + rec4 * i + 0x12)[0] for i in range(n4)]
    edges: List[RawEdge] = []
    skipped = 0
    for i in range(n4):
        base = s4 + rec4 * i
        a, b = struct.unpack_from(">HH", data, base)
        p0 = ptr7[i]
        p1 = ptr7[i + 1] if i + 1 < n4 else end7
        if (sector, a) not in nodes or (sector, b) not in nodes or not (s7 <= p0 <= p1 <= end7):
            skipped += 1                       # also catches the sentinel record
            continue
        uv = [(nodes[(sector, a)].lon, nodes[(sector, a)].lat)]
        bad = False
        for q in range(p0, p1 - 3, rec7):
            u, v = struct.unpack_from(">HH", data, q)
            if not (0 <= u <= lim_u and 0 <= v <= lim_v):
                bad = True
                break
            uv.append(frame.to_wgs84(u, v))
        if bad:
            skipped += 1
            continue
        uv.append((nodes[(sector, b)].lon, nodes[(sector, b)].lat))
        tail = table.get(T_TAIL_S4)
        named = not level and tail is not None and tail + 2 <= rec4
        name, locality = _names(data, table, base, secs[2]) if named else (None, None)
        spd, form, length, bs, be, cls, junc = struct.unpack_from(">BBHBBBB", data, base + 0x0A)
        slip = data[base + 0x18] if rec4 > 0x18 else 0
        edge = RawEdge(sector, i, (sector, a), (sector, b), uv, name, locality,
                       spd, form, length, bs, be, cls, junc, slip)
        q0 = ptr10[i]
        q1 = ptr10[i + 1] if i + 1 < n4 else end10
        if s10 <= q0 <= q1 <= end10:
            for q in range(q0, q1 - rec10 + 1, rec10):
                bid, toff, flag = struct.unpack_from(">IHH", data, q)
                tidx = None
                if bid >> 8 == sector and toff >= s4 and (toff - s4) % rec4 == 0:
                    t = (toff - s4) // rec4
                    tidx = t if t < n4 else None
                via = edge.start if flag == 0 else edge.end
                edge.restrictions.append(RawRestriction(tidx, flag, via))
        edges.append(edge)

    tail = table.get(T_TAIL_S4)
    if not level and tail is not None:
        rec11, rec13 = table.get(T_REC_S11, 6), table.get(T_REC_S13, 8)
        cov11 = _cover(data, s4, rec4, n4, tail + 4, secs[11], rec11)
        cov13 = _cover(data, s4, rec4, n4, 0x16, secs[13], rec13)
        by_index = {e.index: e for e in edges}
        for i, e in by_index.items():
            if cov11:
                lo, hi = cov11[i]
                for q in range(lo, hi - rec11 + 1, rec11):
                    dest, route, flag = struct.unpack_from(">HHH", data, q)
                    e.signposts.append(RawSignpost(_string(data, dest),
                                                   _string(data, route) if route else None, flag))
            if cov13:
                lo, hi = cov13[i]
                for q in range(lo, hi - rec13 + 1, rec13):
                    bid, toff, flag = struct.unpack_from(">IHH", data, q)
                    tidx = None
                    if bid >> 8 == sector and toff >= s4 and (toff - s4) % rec4 == 0:
                        t = (toff - s4) // rec4
                        tidx = t if t < n4 else None
                    node = e.start if flag == 0x1000 else e.end if flag == 0x3000 else None
                    e.marks.append(RawMark(tidx, flag, node))
    return TileData(sector, nodes, edges, skipped, level)
