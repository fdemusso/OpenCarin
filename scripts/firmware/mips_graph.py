"""
Generates call graphs from MIPS32 disassembled firmware.

Traces function calls to help map out the execution flow of the CF=1 decompression routines.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from mips_dis import FP_BIAS, code_bounds, disasm_range, find_module, load  # noqa: E402

IMM_RE = re.compile(r"\$at, (-?0x[0-9a-f]+|-?\d+)$")


def analyse(modname: str):
    data, mods = load()
    m = find_module(mods, modname)
    start, end = code_bounds(data, m)
    ins = disasm_range(data, m, start, end)
    idx = {i.address: k for k, i in enumerate(ins)}

    # target di chiamata
    calls: list[tuple[int, int]] = []  # (site, target)
    for k, i in enumerate(ins):
        if i.mnemonic != "addiu":
            continue
        mm = IMM_RE.search(i.op_str)
        if not mm or not i.op_str.startswith("$at, $at, "):
            continue
        if k + 1 >= len(ins) or ins[k + 1].mnemonic != "addu":
            continue
        if "$fp" not in ins[k + 1].op_str:
            continue
        calls.append((i.address, (FP_BIAS + int(mm.group(1), 0)) & 0xFFFFFFFF))

    # inizio funzioni
    starts = set()
    for i in ins:
        if i.mnemonic == "sw" and i.op_str.startswith("$ra, ($sp)"):
            starts.add(i.address)
    for _site, tgt in calls:
        if start <= tgt < end:
            starts.add(tgt)
    return data, m, ins, idx, calls, sorted(starts), start, end


def owner(starts: list[int], addr: int) -> int:
    lo = 0
    for s in starts:
        if s <= addr:
            lo = s
        else:
            break
    return lo


def main(argv: list[str]) -> int:
    if len(argv) < 3:
        print(__doc__)
        return 1
    cmd, modname = argv[1], argv[2]
    _data, _m, _ins, _idx, calls, starts, _s, _e = analyse(modname)
    if cmd == "funcs":
        from collections import Counter
        c = Counter(owner(starts, site) for site, _t in calls)
        for s in starts:
            print(f"{s:06x}  chiamate={c.get(s, 0)}")
        print(f"{len(starts)} funzioni, {len(calls)} chiamate")
        return 0
    target = int(argv[3], 0)
    if cmd == "callers":
        for site, tgt in calls:
            if tgt == target:
                print(f"{site:06x} (in {owner(starts, site):06x}) -> {tgt:06x}")
        return 0
    if cmd == "calls":
        for site, tgt in calls:
            if owner(starts, site) == target:
                print(f"{site:06x} -> {tgt:06x}")
        return 0
    print(__doc__)
    return 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
