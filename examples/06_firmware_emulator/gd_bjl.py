"""The RR `gd_bjl` module (guidance junction lists) on the generic harness; see README.md.

`gd_bjl` is a process with a message loop (`sub_002238` is the handler of the `dbq` descriptors); it cannot be called as
a whole, so this runs ranges of it with a hand-built stack frame (`FwEmu.run_at`). Object layouts are **read** from the
listing (docs/fw/04 §13), see `docs/fw/04` §16 for what is verified.
"""

from __future__ import annotations

import struct

from fwemu import ROOT, FwEmu, FwFault

FIRMWARE = ROOT / "build" / "fw" / "V_2_RR_0101_BMWC01S_app_sw_bsw2"
GP_CTX = -0x7A80           # gp-relative pointer to a context; ctx + 0x108 = free list of 0x74-byte items
ITEM_SIZE = 0x74


class GdBjlEmu(FwEmu):
    def __init__(self, n_items: int = 64, debug: bool = False):
        super().__init__(FIRMWARE, "gd_bjl", debug=debug)
        self.ctx = self.place(bytes(0x400))
        self.gp_word(GP_CTX, self.ctx)
        pool = self.place(bytes(ITEM_SIZE * n_items))
        for i in range(n_items):                                  # free list linked through `+0`
            nxt = pool + ITEM_SIZE * (i + 1) if i + 1 < n_items else 0
            self.put32(pool + ITEM_SIZE * i, nxt)
        self.put32(self.ctx + 0x108, pool)
        self.pool = pool

    def create_item(self, descriptor: bytes, junction: int | None = None) -> int:
        """Run the descriptor case of `sub_002238` (`0x23f8`..`0x2838`) for one 52-byte `dbq` descriptor: allocate an item
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
