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
        print("Header + Desc:", raw[:48].hex())
        print("After 48 bytes:", raw[48:48+16].hex())
        break
