import re
import json
import sys

def parse_asm():
    with open('C:\\Users\\flavi\\Desktop\\OpenCarin\\dbq\\rpmod_analysis\\rpmod.asm', 'r', encoding='utf-8') as f:
        lines = f.readlines()

    instructions = []
    for line in lines:
        line = line.strip()
        if not line: continue
        # Format: 00004e: 2d468010     move.l     d6, -$7ff0(a6)
        match = re.match(r'^([0-9a-fA-F]+):\s+([0-9a-fA-F]+)\s+(.*)$', line)
        if match:
            addr = match.group(1).zfill(6)
            hexcode = match.group(2)
            rest = match.group(3).strip()
            
            # extract mnemonic and operands
            parts = rest.split(None, 1)
            mnemonic = parts[0]
            operands = parts[1] if len(parts) > 1 else ""
            
            instructions.append({
                'addr': addr,
                'hex': hexcode,
                'mnemonic': mnemonic,
                'operands': operands,
                'line': line
            })

    # Pass 1: find all local jump targets and call targets
    local_jumps = set()
    call_targets = set()
    
    cond_branches = {'beq', 'bne', 'bcs', 'bcc', 'bmi', 'bpl', 'bvs', 'bvc', 'bhi', 'bls', 'bge', 'blt', 'bgt', 'ble', 'beq.b', 'bne.b', 'bcs.b', 'bcc.b', 'bmi.b', 'bpl.b', 'bvs.b', 'bvc.b', 'bhi.b', 'bls.b', 'bge.b', 'blt.b', 'bgt.b', 'ble.b', 'beq.w', 'bne.w', 'bcs.w', 'bcc.w', 'bmi.w', 'bpl.w', 'bvs.w', 'bvc.w', 'bhi.w', 'bls.w', 'bge.w', 'blt.w', 'bgt.w', 'ble.w', 'bra', 'bra.b', 'bra.w'}
    calls = {'bsr', 'bsr.b', 'bsr.w', 'bsr.l', 'jsr'}
    
    for inst in instructions:
        m = inst['mnemonic']
        ops = inst['operands']
        if m in cond_branches:
            if ops.startswith('$'):
                target = ops[1:].zfill(6)
                local_jumps.add(target)
        elif m in calls:
            if ops.startswith('$'):
                target = ops[1:].zfill(6)
                call_targets.add(target)

    # Pass 2: segment into functions
    functions = []
    current_func = None
    
    for i, inst in enumerate(instructions):
        addr = inst['addr']
        
        is_new_func = False
        if current_func is None:
            is_new_func = True
        elif addr in call_targets:
            is_new_func = True
        elif i > 0 and instructions[i-1]['mnemonic'] == 'rts':
            # If the current instruction is NOT a target of a local jump, it's a new function
            if addr not in local_jumps:
                is_new_func = True
                
        if is_new_func:
            if current_func is not None:
                current_func['end'] = instructions[i-1]['addr']
                functions.append(current_func)
            current_func = {
                'name': f"sub_{addr}",
                'start': addr,
                'end': None,
                'jumps': {'cond': [], 'uncond': [], 'calls': []},
                'call_args': {}
            }
            
        m = inst['mnemonic']
        ops = inst['operands']
        if m in cond_branches:
            if m.startswith('bra'):
                current_func['jumps']['uncond'].append(ops)
            else:
                current_func['jumps']['cond'].append(ops)
        elif m in calls:
            current_func['jumps']['calls'].append(ops)
            # backtrack to find args
            args = []
            for j in range(max(0, i-3), i):
                prev_m = instructions[j]['mnemonic']
                prev_ops = instructions[j]['operands']
                if prev_m.startswith('move') or prev_m.startswith('clr') or prev_m.startswith('lea') or prev_m.startswith('pea'):
                    # get destination register
                    parts = prev_ops.split(',')
                    if len(parts) > 1:
                        dest = parts[-1].strip()
                        args.append(dest)
                    elif prev_m.startswith('clr'):
                        args.append(parts[0].strip())
            if args:
                current_func['call_args'][addr] = args

    if current_func is not None:
        current_func['end'] = instructions[-1]['addr']
        functions.append(current_func)
        
    print(json.dumps(functions))

if __name__ == '__main__':
    parse_asm()
