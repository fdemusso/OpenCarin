import struct
from typing import List, Tuple, Optional
import collections
import math

class CompressionAnalyzer:
    """
    Heuristic analyzer for unknown compression codec (CF=1).
    Attempts to parse the compressed payload using various common 
    sliding-window (LZ77/LZSS) and LZO patterns.
    """
    
    def __init__(self, data: bytes):
        self.data = data
        self.size = len(data)
        
    def analyze_header(self) -> dict:
        """
        Analyzes the first few bytes of the payload which often contain
        uncompressed size, dictionary sizes, or magic bytes.
        """
        if self.size < 8:
            return {}
            
        header_bytes = self.data[:8]
        report = {
            "hex": header_bytes.hex(),
            "u16_be": struct.unpack_from(">4H", header_bytes),
            "u32_be": struct.unpack_from(">2I", header_bytes),
        }
        return report

    def try_lzss_variants(self, max_output_size: int = 130560) -> dict:
        """
        Test common LZSS variants (e.g. 1 control byte followed by 8 tokens).
        """
        results = {}
        
        # Variant 1: 1 control byte, bits 0-7 (1 = literal, 0 = backref)
        res_v1 = self._decode_lzss_basic(control_bit_literal=1, bit_order='lsb', max_out=max_output_size)
        results['lzss_1_lit_lsb'] = res_v1
        
        # Variant 2: 1 control byte (0 = literal, 1 = backref)
        res_v2 = self._decode_lzss_basic(control_bit_literal=0, bit_order='lsb', max_out=max_output_size)
        results['lzss_0_lit_lsb'] = res_v2
        
        # Variant 3: msb first
        res_v3 = self._decode_lzss_basic(control_bit_literal=1, bit_order='msb', max_out=max_output_size)
        results['lzss_1_lit_msb'] = res_v3
        
        res_v4 = self._decode_lzss_basic(control_bit_literal=0, bit_order='msb', max_out=max_output_size)
        results['lzss_0_lit_msb'] = res_v4

        return results

    def _decode_lzss_basic(self, control_bit_literal: int, bit_order: str, max_out: int) -> dict:
        """A simple heuristic LZSS decoder to test hypotheses."""
        out = bytearray()
        idx = 0
        window_size = 4096
        window = bytearray(window_size)
        win_pos = 0 # typical initial is 0, sometimes 0xFEE or similar
        
        try:
            while idx < self.size and len(out) < max_out:
                ctrl = self.data[idx]
                idx += 1
                
                for i in range(8):
                    if idx >= self.size or len(out) >= max_out:
                        break
                        
                    if bit_order == 'lsb':
                        bit = (ctrl >> i) & 1
                    else:
                        bit = (ctrl >> (7 - i)) & 1
                        
                    if bit == control_bit_literal:
                        # Literal
                        val = self.data[idx]
                        idx += 1
                        out.append(val)
                        window[win_pos] = val
                        win_pos = (win_pos + 1) % window_size
                    else:
                        # Backref
                        if idx + 1 >= self.size:
                            break
                        b1 = self.data[idx]
                        b2 = self.data[idx+1]
                        idx += 2
                        
                        # Assuming typical 12-bit offset, 4-bit length
                        # usually byte1 | ((byte2 & 0xF0) << 4) -> offset
                        # (byte2 & 0x0F) + 3 -> length
                        offset = b1 | ((b2 & 0xF0) << 4)
                        length = (b2 & 0x0F) + 3
                        
                        for _ in range(length):
                            val = window[(offset + _) % window_size]
                            out.append(val)
                            window[win_pos] = val
                            win_pos = (win_pos + 1) % window_size
        except Exception as e:
            return {"success": False, "error": str(e), "decoded_len": len(out)}
            
        return {"success": True, "decoded_len": len(out), "entropy": self._entropy(out)}

    def _entropy(self, data: bytearray) -> float:
        if not data:
            return 0.0
        counts = collections.Counter(data)
        ent = 0.0
        for count in counts.values():
            p = count / len(data)
            ent -= p * math.log2(p)
        return ent

    def find_patterns(self) -> dict:
        """Scan for repeated sequences which indicate dictionary compression."""
        if self.size < 16:
            return {}
        
        patterns = collections.Counter()
        for i in range(self.size - 4):
            chunk = self.data[i:i+4]
            patterns[chunk] += 1
            
        return {"most_common_4bytes": patterns.most_common(5)}


# --------------------------------------------------------------------------
# Extensions for CARINdb COMPRESSION_FLAG = 1 (unknown codec).
# Added while analysing real blocks from NAV_DB_21708.ISO.
# --------------------------------------------------------------------------

import re


def entropy(data) -> float:
    if not data:
        return 0.0
    counts = collections.Counter(data)
    n = len(data)
    return -sum(c / n * math.log2(c / n) for c in counts.values())


def plain_prefix(data: bytes, window: int = 24, threshold: float = 4.2) -> int:
    """Length of the leading low-entropy (plaintext) region of a block."""
    i = 0
    while i + window <= len(data):
        if entropy(data[i:i + window]) > threshold:
            return i
        i += 4
    return len(data)


def score_output(out: bytes, expect_len: int) -> float:
    """Validation oracle: a correct decode has the right length and, for
    text-bearing block types, readable Latin-1 runs."""
    if not out:
        return 0.0
    s = 0.0
    if expect_len:
        s += 1.0 - min(1.0, abs(len(out) - expect_len) / expect_len)
    text = sum(len(m) for m in re.findall(rb"[a-z][a-z \-']{4,}", bytes(out)))
    s += min(2.0, text / max(1, len(out)) * 10)
    s += max(0.0, (8.0 - entropy(out[:4096])) / 8.0)
    return s


class LzssSweep:
    """Parametric LZSS/LZ77 decoder used to sweep the hypothesis space.

    Knobs: control-bit meaning and order, window size, initial window fill and
    position, offset/length bit split, byte order of the back-reference pair,
    and the minimum match length bias.
    """

    def __init__(self, data: bytes):
        self.data = data

    def decode(self, *, literal_bit=1, bit_order="msb", window_size=4096,
               win_init=0x20, win_pos=None, off_bits=12, len_bias=3,
               pair_order="lo_hi", max_out=1 << 20):
        d = self.data
        len_bits = 16 - off_bits
        off_mask = (1 << off_bits) - 1
        len_mask = (1 << len_bits) - 1
        win = bytearray([win_init]) * window_size
        wp = window_size - (len_mask + len_bias) if win_pos is None else win_pos
        wp %= window_size
        out = bytearray()
        i = 0
        while i < len(d) and len(out) < max_out:
            ctrl = d[i]; i += 1
            for b in range(8):
                if i >= len(d) or len(out) >= max_out:
                    break
                bit = (ctrl >> b) & 1 if bit_order == "lsb" else (ctrl >> (7 - b)) & 1
                if bit == literal_bit:
                    v = d[i]; i += 1
                    out.append(v); win[wp] = v; wp = (wp + 1) % window_size
                else:
                    if i + 1 >= len(d):
                        return bytes(out)
                    b1, b2 = d[i], d[i + 1]; i += 2
                    pair = (b1 << 8) | b2 if pair_order == "hi_lo" else (b2 << 8) | b1
                    if pair_order == "split":          # classic LZSS packing
                        off = b1 | ((b2 & 0xF0) << 4)
                        ln = (b2 & 0x0F) + len_bias
                    else:
                        off = (pair >> len_bits) & off_mask
                        ln = (pair & len_mask) + len_bias
                    for k in range(ln):
                        v = win[(off + k) % window_size]
                        out.append(v); win[wp] = v; wp = (wp + 1) % window_size
        return bytes(out)


def sweep_lzss(data: bytes, expect_len: int, top: int = 8):
    """Try the LZSS parameter grid, ranked by the validation oracle."""
    results = []
    sweeper = LzssSweep(data)
    for literal_bit in (0, 1):
        for bit_order in ("lsb", "msb"):
            for window_size in (1024, 2048, 4096, 8192):
                for off_bits in (10, 11, 12, 13):
                    for pair_order in ("lo_hi", "hi_lo", "split"):
                        for win_init in (0x00, 0x20):
                            try:
                                out = sweeper.decode(
                                    literal_bit=literal_bit, bit_order=bit_order,
                                    window_size=window_size, off_bits=off_bits,
                                    pair_order=pair_order, win_init=win_init,
                                    max_out=expect_len * 4 or 1 << 18)
                            except Exception:
                                continue
                            results.append((score_output(out, expect_len), len(out),
                                            dict(literal_bit=literal_bit, bit_order=bit_order,
                                                 window=window_size, off_bits=off_bits,
                                                 pair=pair_order, fill=win_init)))
    results.sort(key=lambda r: -r[0])
    return results[:top]


def decode_lzw(data: bytes, *, start_bits=9, max_bits=12, msb_first=True,
               early_change=True, max_out=1 << 20):
    """Generic LZW (GIF/TIFF-style variants)."""
    dict_size = 256
    table = {i: bytes([i]) for i in range(256)}
    bits = start_bits
    out = bytearray()
    prev = None
    acc = accbits = 0
    for byte in data:
        if msb_first:
            acc = (acc << 8) | byte
        else:
            acc |= byte << accbits
        accbits += 8
        while accbits >= bits:
            if msb_first:
                code = (acc >> (accbits - bits)) & ((1 << bits) - 1)
                accbits -= bits
                acc &= (1 << accbits) - 1
            else:
                code = acc & ((1 << bits) - 1)
                acc >>= bits
                accbits -= bits
            if code in table:
                entry = table[code]
            elif prev is not None and code == dict_size:
                entry = prev + prev[:1]
            else:
                return bytes(out)
            out.extend(entry)
            if len(out) >= max_out:
                return bytes(out)
            if prev is not None:
                table[dict_size] = prev + entry[:1]
                dict_size += 1
                limit = (1 << bits) - (1 if early_change else 0)
                if dict_size >= limit and bits < max_bits:
                    bits += 1
            prev = entry
    return bytes(out)


def decode_lz4_block(data: bytes, max_out=1 << 20):
    """LZ4 raw block (little-endian offsets)."""
    out = bytearray()
    i = 0
    while i < len(data) and len(out) < max_out:
        token = data[i]; i += 1
        lit = token >> 4
        if lit == 15:
            while i < len(data):
                b = data[i]; i += 1
                lit += b
                if b != 255:
                    break
        out += data[i:i + lit]; i += lit
        if i + 1 >= len(data):
            break
        off = data[i] | (data[i + 1] << 8); i += 2
        if off == 0 or off > len(out):
            break
        ml = (token & 0x0F) + 4
        if (token & 0x0F) == 15:
            while i < len(data):
                b = data[i]; i += 1
                ml += b
                if b != 255:
                    break
        start = len(out) - off
        for k in range(ml):
            out.append(out[start + k])
    return bytes(out)
