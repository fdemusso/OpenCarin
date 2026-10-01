# 06 – Emulating the RR `dbq` descriptor builder

Question: can we run a function of the RoadRunner (RR) firmware on the Mac and use it as an oracle for the disc format?
Test case: `dbq` `sub_00fc28` (module offsets, `docs/fw/04-rr-rpmod-edge-record.md` §6), the function that turns one
street segment (S4 record) and its two nodes into the 52-byte descriptor the guidance reads.

Nothing here writes to a disc image or runs on a unit. The firmware module is read from `build/fw/` (extract it with
`scripts/firmware/extract_firmware.py`), the tiles from `dataset/NAV_DB_*.ISO`.

## Files

| File | What |
|---|---|
| `emu.py` | the harness (Unicorn, MIPS32 big-endian): maps the module, sets `$fp`, `$gp`, the layout table and a tile, stubs the outside calls, returns the captured descriptor |
| `run_tile.py` | runs the function on every segment of real tiles and compares 13 descriptor bytes with the field map of `fw/04` §6 and §11.2 |
| `dependencies.py` | flips every bit of the S4 record and of its two node records, one at a time, and records which descriptor bytes change |
| `dependencies_<disc>.txt`, `agreement_<disc>.txt` | the outputs |

```
uv run --with capstone --with unicorn python examples/06_emulate_dbq_descriptor/run_tile.py 21708
uv run --with capstone --with unicorn python examples/06_emulate_dbq_descriptor/dependencies.py 21708 40
```

## Is it feasible? Yes, for a function like this

What the function needs from its surroundings, and how the harness supplies it:

| Need | Supplied by |
|---|---|
| module code and constants | the `dbq` image at a fixed base, `$fp` = base + `0x7ff0` |
| globals (`$gp`) | a zeroed data area; only two pointers are set: the layout table at `gp[-0x5ec4]` and the services below |
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

## Result 1: the descriptor matches the documented field map

`run_tile.py` on the first three tiles of the Bari-Modugno study area:
- 21708: 758 segments, 0 failed, **0 mismatches** on the 13 descriptor bytes `+0x12 +0x13 +0x14 +0x18 +0x19 +0x1A
  +0x1D +0x24 +0x25 +0x26 +0x29 +0x2A +0x2C` (node flags, junction type, `+0x1C` bits, `+0x10` bits).
- 21734: 1,164 segments, 0 failed, **0 mismatches** (`agreement_21734.txt`).

So the reading of `dbq` in `fw/04` §6 was right on those bytes, now tested by execution and not by reading the listing.

## Result 2: what decides every descriptor byte

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
| `+0x30` | S4 `+0x1E` (all bits), `+0x1F` bits 3-7 | a count from the S11 (signpost) pointer: two pointers divided by the record size 6 (hint) |

No S4 bit moves `+0x15`, `+0x1B`, `+0x1C` (the third argument), `+0x2B` (the fourth), `+0x2D..+0x2F`, `+0x31..+0x33`:
they come from the arguments, from the shape or from the node records' other bytes.

## Result 3: S4 bits that never reach the guidance through `dbq`

An S4 bit that moves no descriptor byte is not exported by this function (the same on both discs, 40 segments each):

| S4 bytes / bits | Known meaning | Reaches the descriptor? |
|---|---|---|
| `+0x04`..`+0x09`, `+0x12`..`+0x17`, `+0x19`, `+0x1A`, `+0x1B` | section pointers and the bytes `docs/carindb/03-road-network.md` §6.7 lists for them | **no** (the shape pointer is only used by the stubbed shape decoder, so this row says nothing about shape data) |
| `+0x0B` bits 6-7 | toll (bit 6), one more bit | **no** |
| `+0x18` bits 2-7 | includes the tunnel flag (`0x10`) | **no** (only bits 0-1, the slip role) |
| `+0x1C` bit 3 | bridge (data: 80% of OSM bridges) | **no** |
| `+0x1D` bit 0 | has house numbers (data, `examples/05_osm_vs_disc_modugno`) | **no** |
| `+0x1D` bit 7 | built-up (same as `+0x0A` bit 7) | only for DB-REL < 21 |

So the guidance (`gd_bjl`) never sees toll, tunnel or bridge from `dbq`: those reach the route planner through `rpmod`
(`fw/04` §2, §7), or reach nothing. A map maker who wants a bridge or tunnel to change guidance cannot do it with
these bits.

## What stayed stubbed, and what this does not show

- Shape points: `sub_01ca14` allocates `(count + 2) * 8` bytes and calls the shape decoder through `gp[-0x7ce4]`, here a
  no-op. Bytes that depend on the geometry would be wrong; none of the descriptor bytes above does, but `+0x15`,
  `+0x1B` and `+0x2D..` are not explained.
- The arguments `a2` (descriptor `+0x1C`) and `a3` (`+0x2B`) are passed by the caller; both are 0 here.
- The emulation runs the same code as the unit but not on the unit: the descriptor a real unit produces is not checked.
