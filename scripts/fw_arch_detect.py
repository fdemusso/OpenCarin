"""Indovina l'architettura del codice di un modulo provando piu' disassemblatori.

Punteggio = frazione di byte coperti da istruzioni valide in run consecutivi
lunghi, partendo da vari offset.

Uso: python3 scripts/fw_arch_detect.py <file> [offset] [lunghezza]
"""

from __future__ import annotations

import sys

import capstone

CANDIDATES = [
    ("m68k-040", capstone.CS_ARCH_M68K, capstone.CS_MODE_M68K_040),
    ("sh4-be", capstone.CS_ARCH_SH, capstone.CS_MODE_SH4A | capstone.CS_MODE_BIG_ENDIAN),
    ("sh4-le", capstone.CS_ARCH_SH, capstone.CS_MODE_SH4A | capstone.CS_MODE_LITTLE_ENDIAN),
    ("sh3-be", capstone.CS_ARCH_SH, capstone.CS_MODE_SH3 | capstone.CS_MODE_BIG_ENDIAN),
    ("arm-le", capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM),
    ("arm-be", capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM | capstone.CS_MODE_BIG_ENDIAN),
    ("ppc-be", capstone.CS_ARCH_PPC, capstone.CS_MODE_32 | capstone.CS_MODE_BIG_ENDIAN),
    ("mips-be", capstone.CS_ARCH_MIPS, capstone.CS_MODE_MIPS32 | capstone.CS_MODE_BIG_ENDIAN),
    ("x86-32", capstone.CS_ARCH_X86, capstone.CS_MODE_32),
]


def score(data: bytes, arch: int, mode: int) -> tuple[float, int]:
    try:
        md = capstone.Cs(arch, mode)
    except capstone.CsError:
        return 0.0, 0
    md.detail = False
    covered = 0
    best_run = 0
    pos = 0
    run = 0
    while pos < len(data):
        got = None
        for ins in md.disasm(data[pos : pos + 32], pos, count=1):
            got = ins
            break
        if got is None or got.mnemonic in (".byte", "invalid"):
            run = 0
            pos += 2
            continue
        covered += got.size
        run += 1
        best_run = max(best_run, run)
        pos += got.size
    return covered / max(len(data), 1), best_run


def main(argv: list[str]) -> int:
    path = argv[1]
    off = int(argv[2], 0) if len(argv) > 2 else 0
    length = int(argv[3], 0) if len(argv) > 3 else 0x4000
    data = open(path, "rb").read()[off : off + length]
    rows = []
    for name, arch, mode in CANDIDATES:
        cov, run = score(data, arch, mode)
        rows.append((run, cov, name))
    rows.sort(reverse=True)
    for run, cov, name in rows:
        print(f"{name:<10} run_max={run:<6} copertura={cov:.3f}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
