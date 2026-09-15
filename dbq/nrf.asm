00003c: 0052005e     ori.w      #$5e, (a2)
000040: 006a00760082 ori.w      #$76, $82(a2)
000046: 008e         .dc.w      $008e
000048: 009a00a600b2 ori.l      #$a600b2, (a2)+
00004e: 00be         .dc.w      $00be
000050: 00ca         .dc.w      $00ca
000052: 00d6         .dc.w      $00d6
000054: 00e2         .dc.w      $00e2
000056: 54696d20     addq.w     #$2, $6d20(a1)
00005a: 4861         .dc.w      $4861
00005c: 7272         moveq      #$72, d1
00005e: 6973         bvs.b      $d3
000060: 000048e7     ori.b      #$e7, d0
000064: 004a         .dc.w      $004a
000066: 234e001e     move.l     a6, $1e(a1)
00006a: 4852         pea.l      (a2)
00006c: 4856         pea.l      (a6)
00006e: 4de90022     lea.l      $22(a1), a6
000072: 2009         move.l     a1, d0
000074: 220c         move.l     a4, d1
000076: 4e90         jsr        (a0)
000078: 508f         addq.l     #$8, a7
00007a: 4cdf5200     movem.l    (a7)+, a1/a4/a6
00007e: 7200         moveq      #$0, d1
000080: 3200         move.w     d0, d1
000082: 6704         beq.b      $88
000084: 003c0001     ori.b      #$1, ccr
000088: 4e75         rts        
00008a: 2c40         movea.l    d0, a6
00008c: 4e75         rts        
00008e: 45fafffe     lea.l      $8e(pc), a2
000092: 41fa0096     lea.l      $12a(pc), a0
000096: 6000ffca     bra.w      $62
00009a: 45fafffe     lea.l      $9a(pc), a2
00009e: 41fa018e     lea.l      $22e(pc), a0
0000a2: 6000ffbe     bra.w      $62
0000a6: 45fafffe     lea.l      $a6(pc), a2
0000aa: 41fa02c8     lea.l      $374(pc), a0
0000ae: 6000ffb2     bra.w      $62
0000b2: 45fafffe     lea.l      $b2(pc), a2
0000b6: 41fa02bc     lea.l      $374(pc), a0
0000ba: 6000ffa6     bra.w      $62
0000be: 45fafffe     lea.l      $be(pc), a2
0000c2: 41fa0d64     lea.l      $e28(pc), a0
0000c6: 6000ff9a     bra.w      $62
0000ca: 45fafffe     lea.l      $ca(pc), a2
0000ce: 41fa1348     lea.l      $1418(pc), a0
0000d2: 6000ff8e     bra.w      $62
0000d6: 45fafffe     lea.l      $d6(pc), a2
0000da: 41fa105e     lea.l      $113a(pc), a0
0000de: 6000ff82     bra.w      $62
0000e2: 45fafffe     lea.l      $e2(pc), a2
0000e6: 41fa11d6     lea.l      $12be(pc), a0
0000ea: 6000ff76     bra.w      $62
0000ee: 45fafffe     lea.l      $ee(pc), a2
0000f2: 41fa1082     lea.l      $1176(pc), a0
0000f6: 6000ff6a     bra.w      $62
0000fa: 45fafffe     lea.l      $fa(pc), a2
0000fe: 41fa11e6     lea.l      $12e6(pc), a0
000102: 6000ff5e     bra.w      $62
000106: 45fafffe     lea.l      $106(pc), a2
00010a: 41fa0de0     lea.l      $eec(pc), a0
00010e: 6000ff52     bra.w      $62
000112: 45fafffe     lea.l      $112(pc), a2
000116: 41fa0eb6     lea.l      $fce(pc), a0
00011a: 6000ff46     bra.w      $62
00011e: 45fafffe     lea.l      $11e(pc), a2
000122: 41fa022c     lea.l      $350(pc), a0
000126: 6000ff3a     bra.w      $62
00012a: 4e550000     link.w     a5, #$0
00012e: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
000132: 2440         movea.l    d0, a2
000134: 598f         subq.l     #$4, a7
000136: 266a000a     movea.l    $a(a2), a3
00013a: 206a0004     movea.l    $4(a2), a0
00013e: 20280004     move.l     $4(a0), d0
000142: 25400032     move.l     d0, $32(a2)
000146: 6100ff42     bsr.w      $8a
00014a: 256f002c0022 move.l     $2c(a7), $22(a2)
000150: 41d7         lea.l      (a7), a0
000152: 2208         move.l     a0, d1
000154: 7020         moveq      #$20, d0
000156: d08b         add.l      a3, d0
000158: 610002d6     bsr.w      $430
00015c: 2800         move.l     d0, d4
00015e: 6766         beq.b      $1c6
000160: 4a97         tst.l      (a7)
000162: 660a         bne.b      $16e
000164: 203c000000cb move.l     #$cb, d0
00016a: 600000b6     bra.w      $222
00016e: 41d7         lea.l      (a7), a0
000170: 2208         move.l     a0, d1
000172: 703e         moveq      #$3e, d0
000174: 61000bf6     bsr.w      $d6c
000178: 25400036     move.l     d0, $36(a2)
00017c: 660a         bne.b      $188
00017e: 203c000000ed move.l     #$ed, d0
000184: 6000009c     bra.w      $222
000188: 2204         move.l     d4, d1
00018a: 200a         move.l     a2, d0
00018c: 610001f8     bsr.w      $386
000190: 4a80         tst.l      d0
000192: 660a         bne.b      $19e
000194: 2d7c000000da002a move.l     #$da, $2a(a6)
00019c: 6022         bra.b      $1c0
00019e: 0cae000000d8002a cmpi.l     #$d8, $2a(a6)
0001a6: 6618         bne.b      $1c0
0001a8: 2eab0008     move.l     $8(a3), (a7)
0001ac: 703e         moveq      #$3e, d0
0001ae: d097         add.l      (a7), d0
0001b0: 2f00         move.l     d0, -(a7)
0001b2: 2204         move.l     d4, d1
0001b4: 200a         move.l     a2, d0
0001b6: 6100052a     bsr.w      $6e2
0001ba: 588f         addq.l     #$4, a7
0001bc: 4a80         tst.l      d0
0001be: 670c         beq.b      $1cc
0001c0: 200a         move.l     a2, d0
0001c2: 6100044e     bsr.w      $612
0001c6: 202e002a     move.l     $2a(a6), d0
0001ca: 6056         bra.b      $222
0001cc: 286a0036     movea.l    $36(a2), a4
0001d0: 200c         move.l     a4, d0
0001d2: 6100030c     bsr.w      $4e0
0001d6: 196c0030003a move.b     $30(a4), $3a(a4)
0001dc: 196c0031003b move.b     $31(a4), $3b(a4)
0001e2: 196c0032003c move.b     $32(a4), $3c(a4)
0001e8: 29570036     move.l     (a7), $36(a4)
0001ec: 197c00010035 move.b     #$1, $35(a4)
0001f2: 196b0007002d move.b     $7(a3), $2d(a4)
0001f8: 2a2a0012     move.l     $12(a2), d5
0001fc: 1945002f     move.b     d5, $2f(a4)
000200: 7010         moveq      #$10, d0
000202: e0ad         lsr.l      d0, d5
000204: 1945002e     move.b     d5, $2e(a4)
000208: 200a         move.l     a2, d0
00020a: 61000bc2     bsr.w      $dce
00020e: 2f04         move.l     d4, -(a7)
000210: 7000         moveq      #$0, d0
000212: 102b0003     move.b     $3(a3), d0
000216: 2200         move.l     d0, d1
000218: 200a         move.l     a2, d0
00021a: 610003c0     bsr.w      $5dc
00021e: 588f         addq.l     #$4, a7
000220: 7000         moveq      #$0, d0
000222: 588f         addq.l     #$4, a7
000224: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
00022a: 4e5d         unlk       a5
00022c: 4e75         rts        
00022e: 4e550000     link.w     a5, #$0
000232: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
000236: 2440         movea.l    d0, a2
000238: 598f         subq.l     #$4, a7
00023a: 206a0004     movea.l    $4(a2), a0
00023e: 20280004     move.l     $4(a0), d0
000242: 25400032     move.l     d0, $32(a2)
000246: 6100fe42     bsr.w      $8a
00024a: 256f00240022 move.l     $24(a7), $22(a2)
000250: 206a000a     movea.l    $a(a2), a0
000254: 18280003     move.b     $3(a0), d4
000258: 41d7         lea.l      (a7), a0
00025a: 2208         move.l     a0, d1
00025c: 703e         moveq      #$3e, d0
00025e: 61000b0c     bsr.w      $d6c
000262: 25400036     move.l     d0, $36(a2)
000266: 660a         bne.b      $272
000268: 203c000000ed move.l     #$ed, d0
00026e: 600000d4     bra.w      $344
000272: 41d7         lea.l      (a7), a0
000274: 2208         move.l     a0, d1
000276: 7020         moveq      #$20, d0
000278: d0aa000a     add.l      $a(a2), d0
00027c: 610001b2     bsr.w      $430
000280: 2640         movea.l    d0, a3
000282: 4a80         tst.l      d0
000284: 67000092     beq.w      $318
000288: 4a97         tst.l      (a7)
00028a: 6642         bne.b      $2ce
00028c: 08040007     btst.b     #$7, d4
000290: 6706         beq.b      $298
000292: 08040001     btst.b     #$1, d4
000296: 6710         beq.b      $2a8
000298: 200a         move.l     a2, d0
00029a: 61000376     bsr.w      $612
00029e: 203c000000d6 move.l     #$d6, d0
0002a4: 6000009e     bra.w      $344
0002a8: 4853         pea.l      (a3)
0002aa: 7000         moveq      #$0, d0
0002ac: 1004         move.b     d4, d0
0002ae: 2200         move.l     d0, d1
0002b0: 200a         move.l     a2, d0
0002b2: 61000328     bsr.w      $5dc
0002b6: 588f         addq.l     #$4, a7
0002b8: 7008         moveq      #$8, d0
0002ba: 2540002a     move.l     d0, $2a(a2)
0002be: 2540002e     move.l     d0, $2e(a2)
0002c2: 7208         moveq      #$8, d1
0002c4: 200a         move.l     a2, d0
0002c6: 61000ad2     bsr.w      $d9a
0002ca: 60000076     bra.w      $342
0002ce: 220b         move.l     a3, d1
0002d0: 200a         move.l     a2, d0
0002d2: 610000b2     bsr.w      $386
0002d6: 4a80         tst.l      d0
0002d8: 6638         bne.b      $312
0002da: 7000         moveq      #$0, d0
0002dc: 1004         move.b     d4, d0
0002de: 2f00         move.l     d0, -(a7)
0002e0: 222f000c     move.l     $c(a7), d1
0002e4: 200a         move.l     a2, d0
0002e6: 610000ec     bsr.w      $3d4
0002ea: 588f         addq.l     #$4, a7
0002ec: 4a80         tst.l      d0
0002ee: 6622         bne.b      $312
0002f0: 200a         move.l     a2, d0
0002f2: 6100026c     bsr.w      $560
0002f6: 4a80         tst.l      d0
0002f8: 6610         bne.b      $30a
0002fa: 08040001     btst.b     #$1, d4
0002fe: 671e         beq.b      $31e
000300: 200a         move.l     a2, d0
000302: 6100029e     bsr.w      $5a2
000306: 4a80         tst.l      d0
000308: 6714         beq.b      $31e
00030a: 2d7c000000fd002a move.l     #$fd, $2a(a6)
000312: 200a         move.l     a2, d0
000314: 610002fc     bsr.w      $612
000318: 202e002a     move.l     $2a(a6), d0
00031c: 6026         bra.b      $344
00031e: 08040001     btst.b     #$1, d4
000322: 670e         beq.b      $332
000324: 202a0036     move.l     $36(a2), d0
000328: 610001b6     bsr.w      $4e0
00032c: 200a         move.l     a2, d0
00032e: 61000a9e     bsr.w      $dce
000332: 4853         pea.l      (a3)
000334: 7000         moveq      #$0, d0
000336: 1004         move.b     d4, d0
000338: 2200         move.l     d0, d1
00033a: 200a         move.l     a2, d0
00033c: 6100029e     bsr.w      $5dc
000340: 588f         addq.l     #$4, a7
000342: 7000         moveq      #$0, d0
000344: 588f         addq.l     #$4, a7
000346: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
00034c: 4e5d         unlk       a5
00034e: 4e75         rts        
000350: 4e550000     link.w     a5, #$0
000354: 48e7c020     movem.l    d0-d1/a2, -(a7)
000358: 2440         movea.l    d0, a2
00035a: 4a2a0003     tst.b      $3(a2)
00035e: 6704         beq.b      $364
000360: 7000         moveq      #$0, d0
000362: 6006         bra.b      $36a
000364: 200a         move.l     a2, d0
000366: 610002aa     bsr.w      $612
00036a: 4ced0400fffc movem.l    -$4(a5), a2
000370: 4e5d         unlk       a5
000372: 4e75         rts        
000374: 4e550000     link.w     a5, #$0
000378: 48e78000     movem.l    d0, -(a7)
00037c: 203c000000d0 move.l     #$d0, d0
000382: 4e5d         unlk       a5
000384: 4e75         rts        
000386: 4e550000     link.w     a5, #$0
00038a: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
00038e: 2440         movea.l    d0, a2
000390: 2641         movea.l    d1, a3
000392: 286a0036     movea.l    $36(a2), a4
000396: 7808         moveq      #$8, d4
000398: 6018         bra.b      $3b2
00039a: 220b         move.l     a3, d1
00039c: 200c         move.l     a4, d0
00039e: 610002ba     bsr.w      $65a
0003a2: 4a80         tst.l      d0
0003a4: 6608         bne.b      $3ae
0003a6: 2544002e     move.l     d4, $2e(a2)
0003aa: 7000         moveq      #$0, d0
0003ac: 601c         bra.b      $3ca
0003ae: 282c0020     move.l     $20(a4), d4
0003b2: 2204         move.l     d4, d1
0003b4: 200a         move.l     a2, d0
0003b6: 610009e2     bsr.w      $d9a
0003ba: 0c14ffff     cmpi.b     #$ff, (a4)
0003be: 66da         bne.b      $39a
0003c0: 203c000000d8 move.l     #$d8, d0
0003c6: 2d40002a     move.l     d0, $2a(a6)
0003ca: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
0003d0: 4e5d         unlk       a5
0003d2: 4e75         rts        
0003d4: 4e550000     link.w     a5, #$0
0003d8: 48e7cc38     movem.l    d0-d1/d4-d5/a2-a4, -(a7)
0003dc: 2440         movea.l    d0, a2
0003de: 2641         movea.l    d1, a3
0003e0: 282f0024     move.l     $24(a7), d4
0003e4: 286a0036     movea.l    $36(a2), a4
0003e8: 0c1400ff     cmpi.b     #$ff, (a4)
0003ec: 6608         bne.b      $3f6
0003ee: 203c000000d3 move.l     #$d3, d0
0003f4: 6028         bra.b      $41e
0003f6: 1a2c002d     move.b     $2d(a4), d5
0003fa: 4a6b0014     tst.w      $14(a3)
0003fe: 670e         beq.b      $40e
000400: 7000         moveq      #$0, d0
000402: 102c002e     move.b     $2e(a4), d0
000406: b06b0014     cmp.w      $14(a3), d0
00040a: 6702         beq.b      $40e
00040c: e60d         lsr.b      #$3, d5
00040e: ca04         and.b      d4, d5
000410: b905         eor.b      d4, d5
000412: 02050007     andi.b     #$7, d5
000416: 670c         beq.b      $424
000418: 203c000000d6 move.l     #$d6, d0
00041e: 2d40002a     move.l     d0, $2a(a6)
000422: 6002         bra.b      $426
000424: 7000         moveq      #$0, d0
000426: 4ced1c30ffec movem.l    -$14(a5), d4-d5/a2-a4
00042c: 4e5d         unlk       a5
00042e: 4e75         rts        
000430: 4e550000     link.w     a5, #$0
000434: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
000438: 2440         movea.l    d0, a2
00043a: 2052         movea.l    (a2), a0
00043c: 0c10002f     cmpi.b     #$2f, (a0)
000440: 6660         bne.b      $4a2
000442: 2012         move.l     (a2), d0
000444: 6100024a     bsr.w      $690
000448: 2800         move.l     d0, d4
00044a: 72ff         moveq      #$ff, d1
00044c: b280         cmp.l      d0, d1
00044e: 675a         beq.b      $4aa
000450: 2652         movea.l    (a2), a3
000452: d7c4         adda.l     d4, a3
000454: 200b         move.l     a3, d0
000456: 615e         bsr.b      $4b6
000458: 4a80         tst.l      d0
00045a: 670a         beq.b      $466
00045c: 206f0004     movea.l    $4(a7), a0
000460: 4290         clr.l      (a0)
000462: 2852         movea.l    (a2), a4
000464: 6036         bra.b      $49c
000466: 0c13002f     cmpi.b     #$2f, (a3)
00046a: 6636         bne.b      $4a2
00046c: 200b         move.l     a3, d0
00046e: 5280         addq.l     #$1, d0
000470: 2840         movea.l    d0, a4
000472: 200b         move.l     a3, d0
000474: 6100021a     bsr.w      $690
000478: 2800         move.l     d0, d4
00047a: 72ff         moveq      #$ff, d1
00047c: b280         cmp.l      d0, d1
00047e: 672a         beq.b      $4aa
000480: d7c4         adda.l     d4, a3
000482: 200b         move.l     a3, d0
000484: 6130         bsr.b      $4b6
000486: 4a80         tst.l      d0
000488: 6718         beq.b      $4a2
00048a: 5384         subq.l     #$1, d4
00048c: 206f0004     movea.l    $4(a7), a0
000490: 2084         move.l     d4, (a0)
000492: 206f0004     movea.l    $4(a7), a0
000496: 701c         moveq      #$1c, d0
000498: b090         cmp.l      (a0), d0
00049a: 6d06         blt.b      $4a2
00049c: 248b         move.l     a3, (a2)
00049e: 200c         move.l     a4, d0
0004a0: 600a         bra.b      $4ac
0004a2: 2d7c000000d7002a move.l     #$d7, $2a(a6)
0004aa: 7000         moveq      #$0, d0
0004ac: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
0004b2: 4e5d         unlk       a5
0004b4: 4e75         rts        
0004b6: 4e550000     link.w     a5, #$0
0004ba: 48e78020     movem.l    d0/a2, -(a7)
0004be: 2440         movea.l    d0, a2
0004c0: 0c120020     cmpi.b     #$20, (a2)
0004c4: 670a         beq.b      $4d0
0004c6: 4a12         tst.b      (a2)
0004c8: 6706         beq.b      $4d0
0004ca: 0c12000d     cmpi.b     #$d, (a2)
0004ce: 6604         bne.b      $4d4
0004d0: 7001         moveq      #$1, d0
0004d2: 6002         bra.b      $4d6
0004d4: 7000         moveq      #$0, d0
0004d6: 4ced0400fffc movem.l    -$4(a5), a2
0004dc: 4e5d         unlk       a5
0004de: 4e75         rts        
0004e0: 4e550000     link.w     a5, #$0
0004e4: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
0004e8: 2440         movea.l    d0, a2
0004ea: 4feffff2     lea.l      -$e(a7), a7
0004ee: 486f0002     pea.l      $2(a7)
0004f2: 486f0004     pea.l      $4(a7)
0004f6: 486f000e     pea.l      $e(a7)
0004fa: 41ef0016     lea.l      $16(a7), a0
0004fe: 2208         move.l     a0, d1
000500: 7000         moveq      #$0, d0
000502: 610001ac     bsr.w      $6b0
000506: 4fef000c     lea.l      $c(a7), a7
00050a: 47ef000a     lea.l      $a(a7), a3
00050e: 156b00020034 move.b     $2(a3), $34(a2)
000514: 156b00010033 move.b     $1(a3), $33(a2)
00051a: 47ef0006     lea.l      $6(a7), a3
00051e: 156b00030032 move.b     $3(a3), $32(a2)
000524: 156b00020031 move.b     $2(a3), $31(a2)
00052a: 02afffff00000006 andi.l     #$ffff0000, $6(a7)
000532: 7010         moveq      #$10, d0
000534: 222f0006     move.l     $6(a7), d1
000538: e0a1         asr.l      d0, d1
00053a: 2f410006     move.l     d1, $6(a7)
00053e: 7264         moveq      #$64, d1
000540: 202f0006     move.l     $6(a7), d0
000544: 61000fbc     bsr.w      $1502
000548: 2f400006     move.l     d0, $6(a7)
00054c: 156b00030030 move.b     $3(a3), $30(a2)
000552: 4fef000e     lea.l      $e(a7), a7
000556: 4ced0d02fff0 movem.l    -$10(a5), d1/a0/a2-a3
00055c: 4e5d         unlk       a5
00055e: 4e75         rts        
000560: 4e550000     link.w     a5, #$0
000564: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
000568: 2440         movea.l    d0, a2
00056a: 206a0032     movea.l    $32(a2), a0
00056e: 2668000a     movea.l    $a(a0), a3
000572: 601e         bra.b      $592
000574: b7ca         cmpa.l     a2, a3
000576: 6716         beq.b      $58e
000578: 202b002e     move.l     $2e(a3), d0
00057c: b0aa002e     cmp.l      $2e(a2), d0
000580: 660c         bne.b      $58e
000582: 082b00010002 btst.b     #$1, $2(a3)
000588: 6704         beq.b      $58e
00058a: 7001         moveq      #$1, d0
00058c: 600a         bra.b      $598
00058e: 266b0016     movea.l    $16(a3), a3
000592: 200b         move.l     a3, d0
000594: 66de         bne.b      $574
000596: 7000         moveq      #$0, d0
000598: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00059e: 4e5d         unlk       a5
0005a0: 4e75         rts        
0005a2: 4e550000     link.w     a5, #$0
0005a6: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
0005aa: 2440         movea.l    d0, a2
0005ac: 206a0032     movea.l    $32(a2), a0
0005b0: 2668000a     movea.l    $a(a0), a3
0005b4: 6016         bra.b      $5cc
0005b6: b7ca         cmpa.l     a2, a3
0005b8: 670e         beq.b      $5c8
0005ba: 202b002e     move.l     $2e(a3), d0
0005be: b0aa002e     cmp.l      $2e(a2), d0
0005c2: 6604         bne.b      $5c8
0005c4: 7001         moveq      #$1, d0
0005c6: 600a         bra.b      $5d2
0005c8: 266b0016     movea.l    $16(a3), a3
0005cc: 200b         move.l     a3, d0
0005ce: 66e6         bne.b      $5b6
0005d0: 7000         moveq      #$0, d0
0005d2: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0005d8: 4e5d         unlk       a5
0005da: 4e75         rts        
0005dc: 4e550000     link.w     a5, #$0
0005e0: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0005e4: 2440         movea.l    d0, a2
0005e6: 156f00070002 move.b     $7(a7), $2(a2)
0005ec: 42aa002a     clr.l      $2a(a2)
0005f0: 222f0018     move.l     $18(a7), d1
0005f4: 203c000000e0 move.l     #$e0, d0
0005fa: d08a         add.l      a2, d0
0005fc: 613e         bsr.b      $63c
0005fe: 7000         moveq      #$0, d0
000600: 3012         move.w     (a2), d0
000602: 206a000a     movea.l    $a(a2), a0
000606: 2080         move.l     d0, (a0)
000608: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00060e: 4e5d         unlk       a5
000610: 4e75         rts        
000612: 4e550000     link.w     a5, #$0
000616: 48e7c020     movem.l    d0-d1/a2, -(a7)
00061a: 2440         movea.l    d0, a2
00061c: 4aaa0036     tst.l      $36(a2)
000620: 670e         beq.b      $630
000622: 222a0036     move.l     $36(a2), d1
000626: 703e         moveq      #$3e, d0
000628: 61000760     bsr.w      $d8a
00062c: 42aa0036     clr.l      $36(a2)
000630: 7000         moveq      #$0, d0
000632: 4ced0402fff8 movem.l    -$8(a5), d1/a2
000638: 4e5d         unlk       a5
00063a: 4e75         rts        
00063c: 4e550000     link.w     a5, #$0
000640: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
000644: 2440         movea.l    d0, a2
000646: 2641         movea.l    d1, a3
000648: 284a         movea.l    a2, a4
00064a: 18db         move.b     (a3)+, (a4)+
00064c: 66fc         bne.b      $64a
00064e: 200a         move.l     a2, d0
000650: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
000656: 4e5d         unlk       a5
000658: 4e75         rts        
00065a: 4e550000     link.w     a5, #$0
00065e: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
000662: 2440         movea.l    d0, a2
000664: 2641         movea.l    d1, a3
000666: 600a         bra.b      $672
000668: 4a1b         tst.b      (a3)+
00066a: 6604         bne.b      $670
00066c: 7000         moveq      #$0, d0
00066e: 6016         bra.b      $686
000670: 528a         addq.l     #$1, a2
000672: 1012         move.b     (a2), d0
000674: b013         cmp.b      (a3), d0
000676: 67f0         beq.b      $668
000678: 1013         move.b     (a3), d0
00067a: 4880         ext.w      d0
00067c: 1212         move.b     (a2), d1
00067e: 4881         ext.w      d1
000680: 9240         sub.w      d0, d1
000682: 48c1         ext.l      d1
000684: 2001         move.l     d1, d0
000686: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
00068c: 4e5d         unlk       a5
00068e: 4e75         rts        
000690: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000694: 2040         movea.l    d0, a0
000696: 4e40         trap       #$0
000698: 0010650a     ori.b      #$a, (a0)
00069c: 2009         move.l     a1, d0
00069e: 909f         sub.l      (a7)+, d0
0006a0: 4cdf0302     movem.l    (a7)+, d1/a0-a1
0006a4: 4e75         rts        
0006a6: 588f         addq.l     #$4, a7
0006a8: 70ff         moveq      #$ff, d0
0006aa: 2d41002a     move.l     d1, $2a(a6)
0006ae: 60f0         bra.b      $6a0
0006b0: 48e770c0     movem.l    d1-d3/a0-a1, -(a7)
0006b4: 7400         moveq      #$0, d2
0006b6: 4e40         trap       #$0
0006b8: 0015651e     ori.b      #$1e, (a5)
0006bc: 206f0000     movea.l    $0(a7), a0
0006c0: 2080         move.l     d0, (a0)
0006c2: 41ef0018     lea.l      $18(a7), a0
0006c6: 2258         movea.l    (a0)+, a1
0006c8: 2281         move.l     d1, (a1)
0006ca: 2258         movea.l    (a0)+, a1
0006cc: 3282         move.w     d2, (a1)
0006ce: 2250         movea.l    (a0), a1
0006d0: 2283         move.l     d3, (a1)
0006d2: 7000         moveq      #$0, d0
0006d4: 4cdf030e     movem.l    (a7)+, d1-d3/a0-a1
0006d8: 4e75         rts        
0006da: 70ff         moveq      #$ff, d0
0006dc: 2d41002a     move.l     d1, $2a(a6)
0006e0: 60f2         bra.b      $6d4
0006e2: 4e550000     link.w     a5, #$0
0006e6: 48e7ceb8     movem.l    d0-d1/d4-d6/a0/a2-a4, -(a7)
0006ea: 2440         movea.l    d0, a2
0006ec: 282f002c     move.l     $2c(a7), d4
0006f0: 598f         subq.l     #$4, a7
0006f2: 41d7         lea.l      (a7), a0
0006f4: 2208         move.l     a0, d1
0006f6: 703e         moveq      #$3e, d0
0006f8: 61000672     bsr.w      $d6c
0006fc: 2640         movea.l    d0, a3
0006fe: 4a80         tst.l      d0
000700: 660e         bne.b      $710
000702: 203c000000ed move.l     #$ed, d0
000708: 2d40002a     move.l     d0, $2a(a6)
00070c: 60000094     bra.w      $7a2
000710: 200a         move.l     a2, d0
000712: 610002c0     bsr.w      $9d4
000716: 2a00         move.l     d0, d5
000718: 4878003e     pea.l      $3e.w
00071c: 2f05         move.l     d5, -(a7)
00071e: 220b         move.l     a3, d1
000720: 200a         move.l     a2, d0
000722: 61000316     bsr.w      $a3a
000726: 508f         addq.l     #$8, a7
000728: 70c2         moveq      #$c2, d0
00072a: d0ab0028     add.l      $28(a3), d0
00072e: b084         cmp.l      d4, d0
000730: 640a         bcc.b      $73c
000732: 2d7c000000ed002a move.l     #$ed, $2a(a6)
00073a: 605a         bra.b      $796
00073c: 2c05         move.l     d5, d6
00073e: 2005         move.l     d5, d0
000740: d084         add.l      d4, d0
000742: 2a00         move.l     d0, d5
000744: 286a0036     movea.l    $36(a2), a4
000748: 29450020     move.l     d5, $20(a4)
00074c: 296b00240024 move.l     $24(a3), $24(a4)
000752: 27460024     move.l     d6, $24(a3)
000756: 29440028     move.l     d4, $28(a4)
00075a: 99ab0028     sub.l      d4, $28(a3)
00075e: 222f0008     move.l     $8(a7), d1
000762: 200c         move.l     a4, d0
000764: 6100fed6     bsr.w      $63c
000768: 702d         moveq      #$2d, d0
00076a: d086         add.l      d6, d0
00076c: 2940001c     move.l     d0, $1c(a4)
000770: 2546002e     move.l     d6, $2e(a2)
000774: 4878003e     pea.l      $3e.w
000778: 2f05         move.l     d5, -(a7)
00077a: 220b         move.l     a3, d1
00077c: 200a         move.l     a2, d0
00077e: 610002ee     bsr.w      $a6e
000782: 508f         addq.l     #$8, a7
000784: 200a         move.l     a2, d0
000786: 61000646     bsr.w      $dce
00078a: 220a         move.l     a2, d1
00078c: 2005         move.l     d5, d0
00078e: 61000276     bsr.w      $a06
000792: 2d40002a     move.l     d0, $2a(a6)
000796: 220b         move.l     a3, d1
000798: 703e         moveq      #$3e, d0
00079a: 610005ee     bsr.w      $d8a
00079e: 202e002a     move.l     $2a(a6), d0
0007a2: 588f         addq.l     #$4, a7
0007a4: 4ced1d70ffe4 movem.l    -$1c(a5), d4-d6/a0/a2-a4
0007aa: 4e5d         unlk       a5
0007ac: 4e75         rts        
0007ae: 4e550000     link.w     a5, #$0
0007b2: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
0007b6: 2440         movea.l    d0, a2
0007b8: 598f         subq.l     #$4, a7
0007ba: 41d7         lea.l      (a7), a0
0007bc: 2208         move.l     a0, d1
0007be: 703e         moveq      #$3e, d0
0007c0: 610005aa     bsr.w      $d6c
0007c4: 2640         movea.l    d0, a3
0007c6: 4a80         tst.l      d0
0007c8: 660c         bne.b      $7d6
0007ca: 203c000000ed move.l     #$ed, d0
0007d0: 2d40002a     move.l     d0, $2a(a6)
0007d4: 605c         bra.b      $832
0007d6: 200a         move.l     a2, d0
0007d8: 610001fa     bsr.w      $9d4
0007dc: 2800         move.l     d0, d4
0007de: 286a0036     movea.l    $36(a2), a4
0007e2: b8ac0020     cmp.l      $20(a4), d4
0007e6: 6632         bne.b      $81a
0007e8: 4878003e     pea.l      $3e.w
0007ec: 2f04         move.l     d4, -(a7)
0007ee: 220b         move.l     a3, d1
0007f0: 200a         move.l     a2, d0
0007f2: 61000246     bsr.w      $a3a
0007f6: 508f         addq.l     #$8, a7
0007f8: 42ac0020     clr.l      $20(a4)
0007fc: 202b0028     move.l     $28(a3), d0
000800: d1ac0028     add.l      d0, $28(a4)
000804: 18bc00ff     move.b     #$ff, (a4)
000808: 200a         move.l     a2, d0
00080a: 610005c2     bsr.w      $dce
00080e: 220a         move.l     a2, d1
000810: 202a002e     move.l     $2e(a2), d0
000814: 610001f0     bsr.w      $a06
000818: 6008         bra.b      $822
00081a: 220b         move.l     a3, d1
00081c: 200a         move.l     a2, d0
00081e: 610002c8     bsr.w      $ae8
000822: 2d40002a     move.l     d0, $2a(a6)
000826: 220b         move.l     a3, d1
000828: 703e         moveq      #$3e, d0
00082a: 6100055e     bsr.w      $d8a
00082e: 202e002a     move.l     $2a(a6), d0
000832: 588f         addq.l     #$4, a7
000834: 4ced1d32ffe4 movem.l    -$1c(a5), d1/d4-d5/a0/a2-a4
00083a: 4e5d         unlk       a5
00083c: 4e75         rts        
00083e: 4e550000     link.w     a5, #$0
000842: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
000846: 2440         movea.l    d0, a2
000848: 2801         move.l     d1, d4
00084a: 518f         subq.l     #$8, a7
00084c: 41d7         lea.l      (a7), a0
00084e: 2208         move.l     a0, d1
000850: 703e         moveq      #$3e, d0
000852: 61000518     bsr.w      $d6c
000856: 2640         movea.l    d0, a3
000858: 4a80         tst.l      d0
00085a: 660e         bne.b      $86a
00085c: 203c000000ed move.l     #$ed, d0
000862: 2d40002a     move.l     d0, $2a(a6)
000866: 600000fa     bra.w      $962
00086a: 200a         move.l     a2, d0
00086c: 61000166     bsr.w      $9d4
000870: 2a00         move.l     d0, d5
000872: 4878003e     pea.l      $3e.w
000876: 2f05         move.l     d5, -(a7)
000878: 220b         move.l     a3, d1
00087a: 200a         move.l     a2, d0
00087c: 610001bc     bsr.w      $a3a
000880: 508f         addq.l     #$8, a7
000882: 286a0036     movea.l    $36(a2), a4
000886: 70c2         moveq      #$c2, d0
000888: d0ab0028     add.l      $28(a3), d0
00088c: b084         cmp.l      d4, d0
00088e: 640c         bcc.b      $89c
000890: 2d7c000000ed002a move.l     #$ed, $2a(a6)
000898: 600000bc     bra.w      $956
00089c: baac0020     cmp.l      $20(a4), d5
0008a0: 663c         bne.b      $8de
0008a2: d9ac0028     add.l      d4, $28(a4)
0008a6: 99ab0028     sub.l      d4, $28(a3)
0008aa: 202a002e     move.l     $2e(a2), d0
0008ae: d0ac0028     add.l      $28(a4), d0
0008b2: 2e00         move.l     d0, d7
0008b4: 29400020     move.l     d0, $20(a4)
0008b8: 4878003e     pea.l      $3e.w
0008bc: 2f07         move.l     d7, -(a7)
0008be: 220b         move.l     a3, d1
0008c0: 200a         move.l     a2, d0
0008c2: 610001aa     bsr.w      $a6e
0008c6: 508f         addq.l     #$8, a7
0008c8: 4a80         tst.l      d0
0008ca: 6600008a     bne.w      $956
0008ce: 200a         move.l     a2, d0
0008d0: 610004fc     bsr.w      $dce
0008d4: 220a         move.l     a2, d1
0008d6: 2007         move.l     d7, d0
0008d8: 6100012c     bsr.w      $a06
0008dc: 6074         bra.b      $952
0008de: 4878003e     pea.l      $3e.w
0008e2: 220b         move.l     a3, d1
0008e4: 200c         move.l     a4, d0
0008e6: 6100051a     bsr.w      $e02
0008ea: 588f         addq.l     #$4, a7
0008ec: 2c2a002e     move.l     $2e(a2), d6
0008f0: 202c0028     move.l     $28(a4), d0
0008f4: d084         add.l      d4, d0
0008f6: 2f00         move.l     d0, -(a7)
0008f8: 220c         move.l     a4, d1
0008fa: 200a         move.l     a2, d0
0008fc: 6100fde4     bsr.w      $6e2
000900: 588f         addq.l     #$4, a7
000902: 4a80         tst.l      d0
000904: 6650         bne.b      $956
000906: 4852         pea.l      (a2)
000908: 202b0036     move.l     $36(a3), d0
00090c: 2f400008     move.l     d0, $8(a7)
000910: 2f00         move.l     d0, -(a7)
000912: 703e         moveq      #$3e, d0
000914: d0aa002e     add.l      $2e(a2), d0
000918: 2200         move.l     d0, d1
00091a: 703e         moveq      #$3e, d0
00091c: d086         add.l      d6, d0
00091e: 6100033e     bsr.w      $c5e
000922: 508f         addq.l     #$8, a7
000924: 2206         move.l     d6, d1
000926: 200a         move.l     a2, d0
000928: 61000178     bsr.w      $aa2
00092c: 2e06         move.l     d6, d7
00092e: 2c2a002e     move.l     $2e(a2), d6
000932: 2547002e     move.l     d7, $2e(a2)
000936: 254b0036     move.l     a3, $36(a2)
00093a: 200a         move.l     a2, d0
00093c: 6100fe70     bsr.w      $7ae
000940: 4a80         tst.l      d0
000942: 6612         bne.b      $956
000944: 254c0036     move.l     a4, $36(a2)
000948: 222a002e     move.l     $2e(a2), d1
00094c: 200a         move.l     a2, d0
00094e: 6100044a     bsr.w      $d9a
000952: 42ae002a     clr.l      $2a(a6)
000956: 220b         move.l     a3, d1
000958: 703e         moveq      #$3e, d0
00095a: 6100042e     bsr.w      $d8a
00095e: 202e002a     move.l     $2a(a6), d0
000962: 508f         addq.l     #$8, a7
000964: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
00096a: 4e5d         unlk       a5
00096c: 4e75         rts        
00096e: 4e550000     link.w     a5, #$0
000972: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
000976: 2440         movea.l    d0, a2
000978: 2801         move.l     d1, d4
00097a: 598f         subq.l     #$4, a7
00097c: 41d7         lea.l      (a7), a0
00097e: 2208         move.l     a0, d1
000980: 703e         moveq      #$3e, d0
000982: 610003e8     bsr.w      $d6c
000986: 2640         movea.l    d0, a3
000988: 4a80         tst.l      d0
00098a: 6608         bne.b      $994
00098c: 203c000000ed move.l     #$ed, d0
000992: 6034         bra.b      $9c8
000994: 2a2a002e     move.l     $2e(a2), d5
000998: 206a0036     movea.l    $36(a2), a0
00099c: 99a80028     sub.l      d4, $28(a0)
0009a0: 4853         pea.l      (a3)
0009a2: 2204         move.l     d4, d1
0009a4: 200a         move.l     a2, d0
0009a6: 610001e4     bsr.w      $b8c
0009aa: 588f         addq.l     #$4, a7
0009ac: 2d40002a     move.l     d0, $2a(a6)
0009b0: 2545002e     move.l     d5, $2e(a2)
0009b4: 2205         move.l     d5, d1
0009b6: 200a         move.l     a2, d0
0009b8: 610003e0     bsr.w      $d9a
0009bc: 220b         move.l     a3, d1
0009be: 703e         moveq      #$3e, d0
0009c0: 610003c8     bsr.w      $d8a
0009c4: 202e002a     move.l     $2a(a6), d0
0009c8: 588f         addq.l     #$4, a7
0009ca: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
0009d0: 4e5d         unlk       a5
0009d2: 4e75         rts        
0009d4: 4e550000     link.w     a5, #$0
0009d8: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0009dc: 2440         movea.l    d0, a2
0009de: 598f         subq.l     #$4, a7
0009e0: 41d7         lea.l      (a7), a0
0009e2: 2548000e     move.l     a0, $e(a2)
0009e6: 48780004     pea.l      $4.w
0009ea: 48780004     pea.l      $4.w
0009ee: 7202         moveq      #$2, d1
0009f0: 200a         move.l     a2, d0
0009f2: 610002f4     bsr.w      $ce8
0009f6: 508f         addq.l     #$8, a7
0009f8: 2017         move.l     (a7), d0
0009fa: 588f         addq.l     #$4, a7
0009fc: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
000a02: 4e5d         unlk       a5
000a04: 4e75         rts        
000a06: 4e550000     link.w     a5, #$0
000a0a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000a0e: 2441         movea.l    d1, a2
000a10: 41d7         lea.l      (a7), a0
000a12: 2548000e     move.l     a0, $e(a2)
000a16: 48780004     pea.l      $4.w
000a1a: 48780004     pea.l      $4.w
000a1e: 7204         moveq      #$4, d1
000a20: 200a         move.l     a2, d0
000a22: 610002c4     bsr.w      $ce8
000a26: 508f         addq.l     #$8, a7
000a28: 2d40002a     move.l     d0, $2a(a6)
000a2c: 202e002a     move.l     $2a(a6), d0
000a30: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000a36: 4e5d         unlk       a5
000a38: 4e75         rts        
000a3a: 4e550000     link.w     a5, #$0
000a3e: 48e7c020     movem.l    d0-d1/a2, -(a7)
000a42: 2440         movea.l    d0, a2
000a44: 256f0004000e move.l     $4(a7), $e(a2)
000a4a: 2f2f0014     move.l     $14(a7), -(a7)
000a4e: 2f2f001c     move.l     $1c(a7), -(a7)
000a52: 7202         moveq      #$2, d1
000a54: 200a         move.l     a2, d0
000a56: 61000290     bsr.w      $ce8
000a5a: 508f         addq.l     #$8, a7
000a5c: 2d40002a     move.l     d0, $2a(a6)
000a60: 202e002a     move.l     $2a(a6), d0
000a64: 4ced0400fffc movem.l    -$4(a5), a2
000a6a: 4e5d         unlk       a5
000a6c: 4e75         rts        
000a6e: 4e550000     link.w     a5, #$0
000a72: 48e7c020     movem.l    d0-d1/a2, -(a7)
000a76: 2440         movea.l    d0, a2
000a78: 256f0004000e move.l     $4(a7), $e(a2)
000a7e: 2f2f0014     move.l     $14(a7), -(a7)
000a82: 2f2f001c     move.l     $1c(a7), -(a7)
000a86: 7204         moveq      #$4, d1
000a88: 200a         move.l     a2, d0
000a8a: 6100025c     bsr.w      $ce8
000a8e: 508f         addq.l     #$8, a7
000a90: 2d40002a     move.l     d0, $2a(a6)
000a94: 202e002a     move.l     $2a(a6), d0
000a98: 4ced0400fffc movem.l    -$4(a5), a2
000a9e: 4e5d         unlk       a5
000aa0: 4e75         rts        
000aa2: 4e550000     link.w     a5, #$0
000aa6: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
000aaa: 2440         movea.l    d0, a2
000aac: 2801         move.l     d1, d4
000aae: 206a0032     movea.l    $32(a2), a0
000ab2: 2668000a     movea.l    $a(a0), a3
000ab6: 6022         bra.b      $ada
000ab8: b8ab002e     cmp.l      $2e(a3), d4
000abc: 6618         bne.b      $ad6
000abe: 276a002e002e move.l     $2e(a2), $2e(a3)
000ac4: 4878003e     pea.l      $3e.w
000ac8: 222b0036     move.l     $36(a3), d1
000acc: 202a0036     move.l     $36(a2), d0
000ad0: 61000330     bsr.w      $e02
000ad4: 588f         addq.l     #$4, a7
000ad6: 266b0016     movea.l    $16(a3), a3
000ada: 200b         move.l     a3, d0
000adc: 66da         bne.b      $ab8
000ade: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
000ae4: 4e5d         unlk       a5
000ae6: 4e75         rts        
000ae8: 4e550000     link.w     a5, #$0
000aec: 48e7cf38     movem.l    d0-d1/d4-d7/a2-a4, -(a7)
000af0: 2440         movea.l    d0, a2
000af2: 2641         movea.l    d1, a3
000af4: 286a0036     movea.l    $36(a2), a4
000af8: 2e2c0028     move.l     $28(a4), d7
000afc: 282a002e     move.l     $2e(a2), d4
000b00: 2c2c0020     move.l     $20(a4), d6
000b04: 2a2c0024     move.l     $24(a4), d5
000b08: 4878003e     pea.l      $3e.w
000b0c: 2f06         move.l     d6, -(a7)
000b0e: 220b         move.l     a3, d1
000b10: 200a         move.l     a2, d0
000b12: 6100ff26     bsr.w      $a3a
000b16: 508f         addq.l     #$8, a7
000b18: 4852         pea.l      (a2)
000b1a: 2f2b0028     move.l     $28(a3), -(a7)
000b1e: 2204         move.l     d4, d1
000b20: 2006         move.l     d6, d0
000b22: 6100013a     bsr.w      $c5e
000b26: 508f         addq.l     #$8, a7
000b28: 27450024     move.l     d5, $24(a3)
000b2c: 702d         moveq      #$2d, d0
000b2e: d084         add.l      d4, d0
000b30: 2740001c     move.l     d0, $1c(a3)
000b34: 4878003e     pea.l      $3e.w
000b38: 220c         move.l     a4, d1
000b3a: 200b         move.l     a3, d0
000b3c: 610002c4     bsr.w      $e02
000b40: 588f         addq.l     #$4, a7
000b42: 200a         move.l     a2, d0
000b44: 61000288     bsr.w      $dce
000b48: 2c2c0020     move.l     $20(a4), d6
000b4c: 4878003e     pea.l      $3e.w
000b50: 2f06         move.l     d6, -(a7)
000b52: 220b         move.l     a3, d1
000b54: 200a         move.l     a2, d0
000b56: 6100fee2     bsr.w      $a3a
000b5a: 508f         addq.l     #$8, a7
000b5c: 27440024     move.l     d4, $24(a3)
000b60: 4878003e     pea.l      $3e.w
000b64: 2f06         move.l     d6, -(a7)
000b66: 220b         move.l     a3, d1
000b68: 200a         move.l     a2, d0
000b6a: 6100ff02     bsr.w      $a6e
000b6e: 508f         addq.l     #$8, a7
000b70: 2204         move.l     d4, d1
000b72: 200a         move.l     a2, d0
000b74: 6100ff2c     bsr.w      $aa2
000b78: 4853         pea.l      (a3)
000b7a: 2207         move.l     d7, d1
000b7c: 200a         move.l     a2, d0
000b7e: 610c         bsr.b      $b8c
000b80: 588f         addq.l     #$4, a7
000b82: 4ced1cf0ffe4 movem.l    -$1c(a5), d4-d7/a2-a4
000b88: 4e5d         unlk       a5
000b8a: 4e75         rts        
000b8c: 4e550000     link.w     a5, #$0
000b90: 48e7ce38     movem.l    d0-d1/d4-d6/a2-a4, -(a7)
000b94: 2440         movea.l    d0, a2
000b96: 2801         move.l     d1, d4
000b98: 266f0028     movea.l    $28(a7), a3
000b9c: 286a0036     movea.l    $36(a2), a4
000ba0: 2a2a002e     move.l     $2e(a2), d5
000ba4: 2c2c0020     move.l     $20(a4), d6
000ba8: daac0028     add.l      $28(a4), d5
000bac: 29450020     move.l     d5, $20(a4)
000bb0: 4878003e     pea.l      $3e.w
000bb4: 2f06         move.l     d6, -(a7)
000bb6: 220b         move.l     a3, d1
000bb8: 200a         move.l     a2, d0
000bba: 6100fe7e     bsr.w      $a3a
000bbe: 508f         addq.l     #$8, a7
000bc0: 6068         bra.b      $c2a
000bc2: 200a         move.l     a2, d0
000bc4: 61000208     bsr.w      $dce
000bc8: 4852         pea.l      (a2)
000bca: 2f2b0028     move.l     $28(a3), -(a7)
000bce: 2205         move.l     d5, d1
000bd0: 2006         move.l     d6, d0
000bd2: 6100008a     bsr.w      $c5e
000bd6: 508f         addq.l     #$8, a7
000bd8: 2545002e     move.l     d5, $2e(a2)
000bdc: 4878003e     pea.l      $3e.w
000be0: 220c         move.l     a4, d1
000be2: 200b         move.l     a3, d0
000be4: 6100021c     bsr.w      $e02
000be8: 588f         addq.l     #$4, a7
000bea: 702d         moveq      #$2d, d0
000bec: d085         add.l      d5, d0
000bee: 2940001c     move.l     d0, $1c(a4)
000bf2: 2206         move.l     d6, d1
000bf4: 200a         move.l     a2, d0
000bf6: 6100feaa     bsr.w      $aa2
000bfa: 2c2c0020     move.l     $20(a4), d6
000bfe: 4878003e     pea.l      $3e.w
000c02: 2f06         move.l     d6, -(a7)
000c04: 220b         move.l     a3, d1
000c06: 200a         move.l     a2, d0
000c08: 6100fe30     bsr.w      $a3a
000c0c: 508f         addq.l     #$8, a7
000c0e: 27450024     move.l     d5, $24(a3)
000c12: 4878003e     pea.l      $3e.w
000c16: 2f06         move.l     d6, -(a7)
000c18: 220b         move.l     a3, d1
000c1a: 200a         move.l     a2, d0
000c1c: 6100fe50     bsr.w      $a6e
000c20: 508f         addq.l     #$8, a7
000c22: daac0028     add.l      $28(a4), d5
000c26: 29450020     move.l     d5, $20(a4)
000c2a: 0c13ffff     cmpi.b     #$ff, (a3)
000c2e: 6692         bne.b      $bc2
000c30: 200a         move.l     a2, d0
000c32: 6100019a     bsr.w      $dce
000c36: d9ab0028     add.l      d4, $28(a3)
000c3a: 4878003e     pea.l      $3e.w
000c3e: 2f05         move.l     d5, -(a7)
000c40: 220b         move.l     a3, d1
000c42: 200a         move.l     a2, d0
000c44: 6100fe28     bsr.w      $a6e
000c48: 508f         addq.l     #$8, a7
000c4a: 220a         move.l     a2, d1
000c4c: 2005         move.l     d5, d0
000c4e: 6100fdb6     bsr.w      $a06
000c52: 7000         moveq      #$0, d0
000c54: 4ced1c70ffe8 movem.l    -$18(a5), d4-d6/a2-a4
000c5a: 4e5d         unlk       a5
000c5c: 4e75         rts        
000c5e: 4e550000     link.w     a5, #$0
000c62: 48e7cfa0     movem.l    d0-d1/d4-d7/a0/a2, -(a7)
000c66: 2800         move.l     d0, d4
000c68: 2a01         move.l     d1, d5
000c6a: 2c2f0028     move.l     $28(a7), d6
000c6e: 598f         subq.l     #$4, a7
000c70: 41d7         lea.l      (a7), a0
000c72: 2208         move.l     a0, d1
000c74: 203c00000100 move.l     #$100, d0
000c7a: 610000f0     bsr.w      $d6c
000c7e: 2440         movea.l    d0, a2
000c80: 4a80         tst.l      d0
000c82: 6646         bne.b      $cca
000c84: 203c000000ed move.l     #$ed, d0
000c8a: 2d40002a     move.l     d0, $2a(a6)
000c8e: 604c         bra.b      $cdc
000c90: 0c8600000100 cmpi.l     #$100, d6
000c96: 6404         bcc.b      $c9c
000c98: 2006         move.l     d6, d0
000c9a: 6006         bra.b      $ca2
000c9c: 203c00000100 move.l     #$100, d0
000ca2: 2e00         move.l     d0, d7
000ca4: 2f00         move.l     d0, -(a7)
000ca6: 2f04         move.l     d4, -(a7)
000ca8: 220a         move.l     a2, d1
000caa: 202f0038     move.l     $38(a7), d0
000cae: 6100fd8a     bsr.w      $a3a
000cb2: 508f         addq.l     #$8, a7
000cb4: 2f07         move.l     d7, -(a7)
000cb6: 2f05         move.l     d5, -(a7)
000cb8: 220a         move.l     a2, d1
000cba: 202f0038     move.l     $38(a7), d0
000cbe: 6100fdae     bsr.w      $a6e
000cc2: 508f         addq.l     #$8, a7
000cc4: 9c87         sub.l      d7, d6
000cc6: da87         add.l      d7, d5
000cc8: d887         add.l      d7, d4
000cca: 4a86         tst.l      d6
000ccc: 66c2         bne.b      $c90
000cce: 220a         move.l     a2, d1
000cd0: 203c00000100 move.l     #$100, d0
000cd6: 610000b2     bsr.w      $d8a
000cda: 7000         moveq      #$0, d0
000cdc: 588f         addq.l     #$4, a7
000cde: 4ced05f0ffe8 movem.l    -$18(a5), d4-d7/a0/a2
000ce4: 4e5d         unlk       a5
000ce6: 4e75         rts        
000ce8: 4e550000     link.w     a5, #$0
000cec: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
000cf0: 2440         movea.l    d0, a2
000cf2: 2801         move.l     d1, d4
000cf4: 598f         subq.l     #$4, a7
000cf6: 206a0004     movea.l    $4(a2), a0
000cfa: 2650         movea.l    (a0), a3
000cfc: 7000         moveq      #$0, d0
000cfe: 3004         move.w     d4, d0
000d00: 7200         moveq      #$0, d1
000d02: 3233083c     move.w     $3c(a3, d0.l), d1
000d06: d28b         add.l      a3, d1
000d08: 2841         movea.l    d1, a4
000d0a: 206a0022     movea.l    $22(a2), a0
000d0e: 2ea8004c     move.l     $4c(a0), (a7)
000d12: 2f2f002c     move.l     $2c(a7), -(a7)
000d16: 2f2f002c     move.l     $2c(a7), -(a7)
000d1a: 2f2a0022     move.l     $22(a2), -(a7)
000d1e: 2f2f000c     move.l     $c(a7), -(a7)
000d22: 206a0004     movea.l    $4(a2), a0
000d26: 2f280004     move.l     $4(a0), -(a7)
000d2a: 220a         move.l     a2, d1
000d2c: 200c         move.l     a4, d0
000d2e: 6110         bsr.b      $d40
000d30: 4fef0014     lea.l      $14(a7), a7
000d34: 588f         addq.l     #$4, a7
000d36: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
000d3c: 4e5d         unlk       a5
000d3e: 4e75         rts        
000d40: 48e7206a     movem.l    d2/a1-a2/a4/a6, -(a7)
000d44: 2c6f0020     movea.l    $20(a7), a6
000d48: 286f001c     movea.l    $1c(a7), a4
000d4c: 246f0018     movea.l    $18(a7), a2
000d50: 2241         movea.l    d1, a1
000d52: 2040         movea.l    d0, a0
000d54: 202f0024     move.l     $24(a7), d0
000d58: 242f0028     move.l     $28(a7), d2
000d5c: 4e90         jsr        (a0)
000d5e: 6504         bcs.b      $d64
000d60: 7000         moveq      #$0, d0
000d62: 6002         bra.b      $d66
000d64: 2001         move.l     d1, d0
000d66: 4cdf5604     movem.l    (a7)+, d2/a1-a2/a4/a6
000d6a: 4e75         rts        
000d6c: 48e700e0     movem.l    a0-a2, -(a7)
000d70: 4e40         trap       #$0
000d72: 0028650c2041 ori.b      #$c, $2041(a0)
000d78: 2080         move.l     d0, (a0)
000d7a: 200a         move.l     a2, d0
000d7c: 4cdf0700     movem.l    (a7)+, a0-a2
000d80: 4e75         rts        
000d82: 7000         moveq      #$0, d0
000d84: 2d41002a     move.l     d1, $2a(a6)
000d88: 60f2         bra.b      $d7c
000d8a: 48e700a0     movem.l    a0/a2, -(a7)
000d8e: 2441         movea.l    d1, a2
000d90: 4e40         trap       #$0
000d92: 00294cdf0500 ori.b      #$df, $500(a1)
000d98: 4e75         rts        
000d9a: 4e550000     link.w     a5, #$0
000d9e: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
000da2: 2440         movea.l    d0, a2
000da4: 2801         move.l     d1, d4
000da6: 256a0036000e move.l     $36(a2), $e(a2)
000dac: 2f04         move.l     d4, -(a7)
000dae: 4878003e     pea.l      $3e.w
000db2: 7202         moveq      #$2, d1
000db4: 200a         move.l     a2, d0
000db6: 6100ff30     bsr.w      $ce8
000dba: 508f         addq.l     #$8, a7
000dbc: 2d40002a     move.l     d0, $2a(a6)
000dc0: 202e002a     move.l     $2a(a6), d0
000dc4: 4ced0410fff8 movem.l    -$8(a5), d4/a2
000dca: 4e5d         unlk       a5
000dcc: 4e75         rts        
000dce: 4e550000     link.w     a5, #$0
000dd2: 48e7c020     movem.l    d0-d1/a2, -(a7)
000dd6: 2440         movea.l    d0, a2
000dd8: 256a0036000e move.l     $36(a2), $e(a2)
000dde: 2f2a002e     move.l     $2e(a2), -(a7)
000de2: 4878003e     pea.l      $3e.w
000de6: 7204         moveq      #$4, d1
000de8: 200a         move.l     a2, d0
000dea: 6100fefc     bsr.w      $ce8
000dee: 508f         addq.l     #$8, a7
000df0: 2d40002a     move.l     d0, $2a(a6)
000df4: 202e002a     move.l     $2a(a6), d0
000df8: 4ced0402fff8 movem.l    -$8(a5), d1/a2
000dfe: 4e5d         unlk       a5
000e00: 4e75         rts        
000e02: 4e550000     link.w     a5, #$0
000e06: 48e7cc30     movem.l    d0-d1/d4-d5/a2-a3, -(a7)
000e0a: 2440         movea.l    d0, a2
000e0c: 2641         movea.l    d1, a3
000e0e: 282f0020     move.l     $20(a7), d4
000e12: 7a00         moveq      #$0, d5
000e14: 6004         bra.b      $e1a
000e16: 16da         move.b     (a2)+, (a3)+
000e18: 5285         addq.l     #$1, d5
000e1a: ba84         cmp.l      d4, d5
000e1c: 65f8         bcs.b      $e16
000e1e: 4ced0c30fff0 movem.l    -$10(a5), d4-d5/a2-a3
000e24: 4e5d         unlk       a5
000e26: 4e75         rts        
000e28: 4e550000     link.w     a5, #$0
000e2c: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
000e30: 2440         movea.l    d0, a2
000e32: 598f         subq.l     #$4, a7
000e34: 7800         moveq      #$0, d4
000e36: 206a0004     movea.l    $4(a2), a0
000e3a: 20280004     move.l     $4(a0), d0
000e3e: 25400032     move.l     d0, $32(a2)
000e42: 6100f246     bsr.w      $8a
000e46: 256f00240022 move.l     $24(a7), $22(a2)
000e4c: 41d7         lea.l      (a7), a0
000e4e: 2208         move.l     a0, d1
000e50: 7020         moveq      #$20, d0
000e52: d0aa000a     add.l      $a(a2), d0
000e56: 6100f5d8     bsr.w      $430
000e5a: 2640         movea.l    d0, a3
000e5c: 4a80         tst.l      d0
000e5e: 6700007c     beq.w      $edc
000e62: 4a97         tst.l      (a7)
000e64: 660a         bne.b      $e70
000e66: 203c000000d6 move.l     #$d6, d0
000e6c: 60000072     bra.w      $ee0
000e70: 41d7         lea.l      (a7), a0
000e72: 2208         move.l     a0, d1
000e74: 703e         moveq      #$3e, d0
000e76: 6100fef4     bsr.w      $d6c
000e7a: 25400036     move.l     d0, $36(a2)
000e7e: 6608         bne.b      $e88
000e80: 203c000000ed move.l     #$ed, d0
000e86: 6058         bra.b      $ee0
000e88: 220b         move.l     a3, d1
000e8a: 200a         move.l     a2, d0
000e8c: 6100f4f8     bsr.w      $386
000e90: 4a80         tst.l      d0
000e92: 6642         bne.b      $ed6
000e94: 200a         move.l     a2, d0
000e96: 6100f70a     bsr.w      $5a2
000e9a: 4a80         tst.l      d0
000e9c: 670a         beq.b      $ea8
000e9e: 2d7c000000fd002a move.l     #$fd, $2a(a6)
000ea6: 602e         bra.b      $ed6
000ea8: 48780012     pea.l      $12.w
000eac: 222f000c     move.l     $c(a7), d1
000eb0: 200a         move.l     a2, d0
000eb2: 6100f520     bsr.w      $3d4
000eb6: 588f         addq.l     #$4, a7
000eb8: 4a80         tst.l      d0
000eba: 661a         bne.b      $ed6
000ebc: 206a0036     movea.l    $36(a2), a0
000ec0: 53280035     subq.b     #$1, $35(a0)
000ec4: 6706         beq.b      $ecc
000ec6: 42ae002a     clr.l      $2a(a6)
000eca: 600a         bra.b      $ed6
000ecc: 200a         move.l     a2, d0
000ece: 6100f8de     bsr.w      $7ae
000ed2: 2d40002a     move.l     d0, $2a(a6)
000ed6: 200a         move.l     a2, d0
000ed8: 6100f738     bsr.w      $612
000edc: 202e002a     move.l     $2a(a6), d0
000ee0: 588f         addq.l     #$4, a7
000ee2: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
000ee8: 4e5d         unlk       a5
000eea: 4e75         rts        
000eec: 4e550000     link.w     a5, #$0
000ef0: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000ef4: 2440         movea.l    d0, a2
000ef6: 266a000a     movea.l    $a(a2), a3
000efa: 202a0032     move.l     $32(a2), d0
000efe: 6100f18a     bsr.w      $8a
000f02: 6000007e     bra.w      $f82
000f06: 206a0036     movea.l    $36(a2), a0
000f0a: 276800360008 move.l     $36(a0), $8(a3)
000f10: 605c         bra.b      $f6e
000f12: 206a0036     movea.l    $36(a2), a0
000f16: 20280036     move.l     $36(a0), d0
000f1a: b0aa002a     cmp.l      $2a(a2), d0
000f1e: 620a         bhi.b      $f2a
000f20: 203c000000d3 move.l     #$d3, d0
000f26: 6000009c     bra.w      $fc4
000f2a: 42ab0004     clr.l      $4(a3)
000f2e: 603e         bra.b      $f6e
000f30: 276a002a0008 move.l     $2a(a2), $8(a3)
000f36: 6036         bra.b      $f6e
000f38: 2f2b0008     move.l     $8(a3), -(a7)
000f3c: 222b0020     move.l     $20(a3), d1
000f40: 702d         moveq      #$2d, d0
000f42: d0aa0036     add.l      $36(a2), d0
000f46: 6100feba     bsr.w      $e02
000f4a: 588f         addq.l     #$4, a7
000f4c: 6020         bra.b      $f6e
000f4e: 2f2b0008     move.l     $8(a3), -(a7)
000f52: 2f2b000c     move.l     $c(a3), -(a7)
000f56: 222b0020     move.l     $20(a3), d1
000f5a: 200a         move.l     a2, d0
000f5c: 6100fadc     bsr.w      $a3a
000f60: 508f         addq.l     #$8, a7
000f62: 6060         bra.b      $fc4
000f64: 200a         move.l     a2, d0
000f66: 61000196     bsr.w      $10fe
000f6a: 27400008     move.l     d0, $8(a3)
000f6e: 7000         moveq      #$0, d0
000f70: 6052         bra.b      $fc4
000f72: 2f2b0004     move.l     $4(a3), -(a7)
000f76: 7206         moveq      #$6, d1
000f78: 200a         move.l     a2, d0
000f7a: 6100fd6c     bsr.w      $ce8
000f7e: 588f         addq.l     #$4, a7
000f80: 6042         bra.b      $fc4
000f82: 302b0006     move.w     $6(a3), d0
000f86: 0c400006     cmpi.w     #$6, d0
000f8a: 6700ff86     beq.w      $f12
000f8e: 621a         bhi.b      $faa
000f90: 0c000002     cmpi.b     #$2, d0
000f94: 6700ff70     beq.w      $f06
000f98: 6206         bhi.b      $fa0
000f9a: 4a00         tst.b      d0
000f9c: 67d0         beq.b      $f6e
000f9e: 60d2         bra.b      $f72
000fa0: 0c400005     cmpi.w     #$5, d0
000fa4: 6700ff8a     beq.w      $f30
000fa8: 60c8         bra.b      $f72
000faa: 0c400020     cmpi.w     #$20, d0
000fae: 679e         beq.b      $f4e
000fb0: 620a         bhi.b      $fbc
000fb2: 0c00000f     cmpi.b     #$f, d0
000fb6: 6700ff80     beq.w      $f38
000fba: 60b6         bra.b      $f72
000fbc: 0c400043     cmpi.w     #$43, d0
000fc0: 67a2         beq.b      $f64
000fc2: 60ae         bra.b      $f72
000fc4: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
000fca: 4e5d         unlk       a5
000fcc: 4e75         rts        
000fce: 4e550000     link.w     a5, #$0
000fd2: 48e7ccf0     movem.l    d0-d1/d4-d5/a0-a3, -(a7)
000fd6: 2440         movea.l    d0, a2
000fd8: 266a000a     movea.l    $a(a2), a3
000fdc: 202a0032     move.l     $32(a2), d0
000fe0: 6100f0a8     bsr.w      $8a
000fe4: 600000ec     bra.w      $10d2
000fe8: 48780012     pea.l      $12.w
000fec: 222f0008     move.l     $8(a7), d1
000ff0: 200a         move.l     a2, d0
000ff2: 6100f3e0     bsr.w      $3d4
000ff6: 588f         addq.l     #$4, a7
000ff8: 4a80         tst.l      d0
000ffa: 6708         beq.b      $1004
000ffc: 202e002a     move.l     $2a(a6), d0
001000: 600000f2     bra.w      $10f4
001004: 206a0036     movea.l    $36(a2), a0
001008: 703e         moveq      #$3e, d0
00100a: d0ab0008     add.l      $8(a3), d0
00100e: 90a80028     sub.l      $28(a0), d0
001012: 2800         move.l     d0, d4
001014: 6606         bne.b      $101c
001016: 7000         moveq      #$0, d0
001018: 600000da     bra.w      $10f4
00101c: 4a84         tst.l      d4
00101e: 6f1a         ble.b      $103a
001020: 2204         move.l     d4, d1
001022: 200a         move.l     a2, d0
001024: 6100f818     bsr.w      $83e
001028: 2a00         move.l     d0, d5
00102a: 4a85         tst.l      d5
00102c: 6642         bne.b      $1070
00102e: 206a0036     movea.l    $36(a2), a0
001032: 216b00080036 move.l     $8(a3), $36(a0)
001038: 6030         bra.b      $106a
00103a: 2004         move.l     d4, d0
00103c: 4480         neg.l      d0
00103e: 2200         move.l     d0, d1
001040: 200a         move.l     a2, d0
001042: 6100f92a     bsr.w      $96e
001046: 2a00         move.l     d0, d5
001048: 4a85         tst.l      d5
00104a: 6624         bne.b      $1070
00104c: 206a0036     movea.l    $36(a2), a0
001050: 70c2         moveq      #$c2, d0
001052: d0a80028     add.l      $28(a0), d0
001056: 2800         move.l     d0, d4
001058: 206a0036     movea.l    $36(a2), a0
00105c: b8a80036     cmp.l      $36(a0), d4
001060: 640e         bcc.b      $1070
001062: 206a0036     movea.l    $36(a2), a0
001066: 21440036     move.l     d4, $36(a0)
00106a: 200a         move.l     a2, d0
00106c: 6100fd60     bsr.w      $dce
001070: 2005         move.l     d5, d0
001072: 60000080     bra.w      $10f4
001076: 206f0004     movea.l    $4(a7), a0
00107a: 4a680014     tst.w      $14(a0)
00107e: 671c         beq.b      $109c
001080: 206f0004     movea.l    $4(a7), a0
001084: 226a0036     movea.l    $36(a2), a1
001088: 7000         moveq      #$0, d0
00108a: 1029002e     move.b     $2e(a1), d0
00108e: b0680014     cmp.w      $14(a0), d0
001092: 6708         beq.b      $109c
001094: 203c000000d6 move.l     #$d6, d0
00109a: 6058         bra.b      $10f4
00109c: 102b000b     move.b     $b(a3), d0
0010a0: 4880         ext.w      d0
0010a2: 08000007     btst.b     #$7, d0
0010a6: 6708         beq.b      $10b0
0010a8: 203c000000ee move.l     #$ee, d0
0010ae: 6044         bra.b      $10f4
0010b0: 206a0036     movea.l    $36(a2), a0
0010b4: 116b000b002d move.b     $b(a3), $2d(a0)
0010ba: 200a         move.l     a2, d0
0010bc: 6100fd10     bsr.w      $dce
0010c0: 6032         bra.b      $10f4
0010c2: 2f2b0004     move.l     $4(a3), -(a7)
0010c6: 7208         moveq      #$8, d1
0010c8: 200a         move.l     a2, d0
0010ca: 6100fc1c     bsr.w      $ce8
0010ce: 588f         addq.l     #$4, a7
0010d0: 6022         bra.b      $10f4
0010d2: 302b0006     move.w     $6(a3), d0
0010d6: 0c4000ff     cmpi.w     #$ff, d0
0010da: 62e6         bhi.b      $10c2
0010dc: 4a00         tst.b      d0
0010de: 6700ff36     beq.w      $1016
0010e2: 0c000002     cmpi.b     #$2, d0
0010e6: 6700ff00     beq.w      $fe8
0010ea: 0c00001c     cmpi.b     #$1c, d0
0010ee: 6700ff86     beq.w      $1076
0010f2: 60ce         bra.b      $10c2
0010f4: 4ced0f30ffe8 movem.l    -$18(a5), d4-d5/a0-a3
0010fa: 4e5d         unlk       a5
0010fc: 4e75         rts        
0010fe: 4e550000     link.w     a5, #$0
001102: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001106: 2440         movea.l    d0, a2
001108: 4fefffc2     lea.l      -$3e(a7), a7
00110c: 200a         move.l     a2, d0
00110e: 6100f8c4     bsr.w      $9d4
001112: 2800         move.l     d0, d4
001114: 4878003e     pea.l      $3e.w
001118: 2f04         move.l     d4, -(a7)
00111a: 41ef0008     lea.l      $8(a7), a0
00111e: 2208         move.l     a0, d1
001120: 200a         move.l     a2, d0
001122: 6100f916     bsr.w      $a3a
001126: 508f         addq.l     #$8, a7
001128: 202f0028     move.l     $28(a7), d0
00112c: 4fef003e     lea.l      $3e(a7), a7
001130: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
001136: 4e5d         unlk       a5
001138: 4e75         rts        
00113a: 4e550000     link.w     a5, #$0
00113e: 48e7c020     movem.l    d0-d1/a2, -(a7)
001142: 2440         movea.l    d0, a2
001144: 202a0032     move.l     $32(a2), d0
001148: 6100ef40     bsr.w      $8a
00114c: 082a00070002 btst.b     #$7, $2(a2)
001152: 670c         beq.b      $1160
001154: 222f0004     move.l     $4(a7), d1
001158: 200a         move.l     a2, d0
00115a: 610002e4     bsr.w      $1440
00115e: 600c         bra.b      $116c
001160: 42a7         clr.l      -(a7)
001162: 222f0008     move.l     $8(a7), d1
001166: 200a         move.l     a2, d0
001168: 6136         bsr.b      $11a0
00116a: 588f         addq.l     #$4, a7
00116c: 4ced0400fffc movem.l    -$4(a5), a2
001172: 4e5d         unlk       a5
001174: 4e75         rts        
001176: 4e550000     link.w     a5, #$0
00117a: 48e7c020     movem.l    d0-d1/a2, -(a7)
00117e: 2440         movea.l    d0, a2
001180: 202a0032     move.l     $32(a2), d0
001184: 6100ef04     bsr.w      $8a
001188: 48780001     pea.l      $1.w
00118c: 222f0008     move.l     $8(a7), d1
001190: 200a         move.l     a2, d0
001192: 610c         bsr.b      $11a0
001194: 588f         addq.l     #$4, a7
001196: 4ced0400fffc movem.l    -$4(a5), a2
00119c: 4e5d         unlk       a5
00119e: 4e75         rts        
0011a0: 4e550000     link.w     a5, #$0
0011a4: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
0011a8: 2440         movea.l    d0, a2
0011aa: 598f         subq.l     #$4, a7
0011ac: 266a0036     movea.l    $36(a2), a3
0011b0: 48780009     pea.l      $9.w
0011b4: 222f000c     move.l     $c(a7), d1
0011b8: 200a         move.l     a2, d0
0011ba: 6100f218     bsr.w      $3d4
0011be: 588f         addq.l     #$4, a7
0011c0: 4a80         tst.l      d0
0011c2: 66000078     bne.w      $123c
0011c6: 202b0036     move.l     $36(a3), d0
0011ca: b0aa002a     cmp.l      $2a(a2), d0
0011ce: 620a         bhi.b      $11da
0011d0: 203c000000d3 move.l     #$d3, d0
0011d6: 600000ac     bra.w      $1284
0011da: 206a000a     movea.l    $a(a2), a0
0011de: 28280004     move.l     $4(a0), d4
0011e2: 6700009e     beq.w      $1282
0011e6: 202a002a     move.l     $2a(a2), d0
0011ea: d084         add.l      d4, d0
0011ec: b0ab0036     cmp.l      $36(a3), d0
0011f0: 630a         bls.b      $11fc
0011f2: 202b0036     move.l     $36(a3), d0
0011f6: 90aa002a     sub.l      $2a(a2), d0
0011fa: 2800         move.l     d0, d4
0011fc: 41d7         lea.l      (a7), a0
0011fe: 2208         move.l     a0, d1
001200: 2a04         move.l     d4, d5
001202: 2004         move.l     d4, d0
001204: 6100fb66     bsr.w      $d6c
001208: 2840         movea.l    d0, a4
00120a: 2540000e     move.l     d0, $e(a2)
00120e: 6608         bne.b      $1218
001210: 203c000000ed move.l     #$ed, d0
001216: 606c         bra.b      $1284
001218: 703e         moveq      #$3e, d0
00121a: d0aa002e     add.l      $2e(a2), d0
00121e: d0aa002a     add.l      $2a(a2), d0
001222: 2f00         move.l     d0, -(a7)
001224: 2f04         move.l     d4, -(a7)
001226: 7202         moveq      #$2, d1
001228: 200a         move.l     a2, d0
00122a: 6100fabc     bsr.w      $ce8
00122e: 508f         addq.l     #$8, a7
001230: 4a80         tst.l      d0
001232: 670e         beq.b      $1242
001234: 220c         move.l     a4, d1
001236: 2005         move.l     d5, d0
001238: 6100fb50     bsr.w      $d8a
00123c: 202e002a     move.l     $2a(a6), d0
001240: 6042         bra.b      $1284
001242: 4aaf002c     tst.l      $2c(a7)
001246: 6614         bne.b      $125c
001248: 2f04         move.l     d4, -(a7)
00124a: 206a000a     movea.l    $a(a2), a0
00124e: 22280020     move.l     $20(a0), d1
001252: 200c         move.l     a4, d0
001254: 6100fbac     bsr.w      $e02
001258: 588f         addq.l     #$4, a7
00125a: 6012         bra.b      $126e
00125c: 2f04         move.l     d4, -(a7)
00125e: 206a000a     movea.l    $a(a2), a0
001262: 22280020     move.l     $20(a0), d1
001266: 200c         move.l     a4, d0
001268: 6126         bsr.b      $1290
00126a: 588f         addq.l     #$4, a7
00126c: 2800         move.l     d0, d4
00126e: 206a000a     movea.l    $a(a2), a0
001272: 21440004     move.l     d4, $4(a0)
001276: d9aa002a     add.l      d4, $2a(a2)
00127a: 220c         move.l     a4, d1
00127c: 2005         move.l     d5, d0
00127e: 6100fb0a     bsr.w      $d8a
001282: 7000         moveq      #$0, d0
001284: 588f         addq.l     #$4, a7
001286: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
00128c: 4e5d         unlk       a5
00128e: 4e75         rts        
001290: 4e550000     link.w     a5, #$0
001294: 48e7cc30     movem.l    d0-d1/d4-d5/a2-a3, -(a7)
001298: 2440         movea.l    d0, a2
00129a: 2641         movea.l    d1, a3
00129c: 282f0020     move.l     $20(a7), d4
0012a0: 7a01         moveq      #$1, d5
0012a2: 600a         bra.b      $12ae
0012a4: 16d2         move.b     (a2), (a3)+
0012a6: 0c1a000d     cmpi.b     #$d, (a2)+
0012aa: 6706         beq.b      $12b2
0012ac: 5285         addq.l     #$1, d5
0012ae: ba84         cmp.l      d4, d5
0012b0: 63f2         bls.b      $12a4
0012b2: 2005         move.l     d5, d0
0012b4: 4ced0c30fff0 movem.l    -$10(a5), d4-d5/a2-a3
0012ba: 4e5d         unlk       a5
0012bc: 4e75         rts        
0012be: 4e550000     link.w     a5, #$0
0012c2: 48e7c020     movem.l    d0-d1/a2, -(a7)
0012c6: 2440         movea.l    d0, a2
0012c8: 202a0032     move.l     $32(a2), d0
0012cc: 6100edbc     bsr.w      $8a
0012d0: 42a7         clr.l      -(a7)
0012d2: 222f0008     move.l     $8(a7), d1
0012d6: 200a         move.l     a2, d0
0012d8: 6136         bsr.b      $1310
0012da: 588f         addq.l     #$4, a7
0012dc: 4ced0400fffc movem.l    -$4(a5), a2
0012e2: 4e5d         unlk       a5
0012e4: 4e75         rts        
0012e6: 4e550000     link.w     a5, #$0
0012ea: 48e7c020     movem.l    d0-d1/a2, -(a7)
0012ee: 2440         movea.l    d0, a2
0012f0: 202a0032     move.l     $32(a2), d0
0012f4: 6100ed94     bsr.w      $8a
0012f8: 48780001     pea.l      $1.w
0012fc: 222f0008     move.l     $8(a7), d1
001300: 200a         move.l     a2, d0
001302: 610c         bsr.b      $1310
001304: 588f         addq.l     #$4, a7
001306: 4ced0400fffc movem.l    -$4(a5), a2
00130c: 4e5d         unlk       a5
00130e: 4e75         rts        
001310: 4e550000     link.w     a5, #$0
001314: 48e7ceb8     movem.l    d0-d1/d4-d6/a0/a2-a4, -(a7)
001318: 2440         movea.l    d0, a2
00131a: 598f         subq.l     #$4, a7
00131c: 266a0036     movea.l    $36(a2), a3
001320: 48780012     pea.l      $12.w
001324: 222f000c     move.l     $c(a7), d1
001328: 200a         move.l     a2, d0
00132a: 6100f0a8     bsr.w      $3d4
00132e: 588f         addq.l     #$4, a7
001330: 4a80         tst.l      d0
001332: 6708         beq.b      $133c
001334: 202e002a     move.l     $2a(a6), d0
001338: 600000d2     bra.w      $140c
00133c: 206a000a     movea.l    $a(a2), a0
001340: 28280004     move.l     $4(a0), d4
001344: 670000c4     beq.w      $140a
001348: 70c2         moveq      #$c2, d0
00134a: d0ab0028     add.l      $28(a3), d0
00134e: 222a002a     move.l     $2a(a2), d1
001352: d284         add.l      d4, d1
001354: 9280         sub.l      d0, d1
001356: 2c01         move.l     d1, d6
001358: 6f0c         ble.b      $1366
00135a: 2206         move.l     d6, d1
00135c: 200a         move.l     a2, d0
00135e: 6100f4de     bsr.w      $83e
001362: 4a80         tst.l      d0
001364: 6672         bne.b      $13d8
001366: 41d7         lea.l      (a7), a0
001368: 2208         move.l     a0, d1
00136a: 2004         move.l     d4, d0
00136c: 6100f9fe     bsr.w      $d6c
001370: 2840         movea.l    d0, a4
001372: 2540000e     move.l     d0, $e(a2)
001376: 660a         bne.b      $1382
001378: 203c000000ed move.l     #$ed, d0
00137e: 6000008c     bra.w      $140c
001382: 4aaf0030     tst.l      $30(a7)
001386: 6716         beq.b      $139e
001388: 2f04         move.l     d4, -(a7)
00138a: 220c         move.l     a4, d1
00138c: 206a000a     movea.l    $a(a2), a0
001390: 20280020     move.l     $20(a0), d0
001394: 6100fefa     bsr.w      $1290
001398: 588f         addq.l     #$4, a7
00139a: 2800         move.l     d0, d4
00139c: 6012         bra.b      $13b0
00139e: 2f04         move.l     d4, -(a7)
0013a0: 220c         move.l     a4, d1
0013a2: 206a000a     movea.l    $a(a2), a0
0013a6: 20280020     move.l     $20(a0), d0
0013aa: 6100fa56     bsr.w      $e02
0013ae: 588f         addq.l     #$4, a7
0013b0: 254c000e     move.l     a4, $e(a2)
0013b4: 703e         moveq      #$3e, d0
0013b6: d0aa002e     add.l      $2e(a2), d0
0013ba: d0aa002a     add.l      $2a(a2), d0
0013be: 2f00         move.l     d0, -(a7)
0013c0: 2f04         move.l     d4, -(a7)
0013c2: 7204         moveq      #$4, d1
0013c4: 200a         move.l     a2, d0
0013c6: 6100f920     bsr.w      $ce8
0013ca: 508f         addq.l     #$8, a7
0013cc: 4a80         tst.l      d0
0013ce: 6710         beq.b      $13e0
0013d0: 220c         move.l     a4, d1
0013d2: 2004         move.l     d4, d0
0013d4: 6100f9b4     bsr.w      $d8a
0013d8: 203c000000f5 move.l     #$f5, d0
0013de: 602c         bra.b      $140c
0013e0: 206a000a     movea.l    $a(a2), a0
0013e4: 21440004     move.l     d4, $4(a0)
0013e8: d9aa002a     add.l      d4, $2a(a2)
0013ec: 220c         move.l     a4, d1
0013ee: 2004         move.l     d4, d0
0013f0: 6100f998     bsr.w      $d8a
0013f4: 202a002a     move.l     $2a(a2), d0
0013f8: b0ab0036     cmp.l      $36(a3), d0
0013fc: 630c         bls.b      $140a
0013fe: 276a002a0036 move.l     $2a(a2), $36(a3)
001404: 200a         move.l     a2, d0
001406: 6100f9c6     bsr.w      $dce
00140a: 7000         moveq      #$0, d0
00140c: 588f         addq.l     #$4, a7
00140e: 4ced1d70ffe4 movem.l    -$1c(a5), d4-d6/a0/a2-a4
001414: 4e5d         unlk       a5
001416: 4e75         rts        
001418: 4e550000     link.w     a5, #$0
00141c: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001420: 2440         movea.l    d0, a2
001422: 082a00070002 btst.b     #$7, $2(a2)
001428: 660a         bne.b      $1434
00142a: 206a000a     movea.l    $a(a2), a0
00142e: 25680004002a move.l     $4(a0), $2a(a2)
001434: 7000         moveq      #$0, d0
001436: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00143c: 4e5d         unlk       a5
00143e: 4e75         rts        
001440: 4e550000     link.w     a5, #$0
001444: 48e7ceb8     movem.l    d0-d1/d4-d6/a0/a2-a4, -(a7)
001448: 2440         movea.l    d0, a2
00144a: 206a000a     movea.l    $a(a2), a0
00144e: 28280004     move.l     $4(a0), d4
001452: 206a000a     movea.l    $a(a2), a0
001456: 28680020     movea.l    $20(a0), a4
00145a: 266a0036     movea.l    $36(a2), a3
00145e: 202a002a     move.l     $2a(a2), d0
001462: b0aa002e     cmp.l      $2e(a2), d0
001466: 630a         bls.b      $1472
001468: 202a002a     move.l     $2a(a2), d0
00146c: 90aa002e     sub.l      $2e(a2), d0
001470: d7c0         adda.l     d0, a3
001472: 0c1300ff     cmpi.b     #$ff, (a3)
001476: 6608         bne.b      $1480
001478: 203c000000d3 move.l     #$d3, d0
00147e: 604e         bra.b      $14ce
001480: 7a00         moveq      #$0, d5
001482: 603c         bra.b      $14c0
001484: 18db         move.b     (a3)+, (a4)+
001486: 52aa002a     addq.l     #$1, $2a(a2)
00148a: 7020         moveq      #$20, d0
00148c: d0aa002e     add.l      $2e(a2), d0
001490: b0aa002a     cmp.l      $2a(a2), d0
001494: 6228         bhi.b      $14be
001496: 206a0036     movea.l    $36(a2), a0
00149a: 20280020     move.l     $20(a0), d0
00149e: 2540002e     move.l     d0, $2e(a2)
0014a2: 2540002a     move.l     d0, $2a(a2)
0014a6: 222a002e     move.l     $2e(a2), d1
0014aa: 200a         move.l     a2, d0
0014ac: 6100f8ec     bsr.w      $d9a
0014b0: 266a0036     movea.l    $36(a2), a3
0014b4: 0c1300ff     cmpi.b     #$ff, (a3)
0014b8: 6604         bne.b      $14be
0014ba: 5285         addq.l     #$1, d5
0014bc: 6006         bra.b      $14c4
0014be: 5285         addq.l     #$1, d5
0014c0: ba84         cmp.l      d4, d5
0014c2: 65c0         bcs.b      $1484
0014c4: 206a000a     movea.l    $a(a2), a0
0014c8: 21450004     move.l     d5, $4(a0)
0014cc: 7000         moveq      #$0, d0
0014ce: 4ced1d70ffe4 movem.l    -$1c(a5), d4-d6/a0/a2-a4
0014d4: 4e5d         unlk       a5
0014d6: 4e75         rts        
0014d8: 2f02         move.l     d2, -(a7)
0014da: 7400         moveq      #$0, d2
0014dc: 4a80         tst.l      d0
0014de: 6a04         bpl.b      $14e4
0014e0: 4480         neg.l      d0
0014e2: 7403         moveq      #$3, d2
0014e4: 4a81         tst.l      d1
0014e6: 6a06         bpl.b      $14ee
0014e8: 4481         neg.l      d1
0014ea: 0a020001     eori.b     #$1, d2
0014ee: 6122         bsr.b      $1512
0014f0: e20a         lsr.b      #$1, d2
0014f2: 6402         bcc.b      $14f6
0014f4: 4480         neg.l      d0
0014f6: e20a         lsr.b      #$1, d2
0014f8: 6402         bcc.b      $14fc
0014fa: 4481         neg.l      d1
0014fc: 241f         move.l     (a7)+, d2
0014fe: 4a80         tst.l      d0
001500: 4e75         rts        
001502: 61d4         bsr.b      $14d8
001504: c141         exg.l      d0, d1
001506: 4a80         tst.l      d0
001508: 4e75         rts        
00150a: 6106         bsr.b      $1512
00150c: c141         exg.l      d0, d1
00150e: 4a80         tst.l      d0
001510: 4e75         rts        
001512: 48e73800     movem.l    d2-d4, -(a7)
001516: 2401         move.l     d1, d2
001518: 6606         bne.b      $1520
00151a: 81fc0000     divs.w     #$0, d0
00151e: 606e         bra.b      $158e
001520: 5381         subq.l     #$1, d1
001522: 676a         beq.b      $158e
001524: 2801         move.l     d1, d4
001526: 2200         move.l     d0, d1
001528: b481         cmp.l      d1, d2
00152a: 650c         bcs.b      $1538
00152c: 6704         beq.b      $1532
00152e: 7000         moveq      #$0, d0
001530: 605c         bra.b      $158e
001532: 7001         moveq      #$1, d0
001534: 9282         sub.l      d2, d1
001536: 6056         bra.b      $158e
001538: 2602         move.l     d2, d3
00153a: 6bf6         bmi.b      $1532
00153c: c684         and.l      d4, d3
00153e: 6612         bne.b      $1552
001540: e28a         lsr.l      #$1, d2
001542: 76ff         moveq      #$ff, d3
001544: e28a         lsr.l      #$1, d2
001546: 55cbfffc     dbcs       d3, $1544
00154a: 4483         neg.l      d3
00154c: e6a8         lsr.l      d3, d0
00154e: c284         and.l      d4, d1
001550: 603c         bra.b      $158e
001552: 7000         moveq      #$0, d0
001554: 76ff         moveq      #$ff, d3
001556: e382         asl.l      #$1, d2
001558: 6a06         bpl.b      $1560
00155a: b481         cmp.l      d1, d2
00155c: 620a         bhi.b      $1568
00155e: 600c         bra.b      $156c
001560: b481         cmp.l      d1, d2
001562: 54cbfff2     dbcc       d3, $1556
001566: 6704         beq.b      $156c
001568: 5283         addq.l     #$1, d3
00156a: e28a         lsr.l      #$1, d2
00156c: 4483         neg.l      d3
00156e: 6004         bra.b      $1574
001570: e380         asl.l      #$1, d0
001572: e28a         lsr.l      #$1, d2
001574: 9282         sub.l      d2, d1
001576: 6510         bcs.b      $1588
001578: 5280         addq.l     #$1, d0
00157a: 51cbfff4     dbra       d3, $1570
00157e: 600e         bra.b      $158e
001580: e380         asl.l      #$1, d0
001582: e28a         lsr.l      #$1, d2
001584: d282         add.l      d2, d1
001586: 65f0         bcs.b      $1578
001588: 51cbfff6     dbra       d3, $1580
00158c: d282         add.l      d2, d1
00158e: 4cdf001c     movem.l    (a7)+, d2-d4
001592: 4a80         tst.l      d0
001594: 4e75         rts        
001596: 6e72         bgt.b      $160a
001598: 66000079     bne.w      $1613
00159c: 80eb         divu.w     -$5556(a3), d0
