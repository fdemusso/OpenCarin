"""Run the RR `dbq` descriptor builder (`sub_00fc28`) in a MIPS emulator.

Loads the `dbq` module of the RR 0101 firmware (read-only, from `build/fw/`, see
`scripts/firmware/extract_firmware.py`), maps it at a fixed address with `$fp = base + 0x7ff0`, gives it a data
area for `$gp`, a synthetic tile (two node records and one S4 record) and stubs for the calls that leave the module's
pure computation. The 52-byte descriptor the function hands to `sub_003b38` is captured and returned.

    uv run --with capstone --with unicorn python examples/06_emulate_dbq_descriptor/emu.py
"""

from __future__ import annotations

import struct
import sys
from pathlib import Path

from unicorn import (UC_ARCH_MIPS, UC_HOOK_CODE, UC_HOOK_MEM_READ, UC_HOOK_MEM_READ_UNMAPPED, UC_HOOK_MEM_WRITE_UNMAPPED,
                     UC_MODE_BIG_ENDIAN, UC_MODE_MIPS32, Uc, UcError)
from unicorn.mips_const import (UC_MIPS_REG_A0, UC_MIPS_REG_A1, UC_MIPS_REG_A2, UC_MIPS_REG_A3, UC_MIPS_REG_FP,
                                UC_MIPS_REG_GP, UC_MIPS_REG_HI, UC_MIPS_REG_LO, UC_MIPS_REG_PC, UC_MIPS_REG_RA, UC_MIPS_REG_SP, UC_MIPS_REG_V0)

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "scripts" / "firmware"))
from mips_dis import FP_BIAS, find_module, load  # noqa: E402

FIRMWARE = ROOT / "build" / "fw" / "V_2_RR_0101_BMWC01S_app_sw_bsw2"
BASE = 0x10000000          # module image
DATA = 0x20000000          # $gp area (gp = DATA + 0x7ff0)
STACK = 0x30000000         # stack top
TILE = 0x50000000          # synthetic tile
LAYOUT = 0x60000000        # synthetic layout table
STUBS = 0x40000000         # entry points the module reaches through gp-relative function pointers
HEAP = 0x70000000          # bump allocator for the memory service stub
PAGE = 0x1000

FUNC = 0xFC28              # sub_00fc28, the descriptor builder
EMIT = 0x3B38              # sub_003b38, appends to the output buffer
GET_TILE = 0x398DC         # sub_0398dc, tile lookup
# gp slots holding function pointers into services outside the module: slot -> name (no-op stub, returns 0)
GP_FUNCS = {-0x7CE4: "shape_decode", -0x3EA8: "os_service"}   # the trampolines at 0x54xxx load $t0 = service id and jump here
GP_LAYOUT = -0x5EC4        # gp-relative pointer to the layout table (read at 0xfde8)


def _align(n: int) -> int:
    return (n + PAGE - 1) // PAGE * PAGE


class DbqEmu:
    GPR = [getattr(__import__("unicorn.mips_const", fromlist=["x"]), f"UC_MIPS_REG_{n}") for n in (
        "ZERO AT V0 V1 A0 A1 A2 A3 T0 T1 T2 T3 T4 T5 T6 T7 S0 S1 S2 S3 S4 S5 S6 S7 T8 T9 K0 K1 GP SP FP RA".split())]

    def __init__(self, layout: dict[int, int] | None = None, rel: int = 27, subrel: int = 0, debug: bool = False):
        data, mods = load(str(FIRMWARE))
        m = find_module(mods, "dbq")
        self.image = data[m.offset:m.offset + m.size]
        self.uc = Uc(UC_ARCH_MIPS, UC_MODE_MIPS32 | UC_MODE_BIG_ENDIAN)
        uc = self.uc
        uc.mem_map(BASE, _align(len(self.image)) + PAGE)
        uc.mem_write(BASE, self.image)
        uc.mem_map(DATA, 0x100000)
        uc.mem_map(STACK - 0x100000, 0x100000)
        uc.mem_map(TILE, 0x200000)
        uc.mem_map(LAYOUT, 0x1000)
        uc.mem_map(HEAP, 0x800000)
        self.heap = HEAP
        uc.mem_map(STUBS, PAGE)
        self.stubs: dict[int, str] = {}
        for i, (slot, name) in enumerate(GP_FUNCS.items()):
            self.stubs[STUBS + 16 * i] = name
            uc.mem_write(DATA + 0x7FF0 + slot, struct.pack(">I", STUBS + 16 * i))
        self.stub_calls: list[str] = []
        self.memsvc: list[tuple[int, int]] = []
        self.gp = DATA + 0x7FF0
        self.rel, self.subrel = rel, subrel
        uc.mem_write(self.gp + GP_LAYOUT, struct.pack(">I", LAYOUT))
        self.set_layout(layout or {})
        self.captured: list[bytes] = []
        self.trace: list[int] = []
        self.calls: dict[int, int] = {}
        self.unmapped: list[tuple[str, int, int]] = []
        self.layout_reads: dict[int, int] = {}
        # hooks on the few addresses that need Python (the 3-operand multiplies, the stubbed calls); a hook on every
        # instruction would make a run about 50 times slower
        special = [BASE + EMIT, BASE + GET_TILE] + list(self.stubs)
        for off in range(0x1000, 0x56C68, 4):
            w = struct.unpack_from(">I", self.image, off)[0]
            if w >> 26 == 0 and (w & 0x3F) in (0x18, 0x19) and (w >> 11) & 31 and not (w >> 6) & 31:
                special.append(BASE + off)
        for a in special:
            uc.hook_add(UC_HOOK_CODE, self._code, begin=a, end=a)
        if debug:
            uc.hook_add(UC_HOOK_CODE, self._trace)
        if debug:                       # a memory hook makes Unicorn run a delay-slot load twice; keep it off
            uc.hook_add(UC_HOOK_MEM_READ, self._read_layout, begin=LAYOUT, end=LAYOUT + 0x3FF)
        uc.hook_add(UC_HOOK_MEM_READ_UNMAPPED | UC_HOOK_MEM_WRITE_UNMAPPED, self._unmapped)

    def set_layout(self, t: dict[int, int]) -> None:
        """Layout table L: `L + 0x14` DB-REL, `L + 0x1e + 2 * id` field offsets (see docs/fw/04)."""
        buf = bytearray(0x400)
        struct.pack_into(">HH", buf, 0x14, self.rel, self.subrel)
        for i, v in t.items():
            struct.pack_into(">H", buf, 0x1E + 2 * i, v)
        self.uc.mem_write(LAYOUT, bytes(buf))

    # -- hooks ---------------------------------------------------------------------------------------------
    def _code(self, uc, addr, size, _):
        off = addr - BASE
        if addr in self.stubs:
            from unicorn.mips_const import UC_MIPS_REG_T0
            name = self.stubs[addr]
            if name == "os_service":
                sid = uc.reg_read(UC_MIPS_REG_T0)
                self.memsvc.append((sid, uc.reg_read(UC_MIPS_REG_A0)))
                if sid == 0x3F:                          # allocate; 0x3e is the matching free
                    size = (uc.reg_read(UC_MIPS_REG_A0) + 15) & ~15
                    uc.reg_write(UC_MIPS_REG_V0, self.heap)
                    self.heap += max(size, 16)
                else:
                    uc.reg_write(UC_MIPS_REG_V0, 0)
                uc.reg_write(UC_MIPS_REG_PC, uc.reg_read(UC_MIPS_REG_RA))
                return
            self.stub_calls.append(name)
            uc.reg_write(UC_MIPS_REG_V0, 0)
            uc.reg_write(UC_MIPS_REG_PC, uc.reg_read(UC_MIPS_REG_RA))
            return
        word = struct.unpack(">I", bytes(uc.mem_read(addr, 4)))[0]
        if word >> 26 == 0 and (word & 0x3F) in (0x18, 0x19) and (word >> 11) & 31 and not (word >> 6) & 31:
            self._mult3(uc, word)
            uc.reg_write(UC_MIPS_REG_PC, addr + 4)
            return
        if off == EMIT:
            a0, n = uc.reg_read(UC_MIPS_REG_A0), uc.reg_read(UC_MIPS_REG_A1)
            self.captured.append(bytes(uc.mem_read(a0, n)))
            uc.reg_write(UC_MIPS_REG_V0, 1)
            uc.reg_write(UC_MIPS_REG_PC, uc.reg_read(UC_MIPS_REG_RA))
        elif off == GET_TILE:
            uc.mem_write(uc.reg_read(UC_MIPS_REG_A2), struct.pack(">I", TILE))
            uc.reg_write(UC_MIPS_REG_V0, 0x1F3)
            uc.reg_write(UC_MIPS_REG_PC, uc.reg_read(UC_MIPS_REG_RA))

    def _mult3(self, uc, word: int) -> None:
        """The CPU has the 3-operand `mult[u] rd, rs, rt` (SPECIAL 0x18 / 0x19 with rd set); Unicorn has not."""
        rs, rt, rd = (word >> 21) & 31, (word >> 16) & 31, (word >> 11) & 31
        a, b = uc.reg_read(self.GPR[rs]), uc.reg_read(self.GPR[rt])
        if word & 1 == 0:
            a, b = (a - (1 << 32) if a >> 31 else a), (b - (1 << 32) if b >> 31 else b)
        prod = (a * b) & 0xFFFFFFFFFFFFFFFF
        uc.reg_write(self.GPR[rd], prod & 0xFFFFFFFF)
        uc.reg_write(UC_MIPS_REG_HI, prod >> 32)
        uc.reg_write(UC_MIPS_REG_LO, prod & 0xFFFFFFFF)

    def _trace(self, uc, addr, size, _):
        self.trace.append(addr - BASE)
        if len(self.trace) > 60:
            del self.trace[0]

    def _read_layout(self, uc, access, addr, size, value, _):
        self.layout_reads[addr - LAYOUT] = self.layout_reads.get(addr - LAYOUT, 0) + 1

    def _unmapped(self, uc, access, addr, size, value, _):
        self.unmapped.append(("r" if access == 19 else "w", addr, uc.reg_read(UC_MIPS_REG_PC) - BASE))
        return False

    # -- one call ------------------------------------------------------------------------------------------
    def run_tile(self, tile: bytes, seg_off: int, tile_id: int = 0, a2: int = 0, a3: int = 0, arg5: int = 0,
                 arg6: int = 0):
        """Run `sub_00fc28` for the S4 record at byte offset `seg_off` of a decoded tile. Returns (captured, ret)."""
        uc = self.uc
        uc.mem_write(TILE, tile)
        ref = DATA + 0x80000
        uc.mem_write(ref, struct.pack(">IIH", tile_id, 0, seg_off) + b"\0\0")
        sp = STACK - 0x1000
        uc.mem_write(sp + 8, struct.pack(">I", arg5) + struct.pack(">I", arg6))
        uc.reg_write(UC_MIPS_REG_SP, sp)
        uc.reg_write(UC_MIPS_REG_GP, self.gp)
        uc.reg_write(UC_MIPS_REG_FP, BASE + FP_BIAS)
        for reg, v in ((UC_MIPS_REG_A0, ref), (UC_MIPS_REG_A1, DATA + 0x81000), (UC_MIPS_REG_A2, a2),
                       (UC_MIPS_REG_A3, a3)):
            uc.reg_write(reg, v)
        ret = 0x4F000000
        if not self._ret_mapped():
            uc.mem_map(ret, PAGE)
        uc.reg_write(UC_MIPS_REG_RA, ret)
        self.captured.clear()
        self.unmapped.clear()
        self.heap = HEAP
        try:
            uc.emu_start(BASE + FUNC, ret, count=20000000)
        except UcError as e:
            return self.captured[:], f"UcError {e} at {uc.reg_read(UC_MIPS_REG_PC) - BASE:#x}"
        return self.captured[:], uc.reg_read(UC_MIPS_REG_V0)

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

    def _ret_mapped(self) -> bool:
        try:
            self.uc.mem_read(0x4F000000, 4)
            return True
        except UcError:
            return False


if __name__ == "__main__":
    emu = DbqEmu()
    s4 = bytes.fromhex("000000000000000000001f60015d80f600200000000000000000000010040000")
    node = bytes.fromhex("0000000000000000")
    out, ret = emu.run(s4, node, node)
    print("ret", ret, "captured", [c.hex() for c in out])
    print("unmapped", [(k, hex(a), hex(p)) for k, a, p in emu.unmapped][:10])
