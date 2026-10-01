"""The RR `gd_bjl` module (guidance junction lists) on the generic harness; see README.md.

`gd_bjl` is a process with a message loop (`sub_002238` is the handler of the `dbq` descriptors); it cannot be called as
a whole, so this runs ranges of it with a hand-built stack frame (`FwEmu.run_at`). Object layouts are **read** from the
listing (docs/fw/04 §13), see `docs/fw/04` §16 for what is verified.
"""

from __future__ import annotations

import struct

from fwemu import ROOT, FwEmu, FwFault

FIRMWARE = ROOT / "build" / "fw" / "V_2_RR_0101_BMWC01S_app_sw_bsw2"
GP_POINT_EQUAL = -0x7DF8    # gp-relative function pointer: `(point a, point b)` -> nonzero when they are the same point
GP_POINT_OFFSET = -0x7C48   # gp-relative function pointer: `(latitude, bearing, distance, out)` -> displacement (dx, dy)
GP_POINT_ADD = -0x7C80      # gp-relative function pointer: `(point, displacement, out)` -> out = point + displacement
GP_SIDE = -0x7C88           # gp-relative function pointer: `(point, line of two points)` -> sign of the side
SIDE_SIGN = 1               # **unknown**: which side the real function calls positive (it decides left / right)
GP_CTX = -0x7A80           # gp-relative pointer to a context; ctx + 0x108 = free list of 0x74-byte items
ITEM_SIZE = 0x74


def _point_offset(emu) -> int:
    """**Hypothesis** (from the call at `0xa788`: `a0` = the centre's `y`, `a1` = bearing in 1/100 degree, `a2` = `10000`,
    `a3` = out): the displacement, in CARIN units, of a point `a2 / 100` metres away along bearing `a1 / 100` degrees,
    at the latitude of `a0`; written as two big-endian `s32` (dx, dy). The real function is outside the module."""
    from math import cos, radians, sin

    from carin.parser.iso import K, LAT_ORIGIN
    y, brg, dist = emu.reg("a0"), emu.reg("a1") / 100.0, emu.reg("a2") / 100.0
    if y >= 1 << 31:
        y -= 1 << 32
    lat = y / K + LAT_ORIGIN
    dy = dist * cos(radians(brg)) / 111_320.0 * K
    dx = dist * sin(radians(brg)) / (111_320.0 * cos(radians(lat))) * K
    emu.write(emu.reg("a3"), struct.pack(">ii", round(dx), round(dy)))
    return 0


def _point_add(emu) -> int:
    """**Hypothesis** (call at `0xa7f0`, `a0` = centre, `a1` = the displacement of `_point_offset`, `a2` = a new point):
    `out = a0 + a1`, component by component, as `s32`."""
    x, y = struct.unpack(">ii", emu.read(emu.reg("a0"), 8))
    dx, dy = struct.unpack(">ii", emu.read(emu.reg("a1"), 8))
    emu.write(emu.reg("a2"), struct.pack(">ii", x + dx, y + dy))
    return 0


def _side_of_line(emu) -> int:
    """**Hypothesis** (calls at `0x10108` and `0x10124`: two points tested against the same 16-byte line, a result `> 0`
    on either sets a flag): the sign of the cross product of the line direction and the point, `x` east, `y` north,
    multiplied by `SIDE_SIGN`. Which side is positive in the real function is not known."""
    px, py = struct.unpack(">ii", emu.read(emu.reg("a0"), 8))
    x1, y1, x2, y2 = struct.unpack(">4i", emu.read(emu.reg("a1"), 16))
    cross = (x2 - x1) * (py - y1) - (y2 - y1) * (px - x1)
    return SIDE_SIGN * ((cross > 0) - (cross < 0))


class GdBjlEmu(FwEmu):
    def __init__(self, n_items: int = 128, debug: bool = False):
        super().__init__(FIRMWARE, "gd_bjl", debug=debug)
        self.gp_func(GP_POINT_EQUAL, "point_equal", lambda e: int(e.read(e.reg("a0"), 8) == e.read(e.reg("a1"), 8)))
        self.gp_func(GP_POINT_OFFSET, "point_offset", _point_offset)
        self.gp_func(GP_POINT_ADD, "point_add", _point_add)
        self.gp_func(GP_SIDE, "side_of_line", _side_of_line)
        self.ctx = self.place(bytes(0x400))
        self.gp_word(GP_CTX, self.ctx)
        # the context holds free lists: `+0x104` junction objects (0x80 bytes, `sub_004d18`), `+0x108` items (0x74, `sub_004dd0`),
        # `+0x10c` point cells (12, `sub_004e6c`), `+0x110`, `+0x114`, `+0x118` (`sub_004edc`...); all `+0xfc..+0x118` are
        # given 0x100-byte cells, only the memset length of the allocator matters (**read**; the last three and the
        # lists below `+0x104` are not decoded)
        self.pools: dict[int, int] = {}
        for off in range(0xFC, 0x11C, 4):
            base = self.place(bytes(0x100 * n_items))
            for i in range(n_items):
                self.put32(base + 0x100 * i, base + 0x100 * (i + 1) if i + 1 < n_items else 0)
            self.put32(self.ctx + off, base)
            self.pools[off] = base
        self.pool = self.pools[0x108]
        # `sub_004090` compares `J'+0x48` with `gp[-0x7a8c]` (**read**; looks like the vehicle position) and sets a special
        # type `0x7c..0x80` on a match: a zero there matches every zero, so the harness puts a value no junction has
        self.gp_word(-0x7A8C, 0x7FFFFFFF)
        self.unbound = self.bind_unbound()

    def create_item(self, descriptor: bytes, junction: int | None = None) -> int:
        """Only for a descriptor without points (`+0x2f` = 0; the point loop reads the parser's pointers, use `feed_segment`).
        Run the descriptor case of `sub_002238` (`0x23f8`..`0x2838`) for one 52-byte `dbq` descriptor: allocate an item
        from the pool, fill it and link it into `junction`'s list (`+0x24`). Returns the item address.
        The stack frame is hand-built: descriptor at `sp + 0x2c`, junction at `sp + 0xd4`, parser state zero."""
        from fwemu import STACK
        j = junction if junction is not None else self.place(bytes(0x100))
        sp = STACK - 0x4000
        self.write(sp + 0x2C, descriptor)
        first = self.u32(self.ctx + 0x108)
        self.run_at(0x23F8, 0x2838, regs={"s1": sp + 0x2C}, frame={0xD4: j, 0x60: 0, 0x64: 0, 0x68: 0}, sp=sp)
        self.last_junction = j
        return first

    def feed_segment(self, stream: bytes, junction: int | None = None) -> int:
        """The whole descriptor case for one `dbq` stream (descriptor, text records, points, signs): preload the module's
        stream-reader state (`gp[-0x64d4]` buffer, `gp[-0x64e4]` position, `gp[-0x64e0]` length, **read** from `sub_013b0c`),
        let the module's own parser `sub_014240` split it, then run the item creation. Returns the item address."""
        from fwemu import STACK
        sp = STACK - 0x4000
        self.write(self.gp - 0x64D4, stream)
        self.put32(self.gp - 0x64E4, 0)
        self.write(self.gp - 0x64E0, struct.pack(">h", len(stream)))
        out = self.place(bytes(16))
        if not self.call(0x14240, sp + 0x2C, out, out + 4, out + 8, sp=sp - 0x400):
            raise FwFault("sub_014240 refused the stream", "")
        names, points, signs = self.u32(out), self.u32(out + 4), self.u32(out + 8)
        j = junction if junction is not None else self.place(bytes(0x100))
        first = self.u32(self.ctx + 0x108)
        self.run_at(0x23F8, 0x2838, regs={"s1": sp + 0x2C}, frame={0xD4: j, 0x60: names, 0x64: signs, 0x68: points}, sp=sp)
        return first
