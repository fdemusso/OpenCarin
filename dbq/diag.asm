00004e: 2d468010     move.l     d6, -$7ff0(a6)
000052: 2d468014     move.l     d6, -$7fec(a6)
000056: 3d438018     move.w     d3, -$7fe8(a6)
00005a: 082b00050014 btst.b     #$5, $14(a3)
000060: 670e         beq.b      $70
000062: 2d4c801a     move.l     a4, -$7fe6(a6)
000066: 6608         bne.b      $70
000068: 2d7900000000801a move.l     $0.l, -$7fe6(a6)
000070: 4a85         tst.l      d5
000072: 671e         beq.b      $92
000074: 08050000     btst.b     #$0, d5
000078: 6614         bne.b      $8e
00007a: 41f55800     lea.l      (a5, d5.l), a0
00007e: 4a68fffe     tst.w      -$2(a0)
000082: 660a         bne.b      $8e
000084: 5988         subq.l     #$4, a0
000086: 49e8fffc     lea.l      -$4(a0), a4
00008a: 7001         moveq      #$1, d0
00008c: 6026         bra.b      $b4
00008e: 423558ff     clr.b      -$1(a5, d5.l)
000092: 204d         movea.l    a5, a0
000094: d7eb000c     adda.l     $c(a3), a3
000098: 42a7         clr.l      -(a7)
00009a: 2f0b         move.l     a3, -(a7)
00009c: 7401         moveq      #$1, d2
00009e: 203c00005cec move.l     #$5cec, d0
0000a4: 4ebb0800     jsr        $a6(pc,d0.l)
0000a8: 6076         bra.b      $120
0000aa: 43e80004     lea.l      $4(a0), a1
0000ae: 2d49a0da     move.l     a1, -$5f26(a6)
0000b2: 7400         moveq      #$0, d2
0000b4: 2260         movea.l    -(a0), a1
0000b6: 2e09         move.l     a1, d7
0000b8: 670c         beq.b      $c6
0000ba: d3cd         adda.l     a5, a1
0000bc: 4229ffff     clr.b      -$1(a1)
0000c0: 2089         move.l     a1, (a0)
0000c2: 5282         addq.l     #$1, d2
0000c4: 60ee         bra.b      $b4
0000c6: 5380         subq.l     #$1, d0
0000c8: 67e0         beq.b      $aa
0000ca: 4a82         tst.l      d2
0000cc: 6610         bne.b      $de
0000ce: 4a68fffe     tst.w      -$2(a0)
0000d2: 670a         beq.b      $de
0000d4: 4228ffff     clr.b      -$1(a0)
0000d8: 2448         movea.l    a0, a2
0000da: 5888         addq.l     #$4, a0
0000dc: 6006         bra.b      $e4
0000de: 208d         move.l     a5, (a0)
0000e0: 2448         movea.l    a0, a2
0000e2: 5282         addq.l     #$1, d2
0000e4: 5282         addq.l     #$1, d2
0000e6: 4a94         tst.l      (a4)
0000e8: 6718         beq.b      $102
0000ea: 2854         movea.l    (a4), a4
0000ec: 4a1c         tst.b      (a4)+
0000ee: 66fc         bne.b      $ec
0000f0: b5cc         cmpa.l     a4, a2
0000f2: 631e         bls.b      $112
0000f4: 0c1c00fc     cmpi.b     #$fc, (a4)+
0000f8: 6618         bne.b      $112
0000fa: 528c         addq.l     #$1, a4
0000fc: 2654         movea.l    (a4), a3
0000fe: d7cd         adda.l     a5, a3
000100: 6014         bra.b      $116
000102: 0c2d00fc0002 cmpi.b     #$fc, $2(a5)
000108: 6608         bne.b      $112
00010a: 266d0004     movea.l    $4(a5), a3
00010e: d7cd         adda.l     a5, a3
000110: 6004         bra.b      $116
000112: d7eb000c     adda.l     $c(a3), a3
000116: 210b         move.l     a3, -(a0)
000118: 2f08         move.l     a0, -(a7)
00011a: 4228ffff     clr.b      -$1(a0)
00011e: 2f02         move.l     d2, -(a7)
000120: 207c00005734 movea.l    #$5734, a0
000126: 4ebb8800     jsr        $128(pc,a0.l)
00012a: 6500011c     bcs.w      $248
00012e: 6120         bsr.b      $150
000130: 4cdf0003     movem.l    (a7)+, d0-d1
000134: 9bcd         suba.l     a5, a5
000136: 2f2ea0da     move.l     -$5f26(a6), -(a7)
00013a: 207c0000182a movea.l    #$182a, a0
000140: 4ebb8800     jsr        $142(pc,a0.l)
000144: 7000         moveq      #$0, d0
000146: 207c00006216 movea.l    #$6216, a0
00014c: 4ebb8800     jsr        $14e(pc,a0.l)
000150: 207cffffa98a movea.l    #$ffffa98a, a0
000156: d1ce         adda.l     a6, a0
000158: 2d488004     move.l     a0, -$7ffc(a6)
00015c: 2d4f8000     move.l     a7, -$8000(a6)
000160: 2d4f8008     move.l     a7, -$7ff8(a6)
000164: 203cffffff04 move.l     #$ffffff04, d0
00016a: d08f         add.l      a7, d0
00016c: b0ae8008     cmp.l      -$7ff8(a6), d0
000170: 6502         bcs.b      $174
000172: 4e75         rts        
000174: b0ae8004     cmp.l      -$7ffc(a6), d0
000178: 6506         bcs.b      $180
00017a: 2d408008     move.l     d0, -$7ff8(a6)
00017e: 4e75         rts        
000180: 41fa0070     lea.l      $1f2(pc), a0
000184: 6110         bsr.b      $196
000186: 2f3c00000101 move.l     #$101, -(a7)
00018c: 207c000061e6 movea.l    #$61e6, a0
000192: 4ebb8800     jsr        $194(pc,a0.l)
000196: 3f01         move.w     d1, -(a7)
000198: 7264         moveq      #$64, d1
00019a: 7002         moveq      #$2, d0
00019c: 4e40         trap       #$0
00019e: 008c         .dc.w      $008c
0001a0: 321f         move.w     (a7)+, d1
0001a2: 4e75         rts        
0001a4: 202e8000     move.l     -$8000(a6), d0
0001a8: 90ae8008     sub.l      -$7ff8(a6), d0
0001ac: 4e75         rts        
0001ae: 202e8008     move.l     -$7ff8(a6), d0
0001b2: 90ae8004     sub.l      -$7ffc(a6), d0
0001b6: 4e75         rts        
0001b8: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
0001bc: 302f001e     move.w     $1e(a7), d0
0001c0: 04400080     subi.w     #$80, d0
0001c4: e440         asr.w      #$2, d0
0001c6: 0c40000f     cmpi.w     #$f, d0
0001ca: 660c         bne.b      $1d8
0001cc: 41fa006b     lea.l      $239(pc), a0
0001d0: 7200         moveq      #$0, d1
0001d2: 4e40         trap       #$0
0001d4: 0021640c     ori.b      #$c, -(a1)
0001d8: 227c000061a4 movea.l    #$61a4, a1
0001de: 4ebb9800     jsr        $1e0(pc,a1.l)
0001e2: 6564         bcs.b      $248
0001e4: 4cdf0f03     movem.l    (a7)+, d0-d1/a0-a3
0001e8: 508f         addq.l     #$8, a7
0001ea: 5997         subq.l     #$4, (a7)
0001ec: 4e75         rts        
0001ee: 4afb         .dc.w      $4afb
0001f0: 00502a2a     ori.w      #$2a2a, (a0)
0001f4: 2a2a2053     move.l     $2053(a2), d5
0001f8: 7461         moveq      #$61, d2
0001fa: 636b         bls.b      $267
0001fc: 204f         movea.l    a7, a0
0001fe: 7665         moveq      #$65, d3
000200: 7266         moveq      #$66, d1
000202: 6c6f         bge.b      $273
000204: 7720         .dc.w      $7720
000206: 2a2a2a2a     move.l     $2a2a(a2), d5
00020a: 0d00         btst.l     d6, d0
00020c: 2a2a2a2a     move.l     $2a2a(a2), d5
000210: 2043         movea.l    d3, a0
000212: 616e         bsr.b      $282
000214: 277420696e73 move.l     $69(a4, d2.w), $6e73(a3)
00021a: 7461         moveq      #$61, d2
00021c: 6c6c         bge.b      $28a
00021e: 20747261     movea.l    $61(a4, d7.w), a0
000222: 7020         moveq      #$20, d0
000224: 6861         bvc.b      $287
000226: 6e64         bgt.b      $28c
000228: 6c65         bge.b      $28f
00022a: 7220         moveq      #$20, d1
00022c: 2a2a2a2a     move.l     $2a2a(a2), d5
000230: 0d00         btst.l     d6, d0
000232: 202a2a2a     move.l     $2a2a(a2), d0
000236: 2a20         move.l     -(a0), d5
000238: 006d61746800 ori.w      #$6174, $6800(a5)
00023e: 00000000     ori.b      #$0, d0
000242: 223c00000040 move.l     #$40, d1
000248: 2f08         move.l     a0, -(a7)
00024a: 41faffc0     lea.l      $20c(pc), a0
00024e: 6100ff46     bsr.w      $196
000252: 227cffff9d52 movea.l    #$ffff9d52, a1
000258: d3ce         adda.l     a6, a1
00025a: 41faffd6     lea.l      $232(pc), a0
00025e: 6128         bsr.b      $288
000260: 205f         movea.l    (a7)+, a0
000262: 5389         subq.l     #$1, a1
000264: 6122         bsr.b      $288
000266: 41faffca     lea.l      $232(pc), a0
00026a: 5389         subq.l     #$1, a1
00026c: 611a         bsr.b      $288
00026e: 137c000dffff move.b     #$d, -$1(a1)
000274: 207cffff9d52 movea.l    #$ffff9d52, a0
00027a: d1ce         adda.l     a6, a0
00027c: 6100ff18     bsr.w      $196
000280: 4e40         trap       #$0
000282: 00064e40     ori.b      #$40, d6
000286: 000612d8     ori.b      #$d8, d6
00028a: 66fc         bne.b      $288
00028c: 4e75         rts        
00028e: 4e550000     link.w     a5, #$0
000292: 48e78080     movem.l    d0/a0, -(a7)
000296: 0c9700002000 cmpi.l     #$2000, (a7)
00029c: 6d000054     blt.w      $2f2
0002a0: 0c9700002100 cmpi.l     #$2100, (a7)
0002a6: 6c00004a     bge.w      $2f2
0002aa: 202ea0de     move.l     -$5f22(a6), d0
0002ae: 52aea0de     addq.l     #$1, -$5f22(a6)
0002b2: 41ee801e     lea.l      -$7fe2(a6), a0
0002b6: 31af00020a00 move.w     $2(a7), (a0, d0.l * 2)
0002bc: 7064         moveq      #$64, d0
0002be: b0aea0de     cmp.l      -$5f22(a6), d0
0002c2: 6e000006     bgt.w      $2ca
0002c6: 42aea0de     clr.l      -$5f22(a6)
0002ca: 202ea0de     move.l     -$5f22(a6), d0
0002ce: b0aea0e2     cmp.l      -$5f1e(a6), d0
0002d2: 6600001a     bne.w      $2ee
0002d6: 4aaea4e8     tst.l      -$5b18(a6)
0002da: 6d000012     blt.w      $2ee
0002de: 7000         moveq      #$0, d0
0002e0: 61002e3e     bsr.w      $3120
0002e4: 41fa1e20     lea.l      $2106(pc), a0
0002e8: 2008         move.l     a0, d0
0002ea: 61005642     bsr.w      $592e
0002ee: 6000003a     bra.w      $32a
0002f2: 0c9700002410 cmpi.l     #$2410, (a7)
0002f8: 6600000c     bne.w      $306
0002fc: 7001         moveq      #$1, d0
0002fe: 2d409cee     move.l     d0, -$6312(a6)
000302: 60000026     bra.w      $32a
000306: 7002         moveq      #$2, d0
000308: b097         cmp.l      (a7), d0
00030a: 6700000a     beq.w      $316
00030e: 7003         moveq      #$3, d0
000310: b097         cmp.l      (a7), d0
000312: 6600000c     bne.w      $320
000316: 203c000000e4 move.l     #$e4, d0
00031c: 61006046     bsr.w      $6364
000320: 203c000000e9 move.l     #$e9, d0
000326: 6100603c     bsr.w      $6364
00032a: 4ced0100fffc movem.l    -$4(a5), a0
000330: 4e5d         unlk       a5
000332: 4e75         rts        
000334: 4e550000     link.w     a5, #$0
000338: 48e78080     movem.l    d0/a0, -(a7)
00033c: 558f         subq.l     #$2, a7
00033e: 3ebcffff     move.w     #$ffff, (a7)
000342: 7001         moveq      #$1, d0
000344: 61005fe6     bsr.w      $632c
000348: 202ea0de     move.l     -$5f22(a6), d0
00034c: b0aea0e2     cmp.l      -$5f1e(a6), d0
000350: 67000020     beq.w      $372
000354: 202ea0e2     move.l     -$5f1e(a6), d0
000358: 52aea0e2     addq.l     #$1, -$5f1e(a6)
00035c: 41ee801e     lea.l      -$7fe2(a6), a0
000360: 3eb00a00     move.w     (a0, d0.l * 2), (a7)
000364: 7064         moveq      #$64, d0
000366: b0aea0e2     cmp.l      -$5f1e(a6), d0
00036a: 6e000006     bgt.w      $372
00036e: 42aea0e2     clr.l      -$5f1e(a6)
000372: 7000         moveq      #$0, d0
000374: 61005fb6     bsr.w      $632c
000378: 3017         move.w     (a7), d0
00037a: 548f         addq.l     #$2, a7
00037c: 60000004     bra.w      $382
000380: 4e71         nop        
000382: 4ced0100fffc movem.l    -$4(a5), a0
000388: 4e5d         unlk       a5
00038a: 4e75         rts        
00038c: 4e550000     link.w     a5, #$0
000390: 48e78000     movem.l    d0, -(a7)
000394: 60000008     bra.w      $39e
000398: 7000         moveq      #$0, d0
00039a: 61005c84     bsr.w      $6020
00039e: 7001         moveq      #$1, d0
0003a0: 61005f8a     bsr.w      $632c
0003a4: 202ea0de     move.l     -$5f22(a6), d0
0003a8: b0aea0e2     cmp.l      -$5f1e(a6), d0
0003ac: 6700ffea     beq.w      $398
0003b0: 7000         moveq      #$0, d0
0003b2: 61005f78     bsr.w      $632c
0003b6: 4e5d         unlk       a5
0003b8: 4e75         rts        
0003ba: 4e550000     link.w     a5, #$0
0003be: 48e7cfa0     movem.l    d0-d1/d4-d7/a0/a2, -(a7)
0003c2: 2800         move.l     d0, d4
0003c4: 518f         subq.l     #$8, a7
0003c6: 7a01         moveq      #$1, d5
0003c8: 7c00         moveq      #$0, d6
0003ca: 7e01         moveq      #$1, d7
0003cc: 42af0004     clr.l      $4(a7)
0003d0: 7001         moveq      #$1, d0
0003d2: 2e80         move.l     d0, (a7)
0003d4: 7002         moveq      #$2, d0
0003d6: b0aea4e8     cmp.l      -$5b18(a6), d0
0003da: 6e000020     bgt.w      $3fc
0003de: 7002         moveq      #$2, d0
0003e0: 61002d3e     bsr.w      $3120
0003e4: 7000         moveq      #$0, d0
0003e6: 3004         move.w     d4, d0
0003e8: 2f00         move.l     d0, -(a7)
0003ea: 7000         moveq      #$0, d0
0003ec: 3004         move.w     d4, d0
0003ee: 2200         move.l     d0, d1
0003f0: 41fa1d2c     lea.l      $211e(pc), a0
0003f4: 2008         move.l     a0, d0
0003f6: 61005536     bsr.w      $592e
0003fa: 588f         addq.l     #$4, a7
0003fc: 45eea0e6     lea.l      -$5f1a(a6), a2
000400: 60000058     bra.w      $45a
000404: b852         cmp.w      (a2), d4
000406: 6600004a     bne.w      $452
00040a: 7a00         moveq      #$0, d5
00040c: 4aaa0002     tst.l      $2(a2)
000410: 67000012     beq.w      $424
000414: 202f000c     move.l     $c(a7), d0
000418: 206a0002     movea.l    $2(a2), a0
00041c: 4e90         jsr        (a0)
00041e: 2f400004     move.l     d0, $4(a7)
000422: 7c01         moveq      #$1, d6
000424: 202f0004     move.l     $4(a7), d0
000428: b0aa0006     cmp.l      $6(a2), d0
00042c: 67000008     beq.w      $436
000430: 4a86         tst.l      d6
000432: 6600001a     bne.w      $44e
000436: 7001         moveq      #$1, d0
000438: b0aa000a     cmp.l      $a(a2), d0
00043c: 67000008     beq.w      $446
000440: 7001         moveq      #$1, d0
000442: 60000004     bra.w      $448
000446: 7000         moveq      #$0, d0
000448: 2e00         move.l     d0, d7
00044a: 2eaa000a     move.l     $a(a2), (a7)
00044e: 60000004     bra.w      $454
000452: 2e05         move.l     d5, d7
000454: d5fc0000000e adda.l     #$e, a2
00045a: 4a52         tst.w      (a2)
00045c: 67000008     beq.w      $466
000460: 4a87         tst.l      d7
000462: 6600ffa0     bne.w      $404
000466: 4a85         tst.l      d5
000468: 67000028     beq.w      $492
00046c: 4aaea4e8     tst.l      -$5b18(a6)
000470: 6d000020     blt.w      $492
000474: 7000         moveq      #$0, d0
000476: 61002ca8     bsr.w      $3120
00047a: 7000         moveq      #$0, d0
00047c: 3004         move.w     d4, d0
00047e: 2f00         move.l     d0, -(a7)
000480: 7000         moveq      #$0, d0
000482: 3004         move.w     d4, d0
000484: 2200         move.l     d0, d1
000486: 41fa1cab     lea.l      $2133(pc), a0
00048a: 2008         move.l     a0, d0
00048c: 610054a0     bsr.w      $592e
000490: 588f         addq.l     #$4, a7
000492: 2017         move.l     (a7), d0
000494: 508f         addq.l     #$8, a7
000496: 60000004     bra.w      $49c
00049a: 4e71         nop        
00049c: 4ced05f0ffe8 movem.l    -$18(a5), d4-d7/a0/a2
0004a2: 4e5d         unlk       a5
0004a4: 4e75         rts        
0004a6: 4e550000     link.w     a5, #$0
0004aa: 48e7cfa0     movem.l    d0-d1/d4-d7/a0/a2, -(a7)
0004ae: 2800         move.l     d0, d4
0004b0: 518f         subq.l     #$8, a7
0004b2: 7a01         moveq      #$1, d5
0004b4: 7c01         moveq      #$1, d6
0004b6: 7001         moveq      #$1, d0
0004b8: 2f400004     move.l     d0, $4(a7)
0004bc: 2eaf000c     move.l     $c(a7), (a7)
0004c0: 45eea1b8     lea.l      -$5e48(a6), a2
0004c4: 60000060     bra.w      $526
0004c8: b892         cmp.l      (a2), d4
0004ca: 66000052     bne.w      $51e
0004ce: 7c00         moveq      #$0, d6
0004d0: 4aaa0004     tst.l      $4(a2)
0004d4: 6700000e     beq.w      $4e4
0004d8: 206a0004     movea.l    $4(a2), a0
0004dc: 4e90         jsr        (a0)
0004de: 2e00         move.l     d0, d7
0004e0: 42af0004     clr.l      $4(a7)
0004e4: 4aaf0004     tst.l      $4(a7)
0004e8: 6600000a     bne.w      $4f4
0004ec: beaa0008     cmp.l      $8(a2), d7
0004f0: 66000028     bne.w      $51a
0004f4: 4aaa000c     tst.l      $c(a2)
0004f8: 67000012     beq.w      $50c
0004fc: 222a0010     move.l     $10(a2), d1
000500: 41ee80ea     lea.l      -$7f16(a6), a0
000504: 2008         move.l     a0, d0
000506: 206a000c     movea.l    $c(a2), a0
00050a: 4e90         jsr        (a0)
00050c: 7008         moveq      #$8, d0
00050e: b0aa0014     cmp.l      $14(a2), d0
000512: 67000006     beq.w      $51a
000516: 2eaa0014     move.l     $14(a2), (a7)
00051a: 60000004     bra.w      $520
00051e: 2a06         move.l     d6, d5
000520: d5fc00000018 adda.l     #$18, a2
000526: 4a92         tst.l      (a2)
000528: 67000008     beq.w      $532
00052c: 4a85         tst.l      d5
00052e: 6600ff98     bne.w      $4c8
000532: 4a86         tst.l      d6
000534: 67000022     beq.w      $558
000538: 4aaea4e8     tst.l      -$5b18(a6)
00053c: 6d00001a     blt.w      $558
000540: 7000         moveq      #$0, d0
000542: 61002bdc     bsr.w      $3120
000546: 2004         move.l     d4, d0
000548: 61002594     bsr.w      $2ade
00054c: 2200         move.l     d0, d1
00054e: 41fa1c02     lea.l      $2152(pc), a0
000552: 2008         move.l     a0, d0
000554: 610053d8     bsr.w      $592e
000558: 2017         move.l     (a7), d0
00055a: b0af000c     cmp.l      $c(a7), d0
00055e: 6700002e     beq.w      $58e
000562: 7002         moveq      #$2, d0
000564: b0aea4e8     cmp.l      -$5b18(a6), d0
000568: 6e000024     bgt.w      $58e
00056c: 7002         moveq      #$2, d0
00056e: 61002bb0     bsr.w      $3120
000572: 2017         move.l     (a7), d0
000574: 41eea4c0     lea.l      -$5b40(a6), a0
000578: 2f300c00     move.l     (a0, d0.l * 4), -(a7)
00057c: 41fa1be9     lea.l      $2167(pc), a0
000580: 2208         move.l     a0, d1
000582: 41fa1bef     lea.l      $2173(pc), a0
000586: 2008         move.l     a0, d0
000588: 610053a4     bsr.w      $592e
00058c: 588f         addq.l     #$4, a7
00058e: 2017         move.l     (a7), d0
000590: 508f         addq.l     #$8, a7
000592: 60000004     bra.w      $598
000596: 4e71         nop        
000598: 4ced05f0ffe8 movem.l    -$18(a5), d4-d7/a0/a2
00059e: 4e5d         unlk       a5
0005a0: 4e75         rts        
0005a2: 4e550000     link.w     a5, #$0
0005a6: 48e7c000     movem.l    d0-d1, -(a7)
0005aa: 3d7c000180ee move.w     #$1, -$7f12(a6)
0005b0: 486e80f2     pea.l      -$7f0e(a6)
0005b4: 222e9ce2     move.l     -$631e(a6), d1
0005b8: 203c00007f0e move.l     #$7f0e, d0
0005be: 61003ea4     bsr.w      $4464
0005c2: 588f         addq.l     #$4, a7
0005c4: 72ff         moveq      #$ff, d1
0005c6: b280         cmp.l      d0, d1
0005c8: 67000028     beq.w      $5f2
0005cc: 486e810b     pea.l      -$7ef5(a6)
0005d0: 222e9ce2     move.l     -$631e(a6), d1
0005d4: 203c00007f23 move.l     #$7f23, d0
0005da: 61003e88     bsr.w      $4464
0005de: 588f         addq.l     #$4, a7
0005e0: 72ff         moveq      #$ff, d1
0005e2: b280         cmp.l      d0, d1
0005e4: 6700000c     beq.w      $5f2
0005e8: 7000         moveq      #$0, d0
0005ea: 6000000c     bra.w      $5f8
0005ee: 60000008     bra.w      $5f8
0005f2: 7001         moveq      #$1, d0
0005f4: 60000002     bra.w      $5f8
0005f8: 4ced0002fffc movem.l    -$4(a5), d1
0005fe: 4e5d         unlk       a5
000600: 4e75         rts        
000602: 4e550000     link.w     a5, #$0
000606: 48e7c000     movem.l    d0-d1, -(a7)
00060a: 3d7c000280ee move.w     #$2, -$7f12(a6)
000610: 42a7         clr.l      -(a7)
000612: 222e9ce2     move.l     -$631e(a6), d1
000616: 203c00007f24 move.l     #$7f24, d0
00061c: 61003e8e     bsr.w      $44ac
000620: 588f         addq.l     #$4, a7
000622: 4a80         tst.l      d0
000624: 6c000008     bge.w      $62e
000628: 7001         moveq      #$1, d0
00062a: 6000000a     bra.w      $636
00062e: 7000         moveq      #$0, d0
000630: 60000004     bra.w      $636
000634: 4e71         nop        
000636: 4ced0002fffc movem.l    -$4(a5), d1
00063c: 4e5d         unlk       a5
00063e: 4e75         rts        
000640: 4e550000     link.w     a5, #$0
000644: 48e7c000     movem.l    d0-d1, -(a7)
000648: 3d7c000380ee move.w     #$3, -$7f12(a6)
00064e: 486e80f2     pea.l      -$7f0e(a6)
000652: 222e9ce2     move.l     -$631e(a6), d1
000656: 203c00007f25 move.l     #$7f25, d0
00065c: 61003e06     bsr.w      $4464
000660: 588f         addq.l     #$4, a7
000662: 72ff         moveq      #$ff, d1
000664: b280         cmp.l      d0, d1
000666: 67000060     beq.w      $6c8
00066a: 486e810c     pea.l      -$7ef4(a6)
00066e: 222e9ce2     move.l     -$631e(a6), d1
000672: 203c00007f26 move.l     #$7f26, d0
000678: 61003dea     bsr.w      $4464
00067c: 588f         addq.l     #$4, a7
00067e: 72ff         moveq      #$ff, d1
000680: b280         cmp.l      d0, d1
000682: 67000044     beq.w      $6c8
000686: 486e81b2     pea.l      -$7e4e(a6)
00068a: 222e9ce2     move.l     -$631e(a6), d1
00068e: 203c00007f27 move.l     #$7f27, d0
000694: 61003dce     bsr.w      $4464
000698: 588f         addq.l     #$4, a7
00069a: 72ff         moveq      #$ff, d1
00069c: b280         cmp.l      d0, d1
00069e: 67000028     beq.w      $6c8
0006a2: 486e81b6     pea.l      -$7e4a(a6)
0006a6: 222e9ce2     move.l     -$631e(a6), d1
0006aa: 203c00007f28 move.l     #$7f28, d0
0006b0: 61003db2     bsr.w      $4464
0006b4: 588f         addq.l     #$4, a7
0006b6: 72ff         moveq      #$ff, d1
0006b8: b280         cmp.l      d0, d1
0006ba: 6700000c     beq.w      $6c8
0006be: 7000         moveq      #$0, d0
0006c0: 6000000c     bra.w      $6ce
0006c4: 60000008     bra.w      $6ce
0006c8: 7001         moveq      #$1, d0
0006ca: 60000002     bra.w      $6ce
0006ce: 4ced0002fffc movem.l    -$4(a5), d1
0006d4: 4e5d         unlk       a5
0006d6: 4e75         rts        
0006d8: 4e550000     link.w     a5, #$0
0006dc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0006e0: 3d7c000480ee move.w     #$4, -$7f12(a6)
0006e6: 206e80e6     movea.l    -$7f1a(a6), a0
0006ea: 48680006     pea.l      $6(a0)
0006ee: 222e9ce2     move.l     -$631e(a6), d1
0006f2: 203c00007f26 move.l     #$7f26, d0
0006f8: 61003db2     bsr.w      $44ac
0006fc: 588f         addq.l     #$4, a7
0006fe: 4a80         tst.l      d0
000700: 6c000026     bge.w      $728
000704: 4aaea4e8     tst.l      -$5b18(a6)
000708: 6d000012     blt.w      $71c
00070c: 7000         moveq      #$0, d0
00070e: 61002a10     bsr.w      $3120
000712: 41fa1a66     lea.l      $217a(pc), a0
000716: 2008         move.l     a0, d0
000718: 61005214     bsr.w      $592e
00071c: 7077         moveq      #$77, d0
00071e: 61000e1a     bsr.w      $153a
000722: 7001         moveq      #$1, d0
000724: 60000024     bra.w      $74a
000728: 7002         moveq      #$2, d0
00072a: b0aea4e8     cmp.l      -$5b18(a6), d0
00072e: 6e000012     bgt.w      $742
000732: 7002         moveq      #$2, d0
000734: 610029ea     bsr.w      $3120
000738: 41fa1a64     lea.l      $219e(pc), a0
00073c: 2008         move.l     a0, d0
00073e: 610051ee     bsr.w      $592e
000742: 7000         moveq      #$0, d0
000744: 60000004     bra.w      $74a
000748: 4e71         nop        
00074a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000750: 4e5d         unlk       a5
000752: 4e75         rts        
000754: 4e550000     link.w     a5, #$0
000758: 48e7c000     movem.l    d0-d1, -(a7)
00075c: 3d7c000580ee move.w     #$5, -$7f12(a6)
000762: 486e80f2     pea.l      -$7f0e(a6)
000766: 222e9ce2     move.l     -$631e(a6), d1
00076a: 203c00007f2a move.l     #$7f2a, d0
000770: 61003cf2     bsr.w      $4464
000774: 588f         addq.l     #$4, a7
000776: 72ff         moveq      #$ff, d1
000778: b280         cmp.l      d0, d1
00077a: 6700000c     beq.w      $788
00077e: 7000         moveq      #$0, d0
000780: 6000000c     bra.w      $78e
000784: 60000008     bra.w      $78e
000788: 7001         moveq      #$1, d0
00078a: 60000002     bra.w      $78e
00078e: 4ced0002fffc movem.l    -$4(a5), d1
000794: 4e5d         unlk       a5
000796: 4e75         rts        
000798: 4e550000     link.w     a5, #$0
00079c: 48e7c080     movem.l    d0-d1/a0, -(a7)
0007a0: 3d7c000680ee move.w     #$6, -$7f12(a6)
0007a6: 206e80e6     movea.l    -$7f1a(a6), a0
0007aa: 48680006     pea.l      $6(a0)
0007ae: 222e9ce2     move.l     -$631e(a6), d1
0007b2: 203c00007f2a move.l     #$7f2a, d0
0007b8: 61003cf2     bsr.w      $44ac
0007bc: 588f         addq.l     #$4, a7
0007be: 4a80         tst.l      d0
0007c0: 6c000026     bge.w      $7e8
0007c4: 4aaea4e8     tst.l      -$5b18(a6)
0007c8: 6d000012     blt.w      $7dc
0007cc: 7000         moveq      #$0, d0
0007ce: 61002950     bsr.w      $3120
0007d2: 41fa19e5     lea.l      $21b9(pc), a0
0007d6: 2008         move.l     a0, d0
0007d8: 61005154     bsr.w      $592e
0007dc: 7077         moveq      #$77, d0
0007de: 61000d5a     bsr.w      $153a
0007e2: 7001         moveq      #$1, d0
0007e4: 60000024     bra.w      $80a
0007e8: 7002         moveq      #$2, d0
0007ea: b0aea4e8     cmp.l      -$5b18(a6), d0
0007ee: 6e000012     bgt.w      $802
0007f2: 7002         moveq      #$2, d0
0007f4: 6100292a     bsr.w      $3120
0007f8: 41fa19e2     lea.l      $21dc(pc), a0
0007fc: 2008         move.l     a0, d0
0007fe: 6100512e     bsr.w      $592e
000802: 7000         moveq      #$0, d0
000804: 60000004     bra.w      $80a
000808: 4e71         nop        
00080a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000810: 4e5d         unlk       a5
000812: 4e75         rts        
000814: 4e550000     link.w     a5, #$0
000818: 48e7c080     movem.l    d0-d1/a0, -(a7)
00081c: 4fefff2a     lea.l      -$d6(a7), a7
000820: 3d7c000780ee move.w     #$7, -$7f12(a6)
000826: 486f0030     pea.l      $30(a7)
00082a: 222e9ce2     move.l     -$631e(a6), d1
00082e: 203c00007f26 move.l     #$7f26, d0
000834: 61003c2e     bsr.w      $4464
000838: 588f         addq.l     #$4, a7
00083a: 72ff         moveq      #$ff, d1
00083c: b280         cmp.l      d0, d1
00083e: 66000024     bne.w      $864
000842: 4aaea4e8     tst.l      -$5b18(a6)
000846: 6d000012     blt.w      $85a
00084a: 7000         moveq      #$0, d0
00084c: 610028d2     bsr.w      $3120
000850: 41fa19a4     lea.l      $21f6(pc), a0
000854: 2008         move.l     a0, d0
000856: 610050d6     bsr.w      $592e
00085a: 7001         moveq      #$1, d0
00085c: 4fef00d6     lea.l      $d6(a7), a7
000860: 60000220     bra.w      $a82
000864: 0c2f00300031 cmpi.b     #$30, $31(a7)
00086a: 66000010     bne.w      $87c
00086e: 426e80f2     clr.w      -$7f0e(a6)
000872: 7000         moveq      #$0, d0
000874: 4fef00d6     lea.l      $d6(a7), a7
000878: 60000208     bra.w      $a82
00087c: 60000040     bra.w      $8be
000880: 41fa1997     lea.l      $2219(pc), a0
000884: 2f480010     move.l     a0, $10(a7)
000888: 6000004e     bra.w      $8d8
00088c: 41fa198e     lea.l      $221c(pc), a0
000890: 2f480010     move.l     a0, $10(a7)
000894: 60000042     bra.w      $8d8
000898: 4aaea4e8     tst.l      -$5b18(a6)
00089c: 6d000012     blt.w      $8b0
0008a0: 7000         moveq      #$0, d0
0008a2: 6100287c     bsr.w      $3120
0008a6: 41fa1977     lea.l      $221f(pc), a0
0008aa: 2008         move.l     a0, d0
0008ac: 61005080     bsr.w      $592e
0008b0: 7001         moveq      #$1, d0
0008b2: 4fef00d6     lea.l      $d6(a7), a7
0008b6: 600001ca     bra.w      $a82
0008ba: 6000001c     bra.w      $8d8
0008be: 102f0031     move.b     $31(a7), d0
0008c2: 4880         ext.w      d0
0008c4: 0c40004d     cmpi.w     #$4d, d0
0008c8: 6700ffb6     beq.w      $880
0008cc: 0c400054     cmpi.w     #$54, d0
0008d0: 6700ffba     beq.w      $88c
0008d4: 6000ffc2     bra.w      $898
0008d8: 4aae9cf2     tst.l      -$630e(a6)
0008dc: 6600003e     bne.w      $91c
0008e0: 42a7         clr.l      -(a7)
0008e2: 222e9ce6     move.l     -$631a(a6), d1
0008e6: 203c00007f43 move.l     #$7f43, d0
0008ec: 61003bbe     bsr.w      $44ac
0008f0: 588f         addq.l     #$4, a7
0008f2: 72ff         moveq      #$ff, d1
0008f4: b280         cmp.l      d0, d1
0008f6: 66000024     bne.w      $91c
0008fa: 4aaea4e8     tst.l      -$5b18(a6)
0008fe: 6d000012     blt.w      $912
000902: 7000         moveq      #$0, d0
000904: 6100281a     bsr.w      $3120
000908: 41fa1934     lea.l      $223e(pc), a0
00090c: 2008         move.l     a0, d0
00090e: 6100501e     bsr.w      $592e
000912: 7001         moveq      #$1, d0
000914: 4fef00d6     lea.l      $d6(a7), a7
000918: 60000168     bra.w      $a82
00091c: 41fa1949     lea.l      $2267(pc), a0
000920: 2f480008     move.l     a0, $8(a7)
000924: 41fa1948     lea.l      $226e(pc), a0
000928: 2f48000c     move.l     a0, $c(a7)
00092c: 42af0014     clr.l      $14(a7)
000930: 42a7         clr.l      -(a7)
000932: 48780003     pea.l      $3.w
000936: 42a7         clr.l      -(a7)
000938: 42a7         clr.l      -(a7)
00093a: 2f2ea0da     move.l     -$5f26(a6), -(a7)
00093e: 486f001c     pea.l      $1c(a7)
000942: 222f0020     move.l     $20(a7), d1
000946: 41fb017000005928 lea.l      $5928(a16, invalid.w), a0
00094e: 2008         move.l     a0, d0
000950: 6100464c     bsr.w      $4f9e
000954: 4fef0018     lea.l      $18(a7), a7
000958: 2f400004     move.l     d0, $4(a7)
00095c: 70ff         moveq      #$ff, d0
00095e: b0af0004     cmp.l      $4(a7), d0
000962: 66000028     bne.w      $98c
000966: 4aaea4e8     tst.l      -$5b18(a6)
00096a: 6d000016     blt.w      $982
00096e: 7000         moveq      #$0, d0
000970: 610027ae     bsr.w      $3120
000974: 222f0008     move.l     $8(a7), d1
000978: 41fa18f7     lea.l      $2271(pc), a0
00097c: 2008         move.l     a0, d0
00097e: 61004fae     bsr.w      $592e
000982: 7001         moveq      #$1, d0
000984: 4fef00d6     lea.l      $d6(a7), a7
000988: 600000f8     bra.w      $a82
00098c: 60000058     bra.w      $9e6
000990: 4aae9cee     tst.l      -$6312(a6)
000994: 67000050     beq.w      $9e6
000998: 4aaea4e8     tst.l      -$5b18(a6)
00099c: 6d000012     blt.w      $9b0
0009a0: 7000         moveq      #$0, d0
0009a2: 6100277c     bsr.w      $3120
0009a6: 41fa18e0     lea.l      $2288(pc), a0
0009aa: 2008         move.l     a0, d0
0009ac: 61004f80     bsr.w      $592e
0009b0: 42ae9cee     clr.l      -$6312(a6)
0009b4: 7200         moveq      #$0, d1
0009b6: 202f0004     move.l     $4(a7), d0
0009ba: 610043ce     bsr.w      $4d8a
0009be: 7002         moveq      #$2, d0
0009c0: b0aea4e8     cmp.l      -$5b18(a6), d0
0009c4: 6e000016     bgt.w      $9dc
0009c8: 7002         moveq      #$2, d0
0009ca: 61002754     bsr.w      $3120
0009ce: 222f0004     move.l     $4(a7), d1
0009d2: 41fa18d6     lea.l      $22aa(pc), a0
0009d6: 2008         move.l     a0, d0
0009d8: 61004f54     bsr.w      $592e
0009dc: 7001         moveq      #$1, d0
0009de: 4fef00d6     lea.l      $d6(a7), a7
0009e2: 6000009e     bra.w      $a82
0009e6: 7000         moveq      #$0, d0
0009e8: 61005834     bsr.w      $621e
0009ec: 4a80         tst.l      d0
0009ee: 6700ffa0     beq.w      $990
0009f2: 4878000a     pea.l      $a.w
0009f6: 41ee80f2     lea.l      -$7f0e(a6), a0
0009fa: 2208         move.l     a0, d1
0009fc: 202e9cea     move.l     -$6316(a6), d0
000a00: 61004f88     bsr.w      $598a
000a04: 588f         addq.l     #$4, a7
000a06: 2e80         move.l     d0, (a7)
000a08: 42a7         clr.l      -(a7)
000a0a: 222e9ce6     move.l     -$631a(a6), d1
000a0e: 203c00007f44 move.l     #$7f44, d0
000a14: 61003a96     bsr.w      $44ac
000a18: 588f         addq.l     #$4, a7
000a1a: 72ff         moveq      #$ff, d1
000a1c: b280         cmp.l      d0, d1
000a1e: 66000024     bne.w      $a44
000a22: 4aaea4e8     tst.l      -$5b18(a6)
000a26: 6d000012     blt.w      $a3a
000a2a: 7000         moveq      #$0, d0
000a2c: 610026f2     bsr.w      $3120
000a30: 41fa188d     lea.l      $22bf(pc), a0
000a34: 2008         move.l     a0, d0
000a36: 61004ef6     bsr.w      $592e
000a3a: 7001         moveq      #$1, d0
000a3c: 4fef00d6     lea.l      $d6(a7), a7
000a40: 60000040     bra.w      $a82
000a44: 0c6e000180f2 cmpi.w     #$1, -$7f0e(a6)
000a4a: 6700000c     beq.w      $a58
000a4e: 0c6e000280f2 cmpi.w     #$2, -$7f0e(a6)
000a54: 66000008     bne.w      $a5e
000a58: 7064         moveq      #$64, d0
000a5a: 61000ade     bsr.w      $153a
000a5e: 700a         moveq      #$a, d0
000a60: b097         cmp.l      (a7), d0
000a62: 66000010     bne.w      $a74
000a66: 7000         moveq      #$0, d0
000a68: 4fef00d6     lea.l      $d6(a7), a7
000a6c: 60000014     bra.w      $a82
000a70: 6000000c     bra.w      $a7e
000a74: 7001         moveq      #$1, d0
000a76: 4fef00d6     lea.l      $d6(a7), a7
000a7a: 60000006     bra.w      $a82
000a7e: 4fef00d6     lea.l      $d6(a7), a7
000a82: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000a88: 4e5d         unlk       a5
000a8a: 4e75         rts        
000a8c: 4e550000     link.w     a5, #$0
000a90: 48e7c080     movem.l    d0-d1/a0, -(a7)
000a94: 4fefffaa     lea.l      -$56(a7), a7
000a98: 3d7c000c80ee move.w     #$c, -$7f12(a6)
000a9e: 41ee80f2     lea.l      -$7f0e(a6), a0
000aa2: 2f480046     move.l     a0, $46(a7)
000aa6: 41ef004a     lea.l      $4a(a7), a0
000aaa: 2008         move.l     a0, d0
000aac: 61003846     bsr.w      $42f4
000ab0: 72ff         moveq      #$ff, d1
000ab2: b280         cmp.l      d0, d1
000ab4: 66000024     bne.w      $ada
000ab8: 4aaea4e8     tst.l      -$5b18(a6)
000abc: 6d000012     blt.w      $ad0
000ac0: 7000         moveq      #$0, d0
000ac2: 6100265c     bsr.w      $3120
000ac6: 41fa1822     lea.l      $22ea(pc), a0
000aca: 2008         move.l     a0, d0
000acc: 61004e60     bsr.w      $592e
000ad0: 7001         moveq      #$1, d0
000ad2: 4fef0056     lea.l      $56(a7), a7
000ad6: 60000280     bra.w      $d58
000ada: 6000002c     bra.w      $b08
000ade: 206f0046     movea.l    $46(a7), a0
000ae2: 20bc00000002 move.l     #$2, (a0)
000ae8: 60000036     bra.w      $b20
000aec: 206f0046     movea.l    $46(a7), a0
000af0: 20bc00000001 move.l     #$1, (a0)
000af6: 60000028     bra.w      $b20
000afa: 206f0046     movea.l    $46(a7), a0
000afe: 20bc00000003 move.l     #$3, (a0)
000b04: 6000001a     bra.w      $b20
000b08: 302f004e     move.w     $4e(a7), d0
000b0c: 0c400001     cmpi.w     #$1, d0
000b10: 6700ffcc     beq.w      $ade
000b14: 0c400002     cmpi.w     #$2, d0
000b18: 6700ffd2     beq.w      $aec
000b1c: 6000ffdc     bra.w      $afa
000b20: 082f00030051 btst.b     #$3, $51(a7)
000b26: 67000012     beq.w      $b3a
000b2a: 206f0046     movea.l    $46(a7), a0
000b2e: 217c000000020004 move.l     #$2, $4(a0)
000b36: 6000000e     bra.w      $b46
000b3a: 206f0046     movea.l    $46(a7), a0
000b3e: 217c000000010004 move.l     #$1, $4(a0)
000b46: 082f00040051 btst.b     #$4, $51(a7)
000b4c: 67000012     beq.w      $b60
000b50: 206f0046     movea.l    $46(a7), a0
000b54: 217c000000020008 move.l     #$2, $8(a0)
000b5c: 6000000e     bra.w      $b6c
000b60: 206f0046     movea.l    $46(a7), a0
000b64: 217c000000010008 move.l     #$1, $8(a0)
000b6c: 082f00050051 btst.b     #$5, $51(a7)
000b72: 67000012     beq.w      $b86
000b76: 206f0046     movea.l    $46(a7), a0
000b7a: 217c00000002000c move.l     #$2, $c(a0)
000b82: 6000000e     bra.w      $b92
000b86: 206f0046     movea.l    $46(a7), a0
000b8a: 217c00000001000c move.l     #$1, $c(a0)
000b92: 486f0010     pea.l      $10(a7)
000b96: 41ef002c     lea.l      $2c(a7), a0
000b9a: 2208         move.l     a0, d1
000b9c: 41ef0048     lea.l      $48(a7), a0
000ba0: 2008         move.l     a0, d0
000ba2: 61000a1e     bsr.w      $15c2
000ba6: 588f         addq.l     #$4, a7
000ba8: 4a80         tst.l      d0
000baa: 67000024     beq.w      $bd0
000bae: 4aaea4e8     tst.l      -$5b18(a6)
000bb2: 6d000012     blt.w      $bc6
000bb6: 7000         moveq      #$0, d0
000bb8: 61002566     bsr.w      $3120
000bbc: 41fa1759     lea.l      $2317(pc), a0
000bc0: 2008         move.l     a0, d0
000bc2: 61004d6a     bsr.w      $592e
000bc6: 7001         moveq      #$1, d0
000bc8: 4fef0056     lea.l      $56(a7), a7
000bcc: 6000018a     bra.w      $d58
000bd0: 41d7         lea.l      (a7), a0
000bd2: 2208         move.l     a0, d1
000bd4: 41ef0028     lea.l      $28(a7), a0
000bd8: 2008         move.l     a0, d0
000bda: 6100132a     bsr.w      $1f06
000bde: 0c6f00010044 cmpi.w     #$1, $44(a7)
000be4: 66000012     bne.w      $bf8
000be8: 206f0046     movea.l    $46(a7), a0
000bec: 217c000000010010 move.l     #$1, $10(a0)
000bf4: 6000000e     bra.w      $c04
000bf8: 206f0046     movea.l    $46(a7), a0
000bfc: 217c000000020010 move.l     #$2, $10(a0)
000c04: 60000042     bra.w      $c48
000c08: 206f0046     movea.l    $46(a7), a0
000c0c: 217c000000010014 move.l     #$1, $14(a0)
000c14: 60000058     bra.w      $c6e
000c18: 206f0046     movea.l    $46(a7), a0
000c1c: 217c000000020014 move.l     #$2, $14(a0)
000c24: 60000048     bra.w      $c6e
000c28: 206f0046     movea.l    $46(a7), a0
000c2c: 217c000000030014 move.l     #$3, $14(a0)
000c34: 60000038     bra.w      $c6e
000c38: 206f0046     movea.l    $46(a7), a0
000c3c: 217c000000040014 move.l     #$4, $14(a0)
000c44: 60000028     bra.w      $c6e
000c48: 302f0020     move.w     $20(a7), d0
000c4c: 0c4000ff     cmpi.w     #$ff, d0
000c50: 6200ffe6     bhi.w      $c38
000c54: 4a00         tst.b      d0
000c56: 6700ffb0     beq.w      $c08
000c5a: 0c000001     cmpi.b     #$1, d0
000c5e: 6700ffb8     beq.w      $c18
000c62: 0c000002     cmpi.b     #$2, d0
000c66: 6700ffc0     beq.w      $c28
000c6a: 6000ffcc     bra.w      $c38
000c6e: 60000032     bra.w      $ca2
000c72: 206f0046     movea.l    $46(a7), a0
000c76: 217c000000020018 move.l     #$2, $18(a0)
000c7e: 60000038     bra.w      $cb8
000c82: 206f0046     movea.l    $46(a7), a0
000c86: 217c000000010018 move.l     #$1, $18(a0)
000c8e: 60000028     bra.w      $cb8
000c92: 206f0046     movea.l    $46(a7), a0
000c96: 217c000000030018 move.l     #$3, $18(a0)
000c9e: 60000018     bra.w      $cb8
000ca2: 302f0022     move.w     $22(a7), d0
000ca6: 4a40         tst.w      d0
000ca8: 6700ffc8     beq.w      $c72
000cac: 0c400001     cmpi.w     #$1, d0
000cb0: 6700ffd0     beq.w      $c82
000cb4: 6000ffdc     bra.w      $c92
000cb8: 206f0046     movea.l    $46(a7), a0
000cbc: 316f0024001c move.w     $24(a7), $1c(a0)
000cc2: 206f0046     movea.l    $46(a7), a0
000cc6: 316f0026001e move.w     $26(a7), $1e(a0)
000ccc: 206f0046     movea.l    $46(a7), a0
000cd0: 216f003c0020 move.l     $3c(a7), $20(a0)
000cd6: 206f0046     movea.l    $46(a7), a0
000cda: 216f00400024 move.l     $40(a7), $24(a0)
000ce0: 206f0046     movea.l    $46(a7), a0
000ce4: 316f00100028 move.w     $10(a7), $28(a0)
000cea: 206f0046     movea.l    $46(a7), a0
000cee: 316f0012002a move.w     $12(a7), $2a(a0)
000cf4: 206f0046     movea.l    $46(a7), a0
000cf8: 316f0014002c move.w     $14(a7), $2c(a0)
000cfe: 206f0046     movea.l    $46(a7), a0
000d02: 316f001c002e move.w     $1c(a7), $2e(a0)
000d08: 206f0046     movea.l    $46(a7), a0
000d0c: 316f001e0030 move.w     $1e(a7), $30(a0)
000d12: 206f0046     movea.l    $46(a7), a0
000d16: 216f00280032 move.l     $28(a7), $32(a0)
000d1c: 206f0046     movea.l    $46(a7), a0
000d20: 216f002c0036 move.l     $2c(a7), $36(a0)
000d26: 206f0046     movea.l    $46(a7), a0
000d2a: 2157003a     move.l     (a7), $3a(a0)
000d2e: 206f0046     movea.l    $46(a7), a0
000d32: 216f0004003e move.l     $4(a7), $3e(a0)
000d38: 206f0046     movea.l    $46(a7), a0
000d3c: 316f00160042 move.w     $16(a7), $42(a0)
000d42: 206f0046     movea.l    $46(a7), a0
000d46: 316f00180044 move.w     $18(a7), $44(a0)
000d4c: 7000         moveq      #$0, d0
000d4e: 4fef0056     lea.l      $56(a7), a7
000d52: 60000004     bra.w      $d58
000d56: 4e71         nop        
000d58: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000d5e: 4e5d         unlk       a5
000d60: 4e75         rts        
000d62: 4e550000     link.w     a5, #$0
000d66: 48e7c080     movem.l    d0-d1/a0, -(a7)
000d6a: 4fefffca     lea.l      -$36(a7), a7
000d6e: 3d7c000d80ee move.w     #$d, -$7f12(a6)
000d74: 4857         pea.l      (a7)
000d76: 41ef001c     lea.l      $1c(a7), a0
000d7a: 2208         move.l     a0, d1
000d7c: 41ef0038     lea.l      $38(a7), a0
000d80: 2008         move.l     a0, d0
000d82: 6100083e     bsr.w      $15c2
000d86: 588f         addq.l     #$4, a7
000d88: 4a80         tst.l      d0
000d8a: 67000024     beq.w      $db0
000d8e: 4aaea4e8     tst.l      -$5b18(a6)
000d92: 6d000012     blt.w      $da6
000d96: 7000         moveq      #$0, d0
000d98: 61002386     bsr.w      $3120
000d9c: 41fa159c     lea.l      $233a(pc), a0
000da0: 2008         move.l     a0, d0
000da2: 61004b8a     bsr.w      $592e
000da6: 7001         moveq      #$1, d0
000da8: 4fef0036     lea.l      $36(a7), a7
000dac: 6000007c     bra.w      $e2a
000db0: 426f0034     clr.w      $34(a7)
000db4: 4857         pea.l      (a7)
000db6: 41ef001c     lea.l      $1c(a7), a0
000dba: 2208         move.l     a0, d1
000dbc: 306f0038     movea.w    $38(a7), a0
000dc0: 2008         move.l     a0, d0
000dc2: 610009d2     bsr.w      $1796
000dc6: 588f         addq.l     #$4, a7
000dc8: 4a80         tst.l      d0
000dca: 67000024     beq.w      $df0
000dce: 4aaea4e8     tst.l      -$5b18(a6)
000dd2: 6d000012     blt.w      $de6
000dd6: 7000         moveq      #$0, d0
000dd8: 61002346     bsr.w      $3120
000ddc: 41fa157f     lea.l      $235d(pc), a0
000de0: 2008         move.l     a0, d0
000de2: 61004b4a     bsr.w      $592e
000de6: 7001         moveq      #$1, d0
000de8: 4fef0036     lea.l      $36(a7), a7
000dec: 6000003c     bra.w      $e2a
000df0: 61002570     bsr.w      $3362
000df4: 72ff         moveq      #$ff, d1
000df6: b280         cmp.l      d0, d1
000df8: 66000024     bne.w      $e1e
000dfc: 4aaea4e8     tst.l      -$5b18(a6)
000e00: 6d000012     blt.w      $e14
000e04: 7000         moveq      #$0, d0
000e06: 61002318     bsr.w      $3120
000e0a: 41fa1575     lea.l      $2381(pc), a0
000e0e: 2008         move.l     a0, d0
000e10: 61004b1c     bsr.w      $592e
000e14: 7001         moveq      #$1, d0
000e16: 4fef0036     lea.l      $36(a7), a7
000e1a: 6000000e     bra.w      $e2a
000e1e: 7000         moveq      #$0, d0
000e20: 4fef0036     lea.l      $36(a7), a7
000e24: 60000004     bra.w      $e2a
000e28: 4e71         nop        
000e2a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e30: 4e5d         unlk       a5
000e32: 4e75         rts        
000e34: 4e550000     link.w     a5, #$0
000e38: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000e3c: 4feffff6     lea.l      -$a(a7), a7
000e40: 3d7c000880ee move.w     #$8, -$7f12(a6)
000e46: 202e80e6     move.l     -$7f1a(a6), d0
000e4a: 5c80         addq.l     #$6, d0
000e4c: 2440         movea.l    d0, a2
000e4e: 48780001     pea.l      $1.w
000e52: 200a         move.l     a2, d0
000e54: 5a80         addq.l     #$5, d0
000e56: 2200         move.l     d0, d1
000e58: 202e9ce6     move.l     -$631a(a6), d0
000e5c: 61004b34     bsr.w      $5992
000e60: 588f         addq.l     #$4, a7
000e62: 72ff         moveq      #$ff, d1
000e64: b280         cmp.l      d0, d1
000e66: 66000024     bne.w      $e8c
000e6a: 4aaea4e8     tst.l      -$5b18(a6)
000e6e: 6d000012     blt.w      $e82
000e72: 7000         moveq      #$0, d0
000e74: 610022aa     bsr.w      $3120
000e78: 41fa152b     lea.l      $23a5(pc), a0
000e7c: 2008         move.l     a0, d0
000e7e: 61004aae     bsr.w      $592e
000e82: 7001         moveq      #$1, d0
000e84: 4fef000a     lea.l      $a(a7), a7
000e88: 60000114     bra.w      $f9e
000e8c: 7001         moveq      #$1, d0
000e8e: b0aa0010     cmp.l      $10(a2), d0
000e92: 66000042     bne.w      $ed6
000e96: 42a7         clr.l      -(a7)
000e98: 222e9ce2     move.l     -$631e(a6), d1
000e9c: 203c00007f2b move.l     #$7f2b, d0
000ea2: 61003608     bsr.w      $44ac
000ea6: 588f         addq.l     #$4, a7
000ea8: 72ff         moveq      #$ff, d1
000eaa: b280         cmp.l      d0, d1
000eac: 66000024     bne.w      $ed2
000eb0: 4aaea4e8     tst.l      -$5b18(a6)
000eb4: 6d000012     blt.w      $ec8
000eb8: 7000         moveq      #$0, d0
000eba: 61002264     bsr.w      $3120
000ebe: 41fa1510     lea.l      $23d0(pc), a0
000ec2: 2008         move.l     a0, d0
000ec4: 61004a68     bsr.w      $592e
000ec8: 7001         moveq      #$1, d0
000eca: 4fef000a     lea.l      $a(a7), a7
000ece: 600000ce     bra.w      $f9e
000ed2: 6000006c     bra.w      $f40
000ed6: 4aaa0010     tst.l      $10(a2)
000eda: 66000042     bne.w      $f1e
000ede: 42a7         clr.l      -(a7)
000ee0: 222e9ce2     move.l     -$631e(a6), d1
000ee4: 203c00007f2c move.l     #$7f2c, d0
000eea: 610035c0     bsr.w      $44ac
000eee: 588f         addq.l     #$4, a7
000ef0: 72ff         moveq      #$ff, d1
000ef2: b280         cmp.l      d0, d1
000ef4: 66000024     bne.w      $f1a
000ef8: 4aaea4e8     tst.l      -$5b18(a6)
000efc: 6d000012     blt.w      $f10
000f00: 7000         moveq      #$0, d0
000f02: 6100221c     bsr.w      $3120
000f06: 41fa14e1     lea.l      $23e9(pc), a0
000f0a: 2008         move.l     a0, d0
000f0c: 61004a20     bsr.w      $592e
000f10: 7001         moveq      #$1, d0
000f12: 4fef000a     lea.l      $a(a7), a7
000f16: 60000086     bra.w      $f9e
000f1a: 60000024     bra.w      $f40
000f1e: 4aaea4e8     tst.l      -$5b18(a6)
000f22: 6d000012     blt.w      $f36
000f26: 7000         moveq      #$0, d0
000f28: 610021f6     bsr.w      $3120
000f2c: 41fa14d5     lea.l      $2403(pc), a0
000f30: 2008         move.l     a0, d0
000f32: 610049fa     bsr.w      $592e
000f36: 7001         moveq      #$1, d0
000f38: 4fef000a     lea.l      $a(a7), a7
000f3c: 60000060     bra.w      $f9e
000f40: 3e92         move.w     (a2), (a7)
000f42: 3f6a00020002 move.w     $2(a2), $2(a7)
000f48: 7001         moveq      #$1, d0
000f4a: b0aa0006     cmp.l      $6(a2), d0
000f4e: 66000008     bne.w      $f58
000f52: 7001         moveq      #$1, d0
000f54: 60000004     bra.w      $f5a
000f58: 7000         moveq      #$0, d0
000f5a: 3f400004     move.w     d0, $4(a7)
000f5e: 3f6a000a0006 move.w     $a(a2), $6(a7)
000f64: 7001         moveq      #$1, d0
000f66: b0aa000c     cmp.l      $c(a2), d0
000f6a: 66000008     bne.w      $f74
000f6e: 7001         moveq      #$1, d0
000f70: 60000004     bra.w      $f76
000f74: 7000         moveq      #$0, d0
000f76: 3f400008     move.w     d0, $8(a7)
000f7a: 41d7         lea.l      (a7), a0
000f7c: 2008         move.l     a0, d0
000f7e: 61002fb0     bsr.w      $3f30
000f82: 4a80         tst.l      d0
000f84: 6700000c     beq.w      $f92
000f88: 7001         moveq      #$1, d0
000f8a: 4fef000a     lea.l      $a(a7), a7
000f8e: 6000000e     bra.w      $f9e
000f92: 7000         moveq      #$0, d0
000f94: 4fef000a     lea.l      $a(a7), a7
000f98: 60000004     bra.w      $f9e
000f9c: 4e71         nop        
000f9e: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
000fa4: 4e5d         unlk       a5
000fa6: 4e75         rts        
000fa8: 4e550000     link.w     a5, #$0
000fac: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000fb0: 4fefffd6     lea.l      -$2a(a7), a7
000fb4: 3d7c000980ee move.w     #$9, -$7f12(a6)
000fba: 45ee80f2     lea.l      -$7f0e(a6), a2
000fbe: 41ef0008     lea.l      $8(a7), a0
000fc2: 2008         move.l     a0, d0
000fc4: 61002ffc     bsr.w      $3fc2
000fc8: 4a80         tst.l      d0
000fca: 6700000c     beq.w      $fd8
000fce: 7001         moveq      #$1, d0
000fd0: 4fef002a     lea.l      $2a(a7), a7
000fd4: 600001be     bra.w      $1194
000fd8: 34af0008     move.w     $8(a7), (a2)
000fdc: 356f000a0002 move.w     $a(a7), $2(a2)
000fe2: 356f000c0004 move.w     $c(a7), $4(a2)
000fe8: 356f000e0006 move.w     $e(a7), $6(a2)
000fee: 356f00100008 move.w     $10(a7), $8(a2)
000ff4: 0c6f00010012 cmpi.w     #$1, $12(a7)
000ffa: 66000008     bne.w      $1004
000ffe: 7001         moveq      #$1, d0
001000: 60000004     bra.w      $1006
001004: 7002         moveq      #$2, d0
001006: 2540000e     move.l     d0, $e(a2)
00100a: 0c6f00010014 cmpi.w     #$1, $14(a7)
001010: 66000008     bne.w      $101a
001014: 7001         moveq      #$1, d0
001016: 60000004     bra.w      $101c
00101a: 7002         moveq      #$2, d0
00101c: 25400012     move.l     d0, $12(a2)
001020: 0c6f00010016 cmpi.w     #$1, $16(a7)
001026: 66000008     bne.w      $1030
00102a: 7001         moveq      #$1, d0
00102c: 60000004     bra.w      $1032
001030: 7002         moveq      #$2, d0
001032: 2540000a     move.l     d0, $a(a2)
001036: 0c6f00010018 cmpi.w     #$1, $18(a7)
00103c: 66000008     bne.w      $1046
001040: 7001         moveq      #$1, d0
001042: 60000004     bra.w      $1048
001046: 7002         moveq      #$2, d0
001048: 2540001a     move.l     d0, $1a(a2)
00104c: 4a6f001a     tst.w      $1a(a7)
001050: 66000008     bne.w      $105a
001054: 7001         moveq      #$1, d0
001056: 60000004     bra.w      $105c
00105a: 7002         moveq      #$2, d0
00105c: 2540002a     move.l     d0, $2a(a2)
001060: 156f001d002e move.b     $1d(a7), $2e(a2)
001066: 356f001e0030 move.w     $1e(a7), $30(a2)
00106c: 356f00200032 move.w     $20(a7), $32(a2)
001072: 356f00220034 move.w     $22(a7), $34(a2)
001078: 356f00240036 move.w     $24(a7), $36(a2)
00107e: 356f00260038 move.w     $26(a7), $38(a2)
001084: 356f0028003a move.w     $28(a7), $3a(a2)
00108a: 257c00000005001e move.l     #$5, $1e(a2)
001092: 48780001     pea.l      $1.w
001096: 7028         moveq      #$28, d0
001098: d08a         add.l      a2, d0
00109a: 2200         move.l     d0, d1
00109c: 202e9ce6     move.l     -$631a(a6), d0
0010a0: 610048e8     bsr.w      $598a
0010a4: 588f         addq.l     #$4, a7
0010a6: 2e80         move.l     d0, (a7)
0010a8: 4a97         tst.l      (a7)
0010aa: 6600000e     bne.w      $10ba
0010ae: 257c000000050024 move.l     #$5, $24(a2)
0010b6: 60000072     bra.w      $112a
0010ba: 7001         moveq      #$1, d0
0010bc: b097         cmp.l      (a7), d0
0010be: 6600000e     bne.w      $10ce
0010c2: 257c000000040024 move.l     #$4, $24(a2)
0010ca: 6000005e     bra.w      $112a
0010ce: 60000030     bra.w      $1100
0010d2: 257c000000010024 move.l     #$1, $24(a2)
0010da: 6000004e     bra.w      $112a
0010de: 257c000000020024 move.l     #$2, $24(a2)
0010e6: 60000042     bra.w      $112a
0010ea: 257c000000030024 move.l     #$3, $24(a2)
0010f2: 60000036     bra.w      $112a
0010f6: 7001         moveq      #$1, d0
0010f8: 4fef002a     lea.l      $2a(a7), a7
0010fc: 60000096     bra.w      $1194
001100: 202e800c     move.l     -$7ff4(a6), d0
001104: 0c800000ffff cmpi.l     #$ffff, d0
00110a: 6200ffea     bhi.w      $10f6
00110e: 0c400041     cmpi.w     #$41, d0
001112: 6700ffbe     beq.w      $10d2
001116: 0c40080a     cmpi.w     #$80a, d0
00111a: 6700ffc2     beq.w      $10de
00111e: 0c40080b     cmpi.w     #$80b, d0
001122: 6700ffc6     beq.w      $10ea
001126: 6000ffce     bra.w      $10f6
00112a: 486f0004     pea.l      $4(a7)
00112e: 222e9ce2     move.l     -$631e(a6), d1
001132: 203c00007f0f move.l     #$7f0f, d0
001138: 6100332a     bsr.w      $4464
00113c: 588f         addq.l     #$4, a7
00113e: 72ff         moveq      #$ff, d1
001140: b280         cmp.l      d0, d1
001142: 66000028     bne.w      $116c
001146: 4aaea4e8     tst.l      -$5b18(a6)
00114a: 6d000012     blt.w      $115e
00114e: 7000         moveq      #$0, d0
001150: 61001fce     bsr.w      $3120
001154: 41fa12cd     lea.l      $2423(pc), a0
001158: 2008         move.l     a0, d0
00115a: 610047d2     bsr.w      $592e
00115e: 7001         moveq      #$1, d0
001160: 4fef002a     lea.l      $2a(a7), a7
001164: 6000002e     bra.w      $1194
001168: 6000001e     bra.w      $1188
00116c: 4aaf0004     tst.l      $4(a7)
001170: 6600000e     bne.w      $1180
001174: 257c000000020016 move.l     #$2, $16(a2)
00117c: 6000000a     bra.w      $1188
001180: 257c000000010016 move.l     #$1, $16(a2)
001188: 7000         moveq      #$0, d0
00118a: 4fef002a     lea.l      $2a(a7), a7
00118e: 60000004     bra.w      $1194
001192: 4e71         nop        
001194: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
00119a: 4e5d         unlk       a5
00119c: 4e75         rts        
00119e: 4e550000     link.w     a5, #$0
0011a2: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0011a6: 4fefffe8     lea.l      -$18(a7), a7
0011aa: 3d7c000a80ee move.w     #$a, -$7f12(a6)
0011b0: 41ee80f2     lea.l      -$7f0e(a6), a0
0011b4: 2f480010     move.l     a0, $10(a7)
0011b8: 42a7         clr.l      -(a7)
0011ba: 222e9ce2     move.l     -$631e(a6), d1
0011be: 203c00007f34 move.l     #$7f34, d0
0011c4: 610032e6     bsr.w      $44ac
0011c8: 588f         addq.l     #$4, a7
0011ca: 41d7         lea.l      (a7), a0
0011cc: 2008         move.l     a0, d0
0011ce: 61002ea0     bsr.w      $4070
0011d2: 4a80         tst.l      d0
0011d4: 6700000c     beq.w      $11e2
0011d8: 7001         moveq      #$1, d0
0011da: 4fef0018     lea.l      $18(a7), a7
0011de: 6000028a     bra.w      $146a
0011e2: 3057         movea.w    (a7), a0
0011e4: 226f0010     movea.l    $10(a7), a1
0011e8: 23480004     move.l     a0, $4(a1)
0011ec: 206f0010     movea.l    $10(a7), a0
0011f0: 7002         moveq      #$2, d0
0011f2: b0a80004     cmp.l      $4(a0), d0
0011f6: 66000008     bne.w      $1200
0011fa: 7061         moveq      #$61, d0
0011fc: 6100033c     bsr.w      $153a
001200: 306f0002     movea.w    $2(a7), a0
001204: 226f0010     movea.l    $10(a7), a1
001208: 23480008     move.l     a0, $8(a1)
00120c: 206f0010     movea.l    $10(a7), a0
001210: 7002         moveq      #$2, d0
001212: b0a80008     cmp.l      $8(a0), d0
001216: 66000008     bne.w      $1220
00121a: 7060         moveq      #$60, d0
00121c: 6100031c     bsr.w      $153a
001220: 306f0004     movea.w    $4(a7), a0
001224: 226f0010     movea.l    $10(a7), a1
001228: 2348000c     move.l     a0, $c(a1)
00122c: 206f0010     movea.l    $10(a7), a0
001230: 7002         moveq      #$2, d0
001232: b0a8000c     cmp.l      $c(a0), d0
001236: 66000008     bne.w      $1240
00123a: 7078         moveq      #$78, d0
00123c: 610002fc     bsr.w      $153a
001240: 306f0006     movea.w    $6(a7), a0
001244: 226f0010     movea.l    $10(a7), a1
001248: 23480010     move.l     a0, $10(a1)
00124c: 206f0010     movea.l    $10(a7), a0
001250: 7002         moveq      #$2, d0
001252: b0a80010     cmp.l      $10(a0), d0
001256: 66000008     bne.w      $1260
00125a: 7079         moveq      #$79, d0
00125c: 610002dc     bsr.w      $153a
001260: 306f0008     movea.w    $8(a7), a0
001264: 226f0010     movea.l    $10(a7), a1
001268: 23480014     move.l     a0, $14(a1)
00126c: 206f0010     movea.l    $10(a7), a0
001270: 7002         moveq      #$2, d0
001272: b0a80014     cmp.l      $14(a0), d0
001276: 66000008     bne.w      $1280
00127a: 707a         moveq      #$7a, d0
00127c: 610002bc     bsr.w      $153a
001280: 306f000a     movea.w    $a(a7), a0
001284: 226f0010     movea.l    $10(a7), a1
001288: 23480018     move.l     a0, $18(a1)
00128c: 206f0010     movea.l    $10(a7), a0
001290: 7002         moveq      #$2, d0
001292: b0a80018     cmp.l      $18(a0), d0
001296: 66000008     bne.w      $12a0
00129a: 7062         moveq      #$62, d0
00129c: 6100029c     bsr.w      $153a
0012a0: 306f000c     movea.w    $c(a7), a0
0012a4: 226f0010     movea.l    $10(a7), a1
0012a8: 2348001c     move.l     a0, $1c(a1)
0012ac: 206f0010     movea.l    $10(a7), a0
0012b0: 7002         moveq      #$2, d0
0012b2: b0a8001c     cmp.l      $1c(a0), d0
0012b6: 66000008     bne.w      $12c0
0012ba: 7065         moveq      #$65, d0
0012bc: 6100027c     bsr.w      $153a
0012c0: 306f000e     movea.w    $e(a7), a0
0012c4: 226f0010     movea.l    $10(a7), a1
0012c8: 23480020     move.l     a0, $20(a1)
0012cc: 206f0010     movea.l    $10(a7), a0
0012d0: 7002         moveq      #$2, d0
0012d2: b0a80020     cmp.l      $20(a0), d0
0012d6: 66000008     bne.w      $12e0
0012da: 707b         moveq      #$7b, d0
0012dc: 6100025c     bsr.w      $153a
0012e0: 206f0010     movea.l    $10(a7), a0
0012e4: 20bc00000002 move.l     #$2, (a0)
0012ea: 42a7         clr.l      -(a7)
0012ec: 222e9ce2     move.l     -$631e(a6), d1
0012f0: 203c00007f2b move.l     #$7f2b, d0
0012f6: 6100316c     bsr.w      $4464
0012fa: 588f         addq.l     #$4, a7
0012fc: 2f400014     move.l     d0, $14(a7)
001300: 70ff         moveq      #$ff, d0
001302: b0af0014     cmp.l      $14(a7), d0
001306: 6600003a     bne.w      $1342
00130a: 4aaea4e8     tst.l      -$5b18(a6)
00130e: 6d000012     blt.w      $1322
001312: 7000         moveq      #$0, d0
001314: 61001e0a     bsr.w      $3120
001318: 41fa1128     lea.l      $2442(pc), a0
00131c: 2008         move.l     a0, d0
00131e: 6100460e     bsr.w      $592e
001322: 42a7         clr.l      -(a7)
001324: 222e9ce2     move.l     -$631e(a6), d1
001328: 203c00007f34 move.l     #$7f34, d0
00132e: 6100317c     bsr.w      $44ac
001332: 588f         addq.l     #$4, a7
001334: 7001         moveq      #$1, d0
001336: 4fef0018     lea.l      $18(a7), a7
00133a: 6000012e     bra.w      $146a
00133e: 6000004c     bra.w      $138c
001342: 7001         moveq      #$1, d0
001344: b0af0014     cmp.l      $14(a7), d0
001348: 66000024     bne.w      $136e
00134c: 61000126     bsr.w      $1474
001350: 4a00         tst.b      d0
001352: 67000016     beq.w      $136a
001356: 6100017e     bsr.w      $14d6
00135a: 4a00         tst.b      d0
00135c: 6700000c     beq.w      $136a
001360: 206f0010     movea.l    $10(a7), a0
001364: 20bc00000001 move.l     #$1, (a0)
00136a: 60000020     bra.w      $138c
00136e: 61000166     bsr.w      $14d6
001372: 4a00         tst.b      d0
001374: 67000016     beq.w      $138c
001378: 610000fa     bsr.w      $1474
00137c: 4a00         tst.b      d0
00137e: 6700000c     beq.w      $138c
001382: 206f0010     movea.l    $10(a7), a0
001386: 20bc00000001 move.l     #$1, (a0)
00138c: 206f0010     movea.l    $10(a7), a0
001390: 7002         moveq      #$2, d0
001392: b090         cmp.l      (a0), d0
001394: 66000008     bne.w      $139e
001398: 7066         moveq      #$66, d0
00139a: 6100019e     bsr.w      $153a
00139e: 42a7         clr.l      -(a7)
0013a0: 222e9ce2     move.l     -$631e(a6), d1
0013a4: 203c00007f16 move.l     #$7f16, d0
0013aa: 610030b8     bsr.w      $4464
0013ae: 588f         addq.l     #$4, a7
0013b0: 4a80         tst.l      d0
0013b2: 66000012     bne.w      $13c6
0013b6: 206f0010     movea.l    $10(a7), a0
0013ba: 217c000000010024 move.l     #$1, $24(a0)
0013c2: 60000014     bra.w      $13d8
0013c6: 206f0010     movea.l    $10(a7), a0
0013ca: 217c000000020024 move.l     #$2, $24(a0)
0013d2: 7073         moveq      #$73, d0
0013d4: 61000164     bsr.w      $153a
0013d8: 42a7         clr.l      -(a7)
0013da: 222e9ce2     move.l     -$631e(a6), d1
0013de: 203c00007f17 move.l     #$7f17, d0
0013e4: 6100307e     bsr.w      $4464
0013e8: 588f         addq.l     #$4, a7
0013ea: 4a80         tst.l      d0
0013ec: 66000012     bne.w      $1400
0013f0: 206f0010     movea.l    $10(a7), a0
0013f4: 217c000000010028 move.l     #$1, $28(a0)
0013fc: 60000014     bra.w      $1412
001400: 206f0010     movea.l    $10(a7), a0
001404: 217c000000020028 move.l     #$2, $28(a0)
00140c: 7075         moveq      #$75, d0
00140e: 6100012a     bsr.w      $153a
001412: 42a7         clr.l      -(a7)
001414: 222e9ce2     move.l     -$631e(a6), d1
001418: 203c00007f18 move.l     #$7f18, d0
00141e: 61003044     bsr.w      $4464
001422: 588f         addq.l     #$4, a7
001424: 4a80         tst.l      d0
001426: 66000012     bne.w      $143a
00142a: 206f0010     movea.l    $10(a7), a0
00142e: 217c00000001002c move.l     #$1, $2c(a0)
001436: 60000014     bra.w      $144c
00143a: 206f0010     movea.l    $10(a7), a0
00143e: 217c00000002002c move.l     #$2, $2c(a0)
001446: 7074         moveq      #$74, d0
001448: 610000f0     bsr.w      $153a
00144c: 42a7         clr.l      -(a7)
00144e: 222e9ce2     move.l     -$631e(a6), d1
001452: 203c00007f34 move.l     #$7f34, d0
001458: 61003052     bsr.w      $44ac
00145c: 588f         addq.l     #$4, a7
00145e: 7000         moveq      #$0, d0
001460: 4fef0018     lea.l      $18(a7), a7
001464: 60000004     bra.w      $146a
001468: 4e71         nop        
00146a: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
001470: 4e5d         unlk       a5
001472: 4e75         rts        
001474: 4e550000     link.w     a5, #$0
001478: 48e7c000     movem.l    d0-d1, -(a7)
00147c: 42a7         clr.l      -(a7)
00147e: 222e9ce2     move.l     -$631e(a6), d1
001482: 203c00007f2c move.l     #$7f2c, d0
001488: 61003022     bsr.w      $44ac
00148c: 588f         addq.l     #$4, a7
00148e: 72ff         moveq      #$ff, d1
001490: b280         cmp.l      d0, d1
001492: 66000008     bne.w      $149c
001496: 7000         moveq      #$0, d0
001498: 60000032     bra.w      $14cc
00149c: 203c80000033 move.l     #$80000033, d0
0014a2: 61004b82     bsr.w      $6026
0014a6: 42a7         clr.l      -(a7)
0014a8: 222e9ce2     move.l     -$631e(a6), d1
0014ac: 203c00007f2d move.l     #$7f2d, d0
0014b2: 61002fb0     bsr.w      $4464
0014b6: 588f         addq.l     #$4, a7
0014b8: 4a80         tst.l      d0
0014ba: 67000008     beq.w      $14c4
0014be: 7000         moveq      #$0, d0
0014c0: 6000000a     bra.w      $14cc
0014c4: 7001         moveq      #$1, d0
0014c6: 60000004     bra.w      $14cc
0014ca: 4e71         nop        
0014cc: 4ced0002fffc movem.l    -$4(a5), d1
0014d2: 4e5d         unlk       a5
0014d4: 4e75         rts        
0014d6: 4e550000     link.w     a5, #$0
0014da: 48e7c000     movem.l    d0-d1, -(a7)
0014de: 42a7         clr.l      -(a7)
0014e0: 222e9ce2     move.l     -$631e(a6), d1
0014e4: 203c00007f2b move.l     #$7f2b, d0
0014ea: 61002fc0     bsr.w      $44ac
0014ee: 588f         addq.l     #$4, a7
0014f0: 72ff         moveq      #$ff, d1
0014f2: b280         cmp.l      d0, d1
0014f4: 66000008     bne.w      $14fe
0014f8: 7000         moveq      #$0, d0
0014fa: 60000034     bra.w      $1530
0014fe: 203c80000019 move.l     #$80000019, d0
001504: 61004b20     bsr.w      $6026
001508: 42a7         clr.l      -(a7)
00150a: 222e9ce2     move.l     -$631e(a6), d1
00150e: 203c00007f2d move.l     #$7f2d, d0
001514: 61002f4e     bsr.w      $4464
001518: 588f         addq.l     #$4, a7
00151a: 7201         moveq      #$1, d1
00151c: b280         cmp.l      d0, d1
00151e: 67000008     beq.w      $1528
001522: 7000         moveq      #$0, d0
001524: 6000000a     bra.w      $1530
001528: 7001         moveq      #$1, d0
00152a: 60000004     bra.w      $1530
00152e: 4e71         nop        
001530: 4ced0002fffc movem.l    -$4(a5), d1
001536: 4e5d         unlk       a5
001538: 4e75         rts        
00153a: 4e550000     link.w     a5, #$0
00153e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001542: 4feffff0     lea.l      -$10(a7), a7
001546: 102f0013     move.b     $13(a7), d0
00154a: 49c0         extb.l     d0
00154c: 2f400008     move.l     d0, $8(a7)
001550: 41d7         lea.l      (a7), a0
001552: 2208         move.l     a0, d1
001554: 41ef0004     lea.l      $4(a7), a0
001558: 2008         move.l     a0, d0
00155a: 61002444     bsr.w      $39a0
00155e: 4a80         tst.l      d0
001560: 66000012     bne.w      $1574
001564: 1f6f0003000c move.b     $3(a7), $c(a7)
00156a: 1f6f0007000d move.b     $7(a7), $d(a7)
001570: 6000000a     bra.w      $157c
001574: 422f000c     clr.b      $c(a7)
001578: 422f000d     clr.b      $d(a7)
00157c: 422f000e     clr.b      $e(a7)
001580: 486f0008     pea.l      $8(a7)
001584: 222e9ce2     move.l     -$631e(a6), d1
001588: 203c00007f23 move.l     #$7f23, d0
00158e: 61002f1c     bsr.w      $44ac
001592: 588f         addq.l     #$4, a7
001594: 72ff         moveq      #$ff, d1
001596: b280         cmp.l      d0, d1
001598: 6600001a     bne.w      $15b4
00159c: 4aaea4e8     tst.l      -$5b18(a6)
0015a0: 6d000012     blt.w      $15b4
0015a4: 7000         moveq      #$0, d0
0015a6: 61001b78     bsr.w      $3120
0015aa: 41fa0eb4     lea.l      $2460(pc), a0
0015ae: 2008         move.l     a0, d0
0015b0: 6100437c     bsr.w      $592e
0015b4: 4fef0010     lea.l      $10(a7), a7
0015b8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0015be: 4e5d         unlk       a5
0015c0: 4e75         rts        
0015c2: 4e550000     link.w     a5, #$0
0015c6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0015ca: 598f         subq.l     #$4, a7
0015cc: 42a7         clr.l      -(a7)
0015ce: 223c00000082 move.l     #$82, d1
0015d4: 203c000000ff move.l     #$ff, d0
0015da: 610024e6     bsr.w      $3ac2
0015de: 588f         addq.l     #$4, a7
0015e0: 2e80         move.l     d0, (a7)
0015e2: 66000022     bne.w      $1606
0015e6: 4aaea4e8     tst.l      -$5b18(a6)
0015ea: 6d000012     blt.w      $15fe
0015ee: 7000         moveq      #$0, d0
0015f0: 61001b2e     bsr.w      $3120
0015f4: 41fa0e7f     lea.l      $2475(pc), a0
0015f8: 2008         move.l     a0, d0
0015fa: 61004332     bsr.w      $592e
0015fe: 70ff         moveq      #$ff, d0
001600: 588f         addq.l     #$4, a7
001602: 60000188     bra.w      $178c
001606: 7200         moveq      #$0, d1
001608: 2017         move.l     (a7), d0
00160a: 6100262c     bsr.w      $3c38
00160e: 72ff         moveq      #$ff, d1
001610: b280         cmp.l      d0, d1
001612: 66000022     bne.w      $1636
001616: 4aaea4e8     tst.l      -$5b18(a6)
00161a: 6d000012     blt.w      $162e
00161e: 7000         moveq      #$0, d0
001620: 61001afe     bsr.w      $3120
001624: 41fa0e6f     lea.l      $2495(pc), a0
001628: 2008         move.l     a0, d0
00162a: 61004302     bsr.w      $592e
00162e: 70ff         moveq      #$ff, d0
001630: 588f         addq.l     #$4, a7
001632: 60000158     bra.w      $178c
001636: 48780001     pea.l      $1.w
00163a: 222f0008     move.l     $8(a7), d1
00163e: 202f0004     move.l     $4(a7), d0
001642: 6100262c     bsr.w      $3c70
001646: 588f         addq.l     #$4, a7
001648: 7201         moveq      #$1, d1
00164a: b280         cmp.l      d0, d1
00164c: 67000022     beq.w      $1670
001650: 4aaea4e8     tst.l      -$5b18(a6)
001654: 6d000012     blt.w      $1668
001658: 7000         moveq      #$0, d0
00165a: 61001ac4     bsr.w      $3120
00165e: 41fa0e5c     lea.l      $24bc(pc), a0
001662: 2008         move.l     a0, d0
001664: 610042c8     bsr.w      $592e
001668: 70ff         moveq      #$ff, d0
00166a: 588f         addq.l     #$4, a7
00166c: 6000011e     bra.w      $178c
001670: 721e         moveq      #$1e, d1
001672: 2017         move.l     (a7), d0
001674: 610025c2     bsr.w      $3c38
001678: 72ff         moveq      #$ff, d1
00167a: b280         cmp.l      d0, d1
00167c: 66000022     bne.w      $16a0
001680: 4aaea4e8     tst.l      -$5b18(a6)
001684: 6d000012     blt.w      $1698
001688: 7000         moveq      #$0, d0
00168a: 61001a94     bsr.w      $3120
00168e: 41fa0e50     lea.l      $24e0(pc), a0
001692: 2008         move.l     a0, d0
001694: 61004298     bsr.w      $592e
001698: 70ff         moveq      #$ff, d0
00169a: 588f         addq.l     #$4, a7
00169c: 600000ee     bra.w      $178c
0016a0: 4878000c     pea.l      $c.w
0016a4: 222f001c     move.l     $1c(a7), d1
0016a8: 202f0004     move.l     $4(a7), d0
0016ac: 610025c2     bsr.w      $3c70
0016b0: 588f         addq.l     #$4, a7
0016b2: 720c         moveq      #$c, d1
0016b4: b280         cmp.l      d0, d1
0016b6: 67000022     beq.w      $16da
0016ba: 4aaea4e8     tst.l      -$5b18(a6)
0016be: 6d000012     blt.w      $16d2
0016c2: 7000         moveq      #$0, d0
0016c4: 61001a5a     bsr.w      $3120
0016c8: 41fa0e3a     lea.l      $2504(pc), a0
0016cc: 2008         move.l     a0, d0
0016ce: 6100425e     bsr.w      $592e
0016d2: 70ff         moveq      #$ff, d0
0016d4: 588f         addq.l     #$4, a7
0016d6: 600000b4     bra.w      $178c
0016da: 2017         move.l     (a7), d0
0016dc: 610024e2     bsr.w      $3bc0
0016e0: 42a7         clr.l      -(a7)
0016e2: 223c00000084 move.l     #$84, d1
0016e8: 203c000000ff move.l     #$ff, d0
0016ee: 610023d2     bsr.w      $3ac2
0016f2: 588f         addq.l     #$4, a7
0016f4: 2e80         move.l     d0, (a7)
0016f6: 66000022     bne.w      $171a
0016fa: 4aaea4e8     tst.l      -$5b18(a6)
0016fe: 6d000012     blt.w      $1712
001702: 7000         moveq      #$0, d0
001704: 61001a1a     bsr.w      $3120
001708: 41fa0e21     lea.l      $252b(pc), a0
00170c: 2008         move.l     a0, d0
00170e: 6100421e     bsr.w      $592e
001712: 70ff         moveq      #$ff, d0
001714: 588f         addq.l     #$4, a7
001716: 60000074     bra.w      $178c
00171a: 7202         moveq      #$2, d1
00171c: 2017         move.l     (a7), d0
00171e: 61002518     bsr.w      $3c38
001722: 72ff         moveq      #$ff, d1
001724: b280         cmp.l      d0, d1
001726: 66000022     bne.w      $174a
00172a: 4aaea4e8     tst.l      -$5b18(a6)
00172e: 6d000012     blt.w      $1742
001732: 7000         moveq      #$0, d0
001734: 610019ea     bsr.w      $3120
001738: 41fa0e11     lea.l      $254b(pc), a0
00173c: 2008         move.l     a0, d0
00173e: 610041ee     bsr.w      $592e
001742: 70ff         moveq      #$ff, d0
001744: 588f         addq.l     #$4, a7
001746: 60000044     bra.w      $178c
00174a: 48780007     pea.l      $7.w
00174e: 222f000c     move.l     $c(a7), d1
001752: 202f0004     move.l     $4(a7), d0
001756: 61002518     bsr.w      $3c70
00175a: 588f         addq.l     #$4, a7
00175c: 7207         moveq      #$7, d1
00175e: b280         cmp.l      d0, d1
001760: 67000022     beq.w      $1784
001764: 4aaea4e8     tst.l      -$5b18(a6)
001768: 6d000012     blt.w      $177c
00176c: 7000         moveq      #$0, d0
00176e: 610019b0     bsr.w      $3120
001772: 41fa0dfb     lea.l      $256f(pc), a0
001776: 2008         move.l     a0, d0
001778: 610041b4     bsr.w      $592e
00177c: 70ff         moveq      #$ff, d0
00177e: 588f         addq.l     #$4, a7
001780: 6000000a     bra.w      $178c
001784: 2017         move.l     (a7), d0
001786: 61002438     bsr.w      $3bc0
00178a: 588f         addq.l     #$4, a7
00178c: 4ced0100fffc movem.l    -$4(a5), a0
001792: 4e5d         unlk       a5
001794: 4e75         rts        
001796: 4e550000     link.w     a5, #$0
00179a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00179e: 598f         subq.l     #$4, a7
0017a0: 42a7         clr.l      -(a7)
0017a2: 223c00000082 move.l     #$82, d1
0017a8: 203c000000ff move.l     #$ff, d0
0017ae: 61002312     bsr.w      $3ac2
0017b2: 588f         addq.l     #$4, a7
0017b4: 2e80         move.l     d0, (a7)
0017b6: 66000022     bne.w      $17da
0017ba: 4aaea4e8     tst.l      -$5b18(a6)
0017be: 6d000012     blt.w      $17d2
0017c2: 7000         moveq      #$0, d0
0017c4: 6100195a     bsr.w      $3120
0017c8: 41fa0dcc     lea.l      $2596(pc), a0
0017cc: 2008         move.l     a0, d0
0017ce: 6100415e     bsr.w      $592e
0017d2: 70ff         moveq      #$ff, d0
0017d4: 588f         addq.l     #$4, a7
0017d6: 6000018a     bra.w      $1962
0017da: 7200         moveq      #$0, d1
0017dc: 2017         move.l     (a7), d0
0017de: 61002458     bsr.w      $3c38
0017e2: 72ff         moveq      #$ff, d1
0017e4: b280         cmp.l      d0, d1
0017e6: 66000022     bne.w      $180a
0017ea: 4aaea4e8     tst.l      -$5b18(a6)
0017ee: 6d000012     blt.w      $1802
0017f2: 7000         moveq      #$0, d0
0017f4: 6100192a     bsr.w      $3120
0017f8: 41fa0dbc     lea.l      $25b6(pc), a0
0017fc: 2008         move.l     a0, d0
0017fe: 6100412e     bsr.w      $592e
001802: 70ff         moveq      #$ff, d0
001804: 588f         addq.l     #$4, a7
001806: 6000015a     bra.w      $1962
00180a: 48780001     pea.l      $1.w
00180e: 41ef000a     lea.l      $a(a7), a0
001812: 2208         move.l     a0, d1
001814: 202f0004     move.l     $4(a7), d0
001818: 610023ea     bsr.w      $3c04
00181c: 588f         addq.l     #$4, a7
00181e: 7201         moveq      #$1, d1
001820: b280         cmp.l      d0, d1
001822: 67000022     beq.w      $1846
001826: 4aaea4e8     tst.l      -$5b18(a6)
00182a: 6d000012     blt.w      $183e
00182e: 7000         moveq      #$0, d0
001830: 610018ee     bsr.w      $3120
001834: 41fa0da7     lea.l      $25dd(pc), a0
001838: 2008         move.l     a0, d0
00183a: 610040f2     bsr.w      $592e
00183e: 70ff         moveq      #$ff, d0
001840: 588f         addq.l     #$4, a7
001842: 6000011e     bra.w      $1962
001846: 721e         moveq      #$1e, d1
001848: 2017         move.l     (a7), d0
00184a: 610023ec     bsr.w      $3c38
00184e: 72ff         moveq      #$ff, d1
001850: b280         cmp.l      d0, d1
001852: 66000022     bne.w      $1876
001856: 4aaea4e8     tst.l      -$5b18(a6)
00185a: 6d000012     blt.w      $186e
00185e: 7000         moveq      #$0, d0
001860: 610018be     bsr.w      $3120
001864: 41fa0d99     lea.l      $25ff(pc), a0
001868: 2008         move.l     a0, d0
00186a: 610040c2     bsr.w      $592e
00186e: 70ff         moveq      #$ff, d0
001870: 588f         addq.l     #$4, a7
001872: 600000ee     bra.w      $1962
001876: 4878000c     pea.l      $c.w
00187a: 222f001c     move.l     $1c(a7), d1
00187e: 202f0004     move.l     $4(a7), d0
001882: 61002380     bsr.w      $3c04
001886: 588f         addq.l     #$4, a7
001888: 720c         moveq      #$c, d1
00188a: b280         cmp.l      d0, d1
00188c: 67000022     beq.w      $18b0
001890: 4aaea4e8     tst.l      -$5b18(a6)
001894: 6d000012     blt.w      $18a8
001898: 7000         moveq      #$0, d0
00189a: 61001884     bsr.w      $3120
00189e: 41fa0d83     lea.l      $2623(pc), a0
0018a2: 2008         move.l     a0, d0
0018a4: 61004088     bsr.w      $592e
0018a8: 70ff         moveq      #$ff, d0
0018aa: 588f         addq.l     #$4, a7
0018ac: 600000b4     bra.w      $1962
0018b0: 2017         move.l     (a7), d0
0018b2: 6100230c     bsr.w      $3bc0
0018b6: 42a7         clr.l      -(a7)
0018b8: 223c00000084 move.l     #$84, d1
0018be: 203c000000ff move.l     #$ff, d0
0018c4: 610021fc     bsr.w      $3ac2
0018c8: 588f         addq.l     #$4, a7
0018ca: 2e80         move.l     d0, (a7)
0018cc: 66000022     bne.w      $18f0
0018d0: 4aaea4e8     tst.l      -$5b18(a6)
0018d4: 6d000012     blt.w      $18e8
0018d8: 7000         moveq      #$0, d0
0018da: 61001844     bsr.w      $3120
0018de: 41fa0d68     lea.l      $2648(pc), a0
0018e2: 2008         move.l     a0, d0
0018e4: 61004048     bsr.w      $592e
0018e8: 70ff         moveq      #$ff, d0
0018ea: 588f         addq.l     #$4, a7
0018ec: 60000074     bra.w      $1962
0018f0: 7202         moveq      #$2, d1
0018f2: 2017         move.l     (a7), d0
0018f4: 61002342     bsr.w      $3c38
0018f8: 72ff         moveq      #$ff, d1
0018fa: b280         cmp.l      d0, d1
0018fc: 66000022     bne.w      $1920
001900: 4aaea4e8     tst.l      -$5b18(a6)
001904: 6d000012     blt.w      $1918
001908: 7000         moveq      #$0, d0
00190a: 61001814     bsr.w      $3120
00190e: 41fa0d58     lea.l      $2668(pc), a0
001912: 2008         move.l     a0, d0
001914: 61004018     bsr.w      $592e
001918: 70ff         moveq      #$ff, d0
00191a: 588f         addq.l     #$4, a7
00191c: 60000044     bra.w      $1962
001920: 48780007     pea.l      $7.w
001924: 222f000c     move.l     $c(a7), d1
001928: 202f0004     move.l     $4(a7), d0
00192c: 610022d6     bsr.w      $3c04
001930: 588f         addq.l     #$4, a7
001932: 7207         moveq      #$7, d1
001934: b280         cmp.l      d0, d1
001936: 67000022     beq.w      $195a
00193a: 4aaea4e8     tst.l      -$5b18(a6)
00193e: 6d000012     blt.w      $1952
001942: 7000         moveq      #$0, d0
001944: 610017da     bsr.w      $3120
001948: 41fa0d42     lea.l      $268c(pc), a0
00194c: 2008         move.l     a0, d0
00194e: 61003fde     bsr.w      $592e
001952: 70ff         moveq      #$ff, d0
001954: 588f         addq.l     #$4, a7
001956: 6000000a     bra.w      $1962
00195a: 2017         move.l     (a7), d0
00195c: 61002262     bsr.w      $3bc0
001960: 588f         addq.l     #$4, a7
001962: 4ced0100fffc movem.l    -$4(a5), a0
001968: 4e5d         unlk       a5
00196a: 4e75         rts        
00196c: 4e550000     link.w     a5, #$0
001970: 48e7c080     movem.l    d0-d1/a0, -(a7)
001974: 4fefffe6     lea.l      -$1a(a7), a7
001978: 42ae9cf2     clr.l      -$630e(a6)
00197c: 6000008a     bra.w      $1a08
001980: 60000074     bra.w      $19f6
001984: 60000048     bra.w      $19ce
001988: 7002         moveq      #$2, d0
00198a: 6100181c     bsr.w      $31a8
00198e: 60000066     bra.w      $19f6
001992: 7001         moveq      #$1, d0
001994: 2d409cf2     move.l     d0, -$630e(a6)
001998: 6000005c     bra.w      $19f6
00199c: 61000524     bsr.w      $1ec2
0019a0: 7000         moveq      #$0, d0
0019a2: 610049c0     bsr.w      $6364
0019a6: 6000004e     bra.w      $19f6
0019aa: 4aaea4e8     tst.l      -$5b18(a6)
0019ae: 6d000014     blt.w      $19c4
0019b2: 7000         moveq      #$0, d0
0019b4: 6100176a     bsr.w      $3120
0019b8: 2217         move.l     (a7), d1
0019ba: 41fa0cf5     lea.l      $26b1(pc), a0
0019be: 2008         move.l     a0, d0
0019c0: 61003f6c     bsr.w      $592e
0019c4: 7001         moveq      #$1, d0
0019c6: 6100499c     bsr.w      $6364
0019ca: 6000002a     bra.w      $19f6
0019ce: 2017         move.l     (a7), d0
0019d0: 0c80000000ff cmpi.l     #$ff, d0
0019d6: 6200ffd2     bhi.w      $19aa
0019da: 0c00003f     cmpi.b     #$3f, d0
0019de: 6700ffbc     beq.w      $199c
0019e2: 0c000067     cmpi.b     #$67, d0
0019e6: 6700ffaa     beq.w      $1992
0019ea: 0c000076     cmpi.b     #$76, d0
0019ee: 6700ff98     beq.w      $1988
0019f2: 6000ffb6     bra.w      $19aa
0019f6: 206f001e     movea.l    $1e(a7), a0
0019fa: 5290         addq.l     #$1, (a0)
0019fc: 2050         movea.l    (a0), a0
0019fe: 1010         move.b     (a0), d0
001a00: 49c0         extb.l     d0
001a02: 2e80         move.l     d0, (a7)
001a04: 6600ff7e     bne.w      $1984
001a08: 53af001a     subq.l     #$1, $1a(a7)
001a0c: 6f000014     ble.w      $1a22
001a10: 58af001e     addq.l     #$4, $1e(a7)
001a14: 206f001e     movea.l    $1e(a7), a0
001a18: 2050         movea.l    (a0), a0
001a1a: 0c10002d     cmpi.b     #$2d, (a0)
001a1e: 6700ff60     beq.w      $1980
001a22: 7002         moveq      #$2, d0
001a24: b0aea4e8     cmp.l      -$5b18(a6), d0
001a28: 6e000012     bgt.w      $1a3c
001a2c: 7002         moveq      #$2, d0
001a2e: 610016f0     bsr.w      $3120
001a32: 41fa0c92     lea.l      $26c6(pc), a0
001a36: 2008         move.l     a0, d0
001a38: 61003ef4     bsr.w      $592e
001a3c: 41fb0170ffffe850 lea.l      $ffffe850(a16, invalid.w), a0
001a44: 2008         move.l     a0, d0
001a46: 61003a3a     bsr.w      $5482
001a4a: 41ee80e6     lea.l      -$7f1a(a6), a0
001a4e: 2008         move.l     a0, d0
001a50: 61001386     bsr.w      $2dd8
001a54: 4a80         tst.l      d0
001a56: 67000020     beq.w      $1a78
001a5a: 4aaea4e8     tst.l      -$5b18(a6)
001a5e: 6d000012     blt.w      $1a72
001a62: 7000         moveq      #$0, d0
001a64: 610016ba     bsr.w      $3120
001a68: 41fa0c6f     lea.l      $26d9(pc), a0
001a6c: 2008         move.l     a0, d0
001a6e: 61003ebe     bsr.w      $592e
001a72: 70ff         moveq      #$ff, d0
001a74: 610048ee     bsr.w      $6364
001a78: 7203         moveq      #$3, d1
001a7a: 41fa0c7e     lea.l      $26fa(pc), a0
001a7e: 2008         move.l     a0, d0
001a80: 61002fe0     bsr.w      $4a62
001a84: 2d409ce2     move.l     d0, -$631e(a6)
001a88: 72ff         moveq      #$ff, d1
001a8a: b280         cmp.l      d0, d1
001a8c: 66000020     bne.w      $1aae
001a90: 4aaea4e8     tst.l      -$5b18(a6)
001a94: 6d000012     blt.w      $1aa8
001a98: 7000         moveq      #$0, d0
001a9a: 61001684     bsr.w      $3120
001a9e: 41fa0c60     lea.l      $2700(pc), a0
001aa2: 2008         move.l     a0, d0
001aa4: 61003e88     bsr.w      $592e
001aa8: 70ff         moveq      #$ff, d0
001aaa: 610048b8     bsr.w      $6364
001aae: 48782030     pea.l      $2030.w
001ab2: 222e9ce2     move.l     -$631e(a6), d1
001ab6: 203c00007f0c move.l     #$7f0c, d0
001abc: 610029ee     bsr.w      $44ac
001ac0: 588f         addq.l     #$4, a7
001ac2: 72ff         moveq      #$ff, d1
001ac4: b280         cmp.l      d0, d1
001ac6: 6600001a     bne.w      $1ae2
001aca: 4aaea4e8     tst.l      -$5b18(a6)
001ace: 6d000012     blt.w      $1ae2
001ad2: 7000         moveq      #$0, d0
001ad4: 6100164a     bsr.w      $3120
001ad8: 41fa0c42     lea.l      $271c(pc), a0
001adc: 2008         move.l     a0, d0
001ade: 61003e4e     bsr.w      $592e
001ae2: 7203         moveq      #$3, d1
001ae4: 41fa0c5f     lea.l      $2745(pc), a0
001ae8: 2008         move.l     a0, d0
001aea: 61002f76     bsr.w      $4a62
001aee: 2d409ce6     move.l     d0, -$631a(a6)
001af2: 72ff         moveq      #$ff, d1
001af4: b280         cmp.l      d0, d1
001af6: 66000020     bne.w      $1b18
001afa: 4aaea4e8     tst.l      -$5b18(a6)
001afe: 6d000012     blt.w      $1b12
001b02: 7000         moveq      #$0, d0
001b04: 6100161a     bsr.w      $3120
001b08: 41fa0c40     lea.l      $274a(pc), a0
001b0c: 2008         move.l     a0, d0
001b0e: 61003e1e     bsr.w      $592e
001b12: 70ff         moveq      #$ff, d0
001b14: 6100484e     bsr.w      $6364
001b18: 42a7         clr.l      -(a7)
001b1a: 222e9ce6     move.l     -$631a(a6), d1
001b1e: 203c00007f44 move.l     #$7f44, d0
001b24: 61002986     bsr.w      $44ac
001b28: 588f         addq.l     #$4, a7
001b2a: 72ff         moveq      #$ff, d1
001b2c: b280         cmp.l      d0, d1
001b2e: 66000020     bne.w      $1b50
001b32: 4aaea4e8     tst.l      -$5b18(a6)
001b36: 6d000012     blt.w      $1b4a
001b3a: 7000         moveq      #$0, d0
001b3c: 610015e2     bsr.w      $3120
001b40: 41fa0c23     lea.l      $2765(pc), a0
001b44: 2008         move.l     a0, d0
001b46: 61003de6     bsr.w      $592e
001b4a: 70ff         moveq      #$ff, d0
001b4c: 61004816     bsr.w      $6364
001b50: 610012ba     bsr.w      $2e0c
001b54: 4a80         tst.l      d0
001b56: 67000020     beq.w      $1b78
001b5a: 4aaea4e8     tst.l      -$5b18(a6)
001b5e: 6d000012     blt.w      $1b72
001b62: 7000         moveq      #$0, d0
001b64: 610015ba     bsr.w      $3120
001b68: 41fa0c26     lea.l      $2790(pc), a0
001b6c: 2008         move.l     a0, d0
001b6e: 61003dbe     bsr.w      $592e
001b72: 70ff         moveq      #$ff, d0
001b74: 610047ee     bsr.w      $6364
001b78: 7002         moveq      #$2, d0
001b7a: b0aea4e8     cmp.l      -$5b18(a6), d0
001b7e: 6e000012     bgt.w      $1b92
001b82: 7002         moveq      #$2, d0
001b84: 6100159a     bsr.w      $3120
001b88: 41fa0c29     lea.l      $27b3(pc), a0
001b8c: 2008         move.l     a0, d0
001b8e: 61003d9e     bsr.w      $592e
001b92: 3d7c1bf680ea move.w     #$1bf6, -$7f16(a6)
001b98: 3d7c000180ec move.w     #$1, -$7f14(a6)
001b9e: 61001c32     bsr.w      $37d2
001ba2: 7201         moveq      #$1, d1
001ba4: b280         cmp.l      d0, d1
001ba6: 6700002c     beq.w      $1bd4
001baa: 7001         moveq      #$1, d0
001bac: 61001c7a     bsr.w      $3828
001bb0: 4a80         tst.l      d0
001bb2: 67000020     beq.w      $1bd4
001bb6: 4aaea4e8     tst.l      -$5b18(a6)
001bba: 6d000012     blt.w      $1bce
001bbe: 7000         moveq      #$0, d0
001bc0: 6100155e     bsr.w      $3120
001bc4: 41fa0c0b     lea.l      $27d1(pc), a0
001bc8: 2008         move.l     a0, d0
001bca: 61003d62     bsr.w      $592e
001bce: 70ff         moveq      #$ff, d0
001bd0: 61004792     bsr.w      $6364
001bd4: 7002         moveq      #$2, d0
001bd6: b0aea4e8     cmp.l      -$5b18(a6), d0
001bda: 6e000012     bgt.w      $1bee
001bde: 7002         moveq      #$2, d0
001be0: 6100153e     bsr.w      $3120
001be4: 41fa0c13     lea.l      $27f9(pc), a0
001be8: 2008         move.l     a0, d0
001bea: 61003d42     bsr.w      $592e
001bee: 4878000a     pea.l      $a.w
001bf2: 48780023     pea.l      $23.w
001bf6: 7201         moveq      #$1, d1
001bf8: 41fa0c28     lea.l      $2822(pc), a0
001bfc: 2008         move.l     a0, d0
001bfe: 61003006     bsr.w      $4c06
001c02: 508f         addq.l     #$8, a7
001c04: 2d409cea     move.l     d0, -$6316(a6)
001c08: 72ff         moveq      #$ff, d1
001c0a: b280         cmp.l      d0, d1
001c0c: 66000026     bne.w      $1c34
001c10: 4aaea4e8     tst.l      -$5b18(a6)
001c14: 6d000018     blt.w      $1c2e
001c18: 7000         moveq      #$0, d0
001c1a: 61001504     bsr.w      $3120
001c1e: 41fa0c1c     lea.l      $283c(pc), a0
001c22: 2208         move.l     a0, d1
001c24: 41fa0c30     lea.l      $2856(pc), a0
001c28: 2008         move.l     a0, d0
001c2a: 61003d02     bsr.w      $592e
001c2e: 70ff         moveq      #$ff, d0
001c30: 61004732     bsr.w      $6364
001c34: 7002         moveq      #$2, d0
001c36: b0aea4e8     cmp.l      -$5b18(a6), d0
001c3a: 6e000012     bgt.w      $1c4e
001c3e: 7002         moveq      #$2, d0
001c40: 610014de     bsr.w      $3120
001c44: 41fa0c2c     lea.l      $2872(pc), a0
001c48: 2008         move.l     a0, d0
001c4a: 61003ce2     bsr.w      $592e
001c4e: 42ae9cee     clr.l      -$6312(a6)
001c52: 61004678     bsr.w      $62cc
001c56: 2f40000c     move.l     d0, $c(a7)
001c5a: 7203         moveq      #$3, d1
001c5c: 41fa0c32     lea.l      $2890(pc), a0
001c60: 2008         move.l     a0, d0
001c62: 61002fa2     bsr.w      $4c06
001c66: 2f400008     move.l     d0, $8(a7)
001c6a: 72ff         moveq      #$ff, d1
001c6c: b280         cmp.l      d0, d1
001c6e: 66000020     bne.w      $1c90
001c72: 7002         moveq      #$2, d0
001c74: b0aea4e8     cmp.l      -$5b18(a6), d0
001c78: 6e000012     bgt.w      $1c8c
001c7c: 7002         moveq      #$2, d0
001c7e: 610014a0     bsr.w      $3120
001c82: 41fa0c19     lea.l      $289d(pc), a0
001c86: 2008         move.l     a0, d0
001c88: 61003ca4     bsr.w      $592e
001c8c: 60000038     bra.w      $1cc6
001c90: 48780004     pea.l      $4.w
001c94: 41ef0010     lea.l      $10(a7), a0
001c98: 2208         move.l     a0, d1
001c9a: 202f000c     move.l     $c(a7), d0
001c9e: 61003cf2     bsr.w      $5992
001ca2: 588f         addq.l     #$4, a7
001ca4: 7204         moveq      #$4, d1
001ca6: b280         cmp.l      d0, d1
001ca8: 6700001c     beq.w      $1cc6
001cac: 7002         moveq      #$2, d0
001cae: b0aea4e8     cmp.l      -$5b18(a6), d0
001cb2: 6e000012     bgt.w      $1cc6
001cb6: 7002         moveq      #$2, d0
001cb8: 61001466     bsr.w      $3120
001cbc: 41fa0c02     lea.l      $28c0(pc), a0
001cc0: 2008         move.l     a0, d0
001cc2: 61003c6a     bsr.w      $592e
001cc6: 42af0016     clr.l      $16(a7)
001cca: 7002         moveq      #$2, d0
001ccc: b0aea4e8     cmp.l      -$5b18(a6), d0
001cd0: 6e000012     bgt.w      $1ce4
001cd4: 7002         moveq      #$2, d0
001cd6: 61001448     bsr.w      $3120
001cda: 41fa0c05     lea.l      $28e1(pc), a0
001cde: 2008         move.l     a0, d0
001ce0: 61003c4c     bsr.w      $592e
001ce4: 7002         moveq      #$2, d0
001ce6: b0aea4e8     cmp.l      -$5b18(a6), d0
001cea: 6e000012     bgt.w      $1cfe
001cee: 7002         moveq      #$2, d0
001cf0: 6100142e     bsr.w      $3120
001cf4: 41fa0bf8     lea.l      $28ee(pc), a0
001cf8: 2008         move.l     a0, d0
001cfa: 61003c32     bsr.w      $592e
001cfe: 7002         moveq      #$2, d0
001d00: b0aea4e8     cmp.l      -$5b18(a6), d0
001d04: 6e000012     bgt.w      $1d18
001d08: 7002         moveq      #$2, d0
001d0a: 61001414     bsr.w      $3120
001d0e: 41fa0bf7     lea.l      $2907(pc), a0
001d12: 2008         move.l     a0, d0
001d14: 61003c18     bsr.w      $592e
001d18: 6100e672     bsr.w      $38c
001d1c: 7002         moveq      #$2, d0
001d1e: b0aea4e8     cmp.l      -$5b18(a6), d0
001d22: 6e000012     bgt.w      $1d36
001d26: 7002         moveq      #$2, d0
001d28: 610013f6     bsr.w      $3120
001d2c: 41fa0bf3     lea.l      $2921(pc), a0
001d30: 2008         move.l     a0, d0
001d32: 61003bfa     bsr.w      $592e
001d36: 6100e5fc     bsr.w      $334
001d3a: 3f400010     move.w     d0, $10(a7)
001d3e: 7200         moveq      #$0, d1
001d40: 3200         move.w     d0, d1
001d42: 70ff         moveq      #$ff, d0
001d44: b081         cmp.l      d1, d0
001d46: 67000162     beq.w      $1eaa
001d4a: 7002         moveq      #$2, d0
001d4c: b0aea4e8     cmp.l      -$5b18(a6), d0
001d50: 6e000012     bgt.w      $1d64
001d54: 7002         moveq      #$2, d0
001d56: 610013c8     bsr.w      $3120
001d5a: 41fa0bda     lea.l      $2936(pc), a0
001d5e: 2008         move.l     a0, d0
001d60: 61003bcc     bsr.w      $592e
001d64: 41ee80e6     lea.l      -$7f1a(a6), a0
001d68: 2208         move.l     a0, d1
001d6a: 7000         moveq      #$0, d0
001d6c: 302f0010     move.w     $10(a7), d0
001d70: 6100e648     bsr.w      $3ba
001d74: 2f400012     move.l     d0, $12(a7)
001d78: 7002         moveq      #$2, d0
001d7a: b0aea4e8     cmp.l      -$5b18(a6), d0
001d7e: 6e000016     bgt.w      $1d96
001d82: 7002         moveq      #$2, d0
001d84: 6100139a     bsr.w      $3120
001d88: 222f0012     move.l     $12(a7), d1
001d8c: 41fa0bc1     lea.l      $294f(pc), a0
001d90: 2008         move.l     a0, d0
001d92: 61003b9a     bsr.w      $592e
001d96: 7001         moveq      #$1, d0
001d98: b0af0012     cmp.l      $12(a7), d0
001d9c: 6700010c     beq.w      $1eaa
001da0: 222f0016     move.l     $16(a7), d1
001da4: 202f0012     move.l     $12(a7), d0
001da8: 6100e6fc     bsr.w      $4a6
001dac: 2f400016     move.l     d0, $16(a7)
001db0: 7002         moveq      #$2, d0
001db2: b0aea4e8     cmp.l      -$5b18(a6), d0
001db6: 6e00001c     bgt.w      $1dd4
001dba: 7002         moveq      #$2, d0
001dbc: 61001362     bsr.w      $3120
001dc0: 2f2f0016     move.l     $16(a7), -(a7)
001dc4: 222f0016     move.l     $16(a7), d1
001dc8: 41fa0bb5     lea.l      $297f(pc), a0
001dcc: 2008         move.l     a0, d0
001dce: 61003b5e     bsr.w      $592e
001dd2: 588f         addq.l     #$4, a7
001dd4: 7001         moveq      #$1, d0
001dd6: b0af0016     cmp.l      $16(a7), d0
001dda: 660000ce     bne.w      $1eaa
001dde: 7002         moveq      #$2, d0
001de0: b0aea4e8     cmp.l      -$5b18(a6), d0
001de4: 6e000012     bgt.w      $1df8
001de8: 7002         moveq      #$2, d0
001dea: 61001334     bsr.w      $3120
001dee: 41fa0bbd     lea.l      $29ad(pc), a0
001df2: 2008         move.l     a0, d0
001df4: 61003b38     bsr.w      $592e
001df8: 202e9cea     move.l     -$6316(a6), d0
001dfc: 61003ba8     bsr.w      $59a6
001e00: 7009         moveq      #$9, d0
001e02: 61002a22     bsr.w      $4826
001e06: 72ff         moveq      #$ff, d1
001e08: b280         cmp.l      d0, d1
001e0a: 6600001a     bne.w      $1e26
001e0e: 4aaea4e8     tst.l      -$5b18(a6)
001e12: 6d000012     blt.w      $1e26
001e16: 7000         moveq      #$0, d0
001e18: 61001306     bsr.w      $3120
001e1c: 41fa0bbe     lea.l      $29dc(pc), a0
001e20: 2008         move.l     a0, d0
001e22: 61003b0a     bsr.w      $592e
001e26: 700b         moveq      #$b, d0
001e28: 610029fc     bsr.w      $4826
001e2c: 72ff         moveq      #$ff, d1
001e2e: b280         cmp.l      d0, d1
001e30: 6600001a     bne.w      $1e4c
001e34: 4aaea4e8     tst.l      -$5b18(a6)
001e38: 6d000012     blt.w      $1e4c
001e3c: 7000         moveq      #$0, d0
001e3e: 610012e0     bsr.w      $3120
001e42: 41fa0bba     lea.l      $29fe(pc), a0
001e46: 2008         move.l     a0, d0
001e48: 61003ae4     bsr.w      $592e
001e4c: 700a         moveq      #$a, d0
001e4e: 610029d6     bsr.w      $4826
001e52: 72ff         moveq      #$ff, d1
001e54: b280         cmp.l      d0, d1
001e56: 6600001a     bne.w      $1e72
001e5a: 4aaea4e8     tst.l      -$5b18(a6)
001e5e: 6d000012     blt.w      $1e72
001e62: 7000         moveq      #$0, d0
001e64: 610012ba     bsr.w      $3120
001e68: 41fa0bb4     lea.l      $2a1e(pc), a0
001e6c: 2008         move.l     a0, d0
001e6e: 61003abe     bsr.w      $592e
001e72: 42a7         clr.l      -(a7)
001e74: 222e9ce2     move.l     -$631e(a6), d1
001e78: 203c00007f32 move.l     #$7f32, d0
001e7e: 6100262c     bsr.w      $44ac
001e82: 588f         addq.l     #$4, a7
001e84: 72ff         moveq      #$ff, d1
001e86: b280         cmp.l      d0, d1
001e88: 6600001a     bne.w      $1ea4
001e8c: 4aaea4e8     tst.l      -$5b18(a6)
001e90: 6d000012     blt.w      $1ea4
001e94: 7000         moveq      #$0, d0
001e96: 61001288     bsr.w      $3120
001e9a: 41fa0ba3     lea.l      $2a3f(pc), a0
001e9e: 2008         move.l     a0, d0
001ea0: 61003a8c     bsr.w      $592e
001ea4: 7000         moveq      #$0, d0
001ea6: 610044bc     bsr.w      $6364
001eaa: 6000fe52     bra.w      $1cfe
001eae: 7000         moveq      #$0, d0
001eb0: 610044b2     bsr.w      $6364
001eb4: 4fef001a     lea.l      $1a(a7), a7
001eb8: 4ced0100fffc movem.l    -$4(a5), a0
001ebe: 4e5d         unlk       a5
001ec0: 4e75         rts        
001ec2: 4e550000     link.w     a5, #$0
001ec6: 48e78080     movem.l    d0/a0, -(a7)
001eca: 41fa0b84     lea.l      $2a50(pc), a0
001ece: 2008         move.l     a0, d0
001ed0: 61003a5c     bsr.w      $592e
001ed4: 41fa0b90     lea.l      $2a66(pc), a0
001ed8: 2008         move.l     a0, d0
001eda: 61003a52     bsr.w      $592e
001ede: 41fa0b90     lea.l      $2a70(pc), a0
001ee2: 2008         move.l     a0, d0
001ee4: 61003a48     bsr.w      $592e
001ee8: 41fa0ba5     lea.l      $2a8f(pc), a0
001eec: 2008         move.l     a0, d0
001eee: 61003a3e     bsr.w      $592e
001ef2: 41fa0bca     lea.l      $2abe(pc), a0
001ef6: 2008         move.l     a0, d0
001ef8: 61003a34     bsr.w      $592e
001efc: 4ced0100fffc movem.l    -$4(a5), a0
001f02: 4e5d         unlk       a5
001f04: 4e75         rts        
001f06: 4e550000     link.w     a5, #$0
001f0a: 48e7f8c0     movem.l    d0-d4/a0-a1, -(a7)
001f0e: 4fefffe0     lea.l      -$20(a7), a7
001f12: 206f0020     movea.l    $20(a7), a0
001f16: 226f0020     movea.l    $20(a7), a1
001f1a: 22280010     move.l     $10(a0), d1
001f1e: 20290008     move.l     $8(a1), d0
001f22: 61ff00004c0e bsr.l      $6b32
001f28: 61ff00004d7c bsr.l      $6ca6
001f2e: 7600         moveq      #$0, d3
001f30: 243c40000000 move.l     #$40000000, d2
001f36: 61ff000053c4 bsr.l      $72fc
001f3c: 61ff00004d88 bsr.l      $6cc6
001f42: 2f40001c     move.l     d0, $1c(a7)
001f46: 206f0020     movea.l    $20(a7), a0
001f4a: 226f0020     movea.l    $20(a7), a1
001f4e: 22280010     move.l     $10(a0), d1
001f52: 20290008     move.l     $8(a1), d0
001f56: 61ff00004bea bsr.l      $6b42
001f5c: 61ff00004d48 bsr.l      $6ca6
001f62: 7600         moveq      #$0, d3
001f64: 243c40000000 move.l     #$40000000, d2
001f6a: 61ff00005390 bsr.l      $72fc
001f70: 61ff00004d54 bsr.l      $6cc6
001f76: 2f400018     move.l     d0, $18(a7)
001f7a: 206f0020     movea.l    $20(a7), a0
001f7e: 226f0020     movea.l    $20(a7), a1
001f82: 2228000c     move.l     $c(a0), d1
001f86: 2029000c     move.l     $c(a1), d0
001f8a: 61ff00004bc6 bsr.l      $6b52
001f90: 2800         move.l     d0, d4
001f92: 222f0018     move.l     $18(a7), d1
001f96: 202f0018     move.l     $18(a7), d0
001f9a: 61ff00004bb6 bsr.l      $6b52
001fa0: 2204         move.l     d4, d1
001fa2: 61ff00004b8e bsr.l      $6b32
001fa8: 61ff00004cfc bsr.l      $6ca6
001fae: 61003d1c     bsr.w      $5ccc
001fb2: 61ff00004d12 bsr.l      $6cc6
001fb8: 2f400014     move.l     d0, $14(a7)
001fbc: 222f0014     move.l     $14(a7), d1
001fc0: 202f001c     move.l     $1c(a7), d0
001fc4: 61ff00004b6c bsr.l      $6b32
001fca: 2f400010     move.l     d0, $10(a7)
001fce: 222f0014     move.l     $14(a7), d1
001fd2: 202f001c     move.l     $1c(a7), d0
001fd6: 61ff00004b6a bsr.l      $6b42
001fdc: 2f40000c     move.l     d0, $c(a7)
001fe0: 202f000c     move.l     $c(a7), d0
001fe4: 61ff00004cc0 bsr.l      $6ca6
001fea: 2601         move.l     d1, d3
001fec: 2400         move.l     d0, d2
001fee: 7200         moveq      #$0, d1
001ff0: 203c3ff00000 move.l     #$3ff00000, d0
001ff6: 61ff00005304 bsr.l      $72fc
001ffc: 61ff00004cc8 bsr.l      $6cc6
002002: 206f0024     movea.l    $24(a7), a0
002006: 2080         move.l     d0, (a0)
002008: 202f0010     move.l     $10(a7), d0
00200c: 61ff00004c98 bsr.l      $6ca6
002012: 2601         move.l     d1, d3
002014: 2400         move.l     d0, d2
002016: 7200         moveq      #$0, d1
002018: 203c3ff00000 move.l     #$3ff00000, d0
00201e: 61ff000052dc bsr.l      $72fc
002024: 61ff00004ca0 bsr.l      $6cc6
00202a: 206f0024     movea.l    $24(a7), a0
00202e: 21400004     move.l     d0, $4(a0)
002032: 206f0020     movea.l    $20(a7), a0
002036: 2f68000c0004 move.l     $c(a0), $4(a7)
00203c: 206f0020     movea.l    $20(a7), a0
002040: 22280008     move.l     $8(a0), d1
002044: 202f000c     move.l     $c(a7), d0
002048: 61ff00004af8 bsr.l      $6b42
00204e: 2e80         move.l     d0, (a7)
002050: 4aaf0004     tst.l      $4(a7)
002054: 6c00001a     bge.w      $2070
002058: 202f0004     move.l     $4(a7), d0
00205c: 61ff00004b18 bsr.l      $6b76
002062: 2f400004     move.l     d0, $4(a7)
002066: 2017         move.l     (a7), d0
002068: 61ff00004b0c bsr.l      $6b76
00206e: 2e80         move.l     d0, (a7)
002070: 2217         move.l     (a7), d1
002072: 2017         move.l     (a7), d0
002074: 61ff00004adc bsr.l      $6b52
00207a: 2800         move.l     d0, d4
00207c: 222f0004     move.l     $4(a7), d1
002080: 202f0004     move.l     $4(a7), d0
002084: 61ff00004acc bsr.l      $6b52
00208a: 2204         move.l     d4, d1
00208c: 61ff00004aa4 bsr.l      $6b32
002092: 61ff00004c12 bsr.l      $6ca6
002098: 61003c32     bsr.w      $5ccc
00209c: 61ff00004c28 bsr.l      $6cc6
0020a2: 2f400008     move.l     d0, $8(a7)
0020a6: 4aaf0008     tst.l      $8(a7)
0020aa: 6f000030     ble.w      $20dc
0020ae: 222f0008     move.l     $8(a7), d1
0020b2: 202f0004     move.l     $4(a7), d0
0020b6: 61ff00004aa2 bsr.l      $6b5a
0020bc: 206f0024     movea.l    $24(a7), a0
0020c0: 21400008     move.l     d0, $8(a0)
0020c4: 222f0008     move.l     $8(a7), d1
0020c8: 2017         move.l     (a7), d0
0020ca: 61ff00004a8e bsr.l      $6b5a
0020d0: 206f0024     movea.l    $24(a7), a0
0020d4: 2140000c     move.l     d0, $c(a0)
0020d8: 6000001a     bra.w      $20f4
0020dc: 206f0024     movea.l    $24(a7), a0
0020e0: 217c3f8000000008 move.l     #$3f800000, $8(a0)
0020e8: 206f0024     movea.l    $24(a7), a0
0020ec: 217c00000000000c move.l     #$0, $c(a0)
0020f4: 4fef0020     lea.l      $20(a7), a7
0020f8: 4ced031cffec movem.l    -$14(a5), d2-d4/a0-a1
0020fe: 4e5d         unlk       a5
002100: 4e75         rts        
002102: 4afb         .dc.w      $4afb
002104: 09d8         bset.b     d4, (a0)+
002106: 5369676e     subq.w     #$1, $676e(a1)
00210a: 616c         bsr.b      $2178
00210c: 2062         movea.l    -(a2), a0
00210e: 7566         .dc.w      $7566
002110: 6665         bne.b      $2177
002112: 7220         moveq      #$20, d1
002114: 6f76         ble.b      $218c
002116: 6572         bcs.b      $218a
002118: 666c         bne.b      $2186
00211a: 6f77         ble.b      $2193
00211c: 0d00         btst.l     d6, d0
00211e: 5369676e     subq.w     #$1, $676e(a1)
002122: 616c         bsr.b      $2190
002124: 3a20         move.w     -(a0), d5
002126: 25356420     move.l     $20(a5, d6.w), -(a2)
00212a: 20307825     move.l     $25(a0, d7.l), d0
00212e: 3034780d     move.w     $d(a4, d7.l), d0
002132: 00536967     ori.w      #$6967, (a3)
002136: 6e61         bgt.b      $2199
002138: 6c20         bge.b      $215a
00213a: 6e6f         bgt.b      $21ab
00213c: 7420         moveq      #$20, d2
00213e: 666f         bne.b      $21af
002140: 756e         .dc.w      $756e
002142: 643a         bcc.b      $217e
002144: 2025         move.l     -(a5), d0
002146: 35642020     move.w     -(a4), $2020(a2)
00214a: 30782530     movea.w    $2530.w, a0
00214e: 34780d00     movea.w    $d00.w, a2
002152: 4576         .dc.w      $4576
002154: 656e         bcs.b      $21c4
002156: 7420         moveq      #$20, d2
002158: 6e6f         bgt.b      $21c9
00215a: 7420         moveq      #$20, d2
00215c: 666f         bne.b      $21cd
00215e: 756e         .dc.w      $756e
002160: 643a         bcc.b      $219c
002162: 2025         move.l     -(a5), d0
002164: 730d         .dc.w      $730d
002166: 004e         .dc.w      $004e
002168: 6578         bcs.b      $21e2
00216a: 7420         moveq      #$20, d2
00216c: 53746174653a0025 subq.w     #$1, $653a0025(a4, invalid.w)
002174: 7320         .dc.w      $7320
002176: 25730d004661 move.l     (a3, d0.l * 4), $4661(a2)
00217c: 696c         bvs.b      $21ea
00217e: 6564         bcs.b      $21e4
002180: 20746f207570 movea.l    $7570(a4, d6.l * 8), a0
002186: 6461         bcc.b      $21e9
002188: 7465         moveq      #$65, d2
00218a: 2043         movea.l    d3, a0
00218c: 7573         .dc.w      $7573
00218e: 746f         moveq      #$6f, d2
002190: 6d65         blt.b      $21f7
002192: 7220         moveq      #$20, d1
002194: 4964         .dc.w      $4964
002196: 2042         movea.l    d2, a0
002198: 6c6f         bge.b      $2209
00219a: 636b         bls.b      $2207
00219c: 0d00         btst.l     d6, d0
00219e: 4375         .dc.w      $4375
0021a0: 7374         .dc.w      $7374
0021a2: 6f6d         ble.b      $2211
0021a4: 6572         bcs.b      $2218
0021a6: 2049         movea.l    a1, a0
0021a8: 6420         bcc.b      $21ca
0021aa: 426c6f63     clr.w      $6f63(a4)
0021ae: 6b20         bmi.b      $21d0
0021b0: 7570         .dc.w      $7570
0021b2: 6461         bcc.b      $2215
0021b4: 7465         moveq      #$65, d2
0021b6: 640d         bcc.b      $21c5
0021b8: 00466169     ori.w      #$6169, d6
0021bc: 6c65         bge.b      $2223
0021be: 6420         bcc.b      $21e0
0021c0: 746f         moveq      #$6f, d2
0021c2: 20757064     movea.l    $64(a5, d7.w), a0
0021c6: 6174         bsr.b      $223c
0021c8: 6520         bcs.b      $21ea
0021ca: 6e6f         bgt.b      $223b
0021cc: 6e76         bgt.b      $2244
0021ce: 6f6c         ble.b      $223c
0021d0: 6174         bsr.b      $2246
0021d2: 696c         bvs.b      $2240
0021d4: 6520         bcs.b      $21f6
0021d6: 6461         bcc.b      $2239
0021d8: 7461         moveq      #$61, d2
0021da: 0d00         btst.l     d6, d0
0021dc: 4e6f         move       usp, a7
0021de: 6e76         bgt.b      $2256
0021e0: 6f6c         ble.b      $224e
0021e2: 6174         bsr.b      $2258
0021e4: 696c         bvs.b      $2252
0021e6: 6520         bcs.b      $2208
0021e8: 6461         bcc.b      $224b
0021ea: 7461         moveq      #$61, d2
0021ec: 20757064     movea.l    $64(a5, d7.w), a0
0021f0: 6174         bsr.b      $2266
0021f2: 6564         bcs.b      $2258
0021f4: 0d00         btst.l     d6, d0
0021f6: 4661         not.w      -(a1)
0021f8: 696c         bvs.b      $2266
0021fa: 6564         bcs.b      $2260
0021fc: 20746f206765 movea.l    $6765(a4, d6.l * 8), a0
002202: 7420         moveq      #$20, d2
002204: 4375         .dc.w      $4375
002206: 7374         .dc.w      $7374
002208: 2e20         move.l     -(a0), d7
00220a: 4964         .dc.w      $4964
00220c: 2e20         move.l     -(a0), d7
00220e: 426c6f63     clr.w      $6f63(a4)
002212: 6b2e         bmi.b      $2242
002214: 2e2e2e0d     move.l     $2e0d(a6), d7
002218: 002d4d002d54 ori.b      #$0, $2d54(a5)
00221e: 00556e6b     ori.w      #$6e6b, (a5)
002222: 6e6f         bgt.b      $2293
002224: 776e         .dc.w      $776e
002226: 2047         movea.l    d7, a0
002228: 5053         addq.w     #$8, (a3)
00222a: 20726563656976657220 movea.l    ([$6569, a2], $76657220), a0
002234: 7479         moveq      #$79, d2
002236: 7065         moveq      #$65, d0
002238: 2e2e2e2e     move.l     $2e2e(a6), d7
00223c: 0d00         btst.l     d6, d0
00223e: 4361         .dc.w      $4361
002240: 6e6e         bgt.b      $22b0
002242: 6f74         ble.b      $22b8
002244: 2070757420677073 movea.l    $20677073(a0, invalid.w), a0
00224c: 2064         movea.l    -(a4), a0
00224e: 6576         bcs.b      $22c6
002250: 6963         bvs.b      $22b5
002252: 6520         bcs.b      $2274
002254: 696e         bvs.b      $22c4
002256: 206e6f72     movea.l    $6f72(a6), a0
00225a: 6d61         blt.b      $22bd
00225c: 6c20         bge.b      $227e
00225e: 6d6f         blt.b      $22cf
002260: 6465         bcc.b      $22c7
002262: 2e2e2e0d     move.l     $2e0d(a6), d7
002266: 0064705f     ori.w      #$705f, -(a4)
00226a: 6770         beq.b      $22dc
00226c: 7300         .dc.w      $7300
00226e: 2d7800466f72 move.l     $46.w, $6f72(a6)
002274: 6b69         bmi.b      $22df
002276: 6e67         bgt.b      $22df
002278: 2025         move.l     -(a5), d0
00227a: 7320         .dc.w      $7320
00227c: 6661         bne.b      $22df
00227e: 696c         bvs.b      $22ec
002280: 6564         bcs.b      $22e6
002282: 2e2e2e2e     move.l     $2e2e(a6), d7
002286: 0d00         btst.l     d6, d0
002288: 6578         bcs.b      $2302
00228a: 6365         bls.b      $22f1
00228c: 7074         moveq      #$74, d0
00228e: 696f         bvs.b      $22ff
002290: 6e20         bgt.b      $22b2
002292: 6f63         ble.b      $22f7
002294: 6375         bls.b      $230b
002296: 7272         moveq      #$72, d1
002298: 6564         bcs.b      $22fe
00229a: 20696e20     movea.l    $6e20(a1), a0
00229e: 6470         bcc.b      $2310
0022a0: 5f67         subq.w     #$7, -(a7)
0022a2: 7073         moveq      #$73, d0
0022a4: 2e2e2e2e     move.l     $2e2e(a6), d7
0022a8: 0d00         btst.l     d6, d0
0022aa: 6b69         bmi.b      $2315
0022ac: 6c6c         bge.b      $231a
0022ae: 6564         bcs.b      $2314
0022b0: 2070726f     movea.l    $6f(a0, d7.w), a0
0022b4: 6365         bls.b      $231b
0022b6: 7373         .dc.w      $7373
0022b8: 2025         move.l     -(a5), d0
0022ba: 642e         bcc.b      $22ea
0022bc: 2e0d         move.l     a5, d7
0022be: 0043616e     ori.w      #$616e, d3
0022c2: 6e6f         bgt.b      $2333
0022c4: 7420         moveq      #$20, d2
0022c6: 7075         moveq      #$75, d0
0022c8: 7420         moveq      #$20, d2
0022ca: 6770         beq.b      $233c
0022cc: 7320         .dc.w      $7320
0022ce: 6465         bcc.b      $2335
0022d0: 7669         moveq      #$69, d3
0022d2: 6365         bls.b      $2339
0022d4: 20696e20     movea.l    $6e20(a1), a0
0022d8: 6469         bcc.b      $2343
0022da: 6167         bsr.b      $2343
0022dc: 6e6f         bgt.b      $234d
0022de: 7365         .dc.w      $7365
0022e0: 206d6f64     movea.l    $6f64(a5), a0
0022e4: 652e         bcs.b      $2314
0022e6: 2e2e0d00     move.l     $d00(a6), d7
0022ea: 4361         .dc.w      $4361
0022ec: 6e6e         bgt.b      $235c
0022ee: 6f74         ble.b      $2364
0022f0: 2067         movea.l    -(a7), a0
0022f2: 6574         bcs.b      $2368
0022f4: 2073797374656d20636f6e66 movea.l    ([$74656d20, a3], $636f6e66), a0
002300: 6967         bvs.b      $2369
002302: 7572         .dc.w      $7572
002304: 6174         bsr.b      $237a
002306: 696f         bvs.b      $2377
002308: 6e20         bgt.b      $232a
00230a: 7365         .dc.w      $7365
00230c: 7474         moveq      #$74, d2
00230e: 696e         bvs.b      $237e
002310: 6773         beq.b      $2385
002312: 2e2e2e0d     move.l     $2e0d(a6), d7
002316: 0043616e     ori.w      #$616e, d3
00231a: 6e6f         bgt.b      $238b
00231c: 7420         moveq      #$20, d2
00231e: 7265         moveq      #$65, d1
002320: 6164         bsr.b      $2386
002322: 206e6f6e     movea.l    $6f6e(a6), a0
002326: 20766f6c6174 movea.l    $6174(a6, invalid.w), a0
00232c: 696c         bvs.b      $239a
00232e: 6520         bcs.b      $2350
002330: 7374         .dc.w      $7374
002332: 6f72         ble.b      $23a6
002334: 652e         bcs.b      $2364
002336: 2e2e0d00     move.l     $d00(a6), d7
00233a: 4361         .dc.w      $4361
00233c: 6e6e         bgt.b      $23ac
00233e: 6f74         ble.b      $23b4
002340: 207265616420 movea.l    ([$6420, a2]), a0
002346: 6e6f         bgt.b      $23b7
002348: 6e20         bgt.b      $236a
00234a: 766f         moveq      #$6f, d3
00234c: 6c61         bge.b      $23af
00234e: 7469         moveq      #$69, d2
002350: 6c65         bge.b      $23b7
002352: 2073746f     movea.l    $6f(a3, d7.w), a0
002356: 7265         moveq      #$65, d1
002358: 2e2e2e0d     move.l     $2e0d(a6), d7
00235c: 0043616e     ori.w      #$616e, d3
002360: 6e6f         bgt.b      $23d1
002362: 7420         moveq      #$20, d2
002364: 7772         .dc.w      $7772
002366: 6974         bvs.b      $23dc
002368: 6520         bcs.b      $238a
00236a: 6e6f         bgt.b      $23db
00236c: 6e20         bgt.b      $238e
00236e: 766f         moveq      #$6f, d3
002370: 6c61         bge.b      $23d3
002372: 7469         moveq      #$69, d2
002374: 6c65         bge.b      $23db
002376: 2073746f     movea.l    $6f(a3, d7.w), a0
00237a: 7265         moveq      #$65, d1
00237c: 2e2e2e0d     move.l     $2e0d(a6), d7
002380: 00436f70     ori.w      #$6f70, d3
002384: 7969         .dc.w      $7969
002386: 6e67         bgt.b      $23ef
002388: 20736861     movea.l    $61(a3, d6.l), a0
00238c: 646f         bcc.b      $23fd
00238e: 7720         .dc.w      $7720
002390: 746f         moveq      #$6f, d2
002392: 2045         movea.l    d5, a0
002394: 4550         .dc.w      $4550
002396: 524f         addq.w     #$1, a7
002398: 4d20         chk.l      -(a0), d6
00239a: 6661         bne.b      $23fd
00239c: 696c         bvs.b      $240a
00239e: 6564         bcs.b      $2404
0023a0: 2e2e2e0d     move.l     $2e0d(a6), d7
0023a4: 0043616e     ori.w      #$616e, d3
0023a8: 6e6f         bgt.b      $2419
0023aa: 7420         moveq      #$20, d2
0023ac: 7772         .dc.w      $7772
0023ae: 6974         bvs.b      $2424
0023b0: 6520         bcs.b      $23d2
0023b2: 6368         bls.b      $241c
0023b4: 6172         bsr.b      $2428
0023b6: 6163         bsr.b      $241b
0023b8: 7465         moveq      #$65, d2
0023ba: 7220         moveq      #$20, d1
0023bc: 746f         moveq      #$6f, d2
0023be: 20746865     movea.l    $65(a4, d6.l), a0
0023c2: 2047         movea.l    d7, a0
0023c4: 5053         addq.w     #$8, (a3)
0023c6: 20706f72742e2e2e0d00 movea.l    ([$742e2e2e, a0], $d00), a0
0023d0: 4361         .dc.w      $4361
0023d2: 6e6e         bgt.b      $2442
0023d4: 6f74         ble.b      $244a
0023d6: 207377697463 movea.l    ([$7463, a3]), a0
0023dc: 6820         bvc.b      $23fe
0023de: 56707020     addq.w     #$3, $20(a0, d7.w)
0023e2: 6f6e         ble.b      $2452
0023e4: 2e2e2e0d     move.l     $2e0d(a6), d7
0023e8: 0043616e     ori.w      #$616e, d3
0023ec: 6e6f         bgt.b      $245d
0023ee: 7420         moveq      #$20, d2
0023f0: 7377         .dc.w      $7377
0023f2: 6974         bvs.b      $2468
0023f4: 6368         bls.b      $245e
0023f6: 2056         movea.l    (a6), a0
0023f8: 7070         moveq      #$70, d0
0023fa: 206f6666     movea.l    $6666(a7), a0
0023fe: 2e2e2e0d     move.l     $2e0d(a6), d7
002402: 0049         .dc.w      $0049
002404: 6c6c         bge.b      $2472
002406: 6567         bcs.b      $246f
002408: 616c         bsr.b      $2476
00240a: 2073735f     movea.l    ([a3]), a0
00240e: 7670         moveq      #$70, d3
002410: 705f         moveq      #$5f, d0
002412: 7374         .dc.w      $7374
002414: 6174         bsr.b      $248a
002416: 7573         .dc.w      $7573
002418: 2076616c7565 movea.l    $7565(a6, invalid.w), a0
00241e: 2e2e2e0d     move.l     $2e0d(a6), d7
002422: 00466169     ori.w      #$6169, d6
002426: 6c65         bge.b      $248d
002428: 6420         bcc.b      $244a
00242a: 746f         moveq      #$6f, d2
00242c: 2067         movea.l    -(a7), a0
00242e: 6574         bcs.b      $24a4
002430: 2042         movea.l    d2, a0
002432: 4b53         .dc.w      $4b53
002434: 4e20         .dc.w      $4e20
002436: 7374         .dc.w      $7374
002438: 6174         bsr.b      $24ae
00243a: 7573         .dc.w      $7573
00243c: 2e2e2e2e     move.l     $2e2e(a6), d7
002440: 0d00         btst.l     d6, d0
002442: 4661         not.w      -(a1)
002444: 696c         bvs.b      $24b2
002446: 6564         bcs.b      $24ac
002448: 20746f206765 movea.l    $6765(a4, d6.l * 8), a0
00244e: 7420         moveq      #$20, d2
002450: 56707020     addq.w     #$3, $20(a0, d7.w)
002454: 7374         .dc.w      $7374
002456: 6174         bsr.b      $24cc
002458: 7573         .dc.w      $7573
00245a: 2e2e2e2e     move.l     $2e2e(a6), d7
00245e: 0d00         btst.l     d6, d0
002460: 4361         .dc.w      $4361
002462: 6e6e         bgt.b      $24d2
002464: 6f74         ble.b      $24da
002466: 206c6f67     movea.l    $6f67(a4), a0
00246a: 2065         movea.l    -(a5), a0
00246c: 7272         moveq      #$72, d1
00246e: 6f72         ble.b      $24e2
002470: 2e2e2e0d     move.l     $2e0d(a6), d7
002474: 004f         .dc.w      $004f
002476: 7065         moveq      #$65, d0
002478: 6e69         bgt.b      $24e3
00247a: 6e67         bgt.b      $24e3
00247c: 204e         movea.l    a6, a0
00247e: 565f         addq.w     #$3, (a7)+
002480: 4253         clr.w      (a3)
002482: 575f         subq.w     #$3, (a7)+
002484: 5354         subq.w     #$1, (a4)
002486: 4f52         .dc.w      $4f52
002488: 455f         .dc.w      $455f
00248a: 4944         .dc.w      $4944
00248c: 2066         movea.l    -(a6), a0
00248e: 6169         bsr.b      $24f9
002490: 6c65         bge.b      $24f7
002492: 640d         bcc.b      $24a1
002494: 00536565     ori.w      #$6565, (a3)
002498: 6b69         bmi.b      $2503
00249a: 6e67         bgt.b      $2503
00249c: 20746f205354 movea.l    $5354(a4, d6.l * 8), a0
0024a2: 4f52         .dc.w      $4f52
0024a4: 455f         .dc.w      $455f
0024a6: 4f46         .dc.w      $4f46
0024a8: 4653         not.w      (a3)
0024aa: 4554         .dc.w      $4554
0024ac: 5f4e         subq.w     #$7, a6
0024ae: 5641         addq.w     #$3, d1
0024b0: 4c49         .dc.w      $4c49
0024b2: 4420         neg.b      -(a0)
0024b4: 6661         bne.b      $2517
0024b6: 696c         bvs.b      $2524
0024b8: 6564         bcs.b      $251e
0024ba: 0d00         btst.l     d6, d0
0024bc: 5265         addq.w     #$1, -(a5)
0024be: 6164         bsr.b      $2524
0024c0: 696e         bvs.b      $2530
0024c2: 6720         beq.b      $24e4
0024c4: 276e76616c69 move.l     $7661(a6), $6c69(a3)
0024ca: 6427         bcc.b      $24f3
0024cc: 2066         movea.l    -(a6), a0
0024ce: 726f         moveq      #$6f, d1
0024d0: 6d20         blt.b      $24f2
0024d2: 7374         .dc.w      $7374
0024d4: 6f72         ble.b      $2548
0024d6: 6520         bcs.b      $24f8
0024d8: 6661         bne.b      $253b
0024da: 696c         bvs.b      $2548
0024dc: 6564         bcs.b      $2542
0024de: 0d00         btst.l     d6, d0
0024e0: 5365         subq.w     #$1, -(a5)
0024e2: 656b         bcs.b      $254f
0024e4: 696e         bvs.b      $2554
0024e6: 6720         beq.b      $2508
0024e8: 746f         moveq      #$6f, d2
0024ea: 2053         movea.l    (a3), a0
0024ec: 544f         addq.w     #$2, a7
0024ee: 5245         addq.w     #$1, d5
0024f0: 5f4f         subq.w     #$7, a7
0024f2: 4646         not.w      d6
0024f4: 5345         subq.w     #$1, d5
0024f6: 545f         addq.w     #$2, (a7)+
0024f8: 4e564620     link.w     a6, #$4620
0024fc: 6661         bne.b      $255f
0024fe: 696c         bvs.b      $256c
002500: 6564         bcs.b      $2566
002502: 0d00         btst.l     d6, d0
002504: 5265         addq.w     #$1, -(a5)
002506: 6164         bsr.b      $256c
002508: 696e         bvs.b      $2578
00250a: 6720         beq.b      $252c
00250c: 2753544f     move.l     (a3), $544f(a3)
002510: 5245         addq.w     #$1, d5
002512: 5f4e         subq.w     #$7, a6
002514: 5646         addq.w     #$3, d6
002516: 2720         move.l     -(a0), -(a3)
002518: 6672         bne.b      $258c
00251a: 6f6d         ble.b      $2589
00251c: 2073746f     movea.l    $6f(a3, d7.w), a0
002520: 7265         moveq      #$65, d1
002522: 2066         movea.l    -(a6), a0
002524: 6169         bsr.b      $258f
002526: 6c65         bge.b      $258d
002528: 640d         bcc.b      $2537
00252a: 004f         .dc.w      $004f
00252c: 7065         moveq      #$65, d0
00252e: 6e69         bgt.b      $2599
002530: 6e67         bgt.b      $2599
002532: 204e         movea.l    a6, a0
002534: 565f         addq.w     #$3, (a7)+
002536: 4253         clr.w      (a3)
002538: 575f         subq.w     #$3, (a7)+
00253a: 5354         subq.w     #$1, (a4)
00253c: 4f52         .dc.w      $4f52
00253e: 455f         .dc.w      $455f
002540: 4944         .dc.w      $4944
002542: 2066         movea.l    -(a6), a0
002544: 6169         bsr.b      $25af
002546: 6c65         bge.b      $25ad
002548: 640d         bcc.b      $2557
00254a: 00536565     ori.w      #$6565, (a3)
00254e: 6b69         bmi.b      $25b9
002550: 6e67         bgt.b      $25b9
002552: 20746f205354 movea.l    $5354(a4, d6.l * 8), a0
002558: 4f52         .dc.w      $4f52
00255a: 455f         .dc.w      $455f
00255c: 4f46         .dc.w      $4f46
00255e: 4653         not.w      (a3)
002560: 4554         .dc.w      $4554
002562: 5f4e         subq.w     #$7, a6
002564: 5656         addq.w     #$3, (a6)
002566: 2066         movea.l    -(a6), a0
002568: 6169         bsr.b      $25d3
00256a: 6c65         bge.b      $25d1
00256c: 640d         bcc.b      $257b
00256e: 00526561     ori.w      #$6561, (a2)
002572: 6469         bcc.b      $25dd
002574: 6e67         bgt.b      $25dd
002576: 2027         move.l     -(a7), d0
002578: 5354         subq.w     #$1, (a4)
00257a: 4f52         .dc.w      $4f52
00257c: 455f         .dc.w      $455f
00257e: 4e565627     link.w     a6, #$5627
002582: 2066         movea.l    -(a6), a0
002584: 726f         moveq      #$6f, d1
002586: 6d20         blt.b      $25a8
002588: 7374         .dc.w      $7374
00258a: 6f72         ble.b      $25fe
00258c: 6520         bcs.b      $25ae
00258e: 6661         bne.b      $25f1
002590: 696c         bvs.b      $25fe
002592: 6564         bcs.b      $25f8
002594: 0d00         btst.l     d6, d0
002596: 4f70         .dc.w      $4f70
002598: 656e         bcs.b      $2608
00259a: 696e         bvs.b      $260a
00259c: 6720         beq.b      $25be
00259e: 4e565f42     link.w     a6, #$5f42
0025a2: 5357         subq.w     #$1, (a7)
0025a4: 5f53         subq.w     #$7, (a3)
0025a6: 544f         addq.w     #$2, a7
0025a8: 5245         addq.w     #$1, d5
0025aa: 5f49         subq.w     #$7, a1
0025ac: 4420         neg.b      -(a0)
0025ae: 6661         bne.b      $2611
0025b0: 696c         bvs.b      $261e
0025b2: 6564         bcs.b      $2618
0025b4: 0d00         btst.l     d6, d0
0025b6: 5365         subq.w     #$1, -(a5)
0025b8: 656b         bcs.b      $2625
0025ba: 696e         bvs.b      $262a
0025bc: 6720         beq.b      $25de
0025be: 746f         moveq      #$6f, d2
0025c0: 2053         movea.l    (a3), a0
0025c2: 544f         addq.w     #$2, a7
0025c4: 5245         addq.w     #$1, d5
0025c6: 5f4f         subq.w     #$7, a7
0025c8: 4646         not.w      d6
0025ca: 5345         subq.w     #$1, d5
0025cc: 545f         addq.w     #$2, (a7)+
0025ce: 4e56414c     link.w     a6, #$414c
0025d2: 4944         .dc.w      $4944
0025d4: 2066         movea.l    -(a6), a0
0025d6: 6169         bsr.b      $2641
0025d8: 6c65         bge.b      $263f
0025da: 640d         bcc.b      $25e9
0025dc: 00577269     ori.w      #$7269, (a7)
0025e0: 7469         moveq      #$69, d2
0025e2: 6e67         bgt.b      $264b
0025e4: 2027         move.l     -(a7), d0
0025e6: 6e76         bgt.b      $265e
0025e8: 616c         bsr.b      $2656
0025ea: 6964         bvs.b      $2650
0025ec: 2720         move.l     -(a0), -(a3)
0025ee: 746f         moveq      #$6f, d2
0025f0: 2073746f     movea.l    $6f(a3, d7.w), a0
0025f4: 7265         moveq      #$65, d1
0025f6: 2066         movea.l    -(a6), a0
0025f8: 6169         bsr.b      $2663
0025fa: 6c65         bge.b      $2661
0025fc: 640d         bcc.b      $260b
0025fe: 00536565     ori.w      #$6565, (a3)
002602: 6b69         bmi.b      $266d
002604: 6e67         bgt.b      $266d
002606: 20746f205354 movea.l    $5354(a4, d6.l * 8), a0
00260c: 4f52         .dc.w      $4f52
00260e: 455f         .dc.w      $455f
002610: 4f46         .dc.w      $4f46
002612: 4653         not.w      (a3)
002614: 4554         .dc.w      $4554
002616: 5f4e         subq.w     #$7, a6
002618: 5646         addq.w     #$3, d6
00261a: 2066         movea.l    -(a6), a0
00261c: 6169         bsr.b      $2687
00261e: 6c65         bge.b      $2685
002620: 640d         bcc.b      $262f
002622: 00577269     ori.w      #$7269, (a7)
002626: 7469         moveq      #$69, d2
002628: 6e67         bgt.b      $2691
00262a: 2027         move.l     -(a7), d0
00262c: 5354         subq.w     #$1, (a4)
00262e: 4f52         .dc.w      $4f52
002630: 455f         .dc.w      $455f
002632: 4e564627     link.w     a6, #$4627
002636: 20746f207374 movea.l    $7374(a4, d6.l * 8), a0
00263c: 6f72         ble.b      $26b0
00263e: 6520         bcs.b      $2660
002640: 6661         bne.b      $26a3
002642: 696c         bvs.b      $26b0
002644: 6564         bcs.b      $26aa
002646: 0d00         btst.l     d6, d0
002648: 4f70         .dc.w      $4f70
00264a: 656e         bcs.b      $26ba
00264c: 696e         bvs.b      $26bc
00264e: 6720         beq.b      $2670
002650: 4e565f42     link.w     a6, #$5f42
002654: 5357         subq.w     #$1, (a7)
002656: 5f53         subq.w     #$7, (a3)
002658: 544f         addq.w     #$2, a7
00265a: 5245         addq.w     #$1, d5
00265c: 5f49         subq.w     #$7, a1
00265e: 4420         neg.b      -(a0)
002660: 6661         bne.b      $26c3
002662: 696c         bvs.b      $26d0
002664: 6564         bcs.b      $26ca
002666: 0d00         btst.l     d6, d0
002668: 5365         subq.w     #$1, -(a5)
00266a: 656b         bcs.b      $26d7
00266c: 696e         bvs.b      $26dc
00266e: 6720         beq.b      $2690
002670: 746f         moveq      #$6f, d2
002672: 2053         movea.l    (a3), a0
002674: 544f         addq.w     #$2, a7
002676: 5245         addq.w     #$1, d5
002678: 5f4f         subq.w     #$7, a7
00267a: 4646         not.w      d6
00267c: 5345         subq.w     #$1, d5
00267e: 545f         addq.w     #$2, (a7)+
002680: 4e565620     link.w     a6, #$5620
002684: 6661         bne.b      $26e7
002686: 696c         bvs.b      $26f4
002688: 6564         bcs.b      $26ee
00268a: 0d00         btst.l     d6, d0
00268c: 57726974696e6720 subq.w     #$3, $696e6720(a2, invalid.w)
002694: 2753544f     move.l     (a3), $544f(a3)
002698: 5245         addq.w     #$1, d5
00269a: 5f4e         subq.w     #$7, a6
00269c: 5656         addq.w     #$3, (a6)
00269e: 2720         move.l     -(a0), -(a3)
0026a0: 746f         moveq      #$6f, d2
0026a2: 2073746f     movea.l    $6f(a3, d7.w), a0
0026a6: 7265         moveq      #$65, d1
0026a8: 2066         movea.l    -(a6), a0
0026aa: 6169         bsr.b      $2715
0026ac: 6c65         bge.b      $2713
0026ae: 640d         bcc.b      $26bd
0026b0: 00556e6b     ori.w      #$6e6b, (a5)
0026b4: 6e6f         bgt.b      $2725
0026b6: 776e         .dc.w      $776e
0026b8: 206f7074     movea.l    $7074(a7), a0
0026bc: 696f         bvs.b      $272d
0026be: 6e20         bgt.b      $26e0
0026c0: 2725         move.l     -(a5), -(a3)
0026c2: 6327         bls.b      $26eb
0026c4: 0d00         btst.l     d6, d0
0026c6: 44696167     neg.w      $6167(a1)
0026ca: 20696e69     movea.l    $6e69(a1), a0
0026ce: 7469         moveq      #$69, d2
0026d0: 616c         bsr.b      $273e
0026d2: 697a         bvs.b      $274e
0026d4: 696e         bvs.b      $2744
0026d6: 670d         beq.b      $26e5
0026d8: 0043616e     ori.w      #$616e, d3
0026dc: 6e6f         bgt.b      $274d
0026de: 7420         moveq      #$20, d2
0026e0: 696e         bvs.b      $2750
0026e2: 6974         bvs.b      $2758
0026e4: 6961         bvs.b      $2747
0026e6: 6c69         bge.b      $2751
0026e8: 7a65         moveq      #$65, d5
0026ea: 2044         movea.l    d4, a0
0026ec: 7369         .dc.w      $7369
0026ee: 5265         addq.w     #$1, -(a5)
0026f0: 714d         .dc.w      $714d
0026f2: 6573         bcs.b      $2767
0026f4: 672e         beq.b      $2724
0026f6: 2e2e0d00     move.l     $d00(a6), d7
0026fa: 2f636339     move.l     -(a3), $6339(a7)
0026fe: 3300         move.w     d0, -(a1)
002700: 4361         .dc.w      $4361
002702: 6e6e         bgt.b      $2772
002704: 6f74         ble.b      $277a
002706: 206f7065     movea.l    $7065(a7), a0
00270a: 6e20         bgt.b      $272c
00270c: 6363         bls.b      $2771
00270e: 39332064     move.w     $64(a3, d2.w), -(a4)
002712: 6576         bcs.b      $278a
002714: 6963         bvs.b      $2779
002716: 652e         bcs.b      $2746
002718: 2e2e0d00     move.l     $d00(a6), d7
00271c: 4361         .dc.w      $4361
00271e: 6e6e         bgt.b      $278e
002720: 6f74         ble.b      $2796
002722: 2061         movea.l    -(a1), a0
002724: 7474         moveq      #$74, d2
002726: 6163         bsr.b      $278b
002728: 6820         bvc.b      $274a
00272a: 7369         .dc.w      $7369
00272c: 676e         beq.b      $279c
00272e: 616c         bsr.b      $279c
002730: 7320         .dc.w      $7320
002732: 746f         moveq      #$6f, d2
002734: 2063         movea.l    -(a3), a0
002736: 6339         bls.b      $2771
002738: 3320         move.w     -(a0), -(a1)
00273a: 6465         bcc.b      $27a1
00273c: 7669         moveq      #$69, d3
00273e: 6365         bls.b      $27a5
002740: 2e2e2e0d     move.l     $2e0d(a6), d7
002744: 002f67707300 ori.b      #$70, $7300(a7)
00274a: 4361         .dc.w      $4361
00274c: 6e6e         bgt.b      $27bc
00274e: 6f74         ble.b      $27c4
002750: 206f7065     movea.l    $7065(a7), a0
002754: 6e20         bgt.b      $2776
002756: 6770         beq.b      $27c8
002758: 7320         .dc.w      $7320
00275a: 6465         bcc.b      $27c1
00275c: 7669         moveq      #$69, d3
00275e: 6365         bls.b      $27c5
002760: 2e2e2e0d     move.l     $2e0d(a6), d7
002764: 0043616e     ori.w      #$616e, d3
002768: 6e6f         bgt.b      $27d9
00276a: 7420         moveq      #$20, d2
00276c: 7075         moveq      #$75, d0
00276e: 7420         moveq      #$20, d2
002770: 6770         beq.b      $27e2
002772: 7320         .dc.w      $7320
002774: 6465         bcc.b      $27db
002776: 7669         moveq      #$69, d3
002778: 6365         bls.b      $27df
00277a: 20696e20     movea.l    $6e20(a1), a0
00277e: 6469         bcc.b      $27e9
002780: 6167         bsr.b      $27e9
002782: 6e6f         bgt.b      $27f3
002784: 7365         .dc.w      $7365
002786: 206d6f64     movea.l    $6f64(a5), a0
00278a: 652e         bcs.b      $27ba
00278c: 2e2e0d00     move.l     $d00(a6), d7
002790: 4361         .dc.w      $4361
002792: 6e6e         bgt.b      $2802
002794: 6f74         ble.b      $280a
002796: 2063         movea.l    -(a3), a0
002798: 7265         moveq      #$65, d1
00279a: 6174         bsr.b      $2810
00279c: 6520         bcs.b      $27be
00279e: 4453         neg.w      (a3)
0027a0: 4920         chk.l      -(a0), d4
0027a2: 636f         bls.b      $2813
0027a4: 6d6d         blt.b      $2813
0027a6: 756e         .dc.w      $756e
0027a8: 6963         bvs.b      $280d
0027aa: 6174         bsr.b      $2820
0027ac: 696f         bvs.b      $281d
0027ae: 6e2e         bgt.b      $27de
0027b0: 2e0d         move.l     a5, d7
0027b2: 00445349     ori.w      #$5349, d4
0027b6: 2063         movea.l    -(a3), a0
0027b8: 6f6d         ble.b      $2827
0027ba: 6d75         blt.b      $2831
0027bc: 6e69         bgt.b      $2827
0027be: 6361         bls.b      $2821
0027c0: 7469         moveq      #$69, d2
0027c2: 6f6e         ble.b      $2832
0027c4: 2063         movea.l    -(a3), a0
0027c6: 7265         moveq      #$65, d1
0027c8: 6174         bsr.b      $283e
0027ca: 6564         bcs.b      $2830
0027cc: 2e2e2e0d     move.l     $2e0d(a6), d7
0027d0: 00466169     ori.w      #$6169, d6
0027d4: 6c65         bge.b      $283b
0027d6: 6420         bcc.b      $27f8
0027d8: 746f         moveq      #$6f, d2
0027da: 2073657420736c61 movea.l    $20736c61(a3, invalid.w), a0
0027e2: 7665         moveq      #$65, d3
0027e4: 206f7065     movea.l    $7065(a7), a0
0027e8: 7261         moveq      #$61, d1
0027ea: 7469         moveq      #$69, d2
0027ec: 6f6e         ble.b      $285c
0027ee: 206d6f64     movea.l    $6f64(a5), a0
0027f2: 652e         bcs.b      $2822
0027f4: 2e2e2e0d     move.l     $2e0d(a6), d7
0027f8: 00536c61     ori.w      #$6c61, (a3)
0027fc: 7665         moveq      #$65, d3
0027fe: 206f7065     movea.l    $7065(a7), a0
002802: 7261         moveq      #$61, d1
002804: 7469         moveq      #$69, d2
002806: 6f6e         ble.b      $2876
002808: 2073657420746f20 movea.l    $20746f20(a3, invalid.w), a0
002810: 4449         .dc.w      $4449
002812: 4147         .dc.w      $4147
002814: 4e4f         trap       #$f
002816: 5345         subq.w     #$1, d5
002818: 5f4d         subq.w     #$7, a5
00281a: 4f44         .dc.w      $4f44
00281c: 452e2e2e     chk.l      $2e2e(a6), d2
002820: 0d00         btst.l     d6, d0
002822: 2f63302f     move.l     -(a3), $302f(a7)
002826: 5f313239     subq.b     #$7, $39(a1, d3.w)
00282a: 5f2f7061     subq.b     #$7, $7061(a7)
00282e: 636b         bls.b      $289b
002830: 2f677073     move.l     -(a7), $7073(a7)
002834: 5f737461     subq.w     #$7, $61(a3, d7.w)
002838: 7475         moveq      #$75, d2
00283a: 7300         .dc.w      $7300
00283c: 2f63302f     move.l     -(a3), $302f(a7)
002840: 5f313239     subq.b     #$7, $39(a1, d3.w)
002844: 5f2f7061     subq.b     #$7, $7061(a7)
002848: 636b         bls.b      $28b5
00284a: 2f677073     move.l     -(a7), $7073(a7)
00284e: 5f737461     subq.w     #$7, $61(a3, d7.w)
002852: 7475         moveq      #$75, d2
002854: 7300         .dc.w      $7300
002856: 4661         not.w      -(a1)
002858: 696c         bvs.b      $28c6
00285a: 6564         bcs.b      $28c0
00285c: 20746f206372 movea.l    $6372(a4, d6.l * 8), a0
002862: 6561         bcs.b      $28c5
002864: 7465         moveq      #$65, d2
002866: 207061636b6574202573 movea.l    ([$6b65, a0], $74202573), a0
002870: 0d00         btst.l     d6, d0
002872: 4750         .dc.w      $4750
002874: 5320         subq.b     #$1, -(a0)
002876: 7374         .dc.w      $7374
002878: 6174         bsr.b      $28ee
00287a: 7573         .dc.w      $7573
00287c: 207061636b6574206372 movea.l    ([$6b65, a0], $74206372), a0
002886: 6561         bcs.b      $28e9
002888: 7465         moveq      #$65, d2
00288a: 642e         bcc.b      $28ba
00288c: 2e2e0d00     move.l     $d00(a6), d7
002890: 2f7061636b2f73765f706964 move.l     ([$6b2f, a0], $73765f70), $6964(a7)
00289c: 002f7061636b ori.b      #$61, $636b(a7)
0028a2: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
0028a8: 6420         bcc.b      $28ca
0028aa: 6469         bcc.b      $2915
0028ac: 6420         bcc.b      $28ce
0028ae: 616c         bsr.b      $291c
0028b0: 7265         moveq      #$65, d1
0028b2: 6164         bsr.b      $2918
0028b4: 7920         .dc.w      $7920
0028b6: 6578         bcs.b      $2930
0028b8: 6973         bvs.b      $292d
0028ba: 742e         moveq      #$2e, d2
0028bc: 2e2e0d00     move.l     $d00(a6), d7
0028c0: 6361         bls.b      $2923
0028c2: 6e27         bgt.b      $28eb
0028c4: 7420         moveq      #$20, d2
0028c6: 7772         .dc.w      $7772
0028c8: 6974         bvs.b      $293e
0028ca: 6520         bcs.b      $28ec
0028cc: 7069         moveq      #$69, d0
0028ce: 6420         bcc.b      $28f0
0028d0: 746f         moveq      #$6f, d2
0028d2: 202f7061     move.l     $7061(a7), d0
0028d6: 636b         bls.b      $2943
0028d8: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
0028de: 640d         bcc.b      $28ed
0028e0: 006f70657261 ori.w      #$7065, $7261(a7)
0028e6: 626c         bhi.b      $2954
0028e8: 652e         bcs.b      $2918
0028ea: 2e2e0d00     move.l     $d00(a6), d7
0028ee: 44696167     neg.w      $6167(a1)
0028f2: 2065         movea.l    -(a5), a0
0028f4: 6e74         bgt.b      $296a
0028f6: 6572         bcs.b      $296a
0028f8: 696e         bvs.b      $2968
0028fa: 6720         beq.b      $291c
0028fc: 6d61         blt.b      $295f
0028fe: 696e         bvs.b      $296e
002900: 206c6f6f     movea.l    $6f6f(a4), a0
002904: 700d         moveq      #$d, d0
002906: 00446961     ori.w      #$6961, d4
00290a: 6720         beq.b      $292c
00290c: 7761         .dc.w      $7761
00290e: 6974         bvs.b      $2984
002910: 696e         bvs.b      $2980
002912: 6720         beq.b      $2934
002914: 666f         bne.b      $2985
002916: 7220         moveq      #$20, d1
002918: 7369         .dc.w      $7369
00291a: 676e         beq.b      $298a
00291c: 616c         bsr.b      $298a
00291e: 730d         .dc.w      $730d
002920: 00446961     ori.w      #$6961, d4
002924: 6753         beq.b      $2979
002926: 6967         bvs.b      $298f
002928: 6e61         bgt.b      $298b
00292a: 6c20         bge.b      $294c
00292c: 7265         moveq      #$65, d1
00292e: 6365         bls.b      $2995
002930: 6976         bvs.b      $29a8
002932: 6564         bcs.b      $2998
002934: 0d00         btst.l     d6, d0
002936: 44696167     neg.w      $6167(a1)
00293a: 5369676e     subq.w     #$1, $676e(a1)
00293e: 616c         bsr.b      $29ac
002940: 2065         movea.l    -(a5), a0
002942: 7874         moveq      #$74, d4
002944: 7261         moveq      #$61, d1
002946: 6374         bls.b      $29bc
002948: 6564         bcs.b      $29ae
00294a: 2e2e2e0d     move.l     $2e0d(a6), d7
00294e: 00446961     ori.w      #$6961, d4
002952: 6753         beq.b      $29a7
002954: 6967         bvs.b      $29bd
002956: 6e61         bgt.b      $29b9
002958: 6c41         bge.b      $299b
00295a: 6374         bls.b      $29d0
00295c: 696f         bvs.b      $29cd
00295e: 6e73         bgt.b      $29d3
002960: 446f2072     neg.w      $2072(a7)
002964: 6574         bcs.b      $29da
002966: 7572         .dc.w      $7572
002968: 6e73         bgt.b      $29dd
00296a: 2064         movea.l    -(a4), a0
00296c: 6961         bvs.b      $29cf
00296e: 675f         beq.b      $29cf
002970: 6576         bcs.b      $29e8
002972: 656e         bcs.b      $29e2
002974: 743d         moveq      #$3d, d2
002976: 30782530     movea.w    $2530.w, a0
00297a: 3478200d     movea.w    $200d.w, a2
00297e: 00446961     ori.w      #$6961, d4
002982: 6745         beq.b      $29c9
002984: 7665         moveq      #$65, d3
002986: 6e74         bgt.b      $29fc
002988: 4163         .dc.w      $4163
00298a: 7469         moveq      #$69, d2
00298c: 6f6e         ble.b      $29fc
00298e: 7344         .dc.w      $7344
002990: 6f28         ble.b      $29ba
002992: 30783034     movea.w    $3034.w, a0
002996: 25782c646961 move.l     $2c64.w, $6961(a2)
00299c: 675f         beq.b      $29fd
00299e: 7374         .dc.w      $7374
0029a0: 6174         bsr.b      $2a16
0029a2: 6529         bcs.b      $29cd
0029a4: 3d307825     move.w     $25(a0, d7.l), -(a6)
0029a8: 3034780d     move.w     $d(a4, d7.l), d0
0029ac: 004e         .dc.w      $004e
0029ae: 6578         bcs.b      $2a28
0029b0: 7420         moveq      #$20, d2
0029b2: 6469         bcc.b      $2a1d
0029b4: 6167         bsr.b      $2a1d
0029b6: 5f737461     subq.w     #$7, $61(a3, d7.w)
0029ba: 7465         moveq      #$65, d2
0029bc: 3d444941     move.w     d4, $4941(a6)
0029c0: 475f         .dc.w      $475f
0029c2: 5354         subq.w     #$1, (a4)
0029c4: 4f50         .dc.w      $4f50
0029c6: 2e2e4469     move.l     $4469(a6), d7
0029ca: 6167         bsr.b      $2a33
0029cc: 20736875     movea.l    $75(a3, d6.l), a0
0029d0: 7474         moveq      #$74, d2
0029d2: 696e         bvs.b      $2a42
0029d4: 6720         beq.b      $29f6
0029d6: 646f         bcc.b      $2a47
0029d8: 776e         .dc.w      $776e
0029da: 0d00         btst.l     d6, d0
0029dc: 4661         not.w      -(a1)
0029de: 696c         bvs.b      $2a4c
0029e0: 6564         bcs.b      $2a46
0029e2: 20746f20636c movea.l    $636c(a4, d6.l * 8), a0
0029e8: 6f73         ble.b      $2a5d
0029ea: 6520         bcs.b      $2a0c
0029ec: 4453         neg.w      (a3)
0029ee: 495f         .dc.w      $495f
0029f0: 5245         addq.w     #$1, d5
0029f2: 5155         subq.w     #$8, (a5)
0029f4: 4553         .dc.w      $4553
0029f6: 545f         addq.w     #$2, (a7)+
0029f8: 5049         addq.w     #$8, a1
0029fa: 5045         addq.w     #$8, d5
0029fc: 0d00         btst.l     d6, d0
0029fe: 4661         not.w      -(a1)
002a00: 696c         bvs.b      $2a6e
002a02: 6564         bcs.b      $2a68
002a04: 20746f20636c movea.l    $636c(a4, d6.l * 8), a0
002a0a: 6f73         ble.b      $2a7f
002a0c: 6520         bcs.b      $2a2e
002a0e: 4453         neg.w      (a3)
002a10: 495f         .dc.w      $495f
002a12: 5245         addq.w     #$1, d5
002a14: 504c         addq.w     #$8, a4
002a16: 595f         subq.w     #$4, (a7)+
002a18: 5049         addq.w     #$8, a1
002a1a: 5045         addq.w     #$8, d5
002a1c: 0d00         btst.l     d6, d0
002a1e: 4661         not.w      -(a1)
002a20: 696c         bvs.b      $2a8e
002a22: 6564         bcs.b      $2a88
002a24: 20746f20636c movea.l    $636c(a4, d6.l * 8), a0
002a2a: 6f73         ble.b      $2a9f
002a2c: 6520         bcs.b      $2a4e
002a2e: 4453         neg.w      (a3)
002a30: 495f         .dc.w      $495f
002a32: 5245         addq.w     #$1, d5
002a34: 504f         addq.w     #$8, a7
002a36: 5254         addq.w     #$1, (a4)
002a38: 5f50         subq.w     #$7, (a0)
002a3a: 4950         .dc.w      $4950
002a3c: 450d         .dc.w      $450d
002a3e: 00466169     ori.w      #$6169, d6
002a42: 6c65         bge.b      $2aa9
002a44: 6420         bcc.b      $2a66
002a46: 746f         moveq      #$6f, d2
002a48: 2072657365740d0055736167 movea.l    ([$65740d00, a2], $55736167), a0
002a54: 653a         bcs.b      $2a90
002a56: 2064         movea.l    -(a4), a0
002a58: 6961         bvs.b      $2abb
002a5a: 6720         beq.b      $2a7c
002a5c: 5b3c         .dc.w      $5b3c
002a5e: 6f70         ble.b      $2ad0
002a60: 7473         moveq      #$73, d2
002a62: 3e5d         movea.w    (a5)+, a7
002a64: 0d00         btst.l     d6, d0
002a66: 4f70         .dc.w      $4f70
002a68: 7469         moveq      #$69, d2
002a6a: 6f6e         ble.b      $2ada
002a6c: 733a         .dc.w      $733a
002a6e: 0d00         btst.l     d6, d0
002a70: 2020         move.l     -(a0), d0
002a72: 2020         move.l     -(a0), d0
002a74: 202d7620     move.l     $7620(a5), d0
002a78: 2020         move.l     -(a0), d0
002a7a: 2020         move.l     -(a0), d0
002a7c: 2020         move.l     -(a0), d0
002a7e: 2020         move.l     -(a0), d0
002a80: 20766572626f7365206d movea.l    ([$626f7365, a6], $206d), a0
002a8a: 6f64         ble.b      $2af0
002a8c: 650d         bcs.b      $2a9b
002a8e: 00202020     ori.b      #$20, -(a0)
002a92: 2020         move.l     -(a0), d0
002a94: 2d672020     move.l     -(a7), $2020(a6)
002a98: 2020         move.l     -(a0), d0
002a9a: 2020         move.l     -(a0), d0
002a9c: 2020         move.l     -(a0), d0
002a9e: 2020         move.l     -(a0), d0
002aa0: 6765         beq.b      $2b07
002aa2: 6e65         bgt.b      $2b09
002aa4: 7261         moveq      #$61, d1
002aa6: 7465         moveq      #$65, d2
002aa8: 2065         movea.l    -(a5), a0
002aaa: 7863         moveq      #$63, d4
002aac: 6570         bcs.b      $2b1e
002aae: 7469         moveq      #$69, d2
002ab0: 6f6e         ble.b      $2b20
002ab2: 20696e20     movea.l    $6e20(a1), a0
002ab6: 6470         bcc.b      $2b28
002ab8: 5f67         subq.w     #$7, -(a7)
002aba: 7073         moveq      #$73, d0
002abc: 0d00         btst.l     d6, d0
002abe: 2020         move.l     -(a0), d0
002ac0: 2020         move.l     -(a0), d0
002ac2: 202d3f20     move.l     $3f20(a5), d0
002ac6: 2020         move.l     -(a0), d0
002ac8: 2020         move.l     -(a0), d0
002aca: 2020         move.l     -(a0), d0
002acc: 2020         move.l     -(a0), d0
002ace: 20707269     movea.l    $69(a0, d7.w), a0
002ad2: 6e74         bgt.b      $2b48
002ad4: 206f7074     movea.l    $7074(a7), a0
002ad8: 696f         bvs.b      $2b49
002ada: 6e73         bgt.b      $2b4f
002adc: 0d00         btst.l     d6, d0
002ade: 4e550000     link.w     a5, #$0
002ae2: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
002ae6: 2800         move.l     d0, d4
002ae8: 7a00         moveq      #$0, d5
002aea: 60000004     bra.w      $2af0
002aee: 5285         addq.l     #$1, d5
002af0: 7010         moveq      #$10, d0
002af2: b085         cmp.l      d5, d0
002af4: 6f00000e     ble.w      $2b04
002af8: 41eea440     lea.l      -$5bc0(a6), a0
002afc: b8b05e00     cmp.l      (a0, d5.l * 8), d4
002b00: 6600ffec     bne.w      $2aee
002b04: 7010         moveq      #$10, d0
002b06: b085         cmp.l      d5, d0
002b08: 6e000026     bgt.w      $2b30
002b0c: 2f04         move.l     d4, -(a7)
002b0e: 2f04         move.l     d4, -(a7)
002b10: 41fa02ba     lea.l      $2dcc(pc), a0
002b14: 2208         move.l     a0, d1
002b16: 41ee9cf6     lea.l      -$630a(a6), a0
002b1a: 2008         move.l     a0, d0
002b1c: 61002e18     bsr.w      $5936
002b20: 508f         addq.l     #$8, a7
002b22: 41ee9cf6     lea.l      -$630a(a6), a0
002b26: 2008         move.l     a0, d0
002b28: 60000012     bra.w      $2b3c
002b2c: 6000000e     bra.w      $2b3c
002b30: 41eea440     lea.l      -$5bc0(a6), a0
002b34: 20305e04     move.l     $4(a0, d5.l), d0
002b38: 60000002     bra.w      $2b3c
002b3c: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
002b42: 4e5d         unlk       a5
002b44: 4e75         rts        
002b46: 4afb         .dc.w      $4afb
002b48: 028e         .dc.w      $028e
002b4a: 456e         .dc.w      $456e
002b4c: 6420         bcc.b      $2b6e
002b4e: 6f66         ble.b      $2bb6
002b50: 2044         movea.l    d4, a0
002b52: 6961         bvs.b      $2bb5
002b54: 6745         beq.b      $2b9b
002b56: 7665         moveq      #$65, d3
002b58: 6e74         bgt.b      $2bce
002b5a: 5461         addq.w     #$2, -(a1)
002b5c: 626c         bhi.b      $2bca
002b5e: 6520         bcs.b      $2b80
002b60: 7265         moveq      #$65, d1
002b62: 6163         bsr.b      $2bc7
002b64: 6865         bvc.b      $2bcb
002b66: 64004e6f     bcc.w      $79d7
002b6a: 2045         movea.l    d5, a0
002b6c: 7665         moveq      #$65, d3
002b6e: 6e74         bgt.b      $2be4
002b70: 00445349     ori.w      #$5349, d4
002b74: 2047         movea.l    d7, a0
002b76: 6574         bcs.b      $2bec
002b78: 206c6f67     movea.l    $6f67(a4), a0
002b7c: 6765         beq.b      $2be3
002b7e: 6420         bcc.b      $2ba0
002b80: 6461         bcc.b      $2be3
002b82: 7461         moveq      #$61, d2
002b84: 00445349     ori.w      #$5349, d4
002b88: 2045         movea.l    d5, a0
002b8a: 7261         moveq      #$61, d1
002b8c: 7365         .dc.w      $7365
002b8e: 2065         movea.l    -(a5), a0
002b90: 7272         moveq      #$72, d1
002b92: 6f72         ble.b      $2c06
002b94: 6c6f         bge.b      $2c05
002b96: 67004453     beq.w      $6feb
002b9a: 4920         chk.l      -(a0), d4
002b9c: 4765         .dc.w      $4765
002b9e: 7420         moveq      #$20, d2
002ba0: 4344         .dc.w      $4344
002ba2: 2053         movea.l    (a3), a0
002ba4: 5461         addq.w     #$2, -(a1)
002ba6: 7475         moveq      #$75, d2
002ba8: 7320         .dc.w      $7320
002baa: 7265         moveq      #$65, d1
002bac: 7175         .dc.w      $7175
002bae: 6573         bcs.b      $2c23
002bb0: 7400         moveq      #$0, d2
002bb2: 4453         neg.w      (a3)
002bb4: 4920         chk.l      -(a0), d4
002bb6: 5772697465204375 subq.w     #$3, $65204375(a2, invalid.w)
002bbe: 7374         .dc.w      $7374
002bc0: 6f6d         ble.b      $2c2f
002bc2: 6572         bcs.b      $2c36
002bc4: 2049         movea.l    a1, a0
002bc6: 4420         neg.b      -(a0)
002bc8: 626c         bhi.b      $2c36
002bca: 6f63         ble.b      $2c2f
002bcc: 6b004453     bmi.w      $7021
002bd0: 4920         chk.l      -(a0), d4
002bd2: 5265         addq.w     #$1, -(a5)
002bd4: 6164         bsr.b      $2c3a
002bd6: 206e6f6e     movea.l    $6f6e(a6), a0
002bda: 766f         moveq      #$6f, d3
002bdc: 6c61         bge.b      $2c3f
002bde: 7469         moveq      #$69, d2
002be0: 6c65         bge.b      $2c47
002be2: 2064         movea.l    -(a4), a0
002be4: 6174         bsr.b      $2c5a
002be6: 61004453     bsr.w      $703b
002bea: 4920         chk.l      -(a0), d4
002bec: 5772697465206e6f subq.w     #$3, $65206e6f(a2, invalid.w)
002bf4: 6e76         bgt.b      $2c6c
002bf6: 6f6c         ble.b      $2c64
002bf8: 6174         bsr.b      $2c6e
002bfa: 696c         bvs.b      $2c68
002bfc: 6520         bcs.b      $2c1e
002bfe: 6461         bcc.b      $2c61
002c00: 7461         moveq      #$61, d2
002c02: 00445349     ori.w      #$5349, d4
002c06: 2047         movea.l    d7, a0
002c08: 6574         bcs.b      $2c7e
002c0a: 2047         movea.l    d7, a0
002c0c: 5053         addq.w     #$8, (a3)
002c0e: 2053         movea.l    (a3), a0
002c10: 7461         moveq      #$61, d2
002c12: 7475         moveq      #$75, d2
002c14: 7300         .dc.w      $7300
002c16: 4453         neg.w      (a3)
002c18: 4920         chk.l      -(a0), d4
002c1a: 4765         .dc.w      $4765
002c1c: 7420         moveq      #$20, d2
002c1e: 4361         .dc.w      $4361
002c20: 6c69         bge.b      $2c8b
002c22: 6272         bhi.b      $2c96
002c24: 6174         bsr.b      $2c9a
002c26: 696f         bvs.b      $2c97
002c28: 6e20         bgt.b      $2c4a
002c2a: 616e         bsr.b      $2c9a
002c2c: 6420         bcc.b      $2c4e
002c2e: 4361         .dc.w      $4361
002c30: 7220         moveq      #$20, d1
002c32: 5061         addq.w     #$8, -(a1)
002c34: 7261         moveq      #$61, d1
002c36: 6d65         blt.b      $2c9d
002c38: 7465         moveq      #$65, d2
002c3a: 7273         moveq      #$73, d1
002c3c: 00445349     ori.w      #$5349, d4
002c40: 2043         movea.l    d3, a0
002c42: 6c65         bge.b      $2ca9
002c44: 6172         bsr.b      $2cb8
002c46: 2043         movea.l    d3, a0
002c48: 616c         bsr.b      $2cb6
002c4a: 6962         bvs.b      $2cae
002c4c: 7261         moveq      #$61, d1
002c4e: 7469         moveq      #$69, d2
002c50: 6f6e         ble.b      $2cc0
002c52: 2046         movea.l    d6, a0
002c54: 6c61         bge.b      $2cb7
002c56: 67004453     beq.w      $70ab
002c5a: 4920         chk.l      -(a0), d4
002c5c: 5365         subq.w     #$1, -(a5)
002c5e: 7420         moveq      #$20, d2
002c60: 5374617475730044 subq.w     #$1, $75730044(a4, invalid.w)
002c68: 5349         subq.w     #$1, a1
002c6a: 2052         movea.l    (a2), a0
002c6c: 6561         bcs.b      $2ccf
002c6e: 6420         bcc.b      $2c90
002c70: 5374617475730044 subq.w     #$1, $75730044(a4, invalid.w)
002c78: 5349         subq.w     #$1, a1
002c7a: 2045         movea.l    d5, a0
002c7c: 7865         moveq      #$65, d4
002c7e: 6375         bls.b      $2cf5
002c80: 7465         moveq      #$65, d2
002c82: 2049         movea.l    a1, a0
002c84: 2f4f2074     move.l     a7, $2074(a7)
002c88: 6573         bcs.b      $2cfd
002c8a: 7473         moveq      #$73, d2
002c8c: 00445349     ori.w      #$5349, d4
002c90: 2073797374656d2072657365 movea.l    ([$74656d20, a3], $72657365), a0
002c9c: 7400         moveq      #$0, d2
002c9e: 4343         .dc.w      $4343
002ca0: 39332053     move.w     $53(a3, d2.w), -(a4)
002ca4: 6875         bvc.b      $2d1b
002ca6: 7464         moveq      #$64, d2
002ca8: 6f77         ble.b      $2d21
002caa: 6e20         bgt.b      $2ccc
002cac: 7265         moveq      #$65, d1
002cae: 7175         .dc.w      $7175
002cb0: 6573         bcs.b      $2d25
002cb2: 7400         moveq      #$0, d2
002cb4: 44696167     neg.w      $6167(a1)
002cb8: 2061         movea.l    -(a1), a0
002cba: 6e64         bgt.b      $2d20
002cbc: 2044         movea.l    d4, a0
002cbe: 5349         subq.w     #$1, a1
002cc0: 206f7065     movea.l    $7065(a7), a0
002cc4: 7261         moveq      #$61, d1
002cc6: 626c         bhi.b      $2d34
002cc8: 65004469     bcs.w      $7133
002ccc: 6167         bsr.b      $2d35
002cce: 20736875     movea.l    $75(a3, d6.l), a0
002cd2: 7474         moveq      #$74, d2
002cd4: 696e         bvs.b      $2d44
002cd6: 6720         beq.b      $2cf8
002cd8: 646f         bcc.b      $2d49
002cda: 776e         .dc.w      $776e
002cdc: 00556e75     ori.w      #$6e75, (a5)
002ce0: 7365         .dc.w      $7365
002ce2: 6420         bcc.b      $2d04
002ce4: 44696167     neg.w      $6167(a1)
002ce8: 2d7374617465 move.l     $61(a3, d7.w), $7465(a6)
002cee: 2076616c7565 movea.l    $7565(a6, invalid.w), a0
002cf4: 206f6666     movea.l    $6666(a7), a0
002cf8: 7365         .dc.w      $7365
002cfa: 7420         moveq      #$20, d2
002cfc: 3220         move.w     -(a0), d1
002cfe: 00556e75     ori.w      #$6e75, (a5)
002d02: 7365         .dc.w      $7365
002d04: 6420         bcc.b      $2d26
002d06: 44696167     neg.w      $6167(a1)
002d0a: 2d7374617465 move.l     $61(a3, d7.w), $7465(a6)
002d10: 2076616c7565 movea.l    $7565(a6, invalid.w), a0
002d16: 206f6666     movea.l    $6666(a7), a0
002d1a: 7365         .dc.w      $7365
002d1c: 7420         moveq      #$20, d2
002d1e: 3320         move.w     -(a0), -(a1)
002d20: 00556e75     ori.w      #$6e75, (a5)
002d24: 7365         .dc.w      $7365
002d26: 6420         bcc.b      $2d48
002d28: 44696167     neg.w      $6167(a1)
002d2c: 2d7374617465 move.l     $61(a3, d7.w), $7465(a6)
002d32: 2076616c7565 movea.l    $7565(a6, invalid.w), a0
002d38: 206f6666     movea.l    $6666(a7), a0
002d3c: 7365         .dc.w      $7365
002d3e: 7420         moveq      #$20, d2
002d40: 3420         move.w     -(a0), d2
002d42: 00556e75     ori.w      #$6e75, (a5)
002d46: 7365         .dc.w      $7365
002d48: 6420         bcc.b      $2d6a
002d4a: 44696167     neg.w      $6167(a1)
002d4e: 2d7374617465 move.l     $61(a3, d7.w), $7465(a6)
002d54: 2076616c7565 movea.l    $7565(a6, invalid.w), a0
002d5a: 206f6666     movea.l    $6666(a7), a0
002d5e: 7365         .dc.w      $7365
002d60: 7420         moveq      #$20, d2
002d62: 3520         move.w     -(a0), -(a2)
002d64: 00556e75     ori.w      #$6e75, (a5)
002d68: 7365         .dc.w      $7365
002d6a: 6420         bcc.b      $2d8c
002d6c: 44696167     neg.w      $6167(a1)
002d70: 2d7374617465 move.l     $61(a3, d7.w), $7465(a6)
002d76: 2076616c7565 movea.l    $7565(a6, invalid.w), a0
002d7c: 206f6666     movea.l    $6666(a7), a0
002d80: 7365         .dc.w      $7365
002d82: 7420         moveq      #$20, d2
002d84: 3620         move.w     -(a0), d3
002d86: 00556e75     ori.w      #$6e75, (a5)
002d8a: 7365         .dc.w      $7365
002d8c: 6420         bcc.b      $2dae
002d8e: 44696167     neg.w      $6167(a1)
002d92: 2d7374617465 move.l     $61(a3, d7.w), $7465(a6)
002d98: 2076616c7565 movea.l    $7565(a6, invalid.w), a0
002d9e: 206f6666     movea.l    $6666(a7), a0
002da2: 7365         .dc.w      $7365
002da4: 7420         moveq      #$20, d2
002da6: 3720         move.w     -(a0), -(a3)
002da8: 00444941     ori.w      #$4941, d4
002dac: 4720         chk.l      -(a0), d3
002dae: 696e         bvs.b      $2e1e
002db0: 20747261     movea.l    $61(a4, d7.w), a0
002db4: 6e73         bgt.b      $2e29
002db6: 6974         bvs.b      $2e2c
002db8: 696f         bvs.b      $2e29
002dba: 6e20         bgt.b      $2ddc
002dbc: 6265         bhi.b      $2e23
002dbe: 7477         moveq      #$77, d2
002dc0: 6565         bcs.b      $2e27
002dc2: 6e20         bgt.b      $2de4
002dc4: 7374         .dc.w      $7374
002dc6: 6174         bsr.b      $2e3c
002dc8: 6573         bcs.b      $2e3d
002dca: 2000         move.l     d0, d0
002dcc: 25356420     move.l     $20(a5, d6.w), -(a2)
002dd0: 20307825     move.l     $25(a0, d7.l), d0
002dd4: 30347800     move.w     (a4, d7.l), d0
002dd8: 4e550000     link.w     a5, #$0
002ddc: 48e78080     movem.l    d0/a0, -(a7)
002de0: 203c00001bf6 move.l     #$1bf6, d0
002de6: 61002c02     bsr.w      $59ea
002dea: 2057         movea.l    (a7), a0
002dec: 2080         move.l     d0, (a0)
002dee: 6600000c     bne.w      $2dfc
002df2: 70ff         moveq      #$ff, d0
002df4: 6000000c     bra.w      $2e02
002df8: 60000008     bra.w      $2e02
002dfc: 7000         moveq      #$0, d0
002dfe: 60000002     bra.w      $2e02
002e02: 4ced0100fffc movem.l    -$4(a5), a0
002e08: 4e5d         unlk       a5
002e0a: 4e75         rts        
002e0c: 4e550000     link.w     a5, #$0
002e10: 48e7c000     movem.l    d0-d1, -(a7)
002e14: 7203         moveq      #$3, d1
002e16: 7009         moveq      #$9, d0
002e18: 61001878     bsr.w      $4692
002e1c: 72ff         moveq      #$ff, d1
002e1e: b280         cmp.l      d0, d1
002e20: 66000008     bne.w      $2e2a
002e24: 7001         moveq      #$1, d0
002e26: 60000050     bra.w      $2e78
002e2a: 7203         moveq      #$3, d1
002e2c: 700a         moveq      #$a, d0
002e2e: 61001862     bsr.w      $4692
002e32: 72ff         moveq      #$ff, d1
002e34: b280         cmp.l      d0, d1
002e36: 66000008     bne.w      $2e40
002e3a: 7001         moveq      #$1, d0
002e3c: 6000003a     bra.w      $2e78
002e40: 7203         moveq      #$3, d1
002e42: 700b         moveq      #$b, d0
002e44: 6100184c     bsr.w      $4692
002e48: 72ff         moveq      #$ff, d1
002e4a: b280         cmp.l      d0, d1
002e4c: 66000008     bne.w      $2e56
002e50: 7001         moveq      #$1, d0
002e52: 60000024     bra.w      $2e78
002e56: 223c00002000 move.l     #$2000, d1
002e5c: 7009         moveq      #$9, d0
002e5e: 61001a1a     bsr.w      $487a
002e62: 72ff         moveq      #$ff, d1
002e64: b280         cmp.l      d0, d1
002e66: 66000008     bne.w      $2e70
002e6a: 7001         moveq      #$1, d0
002e6c: 6000000a     bra.w      $2e78
002e70: 7000         moveq      #$0, d0
002e72: 60000004     bra.w      $2e78
002e76: 4e71         nop        
002e78: 4ced0002fffc movem.l    -$4(a5), d1
002e7e: 4e5d         unlk       a5
002e80: 4e75         rts        
002e82: 4e550000     link.w     a5, #$0
002e86: 48e7c080     movem.l    d0-d1/a0, -(a7)
002e8a: 558f         subq.l     #$2, a7
002e8c: 222f0002     move.l     $2(a7), d1
002e90: 7009         moveq      #$9, d0
002e92: 61001664     bsr.w      $44f8
002e96: 72ff         moveq      #$ff, d1
002e98: b280         cmp.l      d0, d1
002e9a: 6600000a     bne.w      $2ea6
002e9e: 70ff         moveq      #$ff, d0
002ea0: 548f         addq.l     #$2, a7
002ea2: 6000014e     bra.w      $2ff2
002ea6: 223c00002000 move.l     #$2000, d1
002eac: 7009         moveq      #$9, d0
002eae: 610019ca     bsr.w      $487a
002eb2: 72ff         moveq      #$ff, d1
002eb4: b280         cmp.l      d0, d1
002eb6: 6600000a     bne.w      $2ec2
002eba: 70ff         moveq      #$ff, d0
002ebc: 548f         addq.l     #$2, a7
002ebe: 60000132     bra.w      $2ff2
002ec2: 206f0002     movea.l    $2(a7), a0
002ec6: 2050         movea.l    (a0), a0
002ec8: 0c6800010002 cmpi.w     #$1, $2(a0)
002ece: 6700000a     beq.w      $2eda
002ed2: 70ff         moveq      #$ff, d0
002ed4: 548f         addq.l     #$2, a7
002ed6: 6000011a     bra.w      $2ff2
002eda: 206f0002     movea.l    $2(a7), a0
002ede: 2050         movea.l    (a0), a0
002ee0: 3ea80004     move.w     $4(a0), (a7)
002ee4: 0c570001     cmpi.w     #$1, (a7)
002ee8: 6600000e     bne.w      $2ef8
002eec: 203c00004700 move.l     #$4700, d0
002ef2: 548f         addq.l     #$2, a7
002ef4: 600000fc     bra.w      $2ff2
002ef8: 0c570002     cmpi.w     #$2, (a7)
002efc: 6600000e     bne.w      $2f0c
002f00: 203c00004701 move.l     #$4701, d0
002f06: 548f         addq.l     #$2, a7
002f08: 600000e8     bra.w      $2ff2
002f0c: 0c570003     cmpi.w     #$3, (a7)
002f10: 6600000e     bne.w      $2f20
002f14: 203c00004710 move.l     #$4710, d0
002f1a: 548f         addq.l     #$2, a7
002f1c: 600000d4     bra.w      $2ff2
002f20: 0c570004     cmpi.w     #$4, (a7)
002f24: 6600000e     bne.w      $2f34
002f28: 203c00004711 move.l     #$4711, d0
002f2e: 548f         addq.l     #$2, a7
002f30: 600000c0     bra.w      $2ff2
002f34: 0c570005     cmpi.w     #$5, (a7)
002f38: 6600000e     bne.w      $2f48
002f3c: 203c00004712 move.l     #$4712, d0
002f42: 548f         addq.l     #$2, a7
002f44: 600000ac     bra.w      $2ff2
002f48: 0c570006     cmpi.w     #$6, (a7)
002f4c: 6600000e     bne.w      $2f5c
002f50: 203c00004720 move.l     #$4720, d0
002f56: 548f         addq.l     #$2, a7
002f58: 60000098     bra.w      $2ff2
002f5c: 0c570007     cmpi.w     #$7, (a7)
002f60: 6600000e     bne.w      $2f70
002f64: 203c00004721 move.l     #$4721, d0
002f6a: 548f         addq.l     #$2, a7
002f6c: 60000084     bra.w      $2ff2
002f70: 0c57000c     cmpi.w     #$c, (a7)
002f74: 6600000e     bne.w      $2f84
002f78: 203c00004713 move.l     #$4713, d0
002f7e: 548f         addq.l     #$2, a7
002f80: 60000070     bra.w      $2ff2
002f84: 0c57000d     cmpi.w     #$d, (a7)
002f88: 6600000e     bne.w      $2f98
002f8c: 203c00004714 move.l     #$4714, d0
002f92: 548f         addq.l     #$2, a7
002f94: 6000005c     bra.w      $2ff2
002f98: 0c570008     cmpi.w     #$8, (a7)
002f9c: 6600000e     bne.w      $2fac
002fa0: 203c00004722 move.l     #$4722, d0
002fa6: 548f         addq.l     #$2, a7
002fa8: 60000048     bra.w      $2ff2
002fac: 0c570009     cmpi.w     #$9, (a7)
002fb0: 6600000e     bne.w      $2fc0
002fb4: 203c00004723 move.l     #$4723, d0
002fba: 548f         addq.l     #$2, a7
002fbc: 60000034     bra.w      $2ff2
002fc0: 0c57000a     cmpi.w     #$a, (a7)
002fc4: 6600000e     bne.w      $2fd4
002fc8: 203c00004724 move.l     #$4724, d0
002fce: 548f         addq.l     #$2, a7
002fd0: 60000020     bra.w      $2ff2
002fd4: 0c57000b     cmpi.w     #$b, (a7)
002fd8: 6600000e     bne.w      $2fe8
002fdc: 203c00004725 move.l     #$4725, d0
002fe2: 548f         addq.l     #$2, a7
002fe4: 6000000c     bra.w      $2ff2
002fe8: 70ff         moveq      #$ff, d0
002fea: 548f         addq.l     #$2, a7
002fec: 60000004     bra.w      $2ff2
002ff0: 4e71         nop        
002ff2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002ff8: 4e5d         unlk       a5
002ffa: 4e75         rts        
002ffc: 4e550000     link.w     a5, #$0
003000: 48e7c080     movem.l    d0-d1/a0, -(a7)
003004: 518f         subq.l     #$8, a7
003006: 3ebc0008     move.w     #$8, (a7)
00300a: 3f7c00020002 move.w     #$2, $2(a7)
003010: 3f6f000e0004 move.w     $e(a7), $4(a7)
003016: 41d7         lea.l      (a7), a0
003018: 2208         move.l     a0, d1
00301a: 700a         moveq      #$a, d0
00301c: 610015f8     bsr.w      $4616
003020: 72ff         moveq      #$ff, d1
003022: b280         cmp.l      d0, d1
003024: 6600001a     bne.w      $3040
003028: 4aaea4e8     tst.l      -$5b18(a6)
00302c: 6d000012     blt.w      $3040
003030: 7000         moveq      #$0, d0
003032: 610000ec     bsr.w      $3120
003036: 41fa0094     lea.l      $30cc(pc), a0
00303a: 2008         move.l     a0, d0
00303c: 610028f0     bsr.w      $592e
003040: 7000         moveq      #$0, d0
003042: 508f         addq.l     #$8, a7
003044: 60000004     bra.w      $304a
003048: 4e71         nop        
00304a: 4ced0100fffc movem.l    -$4(a5), a0
003050: 4e5d         unlk       a5
003052: 4e75         rts        
003054: 4e550000     link.w     a5, #$0
003058: 48e7c000     movem.l    d0-d1, -(a7)
00305c: 7220         moveq      #$20, d1
00305e: 7000         moveq      #$0, d0
003060: 6100ff9a     bsr.w      $2ffc
003064: 4ced0002fffc movem.l    -$4(a5), d1
00306a: 4e5d         unlk       a5
00306c: 4e75         rts        
00306e: 4e550000     link.w     a5, #$0
003072: 48e7c080     movem.l    d0-d1/a0, -(a7)
003076: 0caf000048000004 cmpi.l     #$4800, $4(a7)
00307e: 6600000e     bne.w      $308e
003082: 2057         movea.l    (a7), a0
003084: 317c00010006 move.w     #$1, $6(a0)
00308a: 6000000a     bra.w      $3096
00308e: 2057         movea.l    (a7), a0
003090: 317c00020006 move.w     #$2, $6(a0)
003096: 2217         move.l     (a7), d1
003098: 700b         moveq      #$b, d0
00309a: 6100157a     bsr.w      $4616
00309e: 72ff         moveq      #$ff, d1
0030a0: b280         cmp.l      d0, d1
0030a2: 6600001a     bne.w      $30be
0030a6: 4aaea4e8     tst.l      -$5b18(a6)
0030aa: 6d000012     blt.w      $30be
0030ae: 7000         moveq      #$0, d0
0030b0: 6100006e     bsr.w      $3120
0030b4: 41fa0043     lea.l      $30f9(pc), a0
0030b8: 2008         move.l     a0, d0
0030ba: 61002872     bsr.w      $592e
0030be: 4ced0100fffc movem.l    -$4(a5), a0
0030c4: 4e5d         unlk       a5
0030c6: 4e75         rts        
0030c8: 4afb         .dc.w      $4afb
0030ca: 00544661     ori.w      #$4661, (a4)
0030ce: 696c         bvs.b      $313c
0030d0: 6564         bcs.b      $3136
0030d2: 20746f207772 movea.l    $7772(a4, d6.l * 8), a0
0030d8: 6974         bvs.b      $314e
0030da: 6520         bcs.b      $30fc
0030dc: 6669         bne.b      $3147
0030de: 6c65         bge.b      $3145
0030e0: 20746f204453 movea.l    $4453(a4, d6.l * 8), a0
0030e6: 495f         .dc.w      $495f
0030e8: 5245         addq.w     #$1, d5
0030ea: 504f         addq.w     #$8, a7
0030ec: 5254         addq.w     #$1, (a4)
0030ee: 5f50         subq.w     #$7, (a0)
0030f0: 4950         .dc.w      $4950
0030f2: 452e2e2e     chk.l      $2e2e(a6), d2
0030f6: 2e0d         move.l     a5, d7
0030f8: 00466169     ori.w      #$6169, d6
0030fc: 6c65         bge.b      $3163
0030fe: 6420         bcc.b      $3120
003100: 746f         moveq      #$6f, d2
003102: 20777269     movea.l    $69(a7, d7.w), a0
003106: 7465         moveq      #$65, d2
003108: 20746f204453 movea.l    $4453(a4, d6.l * 8), a0
00310e: 495f         .dc.w      $495f
003110: 5245         addq.w     #$1, d5
003112: 504c         addq.w     #$8, a4
003114: 595f         subq.w     #$4, (a7)+
003116: 5049         addq.w     #$8, a1
003118: 5045         addq.w     #$8, d5
00311a: 2e2e2e2e     move.l     $2e2e(a6), d7
00311e: 0d00         btst.l     d6, d0
003120: 4e550000     link.w     a5, #$0
003124: 48e7c080     movem.l    d0-d1/a0, -(a7)
003128: 4a97         tst.l      (a7)
00312a: 6606         bne.b      $3132
00312c: 206ea4e4     movea.l    -$5b1c(a6), a0
003130: 6004         bra.b      $3136
003132: 41fa00b2     lea.l      $31e6(pc), a0
003136: 4850         pea.l      (a0)
003138: 61002890     bsr.w      $59ca
00313c: 2200         move.l     d0, d1
00313e: 41fa00a7     lea.l      $31e7(pc), a0
003142: 2008         move.l     a0, d0
003144: 610027e8     bsr.w      $592e
003148: 588f         addq.l     #$4, a7
00314a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003150: 4e5d         unlk       a5
003152: 4e75         rts        
003154: 4e550000     link.w     a5, #$0
003158: 48e78000     movem.l    d0, -(a7)
00315c: 70ff         moveq      #$ff, d0
00315e: 2d40a4e8     move.l     d0, -$5b18(a6)
003162: 7000         moveq      #$0, d0
003164: 4e5d         unlk       a5
003166: 4e75         rts        
003168: 4e550000     link.w     a5, #$0
00316c: 48e7c080     movem.l    d0-d1/a0, -(a7)
003170: 52aea4e8     addq.l     #$1, -$5b18(a6)
003174: 202ea4e8     move.l     -$5b18(a6), d0
003178: 7203         moveq      #$3, d1
00317a: 610029de     bsr.w      $5b5a
00317e: 2d40a4e8     move.l     d0, -$5b18(a6)
003182: 7001         moveq      #$1, d0
003184: b0aea4e8     cmp.l      -$5b18(a6), d0
003188: 6e12         bgt.b      $319c
00318a: 7001         moveq      #$1, d0
00318c: 6192         bsr.b      $3120
00318e: 222ea4e8     move.l     -$5b18(a6), d1
003192: 41fa005a     lea.l      $31ee(pc), a0
003196: 2008         move.l     a0, d0
003198: 61002794     bsr.w      $592e
00319c: 7000         moveq      #$0, d0
00319e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0031a4: 4e5d         unlk       a5
0031a6: 4e75         rts        
0031a8: 4e550000     link.w     a5, #$0
0031ac: 48e78000     movem.l    d0, -(a7)
0031b0: 7002         moveq      #$2, d0
0031b2: b097         cmp.l      (a7), d0
0031b4: 6c04         bge.b      $31ba
0031b6: 7002         moveq      #$2, d0
0031b8: 600a         bra.b      $31c4
0031ba: 4a97         tst.l      (a7)
0031bc: 6c04         bge.b      $31c2
0031be: 70ff         moveq      #$ff, d0
0031c0: 6002         bra.b      $31c4
0031c2: 2017         move.l     (a7), d0
0031c4: 2d40a4e8     move.l     d0, -$5b18(a6)
0031c8: 4e5d         unlk       a5
0031ca: 4e75         rts        
0031cc: 4e550000     link.w     a5, #$0
0031d0: 48e78000     movem.l    d0, -(a7)
0031d4: 202ea4e8     move.l     -$5b18(a6), d0
0031d8: 4e5d         unlk       a5
0031da: 4e75         rts        
0031dc: 5061         addq.w     #$8, -(a1)
0031de: 6e69         bgt.b      $3249
0031e0: 6320         bls.b      $3202
0031e2: 2d2d2000     move.l     $2000(a5), -(a6)
0031e6: 0025733a     ori.b      #$3a, -(a5)
0031ea: 2025         move.l     -(a5), d0
0031ec: 7300         .dc.w      $7300
0031ee: 4465         neg.w      -(a5)
0031f0: 6275         bhi.b      $3267
0031f2: 6720         beq.b      $3214
0031f4: 6c65         bge.b      $325b
0031f6: 7665         moveq      #$65, d3
0031f8: 6c3a         bge.b      $3234
0031fa: 2025         move.l     -(a5), d0
0031fc: 640d         bcc.b      $320b
0031fe: 00004e55     ori.b      #$55, d0
003202: 000048e7     ori.b      #$e7, d0
003206: 8000         or.b       d0, d0
003208: 203cffffffc0 move.l     #$ffffffc0, d0
00320e: 6100cf5a     bsr.w      $16a
003212: 203c009f8900 move.l     #$9f8900, d0
003218: 60000004     bra.w      $321e
00321c: 4e71         nop        
00321e: 4e5d         unlk       a5
003220: 4e75         rts        
003222: 4e550000     link.w     a5, #$0
003226: 48e7c080     movem.l    d0-d1/a0, -(a7)
00322a: 203cffffffb4 move.l     #$ffffffb4, d0
003230: 6100cf38     bsr.w      $16a
003234: 598f         subq.l     #$4, a7
003236: 4aaea4ec     tst.l      -$5b14(a6)
00323a: 6c00001e     bge.w      $325a
00323e: 7203         moveq      #$3, d1
003240: 41fa04c0     lea.l      $3702(pc), a0
003244: 2008         move.l     a0, d0
003246: 6100272e     bsr.w      $5976
00324a: 2d40a4ec     move.l     d0, -$5b14(a6)
00324e: 6c00000a     bge.w      $325a
003252: 70ff         moveq      #$ff, d0
003254: 588f         addq.l     #$4, a7
003256: 60000020     bra.w      $3278
00325a: 42a7         clr.l      -(a7)
00325c: 222ea4ec     move.l     -$5b14(a6), d1
003260: 203c00000780 move.l     #$780, d0
003266: 610011fc     bsr.w      $4464
00326a: 588f         addq.l     #$4, a7
00326c: 2e80         move.l     d0, (a7)
00326e: 2017         move.l     (a7), d0
003270: 588f         addq.l     #$4, a7
003272: 60000004     bra.w      $3278
003276: 4e71         nop        
003278: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00327e: 4e5d         unlk       a5
003280: 4e75         rts        
003282: 4e550000     link.w     a5, #$0
003286: 48e7c080     movem.l    d0-d1/a0, -(a7)
00328a: 203cffffffb4 move.l     #$ffffffb4, d0
003290: 6100ced8     bsr.w      $16a
003294: 598f         subq.l     #$4, a7
003296: 4aaea4ec     tst.l      -$5b14(a6)
00329a: 6c00001e     bge.w      $32ba
00329e: 7203         moveq      #$3, d1
0032a0: 41fa0469     lea.l      $370b(pc), a0
0032a4: 2008         move.l     a0, d0
0032a6: 610026ce     bsr.w      $5976
0032aa: 2d40a4ec     move.l     d0, -$5b14(a6)
0032ae: 6c00000a     bge.w      $32ba
0032b2: 7000         moveq      #$0, d0
0032b4: 588f         addq.l     #$4, a7
0032b6: 6000001c     bra.w      $32d4
0032ba: 42a7         clr.l      -(a7)
0032bc: 222ea4ec     move.l     -$5b14(a6), d1
0032c0: 203c00000783 move.l     #$783, d0
0032c6: 6100119c     bsr.w      $4464
0032ca: 588f         addq.l     #$4, a7
0032cc: 588f         addq.l     #$4, a7
0032ce: 60000004     bra.w      $32d4
0032d2: 4e71         nop        
0032d4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0032da: 4e5d         unlk       a5
0032dc: 4e75         rts        
0032de: 4e550000     link.w     a5, #$0
0032e2: 48e78000     movem.l    d0, -(a7)
0032e6: 203cffffffc0 move.l     #$ffffffc0, d0
0032ec: 6100ce7c     bsr.w      $16a
0032f0: 7000         moveq      #$0, d0
0032f2: 60000004     bra.w      $32f8
0032f6: 4e71         nop        
0032f8: 4e5d         unlk       a5
0032fa: 4e75         rts        
0032fc: 4e550000     link.w     a5, #$0
003300: 48e7c080     movem.l    d0-d1/a0, -(a7)
003304: 203cffffffb8 move.l     #$ffffffb8, d0
00330a: 6100ce5e     bsr.w      $16a
00330e: 4aaea4ec     tst.l      -$5b14(a6)
003312: 6c00001c     bge.w      $3330
003316: 7203         moveq      #$3, d1
003318: 41fa03fa     lea.l      $3714(pc), a0
00331c: 2008         move.l     a0, d0
00331e: 61002656     bsr.w      $5976
003322: 2d40a4ec     move.l     d0, -$5b14(a6)
003326: 6c000008     bge.w      $3330
00332a: 70ff         moveq      #$ff, d0
00332c: 6000002a     bra.w      $3358
003330: 42a7         clr.l      -(a7)
003332: 222ea4ec     move.l     -$5b14(a6), d1
003336: 203c00000784 move.l     #$784, d0
00333c: 6100116e     bsr.w      $44ac
003340: 588f         addq.l     #$4, a7
003342: 202ea4ec     move.l     -$5b14(a6), d0
003346: 6100265e     bsr.w      $59a6
00334a: 70ff         moveq      #$ff, d0
00334c: 2d40a4ec     move.l     d0, -$5b14(a6)
003350: 7000         moveq      #$0, d0
003352: 60000004     bra.w      $3358
003356: 4e71         nop        
003358: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00335e: 4e5d         unlk       a5
003360: 4e75         rts        
003362: 4e550000     link.w     a5, #$0
003366: 48e7c080     movem.l    d0-d1/a0, -(a7)
00336a: 203cffffffb0 move.l     #$ffffffb0, d0
003370: 6100cdf8     bsr.w      $16a
003374: 518f         subq.l     #$8, a7
003376: 61000112     bsr.w      $348a
00337a: 7203         moveq      #$3, d1
00337c: 41fa039f     lea.l      $371d(pc), a0
003380: 2008         move.l     a0, d0
003382: 610025f2     bsr.w      $5976
003386: 2f400004     move.l     d0, $4(a7)
00338a: 6c00000a     bge.w      $3396
00338e: 70ff         moveq      #$ff, d0
003390: 508f         addq.l     #$8, a7
003392: 60000028     bra.w      $33bc
003396: 42a7         clr.l      -(a7)
003398: 222f0008     move.l     $8(a7), d1
00339c: 203c00000785 move.l     #$785, d0
0033a2: 61001108     bsr.w      $44ac
0033a6: 588f         addq.l     #$4, a7
0033a8: 2e80         move.l     d0, (a7)
0033aa: 202f0004     move.l     $4(a7), d0
0033ae: 610025f6     bsr.w      $59a6
0033b2: 2017         move.l     (a7), d0
0033b4: 508f         addq.l     #$8, a7
0033b6: 60000004     bra.w      $33bc
0033ba: 4e71         nop        
0033bc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0033c2: 4e5d         unlk       a5
0033c4: 4e75         rts        
0033c6: 4e550000     link.w     a5, #$0
0033ca: 48e78080     movem.l    d0/a0, -(a7)
0033ce: 203cffffffac move.l     #$ffffffac, d0
0033d4: 6100cd94     bsr.w      $16a
0033d8: 4feffff0     lea.l      -$10(a7), a7
0033dc: 426f0006     clr.w      $6(a7)
0033e0: 6100fea0     bsr.w      $3282
0033e4: 2f40000c     move.l     d0, $c(a7)
0033e8: 6600000c     bne.w      $33f6
0033ec: 7000         moveq      #$0, d0
0033ee: 4fef0010     lea.l      $10(a7), a7
0033f2: 6000008c     bra.w      $3480
0033f6: 42af0002     clr.l      $2(a7)
0033fa: 6000003c     bra.w      $3438
0033fe: 202f000c     move.l     $c(a7), d0
003402: 5c80         addq.l     #$6, d0
003404: 2f400008     move.l     d0, $8(a7)
003408: 60000012     bra.w      $341c
00340c: 206f0008     movea.l    $8(a7), a0
003410: 7000         moveq      #$0, d0
003412: 1010         move.b     (a0), d0
003414: d16f0006     add.w      d0, $6(a7)
003418: 52af0008     addq.l     #$1, $8(a7)
00341c: 203c00000100 move.l     #$100, d0
003422: d0af000c     add.l      $c(a7), d0
003426: b0af0008     cmp.l      $8(a7), d0
00342a: 6200ffe0     bhi.w      $340c
00342e: 2f6f0008000c move.l     $8(a7), $c(a7)
003434: 52af0002     addq.l     #$1, $2(a7)
003438: 7003         moveq      #$3, d0
00343a: b0af0002     cmp.l      $2(a7), d0
00343e: 6e00ffbe     bgt.w      $33fe
003442: 202f000c     move.l     $c(a7), d0
003446: 5c80         addq.l     #$6, d0
003448: 2f400008     move.l     d0, $8(a7)
00344c: 60000012     bra.w      $3460
003450: 206f0008     movea.l    $8(a7), a0
003454: 7000         moveq      #$0, d0
003456: 1010         move.b     (a0), d0
003458: d16f0006     add.w      d0, $6(a7)
00345c: 52af0008     addq.l     #$1, $8(a7)
003460: 203c000000fe move.l     #$fe, d0
003466: d0af000c     add.l      $c(a7), d0
00346a: b0af0008     cmp.l      $8(a7), d0
00346e: 6200ffe0     bhi.w      $3450
003472: 302f0006     move.w     $6(a7), d0
003476: 4fef0010     lea.l      $10(a7), a7
00347a: 60000004     bra.w      $3480
00347e: 4e71         nop        
003480: 4ced0100fffc movem.l    -$4(a5), a0
003486: 4e5d         unlk       a5
003488: 4e75         rts        
00348a: 4e550000     link.w     a5, #$0
00348e: 48e78080     movem.l    d0/a0, -(a7)
003492: 203cffffffb4 move.l     #$ffffffb4, d0
003498: 6100ccd0     bsr.w      $16a
00349c: 5d8f         subq.l     #$6, a7
00349e: 6100fde2     bsr.w      $3282
0034a2: 2f400002     move.l     d0, $2(a7)
0034a6: 67000022     beq.w      $34ca
0034aa: 6100ff1a     bsr.w      $33c6
0034ae: 3e80         move.w     d0, (a7)
0034b0: 67000018     beq.w      $34ca
0034b4: 558f         subq.l     #$2, a7
0034b6: 1f6f00020001 move.b     $2(a7), $1(a7)
0034bc: 1f6f00030002 move.b     $3(a7), $2(a7)
0034c2: 1f6f00010003 move.b     $1(a7), $3(a7)
0034c8: 548f         addq.l     #$2, a7
0034ca: 206f0002     movea.l    $2(a7), a0
0034ce: 315703fe     move.w     (a7), $3fe(a0)
0034d2: 5c8f         addq.l     #$6, a7
0034d4: 4ced0100fffc movem.l    -$4(a5), a0
0034da: 4e5d         unlk       a5
0034dc: 4e75         rts        
0034de: 4e550000     link.w     a5, #$0
0034e2: 48e78080     movem.l    d0/a0, -(a7)
0034e6: 203cffffffb4 move.l     #$ffffffb4, d0
0034ec: 6100cc7c     bsr.w      $16a
0034f0: 5d8f         subq.l     #$6, a7
0034f2: 6100fd8e     bsr.w      $3282
0034f6: 2f400002     move.l     d0, $2(a7)
0034fa: 6600000a     bne.w      $3506
0034fe: 7000         moveq      #$0, d0
003500: 5c8f         addq.l     #$6, a7
003502: 6000003a     bra.w      $353e
003506: 206f0002     movea.l    $2(a7), a0
00350a: 3ea803fe     move.w     $3fe(a0), (a7)
00350e: 558f         subq.l     #$2, a7
003510: 1f6f00020001 move.b     $2(a7), $1(a7)
003516: 1f6f00030002 move.b     $3(a7), $2(a7)
00351c: 1f6f00010003 move.b     $1(a7), $3(a7)
003522: 548f         addq.l     #$2, a7
003524: 6100fea0     bsr.w      $33c6
003528: b057         cmp.w      (a7), d0
00352a: 66000008     bne.w      $3534
00352e: 7001         moveq      #$1, d0
003530: 60000004     bra.w      $3536
003534: 7000         moveq      #$0, d0
003536: 5c8f         addq.l     #$6, a7
003538: 60000004     bra.w      $353e
00353c: 4e71         nop        
00353e: 4ced0100fffc movem.l    -$4(a5), a0
003544: 4e5d         unlk       a5
003546: 4e75         rts        
003548: 4e550000     link.w     a5, #$0
00354c: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003550: 203cffffffb2 move.l     #$ffffffb2, d0
003556: 6100cc12     bsr.w      $16a
00355a: 518f         subq.l     #$8, a7
00355c: 42af0004     clr.l      $4(a7)
003560: 6100fc9e     bsr.w      $3200
003564: 2e80         move.l     d0, (a7)
003566: 2057         movea.l    (a7), a0
003568: 2257         movea.l    (a7), a1
00356a: 1011         move.b     (a1), d0
00356c: b0280001     cmp.b      $1(a0), d0
003570: 6600000a     bne.w      $357c
003574: 7000         moveq      #$0, d0
003576: 508f         addq.l     #$8, a7
003578: 6000016c     bra.w      $36e6
00357c: 2057         movea.l    (a7), a0
00357e: 7000         moveq      #$0, d0
003580: 1010         move.b     (a0), d0
003582: c1fc000c     muls.w     #$c, d0
003586: 2057         movea.l    (a7), a0
003588: 226f0008     movea.l    $8(a7), a1
00358c: 12b00802     move.b     $2(a0, d0.l), (a1)
003590: 2057         movea.l    (a7), a0
003592: 7000         moveq      #$0, d0
003594: 1010         move.b     (a0), d0
003596: c1fc000c     muls.w     #$c, d0
00359a: 2057         movea.l    (a7), a0
00359c: 226f0008     movea.l    $8(a7), a1
0035a0: 137008030001 move.b     $3(a0, d0.l), $1(a1)
0035a6: 2057         movea.l    (a7), a0
0035a8: 7000         moveq      #$0, d0
0035aa: 1010         move.b     (a0), d0
0035ac: c1fc000c     muls.w     #$c, d0
0035b0: 2057         movea.l    (a7), a0
0035b2: 226f0008     movea.l    $8(a7), a1
0035b6: 137008040002 move.b     $4(a0, d0.l), $2(a1)
0035bc: 2057         movea.l    (a7), a0
0035be: 7000         moveq      #$0, d0
0035c0: 1010         move.b     (a0), d0
0035c2: c1fc000c     muls.w     #$c, d0
0035c6: 2057         movea.l    (a7), a0
0035c8: 226f0008     movea.l    $8(a7), a1
0035cc: 337008060004 move.w     $6(a0, d0.l), $4(a1)
0035d2: 558f         subq.l     #$2, a7
0035d4: 206f000a     movea.l    $a(a7), a0
0035d8: 1f6800040001 move.b     $4(a0), $1(a7)
0035de: 206f000a     movea.l    $a(a7), a0
0035e2: 226f000a     movea.l    $a(a7), a1
0035e6: 136800050004 move.b     $5(a0), $4(a1)
0035ec: 206f000a     movea.l    $a(a7), a0
0035f0: 116f00010005 move.b     $1(a7), $5(a0)
0035f6: 548f         addq.l     #$2, a7
0035f8: 2057         movea.l    (a7), a0
0035fa: 7000         moveq      #$0, d0
0035fc: 1010         move.b     (a0), d0
0035fe: c1fc000c     muls.w     #$c, d0
003602: 2057         movea.l    (a7), a0
003604: 226f0008     movea.l    $8(a7), a1
003608: 337008080006 move.w     $8(a0, d0.l), $6(a1)
00360e: 558f         subq.l     #$2, a7
003610: 206f000a     movea.l    $a(a7), a0
003614: 1f6800060001 move.b     $6(a0), $1(a7)
00361a: 206f000a     movea.l    $a(a7), a0
00361e: 226f000a     movea.l    $a(a7), a1
003622: 136800070006 move.b     $7(a0), $6(a1)
003628: 206f000a     movea.l    $a(a7), a0
00362c: 116f00010007 move.b     $1(a7), $7(a0)
003632: 548f         addq.l     #$2, a7
003634: 206f0008     movea.l    $8(a7), a0
003638: 7000         moveq      #$0, d0
00363a: 30280006     move.w     $6(a0), d0
00363e: 7264         moveq      #$64, d1
003640: 610024ee     bsr.w      $5b30
003644: 206f0008     movea.l    $8(a7), a0
003648: 31400006     move.w     d0, $6(a0)
00364c: 2057         movea.l    (a7), a0
00364e: 7000         moveq      #$0, d0
003650: 1010         move.b     (a0), d0
003652: c1fc000c     muls.w     #$c, d0
003656: 2057         movea.l    (a7), a0
003658: 226f0008     movea.l    $8(a7), a1
00365c: 1370080d0008 move.b     $d(a0, d0.l), $8(a1)
003662: 2057         movea.l    (a7), a0
003664: 7000         moveq      #$0, d0
003666: 1010         move.b     (a0), d0
003668: c1fc000c     muls.w     #$c, d0
00366c: 2057         movea.l    (a7), a0
00366e: 226f0008     movea.l    $8(a7), a1
003672: 1370080c0009 move.b     $c(a0, d0.l), $9(a1)
003678: 2057         movea.l    (a7), a0
00367a: 7000         moveq      #$0, d0
00367c: 1010         move.b     (a0), d0
00367e: c1fc000c     muls.w     #$c, d0
003682: 2057         movea.l    (a7), a0
003684: 226f0008     movea.l    $8(a7), a1
003688: 1370080b000a move.b     $b(a0, d0.l), $a(a1)
00368e: 2057         movea.l    (a7), a0
003690: 7000         moveq      #$0, d0
003692: 1010         move.b     (a0), d0
003694: c1fc000c     muls.w     #$c, d0
003698: 2057         movea.l    (a7), a0
00369a: 226f0008     movea.l    $8(a7), a1
00369e: 1370080a000b move.b     $a(a0, d0.l), $b(a1)
0036a4: 2057         movea.l    (a7), a0
0036a6: 7000         moveq      #$0, d0
0036a8: 1010         move.b     (a0), d0
0036aa: 5240         addq.w     #$1, d0
0036ac: 48c0         ext.l      d0
0036ae: 81fc0015     divs.w     #$15, d0
0036b2: 4840         swap       d0
0036b4: 2057         movea.l    (a7), a0
0036b6: 1080         move.b     d0, (a0)
0036b8: 2057         movea.l    (a7), a0
0036ba: 7000         moveq      #$0, d0
0036bc: 1010         move.b     (a0), d0
0036be: 2057         movea.l    (a7), a0
0036c0: 7200         moveq      #$0, d1
0036c2: 12280001     move.b     $1(a0), d1
0036c6: 9240         sub.w      d0, d1
0036c8: 48c1         ext.l      d1
0036ca: 5281         addq.l     #$1, d1
0036cc: 2f410004     move.l     d1, $4(a7)
0036d0: 6c000008     bge.w      $36da
0036d4: 7015         moveq      #$15, d0
0036d6: d1af0004     add.l      d0, $4(a7)
0036da: 202f0004     move.l     $4(a7), d0
0036de: 508f         addq.l     #$8, a7
0036e0: 60000004     bra.w      $36e6
0036e4: 4e71         nop        
0036e6: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
0036ec: 4e5d         unlk       a5
0036ee: 4e75         rts        
0036f0: 4afb         .dc.w      $4afb
0036f2: 00322f6e7672 ori.b      #$6e, $72(a2, d7.w)
0036f8: 2f6e765f736c move.l     $765f(a6), $736c(a7)
0036fe: 6176         bsr.b      $3776
003700: 65002f68     bcs.w      $666a
003704: 5f697463     subq.w     #$7, $7463(a1)
003708: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
00370e: 6974         bvs.b      $3784
003710: 632f         bls.b      $3741
003712: 7200         moveq      #$0, d1
003714: 2f685f697463 move.l     $5f69(a0), $7463(a7)
00371a: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003720: 6974         bvs.b      $3796
003722: 632f         bls.b      $3753
003724: 7200         moveq      #$0, d1
003726: 4e550000     link.w     a5, #$0
00372a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00372e: 203cffffffb8 move.l     #$ffffffb8, d0
003734: 6100ca34     bsr.w      $16a
003738: 4aaea4f8     tst.l      -$5b08(a6)
00373c: 6c00001c     bge.w      $375a
003740: 7203         moveq      #$3, d1
003742: 41fa0336     lea.l      $3a7a(pc), a0
003746: 2008         move.l     a0, d0
003748: 6100222c     bsr.w      $5976
00374c: 2d40a4f8     move.l     d0, -$5b08(a6)
003750: 6c000008     bge.w      $375a
003754: 70ff         moveq      #$ff, d0
003756: 6000001a     bra.w      $3772
00375a: 42a7         clr.l      -(a7)
00375c: 222ea4f8     move.l     -$5b08(a6), d1
003760: 203c00000704 move.l     #$704, d0
003766: 61000cfc     bsr.w      $4464
00376a: 588f         addq.l     #$4, a7
00376c: 60000004     bra.w      $3772
003770: 4e71         nop        
003772: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003778: 4e5d         unlk       a5
00377a: 4e75         rts        
00377c: 4e550000     link.w     a5, #$0
003780: 48e7c080     movem.l    d0-d1/a0, -(a7)
003784: 203cffffffb8 move.l     #$ffffffb8, d0
00378a: 6100c9de     bsr.w      $16a
00378e: 4aaea4f8     tst.l      -$5b08(a6)
003792: 6c00001c     bge.w      $37b0
003796: 7203         moveq      #$3, d1
003798: 41fa02e9     lea.l      $3a83(pc), a0
00379c: 2008         move.l     a0, d0
00379e: 610021d6     bsr.w      $5976
0037a2: 2d40a4f8     move.l     d0, -$5b08(a6)
0037a6: 6c000008     bge.w      $37b0
0037aa: 70ff         moveq      #$ff, d0
0037ac: 6000001a     bra.w      $37c8
0037b0: 42a7         clr.l      -(a7)
0037b2: 222ea4f8     move.l     -$5b08(a6), d1
0037b6: 203c00000703 move.l     #$703, d0
0037bc: 61000ca6     bsr.w      $4464
0037c0: 588f         addq.l     #$4, a7
0037c2: 60000004     bra.w      $37c8
0037c6: 4e71         nop        
0037c8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0037ce: 4e5d         unlk       a5
0037d0: 4e75         rts        
0037d2: 4e550000     link.w     a5, #$0
0037d6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0037da: 203cffffffb8 move.l     #$ffffffb8, d0
0037e0: 6100c988     bsr.w      $16a
0037e4: 4aaea4f8     tst.l      -$5b08(a6)
0037e8: 6c00001c     bge.w      $3806
0037ec: 7203         moveq      #$3, d1
0037ee: 41fa029c     lea.l      $3a8c(pc), a0
0037f2: 2008         move.l     a0, d0
0037f4: 61002180     bsr.w      $5976
0037f8: 2d40a4f8     move.l     d0, -$5b08(a6)
0037fc: 6c000008     bge.w      $3806
003800: 70ff         moveq      #$ff, d0
003802: 6000001a     bra.w      $381e
003806: 42a7         clr.l      -(a7)
003808: 222ea4f8     move.l     -$5b08(a6), d1
00380c: 203c00000702 move.l     #$702, d0
003812: 61000c50     bsr.w      $4464
003816: 588f         addq.l     #$4, a7
003818: 60000004     bra.w      $381e
00381c: 4e71         nop        
00381e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003824: 4e5d         unlk       a5
003826: 4e75         rts        
003828: 4e550000     link.w     a5, #$0
00382c: 48e7c080     movem.l    d0-d1/a0, -(a7)
003830: 203cffffffb8 move.l     #$ffffffb8, d0
003836: 6100c932     bsr.w      $16a
00383a: 4aaea4f8     tst.l      -$5b08(a6)
00383e: 6c00001c     bge.w      $385c
003842: 7203         moveq      #$3, d1
003844: 41fa024f     lea.l      $3a95(pc), a0
003848: 2008         move.l     a0, d0
00384a: 6100212a     bsr.w      $5976
00384e: 2d40a4f8     move.l     d0, -$5b08(a6)
003852: 6c000008     bge.w      $385c
003856: 70ff         moveq      #$ff, d0
003858: 60000022     bra.w      $387c
00385c: 102f0003     move.b     $3(a7), d0
003860: 4880         ext.w      d0
003862: 48c0         ext.l      d0
003864: 2f00         move.l     d0, -(a7)
003866: 222ea4f8     move.l     -$5b08(a6), d1
00386a: 203c00000700 move.l     #$700, d0
003870: 61000c3a     bsr.w      $44ac
003874: 588f         addq.l     #$4, a7
003876: 60000004     bra.w      $387c
00387a: 4e71         nop        
00387c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003882: 4e5d         unlk       a5
003884: 4e75         rts        
003886: 4e550000     link.w     a5, #$0
00388a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00388e: 203cffffffb4 move.l     #$ffffffb4, d0
003894: 6100c8d4     bsr.w      $16a
003898: 598f         subq.l     #$4, a7
00389a: 4aaea4f8     tst.l      -$5b08(a6)
00389e: 6c00001e     bge.w      $38be
0038a2: 7203         moveq      #$3, d1
0038a4: 41fa01f8     lea.l      $3a9e(pc), a0
0038a8: 2008         move.l     a0, d0
0038aa: 610020ca     bsr.w      $5976
0038ae: 2d40a4f8     move.l     d0, -$5b08(a6)
0038b2: 6c00000a     bge.w      $38be
0038b6: 70ff         moveq      #$ff, d0
0038b8: 588f         addq.l     #$4, a7
0038ba: 6000002e     bra.w      $38ea
0038be: 42a7         clr.l      -(a7)
0038c0: 222ea4f8     move.l     -$5b08(a6), d1
0038c4: 203c00000701 move.l     #$701, d0
0038ca: 61000be0     bsr.w      $44ac
0038ce: 588f         addq.l     #$4, a7
0038d0: 2e80         move.l     d0, (a7)
0038d2: 4a97         tst.l      (a7)
0038d4: 6700000a     beq.w      $38e0
0038d8: 2017         move.l     (a7), d0
0038da: 588f         addq.l     #$4, a7
0038dc: 6000000c     bra.w      $38ea
0038e0: 7000         moveq      #$0, d0
0038e2: 588f         addq.l     #$4, a7
0038e4: 60000004     bra.w      $38ea
0038e8: 4e71         nop        
0038ea: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0038f0: 4e5d         unlk       a5
0038f2: 4e75         rts        
0038f4: 4e550000     link.w     a5, #$0
0038f8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0038fc: 203cffffffb8 move.l     #$ffffffb8, d0
003902: 6100c866     bsr.w      $16a
003906: 4aaea4f8     tst.l      -$5b08(a6)
00390a: 6c00001c     bge.w      $3928
00390e: 7203         moveq      #$3, d1
003910: 41fa0195     lea.l      $3aa7(pc), a0
003914: 2008         move.l     a0, d0
003916: 6100205e     bsr.w      $5976
00391a: 2d40a4f8     move.l     d0, -$5b08(a6)
00391e: 6c000008     bge.w      $3928
003922: 70ff         moveq      #$ff, d0
003924: 6000001a     bra.w      $3940
003928: 42a7         clr.l      -(a7)
00392a: 222ea4f8     move.l     -$5b08(a6), d1
00392e: 203c00000706 move.l     #$706, d0
003934: 61000b76     bsr.w      $44ac
003938: 588f         addq.l     #$4, a7
00393a: 60000004     bra.w      $3940
00393e: 4e71         nop        
003940: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003946: 4e5d         unlk       a5
003948: 4e75         rts        
00394a: 4e550000     link.w     a5, #$0
00394e: 48e7c080     movem.l    d0-d1/a0, -(a7)
003952: 203cffffffb8 move.l     #$ffffffb8, d0
003958: 6100c810     bsr.w      $16a
00395c: 4aaea4f8     tst.l      -$5b08(a6)
003960: 6c00001c     bge.w      $397e
003964: 7203         moveq      #$3, d1
003966: 41fa0148     lea.l      $3ab0(pc), a0
00396a: 2008         move.l     a0, d0
00396c: 61002008     bsr.w      $5976
003970: 2d40a4f8     move.l     d0, -$5b08(a6)
003974: 6c000008     bge.w      $397e
003978: 70ff         moveq      #$ff, d0
00397a: 6000001a     bra.w      $3996
00397e: 42a7         clr.l      -(a7)
003980: 222ea4f8     move.l     -$5b08(a6), d1
003984: 203c00000705 move.l     #$705, d0
00398a: 61000b20     bsr.w      $44ac
00398e: 588f         addq.l     #$4, a7
003990: 60000004     bra.w      $3996
003994: 4e71         nop        
003996: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00399c: 4e5d         unlk       a5
00399e: 4e75         rts        
0039a0: 4e550000     link.w     a5, #$0
0039a4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0039a8: 203cffffffb4 move.l     #$ffffffb4, d0
0039ae: 6100c7ba     bsr.w      $16a
0039b2: 598f         subq.l     #$4, a7
0039b4: 4aaea4f8     tst.l      -$5b08(a6)
0039b8: 6c00001e     bge.w      $39d8
0039bc: 7203         moveq      #$3, d1
0039be: 41fa00f9     lea.l      $3ab9(pc), a0
0039c2: 2008         move.l     a0, d0
0039c4: 61001fb0     bsr.w      $5976
0039c8: 2d40a4f8     move.l     d0, -$5b08(a6)
0039cc: 6c00000a     bge.w      $39d8
0039d0: 70ff         moveq      #$ff, d0
0039d2: 588f         addq.l     #$4, a7
0039d4: 60000096     bra.w      $3a6c
0039d8: 42a7         clr.l      -(a7)
0039da: 222ea4f8     move.l     -$5b08(a6), d1
0039de: 203c0000070c move.l     #$70c, d0
0039e4: 61000a7e     bsr.w      $4464
0039e8: 588f         addq.l     #$4, a7
0039ea: 4a80         tst.l      d0
0039ec: 6700000a     beq.w      $39f8
0039f0: 70ff         moveq      #$ff, d0
0039f2: 588f         addq.l     #$4, a7
0039f4: 60000076     bra.w      $3a6c
0039f8: 4aaea4fc     tst.l      -$5b04(a6)
0039fc: 66000026     bne.w      $3a24
003a00: 42a7         clr.l      -(a7)
003a02: 223c00000082 move.l     #$82, d1
003a08: 203c0000008a move.l     #$8a, d0
003a0e: 610000b2     bsr.w      $3ac2
003a12: 588f         addq.l     #$4, a7
003a14: 2d40a4fc     move.l     d0, -$5b04(a6)
003a18: 6600000a     bne.w      $3a24
003a1c: 70ff         moveq      #$ff, d0
003a1e: 588f         addq.l     #$4, a7
003a20: 6000004a     bra.w      $3a6c
003a24: 48780002     pea.l      $2.w
003a28: 41ef0004     lea.l      $4(a7), a0
003a2c: 2208         move.l     a0, d1
003a2e: 202ea4fc     move.l     -$5b04(a6), d0
003a32: 6100023c     bsr.w      $3c70
003a36: 588f         addq.l     #$4, a7
003a38: 7202         moveq      #$2, d1
003a3a: b280         cmp.l      d0, d1
003a3c: 6700000a     beq.w      $3a48
003a40: 70ff         moveq      #$ff, d0
003a42: 588f         addq.l     #$4, a7
003a44: 60000026     bra.w      $3a6c
003a48: 7000         moveq      #$0, d0
003a4a: 302f0002     move.w     $2(a7), d0
003a4e: 7264         moveq      #$64, d1
003a50: 610020de     bsr.w      $5b30
003a54: 206f0004     movea.l    $4(a7), a0
003a58: 2080         move.l     d0, (a0)
003a5a: 3057         movea.w    (a7), a0
003a5c: 226f0008     movea.l    $8(a7), a1
003a60: 2288         move.l     a0, (a1)
003a62: 7000         moveq      #$0, d0
003a64: 588f         addq.l     #$4, a7
003a66: 60000004     bra.w      $3a6c
003a6a: 4e71         nop        
003a6c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003a72: 4e5d         unlk       a5
003a74: 4e75         rts        
003a76: 4afb         .dc.w      $4afb
003a78: 0048         .dc.w      $0048
003a7a: 2f685f697463 move.l     $5f69(a0), $7463(a7)
003a80: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003a86: 6974         bvs.b      $3afc
003a88: 632f         bls.b      $3ab9
003a8a: 7200         moveq      #$0, d1
003a8c: 2f685f697463 move.l     $5f69(a0), $7463(a7)
003a92: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003a98: 6974         bvs.b      $3b0e
003a9a: 632f         bls.b      $3acb
003a9c: 7200         moveq      #$0, d1
003a9e: 2f685f697463 move.l     $5f69(a0), $7463(a7)
003aa4: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003aaa: 6974         bvs.b      $3b20
003aac: 632f         bls.b      $3add
003aae: 7200         moveq      #$0, d1
003ab0: 2f685f697463 move.l     $5f69(a0), $7463(a7)
003ab6: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
003abc: 6974         bvs.b      $3b32
003abe: 632f         bls.b      $3aef
003ac0: 7200         moveq      #$0, d1
003ac2: 4e550000     link.w     a5, #$0
003ac6: 48e7c080     movem.l    d0-d1/a0, -(a7)
003aca: 203cffffff92 move.l     #$ffffff92, d0
003ad0: 6100c698     bsr.w      $16a
003ad4: 4fefffde     lea.l      -$22(a7), a7
003ad8: 7000         moveq      #$0, d0
003ada: 102f0025     move.b     $25(a7), d0
003ade: 2f00         move.l     d0, -(a7)
003ae0: 2f2ea500     move.l     -$5b00(a6), -(a7)
003ae4: 41fa043b     lea.l      $3f21(pc), a0
003ae8: 2208         move.l     a0, d1
003aea: 41ef000c     lea.l      $c(a7), a0
003aee: 2008         move.l     a0, d0
003af0: 61001e44     bsr.w      $5936
003af4: 508f         addq.l     #$8, a7
003af6: 7000         moveq      #$0, d0
003af8: 102f0029     move.b     $29(a7), d0
003afc: e188         lsl.l      #$8, d0
003afe: 7200         moveq      #$0, d1
003b00: 122f0039     move.b     $39(a7), d1
003b04: 8081         or.l       d1, d0
003b06: 2f00         move.l     d0, -(a7)
003b08: 7203         moveq      #$3, d1
003b0a: 41ef0008     lea.l      $8(a7), a0
003b0e: 2008         move.l     a0, d0
003b10: 61001e5c     bsr.w      $596e
003b14: 588f         addq.l     #$4, a7
003b16: 2e80         move.l     d0, (a7)
003b18: 6c00000c     bge.w      $3b26
003b1c: 7000         moveq      #$0, d0
003b1e: 4fef0022     lea.l      $22(a7), a7
003b22: 60000010     bra.w      $3b34
003b26: 2017         move.l     (a7), d0
003b28: 5280         addq.l     #$1, d0
003b2a: 4fef0022     lea.l      $22(a7), a7
003b2e: 60000004     bra.w      $3b34
003b32: 4e71         nop        
003b34: 4ced0100fffc movem.l    -$4(a5), a0
003b3a: 4e5d         unlk       a5
003b3c: 4e75         rts        
003b3e: 4e550000     link.w     a5, #$0
003b42: 48e7c080     movem.l    d0-d1/a0, -(a7)
003b46: 203cffffff92 move.l     #$ffffff92, d0
003b4c: 6100c61c     bsr.w      $16a
003b50: 4fefffde     lea.l      -$22(a7), a7
003b54: 7000         moveq      #$0, d0
003b56: 102f0025     move.b     $25(a7), d0
003b5a: 2f00         move.l     d0, -(a7)
003b5c: 2f2ea500     move.l     -$5b00(a6), -(a7)
003b60: 41fa03c6     lea.l      $3f28(pc), a0
003b64: 2208         move.l     a0, d1
003b66: 41ef000c     lea.l      $c(a7), a0
003b6a: 2008         move.l     a0, d0
003b6c: 61001dc8     bsr.w      $5936
003b70: 508f         addq.l     #$8, a7
003b72: 2f2f0036     move.l     $36(a7), -(a7)
003b76: 7000         moveq      #$0, d0
003b78: 102f002d     move.b     $2d(a7), d0
003b7c: 2f00         move.l     d0, -(a7)
003b7e: 7221         moveq      #$21, d1
003b80: 41ef000c     lea.l      $c(a7), a0
003b84: 2008         move.l     a0, d0
003b86: 61001de6     bsr.w      $596e
003b8a: 508f         addq.l     #$8, a7
003b8c: 2e80         move.l     d0, (a7)
003b8e: 4a97         tst.l      (a7)
003b90: 6d000016     blt.w      $3ba8
003b94: 2017         move.l     (a7), d0
003b96: 61001e0e     bsr.w      $59a6
003b9a: 7000         moveq      #$0, d0
003b9c: 4fef0022     lea.l      $22(a7), a7
003ba0: 60000014     bra.w      $3bb6
003ba4: 6000000c     bra.w      $3bb2
003ba8: 70ff         moveq      #$ff, d0
003baa: 4fef0022     lea.l      $22(a7), a7
003bae: 60000006     bra.w      $3bb6
003bb2: 4fef0022     lea.l      $22(a7), a7
003bb6: 4ced0100fffc movem.l    -$4(a5), a0
003bbc: 4e5d         unlk       a5
003bbe: 4e75         rts        
003bc0: 4e550000     link.w     a5, #$0
003bc4: 48e78000     movem.l    d0, -(a7)
003bc8: 203cffffffbc move.l     #$ffffffbc, d0
003bce: 6100c59a     bsr.w      $16a
003bd2: 7001         moveq      #$1, d0
003bd4: b097         cmp.l      (a7), d0
003bd6: 6e00001a     bgt.w      $3bf2
003bda: 2017         move.l     (a7), d0
003bdc: 5380         subq.l     #$1, d0
003bde: 61001dc6     bsr.w      $59a6
003be2: 4a80         tst.l      d0
003be4: 6d00000c     blt.w      $3bf2
003be8: 7000         moveq      #$0, d0
003bea: 60000014     bra.w      $3c00
003bee: 60000010     bra.w      $3c00
003bf2: 2d7c000000c9800c move.l     #$c9, -$7ff4(a6)
003bfa: 70ff         moveq      #$ff, d0
003bfc: 60000002     bra.w      $3c00
003c00: 4e5d         unlk       a5
003c02: 4e75         rts        
003c04: 4e550000     link.w     a5, #$0
003c08: 48e7c000     movem.l    d0-d1, -(a7)
003c0c: 203cffffffb8 move.l     #$ffffffb8, d0
003c12: 6100c556     bsr.w      $16a
003c16: 7000         moveq      #$0, d0
003c18: 102f0013     move.b     $13(a7), d0
003c1c: 2f00         move.l     d0, -(a7)
003c1e: 222f0008     move.l     $8(a7), d1
003c22: 202f0004     move.l     $4(a7), d0
003c26: 5380         subq.l     #$1, d0
003c28: 61001d68     bsr.w      $5992
003c2c: 588f         addq.l     #$4, a7
003c2e: 60000004     bra.w      $3c34
003c32: 4e71         nop        
003c34: 4e5d         unlk       a5
003c36: 4e75         rts        
003c38: 4e550000     link.w     a5, #$0
003c3c: 48e7c000     movem.l    d0-d1, -(a7)
003c40: 203cffffffb8 move.l     #$ffffffb8, d0
003c46: 6100c522     bsr.w      $16a
003c4a: 7000         moveq      #$0, d0
003c4c: 102f0007     move.b     $7(a7), d0
003c50: 2f00         move.l     d0, -(a7)
003c52: 202f0004     move.l     $4(a7), d0
003c56: 5380         subq.l     #$1, d0
003c58: 2200         move.l     d0, d1
003c5a: 203c00000808 move.l     #$808, d0
003c60: 6100084a     bsr.w      $44ac
003c64: 588f         addq.l     #$4, a7
003c66: 60000004     bra.w      $3c6c
003c6a: 4e71         nop        
003c6c: 4e5d         unlk       a5
003c6e: 4e75         rts        
003c70: 4e550000     link.w     a5, #$0
003c74: 48e7c000     movem.l    d0-d1, -(a7)
003c78: 203cffffffb8 move.l     #$ffffffb8, d0
003c7e: 6100c4ea     bsr.w      $16a
003c82: 7000         moveq      #$0, d0
003c84: 102f0013     move.b     $13(a7), d0
003c88: 2f00         move.l     d0, -(a7)
003c8a: 222f0008     move.l     $8(a7), d1
003c8e: 202f0004     move.l     $4(a7), d0
003c92: 5380         subq.l     #$1, d0
003c94: 61001cf4     bsr.w      $598a
003c98: 588f         addq.l     #$4, a7
003c9a: 60000004     bra.w      $3ca0
003c9e: 4e71         nop        
003ca0: 4e5d         unlk       a5
003ca2: 4e75         rts        
003ca4: 4e550000     link.w     a5, #$0
003ca8: 48e7c000     movem.l    d0-d1, -(a7)
003cac: 203cffffffb8 move.l     #$ffffffb8, d0
003cb2: 6100c4b6     bsr.w      $16a
003cb6: 42a7         clr.l      -(a7)
003cb8: 202f0004     move.l     $4(a7), d0
003cbc: 5380         subq.l     #$1, d0
003cbe: 2200         move.l     d0, d1
003cc0: 203c00000802 move.l     #$802, d0
003cc6: 6100079c     bsr.w      $4464
003cca: 588f         addq.l     #$4, a7
003ccc: 60000004     bra.w      $3cd2
003cd0: 4e71         nop        
003cd2: 4ced0002fffc movem.l    -$4(a5), d1
003cd8: 4e5d         unlk       a5
003cda: 4e75         rts        
003cdc: 4e550000     link.w     a5, #$0
003ce0: 48e7c000     movem.l    d0-d1, -(a7)
003ce4: 203cffffffb8 move.l     #$ffffffb8, d0
003cea: 6100c47e     bsr.w      $16a
003cee: 2f2f0004     move.l     $4(a7), -(a7)
003cf2: 202f0004     move.l     $4(a7), d0
003cf6: 5380         subq.l     #$1, d0
003cf8: 2200         move.l     d0, d1
003cfa: 203c00000803 move.l     #$803, d0
003d00: 61000762     bsr.w      $4464
003d04: 588f         addq.l     #$4, a7
003d06: 60000004     bra.w      $3d0c
003d0a: 4e71         nop        
003d0c: 4e5d         unlk       a5
003d0e: 4e75         rts        
003d10: 4e550000     link.w     a5, #$0
003d14: 48e78000     movem.l    d0, -(a7)
003d18: 203cffffffc0 move.l     #$ffffffc0, d0
003d1e: 6100c44a     bsr.w      $16a
003d22: 4e5d         unlk       a5
003d24: 4e75         rts        
003d26: 4e550000     link.w     a5, #$0
003d2a: 48e7c000     movem.l    d0-d1, -(a7)
003d2e: 203cffffffb8 move.l     #$ffffffb8, d0
003d34: 6100c434     bsr.w      $16a
003d38: 42a7         clr.l      -(a7)
003d3a: 202f0004     move.l     $4(a7), d0
003d3e: 5380         subq.l     #$1, d0
003d40: 2200         move.l     d0, d1
003d42: 203c00000806 move.l     #$806, d0
003d48: 6100071a     bsr.w      $4464
003d4c: 588f         addq.l     #$4, a7
003d4e: 60000004     bra.w      $3d54
003d52: 4e71         nop        
003d54: 4ced0002fffc movem.l    -$4(a5), d1
003d5a: 4e5d         unlk       a5
003d5c: 4e75         rts        
003d5e: 4e550000     link.w     a5, #$0
003d62: 48e7c000     movem.l    d0-d1, -(a7)
003d66: 203cffffffb8 move.l     #$ffffffb8, d0
003d6c: 6100c3fc     bsr.w      $16a
003d70: 7000         moveq      #$0, d0
003d72: 102f0007     move.b     $7(a7), d0
003d76: 2f00         move.l     d0, -(a7)
003d78: 202f0004     move.l     $4(a7), d0
003d7c: 5380         subq.l     #$1, d0
003d7e: 2200         move.l     d0, d1
003d80: 203c00000807 move.l     #$807, d0
003d86: 61000724     bsr.w      $44ac
003d8a: 588f         addq.l     #$4, a7
003d8c: 60000004     bra.w      $3d92
003d90: 4e71         nop        
003d92: 4e5d         unlk       a5
003d94: 4e75         rts        
003d96: 4e550000     link.w     a5, #$0
003d9a: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003d9e: 2440         movea.l    d0, a2
003da0: 2641         movea.l    d1, a3
003da2: 203cffffffc0 move.l     #$ffffffc0, d0
003da8: 6100c3c0     bsr.w      $16a
003dac: 7000         moveq      #$0, d0
003dae: 102f001f     move.b     $1f(a7), d0
003db2: d08b         add.l      a3, d0
003db4: 2840         movea.l    d0, a4
003db6: 60000008     bra.w      $3dc0
003dba: 1493         move.b     (a3), (a2)
003dbc: 528a         addq.l     #$1, a2
003dbe: 528b         addq.l     #$1, a3
003dc0: b7cc         cmpa.l     a4, a3
003dc2: 6500fff6     bcs.w      $3dba
003dc6: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003dcc: 4e5d         unlk       a5
003dce: 4e75         rts        
003dd0: 4e550000     link.w     a5, #$0
003dd4: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003dd8: 2440         movea.l    d0, a2
003dda: 2641         movea.l    d1, a3
003ddc: 203cffffffc0 move.l     #$ffffffc0, d0
003de2: 6100c386     bsr.w      $16a
003de6: 7000         moveq      #$0, d0
003de8: 102f001f     move.b     $1f(a7), d0
003dec: e388         lsl.l      #$1, d0
003dee: d08b         add.l      a3, d0
003df0: 2840         movea.l    d0, a4
003df2: 6000000e     bra.w      $3e02
003df6: 14ab0001     move.b     $1(a3), (a2)
003dfa: 15530001     move.b     (a3), $1(a2)
003dfe: 548a         addq.l     #$2, a2
003e00: 548b         addq.l     #$2, a3
003e02: b7cc         cmpa.l     a4, a3
003e04: 6500fff0     bcs.w      $3df6
003e08: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003e0e: 4e5d         unlk       a5
003e10: 4e75         rts        
003e12: 4e550000     link.w     a5, #$0
003e16: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003e1a: 2440         movea.l    d0, a2
003e1c: 2641         movea.l    d1, a3
003e1e: 203cffffffc0 move.l     #$ffffffc0, d0
003e24: 6100c344     bsr.w      $16a
003e28: 7000         moveq      #$0, d0
003e2a: 102f001f     move.b     $1f(a7), d0
003e2e: e588         lsl.l      #$2, d0
003e30: d08b         add.l      a3, d0
003e32: 2840         movea.l    d0, a4
003e34: 6000001a     bra.w      $3e50
003e38: 14ab0003     move.b     $3(a3), (a2)
003e3c: 156b00020001 move.b     $2(a3), $1(a2)
003e42: 156b00010002 move.b     $1(a3), $2(a2)
003e48: 15530003     move.b     (a3), $3(a2)
003e4c: 588a         addq.l     #$4, a2
003e4e: 588b         addq.l     #$4, a3
003e50: b7cc         cmpa.l     a4, a3
003e52: 6500ffe4     bcs.w      $3e38
003e56: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003e5c: 4e5d         unlk       a5
003e5e: 4e75         rts        
003e60: 4e550000     link.w     a5, #$0
003e64: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003e68: 2440         movea.l    d0, a2
003e6a: 2641         movea.l    d1, a3
003e6c: 203cffffffc0 move.l     #$ffffffc0, d0
003e72: 6100c2f6     bsr.w      $16a
003e76: 7000         moveq      #$0, d0
003e78: 102f001f     move.b     $1f(a7), d0
003e7c: e588         lsl.l      #$2, d0
003e7e: d08b         add.l      a3, d0
003e80: 2840         movea.l    d0, a4
003e82: 6000001a     bra.w      $3e9e
003e86: 14ab0003     move.b     $3(a3), (a2)
003e8a: 156b00020001 move.b     $2(a3), $1(a2)
003e90: 156b00010002 move.b     $1(a3), $2(a2)
003e96: 15530003     move.b     (a3), $3(a2)
003e9a: 588a         addq.l     #$4, a2
003e9c: 588b         addq.l     #$4, a3
003e9e: b7cc         cmpa.l     a4, a3
003ea0: 6500ffe4     bcs.w      $3e86
003ea4: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003eaa: 4e5d         unlk       a5
003eac: 4e75         rts        
003eae: 4e550000     link.w     a5, #$0
003eb2: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003eb6: 2440         movea.l    d0, a2
003eb8: 2641         movea.l    d1, a3
003eba: 203cffffffc0 move.l     #$ffffffc0, d0
003ec0: 6100c2a8     bsr.w      $16a
003ec4: 7000         moveq      #$0, d0
003ec6: 102f001f     move.b     $1f(a7), d0
003eca: e788         lsl.l      #$3, d0
003ecc: d08b         add.l      a3, d0
003ece: 2840         movea.l    d0, a4
003ed0: 60000032     bra.w      $3f04
003ed4: 14ab0007     move.b     $7(a3), (a2)
003ed8: 156b00060001 move.b     $6(a3), $1(a2)
003ede: 156b00050002 move.b     $5(a3), $2(a2)
003ee4: 156b00040003 move.b     $4(a3), $3(a2)
003eea: 156b00030004 move.b     $3(a3), $4(a2)
003ef0: 156b00020005 move.b     $2(a3), $5(a2)
003ef6: 156b00010006 move.b     $1(a3), $6(a2)
003efc: 15530007     move.b     (a3), $7(a2)
003f00: 508a         addq.l     #$8, a2
003f02: 508b         addq.l     #$8, a3
003f04: b7cc         cmpa.l     a4, a3
003f06: 6500ffcc     bcs.w      $3ed4
003f0a: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003f10: 4e5d         unlk       a5
003f12: 4e75         rts        
003f14: 4afb         .dc.w      $4afb
003f16: 00172f68     ori.b      #$68, (a7)
003f1a: 5f697463     subq.w     #$7, $7463(a1)
003f1e: 2f730025735f move.l     $25(a3, d0.w), $735f(a7)
003f24: 25645f00     move.l     -(a4), $5f00(a2)
003f28: 25735f25645f0000 move.l     ([$645f, a3], d5.l * 8), $0(a2)
003f30: 4e550000     link.w     a5, #$0
003f34: 48e7c080     movem.l    d0-d1/a0, -(a7)
003f38: 203cffffffb8 move.l     #$ffffffb8, d0
003f3e: 6100c22a     bsr.w      $16a
003f42: 4aaea504     tst.l      -$5afc(a6)
003f46: 6c00001c     bge.w      $3f64
003f4a: 7203         moveq      #$3, d1
003f4c: 41fa02c0     lea.l      $420e(pc), a0
003f50: 2008         move.l     a0, d0
003f52: 61001a22     bsr.w      $5976
003f56: 2d40a504     move.l     d0, -$5afc(a6)
003f5a: 6c000008     bge.w      $3f64
003f5e: 70ff         moveq      #$ff, d0
003f60: 60000056     bra.w      $3fb8
003f64: 4aaea508     tst.l      -$5af8(a6)
003f68: 66000024     bne.w      $3f8e
003f6c: 42a7         clr.l      -(a7)
003f6e: 223c00000082 move.l     #$82, d1
003f74: 203c0000008a move.l     #$8a, d0
003f7a: 6100fb46     bsr.w      $3ac2
003f7e: 588f         addq.l     #$4, a7
003f80: 2d40a508     move.l     d0, -$5af8(a6)
003f84: 66000008     bne.w      $3f8e
003f88: 70ff         moveq      #$ff, d0
003f8a: 6000002c     bra.w      $3fb8
003f8e: 48780005     pea.l      $5.w
003f92: 222f0004     move.l     $4(a7), d1
003f96: 202ea508     move.l     -$5af8(a6), d0
003f9a: 6100fc68     bsr.w      $3c04
003f9e: 588f         addq.l     #$4, a7
003fa0: 42a7         clr.l      -(a7)
003fa2: 222ea504     move.l     -$5afc(a6), d1
003fa6: 203c00000709 move.l     #$709, d0
003fac: 610004fe     bsr.w      $44ac
003fb0: 588f         addq.l     #$4, a7
003fb2: 60000004     bra.w      $3fb8
003fb6: 4e71         nop        
003fb8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003fbe: 4e5d         unlk       a5
003fc0: 4e75         rts        
003fc2: 4e550000     link.w     a5, #$0
003fc6: 48e7c080     movem.l    d0-d1/a0, -(a7)
003fca: 203cffffffb8 move.l     #$ffffffb8, d0
003fd0: 6100c198     bsr.w      $16a
003fd4: 4aaea504     tst.l      -$5afc(a6)
003fd8: 6c00001c     bge.w      $3ff6
003fdc: 7203         moveq      #$3, d1
003fde: 41fa0237     lea.l      $4217(pc), a0
003fe2: 2008         move.l     a0, d0
003fe4: 61001990     bsr.w      $5976
003fe8: 2d40a504     move.l     d0, -$5afc(a6)
003fec: 6c000008     bge.w      $3ff6
003ff0: 70ff         moveq      #$ff, d0
003ff2: 60000072     bra.w      $4066
003ff6: 42a7         clr.l      -(a7)
003ff8: 222ea504     move.l     -$5afc(a6), d1
003ffc: 203c00000708 move.l     #$708, d0
004002: 61000460     bsr.w      $4464
004006: 588f         addq.l     #$4, a7
004008: 4a80         tst.l      d0
00400a: 67000008     beq.w      $4014
00400e: 70ff         moveq      #$ff, d0
004010: 60000054     bra.w      $4066
004014: 4aaea508     tst.l      -$5af8(a6)
004018: 66000024     bne.w      $403e
00401c: 42a7         clr.l      -(a7)
00401e: 223c00000082 move.l     #$82, d1
004024: 203c0000008a move.l     #$8a, d0
00402a: 6100fa96     bsr.w      $3ac2
00402e: 588f         addq.l     #$4, a7
004030: 2d40a508     move.l     d0, -$5af8(a6)
004034: 66000008     bne.w      $403e
004038: 70ff         moveq      #$ff, d0
00403a: 6000002a     bra.w      $4066
00403e: 48780011     pea.l      $11.w
004042: 222f0004     move.l     $4(a7), d1
004046: 202ea508     move.l     -$5af8(a6), d0
00404a: 6100fc24     bsr.w      $3c70
00404e: 588f         addq.l     #$4, a7
004050: 7211         moveq      #$11, d1
004052: b280         cmp.l      d0, d1
004054: 67000008     beq.w      $405e
004058: 70ff         moveq      #$ff, d0
00405a: 6000000a     bra.w      $4066
00405e: 7000         moveq      #$0, d0
004060: 60000004     bra.w      $4066
004064: 4e71         nop        
004066: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00406c: 4e5d         unlk       a5
00406e: 4e75         rts        
004070: 4e550000     link.w     a5, #$0
004074: 48e7c080     movem.l    d0-d1/a0, -(a7)
004078: 203cffffffb8 move.l     #$ffffffb8, d0
00407e: 6100c0ea     bsr.w      $16a
004082: 4aaea504     tst.l      -$5afc(a6)
004086: 6c00001c     bge.w      $40a4
00408a: 7203         moveq      #$3, d1
00408c: 41fa0192     lea.l      $4220(pc), a0
004090: 2008         move.l     a0, d0
004092: 610018e2     bsr.w      $5976
004096: 2d40a504     move.l     d0, -$5afc(a6)
00409a: 6c000008     bge.w      $40a4
00409e: 70ff         moveq      #$ff, d0
0040a0: 60000072     bra.w      $4114
0040a4: 42a7         clr.l      -(a7)
0040a6: 222ea504     move.l     -$5afc(a6), d1
0040aa: 203c0000070e move.l     #$70e, d0
0040b0: 610003b2     bsr.w      $4464
0040b4: 588f         addq.l     #$4, a7
0040b6: 4a80         tst.l      d0
0040b8: 67000008     beq.w      $40c2
0040bc: 70ff         moveq      #$ff, d0
0040be: 60000054     bra.w      $4114
0040c2: 4aaea508     tst.l      -$5af8(a6)
0040c6: 66000024     bne.w      $40ec
0040ca: 42a7         clr.l      -(a7)
0040cc: 223c00000082 move.l     #$82, d1
0040d2: 203c0000008a move.l     #$8a, d0
0040d8: 6100f9e8     bsr.w      $3ac2
0040dc: 588f         addq.l     #$4, a7
0040de: 2d40a508     move.l     d0, -$5af8(a6)
0040e2: 66000008     bne.w      $40ec
0040e6: 70ff         moveq      #$ff, d0
0040e8: 6000002a     bra.w      $4114
0040ec: 48780008     pea.l      $8.w
0040f0: 222f0004     move.l     $4(a7), d1
0040f4: 202ea508     move.l     -$5af8(a6), d0
0040f8: 6100fb76     bsr.w      $3c70
0040fc: 588f         addq.l     #$4, a7
0040fe: 7208         moveq      #$8, d1
004100: b280         cmp.l      d0, d1
004102: 67000008     beq.w      $410c
004106: 70ff         moveq      #$ff, d0
004108: 6000000a     bra.w      $4114
00410c: 7000         moveq      #$0, d0
00410e: 60000004     bra.w      $4114
004112: 4e71         nop        
004114: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00411a: 4e5d         unlk       a5
00411c: 4e75         rts        
00411e: 4e550000     link.w     a5, #$0
004122: 48e7c080     movem.l    d0-d1/a0, -(a7)
004126: 203cffffffae move.l     #$ffffffae, d0
00412c: 6100c03c     bsr.w      $16a
004130: 4feffff6     lea.l      -$a(a7), a7
004134: 4aaea504     tst.l      -$5afc(a6)
004138: 6c000020     bge.w      $415a
00413c: 7203         moveq      #$3, d1
00413e: 41fa00e9     lea.l      $4229(pc), a0
004142: 2008         move.l     a0, d0
004144: 61001830     bsr.w      $5976
004148: 2d40a504     move.l     d0, -$5afc(a6)
00414c: 6c00000c     bge.w      $415a
004150: 70ff         moveq      #$ff, d0
004152: 4fef000a     lea.l      $a(a7), a7
004156: 600000a8     bra.w      $4200
00415a: 42a7         clr.l      -(a7)
00415c: 222ea504     move.l     -$5afc(a6), d1
004160: 203c0000070a move.l     #$70a, d0
004166: 610002fc     bsr.w      $4464
00416a: 588f         addq.l     #$4, a7
00416c: 2e80         move.l     d0, (a7)
00416e: 4a97         tst.l      (a7)
004170: 6700000c     beq.w      $417e
004174: 70ff         moveq      #$ff, d0
004176: 4fef000a     lea.l      $a(a7), a7
00417a: 60000084     bra.w      $4200
00417e: 4aaea508     tst.l      -$5af8(a6)
004182: 66000028     bne.w      $41ac
004186: 42a7         clr.l      -(a7)
004188: 223c00000082 move.l     #$82, d1
00418e: 203c0000008a move.l     #$8a, d0
004194: 6100f92c     bsr.w      $3ac2
004198: 588f         addq.l     #$4, a7
00419a: 2d40a508     move.l     d0, -$5af8(a6)
00419e: 6600000c     bne.w      $41ac
0041a2: 70ff         moveq      #$ff, d0
0041a4: 4fef000a     lea.l      $a(a7), a7
0041a8: 60000056     bra.w      $4200
0041ac: 48780003     pea.l      $3.w
0041b0: 41ef0008     lea.l      $8(a7), a0
0041b4: 2208         move.l     a0, d1
0041b6: 202ea508     move.l     -$5af8(a6), d0
0041ba: 6100fab4     bsr.w      $3c70
0041be: 588f         addq.l     #$4, a7
0041c0: 7203         moveq      #$3, d1
0041c2: b280         cmp.l      d0, d1
0041c4: 6700000c     beq.w      $41d2
0041c8: 70ff         moveq      #$ff, d0
0041ca: 4fef000a     lea.l      $a(a7), a7
0041ce: 60000030     bra.w      $4200
0041d2: 7000         moveq      #$0, d0
0041d4: 302f0006     move.w     $6(a7), d0
0041d8: 7210         moveq      #$10, d1
0041da: e3a8         lsl.l      d1, d0
0041dc: 7200         moveq      #$0, d1
0041de: 322f0004     move.w     $4(a7), d1
0041e2: 8081         or.l       d1, d0
0041e4: 206f000a     movea.l    $a(a7), a0
0041e8: 2080         move.l     d0, (a0)
0041ea: 206f000a     movea.l    $a(a7), a0
0041ee: 316f00080004 move.w     $8(a7), $4(a0)
0041f4: 7000         moveq      #$0, d0
0041f6: 4fef000a     lea.l      $a(a7), a7
0041fa: 60000004     bra.w      $4200
0041fe: 4e71         nop        
004200: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004206: 4e5d         unlk       a5
004208: 4e75         rts        
00420a: 4afb         .dc.w      $4afb
00420c: 00242f68     ori.b      #$68, -(a4)
004210: 5f697463     subq.w     #$7, $7463(a1)
004214: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
00421a: 6974         bvs.b      $4290
00421c: 632f         bls.b      $424d
00421e: 7200         moveq      #$0, d1
004220: 2f685f697463 move.l     $5f69(a0), $7463(a7)
004226: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
00422c: 6974         bvs.b      $42a2
00422e: 632f         bls.b      $425f
004230: 7200         moveq      #$0, d1
004232: 4e550000     link.w     a5, #$0
004236: 48e7c000     movem.l    d0-d1, -(a7)
00423a: 203cffffffb0 move.l     #$ffffffb0, d0
004240: 6100bf28     bsr.w      $16a
004244: 518f         subq.l     #$8, a7
004246: 42a7         clr.l      -(a7)
004248: 223c00000081 move.l     #$81, d1
00424e: 203c00000088 move.l     #$88, d0
004254: 6100f86c     bsr.w      $3ac2
004258: 588f         addq.l     #$4, a7
00425a: 2f400004     move.l     d0, $4(a7)
00425e: 6604         bne.b      $4264
004260: 70ff         moveq      #$ff, d0
004262: 601e         bra.b      $4282
004264: 48780020     pea.l      $20.w
004268: 222f000c     move.l     $c(a7), d1
00426c: 202f0008     move.l     $8(a7), d0
004270: 6100f9fe     bsr.w      $3c70
004274: 588f         addq.l     #$4, a7
004276: 2e80         move.l     d0, (a7)
004278: 202f0004     move.l     $4(a7), d0
00427c: 6100f942     bsr.w      $3bc0
004280: 2017         move.l     (a7), d0
004282: 508f         addq.l     #$8, a7
004284: 4ced0002fffc movem.l    -$4(a5), d1
00428a: 4e5d         unlk       a5
00428c: 4e75         rts        
00428e: 4e550000     link.w     a5, #$0
004292: 48e7c000     movem.l    d0-d1, -(a7)
004296: 203cffffffb0 move.l     #$ffffffb0, d0
00429c: 6100becc     bsr.w      $16a
0042a0: 518f         subq.l     #$8, a7
0042a2: 42a7         clr.l      -(a7)
0042a4: 223c00000081 move.l     #$81, d1
0042aa: 203c000000fe move.l     #$fe, d0
0042b0: 6100f810     bsr.w      $3ac2
0042b4: 588f         addq.l     #$4, a7
0042b6: 2f400004     move.l     d0, $4(a7)
0042ba: 6604         bne.b      $42c0
0042bc: 70ff         moveq      #$ff, d0
0042be: 6028         bra.b      $42e8
0042c0: 7220         moveq      #$20, d1
0042c2: 202f0004     move.l     $4(a7), d0
0042c6: 6100f970     bsr.w      $3c38
0042ca: 4878000c     pea.l      $c.w
0042ce: 222f000c     move.l     $c(a7), d1
0042d2: 202f0008     move.l     $8(a7), d0
0042d6: 6100f998     bsr.w      $3c70
0042da: 588f         addq.l     #$4, a7
0042dc: 2e80         move.l     d0, (a7)
0042de: 202f0004     move.l     $4(a7), d0
0042e2: 6100f8dc     bsr.w      $3bc0
0042e6: 2017         move.l     (a7), d0
0042e8: 508f         addq.l     #$8, a7
0042ea: 4ced0002fffc movem.l    -$4(a5), d1
0042f0: 4e5d         unlk       a5
0042f2: 4e75         rts        
0042f4: 4e550000     link.w     a5, #$0
0042f8: 48e7c000     movem.l    d0-d1, -(a7)
0042fc: 203cffffffb0 move.l     #$ffffffb0, d0
004302: 6100be66     bsr.w      $16a
004306: 518f         subq.l     #$8, a7
004308: 42a7         clr.l      -(a7)
00430a: 223c00000082 move.l     #$82, d1
004310: 203c000000fe move.l     #$fe, d0
004316: 6100f7aa     bsr.w      $3ac2
00431a: 588f         addq.l     #$4, a7
00431c: 2f400004     move.l     d0, $4(a7)
004320: 6604         bne.b      $4326
004322: 70ff         moveq      #$ff, d0
004324: 6028         bra.b      $434e
004326: 7214         moveq      #$14, d1
004328: 202f0004     move.l     $4(a7), d0
00432c: 6100f90a     bsr.w      $3c38
004330: 48780006     pea.l      $6.w
004334: 222f000c     move.l     $c(a7), d1
004338: 202f0008     move.l     $8(a7), d0
00433c: 6100f932     bsr.w      $3c70
004340: 588f         addq.l     #$4, a7
004342: 2e80         move.l     d0, (a7)
004344: 202f0004     move.l     $4(a7), d0
004348: 6100f876     bsr.w      $3bc0
00434c: 2017         move.l     (a7), d0
00434e: 508f         addq.l     #$8, a7
004350: 4ced0002fffc movem.l    -$4(a5), d1
004356: 4e5d         unlk       a5
004358: 4e75         rts        
00435a: 4e550000     link.w     a5, #$0
00435e: 48e7c000     movem.l    d0-d1, -(a7)
004362: 203cffffffb0 move.l     #$ffffffb0, d0
004368: 6100be00     bsr.w      $16a
00436c: 518f         subq.l     #$8, a7
00436e: 42a7         clr.l      -(a7)
004370: 223c00000082 move.l     #$82, d1
004376: 203c000000fe move.l     #$fe, d0
00437c: 6100f744     bsr.w      $3ac2
004380: 588f         addq.l     #$4, a7
004382: 2f400004     move.l     d0, $4(a7)
004386: 6604         bne.b      $438c
004388: 70ff         moveq      #$ff, d0
00438a: 6028         bra.b      $43b4
00438c: 7214         moveq      #$14, d1
00438e: 202f0004     move.l     $4(a7), d0
004392: 6100f8a4     bsr.w      $3c38
004396: 48780006     pea.l      $6.w
00439a: 222f000c     move.l     $c(a7), d1
00439e: 202f0008     move.l     $8(a7), d0
0043a2: 6100f860     bsr.w      $3c04
0043a6: 588f         addq.l     #$4, a7
0043a8: 2e80         move.l     d0, (a7)
0043aa: 202f0004     move.l     $4(a7), d0
0043ae: 6100f810     bsr.w      $3bc0
0043b2: 2017         move.l     (a7), d0
0043b4: 508f         addq.l     #$8, a7
0043b6: 4ced0002fffc movem.l    -$4(a5), d1
0043bc: 4e5d         unlk       a5
0043be: 4e75         rts        
0043c0: 4e550000     link.w     a5, #$0
0043c4: 48e7c000     movem.l    d0-d1, -(a7)
0043c8: 203cffffffb0 move.l     #$ffffffb0, d0
0043ce: 6100bd9a     bsr.w      $16a
0043d2: 518f         subq.l     #$8, a7
0043d4: 42a7         clr.l      -(a7)
0043d6: 223c00000082 move.l     #$82, d1
0043dc: 203c000000fe move.l     #$fe, d0
0043e2: 6100f6de     bsr.w      $3ac2
0043e6: 588f         addq.l     #$4, a7
0043e8: 2f400004     move.l     d0, $4(a7)
0043ec: 6604         bne.b      $43f2
0043ee: 70ff         moveq      #$ff, d0
0043f0: 6028         bra.b      $441a
0043f2: 7200         moveq      #$0, d1
0043f4: 202f0004     move.l     $4(a7), d0
0043f8: 6100f83e     bsr.w      $3c38
0043fc: 4878000a     pea.l      $a.w
004400: 222f000c     move.l     $c(a7), d1
004404: 202f0008     move.l     $8(a7), d0
004408: 6100f866     bsr.w      $3c70
00440c: 588f         addq.l     #$4, a7
00440e: 2e80         move.l     d0, (a7)
004410: 202f0004     move.l     $4(a7), d0
004414: 6100f7aa     bsr.w      $3bc0
004418: 2017         move.l     (a7), d0
00441a: 508f         addq.l     #$8, a7
00441c: 4ced0002fffc movem.l    -$4(a5), d1
004422: 4e5d         unlk       a5
004424: 4e75         rts        
004426: 4e550000     link.w     a5, #$0
00442a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00442e: 203cffffffb0 move.l     #$ffffffb0, d0
004434: 6100bd34     bsr.w      $16a
004438: 4feffff4     lea.l      -$c(a7), a7
00443c: 41d7         lea.l      (a7), a0
00443e: 2008         move.l     a0, d0
004440: 6100fe4c     bsr.w      $428e
004444: 72ff         moveq      #$ff, d1
004446: b280         cmp.l      d0, d1
004448: 670a         beq.b      $4454
00444a: 102f0009     move.b     $9(a7), d0
00444e: 4880         ext.w      d0
004450: 48c0         ext.l      d0
004452: 6002         bra.b      $4456
004454: 7000         moveq      #$0, d0
004456: 4fef000c     lea.l      $c(a7), a7
00445a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004460: 4e5d         unlk       a5
004462: 4e75         rts        
004464: 48e76080     movem.l    d1-d2/a0, -(a7)
004468: c141         exg.l      d0, d1
00446a: 0c8100000002 cmpi.l     #$2, d1
004470: 6714         beq.b      $4486
004472: 0c8100000005 cmpi.l     #$5, d1
004478: 670c         beq.b      $4486
00447a: 206f0010     movea.l    $10(a7), a0
00447e: 2408         move.l     a0, d2
004480: 4e40         trap       #$0
004482: 008d         .dc.w      $008d
004484: 604e         bra.b      $44d4
004486: 4e40         trap       #$0
004488: 008d         .dc.w      $008d
00448a: 655c         bcs.b      $44e8
00448c: 2002         move.l     d2, d0
00448e: 4cdf0106     movem.l    (a7)+, d1-d2/a0
004492: 4e75         rts        
004494: 48e77080     movem.l    d1-d3/a0, -(a7)
004498: c141         exg.l      d0, d1
00449a: 206f0014     movea.l    $14(a7), a0
00449e: 242f0018     move.l     $18(a7), d2
0044a2: 262f001c     move.l     $1c(a7), d3
0044a6: 4e40         trap       #$0
0044a8: 008d         .dc.w      $008d
0044aa: 6032         bra.b      $44de
0044ac: 48e76080     movem.l    d1-d2/a0, -(a7)
0044b0: c141         exg.l      d0, d1
0044b2: 206f0010     movea.l    $10(a7), a0
0044b6: 2408         move.l     a0, d2
0044b8: 4e40         trap       #$0
0044ba: 008e         .dc.w      $008e
0044bc: 6016         bra.b      $44d4
0044be: 48e76080     movem.l    d1-d2/a0, -(a7)
0044c2: c141         exg.l      d0, d1
0044c4: 206f0010     movea.l    $10(a7), a0
0044c8: 242f0014     move.l     $14(a7), d2
0044cc: 4e40         trap       #$0
0044ce: 008e         .dc.w      $008e
0044d0: 60000002     bra.w      $44d4
0044d4: 6512         bcs.b      $44e8
0044d6: 2001         move.l     d1, d0
0044d8: 4cdf0106     movem.l    (a7)+, d1-d2/a0
0044dc: 4e75         rts        
0044de: 6510         bcs.b      $44f0
0044e0: 2001         move.l     d1, d0
0044e2: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0044e6: 4e75         rts        
0044e8: 2d41800c     move.l     d1, -$7ff4(a6)
0044ec: 70ff         moveq      #$ff, d0
0044ee: 60e8         bra.b      $44d8
0044f0: 2d41800c     move.l     d1, -$7ff4(a6)
0044f4: 70ff         moveq      #$ff, d0
0044f6: 60ea         bra.b      $44e2
0044f8: 4e550000     link.w     a5, #$0
0044fc: 48e7c080     movem.l    d0-d1/a0, -(a7)
004500: 203cffffffaa move.l     #$ffffffaa, d0
004506: 61ffffffbc62 bsr.l      $16a
00450c: 4feffff2     lea.l      -$e(a7), a7
004510: 70ff         moveq      #$ff, d0
004512: 2f40000a     move.l     d0, $a(a7)
004516: 42af0006     clr.l      $6(a7)
00451a: 7058         moveq      #$58, d0
00451c: 4c2f0000000e mulu.l     $e(a7), d0
004522: 41eea50c     lea.l      -$5af4(a6), a0
004526: 2f700854000a move.l     $54(a0, d0.l), $a(a7)
00452c: 48780002     pea.l      $2.w
004530: 41ef0008     lea.l      $8(a7), a0
004534: 2208         move.l     a0, d1
004536: 202f000e     move.l     $e(a7), d0
00453a: 61ff0000144e bsr.l      $598a
004540: 588f         addq.l     #$4, a7
004542: 7202         moveq      #$2, d1
004544: b280         cmp.l      d0, d1
004546: 66ff000000ac bne.l      $45f4
00454c: 302f0004     move.w     $4(a7), d0
004550: 48c0         ext.l      d0
004552: 5480         addq.l     #$2, d0
004554: 2200         move.l     d0, d1
004556: 206f0012     movea.l    $12(a7), a0
00455a: 2010         move.l     (a0), d0
00455c: 61ff00001494 bsr.l      $59f2
004562: 206f0012     movea.l    $12(a7), a0
004566: 2080         move.l     d0, (a0)
004568: 67ff0000007c beq.l      $45e6
00456e: 206f0012     movea.l    $12(a7), a0
004572: 2050         movea.l    (a0), a0
004574: 30af0004     move.w     $4(a7), (a0)
004578: 426f0002     clr.w      $2(a7)
00457c: 60ff00000054 bra.l      $45d2
004582: 302f0002     move.w     $2(a7), d0
004586: 48c0         ext.l      d0
004588: 322f0004     move.w     $4(a7), d1
00458c: 48c1         ext.l      d1
00458e: 9280         sub.l      d0, d1
004590: 2f01         move.l     d1, -(a7)
004592: 206f0016     movea.l    $16(a7), a0
004596: 2010         move.l     (a0), d0
004598: 322f0006     move.w     $6(a7), d1
00459c: 48c1         ext.l      d1
00459e: d081         add.l      d1, d0
0045a0: 5480         addq.l     #$2, d0
0045a2: 2200         move.l     d0, d1
0045a4: 202f000e     move.l     $e(a7), d0
0045a8: 61ff000013e0 bsr.l      $598a
0045ae: 588f         addq.l     #$4, a7
0045b0: 3e80         move.w     d0, (a7)
0045b2: 0c57ffff     cmpi.w     #$ffff, (a7)
0045b6: 66ff00000014 bne.l      $45cc
0045bc: 203cffffff0c move.l     #$ffffff0c, d0
0045c2: 4fef000e     lea.l      $e(a7), a7
0045c6: 60ff00000044 bra.l      $460c
0045cc: 3017         move.w     (a7), d0
0045ce: d16f0002     add.w      d0, $2(a7)
0045d2: 302f0002     move.w     $2(a7), d0
0045d6: b06f0004     cmp.w      $4(a7), d0
0045da: 6dffffffffa6 blt.l      $4582
0045e0: 60ff0000000c bra.l      $45ee
0045e6: 2f7cffffff130006 move.l     #$ffffff13, $6(a7)
0045ee: 60ff0000000c bra.l      $45fc
0045f4: 2f7cffffff0c0006 move.l     #$ffffff0c, $6(a7)
0045fc: 202f0006     move.l     $6(a7), d0
004600: 4fef000e     lea.l      $e(a7), a7
004604: 60ff00000006 bra.l      $460c
00460a: 4e71         nop        
00460c: 4ced0100fffc movem.l    -$4(a5), a0
004612: 4e5d         unlk       a5
004614: 4e75         rts        
004616: 4e550000     link.w     a5, #$0
00461a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00461e: 203cffffffae move.l     #$ffffffae, d0
004624: 61ffffffbb44 bsr.l      $16a
00462a: 4feffff6     lea.l      -$a(a7), a7
00462e: 42af0006     clr.l      $6(a7)
004632: 206f000e     movea.l    $e(a7), a0
004636: 3010         move.w     (a0), d0
004638: 5440         addq.w     #$2, d0
00463a: 3f400004     move.w     d0, $4(a7)
00463e: 7058         moveq      #$58, d0
004640: 4c2f0000000a mulu.l     $a(a7), d0
004646: 41eea50c     lea.l      -$5af4(a6), a0
00464a: 2eb00854     move.l     $54(a0, d0.l), (a7)
00464e: 306f0004     movea.w    $4(a7), a0
004652: 2f08         move.l     a0, -(a7)
004654: 222f0012     move.l     $12(a7), d1
004658: 202f0004     move.l     $4(a7), d0
00465c: 61ff00001334 bsr.l      $5992
004662: 588f         addq.l     #$4, a7
004664: 322f0004     move.w     $4(a7), d1
004668: 48c1         ext.l      d1
00466a: b081         cmp.l      d1, d0
00466c: 67ff0000000a beq.l      $4678
004672: 70ff         moveq      #$ff, d0
004674: 2f400006     move.l     d0, $6(a7)
004678: 202f0006     move.l     $6(a7), d0
00467c: 4fef000a     lea.l      $a(a7), a7
004680: 60ff00000006 bra.l      $4688
004686: 4e71         nop        
004688: 4ced0100fffc movem.l    -$4(a5), a0
00468e: 4e5d         unlk       a5
004690: 4e75         rts        
004692: 4e550000     link.w     a5, #$0
004696: 48e7e080     movem.l    d0-d2/a0, -(a7)
00469a: 203cffffffb0 move.l     #$ffffffb0, d0
0046a0: 61ffffffbac8 bsr.l      $16a
0046a6: 598f         subq.l     #$4, a7
0046a8: 7058         moveq      #$58, d0
0046aa: 4c2f00000004 mulu.l     $4(a7), d0
0046b0: 41eea50c     lea.l      -$5af4(a6), a0
0046b4: 2f300850     move.l     $50(a0, d0.l), -(a7)
0046b8: 48780003     pea.l      $3.w
0046bc: 7223         moveq      #$23, d1
0046be: 41eea50c     lea.l      -$5af4(a6), a0
0046c2: 2008         move.l     a0, d0
0046c4: 7458         moveq      #$58, d2
0046c6: 4c2f2002000c mulu.l     $c(a7), d2
0046cc: d082         add.l      d2, d0
0046ce: 61ff00000536 bsr.l      $4c06
0046d4: 508f         addq.l     #$8, a7
0046d6: 2e80         move.l     d0, (a7)
0046d8: 72ff         moveq      #$ff, d1
0046da: b280         cmp.l      d0, d1
0046dc: 66ff0000000e bne.l      $46ec
0046e2: 70ff         moveq      #$ff, d0
0046e4: 588f         addq.l     #$4, a7
0046e6: 60ff00000020 bra.l      $4708
0046ec: 7058         moveq      #$58, d0
0046ee: 4c2f00000004 mulu.l     $4(a7), d0
0046f4: 41eea50c     lea.l      -$5af4(a6), a0
0046f8: 21970854     move.l     (a7), $54(a0, d0.l)
0046fc: 7000         moveq      #$0, d0
0046fe: 588f         addq.l     #$4, a7
004700: 60ff00000006 bra.l      $4708
004706: 4e71         nop        
004708: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
00470e: 4e5d         unlk       a5
004710: 4e75         rts        
004712: 4e550000     link.w     a5, #$0
004716: 48e7e080     movem.l    d0-d2/a0, -(a7)
00471a: 203cffffffb8 move.l     #$ffffffb8, d0
004720: 61ffffffba48 bsr.l      $16a
004726: 598f         subq.l     #$4, a7
004728: 7058         moveq      #$58, d0
00472a: 4c2f00000004 mulu.l     $4(a7), d0
004730: 41eea50c     lea.l      -$5af4(a6), a0
004734: 4ab00854     tst.l      $54(a0, d0.l)
004738: 67ff0000000e beq.l      $4748
00473e: 7000         moveq      #$0, d0
004740: 588f         addq.l     #$4, a7
004742: 60ff00000052 bra.l      $4796
004748: 306f000a     movea.w    $a(a7), a0
00474c: 2208         move.l     a0, d1
00474e: 41eea50c     lea.l      -$5af4(a6), a0
004752: 2008         move.l     a0, d0
004754: 7458         moveq      #$58, d2
004756: 4c2f20020004 mulu.l     $4(a7), d2
00475c: d082         add.l      d2, d0
00475e: 61ff00000302 bsr.l      $4a62
004764: 2e80         move.l     d0, (a7)
004766: 72ff         moveq      #$ff, d1
004768: b280         cmp.l      d0, d1
00476a: 66ff0000000e bne.l      $477a
004770: 70ff         moveq      #$ff, d0
004772: 588f         addq.l     #$4, a7
004774: 60ff00000020 bra.l      $4796
00477a: 7058         moveq      #$58, d0
00477c: 4c2f00000004 mulu.l     $4(a7), d0
004782: 41eea50c     lea.l      -$5af4(a6), a0
004786: 21970854     move.l     (a7), $54(a0, d0.l)
00478a: 7000         moveq      #$0, d0
00478c: 588f         addq.l     #$4, a7
00478e: 60ff00000006 bra.l      $4796
004794: 4e71         nop        
004796: 4ced0104fff8 movem.l    -$8(a5), d2/a0
00479c: 4e5d         unlk       a5
00479e: 4e75         rts        
0047a0: 4e550000     link.w     a5, #$0
0047a4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0047a8: 203cffffffb4 move.l     #$ffffffb4, d0
0047ae: 61ffffffb9ba bsr.l      $16a
0047b4: 518f         subq.l     #$8, a7
0047b6: 7001         moveq      #$1, d0
0047b8: 61ff00001230 bsr.l      $59ea
0047be: 2e80         move.l     d0, (a7)
0047c0: 66ff0000000e bne.l      $47d0
0047c6: 70ff         moveq      #$ff, d0
0047c8: 508f         addq.l     #$8, a7
0047ca: 60ff00000050 bra.l      $481c
0047d0: 60ff00000012 bra.l      $47e4
0047d6: 41d7         lea.l      (a7), a0
0047d8: 2208         move.l     a0, d1
0047da: 202f0008     move.l     $8(a7), d0
0047de: 61fffffffd18 bsr.l      $44f8
0047e4: 7058         moveq      #$58, d0
0047e6: 4c2f00000008 mulu.l     $8(a7), d0
0047ec: 41eea50c     lea.l      -$5af4(a6), a0
0047f0: 20300854     move.l     $54(a0, d0.l), d0
0047f4: 61ff00001636 bsr.l      $5e2c
0047fa: 2f400004     move.l     d0, $4(a7)
0047fe: 7202         moveq      #$2, d1
004800: b280         cmp.l      d0, d1
004802: 6fffffffffd2 ble.l      $47d6
004808: 2017         move.l     (a7), d0
00480a: 61ff000011ea bsr.l      $59f6
004810: 7000         moveq      #$0, d0
004812: 508f         addq.l     #$8, a7
004814: 60ff00000006 bra.l      $481c
00481a: 4e71         nop        
00481c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004822: 4e5d         unlk       a5
004824: 4e75         rts        
004826: 4e550000     link.w     a5, #$0
00482a: 48e78080     movem.l    d0/a0, -(a7)
00482e: 203cffffffb8 move.l     #$ffffffb8, d0
004834: 61ffffffb934 bsr.l      $16a
00483a: 598f         subq.l     #$4, a7
00483c: 7058         moveq      #$58, d0
00483e: 4c2f00000004 mulu.l     $4(a7), d0
004844: 41eea50c     lea.l      -$5af4(a6), a0
004848: 20300854     move.l     $54(a0, d0.l), d0
00484c: 61ff00001158 bsr.l      $59a6
004852: 2e80         move.l     d0, (a7)
004854: 7058         moveq      #$58, d0
004856: 4c2f00000004 mulu.l     $4(a7), d0
00485c: 41eea50c     lea.l      -$5af4(a6), a0
004860: 42b00854     clr.l      $54(a0, d0.l)
004864: 2017         move.l     (a7), d0
004866: 588f         addq.l     #$4, a7
004868: 60ff00000006 bra.l      $4870
00486e: 4e71         nop        
004870: 4ced0100fffc movem.l    -$4(a5), a0
004876: 4e5d         unlk       a5
004878: 4e75         rts        
00487a: 4e550000     link.w     a5, #$0
00487e: 48e7c080     movem.l    d0-d1/a0, -(a7)
004882: 203cffffffbc move.l     #$ffffffbc, d0
004888: 61ffffffb8e0 bsr.l      $16a
00488e: 7000         moveq      #$0, d0
004890: 302f0006     move.w     $6(a7), d0
004894: 2200         move.l     d0, d1
004896: 7058         moveq      #$58, d0
004898: 4c170000     mulu.l     (a7), d0
00489c: 41eea50c     lea.l      -$5af4(a6), a0
0048a0: 20300854     move.l     $54(a0, d0.l), d0
0048a4: 61ff00001672 bsr.l      $5f18
0048aa: 72ff         moveq      #$ff, d1
0048ac: b280         cmp.l      d0, d1
0048ae: 66ff0000000c bne.l      $48bc
0048b4: 70ff         moveq      #$ff, d0
0048b6: 60ff0000000e bra.l      $48c6
0048bc: 7000         moveq      #$0, d0
0048be: 60ff00000006 bra.l      $48c6
0048c4: 4e71         nop        
0048c6: 4ced0100fffc movem.l    -$4(a5), a0
0048cc: 4e5d         unlk       a5
0048ce: 4e75         rts        
0048d0: 4e550000     link.w     a5, #$0
0048d4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0048d8: 203cffffffaa move.l     #$ffffffaa, d0
0048de: 61ffffffb88a bsr.l      $16a
0048e4: 4feffff2     lea.l      -$e(a7), a7
0048e8: 70ff         moveq      #$ff, d0
0048ea: 2f40000a     move.l     d0, $a(a7)
0048ee: 42af0006     clr.l      $6(a7)
0048f2: 7058         moveq      #$58, d0
0048f4: 4c2f0000000e mulu.l     $e(a7), d0
0048fa: 41eea50c     lea.l      -$5af4(a6), a0
0048fe: 2f700854000a move.l     $54(a0, d0.l), $a(a7)
004904: 48780002     pea.l      $2.w
004908: 41ef0008     lea.l      $8(a7), a0
00490c: 2208         move.l     a0, d1
00490e: 202f000e     move.l     $e(a7), d0
004912: 61ff00001076 bsr.l      $598a
004918: 588f         addq.l     #$4, a7
00491a: 7202         moveq      #$2, d1
00491c: b280         cmp.l      d0, d1
00491e: 66ff000000a8 bne.l      $49c8
004924: 306f0004     movea.w    $4(a7), a0
004928: 2208         move.l     a0, d1
00492a: 206f0012     movea.l    $12(a7), a0
00492e: 2010         move.l     (a0), d0
004930: 61ff000010c0 bsr.l      $59f2
004936: 206f0012     movea.l    $12(a7), a0
00493a: 2080         move.l     d0, (a0)
00493c: 67ff0000007c beq.l      $49ba
004942: 206f0012     movea.l    $12(a7), a0
004946: 2050         movea.l    (a0), a0
004948: 30af0004     move.w     $4(a7), (a0)
00494c: 3f7c00020002 move.w     #$2, $2(a7)
004952: 60ff00000052 bra.l      $49a6
004958: 302f0002     move.w     $2(a7), d0
00495c: 48c0         ext.l      d0
00495e: 322f0004     move.w     $4(a7), d1
004962: 48c1         ext.l      d1
004964: 9280         sub.l      d0, d1
004966: 2f01         move.l     d1, -(a7)
004968: 206f0016     movea.l    $16(a7), a0
00496c: 2010         move.l     (a0), d0
00496e: 322f0006     move.w     $6(a7), d1
004972: 48c1         ext.l      d1
004974: d081         add.l      d1, d0
004976: 2200         move.l     d0, d1
004978: 202f000e     move.l     $e(a7), d0
00497c: 61ff0000100c bsr.l      $598a
004982: 588f         addq.l     #$4, a7
004984: 3e80         move.w     d0, (a7)
004986: 0c57ffff     cmpi.w     #$ffff, (a7)
00498a: 66ff00000014 bne.l      $49a0
004990: 203cffffff0c move.l     #$ffffff0c, d0
004996: 4fef000e     lea.l      $e(a7), a7
00499a: 60ff00000044 bra.l      $49e0
0049a0: 3017         move.w     (a7), d0
0049a2: d16f0002     add.w      d0, $2(a7)
0049a6: 302f0002     move.w     $2(a7), d0
0049aa: b06f0004     cmp.w      $4(a7), d0
0049ae: 6dffffffffa8 blt.l      $4958
0049b4: 60ff0000000c bra.l      $49c2
0049ba: 2f7cffffff130006 move.l     #$ffffff13, $6(a7)
0049c2: 60ff0000000c bra.l      $49d0
0049c8: 2f7cffffff0c0006 move.l     #$ffffff0c, $6(a7)
0049d0: 202f0006     move.l     $6(a7), d0
0049d4: 4fef000e     lea.l      $e(a7), a7
0049d8: 60ff00000006 bra.l      $49e0
0049de: 4e71         nop        
0049e0: 4ced0100fffc movem.l    -$4(a5), a0
0049e6: 4e5d         unlk       a5
0049e8: 4e75         rts        
0049ea: 4e550000     link.w     a5, #$0
0049ee: 48e7c080     movem.l    d0-d1/a0, -(a7)
0049f2: 203cffffffae move.l     #$ffffffae, d0
0049f8: 61ffffffb770 bsr.l      $16a
0049fe: 4feffff6     lea.l      -$a(a7), a7
004a02: 42af0006     clr.l      $6(a7)
004a06: 206f000e     movea.l    $e(a7), a0
004a0a: 3f500004     move.w     (a0), $4(a7)
004a0e: 7058         moveq      #$58, d0
004a10: 4c2f0000000a mulu.l     $a(a7), d0
004a16: 41eea50c     lea.l      -$5af4(a6), a0
004a1a: 2eb00854     move.l     $54(a0, d0.l), (a7)
004a1e: 306f0004     movea.w    $4(a7), a0
004a22: 2f08         move.l     a0, -(a7)
004a24: 222f0012     move.l     $12(a7), d1
004a28: 202f0004     move.l     $4(a7), d0
004a2c: 61ff00000f64 bsr.l      $5992
004a32: 588f         addq.l     #$4, a7
004a34: 322f0004     move.w     $4(a7), d1
004a38: 48c1         ext.l      d1
004a3a: b081         cmp.l      d1, d0
004a3c: 67ff0000000a beq.l      $4a48
004a42: 70ff         moveq      #$ff, d0
004a44: 2f400006     move.l     d0, $6(a7)
004a48: 202f0006     move.l     $6(a7), d0
004a4c: 4fef000a     lea.l      $a(a7), a7
004a50: 60ff00000006 bra.l      $4a58
004a56: 4e71         nop        
004a58: 4ced0100fffc movem.l    -$4(a5), a0
004a5e: 4e5d         unlk       a5
004a60: 4e75         rts        
004a62: 4e550000     link.w     a5, #$0
004a66: 48e7c000     movem.l    d0-d1, -(a7)
004a6a: 42a7         clr.l      -(a7)
004a6c: 222f0008     move.l     $8(a7), d1
004a70: 202f0004     move.l     $4(a7), d0
004a74: 613e         bsr.b      $4ab4
004a76: 588f         addq.l     #$4, a7
004a78: 4e5d         unlk       a5
004a7a: 4e75         rts        
004a7c: 4e550000     link.w     a5, #$0
004a80: 48e7c000     movem.l    d0-d1, -(a7)
004a84: 48780001     pea.l      $1.w
004a88: 222f0008     move.l     $8(a7), d1
004a8c: 202f0004     move.l     $4(a7), d0
004a90: 6122         bsr.b      $4ab4
004a92: 588f         addq.l     #$4, a7
004a94: 4e5d         unlk       a5
004a96: 4e75         rts        
004a98: 4e550000     link.w     a5, #$0
004a9c: 48e7c000     movem.l    d0-d1, -(a7)
004aa0: 48780002     pea.l      $2.w
004aa4: 222f0008     move.l     $8(a7), d1
004aa8: 202f0004     move.l     $4(a7), d0
004aac: 6106         bsr.b      $4ab4
004aae: 588f         addq.l     #$4, a7
004ab0: 4e5d         unlk       a5
004ab2: 4e75         rts        
004ab4: 4e550000     link.w     a5, #$0
004ab8: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
004abc: 4fefffda     lea.l      -$26(a7), a7
004ac0: 41ef0008     lea.l      $8(a7), a0
004ac4: 2208         move.l     a0, d1
004ac6: 202f0026     move.l     $26(a7), d0
004aca: 61000ad4     bsr.w      $55a0
004ace: 2440         movea.l    d0, a2
004ad0: 4a80         tst.l      d0
004ad2: 67000108     beq.w      $4bdc
004ad6: 41ef0008     lea.l      $8(a7), a0
004ada: 2008         move.l     a0, d0
004adc: 61000b08     bsr.w      $55e6
004ae0: 2f400004     move.l     d0, $4(a7)
004ae4: 6d0000f6     blt.w      $4bdc
004ae8: 41ef0022     lea.l      $22(a7), a0
004aec: 2208         move.l     a0, d1
004aee: 200a         move.l     a2, d0
004af0: 61000b7a     bsr.w      $566c
004af4: 2440         movea.l    d0, a2
004af6: 4a80         tst.l      d0
004af8: 670000e2     beq.w      $4bdc
004afc: 202f0004     move.l     $4(a7), d0
004b00: e588         lsl.l      #$2, d0
004b02: 41eea972     lea.l      -$568e(a6), a0
004b06: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
004b0c: 6600009a     bne.w      $4ba8
004b10: 7203         moveq      #$3, d1
004b12: 41ef0008     lea.l      $8(a7), a0
004b16: 2008         move.l     a0, d0
004b18: 61000e5c     bsr.w      $5976
004b1c: 222f0004     move.l     $4(a7), d1
004b20: e589         lsl.l      #$2, d1
004b22: 41eea972     lea.l      -$568e(a6), a0
004b26: 31801800     move.w     d0, (a0, d1.l)
004b2a: 6d0000ca     blt.w      $4bf6
004b2e: 202f0004     move.l     $4(a7), d0
004b32: e588         lsl.l      #$2, d0
004b34: 41eea972     lea.l      -$568e(a6), a0
004b38: 2400         move.l     d0, d2
004b3a: 42a7         clr.l      -(a7)
004b3c: 202f0008     move.l     $8(a7), d0
004b40: e588         lsl.l      #$2, d0
004b42: 43eea972     lea.l      -$568e(a6), a1
004b46: 32710800     movea.w    (a1, d0.l), a1
004b4a: 2209         move.l     a1, d1
004b4c: 203c0000ff0e move.l     #$ff0e, d0
004b52: 6100f910     bsr.w      $4464
004b56: 588f         addq.l     #$4, a7
004b58: 2240         movea.l    d0, a1
004b5a: 7000         moveq      #$0, d0
004b5c: 1011         move.b     (a1), d0
004b5e: 31802802     move.w     d0, $2(a0, d2.l)
004b62: 202f0004     move.l     $4(a7), d0
004b66: e588         lsl.l      #$2, d0
004b68: 41eea972     lea.l      -$568e(a6), a0
004b6c: 4a700800     tst.w      (a0, d0.l)
004b70: 6d36         blt.b      $4ba8
004b72: 202f0004     move.l     $4(a7), d0
004b76: e588         lsl.l      #$2, d0
004b78: 41eea972     lea.l      -$568e(a6), a0
004b7c: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
004b82: 6c24         bge.b      $4ba8
004b84: 202f0004     move.l     $4(a7), d0
004b88: e588         lsl.l      #$2, d0
004b8a: 41eea972     lea.l      -$568e(a6), a0
004b8e: 30700800     movea.w    (a0, d0.l), a0
004b92: 2008         move.l     a0, d0
004b94: 61000e10     bsr.w      $59a6
004b98: 202f0004     move.l     $4(a7), d0
004b9c: e588         lsl.l      #$2, d0
004b9e: 41eea972     lea.l      -$568e(a6), a0
004ba2: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
004ba8: 202f0004     move.l     $4(a7), d0
004bac: e588         lsl.l      #$2, d0
004bae: 41eea972     lea.l      -$568e(a6), a0
004bb2: 30300802     move.w     $2(a0, d0.l), d0
004bb6: 48c0         ext.l      d0
004bb8: b0af0022     cmp.l      $22(a7), d0
004bbc: 661e         bne.b      $4bdc
004bbe: 0c12005f     cmpi.b     #$5f, (a2)
004bc2: 6610         bne.b      $4bd4
004bc4: 6004         bra.b      $4bca
004bc6: 4a12         tst.b      (a2)
004bc8: 672c         beq.b      $4bf6
004bca: 528a         addq.l     #$1, a2
004bcc: 0c12005f     cmpi.b     #$5f, (a2)
004bd0: 66f4         bne.b      $4bc6
004bd2: 528a         addq.l     #$1, a2
004bd4: 222f002a     move.l     $2a(a7), d1
004bd8: 200a         move.l     a2, d0
004bda: 6008         bra.b      $4be4
004bdc: 222f002a     move.l     $2a(a7), d1
004be0: 202f0026     move.l     $26(a7), d0
004be4: 242f004e     move.l     $4e(a7), d2
004be8: e58a         lsl.l      #$2, d2
004bea: 41eea92c     lea.l      -$56d4(a6), a0
004bee: 20702800     movea.l    (a0, d2.l), a0
004bf2: 4e90         jsr        (a0)
004bf4: 6002         bra.b      $4bf8
004bf6: 70ff         moveq      #$ff, d0
004bf8: 4fef0026     lea.l      $26(a7), a7
004bfc: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
004c02: 4e5d         unlk       a5
004c04: 4e75         rts        
004c06: 4e550000     link.w     a5, #$0
004c0a: 48e7c080     movem.l    d0-d1/a0, -(a7)
004c0e: 2f2f0018     move.l     $18(a7), -(a7)
004c12: 306f001a     movea.w    $1a(a7), a0
004c16: 2f08         move.l     a0, -(a7)
004c18: 222f000c     move.l     $c(a7), d1
004c1c: 202f0008     move.l     $8(a7), d0
004c20: 610c         bsr.b      $4c2e
004c22: 508f         addq.l     #$8, a7
004c24: 4ced0100fffc movem.l    -$4(a5), a0
004c2a: 4e5d         unlk       a5
004c2c: 4e75         rts        
004c2e: 4e550000     link.w     a5, #$0
004c32: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
004c36: 4fefffda     lea.l      -$26(a7), a7
004c3a: 41ef0008     lea.l      $8(a7), a0
004c3e: 2208         move.l     a0, d1
004c40: 202f0026     move.l     $26(a7), d0
004c44: 6100095a     bsr.w      $55a0
004c48: 2440         movea.l    d0, a2
004c4a: 4a80         tst.l      d0
004c4c: 67000112     beq.w      $4d60
004c50: 41ef0008     lea.l      $8(a7), a0
004c54: 2008         move.l     a0, d0
004c56: 6100098e     bsr.w      $55e6
004c5a: 2f400004     move.l     d0, $4(a7)
004c5e: 6d000100     blt.w      $4d60
004c62: 41ef0022     lea.l      $22(a7), a0
004c66: 2208         move.l     a0, d1
004c68: 200a         move.l     a2, d0
004c6a: 61000a00     bsr.w      $566c
004c6e: 2440         movea.l    d0, a2
004c70: 4a80         tst.l      d0
004c72: 670000ec     beq.w      $4d60
004c76: 202f0004     move.l     $4(a7), d0
004c7a: e588         lsl.l      #$2, d0
004c7c: 41eea972     lea.l      -$568e(a6), a0
004c80: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
004c86: 6600009a     bne.w      $4d22
004c8a: 7203         moveq      #$3, d1
004c8c: 41ef0008     lea.l      $8(a7), a0
004c90: 2008         move.l     a0, d0
004c92: 61000ce2     bsr.w      $5976
004c96: 222f0004     move.l     $4(a7), d1
004c9a: e589         lsl.l      #$2, d1
004c9c: 41eea972     lea.l      -$568e(a6), a0
004ca0: 31801800     move.w     d0, (a0, d1.l)
004ca4: 6d0000d4     blt.w      $4d7a
004ca8: 202f0004     move.l     $4(a7), d0
004cac: e588         lsl.l      #$2, d0
004cae: 41eea972     lea.l      -$568e(a6), a0
004cb2: 2400         move.l     d0, d2
004cb4: 42a7         clr.l      -(a7)
004cb6: 202f0008     move.l     $8(a7), d0
004cba: e588         lsl.l      #$2, d0
004cbc: 43eea972     lea.l      -$568e(a6), a1
004cc0: 32710800     movea.w    (a1, d0.l), a1
004cc4: 2209         move.l     a1, d1
004cc6: 203c0000ff0e move.l     #$ff0e, d0
004ccc: 6100f796     bsr.w      $4464
004cd0: 588f         addq.l     #$4, a7
004cd2: 2240         movea.l    d0, a1
004cd4: 7000         moveq      #$0, d0
004cd6: 1011         move.b     (a1), d0
004cd8: 31802802     move.w     d0, $2(a0, d2.l)
004cdc: 202f0004     move.l     $4(a7), d0
004ce0: e588         lsl.l      #$2, d0
004ce2: 41eea972     lea.l      -$568e(a6), a0
004ce6: 4a700800     tst.w      (a0, d0.l)
004cea: 6d36         blt.b      $4d22
004cec: 202f0004     move.l     $4(a7), d0
004cf0: e588         lsl.l      #$2, d0
004cf2: 41eea972     lea.l      -$568e(a6), a0
004cf6: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
004cfc: 6c24         bge.b      $4d22
004cfe: 202f0004     move.l     $4(a7), d0
004d02: e588         lsl.l      #$2, d0
004d04: 41eea972     lea.l      -$568e(a6), a0
004d08: 30700800     movea.w    (a0, d0.l), a0
004d0c: 2008         move.l     a0, d0
004d0e: 61000c96     bsr.w      $59a6
004d12: 202f0004     move.l     $4(a7), d0
004d16: e588         lsl.l      #$2, d0
004d18: 41eea972     lea.l      -$568e(a6), a0
004d1c: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
004d22: 202f0004     move.l     $4(a7), d0
004d26: e588         lsl.l      #$2, d0
004d28: 41eea972     lea.l      -$568e(a6), a0
004d2c: 30300802     move.w     $2(a0, d0.l), d0
004d30: 48c0         ext.l      d0
004d32: b0af0022     cmp.l      $22(a7), d0
004d36: 6628         bne.b      $4d60
004d38: 0c12005f     cmpi.b     #$5f, (a2)
004d3c: 6610         bne.b      $4d4e
004d3e: 6004         bra.b      $4d44
004d40: 4a12         tst.b      (a2)
004d42: 6736         beq.b      $4d7a
004d44: 528a         addq.l     #$1, a2
004d46: 0c12005f     cmpi.b     #$5f, (a2)
004d4a: 66f4         bne.b      $4d40
004d4c: 528a         addq.l     #$1, a2
004d4e: 2f2f0052     move.l     $52(a7), -(a7)
004d52: 306f0054     movea.w    $54(a7), a0
004d56: 2f08         move.l     a0, -(a7)
004d58: 222f0032     move.l     $32(a7), d1
004d5c: 200a         move.l     a2, d0
004d5e: 6012         bra.b      $4d72
004d60: 2f2f0052     move.l     $52(a7), -(a7)
004d64: 306f0054     movea.w    $54(a7), a0
004d68: 2f08         move.l     a0, -(a7)
004d6a: 222f0032     move.l     $32(a7), d1
004d6e: 202f002e     move.l     $2e(a7), d0
004d72: 61000bfa     bsr.w      $596e
004d76: 508f         addq.l     #$8, a7
004d78: 6002         bra.b      $4d7c
004d7a: 70ff         moveq      #$ff, d0
004d7c: 4fef0026     lea.l      $26(a7), a7
004d80: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
004d86: 4e5d         unlk       a5
004d88: 4e75         rts        
004d8a: 4e550000     link.w     a5, #$0
004d8e: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
004d92: 4fefffc8     lea.l      -$38(a7), a7
004d96: 2f6f00380008 move.l     $38(a7), $8(a7)
004d9c: 4a2f0009     tst.b      $9(a7)
004da0: 660e         bne.b      $4db0
004da2: 306f003e     movea.w    $3e(a7), a0
004da6: 2208         move.l     a0, d1
004da8: 202f0008     move.l     $8(a7), d0
004dac: 600000c8     bra.w      $4e76
004db0: 4aaea93c     tst.l      -$56c4(a6)
004db4: 6608         bne.b      $4dbe
004db6: 61000a80     bsr.w      $5838
004dba: 2d40a93c     move.l     d0, -$56c4(a6)
004dbe: 7000         moveq      #$0, d0
004dc0: 102f0008     move.b     $8(a7), d0
004dc4: e588         lsl.l      #$2, d0
004dc6: 41eea972     lea.l      -$568e(a6), a0
004dca: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
004dd0: 66000080     bne.w      $4e52
004dd4: 7000         moveq      #$0, d0
004dd6: 102f0008     move.b     $8(a7), d0
004dda: e588         lsl.l      #$2, d0
004ddc: 206ea93c     movea.l    -$56c4(a6), a0
004de0: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
004de4: 41fa016e     lea.l      $4f54(pc), a0
004de8: 2208         move.l     a0, d1
004dea: 41ef001c     lea.l      $1c(a7), a0
004dee: 2008         move.l     a0, d0
004df0: 61000b44     bsr.w      $5936
004df4: 588f         addq.l     #$4, a7
004df6: 7203         moveq      #$3, d1
004df8: 41ef0018     lea.l      $18(a7), a0
004dfc: 2008         move.l     a0, d0
004dfe: 61000b76     bsr.w      $5976
004e02: 7200         moveq      #$0, d1
004e04: 122f0008     move.b     $8(a7), d1
004e08: e589         lsl.l      #$2, d1
004e0a: 41eea972     lea.l      -$568e(a6), a0
004e0e: 31801800     move.w     d0, (a0, d1.l)
004e12: 6c06         bge.b      $4e1a
004e14: 70ff         moveq      #$ff, d0
004e16: 6000012e     bra.w      $4f46
004e1a: 7000         moveq      #$0, d0
004e1c: 102f0008     move.b     $8(a7), d0
004e20: e588         lsl.l      #$2, d0
004e22: 41eea972     lea.l      -$568e(a6), a0
004e26: 2400         move.l     d0, d2
004e28: 42a7         clr.l      -(a7)
004e2a: 7000         moveq      #$0, d0
004e2c: 102f000c     move.b     $c(a7), d0
004e30: e588         lsl.l      #$2, d0
004e32: 43eea972     lea.l      -$568e(a6), a1
004e36: 32710800     movea.w    (a1, d0.l), a1
004e3a: 2209         move.l     a1, d1
004e3c: 203c0000ff0e move.l     #$ff0e, d0
004e42: 6100f620     bsr.w      $4464
004e46: 588f         addq.l     #$4, a7
004e48: 2240         movea.l    d0, a1
004e4a: 7000         moveq      #$0, d0
004e4c: 1011         move.b     (a1), d0
004e4e: 31802802     move.w     d0, $2(a0, d2.l)
004e52: 7000         moveq      #$0, d0
004e54: 102f0008     move.b     $8(a7), d0
004e58: e588         lsl.l      #$2, d0
004e5a: 41eea972     lea.l      -$568e(a6), a0
004e5e: 7200         moveq      #$0, d1
004e60: 122f0009     move.b     $9(a7), d1
004e64: b2700802     cmp.w      $2(a0, d0.l), d1
004e68: 6614         bne.b      $4e7e
004e6a: 306f003e     movea.w    $3e(a7), a0
004e6e: 2208         move.l     a0, d1
004e70: 7000         moveq      #$0, d0
004e72: 302f000a     move.w     $a(a7), d0
004e76: 61001396     bsr.w      $620e
004e7a: 600000ca     bra.w      $4f46
004e7e: 4aaea938     tst.l      -$56c8(a6)
004e82: 661a         bne.b      $4e9e
004e84: 61001446     bsr.w      $62cc
004e88: 2d40a938     move.l     d0, -$56c8(a6)
004e8c: 2d7c000100009d12 move.l     #$10000, -$62ee(a6)
004e94: 2d6ea9389d16 move.l     -$56c8(a6), -$62ea(a6)
004e9a: 42ae9d0e     clr.l      -$62f2(a6)
004e9e: 7001         moveq      #$1, d0
004ea0: 2d409d2e     move.l     d0, -$62d2(a6)
004ea4: 7008         moveq      #$8, d0
004ea6: 2d409d32     move.l     d0, -$62ce(a6)
004eaa: 41d7         lea.l      (a7), a0
004eac: 2d489d36     move.l     a0, -$62ca(a6)
004eb0: 41ee9d0a     lea.l      -$62f6(a6), a0
004eb4: 2d489d3e     move.l     a0, -$62c2(a6)
004eb8: 7018         moveq      #$18, d0
004eba: 2d409d3a     move.l     d0, -$62c6(a6)
004ebe: 7000         moveq      #$0, d0
004ec0: 302f000a     move.w     $a(a7), d0
004ec4: 2d409d1a     move.l     d0, -$62e6(a6)
004ec8: 306f003e     movea.w    $3e(a7), a0
004ecc: 2d489d1e     move.l     a0, -$62e2(a6)
004ed0: 1d6f00099d0d move.b     $9(a7), -$62f3(a6)
004ed6: 422e9d0e     clr.b      -$62f2(a6)
004eda: 486e9d2e     pea.l      -$62d2(a6)
004ede: 7000         moveq      #$0, d0
004ee0: 102f000c     move.b     $c(a7), d0
004ee4: e588         lsl.l      #$2, d0
004ee6: 41eea972     lea.l      -$568e(a6), a0
004eea: 30700800     movea.w    (a0, d0.l), a0
004eee: 2208         move.l     a0, d1
004ef0: 203c0000ff05 move.l     #$ff05, d0
004ef6: 6100f5b4     bsr.w      $44ac
004efa: 588f         addq.l     #$4, a7
004efc: 2f400010     move.l     d0, $10(a7)
004f00: 6c08         bge.b      $4f0a
004f02: 70ff         moveq      #$ff, d0
004f04: 2f40000c     move.l     d0, $c(a7)
004f08: 6038         bra.b      $4f42
004f0a: 2f2f0010     move.l     $10(a7), -(a7)
004f0e: 7000         moveq      #$0, d0
004f10: 102f000c     move.b     $c(a7), d0
004f14: e588         lsl.l      #$2, d0
004f16: 41eea972     lea.l      -$568e(a6), a0
004f1a: 30700800     movea.w    (a0, d0.l), a0
004f1e: 2208         move.l     a0, d1
004f20: 203c0000ff06 move.l     #$ff06, d0
004f26: 6100f584     bsr.w      $44ac
004f2a: 588f         addq.l     #$4, a7
004f2c: 2f40000c     move.l     d0, $c(a7)
004f30: 6dd0         blt.b      $4f02
004f32: 2f6f0004000c move.l     $4(a7), $c(a7)
004f38: 4aaf0004     tst.l      $4(a7)
004f3c: 6c04         bge.b      $4f42
004f3e: 2d57800c     move.l     (a7), -$7ff4(a6)
004f42: 202f000c     move.l     $c(a7), d0
004f46: 4fef0038     lea.l      $38(a7), a7
004f4a: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
004f50: 4e5d         unlk       a5
004f52: 4e75         rts        
004f54: 2f25         move.l     -(a5), -(a7)
004f56: 7300         .dc.w      $7300
004f58: 4e550000     link.w     a5, #$0
004f5c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004f60: 7002         moveq      #$2, d0
004f62: b0aea940     cmp.l      -$56c0(a6), d0
004f66: 6c0c         bge.b      $4f74
004f68: 2217         move.l     (a7), d1
004f6a: 41fa052c     lea.l      $5498(pc), a0
004f6e: 2008         move.l     a0, d0
004f70: 610009bc     bsr.w      $592e
004f74: 0c9700000106 cmpi.l     #$106, (a7)
004f7a: 6608         bne.b      $4f84
004f7c: 7001         moveq      #$1, d0
004f7e: 2d409d4a     move.l     d0, -$62b6(a6)
004f82: 600e         bra.b      $4f92
004f84: 4aae9d4e     tst.l      -$62b2(a6)
004f88: 6708         beq.b      $4f92
004f8a: 2017         move.l     (a7), d0
004f8c: 206e9d4e     movea.l    -$62b2(a6), a0
004f90: 4e90         jsr        (a0)
004f92: 7000         moveq      #$0, d0
004f94: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004f9a: 4e5d         unlk       a5
004f9c: 4e75         rts        
004f9e: 4e550000     link.w     a5, #$0
004fa2: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
004fa6: 4fefff58     lea.l      -$a8(a7), a7
004faa: 6010         bra.b      $4fbc
004fac: 08ef000600de bset.b     #$6, $de(a7)
004fb2: 601c         bra.b      $4fd0
004fb4: 08ef000700de bset.b     #$7, $de(a7)
004fba: 6014         bra.b      $4fd0
004fbc: 202f00e0     move.l     $e0(a7), d0
004fc0: 0c80a95acd81 cmpi.l     #$a95acd81, d0
004fc6: 67e4         beq.b      $4fac
004fc8: 0c80a95acd82 cmpi.l     #$a95acd82, d0
004fce: 67e4         beq.b      $4fb4
004fd0: 41ef0094     lea.l      $94(a7), a0
004fd4: 2208         move.l     a0, d1
004fd6: 202f00ac     move.l     $ac(a7), d0
004fda: 610005c4     bsr.w      $55a0
004fde: 2f400028     move.l     d0, $28(a7)
004fe2: 6700015c     beq.w      $5140
004fe6: 206f0028     movea.l    $28(a7), a0
004fea: 0c10005f     cmpi.b     #$5f, (a0)
004fee: 66000150     bne.w      $5140
004ff2: 2f6f002800ac move.l     $28(a7), $ac(a7)
004ff8: 2d6f00aca95c move.l     $ac(a7), -$56a4(a6)
004ffe: 41ef0094     lea.l      $94(a7), a0
005002: 2d48a950     move.l     a0, -$56b0(a6)
005006: 41ef0094     lea.l      $94(a7), a0
00500a: 2008         move.l     a0, d0
00500c: 610005d8     bsr.w      $55e6
005010: 3f40002c     move.w     d0, $2c(a7)
005014: 6c0c         bge.b      $5022
005016: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
00501e: 60000242     bra.w      $5262
005022: 422f0052     clr.b      $52(a7)
005026: 41ef0046     lea.l      $46(a7), a0
00502a: 2208         move.l     a0, d1
00502c: 202f00ac     move.l     $ac(a7), d0
005030: 6100063a     bsr.w      $566c
005034: 2f400028     move.l     d0, $28(a7)
005038: 67000106     beq.w      $5140
00503c: 1f6f00490051 move.b     $49(a7), $51(a7)
005042: 2f6f002800ac move.l     $28(a7), $ac(a7)
005048: 302f002c     move.w     $2c(a7), d0
00504c: 48c0         ext.l      d0
00504e: e588         lsl.l      #$2, d0
005050: 41eea972     lea.l      -$568e(a6), a0
005054: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
00505a: 660000b6     bne.w      $5112
00505e: 486f0094     pea.l      $94(a7)
005062: 41fa0464     lea.l      $54c8(pc), a0
005066: 2208         move.l     a0, d1
005068: 41ef0078     lea.l      $78(a7), a0
00506c: 2008         move.l     a0, d0
00506e: 610008c6     bsr.w      $5936
005072: 588f         addq.l     #$4, a7
005074: 7001         moveq      #$1, d0
005076: b0aea940     cmp.l      -$56c0(a6), d0
00507a: 6c10         bge.b      $508c
00507c: 41ef0074     lea.l      $74(a7), a0
005080: 2208         move.l     a0, d1
005082: 41fa0447     lea.l      $54cb(pc), a0
005086: 2008         move.l     a0, d0
005088: 610008a4     bsr.w      $592e
00508c: 7203         moveq      #$3, d1
00508e: 41ef0074     lea.l      $74(a7), a0
005092: 2008         move.l     a0, d0
005094: 610008e0     bsr.w      $5976
005098: 322f002c     move.w     $2c(a7), d1
00509c: 48c1         ext.l      d1
00509e: e589         lsl.l      #$2, d1
0050a0: 41eea972     lea.l      -$568e(a6), a0
0050a4: 31801800     move.w     d0, (a0, d1.l)
0050a8: 6c30         bge.b      $50da
0050aa: 7001         moveq      #$1, d0
0050ac: b0aea940     cmp.l      -$56c0(a6), d0
0050b0: 6c0001b0     bge.w      $5262
0050b4: 302f002c     move.w     $2c(a7), d0
0050b8: 48c0         ext.l      d0
0050ba: e588         lsl.l      #$2, d0
0050bc: 41eea972     lea.l      -$568e(a6), a0
0050c0: 30700800     movea.w    (a0, d0.l), a0
0050c4: 2f08         move.l     a0, -(a7)
0050c6: 222f004a     move.l     $4a(a7), d1
0050ca: 41fa0418     lea.l      $54e4(pc), a0
0050ce: 2008         move.l     a0, d0
0050d0: 6100085c     bsr.w      $592e
0050d4: 588f         addq.l     #$4, a7
0050d6: 6000018a     bra.w      $5262
0050da: 302f002c     move.w     $2c(a7), d0
0050de: 48c0         ext.l      d0
0050e0: e588         lsl.l      #$2, d0
0050e2: 41eea972     lea.l      -$568e(a6), a0
0050e6: 2400         move.l     d0, d2
0050e8: 42a7         clr.l      -(a7)
0050ea: 302f0030     move.w     $30(a7), d0
0050ee: 48c0         ext.l      d0
0050f0: e588         lsl.l      #$2, d0
0050f2: 43eea972     lea.l      -$568e(a6), a1
0050f6: 32710800     movea.w    (a1, d0.l), a1
0050fa: 2209         move.l     a1, d1
0050fc: 203c0000ff0e move.l     #$ff0e, d0
005102: 6100f360     bsr.w      $4464
005106: 588f         addq.l     #$4, a7
005108: 2240         movea.l    d0, a1
00510a: 7000         moveq      #$0, d0
00510c: 1011         move.b     (a1), d0
00510e: 31802802     move.w     d0, $2(a0, d2.l)
005112: 302f002c     move.w     $2c(a7), d0
005116: 48c0         ext.l      d0
005118: e588         lsl.l      #$2, d0
00511a: 41eea972     lea.l      -$568e(a6), a0
00511e: 30300802     move.w     $2(a0, d0.l), d0
005122: 48c0         ext.l      d0
005124: b0af0046     cmp.l      $46(a7), d0
005128: 6642         bne.b      $516c
00512a: 7001         moveq      #$1, d0
00512c: b0aea940     cmp.l      -$56c0(a6), d0
005130: 6c0e         bge.b      $5140
005132: 222f00ac     move.l     $ac(a7), d1
005136: 41fa03bf     lea.l      $54f7(pc), a0
00513a: 2008         move.l     a0, d0
00513c: 610007f0     bsr.w      $592e
005140: 306f00de     movea.w    $de(a7), a0
005144: 2f08         move.l     a0, -(a7)
005146: 306f00de     movea.w    $de(a7), a0
00514a: 2f08         move.l     a0, -(a7)
00514c: 2f2f00dc     move.l     $dc(a7), -(a7)
005150: 2f2f00dc     move.l     $dc(a7), -(a7)
005154: 2f2f00dc     move.l     $dc(a7), -(a7)
005158: 222f00c0     move.l     $c0(a7), d1
00515c: 202f00bc     move.l     $bc(a7), d0
005160: 61000864     bsr.w      $59c6
005164: 4fef0014     lea.l      $14(a7), a7
005168: 6000030a     bra.w      $5474
00516c: 4a6ea964     tst.w      -$569c(a6)
005170: 6608         bne.b      $517a
005172: 61001158     bsr.w      $62cc
005176: 3d40a964     move.w     d0, -$569c(a6)
00517a: 42ae9d4e     clr.l      -$62b2(a6)
00517e: 306ea964     movea.w    -$569c(a6), a0
005182: 2008         move.l     a0, d0
005184: 6100068c     bsr.w      $5812
005188: 2d409d4e     move.l     d0, -$62b2(a6)
00518c: 7001         moveq      #$1, d0
00518e: b0aea940     cmp.l      -$56c0(a6), d0
005192: 6c0e         bge.b      $51a2
005194: 222e9d4e     move.l     -$62b2(a6), d1
005198: 41fa0384     lea.l      $551e(pc), a0
00519c: 2008         move.l     a0, d0
00519e: 6100078e     bsr.w      $592e
0051a2: 41fafdb4     lea.l      $4f58(pc), a0
0051a6: 2008         move.l     a0, d0
0051a8: 610002d8     bsr.w      $5482
0051ac: 306f00de     movea.w    $de(a7), a0
0051b0: 2f08         move.l     a0, -(a7)
0051b2: 42a7         clr.l      -(a7)
0051b4: 42a7         clr.l      -(a7)
0051b6: 2f2f00dc     move.l     $dc(a7), -(a7)
0051ba: 486ea944     pea.l      -$56bc(a6)
0051be: 41fa0374     lea.l      $5534(pc), a0
0051c2: 2208         move.l     a0, d1
0051c4: 41fa10aa     lea.l      $6270(pc), a0
0051c8: 2008         move.l     a0, d0
0051ca: 610007fa     bsr.w      $59c6
0051ce: 4fef0014     lea.l      $14(a7), a7
0051d2: 2f40005e     move.l     d0, $5e(a7)
0051d6: 6f00008a     ble.w      $5262
0051da: 2f7c000200000056 move.l     #$20000, $56(a7)
0051e2: 42af005a     clr.l      $5a(a7)
0051e6: 2f6f00d40062 move.l     $d4(a7), $62(a7)
0051ec: 3f6f00da0066 move.w     $da(a7), $66(a7)
0051f2: 3f6f00de0068 move.w     $de(a7), $68(a7)
0051f8: 3f6f002c006c move.w     $2c(a7), $6c(a7)
0051fe: 3f6ea964006a move.w     -$569c(a6), $6a(a7)
005204: 7001         moveq      #$1, d0
005206: 2f40004a     move.l     d0, $4a(a7)
00520a: 42af0042     clr.l      $42(a7)
00520e: 6004         bra.b      $5214
005210: 52af004a     addq.l     #$1, $4a(a7)
005214: 202f0042     move.l     $42(a7), d0
005218: 52af0042     addq.l     #$1, $42(a7)
00521c: e588         lsl.l      #$2, d0
00521e: 206f00cc     movea.l    $cc(a7), a0
005222: 4ab00800     tst.l      (a0, d0.l)
005226: 66e8         bne.b      $5210
005228: 52af004a     addq.l     #$1, $4a(a7)
00522c: 42af0042     clr.l      $42(a7)
005230: 6004         bra.b      $5236
005232: 52af004a     addq.l     #$1, $4a(a7)
005236: 202f0042     move.l     $42(a7), d0
00523a: 52af0042     addq.l     #$1, $42(a7)
00523e: e588         lsl.l      #$2, d0
005240: 206f00d0     movea.l    $d0(a7), a0
005244: 4ab00800     tst.l      (a0, d0.l)
005248: 66e8         bne.b      $5232
00524a: 52af004a     addq.l     #$1, $4a(a7)
00524e: 202f004a     move.l     $4a(a7), d0
005252: e788         lsl.l      #$3, d0
005254: 7214         moveq      #$14, d1
005256: d081         add.l      d1, d0
005258: 61000790     bsr.w      $59ea
00525c: 2440         movea.l    d0, a2
00525e: 4a80         tst.l      d0
005260: 6606         bne.b      $5268
005262: 70ff         moveq      #$ff, d0
005264: 6000020e     bra.w      $5474
005268: 202f004a     move.l     $4a(a7), d0
00526c: 5280         addq.l     #$1, d0
00526e: 2480         move.l     d0, (a2)
005270: 257c000000080004 move.l     #$8, $4(a2)
005278: 41ef0020     lea.l      $20(a7), a0
00527c: 25480008     move.l     a0, $8(a2)
005280: 700c         moveq      #$c, d0
005282: d08a         add.l      a2, d0
005284: 2640         movea.l    d0, a3
005286: 41ef004e     lea.l      $4e(a7), a0
00528a: 27480004     move.l     a0, $4(a3)
00528e: 26bc00000020 move.l     #$20, (a3)
005294: 508b         addq.l     #$8, a3
005296: 276f00ac0004 move.l     $ac(a7), $4(a3)
00529c: 202f00ac     move.l     $ac(a7), d0
0052a0: 610007e8     bsr.w      $5a8a
0052a4: 5280         addq.l     #$1, d0
0052a6: 2680         move.l     d0, (a3)
0052a8: 508b         addq.l     #$8, a3
0052aa: 42af0042     clr.l      $42(a7)
0052ae: 605a         bra.b      $530a
0052b0: 7001         moveq      #$1, d0
0052b2: b0aea940     cmp.l      -$56c0(a6), d0
0052b6: 6c26         bge.b      $52de
0052b8: 222f0042     move.l     $42(a7), d1
0052bc: 41fa027d     lea.l      $553b(pc), a0
0052c0: 2008         move.l     a0, d0
0052c2: 6100066a     bsr.w      $592e
0052c6: 202f0042     move.l     $42(a7), d0
0052ca: e588         lsl.l      #$2, d0
0052cc: 206f00cc     movea.l    $cc(a7), a0
0052d0: 22300800     move.l     (a0, d0.l), d1
0052d4: 41fa0285     lea.l      $555b(pc), a0
0052d8: 2008         move.l     a0, d0
0052da: 61000652     bsr.w      $592e
0052de: 202f0042     move.l     $42(a7), d0
0052e2: e588         lsl.l      #$2, d0
0052e4: 206f00cc     movea.l    $cc(a7), a0
0052e8: 277008000004 move.l     (a0, d0.l), $4(a3)
0052ee: 202f0042     move.l     $42(a7), d0
0052f2: 52af0042     addq.l     #$1, $42(a7)
0052f6: e588         lsl.l      #$2, d0
0052f8: 206f00cc     movea.l    $cc(a7), a0
0052fc: 20300800     move.l     (a0, d0.l), d0
005300: 61000788     bsr.w      $5a8a
005304: 5280         addq.l     #$1, d0
005306: 2680         move.l     d0, (a3)
005308: 508b         addq.l     #$8, a3
00530a: 202f0042     move.l     $42(a7), d0
00530e: e588         lsl.l      #$2, d0
005310: 206f00cc     movea.l    $cc(a7), a0
005314: 4ab00800     tst.l      (a0, d0.l)
005318: 6696         bne.b      $52b0
00531a: 41fa024e     lea.l      $556a(pc), a0
00531e: 27480004     move.l     a0, $4(a3)
005322: 26bc00000001 move.l     #$1, (a3)
005328: 508b         addq.l     #$8, a3
00532a: 42af0042     clr.l      $42(a7)
00532e: 604c         bra.b      $537c
005330: 7001         moveq      #$1, d0
005332: b0aea940     cmp.l      -$56c0(a6), d0
005336: 6c18         bge.b      $5350
005338: 202f0042     move.l     $42(a7), d0
00533c: e588         lsl.l      #$2, d0
00533e: 206f00d0     movea.l    $d0(a7), a0
005342: 22300800     move.l     (a0, d0.l), d1
005346: 41fa0223     lea.l      $556b(pc), a0
00534a: 2008         move.l     a0, d0
00534c: 610005e0     bsr.w      $592e
005350: 202f0042     move.l     $42(a7), d0
005354: e588         lsl.l      #$2, d0
005356: 206f00d0     movea.l    $d0(a7), a0
00535a: 277008000004 move.l     (a0, d0.l), $4(a3)
005360: 202f0042     move.l     $42(a7), d0
005364: 52af0042     addq.l     #$1, $42(a7)
005368: e588         lsl.l      #$2, d0
00536a: 206f00d0     movea.l    $d0(a7), a0
00536e: 20300800     move.l     (a0, d0.l), d0
005372: 61000716     bsr.w      $5a8a
005376: 5280         addq.l     #$1, d0
005378: 2680         move.l     d0, (a3)
00537a: 508b         addq.l     #$8, a3
00537c: 202f0042     move.l     $42(a7), d0
005380: e588         lsl.l      #$2, d0
005382: 206f00d0     movea.l    $d0(a7), a0
005386: 4ab00800     tst.l      (a0, d0.l)
00538a: 66a4         bne.b      $5330
00538c: 41fa01ec     lea.l      $557a(pc), a0
005390: 27480004     move.l     a0, $4(a3)
005394: 26bc00000001 move.l     #$1, (a3)
00539a: 508b         addq.l     #$8, a3
00539c: 7001         moveq      #$1, d0
00539e: 61000c86     bsr.w      $6026
0053a2: 42ae9d46     clr.l      -$62ba(a6)
0053a6: 600a         bra.b      $53b2
0053a8: 52ae9d46     addq.l     #$1, -$62ba(a6)
0053ac: 7001         moveq      #$1, d0
0053ae: 61000c76     bsr.w      $6026
0053b2: 4aae9d4a     tst.l      -$62b6(a6)
0053b6: 67f0         beq.b      $53a8
0053b8: 7064         moveq      #$64, d0
0053ba: b0ae9d46     cmp.l      -$62ba(a6), d0
0053be: 6e0e         bgt.b      $53ce
0053c0: 222e9d46     move.l     -$62ba(a6), d1
0053c4: 41fa01b5     lea.l      $557b(pc), a0
0053c8: 2008         move.l     a0, d0
0053ca: 61000562     bsr.w      $592e
0053ce: 4aae9d4e     tst.l      -$62b2(a6)
0053d2: 6708         beq.b      $53dc
0053d4: 202e9d4e     move.l     -$62b2(a6), d0
0053d8: 610000a8     bsr.w      $5482
0053dc: 4852         pea.l      (a2)
0053de: 302f0030     move.w     $30(a7), d0
0053e2: 48c0         ext.l      d0
0053e4: e588         lsl.l      #$2, d0
0053e6: 41eea972     lea.l      -$568e(a6), a0
0053ea: 30700800     movea.w    (a0, d0.l), a0
0053ee: 2208         move.l     a0, d1
0053f0: 203c0000ff05 move.l     #$ff05, d0
0053f6: 6100f0b4     bsr.w      $44ac
0053fa: 588f         addq.l     #$4, a7
0053fc: 2f40003a     move.l     d0, $3a(a7)
005400: 6c08         bge.b      $540a
005402: 70ff         moveq      #$ff, d0
005404: 2f40002e     move.l     d0, $2e(a7)
005408: 6060         bra.b      $546a
00540a: 2f2f003a     move.l     $3a(a7), -(a7)
00540e: 302f0030     move.w     $30(a7), d0
005412: 48c0         ext.l      d0
005414: e588         lsl.l      #$2, d0
005416: 41eea972     lea.l      -$568e(a6), a0
00541a: 30700800     movea.w    (a0, d0.l), a0
00541e: 2208         move.l     a0, d1
005420: 203c0000ff06 move.l     #$ff06, d0
005426: 6100f084     bsr.w      $44ac
00542a: 588f         addq.l     #$4, a7
00542c: 2f40002e     move.l     d0, $2e(a7)
005430: 6c10         bge.b      $5442
005432: 70ff         moveq      #$ff, d0
005434: 2f40002e     move.l     d0, $2e(a7)
005438: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
005440: 6028         bra.b      $546a
005442: 2f6f0024002e move.l     $24(a7), $2e(a7)
005448: 4aaf002e     tst.l      $2e(a7)
00544c: 6c16         bge.b      $5464
00544e: 223c00008000 move.l     #$8000, d1
005454: 202f005e     move.l     $5e(a7), d0
005458: 61000db4     bsr.w      $620e
00545c: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
005462: 6006         bra.b      $546a
005464: 1f6f002d002e move.b     $2d(a7), $2e(a7)
00546a: 200a         move.l     a2, d0
00546c: 61000588     bsr.w      $59f6
005470: 202f002e     move.l     $2e(a7), d0
005474: 4fef00a8     lea.l      $a8(a7), a7
005478: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
00547e: 4e5d         unlk       a5
005480: 4e75         rts        
005482: 4e550000     link.w     a5, #$0
005486: 48e78000     movem.l    d0, -(a7)
00548a: 2d57a982     move.l     (a7), -$567e(a6)
00548e: 2017         move.l     (a7), d0
005490: 61000e72     bsr.w      $6304
005494: 4e5d         unlk       a5
005496: 4e75         rts        
005498: 5369676e     subq.w     #$1, $676e(a1)
00549c: 616c         bsr.b      $550a
00549e: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
0054a8: 2063         movea.l    -(a3), a0
0054aa: 6f64         ble.b      $5510
0054ac: 653d         bcs.b      $54eb
0054ae: 2025         move.l     -(a5), d0
0054b0: 780d         moveq      #$d, d4
0054b2: 007365727665 ori.w      #$6572, $65(a3, d7.w)
0054b8: 7200         moveq      #$0, d1
0054ba: 3200         move.w     d0, d1
0054bc: 3000         move.w     d0, d0
0054be: 2f633000     move.l     -(a3), $3000(a7)
0054c2: 3000         move.w     d0, d0
0054c4: 3000         move.w     d0, d0
0054c6: 3000         move.w     d0, d0
0054c8: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
0054ce: 6e20         bgt.b      $54f0
0054d0: 6361         bls.b      $5533
0054d2: 726f         moveq      #$6f, d1
0054d4: 7370         .dc.w      $7370
0054d6: 6174         bsr.b      $554c
0054d8: 6820         bvc.b      $54fa
0054da: 6e61         bgt.b      $553d
0054dc: 6d65         blt.b      $5543
0054de: 6420         bcc.b      $5500
0054e0: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
0054e6: 7468         moveq      #$68, d2
0054e8: 6964         bvs.b      $554e
0054ea: 5b25         subq.b     #$5, -(a5)
0054ec: 645d         bcc.b      $554b
0054ee: 206d6772     movea.l    $6772(a5), a0
0054f2: 3d25         move.w     -(a5), -(a6)
0054f4: 640d         bcc.b      $5503
0054f6: 00666f72     ori.w      #$6f72, -(a6)
0054fa: 6b69         bmi.b      $5565
0054fc: 6e67         bgt.b      $5565
0054fe: 2070726f     movea.l    $6f(a0, d7.w), a0
005502: 6365         bls.b      $5569
005504: 7373         .dc.w      $7373
005506: 206c6f63     movea.l    $6f63(a4), a0
00550a: 616c         bsr.b      $5578
00550c: 6c79         bge.b      $5587
00550e: 2c20         move.l     -(a0), d6
005510: 6d6f         blt.b      $5581
005512: 646e         bcc.b      $5582
005514: 616d         bsr.b      $5583
005516: 6520         bcs.b      $5538
005518: 3d20         move.w     -(a0), -(a6)
00551a: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
005520: 6420         bcc.b      $5542
005522: 6963         bvs.b      $5587
005524: 7074         moveq      #$74, d0
005526: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
005530: 25780d007365 move.l     $d00.w, $7365(a2)
005536: 7276         moveq      #$76, d1
005538: 6572         bcs.b      $55ac
00553a: 00656e74     ori.w      #$6e74, -(a5)
00553e: 6572         bcs.b      $55b2
005540: 6564         bcs.b      $55a6
005542: 2061         movea.l    -(a1), a0
005544: 7267         moveq      #$67, d1
005546: 6c69         bge.b      $55b1
005548: 7374         .dc.w      $7374
00554a: 206c6f6f     movea.l    $6f6f(a4), a0
00554e: 702c         moveq      #$2c, d0
005550: 20696e64     movea.l    $6e64(a1), a0
005554: 6578         bcs.b      $55ce
005556: 3d25         move.w     -(a5), -(a6)
005558: 640d         bcc.b      $5567
00555a: 00415247     ori.w      #$5247, d1
00555e: 4c49         .dc.w      $4c49
005560: 5354         subq.w     #$1, (a4)
005562: 5b695d3d     subq.w     #$5, $5d3d(a1)
005566: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
00556c: 4e564c49     link.w     a6, #$4c49
005570: 5354         subq.w     #$1, (a4)
005572: 5b695d3d     subq.w     #$5, $5d3d(a1)
005576: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
00557c: 796e         .dc.w      $796e
00557e: 6368         bls.b      $55e8
005580: 726f         moveq      #$6f, d1
005582: 6e69         bgt.b      $55ed
005584: 7369         .dc.w      $7369
005586: 6e67         bgt.b      $55ef
005588: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
005592: 6f6b         ble.b      $55ff
005594: 2025         move.l     -(a5), d0
005596: 6420         bcc.b      $55b8
005598: 7469         moveq      #$69, d2
00559a: 636b         bls.b      $5607
00559c: 730d         .dc.w      $730d
00559e: 00004e55     ori.b      #$55, d0
0055a2: 000048e7     ori.b      #$e7, d0
0055a6: c8302440     and.b      $40(a0, d2.w), d4
0055aa: 2641         movea.l    d1, a3
0055ac: 558f         subq.l     #$2, a7
0055ae: 1012         move.b     (a2), d0
0055b0: 1680         move.b     d0, (a3)
0055b2: 0c00002f     cmpi.b     #$2f, d0
0055b6: 6704         beq.b      $55bc
0055b8: 7000         moveq      #$0, d0
0055ba: 601e         bra.b      $55da
0055bc: 528a         addq.l     #$1, a2
0055be: 528b         addq.l     #$1, a3
0055c0: 1012         move.b     (a2), d0
0055c2: 1680         move.b     d0, (a3)
0055c4: 1f400001     move.b     d0, $1(a7)
0055c8: 0c00002f     cmpi.b     #$2f, d0
0055cc: 6706         beq.b      $55d4
0055ce: 4a2f0001     tst.b      $1(a7)
0055d2: 66e8         bne.b      $55bc
0055d4: 4213         clr.b      (a3)
0055d6: 528a         addq.l     #$1, a2
0055d8: 200a         move.l     a2, d0
0055da: 548f         addq.l     #$2, a7
0055dc: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0055e2: 4e5d         unlk       a5
0055e4: 4e75         rts        
0055e6: 4e550000     link.w     a5, #$0
0055ea: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0055ee: 2440         movea.l    d0, a2
0055f0: 4aaea966     tst.l      -$569a(a6)
0055f4: 6608         bne.b      $55fe
0055f6: 61000240     bsr.w      $5838
0055fa: 2d40a966     move.l     d0, -$569a(a6)
0055fe: 7800         moveq      #$0, d4
005600: 601a         bra.b      $561c
005602: 2004         move.l     d4, d0
005604: e588         lsl.l      #$2, d0
005606: 206ea966     movea.l    -$569a(a6), a0
00560a: 2230081a     move.l     $1a(a0, d0.l), d1
00560e: 200a         move.l     a2, d0
005610: 5280         addq.l     #$1, d0
005612: 61000402     bsr.w      $5a16
005616: 4a80         tst.l      d0
005618: 6710         beq.b      $562a
00561a: 5284         addq.l     #$1, d4
00561c: 206ea966     movea.l    -$569a(a6), a0
005620: 30280010     move.w     $10(a0), d0
005624: 48c0         ext.l      d0
005626: b084         cmp.l      d4, d0
005628: 6ed8         bgt.b      $5602
00562a: 206ea966     movea.l    -$569a(a6), a0
00562e: 30280010     move.w     $10(a0), d0
005632: 48c0         ext.l      d0
005634: b084         cmp.l      d4, d0
005636: 6e04         bgt.b      $563c
005638: 70ff         moveq      #$ff, d0
00563a: 6002         bra.b      $563e
00563c: 2004         move.l     d4, d0
00563e: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
005644: 4e5d         unlk       a5
005646: 4e75         rts        
005648: 4e550000     link.w     a5, #$0
00564c: 48e7c080     movem.l    d0-d1/a0, -(a7)
005650: 202f0004     move.l     $4(a7), d0
005654: e588         lsl.l      #$2, d0
005656: 2057         movea.l    (a7), a0
005658: 2070082a     movea.l    $2a(a0, d0.l), a0
00565c: 7000         moveq      #$0, d0
00565e: 10280012     move.b     $12(a0), d0
005662: 4ced0100fffc movem.l    -$4(a5), a0
005668: 4e5d         unlk       a5
00566a: 4e75         rts        
00566c: 4e550000     link.w     a5, #$0
005670: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
005674: 2440         movea.l    d0, a2
005676: 4fefffda     lea.l      -$26(a7), a7
00567a: 200a         move.l     a2, d0
00567c: 61000110     bsr.w      $578e
005680: 2440         movea.l    d0, a2
005682: 0c12005f     cmpi.b     #$5f, (a2)
005686: 660000f6     bne.w      $577e
00568a: 102a0001     move.b     $1(a2), d0
00568e: 1f400005     move.b     d0, $5(a7)
005692: 0c000041     cmpi.b     #$41, d0
005696: 6d0000a4     blt.w      $573c
00569a: 4aaea96a     tst.l      -$5696(a6)
00569e: 6626         bne.b      $56c6
0056a0: 7200         moveq      #$0, d1
0056a2: 41fa017e     lea.l      $5822(pc), a0
0056a6: 2008         move.l     a0, d0
0056a8: 61000b04     bsr.w      $61ae
0056ac: 2f400022     move.l     d0, $22(a7)
0056b0: 72ff         moveq      #$ff, d1
0056b2: b280         cmp.l      d0, d1
0056b4: 6606         bne.b      $56bc
0056b6: 70ff         moveq      #$ff, d0
0056b8: 600000c6     bra.w      $5780
0056bc: 7030         moveq      #$30, d0
0056be: d0af0022     add.l      $22(a7), d0
0056c2: 2d40a96a     move.l     d0, -$5696(a6)
0056c6: 41ef000a     lea.l      $a(a7), a0
0056ca: 2f480006     move.l     a0, $6(a7)
0056ce: 600c         bra.b      $56dc
0056d0: 206f0006     movea.l    $6(a7), a0
0056d4: 52af0006     addq.l     #$1, $6(a7)
0056d8: 10af0005     move.b     $5(a7), (a0)
0056dc: 528a         addq.l     #$1, a2
0056de: 1012         move.b     (a2), d0
0056e0: 1f400005     move.b     d0, $5(a7)
0056e4: 0c00005f     cmpi.b     #$5f, d0
0056e8: 66e6         bne.b      $56d0
0056ea: 206f0006     movea.l    $6(a7), a0
0056ee: 4210         clr.b      (a0)
0056f0: 202ea96a     move.l     -$5696(a6), d0
0056f4: 5480         addq.l     #$2, d0
0056f6: 2f40001e     move.l     d0, $1e(a7)
0056fa: 7800         moveq      #$0, d4
0056fc: 6030         bra.b      $572e
0056fe: 41ef000a     lea.l      $a(a7), a0
005702: 2208         move.l     a0, d1
005704: 202f001e     move.l     $1e(a7), d0
005708: 6100030c     bsr.w      $5a16
00570c: 4a80         tst.l      d0
00570e: 6614         bne.b      $5724
005710: 206f001e     movea.l    $1e(a7), a0
005714: 7000         moveq      #$0, d0
005716: 10280013     move.b     $13(a0), d0
00571a: 206f002a     movea.l    $2a(a7), a0
00571e: 2080         move.l     d0, (a0)
005720: 528a         addq.l     #$1, a2
005722: 6056         bra.b      $577a
005724: 06af00000014001e addi.l     #$14, $1e(a7)
00572c: 5284         addq.l     #$1, d4
00572e: 206ea96a     movea.l    -$5696(a6), a0
005732: 3010         move.w     (a0), d0
005734: 48c0         ext.l      d0
005736: b084         cmp.l      d4, d0
005738: 6ec4         bgt.b      $56fe
00573a: 6042         bra.b      $577e
00573c: 4297         clr.l      (a7)
00573e: 6018         bra.b      $5758
005740: 2017         move.l     (a7), d0
005742: 720a         moveq      #$a, d1
005744: 610003b2     bsr.w      $5af8
005748: 122f0005     move.b     $5(a7), d1
00574c: 4881         ext.w      d1
00574e: 48c1         ext.l      d1
005750: d081         add.l      d1, d0
005752: 7230         moveq      #$30, d1
005754: 9081         sub.l      d1, d0
005756: 2e80         move.l     d0, (a7)
005758: 528a         addq.l     #$1, a2
00575a: 1012         move.b     (a2), d0
00575c: 1f400005     move.b     d0, $5(a7)
005760: 0c000030     cmpi.b     #$30, d0
005764: 6d08         blt.b      $576e
005766: 0c2f00390005 cmpi.b     #$39, $5(a7)
00576c: 6fd2         ble.b      $5740
00576e: 0c1a005f     cmpi.b     #$5f, (a2)+
005772: 660a         bne.b      $577e
005774: 206f002a     movea.l    $2a(a7), a0
005778: 2097         move.l     (a7), (a0)
00577a: 200a         move.l     a2, d0
00577c: 6002         bra.b      $5780
00577e: 7000         moveq      #$0, d0
005780: 4fef0026     lea.l      $26(a7), a7
005784: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00578a: 4e5d         unlk       a5
00578c: 4e75         rts        
00578e: 4e550000     link.w     a5, #$0
005792: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
005796: 2440         movea.l    d0, a2
005798: 518f         subq.l     #$8, a7
00579a: 0c12005f     cmpi.b     #$5f, (a2)
00579e: 6764         beq.b      $5804
0057a0: 0c120040     cmpi.b     #$40, (a2)
0057a4: 675e         beq.b      $5804
0057a6: 0c120041     cmpi.b     #$41, (a2)
0057aa: 6d58         blt.b      $5804
0057ac: 4aaea96e     tst.l      -$5692(a6)
0057b0: 6620         bne.b      $57d2
0057b2: 7200         moveq      #$0, d1
0057b4: 41fa0076     lea.l      $582c(pc), a0
0057b8: 2008         move.l     a0, d0
0057ba: 610009f2     bsr.w      $61ae
0057be: 2f400004     move.l     d0, $4(a7)
0057c2: 72ff         moveq      #$ff, d1
0057c4: b280         cmp.l      d0, d1
0057c6: 673c         beq.b      $5804
0057c8: 7030         moveq      #$30, d0
0057ca: d0af0004     add.l      $4(a7), d0
0057ce: 2d40a96e     move.l     d0, -$5692(a6)
0057d2: 202ea96e     move.l     -$5692(a6), d0
0057d6: 5480         addq.l     #$2, d0
0057d8: 2e80         move.l     d0, (a7)
0057da: 7800         moveq      #$0, d4
0057dc: 601a         bra.b      $57f8
0057de: 220a         move.l     a2, d1
0057e0: 2017         move.l     (a7), d0
0057e2: 61000232     bsr.w      $5a16
0057e6: 4a80         tst.l      d0
0057e8: 6606         bne.b      $57f0
0057ea: 7014         moveq      #$14, d0
0057ec: d097         add.l      (a7), d0
0057ee: 6016         bra.b      $5806
0057f0: 069700000032 addi.l     #$32, (a7)
0057f6: 5284         addq.l     #$1, d4
0057f8: 206ea96e     movea.l    -$5692(a6), a0
0057fc: 3010         move.w     (a0), d0
0057fe: 48c0         ext.l      d0
005800: b084         cmp.l      d4, d0
005802: 6eda         bgt.b      $57de
005804: 200a         move.l     a2, d0
005806: 508f         addq.l     #$8, a7
005808: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
00580e: 4e5d         unlk       a5
005810: 4e75         rts        
005812: 4e550000     link.w     a5, #$0
005816: 48e78000     movem.l    d0, -(a7)
00581a: 202ea982     move.l     -$567e(a6), d0
00581e: 4e5d         unlk       a5
005820: 4e75         rts        
005822: 6361         bls.b      $5885
005824: 725f         moveq      #$5f, d1
005826: 6e65         bgt.b      $588d
005828: 7464         moveq      #$64, d2
00582a: 62006361     bhi.w      $bb8d
00582e: 725f         moveq      #$5f, d1
005830: 6465         bcc.b      $5897
005832: 7669         moveq      #$69, d3
005834: 6365         bls.b      $589b
005836: 00002f08     ori.b      #$8, d0
00583a: 207900000000 movea.l    $0.l, a0
005840: 41e80814     lea.l      $814(a0), a0
005844: 2010         move.l     (a0), d0
005846: 205f         movea.l    (a7)+, a0
005848: 4e75         rts        
00584a: 2f08         move.l     a0, -(a7)
00584c: 207900000000 movea.l    $0.l, a0
005852: 41e80814     lea.l      $814(a0), a0
005856: 2008         move.l     a0, d0
005858: 205f         movea.l    (a7)+, a0
00585a: 4e75         rts        
00585c: 4e550000     link.w     a5, #$0
005860: 48e78038     movem.l    d0/a2-a4, -(a7)
005864: 7000         moveq      #$0, d0
005866: 2840         movea.l    d0, a4
005868: 2640         movea.l    d0, a3
00586a: 2440         movea.l    d0, a2
00586c: 700d         moveq      #$d, d0
00586e: 7200         moveq      #$0, d1
005870: 41fa0064     lea.l      $58d6(pc), a0
005874: 47ee800c     lea.l      -$7ff4(a6), a3
005878: 7609         moveq      #$9, d3
00587a: 2683         move.l     d3, (a3)
00587c: 262ea0da     move.l     -$5f26(a6), d3
005880: 242ea0d6     move.l     -$5f2a(a6), d2
005884: 286ea986     movea.l    -$567a(a6), a4
005888: 4e40         trap       #$0
00588a: 0021653e     ori.b      #$3e, -(a1)
00588e: 4a93         tst.l      (a3)
005890: 6718         beq.b      $58aa
005892: 41fa0046     lea.l      $58da(pc), a0
005896: 7264         moveq      #$64, d1
005898: 7002         moveq      #$2, d0
00589a: 4e40         trap       #$0
00589c: 008c         .dc.w      $008c
00589e: 41fa0036     lea.l      $58d6(pc), a0
0058a2: 72dd         moveq      #$dd, d1
0058a4: 003c0001     ori.b      #$1, ccr
0058a8: 6022         bra.b      $58cc
0058aa: 3d7c00419d5e move.w     #$41, -$62a2(a6)
0058b0: 426e9d60     clr.w      -$62a0(a6)
0058b4: 3d7c00029d7a move.w     #$2, -$6286(a6)
0058ba: 3d7c00019d7c move.w     #$1, -$6284(a6)
0058c0: 3d7c00029d96 move.w     #$2, -$626a(a6)
0058c6: 3d7c00029d98 move.w     #$2, -$6268(a6)
0058cc: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0058d2: 4e5d         unlk       a5
0058d4: 4e75         rts        
0058d6: 6369         bls.b      $5941
0058d8: 6f002a2a     ble.w      $8304
0058dc: 2a2a2063     move.l     $2063(a2), d5
0058e0: 696f         bvs.b      $5951
0058e2: 20747261     movea.l    $61(a4, d7.w), a0
0058e6: 7068         moveq      #$68, d0
0058e8: 616e         bsr.b      $5958
0058ea: 646c         bcc.b      $5958
0058ec: 6572         bcs.b      $5960
0058ee: 206d6973     movea.l    $6973(a5), a0
0058f2: 6d61         blt.b      $5955
0058f4: 7463         moveq      #$63, d2
0058f6: 6820         bvc.b      $5918
0058f8: 2a2a2a2a     move.l     $2a2a(a2), d5
0058fc: 0d00         btst.l     d6, d0
0058fe: 4e4d         trap       #$d
005900: 00004e4d     ori.b      #$4d, d0
005904: 00014e4d     ori.b      #$4d, d1
005908: 00024e4d     ori.b      #$4d, d2
00590c: 00034e4d     ori.b      #$4d, d3
005910: 00044e4d     ori.b      #$4d, d4
005914: 00054e4d     ori.b      #$4d, d5
005918: 00064e4d     ori.b      #$4d, d6
00591c: 00074e4d     ori.b      #$4d, d7
005920: 0008         .dc.w      $0008
005922: 4e4d         trap       #$d
005924: 0009         .dc.w      $0009
005926: 4e4d         trap       #$d
005928: 000a         .dc.w      $000a
00592a: 4e4d         trap       #$d
00592c: 000b         .dc.w      $000b
00592e: 4e4d         trap       #$d
005930: 000c         .dc.w      $000c
005932: 4e4d         trap       #$d
005934: 000d         .dc.w      $000d
005936: 4e4d         trap       #$d
005938: 000e         .dc.w      $000e
00593a: 4e4d         trap       #$d
00593c: 000f         .dc.w      $000f
00593e: 4e4d         trap       #$d
005940: 00104e4d     ori.b      #$4d, (a0)
005944: 00114e4d     ori.b      #$4d, (a1)
005948: 00124e4d     ori.b      #$4d, (a2)
00594c: 00134e4d     ori.b      #$4d, (a3)
005950: 00144e4d     ori.b      #$4d, (a4)
005954: 00154e4d     ori.b      #$4d, (a5)
005958: 00164e4d     ori.b      #$4d, (a6)
00595c: 00174e4d     ori.b      #$4d, (a7)
005960: 00184e4d     ori.b      #$4d, (a0)+
005964: 00194e4d     ori.b      #$4d, (a1)+
005968: 001a4e4d     ori.b      #$4d, (a2)+
00596c: 001b4e4d     ori.b      #$4d, (a3)+
005970: 001c4e4d     ori.b      #$4d, (a4)+
005974: 001d4e4d     ori.b      #$4d, (a5)+
005978: 001e4e4d     ori.b      #$4d, (a6)+
00597c: 001f4e4d     ori.b      #$4d, (a7)+
005980: 00204e4d     ori.b      #$4d, -(a0)
005984: 00214e4d     ori.b      #$4d, -(a1)
005988: 00224e4d     ori.b      #$4d, -(a2)
00598c: 00234e4d     ori.b      #$4d, -(a3)
005990: 00244e4d     ori.b      #$4d, -(a4)
005994: 00254e4d     ori.b      #$4d, -(a5)
005998: 00264e4d     ori.b      #$4d, -(a6)
00599c: 00274e4d     ori.b      #$4d, -(a7)
0059a0: 00284e4d0029 ori.b      #$4d, $29(a0)
0059a6: 4e4d         trap       #$d
0059a8: 002a4e4d002b ori.b      #$4d, $2b(a2)
0059ae: 4e4d         trap       #$d
0059b0: 002c4e4d002d ori.b      #$4d, $2d(a4)
0059b6: 4e4d         trap       #$d
0059b8: 002e4e4d002f ori.b      #$4d, $2f(a6)
0059be: 4e4d         trap       #$d
0059c0: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
0059c6: 4e4d         trap       #$d
0059c8: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
0059ce: 4e4d         trap       #$d
0059d0: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
0059d6: 4e4d         trap       #$d
0059d8: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
0059de: 4e4d         trap       #$d
0059e0: 00384e4d0039 ori.b      #$4d, $39.w
0059e6: 4e4d         trap       #$d
0059e8: 003a         .dc.w      $003a
0059ea: 4e4d         trap       #$d
0059ec: 003b         .dc.w      $003b
0059ee: 4e4d         trap       #$d
0059f0: 003c         .dc.w      $003c
0059f2: 4e4d         trap       #$d
0059f4: 003d         .dc.w      $003d
0059f6: 4e4d         trap       #$d
0059f8: 003e         .dc.w      $003e
0059fa: 4e4d         trap       #$d
0059fc: 003f         .dc.w      $003f
0059fe: 4e4d         trap       #$d
005a00: 00414e4d     ori.w      #$4e4d, d1
005a04: 00424e4d     ori.w      #$4e4d, d2
005a08: 00434e4d     ori.w      #$4e4d, d3
005a0c: 00444e4d     ori.w      #$4e4d, d4
005a10: 00454e4d     ori.w      #$4e4d, d5
005a14: 00402f08     ori.w      #$2f08, d0
005a18: 2040         movea.l    d0, a0
005a1a: b300         eor.b      d1, d0
005a1c: 08000000     btst.b     #$0, d0
005a20: 6652         bne.b      $5a74
005a22: 08010000     btst.b     #$0, d1
005a26: c389         exg.l      d1, a1
005a28: 6718         beq.b      $5a42
005a2a: b109         cmpm.b     (a1)+, (a0)+
005a2c: 6530         bcs.b      $5a5e
005a2e: 6220         bhi.b      $5a50
005a30: 4a28ffff     tst.b      -$1(a0)
005a34: 660c         bne.b      $5a42
005a36: 6034         bra.b      $5a6c
005a38: 4a00         tst.b      d0
005a3a: 6730         beq.b      $5a6c
005a3c: 0c4000ff     cmpi.w     #$ff, d0
005a40: 632a         bls.b      $5a6c
005a42: 3018         move.w     (a0)+, d0
005a44: b059         cmp.w      (a1)+, d0
005a46: 67f0         beq.b      $5a38
005a48: 650e         bcs.b      $5a58
005a4a: 0c4000ff     cmpi.w     #$ff, d0
005a4e: 6316         bls.b      $5a66
005a50: 7001         moveq      #$1, d0
005a52: 205f         movea.l    (a7)+, a0
005a54: c389         exg.l      d1, a1
005a56: 4e75         rts        
005a58: 0c4000ff     cmpi.w     #$ff, d0
005a5c: 6308         bls.b      $5a66
005a5e: 70ff         moveq      #$ff, d0
005a60: 205f         movea.l    (a7)+, a0
005a62: c389         exg.l      d1, a1
005a64: 4e75         rts        
005a66: 4a29fffe     tst.b      -$2(a1)
005a6a: 66f2         bne.b      $5a5e
005a6c: 7000         moveq      #$0, d0
005a6e: 205f         movea.l    (a7)+, a0
005a70: c389         exg.l      d1, a1
005a72: 4e75         rts        
005a74: c389         exg.l      d1, a1
005a76: 7000         moveq      #$0, d0
005a78: 1018         move.b     (a0)+, d0
005a7a: b019         cmp.b      (a1)+, d0
005a7c: 56c8fffa     dbne       d0, $5a78
005a80: 65dc         bcs.b      $5a5e
005a82: 5240         addq.w     #$1, d0
005a84: 205f         movea.l    (a7)+, a0
005a86: c389         exg.l      d1, a1
005a88: 4e75         rts        
005a8a: 2f08         move.l     a0, -(a7)
005a8c: 2040         movea.l    d0, a0
005a8e: 4a18         tst.b      (a0)+
005a90: 670c         beq.b      $5a9e
005a92: 4a18         tst.b      (a0)+
005a94: 6708         beq.b      $5a9e
005a96: 4a18         tst.b      (a0)+
005a98: 6704         beq.b      $5a9e
005a9a: 4a18         tst.b      (a0)+
005a9c: 66f0         bne.b      $5a8e
005a9e: 91c0         suba.l     d0, a0
005aa0: 2008         move.l     a0, d0
005aa2: 5380         subq.l     #$1, d0
005aa4: 205f         movea.l    (a7)+, a0
005aa6: 4e75         rts        
005aa8: 2f08         move.l     a0, -(a7)
005aaa: 2040         movea.l    d0, a0
005aac: c389         exg.l      d1, a1
005aae: 10d9         move.b     (a1)+, (a0)+
005ab0: 670c         beq.b      $5abe
005ab2: 10d9         move.b     (a1)+, (a0)+
005ab4: 6708         beq.b      $5abe
005ab6: 10d9         move.b     (a1)+, (a0)+
005ab8: 6704         beq.b      $5abe
005aba: 10d9         move.b     (a1)+, (a0)+
005abc: 66f0         bne.b      $5aae
005abe: 205f         movea.l    (a7)+, a0
005ac0: c389         exg.l      d1, a1
005ac2: 4e75         rts        
005ac4: 2f08         move.l     a0, -(a7)
005ac6: 2040         movea.l    d0, a0
005ac8: c389         exg.l      d1, a1
005aca: 4a18         tst.b      (a0)+
005acc: 670c         beq.b      $5ada
005ace: 4a18         tst.b      (a0)+
005ad0: 6708         beq.b      $5ada
005ad2: 4a18         tst.b      (a0)+
005ad4: 6704         beq.b      $5ada
005ad6: 4a18         tst.b      (a0)+
005ad8: 66f0         bne.b      $5aca
005ada: 1159ffff     move.b     (a1)+, -$1(a0)
005ade: 66ce         bne.b      $5aae
005ae0: 60dc         bra.b      $5abe
005ae2: 2f08         move.l     a0, -(a7)
005ae4: 2040         movea.l    d0, a0
005ae6: c389         exg.l      d1, a1
005ae8: 10d9         move.b     (a1)+, (a0)+
005aea: 6afc         bpl.b      $5ae8
005aec: 4210         clr.b      (a0)
005aee: 0220007f     andi.b     #$7f, -(a0)
005af2: 205f         movea.l    (a7)+, a0
005af4: c389         exg.l      d1, a1
005af6: 4e75         rts        
005af8: 48e73800     movem.l    d2-d4, -(a7)
005afc: 2400         move.l     d0, d2
005afe: 2600         move.l     d0, d3
005b00: 4843         swap       d3
005b02: 2801         move.l     d1, d4
005b04: 4844         swap       d4
005b06: c0c1         mulu.w     d1, d0
005b08: c2c3         mulu.w     d3, d1
005b0a: c4c4         mulu.w     d4, d2
005b0c: c6c4         mulu.w     d4, d3
005b0e: 4840         swap       d0
005b10: d041         add.w      d1, d0
005b12: 7800         moveq      #$0, d4
005b14: d784         addx.l     d4, d3
005b16: d042         add.w      d2, d0
005b18: d784         addx.l     d4, d3
005b1a: 4840         swap       d0
005b1c: 4241         clr.w      d1
005b1e: 4841         swap       d1
005b20: 4242         clr.w      d2
005b22: 4842         swap       d2
005b24: d282         add.l      d2, d1
005b26: d283         add.l      d3, d1
005b28: 4a80         tst.l      d0
005b2a: 4cdf001c     movem.l    (a7)+, d2-d4
005b2e: 4e75         rts        
005b30: 2f02         move.l     d2, -(a7)
005b32: 7400         moveq      #$0, d2
005b34: 4a80         tst.l      d0
005b36: 6a04         bpl.b      $5b3c
005b38: 4480         neg.l      d0
005b3a: 7403         moveq      #$3, d2
005b3c: 4a81         tst.l      d1
005b3e: 6a06         bpl.b      $5b46
005b40: 4481         neg.l      d1
005b42: 0a020001     eori.b     #$1, d2
005b46: 6122         bsr.b      $5b6a
005b48: e20a         lsr.b      #$1, d2
005b4a: 6402         bcc.b      $5b4e
005b4c: 4480         neg.l      d0
005b4e: e20a         lsr.b      #$1, d2
005b50: 6402         bcc.b      $5b54
005b52: 4481         neg.l      d1
005b54: 241f         move.l     (a7)+, d2
005b56: 4a80         tst.l      d0
005b58: 4e75         rts        
005b5a: 61d4         bsr.b      $5b30
005b5c: c141         exg.l      d0, d1
005b5e: 4a80         tst.l      d0
005b60: 4e75         rts        
005b62: 6106         bsr.b      $5b6a
005b64: c141         exg.l      d0, d1
005b66: 4a80         tst.l      d0
005b68: 4e75         rts        
005b6a: 48e73800     movem.l    d2-d4, -(a7)
005b6e: 2401         move.l     d1, d2
005b70: 6606         bne.b      $5b78
005b72: 81fc0000     divs.w     #$0, d0
005b76: 606e         bra.b      $5be6
005b78: 5381         subq.l     #$1, d1
005b7a: 676a         beq.b      $5be6
005b7c: 2801         move.l     d1, d4
005b7e: 2200         move.l     d0, d1
005b80: b481         cmp.l      d1, d2
005b82: 650c         bcs.b      $5b90
005b84: 6704         beq.b      $5b8a
005b86: 7000         moveq      #$0, d0
005b88: 605c         bra.b      $5be6
005b8a: 7001         moveq      #$1, d0
005b8c: 9282         sub.l      d2, d1
005b8e: 6056         bra.b      $5be6
005b90: 2602         move.l     d2, d3
005b92: 6bf6         bmi.b      $5b8a
005b94: c684         and.l      d4, d3
005b96: 6612         bne.b      $5baa
005b98: e28a         lsr.l      #$1, d2
005b9a: 76ff         moveq      #$ff, d3
005b9c: e28a         lsr.l      #$1, d2
005b9e: 55cbfffc     dbcs       d3, $5b9c
005ba2: 4483         neg.l      d3
005ba4: e6a8         lsr.l      d3, d0
005ba6: c284         and.l      d4, d1
005ba8: 603c         bra.b      $5be6
005baa: 7000         moveq      #$0, d0
005bac: 76ff         moveq      #$ff, d3
005bae: e382         asl.l      #$1, d2
005bb0: 6a06         bpl.b      $5bb8
005bb2: b481         cmp.l      d1, d2
005bb4: 620a         bhi.b      $5bc0
005bb6: 600c         bra.b      $5bc4
005bb8: b481         cmp.l      d1, d2
005bba: 54cbfff2     dbcc       d3, $5bae
005bbe: 6704         beq.b      $5bc4
005bc0: 5283         addq.l     #$1, d3
005bc2: e28a         lsr.l      #$1, d2
005bc4: 4483         neg.l      d3
005bc6: 6004         bra.b      $5bcc
005bc8: e380         asl.l      #$1, d0
005bca: e28a         lsr.l      #$1, d2
005bcc: 9282         sub.l      d2, d1
005bce: 6510         bcs.b      $5be0
005bd0: 5280         addq.l     #$1, d0
005bd2: 51cbfff4     dbra       d3, $5bc8
005bd6: 600e         bra.b      $5be6
005bd8: e380         asl.l      #$1, d0
005bda: e28a         lsr.l      #$1, d2
005bdc: d282         add.l      d2, d1
005bde: 65f0         bcs.b      $5bd0
005be0: 51cbfff6     dbra       d3, $5bd8
005be4: d282         add.l      d2, d1
005be6: 4cdf001c     movem.l    (a7)+, d2-d4
005bea: 4a80         tst.l      d0
005bec: 4e75         rts        
005bee: 3d06         move.w     d6, -(a6)
005bf0: 849b         or.l       (a3)+, d2
005bf2: 86a1         or.l       -(a1), d3
005bf4: 2b9c3fe00000 move.l     (a4)+, (invalid.w)
005bfa: 00000000     ori.b      #$0, d0
005bfe: 48e73000     movem.l    d2-d3, -(a7)
005c02: 4cfa000cffe8 movem.l    $5bec(pc), d2-d3
005c08: 610007d2     bsr.w      $63dc
005c0c: 4cdf000c     movem.l    (a7)+, d2-d3
005c10: 4e75         rts        
005c12: 48e73000     movem.l    d2-d3, -(a7)
005c16: 4cfa000cffd4 movem.l    $5bec(pc), d2-d3
005c1c: 610008c8     bsr.w      $64e6
005c20: 4cdf000c     movem.l    (a7)+, d2-d3
005c24: 4e75         rts        
005c26: 48e73000     movem.l    d2-d3, -(a7)
005c2a: 4cfa000cffc0 movem.l    $5bec(pc), d2-d3
005c30: 61000908     bsr.w      $653a
005c34: 4cdf000c     movem.l    (a7)+, d2-d3
005c38: 4e75         rts        
005c3a: 48e73000     movem.l    d2-d3, -(a7)
005c3e: 4cfa000cffac movem.l    $5bec(pc), d2-d3
005c44: 6100091c     bsr.w      $6562
005c48: 4cdf000c     movem.l    (a7)+, d2-d3
005c4c: 4e75         rts        
005c4e: 48e73000     movem.l    d2-d3, -(a7)
005c52: 4cfa000cff98 movem.l    $5bec(pc), d2-d3
005c58: 610009b4     bsr.w      $660e
005c5c: 4cdf000c     movem.l    (a7)+, d2-d3
005c60: 4e75         rts        
005c62: 48e73000     movem.l    d2-d3, -(a7)
005c66: 4cfa000cff84 movem.l    $5bec(pc), d2-d3
005c6c: 610009be     bsr.w      $662c
005c70: 4cdf000c     movem.l    (a7)+, d2-d3
005c74: 4e75         rts        
005c76: 48e73000     movem.l    d2-d3, -(a7)
005c7a: 4cfa000cff70 movem.l    $5bec(pc), d2-d3
005c80: 61000ad8     bsr.w      $675a
005c84: 4cdf000c     movem.l    (a7)+, d2-d3
005c88: 4e75         rts        
005c8a: 48e73000     movem.l    d2-d3, -(a7)
005c8e: 4cfa000cff5c movem.l    $5bec(pc), d2-d3
005c94: 61000cdc     bsr.w      $6972
005c98: 4cdf000c     movem.l    (a7)+, d2-d3
005c9c: 4e75         rts        
005c9e: 48e73000     movem.l    d2-d3, -(a7)
005ca2: 4cfa000cff48 movem.l    $5bec(pc), d2-d3
005ca8: 61000cac     bsr.w      $6956
005cac: 4cdf000c     movem.l    (a7)+, d2-d3
005cb0: 4e75         rts        
005cb2: 48e73c00     movem.l    d2-d5, -(a7)
005cb6: 4cef000c0014 movem.l    $14(a7), d2-d3
005cbc: 4cfa0030ff2e movem.l    $5bec(pc), d4-d5
005cc2: 61000bba     bsr.w      $687e
005cc6: 4cdf003c     movem.l    (a7)+, d2-d5
005cca: 4e75         rts        
005ccc: 48e73000     movem.l    d2-d3, -(a7)
005cd0: 4cfa000cff1a movem.l    $5bec(pc), d2-d3
005cd6: 61000daa     bsr.w      $6a82
005cda: 4cdf000c     movem.l    (a7)+, d2-d3
005cde: 4e75         rts        
005ce0: 48e73000     movem.l    d2-d3, -(a7)
005ce4: 4a80         tst.l      d0
005ce6: 6c0e         bge.b      $5cf6
005ce8: 610018dc     bsr.w      $75c6
005cec: 4a82         tst.l      d2
005cee: 670a         beq.b      $5cfa
005cf0: 6100119a     bsr.w      $6e8c
005cf4: 6004         bra.b      $5cfa
005cf6: 610018ce     bsr.w      $75c6
005cfa: 4cdf000c     movem.l    (a7)+, d2-d3
005cfe: 4e75         rts        
005d00: 48e73000     movem.l    d2-d3, -(a7)
005d04: 4a80         tst.l      d0
005d06: 670e         beq.b      $5d16
005d08: 0840001f     bchg.b     #$1f, d0
005d0c: 61d2         bsr.b      $5ce0
005d0e: 4a80         tst.l      d0
005d10: 6704         beq.b      $5d16
005d12: 0840001f     bchg.b     #$1f, d0
005d16: 4cdf000c     movem.l    (a7)+, d2-d3
005d1a: 4e75         rts        
005d1c: 0880001f     bclr.b     #$1f, d0
005d20: 4e75         rts        
005d22: 48e73080     movem.l    d2-d3/a0, -(a7)
005d26: 6100189e     bsr.w      $75c6
005d2a: 206f0010     movea.l    $10(a7), a0
005d2e: 48d00003     movem.l    d0-d1, (a0)
005d32: 2002         move.l     d2, d0
005d34: 2203         move.l     d3, d1
005d36: 4cdf010c     movem.l    (a7)+, d2-d3/a0
005d3a: 4e75         rts        
005d3c: 48e73c00     movem.l    d2-d5, -(a7)
005d40: 4cef000c0014 movem.l    $14(a7), d2-d3
005d46: 0880001f     bclr.b     #$1f, d0
005d4a: 0882001f     bclr.b     #$1f, d2
005d4e: 6100175e     bsr.w      $74ae
005d52: 6b04         bmi.b      $5d58
005d54: c142         exg.l      d0, d2
005d56: c343         exg.l      d1, d3
005d58: 48ef000c0014 movem.l    d2-d3, $14(a7)
005d5e: 4a82         tst.l      d2
005d60: 6606         bne.b      $5d68
005d62: 2002         move.l     d2, d0
005d64: 2203         move.l     d3, d1
005d66: 6024         bra.b      $5d8c
005d68: 61001592     bsr.w      $72fc
005d6c: 2400         move.l     d0, d2
005d6e: 2601         move.l     d1, d3
005d70: 610013b4     bsr.w      $7126
005d74: 61001270     bsr.w      $6fe6
005d78: 4cfa000cfe72 movem.l    $5bec(pc), d2-d3
005d7e: 61000d02     bsr.w      $6a82
005d82: 4cef000c0014 movem.l    $14(a7), d2-d3
005d88: 6100139c     bsr.w      $7126
005d8c: 4cdf003c     movem.l    (a7)+, d2-d5
005d90: 4e75         rts        
005d92: 2a5f         movea.l    (a7)+, a5
005d94: 5385         subq.l     #$1, d5
005d96: 6562         bcs.b      $5dfa
005d98: 1018         move.b     (a0)+, d0
005d9a: 67f8         beq.b      $5d94
005d9c: 0c00000d     cmpi.b     #$d, d0
005da0: 6758         beq.b      $5dfa
005da2: 0c000020     cmpi.b     #$20, d0
005da6: 67ec         beq.b      $5d94
005da8: 0c000009     cmpi.b     #$9, d0
005dac: 67e6         beq.b      $5d94
005dae: 0c00002c     cmpi.b     #$2c, d0
005db2: 67e0         beq.b      $5d94
005db4: 5282         addq.l     #$1, d2
005db6: 0c000022     cmpi.b     #$22, d0
005dba: 6730         beq.b      $5dec
005dbc: 0c000027     cmpi.b     #$27, d0
005dc0: 672a         beq.b      $5dec
005dc2: 4868ffff     pea.l      -$1(a0)
005dc6: 5385         subq.l     #$1, d5
005dc8: 6530         bcs.b      $5dfa
005dca: 1018         move.b     (a0)+, d0
005dcc: 67c6         beq.b      $5d94
005dce: 0c00000d     cmpi.b     #$d, d0
005dd2: 6712         beq.b      $5de6
005dd4: 0c000020     cmpi.b     #$20, d0
005dd8: 670c         beq.b      $5de6
005dda: 0c000009     cmpi.b     #$9, d0
005dde: 6706         beq.b      $5de6
005de0: 0c00002c     cmpi.b     #$2c, d0
005de4: 66e0         bne.b      $5dc6
005de6: 4228ffff     clr.b      -$1(a0)
005dea: 60a8         bra.b      $5d94
005dec: 4850         pea.l      (a0)
005dee: 5385         subq.l     #$1, d5
005df0: 6508         bcs.b      $5dfa
005df2: 1218         move.b     (a0)+, d1
005df4: b001         cmp.b      d1, d0
005df6: 66f6         bne.b      $5dee
005df8: 60ec         bra.b      $5de6
005dfa: 204f         movea.l    a7, a0
005dfc: 4857         pea.l      (a7)
005dfe: 2f02         move.l     d2, -(a7)
005e00: 5382         subq.l     #$1, d2
005e02: 6710         beq.b      $5e14
005e04: e582         asl.l      #$2, d2
005e06: 20302800     move.l     (a0, d2.l), d0
005e0a: 21902800     move.l     (a0), (a0, d2.l)
005e0e: 20c0         move.l     d0, (a0)+
005e10: 5182         subq.l     #$8, d2
005e12: 62f2         bhi.b      $5e06
005e14: 4ed5         jmp        (a5)
005e16: 4e550000     link.w     a5, #$0
005e1a: 48e76080     movem.l    d1-d2/a0, -(a7)
005e1e: 2041         movea.l    d1, a0
005e20: 323c0000     move.w     #$0, d1
005e24: 4e40         trap       #$0
005e26: 008d         .dc.w      $008d
005e28: 60000522     bra.w      $634c
005e2c: 4e550000     link.w     a5, #$0
005e30: 48e76080     movem.l    d1-d2/a0, -(a7)
005e34: 323c0001     move.w     #$1, d1
005e38: 4e40         trap       #$0
005e3a: 008d         .dc.w      $008d
005e3c: 65000510     bcs.w      $634e
005e40: 2001         move.l     d1, d0
005e42: 60000508     bra.w      $634c
005e46: 4e550000     link.w     a5, #$0
005e4a: 48e76080     movem.l    d1-d2/a0, -(a7)
005e4e: 323c0006     move.w     #$6, d1
005e52: 4e40         trap       #$0
005e54: 008d         .dc.w      $008d
005e56: 640004fe     bcc.w      $6356
005e5a: 0c4100d3     cmpi.w     #$d3, d1
005e5e: 660004ee     bne.w      $634e
005e62: 7001         moveq      #$1, d0
005e64: 600004e6     bra.w      $634c
005e68: 4e550000     link.w     a5, #$0
005e6c: 48e76080     movem.l    d1-d2/a0, -(a7)
005e70: 2041         movea.l    d1, a0
005e72: 323c000f     move.w     #$f, d1
005e76: 242d0008     move.l     $8(a5), d2
005e7a: 60a8         bra.b      $5e24
005e7c: 4e550000     link.w     a5, #$0
005e80: 48e76080     movem.l    d1-d2/a0, -(a7)
005e84: 2041         movea.l    d1, a0
005e86: 323c000e     move.w     #$e, d1
005e8a: 6098         bra.b      $5e24
005e8c: 4e550000     link.w     a5, #$0
005e90: 48e76080     movem.l    d1-d2/a0, -(a7)
005e94: 323c0002     move.w     #$2, d1
005e98: 4e40         trap       #$0
005e9a: 008d         .dc.w      $008d
005e9c: 650004b0     bcs.w      $634e
005ea0: 2002         move.l     d2, d0
005ea2: 600004a8     bra.w      $634c
005ea6: 4e550000     link.w     a5, #$0
005eaa: 48e76080     movem.l    d1-d2/a0, -(a7)
005eae: 323c0005     move.w     #$5, d1
005eb2: 60e4         bra.b      $5e98
005eb4: 4e550000     link.w     a5, #$0
005eb8: 48e76080     movem.l    d1-d2/a0, -(a7)
005ebc: 2041         movea.l    d1, a0
005ebe: 323c0000     move.w     #$0, d1
005ec2: 4e40         trap       #$0
005ec4: 008e         .dc.w      $008e
005ec6: 60000484     bra.w      $634c
005eca: 4e550000     link.w     a5, #$0
005ece: 48e76080     movem.l    d1-d2/a0, -(a7)
005ed2: 323c0003     move.w     #$3, d1
005ed6: 60ea         bra.b      $5ec2
005ed8: 4e550000     link.w     a5, #$0
005edc: 48e76080     movem.l    d1-d2/a0, -(a7)
005ee0: 2401         move.l     d1, d2
005ee2: 323c0002     move.w     #$2, d1
005ee6: 60da         bra.b      $5ec2
005ee8: 4e550000     link.w     a5, #$0
005eec: 48e76080     movem.l    d1-d2/a0, -(a7)
005ef0: 2041         movea.l    d1, a0
005ef2: 323c000f     move.w     #$f, d1
005ef6: 60ca         bra.b      $5ec2
005ef8: 4e550000     link.w     a5, #$0
005efc: 48e76080     movem.l    d1-d2/a0, -(a7)
005f00: 2401         move.l     d1, d2
005f02: 323c0010     move.w     #$10, d1
005f06: 60ba         bra.b      $5ec2
005f08: 4e550000     link.w     a5, #$0
005f0c: 48e76080     movem.l    d1-d2/a0, -(a7)
005f10: 2401         move.l     d1, d2
005f12: 323c0011     move.w     #$11, d1
005f16: 60aa         bra.b      $5ec2
005f18: 4e550000     link.w     a5, #$0
005f1c: 48e76080     movem.l    d1-d2/a0, -(a7)
005f20: 2401         move.l     d1, d2
005f22: 323c001a     move.w     #$1a, d1
005f26: 609a         bra.b      $5ec2
005f28: 4e550000     link.w     a5, #$0
005f2c: 48e76080     movem.l    d1-d2/a0, -(a7)
005f30: 323c001b     move.w     #$1b, d1
005f34: 60f0         bra.b      $5f26
005f36: 4e550000     link.w     a5, #$0
005f3a: 48e76080     movem.l    d1-d2/a0, -(a7)
005f3e: 48e71840     movem.l    d3-d4/a1, -(a7)
005f42: 2401         move.l     d1, d2
005f44: 7204         moveq      #$4, d1
005f46: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
005f4c: 4e40         trap       #$0
005f4e: 008e         .dc.w      $008e
005f50: 4cdf0218     movem.l    (a7)+, d3-d4/a1
005f54: 600003f6     bra.w      $634c
005f58: 4e550000     link.w     a5, #$0
005f5c: 48e76080     movem.l    d1-d2/a0, -(a7)
005f60: 2401         move.l     d1, d2
005f62: 323c001c     move.w     #$1c, d1
005f66: 60be         bra.b      $5f26
005f68: 4e550000     link.w     a5, #$0
005f6c: 48e76080     movem.l    d1-d2/a0, -(a7)
005f70: 323c0024     move.w     #$24, d1
005f74: 60b0         bra.b      $5f26
005f76: 4e550000     link.w     a5, #$0
005f7a: 48e76080     movem.l    d1-d2/a0, -(a7)
005f7e: 323c0025     move.w     #$25, d1
005f82: 60a2         bra.b      $5f26
005f84: 4e550000     link.w     a5, #$0
005f88: 48e76080     movem.l    d1-d2/a0, -(a7)
005f8c: 3401         move.w     d1, d2
005f8e: 323c0026     move.w     #$26, d1
005f92: 6092         bra.b      $5f26
005f94: 4e550000     link.w     a5, #$0
005f98: 48e76080     movem.l    d1-d2/a0, -(a7)
005f9c: 3401         move.w     d1, d2
005f9e: 323c0027     move.w     #$27, d1
005fa2: 6082         bra.b      $5f26
005fa4: 4e550000     link.w     a5, #$0
005fa8: 48e76080     movem.l    d1-d2/a0, -(a7)
005fac: 2040         movea.l    d0, a0
005fae: 2001         move.l     d1, d0
005fb0: 2f0a         move.l     a2, -(a7)
005fb2: 4e40         trap       #$0
005fb4: 0080204a245f ori.l      #$204a245f, d0
005fba: 65000392     bcs.w      $634e
005fbe: 2008         move.l     a0, d0
005fc0: 6000038a     bra.w      $634c
005fc4: 4e550000     link.w     a5, #$0
005fc8: 48e76080     movem.l    d1-d2/a0, -(a7)
005fcc: 204a         movea.l    a2, a0
005fce: 2440         movea.l    d0, a2
005fd0: 4e40         trap       #$0
005fd2: 008124486000 ori.l      #$24486000, d1
005fd8: 03744e55     bchg.b     d1, $55(a4, d4.l)
005fdc: 000048e7     ori.b      #$e7, d0
005fe0: 6080         bra.b      $5f62
005fe2: 7000         moveq      #$0, d0
005fe4: 4e40         trap       #$0
005fe6: 000a         .dc.w      $000a
005fe8: 60000362     bra.w      $634c
005fec: 4e550000     link.w     a5, #$0
005ff0: 48e76080     movem.l    d1-d2/a0, -(a7)
005ff4: 206d0008     movea.l    $8(a5), a0
005ff8: 2210         move.l     (a0), d1
005ffa: 2040         movea.l    d0, a0
005ffc: 2017         move.l     (a7), d0
005ffe: 4e40         trap       #$0
006000: 00176500     ori.b      #$0, (a7)
006004: 034a206d     movep.l    $206d(a2), d1
006008: 0008         .dc.w      $0008
00600a: 2081         move.l     d1, (a0)
00600c: 60000348     bra.w      $6356
006010: 4e550000     link.w     a5, #$0
006014: 48e76080     movem.l    d1-d2/a0, -(a7)
006018: 4e40         trap       #$0
00601a: 000f         .dc.w      $000f
00601c: 6000032e     bra.w      $634c
006020: e188         lsl.l      #$8, d0
006022: 08c0001f     bset.b     #$1f, d0
006026: 4e550000     link.w     a5, #$0
00602a: 48e76080     movem.l    d1-d2/a0, -(a7)
00602e: 4e40         trap       #$0
006030: 000a         .dc.w      $000a
006032: 60000318     bra.w      $634c
006036: 4e550000     link.w     a5, #$0
00603a: 48e700c0     movem.l    a0-a1, -(a7)
00603e: 2041         movea.l    d1, a0
006040: 2240         movea.l    d0, a1
006042: 222d0008     move.l     $8(a5), d1
006046: 4e40         trap       #$0
006048: 00116560     ori.b      #$60, (a1)
00604c: 7000         moveq      #$0, d0
00604e: 6068         bra.b      $60b8
006050: 4e550000     link.w     a5, #$0
006054: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006058: 2040         movea.l    d0, a0
00605a: 4e40         trap       #$0
00605c: 00106454     ori.b      #$54, (a0)
006060: 604a         bra.b      $60ac
006062: 4e550000     link.w     a5, #$0
006066: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00606a: 2040         movea.l    d0, a0
00606c: 2248         movea.l    a0, a1
00606e: 1019         move.b     (a1)+, d0
006070: 0c00002f     cmpi.b     #$2f, d0
006074: 671a         beq.b      $6090
006076: 0c00002e     cmpi.b     #$2e, d0
00607a: 6622         bne.b      $609e
00607c: 0c19002e     cmpi.b     #$2e, (a1)+
006080: 67fa         beq.b      $607c
006082: 1021         move.b     -(a1), d0
006084: 672e         beq.b      $60b4
006086: 0c00002f     cmpi.b     #$2f, d0
00608a: 6612         bne.b      $609e
00608c: 2049         movea.l    a1, a0
00608e: 60de         bra.b      $606e
006090: 1019         move.b     (a1)+, d0
006092: 0c00002f     cmpi.b     #$2f, d0
006096: 6706         beq.b      $609e
006098: 0c00002e     cmpi.b     #$2e, d0
00609c: 67de         beq.b      $607c
00609e: 4e40         trap       #$0
0060a0: 00106508     ori.b      #$8, (a0)
0060a4: 4a00         tst.b      d0
0060a6: 670c         beq.b      $60b4
0060a8: 2049         movea.l    a1, a0
0060aa: 60c2         bra.b      $606e
0060ac: 2d41800c     move.l     d1, -$7ff4(a6)
0060b0: 70ff         moveq      #$ff, d0
0060b2: 6004         bra.b      $60b8
0060b4: 2009         move.l     a1, d0
0060b6: 9097         sub.l      (a7), d0
0060b8: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
0060be: 4e5d         unlk       a5
0060c0: 4e75         rts        
0060c2: 4e550000     link.w     a5, #$0
0060c6: 48e76080     movem.l    d1-d2/a0, -(a7)
0060ca: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
0060ce: 242d000c     move.l     $c(a5), d2
0060d2: 0802000f     btst.b     #$f, d2
0060d6: 6708         beq.b      $60e0
0060d8: 262d0010     move.l     $10(a5), d3
0060dc: 282d0014     move.l     $14(a5), d4
0060e0: 2040         movea.l    d0, a0
0060e2: 2001         move.l     d1, d0
0060e4: 222d0008     move.l     $8(a5), d1
0060e8: 4e40         trap       #$0
0060ea: 00256502     ori.b      #$2, -(a5)
0060ee: 200a         move.l     a2, d0
0060f0: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
0060f4: 60000256     bra.w      $634c
0060f8: 4e550000     link.w     a5, #$0
0060fc: 48e76080     movem.l    d1-d2/a0, -(a7)
006100: 2040         movea.l    d0, a0
006102: 4e40         trap       #$0
006104: 001a6500     ori.b      #$0, (a2)+
006108: 02462001     andi.w     #$2001, d6
00610c: 6000023e     bra.w      $634c
006110: 4e550000     link.w     a5, #$0
006114: 48e76080     movem.l    d1-d2/a0, -(a7)
006118: 2040         movea.l    d0, a0
00611a: 4e40         trap       #$0
00611c: 001f6500     ori.b      #$0, (a7)+
006120: 022e20016000 andi.b     #$1, $6000(a6)
006126: 02264e55     andi.b     #$55, -(a6)
00612a: 000048e7     ori.b      #$e7, d0
00612e: 6080         bra.b      $60b0
006130: 206d0008     movea.l    $8(a5), a0
006134: 4e40         trap       #$0
006136: 00186000     ori.b      #$0, (a0)+
00613a: 02124e55     andi.b     #$55, (a2)
00613e: 000048e7     ori.b      #$e7, d0
006142: 6080         bra.b      $60c4
006144: 2040         movea.l    d0, a0
006146: 4e40         trap       #$0
006148: 00266000     ori.b      #$0, -(a6)
00614c: 02004e55     andi.b     #$55, d0
006150: 000048e7     ori.b      #$e7, d0
006154: 6080         bra.b      $60d6
006156: 08c1001f     bset.b     #$1f, d1
00615a: 600c         bra.b      $6168
00615c: 4e550000     link.w     a5, #$0
006160: 48e76080     movem.l    d1-d2/a0, -(a7)
006164: 242d0008     move.l     $8(a5), d2
006168: 4e40         trap       #$0
00616a: 00276500     ori.b      #$0, -(a7)
00616e: 01e0         bset.b     d0, -(a0)
006170: 2002         move.l     d2, d0
006172: 600001d8     bra.w      $634c
006176: 4e550000     link.w     a5, #$0
00617a: 48e76080     movem.l    d1-d2/a0, -(a7)
00617e: 4e40         trap       #$0
006180: 000b         .dc.w      $000b
006182: 600001c8     bra.w      $634c
006186: 4e550000     link.w     a5, #$0
00618a: 4e40         trap       #$0
00618c: 00524e5d     ori.w      #$4e5d, (a2)
006190: 4e75         rts        
006192: 4e550000     link.w     a5, #$0
006196: 48e76080     movem.l    d1-d2/a0, -(a7)
00619a: 2f09         move.l     a1, -(a7)
00619c: 206d0008     movea.l    $8(a5), a0
0061a0: 226d000c     movea.l    $c(a5), a1
0061a4: 4e40         trap       #$0
0061a6: 001b225f     ori.b      #$5f, (a3)+
0061aa: 600001a0     bra.w      $634c
0061ae: 4e550000     link.w     a5, #$0
0061b2: 48e76080     movem.l    d1-d2/a0, -(a7)
0061b6: 2040         movea.l    d0, a0
0061b8: 3001         move.w     d1, d0
0061ba: 48e70060     movem.l    a1-a2, -(a7)
0061be: 4e40         trap       #$0
0061c0: 00006502     ori.b      #$2, d0
0061c4: 200a         move.l     a2, d0
0061c6: 4cdf0600     movem.l    (a7)+, a1-a2
0061ca: 60000180     bra.w      $634c
0061ce: 4e550000     link.w     a5, #$0
0061d2: 48e76080     movem.l    d1-d2/a0, -(a7)
0061d6: 2040         movea.l    d0, a0
0061d8: 3001         move.w     d1, d0
0061da: 48e70060     movem.l    a1-a2, -(a7)
0061de: 4e40         trap       #$0
0061e0: 000160de     ori.b      #$de, d1
0061e4: 4e550000     link.w     a5, #$0
0061e8: 48e76080     movem.l    d1-d2/a0, -(a7)
0061ec: 2f0a         move.l     a2, -(a7)
0061ee: 2440         movea.l    d0, a2
0061f0: 4e40         trap       #$0
0061f2: 0002245f     ori.b      #$5f, d2
0061f6: 60000154     bra.w      $634c
0061fa: 4e550000     link.w     a5, #$0
0061fe: 48e76080     movem.l    d1-d2/a0, -(a7)
006202: 2040         movea.l    d0, a0
006204: 3001         move.w     d1, d0
006206: 4e40         trap       #$0
006208: 001d6000     ori.b      #$0, (a5)+
00620c: 0140         bchg.b     d0, d0
00620e: 4e550000     link.w     a5, #$0
006212: 48e76080     movem.l    d1-d2/a0, -(a7)
006216: 4e40         trap       #$0
006218: 0008         .dc.w      $0008
00621a: 60000130     bra.w      $634c
00621e: 4e550000     link.w     a5, #$0
006222: 48e76080     movem.l    d1-d2/a0, -(a7)
006226: 2040         movea.l    d0, a0
006228: 7000         moveq      #$0, d0
00622a: 4e40         trap       #$0
00622c: 00046500     ori.b      #$0, d4
006230: 011e         btst.l     d0, (a6)+
006232: 2408         move.l     a0, d2
006234: 67000116     beq.w      $634c
006238: 4258         clr.w      (a0)+
00623a: 3081         move.w     d1, (a0)
00623c: 6000010e     bra.w      $634c
006240: 4e550000     link.w     a5, #$0
006244: 48e76080     movem.l    d1-d2/a0, -(a7)
006248: 4e40         trap       #$0
00624a: 000d         .dc.w      $000d
00624c: 600000fe     bra.w      $634c
006250: 4e550000     link.w     a5, #$0
006254: 48e76080     movem.l    d1-d2/a0, -(a7)
006258: 48e71c40     movem.l    d3-d5/a1, -(a7)
00625c: 7a03         moveq      #$3, d5
00625e: 602e         bra.b      $628e
006260: 4e550000     link.w     a5, #$0
006264: 48e76080     movem.l    d1-d2/a0, -(a7)
006268: 48e71c40     movem.l    d3-d5/a1, -(a7)
00626c: 7a01         moveq      #$1, d5
00626e: 601e         bra.b      $628e
006270: 4e550000     link.w     a5, #$0
006274: 48e76080     movem.l    d1-d2/a0, -(a7)
006278: 48e71c40     movem.l    d3-d5/a1, -(a7)
00627c: 7a02         moveq      #$2, d5
00627e: 600e         bra.b      $628e
006280: 4e550000     link.w     a5, #$0
006284: 48e76080     movem.l    d1-d2/a0, -(a7)
006288: 48e71c40     movem.l    d3-d5/a1, -(a7)
00628c: 7a00         moveq      #$0, d5
00628e: 2040         movea.l    d0, a0
006290: 2401         move.l     d1, d2
006292: 226d0008     movea.l    $8(a5), a1
006296: 302d0012     move.w     $12(a5), d0
00629a: 4840         swap       d0
00629c: 302d000e     move.w     $e(a5), d0
0062a0: 222d0014     move.l     $14(a5), d1
0062a4: 7603         moveq      #$3, d3
0062a6: 08050001     btst.b     #$1, d5
0062aa: 6704         beq.b      $62b0
0062ac: 262d001c     move.l     $1c(a5), d3
0062b0: 282d0018     move.l     $18(a5), d4
0062b4: 08050000     btst.b     #$0, d5
0062b8: 6606         bne.b      $62c0
0062ba: 4e40         trap       #$0
0062bc: 00036004     ori.b      #$4, d3
0062c0: 4e40         trap       #$0
0062c2: 00054cdf     ori.b      #$df, d5
0062c6: 023860000082 andi.b     #$0, $82.w
0062cc: 4e550000     link.w     a5, #$0
0062d0: 48e76080     movem.l    d1-d2/a0, -(a7)
0062d4: 4e40         trap       #$0
0062d6: 000c         .dc.w      $000c
0062d8: 60000072     bra.w      $634c
0062dc: 4e550000     link.w     a5, #$0
0062e0: 48e76080     movem.l    d1-d2/a0, -(a7)
0062e4: 4e40         trap       #$0
0062e6: 000c         .dc.w      $000c
0062e8: 65000064     bcs.w      $634e
0062ec: 2001         move.l     d1, d0
0062ee: 6000005c     bra.w      $634c
0062f2: 4e550000     link.w     a5, #$0
0062f6: 48e76080     movem.l    d1-d2/a0, -(a7)
0062fa: 2200         move.l     d0, d1
0062fc: 4e40         trap       #$0
0062fe: 001c6000     ori.b      #$0, (a4)+
006302: 004a         .dc.w      $004a
006304: 4e550000     link.w     a5, #$0
006308: 48e76080     movem.l    d1-d2/a0, -(a7)
00630c: 41fa0012     lea.l      $6320(pc), a0
006310: 2d40a0d2     move.l     d0, -$5f2e(a6)
006314: 6602         bne.b      $6318
006316: 2040         movea.l    d0, a0
006318: 4e40         trap       #$0
00631a: 0009         .dc.w      $0009
00631c: 6000002e     bra.w      $634c
006320: 2001         move.l     d1, d0
006322: 206ea0d2     movea.l    -$5f2e(a6), a0
006326: 4e90         jsr        (a0)
006328: 4e40         trap       #$0
00632a: 001e4e55     ori.b      #$55, (a6)+
00632e: 00002f01     ori.b      #$1, d0
006332: 2200         move.l     d0, d1
006334: 7000         moveq      #$0, d0
006336: 4e40         trap       #$0
006338: 00576508     ori.w      #$6508, (a7)
00633c: 7000         moveq      #$0, d0
00633e: 221f         move.l     (a7)+, d1
006340: 4e5d         unlk       a5
006342: 4e75         rts        
006344: 2d41800c     move.l     d1, -$7ff4(a6)
006348: 70ff         moveq      #$ff, d0
00634a: 60f2         bra.b      $633e
00634c: 640c         bcc.b      $635a
00634e: 2d41800c     move.l     d1, -$7ff4(a6)
006352: 70ff         moveq      #$ff, d0
006354: 6004         bra.b      $635a
006356: 65f6         bcs.b      $634e
006358: 7000         moveq      #$0, d0
00635a: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
006360: 4e5d         unlk       a5
006362: 4e75         rts        
006364: 4e550000     link.w     a5, #$0
006368: 2200         move.l     d0, d1
00636a: 6100001e     bsr.w      $638a
00636e: 6100f63a     bsr.w      $59aa
006372: 6008         bra.b      $637c
006374: 4e550000     link.w     a5, #$0
006378: 4afc         illegal    #$4afc
00637a: 2200         move.l     d0, d1
00637c: 4e40         trap       #$0
00637e: 0006dead     ori.b      #$ad, d6
006382: dead003c     add.l      $3c(a5), d7
006386: 00014e75     ori.b      #$75, d1
00638a: 4e75         rts        
00638c: 4003         negx.b     d3
00638e: 504f         addq.w     #$8, a7
006390: 333f         .dc.w      $333f
006392: 9de7         suba.l     -(a7), a6
006394: 3fda         .dc.w      $3fda
006396: 827999fcef31 or.w       $99fcef31.l, d1
00639c: 3ff9         .dc.w      $3ff9
00639e: 21fb54442d18 move.l     $63e4(pc, d5.w), $2d18.w
0063a4: 3fe9         .dc.w      $3fe9
0063a6: 21fb54442d18 move.l     $63ec(pc, d5.w), $2d18.w
0063ac: 4019         negx.b     (a1)+
0063ae: 21fb54442d18 move.l     $63f4(pc, d5.w), $2d18.w
0063b4: 403f         .dc.w      $403f
0063b6: 6a7a         bpl.b      $6432
0063b8: 2955385f     move.l     (a5), $385f(a4)
0063bc: 3ff0         .dc.w      $3ff0
0063be: 00000000     ori.b      #$0, d0
0063c2: 00004000     ori.b      #$0, d0
0063c6: 00000000     ori.b      #$0, d0
0063ca: 0000bff0     ori.b      #$f0, d0
0063ce: 00000000     ori.b      #$0, d0
0063d2: 00003fe6     ori.b      #$e6, d0
0063d6: 6666         bne.b      $643e
0063d8: 6666         bne.b      $6440
0063da: 6667         bne.b      $6443
0063dc: 48e73ff0     movem.l    d2-d7/a0-a3, -(a7)
0063e0: 610013f0     bsr.w      $77d2
0063e4: 48e73000     movem.l    d2-d3, -(a7)
0063e8: 3f3c0001     move.w     #$1, -(a7)
0063ec: 3f3c8000     move.w     #$8000, -(a7)
0063f0: 610000cc     bsr.w      $64be
0063f4: 283c3bc79ca1 move.l     #$3bc79ca1, d4
0063fa: 4a80         tst.l      d0
0063fc: 6a04         bpl.b      $6402
0063fe: 08c4001f     bset.b     #$1f, d4
006402: b084         cmp.l      d4, d0
006404: 6500008e     bcs.w      $6494
006408: 2c00         move.l     d0, d6
00640a: 2e01         move.l     d1, d7
00640c: 2400         move.l     d0, d2
00640e: 2601         move.l     d1, d3
006410: 61000d14     bsr.w      $7126
006414: 2440         movea.l    d0, a2
006416: 2641         movea.l    d1, a3
006418: 2006         move.l     d6, d0
00641a: 2207         move.l     d7, d1
00641c: 283c3ff00000 move.l     #$3ff00000, d4
006422: 7a00         moveq      #$0, d5
006424: 2045         movea.l    d5, a0
006426: 2245         movea.l    d5, a1
006428: 6050         bra.b      $647a
00642a: 2040         movea.l    d0, a0
00642c: 2241         movea.l    d1, a1
00642e: 546f0002     addq.w     #$2, $2(a7)
006432: 302f0002     move.w     $2(a7), d0
006436: 3200         move.w     d0, d1
006438: 5340         subq.w     #$1, d0
00643a: c0c1         mulu.w     d1, d0
00643c: 610010b6     bsr.w      $74f4
006440: 2404         move.l     d4, d2
006442: 2605         move.l     d5, d3
006444: 61000ce0     bsr.w      $7126
006448: 2800         move.l     d0, d4
00644a: 2a01         move.l     d1, d5
00644c: 200a         move.l     a2, d0
00644e: 220b         move.l     a3, d1
006450: 2406         move.l     d6, d2
006452: 2607         move.l     d7, d3
006454: 61000cd0     bsr.w      $7126
006458: 2c00         move.l     d0, d6
00645a: 2e01         move.l     d1, d7
00645c: 2404         move.l     d4, d2
00645e: 2605         move.l     d5, d3
006460: 61000e9a     bsr.w      $72fc
006464: 08570007     bchg.b     #$7, (a7)
006468: 6708         beq.b      $6472
00646a: 4a80         tst.l      d0
00646c: 6704         beq.b      $6472
00646e: 0840001f     bchg.b     #$1f, d0
006472: 2408         move.l     a0, d2
006474: 2609         move.l     a1, d3
006476: 61000898     bsr.w      $6d10
00647a: 2408         move.l     a0, d2
00647c: 2609         move.l     a1, d3
00647e: 9681         sub.l      d1, d3
006480: 9580         subx.l     d0, d2
006482: 6404         bcc.b      $6488
006484: 4483         neg.l      d3
006486: 4082         negx.l     d2
006488: c4af0004     and.l      $4(a7), d2
00648c: 669c         bne.b      $642a
00648e: c6af0008     and.l      $8(a7), d3
006492: 6696         bne.b      $642a
006494: 588f         addq.l     #$4, a7
006496: 508f         addq.l     #$8, a7
006498: 4cdf0ffc     movem.l    (a7)+, d2-d7/a0-a3
00649c: 0c80bff00000 cmpi.l     #$bff00000, d0
0064a2: 620c         bhi.b      $64b0
0064a4: 4a80         tst.l      d0
0064a6: 6b10         bmi.b      $64b8
0064a8: 0c803ff00000 cmpi.l     #$3ff00000, d0
0064ae: 6508         bcs.b      $64b8
0064b0: c0bcbff00000 and.l      #$bff00000, d0
0064b6: 7200         moveq      #$0, d1
0064b8: 44fc0000     move.w     #$0, ccr
0064bc: 4e75         rts        
0064be: 48e7c000     movem.l    d0-d1, -(a7)
0064c2: 4cfa000cfee6 movem.l    $63aa(pc), d2-d3
0064c8: 61000e32     bsr.w      $72fc
0064cc: 610010f8     bsr.w      $75c6
0064d0: 4cfa000cfed8 movem.l    $63aa(pc), d2-d3
0064d6: 61000c4e     bsr.w      $7126
0064da: 4cdf000c     movem.l    (a7)+, d2-d3
0064de: 61001008     bsr.w      $74e8
0064e2: 6000082c     bra.w      $6d10
0064e6: 48e73ff0     movem.l    d2-d7/a0-a3, -(a7)
0064ea: 610012e6     bsr.w      $77d2
0064ee: 48e73000     movem.l    d2-d3, -(a7)
0064f2: 3f3c0000     move.w     #$0, -(a7)
0064f6: 3f3c8000     move.w     #$8000, -(a7)
0064fa: 61c2         bsr.b      $64be
0064fc: 283c3bc79ca1 move.l     #$3bc79ca1, d4
006502: 4a80         tst.l      d0
006504: 6a04         bpl.b      $650a
006506: 08c4001f     bset.b     #$1f, d4
00650a: b084         cmp.l      d4, d0
00650c: 6520         bcs.b      $652e
00650e: 2400         move.l     d0, d2
006510: 2601         move.l     d1, d3
006512: 61000c12     bsr.w      $7126
006516: 2440         movea.l    d0, a2
006518: 2641         movea.l    d1, a3
00651a: 283c3ff00000 move.l     #$3ff00000, d4
006520: 7a00         moveq      #$0, d5
006522: 2c04         move.l     d4, d6
006524: 2e05         move.l     d5, d7
006526: 2004         move.l     d4, d0
006528: 2205         move.l     d5, d1
00652a: 6000fefe     bra.w      $642a
00652e: 203c3ff00000 move.l     #$3ff00000, d0
006534: 7200         moveq      #$0, d1
006536: 6000ff5c     bra.w      $6494
00653a: 48e70f00     movem.l    d4-d7, -(a7)
00653e: 2c00         move.l     d0, d6
006540: 2e01         move.l     d1, d7
006542: 61a2         bsr.b      $64e6
006544: 2800         move.l     d0, d4
006546: 2a01         move.l     d1, d5
006548: 2006         move.l     d6, d0
00654a: 2207         move.l     d7, d1
00654c: 6100fe8e     bsr.w      $63dc
006550: 2404         move.l     d4, d2
006552: 2605         move.l     d5, d3
006554: 61000da6     bsr.w      $72fc
006558: 4cdf00f0     movem.l    (a7)+, d4-d7
00655c: 44fc0000     move.w     #$0, ccr
006560: 4e75         rts        
006562: 48e70ec0     movem.l    d4-d6/a0-a1, -(a7)
006566: 2042         movea.l    d2, a0
006568: 2243         movea.l    d3, a1
00656a: 7c00         moveq      #$0, d6
00656c: 4a80         tst.l      d0
00656e: 6a08         bpl.b      $6578
006570: 0880001f     bclr.b     #$1f, d0
006574: 08c6001f     bset.b     #$1f, d6
006578: b0bc3bc79ca1 cmp.l      #$3bc79ca1, d0
00657e: 65000080     bcs.w      $6600
006582: 2800         move.l     d0, d4
006584: 2a01         move.l     d1, d5
006586: 4cfa000cfe32 movem.l    $63ba(pc), d2-d3
00658c: 61000f20     bsr.w      $74ae
006590: 6f08         ble.b      $659a
006592: 7243         moveq      #$43, d1
006594: 44fc0003     move.w     #$3, ccr
006598: 606c         bra.b      $6606
00659a: 2400         move.l     d0, d2
00659c: 2601         move.l     d1, d3
00659e: 61000b86     bsr.w      $7126
0065a2: 4a80         tst.l      d0
0065a4: 6704         beq.b      $65aa
0065a6: 0840001f     bchg.b     #$1f, d0
0065aa: 4cfa000cfe0e movem.l    $63ba(pc), d2-d3
0065b0: 6100075e     bsr.w      $6d10
0065b4: 2408         move.l     a0, d2
0065b6: 2609         move.l     a1, d3
0065b8: 610004c8     bsr.w      $6a82
0065bc: c144         exg.l      d0, d4
0065be: c345         exg.l      d1, d5
0065c0: 4cfa000cfe10 movem.l    $63d2(pc), d2-d3
0065c6: 61000ee6     bsr.w      $74ae
0065ca: 6f26         ble.b      $65f2
0065cc: 2400         move.l     d0, d2
0065ce: 2601         move.l     d1, d3
0065d0: 2004         move.l     d4, d0
0065d2: 2205         move.l     d5, d1
0065d4: 61000d26     bsr.w      $72fc
0065d8: 2408         move.l     a0, d2
0065da: 2609         move.l     a1, d3
0065dc: 614e         bsr.b      $662c
0065de: 4a80         tst.l      d0
0065e0: 6704         beq.b      $65e6
0065e2: 0840001f     bchg.b     #$1f, d0
0065e6: 4cfa000cfdb2 movem.l    $639a(pc), d2-d3
0065ec: 61000722     bsr.w      $6d10
0065f0: 600e         bra.b      $6600
0065f2: 2404         move.l     d4, d2
0065f4: 2605         move.l     d5, d3
0065f6: 61000d04     bsr.w      $72fc
0065fa: 2408         move.l     a0, d2
0065fc: 2609         move.l     a1, d3
0065fe: 612c         bsr.b      $662c
006600: bd80         eor.l      d6, d0
006602: 44fc0000     move.w     #$0, ccr
006606: 4cdf0370     movem.l    (a7)+, d4-d6/a0-a1
00660a: 4e76         trapv      
00660c: 4e75         rts        
00660e: 6100ff52     bsr.w      $6562
006612: 6516         bcs.b      $662a
006614: 4a80         tst.l      d0
006616: 6704         beq.b      $661c
006618: 0840001f     bchg.b     #$1f, d0
00661c: 4cfa000cfd7c movem.l    $639a(pc), d2-d3
006622: 610006ec     bsr.w      $6d10
006626: 44fc0000     move.w     #$0, ccr
00662a: 4e75         rts        
00662c: 48e73ff0     movem.l    d2-d7/a0-a3, -(a7)
006630: 610011a0     bsr.w      $77d2
006634: 48e73000     movem.l    d2-d3, -(a7)
006638: 4a80         tst.l      d0
00663a: 6b04         bmi.b      $6640
00663c: 611c         bsr.b      $665a
00663e: 600e         bra.b      $664e
006640: 0880001f     bclr.b     #$1f, d0
006644: 6114         bsr.b      $665a
006646: 4a80         tst.l      d0
006648: 6704         beq.b      $664e
00664a: 08c0001f     bset.b     #$1f, d0
00664e: 508f         addq.l     #$8, a7
006650: 44fc0000     move.w     #$0, ccr
006654: 4cdf0ffc     movem.l    (a7)+, d2-d7/a0-a3
006658: 4e75         rts        
00665a: 4cfa000cfd36 movem.l    $6392(pc), d2-d3
006660: 61000e4c     bsr.w      $74ae
006664: 6c04         bge.b      $666a
006666: 6150         bsr.b      $66b8
006668: 4e75         rts        
00666a: 4cfa000cfd1e movem.l    $638a(pc), d2-d3
006670: 61000e3c     bsr.w      $74ae
006674: 6e22         bgt.b      $6698
006676: 2400         move.l     d0, d2
006678: 2601         move.l     d1, d3
00667a: 6100096a     bsr.w      $6fe6
00667e: c142         exg.l      d0, d2
006680: c343         exg.l      d1, d3
006682: 61000808     bsr.w      $6e8c
006686: 61000c74     bsr.w      $72fc
00668a: 612c         bsr.b      $66b8
00668c: 4cfa000cfd14 movem.l    $63a2(pc), d2-d3
006692: 6100067c     bsr.w      $6d10
006696: 4e75         rts        
006698: 2400         move.l     d0, d2
00669a: 2601         move.l     d1, d3
00669c: 4cfa0003fd1c movem.l    $63ba(pc), d0-d1
0066a2: 61000c58     bsr.w      $72fc
0066a6: 6110         bsr.b      $66b8
0066a8: 2400         move.l     d0, d2
0066aa: 2601         move.l     d1, d3
0066ac: 4cfa0003fcec movem.l    $639a(pc), d0-d1
0066b2: 61000654     bsr.w      $6d08
0066b6: 4e75         rts        
0066b8: b0bc3bc79ca1 cmp.l      #$3bc79ca1, d0
0066be: 6578         bcs.b      $6738
0066c0: 7a01         moveq      #$1, d5
0066c2: 383c8000     move.w     #$8000, d4
0066c6: 2c00         move.l     d0, d6
0066c8: 2e01         move.l     d1, d7
0066ca: 91c8         suba.l     a0, a0
0066cc: 2248         movea.l    a0, a1
0066ce: 2400         move.l     d0, d2
0066d0: 2601         move.l     d1, d3
0066d2: 61000a52     bsr.w      $7126
0066d6: 2440         movea.l    d0, a2
0066d8: 2641         movea.l    d1, a3
0066da: 2006         move.l     d6, d0
0066dc: 2207         move.l     d7, d1
0066de: 603e         bra.b      $671e
0066e0: 2040         movea.l    d0, a0
0066e2: 2241         movea.l    d1, a1
0066e4: 5485         addq.l     #$2, d5
0066e6: 200a         move.l     a2, d0
0066e8: 220b         move.l     a3, d1
0066ea: 2406         move.l     d6, d2
0066ec: 2607         move.l     d7, d3
0066ee: 61000a36     bsr.w      $7126
0066f2: 2c00         move.l     d0, d6
0066f4: 2e01         move.l     d1, d7
0066f6: 2005         move.l     d5, d0
0066f8: 61000dfa     bsr.w      $74f4
0066fc: 2400         move.l     d0, d2
0066fe: 2601         move.l     d1, d3
006700: 2006         move.l     d6, d0
006702: 2207         move.l     d7, d1
006704: 61000bf6     bsr.w      $72fc
006708: 0844000f     bchg.b     #$f, d4
00670c: 6708         beq.b      $6716
00670e: 4a80         tst.l      d0
006710: 6704         beq.b      $6716
006712: 0840001f     bchg.b     #$1f, d0
006716: 2408         move.l     a0, d2
006718: 2609         move.l     a1, d3
00671a: 610005f4     bsr.w      $6d10
00671e: 2408         move.l     a0, d2
006720: 2609         move.l     a1, d3
006722: 9681         sub.l      d1, d3
006724: 9580         subx.l     d0, d2
006726: 6404         bcc.b      $672c
006728: 4483         neg.l      d3
00672a: 4082         negx.l     d2
00672c: c4af0008     and.l      $8(a7), d2
006730: 66ae         bne.b      $66e0
006732: c6af000c     and.l      $c(a7), d3
006736: 66a8         bne.b      $66e0
006738: 4e75         rts        
00673a: 3ff0         .dc.w      $3ff0
00673c: 00000000     ori.b      #$0, d0
006740: 00004000     ori.b      #$0, d0
006744: 00000000     ori.b      #$0, d0
006748: 00003fe6     ori.b      #$e6, d0
00674c: 2e42         movea.l    d2, a7
00674e: fefa39ef41e0 fbf.l      $39efa930
006754: 00000000     ori.b      #$0, d0
006758: 000048e7     ori.b      #$e7, d0
00675c: 3ffc         .dc.w      $3ffc
00675e: 4a80         tst.l      d0
006760: 6b04         bmi.b      $6766
006762: 6120         bsr.b      $6784
006764: 6014         bra.b      $677a
006766: 0880001f     bclr.b     #$1f, d0
00676a: 6118         bsr.b      $6784
00676c: 2400         move.l     d0, d2
00676e: 2601         move.l     d1, d3
006770: 4cfa0003ffc6 movem.l    $6738(pc), d0-d1
006776: 61000b84     bsr.w      $72fc
00677a: 44fc0000     move.w     #$0, ccr
00677e: 4cdf3ffc     movem.l    (a7)+, d2-d7/a0-a5
006782: 4e75         rts        
006784: 6100104c     bsr.w      $77d2
006788: 48e73000     movem.l    d2-d3, -(a7)
00678c: 2840         movea.l    d0, a4
00678e: 2a41         movea.l    d1, a5
006790: 4cfa000cffb6 movem.l    $6748(pc), d2-d3
006796: 61000b64     bsr.w      $72fc
00679a: 61000e2a     bsr.w      $75c6
00679e: 48e7c000     movem.l    d0-d1, -(a7)
0067a2: 671a         beq.b      $67be
0067a4: 4cfa000cffa2 movem.l    $6748(pc), d2-d3
0067aa: 6100097a     bsr.w      $7126
0067ae: 0840001f     bchg.b     #$1f, d0
0067b2: 240c         move.l     a4, d2
0067b4: 260d         move.l     a5, d3
0067b6: 61000558     bsr.w      $6d10
0067ba: 2840         movea.l    d0, a4
0067bc: 2a41         movea.l    d1, a5
0067be: 200c         move.l     a4, d0
0067c0: 220d         move.l     a5, d1
0067c2: 3f3c0001     move.w     #$1, -(a7)
0067c6: 2c00         move.l     d0, d6
0067c8: 2e01         move.l     d1, d7
0067ca: 4cfa0030ff6c movem.l    $6738(pc), d4-d5
0067d0: 61000814     bsr.w      $6fe6
0067d4: 2040         movea.l    d0, a0
0067d6: 2241         movea.l    d1, a1
0067d8: 5257         addq.w     #$1, (a7)
0067da: 3017         move.w     (a7), d0
0067dc: 48c0         ext.l      d0
0067de: 61000d14     bsr.w      $74f4
0067e2: 2404         move.l     d4, d2
0067e4: 2605         move.l     d5, d3
0067e6: 6100093e     bsr.w      $7126
0067ea: 2800         move.l     d0, d4
0067ec: 2a01         move.l     d1, d5
0067ee: 200c         move.l     a4, d0
0067f0: 220d         move.l     a5, d1
0067f2: 2406         move.l     d6, d2
0067f4: 2607         move.l     d7, d3
0067f6: 6100092e     bsr.w      $7126
0067fa: 2c00         move.l     d0, d6
0067fc: 2e01         move.l     d1, d7
0067fe: 2404         move.l     d4, d2
006800: 2605         move.l     d5, d3
006802: 61000af8     bsr.w      $72fc
006806: 2408         move.l     a0, d2
006808: 2609         move.l     a1, d3
00680a: 61000504     bsr.w      $6d10
00680e: 2408         move.l     a0, d2
006810: 2609         move.l     a1, d3
006812: 9681         sub.l      d1, d3
006814: 9580         subx.l     d0, d2
006816: 6404         bcc.b      $681c
006818: 4483         neg.l      d3
00681a: 4082         negx.l     d2
00681c: c4af000a     and.l      $a(a7), d2
006820: 66b2         bne.b      $67d4
006822: c6af000e     and.l      $e(a7), d3
006826: 66ac         bne.b      $67d4
006828: 4aaf0002     tst.l      $2(a7)
00682c: 6748         beq.b      $6876
00682e: 2c00         move.l     d0, d6
006830: 2e01         move.l     d1, d7
006832: 4cef00030002 movem.l    $2(a7), d0-d1
006838: 61000cf6     bsr.w      $7530
00683c: 2800         move.l     d0, d4
00683e: 4cfa000cfef8 movem.l    $6738(pc), d2-d3
006844: b8bc00000020 cmp.l      #$20, d4
00684a: 6d16         blt.b      $6862
00684c: 4cfa0003ff02 movem.l    $6750(pc), d0-d1
006852: 610008d2     bsr.w      $7126
006856: 2400         move.l     d0, d2
006858: 2601         move.l     d1, d3
00685a: 98bc0000001f sub.l      #$1f, d4
006860: 60e2         bra.b      $6844
006862: 7001         moveq      #$1, d0
006864: e9a8         lsl.l      d4, d0
006866: 61000cbc     bsr.w      $7524
00686a: 610008ba     bsr.w      $7126
00686e: 2406         move.l     d6, d2
006870: 2607         move.l     d7, d3
006872: 610008b2     bsr.w      $7126
006876: dffc00000012 adda.l     #$12, a7
00687c: 4e75         rts        
00687e: 4a80         tst.l      d0
006880: 6608         bne.b      $688a
006882: 7000         moveq      #$0, d0
006884: 7200         moveq      #$0, d1
006886: 600000a8     bra.w      $6930
00688a: 4a82         tst.l      d2
00688c: 6716         beq.b      $68a4
00688e: b4bafeaa     cmp.l      $673a(pc), d2
006892: 6606         bne.b      $689a
006894: 4a83         tst.l      d3
006896: 67000098     beq.w      $6930
00689a: b0bafe9e     cmp.l      $673a(pc), d0
00689e: 660e         bne.b      $68ae
0068a0: 4a81         tst.l      d1
0068a2: 660a         bne.b      $68ae
0068a4: 4cfa0003fe92 movem.l    $6738(pc), d0-d1
0068aa: 60000084     bra.w      $6930
0068ae: 48e730f0     movem.l    d2-d3/a0-a3, -(a7)
0068b2: 2040         movea.l    d0, a0
0068b4: 2241         movea.l    d1, a1
0068b6: 2442         movea.l    d2, a2
0068b8: 2643         movea.l    d3, a3
0068ba: 4a80         tst.l      d0
0068bc: 6a1a         bpl.b      $68d8
0068be: 2002         move.l     d2, d0
0068c0: 2203         move.l     d3, d1
0068c2: 61000d02     bsr.w      $75c6
0068c6: 4a82         tst.l      d2
0068c8: 670e         beq.b      $68d8
0068ca: 7243         moveq      #$43, d1
0068cc: 44fc0003     move.w     #$3, ccr
0068d0: 4cdf0f0c     movem.l    (a7)+, d2-d3/a0-a3
0068d4: 4e76         trapv      
0068d6: 4e75         rts        
0068d8: 2008         move.l     a0, d0
0068da: 2209         move.l     a1, d1
0068dc: 0880001f     bclr.b     #$1f, d0
0068e0: 2404         move.l     d4, d2
0068e2: 2605         move.l     d5, d3
0068e4: 6100008c     bsr.w      $6972
0068e8: 240a         move.l     a2, d2
0068ea: 260b         move.l     a3, d3
0068ec: 0882001f     bclr.b     #$1f, d2
0068f0: 61000834     bsr.w      $7126
0068f4: 2404         move.l     d4, d2
0068f6: 2605         move.l     d5, d3
0068f8: 6100fe60     bsr.w      $675a
0068fc: 240a         move.l     a2, d2
0068fe: 6a0e         bpl.b      $690e
006900: 2400         move.l     d0, d2
006902: 2601         move.l     d1, d3
006904: 4cfa0003fe32 movem.l    $6738(pc), d0-d1
00690a: 610009f0     bsr.w      $72fc
00690e: 2408         move.l     a0, d2
006910: 6a1a         bpl.b      $692c
006912: 48e7c000     movem.l    d0-d1, -(a7)
006916: 200a         move.l     a2, d0
006918: 220b         move.l     a3, d1
00691a: 61000c48     bsr.w      $7564
00691e: 08000000     btst.b     #$0, d0
006922: 4cdf0003     movem.l    (a7)+, d0-d1
006926: 6704         beq.b      $692c
006928: 08c0001f     bset.b     #$1f, d0
00692c: 4cdf0f0c     movem.l    (a7)+, d2-d3/a0-a3
006930: 44fc0000     move.w     #$0, ccr
006934: 4e75         rts        
006936: 4002         negx.b     d2
006938: 6bb1         bmi.b      $68eb
00693a: bbb55515     eor.l      d5, ([a5], d5.w * 4)
00693e: 3ff4         .dc.w      $3ff4
006940: 00000000     ori.b      #$0, d0
006944: 00003fe9     ori.b      #$e9, d0
006948: 9999         sub.l      d4, (a1)+
00694a: 9999         sub.l      d4, (a1)+
00694c: 999a         sub.l      d4, (a2)+
00694e: 3fcc         .dc.w      $3fcc
006950: 8ff7c79a9a2c divs.w     ([, a4.w * 8], $9a2c), d7
006956: 48e73000     movem.l    d2-d3, -(a7)
00695a: 6116         bsr.b      $6972
00695c: 650e         bcs.b      $696c
00695e: 4cfa000cffd4 movem.l    $6934(pc), d2-d3
006964: 61000996     bsr.w      $72fc
006968: 44fc0000     move.w     #$0, ccr
00696c: 4cdf000c     movem.l    (a7)+, d2-d3
006970: 4e75         rts        
006972: 4a80         tst.l      d0
006974: 6f000102     ble.w      $6a78
006978: 48e73ffc     movem.l    d2-d7/a0-a5, -(a7)
00697c: 2840         movea.l    d0, a4
00697e: 2a41         movea.l    d1, a5
006980: 61000e50     bsr.w      $77d2
006984: 48e73000     movem.l    d2-d3, -(a7)
006988: 7800         moveq      #$0, d4
00698a: 2a04         move.l     d4, d5
00698c: 4cfa000cffae movem.l    $693c(pc), d2-d3
006992: 61000b1a     bsr.w      $74ae
006996: 6f26         ble.b      $69be
006998: 2004         move.l     d4, d0
00699a: 2205         move.l     d5, d1
00699c: 4cfa000cffae movem.l    $694c(pc), d2-d3
0069a2: 6100036c     bsr.w      $6d10
0069a6: 2800         move.l     d0, d4
0069a8: 2a01         move.l     d1, d5
0069aa: 200c         move.l     a4, d0
0069ac: 220d         move.l     a5, d1
0069ae: 4cfa000cff94 movem.l    $6944(pc), d2-d3
0069b4: 61000770     bsr.w      $7126
0069b8: 2840         movea.l    d0, a4
0069ba: 2a41         movea.l    d1, a5
0069bc: 60ce         bra.b      $698c
0069be: 4cfa000cff84 movem.l    $6944(pc), d2-d3
0069c4: 61000ae8     bsr.w      $74ae
0069c8: 6c26         bge.b      $69f0
0069ca: 2004         move.l     d4, d0
0069cc: 2205         move.l     d5, d1
0069ce: 4cfa000cff7c movem.l    $694c(pc), d2-d3
0069d4: 61000332     bsr.w      $6d08
0069d8: 2800         move.l     d0, d4
0069da: 2a01         move.l     d1, d5
0069dc: 200c         move.l     a4, d0
0069de: 220d         move.l     a5, d1
0069e0: 4cfa000cff5a movem.l    $693c(pc), d2-d3
0069e6: 6100073e     bsr.w      $7126
0069ea: 2840         movea.l    d0, a4
0069ec: 2a41         movea.l    d1, a5
0069ee: 60ce         bra.b      $69be
0069f0: 6100049a     bsr.w      $6e8c
0069f4: 2840         movea.l    d0, a4
0069f6: 2a41         movea.l    d1, a5
0069f8: 2c00         move.l     d0, d6
0069fa: 2e01         move.l     d1, d7
0069fc: 3f3c0001     move.w     #$1, -(a7)
006a00: 3f3c8000     move.w     #$8000, -(a7)
006a04: 2040         movea.l    d0, a0
006a06: 2241         movea.l    d1, a1
006a08: 526f0002     addq.w     #$1, $2(a7)
006a0c: 200c         move.l     a4, d0
006a0e: 220d         move.l     a5, d1
006a10: 2406         move.l     d6, d2
006a12: 2607         move.l     d7, d3
006a14: 61000710     bsr.w      $7126
006a18: 2c00         move.l     d0, d6
006a1a: 2e01         move.l     d1, d7
006a1c: 302f0002     move.w     $2(a7), d0
006a20: 48c0         ext.l      d0
006a22: 61000ad0     bsr.w      $74f4
006a26: 2400         move.l     d0, d2
006a28: 2601         move.l     d1, d3
006a2a: 2006         move.l     d6, d0
006a2c: 2207         move.l     d7, d1
006a2e: 610008cc     bsr.w      $72fc
006a32: 08570007     bchg.b     #$7, (a7)
006a36: 6708         beq.b      $6a40
006a38: 4a80         tst.l      d0
006a3a: 6704         beq.b      $6a40
006a3c: 0840001f     bchg.b     #$1f, d0
006a40: 2408         move.l     a0, d2
006a42: 2609         move.l     a1, d3
006a44: 610002ca     bsr.w      $6d10
006a48: 2408         move.l     a0, d2
006a4a: 2609         move.l     a1, d3
006a4c: 9681         sub.l      d1, d3
006a4e: 9580         subx.l     d0, d2
006a50: 6404         bcc.b      $6a56
006a52: 4483         neg.l      d3
006a54: 4082         negx.l     d2
006a56: c4af0004     and.l      $4(a7), d2
006a5a: 66a8         bne.b      $6a04
006a5c: c6af0008     and.l      $8(a7), d3
006a60: 66a2         bne.b      $6a04
006a62: 2404         move.l     d4, d2
006a64: 2605         move.l     d5, d3
006a66: 610002a8     bsr.w      $6d10
006a6a: 588f         addq.l     #$4, a7
006a6c: 508f         addq.l     #$8, a7
006a6e: 4cdf3ffc     movem.l    (a7)+, d2-d7/a0-a5
006a72: 44fc0000     move.w     #$0, ccr
006a76: 4e75         rts        
006a78: 7243         moveq      #$43, d1
006a7a: 44fc0003     move.w     #$3, ccr
006a7e: 4e76         trapv      
006a80: 4e75         rts        
006a82: 4a80         tst.l      d0
006a84: 6602         bne.b      $6a88
006a86: 4e75         rts        
006a88: 6e0a         bgt.b      $6a94
006a8a: 7243         moveq      #$43, d1
006a8c: 44fc0003     move.w     #$3, ccr
006a90: 4e76         trapv      
006a92: 4e75         rts        
006a94: 48e73ff0     movem.l    d2-d7/a0-a3, -(a7)
006a98: 2040         movea.l    d0, a0
006a9a: 2241         movea.l    d1, a1
006a9c: 61000d34     bsr.w      $77d2
006aa0: 2802         move.l     d2, d4
006aa2: 2a03         move.l     d3, d5
006aa4: b0bc3ff00000 cmp.l      #$3ff00000, d0
006aaa: 6e06         bgt.b      $6ab2
006aac: 6d14         blt.b      $6ac2
006aae: 4a81         tst.l      d1
006ab0: 675a         beq.b      $6b0c
006ab2: 90bc00100000 sub.l      #$100000, d0
006ab8: 2c3c40000000 move.l     #$40000000, d6
006abe: 7e00         moveq      #$0, d7
006ac0: 6022         bra.b      $6ae4
006ac2: 2c3c3ff00000 move.l     #$3ff00000, d6
006ac8: 7e00         moveq      #$0, d7
006aca: 6018         bra.b      $6ae4
006acc: 2c00         move.l     d0, d6
006ace: 2e01         move.l     d1, d7
006ad0: 2400         move.l     d0, d2
006ad2: 2601         move.l     d1, d3
006ad4: 2008         move.l     a0, d0
006ad6: 2209         move.l     a1, d1
006ad8: 61000822     bsr.w      $72fc
006adc: b5c0         cmpa.l     d0, a2
006ade: 6604         bne.b      $6ae4
006ae0: b7c1         cmpa.l     d1, a3
006ae2: 6728         beq.b      $6b0c
006ae4: 2440         movea.l    d0, a2
006ae6: 2641         movea.l    d1, a3
006ae8: 2406         move.l     d6, d2
006aea: 2607         move.l     d7, d3
006aec: 61000222     bsr.w      $6d10
006af0: 90bc00100000 sub.l      #$100000, d0
006af6: 2400         move.l     d0, d2
006af8: 2601         move.l     d1, d3
006afa: 9687         sub.l      d7, d3
006afc: 9586         subx.l     d6, d2
006afe: 6404         bcc.b      $6b04
006b00: 4483         neg.l      d3
006b02: 4082         negx.l     d2
006b04: c484         and.l      d4, d2
006b06: 66c4         bne.b      $6acc
006b08: c685         and.l      d5, d3
006b0a: 66c0         bne.b      $6acc
006b0c: 44fc0000     move.w     #$0, ccr
006b10: 4cdf0ffc     movem.l    (a7)+, d2-d7/a0-a3
006b14: 4e75         rts        
006b16: 48e73800     movem.l    d2-d4, -(a7)
006b1a: 2401         move.l     d1, d2
006b1c: c142         exg.l      d0, d2
006b1e: 61000186     bsr.w      $6ca6
006b22: c142         exg.l      d0, d2
006b24: 2601         move.l     d1, d3
006b26: 6100017e     bsr.w      $6ca6
006b2a: 7800         moveq      #$0, d4
006b2c: 2f2f000c     move.l     $c(a7), -(a7)
006b30: 4e75         rts        
006b32: 61e2         bsr.b      $6b16
006b34: 610001da     bsr.w      $6d10
006b38: 6048         bra.b      $6b82
006b3a: 61da         bsr.b      $6b16
006b3c: 610004a8     bsr.w      $6fe6
006b40: 6040         bra.b      $6b82
006b42: 61d2         bsr.b      $6b16
006b44: 610001c2     bsr.w      $6d08
006b48: 6038         bra.b      $6b82
006b4a: 61ca         bsr.b      $6b16
006b4c: 6100033e     bsr.w      $6e8c
006b50: 6030         bra.b      $6b82
006b52: 61c2         bsr.b      $6b16
006b54: 610005d0     bsr.w      $7126
006b58: 6028         bra.b      $6b82
006b5a: 61ba         bsr.b      $6b16
006b5c: 6100079e     bsr.w      $72fc
006b60: 6020         bra.b      $6b82
006b62: 48e7c000     movem.l    d0-d1, -(a7)
006b66: 61ae         bsr.b      $6b16
006b68: 61000944     bsr.w      $74ae
006b6c: 4cdf801c     movem.l    (a7)+, d2-d4/a7
006b70: 4cdf0003     movem.l    (a7)+, d0-d1
006b74: 4e75         rts        
006b76: 4a80         tst.l      d0
006b78: 6706         beq.b      $6b80
006b7a: 0840001f     bchg.b     #$1f, d0
006b7e: 4a80         tst.l      d0
006b80: 4e75         rts        
006b82: 6604         bne.b      $6b88
006b84: 08c40002     bset.b     #$2, d4
006b88: 6a04         bpl.b      $6b8e
006b8a: 08c40003     bset.b     #$3, d4
006b8e: 6804         bvc.b      $6b94
006b90: 08c40001     bset.b     #$1, d4
006b94: 6404         bcc.b      $6b9a
006b96: 08c40000     bset.b     #$0, d4
006b9a: 6100012a     bsr.w      $6cc6
006b9e: 6604         bne.b      $6ba4
006ba0: 08c40002     bset.b     #$2, d4
006ba4: 6804         bvc.b      $6baa
006ba6: 08c40001     bset.b     #$1, d4
006baa: 44c4         move.w     d4, ccr
006bac: 4cdf801c     movem.l    (a7)+, d2-d4/a7
006bb0: 4e76         trapv      
006bb2: 4e75         rts        
006bb4: 2f01         move.l     d1, -(a7)
006bb6: 6100093c     bsr.w      $74f4
006bba: 6100010a     bsr.w      $6cc6
006bbe: 221f         move.l     (a7)+, d1
006bc0: 4e75         rts        
006bc2: 2f01         move.l     d1, -(a7)
006bc4: 6100095e     bsr.w      $7524
006bc8: 610000fc     bsr.w      $6cc6
006bcc: 221f         move.l     (a7)+, d1
006bce: 4e75         rts        
006bd0: 48e74000     movem.l    d1, -(a7)
006bd4: 610000d0     bsr.w      $6ca6
006bd8: 61000956     bsr.w      $7530
006bdc: 4cdf0002     movem.l    (a7)+, d1
006be0: 4e75         rts        
006be2: 48e74000     movem.l    d1, -(a7)
006be6: 610000be     bsr.w      $6ca6
006bea: 61000978     bsr.w      $7564
006bee: 4cdf0002     movem.l    (a7)+, d1
006bf2: 4e75         rts        
006bf4: 48e73000     movem.l    d2-d3, -(a7)
006bf8: 610000ac     bsr.w      $6ca6
006bfc: 610009c8     bsr.w      $75c6
006c00: 610000c4     bsr.w      $6cc6
006c04: c142         exg.l      d0, d2
006c06: 2203         move.l     d3, d1
006c08: 610000bc     bsr.w      $6cc6
006c0c: 2200         move.l     d0, d1
006c0e: 2002         move.l     d2, d0
006c10: 4cdf000c     movem.l    (a7)+, d2-d3
006c14: 4e75         rts        
006c16: 48e74000     movem.l    d1, -(a7)
006c1a: 6100008a     bsr.w      $6ca6
006c1e: 610a         bsr.b      $6c2a
006c20: 610000a4     bsr.w      $6cc6
006c24: 4cdf0002     movem.l    (a7)+, d1
006c28: 4e75         rts        
006c2a: 48e73f00     movem.l    d2-d7, -(a7)
006c2e: 7800         moveq      #$0, d4
006c30: 61000b08     bsr.w      $773a
006c34: 0c47ffff     cmpi.w     #$ffff, d7
006c38: 6e1c         bgt.b      $6c56
006c3a: 6d12         blt.b      $6c4e
006c3c: 203c3ff00000 move.l     #$3ff00000, d0
006c42: 7200         moveq      #$0, d1
006c44: 4a84         tst.l      d4
006c46: 6a58         bpl.b      $6ca0
006c48: 08c0001f     bset.b     #$1f, d0
006c4c: 6052         bra.b      $6ca0
006c4e: 7000         moveq      #$0, d0
006c50: 7200         moveq      #$0, d1
006c52: 3e00         move.w     d0, d7
006c54: 604a         bra.b      $6ca0
006c56: 7c34         moveq      #$34, d6
006c58: 9c47         sub.w      d7, d6
006c5a: 6f28         ble.b      $6c84
006c5c: 7600         moveq      #$0, d3
006c5e: 600c         bra.b      $6c6c
006c60: 6404         bcc.b      $6c66
006c62: 863c0001     or.b       #$1, d3
006c66: 5247         addq.w     #$1, d7
006c68: e288         lsr.l      #$1, d0
006c6a: e291         roxr.l     #$1, d1
006c6c: 51cefff2     dbra       d6, $6c60
006c70: 6412         bcc.b      $6c84
006c72: 5281         addq.l     #$1, d1
006c74: 6404         bcc.b      $6c7a
006c76: 5280         addq.l     #$1, d0
006c78: 600a         bra.b      $6c84
006c7a: 08030000     btst.b     #$0, d3
006c7e: 6604         bne.b      $6c84
006c80: 020100fe     andi.b     #$fe, d1
006c84: 4a80         tst.l      d0
006c86: 6604         bne.b      $6c8c
006c88: 4a81         tst.l      d1
006c8a: 6714         beq.b      $6ca0
006c8c: b0bc00100000 cmp.l      #$100000, d0
006c92: 6408         bcc.b      $6c9c
006c94: e389         lsl.l      #$1, d1
006c96: e390         roxl.l     #$1, d0
006c98: 5347         subq.w     #$1, d7
006c9a: 60e8         bra.b      $6c84
006c9c: 61000aec     bsr.w      $778a
006ca0: 4cdf00fc     movem.l    (a7)+, d2-d7
006ca4: 4e75         rts        
006ca6: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
006caa: 7800         moveq      #$0, d4
006cac: 61000a70     bsr.w      $771e
006cb0: 7200         moveq      #$0, d1
006cb2: 7402         moveq      #$2, d2
006cb4: e288         lsr.l      #$1, d0
006cb6: e291         roxr.l     #$1, d1
006cb8: 51cafffa     dbra       d2, $6cb4
006cbc: 61000acc     bsr.w      $778a
006cc0: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
006cc4: 4e75         rts        
006cc6: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
006cca: 7a00         moveq      #$0, d5
006ccc: 7800         moveq      #$0, d4
006cce: 61000a6a     bsr.w      $773a
006cd2: 7402         moveq      #$2, d2
006cd4: e389         lsl.l      #$1, d1
006cd6: e390         roxl.l     #$1, d0
006cd8: 51cafffa     dbra       d2, $6cd4
006cdc: 4a81         tst.l      d1
006cde: 6a1a         bpl.b      $6cfa
006ce0: 5280         addq.l     #$1, d0
006ce2: 0c8180000000 cmpi.l     #$80000000, d1
006ce8: 6604         bne.b      $6cee
006cea: 020000fe     andi.b     #$fe, d0
006cee: 0c8001000000 cmpi.l     #$1000000, d0
006cf4: 6504         bcs.b      $6cfa
006cf6: e288         lsr.l      #$1, d0
006cf8: 5247         addq.w     #$1, d7
006cfa: 61000a74     bsr.w      $7770
006cfe: 44c5         move.w     d5, ccr
006d00: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
006d04: 4e76         trapv      
006d06: 4e75         rts        
006d08: 4a82         tst.l      d2
006d0a: 6704         beq.b      $6d10
006d0c: 0842001f     bchg.b     #$1f, d2
006d10: 4a82         tst.l      d2
006d12: 6604         bne.b      $6d18
006d14: 4a80         tst.l      d0
006d16: 4e75         rts        
006d18: 4a80         tst.l      d0
006d1a: 6608         bne.b      $6d24
006d1c: 2002         move.l     d2, d0
006d1e: 2203         move.l     d3, d1
006d20: 4a80         tst.l      d0
006d22: 4e75         rts        
006d24: 48e70f00     movem.l    d4-d7, -(a7)
006d28: 7a00         moveq      #$0, d5
006d2a: 2e00         move.l     d0, d7
006d2c: 2c02         move.l     d2, d6
006d2e: 4247         clr.w      d7
006d30: 4847         swap       d7
006d32: 4246         clr.w      d6
006d34: 4846         swap       d6
006d36: 2a3c000fffff move.l     #$fffff, d5
006d3c: c085         and.l      d5, d0
006d3e: c485         and.l      d5, d2
006d40: 7a14         moveq      #$14, d5
006d42: 0bc0         bset.b     d5, d0
006d44: 0bc2         bset.b     d5, d2
006d46: 7a0f         moveq      #$f, d5
006d48: 0b87         bclr.b     d5, d7
006d4a: 6704         beq.b      $6d50
006d4c: 4481         neg.l      d1
006d4e: 4080         negx.l     d0
006d50: 0b86         bclr.b     d5, d6
006d52: 6704         beq.b      $6d58
006d54: 4483         neg.l      d3
006d56: 4082         negx.l     d2
006d58: e84e         lsr.w      #$4, d6
006d5a: e84f         lsr.w      #$4, d7
006d5c: 044603ff     subi.w     #$3ff, d6
006d60: 044703ff     subi.w     #$3ff, d7
006d64: 7a00         moveq      #$0, d5
006d66: 3807         move.w     d7, d4
006d68: 9846         sub.w      d6, d4
006d6a: 6770         beq.b      $6ddc
006d6c: 6a08         bpl.b      $6d76
006d6e: 4444         neg.w      d4
006d70: c142         exg.l      d0, d2
006d72: c343         exg.l      d1, d3
006d74: cf46         exg.l      d7, d6
006d76: 7c00         moveq      #$0, d6
006d78: 0c440036     cmpi.w     #$36, d4
006d7c: 6314         bls.b      $6d92
006d7e: 2800         move.l     d0, d4
006d80: 028480000000 andi.l     #$80000000, d4
006d86: 6a06         bpl.b      $6d8e
006d88: 4486         neg.l      d6
006d8a: 4081         negx.l     d1
006d8c: 4080         negx.l     d0
006d8e: 60000080     bra.w      $6e10
006d92: 0c440020     cmpi.w     #$20, d4
006d96: 650e         bcs.b      $6da6
006d98: 04440020     subi.w     #$20, d4
006d9c: 2c03         move.l     d3, d6
006d9e: 2602         move.l     d2, d3
006da0: 5bc2         smi.b      d2
006da2: 4882         ext.w      d2
006da4: 48c2         ext.l      d2
006da6: 0c440010     cmpi.w     #$10, d4
006daa: 6510         bcs.b      $6dbc
006dac: 04440010     subi.w     #$10, d4
006db0: 3c03         move.w     d3, d6
006db2: 3602         move.w     d2, d3
006db4: 4846         swap       d6
006db6: 4843         swap       d3
006db8: 4842         swap       d2
006dba: 48c2         ext.l      d2
006dbc: 0c440008     cmpi.w     #$8, d4
006dc0: 6514         bcs.b      $6dd6
006dc2: 5144         subq.w     #$8, d4
006dc4: 1c03         move.b     d3, d6
006dc6: 1602         move.b     d2, d3
006dc8: e082         asr.l      #$8, d2
006dca: e09b         ror.l      #$8, d3
006dcc: e09e         ror.l      #$8, d6
006dce: 6006         bra.b      $6dd6
006dd0: e282         asr.l      #$1, d2
006dd2: e293         roxr.l     #$1, d3
006dd4: e296         roxr.l     #$1, d6
006dd6: 51ccfff8     dbra       d4, $6dd0
006dda: 6002         bra.b      $6dde
006ddc: 7c00         moveq      #$0, d6
006dde: 7800         moveq      #$0, d4
006de0: d283         add.l      d3, d1
006de2: d182         addx.l     d2, d0
006de4: 6a0c         bpl.b      $6df2
006de6: 283c80000000 move.l     #$80000000, d4
006dec: 4486         neg.l      d6
006dee: 4081         negx.l     d1
006df0: 4080         negx.l     d0
006df2: 2406         move.l     d6, d2
006df4: 4a80         tst.l      d0
006df6: 6616         bne.b      $6e0e
006df8: 2001         move.l     d1, d0
006dfa: 660a         bne.b      $6e06
006dfc: 2006         move.l     d6, d0
006dfe: 6714         beq.b      $6e14
006e00: 04470040     subi.w     #$40, d7
006e04: 6006         bra.b      $6e0c
006e06: 04470020     subi.w     #$20, d7
006e0a: 2202         move.l     d2, d1
006e0c: 7400         moveq      #$0, d2
006e0e: 611c         bsr.b      $6e2c
006e10: 61000978     bsr.w      $778a
006e14: 4a80         tst.l      d0
006e16: 6604         bne.b      $6e1c
006e18: 08c50002     bset.b     #$2, d5
006e1c: 6a04         bpl.b      $6e22
006e1e: 08c50003     bset.b     #$3, d5
006e22: 44c5         move.w     d5, ccr
006e24: 4cdf00f0     movem.l    (a7)+, d4-d7
006e28: 4e76         trapv      
006e2a: 4e75         rts        
006e2c: 4a80         tst.l      d0
006e2e: 660c         bne.b      $6e3c
006e30: 4a81         tst.l      d1
006e32: 6608         bne.b      $6e3c
006e34: 4a82         tst.l      d2
006e36: 6604         bne.b      $6e3c
006e38: 7e00         moveq      #$0, d7
006e3a: 4e75         rts        
006e3c: 0c8000200000 cmpi.l     #$200000, d0
006e42: 650a         bcs.b      $6e4e
006e44: e288         lsr.l      #$1, d0
006e46: e291         roxr.l     #$1, d1
006e48: e292         roxr.l     #$1, d2
006e4a: 5247         addq.w     #$1, d7
006e4c: 60de         bra.b      $6e2c
006e4e: b0bc00100000 cmp.l      #$100000, d0
006e54: 640a         bcc.b      $6e60
006e56: e38a         lsl.l      #$1, d2
006e58: e391         roxl.l     #$1, d1
006e5a: e390         roxl.l     #$1, d0
006e5c: 5347         subq.w     #$1, d7
006e5e: 60ee         bra.b      $6e4e
006e60: 4a82         tst.l      d2
006e62: 6a22         bpl.b      $6e86
006e64: 5281         addq.l     #$1, d1
006e66: 6412         bcc.b      $6e7a
006e68: 5280         addq.l     #$1, d0
006e6a: 0c8000200000 cmpi.l     #$200000, d0
006e70: 6514         bcs.b      $6e86
006e72: e288         lsr.l      #$1, d0
006e74: e291         roxr.l     #$1, d1
006e76: 5247         addq.w     #$1, d7
006e78: 600c         bra.b      $6e86
006e7a: 0c8280000000 cmpi.l     #$80000000, d2
006e80: 6604         bne.b      $6e86
006e82: 020100fe     andi.b     #$fe, d1
006e86: 023c         .dc.w      $023c
006e88: fffb         dc.w       $fffb
006e8a: 4e75         rts        
006e8c: 48e73c00     movem.l    d2-d5, -(a7)
006e90: 7400         moveq      #$0, d2
006e92: 4a80         tst.l      d0
006e94: 6b00015c     bmi.w      $6ff2
006e98: 2600         move.l     d0, d3
006e9a: 0883001f     bclr.b     #$1f, d3
006e9e: 4243         clr.w      d3
006ea0: 4843         swap       d3
006ea2: 67000274     beq.w      $7118
006ea6: 2800         move.l     d0, d4
006ea8: 6a04         bpl.b      $6eae
006eaa: 08c3001f     bset.b     #$1f, d3
006eae: 0280000fffff andi.l     #$fffff, d0
006eb4: 08c00014     bset.b     #$14, d0
006eb8: e84b         lsr.w      #$4, d3
006eba: 044303ff     subi.w     #$3ff, d3
006ebe: 620000cc     bhi.w      $6f8c
006ec2: 6764         beq.b      $6f28
006ec4: 0843001f     bchg.b     #$1f, d3
006ec8: 4443         neg.w      d3
006eca: 0c430036     cmpi.w     #$36, d3
006ece: 64000248     bcc.w      $7118
006ed2: 0c430014     cmpi.w     #$14, d3
006ed6: 621e         bhi.b      $6ef6
006ed8: 7400         moveq      #$0, d2
006eda: 5343         subq.w     #$1, d3
006edc: e288         lsr.l      #$1, d0
006ede: e291         roxr.l     #$1, d1
006ee0: e292         roxr.l     #$1, d2
006ee2: 51cbfff8     dbra       d3, $6edc
006ee6: 363c0000     move.w     #$0, d3
006eea: 4481         neg.l      d1
006eec: 4080         negx.l     d0
006eee: d0bc00100000 add.l      #$100000, d0
006ef4: 6032         bra.b      $6f28
006ef6: 2401         move.l     d1, d2
006ef8: 2200         move.l     d0, d1
006efa: 7020         moveq      #$20, d0
006efc: 9043         sub.w      d3, d0
006efe: 6412         bcc.b      $6f12
006f00: 4440         neg.w      d0
006f02: 5340         subq.w     #$1, d0
006f04: e289         lsr.l      #$1, d1
006f06: e292         roxr.l     #$1, d2
006f08: 51c8fffa     dbra       d0, $6f04
006f0c: 6008         bra.b      $6f16
006f0e: e38a         lsl.l      #$1, d2
006f10: e391         roxl.l     #$1, d1
006f12: 51c8fffa     dbra       d0, $6f0e
006f16: 7000         moveq      #$0, d0
006f18: 4482         neg.l      d2
006f1a: 4081         negx.l     d1
006f1c: 4080         negx.l     d0
006f1e: d0bc00100000 add.l      #$100000, d0
006f24: 363c0000     move.w     #$0, d3
006f28: 08800014     bclr.b     #$14, d0
006f2c: 4a80         tst.l      d0
006f2e: 660a         bne.b      $6f3a
006f30: 4a81         tst.l      d1
006f32: 6606         bne.b      $6f3a
006f34: 4cdf003c     movem.l    (a7)+, d2-d5
006f38: 4e75         rts        
006f3a: e38a         lsl.l      #$1, d2
006f3c: e391         roxl.l     #$1, d1
006f3e: e390         roxl.l     #$1, d0
006f40: 5343         subq.w     #$1, d3
006f42: 08000014     btst.b     #$14, d0
006f46: 67f2         beq.b      $6f3a
006f48: 4a82         tst.l      d2
006f4a: 6a22         bpl.b      $6f6e
006f4c: 5281         addq.l     #$1, d1
006f4e: 6412         bcc.b      $6f62
006f50: 5280         addq.l     #$1, d0
006f52: 0c8000200000 cmpi.l     #$200000, d0
006f58: 6514         bcs.b      $6f6e
006f5a: e288         lsr.l      #$1, d0
006f5c: e291         roxr.l     #$1, d1
006f5e: 5243         addq.w     #$1, d3
006f60: 600c         bra.b      $6f6e
006f62: 0c8280000000 cmpi.l     #$80000000, d2
006f68: 6604         bne.b      $6f6e
006f6a: 020100fe     andi.b     #$fe, d1
006f6e: 08800014     bclr.b     #$14, d0
006f72: d67c03ff     add.w      #$3ff, d3
006f76: e94b         lsl.w      #$4, d3
006f78: 4843         swap       d3
006f7a: 4a43         tst.w      d3
006f7c: 6a04         bpl.b      $6f82
006f7e: 08c3001f     bset.b     #$1f, d3
006f82: 4243         clr.w      d3
006f84: 8083         or.l       d3, d0
006f86: 4cdf003c     movem.l    (a7)+, d2-d5
006f8a: 4e75         rts        
006f8c: 0c430036     cmpi.w     #$36, d3
006f90: 6400017e     bcc.w      $7110
006f94: 7a00         moveq      #$0, d5
006f96: 967c0014     sub.w      #$14, d3
006f9a: 6212         bhi.b      $6fae
006f9c: 4443         neg.w      d3
006f9e: 07c5         bset.b     d3, d5
006fa0: 4443         neg.w      d3
006fa2: 9085         sub.l      d5, d0
006fa4: 6614         bne.b      $6fba
006fa6: 7200         moveq      #$0, d1
006fa8: 4cdf003c     movem.l    (a7)+, d2-d5
006fac: 4e75         rts        
006fae: 7420         moveq      #$20, d2
006fb0: 9483         sub.l      d3, d2
006fb2: 05c5         bset.b     d2, d5
006fb4: 7400         moveq      #$0, d2
006fb6: 9285         sub.l      d5, d1
006fb8: 9182         subx.l     d2, d0
006fba: 08000014     btst.b     #$14, d0
006fbe: 6606         bne.b      $6fc6
006fc0: e389         lsl.l      #$1, d1
006fc2: e390         roxl.l     #$1, d0
006fc4: 5343         subq.w     #$1, d3
006fc6: d67c0413     add.w      #$413, d3
006fca: 0280000fffff andi.l     #$fffff, d0
006fd0: e94b         lsl.w      #$4, d3
006fd2: 4a83         tst.l      d3
006fd4: 6a04         bpl.b      $6fda
006fd6: 08c3000f     bset.b     #$f, d3
006fda: 4843         swap       d3
006fdc: 4243         clr.w      d3
006fde: 8083         or.l       d3, d0
006fe0: 4cdf003c     movem.l    (a7)+, d2-d5
006fe4: 4e75         rts        
006fe6: 48e73c00     movem.l    d2-d5, -(a7)
006fea: 7400         moveq      #$0, d2
006fec: 4a80         tst.l      d0
006fee: 6b00fea8     bmi.w      $6e98
006ff2: 2600         move.l     d0, d3
006ff4: 0883001f     bclr.b     #$1f, d3
006ff8: 4243         clr.w      d3
006ffa: 4843         swap       d3
006ffc: 67000104     beq.w      $7102
007000: 2800         move.l     d0, d4
007002: 4a80         tst.l      d0
007004: 6a04         bpl.b      $700a
007006: 08c3001f     bset.b     #$1f, d3
00700a: 0280000fffff andi.l     #$fffff, d0
007010: 08c00014     bset.b     #$14, d0
007014: e84b         lsr.w      #$4, d3
007016: 044303ff     subi.w     #$3ff, d3
00701a: 6472         bcc.b      $708e
00701c: 4443         neg.w      d3
00701e: 0c430036     cmpi.w     #$36, d3
007022: 640000d8     bcc.w      $70fc
007026: 0c430014     cmpi.w     #$14, d3
00702a: 6428         bcc.b      $7054
00702c: e6b8         ror.l      d3, d0
00702e: e6b9         ror.l      d3, d1
007030: 7400         moveq      #$0, d2
007032: 7a00         moveq      #$0, d5
007034: 967c0020     sub.w      #$20, d3
007038: 4443         neg.w      d3
00703a: 07c5         bset.b     d3, d5
00703c: 5385         subq.l     #$1, d5
00703e: 2805         move.l     d5, d4
007040: 4685         not.l      d5
007042: ca81         and.l      d1, d5
007044: 2405         move.l     d5, d2
007046: c284         and.l      d4, d1
007048: 2a04         move.l     d4, d5
00704a: 4684         not.l      d4
00704c: c880         and.l      d0, d4
00704e: c085         and.l      d5, d0
007050: 8284         or.l       d4, d1
007052: 6024         bra.b      $7078
007054: 2401         move.l     d1, d2
007056: 2200         move.l     d0, d1
007058: 7000         moveq      #$0, d0
00705a: 04430014     subi.w     #$14, d3
00705e: e6b9         ror.l      d3, d1
007060: e6aa         lsr.l      d3, d2
007062: 7800         moveq      #$0, d4
007064: 967c0020     sub.w      #$20, d3
007068: 4443         neg.w      d3
00706a: 07c4         bset.b     d3, d4
00706c: 5384         subq.l     #$1, d4
00706e: 2a04         move.l     d4, d5
007070: 4684         not.l      d4
007072: c881         and.l      d1, d4
007074: c285         and.l      d5, d1
007076: 8484         or.l       d4, d2
007078: 283c3ff00000 move.l     #$3ff00000, d4
00707e: 8084         or.l       d4, d0
007080: 4a83         tst.l      d3
007082: 6a04         bpl.b      $7088
007084: 08c0001f     bset.b     #$1f, d0
007088: 4cdf003c     movem.l    (a7)+, d2-d5
00708c: 4e75         rts        
00708e: 3a03         move.w     d3, d5
007090: 7400         moveq      #$0, d2
007092: 0c430036     cmpi.w     #$36, d3
007096: 6478         bcc.b      $7110
007098: 7800         moveq      #$0, d4
00709a: 04430014     subi.w     #$14, d3
00709e: 624c         bhi.b      $70ec
0070a0: 4443         neg.w      d3
0070a2: 07c4         bset.b     d3, d4
0070a4: d084         add.l      d4, d0
0070a6: 08000015     btst.b     #$15, d0
0070aa: 6722         beq.b      $70ce
0070ac: 5245         addq.w     #$1, d5
0070ae: e288         lsr.l      #$1, d0
0070b0: e291         roxr.l     #$1, d1
0070b2: 641a         bcc.b      $70ce
0070b4: 5281         addq.l     #$1, d1
0070b6: 6412         bcc.b      $70ca
0070b8: 5280         addq.l     #$1, d0
0070ba: 0c8000200000 cmpi.l     #$200000, d0
0070c0: 650c         bcs.b      $70ce
0070c2: e288         lsr.l      #$1, d0
0070c4: e291         roxr.l     #$1, d1
0070c6: 5245         addq.w     #$1, d5
0070c8: 6004         bra.b      $70ce
0070ca: 020100fe     andi.b     #$fe, d1
0070ce: da7c03ff     add.w      #$3ff, d5
0070d2: e94d         lsl.w      #$4, d5
0070d4: 4845         swap       d5
0070d6: 4245         clr.w      d5
0070d8: 4a83         tst.l      d3
0070da: 6a04         bpl.b      $70e0
0070dc: 08c5001f     bset.b     #$1f, d5
0070e0: 08800014     bclr.b     #$14, d0
0070e4: 8085         or.l       d5, d0
0070e6: 4cdf003c     movem.l    (a7)+, d2-d5
0070ea: 4e75         rts        
0070ec: 4443         neg.w      d3
0070ee: 06430020     addi.w     #$20, d3
0070f2: 07c4         bset.b     d3, d4
0070f4: d284         add.l      d4, d1
0070f6: 64ae         bcc.b      $70a6
0070f8: 5280         addq.l     #$1, d0
0070fa: 60aa         bra.b      $70a6
0070fc: 028080000000 andi.l     #$80000000, d0
007102: 7200         moveq      #$0, d1
007104: 00803ff00000 ori.l      #$3ff00000, d0
00710a: 4cdf003c     movem.l    (a7)+, d2-d5
00710e: 4e75         rts        
007110: 2004         move.l     d4, d0
007112: 4cdf003c     movem.l    (a7)+, d2-d5
007116: 4e75         rts        
007118: 7200         moveq      #$0, d1
00711a: 203cbff00000 move.l     #$bff00000, d0
007120: 4cdf003c     movem.l    (a7)+, d2-d5
007124: 4e75         rts        
007126: 48e73f00     movem.l    d2-d7, -(a7)
00712a: 2800         move.l     d0, d4
00712c: b584         eor.l      d2, d4
00712e: 2e00         move.l     d0, d7
007130: 2c02         move.l     d2, d6
007132: 4247         clr.w      d7
007134: 4847         swap       d7
007136: 670001be     beq.w      $72f6
00713a: 4246         clr.w      d6
00713c: 4846         swap       d6
00713e: 670001b6     beq.w      $72f6
007142: 4a84         tst.l      d4
007144: 6a04         bpl.b      $714a
007146: 08c7001f     bset.b     #$1f, d7
00714a: 2a3c000fffff move.l     #$fffff, d5
007150: c085         and.l      d5, d0
007152: c485         and.l      d5, d2
007154: 7a14         moveq      #$14, d5
007156: 0bc0         bset.b     d5, d0
007158: 0bc2         bset.b     d5, d2
00715a: cc7c7ff0     and.w      #$7ff0, d6
00715e: ce7c7ff0     and.w      #$7ff0, d7
007162: 9c7c3ff0     sub.w      #$3ff0, d6
007166: de46         add.w      d6, d7
007168: 6900013a     bvs.w      $72a4
00716c: 6f000188     ble.w      $72f6
007170: 0c8000100000 cmpi.l     #$100000, d0
007176: 660c         bne.b      $7184
007178: 4a81         tst.l      d1
00717a: 6608         bne.b      $7184
00717c: 2002         move.l     d2, d0
00717e: 2203         move.l     d3, d1
007180: 60000146     bra.w      $72c8
007184: 0c8200100000 cmpi.l     #$100000, d2
00718a: 6604         bne.b      $7190
00718c: 4a83         tst.l      d3
00718e: 67f0         beq.b      $7180
007190: 2f07         move.l     d7, -(a7)
007192: 7a00         moveq      #$0, d5
007194: 7e00         moveq      #$0, d7
007196: 3c01         move.w     d1, d6
007198: ccc3         mulu.w     d3, d6
00719a: 3c05         move.w     d5, d6
00719c: 4846         swap       d6
00719e: 4843         swap       d3
0071a0: 3801         move.w     d1, d4
0071a2: c8c3         mulu.w     d3, d4
0071a4: dc84         add.l      d4, d6
0071a6: db47         addx.w     d7, d5
0071a8: 4841         swap       d1
0071aa: 4843         swap       d3
0071ac: 3801         move.w     d1, d4
0071ae: c8c3         mulu.w     d3, d4
0071b0: dc84         add.l      d4, d6
0071b2: db47         addx.w     d7, d5
0071b4: 3f06         move.w     d6, -(a7)
0071b6: 3c05         move.w     d5, d6
0071b8: 4846         swap       d6
0071ba: 7a00         moveq      #$0, d5
0071bc: 3800         move.w     d0, d4
0071be: c8c3         mulu.w     d3, d4
0071c0: dc84         add.l      d4, d6
0071c2: db47         addx.w     d7, d5
0071c4: 4843         swap       d3
0071c6: 3801         move.w     d1, d4
0071c8: c8c3         mulu.w     d3, d4
0071ca: dc84         add.l      d4, d6
0071cc: db47         addx.w     d7, d5
0071ce: 4841         swap       d1
0071d0: 3801         move.w     d1, d4
0071d2: c8c2         mulu.w     d2, d4
0071d4: dc84         add.l      d4, d6
0071d6: db47         addx.w     d7, d5
0071d8: 3f06         move.w     d6, -(a7)
0071da: 3c05         move.w     d5, d6
0071dc: 4846         swap       d6
0071de: 7a00         moveq      #$0, d5
0071e0: 4842         swap       d2
0071e2: 3801         move.w     d1, d4
0071e4: c8c2         mulu.w     d2, d4
0071e6: dc84         add.l      d4, d6
0071e8: db47         addx.w     d7, d5
0071ea: 4841         swap       d1
0071ec: 4842         swap       d2
0071ee: 3801         move.w     d1, d4
0071f0: c8c2         mulu.w     d2, d4
0071f2: dc84         add.l      d4, d6
0071f4: db47         addx.w     d7, d5
0071f6: 3800         move.w     d0, d4
0071f8: c8c3         mulu.w     d3, d4
0071fa: dc84         add.l      d4, d6
0071fc: db47         addx.w     d7, d5
0071fe: 4840         swap       d0
007200: 4843         swap       d3
007202: 3800         move.w     d0, d4
007204: c8c3         mulu.w     d3, d4
007206: dc84         add.l      d4, d6
007208: db47         addx.w     d7, d5
00720a: 3f06         move.w     d6, -(a7)
00720c: 3c05         move.w     d5, d6
00720e: 4846         swap       d6
007210: 7a00         moveq      #$0, d5
007212: 4843         swap       d3
007214: 3800         move.w     d0, d4
007216: c8c3         mulu.w     d3, d4
007218: dc84         add.l      d4, d6
00721a: db47         addx.w     d7, d5
00721c: 4840         swap       d0
00721e: 3800         move.w     d0, d4
007220: c8c2         mulu.w     d2, d4
007222: dc84         add.l      d4, d6
007224: db47         addx.w     d7, d5
007226: 4842         swap       d2
007228: 3801         move.w     d1, d4
00722a: c8c2         mulu.w     d2, d4
00722c: dc84         add.l      d4, d6
00722e: db47         addx.w     d7, d5
007230: 3f06         move.w     d6, -(a7)
007232: 3c05         move.w     d5, d6
007234: 4846         swap       d6
007236: 7a00         moveq      #$0, d5
007238: 3800         move.w     d0, d4
00723a: c8c2         mulu.w     d2, d4
00723c: dc84         add.l      d4, d6
00723e: 4840         swap       d0
007240: 4842         swap       d2
007242: 3800         move.w     d0, d4
007244: c8c2         mulu.w     d2, d4
007246: dc84         add.l      d4, d6
007248: 4842         swap       d2
00724a: c0c2         mulu.w     d2, d0
00724c: 4840         swap       d0
00724e: d086         add.l      d6, d0
007250: 4cdf0086     movem.l    (a7)+, d1-d2/d7
007254: 7604         moveq      #$4, d3
007256: 283cf0000000 move.l     #$f0000000, d4
00725c: 08000019     btst.b     #$19, d0
007260: 670e         beq.b      $7270
007262: de7c0010     add.w      #$10, d7
007266: 6b3c         bmi.b      $72a4
007268: 7605         moveq      #$5, d3
00726a: 283cf8000000 move.l     #$f8000000, d4
007270: e6b8         ror.l      d3, d0
007272: e6b9         ror.l      d3, d1
007274: e6aa         lsr.l      d3, d2
007276: 2a04         move.l     d4, d5
007278: ca81         and.l      d1, d5
00727a: 8485         or.l       d5, d2
00727c: 2a04         move.l     d4, d5
00727e: 4685         not.l      d5
007280: c285         and.l      d5, d1
007282: c880         and.l      d0, d4
007284: 8284         or.l       d4, d1
007286: c085         and.l      d5, d0
007288: 4a82         tst.l      d2
00728a: 6a3c         bpl.b      $72c8
00728c: 5281         addq.l     #$1, d1
00728e: 642c         bcc.b      $72bc
007290: 5280         addq.l     #$1, d0
007292: 0c8000200000 cmpi.l     #$200000, d0
007298: 652e         bcs.b      $72c8
00729a: e288         lsr.l      #$1, d0
00729c: e291         roxr.l     #$1, d1
00729e: de7c0010     add.w      #$10, d7
0072a2: 6a24         bpl.b      $72c8
0072a4: 7a02         moveq      #$2, d5
0072a6: 203c7ff00000 move.l     #$7ff00000, d0
0072ac: 7200         moveq      #$0, d1
0072ae: 4a87         tst.l      d7
0072b0: 6a3a         bpl.b      $72ec
0072b2: 08c50001     bset.b     #$1, d5
0072b6: 08c0001f     bset.b     #$1f, d0
0072ba: 6030         bra.b      $72ec
0072bc: 0c8280000000 cmpi.l     #$80000000, d2
0072c2: 6604         bne.b      $72c8
0072c4: 020100fe     andi.b     #$fe, d1
0072c8: 0280000fffff andi.l     #$fffff, d0
0072ce: 4847         swap       d7
0072d0: 4a47         tst.w      d7
0072d2: 6a04         bpl.b      $72d8
0072d4: 08c0001f     bset.b     #$1f, d0
0072d8: 4247         clr.w      d7
0072da: 8087         or.l       d7, d0
0072dc: 7a00         moveq      #$0, d5
0072de: 4a80         tst.l      d0
0072e0: 6604         bne.b      $72e6
0072e2: 08c50002     bset.b     #$2, d5
0072e6: 6a04         bpl.b      $72ec
0072e8: 08c50003     bset.b     #$3, d5
0072ec: 44c5         move.w     d5, ccr
0072ee: 4cdf00fc     movem.l    (a7)+, d2-d7
0072f2: 4e76         trapv      
0072f4: 4e75         rts        
0072f6: 7000         moveq      #$0, d0
0072f8: 2200         move.l     d0, d1
0072fa: 60e0         bra.b      $72dc
0072fc: 48e73f00     movem.l    d2-d7, -(a7)
007300: 2800         move.l     d0, d4
007302: b584         eor.l      d2, d4
007304: 2e00         move.l     d0, d7
007306: 2c02         move.l     d2, d6
007308: 4246         clr.w      d6
00730a: 4846         swap       d6
00730c: 6616         bne.b      $7324
00730e: 203c7ff00000 move.l     #$7ff00000, d0
007314: 7a03         moveq      #$3, d5
007316: 4a84         tst.l      d4
007318: 6a00017c     bpl.w      $7496
00731c: 08c0001f     bset.b     #$1f, d0
007320: 60000174     bra.w      $7496
007324: 4247         clr.w      d7
007326: 4847         swap       d7
007328: 67000166     beq.w      $7490
00732c: 4a84         tst.l      d4
00732e: 6a04         bpl.b      $7334
007330: 08c7001f     bset.b     #$1f, d7
007334: 3a3c7ff0     move.w     #$7ff0, d5
007338: cc45         and.w      d5, d6
00733a: ce45         and.w      d5, d7
00733c: 9e46         sub.w      d6, d7
00733e: de7c3ff0     add.w      #$3ff0, d7
007342: 69ca         bvs.b      $730e
007344: 6f00014a     ble.w      $7490
007348: 2f07         move.l     d7, -(a7)
00734a: 08820014     bclr.b     #$14, d2
00734e: 7a0b         moveq      #$b, d5
007350: ebaa         lsl.l      d5, d2
007352: 6606         bne.b      $735a
007354: 4a83         tst.l      d3
007356: 670000fa     beq.w      $7452
00735a: ebbb         rol.l      d5, d3
00735c: eba8         lsl.l      d5, d0
00735e: ebb9         rol.l      d5, d1
007360: 2a3c000007ff move.l     #$7ff, d5
007366: 2801         move.l     d1, d4
007368: c885         and.l      d5, d4
00736a: b981         eor.l      d4, d1
00736c: 8084         or.l       d4, d0
00736e: 2803         move.l     d3, d4
007370: c885         and.l      d5, d4
007372: b983         eor.l      d4, d3
007374: 8484         or.l       d4, d2
007376: 7a1f         moveq      #$1f, d5
007378: 0bc0         bset.b     d5, d0
00737a: 0bc2         bset.b     d5, d2
00737c: 7c00         moveq      #$0, d6
00737e: 7e00         moveq      #$0, d7
007380: 2f08         move.l     a0, -(a7)
007382: 2043         movea.l    d3, a0
007384: 783f         moveq      #$3f, d4
007386: 4a04         tst.b      d4
007388: 6f0000cc     ble.w      $7456
00738c: 761f         moveq      #$1f, d3
00738e: 9288         sub.l      a0, d1
007390: 9182         subx.l     d2, d0
007392: 6a7a         bpl.b      $740e
007394: 4481         neg.l      d1
007396: 4080         negx.l     d0
007398: 4a80         tst.l      d0
00739a: 6628         bne.b      $73c4
00739c: 983c0020     sub.b      #$20, d4
0073a0: 640c         bcc.b      $73ae
0073a2: d83c0020     add.b      #$20, d4
0073a6: 09c7         bset.b     d4, d7
0073a8: 5387         subq.l     #$1, d7
0073aa: 600000aa     bra.w      $7456
0073ae: 09c6         bset.b     d4, d6
0073b0: 5386         subq.l     #$1, d6
0073b2: 2001         move.l     d1, d0
0073b4: 6002         bra.b      $73b8
0073b6: e388         lsl.l      #$1, d0
0073b8: 5bcbfffc     dbmi       d3, $73b6
0073bc: 7200         moveq      #$0, d1
0073be: 0403001f     subi.b     #$1f, d3
0073c2: 6016         bra.b      $73da
0073c4: e389         lsl.l      #$1, d1
0073c6: e390         roxl.l     #$1, d0
0073c8: 5bcbfffa     dbmi       d3, $73c4
0073cc: 7a00         moveq      #$0, d5
0073ce: 04030020     subi.b     #$20, d3
0073d2: 0c040020     cmpi.b     #$20, d4
0073d6: 640e         bcc.b      $73e6
0073d8: 09c7         bset.b     d4, d7
0073da: d803         add.b      d3, d4
0073dc: 6fca         ble.b      $73a8
0073de: 7a00         moveq      #$0, d5
0073e0: 09c5         bset.b     d4, d5
0073e2: da85         add.l      d5, d5
0073e4: 6014         bra.b      $73fa
0073e6: 09c6         bset.b     d4, d6
0073e8: d803         add.b      d3, d4
0073ea: 09c5         bset.b     d4, d5
0073ec: da85         add.l      d5, d5
0073ee: 0c040020     cmpi.b     #$20, d4
0073f2: 6504         bcs.b      $73f8
0073f4: 9c85         sub.l      d5, d6
0073f6: 6004         bra.b      $73fc
0073f8: 5386         subq.l     #$1, d6
0073fa: 9e85         sub.l      d5, d7
0073fc: 4a04         tst.b      d4
0073fe: 6f56         ble.b      $7456
007400: 761f         moveq      #$1f, d3
007402: 9288         sub.l      a0, d1
007404: 9182         subx.l     d2, d0
007406: 4a80         tst.l      d0
007408: 6a8e         bpl.b      $7398
00740a: 4481         neg.l      d1
00740c: 4080         negx.l     d0
00740e: 4a80         tst.l      d0
007410: 6622         bne.b      $7434
007412: 04040020     subi.b     #$20, d4
007416: 6408         bcc.b      $7420
007418: d83c0020     add.b      #$20, d4
00741c: 09c7         bset.b     d4, d7
00741e: 6036         bra.b      $7456
007420: 09c6         bset.b     d4, d6
007422: 2001         move.l     d1, d0
007424: 6002         bra.b      $7428
007426: e388         lsl.l      #$1, d0
007428: 5bcbfffc     dbmi       d3, $7426
00742c: 7200         moveq      #$0, d1
00742e: 0403001f     subi.b     #$1f, d3
007432: 6018         bra.b      $744c
007434: e389         lsl.l      #$1, d1
007436: e390         roxl.l     #$1, d0
007438: 5bcbfffa     dbmi       d3, $7434
00743c: 04030020     subi.b     #$20, d3
007440: 0c040020     cmpi.b     #$20, d4
007444: 6404         bcc.b      $744a
007446: 09c7         bset.b     d4, d7
007448: 6002         bra.b      $744c
00744a: 09c6         bset.b     d4, d6
00744c: d803         add.b      d3, d4
00744e: 6000ff36     bra.w      $7386
007452: 7e00         moveq      #$0, d7
007454: 6018         bra.b      $746e
007456: 2006         move.l     d6, d0
007458: 2207         move.l     d7, d1
00745a: 7e00         moveq      #$0, d7
00745c: 7400         moveq      #$0, d2
00745e: 610001de     bsr.w      $763e
007462: 08800014     bclr.b     #$14, d0
007466: 9e7c000b     sub.w      #$b, d7
00746a: e94f         lsl.w      #$4, d7
00746c: 205f         movea.l    (a7)+, a0
00746e: 281f         move.l     (a7)+, d4
007470: d847         add.w      d7, d4
007472: 0c447ff0     cmpi.w     #$7ff0, d4
007476: 6c00fe96     bge.w      $730e
00747a: 4844         swap       d4
00747c: 4a44         tst.w      d4
00747e: 6a06         bpl.b      $7486
007480: 08c4001f     bset.b     #$1f, d4
007484: 4244         clr.w      d4
007486: c0bc000fffff and.l      #$fffff, d0
00748c: 8084         or.l       d4, d0
00748e: 6004         bra.b      $7494
007490: 7000         moveq      #$0, d0
007492: 7200         moveq      #$0, d1
007494: 7a00         moveq      #$0, d5
007496: 4a80         tst.l      d0
007498: 6604         bne.b      $749e
00749a: 08c50002     bset.b     #$2, d5
00749e: 6a04         bpl.b      $74a4
0074a0: 08c50003     bset.b     #$3, d5
0074a4: 44c5         move.w     d5, ccr
0074a6: 4cdf00fc     movem.l    (a7)+, d2-d7
0074aa: 4e76         trapv      
0074ac: 4e75         rts        
0074ae: 4a82         tst.l      d2
0074b0: 6b14         bmi.b      $74c6
0074b2: 4a80         tst.l      d0
0074b4: 6a02         bpl.b      $74b8
0074b6: 6024         bra.b      $74dc
0074b8: b082         cmp.l      d2, d0
0074ba: 661e         bne.b      $74da
0074bc: b283         cmp.l      d3, d1
0074be: 661a         bne.b      $74da
0074c0: 44fc0004     move.w     #$4, ccr
0074c4: 4e75         rts        
0074c6: 4a80         tst.l      d0
0074c8: 6b02         bmi.b      $74cc
0074ca: 6016         bra.b      $74e2
0074cc: b480         cmp.l      d0, d2
0074ce: 660a         bne.b      $74da
0074d0: b681         cmp.l      d1, d3
0074d2: 6606         bne.b      $74da
0074d4: 44fc0004     move.w     #$4, ccr
0074d8: 4e75         rts        
0074da: 6206         bhi.b      $74e2
0074dc: 44fc0008     move.w     #$8, ccr
0074e0: 4e75         rts        
0074e2: 44fc0000     move.w     #$0, ccr
0074e6: 4e75         rts        
0074e8: 4a80         tst.l      d0
0074ea: 6704         beq.b      $74f0
0074ec: 0840001f     bchg.b     #$1f, d0
0074f0: 4a80         tst.l      d0
0074f2: 4e75         rts        
0074f4: 48e70d00     movem.l    d4-d5/d7, -(a7)
0074f8: 7800         moveq      #$0, d4
0074fa: 2200         move.l     d0, d1
0074fc: 6720         beq.b      $751e
0074fe: 6a06         bpl.b      $7506
007500: 08c4001f     bset.b     #$1f, d4
007504: 4481         neg.l      d1
007506: 7000         moveq      #$0, d0
007508: 7e34         moveq      #$34, d7
00750a: 6006         bra.b      $7512
00750c: e389         lsl.l      #$1, d1
00750e: e390         roxl.l     #$1, d0
007510: 5347         subq.w     #$1, d7
007512: 0c8000100000 cmpi.l     #$100000, d0
007518: 65f2         bcs.b      $750c
00751a: 6100026e     bsr.w      $778a
00751e: 4cdf00b0     movem.l    (a7)+, d4-d5/d7
007522: 4e75         rts        
007524: 48e70d00     movem.l    d4-d5/d7, -(a7)
007528: 7800         moveq      #$0, d4
00752a: 2200         move.l     d0, d1
00752c: 67f0         beq.b      $751e
00752e: 60d6         bra.b      $7506
007530: 2f04         move.l     d4, -(a7)
007532: 2800         move.l     d0, d4
007534: 612e         bsr.b      $7564
007536: 6806         bvc.b      $753e
007538: 183c0002     move.b     #$2, d4
00753c: 6004         bra.b      $7542
00753e: 183c0000     move.b     #$0, d4
007542: 4a80         tst.l      d0
007544: 6714         beq.b      $755a
007546: 6a04         bpl.b      $754c
007548: 0844001f     bchg.b     #$1f, d4
00754c: 0804001f     btst.b     #$1f, d4
007550: 6708         beq.b      $755a
007552: 0840001f     bchg.b     #$1f, d0
007556: 00040002     ori.b      #$2, d4
00755a: 44c4         move.w     d4, ccr
00755c: 4cdf0010     movem.l    (a7)+, d4
007560: 4e76         trapv      
007562: 4e75         rts        
007564: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
007568: 7a00         moveq      #$0, d5
00756a: 7800         moveq      #$0, d4
00756c: 610001cc     bsr.w      $773a
007570: 674a         beq.b      $75bc
007572: 0c8700000400 cmpi.l     #$400, d7
007578: 6612         bne.b      $758c
00757a: 203c7fffffff move.l     #$7fffffff, d0
007580: 4a84         tst.l      d4
007582: 6702         beq.b      $7586
007584: 4680         not.l      d0
007586: 003c0002     ori.b      #$2, ccr
00758a: 6032         bra.b      $75be
00758c: 7434         moveq      #$34, d2
00758e: 9447         sub.w      d7, d2
007590: 6722         beq.b      $75b4
007592: 6b0e         bmi.b      $75a2
007594: e280         asr.l      #$1, d0
007596: e291         roxr.l     #$1, d1
007598: 5342         subq.w     #$1, d2
00759a: 66f8         bne.b      $7594
00759c: 4a80         tst.l      d0
00759e: 6714         beq.b      $75b4
0075a0: 600e         bra.b      $75b0
0075a2: 0c42ffe0     cmpi.w     #$ffe0, d2
0075a6: 6f08         ble.b      $75b0
0075a8: e381         asl.l      #$1, d1
0075aa: e390         roxl.l     #$1, d0
0075ac: 5242         addq.w     #$1, d2
0075ae: 66f8         bne.b      $75a8
0075b0: 00040002     ori.b      #$2, d4
0075b4: 2001         move.l     d1, d0
0075b6: 4a84         tst.l      d4
0075b8: 6702         beq.b      $75bc
0075ba: 4480         neg.l      d0
0075bc: 44c4         move.w     d4, ccr
0075be: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
0075c2: 4e76         trapv      
0075c4: 4e75         rts        
0075c6: 48e70fc0     movem.l    d4-d7/a0-a1, -(a7)
0075ca: 7800         moveq      #$0, d4
0075cc: 6100016c     bsr.w      $773a
0075d0: 4a47         tst.w      d7
0075d2: 6a0e         bpl.b      $75e2
0075d4: 610001b4     bsr.w      $778a
0075d8: 2400         move.l     d0, d2
0075da: 2601         move.l     d1, d3
0075dc: 7000         moveq      #$0, d0
0075de: 7200         moveq      #$0, d1
0075e0: 6056         bra.b      $7638
0075e2: 2040         movea.l    d0, a0
0075e4: 2241         movea.l    d1, a1
0075e6: 7c34         moveq      #$34, d6
0075e8: 9c47         sub.w      d7, d6
0075ea: 6e06         bgt.b      $75f2
0075ec: 7400         moveq      #$0, d2
0075ee: 2602         move.l     d2, d3
0075f0: 6042         bra.b      $7634
0075f2: 243cffffffff move.l     #$ffffffff, d2
0075f8: 0c460020     cmpi.w     #$20, d6
0075fc: 6f14         ble.b      $7612
0075fe: 04460020     subi.w     #$20, d6
007602: edaa         lsl.l      d6, d2
007604: c082         and.l      d2, d0
007606: 7200         moveq      #$0, d1
007608: c188         exg.l      d0, a0
00760a: c389         exg.l      d1, a1
00760c: 4682         not.l      d2
00760e: c082         and.l      d2, d0
007610: 600e         bra.b      $7620
007612: edaa         lsl.l      d6, d2
007614: c282         and.l      d2, d1
007616: c188         exg.l      d0, a0
007618: c389         exg.l      d1, a1
00761a: 7000         moveq      #$0, d0
00761c: 4682         not.l      d2
00761e: c282         and.l      d2, d1
007620: 2f07         move.l     d7, -(a7)
007622: 7400         moveq      #$0, d2
007624: 6118         bsr.b      $763e
007626: 61000162     bsr.w      $778a
00762a: 2400         move.l     d0, d2
00762c: 2601         move.l     d1, d3
00762e: 2008         move.l     a0, d0
007630: 2209         move.l     a1, d1
007632: 2e1f         move.l     (a7)+, d7
007634: 61000154     bsr.w      $778a
007638: 4cdf03f0     movem.l    (a7)+, d4-d7/a0-a1
00763c: 4e75         rts        
00763e: 48e71c00     movem.l    d3-d5, -(a7)
007642: 7800         moveq      #$0, d4
007644: 2600         move.l     d0, d3
007646: 6704         beq.b      $764c
007648: 7820         moveq      #$20, d4
00764a: 6006         bra.b      $7652
00764c: 2601         move.l     d1, d3
00764e: 670000b4     beq.w      $7704
007652: 4843         swap       d3
007654: 4a43         tst.w      d3
007656: 6706         beq.b      $765e
007658: d83c0010     add.b      #$10, d4
00765c: 6002         bra.b      $7660
00765e: 4843         swap       d3
007660: 0c430100     cmpi.w     #$100, d3
007664: 6504         bcs.b      $766a
007666: 7a0f         moveq      #$f, d5
007668: 6002         bra.b      $766c
00766a: 7a07         moveq      #$7, d5
00766c: 0b03         btst.l     d5, d3
00766e: 56cdfffc     dbne       d5, $766c
007672: d805         add.b      d5, d4
007674: de44         add.w      d4, d7
007676: 9e7c0034     sub.w      #$34, d7
00767a: 983c0020     sub.b      #$20, d4
00767e: 6408         bcc.b      $7688
007680: d83c0020     add.b      #$20, d4
007684: c142         exg.l      d0, d2
007686: c141         exg.l      d0, d1
007688: 0980         bclr.b     d4, d0
00768a: 983c0014     sub.b      #$14, d4
00768e: 6220         bhi.b      $76b0
007690: 4404         neg.b      d4
007692: e9a8         lsl.l      d4, d0
007694: e9b9         rol.l      d4, d1
007696: e9ba         rol.l      d4, d2
007698: 7a00         moveq      #$0, d5
00769a: 09c5         bset.b     d4, d5
00769c: 5385         subq.l     #$1, d5
00769e: 2805         move.l     d5, d4
0076a0: ca81         and.l      d1, d5
0076a2: 8085         or.l       d5, d0
0076a4: 2a04         move.l     d4, d5
0076a6: 4685         not.l      d5
0076a8: c285         and.l      d5, d1
0076aa: c882         and.l      d2, d4
0076ac: 8284         or.l       d4, d1
0076ae: 6022         bra.b      $76d2
0076b0: e8b9         ror.l      d4, d1
0076b2: e8b8         ror.l      d4, d0
0076b4: 983c0020     sub.b      #$20, d4
0076b8: 4404         neg.b      d4
0076ba: 7a00         moveq      #$0, d5
0076bc: 09c5         bset.b     d4, d5
0076be: 5385         subq.l     #$1, d5
0076c0: 4685         not.l      d5
0076c2: 2805         move.l     d5, d4
0076c4: 4684         not.l      d4
0076c6: ca80         and.l      d0, d5
0076c8: c084         and.l      d4, d0
0076ca: 2401         move.l     d1, d2
0076cc: c284         and.l      d4, d1
0076ce: b382         eor.l      d1, d2
0076d0: 8285         or.l       d5, d1
0076d2: 08c00014     bset.b     #$14, d0
0076d6: 4a82         tst.l      d2
0076d8: 6a22         bpl.b      $76fc
0076da: 5281         addq.l     #$1, d1
0076dc: 6412         bcc.b      $76f0
0076de: 5280         addq.l     #$1, d0
0076e0: 0c8000200000 cmpi.l     #$200000, d0
0076e6: 6514         bcs.b      $76fc
0076e8: e288         lsr.l      #$1, d0
0076ea: e291         roxr.l     #$1, d1
0076ec: 5247         addq.w     #$1, d7
0076ee: 600c         bra.b      $76fc
0076f0: 0c8280000000 cmpi.l     #$80000000, d2
0076f6: 6604         bne.b      $76fc
0076f8: 020100fe     andi.b     #$fe, d1
0076fc: 7a01         moveq      #$1, d5
0076fe: 4cdf0038     movem.l    (a7)+, d3-d5
007702: 4e75         rts        
007704: 4a82         tst.l      d2
007706: 670e         beq.b      $7716
007708: c142         exg.l      d0, d2
00770a: 2600         move.l     d0, d3
00770c: 9e7c0040     sub.w      #$40, d7
007710: 7820         moveq      #$20, d4
007712: 6000ff3e     bra.w      $7652
007716: 7e00         moveq      #$0, d7
007718: 4cdf0038     movem.l    (a7)+, d3-d5
00771c: 4e75         rts        
00771e: 2e00         move.l     d0, d7
007720: e38f         lsl.l      #$1, d7
007722: 6740         beq.b      $7764
007724: 4847         swap       d7
007726: e04f         lsr.w      #$8, d7
007728: 0447007f     subi.w     #$7f, d7
00772c: 48c7         ext.l      d7
00772e: 0280807fffff andi.l     #$807fffff, d0
007734: 08c00017     bset.b     #$17, d0
007738: 601a         bra.b      $7754
00773a: 2e00         move.l     d0, d7
00773c: e38f         lsl.l      #$1, d7
00773e: 6724         beq.b      $7764
007740: 4847         swap       d7
007742: ea4f         lsr.w      #$5, d7
007744: 044703ff     subi.w     #$3ff, d7
007748: 48c7         ext.l      d7
00774a: 0280800fffff andi.l     #$800fffff, d0
007750: 08c00014     bset.b     #$14, d0
007754: 0880001f     bclr.b     #$1f, d0
007758: 6710         beq.b      $776a
00775a: 0844001f     bchg.b     #$1f, d4
00775e: 44fc0008     move.w     #$8, ccr
007762: 4e75         rts        
007764: 44fc0004     move.w     #$4, ccr
007768: 4e75         rts        
00776a: 44fc0000     move.w     #$0, ccr
00776e: 4e75         rts        
007770: 48e73000     movem.l    d2-d3, -(a7)
007774: 08800017     bclr.b     #$17, d0
007778: 6752         beq.b      $77cc
00777a: 0647007f     addi.w     #$7f, d7
00777e: 243c7f8000ff move.l     #$7f8000ff, d2
007784: 163c0007     move.b     #$7, d3
007788: 6018         bra.b      $77a2
00778a: 48e73000     movem.l    d2-d3, -(a7)
00778e: 08800014     bclr.b     #$14, d0
007792: 6738         beq.b      $77cc
007794: 064703ff     addi.w     #$3ff, d7
007798: 243c7ff007ff move.l     #$7ff007ff, d2
00779e: 163c0004     move.b     #$4, d3
0077a2: 4a47         tst.w      d7
0077a4: 6e08         bgt.b      $77ae
0077a6: 7000         moveq      #$0, d0
0077a8: 00050004     ori.b      #$4, d5
0077ac: 600c         bra.b      $77ba
0077ae: be42         cmp.w      d2, d7
0077b0: 6510         bcs.b      $77c2
0077b2: 2002         move.l     d2, d0
0077b4: 02400000     andi.w     #$0, d0
0077b8: 8084         or.l       d4, d0
0077ba: 7200         moveq      #$0, d1
0077bc: 00050002     ori.b      #$2, d5
0077c0: 600a         bra.b      $77cc
0077c2: e76f         lsl.w      d3, d7
0077c4: 4847         swap       d7
0077c6: 4247         clr.w      d7
0077c8: 8087         or.l       d7, d0
0077ca: 8084         or.l       d4, d0
0077cc: 4cdf000c     movem.l    (a7)+, d2-d3
0077d0: 4e75         rts        
0077d2: 0882001f     bclr.b     #$1f, d2
0077d6: 4842         swap       d2
0077d8: e84a         lsr.w      #$4, d2
0077da: 947c0400     sub.w      #$400, d2
0077de: 4442         neg.w      d2
0077e0: b47c0004     cmp.w      #$4, d2
0077e4: 6204         bhi.b      $77ea
0077e6: 7404         moveq      #$4, d2
0077e8: 6008         bra.b      $77f2
0077ea: b47c0032     cmp.w      #$32, d2
0077ee: 6302         bls.b      $77f2
0077f0: 7432         moveq      #$32, d2
0077f2: 76ff         moveq      #$ff, d3
0077f4: b47c0014     cmp.w      #$14, d2
0077f8: 6210         bhi.b      $780a
0077fa: 947c0014     sub.w      #$14, d2
0077fe: 6704         beq.b      $7804
007800: 4442         neg.w      d2
007802: e5ab         lsl.l      d2, d3
007804: 2403         move.l     d3, d2
007806: 7600         moveq      #$0, d3
007808: 600a         bra.b      $7814
00780a: 947c0034     sub.w      #$34, d2
00780e: 4442         neg.w      d2
007810: e5ab         lsl.l      d2, d3
007812: 74ff         moveq      #$ff, d2
007814: 4e75         rts        
