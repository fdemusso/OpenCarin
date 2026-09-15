import sys
import struct
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage
from scripts.cf1_super import read_super, layout_table, DEFAULT_DB0

vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
blk = vol.block(2252227)
src = blk.raw
sb = read_super("dataset/NAV_DB_21708.ISO", DEFAULT_DB0)
tbl = layout_table(sb)

cursor = tbl[0x2b]
print(f"Cursor start: {cursor}")
print("Bytes at cursor:", src[cursor:cursor+16].hex())
cursor += 8
print(f"Cursor after +8: {cursor}")
count_N = struct.unpack_from(">H", src, cursor)[0]
print(f"count_N at +8: {count_N}")
