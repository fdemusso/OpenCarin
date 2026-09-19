import re
with open('dbq/rpmod.asm') as f:
    text = f.read()

matches = re.finditer(r'lea\.l\s+\$([0-9a-fA-F]+)\(pc\),\s*(a[0-7])', text)
addrs = []
for m in matches:
    # calculate the target address
    # the PC is the address of the instruction + 2
    # the offset is hex $xxxx
    pass
