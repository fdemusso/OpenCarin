# 06 – Firmware emulator (RoadRunner modules in Unicorn)

Goal: a growing emulator of the RoadRunner (RR) firmware, to test our readings of the format and of the firmware **by
execution** and to predict what the unit does with data we generate. Nothing here writes to a disc image or runs on a
unit. The firmware is read from `build/fw/` (extract it with `scripts/firmware/extract_firmware.py`), the tiles from
`dataset/NAV_DB_*.ISO`.

## Evidence levels used in this directory and in `docs/fw/04` §14-15

| Tag | Meaning |
|---|---|
| **executed** | the emulator ran the firmware code on real tiles and the output was compared with the claim |
| **read** | read from the disassembly, not run |
| **hypothesis** | a reading nobody tested; stated as such |

An "executed" result is the same code the unit runs but **not** the unit: the surroundings are stubbed (list below), so a
result holds for the function and its inputs, not for the unit as a whole.

## What runs

| Target | Function (module offsets) | State | File |
|---|---|---|---|
| `dbq` descriptor builder | `sub_00fc28`: S4 record + two nodes -> 52-byte descriptor | **executed** on 758 + 1,164 segments, 13 bytes agree with the doc; dependency map of every byte | `dbq.py` |
| `rpmod` edge builder, layout 1 | `sub_01fd80`: S4 record + nodes -> planner edge | **executed**, dependency map | `rpmod_edge.py` |
| `rpmod` edge builder, layout 2 | `sub_04e02c` | **executed**, dependency map | `rpmod_edge.py` |
| `gd_bjl` item creation | `sub_002238` `0x23f8`-`0x2838`: `dbq` descriptor -> item | **executed** on 549 + 959 descriptors, 17 item bytes agree; one reading corrected (item `+0x24`) | `gd_bjl.py`, `gd_bjl_items.py` |
| `dbq` output stream | descriptor, text records, points, sign records (docs/fw/04 §17.1) | **executed** (signs: read) | `dbq.py` |
| `gd_bjl` stream reader | `sub_013b0c`, `sub_014240`: the module splits a real `dbq` stream; item creation with points | **executed** | `gd_bjl.py` (`feed_segment`) |
| `gd_bjl` main pass | `sub_00fbd4` on hand-built junctions: `BIF_SYM_2/3` appear on 21 of 47 value-2 nodes, on none of 1,452 value-0 nodes | **executed** with stubs and a hand-built junction object | `gd_bjl_junction.py` |
| `gd_bjl` ring detection | `sub_004090`: rings of segment type 5 / 6 -> `ROUNDABOUT`, type 2 -> `NORMAL` | **executed** with stubs and a hand-built junction object | `gd_bjl_ring.py` |
| `gd_man` type mapping | `sub_0193c0`: the type sent to `vp_man`, run on the `gd_bjl` junction objects (docs/fw/04 §18.2) | **executed** with the same stubs and hand-built objects | `gd_man.py` |
| `vp_man` dispatcher | `sub_002310`: jump tables by junction type (docs/fw/04 §18.1) | **read** (the tables decoded from the module data); not run | - |
| `gd_bjl` real handler | route state, requests to `dbq` / `rpmod`, messages | **not run**: the junction object is assembled by hand | - |
| planner cost / `can_traverse` | `rpmod` `0x464a0`..., `004360` | not run | - |

## Files

| File | What |
|---|---|
| `fwemu.py` | the generic harness (any RR module): image, `$fp` / `$gp`, initialised data and relocations, stubs, OS-service gateway, 3-operand multiply, `explain()` after a fault |
| `dbq.py`, `rpmod_edge.py` | one class per target: layout table, tile, stubs, `run_tile()` |
| `run_tile.py` | `dbq` on every segment of real tiles, compared with the field map of `fw/04` §6 |
| `selftest.py` | every executed claim above on 80 segments in about a second; exit status 1 on a mismatch |
| `gd_bjl.py`, `gd_bjl_items.py` | `gd_bjl` context (item pool, service gateway) and the item creation checked against the descriptor |
| `gd_bjl_junction.py`, `gd_bjl_ring.py` | the junction experiments of `docs/fw/04` §17.6 (outputs `junction_bif_*.txt`, `ring_types_*.txt`) |
| `dependencies.py` | flips every bit of the S4 record and of both node records and records which output bytes change; targets `dbq`, `rpmod`, `rpmod2` |
| `dependencies_<target>_<disc>.txt`, `agreement_dbq.txt`, `agreement_gd_bjl_items.txt` | the outputs |

```
uv run --with capstone --with unicorn python examples/07_firmware_emulator/run_tile.py 21708
uv run --with capstone --with unicorn python examples/07_firmware_emulator/dependencies.py 21708 40 rpmod2
```

## Is it feasible? Yes, for a function like this

What the function needs from its surroundings, and how the harness supplies it:

| Need | Supplied by |
|---|---|
| module code and constants | the module image at a fixed base, `$fp` = base + `0x7ff0` |
| globals (`$gp`) | the module's initialised data (header `+0x34`: `(data offset, length)` + bytes, loaded at `DATA + offset`; two relocation lists add the module base or the data base, **executed**: 250 + 10 pointers of `dbq` all look like pointers), the rest zero; the layout table pointer (`gp[-0x5ec4]` in `dbq`, `gp[-0x6064]` in `rpmod`) |
| the layout table `T` (record sizes, field offsets, DB-REL) | written from `vol.layout` of the parser at `L + 0x1e + 2 * id`, DB-REL at `L + 0x14` |
| the tile | the decoded payload of the block, mapped as is (the firmware reads the same bytes: node offsets in S4 `+0` / `+2`, node flags at `+6`) |
| tile lookup `sub_0398dc` | stub: stores the tile base, returns `0x1f3` |
| output `sub_003b38` | stub: captures the buffer (the 52-byte descriptor is the first one) |
| OS services | one gateway pointer `gp[-0x3ea8]`; the trampolines at `0x54xxx` put a service id in `$t0` and jump there. Stub: id `0x3f` allocates, `0x3e` frees, `0x2b` (a log call) is ignored |
| shape decoder (`gp[-0x7ce4]`) | stub that does nothing |

Two traps of the toolchain, both found by the emulator failing:
- The CPU executes `mult rd, rs, rt` / `multu rd, rs, rt` (SPECIAL `0x18` / `0x19` with the `rd` field set). Capstone prints
  them as `.word` and Unicorn cannot run them; the harness emulates them. (The firmware uses them for `len * 100` and for
  the bearing scaling `byte * 0x8ca0 >> 8`.)
- A Unicorn memory-read hook makes a load in a branch delay slot run twice (`sub_01bd08` subtracted twice and returned a
  count of 62,000 shape points). The harness has no memory hooks unless `debug=True`.

Cost: about 3 ms per segment.

## `dbq` result 1 (executed): the descriptor matches the documented field map

`run_tile.py` on the first three tiles of the Bari-Modugno study area:
- 21708: 758 segments, 0 failed, **0 mismatches** on the 13 descriptor bytes `+0x12 +0x13 +0x14 +0x18 +0x19 +0x1A
  +0x1D +0x24 +0x25 +0x26 +0x29 +0x2A +0x2C` (node flags, junction type, `+0x1C` bits, `+0x10` bits).
- 21734: 1,164 segments, 0 failed, **0 mismatches** (`agreement_dbq.txt`).

So the reading of `dbq` in `fw/04` §6 was right on those bytes, now tested by execution and not by reading the listing.

## `dbq` result 2 (executed): what decides every descriptor byte

`dependencies.py` (40 segments spread over six tiles of each disc, every input bit flipped, 352 flips per segment).
`n / n` means every one of the 40 segments reacts. Descriptor byte, then the input bits it follows:

| Descriptor | Follows | Reading |
|---|---|---|
| `+0x0C..+0x0F` (u32) | S4 `+0x0C`, `+0x0D` | length (u16) times 100 |
| `+0x10` / `+0x11`, `+0x16` / `+0x17` | S4 `+0x0E`, `+0x0F` (all bits) | the two bearings, scaled by `0x8ca0 >> 8` (1/100 degree) |
| `+0x12` / `+0x18` | start / end node `+6` bit 3 | node flag bit 3 |
| `+0x13` / `+0x19` | node `+6` bits 0-2 | node value `& 7` |
| `+0x14` / `+0x1A` | node `+6` bits 4-5 | |
| `+0x1D` | S4 `+0x11` bits 0-3 | junction type |
| `+0x1E` | S4 `+0x11` bits 4-7, in 4 of 40 segments only | high nibble, default 2 (§6) |
| `+0x1F` | S4 `+0x0B` bits 4-5 | direction |
| `+0x20` | S4 `+0x10` bits 0-3 | class |
| `+0x21` | S4 `+0x1D` bits 1, 2, 3 | width / lane category, **three bits** (`03-road-network.md` says 1-2) |
| `+0x22` | S4 `+0x0B` bits 0-3 | form |
| `+0x23` | S4 `+0x18` bits 0-1 | slip role |
| `+0x24` | S4 `+0x1C` bits 0-2 | |
| `+0x25` | S4 `+0x1C` bits 4-6 | |
| `+0x26` | S4 `+0x10` bits 4-6 | class 6 subtype |
| `+0x27` | S4 `+0x0A` bits 0-6 | speed (seven bits, with the three high bits) |
| `+0x28` | S4 `+0x0A` bit 7 | built-up |
| `+0x29` | S4 `+0x1D` bits 4-6 | the category (`+0x1D` bits 4-6) |
| `+0x2A` | S4 `+0x1C` bit 7 | |
| `+0x2C` | S4 `+0x10` bit 7 | UAG, inverted |
| `+0x2f` | S4 `+0x04`, `+0x05` (the shape pointer; the count is a difference of two pointers) | number of points in the stream (**executed** with the position stub, docs/fw/04 §17.1) |
| `+0x30` | S4 `+0x1E` (all bits), `+0x1F` bits 3-7 | number of sign records of `0xe5` bytes (follows the signpost pointer; the records themselves are **read**, §17.1) |
| `+0x2d`, `+0x2e` | not S4 | `+0x2d` = the caller's stack argument 5, `+0x2e` = number of text records (set when the request struct has a non-zero `s16` at `+4`) |

No S4 bit moves `+0x15`, `+0x1B`, `+0x1C` (the third argument), `+0x2B` (the fourth), `+0x2D`, `+0x2E`, `+0x31`: they come
from the arguments or the request struct, or are not set (`+0x31..+0x33` of the three sample segments were all 0). The map
was made twice: the first time with the position function doing nothing, which hid `+0x2f`; the files are the second run.

## `dbq` result 3 (executed): S4 bits that never reach the guidance through `dbq`

An S4 bit that moves no descriptor byte is not exported by this function (the same on both discs, 40 segments each):

| S4 bytes / bits | Known meaning | Reaches the descriptor? |
|---|---|---|
| `+0x06`..`+0x09`, `+0x12`..`+0x17`, `+0x19`, `+0x1A`, `+0x1B` | section pointers and the bytes `docs/carindb/03-road-network.md` §6.7 lists for them | **no** (second run of the map, with the position function stubbed) |
| `+0x04`, `+0x05` | the shape pointer | **yes**, through the number of points (descriptor `+0x2f`); the first run of the map, without the position function, had missed it |
| `+0x0B` bits 6-7 | toll (bit 6), one more bit | **no** |
| `+0x18` bits 2-7 | includes the tunnel flag (`0x10`) | **no** (only bits 0-1, the slip role) |
| `+0x1C` bit 3 | bridge (data: 80% of OSM bridges) | **no** |
| `+0x1D` bit 0 | has house numbers (data, `examples/06_osm_vs_disc_modugno`) | **no** |
| `+0x1D` bit 7 | built-up (same as `+0x0A` bit 7) | only for DB-REL < 21 |

So the guidance (`gd_bjl`) never sees toll, tunnel or bridge from `dbq`: those reach the route planner through `rpmod`
(`fw/04` §2, §7), or reach nothing. A map maker who wants a bridge or tunnel to change guidance cannot do it with
these bits.

## `rpmod` edge builders (executed)

Both builders run on the same tiles; the full table, with what it corrects in the older text, is `docs/fw/04` §15. In short:
- every field of the first reading (class, form, direction, junction type and high nibble, toll, built-up, the category
  `+0x1D` bits 4-6, bearings, node flags) is confirmed;
- **new**: both layouts carry `+0x10` bit 7 (layout 1 edge `+0x1d` = set, layout 2 edge `+0x1f` = clear) and the tunnel flag
  (`+0x18` bit 4); `docs/fw/04` §8 had said layout 2 has no `+0x10` bit 7, which was a miss of the first reading;
- **new**: neither builder reads the speed (`+0x0A` bits 0-6), the bridge bit (`+0x1C`), `+0x1D` bits 0-3 and 7, so the
  planner's edge does not carry them. Other planner functions may read S4 directly; not checked.

## What is stubbed, and what none of this shows

| Stub | Effect | Evidence |
|---|---|---|
| `gp[-0x7ce4]` (`dbq`, `rpmod`): called with `(tile + offsets, node record, out)` | `out = origin + (u, v) << 6` (`fwemu.position_stub`); before section 17 it did nothing and the position bytes were wrong | **hypothesis**: the real function is outside the module; the origin offset matches the parser's tile frame |
| `gd_bjl`: `gp[-0x7df8]`, `-0x7c48`, `-0x7c80`, `-0x7c88` and 14 more empty slots | point equality, displacement by bearing, point addition, side of a line; the rest return 0 | **hypothesis** (docs/fw/04 §17.5); the side convention is unknown and both signs were run |
| tile lookup `sub_0398dc`, output `sub_003b38` (`dbq`) | returns the tile base, captures the buffer | read |
| OS-service gateway `gp[-0x3ea8]` | `0x3f` allocates, `0x3e` frees, anything else returns 0 (`0x2b` is a log call) | read; the id meanings are **hypothesis** from the call sites |
| the caller's arguments `a2` / `a3` of `dbq` (descriptor `+0x1C`, `+0x2B`) | 0 | not tested |

The emulator runs the same code as the unit but is not the unit: nothing here says what a real unit draws, routes or says.
A flip map says which input bits a function **reads**, not what the value means.

## Toolchain traps (found by the emulator failing)

- The CPU executes `mult rd, rs, rt` / `multu rd, rs, rt` (SPECIAL `0x18` / `0x19` with `rd` set; the firmware uses them for
  `len * 100` and the bearing scaling `byte * 0x8ca0 >> 8`). Capstone prints `.word`, Unicorn cannot run them; `fwemu.py` emulates them.
- A Unicorn memory-read hook makes a load in a branch delay slot run twice. `fwemu.py` has no memory hooks unless `debug=True`.
- Addresses from `0x80000000` are MIPS kernel segments: everything is mapped below.
- A code hook on every instruction is about 50 times slower than hooks on the few addresses that need Python.

## Next

- `gd_bjl`: run the real handler (route state `gp[-0x66cc]`, `sub_0067b8` route chains) so that the junction object is built by the
  module and not by hand; this needs the route store of `rpmod`.
- Why only 21 of 47 value-2 nodes give `BIF_SYM_2/3` (the other tests of `sub_00e8d8`), and the 15 ring faults (an unbound call).
- What segment junction type 2 is (the firmware does not see it as a ring); where `SIMPLE_ROUNDABOUT` / `COMPLEX_ROUNDABOUT`
  (2, 3) are decided: not in `gd_bjl` by a constant, so probably `vp_man` (`vp70_prepare_junction`).
- The planner cost and ordering code that reads the category (`rpmod` `0x464a0`, `0x4672c`, `0x47908`).
- `vp_man` junction pictures from the `gd_bjl` output.
