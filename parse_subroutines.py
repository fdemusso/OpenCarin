import struct

navboot_path = r'I:\V_2\RR\0101\BMWC01S\app_sw\navboot'
with open(navboot_path, 'rb') as f:
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
                    if typ == 2:  # Subroutine Module
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

print(f'Found {len(modules)} Subroutine modules in navboot:')
for m in modules:
    print(f"Name: {m['name']:<20} Offset: {m['offset']:<10} Size: {m['size']:<10} Type: {m['type']:<4} SymOff: {m['sym_off']}")
