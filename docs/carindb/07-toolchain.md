# Part 7 — Toolchain Reference

> **Status: 🔧 REFERENCE.** The parser library and scripts that produced/verify
> everything in these docs. Paths are relative to the repo root.
>
> Source: `../CARINDB_BLUEPRINT_EN.md` §10 + §9.11.8.

---

## Library (`carin/`)

| File | Function |
|---|---|
| `carin/parser/iso.py` | ISO 9660 reader (no mount), `CarinVolume` over `DB_0+DB_1` space, `CarinBlock`, `find_bbox`, `to_wgs84`/`to_carin` |
| `carin/parser/calibration.py` | `GeographicCalibrator` (Levenberg-Marquardt + grid search) |
| `carin/parser/compression.py` | `CompressionAnalyzer`, `LzssSweep`, `sweep_lzss`, `decode_lzw`, `decode_lz4_block`, `entropy`, `plain_prefix`, `score_output` |
| `carin/parser/cf1.py` | **CF=1 bit-packing decoder** (`decode_block`), parameterized by `RECORD_SIZE_TABLE` — see [`04-cf1-codec.md`](04-cf1-codec.md) |

## Analysis & extraction scripts (`scripts/`)

### Geo / records
| Script | Function |
|---|---|
| `extract_anchors.py` | extracts `(name, X, Y)` from `0x16` blocks |
| `optimize_coords.py` | calibration and residual verification |

### CF=1 codec — firmware recovery
| Script | Function |
|---|---|
| `os9_modules.py` | enumerates OS-9/OS-9000 modules (`4AFC`/`4DAD` sync) |
| `m68k_dis.py` | disassembles m68k **in 68040 mode** (required for `BFEXTU`) |
| `mips_dis.py`, `mips_graph.py`, `mips_func.py` | MIPS disassembler, call graph, annotated dump |
| `fw_xref.py` | xref of PC-relative constant strings |
| `os9_data.py` | static data area, resolves `a6` references |
| `fw_arch_detect.py` | detects module CPU architecture |
| `extract_firmware.py` | re-extracts codec-bearing firmwares from `NAV_SW(v32).iso` |
| `fw_hunt_charmap.py` | searches for the 42-byte codec charmap across a firmware ISO |
| `cf1_defaults.py` | extracts default layout table from firmware |
| `cf1_super.py` | extracts `RECORD_SIZE_TABLE` from disc superblock |
| `cf1_charmap.py` | extracts text-decoder character table |

### CF=1 codec — decode & validate
| Script | Function |
|---|---|
| `cf1_layout_probe.py` | inspects real CF=0 blocks to infer layout |
| `cf1_try.py` | decodes a single block, prints descriptor |
| `cf1_validate.py` | structural + text oracles on selected blocks |
| `cf1_sweep.py` | batch decodes, reports success rate (1,200/1,200 on type `0x00`) |

### Codec analysis (historical — negative results, see [`05-failed-attempts.md`](05-failed-attempts.md))
| Script | Function |
|---|---|
| `analyze_codec.py` | analysis of CF=1 codec on real ISO blocks |
| `find_pairs.py` | scans DB for plaintext/ciphertext pairs (identical bbox, differing CF) — outcome: none |

## Firmware listings (`docs/fw/`)

Disassembled, annotated decoders so transcription can resume without redoing the RE:

| File | Content |
|---|---|
| `m68k_pbp_decoders.asm` | CC-93 `pbp` decoders (m68k, DB-REL ≤ 22) |
| `mips_decode_type00.asm` | DB-REL 34 `decode_type00` (`db_pub`, MIPS) |
| `mips_primitives.asm` | `getbits`/`bits_init`/`copy_*` primitives |
| `mips_dec_A.asm`, `mips_dec_B.asm` | section decoders |
| `mips_dec_text.asm` | text decoder |
| `pbp_0x0E_decoder.asm` | type `0x0E` parcel decoder (still being ported) |

## Example invocations

```bash
python3 scripts/extract_anchors.py --out build/cities.pkl --names paris london roma
python3 scripts/optimize_coords.py
python3 scripts/analyze_codec.py --type 0x1E --count 1

# CF=1 pipeline
python3 scripts/cf1_super.py      dataset/NAV_DB_21708.ISO   # RECORD_SIZE_TABLE
python3 scripts/cf1_charmap.py    <firmware>                 # 42-byte charmap
python3 scripts/cf1_sweep.py      --type 0x00 --count 1200   # batch decode + validate
```

## Build artifacts

| File | Content |
|---|---|
| `build/cities.pkl` | extracted city anchors for calibration |
| `build/cross_iso_type0.pkl` | bbox → (sector, length, cf) map for both editions (cross-edition method, [`05-failed-attempts.md`](05-failed-attempts.md) §9.10) |
