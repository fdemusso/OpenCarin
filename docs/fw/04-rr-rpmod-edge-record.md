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
