"""Codec CARINdb ``COMPRESSION_FLAG = 1``.

Non e' un codec a dizionario: e' un **impacchettamento a bit guidato dalla
struttura**. Ogni sezione del blocco ha un proprio decodificatore che ricostruisce
record a dimensione fissa leggendo campi di larghezza minima da un bitstream
MSB-first, e che trasforma gli indici di record in offset assoluti dentro il
blocco decompresso.

Origine: modulo OS-9/68K ``pbp`` ("physical block provider") del firmware
``_CC93__0560_nav_sw_load`` (CARIN CC-93), offset di modulo 0x58ed0.
Funzioni sorgente (offset relativi al modulo):

===========  =========================================================
 0x3660      ``uncompressed_sectors()``  -- bit 0 di header[6]
 0x3698      dispatch: se compresso -> init + switch su BLOCK_TYPE
 0x4798      ``init()``   PTRBITS = bits_needed(usize * SECTOR)
 0x47da      ``copy_raw(dst, n)``
 0x4800      ``copy_section(entry, recsize, plus1)``
 0x49a8      ``bits_init()``  azzera la posizione di bit
 0x49bc      ``getbits(n)``   -- BFEXTU (a0){bitpos:n}
 0x4a68      ``bits_needed(n)``
 0x3ea0      decoder BLOCK_TYPE 0x00
 0x375e      ``dec_A``  sezioni 0,1,2
 0x37e4      ``dec_B``  sezione 4
 0x3ad4      ``dec_C``  sezione 5
 0x3bfa      ``dec_D``  sezione 6
 0x3d3e      ``dec_E``  sezione 7
 0x3e1c      ``dec_F``  sezione 11
 0x4862      ``dec_text``  blob dei nomi
===========  =========================================================

Le dimensioni di record e gli offset di prologo **non sono costanti**: stanno
nella ``RECORD_SIZE_TABLE`` del superblock (descrittore a +0x28, coppie
``{u16 id, u16 value}``), che il firmware carica sovrascrivendo i propri default
(vedi ``scripts/cf1_defaults.py``).  Questa implementazione legge la tabella dal
superblock del disco in esame.
"""

from __future__ import annotations

import struct
from dataclasses import dataclass, field

SECTOR = 512
HDR = 8

# --- indici nella RECORD_SIZE_TABLE usati dal decoder del tipo 0x00 ----------
T_DESC_BASE = 0x05      # offset del SECTION_DESCRIPTOR nel blocco (8)
T_REC_S6 = 0x06         # record sezione 6
T_REC_S4 = 0x08         # record sezione 4
T_TAIL_S4 = 0x09        # offset dei campi di coda nel record della sezione 4
T_PROLOG = 0x0B         # lunghezza del prologo in chiaro del tipo 0x00
T_REC_S7 = 0x0C         # record sezione 7
T_REC_S9 = 0x0F         # record sezione 9   (copiata verbatim)
T_REC_S5 = 0x10         # record sezione 5
T_REC_S3 = 0x12         # record sezione 3   (copiata verbatim, +1 record)
T_REC_S11 = 0x13        # record sezione 11
T_REC_S10 = 0x14        # record sezione 10  (copiata verbatim)
T_REC_S12 = 0x15        # record sezione 12  (copiata verbatim)
T_REC_S0 = 0x40         # record sezioni 0,1,2


class Cf1Error(RuntimeError):
    pass


def bits_needed(n: int) -> int:
    """pbp+0x4a68 — numero di bit per rappresentare 0..n-1, aritmetica a 16 bit."""
    v = n & 0xFFFF
    if v == 1:
        return 1
    v = (v - 1) & 0xFFFF
    out = 0
    while v:
        v >>= 1
        out += 1
    return out


class BitReader:
    """Lettore MSB-first equivalente a ``BFEXTU (aN){offset:width}``."""

    def __init__(self, data: bytes, base: int):
        self.data = data
        self.base = base
        self.pos = 0

    def get(self, width: int) -> int:
        if width <= 0:
            return 0
        start = self.pos
        self.pos += width
        out = 0
        for i in range(start, start + width):
            byte = self.base + (i >> 3)
            bit = 0
            if byte < len(self.data):
                bit = (self.data[byte] >> (7 - (i & 7))) & 1
            out = (out << 1) | bit
        return out

    @property
    def byte_pos(self) -> int:
        return self.base + (self.pos + 7) // 8


@dataclass
class Entry:
    off: int
    count: int


@dataclass
class Cf1Context:
    table: dict[int, int]
    src: bytes
    dst: bytearray
    cursor: int = 0                 # pbp: -0x7108(a6), posizione di lettura raw
    ptrbits: int = 0                # pbp: -0x710c(a6)
    widths: bytes = b"\x00\x00"     # pbp: -0x7142(a6), due byte letti in chiaro
    bits: BitReader | None = None
    pb: list[int] = field(default_factory=lambda: [0] * 6)

    # ---- primitive ---------------------------------------------------------
    def T(self, idx: int) -> int:
        try:
            return self.table[idx]
        except KeyError as exc:  # pragma: no cover - diagnostica
            raise Cf1Error(f"RECORD_SIZE_TABLE priva della voce {idx:#x}") from exc

    def copy_raw(self, dst_off: int, n: int) -> bytes:
        chunk = self.src[self.cursor : self.cursor + n]
        if len(chunk) < n:
            raise Cf1Error(f"stream troncato: servono {n} byte a {self.cursor}")
        if dst_off >= 0:
            self.dst[dst_off : dst_off + n] = chunk
        self.cursor += n
        return chunk

    def entry(self, idx: int) -> Entry:
        base = self.T(T_DESC_BASE) + 4 * idx
        off, count = struct.unpack_from(">HH", self.dst, base)
        return Entry(off, count)

    def copy_section(self, idx: int, recsize: int, plus1: bool) -> None:
        e = self.entry(idx)
        n = e.count * recsize + (recsize if plus1 else 0)
        self.copy_raw(e.off, n)

    def bits_init(self) -> None:
        self.bits = BitReader(self.src, self.cursor)

    def g(self, width: int) -> int:
        assert self.bits is not None
        return self.bits.get(width)

    # ---- accesso ai record -------------------------------------------------
    def w(self, off: int, val: int) -> None:
        struct.pack_into(">H", self.dst, off, val & 0xFFFF)

    def rw(self, off: int) -> int:
        return struct.unpack_from(">H", self.dst, off)[0]

    def b(self, off: int, val: int) -> None:
        self.dst[off] = val & 0xFF

    def l(self, off: int, val: int) -> None:  # noqa: E743
        struct.pack_into(">I", self.dst, off, val & 0xFFFFFFFF)


# tabella dei caratteri del decoder di testo (pbp IData, offset dati 0x1450)
CHARMAP = bytes.fromhex(
    "61657374720020646768696c6e6f"
    "e0e1e2e3e4e5e7e8e9eaebecedeeeff1f2f3f4f5f6f8f9fafbfcfdac"
)


def _delta(ctx: Cf1Context, prev_val: int) -> int:
    """Codifica delta comune a dec_C / dec_D / dec_E (pbp 0x3b42 e gemelle)."""
    width = ctx.widths[1]
    if ctx.g(1):
        if ctx.g(1):
            return ctx.g(16)
        return (prev_val - ctx.g(width)) & 0xFFFF
    return (prev_val + ctx.g(width)) & 0xFFFF


def dec_a(ctx: Cf1Context, idx: int, pb_s2: int) -> None:
    """pbp+0x375e — sezioni 0, 1, 2. Record T[0x40]."""
    e = ctx.entry(idx)
    rec = ctx.T(T_REC_S0)
    cur, end, prev = e.off, e.off + e.count * rec, -1
    pb = ctx.ptrbits
    while cur < end:
        if ctx.g(1):
            ctx.w(cur + 2, ctx.g(pb))
            ctx.w(cur + 4, ctx.g(pb - 1) << 1)
        elif prev >= 0:
            ctx.w(cur + 2, ctx.rw(prev + 2))
            ctx.w(cur + 4, ctx.rw(prev + 4))
        ctx.w(cur + 0, ctx.g(pb))
        prev, cur = cur, cur + rec
    del pb_s2


def dec_b(ctx: Cf1Context, pbits: dict[str, int]) -> None:
    """pbp+0x37e4 — sezione 4, record T[0x08], campi di coda a T[0x09]."""
    e4 = ctx.entry(4)
    e2, e7, e10, e11, e12 = (ctx.entry(i) for i in (2, 7, 10, 11, 12))
    rec, tail = ctx.T(T_REC_S4), ctx.T(T_TAIL_S4)
    pb = ctx.ptrbits
    cache_s7, cache_s2 = 1, 1
    start, end = e4.off, e4.off + e4.count * rec
    cur, prev = start, -1

    def ptr_group(dst_base: int) -> None:
        ctx.w(dst_base + 0x12, e10.off + ctx.g(pbits["s10"]) * ctx.T(T_REC_S10))
        ctx.w(dst_base + 0x14, e12.off + ctx.g(pbits["s12"]) * ctx.T(T_REC_S12))
        ctx.w(dst_base + tail + 4, e11.off + ctx.g(pbits["s11"]) * ctx.T(T_REC_S11))

    while cur < end:
        if cur != start:
            ctx.dst[cur : cur + rec] = ctx.dst[prev : prev + rec]
        if ctx.g(1):
            ptr_group(cur)
        if ctx.g(1):
            ctx.b(cur + 0x0A, ctx.g(8))
            ctx.b(cur + 0x0B, ctx.g(8))
            ctx.b(cur + 0x10, ctx.g(8))
            ctx.b(cur + 0x11, ctx.g(8))
            ctx.w(cur + tail + 2, ctx.g(16))
        ctx.w(cur + 0x00, ctx.g(pb - 1) << 1)
        ctx.w(cur + 0x02, ctx.g(pb - 1) << 1)
        if ctx.g(1):
            cache_s7 = e7.off + ctx.g(pbits["s7"]) * ctx.T(T_REC_S7)
        ctx.w(cur + 0x04, cache_s7)
        for off in (0x06, 0x08):
            t = ctx.g(pbits["s4"])
            ctx.w(cur + off, 0 if t == e4.count else e4.off + t * rec)
        width = 16 if ctx.g(1) else ctx.widths[0]
        ctx.w(cur + 0x0C, ctx.g(width))
        ctx.b(cur + 0x0E, ctx.g(8))
        ctx.b(cur + 0x0F, ctx.g(8))
        if ctx.g(1):
            cache_s2 = e2.off + ctx.g(pbits["s2"]) * ctx.T(T_REC_S0)
        ctx.w(cur + tail + 0, cache_s2)
        prev, cur = cur, cur + rec

    # record sentinella in coda (blueprint 9.5: count+1 record)
    if ctx.g(1):
        ptr_group(cur)
    elif prev >= 0:
        ctx.w(cur + 0x12, ctx.rw(prev + 0x12))
        ctx.w(cur + 0x14, ctx.rw(prev + 0x14))
        ctx.w(cur + tail + 4, ctx.rw(prev + tail + 4))
    if ctx.g(1):
        cache_s7 = e7.off + ctx.g(pbits["s7"]) * ctx.T(T_REC_S7)
    ctx.w(cur + 0x04, cache_s7)


def _dec_xy(ctx: Cf1Context, idx: int, recsize: int, pb_s4: int, extra) -> None:
    """Corpo comune di dec_C (0x3ad4) e dec_D (0x3bfa)."""
    e = ctx.entry(idx)
    e4 = ctx.entry(4)
    start, end = e.off, e.off + e.count * recsize
    cur, prev = start, -1
    while cur < end:
        if ctx.g(1):
            ctx.b(cur + 6, ctx.g(8))
            ctx.b(cur + 7, ctx.g(3))
        elif prev >= 0:
            ctx.b(cur + 6, ctx.dst[prev + 6])
            ctx.b(cur + 7, ctx.dst[prev + 7])
        if cur == start:
            ctx.w(cur + 0, ctx.g(16))
            ctx.w(cur + 2, ctx.g(16))
        else:
            ctx.w(cur + 0, _delta(ctx, ctx.rw(prev + 0)))
            ctx.w(cur + 2, _delta(ctx, ctx.rw(prev + 2)))
        ctx.w(cur + 4, e4.off + ctx.g(pb_s4) * ctx.T(T_REC_S4))
        if extra is not None:
            extra(ctx, cur)
        prev, cur = cur, cur + recsize


def dec_c(ctx: Cf1Context, pb_s4: int) -> None:
    """pbp+0x3ad4 — sezione 5, record T[0x10]."""
    _dec_xy(ctx, 5, ctx.T(T_REC_S5), pb_s4, None)


def dec_d(ctx: Cf1Context, pb_s4: int) -> None:
    """pbp+0x3bfa — sezione 6, record T[0x06], con due campi in piu'."""
    off5 = ctx.T(T_REC_S5)

    def extra(c: Cf1Context, cur: int) -> None:
        c.l(cur + off5, c.g(32))
        c.w(cur + off5 + 4, c.g(14))

    _dec_xy(ctx, 6, ctx.T(T_REC_S6), pb_s4, extra)


def dec_e(ctx: Cf1Context) -> None:
    """pbp+0x3d3e — sezione 7, record T[0x0c]."""
    e = ctx.entry(7)
    rec = ctx.T(T_REC_S7)
    start, end = e.off, e.off + e.count * rec
    cur, prev = start, -1
    while cur < end:
        if cur == start:
            ctx.w(cur + 0, ctx.g(16))
            ctx.w(cur + 2, ctx.g(16))
        else:
            ctx.w(cur + 0, _delta(ctx, ctx.rw(prev + 0)))
            ctx.w(cur + 2, _delta(ctx, ctx.rw(prev + 2)))
        ctx.b(cur + 4, ctx.g(3))
        prev, cur = cur, cur + rec


def dec_f(ctx: Cf1Context) -> None:
    """pbp+0x3e1c — sezione 11, record T[0x13]."""
    e = ctx.entry(11)
    rec = ctx.T(T_REC_S11)
    pb = ctx.ptrbits
    cur, end = e.off, e.off + e.count * rec
    while cur < end:
        ctx.w(cur + 0, ctx.g(pb))
        ctx.w(cur + 2, ctx.g(pb))
        ctx.w(cur + 4, ctx.g(1))
        cur += rec


def dec_text(ctx: Cf1Context) -> None:
    """pbp+0x4862 — blob dei nomi, codice a prefisso + dizionario di blocco."""
    pb = ctx.ptrbits
    start = ctx.g(pb)
    end = ctx.g(pb)
    if start == 0 and end == 0:
        return
    words = []
    for _ in range(6):
        n = ctx.g(5)
        words.append(bytes(ctx.g(7) for _ in range(n)))
    p = start
    while p <= end and p < len(ctx.dst):
        code = ctx.g(2)
        if code == 0:
            ctx.dst[p] = CHARMAP[ctx.g(1)]
        elif code == 1:
            ctx.dst[p] = CHARMAP[2 + ctx.g(2)]
        elif code == 2:
            ctx.dst[p] = CHARMAP[6 + ctx.g(3)]
        else:
            v = ctx.g(7)
            if v > 0x26:
                ctx.dst[p] = v
            elif v > 0x1B:
                w = words[v - 0x21]
                ctx.dst[p : p + len(w)] = w
                p += len(w) - 1
            else:
                ctx.dst[p] = CHARMAP[14 + v]
        p += 1


def decode_type00(ctx: Cf1Context) -> None:
    """pbp+0x3ea0 — decoder del BLOCK_TYPE 0x00."""
    ctx.copy_raw(0, ctx.T(T_PROLOG))
    ent = ctx.entry
    pbits = {
        "s2": bits_needed(ent(2).count),
        "s4": bits_needed(ent(4).count + 1),
        "s7": bits_needed(ent(7).count + 1),
        "s10": bits_needed(ent(10).count + 1),
        "s11": bits_needed(ent(11).count + 1),
        "s12": bits_needed(ent(12).count + 1),
    }
    ctx.widths = ctx.copy_raw(-1, 2)
    ctx.copy_section(3, ctx.T(T_REC_S3), plus1=True)
    ctx.copy_section(9, ctx.T(T_REC_S9), plus1=False)
    ctx.copy_section(10, ctx.T(T_REC_S10), plus1=False)
    if ent(12).count:
        ctx.copy_section(12, ctx.T(T_REC_S12), plus1=False)
    ctx.bits_init()
    for idx in (0, 1, 2):
        dec_a(ctx, idx, pbits["s2"])
    dec_b(ctx, pbits)
    dec_c(ctx, pbits["s4"])
    dec_d(ctx, pbits["s4"])
    dec_e(ctx)
    if ent(11).count:
        dec_f(ctx)
    dec_text(ctx)


DECODERS = {0x00: decode_type00}


def decode_block(raw: bytes, table: dict[int, int], sector_size: int = SECTOR) -> bytes:
    """Decodifica un blocco CF=1. `raw` sono i byte su disco, header incluso."""
    btype = struct.unpack_from(">H", raw, 4)[0]
    cf, usize = raw[6], raw[7]
    if not cf & 1:
        raise Cf1Error(f"blocco non compresso (COMPRESSION_FLAG={cf})")
    if btype not in DECODERS:
        raise Cf1Error(f"BLOCK_TYPE {btype:#04x}: decoder non ancora portato")
    total = usize * sector_size
    ctx = Cf1Context(table=table, src=raw, dst=bytearray(total))
    ctx.ptrbits = bits_needed(total)
    DECODERS[btype](ctx)
    ctx.dst[6] = 0
    ctx.dst[7] = 0
    return bytes(ctx.dst)
