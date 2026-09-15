"""Stringhe stampabili raggruppate per modulo OS-9.

Uso: python3 scripts/fw_strings.py <firmware> [nome_modulo ...]
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from os9_modules import enumerate_modules  # noqa: E402

FW = "build/fw/CC93__0560_nav_sw_load"


def main(argv: list[str]) -> int:
    path = argv[1] if len(argv) > 1 else FW
    want = set(argv[2:])
    data = open(path, "rb").read()
    for m in enumerate_modules(data):
        if want and m.name not in want:
            continue
        seg = data[m.offset : m.offset + m.size]
        hits = [(mm.start(), mm.group().decode("latin1")) for mm in re.finditer(rb"[\x20-\x7e]{5,}", seg)]
        print(f"=== {m.name} @{m.offset:#x} size={m.size:#x} idata={m.idata:#x} strings={len(hits)}")
        for off, s in hits:
            print(f"   +{off:06x} {s}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
