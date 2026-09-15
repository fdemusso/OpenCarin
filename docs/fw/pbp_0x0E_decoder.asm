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
004108: bsr.w      $49e8            ; getbits(4) -> FLAGS low
00410c: move.b     d0, $2(a3)       ; +2: u8
004110: bsr.w      $49d4            ; getbits(1) -> FLAGS hi
004114: lsl.b      #$4, d0
004116: add.b      d0, $2(a3)
00411a: bsr.w      $49d4            ; getbits(1) -> Inherit bit
00411e: tst.l      d0
004120: beq.b      $4138            ; if 0, inherit B and C
004122: bsr.w      $49fc            ; getbits(8) -> B
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
