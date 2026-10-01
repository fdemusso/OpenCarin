"""Generic harness: run functions of an RR firmware module in a MIPS emulator (Unicorn, MIPS32 big-endian).

What it provides, learnt on `dbq` (see README.md):
- the module image mapped at `BASE`, `$fp = BASE + 0x7ff0` (the module's `$fp`-relative calls and constants), `$gp` in a
  data area (`$gp = DATA + 0x7ff0`);
- stubs: Python functions that stand for a module offset (`stub`) or for a function the module reaches through a
  `$gp`-relative pointer (`gp_func`); an OS-service gateway (`services`) for the trampolines that load a service id in
  `$t0` and jump through `gp[-0x3ea8]`;
- the 3-operand `mult[u] rd, rs, rt` the CPU has and Unicorn has not;
- a bump allocator, struct helpers, and `explain()` that disassembles the last instructions after a fault.

Two traps (README.md): a memory hook makes a delay-slot load run twice, so there are none unless `debug=True`;
addresses from `0x80000000` are the MIPS kernel segments, so everything is mapped below.
"""

from __future__ import annotations

import struct
import sys
from pathlib import Path
from typing import Callable

import capstone
from unicorn import (UC_ARCH_MIPS, UC_HOOK_CODE, UC_HOOK_MEM_READ_UNMAPPED, UC_HOOK_MEM_WRITE_UNMAPPED,
                     UC_MODE_BIG_ENDIAN, UC_MODE_MIPS32, Uc, UcError)
from unicorn import mips_const as M

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "scripts" / "firmware"))
from mips_dis import FP_BIAS, find_module, load  # noqa: E402

BASE = 0x10000000          # module image
DATA = 0x20000000          # $gp area
STACK = 0x30000000         # stack top
STUBS = 0x40000000         # addresses handed out for Python stubs
RET = 0x4F000000           # return address of the outermost call
USER = 0x50000000          # free area for callers (tiles, records, ...), 16 MB
HEAP = 0x70000000          # bump allocator
PAGE = 0x1000
GPR = [getattr(M, f"UC_MIPS_REG_{n}") for n in
       "ZERO AT V0 V1 A0 A1 A2 A3 T0 T1 T2 T3 T4 T5 T6 T7 S0 S1 S2 S3 S4 S5 S6 S7 T8 T9 K0 K1 GP SP FP RA".split()]
NAMES = "zero at v0 v1 a0 a1 a2 a3 t0 t1 t2 t3 t4 t5 t6 t7 s0 s1 s2 s3 s4 s5 s6 s7 t8 t9 k0 k1 gp sp fp ra".split()
GATEWAY = -0x3EA8          # gp slot of the OS-service gateway (same in the modules read so far)

Handler = Callable[["FwEmu"], "int | None"]


def _align(n: int) -> int:
    return (n + PAGE - 1) // PAGE * PAGE


class FwFault(Exception):
    """The emulated code stopped on an error; `args[1]` holds `FwEmu.explain()`."""


class FwEmu:
    def __init__(self, container: str, module: str, *, debug: bool = False, data_size: int = 0x200000):
        data, mods = load(str(container))
        m = find_module(mods, module)
        self.module = module
        self.image = data[m.offset:m.offset + m.size]
        self.uc = uc = Uc(UC_ARCH_MIPS, UC_MODE_MIPS32 | UC_MODE_BIG_ENDIAN)
        uc.mem_map(BASE, _align(len(self.image)) + PAGE)
        uc.mem_write(BASE, self.image)
        uc.mem_map(DATA, data_size)
        uc.mem_map(STACK - 0x100000, 0x100000)
        uc.mem_map(STUBS, PAGE)
        uc.mem_map(USER, 0x1000000)
        uc.mem_map(HEAP, 0x1000000)
        uc.mem_map(RET, PAGE)
        self.gp = DATA + 0x7FF0
        self.reloc_notes: list[str] = []
        self._load_idata()
        self.heap = HEAP
        self.user = USER
        self.stubs: dict[int, tuple[str, Handler]] = {}
        self.services: dict[int, Handler] = {0x3F: self._svc_alloc, 0x3E: lambda e: 0}
        self.service_log: list[tuple[int, int]] = []
        self.stub_log: list[str] = []
        self.trace: list[int] = []
        self.unmapped: list[tuple[str, int, int]] = []
        self._cs = capstone.Cs(capstone.CS_ARCH_MIPS, capstone.CS_MODE_MIPS32 | capstone.CS_MODE_BIG_ENDIAN)
        self._next_stub = STUBS
        self._mult3()
        uc.hook_add(UC_HOOK_MEM_READ_UNMAPPED | UC_HOOK_MEM_WRITE_UNMAPPED, self._on_unmapped)
        if debug:
            uc.hook_add(UC_HOOK_CODE, self._on_trace)
        self.gp_func(GATEWAY, "os_service", self._gateway)

    # -- initialised data ----------------------------------------------------------------------------------
    def _load_idata(self) -> None:
        """Module header `+0x34` .. `+0x38`: initialised data as `(data offset, length)` + bytes, followed by the
        relocation lists `(count, count * u16 offsets)`: the first list holds module-relative pointers (add `BASE`),
        the second pointers into the data area (add `DATA`). Verified on `dbq`: 250 + 10 entries, every one points at a
        word that looks like such a pointer. A zero count separates / ends the lists."""
        img = self.image
        start, end = struct.unpack_from(">II", img, 0x34)
        p = start
        while p < end:
            off, ln = struct.unpack_from(">II", img, p)
            self.write(DATA + off, img[p + 8:p + 8 + ln])
            p += 8 + ln
        kind, p, skipped = 0, end, 0
        while kind < 2 and p + 4 <= len(img) and skipped < 4:
            n = struct.unpack_from(">I", img, p)[0]
            p += 4
            if n == 0:
                skipped += 1
                continue
            for o in struct.unpack_from(f">{n}H", img, p):
                v = struct.unpack(">I", self.read(DATA + o, 4))[0]
                self.write(DATA + o, struct.pack(">I", (v + (BASE if kind == 0 else DATA)) & 0xFFFFFFFF))
            self.reloc_notes.append(f"list {kind}: {n} words")
            p += 2 * n
            kind += 1

    # -- registers and memory ------------------------------------------------------------------------------
    def reg(self, name: str) -> int:
        return self.uc.reg_read(GPR[NAMES.index(name)])

    def set_reg(self, name: str, v: int) -> None:
        self.uc.reg_write(GPR[NAMES.index(name)], v & 0xFFFFFFFF)

    def read(self, addr: int, n: int) -> bytes:
        return bytes(self.uc.mem_read(addr, n))

    def write(self, addr: int, data: bytes) -> None:
        self.uc.mem_write(addr, data)

    def u32(self, addr: int) -> int:
        return struct.unpack(">I", self.read(addr, 4))[0]

    def u16(self, addr: int) -> int:
        return struct.unpack(">H", self.read(addr, 2))[0]

    def put32(self, addr: int, v: int) -> None:
        self.write(addr, struct.pack(">I", v & 0xFFFFFFFF))

    def alloc(self, n: int) -> int:
        """Heap block (what the memory service hands out). Zeroed, 16-byte aligned, never freed."""
        a = self.heap
        self.heap += max((n + 15) & ~15, 16)
        return a

    def place(self, data: bytes) -> int:
        """Copy `data` into the caller area and return its address (a tile, a record, a message ...)."""
        a = self.user
        self.write(a, data)
        self.user += (len(data) + 15) & ~15
        return a

    def gp_word(self, slot: int, v: int) -> None:
        """Set the global at `$gp + slot`."""
        self.put32(self.gp + slot, v)

    # -- stubs ---------------------------------------------------------------------------------------------
    def stub(self, offset: int, handler: Handler, name: str | None = None) -> None:
        """Replace the module code at `offset` by `handler`; its return value goes to `$v0`."""
        self._add_stub(BASE + offset, handler, name or f"sub_{offset:06x}")

    def gp_func(self, slot: int, name: str, handler: Handler | None = None) -> int:
        """Make `$gp + slot` point to a stub (a function pointer into code outside the module)."""
        a = self._next_stub
        self._next_stub += 16
        self._add_stub(a, handler or (lambda e: 0), name)
        self.gp_word(slot, a)
        return a

    def _add_stub(self, addr: int, handler: Handler, name: str) -> None:
        self.stubs[addr] = (name, handler)
        self.uc.hook_add(UC_HOOK_CODE, self._on_stub, begin=addr, end=addr)

    def _on_stub(self, uc, addr, size, _):
        name, handler = self.stubs[addr]
        self.stub_log.append(name)
        v = handler(self)
        uc.reg_write(M.UC_MIPS_REG_V0, (v or 0) & 0xFFFFFFFF)
        uc.reg_write(M.UC_MIPS_REG_PC, uc.reg_read(M.UC_MIPS_REG_RA))

    def _gateway(self, emu) -> int:
        sid = self.reg("t0")
        self.service_log.append((sid, self.reg("a0")))
        return self.services.get(sid, lambda e: 0)(self)

    def _svc_alloc(self, emu) -> int:
        return self.alloc(self.reg("a0"))

    # -- the 3-operand multiply ----------------------------------------------------------------------------
    def _mult3(self) -> None:
        for off in range(0, len(self.image) - 3, 4):
            w = struct.unpack_from(">I", self.image, off)[0]
            if w >> 26 == 0 and (w & 0x3F) in (0x18, 0x19) and (w >> 11) & 31 and not (w >> 6) & 31:
                self.uc.hook_add(UC_HOOK_CODE, self._on_mult3, begin=BASE + off, end=BASE + off)

    def _on_mult3(self, uc, addr, size, _):
        w = struct.unpack(">I", self.read(addr, 4))[0]
        rs, rt, rd = (w >> 21) & 31, (w >> 16) & 31, (w >> 11) & 31
        a, b = uc.reg_read(GPR[rs]), uc.reg_read(GPR[rt])
        if w & 1 == 0:                                       # signed
            a, b = (a - (1 << 32) if a >> 31 else a), (b - (1 << 32) if b >> 31 else b)
        p = (a * b) & 0xFFFFFFFFFFFFFFFF
        uc.reg_write(GPR[rd], p & 0xFFFFFFFF)
        uc.reg_write(M.UC_MIPS_REG_HI, p >> 32)
        uc.reg_write(M.UC_MIPS_REG_LO, p & 0xFFFFFFFF)
        uc.reg_write(M.UC_MIPS_REG_PC, addr + 4)

    # -- diagnostics ---------------------------------------------------------------------------------------
    def _on_trace(self, uc, addr, size, _):
        self.trace.append(addr)
        if len(self.trace) > 80:
            del self.trace[0]

    def _on_unmapped(self, uc, access, addr, size, value, _):
        self.unmapped.append(("r" if access == 19 else "w", addr, uc.reg_read(M.UC_MIPS_REG_PC)))
        return False

    def explain(self, n: int = 14) -> str:
        """The last `n` instructions run (needs `debug=True`) with the registers they used, offsets are module offsets."""
        lines = []
        for a in self.trace[-n:]:
            try:
                ins = next(self._cs.disasm(self.read(a, 4), a - BASE, count=1))
                lines.append(f"{a - BASE:06x}  {ins.mnemonic:8s} {ins.op_str}")
            except (StopIteration, UcError):
                lines.append(f"{a - BASE:06x}  ?")
        regs = " ".join(f"{r}={self.reg(r):x}" for r in ("v0", "a0", "a1", "a2", "a3", "t0", "t1", "s0", "s1", "ra"))
        return "\n".join(lines) + "\n" + regs + f"\nunmapped: {[(k, hex(a), hex(p - BASE)) for k, a, p in self.unmapped[:5]]}"

    # -- calls ---------------------------------------------------------------------------------------------
    def call(self, offset: int, *args: int, stack: tuple[int, ...] = (), max_insn: int = 1_000_000, sp: int | None = None) -> int:
        """Call the function at module `offset`; `args` go to `$a0..$a3`, `stack` to the caller-frame slots at
        `sp + 0x10, +0x14 ...`? No: at `sp + 8 + 4 * i` as the module's own callers do (word i = argument 5 + i)."""
        uc = self.uc
        sp = sp if sp is not None else STACK - 0x1000
        for i, v in enumerate(stack):
            self.put32(sp + 8 + 4 * i, v)
        self.set_reg("sp", sp)
        self.set_reg("gp", self.gp)
        self.set_reg("fp", BASE + FP_BIAS)
        for i, v in enumerate(args[:4]):
            self.set_reg(f"a{i}", v)
        self.set_reg("ra", RET)
        self.unmapped.clear()
        self.heap_mark = self.heap
        try:
            uc.emu_start(BASE + offset, RET, count=max_insn)
        except UcError as e:
            raise FwFault(f"{e} at {uc.reg_read(M.UC_MIPS_REG_PC) - BASE:#x}", self.explain()) from e
        return self.reg("v0")
