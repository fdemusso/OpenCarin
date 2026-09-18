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
T_REC_S13 = 0x4C        # record sezione 13 (DB-REL >= 21)
T_REC_S14 = 0x59        # record sezione 14 (DB-REL >= 23), indice dei nomi

# --- indici RECORD_SIZE_TABLE specifici di BLOCK_TYPE 0x0E -------------------
T_PROLOG_0E = 0x2B      # lunghezza del prologo (48 = 0x30)
T_REC_S0_0E = 0x2D      # record sezione 0 (8 byte: ">HBBHH")
T_REC_S1_0E = 0x41      # record sezione 1 (6 byte)
T_REC_S2_0E = 0x42      # record sezione 2 (24 byte; metà ancora grezza, metà delta)


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
    pb: dict[str, int] = field(default_factory=dict)
    dbrel: int = 34
    subrel: int = 9                 # LAYOUT[+2], sceglie larghezze di campo
    cache_s7: int = 1               # pbp: -0x7146(a6)
    cache_s2: int = 1               # pbp: -0x7144(a6)

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


def _walk(ctx: Cf1Context, idx: int, recsize: int):
    """Itera (cur, prev, first) sui record di una sezione."""
    e = ctx.entry(idx)
    cur, end, prev = e.off, e.off + e.count * recsize, -1
    while cur < end:
        yield cur, prev, cur == e.off
        prev, cur = cur, cur + recsize


def dec_a14(ctx: Cf1Context, idx: int) -> None:
    """Passata DB-REL 20 delle sezioni 0/1/2 (db_pub+0x2f30/0x30dc/0x3270).

    Per la sezione 0 i due campi condizionali vengono letti e **scartati**:
    il flusso li contiene ancora per i lettori piu' vecchi, ma i valori validi
    arrivano dalle passate 0x15/0x17.
    """
    pb = ctx.ptrbits
    rec = ctx.T(T_REC_S0)
    for cur, prev, _first in _walk(ctx, idx, rec):
        if ctx.g(1):
            v2, v4 = ctx.g(pb), ctx.g(pb - 1) << 1
            if idx != 0:
                ctx.w(cur + 2, v2)
                ctx.w(cur + 4, v4)
        elif idx != 0 and prev >= 0:
            ctx.w(cur + 2, ctx.rw(prev + 2))
            ctx.w(cur + 4, ctx.rw(prev + 4))
        ctx.w(cur + 0, ctx.g(pb))


def dec_a15_s0(ctx: Cf1Context) -> None:
    """Passata DB-REL 21 della sezione 0 (db_pub+0x3010)."""
    for cur, prev, _first in _walk(ctx, 0, ctx.T(T_REC_S0)):
        if ctx.g(1):
            ctx.w(cur + 2, ctx.g(16))
        elif prev >= 0:
            ctx.w(cur + 2, ctx.rw(prev + 2))


def dec_a17_s0(ctx: Cf1Context) -> None:
    """Passata DB-REL 23 della sezione 0 (db_pub+0x308c)."""
    for cur, _prev, _first in _walk(ctx, 0, ctx.T(T_REC_S0)):
        ctx.w(cur + 4, ctx.g(ctx.ptrbits - 1) << 1)


def dec_a17_s1(ctx: Cf1Context) -> None:
    """Passata DB-REL 23 della sezione 1 (db_pub+0x31dc): due offset assoluti."""
    pb = ctx.ptrbits
    for cur, _prev, _first in _walk(ctx, 1, ctx.T(T_REC_S0)):
        ctx.w(cur + 6, ctx.g(pb - 1) << 1)
        ctx.w(cur + 8, ctx.g(pb - 1) << 1)


def dec_a17_s2(ctx: Cf1Context) -> None:
    """Passata DB-REL 23 della sezione 2 (db_pub+0x3394): delta appiccicoso.

    Due accumulatori indipendenti: il flag a 1 aggiorna il passo, il flag a 0
    riusa l'ultimo passo letto.
    """
    pb = ctx.ptrbits
    step = [0, 0]
    acc = [0, 0]
    for cur, _prev, _first in _walk(ctx, 2, ctx.T(T_REC_S0)):
        for k, off in enumerate((6, 8)):
            if ctx.g(1):
                step[k] = (ctx.g(pb - 1) << 1) & 0xFFFF
            acc[k] = (step[k] + acc[k]) & 0xFFFF
            ctx.w(cur + off, acc[k])


def dec_b(ctx: Cf1Context, kind: int) -> None:
    """db_pub+0x348c — sezione 4, record T[0x08], campi di coda a T[0x09].

    ``kind`` seleziona il gruppo di campi: 0x14 sono quelli gia' presenti in
    DB-REL 20 (piu' il record sentinella in coda), 0x15 il campo ``+0x16``
    aggiunto in DB-REL 21, che punta nella sezione 13.
    """
    e4 = ctx.entry(4)
    e2, e7, e10, e11, e12, e13 = (ctx.entry(i) for i in (2, 7, 10, 11, 12, 13))
    rec, tail = ctx.T(T_REC_S4), ctx.T(T_TAIL_S4)
    pb, pbits = ctx.ptrbits, ctx.pb
    start, end = e4.off, e4.off + e4.count * rec
    cur, prev = start, -1

    def ptr_group(at: int) -> None:
        ctx.w(at + 0x12, e10.off + ctx.g(pbits["s10"]) * ctx.T(T_REC_S10))
        ctx.w(at + 0x14, e12.off + ctx.g(pbits["s12"]) * ctx.T(T_REC_S12))
        ctx.w(at + tail + 4, e11.off + ctx.g(pbits["s11"]) * ctx.T(T_REC_S11))

    while cur < end:
        if kind == 0x14:
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
                ctx.cache_s7 = e7.off + ctx.g(pbits["s7"]) * ctx.T(T_REC_S7)
            ctx.w(cur + 0x04, ctx.cache_s7)
            for off in (0x06, 0x08):
                t = ctx.g(pbits["s4"])
                ctx.w(cur + off, 0 if t == e4.count else e4.off + t * rec)
            width = 16 if ctx.g(1) else ctx.widths[0]
            ctx.w(cur + 0x0C, ctx.g(width))
            ctx.b(cur + 0x0E, ctx.g(8))
            ctx.b(cur + 0x0F, ctx.g(8))
            if ctx.g(1):
                ctx.cache_s2 = e2.off + ctx.g(pbits["s2"]) * ctx.T(T_REC_S0)
            ctx.w(cur + tail + 0, ctx.cache_s2)
        elif kind == 0x15:
            if ctx.g(1):
                ctx.w(cur + 0x16, e13.off + ctx.g(pbits["s13"]) * ctx.T(T_REC_S13))
            elif prev >= 0:
                ctx.w(cur + 0x16, ctx.rw(prev + 0x16))
        prev, cur = cur, cur + rec

    if kind != 0x14:
        return
    # record sentinella in coda (blueprint 9.5: la sezione ha count+1 record)
    if ctx.g(1):
        ptr_group(cur)
    elif prev >= 0:
        ctx.w(cur + 0x12, ctx.rw(prev + 0x12))
        ctx.w(cur + 0x14, ctx.rw(prev + 0x14))
        ctx.w(cur + tail + 4, ctx.rw(prev + tail + 4))
    if ctx.g(1):
        ctx.cache_s7 = e7.off + ctx.g(pbits["s7"]) * ctx.T(T_REC_S7)
    ctx.w(cur + 0x04, ctx.cache_s7)


def _dec_xy(ctx: Cf1Context, idx: int, recsize: int, extra) -> None:
    """Corpo comune di dec_C (0x3ad4) e dec_D (0x3bfa)."""
    e4 = ctx.entry(4)
    for cur, prev, first in _walk(ctx, idx, recsize):
        if ctx.g(1):
            ctx.b(cur + 6, ctx.g(8))
            ctx.b(cur + 7, ctx.g(3))
        elif prev >= 0:
            ctx.b(cur + 6, ctx.dst[prev + 6])
            ctx.b(cur + 7, ctx.dst[prev + 7])
        if first:
            ctx.w(cur + 0, ctx.g(16))
            ctx.w(cur + 2, ctx.g(16))
        else:
            ctx.w(cur + 0, _delta(ctx, ctx.rw(prev + 0)))
            ctx.w(cur + 2, _delta(ctx, ctx.rw(prev + 2)))
        ctx.w(cur + 4, e4.off + ctx.g(ctx.pb["s4"]) * ctx.T(T_REC_S4))
        if extra is not None:
            extra(ctx, cur)


def dec_c(ctx: Cf1Context) -> None:
    """pbp+0x3ad4 — sezione 5, record T[0x10]."""
    _dec_xy(ctx, 5, ctx.T(T_REC_S5), None)


def dec_d(ctx: Cf1Context) -> None:
    """pbp+0x3bfa — sezione 6, record T[0x06], con due campi in piu'."""
    off5 = ctx.T(T_REC_S5)

    def extra(c: Cf1Context, cur: int) -> None:
        c.l(cur + off5, c.g(32))
        # db_pub+0x4604: la larghezza del campo successivo dipende dalla
        # sotto-revisione del formato (LAYOUT[+2]), non dai dati
        c.w(cur + off5 + 4, c.g(16 if c.subrel >= 9 else 14))

    _dec_xy(ctx, 6, ctx.T(T_REC_S6), extra)


def dec_e(ctx: Cf1Context) -> None:
    """pbp+0x3d3e — sezione 7, record T[0x0c]."""
    for cur, prev, first in _walk(ctx, 7, ctx.T(T_REC_S7)):
        if first:
            ctx.w(cur + 0, ctx.g(16))
            ctx.w(cur + 2, ctx.g(16))
        else:
            ctx.w(cur + 0, _delta(ctx, ctx.rw(prev + 0)))
            ctx.w(cur + 2, _delta(ctx, ctx.rw(prev + 2)))
        ctx.b(cur + 4, ctx.g(3))


def dec_f(ctx: Cf1Context) -> None:
    """pbp+0x3e1c — sezione 11, record T[0x13]."""
    pb = ctx.ptrbits
    for cur, _prev, _first in _walk(ctx, 11, ctx.T(T_REC_S11)):
        ctx.w(cur + 0, ctx.g(pb))
        ctx.w(cur + 2, ctx.g(pb))
        ctx.w(cur + 4, ctx.g(1))


def dec_s13(ctx: Cf1Context) -> None:
    """db_pub+0x4a2c — sezione 13 (DB-REL 21), record T[0x4c]."""
    for cur, _prev, _first in _walk(ctx, 13, ctx.T(T_REC_S13)):
        ctx.l(cur + 0, ctx.g(32))
        ctx.w(cur + 4, ctx.g(ctx.ptrbits))
        ctx.b(cur + 6, ctx.g(8))
        ctx.b(cur + 7, ctx.g(8))


def dec_s14(ctx: Cf1Context) -> None:
    """db_pub+0x4b14 — sezione 14 (DB-REL 23), record T[0x59].

    Indice dei nomi: ``{u16 offset nel blob di testo, u8 lunghezza, u8 tipo}``,
    ogni campo con il proprio bit di ereditarieta' dal record precedente.
    """
    pb = ctx.ptrbits
    for cur, prev, _first in _walk(ctx, 14, ctx.T(T_REC_S14)):
        if ctx.g(1):
            ctx.w(cur + 0, ctx.g(pb))
        elif prev >= 0:
            ctx.w(cur + 0, ctx.rw(prev + 0))
        if ctx.g(1):
            ctx.b(cur + 2, ctx.g(8))
        elif prev >= 0:
            ctx.b(cur + 2, ctx.dst[prev + 2])
        if ctx.g(1):
            ctx.b(cur + 3, ctx.g(5))
        elif prev >= 0:
            ctx.b(cur + 3, ctx.dst[prev + 3])


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
    """db_pub+0x3d04 — decoder del BLOCK_TYPE 0x00.

    Il flusso e' organizzato in passate: ogni passata percorre di nuovo le
    sezioni leggendo il gruppo di campi introdotto da una certa revisione del
    formato (0x14 = DB-REL 20, 0x15 = 21, 0x17 = 23). Le passate oltre la
    DB-REL del disco non esistono nel flusso e vanno saltate.
    """
    ctx.copy_raw(0, ctx.T(T_PROLOG))
    ent = ctx.entry
    ctx.pb = {
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

    # --- passata 0x14 (DB-REL 20) -----------------------------------------
    for idx in (0, 1, 2):
        dec_a14(ctx, idx)
    dec_b(ctx, 0x14)
    dec_c(ctx)
    dec_d(ctx)
    dec_e(ctx)
    if ent(11).count:
        dec_f(ctx)
    dec_text(ctx)

    if ctx.dbrel < 0x15:
        return
    # --- passata 0x15 (DB-REL 21) -----------------------------------------
    ctx.pb["s13"] = bits_needed(ent(13).count + 1)
    dec_a15_s0(ctx)
    dec_b(ctx, 0x15)
    dec_s13(ctx)

    if ctx.dbrel < 0x17:
        return
    # --- passata 0x17 (DB-REL 23) -----------------------------------------
    dec_s14(ctx)
    dec_a17_s2(ctx)
    dec_a17_s1(ctx)
    dec_a17_s0(ctx)
    if ctx.g(1):
        dec_text(ctx)
    if ctx.g(1):
        dec_text(ctx)


def _dec_0e_s0(ctx: Cf1Context, e1: Entry, e2: Entry) -> None:
    """pbp+0x40b0 — sezione 0 del tipo 0x0E (nodi/segmenti).

    Verificato empiricamente su DB-REL 34 (0 S2-ptr errati su 1143 record S1):
      getbits(ptrbits)           -> A        [+0 u16]
      getbits(2)                 -> FLAGS lo [+2 bits 0-1]  (NB: annot. asm "$49e8=getbits(4)" errata)
      getbits(1) << 4            -> FLAGS hi [+2 bit 4]
      getbits(1)                 -> inherit bit
        if 1:  getbits(3) -> B [+3 u8],  getbits(ptrbits) -> C [+4 u16]
        if 0:  eredita B e C dal record precedente
      getbits(bits_needed(e1.count)) -> D_idx
             D = e1.off + D_idx * T[0x41]  [+6 u16]
    """
    pb = ctx.ptrbits
    pb_s1 = bits_needed(e1.count)
    s1_rec = ctx.T(T_REC_S1_0E)

    for cur, prev, _first in _walk(ctx, 0, ctx.T(T_REC_S0_0E)):
        ctx.w(cur + 0, ctx.g(pb))                        # A
        flags_lo = ctx.g(2)
        flags_hi = ctx.g(1) << 4
        ctx.b(cur + 2, flags_lo | flags_hi)               # FLAGS
        if ctx.g(1):                                      # inherit=1: leggi B e C
            ctx.b(cur + 3, ctx.g(3))                      # B
            ctx.w(cur + 4, ctx.g(pb))                     # C
        elif prev >= 0:
            ctx.b(cur + 3, ctx.dst[prev + 3])             # eredita B
            ctx.w(cur + 4, ctx.rw(prev + 4))              # eredita C
        d_idx = ctx.g(pb_s1)
        ctx.w(cur + 6, e1.off + d_idx * s1_rec)           # D -> sezione 1


def _dec_0e_s1(ctx: Cf1Context, e2: Entry) -> None:
    """Sezione 1 del tipo 0x0E (archi/attributi) — da docs/carindb/03-road-network.md §6.3.1.

    Record 6 byte (T[0x41]):
      +0 u16: puntatore -> sezione 2  = e2.off + getbits(pb_s2) * T[0x42]
      +2 u8:  count     = getbits(1) ? getbits(pb_s2) + 2 : 1
      +3 u8:  flag      = getbits(1)
      +4-5:   sconosciuti, lasciati a 0
    """
    pb_s2 = bits_needed(e2.count)
    s1_rec = ctx.T(T_REC_S1_0E)
    s2_rec = ctx.T(T_REC_S2_0E)

    for cur, _prev, _first in _walk(ctx, 1, s1_rec):
        s2_idx = ctx.g(pb_s2)
        ctx.w(cur + 0, e2.off + s2_idx * s2_rec)          # ptr -> sezione 2
        cnt = ctx.g(pb_s2) + 2 if ctx.g(1) else 1
        ctx.b(cur + 2, cnt)                                # count
        ctx.b(cur + 3, ctx.g(1))                           # flag


def decode_type0E(ctx: Cf1Context) -> None:
    """db_pub+0x1e98 — decoder BLOCK_TYPE 0x0E (parcella stradale, CF=1).

    Pre-bitstream (raw, prima di bits_init — traccia da decode_modugno.py +
    m68k pbp+0x4320):
      T[0x2b]  byte di prologo   (header + descriptor + bbox + service = 48)
      u16      count_N           (numero di ancore da 12 byte per la sezione 2)
      count_N * 12  byte         (tabella ancore raw per la sezione 2)
      1 byte   M_hi              (larghezza delta per la sezione 2, non usata qui)
      1 byte   M_lo              (larghezza val2  per la sezione 2, non usata qui)

    Bitstream MSB-first (dopo bits_init):
      Sezione 0: nodi/segmenti     (_dec_0e_s0)
      Sezione 1: archi/attributi   (_dec_0e_s1)

    Sezione 2 (decode delta delle coordinate geometriche): fuori scope.
    Le struct da 12 byte nel pre-header sono ancore di riferimento, non
    record di sezione 2 diretti; il decode delta avviene nel bitstream e
    non viene implementato qui.
    """
    ctx.copy_raw(0, ctx.T(T_PROLOG_0E))             # prologo
    n_anc = struct.unpack_from(">H", ctx.copy_raw(-1, 2))[0]   # count_N
    ctx.copy_raw(-1, n_anc * 12)                     # tabella ancore (non usata)
    ctx.copy_raw(-1, 2)                              # M_hi, M_lo (non usati)

    e1 = ctx.entry(1)
    e2 = ctx.entry(2)

    ctx.bits_init()

    _dec_0e_s0(ctx, e1, e2)
    _dec_0e_s1(ctx, e2)


DECODERS = {0x00: decode_type00, 0x0E: decode_type0E}


def decode_block(raw: bytes, table: dict[int, int], dbrel: int,
                 subrel: int = 9, sector_size: int = SECTOR) -> bytes:
    """Decodifica un blocco CF=1. `raw` sono i byte su disco, header incluso."""
    btype = struct.unpack_from(">H", raw, 4)[0]
    cf, usize = raw[6], raw[7]
    if not cf & 1:
        raise Cf1Error(f"blocco non compresso (COMPRESSION_FLAG={cf})")
    if btype not in DECODERS:
        raise Cf1Error(f"BLOCK_TYPE {btype:#04x}: decoder non ancora portato")
    total = usize * sector_size
    ctx = Cf1Context(table=table, src=raw, dst=bytearray(total), dbrel=dbrel,
                     subrel=subrel)
    ctx.ptrbits = bits_needed(total)
    DECODERS[btype](ctx)
    ctx.dst[6] = 0
    ctx.dst[7] = 0
    return bytes(ctx.dst)
