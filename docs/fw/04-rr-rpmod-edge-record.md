# RR `rpmod`: how the DVD route planner reads a road segment

> **Status: 🟡 PARTIAL (2026-09-28).** First pass over the RoadRunner route planner, the
> firmware of the unit that reads DB-REL 34 DVDs ([`03-firmware-provenance.md`](03-firmware-provenance.md)).
> Listing: [`rr_rpmod_edge_unpack.asm`](rr_rpmod_edge_unpack.asm). Field meanings on the
> data side: [`../carindb/03-road-network.md`](../carindb/03-road-network.md) §6.7.

## 1. Setup

- Module: `rpmod` in `/V_2/RR/0101/BMWC01S/app_sw/bsw2` at `0x110cf0` (MIPS32 BE, OS-9000),
  code `0x3000`–`0x8e008`, ~1,490 non-leaf functions.
- Listing: `python scripts/firmware/mips_listing.py build/fw/V_2_RR_0101_BMWC01S_app_sw_bsw2 rpmod build/rr_rpmod.asm`
  (extract `build/fw/` first with `scripts/firmware/extract_firmware.py`).
- Calls: `lui/addiu $at` + `addu $at, $at, $fp` + `jalr $at`, target = imm + `0x7FF0`
  (same as `db_pub`); the listing annotates them as `; -> sub_xxxxxx`.
- **DB descriptor** `gp[-0x6064]`: `+0x14` = DB-REL (`sub_07b390` returns it;
  `+0x14` = superblock `+0x1A`), and `RECORD_SIZE_TABLE` entry `T[i]` at `+0x1E + 2·i`.
  Checked against NAV_DB_21708: `+0x28` = `T[0x05]` = 8 (descriptor base), `+0x2E` =
  `T[0x08]` = 32 (S4 record), `+0x30` = `T[0x09]` = 26 (S4 tail), `+0x40` = `T[0x11]` = 60
  (tile frame after the 15 descriptors), `+0x46` = `T[0x14]` = 8 (S10 record),
  `+0x48` = `T[0x15]` (S12 record).

## 2. The segment unpacker `sub_01fd80` (and variant `sub_04e02c`)

Found by scanning every function for loads of `+0x10` and `+0x11` from one base register;
only these two also read `+0x02`, `+0x0A`, `+0x0B`, `+0x0C`, `+0x0E`, `+0x0F` and `+0x18`.
Arguments: `$a0` = edge struct (out), `$a1` = decoded block of type `0x00`–`0x03`
(header included); the S4 record offset is read from edge `+0x08`.

| S4 field | Firmware operation | Edge (`sub_01fd80`) | Data-side meaning (§6.7) |
|---|---|---|---|
| `+0x00` / `+0x02` | copied; `block + value` used as node pointer | `+0x22` / `+0x24` | start / end node ✔ |
| `+0x0B & 0x0F` | copied | `+0x16` | form of way ✔ |
| `+0x0B & 0x30 >> 4` | copied | `+0x15` | direction restriction ✔ |
| `+0x0B & 0x40` | `== 0x40` → 1 | `+0x1E` | toll road ✔ (first firmware confirmation) |
| `+0x0C` | copied as u32 | `+0x10` | length in metres ✔ |
| `+0x0E` / `+0x0F` | copied | `+0x26` / `+0x27` | bearing at start / end ✔ |
| `+0x10 & 0x0F` | copied | `+0x17` | road class ✔ |
| `+0x10 & 0x70 >> 4` | copied | `+0x19` | class 6 subtype ✔ |
| `+0x10 & 0x80` | → 1 if set | `+0x1D` | **new, meaning unknown** (bit 7 of the class byte) |
| `+0x11 & 0x0F` / `>> 4` | copied | `+0x14` / `+0x18` | junction type / high nibble ✔ |
| `+0x11` + class | `+0x1B` = 0 if class = 6, or if junction ∈ {3, 4} and high nibble ≠ 4; else 1 | `+0x1B` | "open to cars": same rule as CC-93 `can_traverse`; explains the DVD-only `0x13` (closed) vs `0x43` (open) |
| `+0x18 & 0x10` | only if DB-REL ≥ 27 | `+0x1F` | **the `0x10` value of `+0x18` is a routing flag** (meaning unknown) |
| `+0x0A & 0x80` / `+T[0x09]+2 & 0x80` | built-up flag: street level (`0x00`) reads `+0x0A` bit 7 on DB-REL ≥ 21, `+0x1D` bit 7 below; coarse levels read `+0x0A` bit 7 on DB-REL ≥ 21, else 0 | `+0x1A` | built-up area ✔ |
| `+T[0x09]+2 & 0x70 >> 4` | street level only | `+0x20` | **`+0x1D` bits 4–6: new, meaning unknown** |
| `+0x12` → S10 | via `sub_06322c`: first entry = `+0x12`, count = (next record's `+0x12` − this) / `T[0x14]` | lists at `+0x48` / `+0xA8` (≤ 8 × 12 B each), counts `+0x40` / `+0x44` | **forbidden turns**: entries are split by S10 `+6` bit 0 (start / end node). First firmware evidence for S10 |
| `+0x14` → S12 | same helper, stride `T[0x15]` | — | TMC references ✔ |

Other inputs:
- **Node records** (S5 / S6, pointed by `+0x00`/`+0x02`): converted to absolute coordinates by the
  function pointer `gp[-0x7ce4]` (args: tile frame at `block + T[0x05] + T[0x11]`, node, out →
  edge `+0x2C` / `+0x34`). Node `+6`: `& 7 == 1` → edge `+0x28` / `+0x29`; `3 − (bits 6–7)` →
  edge `+0x3C` / `+0x3D`. **Node `+6` flags are not documented on the data side yet.**
- **Block type table** `gp[-0x7A30 + 4·BLOCK_TYPE]` byte 3 → edge `+0x1C`: a per-level
  property; 0 selects the branch that also reads the S4 tail, so presumably 0 = street level (`0x00`). The table itself is not dumped yet.
- `sub_06322c` uses `T[0x08]` (32) as the record stride for `0x00` blocks and `T[0x09]` (26)
  for `0x01`–`0x03`, which suggests **coarse-level S4 records are 26 B** (no name tail).
  Not verified on data.

`sub_04e02c` builds a second, wider edge layout from the same fields (class at `+0x18`,
junction at `+0x14`, toll at `+0x20`, …). Its `+0x17` comes from `sub_0630cc`, the
**slip-road role**:
- DB-REL ≥ 27: `+0x18 & 3`;
- below: a jump table over `+0x0B & 0x0F`: 1, 8 → 1 (on-slip); 2, 9 → 2 (off-slip);
  3, 0xA → 3 (link); all other forms → 0.

This confirms from firmware both the slip roles of §6.7 and the meaning of `+0x18`
values 1–3. In packed tiles `+0x18` sits in an extra pass that neither `decoder_00.py`
nor the Mk3/RR decoders on this CD read (§6.7, "the `+0x18` pass"). So this RR build
gets `+0x18` only from plain (CF=0) tiles and sees slip role 0 on packed ones. The
`BSW-REL 10 11` on the disc suggests a later firmware than RR `0101` may decode the pass;
it is not on `NAV_SW(v32).iso`.

## 3. Checked on NAV_DB_21708 (DB-REL 34)

300 random `0x00` tiles (277 CF=1, 20 CF=2, 1 CF=0):
- `+0x12` monotone and on S10 record boundaries in 298 / 298 tiles; the ranges cover
  7,239 of 7,245 S10 entries (the rest belong to the last segment).
- `+0x14` the same for S12: 298 / 298 tiles, 36,895 / 36,895 entries.
- `+0x11` values: `0x20` 131,447; `0x29` 2,833; `0x26` 1,866; `0x25` 520; `0x22` 121;
  `0x14` 26; `0x13` 24; `0x11` 8; `0x43` 4; `0x44` 1.
- `+0x18` values: 0 on 136,369 segments, 4 on 417, 3 / 2 / 1 on 26 / 18 / 16, `0x10` on 4.

## 4. Open

1. The `+0x18` pass of packed `0x00` tiles: no firmware on this CD decodes it; its head is undecoded (§6.7).
2. The cost function: which edge fields feed the route cost (speed `+0x0A` bits 0–4 is not read
   by either unpacker; look for readers of `+0x0A & 0x1F`).
3. Callers of `sub_01fd80` / `sub_04e02c`: which structure lists edges, and how the S6 twin and
   S8 level links are followed (tile crossing and level switching).
4. Meaning of `+0x10` bit 7, `+0x1D` bits 4–6, `+0x18 & 0x10` and node `+6`. First trace of
   the readers in §5: `rpmod` only carries the first and third on; the second is not read there.
5. The `gp[-0x7A30]` per-block-type table (initialised data of `rpmod`).

## 5. Where the unexplained edge bits go (2026-10-01)

Read from `build/rr_rpmod.asm`; the functions `0x1d2e8`, `0x1fd80`, `0x7c2fc` were also defined in
Ghidra (its decompiler fails on this MIPS image, so the listing is the source).

`sub_01fd80` has two callers, both route builders: `0x1d4d4` (in `sub_01d2e8`) and `0x1dfe8`. Each
puts the edge on the stack and calls the packer `0x1d914`, which squeezes it into a compact record
(bytes `0xc`–`0x10`, plus byte `0x3e` = junction type):

| Edge field (`sub_01fd80`) | S4 source | Packed bit |
|---|---|---|
| `+0x1D` | `+0x10` bit 7 | byte `0xc` bit 4 |
| `+0x1F` | `+0x18 & 0x10` | byte `0xf` bit 7 |
| `+0x1E` | toll | byte `0xf` bit 6 |
| `+0x17` | slip role | byte `0xc` bits 0–2 |
| `+0x20` | `+0x1D` bits 4–6 | **not packed** |

The route builders then use only byte `0xc` `& 7`, parts of byte `0xe` and byte `0xf` bit 1 (they
pass them to `sub_07c2fc`, which is a small `gp`-table lookup, not a cost function). The two bits
in question are only **copied through**:

- `sub_01dc7c` unpacks the record into a 6-byte attribute struct: `[0]` = `0xf` bit 4, `[1]` = bit 6
  (toll), `[2]` / `[3]` = `0xe` bits 0 / 1 (form 14 / 15), `[4]` = `0xf` bit 7 (**`+0x18 & 0x10`**),
  `[5]` = bit 5.
- `0x15758` and `0x17b50` copy `0xc` bit 4 (**`+0x10` bit 7**) to byte `+0x14` of an exported edge
  struct, next to `+0x12` / `+0x13` / `+0x15`–`+0x19` flags.

So in `rpmod` neither bit steers the route cost or a branch. They are data for another module.
**Edge `+0x20` (`+0x1D` bits 4–6) is read by none of these routines.** Still open: the consumer of
the exported struct (`dbq`, `pbp` or the callers of `sub_011af4` / `sub_011b34`).

## 6. `dbq` builds a 52-byte segment descriptor (2026-10-01)

RR `0101` has no `pbp` module (that name is CC-93 only). Listings of `dbq`, `dbpa`, `mm`, `gd_man`
and `update_carloc` were made with `scripts/firmware/mips_listing.py`; the raw S4 byte `+0x10` is
read in `dbq` and `dbpa` only.

`dbq` `sub_00fc28` reads the S4 record `s0` directly (not through `rpmod`) and fills a 52-byte
(`0x34`) descriptor at `sp+0x108`, then appends it to a reply buffer with `sub_003b38` (copy into a
`0x400`-byte buffer, flush with `sub_003248`). Tail fields are read from the u16 at
`S4 + T[0x09] + 2`, i.e. bytes `+0x1C` (high) / `+0x1D` (low):

| Descriptor byte | Source | Meaning in §6.7 |
|---|---|---|
| `+0x24` | u16 `& 0x0700 >> 8` | `+0x1C` bits 0–2 |
| `+0x25` | u16 `& 0x7000 >> 12` | `+0x1C` bits 4–6 |
| `+0x26` | `+0x10 & 0x70 >> 4` | class 6 subtype |
| `+0x27` | `+0x0A & 0x7f` (after a DB-REL test, `sub_04ece8`) | speed category |
| `+0x28` | `+0x0A & 0x80` (DB-REL ≥ 21) else `+0x1D & 0x80`, `>> 4` | built-up |
| `+0x29` | u16 `& 0x70 >> 4` | **`+0x1D` bits 4–6, copied raw** |
| `+0x2A` | 1 if u16 `& 0x8000` is 0 | `+0x1C` bit 7 inverted |
| `+0x2C` | 0 if `+0x10 & 0x80`, else 1 | **`+0x10` bit 7 inverted** |

So `dbq`, the server, also only repackages the bits; **it is the first place that reads `+0x1D`
bits 4–6** (as a 3-bit number, no test on it). `+0x10` bit 7 is exported as "not set" (`+0x2C`),
which fits a "has a functional class" reading better than a placeholder reading would: a
descriptor with `+0x2C` = 0 is a segment whose class came from the placeholder.

Searched for the clients: no function in `mm`, `gd_man`, `dbpa`, `update_carloc` or `rpmod` reads
descriptor bytes `+0x28`, `+0x29` and `+0x2C` through one base register (two-byte search, window
of 120 lines). The reply is probably unpacked byte by byte (`dbq` has an unrolled 100-byte
serialiser at `0x4140`) or passed to a module not in this container. **Open: the receiver of the
descriptor, and so the use of `+0x1D` bits 4–6.**

### 6.1 Receiver search and a string lead (2026-10-01)

Listings of every module of the `bsw2` container (`hdlbsi`, `update_carloc`, `dbpa`, `dbc`,
`db_con`, `dbd`, `gd_man`, `gd_bjl`, `mm`, `hdltmc`, `taxi`, `tpd`) and of `mm_sig` / `rs_dump`
were searched for readers of the descriptor bytes (`+0x24`…`+0x2C`, in several byte combinations,
windows of 30 to 120 lines). The only match is the inline 100-byte struct copy at `dbq+0x411c`
(a plain `lb` / `sb` copy, no field access). The receiver is **not found**; the descriptor is
probably handled as an opaque block or read through offsets that differ from `dbq`'s.

What the firmware strings say (all outside the data path, so a lead, not a result):
- **UAG = "unattributed geometry".** `rs_dump -u` prints "unattributed geometry flag"; `nav_tst`
  and `bsitst` print `uag = POS_UAG / POS_NOT_UAG`, `digitization = PARTLY_DIGIT._AREA /
  FULLY_DIGIT._AREA`, `curr_junction_in_uag`, `next_junction_in_uag`; `navboot` has
  `GUIDANCE_UAG_SPLIT_SCREEN`; `gd_tool` has "Toggle RDA in partly digitized area". This fits
  `+0x10` bit 7 as a placeholder class (the data side: class 6 / subtype 1 for the whole
  minor network of Slovenia on 21708, `examples/05_osm_vs_disc_modugno/CHANGES.md`), but no code
  path from the bit to a UAG flag was seen. Not verified.
- **Restricted Access Area Guiding (RAAG).** `gsw_tools` and `bsw_tools` carry "Entering a
  vehicle prohibited road", "Vehicle prohibited road ahead", "the destination is in a vehicle
  prohibited area" and the `RESTRICTED_OPA` route criterion. This fits the car-access rule of
  `+0x1B` (junction 3 / 4 closed unless the high nibble is 4, §2) and the data-side hint that
  junction 3 is pedestrian areas. Not verified either.
- No string names `+0x1D` bits 4–6.

## 7. The route chain record and `rs_dump -u` (2026-10-01)

`rs_dump` (`bsw_tools`) reads the route store with `RP_rs_get_chaindata` and prints one record per
chain. The record is the one `rpmod` writes at `0x156c4`–`0x15824` (and `0x17b00`–`0x17c40`,
the same code for the other route variant). Field by field (`rs_dump` print code at `0x2c04`–`0x2e38`,
strings from its data; `rpmod` writer; the packed bits are those of section 5):

| Chain byte | `rs_dump` prints | `rpmod` source (packed bit) | S4 source |
|---|---|---|---|
| `+0x0c` | slip role (`& 7`) | `0xc` bits 0-2 | slip role (`+0x18 & 3`, DB-REL >= 27) |
| `+0x0d` | third value of `chain_%04d: (id, n, x)` | `0xc` bit 7 | not traced |
| `+0x14` | **`UAG` / `uag` (option `-u`, "Dump unattributed geometry flag")** | `0xc` bit 4 | **`+0x10` bit 7** |
| `+0x17` | " motorway" | `0xf` bit 4: class < 4 and form < 4 | class, form |
| `+0x18` | " toll road" | `0xf` bit 6 | `+0x0B` bit 6 |
| `+0x19` | " boat ferry" | `0xe` bit 0 | form 14 |
| `+0x1a` | " railway ferry" | `0xe` bit 1 | form 15 |
| `+0x1b` | **" tunnel"** | `0xf` bit 7 | **`+0x18 & 0x10`** |
| `+0x1c` | " mountain pass" | `0xf` bit 5, always cleared by the packer (`0x1dc58`) | none |

The order matches the `BSI_RS_*_MASK` list the test tool `nav_tst` prints (1 motorway, 2 toll
road, 4 boat ferry, 8 railway ferry, 16 tunnel, 32 mountain pass), so the chain bytes `+0x17`-`+0x1c`
are those six route attributes. `+0x14` is a seventh flag, shown only with `-u`.

Result:
- **`+0x10` bit 7 = the "unattributed geometry" (UAG) flag of the chain.** The firmware text around
  it (`POS_UAG`, `curr_junction_in_uag`, `PARTLY_DIGIT._AREA`, `GUIDANCE_UAG_SPLIT_SCREEN`, "Toggle
  RDA in partly digitized area") shows the unit treats such chains as geometry without attributes.
  This is the firmware side of the data finding (class 6 / subtype 1 placeholder).
- **`+0x18 & 0x10` = the tunnel flag** (`BSI_RS_TUNNEL_MASK` = 16). Data: all 8 matched segments with
  the bit (3 on 21708, 5 on 21734) are underpasses in today's OSM (`layer=-1`, `tunnel=yes` on 5 of
  8; "sottovia"), all with `+0x1C` = 0x1D. The reverse is weak: of 21 / 23 matched OSM tunnels, 1 / 4
  carry the bit (most are `+0x1C` = 0x16).
- Mountain pass is never set by this build, whatever the data holds.
- Still open: `+0x1D` bits 4-6 (not copied into the chain record; only into the `dbq` descriptor
  of section 6), `+0x0d` of the chain record.

Method: option `u` is case `0x26a0` of the jump table at `0x1fb4` in `rs_dump` (table index = char - 0x3f,
target = `0x1fa0` + entry); it sets the flag at `gp - 0x7b95`, read at `0x2dc0`, which selects the string
`UAG` or `uag` (module offsets `0x503` / `0x4ff`) from chain byte `+0x14`.

## 8. Chain byte `+0x0d`, the second edge layout, and `+0x1D` bits 4-6 (2026-10-01)

**Chain record `+0x0d` is the traversal direction, not an S4 field.** `0x1d914` copies it from bit 0 of
byte `+0x0c` of the 16-byte chain reference that the route builder receives (`sub_01d2e8`'s second
argument; bytes `0`-`0xb` of the reference are copied as they are, `+8` is a u16 that `rs_dump` prints
as the second value of `chain_%04d: (id, n, dir)`). `rs_dump` uses it as a direction: with `-i` it
walks the chain's intermediate points from the last to the first when `+0x0d == 1` and from the first
to the last otherwise (`0x2f18`-`0x2fe8` against `0x305c`-`0x30d4`). Nothing in S4 feeds it.

**UAG chains.** In `rpmod` the UAG flag (chain `+0x14`) is only copied: `0x3bd7c`-`0x3bdac` moves chain
bytes `+0x14`-`+0x19` (UAG, motorway, toll, boat ferry, railway ferry, `+0x19`) into the structure
that the route-store API returns. No branch on it exists in `rpmod`. The users are outside the
`bsw2` container (`GUIDANCE_UAG_SPLIT_SCREEN` is a `navboot` string, so `ghandler` / `manager` /
`supervisor` there), not traced. Correction to section 5: edge `+0x1D` at `0x3cffc` is **not** this
bit (see next paragraph), so the cost routine there says nothing about UAG.

**The second edge layout (`sub_04e02c`) has no `+0x10` bit 7.** It reads the class byte only as
`& 0xf` (`+0x18`) and `& 0x70` (`+0x1a`). Its fields: `+0x10` length, `+0x14` junction, `+0x15`
direction restriction, `+0x16` form, `+0x17` slip role, `+0x18` class, `+0x19` junction high nibble,
`+0x1a` class-6 subtype, `+0x1b` built-up, `+0x1c` closed-to-cars flag (0 if class 6; 1 if junction or
high nibble is 3 / 4 by the rule of section 2), `+0x1d` = byte `gp-0x6431 + u16 at block+4` (a
per-block-type flag: 0 for street level; the planner tests it as "coarse level"), `+0x1e` =
**S4 `+0x1D` bits 4-6, street level only (0 on coarse levels)**, `+0x20` toll. So the roadmap's old
remark that the cost routine at `0x03cffc` uses `+0x10` bit 7 was wrong: `+0x1d` there is the level flag.

**`+0x1D` bits 4-6 are read by the planner** as a 3-bit category (`+0x1e` of this layout), with 0 and
7 neutral and 1-6 told apart:
- `0x464a0`-`0x464e4`: if the current edge is street level with category 0 and the next edge's category
  is 1, 3, 4 or 6, a constant (`gp-0x6a78`) is added to a cost accumulator.
- `0x4672c`-`0x46784` (`sub_0462c0`): categories 1-6 all set one flag, which then triggers a length-based
  computation (`0x467a4`-`0x467ec`).
- `0x47908`-`0x47960`: one mode accepts {1, 4} outright, {3, 6} if the class number of the first edge
  is lower than the other's, another mode accepts {2, 3, 5}.
- `0x43d68`: category non-zero marks the edge (with slip role 4) in a descriptor.
The groups overlap (3 is in two), so this is a category with several uses, not a bit mask. The
meaning of a value is **not** found; the effect is a route-cost or ordering difference.

## 9. Who reads the UAG bit: `dbq` -> `gd_bjl` -> `gd_man` (2026-10-01)

Two separate paths carry `+0x10` bit 7. The route-store one (section 7) ends in `rpmod`'s chain
record. The guidance one goes through the `dbq` descriptor (section 6):

1. `dbq` `sub_00fc28` writes descriptor byte `+0x2C` = 0 if `+0x10` bit 7 is set, else 1
   (i.e. 1 = "attributed").
2. **`gd_bjl` `sub_002238` (`0x2490`-`0x2578`) reads the descriptor** (base `$s1`, bytes `+0x13`...`+0x2F`
   in one run, the 52-byte shape of section 6) and copies it into its own segment record:
   descriptor `+0x2C` -> record `+0x67`, `+0x29` (`+0x1D` bits 4-6) -> `+0x5E`, `+0x28` -> `+0x65`,
   `+0x2A` -> `+0x24` (as 0 / 1), `+0x1D` -> `+0x20` / `+0x21`, `+0x2D` -> `+0x1D`, `+0x2B` -> `+0x22`.
   Not proven that `$s1` is the `dbq` descriptor and not a copy of it, but offsets and sizes agree.
3. Record `+0x67` is only copied afterwards (`0x5620`, `0x12a24`), except in `sub_00fbd4` at
   `0xffa4`: the junction item's byte `+0x61` is set to **1 if the item has no exit segment, else to the
   exit segment's `+0x67`** (`0xff7c`-`0xffb4`).
4. **`gd_man` `sub_018efc` reads item `+0x61`** (`0x18f78`) and puts it, with item `+0x60`, the
   manoeuvre code from item `+0x40 & 0xf` (table: 0x0b, 0x16, 0x37, 0x42, 0x4d) and two pointers'
   data, into a `0x1c`-byte record at `sp+0x8`, which is sent at `0x19064`-`0x19070` as message type
   `0x10` (`a0 = 0x10`, `a1 = sp+8`, `a2 = 0x1c`). The record's byte `+0x6` (= `sp+0xe`) is the flag.
   `sub_019108` then builds similar records for the junction list.

So a segment with `+0x10` bit 7 reaches the guidance output as a **0 in the junction record when the
junction's exit segment is unattributed**. The BSI test tools name the output fields
`curr_junction_in_uag` / `next_junction_in_uag` (`nav_tst`, shown next to `dtji_is_valid`), which is
most likely where this ends, with the sense inverted somewhere after message `0x10`. Not traced past the
message: the receiver of type `0x10` (probably a module in `navboot`).

What `+0x1D` bits 4-6 do in `gd_bjl`: record `+0x5E` holds the category; `sub_00a810` (`0xa88c`-`0xa990`)
decides whether a candidate segment can follow the current one in a junction: category 1 only after
category 1, 2 only after 2, 3 after any non-zero (and not form 11 / `0x10(...) == 0xb`), 4, 5, 6 after any
non-zero; if the candidate is a class 6 element, the current segment must be class 6 too. So the category
groups the segments **inside one complex junction** and tells which may be chained. All seen values
are class 5 (service, parking aisles, one-way tertiary of Duisburg), which fits "small segments that
make up a junction". This is a reading of the compare chain, not a proof of the names.
