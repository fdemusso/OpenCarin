"""Trova chi referenzia (PC-relative) una stringa costante dentro un modulo.

Le stringhe costanti dei moduli C Microware stanno dentro la sezione di codice e
sono raggiunte con `lea $off(pc),aN`. Capstone risolve gia' il displacement in
offset di modulo, quindi basta cercare `$<off>(pc)`.

Uso: python3 scripts/fw_xref.py <modulo> <sottostringa> [contesto]
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from m68k_dis import FW, disasm_module, find_module, load  # noqa: E402


def code_strings(data: bytes, m) -> list[tuple[int, str]]:
    seg = data[m.offset : m.offset + m.size]
    return [(mm.start(), mm.group().decode("latin1"))
            for mm in re.finditer(rb"[\x20-\x7e]{4,}\x00", seg)]


def main(argv: list[str]) -> int:
    if len(argv) < 3:
        print(__doc__)
        return 1
    modname, needle = argv[1], argv[2]
    ctx = int(argv[3]) if len(argv) > 3 else 12
    data, mods = load(FW)
    m = find_module(mods, modname)
    asm = disasm_module(data, m)
    lines = [(o, f"{o:06x}: {mn:<10} {ops}") for o, _s, mn, ops, _r in asm]
    idx = {o: i for i, (o, _t) in enumerate(lines)}
    pcref = re.compile(r"\$([0-9a-f]+)\(pc\)")
    targets: list[tuple[int, int]] = []  # (target, instruction offset)
    for o, t in lines:
        mm = pcref.search(t)
        if mm:
            targets.append((int(mm.group(1), 16), o))
    for off, s in code_strings(data, m):
        s = s.rstrip("\x00")
        if needle not in s:
            continue
        lo, hi = off, off + len(s) + 1
        refs = sorted({o for tgt, o in targets if lo <= tgt <= hi})
        print(f"\n=== {s!r} @ {off:#x}  refs={[hex(r) for r in refs]}")
        for r in refs:
            i = idx[r]
            for _o, t in lines[max(0, i - ctx) : i + ctx]:
                print("   ", t)
            print("    ---")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
