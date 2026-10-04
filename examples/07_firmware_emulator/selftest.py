"""Quick regression of the emulator: every executed claim of the README on a few segments (about 10 s).

    uv run --with capstone --with unicorn python examples/07_firmware_emulator/selftest.py [disc]

Needs `dataset/NAV_DB_<disc>.ISO` and the extracted firmware in `build/fw/`. Exit status 1 on any mismatch.
"""

from __future__ import annotations

import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser.cf1.constants import T_DESC_BASE, T_REC_S4  # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from dbq import DbqEmu  # noqa: E402
from gd_bjl import GdBjlEmu, ITEM_SIZE  # noqa: E402
from gd_bjl_items import expected as item_expected  # noqa: E402
from rpmod_edge import RpmodEdgeEmu  # noqa: E402
from fwemu import FwFault  # noqa: E402
from run_tile import expected as desc_expected, study_tiles  # noqa: E402


def main(argv: list[str]) -> int:
    disc = argv[0] if argv else "21708"
    vol = CarinVolume(IsoImage(str(ROOT / "dataset" / f"NAV_DB_{disc}.ISO")))
    T = vol.layout
    dbq = DbqEmu(layout=T, rel=vol.db_rel, subrel=9)
    e1 = RpmodEdgeEmu(func=0x1FD80, layout=T, rel=vol.db_rel, subrel=9)
    e2 = RpmodEdgeEmu(func=0x4E02C, layout=T, rel=vol.db_rel, subrel=9)
    tile_id = study_tiles(disc, 1)[0]
    payload = bytes(vol.block(tile_id >> 8).payload)
    start, count = struct.unpack_from(">HH", payload, T[T_DESC_BASE] + 16)
    fails = 0
    for i in range(0, min(count, 80)):
        off = start + T[T_REC_S4] * i
        s4 = payload[off:off + T[T_REC_S4]]
        cap, _ = dbq.run_tile(payload, off, tile_id)
        d = cap[0] if cap else b""
        bad = [hex(k) for k, v in desc_expected(payload, off, T).items() if len(d) != 0x34 or d[k] != v]
        gd = GdBjlEmu()
        item = gd.read(gd.feed_segment(b"".join(cap)), ITEM_SIZE) if len(d) == 0x34 else b""
        bad += ["item" + hex(k) for k, v in item_expected(d).items() if not item or item[k] != v]
        # the stream: names on, the module's own parser, the point list of the item against descriptor +0x2f
        dbq.write(dbq.arg_addr, bytes(64))
        dbq.write(dbq.arg_addr + 4, b"\0\1")
        cap2, _ = dbq.run_tile(payload, off, tile_id)
        dbq.write(dbq.arg_addr, bytes(64))
        if cap2 and len(cap2[0]) == 0x34:
            gd2 = GdBjlEmu()
            try:
                it2 = gd2.feed_segment(b"".join(cap2))
                n, p = 0, gd2.u32(it2 + 0x34)
                while p and n < 100:
                    n, p = n + 1, gd2.u32(p)
                if n != cap2[0][0x2F]:
                    bad.append(f"stream points {n} != {cap2[0][0x2F]}")
            except FwFault as e:
                bad.append("stream " + e.args[0])
        a, _ = e1.run_tile(payload, off)
        b, _ = e2.run_tile(payload, off)
        # planner edges: class, form, toll, tunnel, category, UAG (layout 1 edge +0x1d set / layout 2 edge +0x1f clear)
        bit7 = s4[0x10] >> 7
        for name, ok in (("e1 class", a[0x17] == s4[0x10] & 15), ("e1 form", a[0x16] == s4[0x0B] & 15),
                         ("e1 toll", a[0x1E] == (s4[0x0B] >> 6 & 1)), ("e1 tunnel", a[0x1F] == (s4[0x18] >> 4 & 1)),
                         ("e1 cat", a[0x20] == (s4[T[9] + 3] >> 4 & 7)), ("e1 uag", a[0x1D] == bit7),
                         ("e2 class", b[0x18] == s4[0x10] & 15), ("e2 tunnel", b[0x21] == (s4[0x18] >> 4 & 1)),
                         ("e2 uag", b[0x1F] == 1 - bit7)):
            if not ok:
                bad.append(name)
        if bad:
            fails += 1
            print("segment", i, "mismatch", bad)
    print(f"{disc}: {min(count, 80)} segments, {fails} with a mismatch")
    return 1 if fails else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
