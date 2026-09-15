000050: 3c6f0004     movea.w    $4(a7), a6
000054: bcfc0039     cmpa.w     #$39, a6
000058: 621c         bhi.b      $76
00005a: dcce         adda.w     a6, a6
00005c: 0c6f00b80006 cmpi.w     #$b8, $6(a7)
000062: 6604         bne.b      $68
000064: dcfc005c     adda.w     #$5c, a6
000068: 3c7be01e     movea.w    $88(pc, a6.w), a6
00006c: 4ebbe01a     jsr        $88(pc, a6.w)
000070: 2c5f         movea.l    (a7)+, a6
000072: 588f         addq.l     #$4, a7
000074: 4e75         rts        
000076: 323c0040     move.w     #$40, d1
00007a: 44fc0001     move.w     #$1, ccr
00007e: 60f0         bra.b      $70
000080: 2c5f         movea.l    (a7)+, a6
000082: 588f         addq.l     #$4, a7
000084: 4e75         rts        
000086: 00001c04     ori.b      #$4, d0
00008a: 1c2c1c98     move.b     $1c98(a4), d6
00008e: 1d761c781d7c move.b     $78(a6, d1.l), $1d7c(a6)
000094: 0f64         bchg.b     d7, -(a4)
000096: 0f6c0f74     bchg.b     d7, $f74(a4)
00009a: 0f7c         .dc.w      $0f7c
00009c: 0f84         bclr.b     d7, d4
00009e: 0f8c0f94     movep.w    d7, $f94(a4)
0000a2: 0fa81142     bclr.b     d7, $1142(a0)
0000a6: 1418         move.b     (a0)+, d2
0000a8: 113a12be     move.b     $1368(pc), -(a0)
0000ac: 1558172e     move.b     (a0)+, $172e(a2)
0000b0: 18e0         move.b     -(a0), (a4)+
0000b2: 191a         move.b     (a2)+, -(a4)
0000b4: 0ad2         .dc.w      $0ad2
0000b6: 0b1a         btst.l     d5, (a2)+
0000b8: 0b54         bchg.b     d5, (a4)
0000ba: 0cc0         .dc.w      $0cc0
0000bc: 0b7c         .dc.w      $0b7c
0000be: 07fc         .dc.w      $07fc
0000c0: 0812         .dc.w      $0812
0000c2: 0856         .dc.w      $0856
0000c4: 0864         .dc.w      $0864
0000c6: 0fe6         bset.b     d7, -(a6)
0000c8: 1926         move.b     -(a6), -(a4)
0000ca: 0ff41956     bset.b     d7, ([a4])
0000ce: 1002         move.b     d2, d0
0000d0: 19621014     move.b     -(a2), $1014(a4)
0000d4: 199610d8     move.b     (a6), -$28(a4, d1.w)
0000d8: 10f81026     move.b     $1026.w, (a0)+
0000dc: 19f8         .dc.w      $19f8
0000de: 1048         .dc.w      $1048
0000e0: 105c         .dc.w      $105c
0000e2: 0bb800c2     bclr.b     d5, $c2.w
0000e6: 01cc0220     movep.l    d0, $220(a4)
0000ea: 0248         .dc.w      $0248
0000ec: 02f4         .dc.w      $02f4
0000ee: 0312         btst.l     d1, (a2)
0000f0: 0658063c     addi.w     #$63c, (a0)+
0000f4: 07680440     bchg.b     d3, $440(a0)
0000f8: 0564         bchg.b     d2, -(a4)
0000fa: 4003         negx.b     d3
0000fc: 504f         addq.w     #$8, a7
0000fe: 333f         .dc.w      $333f
000100: 9de7         suba.l     -(a7), a6
000102: 3fda         .dc.w      $3fda
000104: 827999fcef31 or.w       $99fcef31.l, d1
00010a: 3ff9         .dc.w      $3ff9
00010c: 21fb54442d18 move.l     $152(pc, d5.w), $2d18.w
000112: 3fe9         .dc.w      $3fe9
000114: 21fb54442d18 move.l     $15a(pc, d5.w), $2d18.w
00011a: 4019         negx.b     (a1)+
00011c: 21fb54442d18 move.l     $162(pc, d5.w), $2d18.w
000122: 403f         .dc.w      $403f
000124: 6a7a         bpl.b      $1a0
000126: 2955385f     move.l     (a5), $385f(a4)
00012a: 3ff0         .dc.w      $3ff0
00012c: 00000000     ori.b      #$0, d0
000130: 00004000     ori.b      #$0, d0
000134: 00000000     ori.b      #$0, d0
000138: 0000bff0     ori.b      #$f0, d0
00013c: 00000000     ori.b      #$0, d0
000140: 00003fe6     ori.b      #$e6, d0
000144: 6666         bne.b      $1ac
000146: 6666         bne.b      $1ae
000148: 6667         bne.b      $1b1
00014a: 48e73ff0     movem.l    d2-d7/a0-a3, -(a7)
00014e: 61001cc8     bsr.w      $1e18
000152: 48e73000     movem.l    d2-d3, -(a7)
000156: 3f3c0001     move.w     #$1, -(a7)
00015a: 3f3c8000     move.w     #$8000, -(a7)
00015e: 610000cc     bsr.w      $22c
000162: 283c3bc79ca1 move.l     #$3bc79ca1, d4
000168: 4a80         tst.l      d0
00016a: 6a04         bpl.b      $170
00016c: 08c4001f     bset.b     #$1f, d4
000170: b084         cmp.l      d4, d0
000172: 6500008e     bcs.w      $202
000176: 2c00         move.l     d0, d6
000178: 2e01         move.l     d1, d7
00017a: 2400         move.l     d0, d2
00017c: 2601         move.l     d1, d3
00017e: 61001460     bsr.w      $15e0
000182: 2440         movea.l    d0, a2
000184: 2641         movea.l    d1, a3
000186: 2006         move.l     d6, d0
000188: 2207         move.l     d7, d1
00018a: 283c3ff00000 move.l     #$3ff00000, d4
000190: 7a00         moveq      #$0, d5
000192: 2045         movea.l    d5, a0
000194: 2245         movea.l    d5, a1
000196: 6050         bra.b      $1e8
000198: 2040         movea.l    d0, a0
00019a: 2241         movea.l    d1, a1
00019c: 546f0002     addq.w     #$2, $2(a7)
0001a0: 302f0002     move.w     $2(a7), d0
0001a4: 3200         move.w     d0, d1
0001a6: 5340         subq.w     #$1, d0
0001a8: c0c1         mulu.w     d1, d0
0001aa: 61001802     bsr.w      $19ae
0001ae: 2404         move.l     d4, d2
0001b0: 2605         move.l     d5, d3
0001b2: 6100142c     bsr.w      $15e0
0001b6: 2800         move.l     d0, d4
0001b8: 2a01         move.l     d1, d5
0001ba: 200a         move.l     a2, d0
0001bc: 220b         move.l     a3, d1
0001be: 2406         move.l     d6, d2
0001c0: 2607         move.l     d7, d3
0001c2: 6100141c     bsr.w      $15e0
0001c6: 2c00         move.l     d0, d6
0001c8: 2e01         move.l     d1, d7
0001ca: 2404         move.l     d4, d2
0001cc: 2605         move.l     d5, d3
0001ce: 610015e6     bsr.w      $17b6
0001d2: 08570007     bchg.b     #$7, (a7)
0001d6: 6708         beq.b      $1e0
0001d8: 4a80         tst.l      d0
0001da: 6704         beq.b      $1e0
0001dc: 0840001f     bchg.b     #$1f, d0
0001e0: 2408         move.l     a0, d2
0001e2: 2609         move.l     a1, d3
0001e4: 61000fe4     bsr.w      $11ca
0001e8: 2408         move.l     a0, d2
0001ea: 2609         move.l     a1, d3
0001ec: 9681         sub.l      d1, d3
0001ee: 9580         subx.l     d0, d2
0001f0: 6404         bcc.b      $1f6
0001f2: 4483         neg.l      d3
0001f4: 4082         negx.l     d2
0001f6: c4af0004     and.l      $4(a7), d2
0001fa: 669c         bne.b      $198
0001fc: c6af0008     and.l      $8(a7), d3
000200: 6696         bne.b      $198
000202: 588f         addq.l     #$4, a7
000204: 508f         addq.l     #$8, a7
000206: 4cdf0ffc     movem.l    (a7)+, d2-d7/a0-a3
00020a: 0c80bff00000 cmpi.l     #$bff00000, d0
000210: 620c         bhi.b      $21e
000212: 4a80         tst.l      d0
000214: 6b10         bmi.b      $226
000216: 0c803ff00000 cmpi.l     #$3ff00000, d0
00021c: 6508         bcs.b      $226
00021e: c0bcbff00000 and.l      #$bff00000, d0
000224: 7200         moveq      #$0, d1
000226: 44fc0000     move.w     #$0, ccr
00022a: 4e75         rts        
00022c: 48e7c000     movem.l    d0-d1, -(a7)
000230: 4cfa000cfee6 movem.l    $118(pc), d2-d3
000236: 6100157e     bsr.w      $17b6
00023a: 61001844     bsr.w      $1a80
00023e: 4cfa000cfed8 movem.l    $118(pc), d2-d3
000244: 6100139a     bsr.w      $15e0
000248: 4cdf000c     movem.l    (a7)+, d2-d3
00024c: 61001754     bsr.w      $19a2
000250: 60000f78     bra.w      $11ca
000254: 48e73ff0     movem.l    d2-d7/a0-a3, -(a7)
000258: 61001bbe     bsr.w      $1e18
00025c: 48e73000     movem.l    d2-d3, -(a7)
000260: 3f3c0000     move.w     #$0, -(a7)
000264: 3f3c8000     move.w     #$8000, -(a7)
000268: 61c2         bsr.b      $22c
00026a: 283c3bc79ca1 move.l     #$3bc79ca1, d4
000270: 4a80         tst.l      d0
000272: 6a04         bpl.b      $278
000274: 08c4001f     bset.b     #$1f, d4
000278: b084         cmp.l      d4, d0
00027a: 6520         bcs.b      $29c
00027c: 2400         move.l     d0, d2
00027e: 2601         move.l     d1, d3
000280: 6100135e     bsr.w      $15e0
000284: 2440         movea.l    d0, a2
000286: 2641         movea.l    d1, a3
000288: 283c3ff00000 move.l     #$3ff00000, d4
00028e: 7a00         moveq      #$0, d5
000290: 2c04         move.l     d4, d6
000292: 2e05         move.l     d5, d7
000294: 2004         move.l     d4, d0
000296: 2205         move.l     d5, d1
000298: 6000fefe     bra.w      $198
00029c: 203c3ff00000 move.l     #$3ff00000, d0
0002a2: 7200         moveq      #$0, d1
0002a4: 6000ff5c     bra.w      $202
0002a8: 48e70f00     movem.l    d4-d7, -(a7)
0002ac: 2c00         move.l     d0, d6
0002ae: 2e01         move.l     d1, d7
0002b0: 61a2         bsr.b      $254
0002b2: 2800         move.l     d0, d4
0002b4: 2a01         move.l     d1, d5
0002b6: 2006         move.l     d6, d0
0002b8: 2207         move.l     d7, d1
0002ba: 6100fe8e     bsr.w      $14a
0002be: 2404         move.l     d4, d2
0002c0: 2605         move.l     d5, d3
0002c2: 610014f2     bsr.w      $17b6
0002c6: 4cdf00f0     movem.l    (a7)+, d4-d7
0002ca: 44fc0000     move.w     #$0, ccr
0002ce: 4e75         rts        
0002d0: 48e70ec0     movem.l    d4-d6/a0-a1, -(a7)
0002d4: 2042         movea.l    d2, a0
0002d6: 2243         movea.l    d3, a1
0002d8: 7c00         moveq      #$0, d6
0002da: 4a80         tst.l      d0
0002dc: 6a08         bpl.b      $2e6
0002de: 0880001f     bclr.b     #$1f, d0
0002e2: 08c6001f     bset.b     #$1f, d6
0002e6: b0bc3bc79ca1 cmp.l      #$3bc79ca1, d0
0002ec: 65000080     bcs.w      $36e
0002f0: 2800         move.l     d0, d4
0002f2: 2a01         move.l     d1, d5
0002f4: 4cfa000cfe32 movem.l    $128(pc), d2-d3
0002fa: 6100166c     bsr.w      $1968
0002fe: 6f08         ble.b      $308
000300: 7243         moveq      #$43, d1
000302: 44fc0003     move.w     #$3, ccr
000306: 606c         bra.b      $374
000308: 2400         move.l     d0, d2
00030a: 2601         move.l     d1, d3
00030c: 610012d2     bsr.w      $15e0
000310: 4a80         tst.l      d0
000312: 6704         beq.b      $318
000314: 0840001f     bchg.b     #$1f, d0
000318: 4cfa000cfe0e movem.l    $128(pc), d2-d3
00031e: 61000eaa     bsr.w      $11ca
000322: 2408         move.l     a0, d2
000324: 2609         move.l     a1, d3
000326: 610004c8     bsr.w      $7f0
00032a: c144         exg.l      d0, d4
00032c: c345         exg.l      d1, d5
00032e: 4cfa000cfe10 movem.l    $140(pc), d2-d3
000334: 61001632     bsr.w      $1968
000338: 6f26         ble.b      $360
00033a: 2400         move.l     d0, d2
00033c: 2601         move.l     d1, d3
00033e: 2004         move.l     d4, d0
000340: 2205         move.l     d5, d1
000342: 61001472     bsr.w      $17b6
000346: 2408         move.l     a0, d2
000348: 2609         move.l     a1, d3
00034a: 614e         bsr.b      $39a
00034c: 4a80         tst.l      d0
00034e: 6704         beq.b      $354
000350: 0840001f     bchg.b     #$1f, d0
000354: 4cfa000cfdb2 movem.l    $108(pc), d2-d3
00035a: 61000e6e     bsr.w      $11ca
00035e: 600e         bra.b      $36e
000360: 2404         move.l     d4, d2
000362: 2605         move.l     d5, d3
000364: 61001450     bsr.w      $17b6
000368: 2408         move.l     a0, d2
00036a: 2609         move.l     a1, d3
00036c: 612c         bsr.b      $39a
00036e: bd80         eor.l      d6, d0
000370: 44fc0000     move.w     #$0, ccr
000374: 4cdf0370     movem.l    (a7)+, d4-d6/a0-a1
000378: 4e76         trapv      
00037a: 4e75         rts        
00037c: 6100ff52     bsr.w      $2d0
000380: 6516         bcs.b      $398
000382: 4a80         tst.l      d0
000384: 6704         beq.b      $38a
000386: 0840001f     bchg.b     #$1f, d0
00038a: 4cfa000cfd7c movem.l    $108(pc), d2-d3
000390: 61000e38     bsr.w      $11ca
000394: 44fc0000     move.w     #$0, ccr
000398: 4e75         rts        
00039a: 48e73ff0     movem.l    d2-d7/a0-a3, -(a7)
00039e: 61001a78     bsr.w      $1e18
0003a2: 48e73000     movem.l    d2-d3, -(a7)
0003a6: 4a80         tst.l      d0
0003a8: 6b04         bmi.b      $3ae
0003aa: 611c         bsr.b      $3c8
0003ac: 600e         bra.b      $3bc
0003ae: 0880001f     bclr.b     #$1f, d0
0003b2: 6114         bsr.b      $3c8
0003b4: 4a80         tst.l      d0
0003b6: 6704         beq.b      $3bc
0003b8: 08c0001f     bset.b     #$1f, d0
0003bc: 508f         addq.l     #$8, a7
0003be: 44fc0000     move.w     #$0, ccr
0003c2: 4cdf0ffc     movem.l    (a7)+, d2-d7/a0-a3
0003c6: 4e75         rts        
0003c8: 4cfa000cfd36 movem.l    $100(pc), d2-d3
0003ce: 61001598     bsr.w      $1968
0003d2: 6c04         bge.b      $3d8
0003d4: 6150         bsr.b      $426
0003d6: 4e75         rts        
0003d8: 4cfa000cfd1e movem.l    $f8(pc), d2-d3
0003de: 61001588     bsr.w      $1968
0003e2: 6e22         bgt.b      $406
0003e4: 2400         move.l     d0, d2
0003e6: 2601         move.l     d1, d3
0003e8: 610010b6     bsr.w      $14a0
0003ec: c142         exg.l      d0, d2
0003ee: c343         exg.l      d1, d3
0003f0: 61000f54     bsr.w      $1346
0003f4: 610013c0     bsr.w      $17b6
0003f8: 612c         bsr.b      $426
0003fa: 4cfa000cfd14 movem.l    $110(pc), d2-d3
000400: 61000dc8     bsr.w      $11ca
000404: 4e75         rts        
000406: 2400         move.l     d0, d2
000408: 2601         move.l     d1, d3
00040a: 4cfa0003fd1c movem.l    $128(pc), d0-d1
000410: 610013a4     bsr.w      $17b6
000414: 6110         bsr.b      $426
000416: 2400         move.l     d0, d2
000418: 2601         move.l     d1, d3
00041a: 4cfa0003fcec movem.l    $108(pc), d0-d1
000420: 61000da0     bsr.w      $11c2
000424: 4e75         rts        
000426: b0bc3bc79ca1 cmp.l      #$3bc79ca1, d0
00042c: 6578         bcs.b      $4a6
00042e: 7a01         moveq      #$1, d5
000430: 383c8000     move.w     #$8000, d4
000434: 2c00         move.l     d0, d6
000436: 2e01         move.l     d1, d7
000438: 91c8         suba.l     a0, a0
00043a: 2248         movea.l    a0, a1
00043c: 2400         move.l     d0, d2
00043e: 2601         move.l     d1, d3
000440: 6100119e     bsr.w      $15e0
000444: 2440         movea.l    d0, a2
000446: 2641         movea.l    d1, a3
000448: 2006         move.l     d6, d0
00044a: 2207         move.l     d7, d1
00044c: 603e         bra.b      $48c
00044e: 2040         movea.l    d0, a0
000450: 2241         movea.l    d1, a1
000452: 5485         addq.l     #$2, d5
000454: 200a         move.l     a2, d0
000456: 220b         move.l     a3, d1
000458: 2406         move.l     d6, d2
00045a: 2607         move.l     d7, d3
00045c: 61001182     bsr.w      $15e0
000460: 2c00         move.l     d0, d6
000462: 2e01         move.l     d1, d7
000464: 2005         move.l     d5, d0
000466: 61001546     bsr.w      $19ae
00046a: 2400         move.l     d0, d2
00046c: 2601         move.l     d1, d3
00046e: 2006         move.l     d6, d0
000470: 2207         move.l     d7, d1
000472: 61001342     bsr.w      $17b6
000476: 0844000f     bchg.b     #$f, d4
00047a: 6708         beq.b      $484
00047c: 4a80         tst.l      d0
00047e: 6704         beq.b      $484
000480: 0840001f     bchg.b     #$1f, d0
000484: 2408         move.l     a0, d2
000486: 2609         move.l     a1, d3
000488: 61000d40     bsr.w      $11ca
00048c: 2408         move.l     a0, d2
00048e: 2609         move.l     a1, d3
000490: 9681         sub.l      d1, d3
000492: 9580         subx.l     d0, d2
000494: 6404         bcc.b      $49a
000496: 4483         neg.l      d3
000498: 4082         negx.l     d2
00049a: c4af0008     and.l      $8(a7), d2
00049e: 66ae         bne.b      $44e
0004a0: c6af000c     and.l      $c(a7), d3
0004a4: 66a8         bne.b      $44e
0004a6: 4e75         rts        
0004a8: 3ff0         .dc.w      $3ff0
0004aa: 00000000     ori.b      #$0, d0
0004ae: 00004000     ori.b      #$0, d0
0004b2: 00000000     ori.b      #$0, d0
0004b6: 00003fe6     ori.b      #$e6, d0
0004ba: 2e42         movea.l    d2, a7
0004bc: fefa39ef41e0 fbf.l      $39ef469e
0004c2: 00000000     ori.b      #$0, d0
0004c6: 000048e7     ori.b      #$e7, d0
0004ca: 3ffc         .dc.w      $3ffc
0004cc: 4a80         tst.l      d0
0004ce: 6b04         bmi.b      $4d4
0004d0: 6120         bsr.b      $4f2
0004d2: 6014         bra.b      $4e8
0004d4: 0880001f     bclr.b     #$1f, d0
0004d8: 6118         bsr.b      $4f2
0004da: 2400         move.l     d0, d2
0004dc: 2601         move.l     d1, d3
0004de: 4cfa0003ffc6 movem.l    $4a6(pc), d0-d1
0004e4: 610012d0     bsr.w      $17b6
0004e8: 44fc0000     move.w     #$0, ccr
0004ec: 4cdf3ffc     movem.l    (a7)+, d2-d7/a0-a5
0004f0: 4e75         rts        
0004f2: 61001924     bsr.w      $1e18
0004f6: 48e73000     movem.l    d2-d3, -(a7)
0004fa: 2840         movea.l    d0, a4
0004fc: 2a41         movea.l    d1, a5
0004fe: 4cfa000cffb6 movem.l    $4b6(pc), d2-d3
000504: 610012b0     bsr.w      $17b6
000508: 61001576     bsr.w      $1a80
00050c: 48e7c000     movem.l    d0-d1, -(a7)
000510: 671a         beq.b      $52c
000512: 4cfa000cffa2 movem.l    $4b6(pc), d2-d3
000518: 610010c6     bsr.w      $15e0
00051c: 0840001f     bchg.b     #$1f, d0
000520: 240c         move.l     a4, d2
000522: 260d         move.l     a5, d3
000524: 61000ca4     bsr.w      $11ca
000528: 2840         movea.l    d0, a4
00052a: 2a41         movea.l    d1, a5
00052c: 200c         move.l     a4, d0
00052e: 220d         move.l     a5, d1
000530: 3f3c0001     move.w     #$1, -(a7)
000534: 2c00         move.l     d0, d6
000536: 2e01         move.l     d1, d7
000538: 4cfa0030ff6c movem.l    $4a6(pc), d4-d5
00053e: 61000f60     bsr.w      $14a0
000542: 2040         movea.l    d0, a0
000544: 2241         movea.l    d1, a1
000546: 5257         addq.w     #$1, (a7)
000548: 3017         move.w     (a7), d0
00054a: 48c0         ext.l      d0
00054c: 61001460     bsr.w      $19ae
000550: 2404         move.l     d4, d2
000552: 2605         move.l     d5, d3
000554: 6100108a     bsr.w      $15e0
000558: 2800         move.l     d0, d4
00055a: 2a01         move.l     d1, d5
00055c: 200c         move.l     a4, d0
00055e: 220d         move.l     a5, d1
000560: 2406         move.l     d6, d2
000562: 2607         move.l     d7, d3
000564: 6100107a     bsr.w      $15e0
000568: 2c00         move.l     d0, d6
00056a: 2e01         move.l     d1, d7
00056c: 2404         move.l     d4, d2
00056e: 2605         move.l     d5, d3
000570: 61001244     bsr.w      $17b6
000574: 2408         move.l     a0, d2
000576: 2609         move.l     a1, d3
000578: 61000c50     bsr.w      $11ca
00057c: 2408         move.l     a0, d2
00057e: 2609         move.l     a1, d3
000580: 9681         sub.l      d1, d3
000582: 9580         subx.l     d0, d2
000584: 6404         bcc.b      $58a
000586: 4483         neg.l      d3
000588: 4082         negx.l     d2
00058a: c4af000a     and.l      $a(a7), d2
00058e: 66b2         bne.b      $542
000590: c6af000e     and.l      $e(a7), d3
000594: 66ac         bne.b      $542
000596: 4aaf0002     tst.l      $2(a7)
00059a: 6748         beq.b      $5e4
00059c: 2c00         move.l     d0, d6
00059e: 2e01         move.l     d1, d7
0005a0: 4cef00030002 movem.l    $2(a7), d0-d1
0005a6: 61001442     bsr.w      $19ea
0005aa: 2800         move.l     d0, d4
0005ac: 4cfa000cfef8 movem.l    $4a6(pc), d2-d3
0005b2: b8bc00000020 cmp.l      #$20, d4
0005b8: 6d16         blt.b      $5d0
0005ba: 4cfa0003ff02 movem.l    $4be(pc), d0-d1
0005c0: 6100101e     bsr.w      $15e0
0005c4: 2400         move.l     d0, d2
0005c6: 2601         move.l     d1, d3
0005c8: 98bc0000001f sub.l      #$1f, d4
0005ce: 60e2         bra.b      $5b2
0005d0: 7001         moveq      #$1, d0
0005d2: e9a8         lsl.l      d4, d0
0005d4: 61001408     bsr.w      $19de
0005d8: 61001006     bsr.w      $15e0
0005dc: 2406         move.l     d6, d2
0005de: 2607         move.l     d7, d3
0005e0: 61000ffe     bsr.w      $15e0
0005e4: dffc00000012 adda.l     #$12, a7
0005ea: 4e75         rts        
0005ec: 4a80         tst.l      d0
0005ee: 6608         bne.b      $5f8
0005f0: 7000         moveq      #$0, d0
0005f2: 7200         moveq      #$0, d1
0005f4: 600000a8     bra.w      $69e
0005f8: 4a82         tst.l      d2
0005fa: 6716         beq.b      $612
0005fc: b4bafeaa     cmp.l      $4a8(pc), d2
000600: 6606         bne.b      $608
000602: 4a83         tst.l      d3
000604: 67000098     beq.w      $69e
000608: b0bafe9e     cmp.l      $4a8(pc), d0
00060c: 660e         bne.b      $61c
00060e: 4a81         tst.l      d1
000610: 660a         bne.b      $61c
000612: 4cfa0003fe92 movem.l    $4a6(pc), d0-d1
000618: 60000084     bra.w      $69e
00061c: 48e730f0     movem.l    d2-d3/a0-a3, -(a7)
000620: 2040         movea.l    d0, a0
000622: 2241         movea.l    d1, a1
000624: 2442         movea.l    d2, a2
000626: 2643         movea.l    d3, a3
000628: 4a80         tst.l      d0
00062a: 6a1a         bpl.b      $646
00062c: 2002         move.l     d2, d0
00062e: 2203         move.l     d3, d1
000630: 6100144e     bsr.w      $1a80
000634: 4a82         tst.l      d2
000636: 670e         beq.b      $646
000638: 7243         moveq      #$43, d1
00063a: 44fc0003     move.w     #$3, ccr
00063e: 4cdf0f0c     movem.l    (a7)+, d2-d3/a0-a3
000642: 4e76         trapv      
000644: 4e75         rts        
000646: 2008         move.l     a0, d0
000648: 2209         move.l     a1, d1
00064a: 0880001f     bclr.b     #$1f, d0
00064e: 2404         move.l     d4, d2
000650: 2605         move.l     d5, d3
000652: 6100008c     bsr.w      $6e0
000656: 240a         move.l     a2, d2
000658: 260b         move.l     a3, d3
00065a: 0882001f     bclr.b     #$1f, d2
00065e: 61000f80     bsr.w      $15e0
000662: 2404         move.l     d4, d2
000664: 2605         move.l     d5, d3
000666: 6100fe60     bsr.w      $4c8
00066a: 240a         move.l     a2, d2
00066c: 6a0e         bpl.b      $67c
00066e: 2400         move.l     d0, d2
000670: 2601         move.l     d1, d3
000672: 4cfa0003fe32 movem.l    $4a6(pc), d0-d1
000678: 6100113c     bsr.w      $17b6
00067c: 2408         move.l     a0, d2
00067e: 6a1a         bpl.b      $69a
000680: 48e7c000     movem.l    d0-d1, -(a7)
000684: 200a         move.l     a2, d0
000686: 220b         move.l     a3, d1
000688: 61001394     bsr.w      $1a1e
00068c: 08000000     btst.b     #$0, d0
000690: 4cdf0003     movem.l    (a7)+, d0-d1
000694: 6704         beq.b      $69a
000696: 08c0001f     bset.b     #$1f, d0
00069a: 4cdf0f0c     movem.l    (a7)+, d2-d3/a0-a3
00069e: 44fc0000     move.w     #$0, ccr
0006a2: 4e75         rts        
0006a4: 4002         negx.b     d2
0006a6: 6bb1         bmi.b      $659
0006a8: bbb55515     eor.l      d5, ([a5], d5.w * 4)
0006ac: 3ff4         .dc.w      $3ff4
0006ae: 00000000     ori.b      #$0, d0
0006b2: 00003fe9     ori.b      #$e9, d0
0006b6: 9999         sub.l      d4, (a1)+
0006b8: 9999         sub.l      d4, (a1)+
0006ba: 999a         sub.l      d4, (a2)+
0006bc: 3fcc         .dc.w      $3fcc
0006be: 8ff7c79a9a2c divs.w     ([, a4.w * 8], $9a2c), d7
0006c4: 48e73000     movem.l    d2-d3, -(a7)
0006c8: 6116         bsr.b      $6e0
0006ca: 650e         bcs.b      $6da
0006cc: 4cfa000cffd4 movem.l    $6a2(pc), d2-d3
0006d2: 610010e2     bsr.w      $17b6
0006d6: 44fc0000     move.w     #$0, ccr
0006da: 4cdf000c     movem.l    (a7)+, d2-d3
0006de: 4e75         rts        
0006e0: 4a80         tst.l      d0
0006e2: 6f000102     ble.w      $7e6
0006e6: 48e73ffc     movem.l    d2-d7/a0-a5, -(a7)
0006ea: 2840         movea.l    d0, a4
0006ec: 2a41         movea.l    d1, a5
0006ee: 61001728     bsr.w      $1e18
0006f2: 48e73000     movem.l    d2-d3, -(a7)
0006f6: 7800         moveq      #$0, d4
0006f8: 2a04         move.l     d4, d5
0006fa: 4cfa000cffae movem.l    $6aa(pc), d2-d3
000700: 61001266     bsr.w      $1968
000704: 6f26         ble.b      $72c
000706: 2004         move.l     d4, d0
000708: 2205         move.l     d5, d1
00070a: 4cfa000cffae movem.l    $6ba(pc), d2-d3
000710: 61000ab8     bsr.w      $11ca
000714: 2800         move.l     d0, d4
000716: 2a01         move.l     d1, d5
000718: 200c         move.l     a4, d0
00071a: 220d         move.l     a5, d1
00071c: 4cfa000cff94 movem.l    $6b2(pc), d2-d3
000722: 61000ebc     bsr.w      $15e0
000726: 2840         movea.l    d0, a4
000728: 2a41         movea.l    d1, a5
00072a: 60ce         bra.b      $6fa
00072c: 4cfa000cff84 movem.l    $6b2(pc), d2-d3
000732: 61001234     bsr.w      $1968
000736: 6c26         bge.b      $75e
000738: 2004         move.l     d4, d0
00073a: 2205         move.l     d5, d1
00073c: 4cfa000cff7c movem.l    $6ba(pc), d2-d3
000742: 61000a7e     bsr.w      $11c2
000746: 2800         move.l     d0, d4
000748: 2a01         move.l     d1, d5
00074a: 200c         move.l     a4, d0
00074c: 220d         move.l     a5, d1
00074e: 4cfa000cff5a movem.l    $6aa(pc), d2-d3
000754: 61000e8a     bsr.w      $15e0
000758: 2840         movea.l    d0, a4
00075a: 2a41         movea.l    d1, a5
00075c: 60ce         bra.b      $72c
00075e: 61000be6     bsr.w      $1346
000762: 2840         movea.l    d0, a4
000764: 2a41         movea.l    d1, a5
000766: 2c00         move.l     d0, d6
000768: 2e01         move.l     d1, d7
00076a: 3f3c0001     move.w     #$1, -(a7)
00076e: 3f3c8000     move.w     #$8000, -(a7)
000772: 2040         movea.l    d0, a0
000774: 2241         movea.l    d1, a1
000776: 526f0002     addq.w     #$1, $2(a7)
00077a: 200c         move.l     a4, d0
00077c: 220d         move.l     a5, d1
00077e: 2406         move.l     d6, d2
000780: 2607         move.l     d7, d3
000782: 61000e5c     bsr.w      $15e0
000786: 2c00         move.l     d0, d6
000788: 2e01         move.l     d1, d7
00078a: 302f0002     move.w     $2(a7), d0
00078e: 48c0         ext.l      d0
000790: 6100121c     bsr.w      $19ae
000794: 2400         move.l     d0, d2
000796: 2601         move.l     d1, d3
000798: 2006         move.l     d6, d0
00079a: 2207         move.l     d7, d1
00079c: 61001018     bsr.w      $17b6
0007a0: 08570007     bchg.b     #$7, (a7)
0007a4: 6708         beq.b      $7ae
0007a6: 4a80         tst.l      d0
0007a8: 6704         beq.b      $7ae
0007aa: 0840001f     bchg.b     #$1f, d0
0007ae: 2408         move.l     a0, d2
0007b0: 2609         move.l     a1, d3
0007b2: 61000a16     bsr.w      $11ca
0007b6: 2408         move.l     a0, d2
0007b8: 2609         move.l     a1, d3
0007ba: 9681         sub.l      d1, d3
0007bc: 9580         subx.l     d0, d2
0007be: 6404         bcc.b      $7c4
0007c0: 4483         neg.l      d3
0007c2: 4082         negx.l     d2
0007c4: c4af0004     and.l      $4(a7), d2
0007c8: 66a8         bne.b      $772
0007ca: c6af0008     and.l      $8(a7), d3
0007ce: 66a2         bne.b      $772
0007d0: 2404         move.l     d4, d2
0007d2: 2605         move.l     d5, d3
0007d4: 610009f4     bsr.w      $11ca
0007d8: 588f         addq.l     #$4, a7
0007da: 508f         addq.l     #$8, a7
0007dc: 4cdf3ffc     movem.l    (a7)+, d2-d7/a0-a5
0007e0: 44fc0000     move.w     #$0, ccr
0007e4: 4e75         rts        
0007e6: 7243         moveq      #$43, d1
0007e8: 44fc0003     move.w     #$3, ccr
0007ec: 4e76         trapv      
0007ee: 4e75         rts        
0007f0: 4a80         tst.l      d0
0007f2: 6602         bne.b      $7f6
0007f4: 4e75         rts        
0007f6: 6e0a         bgt.b      $802
0007f8: 7243         moveq      #$43, d1
0007fa: 44fc0003     move.w     #$3, ccr
0007fe: 4e76         trapv      
000800: 4e75         rts        
000802: 48e73ff0     movem.l    d2-d7/a0-a3, -(a7)
000806: 2040         movea.l    d0, a0
000808: 2241         movea.l    d1, a1
00080a: 6100160c     bsr.w      $1e18
00080e: 2802         move.l     d2, d4
000810: 2a03         move.l     d3, d5
000812: b0bc3ff00000 cmp.l      #$3ff00000, d0
000818: 6e06         bgt.b      $820
00081a: 6d14         blt.b      $830
00081c: 4a81         tst.l      d1
00081e: 675a         beq.b      $87a
000820: 90bc00100000 sub.l      #$100000, d0
000826: 2c3c40000000 move.l     #$40000000, d6
00082c: 7e00         moveq      #$0, d7
00082e: 6022         bra.b      $852
000830: 2c3c3ff00000 move.l     #$3ff00000, d6
000836: 7e00         moveq      #$0, d7
000838: 6018         bra.b      $852
00083a: 2c00         move.l     d0, d6
00083c: 2e01         move.l     d1, d7
00083e: 2400         move.l     d0, d2
000840: 2601         move.l     d1, d3
000842: 2008         move.l     a0, d0
000844: 2209         move.l     a1, d1
000846: 61000f6e     bsr.w      $17b6
00084a: b5c0         cmpa.l     d0, a2
00084c: 6604         bne.b      $852
00084e: b7c1         cmpa.l     d1, a3
000850: 6728         beq.b      $87a
000852: 2440         movea.l    d0, a2
000854: 2641         movea.l    d1, a3
000856: 2406         move.l     d6, d2
000858: 2607         move.l     d7, d3
00085a: 6100096e     bsr.w      $11ca
00085e: 90bc00100000 sub.l      #$100000, d0
000864: 2400         move.l     d0, d2
000866: 2601         move.l     d1, d3
000868: 9687         sub.l      d7, d3
00086a: 9586         subx.l     d6, d2
00086c: 6404         bcc.b      $872
00086e: 4483         neg.l      d3
000870: 4082         negx.l     d2
000872: c484         and.l      d4, d2
000874: 66c4         bne.b      $83a
000876: c685         and.l      d5, d3
000878: 66c0         bne.b      $83a
00087a: 44fc0000     move.w     #$0, ccr
00087e: 4cdf0ffc     movem.l    (a7)+, d2-d7/a0-a3
000882: 4e75         rts        
000884: 2f05         move.l     d5, -(a7)
000886: 7a00         moveq      #$0, d5
000888: 4a80         tst.l      d0
00088a: 6a04         bpl.b      $890
00088c: 7a08         moveq      #$8, d5
00088e: 4480         neg.l      d0
000890: 6108         bsr.b      $89a
000892: 44c5         move.w     d5, ccr
000894: 4cdf0020     movem.l    (a7)+, d5
000898: 4e75         rts        
00089a: 48e74100     movem.l    d1/d7, -(a7)
00089e: 2f08         move.l     a0, -(a7)
0008a0: d1fc0000000a adda.l     #$a, a0
0008a6: 10bc0000     move.b     #$0, (a0)
0008aa: 6010         bra.b      $8bc
0008ac: 223c0000000a move.l     #$a, d1
0008b2: 6100144c     bsr.w      $1d00
0008b6: 06010030     addi.b     #$30, d1
0008ba: 1101         move.b     d1, -(a0)
0008bc: 0c800000000a cmpi.l     #$a, d0
0008c2: 64e8         bcc.b      $8ac
0008c4: 06000030     addi.b     #$30, d0
0008c8: 1100         move.b     d0, -(a0)
0008ca: 2e08         move.l     a0, d7
0008cc: 9e9f         sub.l      (a7)+, d7
0008ce: 6004         bra.b      $8d4
0008d0: 113c0030     move.b     #$30, -(a0)
0008d4: 51cffffa     dbra       d7, $8d0
0008d8: 4cdf0081     movem.l    (a7)+, d0/d7
0008dc: 4e75         rts        
0008de: 2f01         move.l     d1, -(a7)
0008e0: 6100087e     bsr.w      $1160
0008e4: 6106         bsr.b      $8ec
0008e6: 4cdf0002     movem.l    (a7)+, d1
0008ea: 4e75         rts        
0008ec: 48e71fc0     movem.l    d3-d7/a0-a1, -(a7)
0008f0: 7a00         moveq      #$0, d5
0008f2: 0880001f     bclr.b     #$1f, d0
0008f6: 6702         beq.b      $8fa
0008f8: 7a08         moveq      #$8, d5
0008fa: 48e72400     movem.l    d2/d5, -(a7)
0008fe: 2e00         move.l     d0, d7
000900: 670000d4     beq.w      $9d6
000904: 4247         clr.w      d7
000906: 4847         swap       d7
000908: e84f         lsr.w      #$4, d7
00090a: 044703ff     subi.w     #$3ff, d7
00090e: 6f0e         ble.b      $91e
000910: 0c470400     cmpi.w     #$400, d7
000914: 6508         bcs.b      $91e
000916: 203c7ff00000 move.l     #$7ff00000, d0
00091c: 7200         moveq      #$0, d1
00091e: cffc04d1     muls.w     #$4d1, d7
000922: 4847         swap       d7
000924: 43fa04ea     lea.l      $e10(pc), a1
000928: e747         asl.w      #$3, d7
00092a: b0b17000     cmp.l      (a1, d7.w), d0
00092e: 620e         bhi.b      $93e
000930: 6506         bcs.b      $938
000932: b2b17004     cmp.l      $4(a1, d7.w), d1
000936: 6214         bhi.b      $94c
000938: 5147         subq.w     #$8, d7
00093a: 60ee         bra.b      $92a
00093c: 5047         addq.w     #$8, d7
00093e: b0b17008     cmp.l      $8(a1, d7.w), d0
000942: 6508         bcs.b      $94c
000944: 62f6         bhi.b      $93c
000946: b2b1700c     cmp.l      $c(a1, d7.w), d1
00094a: 62f0         bhi.b      $93c
00094c: 4447         neg.w      d7
00094e: 6f02         ble.b      $952
000950: 5147         subq.w     #$8, d7
000952: 6710         beq.b      $964
000954: 24317000     move.l     (a1, d7.w), d2
000958: 26317004     move.l     $4(a1, d7.w), d3
00095c: 61000c82     bsr.w      $15e0
000960: 4447         neg.w      d7
000962: e347         asl.w      #$1, d7
000964: 2800         move.l     d0, d4
000966: 4244         clr.w      d4
000968: 4844         swap       d4
00096a: e844         asr.w      #$4, d4
00096c: c87c07ff     and.w      #$7ff, d4
000970: 987c03ff     sub.w      #$3ff, d4
000974: c9fc4d10     muls.w     #$4d10, d4
000978: 4844         swap       d4
00097a: e744         asl.w      #$3, d4
00097c: 43fa05c2     lea.l      $f40(pc), a1
000980: b0b14000     cmp.l      (a1, d4.w), d0
000984: 620e         bhi.b      $994
000986: 6506         bcs.b      $98e
000988: b2b14004     cmp.l      $4(a1, d4.w), d1
00098c: 6406         bcc.b      $994
00098e: 5144         subq.w     #$8, d4
000990: 60ee         bra.b      $980
000992: 5044         addq.w     #$8, d4
000994: b0b14008     cmp.l      $8(a1, d4.w), d0
000998: 6508         bcs.b      $9a2
00099a: 62f6         bhi.b      $992
00099c: b2b1400c     cmp.l      $c(a1, d4.w), d1
0009a0: 64f0         bcc.b      $992
0009a2: 4444         neg.w      d4
0009a4: 6712         beq.b      $9b8
0009a6: 24314000     move.l     (a1, d4.w), d2
0009aa: 26314004     move.l     $4(a1, d4.w), d3
0009ae: 4444         neg.w      d4
0009b0: e644         asr.w      #$3, d4
0009b2: de44         add.w      d4, d7
0009b4: 61000c2a     bsr.w      $15e0
0009b8: 2c00         move.l     d0, d6
0009ba: 4846         swap       d6
0009bc: e84e         lsr.w      #$4, d6
0009be: 044603ff     subi.w     #$3ff, d6
0009c2: 0280800fffff andi.l     #$800fffff, d0
0009c8: 08c00014     bset.b     #$14, d0
0009cc: 6004         bra.b      $9d2
0009ce: e381         asl.l      #$1, d1
0009d0: e390         roxl.l     #$1, d0
0009d2: 51cefffa     dbra       d6, $9ce
0009d6: 2c1f         move.l     (a7)+, d6
0009d8: 5247         addq.w     #$1, d7
0009da: 2400         move.l     d0, d2
0009dc: 4842         swap       d2
0009de: e80a         lsr.b      #$4, d2
0009e0: 943c000a     sub.b      #$a, d2
0009e4: 6d0e         blt.b      $9f4
0009e6: 10fc0031     move.b     #$31, (a0)+
0009ea: 5247         addq.w     #$1, d7
0009ec: d43c0030     add.b      #$30, d2
0009f0: 10c2         move.b     d2, (a0)+
0009f2: 6006         bra.b      $9fa
0009f4: d43c003a     add.b      #$3a, d2
0009f8: 10c2         move.b     d2, (a0)+
0009fa: 2606         move.l     d6, d3
0009fc: 4843         swap       d3
0009fe: 48c3         ext.l      d3
000a00: 48c7         ext.l      d7
000a02: d687         add.l      d7, d3
000a04: 6e24         bgt.b      $a2a
000a06: 6d1e         blt.b      $a26
000a08: 0c8000080000 cmpi.l     #$80000, d0
000a0e: 6516         bcs.b      $a26
000a10: 1028ffff     move.b     -$1(a0), d0
000a14: b03c0034     cmp.b      #$34, d0
000a18: 630c         bls.b      $a26
000a1a: 117c0031ffff move.b     #$31, -$1(a0)
000a20: 4210         clr.b      (a0)
000a22: 5247         addq.w     #$1, d7
000a24: 6074         bra.b      $a9a
000a26: 4220         clr.b      -(a0)
000a28: 6070         bra.b      $a9a
000a2a: 48c6         ext.l      d6
000a2c: bc83         cmp.l      d3, d6
000a2e: 6f02         ble.b      $a32
000a30: 2c03         move.l     d3, d6
000a32: 5386         subq.l     #$1, d6
000a34: 6020         bra.b      $a56
000a36: e381         asl.l      #$1, d1
000a38: e390         roxl.l     #$1, d0
000a3a: 2400         move.l     d0, d2
000a3c: 2601         move.l     d1, d3
000a3e: e381         asl.l      #$1, d1
000a40: e390         roxl.l     #$1, d0
000a42: e381         asl.l      #$1, d1
000a44: e390         roxl.l     #$1, d0
000a46: d283         add.l      d3, d1
000a48: d182         addx.l     d2, d0
000a4a: 2400         move.l     d0, d2
000a4c: 4842         swap       d2
000a4e: e80a         lsr.b      #$4, d2
000a50: 06020030     addi.b     #$30, d2
000a54: 10c2         move.b     d2, (a0)+
000a56: 0280000fffff andi.l     #$fffff, d0
000a5c: 51ceffd8     dbra       d6, $a36
000a60: 4210         clr.b      (a0)
000a62: 2248         movea.l    a0, a1
000a64: 0c8000080000 cmpi.l     #$80000, d0
000a6a: 652e         bcs.b      $a9a
000a6c: 1020         move.b     -(a0), d0
000a6e: b1ef0018     cmpa.l     $18(a7), a0
000a72: 670e         beq.b      $a82
000a74: 5200         addq.b     #$1, d0
000a76: 0c000039     cmpi.b     #$39, d0
000a7a: 631c         bls.b      $a98
000a7c: 10bc0030     move.b     #$30, (a0)
000a80: 60ea         bra.b      $a6c
000a82: 5200         addq.b     #$1, d0
000a84: 0c000039     cmpi.b     #$39, d0
000a88: 630e         bls.b      $a98
000a8a: 7031         moveq      #$31, d0
000a8c: 1080         move.b     d0, (a0)
000a8e: 7030         moveq      #$30, d0
000a90: 12c0         move.b     d0, (a1)+
000a92: 4211         clr.b      (a1)
000a94: 5247         addq.w     #$1, d7
000a96: 6002         bra.b      $a9a
000a98: 1080         move.b     d0, (a0)
000a9a: 3007         move.w     d7, d0
000a9c: 48c0         ext.l      d0
000a9e: 2a1f         move.l     (a7)+, d5
000aa0: 44c5         move.w     d5, ccr
000aa2: 4cdf03f8     movem.l    (a7)+, d3-d7/a0-a1
000aa6: 4e75         rts        
000aa8: 7000         moveq      #$0, d0
000aaa: 7200         moveq      #$0, d1
000aac: 7c00         moveq      #$0, d6
000aae: 7800         moveq      #$0, d4
000ab0: 61000082     bsr.w      $b34
000ab4: 6418         bcc.b      $ace
000ab6: 0c03002d     cmpi.b     #$2d, d3
000aba: 6608         bne.b      $ac4
000abc: 08c50008     bset.b     #$8, d5
000ac0: 6646         bne.b      $b08
000ac2: 6006         bra.b      $aca
000ac4: 0c03002b     cmpi.b     #$2b, d3
000ac8: 6632         bne.b      $afc
000aca: 6168         bsr.b      $b34
000acc: 652e         bcs.b      $afc
000ace: 0c8400000011 cmpi.l     #$11, d4
000ad4: 6c3e         bge.b      $b14
000ad6: 5284         addq.l     #$1, d4
000ad8: e389         lsl.l      #$1, d1
000ada: e390         roxl.l     #$1, d0
000adc: 2400         move.l     d0, d2
000ade: 2e01         move.l     d1, d7
000ae0: e389         lsl.l      #$1, d1
000ae2: e390         roxl.l     #$1, d0
000ae4: e389         lsl.l      #$1, d1
000ae6: e390         roxl.l     #$1, d0
000ae8: d287         add.l      d7, d1
000aea: d182         addx.l     d2, d0
000aec: d283         add.l      d3, d1
000aee: 7400         moveq      #$0, d2
000af0: d182         addx.l     d2, d0
000af2: 0805000a     btst.b     #$a, d5
000af6: 67d2         beq.b      $aca
000af8: 5386         subq.l     #$1, d6
000afa: 60ce         bra.b      $aca
000afc: 0c03002e     cmpi.b     #$2e, d3
000b00: 6606         bne.b      $b08
000b02: 08c5000a     bset.b     #$a, d5
000b06: 67c2         beq.b      $aca
000b08: 5388         subq.l     #$1, a0
000b0a: 0805000b     btst.b     #$b, d5
000b0e: 671c         beq.b      $b2c
000b10: 4a80         tst.l      d0
000b12: 4e75         rts        
000b14: 0805000a     btst.b     #$a, d5
000b18: 660c         bne.b      $b26
000b1a: 5286         addq.l     #$1, d6
000b1c: 6116         bsr.b      $b34
000b1e: 64fa         bcc.b      $b1a
000b20: 0c03002e     cmpi.b     #$2e, d3
000b24: 66e2         bne.b      $b08
000b26: 610c         bsr.b      $b34
000b28: 64fc         bcc.b      $b26
000b2a: 60dc         bra.b      $b08
000b2c: 7242         moveq      #$42, d1
000b2e: 44fc0001     move.w     #$1, ccr
000b32: 4e75         rts        
000b34: 1618         move.b     (a0)+, d3
000b36: 0c030030     cmpi.b     #$30, d3
000b3a: 6d18         blt.b      $b54
000b3c: 0c030039     cmpi.b     #$39, d3
000b40: 6e12         bgt.b      $b54
000b42: 04030030     subi.b     #$30, d3
000b46: 4883         ext.w      d3
000b48: 48c3         ext.l      d3
000b4a: 00450800     ori.w      #$800, d5
000b4e: 023c         .dc.w      $023c
000b50: fffe         dc.w       $fffe
000b52: 4e75         rts        
000b54: 003c0001     ori.b      #$1, ccr
000b58: 4e75         rts        
000b5a: 48e77f80     movem.l    d1-d7/a0, -(a7)
000b5e: 7a00         moveq      #$0, d5
000b60: 6100ff46     bsr.w      $aa8
000b64: 650001d6     bcs.w      $d3c
000b68: 6630         bne.b      $b9a
000b6a: 0805000a     btst.b     #$a, d5
000b6e: 662a         bne.b      $b9a
000b70: 0203ffdf     andi.b     #$df, d3
000b74: 0c030045     cmpi.b     #$45, d3
000b78: 6720         beq.b      $b9a
000b7a: 08050008     btst.b     #$8, d5
000b7e: 6608         bne.b      $b88
000b80: 2001         move.l     d1, d0
000b82: 44fc0000     move.w     #$0, ccr
000b86: 600c         bra.b      $b94
000b88: 4a80         tst.l      d0
000b8a: 6b0e         bmi.b      $b9a
000b8c: 2001         move.l     d1, d0
000b8e: 4480         neg.l      d0
000b90: 44fc0008     move.w     #$8, ccr
000b94: 4cdf80fe     movem.l    (a7)+, d1-d7/a7
000b98: 4e75         rts        
000b9a: 8abc00000002 or.l       #$2, d5
000ba0: 6070         bra.b      $c12
000ba2: 48e77f80     movem.l    d1-d7/a0, -(a7)
000ba6: 7a00         moveq      #$0, d5
000ba8: 00450400     ori.w      #$400, d5
000bac: 6100fefa     bsr.w      $aa8
000bb0: 6500018a     bcs.w      $d3c
000bb4: 6708         beq.b      $bbe
000bb6: 00450002     ori.w      #$2, d5
000bba: 0881001f     bclr.b     #$1f, d1
000bbe: 2001         move.l     d1, d0
000bc0: 6a0a         bpl.b      $bcc
000bc2: 008500000002 ori.l      #$2, d5
000bc8: 0880001f     bclr.b     #$1f, d0
000bcc: 08050008     btst.b     #$8, d5
000bd0: 6702         beq.b      $bd4
000bd2: 4480         neg.l      d0
000bd4: 44c5         move.w     d5, ccr
000bd6: 4cdf80fe     movem.l    (a7)+, d1-d7/a7
000bda: 4e75         rts        
000bdc: 48e77f80     movem.l    d1-d7/a0, -(a7)
000be0: 7a00         moveq      #$0, d5
000be2: 00450400     ori.w      #$400, d5
000be6: 00450100     ori.w      #$100, d5
000bea: 6100febc     bsr.w      $aa8
000bee: 6500014c     bcs.w      $d3c
000bf2: 6604         bne.b      $bf8
000bf4: 2001         move.l     d1, d0
000bf6: 6006         bra.b      $bfe
000bf8: 2001         move.l     d1, d0
000bfa: 003c0002     ori.b      #$2, ccr
000bfe: 4cdf80fe     movem.l    (a7)+, d1-d7/a7
000c02: 4e75         rts        
000c04: 48e77f80     movem.l    d1-d7/a0, -(a7)
000c08: 7a00         moveq      #$0, d5
000c0a: 6100fe9c     bsr.w      $aa8
000c0e: 6500012c     bcs.w      $d3c
000c12: 610000ca     bsr.w      $cde
000c16: 65000124     bcs.w      $d3c
000c1a: 6134         bsr.b      $c50
000c1c: 6806         bvc.b      $c24
000c1e: 8abc00000002 or.l       #$2, d5
000c24: 08050008     btst.b     #$8, d5
000c28: 6708         beq.b      $c32
000c2a: 4a80         tst.l      d0
000c2c: 6704         beq.b      $c32
000c2e: 08c0001f     bset.b     #$1f, d0
000c32: dffc00000004 adda.l     #$4, a7
000c38: 44c5         move.w     d5, ccr
000c3a: 4cdf80fc     movem.l    (a7)+, d2-d7/a7
000c3e: 4e75         rts        
000c40: 48e71f40     movem.l    d3-d7/a1, -(a7)
000c44: 7800         moveq      #$0, d4
000c46: 7a00         moveq      #$0, d5
000c48: 6106         bsr.b      $c50
000c4a: 4cdf02f8     movem.l    (a7)+, d3-d7/a1
000c4e: 4e75         rts        
000c50: 2f09         move.l     a1, -(a7)
000c52: 2c02         move.l     d2, d6
000c54: 7400         moveq      #$0, d2
000c56: 7e34         moveq      #$34, d7
000c58: 61000e9e     bsr.w      $1af8
000c5c: 7800         moveq      #$0, d4
000c5e: 61000fe4     bsr.w      $1c44
000c62: 4a86         tst.l      d6
000c64: 676e         beq.b      $cd4
000c66: 0c86fffffec0 cmpi.l     #$fffffec0, d6
000c6c: 6e0a         bgt.b      $c78
000c6e: 7000         moveq      #$0, d0
000c70: 7200         moveq      #$0, d1
000c72: 44fc0002     move.w     #$2, ccr
000c76: 6060         bra.b      $cd8
000c78: 0c8600000140 cmpi.l     #$140, d6
000c7e: 6d10         blt.b      $c90
000c80: 203c7ff00000 move.l     #$7ff00000, d0
000c86: 8084         or.l       d4, d0
000c88: 7200         moveq      #$0, d1
000c8a: 44fc0002     move.w     #$2, ccr
000c8e: 6048         bra.b      $cd8
000c90: 4a86         tst.l      d6
000c92: 6a0a         bpl.b      $c9e
000c94: 0c86fffffff0 cmpi.l     #$fffffff0, d6
000c9a: 6e26         bgt.b      $cc2
000c9c: 6008         bra.b      $ca6
000c9e: 0c8600000010 cmpi.l     #$10, d6
000ca4: 6f1c         ble.b      $cc2
000ca6: 8dfc0010     divs.w     #$10, d6
000caa: 2f06         move.l     d6, -(a7)
000cac: 43fa0162     lea.l      $e10(pc), a1
000cb0: e786         asl.l      #$3, d6
000cb2: 43f16000     lea.l      (a1, d6.w), a1
000cb6: 4cd1000c     movem.l    (a1), d2-d3
000cba: 61000924     bsr.w      $15e0
000cbe: 2c1f         move.l     (a7)+, d6
000cc0: 4846         swap       d6
000cc2: 43fa027c     lea.l      $f40(pc), a1
000cc6: e786         asl.l      #$3, d6
000cc8: 43f16000     lea.l      (a1, d6.w), a1
000ccc: 4cd1000c     movem.l    (a1), d2-d3
000cd0: 6100090e     bsr.w      $15e0
000cd4: 44fc0000     move.w     #$0, ccr
000cd8: 4cdf0200     movem.l    (a7)+, a1
000cdc: 4e75         rts        
000cde: 48e71100     movem.l    d3/d7, -(a7)
000ce2: 7400         moveq      #$0, d2
000ce4: 1618         move.b     (a0)+, d3
000ce6: 0203ffdf     andi.b     #$df, d3
000cea: 0c030045     cmpi.b     #$45, d3
000cee: 6632         bne.b      $d22
000cf0: 6100fe42     bsr.w      $b34
000cf4: 6420         bcc.b      $d16
000cf6: 0c03002d     cmpi.b     #$2d, d3
000cfa: 6606         bne.b      $d02
000cfc: 00450200     ori.w      #$200, d5
000d00: 6006         bra.b      $d08
000d02: 0c03002b     cmpi.b     #$2b, d3
000d06: 6628         bne.b      $d30
000d08: 6100fe2a     bsr.w      $b34
000d0c: 650c         bcs.b      $d1a
000d0e: e38a         lsl.l      #$1, d2
000d10: 2e02         move.l     d2, d7
000d12: e58a         lsl.l      #$2, d2
000d14: d487         add.l      d7, d2
000d16: d483         add.l      d3, d2
000d18: 60ee         bra.b      $d08
000d1a: 08050009     btst.b     #$9, d5
000d1e: 6702         beq.b      $d22
000d20: 4482         neg.l      d2
000d22: 5388         subq.l     #$1, a0
000d24: d486         add.l      d6, d2
000d26: 44fc0000     move.w     #$0, ccr
000d2a: 4cdf0088     movem.l    (a7)+, d3/d7
000d2e: 4e75         rts        
000d30: 7241         moveq      #$41, d1
000d32: 44fc0001     move.w     #$1, ccr
000d36: 4cdf0088     movem.l    (a7)+, d3/d7
000d3a: 4e75         rts        
000d3c: dffc00000004 adda.l     #$4, a7
000d42: 4cdf01fc     movem.l    (a7)+, d2-d7/a0
000d46: 4e75         rts        
000d48: 48e77000     movem.l    d1-d3, -(a7)
000d4c: 7400         moveq      #$0, d2
000d4e: 6100feb4     bsr.w      $c04
000d52: 6804         bvc.b      $d58
000d54: 08c20001     bset.b     #$1, d2
000d58: 6404         bcc.b      $d5e
000d5a: 08c20000     bset.b     #$0, d2
000d5e: 61000420     bsr.w      $1180
000d62: 6804         bvc.b      $d68
000d64: 08c20001     bset.b     #$1, d2
000d68: 44c2         move.w     d2, ccr
000d6a: 4cdf000e     movem.l    (a7)+, d1-d3
000d6e: 4e75         rts        
000d70: 00000000     ori.b      #$0, d0
000d74: 00000000     ori.b      #$0, d0
000d78: 00d1         .dc.w      $00d1
000d7a: 8e3b9b37416804237d99cc50 or.b       ([$4168119f, pc], a1.l * 2, $7d99cc50), d7
000d86: 6d57         blt.b      $ddf
000d88: 0775a391     bchg.b     d3, ([, a2.w * 2])
000d8c: d56bdc86     add.w      d2, -$237a(a3)
000d90: 0ac8         .dc.w      $0ac8
000d92: 062864ac6f42 addi.b     #$ac, $6f42(a0)
000d98: 0e1a         .dc.w      $0e1a
000d9a: ac0b         dc.w       $ac0b
000d9c: f9b9         dc.w       $f9b9
000d9e: e65b         ror.w      #$3, d3
000da0: 116d9ca79d89 move.b     -$6359(a5), -$6277(a0)
000da6: 462914c0     not.b      $14c0(a1)
000daa: 701b         moveq      #$1b, d0
000dac: d527         add.b      d2, -(a7)
000dae: b497         cmp.l      (a7), d2
000db0: 1812         move.b     (a2), d4
000db2: 3ff0         .dc.w      $3ff0
000db4: 6eea         bgt.b      $da0
000db6: 84791b6442e4 or.w       $1b6442e4.l, d2
000dbc: fb67         dc.w       $fb67
000dbe: 19601eb6     move.b     -(a0), $1eb6(a4)
000dc2: 7e9c         moveq      #$9c, d7
000dc4: 127b         .dc.w      $127b
000dc6: 6e74         bgt.b      $e3c
000dc8: 2208         move.l     a0, d1
000dca: f957         frestore   (a7)
000dcc: 4dcf         .dc.w      $4dcf
000dce: 8a70255bba08cf8c or.w       ([a0], $ba08cf8c), d5
000dd6: 979c         sub.l      d3, (a4)+
000dd8: 28aec866     move.l     -$379a(a6), (a4)
000ddc: b79e         eor.l      d3, (a6)+
000dde: 0cba2c0116805eff cmpi.l     #$2c011680, $6cdf(pc)
000de6: aeaa         dc.w       $aeaa
000de8: 2f52f8ac     move.l     (a2), -$754(a7)
000dec: 174d         .dc.w      $174d
000dee: 6123         bsr.b      $e13
000df0: 32a5         move.w     -(a5), (a1)
000df2: 0ffd         .dc.w      $0ffd
000df4: 44f4a73d35f7624f move.w     ([$35f7624f, a4], a2.w * 8), ccr
000dfc: 8a762fd8     or.w       (invalid.w), d5
000e00: 3949f623     move.w     a1, -$9dd(a4)
000e04: d5a8a732     add.l      d2, -$58ce(a0)
000e08: 3c9c         move.w     (a4)+, (a6)
000e0a: d2b297d8     add.l      (invalid.w), d1
000e0e: 89bc         .dc.w      $89bc
000e10: 3ff0         .dc.w      $3ff0
000e12: 00000000     ori.b      #$0, d0
000e16: 00004341     ori.b      #$41, d0
000e1a: c37937e08000 and.w      d1, $37e08000.l
000e20: 4693         not.l      (a3)
000e22: b8b5b505     cmp.l      ([a5], a3.w * 4), d4
000e26: 6e16         bgt.b      $e3e
000e28: 49e5         .dc.w      $49e5
000e2a: e531         roxl.b     d2, d1
000e2c: a0a1         dc.w       $a0a1
000e2e: c8734d384f03e93f and.w      $4f03e93f(a3, d4.l * 4), d4
000e36: f9f6         dc.w       $f9f6
000e38: 508a         addq.l     #$8, a2
000e3a: fcef51f0fb60 fbf.l      $51f1099c
000e40: 53dd         sls.b      (a5)+
000e42: f67562d8b3685730 fsun.b     $5730(a5, invalid.w)
000e4a: a1f5         dc.w       $a1f5
000e4c: b813         cmp.b      (a3), d4
000e4e: 24695a82     movea.l    $5a82(a1), a2
000e52: 7748         .dc.w      $7748
000e54: f9301d345dd48057 fsave      $5dd48057(a0, d1.l * 4)
000e5c: 38b51a78     move.w     $78(a5, d1.l), (a4)
000e60: 6126         bsr.b      $e88
000e62: c2d4         mulu.w     (a4), d1
000e64: 256ffcc66479 move.l     -$33a(a7), $6479(a2)
000e6a: 4514         chk.l      (a4), d2
000e6c: 5230b37b67cc0e1ef1a724ef addq.b     #$1, ([$67cc0e1e, a0], $f1a724ef)
000e78: 6b1f         bmi.b      $e99
000e7a: 25c1         .dc.w      $25c1
000e7c: 86a6         or.l       -(a6), d3
000e7e: f04f6e714a52 fdbf       d7, $58d4
000e84: dffc679a71c3 adda.l     #$679a71c3, a7
000e8a: 3234de7a     move.w     $7a(a4, a5.l), d1
000e8e: d7e4         adda.l     -(a4), a3
000e90: 7515         .dc.w      $7515
000e92: 4fdd         .dc.w      $4fdd
000e94: 7f73         .dc.w      $7f73
000e96: bf3c         .dc.w      $bf3c
000e98: 7867         moveq      #$67, d4
000e9a: a93a         dc.w       $a93a
000e9c: 2954f3ba     move.l     (a4), -$c46(a4)
000ea0: 7bba         .dc.w      $7bba
000ea2: 44df         move.w     (a7)+, ccr
000ea4: 832b8d48     or.b       d1, -$72b8(a3)
000ea8: 7f0d         .dc.w      $7f0d
000eaa: 2a1b         move.l     (a3)+, d5
000eac: e404         asr.b      #$2, d4
000eae: 8f90         or.l       d7, (a0)
000eb0: 7ff0         .dc.w      $7ff0
000eb2: 00000000     ori.b      #$0, d0
000eb6: 00013c67     ori.b      #$67, d1
000eba: 0ef5         .dc.w      $0ef5
000ebc: 4646         not.w      d6
000ebe: d497         add.l      (a7), d2
000ec0: 3c9c         move.w     (a4)+, (a6)
000ec2: d2b297d8     add.l      (invalid.w), d1
000ec6: 89bd         .dc.w      $89bd
000ec8: 3cd2         move.w     (a2), (a6)+
000eca: 03af9ee7     bclr.b     d1, -$6119(a7)
000ece: 5616         addq.b     #$3, (a6)
000ed0: 3d06         move.w     d6, -(a6)
000ed2: 849b         or.l       (a3)+, d2
000ed4: 86a1         or.l       -(a1), d3
000ed6: 2b9c3d3c25c26849 move.l     (a4)+, $25c26849(a5, d3.l * 4)
000ede: 7683         moveq      #$83, d3
000ee0: 3d719799812d move.w     ([, a1.w * 8]), -$7ed3(a6)
000ee6: ea12         roxr.b     #$5, d2
000ee8: 3da5fd7fe1796497 move.w     -(a5), ([$e1796497, a6])
000ef0: 3ddb         .dc.w      $3ddb
000ef2: 7cdf         moveq      #$df, d6
000ef4: d9d7         adda.l     (a7), a4
000ef6: bdbd         .dc.w      $bdbd
000ef8: 3e11         move.w     (a1), d7
000efa: 2e0b         move.l     a3, d7
000efc: e826         asr.b      d4, d6
000efe: d696         add.l      (a6), d3
000f00: 3e45         movea.w    d5, a7
000f02: 798e         .dc.w      $798e
000f04: e230         roxr.l     #$1, d0
000f06: 8c3b3e7a     or.b       $f82(pc, d3.l), d6
000f0a: d7f29abc     adda.l     -$44(a2, a1.l), a3
000f0e: af4a         dc.w       $af4a
000f10: 3eb0c6f7     move.w     -$9(a0, a4.w), (a7)
000f14: a0b5         dc.w       $a0b5
000f16: ed8e         lsl.l      #$6, d6
000f18: 3ee4         move.w     -(a4), (a7)+
000f1a: f8b588e3     fbf.w      $ffff97ff
000f1e: 68f1         bvc.b      $f11
000f20: 3f1a         move.w     (a2)+, -(a7)
000f22: 36e2         move.w     -(a2), (a3)+
000f24: eb1c         rol.b      #$5, d4
000f26: 432d3f50     chk.l      $3f50(a5), d1
000f2a: 624d         bhi.b      $f79
000f2c: d2f1a9fc3f847ae1 adda.w     $3f847ae1(invalid.w), a1
000f34: 47ae147b     chk.w      $147b(a6), d3
000f38: 3fb999999999999a3ff0 move.w     $99999999.l, ([, a1.l], $3ff0)
000f42: 00000000     ori.b      #$0, d0
000f46: 00004024     ori.b      #$24, d0
000f4a: 00000000     ori.b      #$0, d0
000f4e: 00004059     ori.b      #$59, d0
000f52: 00000000     ori.b      #$0, d0
000f56: 0000408f     ori.b      #$8f, d0
000f5a: 4000         negx.b     d0
000f5c: 00000000     ori.b      #$0, d0
000f60: 40c3         move.w     sr, d3
000f62: 8800         or.b       d0, d4
000f64: 00000000     ori.b      #$0, d0
000f68: 40f86a00     move.w     sr, $6a00.w
000f6c: 00000000     ori.b      #$0, d0
000f70: 412e8480     chk.l      -$7b80(a6), d0
000f74: 00000000     ori.b      #$0, d0
000f78: 4163         .dc.w      $4163
000f7a: 12d0         move.b     (a0), (a1)+
000f7c: 00000000     ori.b      #$0, d0
000f80: 4197         chk.w      (a7), d0
000f82: d784         addx.l     d4, d3
000f84: 00000000     ori.b      #$0, d0
000f88: 41cd         .dc.w      $41cd
000f8a: cd65         and.w      d6, -(a5)
000f8c: 00000000     ori.b      #$0, d0
000f90: 4202         clr.b      d2
000f92: a05f         dc.w       $a05f
000f94: 2000         move.l     d0, d0
000f96: 00004237     ori.b      #$37, d0
000f9a: 4876e800     pea.l      (a6, a6.l)
000f9e: 0000426d     ori.b      #$6d, d0
000fa2: 1a94         move.b     (a4), (a5)
000fa4: a200         dc.w       $a200
000fa6: 000042a2     ori.b      #$a2, d0
000faa: 309c         move.w     (a4)+, (a0)
000fac: e540         asl.w      #$2, d0
000fae: 000042d6     ori.b      #$d6, d0
000fb2: bcc4         cmpa.w     d4, a6
000fb4: 1e90         move.b     (a0), (a7)
000fb6: 0000430c     ori.b      #$c, d0
000fba: 6bf5         bmi.b      $fb1
000fbc: 26340000     move.l     (a4, d0.w), d3
000fc0: 4341         .dc.w      $4341
000fc2: c37937e08000 and.w      d1, $37e08000.l
000fc8: 4376         .dc.w      $4376
000fca: 3457         movea.w    (a7), a2
000fcc: 85d8         divs.w     (a0)+, d2
000fce: a000         dc.w       $a000
000fd0: 48e73800     movem.l    d2-d4, -(a7)
000fd4: 2401         move.l     d1, d2
000fd6: c142         exg.l      d0, d2
000fd8: 61000186     bsr.w      $1160
000fdc: c142         exg.l      d0, d2
000fde: 2601         move.l     d1, d3
000fe0: 6100017e     bsr.w      $1160
000fe4: 7800         moveq      #$0, d4
000fe6: 2f2f000c     move.l     $c(a7), -(a7)
000fea: 4e75         rts        
000fec: 61e2         bsr.b      $fd0
000fee: 610001da     bsr.w      $11ca
000ff2: 6048         bra.b      $103c
000ff4: 61da         bsr.b      $fd0
000ff6: 610004a8     bsr.w      $14a0
000ffa: 6040         bra.b      $103c
000ffc: 61d2         bsr.b      $fd0
000ffe: 610001c2     bsr.w      $11c2
001002: 6038         bra.b      $103c
001004: 61ca         bsr.b      $fd0
001006: 6100033e     bsr.w      $1346
00100a: 6030         bra.b      $103c
00100c: 61c2         bsr.b      $fd0
00100e: 610005d0     bsr.w      $15e0
001012: 6028         bra.b      $103c
001014: 61ba         bsr.b      $fd0
001016: 6100079e     bsr.w      $17b6
00101a: 6020         bra.b      $103c
00101c: 48e7c000     movem.l    d0-d1, -(a7)
001020: 61ae         bsr.b      $fd0
001022: 61000944     bsr.w      $1968
001026: 4cdf801c     movem.l    (a7)+, d2-d4/a7
00102a: 4cdf0003     movem.l    (a7)+, d0-d1
00102e: 4e75         rts        
001030: 4a80         tst.l      d0
001032: 6706         beq.b      $103a
001034: 0840001f     bchg.b     #$1f, d0
001038: 4a80         tst.l      d0
00103a: 4e75         rts        
00103c: 6604         bne.b      $1042
00103e: 08c40002     bset.b     #$2, d4
001042: 6a04         bpl.b      $1048
001044: 08c40003     bset.b     #$3, d4
001048: 6804         bvc.b      $104e
00104a: 08c40001     bset.b     #$1, d4
00104e: 6404         bcc.b      $1054
001050: 08c40000     bset.b     #$0, d4
001054: 6100012a     bsr.w      $1180
001058: 6604         bne.b      $105e
00105a: 08c40002     bset.b     #$2, d4
00105e: 6804         bvc.b      $1064
001060: 08c40001     bset.b     #$1, d4
001064: 44c4         move.w     d4, ccr
001066: 4cdf801c     movem.l    (a7)+, d2-d4/a7
00106a: 4e76         trapv      
00106c: 4e75         rts        
00106e: 2f01         move.l     d1, -(a7)
001070: 6100093c     bsr.w      $19ae
001074: 6100010a     bsr.w      $1180
001078: 221f         move.l     (a7)+, d1
00107a: 4e75         rts        
00107c: 2f01         move.l     d1, -(a7)
00107e: 6100095e     bsr.w      $19de
001082: 610000fc     bsr.w      $1180
001086: 221f         move.l     (a7)+, d1
001088: 4e75         rts        
00108a: 48e74000     movem.l    d1, -(a7)
00108e: 610000d0     bsr.w      $1160
001092: 61000956     bsr.w      $19ea
001096: 4cdf0002     movem.l    (a7)+, d1
00109a: 4e75         rts        
00109c: 48e74000     movem.l    d1, -(a7)
0010a0: 610000be     bsr.w      $1160
0010a4: 61000978     bsr.w      $1a1e
0010a8: 4cdf0002     movem.l    (a7)+, d1
0010ac: 4e75         rts        
0010ae: 48e73000     movem.l    d2-d3, -(a7)
0010b2: 610000ac     bsr.w      $1160
0010b6: 610009c8     bsr.w      $1a80
0010ba: 610000c4     bsr.w      $1180
0010be: c142         exg.l      d0, d2
0010c0: 2203         move.l     d3, d1
0010c2: 610000bc     bsr.w      $1180
0010c6: 2200         move.l     d0, d1
0010c8: 2002         move.l     d2, d0
0010ca: 4cdf000c     movem.l    (a7)+, d2-d3
0010ce: 4e75         rts        
0010d0: 48e74000     movem.l    d1, -(a7)
0010d4: 6100008a     bsr.w      $1160
0010d8: 610a         bsr.b      $10e4
0010da: 610000a4     bsr.w      $1180
0010de: 4cdf0002     movem.l    (a7)+, d1
0010e2: 4e75         rts        
0010e4: 48e73f00     movem.l    d2-d7, -(a7)
0010e8: 7800         moveq      #$0, d4
0010ea: 61000b08     bsr.w      $1bf4
0010ee: 0c47ffff     cmpi.w     #$ffff, d7
0010f2: 6e1c         bgt.b      $1110
0010f4: 6d12         blt.b      $1108
0010f6: 203c3ff00000 move.l     #$3ff00000, d0
0010fc: 7200         moveq      #$0, d1
0010fe: 4a84         tst.l      d4
001100: 6a58         bpl.b      $115a
001102: 08c0001f     bset.b     #$1f, d0
001106: 6052         bra.b      $115a
001108: 7000         moveq      #$0, d0
00110a: 7200         moveq      #$0, d1
00110c: 3e00         move.w     d0, d7
00110e: 604a         bra.b      $115a
001110: 7c34         moveq      #$34, d6
001112: 9c47         sub.w      d7, d6
001114: 6f28         ble.b      $113e
001116: 7600         moveq      #$0, d3
001118: 600c         bra.b      $1126
00111a: 6404         bcc.b      $1120
00111c: 863c0001     or.b       #$1, d3
001120: 5247         addq.w     #$1, d7
001122: e288         lsr.l      #$1, d0
001124: e291         roxr.l     #$1, d1
001126: 51cefff2     dbra       d6, $111a
00112a: 6412         bcc.b      $113e
00112c: 5281         addq.l     #$1, d1
00112e: 6404         bcc.b      $1134
001130: 5280         addq.l     #$1, d0
001132: 600a         bra.b      $113e
001134: 08030000     btst.b     #$0, d3
001138: 6604         bne.b      $113e
00113a: 020100fe     andi.b     #$fe, d1
00113e: 4a80         tst.l      d0
001140: 6604         bne.b      $1146
001142: 4a81         tst.l      d1
001144: 6714         beq.b      $115a
001146: b0bc00100000 cmp.l      #$100000, d0
00114c: 6408         bcc.b      $1156
00114e: e389         lsl.l      #$1, d1
001150: e390         roxl.l     #$1, d0
001152: 5347         subq.w     #$1, d7
001154: 60e8         bra.b      $113e
001156: 61000aec     bsr.w      $1c44
00115a: 4cdf00fc     movem.l    (a7)+, d2-d7
00115e: 4e75         rts        
001160: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
001164: 7800         moveq      #$0, d4
001166: 61000a70     bsr.w      $1bd8
00116a: 7200         moveq      #$0, d1
00116c: 7402         moveq      #$2, d2
00116e: e288         lsr.l      #$1, d0
001170: e291         roxr.l     #$1, d1
001172: 51cafffa     dbra       d2, $116e
001176: 61000acc     bsr.w      $1c44
00117a: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
00117e: 4e75         rts        
001180: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
001184: 7a00         moveq      #$0, d5
001186: 7800         moveq      #$0, d4
001188: 61000a6a     bsr.w      $1bf4
00118c: 7402         moveq      #$2, d2
00118e: e389         lsl.l      #$1, d1
001190: e390         roxl.l     #$1, d0
001192: 51cafffa     dbra       d2, $118e
001196: 4a81         tst.l      d1
001198: 6a1a         bpl.b      $11b4
00119a: 5280         addq.l     #$1, d0
00119c: 0c8180000000 cmpi.l     #$80000000, d1
0011a2: 6604         bne.b      $11a8
0011a4: 020000fe     andi.b     #$fe, d0
0011a8: 0c8001000000 cmpi.l     #$1000000, d0
0011ae: 6504         bcs.b      $11b4
0011b0: e288         lsr.l      #$1, d0
0011b2: 5247         addq.w     #$1, d7
0011b4: 61000a74     bsr.w      $1c2a
0011b8: 44c5         move.w     d5, ccr
0011ba: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
0011be: 4e76         trapv      
0011c0: 4e75         rts        
0011c2: 4a82         tst.l      d2
0011c4: 6704         beq.b      $11ca
0011c6: 0842001f     bchg.b     #$1f, d2
0011ca: 4a82         tst.l      d2
0011cc: 6604         bne.b      $11d2
0011ce: 4a80         tst.l      d0
0011d0: 4e75         rts        
0011d2: 4a80         tst.l      d0
0011d4: 6608         bne.b      $11de
0011d6: 2002         move.l     d2, d0
0011d8: 2203         move.l     d3, d1
0011da: 4a80         tst.l      d0
0011dc: 4e75         rts        
0011de: 48e70f00     movem.l    d4-d7, -(a7)
0011e2: 7a00         moveq      #$0, d5
0011e4: 2e00         move.l     d0, d7
0011e6: 2c02         move.l     d2, d6
0011e8: 4247         clr.w      d7
0011ea: 4847         swap       d7
0011ec: 4246         clr.w      d6
0011ee: 4846         swap       d6
0011f0: 2a3c000fffff move.l     #$fffff, d5
0011f6: c085         and.l      d5, d0
0011f8: c485         and.l      d5, d2
0011fa: 7a14         moveq      #$14, d5
0011fc: 0bc0         bset.b     d5, d0
0011fe: 0bc2         bset.b     d5, d2
001200: 7a0f         moveq      #$f, d5
001202: 0b87         bclr.b     d5, d7
001204: 6704         beq.b      $120a
001206: 4481         neg.l      d1
001208: 4080         negx.l     d0
00120a: 0b86         bclr.b     d5, d6
00120c: 6704         beq.b      $1212
00120e: 4483         neg.l      d3
001210: 4082         negx.l     d2
001212: e84e         lsr.w      #$4, d6
001214: e84f         lsr.w      #$4, d7
001216: 044603ff     subi.w     #$3ff, d6
00121a: 044703ff     subi.w     #$3ff, d7
00121e: 7a00         moveq      #$0, d5
001220: 3807         move.w     d7, d4
001222: 9846         sub.w      d6, d4
001224: 6770         beq.b      $1296
001226: 6a08         bpl.b      $1230
001228: 4444         neg.w      d4
00122a: c142         exg.l      d0, d2
00122c: c343         exg.l      d1, d3
00122e: cf46         exg.l      d7, d6
001230: 7c00         moveq      #$0, d6
001232: 0c440036     cmpi.w     #$36, d4
001236: 6314         bls.b      $124c
001238: 2800         move.l     d0, d4
00123a: 028480000000 andi.l     #$80000000, d4
001240: 6a06         bpl.b      $1248
001242: 4486         neg.l      d6
001244: 4081         negx.l     d1
001246: 4080         negx.l     d0
001248: 60000080     bra.w      $12ca
00124c: 0c440020     cmpi.w     #$20, d4
001250: 650e         bcs.b      $1260
001252: 04440020     subi.w     #$20, d4
001256: 2c03         move.l     d3, d6
001258: 2602         move.l     d2, d3
00125a: 5bc2         smi.b      d2
00125c: 4882         ext.w      d2
00125e: 48c2         ext.l      d2
001260: 0c440010     cmpi.w     #$10, d4
001264: 6510         bcs.b      $1276
001266: 04440010     subi.w     #$10, d4
00126a: 3c03         move.w     d3, d6
00126c: 3602         move.w     d2, d3
00126e: 4846         swap       d6
001270: 4843         swap       d3
001272: 4842         swap       d2
001274: 48c2         ext.l      d2
001276: 0c440008     cmpi.w     #$8, d4
00127a: 6514         bcs.b      $1290
00127c: 5144         subq.w     #$8, d4
00127e: 1c03         move.b     d3, d6
001280: 1602         move.b     d2, d3
001282: e082         asr.l      #$8, d2
001284: e09b         ror.l      #$8, d3
001286: e09e         ror.l      #$8, d6
001288: 6006         bra.b      $1290
00128a: e282         asr.l      #$1, d2
00128c: e293         roxr.l     #$1, d3
00128e: e296         roxr.l     #$1, d6
001290: 51ccfff8     dbra       d4, $128a
001294: 6002         bra.b      $1298
001296: 7c00         moveq      #$0, d6
001298: 7800         moveq      #$0, d4
00129a: d283         add.l      d3, d1
00129c: d182         addx.l     d2, d0
00129e: 6a0c         bpl.b      $12ac
0012a0: 283c80000000 move.l     #$80000000, d4
0012a6: 4486         neg.l      d6
0012a8: 4081         negx.l     d1
0012aa: 4080         negx.l     d0
0012ac: 2406         move.l     d6, d2
0012ae: 4a80         tst.l      d0
0012b0: 6616         bne.b      $12c8
0012b2: 2001         move.l     d1, d0
0012b4: 660a         bne.b      $12c0
0012b6: 2006         move.l     d6, d0
0012b8: 6714         beq.b      $12ce
0012ba: 04470040     subi.w     #$40, d7
0012be: 6006         bra.b      $12c6
0012c0: 04470020     subi.w     #$20, d7
0012c4: 2202         move.l     d2, d1
0012c6: 7400         moveq      #$0, d2
0012c8: 611c         bsr.b      $12e6
0012ca: 61000978     bsr.w      $1c44
0012ce: 4a80         tst.l      d0
0012d0: 6604         bne.b      $12d6
0012d2: 08c50002     bset.b     #$2, d5
0012d6: 6a04         bpl.b      $12dc
0012d8: 08c50003     bset.b     #$3, d5
0012dc: 44c5         move.w     d5, ccr
0012de: 4cdf00f0     movem.l    (a7)+, d4-d7
0012e2: 4e76         trapv      
0012e4: 4e75         rts        
0012e6: 4a80         tst.l      d0
0012e8: 660c         bne.b      $12f6
0012ea: 4a81         tst.l      d1
0012ec: 6608         bne.b      $12f6
0012ee: 4a82         tst.l      d2
0012f0: 6604         bne.b      $12f6
0012f2: 7e00         moveq      #$0, d7
0012f4: 4e75         rts        
0012f6: 0c8000200000 cmpi.l     #$200000, d0
0012fc: 650a         bcs.b      $1308
0012fe: e288         lsr.l      #$1, d0
001300: e291         roxr.l     #$1, d1
001302: e292         roxr.l     #$1, d2
001304: 5247         addq.w     #$1, d7
001306: 60de         bra.b      $12e6
001308: b0bc00100000 cmp.l      #$100000, d0
00130e: 640a         bcc.b      $131a
001310: e38a         lsl.l      #$1, d2
001312: e391         roxl.l     #$1, d1
001314: e390         roxl.l     #$1, d0
001316: 5347         subq.w     #$1, d7
001318: 60ee         bra.b      $1308
00131a: 4a82         tst.l      d2
00131c: 6a22         bpl.b      $1340
00131e: 5281         addq.l     #$1, d1
001320: 6412         bcc.b      $1334
001322: 5280         addq.l     #$1, d0
001324: 0c8000200000 cmpi.l     #$200000, d0
00132a: 6514         bcs.b      $1340
00132c: e288         lsr.l      #$1, d0
00132e: e291         roxr.l     #$1, d1
001330: 5247         addq.w     #$1, d7
001332: 600c         bra.b      $1340
001334: 0c8280000000 cmpi.l     #$80000000, d2
00133a: 6604         bne.b      $1340
00133c: 020100fe     andi.b     #$fe, d1
001340: 023c         .dc.w      $023c
001342: fffb         dc.w       $fffb
001344: 4e75         rts        
001346: 48e73c00     movem.l    d2-d5, -(a7)
00134a: 7400         moveq      #$0, d2
00134c: 4a80         tst.l      d0
00134e: 6b00015c     bmi.w      $14ac
001352: 2600         move.l     d0, d3
001354: 0883001f     bclr.b     #$1f, d3
001358: 4243         clr.w      d3
00135a: 4843         swap       d3
00135c: 67000274     beq.w      $15d2
001360: 2800         move.l     d0, d4
001362: 6a04         bpl.b      $1368
001364: 08c3001f     bset.b     #$1f, d3
001368: 0280000fffff andi.l     #$fffff, d0
00136e: 08c00014     bset.b     #$14, d0
001372: e84b         lsr.w      #$4, d3
001374: 044303ff     subi.w     #$3ff, d3
001378: 620000cc     bhi.w      $1446
00137c: 6764         beq.b      $13e2
00137e: 0843001f     bchg.b     #$1f, d3
001382: 4443         neg.w      d3
001384: 0c430036     cmpi.w     #$36, d3
001388: 64000248     bcc.w      $15d2
00138c: 0c430014     cmpi.w     #$14, d3
001390: 621e         bhi.b      $13b0
001392: 7400         moveq      #$0, d2
001394: 5343         subq.w     #$1, d3
001396: e288         lsr.l      #$1, d0
001398: e291         roxr.l     #$1, d1
00139a: e292         roxr.l     #$1, d2
00139c: 51cbfff8     dbra       d3, $1396
0013a0: 363c0000     move.w     #$0, d3
0013a4: 4481         neg.l      d1
0013a6: 4080         negx.l     d0
0013a8: d0bc00100000 add.l      #$100000, d0
0013ae: 6032         bra.b      $13e2
0013b0: 2401         move.l     d1, d2
0013b2: 2200         move.l     d0, d1
0013b4: 7020         moveq      #$20, d0
0013b6: 9043         sub.w      d3, d0
0013b8: 6412         bcc.b      $13cc
0013ba: 4440         neg.w      d0
0013bc: 5340         subq.w     #$1, d0
0013be: e289         lsr.l      #$1, d1
0013c0: e292         roxr.l     #$1, d2
0013c2: 51c8fffa     dbra       d0, $13be
0013c6: 6008         bra.b      $13d0
0013c8: e38a         lsl.l      #$1, d2
0013ca: e391         roxl.l     #$1, d1
0013cc: 51c8fffa     dbra       d0, $13c8
0013d0: 7000         moveq      #$0, d0
0013d2: 4482         neg.l      d2
0013d4: 4081         negx.l     d1
0013d6: 4080         negx.l     d0
0013d8: d0bc00100000 add.l      #$100000, d0
0013de: 363c0000     move.w     #$0, d3
0013e2: 08800014     bclr.b     #$14, d0
0013e6: 4a80         tst.l      d0
0013e8: 660a         bne.b      $13f4
0013ea: 4a81         tst.l      d1
0013ec: 6606         bne.b      $13f4
0013ee: 4cdf003c     movem.l    (a7)+, d2-d5
0013f2: 4e75         rts        
0013f4: e38a         lsl.l      #$1, d2
0013f6: e391         roxl.l     #$1, d1
0013f8: e390         roxl.l     #$1, d0
0013fa: 5343         subq.w     #$1, d3
0013fc: 08000014     btst.b     #$14, d0
001400: 67f2         beq.b      $13f4
001402: 4a82         tst.l      d2
001404: 6a22         bpl.b      $1428
001406: 5281         addq.l     #$1, d1
001408: 6412         bcc.b      $141c
00140a: 5280         addq.l     #$1, d0
00140c: 0c8000200000 cmpi.l     #$200000, d0
001412: 6514         bcs.b      $1428
001414: e288         lsr.l      #$1, d0
001416: e291         roxr.l     #$1, d1
001418: 5243         addq.w     #$1, d3
00141a: 600c         bra.b      $1428
00141c: 0c8280000000 cmpi.l     #$80000000, d2
001422: 6604         bne.b      $1428
001424: 020100fe     andi.b     #$fe, d1
001428: 08800014     bclr.b     #$14, d0
00142c: d67c03ff     add.w      #$3ff, d3
001430: e94b         lsl.w      #$4, d3
001432: 4843         swap       d3
001434: 4a43         tst.w      d3
001436: 6a04         bpl.b      $143c
001438: 08c3001f     bset.b     #$1f, d3
00143c: 4243         clr.w      d3
00143e: 8083         or.l       d3, d0
001440: 4cdf003c     movem.l    (a7)+, d2-d5
001444: 4e75         rts        
001446: 0c430036     cmpi.w     #$36, d3
00144a: 6400017e     bcc.w      $15ca
00144e: 7a00         moveq      #$0, d5
001450: 967c0014     sub.w      #$14, d3
001454: 6212         bhi.b      $1468
001456: 4443         neg.w      d3
001458: 07c5         bset.b     d3, d5
00145a: 4443         neg.w      d3
00145c: 9085         sub.l      d5, d0
00145e: 6614         bne.b      $1474
001460: 7200         moveq      #$0, d1
001462: 4cdf003c     movem.l    (a7)+, d2-d5
001466: 4e75         rts        
001468: 7420         moveq      #$20, d2
00146a: 9483         sub.l      d3, d2
00146c: 05c5         bset.b     d2, d5
00146e: 7400         moveq      #$0, d2
001470: 9285         sub.l      d5, d1
001472: 9182         subx.l     d2, d0
001474: 08000014     btst.b     #$14, d0
001478: 6606         bne.b      $1480
00147a: e389         lsl.l      #$1, d1
00147c: e390         roxl.l     #$1, d0
00147e: 5343         subq.w     #$1, d3
001480: d67c0413     add.w      #$413, d3
001484: 0280000fffff andi.l     #$fffff, d0
00148a: e94b         lsl.w      #$4, d3
00148c: 4a83         tst.l      d3
00148e: 6a04         bpl.b      $1494
001490: 08c3000f     bset.b     #$f, d3
001494: 4843         swap       d3
001496: 4243         clr.w      d3
001498: 8083         or.l       d3, d0
00149a: 4cdf003c     movem.l    (a7)+, d2-d5
00149e: 4e75         rts        
0014a0: 48e73c00     movem.l    d2-d5, -(a7)
0014a4: 7400         moveq      #$0, d2
0014a6: 4a80         tst.l      d0
0014a8: 6b00fea8     bmi.w      $1352
0014ac: 2600         move.l     d0, d3
0014ae: 0883001f     bclr.b     #$1f, d3
0014b2: 4243         clr.w      d3
0014b4: 4843         swap       d3
0014b6: 67000104     beq.w      $15bc
0014ba: 2800         move.l     d0, d4
0014bc: 4a80         tst.l      d0
0014be: 6a04         bpl.b      $14c4
0014c0: 08c3001f     bset.b     #$1f, d3
0014c4: 0280000fffff andi.l     #$fffff, d0
0014ca: 08c00014     bset.b     #$14, d0
0014ce: e84b         lsr.w      #$4, d3
0014d0: 044303ff     subi.w     #$3ff, d3
0014d4: 6472         bcc.b      $1548
0014d6: 4443         neg.w      d3
0014d8: 0c430036     cmpi.w     #$36, d3
0014dc: 640000d8     bcc.w      $15b6
0014e0: 0c430014     cmpi.w     #$14, d3
0014e4: 6428         bcc.b      $150e
0014e6: e6b8         ror.l      d3, d0
0014e8: e6b9         ror.l      d3, d1
0014ea: 7400         moveq      #$0, d2
0014ec: 7a00         moveq      #$0, d5
0014ee: 967c0020     sub.w      #$20, d3
0014f2: 4443         neg.w      d3
0014f4: 07c5         bset.b     d3, d5
0014f6: 5385         subq.l     #$1, d5
0014f8: 2805         move.l     d5, d4
0014fa: 4685         not.l      d5
0014fc: ca81         and.l      d1, d5
0014fe: 2405         move.l     d5, d2
001500: c284         and.l      d4, d1
001502: 2a04         move.l     d4, d5
001504: 4684         not.l      d4
001506: c880         and.l      d0, d4
001508: c085         and.l      d5, d0
00150a: 8284         or.l       d4, d1
00150c: 6024         bra.b      $1532
00150e: 2401         move.l     d1, d2
001510: 2200         move.l     d0, d1
001512: 7000         moveq      #$0, d0
001514: 04430014     subi.w     #$14, d3
001518: e6b9         ror.l      d3, d1
00151a: e6aa         lsr.l      d3, d2
00151c: 7800         moveq      #$0, d4
00151e: 967c0020     sub.w      #$20, d3
001522: 4443         neg.w      d3
001524: 07c4         bset.b     d3, d4
001526: 5384         subq.l     #$1, d4
001528: 2a04         move.l     d4, d5
00152a: 4684         not.l      d4
00152c: c881         and.l      d1, d4
00152e: c285         and.l      d5, d1
001530: 8484         or.l       d4, d2
001532: 283c3ff00000 move.l     #$3ff00000, d4
001538: 8084         or.l       d4, d0
00153a: 4a83         tst.l      d3
00153c: 6a04         bpl.b      $1542
00153e: 08c0001f     bset.b     #$1f, d0
001542: 4cdf003c     movem.l    (a7)+, d2-d5
001546: 4e75         rts        
001548: 3a03         move.w     d3, d5
00154a: 7400         moveq      #$0, d2
00154c: 0c430036     cmpi.w     #$36, d3
001550: 6478         bcc.b      $15ca
001552: 7800         moveq      #$0, d4
001554: 04430014     subi.w     #$14, d3
001558: 624c         bhi.b      $15a6
00155a: 4443         neg.w      d3
00155c: 07c4         bset.b     d3, d4
00155e: d084         add.l      d4, d0
001560: 08000015     btst.b     #$15, d0
001564: 6722         beq.b      $1588
001566: 5245         addq.w     #$1, d5
001568: e288         lsr.l      #$1, d0
00156a: e291         roxr.l     #$1, d1
00156c: 641a         bcc.b      $1588
00156e: 5281         addq.l     #$1, d1
001570: 6412         bcc.b      $1584
001572: 5280         addq.l     #$1, d0
001574: 0c8000200000 cmpi.l     #$200000, d0
00157a: 650c         bcs.b      $1588
00157c: e288         lsr.l      #$1, d0
00157e: e291         roxr.l     #$1, d1
001580: 5245         addq.w     #$1, d5
001582: 6004         bra.b      $1588
001584: 020100fe     andi.b     #$fe, d1
001588: da7c03ff     add.w      #$3ff, d5
00158c: e94d         lsl.w      #$4, d5
00158e: 4845         swap       d5
001590: 4245         clr.w      d5
001592: 4a83         tst.l      d3
001594: 6a04         bpl.b      $159a
001596: 08c5001f     bset.b     #$1f, d5
00159a: 08800014     bclr.b     #$14, d0
00159e: 8085         or.l       d5, d0
0015a0: 4cdf003c     movem.l    (a7)+, d2-d5
0015a4: 4e75         rts        
0015a6: 4443         neg.w      d3
0015a8: 06430020     addi.w     #$20, d3
0015ac: 07c4         bset.b     d3, d4
0015ae: d284         add.l      d4, d1
0015b0: 64ae         bcc.b      $1560
0015b2: 5280         addq.l     #$1, d0
0015b4: 60aa         bra.b      $1560
0015b6: 028080000000 andi.l     #$80000000, d0
0015bc: 7200         moveq      #$0, d1
0015be: 00803ff00000 ori.l      #$3ff00000, d0
0015c4: 4cdf003c     movem.l    (a7)+, d2-d5
0015c8: 4e75         rts        
0015ca: 2004         move.l     d4, d0
0015cc: 4cdf003c     movem.l    (a7)+, d2-d5
0015d0: 4e75         rts        
0015d2: 7200         moveq      #$0, d1
0015d4: 203cbff00000 move.l     #$bff00000, d0
0015da: 4cdf003c     movem.l    (a7)+, d2-d5
0015de: 4e75         rts        
0015e0: 48e73f00     movem.l    d2-d7, -(a7)
0015e4: 2800         move.l     d0, d4
0015e6: b584         eor.l      d2, d4
0015e8: 2e00         move.l     d0, d7
0015ea: 2c02         move.l     d2, d6
0015ec: 4247         clr.w      d7
0015ee: 4847         swap       d7
0015f0: 670001be     beq.w      $17b0
0015f4: 4246         clr.w      d6
0015f6: 4846         swap       d6
0015f8: 670001b6     beq.w      $17b0
0015fc: 4a84         tst.l      d4
0015fe: 6a04         bpl.b      $1604
001600: 08c7001f     bset.b     #$1f, d7
001604: 2a3c000fffff move.l     #$fffff, d5
00160a: c085         and.l      d5, d0
00160c: c485         and.l      d5, d2
00160e: 7a14         moveq      #$14, d5
001610: 0bc0         bset.b     d5, d0
001612: 0bc2         bset.b     d5, d2
001614: cc7c7ff0     and.w      #$7ff0, d6
001618: ce7c7ff0     and.w      #$7ff0, d7
00161c: 9c7c3ff0     sub.w      #$3ff0, d6
001620: de46         add.w      d6, d7
001622: 6900013a     bvs.w      $175e
001626: 6f000188     ble.w      $17b0
00162a: 0c8000100000 cmpi.l     #$100000, d0
001630: 660c         bne.b      $163e
001632: 4a81         tst.l      d1
001634: 6608         bne.b      $163e
001636: 2002         move.l     d2, d0
001638: 2203         move.l     d3, d1
00163a: 60000146     bra.w      $1782
00163e: 0c8200100000 cmpi.l     #$100000, d2
001644: 6604         bne.b      $164a
001646: 4a83         tst.l      d3
001648: 67f0         beq.b      $163a
00164a: 2f07         move.l     d7, -(a7)
00164c: 7a00         moveq      #$0, d5
00164e: 7e00         moveq      #$0, d7
001650: 3c01         move.w     d1, d6
001652: ccc3         mulu.w     d3, d6
001654: 3c05         move.w     d5, d6
001656: 4846         swap       d6
001658: 4843         swap       d3
00165a: 3801         move.w     d1, d4
00165c: c8c3         mulu.w     d3, d4
00165e: dc84         add.l      d4, d6
001660: db47         addx.w     d7, d5
001662: 4841         swap       d1
001664: 4843         swap       d3
001666: 3801         move.w     d1, d4
001668: c8c3         mulu.w     d3, d4
00166a: dc84         add.l      d4, d6
00166c: db47         addx.w     d7, d5
00166e: 3f06         move.w     d6, -(a7)
001670: 3c05         move.w     d5, d6
001672: 4846         swap       d6
001674: 7a00         moveq      #$0, d5
001676: 3800         move.w     d0, d4
001678: c8c3         mulu.w     d3, d4
00167a: dc84         add.l      d4, d6
00167c: db47         addx.w     d7, d5
00167e: 4843         swap       d3
001680: 3801         move.w     d1, d4
001682: c8c3         mulu.w     d3, d4
001684: dc84         add.l      d4, d6
001686: db47         addx.w     d7, d5
001688: 4841         swap       d1
00168a: 3801         move.w     d1, d4
00168c: c8c2         mulu.w     d2, d4
00168e: dc84         add.l      d4, d6
001690: db47         addx.w     d7, d5
001692: 3f06         move.w     d6, -(a7)
001694: 3c05         move.w     d5, d6
001696: 4846         swap       d6
001698: 7a00         moveq      #$0, d5
00169a: 4842         swap       d2
00169c: 3801         move.w     d1, d4
00169e: c8c2         mulu.w     d2, d4
0016a0: dc84         add.l      d4, d6
0016a2: db47         addx.w     d7, d5
0016a4: 4841         swap       d1
0016a6: 4842         swap       d2
0016a8: 3801         move.w     d1, d4
0016aa: c8c2         mulu.w     d2, d4
0016ac: dc84         add.l      d4, d6
0016ae: db47         addx.w     d7, d5
0016b0: 3800         move.w     d0, d4
0016b2: c8c3         mulu.w     d3, d4
0016b4: dc84         add.l      d4, d6
0016b6: db47         addx.w     d7, d5
0016b8: 4840         swap       d0
0016ba: 4843         swap       d3
0016bc: 3800         move.w     d0, d4
0016be: c8c3         mulu.w     d3, d4
0016c0: dc84         add.l      d4, d6
0016c2: db47         addx.w     d7, d5
0016c4: 3f06         move.w     d6, -(a7)
0016c6: 3c05         move.w     d5, d6
0016c8: 4846         swap       d6
0016ca: 7a00         moveq      #$0, d5
0016cc: 4843         swap       d3
0016ce: 3800         move.w     d0, d4
0016d0: c8c3         mulu.w     d3, d4
0016d2: dc84         add.l      d4, d6
0016d4: db47         addx.w     d7, d5
0016d6: 4840         swap       d0
0016d8: 3800         move.w     d0, d4
0016da: c8c2         mulu.w     d2, d4
0016dc: dc84         add.l      d4, d6
0016de: db47         addx.w     d7, d5
0016e0: 4842         swap       d2
0016e2: 3801         move.w     d1, d4
0016e4: c8c2         mulu.w     d2, d4
0016e6: dc84         add.l      d4, d6
0016e8: db47         addx.w     d7, d5
0016ea: 3f06         move.w     d6, -(a7)
0016ec: 3c05         move.w     d5, d6
0016ee: 4846         swap       d6
0016f0: 7a00         moveq      #$0, d5
0016f2: 3800         move.w     d0, d4
0016f4: c8c2         mulu.w     d2, d4
0016f6: dc84         add.l      d4, d6
0016f8: 4840         swap       d0
0016fa: 4842         swap       d2
0016fc: 3800         move.w     d0, d4
0016fe: c8c2         mulu.w     d2, d4
001700: dc84         add.l      d4, d6
001702: 4842         swap       d2
001704: c0c2         mulu.w     d2, d0
001706: 4840         swap       d0
001708: d086         add.l      d6, d0
00170a: 4cdf0086     movem.l    (a7)+, d1-d2/d7
00170e: 7604         moveq      #$4, d3
001710: 283cf0000000 move.l     #$f0000000, d4
001716: 08000019     btst.b     #$19, d0
00171a: 670e         beq.b      $172a
00171c: de7c0010     add.w      #$10, d7
001720: 6b3c         bmi.b      $175e
001722: 7605         moveq      #$5, d3
001724: 283cf8000000 move.l     #$f8000000, d4
00172a: e6b8         ror.l      d3, d0
00172c: e6b9         ror.l      d3, d1
00172e: e6aa         lsr.l      d3, d2
001730: 2a04         move.l     d4, d5
001732: ca81         and.l      d1, d5
001734: 8485         or.l       d5, d2
001736: 2a04         move.l     d4, d5
001738: 4685         not.l      d5
00173a: c285         and.l      d5, d1
00173c: c880         and.l      d0, d4
00173e: 8284         or.l       d4, d1
001740: c085         and.l      d5, d0
001742: 4a82         tst.l      d2
001744: 6a3c         bpl.b      $1782
001746: 5281         addq.l     #$1, d1
001748: 642c         bcc.b      $1776
00174a: 5280         addq.l     #$1, d0
00174c: 0c8000200000 cmpi.l     #$200000, d0
001752: 652e         bcs.b      $1782
001754: e288         lsr.l      #$1, d0
001756: e291         roxr.l     #$1, d1
001758: de7c0010     add.w      #$10, d7
00175c: 6a24         bpl.b      $1782
00175e: 7a02         moveq      #$2, d5
001760: 203c7ff00000 move.l     #$7ff00000, d0
001766: 7200         moveq      #$0, d1
001768: 4a87         tst.l      d7
00176a: 6a3a         bpl.b      $17a6
00176c: 08c50001     bset.b     #$1, d5
001770: 08c0001f     bset.b     #$1f, d0
001774: 6030         bra.b      $17a6
001776: 0c8280000000 cmpi.l     #$80000000, d2
00177c: 6604         bne.b      $1782
00177e: 020100fe     andi.b     #$fe, d1
001782: 0280000fffff andi.l     #$fffff, d0
001788: 4847         swap       d7
00178a: 4a47         tst.w      d7
00178c: 6a04         bpl.b      $1792
00178e: 08c0001f     bset.b     #$1f, d0
001792: 4247         clr.w      d7
001794: 8087         or.l       d7, d0
001796: 7a00         moveq      #$0, d5
001798: 4a80         tst.l      d0
00179a: 6604         bne.b      $17a0
00179c: 08c50002     bset.b     #$2, d5
0017a0: 6a04         bpl.b      $17a6
0017a2: 08c50003     bset.b     #$3, d5
0017a6: 44c5         move.w     d5, ccr
0017a8: 4cdf00fc     movem.l    (a7)+, d2-d7
0017ac: 4e76         trapv      
0017ae: 4e75         rts        
0017b0: 7000         moveq      #$0, d0
0017b2: 2200         move.l     d0, d1
0017b4: 60e0         bra.b      $1796
0017b6: 48e73f00     movem.l    d2-d7, -(a7)
0017ba: 2800         move.l     d0, d4
0017bc: b584         eor.l      d2, d4
0017be: 2e00         move.l     d0, d7
0017c0: 2c02         move.l     d2, d6
0017c2: 4246         clr.w      d6
0017c4: 4846         swap       d6
0017c6: 6616         bne.b      $17de
0017c8: 203c7ff00000 move.l     #$7ff00000, d0
0017ce: 7a03         moveq      #$3, d5
0017d0: 4a84         tst.l      d4
0017d2: 6a00017c     bpl.w      $1950
0017d6: 08c0001f     bset.b     #$1f, d0
0017da: 60000174     bra.w      $1950
0017de: 4247         clr.w      d7
0017e0: 4847         swap       d7
0017e2: 67000166     beq.w      $194a
0017e6: 4a84         tst.l      d4
0017e8: 6a04         bpl.b      $17ee
0017ea: 08c7001f     bset.b     #$1f, d7
0017ee: 3a3c7ff0     move.w     #$7ff0, d5
0017f2: cc45         and.w      d5, d6
0017f4: ce45         and.w      d5, d7
0017f6: 9e46         sub.w      d6, d7
0017f8: de7c3ff0     add.w      #$3ff0, d7
0017fc: 69ca         bvs.b      $17c8
0017fe: 6f00014a     ble.w      $194a
001802: 2f07         move.l     d7, -(a7)
001804: 08820014     bclr.b     #$14, d2
001808: 7a0b         moveq      #$b, d5
00180a: ebaa         lsl.l      d5, d2
00180c: 6606         bne.b      $1814
00180e: 4a83         tst.l      d3
001810: 670000fa     beq.w      $190c
001814: ebbb         rol.l      d5, d3
001816: eba8         lsl.l      d5, d0
001818: ebb9         rol.l      d5, d1
00181a: 2a3c000007ff move.l     #$7ff, d5
001820: 2801         move.l     d1, d4
001822: c885         and.l      d5, d4
001824: b981         eor.l      d4, d1
001826: 8084         or.l       d4, d0
001828: 2803         move.l     d3, d4
00182a: c885         and.l      d5, d4
00182c: b983         eor.l      d4, d3
00182e: 8484         or.l       d4, d2
001830: 7a1f         moveq      #$1f, d5
001832: 0bc0         bset.b     d5, d0
001834: 0bc2         bset.b     d5, d2
001836: 7c00         moveq      #$0, d6
001838: 7e00         moveq      #$0, d7
00183a: 2f08         move.l     a0, -(a7)
00183c: 2043         movea.l    d3, a0
00183e: 783f         moveq      #$3f, d4
001840: 4a04         tst.b      d4
001842: 6f0000cc     ble.w      $1910
001846: 761f         moveq      #$1f, d3
001848: 9288         sub.l      a0, d1
00184a: 9182         subx.l     d2, d0
00184c: 6a7a         bpl.b      $18c8
00184e: 4481         neg.l      d1
001850: 4080         negx.l     d0
001852: 4a80         tst.l      d0
001854: 6628         bne.b      $187e
001856: 983c0020     sub.b      #$20, d4
00185a: 640c         bcc.b      $1868
00185c: d83c0020     add.b      #$20, d4
001860: 09c7         bset.b     d4, d7
001862: 5387         subq.l     #$1, d7
001864: 600000aa     bra.w      $1910
001868: 09c6         bset.b     d4, d6
00186a: 5386         subq.l     #$1, d6
00186c: 2001         move.l     d1, d0
00186e: 6002         bra.b      $1872
001870: e388         lsl.l      #$1, d0
001872: 5bcbfffc     dbmi       d3, $1870
001876: 7200         moveq      #$0, d1
001878: 0403001f     subi.b     #$1f, d3
00187c: 6016         bra.b      $1894
00187e: e389         lsl.l      #$1, d1
001880: e390         roxl.l     #$1, d0
001882: 5bcbfffa     dbmi       d3, $187e
001886: 7a00         moveq      #$0, d5
001888: 04030020     subi.b     #$20, d3
00188c: 0c040020     cmpi.b     #$20, d4
001890: 640e         bcc.b      $18a0
001892: 09c7         bset.b     d4, d7
001894: d803         add.b      d3, d4
001896: 6fca         ble.b      $1862
001898: 7a00         moveq      #$0, d5
00189a: 09c5         bset.b     d4, d5
00189c: da85         add.l      d5, d5
00189e: 6014         bra.b      $18b4
0018a0: 09c6         bset.b     d4, d6
0018a2: d803         add.b      d3, d4
0018a4: 09c5         bset.b     d4, d5
0018a6: da85         add.l      d5, d5
0018a8: 0c040020     cmpi.b     #$20, d4
0018ac: 6504         bcs.b      $18b2
0018ae: 9c85         sub.l      d5, d6
0018b0: 6004         bra.b      $18b6
0018b2: 5386         subq.l     #$1, d6
0018b4: 9e85         sub.l      d5, d7
0018b6: 4a04         tst.b      d4
0018b8: 6f56         ble.b      $1910
0018ba: 761f         moveq      #$1f, d3
0018bc: 9288         sub.l      a0, d1
0018be: 9182         subx.l     d2, d0
0018c0: 4a80         tst.l      d0
0018c2: 6a8e         bpl.b      $1852
0018c4: 4481         neg.l      d1
0018c6: 4080         negx.l     d0
0018c8: 4a80         tst.l      d0
0018ca: 6622         bne.b      $18ee
0018cc: 04040020     subi.b     #$20, d4
0018d0: 6408         bcc.b      $18da
0018d2: d83c0020     add.b      #$20, d4
0018d6: 09c7         bset.b     d4, d7
0018d8: 6036         bra.b      $1910
0018da: 09c6         bset.b     d4, d6
0018dc: 2001         move.l     d1, d0
0018de: 6002         bra.b      $18e2
0018e0: e388         lsl.l      #$1, d0
0018e2: 5bcbfffc     dbmi       d3, $18e0
0018e6: 7200         moveq      #$0, d1
0018e8: 0403001f     subi.b     #$1f, d3
0018ec: 6018         bra.b      $1906
0018ee: e389         lsl.l      #$1, d1
0018f0: e390         roxl.l     #$1, d0
0018f2: 5bcbfffa     dbmi       d3, $18ee
0018f6: 04030020     subi.b     #$20, d3
0018fa: 0c040020     cmpi.b     #$20, d4
0018fe: 6404         bcc.b      $1904
001900: 09c7         bset.b     d4, d7
001902: 6002         bra.b      $1906
001904: 09c6         bset.b     d4, d6
001906: d803         add.b      d3, d4
001908: 6000ff36     bra.w      $1840
00190c: 7e00         moveq      #$0, d7
00190e: 6018         bra.b      $1928
001910: 2006         move.l     d6, d0
001912: 2207         move.l     d7, d1
001914: 7e00         moveq      #$0, d7
001916: 7400         moveq      #$0, d2
001918: 610001de     bsr.w      $1af8
00191c: 08800014     bclr.b     #$14, d0
001920: 9e7c000b     sub.w      #$b, d7
001924: e94f         lsl.w      #$4, d7
001926: 205f         movea.l    (a7)+, a0
001928: 281f         move.l     (a7)+, d4
00192a: d847         add.w      d7, d4
00192c: 0c447ff0     cmpi.w     #$7ff0, d4
001930: 6c00fe96     bge.w      $17c8
001934: 4844         swap       d4
001936: 4a44         tst.w      d4
001938: 6a06         bpl.b      $1940
00193a: 08c4001f     bset.b     #$1f, d4
00193e: 4244         clr.w      d4
001940: c0bc000fffff and.l      #$fffff, d0
001946: 8084         or.l       d4, d0
001948: 6004         bra.b      $194e
00194a: 7000         moveq      #$0, d0
00194c: 7200         moveq      #$0, d1
00194e: 7a00         moveq      #$0, d5
001950: 4a80         tst.l      d0
001952: 6604         bne.b      $1958
001954: 08c50002     bset.b     #$2, d5
001958: 6a04         bpl.b      $195e
00195a: 08c50003     bset.b     #$3, d5
00195e: 44c5         move.w     d5, ccr
001960: 4cdf00fc     movem.l    (a7)+, d2-d7
001964: 4e76         trapv      
001966: 4e75         rts        
001968: 4a82         tst.l      d2
00196a: 6b14         bmi.b      $1980
00196c: 4a80         tst.l      d0
00196e: 6a02         bpl.b      $1972
001970: 6024         bra.b      $1996
001972: b082         cmp.l      d2, d0
001974: 661e         bne.b      $1994
001976: b283         cmp.l      d3, d1
001978: 661a         bne.b      $1994
00197a: 44fc0004     move.w     #$4, ccr
00197e: 4e75         rts        
001980: 4a80         tst.l      d0
001982: 6b02         bmi.b      $1986
001984: 6016         bra.b      $199c
001986: b480         cmp.l      d0, d2
001988: 660a         bne.b      $1994
00198a: b681         cmp.l      d1, d3
00198c: 6606         bne.b      $1994
00198e: 44fc0004     move.w     #$4, ccr
001992: 4e75         rts        
001994: 6206         bhi.b      $199c
001996: 44fc0008     move.w     #$8, ccr
00199a: 4e75         rts        
00199c: 44fc0000     move.w     #$0, ccr
0019a0: 4e75         rts        
0019a2: 4a80         tst.l      d0
0019a4: 6704         beq.b      $19aa
0019a6: 0840001f     bchg.b     #$1f, d0
0019aa: 4a80         tst.l      d0
0019ac: 4e75         rts        
0019ae: 48e70d00     movem.l    d4-d5/d7, -(a7)
0019b2: 7800         moveq      #$0, d4
0019b4: 2200         move.l     d0, d1
0019b6: 6720         beq.b      $19d8
0019b8: 6a06         bpl.b      $19c0
0019ba: 08c4001f     bset.b     #$1f, d4
0019be: 4481         neg.l      d1
0019c0: 7000         moveq      #$0, d0
0019c2: 7e34         moveq      #$34, d7
0019c4: 6006         bra.b      $19cc
0019c6: e389         lsl.l      #$1, d1
0019c8: e390         roxl.l     #$1, d0
0019ca: 5347         subq.w     #$1, d7
0019cc: 0c8000100000 cmpi.l     #$100000, d0
0019d2: 65f2         bcs.b      $19c6
0019d4: 6100026e     bsr.w      $1c44
0019d8: 4cdf00b0     movem.l    (a7)+, d4-d5/d7
0019dc: 4e75         rts        
0019de: 48e70d00     movem.l    d4-d5/d7, -(a7)
0019e2: 7800         moveq      #$0, d4
0019e4: 2200         move.l     d0, d1
0019e6: 67f0         beq.b      $19d8
0019e8: 60d6         bra.b      $19c0
0019ea: 2f04         move.l     d4, -(a7)
0019ec: 2800         move.l     d0, d4
0019ee: 612e         bsr.b      $1a1e
0019f0: 6806         bvc.b      $19f8
0019f2: 183c0002     move.b     #$2, d4
0019f6: 6004         bra.b      $19fc
0019f8: 183c0000     move.b     #$0, d4
0019fc: 4a80         tst.l      d0
0019fe: 6714         beq.b      $1a14
001a00: 6a04         bpl.b      $1a06
001a02: 0844001f     bchg.b     #$1f, d4
001a06: 0804001f     btst.b     #$1f, d4
001a0a: 6708         beq.b      $1a14
001a0c: 0840001f     bchg.b     #$1f, d0
001a10: 00040002     ori.b      #$2, d4
001a14: 44c4         move.w     d4, ccr
001a16: 4cdf0010     movem.l    (a7)+, d4
001a1a: 4e76         trapv      
001a1c: 4e75         rts        
001a1e: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
001a22: 7a00         moveq      #$0, d5
001a24: 7800         moveq      #$0, d4
001a26: 610001cc     bsr.w      $1bf4
001a2a: 674a         beq.b      $1a76
001a2c: 0c8700000400 cmpi.l     #$400, d7
001a32: 6612         bne.b      $1a46
001a34: 203c7fffffff move.l     #$7fffffff, d0
001a3a: 4a84         tst.l      d4
001a3c: 6702         beq.b      $1a40
001a3e: 4680         not.l      d0
001a40: 003c0002     ori.b      #$2, ccr
001a44: 6032         bra.b      $1a78
001a46: 7434         moveq      #$34, d2
001a48: 9447         sub.w      d7, d2
001a4a: 6722         beq.b      $1a6e
001a4c: 6b0e         bmi.b      $1a5c
001a4e: e280         asr.l      #$1, d0
001a50: e291         roxr.l     #$1, d1
001a52: 5342         subq.w     #$1, d2
001a54: 66f8         bne.b      $1a4e
001a56: 4a80         tst.l      d0
001a58: 6714         beq.b      $1a6e
001a5a: 600e         bra.b      $1a6a
001a5c: 0c42ffe0     cmpi.w     #$ffe0, d2
001a60: 6f08         ble.b      $1a6a
001a62: e381         asl.l      #$1, d1
001a64: e390         roxl.l     #$1, d0
001a66: 5242         addq.w     #$1, d2
001a68: 66f8         bne.b      $1a62
001a6a: 00040002     ori.b      #$2, d4
001a6e: 2001         move.l     d1, d0
001a70: 4a84         tst.l      d4
001a72: 6702         beq.b      $1a76
001a74: 4480         neg.l      d0
001a76: 44c4         move.w     d4, ccr
001a78: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
001a7c: 4e76         trapv      
001a7e: 4e75         rts        
001a80: 48e70fc0     movem.l    d4-d7/a0-a1, -(a7)
001a84: 7800         moveq      #$0, d4
001a86: 6100016c     bsr.w      $1bf4
001a8a: 4a47         tst.w      d7
001a8c: 6a0e         bpl.b      $1a9c
001a8e: 610001b4     bsr.w      $1c44
001a92: 2400         move.l     d0, d2
001a94: 2601         move.l     d1, d3
001a96: 7000         moveq      #$0, d0
001a98: 7200         moveq      #$0, d1
001a9a: 6056         bra.b      $1af2
001a9c: 2040         movea.l    d0, a0
001a9e: 2241         movea.l    d1, a1
001aa0: 7c34         moveq      #$34, d6
001aa2: 9c47         sub.w      d7, d6
001aa4: 6e06         bgt.b      $1aac
001aa6: 7400         moveq      #$0, d2
001aa8: 2602         move.l     d2, d3
001aaa: 6042         bra.b      $1aee
001aac: 243cffffffff move.l     #$ffffffff, d2
001ab2: 0c460020     cmpi.w     #$20, d6
001ab6: 6f14         ble.b      $1acc
001ab8: 04460020     subi.w     #$20, d6
001abc: edaa         lsl.l      d6, d2
001abe: c082         and.l      d2, d0
001ac0: 7200         moveq      #$0, d1
001ac2: c188         exg.l      d0, a0
001ac4: c389         exg.l      d1, a1
001ac6: 4682         not.l      d2
001ac8: c082         and.l      d2, d0
001aca: 600e         bra.b      $1ada
001acc: edaa         lsl.l      d6, d2
001ace: c282         and.l      d2, d1
001ad0: c188         exg.l      d0, a0
001ad2: c389         exg.l      d1, a1
001ad4: 7000         moveq      #$0, d0
001ad6: 4682         not.l      d2
001ad8: c282         and.l      d2, d1
001ada: 2f07         move.l     d7, -(a7)
001adc: 7400         moveq      #$0, d2
001ade: 6118         bsr.b      $1af8
001ae0: 61000162     bsr.w      $1c44
001ae4: 2400         move.l     d0, d2
001ae6: 2601         move.l     d1, d3
001ae8: 2008         move.l     a0, d0
001aea: 2209         move.l     a1, d1
001aec: 2e1f         move.l     (a7)+, d7
001aee: 61000154     bsr.w      $1c44
001af2: 4cdf03f0     movem.l    (a7)+, d4-d7/a0-a1
001af6: 4e75         rts        
001af8: 48e71c00     movem.l    d3-d5, -(a7)
001afc: 7800         moveq      #$0, d4
001afe: 2600         move.l     d0, d3
001b00: 6704         beq.b      $1b06
001b02: 7820         moveq      #$20, d4
001b04: 6006         bra.b      $1b0c
001b06: 2601         move.l     d1, d3
001b08: 670000b4     beq.w      $1bbe
001b0c: 4843         swap       d3
001b0e: 4a43         tst.w      d3
001b10: 6706         beq.b      $1b18
001b12: d83c0010     add.b      #$10, d4
001b16: 6002         bra.b      $1b1a
001b18: 4843         swap       d3
001b1a: 0c430100     cmpi.w     #$100, d3
001b1e: 6504         bcs.b      $1b24
001b20: 7a0f         moveq      #$f, d5
001b22: 6002         bra.b      $1b26
001b24: 7a07         moveq      #$7, d5
001b26: 0b03         btst.l     d5, d3
001b28: 56cdfffc     dbne       d5, $1b26
001b2c: d805         add.b      d5, d4
001b2e: de44         add.w      d4, d7
001b30: 9e7c0034     sub.w      #$34, d7
001b34: 983c0020     sub.b      #$20, d4
001b38: 6408         bcc.b      $1b42
001b3a: d83c0020     add.b      #$20, d4
001b3e: c142         exg.l      d0, d2
001b40: c141         exg.l      d0, d1
001b42: 0980         bclr.b     d4, d0
001b44: 983c0014     sub.b      #$14, d4
001b48: 6220         bhi.b      $1b6a
001b4a: 4404         neg.b      d4
001b4c: e9a8         lsl.l      d4, d0
001b4e: e9b9         rol.l      d4, d1
001b50: e9ba         rol.l      d4, d2
001b52: 7a00         moveq      #$0, d5
001b54: 09c5         bset.b     d4, d5
001b56: 5385         subq.l     #$1, d5
001b58: 2805         move.l     d5, d4
001b5a: ca81         and.l      d1, d5
001b5c: 8085         or.l       d5, d0
001b5e: 2a04         move.l     d4, d5
001b60: 4685         not.l      d5
001b62: c285         and.l      d5, d1
001b64: c882         and.l      d2, d4
001b66: 8284         or.l       d4, d1
001b68: 6022         bra.b      $1b8c
001b6a: e8b9         ror.l      d4, d1
001b6c: e8b8         ror.l      d4, d0
001b6e: 983c0020     sub.b      #$20, d4
001b72: 4404         neg.b      d4
001b74: 7a00         moveq      #$0, d5
001b76: 09c5         bset.b     d4, d5
001b78: 5385         subq.l     #$1, d5
001b7a: 4685         not.l      d5
001b7c: 2805         move.l     d5, d4
001b7e: 4684         not.l      d4
001b80: ca80         and.l      d0, d5
001b82: c084         and.l      d4, d0
001b84: 2401         move.l     d1, d2
001b86: c284         and.l      d4, d1
001b88: b382         eor.l      d1, d2
001b8a: 8285         or.l       d5, d1
001b8c: 08c00014     bset.b     #$14, d0
001b90: 4a82         tst.l      d2
001b92: 6a22         bpl.b      $1bb6
001b94: 5281         addq.l     #$1, d1
001b96: 6412         bcc.b      $1baa
001b98: 5280         addq.l     #$1, d0
001b9a: 0c8000200000 cmpi.l     #$200000, d0
001ba0: 6514         bcs.b      $1bb6
001ba2: e288         lsr.l      #$1, d0
001ba4: e291         roxr.l     #$1, d1
001ba6: 5247         addq.w     #$1, d7
001ba8: 600c         bra.b      $1bb6
001baa: 0c8280000000 cmpi.l     #$80000000, d2
001bb0: 6604         bne.b      $1bb6
001bb2: 020100fe     andi.b     #$fe, d1
001bb6: 7a01         moveq      #$1, d5
001bb8: 4cdf0038     movem.l    (a7)+, d3-d5
001bbc: 4e75         rts        
001bbe: 4a82         tst.l      d2
001bc0: 670e         beq.b      $1bd0
001bc2: c142         exg.l      d0, d2
001bc4: 2600         move.l     d0, d3
001bc6: 9e7c0040     sub.w      #$40, d7
001bca: 7820         moveq      #$20, d4
001bcc: 6000ff3e     bra.w      $1b0c
001bd0: 7e00         moveq      #$0, d7
001bd2: 4cdf0038     movem.l    (a7)+, d3-d5
001bd6: 4e75         rts        
001bd8: 2e00         move.l     d0, d7
001bda: e38f         lsl.l      #$1, d7
001bdc: 6740         beq.b      $1c1e
001bde: 4847         swap       d7
001be0: e04f         lsr.w      #$8, d7
001be2: 0447007f     subi.w     #$7f, d7
001be6: 48c7         ext.l      d7
001be8: 0280807fffff andi.l     #$807fffff, d0
001bee: 08c00017     bset.b     #$17, d0
001bf2: 601a         bra.b      $1c0e
001bf4: 2e00         move.l     d0, d7
001bf6: e38f         lsl.l      #$1, d7
001bf8: 6724         beq.b      $1c1e
001bfa: 4847         swap       d7
001bfc: ea4f         lsr.w      #$5, d7
001bfe: 044703ff     subi.w     #$3ff, d7
001c02: 48c7         ext.l      d7
001c04: 0280800fffff andi.l     #$800fffff, d0
001c0a: 08c00014     bset.b     #$14, d0
001c0e: 0880001f     bclr.b     #$1f, d0
001c12: 6710         beq.b      $1c24
001c14: 0844001f     bchg.b     #$1f, d4
001c18: 44fc0008     move.w     #$8, ccr
001c1c: 4e75         rts        
001c1e: 44fc0004     move.w     #$4, ccr
001c22: 4e75         rts        
001c24: 44fc0000     move.w     #$0, ccr
001c28: 4e75         rts        
001c2a: 48e73000     movem.l    d2-d3, -(a7)
001c2e: 08800017     bclr.b     #$17, d0
001c32: 6752         beq.b      $1c86
001c34: 0647007f     addi.w     #$7f, d7
001c38: 243c7f8000ff move.l     #$7f8000ff, d2
001c3e: 163c0007     move.b     #$7, d3
001c42: 6018         bra.b      $1c5c
001c44: 48e73000     movem.l    d2-d3, -(a7)
001c48: 08800014     bclr.b     #$14, d0
001c4c: 6738         beq.b      $1c86
001c4e: 064703ff     addi.w     #$3ff, d7
001c52: 243c7ff007ff move.l     #$7ff007ff, d2
001c58: 163c0004     move.b     #$4, d3
001c5c: 4a47         tst.w      d7
001c5e: 6e08         bgt.b      $1c68
001c60: 7000         moveq      #$0, d0
001c62: 00050004     ori.b      #$4, d5
001c66: 600c         bra.b      $1c74
001c68: be42         cmp.w      d2, d7
001c6a: 6510         bcs.b      $1c7c
001c6c: 2002         move.l     d2, d0
001c6e: 02400000     andi.w     #$0, d0
001c72: 8084         or.l       d4, d0
001c74: 7200         moveq      #$0, d1
001c76: 00050002     ori.b      #$2, d5
001c7a: 600a         bra.b      $1c86
001c7c: e76f         lsl.w      d3, d7
001c7e: 4847         swap       d7
001c80: 4247         clr.w      d7
001c82: 8087         or.l       d7, d0
001c84: 8084         or.l       d4, d0
001c86: 4cdf000c     movem.l    (a7)+, d2-d3
001c8a: 4e75         rts        
001c8c: 48e73c00     movem.l    d2-d5, -(a7)
001c90: 7a00         moveq      #$0, d5
001c92: 4a80         tst.l      d0
001c94: 6a04         bpl.b      $1c9a
001c96: 7a08         moveq      #$8, d5
001c98: 4480         neg.l      d0
001c9a: 4a81         tst.l      d1
001c9c: 6a06         bpl.b      $1ca4
001c9e: 08450003     bchg.b     #$3, d5
001ca2: 4481         neg.l      d1
001ca4: 612c         bsr.b      $1cd2
001ca6: 4a85         tst.l      d5
001ca8: 6606         bne.b      $1cb0
001caa: 4a80         tst.l      d0
001cac: 6b10         bmi.b      $1cbe
001cae: 600a         bra.b      $1cba
001cb0: 4480         neg.l      d0
001cb2: 6006         bra.b      $1cba
001cb4: 48e73c00     movem.l    d2-d5, -(a7)
001cb8: 6118         bsr.b      $1cd2
001cba: 4a81         tst.l      d1
001cbc: 670c         beq.b      $1cca
001cbe: 4a80         tst.l      d0
001cc0: 003c0002     ori.b      #$2, ccr
001cc4: 4cdf003c     movem.l    (a7)+, d2-d5
001cc8: 4e75         rts        
001cca: 4a80         tst.l      d0
001ccc: 4cdf003c     movem.l    (a7)+, d2-d5
001cd0: 4e75         rts        
001cd2: 2400         move.l     d0, d2
001cd4: 2600         move.l     d0, d3
001cd6: 4843         swap       d3
001cd8: 2801         move.l     d1, d4
001cda: 4844         swap       d4
001cdc: c0c1         mulu.w     d1, d0
001cde: c2c3         mulu.w     d3, d1
001ce0: c4c4         mulu.w     d4, d2
001ce2: c6c4         mulu.w     d4, d3
001ce4: 4840         swap       d0
001ce6: d041         add.w      d1, d0
001ce8: 4284         clr.l      d4
001cea: d784         addx.l     d4, d3
001cec: d042         add.w      d2, d0
001cee: d784         addx.l     d4, d3
001cf0: 4840         swap       d0
001cf2: 4241         clr.w      d1
001cf4: 4841         swap       d1
001cf6: 4242         clr.w      d2
001cf8: 4842         swap       d2
001cfa: d282         add.l      d2, d1
001cfc: d283         add.l      d3, d1
001cfe: 4e75         rts        
001d00: 48e71c00     movem.l    d3-d5, -(a7)
001d04: 4a81         tst.l      d1
001d06: 660e         bne.b      $1d16
001d08: 7000         moveq      #$0, d0
001d0a: 4680         not.l      d0
001d0c: 44fc0002     move.w     #$2, ccr
001d10: 4cdf0038     movem.l    (a7)+, d3-d5
001d14: 4e75         rts        
001d16: 6150         bsr.b      $1d68
001d18: 4a80         tst.l      d0
001d1a: 4cdf0038     movem.l    (a7)+, d3-d5
001d1e: 4e75         rts        
001d20: 48e71c00     movem.l    d3-d5, -(a7)
001d24: 4a81         tst.l      d1
001d26: 6618         bne.b      $1d40
001d28: 223c7fffffff move.l     #$7fffffff, d1
001d2e: 4a80         tst.l      d0
001d30: 6a02         bpl.b      $1d34
001d32: 4681         not.l      d1
001d34: 2001         move.l     d1, d0
001d36: 44fc0002     move.w     #$2, ccr
001d3a: 4cdf0038     movem.l    (a7)+, d3-d5
001d3e: 4e75         rts        
001d40: 6a0e         bpl.b      $1d50
001d42: 4481         neg.l      d1
001d44: 6114         bsr.b      $1d5a
001d46: 4480         neg.l      d0
001d48: 4a80         tst.l      d0
001d4a: 4cdf0038     movem.l    (a7)+, d3-d5
001d4e: 4e75         rts        
001d50: 6108         bsr.b      $1d5a
001d52: 4a80         tst.l      d0
001d54: 4cdf0038     movem.l    (a7)+, d3-d5
001d58: 4e75         rts        
001d5a: 4a80         tst.l      d0
001d5c: 6a0a         bpl.b      $1d68
001d5e: 4480         neg.l      d0
001d60: 6106         bsr.b      $1d68
001d62: 4480         neg.l      d0
001d64: 4481         neg.l      d1
001d66: 4e75         rts        
001d68: 2601         move.l     d1, d3
001d6a: 5383         subq.l     #$1, d3
001d6c: 6720         beq.b      $1d8e
001d6e: 2803         move.l     d3, d4
001d70: c881         and.l      d1, d4
001d72: 6614         bne.b      $1d88
001d74: e289         lsr.l      #$1, d1
001d76: 78ff         moveq      #$ff, d4
001d78: e289         lsr.l      #$1, d1
001d7a: 55ccfffc     dbcs       d4, $1d78
001d7e: 4484         neg.l      d4
001d80: 2200         move.l     d0, d1
001d82: e8a8         lsr.l      d4, d0
001d84: c283         and.l      d3, d1
001d86: 4e75         rts        
001d88: b280         cmp.l      d0, d1
001d8a: 6606         bne.b      $1d92
001d8c: 7001         moveq      #$1, d0
001d8e: 7200         moveq      #$0, d1
001d90: 4e75         rts        
001d92: 6506         bcs.b      $1d9a
001d94: 2200         move.l     d0, d1
001d96: 7000         moveq      #$0, d0
001d98: 4e75         rts        
001d9a: 0c8100010000 cmpi.l     #$10000, d1
001da0: 653e         bcs.b      $1de0
001da2: 2601         move.l     d1, d3
001da4: 4243         clr.w      d3
001da6: 4843         swap       d3
001da8: 5283         addq.l     #$1, d3
001daa: 2800         move.l     d0, d4
001dac: 2a01         move.l     d1, d5
001dae: 2203         move.l     d3, d1
001db0: 612e         bsr.b      $1de0
001db2: 2205         move.l     d5, d1
001db4: 82c3         divu.w     d3, d1
001db6: 80c1         divu.w     d1, d0
001db8: 02800000ffff andi.l     #$ffff, d0
001dbe: 2205         move.l     d5, d1
001dc0: 2605         move.l     d5, d3
001dc2: 4843         swap       d3
001dc4: c2c0         mulu.w     d0, d1
001dc6: c6c0         mulu.w     d0, d3
001dc8: 4843         swap       d3
001dca: d283         add.l      d3, d1
001dcc: 9284         sub.l      d4, d1
001dce: 620a         bhi.b      $1dda
001dd0: 4481         neg.l      d1
001dd2: ba81         cmp.l      d1, d5
001dd4: 6208         bhi.b      $1dde
001dd6: 5280         addq.l     #$1, d0
001dd8: 60e4         bra.b      $1dbe
001dda: 5380         subq.l     #$1, d0
001ddc: 60e0         bra.b      $1dbe
001dde: 4e75         rts        
001de0: 48a79000     movem.w    d0/d3, -(a7)
001de4: 4240         clr.w      d0
001de6: 4840         swap       d0
001de8: 80c1         divu.w     d1, d0
001dea: 3600         move.w     d0, d3
001dec: 301f         move.w     (a7)+, d0
001dee: 80c1         divu.w     d1, d0
001df0: 4840         swap       d0
001df2: 7200         moveq      #$0, d1
001df4: 3200         move.w     d0, d1
001df6: 3003         move.w     d3, d0
001df8: 4840         swap       d0
001dfa: 361f         move.w     (a7)+, d3
001dfc: 4e75         rts        
001dfe: 6100ff20     bsr.w      $1d20
001e02: 6004         bra.b      $1e08
001e04: 6100fefa     bsr.w      $1d00
001e08: 6808         bvc.b      $1e12
001e0a: 7000         moveq      #$0, d0
001e0c: 44fc0002     move.w     #$2, ccr
001e10: 4e75         rts        
001e12: 2001         move.l     d1, d0
001e14: 4a80         tst.l      d0
001e16: 4e75         rts        
001e18: 0882001f     bclr.b     #$1f, d2
001e1c: 4842         swap       d2
001e1e: e84a         lsr.w      #$4, d2
001e20: 947c0400     sub.w      #$400, d2
001e24: 4442         neg.w      d2
001e26: b47c0004     cmp.w      #$4, d2
001e2a: 6204         bhi.b      $1e30
001e2c: 7404         moveq      #$4, d2
001e2e: 6008         bra.b      $1e38
001e30: b47c0032     cmp.w      #$32, d2
001e34: 6302         bls.b      $1e38
001e36: 7432         moveq      #$32, d2
001e38: 76ff         moveq      #$ff, d3
001e3a: b47c0014     cmp.w      #$14, d2
001e3e: 6210         bhi.b      $1e50
001e40: 947c0014     sub.w      #$14, d2
001e44: 6704         beq.b      $1e4a
001e46: 4442         neg.w      d2
001e48: e5ab         lsl.l      d2, d3
001e4a: 2403         move.l     d3, d2
001e4c: 7600         moveq      #$0, d3
001e4e: 600a         bra.b      $1e5a
001e50: 947c0034     sub.w      #$34, d2
001e54: 4442         neg.w      d2
001e56: e5ab         lsl.l      d2, d3
001e58: 74ff         moveq      #$ff, d2
001e5a: 4e75         rts        
001e5c: 6d61         blt.b      $1ebf
001e5e: 7468         moveq      #$68, d2
001e60: 0000         ori.b      #$aa, d0
