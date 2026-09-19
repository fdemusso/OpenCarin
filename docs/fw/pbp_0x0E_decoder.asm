; pbp+0x4320 (m68k)
; Decoder for BLOCK_TYPE 0x0E (CF=1)
004320: link.w     a5, #$0
004324: movem.l    d0-d1/a0/a2, -(a7)
004328: movea.l    d0, a2       ; a2 = ctx
00432a: moveq      #$0, d0
00432c: move.w     -$7176(a6), d0  ; T[0x2b] -> 0x30 (prolog size)
004330: move.l     d0, d1
004332: move.l     a2, d0
004334: bsr.w      $47da    ; copy_raw(prolog_size)
004338: moveq      #$0, d0
...
00436c: moveq      #$2, d1
00436e: lea.l      -$711a(a6), a0
004372: move.l     a0, d0
004374: bsr.w      $47da    ; copy_raw(2) -> count N
004378: moveq      #$0c, d0
00437a: muls.w     -$711a(a6), d0
00437e: move.l     d0, d1
004380: lea.l      -$7118(a6), a0
004384: move.l     a0, d0
004386: bsr.w      $4842    ; copy_raw(N * 12) -> raw 12-byte structs array
...
00439c: moveq      #$2, d1
00439e: lea.l      -$7128(a6), a0
0043a2: move.l     a0, d0
0043a4: bsr.w      $47da    ; copy_raw(2) -> count M
...
0043a8: bsr.w      $4994    ; bits_init()
...
0043ac: pea.l      $1c.w    ; T[0x1c] ?
0043b0: moveq      #$0, d0
0043b2: move.w     -$7172(a6), d0  ; T[0x2d] (Section 0 size, 8 bytes)
0043b6: move.l     d0, -(a7)
0043bc: add.l      a2, d0
0043c0: move.l     d0, d1
0043c2: move.l     a2, d0
0043c4: bsr.w      $40b0    ; Decode Section 0

; pbp+0x40b0 (m68k)
; Common decoder loop for 0x0E sections
...
; Section 0 layout:
0040fe: move.l     -$710c(a6), d0   ; ptrbits
004102: bsr.w      $49bc            ; getbits(ptrbits) -> A
004106: move.w     d0, (a3)         ; +0: u16
004108: bsr.w      $49e8            ; getbits(2) -> FLAGS low  [annot. originale "getbits(4)" ERRATA: verificato empiricamente = 2 bit]
00410c: move.b     d0, $2(a3)       ; +2: u8
004110: bsr.w      $49d4            ; getbits(1) -> FLAGS hi
004114: lsl.b      #$4, d0
004116: add.b      d0, $2(a3)
00411a: bsr.w      $49d4            ; getbits(1) -> Inherit bit
00411e: tst.l      d0
004120: beq.b      $4138            ; if 0, inherit B and C
004122: bsr.w      $49fc            ; getbits(3) -> B  [annot. originale "getbits(8)" ERRATA: verificato empiricamente = 3 bit]
004126: move.b     d0, $3(a3)       ; +3: u8
00412a: move.l     -$710c(a6), d0   ; ptrbits
00412e: bsr.w      $49bc            ; getbits(ptrbits) -> C
004132: move.w     d0, $4(a3)       ; +4: u16
004136: bra.b      $4144
004138: move.b     $3(a4), $3(a3)   ; Inherit B
00413e: move.w     $4(a4), $4(a3)   ; Inherit C
004144: move.l     -$7122(a6), d0   ; bits needed for Section 1 count
004148: bsr.w      $49bc            ; getbits -> D_idx
004152: mulu.l     -$714a(a6), d0   ; D_idx * S1_recsize
00415c: add.w      S1_offset, d0    ; + S1_offset
004160: move.w     d0, $6(a3)       ; +6: u16 -> Pointer to Section 1

; ─────────────────────────────────────────────────────────────────────────────
; pbp+0x4168 — Section 1 decoder (kind = 0x1f)
; T[0x41] = 6 bytes per record
; Dispatched from common loop pbp+0x40b0 when kind == 0x1f
;
; Write trace (one iteration per e1 record, a3 = record base ptr):
;   ✍ +0 (u16) = getbits(S2_idx_bits) * T[0x42] + S2_offset   — ptr to Section 2
;   ✍ +2 (u8)  = if getbits(1): getbits(S2_idx_bits) + 2, else 1   — span count
;   ✍ +3 (u8)  = getbits(1)                                          — edge flag
;      +4-5: not decoded (remain zero from pre-zeroed buffer)
; ─────────────────────────────────────────────────────────────────────────────
004168: move.l    -$7122(a6), d0    ; bits_needed(e2.count) pre-computed
00416c: bsr.w     $49bc             ; getbits(S2_idx_bits) → S2 record index
004170: mulu.l    -$714a(a6), d0    ; index * T[0x42] (= 24)
004174: add.w     $????(a6), d0     ; + S2_offset (section 2 base offset)
004178: move.w    d0, (a3)          ; ✍ +0: u16 pointer to Section 2
00417c: bsr.w     $49d4             ; getbits(1) → span flag
004180: tst.l     d0
004182: beq.b     $4194             ; if 0: span count = 1
004184: move.l    -$7122(a6), d0    ; S2_idx_bits
004188: bsr.w     $49bc             ; getbits(S2_idx_bits) → extra span
00418c: addq.l    #$2, d0           ; count = extra + 2
004190: bra.b     $4196
004192: moveq     #$1, d0           ; count = 1
004194: move.b    d0, $2(a3)        ; ✍ +2: u8 span count
004198: bsr.w     $49d4             ; getbits(1) → edge flag
00419c: move.b    d0, $3(a3)        ; ✍ +3: u8 flag
; +4-5: not written (caller zeroes dest buffer)

; ─────────────────────────────────────────────────────────────────────────────
; pbp+0x41c0 — Section 2 decoder (kind = 0x21)
; T[0x42] = 24 bytes per record
; Dispatched from common loop pbp+0x40b0 when kind == 0x21
;
; Pre-loop: bits_needed(count_N) → idx_N_bits  (count_N from pre-header)
;
; Write trace (one iteration per e2 record, a3 = record base ptr):
;   idx_N       = getbits(idx_N_bits)
;   if idx_N < count_N:
;     ✍ +0..+7  = anchor[idx_N][0:8]   (raw copy — memmove pbp+0x41d4)
;     ✍ +16..+19 = anchor[idx_N][8:12]  (raw copy — memmove pbp+0x41ee)
;   has_deltas  = getbits(1)
;   if has_deltas:
;     for k in 0..3:
;       is_16 = getbits(1)
;       ✍ +8+2k (u16) = getbits(16 if is_16 else M_hi)   [is_16 NOT stored]
;   else:
;     ✍ +8..+14 = 0x7FFF (4× sentinel)
;   ✍ +20 (u16) = getbits(13) << 1
;   ✍ +22 (u16) = getbits(M_lo)
;
; NOTE: firmware stores raw (unsigned) deltas + raw anchor.  The routing engine
;       applies sign-extension and anchor+delta at query time, not here.
;       M_hi/M_lo come from the per-block pre-header (2 bytes after anchor table).
; ─────────────────────────────────────────────────────────────────────────────
0041c0: moveq     #$0, d0
0041c2: move.w    -$711a(a6), d0    ; count_N (u16 from pre-header)
0041c6: bsr.w     $4a68             ; bits_needed(count_N) → idx_N_bits
0041ca: move.l    d0, -(a7)         ; push idx_N_bits onto stack for loop
; [common loop iterates e2.count records; a3 advances by T[0x42]=24 each pass]
0041ce: move.l    $4(a7), d0        ; idx_N_bits
0041d0: bsr.w     $49bc             ; getbits(idx_N_bits) → idx_N
0041d2: [cmp idx_N, count_N; bge skip_anchor]
; ─── first memmove: anchor[idx_N][0:8] → dst[+0..+7] ───
0041d4: pea.l     $8.w              ; count = 8 (pushed last for $694e convention)
0041d8: [mulu+add: src = raw_12 + idx_N*12 → d1]
0041dc: move.l    a3, d0            ; dst = current record base
0041de: bsr.w     $694e             ; memmove(dst+0, src, 8)
                                    ; ✍ +0: i32 x_anc (anchor bytes 0-3)
                                    ; ✍ +4: i32 y_anc (anchor bytes 4-7)
; ─── second memmove: anchor[idx_N][8:12] → dst[+16..+19] ───
0041ee: pea.l     $4.w              ; count = 4
0041f2: [add #8 to src: src = raw_12 + idx_N*12 + 8 → d1]
0041f6: lea.l     $10(a3), a0       ; dst = record_base + 16
0041fa: move.l    a0, d0
0041fc: bsr.w     $694e             ; memmove(dst+16, src, 4)
                                    ; ✍ +16: i32 anchor_f2 (anchor bytes 8-11)
; skip_anchor:
0041fe: bsr.w     $49d4             ; getbits(1) → has_deltas
004202: tst.l     d0
004204: beq.b     $4238             ; if 0: sentinel path
; ─── delta path (has_deltas = 1): 4 iterations ───
004206: moveq     #$3, d2           ; loop counter (4-1)
004208: lea.l     $8(a3), a4        ; a4 → dst+8 (first delta slot)
00420a: bsr.w     $49d4             ; getbits(1) → is_16
00420e: tst.l     d0
004210: bne.b     $421a             ; branch if is_16
004212: moveq     #$0, d0
004214: move.b    -$7128(a6), d0    ; M_hi (from pre-header)
004218: bra.b     $421c
00421a: moveq     #$10, d0          ; width = 16
00421c: bsr.w     $49bc             ; getbits(is_16 ? 16 : M_hi)
004220: move.w    d0, (a4)+         ; ✍ +8/+10/+12/+14: raw_delta[k] (u16, unsigned)
004224: dbra      d2, $420a         ; loop ×4
004228: bra.b     $4248
; ─── sentinel path (has_deltas = 0) ───
004238: move.w    #$7FFF, $8(a3)    ; ✍ +8  = 0x7FFF
00423c: move.w    #$7FFF, $a(a3)    ; ✍ +10 = 0x7FFF
004240: move.w    #$7FFF, $c(a3)    ; ✍ +12 = 0x7FFF
004244: move.w    #$7FFF, $e(a3)    ; ✍ +14 = 0x7FFF
; ─── val1 / val2 ───
004248: moveq     #$d, d0
00424a: bsr.w     $49bc             ; getbits(13)
00424e: lsl.w     #$1, d0           ; << 1
004250: move.w    d0, $14(a3)       ; ✍ +20: u16 val1 = getbits(13) << 1
004254: moveq     #$0, d0
004256: move.b    -$7127(a6), d0    ; M_lo (from pre-header, byte after M_hi)
00425a: bsr.w     $49bc             ; getbits(M_lo)
00425e: move.w    d0, $16(a3)       ; ✍ +22: u16 val2 = getbits(M_lo)
; [loop back; on exhaustion: addq.l #4, a7 (pop idx_N_bits), rts to common loop]

; ─────────────────────────────────────────────────────────────────────────────
; NOTE ON ADDRESSES: pbp+0x41c0, +0x41d4, +0x41ee are confirmed anchor points.
; All intermediate addresses between these anchors are derived from code-size
; estimates and are approximate (marked [~approx] where uncertain).
; $694e = memmove(d0=dst, d1=src, (a7)=count) — confirmed by code trace.
; ─────────────────────────────────────────────────────────────────────────────
