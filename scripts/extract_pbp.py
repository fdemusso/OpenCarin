import struct
import os

fw_path = "build/fw/CC93__0560_nav_sw_load"
offset = 0x58ed0

with open(fw_path, "rb") as f:
    f.seek(offset)
    header = f.read(8)
    
sync, sysrev, size = struct.unpack(">HHI", header)
print(f"Sync: {hex(sync)}")
print(f"Size: {size} bytes ({hex(size)})")

if sync == 0x4afc:
    f = open(fw_path, "rb")
    f.seek(offset)
    data = f.read(size)
    
    out_path = "pbp_module.bin"
    with open(out_path, "wb") as out:
        out.write(data)
    print(f"Saved {size} bytes to {out_path}")
else:
    print("Invalid OS-9 sync bytes at offset!")
