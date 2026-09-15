import sys
import struct
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage, to_wgs84

vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
blk = vol.block(2252227)
raw = blk.raw
count = struct.unpack_from(">H", raw, 48)[0]
print(f"Block 2252227 anchors: {count}")
for i in range(count):
    x, y = struct.unpack_from(">ii", raw, 50 + i * 12)
    lon, lat = to_wgs84(x, y)
    print(f"  {i}: {lat:.5f} N, {lon:.5f} E")
