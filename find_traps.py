import re
with open('dbq/rpmod.asm') as f:
    text = f.read()
traps = set(re.findall(r'trap\s+#\$([0-9a-fA-F]+)', text))
print("Traps found:", traps)

# find the next line after trap #$0
lines = text.split('\n')
for i, line in enumerate(lines):
    if 'trap       #$0' in line:
        print(line)
        print(lines[i+1])
