from .core import *
from .core import _walk
from .constants import *
from .decoder_00 import dec_text
import struct

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


