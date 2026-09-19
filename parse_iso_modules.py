import struct
import os

iso_path = r'dataset\NAV_SW(v32).iso'
with open(iso_path, 'rb') as f:
    data = f.read()

idx = 0
modules = []
while idx < len(data) - 48:
    idx = data.find(b'\x4a\xfc', idx)
    if idx == -1: break
    
    try:
        header = data[idx:idx+48]
        sync, sysrev, size, owner, name_off, access, typ, lang, attr, rev, edition, usage, sym_off = struct.unpack('>HHLLLHBBBBHLL', header[:0x20])
        
        if size > 0 and size < 15*1024*1024 and name_off < size and name_off > 0x30:
            name_start = idx + name_off
            name_end = data.find(b'\x00', name_start)
            if name_end != -1 and name_end - name_start < 64:
                name = data[name_start:name_end].decode('ascii', errors='ignore')
                if all(c.isalnum() or c in '_-.' for c in name):
                    modules.append({
                        'offset': hex(idx),
                        'name': name,
                        'size': hex(size),
                        'type': hex(typ),
                        'lang': hex(lang),
                        'sym_off': hex(sym_off)
                    })
    except Exception as e:
        pass
    idx += 2

print(f'Found {len(modules)} OS-9 modules in ISO.')
with open('modules_list.txt', 'w') as f:
    for m in modules:
        f.write(f"Name: {m['name']:<20} Offset: {m['offset']:<10} Size: {m['size']:<10} Type: {m['type']:<4} SymOff: {m['sym_off']}\n")
print('Wrote to modules_list.txt')
