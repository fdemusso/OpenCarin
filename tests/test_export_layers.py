"""Synthetic-tile tests for the export layers: signposts (S11), section 13 marks, coarse tiles and
house numbers (carin.export). No disc needed."""
import struct

from carin.export import build_graph, parse_tile
from carin.export.graph import attach_house_numbers
from carin.export.levels import build_coarse, class_rule_level, match_levels
from carin.export.readers import read_gpkg
from carin.export.writers import write_csv, write_gpkg
from carin.parser.house_numbers import segment_house_numbers
from carin.parser.iso import to_carin

TABLE = {0x05: 8, 0x06: 16, 0x08: 32, 0x09: 0x1A, 0x0C: 6, 0x10: 8, 0x13: 6, 0x14: 8, 0x40: 8,
         0x4C: 8}
S2, S4, STR = 200, 256, 1500


def make_tile(sector, x0, y0, side, segs, nodes, rec4=32):
    """Street (rec4 = 32, real layout: name ref +0x1A, S11 pointer +0x1E) or coarse (rec4 = 26) tile.

    segs: dicts a, b (node indexes), shape [(u, v)], length, cls, speed, form, signs [(dest, route,
    flag)], marks [(target segment, flag)]. Sections: 2, 4 (+ sentinel), 5, 7, 11, 13, strings."""
    n4 = len(segs)
    s5 = (S4 + rec4 * (n4 + 1) + 3) // 4 * 4              # the next section starts 4-byte aligned
    s7 = s5 + 8 * len(nodes)
    n7 = sum(len(s["shape"]) for s in segs)
    signs = [x for s in segs for x in s.get("signs", [])]
    marks = [x for s in segs for x in s.get("marks", [])]
    s11 = s7 + 6 * n7
    s13 = s11 + 6 * len(signs)
    data = bytearray(STR + 200)
    secs = {2: (S2, 1), 4: (S4, n4), 5: (s5, len(nodes)), 7: (s7, n7), 11: (s11, len(signs)),
            13: (s13, len(marks))}
    for i in range(15):
        struct.pack_into(">HH", data, 8 + 4 * i, *secs.get(i, (0, 0)))
    struct.pack_into(">4I", data, 8 + 60, x0, y0, x0 + side, y0 + side)
    pool, strings = STR, {}

    def text(t):
        nonlocal pool
        if not t:
            return 0
        if t not in strings:
            data[pool:pool + len(t) + 1] = t.encode() + b"\x00"
            strings[t] = pool
            pool += len(t) + 1
        return strings[t]

    struct.pack_into(">HH", data, S2, text("main road"), 0)
    for i, (u, v) in enumerate(nodes):
        struct.pack_into(">HHHH", data, s5 + 8 * i, u, v, 0, 0xC000)
    p7, p11, p13 = s7, s11, s13
    for i, s in enumerate(segs):
        base = S4 + rec4 * i
        struct.pack_into(">HHH", data, base, s5 + 8 * s["a"], s5 + 8 * s["b"], p7)
        data[base + 0x0A] = s.get("speed", 11)
        data[base + 0x0B] = s.get("form", 0x0C)
        struct.pack_into(">H", data, base + 0x0C, s["length"])
        data[base + 0x10] = s.get("cls", 4)
        data[base + 0x11] = 0x20
        struct.pack_into(">H", data, base + 0x16, p13)
        if rec4 >= 0x20:
            struct.pack_into(">H", data, base + 0x1A, S2)
            struct.pack_into(">H", data, base + 0x1E, p11)
        for u, v in s["shape"]:
            struct.pack_into(">HH", data, p7, u, v)
            p7 += 6
        for dest, route, flag in s.get("signs", []):
            struct.pack_into(">HHH", data, p11, text(dest), text(route), flag)
            p11 += 6
        for tgt, flag in s.get("marks", []):
            struct.pack_into(">IHH", data, p13, sector << 8 | 1, S4 + rec4 * tgt, flag)
            p13 += 8
    return bytes(data)


def street_tile(**extra):
    x0, y0 = to_carin(5.0, 51.0)
    segs = [dict(a=0, b=1, shape=[(100, 100)], length=300,
                 signs=[("weert", "a2", 0), ("eindhoven", None, 1)], marks=[(1, 0x3000)]),
            dict(a=1, b=2, shape=[(200, 100)], length=400, marks=[(0, 0x1000), (0, 0x1200)])]
    return parse_tile(100, make_tile(100, x0, y0, 64000, segs, [(50, 100), (150, 100), (250, 100)]),
                      TABLE)


def test_signposts_and_marks_are_read_and_resolved():
    g = build_graph([street_tile()])
    sp = g.edges[0].signposts
    assert [(s.destination, s.route, s.direction) for s in sp] == [
        ("weert", "a2", "forward"), ("eindhoven", None, "reverse")]
    assert g.edges[1].signposts == []
    # 0x3000 = owner's end node, 0x1000 = owner's start node, anything else has no node
    assert [(m.edge, m.target, m.node, m.kind) for m in g.marks] == [
        (0, 1, g.edges[0].v, 0), (1, 0, g.edges[1].u, 0)]
    assert g.stats["marks"] == 2 and g.stats["marks_unresolved"] == 1 and g.stats["signposts"] == 2


def test_layers_round_trip_through_gpkg_and_csv(tmp_path):
    g = build_graph([street_tile()])
    write_gpkg(g, str(tmp_path / "t.gpkg"))
    write_csv(g, str(tmp_path / "t"))
    g2 = read_gpkg(str(tmp_path / "t.gpkg"))
    assert [(s.destination, s.direction) for s in g2.edges[0].signposts] == [
        ("weert", "forward"), ("eindhoven", "reverse")]
    assert [(m.edge, m.target, m.node) for m in g2.marks] == [(0, 1, g.edges[0].v), (1, 0, g.edges[1].u)]
    rows = (tmp_path / "t_signposts.csv").read_text().splitlines()
    assert rows[0] == "edge,direction,destination,route" and len(rows) == 3


def test_coarse_tile_has_26_byte_records_and_levels_follow_by_geometry():
    x0, y0 = to_carin(5.0, 51.0)
    street = parse_tile(100, make_tile(
        100, x0, y0, 64000,
        [dict(a=0, b=1, shape=[(100, 100)], length=300, cls=0),
         dict(a=1, b=2, shape=[(200, 100)], length=300, cls=0),
         dict(a=3, b=4, shape=[(500, 800)], length=300, cls=4)],
        [(50, 100), (150, 100), (250, 100), (50, 800), (450, 800)]), TABLE)
    # one coarse segment spanning the two class-0 street edges (the middle node is passed through);
    # its length is the sum of theirs
    coarse_t = parse_tile(300, make_tile(
        300, x0, y0, 64000, [dict(a=0, b=1, shape=[(100, 100), (200, 100)], length=600, cls=0)],
        [(50, 100), (250, 100)], rec4=26), TABLE, level=1)
    assert coarse_t.level == 1 and len(coarse_t.edges) == 1
    e = coarse_t.edges[0]
    assert e.length_m == 600 and e.class_byte & 15 == 0 and e.name is None and not e.signposts
    g = build_graph([street])
    coarse = build_coarse([coarse_t])
    assert len(coarse) == 1 and coarse[0].level == 1
    counts = match_levels(g, coarse)
    assert [x.level for x in g.edges] == [1, 1, 0]
    assert (counts["0"], counts["1"], counts["segments_resolved"]) == (1, 2, 1)
    assert [class_rule_level(c) for c in range(4)] == [1, 2, 3, 0]


def test_house_numbers_attach_by_segment_index(tmp_path):
    x0, y0 = to_carin(5.0, 51.0)
    t = parse_tile(100, make_tile(100, x0, y0, 64000,
                                  [dict(a=0, b=1, shape=[(100, 100)], length=300),
                                   dict(a=1, b=2, shape=[(200, 100)], length=300)],
                                  [(50, 100), (150, 100), (250, 100)]), TABLE)
    # a decoded 0x04 block: descriptor at +8, one 10-byte record per segment at +0x10
    blk = bytearray(0x10 + 20)
    struct.pack_into(">HH", blk, 8, 0x10, 2)
    struct.pack_into(">I", blk, 0x0C, 100 << 8 | 1)
    struct.pack_into(">5H", blk, 0x10, 1, 2, 9, 8, 2)            # left 1..9, right 2..8, odd/even
    struct.pack_into(">5H", blk, 0x1A, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0)
    g = build_graph([t])
    assert attach_house_numbers(g, {100: segment_house_numbers(bytes(blk))}) == 1
    h = g.edges[0].house_numbers
    assert (h.scheme, h.left, h.right) == (2, (1, 9), (2, 8)) and g.edges[1].house_numbers is None
    write_gpkg(g, str(tmp_path / "h.gpkg"))
    h2 = read_gpkg(str(tmp_path / "h.gpkg")).edges[0].house_numbers
    assert (h2.scheme, h2.left, h2.right) == (2, (1, 9), (2, 8))


def _block(sector, length, btype, body, unit=512):
    body = bytearray(body)
    struct.pack_into(">IHBB", body, 0, sector << 8 | length, btype, 0, length)
    return bytes(body).ljust(length * unit, b"\x00")


def test_export_script_end_to_end_with_worker_processes(tmp_path):
    """A bare 512-byte-unit carindb with a street tile, a coarse tile and a 0x04 block, exported by
    scripts/routing/export_routable.py with two worker processes."""
    import subprocess
    import sys
    from pathlib import Path

    x0, y0 = to_carin(5.0, 51.0)
    nodes = [(50, 100), (150, 100), (250, 100)]
    street = make_tile(2, x0, y0, 64000, [
        dict(a=0, b=1, shape=[(100, 100)], length=300, cls=0, signs=[("weert", "a2", 0)]),
        dict(a=1, b=2, shape=[(200, 100)], length=300, cls=0)], nodes)
    coarse = make_tile(6, x0, y0, 64000, [
        dict(a=0, b=1, shape=[(100, 100), (200, 100)], length=600, cls=0)],
        [(50, 100), (250, 100)], rec4=26)
    hn = bytearray(0x10 + 20)
    struct.pack_into(">HH", hn, 8, 0x10, 2)
    struct.pack_into(">I", hn, 0x0C, 2 << 8 | 4)
    struct.pack_into(">5H", hn, 0x10, 1, 2, 9, 8, 2)
    struct.pack_into(">5H", hn, 0x1A, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0)
    sb = bytearray(1024)
    struct.pack_into(">HH", sb, 0x28, 0x30, len(TABLE))
    struct.pack_into(">H", sb, 0x1A, 34)
    for i, (k, v) in enumerate(sorted(TABLE.items())):
        struct.pack_into(">HH", sb, 0x30 + 4 * i, k, v)
    path = tmp_path / "carindb"
    path.write_bytes(_block(0, 2, 0x12, sb) + _block(2, 4, 0x00, street) + _block(6, 4, 0x01, coarse)
                     + _block(10, 1, 0x04, hn))

    script = Path(__file__).resolve().parents[1] / "scripts" / "routing" / "export_routable.py"
    out = tmp_path / "out" / "t"
    r = subprocess.run([sys.executable, str(script), str(path), "--bbox", "4.9", "50.9", "5.2", "51.2",
                        "--sector-size", "512", "--out", str(out), "--formats", "gpkg,csv", "--jobs", "2"],
                       capture_output=True, text=True, timeout=120)
    assert r.returncode == 0, r.stdout + r.stderr
    assert "sector_size=512" in r.stdout and "tiles selected: 1 street, 1 coarse" in r.stdout
    g = read_gpkg(str(out) + ".gpkg")
    assert len(g.edges) == 2 and [e.level for e in g.edges] == [1, 1]
    assert g.edges[0].signposts[0].destination == "weert"
    assert g.edges[0].house_numbers.left == (1, 9) and g.edges[1].house_numbers is None
    assert (tmp_path / "out" / "t_coarse_edges.csv").exists()


def test_coarse_record_size_survives_the_padding_before_the_next_section():
    """Two 26-byte segments + the sentinel end 2 bytes before the next 4-byte boundary (as in 3 of
    the 9 coarse tiles listed in full on the CD); a division by n4 + 1 would not give 26."""
    x0, y0 = to_carin(5.0, 51.0)
    segs = [dict(a=0, b=1, shape=[(100, 100)], length=300, cls=0),
            dict(a=1, b=2, shape=[(200, 100)], length=400, cls=1)]
    data = make_tile(300, x0, y0, 64000, segs, [(50, 100), (150, 100), (250, 100)], rec4=26)
    s5 = struct.unpack_from(">HH", data, 8 + 4 * 5)[0]
    assert (s5 - S4) % 3 != 0                       # padded: not a multiple of n4 + 1 records
    t = parse_tile(300, data, TABLE, level=1)
    assert len(t.edges) == 2 and t.skipped == 0
    assert [e.length_m for e in t.edges] == [300, 400] and [e.class_byte for e in t.edges] == [0, 1]
