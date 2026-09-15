"""Decodifica molti blocchi CF=1 di tipo 0x00 e correla i fallimenti.

Per ogni blocco stampa le caratteristiche che possono attivare rami diversi del
decoder (PTRBITS, conteggi delle sezioni opzionali) e se il blob dei nomi esce
leggibile — l'unico oracolo che vale.

Uso: python3 scripts/cf1_sweep.py [--limit N]
"""

from __future__ import annotations

import argparse
import pickle
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
sys.path.insert(0, str(Path(__file__).resolve().parent))

from carin.parser import cf1  # noqa: E402
from carin.parser.iso import CarinVolume, IsoImage  # noqa: E402
from cf1_super import layout_table  # noqa: E402

ISO = "dataset/NAV_DB_21708.ISO"
PKL = "build/cross_iso_type0.pkl"
PRINTABLE = set(range(0x61, 0x7B)) | {0x20, 0x2D, 0x27, 0x2E} | set(range(0xC0, 0xFF))


def text_score(out: bytes, lo: int) -> tuple[float, int]:
    """(frazione di byte plausibili, numero di lettere).

    Gli zeri contano come plausibili — il blob e' a stringhe NUL-terminate — ma
    da soli non provano nulla, quindi il numero di lettere e' riportato a parte:
    una regione mai scritta resta tutta a zero e va scartata.
    """
    span = out[lo:]
    nonzero = [c for c in span if c != 0]
    if not nonzero:
        return 0.0, 0
    good = sum(1 for c in nonzero if c in PRINTABLE)
    letters = sum(1 for c in nonzero if c in PRINTABLE and c != 0x20)
    return good / len(nonzero), letters


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=40)
    args = ap.parse_args(argv[1:])

    vol = CarinVolume(IsoImage(ISO))
    sb = vol.read_sectors(0, 2)
    table = layout_table(sb)
    dbrel = struct.unpack_from(">H", sb, 0x1A)[0]
    base = table[cf1.T_DESC_BASE]
    rec14 = table[cf1.T_REC_S14]

    cands = [v for v in pickle.load(open(PKL, "rb"))["old_map"].values() if v[2] == 1]
    print(f"{'settore':>9} {'usize':>5} {'pbits':>5} "
          f"{'e10':>4} {'e11':>4} {'e12':>4} {'e13':>4} {'e14':>4} {'plaus':>6} {'lett':>5}  esito")
    ok = 0
    done = 0
    for sector, _length, _cf in sorted(cands)[: args.limit * 3]:
        blk = vol.block(sector)
        if blk.type != 0x00 or blk.comp != 1:
            continue
        ents = [struct.unpack_from(">HH", blk.raw, base + 4 * i) for i in range(15)]
        pbits = cf1.bits_needed(blk.usize * 512)
        try:
            out = cf1.decode_block(blk.raw, table, dbrel)
            lo = ents[14][0] + ents[14][1] * rec14
            score, letters = text_score(out, lo)
            verdict = "OK" if score > 0.85 and letters >= 20 else "desync"
        except Exception as exc:  # noqa: BLE001
            score, letters, verdict = 0.0, 0, f"{type(exc).__name__}"
        ok += verdict == "OK"
        done += 1
        print(f"{sector:>9} {blk.usize:>5} {pbits:>5} "
              f"{ents[10][1]:>4} {ents[11][1]:>4} {ents[12][1]:>4} {ents[13][1]:>4} "
              f"{ents[14][1]:>4} {score:>6.2f} {letters:>5}  {verdict}")
        if done >= args.limit:
            break
    print(f"\n{ok}/{done} blocchi con blob dei nomi leggibile")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
