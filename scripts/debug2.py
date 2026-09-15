import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage

vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
blk = vol.block(2252227)
src = blk.raw
print("8 bytes at 40:", src[40:48].hex())
