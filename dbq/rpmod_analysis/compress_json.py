import json
import re

def compress():
    with open('C:\\Users\\flavi\\Desktop\\OpenCarin\\dbq\\rpmod_analysis\\cfg.json', 'r', encoding='utf-16') as f:
        data = json.load(f)
    
    compact = {}
    for func in data:
        name = func['name']
        start = func['start'].lstrip('0') or '0'
        end = func['end'].lstrip('0') or '0' if func['end'] else ''
        
        cj = [j.replace('$', '') for j in set(func['jumps']['cond'])]
        uj = [j.replace('$', '') for j in set(func['jumps']['uncond'])]
        
        calls = {}
        for c in func['jumps']['calls']:
            parts = c.split(' @ ')
            target = parts[0].replace('$', '')
            addr = parts[1] if len(parts) > 1 else ''
            args = func['call_args'].get(addr, [])
            calls[target] = args
            
        obj = {"s": start, "e": end}
        if cj: obj["cj"] = cj
        if uj: obj["uj"] = uj
        if calls: obj["c"] = calls
        
        compact[name] = obj
        
    out = json.dumps(compact, separators=(',', ':'))
    print(len(out))
    with open('C:\\Users\\flavi\\Desktop\\OpenCarin\\dbq\\rpmod_analysis\\cfg_compact.json', 'w', encoding='utf-8') as f:
        f.write(out)

if __name__ == '__main__':
    compress()
