"""Estrae da `NAV_SW(v32).iso` i firmware che contengono il codec CF=1.

Il criterio non e' il nome del file ma la firma del codec: la tabella dei
caratteri del decoder di testo (§9.11.1 del blueprint). Estrae anche il modulo
CARIN CC-93, che e' la variante m68k piu' leggibile.

Uso: python3 scripts/extract_firmware.py [--out build/fw] [--iso ...]
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from carin.parser.iso import IsoImage  # noqa: E402

ISO = "dataset/NAV_SW(v32).iso"
CHARMAP = bytes.fromhex("61657374720020646768696c6e6f")
CHUNK = 1 << 22

# firmware sempre estratti, anche senza la firma: servono al confronto
ALWAYS = (
    "/CC93_/0560/nav_sw_load",
    "/Mk2C/0101/BMW/app_sw/usw_load",
    "/Mk3/0103/BMWC01S/app_sw/usw_load",
    "/PSH4/0101/BMWOCN/Nk.fli",
    "/PSH4/0101/BMWOCN/TmApp.fli",
)


def has_charmap(image: IsoImage, path: str) -> bool:
    f = image.files[path]
    pos, tail = 0, b""
    while pos < f.size:
        buf = tail + image.read(f, pos, min(CHUNK, f.size - pos))
        if CHARMAP in buf:
            return True
        pos += CHUNK
        tail = buf[-32:]
    return False


def dump(image: IsoImage, path: str, dest: Path) -> None:
    f = image.files[path]
    with open(dest, "wb") as fh:
        pos = 0
        while pos < f.size:
            fh.write(image.read(f, pos, min(CHUNK, f.size - pos)))
            pos += CHUNK


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--iso", default=ISO)
    ap.add_argument("--out", default="build/fw")
    args = ap.parse_args(argv[1:])

    image = IsoImage(args.iso)
    out = Path(args.out)
    out.mkdir(parents=True, exist_ok=True)

    wanted: list[str] = [p for p in ALWAYS if p in image.files]
    for path, f in sorted(image.files.items(), key=lambda kv: -kv[1].size):
        if f.size < 4096 or path in wanted:
            continue
        if has_charmap(image, path):
            wanted.append(path)

    for path in wanted:
        dest = out / path.strip("/").replace("/", "_")
        dump(image, path, dest)
        print(f"{image.files[path].size:>10}  {path}  ->  {dest}")
    print(f"\n{len(wanted)} firmware estratti in {out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
