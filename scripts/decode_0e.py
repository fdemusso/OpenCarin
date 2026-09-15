import sys
import struct
import json
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage
from carin.parser.cf1 import DECODERS, Cf1Context, bits_needed, Cf1Error
from scripts.cf1_super import layout_table

# UNKNOWN: The exact layout of the 12-byte raw array elements in the bitstream 
# and how they map to absolute/delta coordinates in Section 2 is still UNKNOWN.
# A full GeoJSON cannot be generated until this coordinate encoding is resolved.

def decode_0e(ctx: Cf1Context):
    # Prologue is T[0x2b] = 48 bytes
    ctx.copy_raw(0, ctx.T(0x2b))
    
    # Read pre-header raw byte arrays
    ctx.dst[0x7126] = ctx.src[ctx.cursor] # UNKNOWN
    ctx.cursor += 1
    ctx.dst[0x7122] = ctx.src[ctx.cursor] # UNKNOWN
    ctx.cursor += 1
    
    # N 12-byte records
    count_N = struct.unpack_from(">H", ctx.src, ctx.cursor)[0]
    ctx.cursor += 2
    raw_array_12 = ctx.copy_raw(-1, count_N * 12)
    
    # M 1-byte records
    count_M = struct.unpack_from(">H", ctx.src, ctx.cursor)[0]
    ctx.cursor += 2
    raw_array_1 = ctx.copy_raw(-1, count_M)
    
    ctx.bits_init()
    
    # Further section decoding depends on evaluating ptrbits and iterating descriptors...
    # (Leaving incomplete as it requires more reverse engineering of the 12-byte structs)

if __name__ == "__main__":
    print("Script for decoding 0x0E block.")
    print("WARNING: GeoJSON polyline generation is currently IMPOSSIBLE.")
    print("REASON: The absolute coordinate encoding in the 12-byte struct array (Section 2) remains UNKNOWN.")
    print("Please see docs/CARINDB_BLUEPRINT_EN.md and docs/fw/pbp_0x0E_decoder.asm for details.")
