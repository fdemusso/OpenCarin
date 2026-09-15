"""Stampa una funzione MIPS con i target di chiamata gia' risolti.

Le chiamate PIC sono ``lui $at,0 ; addiu $at,$at,IMM ; ... ; addu $at,$at,$fp ;
jalr $at`` (il compilatore puo' intercalare istruzioni), quindi il target di
modulo e' ``0x7ff0 + IMM``.

La struttura di layout e' puntata da ``-0x7900($gp)``; il campo all'offset X
corrisponde alla voce ``T[(X-8)/2]`` della RECORD_SIZE_TABLE del superblock.

Uso: python3 scripts/mips_func.py <modulo> <off> [n_istruzioni]
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from mips_dis import FP_BIAS, code_bounds, disasm_range, find_module, load  # noqa: E402

NAMES = {
    0x1444: "bits_needed",
    0x147C: "copy_raw",
    0x17B4: "bits_init",
    0x180C: "getbits",
    0x1AC8: "memcpy",
    0x2090: "dec_generic",
    0x1E98: "decode_type0E",
    0x2A7C: "decode_type14",
    0x3D04: "decode_type00",
    0x348C: "dec_B",
}
IMM_RE = re.compile(r"^\$at, \$at, (-?0x[0-9a-f]+|-?\d+)$")
LAYOUT_RE = re.compile(r"(-?0x[0-9a-f]+|\d+)\(\$t\d\)")


def annotate(ins, k: int) -> str:
    i = ins[k]
    if i.mnemonic == "addiu":
        mm = IMM_RE.match(i.op_str)
        if mm:
            tgt = (FP_BIAS + int(mm.group(1), 0)) & 0xFFFFFFFF
            return f"   ; -> {NAMES.get(tgt, hex(tgt))}"
    if i.mnemonic in ("lhu", "lh") and k >= 1:
        # campo della struttura di layout: risali al lw -0x7900($gp)
        for j in range(max(0, k - 4), k):
            if ins[j].mnemonic == "lw" and "-0x7900(" in ins[j].op_str:
                mm = LAYOUT_RE.search(i.op_str)
                if mm:
                    off = int(mm.group(1), 0)
                    if off >= 8:
                        return f"   ; T[{(off - 8) // 2:#04x}]"
    return ""


def main(argv: list[str]) -> int:
    if len(argv) < 3:
        print(__doc__)
        return 1
    modname = argv[1]
    start = int(argv[2], 0)
    n = int(argv[3], 0) if len(argv) > 3 else 80
    data, mods = load()
    m = find_module(mods, modname)
    _s, e = code_bounds(data, m)
    ins = disasm_range(data, m, start, min(e, start + n * 4))
    for k, i in enumerate(ins):
        print(f"{i.address:06x}: {i.bytes.hex():<10}{i.mnemonic:<9}{i.op_str}{annotate(ins, k)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
