00003c: 002800380048 ori.b      #$38, $48(a0)
000042: 00580068     ori.w      #$68, (a0)+
000046: 007800880098 ori.w      #$88, $98.w
00004c: 00a800b800c800d8 ori.l      #$b800c8, $d8(a0)
000054: 00e8         .dc.w      $00e8
000056: 2200         move.l     d0, d1
000058: 6b06         bmi.b      $60
00005a: 2b410004     move.l     d1, $4(a5)
00005e: 4e75         rts        
000060: 4481         neg.l      d1
000062: 4e75         rts        
000064: 2f0d         move.l     a5, -(a7)
000066: 220c         move.l     a4, d1
000068: 2009         move.l     a1, d0
00006a: 61000d32     bsr.w      $d9e
00006e: 588f         addq.l     #$4, a7
000070: 6000ffe4     bra.w      $56
000074: 2f0d         move.l     a5, -(a7)
000076: 220c         move.l     a4, d1
000078: 2009         move.l     a1, d0
00007a: 610000b8     bsr.w      $134
00007e: 588f         addq.l     #$4, a7
000080: 6000ffd4     bra.w      $56
000084: 2f0d         move.l     a5, -(a7)
000086: 220c         move.l     a4, d1
000088: 2009         move.l     a1, d0
00008a: 61000dee     bsr.w      $e7a
00008e: 588f         addq.l     #$4, a7
000090: 6000ffc4     bra.w      $56
000094: 2f0d         move.l     a5, -(a7)
000096: 220c         move.l     a4, d1
000098: 2009         move.l     a1, d0
00009a: 61000dea     bsr.w      $e86
00009e: 588f         addq.l     #$4, a7
0000a0: 6000ffb4     bra.w      $56
0000a4: 2f0d         move.l     a5, -(a7)
0000a6: 220c         move.l     a4, d1
0000a8: 2009         move.l     a1, d0
0000aa: 61000e20     bsr.w      $ecc
0000ae: 588f         addq.l     #$4, a7
0000b0: 6000ffa4     bra.w      $56
0000b4: 2f0d         move.l     a5, -(a7)
0000b6: 220c         move.l     a4, d1
0000b8: 2009         move.l     a1, d0
0000ba: 61000e92     bsr.w      $f4e
0000be: 588f         addq.l     #$4, a7
0000c0: 6000ff94     bra.w      $56
0000c4: 2f0d         move.l     a5, -(a7)
0000c6: 220c         move.l     a4, d1
0000c8: 2009         move.l     a1, d0
0000ca: 6100062c     bsr.w      $6f8
0000ce: 588f         addq.l     #$4, a7
0000d0: 6000ff84     bra.w      $56
0000d4: 2f0d         move.l     a5, -(a7)
0000d6: 220c         move.l     a4, d1
0000d8: 2009         move.l     a1, d0
0000da: 610007b4     bsr.w      $890
0000de: 588f         addq.l     #$4, a7
0000e0: 6000ff74     bra.w      $56
0000e4: 2f0d         move.l     a5, -(a7)
0000e6: 220c         move.l     a4, d1
0000e8: 2009         move.l     a1, d0
0000ea: 61000ed2     bsr.w      $fbe
0000ee: 588f         addq.l     #$4, a7
0000f0: 6000ff64     bra.w      $56
0000f4: 2f0d         move.l     a5, -(a7)
0000f6: 220c         move.l     a4, d1
0000f8: 2009         move.l     a1, d0
0000fa: 61000f9c     bsr.w      $1098
0000fe: 588f         addq.l     #$4, a7
000100: 6000ff54     bra.w      $56
000104: 2f0d         move.l     a5, -(a7)
000106: 220c         move.l     a4, d1
000108: 2009         move.l     a1, d0
00010a: 61000a4e     bsr.w      $b5a
00010e: 588f         addq.l     #$4, a7
000110: 6000ff44     bra.w      $56
000114: 2f0d         move.l     a5, -(a7)
000116: 220c         move.l     a4, d1
000118: 2009         move.l     a1, d0
00011a: 6100083e     bsr.w      $95a
00011e: 588f         addq.l     #$4, a7
000120: 6000ff34     bra.w      $56
000124: 2f0d         move.l     a5, -(a7)
000126: 220c         move.l     a4, d1
000128: 2009         move.l     a1, d0
00012a: 6100052a     bsr.w      $656
00012e: 588f         addq.l     #$4, a7
000130: 6000ff24     bra.w      $56
000134: 4e550000     link.w     a5, #$0
000138: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00013c: 518f         subq.l     #$8, a7
00013e: 206f0008     movea.l    $8(a7), a0
000142: 20680004     movea.l    $4(a0), a0
000146: 24680004     movea.l    $4(a0), a2
00014a: 206f0008     movea.l    $8(a7), a0
00014e: 42a8002e     clr.l      $2e(a0)
000152: 206f0008     movea.l    $8(a7), a0
000156: 42a8004a     clr.l      $4a(a0)
00015a: 206f0008     movea.l    $8(a7), a0
00015e: 42a80042     clr.l      $42(a0)
000162: 206f0008     movea.l    $8(a7), a0
000166: 7000         moveq      #$0, d0
000168: 21400046     move.l     d0, $46(a0)
00016c: 206f0008     movea.l    $8(a7), a0
000170: 2140004e     move.l     d0, $4e(a0)
000174: 206f0024     movea.l    $24(a7), a0
000178: 20280020     move.l     $20(a0), d0
00017c: 61000094     bsr.w      $212
000180: 2f400004     move.l     d0, $4(a7)
000184: 6632         bne.b      $1b8
000186: 206f0008     movea.l    $8(a7), a0
00018a: 214a002a     move.l     a2, $2a(a0)
00018e: 206f0024     movea.l    $24(a7), a0
000192: 082800000003 btst.b     #$0, $3(a0)
000198: 6608         bne.b      $1a2
00019a: 203cffffff35 move.l     #$ffffff35, d0
0001a0: 6064         bra.b      $206
0001a2: 222f0008     move.l     $8(a7), d1
0001a6: 200a         move.l     a2, d0
0001a8: 610017c4     bsr.w      $196e
0001ac: 2e80         move.l     d0, (a7)
0001ae: 6c54         bge.b      $204
0001b0: 203cffffff2a move.l     #$ffffff2a, d0
0001b6: 604e         bra.b      $206
0001b8: 222f0004     move.l     $4(a7), d1
0001bc: 202a0030     move.l     $30(a2), d0
0001c0: 61000094     bsr.w      $256
0001c4: 206f0008     movea.l    $8(a7), a0
0001c8: 2140002a     move.l     d0, $2a(a0)
0001cc: 6622         bne.b      $1f0
0001ce: 2f2a0034     move.l     $34(a2), -(a7)
0001d2: 2f2f0010     move.l     $10(a7), -(a7)
0001d6: 222f000c     move.l     $c(a7), d1
0001da: 200a         move.l     a2, d0
0001dc: 610000ae     bsr.w      $28c
0001e0: 508f         addq.l     #$8, a7
0001e2: 206f0008     movea.l    $8(a7), a0
0001e6: 2140002a     move.l     d0, $2a(a0)
0001ea: 6604         bne.b      $1f0
0001ec: 70ff         moveq      #$ff, d0
0001ee: 6016         bra.b      $206
0001f0: 206f0008     movea.l    $8(a7), a0
0001f4: 2068002a     movea.l    $2a(a0), a0
0001f8: 52680050     addq.w     #$1, $50(a0)
0001fc: 202f0008     move.l     $8(a7), d0
000200: 61000f96     bsr.w      $1198
000204: 7000         moveq      #$0, d0
000206: 508f         addq.l     #$8, a7
000208: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00020e: 4e5d         unlk       a5
000210: 4e75         rts        
000212: 4e550000     link.w     a5, #$0
000216: 48e78020     movem.l    d0/a2, -(a7)
00021a: 2440         movea.l    d0, a2
00021c: 601c         bra.b      $23a
00021e: 4a12         tst.b      (a2)
000220: 6604         bne.b      $226
000222: 7000         moveq      #$0, d0
000224: 6026         bra.b      $24c
000226: 528a         addq.l     #$1, a2
000228: 0c12002f     cmpi.b     #$2f, (a2)
00022c: 66f0         bne.b      $21e
00022e: 528a         addq.l     #$1, a2
000230: 0c120040     cmpi.b     #$40, (a2)
000234: 6614         bne.b      $24a
000236: 528a         addq.l     #$1, a2
000238: 6010         bra.b      $24a
00023a: 1012         move.b     (a2), d0
00023c: 4880         ext.w      d0
00023e: 0c40002e     cmpi.w     #$2e, d0
000242: 67de         beq.b      $222
000244: 0c40002f     cmpi.w     #$2f, d0
000248: 67dc         beq.b      $226
00024a: 200a         move.l     a2, d0
00024c: 4ced0400fffc movem.l    -$4(a5), a2
000252: 4e5d         unlk       a5
000254: 4e75         rts        
000256: 4e550000     link.w     a5, #$0
00025a: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
00025e: 2440         movea.l    d0, a2
000260: 2641         movea.l    d1, a3
000262: 200a         move.l     a2, d0
000264: 671a         beq.b      $280
000266: 220b         move.l     a3, d1
000268: 705a         moveq      #$5a, d0
00026a: d08a         add.l      a2, d0
00026c: 6100161e     bsr.w      $188c
000270: 4a80         tst.l      d0
000272: 6708         beq.b      $27c
000274: 246a0052     movea.l    $52(a2), a2
000278: 200a         move.l     a2, d0
00027a: 66ea         bne.b      $266
00027c: 200a         move.l     a2, d0
00027e: 6002         bra.b      $282
000280: 7000         moveq      #$0, d0
000282: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
000288: 4e5d         unlk       a5
00028a: 4e75         rts        
00028c: 4e550000     link.w     a5, #$0
000290: 48e7c8f0     movem.l    d0-d1/d4/a0-a3, -(a7)
000294: 2441         movea.l    d1, a2
000296: 4fefffda     lea.l      -$26(a7), a7
00029a: 4297         clr.l      (a7)
00029c: 0c12005b     cmpi.b     #$5b, (a2)
0002a0: 664a         bne.b      $2ec
0002a2: 528a         addq.l     #$1, a2
0002a4: 0c120041     cmpi.b     #$41, (a2)
0002a8: 6d42         blt.b      $2ec
0002aa: 41ef0008     lea.l      $8(a7), a0
0002ae: 2208         move.l     a0, d1
0002b0: 200a         move.l     a2, d0
0002b2: 6100012a     bsr.w      $3de
0002b6: 4a80         tst.l      d0
0002b8: 6700007e     beq.w      $338
0002bc: 41ef0008     lea.l      $8(a7), a0
0002c0: 2208         move.l     a0, d1
0002c2: 206f0026     movea.l    $26(a7), a0
0002c6: 20280030     move.l     $30(a0), d0
0002ca: 6100ff8a     bsr.w      $256
0002ce: 2f400004     move.l     d0, $4(a7)
0002d2: 6708         beq.b      $2dc
0002d4: 202f0004     move.l     $4(a7), d0
0002d8: 600000f6     bra.w      $3d0
0002dc: 41ef0008     lea.l      $8(a7), a0
0002e0: 2208         move.l     a0, d1
0002e2: 7000         moveq      #$0, d0
0002e4: 61001016     bsr.w      $12fc
0002e8: 2e80         move.l     d0, (a7)
0002ea: 674c         beq.b      $338
0002ec: 203c000000ca move.l     #$ca, d0
0002f2: 61000fb6     bsr.w      $12aa
0002f6: 2640         movea.l    d0, a3
0002f8: 4a80         tst.l      d0
0002fa: 673c         beq.b      $338
0002fc: 4a97         tst.l      (a7)
0002fe: 671e         beq.b      $31e
000300: 2057         movea.l    (a7), a0
000302: 70d0         moveq      #$d0, d0
000304: d0a80004     add.l      $4(a0), d0
000308: 2f40004e     move.l     d0, $4e(a7)
00030c: 2740000a     move.l     d0, $a(a3)
000310: 45ef0008     lea.l      $8(a7), a2
000314: 7030         moveq      #$30, d0
000316: d097         add.l      (a7), d0
000318: 27400002     move.l     d0, $2(a3)
00031c: 6024         bra.b      $342
00031e: 202f004e     move.l     $4e(a7), d0
000322: 61000f86     bsr.w      $12aa
000326: 27400002     move.l     d0, $2(a3)
00032a: 6612         bne.b      $33e
00032c: 220b         move.l     a3, d1
00032e: 203c000000ca move.l     #$ca, d0
000334: 61001008     bsr.w      $133e
000338: 7000         moveq      #$0, d0
00033a: 60000094     bra.w      $3d0
00033e: 42ab000a     clr.l      $a(a3)
000342: 206f0026     movea.l    $26(a7), a0
000346: 3768003c00c0 move.w     $3c(a0), $c0(a3)
00034c: 276f004e0006 move.l     $4e(a7), $6(a3)
000352: 220a         move.l     a2, d1
000354: 705a         moveq      #$5a, d0
000356: d08b         add.l      a3, d0
000358: 610015c4     bsr.w      $191e
00035c: 377c00010050 move.w     #$1, $50(a3)
000362: 4253         clr.w      (a3)
000364: 206f0026     movea.l    $26(a7), a0
000368: 276800300052 move.l     $30(a0), $52(a3)
00036e: 4aab0052     tst.l      $52(a3)
000372: 6708         beq.b      $37c
000374: 206b0052     movea.l    $52(a3), a0
000378: 214b0056     move.l     a3, $56(a0)
00037c: 42ab0056     clr.l      $56(a3)
000380: 206f0026     movea.l    $26(a7), a0
000384: 214b0030     move.l     a3, $30(a0)
000388: 206f004a     movea.l    $4a(a7), a0
00038c: 3750006e     move.w     (a0), $6e(a3)
000390: 206f0026     movea.l    $26(a7), a0
000394: 37680038004e move.w     $38(a0), $4e(a3)
00039a: 206f0026     movea.l    $26(a7), a0
00039e: 52680038     addq.w     #$1, $38(a0)
0003a2: 30280038     move.w     $38(a0), d0
0003a6: 48c0         ext.l      d0
0003a8: 206f0026     movea.l    $26(a7), a0
0003ac: 3228003a     move.w     $3a(a0), d1
0003b0: 48c1         ext.l      d1
0003b2: 9081         sub.l      d1, d0
0003b4: 7220         moveq      #$20, d1
0003b6: b280         cmp.l      d0, d1
0003b8: 6c0e         bge.b      $3c8
0003ba: 206f0026     movea.l    $26(a7), a0
0003be: 226f0026     movea.l    $26(a7), a1
0003c2: 3368003a0038 move.w     $3a(a0), $38(a1)
0003c8: 200b         move.l     a3, d0
0003ca: 61000d96     bsr.w      $1162
0003ce: 200b         move.l     a3, d0
0003d0: 4fef0026     lea.l      $26(a7), a7
0003d4: 4ced0f10ffec movem.l    -$14(a5), d4/a0-a3
0003da: 4e5d         unlk       a5
0003dc: 4e75         rts        
0003de: 4e550000     link.w     a5, #$0
0003e2: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
0003e6: 2440         movea.l    d0, a2
0003e8: 2641         movea.l    d1, a3
0003ea: 558f         subq.l     #$2, a7
0003ec: 284a         movea.l    a2, a4
0003ee: 7800         moveq      #$0, d4
0003f0: 601a         bra.b      $40c
0003f2: 0c2f002c0001 cmpi.b     #$2c, $1(a7)
0003f8: 671e         beq.b      $418
0003fa: 0c2f005d0001 cmpi.b     #$5d, $1(a7)
000400: 6716         beq.b      $418
000402: 2004         move.l     d4, d0
000404: 5284         addq.l     #$1, d4
000406: 17af00010800 move.b     $1(a7), (a3, d0.l)
00040c: 1f5c0001     move.b     (a4)+, $1(a7)
000410: 6706         beq.b      $418
000412: 701d         moveq      #$1d, d0
000414: b084         cmp.l      d4, d0
000416: 6cda         bge.b      $3f2
000418: 42334800     clr.b      (a3, d4.l)
00041c: 4a2f0001     tst.b      $1(a7)
000420: 6706         beq.b      $428
000422: 701d         moveq      #$1d, d0
000424: b084         cmp.l      d4, d0
000426: 6c04         bge.b      $42c
000428: 7000         moveq      #$0, d0
00042a: 6002         bra.b      $42e
00042c: 7001         moveq      #$1, d0
00042e: 548f         addq.l     #$2, a7
000430: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
000436: 4e5d         unlk       a5
000438: 4e75         rts        
00043a: 4e550000     link.w     a5, #$0
00043e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000442: 4feffff4     lea.l      -$c(a7), a7
000446: 206f0010     movea.l    $10(a7), a0
00044a: 4aa80052     tst.l      $52(a0)
00044e: 6712         beq.b      $462
000450: 206f0010     movea.l    $10(a7), a0
000454: 226f0010     movea.l    $10(a7), a1
000458: 22690052     movea.l    $52(a1), a1
00045c: 236800560056 move.l     $56(a0), $56(a1)
000462: 206f0010     movea.l    $10(a7), a0
000466: 4aa80056     tst.l      $56(a0)
00046a: 6714         beq.b      $480
00046c: 206f0010     movea.l    $10(a7), a0
000470: 226f0010     movea.l    $10(a7), a1
000474: 22690056     movea.l    $56(a1), a1
000478: 236800520052 move.l     $52(a0), $52(a1)
00047e: 600e         bra.b      $48e
000480: 206f0010     movea.l    $10(a7), a0
000484: 226f000c     movea.l    $c(a7), a1
000488: 236800520030 move.l     $52(a0), $30(a1)
00048e: 206f000c     movea.l    $c(a7), a0
000492: 2f68000a0008 move.l     $a(a0), $8(a7)
000498: 6020         bra.b      $4ba
00049a: 206f0008     movea.l    $8(a7), a0
00049e: 202f0010     move.l     $10(a7), d0
0004a2: b0a8002a     cmp.l      $2a(a0), d0
0004a6: 6608         bne.b      $4b0
0004a8: 206f0008     movea.l    $8(a7), a0
0004ac: 42a8002a     clr.l      $2a(a0)
0004b0: 206f0008     movea.l    $8(a7), a0
0004b4: 2f6800160008 move.l     $16(a0), $8(a7)
0004ba: 4aaf0008     tst.l      $8(a7)
0004be: 66da         bne.b      $49a
0004c0: 700e         moveq      #$e, d0
0004c2: d0af0010     add.l      $10(a7), d0
0004c6: 2f400004     move.l     d0, $4(a7)
0004ca: 702c         moveq      #$2c, d0
0004cc: d0af0010     add.l      $10(a7), d0
0004d0: 2e80         move.l     d0, (a7)
0004d2: 6018         bra.b      $4ec
0004d4: 7201         moveq      #$1, d1
0004d6: 206f0004     movea.l    $4(a7), a0
0004da: 3050         movea.w    (a0), a0
0004dc: 2008         move.l     a0, d0
0004de: 61000f4c     bsr.w      $142c
0004e2: 206f0004     movea.l    $4(a7), a0
0004e6: 54af0004     addq.l     #$2, $4(a7)
0004ea: 4250         clr.w      (a0)
0004ec: 206f0004     movea.l    $4(a7), a0
0004f0: 4a50         tst.w      (a0)
0004f2: 6708         beq.b      $4fc
0004f4: 202f0004     move.l     $4(a7), d0
0004f8: b097         cmp.l      (a7), d0
0004fa: 65d8         bcs.b      $4d4
0004fc: 7201         moveq      #$1, d1
0004fe: 202f0010     move.l     $10(a7), d0
000502: 61000d0a     bsr.w      $120e
000506: 206f0010     movea.l    $10(a7), a0
00050a: 4aa80006     tst.l      $6(a0)
00050e: 671e         beq.b      $52e
000510: 206f0010     movea.l    $10(a7), a0
000514: 4aa80002     tst.l      $2(a0)
000518: 6714         beq.b      $52e
00051a: 206f0010     movea.l    $10(a7), a0
00051e: 22280002     move.l     $2(a0), d1
000522: 206f0010     movea.l    $10(a7), a0
000526: 20280006     move.l     $6(a0), d0
00052a: 61000e12     bsr.w      $133e
00052e: 222f0010     move.l     $10(a7), d1
000532: 203c000000ca move.l     #$ca, d0
000538: 61000e04     bsr.w      $133e
00053c: 7000         moveq      #$0, d0
00053e: 4fef000c     lea.l      $c(a7), a7
000542: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000548: 4e5d         unlk       a5
00054a: 4e75         rts        
00054c: 4e550000     link.w     a5, #$0
000550: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000554: 598f         subq.l     #$4, a7
000556: 206f0004     movea.l    $4(a7), a0
00055a: 4a6800c0     tst.w      $c0(a0)
00055e: 6658         bne.b      $5b8
000560: 206f0004     movea.l    $4(a7), a0
000564: 202f0008     move.l     $8(a7), d0
000568: b0a80006     cmp.l      $6(a0), d0
00056c: 6f0000d8     ble.w      $646
000570: 206f0004     movea.l    $4(a7), a0
000574: 4aa80006     tst.l      $6(a0)
000578: 671e         beq.b      $598
00057a: 206f0004     movea.l    $4(a7), a0
00057e: 4aa80002     tst.l      $2(a0)
000582: 6714         beq.b      $598
000584: 206f0004     movea.l    $4(a7), a0
000588: 22280002     move.l     $2(a0), d1
00058c: 206f0004     movea.l    $4(a7), a0
000590: 20280006     move.l     $6(a0), d0
000594: 61000da8     bsr.w      $133e
000598: 202f0008     move.l     $8(a7), d0
00059c: 61000d0c     bsr.w      $12aa
0005a0: 206f0004     movea.l    $4(a7), a0
0005a4: 21400002     move.l     d0, $2(a0)
0005a8: 673a         beq.b      $5e4
0005aa: 206f0004     movea.l    $4(a7), a0
0005ae: 216f00080006 move.l     $8(a7), $6(a0)
0005b4: 60000090     bra.w      $646
0005b8: 206f0004     movea.l    $4(a7), a0
0005bc: 226f001c     movea.l    $1c(a7), a1
0005c0: 2029002e     move.l     $2e(a1), d0
0005c4: d0af0008     add.l      $8(a7), d0
0005c8: b0a80006     cmp.l      $6(a0), d0
0005cc: 6f000078     ble.w      $646
0005d0: 206f001c     movea.l    $1c(a7), a0
0005d4: 2028002e     move.l     $2e(a0), d0
0005d8: d0af0008     add.l      $8(a7), d0
0005dc: 61000ccc     bsr.w      $12aa
0005e0: 2e80         move.l     d0, (a7)
0005e2: 6604         bne.b      $5e8
0005e4: 70ff         moveq      #$ff, d0
0005e6: 6062         bra.b      $64a
0005e8: 206f0004     movea.l    $4(a7), a0
0005ec: 2f280006     move.l     $6(a0), -(a7)
0005f0: 222f0004     move.l     $4(a7), d1
0005f4: 206f0008     movea.l    $8(a7), a0
0005f8: 20280002     move.l     $2(a0), d0
0005fc: 61000f6c     bsr.w      $156a
000600: 588f         addq.l     #$4, a7
000602: 206f0004     movea.l    $4(a7), a0
000606: 4aa80006     tst.l      $6(a0)
00060a: 671e         beq.b      $62a
00060c: 206f0004     movea.l    $4(a7), a0
000610: 4aa80002     tst.l      $2(a0)
000614: 6714         beq.b      $62a
000616: 206f0004     movea.l    $4(a7), a0
00061a: 22280002     move.l     $2(a0), d1
00061e: 206f0004     movea.l    $4(a7), a0
000622: 20280006     move.l     $6(a0), d0
000626: 61000d16     bsr.w      $133e
00062a: 206f001c     movea.l    $1c(a7), a0
00062e: 2028002e     move.l     $2e(a0), d0
000632: d0af0008     add.l      $8(a7), d0
000636: 206f0004     movea.l    $4(a7), a0
00063a: 21400006     move.l     d0, $6(a0)
00063e: 206f0004     movea.l    $4(a7), a0
000642: 21570002     move.l     (a7), $2(a0)
000646: 202f0008     move.l     $8(a7), d0
00064a: 588f         addq.l     #$4, a7
00064c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000652: 4e5d         unlk       a5
000654: 4e75         rts        
000656: 4e550000     link.w     a5, #$0
00065a: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00065e: 2057         movea.l    (a7), a0
000660: 20680004     movea.l    $4(a0), a0
000664: 24680004     movea.l    $4(a0), a2
000668: 2057         movea.l    (a7), a0
00066a: b5e8002a     cmpa.l     $2a(a0), a2
00066e: 663c         bne.b      $6ac
000670: 2057         movea.l    (a7), a0
000672: 4a280003     tst.b      $3(a0)
000676: 66000074     bne.w      $6ec
00067a: 2057         movea.l    (a7), a0
00067c: 4aa8004a     tst.l      $4a(a0)
000680: 676a         beq.b      $6ec
000682: 2057         movea.l    (a7), a0
000684: 22280042     move.l     $42(a0), d1
000688: 2057         movea.l    (a7), a0
00068a: 30280052     move.w     $52(a0), d0
00068e: 48c0         ext.l      d0
000690: e188         lsl.l      #$8, d0
000692: 61000caa     bsr.w      $133e
000696: 2057         movea.l    (a7), a0
000698: 2228004a     move.l     $4a(a0), d1
00069c: 2057         movea.l    (a7), a0
00069e: 30280052     move.w     $52(a0), d0
0006a2: 48c0         ext.l      d0
0006a4: eb88         lsl.l      #$5, d0
0006a6: 61000c96     bsr.w      $133e
0006aa: 6040         bra.b      $6ec
0006ac: 2057         movea.l    (a7), a0
0006ae: 2668002a     movea.l    $2a(a0), a3
0006b2: 200b         move.l     a3, d0
0006b4: 6604         bne.b      $6ba
0006b6: 70ff         moveq      #$ff, d0
0006b8: 6034         bra.b      $6ee
0006ba: 206f0004     movea.l    $4(a7), a0
0006be: 7000         moveq      #$0, d0
0006c0: 3010         move.w     (a0), d0
0006c2: 322b006e     move.w     $6e(a3), d1
0006c6: 48c1         ext.l      d1
0006c8: b081         cmp.l      d1, d0
0006ca: 6604         bne.b      $6d0
0006cc: 426b006e     clr.w      $6e(a3)
0006d0: 2057         movea.l    (a7), a0
0006d2: 4a280003     tst.b      $3(a0)
0006d6: 6614         bne.b      $6ec
0006d8: 2017         move.l     (a7), d0
0006da: 61000b08     bsr.w      $11e4
0006de: 536b0050     subq.w     #$1, $50(a3)
0006e2: 6608         bne.b      $6ec
0006e4: 220b         move.l     a3, d1
0006e6: 200a         move.l     a2, d0
0006e8: 6100fd50     bsr.w      $43a
0006ec: 7000         moveq      #$0, d0
0006ee: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0006f4: 4e5d         unlk       a5
0006f6: 4e75         rts        
0006f8: 4e550000     link.w     a5, #$0
0006fc: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000700: 4fefffe8     lea.l      -$18(a7), a7
000704: 206f0034     movea.l    $34(a7), a0
000708: 2f6800040014 move.l     $4(a0), $14(a7)
00070e: 206f0034     movea.l    $34(a7), a0
000712: 26680020     movea.l    $20(a0), a3
000716: 42af0008     clr.l      $8(a7)
00071a: 206f0018     movea.l    $18(a7), a0
00071e: 4aa8004a     tst.l      $4a(a0)
000722: 670000a4     beq.w      $7c8
000726: 206f0034     movea.l    $34(a7), a0
00072a: 2f680004000c move.l     $4(a0), $c(a7)
000730: 206f0018     movea.l    $18(a7), a0
000734: 2028004a     move.l     $4a(a0), d0
000738: 206f0018     movea.l    $18(a7), a0
00073c: 32280052     move.w     $52(a0), d1
000740: 48c1         ext.l      d1
000742: eb89         lsl.l      #$5, d1
000744: d081         add.l      d1, d0
000746: 2e80         move.l     d0, (a7)
000748: 42af0004     clr.l      $4(a7)
00074c: 6066         bra.b      $7b4
00074e: 206f0018     movea.l    $18(a7), a0
000752: 2017         move.l     (a7), d0
000754: b0a8004e     cmp.l      $4e(a0), d0
000758: 6f000124     ble.w      $87e
00075c: 7020         moveq      #$20, d0
00075e: b0af000c     cmp.l      $c(a7), d0
000762: 6f08         ble.b      $76c
000764: 2f6f000c0010 move.l     $c(a7), $10(a7)
00076a: 6006         bra.b      $772
00076c: 7020         moveq      #$20, d0
00076e: 2f400010     move.l     d0, $10(a7)
000772: 2f2f0010     move.l     $10(a7), -(a7)
000776: 220b         move.l     a3, d1
000778: 206f001c     movea.l    $1c(a7), a0
00077c: 2028004e     move.l     $4e(a0), d0
000780: 61000de8     bsr.w      $156a
000784: 588f         addq.l     #$4, a7
000786: 202f0010     move.l     $10(a7), d0
00078a: 91af000c     sub.l      d0, $c(a7)
00078e: 202f0010     move.l     $10(a7), d0
000792: d7c0         adda.l     d0, a3
000794: 202f0010     move.l     $10(a7), d0
000798: d1af0008     add.l      d0, $8(a7)
00079c: 202f0010     move.l     $10(a7), d0
0007a0: 206f0018     movea.l    $18(a7), a0
0007a4: d1a8004e     add.l      d0, $4e(a0)
0007a8: 4aaf000c     tst.l      $c(a7)
0007ac: 670000d0     beq.w      $87e
0007b0: 52af0004     addq.l     #$1, $4(a7)
0007b4: 206f0018     movea.l    $18(a7), a0
0007b8: 30280052     move.w     $52(a0), d0
0007bc: 48c0         ext.l      d0
0007be: b0af0004     cmp.l      $4(a7), d0
0007c2: 6e8a         bgt.b      $74e
0007c4: 600000b8     bra.w      $87e
0007c8: 206f0018     movea.l    $18(a7), a0
0007cc: 2468002a     movea.l    $2a(a0), a2
0007d0: 200a         move.l     a2, d0
0007d2: 671c         beq.b      $7f0
0007d4: 4a6a00c0     tst.w      $c0(a2)
0007d8: 6632         bne.b      $80c
0007da: 202f0014     move.l     $14(a7), d0
0007de: b0aa000a     cmp.l      $a(a2), d0
0007e2: 6f06         ble.b      $7ea
0007e4: 2f6a000a0014 move.l     $a(a2), $14(a7)
0007ea: 4aaa000a     tst.l      $a(a2)
0007ee: 660a         bne.b      $7fa
0007f0: 203cffffff0c move.l     #$ffffff0c, d0
0007f6: 6000008a     bra.w      $882
0007fa: 2f2f0014     move.l     $14(a7), -(a7)
0007fe: 220b         move.l     a3, d1
000800: 202a0002     move.l     $2(a2), d0
000804: 61000d64     bsr.w      $156a
000808: 588f         addq.l     #$4, a7
00080a: 606c         bra.b      $878
00080c: 206f0018     movea.l    $18(a7), a0
000810: 2028002e     move.l     $2e(a0), d0
000814: b0aa000a     cmp.l      $a(a2), d0
000818: 6d08         blt.b      $822
00081a: 203cffffff2d move.l     #$ffffff2d, d0
000820: 6060         bra.b      $882
000822: 206f0018     movea.l    $18(a7), a0
000826: 2028002e     move.l     $2e(a0), d0
00082a: d0af0014     add.l      $14(a7), d0
00082e: b0aa000a     cmp.l      $a(a2), d0
000832: 6f10         ble.b      $844
000834: 206f0018     movea.l    $18(a7), a0
000838: 202a000a     move.l     $a(a2), d0
00083c: 90a8002e     sub.l      $2e(a0), d0
000840: 2f400014     move.l     d0, $14(a7)
000844: 4aaa000a     tst.l      $a(a2)
000848: 6706         beq.b      $850
00084a: 4aaf0014     tst.l      $14(a7)
00084e: 6604         bne.b      $854
000850: 7000         moveq      #$0, d0
000852: 602e         bra.b      $882
000854: 2f2f0014     move.l     $14(a7), -(a7)
000858: 220b         move.l     a3, d1
00085a: 202a0002     move.l     $2(a2), d0
00085e: 206f001c     movea.l    $1c(a7), a0
000862: d0a8002e     add.l      $2e(a0), d0
000866: 61000d02     bsr.w      $156a
00086a: 588f         addq.l     #$4, a7
00086c: 202f0014     move.l     $14(a7), d0
000870: 206f0018     movea.l    $18(a7), a0
000874: d1a8002e     add.l      d0, $2e(a0)
000878: 2f6f00140008 move.l     $14(a7), $8(a7)
00087e: 202f0008     move.l     $8(a7), d0
000882: 4fef0018     lea.l      $18(a7), a7
000886: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00088c: 4e5d         unlk       a5
00088e: 4e75         rts        
000890: 4e550000     link.w     a5, #$0
000894: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
000898: 4feffff4     lea.l      -$c(a7), a7
00089c: 206f0030     movea.l    $30(a7), a0
0008a0: 26680020     movea.l    $20(a0), a3
0008a4: 206f0030     movea.l    $30(a7), a0
0008a8: 2f6800040008 move.l     $4(a0), $8(a7)
0008ae: 206f000c     movea.l    $c(a7), a0
0008b2: 2468002a     movea.l    $2a(a0), a2
0008b6: 200a         move.l     a2, d0
0008b8: 6714         beq.b      $8ce
0008ba: 2f2f000c     move.l     $c(a7), -(a7)
0008be: 222f000c     move.l     $c(a7), d1
0008c2: 200a         move.l     a2, d0
0008c4: 6100fc86     bsr.w      $54c
0008c8: 588f         addq.l     #$4, a7
0008ca: 4a80         tst.l      d0
0008cc: 6c08         bge.b      $8d6
0008ce: 203cffffff0b move.l     #$ffffff0b, d0
0008d4: 6076         bra.b      $94c
0008d6: 4a6a00c0     tst.w      $c0(a2)
0008da: 6618         bne.b      $8f4
0008dc: 2f2f0008     move.l     $8(a7), -(a7)
0008e0: 222a0002     move.l     $2(a2), d1
0008e4: 200b         move.l     a3, d0
0008e6: 61000c82     bsr.w      $156a
0008ea: 588f         addq.l     #$4, a7
0008ec: 256f0008000a move.l     $8(a7), $a(a2)
0008f2: 6048         bra.b      $93c
0008f4: 206f000c     movea.l    $c(a7), a0
0008f8: 2028002e     move.l     $2e(a0), d0
0008fc: d0af0008     add.l      $8(a7), d0
000900: b0aa000a     cmp.l      $a(a2), d0
000904: 6f10         ble.b      $916
000906: 206f000c     movea.l    $c(a7), a0
00090a: 2028002e     move.l     $2e(a0), d0
00090e: d0af0008     add.l      $8(a7), d0
000912: 2540000a     move.l     d0, $a(a2)
000916: 2f2f0008     move.l     $8(a7), -(a7)
00091a: 202a0002     move.l     $2(a2), d0
00091e: 206f0010     movea.l    $10(a7), a0
000922: d0a8002e     add.l      $2e(a0), d0
000926: 2200         move.l     d0, d1
000928: 200b         move.l     a3, d0
00092a: 61000c3e     bsr.w      $156a
00092e: 588f         addq.l     #$4, a7
000930: 202f0008     move.l     $8(a7), d0
000934: 206f000c     movea.l    $c(a7), a0
000938: d1a8002e     add.l      d0, $2e(a0)
00093c: 306a004e     movea.w    $4e(a2), a0
000940: 2208         move.l     a0, d1
000942: 200a         move.l     a2, d0
000944: 610008c8     bsr.w      $120e
000948: 202f0008     move.l     $8(a7), d0
00094c: 4fef000c     lea.l      $c(a7), a7
000950: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
000956: 4e5d         unlk       a5
000958: 4e75         rts        
00095a: 4e550000     link.w     a5, #$0
00095e: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
000962: 4feffff4     lea.l      -$c(a7), a7
000966: 206f002c     movea.l    $2c(a7), a0
00096a: 2f6800040008 move.l     $4(a0), $8(a7)
000970: 206f002c     movea.l    $2c(a7), a0
000974: 26680020     movea.l    $20(a0), a3
000978: 206f000c     movea.l    $c(a7), a0
00097c: 2468002a     movea.l    $2a(a0), a2
000980: 200a         move.l     a2, d0
000982: 6700010a     beq.w      $a8e
000986: 60000136     bra.w      $abe
00098a: 206f002c     movea.l    $2c(a7), a0
00098e: 20280008     move.l     $8(a0), d0
000992: b0aa0006     cmp.l      $6(a2), d0
000996: 6f4a         ble.b      $9e2
000998: 4aaa0006     tst.l      $6(a2)
00099c: 6744         beq.b      $9e2
00099e: 4aaa0002     tst.l      $2(a2)
0009a2: 673e         beq.b      $9e2
0009a4: 2eaa0002     move.l     $2(a2), (a7)
0009a8: 206f002c     movea.l    $2c(a7), a0
0009ac: 20280008     move.l     $8(a0), d0
0009b0: 610008f8     bsr.w      $12aa
0009b4: 25400002     move.l     d0, $2(a2)
0009b8: 670000d4     beq.w      $a8e
0009bc: 2f2a000a     move.l     $a(a2), -(a7)
0009c0: 222a0002     move.l     $2(a2), d1
0009c4: 202f0004     move.l     $4(a7), d0
0009c8: 61000ba0     bsr.w      $156a
0009cc: 588f         addq.l     #$4, a7
0009ce: 2217         move.l     (a7), d1
0009d0: 202a0006     move.l     $6(a2), d0
0009d4: 61000968     bsr.w      $133e
0009d8: 206f002c     movea.l    $2c(a7), a0
0009dc: 256800080006 move.l     $8(a0), $6(a2)
0009e2: 4a6a00c0     tst.w      $c0(a2)
0009e6: 6700012c     beq.w      $b14
0009ea: 206f002c     movea.l    $2c(a7), a0
0009ee: 25680008000a move.l     $8(a0), $a(a2)
0009f4: 206f000c     movea.l    $c(a7), a0
0009f8: 226f002c     movea.l    $2c(a7), a1
0009fc: 20290008     move.l     $8(a1), d0
000a00: b0a8002e     cmp.l      $2e(a0), d0
000a04: 6c00010e     bge.w      $b14
000a08: 206f002c     movea.l    $2c(a7), a0
000a0c: 226f000c     movea.l    $c(a7), a1
000a10: 23680008002e move.l     $8(a0), $2e(a1)
000a16: 600000fc     bra.w      $b14
000a1a: 4a6a006e     tst.w      $6e(a2)
000a1e: 6712         beq.b      $a32
000a20: 206f0010     movea.l    $10(a7), a0
000a24: 7000         moveq      #$0, d0
000a26: 3010         move.w     (a0), d0
000a28: 322a006e     move.w     $6e(a2), d1
000a2c: 48c1         ext.l      d1
000a2e: b081         cmp.l      d1, d0
000a30: 665c         bne.b      $a8e
000a32: 0c6a00010050 cmpi.w     #$1, $50(a2)
000a38: 6f54         ble.b      $a8e
000a3a: 536a0050     subq.w     #$1, $50(a2)
000a3e: 7000         moveq      #$0, d0
000a40: 600000d2     bra.w      $b14
000a44: 206f000c     movea.l    $c(a7), a0
000a48: 4a68003a     tst.w      $3a(a0)
000a4c: 6640         bne.b      $a8e
000a4e: 206f0010     movea.l    $10(a7), a0
000a52: 226f000c     movea.l    $c(a7), a1
000a56: 3350003a     move.w     (a0), $3a(a1)
000a5a: 600000b8     bra.w      $b14
000a5e: 206f000c     movea.l    $c(a7), a0
000a62: 4a68003c     tst.w      $3c(a0)
000a66: 6626         bne.b      $a8e
000a68: 206f0010     movea.l    $10(a7), a0
000a6c: 226f000c     movea.l    $c(a7), a1
000a70: 3350003c     move.w     (a0), $3c(a1)
000a74: 6000009e     bra.w      $b14
000a78: 206f0010     movea.l    $10(a7), a0
000a7c: 7000         moveq      #$0, d0
000a7e: 3010         move.w     (a0), d0
000a80: 206f000c     movea.l    $c(a7), a0
000a84: 3228003c     move.w     $3c(a0), d1
000a88: 48c1         ext.l      d1
000a8a: b081         cmp.l      d1, d0
000a8c: 6706         beq.b      $a94
000a8e: 70ff         moveq      #$ff, d0
000a90: 60000082     bra.w      $b14
000a94: 206f000c     movea.l    $c(a7), a0
000a98: 4268003c     clr.w      $3c(a0)
000a9c: 60000076     bra.w      $b14
000aa0: 206f000c     movea.l    $c(a7), a0
000aa4: 42a8002e     clr.l      $2e(a0)
000aa8: 357c000100c0 move.w     #$1, $c0(a2)
000aae: 6064         bra.b      $b14
000ab0: 426a00c0     clr.w      $c0(a2)
000ab4: 605e         bra.b      $b14
000ab6: 203cffffff30 move.l     #$ffffff30, d0
000abc: 6056         bra.b      $b14
000abe: 203c0000ffff move.l     #$ffff, d0
000ac4: c0af0008     and.l      $8(a7), d0
000ac8: 0c8000000700 cmpi.l     #$700, d0
000ace: 678e         beq.b      $a5e
000ad0: 6224         bhi.b      $af6
000ad2: 0c400008     cmpi.w     #$8, d0
000ad6: 6700ff42     beq.w      $a1a
000ada: 6210         bhi.b      $aec
000adc: 0c000002     cmpi.b     #$2, d0
000ae0: 6700fea8     beq.w      $98a
000ae4: 62d0         bhi.b      $ab6
000ae6: 4a00         tst.b      d0
000ae8: 672a         beq.b      $b14
000aea: 60ca         bra.b      $ab6
000aec: 0c400200     cmpi.w     #$200, d0
000af0: 6700ff52     beq.w      $a44
000af4: 60c0         bra.b      $ab6
000af6: 0c800000ff24 cmpi.l     #$ff24, d0
000afc: 67a2         beq.b      $aa0
000afe: 620a         bhi.b      $b0a
000b00: 0c400800     cmpi.w     #$800, d0
000b04: 6700ff72     beq.w      $a78
000b08: 60ac         bra.b      $ab6
000b0a: 0c800000ff25 cmpi.l     #$ff25, d0
000b10: 679e         beq.b      $ab0
000b12: 60a2         bra.b      $ab6
000b14: 4fef000c     lea.l      $c(a7), a7
000b18: 4ced0f00fff0 movem.l    -$10(a5), a0-a3
000b1e: 4e5d         unlk       a5
000b20: 4e75         rts        
000b22: 4e550000     link.w     a5, #$0
000b26: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
000b2a: 246f001c     movea.l    $1c(a7), a2
000b2e: 598f         subq.l     #$4, a7
000b30: 203c00000080 move.l     #$80, d0
000b36: d0af0004     add.l      $4(a7), d0
000b3a: 2840         movea.l    d0, a4
000b3c: 266f0008     movea.l    $8(a7), a3
000b40: 4297         clr.l      (a7)
000b42: 6004         bra.b      $b48
000b44: 18db         move.b     (a3)+, (a4)+
000b46: 5297         addq.l     #$1, (a7)
000b48: 4a97         tst.l      (a7)
000b4a: 6df8         blt.b      $b44
000b4c: 7000         moveq      #$0, d0
000b4e: 588f         addq.l     #$4, a7
000b50: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
000b56: 4e5d         unlk       a5
000b58: 4e75         rts        
000b5a: 4e550000     link.w     a5, #$0
000b5e: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000b62: 4feffff4     lea.l      -$c(a7), a7
000b66: 206f0028     movea.l    $28(a7), a0
000b6a: 2f6800040008 move.l     $4(a0), $8(a7)
000b70: 206f0028     movea.l    $28(a7), a0
000b74: 26680020     movea.l    $20(a0), a3
000b78: 206f000c     movea.l    $c(a7), a0
000b7c: 2468002a     movea.l    $2a(a0), a2
000b80: 200a         move.l     a2, d0
000b82: 6600011e     bne.w      $ca2
000b86: 70ff         moveq      #$ff, d0
000b88: 600001a4     bra.w      $d2e
000b8c: 206f000c     movea.l    $c(a7), a0
000b90: 2028002e     move.l     $2e(a0), d0
000b94: 60000198     bra.w      $d2e
000b98: 206f000c     movea.l    $c(a7), a0
000b9c: 2028002e     move.l     $2e(a0), d0
000ba0: b0aa000a     cmp.l      $a(a2), d0
000ba4: 6d000072     blt.w      $c18
000ba8: 203cffffff2d move.l     #$ffffff2d, d0
000bae: 6000017e     bra.w      $d2e
000bb2: 4a6a00c0     tst.w      $c0(a2)
000bb6: 6706         beq.b      $bbe
000bb8: 7001         moveq      #$1, d0
000bba: 60000172     bra.w      $d2e
000bbe: 202a000a     move.l     $a(a2), d0
000bc2: 6000016a     bra.w      $d2e
000bc6: 4a6a00c0     tst.w      $c0(a2)
000bca: 670c         beq.b      $bd8
000bcc: 206f0028     movea.l    $28(a7), a0
000bd0: 216a000a0008 move.l     $a(a2), $8(a0)
000bd6: 6040         bra.b      $c18
000bd8: 206f0028     movea.l    $28(a7), a0
000bdc: 216a00060008 move.l     $6(a2), $8(a0)
000be2: 6034         bra.b      $c18
000be4: 302a004e     move.w     $4e(a2), d0
000be8: 6040         bra.b      $c2a
000bea: 206f0028     movea.l    $28(a7), a0
000bee: 2f6800080004 move.l     $8(a0), $4(a7)
000bf4: 206f000c     movea.l    $c(a7), a0
000bf8: 20680004     movea.l    $4(a0), a0
000bfc: 20680004     movea.l    $4(a0), a0
000c00: 2ea80030     move.l     $30(a0), (a7)
000c04: 6712         beq.b      $c18
000c06: 6008         bra.b      $c10
000c08: 2057         movea.l    (a7), a0
000c0a: 2ea80052     move.l     $52(a0), (a7)
000c0e: 6708         beq.b      $c18
000c10: 53af0004     subq.l     #$1, $4(a7)
000c14: 66f2         bne.b      $c08
000c16: 6006         bra.b      $c1e
000c18: 7000         moveq      #$0, d0
000c1a: 60000112     bra.w      $d2e
000c1e: 705a         moveq      #$5a, d0
000c20: d097         add.l      (a7), d0
000c22: 6000010a     bra.w      $d2e
000c26: 302a0050     move.w     $50(a2), d0
000c2a: 48c0         ext.l      d0
000c2c: 60000100     bra.w      $d2e
000c30: 200a         move.l     a2, d0
000c32: 600000fa     bra.w      $d2e
000c36: 206f000c     movea.l    $c(a7), a0
000c3a: 20680004     movea.l    $4(a0), a0
000c3e: 2f280004     move.l     $4(a0), -(a7)
000c42: 206f002c     movea.l    $2c(a7), a0
000c46: 22280020     move.l     $20(a0), d1
000c4a: 202f0010     move.l     $10(a7), d0
000c4e: 61000f4c     bsr.w      $1b9c
000c52: 588f         addq.l     #$4, a7
000c54: 600000d8     bra.w      $d2e
000c58: 206f0028     movea.l    $28(a7), a0
000c5c: 203c0000ffff move.l     #$ffff, d0
000c62: c0a80008     and.l      $8(a0), d0
000c66: 2f00         move.l     d0, -(a7)
000c68: 206f002c     movea.l    $2c(a7), a0
000c6c: 203c0000ffff move.l     #$ffff, d0
000c72: c0a8000c     and.l      $c(a0), d0
000c76: 2f00         move.l     d0, -(a7)
000c78: 222f0014     move.l     $14(a7), d1
000c7c: 206f0030     movea.l    $30(a7), a0
000c80: 20280020     move.l     $20(a0), d0
000c84: 61000f84     bsr.w      $1c0a
000c88: 508f         addq.l     #$8, a7
000c8a: 600000a2     bra.w      $d2e
000c8e: 41fa05d6     lea.l      $1266(pc), a0
000c92: 2008         move.l     a0, d0
000c94: 60000098     bra.w      $d2e
000c98: 203cffffff30 move.l     #$ffffff30, d0
000c9e: 6000008e     bra.w      $d2e
000ca2: 203c0000ffff move.l     #$ffff, d0
000ca8: c0af0008     and.l      $8(a7), d0
000cac: 0c800000000f cmpi.l     #$f, d0
000cb2: 6782         beq.b      $c36
000cb4: 623c         bhi.b      $cf2
000cb6: 0c000006     cmpi.b     #$6, d0
000cba: 6700fedc     beq.w      $b98
000cbe: 621c         bhi.b      $cdc
000cc0: 0c000002     cmpi.b     #$2, d0
000cc4: 6700ff00     beq.w      $bc6
000cc8: 6206         bhi.b      $cd0
000cca: 4a00         tst.b      d0
000ccc: 6760         beq.b      $d2e
000cce: 60c8         bra.b      $c98
000cd0: 0c8000000005 cmpi.l     #$5, d0
000cd6: 6700feb4     beq.w      $b8c
000cda: 60bc         bra.b      $c98
000cdc: 0c800000000e cmpi.l     #$e, d0
000ce2: 6700ff06     beq.w      $bea
000ce6: 62b0         bhi.b      $c98
000ce8: 0c000007     cmpi.b     #$7, d0
000cec: 6700ff38     beq.w      $c26
000cf0: 60a6         bra.b      $c98
000cf2: 0c8000000900 cmpi.l     #$900, d0
000cf8: 6700feea     beq.w      $be4
000cfc: 6216         bhi.b      $d14
000cfe: 0c400101     cmpi.w     #$101, d0
000d02: 6700feae     beq.w      $bb2
000d06: 6290         bhi.b      $c98
000d08: 0c400020     cmpi.w     #$20, d0
000d0c: 6700ff4a     beq.w      $c58
000d10: 6000ff86     bra.w      $c98
000d14: 0c800000ff32 cmpi.l     #$ff32, d0
000d1a: 6700ff72     beq.w      $c8e
000d1e: 6200ff78     bhi.w      $c98
000d22: 0c40ff28     cmpi.w     #$ff28, d0
000d26: 6700ff08     beq.w      $c30
000d2a: 6000ff6c     bra.w      $c98
000d2e: 4fef000c     lea.l      $c(a7), a7
000d32: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
000d38: 4e5d         unlk       a5
000d3a: 4e75         rts        
000d3c: 4e550000     link.w     a5, #$0
000d40: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
000d44: 246f001c     movea.l    $1c(a7), a2
000d48: 598f         subq.l     #$4, a7
000d4a: 203c00000080 move.l     #$80, d0
000d50: d0af0004     add.l      $4(a7), d0
000d54: 2640         movea.l    d0, a3
000d56: 286f0008     movea.l    $8(a7), a4
000d5a: 4297         clr.l      (a7)
000d5c: 6004         bra.b      $d62
000d5e: 18db         move.b     (a3)+, (a4)+
000d60: 5297         addq.l     #$1, (a7)
000d62: 4a97         tst.l      (a7)
000d64: 6df8         blt.b      $d5e
000d66: 7000         moveq      #$0, d0
000d68: 588f         addq.l     #$4, a7
000d6a: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
000d70: 4e5d         unlk       a5
000d72: 4e75         rts        
000d74: 4e550000     link.w     a5, #$0
000d78: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
000d7c: 2440         movea.l    d0, a2
000d7e: 264a         movea.l    a2, a3
000d80: 286f0020     movea.l    $20(a7), a4
000d84: 7801         moveq      #$1, d4
000d86: 6004         bra.b      $d8c
000d88: 18db         move.b     (a3)+, (a4)+
000d8a: 5284         addq.l     #$1, d4
000d8c: 703e         moveq      #$3e, d0
000d8e: b084         cmp.l      d4, d0
000d90: 6cf6         bge.b      $d88
000d92: 2004         move.l     d4, d0
000d94: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
000d9a: 4e5d         unlk       a5
000d9c: 4e75         rts        
000d9e: 4e550000     link.w     a5, #$0
000da2: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000da6: 4feffff4     lea.l      -$c(a7), a7
000daa: 206f000c     movea.l    $c(a7), a0
000dae: 20680004     movea.l    $4(a0), a0
000db2: 24680004     movea.l    $4(a0), a2
000db6: 206f0028     movea.l    $28(a7), a0
000dba: 082800050003 btst.b     #$5, $3(a0)
000dc0: 670a         beq.b      $dcc
000dc2: 206f0028     movea.l    $28(a7), a0
000dc6: 20280008     move.l     $8(a0), d0
000dca: 6004         bra.b      $dd0
000dcc: 202a0034     move.l     $34(a2), d0
000dd0: 2e80         move.l     d0, (a7)
000dd2: 206f000c     movea.l    $c(a7), a0
000dd6: 42a8002e     clr.l      $2e(a0)
000dda: 206f0028     movea.l    $28(a7), a0
000dde: 20280020     move.l     $20(a0), d0
000de2: 6100f42e     bsr.w      $212
000de6: 2f400008     move.l     d0, $8(a7)
000dea: 6634         bne.b      $e20
000dec: 206f000c     movea.l    $c(a7), a0
000df0: 214a002a     move.l     a2, $2a(a0)
000df4: 206f0028     movea.l    $28(a7), a0
000df8: 082800000003 btst.b     #$0, $3(a0)
000dfe: 6608         bne.b      $e08
000e00: 203cffffff35 move.l     #$ffffff35, d0
000e06: 6064         bra.b      $e6c
000e08: 222f000c     move.l     $c(a7), d1
000e0c: 200a         move.l     a2, d0
000e0e: 61000b5e     bsr.w      $196e
000e12: 2f400004     move.l     d0, $4(a7)
000e16: 6c52         bge.b      $e6a
000e18: 203cffffff2a move.l     #$ffffff2a, d0
000e1e: 604c         bra.b      $e6c
000e20: 222f0008     move.l     $8(a7), d1
000e24: 202a0030     move.l     $30(a2), d0
000e28: 6100f42c     bsr.w      $256
000e2c: 206f000c     movea.l    $c(a7), a0
000e30: 2140002a     move.l     d0, $2a(a0)
000e34: 6620         bne.b      $e56
000e36: 2f17         move.l     (a7), -(a7)
000e38: 2f2f0014     move.l     $14(a7), -(a7)
000e3c: 222f0010     move.l     $10(a7), d1
000e40: 200a         move.l     a2, d0
000e42: 6100f448     bsr.w      $28c
000e46: 508f         addq.l     #$8, a7
000e48: 206f000c     movea.l    $c(a7), a0
000e4c: 2140002a     move.l     d0, $2a(a0)
000e50: 6604         bne.b      $e56
000e52: 70ff         moveq      #$ff, d0
000e54: 6016         bra.b      $e6c
000e56: 206f000c     movea.l    $c(a7), a0
000e5a: 2068002a     movea.l    $2a(a0), a0
000e5e: 52680050     addq.w     #$1, $50(a0)
000e62: 202f000c     move.l     $c(a7), d0
000e66: 61000330     bsr.w      $1198
000e6a: 7000         moveq      #$0, d0
000e6c: 4fef000c     lea.l      $c(a7), a7
000e70: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
000e76: 4e5d         unlk       a5
000e78: 4e75         rts        
000e7a: 4e550000     link.w     a5, #$0
000e7e: 48e78000     movem.l    d0, -(a7)
000e82: 4e5d         unlk       a5
000e84: 4e75         rts        
000e86: 4e550000     link.w     a5, #$0
000e8a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000e8e: 2440         movea.l    d0, a2
000e90: 4feffff4     lea.l      -$c(a7), a7
000e94: 206f0024     movea.l    $24(a7), a0
000e98: 2f6800200008 move.l     $20(a0), $8(a7)
000e9e: 206f0024     movea.l    $24(a7), a0
000ea2: 3f6800020002 move.w     $2(a0), $2(a7)
000ea8: 202f0008     move.l     $8(a7), d0
000eac: 6100f364     bsr.w      $212
000eb0: 4a80         tst.l      d0
000eb2: 6708         beq.b      $ebc
000eb4: 203cffffff2a move.l     #$ffffff2a, d0
000eba: 6002         bra.b      $ebe
000ebc: 7000         moveq      #$0, d0
000ebe: 4fef000c     lea.l      $c(a7), a7
000ec2: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000ec8: 4e5d         unlk       a5
000eca: 4e75         rts        
000ecc: 4e550000     link.w     a5, #$0
000ed0: 48e7c080     movem.l    d0-d1/a0, -(a7)
000ed4: 4feffff4     lea.l      -$c(a7), a7
000ed8: 206f0020     movea.l    $20(a7), a0
000edc: 20280020     move.l     $20(a0), d0
000ee0: 6100f330     bsr.w      $212
000ee4: 2f400004     move.l     d0, $4(a7)
000ee8: 6720         beq.b      $f0a
000eea: 206f000c     movea.l    $c(a7), a0
000eee: 20680004     movea.l    $4(a0), a0
000ef2: 2ea80004     move.l     $4(a0), (a7)
000ef6: 222f0004     move.l     $4(a7), d1
000efa: 2057         movea.l    (a7), a0
000efc: 20280030     move.l     $30(a0), d0
000f00: 6100f354     bsr.w      $256
000f04: 2f400008     move.l     d0, $8(a7)
000f08: 6604         bne.b      $f0e
000f0a: 70ff         moveq      #$ff, d0
000f0c: 6032         bra.b      $f40
000f0e: 206f0008     movea.l    $8(a7), a0
000f12: 4a68006e     tst.w      $6e(a0)
000f16: 6716         beq.b      $f2e
000f18: 206f0010     movea.l    $10(a7), a0
000f1c: 7000         moveq      #$0, d0
000f1e: 3010         move.w     (a0), d0
000f20: 206f0008     movea.l    $8(a7), a0
000f24: 3228006e     move.w     $6e(a0), d1
000f28: 48c1         ext.l      d1
000f2a: b081         cmp.l      d1, d0
000f2c: 660c         bne.b      $f3a
000f2e: 222f0008     move.l     $8(a7), d1
000f32: 2017         move.l     (a7), d0
000f34: 6100f504     bsr.w      $43a
000f38: 6006         bra.b      $f40
000f3a: 203cffffff20 move.l     #$ffffff20, d0
000f40: 4fef000c     lea.l      $c(a7), a7
000f44: 4ced0100fffc movem.l    -$4(a5), a0
000f4a: 4e5d         unlk       a5
000f4c: 4e75         rts        
000f4e: 4e550000     link.w     a5, #$0
000f52: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
000f56: 2440         movea.l    d0, a2
000f58: 598f         subq.l     #$4, a7
000f5a: 4aaa004a     tst.l      $4a(a2)
000f5e: 6712         beq.b      $f72
000f60: 202a004a     move.l     $4a(a2), d0
000f64: 206f0020     movea.l    $20(a7), a0
000f68: d0a80004     add.l      $4(a0), d0
000f6c: 2540004e     move.l     d0, $4e(a2)
000f70: 603c         bra.b      $fae
000f72: 2eaa002a     move.l     $2a(a2), (a7)
000f76: 6604         bne.b      $f7c
000f78: 70ff         moveq      #$ff, d0
000f7a: 6036         bra.b      $fb2
000f7c: 2057         movea.l    (a7), a0
000f7e: 4a6800c0     tst.w      $c0(a0)
000f82: 6726         beq.b      $faa
000f84: 2057         movea.l    (a7), a0
000f86: 226f0020     movea.l    $20(a7), a1
000f8a: 20290004     move.l     $4(a1), d0
000f8e: b0a8000a     cmp.l      $a(a0), d0
000f92: 6f0a         ble.b      $f9e
000f94: 2057         movea.l    (a7), a0
000f96: 2568000a002e move.l     $a(a0), $2e(a2)
000f9c: 6010         bra.b      $fae
000f9e: 206f0020     movea.l    $20(a7), a0
000fa2: 25680004002e move.l     $4(a0), $2e(a2)
000fa8: 6004         bra.b      $fae
000faa: 42aa002e     clr.l      $2e(a2)
000fae: 202a002e     move.l     $2e(a2), d0
000fb2: 588f         addq.l     #$4, a7
000fb4: 4ced0700fff4 movem.l    -$c(a5), a0-a2
000fba: 4e5d         unlk       a5
000fbc: 4e75         rts        
000fbe: 4e550000     link.w     a5, #$0
000fc2: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
000fc6: 518f         subq.l     #$8, a7
000fc8: 206f002c     movea.l    $2c(a7), a0
000fcc: 2ea80004     move.l     $4(a0), (a7)
000fd0: 206f002c     movea.l    $2c(a7), a0
000fd4: 26680020     movea.l    $20(a0), a3
000fd8: 206f0008     movea.l    $8(a7), a0
000fdc: 2468002a     movea.l    $2a(a0), a2
000fe0: 200a         move.l     a2, d0
000fe2: 6718         beq.b      $ffc
000fe4: 4a6a00c0     tst.w      $c0(a2)
000fe8: 662e         bne.b      $1018
000fea: 2017         move.l     (a7), d0
000fec: b0aa000a     cmp.l      $a(a2), d0
000ff0: 6f04         ble.b      $ff6
000ff2: 2eaa000a     move.l     $a(a2), (a7)
000ff6: 4aaa000a     tst.l      $a(a2)
000ffa: 660a         bne.b      $1006
000ffc: 203cffffff0c move.l     #$ffffff0c, d0
001002: 60000088     bra.w      $108c
001006: 2f17         move.l     (a7), -(a7)
001008: 220b         move.l     a3, d1
00100a: 202a0002     move.l     $2(a2), d0
00100e: 6100055a     bsr.w      $156a
001012: 588f         addq.l     #$4, a7
001014: 60000074     bra.w      $108a
001018: 7800         moveq      #$0, d4
00101a: 202a0002     move.l     $2(a2), d0
00101e: 206f0008     movea.l    $8(a7), a0
001022: d0a8002e     add.l      $2e(a0), d0
001026: 2840         movea.l    d0, a4
001028: 6010         bra.b      $103a
00102a: 2004         move.l     d4, d0
00102c: 5284         addq.l     #$1, d4
00102e: 0c34000d0800 cmpi.b     #$d, (a4, d0.l)
001034: 6604         bne.b      $103a
001036: 2e84         move.l     d4, (a7)
001038: 6004         bra.b      $103e
00103a: b897         cmp.l      (a7), d4
00103c: 6dec         blt.b      $102a
00103e: 206f0008     movea.l    $8(a7), a0
001042: 2028002e     move.l     $2e(a0), d0
001046: d097         add.l      (a7), d0
001048: b0aa000a     cmp.l      $a(a2), d0
00104c: 6f0e         ble.b      $105c
00104e: 206f0008     movea.l    $8(a7), a0
001052: 202a000a     move.l     $a(a2), d0
001056: 90a8002e     sub.l      $2e(a0), d0
00105a: 2e80         move.l     d0, (a7)
00105c: 4aaa000a     tst.l      $a(a2)
001060: 6704         beq.b      $1066
001062: 4a97         tst.l      (a7)
001064: 6604         bne.b      $106a
001066: 7000         moveq      #$0, d0
001068: 6022         bra.b      $108c
00106a: 2f17         move.l     (a7), -(a7)
00106c: 220b         move.l     a3, d1
00106e: 202a0002     move.l     $2(a2), d0
001072: 206f000c     movea.l    $c(a7), a0
001076: d0a8002e     add.l      $2e(a0), d0
00107a: 610004ee     bsr.w      $156a
00107e: 588f         addq.l     #$4, a7
001080: 2017         move.l     (a7), d0
001082: 206f0008     movea.l    $8(a7), a0
001086: d1a8002e     add.l      d0, $2e(a0)
00108a: 2017         move.l     (a7), d0
00108c: 508f         addq.l     #$8, a7
00108e: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
001094: 4e5d         unlk       a5
001096: 4e75         rts        
001098: 4e550000     link.w     a5, #$0
00109c: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
0010a0: 4feffff4     lea.l      -$c(a7), a7
0010a4: 206f0030     movea.l    $30(a7), a0
0010a8: 26680020     movea.l    $20(a0), a3
0010ac: 206f0030     movea.l    $30(a7), a0
0010b0: 2f6800040008 move.l     $4(a0), $8(a7)
0010b6: 206f000c     movea.l    $c(a7), a0
0010ba: 2468002a     movea.l    $2a(a0), a2
0010be: 200a         move.l     a2, d0
0010c0: 6714         beq.b      $10d6
0010c2: 2f2f000c     move.l     $c(a7), -(a7)
0010c6: 222f000c     move.l     $c(a7), d1
0010ca: 200a         move.l     a2, d0
0010cc: 6100f47e     bsr.w      $54c
0010d0: 588f         addq.l     #$4, a7
0010d2: 4a80         tst.l      d0
0010d4: 6c08         bge.b      $10de
0010d6: 203cffffff0b move.l     #$ffffff0b, d0
0010dc: 6076         bra.b      $1154
0010de: 4a6a00c0     tst.w      $c0(a2)
0010e2: 6618         bne.b      $10fc
0010e4: 2f2f0008     move.l     $8(a7), -(a7)
0010e8: 222a0002     move.l     $2(a2), d1
0010ec: 200b         move.l     a3, d0
0010ee: 6100047a     bsr.w      $156a
0010f2: 588f         addq.l     #$4, a7
0010f4: 256f0008000a move.l     $8(a7), $a(a2)
0010fa: 6048         bra.b      $1144
0010fc: 206f000c     movea.l    $c(a7), a0
001100: 2028002e     move.l     $2e(a0), d0
001104: d0af0008     add.l      $8(a7), d0
001108: b0aa000a     cmp.l      $a(a2), d0
00110c: 6f10         ble.b      $111e
00110e: 206f000c     movea.l    $c(a7), a0
001112: 2028002e     move.l     $2e(a0), d0
001116: d0af0008     add.l      $8(a7), d0
00111a: 2540000a     move.l     d0, $a(a2)
00111e: 2f2f0008     move.l     $8(a7), -(a7)
001122: 202a0002     move.l     $2(a2), d0
001126: 206f0010     movea.l    $10(a7), a0
00112a: d0a8002e     add.l      $2e(a0), d0
00112e: 2200         move.l     d0, d1
001130: 200b         move.l     a3, d0
001132: 61000436     bsr.w      $156a
001136: 588f         addq.l     #$4, a7
001138: 202f0008     move.l     $8(a7), d0
00113c: 206f000c     movea.l    $c(a7), a0
001140: d1a8002e     add.l      d0, $2e(a0)
001144: 306a004e     movea.w    $4e(a2), a0
001148: 2208         move.l     a0, d1
00114a: 200a         move.l     a2, d0
00114c: 610000c0     bsr.w      $120e
001150: 202f0008     move.l     $8(a7), d0
001154: 4fef000c     lea.l      $c(a7), a7
001158: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
00115e: 4e5d         unlk       a5
001160: 4e75         rts        
001162: 4e550000     link.w     a5, #$0
001166: 48e7c020     movem.l    d0-d1/a2, -(a7)
00116a: 2440         movea.l    d0, a2
00116c: 203c000000c2 move.l     #$c2, d0
001172: d08a         add.l      a2, d0
001174: 7232         moveq      #$32, d1
001176: 9081         sub.l      d1, d0
001178: 254000c2     move.l     d0, $c2(a2)
00117c: 203c000000c6 move.l     #$c6, d0
001182: d08a         add.l      a2, d0
001184: 7236         moveq      #$36, d1
001186: 9081         sub.l      d1, d0
001188: 254000c6     move.l     d0, $c6(a2)
00118c: 7000         moveq      #$0, d0
00118e: 4ced0402fff8 movem.l    -$8(a5), d1/a2
001194: 4e5d         unlk       a5
001196: 4e75         rts        
001198: 4e550000     link.w     a5, #$0
00119c: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
0011a0: 2440         movea.l    d0, a2
0011a2: 266a002a     movea.l    $2a(a2), a3
0011a6: 200b         move.l     a3, d0
0011a8: 6608         bne.b      $11b2
0011aa: 203cffffff0b move.l     #$ffffff0b, d0
0011b0: 6028         bra.b      $11da
0011b2: 256b00c60036 move.l     $c6(a3), $36(a2)
0011b8: 206b00c6     movea.l    $c6(a3), a0
0011bc: 256800320032 move.l     $32(a0), $32(a2)
0011c2: 206a0036     movea.l    $36(a2), a0
0011c6: 214a0032     move.l     a2, $32(a0)
0011ca: 274a00c6     move.l     a2, $c6(a3)
0011ce: 7000         moveq      #$0, d0
0011d0: 3540003a     move.w     d0, $3a(a2)
0011d4: 3540003c     move.w     d0, $3c(a2)
0011d8: 7000         moveq      #$0, d0
0011da: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0011e0: 4e5d         unlk       a5
0011e2: 4e75         rts        
0011e4: 4e550000     link.w     a5, #$0
0011e8: 48e780a0     movem.l    d0/a0/a2, -(a7)
0011ec: 2440         movea.l    d0, a2
0011ee: 206a0036     movea.l    $36(a2), a0
0011f2: 216a00320032 move.l     $32(a2), $32(a0)
0011f8: 206a0032     movea.l    $32(a2), a0
0011fc: 216a00360036 move.l     $36(a2), $36(a0)
001202: 7000         moveq      #$0, d0
001204: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00120a: 4e5d         unlk       a5
00120c: 4e75         rts        
00120e: 4e550000     link.w     a5, #$0
001212: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001216: 2440         movea.l    d0, a2
001218: 2801         move.l     d1, d4
00121a: 266a00c2     movea.l    $c2(a2), a3
00121e: 6030         bra.b      $1250
001220: 4a6b003c     tst.w      $3c(a3)
001224: 670c         beq.b      $1232
001226: 2204         move.l     d4, d1
001228: 306b003c     movea.w    $3c(a3), a0
00122c: 2008         move.l     a0, d0
00122e: 610001fc     bsr.w      $142c
001232: 4a6b003a     tst.w      $3a(a3)
001236: 6714         beq.b      $124c
001238: 2204         move.l     d4, d1
00123a: 306b003a     movea.w    $3a(a3), a0
00123e: 2008         move.l     a0, d0
001240: 610001ea     bsr.w      $142c
001244: 4a80         tst.l      d0
001246: 6d04         blt.b      $124c
001248: 426b003a     clr.w      $3a(a3)
00124c: 266b0032     movea.l    $32(a3), a3
001250: 206a00c6     movea.l    $c6(a2), a0
001254: b7e80032     cmpa.l     $32(a0), a3
001258: 66c6         bne.b      $1220
00125a: 7000         moveq      #$0, d0
00125c: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
001262: 4e5d         unlk       a5
001264: 4e75         rts        
001266: 5061         addq.w     #$8, -(a1)
001268: 636b         bls.b      $12d5
00126a: 2d636f6d     move.l     -(a3), $6f6d(a6)
00126e: 6d20         blt.b      $1290
001270: 40282329     negx.b     $2329(a0)
001274: 7061         moveq      #$61, d0
001276: 636b         bls.b      $12e3
001278: 6479         bcc.b      $12f3
00127a: 6e6d         bgt.b      $12e9
00127c: 6772         beq.b      $12f0
00127e: 2e63         movea.l    -(a3), a7
001280: 09392e312036 btst.l     d4, $2e312036.l
001286: 2f32322f     move.l     $2f(a2, d3.w), -(a7)
00128a: 39350000     move.w     (a5, d0.w), -(a4)
00128e: 4280         clr.l      d0
001290: 3001         move.w     d1, d0
001292: 4480         neg.l      d0
001294: 4e75         rts        
001296: 650a         bcs.b      $12a2
001298: 4280         clr.l      d0
00129a: 4cdf0106     movem.l    (a7)+, d1-d2/a0
00129e: 4e75         rts        
0012a0: 64f8         bcc.b      $129a
0012a2: 4280         clr.l      d0
0012a4: 3001         move.w     d1, d0
0012a6: 4480         neg.l      d0
0012a8: 60f0         bra.b      $129a
0012aa: 2f0a         move.l     a2, -(a7)
0012ac: 4e40         trap       #$0
0012ae: 00286506200a ori.b      #$6, $200a(a0)
0012b4: 245f         movea.l    (a7)+, a2
0012b6: 4e75         rts        
0012b8: 245f         movea.l    (a7)+, a2
0012ba: 60d2         bra.b      $128e
0012bc: 48e70020     movem.l    a2, -(a7)
0012c0: 2440         movea.l    d0, a2
0012c2: 4e40         trap       #$0
0012c4: 00026506     ori.b      #$6, d2
0012c8: 4cdf0400     movem.l    (a7)+, a2
0012cc: 4e75         rts        
0012ce: 4cdf0400     movem.l    (a7)+, a2
0012d2: 60ba         bra.b      $128e
0012d4: 48e74020     movem.l    d1/a2, -(a7)
0012d8: 2041         movea.l    d1, a0
0012da: 4e40         trap       #$0
0012dc: 001d650a     ori.b      #$a, (a5)+
0012e0: 4281         clr.l      d1
0012e2: 4280         clr.l      d0
0012e4: 4cdf0402     movem.l    (a7)+, d1/a2
0012e8: 4e75         rts        
0012ea: 223cffffffff move.l     #$ffffffff, d1
0012f0: 203cffffffff move.l     #$ffffffff, d0
0012f6: 4cdf0402     movem.l    (a7)+, d1/a2
0012fa: 4e75         rts        
0012fc: 48e700e0     movem.l    a0-a2, -(a7)
001300: 2041         movea.l    d1, a0
001302: 4e40         trap       #$0
001304: 00006508     ori.b      #$8, d0
001308: 200a         move.l     a2, d0
00130a: 4cdf0700     movem.l    (a7)+, a0-a2
00130e: 4e75         rts        
001310: 4281         clr.l      d1
001312: 4cdf0700     movem.l    (a7)+, a0-a2
001316: 6000ff76     bra.w      $128e
00131a: 48e760e0     movem.l    d1-d2/a0-a2, -(a7)
00131e: 242f0018     move.l     $18(a7), d2
001322: 206f001c     movea.l    $1c(a7), a0
001326: 4e40         trap       #$0
001328: 00256508     ori.b      #$8, -(a5)
00132c: 200a         move.l     a2, d0
00132e: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
001332: 4e75         rts        
001334: 4280         clr.l      d0
001336: 2001         move.l     d1, d0
001338: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
00133c: 4e75         rts        
00133e: 48e76080     movem.l    d1-d2/a0, -(a7)
001342: 2f0a         move.l     a2, -(a7)
001344: 2441         movea.l    d1, a2
001346: 4e40         trap       #$0
001348: 0029245f6000 ori.b      #$5f, $6000(a1)
00134e: ff48         dc.w       $ff48
001350: 48e76080     movem.l    d1-d2/a0, -(a7)
001354: 2040         movea.l    d0, a0
001356: 2001         move.l     d1, d0
001358: 2f0a         move.l     a2, -(a7)
00135a: 4e40         trap       #$0
00135c: 0080204a245f ori.l      #$204a245f, d0
001362: 6500ff3e     bcs.w      $12a2
001366: 2008         move.l     a0, d0
001368: 6000ff36     bra.w      $12a0
00136c: 48e76080     movem.l    d1-d2/a0, -(a7)
001370: 204a         movea.l    a2, a0
001372: 2440         movea.l    d0, a2
001374: 4e40         trap       #$0
001376: 008124486000 ori.l      #$24486000, d1
00137c: ff1a         dc.w       $ff1a
00137e: 48e74080     movem.l    d1/a0, -(a7)
001382: 2040         movea.l    d0, a0
001384: 2001         move.l     d1, d0
001386: 4e40         trap       #$0
001388: 008465064cdf ori.l      #$65064cdf, d4
00138e: 0102         btst.l     d0, d2
001390: 4e75         rts        
001392: 4280         clr.l      d0
001394: 3001         move.w     d1, d0
001396: 4480         neg.l      d0
001398: 4cdf0102     movem.l    (a7)+, d1/a0
00139c: 4e75         rts        
00139e: 48e74080     movem.l    d1/a0, -(a7)
0013a2: 2041         movea.l    d1, a0
0013a4: 222f000c     move.l     $c(a7), d1
0013a8: 4e40         trap       #$0
0013aa: 008a         .dc.w      $008a
0013ac: 65e4         bcs.b      $1392
0013ae: 2001         move.l     d1, d0
0013b0: 4cdf0102     movem.l    (a7)+, d1/a0
0013b4: 4e75         rts        
0013b6: 4280         clr.l      d0
0013b8: 3001         move.w     d1, d0
0013ba: 4480         neg.l      d0
0013bc: 4cdf0102     movem.l    (a7)+, d1/a0
0013c0: 4e75         rts        
0013c2: 2f01         move.l     d1, -(a7)
0013c4: 4e40         trap       #$0
0013c6: 008f         .dc.w      $008f
0013c8: 6504         bcs.b      $13ce
0013ca: 221f         move.l     (a7)+, d1
0013cc: 4e75         rts        
0013ce: 4280         clr.l      d0
0013d0: 3001         move.w     d1, d0
0013d2: 4480         neg.l      d0
0013d4: 221f         move.l     (a7)+, d1
0013d6: 4e75         rts        
0013d8: 48e74000     movem.l    d1, -(a7)
0013dc: 206f0008     movea.l    $8(a7), a0
0013e0: 4e40         trap       #$0
0013e2: 008e         .dc.w      $008e
0013e4: 6508         bcs.b      $13ee
0013e6: 2001         move.l     d1, d0
0013e8: 4cdf0002     movem.l    (a7)+, d1
0013ec: 4e75         rts        
0013ee: 4280         clr.l      d0
0013f0: 3001         move.w     d1, d0
0013f2: 4480         neg.l      d0
0013f4: 4cdf0002     movem.l    (a7)+, d1
0013f8: 4e75         rts        
0013fa: 48e74000     movem.l    d1, -(a7)
0013fe: 206f0008     movea.l    $8(a7), a0
001402: 4e40         trap       #$0
001404: 008d         .dc.w      $008d
001406: 65e6         bcs.b      $13ee
001408: 2001         move.l     d1, d0
00140a: 4cdf0002     movem.l    (a7)+, d1
00140e: 4e75         rts        
001410: 48e74040     movem.l    d1/a1, -(a7)
001414: 2240         movea.l    d0, a1
001416: 4e40         trap       #$0
001418: 003265084280 ori.b      #$8, -$80(a2, d4.w)
00141e: 4cdf0202     movem.l    (a7)+, d1/a1
001422: 4e75         rts        
001424: 4280         clr.l      d0
001426: 3001         move.w     d1, d0
001428: 4480         neg.l      d0
00142a: 60f2         bra.b      $141e
00142c: 48e76080     movem.l    d1-d2/a0, -(a7)
001430: 4e40         trap       #$0
001432: 0008         .dc.w      $0008
001434: 6000fe60     bra.w      $1296
001438: 48e76080     movem.l    d1-d2/a0, -(a7)
00143c: 4280         clr.l      d0
00143e: 4e40         trap       #$0
001440: 000a         .dc.w      $000a
001442: 6000fe52     bra.w      $1296
001446: 48e76080     movem.l    d1-d2/a0, -(a7)
00144a: 4e40         trap       #$0
00144c: 000a         .dc.w      $000a
00144e: 6000fe50     bra.w      $12a0
001452: 48e77080     movem.l    d1-d3/a0, -(a7)
001456: 7003         moveq      #$3, d0
001458: 4e40         trap       #$0
00145a: 0015650a     ori.b      #$a, (a5)
00145e: 4280         clr.l      d0
001460: 3003         move.w     d3, d0
001462: 4cdf010e     movem.l    (a7)+, d1-d3/a0
001466: 4e75         rts        
001468: 4280         clr.l      d0
00146a: 3001         move.w     d1, d0
00146c: 4480         neg.l      d0
00146e: 60f2         bra.b      $1462
001470: 48e77080     movem.l    d1-d3/a0, -(a7)
001474: 7000         moveq      #$0, d0
001476: 4e40         trap       #$0
001478: 001565ec     ori.b      #$ec, (a5)
00147c: 3002         move.w     d2, d0
00147e: 4cdf010e     movem.l    (a7)+, d1-d3/a0
001482: 4e75         rts        
001484: 48e77080     movem.l    d1-d3/a0, -(a7)
001488: 7000         moveq      #$0, d0
00148a: 4e40         trap       #$0
00148c: 001565d8     ori.b      #$d8, (a5)
001490: 4cdf010e     movem.l    (a7)+, d1-d3/a0
001494: 4e75         rts        
001496: 48e77080     movem.l    d1-d3/a0, -(a7)
00149a: 7000         moveq      #$0, d0
00149c: 4e40         trap       #$0
00149e: 001565c6     ori.b      #$c6, (a5)
0014a2: 4280         clr.l      d0
0014a4: 2001         move.l     d1, d0
0014a6: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0014aa: 4e75         rts        
0014ac: 48e76080     movem.l    d1-d2/a0, -(a7)
0014b0: 4e40         trap       #$0
0014b2: 002b6000fde0 ori.b      #$0, -$220(a3)
0014b8: 48e760f0     movem.l    d1-d2/a0-a3, -(a7)
0014bc: 206f001c     movea.l    $1c(a7), a0
0014c0: 246f0020     movea.l    $20(a7), a2
0014c4: 266f0024     movea.l    $24(a7), a3
0014c8: 4e40         trap       #$0
0014ca: 002a65084280 ori.b      #$8, $4280(a2)
0014d0: 4cdf0f06     movem.l    (a7)+, d1-d2/a0-a3
0014d4: 4e75         rts        
0014d6: 4280         clr.l      d0
0014d8: 3001         move.w     d1, d0
0014da: 4480         neg.l      d0
0014dc: 60f2         bra.b      $14d0
0014de: 48e760e0     movem.l    d1-d2/a0-a2, -(a7)
0014e2: 2041         movea.l    d1, a0
0014e4: 2400         move.l     d0, d2
0014e6: 246f0018     movea.l    $18(a7), a2
0014ea: 4e40         trap       #$0
0014ec: 003865084280 ori.b      #$8, $4280.w
0014f2: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
0014f6: 4e75         rts        
0014f8: 4280         clr.l      d0
0014fa: 3001         move.w     d1, d0
0014fc: 4480         neg.l      d0
0014fe: 60f2         bra.b      $14f2
001500: 200e         move.l     a6, d0
001502: 4e75         rts        
001504: 48e70080     movem.l    a0, -(a7)
001508: 207900000000 movea.l    $0.l, a0
00150e: 41e803e4     lea.l      $3e4(a0), a0
001512: e588         lsl.l      #$2, d0
001514: 20700800     movea.l    (a0, d0.l), a0
001518: 20280008     move.l     $8(a0), d0
00151c: 4cdf0100     movem.l    (a7)+, a0
001520: 4e75         rts        
001522: 202e003c     move.l     $3c(a6), d0
001526: 4e75         rts        
001528: 202e0040     move.l     $40(a6), d0
00152c: 4e75         rts        
00152e: 48e70080     movem.l    a0, -(a7)
001532: 207900000000 movea.l    $0.l, a0
001538: 20280044     move.l     $44(a0), d0
00153c: 4cdf0100     movem.l    (a7)+, a0
001540: 4e75         rts        
001542: 2f09         move.l     a1, -(a7)
001544: 6140         bsr.b      $1586
001546: 43e90148     lea.l      $148(a1), a1
00154a: 2009         move.l     a1, d0
00154c: 225f         movea.l    (a7)+, a1
00154e: 4e75         rts        
001550: 48e7c080     movem.l    d0-d1/a0, -(a7)
001554: 2040         movea.l    d0, a0
001556: 303c0001     move.w     #$1, d0
00155a: 223c00000050 move.l     #$50, d1
001560: 4e40         trap       #$0
001562: 008c         .dc.w      $008c
001564: 4cdf0103     movem.l    (a7)+, d0-d1/a0
001568: 4e75         rts        
00156a: 48e740c0     movem.l    d1/a0-a1, -(a7)
00156e: 2040         movea.l    d0, a0
001570: 2241         movea.l    d1, a1
001572: 222f0010     move.l     $10(a7), d1
001576: 4a81         tst.l      d1
001578: 6706         beq.b      $1580
00157a: 12d8         move.b     (a0)+, (a1)+
00157c: 5381         subq.l     #$1, d1
00157e: 62fa         bhi.b      $157a
001580: 4cdf0302     movem.l    (a7)+, d1/a0-a1
001584: 4e75         rts        
001586: 206e0044     movea.l    $44(a6), a0
00158a: b050         cmp.w      (a0), d0
00158c: 6214         bhi.b      $15a2
00158e: e540         asl.w      #$2, d0
001590: 6710         beq.b      $15a2
001592: d0c0         adda.w     d0, a0
001594: e448         lsr.w      #$2, d0
001596: 670a         beq.b      $15a2
001598: 2250         movea.l    (a0), a1
00159a: 4a90         tst.l      (a0)
00159c: 6704         beq.b      $15a2
00159e: b051         cmp.w      (a1), d0
0015a0: 6708         beq.b      $15aa
0015a2: 323c00e0     move.w     #$e0, d1
0015a6: 003c0001     ori.b      #$1, ccr
0015aa: 4e75         rts        
0015ac: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
0015b0: 2440         movea.l    d0, a2
0015b2: 302a02d6     move.w     $2d6(a2), d0
0015b6: 6710         beq.b      $15c8
0015b8: 426a02d6     clr.w      $2d6(a2)
0015bc: 7201         moveq      #$1, d1
0015be: 4e40         trap       #$0
0015c0: 0008         .dc.w      $0008
0015c2: 61c2         bsr.b      $1586
0015c4: 426902d4     clr.w      $2d4(a1)
0015c8: 4cdf0703     movem.l    (a7)+, d0-d1/a0-a2
0015cc: 4e75         rts        
0015ce: 000600a0     ori.b      #$a0, d6
0015d2: 0003018a     ori.b      #$8a, d3
0015d6: ffff         dc.w       $ffff
0015d8: 48e740e0     movem.l    d1/a0-a2, -(a7)
0015dc: 6100028a     bsr.w      $1868
0015e0: 2240         movea.l    d0, a1
0015e2: 207900000000 movea.l    $0.l, a0
0015e8: 206803a4     movea.l    $3a4(a0), a0
0015ec: 24680018     movea.l    $18(a0), a2
0015f0: 234a0006     move.l     a2, $6(a1)
0015f4: 2468000c     movea.l    $c(a0), a2
0015f8: 234a000a     move.l     a2, $a(a1)
0015fc: 43faffd0     lea.l      $15ce(pc), a1
001600: 4e40         trap       #$0
001602: 0032203c0000 ori.b      #$3c, (a2, d0.w)
001608: 00004cdf     ori.b      #$df, d0
00160c: 0702         btst.l     d3, d2
00160e: 4e75         rts        
001610: 4e75         rts        
001612: 4e75         rts        
001614: 48e740e0     movem.l    d1/a0-a2, -(a7)
001618: 207900000000 movea.l    $0.l, a0
00161e: 206803a4     movea.l    $3a4(a0), a0
001622: 41e80018     lea.l      $18(a0), a0
001626: 61000240     bsr.w      $1868
00162a: 2240         movea.l    d0, a1
00162c: 20a90006     move.l     $6(a1), (a0)
001630: 207900000000 movea.l    $0.l, a0
001636: 206803a8     movea.l    $3a8(a0), a0
00163a: 41e80018     lea.l      $18(a0), a0
00163e: 20a90006     move.l     $6(a1), (a0)
001642: 207900000000 movea.l    $0.l, a0
001648: 206803a4     movea.l    $3a4(a0), a0
00164c: 41e8000c     lea.l      $c(a0), a0
001650: 61000216     bsr.w      $1868
001654: 2240         movea.l    d0, a1
001656: 20a9000a     move.l     $a(a1), (a0)
00165a: 207900000000 movea.l    $0.l, a0
001660: 206803a8     movea.l    $3a8(a0), a0
001664: 41e8000c     lea.l      $c(a0), a0
001668: 20a9000a     move.l     $a(a1), (a0)
00166c: 4cdf0702     movem.l    (a7)+, d1/a0-a2
001670: 4e75         rts        
001672: 2f01         move.l     d1, -(a7)
001674: 206e0044     movea.l    $44(a6), a0
001678: 302c0002     move.w     $2(a4), d0
00167c: 6742         beq.b      $16c0
00167e: 4e40         trap       #$0
001680: 002f4a6c0022 ori.b      #$6c, $22(a7)
001686: 6738         beq.b      $16c0
001688: 6144         bsr.b      $16ce
00168a: 0c6c00010022 cmpi.w     #$1, $22(a4)
001690: 660a         bne.b      $169c
001692: 0c2900770020 cmpi.b     #$77, $20(a1)
001698: 6726         beq.b      $16c0
00169a: 6008         bra.b      $16a4
00169c: 0c6c00020022 cmpi.w     #$2, $22(a4)
0016a2: 661c         bne.b      $16c0
0016a4: 204c         movea.l    a4, a0
0016a6: 0c6dffff0006 cmpi.w     #$ffff, $6(a5)
0016ac: 660e         bne.b      $16bc
0016ae: 3b7c00000006 move.w     #$0, $6(a5)
0016b4: 221f         move.l     (a7)+, d1
0016b6: 4281         clr.l      d1
0016b8: 2f01         move.l     d1, -(a7)
0016ba: 6004         bra.b      $16c0
0016bc: 610000dc     bsr.w      $179a
0016c0: 610001a6     bsr.w      $1868
0016c4: 221f         move.l     (a7)+, d1
0016c6: 2440         movea.l    d0, a2
0016c8: 246a0006     movea.l    $6(a2), a2
0016cc: 4e92         jsr        (a2)
0016ce: 48e780e0     movem.l    d0/a0-a2, -(a7)
0016d2: 20690008     movea.l    $8(a1), a0
0016d6: 45fa0048     lea.l      $1720(pc), a2
0016da: 200a         move.l     a2, d0
0016dc: b0a80042     cmp.l      $42(a0), d0
0016e0: 6738         beq.b      $171a
0016e2: 0c2900770020 cmpi.b     #$77, $20(a1)
0016e8: 6730         beq.b      $171a
0016ea: 0cae000109a003c8 cmpi.l     #$109a0, $3c8(a6)
0016f2: 6606         bne.b      $16fa
0016f4: 41e8ffba     lea.l      -$46(a0), a0
0016f8: 600a         bra.b      $1704
0016fa: 41e8ffb8     lea.l      -$48(a0), a0
0016fe: 317c00000046 move.w     #$0, $46(a0)
001704: 23480008     move.l     a0, $8(a1)
001708: 214a0042     move.l     a2, $42(a0)
00170c: 317c20000040 move.w     #$2000, $40(a0)
001712: 21490020     move.l     a1, $20(a0)
001716: 214e0038     move.l     a6, $38(a0)
00171a: 4cdf0701     movem.l    (a7)+, d0/a0-a2
00171e: 4e75         rts        
001720: 45e80002     lea.l      $2(a0), a2
001724: 30280006     move.w     $6(a0), d0
001728: 4a40         tst.w      d0
00172a: 672c         beq.b      $1758
00172c: 6100fe58     bsr.w      $1586
001730: 30290004     move.w     $4(a1), d0
001734: 08290000001c btst.b     #$0, $1c(a1)
00173a: 6718         beq.b      $1754
00173c: 356900040004 move.w     $4(a1), $4(a2)
001742: 3f00         move.w     d0, -(a7)
001744: 30290000     move.w     $0(a1), d0
001748: 206e0044     movea.l    $44(a6), a0
00174c: 4e40         trap       #$0
00174e: 0031301f60d4 ori.b      #$1f, -$2c(a1, d6.w)
001754: 2449         movea.l    a1, a2
001756: 60d0         bra.b      $1728
001758: 4cdf7fff     movem.l    (a7)+, d0-d7/a0-a6
00175c: 588f         addq.l     #$4, a7
00175e: 4e73         rte        
001760: 3f03         move.w     d3, -(a7)
001762: 0243003f     andi.w     #$3f, d3
001766: 3b43000e     move.w     d3, $e(a5)
00176a: 2f00         move.l     d0, -(a7)
00176c: 610000fa     bsr.w      $1868
001770: 2440         movea.l    d0, a2
001772: 201f         move.l     (a7)+, d0
001774: 246a000a     movea.l    $a(a2), a2
001778: 4e92         jsr        (a2)
00177a: 6516         bcs.b      $1792
00177c: 4283         clr.l      d3
00177e: 361f         move.w     (a7)+, d3
001780: 302d0002     move.w     $2(a5), d0
001784: 6100fe00     bsr.w      $1586
001788: ec4b         lsr.w      #$6, d3
00178a: e04b         lsr.w      #$8, d3
00178c: 33430022     move.w     d3, $22(a1)
001790: 4e75         rts        
001792: 361f         move.w     (a7)+, d3
001794: 003c0001     ori.b      #$1, ccr
001798: 4e75         rts        
00179a: 48e7e000     movem.l    d0-d2, -(a7)
00179e: 4aa90028     tst.l      $28(a1)
0017a2: 670e         beq.b      $17b2
0017a4: 342c0000     move.w     $0(a4), d2
0017a8: 323c8000     move.w     #$8000, d1
0017ac: d242         add.w      d2, d1
0017ae: 4e40         trap       #$0
0017b0: 0008         .dc.w      $0008
0017b2: 4cdf0007     movem.l    (a7)+, d0-d2
0017b6: 4e75         rts        
0017b8: 48e76080     movem.l    d1-d2/a0, -(a7)
0017bc: 2040         movea.l    d0, a0
0017be: 4e40         trap       #$0
0017c0: 001a6500     ori.b      #$0, (a2)+
0017c4: fade20016000 fbf.l      $200177c6
0017ca: fad048e700e0 fbf.l      $48e718ac
0017d0: 2440         movea.l    d0, a2
0017d2: 206e0044     movea.l    $44(a6), a0
0017d6: 302a0002     move.w     $2(a2), d0
0017da: 6716         beq.b      $17f2
0017dc: 4e40         trap       #$0
0017de: 002f65102469 ori.b      #$10, $2469(a7)
0017e4: 0038d5ea000c ori.b      #$ea, $c.w
0017ea: 200a         move.l     a2, d0
0017ec: 4cdf0700     movem.l    (a7)+, a0-a2
0017f0: 4e75         rts        
0017f2: 203c00000000 move.l     #$0, d0
0017f8: 4cdf0700     movem.l    (a7)+, a0-a2
0017fc: 4e75         rts        
0017fe: 48e74080     movem.l    d1/a0, -(a7)
001802: 206f000c     movea.l    $c(a7), a0
001806: 4e40         trap       #$0
001808: 00176508     ori.b      #$8, (a7)
00180c: 2001         move.l     d1, d0
00180e: 4cdf0102     movem.l    (a7)+, d1/a0
001812: 4e75         rts        
001814: 4280         clr.l      d0
001816: 2001         move.l     d1, d0
001818: 4480         neg.l      d0
00181a: 4cdf0102     movem.l    (a7)+, d1/a0
00181e: 4e75         rts        
001820: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
001824: 242f001c     move.l     $1c(a7), d2
001828: 262f0020     move.l     $20(a7), d3
00182c: 282f0024     move.l     $24(a7), d4
001830: 206f0028     movea.l    $28(a7), a0
001834: 226f002c     movea.l    $2c(a7), a1
001838: 4e40         trap       #$0
00183a: 00036506     ori.b      #$6, d3
00183e: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
001842: 4e75         rts        
001844: 3001         move.w     d1, d0
001846: 4440         neg.w      d0
001848: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
00184c: 4e75         rts        
00184e: 48e70080     movem.l    a0, -(a7)
001852: 2041         movea.l    d1, a0
001854: 80fc0064     divu.w     #$64, d0
001858: 1080         move.b     d0, (a0)
00185a: e088         lsr.l      #$8, d0
00185c: e088         lsr.l      #$8, d0
00185e: 11400001     move.b     d0, $1(a0)
001862: 4cdf0100     movem.l    (a7)+, a0
001866: 4e75         rts        
001868: 2f08         move.l     a0, -(a7)
00186a: 207900000000 movea.l    $0.l, a0
001870: 41e80814     lea.l      $814(a0), a0
001874: 2010         move.l     (a0), d0
001876: 205f         movea.l    (a7)+, a0
001878: 4e75         rts        
00187a: 2f08         move.l     a0, -(a7)
00187c: 207900000000 movea.l    $0.l, a0
001882: 41e80814     lea.l      $814(a0), a0
001886: 2008         move.l     a0, d0
001888: 205f         movea.l    (a7)+, a0
00188a: 4e75         rts        
00188c: 2f08         move.l     a0, -(a7)
00188e: 2040         movea.l    d0, a0
001890: b300         eor.b      d1, d0
001892: 08000000     btst.b     #$0, d0
001896: 6652         bne.b      $18ea
001898: 08010000     btst.b     #$0, d1
00189c: c389         exg.l      d1, a1
00189e: 6718         beq.b      $18b8
0018a0: b109         cmpm.b     (a1)+, (a0)+
0018a2: 6530         bcs.b      $18d4
0018a4: 6220         bhi.b      $18c6
0018a6: 4a28ffff     tst.b      -$1(a0)
0018aa: 660c         bne.b      $18b8
0018ac: 6034         bra.b      $18e2
0018ae: 4a00         tst.b      d0
0018b0: 6730         beq.b      $18e2
0018b2: 0c4000ff     cmpi.w     #$ff, d0
0018b6: 632a         bls.b      $18e2
0018b8: 3018         move.w     (a0)+, d0
0018ba: b059         cmp.w      (a1)+, d0
0018bc: 67f0         beq.b      $18ae
0018be: 650e         bcs.b      $18ce
0018c0: 0c4000ff     cmpi.w     #$ff, d0
0018c4: 6316         bls.b      $18dc
0018c6: 7001         moveq      #$1, d0
0018c8: 205f         movea.l    (a7)+, a0
0018ca: c389         exg.l      d1, a1
0018cc: 4e75         rts        
0018ce: 0c4000ff     cmpi.w     #$ff, d0
0018d2: 6308         bls.b      $18dc
0018d4: 70ff         moveq      #$ff, d0
0018d6: 205f         movea.l    (a7)+, a0
0018d8: c389         exg.l      d1, a1
0018da: 4e75         rts        
0018dc: 4a29fffe     tst.b      -$2(a1)
0018e0: 66f2         bne.b      $18d4
0018e2: 7000         moveq      #$0, d0
0018e4: 205f         movea.l    (a7)+, a0
0018e6: c389         exg.l      d1, a1
0018e8: 4e75         rts        
0018ea: c389         exg.l      d1, a1
0018ec: 7000         moveq      #$0, d0
0018ee: 1018         move.b     (a0)+, d0
0018f0: b019         cmp.b      (a1)+, d0
0018f2: 56c8fffa     dbne       d0, $18ee
0018f6: 65dc         bcs.b      $18d4
0018f8: 5240         addq.w     #$1, d0
0018fa: 205f         movea.l    (a7)+, a0
0018fc: c389         exg.l      d1, a1
0018fe: 4e75         rts        
001900: 2f08         move.l     a0, -(a7)
001902: 2040         movea.l    d0, a0
001904: 4a18         tst.b      (a0)+
001906: 670c         beq.b      $1914
001908: 4a18         tst.b      (a0)+
00190a: 6708         beq.b      $1914
00190c: 4a18         tst.b      (a0)+
00190e: 6704         beq.b      $1914
001910: 4a18         tst.b      (a0)+
001912: 66f0         bne.b      $1904
001914: 91c0         suba.l     d0, a0
001916: 2008         move.l     a0, d0
001918: 5380         subq.l     #$1, d0
00191a: 205f         movea.l    (a7)+, a0
00191c: 4e75         rts        
00191e: 2f08         move.l     a0, -(a7)
001920: 2040         movea.l    d0, a0
001922: c389         exg.l      d1, a1
001924: 10d9         move.b     (a1)+, (a0)+
001926: 670c         beq.b      $1934
001928: 10d9         move.b     (a1)+, (a0)+
00192a: 6708         beq.b      $1934
00192c: 10d9         move.b     (a1)+, (a0)+
00192e: 6704         beq.b      $1934
001930: 10d9         move.b     (a1)+, (a0)+
001932: 66f0         bne.b      $1924
001934: 205f         movea.l    (a7)+, a0
001936: c389         exg.l      d1, a1
001938: 4e75         rts        
00193a: 2f08         move.l     a0, -(a7)
00193c: 2040         movea.l    d0, a0
00193e: c389         exg.l      d1, a1
001940: 4a18         tst.b      (a0)+
001942: 670c         beq.b      $1950
001944: 4a18         tst.b      (a0)+
001946: 6708         beq.b      $1950
001948: 4a18         tst.b      (a0)+
00194a: 6704         beq.b      $1950
00194c: 4a18         tst.b      (a0)+
00194e: 66f0         bne.b      $1940
001950: 1159ffff     move.b     (a1)+, -$1(a0)
001954: 66ce         bne.b      $1924
001956: 60dc         bra.b      $1934
001958: 2f08         move.l     a0, -(a7)
00195a: 2040         movea.l    d0, a0
00195c: c389         exg.l      d1, a1
00195e: 10d9         move.b     (a1)+, (a0)+
001960: 6afc         bpl.b      $195e
001962: 4210         clr.b      (a0)
001964: 0220007f     andi.b     #$7f, -(a0)
001968: 205f         movea.l    (a7)+, a0
00196a: c389         exg.l      d1, a1
00196c: 4e75         rts        
00196e: 4e550000     link.w     a5, #$0
001972: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
001976: 2440         movea.l    d0, a2
001978: 2641         movea.l    d1, a3
00197a: 4fefffe8     lea.l      -$18(a7), a7
00197e: 4297         clr.l      (a7)
001980: 2f6a00300004 move.l     $30(a2), $4(a7)
001986: 670e         beq.b      $1996
001988: 5297         addq.l     #$1, (a7)
00198a: 206f0004     movea.l    $4(a7), a0
00198e: 2f6800520004 move.l     $52(a0), $4(a7)
001994: 66f2         bne.b      $1988
001996: 5497         addq.l     #$2, (a7)
001998: 376f00020052 move.w     $2(a7), $52(a3)
00199e: 2017         move.l     (a7), d0
0019a0: eb88         lsl.l      #$5, d0
0019a2: 6100f906     bsr.w      $12aa
0019a6: 2f40000c     move.l     d0, $c(a7)
0019aa: 72ff         moveq      #$ff, d1
0019ac: b280         cmp.l      d0, d1
0019ae: 672a         beq.b      $19da
0019b0: 202f000c     move.l     $c(a7), d0
0019b4: 2740004e     move.l     d0, $4e(a3)
0019b8: 2740004a     move.l     d0, $4a(a3)
0019bc: 2017         move.l     (a7), d0
0019be: e188         lsl.l      #$8, d0
0019c0: 6100f8e8     bsr.w      $12aa
0019c4: 2f400008     move.l     d0, $8(a7)
0019c8: 72ff         moveq      #$ff, d1
0019ca: b280         cmp.l      d0, d1
0019cc: 6612         bne.b      $19e0
0019ce: 222f000c     move.l     $c(a7), d1
0019d2: 2017         move.l     (a7), d0
0019d4: e188         lsl.l      #$8, d0
0019d6: 6100f966     bsr.w      $133e
0019da: 70ff         moveq      #$ff, d0
0019dc: 600000ae     bra.w      $1a8c
0019e0: 202f0008     move.l     $8(a7), d0
0019e4: 27400046     move.l     d0, $46(a3)
0019e8: 27400042     move.l     d0, $42(a3)
0019ec: 206f000c     movea.l    $c(a7), a0
0019f0: 42a8001c     clr.l      $1c(a0)
0019f4: 41fa0258     lea.l      $1c4e(pc), a0
0019f8: 2208         move.l     a0, d1
0019fa: 202f000c     move.l     $c(a7), d0
0019fe: 06af00000020000c addi.l     #$20, $c(a7)
001a06: 6100ff16     bsr.w      $191e
001a0a: 206f000c     movea.l    $c(a7), a0
001a0e: 42a8001c     clr.l      $1c(a0)
001a12: 41fa023c     lea.l      $1c50(pc), a0
001a16: 2208         move.l     a0, d1
001a18: 202f000c     move.l     $c(a7), d0
001a1c: 06af00000020000c addi.l     #$20, $c(a7)
001a24: 6100fef8     bsr.w      $191e
001a28: 06af000002000008 addi.l     #$200, $8(a7)
001a30: 7002         moveq      #$2, d0
001a32: 2f400014     move.l     d0, $14(a7)
001a36: 2f6a00300004 move.l     $30(a2), $4(a7)
001a3c: 6046         bra.b      $1a84
001a3e: 52af0014     addq.l     #$1, $14(a7)
001a42: 705a         moveq      #$5a, d0
001a44: d0af0004     add.l      $4(a7), d0
001a48: 2200         move.l     d0, d1
001a4a: 202f000c     move.l     $c(a7), d0
001a4e: 6100fece     bsr.w      $191e
001a52: 206f000c     movea.l    $c(a7), a0
001a56: 216f0014001c move.l     $14(a7), $1c(a0)
001a5c: 2f2f0004     move.l     $4(a7), -(a7)
001a60: 222f000c     move.l     $c(a7), d1
001a64: 200b         move.l     a3, d0
001a66: 6132         bsr.b      $1a9a
001a68: 588f         addq.l     #$4, a7
001a6a: 06af00000020000c addi.l     #$20, $c(a7)
001a72: 06af000001000008 addi.l     #$100, $8(a7)
001a7a: 206f0004     movea.l    $4(a7), a0
001a7e: 2f6800520004 move.l     $52(a0), $4(a7)
001a84: 4aaf0004     tst.l      $4(a7)
001a88: 66b4         bne.b      $1a3e
001a8a: 2017         move.l     (a7), d0
001a8c: 4fef0018     lea.l      $18(a7), a7
001a90: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
001a96: 4e5d         unlk       a5
001a98: 4e75         rts        
001a9a: 4e550000     link.w     a5, #$0
001a9e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001aa2: 4feffff2     lea.l      -$e(a7), a7
001aa6: 7000         moveq      #$0, d0
001aa8: 1f400005     move.b     d0, $5(a7)
001aac: 1f400004     move.b     d0, $4(a7)
001ab0: 1f400003     move.b     d0, $3(a7)
001ab4: 206f0026     movea.l    $26(a7), a0
001ab8: 10280051     move.b     $51(a0), d0
001abc: 5300         subq.b     #$1, d0
001abe: 1f400005     move.b     d0, $5(a7)
001ac2: 206f0026     movea.l    $26(a7), a0
001ac6: 1f6800010004 move.b     $1(a0), $4(a7)
001acc: 206f0026     movea.l    $26(a7), a0
001ad0: 3ea8004e     move.w     $4e(a0), (a7)
001ad4: 41ef0006     lea.l      $6(a7), a0
001ad8: 2208         move.l     a0, d1
001ada: 7000         moveq      #$0, d0
001adc: 3017         move.w     (a7), d0
001ade: 6100fd6e     bsr.w      $184e
001ae2: 426f000c     clr.w      $c(a7)
001ae6: 08af0000000b bclr.b     #$0, $b(a7)
001aec: 08af0001000b bclr.b     #$1, $b(a7)
001af2: 08af0002000b bclr.b     #$2, $b(a7)
001af8: 08af0003000b bclr.b     #$3, $b(a7)
001afe: 08af0004000b bclr.b     #$4, $b(a7)
001b04: 08af0005000b bclr.b     #$5, $b(a7)
001b0a: 08af0006000b bclr.b     #$6, $b(a7)
001b10: 08af0007000b bclr.b     #$7, $b(a7)
001b16: 206f0012     movea.l    $12(a7), a0
001b1a: 10af000b     move.b     $b(a7), (a0)
001b1e: 48780002     pea.l      $2.w
001b22: 202f0016     move.l     $16(a7), d0
001b26: 5280         addq.l     #$1, d0
001b28: 2200         move.l     d0, d1
001b2a: 41ef0010     lea.l      $10(a7), a0
001b2e: 2008         move.l     a0, d0
001b30: 6100fa38     bsr.w      $156a
001b34: 588f         addq.l     #$4, a7
001b36: 48780005     pea.l      $5.w
001b3a: 202f0016     move.l     $16(a7), d0
001b3e: 5680         addq.l     #$3, d0
001b40: 2200         move.l     d0, d1
001b42: 41ef0007     lea.l      $7(a7), a0
001b46: 2008         move.l     a0, d0
001b48: 6100fa20     bsr.w      $156a
001b4c: 588f         addq.l     #$4, a7
001b4e: 206f0026     movea.l    $26(a7), a0
001b52: 226f0012     movea.l    $12(a7), a1
001b56: 136800510008 move.b     $51(a0), $8(a1)
001b5c: 48780004     pea.l      $4.w
001b60: 7009         moveq      #$9, d0
001b62: d0af0016     add.l      $16(a7), d0
001b66: 2200         move.l     d0, d1
001b68: 700a         moveq      #$a, d0
001b6a: d0af002a     add.l      $2a(a7), d0
001b6e: 6100f9fa     bsr.w      $156a
001b72: 588f         addq.l     #$4, a7
001b74: 48780003     pea.l      $3.w
001b78: 700d         moveq      #$d, d0
001b7a: d0af0016     add.l      $16(a7), d0
001b7e: 2200         move.l     d0, d1
001b80: 41fa00d1     lea.l      $1c53(pc), a0
001b84: 2008         move.l     a0, d0
001b86: 6100f9e2     bsr.w      $156a
001b8a: 588f         addq.l     #$4, a7
001b8c: 7000         moveq      #$0, d0
001b8e: 4fef000e     lea.l      $e(a7), a7
001b92: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001b98: 4e5d         unlk       a5
001b9a: 4e75         rts        
001b9c: 4e550000     link.w     a5, #$0
001ba0: 48e7c080     movem.l    d0-d1/a0, -(a7)
001ba4: 518f         subq.l     #$8, a7
001ba6: 42af0004     clr.l      $4(a7)
001baa: 206f001c     movea.l    $1c(a7), a0
001bae: 2ea80030     move.l     $30(a0), (a7)
001bb2: 6016         bra.b      $1bca
001bb4: 206f0008     movea.l    $8(a7), a0
001bb8: 2017         move.l     (a7), d0
001bba: b0a8002a     cmp.l      $2a(a0), d0
001bbe: 670e         beq.b      $1bce
001bc0: 52af0004     addq.l     #$1, $4(a7)
001bc4: 2057         movea.l    (a7), a0
001bc6: 2ea80052     move.l     $52(a0), (a7)
001bca: 4a97         tst.l      (a7)
001bcc: 66e6         bne.b      $1bb4
001bce: 2f2f001c     move.l     $1c(a7), -(a7)
001bd2: 222f0010     move.l     $10(a7), d1
001bd6: 202f000c     move.l     $c(a7), d0
001bda: 6100febe     bsr.w      $1a9a
001bde: 588f         addq.l     #$4, a7
001be0: 48780003     pea.l      $3.w
001be4: 7010         moveq      #$10, d0
001be6: d0af0010     add.l      $10(a7), d0
001bea: 2200         move.l     d0, d1
001bec: 41ef0009     lea.l      $9(a7), a0
001bf0: 2008         move.l     a0, d0
001bf2: 6100f976     bsr.w      $156a
001bf6: 588f         addq.l     #$4, a7
001bf8: 203c00000100 move.l     #$100, d0
001bfe: 508f         addq.l     #$8, a7
001c00: 4ced0100fffc movem.l    -$4(a5), a0
001c06: 4e5d         unlk       a5
001c08: 4e75         rts        
001c0a: 4e550000     link.w     a5, #$0
001c0e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001c12: 598f         subq.l     #$4, a7
001c14: 206f0008     movea.l    $8(a7), a0
001c18: 2ea80042     move.l     $42(a0), (a7)
001c1c: 202f0018     move.l     $18(a7), d0
001c20: e188         lsl.l      #$8, d0
001c22: d097         add.l      (a7), d0
001c24: 048000000100 subi.l     #$100, d0
001c2a: 2e80         move.l     d0, (a7)
001c2c: 2f2f001c     move.l     $1c(a7), -(a7)
001c30: 222f0008     move.l     $8(a7), d1
001c34: 202f0004     move.l     $4(a7), d0
001c38: 6100f930     bsr.w      $156a
001c3c: 588f         addq.l     #$4, a7
001c3e: 202f001c     move.l     $1c(a7), d0
001c42: 588f         addq.l     #$4, a7
001c44: 4ced0100fffc movem.l    -$4(a5), a0
001c4a: 4e5d         unlk       a5
001c4c: 4e75         rts        
001c4e: 2e00         move.l     d0, d7
001c50: 2e2e0000     move.l     $0(a6), d7
001c54: 00000000     ori.b      #$0, d0
001c58: 7061         moveq      #$61, d0
001c5a: 636b         bls.b      $1cc7
001c5c: 6479         bcc.b      $1cd7
001c5e: 6e6d         bgt.b      $1ccd
001c60: 6772         beq.b      $1cd4
001c62: 00000010     ori.b      #$10, d0
001c66: 0553         bchg.b     d2, (a3)
