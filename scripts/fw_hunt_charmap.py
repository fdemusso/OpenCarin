"""Cerca la charmap del decoder di testo CF=1 in tutti i file della ISO firmware.

La tabella (``aestr\\0 dghilno`` + accentate Latin-1) e' la firma piu' specifica
del codec: se un firmware la contiene, contiene anche il decoder CF=1.

Uso: python3 scripts/fw_hunt_charmap.py [iso] [--extract DIR]
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from carin.parser.iso import IsoImage  # noqa: E402

ISO = "dataset/NAV_SW(v32).iso"
SIGS = {
    "charmap": bytes.fromhex("61657374720020646768696c6e6f"),
    "accents": bytes.fromhex("e0e1e2e3e4e5e7e8e9eaebecedeeef"),
    "header-fault": b"header-fault",
    "DB-REL": b"DB-REL",
    "Invalid blnr": b"Invalid blnr",
}
CHUNK = 1 << 22


def scan(image: IsoImage, path: str) -> dict[str, list[int]]:
    f = image.files[path]
    hits: dict[str, list[int]] = {}
    pos, tail = 0, b""
    while pos < f.size:
        buf = tail + image.read(f, pos, min(CHUNK, f.size - pos))
        origin = pos - len(tail)
        for name, sig in SIGS.items():
            i = buf.find(sig)
            while i >= 0:
                hits.setdefault(name, []).append(origin + i)
                i = buf.find(sig, i + 1)
        pos += CHUNK
        tail = buf[-64:]
    return hits


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("iso", nargs="?", default=ISO)
    ap.add_argument("--extract", default=None)
    args = ap.parse_args(argv[1:])

    image = IsoImage(args.iso)
    found = []
    for path, f in sorted(image.files.items(), key=lambda kv: -kv[1].size):
        if f.size < 4096:
            continue
        hits = scan(image, path)
        if not hits:
            continue
        marks = " ".join(f"{k}x{len(v)}@{hex(v[0])}" for k, v in hits.items())
        print(f"{f.size:>10} {path}  ->  {marks}")
        if "charmap" in hits:
            found.append(path)

    if args.extract and found:
        out = Path(args.extract)
        out.mkdir(parents=True, exist_ok=True)
        for path in found:
            f = image.files[path]
            dest = out / path.strip("/").replace("/", "_")
            with open(dest, "wb") as fh:
                pos = 0
                while pos < f.size:
                    fh.write(image.read(f, pos, min(CHUNK, f.size - pos)))
                    pos += CHUNK
            print(f"estratto {dest}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
