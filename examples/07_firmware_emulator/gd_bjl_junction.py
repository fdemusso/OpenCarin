"""Run the `gd_bjl` junction pass (`sub_00fbd4`) on junctions assembled from real tiles.

The arms of a node are turned into `dbq` streams (the `dbq` emulator), into `gd_bjl` items (`GdBjlEmu.feed_segment`), and
linked into a hand-built junction object `J`:  `+0x10` type (`-1`), `+0x0c` pointer to the centre point, `+0x1c` from item,
`+0x20` to item, `+0x24` item list (built by the module), `+0x48` centre, `+0x54` number of items. Every item gets `+0x48` = centre as well. These
fields are **read** from the listing (docs/fw/04 §13, §16); the route state that builds `J` in the real handler is not run.
`gp[-0x7df8]` (point equality) is a stub (**hypothesis**: exact equality).

    uv run --with capstone --with unicorn python examples/07_firmware_emulator/gd_bjl_junction.py [disc] [side_sign] [n_zero] [junction|main]
"""

from __future__ import annotations

import struct
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser.cf1.constants import T_DESC_BASE, T_REC_S4  # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from dbq import DbqEmu  # noqa: E402
from fwemu import FwFault  # noqa: E402
from gd_bjl import GdBjlEmu  # noqa: E402
from gd_man import GdManEmu  # noqa: E402
from run_tile import study_tiles  # noqa: E402

ENTRY = "junction"
MAIN_PASS = 0xFBD4        # sub_00fbd4(J, flag, flag)
JUNCTION = 0x4090         # sub_004090(J): the whole processing of one junction (calls sub_00b440, sub_00fbd4, ...)


def build_and_run(dbq: DbqEmu, T: dict, payload: bytes, s4_start: int, node: int, arms: list[int], from_i: int = 0,
                  to_i: int = 1, tile_id: int = 0, entry: int = MAIN_PASS, gd_man=None):
    """Returns (J type, item roles, ret) or None when a step fails."""
    gd = GdBjlEmu()
    j = gd.place(bytes(0x100))
    gd.put32(j + 0x10, 0xFFFFFFFF)
    items = []
    for i in arms:
        cap, _ = dbq.run_tile(payload, s4_start + T[T_REC_S4] * i, tile_id)
        if not cap:
            return None
        items.append(gd.feed_segment(b"".join(cap), junction=j))
    u, v = struct.unpack(">HH", payload[node:node + 4])
    x0, y0 = struct.unpack_from(">2i", payload, T[5] + T[17])
    centre = struct.pack(">ii", x0 + (u << 6), y0 + (v << 6))
    for it in items:
        gd.write(it + 0x48, centre)
    gd.put32(j + 0x0C, gd.place(centre))
    gd.put32(j + 0x54, len(items))                # number of items in the list (**read**: loop bound at `0xb3f0`)
    gd.put32(j + 0x1C, items[from_i])
    gd.put32(j + 0x20, items[to_i])
    gd.write(j + 0x48, centre)
    try:
        ret = gd.call(entry, j, 0, 0)
    except FwFault as e:
        return ("fault", e.args[0], e.args[1])
    # `sub_004090` makes a new junction object (`sub_005a7c` -> `sub_004d18`, the head of the pool at `ctx + 0x104`) and
    # sets its type; when it did, that object holds the result, otherwise `J` itself (`sub_00fbd4` works on `J`)
    new = gd.pools[0x104]
    made = gd.read(new + 0x10, 1)[0] != 0
    obj = new if made else j
    t = gd.read(obj + 0x10, 1)[0]
    # the type `gd_man` would put in the junction descriptor for `vp_man` (`GdManEmu.descriptor_type`, optional)
    sent = gd_man.descriptor_type(gd, obj) if gd_man is not None else None
    return t, [gd.read(it + 0x32, 2).hex() for it in items], ret, sent


def nodes_with_arms(payload: bytes, T: dict, min_arms: int = 3):
    s4_start, count = struct.unpack_from(">HH", payload, T[T_DESC_BASE] + 16)
    touch = defaultdict(list)
    for i in range(count):
        a, b = struct.unpack_from(">HH", payload, s4_start + T[T_REC_S4] * i)
        touch[a].append(i)
        touch[b].append(i)
    return s4_start, {n: s for n, s in touch.items() if len(s) >= min_arms}


def main(argv: list[str]) -> None:
    """For the nodes with value 2 (as on disc and with the value forced to 0) and a sample of nodes with value 0: over
    every ordered (from, to) pair of arms, which junction types can the pass give? `side_sign` flips the (unknown)
    convention of the side-of-line stub."""
    disc = argv[0] if argv else "21708"
    import gd_bjl
    gd_bjl.SIDE_SIGN = int(argv[1]) if len(argv) > 1 else 1
    n_zero = int(argv[2]) if len(argv) > 2 else 300
    global ENTRY
    ENTRY = argv[3] if len(argv) > 3 else "junction"      # `junction` = sub_004090 (the whole processing), `main` = sub_00fbd4 alone
    vol = CarinVolume(IsoImage(str(ROOT / "dataset" / f"NAV_DB_{disc}.ISO")))
    T = vol.layout
    dbq = DbqEmu(layout=T, rel=vol.db_rel, subrel=9)
    res = defaultdict(Counter)
    sent_all: Counter = Counter()
    gm = GdManEmu()
    zero_seen = 0
    for tile_id in study_tiles(disc, 69):
        payload = bytes(vol.block(tile_id >> 8).payload)
        s4_start, nodes = nodes_with_arms(payload, T)
        for node, arms in nodes.items():
            val = payload[node + 6] & 7
            if val not in (0, 2) or not 3 <= len(arms) <= 4:
                continue
            if val == 0:
                zero_seen += 1
                if zero_seen % 20:                       # one in twenty
                    continue
            variants = [("as on disc", payload)]
            if val == 2:
                b = bytearray(payload)
                b[node + 6] &= ~7
                variants.append(("value forced to 0", bytes(b)))
            for label, p in variants:
                types = set()
                for f in range(len(arms)):                # the from item has to head the list (`sub_00b88c` runs off its end otherwise)
                    order = [arms[f]] + [x for i, x in enumerate(arms) if i != f]
                    for t in range(1, len(arms)):
                        r = build_and_run(dbq, T, p, s4_start, node, order, from_i=0, to_i=t, tile_id=tile_id, gd_man=gm,
                                          entry=JUNCTION if ENTRY == "junction" else MAIN_PASS)
                        if r:
                            types.add(r[0])
                            if r[0] != "fault":
                                sent_all[r[3]] += 1
                res[(label, "node value %d" % val, "%d arms" % len(arms))][
                    "BIF_SYM_2/3 possible" if types & {6, 7} else "never BIF_SYM"] += 1
    for k, c in sorted(res.items()):
        print(k, dict(c))
    print("descriptor types sent to vp_man over all runs (1 ROUNDABOUT, 5 T_JUNCTION, 6 BIF_SYM_2, 7 BIF_SYM_3, 15 MOTORWAY_EXIT, 16 OTHER_EXIT, 19 OTHER, 20 STYLIZED_DCW_JUNC, 21 NORMAL):", dict(sorted(sent_all.items())))


if __name__ == "__main__":
    main(sys.argv[1:])
