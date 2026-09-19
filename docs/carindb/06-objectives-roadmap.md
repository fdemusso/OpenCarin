# Part 6 — Objectives, Open Questions & Roadmap

> **Status: 🎯 OPEN.** The prioritized worklist. Use this to pick what to work on
> and to know what "done" means for each item. Cross-references point to the part
> holding the current knowledge.
>
> Source: `../CARINDB_BLUEPRINT_EN.md` §11 + open `UNKNOWN` markers throughout.

---

## Project goal

Fully read (and eventually re-generate) the CarinDB binary map format from
`dataset/NAV_DB_21708.ISO`, well enough to extract the routable road network with
geometry and semantics — not just labels and POIs.

## Verification roadmap (priority-ordered)

| # | Topic | Status | Priority | Where |
|---|---|---|---|---|
| 1 | Coordinate system | ✅ **RESOLVED** — `K = 2e9/360`, origin 30° W on equator, rms 2.0 km / 38 anchors | — | [`02-geo.md`](02-geo.md) §7 |
| 2 | POI `0x06` & feature `0x16` records | ✅ **RESOLVED** — 28 & 20 bytes, local scale 64 | — | [`02-geo.md`](02-geo.md) §8 |
| 3 | Bounding box per block | ✅ **RESOLVED** — `find_bbox`, 60/60 on georeferenced types | — | [`02-geo.md`](02-geo.md) §7.4 |
| 4 | `COMPRESSION_FLAG = 1` | ✅ **RESOLVED per `0x00`, `0x0E`, `0x14/0x15/0x16`** — decoder `pbp+0x46aa` portato e VERIFIED 2026-09-19: 10/10 blocchi 0x16 CF=1 (1958 record geo) con X/Y nel range europeo, 0 bad; oracle `scripts/oracle_14_16.py` | — | [`04-cf1-codec.md`](04-cf1-codec.md) |
| 5 | Field semantics in `0x0E` S0/S1/S2 (road network) | ✅ **RESOLVED** — A=arc ID (routing stub), FLAGS bit4=direction, B=functional class, C=cross-parcel ref, D=ptr→S1; full S2 geometry verified 2026-09-19; oracle 15/15 blocks | — | [`03-road-network.md`](03-road-network.md) §6.3.1 |
| 6 | Georeferencing of parcels `0x0C`/`0x0E`/`0x10` (via `0x0D`/`0x0F`/`0x11`) | ✅ **RESOLVED** — `find_parcel(vol, X, Y)` implemented; oracle 10/10 PASS 2026-09-19; index built from S2 `x_anc`/`y_anc`; 0x0D/0x0F/0x11 are TEXT lookup (address index), not spatial R-tree | — | `scripts/find_parcel.py`, `scripts/oracle_find_parcel.py` |
| 7 | Mapping `BLOCK_TYPE → section_type[]` | not present in data (firmware-hardcoded) | 🟠 high | [`01-architecture.md`](01-architecture.md) §3.2 |
| 8 | Resolution of `NAME_PTR` high16 (country table) | 6 unidentified segments | 🟡 medium | [`01-architecture.md`](01-architecture.md) §5 |
| 9 | Order/role of the 5 `u16` in type `0x04` | UNKNOWN | 🟡 medium | [`03-road-network.md`](03-road-network.md) §6.4 |
| 10 | Block checksum / CRC | **none found** | 🟢 no risk | — |

## Next concrete steps (highest leverage first)

1. ✅ **CF=1 decoder for type `0x0E` — DONE** (2026-09-19). S0/S1 verified 2026-09-18;
   S2 verified 2026-09-19 via m68k write trace (`pbp+0x41c0`). Raw anchor + raw deltas
   stored; routing engine applies sign-extension at query time. See
   [`03-road-network.md`](03-road-network.md) §6.3.1 and `docs/fw/pbp_0x0E_decoder.asm`.
2. ✅ **CF=1 decoder `0x14`/`0x15`/`0x16` — DONE** (2026-09-19). `pbp+0x46aa`
   m68k write trace completo; `decode_type14_16` in `cf1.py`; VERIFIED su 10 blocchi
   0x16 CF=1 del DB_1: 1958 record geo con X/Y europei, 0 bad su tutti gli invarianti.
   Oracle: `scripts/oracle_14_16.py`.
3. ✅ **`0x0E` field semantics (item 5) — DONE** (2026-09-19). Full S0/S1/S2 semantics
   traced from firmware (`rpmod`/`dbq`). Routing cost formula: `cost = cost_table[speed_idx]
   × S1[i+2].ptr × 100 >> 8`. Dispatch stubs confirmed. Oracle 15/15.
4. ✅ **Parcel georeferencing (item 6) — DONE** (2026-09-19). `find_parcel(vol, X, Y)`
   builds a spatial index from S2 `x_anc`/`y_anc` coordinates; cached in
   `dataset/parcel_index.npz`. Oracle 10/10 PASS spanning Albania to Austria.
   **Key discovery**: 0x0D/0x0F/0x11 blocks are an ADDRESS LOOKUP index (country+street
   codes → parcel record ranges), not a geographic R-tree. Spatial lookup must use the
   S2 anchor coordinate index.
5. **`BLOCK_TYPE → section_type[]` map (item 7)**: extract from firmware (it is
   hardcoded there, per the `decode_type00` dispatch), not from the disc.
6. ✅ **`0x0E` CF=1 Serializer (STEP 4) — DONE** (2026-09-19). `encode_type0E()` in
   `carin/parser/cf1.py`; oracle 10/10 PASS (`scripts/oracle_encode_0e.py`). Round-trip
   verified on bytes [4:] (block_id length field legitimately differs due to re-encoding
   efficiency). Re-encoded blocks are ~30–40% smaller than original (anchor dedup +
   M_hi/M_lo derived from data distribution).

## Open `UNKNOWN` markers (quick reference)

- `NAME_PTR` high16 segments `6C2E 9A30 F931 CA2F 112E 12A6` — not a BLOCK_ID ([`01-architecture.md`](01-architecture.md) §5).
- Type `0x07` service quartet `F1198000 …` — not the geographic bbox ([`01-architecture.md`](01-architecture.md) §4.2).
- Type `0x04` five `u16` fields — turn-cost matrix? unconfirmed ([`03-road-network.md`](03-road-network.md) §6.4).
- `0x0E` `FLAGS` bits (one-way / digitization direction) — unconfirmed ([`03-road-network.md`](03-road-network.md) §6.3).
- Type `0x00`–`0x03` node/edge/geometry field semantics — not verified ([`03-road-network.md`](03-road-network.md) §6.2).
- DEFAULT_SPEED unit in country record (presumably 0.1 km/h) ([`01-architecture.md`](01-architecture.md) §4.4).

## Constraints / non-goals

- `/TPD/*` third-party data (POI marketing, HTML) is **not** required for routing.
- CF=1 is **not** required to *generate* a valid DB (CF=0 + CF=2 suffice); it is only
  needed to fully read the original disc.
- No block-level checksum exists — no integrity layer to reverse.
