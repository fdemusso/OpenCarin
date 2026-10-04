"""Which junction type does the `gd_bjl` main pass give a roundabout entry, by segment junction type (2, 5, 6)?

For every ring (connected segments of junction type 2, 5 or 6, one type per ring) and every node of it with a non-ring arm,
the junction is assembled as in `gd_bjl_junction.py`: the list holds the whole ring plus that entry arm, from = the entry arm,
to = a ring segment at the node, and `sub_004090` is run (the ring has to close for `sub_00b440` to see a roundabout).
Output: per ring segment type, how often each junction type comes out (names: docs/fw/04 §13.3).

    uv run --with capstone --with unicorn python examples/07_firmware_emulator/gd_bjl_ring.py [disc]
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
from gd_bjl_junction import JUNCTION, build_and_run, nodes_with_arms  # noqa: E402
from gd_man import GdManEmu  # noqa: E402
from run_tile import study_tiles  # noqa: E402

NAMES = {1: "ROUNDABOUT", 2: "SIMPLE_ROUNDABOUT", 3: "COMPLEX_ROUNDABOUT", 4: "Y_JUNCTION", 5: "T_JUNCTION", 6: "BIF_SYM_2",
         7: "BIF_SYM_3", 8: "BIF_ASYM_L", 9: "BIF_ASYM_R", 10: "SQUARE", 12: "STF", 15: "MOTORWAY_EXIT", 16: "OTHER_EXIT",
         19: "OTHER", 20: "STYLIZED_DCW_JUNC", 21: "NORMAL", 22: "RDAB_EXIT", 255: "unchanged (-1)"}


def main(argv: list[str]) -> None:
    disc = argv[0] if argv else "21708"
    vol = CarinVolume(IsoImage(str(ROOT / "dataset" / f"NAV_DB_{disc}.ISO")))
    T = vol.layout
    dbq = DbqEmu(layout=T, rel=vol.db_rel, subrel=9)
    res: dict[str, Counter] = defaultdict(Counter)
    sent: dict[str, Counter] = defaultdict(Counter)
    gm = GdManEmu()
    for tile_id in study_tiles(disc, 69):
        payload = bytes(vol.block(tile_id >> 8).payload)
        s4_start, count = struct.unpack_from(">HH", payload, T[T_DESC_BASE] + 16)
        ends = [struct.unpack_from(">HH", payload, s4_start + T[T_REC_S4] * i) for i in range(count)]
        jt = [payload[s4_start + T[T_REC_S4] * i + 0x11] & 0xF for i in range(count)]
        ring = [i for i in range(count) if jt[i] in (2, 5, 6)]
        parent: dict[int, int] = {}

        def find(x):
            while parent.setdefault(x, x) != x:
                parent[x] = parent[parent[x]]
                x = parent[x]
            return x

        for i in ring:
            parent[find(ends[i][0])] = find(ends[i][1])
        comps: dict[int, list[int]] = defaultdict(list)
        for i in ring:
            comps[find(ends[i][0])].append(i)
        for members in comps.values():
            if len({jt[i] for i in members}) != 1 or len(members) > 14:
                continue
            ring_nodes = {n for i in members for n in ends[i]}
            for node in ring_nodes:
                entries = [i for i in range(count) if i not in members and node in ends[i]]
                at_node = [i for i in members if node in ends[i]]
                for entry in entries[:1]:
                    order = [entry, at_node[0]] + [i for i in members if i != at_node[0]]
                    r = build_and_run(dbq, T, payload, s4_start, node, order, from_i=0, to_i=1, tile_id=tile_id,
                                      entry=JUNCTION, gd_man=gm)
                    key = f"ring segment type {jt[members[0]]}"
                    res[key][NAMES.get(r[0], r[0]) if r else "failed"] += 1
                    if r and r[0] != "fault":
                        sent[key][NAMES.get(r[3], r[3])] += 1
    for k in sorted(res):
        print(k, dict(res[k].most_common()), "-> sent to vp_man:", dict(sent[k].most_common()))


if __name__ == "__main__":
    main(sys.argv[1:])
