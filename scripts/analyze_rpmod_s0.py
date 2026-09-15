import re

with open("rpmod/rpmod.asm") as f:
    lines = f.read().splitlines()

for i, line in enumerate(lines):
    if re.search(r"move\.w\s+\$6\([a-z0-9]+\),\s*d[0-7]", line) or re.search(r"move\.w\s+\(a[0-7]\),\s*d[0-7]", line):
        # Only print a few to see context
        pass
