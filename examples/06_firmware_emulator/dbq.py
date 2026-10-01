"""The RR `dbq` descriptor builder (`sub_00fc28`) on the generic harness; see README.md."""

from __future__ import annotations

import struct

from fwemu import ROOT, FwEmu, FwFault

FIRMWARE = ROOT / "build" / "fw" / "V_2_RR_0101_BMWC01S_app_sw_bsw2"
FUNC = 0xFC28              # sub_00fc28, the descriptor builder
EMIT = 0x3B38              # sub_003b38, appends to the output buffer
GET_TILE = 0x398DC         # sub_0398dc, tile lookup
GP_LAYOUT = -0x5EC4        # gp-relative pointer to the layout table (read at 0xfde8)
GP_SHAPE_DECODE = -0x7CE4  # gp-relative function pointer of the shape decoder (read at 0x1cac8)


class DbqEmu(FwEmu):
    def __init__(self, layout: dict[int, int] | None = None, rel: int = 27, subrel: int = 0, debug: bool = False):
        super().__init__(FIRMWARE, "dbq", debug=debug)
        self.captured: list[bytes] = []
        self.tile_addr = 0
        buf = bytearray(0x400)
        struct.pack_into(">HH", buf, 0x14, rel, subrel)                # L + 0x14 DB-REL, L + 0x16 subrel
        for i, v in (layout or {}).items():
            struct.pack_into(">H", buf, 0x1E + 2 * i, v)               # L + 0x1e + 2 * id
        self.layout_addr = self.place(bytes(buf))
        self.gp_word(GP_LAYOUT, self.layout_addr)
        self.gp_func(GP_SHAPE_DECODE, "shape_decode")                  # no-op: the shape is not decoded
        self.tile_addr = self.place(bytes(0x200000))
        self.ref_addr = self.place(bytes(16))
        self.arg_addr = self.place(bytes(64))
        self.stub(EMIT, self._emit)
        self.stub(GET_TILE, self._get_tile)

    def _emit(self, emu) -> int:
        self.captured.append(self.read(self.reg("a0"), self.reg("a1")))
        return 1

    def _get_tile(self, emu) -> int:
        self.put32(self.reg("a2"), self.tile_addr)
        return 0x1F3

    def run_tile(self, tile: bytes, seg_off: int, tile_id: int = 0, a2: int = 0, a3: int = 0, arg5: int = 0, arg6: int = 0):
        """Run `sub_00fc28` for the S4 record at byte offset `seg_off` of a decoded tile. Returns (captured, ret)."""
        self.write(self.tile_addr, tile)
        self.write(self.ref_addr, struct.pack(">IIH", tile_id, 0, seg_off) + b"\0\0")
        self.captured.clear()
        self.heap = 0x70000000
        try:
            ret = self.call(FUNC, self.ref_addr, self.arg_addr, a2, a3, stack=(arg5, arg6))
        except FwFault as e:
            return self.captured[:], f"fault {e.args[0]}"
        return self.captured[:], ret

    def run(self, s4: bytes, node_a: bytes, node_b: bytes, a2: int = 0, a3: int = 0, arg5: int = 0, arg6: int = 0,
            seg_id: tuple[int, int, int] = (0x4C123428, 0, 0x300)):
        """Synthetic tile: two node records and one S4 record (offsets 0x100, 0x200, `seg_id[2]`)."""
        tile = bytearray(0x1000)
        tile[0x100:0x100 + len(node_a)] = node_a
        tile[0x200:0x200 + len(node_b)] = node_b
        rec = bytearray(s4)
        struct.pack_into(">HH", rec, 0, 0x100, 0x200)
        tile[seg_id[2]:seg_id[2] + len(rec)] = rec
        return self.run_tile(bytes(tile), seg_id[2], seg_id[0], a2, a3, arg5, arg6)
