"""Analyse CARINdb COMPRESSION_FLAG = 1 blocks taken from the real ISO image.

Picks real blocks out of dataset/NAV_DB_21708.ISO, isolates the compressed
region (the block header, section descriptor, bbox and service data are stored
in clear) and runs the codec hypotheses in carin.parser.compression against a
validation oracle: a correct decode must reach UNCOMPRESSED_SIZE * 512 bytes
and, for text-bearing block types, expose readable Latin-1 strings.
"""
from __future__ import annotations

import argparse
import collections
import struct
import sys
import zlib
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from carin.parser.iso import IsoImage, CarinVolume, CARIN_SECTOR  # noqa: E402
from carin.parser import compression as comp  # noqa: E402


def pick_blocks(vol, want_type, count):
    out = []
    for b in vol.walk():
        if b.comp == 1 and (want_type is None or b.type == want_type):
            out.append(b.sector)
            if len(out) >= count:
                break
    return out


def probe(raw: bytes, target: int, label: str) -> None:
    print(f"\n### {label}: {len(raw)} B on disk -> {target} B expected "
          f"(ratio {target / max(1, len(raw)):.2f})")
    cut = comp.plain_prefix(raw)
    first_sec = struct.unpack_from(">H", raw, 8)[0]
    print(f"  plaintext prefix  : {cut} B   (first section offset = {first_sec})")
    print(f"  entropy tail      : {comp.entropy(raw[cut:]):.3f} bits/byte")
    trailing = len(raw) - len(raw.rstrip(b"\x00"))
    print(f"  trailing zero pad : {trailing} B")

    for start_label, start in (("first_section", first_sec), ("entropy_cut", cut)):
        body = raw[start:len(raw) - trailing]
        print(f"  -- stream at {start_label} (offset {start}, {len(body)} B)")

        # 1. stock inflate, every byte and bit offset, both wrappers
        hit = None
        for off in range(0, min(len(body), 512)):
            for wbits in (-15, 15):
                try:
                    o = zlib.decompressobj(wbits).decompress(body[off:])
                except Exception:
                    continue
                if len(o) > target // 4:
                    hit = (off, wbits, len(o))
                    break
            if hit:
                break
        print(f"     inflate          : {'HIT ' + str(hit) if hit else 'no'}")

        # 2. LZW variants
        best_lzw = (0.0, None)
        for msb in (True, False):
            for mx in (12, 13, 14):
                for early in (True, False):
                    o = comp.decode_lzw(body, max_bits=mx, msb_first=msb,
                                        early_change=early, max_out=target * 3)
                    s = comp.score_output(o, target)
                    if s > best_lzw[0]:
                        best_lzw = (s, (len(o), msb, mx, early))
        print(f"     LZW              : score {best_lzw[0]:.2f}  {best_lzw[1]}")

        # 3. LZ4 raw block
        o = comp.decode_lz4_block(body, max_out=target * 3)
        print(f"     LZ4 raw          : score {comp.score_output(o, target):.2f}  len {len(o)}")

        # 4. parametric LZSS grid (384 combinations)
        top = comp.sweep_lzss(body, target, top=3)
        for s, ln, params in top:
            print(f"     LZSS             : score {s:.2f}  len {ln}  {params}")


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--iso", default="dataset/NAV_DB_21708.ISO")
    ap.add_argument("--type", type=lambda s: int(s, 0), default=None,
                    help="block type to sample (default: a spread of types)")
    ap.add_argument("--count", type=int, default=1)
    args = ap.parse_args()

    img = IsoImage(args.iso)
    vol = CarinVolume(img)

    types = [args.type] if args.type is not None else [0x1E, 0x16, 0x00]
    for t in types:
        for sec in pick_blocks(vol, t, args.count):
            blk = vol.block(sec)
            probe(blk.raw, blk.usize * CARIN_SECTOR,
                  f"type 0x{blk.type:02X} sector {sec} len={blk.length} us={blk.usize}")


if __name__ == "__main__":
    main()
