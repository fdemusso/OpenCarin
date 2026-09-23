use std::collections::HashMap;

const CHARMAP: &[u8] = b"aestr\x00 dghilno\xe0\xe1\xe2\xe3\xe4\xe5\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf1\xf2\xf3\xf4\xf5\xf6\xf8\xf9\xfa\xfb\xfc\xfd\xac";

pub fn bits_needed(n: usize) -> usize {
    let v = n & 0xFFFF;
    if v == 1 { return 1; }
    if v == 0 { return 0; }
    let v2 = (v - 1) & 0xFFFF;
    let mut out = 0;
    let mut temp = v2;
    while temp > 0 {
        temp >>= 1;
        out += 1;
    }
    out
}

pub struct BitReader<'a> {
    data: &'a [u8],
    bit_pos: usize,
}

impl<'a> BitReader<'a> {
    pub fn new(data: &'a [u8], bit_pos: usize) -> Self {
        Self { data, bit_pos }
    }

    pub fn get(&mut self, width: usize) -> u32 {
        if width == 0 { return 0; }
        let mut out = 0u32;
        let mut w = width;
        while w > 0 {
            let byte_idx = self.bit_pos >> 3;
            if byte_idx >= self.data.len() {
                self.bit_pos += w;
                out <<= w;
                break;
            }
            let bit_idx = 7 - (self.bit_pos & 7);
            let available = bit_idx + 1;
            if w <= available {
                let mask = (1 << w) - 1;
                let val = (self.data[byte_idx] >> (available - w)) & mask;
                out = (out << w) | (val as u32);
                self.bit_pos += w;
                w = 0;
            } else {
                let mask = (1 << available) - 1;
                let val = self.data[byte_idx] & mask;
                out = (out << available) | (val as u32);
                self.bit_pos += available;
                w -= available;
            }
        }
        out
    }
}

pub struct Cf1Context<'a> {
    pub table: &'a HashMap<u16, u16>,
    pub src: &'a [u8],
    pub dst: Vec<u8>,
    pub cursor: usize,
    pub ptrbits: usize,
    pub widths: [u8; 2],
    pub pb: HashMap<&'static str, usize>,
    pub dbrel: u16,
    pub subrel: u16,
    pub cache_s7: usize,
    pub cache_s2: usize,
    pub bit_reader_pos: usize,
}

#[derive(Clone, Copy)]
pub struct Entry {
    pub off: usize,
    pub count: usize,
}

impl<'a> Cf1Context<'a> {
    pub fn new(table: &'a HashMap<u16, u16>, src: &'a [u8], total: usize, dbrel: u16, subrel: u16) -> Self {
        Self {
            table, src, dst: vec![0; total], cursor: 0, ptrbits: bits_needed(total),
            widths: [0, 0], pb: HashMap::new(), dbrel, subrel, cache_s7: 1, cache_s2: 1, bit_reader_pos: 0,
        }
    }
    pub fn t(&self, idx: u16) -> usize { *self.table.get(&idx).unwrap_or(&0) as usize }
    pub fn copy_raw(&mut self, dst_off: isize, n: usize) -> &[u8] {
        let chunk = &self.src[self.cursor .. self.cursor + n];
        if dst_off >= 0 { self.dst[dst_off as usize .. (dst_off as usize) + n].copy_from_slice(chunk); }
        self.cursor += n;
        chunk
    }
    pub fn entry(&self, idx: usize) -> Entry {
        let base = self.t(0x05) + 4 * idx;
        let off = u16::from_be_bytes(self.dst[base..base+2].try_into().unwrap()) as usize;
        let count = u16::from_be_bytes(self.dst[base+2..base+4].try_into().unwrap()) as usize;
        Entry { off, count }
    }
    pub fn copy_section(&mut self, idx: usize, recsize: usize, plus1: bool) {
        let e = self.entry(idx);
        let n = e.count * recsize + if plus1 { recsize } else { 0 };
        self.copy_raw(e.off as isize, n);
    }
    pub fn bits_init(&mut self) { self.bit_reader_pos = self.cursor * 8; }
    pub fn g(&mut self, width: usize) -> u32 {
        let mut br = BitReader::new(self.src, self.bit_reader_pos);
        let val = br.get(width);
        self.bit_reader_pos = br.bit_pos;
        val
    }
    pub fn w(&mut self, off: usize, val: u32) { self.dst[off..off+2].copy_from_slice(&(val as u16).to_be_bytes()); }
    pub fn rw(&self, off: usize) -> u32 { u16::from_be_bytes(self.dst[off..off+2].try_into().unwrap()) as u32 }
    pub fn b(&mut self, off: usize, val: u32) { self.dst[off] = val as u8; }
    pub fn l(&mut self, off: usize, val: u32) { self.dst[off..off+4].copy_from_slice(&val.to_be_bytes()); }
}

fn walk<F>(ctx: &mut Cf1Context, idx: usize, recsize: usize, mut cb: F)
where
    F: FnMut(&mut Cf1Context, usize, isize, bool),
{
    let e = ctx.entry(idx);
    let start = e.off;
    let end = e.off + e.count * recsize;
    let mut cur = start;
    let mut prev = -1isize;
    while cur < end {
        cb(ctx, cur, prev, cur == start);
        prev = cur as isize;
        cur += recsize;
    }
}

fn delta(ctx: &mut Cf1Context, prev_val: u32) -> u32 {
    let width = ctx.widths[1] as usize;
    if ctx.g(1) == 1 {
        if ctx.g(1) == 1 {
            return ctx.g(16);
        }
        return (prev_val.wrapping_sub(ctx.g(width))) & 0xFFFF;
    }
    (prev_val.wrapping_add(ctx.g(width))) & 0xFFFF
}

fn dec_a14(ctx: &mut Cf1Context, idx: usize) {
    let pb = ctx.ptrbits;
    let rec = ctx.t(0x40);
    walk(ctx, idx, rec, |c, cur, prev, _| {
        if c.g(1) == 1 {
            let v2 = c.g(pb);
            let v4 = c.g(pb - 1) << 1;
            if idx != 0 {
                c.w(cur + 2, v2);
                c.w(cur + 4, v4);
            }
        } else if idx != 0 && prev >= 0 {
            c.w(cur + 2, c.rw(prev as usize + 2));
            c.w(cur + 4, c.rw(prev as usize + 4));
        }
        let v0 = c.g(pb);
        c.w(cur + 0, v0);
    });
}

fn dec_a15_s0(ctx: &mut Cf1Context) {
    let rec = ctx.t(0x40);
    walk(ctx, 0, rec, |c, cur, prev, _| {
        if c.g(1) == 1 {
            let val = c.g(16);
            c.w(cur + 2, val);
        } else if prev >= 0 {
            c.w(cur + 2, c.rw(prev as usize + 2));
        }
    });
}

fn dec_a17_s0(ctx: &mut Cf1Context) {
    let rec = ctx.t(0x40);
    walk(ctx, 0, rec, |c, cur, _prev, _| {
        let val = c.g(c.ptrbits - 1) << 1;
        c.w(cur + 4, val);
    });
}

fn dec_a17_s1(ctx: &mut Cf1Context) {
    let pb = ctx.ptrbits;
    let rec = ctx.t(0x40);
    walk(ctx, 1, rec, |c, cur, _prev, _| {
        let v6 = c.g(pb - 1) << 1;
        c.w(cur + 6, v6);
        let v8 = c.g(pb - 1) << 1;
        c.w(cur + 8, v8);
    });
}

fn dec_a17_s2(ctx: &mut Cf1Context) {
    let pb = ctx.ptrbits;
    let rec = ctx.t(0x40);
    let mut step = [0u32; 2];
    let mut acc = [0u32; 2];
    walk(ctx, 2, rec, |c, cur, _prev, _| {
        for (k, off) in [6, 8].iter().enumerate() {
            if c.g(1) == 1 {
                step[k] = (c.g(pb - 1) << 1) & 0xFFFF;
            }
            acc[k] = (step[k] + acc[k]) & 0xFFFF;
            c.w(cur + *off, acc[k]);
        }
    });
}

fn dec_b(ctx: &mut Cf1Context, kind: u8) {
    let e4 = ctx.entry(4);
    let e2 = ctx.entry(2);
    let e7 = ctx.entry(7);
    let e10 = ctx.entry(10);
    let e11 = ctx.entry(11);
    let e12 = ctx.entry(12);
    let e13 = ctx.entry(13);
    
    let rec = ctx.t(0x08);
    let tail = ctx.t(0x09);
    let pb = ctx.ptrbits;
    let s10_bits = *ctx.pb.get("s10").unwrap();
    let s11_bits = *ctx.pb.get("s11").unwrap();
    let s12_bits = *ctx.pb.get("s12").unwrap();
    let s13_bits = *ctx.pb.get("s13").unwrap_or(&0);
    let s7_bits = *ctx.pb.get("s7").unwrap();
    let s4_bits = *ctx.pb.get("s4").unwrap();
    let s2_bits = *ctx.pb.get("s2").unwrap();
    
    let start = e4.off;
    let end = e4.off + e4.count * rec;
    let mut cur = start;
    let mut prev = -1isize;
    
    while cur < end {
        if kind == 0x14 {
            if cur != start {
                for i in 0..rec {
                    ctx.dst[cur + i] = ctx.dst[prev as usize + i];
                }
            }
            if ctx.g(1) == 1 {
                let v10 = e10.off + (ctx.g(s10_bits) as usize) * ctx.t(0x14);
                let v12 = e12.off + (ctx.g(s12_bits) as usize) * ctx.t(0x15);
                let v11 = e11.off + (ctx.g(s11_bits) as usize) * ctx.t(0x13);
                ctx.w(cur + 0x12, v10 as u32);
                ctx.w(cur + 0x14, v12 as u32);
                ctx.w(cur + tail + 4, v11 as u32);
            }
            if ctx.g(1) == 1 {
                let b_0a = ctx.g(8); ctx.b(cur + 0x0A, b_0a);
                let b_0b = ctx.g(8); ctx.b(cur + 0x0B, b_0b);
                let b_10 = ctx.g(8); ctx.b(cur + 0x10, b_10);
                let b_11 = ctx.g(8); ctx.b(cur + 0x11, b_11);
                let w_tail2 = ctx.g(16); ctx.w(cur + tail + 2, w_tail2);
            }
            let v0 = ctx.g(pb - 1) << 1; ctx.w(cur + 0x00, v0);
            let v2 = ctx.g(pb - 1) << 1; ctx.w(cur + 0x02, v2);
            
            if ctx.g(1) == 1 {
                ctx.cache_s7 = e7.off + (ctx.g(s7_bits) as usize) * ctx.t(0x0C);
            }
            ctx.w(cur + 0x04, ctx.cache_s7 as u32);
            
            for off in [0x06, 0x08] {
                let t = ctx.g(s4_bits) as usize;
                let val = if t == e4.count { 0 } else { e4.off + t * rec };
                ctx.w(cur + off, val as u32);
            }
            let width = if ctx.g(1) == 1 { 16 } else { ctx.widths[0] as usize };
            let v_0c = ctx.g(width); ctx.w(cur + 0x0C, v_0c);
            let b_0e = ctx.g(8); ctx.b(cur + 0x0E, b_0e);
            let b_0f = ctx.g(8); ctx.b(cur + 0x0F, b_0f);
            
            if ctx.g(1) == 1 {
                ctx.cache_s2 = e2.off + (ctx.g(s2_bits) as usize) * ctx.t(0x40);
            }
            ctx.w(cur + tail + 0, ctx.cache_s2 as u32);
        } else if kind == 0x15 {
            if ctx.g(1) == 1 {
                let v = e13.off + (ctx.g(s13_bits) as usize) * ctx.t(0x4C);
                ctx.w(cur + 0x16, v as u32);
            } else if prev >= 0 {
                ctx.w(cur + 0x16, ctx.rw(prev as usize + 0x16));
            }
        }
        prev = cur as isize;
        cur += rec;
    }
    
    if kind != 0x14 { return; }
    
    // sentinella
    if ctx.g(1) == 1 {
        let v10 = e10.off + (ctx.g(s10_bits) as usize) * ctx.t(0x14);
        let v12 = e12.off + (ctx.g(s12_bits) as usize) * ctx.t(0x15);
        let v11 = e11.off + (ctx.g(s11_bits) as usize) * ctx.t(0x13);
        ctx.w(cur + 0x12, v10 as u32);
        ctx.w(cur + 0x14, v12 as u32);
        ctx.w(cur + tail + 4, v11 as u32);
    } else if prev >= 0 {
        ctx.w(cur + 0x12, ctx.rw(prev as usize + 0x12));
        ctx.w(cur + 0x14, ctx.rw(prev as usize + 0x14));
        ctx.w(cur + tail + 4, ctx.rw(prev as usize + tail + 4));
    }
    if ctx.g(1) == 1 {
        ctx.cache_s7 = e7.off + (ctx.g(s7_bits) as usize) * ctx.t(0x0C);
    }
    ctx.w(cur + 0x04, ctx.cache_s7 as u32);
}

fn dec_xy<F>(ctx: &mut Cf1Context, idx: usize, recsize: usize, mut extra: F)
where
    F: FnMut(&mut Cf1Context, usize),
{
    let e4 = ctx.entry(4);
    let s4_bits = *ctx.pb.get("s4").unwrap();
    let rec_s4 = ctx.t(0x08);
    
    walk(ctx, idx, recsize, |c, cur, prev, first| {
        if c.g(1) == 1 {
            let b6 = c.g(8); c.b(cur + 6, b6);
            let b7 = c.g(3); c.b(cur + 7, b7);
        } else if prev >= 0 {
            c.b(cur + 6, c.dst[prev as usize + 6] as u32);
            c.b(cur + 7, c.dst[prev as usize + 7] as u32);
        }
        if first {
            let w0 = c.g(16); c.w(cur + 0, w0);
            let w2 = c.g(16); c.w(cur + 2, w2);
        } else {
            let w0 = delta(c, c.rw(prev as usize + 0)); c.w(cur + 0, w0);
            let w2 = delta(c, c.rw(prev as usize + 2)); c.w(cur + 2, w2);
        }
        let w4 = e4.off + (c.g(s4_bits) as usize) * rec_s4;
        c.w(cur + 4, w4 as u32);
        extra(c, cur);
    });
}

fn dec_c(ctx: &mut Cf1Context) {
    let rec = ctx.t(0x10);
    dec_xy(ctx, 5, rec, |_, _| {});
}

fn dec_d(ctx: &mut Cf1Context) {
    let rec = ctx.t(0x06);
    let off5 = ctx.t(0x10);
    let subrel = ctx.subrel;
    dec_xy(ctx, 6, rec, |c, cur| {
        let v = c.g(32); c.l(cur + off5, v);
        let width = if subrel >= 9 { 16 } else { 14 };
        let w = c.g(width); c.w(cur + off5 + 4, w);
    });
}

fn dec_e(ctx: &mut Cf1Context) {
    let rec = ctx.t(0x0C);
    walk(ctx, 7, rec, |c, cur, prev, first| {
        if first {
            let w0 = c.g(16); c.w(cur + 0, w0);
            let w2 = c.g(16); c.w(cur + 2, w2);
        } else {
            let w0 = delta(c, c.rw(prev as usize + 0)); c.w(cur + 0, w0);
            let w2 = delta(c, c.rw(prev as usize + 2)); c.w(cur + 2, w2);
        }
        let b4 = c.g(3); c.b(cur + 4, b4);
    });
}

fn dec_f(ctx: &mut Cf1Context) {
    let pb = ctx.ptrbits;
    let rec = ctx.t(0x13);
    walk(ctx, 11, rec, |c, cur, _prev, _first| {
        let w0 = c.g(pb); c.w(cur + 0, w0);
        let w2 = c.g(pb); c.w(cur + 2, w2);
        let w4 = c.g(1); c.w(cur + 4, w4);
    });
}

fn dec_s13(ctx: &mut Cf1Context) {
    let pb = ctx.ptrbits;
    let rec = ctx.t(0x4C);
    walk(ctx, 13, rec, |c, cur, _prev, _first| {
        let l0 = c.g(32); c.l(cur + 0, l0);
        let w4 = c.g(pb); c.w(cur + 4, w4);
        let b6 = c.g(8); c.b(cur + 6, b6);
        let b7 = c.g(8); c.b(cur + 7, b7);
    });
}

fn dec_s14(ctx: &mut Cf1Context) {
    let pb = ctx.ptrbits;
    let rec = ctx.t(0x59);
    walk(ctx, 14, rec, |c, cur, prev, _first| {
        if c.g(1) == 1 {
            let w0 = c.g(pb); c.w(cur + 0, w0);
        } else if prev >= 0 {
            c.w(cur + 0, c.rw(prev as usize + 0));
        }
        if c.g(1) == 1 {
            let b2 = c.g(8); c.b(cur + 2, b2);
        } else if prev >= 0 {
            c.b(cur + 2, c.dst[prev as usize + 2] as u32);
        }
        if c.g(1) == 1 {
            let b3 = c.g(5); c.b(cur + 3, b3);
        } else if prev >= 0 {
            c.b(cur + 3, c.dst[prev as usize + 3] as u32);
        }
    });
}

fn dec_text(ctx: &mut Cf1Context) {
    let pb = ctx.ptrbits;
    let start = ctx.g(pb) as usize;
    let end = ctx.g(pb) as usize;
    if start == 0 && end == 0 { return; }
    
    let mut words = Vec::new();
    for _ in 0..6 {
        let n = ctx.g(5) as usize;
        let mut w = Vec::new();
        for _ in 0..n {
            w.push(ctx.g(7) as u8);
        }
        words.push(w);
    }
    
    let mut p = start;
    while p <= end && p < ctx.dst.len() {
        let code = ctx.g(2);
        if code == 0 {
            ctx.dst[p] = CHARMAP[ctx.g(1) as usize];
        } else if code == 1 {
            ctx.dst[p] = CHARMAP[2 + ctx.g(2) as usize];
        } else if code == 2 {
            ctx.dst[p] = CHARMAP[6 + ctx.g(3) as usize];
        } else {
            let v = ctx.g(7) as usize;
            if v > 0x26 {
                ctx.dst[p] = v as u8;
            } else if v > 0x1B {
                let w = &words[v - 0x21];
                ctx.dst[p .. p + w.len()].copy_from_slice(w);
                p += w.len() - 1;
            } else {
                ctx.dst[p] = CHARMAP[14 + v];
            }
        }
        p += 1;
    }
}

pub fn decode_type00(raw: &[u8], table: &HashMap<u16, u16>, dbrel: u16, total_size: usize) -> Vec<u8> {
    let mut ctx = Cf1Context::new(table, raw, total_size, dbrel, 9);
    
    let prolog_len = ctx.t(0x0B);
    ctx.copy_raw(0, prolog_len);
    
    ctx.pb.insert("s2", bits_needed(ctx.entry(2).count));
    ctx.pb.insert("s4", bits_needed(ctx.entry(4).count + 1));
    ctx.pb.insert("s7", bits_needed(ctx.entry(7).count + 1));
    ctx.pb.insert("s10", bits_needed(ctx.entry(10).count + 1));
    ctx.pb.insert("s11", bits_needed(ctx.entry(11).count + 1));
    ctx.pb.insert("s12", bits_needed(ctx.entry(12).count + 1));
    
    let w = ctx.copy_raw(-1, 2);
    ctx.widths = [w[0], w[1]];
    
    ctx.copy_section(3, ctx.t(0x12), true);
    ctx.copy_section(9, ctx.t(0x0F), false);
    ctx.copy_section(10, ctx.t(0x14), false);
    
    if ctx.entry(12).count > 0 {
        ctx.copy_section(12, ctx.t(0x15), false);
    }
    
    ctx.bits_init();
    
    // passata 0x14 (DB-REL 20)
    for idx in 0..=2 {
        dec_a14(&mut ctx, idx);
    }
    dec_b(&mut ctx, 0x14);
    dec_c(&mut ctx);
    dec_d(&mut ctx);
    dec_e(&mut ctx);
    if ctx.entry(11).count > 0 {
        dec_f(&mut ctx);
    }
    dec_text(&mut ctx);
    
    if ctx.dbrel >= 0x15 {
        ctx.pb.insert("s13", bits_needed(ctx.entry(13).count + 1));
        dec_a15_s0(&mut ctx);
        dec_b(&mut ctx, 0x15);
        dec_s13(&mut ctx);
    }
    
    if ctx.dbrel >= 0x17 {
        dec_s14(&mut ctx);
        dec_a17_s2(&mut ctx);
        dec_a17_s1(&mut ctx);
        dec_a17_s0(&mut ctx);
        if ctx.g(1) == 1 { dec_text(&mut ctx); }
        if ctx.g(1) == 1 { dec_text(&mut ctx); }
    }
    
    ctx.dst[6] = ctx.widths[0];
    ctx.dst[7] = ctx.widths[1];
    
    ctx.dst
}
