003660: 4e550000     link.w     a5, #$0
003664: 48e7c080     movem.l    d0-d1/a0, -(a7)
003668: 2057         movea.l    (a7), a0
00366a: 082800000006 btst.b     #$0, $6(a0)
003670: 670c         beq.b      $367e
003672: 2057         movea.l    (a7), a0
003674: 303c00ff     move.w     #$ff, d0
003678: c0680006     and.w      $6(a0), d0
00367c: 600a         bra.b      $3688
00367e: 2057         movea.l    (a7), a0
003680: 303c00ff     move.w     #$ff, d0
003684: c0680002     and.w      $2(a0), d0
003688: 7200         moveq      #$0, d1
00368a: 3200         move.w     d0, d1
00368c: 2001         move.l     d1, d0
00368e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003694: 4e5d         unlk       a5
003696: 4e75         rts        
003698: 4e550000     link.w     a5, #$0
00369c: 48e7c080     movem.l    d0-d1/a0, -(a7)
0036a0: 2057         movea.l    (a7), a0
0036a2: 082800000006 btst.b     #$0, $6(a0)
0036a8: 6700007c     beq.w      $3726
0036ac: 2017         move.l     (a7), d0
0036ae: 610010e8     bsr.w      $4798
0036b2: 603c         bra.b      $36f0
0036b4: 202f0004     move.l     $4(a7), d0
0036b8: 610007e6     bsr.w      $3ea0
0036bc: 605e         bra.b      $371c
0036be: 202f0004     move.l     $4(a7), d0
0036c2: 61000c5c     bsr.w      $4320
0036c6: 6054         bra.b      $371c
0036c8: 202f0004     move.l     $4(a7), d0
0036cc: 61000fdc     bsr.w      $46aa
0036d0: 604a         bra.b      $371c
0036d2: 2057         movea.l    (a7), a0
0036d4: 203c000000ff move.l     #$ff, d0
0036da: c090         and.l      (a0), d0
0036dc: 720b         moveq      #$b, d1
0036de: e3a8         lsl.l      d1, d0
0036e0: 2f00         move.l     d0, -(a7)
0036e2: 7200         moveq      #$0, d1
0036e4: 202f0008     move.l     $8(a7), d0
0036e8: 6100331c     bsr.w      $6a06
0036ec: 588f         addq.l     #$4, a7
0036ee: 602c         bra.b      $371c
0036f0: 2057         movea.l    (a7), a0
0036f2: 30280004     move.w     $4(a0), d0
0036f6: 0c400014     cmpi.w     #$14, d0
0036fa: 67cc         beq.b      $36c8
0036fc: 620e         bhi.b      $370c
0036fe: 0c00000e     cmpi.b     #$e, d0
003702: 67ba         beq.b      $36be
003704: 62cc         bhi.b      $36d2
003706: 4a00         tst.b      d0
003708: 67aa         beq.b      $36b4
00370a: 60c6         bra.b      $36d2
00370c: 0c400016     cmpi.w     #$16, d0
003710: 67b6         beq.b      $36c8
003712: 62be         bhi.b      $36d2
003714: 0c400015     cmpi.w     #$15, d0
003718: 67ae         beq.b      $36c8
00371a: 60b6         bra.b      $36d2
00371c: 206f0004     movea.l    $4(a7), a0
003720: 42680006     clr.w      $6(a0)
003724: 601e         bra.b      $3744
003726: 2057         movea.l    (a7), a0
003728: 203c000000ff move.l     #$ff, d0
00372e: c090         and.l      (a0), d0
003730: 720b         moveq      #$b, d1
003732: e3a8         lsl.l      d1, d0
003734: 2f00         move.l     d0, -(a7)
003736: 222f0004     move.l     $4(a7), d1
00373a: 202f0008     move.l     $8(a7), d0
00373e: 6100320e     bsr.w      $694e
003742: 588f         addq.l     #$4, a7
003744: 4ced0100fffc movem.l    -$4(a5), a0
00374a: 4e5d         unlk       a5
00374c: 4e75         rts        
00374e: 4e550000     link.w     a5, #$0
003752: 48e78000     movem.l    d0, -(a7)
003756: 422e944e     clr.b      -$6bb2(a6)
00375a: 4e5d         unlk       a5
00375c: 4e75         rts        
00375e: 4e550000     link.w     a5, #$0
003762: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
003766: 598f         subq.l     #$4, a7
003768: 97cb         suba.l     a3, a3
00376a: 206f0008     movea.l    $8(a7), a0
00376e: 7000         moveq      #$0, d0
003770: 3010         move.w     (a0), d0
003772: d0af0004     add.l      $4(a7), d0
003776: 2e80         move.l     d0, (a7)
003778: 206f0008     movea.l    $8(a7), a0
00377c: 30280002     move.w     $2(a0), d0
003780: c0ee8eb4     mulu.w     -$714c(a6), d0
003784: d097         add.l      (a7), d0
003786: 2840         movea.l    d0, a4
003788: 2457         movea.l    (a7), a2
00378a: 6048         bra.b      $37d4
00378c: 61001246     bsr.w      $49d4
003790: 4a80         tst.l      d0
003792: 671e         beq.b      $37b2
003794: 202e8ef4     move.l     -$710c(a6), d0
003798: 61001222     bsr.w      $49bc
00379c: 35400002     move.w     d0, $2(a2)
0037a0: 202e8ef4     move.l     -$710c(a6), d0
0037a4: 5380         subq.l     #$1, d0
0037a6: 61001214     bsr.w      $49bc
0037aa: e348         lsl.w      #$1, d0
0037ac: 35400004     move.w     d0, $4(a2)
0037b0: 600c         bra.b      $37be
0037b2: 356b00020002 move.w     $2(a3), $2(a2)
0037b8: 356b00040004 move.w     $4(a3), $4(a2)
0037be: 202e8ef4     move.l     -$710c(a6), d0
0037c2: 610011f8     bsr.w      $49bc
0037c6: 3480         move.w     d0, (a2)
0037c8: 264a         movea.l    a2, a3
0037ca: 7000         moveq      #$0, d0
0037cc: 302e8eb4     move.w     -$714c(a6), d0
0037d0: d08a         add.l      a2, d0
0037d2: 2440         movea.l    d0, a2
0037d4: b5cc         cmpa.l     a4, a2
0037d6: 65b4         bcs.b      $378c
0037d8: 588f         addq.l     #$4, a7
0037da: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
0037e0: 4e5d         unlk       a5
0037e2: 4e75         rts        
0037e4: 4e550000     link.w     a5, #$0
0037e8: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
0037ec: 2440         movea.l    d0, a2
0037ee: 518f         subq.l     #$8, a7
0037f0: 97cb         suba.l     a3, a3
0037f2: 99cc         suba.l     a4, a4
0037f4: 42af0004     clr.l      $4(a7)
0037f8: 4297         clr.l      (a7)
0037fa: 282e8ec4     move.l     -$713c(a6), d4
0037fe: 2a2e8ec8     move.l     -$7138(a6), d5
003802: 2c2e8ec0     move.l     -$7140(a6), d6
003806: 206f000c     movea.l    $c(a7), a0
00380a: 7000         moveq      #$0, d0
00380c: 3010         move.w     (a0), d0
00380e: d08a         add.l      a2, d0
003810: 2f400004     move.l     d0, $4(a7)
003814: 206f000c     movea.l    $c(a7), a0
003818: 30280002     move.w     $2(a0), d0
00381c: c0ee8e44     mulu.w     -$71bc(a6), d0
003820: d0af0004     add.l      $4(a7), d0
003824: 2e80         move.l     d0, (a7)
003826: 3d7c00018eba move.w     #$1, -$7146(a6)
00382c: 3d7c00018ebc move.w     #$1, -$7144(a6)
003832: 266f0004     movea.l    $4(a7), a3
003836: 600001d0     bra.w      $3a08
00383a: b7ef0004     cmpa.l     $4(a7), a3
00383e: 6712         beq.b      $3852
003840: 7000         moveq      #$0, d0
003842: 302e8e44     move.w     -$71bc(a6), d0
003846: 2f00         move.l     d0, -(a7)
003848: 220c         move.l     a4, d1
00384a: 200b         move.l     a3, d0
00384c: 61003100     bsr.w      $694e
003850: 588f         addq.l     #$4, a7
003852: 61001180     bsr.w      $49d4
003856: 4a80         tst.l      d0
003858: 6766         beq.b      $38c0
00385a: 202e8ed0     move.l     -$7130(a6), d0
00385e: 6100115c     bsr.w      $49bc
003862: 7200         moveq      #$0, d1
003864: 322e8e5c     move.w     -$71a4(a6), d1
003868: 4c010000     mulu.l     d1, d0
00386c: 7200         moveq      #$0, d1
00386e: 322e8e3e     move.w     -$71c2(a6), d1
003872: d0721828     add.w      $28(a2, d1.l), d0
003876: 37400012     move.w     d0, $12(a3)
00387a: 202e8ed4     move.l     -$712c(a6), d0
00387e: 6100113c     bsr.w      $49bc
003882: 7200         moveq      #$0, d1
003884: 322e8e5e     move.w     -$71a2(a6), d1
003888: 4c010000     mulu.l     d1, d0
00388c: 7200         moveq      #$0, d1
00388e: 322e8e3e     move.w     -$71c2(a6), d1
003892: d0721830     add.w      $30(a2, d1.l), d0
003896: 37400014     move.w     d0, $14(a3)
00389a: 202e8ecc     move.l     -$7134(a6), d0
00389e: 6100111c     bsr.w      $49bc
0038a2: 7200         moveq      #$0, d1
0038a4: 322e8e5a     move.w     -$71a6(a6), d1
0038a8: 4c010000     mulu.l     d1, d0
0038ac: 7200         moveq      #$0, d1
0038ae: 322e8e3e     move.w     -$71c2(a6), d1
0038b2: d072182c     add.w      $2c(a2, d1.l), d0
0038b6: 7200         moveq      #$0, d1
0038b8: 322e8e46     move.w     -$71ba(a6), d1
0038bc: 37801804     move.w     d0, $4(a3, d1.l)
0038c0: 61001112     bsr.w      $49d4
0038c4: 4a80         tst.l      d0
0038c6: 672e         beq.b      $38f6
0038c8: 6100115a     bsr.w      $4a24
0038cc: 1740000a     move.b     d0, $a(a3)
0038d0: 61001152     bsr.w      $4a24
0038d4: 1740000b     move.b     d0, $b(a3)
0038d8: 6100114a     bsr.w      $4a24
0038dc: 17400010     move.b     d0, $10(a3)
0038e0: 61001142     bsr.w      $4a24
0038e4: 17400011     move.b     d0, $11(a3)
0038e8: 6100114e     bsr.w      $4a38
0038ec: 7200         moveq      #$0, d1
0038ee: 322e8e46     move.w     -$71ba(a6), d1
0038f2: 37801802     move.w     d0, $2(a3, d1.l)
0038f6: 202e8ef4     move.l     -$710c(a6), d0
0038fa: 5380         subq.l     #$1, d0
0038fc: 610010be     bsr.w      $49bc
003900: e348         lsl.w      #$1, d0
003902: 3680         move.w     d0, (a3)
003904: 202e8ef4     move.l     -$710c(a6), d0
003908: 5380         subq.l     #$1, d0
00390a: 610010b0     bsr.w      $49bc
00390e: e348         lsl.w      #$1, d0
003910: 37400002     move.w     d0, $2(a3)
003914: 610010be     bsr.w      $49d4
003918: 4a80         tst.l      d0
00391a: 671e         beq.b      $393a
00391c: 2005         move.l     d5, d0
00391e: 6100109c     bsr.w      $49bc
003922: 7200         moveq      #$0, d1
003924: 322e8e4c     move.w     -$71b4(a6), d1
003928: 4c010000     mulu.l     d1, d0
00392c: 7200         moveq      #$0, d1
00392e: 322e8e3e     move.w     -$71c2(a6), d1
003932: d072181c     add.w      $1c(a2, d1.l), d0
003936: 3d408eba     move.w     d0, -$7146(a6)
00393a: 376e8eba0004 move.w     -$7146(a6), $4(a3)
003940: 2004         move.l     d4, d0
003942: 61001078     bsr.w      $49bc
003946: 3e00         move.w     d0, d7
003948: 7000         moveq      #$0, d0
00394a: 302e8e3e     move.w     -$71c2(a6), d0
00394e: be720812     cmp.w      $12(a2, d0.l), d7
003952: 6606         bne.b      $395a
003954: 426b0006     clr.w      $6(a3)
003958: 6016         bra.b      $3970
00395a: 7000         moveq      #$0, d0
00395c: 302e8e3e     move.w     -$71c2(a6), d0
003960: 30320810     move.w     $10(a2, d0.l), d0
003964: 3207         move.w     d7, d1
003966: c2ee8e44     mulu.w     -$71bc(a6), d1
00396a: d041         add.w      d1, d0
00396c: 37400006     move.w     d0, $6(a3)
003970: 2004         move.l     d4, d0
003972: 61001048     bsr.w      $49bc
003976: 3e00         move.w     d0, d7
003978: 7000         moveq      #$0, d0
00397a: 302e8e3e     move.w     -$71c2(a6), d0
00397e: be720812     cmp.w      $12(a2, d0.l), d7
003982: 6606         bne.b      $398a
003984: 426b0008     clr.w      $8(a3)
003988: 6016         bra.b      $39a0
00398a: 7000         moveq      #$0, d0
00398c: 302e8e3e     move.w     -$71c2(a6), d0
003990: 30320810     move.w     $10(a2, d0.l), d0
003994: 3207         move.w     d7, d1
003996: c2ee8e44     mulu.w     -$71bc(a6), d1
00399a: d041         add.w      d1, d0
00399c: 37400008     move.w     d0, $8(a3)
0039a0: 61001032     bsr.w      $49d4
0039a4: 4a80         tst.l      d0
0039a6: 6704         beq.b      $39ac
0039a8: 7010         moveq      #$10, d0
0039aa: 6006         bra.b      $39b2
0039ac: 7000         moveq      #$0, d0
0039ae: 102e8ebe     move.b     -$7142(a6), d0
0039b2: 61001008     bsr.w      $49bc
0039b6: 3740000c     move.w     d0, $c(a3)
0039ba: 61001068     bsr.w      $4a24
0039be: 1740000e     move.b     d0, $e(a3)
0039c2: 61001060     bsr.w      $4a24
0039c6: 1740000f     move.b     d0, $f(a3)
0039ca: 61001008     bsr.w      $49d4
0039ce: 4a80         tst.l      d0
0039d0: 671e         beq.b      $39f0
0039d2: 2006         move.l     d6, d0
0039d4: 61000fe6     bsr.w      $49bc
0039d8: 7200         moveq      #$0, d1
0039da: 322e8eb4     move.w     -$714c(a6), d1
0039de: 4c010000     mulu.l     d1, d0
0039e2: 7200         moveq      #$0, d1
0039e4: 322e8e3e     move.w     -$71c2(a6), d1
0039e8: d0721808     add.w      $8(a2, d1.l), d0
0039ec: 3d408ebc     move.w     d0, -$7144(a6)
0039f0: 7000         moveq      #$0, d0
0039f2: 302e8e46     move.w     -$71ba(a6), d0
0039f6: 37ae8ebc0800 move.w     -$7144(a6), (a3, d0.l)
0039fc: 284b         movea.l    a3, a4
0039fe: 7000         moveq      #$0, d0
003a00: 302e8e44     move.w     -$71bc(a6), d0
003a04: d08b         add.l      a3, d0
003a06: 2640         movea.l    d0, a3
003a08: b7d7         cmpa.l     (a7), a3
003a0a: 6500fe2e     bcs.w      $383a
003a0e: 61000fc4     bsr.w      $49d4
003a12: 4a80         tst.l      d0
003a14: 6768         beq.b      $3a7e
003a16: 202e8ed0     move.l     -$7130(a6), d0
003a1a: 61000fa0     bsr.w      $49bc
003a1e: 7200         moveq      #$0, d1
003a20: 322e8e5c     move.w     -$71a4(a6), d1
003a24: 4c010000     mulu.l     d1, d0
003a28: 7200         moveq      #$0, d1
003a2a: 322e8e3e     move.w     -$71c2(a6), d1
003a2e: d0721828     add.w      $28(a2, d1.l), d0
003a32: 37400012     move.w     d0, $12(a3)
003a36: 202e8ed4     move.l     -$712c(a6), d0
003a3a: 61000f80     bsr.w      $49bc
003a3e: 7200         moveq      #$0, d1
003a40: 322e8e5e     move.w     -$71a2(a6), d1
003a44: 4c010000     mulu.l     d1, d0
003a48: 7200         moveq      #$0, d1
003a4a: 322e8e3e     move.w     -$71c2(a6), d1
003a4e: d0721830     add.w      $30(a2, d1.l), d0
003a52: 37400014     move.w     d0, $14(a3)
003a56: 202e8ecc     move.l     -$7134(a6), d0
003a5a: 61000f60     bsr.w      $49bc
003a5e: 7200         moveq      #$0, d1
003a60: 322e8e5a     move.w     -$71a6(a6), d1
003a64: 4c010000     mulu.l     d1, d0
003a68: 7200         moveq      #$0, d1
003a6a: 322e8e3e     move.w     -$71c2(a6), d1
003a6e: d072182c     add.w      $2c(a2, d1.l), d0
003a72: 7200         moveq      #$0, d1
003a74: 322e8e46     move.w     -$71ba(a6), d1
003a78: 37801804     move.w     d0, $4(a3, d1.l)
003a7c: 601e         bra.b      $3a9c
003a7e: 376c00120012 move.w     $12(a4), $12(a3)
003a84: 376c00140014 move.w     $14(a4), $14(a3)
003a8a: 7000         moveq      #$0, d0
003a8c: 302e8e46     move.w     -$71ba(a6), d0
003a90: 7200         moveq      #$0, d1
003a92: 322e8e46     move.w     -$71ba(a6), d1
003a96: 37b408041804 move.w     $4(a4, d0.l), $4(a3, d1.l)
003a9c: 61000f36     bsr.w      $49d4
003aa0: 4a80         tst.l      d0
003aa2: 671e         beq.b      $3ac2
003aa4: 2005         move.l     d5, d0
003aa6: 61000f14     bsr.w      $49bc
003aaa: 7200         moveq      #$0, d1
003aac: 322e8e4c     move.w     -$71b4(a6), d1
003ab0: 4c010000     mulu.l     d1, d0
003ab4: 7200         moveq      #$0, d1
003ab6: 322e8e3e     move.w     -$71c2(a6), d1
003aba: d072181c     add.w      $1c(a2, d1.l), d0
003abe: 3d408eba     move.w     d0, -$7146(a6)
003ac2: 376e8eba0004 move.w     -$7146(a6), $4(a3)
003ac8: 508f         addq.l     #$8, a7
003aca: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
003ad0: 4e5d         unlk       a5
003ad2: 4e75         rts        
003ad4: 4e550000     link.w     a5, #$0
003ad8: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003adc: 2440         movea.l    d0, a2
003ade: 518f         subq.l     #$8, a7
003ae0: 99cc         suba.l     a4, a4
003ae2: 282e8ec4     move.l     -$713c(a6), d4
003ae6: 206f000c     movea.l    $c(a7), a0
003aea: 7000         moveq      #$0, d0
003aec: 3010         move.w     (a0), d0
003aee: d08a         add.l      a2, d0
003af0: 2f400004     move.l     d0, $4(a7)
003af4: 206f000c     movea.l    $c(a7), a0
003af8: 30280002     move.w     $2(a0), d0
003afc: c0ee8e54     mulu.w     -$71ac(a6), d0
003b00: d0af0004     add.l      $4(a7), d0
003b04: 2e80         move.l     d0, (a7)
003b06: 266f0004     movea.l    $4(a7), a3
003b0a: 600000dc     bra.w      $3be8
003b0e: 61000ec4     bsr.w      $49d4
003b12: 4a80         tst.l      d0
003b14: 6712         beq.b      $3b28
003b16: 61000f0c     bsr.w      $4a24
003b1a: 17400006     move.b     d0, $6(a3)
003b1e: 61000edc     bsr.w      $49fc
003b22: 17400007     move.b     d0, $7(a3)
003b26: 600c         bra.b      $3b34
003b28: 176c00060006 move.b     $6(a4), $6(a3)
003b2e: 176c00070007 move.b     $7(a4), $7(a3)
003b34: b7ef0004     cmpa.l     $4(a7), a3
003b38: 6608         bne.b      $3b42
003b3a: 61000efc     bsr.w      $4a38
003b3e: 3680         move.w     d0, (a3)
003b40: 604a         bra.b      $3b8c
003b42: 61000e90     bsr.w      $49d4
003b46: 4a80         tst.l      d0
003b48: 6720         beq.b      $3b6a
003b4a: 61000e88     bsr.w      $49d4
003b4e: 4a80         tst.l      d0
003b50: 6708         beq.b      $3b5a
003b52: 61000ee4     bsr.w      $4a38
003b56: 3680         move.w     d0, (a3)
003b58: 6022         bra.b      $3b7c
003b5a: 7000         moveq      #$0, d0
003b5c: 102e8ebf     move.b     -$7141(a6), d0
003b60: 61000e5a     bsr.w      $49bc
003b64: 3214         move.w     (a4), d1
003b66: 9240         sub.w      d0, d1
003b68: 6010         bra.b      $3b7a
003b6a: 3014         move.w     (a4), d0
003b6c: 3200         move.w     d0, d1
003b6e: 7000         moveq      #$0, d0
003b70: 102e8ebf     move.b     -$7141(a6), d0
003b74: 61000e46     bsr.w      $49bc
003b78: d240         add.w      d0, d1
003b7a: 3681         move.w     d1, (a3)
003b7c: 61000e56     bsr.w      $49d4
003b80: 4a80         tst.l      d0
003b82: 6724         beq.b      $3ba8
003b84: 61000e4e     bsr.w      $49d4
003b88: 4a80         tst.l      d0
003b8a: 670a         beq.b      $3b96
003b8c: 61000eaa     bsr.w      $4a38
003b90: 37400002     move.w     d0, $2(a3)
003b94: 6028         bra.b      $3bbe
003b96: 7000         moveq      #$0, d0
003b98: 102e8ebf     move.b     -$7141(a6), d0
003b9c: 61000e1e     bsr.w      $49bc
003ba0: 322c0002     move.w     $2(a4), d1
003ba4: 9240         sub.w      d0, d1
003ba6: 6012         bra.b      $3bba
003ba8: 302c0002     move.w     $2(a4), d0
003bac: 3200         move.w     d0, d1
003bae: 7000         moveq      #$0, d0
003bb0: 102e8ebf     move.b     -$7141(a6), d0
003bb4: 61000e06     bsr.w      $49bc
003bb8: d240         add.w      d0, d1
003bba: 37410002     move.w     d1, $2(a3)
003bbe: 2004         move.l     d4, d0
003bc0: 61000dfa     bsr.w      $49bc
003bc4: 7200         moveq      #$0, d1
003bc6: 322e8e44     move.w     -$71bc(a6), d1
003bca: 4c010000     mulu.l     d1, d0
003bce: 7200         moveq      #$0, d1
003bd0: 322e8e3e     move.w     -$71c2(a6), d1
003bd4: d0721810     add.w      $10(a2, d1.l), d0
003bd8: 37400004     move.w     d0, $4(a3)
003bdc: 284b         movea.l    a3, a4
003bde: 7000         moveq      #$0, d0
003be0: 302e8e54     move.w     -$71ac(a6), d0
003be4: d08b         add.l      a3, d0
003be6: 2640         movea.l    d0, a3
003be8: b7d7         cmpa.l     (a7), a3
003bea: 6500ff22     bcs.w      $3b0e
003bee: 508f         addq.l     #$8, a7
003bf0: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
003bf6: 4e5d         unlk       a5
003bf8: 4e75         rts        
003bfa: 4e550000     link.w     a5, #$0
003bfe: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003c02: 2440         movea.l    d0, a2
003c04: 518f         subq.l     #$8, a7
003c06: 99cc         suba.l     a4, a4
003c08: 282e8ec4     move.l     -$713c(a6), d4
003c0c: 206f000c     movea.l    $c(a7), a0
003c10: 7000         moveq      #$0, d0
003c12: 3010         move.w     (a0), d0
003c14: d08a         add.l      a2, d0
003c16: 2f400004     move.l     d0, $4(a7)
003c1a: 206f000c     movea.l    $c(a7), a0
003c1e: 30280002     move.w     $2(a0), d0
003c22: c0ee8e40     mulu.w     -$71c0(a6), d0
003c26: d0af0004     add.l      $4(a7), d0
003c2a: 2e80         move.l     d0, (a7)
003c2c: 266f0004     movea.l    $4(a7), a3
003c30: 600000fa     bra.w      $3d2c
003c34: 61000d9e     bsr.w      $49d4
003c38: 4a80         tst.l      d0
003c3a: 6712         beq.b      $3c4e
003c3c: 61000de6     bsr.w      $4a24
003c40: 17400006     move.b     d0, $6(a3)
003c44: 61000db6     bsr.w      $49fc
003c48: 17400007     move.b     d0, $7(a3)
003c4c: 600c         bra.b      $3c5a
003c4e: 176c00060006 move.b     $6(a4), $6(a3)
003c54: 176c00070007 move.b     $7(a4), $7(a3)
003c5a: b7ef0004     cmpa.l     $4(a7), a3
003c5e: 6608         bne.b      $3c68
003c60: 61000dd6     bsr.w      $4a38
003c64: 3680         move.w     d0, (a3)
003c66: 604a         bra.b      $3cb2
003c68: 61000d6a     bsr.w      $49d4
003c6c: 4a80         tst.l      d0
003c6e: 6720         beq.b      $3c90
003c70: 61000d62     bsr.w      $49d4
003c74: 4a80         tst.l      d0
003c76: 6708         beq.b      $3c80
003c78: 61000dbe     bsr.w      $4a38
003c7c: 3680         move.w     d0, (a3)
003c7e: 6022         bra.b      $3ca2
003c80: 7000         moveq      #$0, d0
003c82: 102e8ebf     move.b     -$7141(a6), d0
003c86: 61000d34     bsr.w      $49bc
003c8a: 3214         move.w     (a4), d1
003c8c: 9240         sub.w      d0, d1
003c8e: 6010         bra.b      $3ca0
003c90: 3014         move.w     (a4), d0
003c92: 3200         move.w     d0, d1
003c94: 7000         moveq      #$0, d0
003c96: 102e8ebf     move.b     -$7141(a6), d0
003c9a: 61000d20     bsr.w      $49bc
003c9e: d240         add.w      d0, d1
003ca0: 3681         move.w     d1, (a3)
003ca2: 61000d30     bsr.w      $49d4
003ca6: 4a80         tst.l      d0
003ca8: 6724         beq.b      $3cce
003caa: 61000d28     bsr.w      $49d4
003cae: 4a80         tst.l      d0
003cb0: 670a         beq.b      $3cbc
003cb2: 61000d84     bsr.w      $4a38
003cb6: 37400002     move.w     d0, $2(a3)
003cba: 6028         bra.b      $3ce4
003cbc: 7000         moveq      #$0, d0
003cbe: 102e8ebf     move.b     -$7141(a6), d0
003cc2: 61000cf8     bsr.w      $49bc
003cc6: 322c0002     move.w     $2(a4), d1
003cca: 9240         sub.w      d0, d1
003ccc: 6012         bra.b      $3ce0
003cce: 302c0002     move.w     $2(a4), d0
003cd2: 3200         move.w     d0, d1
003cd4: 7000         moveq      #$0, d0
003cd6: 102e8ebf     move.b     -$7141(a6), d0
003cda: 61000ce0     bsr.w      $49bc
003cde: d240         add.w      d0, d1
003ce0: 37410002     move.w     d1, $2(a3)
003ce4: 2004         move.l     d4, d0
003ce6: 61000cd4     bsr.w      $49bc
003cea: 7200         moveq      #$0, d1
003cec: 322e8e44     move.w     -$71bc(a6), d1
003cf0: 4c010000     mulu.l     d1, d0
003cf4: 7200         moveq      #$0, d1
003cf6: 322e8e3e     move.w     -$71c2(a6), d1
003cfa: d0721810     add.w      $10(a2, d1.l), d0
003cfe: 37400004     move.w     d0, $4(a3)
003d02: 61000d4c     bsr.w      $4a50
003d06: 7200         moveq      #$0, d1
003d08: 322e8e54     move.w     -$71ac(a6), d1
003d0c: 27801800     move.l     d0, (a3, d1.l)
003d10: 700e         moveq      #$e, d0
003d12: 61000ca8     bsr.w      $49bc
003d16: 7200         moveq      #$0, d1
003d18: 322e8e54     move.w     -$71ac(a6), d1
003d1c: 37801804     move.w     d0, $4(a3, d1.l)
003d20: 284b         movea.l    a3, a4
003d22: 7000         moveq      #$0, d0
003d24: 302e8e40     move.w     -$71c0(a6), d0
003d28: d08b         add.l      a3, d0
003d2a: 2640         movea.l    d0, a3
003d2c: b7d7         cmpa.l     (a7), a3
003d2e: 6500ff04     bcs.w      $3c34
003d32: 508f         addq.l     #$8, a7
003d34: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
003d3a: 4e5d         unlk       a5
003d3c: 4e75         rts        
003d3e: 4e550000     link.w     a5, #$0
003d42: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
003d46: 598f         subq.l     #$4, a7
003d48: 97cb         suba.l     a3, a3
003d4a: 206f0008     movea.l    $8(a7), a0
003d4e: 7000         moveq      #$0, d0
003d50: 3010         move.w     (a0), d0
003d52: d0af0004     add.l      $4(a7), d0
003d56: 2840         movea.l    d0, a4
003d58: 206f0008     movea.l    $8(a7), a0
003d5c: 30280002     move.w     $2(a0), d0
003d60: c0ee8e4c     mulu.w     -$71b4(a6), d0
003d64: d08c         add.l      a4, d0
003d66: 2e80         move.l     d0, (a7)
003d68: 244c         movea.l    a4, a2
003d6a: 6000009e     bra.w      $3e0a
003d6e: b5cc         cmpa.l     a4, a2
003d70: 6608         bne.b      $3d7a
003d72: 61000cc4     bsr.w      $4a38
003d76: 3480         move.w     d0, (a2)
003d78: 604a         bra.b      $3dc4
003d7a: 61000c58     bsr.w      $49d4
003d7e: 4a80         tst.l      d0
003d80: 6720         beq.b      $3da2
003d82: 61000c50     bsr.w      $49d4
003d86: 4a80         tst.l      d0
003d88: 6708         beq.b      $3d92
003d8a: 61000cac     bsr.w      $4a38
003d8e: 3480         move.w     d0, (a2)
003d90: 6022         bra.b      $3db4
003d92: 7000         moveq      #$0, d0
003d94: 102e8ebf     move.b     -$7141(a6), d0
003d98: 61000c22     bsr.w      $49bc
003d9c: 3213         move.w     (a3), d1
003d9e: 9240         sub.w      d0, d1
003da0: 6010         bra.b      $3db2
003da2: 3013         move.w     (a3), d0
003da4: 3200         move.w     d0, d1
003da6: 7000         moveq      #$0, d0
003da8: 102e8ebf     move.b     -$7141(a6), d0
003dac: 61000c0e     bsr.w      $49bc
003db0: d240         add.w      d0, d1
003db2: 3481         move.w     d1, (a2)
003db4: 61000c1e     bsr.w      $49d4
003db8: 4a80         tst.l      d0
003dba: 6724         beq.b      $3de0
003dbc: 61000c16     bsr.w      $49d4
003dc0: 4a80         tst.l      d0
003dc2: 670a         beq.b      $3dce
003dc4: 61000c72     bsr.w      $4a38
003dc8: 35400002     move.w     d0, $2(a2)
003dcc: 6028         bra.b      $3df6
003dce: 7000         moveq      #$0, d0
003dd0: 102e8ebf     move.b     -$7141(a6), d0
003dd4: 61000be6     bsr.w      $49bc
003dd8: 322b0002     move.w     $2(a3), d1
003ddc: 9240         sub.w      d0, d1
003dde: 6012         bra.b      $3df2
003de0: 302b0002     move.w     $2(a3), d0
003de4: 3200         move.w     d0, d1
003de6: 7000         moveq      #$0, d0
004798: 4e550000     link.w     a5, #$0
00479c: 48e7c080     movem.l    d0-d1/a0, -(a7)
0047a0: 598f         subq.l     #$4, a7
0047a2: 206f0004     movea.l    $4(a7), a0
0047a6: 303c00ff     move.w     #$ff, d0
0047aa: c0680006     and.w      $6(a0), d0
0047ae: 7200         moveq      #$0, d1
0047b0: 3200         move.w     d0, d1
0047b2: 2e81         move.l     d1, (a7)
0047b4: 700b         moveq      #$b, d0
0047b6: 2217         move.l     (a7), d1
0047b8: e1a9         lsl.l      d0, d1
0047ba: 2001         move.l     d1, d0
0047bc: 610002aa     bsr.w      $4a68
0047c0: 7200         moveq      #$0, d1
0047c2: 1200         move.b     d0, d1
0047c4: 2d418ef4     move.l     d1, -$710c(a6)
0047c8: 2d6f00048ef8 move.l     $4(a7), -$7108(a6)
0047ce: 588f         addq.l     #$4, a7
0047d0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0047d6: 4e5d         unlk       a5
0047d8: 4e75         rts        
0047da: 4e550000     link.w     a5, #$0
0047de: 48e7c000     movem.l    d0-d1, -(a7)
0047e2: 2f2f0004     move.l     $4(a7), -(a7)
0047e6: 222e8ef8     move.l     -$7108(a6), d1
0047ea: 202f0004     move.l     $4(a7), d0
0047ee: 6100215e     bsr.w      $694e
0047f2: 588f         addq.l     #$4, a7
0047f4: 202f0004     move.l     $4(a7), d0
0047f8: d1ae8ef8     add.l      d0, -$7108(a6)
0047fc: 4e5d         unlk       a5
0047fe: 4e75         rts        
004800: 4e550000     link.w     a5, #$0
004804: 48e7c080     movem.l    d0-d1/a0, -(a7)
004808: 598f         subq.l     #$4, a7
00480a: 206f0008     movea.l    $8(a7), a0
00480e: 30280002     move.w     $2(a0), d0
004812: c0ef001a     mulu.w     $1a(a7), d0
004816: 2e80         move.l     d0, (a7)
004818: 4a2f001f     tst.b      $1f(a7)
00481c: 6708         beq.b      $4826
00481e: 7000         moveq      #$0, d0
004820: 302f001a     move.w     $1a(a7), d0
004824: d197         add.l      d0, (a7)
004826: 2217         move.l     (a7), d1
004828: 206f0008     movea.l    $8(a7), a0
00482c: 7000         moveq      #$0, d0
00482e: 3010         move.w     (a0), d0
004830: d0af0004     add.l      $4(a7), d0
004834: 61a4         bsr.b      $47da
004836: 588f         addq.l     #$4, a7
004838: 4ced0100fffc movem.l    -$4(a5), a0
00483e: 4e5d         unlk       a5
004840: 4e75         rts        
004842: 4e550000     link.w     a5, #$0
004846: 48e7c080     movem.l    d0-d1/a0, -(a7)
00484a: 2057         movea.l    (a7), a0
00484c: 20ae8ef8     move.l     -$7108(a6), (a0)
004850: 202f0004     move.l     $4(a7), d0
004854: d1ae8ef8     add.l      d0, -$7108(a6)
004858: 4ced0100fffc movem.l    -$4(a5), a0
00485e: 4e5d         unlk       a5
004860: 4e75         rts        
004862: 4e550000     link.w     a5, #$0
004866: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
00486a: 4fefff3c     lea.l      -$c4(a7), a7
00486e: 202e8ef4     move.l     -$710c(a6), d0
004872: 61000148     bsr.w      $49bc
004876: 3f4000c2     move.w     d0, $c2(a7)
00487a: 202e8ef4     move.l     -$710c(a6), d0
00487e: 6100013c     bsr.w      $49bc
004882: 3f4000c0     move.w     d0, $c0(a7)
004886: 4a6f00c2     tst.w      $c2(a7)
00488a: 6608         bne.b      $4894
00488c: 4a6f00c0     tst.w      $c0(a7)
004890: 670000f4     beq.w      $4986
004894: 7800         moveq      #$0, d4
004896: 49d7         lea.l      (a7), a4
004898: 6028         bra.b      $48c2
00489a: 7005         moveq      #$5, d0
00489c: 6100011e     bsr.w      $49bc
0048a0: 1880         move.b     d0, (a4)
0048a2: 7a00         moveq      #$0, d5
0048a4: 6010         bra.b      $48b6
0048a6: 7000         moveq      #$0, d0
0048a8: 1005         move.b     d5, d0
0048aa: 2200         move.l     d0, d1
0048ac: 61000162     bsr.w      $4a10
0048b0: 19801801     move.b     d0, $1(a4, d1.l)
0048b4: 5205         addq.b     #$1, d5
0048b6: ba14         cmp.b      (a4), d5
0048b8: 65ec         bcs.b      $48a6
0048ba: 5204         addq.b     #$1, d4
0048bc: d9fc00000020 adda.l     #$20, a4
0048c2: 0c040006     cmpi.b     #$6, d4
0048c6: 65d2         bcs.b      $489a
0048c8: 7000         moveq      #$0, d0
0048ca: 302f00c0     move.w     $c0(a7), d0
0048ce: d0af00c4     add.l      $c4(a7), d0
0048d2: 2440         movea.l    d0, a2
0048d4: 7000         moveq      #$0, d0
0048d6: 302f00c2     move.w     $c2(a7), d0
0048da: d0af00c4     add.l      $c4(a7), d0
0048de: 2640         movea.l    d0, a3
0048e0: 600000a0     bra.w      $4982
0048e4: 610000ee     bsr.w      $49d4
0048e8: 41ee9450     lea.l      -$6bb0(a6), a0
0048ec: 6066         bra.b      $4954
0048ee: 610000f8     bsr.w      $49e8
0048f2: 41ee9452     lea.l      -$6bae(a6), a0
0048f6: 605c         bra.b      $4954
0048f8: 61000102     bsr.w      $49fc
0048fc: 41ee9456     lea.l      -$6baa(a6), a0
004900: 6052         bra.b      $4954
004902: 6100010c     bsr.w      $4a10
004906: 1800         move.b     d0, d4
004908: 0c040026     cmpi.b     #$26, d4
00490c: 6304         bls.b      $4912
00490e: 1684         move.b     d4, (a3)
004910: 606e         bra.b      $4980
004912: 0c04001b     cmpi.b     #$1b, d4
004916: 6334         bls.b      $494c
004918: 41d7         lea.l      (a7), a0
00491a: 2008         move.l     a0, d0
00491c: 7200         moveq      #$0, d1
00491e: 1204         move.b     d4, d1
004920: 04410021     subi.w     #$21, d1
004924: 48c1         ext.l      d1
004926: eb89         lsl.l      #$5, d1
004928: d081         add.l      d1, d0
00492a: 2840         movea.l    d0, a4
00492c: 7000         moveq      #$0, d0
00492e: 1014         move.b     (a4), d0
004930: 2f00         move.l     d0, -(a7)
004932: 200c         move.l     a4, d0
004934: 5280         addq.l     #$1, d0
004936: 2200         move.l     d0, d1
004938: 200b         move.l     a3, d0
00493a: 61002012     bsr.w      $694e
00493e: 588f         addq.l     #$4, a7
004940: 7000         moveq      #$0, d0
004942: 1014         move.b     (a4), d0
004944: 5340         subq.w     #$1, d0
004946: 48c0         ext.l      d0
004948: d7c0         adda.l     d0, a3
00494a: 6034         bra.b      $4980
00494c: 7000         moveq      #$0, d0
00494e: 1004         move.b     d4, d0
004950: 41ee945e     lea.l      -$6ba2(a6), a0
004954: 16b00800     move.b     (a0, d0.l), (a3)
004958: 6026         bra.b      $4980
00495a: 6100008c     bsr.w      $49e8
00495e: 0c80000000ff cmpi.l     #$ff, d0
004964: 629c         bhi.b      $4902
004966: 4a00         tst.b      d0
004968: 6700ff7a     beq.w      $48e4
00496c: 0c000001     cmpi.b     #$1, d0
004970: 6700ff7c     beq.w      $48ee
004974: 0c000002     cmpi.b     #$2, d0
004978: 6700ff7e     beq.w      $48f8
00497c: 6000ff84     bra.w      $4902
004980: 528b         addq.l     #$1, a3
004982: b7ca         cmpa.l     a2, a3
004984: 63d4         bls.b      $495a
004986: 4fef00c4     lea.l      $c4(a7), a7
00498a: 4ced1d32ffe4 movem.l    -$1c(a5), d1/d4-d5/a0/a2-a4
004990: 4e5d         unlk       a5
004992: 4e75         rts        
004994: 4e550000     link.w     a5, #$0
004998: 48e78000     movem.l    d0, -(a7)
00499c: 202e8ef8     move.l     -$7108(a6), d0
0049a0: 61000006     bsr.w      $49a8
0049a4: 4e5d         unlk       a5
0049a6: 4e75         rts        
0049a8: 4e550000     link.w     a5, #$0
0049ac: 48e78000     movem.l    d0, -(a7)
0049b0: 2d578f00     move.l     (a7), -$7100(a6)
0049b4: 42ae8efc     clr.l      -$7104(a6)
0049b8: 4e5d         unlk       a5
0049ba: 4e75         rts        
0049bc: 48e74080     movem.l    d1/a0, -(a7)
0049c0: 41ee8efc     lea.l      -$7104(a6), a0
0049c4: 2210         move.l     (a0), d1
0049c6: d198         add.l      d0, (a0)+
0049c8: 2050         movea.l    (a0), a0
0049ca: e9d00860     bfextu     (a0){1:0}, d0
0049ce: 4cdf0102     movem.l    (a7)+, d1/a0
0049d2: 4e75         rts        
0049d4: 2f08         move.l     a0, -(a7)
0049d6: 41ee8efc     lea.l      -$7104(a6), a0
0049da: 2010         move.l     (a0), d0
0049dc: 5298         addq.l     #$1, (a0)+
0049de: 2050         movea.l    (a0), a0
0049e0: e9d00801     bfextu     (a0){0:1}, d0
0049e4: 205f         movea.l    (a7)+, a0
0049e6: 4e75         rts        
0049e8: 2f08         move.l     a0, -(a7)
0049ea: 41ee8efc     lea.l      -$7104(a6), a0
0049ee: 2010         move.l     (a0), d0
0049f0: 5498         addq.l     #$2, (a0)+
0049f2: 2050         movea.l    (a0), a0
0049f4: e9d00802     bfextu     (a0){0:2}, d0
0049f8: 205f         movea.l    (a7)+, a0
0049fa: 4e75         rts        
0049fc: 2f08         move.l     a0, -(a7)
0049fe: 41ee8efc     lea.l      -$7104(a6), a0
004a02: 2010         move.l     (a0), d0
004a04: 5698         addq.l     #$3, (a0)+
004a06: 2050         movea.l    (a0), a0
004a08: e9d00803     bfextu     (a0){0:3}, d0
004a0c: 205f         movea.l    (a7)+, a0
004a0e: 4e75         rts        
004a10: 2f08         move.l     a0, -(a7)
004a12: 41ee8efc     lea.l      -$7104(a6), a0
004a16: 2010         move.l     (a0), d0
004a18: 5e98         addq.l     #$7, (a0)+
004a1a: 2050         movea.l    (a0), a0
004a1c: e9d00807     bfextu     (a0){0:7}, d0
004a20: 205f         movea.l    (a7)+, a0
