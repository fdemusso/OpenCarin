# Part 3 — Road Network Tables (Parcels)

> **Status: ✅ VERIFIED (STEP 2 & 3 complete, 2026-09-19).** Block/section structure
> AND field semantics for `0x0E` are fully verified from firmware traces. Spatial
> lookup via `find_parcel(vol, X, Y)` oracle 10/10 PASS. `0x0D`/`0x0F`/`0x11` = TEXT
> address-lookup index (not spatial). Types `0x00`–`0x03` field semantics still UNKNOWN.
>
> Source: `../CARINDB_BLUEPRINT_EN.md` §6. Related: CF=1 decoding for these types →
> [`04-cf1-codec.md`](04-cf1-codec.md); open goals → [`06-objectives-roadmap.md`](06-objectives-roadmap.md).

---

## 6. Node / Edge / Parcel

CARINdb **has no** global Node/Edge/Name tables at fixed offsets. The network is
partitioned into *parcels* (blocks `0x0C`, `0x0E`, `0x10`, `0x0F`, `0x11`), each
with its own local sections and **16-bit internal pointers within the block**.

### 6.1 Descriptor arity and record sizes (empirically derived)

Sampled 40 blocks per type; `~n` = average approximate size (variable/padded section).

| Type | N sections | S0 | S1 | S2 | S3 | S4 | S5 | S6 | S7 | S8 | S9 | S10 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `0x00` | 5–8 (up to 16) | ~10 | 10 | ~10 | ~4 | ~32 | 8 | 16 | ~6 | | 8 | |
| `0x01` | 15–16 | 10 | 10 | 10 | ~4 | ~26 | 8 | 16 | 6 | 4 | 8 | 8 |
| `0x02` | 15–16 | 10 | 10 | 10 | ~4 | ~26 | 8 | 16 | 6 | 4 | 8 | 8 |
| `0x03` | 15–16 | 10 | 10 | 10 | ~4 | ~26 | 8 | 16 | 6 | 4 | 8 | 8 |
| `0x04` | 1 | ~10 | | | | | | | | | | |
| `0x06` | 6 (sometimes 2) | 24 | | | | | | | | | | |
| `0x08` | 2 | var | | | | | | | | | | |
| `0x09` | 3 | 4 | 488 | | | | | | | | | |
| `0x0A` | 10 | 8 | 56 | | 12 | | | | | | | |
| `0x0C` | 10 | 8 | 24 | | ~12 | | ~47 | | | var | var | |
| `0x0E` | 10 | 8 | 6 | var | | | | | | var | var | |
| `0x10` | 10 | 8 | ~8 | | | ~25 | | | | var | var | |
| `0x19` | 1 | ~49 | | | | | | | | | | |
| `0x1B` | 1 | 500 | | | | | | | | | | |

> `0x11`, `0x14`, `0x15`, `0x16`, `0x1C`, `0x1D`, `0x1E` are not in the table:
> most of their blocks use `COMPRESSION_FLAG = 1` (decode → [`04-cf1-codec.md`](04-cf1-codec.md)).

### 6.2 Types `0x00`–`0x03`: same schema (15–16 sections)

They occupy **2.9 GB of 3.3 GB** of the DB. Identical schema across `0x00`–`0x03`
with separate blocks per region (§1.2) suggests **different levels of detail of the
same structure** (`0x00` = finest, 91,756 blocks; `0x01` = coarser, 2,710 blocks).
Recurring 10/8/16/6/4-byte sections are compatible with node/edge/geometry lists,
but **field semantics are NOT verified** and must not be assumed.

### 6.3 Type `0x0E` (74,247 blocks) — main parcel

```
+0x08 SECTION_DESCRIPTOR[3 used of 10] e.g. {0x0030, 1169}, {0x24B8, 531}, {0x312C, 772}
+0x14 UNKNOWN_PADDING (20 bytes, zeros)
+0x28 SERVICE_DATA (8 bytes)
+0x30 SECTION_0: 8-byte records  ">HBBHH"
      A(u16)  FLAGS(u8)  B(u8)  C(u16)  D(u16)
```
Verified on sample:
* `D` is a **pointer to SECTION_1**, advances in steps of 6 (= S1 record size).
* `A` (0x798C, 0x799A, 0x79B1, …) is a **pointer into SECTION_2**, monotonically non-decreasing.
* `FLAGS` ∈ `{0x00,0x01,0x02,0x10,0x11,0x12}` (3 active bits: lo=bits[1:0] via `getbits(2)`, hi=bit4 via `getbits(1)<<4`).
  Global distribution across 563 CF=1 blocks (218 k records): 0x00=67.1 %, 0x10=26.4 %, 0x01=4.5 %, 0x11=1.3 %, 0x02=0.6 %, 0x12=0.1 %.
  **Working hypothesis (UNCONFIRMED):**
  - bit 4 = 0 → **bidirectional** (traversable both ways); bit 4 = 1 → **one-way** (digitization direction only).
    Evidence: city-centre parcels (Bologna ZTL, Torino centro) are predominantly 0x10; at the same intersection,
    the main road is 0x00 while the side street is 0x10; 27 % one-way ≈ typical European urban mix.
  - bits[1:0] = **access category**: 0x0=normal (93.5 %), 0x1=restricted/ramp (5.8 %),
    0x2=non-motorised or ferry (0.7 %, correlated 94 % with B=3).
  Requires cross-check vs. OSM or firmware bit-test trace to confirm direction semantics.
* `B` ∈ `{1,2,3,4,5,6}` in CF=1 blocks (3-bit field, `getbits(3)`, inherited across records).
  Distribution: B=1 43 %, B=4 19 %, B=5 15 %, B=3 14 %, B=2 6 %, B=6 3 %.
  Functional class (road category); CF=0 blocks may also carry the sentinel value `0xFF` ("absent").
* `C` = `0x0000` in `0x0E` blocks; in `0x0C` blocks it is an internal pointer to the
  name blob.

```python
PARCEL_S0_FMT = ">HBBHH"        # 8 bytes: A, FLAGS, B, C(name/aux ptr or 0), D(ptr to S1, stride 6)
```

### 6.3.1 Type `0x0E` CF=1 decoder & semantics

**Routing architecture** (from firmware): the routing engine (`rpmod`) and query
engine (`dbq`) request ONLY `BLOCK_TYPE` `0x0E` (parcels), `0x10` (street names),
and `0x12` (root). They **never** read `0x00`–`0x03` (those are `pbp` map-drawing)
nor `0x04` (matrices). Thus **routing is NOT precalculated**: the firmware
reconstructs the network hierarchy, valid paths, and turn costs at runtime from the
base `0x0E` topology.

**Layout of the CF=1 `0x0E` block** (S0/S1 structure ✅ VERIFIED 2026-09-18, oracle 67/67 blocks; S2 ✅ VERIFIED 2026-09-19, oracle: pbp m68k write trace `pbp+0x41c0`):
- **Prologue**: `T[0x2b]` (48 bytes).
- **Bitstream pre-header** (raw bytes, copied before `bits_init`):
  - 2 bytes: Count *N* (number of 12-byte anchor structs)
  - *N* × 12 bytes: anchor table (reference points for Section 2 delta decode; NOT output to dst)
  - 1 byte: `M_hi` — delta field width for Section 2
  - 1 byte: `M_lo` — val2 field width for Section 2
- **Section 0** (Nodes/Segments, `T[0x2d]` = 8 bytes):
  - `+0 (u16) A`: internal pointer, `getbits(ptrbits)` → Section 2 byte offset.
  - `+2 (u8) FLAGS`: `getbits(2)` bits 0–1, `getbits(1)<<4` bit 4. (**NB**: m68k asm annotation "getbits(4)" is wrong for DB-REL 34.)
  - `+3 (u8) B`: If `getbits(1)`==1 → `getbits(3)`, else inherit from previous record. (**NB**: m68k annotation "getbits(8)" is wrong for DB-REL 34.)
  - `+4 (u16) C`: If same `getbits(1)`==1 → `getbits(ptrbits)`, else inherit.
  - `+6 (u16) D`: pointer to Section 1. `getbits(bits_needed(S1_count)) * T[0x41] + S1_offset`.
- **Section 1** (Edges/Attributes, `T[0x41]` = 6 bytes):
  - `+0 (u16)`: pointer to Section 2. `getbits(bits_needed(S2_count)) * T[0x42] + S2_offset`.
  - `+2 (u8)`: span count. If `getbits(1)`==1 → `getbits(bits_needed(S2_count)) + 2`, else `1`.
  - `+3 (u8)`: flag. `getbits(1)`.
  - `+4–5`: zero (not decoded).
- **Section 2** (Geometry, `T[0x42]` = 24 bytes): delta-decoded from bitstream using
  anchor table. Algorithm (✅ VERIFIED 2026-09-19, oracle: pbp m68k write trace — `pbp+0x41c0`):
  - `idx_N = getbits(bits_needed(count_N))` → selects 12-byte anchor
  - `has_deltas = getbits(1)`
  - if `has_deltas`: for each of 4 fields: `is_16=getbits(1)`; `val=getbits(16 if is_16 else M_hi)`
  - else: 4 × sentinel `0x7FFF` — no geometry
  - `val1 = getbits(13) << 1`; `val2 = getbits(M_lo)`
  - **Output byte layout** (✅ VERIFIED 2026-09-19, oracle: pbp m68k write trace):

    | offset | size | content |
    |--------|------|---------|
    | `+0`   | i32  | `x_anc` — anchor bytes 0-3 (raw copy, `memmove pbp+0x41d4`) |
    | `+4`   | i32  | `y_anc` — anchor bytes 4-7 (raw copy) |
    | `+8`   | u16  | `raw_delta[0]` — unsigned, width = `is_16?16:M_hi` |
    | `+10`  | u16  | `raw_delta[1]` |
    | `+12`  | u16  | `raw_delta[2]` |
    | `+14`  | u16  | `raw_delta[3]` |
    | `+16`  | i32  | `anchor_f2` — anchor bytes 8-11 (raw copy, `memmove pbp+0x41ee`) |
    | `+20`  | u16  | `val1 = getbits(13) << 1` |
    | `+22`  | u16  | `val2 = getbits(M_lo)` |

  - **Note**: the firmware stores raw anchor + raw compressed deltas — it does NOT
    pre-compute absolute coordinates. The routing engine applies sign-extension and
    anchor+delta at query time. The `is_16` flag is consumed from the bitstream but NOT
    stored in the record; M_hi (from the block pre-header) is needed to interpret
    `raw_delta[k]` when `is_16=0`.

**S2 coordinate reconstruction** (✅ VERIFIED STEP 5, oracle 10/10 PASS 2026-09-19):
`decode_block` stores `M_hi` at `decoded[7]` and `M_lo` at `decoded[6]` after decoding a
0x0E block (bytes normally zeroed for CF). `decode_s2_coords(decoded, table)` reads M_hi
from `decoded[7]` and reconstructs absolute coordinates:

```python
M_hi   = decoded[7]          # from block pre-header
thresh = (1 << M_hi) - 1
for each S2 record i:
    x_anc, y_anc = S2[i]+0, S2[i]+4   # i32 anchor
    d[0..3]      = S2[i]+8             # 4 × u16 raw delta (unsigned)
    for k in 0..3:
        w_k = 16 if d[k] > thresh else M_hi
        signed_k = sign_extend(d[k], w_k)   # two's complement
    pt1 = (x_anc + signed_0, y_anc + signed_1)   # d[0]=dx1, d[1]=dy1
    pt2 = (x_anc + signed_2, y_anc + signed_3)   # d[2]=dx2, d[3]=dy2
```

Oracle: for each non-sentinel record with anchor in block's anchor bbox,
`|pt.coord − anchor| ≤ max_magnitude_k` (32767 for is_16, `1<<(M_hi−1)` otherwise).

> Implementation: `carin/parser/cf1.py` — `decode_type0E` + `_dec_0e_s0/s1/s2` (decoder);
> `encode_type0E` + `BitWriter` (serializer, ✅ STEP 4, oracle 10/10 PASS 2026-09-19);
> `decode_s2_coords` (coord reconstruction, ✅ STEP 5, oracle 10/10 PASS 2026-09-19).
> Firmware listing: `docs/fw/pbp_0x0E_decoder.asm`. Decoder entry `pbp+0x4320`
> (= `db_pub+0x1e98`); common section loop `pbp+0x40b0`; S2 handler `pbp+0x41c0`; `$694e` = memmove.

### 6.3.2 Types `0x0D` / `0x0F` / `0x11` — TEXT address-lookup index (NOT spatial)

**Discovery 2026-09-19** (STEP 3): these blocks were initially suspected to be a geographic
R-tree for parcel lookup. They are in fact an **alphabetical address index**.

Each block holds an array of **12-byte records** with identical layout:

```
  Offset  Size  Field  Content
  +0x00   u32   A      BLOCK_ID of target block (0x0C / 0x0E / 0x10 depending on type)
  +0x04   u8    B_hi   ASCII code — country / street-type code (e.g. 0x61='a'=Albania)
  +0x05   u8    B_lo   always 0x01
  +0x06   u16   C      byte offset into target block's S0 section
  +0x08   u16   D      record count in that range
  +0x0A   u16   E      always 0x0000 (padding)
```

Hierarchy and block counts:

| Type | Blocks | Target type | Semantics |
|------|--------|-------------|-----------|
| `0x0D` | 10 | `0x0C` | Country/language codes → record ranges in `0x0C` S0 |
| `0x0F` | 1,661 | `0x0E` | Street-name codes → record ranges in `0x0E` S0 |
| `0x11` | 921 | `0x10` | Street-name codes → record ranges in `0x10` S1 |

The `B_hi` code is an ASCII initial: the first `0x0E` block referenced (sector 235755)
is in Albania because 'a' is the first letter alphabetically. **This is address-lookup by
street name, not geographic proximity**. Do NOT use `0x0D`/`0x0F`/`0x11` for spatial
parcel lookup — use `scripts/find_parcel.py` instead (index from S2 `x_anc`/`y_anc`).

### 6.4 Type `0x04` (80,825 blocks) — 160-entry table

```
+0x08 SECTION_DESCRIPTOR[1] = {0x0010, 160}
+0x0C SERVICE_DATA (4 bytes)
+0x10 SECTION_0: 160 records of 10 bytes = 5 x u16
      sentinel value "undefined" = 0x7FFF
```
First sampled block: 22 records all `7FFF 7FFF 7FFF 7FFF 0000` then small values
(`000B 000E 000D 0010 0002`). Size and sentinel verified; **meaning of the 5 fields
UNKNOWN** (candidates: turn-cost matrix / road classes, unconfirmed).

### 6.5 Type `0x06` (2,688 blocks) — POI

```
+0x08 SECTION_DESCRIPTOR[1..6], first is {0x0020, N}
+0x0C UNKNOWN (4 bytes)
+0x10 BOUNDING_BOX: 4 x i32 big-endian = X_min, Y_min, X_max, Y_max   ✅ VERIFIED
+0x20 SECTION_0: N records of 24 bytes (see georef layout in 02-geo.md §8.1)
```
`X_max − X_min == Y_max − Y_min` always, and always `98304 · 2^k` → **quadtree grid**.
Observed sides: 98,304 / 196,608 / 393,216 / 786,432 / 1,572,864 / 3,145,728.
Full POI record layout → [`02-geo.md`](02-geo.md) §8.1.
