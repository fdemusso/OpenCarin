"""Which input bit decides which byte of the `dbq` descriptor? Flip every bit of the S4 record and of its two node
records, run `sub_00fc28` again and record which descriptor bytes change. The emulator is the oracle: a byte that no
flip moves does not depend on the record (it comes from the arguments or from the shape).

    uv run --with capstone --with unicorn python examples/06_emulate_dbq_descriptor/dependencies.py [disc] [n_segments]
"""

from __future__ import annotations

import struct
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser.cf1.constants import T_DESC_BASE, T_REC_S4  # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from emu import DbqEmu  # noqa: E402
from run_tile import study_tiles  # noqa: E402

DESC = 0x34


def main(argv: list[str]) -> None:
    disc = argv[0] if argv else "21708"
    n_seg = int(argv[1]) if len(argv) > 1 else 60
    vol = CarinVolume(IsoImage(str(ROOT / "dataset" / f"NAV_DB_{disc}.ISO")))
    T = vol.layout
    emu = DbqEmu(layout=T, rel=vol.db_rel, subrel=9)
    rec = T[T_REC_S4]
    hits: dict[int, dict[str, int]] = defaultdict(lambda: defaultdict(int))
    trials: dict[str, int] = defaultdict(int)
    done = 0
    for tile_id in study_tiles(disc, 6):
        payload = bytes(vol.block(tile_id >> 8).payload)
        s4_start, s4_count = struct.unpack_from(">HH", payload, T[T_DESC_BASE] + 16)
        for i in range(0, s4_count, max(1, s4_count // 12)):
            off = s4_start + rec * i
            na, nb = struct.unpack_from(">HH", payload, off)
            base, _ = emu.run_tile(payload, off, tile_id)
            if not base or len(base[0]) != DESC:
                continue
            d0 = base[0]
            regions = [(f"S4+{b:02x}", off + b) for b in range(4, rec)] + \
                      [(f"NA+{b}", na + b) for b in range(8)] + [(f"NB+{b}", nb + b) for b in range(8)]
            for name, pos in regions:
                for bit in range(8):
                    buf = bytearray(payload)
                    buf[pos] ^= 1 << bit
                    cap, _ = emu.run_tile(bytes(buf), off, tile_id)
                    key = f"{name}.{bit}"
                    trials[key] += 1
                    if not cap or len(cap[0]) != DESC:
                        hits[-1][key] += 1                       # the call broke
                        continue
                    for k in range(DESC):
                        if cap[0][k] != d0[k]:
                            hits[k][key] += 1
            done += 1
            if done >= n_seg:
                break
        if done >= n_seg:
            break
    print(f"{disc}: {done} segments, {sum(trials.values()) // max(1, len(trials))} flips per input bit")
    for k in sorted(hits):
        label = "call broke" if k < 0 else f"descriptor +{k:02x}"
        items = sorted(hits[k].items(), key=lambda kv: (-kv[1], kv[0]))
        print(f"{label}: " + ", ".join(f"{n}({c}/{trials[n]})" for n, c in items[:40]) + (" ..." if len(items) > 40 else ""))


if __name__ == "__main__":
    main(sys.argv[1:])
