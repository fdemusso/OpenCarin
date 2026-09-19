"""Unicorn m68k trace of rpmod+0x66de — STEP 2 semantic analysis.

Skips the prologue and injects register state directly at the first read (0x672c).
Traces every memory read that falls in the decoded 0x0E block.

Usage:  .venv/Scripts/python.exe scripts/emu_rpmod_0x66de.py [--sector N]
"""
from __future__ import annotations
import argparse, struct, sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from unicorn import *
from unicorn.m68k_const import *
from carin.parser import cf1
from carin.parser.iso import CarinVolume, IsoImage
from cf1_super import layout_table

ISO    = "dataset/NAV_DB_21708.ISO"
RPMOD  = Path("dbq/rpmod.asm")

# ─── cli ──────────────────────────────────────────────────────────────────
ap = argparse.ArgumentParser()
ap.add_argument("--sector", type=int, default=2252227)
ap.add_argument("--s0-index", type=int, default=0, help="S0 record index to trace")
args = ap.parse_args()
SECTOR   = args.sector
S0_INDEX = args.s0_index

# ─── parse rpmod.asm → flat byte array at native VAs ──────────────────────
def load_asm(path: Path) -> bytearray:
    segs: list[tuple[int, bytes]] = []
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        parts = line.strip().split(":")
        if len(parts) < 2:
            continue
        hex_b = parts[1].strip().split()[0] if parts[1].strip() else ""
        if not hex_b or not all(c in "0123456789abcdefABCDEF" for c in hex_b):
            continue
        if len(hex_b) % 2 != 0:
            continue
        try:
            segs.append((int(parts[0].strip(), 16), bytes.fromhex(hex_b)))
        except ValueError:
            continue
    segs.sort()
    end = max(a + len(d) for a, d in segs)
    buf = bytearray(end)
    for a, d in segs:
        buf[a:a + len(d)] = d
    return buf

print("Parsing rpmod.asm...", end=" ", flush=True)
CODE = load_asm(RPMOD)
CODE_SIZE = (len(CODE) + 0xFFFF) & ~0xFFFF
print(f"{len(CODE):#x} bytes")

# ─── decode 0x0E block ────────────────────────────────────────────────────
vol   = CarinVolume(IsoImage(ISO))
sb    = vol.read_sectors(0, 2)
table = layout_table(sb)
dbrel = struct.unpack_from(">H", sb, 0x1A)[0]

blk     = vol.block(SECTOR)
decoded = bytearray(cf1.decode_block(blk.raw, table, dbrel))

bd   = table[cf1.T_DESC_BASE]
e0_off, e0_cnt = struct.unpack_from(">HH", decoded, bd + 0)
e1_off, e1_cnt = struct.unpack_from(">HH", decoded, bd + 4)
e2_off, e2_cnt = struct.unpack_from(">HH", decoded, bd + 8)
s0 = table[cf1.T_REC_S0_0E]; s1 = table[cf1.T_REC_S1_0E]; s2 = table[cf1.T_REC_S2_0E]

print(f"Block {SECTOR}: S0={e0_cnt} S1={e1_cnt} S2={e2_cnt}")
if S0_INDEX >= e0_cnt:
    print(f"S0 index {S0_INDEX} out of range"); sys.exit(1)

s0_off = e0_off + S0_INDEX * s0
A0, FL0, B0, C0, D0 = struct.unpack_from(">HBBHH", decoded, s0_off)
print(f"S0[{S0_INDEX}]: A={A0:#x} FLAGS={FL0:#04x} B={B0:#04x} C={C0:#x} D={D0:#x}")
sp1, sc1, sf1 = struct.unpack_from(">HBB", decoded, D0)
print(f"S1[D]: ptr={sp1:#x} span_count={sc1} flag={sf1}")

# ─── memory layout ────────────────────────────────────────────────────────
# All regions mapped well apart so reads outside block are clearly out-of-range.
BLOCK_ADDR = 0x0030_0000          # decoded block data
GLOB_ADDR  = 0x0100_0000          # a6-relative globals; a6 = GLOB_ADDR + 0x8000
A6         = GLOB_ADDR  + 0x8000
STACK_ADDR = 0x0200_0000
STACK_SIZE = 0x0008_0000
STACK_TOP  = STACK_ADDR + STACK_SIZE - 0x80
STUB_ADDR  = 0x00F0_0000          # halt stubs for external calls

mu = Uc(UC_ARCH_M68K, UC_MODE_BIG_ENDIAN)
mu.mem_map(0,          CODE_SIZE)
mu.mem_map(BLOCK_ADDR, (len(decoded) + 0xFFFF) & ~0xFFFF)
mu.mem_map(GLOB_ADDR,  0x0001_0000)
mu.mem_map(STACK_ADDR, STACK_SIZE)
mu.mem_map(STUB_ADDR,  0x0001_0000)

mu.mem_write(0,          bytes(CODE_SIZE))
mu.mem_write(0,          bytes(CODE))       # code at native VAs
mu.mem_write(BLOCK_ADDR, bytes(decoded))
mu.mem_write(GLOB_ADDR,  bytes(0x0001_0000))
mu.mem_write(STACK_ADDR, bytes(STACK_SIZE))
# Fill stub area with RTS (0x4E75) for external jsr targets
mu.mem_write(STUB_ADDR,  bytes([0x4E, 0x75] * (0x0001_0000 // 2)))

# ─── build the post-prologue register state ───────────────────────────────
# After link.w a5,#0 + movem(8 regs) + lea -$62(a7):
#   a5 = entry_sp - 4
#   a7 = a5 - 32 - 98 = a5 - 0x82
#
# Param layout (a7-relative):
#   $8e(a7) = a5 + 0x0c = param1 = CTX_A  → CTX_A[+0xa] = BLOCK_ADDR
#   $92(a7) = a5 + 0x10 = param2 = CTX_B  → first 0x16 bytes copied to locals
#   $66(a7) = a5 - 0x1c              = ARC_REC (arc record pointer)

# Choose a5 freely (stack must be accessible around it)
A5 = STACK_TOP - 0x200
A7 = A5 - 0x82

# Context A: [+0xa] = BLOCK_ADDR (block base pointer)
CTX_A = GLOB_ADDR + 0x0100
ctx_a_buf = bytearray(0x20)
struct.pack_into(">I", ctx_a_buf, 0x0a, BLOCK_ADDR)
mu.mem_write(CTX_A, bytes(ctx_a_buf))

# Arc record: S0 fields [0..7] + runtime flag byte [8] = 0
ARC_REC = GLOB_ADDR + 0x0200
arc_buf = bytearray(0x20)
arc_buf[0:s0] = decoded[s0_off:s0_off + s0]
arc_buf[8] = 0   # runtime flag at +8
mu.mem_write(ARC_REC, bytes(arc_buf))

# Context B: first 0x16 bytes (prologue copies [0..14] to locals, [+14]=u16)
# Content doesn't matter for the reads we care about; use zeros.
CTX_B = GLOB_ADDR + 0x0300

# Write params to stack (at a5-relative positions)
def write_param(offset_from_a5: int, val: int):
    addr = A5 + offset_from_a5
    mu.mem_write(addr, struct.pack(">I", val))

write_param(0x0c, CTX_A)   # $8e(a7) = a5+0x0c
write_param(0x10, CTX_B)   # $92(a7) = a5+0x10

# Write ARC_REC at $66(a7) = a5-0x1c
arc_local = A5 - 0x1c
mu.mem_write(arc_local, struct.pack(">I", ARC_REC))

# Context B: prologue copies CTX_B[0..14] to locals at a7+0x30..a7+0x44
# (= a5-0x52 to a5-0x3e). Just zeros is fine.
# Also set a3 = a7+0x30 (lea $30(a7),a3 in prologue)
A3 = A7 + 0x30
# Write fake "first S0 record" copy into a3 area (prologue copies CTX_B[0..0x14] there)
loc_copy = bytearray(0x20)
loc_copy[0:s0] = decoded[s0_off:s0_off + s0]
mu.mem_write(A3, bytes(loc_copy))

# ─── set registers ────────────────────────────────────────────────────────
mu.reg_write(UC_M68K_REG_SR, 0x2000)   # supervisor mode (OS-9 firmware context)
mu.reg_write(UC_M68K_REG_A5, A5)
mu.reg_write(UC_M68K_REG_A7, A7)       # in supervisor mode → writes SSP
mu.reg_write(UC_M68K_REG_A6, A6)
mu.reg_write(UC_M68K_REG_A3, A3)

# Patch all external jsr targets (a6-relative) to STUB_ADDR
# They are of the form: jsr -XXXXXX(a6)  opcode 4EAE XXXX
# We don't patch them, but the stub area returns gracefully.
# For jsr (a0) and similar function-pointer calls, a0 must point to a stub.
# We'll see if they cause issues.

# ─── hooks ────────────────────────────────────────────────────────────────
INSN_LIMIT = 8000
insn_count = [0]
read_log: list[tuple[int, int, int, str]] = []   # pc, off, sz, name

def field_name(off: int) -> str:
    for i in range(e0_cnt):
        b = e0_off + i * s0
        if b <= off < b + s0:
            fo = off - b
            n = {0:"S0.A_hi",1:"S0.A_lo",2:"S0.FLAGS",3:"S0.B",
                 4:"S0.C_hi",5:"S0.C_lo",6:"S0.D_hi",7:"S0.D_lo"}
            return f"S0[{i}]+{fo}={n.get(fo,'?')}"
    for i in range(e1_cnt):
        b = e1_off + i * s1
        if b <= off < b + s1:
            fo = off - b
            n = {0:"S1.ptr_hi",1:"S1.ptr_lo",2:"S1.span_count",
                 3:"S1.flag",4:"S1[4]",5:"S1[5]"}
            return f"S1[{i}]+{fo}={n.get(fo,'?')}"
    for i in range(e2_cnt):
        b = e2_off + i * s2
        if b <= off < b + s2:
            fo = off - b
            n = {0:"x_anc.b0",1:"x_anc.b1",2:"x_anc.b2",3:"x_anc.b3",
                 4:"y_anc.b0",5:"y_anc.b1",6:"y_anc.b2",7:"y_anc.b3",
                 8:"d[0].hi",9:"d[0].lo",10:"d[1].hi",11:"d[1].lo",
                 12:"d[2].hi",13:"d[2].lo",14:"d[3].hi",15:"d[3].lo",
                 16:"f2.b0",17:"f2.b1",18:"f2.b2",19:"f2.b3",
                 20:"val1.hi",21:"val1.lo",22:"val2.hi",23:"val2.lo"}
            return f"S2[{i}]+{fo}={n.get(fo,'?')}"
    if off < e0_off:
        return f"HDR+{off:#x}"
    return f"UNKNOWN+{off:#x}"

def hook_read(uc, acc, addr, sz, val, ud):
    if BLOCK_ADDR <= addr < BLOCK_ADDR + len(decoded):
        off = addr - BLOCK_ADDR
        pc  = uc.reg_read(UC_M68K_REG_PC)
        read_log.append((pc, off, sz, field_name(off)))

def hook_code(uc, addr, sz, ud):
    insn_count[0] += 1
    if insn_count[0] <= 5:
        a0 = uc.reg_read(UC_M68K_REG_A0)
        a7 = uc.reg_read(UC_M68K_REG_A7)
        print(f"    insn#{insn_count[0]} PC={addr:#010x}  A0={a0:#010x}  A7={a7:#010x}")
    if insn_count[0] >= INSN_LIMIT:
        uc.emu_stop()

bad_access: list[str] = []
def hook_bad(uc, acc, addr, sz, val, ud):
    pc = uc.reg_read(UC_M68K_REG_PC)
    t = {UC_MEM_READ_UNMAPPED:"R",UC_MEM_WRITE_UNMAPPED:"W",
         UC_MEM_FETCH_UNMAPPED:"F"}.get(acc,"?")
    bad_access.append(f"  {t}@{addr:#010x} sz={sz} PC={pc:#010x}")
    return False

mu.hook_add(UC_HOOK_MEM_READ,           hook_read)
mu.hook_add(UC_HOOK_CODE,               hook_code)
mu.hook_add(UC_HOOK_MEM_READ_UNMAPPED,  hook_bad)
mu.hook_add(UC_HOOK_MEM_WRITE_UNMAPPED, hook_bad)
mu.hook_add(UC_HOOK_MEM_FETCH_UNMAPPED, hook_bad)

# ─── handle jsr -XXXX(a6) calls → redirect to STUB ────────────────────────
# These are OS-9 system calls. When the CPU jumps to STUB_ADDR area it finds RTS.
# For function pointer calls like jsr (a0), a0 must point somewhere valid.
# We pre-set a0/a1/a2 to point to stub area.
mu.reg_write(UC_M68K_REG_A0, STUB_ADDR)
mu.reg_write(UC_M68K_REG_A1, STUB_ADDR)
mu.reg_write(UC_M68K_REG_A2, STUB_ADDR)

# For a6-relative calls: jsr -XXXX(a6). These will call into globals area.
# Map globals to return cleanly: fill with RTS.
# But we already wrote zeros there. Let me fill globals area partially with RTS too.
# Actually, jsr -XXXX(a6) computes A6 + (-XXXX) = some address in globals.
# If that address has bytes [4E 75], the call returns.
rts_fill = bytes([0x4E, 0x75] * (0x0001_0000 // 2))
mu.mem_write(GLOB_ADDR, rts_fill)
# But now CTX_A and ARC_REC are overwritten! Re-write them.
mu.mem_write(CTX_A, bytes(ctx_a_buf))
mu.mem_write(ARC_REC, bytes(arc_buf))
mu.mem_write(arc_local, struct.pack(">I", ARC_REC))
mu.mem_write(A3, bytes(loc_copy))
# Re-write params
write_param(0x0c, CTX_A)
write_param(0x10, CTX_B)

# ─── patch: cmpi.b #4, $2(a7) at 0x6766 crashes Unicorn m68k
# Replace the 6-byte cmpi + the cmpi/beq/cmpi/bne/moveq/bra block (0x6766-0x6779)
# with BRA.B to 0x677a (the "else" branch: moveq #0, d0 → $4(a7)=0)
# BRA.B 0x677a from 0x6766: displacement = 0x677a - 0x6768 = 0x12 → bytes [60 12]
_patch6766 = bytes([0x60, 0x12]) + bytes([0x4e, 0x71] * 6)   # BRA.B + 6 NOPs
mu.mem_write(0x6766, _patch6766)

# ─── start point: AFTER prologue ─────────────────────────────────────────
START_PC = 0x6728   # first instruction after prologue setup ($8e(a7) read)
END_PC   = STUB_ADDR  # will halt at stub after external calls

print(f"\nEmulating from {START_PC:#x} (post-prologue)")
print(f"  A5={A5:#010x}  A7={A7:#010x}  A6={A6:#010x}")
print(f"  CTX_A={CTX_A:#010x}  ARC_REC={ARC_REC:#010x}")
print(f"  arc_local={arc_local:#010x}  A3(locals)={A3:#010x}")
# Debug: verify critical memory before emulation
def rw32(addr): return struct.unpack_from(">I", bytes(mu.mem_read(addr, 4)))[0]
param1_slot = A5 + 0x0c   # $8e(a7) after prologue = CTX_A
print(f"  DEBUG: mem[A5+0x0c={param1_slot:#010x}] = {rw32(param1_slot):#010x}  (should be CTX_A={CTX_A:#010x})")
print(f"  DEBUG: mem[arc_local={arc_local:#010x}]    = {rw32(arc_local):#010x}  (should be ARC_REC={ARC_REC:#010x})")
print(f"  DEBUG: ARC_REC[+6]                         = {struct.unpack_from('>H',bytes(mu.mem_read(ARC_REC+6,2)))[0]:#06x}  (should be D={D0:#06x})")

try:
    mu.emu_start(START_PC, END_PC + 2, timeout=10_000_000, count=INSN_LIMIT)
except UcError as e:
    print(f"  Stopped: {e}")

print(f"  Executed {insn_count[0]} instructions")
print(f"  Final PC={mu.reg_read(UC_M68K_REG_PC):#010x}")

if bad_access:
    print(f"\nBad accesses ({len(bad_access)}):")
    for m in bad_access[:15]:
        print(m)

# ─── print block read trace ───────────────────────────────────────────────
print(f"\n{'='*72}")
if not read_log:
    print("** No block reads detected **")
    print("  Check: CTX_A[+0xa] =",
          hex(struct.unpack_from(">I", bytes(mu.mem_read(CTX_A+0xa, 4)))[0]))
    print("  ARC_REC[+6] =",
          hex(struct.unpack_from(">H", bytes(mu.mem_read(ARC_REC+6, 2)))[0]))
    print("  mem[arc_local] =",
          hex(struct.unpack_from(">I", bytes(mu.mem_read(arc_local, 4)))[0]))
else:
    print(f"Block READ trace ({len(read_log)} accesses) for S0[{S0_INDEX}]:")
    print(f"  {'PC':>10}  {'off':>6}  {'sz':>2}  {'field'}")
    print("-" * 72)
    for pc, off, sz, name in read_log:
        val_bytes = bytes(mu.mem_read(BLOCK_ADDR + off, sz))
        if sz == 1:   val_s = f"= {val_bytes[0]:#04x}"
        elif sz == 2: val_s = f"= {struct.unpack_from('>H', val_bytes)[0]:#06x}"
        elif sz == 4: val_s = f"= {struct.unpack_from('>I', val_bytes)[0]:#010x}"
        else: val_s = ""
        print(f"  {pc:#010x}  {off:#6x}  {sz:2d}  {name:<40} {val_s}")

    print(f"\nUnique fields accessed:")
    groups: dict[str, list[int]] = {}
    for _, off, sz, name in read_log:
        if name not in groups:
            groups[name] = []
        if off not in groups[name]:
            groups[name].append(off)
    for name in sorted(groups.keys()):
        print(f"  {name}")
