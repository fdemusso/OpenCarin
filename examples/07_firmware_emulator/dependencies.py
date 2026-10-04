"""Which input bit decides which output byte? Flip every bit of the S4 record and of its two node records, run the
function again and record which output bytes change. The emulator is the oracle: a byte that no flip moves does not
depend on the record (it comes from the arguments or from the shape).

    uv run --with capstone --with unicorn python examples/07_firmware_emulator/dependencies.py [disc] [n_segments] [target]

`target`: `dbq` (descriptor of `sub_00fc28`, default), `rpmod` (edge record of `sub_01fd80`), `rpmod2` (`sub_04e02c`).
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
from dbq import DbqEmu  # noqa: E402
from rpmod_edge import EDGE_SIZE, RpmodEdgeEmu  # noqa: E402
from run_tile import study_tiles  # noqa: E402

DESC = 0x34
import faulthandler

faulthandler.enable()
TRACE = bool(__import__("os").environ.get("DEP_TRACE"))


def make(target: str, T: dict, rel: int):
    """(emulator, output size, label) for a target; the emulator's `run_tile` returns (output, ret)."""
    if target == "dbq":
        emu = DbqEmu(layout=T, rel=rel, subrel=9)
        return (lambda tile, off, tid: (lambda c, r: (c[0] if c else b"", r))(*emu.run_tile(tile, off, tid))), DESC, "descriptor"
    emu = RpmodEdgeEmu(func=0x1FD80 if target == "rpmod" else 0x4E02C, layout=T, rel=rel, subrel=9)
    return (lambda tile, off, tid: emu.run_tile(tile, off)), EDGE_SIZE, "edge"


def main(argv: list[str]) -> None:
    disc = argv[0] if argv else "21708"
    n_seg = int(argv[1]) if len(argv) > 1 else 60
    target = argv[2] if len(argv) > 2 else "dbq"
    vol = CarinVolume(IsoImage(str(ROOT / "dataset" / f"NAV_DB_{disc}.ISO")))
    T = vol.layout
    run, size, label = make(target, T, vol.db_rel)
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
            d0, _ = run(payload, off, tile_id)
            if len(d0) != size:
                continue
            regions = [(f"S4+{b:02x}", off + b) for b in range(4, rec)] + \
                      [(f"NA+{b}", na + b) for b in range(8)] + [(f"NB+{b}", nb + b) for b in range(8)]
            for name, pos in regions:
                for bit in range(8):
                    buf = bytearray(payload)
                    buf[pos] ^= 1 << bit
                    if TRACE:
                        print("flip", tile_id, i, name, bit, file=sys.stderr, flush=True)
                    out, _ = run(bytes(buf), off, tile_id)
                    key = f"{name}.{bit}"
                    trials[key] += 1
                    if len(out) != size:
                        hits[-1][key] += 1                       # the call broke
                        continue
                    for k in range(size):
                        if out[k] != d0[k]:
                            hits[k][key] += 1
            done += 1
            if done >= n_seg:
                break
        if done >= n_seg:
            break
    print(f"{disc}: {done} segments, {sum(trials.values()) // max(1, len(trials))} flips per input bit")
    for k in sorted(hits):
        name = "call broke" if k < 0 else f"{label} +{k:02x}"
        items = sorted(hits[k].items(), key=lambda kv: (-kv[1], kv[0]))
        print(f"{name}: " + ", ".join(f"{n}({c}/{trials[n]})" for n, c in items[:40]) + (" ..." if len(items) > 40 else ""))


if __name__ == "__main__":
    main(sys.argv[1:])
