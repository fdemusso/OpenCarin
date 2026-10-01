"""The RR `rpmod` edge builders (`sub_01fd80`, `sub_04e02c`) on the generic harness; see README.md.

`sub_01fd80(edge, tile)`: `edge + 8` holds the byte offset of the S4 record in the tile; the function fills the route
planner's edge record (docs/fw/04 §2) from the record and its two node records.
"""

from __future__ import annotations

import struct

from fwemu import ROOT, FwEmu, FwFault

FIRMWARE = ROOT / "build" / "fw" / "V_2_RR_0101_BMWC01S_app_sw_bsw2"
GP_LAYOUT = -0x6064        # gp-relative pointer to the layout table (read at 0x1fe40)
GP_POSITION = -0x7CE4      # gp-relative function pointer (a0 = tile + offsets, a1 = node record, a2 = out): decodes a position
EDGE_SIZE = 0x60


class RpmodEdgeEmu(FwEmu):
    def __init__(self, func: int = 0x1FD80, layout: dict[int, int] | None = None, rel: int = 27, subrel: int = 0,
                 debug: bool = False):
        super().__init__(FIRMWARE, "rpmod", debug=debug)
        self.func = func
        buf = bytearray(0x400)
        struct.pack_into(">HH", buf, 0x14, rel, subrel)
        for i, v in (layout or {}).items():
            struct.pack_into(">H", buf, 0x1E + 2 * i, v)
        self.gp_word(GP_LAYOUT, self.place(bytes(buf)))
        self.gp_func(GP_POSITION, "position")
        self.tile_addr = self.place(bytes(0x200000))
        self.edge_addr = self.place(bytes(EDGE_SIZE))

    def run_tile(self, tile: bytes, seg_off: int, **extra):
        """Returns (edge record bytes, ret) for the S4 record at `seg_off`."""
        self.write(self.tile_addr, tile)
        self.write(self.edge_addr, bytes(EDGE_SIZE))
        self.write(self.edge_addr + 8, struct.pack(">H", seg_off))
        self.heap = 0x70000000
        try:
            if self.func == 0x4E02C:                    # second layout: (edge, tile, S4 record pointer)
                ret = self.call(self.func, self.edge_addr, self.tile_addr, self.tile_addr + seg_off, extra.get("a3", 0))
            else:                                       # first layout: (edge with the record offset at +8, tile)
                ret = self.call(self.func, self.edge_addr, self.tile_addr, extra.get("a2", 0), extra.get("a3", 0))
        except FwFault as e:
            return b"", f"fault {e.args[0]}"
        return self.read(self.edge_addr, EDGE_SIZE), ret
