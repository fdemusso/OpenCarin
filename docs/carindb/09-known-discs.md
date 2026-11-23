# Known discs

Every disc that a finding in these docs rests on, with what is established about it. Collected
from the issues and PRs so that nothing has to be looked up there (2026-11-23). "Who" is the
contributor who checked it; the images themselves are not in the repo except where `dataset/` says.

| CD-ID | Media | DB-REL | Unit | Content / build | Checked by | Notes |
|---|---|---|---|---|---|---|
| 21708 | DVD (`DB_0` + `DB_1`) | 34 | 512 | `eur_hw_her_bmw_14q4_20150721a_w`, Navteq, BMW, Europe | repo | the reference disc; subrel 9; `0x13` text 589 B |
| 21734 | DVD | 34 | 512 | BMW, Europe | repo | subrel 9; `0x13` text 608 B; has an unreferenced `0x08` grid (02-geo §7.3) |
| 2952 | CD, single `/carindb` | 22 | 2048 | Renault Carminat CNI1, 19 countries | electricduck | subrel 8; 20-byte `0x06` POI records |
| 21594 | CD | 34 | 2048 | Ireland + UK; ABSTRACT `carinet16s2048` | electricduck | subrel 8; REGION `--` |
| (2007 Master CD) | CD, 392,500,224 B | 34 | 512 | `bnl_hw_ta_audi_0701_20070726p`, TeleAtlas, Audi, BeNeLux; conversion tool `prince_1.1_20070711` | Tintom1 | `0x13` at sector 2 (CF 2); `0x17`/`0x18` TMC tables (14); `CARINET` 750,592 B; `COVERAGE` 2 |
| 5944 | CD, single `/carindb` | **26** | 2048 | `us1-10_hw_nt_ald_02I_20021105b`, Navtech 2002, North America, Range Rover P38 | daglitch | superblock `+0x22` = 8; `0x13` at sector 1 (CF 0); 44-byte country record, US = `0xE0`; 56-byte `0x17` record; no `0x19`/`0x1A`/`0x1B` |
| 20407 | unofficial map of Russia, BMW 2010 | 34 | 512 | not decoded | lugovskovp | superblock below: `+0x22` = `0x0060` |
| 21462 | official map `GBR_IR_13_14` | 34 | ? | UK / Ireland | lugovskovp | only the speed constants (issue #1) |
| 21486 | official map `SPA_POR_13_14` | 34 | ? | Spain / Portugal | lugovskovp | Gibraltar `LEFT_HAND` = 0 (issue #25) |
| (a DB-REL 30 disc) | ? | 30 | ? | ? | lugovskovp | `0x13` 16-byte constant seen on it |

## Superblock of CD-ID 20407 (screenshot, lugovskovp, issue #6)

Sector 0, 512-byte unit, read from a hex editor:

```
0x00  00000001 00120000 00600001 00000701      BLOCK_ID, type 0x12; {0x60, 1}; 0x0701
0x10  000C0011 00000002 00010022 0000000C      +0x1A = 0x0022 = DB-REL 34
0x20  00010060 0068001F 00A6005D 02000001      +0x22 = 0x0060; {0x68, 31}; {0xA6, 93}
0x30  00000000 06E679AA 0BB1DE1F 28C7B2B8      16 opaque bytes at +0x34
0x40  17569F41 00000701 000C0011 021C0019      a second service record at +0x44
0x50  107ACFD8 0DAB93B6 28C7B2B8 17299470      16 opaque bytes at +0x50
0x60  00000304 00010000 | 0000 0001 0002 0003 … S0 record (0x304 = the 0x07 block); the list 0..30 at +0x68
```

- `+0x22` = `0x0060`, the same as on both DVDs, so the disc takes **16 bits** (subrel >= 9). It is
  not the counter-example to `+0x22` that the issue was hoping for, and it does not contradict it.
- The structure is the DVD one: S0 at `0x60` with the `0x07` block `0x304`, the 31-entry list at
  `0x68`, the `RECORD_SIZE_TABLE` at `0xA6` with 93 pairs.
- Two 16-byte opaque values at `+0x34` and `+0x50` share their third word (`28C7B2B8`). Unlike the
  `0x13` constant (111,111,111 × 1..4) they are not a simple pattern; meaning unknown. Not compared
  with the other discs yet.
- Before this disc was seen, the 16-bit width could only be inferred for it. It is the data
  point the roadmap (item 9) asked for, but it does not test the `< 9` branch; that needs CD-ID
  21594 (needs subrel 8, DB-REL 34) or CD-ID 2952.
