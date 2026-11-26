# RoadRunner v32 TMC direction and extent flags

Related to [issue #22](https://github.com/fdemusso/OpenCarin/issues/22) and
[road tile section 12](../carindb/03-road-network.md). All function offsets below
are relative to the start of the named module.

## Executed in `dbpa + 0x2a930`

The matcher advances around the incident-link ring and looks for an S12 row with
the requested country code (flags bits 0–3), location table number (bits 4–9)
and location code (the second u16 in the row).

The cells show the direction the matcher returns to the caller. The caller uses
1 for the stored A endpoint and 2 for the B endpoint when continuing the search.

| S12 row type | Bit 10 | Request direction 1 | Request direction 2 |
| --- | --- | --- | --- |
| 6 | 0 | 1 | No match |
| 6 | 1 | No match | 1 |
| 7 | 0 | 2 | No match |
| 7 | 1 | No match | 2 |
| 8 | 0 | 1 | 2 |
| 8 | 1 | 2 | 1 |

For a matched row, the function writes 1 to the separate extent output when
bit 11 is clear and 0 when it is set. Bits 12–15 leave both outputs unchanged
in this matcher. A successful match returns `0x01f3`; exhausting the synthetic
ring returns `0x01b2`.

## Traced in the callers

- `dbpa + 0x2982c` reads the two seed link handles of a `0x17` point record
  from `+0x28` (block ID) / `+0x30` (link offset) and `+0x2c` / `+0x32`.
  `dbpa + 0x2abb8` selects a neighboring location and its seed based on the
  requested direction, then tries the seed link's endpoints. The S12 matcher
  evaluates bit 10 using the request direction independently of the seed slot.
- The same caller uses bit 11 in its request-kind filter. Kind 3 accepts a
  clear bit, kind 4 a set bit, and kind 5 either. Both bit values occur on
  point references in the Spain table of DVD 21734.
- `rpmod + 0x2296c` also passes the inverse of bit 11 to the extent code.
  For DB-REL 23 and later it reads bit 12 separately when building the
  traffic key and passes it to the same extent code. The user-visible
  meaning of that bit and any other uses of bits 13–15 remain open.

For an edit that reverses the stored endpoints of a link, preserving this
direction behavior requires swapping row types 6 and 7 while preserving their
flags. For type 8, keep the type and toggle bit 10. Relocate affected
`0x17` seed handles separately.

## Reproduce with a synthetic parcel

Run from the repository root with a local v32 bsw2 container or extracted
`dbpa` module. The example checks the module hash, creates a two-link ring in
memory and stubs tile fetch and release. It exercises 48 combinations of row
type, request direction and flag bits through the real matcher.

```sh
uv run --with capstone --with unicorn python examples/07_firmware_emulator/dbpa_tmc.py /path/to/bsw2
```

The test exercises the row matcher and local ring traversal. End-to-end traffic
message handling and the relationship with the DVD's `0x19` links remain open.
