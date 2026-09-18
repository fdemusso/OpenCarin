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
| 4 | `COMPRESSION_FLAG = 1` | ✅ **RESOLVED for type `0x00`** — bit-packing param. by `RECORD_SIZE_TABLE`; 1,200/1,200 decoded. Remaining: `0x0E`, `0x14`–`0x16` | 🟠 high | [`04-cf1-codec.md`](04-cf1-codec.md) |
| 5 | Field semantics in `0x0E` S0/S1/S2 (road network) | structure known, semantics unknown | 🔴 **critical** | [`03-road-network.md`](03-road-network.md) §6.3 |
| 6 | Georeferencing of parcels `0x0C`/`0x0E`/`0x10` (via `0x0D`/`0x0F`/`0x11`) | unresolved | 🔴 **critical** | [`03-road-network.md`](03-road-network.md) |
| 7 | Mapping `BLOCK_TYPE → section_type[]` | not present in data (firmware-hardcoded) | 🟠 high | [`01-architecture.md`](01-architecture.md) §3.2 |
| 8 | Resolution of `NAME_PTR` high16 (country table) | 6 unidentified segments | 🟡 medium | [`01-architecture.md`](01-architecture.md) §5 |
| 9 | Order/role of the 5 `u16` in type `0x04` | UNKNOWN | 🟡 medium | [`03-road-network.md`](03-road-network.md) §6.4 |
| 10 | Block checksum / CRC | **none found** | 🟢 no risk | — |

## Next concrete steps (highest leverage first)

1. **Port the CF=1 decoder to type `0x0E`** (`db_pub+0x1e98`). This is the routable
   parcel type — unlocking it plus item 5/6 gives the actual road graph.
   Coordinate delta decoding of the 12-byte Section-2 array is the specific unknown
   ([`03-road-network.md`](03-road-network.md) §6.3.1). The name blob remains the
   validation oracle ([`04-cf1-codec.md`](04-cf1-codec.md) §9.11.5).
2. **Port CF=1 to `0x14`/`0x15`/`0x16`** (`db_pub+0x2a7c`) — same structure, different
   section set. `0x16` feature records are already understood ([`02-geo.md`](02-geo.md) §8.2),
   giving a strong cross-check.
3. **Solve `0x0E` field semantics (item 5)** using the firmware routing logic:
   `rpmod`/`dbq` read only `0x0E`/`0x10`/`0x12` and reconstruct the graph at runtime,
   so the meaning of `A`/`FLAGS`/`B`/`C`/`D` is derivable from how the router consumes them.
4. **Parcel georeferencing (item 6)** via the `0x0D`/`0x0F`/`0x11` index blocks that
   currently look like range indices.
5. **`BLOCK_TYPE → section_type[]` map (item 7)**: extract from firmware (it is
   hardcoded there, per the `decode_type00` dispatch), not from the disc.

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
