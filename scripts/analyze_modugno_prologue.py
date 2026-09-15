import sys
import struct
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage

vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
raw = vol.block(2252227).raw
count_N = struct.unpack_from(">H", raw, 48)[0]
offset_M = 50 + count_N * 12
val = raw[offset_M : offset_M+2]
print(f"2 bytes at offset M: {val.hex()}")
