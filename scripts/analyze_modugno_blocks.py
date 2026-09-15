import sys
import struct
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage, to_wgs84
from scripts.cf1_super import read_super, layout_table, DEFAULT_DB0

vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
sb = read_super("dataset/NAV_DB_21708.ISO", DEFAULT_DB0)
tbl = layout_table(sb)

def print_stats(sector):
    blk = vol.block(sector)
    src = blk.raw
    desc_base = tbl[0x05]
    
    e0_count = struct.unpack_from(">H", src, desc_base + 2)[0]
    e1_count = struct.unpack_from(">H", src, desc_base + 6)[0]
    e2_count = struct.unpack_from(">H", src, desc_base + 10)[0]
    
    print(f"Sector {sector}:")
    print(f"  Nodes: {e0_count}")
    print(f"  Edges: {e1_count}")
    print(f"  Geoms: {e2_count}")

print_stats(1157141)
print_stats(2252227)
print_stats(2342451)
