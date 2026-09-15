import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage
import struct
vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
for head in vol.walk(0):
    if head.type == 0x0E and head.comp == 1:
        blk = vol.block(head.sector)
        raw = blk.raw
        print(f"Block 0x0E at sector {head.sector}:")
        for i in range(10):
            desc = struct.unpack_from(">HH", raw, 8 + i*4)
            print(f"Section {i}: off={desc[0]:#x}, count={desc[1]}")
        break
