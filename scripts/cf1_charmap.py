"""Estrae la tabella dei caratteri usata dal decoder di testo CF=1.

``pbp+0x4862`` decodifica il blob dei nomi con un codice a prefisso di 2 bit:
prefisso 00 -> indice a 1 bit nella tabella a -0x6bb0(a6)
prefisso 01 -> indice a 2 bit a -0x6bae(a6)
prefisso 10 -> indice a 3 bit a -0x6baa(a6)
prefisso 11 -> valore a 7 bit: >0x26 carattere letterale, 0x1c..0x26 voce del
               dizionario locale al blocco, <=0x1b indice a -0x6ba2(a6)

Le quattro basi sono contigue: una sola tabella di 42 byte all'offset dati 0x1450,
che sta dentro l'unico blocco IData del modulo (dest 0x1420, 0xe4 byte).
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from m68k_dis import FW, find_module, load  # noqa: E402
from os9_data import A6_BIAS, idata_blocks  # noqa: E402

CHARMAP_DATA_OFF = A6_BIAS - 0x6BB0  # 0x1450
CHARMAP_LEN = 0x2A


def charmap() -> bytes:
    data, mods = load(FW)
    m = find_module(mods, "pbp")
    for dest, size, blob in idata_blocks(data, m):
        if dest <= CHARMAP_DATA_OFF < dest + size:
            start = CHARMAP_DATA_OFF - dest
            return blob[start : start + CHARMAP_LEN]
    raise SystemExit("charmap non trovata nell'IData di pbp")


def main() -> int:
    cm = charmap()
    print("bytes:", cm.hex())
    print("latin1:", repr(cm.decode("latin1")))
    print("\n1 bit  (idx 0..1)   :", [chr(c) for c in cm[0:2]])
    print("2 bit  (idx 0..3)   :", [chr(c) for c in cm[2:6]])
    print("3 bit  (idx 0..7)   :", [chr(c) for c in cm[6:14]])
    print("7 bit  (idx 0..0x1b):", [chr(c) for c in cm[14:14 + 0x1C]])
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
