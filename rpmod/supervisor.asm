000054: 2d468010     move.l     d6, -$7ff0(a6)
000058: 2d468014     move.l     d6, -$7fec(a6)
00005c: 3d438018     move.w     d3, -$7fe8(a6)
000060: 082b00050014 btst.b     #$5, $14(a3)
000066: 670e         beq.b      $76
000068: 2d4c801a     move.l     a4, -$7fe6(a6)
00006c: 6608         bne.b      $76
00006e: 2d7900000000801a move.l     $0.l, -$7fe6(a6)
000076: 4a85         tst.l      d5
000078: 671e         beq.b      $98
00007a: 08050000     btst.b     #$0, d5
00007e: 6614         bne.b      $94
000080: 41f55800     lea.l      (a5, d5.l), a0
000084: 4a68fffe     tst.w      -$2(a0)
000088: 660a         bne.b      $94
00008a: 5988         subq.l     #$4, a0
00008c: 49e8fffc     lea.l      -$4(a0), a4
000090: 7001         moveq      #$1, d0
000092: 6026         bra.b      $ba
000094: 423558ff     clr.b      -$1(a5, d5.l)
000098: 204d         movea.l    a5, a0
00009a: d7eb000c     adda.l     $c(a3), a3
00009e: 42a7         clr.l      -(a7)
0000a0: 2f0b         move.l     a3, -(a7)
0000a2: 7401         moveq      #$1, d2
0000a4: 203c00005544 move.l     #$5544, d0
0000aa: 4ebb0800     jsr        $ac(pc,d0.l)
0000ae: 6076         bra.b      $126
0000b0: 43e80004     lea.l      $4(a0), a1
0000b4: 2d4984e8     move.l     a1, -$7b18(a6)
0000b8: 7400         moveq      #$0, d2
0000ba: 2260         movea.l    -(a0), a1
0000bc: 2e09         move.l     a1, d7
0000be: 670c         beq.b      $cc
0000c0: d3cd         adda.l     a5, a1
0000c2: 4229ffff     clr.b      -$1(a1)
0000c6: 2089         move.l     a1, (a0)
0000c8: 5282         addq.l     #$1, d2
0000ca: 60ee         bra.b      $ba
0000cc: 5380         subq.l     #$1, d0
0000ce: 67e0         beq.b      $b0
0000d0: 4a82         tst.l      d2
0000d2: 6610         bne.b      $e4
0000d4: 4a68fffe     tst.w      -$2(a0)
0000d8: 670a         beq.b      $e4
0000da: 4228ffff     clr.b      -$1(a0)
0000de: 2448         movea.l    a0, a2
0000e0: 5888         addq.l     #$4, a0
0000e2: 6006         bra.b      $ea
0000e4: 208d         move.l     a5, (a0)
0000e6: 2448         movea.l    a0, a2
0000e8: 5282         addq.l     #$1, d2
0000ea: 5282         addq.l     #$1, d2
0000ec: 4a94         tst.l      (a4)
0000ee: 6718         beq.b      $108
0000f0: 2854         movea.l    (a4), a4
0000f2: 4a1c         tst.b      (a4)+
0000f4: 66fc         bne.b      $f2
0000f6: b5cc         cmpa.l     a4, a2
0000f8: 631e         bls.b      $118
0000fa: 0c1c00fc     cmpi.b     #$fc, (a4)+
0000fe: 6618         bne.b      $118
000100: 528c         addq.l     #$1, a4
000102: 2654         movea.l    (a4), a3
000104: d7cd         adda.l     a5, a3
000106: 6014         bra.b      $11c
000108: 0c2d00fc0002 cmpi.b     #$fc, $2(a5)
00010e: 6608         bne.b      $118
000110: 266d0004     movea.l    $4(a5), a3
000114: d7cd         adda.l     a5, a3
000116: 6004         bra.b      $11c
000118: d7eb000c     adda.l     $c(a3), a3
00011c: 210b         move.l     a3, -(a0)
00011e: 2f08         move.l     a0, -(a7)
000120: 4228ffff     clr.b      -$1(a0)
000124: 2f02         move.l     d2, -(a7)
000126: 207c00004e7a movea.l    #$4e7a, a0
00012c: 4ebb8800     jsr        $12e(pc,a0.l)
000130: 6500011c     bcs.w      $24e
000134: 6120         bsr.b      $156
000136: 4cdf0003     movem.l    (a7)+, d0-d1
00013a: 9bcd         suba.l     a5, a5
00013c: 2f2e84e8     move.l     -$7b18(a6), -(a7)
000140: 207c000006da movea.l    #$6da, a0
000146: 4ebb8800     jsr        $148(pc,a0.l)
00014a: 7000         moveq      #$0, d0
00014c: 207c00005a4e movea.l    #$5a4e, a0
000152: 4ebb8800     jsr        $154(pc,a0.l)
000156: 207cffffb26e movea.l    #$ffffb26e, a0
00015c: d1ce         adda.l     a6, a0
00015e: 2d488004     move.l     a0, -$7ffc(a6)
000162: 2d4f8000     move.l     a7, -$8000(a6)
000166: 2d4f8008     move.l     a7, -$7ff8(a6)
00016a: 203cffffff04 move.l     #$ffffff04, d0
000170: d08f         add.l      a7, d0
000172: b0ae8008     cmp.l      -$7ff8(a6), d0
000176: 6502         bcs.b      $17a
000178: 4e75         rts        
00017a: b0ae8004     cmp.l      -$7ffc(a6), d0
00017e: 6506         bcs.b      $186
000180: 2d408008     move.l     d0, -$7ff8(a6)
000184: 4e75         rts        
000186: 41fa0070     lea.l      $1f8(pc), a0
00018a: 6110         bsr.b      $19c
00018c: 2f3c00000101 move.l     #$101, -(a7)
000192: 207c00005a1e movea.l    #$5a1e, a0
000198: 4ebb8800     jsr        $19a(pc,a0.l)
00019c: 3f01         move.w     d1, -(a7)
00019e: 7264         moveq      #$64, d1
0001a0: 7002         moveq      #$2, d0
0001a2: 4e40         trap       #$0
0001a4: 008c         .dc.w      $008c
0001a6: 321f         move.w     (a7)+, d1
0001a8: 4e75         rts        
0001aa: 202e8000     move.l     -$8000(a6), d0
0001ae: 90ae8008     sub.l      -$7ff8(a6), d0
0001b2: 4e75         rts        
0001b4: 202e8008     move.l     -$7ff8(a6), d0
0001b8: 90ae8004     sub.l      -$7ffc(a6), d0
0001bc: 4e75         rts        
0001be: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
0001c2: 302f001e     move.w     $1e(a7), d0
0001c6: 04400080     subi.w     #$80, d0
0001ca: e440         asr.w      #$2, d0
0001cc: 0c40000f     cmpi.w     #$f, d0
0001d0: 660c         bne.b      $1de
0001d2: 41fa006b     lea.l      $23f(pc), a0
0001d6: 7200         moveq      #$0, d1
0001d8: 4e40         trap       #$0
0001da: 0021640c     ori.b      #$c, -(a1)
0001de: 227c000059dc movea.l    #$59dc, a1
0001e4: 4ebb9800     jsr        $1e6(pc,a1.l)
0001e8: 6564         bcs.b      $24e
0001ea: 4cdf0f03     movem.l    (a7)+, d0-d1/a0-a3
0001ee: 508f         addq.l     #$8, a7
0001f0: 5997         subq.l     #$4, (a7)
0001f2: 4e75         rts        
0001f4: 4afb         .dc.w      $4afb
0001f6: 00502a2a     ori.w      #$2a2a, (a0)
0001fa: 2a2a2053     move.l     $2053(a2), d5
0001fe: 7461         moveq      #$61, d2
000200: 636b         bls.b      $26d
000202: 204f         movea.l    a7, a0
000204: 7665         moveq      #$65, d3
000206: 7266         moveq      #$66, d1
000208: 6c6f         bge.b      $279
00020a: 7720         .dc.w      $7720
00020c: 2a2a2a2a     move.l     $2a2a(a2), d5
000210: 0d00         btst.l     d6, d0
000212: 2a2a2a2a     move.l     $2a2a(a2), d5
000216: 2043         movea.l    d3, a0
000218: 616e         bsr.b      $288
00021a: 277420696e73 move.l     $69(a4, d2.w), $6e73(a3)
000220: 7461         moveq      #$61, d2
000222: 6c6c         bge.b      $290
000224: 20747261     movea.l    $61(a4, d7.w), a0
000228: 7020         moveq      #$20, d0
00022a: 6861         bvc.b      $28d
00022c: 6e64         bgt.b      $292
00022e: 6c65         bge.b      $295
000230: 7220         moveq      #$20, d1
000232: 2a2a2a2a     move.l     $2a2a(a2), d5
000236: 0d00         btst.l     d6, d0
000238: 202a2a2a     move.l     $2a2a(a2), d0
00023c: 2a20         move.l     -(a0), d5
00023e: 006d61746800 ori.w      #$6174, $6800(a5)
000244: 00000000     ori.b      #$0, d0
000248: 223c00000040 move.l     #$40, d1
00024e: 2f08         move.l     a0, -(a7)
000250: 41faffc0     lea.l      $212(pc), a0
000254: 6100ff46     bsr.w      $19c
000258: 227cffff8160 movea.l    #$ffff8160, a1
00025e: d3ce         adda.l     a6, a1
000260: 41faffd6     lea.l      $238(pc), a0
000264: 6128         bsr.b      $28e
000266: 205f         movea.l    (a7)+, a0
000268: 5389         subq.l     #$1, a1
00026a: 6122         bsr.b      $28e
00026c: 41faffca     lea.l      $238(pc), a0
000270: 5389         subq.l     #$1, a1
000272: 611a         bsr.b      $28e
000274: 137c000dffff move.b     #$d, -$1(a1)
00027a: 207cffff8160 movea.l    #$ffff8160, a0
000280: d1ce         adda.l     a6, a0
000282: 6100ff18     bsr.w      $19c
000286: 4e40         trap       #$0
000288: 00064e40     ori.b      #$40, d6
00028c: 000612d8     ori.b      #$d8, d6
000290: 66fc         bne.b      $28e
000292: 4e75         rts        
000294: 4e550000     link.w     a5, #$0
000298: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00029c: 45ee84ee     lea.l      -$7b12(a6), a2
0002a0: 780e         moveq      #$e, d4
0002a2: 600c         bra.b      $2b0
0002a4: 221a         move.l     (a2)+, d1
0002a6: 41fa08cf     lea.l      $b77(pc), a0
0002aa: 2008         move.l     a0, d0
0002ac: 61004dcc     bsr.w      $507a
0002b0: 2004         move.l     d4, d0
0002b2: 5384         subq.l     #$1, d4
0002b4: 4a80         tst.l      d0
0002b6: 66ec         bne.b      $2a4
0002b8: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0002be: 4e5d         unlk       a5
0002c0: 4e75         rts        
0002c2: 4e550000     link.w     a5, #$0
0002c6: 48e78080     movem.l    d0/a0, -(a7)
0002ca: 202e8526     move.l     -$7ada(a6), d0
0002ce: 52ae8526     addq.l     #$1, -$7ada(a6)
0002d2: 41ee801e     lea.l      -$7fe2(a6), a0
0002d6: 31af00020a00 move.w     $2(a7), (a0, d0.l * 2)
0002dc: 7064         moveq      #$64, d0
0002de: b0ae8526     cmp.l      -$7ada(a6), d0
0002e2: 6e04         bgt.b      $2e8
0002e4: 42ae8526     clr.l      -$7ada(a6)
0002e8: 202e8526     move.l     -$7ada(a6), d0
0002ec: b0ae852a     cmp.l      -$7ad6(a6), d0
0002f0: 4ced0100fffc movem.l    -$4(a5), a0
0002f6: 4e5d         unlk       a5
0002f8: 4e75         rts        
0002fa: 4e550000     link.w     a5, #$0
0002fe: 48e7c080     movem.l    d0-d1/a0, -(a7)
000302: 598f         subq.l     #$4, a7
000304: 70ff         moveq      #$ff, d0
000306: 2e80         move.l     d0, (a7)
000308: 610026ca     bsr.w      $29d4
00030c: 202e8526     move.l     -$7ada(a6), d0
000310: b0ae852a     cmp.l      -$7ad6(a6), d0
000314: 6720         beq.b      $336
000316: 202e852a     move.l     -$7ad6(a6), d0
00031a: 52ae852a     addq.l     #$1, -$7ad6(a6)
00031e: 41ee801e     lea.l      -$7fe2(a6), a0
000322: 7200         moveq      #$0, d1
000324: 32300a00     move.w     (a0, d0.l * 2), d1
000328: 2e81         move.l     d1, (a7)
00032a: 7064         moveq      #$64, d0
00032c: b0ae852a     cmp.l      -$7ad6(a6), d0
000330: 6e04         bgt.b      $336
000332: 42ae852a     clr.l      -$7ad6(a6)
000336: 610026c8     bsr.w      $2a00
00033a: 2017         move.l     (a7), d0
00033c: 588f         addq.l     #$4, a7
00033e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000344: 4e5d         unlk       a5
000346: 4e75         rts        
000348: 4e550000     link.w     a5, #$0
00034c: 48e78000     movem.l    d0, -(a7)
000350: 6006         bra.b      $358
000352: 7000         moveq      #$0, d0
000354: 61005528     bsr.w      $587e
000358: 6100267a     bsr.w      $29d4
00035c: 202e8526     move.l     -$7ada(a6), d0
000360: b0ae852a     cmp.l      -$7ad6(a6), d0
000364: 67ec         beq.b      $352
000366: 61002698     bsr.w      $2a00
00036a: 4e5d         unlk       a5
00036c: 4e75         rts        
00036e: 4e550000     link.w     a5, #$0
000372: 48e78fa0     movem.l    d0/d4-d7/a0/a2, -(a7)
000376: 2800         move.l     d0, d4
000378: 5d8f         subq.l     #$6, a7
00037a: 7a00         moveq      #$0, d5
00037c: 7c01         moveq      #$1, d6
00037e: 7e00         moveq      #$0, d7
000380: 42af0002     clr.l      $2(a7)
000384: 3ebc0001     move.w     #$1, (a7)
000388: 45ee855c     lea.l      -$7aa4(a6), a2
00038c: 6044         bra.b      $3d2
00038e: b892         cmp.l      (a2), d4
000390: 6638         bne.b      $3ca
000392: 7a01         moveq      #$1, d5
000394: 4aaa0004     tst.l      $4(a2)
000398: 670c         beq.b      $3a6
00039a: 206a0004     movea.l    $4(a2), a0
00039e: 4e90         jsr        (a0)
0003a0: 2f400002     move.l     d0, $2(a7)
0003a4: 7c00         moveq      #$0, d6
0003a6: 202f0002     move.l     $2(a7), d0
0003aa: b0aa0008     cmp.l      $8(a2), d0
0003ae: 6704         beq.b      $3b4
0003b0: 4a06         tst.b      d6
0003b2: 6718         beq.b      $3cc
0003b4: 0c6a0001000c cmpi.w     #$1, $c(a2)
0003ba: 6704         beq.b      $3c0
0003bc: 7001         moveq      #$1, d0
0003be: 6002         bra.b      $3c2
0003c0: 7000         moveq      #$0, d0
0003c2: 1e00         move.b     d0, d7
0003c4: 3eaa000c     move.w     $c(a2), (a7)
0003c8: 6002         bra.b      $3cc
0003ca: 1e05         move.b     d5, d7
0003cc: d5fc0000000e adda.l     #$e, a2
0003d2: 4a92         tst.l      (a2)
0003d4: 6704         beq.b      $3da
0003d6: 4a07         tst.b      d7
0003d8: 67b4         beq.b      $38e
0003da: 4a05         tst.b      d5
0003dc: 3017         move.w     (a7), d0
0003de: 5c8f         addq.l     #$6, a7
0003e0: 4ced05f0ffe8 movem.l    -$18(a5), d4-d7/a0/a2
0003e6: 4e5d         unlk       a5
0003e8: 4e75         rts        
0003ea: 4e550000     link.w     a5, #$0
0003ee: 48e78000     movem.l    d0, -(a7)
0003f2: 082f00070002 btst.b     #$7, $2(a7)
0003f8: 6708         beq.b      $402
0003fa: 2017         move.l     (a7), d0
0003fc: 6100175c     bsr.w      $1b5a
000400: 6006         bra.b      $408
000402: 2017         move.l     (a7), d0
000404: 61001d24     bsr.w      $212a
000408: 2e80         move.l     d0, (a7)
00040a: 2017         move.l     (a7), d0
00040c: 6100feb4     bsr.w      $2c2
000410: 4e5d         unlk       a5
000412: 4e75         rts        
000414: 4e550000     link.w     a5, #$0
000418: 48e7cfa0     movem.l    d0-d1/d4-d7/a0/a2, -(a7)
00041c: 2800         move.l     d0, d4
00041e: 598f         subq.l     #$4, a7
000420: 7a00         moveq      #$0, d5
000422: 7c00         moveq      #$0, d6
000424: 422f0003     clr.b      $3(a7)
000428: 3eaf000a     move.w     $a(a7), (a7)
00042c: 7000         moveq      #$0, d0
00042e: 302f000a     move.w     $a(a7), d0
000432: 41eead4e     lea.l      -$52b2(a6), a0
000436: 24700c00     movea.l    (a0, d0.l * 4), a2
00043a: 6050         bra.b      $48c
00043c: b852         cmp.w      (a2), d4
00043e: 6644         bne.b      $484
000440: 7c01         moveq      #$1, d6
000442: 4aaa0002     tst.l      $2(a2)
000446: 670e         beq.b      $456
000448: 206a0002     movea.l    $2(a2), a0
00044c: 4e90         jsr        (a0)
00044e: 1e00         move.b     d0, d7
000450: 1f7c00010003 move.b     #$1, $3(a7)
000456: 4a2f0003     tst.b      $3(a7)
00045a: 670a         beq.b      $466
00045c: 7000         moveq      #$0, d0
00045e: 1007         move.b     d7, d0
000460: b0aa0006     cmp.l      $6(a2), d0
000464: 6620         bne.b      $486
000466: 4aaa000a     tst.l      $a(a2)
00046a: 670a         beq.b      $476
00046c: 202a000e     move.l     $e(a2), d0
000470: 206a000a     movea.l    $a(a2), a0
000474: 4e90         jsr        (a0)
000476: 0c6a00080012 cmpi.w     #$8, $12(a2)
00047c: 6708         beq.b      $486
00047e: 3eaa0012     move.w     $12(a2), (a7)
000482: 6002         bra.b      $486
000484: 1a06         move.b     d6, d5
000486: d5fc00000014 adda.l     #$14, a2
00048c: 4a52         tst.w      (a2)
00048e: 6704         beq.b      $494
000490: 4a05         tst.b      d5
000492: 67a8         beq.b      $43c
000494: 4a06         tst.b      d6
000496: 3017         move.w     (a7), d0
000498: b06f000a     cmp.w      $a(a7), d0
00049c: 3017         move.w     (a7), d0
00049e: 588f         addq.l     #$4, a7
0004a0: 4ced05f0ffe8 movem.l    -$18(a5), d4-d7/a0/a2
0004a6: 4e5d         unlk       a5
0004a8: 4e75         rts        
0004aa: 4e550000     link.w     a5, #$0
0004ae: 48e78080     movem.l    d0/a0, -(a7)
0004b2: 518f         subq.l     #$8, a7
0004b4: 70ff         moveq      #$ff, d0
0004b6: 2e80         move.l     d0, (a7)
0004b8: 4aaf0008     tst.l      $8(a7)
0004bc: 6708         beq.b      $4c6
0004be: 7001         moveq      #$1, d0
0004c0: b0af0008     cmp.l      $8(a7), d0
0004c4: 661c         bne.b      $4e2
0004c6: 41ef0004     lea.l      $4(a7), a0
0004ca: 2008         move.l     a0, d0
0004cc: 6100201a     bsr.w      $24e8
0004d0: 2f6f00080004 move.l     $8(a7), $4(a7)
0004d6: 41ef0004     lea.l      $4(a7), a0
0004da: 2008         move.l     a0, d0
0004dc: 61002068     bsr.w      $2546
0004e0: 2e80         move.l     d0, (a7)
0004e2: 2017         move.l     (a7), d0
0004e4: 508f         addq.l     #$8, a7
0004e6: 4ced0100fffc movem.l    -$4(a5), a0
0004ec: 4e5d         unlk       a5
0004ee: 4e75         rts        
0004f0: 4e550000     link.w     a5, #$0
0004f4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0004f8: 4fefff74     lea.l      -$8c(a7), a7
0004fc: 42af0010     clr.l      $10(a7)
000500: 42af000c     clr.l      $c(a7)
000504: 70ff         moveq      #$ff, d0
000506: 2f400008     move.l     d0, $8(a7)
00050a: 4297         clr.l      (a7)
00050c: 4297         clr.l      (a7)
00050e: 601c         bra.b      $52c
000510: 206f008c     movea.l    $8c(a7), a0
000514: 1010         move.b     (a0), d0
000516: 49c0         extb.l     d0
000518: 61004fa4     bsr.w      $54be
00051c: 2217         move.l     (a7), d1
00051e: 41ef007d     lea.l      $7d(a7), a0
000522: 11801800     move.b     d0, (a0, d1.l)
000526: 5297         addq.l     #$1, (a7)
000528: 52af008c     addq.l     #$1, $8c(a7)
00052c: 700a         moveq      #$a, d0
00052e: b097         cmp.l      (a7), d0
000530: 6f12         ble.b      $544
000532: 206f008c     movea.l    $8c(a7), a0
000536: 4a10         tst.b      (a0)
000538: 670a         beq.b      $544
00053a: 206f008c     movea.l    $8c(a7), a0
00053e: 0c10003d     cmpi.b     #$3d, (a0)
000542: 66cc         bne.b      $510
000544: 2017         move.l     (a7), d0
000546: 41ef007d     lea.l      $7d(a7), a0
00054a: 42300800     clr.b      (a0, d0.l)
00054e: 4297         clr.l      (a7)
000550: 6028         bra.b      $57a
000552: 41ef007d     lea.l      $7d(a7), a0
000556: 2208         move.l     a0, d1
000558: 2017         move.l     (a7), d0
00055a: 41ee852e     lea.l      -$7ad2(a6), a0
00055e: 20300e04     move.l     $4(a0, d0.l), d0
000562: 61004c8c     bsr.w      $51f0
000566: 4a80         tst.l      d0
000568: 660e         bne.b      $578
00056a: 2017         move.l     (a7), d0
00056c: 41ee852e     lea.l      -$7ad2(a6), a0
000570: 2f700e000008 move.l     (a0, d0.l * 8), $8(a7)
000576: 6008         bra.b      $580
000578: 5297         addq.l     #$1, (a7)
00057a: 7004         moveq      #$4, d0
00057c: b097         cmp.l      (a7), d0
00057e: 6ed2         bgt.b      $552
000580: 70ff         moveq      #$ff, d0
000582: b0af0008     cmp.l      $8(a7), d0
000586: 6606         bne.b      $58e
000588: 7000         moveq      #$0, d0
00058a: 61005616     bsr.w      $5ba2
00058e: 206f008c     movea.l    $8c(a7), a0
000592: 0c10003d     cmpi.b     #$3d, (a0)
000596: 6604         bne.b      $59c
000598: 52af008c     addq.l     #$1, $8c(a7)
00059c: 206f008c     movea.l    $8c(a7), a0
0005a0: 4a10         tst.b      (a0)
0005a2: 6606         bne.b      $5aa
0005a4: 7000         moveq      #$0, d0
0005a6: 610055fa     bsr.w      $5ba2
0005aa: 202f008c     move.l     $8c(a7), d0
0005ae: 61004cb4     bsr.w      $5264
0005b2: 2f400004     move.l     d0, $4(a7)
0005b6: 202f008c     move.l     $8c(a7), d0
0005ba: d0af0004     add.l      $4(a7), d0
0005be: 5380         subq.l     #$1, d0
0005c0: 2f400014     move.l     d0, $14(a7)
0005c4: 206f008c     movea.l    $8c(a7), a0
0005c8: 0c100022     cmpi.b     #$22, (a0)
0005cc: 670a         beq.b      $5d8
0005ce: 206f008c     movea.l    $8c(a7), a0
0005d2: 0c100027     cmpi.b     #$27, (a0)
0005d6: 6640         bne.b      $618
0005d8: 206f008c     movea.l    $8c(a7), a0
0005dc: 226f0014     movea.l    $14(a7), a1
0005e0: 1011         move.b     (a1), d0
0005e2: b010         cmp.b      (a0), d0
0005e4: 6708         beq.b      $5ee
0005e6: 7000         moveq      #$0, d0
0005e8: 610055b8     bsr.w      $5ba2
0005ec: 6038         bra.b      $626
0005ee: 52af008c     addq.l     #$1, $8c(a7)
0005f2: 55af0004     subq.l     #$2, $4(a7)
0005f6: 2f2f0004     move.l     $4(a7), -(a7)
0005fa: 222f0090     move.l     $90(a7), d1
0005fe: 41ef0030     lea.l      $30(a7), a0
000602: 2008         move.l     a0, d0
000604: 61004ccc     bsr.w      $52d2
000608: 588f         addq.l     #$4, a7
00060a: 202f0004     move.l     $4(a7), d0
00060e: 41ef002c     lea.l      $2c(a7), a0
000612: 42300800     clr.b      (a0, d0.l)
000616: 600e         bra.b      $626
000618: 222f008c     move.l     $8c(a7), d1
00061c: 41ef002c     lea.l      $2c(a7), a0
000620: 2008         move.l     a0, d0
000622: 61004c5e     bsr.w      $5282
000626: 41ef002c     lea.l      $2c(a7), a0
00062a: 2f48008c     move.l     a0, $8c(a7)
00062e: 082f00000093 btst.b     #$0, $93(a7)
000634: 674a         beq.b      $680
000636: 4297         clr.l      (a7)
000638: 6014         bra.b      $64e
00063a: 206f008c     movea.l    $8c(a7), a0
00063e: 2017         move.l     (a7), d0
000640: 43ef0018     lea.l      $18(a7), a1
000644: 13900800     move.b     (a0), (a1, d0.l)
000648: 52af008c     addq.l     #$1, $8c(a7)
00064c: 5297         addq.l     #$1, (a7)
00064e: 206f008c     movea.l    $8c(a7), a0
000652: 4a10         tst.b      (a0)
000654: 6718         beq.b      $66e
000656: 206f008c     movea.l    $8c(a7), a0
00065a: 1010         move.b     (a0), d0
00065c: 49c0         extb.l     d0
00065e: 41eeb1ed     lea.l      -$4e13(a6), a0
000662: 10300800     move.b     (a0, d0.l), d0
000666: 4880         ext.w      d0
000668: 08000004     btst.b     #$4, d0
00066c: 67cc         beq.b      $63a
00066e: 2017         move.l     (a7), d0
000670: 41ef0018     lea.l      $18(a7), a0
000674: 42300800     clr.b      (a0, d0.l)
000678: 41ef0018     lea.l      $18(a7), a0
00067c: 2f48000c     move.l     a0, $c(a7)
000680: 082f00010093 btst.b     #$1, $93(a7)
000686: 6724         beq.b      $6ac
000688: 6004         bra.b      $68e
00068a: 52af008c     addq.l     #$1, $8c(a7)
00068e: 206f008c     movea.l    $8c(a7), a0
000692: 1010         move.b     (a0), d0
000694: 49c0         extb.l     d0
000696: 41eeb1ed     lea.l      -$4e13(a6), a0
00069a: 10300800     move.b     (a0, d0.l), d0
00069e: 4880         ext.w      d0
0006a0: 08000004     btst.b     #$4, d0
0006a4: 66e4         bne.b      $68a
0006a6: 2f6f008c0010 move.l     $8c(a7), $10(a7)
0006ac: 2f2f0010     move.l     $10(a7), -(a7)
0006b0: 222f0010     move.l     $10(a7), d1
0006b4: 202f000c     move.l     $c(a7), d0
0006b8: 6100165e     bsr.w      $1d18
0006bc: 588f         addq.l     #$4, a7
0006be: 72ff         moveq      #$ff, d1
0006c0: b280         cmp.l      d0, d1
0006c2: 6648         bne.b      $70c
0006c4: 486f007d     pea.l      $7d(a7)
0006c8: 41fa04b1     lea.l      $b7b(pc), a0
0006cc: 2208         move.l     a0, d1
0006ce: 7000         moveq      #$0, d0
0006d0: 610049d4     bsr.w      $50a6
0006d4: 588f         addq.l     #$4, a7
0006d6: 4aaf000c     tst.l      $c(a7)
0006da: 6712         beq.b      $6ee
0006dc: 2f2f000c     move.l     $c(a7), -(a7)
0006e0: 41fa04b6     lea.l      $b98(pc), a0
0006e4: 2208         move.l     a0, d1
0006e6: 7000         moveq      #$0, d0
0006e8: 610049bc     bsr.w      $50a6
0006ec: 588f         addq.l     #$4, a7
0006ee: 4aaf0010     tst.l      $10(a7)
0006f2: 6712         beq.b      $706
0006f4: 2f2f0010     move.l     $10(a7), -(a7)
0006f8: 41fa04b2     lea.l      $bac(pc), a0
0006fc: 2208         move.l     a0, d1
0006fe: 7000         moveq      #$0, d0
000700: 610049a4     bsr.w      $50a6
000704: 588f         addq.l     #$4, a7
000706: 7000         moveq      #$0, d0
000708: 61005498     bsr.w      $5ba2
00070c: 4fef008c     lea.l      $8c(a7), a7
000710: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000716: 4e5d         unlk       a5
000718: 4e75         rts        
00071a: 4e550000     link.w     a5, #$0
00071e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000722: 2440         movea.l    d0, a2
000724: 518f         subq.l     #$8, a7
000726: 42af0004     clr.l      $4(a7)
00072a: 600000de     bra.w      $80a
00072e: 7201         moveq      #$1, d1
000730: 6006         bra.b      $738
000732: 7202         moveq      #$2, d1
000734: 6002         bra.b      $738
000736: 7203         moveq      #$3, d1
000738: 528a         addq.l     #$1, a2
00073a: 200a         move.l     a2, d0
00073c: 6100fdb2     bsr.w      $4f0
000740: 6042         bra.b      $784
000742: 6100085a     bsr.w      $f9e
000746: 600000c2     bra.w      $80a
00074a: 7001         moveq      #$1, d0
00074c: 6100fd5c     bsr.w      $4aa
000750: 72ff         moveq      #$ff, d1
000752: b280         cmp.l      d0, d1
000754: 6638         bne.b      $78e
000756: 7000         moveq      #$0, d0
000758: 61005448     bsr.w      $5ba2
00075c: 6030         bra.b      $78e
00075e: 528a         addq.l     #$1, a2
000760: 1012         move.b     (a2), d0
000762: 49c0         extb.l     d0
000764: 41eeb1ed     lea.l      -$4e13(a6), a0
000768: 10300800     move.b     (a0, d0.l), d0
00076c: 4880         ext.w      d0
00076e: 08000003     btst.b     #$3, d0
000772: 670c         beq.b      $780
000774: 1012         move.b     (a2), d0
000776: 4880         ext.w      d0
000778: 04400030     subi.w     #$30, d0
00077c: 48c0         ext.l      d0
00077e: 6002         bra.b      $782
000780: 7002         moveq      #$2, d0
000782: 2e80         move.l     d0, (a7)
000784: 7001         moveq      #$1, d0
000786: 2f400004     move.l     d0, $4(a7)
00078a: 6000007e     bra.w      $80a
00078e: 422e84ec     clr.b      -$7b14(a6)
000792: 60000076     bra.w      $80a
000796: 1012         move.b     (a2), d0
000798: 49c0         extb.l     d0
00079a: 2f00         move.l     d0, -(a7)
00079c: 41fa0422     lea.l      $bc0(pc), a0
0007a0: 2208         move.l     a0, d1
0007a2: 7000         moveq      #$0, d0
0007a4: 61004900     bsr.w      $50a6
0007a8: 588f         addq.l     #$4, a7
0007aa: 6100fae8     bsr.w      $294
0007ae: 7000         moveq      #$0, d0
0007b0: 610053f0     bsr.w      $5ba2
0007b4: 6054         bra.b      $80a
0007b6: 1012         move.b     (a2), d0
0007b8: 4880         ext.w      d0
0007ba: 0c400070     cmpi.w     #$70, d0
0007be: 6700ff72     beq.w      $732
0007c2: 6226         bhi.b      $7ea
0007c4: 0c000064     cmpi.b     #$64, d0
0007c8: 6700ff78     beq.w      $742
0007cc: 6212         bhi.b      $7e0
0007ce: 0c000044     cmpi.b     #$44, d0
0007d2: 6700ff8a     beq.w      $75e
0007d6: 62be         bhi.b      $796
0007d8: 0c00003f     cmpi.b     #$3f, d0
0007dc: 67cc         beq.b      $7aa
0007de: 60b6         bra.b      $796
0007e0: 0c00006e     cmpi.b     #$6e, d0
0007e4: 6700ff48     beq.w      $72e
0007e8: 60ac         bra.b      $796
0007ea: 0c400073     cmpi.w     #$73, d0
0007ee: 6700ff46     beq.w      $736
0007f2: 620a         bhi.b      $7fe
0007f4: 0c400072     cmpi.w     #$72, d0
0007f8: 6700ff94     beq.w      $78e
0007fc: 6098         bra.b      $796
0007fe: 0c400074     cmpi.w     #$74, d0
000802: 6700ff46     beq.w      $74a
000806: 6000ff8e     bra.w      $796
00080a: 4aaf0004     tst.l      $4(a7)
00080e: 6606         bne.b      $816
000810: 528a         addq.l     #$1, a2
000812: 4a12         tst.b      (a2)
000814: 66a0         bne.b      $7b6
000816: 508f         addq.l     #$8, a7
000818: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
00081e: 4e5d         unlk       a5
000820: 4e75         rts        
000822: 4e550000     link.w     a5, #$0
000826: 48e7c080     movem.l    d0-d1/a0, -(a7)
00082a: 4feffff4     lea.l      -$c(a7), a7
00082e: 41fb0170fffffbba lea.l      $fffffbba(a16, invalid.w), a0
000836: 2008         move.l     a0, d0
000838: 6100426c     bsr.w      $4aa6
00083c: 7000         moveq      #$0, d0
00083e: 6100fc6a     bsr.w      $4aa
000842: 2f6f00100008 move.l     $10(a7), $8(a7)
000848: 602c         bra.b      $876
00084a: 58af0008     addq.l     #$4, $8(a7)
00084e: 206f0008     movea.l    $8(a7), a0
000852: 2010         move.l     (a0), d0
000854: 2f400004     move.l     d0, $4(a7)
000858: 2040         movea.l    d0, a0
00085a: 0c10002d     cmpi.b     #$2d, (a0)
00085e: 6610         bne.b      $870
000860: 202f0004     move.l     $4(a7), d0
000864: 6100feb4     bsr.w      $71a
000868: 206f0008     movea.l    $8(a7), a0
00086c: 4290         clr.l      (a0)
00086e: 6006         bra.b      $876
000870: 7000         moveq      #$0, d0
000872: 6100532e     bsr.w      $5ba2
000876: 53af000c     subq.l     #$1, $c(a7)
00087a: 66ce         bne.b      $84a
00087c: 61001e98     bsr.w      $2716
000880: 610015f4     bsr.w      $1e76
000884: 72ff         moveq      #$ff, d1
000886: b280         cmp.l      d0, d1
000888: 6608         bne.b      $892
00088a: 203c00002409 move.l     #$2409, d0
000890: 6006         bra.b      $898
000892: 203c00002408 move.l     #$2408, d0
000898: 6100fa28     bsr.w      $2c2
00089c: 426f0002     clr.w      $2(a7)
0008a0: 41ee854e     lea.l      -$7ab2(a6), a0
0008a4: 2008         move.l     a0, d0
0008a6: 61000520     bsr.w      $dc8
0008aa: 6100fa9c     bsr.w      $348
0008ae: 6100fa4a     bsr.w      $2fa
0008b2: 6100faba     bsr.w      $36e
0008b6: 3e80         move.w     d0, (a7)
0008b8: 0c570001     cmpi.w     #$1, (a7)
0008bc: 67ec         beq.b      $8aa
0008be: 7000         moveq      #$0, d0
0008c0: 302f0002     move.w     $2(a7), d0
0008c4: 2200         move.l     d0, d1
0008c6: 7000         moveq      #$0, d0
0008c8: 3017         move.w     (a7), d0
0008ca: 6100fb48     bsr.w      $414
0008ce: 3f400002     move.w     d0, $2(a7)
0008d2: 60d6         bra.b      $8aa
0008d4: 4fef000c     lea.l      $c(a7), a7
0008d8: 4ced0100fffc movem.l    -$4(a5), a0
0008de: 4e5d         unlk       a5
0008e0: 4e75         rts        
0008e2: 557361676520 subq.w     #$2, ([$6520, a3])
0008e8: 2020         move.l     -(a0), d0
0008ea: 3a20         move.w     -(a0), d5
0008ec: 7375         .dc.w      $7375
0008ee: 7065         moveq      #$65, d0
0008f0: 7276         moveq      #$76, d1
0008f2: 6973         bvs.b      $967
0008f4: 6f72         ble.b      $968
0008f6: 205b         movea.l    (a3)+, a0
0008f8: 3c6f7074     movea.w    $7074(a7), a6
0008fc: 696f         bvs.b      $96d
0008fe: 6e73         bgt.b      $973
000900: 3e5d         movea.w    (a5)+, a7
000902: 004f         .dc.w      $004f
000904: 7074         moveq      #$74, d0
000906: 696f         bvs.b      $977
000908: 6e73         bgt.b      $97d
00090a: 203a202d     move.l     $2939(pc), d0
00090e: 3f20         move.w     -(a0), -(a7)
000910: 2020         move.l     -(a0), d0
000912: 2020         move.l     -(a0), d0
000914: 2020         move.l     -(a0), d0
000916: 2053         movea.l    (a3), a0
000918: 686f         bvc.b      $989
00091a: 7720         .dc.w      $7720
00091c: 7468         moveq      #$68, d2
00091e: 6973         bvs.b      $993
000920: 20696e66     movea.l    $6e66(a1), a0
000924: 6f72         ble.b      $998
000926: 6d61         blt.b      $989
000928: 7469         moveq      #$69, d2
00092a: 6f6e         ble.b      $99a
00092c: 00202020     ori.b      #$20, -(a0)
000930: 2020         move.l     -(a0), d0
000932: 2020         move.l     -(a0), d0
000934: 2020         move.l     -(a0), d0
000936: 202d6e3c     move.l     $6e3c(a5), d0
00093a: 636f         bls.b      $9ab
00093c: 6d70         blt.b      $9ae
00093e: 3e3d         .dc.w      $3e3d
000940: 3c6d6f64     movea.w    $6f64(a5), a6
000944: 756c         .dc.w      $756c
000946: 6520         bcs.b      $968
000948: 6e61         bgt.b      $9ab
00094a: 6d65         blt.b      $9b1
00094c: 3e00         move.w     d0, d7
00094e: 2020         move.l     -(a0), d0
000950: 2020         move.l     -(a0), d0
000952: 2020         move.l     -(a0), d0
000954: 2020         move.l     -(a0), d0
000956: 2020         move.l     -(a0), d0
000958: 2020         move.l     -(a0), d0
00095a: 2020         move.l     -(a0), d0
00095c: 2020         move.l     -(a0), d0
00095e: 2020         move.l     -(a0), d0
000960: 2020         move.l     -(a0), d0
000962: 5265         addq.w     #$1, -(a5)
000964: 706c         moveq      #$6c, d0
000966: 6163         bsr.b      $9cb
000968: 6520         bcs.b      $98a
00096a: 6d6f         blt.b      $9db
00096c: 6475         bcc.b      $9e3
00096e: 6c65         bge.b      $9d5
000970: 206e616d     movea.l    $616d(a6), a0
000974: 6520         bcs.b      $996
000976: 6f66         ble.b      $9de
000978: 2061         movea.l    -(a1), a0
00097a: 2063         movea.l    -(a3), a0
00097c: 6f6d         ble.b      $9eb
00097e: 706f         moveq      #$6f, d0
000980: 6e65         bgt.b      $9e7
000982: 6e74         bgt.b      $9f8
000984: 00202020     ori.b      #$20, -(a0)
000988: 2020         move.l     -(a0), d0
00098a: 2020         move.l     -(a0), d0
00098c: 2020         move.l     -(a0), d0
00098e: 202d703c     move.l     $703c(a5), d0
000992: 636f         bls.b      $a03
000994: 6d70         blt.b      $a06
000996: 3e3d         .dc.w      $3e3d
000998: 3c706172616d65746572 movea.w    ([$616d6574, a0], $6572), a6
0009a2: 733e         .dc.w      $733e
0009a4: 00202020     ori.b      #$20, -(a0)
0009a8: 2020         move.l     -(a0), d0
0009aa: 2020         move.l     -(a0), d0
0009ac: 2020         move.l     -(a0), d0
0009ae: 2020         move.l     -(a0), d0
0009b0: 2020         move.l     -(a0), d0
0009b2: 2020         move.l     -(a0), d0
0009b4: 2020         move.l     -(a0), d0
0009b6: 2020         move.l     -(a0), d0
0009b8: 2052         movea.l    (a2), a0
0009ba: 6570         bcs.b      $a2c
0009bc: 6c61         bge.b      $a1f
0009be: 6365         bls.b      $a25
0009c0: 20706172616d65746572 movea.l    ([$616d6574, a0], $6572), a0
0009ca: 206c6973     movea.l    $6973(a4), a0
0009ce: 7420         moveq      #$20, d2
0009d0: 6f66         ble.b      $a38
0009d2: 2061         movea.l    -(a1), a0
0009d4: 2063         movea.l    -(a3), a0
0009d6: 6f6d         ble.b      $a45
0009d8: 706f         moveq      #$6f, d0
0009da: 6e65         bgt.b      $a41
0009dc: 6e74         bgt.b      $a52
0009de: 00202020     ori.b      #$20, -(a0)
0009e2: 2020         move.l     -(a0), d0
0009e4: 2020         move.l     -(a0), d0
0009e6: 2020         move.l     -(a0), d0
0009e8: 202d733c     move.l     $733c(a5), d0
0009ec: 636f         bls.b      $a5d
0009ee: 6d70         blt.b      $a60
0009f0: 3e3d         .dc.w      $3e3d
0009f2: 3c737475     movea.w    $75(a3, d7.w), a6
0009f6: 6220         bhi.b      $a18
0009f8: 6e61         bgt.b      $a5b
0009fa: 6d65         blt.b      $a61
0009fc: 2061         movea.l    -(a1), a0
0009fe: 6e64         bgt.b      $a64
000a00: 20706172616d65746572 movea.l    ([$616d6574, a0], $6572), a0
000a0a: 733e         .dc.w      $733e
000a0c: 00202020     ori.b      #$20, -(a0)
000a10: 2020         move.l     -(a0), d0
000a12: 2020         move.l     -(a0), d0
000a14: 2020         move.l     -(a0), d0
000a16: 2020         move.l     -(a0), d0
000a18: 2020         move.l     -(a0), d0
000a1a: 2020         move.l     -(a0), d0
000a1c: 2020         move.l     -(a0), d0
000a1e: 2020         move.l     -(a0), d0
000a20: 2052         movea.l    (a2), a0
000a22: 6570         bcs.b      $a94
000a24: 6c61         bge.b      $a87
000a26: 6365         bls.b      $a8d
000a28: 2061         movea.l    -(a1), a0
000a2a: 2063         movea.l    -(a3), a0
000a2c: 6f6d         ble.b      $a9b
000a2e: 706f         moveq      #$6f, d0
000a30: 6e65         bgt.b      $a97
000a32: 6e74         bgt.b      $aa8
000a34: 2062         movea.l    -(a2), a0
000a36: 7920         .dc.w      $7920
000a38: 6120         bsr.b      $a5a
000a3a: 7374         .dc.w      $7374
000a3c: 7562         .dc.w      $7562
000a3e: 2028276e     move.l     $276e(a0), d0
000a42: 2720         move.l     -(a0), -(a3)
000a44: 2b20         move.l     -(a0), -(a5)
000a46: 277027206f707469 move.l     $6f70(a0, d2.w * 8), $7469(a3)
000a4e: 6f6e         ble.b      $abe
000a50: 2900         move.l     d0, -(a4)
000a52: 2020         move.l     -(a0), d0
000a54: 2020         move.l     -(a0), d0
000a56: 2020         move.l     -(a0), d0
000a58: 2020         move.l     -(a0), d0
000a5a: 2020         move.l     -(a0), d0
000a5c: 2d642020     move.l     -(a4), $2020(a6)
000a60: 2020         move.l     -(a0), d0
000a62: 2020         move.l     -(a0), d0
000a64: 2020         move.l     -(a0), d0
000a66: 53746172742d75702064 subq.w     #$1, ([$742d7570, a4], $2064)
000a70: 7261         moveq      #$61, d1
000a72: 776d         .dc.w      $776d
000a74: 6170         bsr.b      $ae6
000a76: 00202020     ori.b      #$20, -(a0)
000a7a: 2020         move.l     -(a0), d0
000a7c: 2020         move.l     -(a0), d0
000a7e: 2020         move.l     -(a0), d0
000a80: 202d7420     move.l     $7420(a5), d0
000a84: 2020         move.l     -(a0), d0
000a86: 2020         move.l     -(a0), d0
000a88: 2020         move.l     -(a0), d0
000a8a: 2053         movea.l    (a3), a0
000a8c: 7461         moveq      #$61, d2
000a8e: 7274         moveq      #$74, d1
000a90: 2d757020666f move.l     $20(a5, d7.w), $666f(a6)
000a96: 7220         moveq      #$20, d1
000a98: 7473         moveq      #$73, d2
000a9a: 746d         moveq      #$6d, d2
000a9c: 6d69         blt.b      $b07
000a9e: 00202020     ori.b      #$20, -(a0)
000aa2: 2020         move.l     -(a0), d0
000aa4: 2020         move.l     -(a0), d0
000aa6: 2020         move.l     -(a0), d0
000aa8: 202d443c     move.l     $443c(a5), d0
000aac: 6469         bcc.b      $b17
000aae: 6769         beq.b      $b19
000ab0: 743e         moveq      #$3e, d2
000ab2: 2053         movea.l    (a3), a0
000ab4: 6574         bcs.b      $b2a
000ab6: 2064         movea.l    -(a4), a0
000ab8: 6562         bcs.b      $b1c
000aba: 7567         .dc.w      $7567
000abc: 206c6576     movea.l    $6576(a4), a0
000ac0: 656c         bcs.b      $b2e
000ac2: 2073757065727669 movea.l    $65727669(a3, invalid.w), a0
000aca: 736f         .dc.w      $736f
000acc: 723a         moveq      #$3a, d1
000ace: 00202020     ori.b      #$20, -(a0)
000ad2: 2020         move.l     -(a0), d0
000ad4: 2020         move.l     -(a0), d0
000ad6: 2020         move.l     -(a0), d0
000ad8: 2020         move.l     -(a0), d0
000ada: 2020         move.l     -(a0), d0
000adc: 2020         move.l     -(a0), d0
000ade: 2020         move.l     -(a0), d0
000ae0: 2020         move.l     -(a0), d0
000ae2: 20302050     move.l     $50(a0, d2.w), d0
000ae6: 616e         bsr.b      $b56
000ae8: 6963         bvs.b      $b4d
000aea: 7320         .dc.w      $7320
000aec: 6f6e         ble.b      $b5c
000aee: 6c79         bge.b      $b69
000af0: 3b20         move.w     -(a0), -(a5)
000af2: 3120         move.w     -(a0), -(a0)
000af4: 2b457665     move.l     d5, $7665(a5)
000af8: 6e74         bgt.b      $b6e
000afa: 733b         .dc.w      $733b
000afc: 2032202b     move.l     $2b(a2, d2.w), d0
000b00: 5369676e     subq.w     #$1, $676e(a1)
000b04: 616c         bsr.b      $b72
000b06: 7300         .dc.w      $7300
000b08: 2020         move.l     -(a0), d0
000b0a: 2020         move.l     -(a0), d0
000b0c: 2020         move.l     -(a0), d0
000b0e: 2020         move.l     -(a0), d0
000b10: 2020         move.l     -(a0), d0
000b12: 2d7220202020 move.l     $20(a2, d2.w), $2020(a6)
000b18: 2020         move.l     -(a0), d0
000b1a: 2020         move.l     -(a0), d0
000b1c: 4e6f         move       usp, a7
000b1e: 2061         movea.l    -(a1), a0
000b20: 7574         .dc.w      $7574
000b22: 6f6d         ble.b      $b91
000b24: 6174         bsr.b      $b9a
000b26: 6963         bvs.b      $b8b
000b28: 207265736574206166746572 movea.l    ([$65742061, a2], $66746572), a0
000b34: 2065         movea.l    -(a5), a0
000b36: 7863         moveq      #$63, d4
000b38: 6570         bcs.b      $baa
000b3a: 7469         moveq      #$69, d2
000b3c: 6f6e         ble.b      $bac
000b3e: 003c         .dc.w      $003c
000b40: 636f         bls.b      $bb1
000b42: 6d70         blt.b      $bb4
000b44: 3e20         move.w     -(a0), d7
000b46: 6973         bvs.b      $bbb
000b48: 206f6e65     movea.l    $6e65(a7), a0
000b4c: 206f6620     movea.l    $6620(a7), a0
000b50: 7468         moveq      #$68, d2
000b52: 6520         bcs.b      $b74
000b54: 666f         bne.b      $bc5
000b56: 6c6c         bge.b      $bc4
000b58: 6f77         ble.b      $bd1
000b5a: 696e         bvs.b      $bca
000b5c: 673a         beq.b      $b98
000b5e: 2064         movea.l    -(a4), a0
000b60: 6220         bhi.b      $b82
000b62: 6470         bcc.b      $bd4
000b64: 20727020     movea.l    $20(a2, d7.w), a0
000b68: 6764         beq.b      $bce
000b6a: 00646200     ori.w      #$6200, -(a4)
000b6e: 6470         bcc.b      $be0
000b70: 0072700067640025 ori.w      #$7000, $25(a2, invalid.w)
000b78: 730d         .dc.w      $730d
000b7a: 0043616e     ori.w      #$616e, d3
000b7e: 277420636861 move.l     $63(a4, d2.w), $6861(a3)
000b84: 6e67         bgt.b      $bed
000b86: 6520         bcs.b      $ba8
000b88: 636f         bls.b      $bf9
000b8a: 6d70         blt.b      $bfc
000b8c: 6f6e         ble.b      $bfc
000b8e: 656e         bcs.b      $bfe
000b90: 7420         moveq      #$20, d2
000b92: 2725         move.l     -(a5), -(a3)
000b94: 7327         .dc.w      $7327
000b96: 0d00         btst.l     d6, d0
000b98: 4d6f         .dc.w      $4d6f
000b9a: 6475         bcc.b      $c11
000b9c: 6c65         bge.b      $c03
000b9e: 206e616d     movea.l    $616d(a6), a0
000ba2: 6520         bcs.b      $bc4
000ba4: 3a20         move.w     -(a0), d5
000ba6: 2725         move.l     -(a5), -(a3)
000ba8: 7327         .dc.w      $7327
000baa: 0d00         btst.l     d6, d0
000bac: 4172         .dc.w      $4172
000bae: 6775         beq.b      $c25
000bb0: 6d65         blt.b      $c17
000bb2: 6e74         bgt.b      $c28
000bb4: 7320         .dc.w      $7320
000bb6: 2020         move.l     -(a0), d0
000bb8: 3a20         move.w     -(a0), d5
000bba: 2725         move.l     -(a5), -(a3)
000bbc: 7327         .dc.w      $7327
000bbe: 0d00         btst.l     d6, d0
000bc0: 556e6b6e     subq.w     #$2, $6b6e(a6)
000bc4: 6f77         ble.b      $c3d
000bc6: 6e20         bgt.b      $be8
000bc8: 6f70         ble.b      $c3a
000bca: 7469         moveq      #$69, d2
000bcc: 6f6e         ble.b      $c3c
000bce: 2027         move.l     -(a7), d0
000bd0: 2563270d     move.l     -(a3), $270d(a2)
000bd4: 00004e55     ori.b      #$55, d0
000bd8: 000048e7     ori.b      #$e7, d0
000bdc: 8880         or.l       d0, d4
000bde: 7800         moveq      #$0, d4
000be0: 6002         bra.b      $be4
000be2: 5284         addq.l     #$1, d4
000be4: 7014         moveq      #$14, d0
000be6: b084         cmp.l      d4, d0
000be8: 6f0e         ble.b      $bf8
000bea: 41eeadd1     lea.l      -$522f(a6), a0
000bee: 102f0003     move.b     $3(a7), d0
000bf2: b0304a00     cmp.b      (a0, d4.l * 2), d0
000bf6: 66ea         bne.b      $be2
000bf8: 7014         moveq      #$14, d0
000bfa: b084         cmp.l      d4, d0
000bfc: 6f0a         ble.b      $c08
000bfe: 41eeadd1     lea.l      -$522f(a6), a0
000c02: 10304a01     move.b     $1(a0, d4.l), d0
000c06: 6002         bra.b      $c0a
000c08: 7014         moveq      #$14, d0
000c0a: 4ced0110fff8 movem.l    -$8(a5), d4/a0
000c10: 4e5d         unlk       a5
000c12: 4e75         rts        
000c14: 4e550000     link.w     a5, #$0
000c18: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
000c1c: 7800         moveq      #$0, d4
000c1e: 6002         bra.b      $c22
000c20: 5284         addq.l     #$1, d4
000c22: 703d         moveq      #$3d, d0
000c24: b084         cmp.l      d4, d0
000c26: 6f12         ble.b      $c3a
000c28: 7006         moveq      #$6, d0
000c2a: 4c040000     mulu.l     d4, d0
000c2e: 41eeadfa     lea.l      -$5206(a6), a0
000c32: 2217         move.l     (a7), d1
000c34: b2b00800     cmp.l      (a0, d0.l), d1
000c38: 66e6         bne.b      $c20
000c3a: 703d         moveq      #$3d, d0
000c3c: b084         cmp.l      d4, d0
000c3e: 6f14         ble.b      $c54
000c40: 7006         moveq      #$6, d0
000c42: 4c040000     mulu.l     d4, d0
000c46: 41eeadfa     lea.l      -$5206(a6), a0
000c4a: 7200         moveq      #$0, d1
000c4c: 12300804     move.b     $4(a0, d0.l), d1
000c50: 2001         move.l     d1, d0
000c52: 6002         bra.b      $c56
000c54: 2017         move.l     (a7), d0
000c56: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
000c5c: 4e5d         unlk       a5
000c5e: 4e75         rts        
000c60: 4e550000     link.w     a5, #$0
000c64: 48e78000     movem.l    d0, -(a7)
000c68: 42aeadc4     clr.l      -$523c(a6)
000c6c: 7001         moveq      #$1, d0
000c6e: 2d40adc0     move.l     d0, -$5240(a6)
000c72: 42aeadc8     clr.l      -$5238(a6)
000c76: 42aeadcc     clr.l      -$5234(a6)
000c7a: 4e5d         unlk       a5
000c7c: 4e75         rts        
000c7e: 4e550000     link.w     a5, #$0
000c82: 48e78000     movem.l    d0, -(a7)
000c86: 7001         moveq      #$1, d0
000c88: 2d40adc4     move.l     d0, -$523c(a6)
000c8c: 7001         moveq      #$1, d0
000c8e: 2d40adc0     move.l     d0, -$5240(a6)
000c92: 42aeadc8     clr.l      -$5238(a6)
000c96: 42aeadcc     clr.l      -$5234(a6)
000c9a: 4e5d         unlk       a5
000c9c: 4e75         rts        
000c9e: 4e550000     link.w     a5, #$0
000ca2: 48e78000     movem.l    d0, -(a7)
000ca6: 42aeadc4     clr.l      -$523c(a6)
000caa: 7001         moveq      #$1, d0
000cac: 2d40adc0     move.l     d0, -$5240(a6)
000cb0: 7001         moveq      #$1, d0
000cb2: 2d40adc8     move.l     d0, -$5238(a6)
000cb6: 42aeadcc     clr.l      -$5234(a6)
000cba: 4e5d         unlk       a5
000cbc: 4e75         rts        
000cbe: 4e550000     link.w     a5, #$0
000cc2: 48e78000     movem.l    d0, -(a7)
000cc6: 42aeadc4     clr.l      -$523c(a6)
000cca: 7001         moveq      #$1, d0
000ccc: 2d40adc0     move.l     d0, -$5240(a6)
000cd0: 42aeadc8     clr.l      -$5238(a6)
000cd4: 7001         moveq      #$1, d0
000cd6: 2d40adcc     move.l     d0, -$5234(a6)
000cda: 4e5d         unlk       a5
000cdc: 4e75         rts        
000cde: 4e550000     link.w     a5, #$0
000ce2: 48e78000     movem.l    d0, -(a7)
000ce6: 7002         moveq      #$2, d0
000ce8: 2d40adb8     move.l     d0, -$5248(a6)
000cec: 7001         moveq      #$1, d0
000cee: 2d40adb4     move.l     d0, -$524c(a6)
000cf2: 4e5d         unlk       a5
000cf4: 4e75         rts        
000cf6: 4e550000     link.w     a5, #$0
000cfa: 48e78000     movem.l    d0, -(a7)
000cfe: 7001         moveq      #$1, d0
000d00: b0aeadb4     cmp.l      -$524c(a6), d0
000d04: 6608         bne.b      $d0e
000d06: 42aeadb4     clr.l      -$524c(a6)
000d0a: 7001         moveq      #$1, d0
000d0c: 6002         bra.b      $d10
000d0e: 7000         moveq      #$0, d0
000d10: 4e5d         unlk       a5
000d12: 4e75         rts        
000d14: 4e550000     link.w     a5, #$0
000d18: 48e78080     movem.l    d0/a0, -(a7)
000d1c: 306ead78     movea.w    -$5288(a6), a0
000d20: 2d48adbc     move.l     a0, -$5244(a6)
000d24: 4ced0100fffc movem.l    -$4(a5), a0
000d2a: 4e5d         unlk       a5
000d2c: 4e75         rts        
000d2e: 4e550000     link.w     a5, #$0
000d32: 48e78000     movem.l    d0, -(a7)
000d36: 3d6eadbead78 move.w     -$5242(a6), -$5288(a6)
000d3c: 4e5d         unlk       a5
000d3e: 4e75         rts        
000d40: 4e550000     link.w     a5, #$0
000d44: 48e78000     movem.l    d0, -(a7)
000d48: 70ff         moveq      #$ff, d0
000d4a: 2d40adbc     move.l     d0, -$5244(a6)
000d4e: 4e5d         unlk       a5
000d50: 4e75         rts        
000d52: 4e550000     link.w     a5, #$0
000d56: 48e78000     movem.l    d0, -(a7)
000d5a: 70ff         moveq      #$ff, d0
000d5c: b0aeadbc     cmp.l      -$5244(a6), d0
000d60: 6704         beq.b      $d66
000d62: 7001         moveq      #$1, d0
000d64: 6002         bra.b      $d68
000d66: 7000         moveq      #$0, d0
000d68: 4e5d         unlk       a5
000d6a: 4e75         rts        
000d6c: 4e550000     link.w     a5, #$0
000d70: 48e78000     movem.l    d0, -(a7)
000d74: 7002         moveq      #$2, d0
000d76: b0aeadb8     cmp.l      -$5248(a6), d0
000d7a: 660c         bne.b      $d88
000d7c: 42aeadb8     clr.l      -$5248(a6)
000d80: 42aeadb4     clr.l      -$524c(a6)
000d84: 7001         moveq      #$1, d0
000d86: 6002         bra.b      $d8a
000d88: 7000         moveq      #$0, d0
000d8a: 4e5d         unlk       a5
000d8c: 4e75         rts        
000d8e: 4e550000     link.w     a5, #$0
000d92: 48e78000     movem.l    d0, -(a7)
000d96: 1d7c0001adaf move.b     #$1, -$5251(a6)
000d9c: 4e5d         unlk       a5
000d9e: 4e75         rts        
000da0: 4e550000     link.w     a5, #$0
000da4: 48e78000     movem.l    d0, -(a7)
000da8: 422eadaf     clr.b      -$5251(a6)
000dac: 4e5d         unlk       a5
000dae: 4e75         rts        
000db0: 4e550000     link.w     a5, #$0
000db4: 48e78000     movem.l    d0, -(a7)
000db8: 4a2eadaf     tst.b      -$5251(a6)
000dbc: 6704         beq.b      $dc2
000dbe: 7001         moveq      #$1, d0
000dc0: 6002         bra.b      $dc4
000dc2: 7000         moveq      #$0, d0
000dc4: 4e5d         unlk       a5
000dc6: 4e75         rts        
000dc8: 4e550000     link.w     a5, #$0
000dcc: 48e78080     movem.l    d0/a0, -(a7)
000dd0: 2057         movea.l    (a7), a0
000dd2: 2d50ad72     move.l     (a0), -$528e(a6)
000dd6: 2d680004ad76 move.l     $4(a0), -$528a(a6)
000ddc: 2d680008ad7a move.l     $8(a0), -$5286(a6)
000de2: 3d68000cad7e move.w     $c(a0), -$5282(a6)
000de8: 4ced0100fffc movem.l    -$4(a5), a0
000dee: 4e5d         unlk       a5
000df0: 4e75         rts        
000df2: 4e550000     link.w     a5, #$0
000df6: 48e78000     movem.l    d0, -(a7)
000dfa: 3d6f0002ad72 move.w     $2(a7), -$528e(a6)
000e00: 4e5d         unlk       a5
000e02: 4e75         rts        
000e04: 4e550000     link.w     a5, #$0
000e08: 48e78000     movem.l    d0, -(a7)
000e0c: 3d6f0002ad74 move.w     $2(a7), -$528c(a6)
000e12: 4e5d         unlk       a5
000e14: 4e75         rts        
000e16: 4e550000     link.w     a5, #$0
000e1a: 48e78000     movem.l    d0, -(a7)
000e1e: 3d6f0002ad76 move.w     $2(a7), -$528a(a6)
000e24: 4e5d         unlk       a5
000e26: 4e75         rts        
000e28: 4e550000     link.w     a5, #$0
000e2c: 48e78000     movem.l    d0, -(a7)
000e30: 3d6f0002ad78 move.w     $2(a7), -$5288(a6)
000e36: 4e5d         unlk       a5
000e38: 4e75         rts        
000e3a: 4e550000     link.w     a5, #$0
000e3e: 48e78000     movem.l    d0, -(a7)
000e42: 3d6f0002ad7a move.w     $2(a7), -$5286(a6)
000e48: 4e5d         unlk       a5
000e4a: 4e75         rts        
000e4c: 4e550000     link.w     a5, #$0
000e50: 48e78000     movem.l    d0, -(a7)
000e54: 3d6f0002ad7c move.w     $2(a7), -$5284(a6)
000e5a: 4e5d         unlk       a5
000e5c: 4e75         rts        
000e5e: 4e550000     link.w     a5, #$0
000e62: 48e78000     movem.l    d0, -(a7)
000e66: 3d6f0002ad7e move.w     $2(a7), -$5282(a6)
000e6c: 4e5d         unlk       a5
000e6e: 4e75         rts        
000e70: 4e550000     link.w     a5, #$0
000e74: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e78: 7212         moveq      #$12, d1
000e7a: 41eead6e     lea.l      -$5292(a6), a0
000e7e: 2008         move.l     a0, d0
000e80: 6100124c     bsr.w      $20ce
000e84: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e8a: 4e5d         unlk       a5
000e8c: 4e75         rts        
000e8e: 4e550000     link.w     a5, #$0
000e92: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e96: 7202         moveq      #$2, d1
000e98: 306f0002     movea.w    $2(a7), a0
000e9c: 2008         move.l     a0, d0
000e9e: 61001258     bsr.w      $20f8
000ea2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000ea8: 4e5d         unlk       a5
000eaa: 4e75         rts        
000eac: 4e550000     link.w     a5, #$0
000eb0: 48e78000     movem.l    d0, -(a7)
000eb4: 61001936     bsr.w      $27ec
000eb8: 4e5d         unlk       a5
000eba: 4e75         rts        
000ebc: 4e550000     link.w     a5, #$0
000ec0: 48e78000     movem.l    d0, -(a7)
000ec4: 6100195e     bsr.w      $2824
000ec8: 4e5d         unlk       a5
000eca: 4e75         rts        
000ecc: 4e550000     link.w     a5, #$0
000ed0: 48e7c000     movem.l    d0-d1, -(a7)
000ed4: 2217         move.l     (a7), d1
000ed6: 7000         moveq      #$0, d0
000ed8: 61000c30     bsr.w      $1b0a
000edc: 4ced0002fffc movem.l    -$4(a5), d1
000ee2: 4e5d         unlk       a5
000ee4: 4e75         rts        
000ee6: 4e550000     link.w     a5, #$0
000eea: 48e7c000     movem.l    d0-d1, -(a7)
000eee: 2217         move.l     (a7), d1
000ef0: 7001         moveq      #$1, d0
000ef2: 61000c16     bsr.w      $1b0a
000ef6: 4ced0002fffc movem.l    -$4(a5), d1
000efc: 4e5d         unlk       a5
000efe: 4e75         rts        
000f00: 4e550000     link.w     a5, #$0
000f04: 48e7c000     movem.l    d0-d1, -(a7)
000f08: 2217         move.l     (a7), d1
000f0a: 7002         moveq      #$2, d0
000f0c: 61000bfc     bsr.w      $1b0a
000f10: 4ced0002fffc movem.l    -$4(a5), d1
000f16: 4e5d         unlk       a5
000f18: 4e75         rts        
000f1a: 4e550000     link.w     a5, #$0
000f1e: 48e7c000     movem.l    d0-d1, -(a7)
000f22: 2217         move.l     (a7), d1
000f24: 7003         moveq      #$3, d0
000f26: 61000be2     bsr.w      $1b0a
000f2a: 4ced0002fffc movem.l    -$4(a5), d1
000f30: 4e5d         unlk       a5
000f32: 4e75         rts        
000f34: 4e550000     link.w     a5, #$0
000f38: 48e7c000     movem.l    d0-d1, -(a7)
000f3c: 2217         move.l     (a7), d1
000f3e: 7004         moveq      #$4, d0
000f40: 61000bc8     bsr.w      $1b0a
000f44: 4ced0002fffc movem.l    -$4(a5), d1
000f4a: 4e5d         unlk       a5
000f4c: 4e75         rts        
000f4e: 4e550000     link.w     a5, #$0
000f52: 48e7c000     movem.l    d0-d1, -(a7)
000f56: 2217         move.l     (a7), d1
000f58: 7006         moveq      #$6, d0
000f5a: 61000bae     bsr.w      $1b0a
000f5e: 4ced0002fffc movem.l    -$4(a5), d1
000f64: 4e5d         unlk       a5
000f66: 4e75         rts        
000f68: 4e550000     link.w     a5, #$0
000f6c: 48e7c000     movem.l    d0-d1, -(a7)
000f70: 2217         move.l     (a7), d1
000f72: 7005         moveq      #$5, d0
000f74: 61000b94     bsr.w      $1b0a
000f78: 4ced0002fffc movem.l    -$4(a5), d1
000f7e: 4e5d         unlk       a5
000f80: 4e75         rts        
000f82: 4e550000     link.w     a5, #$0
000f86: 48e7c000     movem.l    d0-d1, -(a7)
000f8a: 2217         move.l     (a7), d1
000f8c: 61004b9c     bsr.w      $5b2a
000f90: 6100341c     bsr.w      $43ae
000f94: 4ced0002fffc movem.l    -$4(a5), d1
000f9a: 4e5d         unlk       a5
000f9c: 4e75         rts        
000f9e: 4e550000     link.w     a5, #$0
000fa2: 48e78000     movem.l    d0, -(a7)
000fa6: 7001         moveq      #$1, d0
000fa8: 2d40ada2     move.l     d0, -$525e(a6)
000fac: 4e5d         unlk       a5
000fae: 4e75         rts        
000fb0: 4e550000     link.w     a5, #$0
000fb4: 48e78000     movem.l    d0, -(a7)
000fb8: 2d7c00002119adb0 move.l     #$2119, -$5250(a6)
000fc0: 70ff         moveq      #$ff, d0
000fc2: b0aeada6     cmp.l      -$525a(a6), d0
000fc6: 6708         beq.b      $fd0
000fc8: 202eadb0     move.l     -$5250(a6), d0
000fcc: 6100ff18     bsr.w      $ee6
000fd0: 4e5d         unlk       a5
000fd2: 4e75         rts        
000fd4: 4e550000     link.w     a5, #$0
000fd8: 48e78000     movem.l    d0, -(a7)
000fdc: 2d7c00002118adb0 move.l     #$2118, -$5250(a6)
000fe4: 70ff         moveq      #$ff, d0
000fe6: b0aeada6     cmp.l      -$525a(a6), d0
000fea: 6708         beq.b      $ff4
000fec: 202eadb0     move.l     -$5250(a6), d0
000ff0: 6100fef4     bsr.w      $ee6
000ff4: 4e5d         unlk       a5
000ff6: 4e75         rts        
000ff8: 4e550000     link.w     a5, #$0
000ffc: 48e78000     movem.l    d0, -(a7)
001000: 4a6ead76     tst.w      -$528a(a6)
001004: 6604         bne.b      $100a
001006: 7001         moveq      #$1, d0
001008: 6002         bra.b      $100c
00100a: 7000         moveq      #$0, d0
00100c: 4e5d         unlk       a5
00100e: 4e75         rts        
001010: 4e550000     link.w     a5, #$0
001014: 48e78000     movem.l    d0, -(a7)
001018: 202eada2     move.l     -$525e(a6), d0
00101c: 4e5d         unlk       a5
00101e: 4e75         rts        
001020: 4e550000     link.w     a5, #$0
001024: 48e78000     movem.l    d0, -(a7)
001028: 7001         moveq      #$1, d0
00102a: b0aeada6     cmp.l      -$525a(a6), d0
00102e: 6604         bne.b      $1034
001030: 7001         moveq      #$1, d0
001032: 6002         bra.b      $1036
001034: 7000         moveq      #$0, d0
001036: 4e5d         unlk       a5
001038: 4e75         rts        
00103a: 4e550000     link.w     a5, #$0
00103e: 48e78000     movem.l    d0, -(a7)
001042: 7001         moveq      #$1, d0
001044: b0aeada6     cmp.l      -$525a(a6), d0
001048: 660e         bne.b      $1058
00104a: 4a6ead76     tst.w      -$528a(a6)
00104e: 6604         bne.b      $1054
001050: 7000         moveq      #$0, d0
001052: 6006         bra.b      $105a
001054: 7001         moveq      #$1, d0
001056: 6002         bra.b      $105a
001058: 7002         moveq      #$2, d0
00105a: 4e5d         unlk       a5
00105c: 4e75         rts        
00105e: 4e550000     link.w     a5, #$0
001062: 48e78000     movem.l    d0, -(a7)
001066: 7001         moveq      #$1, d0
001068: b0aeadc4     cmp.l      -$523c(a6), d0
00106c: 6604         bne.b      $1072
00106e: 7001         moveq      #$1, d0
001070: 6002         bra.b      $1074
001072: 7000         moveq      #$0, d0
001074: 4e5d         unlk       a5
001076: 4e75         rts        
001078: 4e550000     link.w     a5, #$0
00107c: 48e78000     movem.l    d0, -(a7)
001080: 7001         moveq      #$1, d0
001082: b0aeadc8     cmp.l      -$5238(a6), d0
001086: 6604         bne.b      $108c
001088: 7001         moveq      #$1, d0
00108a: 6002         bra.b      $108e
00108c: 7000         moveq      #$0, d0
00108e: 4e5d         unlk       a5
001090: 4e75         rts        
001092: 4e550000     link.w     a5, #$0
001096: 48e78000     movem.l    d0, -(a7)
00109a: 7001         moveq      #$1, d0
00109c: b0aeadcc     cmp.l      -$5234(a6), d0
0010a0: 6604         bne.b      $10a6
0010a2: 7001         moveq      #$1, d0
0010a4: 6002         bra.b      $10a8
0010a6: 7000         moveq      #$0, d0
0010a8: 4e5d         unlk       a5
0010aa: 4e75         rts        
0010ac: 4e550000     link.w     a5, #$0
0010b0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0010b4: 598f         subq.l     #$4, a7
0010b6: 7203         moveq      #$3, d1
0010b8: 41fa0921     lea.l      $19db(pc), a0
0010bc: 2008         move.l     a0, d0
0010be: 61002fc6     bsr.w      $4086
0010c2: 2e80         move.l     d0, (a7)
0010c4: 6f24         ble.b      $10ea
0010c6: 42a7         clr.l      -(a7)
0010c8: 222f0004     move.l     $4(a7), d1
0010cc: 203c00007f13 move.l     #$7f13, d0
0010d2: 61003e10     bsr.w      $4ee4
0010d6: 588f         addq.l     #$4, a7
0010d8: 42a7         clr.l      -(a7)
0010da: 222f0004     move.l     $4(a7), d1
0010de: 203c00007f12 move.l     #$7f12, d0
0010e4: 61003dfe     bsr.w      $4ee4
0010e8: 588f         addq.l     #$4, a7
0010ea: 588f         addq.l     #$4, a7
0010ec: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0010f2: 4e5d         unlk       a5
0010f4: 4e75         rts        
0010f6: 4e550000     link.w     a5, #$0
0010fa: 48e7c080     movem.l    d0-d1/a0, -(a7)
0010fe: 518f         subq.l     #$8, a7
001100: 4a2e84ec     tst.b      -$7b14(a6)
001104: 673c         beq.b      $1142
001106: 2ebc00000900 move.l     #$900, (a7)
00110c: 600c         bra.b      $111a
00110e: 2017         move.l     (a7), d0
001110: 08c0001f     bset.b     #$1f, d0
001114: 6100476e     bsr.w      $5884
001118: 2e80         move.l     d0, (a7)
00111a: 4a97         tst.l      (a7)
00111c: 66f0         bne.b      $110e
00111e: 7203         moveq      #$3, d1
001120: 41fa08bf     lea.l      $19e1(pc), a0
001124: 2008         move.l     a0, d0
001126: 61002f5e     bsr.w      $4086
00112a: 2f400004     move.l     d0, $4(a7)
00112e: 6f12         ble.b      $1142
001130: 42a7         clr.l      -(a7)
001132: 222f0008     move.l     $8(a7), d1
001136: 203c00007f12 move.l     #$7f12, d0
00113c: 61003da6     bsr.w      $4ee4
001140: 588f         addq.l     #$4, a7
001142: 508f         addq.l     #$8, a7
001144: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00114a: 4e5d         unlk       a5
00114c: 4e75         rts        
00114e: 4e550000     link.w     a5, #$0
001152: 48e78000     movem.l    d0, -(a7)
001156: 598f         subq.l     #$4, a7
001158: 4297         clr.l      (a7)
00115a: 7000         moveq      #$0, d0
00115c: 61000982     bsr.w      $1ae0
001160: 4a80         tst.l      d0
001162: 6608         bne.b      $116c
001164: 7000         moveq      #$0, d0
001166: 61000c34     bsr.w      $1d9c
00116a: 2e80         move.l     d0, (a7)
00116c: 2017         move.l     (a7), d0
00116e: 588f         addq.l     #$4, a7
001170: 4e5d         unlk       a5
001172: 4e75         rts        
001174: 4e550000     link.w     a5, #$0
001178: 48e78000     movem.l    d0, -(a7)
00117c: 598f         subq.l     #$4, a7
00117e: 4297         clr.l      (a7)
001180: 7004         moveq      #$4, d0
001182: 6100095c     bsr.w      $1ae0
001186: 4a80         tst.l      d0
001188: 6608         bne.b      $1192
00118a: 7004         moveq      #$4, d0
00118c: 61000c0e     bsr.w      $1d9c
001190: 2e80         move.l     d0, (a7)
001192: 2017         move.l     (a7), d0
001194: 588f         addq.l     #$4, a7
001196: 4e5d         unlk       a5
001198: 4e75         rts        
00119a: 4e550000     link.w     a5, #$0
00119e: 48e78000     movem.l    d0, -(a7)
0011a2: 598f         subq.l     #$4, a7
0011a4: 4297         clr.l      (a7)
0011a6: 7001         moveq      #$1, d0
0011a8: 61000936     bsr.w      $1ae0
0011ac: 4a80         tst.l      d0
0011ae: 6608         bne.b      $11b8
0011b0: 7001         moveq      #$1, d0
0011b2: 61000be8     bsr.w      $1d9c
0011b6: 2e80         move.l     d0, (a7)
0011b8: 2017         move.l     (a7), d0
0011ba: 588f         addq.l     #$4, a7
0011bc: 4e5d         unlk       a5
0011be: 4e75         rts        
0011c0: 4e550000     link.w     a5, #$0
0011c4: 48e78000     movem.l    d0, -(a7)
0011c8: 598f         subq.l     #$4, a7
0011ca: 4297         clr.l      (a7)
0011cc: 7002         moveq      #$2, d0
0011ce: 61000910     bsr.w      $1ae0
0011d2: 4a80         tst.l      d0
0011d4: 6608         bne.b      $11de
0011d6: 7002         moveq      #$2, d0
0011d8: 61000bc2     bsr.w      $1d9c
0011dc: 2e80         move.l     d0, (a7)
0011de: 2017         move.l     (a7), d0
0011e0: 588f         addq.l     #$4, a7
0011e2: 4e5d         unlk       a5
0011e4: 4e75         rts        
0011e6: 4e550000     link.w     a5, #$0
0011ea: 48e78000     movem.l    d0, -(a7)
0011ee: 598f         subq.l     #$4, a7
0011f0: 4297         clr.l      (a7)
0011f2: 7003         moveq      #$3, d0
0011f4: 610008ea     bsr.w      $1ae0
0011f8: 4a80         tst.l      d0
0011fa: 6608         bne.b      $1204
0011fc: 7003         moveq      #$3, d0
0011fe: 61000b9c     bsr.w      $1d9c
001202: 2e80         move.l     d0, (a7)
001204: 2017         move.l     (a7), d0
001206: 588f         addq.l     #$4, a7
001208: 4e5d         unlk       a5
00120a: 4e75         rts        
00120c: 4e550000     link.w     a5, #$0
001210: 48e78000     movem.l    d0, -(a7)
001214: 598f         subq.l     #$4, a7
001216: 4297         clr.l      (a7)
001218: 7005         moveq      #$5, d0
00121a: 610008c4     bsr.w      $1ae0
00121e: 4a80         tst.l      d0
001220: 6608         bne.b      $122a
001222: 7005         moveq      #$5, d0
001224: 61000b76     bsr.w      $1d9c
001228: 2e80         move.l     d0, (a7)
00122a: 2017         move.l     (a7), d0
00122c: 588f         addq.l     #$4, a7
00122e: 4e5d         unlk       a5
001230: 4e75         rts        
001232: 4e550000     link.w     a5, #$0
001236: 48e78000     movem.l    d0, -(a7)
00123a: 598f         subq.l     #$4, a7
00123c: 4297         clr.l      (a7)
00123e: 7006         moveq      #$6, d0
001240: 6100089e     bsr.w      $1ae0
001244: 4a80         tst.l      d0
001246: 6608         bne.b      $1250
001248: 7006         moveq      #$6, d0
00124a: 61000b50     bsr.w      $1d9c
00124e: 2e80         move.l     d0, (a7)
001250: 2017         move.l     (a7), d0
001252: 588f         addq.l     #$4, a7
001254: 4e5d         unlk       a5
001256: 4e75         rts        
001258: 4e550000     link.w     a5, #$0
00125c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001260: 2f3ca95acd82 move.l     #$a95acd82, -(a7)
001266: 48780003     pea.l      $3.w
00126a: 42a7         clr.l      -(a7)
00126c: 42a7         clr.l      -(a7)
00126e: 2f2e84e8     move.l     -$7b18(a6), -(a7)
001272: 486ead92     pea.l      -$526e(a6)
001276: 222ead92     move.l     -$526e(a6), d1
00127a: 41fb017000004852 lea.l      $4852(a16, invalid.w), a0
001282: 2008         move.l     a0, d0
001284: 6100333c     bsr.w      $45c2
001288: 4fef0018     lea.l      $18(a7), a7
00128c: 4a80         tst.l      d0
00128e: 7000         moveq      #$0, d0
001290: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001296: 4e5d         unlk       a5
001298: 4e75         rts        
00129a: 4e550000     link.w     a5, #$0
00129e: 48e7c080     movem.l    d0-d1/a0, -(a7)
0012a2: 610007de     bsr.w      $1a82
0012a6: 72ff         moveq      #$ff, d1
0012a8: b280         cmp.l      d0, d1
0012aa: 2f3ca95acd82 move.l     #$a95acd82, -(a7)
0012b0: 48780003     pea.l      $3.w
0012b4: 42a7         clr.l      -(a7)
0012b6: 42a7         clr.l      -(a7)
0012b8: 2f2e84e8     move.l     -$7b18(a6), -(a7)
0012bc: 486ead9a     pea.l      -$5266(a6)
0012c0: 222ead9a     move.l     -$5266(a6), d1
0012c4: 41fb0170000047f8 lea.l      $47f8(a16, invalid.w), a0
0012cc: 2008         move.l     a0, d0
0012ce: 610032f2     bsr.w      $45c2
0012d2: 4fef0018     lea.l      $18(a7), a7
0012d6: 4a80         tst.l      d0
0012d8: 7000         moveq      #$0, d0
0012da: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0012e0: 4e5d         unlk       a5
0012e2: 4e75         rts        
0012e4: 4e550000     link.w     a5, #$0
0012e8: 48e78000     movem.l    d0, -(a7)
0012ec: 203c00002105 move.l     #$2105, d0
0012f2: 6100fbf2     bsr.w      $ee6
0012f6: 7001         moveq      #$1, d0
0012f8: 2d40ada6     move.l     d0, -$525a(a6)
0012fc: 70ff         moveq      #$ff, d0
0012fe: b0aeadb0     cmp.l      -$5250(a6), d0
001302: 6708         beq.b      $130c
001304: 202eadb0     move.l     -$5250(a6), d0
001308: 6100fbdc     bsr.w      $ee6
00130c: 7000         moveq      #$0, d0
00130e: 4e5d         unlk       a5
001310: 4e75         rts        
001312: 4e550000     link.w     a5, #$0
001316: 48e78000     movem.l    d0, -(a7)
00131a: 0c2e0001adae cmpi.b     #$1, -$5252(a6)
001320: 6622         bne.b      $1344
001322: 7002         moveq      #$2, d0
001324: 2d40ada6     move.l     d0, -$525a(a6)
001328: 203c00002106 move.l     #$2106, d0
00132e: 6100fbb6     bsr.w      $ee6
001332: 70ff         moveq      #$ff, d0
001334: b0aeadb0     cmp.l      -$5250(a6), d0
001338: 6710         beq.b      $134a
00133a: 202eadb0     move.l     -$5250(a6), d0
00133e: 6100fba6     bsr.w      $ee6
001342: 6006         bra.b      $134a
001344: 7003         moveq      #$3, d0
001346: 2d40adaa     move.l     d0, -$5256(a6)
00134a: 7000         moveq      #$0, d0
00134c: 4e5d         unlk       a5
00134e: 4e75         rts        
001350: 4e550000     link.w     a5, #$0
001354: 48e78000     movem.l    d0, -(a7)
001358: 1d7c0001adae move.b     #$1, -$5252(a6)
00135e: 7003         moveq      #$3, d0
001360: b0aeadaa     cmp.l      -$5256(a6), d0
001364: 6620         bne.b      $1386
001366: 7002         moveq      #$2, d0
001368: 2d40ada6     move.l     d0, -$525a(a6)
00136c: 203c00002106 move.l     #$2106, d0
001372: 6100fb72     bsr.w      $ee6
001376: 70ff         moveq      #$ff, d0
001378: b0aeadb0     cmp.l      -$5250(a6), d0
00137c: 6708         beq.b      $1386
00137e: 202eadb0     move.l     -$5250(a6), d0
001382: 6100fb62     bsr.w      $ee6
001386: 7000         moveq      #$0, d0
001388: 4e5d         unlk       a5
00138a: 4e75         rts        
00138c: 4e550000     link.w     a5, #$0
001390: 48e78000     movem.l    d0, -(a7)
001394: 203c0000230e move.l     #$230e, d0
00139a: 6100fb7e     bsr.w      $f1a
00139e: 7000         moveq      #$0, d0
0013a0: 4e5d         unlk       a5
0013a2: 4e75         rts        
0013a4: 4e550000     link.w     a5, #$0
0013a8: 48e78000     movem.l    d0, -(a7)
0013ac: 203c0000230f move.l     #$230f, d0
0013b2: 6100fb66     bsr.w      $f1a
0013b6: 7000         moveq      #$0, d0
0013b8: 4e5d         unlk       a5
0013ba: 4e75         rts        
0013bc: 4e550000     link.w     a5, #$0
0013c0: 48e78000     movem.l    d0, -(a7)
0013c4: 203c00002218 move.l     #$2218, d0
0013ca: 6100fb34     bsr.w      $f00
0013ce: 7000         moveq      #$0, d0
0013d0: 4e5d         unlk       a5
0013d2: 4e75         rts        
0013d4: 4e550000     link.w     a5, #$0
0013d8: 48e78000     movem.l    d0, -(a7)
0013dc: 203c00002219 move.l     #$2219, d0
0013e2: 6100fb1c     bsr.w      $f00
0013e6: 7000         moveq      #$0, d0
0013e8: 4e5d         unlk       a5
0013ea: 4e75         rts        
0013ec: 4e550000     link.w     a5, #$0
0013f0: 48e78000     movem.l    d0, -(a7)
0013f4: 203c0000230c move.l     #$230c, d0
0013fa: 6100fb1e     bsr.w      $f1a
0013fe: 7000         moveq      #$0, d0
001400: 4e5d         unlk       a5
001402: 4e75         rts        
001404: 4e550000     link.w     a5, #$0
001408: 48e78000     movem.l    d0, -(a7)
00140c: 203c00002123 move.l     #$2123, d0
001412: 6100fad2     bsr.w      $ee6
001416: 7000         moveq      #$0, d0
001418: 4e5d         unlk       a5
00141a: 4e75         rts        
00141c: 4e550000     link.w     a5, #$0
001420: 48e78000     movem.l    d0, -(a7)
001424: 203c00002122 move.l     #$2122, d0
00142a: 6100faba     bsr.w      $ee6
00142e: 7000         moveq      #$0, d0
001430: 4e5d         unlk       a5
001432: 4e75         rts        
001434: 4e550000     link.w     a5, #$0
001438: 48e78000     movem.l    d0, -(a7)
00143c: 1d7c0001add0 move.b     #$1, -$5230(a6)
001442: 7000         moveq      #$0, d0
001444: 4e5d         unlk       a5
001446: 4e75         rts        
001448: 4e550000     link.w     a5, #$0
00144c: 48e78000     movem.l    d0, -(a7)
001450: 422eadd0     clr.b      -$5230(a6)
001454: 7000         moveq      #$0, d0
001456: 4e5d         unlk       a5
001458: 4e75         rts        
00145a: 4e550000     link.w     a5, #$0
00145e: 48e78000     movem.l    d0, -(a7)
001462: 7000         moveq      #$0, d0
001464: 102eadd0     move.b     -$5230(a6), d0
001468: 4e5d         unlk       a5
00146a: 4e75         rts        
00146c: 4e550000     link.w     a5, #$0
001470: 48e78000     movem.l    d0, -(a7)
001474: 7001         moveq      #$1, d0
001476: b0aeadc0     cmp.l      -$5240(a6), d0
00147a: 6604         bne.b      $1480
00147c: 7000         moveq      #$0, d0
00147e: 6002         bra.b      $1482
001480: 7001         moveq      #$1, d0
001482: 4e5d         unlk       a5
001484: 4e75         rts        
001486: 4e550000     link.w     a5, #$0
00148a: 48e78000     movem.l    d0, -(a7)
00148e: 7001         moveq      #$1, d0
001490: b0aeadc0     cmp.l      -$5240(a6), d0
001494: 6604         bne.b      $149a
001496: 7000         moveq      #$0, d0
001498: 6002         bra.b      $149c
00149a: 7001         moveq      #$1, d0
00149c: 4e5d         unlk       a5
00149e: 4e75         rts        
0014a0: 4e550000     link.w     a5, #$0
0014a4: 48e78000     movem.l    d0, -(a7)
0014a8: 7001         moveq      #$1, d0
0014aa: b0aeadc0     cmp.l      -$5240(a6), d0
0014ae: 6604         bne.b      $14b4
0014b0: 7000         moveq      #$0, d0
0014b2: 6002         bra.b      $14b6
0014b4: 7001         moveq      #$1, d0
0014b6: 4e5d         unlk       a5
0014b8: 4e75         rts        
0014ba: 4e550000     link.w     a5, #$0
0014be: 48e78000     movem.l    d0, -(a7)
0014c2: 7001         moveq      #$1, d0
0014c4: b0aeadc0     cmp.l      -$5240(a6), d0
0014c8: 6604         bne.b      $14ce
0014ca: 7000         moveq      #$0, d0
0014cc: 6002         bra.b      $14d0
0014ce: 7001         moveq      #$1, d0
0014d0: 4e5d         unlk       a5
0014d2: 4e75         rts        
0014d4: 4e550000     link.w     a5, #$0
0014d8: 48e78000     movem.l    d0, -(a7)
0014dc: 7001         moveq      #$1, d0
0014de: b0aeadc0     cmp.l      -$5240(a6), d0
0014e2: 6604         bne.b      $14e8
0014e4: 7000         moveq      #$0, d0
0014e6: 6002         bra.b      $14ea
0014e8: 7001         moveq      #$1, d0
0014ea: 4e5d         unlk       a5
0014ec: 4e75         rts        
0014ee: 4e550000     link.w     a5, #$0
0014f2: 48e78000     movem.l    d0, -(a7)
0014f6: 7001         moveq      #$1, d0
0014f8: b0aeadc0     cmp.l      -$5240(a6), d0
0014fc: 6604         bne.b      $1502
0014fe: 7000         moveq      #$0, d0
001500: 6002         bra.b      $1504
001502: 7001         moveq      #$1, d0
001504: 4e5d         unlk       a5
001506: 4e75         rts        
001508: 4e550000     link.w     a5, #$0
00150c: 48e78000     movem.l    d0, -(a7)
001510: 7001         moveq      #$1, d0
001512: b0aeadc0     cmp.l      -$5240(a6), d0
001516: 6604         bne.b      $151c
001518: 7000         moveq      #$0, d0
00151a: 6002         bra.b      $151e
00151c: 7001         moveq      #$1, d0
00151e: 4e5d         unlk       a5
001520: 4e75         rts        
001522: 4e550000     link.w     a5, #$0
001526: 48e7c080     movem.l    d0-d1/a0, -(a7)
00152a: 3d7c07d1ad84 move.w     #$7d1, -$527c(a6)
001530: 7212         moveq      #$12, d1
001532: 41eead80     lea.l      -$5280(a6), a0
001536: 2008         move.l     a0, d0
001538: 61000b94     bsr.w      $20ce
00153c: 7000         moveq      #$0, d0
00153e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001544: 4e5d         unlk       a5
001546: 4e75         rts        
001548: 4e550000     link.w     a5, #$0
00154c: 48e7c000     movem.l    d0-d1, -(a7)
001550: 223c00002100 move.l     #$2100, d1
001556: 7001         moveq      #$1, d0
001558: 610005b0     bsr.w      $1b0a
00155c: 72ff         moveq      #$ff, d1
00155e: b280         cmp.l      d0, d1
001560: 660a         bne.b      $156c
001562: 203c00002491 move.l     #$2491, d0
001568: 6100fa18     bsr.w      $f82
00156c: 4ced0002fffc movem.l    -$4(a5), d1
001572: 4e5d         unlk       a5
001574: 4e75         rts        
001576: 4e550000     link.w     a5, #$0
00157a: 48e7c000     movem.l    d0-d1, -(a7)
00157e: 223c00002308 move.l     #$2308, d1
001584: 7003         moveq      #$3, d0
001586: 61000582     bsr.w      $1b0a
00158a: 72ff         moveq      #$ff, d1
00158c: b280         cmp.l      d0, d1
00158e: 660a         bne.b      $159a
001590: 203c00002493 move.l     #$2493, d0
001596: 6100f9ea     bsr.w      $f82
00159a: 4ced0002fffc movem.l    -$4(a5), d1
0015a0: 4e5d         unlk       a5
0015a2: 4e75         rts        
0015a4: 4e550000     link.w     a5, #$0
0015a8: 48e7c000     movem.l    d0-d1, -(a7)
0015ac: 223c00002204 move.l     #$2204, d1
0015b2: 7002         moveq      #$2, d0
0015b4: 61000554     bsr.w      $1b0a
0015b8: 72ff         moveq      #$ff, d1
0015ba: b280         cmp.l      d0, d1
0015bc: 660a         bne.b      $15c8
0015be: 203c00002492 move.l     #$2492, d0
0015c4: 6100f9bc     bsr.w      $f82
0015c8: 4ced0002fffc movem.l    -$4(a5), d1
0015ce: 4e5d         unlk       a5
0015d0: 4e75         rts        
0015d2: 4e550000     link.w     a5, #$0
0015d6: 48e7c000     movem.l    d0-d1, -(a7)
0015da: 223c00002401 move.l     #$2401, d1
0015e0: 7004         moveq      #$4, d0
0015e2: 61000526     bsr.w      $1b0a
0015e6: 72ff         moveq      #$ff, d1
0015e8: b280         cmp.l      d0, d1
0015ea: 660a         bne.b      $15f6
0015ec: 203c00002495 move.l     #$2495, d0
0015f2: 6100f98e     bsr.w      $f82
0015f6: 4ced0002fffc movem.l    -$4(a5), d1
0015fc: 4e5d         unlk       a5
0015fe: 4e75         rts        
001600: 4e550000     link.w     a5, #$0
001604: 48e7c000     movem.l    d0-d1, -(a7)
001608: 223c00002426 move.l     #$2426, d1
00160e: 7006         moveq      #$6, d0
001610: 610004f8     bsr.w      $1b0a
001614: 72ff         moveq      #$ff, d1
001616: b280         cmp.l      d0, d1
001618: 660a         bne.b      $1624
00161a: 203c0000249b move.l     #$249b, d0
001620: 6100f960     bsr.w      $f82
001624: 4ced0002fffc movem.l    -$4(a5), d1
00162a: 4e5d         unlk       a5
00162c: 4e75         rts        
00162e: 4e550000     link.w     a5, #$0
001632: 48e7c000     movem.l    d0-d1, -(a7)
001636: 223c000025e4 move.l     #$25e4, d1
00163c: 7005         moveq      #$5, d0
00163e: 610004ca     bsr.w      $1b0a
001642: 72ff         moveq      #$ff, d1
001644: b280         cmp.l      d0, d1
001646: 660a         bne.b      $1652
001648: 203c00002496 move.l     #$2496, d0
00164e: 6100f932     bsr.w      $f82
001652: 4ced0002fffc movem.l    -$4(a5), d1
001658: 4e5d         unlk       a5
00165a: 4e75         rts        
00165c: 4e550000     link.w     a5, #$0
001660: 48e7c000     movem.l    d0-d1, -(a7)
001664: 223c0000202d move.l     #$202d, d1
00166a: 7000         moveq      #$0, d0
00166c: 6100049c     bsr.w      $1b0a
001670: 72ff         moveq      #$ff, d1
001672: b280         cmp.l      d0, d1
001674: 660a         bne.b      $1680
001676: 203c00002490 move.l     #$2490, d0
00167c: 6100f904     bsr.w      $f82
001680: 4ced0002fffc movem.l    -$4(a5), d1
001686: 4e5d         unlk       a5
001688: 4e75         rts        
00168a: 4e550000     link.w     a5, #$0
00168e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001692: 4feffff6     lea.l      -$a(a7), a7
001696: 7001         moveq      #$1, d0
001698: 61001cf4     bsr.w      $338e
00169c: 41d7         lea.l      (a7), a0
00169e: 2008         move.l     a0, d0
0016a0: 610015b0     bsr.w      $2c52
0016a4: 7002         moveq      #$2, d0
0016a6: 61001ce6     bsr.w      $338e
0016aa: 7203         moveq      #$3, d1
0016ac: 41fa0350     lea.l      $19fe(pc), a0
0016b0: 2008         move.l     a0, d0
0016b2: 610029d2     bsr.w      $4086
0016b6: 2f400006     move.l     d0, $6(a7)
0016ba: 6f3c         ble.b      $16f8
0016bc: 7000         moveq      #$0, d0
0016be: 302f0004     move.w     $4(a7), d0
0016c2: 2f00         move.l     d0, -(a7)
0016c4: 222f000a     move.l     $a(a7), d1
0016c8: 203c00007f1d move.l     #$7f1d, d0
0016ce: 61003814     bsr.w      $4ee4
0016d2: 588f         addq.l     #$4, a7
0016d4: 2017         move.l     (a7), d0
0016d6: 4c7c00000000003c divu.l     #$3c, d0
0016de: 2f00         move.l     d0, -(a7)
0016e0: 222f000a     move.l     $a(a7), d1
0016e4: 203c00007f22 move.l     #$7f22, d0
0016ea: 610037f8     bsr.w      $4ee4
0016ee: 588f         addq.l     #$4, a7
0016f0: 202f0006     move.l     $6(a7), d0
0016f4: 610039fc     bsr.w      $50f2
0016f8: 4fef000a     lea.l      $a(a7), a7
0016fc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001702: 4e5d         unlk       a5
001704: 4e75         rts        
001706: 4e550000     link.w     a5, #$0
00170a: 48e78000     movem.l    d0, -(a7)
00170e: 61001cdc     bsr.w      $33ec
001712: 4e5d         unlk       a5
001714: 4e75         rts        
001716: 4e550000     link.w     a5, #$0
00171a: 48e78000     movem.l    d0, -(a7)
00171e: 6100ff6a     bsr.w      $168a
001722: 4e5d         unlk       a5
001724: 4e75         rts        
001726: 4e550000     link.w     a5, #$0
00172a: 48e78000     movem.l    d0, -(a7)
00172e: 6100f530     bsr.w      $c60
001732: 6100fe14     bsr.w      $1548
001736: 7000         moveq      #$0, d0
001738: 6100f6b8     bsr.w      $df2
00173c: 7000         moveq      #$0, d0
00173e: 6100f730     bsr.w      $e70
001742: 4e5d         unlk       a5
001744: 4e75         rts        
001746: 4e550000     link.w     a5, #$0
00174a: 48e78000     movem.l    d0, -(a7)
00174e: 6100f54e     bsr.w      $c9e
001752: 6100fdf4     bsr.w      $1548
001756: 7000         moveq      #$0, d0
001758: 6100f698     bsr.w      $df2
00175c: 7000         moveq      #$0, d0
00175e: 6100f710     bsr.w      $e70
001762: 4e5d         unlk       a5
001764: 4e75         rts        
001766: 4e550000     link.w     a5, #$0
00176a: 48e78000     movem.l    d0, -(a7)
00176e: 6100f922     bsr.w      $1092
001772: 4a80         tst.l      d0
001774: 6614         bne.b      $178a
001776: 6100f546     bsr.w      $cbe
00177a: 6100fdcc     bsr.w      $1548
00177e: 7000         moveq      #$0, d0
001780: 6100f670     bsr.w      $df2
001784: 7000         moveq      #$0, d0
001786: 6100f6e8     bsr.w      $e70
00178a: 4e5d         unlk       a5
00178c: 4e75         rts        
00178e: 4e550000     link.w     a5, #$0
001792: 48e78000     movem.l    d0, -(a7)
001796: 6100f4e6     bsr.w      $c7e
00179a: 6100fdac     bsr.w      $1548
00179e: 7003         moveq      #$3, d0
0017a0: 6100f650     bsr.w      $df2
0017a4: 7000         moveq      #$0, d0
0017a6: 6100f6c8     bsr.w      $e70
0017aa: 4e5d         unlk       a5
0017ac: 4e75         rts        
0017ae: 4e550000     link.w     a5, #$0
0017b2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0017b6: 598f         subq.l     #$4, a7
0017b8: 7203         moveq      #$3, d1
0017ba: 41fa0248     lea.l      $1a04(pc), a0
0017be: 2008         move.l     a0, d0
0017c0: 610028c4     bsr.w      $4086
0017c4: 2e80         move.l     d0, (a7)
0017c6: 6f12         ble.b      $17da
0017c8: 2217         move.l     (a7), d1
0017ca: 203c00007f2e move.l     #$7f2e, d0
0017d0: 61003712     bsr.w      $4ee4
0017d4: 2017         move.l     (a7), d0
0017d6: 6100391a     bsr.w      $50f2
0017da: 588f         addq.l     #$4, a7
0017dc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0017e2: 4e5d         unlk       a5
0017e4: 4e75         rts        
0017e6: 4e550000     link.w     a5, #$0
0017ea: 48e7c080     movem.l    d0-d1/a0, -(a7)
0017ee: 598f         subq.l     #$4, a7
0017f0: 7203         moveq      #$3, d1
0017f2: 41fa0216     lea.l      $1a0a(pc), a0
0017f6: 2008         move.l     a0, d0
0017f8: 6100288c     bsr.w      $4086
0017fc: 2e80         move.l     d0, (a7)
0017fe: 6f12         ble.b      $1812
001800: 2217         move.l     (a7), d1
001802: 203c00007f1f move.l     #$7f1f, d0
001808: 610036da     bsr.w      $4ee4
00180c: 2017         move.l     (a7), d0
00180e: 610038e2     bsr.w      $50f2
001812: 7000         moveq      #$0, d0
001814: 588f         addq.l     #$4, a7
001816: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00181c: 4e5d         unlk       a5
00181e: 4e75         rts        
001820: 4e550000     link.w     a5, #$0
001824: 48e7c080     movem.l    d0-d1/a0, -(a7)
001828: 598f         subq.l     #$4, a7
00182a: 7203         moveq      #$3, d1
00182c: 41fa01e2     lea.l      $1a10(pc), a0
001830: 2008         move.l     a0, d0
001832: 61002852     bsr.w      $4086
001836: 2e80         move.l     d0, (a7)
001838: 6f12         ble.b      $184c
00183a: 2217         move.l     (a7), d1
00183c: 203c00007f1e move.l     #$7f1e, d0
001842: 610036a0     bsr.w      $4ee4
001846: 2017         move.l     (a7), d0
001848: 610038a8     bsr.w      $50f2
00184c: 588f         addq.l     #$4, a7
00184e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001854: 4e5d         unlk       a5
001856: 4e75         rts        
001858: 4e550000     link.w     a5, #$0
00185c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001860: 598f         subq.l     #$4, a7
001862: 7203         moveq      #$3, d1
001864: 41fa01b0     lea.l      $1a16(pc), a0
001868: 2008         move.l     a0, d0
00186a: 6100281a     bsr.w      $4086
00186e: 2e80         move.l     d0, (a7)
001870: 6f12         ble.b      $1884
001872: 2217         move.l     (a7), d1
001874: 203c00007f15 move.l     #$7f15, d0
00187a: 61003668     bsr.w      $4ee4
00187e: 2017         move.l     (a7), d0
001880: 61003870     bsr.w      $50f2
001884: 223c00000081 move.l     #$81, d1
00188a: 41fa0190     lea.l      $1a1c(pc), a0
00188e: 2008         move.l     a0, d0
001890: 610027f4     bsr.w      $4086
001894: 2e80         move.l     d0, (a7)
001896: 6f18         ble.b      $18b0
001898: 42a7         clr.l      -(a7)
00189a: 222f0004     move.l     $4(a7), d1
00189e: 203c0000ff20 move.l     #$ff20, d0
0018a4: 6100363e     bsr.w      $4ee4
0018a8: 588f         addq.l     #$4, a7
0018aa: 2017         move.l     (a7), d0
0018ac: 61003844     bsr.w      $50f2
0018b0: 588f         addq.l     #$4, a7
0018b2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0018b8: 4e5d         unlk       a5
0018ba: 4e75         rts        
0018bc: 4e550000     link.w     a5, #$0
0018c0: 48e78000     movem.l    d0, -(a7)
0018c4: 61001b94     bsr.w      $345a
0018c8: 6100ff8e     bsr.w      $1858
0018cc: 4e5d         unlk       a5
0018ce: 4e75         rts        
0018d0: 4e550000     link.w     a5, #$0
0018d4: 48e78000     movem.l    d0, -(a7)
0018d8: 203c00002100 move.l     #$2100, d0
0018de: 6100f606     bsr.w      $ee6
0018e2: 6100fda6     bsr.w      $168a
0018e6: 61001b72     bsr.w      $345a
0018ea: 6100fec2     bsr.w      $17ae
0018ee: 7000         moveq      #$0, d0
0018f0: 6100f500     bsr.w      $df2
0018f4: 7000         moveq      #$0, d0
0018f6: 6100f578     bsr.w      $e70
0018fa: 6100f7fa     bsr.w      $10f6
0018fe: 4e5d         unlk       a5
001900: 4e75         rts        
001902: 4e550000     link.w     a5, #$0
001906: 48e7c080     movem.l    d0-d1/a0, -(a7)
00190a: 4fefffe0     lea.l      -$20(a7), a7
00190e: 42af0008     clr.l      $8(a7)
001912: 41ef0014     lea.l      $14(a7), a0
001916: 2008         move.l     a0, d0
001918: 61001794     bsr.w      $30ae
00191c: 72ff         moveq      #$ff, d1
00191e: b280         cmp.l      d0, d1
001920: 67000098     beq.w      $19ba
001924: 7000         moveq      #$0, d0
001926: 102f0016     move.b     $16(a7), d0
00192a: 6100f2e8     bsr.w      $c14
00192e: 7200         moveq      #$0, d1
001930: 1200         move.b     d0, d1
001932: 2f41000c     move.l     d1, $c(a7)
001936: 203c00000100 move.l     #$100, d0
00193c: d0af000c     add.l      $c(a7), d0
001940: 2f40000c     move.l     d0, $c(a7)
001944: 1f7c00ff0013 move.b     #$ff, $13(a7)
00194a: 0caf00000090000c cmpi.l     #$90, $c(a7)
001952: 6408         bcc.b      $195c
001954: 7060         moveq      #$60, d0
001956: b0af000c     cmp.l      $c(a7), d0
00195a: 631a         bls.b      $1976
00195c: 7000         moveq      #$0, d0
00195e: 102f0014     move.b     $14(a7), d0
001962: 6100f272     bsr.w      $bd6
001966: 1f400010     move.b     d0, $10(a7)
00196a: 7000         moveq      #$0, d0
00196c: 1f400012     move.b     d0, $12(a7)
001970: 1f400011     move.b     d0, $11(a7)
001974: 6010         bra.b      $1986
001976: 1f6f00190010 move.b     $19(a7), $10(a7)
00197c: 1f6f001b0011 move.b     $1b(a7), $11(a7)
001982: 422f0012     clr.b      $12(a7)
001986: 41ef000c     lea.l      $c(a7), a0
00198a: 2008         move.l     a0, d0
00198c: 61000cc8     bsr.w      $2656
001990: 7030         moveq      #$30, d0
001992: c02f0015     and.b      $15(a7), d0
001996: 0c000030     cmpi.b     #$30, d0
00199a: 6606         bne.b      $19a2
00199c: 7001         moveq      #$1, d0
00199e: 2f400008     move.l     d0, $8(a7)
0019a2: 7001         moveq      #$1, d0
0019a4: b0af0008     cmp.l      $8(a7), d0
0019a8: 6614         bne.b      $19be
0019aa: 7070         moveq      #$70, d0
0019ac: b0af000c     cmp.l      $c(a7), d0
0019b0: 660c         bne.b      $19be
0019b2: 7002         moveq      #$2, d0
0019b4: 2f400008     move.l     d0, $8(a7)
0019b8: 6004         bra.b      $19be
0019ba: 42af0008     clr.l      $8(a7)
0019be: 202f0008     move.l     $8(a7), d0
0019c2: 4fef0020     lea.l      $20(a7), a7
0019c6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0019cc: 4e5d         unlk       a5
0019ce: 4e75         rts        
0019d0: 7368         .dc.w      $7368
0019d2: 656c         bcs.b      $1a40
0019d4: 6c006469     bge.w      $7e3f
0019d8: 6167         bsr.b      $1a41
0019da: 002f63633933 ori.b      #$63, $3933(a7)
0019e0: 002f63633933 ori.b      #$63, $3933(a7)
0019e6: 00616c72     ori.w      #$6c72, -(a1)
0019ea: 6561         bcs.b      $1a4d
0019ec: 6479         bcc.b      $1a67
0019ee: 2072756e6e69 movea.l    ([$6e69, a2]), a0
0019f4: 6e67         bgt.b      $1a5d
0019f6: 00657869     ori.w      #$7869, -(a5)
0019fa: 7465         moveq      #$65, d2
0019fc: 64002f63     bcc.w      $4961
001a00: 6339         bls.b      $1a3b
001a02: 3300         move.w     d0, -(a1)
001a04: 2f636339     move.l     -(a3), $6339(a7)
001a08: 3300         move.w     d0, -(a1)
001a0a: 2f636339     move.l     -(a3), $6339(a7)
001a0e: 3300         move.w     d0, -(a1)
001a10: 2f636339     move.l     -(a3), $6339(a7)
001a14: 3300         move.w     d0, -(a1)
001a16: 2f636339     move.l     -(a3), $6339(a7)
001a1a: 3300         move.w     d0, -(a1)
001a1c: 2f63302f     move.l     -(a3), $302f(a7)
001a20: 5f313239     subq.b     #$7, $39(a1, d3.w)
001a24: 5f2f6e76     subq.b     #$7, $6e76(a7)
001a28: 7200         moveq      #$0, d1
001a2a: 4e550000     link.w     a5, #$0
001a2e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001a32: 518f         subq.l     #$8, a7
001a34: 70ff         moveq      #$ff, d0
001a36: 2f400004     move.l     d0, $4(a7)
001a3a: 7203         moveq      #$3, d1
001a3c: 41fa0096     lea.l      $1ad4(pc), a0
001a40: 2008         move.l     a0, d0
001a42: 6100367e     bsr.w      $50c2
001a46: 2e80         move.l     d0, (a7)
001a48: 72ff         moveq      #$ff, d1
001a4a: b280         cmp.l      d0, d1
001a4c: 6724         beq.b      $1a72
001a4e: 48782432     pea.l      $2432.w
001a52: 222f0004     move.l     $4(a7), d1
001a56: 203c00007f0c move.l     #$7f0c, d0
001a5c: 61003486     bsr.w      $4ee4
001a60: 588f         addq.l     #$4, a7
001a62: 72ff         moveq      #$ff, d1
001a64: b280         cmp.l      d0, d1
001a66: 6704         beq.b      $1a6c
001a68: 42af0004     clr.l      $4(a7)
001a6c: 2017         move.l     (a7), d0
001a6e: 61003682     bsr.w      $50f2
001a72: 202f0004     move.l     $4(a7), d0
001a76: 508f         addq.l     #$8, a7
001a78: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001a7e: 4e5d         unlk       a5
001a80: 4e75         rts        
001a82: 4e550000     link.w     a5, #$0
001a86: 48e7c080     movem.l    d0-d1/a0, -(a7)
001a8a: 518f         subq.l     #$8, a7
001a8c: 70ff         moveq      #$ff, d0
001a8e: 2f400004     move.l     d0, $4(a7)
001a92: 7203         moveq      #$3, d1
001a94: 41fa0044     lea.l      $1ada(pc), a0
001a98: 2008         move.l     a0, d0
001a9a: 61003626     bsr.w      $50c2
001a9e: 2e80         move.l     d0, (a7)
001aa0: 72ff         moveq      #$ff, d1
001aa2: b280         cmp.l      d0, d1
001aa4: 671e         beq.b      $1ac4
001aa6: 42a7         clr.l      -(a7)
001aa8: 222f0004     move.l     $4(a7), d1
001aac: 701b         moveq      #$1b, d0
001aae: 61003434     bsr.w      $4ee4
001ab2: 588f         addq.l     #$4, a7
001ab4: 72ff         moveq      #$ff, d1
001ab6: b280         cmp.l      d0, d1
001ab8: 6704         beq.b      $1abe
001aba: 42af0004     clr.l      $4(a7)
001abe: 2017         move.l     (a7), d0
001ac0: 61003630     bsr.w      $50f2
001ac4: 202f0004     move.l     $4(a7), d0
001ac8: 508f         addq.l     #$8, a7
001aca: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001ad0: 4e5d         unlk       a5
001ad2: 4e75         rts        
001ad4: 2f636339     move.l     -(a3), $6339(a7)
001ad8: 3300         move.w     d0, -(a1)
001ada: 2f636339     move.l     -(a3), $6339(a7)
001ade: 3300         move.w     d0, -(a1)
001ae0: 4e550000     link.w     a5, #$0
001ae4: 48e7c080     movem.l    d0-d1/a0, -(a7)
001ae8: 7038         moveq      #$38, d0
001aea: 4c170000     mulu.l     (a7), d0
001aee: 41eeaf70     lea.l      -$5090(a6), a0
001af2: 72ff         moveq      #$ff, d1
001af4: b2b00800     cmp.l      (a0, d0.l), d1
001af8: 6704         beq.b      $1afe
001afa: 7001         moveq      #$1, d0
001afc: 6002         bra.b      $1b00
001afe: 7000         moveq      #$0, d0
001b00: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001b06: 4e5d         unlk       a5
001b08: 4e75         rts        
001b0a: 4e550000     link.w     a5, #$0
001b0e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001b12: 598f         subq.l     #$4, a7
001b14: 70ff         moveq      #$ff, d0
001b16: 2e80         move.l     d0, (a7)
001b18: 7038         moveq      #$38, d0
001b1a: 4c2f00000004 mulu.l     $4(a7), d0
001b20: 41eeaf70     lea.l      -$5090(a6), a0
001b24: 72ff         moveq      #$ff, d1
001b26: b2b00800     cmp.l      (a0, d0.l), d1
001b2a: 6720         beq.b      $1b4c
001b2c: 222f0008     move.l     $8(a7), d1
001b30: 7038         moveq      #$38, d0
001b32: 4c2f00000004 mulu.l     $4(a7), d0
001b38: 41eeaf70     lea.l      -$5090(a6), a0
001b3c: 20300800     move.l     (a0, d0.l), d0
001b40: 6100286c     bsr.w      $43ae
001b44: 72ff         moveq      #$ff, d1
001b46: b280         cmp.l      d0, d1
001b48: 6702         beq.b      $1b4c
001b4a: 4297         clr.l      (a7)
001b4c: 2017         move.l     (a7), d0
001b4e: 588f         addq.l     #$4, a7
001b50: 4ced0100fffc movem.l    -$4(a5), a0
001b56: 4e5d         unlk       a5
001b58: 4e75         rts        
001b5a: 4e550000     link.w     a5, #$0
001b5e: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
001b62: 2800         move.l     d0, d4
001b64: 203c00007f00 move.l     #$7f00, d0
001b6a: c084         and.l      d4, d0
001b6c: e188         lsl.l      #$8, d0
001b6e: 223c000000ff move.l     #$ff, d1
001b74: c284         and.l      d4, d1
001b76: 8081         or.l       d1, d0
001b78: 2a00         move.l     d0, d5
001b7a: 7c00         moveq      #$0, d6
001b7c: 6034         bra.b      $1bb2
001b7e: 7038         moveq      #$38, d0
001b80: 4c060000     mulu.l     d6, d0
001b84: 41eeaf70     lea.l      -$5090(a6), a0
001b88: bab00800     cmp.l      (a0, d0.l), d5
001b8c: 6622         bne.b      $1bb0
001b8e: 7038         moveq      #$38, d0
001b90: 4c060000     mulu.l     d6, d0
001b94: 41eeaf70     lea.l      -$5090(a6), a0
001b98: 21bcffffffff0800 move.l     #$ffffffff, (a0, d0.l)
001ba0: 7038         moveq      #$38, d0
001ba2: 4c060000     mulu.l     d6, d0
001ba6: 41eeaf70     lea.l      -$5090(a6), a0
001baa: 20300804     move.l     $4(a0, d0.l), d0
001bae: 600a         bra.b      $1bba
001bb0: 5286         addq.l     #$1, d6
001bb2: 7007         moveq      #$7, d0
001bb4: b086         cmp.l      d6, d0
001bb6: 6ec6         bgt.b      $1b7e
001bb8: 2004         move.l     d4, d0
001bba: 4ced0172ffec movem.l    -$14(a5), d1/d4-d6/a0
001bc0: 4e5d         unlk       a5
001bc2: 4e75         rts        
001bc4: 4e550000     link.w     a5, #$0
001bc8: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001bcc: 203c00000190 move.l     #$190, d0
001bd2: 61003562     bsr.w      $5136
001bd6: 2440         movea.l    d0, a2
001bd8: 4a80         tst.l      d0
001bda: 6604         bne.b      $1be0
001bdc: 70ff         moveq      #$ff, d0
001bde: 6052         bra.b      $1c32
001be0: 7038         moveq      #$38, d0
001be2: 4c170000     mulu.l     (a7), d0
001be6: 41eeaf70     lea.l      -$5090(a6), a0
001bea: 21bc000000010808 move.l     #$1, $8(a0, d0.l)
001bf2: 41eeaf70     lea.l      -$5090(a6), a0
001bf6: 2008         move.l     a0, d0
001bf8: 7238         moveq      #$38, d1
001bfa: 4c171001     mulu.l     (a7), d1
001bfe: d081         add.l      d1, d0
001c00: 720c         moveq      #$c, d1
001c02: d081         add.l      d1, d0
001c04: 2640         movea.l    d0, a3
001c06: 7800         moveq      #$0, d4
001c08: 601c         bra.b      $1c26
001c0a: 48780027     pea.l      $27.w
001c0e: 2213         move.l     (a3), d1
001c10: 200a         move.l     a2, d0
001c12: 610036be     bsr.w      $52d2
001c16: 588f         addq.l     #$4, a7
001c18: 422a0027     clr.b      $27(a2)
001c1c: 268a         move.l     a2, (a3)
001c1e: 7028         moveq      #$28, d0
001c20: d5c0         adda.l     d0, a2
001c22: 5284         addq.l     #$1, d4
001c24: 588b         addq.l     #$4, a3
001c26: 700a         moveq      #$a, d0
001c28: b084         cmp.l      d4, d0
001c2a: 6f04         ble.b      $1c30
001c2c: 4a93         tst.l      (a3)
001c2e: 66da         bne.b      $1c0a
001c30: 7000         moveq      #$0, d0
001c32: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
001c38: 4e5d         unlk       a5
001c3a: 4e75         rts        
001c3c: 4e550000     link.w     a5, #$0
001c40: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
001c44: 246f0004     movea.l    $4(a7), a2
001c48: 41eeaf70     lea.l      -$5090(a6), a0
001c4c: 2008         move.l     a0, d0
001c4e: 7238         moveq      #$38, d1
001c50: 4c171001     mulu.l     (a7), d1
001c54: d081         add.l      d1, d0
001c56: 720c         moveq      #$c, d1
001c58: d081         add.l      d1, d0
001c5a: 2840         movea.l    d0, a4
001c5c: 7801         moveq      #$1, d4
001c5e: 6002         bra.b      $1c62
001c60: 528a         addq.l     #$1, a2
001c62: 1012         move.b     (a2), d0
001c64: 49c0         extb.l     d0
001c66: 41eeb1ed     lea.l      -$4e13(a6), a0
001c6a: 10300800     move.b     (a0, d0.l), d0
001c6e: 4880         ext.w      d0
001c70: 08000004     btst.b     #$4, d0
001c74: 66ea         bne.b      $1c60
001c76: 60000074     bra.w      $1cec
001c7a: 264a         movea.l    a2, a3
001c7c: 6002         bra.b      $1c80
001c7e: 528b         addq.l     #$1, a3
001c80: 4a13         tst.b      (a3)
001c82: 6714         beq.b      $1c98
001c84: 1013         move.b     (a3), d0
001c86: 49c0         extb.l     d0
001c88: 41eeb1ed     lea.l      -$4e13(a6), a0
001c8c: 10300800     move.b     (a0, d0.l), d0
001c90: 4880         ext.w      d0
001c92: 08000004     btst.b     #$4, d0
001c96: 67e6         beq.b      $1c7e
001c98: 200b         move.l     a3, d0
001c9a: 908a         sub.l      a2, d0
001c9c: 2a00         move.l     d0, d5
001c9e: 7027         moveq      #$27, d0
001ca0: b085         cmp.l      d5, d0
001ca2: 6c02         bge.b      $1ca6
001ca4: 7a27         moveq      #$27, d5
001ca6: 4ab44c00     tst.l      (a4, d4.l * 4)
001caa: 660e         bne.b      $1cba
001cac: 2004         move.l     d4, d0
001cae: 5380         subq.l     #$1, d0
001cb0: 7228         moveq      #$28, d1
001cb2: d2b40c00     add.l      (a4, d0.l * 4), d1
001cb6: 29814c00     move.l     d1, (a4, d4.l * 4)
001cba: 2f05         move.l     d5, -(a7)
001cbc: 220a         move.l     a2, d1
001cbe: 20344c00     move.l     (a4, d4.l * 4), d0
001cc2: 6100360e     bsr.w      $52d2
001cc6: 588f         addq.l     #$4, a7
001cc8: 20744c00     movea.l    (a4, d4.l * 4), a0
001ccc: 42305800     clr.b      (a0, d5.l)
001cd0: 5284         addq.l     #$1, d4
001cd2: 244b         movea.l    a3, a2
001cd4: 6002         bra.b      $1cd8
001cd6: 528a         addq.l     #$1, a2
001cd8: 1012         move.b     (a2), d0
001cda: 49c0         extb.l     d0
001cdc: 41eeb1ed     lea.l      -$4e13(a6), a0
001ce0: 10300800     move.b     (a0, d0.l), d0
001ce4: 4880         ext.w      d0
001ce6: 08000004     btst.b     #$4, d0
001cea: 66ea         bne.b      $1cd6
001cec: 4a12         tst.b      (a2)
001cee: 6712         beq.b      $1d02
001cf0: 700a         moveq      #$a, d0
001cf2: b084         cmp.l      d4, d0
001cf4: 6e00ff84     bgt.w      $1c7a
001cf8: 6008         bra.b      $1d02
001cfa: 2004         move.l     d4, d0
001cfc: 5284         addq.l     #$1, d4
001cfe: 42b40c00     clr.l      (a4, d0.l * 4)
001d02: 4ab44c00     tst.l      (a4, d4.l * 4)
001d06: 6706         beq.b      $1d0e
001d08: 700a         moveq      #$a, d0
001d0a: b084         cmp.l      d4, d0
001d0c: 6eec         bgt.b      $1cfa
001d0e: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
001d14: 4e5d         unlk       a5
001d16: 4e75         rts        
001d18: 4e550000     link.w     a5, #$0
001d1c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001d20: 4a97         tst.l      (a7)
001d22: 6d22         blt.b      $1d46
001d24: 7007         moveq      #$7, d0
001d26: b097         cmp.l      (a7), d0
001d28: 6f1c         ble.b      $1d46
001d2a: 7038         moveq      #$38, d0
001d2c: 4c170000     mulu.l     (a7), d0
001d30: 41eeaf70     lea.l      -$5090(a6), a0
001d34: 4ab00808     tst.l      $8(a0, d0.l)
001d38: 6610         bne.b      $1d4a
001d3a: 2017         move.l     (a7), d0
001d3c: 6100fe86     bsr.w      $1bc4
001d40: 72ff         moveq      #$ff, d1
001d42: b280         cmp.l      d0, d1
001d44: 6604         bne.b      $1d4a
001d46: 70ff         moveq      #$ff, d0
001d48: 6048         bra.b      $1d92
001d4a: 4aaf0004     tst.l      $4(a7)
001d4e: 6730         beq.b      $1d80
001d50: 48780027     pea.l      $27.w
001d54: 222f0008     move.l     $8(a7), d1
001d58: 7038         moveq      #$38, d0
001d5a: 4c2f00000004 mulu.l     $4(a7), d0
001d60: 41eeaf70     lea.l      -$5090(a6), a0
001d64: 2030080c     move.l     $c(a0, d0.l), d0
001d68: 61003568     bsr.w      $52d2
001d6c: 588f         addq.l     #$4, a7
001d6e: 7038         moveq      #$38, d0
001d70: 4c170000     mulu.l     (a7), d0
001d74: 41eeaf70     lea.l      -$5090(a6), a0
001d78: 2070080c     movea.l    $c(a0, d0.l), a0
001d7c: 42280027     clr.b      $27(a0)
001d80: 4aaf0014     tst.l      $14(a7)
001d84: 670a         beq.b      $1d90
001d86: 222f0014     move.l     $14(a7), d1
001d8a: 2017         move.l     (a7), d0
001d8c: 6100feae     bsr.w      $1c3c
001d90: 7000         moveq      #$0, d0
001d92: 4ced0100fffc movem.l    -$4(a5), a0
001d98: 4e5d         unlk       a5
001d9a: 4e75         rts        
001d9c: 4e550000     link.w     a5, #$0
001da0: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
001da4: 2800         move.l     d0, d4
001da6: 598f         subq.l     #$4, a7
001da8: 4a84         tst.l      d4
001daa: 6d06         blt.b      $1db2
001dac: 7007         moveq      #$7, d0
001dae: b084         cmp.l      d4, d0
001db0: 6e06         bgt.b      $1db8
001db2: 70ff         moveq      #$ff, d0
001db4: 60000084     bra.w      $1e3a
001db8: 7001         moveq      #$1, d0
001dba: 2e80         move.l     d0, (a7)
001dbc: 6002         bra.b      $1dc0
001dbe: 5297         addq.l     #$1, (a7)
001dc0: 7038         moveq      #$38, d0
001dc2: 4c040000     mulu.l     d4, d0
001dc6: 41eeaf70     lea.l      -$5090(a6), a0
001dca: 2217         move.l     (a7), d1
001dcc: d1c0         adda.l     d0, a0
001dce: 4ab01c0c     tst.l      $c(a0, d1.l)
001dd2: 66ea         bne.b      $1dbe
001dd4: 2f3ca95acd82 move.l     #$a95acd82, -(a7)
001dda: 48780003     pea.l      $3.w
001dde: 42a7         clr.l      -(a7)
001de0: 42a7         clr.l      -(a7)
001de2: 2f2e84e8     move.l     -$7b18(a6), -(a7)
001de6: 7038         moveq      #$38, d0
001de8: 4c040000     mulu.l     d4, d0
001dec: 41eeaf70     lea.l      -$5090(a6), a0
001df0: 4870080c     pea.l      $c(a0, d0.l)
001df4: 7038         moveq      #$38, d0
001df6: 4c040000     mulu.l     d4, d0
001dfa: 41eeaf70     lea.l      -$5090(a6), a0
001dfe: 2230080c     move.l     $c(a0, d0.l), d1
001e02: 41fb017000003cca lea.l      $3cca(a16, invalid.w), a0
001e0a: 2008         move.l     a0, d0
001e0c: 610027b4     bsr.w      $45c2
001e10: 4fef0018     lea.l      $18(a7), a7
001e14: 7238         moveq      #$38, d1
001e16: 4c041001     mulu.l     d4, d1
001e1a: 41eeaf70     lea.l      -$5090(a6), a0
001e1e: 21801800     move.l     d0, (a0, d1.l)
001e22: 7038         moveq      #$38, d0
001e24: 4c040000     mulu.l     d4, d0
001e28: 41eeaf70     lea.l      -$5090(a6), a0
001e2c: 72ff         moveq      #$ff, d1
001e2e: b2b00800     cmp.l      (a0, d0.l), d1
001e32: 6604         bne.b      $1e38
001e34: 70ff         moveq      #$ff, d0
001e36: 6002         bra.b      $1e3a
001e38: 7000         moveq      #$0, d0
001e3a: 588f         addq.l     #$4, a7
001e3c: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
001e42: 4e5d         unlk       a5
001e44: 4e75         rts        
001e46: 6462         bcc.b      $1eaa
001e48: 63006470     bls.w      $82ba
001e4c: 0072706d6f640067 ori.w      #$706d, $67(a2, invalid.w)
001e54: 645f         bcc.b      $1eb5
001e56: 6d61         blt.b      $1eb9
001e58: 6e006864     bgt.w      $86be
001e5c: 6c62         bge.b      $1ec0
001e5e: 7369         .dc.w      $7369
001e60: 00647261     ori.w      #$7261, -(a4)
001e64: 776d         .dc.w      $776d
001e66: 6170         bsr.b      $1ed8
001e68: 007263765f6d6573 ori.w      #$6376, ([$6573, a2])
001e70: 7361         .dc.w      $7361
001e72: 6765         beq.b      $1ed9
001e74: 00004e55     ori.b      #$55, d0
001e78: 000048e7     ori.b      #$e7, d0
001e7c: c080         and.l      d0, d0
001e7e: 598f         subq.l     #$4, a7
001e80: 48780200     pea.l      $200.w
001e84: 48780003     pea.l      $3.w
001e88: 7223         moveq      #$23, d1
001e8a: 41fa044c     lea.l      $22d8(pc), a0
001e8e: 2008         move.l     a0, d0
001e90: 61002398     bsr.w      $422a
001e94: 508f         addq.l     #$8, a7
001e96: 2d40b10c     move.l     d0, -$4ef4(a6)
001e9a: 72ff         moveq      #$ff, d1
001e9c: b280         cmp.l      d0, d1
001e9e: 6700014e     beq.w      $1fee
001ea2: 48780080     pea.l      $80.w
001ea6: 48780003     pea.l      $3.w
001eaa: 7223         moveq      #$23, d1
001eac: 41fa0439     lea.l      $22e7(pc), a0
001eb0: 2008         move.l     a0, d0
001eb2: 61002376     bsr.w      $422a
001eb6: 508f         addq.l     #$8, a7
001eb8: 2d40b110     move.l     d0, -$4ef0(a6)
001ebc: 72ff         moveq      #$ff, d1
001ebe: b280         cmp.l      d0, d1
001ec0: 6700012c     beq.w      $1fee
001ec4: 7201         moveq      #$1, d1
001ec6: 41fa042e     lea.l      $22f6(pc), a0
001eca: 2008         move.l     a0, d0
001ecc: 610021b8     bsr.w      $4086
001ed0: 2d40b0f8     move.l     d0, -$4f08(a6)
001ed4: 72ff         moveq      #$ff, d1
001ed6: b280         cmp.l      d0, d1
001ed8: 67000114     beq.w      $1fee
001edc: 7201         moveq      #$1, d1
001ede: 41fa042d     lea.l      $230d(pc), a0
001ee2: 2008         move.l     a0, d0
001ee4: 610021a0     bsr.w      $4086
001ee8: 2d40b0fc     move.l     d0, -$4f04(a6)
001eec: 72ff         moveq      #$ff, d1
001eee: b280         cmp.l      d0, d1
001ef0: 670000fc     beq.w      $1fee
001ef4: 42a7         clr.l      -(a7)
001ef6: 222eb0f8     move.l     -$4f08(a6), d1
001efa: 203c00000900 move.l     #$900, d0
001f00: 61002f7e     bsr.w      $4e80
001f04: 588f         addq.l     #$4, a7
001f06: 2d40b114     move.l     d0, -$4eec(a6)
001f0a: 42a7         clr.l      -(a7)
001f0c: 222eb0f8     move.l     -$4f08(a6), d1
001f10: 203c00000700 move.l     #$700, d0
001f16: 61002fcc     bsr.w      $4ee4
001f1a: 588f         addq.l     #$4, a7
001f1c: 7201         moveq      #$1, d1
001f1e: 41fa0405     lea.l      $2325(pc), a0
001f22: 2008         move.l     a0, d0
001f24: 61002160     bsr.w      $4086
001f28: 2d40b100     move.l     d0, -$4f00(a6)
001f2c: 72ff         moveq      #$ff, d1
001f2e: b280         cmp.l      d0, d1
001f30: 670000bc     beq.w      $1fee
001f34: 42a7         clr.l      -(a7)
001f36: 222eb100     move.l     -$4f00(a6), d1
001f3a: 203c00000900 move.l     #$900, d0
001f40: 61002f3e     bsr.w      $4e80
001f44: 588f         addq.l     #$4, a7
001f46: 2d40b118     move.l     d0, -$4ee8(a6)
001f4a: 42a7         clr.l      -(a7)
001f4c: 222eb100     move.l     -$4f00(a6), d1
001f50: 203c00000700 move.l     #$700, d0
001f56: 61002f8c     bsr.w      $4ee4
001f5a: 588f         addq.l     #$4, a7
001f5c: 7201         moveq      #$1, d1
001f5e: 41fa03db     lea.l      $233b(pc), a0
001f62: 2008         move.l     a0, d0
001f64: 61002120     bsr.w      $4086
001f68: 2d40b104     move.l     d0, -$4efc(a6)
001f6c: 72ff         moveq      #$ff, d1
001f6e: b280         cmp.l      d0, d1
001f70: 6700007c     beq.w      $1fee
001f74: 42a7         clr.l      -(a7)
001f76: 222eb104     move.l     -$4efc(a6), d1
001f7a: 203c00000900 move.l     #$900, d0
001f80: 61002efe     bsr.w      $4e80
001f84: 588f         addq.l     #$4, a7
001f86: 2d40b11c     move.l     d0, -$4ee4(a6)
001f8a: 42a7         clr.l      -(a7)
001f8c: 222eb104     move.l     -$4efc(a6), d1
001f90: 203c00000700 move.l     #$700, d0
001f96: 61002f4c     bsr.w      $4ee4
001f9a: 588f         addq.l     #$4, a7
001f9c: 48780200     pea.l      $200.w
001fa0: 48780003     pea.l      $3.w
001fa4: 7223         moveq      #$23, d1
001fa6: 41fa03ad     lea.l      $2355(pc), a0
001faa: 2008         move.l     a0, d0
001fac: 6100227c     bsr.w      $422a
001fb0: 508f         addq.l     #$8, a7
001fb2: 2d40b108     move.l     d0, -$4ef8(a6)
001fb6: 72ff         moveq      #$ff, d1
001fb8: b280         cmp.l      d0, d1
001fba: 6732         beq.b      $1fee
001fbc: 223c0000240a move.l     #$240a, d1
001fc2: 202eb108     move.l     -$4ef8(a6), d0
001fc6: 610037ae     bsr.w      $5776
001fca: 2d40b120     move.l     d0, -$4ee0(a6)
001fce: 72ff         moveq      #$ff, d1
001fd0: b280         cmp.l      d0, d1
001fd2: 671a         beq.b      $1fee
001fd4: 6100fa54     bsr.w      $1a2a
001fd8: 72ff         moveq      #$ff, d1
001fda: b280         cmp.l      d0, d1
001fdc: 6710         beq.b      $1fee
001fde: 203c000024a0 move.l     #$24a0, d0
001fe4: 61001642     bsr.w      $3628
001fe8: 72ff         moveq      #$ff, d1
001fea: b280         cmp.l      d0, d1
001fec: 6604         bne.b      $1ff2
001fee: 70ff         moveq      #$ff, d0
001ff0: 6002         bra.b      $1ff4
001ff2: 7000         moveq      #$0, d0
001ff4: 588f         addq.l     #$4, a7
001ff6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001ffc: 4e5d         unlk       a5
001ffe: 4e75         rts        
002000: 4e550000     link.w     a5, #$0
002004: 48e78000     movem.l    d0, -(a7)
002008: 6100090a     bsr.w      $2914
00200c: 4a00         tst.b      d0
00200e: 6604         bne.b      $2014
002010: 70ff         moveq      #$ff, d0
002012: 6002         bra.b      $2016
002014: 7000         moveq      #$0, d0
002016: 4e5d         unlk       a5
002018: 4e75         rts        
00201a: 4e550000     link.w     a5, #$0
00201e: 48e7c000     movem.l    d0-d1, -(a7)
002022: 42a7         clr.l      -(a7)
002024: 222eb100     move.l     -$4f00(a6), d1
002028: 203c00000800 move.l     #$800, d0
00202e: 61002eb4     bsr.w      $4ee4
002032: 588f         addq.l     #$4, a7
002034: 42a7         clr.l      -(a7)
002036: 222eb0f8     move.l     -$4f08(a6), d1
00203a: 203c00000800 move.l     #$800, d0
002040: 61002ea2     bsr.w      $4ee4
002044: 588f         addq.l     #$4, a7
002046: 42a7         clr.l      -(a7)
002048: 222eb104     move.l     -$4efc(a6), d1
00204c: 203c00000800 move.l     #$800, d0
002052: 61002e90     bsr.w      $4ee4
002056: 588f         addq.l     #$4, a7
002058: 6100fa28     bsr.w      $1a82
00205c: 72ff         moveq      #$ff, d1
00205e: b280         cmp.l      d0, d1
002060: 202eb100     move.l     -$4f00(a6), d0
002064: 6100308c     bsr.w      $50f2
002068: 202eb0fc     move.l     -$4f04(a6), d0
00206c: 61003084     bsr.w      $50f2
002070: 202eb104     move.l     -$4efc(a6), d0
002074: 6100307c     bsr.w      $50f2
002078: 202eb0f8     move.l     -$4f08(a6), d0
00207c: 61003074     bsr.w      $50f2
002080: 202eb108     move.l     -$4ef8(a6), d0
002084: 6100306c     bsr.w      $50f2
002088: 202eb10c     move.l     -$4ef4(a6), d0
00208c: 61003064     bsr.w      $50f2
002090: 202eb110     move.l     -$4ef0(a6), d0
002094: 6100305c     bsr.w      $50f2
002098: 4ced0002fffc movem.l    -$4(a5), d1
00209e: 4e5d         unlk       a5
0020a0: 4e75         rts        
0020a2: 4e550000     link.w     a5, #$0
0020a6: 48e78000     movem.l    d0, -(a7)
0020aa: 6100ff6e     bsr.w      $201a
0020ae: 7001         moveq      #$1, d0
0020b0: 61003af0     bsr.w      $5ba2
0020b4: 4e5d         unlk       a5
0020b6: 4e75         rts        
0020b8: 4e550000     link.w     a5, #$0
0020bc: 48e78000     movem.l    d0, -(a7)
0020c0: 6100ff58     bsr.w      $201a
0020c4: 7000         moveq      #$0, d0
0020c6: 61003ada     bsr.w      $5ba2
0020ca: 4e5d         unlk       a5
0020cc: 4e75         rts        
0020ce: 4e550000     link.w     a5, #$0
0020d2: 48e7c000     movem.l    d0-d1, -(a7)
0020d6: 2f2f0004     move.l     $4(a7), -(a7)
0020da: 222f0004     move.l     $4(a7), d1
0020de: 202eb10c     move.l     -$4ef4(a6), d0
0020e2: 610003aa     bsr.w      $248e
0020e6: 588f         addq.l     #$4, a7
0020e8: 72ff         moveq      #$ff, d1
0020ea: b280         cmp.l      d0, d1
0020ec: 6604         bne.b      $20f2
0020ee: 70ff         moveq      #$ff, d0
0020f0: 6002         bra.b      $20f4
0020f2: 7000         moveq      #$0, d0
0020f4: 4e5d         unlk       a5
0020f6: 4e75         rts        
0020f8: 4e550000     link.w     a5, #$0
0020fc: 48e7c080     movem.l    d0-d1/a0, -(a7)
002100: 2f2f0004     move.l     $4(a7), -(a7)
002104: 41ef0006     lea.l      $6(a7), a0
002108: 2208         move.l     a0, d1
00210a: 202eb110     move.l     -$4ef0(a6), d0
00210e: 6100037e     bsr.w      $248e
002112: 588f         addq.l     #$4, a7
002114: 72ff         moveq      #$ff, d1
002116: b280         cmp.l      d0, d1
002118: 6604         bne.b      $211e
00211a: 70ff         moveq      #$ff, d0
00211c: 6002         bra.b      $2120
00211e: 7000         moveq      #$0, d0
002120: 4ced0100fffc movem.l    -$4(a5), a0
002126: 4e5d         unlk       a5
002128: 4e75         rts        
00212a: 4e550000     link.w     a5, #$0
00212e: 48e78000     movem.l    d0, -(a7)
002132: 2017         move.l     (a7), d0
002134: b0aeb118     cmp.l      -$4ee8(a6), d0
002138: 6608         bne.b      $2142
00213a: 2ebc00002481 move.l     #$2481, (a7)
002140: 601e         bra.b      $2160
002142: 2017         move.l     (a7), d0
002144: b0aeb114     cmp.l      -$4eec(a6), d0
002148: 6608         bne.b      $2152
00214a: 2ebc00002480 move.l     #$2480, (a7)
002150: 600e         bra.b      $2160
002152: 2017         move.l     (a7), d0
002154: b0aeb11c     cmp.l      -$4ee4(a6), d0
002158: 6606         bne.b      $2160
00215a: 2ebc00002482 move.l     #$2482, (a7)
002160: 2017         move.l     (a7), d0
002162: 4e5d         unlk       a5
002164: 4e75         rts        
002166: 4e550000     link.w     a5, #$0
00216a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00216e: 4fefffc6     lea.l      -$3a(a7), a7
002172: 4878003a     pea.l      $3a.w
002176: 41ef0004     lea.l      $4(a7), a0
00217a: 2208         move.l     a0, d1
00217c: 202eb0fc     move.l     -$4f04(a6), d0
002180: 61002f54     bsr.w      $50d6
002184: 588f         addq.l     #$4, a7
002186: 723a         moveq      #$3a, d1
002188: b280         cmp.l      d0, d1
00218a: 6704         beq.b      $2190
00218c: 70ff         moveq      #$ff, d0
00218e: 600e         bra.b      $219e
002190: 0c6f0002001e cmpi.w     #$2, $1e(a7)
002196: 6604         bne.b      $219c
002198: 7001         moveq      #$1, d0
00219a: 6002         bra.b      $219e
00219c: 7000         moveq      #$0, d0
00219e: 4fef003a     lea.l      $3a(a7), a7
0021a2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0021a8: 4e5d         unlk       a5
0021aa: 4e75         rts        
0021ac: 4e550000     link.w     a5, #$0
0021b0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0021b4: 598f         subq.l     #$4, a7
0021b6: 48780004     pea.l      $4.w
0021ba: 41ef0004     lea.l      $4(a7), a0
0021be: 2208         move.l     a0, d1
0021c0: 202eb100     move.l     -$4f00(a6), d0
0021c4: 61002f10     bsr.w      $50d6
0021c8: 588f         addq.l     #$4, a7
0021ca: 7204         moveq      #$4, d1
0021cc: b280         cmp.l      d0, d1
0021ce: 6704         beq.b      $21d4
0021d0: 70ff         moveq      #$ff, d0
0021d2: 600a         bra.b      $21de
0021d4: 4a97         tst.l      (a7)
0021d6: 6704         beq.b      $21dc
0021d8: 7001         moveq      #$1, d0
0021da: 6002         bra.b      $21de
0021dc: 7000         moveq      #$0, d0
0021de: 588f         addq.l     #$4, a7
0021e0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0021e6: 4e5d         unlk       a5
0021e8: 4e75         rts        
0021ea: 4e550000     link.w     a5, #$0
0021ee: 48e7c080     movem.l    d0-d1/a0, -(a7)
0021f2: 518f         subq.l     #$8, a7
0021f4: 48780004     pea.l      $4.w
0021f8: 41ef0008     lea.l      $8(a7), a0
0021fc: 2208         move.l     a0, d1
0021fe: 202eb108     move.l     -$4ef8(a6), d0
002202: 61002ed2     bsr.w      $50d6
002206: 588f         addq.l     #$4, a7
002208: 7204         moveq      #$4, d1
00220a: b280         cmp.l      d0, d1
00220c: 67000072     beq.w      $2280
002210: 70ff         moveq      #$ff, d0
002212: 600000b8     bra.w      $22cc
002216: 7000         moveq      #$0, d0
002218: 6100ec32     bsr.w      $e4c
00221c: 7004         moveq      #$4, d0
00221e: 605c         bra.b      $227c
002220: 7000         moveq      #$0, d0
002222: 6100ec28     bsr.w      $e4c
002226: 4297         clr.l      (a7)
002228: 6000007e     bra.w      $22a8
00222c: 7001         moveq      #$1, d0
00222e: 6046         bra.b      $2276
002230: 7002         moveq      #$2, d0
002232: 6042         bra.b      $2276
002234: 7003         moveq      #$3, d0
002236: 6100ec14     bsr.w      $e4c
00223a: 306f0006     movea.w    $6(a7), a0
00223e: 2008         move.l     a0, d0
002240: 6100ec1c     bsr.w      $e5e
002244: 7001         moveq      #$1, d0
002246: 6034         bra.b      $227c
002248: 7003         moveq      #$3, d0
00224a: 6100ec00     bsr.w      $e4c
00224e: 306f0006     movea.w    $6(a7), a0
002252: 2008         move.l     a0, d0
002254: 6100ec08     bsr.w      $e5e
002258: 7002         moveq      #$2, d0
00225a: 6020         bra.b      $227c
00225c: 7004         moveq      #$4, d0
00225e: 6016         bra.b      $2276
002260: 7005         moveq      #$5, d0
002262: 6012         bra.b      $2276
002264: 7006         moveq      #$6, d0
002266: 600e         bra.b      $2276
002268: 306f0006     movea.w    $6(a7), a0
00226c: 2008         move.l     a0, d0
00226e: 6100ebee     bsr.w      $e5e
002272: 6006         bra.b      $227a
002274: 7007         moveq      #$7, d0
002276: 6100ebd4     bsr.w      $e4c
00227a: 7003         moveq      #$3, d0
00227c: 2e80         move.l     d0, (a7)
00227e: 6028         bra.b      $22a8
002280: 302f0004     move.w     $4(a7), d0
002284: 0c40000a     cmpi.w     #$a, d0
002288: 62f0         bhi.b      $227a
00228a: 303b0206     move.w     $2292(pc, d0.w), d0
00228e: 4efb0002     jmp        $2292(pc, d0.w)
002292: ff8e         dc.w       $ff8e
002294: ff9a         dc.w       $ff9a
002296: ff9e         dc.w       $ff9e
002298: ffa2         dc.w       $ffa2
00229a: ffb6         dc.w       $ffb6
00229c: ffca         dc.w       $ffca
00229e: ffce         dc.w       $ffce
0022a0: ffd6         dc.w       $ffd6
0022a2: ffd2         dc.w       $ffd2
0022a4: ff84         dc.w       $ff84
0022a6: ffe2         dc.w       $ffe2
0022a8: 223c0000240a move.l     #$240a, d1
0022ae: 202eb108     move.l     -$4ef8(a6), d0
0022b2: 610034c2     bsr.w      $5776
0022b6: 2d40b120     move.l     d0, -$4ee0(a6)
0022ba: 72ff         moveq      #$ff, d1
0022bc: b280         cmp.l      d0, d1
0022be: 660a         bne.b      $22ca
0022c0: 7000         moveq      #$0, d0
0022c2: 6100eb2e     bsr.w      $df2
0022c6: 7003         moveq      #$3, d0
0022c8: 2e80         move.l     d0, (a7)
0022ca: 2017         move.l     (a7), d0
0022cc: 508f         addq.l     #$8, a7
0022ce: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0022d4: 4e5d         unlk       a5
0022d6: 4e75         rts        
0022d8: 2f706970652f73765f74 move.l     $652f7376(a0, invalid.w), $5f74(a7)
0022e2: 6f5f         ble.b      $2343
0022e4: 6862         bvc.b      $2348
0022e6: 002f70697065 ori.b      #$69, $7065(a7)
0022ec: 2f627363     move.l     -(a2), $7363(a7)
0022f0: 5f73796e6300 subq.w     #$7, ([$6300, a3])
0022f6: 2f63302f     move.l     -(a3), $302f(a7)
0022fa: 5f313239     subq.b     #$7, $39(a1, d3.w)
0022fe: 5f2f7061     subq.b     #$7, $7061(a7)
002302: 636b         bls.b      $236f
002304: 2f64705f     move.l     -(a4), $705f(a7)
002308: 6d6f         blt.b      $2379
00230a: 6465         bcc.b      $2371
00230c: 002f63302f5f ori.b      #$30, $2f5f(a7)
002312: 3132395f     move.w     ([a2]), -(a0)
002316: 2f7061636b2f706f73697469 move.l     ([$6b2f, a0], $706f7369), $7469(a7)
002322: 6f6e         ble.b      $2392
002324: 002f63302f5f ori.b      #$30, $2f5f(a7)
00232a: 3132395f     move.w     ([a2]), -(a0)
00232e: 2f7061636b2f6d6f74696f6e move.l     ([$6b2f, a0], $6d6f7469), $6f6e(a7)
00233a: 002f63302f5f ori.b      #$30, $2f5f(a7)
002340: 3132395f     move.w     ([a2]), -(a0)
002344: 2f7061636b2f72656c6f6361 move.l     ([$6b2f, a0], $72656c6f), $6361(a7)
002350: 7469         moveq      #$69, d2
002352: 6f6e         ble.b      $23c2
002354: 002f63302f5f ori.b      #$30, $2f5f(a7)
00235a: 3132395f     move.w     ([a2]), -(a0)
00235e: 2f706970652f64625f73 move.l     $652f6462(a0, invalid.w), $5f73(a7)
002368: 765f         moveq      #$5f, d3
00236a: 7069         moveq      #$69, d0
00236c: 7065         moveq      #$65, d0
00236e: 00004e55     ori.b      #$55, d0
002372: 000048e7     ori.b      #$e7, d0
002376: c000         and.b      d0, d0
002378: 518f         subq.l     #$8, a7
00237a: 42af0004     clr.l      $4(a7)
00237e: 6034         bra.b      $23b4
002380: 202f0018     move.l     $18(a7), d0
002384: 90af0004     sub.l      $4(a7), d0
002388: 2f00         move.l     d0, -(a7)
00238a: 202f0010     move.l     $10(a7), d0
00238e: d0af0008     add.l      $8(a7), d0
002392: 2200         move.l     d0, d1
002394: 202f000c     move.l     $c(a7), d0
002398: 61002d3c     bsr.w      $50d6
00239c: 588f         addq.l     #$4, a7
00239e: 2e80         move.l     d0, (a7)
0023a0: 70ff         moveq      #$ff, d0
0023a2: b097         cmp.l      (a7), d0
0023a4: 6608         bne.b      $23ae
0023a6: 70ff         moveq      #$ff, d0
0023a8: 2f400004     move.l     d0, $4(a7)
0023ac: 6006         bra.b      $23b4
0023ae: 2017         move.l     (a7), d0
0023b0: d1af0004     add.l      d0, $4(a7)
0023b4: 70ff         moveq      #$ff, d0
0023b6: b0af0004     cmp.l      $4(a7), d0
0023ba: 6c0a         bge.b      $23c6
0023bc: 202f0004     move.l     $4(a7), d0
0023c0: b0af0018     cmp.l      $18(a7), d0
0023c4: 6dba         blt.b      $2380
0023c6: 202f0004     move.l     $4(a7), d0
0023ca: 508f         addq.l     #$8, a7
0023cc: 4e5d         unlk       a5
0023ce: 4e75         rts        
0023d0: 4e550000     link.w     a5, #$0
0023d4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0023d8: 5d8f         subq.l     #$6, a7
0023da: 70ff         moveq      #$ff, d0
0023dc: 2f400002     move.l     d0, $2(a7)
0023e0: 48780002     pea.l      $2.w
0023e4: 41ef0004     lea.l      $4(a7), a0
0023e8: 2208         move.l     a0, d1
0023ea: 202f000a     move.l     $a(a7), d0
0023ee: 61002ce6     bsr.w      $50d6
0023f2: 588f         addq.l     #$4, a7
0023f4: 7202         moveq      #$2, d1
0023f6: b280         cmp.l      d0, d1
0023f8: 66000084     bne.w      $247e
0023fc: 3057         movea.w    (a7), a0
0023fe: 226f001e     movea.l    $1e(a7), a1
002402: 2288         move.l     a0, (a1)
002404: 206f001e     movea.l    $1e(a7), a0
002408: 2010         move.l     (a0), d0
00240a: 61002d2a     bsr.w      $5136
00240e: 206f000a     movea.l    $a(a7), a0
002412: 2080         move.l     d0, (a0)
002414: 673c         beq.b      $2452
002416: 206f001e     movea.l    $1e(a7), a0
00241a: 2f10         move.l     (a0), -(a7)
00241c: 206f000e     movea.l    $e(a7), a0
002420: 2210         move.l     (a0), d1
002422: 202f000a     move.l     $a(a7), d0
002426: 6100ff48     bsr.w      $2370
00242a: 588f         addq.l     #$4, a7
00242c: 206f001e     movea.l    $1e(a7), a0
002430: b090         cmp.l      (a0), d0
002432: 6606         bne.b      $243a
002434: 42af0002     clr.l      $2(a7)
002438: 6044         bra.b      $247e
00243a: 206f001e     movea.l    $1e(a7), a0
00243e: 4290         clr.l      (a0)
002440: 206f000a     movea.l    $a(a7), a0
002444: 2010         move.l     (a0), d0
002446: 61002cfa     bsr.w      $5142
00244a: 206f000a     movea.l    $a(a7), a0
00244e: 4290         clr.l      (a0)
002450: 602c         bra.b      $247e
002452: 558f         subq.l     #$2, a7
002454: 6014         bra.b      $246a
002456: 48780001     pea.l      $1.w
00245a: 41ef0005     lea.l      $5(a7), a0
00245e: 2208         move.l     a0, d1
002460: 202f000c     move.l     $c(a7), d0
002464: 61002c70     bsr.w      $50d6
002468: 588f         addq.l     #$4, a7
00246a: 206f0020     movea.l    $20(a7), a0
00246e: 2010         move.l     (a0), d0
002470: 5390         subq.l     #$1, (a0)
002472: 4a80         tst.l      d0
002474: 66e0         bne.b      $2456
002476: 206f0020     movea.l    $20(a7), a0
00247a: 4290         clr.l      (a0)
00247c: 548f         addq.l     #$2, a7
00247e: 202f0002     move.l     $2(a7), d0
002482: 5c8f         addq.l     #$6, a7
002484: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00248a: 4e5d         unlk       a5
00248c: 4e75         rts        
00248e: 4e550000     link.w     a5, #$0
002492: 48e7c080     movem.l    d0-d1/a0, -(a7)
002496: 5d8f         subq.l     #$6, a7
002498: 70ff         moveq      #$ff, d0
00249a: 2f400002     move.l     d0, $2(a7)
00249e: 3eaf001c     move.w     $1c(a7), (a7)
0024a2: 48780002     pea.l      $2.w
0024a6: 41ef0004     lea.l      $4(a7), a0
0024aa: 2208         move.l     a0, d1
0024ac: 202f000a     move.l     $a(a7), d0
0024b0: 61002c2c     bsr.w      $50de
0024b4: 588f         addq.l     #$4, a7
0024b6: 7202         moveq      #$2, d1
0024b8: b280         cmp.l      d0, d1
0024ba: 661c         bne.b      $24d8
0024bc: 2f2f001a     move.l     $1a(a7), -(a7)
0024c0: 222f000e     move.l     $e(a7), d1
0024c4: 202f000a     move.l     $a(a7), d0
0024c8: 61002c14     bsr.w      $50de
0024cc: 588f         addq.l     #$4, a7
0024ce: b0af001a     cmp.l      $1a(a7), d0
0024d2: 6604         bne.b      $24d8
0024d4: 42af0002     clr.l      $2(a7)
0024d8: 202f0002     move.l     $2(a7), d0
0024dc: 5c8f         addq.l     #$6, a7
0024de: 4ced0100fffc movem.l    -$4(a5), a0
0024e4: 4e5d         unlk       a5
0024e6: 4e75         rts        
0024e8: 4e550000     link.w     a5, #$0
0024ec: 48e7c080     movem.l    d0-d1/a0, -(a7)
0024f0: 518f         subq.l     #$8, a7
0024f2: 70ff         moveq      #$ff, d0
0024f4: 2e80         move.l     d0, (a7)
0024f6: 7201         moveq      #$1, d1
0024f8: 41fa00aa     lea.l      $25a4(pc), a0
0024fc: 2008         move.l     a0, d0
0024fe: 61001b86     bsr.w      $4086
002502: 2f400004     move.l     d0, $4(a7)
002506: 72ff         moveq      #$ff, d1
002508: b280         cmp.l      d0, d1
00250a: 6604         bne.b      $2510
00250c: 70ff         moveq      #$ff, d0
00250e: 602a         bra.b      $253a
002510: 48780004     pea.l      $4.w
002514: 222f000c     move.l     $c(a7), d1
002518: 202f0008     move.l     $8(a7), d0
00251c: 61002bb8     bsr.w      $50d6
002520: 588f         addq.l     #$4, a7
002522: 7204         moveq      #$4, d1
002524: b280         cmp.l      d0, d1
002526: 6604         bne.b      $252c
002528: 7000         moveq      #$0, d0
00252a: 6002         bra.b      $252e
00252c: 70ff         moveq      #$ff, d0
00252e: 2e80         move.l     d0, (a7)
002530: 202f0004     move.l     $4(a7), d0
002534: 61002bbc     bsr.w      $50f2
002538: 2017         move.l     (a7), d0
00253a: 508f         addq.l     #$8, a7
00253c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002542: 4e5d         unlk       a5
002544: 4e75         rts        
002546: 4e550000     link.w     a5, #$0
00254a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00254e: 518f         subq.l     #$8, a7
002550: 70ff         moveq      #$ff, d0
002552: 2e80         move.l     d0, (a7)
002554: 7202         moveq      #$2, d1
002556: 41fa0066     lea.l      $25be(pc), a0
00255a: 2008         move.l     a0, d0
00255c: 61001b28     bsr.w      $4086
002560: 2f400004     move.l     d0, $4(a7)
002564: 72ff         moveq      #$ff, d1
002566: b280         cmp.l      d0, d1
002568: 6604         bne.b      $256e
00256a: 70ff         moveq      #$ff, d0
00256c: 602a         bra.b      $2598
00256e: 48780004     pea.l      $4.w
002572: 222f000c     move.l     $c(a7), d1
002576: 202f0008     move.l     $8(a7), d0
00257a: 61002b62     bsr.w      $50de
00257e: 588f         addq.l     #$4, a7
002580: 7204         moveq      #$4, d1
002582: b280         cmp.l      d0, d1
002584: 6604         bne.b      $258a
002586: 7000         moveq      #$0, d0
002588: 6002         bra.b      $258c
00258a: 70ff         moveq      #$ff, d0
00258c: 2e80         move.l     d0, (a7)
00258e: 202f0004     move.l     $4(a7), d0
002592: 61002b5e     bsr.w      $50f2
002596: 2017         move.l     (a7), d0
002598: 508f         addq.l     #$8, a7
00259a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0025a0: 4e5d         unlk       a5
0025a2: 4e75         rts        
0025a4: 2f63302f     move.l     -(a3), $302f(a7)
0025a8: 5f313239     subq.b     #$7, $39(a1, d3.w)
0025ac: 5f2f7061     subq.b     #$7, $7061(a7)
0025b0: 636b         bls.b      $261d
0025b2: 2f627377     move.l     -(a2), $7377(a7)
0025b6: 5f63         subq.w     #$7, -(a3)
0025b8: 6f6e         ble.b      $2628
0025ba: 6669         bne.b      $2625
0025bc: 67002f63     beq.w      $5521
0025c0: 302f5f31     move.w     $5f31(a7), d0
0025c4: 32395f2f7061 move.w     $5f2f7061.l, d1
0025ca: 636b         bls.b      $2637
0025cc: 2f627377     move.l     -(a2), $7377(a7)
0025d0: 5f63         subq.w     #$7, -(a3)
0025d2: 6f6e         ble.b      $2642
0025d4: 6669         bne.b      $263f
0025d6: 67004e55     beq.w      $742d
0025da: 000048e7     ori.b      #$e7, d0
0025de: c080         and.l      d0, d0
0025e0: 518f         subq.l     #$8, a7
0025e2: 203c00000100 move.l     #$100, d0
0025e8: d0af0008     add.l      $8(a7), d0
0025ec: 2e80         move.l     d0, (a7)
0025ee: 1f6f000f0004 move.b     $f(a7), $4(a7)
0025f4: 202f001c     move.l     $1c(a7), d0
0025f8: e080         asr.l      #$8, d0
0025fa: 1f400005     move.b     d0, $5(a7)
0025fe: 1f6f001f0006 move.b     $1f(a7), $6(a7)
002604: 1f7c00ff0007 move.b     #$ff, $7(a7)
00260a: 41d7         lea.l      (a7), a0
00260c: 2008         move.l     a0, d0
00260e: 6146         bsr.b      $2656
002610: 508f         addq.l     #$8, a7
002612: 4ced0100fffc movem.l    -$4(a5), a0
002618: 4e5d         unlk       a5
00261a: 4e75         rts        
00261c: 4e550000     link.w     a5, #$0
002620: 48e7c000     movem.l    d0-d1, -(a7)
002624: 2f2f0010     move.l     $10(a7), -(a7)
002628: 222f0008     move.l     $8(a7), d1
00262c: 202f0004     move.l     $4(a7), d0
002630: 61a6         bsr.b      $25d8
002632: 588f         addq.l     #$4, a7
002634: 203c00002410 move.l     #$2410, d0
00263a: 610000bc     bsr.w      $26f8
00263e: 4e5d         unlk       a5
002640: 4e75         rts        
002642: 4e550000     link.w     a5, #$0
002646: 48e78000     movem.l    d0, -(a7)
00264a: 7000         moveq      #$0, d0
00264c: 61003230     bsr.w      $587e
002650: 60f8         bra.b      $264a
002652: 4e5d         unlk       a5
002654: 4e75         rts        
002656: 4e550000     link.w     a5, #$0
00265a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00265e: 4aaeb124     tst.l      -$4edc(a6)
002662: 6c16         bge.b      $267a
002664: 7203         moveq      #$3, d1
002666: 41fa002e     lea.l      $2696(pc), a0
00266a: 2008         move.l     a0, d0
00266c: 61001a18     bsr.w      $4086
002670: 2d40b124     move.l     d0, -$4edc(a6)
002674: 6c04         bge.b      $267a
002676: 70ff         moveq      #$ff, d0
002678: 6012         bra.b      $268c
00267a: 2f17         move.l     (a7), -(a7)
00267c: 222eb124     move.l     -$4edc(a6), d1
002680: 203c00007f23 move.l     #$7f23, d0
002686: 6100285c     bsr.w      $4ee4
00268a: 588f         addq.l     #$4, a7
00268c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002692: 4e5d         unlk       a5
002694: 4e75         rts        
002696: 2f636339     move.l     -(a3), $6339(a7)
00269a: 3300         move.w     d0, -(a1)
00269c: 4e550000     link.w     a5, #$0
0026a0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0026a4: 518f         subq.l     #$8, a7
0026a6: 7201         moveq      #$1, d1
0026a8: 41fa00ce     lea.l      $2778(pc), a0
0026ac: 2008         move.l     a0, d0
0026ae: 610019d6     bsr.w      $4086
0026b2: 2f400004     move.l     d0, $4(a7)
0026b6: 72ff         moveq      #$ff, d1
0026b8: b280         cmp.l      d0, d1
0026ba: 6722         beq.b      $26de
0026bc: 48780004     pea.l      $4.w
0026c0: 41ef0004     lea.l      $4(a7), a0
0026c4: 2208         move.l     a0, d1
0026c6: 202f0008     move.l     $8(a7), d0
0026ca: 61002a0a     bsr.w      $50d6
0026ce: 588f         addq.l     #$4, a7
0026d0: 7204         moveq      #$4, d1
0026d2: b280         cmp.l      d0, d1
0026d4: 670c         beq.b      $26e2
0026d6: 202f0004     move.l     $4(a7), d0
0026da: 61002a16     bsr.w      $50f2
0026de: 70ff         moveq      #$ff, d0
0026e0: 600a         bra.b      $26ec
0026e2: 202f0004     move.l     $4(a7), d0
0026e6: 61002a0a     bsr.w      $50f2
0026ea: 2017         move.l     (a7), d0
0026ec: 508f         addq.l     #$8, a7
0026ee: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0026f4: 4e5d         unlk       a5
0026f6: 4e75         rts        
0026f8: 4e550000     link.w     a5, #$0
0026fc: 48e7c000     movem.l    d0-d1, -(a7)
002700: 2217         move.l     (a7), d1
002702: 6198         bsr.b      $269c
002704: 61001ca8     bsr.w      $43ae
002708: 72ff         moveq      #$ff, d1
00270a: b280         cmp.l      d0, d1
00270c: 4ced0002fffc movem.l    -$4(a5), d1
002712: 4e5d         unlk       a5
002714: 4e75         rts        
002716: 4e550000     link.w     a5, #$0
00271a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00271e: 518f         subq.l     #$8, a7
002720: 7202         moveq      #$2, d1
002722: 41fa006a     lea.l      $278e(pc), a0
002726: 2008         move.l     a0, d0
002728: 6100195c     bsr.w      $4086
00272c: 2f400004     move.l     d0, $4(a7)
002730: 72ff         moveq      #$ff, d1
002732: b280         cmp.l      d0, d1
002734: 6728         beq.b      $275e
002736: 610033f2     bsr.w      $5b2a
00273a: 2e80         move.l     d0, (a7)
00273c: 48780004     pea.l      $4.w
002740: 41ef0004     lea.l      $4(a7), a0
002744: 2208         move.l     a0, d1
002746: 202f0008     move.l     $8(a7), d0
00274a: 61002992     bsr.w      $50de
00274e: 588f         addq.l     #$4, a7
002750: 7204         moveq      #$4, d1
002752: b280         cmp.l      d0, d1
002754: 670c         beq.b      $2762
002756: 202f0004     move.l     $4(a7), d0
00275a: 61002996     bsr.w      $50f2
00275e: 70ff         moveq      #$ff, d0
002760: 600a         bra.b      $276c
002762: 202f0004     move.l     $4(a7), d0
002766: 6100298a     bsr.w      $50f2
00276a: 7000         moveq      #$0, d0
00276c: 508f         addq.l     #$8, a7
00276e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002774: 4e5d         unlk       a5
002776: 4e75         rts        
002778: 2f63302f     move.l     -(a3), $302f(a7)
00277c: 5f313239     subq.b     #$7, $39(a1, d3.w)
002780: 5f2f7061     subq.b     #$7, $7061(a7)
002784: 636b         bls.b      $27f1
002786: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
00278c: 64002f63     bcc.w      $56f1
002790: 302f5f31     move.w     $5f31(a7), d0
002794: 32395f2f7061 move.w     $5f2f7061.l, d1
00279a: 636b         bls.b      $2807
00279c: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
0027a2: 64004e55     bcc.w      $75f9
0027a6: 000048e7     ori.b      #$e7, d0
0027aa: 80c0         divu.w     d0, d0
0027ac: 4fefffa4     lea.l      -$5c(a7), a7
0027b0: 3f7c00020002 move.w     #$2, $2(a7)
0027b6: 3f7c01100004 move.w     #$110, $4(a7)
0027bc: 3f7c00010006 move.w     #$1, $6(a7)
0027c2: 206f005c     movea.l    $5c(a7), a0
0027c6: 43ef0008     lea.l      $8(a7), a1
0027ca: 7014         moveq      #$14, d0
0027cc: 22d8         move.l     (a0)+, (a1)+
0027ce: 51c8fffc     dbra       d0, $27cc
0027d2: 3ebc005a     move.w     #$5a, (a7)
0027d6: 41d7         lea.l      (a7), a0
0027d8: 2008         move.l     a0, d0
0027da: 61000090     bsr.w      $286c
0027de: 4fef005c     lea.l      $5c(a7), a7
0027e2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0027e8: 4e5d         unlk       a5
0027ea: 4e75         rts        
0027ec: 4e550000     link.w     a5, #$0
0027f0: 48e78080     movem.l    d0/a0, -(a7)
0027f4: 4fefffa4     lea.l      -$5c(a7), a7
0027f8: 3f7c00020002 move.w     #$2, $2(a7)
0027fe: 3f7c01300004 move.w     #$130, $4(a7)
002804: 3f7c00010006 move.w     #$1, $6(a7)
00280a: 3ebc005a     move.w     #$5a, (a7)
00280e: 41d7         lea.l      (a7), a0
002810: 2008         move.l     a0, d0
002812: 61000058     bsr.w      $286c
002816: 4fef005c     lea.l      $5c(a7), a7
00281a: 4ced0100fffc movem.l    -$4(a5), a0
002820: 4e5d         unlk       a5
002822: 4e75         rts        
002824: 4e550000     link.w     a5, #$0
002828: 48e78080     movem.l    d0/a0, -(a7)
00282c: 4fefffa4     lea.l      -$5c(a7), a7
002830: 3f7c00020002 move.w     #$2, $2(a7)
002836: 3f7c01400004 move.w     #$140, $4(a7)
00283c: 3f7c00010006 move.w     #$1, $6(a7)
002842: 3ebc005a     move.w     #$5a, (a7)
002846: 41d7         lea.l      (a7), a0
002848: 2008         move.l     a0, d0
00284a: 61000020     bsr.w      $286c
00284e: 4fef005c     lea.l      $5c(a7), a7
002852: 4ced0100fffc movem.l    -$4(a5), a0
002858: 4e5d         unlk       a5
00285a: 4e75         rts        
00285c: 4e550000     link.w     a5, #$0
002860: 48e78000     movem.l    d0, -(a7)
002864: 202eb128     move.l     -$4ed8(a6), d0
002868: 4e5d         unlk       a5
00286a: 4e75         rts        
00286c: 4e550000     link.w     a5, #$0
002870: 48e7c080     movem.l    d0-d1/a0, -(a7)
002874: 518f         subq.l     #$8, a7
002876: 206f0008     movea.l    $8(a7), a0
00287a: 3010         move.w     (a0), d0
00287c: 48c0         ext.l      d0
00287e: 5480         addq.l     #$2, d0
002880: 2f400004     move.l     d0, $4(a7)
002884: 2f2f0004     move.l     $4(a7), -(a7)
002888: 222f000c     move.l     $c(a7), d1
00288c: 202eb12c     move.l     -$4ed4(a6), d0
002890: 6100284c     bsr.w      $50de
002894: 588f         addq.l     #$4, a7
002896: 2e80         move.l     d0, (a7)
002898: 2017         move.l     (a7), d0
00289a: b0af0004     cmp.l      $4(a7), d0
00289e: 6704         beq.b      $28a4
0028a0: 7000         moveq      #$0, d0
0028a2: 6002         bra.b      $28a6
0028a4: 7001         moveq      #$1, d0
0028a6: 508f         addq.l     #$8, a7
0028a8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0028ae: 4e5d         unlk       a5
0028b0: 4e75         rts        
0028b2: 4e550000     link.w     a5, #$0
0028b6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0028ba: 598f         subq.l     #$4, a7
0028bc: 48780002     pea.l      $2.w
0028c0: 222f0008     move.l     $8(a7), d1
0028c4: 202eb130     move.l     -$4ed0(a6), d0
0028c8: 6100280c     bsr.w      $50d6
0028cc: 588f         addq.l     #$4, a7
0028ce: 2e80         move.l     d0, (a7)
0028d0: 7002         moveq      #$2, d0
0028d2: b097         cmp.l      (a7), d0
0028d4: 6628         bne.b      $28fe
0028d6: 206f0004     movea.l    $4(a7), a0
0028da: 3050         movea.w    (a0), a0
0028dc: 2f08         move.l     a0, -(a7)
0028de: 202f0008     move.l     $8(a7), d0
0028e2: 5480         addq.l     #$2, d0
0028e4: 2200         move.l     d0, d1
0028e6: 202eb130     move.l     -$4ed0(a6), d0
0028ea: 610027ea     bsr.w      $50d6
0028ee: 588f         addq.l     #$4, a7
0028f0: 2e80         move.l     d0, (a7)
0028f2: 206f0004     movea.l    $4(a7), a0
0028f6: 3010         move.w     (a0), d0
0028f8: 48c0         ext.l      d0
0028fa: b097         cmp.l      (a7), d0
0028fc: 6708         beq.b      $2906
0028fe: 70ff         moveq      #$ff, d0
002900: b097         cmp.l      (a7), d0
002902: 7000         moveq      #$0, d0
002904: 6002         bra.b      $2908
002906: 7001         moveq      #$1, d0
002908: 588f         addq.l     #$4, a7
00290a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002910: 4e5d         unlk       a5
002912: 4e75         rts        
002914: 4e550000     link.w     a5, #$0
002918: 48e7c080     movem.l    d0-d1/a0, -(a7)
00291c: 7202         moveq      #$2, d1
00291e: 41fa0076     lea.l      $2996(pc), a0
002922: 2008         move.l     a0, d0
002924: 61001760     bsr.w      $4086
002928: 2d40b12c     move.l     d0, -$4ed4(a6)
00292c: 6d2e         blt.b      $295c
00292e: 41fa0086     lea.l      $29b6(pc), a0
002932: 2208         move.l     a0, d1
002934: 41ee80e6     lea.l      -$7f1a(a6), a0
002938: 2008         move.l     a0, d0
00293a: 61002746     bsr.w      $5082
00293e: 41ee80e6     lea.l      -$7f1a(a6), a0
002942: 2008         move.l     a0, d0
002944: 6100281c     bsr.w      $5162
002948: 2d40b128     move.l     d0, -$4ed8(a6)
00294c: 7203         moveq      #$3, d1
00294e: 202eb128     move.l     -$4ed8(a6), d0
002952: 6100174c     bsr.w      $40a0
002956: 2d40b130     move.l     d0, -$4ed0(a6)
00295a: 6c04         bge.b      $2960
00295c: 7000         moveq      #$0, d0
00295e: 6002         bra.b      $2962
002960: 7001         moveq      #$1, d0
002962: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002968: 4e5d         unlk       a5
00296a: 4e75         rts        
00296c: 4e550000     link.w     a5, #$0
002970: 48e78000     movem.l    d0, -(a7)
002974: 202eb12c     move.l     -$4ed4(a6), d0
002978: 61002778     bsr.w      $50f2
00297c: 4a80         tst.l      d0
00297e: 6d10         blt.b      $2990
002980: 4aaeb130     tst.l      -$4ed0(a6)
002984: 6f0a         ble.b      $2990
002986: 202eb130     move.l     -$4ed0(a6), d0
00298a: 61002766     bsr.w      $50f2
00298e: 4a80         tst.l      d0
002990: 7001         moveq      #$1, d0
002992: 4e5d         unlk       a5
002994: 4e75         rts        
002996: 2f63302f     move.l     -(a3), $302f(a7)
00299a: 5f313239     subq.b     #$7, $39(a1, d3.w)
00299e: 5f2f7069     subq.b     #$7, $7069(a7)
0029a2: 7065         moveq      #$65, d0
0029a4: 2f646263     move.l     -(a4), $6263(a7)
0029a8: 5f72657175657374 subq.w     #$7, ([$75657374, a2])
0029b0: 5f70697065002f63 subq.w     #$7, $65002f63(a0, invalid.w)
0029b8: 302f5f31     move.w     $5f31(a7), d0
0029bc: 32395f2f7069 move.w     $5f2f7069.l, d1
0029c2: 7065         moveq      #$65, d0
0029c4: 2f646263     move.l     -(a4), $6263(a7)
0029c8: 5f7273705f585858 subq.w     #$7, $5f585858(a2, invalid.w)
0029d0: 5858         addq.w     #$4, (a0)+
0029d2: 5800         addq.b     #$4, d0
0029d4: 48e74000     movem.l    d1, -(a7)
0029d8: 203c00000000 move.l     #$0, d0
0029de: 223c00000001 move.l     #$1, d1
0029e4: 4e40         trap       #$0
0029e6: 0057640c     ori.w      #$640c, (a7)
0029ea: 2d41800c     move.l     d1, -$7ff4(a6)
0029ee: 70ff         moveq      #$ff, d0
0029f0: 4cdf0002     movem.l    (a7)+, d1
0029f4: 4e75         rts        
0029f6: 4280         clr.l      d0
0029f8: 3001         move.w     d1, d0
0029fa: 4cdf0002     movem.l    (a7)+, d1
0029fe: 4e75         rts        
002a00: 48e74000     movem.l    d1, -(a7)
002a04: 203c00000000 move.l     #$0, d0
002a0a: 223c00000000 move.l     #$0, d1
002a10: 4e40         trap       #$0
002a12: 005764e0     ori.w      #$64e0, (a7)
002a16: 60d2         bra.b      $29ea
002a18: 48e740e0     movem.l    d1/a0-a2, -(a7)
002a1c: 207900000000 movea.l    $0.l, a0
002a22: 2268004c     movea.l    $4c(a0), a1
002a26: 4280         clr.l      d0
002a28: 10290370     move.b     $370(a1), d0
002a2c: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002a30: 4e75         rts        
002a32: 48e740e0     movem.l    d1/a0-a2, -(a7)
002a36: 207900000000 movea.l    $0.l, a0
002a3c: 2268004c     movea.l    $4c(a0), a1
002a40: 81a90374     or.l       d0, $374(a1)
002a44: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002a48: 4e75         rts        
002a4a: 48e740e0     movem.l    d1/a0-a2, -(a7)
002a4e: 207900000000 movea.l    $0.l, a0
002a54: 2268004c     movea.l    $4c(a0), a1
002a58: 4480         neg.l      d0
002a5a: c1a90374     and.l      d0, $374(a1)
002a5e: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002a62: 4e75         rts        
002a64: 4e550000     link.w     a5, #$0
002a68: 48e7c080     movem.l    d0-d1/a0, -(a7)
002a6c: 203cffffffb8 move.l     #$ffffffb8, d0
002a72: 6100d6fc     bsr.w      $170
002a76: 4aaeb134     tst.l      -$4ecc(a6)
002a7a: 6c00001c     bge.w      $2a98
002a7e: 7203         moveq      #$3, d1
002a80: 41fa02c0     lea.l      $2d42(pc), a0
002a84: 2008         move.l     a0, d0
002a86: 6100263a     bsr.w      $50c2
002a8a: 2d40b134     move.l     d0, -$4ecc(a6)
002a8e: 6c000008     bge.w      $2a98
002a92: 70ff         moveq      #$ff, d0
002a94: 60000056     bra.w      $2aec
002a98: 4aaeb138     tst.l      -$4ec8(a6)
002a9c: 66000024     bne.w      $2ac2
002aa0: 42a7         clr.l      -(a7)
002aa2: 223c00000082 move.l     #$82, d1
002aa8: 203c0000008a move.l     #$8a, d0
002aae: 61000c12     bsr.w      $36c2
002ab2: 588f         addq.l     #$4, a7
002ab4: 2d40b138     move.l     d0, -$4ec8(a6)
002ab8: 66000008     bne.w      $2ac2
002abc: 70ff         moveq      #$ff, d0
002abe: 6000002c     bra.w      $2aec
002ac2: 48780005     pea.l      $5.w
002ac6: 222f0004     move.l     $4(a7), d1
002aca: 202eb138     move.l     -$4ec8(a6), d0
002ace: 61000d34     bsr.w      $3804
002ad2: 588f         addq.l     #$4, a7
002ad4: 42a7         clr.l      -(a7)
002ad6: 222eb134     move.l     -$4ecc(a6), d1
002ada: 203c00000709 move.l     #$709, d0
002ae0: 61002402     bsr.w      $4ee4
002ae4: 588f         addq.l     #$4, a7
002ae6: 60000004     bra.w      $2aec
002aea: 4e71         nop        
002aec: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002af2: 4e5d         unlk       a5
002af4: 4e75         rts        
002af6: 4e550000     link.w     a5, #$0
002afa: 48e7c080     movem.l    d0-d1/a0, -(a7)
002afe: 203cffffffb8 move.l     #$ffffffb8, d0
002b04: 6100d66a     bsr.w      $170
002b08: 4aaeb134     tst.l      -$4ecc(a6)
002b0c: 6c00001c     bge.w      $2b2a
002b10: 7203         moveq      #$3, d1
002b12: 41fa0237     lea.l      $2d4b(pc), a0
002b16: 2008         move.l     a0, d0
002b18: 610025a8     bsr.w      $50c2
002b1c: 2d40b134     move.l     d0, -$4ecc(a6)
002b20: 6c000008     bge.w      $2b2a
002b24: 70ff         moveq      #$ff, d0
002b26: 60000072     bra.w      $2b9a
002b2a: 42a7         clr.l      -(a7)
002b2c: 222eb134     move.l     -$4ecc(a6), d1
002b30: 203c00000708 move.l     #$708, d0
002b36: 61002348     bsr.w      $4e80
002b3a: 588f         addq.l     #$4, a7
002b3c: 4a80         tst.l      d0
002b3e: 67000008     beq.w      $2b48
002b42: 70ff         moveq      #$ff, d0
002b44: 60000054     bra.w      $2b9a
002b48: 4aaeb138     tst.l      -$4ec8(a6)
002b4c: 66000024     bne.w      $2b72
002b50: 42a7         clr.l      -(a7)
002b52: 223c00000082 move.l     #$82, d1
002b58: 203c0000008a move.l     #$8a, d0
002b5e: 61000b62     bsr.w      $36c2
002b62: 588f         addq.l     #$4, a7
002b64: 2d40b138     move.l     d0, -$4ec8(a6)
002b68: 66000008     bne.w      $2b72
002b6c: 70ff         moveq      #$ff, d0
002b6e: 6000002a     bra.w      $2b9a
002b72: 48780011     pea.l      $11.w
002b76: 222f0004     move.l     $4(a7), d1
002b7a: 202eb138     move.l     -$4ec8(a6), d0
002b7e: 61000cf0     bsr.w      $3870
002b82: 588f         addq.l     #$4, a7
002b84: 7211         moveq      #$11, d1
002b86: b280         cmp.l      d0, d1
002b88: 67000008     beq.w      $2b92
002b8c: 70ff         moveq      #$ff, d0
002b8e: 6000000a     bra.w      $2b9a
002b92: 7000         moveq      #$0, d0
002b94: 60000004     bra.w      $2b9a
002b98: 4e71         nop        
002b9a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002ba0: 4e5d         unlk       a5
002ba2: 4e75         rts        
002ba4: 4e550000     link.w     a5, #$0
002ba8: 48e7c080     movem.l    d0-d1/a0, -(a7)
002bac: 203cffffffb8 move.l     #$ffffffb8, d0
002bb2: 6100d5bc     bsr.w      $170
002bb6: 4aaeb134     tst.l      -$4ecc(a6)
002bba: 6c00001c     bge.w      $2bd8
002bbe: 7203         moveq      #$3, d1
002bc0: 41fa0192     lea.l      $2d54(pc), a0
002bc4: 2008         move.l     a0, d0
002bc6: 610024fa     bsr.w      $50c2
002bca: 2d40b134     move.l     d0, -$4ecc(a6)
002bce: 6c000008     bge.w      $2bd8
002bd2: 70ff         moveq      #$ff, d0
002bd4: 60000072     bra.w      $2c48
002bd8: 42a7         clr.l      -(a7)
002bda: 222eb134     move.l     -$4ecc(a6), d1
002bde: 203c0000070e move.l     #$70e, d0
002be4: 6100229a     bsr.w      $4e80
002be8: 588f         addq.l     #$4, a7
002bea: 4a80         tst.l      d0
002bec: 67000008     beq.w      $2bf6
002bf0: 70ff         moveq      #$ff, d0
002bf2: 60000054     bra.w      $2c48
002bf6: 4aaeb138     tst.l      -$4ec8(a6)
002bfa: 66000024     bne.w      $2c20
002bfe: 42a7         clr.l      -(a7)
002c00: 223c00000082 move.l     #$82, d1
002c06: 203c0000008a move.l     #$8a, d0
002c0c: 61000ab4     bsr.w      $36c2
002c10: 588f         addq.l     #$4, a7
002c12: 2d40b138     move.l     d0, -$4ec8(a6)
002c16: 66000008     bne.w      $2c20
002c1a: 70ff         moveq      #$ff, d0
002c1c: 6000002a     bra.w      $2c48
002c20: 48780008     pea.l      $8.w
002c24: 222f0004     move.l     $4(a7), d1
002c28: 202eb138     move.l     -$4ec8(a6), d0
002c2c: 61000c42     bsr.w      $3870
002c30: 588f         addq.l     #$4, a7
002c32: 7208         moveq      #$8, d1
002c34: b280         cmp.l      d0, d1
002c36: 67000008     beq.w      $2c40
002c3a: 70ff         moveq      #$ff, d0
002c3c: 6000000a     bra.w      $2c48
002c40: 7000         moveq      #$0, d0
002c42: 60000004     bra.w      $2c48
002c46: 4e71         nop        
002c48: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002c4e: 4e5d         unlk       a5
002c50: 4e75         rts        
002c52: 4e550000     link.w     a5, #$0
002c56: 48e7c080     movem.l    d0-d1/a0, -(a7)
002c5a: 203cffffffae move.l     #$ffffffae, d0
002c60: 6100d50e     bsr.w      $170
002c64: 4feffff6     lea.l      -$a(a7), a7
002c68: 4aaeb134     tst.l      -$4ecc(a6)
002c6c: 6c000020     bge.w      $2c8e
002c70: 7203         moveq      #$3, d1
002c72: 41fa00e9     lea.l      $2d5d(pc), a0
002c76: 2008         move.l     a0, d0
002c78: 61002448     bsr.w      $50c2
002c7c: 2d40b134     move.l     d0, -$4ecc(a6)
002c80: 6c00000c     bge.w      $2c8e
002c84: 70ff         moveq      #$ff, d0
002c86: 4fef000a     lea.l      $a(a7), a7
002c8a: 600000a8     bra.w      $2d34
002c8e: 42a7         clr.l      -(a7)
002c90: 222eb134     move.l     -$4ecc(a6), d1
002c94: 203c0000070a move.l     #$70a, d0
002c9a: 610021e4     bsr.w      $4e80
002c9e: 588f         addq.l     #$4, a7
002ca0: 2e80         move.l     d0, (a7)
002ca2: 4a97         tst.l      (a7)
002ca4: 6700000c     beq.w      $2cb2
002ca8: 70ff         moveq      #$ff, d0
002caa: 4fef000a     lea.l      $a(a7), a7
002cae: 60000084     bra.w      $2d34
002cb2: 4aaeb138     tst.l      -$4ec8(a6)
002cb6: 66000028     bne.w      $2ce0
002cba: 42a7         clr.l      -(a7)
002cbc: 223c00000082 move.l     #$82, d1
002cc2: 203c0000008a move.l     #$8a, d0
002cc8: 610009f8     bsr.w      $36c2
002ccc: 588f         addq.l     #$4, a7
002cce: 2d40b138     move.l     d0, -$4ec8(a6)
002cd2: 6600000c     bne.w      $2ce0
002cd6: 70ff         moveq      #$ff, d0
002cd8: 4fef000a     lea.l      $a(a7), a7
002cdc: 60000056     bra.w      $2d34
002ce0: 48780003     pea.l      $3.w
002ce4: 41ef0008     lea.l      $8(a7), a0
002ce8: 2208         move.l     a0, d1
002cea: 202eb138     move.l     -$4ec8(a6), d0
002cee: 61000b80     bsr.w      $3870
002cf2: 588f         addq.l     #$4, a7
002cf4: 7203         moveq      #$3, d1
002cf6: b280         cmp.l      d0, d1
002cf8: 6700000c     beq.w      $2d06
002cfc: 70ff         moveq      #$ff, d0
002cfe: 4fef000a     lea.l      $a(a7), a7
002d02: 60000030     bra.w      $2d34
002d06: 7000         moveq      #$0, d0
002d08: 302f0006     move.w     $6(a7), d0
002d0c: 7210         moveq      #$10, d1
002d0e: e3a8         lsl.l      d1, d0
002d10: 7200         moveq      #$0, d1
002d12: 322f0004     move.w     $4(a7), d1
002d16: 8081         or.l       d1, d0
002d18: 206f000a     movea.l    $a(a7), a0
002d1c: 2080         move.l     d0, (a0)
002d1e: 206f000a     movea.l    $a(a7), a0
002d22: 316f00080004 move.w     $8(a7), $4(a0)
002d28: 7000         moveq      #$0, d0
002d2a: 4fef000a     lea.l      $a(a7), a7
002d2e: 60000004     bra.w      $2d34
002d32: 4e71         nop        
002d34: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002d3a: 4e5d         unlk       a5
002d3c: 4e75         rts        
002d3e: 4afb         .dc.w      $4afb
002d40: 00242f68     ori.b      #$68, -(a4)
002d44: 5f697463     subq.w     #$7, $7463(a1)
002d48: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
002d4e: 6974         bvs.b      $2dc4
002d50: 632f         bls.b      $2d81
002d52: 7200         moveq      #$0, d1
002d54: 2f685f697463 move.l     $5f69(a0), $7463(a7)
002d5a: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
002d60: 6974         bvs.b      $2dd6
002d62: 632f         bls.b      $2d93
002d64: 7200         moveq      #$0, d1
002d66: 4e550000     link.w     a5, #$0
002d6a: 48e78000     movem.l    d0, -(a7)
002d6e: 203cffffffc0 move.l     #$ffffffc0, d0
002d74: 6100d3fa     bsr.w      $170
002d78: 203c009f8900 move.l     #$9f8900, d0
002d7e: 60000004     bra.w      $2d84
002d82: 4e71         nop        
002d84: 4e5d         unlk       a5
002d86: 4e75         rts        
002d88: 4e550000     link.w     a5, #$0
002d8c: 48e7c080     movem.l    d0-d1/a0, -(a7)
002d90: 203cffffffb4 move.l     #$ffffffb4, d0
002d96: 6100d3d8     bsr.w      $170
002d9a: 598f         subq.l     #$4, a7
002d9c: 4aaeb13c     tst.l      -$4ec4(a6)
002da0: 6c00001e     bge.w      $2dc0
002da4: 7203         moveq      #$3, d1
002da6: 41fa04c0     lea.l      $3268(pc), a0
002daa: 2008         move.l     a0, d0
002dac: 61002314     bsr.w      $50c2
002db0: 2d40b13c     move.l     d0, -$4ec4(a6)
002db4: 6c00000a     bge.w      $2dc0
002db8: 70ff         moveq      #$ff, d0
002dba: 588f         addq.l     #$4, a7
002dbc: 60000020     bra.w      $2dde
002dc0: 42a7         clr.l      -(a7)
002dc2: 222eb13c     move.l     -$4ec4(a6), d1
002dc6: 203c00000780 move.l     #$780, d0
002dcc: 610020b2     bsr.w      $4e80
002dd0: 588f         addq.l     #$4, a7
002dd2: 2e80         move.l     d0, (a7)
002dd4: 2017         move.l     (a7), d0
002dd6: 588f         addq.l     #$4, a7
002dd8: 60000004     bra.w      $2dde
002ddc: 4e71         nop        
002dde: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002de4: 4e5d         unlk       a5
002de6: 4e75         rts        
002de8: 4e550000     link.w     a5, #$0
002dec: 48e7c080     movem.l    d0-d1/a0, -(a7)
002df0: 203cffffffb4 move.l     #$ffffffb4, d0
002df6: 6100d378     bsr.w      $170
002dfa: 598f         subq.l     #$4, a7
002dfc: 4aaeb13c     tst.l      -$4ec4(a6)
002e00: 6c00001e     bge.w      $2e20
002e04: 7203         moveq      #$3, d1
002e06: 41fa0469     lea.l      $3271(pc), a0
002e0a: 2008         move.l     a0, d0
002e0c: 610022b4     bsr.w      $50c2
002e10: 2d40b13c     move.l     d0, -$4ec4(a6)
002e14: 6c00000a     bge.w      $2e20
002e18: 7000         moveq      #$0, d0
002e1a: 588f         addq.l     #$4, a7
002e1c: 6000001c     bra.w      $2e3a
002e20: 42a7         clr.l      -(a7)
002e22: 222eb13c     move.l     -$4ec4(a6), d1
002e26: 203c00000783 move.l     #$783, d0
002e2c: 61002052     bsr.w      $4e80
002e30: 588f         addq.l     #$4, a7
002e32: 588f         addq.l     #$4, a7
002e34: 60000004     bra.w      $2e3a
002e38: 4e71         nop        
002e3a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002e40: 4e5d         unlk       a5
002e42: 4e75         rts        
002e44: 4e550000     link.w     a5, #$0
002e48: 48e78000     movem.l    d0, -(a7)
002e4c: 203cffffffc0 move.l     #$ffffffc0, d0
002e52: 6100d31c     bsr.w      $170
002e56: 7000         moveq      #$0, d0
002e58: 60000004     bra.w      $2e5e
002e5c: 4e71         nop        
002e5e: 4e5d         unlk       a5
002e60: 4e75         rts        
002e62: 4e550000     link.w     a5, #$0
002e66: 48e7c080     movem.l    d0-d1/a0, -(a7)
002e6a: 203cffffffb8 move.l     #$ffffffb8, d0
002e70: 6100d2fe     bsr.w      $170
002e74: 4aaeb13c     tst.l      -$4ec4(a6)
002e78: 6c00001c     bge.w      $2e96
002e7c: 7203         moveq      #$3, d1
002e7e: 41fa03fa     lea.l      $327a(pc), a0
002e82: 2008         move.l     a0, d0
002e84: 6100223c     bsr.w      $50c2
002e88: 2d40b13c     move.l     d0, -$4ec4(a6)
002e8c: 6c000008     bge.w      $2e96
002e90: 70ff         moveq      #$ff, d0
002e92: 6000002a     bra.w      $2ebe
002e96: 42a7         clr.l      -(a7)
002e98: 222eb13c     move.l     -$4ec4(a6), d1
002e9c: 203c00000784 move.l     #$784, d0
002ea2: 61002040     bsr.w      $4ee4
002ea6: 588f         addq.l     #$4, a7
002ea8: 202eb13c     move.l     -$4ec4(a6), d0
002eac: 61002244     bsr.w      $50f2
002eb0: 70ff         moveq      #$ff, d0
002eb2: 2d40b13c     move.l     d0, -$4ec4(a6)
002eb6: 7000         moveq      #$0, d0
002eb8: 60000004     bra.w      $2ebe
002ebc: 4e71         nop        
002ebe: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002ec4: 4e5d         unlk       a5
002ec6: 4e75         rts        
002ec8: 4e550000     link.w     a5, #$0
002ecc: 48e7c080     movem.l    d0-d1/a0, -(a7)
002ed0: 203cffffffb0 move.l     #$ffffffb0, d0
002ed6: 6100d298     bsr.w      $170
002eda: 518f         subq.l     #$8, a7
002edc: 61000112     bsr.w      $2ff0
002ee0: 7203         moveq      #$3, d1
002ee2: 41fa039f     lea.l      $3283(pc), a0
002ee6: 2008         move.l     a0, d0
002ee8: 610021d8     bsr.w      $50c2
002eec: 2f400004     move.l     d0, $4(a7)
002ef0: 6c00000a     bge.w      $2efc
002ef4: 70ff         moveq      #$ff, d0
002ef6: 508f         addq.l     #$8, a7
002ef8: 60000028     bra.w      $2f22
002efc: 42a7         clr.l      -(a7)
002efe: 222f0008     move.l     $8(a7), d1
002f02: 203c00000785 move.l     #$785, d0
002f08: 61001fda     bsr.w      $4ee4
002f0c: 588f         addq.l     #$4, a7
002f0e: 2e80         move.l     d0, (a7)
002f10: 202f0004     move.l     $4(a7), d0
002f14: 610021dc     bsr.w      $50f2
002f18: 2017         move.l     (a7), d0
002f1a: 508f         addq.l     #$8, a7
002f1c: 60000004     bra.w      $2f22
002f20: 4e71         nop        
002f22: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002f28: 4e5d         unlk       a5
002f2a: 4e75         rts        
002f2c: 4e550000     link.w     a5, #$0
002f30: 48e78080     movem.l    d0/a0, -(a7)
002f34: 203cffffffac move.l     #$ffffffac, d0
002f3a: 6100d234     bsr.w      $170
002f3e: 4feffff0     lea.l      -$10(a7), a7
002f42: 426f0006     clr.w      $6(a7)
002f46: 6100fea0     bsr.w      $2de8
002f4a: 2f40000c     move.l     d0, $c(a7)
002f4e: 6600000c     bne.w      $2f5c
002f52: 7000         moveq      #$0, d0
002f54: 4fef0010     lea.l      $10(a7), a7
002f58: 6000008c     bra.w      $2fe6
002f5c: 42af0002     clr.l      $2(a7)
002f60: 6000003c     bra.w      $2f9e
002f64: 202f000c     move.l     $c(a7), d0
002f68: 5c80         addq.l     #$6, d0
002f6a: 2f400008     move.l     d0, $8(a7)
002f6e: 60000012     bra.w      $2f82
002f72: 206f0008     movea.l    $8(a7), a0
002f76: 7000         moveq      #$0, d0
002f78: 1010         move.b     (a0), d0
002f7a: d16f0006     add.w      d0, $6(a7)
002f7e: 52af0008     addq.l     #$1, $8(a7)
002f82: 203c00000100 move.l     #$100, d0
002f88: d0af000c     add.l      $c(a7), d0
002f8c: b0af0008     cmp.l      $8(a7), d0
002f90: 6200ffe0     bhi.w      $2f72
002f94: 2f6f0008000c move.l     $8(a7), $c(a7)
002f9a: 52af0002     addq.l     #$1, $2(a7)
002f9e: 7003         moveq      #$3, d0
002fa0: b0af0002     cmp.l      $2(a7), d0
002fa4: 6e00ffbe     bgt.w      $2f64
002fa8: 202f000c     move.l     $c(a7), d0
002fac: 5c80         addq.l     #$6, d0
002fae: 2f400008     move.l     d0, $8(a7)
002fb2: 60000012     bra.w      $2fc6
002fb6: 206f0008     movea.l    $8(a7), a0
002fba: 7000         moveq      #$0, d0
002fbc: 1010         move.b     (a0), d0
002fbe: d16f0006     add.w      d0, $6(a7)
002fc2: 52af0008     addq.l     #$1, $8(a7)
002fc6: 203c000000fe move.l     #$fe, d0
002fcc: d0af000c     add.l      $c(a7), d0
002fd0: b0af0008     cmp.l      $8(a7), d0
002fd4: 6200ffe0     bhi.w      $2fb6
002fd8: 302f0006     move.w     $6(a7), d0
002fdc: 4fef0010     lea.l      $10(a7), a7
002fe0: 60000004     bra.w      $2fe6
002fe4: 4e71         nop        
002fe6: 4ced0100fffc movem.l    -$4(a5), a0
002fec: 4e5d         unlk       a5
002fee: 4e75         rts        
002ff0: 4e550000     link.w     a5, #$0
002ff4: 48e78080     movem.l    d0/a0, -(a7)
002ff8: 203cffffffb4 move.l     #$ffffffb4, d0
002ffe: 6100d170     bsr.w      $170
003002: 5d8f         subq.l     #$6, a7
003004: 6100fde2     bsr.w      $2de8
003008: 2f400002     move.l     d0, $2(a7)
00300c: 67000022     beq.w      $3030
003010: 6100ff1a     bsr.w      $2f2c
003014: 3e80         move.w     d0, (a7)
003016: 67000018     beq.w      $3030
00301a: 558f         subq.l     #$2, a7
00301c: 1f6f00020001 move.b     $2(a7), $1(a7)
003022: 1f6f00030002 move.b     $3(a7), $2(a7)
003028: 1f6f00010003 move.b     $1(a7), $3(a7)
00302e: 548f         addq.l     #$2, a7
003030: 206f0002     movea.l    $2(a7), a0
003034: 315703fe     move.w     (a7), $3fe(a0)
003038: 5c8f         addq.l     #$6, a7
00303a: 4ced0100fffc movem.l    -$4(a5), a0
003040: 4e5d         unlk       a5
003042: 4e75         rts        
003044: 4e550000     link.w     a5, #$0
003048: 48e78080     movem.l    d0/a0, -(a7)
00304c: 203cffffffb4 move.l     #$ffffffb4, d0
003052: 6100d11c     bsr.w      $170
003056: 5d8f         subq.l     #$6, a7
003058: 6100fd8e     bsr.w      $2de8
00305c: 2f400002     move.l     d0, $2(a7)
003060: 6600000a     bne.w      $306c
003064: 7000         moveq      #$0, d0
003066: 5c8f         addq.l     #$6, a7
003068: 6000003a     bra.w      $30a4
00306c: 206f0002     movea.l    $2(a7), a0
003070: 3ea803fe     move.w     $3fe(a0), (a7)
003074: 558f         subq.l     #$2, a7
003076: 1f6f00020001 move.b     $2(a7), $1(a7)
00307c: 1f6f00030002 move.b     $3(a7), $2(a7)
003082: 1f6f00010003 move.b     $1(a7), $3(a7)
003088: 548f         addq.l     #$2, a7
00308a: 6100fea0     bsr.w      $2f2c
00308e: b057         cmp.w      (a7), d0
003090: 66000008     bne.w      $309a
003094: 7001         moveq      #$1, d0
003096: 60000004     bra.w      $309c
00309a: 7000         moveq      #$0, d0
00309c: 5c8f         addq.l     #$6, a7
00309e: 60000004     bra.w      $30a4
0030a2: 4e71         nop        
0030a4: 4ced0100fffc movem.l    -$4(a5), a0
0030aa: 4e5d         unlk       a5
0030ac: 4e75         rts        
0030ae: 4e550000     link.w     a5, #$0
0030b2: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0030b6: 203cffffffb2 move.l     #$ffffffb2, d0
0030bc: 6100d0b2     bsr.w      $170
0030c0: 518f         subq.l     #$8, a7
0030c2: 42af0004     clr.l      $4(a7)
0030c6: 6100fc9e     bsr.w      $2d66
0030ca: 2e80         move.l     d0, (a7)
0030cc: 2057         movea.l    (a7), a0
0030ce: 2257         movea.l    (a7), a1
0030d0: 1011         move.b     (a1), d0
0030d2: b0280001     cmp.b      $1(a0), d0
0030d6: 6600000a     bne.w      $30e2
0030da: 7000         moveq      #$0, d0
0030dc: 508f         addq.l     #$8, a7
0030de: 6000016c     bra.w      $324c
0030e2: 2057         movea.l    (a7), a0
0030e4: 7000         moveq      #$0, d0
0030e6: 1010         move.b     (a0), d0
0030e8: c1fc000c     muls.w     #$c, d0
0030ec: 2057         movea.l    (a7), a0
0030ee: 226f0008     movea.l    $8(a7), a1
0030f2: 12b00802     move.b     $2(a0, d0.l), (a1)
0030f6: 2057         movea.l    (a7), a0
0030f8: 7000         moveq      #$0, d0
0030fa: 1010         move.b     (a0), d0
0030fc: c1fc000c     muls.w     #$c, d0
003100: 2057         movea.l    (a7), a0
003102: 226f0008     movea.l    $8(a7), a1
003106: 137008030001 move.b     $3(a0, d0.l), $1(a1)
00310c: 2057         movea.l    (a7), a0
00310e: 7000         moveq      #$0, d0
003110: 1010         move.b     (a0), d0
003112: c1fc000c     muls.w     #$c, d0
003116: 2057         movea.l    (a7), a0
003118: 226f0008     movea.l    $8(a7), a1
00311c: 137008040002 move.b     $4(a0, d0.l), $2(a1)
003122: 2057         movea.l    (a7), a0
003124: 7000         moveq      #$0, d0
003126: 1010         move.b     (a0), d0
003128: c1fc000c     muls.w     #$c, d0
00312c: 2057         movea.l    (a7), a0
00312e: 226f0008     movea.l    $8(a7), a1
003132: 337008060004 move.w     $6(a0, d0.l), $4(a1)
003138: 558f         subq.l     #$2, a7
00313a: 206f000a     movea.l    $a(a7), a0
00313e: 1f6800040001 move.b     $4(a0), $1(a7)
003144: 206f000a     movea.l    $a(a7), a0
003148: 226f000a     movea.l    $a(a7), a1
00314c: 136800050004 move.b     $5(a0), $4(a1)
003152: 206f000a     movea.l    $a(a7), a0
003156: 116f00010005 move.b     $1(a7), $5(a0)
00315c: 548f         addq.l     #$2, a7
00315e: 2057         movea.l    (a7), a0
003160: 7000         moveq      #$0, d0
003162: 1010         move.b     (a0), d0
003164: c1fc000c     muls.w     #$c, d0
003168: 2057         movea.l    (a7), a0
00316a: 226f0008     movea.l    $8(a7), a1
00316e: 337008080006 move.w     $8(a0, d0.l), $6(a1)
003174: 558f         subq.l     #$2, a7
003176: 206f000a     movea.l    $a(a7), a0
00317a: 1f6800060001 move.b     $6(a0), $1(a7)
003180: 206f000a     movea.l    $a(a7), a0
003184: 226f000a     movea.l    $a(a7), a1
003188: 136800070006 move.b     $7(a0), $6(a1)
00318e: 206f000a     movea.l    $a(a7), a0
003192: 116f00010007 move.b     $1(a7), $7(a0)
003198: 548f         addq.l     #$2, a7
00319a: 206f0008     movea.l    $8(a7), a0
00319e: 7000         moveq      #$0, d0
0031a0: 30280006     move.w     $6(a0), d0
0031a4: 7264         moveq      #$64, d1
0031a6: 6100238a     bsr.w      $5532
0031aa: 206f0008     movea.l    $8(a7), a0
0031ae: 31400006     move.w     d0, $6(a0)
0031b2: 2057         movea.l    (a7), a0
0031b4: 7000         moveq      #$0, d0
0031b6: 1010         move.b     (a0), d0
0031b8: c1fc000c     muls.w     #$c, d0
0031bc: 2057         movea.l    (a7), a0
0031be: 226f0008     movea.l    $8(a7), a1
0031c2: 1370080d0008 move.b     $d(a0, d0.l), $8(a1)
0031c8: 2057         movea.l    (a7), a0
0031ca: 7000         moveq      #$0, d0
0031cc: 1010         move.b     (a0), d0
0031ce: c1fc000c     muls.w     #$c, d0
0031d2: 2057         movea.l    (a7), a0
0031d4: 226f0008     movea.l    $8(a7), a1
0031d8: 1370080c0009 move.b     $c(a0, d0.l), $9(a1)
0031de: 2057         movea.l    (a7), a0
0031e0: 7000         moveq      #$0, d0
0031e2: 1010         move.b     (a0), d0
0031e4: c1fc000c     muls.w     #$c, d0
0031e8: 2057         movea.l    (a7), a0
0031ea: 226f0008     movea.l    $8(a7), a1
0031ee: 1370080b000a move.b     $b(a0, d0.l), $a(a1)
0031f4: 2057         movea.l    (a7), a0
0031f6: 7000         moveq      #$0, d0
0031f8: 1010         move.b     (a0), d0
0031fa: c1fc000c     muls.w     #$c, d0
0031fe: 2057         movea.l    (a7), a0
003200: 226f0008     movea.l    $8(a7), a1
003204: 1370080a000b move.b     $a(a0, d0.l), $b(a1)
00320a: 2057         movea.l    (a7), a0
00320c: 7000         moveq      #$0, d0
00320e: 1010         move.b     (a0), d0
003210: 5240         addq.w     #$1, d0
003212: 48c0         ext.l      d0
003214: 81fc0015     divs.w     #$15, d0
003218: 4840         swap       d0
00321a: 2057         movea.l    (a7), a0
00321c: 1080         move.b     d0, (a0)
00321e: 2057         movea.l    (a7), a0
003220: 7000         moveq      #$0, d0
003222: 1010         move.b     (a0), d0
003224: 2057         movea.l    (a7), a0
003226: 7200         moveq      #$0, d1
003228: 12280001     move.b     $1(a0), d1
00322c: 9240         sub.w      d0, d1
00322e: 48c1         ext.l      d1
003230: 5281         addq.l     #$1, d1
003232: 2f410004     move.l     d1, $4(a7)
003236: 6c000008     bge.w      $3240
00323a: 7015         moveq      #$15, d0
00323c: d1af0004     add.l      d0, $4(a7)
003240: 202f0004     move.l     $4(a7), d0
003244: 508f         addq.l     #$8, a7
003246: 60000004     bra.w      $324c
00324a: 4e71         nop        
00324c: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
003252: 4e5d         unlk       a5
003254: 4e75         rts        
003256: 4afb         .dc.w      $4afb
003258: 00322f6e7672 ori.b      #$6e, $72(a2, d7.w)
00325e: 2f6e765f736c move.l     $765f(a6), $736c(a7)
003264: 6176         bsr.b      $32dc
003266: 65002f68     bcs.w      $61d0
00326a: 5f697463     subq.w     #$7, $7463(a1)
00326e: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003274: 6974         bvs.b      $32ea
003276: 632f         bls.b      $32a7
003278: 7200         moveq      #$0, d1
00327a: 2f685f697463 move.l     $5f69(a0), $7463(a7)
003280: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003286: 6974         bvs.b      $32fc
003288: 632f         bls.b      $32b9
00328a: 7200         moveq      #$0, d1
00328c: 4e550000     link.w     a5, #$0
003290: 48e7c080     movem.l    d0-d1/a0, -(a7)
003294: 203cffffffb8 move.l     #$ffffffb8, d0
00329a: 6100ced4     bsr.w      $170
00329e: 4aaeb148     tst.l      -$4eb8(a6)
0032a2: 6c00001c     bge.w      $32c0
0032a6: 7203         moveq      #$3, d1
0032a8: 41fa0336     lea.l      $35e0(pc), a0
0032ac: 2008         move.l     a0, d0
0032ae: 61001e12     bsr.w      $50c2
0032b2: 2d40b148     move.l     d0, -$4eb8(a6)
0032b6: 6c000008     bge.w      $32c0
0032ba: 70ff         moveq      #$ff, d0
0032bc: 6000001a     bra.w      $32d8
0032c0: 42a7         clr.l      -(a7)
0032c2: 222eb148     move.l     -$4eb8(a6), d1
0032c6: 203c00000704 move.l     #$704, d0
0032cc: 61001bb2     bsr.w      $4e80
0032d0: 588f         addq.l     #$4, a7
0032d2: 60000004     bra.w      $32d8
0032d6: 4e71         nop        
0032d8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0032de: 4e5d         unlk       a5
0032e0: 4e75         rts        
0032e2: 4e550000     link.w     a5, #$0
0032e6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0032ea: 203cffffffb8 move.l     #$ffffffb8, d0
0032f0: 6100ce7e     bsr.w      $170
0032f4: 4aaeb148     tst.l      -$4eb8(a6)
0032f8: 6c00001c     bge.w      $3316
0032fc: 7203         moveq      #$3, d1
0032fe: 41fa02e9     lea.l      $35e9(pc), a0
003302: 2008         move.l     a0, d0
003304: 61001dbc     bsr.w      $50c2
003308: 2d40b148     move.l     d0, -$4eb8(a6)
00330c: 6c000008     bge.w      $3316
003310: 70ff         moveq      #$ff, d0
003312: 6000001a     bra.w      $332e
003316: 42a7         clr.l      -(a7)
003318: 222eb148     move.l     -$4eb8(a6), d1
00331c: 203c00000703 move.l     #$703, d0
003322: 61001b5c     bsr.w      $4e80
003326: 588f         addq.l     #$4, a7
003328: 60000004     bra.w      $332e
00332c: 4e71         nop        
00332e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003334: 4e5d         unlk       a5
003336: 4e75         rts        
003338: 4e550000     link.w     a5, #$0
00333c: 48e7c080     movem.l    d0-d1/a0, -(a7)
003340: 203cffffffb8 move.l     #$ffffffb8, d0
003346: 6100ce28     bsr.w      $170
00334a: 4aaeb148     tst.l      -$4eb8(a6)
00334e: 6c00001c     bge.w      $336c
003352: 7203         moveq      #$3, d1
003354: 41fa029c     lea.l      $35f2(pc), a0
003358: 2008         move.l     a0, d0
00335a: 61001d66     bsr.w      $50c2
00335e: 2d40b148     move.l     d0, -$4eb8(a6)
003362: 6c000008     bge.w      $336c
003366: 70ff         moveq      #$ff, d0
003368: 6000001a     bra.w      $3384
00336c: 42a7         clr.l      -(a7)
00336e: 222eb148     move.l     -$4eb8(a6), d1
003372: 203c00000702 move.l     #$702, d0
003378: 61001b06     bsr.w      $4e80
00337c: 588f         addq.l     #$4, a7
00337e: 60000004     bra.w      $3384
003382: 4e71         nop        
003384: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00338a: 4e5d         unlk       a5
00338c: 4e75         rts        
00338e: 4e550000     link.w     a5, #$0
003392: 48e7c080     movem.l    d0-d1/a0, -(a7)
003396: 203cffffffb8 move.l     #$ffffffb8, d0
00339c: 6100cdd2     bsr.w      $170
0033a0: 4aaeb148     tst.l      -$4eb8(a6)
0033a4: 6c00001c     bge.w      $33c2
0033a8: 7203         moveq      #$3, d1
0033aa: 41fa024f     lea.l      $35fb(pc), a0
0033ae: 2008         move.l     a0, d0
0033b0: 61001d10     bsr.w      $50c2
0033b4: 2d40b148     move.l     d0, -$4eb8(a6)
0033b8: 6c000008     bge.w      $33c2
0033bc: 70ff         moveq      #$ff, d0
0033be: 60000022     bra.w      $33e2
0033c2: 102f0003     move.b     $3(a7), d0
0033c6: 4880         ext.w      d0
0033c8: 48c0         ext.l      d0
0033ca: 2f00         move.l     d0, -(a7)
0033cc: 222eb148     move.l     -$4eb8(a6), d1
0033d0: 203c00000700 move.l     #$700, d0
0033d6: 61001b0c     bsr.w      $4ee4
0033da: 588f         addq.l     #$4, a7
0033dc: 60000004     bra.w      $33e2
0033e0: 4e71         nop        
0033e2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0033e8: 4e5d         unlk       a5
0033ea: 4e75         rts        
0033ec: 4e550000     link.w     a5, #$0
0033f0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0033f4: 203cffffffb4 move.l     #$ffffffb4, d0
0033fa: 6100cd74     bsr.w      $170
0033fe: 598f         subq.l     #$4, a7
003400: 4aaeb148     tst.l      -$4eb8(a6)
003404: 6c00001e     bge.w      $3424
003408: 7203         moveq      #$3, d1
00340a: 41fa01f8     lea.l      $3604(pc), a0
00340e: 2008         move.l     a0, d0
003410: 61001cb0     bsr.w      $50c2
003414: 2d40b148     move.l     d0, -$4eb8(a6)
003418: 6c00000a     bge.w      $3424
00341c: 70ff         moveq      #$ff, d0
00341e: 588f         addq.l     #$4, a7
003420: 6000002e     bra.w      $3450
003424: 42a7         clr.l      -(a7)
003426: 222eb148     move.l     -$4eb8(a6), d1
00342a: 203c00000701 move.l     #$701, d0
003430: 61001ab2     bsr.w      $4ee4
003434: 588f         addq.l     #$4, a7
003436: 2e80         move.l     d0, (a7)
003438: 4a97         tst.l      (a7)
00343a: 6700000a     beq.w      $3446
00343e: 2017         move.l     (a7), d0
003440: 588f         addq.l     #$4, a7
003442: 6000000c     bra.w      $3450
003446: 7000         moveq      #$0, d0
003448: 588f         addq.l     #$4, a7
00344a: 60000004     bra.w      $3450
00344e: 4e71         nop        
003450: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003456: 4e5d         unlk       a5
003458: 4e75         rts        
00345a: 4e550000     link.w     a5, #$0
00345e: 48e7c080     movem.l    d0-d1/a0, -(a7)
003462: 203cffffffb8 move.l     #$ffffffb8, d0
003468: 6100cd06     bsr.w      $170
00346c: 4aaeb148     tst.l      -$4eb8(a6)
003470: 6c00001c     bge.w      $348e
003474: 7203         moveq      #$3, d1
003476: 41fa0195     lea.l      $360d(pc), a0
00347a: 2008         move.l     a0, d0
00347c: 61001c44     bsr.w      $50c2
003480: 2d40b148     move.l     d0, -$4eb8(a6)
003484: 6c000008     bge.w      $348e
003488: 70ff         moveq      #$ff, d0
00348a: 6000001a     bra.w      $34a6
00348e: 42a7         clr.l      -(a7)
003490: 222eb148     move.l     -$4eb8(a6), d1
003494: 203c00000706 move.l     #$706, d0
00349a: 61001a48     bsr.w      $4ee4
00349e: 588f         addq.l     #$4, a7
0034a0: 60000004     bra.w      $34a6
0034a4: 4e71         nop        
0034a6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0034ac: 4e5d         unlk       a5
0034ae: 4e75         rts        
0034b0: 4e550000     link.w     a5, #$0
0034b4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0034b8: 203cffffffb8 move.l     #$ffffffb8, d0
0034be: 6100ccb0     bsr.w      $170
0034c2: 4aaeb148     tst.l      -$4eb8(a6)
0034c6: 6c00001c     bge.w      $34e4
0034ca: 7203         moveq      #$3, d1
0034cc: 41fa0148     lea.l      $3616(pc), a0
0034d0: 2008         move.l     a0, d0
0034d2: 61001bee     bsr.w      $50c2
0034d6: 2d40b148     move.l     d0, -$4eb8(a6)
0034da: 6c000008     bge.w      $34e4
0034de: 70ff         moveq      #$ff, d0
0034e0: 6000001a     bra.w      $34fc
0034e4: 42a7         clr.l      -(a7)
0034e6: 222eb148     move.l     -$4eb8(a6), d1
0034ea: 203c00000705 move.l     #$705, d0
0034f0: 610019f2     bsr.w      $4ee4
0034f4: 588f         addq.l     #$4, a7
0034f6: 60000004     bra.w      $34fc
0034fa: 4e71         nop        
0034fc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003502: 4e5d         unlk       a5
003504: 4e75         rts        
003506: 4e550000     link.w     a5, #$0
00350a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00350e: 203cffffffb4 move.l     #$ffffffb4, d0
003514: 6100cc5a     bsr.w      $170
003518: 598f         subq.l     #$4, a7
00351a: 4aaeb148     tst.l      -$4eb8(a6)
00351e: 6c00001e     bge.w      $353e
003522: 7203         moveq      #$3, d1
003524: 41fa00f9     lea.l      $361f(pc), a0
003528: 2008         move.l     a0, d0
00352a: 61001b96     bsr.w      $50c2
00352e: 2d40b148     move.l     d0, -$4eb8(a6)
003532: 6c00000a     bge.w      $353e
003536: 70ff         moveq      #$ff, d0
003538: 588f         addq.l     #$4, a7
00353a: 60000096     bra.w      $35d2
00353e: 42a7         clr.l      -(a7)
003540: 222eb148     move.l     -$4eb8(a6), d1
003544: 203c0000070c move.l     #$70c, d0
00354a: 61001934     bsr.w      $4e80
00354e: 588f         addq.l     #$4, a7
003550: 4a80         tst.l      d0
003552: 6700000a     beq.w      $355e
003556: 70ff         moveq      #$ff, d0
003558: 588f         addq.l     #$4, a7
00355a: 60000076     bra.w      $35d2
00355e: 4aaeb14c     tst.l      -$4eb4(a6)
003562: 66000026     bne.w      $358a
003566: 42a7         clr.l      -(a7)
003568: 223c00000082 move.l     #$82, d1
00356e: 203c0000008a move.l     #$8a, d0
003574: 6100014c     bsr.w      $36c2
003578: 588f         addq.l     #$4, a7
00357a: 2d40b14c     move.l     d0, -$4eb4(a6)
00357e: 6600000a     bne.w      $358a
003582: 70ff         moveq      #$ff, d0
003584: 588f         addq.l     #$4, a7
003586: 6000004a     bra.w      $35d2
00358a: 48780002     pea.l      $2.w
00358e: 41ef0004     lea.l      $4(a7), a0
003592: 2208         move.l     a0, d1
003594: 202eb14c     move.l     -$4eb4(a6), d0
003598: 610002d6     bsr.w      $3870
00359c: 588f         addq.l     #$4, a7
00359e: 7202         moveq      #$2, d1
0035a0: b280         cmp.l      d0, d1
0035a2: 6700000a     beq.w      $35ae
0035a6: 70ff         moveq      #$ff, d0
0035a8: 588f         addq.l     #$4, a7
0035aa: 60000026     bra.w      $35d2
0035ae: 7000         moveq      #$0, d0
0035b0: 302f0002     move.w     $2(a7), d0
0035b4: 7264         moveq      #$64, d1
0035b6: 61001f7a     bsr.w      $5532
0035ba: 206f0004     movea.l    $4(a7), a0
0035be: 2080         move.l     d0, (a0)
0035c0: 3057         movea.w    (a7), a0
0035c2: 226f0008     movea.l    $8(a7), a1
0035c6: 2288         move.l     a0, (a1)
0035c8: 7000         moveq      #$0, d0
0035ca: 588f         addq.l     #$4, a7
0035cc: 60000004     bra.w      $35d2
0035d0: 4e71         nop        
0035d2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0035d8: 4e5d         unlk       a5
0035da: 4e75         rts        
0035dc: 4afb         .dc.w      $4afb
0035de: 0048         .dc.w      $0048
0035e0: 2f685f697463 move.l     $5f69(a0), $7463(a7)
0035e6: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
0035ec: 6974         bvs.b      $3662
0035ee: 632f         bls.b      $361f
0035f0: 7200         moveq      #$0, d1
0035f2: 2f685f697463 move.l     $5f69(a0), $7463(a7)
0035f8: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
0035fe: 6974         bvs.b      $3674
003600: 632f         bls.b      $3631
003602: 7200         moveq      #$0, d1
003604: 2f685f697463 move.l     $5f69(a0), $7463(a7)
00360a: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003610: 6974         bvs.b      $3686
003612: 632f         bls.b      $3643
003614: 7200         moveq      #$0, d1
003616: 2f685f697463 move.l     $5f69(a0), $7463(a7)
00361c: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003622: 6974         bvs.b      $3698
003624: 632f         bls.b      $3655
003626: 7200         moveq      #$0, d1
003628: 4e550000     link.w     a5, #$0
00362c: 48e7c080     movem.l    d0-d1/a0, -(a7)
003630: 203cffffff90 move.l     #$ffffff90, d0
003636: 6100cb38     bsr.w      $170
00363a: 4fefffd8     lea.l      -$28(a7), a7
00363e: 2f2f0028     move.l     $28(a7), -(a7)
003642: 7200         moveq      #$0, d1
003644: 203c000000d0 move.l     #$d0, d0
00364a: 6100058a     bsr.w      $3bd6
00364e: 588f         addq.l     #$4, a7
003650: 72ff         moveq      #$ff, d1
003652: b280         cmp.l      d0, d1
003654: 6600000c     bne.w      $3662
003658: 70ff         moveq      #$ff, d0
00365a: 4fef0028     lea.l      $28(a7), a7
00365e: 60000058     bra.w      $36b8
003662: 42a7         clr.l      -(a7)
003664: 223c00000081 move.l     #$81, d1
00366a: 203c00000088 move.l     #$88, d0
003670: 61000050     bsr.w      $36c2
003674: 588f         addq.l     #$4, a7
003676: 2f400004     move.l     d0, $4(a7)
00367a: 6600000c     bne.w      $3688
00367e: 70ff         moveq      #$ff, d0
003680: 4fef0028     lea.l      $28(a7), a7
003684: 60000032     bra.w      $36b8
003688: 1f7c00020008 move.b     #$2, $8(a7)
00368e: 48780001     pea.l      $1.w
003692: 41ef000c     lea.l      $c(a7), a0
003696: 2208         move.l     a0, d1
003698: 202f0008     move.l     $8(a7), d0
00369c: 61000166     bsr.w      $3804
0036a0: 588f         addq.l     #$4, a7
0036a2: 2e80         move.l     d0, (a7)
0036a4: 202f0004     move.l     $4(a7), d0
0036a8: 61000116     bsr.w      $37c0
0036ac: 2017         move.l     (a7), d0
0036ae: 4fef0028     lea.l      $28(a7), a7
0036b2: 60000004     bra.w      $36b8
0036b6: 4e71         nop        
0036b8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0036be: 4e5d         unlk       a5
0036c0: 4e75         rts        
0036c2: 4e550000     link.w     a5, #$0
0036c6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0036ca: 203cffffff92 move.l     #$ffffff92, d0
0036d0: 6100ca9e     bsr.w      $170
0036d4: 4fefffde     lea.l      -$22(a7), a7
0036d8: 7000         moveq      #$0, d0
0036da: 102f0025     move.b     $25(a7), d0
0036de: 2f00         move.l     d0, -(a7)
0036e0: 2f2eb158     move.l     -$4ea8(a6), -(a7)
0036e4: 41fa043b     lea.l      $3b21(pc), a0
0036e8: 2208         move.l     a0, d1
0036ea: 41ef000c     lea.l      $c(a7), a0
0036ee: 2008         move.l     a0, d0
0036f0: 61001990     bsr.w      $5082
0036f4: 508f         addq.l     #$8, a7
0036f6: 7000         moveq      #$0, d0
0036f8: 102f0029     move.b     $29(a7), d0
0036fc: e188         lsl.l      #$8, d0
0036fe: 7200         moveq      #$0, d1
003700: 122f0039     move.b     $39(a7), d1
003704: 8081         or.l       d1, d0
003706: 2f00         move.l     d0, -(a7)
003708: 7203         moveq      #$3, d1
00370a: 41ef0008     lea.l      $8(a7), a0
00370e: 2008         move.l     a0, d0
003710: 610019a8     bsr.w      $50ba
003714: 588f         addq.l     #$4, a7
003716: 2e80         move.l     d0, (a7)
003718: 6c00000c     bge.w      $3726
00371c: 7000         moveq      #$0, d0
00371e: 4fef0022     lea.l      $22(a7), a7
003722: 60000010     bra.w      $3734
003726: 2017         move.l     (a7), d0
003728: 5280         addq.l     #$1, d0
00372a: 4fef0022     lea.l      $22(a7), a7
00372e: 60000004     bra.w      $3734
003732: 4e71         nop        
003734: 4ced0100fffc movem.l    -$4(a5), a0
00373a: 4e5d         unlk       a5
00373c: 4e75         rts        
00373e: 4e550000     link.w     a5, #$0
003742: 48e7c080     movem.l    d0-d1/a0, -(a7)
003746: 203cffffff92 move.l     #$ffffff92, d0
00374c: 6100ca22     bsr.w      $170
003750: 4fefffde     lea.l      -$22(a7), a7
003754: 7000         moveq      #$0, d0
003756: 102f0025     move.b     $25(a7), d0
00375a: 2f00         move.l     d0, -(a7)
00375c: 2f2eb158     move.l     -$4ea8(a6), -(a7)
003760: 41fa03c6     lea.l      $3b28(pc), a0
003764: 2208         move.l     a0, d1
003766: 41ef000c     lea.l      $c(a7), a0
00376a: 2008         move.l     a0, d0
00376c: 61001914     bsr.w      $5082
003770: 508f         addq.l     #$8, a7
003772: 2f2f0036     move.l     $36(a7), -(a7)
003776: 7000         moveq      #$0, d0
003778: 102f002d     move.b     $2d(a7), d0
00377c: 2f00         move.l     d0, -(a7)
00377e: 7221         moveq      #$21, d1
003780: 41ef000c     lea.l      $c(a7), a0
003784: 2008         move.l     a0, d0
003786: 61001932     bsr.w      $50ba
00378a: 508f         addq.l     #$8, a7
00378c: 2e80         move.l     d0, (a7)
00378e: 4a97         tst.l      (a7)
003790: 6d000016     blt.w      $37a8
003794: 2017         move.l     (a7), d0
003796: 6100195a     bsr.w      $50f2
00379a: 7000         moveq      #$0, d0
00379c: 4fef0022     lea.l      $22(a7), a7
0037a0: 60000014     bra.w      $37b6
0037a4: 6000000c     bra.w      $37b2
0037a8: 70ff         moveq      #$ff, d0
0037aa: 4fef0022     lea.l      $22(a7), a7
0037ae: 60000006     bra.w      $37b6
0037b2: 4fef0022     lea.l      $22(a7), a7
0037b6: 4ced0100fffc movem.l    -$4(a5), a0
0037bc: 4e5d         unlk       a5
0037be: 4e75         rts        
0037c0: 4e550000     link.w     a5, #$0
0037c4: 48e78000     movem.l    d0, -(a7)
0037c8: 203cffffffbc move.l     #$ffffffbc, d0
0037ce: 6100c9a0     bsr.w      $170
0037d2: 7001         moveq      #$1, d0
0037d4: b097         cmp.l      (a7), d0
0037d6: 6e00001a     bgt.w      $37f2
0037da: 2017         move.l     (a7), d0
0037dc: 5380         subq.l     #$1, d0
0037de: 61001912     bsr.w      $50f2
0037e2: 4a80         tst.l      d0
0037e4: 6d00000c     blt.w      $37f2
0037e8: 7000         moveq      #$0, d0
0037ea: 60000014     bra.w      $3800
0037ee: 60000010     bra.w      $3800
0037f2: 2d7c000000c9800c move.l     #$c9, -$7ff4(a6)
0037fa: 70ff         moveq      #$ff, d0
0037fc: 60000002     bra.w      $3800
003800: 4e5d         unlk       a5
003802: 4e75         rts        
003804: 4e550000     link.w     a5, #$0
003808: 48e7c000     movem.l    d0-d1, -(a7)
00380c: 203cffffffb8 move.l     #$ffffffb8, d0
003812: 6100c95c     bsr.w      $170
003816: 7000         moveq      #$0, d0
003818: 102f0013     move.b     $13(a7), d0
00381c: 2f00         move.l     d0, -(a7)
00381e: 222f0008     move.l     $8(a7), d1
003822: 202f0004     move.l     $4(a7), d0
003826: 5380         subq.l     #$1, d0
003828: 610018b4     bsr.w      $50de
00382c: 588f         addq.l     #$4, a7
00382e: 60000004     bra.w      $3834
003832: 4e71         nop        
003834: 4e5d         unlk       a5
003836: 4e75         rts        
003838: 4e550000     link.w     a5, #$0
00383c: 48e7c000     movem.l    d0-d1, -(a7)
003840: 203cffffffb8 move.l     #$ffffffb8, d0
003846: 6100c928     bsr.w      $170
00384a: 7000         moveq      #$0, d0
00384c: 102f0007     move.b     $7(a7), d0
003850: 2f00         move.l     d0, -(a7)
003852: 202f0004     move.l     $4(a7), d0
003856: 5380         subq.l     #$1, d0
003858: 2200         move.l     d0, d1
00385a: 203c00000808 move.l     #$808, d0
003860: 61001682     bsr.w      $4ee4
003864: 588f         addq.l     #$4, a7
003866: 60000004     bra.w      $386c
00386a: 4e71         nop        
00386c: 4e5d         unlk       a5
00386e: 4e75         rts        
003870: 4e550000     link.w     a5, #$0
003874: 48e7c000     movem.l    d0-d1, -(a7)
003878: 203cffffffb8 move.l     #$ffffffb8, d0
00387e: 6100c8f0     bsr.w      $170
003882: 7000         moveq      #$0, d0
003884: 102f0013     move.b     $13(a7), d0
003888: 2f00         move.l     d0, -(a7)
00388a: 222f0008     move.l     $8(a7), d1
00388e: 202f0004     move.l     $4(a7), d0
003892: 5380         subq.l     #$1, d0
003894: 61001840     bsr.w      $50d6
003898: 588f         addq.l     #$4, a7
00389a: 60000004     bra.w      $38a0
00389e: 4e71         nop        
0038a0: 4e5d         unlk       a5
0038a2: 4e75         rts        
0038a4: 4e550000     link.w     a5, #$0
0038a8: 48e7c000     movem.l    d0-d1, -(a7)
0038ac: 203cffffffb8 move.l     #$ffffffb8, d0
0038b2: 6100c8bc     bsr.w      $170
0038b6: 42a7         clr.l      -(a7)
0038b8: 202f0004     move.l     $4(a7), d0
0038bc: 5380         subq.l     #$1, d0
0038be: 2200         move.l     d0, d1
0038c0: 203c00000802 move.l     #$802, d0
0038c6: 610015b8     bsr.w      $4e80
0038ca: 588f         addq.l     #$4, a7
0038cc: 60000004     bra.w      $38d2
0038d0: 4e71         nop        
0038d2: 4ced0002fffc movem.l    -$4(a5), d1
0038d8: 4e5d         unlk       a5
0038da: 4e75         rts        
0038dc: 4e550000     link.w     a5, #$0
0038e0: 48e7c000     movem.l    d0-d1, -(a7)
0038e4: 203cffffffb8 move.l     #$ffffffb8, d0
0038ea: 6100c884     bsr.w      $170
0038ee: 2f2f0004     move.l     $4(a7), -(a7)
0038f2: 202f0004     move.l     $4(a7), d0
0038f6: 5380         subq.l     #$1, d0
0038f8: 2200         move.l     d0, d1
0038fa: 203c00000803 move.l     #$803, d0
003900: 6100157e     bsr.w      $4e80
003904: 588f         addq.l     #$4, a7
003906: 60000004     bra.w      $390c
00390a: 4e71         nop        
00390c: 4e5d         unlk       a5
00390e: 4e75         rts        
003910: 4e550000     link.w     a5, #$0
003914: 48e78000     movem.l    d0, -(a7)
003918: 203cffffffc0 move.l     #$ffffffc0, d0
00391e: 6100c850     bsr.w      $170
003922: 4e5d         unlk       a5
003924: 4e75         rts        
003926: 4e550000     link.w     a5, #$0
00392a: 48e7c000     movem.l    d0-d1, -(a7)
00392e: 203cffffffb8 move.l     #$ffffffb8, d0
003934: 6100c83a     bsr.w      $170
003938: 42a7         clr.l      -(a7)
00393a: 202f0004     move.l     $4(a7), d0
00393e: 5380         subq.l     #$1, d0
003940: 2200         move.l     d0, d1
003942: 203c00000806 move.l     #$806, d0
003948: 61001536     bsr.w      $4e80
00394c: 588f         addq.l     #$4, a7
00394e: 60000004     bra.w      $3954
003952: 4e71         nop        
003954: 4ced0002fffc movem.l    -$4(a5), d1
00395a: 4e5d         unlk       a5
00395c: 4e75         rts        
00395e: 4e550000     link.w     a5, #$0
003962: 48e7c000     movem.l    d0-d1, -(a7)
003966: 203cffffffb8 move.l     #$ffffffb8, d0
00396c: 6100c802     bsr.w      $170
003970: 7000         moveq      #$0, d0
003972: 102f0007     move.b     $7(a7), d0
003976: 2f00         move.l     d0, -(a7)
003978: 202f0004     move.l     $4(a7), d0
00397c: 5380         subq.l     #$1, d0
00397e: 2200         move.l     d0, d1
003980: 203c00000807 move.l     #$807, d0
003986: 6100155c     bsr.w      $4ee4
00398a: 588f         addq.l     #$4, a7
00398c: 60000004     bra.w      $3992
003990: 4e71         nop        
003992: 4e5d         unlk       a5
003994: 4e75         rts        
003996: 4e550000     link.w     a5, #$0
00399a: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
00399e: 2440         movea.l    d0, a2
0039a0: 2641         movea.l    d1, a3
0039a2: 203cffffffc0 move.l     #$ffffffc0, d0
0039a8: 6100c7c6     bsr.w      $170
0039ac: 7000         moveq      #$0, d0
0039ae: 102f001f     move.b     $1f(a7), d0
0039b2: d08b         add.l      a3, d0
0039b4: 2840         movea.l    d0, a4
0039b6: 60000008     bra.w      $39c0
0039ba: 1493         move.b     (a3), (a2)
0039bc: 528a         addq.l     #$1, a2
0039be: 528b         addq.l     #$1, a3
0039c0: b7cc         cmpa.l     a4, a3
0039c2: 6500fff6     bcs.w      $39ba
0039c6: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0039cc: 4e5d         unlk       a5
0039ce: 4e75         rts        
0039d0: 4e550000     link.w     a5, #$0
0039d4: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
0039d8: 2440         movea.l    d0, a2
0039da: 2641         movea.l    d1, a3
0039dc: 203cffffffc0 move.l     #$ffffffc0, d0
0039e2: 6100c78c     bsr.w      $170
0039e6: 7000         moveq      #$0, d0
0039e8: 102f001f     move.b     $1f(a7), d0
0039ec: e388         lsl.l      #$1, d0
0039ee: d08b         add.l      a3, d0
0039f0: 2840         movea.l    d0, a4
0039f2: 6000000e     bra.w      $3a02
0039f6: 14ab0001     move.b     $1(a3), (a2)
0039fa: 15530001     move.b     (a3), $1(a2)
0039fe: 548a         addq.l     #$2, a2
003a00: 548b         addq.l     #$2, a3
003a02: b7cc         cmpa.l     a4, a3
003a04: 6500fff0     bcs.w      $39f6
003a08: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003a0e: 4e5d         unlk       a5
003a10: 4e75         rts        
003a12: 4e550000     link.w     a5, #$0
003a16: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003a1a: 2440         movea.l    d0, a2
003a1c: 2641         movea.l    d1, a3
003a1e: 203cffffffc0 move.l     #$ffffffc0, d0
003a24: 6100c74a     bsr.w      $170
003a28: 7000         moveq      #$0, d0
003a2a: 102f001f     move.b     $1f(a7), d0
003a2e: e588         lsl.l      #$2, d0
003a30: d08b         add.l      a3, d0
003a32: 2840         movea.l    d0, a4
003a34: 6000001a     bra.w      $3a50
003a38: 14ab0003     move.b     $3(a3), (a2)
003a3c: 156b00020001 move.b     $2(a3), $1(a2)
003a42: 156b00010002 move.b     $1(a3), $2(a2)
003a48: 15530003     move.b     (a3), $3(a2)
003a4c: 588a         addq.l     #$4, a2
003a4e: 588b         addq.l     #$4, a3
003a50: b7cc         cmpa.l     a4, a3
003a52: 6500ffe4     bcs.w      $3a38
003a56: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003a5c: 4e5d         unlk       a5
003a5e: 4e75         rts        
003a60: 4e550000     link.w     a5, #$0
003a64: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003a68: 2440         movea.l    d0, a2
003a6a: 2641         movea.l    d1, a3
003a6c: 203cffffffc0 move.l     #$ffffffc0, d0
003a72: 6100c6fc     bsr.w      $170
003a76: 7000         moveq      #$0, d0
003a78: 102f001f     move.b     $1f(a7), d0
003a7c: e588         lsl.l      #$2, d0
003a7e: d08b         add.l      a3, d0
003a80: 2840         movea.l    d0, a4
003a82: 6000001a     bra.w      $3a9e
003a86: 14ab0003     move.b     $3(a3), (a2)
003a8a: 156b00020001 move.b     $2(a3), $1(a2)
003a90: 156b00010002 move.b     $1(a3), $2(a2)
003a96: 15530003     move.b     (a3), $3(a2)
003a9a: 588a         addq.l     #$4, a2
003a9c: 588b         addq.l     #$4, a3
003a9e: b7cc         cmpa.l     a4, a3
003aa0: 6500ffe4     bcs.w      $3a86
003aa4: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003aaa: 4e5d         unlk       a5
003aac: 4e75         rts        
003aae: 4e550000     link.w     a5, #$0
003ab2: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003ab6: 2440         movea.l    d0, a2
003ab8: 2641         movea.l    d1, a3
003aba: 203cffffffc0 move.l     #$ffffffc0, d0
003ac0: 6100c6ae     bsr.w      $170
003ac4: 7000         moveq      #$0, d0
003ac6: 102f001f     move.b     $1f(a7), d0
003aca: e788         lsl.l      #$3, d0
003acc: d08b         add.l      a3, d0
003ace: 2840         movea.l    d0, a4
003ad0: 60000032     bra.w      $3b04
003ad4: 14ab0007     move.b     $7(a3), (a2)
003ad8: 156b00060001 move.b     $6(a3), $1(a2)
003ade: 156b00050002 move.b     $5(a3), $2(a2)
003ae4: 156b00040003 move.b     $4(a3), $3(a2)
003aea: 156b00030004 move.b     $3(a3), $4(a2)
003af0: 156b00020005 move.b     $2(a3), $5(a2)
003af6: 156b00010006 move.b     $1(a3), $6(a2)
003afc: 15530007     move.b     (a3), $7(a2)
003b00: 508a         addq.l     #$8, a2
003b02: 508b         addq.l     #$8, a3
003b04: b7cc         cmpa.l     a4, a3
003b06: 6500ffcc     bcs.w      $3ad4
003b0a: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003b10: 4e5d         unlk       a5
003b12: 4e75         rts        
003b14: 4afb         .dc.w      $4afb
003b16: 00172f68     ori.b      #$68, (a7)
003b1a: 5f697463     subq.w     #$7, $7463(a1)
003b1e: 2f730025735f move.l     $25(a3, d0.w), $735f(a7)
003b24: 25645f00     move.l     -(a4), $5f00(a2)
003b28: 25735f25645f0000 move.l     ([$645f, a3], d5.l * 8), $0(a2)
003b30: 4e550000     link.w     a5, #$0
003b34: 48e7c080     movem.l    d0-d1/a0, -(a7)
003b38: 203cffffffb4 move.l     #$ffffffb4, d0
003b3e: 6100c630     bsr.w      $170
003b42: 518f         subq.l     #$8, a7
003b44: 61001fe4     bsr.w      $5b2a
003b48: 2e80         move.l     d0, (a7)
003b4a: 7000         moveq      #$0, d0
003b4c: 102f000b     move.b     $b(a7), d0
003b50: 6100048c     bsr.w      $3fde
003b54: 2f400004     move.l     d0, $4(a7)
003b58: 66000022     bne.w      $3b7c
003b5c: 41eeb15c     lea.l      -$4ea4(a6), a0
003b60: 2208         move.l     a0, d1
003b62: 7000         moveq      #$0, d0
003b64: 102f000b     move.b     $b(a7), d0
003b68: 61000372     bsr.w      $3edc
003b6c: 2f400004     move.l     d0, $4(a7)
003b70: 6600000a     bne.w      $3b7c
003b74: 70ff         moveq      #$ff, d0
003b76: 508f         addq.l     #$8, a7
003b78: 60000052     bra.w      $3bcc
003b7c: 206f0004     movea.l    $4(a7), a0
003b80: 42a80004     clr.l      $4(a0)
003b84: 206f0004     movea.l    $4(a7), a0
003b88: 116f000b0010 move.b     $b(a7), $10(a0)
003b8e: 206f0004     movea.l    $4(a7), a0
003b92: 316f000e000c move.w     $e(a7), $c(a0)
003b98: 206f0004     movea.l    $4(a7), a0
003b9c: 317c0001000e move.w     #$1, $e(a0)
003ba2: 4aaeb15c     tst.l      -$4ea4(a6)
003ba6: 66000012     bne.w      $3bba
003baa: 2d7c00000109800c move.l     #$109, -$7ff4(a6)
003bb2: 70ff         moveq      #$ff, d0
003bb4: 508f         addq.l     #$8, a7
003bb6: 60000014     bra.w      $3bcc
003bba: 206f0004     movea.l    $4(a7), a0
003bbe: 21570004     move.l     (a7), $4(a0)
003bc2: 7000         moveq      #$0, d0
003bc4: 508f         addq.l     #$8, a7
003bc6: 60000004     bra.w      $3bcc
003bca: 4e71         nop        
003bcc: 4ced0100fffc movem.l    -$4(a5), a0
003bd2: 4e5d         unlk       a5
003bd4: 4e75         rts        
003bd6: 4e550000     link.w     a5, #$0
003bda: 48e7c080     movem.l    d0-d1/a0, -(a7)
003bde: 203cffffffb4 move.l     #$ffffffb4, d0
003be4: 6100c58a     bsr.w      $170
003be8: 518f         subq.l     #$8, a7
003bea: 61001f3e     bsr.w      $5b2a
003bee: 2e80         move.l     d0, (a7)
003bf0: 7000         moveq      #$0, d0
003bf2: 102f000b     move.b     $b(a7), d0
003bf6: 610003e6     bsr.w      $3fde
003bfa: 2f400004     move.l     d0, $4(a7)
003bfe: 66000022     bne.w      $3c22
003c02: 41eeb15c     lea.l      -$4ea4(a6), a0
003c06: 2208         move.l     a0, d1
003c08: 7000         moveq      #$0, d0
003c0a: 102f000b     move.b     $b(a7), d0
003c0e: 610002cc     bsr.w      $3edc
003c12: 2f400004     move.l     d0, $4(a7)
003c16: 6600000a     bne.w      $3c22
003c1a: 70ff         moveq      #$ff, d0
003c1c: 508f         addq.l     #$8, a7
003c1e: 60000052     bra.w      $3c72
003c22: 206f0004     movea.l    $4(a7), a0
003c26: 42a80004     clr.l      $4(a0)
003c2a: 206f0004     movea.l    $4(a7), a0
003c2e: 116f000b0010 move.b     $b(a7), $10(a0)
003c34: 206f0004     movea.l    $4(a7), a0
003c38: 316f000e000c move.w     $e(a7), $c(a0)
003c3e: 206f0004     movea.l    $4(a7), a0
003c42: 316f001e000e move.w     $1e(a7), $e(a0)
003c48: 4aaeb15c     tst.l      -$4ea4(a6)
003c4c: 66000012     bne.w      $3c60
003c50: 2d7c00000109800c move.l     #$109, -$7ff4(a6)
003c58: 70ff         moveq      #$ff, d0
003c5a: 508f         addq.l     #$8, a7
003c5c: 60000014     bra.w      $3c72
003c60: 206f0004     movea.l    $4(a7), a0
003c64: 21570004     move.l     (a7), $4(a0)
003c68: 7000         moveq      #$0, d0
003c6a: 508f         addq.l     #$8, a7
003c6c: 60000004     bra.w      $3c72
003c70: 4e71         nop        
003c72: 4ced0100fffc movem.l    -$4(a5), a0
003c78: 4e5d         unlk       a5
003c7a: 4e75         rts        
003c7c: 4e550000     link.w     a5, #$0
003c80: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003c84: 203cffffffb0 move.l     #$ffffffb0, d0
003c8a: 6100c4e4     bsr.w      $170
003c8e: 4feffff4     lea.l      -$c(a7), a7
003c92: 7000         moveq      #$0, d0
003c94: 102f000f     move.b     $f(a7), d0
003c98: 61000344     bsr.w      $3fde
003c9c: 2f400004     move.l     d0, $4(a7)
003ca0: 66000014     bne.w      $3cb6
003ca4: 2d7c00000108800c move.l     #$108, -$7ff4(a6)
003cac: 70ff         moveq      #$ff, d0
003cae: 4fef000c     lea.l      $c(a7), a7
003cb2: 60000068     bra.w      $3d1c
003cb6: 61001e72     bsr.w      $5b2a
003cba: 206eb15c     movea.l    -$4ea4(a6), a0
003cbe: b090         cmp.l      (a0), d0
003cc0: 67000014     beq.w      $3cd6
003cc4: 2d7c00000109800c move.l     #$109, -$7ff4(a6)
003ccc: 70ff         moveq      #$ff, d0
003cce: 4fef000c     lea.l      $c(a7), a7
003cd2: 60000048     bra.w      $3d1c
003cd6: 206eb15c     movea.l    -$4ea4(a6), a0
003cda: 226f0010     movea.l    $10(a7), a1
003cde: 32a80004     move.w     $4(a0), (a1)
003ce2: 206f0004     movea.l    $4(a7), a0
003ce6: 3028000c     move.w     $c(a0), d0
003cea: 4640         not.w      d0
003cec: 206eb15c     movea.l    -$4ea4(a6), a0
003cf0: c1680004     and.w      d0, $4(a0)
003cf4: 202f0004     move.l     $4(a7), d0
003cf8: 6100024e     bsr.w      $3f48
003cfc: 2e80         move.l     d0, (a7)
003cfe: 6d000010     blt.w      $3d10
003d02: 206eb15c     movea.l    -$4ea4(a6), a0
003d06: 4a90         tst.l      (a0)
003d08: 66000006     bne.w      $3d10
003d0c: 42aeb15c     clr.l      -$4ea4(a6)
003d10: 2017         move.l     (a7), d0
003d12: 4fef000c     lea.l      $c(a7), a7
003d16: 60000004     bra.w      $3d1c
003d1a: 4e71         nop        
003d1c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003d22: 4e5d         unlk       a5
003d24: 4e75         rts        
003d26: 4e550000     link.w     a5, #$0
003d2a: 48e78000     movem.l    d0, -(a7)
003d2e: 203cffffffbc move.l     #$ffffffbc, d0
003d34: 6100c43a     bsr.w      $170
003d38: 7000         moveq      #$0, d0
003d3a: 102f0003     move.b     $3(a7), d0
003d3e: 61000266     bsr.w      $3fa6
003d42: 7000         moveq      #$0, d0
003d44: 60000004     bra.w      $3d4a
003d48: 4e71         nop        
003d4a: 4e5d         unlk       a5
003d4c: 4e75         rts        
003d4e: 4e550000     link.w     a5, #$0
003d52: 48e7c000     movem.l    d0-d1, -(a7)
003d56: 203cffffffb4 move.l     #$ffffffb4, d0
003d5c: 6100c412     bsr.w      $170
003d60: 598f         subq.l     #$4, a7
003d62: 7000         moveq      #$0, d0
003d64: 102f0007     move.b     $7(a7), d0
003d68: 61000274     bsr.w      $3fde
003d6c: 2e80         move.l     d0, (a7)
003d6e: 66000012     bne.w      $3d82
003d72: 2d7c00000108800c move.l     #$108, -$7ff4(a6)
003d7a: 70ff         moveq      #$ff, d0
003d7c: 588f         addq.l     #$4, a7
003d7e: 6000001e     bra.w      $3d9e
003d82: 48780012     pea.l      $12.w
003d86: 222f0004     move.l     $4(a7), d1
003d8a: 202f000c     move.l     $c(a7), d0
003d8e: 61001638     bsr.w      $53c8
003d92: 588f         addq.l     #$4, a7
003d94: 7000         moveq      #$0, d0
003d96: 588f         addq.l     #$4, a7
003d98: 60000004     bra.w      $3d9e
003d9c: 4e71         nop        
003d9e: 4e5d         unlk       a5
003da0: 4e75         rts        
003da2: 4e550000     link.w     a5, #$0
003da6: 48e7c080     movem.l    d0-d1/a0, -(a7)
003daa: 203cffffffb8 move.l     #$ffffffb8, d0
003db0: 6100c3be     bsr.w      $170
003db4: 598f         subq.l     #$4, a7
003db6: 6100ec1c     bsr.w      $29d4
003dba: 206eb15c     movea.l    -$4ea4(a6), a0
003dbe: 316f00060006 move.w     $6(a7), $6(a0)
003dc4: 206eb15c     movea.l    -$4ea4(a6), a0
003dc8: 30280004     move.w     $4(a0), d0
003dcc: 206eb15c     movea.l    -$4ea4(a6), a0
003dd0: c0680006     and.w      $6(a0), d0
003dd4: 6600000a     bne.w      $3de0
003dd8: 202f0008     move.l     $8(a7), d0
003ddc: 61001aa6     bsr.w      $5884
003de0: 6100ec1e     bsr.w      $2a00
003de4: 206eb15c     movea.l    -$4ea4(a6), a0
003de8: 42680006     clr.w      $6(a0)
003dec: 206eb15c     movea.l    -$4ea4(a6), a0
003df0: 30280004     move.w     $4(a0), d0
003df4: c06f0006     and.w      $6(a7), d0
003df8: 206f0018     movea.l    $18(a7), a0
003dfc: 3080         move.w     d0, (a0)
003dfe: 206f0018     movea.l    $18(a7), a0
003e02: 3010         move.w     (a0), d0
003e04: 4640         not.w      d0
003e06: 206eb15c     movea.l    -$4ea4(a6), a0
003e0a: c1680004     and.w      d0, $4(a0)
003e0e: 7000         moveq      #$0, d0
003e10: 588f         addq.l     #$4, a7
003e12: 60000004     bra.w      $3e18
003e16: 4e71         nop        
003e18: 4ced0100fffc movem.l    -$4(a5), a0
003e1e: 4e5d         unlk       a5
003e20: 4e75         rts        
003e22: 4e550000     link.w     a5, #$0
003e26: 48e780c0     movem.l    d0/a0-a1, -(a7)
003e2a: 203cffffffbc move.l     #$ffffffbc, d0
003e30: 6100c33e     bsr.w      $170
003e34: 61001cf4     bsr.w      $5b2a
003e38: 206eb15c     movea.l    -$4ea4(a6), a0
003e3c: b090         cmp.l      (a0), d0
003e3e: 67000010     beq.w      $3e50
003e42: 2d7c00000109800c move.l     #$109, -$7ff4(a6)
003e4a: 70ff         moveq      #$ff, d0
003e4c: 60000014     bra.w      $3e62
003e50: 206eb15c     movea.l    -$4ea4(a6), a0
003e54: 2257         movea.l    (a7), a1
003e56: 32a80004     move.w     $4(a0), (a1)
003e5a: 7000         moveq      #$0, d0
003e5c: 60000004     bra.w      $3e62
003e60: 4e71         nop        
003e62: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003e68: 4e5d         unlk       a5
003e6a: 4e75         rts        
003e6c: 4e550000     link.w     a5, #$0
003e70: 48e78000     movem.l    d0, -(a7)
003e74: 203cffffffbc move.l     #$ffffffbc, d0
003e7a: 6100c2f4     bsr.w      $170
003e7e: 610001aa     bsr.w      $402a
003e82: 610001d6     bsr.w      $405a
003e86: 4e5d         unlk       a5
003e88: 4e75         rts        
003e8a: 4e550000     link.w     a5, #$0
003e8e: 48e7c080     movem.l    d0-d1/a0, -(a7)
003e92: 203cffffffbc move.l     #$ffffffbc, d0
003e98: 6100c2d6     bsr.w      $170
003e9c: 4aaeb16c     tst.l      -$4e94(a6)
003ea0: 6c000028     bge.w      $3eca
003ea4: 7203         moveq      #$3, d1
003ea6: 41eeb170     lea.l      -$4e90(a6), a0
003eaa: 2008         move.l     a0, d0
003eac: 61001214     bsr.w      $50c2
003eb0: 2d40b16c     move.l     d0, -$4e94(a6)
003eb4: 6c00000c     bge.w      $3ec2
003eb8: 70ff         moveq      #$ff, d0
003eba: 60000016     bra.w      $3ed2
003ebe: 6000000a     bra.w      $3eca
003ec2: 61001c66     bsr.w      $5b2a
003ec6: 2d40b160     move.l     d0, -$4ea0(a6)
003eca: 7000         moveq      #$0, d0
003ecc: 60000004     bra.w      $3ed2
003ed0: 4e71         nop        
003ed2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003ed8: 4e5d         unlk       a5
003eda: 4e75         rts        
003edc: 4e550000     link.w     a5, #$0
003ee0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003ee4: 203cffffffb0 move.l     #$ffffffb0, d0
003eea: 6100c284     bsr.w      $170
003eee: 518f         subq.l     #$8, a7
003ef0: 6100ff98     bsr.w      $3e8a
003ef4: 7000         moveq      #$0, d0
003ef6: 102f000b     move.b     $b(a7), d0
003efa: 2f00         move.l     d0, -(a7)
003efc: 222eb16c     move.l     -$4e94(a6), d1
003f00: 203c00000900 move.l     #$900, d0
003f06: 61000f78     bsr.w      $4e80
003f0a: 588f         addq.l     #$4, a7
003f0c: 2f400004     move.l     d0, $4(a7)
003f10: 6600000a     bne.w      $3f1c
003f14: 7000         moveq      #$0, d0
003f16: 508f         addq.l     #$8, a7
003f18: 60000024     bra.w      $3f3e
003f1c: 52aeb168     addq.l     #$1, -$4e98(a6)
003f20: 41eeb160     lea.l      -$4ea0(a6), a0
003f24: 226f0004     movea.l    $4(a7), a1
003f28: 23480008     move.l     a0, $8(a1)
003f2c: 226f000c     movea.l    $c(a7), a1
003f30: 2288         move.l     a0, (a1)
003f32: 202f0004     move.l     $4(a7), d0
003f36: 508f         addq.l     #$8, a7
003f38: 60000004     bra.w      $3f3e
003f3c: 4e71         nop        
003f3e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003f44: 4e5d         unlk       a5
003f46: 4e75         rts        
003f48: 4e550000     link.w     a5, #$0
003f4c: 48e7c080     movem.l    d0-d1/a0, -(a7)
003f50: 203cffffffb4 move.l     #$ffffffb4, d0
003f56: 6100c218     bsr.w      $170
003f5a: 598f         subq.l     #$4, a7
003f5c: 6100ff2c     bsr.w      $3e8a
003f60: 206f0004     movea.l    $4(a7), a0
003f64: 7000         moveq      #$0, d0
003f66: 10280010     move.b     $10(a0), d0
003f6a: 2f00         move.l     d0, -(a7)
003f6c: 222eb16c     move.l     -$4e94(a6), d1
003f70: 203c00000901 move.l     #$901, d0
003f76: 61000f6c     bsr.w      $4ee4
003f7a: 588f         addq.l     #$4, a7
003f7c: 2e80         move.l     d0, (a7)
003f7e: 72ff         moveq      #$ff, d1
003f80: b280         cmp.l      d0, d1
003f82: 6700000e     beq.w      $3f92
003f86: 53aeb168     subq.l     #$1, -$4e98(a6)
003f8a: 6c000006     bge.w      $3f92
003f8e: 42aeb168     clr.l      -$4e98(a6)
003f92: 7000         moveq      #$0, d0
003f94: 588f         addq.l     #$4, a7
003f96: 60000004     bra.w      $3f9c
003f9a: 4e71         nop        
003f9c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003fa2: 4e5d         unlk       a5
003fa4: 4e75         rts        
003fa6: 4e550000     link.w     a5, #$0
003faa: 48e7c000     movem.l    d0-d1, -(a7)
003fae: 203cffffffb8 move.l     #$ffffffb8, d0
003fb4: 6100c1ba     bsr.w      $170
003fb8: 6100fed0     bsr.w      $3e8a
003fbc: 7000         moveq      #$0, d0
003fbe: 102f0003     move.b     $3(a7), d0
003fc2: 2f00         move.l     d0, -(a7)
003fc4: 222eb16c     move.l     -$4e94(a6), d1
003fc8: 203c00000902 move.l     #$902, d0
003fce: 61000f14     bsr.w      $4ee4
003fd2: 588f         addq.l     #$4, a7
003fd4: 4ced0002fffc movem.l    -$4(a5), d1
003fda: 4e5d         unlk       a5
003fdc: 4e75         rts        
003fde: 4e550000     link.w     a5, #$0
003fe2: 48e7c000     movem.l    d0-d1, -(a7)
003fe6: 203cffffffb8 move.l     #$ffffffb8, d0
003fec: 6100c182     bsr.w      $170
003ff0: 6100fe98     bsr.w      $3e8a
003ff4: 4aaeb168     tst.l      -$4e98(a6)
003ff8: 66000008     bne.w      $4002
003ffc: 7000         moveq      #$0, d0
003ffe: 60000020     bra.w      $4020
004002: 7000         moveq      #$0, d0
004004: 102f0003     move.b     $3(a7), d0
004008: 2f00         move.l     d0, -(a7)
00400a: 222eb16c     move.l     -$4e94(a6), d1
00400e: 203c00000903 move.l     #$903, d0
004014: 61000e6a     bsr.w      $4e80
004018: 588f         addq.l     #$4, a7
00401a: 60000004     bra.w      $4020
00401e: 4e71         nop        
004020: 4ced0002fffc movem.l    -$4(a5), d1
004026: 4e5d         unlk       a5
004028: 4e75         rts        
00402a: 4e550000     link.w     a5, #$0
00402e: 48e78000     movem.l    d0, -(a7)
004032: 203cffffffbc move.l     #$ffffffbc, d0
004038: 6100c136     bsr.w      $170
00403c: 42aeb168     clr.l      -$4e98(a6)
004040: 4aaeb16c     tst.l      -$4e94(a6)
004044: 6d00000a     blt.w      $4050
004048: 202eb16c     move.l     -$4e94(a6), d0
00404c: 610010a4     bsr.w      $50f2
004050: 70ff         moveq      #$ff, d0
004052: 2d40b16c     move.l     d0, -$4e94(a6)
004056: 4e5d         unlk       a5
004058: 4e75         rts        
00405a: 4e550000     link.w     a5, #$0
00405e: 48e78000     movem.l    d0, -(a7)
004062: 203cffffffc0 move.l     #$ffffffc0, d0
004068: 6100c106     bsr.w      $170
00406c: 4e5d         unlk       a5
00406e: 4e75         rts        
004070: 4e550000     link.w     a5, #$0
004074: 48e78000     movem.l    d0, -(a7)
004078: 203cffffffc0 move.l     #$ffffffc0, d0
00407e: 6100c0f0     bsr.w      $170
004082: 4e5d         unlk       a5
004084: 4e75         rts        
004086: 4e550000     link.w     a5, #$0
00408a: 48e7c000     movem.l    d0-d1, -(a7)
00408e: 42a7         clr.l      -(a7)
004090: 222f0008     move.l     $8(a7), d1
004094: 202f0004     move.l     $4(a7), d0
004098: 613e         bsr.b      $40d8
00409a: 588f         addq.l     #$4, a7
00409c: 4e5d         unlk       a5
00409e: 4e75         rts        
0040a0: 4e550000     link.w     a5, #$0
0040a4: 48e7c000     movem.l    d0-d1, -(a7)
0040a8: 48780001     pea.l      $1.w
0040ac: 222f0008     move.l     $8(a7), d1
0040b0: 202f0004     move.l     $4(a7), d0
0040b4: 6122         bsr.b      $40d8
0040b6: 588f         addq.l     #$4, a7
0040b8: 4e5d         unlk       a5
0040ba: 4e75         rts        
0040bc: 4e550000     link.w     a5, #$0
0040c0: 48e7c000     movem.l    d0-d1, -(a7)
0040c4: 48780002     pea.l      $2.w
0040c8: 222f0008     move.l     $8(a7), d1
0040cc: 202f0004     move.l     $4(a7), d0
0040d0: 6106         bsr.b      $40d8
0040d2: 588f         addq.l     #$4, a7
0040d4: 4e5d         unlk       a5
0040d6: 4e75         rts        
0040d8: 4e550000     link.w     a5, #$0
0040dc: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
0040e0: 4fefffda     lea.l      -$26(a7), a7
0040e4: 41ef0008     lea.l      $8(a7), a0
0040e8: 2208         move.l     a0, d1
0040ea: 202f0026     move.l     $26(a7), d0
0040ee: 61000ad4     bsr.w      $4bc4
0040f2: 2440         movea.l    d0, a2
0040f4: 4a80         tst.l      d0
0040f6: 67000108     beq.w      $4200
0040fa: 41ef0008     lea.l      $8(a7), a0
0040fe: 2008         move.l     a0, d0
004100: 61000b08     bsr.w      $4c0a
004104: 2f400004     move.l     d0, $4(a7)
004108: 6d0000f6     blt.w      $4200
00410c: 41ef0022     lea.l      $22(a7), a0
004110: 2208         move.l     a0, d1
004112: 200a         move.l     a2, d0
004114: 61000b7a     bsr.w      $4c90
004118: 2440         movea.l    d0, a2
00411a: 4a80         tst.l      d0
00411c: 670000e2     beq.w      $4200
004120: 202f0004     move.l     $4(a7), d0
004124: e588         lsl.l      #$2, d0
004126: 41eeb1d4     lea.l      -$4e2c(a6), a0
00412a: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
004130: 6600009a     bne.w      $41cc
004134: 7203         moveq      #$3, d1
004136: 41ef0008     lea.l      $8(a7), a0
00413a: 2008         move.l     a0, d0
00413c: 61000f84     bsr.w      $50c2
004140: 222f0004     move.l     $4(a7), d1
004144: e589         lsl.l      #$2, d1
004146: 41eeb1d4     lea.l      -$4e2c(a6), a0
00414a: 31801800     move.w     d0, (a0, d1.l)
00414e: 6d0000ca     blt.w      $421a
004152: 202f0004     move.l     $4(a7), d0
004156: e588         lsl.l      #$2, d0
004158: 41eeb1d4     lea.l      -$4e2c(a6), a0
00415c: 2400         move.l     d0, d2
00415e: 42a7         clr.l      -(a7)
004160: 202f0008     move.l     $8(a7), d0
004164: e588         lsl.l      #$2, d0
004166: 43eeb1d4     lea.l      -$4e2c(a6), a1
00416a: 32710800     movea.w    (a1, d0.l), a1
00416e: 2209         move.l     a1, d1
004170: 203c0000ff0e move.l     #$ff0e, d0
004176: 61000d08     bsr.w      $4e80
00417a: 588f         addq.l     #$4, a7
00417c: 2240         movea.l    d0, a1
00417e: 7000         moveq      #$0, d0
004180: 1011         move.b     (a1), d0
004182: 31802802     move.w     d0, $2(a0, d2.l)
004186: 202f0004     move.l     $4(a7), d0
00418a: e588         lsl.l      #$2, d0
00418c: 41eeb1d4     lea.l      -$4e2c(a6), a0
004190: 4a700800     tst.w      (a0, d0.l)
004194: 6d36         blt.b      $41cc
004196: 202f0004     move.l     $4(a7), d0
00419a: e588         lsl.l      #$2, d0
00419c: 41eeb1d4     lea.l      -$4e2c(a6), a0
0041a0: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
0041a6: 6c24         bge.b      $41cc
0041a8: 202f0004     move.l     $4(a7), d0
0041ac: e588         lsl.l      #$2, d0
0041ae: 41eeb1d4     lea.l      -$4e2c(a6), a0
0041b2: 30700800     movea.w    (a0, d0.l), a0
0041b6: 2008         move.l     a0, d0
0041b8: 61000f38     bsr.w      $50f2
0041bc: 202f0004     move.l     $4(a7), d0
0041c0: e588         lsl.l      #$2, d0
0041c2: 41eeb1d4     lea.l      -$4e2c(a6), a0
0041c6: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
0041cc: 202f0004     move.l     $4(a7), d0
0041d0: e588         lsl.l      #$2, d0
0041d2: 41eeb1d4     lea.l      -$4e2c(a6), a0
0041d6: 30300802     move.w     $2(a0, d0.l), d0
0041da: 48c0         ext.l      d0
0041dc: b0af0022     cmp.l      $22(a7), d0
0041e0: 661e         bne.b      $4200
0041e2: 0c12005f     cmpi.b     #$5f, (a2)
0041e6: 6610         bne.b      $41f8
0041e8: 6004         bra.b      $41ee
0041ea: 4a12         tst.b      (a2)
0041ec: 672c         beq.b      $421a
0041ee: 528a         addq.l     #$1, a2
0041f0: 0c12005f     cmpi.b     #$5f, (a2)
0041f4: 66f4         bne.b      $41ea
0041f6: 528a         addq.l     #$1, a2
0041f8: 222f002a     move.l     $2a(a7), d1
0041fc: 200a         move.l     a2, d0
0041fe: 6008         bra.b      $4208
004200: 222f002a     move.l     $2a(a7), d1
004204: 202f0026     move.l     $26(a7), d0
004208: 242f004e     move.l     $4e(a7), d2
00420c: e58a         lsl.l      #$2, d2
00420e: 41eeb18e     lea.l      -$4e72(a6), a0
004212: 20702800     movea.l    (a0, d2.l), a0
004216: 4e90         jsr        (a0)
004218: 6002         bra.b      $421c
00421a: 70ff         moveq      #$ff, d0
00421c: 4fef0026     lea.l      $26(a7), a7
004220: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
004226: 4e5d         unlk       a5
004228: 4e75         rts        
00422a: 4e550000     link.w     a5, #$0
00422e: 48e7c080     movem.l    d0-d1/a0, -(a7)
004232: 2f2f0018     move.l     $18(a7), -(a7)
004236: 306f001a     movea.w    $1a(a7), a0
00423a: 2f08         move.l     a0, -(a7)
00423c: 222f000c     move.l     $c(a7), d1
004240: 202f0008     move.l     $8(a7), d0
004244: 610c         bsr.b      $4252
004246: 508f         addq.l     #$8, a7
004248: 4ced0100fffc movem.l    -$4(a5), a0
00424e: 4e5d         unlk       a5
004250: 4e75         rts        
004252: 4e550000     link.w     a5, #$0
004256: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
00425a: 4fefffda     lea.l      -$26(a7), a7
00425e: 41ef0008     lea.l      $8(a7), a0
004262: 2208         move.l     a0, d1
004264: 202f0026     move.l     $26(a7), d0
004268: 6100095a     bsr.w      $4bc4
00426c: 2440         movea.l    d0, a2
00426e: 4a80         tst.l      d0
004270: 67000112     beq.w      $4384
004274: 41ef0008     lea.l      $8(a7), a0
004278: 2008         move.l     a0, d0
00427a: 6100098e     bsr.w      $4c0a
00427e: 2f400004     move.l     d0, $4(a7)
004282: 6d000100     blt.w      $4384
004286: 41ef0022     lea.l      $22(a7), a0
00428a: 2208         move.l     a0, d1
00428c: 200a         move.l     a2, d0
00428e: 61000a00     bsr.w      $4c90
004292: 2440         movea.l    d0, a2
004294: 4a80         tst.l      d0
004296: 670000ec     beq.w      $4384
00429a: 202f0004     move.l     $4(a7), d0
00429e: e588         lsl.l      #$2, d0
0042a0: 41eeb1d4     lea.l      -$4e2c(a6), a0
0042a4: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0042aa: 6600009a     bne.w      $4346
0042ae: 7203         moveq      #$3, d1
0042b0: 41ef0008     lea.l      $8(a7), a0
0042b4: 2008         move.l     a0, d0
0042b6: 61000e0a     bsr.w      $50c2
0042ba: 222f0004     move.l     $4(a7), d1
0042be: e589         lsl.l      #$2, d1
0042c0: 41eeb1d4     lea.l      -$4e2c(a6), a0
0042c4: 31801800     move.w     d0, (a0, d1.l)
0042c8: 6d0000d4     blt.w      $439e
0042cc: 202f0004     move.l     $4(a7), d0
0042d0: e588         lsl.l      #$2, d0
0042d2: 41eeb1d4     lea.l      -$4e2c(a6), a0
0042d6: 2400         move.l     d0, d2
0042d8: 42a7         clr.l      -(a7)
0042da: 202f0008     move.l     $8(a7), d0
0042de: e588         lsl.l      #$2, d0
0042e0: 43eeb1d4     lea.l      -$4e2c(a6), a1
0042e4: 32710800     movea.w    (a1, d0.l), a1
0042e8: 2209         move.l     a1, d1
0042ea: 203c0000ff0e move.l     #$ff0e, d0
0042f0: 61000b8e     bsr.w      $4e80
0042f4: 588f         addq.l     #$4, a7
0042f6: 2240         movea.l    d0, a1
0042f8: 7000         moveq      #$0, d0
0042fa: 1011         move.b     (a1), d0
0042fc: 31802802     move.w     d0, $2(a0, d2.l)
004300: 202f0004     move.l     $4(a7), d0
004304: e588         lsl.l      #$2, d0
004306: 41eeb1d4     lea.l      -$4e2c(a6), a0
00430a: 4a700800     tst.w      (a0, d0.l)
00430e: 6d36         blt.b      $4346
004310: 202f0004     move.l     $4(a7), d0
004314: e588         lsl.l      #$2, d0
004316: 41eeb1d4     lea.l      -$4e2c(a6), a0
00431a: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
004320: 6c24         bge.b      $4346
004322: 202f0004     move.l     $4(a7), d0
004326: e588         lsl.l      #$2, d0
004328: 41eeb1d4     lea.l      -$4e2c(a6), a0
00432c: 30700800     movea.w    (a0, d0.l), a0
004330: 2008         move.l     a0, d0
004332: 61000dbe     bsr.w      $50f2
004336: 202f0004     move.l     $4(a7), d0
00433a: e588         lsl.l      #$2, d0
00433c: 41eeb1d4     lea.l      -$4e2c(a6), a0
004340: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
004346: 202f0004     move.l     $4(a7), d0
00434a: e588         lsl.l      #$2, d0
00434c: 41eeb1d4     lea.l      -$4e2c(a6), a0
004350: 30300802     move.w     $2(a0, d0.l), d0
004354: 48c0         ext.l      d0
004356: b0af0022     cmp.l      $22(a7), d0
00435a: 6628         bne.b      $4384
00435c: 0c12005f     cmpi.b     #$5f, (a2)
004360: 6610         bne.b      $4372
004362: 6004         bra.b      $4368
004364: 4a12         tst.b      (a2)
004366: 6736         beq.b      $439e
004368: 528a         addq.l     #$1, a2
00436a: 0c12005f     cmpi.b     #$5f, (a2)
00436e: 66f4         bne.b      $4364
004370: 528a         addq.l     #$1, a2
004372: 2f2f0052     move.l     $52(a7), -(a7)
004376: 306f0054     movea.w    $54(a7), a0
00437a: 2f08         move.l     a0, -(a7)
00437c: 222f0032     move.l     $32(a7), d1
004380: 200a         move.l     a2, d0
004382: 6012         bra.b      $4396
004384: 2f2f0052     move.l     $52(a7), -(a7)
004388: 306f0054     movea.w    $54(a7), a0
00438c: 2f08         move.l     a0, -(a7)
00438e: 222f0032     move.l     $32(a7), d1
004392: 202f002e     move.l     $2e(a7), d0
004396: 61000d22     bsr.w      $50ba
00439a: 508f         addq.l     #$8, a7
00439c: 6002         bra.b      $43a0
00439e: 70ff         moveq      #$ff, d0
0043a0: 4fef0026     lea.l      $26(a7), a7
0043a4: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
0043aa: 4e5d         unlk       a5
0043ac: 4e75         rts        
0043ae: 4e550000     link.w     a5, #$0
0043b2: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
0043b6: 4fefffc8     lea.l      -$38(a7), a7
0043ba: 2f6f00380008 move.l     $38(a7), $8(a7)
0043c0: 4a2f0009     tst.b      $9(a7)
0043c4: 660e         bne.b      $43d4
0043c6: 306f003e     movea.w    $3e(a7), a0
0043ca: 2208         move.l     a0, d1
0043cc: 202f0008     move.l     $8(a7), d0
0043d0: 600000c8     bra.w      $449a
0043d4: 4aaeb19e     tst.l      -$4e62(a6)
0043d8: 6608         bne.b      $43e2
0043da: 61000a80     bsr.w      $4e5c
0043de: 2d40b19e     move.l     d0, -$4e62(a6)
0043e2: 7000         moveq      #$0, d0
0043e4: 102f0008     move.b     $8(a7), d0
0043e8: e588         lsl.l      #$2, d0
0043ea: 41eeb1d4     lea.l      -$4e2c(a6), a0
0043ee: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0043f4: 66000080     bne.w      $4476
0043f8: 7000         moveq      #$0, d0
0043fa: 102f0008     move.b     $8(a7), d0
0043fe: e588         lsl.l      #$2, d0
004400: 206eb19e     movea.l    -$4e62(a6), a0
004404: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
004408: 41fa016e     lea.l      $4578(pc), a0
00440c: 2208         move.l     a0, d1
00440e: 41ef001c     lea.l      $1c(a7), a0
004412: 2008         move.l     a0, d0
004414: 61000c6c     bsr.w      $5082
004418: 588f         addq.l     #$4, a7
00441a: 7203         moveq      #$3, d1
00441c: 41ef0018     lea.l      $18(a7), a0
004420: 2008         move.l     a0, d0
004422: 61000c9e     bsr.w      $50c2
004426: 7200         moveq      #$0, d1
004428: 122f0008     move.b     $8(a7), d1
00442c: e589         lsl.l      #$2, d1
00442e: 41eeb1d4     lea.l      -$4e2c(a6), a0
004432: 31801800     move.w     d0, (a0, d1.l)
004436: 6c06         bge.b      $443e
004438: 70ff         moveq      #$ff, d0
00443a: 6000012e     bra.w      $456a
00443e: 7000         moveq      #$0, d0
004440: 102f0008     move.b     $8(a7), d0
004444: e588         lsl.l      #$2, d0
004446: 41eeb1d4     lea.l      -$4e2c(a6), a0
00444a: 2400         move.l     d0, d2
00444c: 42a7         clr.l      -(a7)
00444e: 7000         moveq      #$0, d0
004450: 102f000c     move.b     $c(a7), d0
004454: e588         lsl.l      #$2, d0
004456: 43eeb1d4     lea.l      -$4e2c(a6), a1
00445a: 32710800     movea.w    (a1, d0.l), a1
00445e: 2209         move.l     a1, d1
004460: 203c0000ff0e move.l     #$ff0e, d0
004466: 61000a18     bsr.w      $4e80
00446a: 588f         addq.l     #$4, a7
00446c: 2240         movea.l    d0, a1
00446e: 7000         moveq      #$0, d0
004470: 1011         move.b     (a1), d0
004472: 31802802     move.w     d0, $2(a0, d2.l)
004476: 7000         moveq      #$0, d0
004478: 102f0008     move.b     $8(a7), d0
00447c: e588         lsl.l      #$2, d0
00447e: 41eeb1d4     lea.l      -$4e2c(a6), a0
004482: 7200         moveq      #$0, d1
004484: 122f0009     move.b     $9(a7), d1
004488: b2700802     cmp.w      $2(a0, d0.l), d1
00448c: 6614         bne.b      $44a2
00448e: 306f003e     movea.w    $3e(a7), a0
004492: 2208         move.l     a0, d1
004494: 7000         moveq      #$0, d0
004496: 302f000a     move.w     $a(a7), d0
00449a: 610015d0     bsr.w      $5a6c
00449e: 600000ca     bra.w      $456a
0044a2: 4aaeb19a     tst.l      -$4e66(a6)
0044a6: 661a         bne.b      $44c2
0044a8: 61001680     bsr.w      $5b2a
0044ac: 2d40b19a     move.l     d0, -$4e66(a6)
0044b0: 2d7c000100008120 move.l     #$10000, -$7ee0(a6)
0044b8: 2d6eb19a8124 move.l     -$4e66(a6), -$7edc(a6)
0044be: 42ae811c     clr.l      -$7ee4(a6)
0044c2: 7001         moveq      #$1, d0
0044c4: 2d40813c     move.l     d0, -$7ec4(a6)
0044c8: 7008         moveq      #$8, d0
0044ca: 2d408140     move.l     d0, -$7ec0(a6)
0044ce: 41d7         lea.l      (a7), a0
0044d0: 2d488144     move.l     a0, -$7ebc(a6)
0044d4: 41ee8118     lea.l      -$7ee8(a6), a0
0044d8: 2d48814c     move.l     a0, -$7eb4(a6)
0044dc: 7018         moveq      #$18, d0
0044de: 2d408148     move.l     d0, -$7eb8(a6)
0044e2: 7000         moveq      #$0, d0
0044e4: 302f000a     move.w     $a(a7), d0
0044e8: 2d408128     move.l     d0, -$7ed8(a6)
0044ec: 306f003e     movea.w    $3e(a7), a0
0044f0: 2d48812c     move.l     a0, -$7ed4(a6)
0044f4: 1d6f0009811b move.b     $9(a7), -$7ee5(a6)
0044fa: 422e811c     clr.b      -$7ee4(a6)
0044fe: 486e813c     pea.l      -$7ec4(a6)
004502: 7000         moveq      #$0, d0
004504: 102f000c     move.b     $c(a7), d0
004508: e588         lsl.l      #$2, d0
00450a: 41eeb1d4     lea.l      -$4e2c(a6), a0
00450e: 30700800     movea.w    (a0, d0.l), a0
004512: 2208         move.l     a0, d1
004514: 203c0000ff05 move.l     #$ff05, d0
00451a: 610009c8     bsr.w      $4ee4
00451e: 588f         addq.l     #$4, a7
004520: 2f400010     move.l     d0, $10(a7)
004524: 6c08         bge.b      $452e
004526: 70ff         moveq      #$ff, d0
004528: 2f40000c     move.l     d0, $c(a7)
00452c: 6038         bra.b      $4566
00452e: 2f2f0010     move.l     $10(a7), -(a7)
004532: 7000         moveq      #$0, d0
004534: 102f000c     move.b     $c(a7), d0
004538: e588         lsl.l      #$2, d0
00453a: 41eeb1d4     lea.l      -$4e2c(a6), a0
00453e: 30700800     movea.w    (a0, d0.l), a0
004542: 2208         move.l     a0, d1
004544: 203c0000ff06 move.l     #$ff06, d0
00454a: 61000998     bsr.w      $4ee4
00454e: 588f         addq.l     #$4, a7
004550: 2f40000c     move.l     d0, $c(a7)
004554: 6dd0         blt.b      $4526
004556: 2f6f0004000c move.l     $4(a7), $c(a7)
00455c: 4aaf0004     tst.l      $4(a7)
004560: 6c04         bge.b      $4566
004562: 2d57800c     move.l     (a7), -$7ff4(a6)
004566: 202f000c     move.l     $c(a7), d0
00456a: 4fef0038     lea.l      $38(a7), a7
00456e: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
004574: 4e5d         unlk       a5
004576: 4e75         rts        
004578: 2f25         move.l     -(a5), -(a7)
00457a: 7300         .dc.w      $7300
00457c: 4e550000     link.w     a5, #$0
004580: 48e7c080     movem.l    d0-d1/a0, -(a7)
004584: 7002         moveq      #$2, d0
004586: b0aeb1a2     cmp.l      -$4e5e(a6), d0
00458a: 6c0c         bge.b      $4598
00458c: 2217         move.l     (a7), d1
00458e: 41fa052c     lea.l      $4abc(pc), a0
004592: 2008         move.l     a0, d0
004594: 61000ae4     bsr.w      $507a
004598: 0c9700000106 cmpi.l     #$106, (a7)
00459e: 6608         bne.b      $45a8
0045a0: 7001         moveq      #$1, d0
0045a2: 2d408158     move.l     d0, -$7ea8(a6)
0045a6: 600e         bra.b      $45b6
0045a8: 4aae815c     tst.l      -$7ea4(a6)
0045ac: 6708         beq.b      $45b6
0045ae: 2017         move.l     (a7), d0
0045b0: 206e815c     movea.l    -$7ea4(a6), a0
0045b4: 4e90         jsr        (a0)
0045b6: 7000         moveq      #$0, d0
0045b8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0045be: 4e5d         unlk       a5
0045c0: 4e75         rts        
0045c2: 4e550000     link.w     a5, #$0
0045c6: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
0045ca: 4fefff58     lea.l      -$a8(a7), a7
0045ce: 6010         bra.b      $45e0
0045d0: 08ef000600de bset.b     #$6, $de(a7)
0045d6: 601c         bra.b      $45f4
0045d8: 08ef000700de bset.b     #$7, $de(a7)
0045de: 6014         bra.b      $45f4
0045e0: 202f00e0     move.l     $e0(a7), d0
0045e4: 0c80a95acd81 cmpi.l     #$a95acd81, d0
0045ea: 67e4         beq.b      $45d0
0045ec: 0c80a95acd82 cmpi.l     #$a95acd82, d0
0045f2: 67e4         beq.b      $45d8
0045f4: 41ef0094     lea.l      $94(a7), a0
0045f8: 2208         move.l     a0, d1
0045fa: 202f00ac     move.l     $ac(a7), d0
0045fe: 610005c4     bsr.w      $4bc4
004602: 2f400028     move.l     d0, $28(a7)
004606: 6700015c     beq.w      $4764
00460a: 206f0028     movea.l    $28(a7), a0
00460e: 0c10005f     cmpi.b     #$5f, (a0)
004612: 66000150     bne.w      $4764
004616: 2f6f002800ac move.l     $28(a7), $ac(a7)
00461c: 2d6f00acb1be move.l     $ac(a7), -$4e42(a6)
004622: 41ef0094     lea.l      $94(a7), a0
004626: 2d48b1b2     move.l     a0, -$4e4e(a6)
00462a: 41ef0094     lea.l      $94(a7), a0
00462e: 2008         move.l     a0, d0
004630: 610005d8     bsr.w      $4c0a
004634: 3f40002c     move.w     d0, $2c(a7)
004638: 6c0c         bge.b      $4646
00463a: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
004642: 60000242     bra.w      $4886
004646: 422f0052     clr.b      $52(a7)
00464a: 41ef0046     lea.l      $46(a7), a0
00464e: 2208         move.l     a0, d1
004650: 202f00ac     move.l     $ac(a7), d0
004654: 6100063a     bsr.w      $4c90
004658: 2f400028     move.l     d0, $28(a7)
00465c: 67000106     beq.w      $4764
004660: 1f6f00490051 move.b     $49(a7), $51(a7)
004666: 2f6f002800ac move.l     $28(a7), $ac(a7)
00466c: 302f002c     move.w     $2c(a7), d0
004670: 48c0         ext.l      d0
004672: e588         lsl.l      #$2, d0
004674: 41eeb1d4     lea.l      -$4e2c(a6), a0
004678: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
00467e: 660000b6     bne.w      $4736
004682: 486f0094     pea.l      $94(a7)
004686: 41fa0464     lea.l      $4aec(pc), a0
00468a: 2208         move.l     a0, d1
00468c: 41ef0078     lea.l      $78(a7), a0
004690: 2008         move.l     a0, d0
004692: 610009ee     bsr.w      $5082
004696: 588f         addq.l     #$4, a7
004698: 7001         moveq      #$1, d0
00469a: b0aeb1a2     cmp.l      -$4e5e(a6), d0
00469e: 6c10         bge.b      $46b0
0046a0: 41ef0074     lea.l      $74(a7), a0
0046a4: 2208         move.l     a0, d1
0046a6: 41fa0447     lea.l      $4aef(pc), a0
0046aa: 2008         move.l     a0, d0
0046ac: 610009cc     bsr.w      $507a
0046b0: 7203         moveq      #$3, d1
0046b2: 41ef0074     lea.l      $74(a7), a0
0046b6: 2008         move.l     a0, d0
0046b8: 61000a08     bsr.w      $50c2
0046bc: 322f002c     move.w     $2c(a7), d1
0046c0: 48c1         ext.l      d1
0046c2: e589         lsl.l      #$2, d1
0046c4: 41eeb1d4     lea.l      -$4e2c(a6), a0
0046c8: 31801800     move.w     d0, (a0, d1.l)
0046cc: 6c30         bge.b      $46fe
0046ce: 7001         moveq      #$1, d0
0046d0: b0aeb1a2     cmp.l      -$4e5e(a6), d0
0046d4: 6c0001b0     bge.w      $4886
0046d8: 302f002c     move.w     $2c(a7), d0
0046dc: 48c0         ext.l      d0
0046de: e588         lsl.l      #$2, d0
0046e0: 41eeb1d4     lea.l      -$4e2c(a6), a0
0046e4: 30700800     movea.w    (a0, d0.l), a0
0046e8: 2f08         move.l     a0, -(a7)
0046ea: 222f004a     move.l     $4a(a7), d1
0046ee: 41fa0418     lea.l      $4b08(pc), a0
0046f2: 2008         move.l     a0, d0
0046f4: 61000984     bsr.w      $507a
0046f8: 588f         addq.l     #$4, a7
0046fa: 6000018a     bra.w      $4886
0046fe: 302f002c     move.w     $2c(a7), d0
004702: 48c0         ext.l      d0
004704: e588         lsl.l      #$2, d0
004706: 41eeb1d4     lea.l      -$4e2c(a6), a0
00470a: 2400         move.l     d0, d2
00470c: 42a7         clr.l      -(a7)
00470e: 302f0030     move.w     $30(a7), d0
004712: 48c0         ext.l      d0
004714: e588         lsl.l      #$2, d0
004716: 43eeb1d4     lea.l      -$4e2c(a6), a1
00471a: 32710800     movea.w    (a1, d0.l), a1
00471e: 2209         move.l     a1, d1
004720: 203c0000ff0e move.l     #$ff0e, d0
004726: 61000758     bsr.w      $4e80
00472a: 588f         addq.l     #$4, a7
00472c: 2240         movea.l    d0, a1
00472e: 7000         moveq      #$0, d0
004730: 1011         move.b     (a1), d0
004732: 31802802     move.w     d0, $2(a0, d2.l)
004736: 302f002c     move.w     $2c(a7), d0
00473a: 48c0         ext.l      d0
00473c: e588         lsl.l      #$2, d0
00473e: 41eeb1d4     lea.l      -$4e2c(a6), a0
004742: 30300802     move.w     $2(a0, d0.l), d0
004746: 48c0         ext.l      d0
004748: b0af0046     cmp.l      $46(a7), d0
00474c: 6642         bne.b      $4790
00474e: 7001         moveq      #$1, d0
004750: b0aeb1a2     cmp.l      -$4e5e(a6), d0
004754: 6c0e         bge.b      $4764
004756: 222f00ac     move.l     $ac(a7), d1
00475a: 41fa03bf     lea.l      $4b1b(pc), a0
00475e: 2008         move.l     a0, d0
004760: 61000918     bsr.w      $507a
004764: 306f00de     movea.w    $de(a7), a0
004768: 2f08         move.l     a0, -(a7)
00476a: 306f00de     movea.w    $de(a7), a0
00476e: 2f08         move.l     a0, -(a7)
004770: 2f2f00dc     move.l     $dc(a7), -(a7)
004774: 2f2f00dc     move.l     $dc(a7), -(a7)
004778: 2f2f00dc     move.l     $dc(a7), -(a7)
00477c: 222f00c0     move.l     $c0(a7), d1
004780: 202f00bc     move.l     $bc(a7), d0
004784: 6100098c     bsr.w      $5112
004788: 4fef0014     lea.l      $14(a7), a7
00478c: 6000030a     bra.w      $4a98
004790: 4a6eb1c6     tst.w      -$4e3a(a6)
004794: 6608         bne.b      $479e
004796: 61001392     bsr.w      $5b2a
00479a: 3d40b1c6     move.w     d0, -$4e3a(a6)
00479e: 42ae815c     clr.l      -$7ea4(a6)
0047a2: 306eb1c6     movea.w    -$4e3a(a6), a0
0047a6: 2008         move.l     a0, d0
0047a8: 6100068c     bsr.w      $4e36
0047ac: 2d40815c     move.l     d0, -$7ea4(a6)
0047b0: 7001         moveq      #$1, d0
0047b2: b0aeb1a2     cmp.l      -$4e5e(a6), d0
0047b6: 6c0e         bge.b      $47c6
0047b8: 222e815c     move.l     -$7ea4(a6), d1
0047bc: 41fa0384     lea.l      $4b42(pc), a0
0047c0: 2008         move.l     a0, d0
0047c2: 610008b6     bsr.w      $507a
0047c6: 41fafdb4     lea.l      $457c(pc), a0
0047ca: 2008         move.l     a0, d0
0047cc: 610002d8     bsr.w      $4aa6
0047d0: 306f00de     movea.w    $de(a7), a0
0047d4: 2f08         move.l     a0, -(a7)
0047d6: 42a7         clr.l      -(a7)
0047d8: 42a7         clr.l      -(a7)
0047da: 2f2f00dc     move.l     $dc(a7), -(a7)
0047de: 486eb1a6     pea.l      -$4e5a(a6)
0047e2: 41fa0374     lea.l      $4b58(pc), a0
0047e6: 2208         move.l     a0, d1
0047e8: 41fa12e4     lea.l      $5ace(pc), a0
0047ec: 2008         move.l     a0, d0
0047ee: 61000922     bsr.w      $5112
0047f2: 4fef0014     lea.l      $14(a7), a7
0047f6: 2f40005e     move.l     d0, $5e(a7)
0047fa: 6f00008a     ble.w      $4886
0047fe: 2f7c000200000056 move.l     #$20000, $56(a7)
004806: 42af005a     clr.l      $5a(a7)
00480a: 2f6f00d40062 move.l     $d4(a7), $62(a7)
004810: 3f6f00da0066 move.w     $da(a7), $66(a7)
004816: 3f6f00de0068 move.w     $de(a7), $68(a7)
00481c: 3f6f002c006c move.w     $2c(a7), $6c(a7)
004822: 3f6eb1c6006a move.w     -$4e3a(a6), $6a(a7)
004828: 7001         moveq      #$1, d0
00482a: 2f40004a     move.l     d0, $4a(a7)
00482e: 42af0042     clr.l      $42(a7)
004832: 6004         bra.b      $4838
004834: 52af004a     addq.l     #$1, $4a(a7)
004838: 202f0042     move.l     $42(a7), d0
00483c: 52af0042     addq.l     #$1, $42(a7)
004840: e588         lsl.l      #$2, d0
004842: 206f00cc     movea.l    $cc(a7), a0
004846: 4ab00800     tst.l      (a0, d0.l)
00484a: 66e8         bne.b      $4834
00484c: 52af004a     addq.l     #$1, $4a(a7)
004850: 42af0042     clr.l      $42(a7)
004854: 6004         bra.b      $485a
004856: 52af004a     addq.l     #$1, $4a(a7)
00485a: 202f0042     move.l     $42(a7), d0
00485e: 52af0042     addq.l     #$1, $42(a7)
004862: e588         lsl.l      #$2, d0
004864: 206f00d0     movea.l    $d0(a7), a0
004868: 4ab00800     tst.l      (a0, d0.l)
00486c: 66e8         bne.b      $4856
00486e: 52af004a     addq.l     #$1, $4a(a7)
004872: 202f004a     move.l     $4a(a7), d0
004876: e788         lsl.l      #$3, d0
004878: 7214         moveq      #$14, d1
00487a: d081         add.l      d1, d0
00487c: 610008b8     bsr.w      $5136
004880: 2440         movea.l    d0, a2
004882: 4a80         tst.l      d0
004884: 6606         bne.b      $488c
004886: 70ff         moveq      #$ff, d0
004888: 6000020e     bra.w      $4a98
00488c: 202f004a     move.l     $4a(a7), d0
004890: 5280         addq.l     #$1, d0
004892: 2480         move.l     d0, (a2)
004894: 257c000000080004 move.l     #$8, $4(a2)
00489c: 41ef0020     lea.l      $20(a7), a0
0048a0: 25480008     move.l     a0, $8(a2)
0048a4: 700c         moveq      #$c, d0
0048a6: d08a         add.l      a2, d0
0048a8: 2640         movea.l    d0, a3
0048aa: 41ef004e     lea.l      $4e(a7), a0
0048ae: 27480004     move.l     a0, $4(a3)
0048b2: 26bc00000020 move.l     #$20, (a3)
0048b8: 508b         addq.l     #$8, a3
0048ba: 276f00ac0004 move.l     $ac(a7), $4(a3)
0048c0: 202f00ac     move.l     $ac(a7), d0
0048c4: 6100099e     bsr.w      $5264
0048c8: 5280         addq.l     #$1, d0
0048ca: 2680         move.l     d0, (a3)
0048cc: 508b         addq.l     #$8, a3
0048ce: 42af0042     clr.l      $42(a7)
0048d2: 605a         bra.b      $492e
0048d4: 7001         moveq      #$1, d0
0048d6: b0aeb1a2     cmp.l      -$4e5e(a6), d0
0048da: 6c26         bge.b      $4902
0048dc: 222f0042     move.l     $42(a7), d1
0048e0: 41fa027d     lea.l      $4b5f(pc), a0
0048e4: 2008         move.l     a0, d0
0048e6: 61000792     bsr.w      $507a
0048ea: 202f0042     move.l     $42(a7), d0
0048ee: e588         lsl.l      #$2, d0
0048f0: 206f00cc     movea.l    $cc(a7), a0
0048f4: 22300800     move.l     (a0, d0.l), d1
0048f8: 41fa0285     lea.l      $4b7f(pc), a0
0048fc: 2008         move.l     a0, d0
0048fe: 6100077a     bsr.w      $507a
004902: 202f0042     move.l     $42(a7), d0
004906: e588         lsl.l      #$2, d0
004908: 206f00cc     movea.l    $cc(a7), a0
00490c: 277008000004 move.l     (a0, d0.l), $4(a3)
004912: 202f0042     move.l     $42(a7), d0
004916: 52af0042     addq.l     #$1, $42(a7)
00491a: e588         lsl.l      #$2, d0
00491c: 206f00cc     movea.l    $cc(a7), a0
004920: 20300800     move.l     (a0, d0.l), d0
004924: 6100093e     bsr.w      $5264
004928: 5280         addq.l     #$1, d0
00492a: 2680         move.l     d0, (a3)
00492c: 508b         addq.l     #$8, a3
00492e: 202f0042     move.l     $42(a7), d0
004932: e588         lsl.l      #$2, d0
004934: 206f00cc     movea.l    $cc(a7), a0
004938: 4ab00800     tst.l      (a0, d0.l)
00493c: 6696         bne.b      $48d4
00493e: 41fa024e     lea.l      $4b8e(pc), a0
004942: 27480004     move.l     a0, $4(a3)
004946: 26bc00000001 move.l     #$1, (a3)
00494c: 508b         addq.l     #$8, a3
00494e: 42af0042     clr.l      $42(a7)
004952: 604c         bra.b      $49a0
004954: 7001         moveq      #$1, d0
004956: b0aeb1a2     cmp.l      -$4e5e(a6), d0
00495a: 6c18         bge.b      $4974
00495c: 202f0042     move.l     $42(a7), d0
004960: e588         lsl.l      #$2, d0
004962: 206f00d0     movea.l    $d0(a7), a0
004966: 22300800     move.l     (a0, d0.l), d1
00496a: 41fa0223     lea.l      $4b8f(pc), a0
00496e: 2008         move.l     a0, d0
004970: 61000708     bsr.w      $507a
004974: 202f0042     move.l     $42(a7), d0
004978: e588         lsl.l      #$2, d0
00497a: 206f00d0     movea.l    $d0(a7), a0
00497e: 277008000004 move.l     (a0, d0.l), $4(a3)
004984: 202f0042     move.l     $42(a7), d0
004988: 52af0042     addq.l     #$1, $42(a7)
00498c: e588         lsl.l      #$2, d0
00498e: 206f00d0     movea.l    $d0(a7), a0
004992: 20300800     move.l     (a0, d0.l), d0
004996: 610008cc     bsr.w      $5264
00499a: 5280         addq.l     #$1, d0
00499c: 2680         move.l     d0, (a3)
00499e: 508b         addq.l     #$8, a3
0049a0: 202f0042     move.l     $42(a7), d0
0049a4: e588         lsl.l      #$2, d0
0049a6: 206f00d0     movea.l    $d0(a7), a0
0049aa: 4ab00800     tst.l      (a0, d0.l)
0049ae: 66a4         bne.b      $4954
0049b0: 41fa01ec     lea.l      $4b9e(pc), a0
0049b4: 27480004     move.l     a0, $4(a3)
0049b8: 26bc00000001 move.l     #$1, (a3)
0049be: 508b         addq.l     #$8, a3
0049c0: 7001         moveq      #$1, d0
0049c2: 61000ec0     bsr.w      $5884
0049c6: 42ae8154     clr.l      -$7eac(a6)
0049ca: 600a         bra.b      $49d6
0049cc: 52ae8154     addq.l     #$1, -$7eac(a6)
0049d0: 7001         moveq      #$1, d0
0049d2: 61000eb0     bsr.w      $5884
0049d6: 4aae8158     tst.l      -$7ea8(a6)
0049da: 67f0         beq.b      $49cc
0049dc: 7064         moveq      #$64, d0
0049de: b0ae8154     cmp.l      -$7eac(a6), d0
0049e2: 6e0e         bgt.b      $49f2
0049e4: 222e8154     move.l     -$7eac(a6), d1
0049e8: 41fa01b5     lea.l      $4b9f(pc), a0
0049ec: 2008         move.l     a0, d0
0049ee: 6100068a     bsr.w      $507a
0049f2: 4aae815c     tst.l      -$7ea4(a6)
0049f6: 6708         beq.b      $4a00
0049f8: 202e815c     move.l     -$7ea4(a6), d0
0049fc: 610000a8     bsr.w      $4aa6
004a00: 4852         pea.l      (a2)
004a02: 302f0030     move.w     $30(a7), d0
004a06: 48c0         ext.l      d0
004a08: e588         lsl.l      #$2, d0
004a0a: 41eeb1d4     lea.l      -$4e2c(a6), a0
004a0e: 30700800     movea.w    (a0, d0.l), a0
004a12: 2208         move.l     a0, d1
004a14: 203c0000ff05 move.l     #$ff05, d0
004a1a: 610004c8     bsr.w      $4ee4
004a1e: 588f         addq.l     #$4, a7
004a20: 2f40003a     move.l     d0, $3a(a7)
004a24: 6c08         bge.b      $4a2e
004a26: 70ff         moveq      #$ff, d0
004a28: 2f40002e     move.l     d0, $2e(a7)
004a2c: 6060         bra.b      $4a8e
004a2e: 2f2f003a     move.l     $3a(a7), -(a7)
004a32: 302f0030     move.w     $30(a7), d0
004a36: 48c0         ext.l      d0
004a38: e588         lsl.l      #$2, d0
004a3a: 41eeb1d4     lea.l      -$4e2c(a6), a0
004a3e: 30700800     movea.w    (a0, d0.l), a0
004a42: 2208         move.l     a0, d1
004a44: 203c0000ff06 move.l     #$ff06, d0
004a4a: 61000498     bsr.w      $4ee4
004a4e: 588f         addq.l     #$4, a7
004a50: 2f40002e     move.l     d0, $2e(a7)
004a54: 6c10         bge.b      $4a66
004a56: 70ff         moveq      #$ff, d0
004a58: 2f40002e     move.l     d0, $2e(a7)
004a5c: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
004a64: 6028         bra.b      $4a8e
004a66: 2f6f0024002e move.l     $24(a7), $2e(a7)
004a6c: 4aaf002e     tst.l      $2e(a7)
004a70: 6c16         bge.b      $4a88
004a72: 223c00008000 move.l     #$8000, d1
004a78: 202f005e     move.l     $5e(a7), d0
004a7c: 61000fee     bsr.w      $5a6c
004a80: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
004a86: 6006         bra.b      $4a8e
004a88: 1f6f002d002e move.b     $2d(a7), $2e(a7)
004a8e: 200a         move.l     a2, d0
004a90: 610006b0     bsr.w      $5142
004a94: 202f002e     move.l     $2e(a7), d0
004a98: 4fef00a8     lea.l      $a8(a7), a7
004a9c: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
004aa2: 4e5d         unlk       a5
004aa4: 4e75         rts        
004aa6: 4e550000     link.w     a5, #$0
004aaa: 48e78000     movem.l    d0, -(a7)
004aae: 2d57b1e4     move.l     (a7), -$4e1c(a6)
004ab2: 2017         move.l     (a7), d0
004ab4: 610010ac     bsr.w      $5b62
004ab8: 4e5d         unlk       a5
004aba: 4e75         rts        
004abc: 5369676e     subq.w     #$1, $676e(a1)
004ac0: 616c         bsr.b      $4b2e
004ac2: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
004acc: 2063         movea.l    -(a3), a0
004ace: 6f64         ble.b      $4b34
004ad0: 653d         bcs.b      $4b0f
004ad2: 2025         move.l     -(a5), d0
004ad4: 780d         moveq      #$d, d4
004ad6: 007365727665 ori.w      #$6572, $65(a3, d7.w)
004adc: 7200         moveq      #$0, d1
004ade: 3200         move.w     d0, d1
004ae0: 3000         move.w     d0, d0
004ae2: 2f633000     move.l     -(a3), $3000(a7)
004ae6: 3000         move.w     d0, d0
004ae8: 3000         move.w     d0, d0
004aea: 3000         move.w     d0, d0
004aec: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
004af2: 6e20         bgt.b      $4b14
004af4: 6361         bls.b      $4b57
004af6: 726f         moveq      #$6f, d1
004af8: 7370         .dc.w      $7370
004afa: 6174         bsr.b      $4b70
004afc: 6820         bvc.b      $4b1e
004afe: 6e61         bgt.b      $4b61
004b00: 6d65         blt.b      $4b67
004b02: 6420         bcc.b      $4b24
004b04: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
004b0a: 7468         moveq      #$68, d2
004b0c: 6964         bvs.b      $4b72
004b0e: 5b25         subq.b     #$5, -(a5)
004b10: 645d         bcc.b      $4b6f
004b12: 206d6772     movea.l    $6772(a5), a0
004b16: 3d25         move.w     -(a5), -(a6)
004b18: 640d         bcc.b      $4b27
004b1a: 00666f72     ori.w      #$6f72, -(a6)
004b1e: 6b69         bmi.b      $4b89
004b20: 6e67         bgt.b      $4b89
004b22: 2070726f     movea.l    $6f(a0, d7.w), a0
004b26: 6365         bls.b      $4b8d
004b28: 7373         .dc.w      $7373
004b2a: 206c6f63     movea.l    $6f63(a4), a0
004b2e: 616c         bsr.b      $4b9c
004b30: 6c79         bge.b      $4bab
004b32: 2c20         move.l     -(a0), d6
004b34: 6d6f         blt.b      $4ba5
004b36: 646e         bcc.b      $4ba6
004b38: 616d         bsr.b      $4ba7
004b3a: 6520         bcs.b      $4b5c
004b3c: 3d20         move.w     -(a0), -(a6)
004b3e: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
004b44: 6420         bcc.b      $4b66
004b46: 6963         bvs.b      $4bab
004b48: 7074         moveq      #$74, d0
004b4a: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
004b54: 25780d007365 move.l     $d00.w, $7365(a2)
004b5a: 7276         moveq      #$76, d1
004b5c: 6572         bcs.b      $4bd0
004b5e: 00656e74     ori.w      #$6e74, -(a5)
004b62: 6572         bcs.b      $4bd6
004b64: 6564         bcs.b      $4bca
004b66: 2061         movea.l    -(a1), a0
004b68: 7267         moveq      #$67, d1
004b6a: 6c69         bge.b      $4bd5
004b6c: 7374         .dc.w      $7374
004b6e: 206c6f6f     movea.l    $6f6f(a4), a0
004b72: 702c         moveq      #$2c, d0
004b74: 20696e64     movea.l    $6e64(a1), a0
004b78: 6578         bcs.b      $4bf2
004b7a: 3d25         move.w     -(a5), -(a6)
004b7c: 640d         bcc.b      $4b8b
004b7e: 00415247     ori.w      #$5247, d1
004b82: 4c49         .dc.w      $4c49
004b84: 5354         subq.w     #$1, (a4)
004b86: 5b695d3d     subq.w     #$5, $5d3d(a1)
004b8a: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
004b90: 4e564c49     link.w     a6, #$4c49
004b94: 5354         subq.w     #$1, (a4)
004b96: 5b695d3d     subq.w     #$5, $5d3d(a1)
004b9a: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
004ba0: 796e         .dc.w      $796e
004ba2: 6368         bls.b      $4c0c
004ba4: 726f         moveq      #$6f, d1
004ba6: 6e69         bgt.b      $4c11
004ba8: 7369         .dc.w      $7369
004baa: 6e67         bgt.b      $4c13
004bac: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
004bb6: 6f6b         ble.b      $4c23
004bb8: 2025         move.l     -(a5), d0
004bba: 6420         bcc.b      $4bdc
004bbc: 7469         moveq      #$69, d2
004bbe: 636b         bls.b      $4c2b
004bc0: 730d         .dc.w      $730d
004bc2: 00004e55     ori.b      #$55, d0
004bc6: 000048e7     ori.b      #$e7, d0
004bca: c8302440     and.b      $40(a0, d2.w), d4
004bce: 2641         movea.l    d1, a3
004bd0: 558f         subq.l     #$2, a7
004bd2: 1012         move.b     (a2), d0
004bd4: 1680         move.b     d0, (a3)
004bd6: 0c00002f     cmpi.b     #$2f, d0
004bda: 6704         beq.b      $4be0
004bdc: 7000         moveq      #$0, d0
004bde: 601e         bra.b      $4bfe
004be0: 528a         addq.l     #$1, a2
004be2: 528b         addq.l     #$1, a3
004be4: 1012         move.b     (a2), d0
004be6: 1680         move.b     d0, (a3)
004be8: 1f400001     move.b     d0, $1(a7)
004bec: 0c00002f     cmpi.b     #$2f, d0
004bf0: 6706         beq.b      $4bf8
004bf2: 4a2f0001     tst.b      $1(a7)
004bf6: 66e8         bne.b      $4be0
004bf8: 4213         clr.b      (a3)
004bfa: 528a         addq.l     #$1, a2
004bfc: 200a         move.l     a2, d0
004bfe: 548f         addq.l     #$2, a7
004c00: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
004c06: 4e5d         unlk       a5
004c08: 4e75         rts        
004c0a: 4e550000     link.w     a5, #$0
004c0e: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
004c12: 2440         movea.l    d0, a2
004c14: 4aaeb1c8     tst.l      -$4e38(a6)
004c18: 6608         bne.b      $4c22
004c1a: 61000240     bsr.w      $4e5c
004c1e: 2d40b1c8     move.l     d0, -$4e38(a6)
004c22: 7800         moveq      #$0, d4
004c24: 601a         bra.b      $4c40
004c26: 2004         move.l     d4, d0
004c28: e588         lsl.l      #$2, d0
004c2a: 206eb1c8     movea.l    -$4e38(a6), a0
004c2e: 2230081a     move.l     $1a(a0, d0.l), d1
004c32: 200a         move.l     a2, d0
004c34: 5280         addq.l     #$1, d0
004c36: 610005b8     bsr.w      $51f0
004c3a: 4a80         tst.l      d0
004c3c: 6710         beq.b      $4c4e
004c3e: 5284         addq.l     #$1, d4
004c40: 206eb1c8     movea.l    -$4e38(a6), a0
004c44: 30280010     move.w     $10(a0), d0
004c48: 48c0         ext.l      d0
004c4a: b084         cmp.l      d4, d0
004c4c: 6ed8         bgt.b      $4c26
004c4e: 206eb1c8     movea.l    -$4e38(a6), a0
004c52: 30280010     move.w     $10(a0), d0
004c56: 48c0         ext.l      d0
004c58: b084         cmp.l      d4, d0
004c5a: 6e04         bgt.b      $4c60
004c5c: 70ff         moveq      #$ff, d0
004c5e: 6002         bra.b      $4c62
004c60: 2004         move.l     d4, d0
004c62: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
004c68: 4e5d         unlk       a5
004c6a: 4e75         rts        
004c6c: 4e550000     link.w     a5, #$0
004c70: 48e7c080     movem.l    d0-d1/a0, -(a7)
004c74: 202f0004     move.l     $4(a7), d0
004c78: e588         lsl.l      #$2, d0
004c7a: 2057         movea.l    (a7), a0
004c7c: 2070082a     movea.l    $2a(a0, d0.l), a0
004c80: 7000         moveq      #$0, d0
004c82: 10280012     move.b     $12(a0), d0
004c86: 4ced0100fffc movem.l    -$4(a5), a0
004c8c: 4e5d         unlk       a5
004c8e: 4e75         rts        
004c90: 4e550000     link.w     a5, #$0
004c94: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
004c98: 2440         movea.l    d0, a2
004c9a: 4fefffda     lea.l      -$26(a7), a7
004c9e: 200a         move.l     a2, d0
004ca0: 61000110     bsr.w      $4db2
004ca4: 2440         movea.l    d0, a2
004ca6: 0c12005f     cmpi.b     #$5f, (a2)
004caa: 660000f6     bne.w      $4da2
004cae: 102a0001     move.b     $1(a2), d0
004cb2: 1f400005     move.b     d0, $5(a7)
004cb6: 0c000041     cmpi.b     #$41, d0
004cba: 6d0000a4     blt.w      $4d60
004cbe: 4aaeb1cc     tst.l      -$4e34(a6)
004cc2: 6626         bne.b      $4cea
004cc4: 7200         moveq      #$0, d1
004cc6: 41fa017e     lea.l      $4e46(pc), a0
004cca: 2008         move.l     a0, d0
004ccc: 61000d3e     bsr.w      $5a0c
004cd0: 2f400022     move.l     d0, $22(a7)
004cd4: 72ff         moveq      #$ff, d1
004cd6: b280         cmp.l      d0, d1
004cd8: 6606         bne.b      $4ce0
004cda: 70ff         moveq      #$ff, d0
004cdc: 600000c6     bra.w      $4da4
004ce0: 7030         moveq      #$30, d0
004ce2: d0af0022     add.l      $22(a7), d0
004ce6: 2d40b1cc     move.l     d0, -$4e34(a6)
004cea: 41ef000a     lea.l      $a(a7), a0
004cee: 2f480006     move.l     a0, $6(a7)
004cf2: 600c         bra.b      $4d00
004cf4: 206f0006     movea.l    $6(a7), a0
004cf8: 52af0006     addq.l     #$1, $6(a7)
004cfc: 10af0005     move.b     $5(a7), (a0)
004d00: 528a         addq.l     #$1, a2
004d02: 1012         move.b     (a2), d0
004d04: 1f400005     move.b     d0, $5(a7)
004d08: 0c00005f     cmpi.b     #$5f, d0
004d0c: 66e6         bne.b      $4cf4
004d0e: 206f0006     movea.l    $6(a7), a0
004d12: 4210         clr.b      (a0)
004d14: 202eb1cc     move.l     -$4e34(a6), d0
004d18: 5480         addq.l     #$2, d0
004d1a: 2f40001e     move.l     d0, $1e(a7)
004d1e: 7800         moveq      #$0, d4
004d20: 6030         bra.b      $4d52
004d22: 41ef000a     lea.l      $a(a7), a0
004d26: 2208         move.l     a0, d1
004d28: 202f001e     move.l     $1e(a7), d0
004d2c: 610004c2     bsr.w      $51f0
004d30: 4a80         tst.l      d0
004d32: 6614         bne.b      $4d48
004d34: 206f001e     movea.l    $1e(a7), a0
004d38: 7000         moveq      #$0, d0
004d3a: 10280013     move.b     $13(a0), d0
004d3e: 206f002a     movea.l    $2a(a7), a0
004d42: 2080         move.l     d0, (a0)
004d44: 528a         addq.l     #$1, a2
004d46: 6056         bra.b      $4d9e
004d48: 06af00000014001e addi.l     #$14, $1e(a7)
004d50: 5284         addq.l     #$1, d4
004d52: 206eb1cc     movea.l    -$4e34(a6), a0
004d56: 3010         move.w     (a0), d0
004d58: 48c0         ext.l      d0
004d5a: b084         cmp.l      d4, d0
004d5c: 6ec4         bgt.b      $4d22
004d5e: 6042         bra.b      $4da2
004d60: 4297         clr.l      (a7)
004d62: 6018         bra.b      $4d7c
004d64: 2017         move.l     (a7), d0
004d66: 720a         moveq      #$a, d1
004d68: 61000790     bsr.w      $54fa
004d6c: 122f0005     move.b     $5(a7), d1
004d70: 4881         ext.w      d1
004d72: 48c1         ext.l      d1
004d74: d081         add.l      d1, d0
004d76: 7230         moveq      #$30, d1
004d78: 9081         sub.l      d1, d0
004d7a: 2e80         move.l     d0, (a7)
004d7c: 528a         addq.l     #$1, a2
004d7e: 1012         move.b     (a2), d0
004d80: 1f400005     move.b     d0, $5(a7)
004d84: 0c000030     cmpi.b     #$30, d0
004d88: 6d08         blt.b      $4d92
004d8a: 0c2f00390005 cmpi.b     #$39, $5(a7)
004d90: 6fd2         ble.b      $4d64
004d92: 0c1a005f     cmpi.b     #$5f, (a2)+
004d96: 660a         bne.b      $4da2
004d98: 206f002a     movea.l    $2a(a7), a0
004d9c: 2097         move.l     (a7), (a0)
004d9e: 200a         move.l     a2, d0
004da0: 6002         bra.b      $4da4
004da2: 7000         moveq      #$0, d0
004da4: 4fef0026     lea.l      $26(a7), a7
004da8: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
004dae: 4e5d         unlk       a5
004db0: 4e75         rts        
004db2: 4e550000     link.w     a5, #$0
004db6: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
004dba: 2440         movea.l    d0, a2
004dbc: 518f         subq.l     #$8, a7
004dbe: 0c12005f     cmpi.b     #$5f, (a2)
004dc2: 6764         beq.b      $4e28
004dc4: 0c120040     cmpi.b     #$40, (a2)
004dc8: 675e         beq.b      $4e28
004dca: 0c120041     cmpi.b     #$41, (a2)
004dce: 6d58         blt.b      $4e28
004dd0: 4aaeb1d0     tst.l      -$4e30(a6)
004dd4: 6620         bne.b      $4df6
004dd6: 7200         moveq      #$0, d1
004dd8: 41fa0076     lea.l      $4e50(pc), a0
004ddc: 2008         move.l     a0, d0
004dde: 61000c2c     bsr.w      $5a0c
004de2: 2f400004     move.l     d0, $4(a7)
004de6: 72ff         moveq      #$ff, d1
004de8: b280         cmp.l      d0, d1
004dea: 673c         beq.b      $4e28
004dec: 7030         moveq      #$30, d0
004dee: d0af0004     add.l      $4(a7), d0
004df2: 2d40b1d0     move.l     d0, -$4e30(a6)
004df6: 202eb1d0     move.l     -$4e30(a6), d0
004dfa: 5480         addq.l     #$2, d0
004dfc: 2e80         move.l     d0, (a7)
004dfe: 7800         moveq      #$0, d4
004e00: 601a         bra.b      $4e1c
004e02: 220a         move.l     a2, d1
004e04: 2017         move.l     (a7), d0
004e06: 610003e8     bsr.w      $51f0
004e0a: 4a80         tst.l      d0
004e0c: 6606         bne.b      $4e14
004e0e: 7014         moveq      #$14, d0
004e10: d097         add.l      (a7), d0
004e12: 6016         bra.b      $4e2a
004e14: 069700000032 addi.l     #$32, (a7)
004e1a: 5284         addq.l     #$1, d4
004e1c: 206eb1d0     movea.l    -$4e30(a6), a0
004e20: 3010         move.w     (a0), d0
004e22: 48c0         ext.l      d0
004e24: b084         cmp.l      d4, d0
004e26: 6eda         bgt.b      $4e02
004e28: 200a         move.l     a2, d0
004e2a: 508f         addq.l     #$8, a7
004e2c: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
004e32: 4e5d         unlk       a5
004e34: 4e75         rts        
004e36: 4e550000     link.w     a5, #$0
004e3a: 48e78000     movem.l    d0, -(a7)
004e3e: 202eb1e4     move.l     -$4e1c(a6), d0
004e42: 4e5d         unlk       a5
004e44: 4e75         rts        
004e46: 6361         bls.b      $4ea9
004e48: 725f         moveq      #$5f, d1
004e4a: 6e65         bgt.b      $4eb1
004e4c: 7464         moveq      #$64, d2
004e4e: 62006361     bhi.w      $b1b1
004e52: 725f         moveq      #$5f, d1
004e54: 6465         bcc.b      $4ebb
004e56: 7669         moveq      #$69, d3
004e58: 6365         bls.b      $4ebf
004e5a: 00002f08     ori.b      #$8, d0
004e5e: 207900000000 movea.l    $0.l, a0
004e64: 41e80814     lea.l      $814(a0), a0
004e68: 2010         move.l     (a0), d0
004e6a: 205f         movea.l    (a7)+, a0
004e6c: 4e75         rts        
004e6e: 2f08         move.l     a0, -(a7)
004e70: 207900000000 movea.l    $0.l, a0
004e76: 41e80814     lea.l      $814(a0), a0
004e7a: 2008         move.l     a0, d0
004e7c: 205f         movea.l    (a7)+, a0
004e7e: 4e75         rts        
004e80: 48e76080     movem.l    d1-d2/a0, -(a7)
004e84: c141         exg.l      d0, d1
004e86: 0c8100000002 cmpi.l     #$2, d1
004e8c: 6716         beq.b      $4ea4
004e8e: 0c8100000005 cmpi.l     #$5, d1
004e94: 670e         beq.b      $4ea4
004e96: 206f0010     movea.l    $10(a7), a0
004e9a: 2408         move.l     a0, d2
004e9c: 4e40         trap       #$0
004e9e: 008d         .dc.w      $008d
004ea0: 60000056     bra.w      $4ef8
004ea4: 206f0010     movea.l    $10(a7), a0
004ea8: 2408         move.l     a0, d2
004eaa: 4e40         trap       #$0
004eac: 008d         .dc.w      $008d
004eae: 2202         move.l     d2, d1
004eb0: 60000046     bra.w      $4ef8
004eb4: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
004eb8: c141         exg.l      d0, d1
004eba: 206f0018     movea.l    $18(a7), a0
004ebe: 242f001c     move.l     $1c(a7), d2
004ec2: 262f0020     move.l     $20(a7), d3
004ec6: 4e40         trap       #$0
004ec8: 008d         .dc.w      $008d
004eca: 60000068     bra.w      $4f34
004ece: 48e76080     movem.l    d1-d2/a0, -(a7)
004ed2: c141         exg.l      d0, d1
004ed4: 206f0010     movea.l    $10(a7), a0
004ed8: 242f0014     move.l     $14(a7), d2
004edc: 4e40         trap       #$0
004ede: 008e         .dc.w      $008e
004ee0: 60000016     bra.w      $4ef8
004ee4: 48e76080     movem.l    d1-d2/a0, -(a7)
004ee8: c141         exg.l      d0, d1
004eea: 206f0010     movea.l    $10(a7), a0
004eee: 2408         move.l     a0, d2
004ef0: 4e40         trap       #$0
004ef2: 008e         .dc.w      $008e
004ef4: 60000002     bra.w      $4ef8
004ef8: 6408         bcc.b      $4f02
004efa: 2d41800c     move.l     d1, -$7ff4(a6)
004efe: 70ff         moveq      #$ff, d0
004f00: 6002         bra.b      $4f04
004f02: 2001         move.l     d1, d0
004f04: 4cdf0106     movem.l    (a7)+, d1-d2/a0
004f08: 4e75         rts        
004f0a: 6406         bcc.b      $4f12
004f0c: 2d41800c     move.l     d1, -$7ff4(a6)
004f10: 70ff         moveq      #$ff, d0
004f12: 4cdf043e     movem.l    (a7)+, d1-d5/a2
004f16: 4e75         rts        
004f18: 6406         bcc.b      $4f20
004f1a: 2d41800c     move.l     d1, -$7ff4(a6)
004f1e: 70ff         moveq      #$ff, d0
004f20: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
004f24: 4e75         rts        
004f26: 6406         bcc.b      $4f2e
004f28: 2d41800c     move.l     d1, -$7ff4(a6)
004f2c: 70ff         moveq      #$ff, d0
004f2e: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
004f32: 4e75         rts        
004f34: 6408         bcc.b      $4f3e
004f36: 2d41800c     move.l     d1, -$7ff4(a6)
004f3a: 70ff         moveq      #$ff, d0
004f3c: 6002         bra.b      $4f40
004f3e: 2001         move.l     d1, d0
004f40: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
004f44: 4e75         rts        
004f46: 48e74000     movem.l    d1, -(a7)
004f4a: c141         exg.l      d0, d1
004f4c: 4e40         trap       #$0
004f4e: 005c6406     ori.w      #$6406, (a4)+
004f52: 2d41800c     move.l     d1, -$7ff4(a6)
004f56: 70ff         moveq      #$ff, d0
004f58: 4cdf0002     movem.l    (a7)+, d1
004f5c: 4e75         rts        
004f5e: 48e740e0     movem.l    d1/a0-a2, -(a7)
004f62: e340         asl.w      #$1, d0
004f64: 207900000000 movea.l    $0.l, a0
004f6a: 2268004c     movea.l    $4c(a0), a1
004f6e: 45e90168     lea.l      $168(a1), a2
004f72: 30320000     move.w     (a2, d0.w), d0
004f76: 660a         bne.b      $4f82
004f78: 4cdf0702     movem.l    (a7)+, d1/a0-a2
004f7c: 303cffff     move.w     #$ffff, d0
004f80: 4e75         rts        
004f82: 22680048     movea.l    $48(a0), a1
004f86: b051         cmp.w      (a1), d0
004f88: 62f2         bhi.b      $4f7c
004f8a: e540         asl.w      #$2, d0
004f8c: d2c0         adda.w     d0, a1
004f8e: e448         lsr.w      #$2, d0
004f90: 4a91         tst.l      (a1)
004f92: 67e8         beq.b      $4f7c
004f94: 2251         movea.l    (a1), a1
004f96: b051         cmp.w      (a1), d0
004f98: 66e2         bne.b      $4f7c
004f9a: 22690004     movea.l    $4(a1), a1
004f9e: 20290008     move.l     $8(a1), d0
004fa2: 4cdf0702     movem.l    (a7)+, d1/a0-a2
004fa6: 4e75         rts        
004fa8: 4e550000     link.w     a5, #$0
004fac: 48e78038     movem.l    d0/a2-a4, -(a7)
004fb0: 7000         moveq      #$0, d0
004fb2: 2840         movea.l    d0, a4
004fb4: 2640         movea.l    d0, a3
004fb6: 2440         movea.l    d0, a2
004fb8: 700d         moveq      #$d, d0
004fba: 7200         moveq      #$0, d1
004fbc: 41fa0064     lea.l      $5022(pc), a0
004fc0: 47ee800c     lea.l      -$7ff4(a6), a3
004fc4: 7609         moveq      #$9, d3
004fc6: 2683         move.l     d3, (a3)
004fc8: 262e84e8     move.l     -$7b18(a6), d3
004fcc: 242e84e4     move.l     -$7b1c(a6), d2
004fd0: 286eb1e8     movea.l    -$4e18(a6), a4
004fd4: 4e40         trap       #$0
004fd6: 0021653e     ori.b      #$3e, -(a1)
004fda: 4a93         tst.l      (a3)
004fdc: 6718         beq.b      $4ff6
004fde: 41fa0046     lea.l      $5026(pc), a0
004fe2: 7264         moveq      #$64, d1
004fe4: 7002         moveq      #$2, d0
004fe6: 4e40         trap       #$0
004fe8: 008c         .dc.w      $008c
004fea: 41fa0036     lea.l      $5022(pc), a0
004fee: 72dd         moveq      #$dd, d1
004ff0: 003c0001     ori.b      #$1, ccr
004ff4: 6022         bra.b      $5018
004ff6: 3d7c0041816c move.w     #$41, -$7e94(a6)
004ffc: 426e816e     clr.w      -$7e92(a6)
005000: 3d7c00028188 move.w     #$2, -$7e78(a6)
005006: 3d7c0001818a move.w     #$1, -$7e76(a6)
00500c: 3d7c000281a4 move.w     #$2, -$7e5c(a6)
005012: 3d7c000281a6 move.w     #$2, -$7e5a(a6)
005018: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
00501e: 4e5d         unlk       a5
005020: 4e75         rts        
005022: 6369         bls.b      $508d
005024: 6f002a2a     ble.w      $7a50
005028: 2a2a2063     move.l     $2063(a2), d5
00502c: 696f         bvs.b      $509d
00502e: 20747261     movea.l    $61(a4, d7.w), a0
005032: 7068         moveq      #$68, d0
005034: 616e         bsr.b      $50a4
005036: 646c         bcc.b      $50a4
005038: 6572         bcs.b      $50ac
00503a: 206d6973     movea.l    $6973(a5), a0
00503e: 6d61         blt.b      $50a1
005040: 7463         moveq      #$63, d2
005042: 6820         bvc.b      $5064
005044: 2a2a2a2a     move.l     $2a2a(a2), d5
005048: 0d00         btst.l     d6, d0
00504a: 4e4d         trap       #$d
00504c: 00004e4d     ori.b      #$4d, d0
005050: 00014e4d     ori.b      #$4d, d1
005054: 00024e4d     ori.b      #$4d, d2
005058: 00034e4d     ori.b      #$4d, d3
00505c: 00044e4d     ori.b      #$4d, d4
005060: 00054e4d     ori.b      #$4d, d5
005064: 00064e4d     ori.b      #$4d, d6
005068: 00074e4d     ori.b      #$4d, d7
00506c: 0008         .dc.w      $0008
00506e: 4e4d         trap       #$d
005070: 0009         .dc.w      $0009
005072: 4e4d         trap       #$d
005074: 000a         .dc.w      $000a
005076: 4e4d         trap       #$d
005078: 000b         .dc.w      $000b
00507a: 4e4d         trap       #$d
00507c: 000c         .dc.w      $000c
00507e: 4e4d         trap       #$d
005080: 000d         .dc.w      $000d
005082: 4e4d         trap       #$d
005084: 000e         .dc.w      $000e
005086: 4e4d         trap       #$d
005088: 000f         .dc.w      $000f
00508a: 4e4d         trap       #$d
00508c: 00104e4d     ori.b      #$4d, (a0)
005090: 00114e4d     ori.b      #$4d, (a1)
005094: 00124e4d     ori.b      #$4d, (a2)
005098: 00134e4d     ori.b      #$4d, (a3)
00509c: 00144e4d     ori.b      #$4d, (a4)
0050a0: 00154e4d     ori.b      #$4d, (a5)
0050a4: 00164e4d     ori.b      #$4d, (a6)
0050a8: 00174e4d     ori.b      #$4d, (a7)
0050ac: 00184e4d     ori.b      #$4d, (a0)+
0050b0: 00194e4d     ori.b      #$4d, (a1)+
0050b4: 001a4e4d     ori.b      #$4d, (a2)+
0050b8: 001b4e4d     ori.b      #$4d, (a3)+
0050bc: 001c4e4d     ori.b      #$4d, (a4)+
0050c0: 001d4e4d     ori.b      #$4d, (a5)+
0050c4: 001e4e4d     ori.b      #$4d, (a6)+
0050c8: 001f4e4d     ori.b      #$4d, (a7)+
0050cc: 00204e4d     ori.b      #$4d, -(a0)
0050d0: 00214e4d     ori.b      #$4d, -(a1)
0050d4: 00224e4d     ori.b      #$4d, -(a2)
0050d8: 00234e4d     ori.b      #$4d, -(a3)
0050dc: 00244e4d     ori.b      #$4d, -(a4)
0050e0: 00254e4d     ori.b      #$4d, -(a5)
0050e4: 00264e4d     ori.b      #$4d, -(a6)
0050e8: 00274e4d     ori.b      #$4d, -(a7)
0050ec: 00284e4d0029 ori.b      #$4d, $29(a0)
0050f2: 4e4d         trap       #$d
0050f4: 002a4e4d002b ori.b      #$4d, $2b(a2)
0050fa: 4e4d         trap       #$d
0050fc: 002c4e4d002d ori.b      #$4d, $2d(a4)
005102: 4e4d         trap       #$d
005104: 002e4e4d002f ori.b      #$4d, $2f(a6)
00510a: 4e4d         trap       #$d
00510c: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
005112: 4e4d         trap       #$d
005114: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
00511a: 4e4d         trap       #$d
00511c: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
005122: 4e4d         trap       #$d
005124: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
00512a: 4e4d         trap       #$d
00512c: 00384e4d0039 ori.b      #$4d, $39.w
005132: 4e4d         trap       #$d
005134: 003a         .dc.w      $003a
005136: 4e4d         trap       #$d
005138: 003b         .dc.w      $003b
00513a: 4e4d         trap       #$d
00513c: 003c         .dc.w      $003c
00513e: 4e4d         trap       #$d
005140: 003d         .dc.w      $003d
005142: 4e4d         trap       #$d
005144: 003e         .dc.w      $003e
005146: 4e4d         trap       #$d
005148: 003f         .dc.w      $003f
00514a: 4e4d         trap       #$d
00514c: 00414e4d     ori.w      #$4e4d, d1
005150: 00424e4d     ori.w      #$4e4d, d2
005154: 00434e4d     ori.w      #$4e4d, d3
005158: 00444e4d     ori.w      #$4e4d, d4
00515c: 00454e4d     ori.w      #$4e4d, d5
005160: 00404e55     ori.w      #$4e55, d0
005164: 000048e7     ori.b      #$e7, d0
005168: cc302440     and.b      $40(a0, d2.w), d6
00516c: 61ff000009bc bsr.l      $5b2a
005172: 2a00         move.l     d0, d5
005174: 264a         movea.l    a2, a3
005176: 4a1a         tst.b      (a2)+
005178: 66fffffffffc bne.l      $5176
00517e: 538a         subq.l     #$1, a2
005180: 60ff0000001c bra.l      $519e
005186: 2005         move.l     d5, d0
005188: 4c7c08010000000a divs.l     #$a, d0
005190: 06010030     addi.b     #$30, d1
005194: 1481         move.b     d1, (a2)
005196: 4c7c58050000000a divs.l     #$a, d5
00519e: 0c220058     cmpi.b     #$58, -(a2)
0051a2: 67ffffffffe2 beq.l      $5186
0051a8: 528a         addq.l     #$1, a2
0051aa: 7861         moveq      #$61, d4
0051ac: 60ff0000001a bra.l      $51c8
0051b2: 707a         moveq      #$7a, d0
0051b4: b084         cmp.l      d4, d0
0051b6: 66ff0000000c bne.l      $51c4
0051bc: 7000         moveq      #$0, d0
0051be: 60ff00000026 bra.l      $51e6
0051c4: 1484         move.b     d4, (a2)
0051c6: 5284         addq.l     #$1, d4
0051c8: 7200         moveq      #$0, d1
0051ca: 200b         move.l     a3, d0
0051cc: 61fffffffee8 bsr.l      $50b6
0051d2: 72ff         moveq      #$ff, d1
0051d4: b280         cmp.l      d0, d1
0051d6: 66ffffffffda bne.l      $51b2
0051dc: 200b         move.l     a3, d0
0051de: 60ff00000006 bra.l      $51e6
0051e4: 4e71         nop        
0051e6: 4ced0c32ffec movem.l    -$14(a5), d1/d4-d5/a2-a3
0051ec: 4e5d         unlk       a5
0051ee: 4e75         rts        
0051f0: 2f08         move.l     a0, -(a7)
0051f2: 2040         movea.l    d0, a0
0051f4: b300         eor.b      d1, d0
0051f6: 08000000     btst.b     #$0, d0
0051fa: 6652         bne.b      $524e
0051fc: 08010000     btst.b     #$0, d1
005200: c389         exg.l      d1, a1
005202: 6718         beq.b      $521c
005204: b109         cmpm.b     (a1)+, (a0)+
005206: 6530         bcs.b      $5238
005208: 6220         bhi.b      $522a
00520a: 4a28ffff     tst.b      -$1(a0)
00520e: 660c         bne.b      $521c
005210: 6034         bra.b      $5246
005212: 4a00         tst.b      d0
005214: 6730         beq.b      $5246
005216: 0c4000ff     cmpi.w     #$ff, d0
00521a: 632a         bls.b      $5246
00521c: 3018         move.w     (a0)+, d0
00521e: b059         cmp.w      (a1)+, d0
005220: 67f0         beq.b      $5212
005222: 650e         bcs.b      $5232
005224: 0c4000ff     cmpi.w     #$ff, d0
005228: 6316         bls.b      $5240
00522a: 7001         moveq      #$1, d0
00522c: 205f         movea.l    (a7)+, a0
00522e: c389         exg.l      d1, a1
005230: 4e75         rts        
005232: 0c4000ff     cmpi.w     #$ff, d0
005236: 6308         bls.b      $5240
005238: 70ff         moveq      #$ff, d0
00523a: 205f         movea.l    (a7)+, a0
00523c: c389         exg.l      d1, a1
00523e: 4e75         rts        
005240: 4a29fffe     tst.b      -$2(a1)
005244: 66f2         bne.b      $5238
005246: 7000         moveq      #$0, d0
005248: 205f         movea.l    (a7)+, a0
00524a: c389         exg.l      d1, a1
00524c: 4e75         rts        
00524e: c389         exg.l      d1, a1
005250: 7000         moveq      #$0, d0
005252: 1018         move.b     (a0)+, d0
005254: b019         cmp.b      (a1)+, d0
005256: 56c8fffa     dbne       d0, $5252
00525a: 65dc         bcs.b      $5238
00525c: 5240         addq.w     #$1, d0
00525e: 205f         movea.l    (a7)+, a0
005260: c389         exg.l      d1, a1
005262: 4e75         rts        
005264: 2f08         move.l     a0, -(a7)
005266: 2040         movea.l    d0, a0
005268: 4a18         tst.b      (a0)+
00526a: 670c         beq.b      $5278
00526c: 4a18         tst.b      (a0)+
00526e: 6708         beq.b      $5278
005270: 4a18         tst.b      (a0)+
005272: 6704         beq.b      $5278
005274: 4a18         tst.b      (a0)+
005276: 66f0         bne.b      $5268
005278: 91c0         suba.l     d0, a0
00527a: 2008         move.l     a0, d0
00527c: 5380         subq.l     #$1, d0
00527e: 205f         movea.l    (a7)+, a0
005280: 4e75         rts        
005282: 2f08         move.l     a0, -(a7)
005284: 2040         movea.l    d0, a0
005286: c389         exg.l      d1, a1
005288: 10d9         move.b     (a1)+, (a0)+
00528a: 670c         beq.b      $5298
00528c: 10d9         move.b     (a1)+, (a0)+
00528e: 6708         beq.b      $5298
005290: 10d9         move.b     (a1)+, (a0)+
005292: 6704         beq.b      $5298
005294: 10d9         move.b     (a1)+, (a0)+
005296: 66f0         bne.b      $5288
005298: 205f         movea.l    (a7)+, a0
00529a: c389         exg.l      d1, a1
00529c: 4e75         rts        
00529e: 2f08         move.l     a0, -(a7)
0052a0: 2040         movea.l    d0, a0
0052a2: c389         exg.l      d1, a1
0052a4: 4a18         tst.b      (a0)+
0052a6: 670c         beq.b      $52b4
0052a8: 4a18         tst.b      (a0)+
0052aa: 6708         beq.b      $52b4
0052ac: 4a18         tst.b      (a0)+
0052ae: 6704         beq.b      $52b4
0052b0: 4a18         tst.b      (a0)+
0052b2: 66f0         bne.b      $52a4
0052b4: 1159ffff     move.b     (a1)+, -$1(a0)
0052b8: 66ce         bne.b      $5288
0052ba: 60dc         bra.b      $5298
0052bc: 2f08         move.l     a0, -(a7)
0052be: 2040         movea.l    d0, a0
0052c0: c389         exg.l      d1, a1
0052c2: 10d9         move.b     (a1)+, (a0)+
0052c4: 6afc         bpl.b      $52c2
0052c6: 4210         clr.b      (a0)
0052c8: 0220007f     andi.b     #$7f, -(a0)
0052cc: 205f         movea.l    (a7)+, a0
0052ce: c389         exg.l      d1, a1
0052d0: 4e75         rts        
0052d2: 4e550000     link.w     a5, #$0
0052d6: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
0052da: 2440         movea.l    d0, a2
0052dc: 2641         movea.l    d1, a3
0052de: 282f0020     move.l     $20(a7), d4
0052e2: 284a         movea.l    a2, a4
0052e4: 5384         subq.l     #$1, d4
0052e6: 6dff0000000c blt.l      $52f4
0052ec: 18db         move.b     (a3)+, (a4)+
0052ee: 66fffffffff4 bne.l      $52e4
0052f4: 60ff00000006 bra.l      $52fc
0052fa: 421c         clr.b      (a4)+
0052fc: 5384         subq.l     #$1, d4
0052fe: 6cfffffffffa bge.l      $52fa
005304: 200a         move.l     a2, d0
005306: 60ff00000006 bra.l      $530e
00530c: 4e71         nop        
00530e: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
005314: 4e5d         unlk       a5
005316: 4e75         rts        
005318: 4e550000     link.w     a5, #$0
00531c: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
005320: 2440         movea.l    d0, a2
005322: 2641         movea.l    d1, a3
005324: 282f001c     move.l     $1c(a7), d4
005328: 60ff00000016 bra.l      $5340
00532e: 4a1b         tst.b      (a3)+
005330: 66ff0000000c bne.l      $533e
005336: 7000         moveq      #$0, d0
005338: 60ff0000003a bra.l      $5374
00533e: 528a         addq.l     #$1, a2
005340: 5384         subq.l     #$1, d4
005342: 6dff0000000e blt.l      $5352
005348: 1012         move.b     (a2), d0
00534a: b013         cmp.b      (a3), d0
00534c: 67ffffffffe0 beq.l      $532e
005352: 4a84         tst.l      d4
005354: 6cff00000008 bge.l      $535e
00535a: 7000         moveq      #$0, d0
00535c: 600e         bra.b      $536c
00535e: 1013         move.b     (a3), d0
005360: 4880         ext.w      d0
005362: 1212         move.b     (a2), d1
005364: 4881         ext.w      d1
005366: 9240         sub.w      d0, d1
005368: 48c1         ext.l      d1
00536a: 2001         move.l     d1, d0
00536c: 60ff00000006 bra.l      $5374
005372: 4e71         nop        
005374: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
00537a: 4e5d         unlk       a5
00537c: 4e75         rts        
00537e: 4e550000     link.w     a5, #$0
005382: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
005386: 2440         movea.l    d0, a2
005388: 2641         movea.l    d1, a3
00538a: 282f0020     move.l     $20(a7), d4
00538e: 284a         movea.l    a2, a4
005390: 4a1c         tst.b      (a4)+
005392: 66fffffffffc bne.l      $5390
005398: 538c         subq.l     #$1, a4
00539a: 5384         subq.l     #$1, d4
00539c: 6dff0000000c blt.l      $53aa
0053a2: 18db         move.b     (a3)+, (a4)+
0053a4: 66fffffffff4 bne.l      $539a
0053aa: 4a84         tst.l      d4
0053ac: 6cff00000006 bge.l      $53b4
0053b2: 4214         clr.b      (a4)
0053b4: 200a         move.l     a2, d0
0053b6: 60ff00000006 bra.l      $53be
0053bc: 4e71         nop        
0053be: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
0053c4: 4e5d         unlk       a5
0053c6: 4e75         rts        
0053c8: 4e550000     link.w     a5, #$0
0053cc: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
0053d0: 2040         movea.l    d0, a0
0053d2: 2441         movea.l    d1, a2
0053d4: 242d0008     move.l     $8(a5), d2
0053d8: 6702         beq.b      $53dc
0053da: 610a         bsr.b      $53e6
0053dc: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
0053e2: 4e5d         unlk       a5
0053e4: 4e75         rts        
0053e6: 4a82         tst.l      d2
0053e8: 674a         beq.b      $5434
0053ea: b1ca         cmpa.l     a2, a0
0053ec: 6248         bhi.b      $5436
0053ee: 6744         beq.b      $5434
0053f0: 300a         move.w     a2, d0
0053f2: 08000000     btst.b     #$0, d0
0053f6: 6704         beq.b      $53fc
0053f8: 10da         move.b     (a2)+, (a0)+
0053fa: 5382         subq.l     #$1, d2
0053fc: 3008         move.w     a0, d0
0053fe: 08000000     btst.b     #$0, d0
005402: 6624         bne.b      $5428
005404: e28a         lsr.l      #$1, d2
005406: 6406         bcc.b      $540e
005408: 6104         bsr.b      $540e
00540a: 10da         move.b     (a2)+, (a0)+
00540c: 4e75         rts        
00540e: e28a         lsr.l      #$1, d2
005410: 6406         bcc.b      $5418
005412: 30da         move.w     (a2)+, (a0)+
005414: 6002         bra.b      $5418
005416: 20da         move.l     (a2)+, (a0)+
005418: 51cafffc     dbra       d2, $5416
00541c: 5242         addq.w     #$1, d2
00541e: 5382         subq.l     #$1, d2
005420: 64f4         bcc.b      $5416
005422: 7400         moveq      #$0, d2
005424: 4e75         rts        
005426: 10da         move.b     (a2)+, (a0)+
005428: 51cafffc     dbra       d2, $5426
00542c: 5242         addq.w     #$1, d2
00542e: 5382         subq.l     #$1, d2
005430: 64f4         bcc.b      $5426
005432: 7400         moveq      #$0, d2
005434: 4e75         rts        
005436: d5c2         adda.l     d2, a2
005438: d1c2         adda.l     d2, a0
00543a: 300a         move.w     a2, d0
00543c: 08000000     btst.b     #$0, d0
005440: 6704         beq.b      $5446
005442: 1122         move.b     -(a2), -(a0)
005444: 5382         subq.l     #$1, d2
005446: 3008         move.w     a0, d0
005448: 08000000     btst.b     #$0, d0
00544c: 6624         bne.b      $5472
00544e: e28a         lsr.l      #$1, d2
005450: 6406         bcc.b      $5458
005452: 6104         bsr.b      $5458
005454: 1122         move.b     -(a2), -(a0)
005456: 4e75         rts        
005458: e28a         lsr.l      #$1, d2
00545a: 6406         bcc.b      $5462
00545c: 3122         move.w     -(a2), -(a0)
00545e: 6002         bra.b      $5462
005460: 2122         move.l     -(a2), -(a0)
005462: 51cafffc     dbra       d2, $5460
005466: 5242         addq.w     #$1, d2
005468: 5382         subq.l     #$1, d2
00546a: 64f4         bcc.b      $5460
00546c: 7400         moveq      #$0, d2
00546e: 4e75         rts        
005470: 1122         move.b     -(a2), -(a0)
005472: 51cafffc     dbra       d2, $5470
005476: 5242         addq.w     #$1, d2
005478: 5382         subq.l     #$1, d2
00547a: 64f4         bcc.b      $5470
00547c: 7400         moveq      #$0, d2
00547e: 4e75         rts        
005480: 4e550000     link.w     a5, #$0
005484: 48e7c080     movem.l    d0-d1/a0, -(a7)
005488: 2017         move.l     (a7), d0
00548a: 41f60170ffffb1ed lea.l      $ffffb1ed(a6, invalid.w), a0
005492: 12300800     move.b     (a0, d0.l), d1
005496: 4881         ext.w      d1
005498: 08010002     btst.b     #$2, d1
00549c: 67ff0000000c beq.l      $54aa
0054a2: 0280000000df andi.l     #$df, d0
0054a8: 6002         bra.b      $54ac
0054aa: 2017         move.l     (a7), d0
0054ac: 60ff00000006 bra.l      $54b4
0054b2: 4e71         nop        
0054b4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0054ba: 4e5d         unlk       a5
0054bc: 4e75         rts        
0054be: 4e550000     link.w     a5, #$0
0054c2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0054c6: 2017         move.l     (a7), d0
0054c8: 41f60170ffffb1ed lea.l      $ffffb1ed(a6, invalid.w), a0
0054d0: 12300800     move.b     (a0, d0.l), d1
0054d4: 4881         ext.w      d1
0054d6: 08010001     btst.b     #$1, d1
0054da: 67ff0000000a beq.l      $54e6
0054e0: 08c00005     bset.b     #$5, d0
0054e4: 6002         bra.b      $54e8
0054e6: 2017         move.l     (a7), d0
0054e8: 60ff00000006 bra.l      $54f0
0054ee: 4e71         nop        
0054f0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0054f6: 4e5d         unlk       a5
0054f8: 4e75         rts        
0054fa: 48e73800     movem.l    d2-d4, -(a7)
0054fe: 2400         move.l     d0, d2
005500: 2600         move.l     d0, d3
005502: 4843         swap       d3
005504: 2801         move.l     d1, d4
005506: 4844         swap       d4
005508: c0c1         mulu.w     d1, d0
00550a: c2c3         mulu.w     d3, d1
00550c: c4c4         mulu.w     d4, d2
00550e: c6c4         mulu.w     d4, d3
005510: 4840         swap       d0
005512: d041         add.w      d1, d0
005514: 7800         moveq      #$0, d4
005516: d784         addx.l     d4, d3
005518: d042         add.w      d2, d0
00551a: d784         addx.l     d4, d3
00551c: 4840         swap       d0
00551e: 4241         clr.w      d1
005520: 4841         swap       d1
005522: 4242         clr.w      d2
005524: 4842         swap       d2
005526: d282         add.l      d2, d1
005528: d283         add.l      d3, d1
00552a: 4a80         tst.l      d0
00552c: 4cdf001c     movem.l    (a7)+, d2-d4
005530: 4e75         rts        
005532: 2f02         move.l     d2, -(a7)
005534: 7400         moveq      #$0, d2
005536: 4a80         tst.l      d0
005538: 6a04         bpl.b      $553e
00553a: 4480         neg.l      d0
00553c: 7403         moveq      #$3, d2
00553e: 4a81         tst.l      d1
005540: 6a06         bpl.b      $5548
005542: 4481         neg.l      d1
005544: 0a020001     eori.b     #$1, d2
005548: 6122         bsr.b      $556c
00554a: e20a         lsr.b      #$1, d2
00554c: 6402         bcc.b      $5550
00554e: 4480         neg.l      d0
005550: e20a         lsr.b      #$1, d2
005552: 6402         bcc.b      $5556
005554: 4481         neg.l      d1
005556: 241f         move.l     (a7)+, d2
005558: 4a80         tst.l      d0
00555a: 4e75         rts        
00555c: 61d4         bsr.b      $5532
00555e: c141         exg.l      d0, d1
005560: 4a80         tst.l      d0
005562: 4e75         rts        
005564: 6106         bsr.b      $556c
005566: c141         exg.l      d0, d1
005568: 4a80         tst.l      d0
00556a: 4e75         rts        
00556c: 48e73800     movem.l    d2-d4, -(a7)
005570: 2401         move.l     d1, d2
005572: 6606         bne.b      $557a
005574: 81fc0000     divs.w     #$0, d0
005578: 606e         bra.b      $55e8
00557a: 5381         subq.l     #$1, d1
00557c: 676a         beq.b      $55e8
00557e: 2801         move.l     d1, d4
005580: 2200         move.l     d0, d1
005582: b481         cmp.l      d1, d2
005584: 650c         bcs.b      $5592
005586: 6704         beq.b      $558c
005588: 7000         moveq      #$0, d0
00558a: 605c         bra.b      $55e8
00558c: 7001         moveq      #$1, d0
00558e: 9282         sub.l      d2, d1
005590: 6056         bra.b      $55e8
005592: 2602         move.l     d2, d3
005594: 6bf6         bmi.b      $558c
005596: c684         and.l      d4, d3
005598: 6612         bne.b      $55ac
00559a: e28a         lsr.l      #$1, d2
00559c: 76ff         moveq      #$ff, d3
00559e: e28a         lsr.l      #$1, d2
0055a0: 55cbfffc     dbcs       d3, $559e
0055a4: 4483         neg.l      d3
0055a6: e6a8         lsr.l      d3, d0
0055a8: c284         and.l      d4, d1
0055aa: 603c         bra.b      $55e8
0055ac: 7000         moveq      #$0, d0
0055ae: 76ff         moveq      #$ff, d3
0055b0: e382         asl.l      #$1, d2
0055b2: 6a06         bpl.b      $55ba
0055b4: b481         cmp.l      d1, d2
0055b6: 620a         bhi.b      $55c2
0055b8: 600c         bra.b      $55c6
0055ba: b481         cmp.l      d1, d2
0055bc: 54cbfff2     dbcc       d3, $55b0
0055c0: 6704         beq.b      $55c6
0055c2: 5283         addq.l     #$1, d3
0055c4: e28a         lsr.l      #$1, d2
0055c6: 4483         neg.l      d3
0055c8: 6004         bra.b      $55ce
0055ca: e380         asl.l      #$1, d0
0055cc: e28a         lsr.l      #$1, d2
0055ce: 9282         sub.l      d2, d1
0055d0: 6510         bcs.b      $55e2
0055d2: 5280         addq.l     #$1, d0
0055d4: 51cbfff4     dbra       d3, $55ca
0055d8: 600e         bra.b      $55e8
0055da: e380         asl.l      #$1, d0
0055dc: e28a         lsr.l      #$1, d2
0055de: d282         add.l      d2, d1
0055e0: 65f0         bcs.b      $55d2
0055e2: 51cbfff6     dbra       d3, $55da
0055e6: d282         add.l      d2, d1
0055e8: 4cdf001c     movem.l    (a7)+, d2-d4
0055ec: 4a80         tst.l      d0
0055ee: 4e75         rts        
0055f0: 2a5f         movea.l    (a7)+, a5
0055f2: 5385         subq.l     #$1, d5
0055f4: 6562         bcs.b      $5658
0055f6: 1018         move.b     (a0)+, d0
0055f8: 67f8         beq.b      $55f2
0055fa: 0c00000d     cmpi.b     #$d, d0
0055fe: 6758         beq.b      $5658
005600: 0c000020     cmpi.b     #$20, d0
005604: 67ec         beq.b      $55f2
005606: 0c000009     cmpi.b     #$9, d0
00560a: 67e6         beq.b      $55f2
00560c: 0c00002c     cmpi.b     #$2c, d0
005610: 67e0         beq.b      $55f2
005612: 5282         addq.l     #$1, d2
005614: 0c000022     cmpi.b     #$22, d0
005618: 6730         beq.b      $564a
00561a: 0c000027     cmpi.b     #$27, d0
00561e: 672a         beq.b      $564a
005620: 4868ffff     pea.l      -$1(a0)
005624: 5385         subq.l     #$1, d5
005626: 6530         bcs.b      $5658
005628: 1018         move.b     (a0)+, d0
00562a: 67c6         beq.b      $55f2
00562c: 0c00000d     cmpi.b     #$d, d0
005630: 6712         beq.b      $5644
005632: 0c000020     cmpi.b     #$20, d0
005636: 670c         beq.b      $5644
005638: 0c000009     cmpi.b     #$9, d0
00563c: 6706         beq.b      $5644
00563e: 0c00002c     cmpi.b     #$2c, d0
005642: 66e0         bne.b      $5624
005644: 4228ffff     clr.b      -$1(a0)
005648: 60a8         bra.b      $55f2
00564a: 4850         pea.l      (a0)
00564c: 5385         subq.l     #$1, d5
00564e: 6508         bcs.b      $5658
005650: 1218         move.b     (a0)+, d1
005652: b001         cmp.b      d1, d0
005654: 66f6         bne.b      $564c
005656: 60ec         bra.b      $5644
005658: 204f         movea.l    a7, a0
00565a: 4857         pea.l      (a7)
00565c: 2f02         move.l     d2, -(a7)
00565e: 5382         subq.l     #$1, d2
005660: 6710         beq.b      $5672
005662: e582         asl.l      #$2, d2
005664: 20302800     move.l     (a0, d2.l), d0
005668: 21902800     move.l     (a0), (a0, d2.l)
00566c: 20c0         move.l     d0, (a0)+
00566e: 5182         subq.l     #$8, d2
005670: 62f2         bhi.b      $5664
005672: 4ed5         jmp        (a5)
005674: 4e550000     link.w     a5, #$0
005678: 48e76080     movem.l    d1-d2/a0, -(a7)
00567c: 2041         movea.l    d1, a0
00567e: 323c0000     move.w     #$0, d1
005682: 4e40         trap       #$0
005684: 008d         .dc.w      $008d
005686: 60000502     bra.w      $5b8a
00568a: 4e550000     link.w     a5, #$0
00568e: 48e76080     movem.l    d1-d2/a0, -(a7)
005692: 323c0001     move.w     #$1, d1
005696: 4e40         trap       #$0
005698: 008d         .dc.w      $008d
00569a: 650004f0     bcs.w      $5b8c
00569e: 2001         move.l     d1, d0
0056a0: 600004e8     bra.w      $5b8a
0056a4: 4e550000     link.w     a5, #$0
0056a8: 48e76080     movem.l    d1-d2/a0, -(a7)
0056ac: 323c0006     move.w     #$6, d1
0056b0: 4e40         trap       #$0
0056b2: 008d         .dc.w      $008d
0056b4: 640004de     bcc.w      $5b94
0056b8: 0c4100d3     cmpi.w     #$d3, d1
0056bc: 660004ce     bne.w      $5b8c
0056c0: 7001         moveq      #$1, d0
0056c2: 600004c6     bra.w      $5b8a
0056c6: 4e550000     link.w     a5, #$0
0056ca: 48e76080     movem.l    d1-d2/a0, -(a7)
0056ce: 2041         movea.l    d1, a0
0056d0: 323c000f     move.w     #$f, d1
0056d4: 242d0008     move.l     $8(a5), d2
0056d8: 60a8         bra.b      $5682
0056da: 4e550000     link.w     a5, #$0
0056de: 48e76080     movem.l    d1-d2/a0, -(a7)
0056e2: 2041         movea.l    d1, a0
0056e4: 323c000e     move.w     #$e, d1
0056e8: 6098         bra.b      $5682
0056ea: 4e550000     link.w     a5, #$0
0056ee: 48e76080     movem.l    d1-d2/a0, -(a7)
0056f2: 323c0002     move.w     #$2, d1
0056f6: 4e40         trap       #$0
0056f8: 008d         .dc.w      $008d
0056fa: 65000490     bcs.w      $5b8c
0056fe: 2002         move.l     d2, d0
005700: 60000488     bra.w      $5b8a
005704: 4e550000     link.w     a5, #$0
005708: 48e76080     movem.l    d1-d2/a0, -(a7)
00570c: 323c0005     move.w     #$5, d1
005710: 60e4         bra.b      $56f6
005712: 4e550000     link.w     a5, #$0
005716: 48e76080     movem.l    d1-d2/a0, -(a7)
00571a: 2041         movea.l    d1, a0
00571c: 323c0000     move.w     #$0, d1
005720: 4e40         trap       #$0
005722: 008e         .dc.w      $008e
005724: 60000464     bra.w      $5b8a
005728: 4e550000     link.w     a5, #$0
00572c: 48e76080     movem.l    d1-d2/a0, -(a7)
005730: 323c0003     move.w     #$3, d1
005734: 60ea         bra.b      $5720
005736: 4e550000     link.w     a5, #$0
00573a: 48e76080     movem.l    d1-d2/a0, -(a7)
00573e: 2401         move.l     d1, d2
005740: 323c0002     move.w     #$2, d1
005744: 60da         bra.b      $5720
005746: 4e550000     link.w     a5, #$0
00574a: 48e76080     movem.l    d1-d2/a0, -(a7)
00574e: 2041         movea.l    d1, a0
005750: 323c000f     move.w     #$f, d1
005754: 60ca         bra.b      $5720
005756: 4e550000     link.w     a5, #$0
00575a: 48e76080     movem.l    d1-d2/a0, -(a7)
00575e: 2401         move.l     d1, d2
005760: 323c0010     move.w     #$10, d1
005764: 60ba         bra.b      $5720
005766: 4e550000     link.w     a5, #$0
00576a: 48e76080     movem.l    d1-d2/a0, -(a7)
00576e: 2401         move.l     d1, d2
005770: 323c0011     move.w     #$11, d1
005774: 60aa         bra.b      $5720
005776: 4e550000     link.w     a5, #$0
00577a: 48e76080     movem.l    d1-d2/a0, -(a7)
00577e: 2401         move.l     d1, d2
005780: 323c001a     move.w     #$1a, d1
005784: 609a         bra.b      $5720
005786: 4e550000     link.w     a5, #$0
00578a: 48e76080     movem.l    d1-d2/a0, -(a7)
00578e: 323c001b     move.w     #$1b, d1
005792: 60f0         bra.b      $5784
005794: 4e550000     link.w     a5, #$0
005798: 48e76080     movem.l    d1-d2/a0, -(a7)
00579c: 48e71840     movem.l    d3-d4/a1, -(a7)
0057a0: 2401         move.l     d1, d2
0057a2: 7204         moveq      #$4, d1
0057a4: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
0057aa: 4e40         trap       #$0
0057ac: 008e         .dc.w      $008e
0057ae: 4cdf0218     movem.l    (a7)+, d3-d4/a1
0057b2: 600003d6     bra.w      $5b8a
0057b6: 4e550000     link.w     a5, #$0
0057ba: 48e76080     movem.l    d1-d2/a0, -(a7)
0057be: 2401         move.l     d1, d2
0057c0: 323c001c     move.w     #$1c, d1
0057c4: 60be         bra.b      $5784
0057c6: 4e550000     link.w     a5, #$0
0057ca: 48e76080     movem.l    d1-d2/a0, -(a7)
0057ce: 323c0024     move.w     #$24, d1
0057d2: 60b0         bra.b      $5784
0057d4: 4e550000     link.w     a5, #$0
0057d8: 48e76080     movem.l    d1-d2/a0, -(a7)
0057dc: 323c0025     move.w     #$25, d1
0057e0: 60a2         bra.b      $5784
0057e2: 4e550000     link.w     a5, #$0
0057e6: 48e76080     movem.l    d1-d2/a0, -(a7)
0057ea: 3401         move.w     d1, d2
0057ec: 323c0026     move.w     #$26, d1
0057f0: 6092         bra.b      $5784
0057f2: 4e550000     link.w     a5, #$0
0057f6: 48e76080     movem.l    d1-d2/a0, -(a7)
0057fa: 3401         move.w     d1, d2
0057fc: 323c0027     move.w     #$27, d1
005800: 6082         bra.b      $5784
005802: 4e550000     link.w     a5, #$0
005806: 48e76080     movem.l    d1-d2/a0, -(a7)
00580a: 2040         movea.l    d0, a0
00580c: 2001         move.l     d1, d0
00580e: 2f0a         move.l     a2, -(a7)
005810: 4e40         trap       #$0
005812: 0080204a245f ori.l      #$204a245f, d0
005818: 65000372     bcs.w      $5b8c
00581c: 2008         move.l     a0, d0
00581e: 6000036a     bra.w      $5b8a
005822: 4e550000     link.w     a5, #$0
005826: 48e76080     movem.l    d1-d2/a0, -(a7)
00582a: 204a         movea.l    a2, a0
00582c: 2440         movea.l    d0, a2
00582e: 4e40         trap       #$0
005830: 008124486000 ori.l      #$24486000, d1
005836: 0354         bchg.b     d1, (a4)
005838: 4e550000     link.w     a5, #$0
00583c: 48e76080     movem.l    d1-d2/a0, -(a7)
005840: 7000         moveq      #$0, d0
005842: 4e40         trap       #$0
005844: 000a         .dc.w      $000a
005846: 60000342     bra.w      $5b8a
00584a: 4e550000     link.w     a5, #$0
00584e: 48e76080     movem.l    d1-d2/a0, -(a7)
005852: 206d0008     movea.l    $8(a5), a0
005856: 2210         move.l     (a0), d1
005858: 2040         movea.l    d0, a0
00585a: 2017         move.l     (a7), d0
00585c: 4e40         trap       #$0
00585e: 00176500     ori.b      #$0, (a7)
005862: 032a206d     btst.l     d1, $206d(a2)
005866: 0008         .dc.w      $0008
005868: 2081         move.l     d1, (a0)
00586a: 60000328     bra.w      $5b94
00586e: 4e550000     link.w     a5, #$0
005872: 48e76080     movem.l    d1-d2/a0, -(a7)
005876: 4e40         trap       #$0
005878: 000f         .dc.w      $000f
00587a: 6000030e     bra.w      $5b8a
00587e: e188         lsl.l      #$8, d0
005880: 08c0001f     bset.b     #$1f, d0
005884: 4e550000     link.w     a5, #$0
005888: 48e76080     movem.l    d1-d2/a0, -(a7)
00588c: 4e40         trap       #$0
00588e: 000a         .dc.w      $000a
005890: 600002f8     bra.w      $5b8a
005894: 4e550000     link.w     a5, #$0
005898: 48e700c0     movem.l    a0-a1, -(a7)
00589c: 2041         movea.l    d1, a0
00589e: 2240         movea.l    d0, a1
0058a0: 222d0008     move.l     $8(a5), d1
0058a4: 4e40         trap       #$0
0058a6: 00116560     ori.b      #$60, (a1)
0058aa: 7000         moveq      #$0, d0
0058ac: 6068         bra.b      $5916
0058ae: 4e550000     link.w     a5, #$0
0058b2: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0058b6: 2040         movea.l    d0, a0
0058b8: 4e40         trap       #$0
0058ba: 00106454     ori.b      #$54, (a0)
0058be: 604a         bra.b      $590a
0058c0: 4e550000     link.w     a5, #$0
0058c4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0058c8: 2040         movea.l    d0, a0
0058ca: 2248         movea.l    a0, a1
0058cc: 1019         move.b     (a1)+, d0
0058ce: 0c00002f     cmpi.b     #$2f, d0
0058d2: 671a         beq.b      $58ee
0058d4: 0c00002e     cmpi.b     #$2e, d0
0058d8: 6622         bne.b      $58fc
0058da: 0c19002e     cmpi.b     #$2e, (a1)+
0058de: 67fa         beq.b      $58da
0058e0: 1021         move.b     -(a1), d0
0058e2: 672e         beq.b      $5912
0058e4: 0c00002f     cmpi.b     #$2f, d0
0058e8: 6612         bne.b      $58fc
0058ea: 2049         movea.l    a1, a0
0058ec: 60de         bra.b      $58cc
0058ee: 1019         move.b     (a1)+, d0
0058f0: 0c00002f     cmpi.b     #$2f, d0
0058f4: 6706         beq.b      $58fc
0058f6: 0c00002e     cmpi.b     #$2e, d0
0058fa: 67de         beq.b      $58da
0058fc: 4e40         trap       #$0
0058fe: 00106508     ori.b      #$8, (a0)
005902: 4a00         tst.b      d0
005904: 670c         beq.b      $5912
005906: 2049         movea.l    a1, a0
005908: 60c2         bra.b      $58cc
00590a: 2d41800c     move.l     d1, -$7ff4(a6)
00590e: 70ff         moveq      #$ff, d0
005910: 6004         bra.b      $5916
005912: 2009         move.l     a1, d0
005914: 9097         sub.l      (a7), d0
005916: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
00591c: 4e5d         unlk       a5
00591e: 4e75         rts        
005920: 4e550000     link.w     a5, #$0
005924: 48e76080     movem.l    d1-d2/a0, -(a7)
005928: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
00592c: 242d000c     move.l     $c(a5), d2
005930: 0802000f     btst.b     #$f, d2
005934: 6708         beq.b      $593e
005936: 262d0010     move.l     $10(a5), d3
00593a: 282d0014     move.l     $14(a5), d4
00593e: 2040         movea.l    d0, a0
005940: 2001         move.l     d1, d0
005942: 222d0008     move.l     $8(a5), d1
005946: 4e40         trap       #$0
005948: 00256502     ori.b      #$2, -(a5)
00594c: 200a         move.l     a2, d0
00594e: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
005952: 60000236     bra.w      $5b8a
005956: 4e550000     link.w     a5, #$0
00595a: 48e76080     movem.l    d1-d2/a0, -(a7)
00595e: 2040         movea.l    d0, a0
005960: 4e40         trap       #$0
005962: 001a6500     ori.b      #$0, (a2)+
005966: 02262001     andi.b     #$1, -(a6)
00596a: 6000021e     bra.w      $5b8a
00596e: 4e550000     link.w     a5, #$0
005972: 48e76080     movem.l    d1-d2/a0, -(a7)
005976: 2040         movea.l    d0, a0
005978: 4e40         trap       #$0
00597a: 001f6500     ori.b      #$0, (a7)+
00597e: 020e         .dc.w      $020e
005980: 2001         move.l     d1, d0
005982: 60000206     bra.w      $5b8a
005986: 4e550000     link.w     a5, #$0
00598a: 48e76080     movem.l    d1-d2/a0, -(a7)
00598e: 206d0008     movea.l    $8(a5), a0
005992: 4e40         trap       #$0
005994: 00186000     ori.b      #$0, (a0)+
005998: 01f24e55     bset.b     d0, $55(a2, d4.l)
00599c: 000048e7     ori.b      #$e7, d0
0059a0: 6080         bra.b      $5922
0059a2: 2040         movea.l    d0, a0
0059a4: 4e40         trap       #$0
0059a6: 00266000     ori.b      #$0, -(a6)
0059aa: 01e0         bset.b     d0, -(a0)
0059ac: 4e550000     link.w     a5, #$0
0059b0: 48e76080     movem.l    d1-d2/a0, -(a7)
0059b4: 08c1001f     bset.b     #$1f, d1
0059b8: 600c         bra.b      $59c6
0059ba: 4e550000     link.w     a5, #$0
0059be: 48e76080     movem.l    d1-d2/a0, -(a7)
0059c2: 242d0008     move.l     $8(a5), d2
0059c6: 4e40         trap       #$0
0059c8: 00276500     ori.b      #$0, -(a7)
0059cc: 01c0         bset.b     d0, d0
0059ce: 2002         move.l     d2, d0
0059d0: 600001b8     bra.w      $5b8a
0059d4: 4e550000     link.w     a5, #$0
0059d8: 48e76080     movem.l    d1-d2/a0, -(a7)
0059dc: 4e40         trap       #$0
0059de: 000b         .dc.w      $000b
0059e0: 600001a8     bra.w      $5b8a
0059e4: 4e550000     link.w     a5, #$0
0059e8: 4e40         trap       #$0
0059ea: 00524e5d     ori.w      #$4e5d, (a2)
0059ee: 4e75         rts        
0059f0: 4e550000     link.w     a5, #$0
0059f4: 48e76080     movem.l    d1-d2/a0, -(a7)
0059f8: 2f09         move.l     a1, -(a7)
0059fa: 206d0008     movea.l    $8(a5), a0
0059fe: 226d000c     movea.l    $c(a5), a1
005a02: 4e40         trap       #$0
005a04: 001b225f     ori.b      #$5f, (a3)+
005a08: 60000180     bra.w      $5b8a
005a0c: 4e550000     link.w     a5, #$0
005a10: 48e76080     movem.l    d1-d2/a0, -(a7)
005a14: 2040         movea.l    d0, a0
005a16: 3001         move.w     d1, d0
005a18: 48e70060     movem.l    a1-a2, -(a7)
005a1c: 4e40         trap       #$0
005a1e: 00006502     ori.b      #$2, d0
005a22: 200a         move.l     a2, d0
005a24: 4cdf0600     movem.l    (a7)+, a1-a2
005a28: 60000160     bra.w      $5b8a
005a2c: 4e550000     link.w     a5, #$0
005a30: 48e76080     movem.l    d1-d2/a0, -(a7)
005a34: 2040         movea.l    d0, a0
005a36: 3001         move.w     d1, d0
005a38: 48e70060     movem.l    a1-a2, -(a7)
005a3c: 4e40         trap       #$0
005a3e: 000160de     ori.b      #$de, d1
005a42: 4e550000     link.w     a5, #$0
005a46: 48e76080     movem.l    d1-d2/a0, -(a7)
005a4a: 2f0a         move.l     a2, -(a7)
005a4c: 2440         movea.l    d0, a2
005a4e: 4e40         trap       #$0
005a50: 0002245f     ori.b      #$5f, d2
005a54: 60000134     bra.w      $5b8a
005a58: 4e550000     link.w     a5, #$0
005a5c: 48e76080     movem.l    d1-d2/a0, -(a7)
005a60: 2040         movea.l    d0, a0
005a62: 3001         move.w     d1, d0
005a64: 4e40         trap       #$0
005a66: 001d6000     ori.b      #$0, (a5)+
005a6a: 0120         btst.l     d0, -(a0)
005a6c: 4e550000     link.w     a5, #$0
005a70: 48e76080     movem.l    d1-d2/a0, -(a7)
005a74: 4e40         trap       #$0
005a76: 0008         .dc.w      $0008
005a78: 60000110     bra.w      $5b8a
005a7c: 4e550000     link.w     a5, #$0
005a80: 48e76080     movem.l    d1-d2/a0, -(a7)
005a84: 2040         movea.l    d0, a0
005a86: 7000         moveq      #$0, d0
005a88: 4e40         trap       #$0
005a8a: 00046500     ori.b      #$0, d4
005a8e: 00fe         .dc.w      $00fe
005a90: 2408         move.l     a0, d2
005a92: 670000f6     beq.w      $5b8a
005a96: 4258         clr.w      (a0)+
005a98: 3081         move.w     d1, (a0)
005a9a: 600000ee     bra.w      $5b8a
005a9e: 4e550000     link.w     a5, #$0
005aa2: 48e76080     movem.l    d1-d2/a0, -(a7)
005aa6: 4e40         trap       #$0
005aa8: 000d         .dc.w      $000d
005aaa: 600000de     bra.w      $5b8a
005aae: 4e550000     link.w     a5, #$0
005ab2: 48e76080     movem.l    d1-d2/a0, -(a7)
005ab6: 48e71c40     movem.l    d3-d5/a1, -(a7)
005aba: 7a03         moveq      #$3, d5
005abc: 602e         bra.b      $5aec
005abe: 4e550000     link.w     a5, #$0
005ac2: 48e76080     movem.l    d1-d2/a0, -(a7)
005ac6: 48e71c40     movem.l    d3-d5/a1, -(a7)
005aca: 7a01         moveq      #$1, d5
005acc: 601e         bra.b      $5aec
005ace: 4e550000     link.w     a5, #$0
005ad2: 48e76080     movem.l    d1-d2/a0, -(a7)
005ad6: 48e71c40     movem.l    d3-d5/a1, -(a7)
005ada: 7a02         moveq      #$2, d5
005adc: 600e         bra.b      $5aec
005ade: 4e550000     link.w     a5, #$0
005ae2: 48e76080     movem.l    d1-d2/a0, -(a7)
005ae6: 48e71c40     movem.l    d3-d5/a1, -(a7)
005aea: 7a00         moveq      #$0, d5
005aec: 2040         movea.l    d0, a0
005aee: 2401         move.l     d1, d2
005af0: 226d0008     movea.l    $8(a5), a1
005af4: 302d0012     move.w     $12(a5), d0
005af8: 4840         swap       d0
005afa: 302d000e     move.w     $e(a5), d0
005afe: 222d0014     move.l     $14(a5), d1
005b02: 7603         moveq      #$3, d3
005b04: 08050001     btst.b     #$1, d5
005b08: 6704         beq.b      $5b0e
005b0a: 262d001c     move.l     $1c(a5), d3
005b0e: 282d0018     move.l     $18(a5), d4
005b12: 08050000     btst.b     #$0, d5
005b16: 6606         bne.b      $5b1e
005b18: 4e40         trap       #$0
005b1a: 00036004     ori.b      #$4, d3
005b1e: 4e40         trap       #$0
005b20: 00054cdf     ori.b      #$df, d5
005b24: 023860000062 andi.b     #$0, $62.w
005b2a: 4e550000     link.w     a5, #$0
005b2e: 48e76080     movem.l    d1-d2/a0, -(a7)
005b32: 4e40         trap       #$0
005b34: 000c         .dc.w      $000c
005b36: 60000052     bra.w      $5b8a
005b3a: 4e550000     link.w     a5, #$0
005b3e: 48e76080     movem.l    d1-d2/a0, -(a7)
005b42: 4e40         trap       #$0
005b44: 000c         .dc.w      $000c
005b46: 65000044     bcs.w      $5b8c
005b4a: 2001         move.l     d1, d0
005b4c: 6000003c     bra.w      $5b8a
005b50: 4e550000     link.w     a5, #$0
005b54: 48e76080     movem.l    d1-d2/a0, -(a7)
005b58: 2200         move.l     d0, d1
005b5a: 4e40         trap       #$0
005b5c: 001c6000     ori.b      #$0, (a4)+
005b60: 002a4e550000 ori.b      #$55, $0(a2)
005b66: 48e76080     movem.l    d1-d2/a0, -(a7)
005b6a: 41fa0012     lea.l      $5b7e(pc), a0
005b6e: 2d4084e0     move.l     d0, -$7b20(a6)
005b72: 6602         bne.b      $5b76
005b74: 2040         movea.l    d0, a0
005b76: 4e40         trap       #$0
005b78: 0009         .dc.w      $0009
005b7a: 6000000e     bra.w      $5b8a
005b7e: 2001         move.l     d1, d0
005b80: 206e84e0     movea.l    -$7b20(a6), a0
005b84: 4e90         jsr        (a0)
005b86: 4e40         trap       #$0
005b88: 001e640c     ori.b      #$c, (a6)+
005b8c: 2d41800c     move.l     d1, -$7ff4(a6)
005b90: 70ff         moveq      #$ff, d0
005b92: 6004         bra.b      $5b98
005b94: 65f6         bcs.b      $5b8c
005b96: 7000         moveq      #$0, d0
005b98: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
005b9e: 4e5d         unlk       a5
005ba0: 4e75         rts        
005ba2: 4e550000     link.w     a5, #$0
005ba6: 2200         move.l     d0, d1
005ba8: 6100001e     bsr.w      $5bc8
005bac: 6100f548     bsr.w      $50f6
005bb0: 6008         bra.b      $5bba
005bb2: 4e550000     link.w     a5, #$0
005bb6: 4afc         illegal    #$4afc
005bb8: 2200         move.l     d0, d1
005bba: 4e40         trap       #$0
005bbc: 0006dead     ori.b      #$ad, d6
005bc0: dead003c     add.l      $3c(a5), d7
005bc4: 00014e75     ori.b      #$75, d1
005bc8: 4e75         rts        
