"""Run the `dbq` descriptor builder on every segment of real tiles and compare it with the field map of docs/fw/04 §6.

    uv run --with capstone --with unicorn python examples/07_firmware_emulator/run_tile.py [disc] [tile ...]
"""

from __future__ import annotations

import struct
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser.cf1.constants import T_DESC_BASE, T_REC_S4, T_TAIL_S4  # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from dbq import DbqEmu  # noqa: E402



def expected(tile: bytes, off: int, T: dict) -> dict[str, int]:
    """What docs/fw/04 §6 and §11.2 say the descriptor holds, computed from the raw tile bytes."""
    s = tile[off:off + T[T_REC_S4]]
    na, nb = struct.unpack_from(">HH", s, 0)
    tail = struct.unpack_from(">H", s, T[T_TAIL_S4] + 2)[0]
    fa, fb = tile[na + 6], tile[nb + 6]
    return {
        0x12: fa & 8, 0x13: fa & 7, 0x14: (fa & 0x30) >> 4,
        0x18: fb & 8, 0x19: fb & 7, 0x1A: (fb & 0x30) >> 4,
        0x24: (tail & 0x0700) >> 8, 0x25: (tail & 0x7000) >> 12, 0x26: (s[0x10] & 0x70) >> 4,
        0x29: (tail & 0x70) >> 4, 0x2A: int(not tail & 0x8000), 0x2C: 0 if s[0x10] & 0x80 else 1,
        0x1D: 0 if (s[0x11] & 0xF) == 0 or s[0x11] >> 4 == 4 else s[0x11] & 0xF,
    }


def study_tiles(disc: str, n: int) -> list[int]:
    """The first `n` tiles of the Bari-Modugno study area of examples/05 (needs its dataset)."""
    import csv
    import gzip
    path = ROOT / "examples" / "06_osm_vs_disc_modugno" / "dataset" / f"disc_{disc}_bari_modugno_segments.csv.gz"
    seen: list[int] = []
    for r in csv.DictReader(gzip.open(path, "rt")):
        t = int(r["tile"], 0)
        if t not in seen:
            seen.append(t)
            if len(seen) == n:
                break
    return seen


def main(argv: list[str]) -> None:
    disc = argv[0] if argv else "21708"
    vol = CarinVolume(IsoImage(str(ROOT / "dataset" / f"NAV_DB_{disc}.ISO")))
    T = vol.layout
    emu = DbqEmu(layout=T, rel=vol.db_rel, subrel=9)
    tiles = [int(t, 0) for t in argv[1:]] or study_tiles(disc, 3)
    tot, bad, failed = 0, Counter(), 0
    shown = 0
    for tile_id in tiles:
        blk = vol.block(tile_id >> 8)
        payload = bytes(blk.payload)
        base = T[T_DESC_BASE]
        s4_start, s4_count = struct.unpack_from(">HH", payload, base + 4 * 4)
        for i in range(s4_count):
            off = s4_start + T[T_REC_S4] * i
            cap, ret = emu.run_tile(payload, off, tile_id)
            tot += 1
            if not cap or len(cap[0]) != 0x34:
                failed += 1
                if failed <= 3:
                    print("FAIL", hex(tile_id), i, ret, emu.unmapped[:3])
                continue
            d = cap[0]
            for k, v in expected(payload, off, T).items():
                if d[k] != v:
                    bad[k] += 1
                    if shown < 6:
                        shown += 1
                        print("DIFF", hex(tile_id), i, hex(k), "descriptor", d[k], "expected", v)
    print(f"{disc}: {tot} segments, {failed} failed, mismatches per descriptor byte:", dict(sorted(bad.items())) or "none")


if __name__ == "__main__":
    main(sys.argv[1:])
