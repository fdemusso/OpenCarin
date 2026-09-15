import sys
import struct
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from carin.parser.iso import CarinVolume, IsoImage, to_carin

K = 5555555.5555
TARGET_X, TARGET_Y = to_carin(16.7833, 41.0833)
print(f"Target Modugno: X={TARGET_X}, Y={TARGET_Y}")

vol = CarinVolume(IsoImage("dataset/NAV_DB_21708.ISO"))
best_block = None
min_dist = float('inf')

for head in vol.walk(0):
    if head.type == 0x0E and head.comp == 1:
        raw = vol.block(head.sector).raw
        # Count N is at offset 48
        count = struct.unpack_from(">H", raw, 48)[0]
        # Iterate anchors
        for i in range(count):
            x, y = struct.unpack_from(">ii", raw, 50 + i * 12)
            dist = max(abs(x - TARGET_X), abs(y - TARGET_Y))
            if dist < min_dist:
                min_dist = dist
                best_block = head.sector
                if dist < 20000: # Found a close one
                    print(f"Found block {head.sector} with anchor at dist {dist} (X={x}, Y={y})")
                    break
        if min_dist < 5000:
            break

print(f"Best block for Modugno: {best_block} (dist {min_dist})")
