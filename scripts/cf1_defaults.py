"""Estrae la tabella di costanti di layout di default dal firmware CC-93.

Il modulo `pbp` inizializza a offset 0x33ea un array di 0x43 word (base a6-relativa
-0x71cc) con le dimensioni di record / offset di prologo del formato CARINdb.
La funzione a 0x3582 sovrascrive poi le voci con quelle dichiarate nel superblock
(descrittore a +0x28, coppie {u16 id, u16 value}).

Uso: python3 scripts/cf1_defaults.py
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from m68k_dis import FW, disasm_module, find_module, load  # noqa: E402

TABLE_BASE_DISP = 0x71CC  # -0x71cc(a6) == g_table[0]
TABLE_LEN = 0x43
INIT_START, INIT_END = 0x33EA, 0x3580

PAT = re.compile(r"#\$([0-9a-f]+), -\$([0-9a-f]+)\(a6\)")


def default_table() -> list[int | None]:
    data, mods = load(FW)
    m = find_module(mods, "pbp")
    tbl: list[int | None] = [None] * TABLE_LEN
    for off, _sz, mn, ops, _raw in disasm_module(data, m):
        if not (INIT_START <= off < INIT_END) or mn != "move.w":
            continue
        mm = PAT.search(ops)
        if not mm:
            continue
        val, disp = int(mm.group(1), 16), int(mm.group(2), 16)
        idx = (TABLE_BASE_DISP - disp) // 2
        if 0 <= idx < TABLE_LEN:
            tbl[idx] = val
    return tbl


def main() -> int:
    tbl = default_table()
    print("idx  val   (default DB-REL <= 17, firmware CC-93 0560)")
    for i, v in enumerate(tbl):
        if v is None:
            continue
        print(f"{i:#04x} {v:#06x}  {v}")
    missing = [i for i, v in enumerate(tbl) if v is None]
    print(f"\nnon inizializzate: {[hex(i) for i in missing]}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
