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

# --- indici RECORD_SIZE_TABLE specifici di BLOCK_TYPE 0x14/0x15/0x16 ---------
# Fonte: m68k pbp+0x46aa (comune ai tre tipi), formula T[idx] → -(0x71cc-2*idx)(a6)
T_PROLOG_141516 = 0x3D  # lunghezza prologo (pbp+0x46b6: move.w -$7152(a6))
T_REC_S1_141516 = 0x3A  # sezione 1 (geo, kind=0x25): pbp+0x4712: move.w -$7158(a6)
T_REC_S0_141516 = 0x3B  # sezione 0 (kind=0x24):      pbp+0x46f4: move.w -$7156(a6)
T_REC_S2_141516 = 0x3C  # sezione 2 (kind=0x26):      pbp+0x4732: move.w -$7154(a6)
T_S3_DISP_141516 = 0x3F # offset supplementare per selezione tipo sez.3: pbp+0x4754: move.w -$714e(a6)


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
    m_hi: int = 0                   # 0x0E: M_hi dal pre-header (→ decoded[7])
    m_lo: int = 0                   # 0x0E: M_lo dal pre-header (→ decoded[6])

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

    FLAGS semantics (working hypothesis, UNCONFIRMED — 563 CF=1 blocks / 218k records):
      bit4=0 -> bidirectional (0x00=67%, 0x01=5%, 0x02=1%)
      bit4=1 -> one-way forward / digitization direction (0x10=26%, 0x11=1%, 0x12=0.1%)
      bits[1:0]: access category  0=normal, 1=restricted/ramp, 2=non-motorised or ferry
      B (3-bit, getbits(3)): functional class 1..6; distribution B=1(43%),4(19%),5(15%),3(14%)
    Firmware (2026-09-20): can_traverse (rpmod+$4360) does NOT read FLAGS; it reads
      block[D+0x10/+0x11] which are always 0x00 for 0x0E → all arcs are traversable.
      FLAGS feeds cost calculation (rpmod+$6eae). Direction implicit in arc graph topology.
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


def _dec_0e_s2(ctx: Cf1Context, count_N: int, raw_12: bytes,
               M_hi: int, M_lo: int) -> None:
    """pbp+0x41c0 — sezione 2 del tipo 0x0E (geometria delta, T[0x42]=24 byte).

    Algoritmo bitstream (MSB-first, prosegue il bitstream di S0/S1):
      idx_N_bits = bits_needed(count_N)
      per ogni record:
        idx_N      = getbits(idx_N_bits)
        has_deltas = getbits(1)
        if has_deltas:
          per 4 campi: is_16=getbits(1); val=getbits(16 if is_16 else M_hi)
        else:
          4 x 0x7FFF  sentinella
        val1 = getbits(13) << 1
        val2 = getbits(M_lo)

    Output per record 24 byte (✅ VERIFIED 2026-09-19, oracle: pbp m68k write trace):
      +0   i32 x_anc        (anchor[idx_N] bytes 0-3, raw copy — memmove pbp+0x41d4)
      +4   i32 y_anc        (anchor[idx_N] bytes 4-7, raw copy — memmove pbp+0x41d4)
      +8   u16 raw_delta[0] (getbits(1)→is_16; getbits(16 if is_16 else M_hi))
      +10  u16 raw_delta[1]
      +12  u16 raw_delta[2]
      +14  u16 raw_delta[3]
      +16  i32 anchor_f2   (anchor[idx_N] bytes 8-11, raw copy — memmove pbp+0x41ee)
      +20  u16 val1 = getbits(13) << 1
      +22  u16 val2 = getbits(M_lo)
    """
    e2 = ctx.entry(2)
    idx_N_bits = bits_needed(count_N)
    s2_rec = ctx.T(T_REC_S2_0E)

    for i in range(e2.count):
        base = e2.off + i * s2_rec
        idx_N = ctx.g(idx_N_bits)

        if idx_N < count_N:
            anc = idx_N * 12
            ctx.dst[base:base + 8] = raw_12[anc:anc + 8]
            ctx.dst[base + 16:base + 20] = raw_12[anc + 8:anc + 12]

        if ctx.g(1):  # has_deltas
            raw_d = []
            for _ in range(4):
                is_16 = ctx.g(1)
                w = 16 if is_16 else M_hi
                raw_d.append(ctx.g(w))
        else:
            raw_d = [0x7FFF] * 4

        struct.pack_into(">HHHH", ctx.dst, base + 8, *raw_d)

        val1 = ctx.g(13) << 1
        val2 = ctx.g(M_lo)
        struct.pack_into(">HH", ctx.dst, base + 20, val1 & 0xFFFF, val2 & 0xFFFF)


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
      1 byte   M_hi              (larghezza delta per la sezione 2)
      1 byte   M_lo              (larghezza val2  per la sezione 2)

    Bitstream MSB-first (dopo bits_init):
      Sezione 0: nodi/segmenti     (_dec_0e_s0)
      Sezione 1: archi/attributi   (_dec_0e_s1)

    Sezione 2 (decode delta delle coordinate geometriche): _dec_0e_s2.
    """
    ctx.copy_raw(0, ctx.T(T_PROLOG_0E))
    count_N = struct.unpack_from(">H", ctx.copy_raw(-1, 2))[0]
    raw_12 = ctx.copy_raw(-1, count_N * 12)
    mhi_mlo = ctx.copy_raw(-1, 2)
    M_hi, M_lo = mhi_mlo[0], mhi_mlo[1]
    ctx.m_hi = M_hi
    ctx.m_lo = M_lo

    e1 = ctx.entry(1)
    e2 = ctx.entry(2)

    ctx.bits_init()

    _dec_0e_s0(ctx, e1, e2)
    _dec_0e_s1(ctx, e2)
    _dec_0e_s2(ctx, count_N, raw_12, M_hi, M_lo)


def _s3_rec_size(ctx: Cf1Context) -> int:
    """Dimensione record sezione 3: 8 (kind=0x0a) o 4 (kind=0x09).

    Fonte: m68k pbp+0x447c-0x4496 — eseguito all'ingresso di pbp+0x441a per
    ogni sezione.  Il test legge ctx[T[0x05] + T[0x3f] + 0x10] dal buffer
    già decodificato (prolog copiato).
    """
    off = ctx.T(T_DESC_BASE) + ctx.T(T_S3_DISP_141516) + 0x10
    if off + 2 <= len(ctx.dst):
        return 4 if struct.unpack_from(">H", ctx.dst, off)[0] != 0 else 8
    return 8


def _delta_s3(ctx: Cf1Context, prev: int, dw: int) -> int:
    """Delta a 3-vie per kind=0x09 (pbp+0x44da-0x4554, raw_byte[2] = dw).

    Codice bitstream:
      0  → prev + getbits(dw)
      10 → prev - getbits(dw)
      11 → getbits(16) (assoluto)
    """
    if ctx.g(1):
        if ctx.g(1):
            return ctx.g(16)
        return (prev - ctx.g(dw)) & 0xFFFF
    return (prev + ctx.g(dw)) & 0xFFFF


def _walk1(ctx: Cf1Context, idx: int, recsize: int):
    """Come _walk ma itera count+1 record (trace m68k: bls su entry.off + count*rec).

    Fonte: pbp+0x445c (add.w d4, $10(a7)) + $4696 (bls): loop si ferma
    quando d6 > entry.off + count*rec, quindi esegue count+1 corpi.
    Usato per kind=0x24/0x25/0x26 (non per 0x09/0x0a che usano count).
    """
    e = ctx.entry(idx)
    cur = e.off
    end = e.off + (e.count + 1) * recsize
    prev = -1
    while cur < end:
        yield cur, prev, cur == e.off
        prev, cur = cur, cur + recsize


def _dec_14_s0(ctx: Cf1Context) -> None:
    """kind=0x24 — sezione 0, T[0x3b] byte/record.

    Fonte: m68k pbp+0x455c-0x458f (verificato):
      getbits(7)         → +0 u8   (pbp+0x4566: bsr $4a10)
      getbits(1)         → +1 u8   (pbp+0x4570: bsr $49d4)
      getbits(PTRBITS-1) << 1 → +2 u16  (pbp+0x4582-0x458c)
    """
    pb = ctx.ptrbits
    rec = ctx.T(T_REC_S0_141516)
    for cur, _prev, _first in _walk1(ctx, 0, rec):
        ctx.b(cur + 0, ctx.g(7))
        ctx.b(cur + 1, ctx.g(1))
        ctx.w(cur + 2, ctx.g(pb - 1) << 1)


def _dec_14_s1(ctx: Cf1Context, raw4: bytes,
               ptrbits_s3: int, s3_rec: int) -> None:
    """kind=0x25 — sezione 1 geo, T[0x3a] byte/record.

    Fonte: m68k pbp+0x4594-0x4603 (verificato):
      getbits(PTRBITS)                        → +0  u16  NAME_PTR
      e3.off + getbits(ptrbits_s3)*s3_rec     → +2  u16  ptr sez.3
      flag=getbits(1); getbits(32 if flag else raw4[1]) → +4  u32
      getbits(32)                             → +8  i32  X assoluto  ✅ VERIFIED
      getbits(32)                             → +12 i32  Y assoluto  ✅ VERIFIED
    """
    pb = ctx.ptrbits
    e3_off = ctx.entry(3).off
    rec = ctx.T(T_REC_S1_141516)
    for cur, _prev, _first in _walk1(ctx, 1, rec):
        ctx.w(cur + 0, ctx.g(pb))
        s3_idx = ctx.g(ptrbits_s3)
        ctx.w(cur + 2, (e3_off + s3_idx * s3_rec) & 0xFFFF)
        width = 32 if ctx.g(1) else raw4[1]
        ctx.l(cur + 4, ctx.g(width))
        ctx.l(cur + 8, ctx.g(32))   # X
        ctx.l(cur + 12, ctx.g(32))  # Y


def _dec_14_s2(ctx: Cf1Context, raw4: bytes,
               ptrbits_s3: int, s3_rec: int) -> None:
    """kind=0x26 — sezione 2, T[0x3c] byte/record.

    Fonte: m68k pbp+0x4608-0x4657 (verificato):
      getbits(PTRBITS)                        → +0  u16
      e3.off + getbits(ptrbits_s3)*s3_rec     → +2  u16  ptr sez.3
      flag=getbits(1); getbits(32 if flag else raw4[0]) → +4  u32
    """
    pb = ctx.ptrbits
    e3_off = ctx.entry(3).off
    rec = ctx.T(T_REC_S2_141516)
    for cur, _prev, _first in _walk1(ctx, 2, rec):
        ctx.w(cur + 0, ctx.g(pb))
        s3_idx = ctx.g(ptrbits_s3)
        ctx.w(cur + 2, (e3_off + s3_idx * s3_rec) & 0xFFFF)
        width = 32 if ctx.g(1) else raw4[0]
        ctx.l(cur + 4, ctx.g(width))


def _dec_14_s3(ctx: Cf1Context, raw4: bytes, s3_rec: int) -> None:
    """Sezione 3 — kind=0x0a (8 byte/rec) o kind=0x09 (4 byte/rec, delta).

    kind=0x0a (pbp+0x44a2-0x44bf + 0x4654): count iterazioni
      getbits(32) → +0 i32 X,  getbits(32) → +4 i32 Y

    kind=0x09 (pbp+0x44c2-0x4557): count iterazioni
      primo record:  getbits(16) → +0 u16,  getbits(16) → +2 u16
      successivi: _delta_s3 con dw=raw4[2] per ciascun campo
    """
    e3 = ctx.entry(3)
    if s3_rec == 8:
        for cur, _prev, _first in _walk(ctx, 3, 8):
            ctx.l(cur + 0, ctx.g(32))
            ctx.l(cur + 4, ctx.g(32))
    else:
        dw = raw4[2]
        cur = e3.off
        end = e3.off + e3.count * 4
        prev = -1
        while cur < end:
            if prev < 0:
                v0 = ctx.g(16)
                v1 = ctx.g(16)
            else:
                v0 = _delta_s3(ctx, struct.unpack_from(">H", ctx.dst, prev)[0], dw)
                v1 = _delta_s3(ctx, struct.unpack_from(">H", ctx.dst, prev + 2)[0], dw)
            ctx.w(cur + 0, v0)
            ctx.w(cur + 2, v1)
            prev, cur = cur, cur + 4


def decode_type14_16(ctx: Cf1Context) -> None:
    """pbp+0x46aa — decoder BLOCK_TYPE 0x14/0x15/0x16 (CF=1).

    Tutti e tre i tipi usano la stessa funzione m68k (dispatch pbp+0x3698).

    Pre-bitstream (raw, prima di bits_init — traccia da pbp+0x46aa):
      T[0x3d]  byte di prologo   (header + descriptor + bbox)
      4 byte   raw4              (larghezze campo per le sezioni):
                 raw4[0]: larghezza campo UNKNOWN sezione 2   (pbp+0x464a)
                 raw4[1]: larghezza campo UNKNOWN sezione 1   (pbp+0x45dc)
                 raw4[2]: larghezza delta sezione 3 kind=0x09 (pbp+0x44f4)
                 raw4[3]: ruolo non confermato

    Bitstream MSB-first (dopo bits_init):
      sezione 0: kind=0x24, T[0x3b] byte/rec  (_dec_14_s0)
      sezione 1: kind=0x25, T[0x3a] byte/rec  (_dec_14_s1)
      sezione 2: kind=0x26, T[0x3c] byte/rec  (_dec_14_s2)
      sezione 3: kind=0x0a (8 b) o 0x09 (4 b) (_dec_14_s3)
      testo:     dec_text

    Template obbligatorio (fonte: m68k pbp+0x46aa, dbq/pbp.asm):

    Campo: S1+0  NAME_PTR
    Fonte: pbp+0x45a2 (getbits(PTRBITS) → move.w d0, (a0))
    Metodo di verifica: oracle_14_16.py — ptr in range testo
    Stato: UNCONFIRMED

    Campo: S1+2  ptr_s3
    Fonte: pbp+0x45bc-0x45ca (getbits(ptrbits_s3)*s3_rec + entry3.off)
    Metodo di verifica: oracle_14_16.py — ptr in bounds sezione 3
    Stato: UNCONFIRMED

    Campo: S1+4  UNKNOWN (u32)
    Fonte: pbp+0x45ce-0x45e8 (flag getbits(1); getbits(32 o raw4[1]))
    Metodo di verifica: —
    Stato: UNCONFIRMED

    Campo: S1+8  X assoluto (i32)
    Fonte: pbp+0x45ec (bsr.w $4a50 = getbits(32) → move.l d0, $8(a0))
    Metodo di verifica: oracle_14_16.py — range geografico EU 0/1958 bad su 10 blocchi
    Stato: VERIFIED (2026-09-19)

    Campo: S1+12 Y assoluto (i32)
    Fonte: pbp+0x45f8 (bsr.w $4a50 → move.l d0, $c(a0))
    Metodo di verifica: oracle_14_16.py — range geografico EU 0/1958 bad su 10 blocchi
    Stato: VERIFIED (2026-09-19)
    """
    ctx.copy_raw(0, ctx.T(T_PROLOG_141516))

    base_d = ctx.T(T_DESC_BASE)
    e3_count = struct.unpack_from(">H", ctx.dst, base_d + 14)[0]
    ptrbits_s3 = bits_needed(e3_count + 1)

    raw4 = ctx.copy_raw(-1, 4)
    s3_rec = _s3_rec_size(ctx)

    ctx.bits_init()

    _dec_14_s0(ctx)
    _dec_14_s1(ctx, raw4, ptrbits_s3, s3_rec)
    _dec_14_s2(ctx, raw4, ptrbits_s3, s3_rec)
    _dec_14_s3(ctx, raw4, s3_rec)
    dec_text(ctx)


DECODERS = {
    0x00: decode_type00,
    0x0E: decode_type0E,
    0x14: decode_type14_16,
    0x15: decode_type14_16,
    0x16: decode_type14_16,
}


class BitWriter:
    """MSB-first bit writer — inverse of BitReader (pbp+0x49bc BFEXTU convention)."""

    def __init__(self) -> None:
        self._buf = bytearray()
        self._pos = 0

    def put(self, width: int, value: int) -> None:
        if width <= 0:
            return
        for shift in range(width - 1, -1, -1):
            bit = (value >> shift) & 1
            byte_idx = self._pos >> 3
            bit_off  = 7 - (self._pos & 7)
            if byte_idx >= len(self._buf):
                self._buf.append(0)
            if bit:
                self._buf[byte_idx] |= 1 << bit_off
            self._pos += 1

    def to_bytes(self) -> bytes:
        return bytes(self._buf)


def encode_type0E(decoded: bytes, table: dict, dbrel: int) -> bytes:
    """Re-encode a decoded 0x0E block to CF=1 raw bytes.

    Round-trip guarantee: decode_block(encode_type0E(decoded, table, dbrel),
                                       table, dbrel) == decoded  (bytes [4:]).
    """
    prolog_size = table[T_PROLOG_0E]    # 48
    s0_rec  = table[T_REC_S0_0E]       # 8
    s1_rec  = table[T_REC_S1_0E]       # 6
    s2_rec  = table[T_REC_S2_0E]       # 24
    base_d  = table[T_DESC_BASE]        # offset of section descriptor in decoded

    total   = len(decoded)
    usize   = total // SECTOR
    ptrbits = bits_needed(total)

    e0_off, e0_cnt = struct.unpack_from(">HH", decoded, base_d + 0)
    e1_off, e1_cnt = struct.unpack_from(">HH", decoded, base_d + 4)
    e2_off, e2_cnt = struct.unpack_from(">HH", decoded, base_d + 8)

    # anchor table: unique 12-byte signatures in first-appearance order
    seen: dict[bytes, int] = {}
    anchors: list[bytes] = []
    for i in range(e2_cnt):
        b   = e2_off + i * s2_rec
        sig = bytes(decoded[b:b + 8]) + bytes(decoded[b + 16:b + 20])
        if sig not in seen:
            seen[sig] = len(anchors)
            anchors.append(sig)

    count_N    = len(anchors)
    raw_12     = b"".join(anchors)
    idx_N_bits = bits_needed(count_N) if count_N > 0 else 1

    # M_hi: min bits to cover all delta values in has_deltas=True records
    max_delta     = 0
    has_any_delta = False
    for i in range(e2_cnt):
        b      = e2_off + i * s2_rec
        deltas = struct.unpack_from(">HHHH", decoded, b + 8)
        if not all(d == 0x7FFF for d in deltas):
            has_any_delta = True
            for d in deltas:
                if d > max_delta:
                    max_delta = d
    # M_hi/M_lo: usa i valori del pre-header originale (decoded[7]/[6])
    # per preservare il round-trip; fallback al calcolo se byte è 0 (blocco non 0x0E).
    M_hi = decoded[7] if decoded[7] else (max(1, bits_needed(max_delta + 1)) if has_any_delta else 1)

    # M_lo: min bits to cover all val2 values
    max_val2 = 0
    for i in range(e2_cnt):
        b  = e2_off + i * s2_rec
        v2 = struct.unpack_from(">H", decoded, b + 22)[0]
        if v2 > max_val2:
            max_val2 = v2
    M_lo = decoded[6] if decoded[6] else max(1, bits_needed(max_val2 + 1))

    pb_s1 = bits_needed(e1_cnt)
    pb_s2 = bits_needed(e2_cnt)

    bw = BitWriter()

    # ── Section 0 (pbp+0x40b0 / 0x40fe) ─────────────────────────────────────
    prev_B: int = -1
    prev_C: int = -1
    for i in range(e0_cnt):
        b     = e0_off + i * s0_rec
        A     = struct.unpack_from(">H", decoded, b)[0]
        FLAGS = decoded[b + 2]
        B     = decoded[b + 3]
        C     = struct.unpack_from(">H", decoded, b + 4)[0]
        D     = struct.unpack_from(">H", decoded, b + 6)[0]
        d_idx = (D - e1_off) // s1_rec

        bw.put(ptrbits, A)
        bw.put(2, FLAGS & 0x03)
        bw.put(1, (FLAGS >> 4) & 1)

        # inherit=1 if B/C differ from prev (or first record with non-zero B/C)
        need_bc = (prev_B < 0 and (B != 0 or C != 0)) or \
                  (prev_B >= 0 and (B != prev_B or C != prev_C))
        bw.put(1, 1 if need_bc else 0)
        if need_bc:
            bw.put(3, B)
            bw.put(ptrbits, C)
        prev_B, prev_C = B, C

        bw.put(pb_s1, d_idx)

    # ── Section 1 (pbp+0x4168) ───────────────────────────────────────────────
    for i in range(e1_cnt):
        b      = e1_off + i * s1_rec
        ptr    = struct.unpack_from(">H", decoded, b)[0]
        span   = decoded[b + 2]
        flag   = decoded[b + 3]
        s2_idx = (ptr - e2_off) // s2_rec

        bw.put(pb_s2, s2_idx)
        if span > 1:
            bw.put(1, 1)
            bw.put(pb_s2, span - 2)
        else:
            bw.put(1, 0)
        bw.put(1, flag)

    # ── Section 2 (pbp+0x41c0) ───────────────────────────────────────────────
    for i in range(e2_cnt):
        b      = e2_off + i * s2_rec
        sig    = bytes(decoded[b:b + 8]) + bytes(decoded[b + 16:b + 20])
        idx_N  = seen[sig]
        deltas = struct.unpack_from(">HHHH", decoded, b + 8)
        val1   = struct.unpack_from(">H", decoded, b + 20)[0]
        val2   = struct.unpack_from(">H", decoded, b + 22)[0]

        bw.put(idx_N_bits, idx_N)

        has_deltas = not all(d == 0x7FFF for d in deltas)
        bw.put(1, 1 if has_deltas else 0)
        if has_deltas:
            thresh = (1 << M_hi) - 1
            for d in deltas:
                is_16 = 1 if d > thresh else 0
                bw.put(1, is_16)
                bw.put(16 if is_16 else M_hi, d)

        bw.put(13, val1 >> 1)
        bw.put(M_lo, val2)

    # ── assemble raw block ────────────────────────────────────────────────────
    prolog    = bytearray(decoded[:prolog_size])
    prolog[6] = 1       # CF=1
    prolog[7] = usize   # decompressed sectors

    pre_hdr   = struct.pack(">H", count_N) + raw_12 + bytes([M_hi, M_lo])
    bitstream = bw.to_bytes()

    payload = bytes(prolog) + pre_hdr + bitstream

    rem = len(payload) % SECTOR
    if rem:
        payload += b"\x00" * (SECTOR - rem)

    # fix block_id: preserve sector, update length-in-sectors
    old_bid = struct.unpack_from(">I", payload, 0)[0]
    sector  = old_bid >> 8
    n_secs  = len(payload) // SECTOR
    return struct.pack(">I", (sector << 8) | (n_secs & 0xFF)) + payload[4:]


def decode_s2_coords(decoded: bytes, table: dict[int, int],
                     ) -> list[tuple[tuple[int, int], tuple[int, int]] | None]:
    """Ricostruisce le coordinate assolute CARIN per ogni record S2 di un blocco 0x0E.

    Fonte firmware: il decoder pbp+0x41c0 memorizza i delta raw (unsigned) e
    l'ancora; il routing engine applica sign-extension e ancora+delta a query
    time. M_hi è letto da decoded[7] (impostato da decode_block dal pre-header);
    la larghezza per sign_extend è 16 se raw_delta[k] > (1<<M_hi)-1 (is_16),
    M_hi altrimenti. Layout delta: d[0]=dx1, d[1]=dy1, d[2]=dx2, d[3]=dy2.

    Ritorna una lista di lunghezza e2_cnt:
      - None  → sentinella (4 × 0x7FFF, nessuna geometria)
      - ((x1,y1),(x2,y2)) → due punti in coordinate CARIN assolute
    """
    base_d = table[T_DESC_BASE]
    s2_rec = table[T_REC_S2_0E]
    e2_off, e2_cnt = struct.unpack_from(">HH", decoded, base_d + 8)

    # M_hi dal pre-header, scritto a decoded[7] da decode_block per i blocchi 0x0E
    M_hi = decoded[7] or 1
    thresh = (1 << M_hi) - 1

    def _sx(val: int, bits: int) -> int:
        if val & (1 << (bits - 1)):
            return val - (1 << bits)
        return val

    result: list[tuple[tuple[int, int], tuple[int, int]] | None] = []
    for i in range(e2_cnt):
        b = e2_off + i * s2_rec
        x_anc = struct.unpack_from(">i", decoded, b + 0)[0]
        y_anc = struct.unpack_from(">i", decoded, b + 4)[0]
        d = struct.unpack_from(">HHHH", decoded, b + 8)

        if all(v == 0x7FFF for v in d):
            result.append(None)
        else:
            w = [16 if v > thresh else M_hi for v in d]
            dx1 = _sx(d[0], w[0])
            dy1 = _sx(d[1], w[1])
            dx2 = _sx(d[2], w[2])
            dy2 = _sx(d[3], w[3])
            result.append((
                (x_anc + dx1, y_anc + dy1),
                (x_anc + dx2, y_anc + dy2),
            ))
    return result


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
    if ctx.m_hi:            # 0x0E: preserve M_lo/M_hi so decode_s2_coords can read them
        ctx.dst[6] = ctx.m_lo
        ctx.dst[7] = ctx.m_hi
    return bytes(ctx.dst)
