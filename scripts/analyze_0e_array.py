import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage, to_wgs84
import struct
vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
for head in vol.walk(0):
    if head.type == 0x0E and head.comp == 1:
        blk = vol.block(head.sector)
        raw = blk.raw
        # After 48 bytes prologue:
        # byte 48: UNKNOWN ? Wait, no!
        # The prompt said: "1 byte (UNKNOWN), 1 byte (UNKNOWN), 2 bytes Count N"
        # If byte 48, 49 are UNKNOWN, then count is at 50!
        # Let's print raw[48:64].hex()
        print("Raw:", raw[48:48+30].hex())
        
        # Let's just manually parse the hex we saw: 00170eac00000ff7d0004af4c11c0eb0
        # If raw[48:48+16] was 00170eac00000ff7d0004af4c11c0eb0
        # That means byte 48 and 49 are 00 17. So count is 23!
        count = struct.unpack_from(">H", raw, 48)[0]
        print(f"Array count: {count}")
        for i in range(min(count, 5)):
            x, y, unk = struct.unpack_from(">iii", raw, 50+i*12)
            lon, lat = to_wgs84(x, y)
            print(f"  {i}: X={x} Y={y} unk={unk:#010x} -> {lat:.5f} N, {lon:.5f} E")
        break
