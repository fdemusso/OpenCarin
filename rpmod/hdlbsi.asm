000050: 2d468010     move.l     d6, -$7ff0(a6)
000054: 2d468014     move.l     d6, -$7fec(a6)
000058: 3d438018     move.w     d3, -$7fe8(a6)
00005c: 082b00050014 btst.b     #$5, $14(a3)
000062: 670e         beq.b      $72
000064: 2d4c801a     move.l     a4, -$7fe6(a6)
000068: 6608         bne.b      $72
00006a: 2d7900000000801a move.l     $0.l, -$7fe6(a6)
000072: 4a85         tst.l      d5
000074: 671e         beq.b      $94
000076: 08050000     btst.b     #$0, d5
00007a: 6614         bne.b      $90
00007c: 41f55800     lea.l      (a5, d5.l), a0
000080: 4a68fffe     tst.w      -$2(a0)
000084: 660a         bne.b      $90
000086: 5988         subq.l     #$4, a0
000088: 49e8fffc     lea.l      -$4(a0), a4
00008c: 7001         moveq      #$1, d0
00008e: 6026         bra.b      $b6
000090: 423558ff     clr.b      -$1(a5, d5.l)
000094: 204d         movea.l    a5, a0
000096: d7eb000c     adda.l     $c(a3), a3
00009a: 42a7         clr.l      -(a7)
00009c: 2f0b         move.l     a3, -(a7)
00009e: 7401         moveq      #$1, d2
0000a0: 203c00008e6a move.l     #$8e6a, d0
0000a6: 4ebb0800     jsr        $a8(pc,d0.l)
0000aa: 6076         bra.b      $122
0000ac: 43e80004     lea.l      $4(a0), a1
0000b0: 2d4995b8     move.l     a1, -$6a48(a6)
0000b4: 7400         moveq      #$0, d2
0000b6: 2260         movea.l    -(a0), a1
0000b8: 2e09         move.l     a1, d7
0000ba: 670c         beq.b      $c8
0000bc: d3cd         adda.l     a5, a1
0000be: 4229ffff     clr.b      -$1(a1)
0000c2: 2089         move.l     a1, (a0)
0000c4: 5282         addq.l     #$1, d2
0000c6: 60ee         bra.b      $b6
0000c8: 5380         subq.l     #$1, d0
0000ca: 67e0         beq.b      $ac
0000cc: 4a82         tst.l      d2
0000ce: 6610         bne.b      $e0
0000d0: 4a68fffe     tst.w      -$2(a0)
0000d4: 670a         beq.b      $e0
0000d6: 4228ffff     clr.b      -$1(a0)
0000da: 2448         movea.l    a0, a2
0000dc: 5888         addq.l     #$4, a0
0000de: 6006         bra.b      $e6
0000e0: 208d         move.l     a5, (a0)
0000e2: 2448         movea.l    a0, a2
0000e4: 5282         addq.l     #$1, d2
0000e6: 5282         addq.l     #$1, d2
0000e8: 4a94         tst.l      (a4)
0000ea: 6718         beq.b      $104
0000ec: 2854         movea.l    (a4), a4
0000ee: 4a1c         tst.b      (a4)+
0000f0: 66fc         bne.b      $ee
0000f2: b5cc         cmpa.l     a4, a2
0000f4: 631e         bls.b      $114
0000f6: 0c1c00fc     cmpi.b     #$fc, (a4)+
0000fa: 6618         bne.b      $114
0000fc: 528c         addq.l     #$1, a4
0000fe: 2654         movea.l    (a4), a3
000100: d7cd         adda.l     a5, a3
000102: 6014         bra.b      $118
000104: 0c2d00fc0002 cmpi.b     #$fc, $2(a5)
00010a: 6608         bne.b      $114
00010c: 266d0004     movea.l    $4(a5), a3
000110: d7cd         adda.l     a5, a3
000112: 6004         bra.b      $118
000114: d7eb000c     adda.l     $c(a3), a3
000118: 210b         move.l     a3, -(a0)
00011a: 2f08         move.l     a0, -(a7)
00011c: 4228ffff     clr.b      -$1(a0)
000120: 2f02         move.l     d2, -(a7)
000122: 207c000087c2 movea.l    #$87c2, a0
000128: 4ebb8800     jsr        $12a(pc,a0.l)
00012c: 6500011c     bcs.w      $24a
000130: 6120         bsr.b      $152
000132: 4cdf0003     movem.l    (a7)+, d0-d1
000136: 9bcd         suba.l     a5, a5
000138: 2f2e95b8     move.l     -$6a48(a6), -(a7)
00013c: 207c0000033e movea.l    #$33e, a0
000142: 4ebb8800     jsr        $144(pc,a0.l)
000146: 7000         moveq      #$0, d0
000148: 207c0000948c movea.l    #$948c, a0
00014e: 4ebb8800     jsr        $150(pc,a0.l)
000152: 207cffff9b0c movea.l    #$ffff9b0c, a0
000158: d1ce         adda.l     a6, a0
00015a: 2d488004     move.l     a0, -$7ffc(a6)
00015e: 2d4f8000     move.l     a7, -$8000(a6)
000162: 2d4f8008     move.l     a7, -$7ff8(a6)
000166: 203cffffff04 move.l     #$ffffff04, d0
00016c: d08f         add.l      a7, d0
00016e: b0ae8008     cmp.l      -$7ff8(a6), d0
000172: 6502         bcs.b      $176
000174: 4e75         rts        
000176: b0ae8004     cmp.l      -$7ffc(a6), d0
00017a: 6506         bcs.b      $182
00017c: 2d408008     move.l     d0, -$7ff8(a6)
000180: 4e75         rts        
000182: 41fa0070     lea.l      $1f4(pc), a0
000186: 6110         bsr.b      $198
000188: 2f3c00000101 move.l     #$101, -(a7)
00018e: 207c0000945c movea.l    #$945c, a0
000194: 4ebb8800     jsr        $196(pc,a0.l)
000198: 3f01         move.w     d1, -(a7)
00019a: 7264         moveq      #$64, d1
00019c: 7002         moveq      #$2, d0
00019e: 4e40         trap       #$0
0001a0: 008c         .dc.w      $008c
0001a2: 321f         move.w     (a7)+, d1
0001a4: 4e75         rts        
0001a6: 202e8000     move.l     -$8000(a6), d0
0001aa: 90ae8008     sub.l      -$7ff8(a6), d0
0001ae: 4e75         rts        
0001b0: 202e8008     move.l     -$7ff8(a6), d0
0001b4: 90ae8004     sub.l      -$7ffc(a6), d0
0001b8: 4e75         rts        
0001ba: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
0001be: 302f001e     move.w     $1e(a7), d0
0001c2: 04400080     subi.w     #$80, d0
0001c6: e440         asr.w      #$2, d0
0001c8: 0c40000f     cmpi.w     #$f, d0
0001cc: 660c         bne.b      $1da
0001ce: 41fa006b     lea.l      $23b(pc), a0
0001d2: 7200         moveq      #$0, d1
0001d4: 4e40         trap       #$0
0001d6: 0021640c     ori.b      #$c, -(a1)
0001da: 227c0000941a movea.l    #$941a, a1
0001e0: 4ebb9800     jsr        $1e2(pc,a1.l)
0001e4: 6564         bcs.b      $24a
0001e6: 4cdf0f03     movem.l    (a7)+, d0-d1/a0-a3
0001ea: 508f         addq.l     #$8, a7
0001ec: 5997         subq.l     #$4, (a7)
0001ee: 4e75         rts        
0001f0: 4afb         .dc.w      $4afb
0001f2: 00502a2a     ori.w      #$2a2a, (a0)
0001f6: 2a2a2053     move.l     $2053(a2), d5
0001fa: 7461         moveq      #$61, d2
0001fc: 636b         bls.b      $269
0001fe: 204f         movea.l    a7, a0
000200: 7665         moveq      #$65, d3
000202: 7266         moveq      #$66, d1
000204: 6c6f         bge.b      $275
000206: 7720         .dc.w      $7720
000208: 2a2a2a2a     move.l     $2a2a(a2), d5
00020c: 0d00         btst.l     d6, d0
00020e: 2a2a2a2a     move.l     $2a2a(a2), d5
000212: 2043         movea.l    d3, a0
000214: 616e         bsr.b      $284
000216: 277420696e73 move.l     $69(a4, d2.w), $6e73(a3)
00021c: 7461         moveq      #$61, d2
00021e: 6c6c         bge.b      $28c
000220: 20747261     movea.l    $61(a4, d7.w), a0
000224: 7020         moveq      #$20, d0
000226: 6861         bvc.b      $289
000228: 6e64         bgt.b      $28e
00022a: 6c65         bge.b      $291
00022c: 7220         moveq      #$20, d1
00022e: 2a2a2a2a     move.l     $2a2a(a2), d5
000232: 0d00         btst.l     d6, d0
000234: 202a2a2a     move.l     $2a2a(a2), d0
000238: 2a20         move.l     -(a0), d5
00023a: 006d61746800 ori.w      #$6174, $6800(a5)
000240: 00000000     ori.b      #$0, d0
000244: 223c00000040 move.l     #$40, d1
00024a: 2f08         move.l     a0, -(a7)
00024c: 41faffc0     lea.l      $20e(pc), a0
000250: 6100ff46     bsr.w      $198
000254: 227cffff9230 movea.l    #$ffff9230, a1
00025a: d3ce         adda.l     a6, a1
00025c: 41faffd6     lea.l      $234(pc), a0
000260: 6128         bsr.b      $28a
000262: 205f         movea.l    (a7)+, a0
000264: 5389         subq.l     #$1, a1
000266: 6122         bsr.b      $28a
000268: 41faffca     lea.l      $234(pc), a0
00026c: 5389         subq.l     #$1, a1
00026e: 611a         bsr.b      $28a
000270: 137c000dffff move.b     #$d, -$1(a1)
000276: 207cffff9230 movea.l    #$ffff9230, a0
00027c: d1ce         adda.l     a6, a0
00027e: 6100ff18     bsr.w      $198
000282: 4e40         trap       #$0
000284: 00064e40     ori.b      #$40, d6
000288: 000612d8     ori.b      #$d8, d6
00028c: 66fc         bne.b      $28a
00028e: 4e75         rts        
000290: 4e550000     link.w     a5, #$0
000294: 48e78000     movem.l    d0, -(a7)
000298: 4e5d         unlk       a5
00029a: 4e75         rts        
00029c: 4e550000     link.w     a5, #$0
0002a0: 48e78080     movem.l    d0/a0, -(a7)
0002a4: 202e95bc     move.l     -$6a44(a6), d0
0002a8: 52ae95bc     addq.l     #$1, -$6a44(a6)
0002ac: 41ee801e     lea.l      -$7fe2(a6), a0
0002b0: 31af00020a00 move.w     $2(a7), (a0, d0.l * 2)
0002b6: 7064         moveq      #$64, d0
0002b8: b0ae95bc     cmp.l      -$6a44(a6), d0
0002bc: 6e04         bgt.b      $2c2
0002be: 42ae95bc     clr.l      -$6a44(a6)
0002c2: 202e95bc     move.l     -$6a44(a6), d0
0002c6: b0ae95c0     cmp.l      -$6a40(a6), d0
0002ca: 4ced0100fffc movem.l    -$4(a5), a0
0002d0: 4e5d         unlk       a5
0002d2: 4e75         rts        
0002d4: 4e550000     link.w     a5, #$0
0002d8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0002dc: 598f         subq.l     #$4, a7
0002de: 70ff         moveq      #$ff, d0
0002e0: 2e80         move.l     d0, (a7)
0002e2: 4eae9aac     jsr        -$6554(a6)
0002e6: 202e95bc     move.l     -$6a44(a6), d0
0002ea: b0ae95c0     cmp.l      -$6a40(a6), d0
0002ee: 6720         beq.b      $310
0002f0: 202e95c0     move.l     -$6a40(a6), d0
0002f4: 52ae95c0     addq.l     #$1, -$6a40(a6)
0002f8: 41ee801e     lea.l      -$7fe2(a6), a0
0002fc: 7200         moveq      #$0, d1
0002fe: 32300a00     move.w     (a0, d0.l * 2), d1
000302: 2e81         move.l     d1, (a7)
000304: 7064         moveq      #$64, d0
000306: b0ae95c0     cmp.l      -$6a40(a6), d0
00030a: 6e04         bgt.b      $310
00030c: 42ae95c0     clr.l      -$6a40(a6)
000310: 4eae9a9a     jsr        -$6566(a6)
000314: 2017         move.l     (a7), d0
000316: 588f         addq.l     #$4, a7
000318: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00031e: 4e5d         unlk       a5
000320: 4e75         rts        
000322: 4e550000     link.w     a5, #$0
000326: 48e78000     movem.l    d0, -(a7)
00032a: 4eae9aac     jsr        -$6554(a6)
00032e: 202e95bc     move.l     -$6a44(a6), d0
000332: b0ae95c0     cmp.l      -$6a40(a6), d0
000336: 6608         bne.b      $340
000338: 7000         moveq      #$0, d0
00033a: 4eae9ab2     jsr        -$654e(a6)
00033e: 60ea         bra.b      $32a
000340: 4eae9a9a     jsr        -$6566(a6)
000344: 4e5d         unlk       a5
000346: 4e75         rts        
000348: 4e550000     link.w     a5, #$0
00034c: 48e788a0     movem.l    d0/d4/a0/a2, -(a7)
000350: 558f         subq.l     #$2, a7
000352: 422f0001     clr.b      $1(a7)
000356: 7800         moveq      #$0, d4
000358: 45ee95c4     lea.l      -$6a3c(a6), a2
00035c: 6022         bra.b      $380
00035e: 202f0002     move.l     $2(a7), d0
000362: b092         cmp.l      (a2), d0
000364: 6614         bne.b      $37a
000366: 1f7c00010001 move.b     #$1, $1(a7)
00036c: 4aaa0004     tst.l      $4(a2)
000370: 670c         beq.b      $37e
000372: 206a0004     movea.l    $4(a2), a0
000376: 4e90         jsr        (a0)
000378: 6004         bra.b      $37e
00037a: 182f0001     move.b     $1(a7), d4
00037e: 508a         addq.l     #$8, a2
000380: 4a92         tst.l      (a2)
000382: 6704         beq.b      $388
000384: 4a04         tst.b      d4
000386: 67d6         beq.b      $35e
000388: 4a2f0001     tst.b      $1(a7)
00038c: 548f         addq.l     #$2, a7
00038e: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
000394: 4e5d         unlk       a5
000396: 4e75         rts        
000398: 4e550000     link.w     a5, #$0
00039c: 48e7c000     movem.l    d0-d1, -(a7)
0003a0: 598f         subq.l     #$4, a7
0003a2: 4297         clr.l      (a7)
0003a4: 610032ae     bsr.w      $3654
0003a8: 72ff         moveq      #$ff, d1
0003aa: b280         cmp.l      d0, d1
0003ac: 6604         bne.b      $3b2
0003ae: 70ff         moveq      #$ff, d0
0003b0: 2e80         move.l     d0, (a7)
0003b2: 61001aa0     bsr.w      $1e54
0003b6: 72ff         moveq      #$ff, d1
0003b8: b280         cmp.l      d0, d1
0003ba: 6604         bne.b      $3c0
0003bc: 70ff         moveq      #$ff, d0
0003be: 2e80         move.l     d0, (a7)
0003c0: 61002300     bsr.w      $26c2
0003c4: 72ff         moveq      #$ff, d1
0003c6: b280         cmp.l      d0, d1
0003c8: 6604         bne.b      $3ce
0003ca: 70ff         moveq      #$ff, d0
0003cc: 2e80         move.l     d0, (a7)
0003ce: 61000e52     bsr.w      $1222
0003d2: 72ff         moveq      #$ff, d1
0003d4: b280         cmp.l      d0, d1
0003d6: 6604         bne.b      $3dc
0003d8: 70ff         moveq      #$ff, d0
0003da: 2e80         move.l     d0, (a7)
0003dc: 6100013a     bsr.w      $518
0003e0: 72ff         moveq      #$ff, d1
0003e2: b280         cmp.l      d0, d1
0003e4: 6604         bne.b      $3ea
0003e6: 70ff         moveq      #$ff, d0
0003e8: 2e80         move.l     d0, (a7)
0003ea: 61006cb4     bsr.w      $70a0
0003ee: 4a00         tst.b      d0
0003f0: 6604         bne.b      $3f6
0003f2: 70ff         moveq      #$ff, d0
0003f4: 2e80         move.l     d0, (a7)
0003f6: 610030f2     bsr.w      $34ea
0003fa: 72ff         moveq      #$ff, d1
0003fc: b280         cmp.l      d0, d1
0003fe: 6604         bne.b      $404
000400: 70ff         moveq      #$ff, d0
000402: 2e80         move.l     d0, (a7)
000404: 6100339c     bsr.w      $37a2
000408: 610020a0     bsr.w      $24aa
00040c: 2017         move.l     (a7), d0
00040e: 588f         addq.l     #$4, a7
000410: 4ced0002fffc movem.l    -$4(a5), d1
000416: 4e5d         unlk       a5
000418: 4e75         rts        
00041a: 4e550000     link.w     a5, #$0
00041e: 48e78000     movem.l    d0, -(a7)
000422: 61001ca8     bsr.w      $20cc
000426: 6100328e     bsr.w      $36b6
00042a: 6100226c     bsr.w      $2698
00042e: 610022ce     bsr.w      $26fe
000432: 6100014a     bsr.w      $57e
000436: 61000168     bsr.w      $5a0
00043a: 61000e62     bsr.w      $129e
00043e: 61000e96     bsr.w      $12d6
000442: 61001a7c     bsr.w      $1ec0
000446: 61001a9a     bsr.w      $1ee2
00044a: 610030da     bsr.w      $3526
00044e: 7000         moveq      #$0, d0
000450: 4eae9aa0     jsr        -$6560(a6)
000454: 4e5d         unlk       a5
000456: 4e75         rts        
000458: 4e550000     link.w     a5, #$0
00045c: 48e78000     movem.l    d0, -(a7)
000460: 082f00070002 btst.b     #$7, $2(a7)
000466: 6710         beq.b      $478
000468: 2017         move.l     (a7), d0
00046a: 61001bcc     bsr.w      $2038
00046e: 4a00         tst.b      d0
000470: 6706         beq.b      $478
000472: 2ebc00002497 move.l     #$2497, (a7)
000478: 2017         move.l     (a7), d0
00047a: 6100fe20     bsr.w      $29c
00047e: 4e5d         unlk       a5
000480: 4e75         rts        
000482: 4e550000     link.w     a5, #$0
000486: 48e7c080     movem.l    d0-d1/a0, -(a7)
00048a: 5d8f         subq.l     #$6, a7
00048c: 1f7c00010005 move.b     #$1, $5(a7)
000492: 70ff         moveq      #$ff, d0
000494: 2e80         move.l     d0, (a7)
000496: 41fb0170ffffffc0 lea.l      $ffffffc0(a16, invalid.w), a0
00049e: 2008         move.l     a0, d0
0004a0: 610076cc     bsr.w      $7b6e
0004a4: 41fb017000007ece lea.l      $7ece(a16, invalid.w), a0
0004ac: 2008         move.l     a0, d0
0004ae: 61007ea8     bsr.w      $8358
0004b2: 4eae9aa6     jsr        -$655a(a6)
0004b6: 610077d4     bsr.w      $7c8c
0004ba: 2e80         move.l     d0, (a7)
0004bc: 6100feda     bsr.w      $398
0004c0: 72ff         moveq      #$ff, d1
0004c2: b280         cmp.l      d0, d1
0004c4: 6612         bne.b      $4d8
0004c6: 223c00002701 move.l     #$2701, d1
0004cc: 2017         move.l     (a7), d0
0004ce: 61006fa6     bsr.w      $7476
0004d2: 422f0005     clr.b      $5(a7)
0004d6: 601a         bra.b      $4f2
0004d8: 223c00002700 move.l     #$2700, d1
0004de: 2017         move.l     (a7), d0
0004e0: 61006f94     bsr.w      $7476
0004e4: 600c         bra.b      $4f2
0004e6: 6100fe3a     bsr.w      $322
0004ea: 6100fde8     bsr.w      $2d4
0004ee: 6100fe58     bsr.w      $348
0004f2: 4a2f0005     tst.b      $5(a7)
0004f6: 66ee         bne.b      $4e6
0004f8: 6100ff20     bsr.w      $41a
0004fc: 5c8f         addq.l     #$6, a7
0004fe: 4ced0100fffc movem.l    -$4(a5), a0
000504: 4e5d         unlk       a5
000506: 4e75         rts        
000508: 4572         .dc.w      $4572
00050a: 726f         moveq      #$6f, d1
00050c: 7220         moveq      #$20, d1
00050e: 7374         .dc.w      $7374
000510: 6172         bsr.b      $584
000512: 7469         moveq      #$69, d2
000514: 6e67         bgt.b      $57d
000516: 2000         move.l     d0, d0
000518: 4e550000     link.w     a5, #$0
00051c: 48e7c000     movem.l    d0-d1, -(a7)
000520: 4eae9aa6     jsr        -$655a(a6)
000524: 61007766     bsr.w      $7c8c
000528: 2d409628     move.l     d0, -$69d8(a6)
00052c: 7002         moveq      #$2, d0
00052e: 61004104     bsr.w      $4634
000532: 2d409620     move.l     d0, -$69e0(a6)
000536: 223c00002441 move.l     #$2441, d1
00053c: 202e9620     move.l     -$69e0(a6), d0
000540: 4eae9abe     jsr        -$6542(a6)
000544: 70ff         moveq      #$ff, d0
000546: b0ae9620     cmp.l      -$69e0(a6), d0
00054a: 6604         bne.b      $550
00054c: 70ff         moveq      #$ff, d0
00054e: 6002         bra.b      $552
000550: 7000         moveq      #$0, d0
000552: 4ced0002fffc movem.l    -$4(a5), d1
000558: 4e5d         unlk       a5
00055a: 4e75         rts        
00055c: 4e550000     link.w     a5, #$0
000560: 48e78000     movem.l    d0, -(a7)
000564: 7003         moveq      #$3, d0
000566: 61004118     bsr.w      $4680
00056a: 2d409624     move.l     d0, -$69dc(a6)
00056e: 4aae9624     tst.l      -$69dc(a6)
000572: 6c04         bge.b      $578
000574: 70ff         moveq      #$ff, d0
000576: 6002         bra.b      $57a
000578: 7000         moveq      #$0, d0
00057a: 4e5d         unlk       a5
00057c: 4e75         rts        
00057e: 4e550000     link.w     a5, #$0
000582: 48e78000     movem.l    d0, -(a7)
000586: 70ff         moveq      #$ff, d0
000588: b0ae9620     cmp.l      -$69e0(a6), d0
00058c: 670e         beq.b      $59c
00058e: 202e9620     move.l     -$69e0(a6), d0
000592: 4eae9ac4     jsr        -$653c(a6)
000596: 70ff         moveq      #$ff, d0
000598: 2d409620     move.l     d0, -$69e0(a6)
00059c: 4e5d         unlk       a5
00059e: 4e75         rts        
0005a0: 4e550000     link.w     a5, #$0
0005a4: 48e78000     movem.l    d0, -(a7)
0005a8: 70ff         moveq      #$ff, d0
0005aa: b0ae9624     cmp.l      -$69dc(a6), d0
0005ae: 670e         beq.b      $5be
0005b0: 202e9624     move.l     -$69dc(a6), d0
0005b4: 6100417e     bsr.w      $4734
0005b8: 70ff         moveq      #$ff, d0
0005ba: 2d409624     move.l     d0, -$69dc(a6)
0005be: 4e5d         unlk       a5
0005c0: 4e75         rts        
0005c2: 4e550000     link.w     a5, #$0
0005c6: 48e78000     movem.l    d0, -(a7)
0005ca: 202e9620     move.l     -$69e0(a6), d0
0005ce: 4eae9ab8     jsr        -$6548(a6)
0005d2: 4a80         tst.l      d0
0005d4: 6f04         ble.b      $5da
0005d6: 7001         moveq      #$1, d0
0005d8: 6002         bra.b      $5dc
0005da: 7000         moveq      #$0, d0
0005dc: 4e5d         unlk       a5
0005de: 4e75         rts        
0005e0: 4e550000     link.w     a5, #$0
0005e4: 48e7c000     movem.l    d0-d1, -(a7)
0005e8: 4878000a     pea.l      $a.w
0005ec: 2f2f0008     move.l     $8(a7), -(a7)
0005f0: 222f0008     move.l     $8(a7), d1
0005f4: 202e9624     move.l     -$69dc(a6), d0
0005f8: 610046e6     bsr.w      $4ce0
0005fc: 508f         addq.l     #$8, a7
0005fe: 72ff         moveq      #$ff, d1
000600: b280         cmp.l      d0, d1
000602: 4e5d         unlk       a5
000604: 4e75         rts        
000606: 4e550000     link.w     a5, #$0
00060a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00060e: 4feffdd8     lea.l      -$228(a7), a7
000612: 206f0228     movea.l    $228(a7), a0
000616: 2e90         move.l     (a0), (a7)
000618: 61001cc0     bsr.w      $22da
00061c: 3f400004     move.w     d0, $4(a7)
000620: 7206         moveq      #$6, d1
000622: 41d7         lea.l      (a7), a0
000624: 2008         move.l     a0, d0
000626: 61b8         bsr.b      $5e0
000628: 7000         moveq      #$0, d0
00062a: 4fef0228     lea.l      $228(a7), a7
00062e: 4ced0100fffc movem.l    -$4(a5), a0
000634: 4e5d         unlk       a5
000636: 4e75         rts        
000638: 4e550000     link.w     a5, #$0
00063c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000640: 4feffdd8     lea.l      -$228(a7), a7
000644: 206f0228     movea.l    $228(a7), a0
000648: 2e90         move.l     (a0), (a7)
00064a: 41ef0004     lea.l      $4(a7), a0
00064e: 2008         move.l     a0, d0
000650: 6100175c     bsr.w      $1dae
000654: 7212         moveq      #$12, d1
000656: 41d7         lea.l      (a7), a0
000658: 2008         move.l     a0, d0
00065a: 6100ff84     bsr.w      $5e0
00065e: 7000         moveq      #$0, d0
000660: 4fef0228     lea.l      $228(a7), a7
000664: 4ced0100fffc movem.l    -$4(a5), a0
00066a: 4e5d         unlk       a5
00066c: 4e75         rts        
00066e: 4e550000     link.w     a5, #$0
000672: 48e7c080     movem.l    d0-d1/a0, -(a7)
000676: 4feffd7c     lea.l      -$284(a7), a7
00067a: 206f0284     movea.l    $284(a7), a0
00067e: 2f500022     move.l     (a0), $22(a7)
000682: 7006         moveq      #$6, d0
000684: 2f40001e     move.l     d0, $1e(a7)
000688: 426f0026     clr.w      $26(a7)
00068c: 61001b1a     bsr.w      $21a8
000690: 4a00         tst.b      d0
000692: 6758         beq.b      $6ec
000694: 41ef024a     lea.l      $24a(a7), a0
000698: 2008         move.l     a0, d0
00069a: 61003c0a     bsr.w      $42a6
00069e: 72ff         moveq      #$ff, d1
0006a0: b280         cmp.l      d0, d1
0006a2: 6748         beq.b      $6ec
0006a4: 41ef0028     lea.l      $28(a7), a0
0006a8: 2208         move.l     a0, d1
0006aa: 41ef024a     lea.l      $24a(a7), a0
0006ae: 2008         move.l     a0, d0
0006b0: 610029a2     bsr.w      $3054
0006b4: 0c400259     cmpi.w     #$259, d0
0006b8: 6632         bne.b      $6ec
0006ba: 06af0000019a001e addi.l     #$19a, $1e(a7)
0006c2: 3f7c00010026 move.w     #$1, $26(a7)
0006c8: 41d7         lea.l      (a7), a0
0006ca: 2008         move.l     a0, d0
0006cc: 61003664     bsr.w      $3d32
0006d0: 72ff         moveq      #$ff, d1
0006d2: b280         cmp.l      d0, d1
0006d4: 660a         bne.b      $6e0
0006d6: 426f01bc     clr.w      $1bc(a7)
0006da: 426f01be     clr.w      $1be(a7)
0006de: 600c         bra.b      $6ec
0006e0: 3f6f001401bc move.w     $14(a7), $1bc(a7)
0006e6: 3f6f001601be move.w     $16(a7), $1be(a7)
0006ec: 222f001e     move.l     $1e(a7), d1
0006f0: 41ef0022     lea.l      $22(a7), a0
0006f4: 2008         move.l     a0, d0
0006f6: 6100fee8     bsr.w      $5e0
0006fa: 7000         moveq      #$0, d0
0006fc: 4fef0284     lea.l      $284(a7), a7
000700: 4ced0100fffc movem.l    -$4(a5), a0
000706: 4e5d         unlk       a5
000708: 4e75         rts        
00070a: 4e550000     link.w     a5, #$0
00070e: 48e7c080     movem.l    d0-d1/a0, -(a7)
000712: 4feffb92     lea.l      -$46e(a7), a7
000716: 70ff         moveq      #$ff, d0
000718: 2f40023e     move.l     d0, $23e(a7)
00071c: 206f046e     movea.l    $46e(a7), a0
000720: 2f500246     move.l     (a0), $246(a7)
000724: 7006         moveq      #$6, d0
000726: 2f400242     move.l     d0, $242(a7)
00072a: 426f024a     clr.w      $24a(a7)
00072e: 61001a78     bsr.w      $21a8
000732: 4a00         tst.b      d0
000734: 6700008a     beq.w      $7c0
000738: 41ef024c     lea.l      $24c(a7), a0
00073c: 2008         move.l     a0, d0
00073e: 61001bf0     bsr.w      $2330
000742: 72ff         moveq      #$ff, d1
000744: b280         cmp.l      d0, d1
000746: 67000078     beq.w      $7c0
00074a: 41ef0002     lea.l      $2(a7), a0
00074e: 2008         move.l     a0, d0
000750: 610037b8     bsr.w      $3f0a
000754: 72ff         moveq      #$ff, d1
000756: b280         cmp.l      d0, d1
000758: 6766         beq.b      $7c0
00075a: 0c6f00010224 cmpi.w     #$1, $224(a7)
000760: 665e         bne.b      $7c0
000762: 41ef024c     lea.l      $24c(a7), a0
000766: 2208         move.l     a0, d1
000768: 41ef0002     lea.l      $2(a7), a0
00076c: 2008         move.l     a0, d0
00076e: 61002a22     bsr.w      $3192
000772: 0c400259     cmpi.w     #$259, d0
000776: 6648         bne.b      $7c0
000778: 4eae9aa6     jsr        -$655a(a6)
00077c: 61004df0     bsr.w      $556e
000780: 2f40023e     move.l     d0, $23e(a7)
000784: 6d12         blt.b      $798
000786: 41ef0466     lea.l      $466(a7), a0
00078a: 2208         move.l     a0, d1
00078c: 202f023e     move.l     $23e(a7), d0
000790: 6100540c     bsr.w      $5b9e
000794: 4a80         tst.l      d0
000796: 6c0c         bge.b      $7a4
000798: 2f6f022e0466 move.l     $22e(a7), $466(a7)
00079e: 2f6f0232046a move.l     $232(a7), $46a(a7)
0007a4: 3f7c0001024a move.w     #$1, $24a(a7)
0007aa: 06af000002220242 addi.l     #$222, $242(a7)
0007b2: 4aaf023e     tst.l      $23e(a7)
0007b6: 6f08         ble.b      $7c0
0007b8: 202f023e     move.l     $23e(a7), d0
0007bc: 61004eca     bsr.w      $5688
0007c0: 222f0242     move.l     $242(a7), d1
0007c4: 41ef0246     lea.l      $246(a7), a0
0007c8: 2008         move.l     a0, d0
0007ca: 6100fe14     bsr.w      $5e0
0007ce: 7000         moveq      #$0, d0
0007d0: 4fef046e     lea.l      $46e(a7), a7
0007d4: 4ced0100fffc movem.l    -$4(a5), a0
0007da: 4e5d         unlk       a5
0007dc: 4e75         rts        
0007de: 4e550000     link.w     a5, #$0
0007e2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0007e6: 4feffdd4     lea.l      -$22c(a7), a7
0007ea: 206f022c     movea.l    $22c(a7), a0
0007ee: 2f500004     move.l     (a0), $4(a7)
0007f2: 7006         moveq      #$6, d0
0007f4: 2e80         move.l     d0, (a7)
0007f6: 426f0008     clr.w      $8(a7)
0007fa: 610019ac     bsr.w      $21a8
0007fe: 4a00         tst.b      d0
000800: 671c         beq.b      $81e
000802: 41ef000a     lea.l      $a(a7), a0
000806: 2008         move.l     a0, d0
000808: 61001c6e     bsr.w      $2478
00080c: 72ff         moveq      #$ff, d1
00080e: b280         cmp.l      d0, d1
000810: 670c         beq.b      $81e
000812: 3f7c00010008 move.w     #$1, $8(a7)
000818: 069700000222 addi.l     #$222, (a7)
00081e: 2217         move.l     (a7), d1
000820: 41ef0004     lea.l      $4(a7), a0
000824: 2008         move.l     a0, d0
000826: 6100fdb8     bsr.w      $5e0
00082a: 7000         moveq      #$0, d0
00082c: 4fef022c     lea.l      $22c(a7), a7
000830: 4ced0100fffc movem.l    -$4(a5), a0
000836: 4e5d         unlk       a5
000838: 4e75         rts        
00083a: 4e550000     link.w     a5, #$0
00083e: 48e7c000     movem.l    d0-d1, -(a7)
000842: 222e9624     move.l     -$69dc(a6), d1
000846: 2017         move.l     (a7), d0
000848: 5880         addq.l     #$4, d0
00084a: 6100090a     bsr.w      $1156
00084e: 7000         moveq      #$0, d0
000850: 4e5d         unlk       a5
000852: 4e75         rts        
000854: 4e550000     link.w     a5, #$0
000858: 48e7c080     movem.l    d0-d1/a0, -(a7)
00085c: 4feffdd4     lea.l      -$22c(a7), a7
000860: 206f022c     movea.l    $22c(a7), a0
000864: 2f500004     move.l     (a0), $4(a7)
000868: 7006         moveq      #$6, d0
00086a: 2e80         move.l     d0, (a7)
00086c: 426f0008     clr.w      $8(a7)
000870: 61001936     bsr.w      $21a8
000874: 4a00         tst.b      d0
000876: 672c         beq.b      $8a4
000878: 41ef000b     lea.l      $b(a7), a0
00087c: 2208         move.l     a0, d1
00087e: 206f022c     movea.l    $22c(a7), a0
000882: 7000         moveq      #$0, d0
000884: 10280004     move.b     $4(a0), d0
000888: 610044de     bsr.w      $4d68
00088c: 4a00         tst.b      d0
00088e: 6614         bne.b      $8a4
000890: 206f022c     movea.l    $22c(a7), a0
000894: 1f680004000a move.b     $4(a0), $a(a7)
00089a: 3f7c00010008 move.w     #$1, $8(a7)
0008a0: 704d         moveq      #$4d, d0
0008a2: d197         add.l      d0, (a7)
0008a4: 2217         move.l     (a7), d1
0008a6: 41ef0004     lea.l      $4(a7), a0
0008aa: 2008         move.l     a0, d0
0008ac: 6100fd32     bsr.w      $5e0
0008b0: 7000         moveq      #$0, d0
0008b2: 4fef022c     lea.l      $22c(a7), a7
0008b6: 4ced0100fffc movem.l    -$4(a5), a0
0008bc: 4e5d         unlk       a5
0008be: 4e75         rts        
0008c0: 4e550000     link.w     a5, #$0
0008c4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0008c8: 4feffdd8     lea.l      -$228(a7), a7
0008cc: 206f0228     movea.l    $228(a7), a0
0008d0: 2e90         move.l     (a0), (a7)
0008d2: 3f7c005b0004 move.w     #$5b, $4(a7)
0008d8: 3f7c00010006 move.w     #$1, $6(a7)
0008de: 7208         moveq      #$8, d1
0008e0: 41d7         lea.l      (a7), a0
0008e2: 2008         move.l     a0, d0
0008e4: 6100fcfa     bsr.w      $5e0
0008e8: 7000         moveq      #$0, d0
0008ea: 4fef0228     lea.l      $228(a7), a7
0008ee: 4ced0100fffc movem.l    -$4(a5), a0
0008f4: 4e5d         unlk       a5
0008f6: 4e75         rts        
0008f8: 4e550000     link.w     a5, #$0
0008fc: 48e7c080     movem.l    d0-d1/a0, -(a7)
000900: 4feffdd0     lea.l      -$230(a7), a7
000904: 6100190c     bsr.w      $2212
000908: 4a00         tst.b      d0
00090a: 672e         beq.b      $93a
00090c: 4857         pea.l      (a7)
00090e: 486f0230     pea.l      $230(a7)
000912: 222f023c     move.l     $23c(a7), d1
000916: 202f0238     move.l     $238(a7), d0
00091a: 61002dd8     bsr.w      $36f4
00091e: 508f         addq.l     #$8, a7
000920: 72ff         moveq      #$ff, d1
000922: b280         cmp.l      d0, d1
000924: 6714         beq.b      $93a
000926: 720e         moveq      #$e, d1
000928: 202f022c     move.l     $22c(a7), d0
00092c: 6100fcb2     bsr.w      $5e0
000930: 202f022c     move.l     $22c(a7), d0
000934: 4eae9aca     jsr        -$6536(a6)
000938: 6018         bra.b      $952
00093a: 206f0230     movea.l    $230(a7), a0
00093e: 2f500004     move.l     (a0), $4(a7)
000942: 426f0008     clr.w      $8(a7)
000946: 720e         moveq      #$e, d1
000948: 41ef0004     lea.l      $4(a7), a0
00094c: 2008         move.l     a0, d0
00094e: 6100fc90     bsr.w      $5e0
000952: 7000         moveq      #$0, d0
000954: 4fef0230     lea.l      $230(a7), a7
000958: 4ced0100fffc movem.l    -$4(a5), a0
00095e: 4e5d         unlk       a5
000960: 4e75         rts        
000962: 4e550000     link.w     a5, #$0
000966: 48e7c080     movem.l    d0-d1/a0, -(a7)
00096a: 4feffdd0     lea.l      -$230(a7), a7
00096e: 610018a2     bsr.w      $2212
000972: 4a00         tst.b      d0
000974: 672e         beq.b      $9a4
000976: 4857         pea.l      (a7)
000978: 486f0230     pea.l      $230(a7)
00097c: 222f023c     move.l     $23c(a7), d1
000980: 202f0238     move.l     $238(a7), d0
000984: 61002d6e     bsr.w      $36f4
000988: 508f         addq.l     #$8, a7
00098a: 72ff         moveq      #$ff, d1
00098c: b280         cmp.l      d0, d1
00098e: 6714         beq.b      $9a4
000990: 720a         moveq      #$a, d1
000992: 202f022c     move.l     $22c(a7), d0
000996: 6100fc48     bsr.w      $5e0
00099a: 202f022c     move.l     $22c(a7), d0
00099e: 4eae9aca     jsr        -$6536(a6)
0009a2: 6018         bra.b      $9bc
0009a4: 206f0230     movea.l    $230(a7), a0
0009a8: 2f500004     move.l     (a0), $4(a7)
0009ac: 426f0008     clr.w      $8(a7)
0009b0: 720a         moveq      #$a, d1
0009b2: 41ef0004     lea.l      $4(a7), a0
0009b6: 2008         move.l     a0, d0
0009b8: 6100fc26     bsr.w      $5e0
0009bc: 7000         moveq      #$0, d0
0009be: 4fef0230     lea.l      $230(a7), a7
0009c2: 4ced0100fffc movem.l    -$4(a5), a0
0009c8: 4e5d         unlk       a5
0009ca: 4e75         rts        
0009cc: 4e550000     link.w     a5, #$0
0009d0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0009d4: 4feffdd0     lea.l      -$230(a7), a7
0009d8: 61001838     bsr.w      $2212
0009dc: 4a00         tst.b      d0
0009de: 672e         beq.b      $a0e
0009e0: 4857         pea.l      (a7)
0009e2: 486f0230     pea.l      $230(a7)
0009e6: 222f023c     move.l     $23c(a7), d1
0009ea: 202f0238     move.l     $238(a7), d0
0009ee: 61002d04     bsr.w      $36f4
0009f2: 508f         addq.l     #$8, a7
0009f4: 72ff         moveq      #$ff, d1
0009f6: b280         cmp.l      d0, d1
0009f8: 6714         beq.b      $a0e
0009fa: 7208         moveq      #$8, d1
0009fc: 202f022c     move.l     $22c(a7), d0
000a00: 6100fbde     bsr.w      $5e0
000a04: 202f022c     move.l     $22c(a7), d0
000a08: 4eae9aca     jsr        -$6536(a6)
000a0c: 6018         bra.b      $a26
000a0e: 206f0230     movea.l    $230(a7), a0
000a12: 2f500004     move.l     (a0), $4(a7)
000a16: 426f0008     clr.w      $8(a7)
000a1a: 7208         moveq      #$8, d1
000a1c: 41ef0004     lea.l      $4(a7), a0
000a20: 2008         move.l     a0, d0
000a22: 6100fbbc     bsr.w      $5e0
000a26: 7000         moveq      #$0, d0
000a28: 4fef0230     lea.l      $230(a7), a7
000a2c: 4ced0100fffc movem.l    -$4(a5), a0
000a32: 4e5d         unlk       a5
000a34: 4e75         rts        
000a36: 4e550000     link.w     a5, #$0
000a3a: 48e7c080     movem.l    d0-d1/a0, -(a7)
000a3e: 4feffdd4     lea.l      -$22c(a7), a7
000a42: 206f022c     movea.l    $22c(a7), a0
000a46: 2f500004     move.l     (a0), $4(a7)
000a4a: 7006         moveq      #$6, d0
000a4c: 2e80         move.l     d0, (a7)
000a4e: 426f0008     clr.w      $8(a7)
000a52: 61001754     bsr.w      $21a8
000a56: 4a00         tst.b      d0
000a58: 674a         beq.b      $aa4
000a5a: 206f022c     movea.l    $22c(a7), a0
000a5e: 1f680004000a move.b     $4(a0), $a(a7)
000a64: 206f022c     movea.l    $22c(a7), a0
000a68: 0c28000b0004 cmpi.b     #$b, $4(a0)
000a6e: 6614         bne.b      $a84
000a70: 41ef000b     lea.l      $b(a7), a0
000a74: 2008         move.l     a0, d0
000a76: 61001a50     bsr.w      $24c8
000a7a: 3f7c00010008 move.w     #$1, $8(a7)
000a80: 704d         moveq      #$4d, d0
000a82: d197         add.l      d0, (a7)
000a84: 206f022c     movea.l    $22c(a7), a0
000a88: 0c2800160004 cmpi.b     #$16, $4(a0)
000a8e: 6614         bne.b      $aa4
000a90: 41ef000b     lea.l      $b(a7), a0
000a94: 2008         move.l     a0, d0
000a96: 61001b58     bsr.w      $25f0
000a9a: 3f7c00010008 move.w     #$1, $8(a7)
000aa0: 704d         moveq      #$4d, d0
000aa2: d197         add.l      d0, (a7)
000aa4: 2217         move.l     (a7), d1
000aa6: 41ef0004     lea.l      $4(a7), a0
000aaa: 2008         move.l     a0, d0
000aac: 6100fb32     bsr.w      $5e0
000ab0: 7000         moveq      #$0, d0
000ab2: 4fef022c     lea.l      $22c(a7), a7
000ab6: 4ced0100fffc movem.l    -$4(a5), a0
000abc: 4e5d         unlk       a5
000abe: 4e75         rts        
000ac0: 4e550000     link.w     a5, #$0
000ac4: 48e7c080     movem.l    d0-d1/a0, -(a7)
000ac8: 4feffdce     lea.l      -$232(a7), a7
000acc: 206f0232     movea.l    $232(a7), a0
000ad0: 2f50000a     move.l     (a0), $a(a7)
000ad4: 7006         moveq      #$6, d0
000ad6: 2f400006     move.l     d0, $6(a7)
000ada: 426f000e     clr.w      $e(a7)
000ade: 610016c8     bsr.w      $21a8
000ae2: 4a00         tst.b      d0
000ae4: 6724         beq.b      $b0a
000ae6: 41d7         lea.l      (a7), a0
000ae8: 2208         move.l     a0, d1
000aea: 41ef0010     lea.l      $10(a7), a0
000aee: 2008         move.l     a0, d0
000af0: 61002d48     bsr.w      $383a
000af4: 3f400004     move.w     d0, $4(a7)
000af8: 0c6f00020004 cmpi.w     #$2, $4(a7)
000afe: 670a         beq.b      $b0a
000b00: 3f7c0001000e move.w     #$1, $e(a7)
000b06: 58af0006     addq.l     #$4, $6(a7)
000b0a: 222f0006     move.l     $6(a7), d1
000b0e: 41ef000a     lea.l      $a(a7), a0
000b12: 2008         move.l     a0, d0
000b14: 6100faca     bsr.w      $5e0
000b18: 7000         moveq      #$0, d0
000b1a: 4fef0232     lea.l      $232(a7), a7
000b1e: 4ced0100fffc movem.l    -$4(a5), a0
000b24: 4e5d         unlk       a5
000b26: 4e75         rts        
000b28: 4e550000     link.w     a5, #$0
000b2c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000b30: 4feffdce     lea.l      -$232(a7), a7
000b34: 206f0232     movea.l    $232(a7), a0
000b38: 2f50000a     move.l     (a0), $a(a7)
000b3c: 7006         moveq      #$6, d0
000b3e: 2f400006     move.l     d0, $6(a7)
000b42: 426f000e     clr.w      $e(a7)
000b46: 61001660     bsr.w      $21a8
000b4a: 4a00         tst.b      d0
000b4c: 6722         beq.b      $b70
000b4e: 41ef0010     lea.l      $10(a7), a0
000b52: 2208         move.l     a0, d1
000b54: 41d7         lea.l      (a7), a0
000b56: 2008         move.l     a0, d0
000b58: 61002ce0     bsr.w      $383a
000b5c: 3f400004     move.w     d0, $4(a7)
000b60: 4a6f0004     tst.w      $4(a7)
000b64: 660a         bne.b      $b70
000b66: 3f7c0001000e move.w     #$1, $e(a7)
000b6c: 58af0006     addq.l     #$4, $6(a7)
000b70: 222f0006     move.l     $6(a7), d1
000b74: 41ef000a     lea.l      $a(a7), a0
000b78: 2008         move.l     a0, d0
000b7a: 6100fa64     bsr.w      $5e0
000b7e: 7000         moveq      #$0, d0
000b80: 4fef0232     lea.l      $232(a7), a7
000b84: 4ced0100fffc movem.l    -$4(a5), a0
000b8a: 4e5d         unlk       a5
000b8c: 4e75         rts        
000b8e: 4e550000     link.w     a5, #$0
000b92: 48e7c080     movem.l    d0-d1/a0, -(a7)
000b96: 4feffdb6     lea.l      -$24a(a7), a7
000b9a: 206f024a     movea.l    $24a(a7), a0
000b9e: 2f500004     move.l     (a0), $4(a7)
000ba2: 7006         moveq      #$6, d0
000ba4: 2e80         move.l     d0, (a7)
000ba6: 426f0008     clr.w      $8(a7)
000baa: 610015fc     bsr.w      $21a8
000bae: 4a00         tst.b      d0
000bb0: 6700007c     beq.w      $c2e
000bb4: 41ef022c     lea.l      $22c(a7), a0
000bb8: 2008         move.l     a0, d0
000bba: 61003176     bsr.w      $3d32
000bbe: 72ff         moveq      #$ff, d1
000bc0: b280         cmp.l      d0, d1
000bc2: 676a         beq.b      $c2e
000bc4: 41fa0186     lea.l      $d4c(pc), a0
000bc8: 2208         move.l     a0, d1
000bca: 41ef0244     lea.l      $244(a7), a0
000bce: 2008         move.l     a0, d0
000bd0: 61007f62     bsr.w      $8b34
000bd4: 4a80         tst.l      d0
000bd6: 6756         beq.b      $c2e
000bd8: 701e         moveq      #$1e, d0
000bda: d197         add.l      d0, (a7)
000bdc: 3f7c00010008 move.w     #$1, $8(a7)
000be2: 3f6f022c000a move.w     $22c(a7), $a(a7)
000be8: 3f6f022e000c move.w     $22e(a7), $c(a7)
000bee: 3f6f0230000e move.w     $230(a7), $e(a7)
000bf4: 2f6f02320010 move.l     $232(a7), $10(a7)
000bfa: 2f6f02360014 move.l     $236(a7), $14(a7)
000c00: 2f6f023a0018 move.l     $23a(a7), $18(a7)
000c06: 3f6f023e001c move.w     $23e(a7), $1c(a7)
000c0c: 3f6f0240001e move.w     $240(a7), $1e(a7)
000c12: 3f6f02420020 move.w     $242(a7), $20(a7)
000c18: 41ef0244     lea.l      $244(a7), a0
000c1c: 2208         move.l     a0, d1
000c1e: 41ef0022     lea.l      $22(a7), a0
000c22: 2008         move.l     a0, d0
000c24: 61007fa0     bsr.w      $8bc6
000c28: 3f6f02480026 move.w     $248(a7), $26(a7)
000c2e: 2217         move.l     (a7), d1
000c30: 41ef0004     lea.l      $4(a7), a0
000c34: 2008         move.l     a0, d0
000c36: 6100f9a8     bsr.w      $5e0
000c3a: 7000         moveq      #$0, d0
000c3c: 4fef024a     lea.l      $24a(a7), a7
000c40: 4ced0100fffc movem.l    -$4(a5), a0
000c46: 4e5d         unlk       a5
000c48: 4e75         rts        
000c4a: 4e550000     link.w     a5, #$0
000c4e: 48e7c080     movem.l    d0-d1/a0, -(a7)
000c52: 4feffdd0     lea.l      -$230(a7), a7
000c56: 206f0230     movea.l    $230(a7), a0
000c5a: 2f500008     move.l     (a0), $8(a7)
000c5e: 7006         moveq      #$6, d0
000c60: 2e80         move.l     d0, (a7)
000c62: 3f7cffff000c move.w     #$ffff, $c(a7)
000c68: 6100153e     bsr.w      $21a8
000c6c: 4a00         tst.b      d0
000c6e: 673c         beq.b      $cac
000c70: 41ef000e     lea.l      $e(a7), a0
000c74: 2208         move.l     a0, d1
000c76: 202f0230     move.l     $230(a7), d0
000c7a: 5880         addq.l     #$4, d0
000c7c: 610025ca     bsr.w      $3248
000c80: 3f400006     move.w     d0, $6(a7)
000c84: 0c400259     cmpi.w     #$259, d0
000c88: 6608         bne.b      $c92
000c8a: 426f000c     clr.w      $c(a7)
000c8e: 5297         addq.l     #$1, (a7)
000c90: 601a         bra.b      $cac
000c92: 7000         moveq      #$0, d0
000c94: 302f0006     move.w     $6(a7), d0
000c98: 610014d0     bsr.w      $216a
000c9c: 3f400004     move.w     d0, $4(a7)
000ca0: 0c40ffff     cmpi.w     #$ffff, d0
000ca4: 6706         beq.b      $cac
000ca6: 3f6f0004000c move.w     $4(a7), $c(a7)
000cac: 2217         move.l     (a7), d1
000cae: 41ef0008     lea.l      $8(a7), a0
000cb2: 2008         move.l     a0, d0
000cb4: 6100f92a     bsr.w      $5e0
000cb8: 7000         moveq      #$0, d0
000cba: 4fef0230     lea.l      $230(a7), a7
000cbe: 4ced0100fffc movem.l    -$4(a5), a0
000cc4: 4e5d         unlk       a5
000cc6: 4e75         rts        
000cc8: 4e550000     link.w     a5, #$0
000ccc: 48e7c8c0     movem.l    d0-d1/d4/a0-a1, -(a7)
000cd0: 518f         subq.l     #$8, a7
000cd2: 48780005     pea.l      $5.w
000cd6: 486f0004     pea.l      $4(a7)
000cda: 41ef000c     lea.l      $c(a7), a0
000cde: 2208         move.l     a0, d1
000ce0: 202e9620     move.l     -$69e0(a6), d0
000ce4: 61003f30     bsr.w      $4c16
000ce8: 508f         addq.l     #$8, a7
000cea: 72ff         moveq      #$ff, d1
000cec: b280         cmp.l      d0, d1
000cee: 6742         beq.b      $d32
000cf0: 7800         moveq      #$0, d4
000cf2: 6002         bra.b      $cf6
000cf4: 5284         addq.l     #$1, d4
000cf6: 7010         moveq      #$10, d0
000cf8: b084         cmp.l      d4, d0
000cfa: 6f14         ble.b      $d10
000cfc: 41ee962c     lea.l      -$69d4(a6), a0
000d00: 226f0004     movea.l    $4(a7), a1
000d04: 7000         moveq      #$0, d0
000d06: 30290002     move.w     $2(a1), d0
000d0a: b0b04e00     cmp.l      (a0, d4.l * 8), d0
000d0e: 66e4         bne.b      $cf4
000d10: 7010         moveq      #$10, d0
000d12: b084         cmp.l      d4, d0
000d14: 6f14         ble.b      $d2a
000d16: 2217         move.l     (a7), d1
000d18: 202f0004     move.l     $4(a7), d0
000d1c: 41ee962c     lea.l      -$69d4(a6), a0
000d20: 20704e04     movea.l    $4(a0, d4.l), a0
000d24: 4e90         jsr        (a0)
000d26: 72ff         moveq      #$ff, d1
000d28: b280         cmp.l      d0, d1
000d2a: 202f0004     move.l     $4(a7), d0
000d2e: 61007d56     bsr.w      $8a86
000d32: 223c00002441 move.l     #$2441, d1
000d38: 202e9620     move.l     -$69e0(a6), d0
000d3c: 4eae9abe     jsr        -$6542(a6)
000d40: 508f         addq.l     #$8, a7
000d42: 4ced0312fff0 movem.l    -$10(a5), d1/d4/a0-a1
000d48: 4e5d         unlk       a5
000d4a: 4e75         rts        
000d4c: 4e4f         trap       #$f
000d4e: 4300         chk.l      d0, d1
000d50: 4e550000     link.w     a5, #$0
000d54: 48e7c080     movem.l    d0-d1/a0, -(a7)
000d58: 598f         subq.l     #$4, a7
000d5a: 3d6e84ea80ea move.w     -$7b16(a6), -$7f16(a6)
000d60: 3d6f000680ec move.w     $6(a7), -$7f14(a6)
000d66: 3d7c000380ee move.w     #$3, -$7f12(a6)
000d6c: 3d7c000680f0 move.w     #$6, -$7f10(a6)
000d72: 3d6e84ee80f2 move.w     -$7b12(a6), -$7f0e(a6)
000d78: 302e84ea     move.w     -$7b16(a6), d0
000d7c: 48c0         ext.l      d0
000d7e: 720a         moveq      #$a, d1
000d80: d081         add.l      d1, d0
000d82: 2e80         move.l     d0, (a7)
000d84: 4878000a     pea.l      $a.w
000d88: 2f2f0004     move.l     $4(a7), -(a7)
000d8c: 41ee80ea     lea.l      -$7f16(a6), a0
000d90: 2208         move.l     a0, d1
000d92: 202e80e6     move.l     -$7f1a(a6), d0
000d96: 61003dea     bsr.w      $4b82
000d9a: 508f         addq.l     #$8, a7
000d9c: b097         cmp.l      (a7), d0
000d9e: 6704         beq.b      $da4
000da0: 70ff         moveq      #$ff, d0
000da2: 6006         bra.b      $daa
000da4: 426e84ea     clr.w      -$7b16(a6)
000da8: 7000         moveq      #$0, d0
000daa: 588f         addq.l     #$4, a7
000dac: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000db2: 4e5d         unlk       a5
000db4: 4e75         rts        
000db6: 4e550000     link.w     a5, #$0
000dba: 48e7c080     movem.l    d0-d1/a0, -(a7)
000dbe: 302e84ea     move.w     -$7b16(a6), d0
000dc2: 48c0         ext.l      d0
000dc4: 5280         addq.l     #$1, d0
000dc6: 0c80000003f6 cmpi.l     #$3f6, d0
000dcc: 6d10         blt.b      $dde
000dce: 7000         moveq      #$0, d0
000dd0: 6100ff7e     bsr.w      $d50
000dd4: 72ff         moveq      #$ff, d1
000dd6: b280         cmp.l      d0, d1
000dd8: 6604         bne.b      $dde
000dda: 70ff         moveq      #$ff, d0
000ddc: 6028         bra.b      $e06
000dde: 48780001     pea.l      $1.w
000de2: 206e84f0     movea.l    -$7b10(a6), a0
000de6: 2210         move.l     (a0), d1
000de8: 302e84ea     move.w     -$7b16(a6), d0
000dec: 48c0         ext.l      d0
000dee: 41ee80f4     lea.l      -$7f0c(a6), a0
000df2: d088         add.l      a0, d0
000df4: 61007f6e     bsr.w      $8d64
000df8: 588f         addq.l     #$4, a7
000dfa: 302e84ea     move.w     -$7b16(a6), d0
000dfe: 5240         addq.w     #$1, d0
000e00: 3d4084ea     move.w     d0, -$7b16(a6)
000e04: 7000         moveq      #$0, d0
000e06: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e0c: 4e5d         unlk       a5
000e0e: 4e75         rts        
000e10: 4e550000     link.w     a5, #$0
000e14: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e18: 302e84ea     move.w     -$7b16(a6), d0
000e1c: 48c0         ext.l      d0
000e1e: 5280         addq.l     #$1, d0
000e20: 0c80000003f6 cmpi.l     #$3f6, d0
000e26: 6d10         blt.b      $e38
000e28: 7000         moveq      #$0, d0
000e2a: 6100ff24     bsr.w      $d50
000e2e: 72ff         moveq      #$ff, d1
000e30: b280         cmp.l      d0, d1
000e32: 6604         bne.b      $e38
000e34: 70ff         moveq      #$ff, d0
000e36: 602c         bra.b      $e64
000e38: 48780001     pea.l      $1.w
000e3c: 206e84f0     movea.l    -$7b10(a6), a0
000e40: 700a         moveq      #$a, d0
000e42: d090         add.l      (a0), d0
000e44: 2200         move.l     d0, d1
000e46: 302e84ea     move.w     -$7b16(a6), d0
000e4a: 48c0         ext.l      d0
000e4c: 41ee80f4     lea.l      -$7f0c(a6), a0
000e50: d088         add.l      a0, d0
000e52: 61007f10     bsr.w      $8d64
000e56: 588f         addq.l     #$4, a7
000e58: 302e84ea     move.w     -$7b16(a6), d0
000e5c: 5240         addq.w     #$1, d0
000e5e: 3d4084ea     move.w     d0, -$7b16(a6)
000e62: 7000         moveq      #$0, d0
000e64: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e6a: 4e5d         unlk       a5
000e6c: 4e75         rts        
000e6e: 4e550000     link.w     a5, #$0
000e72: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e76: 302e84ea     move.w     -$7b16(a6), d0
000e7a: 48c0         ext.l      d0
000e7c: 5480         addq.l     #$2, d0
000e7e: 0c80000003f6 cmpi.l     #$3f6, d0
000e84: 6d10         blt.b      $e96
000e86: 7000         moveq      #$0, d0
000e88: 6100fec6     bsr.w      $d50
000e8c: 72ff         moveq      #$ff, d1
000e8e: b280         cmp.l      d0, d1
000e90: 6604         bne.b      $e96
000e92: 70ff         moveq      #$ff, d0
000e94: 602c         bra.b      $ec2
000e96: 48780002     pea.l      $2.w
000e9a: 206e84f0     movea.l    -$7b10(a6), a0
000e9e: 700c         moveq      #$c, d0
000ea0: d090         add.l      (a0), d0
000ea2: 2200         move.l     d0, d1
000ea4: 302e84ea     move.w     -$7b16(a6), d0
000ea8: 48c0         ext.l      d0
000eaa: 41ee80f4     lea.l      -$7f0c(a6), a0
000eae: d088         add.l      a0, d0
000eb0: 61007eb2     bsr.w      $8d64
000eb4: 588f         addq.l     #$4, a7
000eb6: 302e84ea     move.w     -$7b16(a6), d0
000eba: 5440         addq.w     #$2, d0
000ebc: 3d4084ea     move.w     d0, -$7b16(a6)
000ec0: 7000         moveq      #$0, d0
000ec2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000ec8: 4e5d         unlk       a5
000eca: 4e75         rts        
000ecc: 4e550000     link.w     a5, #$0
000ed0: 48e7c080     movem.l    d0-d1/a0, -(a7)
000ed4: 558f         subq.l     #$2, a7
000ed6: 4257         clr.w      (a7)
000ed8: 6056         bra.b      $f30
000eda: 302e84ea     move.w     -$7b16(a6), d0
000ede: 48c0         ext.l      d0
000ee0: 5080         addq.l     #$8, d0
000ee2: 0c80000003f6 cmpi.l     #$3f6, d0
000ee8: 6d10         blt.b      $efa
000eea: 7000         moveq      #$0, d0
000eec: 6100fe62     bsr.w      $d50
000ef0: 72ff         moveq      #$ff, d1
000ef2: b280         cmp.l      d0, d1
000ef4: 6604         bne.b      $efa
000ef6: 70ff         moveq      #$ff, d0
000ef8: 6046         bra.b      $f40
000efa: 48780008     pea.l      $8.w
000efe: 206e84f0     movea.l    -$7b10(a6), a0
000f02: 700e         moveq      #$e, d0
000f04: d090         add.l      (a0), d0
000f06: 322f0004     move.w     $4(a7), d1
000f0a: 48c1         ext.l      d1
000f0c: e789         lsl.l      #$3, d1
000f0e: d081         add.l      d1, d0
000f10: 2200         move.l     d0, d1
000f12: 302e84ea     move.w     -$7b16(a6), d0
000f16: 48c0         ext.l      d0
000f18: 41ee80f4     lea.l      -$7f0c(a6), a0
000f1c: d088         add.l      a0, d0
000f1e: 61007e44     bsr.w      $8d64
000f22: 588f         addq.l     #$4, a7
000f24: 302e84ea     move.w     -$7b16(a6), d0
000f28: 5040         addq.w     #$8, d0
000f2a: 3d4084ea     move.w     d0, -$7b16(a6)
000f2e: 5257         addq.w     #$1, (a7)
000f30: 206e84f0     movea.l    -$7b10(a6), a0
000f34: 2050         movea.l    (a0), a0
000f36: 3017         move.w     (a7), d0
000f38: b068000c     cmp.w      $c(a0), d0
000f3c: 6d9c         blt.b      $eda
000f3e: 7000         moveq      #$0, d0
000f40: 548f         addq.l     #$2, a7
000f42: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000f48: 4e5d         unlk       a5
000f4a: 4e75         rts        
000f4c: 4e550000     link.w     a5, #$0
000f50: 48e7c080     movem.l    d0-d1/a0, -(a7)
000f54: 598f         subq.l     #$4, a7
000f56: 4297         clr.l      (a7)
000f58: 2d6f000484f0 move.l     $4(a7), -$7b10(a6)
000f5e: 426e84ea     clr.w      -$7b16(a6)
000f62: 6038         bra.b      $f9c
000f64: 6100fe50     bsr.w      $db6
000f68: 72ff         moveq      #$ff, d1
000f6a: b280         cmp.l      d0, d1
000f6c: 671e         beq.b      $f8c
000f6e: 6100fea0     bsr.w      $e10
000f72: 72ff         moveq      #$ff, d1
000f74: b280         cmp.l      d0, d1
000f76: 6714         beq.b      $f8c
000f78: 6100fef4     bsr.w      $e6e
000f7c: 72ff         moveq      #$ff, d1
000f7e: b280         cmp.l      d0, d1
000f80: 670a         beq.b      $f8c
000f82: 6100ff48     bsr.w      $ecc
000f86: 72ff         moveq      #$ff, d1
000f88: b280         cmp.l      d0, d1
000f8a: 6606         bne.b      $f92
000f8c: 70ff         moveq      #$ff, d0
000f8e: 2e80         move.l     d0, (a7)
000f90: 6010         bra.b      $fa2
000f92: 206e84f0     movea.l    -$7b10(a6), a0
000f96: 2d68000484f0 move.l     $4(a0), -$7b10(a6)
000f9c: 4aae84f0     tst.l      -$7b10(a6)
000fa0: 66c2         bne.b      $f64
000fa2: 4a97         tst.l      (a7)
000fa4: 6606         bne.b      $fac
000fa6: 7001         moveq      #$1, d0
000fa8: 6100fda6     bsr.w      $d50
000fac: 588f         addq.l     #$4, a7
000fae: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000fb4: 4e5d         unlk       a5
000fb6: 4e75         rts        
000fb8: 4e550000     link.w     a5, #$0
000fbc: 48e7c080     movem.l    d0-d1/a0, -(a7)
000fc0: 4fefffda     lea.l      -$26(a7), a7
000fc4: 486f0012     pea.l      $12(a7)
000fc8: 7016         moveq      #$16, d0
000fca: d0af002e     add.l      $2e(a7), d0
000fce: 2200         move.l     d0, d1
000fd0: 700e         moveq      #$e, d0
000fd2: d0af002e     add.l      $2e(a7), d0
000fd6: 206e8ffc     movea.l    -$7004(a6), a0
000fda: 4e90         jsr        (a0)
000fdc: 588f         addq.l     #$4, a7
000fde: 7002         moveq      #$2, d0
000fe0: 2f400022     move.l     d0, $22(a7)
000fe4: 603e         bra.b      $1024
000fe6: 486f0002     pea.l      $2(a7)
000fea: 700e         moveq      #$e, d0
000fec: d0af002e     add.l      $2e(a7), d0
000ff0: 222f0026     move.l     $26(a7), d1
000ff4: e789         lsl.l      #$3, d1
000ff6: d081         add.l      d1, d0
000ff8: 2200         move.l     d0, d1
000ffa: 41ef0016     lea.l      $16(a7), a0
000ffe: 2008         move.l     a0, d0
001000: 206e8fb4     movea.l    -$704c(a6), a0
001004: 4e90         jsr        (a0)
001006: 588f         addq.l     #$4, a7
001008: 2f6f00020012 move.l     $2(a7), $12(a7)
00100e: 2f6f00060016 move.l     $6(a7), $16(a7)
001014: 2f6f000a001a move.l     $a(a7), $1a(a7)
00101a: 2f6f000e001e move.l     $e(a7), $1e(a7)
001020: 52af0022     addq.l     #$1, $22(a7)
001024: 206f002a     movea.l    $2a(a7), a0
001028: 3028000c     move.w     $c(a0), d0
00102c: 48c0         ext.l      d0
00102e: b0af0022     cmp.l      $22(a7), d0
001032: 6eb2         bgt.b      $fe6
001034: 41ef0012     lea.l      $12(a7), a0
001038: 2208         move.l     a0, d1
00103a: 202f0026     move.l     $26(a7), d0
00103e: 206e8fa8     movea.l    -$7058(a6), a0
001042: 4e90         jsr        (a0)
001044: 1f400001     move.b     d0, $1(a7)
001048: 102f0001     move.b     $1(a7), d0
00104c: 4880         ext.w      d0
00104e: 02400008     andi.w     #$8, d0
001052: 0c400008     cmpi.w     #$8, d0
001056: 6604         bne.b      $105c
001058: 7000         moveq      #$0, d0
00105a: 6002         bra.b      $105e
00105c: 7001         moveq      #$1, d0
00105e: 4fef0026     lea.l      $26(a7), a7
001062: 4ced0100fffc movem.l    -$4(a5), a0
001068: 4e5d         unlk       a5
00106a: 4e75         rts        
00106c: 4e550000     link.w     a5, #$0
001070: 48e7c080     movem.l    d0-d1/a0, -(a7)
001074: 558f         subq.l     #$2, a7
001076: 202f0002     move.l     $2(a7), d0
00107a: 5080         addq.l     #$8, d0
00107c: 2200         move.l     d0, d1
00107e: 202f0002     move.l     $2(a7), d0
001082: 206e8fec     movea.l    -$7014(a6), a0
001086: 4e90         jsr        (a0)
001088: 1f400001     move.b     d0, $1(a7)
00108c: 102f0001     move.b     $1(a7), d0
001090: 4880         ext.w      d0
001092: 02400010     andi.w     #$10, d0
001096: 0c400010     cmpi.w     #$10, d0
00109a: 6622         bne.b      $10be
00109c: 102f0001     move.b     $1(a7), d0
0010a0: 4880         ext.w      d0
0010a2: 02400020     andi.w     #$20, d0
0010a6: 0c400020     cmpi.w     #$20, d0
0010aa: 6612         bne.b      $10be
0010ac: 202f0002     move.l     $2(a7), d0
0010b0: 206e8fd0     movea.l    -$7030(a6), a0
0010b4: 4e90         jsr        (a0)
0010b6: 4a80         tst.l      d0
0010b8: 6d04         blt.b      $10be
0010ba: 7001         moveq      #$1, d0
0010bc: 6002         bra.b      $10c0
0010be: 7000         moveq      #$0, d0
0010c0: 548f         addq.l     #$2, a7
0010c2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0010c8: 4e5d         unlk       a5
0010ca: 4e75         rts        
0010cc: 4e550000     link.w     a5, #$0
0010d0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0010d4: 598f         subq.l     #$4, a7
0010d6: 7008         moveq      #$8, d0
0010d8: 610079a0     bsr.w      $8a7a
0010dc: 2e80         move.l     d0, (a7)
0010de: 6604         bne.b      $10e4
0010e0: 7000         moveq      #$0, d0
0010e2: 602e         bra.b      $1112
0010e4: 2057         movea.l    (a7), a0
0010e6: 20af0004     move.l     $4(a7), (a0)
0010ea: 2057         movea.l    (a7), a0
0010ec: 42a80004     clr.l      $4(a0)
0010f0: 206f0008     movea.l    $8(a7), a0
0010f4: 4a90         tst.l      (a0)
0010f6: 6608         bne.b      $1100
0010f8: 206f0008     movea.l    $8(a7), a0
0010fc: 2097         move.l     (a7), (a0)
0010fe: 600a         bra.b      $110a
001100: 206f0018     movea.l    $18(a7), a0
001104: 2050         movea.l    (a0), a0
001106: 21570004     move.l     (a7), $4(a0)
00110a: 206f0018     movea.l    $18(a7), a0
00110e: 2097         move.l     (a7), (a0)
001110: 7001         moveq      #$1, d0
001112: 588f         addq.l     #$4, a7
001114: 4ced0100fffc movem.l    -$4(a5), a0
00111a: 4e5d         unlk       a5
00111c: 4e75         rts        
00111e: 4e550000     link.w     a5, #$0
001122: 48e78080     movem.l    d0/a0, -(a7)
001126: 598f         subq.l     #$4, a7
001128: 601a         bra.b      $1144
00112a: 2eaf0004     move.l     $4(a7), (a7)
00112e: 2057         movea.l    (a7), a0
001130: 2010         move.l     (a0), d0
001132: 61007952     bsr.w      $8a86
001136: 2057         movea.l    (a7), a0
001138: 2f6800040004 move.l     $4(a0), $4(a7)
00113e: 2017         move.l     (a7), d0
001140: 61007944     bsr.w      $8a86
001144: 4aaf0004     tst.l      $4(a7)
001148: 66e0         bne.b      $112a
00114a: 588f         addq.l     #$4, a7
00114c: 4ced0100fffc movem.l    -$4(a5), a0
001152: 4e5d         unlk       a5
001154: 4e75         rts        
001156: 4e550000     link.w     a5, #$0
00115a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00115e: 4fefffe8     lea.l      -$18(a7), a7
001162: 42af0004     clr.l      $4(a7)
001166: 4297         clr.l      (a7)
001168: 2d6f001c80e6 move.l     $1c(a7), -$7f1a(a6)
00116e: 4eae9aa6     jsr        -$655a(a6)
001172: 610043fa     bsr.w      $556e
001176: 2f400010     move.l     d0, $10(a7)
00117a: 6d0c         blt.b      $1188
00117c: 202f0018     move.l     $18(a7), d0
001180: 6100feea     bsr.w      $106c
001184: 4a00         tst.b      d0
001186: 6608         bne.b      $1190
001188: 42ae84ec     clr.l      -$7b14(a6)
00118c: 6000006c     bra.w      $11fa
001190: 7001         moveq      #$1, d0
001192: 2d4084ec     move.l     d0, -$7b14(a6)
001196: 603a         bra.b      $11d2
001198: 222f0008     move.l     $8(a7), d1
00119c: 202f0018     move.l     $18(a7), d0
0011a0: 6100fe16     bsr.w      $fb8
0011a4: 7201         moveq      #$1, d1
0011a6: b280         cmp.l      d0, d1
0011a8: 6620         bne.b      $11ca
0011aa: 4857         pea.l      (a7)
0011ac: 41ef0008     lea.l      $8(a7), a0
0011b0: 2208         move.l     a0, d1
0011b2: 202f000c     move.l     $c(a7), d0
0011b6: 6100ff14     bsr.w      $10cc
0011ba: 588f         addq.l     #$4, a7
0011bc: 4a00         tst.b      d0
0011be: 6612         bne.b      $11d2
0011c0: 202f0008     move.l     $8(a7), d0
0011c4: 610078c0     bsr.w      $8a86
0011c8: 60be         bra.b      $1188
0011ca: 202f0008     move.l     $8(a7), d0
0011ce: 610078b6     bsr.w      $8a86
0011d2: 486f000c     pea.l      $c(a7)
0011d6: 41ef000c     lea.l      $c(a7), a0
0011da: 2208         move.l     a0, d1
0011dc: 202f0014     move.l     $14(a7), d0
0011e0: 610045f8     bsr.w      $57da
0011e4: 588f         addq.l     #$4, a7
0011e6: 2f400014     move.l     d0, $14(a7)
0011ea: 70ff         moveq      #$ff, d0
0011ec: b0af0014     cmp.l      $14(a7), d0
0011f0: 6708         beq.b      $11fa
0011f2: 70fe         moveq      #$fe, d0
0011f4: b0af0014     cmp.l      $14(a7), d0
0011f8: 669e         bne.b      $1198
0011fa: 202f0004     move.l     $4(a7), d0
0011fe: 6100fd4c     bsr.w      $f4c
001202: 202f0004     move.l     $4(a7), d0
001206: 6100ff16     bsr.w      $111e
00120a: 202f0010     move.l     $10(a7), d0
00120e: 61004478     bsr.w      $5688
001212: 7000         moveq      #$0, d0
001214: 4fef0018     lea.l      $18(a7), a7
001218: 4ced0100fffc movem.l    -$4(a5), a0
00121e: 4e5d         unlk       a5
001220: 4e75         rts        
001222: 4e550000     link.w     a5, #$0
001226: 48e7c080     movem.l    d0-d1/a0, -(a7)
00122a: 4eae9aa6     jsr        -$655a(a6)
00122e: 61006a5c     bsr.w      $7c8c
001232: 2d4096b8     move.l     d0, -$6948(a6)
001236: 7000         moveq      #$0, d0
001238: 610033fa     bsr.w      $4634
00123c: 2d4096ac     move.l     d0, -$6954(a6)
001240: 223c00002440 move.l     #$2440, d1
001246: 202e96ac     move.l     -$6954(a6), d0
00124a: 61007e4c     bsr.w      $9098
00124e: 7201         moveq      #$1, d1
001250: 41fa0ace     lea.l      $1d20(pc), a0
001254: 2008         move.l     a0, d0
001256: 61005ef6     bsr.w      $714e
00125a: 2d4096b4     move.l     d0, -$694c(a6)
00125e: 70ff         moveq      #$ff, d0
001260: b0ae96ac     cmp.l      -$6954(a6), d0
001264: 6706         beq.b      $126c
001266: 4aae96b4     tst.l      -$694c(a6)
00126a: 6c04         bge.b      $1270
00126c: 70ff         moveq      #$ff, d0
00126e: 6002         bra.b      $1272
001270: 7000         moveq      #$0, d0
001272: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001278: 4e5d         unlk       a5
00127a: 4e75         rts        
00127c: 4e550000     link.w     a5, #$0
001280: 48e78000     movem.l    d0, -(a7)
001284: 7001         moveq      #$1, d0
001286: 610033f8     bsr.w      $4680
00128a: 2d4096b0     move.l     d0, -$6950(a6)
00128e: 4aae96b0     tst.l      -$6950(a6)
001292: 6c04         bge.b      $1298
001294: 70ff         moveq      #$ff, d0
001296: 6002         bra.b      $129a
001298: 7000         moveq      #$0, d0
00129a: 4e5d         unlk       a5
00129c: 4e75         rts        
00129e: 4e550000     link.w     a5, #$0
0012a2: 48e78000     movem.l    d0, -(a7)
0012a6: 70ff         moveq      #$ff, d0
0012a8: b0ae96ac     cmp.l      -$6954(a6), d0
0012ac: 670e         beq.b      $12bc
0012ae: 202e96ac     move.l     -$6954(a6), d0
0012b2: 61007782     bsr.w      $8a36
0012b6: 70ff         moveq      #$ff, d0
0012b8: 2d4096ac     move.l     d0, -$6954(a6)
0012bc: 70ff         moveq      #$ff, d0
0012be: b0ae96b4     cmp.l      -$694c(a6), d0
0012c2: 670e         beq.b      $12d2
0012c4: 202e96b4     move.l     -$694c(a6), d0
0012c8: 6100776c     bsr.w      $8a36
0012cc: 70ff         moveq      #$ff, d0
0012ce: 2d4096b4     move.l     d0, -$694c(a6)
0012d2: 4e5d         unlk       a5
0012d4: 4e75         rts        
0012d6: 4e550000     link.w     a5, #$0
0012da: 48e7c000     movem.l    d0-d1, -(a7)
0012de: 70ff         moveq      #$ff, d0
0012e0: b0ae96b0     cmp.l      -$6950(a6), d0
0012e4: 6714         beq.b      $12fa
0012e6: 202e96b0     move.l     -$6950(a6), d0
0012ea: 61003448     bsr.w      $4734
0012ee: 72ff         moveq      #$ff, d1
0012f0: b280         cmp.l      d0, d1
0012f2: 6706         beq.b      $12fa
0012f4: 70ff         moveq      #$ff, d0
0012f6: 2d4096b0     move.l     d0, -$6950(a6)
0012fa: 4ced0002fffc movem.l    -$4(a5), d1
001300: 4e5d         unlk       a5
001302: 4e75         rts        
001304: 4e550000     link.w     a5, #$0
001308: 48e78000     movem.l    d0, -(a7)
00130c: 202e96ac     move.l     -$6954(a6), d0
001310: 61007c9a     bsr.w      $8fac
001314: 4a80         tst.l      d0
001316: 6f04         ble.b      $131c
001318: 7001         moveq      #$1, d0
00131a: 6002         bra.b      $131e
00131c: 7000         moveq      #$0, d0
00131e: 4e5d         unlk       a5
001320: 4e75         rts        
001322: 4e550000     link.w     a5, #$0
001326: 48e7c080     movem.l    d0-d1/a0, -(a7)
00132a: 5d8f         subq.l     #$6, a7
00132c: 206f0006     movea.l    $6(a7), a0
001330: 2e90         move.l     (a0), (a7)
001332: 3f6f000c0004 move.w     $c(a7), $4(a7)
001338: 48780005     pea.l      $5.w
00133c: 48780006     pea.l      $6.w
001340: 41ef0008     lea.l      $8(a7), a0
001344: 2208         move.l     a0, d1
001346: 202e96b0     move.l     -$6950(a6), d0
00134a: 61003994     bsr.w      $4ce0
00134e: 508f         addq.l     #$8, a7
001350: 72ff         moveq      #$ff, d1
001352: b280         cmp.l      d0, d1
001354: 5c8f         addq.l     #$6, a7
001356: 4ced0100fffc movem.l    -$4(a5), a0
00135c: 4e5d         unlk       a5
00135e: 4e75         rts        
001360: 4e550000     link.w     a5, #$0
001364: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
001368: 518f         subq.l     #$8, a7
00136a: 7800         moveq      #$0, d4
00136c: 61000ea4     bsr.w      $2212
001370: 4a00         tst.b      d0
001372: 6758         beq.b      $13cc
001374: 4857         pea.l      (a7)
001376: 486f0008     pea.l      $8(a7)
00137a: 222f0014     move.l     $14(a7), d1
00137e: 202f0010     move.l     $10(a7), d0
001382: 61002370     bsr.w      $36f4
001386: 508f         addq.l     #$8, a7
001388: 72ff         moveq      #$ff, d1
00138a: b280         cmp.l      d0, d1
00138c: 673e         beq.b      $13cc
00138e: 206f0008     movea.l    $8(a7), a0
001392: 7000         moveq      #$0, d0
001394: 30280002     move.w     $2(a0), d0
001398: 610023a8     bsr.w      $3742
00139c: 206f0004     movea.l    $4(a7), a0
0013a0: 38280004     move.w     $4(a0), d4
0013a4: 202f0004     move.l     $4(a7), d0
0013a8: 610076dc     bsr.w      $8a86
0013ac: 610023a4     bsr.w      $3752
0013b0: 7239         moveq      #$39, d1
0013b2: b280         cmp.l      d0, d1
0013b4: 670a         beq.b      $13c0
0013b6: 6100239a     bsr.w      $3752
0013ba: 7245         moveq      #$45, d1
0013bc: b280         cmp.l      d0, d1
0013be: 660c         bne.b      $13cc
0013c0: 0c440001     cmpi.w     #$1, d4
0013c4: 6606         bne.b      $13cc
0013c6: 7001         moveq      #$1, d0
0013c8: 61002398     bsr.w      $3762
0013cc: 48c4         ext.l      d4
0013ce: 2204         move.l     d4, d1
0013d0: 202f0008     move.l     $8(a7), d0
0013d4: 6100ff4c     bsr.w      $1322
0013d8: 7000         moveq      #$0, d0
0013da: 508f         addq.l     #$8, a7
0013dc: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0013e2: 4e5d         unlk       a5
0013e4: 4e75         rts        
0013e6: 4e550000     link.w     a5, #$0
0013ea: 48e7c080     movem.l    d0-d1/a0, -(a7)
0013ee: 4feffff0     lea.l      -$10(a7), a7
0013f2: 4257         clr.w      (a7)
0013f4: 41ef0002     lea.l      $2(a7), a0
0013f8: 2008         move.l     a0, d0
0013fa: 610009b2     bsr.w      $1dae
0013fe: 72ff         moveq      #$ff, d1
001400: b280         cmp.l      d0, d1
001402: 6700007c     beq.w      $1480
001406: 0c6f00010002 cmpi.w     #$1, $2(a7)
00140c: 66000072     bne.w      $1480
001410: 206f0010     movea.l    $10(a7), a0
001414: 30680004     movea.w    $4(a0), a0
001418: 2008         move.l     a0, d0
00141a: 61000e38     bsr.w      $2254
00141e: 4a00         tst.b      d0
001420: 675e         beq.b      $1480
001422: 206f0010     movea.l    $10(a7), a0
001426: 0c6800010004 cmpi.w     #$1, $4(a0)
00142c: 661a         bne.b      $1448
00142e: 61002342     bsr.w      $3772
001432: 7202         moveq      #$2, d1
001434: b280         cmp.l      d0, d1
001436: 6608         bne.b      $1440
001438: 7005         moveq      #$5, d0
00143a: 61000e18     bsr.w      $2254
00143e: 6040         bra.b      $1480
001440: 223c00002451 move.l     #$2451, d1
001446: 6026         bra.b      $146e
001448: 206f0010     movea.l    $10(a7), a0
00144c: 0c6800020004 cmpi.w     #$2, $4(a0)
001452: 6608         bne.b      $145c
001454: 223c00002450 move.l     #$2450, d1
00145a: 6012         bra.b      $146e
00145c: 206f0010     movea.l    $10(a7), a0
001460: 0c6800050004 cmpi.w     #$5, $4(a0)
001466: 6618         bne.b      $1480
001468: 223c00002454 move.l     #$2454, d1
00146e: 202e96b8     move.l     -$6948(a6), d0
001472: 61006002     bsr.w      $7476
001476: 72ff         moveq      #$ff, d1
001478: b280         cmp.l      d0, d1
00147a: 6704         beq.b      $1480
00147c: 3ebc0001     move.w     #$1, (a7)
001480: 206f0010     movea.l    $10(a7), a0
001484: 0c6800030004 cmpi.w     #$3, $4(a0)
00148a: 6616         bne.b      $14a2
00148c: 206f0010     movea.l    $10(a7), a0
001490: 30680004     movea.w    $4(a0), a0
001494: 2008         move.l     a0, d0
001496: 61000dbc     bsr.w      $2254
00149a: 223c00002452 move.l     #$2452, d1
0014a0: 6020         bra.b      $14c2
0014a2: 206f0010     movea.l    $10(a7), a0
0014a6: 0c6800040004 cmpi.w     #$4, $4(a0)
0014ac: 6626         bne.b      $14d4
0014ae: 206f0010     movea.l    $10(a7), a0
0014b2: 30680004     movea.w    $4(a0), a0
0014b6: 2008         move.l     a0, d0
0014b8: 61000d9a     bsr.w      $2254
0014bc: 223c00002453 move.l     #$2453, d1
0014c2: 202e96b8     move.l     -$6948(a6), d0
0014c6: 61005fae     bsr.w      $7476
0014ca: 72ff         moveq      #$ff, d1
0014cc: b280         cmp.l      d0, d1
0014ce: 6704         beq.b      $14d4
0014d0: 3ebc0001     move.w     #$1, (a7)
0014d4: 3057         movea.w    (a7), a0
0014d6: 2208         move.l     a0, d1
0014d8: 202f0010     move.l     $10(a7), d0
0014dc: 6100fe44     bsr.w      $1322
0014e0: 7000         moveq      #$0, d0
0014e2: 4fef0010     lea.l      $10(a7), a7
0014e6: 4ced0100fffc movem.l    -$4(a5), a0
0014ec: 4e5d         unlk       a5
0014ee: 4e75         rts        
0014f0: 4e550000     link.w     a5, #$0
0014f4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0014f8: 558f         subq.l     #$2, a7
0014fa: 4257         clr.w      (a7)
0014fc: 61000caa     bsr.w      $21a8
001500: 4a00         tst.b      d0
001502: 671e         beq.b      $1522
001504: 202f0002     move.l     $2(a7), d0
001508: 5a80         addq.l     #$5, d0
00150a: 2200         move.l     d0, d1
00150c: 206f0002     movea.l    $2(a7), a0
001510: 7000         moveq      #$0, d0
001512: 10280004     move.b     $4(a0), d0
001516: 610038d4     bsr.w      $4dec
00151a: 4a00         tst.b      d0
00151c: 6604         bne.b      $1522
00151e: 3ebc0001     move.w     #$1, (a7)
001522: 3057         movea.w    (a7), a0
001524: 2208         move.l     a0, d1
001526: 202f0002     move.l     $2(a7), d0
00152a: 6100fdf6     bsr.w      $1322
00152e: 7000         moveq      #$0, d0
001530: 548f         addq.l     #$2, a7
001532: 4ced0100fffc movem.l    -$4(a5), a0
001538: 4e5d         unlk       a5
00153a: 4e75         rts        
00153c: 4e550000     link.w     a5, #$0
001540: 48e7c080     movem.l    d0-d1/a0, -(a7)
001544: 558f         subq.l     #$2, a7
001546: 4257         clr.w      (a7)
001548: 61000c5e     bsr.w      $21a8
00154c: 4a00         tst.b      d0
00154e: 673c         beq.b      $158c
001550: 206f0002     movea.l    $2(a7), a0
001554: 0c28000b0004 cmpi.b     #$b, $4(a0)
00155a: 6612         bne.b      $156e
00155c: 202f0002     move.l     $2(a7), d0
001560: 5a80         addq.l     #$5, d0
001562: 61000f8e     bsr.w      $24f2
001566: 4a00         tst.b      d0
001568: 6704         beq.b      $156e
00156a: 3ebc0001     move.w     #$1, (a7)
00156e: 206f0002     movea.l    $2(a7), a0
001572: 0c2800160004 cmpi.b     #$16, $4(a0)
001578: 6612         bne.b      $158c
00157a: 202f0002     move.l     $2(a7), d0
00157e: 5a80         addq.l     #$5, d0
001580: 61000ff8     bsr.w      $257a
001584: 4a80         tst.l      d0
001586: 6704         beq.b      $158c
001588: 3ebc0001     move.w     #$1, (a7)
00158c: 3057         movea.w    (a7), a0
00158e: 2208         move.l     a0, d1
001590: 202f0002     move.l     $2(a7), d0
001594: 6100fd8c     bsr.w      $1322
001598: 7000         moveq      #$0, d0
00159a: 548f         addq.l     #$2, a7
00159c: 4ced0100fffc movem.l    -$4(a5), a0
0015a2: 4e5d         unlk       a5
0015a4: 4e75         rts        
0015a6: 4e550000     link.w     a5, #$0
0015aa: 48e7c080     movem.l    d0-d1/a0, -(a7)
0015ae: 4feffdb6     lea.l      -$24a(a7), a7
0015b2: 3f7cffff0248 move.w     #$ffff, $248(a7)
0015b8: 61000bee     bsr.w      $21a8
0015bc: 4a00         tst.b      d0
0015be: 670000e2     beq.w      $16a2
0015c2: 61000c1e     bsr.w      $21e2
0015c6: 4a00         tst.b      d0
0015c8: 670000d8     beq.w      $16a2
0015cc: 41ef000a     lea.l      $a(a7), a0
0015d0: 2208         move.l     a0, d1
0015d2: 202f024a     move.l     $24a(a7), d0
0015d6: 5880         addq.l     #$4, d0
0015d8: 61001574     bsr.w      $2b4e
0015dc: 3f400246     move.w     d0, $246(a7)
0015e0: 0c6f02590246 cmpi.w     #$259, $246(a7)
0015e6: 6718         beq.b      $1600
0015e8: 206f024a     movea.l    $24a(a7), a0
0015ec: 0c6800030004 cmpi.w     #$3, $4(a0)
0015f2: 66000094     bne.w      $1688
0015f6: 0c6f02740246 cmpi.w     #$274, $246(a7)
0015fc: 6600008a     bne.w      $1688
001600: 426f022c     clr.w      $22c(a7)
001604: 41ef000a     lea.l      $a(a7), a0
001608: 2008         move.l     a0, d0
00160a: 6100295c     bsr.w      $3f68
00160e: 72ff         moveq      #$ff, d1
001610: b280         cmp.l      d0, d1
001612: 6700008e     beq.w      $16a2
001616: 61001024     bsr.w      $263c
00161a: 72ff         moveq      #$ff, d1
00161c: b280         cmp.l      d0, d1
00161e: 67000082     beq.w      $16a2
001622: 223c00002402 move.l     #$2402, d1
001628: 202e96b8     move.l     -$6948(a6), d0
00162c: 61005e48     bsr.w      $7476
001630: 72ff         moveq      #$ff, d1
001632: b280         cmp.l      d0, d1
001634: 6700006c     beq.w      $16a2
001638: 4857         pea.l      (a7)
00163a: 41ef0008     lea.l      $8(a7), a0
00163e: 2208         move.l     a0, d1
001640: 202e96b4     move.l     -$694c(a6), d0
001644: 6100248a     bsr.w      $3ad0
001648: 588f         addq.l     #$4, a7
00164a: 206f0004     movea.l    $4(a7), a0
00164e: 0c50000a     cmpi.w     #$a, (a0)
001652: 662a         bne.b      $167e
001654: 202f024a     move.l     $24a(a7), d0
001658: 5880         addq.l     #$4, d0
00165a: 61000c9e     bsr.w      $22fa
00165e: 61002142     bsr.w      $37a2
001662: 0c6f02740246 cmpi.w     #$274, $246(a7)
001668: 6610         bne.b      $167a
00166a: 7000         moveq      #$0, d0
00166c: 302f0246     move.w     $246(a7), d0
001670: 61000af8     bsr.w      $216a
001674: 3f400248     move.w     d0, $248(a7)
001678: 6004         bra.b      $167e
00167a: 426f0248     clr.w      $248(a7)
00167e: 202f0004     move.l     $4(a7), d0
001682: 61007402     bsr.w      $8a86
001686: 601a         bra.b      $16a2
001688: 7000         moveq      #$0, d0
00168a: 302f0246     move.w     $246(a7), d0
00168e: 61000ada     bsr.w      $216a
001692: 3f400008     move.w     d0, $8(a7)
001696: 0c40ffff     cmpi.w     #$ffff, d0
00169a: 6706         beq.b      $16a2
00169c: 3f6f00080248 move.w     $8(a7), $248(a7)
0016a2: 306f0248     movea.w    $248(a7), a0
0016a6: 2208         move.l     a0, d1
0016a8: 202f024a     move.l     $24a(a7), d0
0016ac: 6100fc74     bsr.w      $1322
0016b0: 7000         moveq      #$0, d0
0016b2: 4fef024a     lea.l      $24a(a7), a7
0016b6: 4ced0100fffc movem.l    -$4(a5), a0
0016bc: 4e5d         unlk       a5
0016be: 4e75         rts        
0016c0: 4e550000     link.w     a5, #$0
0016c4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0016c8: 4feffff6     lea.l      -$a(a7), a7
0016cc: 426f0008     clr.w      $8(a7)
0016d0: 61000ad6     bsr.w      $21a8
0016d4: 4a00         tst.b      d0
0016d6: 6750         beq.b      $1728
0016d8: 61000b08     bsr.w      $21e2
0016dc: 4a00         tst.b      d0
0016de: 6748         beq.b      $1728
0016e0: 61000f5a     bsr.w      $263c
0016e4: 72ff         moveq      #$ff, d1
0016e6: b280         cmp.l      d0, d1
0016e8: 673e         beq.b      $1728
0016ea: 223c0000240b move.l     #$240b, d1
0016f0: 202e96b8     move.l     -$6948(a6), d0
0016f4: 61005d80     bsr.w      $7476
0016f8: 72ff         moveq      #$ff, d1
0016fa: b280         cmp.l      d0, d1
0016fc: 672a         beq.b      $1728
0016fe: 4857         pea.l      (a7)
001700: 41ef0008     lea.l      $8(a7), a0
001704: 2208         move.l     a0, d1
001706: 202e96b4     move.l     -$694c(a6), d0
00170a: 610023c4     bsr.w      $3ad0
00170e: 588f         addq.l     #$4, a7
001710: 206f0004     movea.l    $4(a7), a0
001714: 0c500001     cmpi.w     #$1, (a0)
001718: 6606         bne.b      $1720
00171a: 3f7c00010008 move.w     #$1, $8(a7)
001720: 202f0004     move.l     $4(a7), d0
001724: 61007360     bsr.w      $8a86
001728: 306f0008     movea.w    $8(a7), a0
00172c: 2208         move.l     a0, d1
00172e: 202f000a     move.l     $a(a7), d0
001732: 6100fbee     bsr.w      $1322
001736: 7000         moveq      #$0, d0
001738: 4fef000a     lea.l      $a(a7), a7
00173c: 4ced0100fffc movem.l    -$4(a5), a0
001742: 4e5d         unlk       a5
001744: 4e75         rts        
001746: 4e550000     link.w     a5, #$0
00174a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00174e: 518f         subq.l     #$8, a7
001750: 3f7cffff0006 move.w     #$ffff, $6(a7)
001756: 61000a50     bsr.w      $21a8
00175a: 4a00         tst.b      d0
00175c: 6764         beq.b      $17c2
00175e: 486f0001     pea.l      $1(a7)
001762: 41ee84f4     lea.l      -$7b0c(a6), a0
001766: 2208         move.l     a0, d1
001768: 202f000c     move.l     $c(a7), d0
00176c: 5880         addq.l     #$4, d0
00176e: 61001336     bsr.w      $2aa6
001772: 588f         addq.l     #$4, a7
001774: 3f400004     move.w     d0, $4(a7)
001778: 0c6f02590004 cmpi.w     #$259, $4(a7)
00177e: 6628         bne.b      $17a8
001780: 4a2f0001     tst.b      $1(a7)
001784: 661a         bne.b      $17a0
001786: 0cae00000bb88506 cmpi.l     #$bb8, -$7afa(a6)
00178e: 6210         bhi.b      $17a0
001790: 202f0008     move.l     $8(a7), d0
001794: 5880         addq.l     #$4, d0
001796: 61000caa     bsr.w      $2442
00179a: 426f0006     clr.w      $6(a7)
00179e: 6022         bra.b      $17c2
0017a0: 3f7cfffe0006 move.w     #$fffe, $6(a7)
0017a6: 601a         bra.b      $17c2
0017a8: 7000         moveq      #$0, d0
0017aa: 302f0004     move.w     $4(a7), d0
0017ae: 610009ba     bsr.w      $216a
0017b2: 3f400002     move.w     d0, $2(a7)
0017b6: 0c40ffff     cmpi.w     #$ffff, d0
0017ba: 6706         beq.b      $17c2
0017bc: 3f6f00020006 move.w     $2(a7), $6(a7)
0017c2: 306f0006     movea.w    $6(a7), a0
0017c6: 2208         move.l     a0, d1
0017c8: 202f0008     move.l     $8(a7), d0
0017cc: 6100fb54     bsr.w      $1322
0017d0: 7000         moveq      #$0, d0
0017d2: 508f         addq.l     #$8, a7
0017d4: 4ced0100fffc movem.l    -$4(a5), a0
0017da: 4e5d         unlk       a5
0017dc: 4e75         rts        
0017de: 4e550000     link.w     a5, #$0
0017e2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0017e6: 558f         subq.l     #$2, a7
0017e8: 4257         clr.w      (a7)
0017ea: 610009bc     bsr.w      $21a8
0017ee: 4a00         tst.b      d0
0017f0: 6720         beq.b      $1812
0017f2: 61000c3e     bsr.w      $2432
0017f6: 4a00         tst.b      d0
0017f8: 6718         beq.b      $1812
0017fa: 41ee84f4     lea.l      -$7b0c(a6), a0
0017fe: 2008         move.l     a0, d0
001800: 61002a14     bsr.w      $4216
001804: 72ff         moveq      #$ff, d1
001806: b280         cmp.l      d0, d1
001808: 6708         beq.b      $1812
00180a: 61001f96     bsr.w      $37a2
00180e: 3ebc0001     move.w     #$1, (a7)
001812: 3057         movea.w    (a7), a0
001814: 2208         move.l     a0, d1
001816: 202f0002     move.l     $2(a7), d0
00181a: 6100fb06     bsr.w      $1322
00181e: 7000         moveq      #$0, d0
001820: 548f         addq.l     #$2, a7
001822: 4ced0100fffc movem.l    -$4(a5), a0
001828: 4e5d         unlk       a5
00182a: 4e75         rts        
00182c: 4e550000     link.w     a5, #$0
001830: 48e7c080     movem.l    d0-d1/a0, -(a7)
001834: 558f         subq.l     #$2, a7
001836: 4257         clr.w      (a7)
001838: 6100096e     bsr.w      $21a8
00183c: 4a00         tst.b      d0
00183e: 6726         beq.b      $1866
001840: 61000aa8     bsr.w      $22ea
001844: 4a00         tst.b      d0
001846: 671e         beq.b      $1866
001848: 223c00002403 move.l     #$2403, d1
00184e: 202e96b8     move.l     -$6948(a6), d0
001852: 61005c22     bsr.w      $7476
001856: 72ff         moveq      #$ff, d1
001858: b280         cmp.l      d0, d1
00185a: 670a         beq.b      $1866
00185c: 7000         moveq      #$0, d0
00185e: 61000a9a     bsr.w      $22fa
001862: 3ebc0001     move.w     #$1, (a7)
001866: 3057         movea.w    (a7), a0
001868: 2208         move.l     a0, d1
00186a: 202f0002     move.l     $2(a7), d0
00186e: 6100fab2     bsr.w      $1322
001872: 7000         moveq      #$0, d0
001874: 548f         addq.l     #$2, a7
001876: 4ced0100fffc movem.l    -$4(a5), a0
00187c: 4e5d         unlk       a5
00187e: 4e75         rts        
001880: 4e550000     link.w     a5, #$0
001884: 48e7c080     movem.l    d0-d1/a0, -(a7)
001888: 558f         subq.l     #$2, a7
00188a: 4257         clr.w      (a7)
00188c: 6100091a     bsr.w      $21a8
001890: 4a00         tst.b      d0
001892: 6712         beq.b      $18a6
001894: 61000b9c     bsr.w      $2432
001898: 4a00         tst.b      d0
00189a: 670a         beq.b      $18a6
00189c: 7000         moveq      #$0, d0
00189e: 61000ba2     bsr.w      $2442
0018a2: 3ebc0001     move.w     #$1, (a7)
0018a6: 3057         movea.w    (a7), a0
0018a8: 2208         move.l     a0, d1
0018aa: 202f0002     move.l     $2(a7), d0
0018ae: 6100fa72     bsr.w      $1322
0018b2: 7000         moveq      #$0, d0
0018b4: 548f         addq.l     #$2, a7
0018b6: 4ced0100fffc movem.l    -$4(a5), a0
0018bc: 4e5d         unlk       a5
0018be: 4e75         rts        
0018c0: 4e550000     link.w     a5, #$0
0018c4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0018c8: 558f         subq.l     #$2, a7
0018ca: 4257         clr.w      (a7)
0018cc: 610008da     bsr.w      $21a8
0018d0: 4a00         tst.b      d0
0018d2: 6608         bne.b      $18dc
0018d4: 6100093c     bsr.w      $2212
0018d8: 4a00         tst.b      d0
0018da: 670e         beq.b      $18ea
0018dc: 61000816     bsr.w      $20f4
0018e0: 72ff         moveq      #$ff, d1
0018e2: b280         cmp.l      d0, d1
0018e4: 6704         beq.b      $18ea
0018e6: 3ebc0001     move.w     #$1, (a7)
0018ea: 3057         movea.w    (a7), a0
0018ec: 2208         move.l     a0, d1
0018ee: 202f0002     move.l     $2(a7), d0
0018f2: 6100fa2e     bsr.w      $1322
0018f6: 7000         moveq      #$0, d0
0018f8: 548f         addq.l     #$2, a7
0018fa: 4ced0100fffc movem.l    -$4(a5), a0
001900: 4e5d         unlk       a5
001902: 4e75         rts        
001904: 4e550000     link.w     a5, #$0
001908: 48e7c080     movem.l    d0-d1/a0, -(a7)
00190c: 558f         subq.l     #$2, a7
00190e: 4257         clr.w      (a7)
001910: 61000896     bsr.w      $21a8
001914: 4a00         tst.b      d0
001916: 6608         bne.b      $1920
001918: 610008f8     bsr.w      $2212
00191c: 4a00         tst.b      d0
00191e: 670e         beq.b      $192e
001920: 61000806     bsr.w      $2128
001924: 72ff         moveq      #$ff, d1
001926: b280         cmp.l      d0, d1
001928: 6704         beq.b      $192e
00192a: 3ebc0001     move.w     #$1, (a7)
00192e: 3057         movea.w    (a7), a0
001930: 2208         move.l     a0, d1
001932: 202f0002     move.l     $2(a7), d0
001936: 6100f9ea     bsr.w      $1322
00193a: 7000         moveq      #$0, d0
00193c: 548f         addq.l     #$2, a7
00193e: 4ced0100fffc movem.l    -$4(a5), a0
001944: 4e5d         unlk       a5
001946: 4e75         rts        
001948: 4e550000     link.w     a5, #$0
00194c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001950: 558f         subq.l     #$2, a7
001952: 4257         clr.w      (a7)
001954: 61000852     bsr.w      $21a8
001958: 4a00         tst.b      d0
00195a: 6608         bne.b      $1964
00195c: 610008b4     bsr.w      $2212
001960: 4a00         tst.b      d0
001962: 670a         beq.b      $196e
001964: 7001         moveq      #$1, d0
001966: 610003da     bsr.w      $1d42
00196a: 3ebc0001     move.w     #$1, (a7)
00196e: 3057         movea.w    (a7), a0
001970: 2208         move.l     a0, d1
001972: 202f0002     move.l     $2(a7), d0
001976: 6100f9aa     bsr.w      $1322
00197a: 7000         moveq      #$0, d0
00197c: 548f         addq.l     #$2, a7
00197e: 4ced0100fffc movem.l    -$4(a5), a0
001984: 4e5d         unlk       a5
001986: 4e75         rts        
001988: 4e550000     link.w     a5, #$0
00198c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001990: 558f         subq.l     #$2, a7
001992: 4257         clr.w      (a7)
001994: 61000812     bsr.w      $21a8
001998: 4a00         tst.b      d0
00199a: 6608         bne.b      $19a4
00199c: 61000874     bsr.w      $2212
0019a0: 4a00         tst.b      d0
0019a2: 670a         beq.b      $19ae
0019a4: 7000         moveq      #$0, d0
0019a6: 6100039a     bsr.w      $1d42
0019aa: 3ebc0001     move.w     #$1, (a7)
0019ae: 3057         movea.w    (a7), a0
0019b0: 2208         move.l     a0, d1
0019b2: 202f0002     move.l     $2(a7), d0
0019b6: 6100f96a     bsr.w      $1322
0019ba: 7000         moveq      #$0, d0
0019bc: 548f         addq.l     #$2, a7
0019be: 4ced0100fffc movem.l    -$4(a5), a0
0019c4: 4e5d         unlk       a5
0019c6: 4e75         rts        
0019c8: 4e550000     link.w     a5, #$0
0019cc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0019d0: 558f         subq.l     #$2, a7
0019d2: 4257         clr.w      (a7)
0019d4: 610007d2     bsr.w      $21a8
0019d8: 4a00         tst.b      d0
0019da: 6718         beq.b      $19f4
0019dc: 223c00002405 move.l     #$2405, d1
0019e2: 202e96b8     move.l     -$6948(a6), d0
0019e6: 61005a8e     bsr.w      $7476
0019ea: 72ff         moveq      #$ff, d1
0019ec: b280         cmp.l      d0, d1
0019ee: 6704         beq.b      $19f4
0019f0: 3ebc0001     move.w     #$1, (a7)
0019f4: 3057         movea.w    (a7), a0
0019f6: 2208         move.l     a0, d1
0019f8: 202f0002     move.l     $2(a7), d0
0019fc: 6100f924     bsr.w      $1322
001a00: 7000         moveq      #$0, d0
001a02: 548f         addq.l     #$2, a7
001a04: 4ced0100fffc movem.l    -$4(a5), a0
001a0a: 4e5d         unlk       a5
001a0c: 4e75         rts        
001a0e: 4e550000     link.w     a5, #$0
001a12: 48e7c080     movem.l    d0-d1/a0, -(a7)
001a16: 558f         subq.l     #$2, a7
001a18: 4257         clr.w      (a7)
001a1a: 6100078c     bsr.w      $21a8
001a1e: 4a00         tst.b      d0
001a20: 6718         beq.b      $1a3a
001a22: 223c00002462 move.l     #$2462, d1
001a28: 202e96b8     move.l     -$6948(a6), d0
001a2c: 61005a48     bsr.w      $7476
001a30: 72ff         moveq      #$ff, d1
001a32: b280         cmp.l      d0, d1
001a34: 6704         beq.b      $1a3a
001a36: 3ebc0001     move.w     #$1, (a7)
001a3a: 3057         movea.w    (a7), a0
001a3c: 2208         move.l     a0, d1
001a3e: 202f0002     move.l     $2(a7), d0
001a42: 6100f8de     bsr.w      $1322
001a46: 548f         addq.l     #$2, a7
001a48: 4ced0100fffc movem.l    -$4(a5), a0
001a4e: 4e5d         unlk       a5
001a50: 4e75         rts        
001a52: 4e550000     link.w     a5, #$0
001a56: 48e7c080     movem.l    d0-d1/a0, -(a7)
001a5a: 558f         subq.l     #$2, a7
001a5c: 4257         clr.w      (a7)
001a5e: 61000748     bsr.w      $21a8
001a62: 4a00         tst.b      d0
001a64: 6608         bne.b      $1a6e
001a66: 610007aa     bsr.w      $2212
001a6a: 4a00         tst.b      d0
001a6c: 6718         beq.b      $1a86
001a6e: 223c00002460 move.l     #$2460, d1
001a74: 202e96b8     move.l     -$6948(a6), d0
001a78: 610059fc     bsr.w      $7476
001a7c: 72ff         moveq      #$ff, d1
001a7e: b280         cmp.l      d0, d1
001a80: 6704         beq.b      $1a86
001a82: 3ebc0001     move.w     #$1, (a7)
001a86: 3057         movea.w    (a7), a0
001a88: 2208         move.l     a0, d1
001a8a: 202f0002     move.l     $2(a7), d0
001a8e: 6100f892     bsr.w      $1322
001a92: 548f         addq.l     #$2, a7
001a94: 4ced0100fffc movem.l    -$4(a5), a0
001a9a: 4e5d         unlk       a5
001a9c: 4e75         rts        
001a9e: 4e550000     link.w     a5, #$0
001aa2: 48e7c080     movem.l    d0-d1/a0, -(a7)
001aa6: 558f         subq.l     #$2, a7
001aa8: 4257         clr.w      (a7)
001aaa: 610006fc     bsr.w      $21a8
001aae: 4a00         tst.b      d0
001ab0: 6608         bne.b      $1aba
001ab2: 6100075e     bsr.w      $2212
001ab6: 4a00         tst.b      d0
001ab8: 6718         beq.b      $1ad2
001aba: 223c00002461 move.l     #$2461, d1
001ac0: 202e96b8     move.l     -$6948(a6), d0
001ac4: 610059b0     bsr.w      $7476
001ac8: 72ff         moveq      #$ff, d1
001aca: b280         cmp.l      d0, d1
001acc: 6704         beq.b      $1ad2
001ace: 3ebc0001     move.w     #$1, (a7)
001ad2: 3057         movea.w    (a7), a0
001ad4: 2208         move.l     a0, d1
001ad6: 202f0002     move.l     $2(a7), d0
001ada: 6100f846     bsr.w      $1322
001ade: 548f         addq.l     #$2, a7
001ae0: 4ced0100fffc movem.l    -$4(a5), a0
001ae6: 4e5d         unlk       a5
001ae8: 4e75         rts        
001aea: 4e550000     link.w     a5, #$0
001aee: 48e7c080     movem.l    d0-d1/a0, -(a7)
001af2: 4fefffec     lea.l      -$14(a7), a7
001af6: 426f0012     clr.w      $12(a7)
001afa: 41ef0004     lea.l      $4(a7), a0
001afe: 2008         move.l     a0, d0
001b00: 610002ac     bsr.w      $1dae
001b04: 4a6f0004     tst.w      $4(a7)
001b08: 6606         bne.b      $1b10
001b0a: 3f7c00010012 move.w     #$1, $12(a7)
001b10: 306f0012     movea.w    $12(a7), a0
001b14: 2208         move.l     a0, d1
001b16: 202f0014     move.l     $14(a7), d0
001b1a: 6100f806     bsr.w      $1322
001b1e: 0c6f00010012 cmpi.w     #$1, $12(a7)
001b24: 6626         bne.b      $1b4c
001b26: 7203         moveq      #$3, d1
001b28: 41fa0205     lea.l      $1d2f(pc), a0
001b2c: 2008         move.l     a0, d0
001b2e: 6100561e     bsr.w      $714e
001b32: 2e80         move.l     d0, (a7)
001b34: 72ff         moveq      #$ff, d1
001b36: b280         cmp.l      d0, d1
001b38: 6712         beq.b      $1b4c
001b3a: 42a7         clr.l      -(a7)
001b3c: 222f0004     move.l     $4(a7), d1
001b40: 203c00007f12 move.l     #$7f12, d0
001b46: 6100654e     bsr.w      $8096
001b4a: 588f         addq.l     #$4, a7
001b4c: 4fef0014     lea.l      $14(a7), a7
001b50: 4ced0100fffc movem.l    -$4(a5), a0
001b56: 4e5d         unlk       a5
001b58: 4e75         rts        
001b5a: 4e550000     link.w     a5, #$0
001b5e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001b62: 598f         subq.l     #$4, a7
001b64: 7203         moveq      #$3, d1
001b66: 41fa01cd     lea.l      $1d35(pc), a0
001b6a: 2008         move.l     a0, d0
001b6c: 610055e0     bsr.w      $714e
001b70: 2e80         move.l     d0, (a7)
001b72: 72ff         moveq      #$ff, d1
001b74: b280         cmp.l      d0, d1
001b76: 6712         beq.b      $1b8a
001b78: 42a7         clr.l      -(a7)
001b7a: 222f0004     move.l     $4(a7), d1
001b7e: 203c00007f12 move.l     #$7f12, d0
001b84: 61006510     bsr.w      $8096
001b88: 588f         addq.l     #$4, a7
001b8a: 588f         addq.l     #$4, a7
001b8c: 4ced0100fffc movem.l    -$4(a5), a0
001b92: 4e5d         unlk       a5
001b94: 4e75         rts        
001b96: 4e550000     link.w     a5, #$0
001b9a: 48e7c080     movem.l    d0-d1/a0, -(a7)
001b9e: 5d8f         subq.l     #$6, a7
001ba0: 426f0004     clr.w      $4(a7)
001ba4: 61000602     bsr.w      $21a8
001ba8: 4a00         tst.b      d0
001baa: 673e         beq.b      $1bea
001bac: 7203         moveq      #$3, d1
001bae: 41fa018b     lea.l      $1d3b(pc), a0
001bb2: 2008         move.l     a0, d0
001bb4: 61005598     bsr.w      $714e
001bb8: 2e80         move.l     d0, (a7)
001bba: 72ff         moveq      #$ff, d1
001bbc: b280         cmp.l      d0, d1
001bbe: 672a         beq.b      $1bea
001bc0: 206f0006     movea.l    $6(a7), a0
001bc4: 2f280004     move.l     $4(a0), -(a7)
001bc8: 222f0004     move.l     $4(a7), d1
001bcc: 203c00007f11 move.l     #$7f11, d0
001bd2: 610064c2     bsr.w      $8096
001bd6: 588f         addq.l     #$4, a7
001bd8: 72ff         moveq      #$ff, d1
001bda: b280         cmp.l      d0, d1
001bdc: 6706         beq.b      $1be4
001bde: 3f7c00010004 move.w     #$1, $4(a7)
001be4: 2017         move.l     (a7), d0
001be6: 61006e4e     bsr.w      $8a36
001bea: 306f0004     movea.w    $4(a7), a0
001bee: 2208         move.l     a0, d1
001bf0: 202f0006     move.l     $6(a7), d0
001bf4: 6100f72c     bsr.w      $1322
001bf8: 5c8f         addq.l     #$6, a7
001bfa: 4ced0100fffc movem.l    -$4(a5), a0
001c00: 4e5d         unlk       a5
001c02: 4e75         rts        
001c04: 4e550000     link.w     a5, #$0
001c08: 48e7c080     movem.l    d0-d1/a0, -(a7)
001c0c: 558f         subq.l     #$2, a7
001c0e: 4257         clr.w      (a7)
001c10: 61000596     bsr.w      $21a8
001c14: 4a00         tst.b      d0
001c16: 6608         bne.b      $1c20
001c18: 610005f8     bsr.w      $2212
001c1c: 4a00         tst.b      d0
001c1e: 6718         beq.b      $1c38
001c20: 223c0000240d move.l     #$240d, d1
001c26: 202e96b8     move.l     -$6948(a6), d0
001c2a: 6100584a     bsr.w      $7476
001c2e: 72ff         moveq      #$ff, d1
001c30: b280         cmp.l      d0, d1
001c32: 6704         beq.b      $1c38
001c34: 3ebc0001     move.w     #$1, (a7)
001c38: 3057         movea.w    (a7), a0
001c3a: 2208         move.l     a0, d1
001c3c: 202f0002     move.l     $2(a7), d0
001c40: 6100f6e0     bsr.w      $1322
001c44: 548f         addq.l     #$2, a7
001c46: 4ced0100fffc movem.l    -$4(a5), a0
001c4c: 4e5d         unlk       a5
001c4e: 4e75         rts        
001c50: 4e550000     link.w     a5, #$0
001c54: 48e7c080     movem.l    d0-d1/a0, -(a7)
001c58: 558f         subq.l     #$2, a7
001c5a: 4257         clr.w      (a7)
001c5c: 6100054a     bsr.w      $21a8
001c60: 4a00         tst.b      d0
001c62: 6608         bne.b      $1c6c
001c64: 610005ac     bsr.w      $2212
001c68: 4a00         tst.b      d0
001c6a: 6718         beq.b      $1c84
001c6c: 223c0000240e move.l     #$240e, d1
001c72: 202e96b8     move.l     -$6948(a6), d0
001c76: 610057fe     bsr.w      $7476
001c7a: 72ff         moveq      #$ff, d1
001c7c: b280         cmp.l      d0, d1
001c7e: 6704         beq.b      $1c84
001c80: 3ebc0001     move.w     #$1, (a7)
001c84: 3057         movea.w    (a7), a0
001c86: 2208         move.l     a0, d1
001c88: 202f0002     move.l     $2(a7), d0
001c8c: 6100f694     bsr.w      $1322
001c90: 548f         addq.l     #$2, a7
001c92: 4ced0100fffc movem.l    -$4(a5), a0
001c98: 4e5d         unlk       a5
001c9a: 4e75         rts        
001c9c: 4e550000     link.w     a5, #$0
001ca0: 48e7c8c0     movem.l    d0-d1/d4/a0-a1, -(a7)
001ca4: 518f         subq.l     #$8, a7
001ca6: 48780005     pea.l      $5.w
001caa: 486f0004     pea.l      $4(a7)
001cae: 41ef000c     lea.l      $c(a7), a0
001cb2: 2208         move.l     a0, d1
001cb4: 202e96ac     move.l     -$6954(a6), d0
001cb8: 61002f5c     bsr.w      $4c16
001cbc: 508f         addq.l     #$8, a7
001cbe: 72ff         moveq      #$ff, d1
001cc0: b280         cmp.l      d0, d1
001cc2: 6742         beq.b      $1d06
001cc4: 7800         moveq      #$0, d4
001cc6: 6002         bra.b      $1cca
001cc8: 5284         addq.l     #$1, d4
001cca: 703e         moveq      #$3e, d0
001ccc: b084         cmp.l      d4, d0
001cce: 6f14         ble.b      $1ce4
001cd0: 41ee96bc     lea.l      -$6944(a6), a0
001cd4: 226f0004     movea.l    $4(a7), a1
001cd8: 7000         moveq      #$0, d0
001cda: 30290002     move.w     $2(a1), d0
001cde: b0b04e00     cmp.l      (a0, d4.l * 8), d0
001ce2: 66e4         bne.b      $1cc8
001ce4: 703e         moveq      #$3e, d0
001ce6: b084         cmp.l      d4, d0
001ce8: 6f14         ble.b      $1cfe
001cea: 2217         move.l     (a7), d1
001cec: 202f0004     move.l     $4(a7), d0
001cf0: 41ee96bc     lea.l      -$6944(a6), a0
001cf4: 20704e04     movea.l    $4(a0, d4.l), a0
001cf8: 4e90         jsr        (a0)
001cfa: 72ff         moveq      #$ff, d1
001cfc: b280         cmp.l      d0, d1
001cfe: 202f0004     move.l     $4(a7), d0
001d02: 61006d82     bsr.w      $8a86
001d06: 223c00002440 move.l     #$2440, d1
001d0c: 202e96ac     move.l     -$6954(a6), d0
001d10: 61007386     bsr.w      $9098
001d14: 508f         addq.l     #$8, a7
001d16: 4ced0312fff0 movem.l    -$10(a5), d1/d4/a0-a1
001d1c: 4e5d         unlk       a5
001d1e: 4e75         rts        
001d20: 2f706970652f6273635f move.l     $652f6273(a0, invalid.w), $635f(a7)
001d2a: 7379         .dc.w      $7379
001d2c: 6e63         bgt.b      $1d91
001d2e: 002f63633933 ori.b      #$63, $3933(a7)
001d34: 002f63633933 ori.b      #$63, $3933(a7)
001d3a: 002f63633933 ori.b      #$63, $3933(a7)
001d40: 00004e55     ori.b      #$55, d0
001d44: 000048e7     ori.b      #$e7, d0
001d48: c080         and.l      d0, d0
001d4a: 4fefffee     lea.l      -$12(a7), a7
001d4e: 102f0015     move.b     $15(a7), d0
001d52: b02e98c3     cmp.b      -$673d(a6), d0
001d56: 6748         beq.b      $1da0
001d58: 1d6f001598c3 move.b     $15(a7), -$673d(a6)
001d5e: 0c2f00010015 cmpi.b     #$1, $15(a7)
001d64: 663a         bne.b      $1da0
001d66: 3ebc0002     move.w     #$2, (a7)
001d6a: 3f7c00020002 move.w     #$2, $2(a7)
001d70: 2f6e98b40004 move.l     -$674c(a6), $4(a7)
001d76: 2f6e98b80008 move.l     -$6748(a6), $8(a7)
001d7c: 2f6e98bc000c move.l     -$6744(a6), $c(a7)
001d82: 3f6e98c00010 move.w     -$6740(a6), $10(a7)
001d88: 48780005     pea.l      $5.w
001d8c: 48780012     pea.l      $12.w
001d90: 41ef0008     lea.l      $8(a7), a0
001d94: 2208         move.l     a0, d1
001d96: 202e98b0     move.l     -$6750(a6), d0
001d9a: 61002f44     bsr.w      $4ce0
001d9e: 508f         addq.l     #$8, a7
001da0: 4fef0012     lea.l      $12(a7), a7
001da4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001daa: 4e5d         unlk       a5
001dac: 4e75         rts        
001dae: 4e550000     link.w     a5, #$0
001db2: 48e78080     movem.l    d0/a0, -(a7)
001db6: 2057         movea.l    (a7), a0
001db8: 20ae98b4     move.l     -$674c(a6), (a0)
001dbc: 216e98b80004 move.l     -$6748(a6), $4(a0)
001dc2: 216e98bc0008 move.l     -$6744(a6), $8(a0)
001dc8: 316e98c0000c move.w     -$6740(a6), $c(a0)
001dce: 4a2e98c2     tst.b      -$673e(a6)
001dd2: 6704         beq.b      $1dd8
001dd4: 7000         moveq      #$0, d0
001dd6: 6002         bra.b      $1dda
001dd8: 70ff         moveq      #$ff, d0
001dda: 4ced0100fffc movem.l    -$4(a5), a0
001de0: 4e5d         unlk       a5
001de2: 4e75         rts        
001de4: 4e550000     link.w     a5, #$0
001de8: 48e7c080     movem.l    d0-d1/a0, -(a7)
001dec: 558f         subq.l     #$2, a7
001dee: 1f7c00010001 move.b     #$1, $1(a7)
001df4: 4aaf0002     tst.l      $2(a7)
001df8: 6606         bne.b      $1e00
001dfa: 422e98c2     clr.b      -$673e(a6)
001dfe: 6044         bra.b      $1e44
001e00: 4a2e98c2     tst.b      -$673e(a6)
001e04: 671e         beq.b      $1e24
001e06: 4878000e     pea.l      $e.w
001e0a: 41ee98b4     lea.l      -$674c(a6), a0
001e0e: 2208         move.l     a0, d1
001e10: 202f0006     move.l     $6(a7), d0
001e14: 61006ef6     bsr.w      $8d0c
001e18: 588f         addq.l     #$4, a7
001e1a: 4a80         tst.l      d0
001e1c: 6606         bne.b      $1e24
001e1e: 422f0001     clr.b      $1(a7)
001e22: 6020         bra.b      $1e44
001e24: 206f0002     movea.l    $2(a7), a0
001e28: 2d5098b4     move.l     (a0), -$674c(a6)
001e2c: 2d68000498b8 move.l     $4(a0), -$6748(a6)
001e32: 2d68000898bc move.l     $8(a0), -$6744(a6)
001e38: 3d68000c98c0 move.w     $c(a0), -$6740(a6)
001e3e: 1d7c000198c2 move.b     #$1, -$673e(a6)
001e44: 102f0001     move.b     $1(a7), d0
001e48: 548f         addq.l     #$2, a7
001e4a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001e50: 4e5d         unlk       a5
001e52: 4e75         rts        
001e54: 4e550000     link.w     a5, #$0
001e58: 48e7c080     movem.l    d0-d1/a0, -(a7)
001e5c: 7203         moveq      #$3, d1
001e5e: 41fa01c8     lea.l      $2028(pc), a0
001e62: 2008         move.l     a0, d0
001e64: 610052e8     bsr.w      $714e
001e68: 2d4098ac     move.l     d0, -$6754(a6)
001e6c: 70ff         moveq      #$ff, d0
001e6e: b0ae98ac     cmp.l      -$6754(a6), d0
001e72: 223c00002442 move.l     #$2442, d1
001e78: 202e98ac     move.l     -$6754(a6), d0
001e7c: 6100721a     bsr.w      $9098
001e80: 72ff         moveq      #$ff, d1
001e82: b280         cmp.l      d0, d1
001e84: 6708         beq.b      $1e8e
001e86: 70ff         moveq      #$ff, d0
001e88: b0ae98ac     cmp.l      -$6754(a6), d0
001e8c: 6604         bne.b      $1e92
001e8e: 70ff         moveq      #$ff, d0
001e90: 6002         bra.b      $1e94
001e92: 7000         moveq      #$0, d0
001e94: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001e9a: 4e5d         unlk       a5
001e9c: 4e75         rts        
001e9e: 4e550000     link.w     a5, #$0
001ea2: 48e78000     movem.l    d0, -(a7)
001ea6: 7007         moveq      #$7, d0
001ea8: 610027d6     bsr.w      $4680
001eac: 2d4098b0     move.l     d0, -$6750(a6)
001eb0: 4aae98b0     tst.l      -$6750(a6)
001eb4: 6c04         bge.b      $1eba
001eb6: 70ff         moveq      #$ff, d0
001eb8: 6002         bra.b      $1ebc
001eba: 7000         moveq      #$0, d0
001ebc: 4e5d         unlk       a5
001ebe: 4e75         rts        
001ec0: 4e550000     link.w     a5, #$0
001ec4: 48e78000     movem.l    d0, -(a7)
001ec8: 70ff         moveq      #$ff, d0
001eca: b0ae98ac     cmp.l      -$6754(a6), d0
001ece: 670e         beq.b      $1ede
001ed0: 202e98ac     move.l     -$6754(a6), d0
001ed4: 61006b60     bsr.w      $8a36
001ed8: 70ff         moveq      #$ff, d0
001eda: 2d4098ac     move.l     d0, -$6754(a6)
001ede: 4e5d         unlk       a5
001ee0: 4e75         rts        
001ee2: 4e550000     link.w     a5, #$0
001ee6: 48e78000     movem.l    d0, -(a7)
001eea: 70ff         moveq      #$ff, d0
001eec: b0ae98b0     cmp.l      -$6750(a6), d0
001ef0: 670e         beq.b      $1f00
001ef2: 202e98b0     move.l     -$6750(a6), d0
001ef6: 6100283c     bsr.w      $4734
001efa: 70ff         moveq      #$ff, d0
001efc: 2d4098b0     move.l     d0, -$6750(a6)
001f00: 4e5d         unlk       a5
001f02: 4e75         rts        
001f04: 4e550000     link.w     a5, #$0
001f08: 48e7c080     movem.l    d0-d1/a0, -(a7)
001f0c: 4feffff2     lea.l      -$e(a7), a7
001f10: 41d7         lea.l      (a7), a0
001f12: 2008         move.l     a0, d0
001f14: 614c         bsr.b      $1f62
001f16: 72ff         moveq      #$ff, d1
001f18: b280         cmp.l      d0, d1
001f1a: 6738         beq.b      $1f54
001f1c: 4a57         tst.w      (a7)
001f1e: 6612         bne.b      $1f32
001f20: 7000         moveq      #$0, d0
001f22: 610003d6     bsr.w      $22fa
001f26: 7000         moveq      #$0, d0
001f28: 61000518     bsr.w      $2442
001f2c: 610001fa     bsr.w      $2128
001f30: 6022         bra.b      $1f54
001f32: 0c6f0005000a cmpi.w     #$5, $a(a7)
001f38: 661a         bne.b      $1f54
001f3a: 610015fe     bsr.w      $353a
001f3e: 4a00         tst.b      d0
001f40: 6612         bne.b      $1f54
001f42: 223c00002453 move.l     #$2453, d1
001f48: 6100761a     bsr.w      $9564
001f4c: 61005d3e     bsr.w      $7c8c
001f50: 61005524     bsr.w      $7476
001f54: 4fef000e     lea.l      $e(a7), a7
001f58: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001f5e: 4e5d         unlk       a5
001f60: 4e75         rts        
001f62: 4e550000     link.w     a5, #$0
001f66: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001f6a: 4feffff4     lea.l      -$c(a7), a7
001f6e: 70ff         moveq      #$ff, d0
001f70: 2e80         move.l     d0, (a7)
001f72: 486f0004     pea.l      $4(a7)
001f76: 41ef000c     lea.l      $c(a7), a0
001f7a: 2208         move.l     a0, d1
001f7c: 202e98ac     move.l     -$6754(a6), d0
001f80: 61001b4e     bsr.w      $3ad0
001f84: 588f         addq.l     #$4, a7
001f86: 72ff         moveq      #$ff, d1
001f88: b280         cmp.l      d0, d1
001f8a: 6700007a     beq.w      $2006
001f8e: 206f0008     movea.l    $8(a7), a0
001f92: 0c6800020002 cmpi.w     #$2, $2(a0)
001f98: 6634         bne.b      $1fce
001f9a: 206f000c     movea.l    $c(a7), a0
001f9e: 226f0008     movea.l    $8(a7), a1
001fa2: 20a90004     move.l     $4(a1), (a0)
001fa6: 216900080004 move.l     $8(a1), $4(a0)
001fac: 2169000c0008 move.l     $c(a1), $8(a0)
001fb2: 31690010000c move.w     $10(a1), $c(a0)
001fb8: 202f0008     move.l     $8(a7), d0
001fbc: 5880         addq.l     #$4, d0
001fbe: 6100fe24     bsr.w      $1de4
001fc2: 4a00         tst.b      d0
001fc4: 6736         beq.b      $1ffc
001fc6: 4a2e98c3     tst.b      -$673d(a6)
001fca: 6730         beq.b      $1ffc
001fcc: 6012         bra.b      $1fe0
001fce: 206f0008     movea.l    $8(a7), a0
001fd2: 0c6800030002 cmpi.w     #$3, $2(a0)
001fd8: 6624         bne.b      $1ffe
001fda: 4a2e98c3     tst.b      -$673d(a6)
001fde: 671e         beq.b      $1ffe
001fe0: 48780005     pea.l      $5.w
001fe4: 2f2f0008     move.l     $8(a7), -(a7)
001fe8: 222f0010     move.l     $10(a7), d1
001fec: 202e98b0     move.l     -$6750(a6), d0
001ff0: 61002cee     bsr.w      $4ce0
001ff4: 508f         addq.l     #$8, a7
001ff6: 72ff         moveq      #$ff, d1
001ff8: b280         cmp.l      d0, d1
001ffa: 6702         beq.b      $1ffe
001ffc: 4297         clr.l      (a7)
001ffe: 202f0008     move.l     $8(a7), d0
002002: 61006a82     bsr.w      $8a86
002006: 223c00002442 move.l     #$2442, d1
00200c: 202e98ac     move.l     -$6754(a6), d0
002010: 61007086     bsr.w      $9098
002014: 72ff         moveq      #$ff, d1
002016: b280         cmp.l      d0, d1
002018: 2017         move.l     (a7), d0
00201a: 4fef000c     lea.l      $c(a7), a7
00201e: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
002024: 4e5d         unlk       a5
002026: 4e75         rts        
002028: 2f706970652f73765f74 move.l     $652f7376(a0, invalid.w), $5f74(a7)
002032: 6f5f         ble.b      $2093
002034: 6862         bvc.b      $2098
002036: 00004e55     ori.b      #$55, d0
00203a: 000048e7     ori.b      #$e7, d0
00203e: c000         and.b      d0, d0
002040: 598f         subq.l     #$4, a7
002042: 203c00007f00 move.l     #$7f00, d0
002048: c0af0004     and.l      $4(a7), d0
00204c: e188         lsl.l      #$8, d0
00204e: 223c000000ff move.l     #$ff, d1
002054: c2af0004     and.l      $4(a7), d1
002058: 8081         or.l       d1, d0
00205a: 2e80         move.l     d0, (a7)
00205c: 2017         move.l     (a7), d0
00205e: b0ae98c4     cmp.l      -$673c(a6), d0
002062: 660a         bne.b      $206e
002064: 70ff         moveq      #$ff, d0
002066: 2d4098c4     move.l     d0, -$673c(a6)
00206a: 7001         moveq      #$1, d0
00206c: 6002         bra.b      $2070
00206e: 7000         moveq      #$0, d0
002070: 588f         addq.l     #$4, a7
002072: 4ced0002fffc movem.l    -$4(a5), d1
002078: 4e5d         unlk       a5
00207a: 4e75         rts        
00207c: 4e550000     link.w     a5, #$0
002080: 48e7c080     movem.l    d0-d1/a0, -(a7)
002084: 2f3ca95acd82 move.l     #$a95acd82, -(a7)
00208a: 48780003     pea.l      $3.w
00208e: 42a7         clr.l      -(a7)
002090: 42a7         clr.l      -(a7)
002092: 2f2e95b8     move.l     -$6a48(a6), -(a7)
002096: 486e98c8     pea.l      -$6738(a6)
00209a: 222e98c8     move.l     -$6738(a6), d1
00209e: 41fb017000007468 lea.l      $7468(a16, invalid.w), a0
0020a6: 2008         move.l     a0, d0
0020a8: 610055e0     bsr.w      $768a
0020ac: 4fef0018     lea.l      $18(a7), a7
0020b0: 2d4098c4     move.l     d0, -$673c(a6)
0020b4: 70ff         moveq      #$ff, d0
0020b6: b0ae98c4     cmp.l      -$673c(a6), d0
0020ba: 6604         bne.b      $20c0
0020bc: 70ff         moveq      #$ff, d0
0020be: 6002         bra.b      $20c2
0020c0: 7000         moveq      #$0, d0
0020c2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0020c8: 4e5d         unlk       a5
0020ca: 4e75         rts        
0020cc: 4e550000     link.w     a5, #$0
0020d0: 48e7c000     movem.l    d0-d1, -(a7)
0020d4: 70ff         moveq      #$ff, d0
0020d6: b0ae98c4     cmp.l      -$673c(a6), d0
0020da: 670e         beq.b      $20ea
0020dc: 223c00002420 move.l     #$2420, d1
0020e2: 202e98c4     move.l     -$673c(a6), d0
0020e6: 6100538e     bsr.w      $7476
0020ea: 4ced0002fffc movem.l    -$4(a5), d1
0020f0: 4e5d         unlk       a5
0020f2: 4e75         rts        
0020f4: 4e550000     link.w     a5, #$0
0020f8: 48e7c000     movem.l    d0-d1, -(a7)
0020fc: 70ff         moveq      #$ff, d0
0020fe: b0ae98c4     cmp.l      -$673c(a6), d0
002102: 6718         beq.b      $211c
002104: 223c00002421 move.l     #$2421, d1
00210a: 202e98c4     move.l     -$673c(a6), d0
00210e: 61005366     bsr.w      $7476
002112: 72ff         moveq      #$ff, d1
002114: b280         cmp.l      d0, d1
002116: 6704         beq.b      $211c
002118: 7000         moveq      #$0, d0
00211a: 6002         bra.b      $211e
00211c: 70ff         moveq      #$ff, d0
00211e: 4ced0002fffc movem.l    -$4(a5), d1
002124: 4e5d         unlk       a5
002126: 4e75         rts        
002128: 4e550000     link.w     a5, #$0
00212c: 48e7c000     movem.l    d0-d1, -(a7)
002130: 70ff         moveq      #$ff, d0
002132: b0ae98c4     cmp.l      -$673c(a6), d0
002136: 6718         beq.b      $2150
002138: 223c00002422 move.l     #$2422, d1
00213e: 202e98c4     move.l     -$673c(a6), d0
002142: 61005332     bsr.w      $7476
002146: 72ff         moveq      #$ff, d1
002148: b280         cmp.l      d0, d1
00214a: 6704         beq.b      $2150
00214c: 7000         moveq      #$0, d0
00214e: 6002         bra.b      $2152
002150: 70ff         moveq      #$ff, d0
002152: 4ced0002fffc movem.l    -$4(a5), d1
002158: 4e5d         unlk       a5
00215a: 4e75         rts        
00215c: 7570         .dc.w      $7570
00215e: 6461         bcc.b      $21c1
002160: 7465         moveq      #$65, d2
002162: 5f63         subq.w     #$7, -(a3)
002164: 6172         bsr.b      $21d8
002166: 6c6f         bge.b      $21d7
002168: 63004e55     bls.w      $6fbf
00216c: 000048e7     ori.b      #$e7, d0
002170: 8880         or.l       d0, d4
002172: 7800         moveq      #$0, d4
002174: 6002         bra.b      $2178
002176: 5284         addq.l     #$1, d4
002178: 7013         moveq      #$13, d0
00217a: b084         cmp.l      d4, d0
00217c: 6f0e         ble.b      $218c
00217e: 41ee98d8     lea.l      -$6728(a6), a0
002182: 302f0002     move.w     $2(a7), d0
002186: b0704c00     cmp.w      (a0, d4.l * 4), d0
00218a: 66ea         bne.b      $2176
00218c: 7013         moveq      #$13, d0
00218e: b084         cmp.l      d4, d0
002190: 6f0a         ble.b      $219c
002192: 41ee98d8     lea.l      -$6728(a6), a0
002196: 30304c02     move.w     $2(a0, d4.l), d0
00219a: 6002         bra.b      $219e
00219c: 70ff         moveq      #$ff, d0
00219e: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0021a4: 4e5d         unlk       a5
0021a6: 4e75         rts        
0021a8: 4e550000     link.w     a5, #$0
0021ac: 48e78080     movem.l    d0/a0, -(a7)
0021b0: 4feffff2     lea.l      -$e(a7), a7
0021b4: 41d7         lea.l      (a7), a0
0021b6: 2008         move.l     a0, d0
0021b8: 6100fbf4     bsr.w      $1dae
0021bc: 4a57         tst.w      (a7)
0021be: 6712         beq.b      $21d2
0021c0: 0c570003     cmpi.w     #$3, (a7)
0021c4: 670c         beq.b      $21d2
0021c6: 7001         moveq      #$1, d0
0021c8: b0ae98d4     cmp.l      -$672c(a6), d0
0021cc: 6604         bne.b      $21d2
0021ce: 7001         moveq      #$1, d0
0021d0: 6002         bra.b      $21d4
0021d2: 7000         moveq      #$0, d0
0021d4: 4fef000e     lea.l      $e(a7), a7
0021d8: 4ced0100fffc movem.l    -$4(a5), a0
0021de: 4e5d         unlk       a5
0021e0: 4e75         rts        
0021e2: 4e550000     link.w     a5, #$0
0021e6: 48e78080     movem.l    d0/a0, -(a7)
0021ea: 4feffff2     lea.l      -$e(a7), a7
0021ee: 41d7         lea.l      (a7), a0
0021f0: 2008         move.l     a0, d0
0021f2: 6100fbba     bsr.w      $1dae
0021f6: 0c6f0003000a cmpi.w     #$3, $a(a7)
0021fc: 6604         bne.b      $2202
0021fe: 7001         moveq      #$1, d0
002200: 6002         bra.b      $2204
002202: 7000         moveq      #$0, d0
002204: 4fef000e     lea.l      $e(a7), a7
002208: 4ced0100fffc movem.l    -$4(a5), a0
00220e: 4e5d         unlk       a5
002210: 4e75         rts        
002212: 4e550000     link.w     a5, #$0
002216: 48e78080     movem.l    d0/a0, -(a7)
00221a: 4feffff2     lea.l      -$e(a7), a7
00221e: 41d7         lea.l      (a7), a0
002220: 2008         move.l     a0, d0
002222: 6100fb8a     bsr.w      $1dae
002226: 4a57         tst.w      (a7)
002228: 671a         beq.b      $2244
00222a: 0c570003     cmpi.w     #$3, (a7)
00222e: 6714         beq.b      $2244
002230: 7002         moveq      #$2, d0
002232: b0ae98d4     cmp.l      -$672c(a6), d0
002236: 6708         beq.b      $2240
002238: 7005         moveq      #$5, d0
00223a: b0ae98d4     cmp.l      -$672c(a6), d0
00223e: 6604         bne.b      $2244
002240: 7001         moveq      #$1, d0
002242: 6002         bra.b      $2246
002244: 7000         moveq      #$0, d0
002246: 4fef000e     lea.l      $e(a7), a7
00224a: 4ced0100fffc movem.l    -$4(a5), a0
002250: 4e5d         unlk       a5
002252: 4e75         rts        
002254: 4e550000     link.w     a5, #$0
002258: 48e78000     movem.l    d0, -(a7)
00225c: 558f         subq.l     #$2, a7
00225e: 7003         moveq      #$3, d0
002260: b0ae98d4     cmp.l      -$672c(a6), d0
002264: 6736         beq.b      $229c
002266: 7001         moveq      #$1, d0
002268: b0af0002     cmp.l      $2(a7), d0
00226c: 6720         beq.b      $228e
00226e: 7002         moveq      #$2, d0
002270: b0af0002     cmp.l      $2(a7), d0
002274: 6718         beq.b      $228e
002276: 7005         moveq      #$5, d0
002278: b0af0002     cmp.l      $2(a7), d0
00227c: 6710         beq.b      $228e
00227e: 7004         moveq      #$4, d0
002280: b0af0002     cmp.l      $2(a7), d0
002284: 6708         beq.b      $228e
002286: 7003         moveq      #$3, d0
002288: b0af0002     cmp.l      $2(a7), d0
00228c: 660e         bne.b      $229c
00228e: 2d6f000298d4 move.l     $2(a7), -$672c(a6)
002294: 1f7c00010001 move.b     #$1, $1(a7)
00229a: 6004         bra.b      $22a0
00229c: 422f0001     clr.b      $1(a7)
0022a0: 102f0001     move.b     $1(a7), d0
0022a4: 548f         addq.l     #$2, a7
0022a6: 4e5d         unlk       a5
0022a8: 4e75         rts        
0022aa: 4e550000     link.w     a5, #$0
0022ae: 48e78000     movem.l    d0, -(a7)
0022b2: 7001         moveq      #$1, d0
0022b4: 2d4098d4     move.l     d0, -$672c(a6)
0022b8: 7001         moveq      #$1, d0
0022ba: 610014a6     bsr.w      $3762
0022be: 4e5d         unlk       a5
0022c0: 4e75         rts        
0022c2: 4e550000     link.w     a5, #$0
0022c6: 48e78000     movem.l    d0, -(a7)
0022ca: 7005         moveq      #$5, d0
0022cc: 2d4098d4     move.l     d0, -$672c(a6)
0022d0: 7002         moveq      #$2, d0
0022d2: 6100148e     bsr.w      $3762
0022d6: 4e5d         unlk       a5
0022d8: 4e75         rts        
0022da: 4e550000     link.w     a5, #$0
0022de: 48e78000     movem.l    d0, -(a7)
0022e2: 202e98d4     move.l     -$672c(a6), d0
0022e6: 4e5d         unlk       a5
0022e8: 4e75         rts        
0022ea: 4e550000     link.w     a5, #$0
0022ee: 48e78000     movem.l    d0, -(a7)
0022f2: 102e98d2     move.b     -$672e(a6), d0
0022f6: 4e5d         unlk       a5
0022f8: 4e75         rts        
0022fa: 4e550000     link.w     a5, #$0
0022fe: 48e780c0     movem.l    d0/a0-a1, -(a7)
002302: 4a97         tst.l      (a7)
002304: 6606         bne.b      $230c
002306: 422e98d2     clr.b      -$672e(a6)
00230a: 601a         bra.b      $2326
00230c: 2057         movea.l    (a7), a0
00230e: 43ee872e     lea.l      -$78d2(a6), a1
002312: 203c00000087 move.l     #$87, d0
002318: 22d8         move.l     (a0)+, (a1)+
00231a: 51c8fffc     dbra       d0, $2318
00231e: 32d8         move.w     (a0)+, (a1)+
002320: 1d7c000198d2 move.b     #$1, -$672e(a6)
002326: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00232c: 4e5d         unlk       a5
00232e: 4e75         rts        
002330: 4e550000     link.w     a5, #$0
002334: 48e780c0     movem.l    d0/a0-a1, -(a7)
002338: 4a2e98d2     tst.b      -$672e(a6)
00233c: 6604         bne.b      $2342
00233e: 70ff         moveq      #$ff, d0
002340: 6016         bra.b      $2358
002342: 2057         movea.l    (a7), a0
002344: 43ee872e     lea.l      -$78d2(a6), a1
002348: 203c00000087 move.l     #$87, d0
00234e: 20d9         move.l     (a1)+, (a0)+
002350: 51c8fffc     dbra       d0, $234e
002354: 30d9         move.w     (a1)+, (a0)+
002356: 7000         moveq      #$0, d0
002358: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00235e: 4e5d         unlk       a5
002360: 4e75         rts        
002362: 4e550000     link.w     a5, #$0
002366: 48e7c080     movem.l    d0-d1/a0, -(a7)
00236a: 4feffdc2     lea.l      -$23e(a7), a7
00236e: 6100ff7a     bsr.w      $22ea
002372: 4a00         tst.b      d0
002374: 67000076     beq.w      $23ec
002378: 41d7         lea.l      (a7), a0
00237a: 2208         move.l     a0, d1
00237c: 41ee872e     lea.l      -$78d2(a6), a0
002380: 2008         move.l     a0, d0
002382: 610007ca     bsr.w      $2b4e
002386: 3f40023c     move.w     d0, $23c(a7)
00238a: 0c6f0259023c cmpi.w     #$259, $23c(a7)
002390: 6710         beq.b      $23a2
002392: 0c6e0003872e cmpi.w     #$3, -$78d2(a6)
002398: 6632         bne.b      $23cc
00239a: 0c6f0274023c cmpi.w     #$274, $23c(a7)
0023a0: 662a         bne.b      $23cc
0023a2: 426f0222     clr.w      $222(a7)
0023a6: 41d7         lea.l      (a7), a0
0023a8: 2008         move.l     a0, d0
0023aa: 61001bbc     bsr.w      $3f68
0023ae: 72ff         moveq      #$ff, d1
0023b0: b280         cmp.l      d0, d1
0023b2: 6718         beq.b      $23cc
0023b4: 223c0000240c move.l     #$240c, d1
0023ba: 610071a8     bsr.w      $9564
0023be: 610058cc     bsr.w      $7c8c
0023c2: 610050b2     bsr.w      $7476
0023c6: 72ff         moveq      #$ff, d1
0023c8: b280         cmp.l      d0, d1
0023ca: 6620         bne.b      $23ec
0023cc: 7000         moveq      #$0, d0
0023ce: 6100ff2a     bsr.w      $22fa
0023d2: 7000         moveq      #$0, d0
0023d4: 6100006c     bsr.w      $2442
0023d8: 223c00002403 move.l     #$2403, d1
0023de: 61007184     bsr.w      $9564
0023e2: 610058a8     bsr.w      $7c8c
0023e6: 6100508e     bsr.w      $7476
0023ea: 6004         bra.b      $23f0
0023ec: 7000         moveq      #$0, d0
0023ee: 6152         bsr.b      $2442
0023f0: 4fef023e     lea.l      $23e(a7), a7
0023f4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0023fa: 4e5d         unlk       a5
0023fc: 4e75         rts        
0023fe: 4e550000     link.w     a5, #$0
002402: 48e7c000     movem.l    d0-d1, -(a7)
002406: 4feffdc4     lea.l      -$23c(a7), a7
00240a: 6100fede     bsr.w      $22ea
00240e: 4a00         tst.b      d0
002410: 6712         beq.b      $2424
002412: 223c0000240c move.l     #$240c, d1
002418: 6100714a     bsr.w      $9564
00241c: 6100586e     bsr.w      $7c8c
002420: 61005054     bsr.w      $7476
002424: 4fef023c     lea.l      $23c(a7), a7
002428: 4ced0002fffc movem.l    -$4(a5), d1
00242e: 4e5d         unlk       a5
002430: 4e75         rts        
002432: 4e550000     link.w     a5, #$0
002436: 48e78000     movem.l    d0, -(a7)
00243a: 102e98d0     move.b     -$6730(a6), d0
00243e: 4e5d         unlk       a5
002440: 4e75         rts        
002442: 4e550000     link.w     a5, #$0
002446: 48e780c0     movem.l    d0/a0-a1, -(a7)
00244a: 4a97         tst.l      (a7)
00244c: 6606         bne.b      $2454
00244e: 422e98d0     clr.b      -$6730(a6)
002452: 601a         bra.b      $246e
002454: 2057         movea.l    (a7), a0
002456: 43ee850c     lea.l      -$7af4(a6), a1
00245a: 203c00000087 move.l     #$87, d0
002460: 22d8         move.l     (a0)+, (a1)+
002462: 51c8fffc     dbra       d0, $2460
002466: 32d8         move.w     (a0)+, (a1)+
002468: 1d7c000198d0 move.b     #$1, -$6730(a6)
00246e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002474: 4e5d         unlk       a5
002476: 4e75         rts        
002478: 4e550000     link.w     a5, #$0
00247c: 48e780c0     movem.l    d0/a0-a1, -(a7)
002480: 4a2e98d0     tst.b      -$6730(a6)
002484: 6604         bne.b      $248a
002486: 70ff         moveq      #$ff, d0
002488: 6016         bra.b      $24a0
00248a: 2057         movea.l    (a7), a0
00248c: 43ee850c     lea.l      -$7af4(a6), a1
002490: 203c00000087 move.l     #$87, d0
002496: 20d9         move.l     (a1)+, (a0)+
002498: 51c8fffc     dbra       d0, $2496
00249c: 30d9         move.w     (a1)+, (a0)+
00249e: 7000         moveq      #$0, d0
0024a0: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0024a6: 4e5d         unlk       a5
0024a8: 4e75         rts        
0024aa: 4e550000     link.w     a5, #$0
0024ae: 48e78080     movem.l    d0/a0, -(a7)
0024b2: 41ee8950     lea.l      -$76b0(a6), a0
0024b6: 2008         move.l     a0, d0
0024b8: 6100145a     bsr.w      $3914
0024bc: 7000         moveq      #$0, d0
0024be: 4ced0100fffc movem.l    -$4(a5), a0
0024c4: 4e5d         unlk       a5
0024c6: 4e75         rts        
0024c8: 4e550000     link.w     a5, #$0
0024cc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0024d0: 306e8950     movea.w    -$76b0(a6), a0
0024d4: 2f08         move.l     a0, -(a7)
0024d6: 41fa0180     lea.l      $2658(pc), a0
0024da: 2208         move.l     a0, d1
0024dc: 202f0004     move.l     $4(a7), d0
0024e0: 610064e4     bsr.w      $89c6
0024e4: 588f         addq.l     #$4, a7
0024e6: 7000         moveq      #$0, d0
0024e8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0024ee: 4e5d         unlk       a5
0024f0: 4e75         rts        
0024f2: 4e550000     link.w     a5, #$0
0024f6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0024fa: 5d8f         subq.l     #$6, a7
0024fc: 1f7c00010001 move.b     #$1, $1(a7)
002502: 486f0002     pea.l      $2(a7)
002506: 41fa0153     lea.l      $265b(pc), a0
00250a: 2208         move.l     a0, d1
00250c: 202f000a     move.l     $a(a7), d0
002510: 610064e4     bsr.w      $89f6
002514: 588f         addq.l     #$4, a7
002516: 6024         bra.b      $253c
002518: 426e8950     clr.w      -$76b0(a6)
00251c: 603a         bra.b      $2558
00251e: 3d7c00018950 move.w     #$1, -$76b0(a6)
002524: 6032         bra.b      $2558
002526: 3d7c00028950 move.w     #$2, -$76b0(a6)
00252c: 602a         bra.b      $2558
00252e: 3d7c00038950 move.w     #$3, -$76b0(a6)
002534: 6022         bra.b      $2558
002536: 422f0001     clr.b      $1(a7)
00253a: 601c         bra.b      $2558
00253c: 202f0002     move.l     $2(a7), d0
002540: 0c8000000003 cmpi.l     #$3, d0
002546: 62ee         bhi.b      $2536
002548: 303b0206     move.w     $2550(pc, d0.w), d0
00254c: 4efb0002     jmp        $2550(pc, d0.w)
002550: ffc8         dc.w       $ffc8
002552: ffce         dc.w       $ffce
002554: ffd6         dc.w       $ffd6
002556: ffde         dc.w       $ffde
002558: 0c2f00010001 cmpi.b     #$1, $1(a7)
00255e: 660a         bne.b      $256a
002560: 41ee8950     lea.l      -$76b0(a6), a0
002564: 2008         move.l     a0, d0
002566: 61001476     bsr.w      $39de
00256a: 102f0001     move.b     $1(a7), d0
00256e: 5c8f         addq.l     #$6, a7
002570: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002576: 4e5d         unlk       a5
002578: 4e75         rts        
00257a: 4e550000     link.w     a5, #$0
00257e: 48e7c080     movem.l    d0-d1/a0, -(a7)
002582: 518f         subq.l     #$8, a7
002584: 4857         pea.l      (a7)
002586: 486f0008     pea.l      $8(a7)
00258a: 41fa00d2     lea.l      $265e(pc), a0
00258e: 2208         move.l     a0, d1
002590: 202f0010     move.l     $10(a7), d0
002594: 61006460     bsr.w      $89f6
002598: 508f         addq.l     #$8, a7
00259a: 7001         moveq      #$1, d0
00259c: b0af0004     cmp.l      $4(a7), d0
0025a0: 6e14         bgt.b      $25b6
0025a2: 700a         moveq      #$a, d0
0025a4: b0af0004     cmp.l      $4(a7), d0
0025a8: 6d0c         blt.b      $25b6
0025aa: 7001         moveq      #$1, d0
0025ac: b097         cmp.l      (a7), d0
0025ae: 6e06         bgt.b      $25b6
0025b0: 700a         moveq      #$a, d0
0025b2: b097         cmp.l      (a7), d0
0025b4: 6c04         bge.b      $25ba
0025b6: 7000         moveq      #$0, d0
0025b8: 602a         bra.b      $25e4
0025ba: 203c000186a0 move.l     #$186a0, d0
0025c0: 4c2f00000004 mulu.l     $4(a7), d0
0025c6: 2d408952     move.l     d0, -$76ae(a6)
0025ca: 203c000186a0 move.l     #$186a0, d0
0025d0: 4c170000     mulu.l     (a7), d0
0025d4: 2d408956     move.l     d0, -$76aa(a6)
0025d8: 41ee8950     lea.l      -$76b0(a6), a0
0025dc: 2008         move.l     a0, d0
0025de: 610013fe     bsr.w      $39de
0025e2: 7001         moveq      #$1, d0
0025e4: 508f         addq.l     #$8, a7
0025e6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0025ec: 4e5d         unlk       a5
0025ee: 4e75         rts        
0025f0: 4e550000     link.w     a5, #$0
0025f4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0025f8: 518f         subq.l     #$8, a7
0025fa: 202e8952     move.l     -$76ae(a6), d0
0025fe: 4c7c0000000186a0 divu.l     #$186a0, d0
002606: 2f400004     move.l     d0, $4(a7)
00260a: 202e8956     move.l     -$76aa(a6), d0
00260e: 4c7c0000000186a0 divu.l     #$186a0, d0
002616: 2e80         move.l     d0, (a7)
002618: 2f17         move.l     (a7), -(a7)
00261a: 2f2f0008     move.l     $8(a7), -(a7)
00261e: 41fa0044     lea.l      $2664(pc), a0
002622: 2208         move.l     a0, d1
002624: 202f0010     move.l     $10(a7), d0
002628: 6100639c     bsr.w      $89c6
00262c: 508f         addq.l     #$8, a7
00262e: 7000         moveq      #$0, d0
002630: 508f         addq.l     #$8, a7
002632: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002638: 4e5d         unlk       a5
00263a: 4e75         rts        
00263c: 4e550000     link.w     a5, #$0
002640: 48e78080     movem.l    d0/a0, -(a7)
002644: 41ee8950     lea.l      -$76b0(a6), a0
002648: 2008         move.l     a0, d0
00264a: 61001aba     bsr.w      $4106
00264e: 4ced0100fffc movem.l    -$4(a5), a0
002654: 4e5d         unlk       a5
002656: 4e75         rts        
002658: 25640025     move.l     -(a4), $25(a2)
00265c: 64002564     bcc.w      $4bc2
002660: 2025         move.l     -(a5), d0
002662: 64002564     bcc.w      $4bc8
002666: 2025         move.l     -(a5), d0
002668: 64004e55     bcc.w      $74bf
00266c: 000048e7     ori.b      #$e7, d0
002670: 8080         or.l       d0, d0
002672: 306e9928     movea.w    -$66d8(a6), a0
002676: 2008         move.l     a0, d0
002678: 61004704     bsr.w      $6d7e
00267c: 4a00         tst.b      d0
00267e: 6604         bne.b      $2684
002680: 70ff         moveq      #$ff, d0
002682: 600a         bra.b      $268e
002684: 61004842     bsr.w      $6ec8
002688: 2d409924     move.l     d0, -$66dc(a6)
00268c: 7000         moveq      #$0, d0
00268e: 4ced0100fffc movem.l    -$4(a5), a0
002694: 4e5d         unlk       a5
002696: 4e75         rts        
002698: 4e550000     link.w     a5, #$0
00269c: 48e7c080     movem.l    d0-d1/a0, -(a7)
0026a0: 70ff         moveq      #$ff, d0
0026a2: b0ae9924     cmp.l      -$66dc(a6), d0
0026a6: 6710         beq.b      $26b8
0026a8: 222e9924     move.l     -$66dc(a6), d1
0026ac: 306e9928     movea.w    -$66d8(a6), a0
0026b0: 2008         move.l     a0, d0
0026b2: 6100475a     bsr.w      $6e0e
0026b6: 4a00         tst.b      d0
0026b8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0026be: 4e5d         unlk       a5
0026c0: 4e75         rts        
0026c2: 4e550000     link.w     a5, #$0
0026c6: 48e7c000     movem.l    d0-d1, -(a7)
0026ca: 558f         subq.l     #$2, a7
0026cc: 61004566     bsr.w      $6c34
0026d0: 4a00         tst.b      d0
0026d2: 661c         bne.b      $26f0
0026d4: 610043a0     bsr.w      $6a76
0026d8: 3e80         move.w     d0, (a7)
0026da: 48780001     pea.l      $1.w
0026de: 7201         moveq      #$1, d1
0026e0: 203c00000099 move.l     #$99, d0
0026e6: 61001d94     bsr.w      $447c
0026ea: 588f         addq.l     #$4, a7
0026ec: 70ff         moveq      #$ff, d0
0026ee: 6002         bra.b      $26f2
0026f0: 7000         moveq      #$0, d0
0026f2: 548f         addq.l     #$2, a7
0026f4: 4ced0002fffc movem.l    -$4(a5), d1
0026fa: 4e5d         unlk       a5
0026fc: 4e75         rts        
0026fe: 4e550000     link.w     a5, #$0
002702: 48e7c000     movem.l    d0-d1, -(a7)
002706: 558f         subq.l     #$2, a7
002708: 61004590     bsr.w      $6c9a
00270c: 4a00         tst.b      d0
00270e: 6618         bne.b      $2728
002710: 61004364     bsr.w      $6a76
002714: 3e80         move.w     d0, (a7)
002716: 48780002     pea.l      $2.w
00271a: 7201         moveq      #$1, d1
00271c: 203c00000099 move.l     #$99, d0
002722: 61001d58     bsr.w      $447c
002726: 588f         addq.l     #$4, a7
002728: 548f         addq.l     #$2, a7
00272a: 4ced0002fffc movem.l    -$4(a5), d1
002730: 4e5d         unlk       a5
002732: 4e75         rts        
002734: 4e550000     link.w     a5, #$0
002738: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
00273c: 2440         movea.l    d0, a2
00273e: 2641         movea.l    d1, a3
002740: 558f         subq.l     #$2, a7
002742: 3ebc0259     move.w     #$259, (a7)
002746: 200a         move.l     a2, d0
002748: 61003dd2     bsr.w      $651c
00274c: 4a00         tst.b      d0
00274e: 661e         bne.b      $276e
002750: 61004324     bsr.w      $6a76
002754: 3e80         move.w     d0, (a7)
002756: 48780003     pea.l      $3.w
00275a: 7201         moveq      #$1, d1
00275c: 203c00000099 move.l     #$99, d0
002762: 61001d18     bsr.w      $447c
002766: 588f         addq.l     #$4, a7
002768: 303cffff     move.w     #$ffff, d0
00276c: 6012         bra.b      $2780
00276e: 200b         move.l     a3, d0
002770: 61003dde     bsr.w      $6550
002774: 4a00         tst.b      d0
002776: 6606         bne.b      $277e
002778: 610042fc     bsr.w      $6a76
00277c: 3e80         move.w     d0, (a7)
00277e: 3017         move.w     (a7), d0
002780: 548f         addq.l     #$2, a7
002782: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002788: 4e5d         unlk       a5
00278a: 4e75         rts        
00278c: 4e550000     link.w     a5, #$0
002790: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
002794: 2440         movea.l    d0, a2
002796: 2641         movea.l    d1, a3
002798: 4feffff6     lea.l      -$a(a7), a7
00279c: 42af0006     clr.l      $6(a7)
0027a0: 42af0002     clr.l      $2(a7)
0027a4: 3ebc0259     move.w     #$259, (a7)
0027a8: 200a         move.l     a2, d0
0027aa: 61003dce     bsr.w      $657a
0027ae: 4a00         tst.b      d0
0027b0: 661e         bne.b      $27d0
0027b2: 610042c2     bsr.w      $6a76
0027b6: 3e80         move.w     d0, (a7)
0027b8: 48780004     pea.l      $4.w
0027bc: 7201         moveq      #$1, d1
0027be: 203c00000099 move.l     #$99, d0
0027c4: 61001cb6     bsr.w      $447c
0027c8: 588f         addq.l     #$4, a7
0027ca: 303cffff     move.w     #$ffff, d0
0027ce: 6044         bra.b      $2814
0027d0: 486f0002     pea.l      $2(a7)
0027d4: 41ef000a     lea.l      $a(a7), a0
0027d8: 2208         move.l     a0, d1
0027da: 200b         move.l     a3, d0
0027dc: 61003dd0     bsr.w      $65ae
0027e0: 588f         addq.l     #$4, a7
0027e2: 4a00         tst.b      d0
0027e4: 6608         bne.b      $27ee
0027e6: 6100428e     bsr.w      $6a76
0027ea: 3e80         move.w     d0, (a7)
0027ec: 6024         bra.b      $2812
0027ee: 4aaf0006     tst.l      $6(a7)
0027f2: 670c         beq.b      $2800
0027f4: 202f0006     move.l     $6(a7), d0
0027f8: 6100628c     bsr.w      $8a86
0027fc: 42af0006     clr.l      $6(a7)
002800: 4aaf0002     tst.l      $2(a7)
002804: 670c         beq.b      $2812
002806: 202f0002     move.l     $2(a7), d0
00280a: 6100627a     bsr.w      $8a86
00280e: 42af0002     clr.l      $2(a7)
002812: 3017         move.w     (a7), d0
002814: 4fef000a     lea.l      $a(a7), a7
002818: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00281e: 4e5d         unlk       a5
002820: 4e75         rts        
002822: 4e550000     link.w     a5, #$0
002826: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00282a: 558f         subq.l     #$2, a7
00282c: 3ebc0259     move.w     #$259, (a7)
002830: 206f0002     movea.l    $2(a7), a0
002834: 48680180     pea.l      $180(a0)
002838: 206f0006     movea.l    $6(a7), a0
00283c: 48680132     pea.l      $132(a0)
002840: 206f000a     movea.l    $a(a7), a0
002844: 486800e6     pea.l      $e6(a0)
002848: 206f000e     movea.l    $e(a7), a0
00284c: 4868009a     pea.l      $9a(a0)
002850: 704e         moveq      #$4e, d0
002852: d0af0012     add.l      $12(a7), d0
002856: 2200         move.l     d0, d1
002858: 202f0012     move.l     $12(a7), d0
00285c: 5480         addq.l     #$2, d0
00285e: 61003fde     bsr.w      $683e
002862: 4fef0010     lea.l      $10(a7), a7
002866: 4a00         tst.b      d0
002868: 661e         bne.b      $2888
00286a: 6100420a     bsr.w      $6a76
00286e: 3e80         move.w     d0, (a7)
002870: 48780005     pea.l      $5.w
002874: 7201         moveq      #$1, d1
002876: 203c00000099 move.l     #$99, d0
00287c: 61001bfe     bsr.w      $447c
002880: 588f         addq.l     #$4, a7
002882: 303cffff     move.w     #$ffff, d0
002886: 6028         bra.b      $28b0
002888: 202f0006     move.l     $6(a7), d0
00288c: 6100402a     bsr.w      $68b8
002890: 4a00         tst.b      d0
002892: 6608         bne.b      $289c
002894: 610041e0     bsr.w      $6a76
002898: 3e80         move.w     d0, (a7)
00289a: 6012         bra.b      $28ae
00289c: 206f0002     movea.l    $2(a7), a0
0028a0: 226f0006     movea.l    $6(a7), a1
0028a4: 2151021a     move.l     (a1), $21a(a0)
0028a8: 21690004021e move.l     $4(a1), $21e(a0)
0028ae: 3017         move.w     (a7), d0
0028b0: 548f         addq.l     #$2, a7
0028b2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0028b8: 4e5d         unlk       a5
0028ba: 4e75         rts        
0028bc: 4e550000     link.w     a5, #$0
0028c0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0028c4: 4feffd9e     lea.l      -$262(a7), a7
0028c8: 3f7c0259025e move.w     #$259, $25e(a7)
0028ce: 203c0000021a move.l     #$21a, d0
0028d4: d0af0262     add.l      $262(a7), d0
0028d8: 61004130     bsr.w      $6a0a
0028dc: 4a00         tst.b      d0
0028de: 661e         bne.b      $28fe
0028e0: 61004194     bsr.w      $6a76
0028e4: 3f40025e     move.w     d0, $25e(a7)
0028e8: 48780006     pea.l      $6.w
0028ec: 7201         moveq      #$1, d1
0028ee: 203c00000099 move.l     #$99, d0
0028f4: 61001b86     bsr.w      $447c
0028f8: 588f         addq.l     #$4, a7
0028fa: 60000192     bra.w      $2a8e
0028fe: 41ef024a     lea.l      $24a(a7), a0
002902: 2008         move.l     a0, d0
002904: 61004138     bsr.w      $6a3e
002908: 4a00         tst.b      d0
00290a: 660c         bne.b      $2918
00290c: 61004168     bsr.w      $6a76
002910: 3f40025e     move.w     d0, $25e(a7)
002914: 6000017e     bra.w      $2a94
002918: 41ef00ce     lea.l      $ce(a7), a0
00291c: 2208         move.l     a0, d1
00291e: 41ef0252     lea.l      $252(a7), a0
002922: 2008         move.l     a0, d0
002924: 6100fe0e     bsr.w      $2734
002928: 3f400260     move.w     d0, $260(a7)
00292c: 0c400259     cmpi.w     #$259, d0
002930: 6708         beq.b      $293a
002932: 302f0260     move.w     $260(a7), d0
002936: 60000160     bra.w      $2a98
00293a: 4878004c     pea.l      $4c.w
00293e: 41ef00d2     lea.l      $d2(a7), a0
002942: 2208         move.l     a0, d1
002944: 202f0266     move.l     $266(a7), d0
002948: 5480         addq.l     #$2, d0
00294a: 610062ca     bsr.w      $8c16
00294e: 588f         addq.l     #$4, a7
002950: 4878004c     pea.l      $4c.w
002954: 41ef016a     lea.l      $16a(a7), a0
002958: 2208         move.l     a0, d1
00295a: 704e         moveq      #$4e, d0
00295c: d0af0266     add.l      $266(a7), d0
002960: 610062b4     bsr.w      $8c16
002964: 588f         addq.l     #$4, a7
002966: 4878004c     pea.l      $4c.w
00296a: 41ef011e     lea.l      $11e(a7), a0
00296e: 2208         move.l     a0, d1
002970: 203c0000009a move.l     #$9a, d0
002976: d0af0266     add.l      $266(a7), d0
00297a: 6100629a     bsr.w      $8c16
00297e: 588f         addq.l     #$4, a7
002980: 4878004c     pea.l      $4c.w
002984: 41ef0202     lea.l      $202(a7), a0
002988: 2208         move.l     a0, d1
00298a: 203c000000e6 move.l     #$e6, d0
002990: d0af0266     add.l      $266(a7), d0
002994: 61006280     bsr.w      $8c16
002998: 588f         addq.l     #$4, a7
00299a: 4878004c     pea.l      $4c.w
00299e: 41ef01b6     lea.l      $1b6(a7), a0
0029a2: 2208         move.l     a0, d1
0029a4: 203c00000132 move.l     #$132, d0
0029aa: d0af0266     add.l      $266(a7), d0
0029ae: 61006266     bsr.w      $8c16
0029b2: 588f         addq.l     #$4, a7
0029b4: 7000         moveq      #$0, d0
0029b6: 102f025c     move.b     $25c(a7), d0
0029ba: 2200         move.l     d0, d1
0029bc: 41ef0252     lea.l      $252(a7), a0
0029c0: 2008         move.l     a0, d0
0029c2: 61003988     bsr.w      $634c
0029c6: 4a00         tst.b      d0
0029c8: 673c         beq.b      $2a06
0029ca: 41ef007c     lea.l      $7c(a7), a0
0029ce: 2008         move.l     a0, d0
0029d0: 610039b4     bsr.w      $6386
0029d4: 4a00         tst.b      d0
0029d6: 672e         beq.b      $2a06
0029d8: 41d7         lea.l      (a7), a0
0029da: 2008         move.l     a0, d0
0029dc: 610039ce     bsr.w      $63ac
0029e0: 4a00         tst.b      d0
0029e2: 6722         beq.b      $2a06
0029e4: 422f00cd     clr.b      $cd(a7)
0029e8: 60000084     bra.w      $2a6e
0029ec: 486f0078     pea.l      $78(a7)
0029f0: 41ef00cc     lea.l      $cc(a7), a0
0029f4: 2208         move.l     a0, d1
0029f6: 41ef0006     lea.l      $6(a7), a0
0029fa: 2008         move.l     a0, d0
0029fc: 610039c8     bsr.w      $63c6
002a00: 588f         addq.l     #$4, a7
002a02: 4a00         tst.b      d0
002a04: 660c         bne.b      $2a12
002a06: 6100406e     bsr.w      $6a76
002a0a: 3f40025e     move.w     d0, $25e(a7)
002a0e: 6000007e     bra.w      $2a8e
002a12: 202f00c8     move.l     $c8(a7), d0
002a16: 6100606e     bsr.w      $8a86
002a1a: 202f0078     move.l     $78(a7), d0
002a1e: 61006066     bsr.w      $8a86
002a22: 5357         subq.w     #$1, (a7)
002a24: 4a2f001a     tst.b      $1a(a7)
002a28: 6744         beq.b      $2a6e
002a2a: 4a2f00cd     tst.b      $cd(a7)
002a2e: 663e         bne.b      $2a6e
002a30: 4878004c     pea.l      $4c.w
002a34: 41ef002b     lea.l      $2b(a7), a0
002a38: 2208         move.l     a0, d1
002a3a: 203c000000e6 move.l     #$e6, d0
002a40: d0af0266     add.l      $266(a7), d0
002a44: 61006216     bsr.w      $8c5c
002a48: 588f         addq.l     #$4, a7
002a4a: 4a80         tst.l      d0
002a4c: 6720         beq.b      $2a6e
002a4e: 4878004c     pea.l      $4c.w
002a52: 41ef002b     lea.l      $2b(a7), a0
002a56: 2208         move.l     a0, d1
002a58: 203c00000180 move.l     #$180, d0
002a5e: d0af0266     add.l      $266(a7), d0
002a62: 610061b2     bsr.w      $8c16
002a66: 588f         addq.l     #$4, a7
002a68: 1f7c000100cd move.b     #$1, $cd(a7)
002a6e: 4a57         tst.w      (a7)
002a70: 6e00ff7a     bgt.w      $29ec
002a74: 222f0266     move.l     $266(a7), d1
002a78: 202f0262     move.l     $262(a7), d0
002a7c: 6100fda4     bsr.w      $2822
002a80: 3f400260     move.w     d0, $260(a7)
002a84: 7200         moveq      #$0, d1
002a86: 3200         move.w     d0, d1
002a88: 70ff         moveq      #$ff, d0
002a8a: b081         cmp.l      d1, d0
002a8c: 6606         bne.b      $2a94
002a8e: 303cffff     move.w     #$ffff, d0
002a92: 6004         bra.b      $2a98
002a94: 302f025e     move.w     $25e(a7), d0
002a98: 4fef0262     lea.l      $262(a7), a7
002a9c: 4ced0100fffc movem.l    -$4(a5), a0
002aa2: 4e5d         unlk       a5
002aa4: 4e75         rts        
002aa6: 4e550000     link.w     a5, #$0
002aaa: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002aae: 2441         movea.l    d1, a2
002ab0: 4fefffe6     lea.l      -$1a(a7), a7
002ab4: 3ebc0259     move.w     #$259, (a7)
002ab8: 206f001a     movea.l    $1a(a7), a0
002abc: 0c500004     cmpi.w     #$4, (a0)
002ac0: 661c         bne.b      $2ade
002ac2: 41ef0002     lea.l      $2(a7), a0
002ac6: 2208         move.l     a0, d1
002ac8: 202f001a     move.l     $1a(a7), d0
002acc: 6100fd54     bsr.w      $2822
002ad0: 3e80         move.w     d0, (a7)
002ad2: 7200         moveq      #$0, d1
002ad4: 3200         move.w     d0, d1
002ad6: 70ff         moveq      #$ff, d0
002ad8: b081         cmp.l      d1, d0
002ada: 6726         beq.b      $2b02
002adc: 602a         bra.b      $2b08
002ade: 206f001a     movea.l    $1a(a7), a0
002ae2: 0c500006     cmpi.w     #$6, (a0)
002ae6: 661a         bne.b      $2b02
002ae8: 41ef0002     lea.l      $2(a7), a0
002aec: 2208         move.l     a0, d1
002aee: 202f001a     move.l     $1a(a7), d0
002af2: 6100fdc8     bsr.w      $28bc
002af6: 3e80         move.w     d0, (a7)
002af8: 7200         moveq      #$0, d1
002afa: 3200         move.w     d0, d1
002afc: 70ff         moveq      #$ff, d0
002afe: b081         cmp.l      d1, d0
002b00: 6606         bne.b      $2b08
002b02: 303cffff     move.w     #$ffff, d0
002b06: 6038         bra.b      $2b40
002b08: 0c570259     cmpi.w     #$259, (a7)
002b0c: 6630         bne.b      $2b3e
002b0e: 24af000e     move.l     $e(a7), (a2)
002b12: 256f00120004 move.l     $12(a7), $4(a2)
002b18: 357c00010008 move.w     #$1, $8(a2)
002b1e: 256f000a0012 move.l     $a(a7), $12(a2)
002b24: 256f0002000a move.l     $2(a7), $a(a2)
002b2a: 256f0006000e move.l     $6(a7), $e(a2)
002b30: 157c00010016 move.b     #$1, $16(a2)
002b36: 206f0032     movea.l    $32(a7), a0
002b3a: 10af0018     move.b     $18(a7), (a0)
002b3e: 3017         move.w     (a7), d0
002b40: 4fef001a     lea.l      $1a(a7), a7
002b44: 4ced0500fff8 movem.l    -$8(a5), a0/a2
002b4a: 4e5d         unlk       a5
002b4c: 4e75         rts        
002b4e: 4e550000     link.w     a5, #$0
002b52: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
002b56: 2440         movea.l    d0, a2
002b58: 2641         movea.l    d1, a3
002b5a: 4fefffe6     lea.l      -$1a(a7), a7
002b5e: 3f7c02590018 move.w     #$259, $18(a7)
002b64: 600004bc     bra.w      $3022
002b68: 486a009a     pea.l      $9a(a2)
002b6c: 704e         moveq      #$4e, d0
002b6e: d08a         add.l      a2, d0
002b70: 2200         move.l     d0, d1
002b72: 200a         move.l     a2, d0
002b74: 5480         addq.l     #$2, d0
002b76: 61003b68     bsr.w      $66e0
002b7a: 588f         addq.l     #$4, a7
002b7c: 4a00         tst.b      d0
002b7e: 6610         bne.b      $2b90
002b80: 61003ef4     bsr.w      $6a76
002b84: 3f400018     move.w     d0, $18(a7)
002b88: 48780007     pea.l      $7.w
002b8c: 60000454     bra.w      $2fe2
002b90: 61003b9e     bsr.w      $6730
002b94: 4a00         tst.b      d0
002b96: 6608         bne.b      $2ba0
002b98: 61003edc     bsr.w      $6a76
002b9c: 3f400018     move.w     d0, $18(a7)
002ba0: 0c6f02590018 cmpi.w     #$259, $18(a7)
002ba6: 6600049a     bne.w      $3042
002baa: 0c520007     cmpi.w     #$7, (a2)
002bae: 6606         bne.b      $2bb6
002bb0: 36bc0007     move.w     #$7, (a3)
002bb4: 6004         bra.b      $2bba
002bb6: 36bc0001     move.w     #$1, (a3)
002bba: 4878004c     pea.l      $4c.w
002bbe: 200a         move.l     a2, d0
002bc0: 5480         addq.l     #$2, d0
002bc2: 2200         move.l     d0, d1
002bc4: 200b         move.l     a3, d0
002bc6: 5480         addq.l     #$2, d0
002bc8: 6100604c     bsr.w      $8c16
002bcc: 588f         addq.l     #$4, a7
002bce: 4878004c     pea.l      $4c.w
002bd2: 704e         moveq      #$4e, d0
002bd4: d08a         add.l      a2, d0
002bd6: 2200         move.l     d0, d1
002bd8: 704e         moveq      #$4e, d0
002bda: d08b         add.l      a3, d0
002bdc: 61006038     bsr.w      $8c16
002be0: 588f         addq.l     #$4, a7
002be2: 4878004c     pea.l      $4c.w
002be6: 203c0000009a move.l     #$9a, d0
002bec: d08a         add.l      a2, d0
002bee: 2200         move.l     d0, d1
002bf0: 203c0000009a move.l     #$9a, d0
002bf6: 600003c2     bra.w      $2fba
002bfa: 486a0132     pea.l      $132(a2)
002bfe: 486a00e6     pea.l      $e6(a2)
002c02: 486a009a     pea.l      $9a(a2)
002c06: 704e         moveq      #$4e, d0
002c08: d08a         add.l      a2, d0
002c0a: 2200         move.l     d0, d1
002c0c: 200a         move.l     a2, d0
002c0e: 5480         addq.l     #$2, d0
002c10: 61003b2e     bsr.w      $6740
002c14: 4fef000c     lea.l      $c(a7), a7
002c18: 4a00         tst.b      d0
002c1a: 6610         bne.b      $2c2c
002c1c: 61003e58     bsr.w      $6a76
002c20: 3f400018     move.w     d0, $18(a7)
002c24: 48780008     pea.l      $8.w
002c28: 600003b8     bra.w      $2fe2
002c2c: 61003b7e     bsr.w      $67ac
002c30: 4a00         tst.b      d0
002c32: 6608         bne.b      $2c3c
002c34: 61003e40     bsr.w      $6a76
002c38: 3f400018     move.w     d0, $18(a7)
002c3c: 0c6f02590018 cmpi.w     #$259, $18(a7)
002c42: 660003fe     bne.w      $3042
002c46: 36bc0002     move.w     #$2, (a3)
002c4a: 600000fc     bra.w      $2d48
002c4e: 7000         moveq      #$0, d0
002c50: 302a017e     move.w     $17e(a2), d0
002c54: 2f00         move.l     d0, -(a7)
002c56: 486a0132     pea.l      $132(a2)
002c5a: 486a00e6     pea.l      $e6(a2)
002c5e: 486a009a     pea.l      $9a(a2)
002c62: 704e         moveq      #$4e, d0
002c64: d08a         add.l      a2, d0
002c66: 2200         move.l     d0, d1
002c68: 200a         move.l     a2, d0
002c6a: 5480         addq.l     #$2, d0
002c6c: 61003b4e     bsr.w      $67bc
002c70: 4fef0010     lea.l      $10(a7), a7
002c74: 4a00         tst.b      d0
002c76: 6610         bne.b      $2c88
002c78: 61003dfc     bsr.w      $6a76
002c7c: 3f400018     move.w     d0, $18(a7)
002c80: 48780009     pea.l      $9.w
002c84: 6000035c     bra.w      $2fe2
002c88: 61003ba4     bsr.w      $682e
002c8c: 4a00         tst.b      d0
002c8e: 6608         bne.b      $2c98
002c90: 61003de4     bsr.w      $6a76
002c94: 3f400018     move.w     d0, $18(a7)
002c98: 0c6f02750018 cmpi.w     #$275, $18(a7)
002c9e: 6606         bne.b      $2ca6
002ca0: 3f7c02590018 move.w     #$259, $18(a7)
002ca6: 0c6f02590018 cmpi.w     #$259, $18(a7)
002cac: 66000088     bne.w      $2d36
002cb0: 36bc0003     move.w     #$3, (a3)
002cb4: 376a017e017e move.w     $17e(a2), $17e(a3)
002cba: 4878004c     pea.l      $4c.w
002cbe: 200a         move.l     a2, d0
002cc0: 5480         addq.l     #$2, d0
002cc2: 2200         move.l     d0, d1
002cc4: 200b         move.l     a3, d0
002cc6: 5480         addq.l     #$2, d0
002cc8: 61005f4c     bsr.w      $8c16
002ccc: 588f         addq.l     #$4, a7
002cce: 4878004c     pea.l      $4c.w
002cd2: 704e         moveq      #$4e, d0
002cd4: d08a         add.l      a2, d0
002cd6: 2200         move.l     d0, d1
002cd8: 704e         moveq      #$4e, d0
002cda: d08b         add.l      a3, d0
002cdc: 61005f38     bsr.w      $8c16
002ce0: 588f         addq.l     #$4, a7
002ce2: 4878004c     pea.l      $4c.w
002ce6: 203c0000009a move.l     #$9a, d0
002cec: d08a         add.l      a2, d0
002cee: 2200         move.l     d0, d1
002cf0: 203c0000009a move.l     #$9a, d0
002cf6: d08b         add.l      a3, d0
002cf8: 61005f1c     bsr.w      $8c16
002cfc: 588f         addq.l     #$4, a7
002cfe: 4878004c     pea.l      $4c.w
002d02: 203c000000e6 move.l     #$e6, d0
002d08: d08a         add.l      a2, d0
002d0a: 2200         move.l     d0, d1
002d0c: 203c000000e6 move.l     #$e6, d0
002d12: d08b         add.l      a3, d0
002d14: 61005f00     bsr.w      $8c16
002d18: 588f         addq.l     #$4, a7
002d1a: 4878004c     pea.l      $4c.w
002d1e: 203c00000132 move.l     #$132, d0
002d24: d08a         add.l      a2, d0
002d26: 2200         move.l     d0, d1
002d28: 203c00000132 move.l     #$132, d0
002d2e: d08b         add.l      a3, d0
002d30: 61005ee4     bsr.w      $8c16
002d34: 588f         addq.l     #$4, a7
002d36: 0c6f02740018 cmpi.w     #$274, $18(a7)
002d3c: 66000304     bne.w      $3042
002d40: 36bc0002     move.w     #$2, (a3)
002d44: 426b017e     clr.w      $17e(a3)
002d48: 4878004c     pea.l      $4c.w
002d4c: 200a         move.l     a2, d0
002d4e: 5480         addq.l     #$2, d0
002d50: 2200         move.l     d0, d1
002d52: 200b         move.l     a3, d0
002d54: 5480         addq.l     #$2, d0
002d56: 61005ebe     bsr.w      $8c16
002d5a: 588f         addq.l     #$4, a7
002d5c: 4878004c     pea.l      $4c.w
002d60: 704e         moveq      #$4e, d0
002d62: d08a         add.l      a2, d0
002d64: 2200         move.l     d0, d1
002d66: 704e         moveq      #$4e, d0
002d68: d08b         add.l      a3, d0
002d6a: 61005eaa     bsr.w      $8c16
002d6e: 588f         addq.l     #$4, a7
002d70: 4878004c     pea.l      $4c.w
002d74: 203c0000009a move.l     #$9a, d0
002d7a: d08a         add.l      a2, d0
002d7c: 2200         move.l     d0, d1
002d7e: 203c0000009a move.l     #$9a, d0
002d84: d08b         add.l      a3, d0
002d86: 61005e8e     bsr.w      $8c16
002d8a: 588f         addq.l     #$4, a7
002d8c: 4878004c     pea.l      $4c.w
002d90: 203c000000e6 move.l     #$e6, d0
002d96: d08a         add.l      a2, d0
002d98: 2200         move.l     d0, d1
002d9a: 203c000000e6 move.l     #$e6, d0
002da0: d08b         add.l      a3, d0
002da2: 61005e72     bsr.w      $8c16
002da6: 588f         addq.l     #$4, a7
002da8: 4878004c     pea.l      $4c.w
002dac: 203c00000132 move.l     #$132, d0
002db2: d08a         add.l      a2, d0
002db4: 2200         move.l     d0, d1
002db6: 203c00000132 move.l     #$132, d0
002dbc: 600001fc     bra.w      $2fba
002dc0: 486a0180     pea.l      $180(a2)
002dc4: 486a0132     pea.l      $132(a2)
002dc8: 486a00e6     pea.l      $e6(a2)
002dcc: 486a009a     pea.l      $9a(a2)
002dd0: 704e         moveq      #$4e, d0
002dd2: d08a         add.l      a2, d0
002dd4: 2200         move.l     d0, d1
002dd6: 200a         move.l     a2, d0
002dd8: 5480         addq.l     #$2, d0
002dda: 61003a62     bsr.w      $683e
002dde: 4fef0010     lea.l      $10(a7), a7
002de2: 4a00         tst.b      d0
002de4: 6610         bne.b      $2df6
002de6: 61003c8e     bsr.w      $6a76
002dea: 3f400018     move.w     d0, $18(a7)
002dee: 4878000a     pea.l      $a.w
002df2: 600001ee     bra.w      $2fe2
002df6: 41d7         lea.l      (a7), a0
002df8: 2008         move.l     a0, d0
002dfa: 61003abc     bsr.w      $68b8
002dfe: 4a00         tst.b      d0
002e00: 6608         bne.b      $2e0a
002e02: 61003c72     bsr.w      $6a76
002e06: 3f400018     move.w     d0, $18(a7)
002e0a: 0c6f02590018 cmpi.w     #$259, $18(a7)
002e10: 66000230     bne.w      $3042
002e14: 36bc0004     move.w     #$4, (a3)
002e18: 4878004c     pea.l      $4c.w
002e1c: 200a         move.l     a2, d0
002e1e: 5480         addq.l     #$2, d0
002e20: 2200         move.l     d0, d1
002e22: 200b         move.l     a3, d0
002e24: 5480         addq.l     #$2, d0
002e26: 61005dee     bsr.w      $8c16
002e2a: 588f         addq.l     #$4, a7
002e2c: 4878004c     pea.l      $4c.w
002e30: 704e         moveq      #$4e, d0
002e32: d08a         add.l      a2, d0
002e34: 2200         move.l     d0, d1
002e36: 704e         moveq      #$4e, d0
002e38: d08b         add.l      a3, d0
002e3a: 61005dda     bsr.w      $8c16
002e3e: 588f         addq.l     #$4, a7
002e40: 4878004c     pea.l      $4c.w
002e44: 203c0000009a move.l     #$9a, d0
002e4a: d08a         add.l      a2, d0
002e4c: 2200         move.l     d0, d1
002e4e: 203c0000009a move.l     #$9a, d0
002e54: d08b         add.l      a3, d0
002e56: 61005dbe     bsr.w      $8c16
002e5a: 588f         addq.l     #$4, a7
002e5c: 4878004c     pea.l      $4c.w
002e60: 203c000000e6 move.l     #$e6, d0
002e66: d08a         add.l      a2, d0
002e68: 2200         move.l     d0, d1
002e6a: 203c000000e6 move.l     #$e6, d0
002e70: d08b         add.l      a3, d0
002e72: 61005da2     bsr.w      $8c16
002e76: 588f         addq.l     #$4, a7
002e78: 4878004c     pea.l      $4c.w
002e7c: 203c00000132 move.l     #$132, d0
002e82: d08a         add.l      a2, d0
002e84: 2200         move.l     d0, d1
002e86: 203c00000132 move.l     #$132, d0
002e8c: d08b         add.l      a3, d0
002e8e: 61005d86     bsr.w      $8c16
002e92: 588f         addq.l     #$4, a7
002e94: 4878004c     pea.l      $4c.w
002e98: 203c00000180 move.l     #$180, d0
002e9e: d08a         add.l      a2, d0
002ea0: 2200         move.l     d0, d1
002ea2: 203c00000180 move.l     #$180, d0
002ea8: 60000110     bra.w      $2fba
002eac: 7000         moveq      #$0, d0
002eae: 102a01cc     move.b     $1cc(a2), d0
002eb2: 2f00         move.l     d0, -(a7)
002eb4: 486a01cd     pea.l      $1cd(a2)
002eb8: 486a0132     pea.l      $132(a2)
002ebc: 486a00e6     pea.l      $e6(a2)
002ec0: 486a009a     pea.l      $9a(a2)
002ec4: 704e         moveq      #$4e, d0
002ec6: d08a         add.l      a2, d0
002ec8: 2200         move.l     d0, d1
002eca: 200a         move.l     a2, d0
002ecc: 5480         addq.l     #$2, d0
002ece: 61003a66     bsr.w      $6936
002ed2: 4fef0014     lea.l      $14(a7), a7
002ed6: 4a00         tst.b      d0
002ed8: 6610         bne.b      $2eea
002eda: 61003b9a     bsr.w      $6a76
002ede: 3f400018     move.w     d0, $18(a7)
002ee2: 4878000b     pea.l      $b.w
002ee6: 600000fa     bra.w      $2fe2
002eea: 61003aca     bsr.w      $69b6
002eee: 4a00         tst.b      d0
002ef0: 6608         bne.b      $2efa
002ef2: 61003b82     bsr.w      $6a76
002ef6: 3f400018     move.w     d0, $18(a7)
002efa: 0c6f02590018 cmpi.w     #$259, $18(a7)
002f00: 66000140     bne.w      $3042
002f04: 36bc0005     move.w     #$5, (a3)
002f08: 176a01cc01cc move.b     $1cc(a2), $1cc(a3)
002f0e: 4878004c     pea.l      $4c.w
002f12: 200a         move.l     a2, d0
002f14: 5480         addq.l     #$2, d0
002f16: 2200         move.l     d0, d1
002f18: 200b         move.l     a3, d0
002f1a: 5480         addq.l     #$2, d0
002f1c: 61005cf8     bsr.w      $8c16
002f20: 588f         addq.l     #$4, a7
002f22: 4878004c     pea.l      $4c.w
002f26: 704e         moveq      #$4e, d0
002f28: d08a         add.l      a2, d0
002f2a: 2200         move.l     d0, d1
002f2c: 704e         moveq      #$4e, d0
002f2e: d08b         add.l      a3, d0
002f30: 61005ce4     bsr.w      $8c16
002f34: 588f         addq.l     #$4, a7
002f36: 4878004c     pea.l      $4c.w
002f3a: 203c0000009a move.l     #$9a, d0
002f40: d08a         add.l      a2, d0
002f42: 2200         move.l     d0, d1
002f44: 203c0000009a move.l     #$9a, d0
002f4a: d08b         add.l      a3, d0
002f4c: 61005cc8     bsr.w      $8c16
002f50: 588f         addq.l     #$4, a7
002f52: 4878004c     pea.l      $4c.w
002f56: 203c000000e6 move.l     #$e6, d0
002f5c: d08a         add.l      a2, d0
002f5e: 2200         move.l     d0, d1
002f60: 203c000000e6 move.l     #$e6, d0
002f66: d08b         add.l      a3, d0
002f68: 61005cac     bsr.w      $8c16
002f6c: 588f         addq.l     #$4, a7
002f6e: 4878004c     pea.l      $4c.w
002f72: 203c00000132 move.l     #$132, d0
002f78: d08a         add.l      a2, d0
002f7a: 2200         move.l     d0, d1
002f7c: 203c00000132 move.l     #$132, d0
002f82: d08b         add.l      a3, d0
002f84: 61005c90     bsr.w      $8c16
002f88: 588f         addq.l     #$4, a7
002f8a: 4878004c     pea.l      $4c.w
002f8e: 203c00000180 move.l     #$180, d0
002f94: d08a         add.l      a2, d0
002f96: 2200         move.l     d0, d1
002f98: 203c00000180 move.l     #$180, d0
002f9e: d08b         add.l      a3, d0
002fa0: 61005c74     bsr.w      $8c16
002fa4: 588f         addq.l     #$4, a7
002fa6: 4878004c     pea.l      $4c.w
002faa: 203c000001cd move.l     #$1cd, d0
002fb0: d08a         add.l      a2, d0
002fb2: 2200         move.l     d0, d1
002fb4: 203c000001cd move.l     #$1cd, d0
002fba: d08b         add.l      a3, d0
002fbc: 61005c58     bsr.w      $8c16
002fc0: 588f         addq.l     #$4, a7
002fc2: 6000007e     bra.w      $3042
002fc6: 203c0000021a move.l     #$21a, d0
002fcc: d08a         add.l      a2, d0
002fce: 610039f6     bsr.w      $69c6
002fd2: 4a00         tst.b      d0
002fd4: 661c         bne.b      $2ff2
002fd6: 61003a9e     bsr.w      $6a76
002fda: 3f400018     move.w     d0, $18(a7)
002fde: 4878000c     pea.l      $c.w
002fe2: 7201         moveq      #$1, d1
002fe4: 203c00000099 move.l     #$99, d0
002fea: 61001490     bsr.w      $447c
002fee: 588f         addq.l     #$4, a7
002ff0: 602a         bra.b      $301c
002ff2: 61003a06     bsr.w      $69fa
002ff6: 4a00         tst.b      d0
002ff8: 6608         bne.b      $3002
002ffa: 61003a7a     bsr.w      $6a76
002ffe: 3f400018     move.w     d0, $18(a7)
003002: 0c6f02590018 cmpi.w     #$259, $18(a7)
003008: 6638         bne.b      $3042
00300a: 36bc0006     move.w     #$6, (a3)
00300e: 276a021a021a move.l     $21a(a2), $21a(a3)
003014: 276a021e021e move.l     $21e(a2), $21e(a3)
00301a: 6026         bra.b      $3042
00301c: 303cffff     move.w     #$ffff, d0
003020: 6024         bra.b      $3046
003022: 3012         move.w     (a2), d0
003024: 5340         subq.w     #$1, d0
003026: 0c400006     cmpi.w     #$6, d0
00302a: 62f0         bhi.b      $301c
00302c: 303b0206     move.w     $3034(pc, d0.w), d0
003030: 4efb0002     jmp        $3034(pc, d0.w)
003034: fb34fbc6     fsave      ([])
003038: fc1afd8c     fmovem     invalid, (a2)+
00303c: fe78ff92fb34 fsogt.b    $fb34.w
003042: 302f0018     move.w     $18(a7), d0
003046: 4fef001a     lea.l      $1a(a7), a7
00304a: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
003050: 4e5d         unlk       a5
003052: 4e75         rts        
003054: 4e550000     link.w     a5, #$0
003058: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00305c: 2440         movea.l    d0, a2
00305e: 2641         movea.l    d1, a3
003060: 4feffe0c     lea.l      -$1f4(a7), a7
003064: 3f7c02590076 move.w     #$259, $76(a7)
00306a: 36bc0001     move.w     #$1, (a3)
00306e: 27520002     move.l     (a2), $2(a3)
003072: 276a00040006 move.l     $4(a2), $6(a3)
003078: 376a0012000a move.w     $12(a2), $a(a3)
00307e: 202a0014     move.l     $14(a2), d0
003082: 4c7c080000000064 divs.l     #$64, d0
00308a: 3740000c     move.w     d0, $c(a3)
00308e: 426b000e     clr.w      $e(a3)
003092: 426b0010     clr.w      $10(a3)
003096: 176a00370192 move.b     $37(a2), $192(a3)
00309c: 7000         moveq      #$0, d0
00309e: 102a001d     move.b     $1d(a2), d0
0030a2: 3740018e     move.w     d0, $18e(a3)
0030a6: 4a6a001e     tst.w      $1e(a2)
0030aa: 6708         beq.b      $30b4
0030ac: 0c6a0003001e cmpi.w     #$3, $1e(a2)
0030b2: 6608         bne.b      $30bc
0030b4: 377c00010190 move.w     #$1, $190(a3)
0030ba: 6006         bra.b      $30c2
0030bc: 377c00020190 move.w     #$2, $190(a3)
0030c2: 0c6b00010190 cmpi.w     #$1, $190(a3)
0030c8: 660000b6     bne.w      $3180
0030cc: 41ef0078     lea.l      $78(a7), a0
0030d0: 2208         move.l     a0, d1
0030d2: 200a         move.l     a2, d0
0030d4: 5080         addq.l     #$8, d0
0030d6: 6100f65c     bsr.w      $2734
0030da: 3f400076     move.w     d0, $76(a7)
0030de: 0c400259     cmpi.w     #$259, d0
0030e2: 6600009c     bne.w      $3180
0030e6: 36bc0002     move.w     #$2, (a3)
0030ea: 4878004c     pea.l      $4c.w
0030ee: 41ef007c     lea.l      $7c(a7), a0
0030f2: 2208         move.l     a0, d1
0030f4: 7012         moveq      #$12, d0
0030f6: d08b         add.l      a3, d0
0030f8: 61005b1c     bsr.w      $8c16
0030fc: 588f         addq.l     #$4, a7
0030fe: 4878004c     pea.l      $4c.w
003102: 41ef0114     lea.l      $114(a7), a0
003106: 2208         move.l     a0, d1
003108: 705e         moveq      #$5e, d0
00310a: d08b         add.l      a3, d0
00310c: 61005b08     bsr.w      $8c16
003110: 588f         addq.l     #$4, a7
003112: 4878004c     pea.l      $4c.w
003116: 41ef00c8     lea.l      $c8(a7), a0
00311a: 2208         move.l     a0, d1
00311c: 203c000000aa move.l     #$aa, d0
003122: d08b         add.l      a3, d0
003124: 61005af0     bsr.w      $8c16
003128: 588f         addq.l     #$4, a7
00312a: 4878004c     pea.l      $4c.w
00312e: 41ef01ac     lea.l      $1ac(a7), a0
003132: 2208         move.l     a0, d1
003134: 203c000000f6 move.l     #$f6, d0
00313a: d08b         add.l      a3, d0
00313c: 61005ad8     bsr.w      $8c16
003140: 588f         addq.l     #$4, a7
003142: 4878004c     pea.l      $4c.w
003146: 41ef0160     lea.l      $160(a7), a0
00314a: 2208         move.l     a0, d1
00314c: 203c00000142 move.l     #$142, d0
003152: d08b         add.l      a3, d0
003154: 61005ac0     bsr.w      $8c16
003158: 588f         addq.l     #$4, a7
00315a: 41d7         lea.l      (a7), a0
00315c: 2208         move.l     a0, d1
00315e: 200a         move.l     a2, d0
003160: 5080         addq.l     #$8, d0
003162: 6100f628     bsr.w      $278c
003166: 3f400076     move.w     d0, $76(a7)
00316a: 0c400259     cmpi.w     #$259, d0
00316e: 6610         bne.b      $3180
003170: 4a2f0073     tst.b      $73(a7)
003174: 6604         bne.b      $317a
003176: 7001         moveq      #$1, d0
003178: 6002         bra.b      $317c
00317a: 7000         moveq      #$0, d0
00317c: 17400198     move.b     d0, $198(a3)
003180: 302f0076     move.w     $76(a7), d0
003184: 4fef01f4     lea.l      $1f4(a7), a7
003188: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00318e: 4e5d         unlk       a5
003190: 4e75         rts        
003192: 4e550000     link.w     a5, #$0
003196: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00319a: 2440         movea.l    d0, a2
00319c: 2641         movea.l    d1, a3
00319e: 4feffe82     lea.l      -$17e(a7), a7
0031a2: 3ebc0259     move.w     #$259, (a7)
0031a6: 41ef0002     lea.l      $2(a7), a0
0031aa: 2208         move.l     a0, d1
0031ac: 203c00000224 move.l     #$224, d0
0031b2: d08a         add.l      a2, d0
0031b4: 6100f57e     bsr.w      $2734
0031b8: 3e80         move.w     d0, (a7)
0031ba: 0c400259     cmpi.w     #$259, d0
0031be: 66000078     bne.w      $3238
0031c2: 4878004c     pea.l      $4c.w
0031c6: 41ef0006     lea.l      $6(a7), a0
0031ca: 2208         move.l     a0, d1
0031cc: 200b         move.l     a3, d0
0031ce: 5480         addq.l     #$2, d0
0031d0: 61005a44     bsr.w      $8c16
0031d4: 588f         addq.l     #$4, a7
0031d6: 4878004c     pea.l      $4c.w
0031da: 41ef009e     lea.l      $9e(a7), a0
0031de: 2208         move.l     a0, d1
0031e0: 704e         moveq      #$4e, d0
0031e2: d08b         add.l      a3, d0
0031e4: 61005a30     bsr.w      $8c16
0031e8: 588f         addq.l     #$4, a7
0031ea: 4878004c     pea.l      $4c.w
0031ee: 41ef0052     lea.l      $52(a7), a0
0031f2: 2208         move.l     a0, d1
0031f4: 203c0000009a move.l     #$9a, d0
0031fa: d08b         add.l      a3, d0
0031fc: 61005a18     bsr.w      $8c16
003200: 588f         addq.l     #$4, a7
003202: 4878004c     pea.l      $4c.w
003206: 41ef00ea     lea.l      $ea(a7), a0
00320a: 2208         move.l     a0, d1
00320c: 203c00000132 move.l     #$132, d0
003212: d08b         add.l      a3, d0
003214: 61005a00     bsr.w      $8c16
003218: 588f         addq.l     #$4, a7
00321a: 0c530004     cmpi.w     #$4, (a3)
00321e: 6718         beq.b      $3238
003220: 4878004c     pea.l      $4c.w
003224: 41ef0136     lea.l      $136(a7), a0
003228: 2208         move.l     a0, d1
00322a: 203c000000e6 move.l     #$e6, d0
003230: d08b         add.l      a3, d0
003232: 610059e2     bsr.w      $8c16
003236: 588f         addq.l     #$4, a7
003238: 3017         move.w     (a7), d0
00323a: 4fef017e     lea.l      $17e(a7), a7
00323e: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
003244: 4e5d         unlk       a5
003246: 4e75         rts        
003248: 4e550000     link.w     a5, #$0
00324c: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
003250: 2440         movea.l    d0, a2
003252: 2641         movea.l    d1, a3
003254: 4fefffec     lea.l      -$14(a7), a7
003258: 3f7c02590012 move.w     #$259, $12(a7)
00325e: 200a         move.l     a2, d0
003260: 61003260     bsr.w      $64c2
003264: 4a00         tst.b      d0
003266: 6620         bne.b      $3288
003268: 6100380c     bsr.w      $6a76
00326c: 3f400012     move.w     d0, $12(a7)
003270: 4878000d     pea.l      $d.w
003274: 7201         moveq      #$1, d1
003276: 203c00000099 move.l     #$99, d0
00327c: 610011fe     bsr.w      $447c
003280: 588f         addq.l     #$4, a7
003282: 303cffff     move.w     #$ffff, d0
003286: 601e         bra.b      $32a6
003288: 41d7         lea.l      (a7), a0
00328a: 2008         move.l     a0, d0
00328c: 61003268     bsr.w      $64f6
003290: 4a00         tst.b      d0
003292: 660a         bne.b      $329e
003294: 610037e0     bsr.w      $6a76
003298: 3f400012     move.w     d0, $12(a7)
00329c: 6004         bra.b      $32a2
00329e: 16af0010     move.b     $10(a7), (a3)
0032a2: 302f0012     move.w     $12(a7), d0
0032a6: 4fef0014     lea.l      $14(a7), a7
0032aa: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0032b0: 4e5d         unlk       a5
0032b2: 4e75         rts        
0032b4: 4e550000     link.w     a5, #$0
0032b8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0032bc: 598f         subq.l     #$4, a7
0032be: 4297         clr.l      (a7)
0032c0: 48780400     pea.l      $400.w
0032c4: 48780003     pea.l      $3.w
0032c8: 7223         moveq      #$23, d1
0032ca: 41fa0326     lea.l      $35f2(pc), a0
0032ce: 2008         move.l     a0, d0
0032d0: 61004020     bsr.w      $72f2
0032d4: 508f         addq.l     #$8, a7
0032d6: 2d40992a     move.l     d0, -$66d6(a6)
0032da: 72ff         moveq      #$ff, d1
0032dc: b280         cmp.l      d0, d1
0032de: 6604         bne.b      $32e4
0032e0: 70ff         moveq      #$ff, d0
0032e2: 2e80         move.l     d0, (a7)
0032e4: 223c00002443 move.l     #$2443, d1
0032ea: 202e992a     move.l     -$66d6(a6), d0
0032ee: 61005da8     bsr.w      $9098
0032f2: 2017         move.l     (a7), d0
0032f4: 588f         addq.l     #$4, a7
0032f6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0032fc: 4e5d         unlk       a5
0032fe: 4e75         rts        
003300: 4e550000     link.w     a5, #$0
003304: 48e7c080     movem.l    d0-d1/a0, -(a7)
003308: 598f         subq.l     #$4, a7
00330a: 4297         clr.l      (a7)
00330c: 7203         moveq      #$3, d1
00330e: 41fa02fa     lea.l      $360a(pc), a0
003312: 2008         move.l     a0, d0
003314: 61003e38     bsr.w      $714e
003318: 2d40992e     move.l     d0, -$66d2(a6)
00331c: 72ff         moveq      #$ff, d1
00331e: b280         cmp.l      d0, d1
003320: 6604         bne.b      $3326
003322: 70ff         moveq      #$ff, d0
003324: 2e80         move.l     d0, (a7)
003326: 2017         move.l     (a7), d0
003328: 588f         addq.l     #$4, a7
00332a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003330: 4e5d         unlk       a5
003332: 4e75         rts        
003334: 4e550000     link.w     a5, #$0
003338: 48e7c000     movem.l    d0-d1, -(a7)
00333c: 6100df3e     bsr.w      $127c
003340: 72ff         moveq      #$ff, d1
003342: b280         cmp.l      d0, d1
003344: 6714         beq.b      $335a
003346: 6100eb56     bsr.w      $1e9e
00334a: 72ff         moveq      #$ff, d1
00334c: b280         cmp.l      d0, d1
00334e: 670a         beq.b      $335a
003350: 6100d20a     bsr.w      $55c
003354: 72ff         moveq      #$ff, d1
003356: b280         cmp.l      d0, d1
003358: 6604         bne.b      $335e
00335a: 70ff         moveq      #$ff, d0
00335c: 6002         bra.b      $3360
00335e: 7000         moveq      #$0, d0
003360: 4ced0002fffc movem.l    -$4(a5), d1
003366: 4e5d         unlk       a5
003368: 4e75         rts        
00336a: 4e550000     link.w     a5, #$0
00336e: 48e7c080     movem.l    d0-d1/a0, -(a7)
003372: 558f         subq.l     #$2, a7
003374: 41fa02ac     lea.l      $3622(pc), a0
003378: 2008         move.l     a0, d0
00337a: 6100582c     bsr.w      $8ba8
00337e: 5640         addq.w     #$3, d0
003380: 3e80         move.w     d0, (a7)
003382: 48780005     pea.l      $5.w
003386: 48780002     pea.l      $2.w
00338a: 41ef0008     lea.l      $8(a7), a0
00338e: 2208         move.l     a0, d1
003390: 202e992e     move.l     -$66d2(a6), d0
003394: 610017ec     bsr.w      $4b82
003398: 508f         addq.l     #$8, a7
00339a: 7202         moveq      #$2, d1
00339c: b280         cmp.l      d0, d1
00339e: 661e         bne.b      $33be
0033a0: 48780005     pea.l      $5.w
0033a4: 302f0004     move.w     $4(a7), d0
0033a8: 48c0         ext.l      d0
0033aa: 5580         subq.l     #$2, d0
0033ac: 2f00         move.l     d0, -(a7)
0033ae: 41fa027f     lea.l      $362f(pc), a0
0033b2: 2208         move.l     a0, d1
0033b4: 202e992e     move.l     -$66d2(a6), d0
0033b8: 610017c8     bsr.w      $4b82
0033bc: 508f         addq.l     #$8, a7
0033be: 548f         addq.l     #$2, a7
0033c0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0033c6: 4e5d         unlk       a5
0033c8: 4e75         rts        
0033ca: 4e550000     link.w     a5, #$0
0033ce: 48e78000     movem.l    d0, -(a7)
0033d2: 70ff         moveq      #$ff, d0
0033d4: b0ae992a     cmp.l      -$66d6(a6), d0
0033d8: 670e         beq.b      $33e8
0033da: 202e992a     move.l     -$66d6(a6), d0
0033de: 61005656     bsr.w      $8a36
0033e2: 70ff         moveq      #$ff, d0
0033e4: 2d40992a     move.l     d0, -$66d6(a6)
0033e8: 4e5d         unlk       a5
0033ea: 4e75         rts        
0033ec: 4e550000     link.w     a5, #$0
0033f0: 48e78000     movem.l    d0, -(a7)
0033f4: 70ff         moveq      #$ff, d0
0033f6: b0ae992e     cmp.l      -$66d2(a6), d0
0033fa: 670e         beq.b      $340a
0033fc: 202e992e     move.l     -$66d2(a6), d0
003400: 61001332     bsr.w      $4734
003404: 70ff         moveq      #$ff, d0
003406: 2d40992e     move.l     d0, -$66d2(a6)
00340a: 4e5d         unlk       a5
00340c: 4e75         rts        
00340e: 4e550000     link.w     a5, #$0
003412: 48e78000     movem.l    d0, -(a7)
003416: 6100debe     bsr.w      $12d6
00341a: 6100eac6     bsr.w      $1ee2
00341e: 6100d180     bsr.w      $5a0
003422: 6100eca8     bsr.w      $20cc
003426: 6100f270     bsr.w      $2698
00342a: 61001a42     bsr.w      $4e6e
00342e: 4e5d         unlk       a5
003430: 4e75         rts        
003432: 4e550000     link.w     a5, #$0
003436: 48e78000     movem.l    d0, -(a7)
00343a: 0c2e00019932 cmpi.b     #$1, -$66ce(a6)
003440: 662c         bne.b      $346e
003442: 422e9932     clr.b      -$66ce(a6)
003446: 422e9934     clr.b      -$66cc(a6)
00344a: 61c2         bsr.b      $340e
00344c: 6100feb2     bsr.w      $3300
003450: 4a80         tst.l      d0
003452: 664c         bne.b      $34a0
003454: 6100fede     bsr.w      $3334
003458: 4a80         tst.l      d0
00345a: 6644         bne.b      $34a0
00345c: 6100f20c     bsr.w      $266a
003460: 4a80         tst.l      d0
003462: 663c         bne.b      $34a0
003464: 6100ec16     bsr.w      $207c
003468: 4a80         tst.l      d0
00346a: 6634         bne.b      $34a0
00346c: 601e         bra.b      $348c
00346e: 6100fe90     bsr.w      $3300
003472: 4a80         tst.l      d0
003474: 662a         bne.b      $34a0
003476: 6100febc     bsr.w      $3334
00347a: 4a80         tst.l      d0
00347c: 6622         bne.b      $34a0
00347e: 4a2e9934     tst.b      -$66cc(a6)
003482: 660c         bne.b      $3490
003484: 6100f1e4     bsr.w      $266a
003488: 6100ebf2     bsr.w      $207c
00348c: 6100fedc     bsr.w      $336a
003490: 6100ff5a     bsr.w      $33ec
003494: 1d7c00019932 move.b     #$1, -$66ce(a6)
00349a: 1d7c00019934 move.b     #$1, -$66cc(a6)
0034a0: 4e5d         unlk       a5
0034a2: 4e75         rts        
0034a4: 4e550000     link.w     a5, #$0
0034a8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0034ac: 4feffff2     lea.l      -$e(a7), a7
0034b0: 422e9933     clr.b      -$66cd(a6)
0034b4: 41d7         lea.l      (a7), a0
0034b6: 2008         move.l     a0, d0
0034b8: 6100e8f4     bsr.w      $1dae
0034bc: 72ff         moveq      #$ff, d1
0034be: b280         cmp.l      d0, d1
0034c0: 671a         beq.b      $34dc
0034c2: 0c6f0005000a cmpi.w     #$5, $a(a7)
0034c8: 6612         bne.b      $34dc
0034ca: 223c00002453 move.l     #$2453, d1
0034d0: 61006092     bsr.w      $9564
0034d4: 610047b6     bsr.w      $7c8c
0034d8: 61003f9c     bsr.w      $7476
0034dc: 4fef000e     lea.l      $e(a7), a7
0034e0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0034e6: 4e5d         unlk       a5
0034e8: 4e75         rts        
0034ea: 4e550000     link.w     a5, #$0
0034ee: 48e78000     movem.l    d0, -(a7)
0034f2: 6100fdc0     bsr.w      $32b4
0034f6: 4a80         tst.l      d0
0034f8: 6704         beq.b      $34fe
0034fa: 70ff         moveq      #$ff, d0
0034fc: 6024         bra.b      $3522
0034fe: 6100fe00     bsr.w      $3300
003502: 4a80         tst.l      d0
003504: 6616         bne.b      $351c
003506: 6100f162     bsr.w      $266a
00350a: 6100eb70     bsr.w      $207c
00350e: 6100fe5a     bsr.w      $336a
003512: 1d7c00019934 move.b     #$1, -$66cc(a6)
003518: 6100fed2     bsr.w      $33ec
00351c: 422e9932     clr.b      -$66ce(a6)
003520: 7000         moveq      #$0, d0
003522: 4e5d         unlk       a5
003524: 4e75         rts        
003526: 4e550000     link.w     a5, #$0
00352a: 48e78000     movem.l    d0, -(a7)
00352e: 6100febc     bsr.w      $33ec
003532: 6100fe96     bsr.w      $33ca
003536: 4e5d         unlk       a5
003538: 4e75         rts        
00353a: 4e550000     link.w     a5, #$0
00353e: 48e78000     movem.l    d0, -(a7)
003542: 102e9933     move.b     -$66cd(a6), d0
003546: 4e5d         unlk       a5
003548: 4e75         rts        
00354a: 4e550000     link.w     a5, #$0
00354e: 48e7c080     movem.l    d0-d1/a0, -(a7)
003552: 4fefffae     lea.l      -$52(a7), a7
003556: 48780005     pea.l      $5.w
00355a: 48780002     pea.l      $2.w
00355e: 41ef0058     lea.l      $58(a7), a0
003562: 2208         move.l     a0, d1
003564: 202e992a     move.l     -$66d6(a6), d0
003568: 61001584     bsr.w      $4aee
00356c: 508f         addq.l     #$8, a7
00356e: 7202         moveq      #$2, d1
003570: b280         cmp.l      d0, d1
003572: 6662         bne.b      $35d6
003574: 302f0050     move.w     $50(a7), d0
003578: 48c0         ext.l      d0
00357a: 5580         subq.l     #$2, d0
00357c: 2f40004c     move.l     d0, $4c(a7)
003580: 48780005     pea.l      $5.w
003584: 2f2f0050     move.l     $50(a7), -(a7)
003588: 41ef0008     lea.l      $8(a7), a0
00358c: 2208         move.l     a0, d1
00358e: 202e992a     move.l     -$66d6(a6), d0
003592: 6100155a     bsr.w      $4aee
003596: 508f         addq.l     #$8, a7
003598: b0af004c     cmp.l      $4c(a7), d0
00359c: 6638         bne.b      $35d6
00359e: 202f004c     move.l     $4c(a7), d0
0035a2: 41d7         lea.l      (a7), a0
0035a4: 42300800     clr.b      (a0, d0.l)
0035a8: 41fa0092     lea.l      $363c(pc), a0
0035ac: 2208         move.l     a0, d1
0035ae: 41d7         lea.l      (a7), a0
0035b0: 2008         move.l     a0, d0
0035b2: 61005580     bsr.w      $8b34
0035b6: 4a80         tst.l      d0
0035b8: 6606         bne.b      $35c0
0035ba: 6100fe76     bsr.w      $3432
0035be: 6016         bra.b      $35d6
0035c0: 41fa0087     lea.l      $3649(pc), a0
0035c4: 2208         move.l     a0, d1
0035c6: 41d7         lea.l      (a7), a0
0035c8: 2008         move.l     a0, d0
0035ca: 61005568     bsr.w      $8b34
0035ce: 4a80         tst.l      d0
0035d0: 6604         bne.b      $35d6
0035d2: 6100fed0     bsr.w      $34a4
0035d6: 223c00002443 move.l     #$2443, d1
0035dc: 202e992a     move.l     -$66d6(a6), d0
0035e0: 61005ab6     bsr.w      $9098
0035e4: 4fef0052     lea.l      $52(a7), a7
0035e8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0035ee: 4e5d         unlk       a5
0035f0: 4e75         rts        
0035f2: 2f63302f     move.l     -(a3), $302f(a7)
0035f6: 5f313239     subq.b     #$7, $39(a1, d3.w)
0035fa: 5f2f7069     subq.b     #$7, $7069(a7)
0035fe: 7065         moveq      #$65, d0
003600: 2f4e4156     move.l     a6, $4156(a7)
003604: 5f53         subq.w     #$7, (a3)
003606: 594e         subq.w     #$4, a6
003608: 4300         chk.l      d0, d1
00360a: 2f63302f     move.l     -(a3), $302f(a7)
00360e: 5f313238     subq.b     #$7, $38(a1, d3.w)
003612: 5f2f7069     subq.b     #$7, $7069(a7)
003616: 7065         moveq      #$65, d0
003618: 2f4d4d49     move.l     a5, $4d49(a7)
00361c: 5f53         subq.w     #$7, (a3)
00361e: 594e         subq.w     #$4, a6
003620: 4300         chk.l      d0, d1
003622: 4253         clr.w      (a3)
003624: 575f         subq.w     #$3, (a7)+
003626: 4f50         .dc.w      $4f50
003628: 4552         .dc.w      $4552
00362a: 4142         .dc.w      $4142
00362c: 4c45         .dc.w      $4c45
00362e: 00425357     ori.w      #$5357, d2
003632: 5f4f         subq.w     #$7, a7
003634: 5045         addq.w     #$8, d5
003636: 5241         addq.w     #$1, d1
003638: 424c         .dc.w      $424c
00363a: 4500         chk.l      d0, d2
00363c: 5553         subq.w     #$2, (a3)
00363e: 575f         subq.w     #$3, (a7)+
003640: 4f50         .dc.w      $4f50
003642: 4552         .dc.w      $4552
003644: 4142         .dc.w      $4142
003646: 4c45         .dc.w      $4c45
003648: 004d         .dc.w      $004d
00364a: 4d49         .dc.w      $4d49
00364c: 5f4e         subq.w     #$7, a6
00364e: 4f5f         .dc.w      $4f5f
003650: 5357         subq.w     #$1, (a7)
003652: 00004e55     ori.b      #$55, d0
003656: 000048e7     ori.b      #$e7, d0
00365a: c080         and.l      d0, d0
00365c: 48780200     pea.l      $200.w
003660: 48780003     pea.l      $3.w
003664: 7223         moveq      #$23, d1
003666: 41fa011a     lea.l      $3782(pc), a0
00366a: 2008         move.l     a0, d0
00366c: 61003c84     bsr.w      $72f2
003670: 508f         addq.l     #$8, a7
003672: 2d409936     move.l     d0, -$66ca(a6)
003676: 70ff         moveq      #$ff, d0
003678: b0ae9936     cmp.l      -$66ca(a6), d0
00367c: 6722         beq.b      $36a0
00367e: 48780200     pea.l      $200.w
003682: 48780003     pea.l      $3.w
003686: 7223         moveq      #$23, d1
003688: 41fa0108     lea.l      $3792(pc), a0
00368c: 2008         move.l     a0, d0
00368e: 61003c62     bsr.w      $72f2
003692: 508f         addq.l     #$8, a7
003694: 2d40993a     move.l     d0, -$66c6(a6)
003698: 70ff         moveq      #$ff, d0
00369a: b0ae993a     cmp.l      -$66c6(a6), d0
00369e: 6604         bne.b      $36a4
0036a0: 70ff         moveq      #$ff, d0
0036a2: 6008         bra.b      $36ac
0036a4: 7002         moveq      #$2, d0
0036a6: 610000ba     bsr.w      $3762
0036aa: 7000         moveq      #$0, d0
0036ac: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0036b2: 4e5d         unlk       a5
0036b4: 4e75         rts        
0036b6: 4e550000     link.w     a5, #$0
0036ba: 48e78000     movem.l    d0, -(a7)
0036be: 70ff         moveq      #$ff, d0
0036c0: b0ae9936     cmp.l      -$66ca(a6), d0
0036c4: 670e         beq.b      $36d4
0036c6: 202e9936     move.l     -$66ca(a6), d0
0036ca: 6100536a     bsr.w      $8a36
0036ce: 70ff         moveq      #$ff, d0
0036d0: 2d409936     move.l     d0, -$66ca(a6)
0036d4: 70ff         moveq      #$ff, d0
0036d6: b0ae993a     cmp.l      -$66c6(a6), d0
0036da: 670e         beq.b      $36ea
0036dc: 202e993a     move.l     -$66c6(a6), d0
0036e0: 61005354     bsr.w      $8a36
0036e4: 70ff         moveq      #$ff, d0
0036e6: 2d40993a     move.l     d0, -$66c6(a6)
0036ea: 70ff         moveq      #$ff, d0
0036ec: 61000074     bsr.w      $3762
0036f0: 4e5d         unlk       a5
0036f2: 4e75         rts        
0036f4: 4e550000     link.w     a5, #$0
0036f8: 48e7c000     movem.l    d0-d1, -(a7)
0036fc: 598f         subq.l     #$4, a7
0036fe: 70ff         moveq      #$ff, d0
003700: 2e80         move.l     d0, (a7)
003702: 2f2f0008     move.l     $8(a7), -(a7)
003706: 222f0008     move.l     $8(a7), d1
00370a: 202e9936     move.l     -$66ca(a6), d0
00370e: 6100047e     bsr.w      $3b8e
003712: 588f         addq.l     #$4, a7
003714: 72ff         moveq      #$ff, d1
003716: b280         cmp.l      d0, d1
003718: 6720         beq.b      $373a
00371a: 202e993a     move.l     -$66c6(a6), d0
00371e: 6100588c     bsr.w      $8fac
003722: 4a80         tst.l      d0
003724: 67f4         beq.b      $371a
003726: 2f2f0018     move.l     $18(a7), -(a7)
00372a: 222f0018     move.l     $18(a7), d1
00372e: 202e993a     move.l     -$66c6(a6), d0
003732: 6100039c     bsr.w      $3ad0
003736: 588f         addq.l     #$4, a7
003738: 2e80         move.l     d0, (a7)
00373a: 2017         move.l     (a7), d0
00373c: 588f         addq.l     #$4, a7
00373e: 4e5d         unlk       a5
003740: 4e75         rts        
003742: 4e550000     link.w     a5, #$0
003746: 48e78000     movem.l    d0, -(a7)
00374a: 2d57993e     move.l     (a7), -$66c2(a6)
00374e: 4e5d         unlk       a5
003750: 4e75         rts        
003752: 4e550000     link.w     a5, #$0
003756: 48e78000     movem.l    d0, -(a7)
00375a: 202e993e     move.l     -$66c2(a6), d0
00375e: 4e5d         unlk       a5
003760: 4e75         rts        
003762: 4e550000     link.w     a5, #$0
003766: 48e78000     movem.l    d0, -(a7)
00376a: 2d579942     move.l     (a7), -$66be(a6)
00376e: 4e5d         unlk       a5
003770: 4e75         rts        
003772: 4e550000     link.w     a5, #$0
003776: 48e78000     movem.l    d0, -(a7)
00377a: 202e9942     move.l     -$66be(a6), d0
00377e: 4e5d         unlk       a5
003780: 4e75         rts        
003782: 2f706970652f6273635f move.l     $652f6273(a0, invalid.w), $635f(a7)
00378c: 6862         bvc.b      $37f0
00378e: 5f64         subq.w     #$7, -(a4)
003790: 7000         moveq      #$0, d0
003792: 2f706970652f6273635f move.l     $652f6273(a0, invalid.w), $635f(a7)
00379c: 6470         bcc.b      $380e
00379e: 5f686200     subq.w     #$7, $6200(a0)
0037a2: 4e550000     link.w     a5, #$0
0037a6: 48e78000     movem.l    d0, -(a7)
0037aa: 70ff         moveq      #$ff, d0
0037ac: 2d40895a     move.l     d0, -$76a6(a6)
0037b0: 70ff         moveq      #$ff, d0
0037b2: 2d40895e     move.l     d0, -$76a2(a6)
0037b6: 4e5d         unlk       a5
0037b8: 4e75         rts        
0037ba: 4e550000     link.w     a5, #$0
0037be: 48e7f080     movem.l    d0-d3/a0, -(a7)
0037c2: 4feffd86     lea.l      -$27a(a7), a7
0037c6: 41ef003e     lea.l      $3e(a7), a0
0037ca: 2008         move.l     a0, d0
0037cc: 6100073c     bsr.w      $3f0a
0037d0: 4a80         tst.l      d0
0037d2: 6d56         blt.b      $382a
0037d4: 41ef0004     lea.l      $4(a7), a0
0037d8: 2008         move.l     a0, d0
0037da: 61000aca     bsr.w      $42a6
0037de: 4a80         tst.l      d0
0037e0: 6d48         blt.b      $382a
0037e2: 0c6f00010260 cmpi.w     #$1, $260(a7)
0037e8: 6640         bne.b      $382a
0037ea: 41ef0004     lea.l      $4(a7), a0
0037ee: 2208         move.l     a0, d1
0037f0: 41ef026a     lea.l      $26a(a7), a0
0037f4: 2008         move.l     a0, d0
0037f6: 206e8ff0     movea.l    -$7010(a6), a0
0037fa: 4e90         jsr        (a0)
0037fc: 2e80         move.l     d0, (a7)
0037fe: 2017         move.l     (a7), d0
003800: 4e4f         trap       #$f
003802: 00227600     ori.b      #$0, -(a2)
003806: 243c3ff40000 move.l     #$3ff40000, d2
00380c: 4e4f         trap       #$f
00380e: 00127600     ori.b      #$0, (a2)
003812: 243c40c38800 move.l     #$40c38800, d2
003818: 4e4f         trap       #$f
00381a: 00134e4f     ori.b      #$4f, (a3)
00381e: 0024206f     ori.b      #$6f, -(a4)
003822: 027a         .dc.w      $027a
003824: 2080         move.l     d0, (a0)
003826: 7001         moveq      #$1, d0
003828: 6002         bra.b      $382c
00382a: 7000         moveq      #$0, d0
00382c: 4fef027a     lea.l      $27a(a7), a7
003830: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
003836: 4e5d         unlk       a5
003838: 4e75         rts        
00383a: 4e550000     link.w     a5, #$0
00383e: 48e7c080     movem.l    d0-d1/a0, -(a7)
003842: 4fefffe2     lea.l      -$1e(a7), a7
003846: 41ef000c     lea.l      $c(a7), a0
00384a: 2008         move.l     a0, d0
00384c: 6100e560     bsr.w      $1dae
003850: 4a6f0012     tst.w      $12(a7)
003854: 670000ae     beq.w      $3904
003858: 0c6f00020012 cmpi.w     #$2, $12(a7)
00385e: 670000a4     beq.w      $3904
003862: 61005d00     bsr.w      $9564
003866: 61001d06     bsr.w      $556e
00386a: 2f40001a     move.l     d0, $1a(a7)
00386e: 6f5e         ble.b      $38ce
003870: 486f0004     pea.l      $4(a7)
003874: 41ef000c     lea.l      $c(a7), a0
003878: 2208         move.l     a0, d1
00387a: 202f001e     move.l     $1e(a7), d0
00387e: 6100239a     bsr.w      $5c1a
003882: 588f         addq.l     #$4, a7
003884: 2e80         move.l     d0, (a7)
003886: 663e         bne.b      $38c6
003888: 202f001a     move.l     $1a(a7), d0
00388c: 61001dfa     bsr.w      $5688
003890: 202f0008     move.l     $8(a7), d0
003894: 4c7c000000002710 divu.l     #$2710, d0
00389c: 206f001e     movea.l    $1e(a7), a0
0038a0: 2080         move.l     d0, (a0)
0038a2: 206f001e     movea.l    $1e(a7), a0
0038a6: 2d50895a     move.l     (a0), -$76a6(a6)
0038aa: 202f0004     move.l     $4(a7), d0
0038ae: 4c7c08000000003c divs.l     #$3c, d0
0038b6: 206f0022     movea.l    $22(a7), a0
0038ba: 2080         move.l     d0, (a0)
0038bc: 206f0022     movea.l    $22(a7), a0
0038c0: 2d50895e     move.l     (a0), -$76a2(a6)
0038c4: 603a         bra.b      $3900
0038c6: 202f001a     move.l     $1a(a7), d0
0038ca: 61001dbc     bsr.w      $5688
0038ce: 202f001e     move.l     $1e(a7), d0
0038d2: 6100fee6     bsr.w      $37ba
0038d6: 4a00         tst.b      d0
0038d8: 670a         beq.b      $38e4
0038da: 4aae895e     tst.l      -$76a2(a6)
0038de: 6e18         bgt.b      $38f8
0038e0: 7001         moveq      #$1, d0
0038e2: 6022         bra.b      $3906
0038e4: 4aae895a     tst.l      -$76a6(a6)
0038e8: 6f1a         ble.b      $3904
0038ea: 4aae895e     tst.l      -$76a2(a6)
0038ee: 6f14         ble.b      $3904
0038f0: 206f001e     movea.l    $1e(a7), a0
0038f4: 20ae895a     move.l     -$76a6(a6), (a0)
0038f8: 206f0022     movea.l    $22(a7), a0
0038fc: 20ae895e     move.l     -$76a2(a6), (a0)
003900: 7000         moveq      #$0, d0
003902: 6002         bra.b      $3906
003904: 7002         moveq      #$2, d0
003906: 4fef001e     lea.l      $1e(a7), a7
00390a: 4ced0100fffc movem.l    -$4(a5), a0
003910: 4e5d         unlk       a5
003912: 4e75         rts        
003914: 4e550000     link.w     a5, #$0
003918: 48e7c080     movem.l    d0-d1/a0, -(a7)
00391c: 4feffff2     lea.l      -$e(a7), a7
003920: 3ebc0002     move.w     #$2, (a7)
003924: 2f7c0007a1200002 move.l     #$7a120, $2(a7)
00392c: 2f7c000186a00006 move.l     #$186a0, $6(a7)
003934: 7201         moveq      #$1, d1
003936: 41fa00fc     lea.l      $3a34(pc), a0
00393a: 2008         move.l     a0, d0
00393c: 61003810     bsr.w      $714e
003940: 2f40000a     move.l     d0, $a(a7)
003944: 6c48         bge.b      $398e
003946: 206f000e     movea.l    $e(a7), a0
00394a: 2097         move.l     (a7), (a0)
00394c: 216f00040004 move.l     $4(a7), $4(a0)
003952: 316f00080008 move.w     $8(a7), $8(a0)
003958: 7202         moveq      #$2, d1
00395a: 41fa00ec     lea.l      $3a48(pc), a0
00395e: 2008         move.l     a0, d0
003960: 61003806     bsr.w      $7168
003964: 2f40000a     move.l     d0, $a(a7)
003968: 6d56         blt.b      $39c0
00396a: 4878000a     pea.l      $a.w
00396e: 41ef0004     lea.l      $4(a7), a0
003972: 2208         move.l     a0, d1
003974: 202f000e     move.l     $e(a7), d0
003978: 610050a8     bsr.w      $8a22
00397c: 588f         addq.l     #$4, a7
00397e: 720a         moveq      #$a, d1
003980: b280         cmp.l      d0, d1
003982: 663c         bne.b      $39c0
003984: 202f000a     move.l     $a(a7), d0
003988: 610050ac     bsr.w      $8a36
00398c: 6040         bra.b      $39ce
00398e: 4878000a     pea.l      $a.w
003992: 222f0012     move.l     $12(a7), d1
003996: 202f000e     move.l     $e(a7), d0
00399a: 6100507e     bsr.w      $8a1a
00399e: 588f         addq.l     #$4, a7
0039a0: 720a         moveq      #$a, d1
0039a2: b280         cmp.l      d0, d1
0039a4: 671e         beq.b      $39c4
0039a6: 206f000e     movea.l    $e(a7), a0
0039aa: 2097         move.l     (a7), (a0)
0039ac: 216f00040004 move.l     $4(a7), $4(a0)
0039b2: 316f00080008 move.w     $8(a7), $8(a0)
0039b8: 202f000a     move.l     $a(a7), d0
0039bc: 61005078     bsr.w      $8a36
0039c0: 7000         moveq      #$0, d0
0039c2: 600c         bra.b      $39d0
0039c4: 202f000a     move.l     $a(a7), d0
0039c8: 6100506c     bsr.w      $8a36
0039cc: 4a80         tst.l      d0
0039ce: 7001         moveq      #$1, d0
0039d0: 4fef000e     lea.l      $e(a7), a7
0039d4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0039da: 4e5d         unlk       a5
0039dc: 4e75         rts        
0039de: 4e550000     link.w     a5, #$0
0039e2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0039e6: 598f         subq.l     #$4, a7
0039e8: 7202         moveq      #$2, d1
0039ea: 41fa0070     lea.l      $3a5c(pc), a0
0039ee: 2008         move.l     a0, d0
0039f0: 6100375c     bsr.w      $714e
0039f4: 2e80         move.l     d0, (a7)
0039f6: 6d2a         blt.b      $3a22
0039f8: 4878000a     pea.l      $a.w
0039fc: 222f0008     move.l     $8(a7), d1
003a00: 202f0004     move.l     $4(a7), d0
003a04: 6100501c     bsr.w      $8a22
003a08: 588f         addq.l     #$4, a7
003a0a: 720a         moveq      #$a, d1
003a0c: b280         cmp.l      d0, d1
003a0e: 6708         beq.b      $3a18
003a10: 2017         move.l     (a7), d0
003a12: 61005022     bsr.w      $8a36
003a16: 600a         bra.b      $3a22
003a18: 2017         move.l     (a7), d0
003a1a: 6100501a     bsr.w      $8a36
003a1e: 4a80         tst.l      d0
003a20: 6c04         bge.b      $3a26
003a22: 7000         moveq      #$0, d0
003a24: 6002         bra.b      $3a28
003a26: 7001         moveq      #$1, d0
003a28: 588f         addq.l     #$4, a7
003a2a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003a30: 4e5d         unlk       a5
003a32: 4e75         rts        
003a34: 2f63302f     move.l     -(a3), $302f(a7)
003a38: 5f313239     subq.b     #$7, $39(a1, d3.w)
003a3c: 5f2f6e76     subq.b     #$7, $6e76(a7)
003a40: 722f         moveq      #$2f, d1
003a42: 6e76         bgt.b      $3aba
003a44: 5f727000     subq.w     #$7, (a2, d7.w)
003a48: 2f63302f     move.l     -(a3), $302f(a7)
003a4c: 5f313239     subq.b     #$7, $39(a1, d3.w)
003a50: 5f2f6e76     subq.b     #$7, $6e76(a7)
003a54: 722f         moveq      #$2f, d1
003a56: 6e76         bgt.b      $3ace
003a58: 5f727000     subq.w     #$7, (a2, d7.w)
003a5c: 2f63302f     move.l     -(a3), $302f(a7)
003a60: 5f313239     subq.b     #$7, $39(a1, d3.w)
003a64: 5f2f6e76     subq.b     #$7, $6e76(a7)
003a68: 722f         moveq      #$2f, d1
003a6a: 6e76         bgt.b      $3ae2
003a6c: 5f727000     subq.w     #$7, (a2, d7.w)
003a70: 4e550000     link.w     a5, #$0
003a74: 48e7c000     movem.l    d0-d1, -(a7)
003a78: 518f         subq.l     #$8, a7
003a7a: 42af0004     clr.l      $4(a7)
003a7e: 6034         bra.b      $3ab4
003a80: 202f0018     move.l     $18(a7), d0
003a84: 90af0004     sub.l      $4(a7), d0
003a88: 2f00         move.l     d0, -(a7)
003a8a: 202f0010     move.l     $10(a7), d0
003a8e: d0af0008     add.l      $8(a7), d0
003a92: 2200         move.l     d0, d1
003a94: 202f000c     move.l     $c(a7), d0
003a98: 61004f80     bsr.w      $8a1a
003a9c: 588f         addq.l     #$4, a7
003a9e: 2e80         move.l     d0, (a7)
003aa0: 70ff         moveq      #$ff, d0
003aa2: b097         cmp.l      (a7), d0
003aa4: 6608         bne.b      $3aae
003aa6: 70ff         moveq      #$ff, d0
003aa8: 2f400004     move.l     d0, $4(a7)
003aac: 6006         bra.b      $3ab4
003aae: 2017         move.l     (a7), d0
003ab0: d1af0004     add.l      d0, $4(a7)
003ab4: 70ff         moveq      #$ff, d0
003ab6: b0af0004     cmp.l      $4(a7), d0
003aba: 6c0a         bge.b      $3ac6
003abc: 202f0004     move.l     $4(a7), d0
003ac0: b0af0018     cmp.l      $18(a7), d0
003ac4: 6dba         blt.b      $3a80
003ac6: 202f0004     move.l     $4(a7), d0
003aca: 508f         addq.l     #$8, a7
003acc: 4e5d         unlk       a5
003ace: 4e75         rts        
003ad0: 4e550000     link.w     a5, #$0
003ad4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003ad8: 5d8f         subq.l     #$6, a7
003ada: 70ff         moveq      #$ff, d0
003adc: 2f400002     move.l     d0, $2(a7)
003ae0: 48780002     pea.l      $2.w
003ae4: 41ef0004     lea.l      $4(a7), a0
003ae8: 2208         move.l     a0, d1
003aea: 202f000a     move.l     $a(a7), d0
003aee: 61004f2a     bsr.w      $8a1a
003af2: 588f         addq.l     #$4, a7
003af4: 7202         moveq      #$2, d1
003af6: b280         cmp.l      d0, d1
003af8: 66000084     bne.w      $3b7e
003afc: 3057         movea.w    (a7), a0
003afe: 226f001e     movea.l    $1e(a7), a1
003b02: 2288         move.l     a0, (a1)
003b04: 206f001e     movea.l    $1e(a7), a0
003b08: 2010         move.l     (a0), d0
003b0a: 61004f6e     bsr.w      $8a7a
003b0e: 206f000a     movea.l    $a(a7), a0
003b12: 2080         move.l     d0, (a0)
003b14: 673c         beq.b      $3b52
003b16: 206f001e     movea.l    $1e(a7), a0
003b1a: 2f10         move.l     (a0), -(a7)
003b1c: 206f000e     movea.l    $e(a7), a0
003b20: 2210         move.l     (a0), d1
003b22: 202f000a     move.l     $a(a7), d0
003b26: 6100ff48     bsr.w      $3a70
003b2a: 588f         addq.l     #$4, a7
003b2c: 206f001e     movea.l    $1e(a7), a0
003b30: b090         cmp.l      (a0), d0
003b32: 6606         bne.b      $3b3a
003b34: 42af0002     clr.l      $2(a7)
003b38: 6044         bra.b      $3b7e
003b3a: 206f001e     movea.l    $1e(a7), a0
003b3e: 4290         clr.l      (a0)
003b40: 206f000a     movea.l    $a(a7), a0
003b44: 2010         move.l     (a0), d0
003b46: 61004f3e     bsr.w      $8a86
003b4a: 206f000a     movea.l    $a(a7), a0
003b4e: 4290         clr.l      (a0)
003b50: 602c         bra.b      $3b7e
003b52: 558f         subq.l     #$2, a7
003b54: 6014         bra.b      $3b6a
003b56: 48780001     pea.l      $1.w
003b5a: 41ef0005     lea.l      $5(a7), a0
003b5e: 2208         move.l     a0, d1
003b60: 202f000c     move.l     $c(a7), d0
003b64: 61004eb4     bsr.w      $8a1a
003b68: 588f         addq.l     #$4, a7
003b6a: 206f0020     movea.l    $20(a7), a0
003b6e: 2010         move.l     (a0), d0
003b70: 5390         subq.l     #$1, (a0)
003b72: 4a80         tst.l      d0
003b74: 66e0         bne.b      $3b56
003b76: 206f0020     movea.l    $20(a7), a0
003b7a: 4290         clr.l      (a0)
003b7c: 548f         addq.l     #$2, a7
003b7e: 202f0002     move.l     $2(a7), d0
003b82: 5c8f         addq.l     #$6, a7
003b84: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003b8a: 4e5d         unlk       a5
003b8c: 4e75         rts        
003b8e: 4e550000     link.w     a5, #$0
003b92: 48e7c080     movem.l    d0-d1/a0, -(a7)
003b96: 5d8f         subq.l     #$6, a7
003b98: 70ff         moveq      #$ff, d0
003b9a: 2f400002     move.l     d0, $2(a7)
003b9e: 3eaf001c     move.w     $1c(a7), (a7)
003ba2: 48780002     pea.l      $2.w
003ba6: 41ef0004     lea.l      $4(a7), a0
003baa: 2208         move.l     a0, d1
003bac: 202f000a     move.l     $a(a7), d0
003bb0: 61004e70     bsr.w      $8a22
003bb4: 588f         addq.l     #$4, a7
003bb6: 7202         moveq      #$2, d1
003bb8: b280         cmp.l      d0, d1
003bba: 661c         bne.b      $3bd8
003bbc: 2f2f001a     move.l     $1a(a7), -(a7)
003bc0: 222f000e     move.l     $e(a7), d1
003bc4: 202f000a     move.l     $a(a7), d0
003bc8: 61004e58     bsr.w      $8a22
003bcc: 588f         addq.l     #$4, a7
003bce: b0af001a     cmp.l      $1a(a7), d0
003bd2: 6604         bne.b      $3bd8
003bd4: 42af0002     clr.l      $2(a7)
003bd8: 202f0002     move.l     $2(a7), d0
003bdc: 5c8f         addq.l     #$6, a7
003bde: 4ced0100fffc movem.l    -$4(a5), a0
003be4: 4e5d         unlk       a5
003be6: 4e75         rts        
003be8: 4e550000     link.w     a5, #$0
003bec: 48e7c080     movem.l    d0-d1/a0, -(a7)
003bf0: 70ff         moveq      #$ff, d0
003bf2: b0ae9946     cmp.l      -$66ba(a6), d0
003bf6: 6616         bne.b      $3c0e
003bf8: 7203         moveq      #$3, d1
003bfa: 41fa0280     lea.l      $3e7c(pc), a0
003bfe: 2008         move.l     a0, d0
003c00: 6100354c     bsr.w      $714e
003c04: 2d409946     move.l     d0, -$66ba(a6)
003c08: 72ff         moveq      #$ff, d1
003c0a: b280         cmp.l      d0, d1
003c0c: 672a         beq.b      $3c38
003c0e: 42a7         clr.l      -(a7)
003c10: 7200         moveq      #$0, d1
003c12: 202e9946     move.l     -$66ba(a6), d0
003c16: 61004e12     bsr.w      $8a2a
003c1a: 588f         addq.l     #$4, a7
003c1c: 4878002e     pea.l      $2e.w
003c20: 222f0004     move.l     $4(a7), d1
003c24: 202e9946     move.l     -$66ba(a6), d0
003c28: 61004df0     bsr.w      $8a1a
003c2c: 588f         addq.l     #$4, a7
003c2e: 722e         moveq      #$2e, d1
003c30: b280         cmp.l      d0, d1
003c32: 6604         bne.b      $3c38
003c34: 7000         moveq      #$0, d0
003c36: 6002         bra.b      $3c3a
003c38: 70ff         moveq      #$ff, d0
003c3a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003c40: 4e5d         unlk       a5
003c42: 4e75         rts        
003c44: 4e550000     link.w     a5, #$0
003c48: 48e7c080     movem.l    d0-d1/a0, -(a7)
003c4c: 70ff         moveq      #$ff, d0
003c4e: b0ae9946     cmp.l      -$66ba(a6), d0
003c52: 6616         bne.b      $3c6a
003c54: 7203         moveq      #$3, d1
003c56: 41fa023b     lea.l      $3e93(pc), a0
003c5a: 2008         move.l     a0, d0
003c5c: 610034f0     bsr.w      $714e
003c60: 2d409946     move.l     d0, -$66ba(a6)
003c64: 72ff         moveq      #$ff, d1
003c66: b280         cmp.l      d0, d1
003c68: 672a         beq.b      $3c94
003c6a: 42a7         clr.l      -(a7)
003c6c: 7200         moveq      #$0, d1
003c6e: 202e9946     move.l     -$66ba(a6), d0
003c72: 61004db6     bsr.w      $8a2a
003c76: 588f         addq.l     #$4, a7
003c78: 4878002e     pea.l      $2e.w
003c7c: 222f0004     move.l     $4(a7), d1
003c80: 202e9946     move.l     -$66ba(a6), d0
003c84: 61004d9c     bsr.w      $8a22
003c88: 588f         addq.l     #$4, a7
003c8a: 722e         moveq      #$2e, d1
003c8c: b280         cmp.l      d0, d1
003c8e: 6604         bne.b      $3c94
003c90: 7000         moveq      #$0, d0
003c92: 6002         bra.b      $3c96
003c94: 70ff         moveq      #$ff, d0
003c96: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003c9c: 4e5d         unlk       a5
003c9e: 4e75         rts        
003ca0: 4e550000     link.w     a5, #$0
003ca4: 48e78000     movem.l    d0, -(a7)
003ca8: 70ff         moveq      #$ff, d0
003caa: b0ae9946     cmp.l      -$66ba(a6), d0
003cae: 6604         bne.b      $3cb4
003cb0: 70ff         moveq      #$ff, d0
003cb2: 6010         bra.b      $3cc4
003cb4: 202e9946     move.l     -$66ba(a6), d0
003cb8: 61004d7c     bsr.w      $8a36
003cbc: 70ff         moveq      #$ff, d0
003cbe: 2d409946     move.l     d0, -$66ba(a6)
003cc2: 7000         moveq      #$0, d0
003cc4: 4e5d         unlk       a5
003cc6: 4e75         rts        
003cc8: 4e550000     link.w     a5, #$0
003ccc: 48e7c000     movem.l    d0-d1, -(a7)
003cd0: 42a7         clr.l      -(a7)
003cd2: 222e9946     move.l     -$66ba(a6), d1
003cd6: 203c00000200 move.l     #$200, d0
003cdc: 610043b8     bsr.w      $8096
003ce0: 588f         addq.l     #$4, a7
003ce2: 4ced0002fffc movem.l    -$4(a5), d1
003ce8: 4e5d         unlk       a5
003cea: 4e75         rts        
003cec: 4e550000     link.w     a5, #$0
003cf0: 48e7c080     movem.l    d0-d1/a0, -(a7)
003cf4: 70ff         moveq      #$ff, d0
003cf6: b0ae9946     cmp.l      -$66ba(a6), d0
003cfa: 661a         bne.b      $3d16
003cfc: 7203         moveq      #$3, d1
003cfe: 41fa01aa     lea.l      $3eaa(pc), a0
003d02: 2008         move.l     a0, d0
003d04: 61003448     bsr.w      $714e
003d08: 2d409946     move.l     d0, -$66ba(a6)
003d0c: 72ff         moveq      #$ff, d1
003d0e: b280         cmp.l      d0, d1
003d10: 6604         bne.b      $3d16
003d12: 70ff         moveq      #$ff, d0
003d14: 6012         bra.b      $3d28
003d16: 42a7         clr.l      -(a7)
003d18: 222e9946     move.l     -$66ba(a6), d1
003d1c: 203c00000900 move.l     #$900, d0
003d22: 6100430e     bsr.w      $8032
003d26: 588f         addq.l     #$4, a7
003d28: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003d2e: 4e5d         unlk       a5
003d30: 4e75         rts        
003d32: 4e550000     link.w     a5, #$0
003d36: 48e7c080     movem.l    d0-d1/a0, -(a7)
003d3a: 70ff         moveq      #$ff, d0
003d3c: b0ae994a     cmp.l      -$66b6(a6), d0
003d40: 6616         bne.b      $3d58
003d42: 7203         moveq      #$3, d1
003d44: 41fa017b     lea.l      $3ec1(pc), a0
003d48: 2008         move.l     a0, d0
003d4a: 61003402     bsr.w      $714e
003d4e: 2d40994a     move.l     d0, -$66b6(a6)
003d52: 72ff         moveq      #$ff, d1
003d54: b280         cmp.l      d0, d1
003d56: 672a         beq.b      $3d82
003d58: 42a7         clr.l      -(a7)
003d5a: 7200         moveq      #$0, d1
003d5c: 202e994a     move.l     -$66b6(a6), d0
003d60: 61004cc8     bsr.w      $8a2a
003d64: 588f         addq.l     #$4, a7
003d66: 4878001e     pea.l      $1e.w
003d6a: 222f0004     move.l     $4(a7), d1
003d6e: 202e994a     move.l     -$66b6(a6), d0
003d72: 61004ca6     bsr.w      $8a1a
003d76: 588f         addq.l     #$4, a7
003d78: 721e         moveq      #$1e, d1
003d7a: b280         cmp.l      d0, d1
003d7c: 6604         bne.b      $3d82
003d7e: 7000         moveq      #$0, d0
003d80: 6002         bra.b      $3d84
003d82: 70ff         moveq      #$ff, d0
003d84: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003d8a: 4e5d         unlk       a5
003d8c: 4e75         rts        
003d8e: 4e550000     link.w     a5, #$0
003d92: 48e7c080     movem.l    d0-d1/a0, -(a7)
003d96: 70ff         moveq      #$ff, d0
003d98: b0ae994a     cmp.l      -$66b6(a6), d0
003d9c: 6616         bne.b      $3db4
003d9e: 7203         moveq      #$3, d1
003da0: 41fa0137     lea.l      $3ed9(pc), a0
003da4: 2008         move.l     a0, d0
003da6: 610033a6     bsr.w      $714e
003daa: 2d40994a     move.l     d0, -$66b6(a6)
003dae: 72ff         moveq      #$ff, d1
003db0: b280         cmp.l      d0, d1
003db2: 672a         beq.b      $3dde
003db4: 42a7         clr.l      -(a7)
003db6: 7200         moveq      #$0, d1
003db8: 202e994a     move.l     -$66b6(a6), d0
003dbc: 61004c6c     bsr.w      $8a2a
003dc0: 588f         addq.l     #$4, a7
003dc2: 4878001e     pea.l      $1e.w
003dc6: 222f0004     move.l     $4(a7), d1
003dca: 202e994a     move.l     -$66b6(a6), d0
003dce: 61004c52     bsr.w      $8a22
003dd2: 588f         addq.l     #$4, a7
003dd4: 721e         moveq      #$1e, d1
003dd6: b280         cmp.l      d0, d1
003dd8: 6604         bne.b      $3dde
003dda: 7000         moveq      #$0, d0
003ddc: 6002         bra.b      $3de0
003dde: 70ff         moveq      #$ff, d0
003de0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003de6: 4e5d         unlk       a5
003de8: 4e75         rts        
003dea: 4e550000     link.w     a5, #$0
003dee: 48e78000     movem.l    d0, -(a7)
003df2: 70ff         moveq      #$ff, d0
003df4: b0ae994a     cmp.l      -$66b6(a6), d0
003df8: 6604         bne.b      $3dfe
003dfa: 70ff         moveq      #$ff, d0
003dfc: 6010         bra.b      $3e0e
003dfe: 202e994a     move.l     -$66b6(a6), d0
003e02: 61004c32     bsr.w      $8a36
003e06: 70ff         moveq      #$ff, d0
003e08: 2d40994a     move.l     d0, -$66b6(a6)
003e0c: 7000         moveq      #$0, d0
003e0e: 4e5d         unlk       a5
003e10: 4e75         rts        
003e12: 4e550000     link.w     a5, #$0
003e16: 48e7c000     movem.l    d0-d1, -(a7)
003e1a: 42a7         clr.l      -(a7)
003e1c: 222e994a     move.l     -$66b6(a6), d1
003e20: 203c00000200 move.l     #$200, d0
003e26: 6100426e     bsr.w      $8096
003e2a: 588f         addq.l     #$4, a7
003e2c: 4ced0002fffc movem.l    -$4(a5), d1
003e32: 4e5d         unlk       a5
003e34: 4e75         rts        
003e36: 4e550000     link.w     a5, #$0
003e3a: 48e7c080     movem.l    d0-d1/a0, -(a7)
003e3e: 70ff         moveq      #$ff, d0
003e40: b0ae994a     cmp.l      -$66b6(a6), d0
003e44: 661a         bne.b      $3e60
003e46: 7203         moveq      #$3, d1
003e48: 41fa00a7     lea.l      $3ef1(pc), a0
003e4c: 2008         move.l     a0, d0
003e4e: 610032fe     bsr.w      $714e
003e52: 2d40994a     move.l     d0, -$66b6(a6)
003e56: 72ff         moveq      #$ff, d1
003e58: b280         cmp.l      d0, d1
003e5a: 6604         bne.b      $3e60
003e5c: 70ff         moveq      #$ff, d0
003e5e: 6012         bra.b      $3e72
003e60: 42a7         clr.l      -(a7)
003e62: 222e994a     move.l     -$66b6(a6), d1
003e66: 203c00000900 move.l     #$900, d0
003e6c: 610041c4     bsr.w      $8032
003e70: 588f         addq.l     #$4, a7
003e72: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003e78: 4e5d         unlk       a5
003e7a: 4e75         rts        
003e7c: 2f63302f     move.l     -(a3), $302f(a7)
003e80: 5f313239     subq.b     #$7, $39(a1, d3.w)
003e84: 5f2f7061     subq.b     #$7, $7061(a7)
003e88: 636b         bls.b      $3ef5
003e8a: 2f677073     move.l     -(a7), $7073(a7)
003e8e: 5f706f73002f63302f5f3132 subq.w     #$7, ([$2f6330, a0], $2f5f3132)
003e9a: 395f2f70     move.w     (a7)+, $2f70(a4)
003e9e: 6163         bsr.b      $3f03
003ea0: 6b2f         bmi.b      $3ed1
003ea2: 6770         beq.b      $3f14
003ea4: 735f         .dc.w      $735f
003ea6: 706f         moveq      #$6f, d0
003ea8: 7300         .dc.w      $7300
003eaa: 2f63302f     move.l     -(a3), $302f(a7)
003eae: 5f313239     subq.b     #$7, $39(a1, d3.w)
003eb2: 5f2f7061     subq.b     #$7, $7061(a7)
003eb6: 636b         bls.b      $3f23
003eb8: 2f677073     move.l     -(a7), $7073(a7)
003ebc: 5f706f73002f63302f5f3132 subq.w     #$7, ([$2f6330, a0], $2f5f3132)
003ec8: 395f2f70     move.w     (a7)+, $2f70(a4)
003ecc: 6163         bsr.b      $3f31
003ece: 6b2f         bmi.b      $3eff
003ed0: 6770         beq.b      $3f42
003ed2: 735f         .dc.w      $735f
003ed4: 696e         bvs.b      $3f44
003ed6: 666f         bne.b      $3f47
003ed8: 002f63302f5f ori.b      #$30, $2f5f(a7)
003ede: 3132395f     move.w     ([a2]), -(a0)
003ee2: 2f7061636b2f6770735f696e move.l     ([$6b2f, a0], $6770735f), $696e(a7)
003eee: 666f         bne.b      $3f5f
003ef0: 002f63302f5f ori.b      #$30, $2f5f(a7)
003ef6: 3132395f     move.w     ([a2]), -(a0)
003efa: 2f7061636b2f6770735f696e move.l     ([$6b2f, a0], $6770735f), $696e(a7)
003f06: 666f         bne.b      $3f77
003f08: 00004e55     ori.b      #$55, d0
003f0c: 000048e7     ori.b      #$e7, d0
003f10: c080         and.l      d0, d0
003f12: 70ff         moveq      #$ff, d0
003f14: b0ae994e     cmp.l      -$66b2(a6), d0
003f18: 6616         bne.b      $3f30
003f1a: 7203         moveq      #$3, d1
003f1c: 41fa013a     lea.l      $4058(pc), a0
003f20: 2008         move.l     a0, d0
003f22: 6100322a     bsr.w      $714e
003f26: 2d40994e     move.l     d0, -$66b2(a6)
003f2a: 72ff         moveq      #$ff, d1
003f2c: b280         cmp.l      d0, d1
003f2e: 672c         beq.b      $3f5c
003f30: 42a7         clr.l      -(a7)
003f32: 7200         moveq      #$0, d1
003f34: 202e994e     move.l     -$66b2(a6), d0
003f38: 61004af0     bsr.w      $8a2a
003f3c: 588f         addq.l     #$4, a7
003f3e: 4878023c     pea.l      $23c.w
003f42: 222f0004     move.l     $4(a7), d1
003f46: 202e994e     move.l     -$66b2(a6), d0
003f4a: 61004ace     bsr.w      $8a1a
003f4e: 588f         addq.l     #$4, a7
003f50: 0c800000023c cmpi.l     #$23c, d0
003f56: 6604         bne.b      $3f5c
003f58: 7000         moveq      #$0, d0
003f5a: 6002         bra.b      $3f5e
003f5c: 70ff         moveq      #$ff, d0
003f5e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003f64: 4e5d         unlk       a5
003f66: 4e75         rts        
003f68: 4e550000     link.w     a5, #$0
003f6c: 48e7c080     movem.l    d0-d1/a0, -(a7)
003f70: 70ff         moveq      #$ff, d0
003f72: b0ae994e     cmp.l      -$66b2(a6), d0
003f76: 6616         bne.b      $3f8e
003f78: 7203         moveq      #$3, d1
003f7a: 41fa00f7     lea.l      $4073(pc), a0
003f7e: 2008         move.l     a0, d0
003f80: 610031cc     bsr.w      $714e
003f84: 2d40994e     move.l     d0, -$66b2(a6)
003f88: 72ff         moveq      #$ff, d1
003f8a: b280         cmp.l      d0, d1
003f8c: 672c         beq.b      $3fba
003f8e: 42a7         clr.l      -(a7)
003f90: 7200         moveq      #$0, d1
003f92: 202e994e     move.l     -$66b2(a6), d0
003f96: 61004a92     bsr.w      $8a2a
003f9a: 588f         addq.l     #$4, a7
003f9c: 4878023c     pea.l      $23c.w
003fa0: 222f0004     move.l     $4(a7), d1
003fa4: 202e994e     move.l     -$66b2(a6), d0
003fa8: 61004a78     bsr.w      $8a22
003fac: 588f         addq.l     #$4, a7
003fae: 0c800000023c cmpi.l     #$23c, d0
003fb4: 6604         bne.b      $3fba
003fb6: 7000         moveq      #$0, d0
003fb8: 6002         bra.b      $3fbc
003fba: 70ff         moveq      #$ff, d0
003fbc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003fc2: 4e5d         unlk       a5
003fc4: 4e75         rts        
003fc6: 4e550000     link.w     a5, #$0
003fca: 48e78000     movem.l    d0, -(a7)
003fce: 70ff         moveq      #$ff, d0
003fd0: b0ae994e     cmp.l      -$66b2(a6), d0
003fd4: 6604         bne.b      $3fda
003fd6: 70ff         moveq      #$ff, d0
003fd8: 6010         bra.b      $3fea
003fda: 202e994e     move.l     -$66b2(a6), d0
003fde: 61004a56     bsr.w      $8a36
003fe2: 70ff         moveq      #$ff, d0
003fe4: 2d40994e     move.l     d0, -$66b2(a6)
003fe8: 7000         moveq      #$0, d0
003fea: 4e5d         unlk       a5
003fec: 4e75         rts        
003fee: 4e550000     link.w     a5, #$0
003ff2: 48e7c000     movem.l    d0-d1, -(a7)
003ff6: 42a7         clr.l      -(a7)
003ff8: 222e994e     move.l     -$66b2(a6), d1
003ffc: 203c00000200 move.l     #$200, d0
004002: 61004092     bsr.w      $8096
004006: 588f         addq.l     #$4, a7
004008: 4ced0002fffc movem.l    -$4(a5), d1
00400e: 4e5d         unlk       a5
004010: 4e75         rts        
004012: 4e550000     link.w     a5, #$0
004016: 48e7c080     movem.l    d0-d1/a0, -(a7)
00401a: 70ff         moveq      #$ff, d0
00401c: b0ae994e     cmp.l      -$66b2(a6), d0
004020: 661a         bne.b      $403c
004022: 7203         moveq      #$3, d1
004024: 41fa0068     lea.l      $408e(pc), a0
004028: 2008         move.l     a0, d0
00402a: 61003122     bsr.w      $714e
00402e: 2d40994e     move.l     d0, -$66b2(a6)
004032: 72ff         moveq      #$ff, d1
004034: b280         cmp.l      d0, d1
004036: 6604         bne.b      $403c
004038: 70ff         moveq      #$ff, d0
00403a: 6012         bra.b      $404e
00403c: 42a7         clr.l      -(a7)
00403e: 222e994e     move.l     -$66b2(a6), d1
004042: 203c00000900 move.l     #$900, d0
004048: 61003fe8     bsr.w      $8032
00404c: 588f         addq.l     #$4, a7
00404e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004054: 4e5d         unlk       a5
004056: 4e75         rts        
004058: 2f63302f     move.l     -(a3), $302f(a7)
00405c: 5f313239     subq.b     #$7, $39(a1, d3.w)
004060: 5f2f7061     subq.b     #$7, $7061(a7)
004064: 636b         bls.b      $40d1
004066: 2f646573     move.l     -(a4), $6573(a7)
00406a: 7469         moveq      #$69, d2
00406c: 6e61         bgt.b      $40cf
00406e: 7469         moveq      #$69, d2
004070: 6f6e         ble.b      $40e0
004072: 002f63302f5f ori.b      #$30, $2f5f(a7)
004078: 3132395f     move.w     ([a2]), -(a0)
00407c: 2f7061636b2f64657374696e move.l     ([$6b2f, a0], $64657374), $696e(a7)
004088: 6174         bsr.b      $40fe
00408a: 696f         bvs.b      $40fb
00408c: 6e002f63     bgt.w      $6ff1
004090: 302f5f31     move.w     $5f31(a7), d0
004094: 32395f2f7061 move.w     $5f2f7061.l, d1
00409a: 636b         bls.b      $4107
00409c: 2f646573     move.l     -(a4), $6573(a7)
0040a0: 7469         moveq      #$69, d2
0040a2: 6e61         bgt.b      $4105
0040a4: 7469         moveq      #$69, d2
0040a6: 6f6e         ble.b      $4116
0040a8: 00004e55     ori.b      #$55, d0
0040ac: 000048e7     ori.b      #$e7, d0
0040b0: c080         and.l      d0, d0
0040b2: 70ff         moveq      #$ff, d0
0040b4: b0ae9952     cmp.l      -$66ae(a6), d0
0040b8: 6616         bne.b      $40d0
0040ba: 7203         moveq      #$3, d1
0040bc: 41fa00cc     lea.l      $418a(pc), a0
0040c0: 2008         move.l     a0, d0
0040c2: 6100308a     bsr.w      $714e
0040c6: 2d409952     move.l     d0, -$66ae(a6)
0040ca: 72ff         moveq      #$ff, d1
0040cc: b280         cmp.l      d0, d1
0040ce: 672a         beq.b      $40fa
0040d0: 42a7         clr.l      -(a7)
0040d2: 7200         moveq      #$0, d1
0040d4: 202e9952     move.l     -$66ae(a6), d0
0040d8: 61004950     bsr.w      $8a2a
0040dc: 588f         addq.l     #$4, a7
0040de: 4878000a     pea.l      $a.w
0040e2: 222f0004     move.l     $4(a7), d1
0040e6: 202e9952     move.l     -$66ae(a6), d0
0040ea: 6100492e     bsr.w      $8a1a
0040ee: 588f         addq.l     #$4, a7
0040f0: 720a         moveq      #$a, d1
0040f2: b280         cmp.l      d0, d1
0040f4: 6604         bne.b      $40fa
0040f6: 7000         moveq      #$0, d0
0040f8: 6002         bra.b      $40fc
0040fa: 70ff         moveq      #$ff, d0
0040fc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004102: 4e5d         unlk       a5
004104: 4e75         rts        
004106: 4e550000     link.w     a5, #$0
00410a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00410e: 70ff         moveq      #$ff, d0
004110: b0ae9952     cmp.l      -$66ae(a6), d0
004114: 6616         bne.b      $412c
004116: 7203         moveq      #$3, d1
004118: 41fa0088     lea.l      $41a2(pc), a0
00411c: 2008         move.l     a0, d0
00411e: 6100302e     bsr.w      $714e
004122: 2d409952     move.l     d0, -$66ae(a6)
004126: 72ff         moveq      #$ff, d1
004128: b280         cmp.l      d0, d1
00412a: 672a         beq.b      $4156
00412c: 42a7         clr.l      -(a7)
00412e: 7200         moveq      #$0, d1
004130: 202e9952     move.l     -$66ae(a6), d0
004134: 610048f4     bsr.w      $8a2a
004138: 588f         addq.l     #$4, a7
00413a: 4878000a     pea.l      $a.w
00413e: 222f0004     move.l     $4(a7), d1
004142: 202e9952     move.l     -$66ae(a6), d0
004146: 610048da     bsr.w      $8a22
00414a: 588f         addq.l     #$4, a7
00414c: 720a         moveq      #$a, d1
00414e: b280         cmp.l      d0, d1
004150: 6604         bne.b      $4156
004152: 7000         moveq      #$0, d0
004154: 6002         bra.b      $4158
004156: 70ff         moveq      #$ff, d0
004158: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00415e: 4e5d         unlk       a5
004160: 4e75         rts        
004162: 4e550000     link.w     a5, #$0
004166: 48e78000     movem.l    d0, -(a7)
00416a: 70ff         moveq      #$ff, d0
00416c: b0ae9952     cmp.l      -$66ae(a6), d0
004170: 6604         bne.b      $4176
004172: 70ff         moveq      #$ff, d0
004174: 6010         bra.b      $4186
004176: 202e9952     move.l     -$66ae(a6), d0
00417a: 610048ba     bsr.w      $8a36
00417e: 70ff         moveq      #$ff, d0
004180: 2d409952     move.l     d0, -$66ae(a6)
004184: 7000         moveq      #$0, d0
004186: 4e5d         unlk       a5
004188: 4e75         rts        
00418a: 2f63302f     move.l     -(a3), $302f(a7)
00418e: 5f313239     subq.b     #$7, $39(a1, d3.w)
004192: 5f2f7061     subq.b     #$7, $7061(a7)
004196: 636b         bls.b      $4203
004198: 2f73657474696e677300 move.l     $74696e67(a3, invalid.w), $7300(a7)
0041a2: 2f63302f     move.l     -(a3), $302f(a7)
0041a6: 5f313239     subq.b     #$7, $39(a1, d3.w)
0041aa: 5f2f7061     subq.b     #$7, $7061(a7)
0041ae: 636b         bls.b      $421b
0041b0: 2f73657474696e677300 move.l     $74696e67(a3, invalid.w), $7300(a7)
0041ba: 4e550000     link.w     a5, #$0
0041be: 48e7c080     movem.l    d0-d1/a0, -(a7)
0041c2: 70ff         moveq      #$ff, d0
0041c4: b0ae9956     cmp.l      -$66aa(a6), d0
0041c8: 6616         bne.b      $41e0
0041ca: 7203         moveq      #$3, d1
0041cc: 41fa00a4     lea.l      $4272(pc), a0
0041d0: 2008         move.l     a0, d0
0041d2: 61002f7a     bsr.w      $714e
0041d6: 2d409956     move.l     d0, -$66aa(a6)
0041da: 72ff         moveq      #$ff, d1
0041dc: b280         cmp.l      d0, d1
0041de: 672a         beq.b      $420a
0041e0: 42a7         clr.l      -(a7)
0041e2: 7200         moveq      #$0, d1
0041e4: 202e9956     move.l     -$66aa(a6), d0
0041e8: 61004840     bsr.w      $8a2a
0041ec: 588f         addq.l     #$4, a7
0041ee: 48780018     pea.l      $18.w
0041f2: 222f0004     move.l     $4(a7), d1
0041f6: 202e9956     move.l     -$66aa(a6), d0
0041fa: 6100481e     bsr.w      $8a1a
0041fe: 588f         addq.l     #$4, a7
004200: 7218         moveq      #$18, d1
004202: b280         cmp.l      d0, d1
004204: 6604         bne.b      $420a
004206: 7000         moveq      #$0, d0
004208: 6002         bra.b      $420c
00420a: 70ff         moveq      #$ff, d0
00420c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004212: 4e5d         unlk       a5
004214: 4e75         rts        
004216: 4e550000     link.w     a5, #$0
00421a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00421e: 70ff         moveq      #$ff, d0
004220: b0ae9956     cmp.l      -$66aa(a6), d0
004224: 6616         bne.b      $423c
004226: 7203         moveq      #$3, d1
004228: 41fa0062     lea.l      $428c(pc), a0
00422c: 2008         move.l     a0, d0
00422e: 61002f1e     bsr.w      $714e
004232: 2d409956     move.l     d0, -$66aa(a6)
004236: 72ff         moveq      #$ff, d1
004238: b280         cmp.l      d0, d1
00423a: 672a         beq.b      $4266
00423c: 42a7         clr.l      -(a7)
00423e: 7200         moveq      #$0, d1
004240: 202e9956     move.l     -$66aa(a6), d0
004244: 610047e4     bsr.w      $8a2a
004248: 588f         addq.l     #$4, a7
00424a: 48780018     pea.l      $18.w
00424e: 222f0004     move.l     $4(a7), d1
004252: 202e9956     move.l     -$66aa(a6), d0
004256: 610047ca     bsr.w      $8a22
00425a: 588f         addq.l     #$4, a7
00425c: 7218         moveq      #$18, d1
00425e: b280         cmp.l      d0, d1
004260: 6604         bne.b      $4266
004262: 7000         moveq      #$0, d0
004264: 6002         bra.b      $4268
004266: 70ff         moveq      #$ff, d0
004268: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00426e: 4e5d         unlk       a5
004270: 4e75         rts        
004272: 2f63302f     move.l     -(a3), $302f(a7)
004276: 5f313239     subq.b     #$7, $39(a1, d3.w)
00427a: 5f2f7061     subq.b     #$7, $7061(a7)
00427e: 636b         bls.b      $42eb
004280: 2f72656c6f636174 move.l     $6f63(a2, invalid.w), $6174(a7)
004288: 696f         bvs.b      $42f9
00428a: 6e002f63     bgt.w      $71ef
00428e: 302f5f31     move.w     $5f31(a7), d0
004292: 32395f2f7061 move.w     $5f2f7061.l, d1
004298: 636b         bls.b      $4305
00429a: 2f72656c6f636174 move.l     $6f63(a2, invalid.w), $6174(a7)
0042a2: 696f         bvs.b      $4313
0042a4: 6e004e55     bgt.w      $90fb
0042a8: 000048e7     ori.b      #$e7, d0
0042ac: c080         and.l      d0, d0
0042ae: 70ff         moveq      #$ff, d0
0042b0: b0ae995a     cmp.l      -$66a6(a6), d0
0042b4: 6616         bne.b      $42cc
0042b6: 7203         moveq      #$3, d1
0042b8: 41fa0136     lea.l      $43f0(pc), a0
0042bc: 2008         move.l     a0, d0
0042be: 61002e8e     bsr.w      $714e
0042c2: 2d40995a     move.l     d0, -$66a6(a6)
0042c6: 72ff         moveq      #$ff, d1
0042c8: b280         cmp.l      d0, d1
0042ca: 672a         beq.b      $42f6
0042cc: 42a7         clr.l      -(a7)
0042ce: 7200         moveq      #$0, d1
0042d0: 202e995a     move.l     -$66a6(a6), d0
0042d4: 61004754     bsr.w      $8a2a
0042d8: 588f         addq.l     #$4, a7
0042da: 4878003a     pea.l      $3a.w
0042de: 222f0004     move.l     $4(a7), d1
0042e2: 202e995a     move.l     -$66a6(a6), d0
0042e6: 61004732     bsr.w      $8a1a
0042ea: 588f         addq.l     #$4, a7
0042ec: 723a         moveq      #$3a, d1
0042ee: b280         cmp.l      d0, d1
0042f0: 6604         bne.b      $42f6
0042f2: 7000         moveq      #$0, d0
0042f4: 6002         bra.b      $42f8
0042f6: 70ff         moveq      #$ff, d0
0042f8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0042fe: 4e5d         unlk       a5
004300: 4e75         rts        
004302: 4e550000     link.w     a5, #$0
004306: 48e7c080     movem.l    d0-d1/a0, -(a7)
00430a: 70ff         moveq      #$ff, d0
00430c: b0ae995a     cmp.l      -$66a6(a6), d0
004310: 6616         bne.b      $4328
004312: 7203         moveq      #$3, d1
004314: 41fa00f2     lea.l      $4408(pc), a0
004318: 2008         move.l     a0, d0
00431a: 61002e32     bsr.w      $714e
00431e: 2d40995a     move.l     d0, -$66a6(a6)
004322: 72ff         moveq      #$ff, d1
004324: b280         cmp.l      d0, d1
004326: 672a         beq.b      $4352
004328: 42a7         clr.l      -(a7)
00432a: 7200         moveq      #$0, d1
00432c: 202e995a     move.l     -$66a6(a6), d0
004330: 610046f8     bsr.w      $8a2a
004334: 588f         addq.l     #$4, a7
004336: 4878003a     pea.l      $3a.w
00433a: 222f0004     move.l     $4(a7), d1
00433e: 202e995a     move.l     -$66a6(a6), d0
004342: 610046de     bsr.w      $8a22
004346: 588f         addq.l     #$4, a7
004348: 723a         moveq      #$3a, d1
00434a: b280         cmp.l      d0, d1
00434c: 6604         bne.b      $4352
00434e: 7000         moveq      #$0, d0
004350: 6002         bra.b      $4354
004352: 70ff         moveq      #$ff, d0
004354: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00435a: 4e5d         unlk       a5
00435c: 4e75         rts        
00435e: 4e550000     link.w     a5, #$0
004362: 48e78000     movem.l    d0, -(a7)
004366: 70ff         moveq      #$ff, d0
004368: b0ae995a     cmp.l      -$66a6(a6), d0
00436c: 6604         bne.b      $4372
00436e: 70ff         moveq      #$ff, d0
004370: 6010         bra.b      $4382
004372: 202e995a     move.l     -$66a6(a6), d0
004376: 610046be     bsr.w      $8a36
00437a: 70ff         moveq      #$ff, d0
00437c: 2d40995a     move.l     d0, -$66a6(a6)
004380: 7000         moveq      #$0, d0
004382: 4e5d         unlk       a5
004384: 4e75         rts        
004386: 4e550000     link.w     a5, #$0
00438a: 48e7c000     movem.l    d0-d1, -(a7)
00438e: 42a7         clr.l      -(a7)
004390: 222e995a     move.l     -$66a6(a6), d1
004394: 203c00000200 move.l     #$200, d0
00439a: 61003cfa     bsr.w      $8096
00439e: 588f         addq.l     #$4, a7
0043a0: 4ced0002fffc movem.l    -$4(a5), d1
0043a6: 4e5d         unlk       a5
0043a8: 4e75         rts        
0043aa: 4e550000     link.w     a5, #$0
0043ae: 48e7c080     movem.l    d0-d1/a0, -(a7)
0043b2: 70ff         moveq      #$ff, d0
0043b4: b0ae995a     cmp.l      -$66a6(a6), d0
0043b8: 661a         bne.b      $43d4
0043ba: 7203         moveq      #$3, d1
0043bc: 41fa0062     lea.l      $4420(pc), a0
0043c0: 2008         move.l     a0, d0
0043c2: 61002d8a     bsr.w      $714e
0043c6: 2d40995a     move.l     d0, -$66a6(a6)
0043ca: 72ff         moveq      #$ff, d1
0043cc: b280         cmp.l      d0, d1
0043ce: 6604         bne.b      $43d4
0043d0: 70ff         moveq      #$ff, d0
0043d2: 6012         bra.b      $43e6
0043d4: 42a7         clr.l      -(a7)
0043d6: 222e995a     move.l     -$66a6(a6), d1
0043da: 203c00000900 move.l     #$900, d0
0043e0: 61003c50     bsr.w      $8032
0043e4: 588f         addq.l     #$4, a7
0043e6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0043ec: 4e5d         unlk       a5
0043ee: 4e75         rts        
0043f0: 2f63302f     move.l     -(a3), $302f(a7)
0043f4: 5f313239     subq.b     #$7, $39(a1, d3.w)
0043f8: 5f2f7061     subq.b     #$7, $7061(a7)
0043fc: 636b         bls.b      $4469
0043fe: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
00440c: 5f313239     subq.b     #$7, $39(a1, d3.w)
004410: 5f2f7061     subq.b     #$7, $7061(a7)
004414: 636b         bls.b      $4481
004416: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
004424: 5f313239     subq.b     #$7, $39(a1, d3.w)
004428: 5f2f7061     subq.b     #$7, $7061(a7)
00442c: 636b         bls.b      $4499
00442e: 2f706f736974696f6e004e550000 move.l     ([$6974696f, a0], $6e004e55), $0(a7)
00443c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004440: 518f         subq.l     #$8, a7
004442: 203c00000100 move.l     #$100, d0
004448: d0af0008     add.l      $8(a7), d0
00444c: 2e80         move.l     d0, (a7)
00444e: 1f6f000f0004 move.b     $f(a7), $4(a7)
004454: 202f001c     move.l     $1c(a7), d0
004458: e080         asr.l      #$8, d0
00445a: 1f400005     move.b     d0, $5(a7)
00445e: 1f6f001f0006 move.b     $1f(a7), $6(a7)
004464: 1f7c00ff0007 move.b     #$ff, $7(a7)
00446a: 41d7         lea.l      (a7), a0
00446c: 2008         move.l     a0, d0
00446e: 6146         bsr.b      $44b6
004470: 508f         addq.l     #$8, a7
004472: 4ced0100fffc movem.l    -$4(a5), a0
004478: 4e5d         unlk       a5
00447a: 4e75         rts        
00447c: 4e550000     link.w     a5, #$0
004480: 48e7c000     movem.l    d0-d1, -(a7)
004484: 2f2f0010     move.l     $10(a7), -(a7)
004488: 222f0008     move.l     $8(a7), d1
00448c: 202f0004     move.l     $4(a7), d0
004490: 61a6         bsr.b      $4438
004492: 588f         addq.l     #$4, a7
004494: 203c00002410 move.l     #$2410, d0
00449a: 610000bc     bsr.w      $4558
00449e: 4e5d         unlk       a5
0044a0: 4e75         rts        
0044a2: 4e550000     link.w     a5, #$0
0044a6: 48e78000     movem.l    d0, -(a7)
0044aa: 7000         moveq      #$0, d0
0044ac: 61004cf2     bsr.w      $91a0
0044b0: 60f8         bra.b      $44aa
0044b2: 4e5d         unlk       a5
0044b4: 4e75         rts        
0044b6: 4e550000     link.w     a5, #$0
0044ba: 48e7c080     movem.l    d0-d1/a0, -(a7)
0044be: 4aae995e     tst.l      -$66a2(a6)
0044c2: 6c16         bge.b      $44da
0044c4: 7203         moveq      #$3, d1
0044c6: 41fa002e     lea.l      $44f6(pc), a0
0044ca: 2008         move.l     a0, d0
0044cc: 61002c80     bsr.w      $714e
0044d0: 2d40995e     move.l     d0, -$66a2(a6)
0044d4: 6c04         bge.b      $44da
0044d6: 70ff         moveq      #$ff, d0
0044d8: 6012         bra.b      $44ec
0044da: 2f17         move.l     (a7), -(a7)
0044dc: 222e995e     move.l     -$66a2(a6), d1
0044e0: 203c00007f23 move.l     #$7f23, d0
0044e6: 61003bae     bsr.w      $8096
0044ea: 588f         addq.l     #$4, a7
0044ec: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0044f2: 4e5d         unlk       a5
0044f4: 4e75         rts        
0044f6: 2f636339     move.l     -(a3), $6339(a7)
0044fa: 3300         move.w     d0, -(a1)
0044fc: 4e550000     link.w     a5, #$0
004500: 48e7c080     movem.l    d0-d1/a0, -(a7)
004504: 518f         subq.l     #$8, a7
004506: 7201         moveq      #$1, d1
004508: 41fa00ce     lea.l      $45d8(pc), a0
00450c: 2008         move.l     a0, d0
00450e: 61002c3e     bsr.w      $714e
004512: 2f400004     move.l     d0, $4(a7)
004516: 72ff         moveq      #$ff, d1
004518: b280         cmp.l      d0, d1
00451a: 6722         beq.b      $453e
00451c: 48780004     pea.l      $4.w
004520: 41ef0004     lea.l      $4(a7), a0
004524: 2208         move.l     a0, d1
004526: 202f0008     move.l     $8(a7), d0
00452a: 610044ee     bsr.w      $8a1a
00452e: 588f         addq.l     #$4, a7
004530: 7204         moveq      #$4, d1
004532: b280         cmp.l      d0, d1
004534: 670c         beq.b      $4542
004536: 202f0004     move.l     $4(a7), d0
00453a: 610044fa     bsr.w      $8a36
00453e: 70ff         moveq      #$ff, d0
004540: 600a         bra.b      $454c
004542: 202f0004     move.l     $4(a7), d0
004546: 610044ee     bsr.w      $8a36
00454a: 2017         move.l     (a7), d0
00454c: 508f         addq.l     #$8, a7
00454e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004554: 4e5d         unlk       a5
004556: 4e75         rts        
004558: 4e550000     link.w     a5, #$0
00455c: 48e7c000     movem.l    d0-d1, -(a7)
004560: 2217         move.l     (a7), d1
004562: 6198         bsr.b      $44fc
004564: 61002f10     bsr.w      $7476
004568: 72ff         moveq      #$ff, d1
00456a: b280         cmp.l      d0, d1
00456c: 4ced0002fffc movem.l    -$4(a5), d1
004572: 4e5d         unlk       a5
004574: 4e75         rts        
004576: 4e550000     link.w     a5, #$0
00457a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00457e: 518f         subq.l     #$8, a7
004580: 7202         moveq      #$2, d1
004582: 41fa006a     lea.l      $45ee(pc), a0
004586: 2008         move.l     a0, d0
004588: 61002bc4     bsr.w      $714e
00458c: 2f400004     move.l     d0, $4(a7)
004590: 72ff         moveq      #$ff, d1
004592: b280         cmp.l      d0, d1
004594: 6728         beq.b      $45be
004596: 61004fcc     bsr.w      $9564
00459a: 2e80         move.l     d0, (a7)
00459c: 48780004     pea.l      $4.w
0045a0: 41ef0004     lea.l      $4(a7), a0
0045a4: 2208         move.l     a0, d1
0045a6: 202f0008     move.l     $8(a7), d0
0045aa: 61004476     bsr.w      $8a22
0045ae: 588f         addq.l     #$4, a7
0045b0: 7204         moveq      #$4, d1
0045b2: b280         cmp.l      d0, d1
0045b4: 670c         beq.b      $45c2
0045b6: 202f0004     move.l     $4(a7), d0
0045ba: 6100447a     bsr.w      $8a36
0045be: 70ff         moveq      #$ff, d0
0045c0: 600a         bra.b      $45cc
0045c2: 202f0004     move.l     $4(a7), d0
0045c6: 6100446e     bsr.w      $8a36
0045ca: 7000         moveq      #$0, d0
0045cc: 508f         addq.l     #$8, a7
0045ce: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0045d4: 4e5d         unlk       a5
0045d6: 4e75         rts        
0045d8: 2f63302f     move.l     -(a3), $302f(a7)
0045dc: 5f313239     subq.b     #$7, $39(a1, d3.w)
0045e0: 5f2f7061     subq.b     #$7, $7061(a7)
0045e4: 636b         bls.b      $4651
0045e6: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
0045ec: 64002f63     bcc.w      $7551
0045f0: 302f5f31     move.w     $5f31(a7), d0
0045f4: 32395f2f7061 move.w     $5f2f7061.l, d1
0045fa: 636b         bls.b      $4667
0045fc: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
004602: 64004e55     bcc.w      $9459
004606: 000048e7     ori.b      #$e7, d0
00460a: c080         and.l      d0, d0
00460c: 518f         subq.l     #$8, a7
00460e: 42af0004     clr.l      $4(a7)
004612: 41d7         lea.l      (a7), a0
004614: 2008         move.l     a0, d0
004616: 610003e6     bsr.w      $49fe
00461a: 72ff         moveq      #$ff, d1
00461c: b280         cmp.l      d0, d1
00461e: 6704         beq.b      $4624
004620: 2f570004     move.l     (a7), $4(a7)
004624: 202f0004     move.l     $4(a7), d0
004628: 508f         addq.l     #$8, a7
00462a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004630: 4e5d         unlk       a5
004632: 4e75         rts        
004634: 4e550000     link.w     a5, #$0
004638: 48e7e080     movem.l    d0-d2/a0, -(a7)
00463c: 598f         subq.l     #$4, a7
00463e: 61c4         bsr.b      $4604
004640: 2e80         move.l     d0, (a7)
004642: 700c         moveq      #$c, d0
004644: 4c2f00000004 mulu.l     $4(a7), d0
00464a: 41ee9962     lea.l      -$669e(a6), a0
00464e: 2f300808     move.l     $8(a0, d0.l), -(a7)
004652: 48780003     pea.l      $3.w
004656: 7223         moveq      #$23, d1
004658: 700c         moveq      #$c, d0
00465a: 4c2f0000000c mulu.l     $c(a7), d0
004660: 41ee9962     lea.l      -$669e(a6), a0
004664: 242f0008     move.l     $8(a7), d2
004668: d1c0         adda.l     d0, a0
00466a: 20302c00     move.l     (a0, d2.l * 4), d0
00466e: 61002c82     bsr.w      $72f2
004672: 508f         addq.l     #$8, a7
004674: 588f         addq.l     #$4, a7
004676: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
00467c: 4e5d         unlk       a5
00467e: 4e75         rts        
004680: 4e550000     link.w     a5, #$0
004684: 48e7e080     movem.l    d0-d2/a0, -(a7)
004688: 4feffff0     lea.l      -$10(a7), a7
00468c: 6100ff76     bsr.w      $4604
004690: 2e80         move.l     d0, (a7)
004692: 70fe         moveq      #$fe, d0
004694: b0ae99ce     cmp.l      -$6632(a6), d0
004698: 661c         bne.b      $46b6
00469a: 7200         moveq      #$0, d1
00469c: 203c00007fb1 move.l     #$7fb1, d0
0046a2: 610041da     bsr.w      $887e
0046a6: 2d4099ce     move.l     d0, -$6632(a6)
0046aa: 4aae99ce     tst.l      -$6632(a6)
0046ae: 6c06         bge.b      $46b6
0046b0: 7001         moveq      #$1, d0
0046b2: 2d4099ce     move.l     d0, -$6632(a6)
0046b6: 4aae99ce     tst.l      -$6632(a6)
0046ba: 672a         beq.b      $46e6
0046bc: 6006         bra.b      $46c4
0046be: 7001         moveq      #$1, d0
0046c0: 61004ade     bsr.w      $91a0
0046c4: 203c00000300 move.l     #$300, d0
0046ca: 4c2e000099ce mulu.l     -$6632(a6), d0
0046d0: 08c0001f     bset.b     #$1f, d0
0046d4: 2200         move.l     d0, d1
0046d6: 7006         moveq      #$6, d0
0046d8: 61004138     bsr.w      $8812
0046dc: 2f40000c     move.l     d0, $c(a7)
0046e0: 72ff         moveq      #$ff, d1
0046e2: b280         cmp.l      d0, d1
0046e4: 67d8         beq.b      $46be
0046e6: 7203         moveq      #$3, d1
0046e8: 700c         moveq      #$c, d0
0046ea: 4c2f00000010 mulu.l     $10(a7), d0
0046f0: 41ee9962     lea.l      -$669e(a6), a0
0046f4: 2417         move.l     (a7), d2
0046f6: d1c0         adda.l     d0, a0
0046f8: 20302c00     move.l     (a0, d2.l * 4), d0
0046fc: 61002a50     bsr.w      $714e
004700: 2f400004     move.l     d0, $4(a7)
004704: 4aae99ce     tst.l      -$6632(a6)
004708: 6718         beq.b      $4722
00470a: 202f000c     move.l     $c(a7), d0
00470e: 610040f6     bsr.w      $8806
004712: 2f400008     move.l     d0, $8(a7)
004716: 72ff         moveq      #$ff, d1
004718: b280         cmp.l      d0, d1
00471a: 6606         bne.b      $4722
00471c: 70ff         moveq      #$ff, d0
00471e: 2f400004     move.l     d0, $4(a7)
004722: 202f0004     move.l     $4(a7), d0
004726: 4fef0010     lea.l      $10(a7), a7
00472a: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
004730: 4e5d         unlk       a5
004732: 4e75         rts        
004734: 4e550000     link.w     a5, #$0
004738: 48e7c000     movem.l    d0-d1, -(a7)
00473c: 4feffff4     lea.l      -$c(a7), a7
004740: 70fe         moveq      #$fe, d0
004742: b0ae99d2     cmp.l      -$662e(a6), d0
004746: 661c         bne.b      $4764
004748: 7200         moveq      #$0, d1
00474a: 203c00007fb1 move.l     #$7fb1, d0
004750: 6100412c     bsr.w      $887e
004754: 2d4099d2     move.l     d0, -$662e(a6)
004758: 4aae99d2     tst.l      -$662e(a6)
00475c: 6c06         bge.b      $4764
00475e: 7001         moveq      #$1, d0
004760: 2d4099d2     move.l     d0, -$662e(a6)
004764: 4aae99d2     tst.l      -$662e(a6)
004768: 672a         beq.b      $4794
00476a: 6006         bra.b      $4772
00476c: 7001         moveq      #$1, d0
00476e: 61004a30     bsr.w      $91a0
004772: 203c00000300 move.l     #$300, d0
004778: 4c2e000099d2 mulu.l     -$662e(a6), d0
00477e: 08c0001f     bset.b     #$1f, d0
004782: 2200         move.l     d0, d1
004784: 7006         moveq      #$6, d0
004786: 6100408a     bsr.w      $8812
00478a: 2f400008     move.l     d0, $8(a7)
00478e: 72ff         moveq      #$ff, d1
004790: b280         cmp.l      d0, d1
004792: 67d8         beq.b      $476c
004794: 202f000c     move.l     $c(a7), d0
004798: 6100429c     bsr.w      $8a36
00479c: 2e80         move.l     d0, (a7)
00479e: 4aae99d2     tst.l      -$662e(a6)
0047a2: 6710         beq.b      $47b4
0047a4: 202f0008     move.l     $8(a7), d0
0047a8: 6100405c     bsr.w      $8806
0047ac: 2f400004     move.l     d0, $4(a7)
0047b0: 72ff         moveq      #$ff, d1
0047b2: b280         cmp.l      d0, d1
0047b4: 2017         move.l     (a7), d0
0047b6: 4fef000c     lea.l      $c(a7), a7
0047ba: 4ced0002fffc movem.l    -$4(a5), d1
0047c0: 4e5d         unlk       a5
0047c2: 4e75         rts        
0047c4: 2f63302f     move.l     -(a3), $302f(a7)
0047c8: 5f313239     subq.b     #$7, $39(a1, d3.w)
0047cc: 5f2f7069     subq.b     #$7, $7069(a7)
0047d0: 7065         moveq      #$65, d0
0047d2: 2f627369     move.l     -(a2), $7369(a7)
0047d6: 5f63         subq.w     #$7, -(a3)
0047d8: 7472         moveq      #$72, d2
0047da: 6c5f         bge.b      $483b
0047dc: 636d         bls.b      $484b
0047de: 64002f63     bcc.w      $7743
0047e2: 302f5f31     move.w     $5f31(a7), d0
0047e6: 32395f2f7069 move.w     $5f2f7069.l, d1
0047ec: 7065         moveq      #$65, d0
0047ee: 2f627369     move.l     -(a2), $7369(a7)
0047f2: 5f746573745f6374726c5f63 subq.w     #$7, ([$745f6374, a4], $726c5f63)
0047fe: 6d64         blt.b      $4864
004800: 002f63302f5f ori.b      #$30, $2f5f(a7)
004806: 3132385f     move.w     $5f(a2, d3.l), -(a0)
00480a: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
004814: 6374         bls.b      $488a
004816: 726c         moveq      #$6c, d1
004818: 5f63         subq.w     #$7, -(a3)
00481a: 6f6e         ble.b      $488a
00481c: 66002f63     bne.w      $7781
004820: 302f5f31     move.w     $5f31(a7), d0
004824: 32385f2f     move.w     $5f2f.w, d1
004828: 7069         moveq      #$69, d0
00482a: 7065         moveq      #$65, d0
00482c: 2f627369     move.l     -(a2), $7369(a7)
004830: 5f746573745f6374726c5f63 subq.w     #$7, ([$745f6374, a4], $726c5f63)
00483c: 6f6e         ble.b      $48ac
00483e: 66002f63     bne.w      $77a3
004842: 302f5f31     move.w     $5f31(a7), d0
004846: 32395f2f7069 move.w     $5f2f7069.l, d1
00484c: 7065         moveq      #$65, d0
00484e: 2f627369     move.l     -(a2), $7369(a7)
004852: 5f6e6176     subq.w     #$7, $6176(a6)
004856: 5f726571002f6330 subq.w     #$7, ([$2f6330, a2])
00485e: 2f5f3132     move.l     (a7)+, $3132(a7)
004862: 395f2f70     move.w     (a7)+, $2f70(a4)
004866: 6970         bvs.b      $48d8
004868: 652f         bcs.b      $4899
00486a: 6273         bhi.b      $48df
00486c: 695f         bvs.b      $48cd
00486e: 7465         moveq      #$65, d2
004870: 7374         .dc.w      $7374
004872: 5f6e6176     subq.w     #$7, $6176(a6)
004876: 5f726571002f6330 subq.w     #$7, ([$2f6330, a2])
00487e: 2f5f3132     move.l     (a7)+, $3132(a7)
004882: 385f         movea.w    (a7)+, a4
004884: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
00488e: 6e61         bgt.b      $48f1
004890: 765f         moveq      #$5f, d3
004892: 696e         bvs.b      $4902
004894: 666f         bne.b      $4905
004896: 002f63302f5f ori.b      #$30, $2f5f(a7)
00489c: 3132385f     move.w     $5f(a2, d3.l), -(a0)
0048a0: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
0048aa: 7465         moveq      #$65, d2
0048ac: 7374         .dc.w      $7374
0048ae: 5f6e6176     subq.w     #$7, $6176(a6)
0048b2: 5f696e66     subq.w     #$7, $6e66(a1)
0048b6: 6f002f63     ble.w      $781b
0048ba: 302f5f31     move.w     $5f31(a7), d0
0048be: 32395f2f7069 move.w     $5f2f7069.l, d1
0048c4: 7065         moveq      #$65, d0
0048c6: 2f627369     move.l     -(a2), $7369(a7)
0048ca: 5f6d715f     subq.w     #$7, $715f(a5)
0048ce: 7265         moveq      #$65, d1
0048d0: 7175         .dc.w      $7175
0048d2: 6573         bcs.b      $4947
0048d4: 7400         moveq      #$0, d2
0048d6: 2f63302f     move.l     -(a3), $302f(a7)
0048da: 5f313239     subq.b     #$7, $39(a1, d3.w)
0048de: 5f2f7069     subq.b     #$7, $7069(a7)
0048e2: 7065         moveq      #$65, d0
0048e4: 2f627369     move.l     -(a2), $7369(a7)
0048e8: 5f746573745f6d715f726571 subq.w     #$7, ([$745f6d71, a4], $5f726571)
0048f4: 7565         .dc.w      $7565
0048f6: 7374         .dc.w      $7374
0048f8: 002f63302f5f ori.b      #$30, $2f5f(a7)
0048fe: 3132385f     move.w     $5f(a2, d3.l), -(a0)
004902: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
00490c: 6d71         blt.b      $497f
00490e: 5f61         subq.w     #$7, -(a1)
004910: 6e73         bgt.b      $4985
004912: 7765         .dc.w      $7765
004914: 7200         moveq      #$0, d1
004916: 2f63302f     move.l     -(a3), $302f(a7)
00491a: 5f313238     subq.b     #$7, $38(a1, d3.w)
00491e: 5f2f7069     subq.b     #$7, $7069(a7)
004922: 7065         moveq      #$65, d0
004924: 2f627369     move.l     -(a2), $7369(a7)
004928: 5f746573745f6d715f616e73 subq.w     #$7, ([$745f6d71, a4], $5f616e73)
004934: 7765         .dc.w      $7765
004936: 7200         moveq      #$0, d1
004938: 2f63302f     move.l     -(a3), $302f(a7)
00493c: 5f313238     subq.b     #$7, $38(a1, d3.w)
004940: 5f2f7069     subq.b     #$7, $7069(a7)
004944: 7065         moveq      #$65, d0
004946: 2f627369     move.l     -(a2), $7369(a7)
00494a: 5f766f696365 subq.w     #$7, ([$6365, a6])
004950: 5f6d7367     subq.w     #$7, $7367(a5)
004954: 002f63302f5f ori.b      #$30, $2f5f(a7)
00495a: 3132385f     move.w     $5f(a2, d3.l), -(a0)
00495e: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
004968: 7465         moveq      #$65, d2
00496a: 7374         .dc.w      $7374
00496c: 5f766f696365 subq.w     #$7, ([$6365, a6])
004972: 5f6d7367     subq.w     #$7, $7367(a5)
004976: 002f63302f5f ori.b      #$30, $2f5f(a7)
00497c: 3132385f     move.w     $5f(a2, d3.l), -(a0)
004980: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
00498a: 7374         .dc.w      $7374
00498c: 6174         bsr.b      $4a02
00498e: 7573         .dc.w      $7573
004990: 5f726570002f6330 subq.w     #$7, $2f6330(a2, invalid.w)
004998: 2f5f3132     move.l     (a7)+, $3132(a7)
00499c: 385f         movea.w    (a7)+, a4
00499e: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
0049a8: 7465         moveq      #$65, d2
0049aa: 7374         .dc.w      $7374
0049ac: 5f737461     subq.w     #$7, $61(a3, d7.w)
0049b0: 7475         moveq      #$75, d2
0049b2: 735f         .dc.w      $735f
0049b4: 7265         moveq      #$65, d1
0049b6: 7000         moveq      #$0, d0
0049b8: 2f63302f     move.l     -(a3), $302f(a7)
0049bc: 5f313238     subq.b     #$7, $38(a1, d3.w)
0049c0: 5f2f7069     subq.b     #$7, $7069(a7)
0049c4: 7065         moveq      #$65, d0
0049c6: 2f627369     move.l     -(a2), $7369(a7)
0049ca: 5f63         subq.w     #$7, -(a3)
0049cc: 6172         bsr.b      $4a40
0049ce: 5f6c6f63     subq.w     #$7, $6f63(a4)
0049d2: 6174         bsr.b      $4a48
0049d4: 696f         bvs.b      $4a45
0049d6: 6e002f63     bgt.w      $793b
0049da: 302f5f31     move.w     $5f31(a7), d0
0049de: 32385f2f     move.w     $5f2f.w, d1
0049e2: 7069         moveq      #$69, d0
0049e4: 7065         moveq      #$65, d0
0049e6: 2f627369     move.l     -(a2), $7369(a7)
0049ea: 5f746573745f6361725f6c6f subq.w     #$7, ([$745f6361, a4], $725f6c6f)
0049f6: 6361         bls.b      $4a59
0049f8: 7469         moveq      #$69, d2
0049fa: 6f6e         ble.b      $4a6a
0049fc: 00004e55     ori.b      #$55, d0
004a00: 000048e7     ori.b      #$e7, d0
004a04: c080         and.l      d0, d0
004a06: 518f         subq.l     #$8, a7
004a08: 70ff         moveq      #$ff, d0
004a0a: 2e80         move.l     d0, (a7)
004a0c: 7201         moveq      #$1, d1
004a0e: 41fa00aa     lea.l      $4aba(pc), a0
004a12: 2008         move.l     a0, d0
004a14: 61002738     bsr.w      $714e
004a18: 2f400004     move.l     d0, $4(a7)
004a1c: 72ff         moveq      #$ff, d1
004a1e: b280         cmp.l      d0, d1
004a20: 6604         bne.b      $4a26
004a22: 70ff         moveq      #$ff, d0
004a24: 602a         bra.b      $4a50
004a26: 48780004     pea.l      $4.w
004a2a: 222f000c     move.l     $c(a7), d1
004a2e: 202f0008     move.l     $8(a7), d0
004a32: 61003fe6     bsr.w      $8a1a
004a36: 588f         addq.l     #$4, a7
004a38: 7204         moveq      #$4, d1
004a3a: b280         cmp.l      d0, d1
004a3c: 6604         bne.b      $4a42
004a3e: 7000         moveq      #$0, d0
004a40: 6002         bra.b      $4a44
004a42: 70ff         moveq      #$ff, d0
004a44: 2e80         move.l     d0, (a7)
004a46: 202f0004     move.l     $4(a7), d0
004a4a: 61003fea     bsr.w      $8a36
004a4e: 2017         move.l     (a7), d0
004a50: 508f         addq.l     #$8, a7
004a52: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004a58: 4e5d         unlk       a5
004a5a: 4e75         rts        
004a5c: 4e550000     link.w     a5, #$0
004a60: 48e7c080     movem.l    d0-d1/a0, -(a7)
004a64: 518f         subq.l     #$8, a7
004a66: 70ff         moveq      #$ff, d0
004a68: 2e80         move.l     d0, (a7)
004a6a: 7202         moveq      #$2, d1
004a6c: 41fa0066     lea.l      $4ad4(pc), a0
004a70: 2008         move.l     a0, d0
004a72: 610026da     bsr.w      $714e
004a76: 2f400004     move.l     d0, $4(a7)
004a7a: 72ff         moveq      #$ff, d1
004a7c: b280         cmp.l      d0, d1
004a7e: 6604         bne.b      $4a84
004a80: 70ff         moveq      #$ff, d0
004a82: 602a         bra.b      $4aae
004a84: 48780004     pea.l      $4.w
004a88: 222f000c     move.l     $c(a7), d1
004a8c: 202f0008     move.l     $8(a7), d0
004a90: 61003f90     bsr.w      $8a22
004a94: 588f         addq.l     #$4, a7
004a96: 7204         moveq      #$4, d1
004a98: b280         cmp.l      d0, d1
004a9a: 6604         bne.b      $4aa0
004a9c: 7000         moveq      #$0, d0
004a9e: 6002         bra.b      $4aa2
004aa0: 70ff         moveq      #$ff, d0
004aa2: 2e80         move.l     d0, (a7)
004aa4: 202f0004     move.l     $4(a7), d0
004aa8: 61003f8c     bsr.w      $8a36
004aac: 2017         move.l     (a7), d0
004aae: 508f         addq.l     #$8, a7
004ab0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004ab6: 4e5d         unlk       a5
004ab8: 4e75         rts        
004aba: 2f63302f     move.l     -(a3), $302f(a7)
004abe: 5f313239     subq.b     #$7, $39(a1, d3.w)
004ac2: 5f2f7061     subq.b     #$7, $7061(a7)
004ac6: 636b         bls.b      $4b33
004ac8: 2f627377     move.l     -(a2), $7377(a7)
004acc: 5f63         subq.w     #$7, -(a3)
004ace: 6f6e         ble.b      $4b3e
004ad0: 6669         bne.b      $4b3b
004ad2: 67002f63     beq.w      $7a37
004ad6: 302f5f31     move.w     $5f31(a7), d0
004ada: 32395f2f7061 move.w     $5f2f7061.l, d1
004ae0: 636b         bls.b      $4b4d
004ae2: 2f627377     move.l     -(a2), $7377(a7)
004ae6: 5f63         subq.w     #$7, -(a3)
004ae8: 6f6e         ble.b      $4b58
004aea: 6669         bne.b      $4b55
004aec: 67004e55     beq.w      $9943
004af0: 000048e7     ori.b      #$e7, d0
004af4: c000         and.b      d0, d0
004af6: 4feffff4     lea.l      -$c(a7), a7
004afa: 70fe         moveq      #$fe, d0
004afc: b0ae99d6     cmp.l      -$662a(a6), d0
004b00: 661c         bne.b      $4b1e
004b02: 7200         moveq      #$0, d1
004b04: 203c00007fb1 move.l     #$7fb1, d0
004b0a: 61003d72     bsr.w      $887e
004b0e: 2d4099d6     move.l     d0, -$662a(a6)
004b12: 4aae99d6     tst.l      -$662a(a6)
004b16: 6c06         bge.b      $4b1e
004b18: 7001         moveq      #$1, d0
004b1a: 2d4099d6     move.l     d0, -$662a(a6)
004b1e: 4aae99d6     tst.l      -$662a(a6)
004b22: 672a         beq.b      $4b4e
004b24: 6006         bra.b      $4b2c
004b26: 7001         moveq      #$1, d0
004b28: 61004676     bsr.w      $91a0
004b2c: 202f0020     move.l     $20(a7), d0
004b30: e188         lsl.l      #$8, d0
004b32: 4c2e000099d6 mulu.l     -$662a(a6), d0
004b38: 08c0001f     bset.b     #$1f, d0
004b3c: 2200         move.l     d0, d1
004b3e: 7006         moveq      #$6, d0
004b40: 61003cd0     bsr.w      $8812
004b44: 2f400008     move.l     d0, $8(a7)
004b48: 72ff         moveq      #$ff, d1
004b4a: b280         cmp.l      d0, d1
004b4c: 67d8         beq.b      $4b26
004b4e: 2f2f001c     move.l     $1c(a7), -(a7)
004b52: 222f0014     move.l     $14(a7), d1
004b56: 202f0010     move.l     $10(a7), d0
004b5a: 61003ebe     bsr.w      $8a1a
004b5e: 588f         addq.l     #$4, a7
004b60: 2e80         move.l     d0, (a7)
004b62: 4aae99d6     tst.l      -$662a(a6)
004b66: 6710         beq.b      $4b78
004b68: 202f0008     move.l     $8(a7), d0
004b6c: 61003c98     bsr.w      $8806
004b70: 2f400004     move.l     d0, $4(a7)
004b74: 72ff         moveq      #$ff, d1
004b76: b280         cmp.l      d0, d1
004b78: 2017         move.l     (a7), d0
004b7a: 4fef000c     lea.l      $c(a7), a7
004b7e: 4e5d         unlk       a5
004b80: 4e75         rts        
004b82: 4e550000     link.w     a5, #$0
004b86: 48e7c000     movem.l    d0-d1, -(a7)
004b8a: 4feffff4     lea.l      -$c(a7), a7
004b8e: 70fe         moveq      #$fe, d0
004b90: b0ae99da     cmp.l      -$6626(a6), d0
004b94: 661c         bne.b      $4bb2
004b96: 7200         moveq      #$0, d1
004b98: 203c00007fb1 move.l     #$7fb1, d0
004b9e: 61003cde     bsr.w      $887e
004ba2: 2d4099da     move.l     d0, -$6626(a6)
004ba6: 4aae99da     tst.l      -$6626(a6)
004baa: 6c06         bge.b      $4bb2
004bac: 7001         moveq      #$1, d0
004bae: 2d4099da     move.l     d0, -$6626(a6)
004bb2: 4aae99da     tst.l      -$6626(a6)
004bb6: 672a         beq.b      $4be2
004bb8: 6006         bra.b      $4bc0
004bba: 7001         moveq      #$1, d0
004bbc: 610045e2     bsr.w      $91a0
004bc0: 202f0020     move.l     $20(a7), d0
004bc4: e188         lsl.l      #$8, d0
004bc6: 4c2e000099da mulu.l     -$6626(a6), d0
004bcc: 08c0001f     bset.b     #$1f, d0
004bd0: 2200         move.l     d0, d1
004bd2: 7006         moveq      #$6, d0
004bd4: 61003c3c     bsr.w      $8812
004bd8: 2f400008     move.l     d0, $8(a7)
004bdc: 72ff         moveq      #$ff, d1
004bde: b280         cmp.l      d0, d1
004be0: 67d8         beq.b      $4bba
004be2: 2f2f001c     move.l     $1c(a7), -(a7)
004be6: 222f0014     move.l     $14(a7), d1
004bea: 202f0010     move.l     $10(a7), d0
004bee: 61003e32     bsr.w      $8a22
004bf2: 588f         addq.l     #$4, a7
004bf4: 2e80         move.l     d0, (a7)
004bf6: 4aae99da     tst.l      -$6626(a6)
004bfa: 6710         beq.b      $4c0c
004bfc: 202f0008     move.l     $8(a7), d0
004c00: 61003c04     bsr.w      $8806
004c04: 2f400004     move.l     d0, $4(a7)
004c08: 72ff         moveq      #$ff, d1
004c0a: b280         cmp.l      d0, d1
004c0c: 2017         move.l     (a7), d0
004c0e: 4fef000c     lea.l      $c(a7), a7
004c12: 4e5d         unlk       a5
004c14: 4e75         rts        
004c16: 4e550000     link.w     a5, #$0
004c1a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004c1e: 5d8f         subq.l     #$6, a7
004c20: 70ff         moveq      #$ff, d0
004c22: 2f400002     move.l     d0, $2(a7)
004c26: 2f2f0022     move.l     $22(a7), -(a7)
004c2a: 48780002     pea.l      $2.w
004c2e: 41ef0008     lea.l      $8(a7), a0
004c32: 2208         move.l     a0, d1
004c34: 202f000e     move.l     $e(a7), d0
004c38: 6100feb4     bsr.w      $4aee
004c3c: 508f         addq.l     #$8, a7
004c3e: 7202         moveq      #$2, d1
004c40: b280         cmp.l      d0, d1
004c42: 6600008c     bne.w      $4cd0
004c46: 3057         movea.w    (a7), a0
004c48: 226f001e     movea.l    $1e(a7), a1
004c4c: 2288         move.l     a0, (a1)
004c4e: 206f001e     movea.l    $1e(a7), a0
004c52: 2010         move.l     (a0), d0
004c54: 61003e24     bsr.w      $8a7a
004c58: 206f000a     movea.l    $a(a7), a0
004c5c: 2080         move.l     d0, (a0)
004c5e: 6740         beq.b      $4ca0
004c60: 2f2f0022     move.l     $22(a7), -(a7)
004c64: 206f0022     movea.l    $22(a7), a0
004c68: 2f10         move.l     (a0), -(a7)
004c6a: 206f0012     movea.l    $12(a7), a0
004c6e: 2210         move.l     (a0), d1
004c70: 202f000e     move.l     $e(a7), d0
004c74: 6100fe78     bsr.w      $4aee
004c78: 508f         addq.l     #$8, a7
004c7a: 206f001e     movea.l    $1e(a7), a0
004c7e: b090         cmp.l      (a0), d0
004c80: 6606         bne.b      $4c88
004c82: 42af0002     clr.l      $2(a7)
004c86: 6048         bra.b      $4cd0
004c88: 206f001e     movea.l    $1e(a7), a0
004c8c: 4290         clr.l      (a0)
004c8e: 206f000a     movea.l    $a(a7), a0
004c92: 2010         move.l     (a0), d0
004c94: 61003df0     bsr.w      $8a86
004c98: 206f000a     movea.l    $a(a7), a0
004c9c: 4290         clr.l      (a0)
004c9e: 6030         bra.b      $4cd0
004ca0: 558f         subq.l     #$2, a7
004ca2: 6018         bra.b      $4cbc
004ca4: 2f2f0024     move.l     $24(a7), -(a7)
004ca8: 48780001     pea.l      $1.w
004cac: 41ef0009     lea.l      $9(a7), a0
004cb0: 2208         move.l     a0, d1
004cb2: 202f0010     move.l     $10(a7), d0
004cb6: 6100fe36     bsr.w      $4aee
004cba: 508f         addq.l     #$8, a7
004cbc: 206f0020     movea.l    $20(a7), a0
004cc0: 2010         move.l     (a0), d0
004cc2: 5390         subq.l     #$1, (a0)
004cc4: 4a80         tst.l      d0
004cc6: 66dc         bne.b      $4ca4
004cc8: 206f0020     movea.l    $20(a7), a0
004ccc: 4290         clr.l      (a0)
004cce: 548f         addq.l     #$2, a7
004cd0: 202f0002     move.l     $2(a7), d0
004cd4: 5c8f         addq.l     #$6, a7
004cd6: 4ced0300fff8 movem.l    -$8(a5), a0-a1
004cdc: 4e5d         unlk       a5
004cde: 4e75         rts        
004ce0: 4e550000     link.w     a5, #$0
004ce4: 48e7c080     movem.l    d0-d1/a0, -(a7)
004ce8: 5d8f         subq.l     #$6, a7
004cea: 70ff         moveq      #$ff, d0
004cec: 2f400002     move.l     d0, $2(a7)
004cf0: 3eaf001c     move.w     $1c(a7), (a7)
004cf4: 2f2f001e     move.l     $1e(a7), -(a7)
004cf8: 48780002     pea.l      $2.w
004cfc: 41ef0008     lea.l      $8(a7), a0
004d00: 2208         move.l     a0, d1
004d02: 202f000e     move.l     $e(a7), d0
004d06: 6100fe7a     bsr.w      $4b82
004d0a: 508f         addq.l     #$8, a7
004d0c: 7202         moveq      #$2, d1
004d0e: b280         cmp.l      d0, d1
004d10: 6620         bne.b      $4d32
004d12: 2f2f001e     move.l     $1e(a7), -(a7)
004d16: 2f2f001e     move.l     $1e(a7), -(a7)
004d1a: 222f0012     move.l     $12(a7), d1
004d1e: 202f000e     move.l     $e(a7), d0
004d22: 6100fe5e     bsr.w      $4b82
004d26: 508f         addq.l     #$8, a7
004d28: b0af001a     cmp.l      $1a(a7), d0
004d2c: 6604         bne.b      $4d32
004d2e: 42af0002     clr.l      $2(a7)
004d32: 202f0002     move.l     $2(a7), d0
004d36: 5c8f         addq.l     #$6, a7
004d38: 4ced0100fffc movem.l    -$4(a5), a0
004d3e: 4e5d         unlk       a5
004d40: 4e75         rts        
004d42: 4e550000     link.w     a5, #$0
004d46: 48e78080     movem.l    d0/a0, -(a7)
004d4a: 41fa0190     lea.l      $4edc(pc), a0
004d4e: 2008         move.l     a0, d0
004d50: 610002ee     bsr.w      $5040
004d54: 41fa01a1     lea.l      $4ef7(pc), a0
004d58: 2008         move.l     a0, d0
004d5a: 610002e4     bsr.w      $5040
004d5e: 4ced0100fffc movem.l    -$4(a5), a0
004d64: 4e5d         unlk       a5
004d66: 4e75         rts        
004d68: 4e550000     link.w     a5, #$0
004d6c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004d70: 4fefffac     lea.l      -$54(a7), a7
004d74: 1f7c00010001 move.b     #$1, $1(a7)
004d7a: 41fa0196     lea.l      $4f12(pc), a0
004d7e: 2008         move.l     a0, d0
004d80: 61000284     bsr.w      $5006
004d84: 4a00         tst.b      d0
004d86: 6752         beq.b      $4dda
004d88: 1f7c00160006 move.b     #$16, $6(a7)
004d8e: 1f6f00570007 move.b     $57(a7), $7(a7)
004d94: 487a0197     pea.l      $4f2d(pc)
004d98: 724e         moveq      #$4e, d1
004d9a: 41ef000a     lea.l      $a(a7), a0
004d9e: 2008         move.l     a0, d0
004da0: 61000416     bsr.w      $51b8
004da4: 588f         addq.l     #$4, a7
004da6: 4a00         tst.b      d0
004da8: 6730         beq.b      $4dda
004daa: 41fa019c     lea.l      $4f48(pc), a0
004dae: 2008         move.l     a0, d0
004db0: 610002f2     bsr.w      $50a4
004db4: 2f400002     move.l     d0, $2(a7)
004db8: 6720         beq.b      $4dda
004dba: 202f0002     move.l     $2(a7), d0
004dbe: 5280         addq.l     #$1, d0
004dc0: 2200         move.l     d0, d1
004dc2: 202f0058     move.l     $58(a7), d0
004dc6: 61003dfe     bsr.w      $8bc6
004dca: 206f0002     movea.l    $2(a7), a0
004dce: 1f500001     move.b     (a0), $1(a7)
004dd2: 202f0002     move.l     $2(a7), d0
004dd6: 61003cae     bsr.w      $8a86
004dda: 102f0001     move.b     $1(a7), d0
004dde: 4fef0054     lea.l      $54(a7), a7
004de2: 4ced0100fffc movem.l    -$4(a5), a0
004de8: 4e5d         unlk       a5
004dea: 4e75         rts        
004dec: 4e550000     link.w     a5, #$0
004df0: 48e7c080     movem.l    d0-d1/a0, -(a7)
004df4: 4fefffac     lea.l      -$54(a7), a7
004df8: 1f7c00010001 move.b     #$1, $1(a7)
004dfe: 41fa0163     lea.l      $4f63(pc), a0
004e02: 2008         move.l     a0, d0
004e04: 61000200     bsr.w      $5006
004e08: 4a00         tst.b      d0
004e0a: 6750         beq.b      $4e5c
004e0c: 1f7c000b0006 move.b     #$b, $6(a7)
004e12: 1f6f00570007 move.b     $57(a7), $7(a7)
004e18: 222f0058     move.l     $58(a7), d1
004e1c: 41ef0008     lea.l      $8(a7), a0
004e20: 2008         move.l     a0, d0
004e22: 61003da2     bsr.w      $8bc6
004e26: 487a0156     pea.l      $4f7e(pc)
004e2a: 724e         moveq      #$4e, d1
004e2c: 41ef000a     lea.l      $a(a7), a0
004e30: 2008         move.l     a0, d0
004e32: 61000384     bsr.w      $51b8
004e36: 588f         addq.l     #$4, a7
004e38: 4a00         tst.b      d0
004e3a: 6720         beq.b      $4e5c
004e3c: 41fa015b     lea.l      $4f99(pc), a0
004e40: 2008         move.l     a0, d0
004e42: 61000260     bsr.w      $50a4
004e46: 2f400002     move.l     d0, $2(a7)
004e4a: 6710         beq.b      $4e5c
004e4c: 206f0002     movea.l    $2(a7), a0
004e50: 1f500001     move.b     (a0), $1(a7)
004e54: 202f0002     move.l     $2(a7), d0
004e58: 61003c2c     bsr.w      $8a86
004e5c: 102f0001     move.b     $1(a7), d0
004e60: 4fef0054     lea.l      $54(a7), a7
004e64: 4ced0100fffc movem.l    -$4(a5), a0
004e6a: 4e5d         unlk       a5
004e6c: 4e75         rts        
004e6e: 4e550000     link.w     a5, #$0
004e72: 48e7c080     movem.l    d0-d1/a0, -(a7)
004e76: 4fefffac     lea.l      -$54(a7), a7
004e7a: 1f7c00010001 move.b     #$1, $1(a7)
004e80: 41fa0132     lea.l      $4fb4(pc), a0
004e84: 2008         move.l     a0, d0
004e86: 6100017e     bsr.w      $5006
004e8a: 4a00         tst.b      d0
004e8c: 673c         beq.b      $4eca
004e8e: 1f7c00210006 move.b     #$21, $6(a7)
004e94: 487a0139     pea.l      $4fcf(pc)
004e98: 724e         moveq      #$4e, d1
004e9a: 41ef000a     lea.l      $a(a7), a0
004e9e: 2008         move.l     a0, d0
004ea0: 61000316     bsr.w      $51b8
004ea4: 588f         addq.l     #$4, a7
004ea6: 4a00         tst.b      d0
004ea8: 6720         beq.b      $4eca
004eaa: 41fa013e     lea.l      $4fea(pc), a0
004eae: 2008         move.l     a0, d0
004eb0: 610001f2     bsr.w      $50a4
004eb4: 2f400002     move.l     d0, $2(a7)
004eb8: 6710         beq.b      $4eca
004eba: 206f0002     movea.l    $2(a7), a0
004ebe: 1f500001     move.b     (a0), $1(a7)
004ec2: 202f0002     move.l     $2(a7), d0
004ec6: 61003bbe     bsr.w      $8a86
004eca: 102f0001     move.b     $1(a7), d0
004ece: 4fef0054     lea.l      $54(a7), a7
004ed2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004ed8: 4e5d         unlk       a5
004eda: 4e75         rts        
004edc: 2f706970652f67646d61 move.l     $652f6764(a0, invalid.w), $6d61(a7)
004ee6: 6e5f         bgt.b      $4f47
004ee8: 746f         moveq      #$6f, d2
004eea: 5f62         subq.w     #$7, -(a2)
004eec: 7363         .dc.w      $7363
004eee: 5f63         subq.w     #$7, -(a3)
004ef0: 6861         bvc.b      $4f53
004ef2: 6e6e         bgt.b      $4f62
004ef4: 656c         bcs.b      $4f62
004ef6: 002f70697065 ori.b      #$69, $7065(a7)
004efc: 2f627363     move.l     -(a2), $7363(a7)
004f00: 5f746f5f     subq.w     #$7, ([a4])
004f04: 6764         beq.b      $4f6a
004f06: 6d61         blt.b      $4f69
004f08: 6e5f         bgt.b      $4f69
004f0a: 6368         bls.b      $4f74
004f0c: 616e         bsr.b      $4f7c
004f0e: 6e65         bgt.b      $4f75
004f10: 6c002f70     bge.w      $7e82
004f14: 6970         bvs.b      $4f86
004f16: 652f         bcs.b      $4f47
004f18: 6764         beq.b      $4f7e
004f1a: 6d61         blt.b      $4f7d
004f1c: 6e5f         bgt.b      $4f7d
004f1e: 746f         moveq      #$6f, d2
004f20: 5f62         subq.w     #$7, -(a2)
004f22: 7363         .dc.w      $7363
004f24: 5f63         subq.w     #$7, -(a3)
004f26: 6861         bvc.b      $4f89
004f28: 6e6e         bgt.b      $4f98
004f2a: 656c         bcs.b      $4f98
004f2c: 002f70697065 ori.b      #$69, $7065(a7)
004f32: 2f627363     move.l     -(a2), $7363(a7)
004f36: 5f746f5f     subq.w     #$7, ([a4])
004f3a: 6764         beq.b      $4fa0
004f3c: 6d61         blt.b      $4f9f
004f3e: 6e5f         bgt.b      $4f9f
004f40: 6368         bls.b      $4faa
004f42: 616e         bsr.b      $4fb2
004f44: 6e65         bgt.b      $4fab
004f46: 6c002f70     bge.w      $7eb8
004f4a: 6970         bvs.b      $4fbc
004f4c: 652f         bcs.b      $4f7d
004f4e: 6764         beq.b      $4fb4
004f50: 6d61         blt.b      $4fb3
004f52: 6e5f         bgt.b      $4fb3
004f54: 746f         moveq      #$6f, d2
004f56: 5f62         subq.w     #$7, -(a2)
004f58: 7363         .dc.w      $7363
004f5a: 5f63         subq.w     #$7, -(a3)
004f5c: 6861         bvc.b      $4fbf
004f5e: 6e6e         bgt.b      $4fce
004f60: 656c         bcs.b      $4fce
004f62: 002f70697065 ori.b      #$69, $7065(a7)
004f68: 2f67646d     move.l     -(a7), $646d(a7)
004f6c: 616e         bsr.b      $4fdc
004f6e: 5f746f5f     subq.w     #$7, ([a4])
004f72: 6273         bhi.b      $4fe7
004f74: 635f         bls.b      $4fd5
004f76: 6368         bls.b      $4fe0
004f78: 616e         bsr.b      $4fe8
004f7a: 6e65         bgt.b      $4fe1
004f7c: 6c002f70     bge.w      $7eee
004f80: 6970         bvs.b      $4ff2
004f82: 652f         bcs.b      $4fb3
004f84: 6273         bhi.b      $4ff9
004f86: 635f         bls.b      $4fe7
004f88: 746f         moveq      #$6f, d2
004f8a: 5f67         subq.w     #$7, -(a7)
004f8c: 646d         bcc.b      $4ffb
004f8e: 616e         bsr.b      $4ffe
004f90: 5f63         subq.w     #$7, -(a3)
004f92: 6861         bvc.b      $4ff5
004f94: 6e6e         bgt.b      $5004
004f96: 656c         bcs.b      $5004
004f98: 002f70697065 ori.b      #$69, $7065(a7)
004f9e: 2f67646d     move.l     -(a7), $646d(a7)
004fa2: 616e         bsr.b      $5012
004fa4: 5f746f5f     subq.w     #$7, ([a4])
004fa8: 6273         bhi.b      $501d
004faa: 635f         bls.b      $500b
004fac: 6368         bls.b      $5016
004fae: 616e         bsr.b      $501e
004fb0: 6e65         bgt.b      $5017
004fb2: 6c002f70     bge.w      $7f24
004fb6: 6970         bvs.b      $5028
004fb8: 652f         bcs.b      $4fe9
004fba: 6764         beq.b      $5020
004fbc: 6d61         blt.b      $501f
004fbe: 6e5f         bgt.b      $501f
004fc0: 746f         moveq      #$6f, d2
004fc2: 5f62         subq.w     #$7, -(a2)
004fc4: 7363         .dc.w      $7363
004fc6: 5f63         subq.w     #$7, -(a3)
004fc8: 6861         bvc.b      $502b
004fca: 6e6e         bgt.b      $503a
004fcc: 656c         bcs.b      $503a
004fce: 002f70697065 ori.b      #$69, $7065(a7)
004fd4: 2f627363     move.l     -(a2), $7363(a7)
004fd8: 5f746f5f     subq.w     #$7, ([a4])
004fdc: 6764         beq.b      $5042
004fde: 6d61         blt.b      $5041
004fe0: 6e5f         bgt.b      $5041
004fe2: 6368         bls.b      $504c
004fe4: 616e         bsr.b      $5054
004fe6: 6e65         bgt.b      $504d
004fe8: 6c002f70     bge.w      $7f5a
004fec: 6970         bvs.b      $505e
004fee: 652f         bcs.b      $501f
004ff0: 6764         beq.b      $5056
004ff2: 6d61         blt.b      $5055
004ff4: 6e5f         bgt.b      $5055
004ff6: 746f         moveq      #$6f, d2
004ff8: 5f62         subq.w     #$7, -(a2)
004ffa: 7363         .dc.w      $7363
004ffc: 5f63         subq.w     #$7, -(a3)
004ffe: 6861         bvc.b      $5061
005000: 6e6e         bgt.b      $5070
005002: 656c         bcs.b      $5070
005004: 00004e55     ori.b      #$55, d0
005008: 000048e7     ori.b      #$e7, d0
00500c: c000         and.b      d0, d0
00500e: 558f         subq.l     #$2, a7
005010: 1f7c00010001 move.b     #$1, $1(a7)
005016: 202f0002     move.l     $2(a7), d0
00501a: 6100021c     bsr.w      $5238
00501e: 4a80         tst.l      d0
005020: 6c0e         bge.b      $5030
005022: 7223         moveq      #$23, d1
005024: 202f0002     move.l     $2(a7), d0
005028: 6100026c     bsr.w      $5296
00502c: 1f400001     move.b     d0, $1(a7)
005030: 102f0001     move.b     $1(a7), d0
005034: 548f         addq.l     #$2, a7
005036: 4ced0002fffc movem.l    -$4(a5), d1
00503c: 4e5d         unlk       a5
00503e: 4e75         rts        
005040: 4e550000     link.w     a5, #$0
005044: 48e78800     movem.l    d0/d4, -(a7)
005048: 2017         move.l     (a7), d0
00504a: 610001ec     bsr.w      $5238
00504e: 2800         move.l     d0, d4
005050: 70ff         moveq      #$ff, d0
005052: b084         cmp.l      d4, d0
005054: 6712         beq.b      $5068
005056: 2017         move.l     (a7), d0
005058: 6100030c     bsr.w      $5366
00505c: 2004         move.l     d4, d0
00505e: 6100f6d4     bsr.w      $4734
005062: 2017         move.l     (a7), d0
005064: 610039a8     bsr.w      $8a0e
005068: 4ced0010fffc movem.l    -$4(a5), d4
00506e: 4e5d         unlk       a5
005070: 4e75         rts        
005072: 4e550000     link.w     a5, #$0
005076: 48e7cc00     movem.l    d0-d1/d4-d5, -(a7)
00507a: 7a01         moveq      #$1, d5
00507c: 2017         move.l     (a7), d0
00507e: 610001b8     bsr.w      $5238
005082: 2800         move.l     d0, d4
005084: 4a84         tst.l      d4
005086: 6d0e         blt.b      $5096
005088: 222f0004     move.l     $4(a7), d1
00508c: 2004         move.l     d4, d0
00508e: 61004008     bsr.w      $9098
005092: 4a80         tst.l      d0
005094: 6c02         bge.b      $5098
005096: 7a00         moveq      #$0, d5
005098: 1005         move.b     d5, d0
00509a: 4ced0030fff8 movem.l    -$8(a5), d4-d5
0050a0: 4e5d         unlk       a5
0050a2: 4e75         rts        
0050a4: 4e550000     link.w     a5, #$0
0050a8: 48e7cea0     movem.l    d0-d1/d4-d6/a0/a2, -(a7)
0050ac: 4fefff54     lea.l      -$ac(a7), a7
0050b0: 2a3c000000ac move.l     #$ac, d5
0050b6: 95ca         suba.l     a2, a2
0050b8: 202f00ac     move.l     $ac(a7), d0
0050bc: 6100017a     bsr.w      $5238
0050c0: 2800         move.l     d0, d4
0050c2: 4a84         tst.l      d4
0050c4: 6d00007a     blt.w      $5140
0050c8: 2f05         move.l     d5, -(a7)
0050ca: 41ef0004     lea.l      $4(a7), a0
0050ce: 2208         move.l     a0, d1
0050d0: 2004         move.l     d4, d0
0050d2: 6100034a     bsr.w      $541e
0050d6: 588f         addq.l     #$4, a7
0050d8: 2c00         move.l     d0, d6
0050da: 70ff         moveq      #$ff, d0
0050dc: b086         cmp.l      d6, d0
0050de: 6760         beq.b      $5140
0050e0: bc85         cmp.l      d5, d6
0050e2: 665c         bne.b      $5140
0050e4: 4aaf00a8     tst.l      $a8(a7)
0050e8: 6f3e         ble.b      $5128
0050ea: 202f00a8     move.l     $a8(a7), d0
0050ee: 6100398a     bsr.w      $8a7a
0050f2: 2440         movea.l    d0, a2
0050f4: 200a         move.l     a2, d0
0050f6: 6614         bne.b      $510c
0050f8: 42a7         clr.l      -(a7)
0050fa: 7205         moveq      #$5, d1
0050fc: 203c00000099 move.l     #$99, d0
005102: 6100f378     bsr.w      $447c
005106: 588f         addq.l     #$4, a7
005108: 6100f398     bsr.w      $44a2
00510c: 2f2f00a8     move.l     $a8(a7), -(a7)
005110: 220a         move.l     a2, d1
005112: 2004         move.l     d4, d0
005114: 61000308     bsr.w      $541e
005118: 588f         addq.l     #$4, a7
00511a: b0af00a8     cmp.l      $a8(a7), d0
00511e: 6708         beq.b      $5128
005120: 200a         move.l     a2, d0
005122: 61003962     bsr.w      $8a86
005126: 95ca         suba.l     a2, a2
005128: 7021         moveq      #$21, d0
00512a: b0af0004     cmp.l      $4(a7), d0
00512e: 6610         bne.b      $5140
005130: 486f0058     pea.l      $58(a7)
005134: 7200         moveq      #$0, d1
005136: 7000         moveq      #$0, d0
005138: 6100007e     bsr.w      $51b8
00513c: 588f         addq.l     #$4, a7
00513e: 4a00         tst.b      d0
005140: 200a         move.l     a2, d0
005142: 4fef00ac     lea.l      $ac(a7), a7
005146: 4ced0572ffe8 movem.l    -$18(a5), d1/d4-d6/a0/a2
00514c: 4e5d         unlk       a5
00514e: 4e75         rts        
005150: 4e550000     link.w     a5, #$0
005154: 48e7ce00     movem.l    d0-d1/d4-d6, -(a7)
005158: 7c01         moveq      #$1, d6
00515a: 202f001c     move.l     $1c(a7), d0
00515e: 610000d8     bsr.w      $5238
005162: 2800         move.l     d0, d4
005164: 4a84         tst.l      d4
005166: 6c1a         bge.b      $5182
005168: 7203         moveq      #$3, d1
00516a: 202f001c     move.l     $1c(a7), d0
00516e: 61000190     bsr.w      $5300
005172: 202f001c     move.l     $1c(a7), d0
005176: 610000c0     bsr.w      $5238
00517a: 2800         move.l     d0, d4
00517c: 4a84         tst.l      d4
00517e: 6c02         bge.b      $5182
005180: 7c00         moveq      #$0, d6
005182: 4a06         tst.b      d6
005184: 6726         beq.b      $51ac
005186: 48780014     pea.l      $14.w
00518a: 2f2f0008     move.l     $8(a7), -(a7)
00518e: 222f0008     move.l     $8(a7), d1
005192: 2004         move.l     d4, d0
005194: 6100f9ec     bsr.w      $4b82
005198: 508f         addq.l     #$8, a7
00519a: 2a00         move.l     d0, d5
00519c: baaf0004     cmp.l      $4(a7), d5
0051a0: 6c0a         bge.b      $51ac
0051a2: 202f001c     move.l     $1c(a7), d0
0051a6: 6100fe98     bsr.w      $5040
0051aa: 7c00         moveq      #$0, d6
0051ac: 1006         move.b     d6, d0
0051ae: 4ced0070fff4 movem.l    -$c(a5), d4-d6
0051b4: 4e5d         unlk       a5
0051b6: 4e75         rts        
0051b8: 4e550000     link.w     a5, #$0
0051bc: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
0051c0: 203c000000ac move.l     #$ac, d0
0051c6: d0af0004     add.l      $4(a7), d0
0051ca: 2800         move.l     d0, d4
0051cc: 2004         move.l     d4, d0
0051ce: 610038aa     bsr.w      $8a7a
0051d2: 2440         movea.l    d0, a2
0051d4: 200a         move.l     a2, d0
0051d6: 6614         bne.b      $51ec
0051d8: 42a7         clr.l      -(a7)
0051da: 7205         moveq      #$5, d1
0051dc: 203c00000099 move.l     #$99, d0
0051e2: 6100f298     bsr.w      $447c
0051e6: 588f         addq.l     #$4, a7
0051e8: 6100f2b8     bsr.w      $44a2
0051ec: 2484         move.l     d4, (a2)
0051ee: 257c0000002c0004 move.l     #$2c, $4(a2)
0051f6: 222f0018     move.l     $18(a7), d1
0051fa: 200a         move.l     a2, d0
0051fc: 5080         addq.l     #$8, d0
0051fe: 610039c6     bsr.w      $8bc6
005202: 4aaf0004     tst.l      $4(a7)
005206: 6716         beq.b      $521e
005208: 2f2f0004     move.l     $4(a7), -(a7)
00520c: 222f0004     move.l     $4(a7), d1
005210: 203c000000ac move.l     #$ac, d0
005216: d08a         add.l      a2, d0
005218: 61003b4a     bsr.w      $8d64
00521c: 588f         addq.l     #$4, a7
00521e: 256f000400a8 move.l     $4(a7), $a8(a2)
005224: 222f0018     move.l     $18(a7), d1
005228: 200a         move.l     a2, d0
00522a: 6100017c     bsr.w      $53a8
00522e: 4ced0410fff8 movem.l    -$8(a5), d4/a2
005234: 4e5d         unlk       a5
005236: 4e75         rts        
005238: 4e550000     link.w     a5, #$0
00523c: 48e7c080     movem.l    d0-d1/a0, -(a7)
005240: 518f         subq.l     #$8, a7
005242: 70ff         moveq      #$ff, d0
005244: 2e80         move.l     d0, (a7)
005246: 4a2e99de     tst.b      -$6622(a6)
00524a: 670a         beq.b      $5256
00524c: 42ae8962     clr.l      -$769e(a6)
005250: 422e99de     clr.b      -$6622(a6)
005254: 6032         bra.b      $5288
005256: 2f6e89620004 move.l     -$769e(a6), $4(a7)
00525c: 6024         bra.b      $5282
00525e: 222f0008     move.l     $8(a7), d1
005262: 202f0004     move.l     $4(a7), d0
005266: 5880         addq.l     #$4, d0
005268: 610038ca     bsr.w      $8b34
00526c: 4a80         tst.l      d0
00526e: 660a         bne.b      $527a
005270: 206f0004     movea.l    $4(a7), a0
005274: 2ea80054     move.l     $54(a0), (a7)
005278: 600e         bra.b      $5288
00527a: 206f0004     movea.l    $4(a7), a0
00527e: 2f500004     move.l     (a0), $4(a7)
005282: 4aaf0004     tst.l      $4(a7)
005286: 66d6         bne.b      $525e
005288: 2017         move.l     (a7), d0
00528a: 508f         addq.l     #$8, a7
00528c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
005292: 4e5d         unlk       a5
005294: 4e75         rts        
005296: 4e550000     link.w     a5, #$0
00529a: 48e7c800     movem.l    d0-d1/d4, -(a7)
00529e: 558f         subq.l     #$2, a7
0052a0: 1f7c00010001 move.b     #$1, $1(a7)
0052a6: 7203         moveq      #$3, d1
0052a8: 202f0002     move.l     $2(a7), d0
0052ac: 6100374c     bsr.w      $89fa
0052b0: 4a80         tst.l      d0
0052b2: 6c34         bge.b      $52e8
0052b4: 487804ac     pea.l      $4ac.w
0052b8: 48780003     pea.l      $3.w
0052bc: 222f000e     move.l     $e(a7), d1
0052c0: 202f000a     move.l     $a(a7), d0
0052c4: 6100202c     bsr.w      $72f2
0052c8: 508f         addq.l     #$8, a7
0052ca: 4a80         tst.l      d0
0052cc: 6c1a         bge.b      $52e8
0052ce: 7203         moveq      #$3, d1
0052d0: 202f0002     move.l     $2(a7), d0
0052d4: 612a         bsr.b      $5300
0052d6: 202f0002     move.l     $2(a7), d0
0052da: 6100ff5c     bsr.w      $5238
0052de: 2800         move.l     d0, d4
0052e0: 4a84         tst.l      d4
0052e2: 6c04         bge.b      $52e8
0052e4: 422f0001     clr.b      $1(a7)
0052e8: 7203         moveq      #$3, d1
0052ea: 202f0002     move.l     $2(a7), d0
0052ee: 6110         bsr.b      $5300
0052f0: 102f0001     move.b     $1(a7), d0
0052f4: 548f         addq.l     #$2, a7
0052f6: 4ced0010fffc movem.l    -$4(a5), d4
0052fc: 4e5d         unlk       a5
0052fe: 4e75         rts        
005300: 4e550000     link.w     a5, #$0
005304: 48e7c800     movem.l    d0-d1/d4, -(a7)
005308: 222f0004     move.l     $4(a7), d1
00530c: 2017         move.l     (a7), d0
00530e: 61001e3e     bsr.w      $714e
005312: 2800         move.l     d0, d4
005314: 4a84         tst.l      d4
005316: 6d06         blt.b      $531e
005318: 2204         move.l     d4, d1
00531a: 2017         move.l     (a7), d0
00531c: 610a         bsr.b      $5328
00531e: 4ced0010fffc movem.l    -$4(a5), d4
005324: 4e5d         unlk       a5
005326: 4e75         rts        
005328: 4e550000     link.w     a5, #$0
00532c: 48e7c020     movem.l    d0-d1/a2, -(a7)
005330: 7058         moveq      #$58, d0
005332: 61003746     bsr.w      $8a7a
005336: 2440         movea.l    d0, a2
005338: 200a         move.l     a2, d0
00533a: 6720         beq.b      $535c
00533c: 4292         clr.l      (a2)
00533e: 2217         move.l     (a7), d1
005340: 200a         move.l     a2, d0
005342: 5880         addq.l     #$4, d0
005344: 61003880     bsr.w      $8bc6
005348: 256f00040054 move.l     $4(a7), $54(a2)
00534e: 220a         move.l     a2, d1
005350: 202e8962     move.l     -$769e(a6), d0
005354: 610000fc     bsr.w      $5452
005358: 2d408962     move.l     d0, -$769e(a6)
00535c: 4ced0400fffc movem.l    -$4(a5), a2
005362: 4e5d         unlk       a5
005364: 4e75         rts        
005366: 4e550000     link.w     a5, #$0
00536a: 48e7c020     movem.l    d0-d1/a2, -(a7)
00536e: 246e8962     movea.l    -$769e(a6), a2
005372: 6026         bra.b      $539a
005374: 2217         move.l     (a7), d1
005376: 200a         move.l     a2, d0
005378: 5880         addq.l     #$4, d0
00537a: 610037b8     bsr.w      $8b34
00537e: 4a80         tst.l      d0
005380: 6616         bne.b      $5398
005382: 220a         move.l     a2, d1
005384: 202e8962     move.l     -$769e(a6), d0
005388: 61000156     bsr.w      $54e0
00538c: 2d408962     move.l     d0, -$769e(a6)
005390: 200a         move.l     a2, d0
005392: 610036f2     bsr.w      $8a86
005396: 6006         bra.b      $539e
005398: 2452         movea.l    (a2), a2
00539a: 200a         move.l     a2, d0
00539c: 66d6         bne.b      $5374
00539e: 4ced0402fff8 movem.l    -$8(a5), d1/a2
0053a4: 4e5d         unlk       a5
0053a6: 4e75         rts        
0053a8: 4e550000     link.w     a5, #$0
0053ac: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
0053b0: 7c01         moveq      #$1, d6
0053b2: 202f0004     move.l     $4(a7), d0
0053b6: 6100fe80     bsr.w      $5238
0053ba: 2800         move.l     d0, d4
0053bc: 4a84         tst.l      d4
0053be: 6c20         bge.b      $53e0
0053c0: 7203         moveq      #$3, d1
0053c2: 202f0004     move.l     $4(a7), d0
0053c6: 6100ff38     bsr.w      $5300
0053ca: 202f0004     move.l     $4(a7), d0
0053ce: 6100fe68     bsr.w      $5238
0053d2: 2800         move.l     d0, d4
0053d4: 4a84         tst.l      d4
0053d6: 6c08         bge.b      $53e0
0053d8: 2017         move.l     (a7), d0
0053da: 610036aa     bsr.w      $8a86
0053de: 7c00         moveq      #$0, d6
0053e0: 4a06         tst.b      d6
0053e2: 672e         beq.b      $5412
0053e4: 48780014     pea.l      $14.w
0053e8: 206f0004     movea.l    $4(a7), a0
0053ec: 2f10         move.l     (a0), -(a7)
0053ee: 222f0008     move.l     $8(a7), d1
0053f2: 2004         move.l     d4, d0
0053f4: 6100f78c     bsr.w      $4b82
0053f8: 508f         addq.l     #$8, a7
0053fa: 2a00         move.l     d0, d5
0053fc: 2057         movea.l    (a7), a0
0053fe: ba90         cmp.l      (a0), d5
005400: 6c0a         bge.b      $540c
005402: 202f0004     move.l     $4(a7), d0
005406: 6100fc38     bsr.w      $5040
00540a: 7c00         moveq      #$0, d6
00540c: 2017         move.l     (a7), d0
00540e: 61003676     bsr.w      $8a86
005412: 1006         move.b     d6, d0
005414: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
00541a: 4e5d         unlk       a5
00541c: 4e75         rts        
00541e: 4e550000     link.w     a5, #$0
005422: 48e7c800     movem.l    d0-d1/d4, -(a7)
005426: 7800         moveq      #$0, d4
005428: 4aaf0014     tst.l      $14(a7)
00542c: 6f18         ble.b      $5446
00542e: 48780014     pea.l      $14.w
005432: 2f2f0018     move.l     $18(a7), -(a7)
005436: 222f000c     move.l     $c(a7), d1
00543a: 202f0008     move.l     $8(a7), d0
00543e: 6100f6ae     bsr.w      $4aee
005442: 508f         addq.l     #$8, a7
005444: 2800         move.l     d0, d4
005446: 2004         move.l     d4, d0
005448: 4ced0010fffc movem.l    -$4(a5), d4
00544e: 4e5d         unlk       a5
005450: 4e75         rts        
005452: 4e550000     link.w     a5, #$0
005456: 48e7c080     movem.l    d0-d1/a0, -(a7)
00545a: 206f0004     movea.l    $4(a7), a0
00545e: 2097         move.l     (a7), (a0)
005460: 2eaf0004     move.l     $4(a7), (a7)
005464: 2017         move.l     (a7), d0
005466: 4ced0100fffc movem.l    -$4(a5), a0
00546c: 4e5d         unlk       a5
00546e: 4e75         rts        
005470: 4e550000     link.w     a5, #$0
005474: 48e7c020     movem.l    d0-d1/a2, -(a7)
005478: 2017         move.l     (a7), d0
00547a: 6142         bsr.b      $54be
00547c: 2440         movea.l    d0, a2
00547e: 200a         move.l     a2, d0
005480: 6606         bne.b      $5488
005482: 2eaf0004     move.l     $4(a7), (a7)
005486: 6004         bra.b      $548c
005488: 24af0004     move.l     $4(a7), (a2)
00548c: 2017         move.l     (a7), d0
00548e: 4ced0400fffc movem.l    -$4(a5), a2
005494: 4e5d         unlk       a5
005496: 4e75         rts        
005498: 4e550000     link.w     a5, #$0
00549c: 48e7c020     movem.l    d0-d1/a2, -(a7)
0054a0: 2457         movea.l    (a7), a2
0054a2: 600a         bra.b      $54ae
0054a4: 202f0004     move.l     $4(a7), d0
0054a8: b092         cmp.l      (a2), d0
0054aa: 6706         beq.b      $54b2
0054ac: 2452         movea.l    (a2), a2
0054ae: 200a         move.l     a2, d0
0054b0: 66f2         bne.b      $54a4
0054b2: 200a         move.l     a2, d0
0054b4: 4ced0400fffc movem.l    -$4(a5), a2
0054ba: 4e5d         unlk       a5
0054bc: 4e75         rts        
0054be: 4e550000     link.w     a5, #$0
0054c2: 48e78020     movem.l    d0/a2, -(a7)
0054c6: 2457         movea.l    (a7), a2
0054c8: 6002         bra.b      $54cc
0054ca: 2452         movea.l    (a2), a2
0054cc: 200a         move.l     a2, d0
0054ce: 6704         beq.b      $54d4
0054d0: 4a92         tst.l      (a2)
0054d2: 66f6         bne.b      $54ca
0054d4: 200a         move.l     a2, d0
0054d6: 4ced0400fffc movem.l    -$4(a5), a2
0054dc: 4e5d         unlk       a5
0054de: 4e75         rts        
0054e0: 4e550000     link.w     a5, #$0
0054e4: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
0054e8: 222f0004     move.l     $4(a7), d1
0054ec: 2017         move.l     (a7), d0
0054ee: 61a8         bsr.b      $5498
0054f0: 2440         movea.l    d0, a2
0054f2: 2657         movea.l    (a7), a3
0054f4: 200a         move.l     a2, d0
0054f6: 6608         bne.b      $5500
0054f8: 206f0004     movea.l    $4(a7), a0
0054fc: 2650         movea.l    (a0), a3
0054fe: 6006         bra.b      $5506
005500: 206f0004     movea.l    $4(a7), a0
005504: 2490         move.l     (a0), (a2)
005506: 206f0004     movea.l    $4(a7), a0
00550a: 4290         clr.l      (a0)
00550c: 200b         move.l     a3, d0
00550e: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
005514: 4e5d         unlk       a5
005516: 4e75         rts        
005518: 4e550000     link.w     a5, #$0
00551c: 48e78020     movem.l    d0/a2, -(a7)
005520: 598f         subq.l     #$4, a7
005522: 246f0004     movea.l    $4(a7), a2
005526: 4297         clr.l      (a7)
005528: 6004         bra.b      $552e
00552a: 5297         addq.l     #$1, (a7)
00552c: 2452         movea.l    (a2), a2
00552e: 200a         move.l     a2, d0
005530: 66f8         bne.b      $552a
005532: 2017         move.l     (a7), d0
005534: 588f         addq.l     #$4, a7
005536: 4ced0400fffc movem.l    -$4(a5), a2
00553c: 4e5d         unlk       a5
00553e: 4e75         rts        
005540: 4e550000     link.w     a5, #$0
005544: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
005548: 95ca         suba.l     a2, a2
00554a: 2657         movea.l    (a7), a3
00554c: 6010         bra.b      $555e
00554e: 284b         movea.l    a3, a4
005550: 2653         movea.l    (a3), a3
005552: 4294         clr.l      (a4)
005554: 220c         move.l     a4, d1
005556: 200a         move.l     a2, d0
005558: 6100fef8     bsr.w      $5452
00555c: 2440         movea.l    d0, a2
00555e: 200b         move.l     a3, d0
005560: 66ec         bne.b      $554e
005562: 200a         move.l     a2, d0
005564: 4ced1c02fff0 movem.l    -$10(a5), d1/a2-a4
00556a: 4e5d         unlk       a5
00556c: 4e75         rts        
00556e: 4e550000     link.w     a5, #$0
005572: 48e7c080     movem.l    d0-d1/a0, -(a7)
005576: 61000c92     bsr.w      $620a
00557a: 4a00         tst.b      d0
00557c: 660000fa     bne.w      $5678
005580: 7201         moveq      #$1, d1
005582: 41fa04da     lea.l      $5a5e(pc), a0
005586: 2008         move.l     a0, d0
005588: 61000d30     bsr.w      $62ba
00558c: 2d4099e0     move.l     d0, -$6620(a6)
005590: 6c04         bge.b      $5596
005592: 70ff         moveq      #$ff, d0
005594: 6062         bra.b      $55f8
005596: 7201         moveq      #$1, d1
005598: 41fa04d5     lea.l      $5a6f(pc), a0
00559c: 2008         move.l     a0, d0
00559e: 61000d1a     bsr.w      $62ba
0055a2: 2d4099e4     move.l     d0, -$661c(a6)
0055a6: 6c14         bge.b      $55bc
0055a8: 202e99e0     move.l     -$6620(a6), d0
0055ac: 61003488     bsr.w      $8a36
0055b0: 72ff         moveq      #$ff, d1
0055b2: b280         cmp.l      d0, d1
0055b4: 670000c2     beq.w      $5678
0055b8: 70ff         moveq      #$ff, d0
0055ba: 6038         bra.b      $55f4
0055bc: 7201         moveq      #$1, d1
0055be: 41fa04c7     lea.l      $5a87(pc), a0
0055c2: 2008         move.l     a0, d0
0055c4: 61000cf4     bsr.w      $62ba
0055c8: 2d4099e8     move.l     d0, -$6618(a6)
0055cc: 6c32         bge.b      $5600
0055ce: 202e99e0     move.l     -$6620(a6), d0
0055d2: 61003462     bsr.w      $8a36
0055d6: 72ff         moveq      #$ff, d1
0055d8: b280         cmp.l      d0, d1
0055da: 6700009c     beq.w      $5678
0055de: 202e99e4     move.l     -$661c(a6), d0
0055e2: 61003452     bsr.w      $8a36
0055e6: 72ff         moveq      #$ff, d1
0055e8: b280         cmp.l      d0, d1
0055ea: 6700008c     beq.w      $5678
0055ee: 70ff         moveq      #$ff, d0
0055f0: 2d4099e8     move.l     d0, -$6618(a6)
0055f4: 2d4099e4     move.l     d0, -$661c(a6)
0055f8: 2d4099e0     move.l     d0, -$6620(a6)
0055fc: 6000007a     bra.w      $5678
005600: 4aae99ec     tst.l      -$6614(a6)
005604: 6630         bne.b      $5636
005606: 61000c26     bsr.w      $622e
00560a: 4a00         tst.b      d0
00560c: 6728         beq.b      $5636
00560e: 202e898c     move.l     -$7674(a6), d0
005612: 5280         addq.l     #$1, d0
005614: 2200         move.l     d0, d1
005616: 2017         move.l     (a7), d0
005618: 610004a0     bsr.w      $5aba
00561c: 72ff         moveq      #$ff, d1
00561e: b280         cmp.l      d0, d1
005620: 6714         beq.b      $5636
005622: 41ee99f0     lea.l      -$6610(a6), a0
005626: 2208         move.l     a0, d1
005628: 41ee8990     lea.l      -$7670(a6), a0
00562c: 2008         move.l     a0, d0
00562e: 61002bb8     bsr.w      $81e8
005632: 4a80         tst.l      d0
005634: 6646         bne.b      $567c
005636: 202e99e0     move.l     -$6620(a6), d0
00563a: 610033fa     bsr.w      $8a36
00563e: 72ff         moveq      #$ff, d1
005640: b280         cmp.l      d0, d1
005642: 6734         beq.b      $5678
005644: 202e99e4     move.l     -$661c(a6), d0
005648: 610033ec     bsr.w      $8a36
00564c: 72ff         moveq      #$ff, d1
00564e: b280         cmp.l      d0, d1
005650: 6726         beq.b      $5678
005652: 202e99e8     move.l     -$6618(a6), d0
005656: 610033de     bsr.w      $8a36
00565a: 72ff         moveq      #$ff, d1
00565c: b280         cmp.l      d0, d1
00565e: 6718         beq.b      $5678
005660: 70ff         moveq      #$ff, d0
005662: 2d4099e8     move.l     d0, -$6618(a6)
005666: 2d4099e4     move.l     d0, -$661c(a6)
00566a: 2d4099e0     move.l     d0, -$6620(a6)
00566e: 70ff         moveq      #$ff, d0
005670: 2d4099f0     move.l     d0, -$6610(a6)
005674: 42ae99ec     clr.l      -$6614(a6)
005678: 70ff         moveq      #$ff, d0
00567a: 6002         bra.b      $567e
00567c: 2017         move.l     (a7), d0
00567e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
005684: 4e5d         unlk       a5
005686: 4e75         rts        
005688: 4e550000     link.w     a5, #$0
00568c: 48e7c000     movem.l    d0-d1, -(a7)
005690: 61000b78     bsr.w      $620a
005694: 4a00         tst.b      d0
005696: 672a         beq.b      $56c2
005698: 202e99e0     move.l     -$6620(a6), d0
00569c: 61003398     bsr.w      $8a36
0056a0: 72ff         moveq      #$ff, d1
0056a2: b280         cmp.l      d0, d1
0056a4: 671c         beq.b      $56c2
0056a6: 202e99e4     move.l     -$661c(a6), d0
0056aa: 6100338a     bsr.w      $8a36
0056ae: 72ff         moveq      #$ff, d1
0056b0: b280         cmp.l      d0, d1
0056b2: 670e         beq.b      $56c2
0056b4: 202e99e8     move.l     -$6618(a6), d0
0056b8: 6100337c     bsr.w      $8a36
0056bc: 72ff         moveq      #$ff, d1
0056be: b280         cmp.l      d0, d1
0056c0: 6604         bne.b      $56c6
0056c2: 70ff         moveq      #$ff, d0
0056c4: 6022         bra.b      $56e8
0056c6: 202e99f0     move.l     -$6610(a6), d0
0056ca: 61002af8     bsr.w      $81c4
0056ce: 70ff         moveq      #$ff, d0
0056d0: 2d4099e8     move.l     d0, -$6618(a6)
0056d4: 2d4099e4     move.l     d0, -$661c(a6)
0056d8: 2d4099e0     move.l     d0, -$6620(a6)
0056dc: 42ae99ec     clr.l      -$6614(a6)
0056e0: 70ff         moveq      #$ff, d0
0056e2: 2d4099f0     move.l     d0, -$6610(a6)
0056e6: 7000         moveq      #$0, d0
0056e8: 4ced0002fffc movem.l    -$4(a5), d1
0056ee: 4e5d         unlk       a5
0056f0: 4e75         rts        
0056f2: 4e550000     link.w     a5, #$0
0056f6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0056fa: 4fefffd4     lea.l      -$2c(a7), a7
0056fe: 202e99f0     move.l     -$6610(a6), d0
005702: 61002b36     bsr.w      $823a
005706: 41ef0004     lea.l      $4(a7), a0
00570a: 2008         move.l     a0, d0
00570c: 6100028e     bsr.w      $599c
005710: 2e80         move.l     d0, (a7)
005712: 202e99f0     move.l     -$6610(a6), d0
005716: 61002b52     bsr.w      $826a
00571a: 4a97         tst.l      (a7)
00571c: 6704         beq.b      $5722
00571e: 2017         move.l     (a7), d0
005720: 6012         bra.b      $5734
005722: 206f0030     movea.l    $30(a7), a0
005726: 20af0004     move.l     $4(a7), (a0)
00572a: 216f00080004 move.l     $8(a7), $4(a0)
005730: 610002d2     bsr.w      $5a04
005734: 4fef002c     lea.l      $2c(a7), a7
005738: 4ced0100fffc movem.l    -$4(a5), a0
00573e: 4e5d         unlk       a5
005740: 4e75         rts        
005742: 4e550000     link.w     a5, #$0
005746: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00574a: 4fefffd4     lea.l      -$2c(a7), a7
00574e: 202e99f0     move.l     -$6610(a6), d0
005752: 61002ae6     bsr.w      $823a
005756: 41ef0004     lea.l      $4(a7), a0
00575a: 2008         move.l     a0, d0
00575c: 6100023e     bsr.w      $599c
005760: 2e80         move.l     d0, (a7)
005762: 202e99f0     move.l     -$6610(a6), d0
005766: 61002b02     bsr.w      $826a
00576a: 4a97         tst.l      (a7)
00576c: 6704         beq.b      $5772
00576e: 2017         move.l     (a7), d0
005770: 605a         bra.b      $57cc
005772: 206f0030     movea.l    $30(a7), a0
005776: 20af0004     move.l     $4(a7), (a0)
00577a: 216f00080004 move.l     $8(a7), $4(a0)
005780: 7001         moveq      #$1, d0
005782: c02f000c     and.b      $c(a7), d0
005786: 206f0030     movea.l    $30(a7), a0
00578a: 11400008     move.b     d0, $8(a0)
00578e: 206f0048     movea.l    $48(a7), a0
005792: 226f0030     movea.l    $30(a7), a1
005796: 0c2900010008 cmpi.b     #$1, $8(a1)
00579c: 6606         bne.b      $57a4
00579e: 43ef000e     lea.l      $e(a7), a1
0057a2: 6004         bra.b      $57a8
0057a4: 43ef0016     lea.l      $16(a7), a1
0057a8: 2091         move.l     (a1), (a0)
0057aa: 216900040004 move.l     $4(a1), $4(a0)
0057b0: 7064         moveq      #$64, d0
0057b2: c1ef0022     muls.w     $22(a7), d0
0057b6: 206f0044     movea.l    $44(a7), a0
0057ba: 2080         move.l     d0, (a0)
0057bc: 7002         moveq      #$2, d0
0057be: c02f000c     and.b      $c(a7), d0
0057c2: 206f004c     movea.l    $4c(a7), a0
0057c6: 1080         move.b     d0, (a0)
0057c8: 6100023a     bsr.w      $5a04
0057cc: 4fef002c     lea.l      $2c(a7), a7
0057d0: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0057d6: 4e5d         unlk       a5
0057d8: 4e75         rts        
0057da: 4e550000     link.w     a5, #$0
0057de: 48e7c080     movem.l    d0-d1/a0, -(a7)
0057e2: 4fefffcc     lea.l      -$34(a7), a7
0057e6: 202e99f0     move.l     -$6610(a6), d0
0057ea: 61002a4e     bsr.w      $823a
0057ee: 41d7         lea.l      (a7), a0
0057f0: 2008         move.l     a0, d0
0057f2: 610001a8     bsr.w      $599c
0057f6: 2f400028     move.l     d0, $28(a7)
0057fa: 4aaf0028     tst.l      $28(a7)
0057fe: 670c         beq.b      $580c
005800: 202e99f0     move.l     -$6610(a6), d0
005804: 61002a64     bsr.w      $826a
005808: 60000180     bra.w      $598a
00580c: 302f0020     move.w     $20(a7), d0
005810: 48c0         ext.l      d0
005812: 5280         addq.l     #$1, d0
005814: e788         lsl.l      #$3, d0
005816: 7216         moveq      #$16, d1
005818: d081         add.l      d1, d0
00581a: 2f400030     move.l     d0, $30(a7)
00581e: 202f0030     move.l     $30(a7), d0
005822: 61003256     bsr.w      $8a7a
005826: 206f0038     movea.l    $38(a7), a0
00582a: 2080         move.l     d0, (a0)
00582c: 660c         bne.b      $583a
00582e: 202e99f0     move.l     -$6610(a6), d0
005832: 61002a36     bsr.w      $826a
005836: 60000112     bra.w      $594a
00583a: 206f0038     movea.l    $38(a7), a0
00583e: 2050         movea.l    (a0), a0
005840: 10af0009     move.b     $9(a7), (a0)
005844: 7001         moveq      #$1, d0
005846: c02f0008     and.b      $8(a7), d0
00584a: 206f0038     movea.l    $38(a7), a0
00584e: 2050         movea.l    (a0), a0
005850: 11400001     move.b     d0, $1(a0)
005854: 206f0038     movea.l    $38(a7), a0
005858: 2050         movea.l    (a0), a0
00585a: 21570002     move.l     (a7), $2(a0)
00585e: 216f00040006 move.l     $4(a7), $6(a0)
005864: 7004         moveq      #$4, d0
005866: c02f0008     and.b      $8(a7), d0
00586a: 206f0038     movea.l    $38(a7), a0
00586e: 2050         movea.l    (a0), a0
005870: 1140000a     move.b     d0, $a(a0)
005874: 302f0020     move.w     $20(a7), d0
005878: 5440         addq.w     #$2, d0
00587a: 206f0038     movea.l    $38(a7), a0
00587e: 2050         movea.l    (a0), a0
005880: 3140000c     move.w     d0, $c(a0)
005884: 206f0038     movea.l    $38(a7), a0
005888: 2050         movea.l    (a0), a0
00588a: 216f000a000e move.l     $a(a7), $e(a0)
005890: 216f000e0012 move.l     $e(a7), $12(a0)
005896: 302f0020     move.w     $20(a7), d0
00589a: 48c0         ext.l      d0
00589c: 5280         addq.l     #$1, d0
00589e: 206f0038     movea.l    $38(a7), a0
0058a2: 2050         movea.l    (a0), a0
0058a4: e788         lsl.l      #$3, d0
0058a6: d1c0         adda.l     d0, a0
0058a8: 216f0012000e move.l     $12(a7), $e(a0)
0058ae: 216f00160012 move.l     $16(a7), $12(a0)
0058b4: 4a6f0020     tst.w      $20(a7)
0058b8: 6f0000a6     ble.w      $5960
0058bc: 42a7         clr.l      -(a7)
0058be: 302f0026     move.w     $26(a7), d0
0058c2: 48c0         ext.l      d0
0058c4: 81fc06d6     divs.w     #$6d6, d0
0058c8: 4840         swap       d0
0058ca: 48c0         ext.l      d0
0058cc: e788         lsl.l      #$3, d0
0058ce: 2200         move.l     d0, d1
0058d0: 202e99e8     move.l     -$6618(a6), d0
0058d4: 61003154     bsr.w      $8a2a
0058d8: 588f         addq.l     #$4, a7
0058da: 72ff         moveq      #$ff, d1
0058dc: b280         cmp.l      d0, d1
0058de: 6758         beq.b      $5938
0058e0: 42af002c     clr.l      $2c(a7)
0058e4: 606c         bra.b      $5952
0058e6: 302f0022     move.w     $22(a7), d0
0058ea: 48c0         ext.l      d0
0058ec: d0af002c     add.l      $2c(a7), d0
0058f0: 4c7c0801000006d6 divs.l     #$6d6, d0
0058f8: 4a81         tst.l      d1
0058fa: 6614         bne.b      $5910
0058fc: 42a7         clr.l      -(a7)
0058fe: 7200         moveq      #$0, d1
005900: 202e99e8     move.l     -$6618(a6), d0
005904: 61003124     bsr.w      $8a2a
005908: 588f         addq.l     #$4, a7
00590a: 72ff         moveq      #$ff, d1
00590c: b280         cmp.l      d0, d1
00590e: 6728         beq.b      $5938
005910: 48780008     pea.l      $8.w
005914: 206f003c     movea.l    $3c(a7), a0
005918: 700e         moveq      #$e, d0
00591a: d090         add.l      (a0), d0
00591c: 222f0030     move.l     $30(a7), d1
005920: 5281         addq.l     #$1, d1
005922: e789         lsl.l      #$3, d1
005924: d081         add.l      d1, d0
005926: 2200         move.l     d0, d1
005928: 202e99e8     move.l     -$6618(a6), d0
00592c: 610030ec     bsr.w      $8a1a
005930: 588f         addq.l     #$4, a7
005932: 7208         moveq      #$8, d1
005934: b280         cmp.l      d0, d1
005936: 6716         beq.b      $594e
005938: 202e99f0     move.l     -$6610(a6), d0
00593c: 6100292c     bsr.w      $826a
005940: 206f0038     movea.l    $38(a7), a0
005944: 2010         move.l     (a0), d0
005946: 6100313e     bsr.w      $8a86
00594a: 70ff         moveq      #$ff, d0
00594c: 6040         bra.b      $598e
00594e: 52af002c     addq.l     #$1, $2c(a7)
005952: 302f0020     move.w     $20(a7), d0
005956: 48c0         ext.l      d0
005958: b0af002c     cmp.l      $2c(a7), d0
00595c: 6e00ff88     bgt.w      $58e6
005960: 202e99f0     move.l     -$6610(a6), d0
005964: 61002904     bsr.w      $826a
005968: 206f0048     movea.l    $48(a7), a0
00596c: 20af0030     move.l     $30(a7), (a0)
005970: 61000092     bsr.w      $5a04
005974: 2f400028     move.l     d0, $28(a7)
005978: 70ff         moveq      #$ff, d0
00597a: b0af0028     cmp.l      $28(a7), d0
00597e: 660a         bne.b      $598a
005980: 206f0038     movea.l    $38(a7), a0
005984: 2010         move.l     (a0), d0
005986: 610030fe     bsr.w      $8a86
00598a: 202f0028     move.l     $28(a7), d0
00598e: 4fef0034     lea.l      $34(a7), a7
005992: 4ced0100fffc movem.l    -$4(a5), a0
005998: 4e5d         unlk       a5
00599a: 4e75         rts        
00599c: 4e550000     link.w     a5, #$0
0059a0: 48e7c000     movem.l    d0-d1, -(a7)
0059a4: 598f         subq.l     #$4, a7
0059a6: 61000862     bsr.w      $620a
0059aa: 4a00         tst.b      d0
0059ac: 6604         bne.b      $59b2
0059ae: 70ff         moveq      #$ff, d0
0059b0: 6046         bra.b      $59f8
0059b2: 6100087a     bsr.w      $622e
0059b6: 4a00         tst.b      d0
0059b8: 6606         bne.b      $59c0
0059ba: 70ff         moveq      #$ff, d0
0059bc: 2e80         move.l     d0, (a7)
0059be: 6036         bra.b      $59f6
0059c0: 610008be     bsr.w      $6280
0059c4: 4a00         tst.b      d0
0059c6: 67f2         beq.b      $59ba
0059c8: 610008d4     bsr.w      $629e
0059cc: 4a00         tst.b      d0
0059ce: 660c         bne.b      $59dc
0059d0: 7002         moveq      #$2, d0
0059d2: b0ae8966     cmp.l      -$769a(a6), d0
0059d6: 66e2         bne.b      $59ba
0059d8: 70fe         moveq      #$fe, d0
0059da: 60e0         bra.b      $59bc
0059dc: 48780028     pea.l      $28.w
0059e0: 222f0008     move.l     $8(a7), d1
0059e4: 202e99e4     move.l     -$661c(a6), d0
0059e8: 61003030     bsr.w      $8a1a
0059ec: 588f         addq.l     #$4, a7
0059ee: 7228         moveq      #$28, d1
0059f0: b280         cmp.l      d0, d1
0059f2: 66c6         bne.b      $59ba
0059f4: 4297         clr.l      (a7)
0059f6: 2017         move.l     (a7), d0
0059f8: 588f         addq.l     #$4, a7
0059fa: 4ced0002fffc movem.l    -$4(a5), d1
005a00: 4e5d         unlk       a5
005a02: 4e75         rts        
005a04: 4e550000     link.w     a5, #$0
005a08: 48e7c000     movem.l    d0-d1, -(a7)
005a0c: 52ae99ec     addq.l     #$1, -$6614(a6)
005a10: 202e99ec     move.l     -$6614(a6), d0
005a14: 5380         subq.l     #$1, d0
005a16: 4c7c0801000003e8 divs.l     #$3e8, d0
005a1e: 4a81         tst.l      d1
005a20: 6618         bne.b      $5a3a
005a22: 42a7         clr.l      -(a7)
005a24: 7200         moveq      #$0, d1
005a26: 202e99e4     move.l     -$661c(a6), d0
005a2a: 61002ffe     bsr.w      $8a2a
005a2e: 588f         addq.l     #$4, a7
005a30: 72ff         moveq      #$ff, d1
005a32: b280         cmp.l      d0, d1
005a34: 6604         bne.b      $5a3a
005a36: 70ff         moveq      #$ff, d0
005a38: 601a         bra.b      $5a54
005a3a: 61000862     bsr.w      $629e
005a3e: 4a00         tst.b      d0
005a40: 6610         bne.b      $5a52
005a42: 7002         moveq      #$2, d0
005a44: b0ae8966     cmp.l      -$769a(a6), d0
005a48: 6604         bne.b      $5a4e
005a4a: 7002         moveq      #$2, d0
005a4c: 6006         bra.b      $5a54
005a4e: 7001         moveq      #$1, d0
005a50: 6002         bra.b      $5a54
005a52: 7000         moveq      #$0, d0
005a54: 4ced0002fffc movem.l    -$4(a5), d1
005a5a: 4e5d         unlk       a5
005a5c: 4e75         rts        
005a5e: 2f7061636b2f72705f67656e move.l     ([$6b2f, a0], $72705f67), $656e(a7)
005a6a: 5f696e66     subq.w     #$7, $6e66(a1)
005a6e: 002f72706163 ori.b      #$70, $6163(a7)
005a74: 6b2f         bmi.b      $5aa5
005a76: 7270         moveq      #$70, d1
005a78: 5f706c61     subq.w     #$7, $61(a0, d6.l)
005a7c: 6e6e         bgt.b      $5aec
005a7e: 6564         bcs.b      $5ae4
005a80: 5f726f757465002f subq.w     #$7, ([$7465002f, a2])
005a88: 7270         moveq      #$70, d1
005a8a: 6163         bsr.b      $5aef
005a8c: 6b2f         bmi.b      $5abd
005a8e: 7270         moveq      #$70, d1
005a90: 5f696e74     subq.w     #$7, $6e74(a1)
005a94: 6572         bcs.b      $5b08
005a96: 6d65         blt.b      $5afd
005a98: 6469         bcc.b      $5b03
005a9a: 6174         bsr.b      $5b10
005a9c: 6573         bcs.b      $5b11
005a9e: 00004e55     ori.b      #$55, d0
005aa2: 000048e7     ori.b      #$e7, d0
005aa6: c000         and.b      d0, d0
005aa8: 202e99ec     move.l     -$6614(a6), d0
005aac: d0af0004     add.l      $4(a7), d0
005ab0: 2200         move.l     d0, d1
005ab2: 2017         move.l     (a7), d0
005ab4: 6104         bsr.b      $5aba
005ab6: 4e5d         unlk       a5
005ab8: 4e75         rts        
005aba: 4e550000     link.w     a5, #$0
005abe: 48e7c000     movem.l    d0-d1, -(a7)
005ac2: 598f         subq.l     #$4, a7
005ac4: 61000744     bsr.w      $620a
005ac8: 4a00         tst.b      d0
005aca: 675e         beq.b      $5b2a
005acc: 61000760     bsr.w      $622e
005ad0: 4a00         tst.b      d0
005ad2: 6756         beq.b      $5b2a
005ad4: 2d6f000899ec move.l     $8(a7), -$6614(a6)
005ada: 4297         clr.l      (a7)
005adc: 610007a2     bsr.w      $6280
005ae0: 4a00         tst.b      d0
005ae2: 660e         bne.b      $5af2
005ae4: 202e898c     move.l     -$7674(a6), d0
005ae8: 5280         addq.l     #$1, d0
005aea: 2d4099ec     move.l     d0, -$6614(a6)
005aee: 70ff         moveq      #$ff, d0
005af0: 2e80         move.l     d0, (a7)
005af2: 610007aa     bsr.w      $629e
005af6: 4a00         tst.b      d0
005af8: 660a         bne.b      $5b04
005afa: 2d6e897499ec move.l     -$768c(a6), -$6614(a6)
005b00: 70ff         moveq      #$ff, d0
005b02: 2e80         move.l     d0, (a7)
005b04: 42a7         clr.l      -(a7)
005b06: 202e99ec     move.l     -$6614(a6), d0
005b0a: 5380         subq.l     #$1, d0
005b0c: 4c7c0801000003e8 divs.l     #$3e8, d0
005b14: 7028         moveq      #$28, d0
005b16: 4c001001     mulu.l     d0, d1
005b1a: 202e99e4     move.l     -$661c(a6), d0
005b1e: 61002f0a     bsr.w      $8a2a
005b22: 588f         addq.l     #$4, a7
005b24: 72ff         moveq      #$ff, d1
005b26: b280         cmp.l      d0, d1
005b28: 6604         bne.b      $5b2e
005b2a: 70ff         moveq      #$ff, d0
005b2c: 6002         bra.b      $5b30
005b2e: 2017         move.l     (a7), d0
005b30: 588f         addq.l     #$4, a7
005b32: 4e5d         unlk       a5
005b34: 4e75         rts        
005b36: 4e550000     link.w     a5, #$0
005b3a: 48e7c080     movem.l    d0-d1/a0, -(a7)
005b3e: 610006ca     bsr.w      $620a
005b42: 4a00         tst.b      d0
005b44: 6708         beq.b      $5b4e
005b46: 610006e6     bsr.w      $622e
005b4a: 4a00         tst.b      d0
005b4c: 6604         bne.b      $5b52
005b4e: 70ff         moveq      #$ff, d0
005b50: 600a         bra.b      $5b5c
005b52: 206f0004     movea.l    $4(a7), a0
005b56: 20ae99ec     move.l     -$6614(a6), (a0)
005b5a: 7000         moveq      #$0, d0
005b5c: 4ced0100fffc movem.l    -$4(a5), a0
005b62: 4e5d         unlk       a5
005b64: 4e75         rts        
005b66: 4e550000     link.w     a5, #$0
005b6a: 48e7c080     movem.l    d0-d1/a0, -(a7)
005b6e: 6100069a     bsr.w      $620a
005b72: 4a00         tst.b      d0
005b74: 6710         beq.b      $5b86
005b76: 610006b6     bsr.w      $622e
005b7a: 4a00         tst.b      d0
005b7c: 6708         beq.b      $5b86
005b7e: 610006e8     bsr.w      $6268
005b82: 4a00         tst.b      d0
005b84: 6604         bne.b      $5b8a
005b86: 70ff         moveq      #$ff, d0
005b88: 600a         bra.b      $5b94
005b8a: 206f0004     movea.l    $4(a7), a0
005b8e: 10ae896a     move.b     -$7696(a6), (a0)
005b92: 7000         moveq      #$0, d0
005b94: 4ced0100fffc movem.l    -$4(a5), a0
005b9a: 4e5d         unlk       a5
005b9c: 4e75         rts        
005b9e: 4e550000     link.w     a5, #$0
005ba2: 48e7c080     movem.l    d0-d1/a0, -(a7)
005ba6: 61000662     bsr.w      $620a
005baa: 4a00         tst.b      d0
005bac: 6716         beq.b      $5bc4
005bae: 6100067e     bsr.w      $622e
005bb2: 4a00         tst.b      d0
005bb4: 670e         beq.b      $5bc4
005bb6: 610006b0     bsr.w      $6268
005bba: 4a00         tst.b      d0
005bbc: 6706         beq.b      $5bc4
005bbe: 4a2e896a     tst.b      -$7696(a6)
005bc2: 6704         beq.b      $5bc8
005bc4: 70ff         moveq      #$ff, d0
005bc6: 6010         bra.b      $5bd8
005bc8: 206f0004     movea.l    $4(a7), a0
005bcc: 20ae896c     move.l     -$7694(a6), (a0)
005bd0: 216e89700004 move.l     -$7690(a6), $4(a0)
005bd6: 7000         moveq      #$0, d0
005bd8: 4ced0100fffc movem.l    -$4(a5), a0
005bde: 4e5d         unlk       a5
005be0: 4e75         rts        
005be2: 4e550000     link.w     a5, #$0
005be6: 48e7c080     movem.l    d0-d1/a0, -(a7)
005bea: 6100061e     bsr.w      $620a
005bee: 4a00         tst.b      d0
005bf0: 6710         beq.b      $5c02
005bf2: 6100063a     bsr.w      $622e
005bf6: 4a00         tst.b      d0
005bf8: 6708         beq.b      $5c02
005bfa: 6100066c     bsr.w      $6268
005bfe: 4a00         tst.b      d0
005c00: 6604         bne.b      $5c06
005c02: 70ff         moveq      #$ff, d0
005c04: 600a         bra.b      $5c10
005c06: 206f0004     movea.l    $4(a7), a0
005c0a: 10ae896b     move.b     -$7695(a6), (a0)
005c0e: 7000         moveq      #$0, d0
005c10: 4ced0100fffc movem.l    -$4(a5), a0
005c16: 4e5d         unlk       a5
005c18: 4e75         rts        
005c1a: 4e550000     link.w     a5, #$0
005c1e: 48e7fb80     movem.l    d0-d4/d6-d7/a0, -(a7)
005c22: 4fefff76     lea.l      -$8a(a7), a7
005c26: 42af0004     clr.l      $4(a7)
005c2a: 4297         clr.l      (a7)
005c2c: 206f008e     movea.l    $8e(a7), a0
005c30: 4290         clr.l      (a0)
005c32: 206f00b2     movea.l    $b2(a7), a0
005c36: 4290         clr.l      (a0)
005c38: 610005d0     bsr.w      $620a
005c3c: 4a00         tst.b      d0
005c3e: 6700017a     beq.w      $5dba
005c42: 610005ea     bsr.w      $622e
005c46: 4a00         tst.b      d0
005c48: 67000170     beq.w      $5dba
005c4c: 7201         moveq      #$1, d1
005c4e: 41fa05a2     lea.l      $61f2(pc), a0
005c52: 2008         move.l     a0, d0
005c54: 61000664     bsr.w      $62ba
005c58: 2f40000c     move.l     d0, $c(a7)
005c5c: 6d00015c     blt.w      $5dba
005c60: 4878003a     pea.l      $3a.w
005c64: 41ef0052     lea.l      $52(a7), a0
005c68: 2208         move.l     a0, d1
005c6a: 202f0010     move.l     $10(a7), d0
005c6e: 61002daa     bsr.w      $8a1a
005c72: 588f         addq.l     #$4, a7
005c74: 723a         moveq      #$3a, d1
005c76: b280         cmp.l      d0, d1
005c78: 671a         beq.b      $5c94
005c7a: 202f000c     move.l     $c(a7), d0
005c7e: 61002db6     bsr.w      $8a36
005c82: 72ff         moveq      #$ff, d1
005c84: b280         cmp.l      d0, d1
005c86: 6706         beq.b      $5c8e
005c88: 7001         moveq      #$1, d0
005c8a: 6000012e     bra.w      $5dba
005c8e: 7000         moveq      #$0, d0
005c90: 60000128     bra.w      $5dba
005c94: 202f000c     move.l     $c(a7), d0
005c98: 61002d9c     bsr.w      $8a36
005c9c: 72ff         moveq      #$ff, d1
005c9e: b280         cmp.l      d0, d1
005ca0: 6704         beq.b      $5ca6
005ca2: 7001         moveq      #$1, d0
005ca4: 6002         bra.b      $5ca8
005ca6: 7000         moveq      #$0, d0
005ca8: 4a6f006c     tst.w      $6c(a7)
005cac: 6708         beq.b      $5cb6
005cae: 0c6f0003006c cmpi.w     #$3, $6c(a7)
005cb4: 662a         bne.b      $5ce0
005cb6: 2f6f00560044 move.l     $56(a7), $44(a7)
005cbc: 2f6f005a0048 move.l     $5a(a7), $48(a7)
005cc2: 2f6f004e003c move.l     $4e(a7), $3c(a7)
005cc8: 2f6f00520040 move.l     $52(a7), $40(a7)
005cce: 1f6f006a004c move.b     $6a(a7), $4c(a7)
005cd4: 7000         moveq      #$0, d0
005cd6: 302f005e     move.w     $5e(a7), d0
005cda: 2f400008     move.l     d0, $8(a7)
005cde: 6006         bra.b      $5ce6
005ce0: 70fe         moveq      #$fe, d0
005ce2: 600001ce     bra.w      $5eb2
005ce6: 202e99f0     move.l     -$6610(a6), d0
005cea: 6100254e     bsr.w      $823a
005cee: 282e898c     move.l     -$7674(a6), d4
005cf2: 422f0089     clr.b      $89(a7)
005cf6: 60000086     bra.w      $5d7e
005cfa: 42a7         clr.l      -(a7)
005cfc: 2004         move.l     d4, d0
005cfe: 4c7c0801000003e8 divs.l     #$3e8, d0
005d06: 7028         moveq      #$28, d0
005d08: 4c001001     mulu.l     d0, d1
005d0c: 202e99e4     move.l     -$661c(a6), d0
005d10: 61002d18     bsr.w      $8a2a
005d14: 588f         addq.l     #$4, a7
005d16: 72ff         moveq      #$ff, d1
005d18: b280         cmp.l      d0, d1
005d1a: 67000096     beq.w      $5db2
005d1e: 48780028     pea.l      $28.w
005d22: 41ef0018     lea.l      $18(a7), a0
005d26: 2208         move.l     a0, d1
005d28: 202e99e4     move.l     -$661c(a6), d0
005d2c: 61002cec     bsr.w      $8a1a
005d30: 588f         addq.l     #$4, a7
005d32: 7228         moveq      #$28, d1
005d34: b280         cmp.l      d0, d1
005d36: 6600007a     bne.w      $5db2
005d3a: 302f001a     move.w     $1a(a7), d0
005d3e: b06f004a     cmp.w      $4a(a7), d0
005d42: 6628         bne.b      $5d6c
005d44: 302f0018     move.w     $18(a7), d0
005d48: b06f0048     cmp.w      $48(a7), d0
005d4c: 661e         bne.b      $5d6c
005d4e: 202f0014     move.l     $14(a7), d0
005d52: b0af0044     cmp.l      $44(a7), d0
005d56: 6614         bne.b      $5d6c
005d58: 7001         moveq      #$1, d0
005d5a: c02f001c     and.b      $1c(a7), d0
005d5e: b02f004c     cmp.b      $4c(a7), d0
005d62: 6608         bne.b      $5d6c
005d64: 1f7c00010089 move.b     #$1, $89(a7)
005d6a: 6010         bra.b      $5d7c
005d6c: 302f0032     move.w     $32(a7), d0
005d70: 48c0         ext.l      d0
005d72: d1af0004     add.l      d0, $4(a7)
005d76: 202f0038     move.l     $38(a7), d0
005d7a: d197         add.l      d0, (a7)
005d7c: 5284         addq.l     #$1, d4
005d7e: 4a2f0089     tst.b      $89(a7)
005d82: 6608         bne.b      $5d8c
005d84: b8ae8974     cmp.l      -$768c(a6), d4
005d88: 6d00ff70     blt.w      $5cfa
005d8c: 42a7         clr.l      -(a7)
005d8e: 202e99ec     move.l     -$6614(a6), d0
005d92: 5380         subq.l     #$1, d0
005d94: 4c7c0801000003e8 divs.l     #$3e8, d0
005d9c: 7028         moveq      #$28, d0
005d9e: 4c001001     mulu.l     d0, d1
005da2: 202e99e4     move.l     -$661c(a6), d0
005da6: 61002c82     bsr.w      $8a2a
005daa: 588f         addq.l     #$4, a7
005dac: 72ff         moveq      #$ff, d1
005dae: b280         cmp.l      d0, d1
005db0: 660e         bne.b      $5dc0
005db2: 202e99f0     move.l     -$6610(a6), d0
005db6: 610024b2     bsr.w      $826a
005dba: 70ff         moveq      #$ff, d0
005dbc: 600000f4     bra.w      $5eb2
005dc0: 4a2f0089     tst.b      $89(a7)
005dc4: 670000da     beq.w      $5ea0
005dc8: 4feffff0     lea.l      -$10(a7), a7
005dcc: 2f2f0018     move.l     $18(a7), -(a7)
005dd0: 41ef0050     lea.l      $50(a7), a0
005dd4: 2208         move.l     a0, d1
005dd6: 41ef0028     lea.l      $28(a7), a0
005dda: 2008         move.l     a0, d0
005ddc: 6100024e     bsr.w      $602c
005de0: 588f         addq.l     #$4, a7
005de2: 2f40000c     move.l     d0, $c(a7)
005de6: 202e8978     move.l     -$7688(a6), d0
005dea: 90ae897c     sub.l      -$7684(a6), d0
005dee: 90af0014     sub.l      $14(a7), d0
005df2: 7264         moveq      #$64, d1
005df4: 4c010000     mulu.l     d1, d0
005df8: 90af000c     sub.l      $c(a7), d0
005dfc: 2f400008     move.l     d0, $8(a7)
005e00: 4aaf0008     tst.l      $8(a7)
005e04: 6c04         bge.b      $5e0a
005e06: 7000         moveq      #$0, d0
005e08: 6004         bra.b      $5e0e
005e0a: 202f0008     move.l     $8(a7), d0
005e0e: 206f009e     movea.l    $9e(a7), a0
005e12: 2080         move.l     d0, (a0)
005e14: 202f000c     move.l     $c(a7), d0
005e18: 4e4f         trap       #$f
005e1a: 00227600     ori.b      #$0, -(a2)
005e1e: 243c40590000 move.l     #$40590000, d2
005e24: 4e4f         trap       #$f
005e26: 00132601     ori.b      #$1, (a3)
005e2a: 2400         move.l     d0, d2
005e2c: 202f0048     move.l     $48(a7), d0
005e30: 4e4f         trap       #$f
005e32: 00204e4f     ori.b      #$4f, -(a0)
005e36: 0012342f     ori.b      #$2f, (a2)
005e3a: 004248c2     ori.w      #$48c2, d2
005e3e: 2e01         move.l     d1, d7
005e40: 2c00         move.l     d0, d6
005e42: 2002         move.l     d2, d0
005e44: 4e4f         trap       #$f
005e46: 00202607     ori.b      #$7, -(a0)
005e4a: 2406         move.l     d6, d2
005e4c: c540         exg.l      d2, d0
005e4e: c741         exg.l      d3, d1
005e50: 4e4f         trap       #$f
005e52: 00137600     ori.b      #$0, (a3)
005e56: 243c3fe00000 move.l     #$3fe00000, d2
005e5c: 4e4f         trap       #$f
005e5e: 000e         .dc.w      $000e
005e60: 4e4f         trap       #$f
005e62: 00242f40     ori.b      #$40, -(a4)
005e66: 0004202f     ori.b      #$2f, d4
005e6a: 0010d0af     ori.b      #$af, (a0)
005e6e: 00046c06     ori.b      #$6, d4
005e72: 0680000000ff addi.l     #$ff, d0
005e78: e080         asr.l      #$8, d0
005e7a: 222e8980     move.l     -$7680(a6), d1
005e7e: 92ae8984     sub.l      -$767c(a6), d1
005e82: 9280         sub.l      d0, d1
005e84: 2e81         move.l     d1, (a7)
005e86: 4a97         tst.l      (a7)
005e88: 6c04         bge.b      $5e8e
005e8a: 7000         moveq      #$0, d0
005e8c: 6002         bra.b      $5e90
005e8e: 2017         move.l     (a7), d0
005e90: 206f00c2     movea.l    $c2(a7), a0
005e94: 2080         move.l     d0, (a0)
005e96: 42af0020     clr.l      $20(a7)
005e9a: 4fef0010     lea.l      $10(a7), a7
005e9e: 6006         bra.b      $5ea6
005ea0: 70fe         moveq      #$fe, d0
005ea2: 2f400010     move.l     d0, $10(a7)
005ea6: 202e99f0     move.l     -$6610(a6), d0
005eaa: 610023be     bsr.w      $826a
005eae: 202f0010     move.l     $10(a7), d0
005eb2: 4fef008a     lea.l      $8a(a7), a7
005eb6: 4ced01dcffe8 movem.l    -$18(a5), d2-d4/d6-d7/a0
005ebc: 4e5d         unlk       a5
005ebe: 4e75         rts        
005ec0: 4e550000     link.w     a5, #$0
005ec4: 48e7c080     movem.l    d0-d1/a0, -(a7)
005ec8: 4fefffc0     lea.l      -$40(a7), a7
005ecc: 42af0004     clr.l      $4(a7)
005ed0: 4297         clr.l      (a7)
005ed2: 206f0054     movea.l    $54(a7), a0
005ed6: 4290         clr.l      (a0)
005ed8: 206f0058     movea.l    $58(a7), a0
005edc: 4290         clr.l      (a0)
005ede: 6100032a     bsr.w      $620a
005ee2: 4a00         tst.b      d0
005ee4: 670000da     beq.w      $5fc0
005ee8: 61000344     bsr.w      $622e
005eec: 4a00         tst.b      d0
005eee: 670000d0     beq.w      $5fc0
005ef2: 41ef0038     lea.l      $38(a7), a0
005ef6: 2208         move.l     a0, d1
005ef8: 202f0040     move.l     $40(a7), d0
005efc: 6100fc38     bsr.w      $5b36
005f00: 4a80         tst.l      d0
005f02: 6d0000bc     blt.w      $5fc0
005f06: 202e99f0     move.l     -$6610(a6), d0
005f0a: 6100232e     bsr.w      $823a
005f0e: 202f0044     move.l     $44(a7), d0
005f12: b0ae898c     cmp.l      -$7674(a6), d0
005f16: 6f50         ble.b      $5f68
005f18: 202f0044     move.l     $44(a7), d0
005f1c: b0ae8974     cmp.l      -$768c(a6), d0
005f20: 6e46         bgt.b      $5f68
005f22: 2f6e898c003c move.l     -$7674(a6), $3c(a7)
005f28: 605c         bra.b      $5f86
005f2a: 42a7         clr.l      -(a7)
005f2c: 202f0040     move.l     $40(a7), d0
005f30: 4c7c0801000003e8 divs.l     #$3e8, d0
005f38: 7028         moveq      #$28, d0
005f3a: 4c001001     mulu.l     d0, d1
005f3e: 202e99e4     move.l     -$661c(a6), d0
005f42: 61002ae6     bsr.w      $8a2a
005f46: 588f         addq.l     #$4, a7
005f48: 72ff         moveq      #$ff, d1
005f4a: b280         cmp.l      d0, d1
005f4c: 671a         beq.b      $5f68
005f4e: 48780028     pea.l      $28.w
005f52: 41ef0010     lea.l      $10(a7), a0
005f56: 2208         move.l     a0, d1
005f58: 202e99e4     move.l     -$661c(a6), d0
005f5c: 61002abc     bsr.w      $8a1a
005f60: 588f         addq.l     #$4, a7
005f62: 7228         moveq      #$28, d1
005f64: b280         cmp.l      d0, d1
005f66: 670a         beq.b      $5f72
005f68: 202e99f0     move.l     -$6610(a6), d0
005f6c: 610022fc     bsr.w      $826a
005f70: 604e         bra.b      $5fc0
005f72: 302f002a     move.w     $2a(a7), d0
005f76: 48c0         ext.l      d0
005f78: d1af0004     add.l      d0, $4(a7)
005f7c: 202f0030     move.l     $30(a7), d0
005f80: d197         add.l      d0, (a7)
005f82: 52af003c     addq.l     #$1, $3c(a7)
005f86: 202f0044     move.l     $44(a7), d0
005f8a: 5380         subq.l     #$1, d0
005f8c: b0af003c     cmp.l      $3c(a7), d0
005f90: 6e98         bgt.b      $5f2a
005f92: 202e99f0     move.l     -$6610(a6), d0
005f96: 610022d2     bsr.w      $826a
005f9a: 42a7         clr.l      -(a7)
005f9c: 202f003c     move.l     $3c(a7), d0
005fa0: 5380         subq.l     #$1, d0
005fa2: 4c7c0801000003e8 divs.l     #$3e8, d0
005faa: 7028         moveq      #$28, d0
005fac: 4c001001     mulu.l     d0, d1
005fb0: 202e99e4     move.l     -$661c(a6), d0
005fb4: 61002a74     bsr.w      $8a2a
005fb8: 588f         addq.l     #$4, a7
005fba: 72ff         moveq      #$ff, d1
005fbc: b280         cmp.l      d0, d1
005fbe: 6604         bne.b      $5fc4
005fc0: 7000         moveq      #$0, d0
005fc2: 605a         bra.b      $601e
005fc4: 202e8978     move.l     -$7688(a6), d0
005fc8: 90ae897c     sub.l      -$7684(a6), d0
005fcc: 90af0004     sub.l      $4(a7), d0
005fd0: 7264         moveq      #$64, d1
005fd2: 4c010000     mulu.l     d1, d0
005fd6: 2f400008     move.l     d0, $8(a7)
005fda: 4aaf0008     tst.l      $8(a7)
005fde: 6c04         bge.b      $5fe4
005fe0: 7000         moveq      #$0, d0
005fe2: 6004         bra.b      $5fe8
005fe4: 202f0008     move.l     $8(a7), d0
005fe8: 206f0054     movea.l    $54(a7), a0
005fec: 2080         move.l     d0, (a0)
005fee: 2017         move.l     (a7), d0
005ff0: 6c06         bge.b      $5ff8
005ff2: 0680000000ff addi.l     #$ff, d0
005ff8: e080         asr.l      #$8, d0
005ffa: 222e8980     move.l     -$7680(a6), d1
005ffe: 92ae8984     sub.l      -$767c(a6), d1
006002: 9280         sub.l      d0, d1
006004: 2f410034     move.l     d1, $34(a7)
006008: 4aaf0034     tst.l      $34(a7)
00600c: 6c04         bge.b      $6012
00600e: 7000         moveq      #$0, d0
006010: 6004         bra.b      $6016
006012: 202f0034     move.l     $34(a7), d0
006016: 206f0058     movea.l    $58(a7), a0
00601a: 2080         move.l     d0, (a0)
00601c: 7001         moveq      #$1, d0
00601e: 4fef0040     lea.l      $40(a7), a7
006022: 4ced0100fffc movem.l    -$4(a5), a0
006028: 4e5d         unlk       a5
00602a: 4e75         rts        
00602c: 4e550000     link.w     a5, #$0
006030: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
006034: 4fefffe4     lea.l      -$1c(a7), a7
006038: 42af0008     clr.l      $8(a7)
00603c: 206f001c     movea.l    $1c(a7), a0
006040: 4a680020     tst.w      $20(a0)
006044: 6f0000ae     ble.w      $60f4
006048: 42a7         clr.l      -(a7)
00604a: 206f0020     movea.l    $20(a7), a0
00604e: 30280022     move.w     $22(a0), d0
006052: 48c0         ext.l      d0
006054: 81fc06d6     divs.w     #$6d6, d0
006058: 4840         swap       d0
00605a: 48c0         ext.l      d0
00605c: e788         lsl.l      #$3, d0
00605e: 2200         move.l     d0, d1
006060: 202e99e8     move.l     -$6618(a6), d0
006064: 610029c4     bsr.w      $8a2a
006068: 588f         addq.l     #$4, a7
00606a: 72ff         moveq      #$ff, d1
00606c: b280         cmp.l      d0, d1
00606e: 6700006e     beq.w      $60de
006072: 206f001c     movea.l    $1c(a7), a0
006076: 30280020     move.w     $20(a0), d0
00607a: 48c0         ext.l      d0
00607c: e788         lsl.l      #$3, d0
00607e: 610029fa     bsr.w      $8a7a
006082: 2f400004     move.l     d0, $4(a7)
006086: 6756         beq.b      $60de
006088: 7800         moveq      #$0, d4
00608a: 605a         bra.b      $60e6
00608c: 206f001c     movea.l    $1c(a7), a0
006090: 30280022     move.w     $22(a0), d0
006094: 48c0         ext.l      d0
006096: d084         add.l      d4, d0
006098: 4c7c0801000006d6 divs.l     #$6d6, d0
0060a0: 4a81         tst.l      d1
0060a2: 6614         bne.b      $60b8
0060a4: 42a7         clr.l      -(a7)
0060a6: 7200         moveq      #$0, d1
0060a8: 202e99e8     move.l     -$6618(a6), d0
0060ac: 6100297c     bsr.w      $8a2a
0060b0: 588f         addq.l     #$4, a7
0060b2: 72ff         moveq      #$ff, d1
0060b4: b280         cmp.l      d0, d1
0060b6: 671e         beq.b      $60d6
0060b8: 48780008     pea.l      $8.w
0060bc: 2004         move.l     d4, d0
0060be: e788         lsl.l      #$3, d0
0060c0: d0af0008     add.l      $8(a7), d0
0060c4: 2200         move.l     d0, d1
0060c6: 202e99e8     move.l     -$6618(a6), d0
0060ca: 6100294e     bsr.w      $8a1a
0060ce: 588f         addq.l     #$4, a7
0060d0: 7208         moveq      #$8, d1
0060d2: b280         cmp.l      d0, d1
0060d4: 670e         beq.b      $60e4
0060d6: 202f0004     move.l     $4(a7), d0
0060da: 610029aa     bsr.w      $8a86
0060de: 7000         moveq      #$0, d0
0060e0: 60000102     bra.w      $61e4
0060e4: 5284         addq.l     #$1, d4
0060e6: 206f001c     movea.l    $1c(a7), a0
0060ea: 30280020     move.w     $20(a0), d0
0060ee: 48c0         ext.l      d0
0060f0: b084         cmp.l      d4, d0
0060f2: 6e98         bgt.b      $608c
0060f4: 206f001c     movea.l    $1c(a7), a0
0060f8: 7001         moveq      #$1, d0
0060fa: c0280008     and.b      $8(a0), d0
0060fe: 0c000001     cmpi.b     #$1, d0
006102: 6614         bne.b      $6118
006104: 206f001c     movea.l    $1c(a7), a0
006108: 30280020     move.w     $20(a0), d0
00610c: 48c0         ext.l      d0
00610e: 5480         addq.l     #$2, d0
006110: 90af0034     sub.l      $34(a7), d0
006114: 2e80         move.l     d0, (a7)
006116: 6004         bra.b      $611c
006118: 2eaf0034     move.l     $34(a7), (a7)
00611c: 7801         moveq      #$1, d4
00611e: 600000a8     bra.w      $61c8
006122: 7001         moveq      #$1, d0
006124: b084         cmp.l      d4, d0
006126: 6634         bne.b      $615c
006128: 206f001c     movea.l    $1c(a7), a0
00612c: 7001         moveq      #$1, d0
00612e: c0280008     and.b      $8(a0), d0
006132: 0c000001     cmpi.b     #$1, d0
006136: 6612         bne.b      $614a
006138: 206f001c     movea.l    $1c(a7), a0
00613c: 2f6800120014 move.l     $12(a0), $14(a7)
006142: 2f6800160018 move.l     $16(a0), $18(a7)
006148: 601e         bra.b      $6168
00614a: 206f001c     movea.l    $1c(a7), a0
00614e: 2f68000a0014 move.l     $a(a0), $14(a7)
006154: 2f68000e0018 move.l     $e(a0), $18(a7)
00615a: 600c         bra.b      $6168
00615c: 2f6f000c0014 move.l     $c(a7), $14(a7)
006162: 2f6f00100018 move.l     $10(a7), $18(a7)
006168: b897         cmp.l      (a7), d4
00616a: 6606         bne.b      $6172
00616c: 222f0020     move.l     $20(a7), d1
006170: 6044         bra.b      $61b6
006172: 206f001c     movea.l    $1c(a7), a0
006176: 7001         moveq      #$1, d0
006178: c0280008     and.b      $8(a0), d0
00617c: 0c000001     cmpi.b     #$1, d0
006180: 661c         bne.b      $619e
006182: 2004         move.l     d4, d0
006184: e788         lsl.l      #$3, d0
006186: 206f001c     movea.l    $1c(a7), a0
00618a: 32280020     move.w     $20(a0), d1
00618e: 48c1         ext.l      d1
006190: 206f0004     movea.l    $4(a7), a0
006194: 4480         neg.l      d0
006196: e789         lsl.l      #$3, d1
006198: d1c1         adda.l     d1, a0
00619a: d1c0         adda.l     d0, a0
00619c: 6008         bra.b      $61a6
00619e: 206f0004     movea.l    $4(a7), a0
0061a2: 41f04ef8     lea.l      -$8(a0, d4.l), a0
0061a6: 2f50000c     move.l     (a0), $c(a7)
0061aa: 2f6800040010 move.l     $4(a0), $10(a7)
0061b0: 41ef000c     lea.l      $c(a7), a0
0061b4: 2208         move.l     a0, d1
0061b6: 41ef0014     lea.l      $14(a7), a0
0061ba: 2008         move.l     a0, d0
0061bc: 206e8ff0     movea.l    -$7010(a6), a0
0061c0: 4e90         jsr        (a0)
0061c2: d1af0008     add.l      d0, $8(a7)
0061c6: 5284         addq.l     #$1, d4
0061c8: b897         cmp.l      (a7), d4
0061ca: 6f00ff56     ble.w      $6122
0061ce: 206f001c     movea.l    $1c(a7), a0
0061d2: 4a680020     tst.w      $20(a0)
0061d6: 6f08         ble.b      $61e0
0061d8: 202f0004     move.l     $4(a7), d0
0061dc: 610028a8     bsr.w      $8a86
0061e0: 202f0008     move.l     $8(a7), d0
0061e4: 4fef001c     lea.l      $1c(a7), a7
0061e8: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0061ee: 4e5d         unlk       a5
0061f0: 4e75         rts        
0061f2: 2f63302f     move.l     -(a3), $302f(a7)
0061f6: 5f313239     subq.b     #$7, $39(a1, d3.w)
0061fa: 5f2f7061     subq.b     #$7, $7061(a7)
0061fe: 636b         bls.b      $626b
006200: 2f706f736974696f6e004e550000 move.l     ([$6974696f, a0], $6e004e55), $0(a7)
00620e: 48e78000     movem.l    d0, -(a7)
006212: 4aae99e0     tst.l      -$6620(a6)
006216: 6d10         blt.b      $6228
006218: 4aae99e4     tst.l      -$661c(a6)
00621c: 6d0a         blt.b      $6228
00621e: 4aae99e8     tst.l      -$6618(a6)
006222: 6d04         blt.b      $6228
006224: 7001         moveq      #$1, d0
006226: 6002         bra.b      $622a
006228: 7000         moveq      #$0, d0
00622a: 4e5d         unlk       a5
00622c: 4e75         rts        
00622e: 4e550000     link.w     a5, #$0
006232: 48e7c080     movem.l    d0-d1/a0, -(a7)
006236: 4878004a     pea.l      $4a.w
00623a: 41ee8966     lea.l      -$769a(a6), a0
00623e: 2208         move.l     a0, d1
006240: 202e99e0     move.l     -$6620(a6), d0
006244: 610027d4     bsr.w      $8a1a
006248: 588f         addq.l     #$4, a7
00624a: 724a         moveq      #$4a, d1
00624c: b280         cmp.l      d0, d1
00624e: 660c         bne.b      $625c
006250: 7001         moveq      #$1, d0
006252: b0ae8966     cmp.l      -$769a(a6), d0
006256: 6704         beq.b      $625c
006258: 7001         moveq      #$1, d0
00625a: 6002         bra.b      $625e
00625c: 7000         moveq      #$0, d0
00625e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
006264: 4e5d         unlk       a5
006266: 4e75         rts        
006268: 4e550000     link.w     a5, #$0
00626c: 48e78000     movem.l    d0, -(a7)
006270: 4aae8966     tst.l      -$769a(a6)
006274: 6604         bne.b      $627a
006276: 7001         moveq      #$1, d0
006278: 6002         bra.b      $627c
00627a: 7000         moveq      #$0, d0
00627c: 4e5d         unlk       a5
00627e: 4e75         rts        
006280: 4e550000     link.w     a5, #$0
006284: 48e78000     movem.l    d0, -(a7)
006288: 202e898c     move.l     -$7674(a6), d0
00628c: 5280         addq.l     #$1, d0
00628e: b0ae99ec     cmp.l      -$6614(a6), d0
006292: 6e04         bgt.b      $6298
006294: 7001         moveq      #$1, d0
006296: 6002         bra.b      $629a
006298: 7000         moveq      #$0, d0
00629a: 4e5d         unlk       a5
00629c: 4e75         rts        
00629e: 4e550000     link.w     a5, #$0
0062a2: 48e78000     movem.l    d0, -(a7)
0062a6: 202e99ec     move.l     -$6614(a6), d0
0062aa: b0ae8974     cmp.l      -$768c(a6), d0
0062ae: 6e04         bgt.b      $62b4
0062b0: 7001         moveq      #$1, d0
0062b2: 6002         bra.b      $62b6
0062b4: 7000         moveq      #$0, d0
0062b6: 4e5d         unlk       a5
0062b8: 4e75         rts        
0062ba: 4e550000     link.w     a5, #$0
0062be: 48e7c000     movem.l    d0-d1, -(a7)
0062c2: 6026         bra.b      $62ea
0062c4: 7201         moveq      #$1, d1
0062c6: 2017         move.l     (a7), d0
0062c8: 61000e84     bsr.w      $714e
0062cc: 603a         bra.b      $6308
0062ce: 48780003     pea.l      $3.w
0062d2: 7202         moveq      #$2, d1
0062d4: 202f0004     move.l     $4(a7), d0
0062d8: 61001018     bsr.w      $72f2
0062dc: 588f         addq.l     #$4, a7
0062de: 6028         bra.b      $6308
0062e0: 7203         moveq      #$3, d1
0062e2: 2017         move.l     (a7), d0
0062e4: 61000e82     bsr.w      $7168
0062e8: 601e         bra.b      $6308
0062ea: 7000         moveq      #$0, d0
0062ec: 102f0007     move.b     $7(a7), d0
0062f0: 0c4000ff     cmpi.w     #$ff, d0
0062f4: 6212         bhi.b      $6308
0062f6: 0c000001     cmpi.b     #$1, d0
0062fa: 67c8         beq.b      $62c4
0062fc: 0c000002     cmpi.b     #$2, d0
006300: 67cc         beq.b      $62ce
006302: 0c000003     cmpi.b     #$3, d0
006306: 67d8         beq.b      $62e0
006308: 4e5d         unlk       a5
00630a: 4e75         rts        
00630c: 4e550000     link.w     a5, #$0
006310: 48e7c000     movem.l    d0-d1, -(a7)
006314: 598f         subq.l     #$4, a7
006316: 7000         moveq      #$0, d0
006318: 102f000b     move.b     $b(a7), d0
00631c: 2200         move.l     d0, d1
00631e: 202f0004     move.l     $4(a7), d0
006322: 6100ff96     bsr.w      $62ba
006326: 2e80         move.l     d0, (a7)
006328: 70ff         moveq      #$ff, d0
00632a: b097         cmp.l      (a7), d0
00632c: 6616         bne.b      $6344
00632e: 2f2f0014     move.l     $14(a7), -(a7)
006332: 7204         moveq      #$4, d1
006334: 203c00000099 move.l     #$99, d0
00633a: 6100e140     bsr.w      $447c
00633e: 588f         addq.l     #$4, a7
006340: 6100e160     bsr.w      $44a2
006344: 2017         move.l     (a7), d0
006346: 588f         addq.l     #$4, a7
006348: 4e5d         unlk       a5
00634a: 4e75         rts        
00634c: 4e550000     link.w     a5, #$0
006350: 48e7c080     movem.l    d0-d1/a0, -(a7)
006354: 4feffde6     lea.l      -$21a(a7), a7
006358: 3ebc00c8     move.w     #$c8, (a7)
00635c: 206f021a     movea.l    $21a(a7), a0
006360: 2f500002     move.l     (a0), $2(a7)
006364: 2f6800040006 move.l     $4(a0), $6(a7)
00636a: 1f6f0221000a move.b     $221(a7), $a(a7)
006370: 41d7         lea.l      (a7), a0
006372: 2008         move.l     a0, d0
006374: 61000840     bsr.w      $6bb6
006378: 4fef021a     lea.l      $21a(a7), a7
00637c: 4ced0100fffc movem.l    -$4(a5), a0
006382: 4e5d         unlk       a5
006384: 4e75         rts        
006386: 4e550000     link.w     a5, #$0
00638a: 48e7c000     movem.l    d0-d1, -(a7)
00638e: 610006f6     bsr.w      $6a86
006392: 4a00         tst.b      d0
006394: 6604         bne.b      $639a
006396: 7000         moveq      #$0, d0
006398: 6008         bra.b      $63a2
00639a: 724c         moveq      #$4c, d1
00639c: 2017         move.l     (a7), d0
00639e: 6100079c     bsr.w      $6b3c
0063a2: 4ced0002fffc movem.l    -$4(a5), d1
0063a8: 4e5d         unlk       a5
0063aa: 4e75         rts        
0063ac: 4e550000     link.w     a5, #$0
0063b0: 48e7c000     movem.l    d0-d1, -(a7)
0063b4: 7202         moveq      #$2, d1
0063b6: 2017         move.l     (a7), d0
0063b8: 61000782     bsr.w      $6b3c
0063bc: 4ced0002fffc movem.l    -$4(a5), d1
0063c2: 4e5d         unlk       a5
0063c4: 4e75         rts        
0063c6: 4e550000     link.w     a5, #$0
0063ca: 48e7e8b0     movem.l    d0-d2/d4/a0/a2-a3, -(a7)
0063ce: 2440         movea.l    d0, a2
0063d0: 2641         movea.l    d1, a3
0063d2: 7276         moveq      #$76, d1
0063d4: 200a         move.l     a2, d0
0063d6: 61000764     bsr.w      $6b3c
0063da: 4a00         tst.b      d0
0063dc: 670000be     beq.w      $649c
0063e0: 4a2a0074     tst.b      $74(a2)
0063e4: 6604         bne.b      $63ea
0063e6: 7008         moveq      #$8, d0
0063e8: 6008         bra.b      $63f2
0063ea: 7000         moveq      #$0, d0
0063ec: 102a0074     move.b     $74(a2), d0
0063f0: e788         lsl.l      #$3, d0
0063f2: 61002686     bsr.w      $8a7a
0063f6: 2680         move.l     d0, (a3)
0063f8: 4a93         tst.l      (a3)
0063fa: 660e         bne.b      $640a
0063fc: 203c0000025a move.l     #$25a, d0
006402: 61000660     bsr.w      $6a64
006406: 60000094     bra.w      $649c
00640a: 4a2a0075     tst.b      $75(a2)
00640e: 6608         bne.b      $6418
006410: 203c000000e5 move.l     #$e5, d0
006416: 600e         bra.b      $6426
006418: 7000         moveq      #$0, d0
00641a: 102a0075     move.b     $75(a2), d0
00641e: 4c3c0000000000e5 mulu.l     #$e5, d0
006426: 61002652     bsr.w      $8a7a
00642a: 206f0024     movea.l    $24(a7), a0
00642e: 2080         move.l     d0, (a0)
006430: 206f0024     movea.l    $24(a7), a0
006434: 4a90         tst.l      (a0)
006436: 660e         bne.b      $6446
006438: 203c0000025a move.l     #$25a, d0
00643e: 61000624     bsr.w      $6a64
006442: 2013         move.l     (a3), d0
006444: 6052         bra.b      $6498
006446: 7800         moveq      #$0, d4
006448: 6014         bra.b      $645e
00644a: 7208         moveq      #$8, d1
00644c: 2013         move.l     (a3), d0
00644e: 2404         move.l     d4, d2
006450: e78a         lsl.l      #$3, d2
006452: d082         add.l      d2, d0
006454: 610006e6     bsr.w      $6b3c
006458: 4a00         tst.b      d0
00645a: 6730         beq.b      $648c
00645c: 5284         addq.l     #$1, d4
00645e: 7000         moveq      #$0, d0
006460: 102a0074     move.b     $74(a2), d0
006464: b084         cmp.l      d4, d0
006466: 6ee2         bgt.b      $644a
006468: 7800         moveq      #$0, d4
00646a: 6036         bra.b      $64a2
00646c: 223c000000e5 move.l     #$e5, d1
006472: 206f0024     movea.l    $24(a7), a0
006476: 2010         move.l     (a0), d0
006478: 243c000000e5 move.l     #$e5, d2
00647e: 4c042002     mulu.l     d4, d2
006482: d082         add.l      d2, d0
006484: 610006b6     bsr.w      $6b3c
006488: 4a00         tst.b      d0
00648a: 6614         bne.b      $64a0
00648c: 2013         move.l     (a3), d0
00648e: 610025f6     bsr.w      $8a86
006492: 206f0024     movea.l    $24(a7), a0
006496: 2010         move.l     (a0), d0
006498: 610025ec     bsr.w      $8a86
00649c: 7000         moveq      #$0, d0
00649e: 6018         bra.b      $64b8
0064a0: 5284         addq.l     #$1, d4
0064a2: 7000         moveq      #$0, d0
0064a4: 102a0075     move.b     $75(a2), d0
0064a8: b084         cmp.l      d4, d0
0064aa: 6ec0         bgt.b      $646c
0064ac: 203c00000259 move.l     #$259, d0
0064b2: 610005b0     bsr.w      $6a64
0064b6: 7001         moveq      #$1, d0
0064b8: 4ced0d14ffec movem.l    -$14(a5), d2/d4/a0/a2-a3
0064be: 4e5d         unlk       a5
0064c0: 4e75         rts        
0064c2: 4e550000     link.w     a5, #$0
0064c6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0064ca: 4feffde6     lea.l      -$21a(a7), a7
0064ce: 3ebc00ca     move.w     #$ca, (a7)
0064d2: 222f021a     move.l     $21a(a7), d1
0064d6: 41ef0002     lea.l      $2(a7), a0
0064da: 2008         move.l     a0, d0
0064dc: 610026e8     bsr.w      $8bc6
0064e0: 41d7         lea.l      (a7), a0
0064e2: 2008         move.l     a0, d0
0064e4: 610006d0     bsr.w      $6bb6
0064e8: 4fef021a     lea.l      $21a(a7), a7
0064ec: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0064f2: 4e5d         unlk       a5
0064f4: 4e75         rts        
0064f6: 4e550000     link.w     a5, #$0
0064fa: 48e7c000     movem.l    d0-d1, -(a7)
0064fe: 61000586     bsr.w      $6a86
006502: 4a00         tst.b      d0
006504: 6604         bne.b      $650a
006506: 7000         moveq      #$0, d0
006508: 6008         bra.b      $6512
00650a: 7212         moveq      #$12, d1
00650c: 2017         move.l     (a7), d0
00650e: 6100062c     bsr.w      $6b3c
006512: 4ced0002fffc movem.l    -$4(a5), d1
006518: 4e5d         unlk       a5
00651a: 4e75         rts        
00651c: 4e550000     link.w     a5, #$0
006520: 48e78080     movem.l    d0/a0, -(a7)
006524: 4feffde6     lea.l      -$21a(a7), a7
006528: 3ebc00c9     move.w     #$c9, (a7)
00652c: 206f021a     movea.l    $21a(a7), a0
006530: 2f500002     move.l     (a0), $2(a7)
006534: 2f6800040006 move.l     $4(a0), $6(a7)
00653a: 41d7         lea.l      (a7), a0
00653c: 2008         move.l     a0, d0
00653e: 61000676     bsr.w      $6bb6
006542: 4fef021a     lea.l      $21a(a7), a7
006546: 4ced0100fffc movem.l    -$4(a5), a0
00654c: 4e5d         unlk       a5
00654e: 4e75         rts        
006550: 4e550000     link.w     a5, #$0
006554: 48e7c000     movem.l    d0-d1, -(a7)
006558: 6100052c     bsr.w      $6a86
00655c: 4a00         tst.b      d0
00655e: 6604         bne.b      $6564
006560: 7000         moveq      #$0, d0
006562: 600c         bra.b      $6570
006564: 223c0000017c move.l     #$17c, d1
00656a: 2017         move.l     (a7), d0
00656c: 610005ce     bsr.w      $6b3c
006570: 4ced0002fffc movem.l    -$4(a5), d1
006576: 4e5d         unlk       a5
006578: 4e75         rts        
00657a: 4e550000     link.w     a5, #$0
00657e: 48e78080     movem.l    d0/a0, -(a7)
006582: 4feffde6     lea.l      -$21a(a7), a7
006586: 3ebc00db     move.w     #$db, (a7)
00658a: 206f021a     movea.l    $21a(a7), a0
00658e: 2f500002     move.l     (a0), $2(a7)
006592: 2f6800040006 move.l     $4(a0), $6(a7)
006598: 41d7         lea.l      (a7), a0
00659a: 2008         move.l     a0, d0
00659c: 61000618     bsr.w      $6bb6
0065a0: 4fef021a     lea.l      $21a(a7), a7
0065a4: 4ced0100fffc movem.l    -$4(a5), a0
0065aa: 4e5d         unlk       a5
0065ac: 4e75         rts        
0065ae: 4e550000     link.w     a5, #$0
0065b2: 48e7e080     movem.l    d0-d2/a0, -(a7)
0065b6: 598f         subq.l     #$4, a7
0065b8: 610004cc     bsr.w      $6a86
0065bc: 4a00         tst.b      d0
0065be: 670000f4     beq.w      $66b4
0065c2: 7276         moveq      #$76, d1
0065c4: 202f0004     move.l     $4(a7), d0
0065c8: 61000572     bsr.w      $6b3c
0065cc: 4a00         tst.b      d0
0065ce: 670000e4     beq.w      $66b4
0065d2: 206f0004     movea.l    $4(a7), a0
0065d6: 4a280074     tst.b      $74(a0)
0065da: 6604         bne.b      $65e0
0065dc: 7008         moveq      #$8, d0
0065de: 600c         bra.b      $65ec
0065e0: 206f0004     movea.l    $4(a7), a0
0065e4: 7000         moveq      #$0, d0
0065e6: 10280074     move.b     $74(a0), d0
0065ea: e788         lsl.l      #$3, d0
0065ec: 6100248c     bsr.w      $8a7a
0065f0: 206f0008     movea.l    $8(a7), a0
0065f4: 2080         move.l     d0, (a0)
0065f6: 206f0008     movea.l    $8(a7), a0
0065fa: 4a90         tst.l      (a0)
0065fc: 660e         bne.b      $660c
0065fe: 203c0000025a move.l     #$25a, d0
006604: 6100045e     bsr.w      $6a64
006608: 600000aa     bra.w      $66b4
00660c: 206f0004     movea.l    $4(a7), a0
006610: 4a280075     tst.b      $75(a0)
006614: 6608         bne.b      $661e
006616: 203c000000e5 move.l     #$e5, d0
00661c: 6012         bra.b      $6630
00661e: 206f0004     movea.l    $4(a7), a0
006622: 7000         moveq      #$0, d0
006624: 10280075     move.b     $75(a0), d0
006628: 4c3c0000000000e5 mulu.l     #$e5, d0
006630: 61002448     bsr.w      $8a7a
006634: 206f001c     movea.l    $1c(a7), a0
006638: 2080         move.l     d0, (a0)
00663a: 206f001c     movea.l    $1c(a7), a0
00663e: 4a90         tst.l      (a0)
006640: 6610         bne.b      $6652
006642: 203c0000025a move.l     #$25a, d0
006648: 6100041a     bsr.w      $6a64
00664c: 206f0008     movea.l    $8(a7), a0
006650: 605c         bra.b      $66ae
006652: 4297         clr.l      (a7)
006654: 6018         bra.b      $666e
006656: 7208         moveq      #$8, d1
006658: 206f0008     movea.l    $8(a7), a0
00665c: 2010         move.l     (a0), d0
00665e: 2417         move.l     (a7), d2
006660: e78a         lsl.l      #$3, d2
006662: d082         add.l      d2, d0
006664: 610004d6     bsr.w      $6b3c
006668: 4a00         tst.b      d0
00666a: 6734         beq.b      $66a0
00666c: 5297         addq.l     #$1, (a7)
00666e: 206f0004     movea.l    $4(a7), a0
006672: 7000         moveq      #$0, d0
006674: 10280074     move.b     $74(a0), d0
006678: b097         cmp.l      (a7), d0
00667a: 6eda         bgt.b      $6656
00667c: 4297         clr.l      (a7)
00667e: 603a         bra.b      $66ba
006680: 223c000000e5 move.l     #$e5, d1
006686: 206f001c     movea.l    $1c(a7), a0
00668a: 2010         move.l     (a0), d0
00668c: 243c000000e5 move.l     #$e5, d2
006692: 4c172002     mulu.l     (a7), d2
006696: d082         add.l      d2, d0
006698: 610004a2     bsr.w      $6b3c
00669c: 4a00         tst.b      d0
00669e: 6618         bne.b      $66b8
0066a0: 206f0008     movea.l    $8(a7), a0
0066a4: 2010         move.l     (a0), d0
0066a6: 610023de     bsr.w      $8a86
0066aa: 206f001c     movea.l    $1c(a7), a0
0066ae: 2010         move.l     (a0), d0
0066b0: 610023d4     bsr.w      $8a86
0066b4: 7000         moveq      #$0, d0
0066b6: 601c         bra.b      $66d4
0066b8: 5297         addq.l     #$1, (a7)
0066ba: 206f0004     movea.l    $4(a7), a0
0066be: 7000         moveq      #$0, d0
0066c0: 10280075     move.b     $75(a0), d0
0066c4: b097         cmp.l      (a7), d0
0066c6: 6eb8         bgt.b      $6680
0066c8: 203c00000259 move.l     #$259, d0
0066ce: 61000394     bsr.w      $6a64
0066d2: 7001         moveq      #$1, d0
0066d4: 588f         addq.l     #$4, a7
0066d6: 4ced0104fff8 movem.l    -$8(a5), d2/a0
0066dc: 4e5d         unlk       a5
0066de: 4e75         rts        
0066e0: 4e550000     link.w     a5, #$0
0066e4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0066e8: 4feffde6     lea.l      -$21a(a7), a7
0066ec: 3ebc00ce     move.w     #$ce, (a7)
0066f0: 222f021a     move.l     $21a(a7), d1
0066f4: 41ef0002     lea.l      $2(a7), a0
0066f8: 2008         move.l     a0, d0
0066fa: 610024ca     bsr.w      $8bc6
0066fe: 222f021e     move.l     $21e(a7), d1
006702: 41ef009a     lea.l      $9a(a7), a0
006706: 2008         move.l     a0, d0
006708: 610024bc     bsr.w      $8bc6
00670c: 222f022e     move.l     $22e(a7), d1
006710: 41ef004e     lea.l      $4e(a7), a0
006714: 2008         move.l     a0, d0
006716: 610024ae     bsr.w      $8bc6
00671a: 41d7         lea.l      (a7), a0
00671c: 2008         move.l     a0, d0
00671e: 61000496     bsr.w      $6bb6
006722: 4fef021a     lea.l      $21a(a7), a7
006726: 4ced0100fffc movem.l    -$4(a5), a0
00672c: 4e5d         unlk       a5
00672e: 4e75         rts        
006730: 4e550000     link.w     a5, #$0
006734: 48e78000     movem.l    d0, -(a7)
006738: 6100034c     bsr.w      $6a86
00673c: 4e5d         unlk       a5
00673e: 4e75         rts        
006740: 4e550000     link.w     a5, #$0
006744: 48e7c080     movem.l    d0-d1/a0, -(a7)
006748: 4feffde6     lea.l      -$21a(a7), a7
00674c: 3ebc00cf     move.w     #$cf, (a7)
006750: 222f021a     move.l     $21a(a7), d1
006754: 41ef0002     lea.l      $2(a7), a0
006758: 2008         move.l     a0, d0
00675a: 6100246a     bsr.w      $8bc6
00675e: 222f021e     move.l     $21e(a7), d1
006762: 41ef009a     lea.l      $9a(a7), a0
006766: 2008         move.l     a0, d0
006768: 6100245c     bsr.w      $8bc6
00676c: 222f022e     move.l     $22e(a7), d1
006770: 41ef004e     lea.l      $4e(a7), a0
006774: 2008         move.l     a0, d0
006776: 6100244e     bsr.w      $8bc6
00677a: 222f0232     move.l     $232(a7), d1
00677e: 41ef0132     lea.l      $132(a7), a0
006782: 2008         move.l     a0, d0
006784: 61002440     bsr.w      $8bc6
006788: 222f0236     move.l     $236(a7), d1
00678c: 41ef00e6     lea.l      $e6(a7), a0
006790: 2008         move.l     a0, d0
006792: 61002432     bsr.w      $8bc6
006796: 41d7         lea.l      (a7), a0
006798: 2008         move.l     a0, d0
00679a: 6100041a     bsr.w      $6bb6
00679e: 4fef021a     lea.l      $21a(a7), a7
0067a2: 4ced0100fffc movem.l    -$4(a5), a0
0067a8: 4e5d         unlk       a5
0067aa: 4e75         rts        
0067ac: 4e550000     link.w     a5, #$0
0067b0: 48e78000     movem.l    d0, -(a7)
0067b4: 610002d0     bsr.w      $6a86
0067b8: 4e5d         unlk       a5
0067ba: 4e75         rts        
0067bc: 4e550000     link.w     a5, #$0
0067c0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0067c4: 4feffde6     lea.l      -$21a(a7), a7
0067c8: 3ebc00d0     move.w     #$d0, (a7)
0067cc: 222f021a     move.l     $21a(a7), d1
0067d0: 41ef0002     lea.l      $2(a7), a0
0067d4: 2008         move.l     a0, d0
0067d6: 610023ee     bsr.w      $8bc6
0067da: 222f021e     move.l     $21e(a7), d1
0067de: 41ef009a     lea.l      $9a(a7), a0
0067e2: 2008         move.l     a0, d0
0067e4: 610023e0     bsr.w      $8bc6
0067e8: 222f022e     move.l     $22e(a7), d1
0067ec: 41ef004e     lea.l      $4e(a7), a0
0067f0: 2008         move.l     a0, d0
0067f2: 610023d2     bsr.w      $8bc6
0067f6: 222f0232     move.l     $232(a7), d1
0067fa: 41ef0132     lea.l      $132(a7), a0
0067fe: 2008         move.l     a0, d0
006800: 610023c4     bsr.w      $8bc6
006804: 222f0236     move.l     $236(a7), d1
006808: 41ef00e6     lea.l      $e6(a7), a0
00680c: 2008         move.l     a0, d0
00680e: 610023b6     bsr.w      $8bc6
006812: 3f6f023c0218 move.w     $23c(a7), $218(a7)
006818: 41d7         lea.l      (a7), a0
00681a: 2008         move.l     a0, d0
00681c: 61000398     bsr.w      $6bb6
006820: 4fef021a     lea.l      $21a(a7), a7
006824: 4ced0100fffc movem.l    -$4(a5), a0
00682a: 4e5d         unlk       a5
00682c: 4e75         rts        
00682e: 4e550000     link.w     a5, #$0
006832: 48e78000     movem.l    d0, -(a7)
006836: 6100024e     bsr.w      $6a86
00683a: 4e5d         unlk       a5
00683c: 4e75         rts        
00683e: 4e550000     link.w     a5, #$0
006842: 48e7c080     movem.l    d0-d1/a0, -(a7)
006846: 4feffde6     lea.l      -$21a(a7), a7
00684a: 3ebc00d1     move.w     #$d1, (a7)
00684e: 222f021a     move.l     $21a(a7), d1
006852: 41ef0002     lea.l      $2(a7), a0
006856: 2008         move.l     a0, d0
006858: 6100236c     bsr.w      $8bc6
00685c: 222f021e     move.l     $21e(a7), d1
006860: 41ef009a     lea.l      $9a(a7), a0
006864: 2008         move.l     a0, d0
006866: 6100235e     bsr.w      $8bc6
00686a: 222f022e     move.l     $22e(a7), d1
00686e: 41ef004e     lea.l      $4e(a7), a0
006872: 2008         move.l     a0, d0
006874: 61002350     bsr.w      $8bc6
006878: 222f0232     move.l     $232(a7), d1
00687c: 41ef0132     lea.l      $132(a7), a0
006880: 2008         move.l     a0, d0
006882: 61002342     bsr.w      $8bc6
006886: 222f0236     move.l     $236(a7), d1
00688a: 41ef00e6     lea.l      $e6(a7), a0
00688e: 2008         move.l     a0, d0
006890: 61002334     bsr.w      $8bc6
006894: 222f023a     move.l     $23a(a7), d1
006898: 41ef017e     lea.l      $17e(a7), a0
00689c: 2008         move.l     a0, d0
00689e: 61002326     bsr.w      $8bc6
0068a2: 41d7         lea.l      (a7), a0
0068a4: 2008         move.l     a0, d0
0068a6: 6100030e     bsr.w      $6bb6
0068aa: 4fef021a     lea.l      $21a(a7), a7
0068ae: 4ced0100fffc movem.l    -$4(a5), a0
0068b4: 4e5d         unlk       a5
0068b6: 4e75         rts        
0068b8: 4e550000     link.w     a5, #$0
0068bc: 48e7c000     movem.l    d0-d1, -(a7)
0068c0: 610001c4     bsr.w      $6a86
0068c4: 4a00         tst.b      d0
0068c6: 6604         bne.b      $68cc
0068c8: 7000         moveq      #$0, d0
0068ca: 6008         bra.b      $68d4
0068cc: 7218         moveq      #$18, d1
0068ce: 2017         move.l     (a7), d0
0068d0: 6100026a     bsr.w      $6b3c
0068d4: 4ced0002fffc movem.l    -$4(a5), d1
0068da: 4e5d         unlk       a5
0068dc: 4e75         rts        
0068de: 4e550000     link.w     a5, #$0
0068e2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0068e6: 4feffde6     lea.l      -$21a(a7), a7
0068ea: 3ebc00d2     move.w     #$d2, (a7)
0068ee: 222f021a     move.l     $21a(a7), d1
0068f2: 41ef0002     lea.l      $2(a7), a0
0068f6: 2008         move.l     a0, d0
0068f8: 610022cc     bsr.w      $8bc6
0068fc: 222f021e     move.l     $21e(a7), d1
006900: 41ef01ca     lea.l      $1ca(a7), a0
006904: 2008         move.l     a0, d0
006906: 610022be     bsr.w      $8bc6
00690a: 1f6f02310216 move.b     $231(a7), $216(a7)
006910: 41d7         lea.l      (a7), a0
006912: 2008         move.l     a0, d0
006914: 610002a0     bsr.w      $6bb6
006918: 4fef021a     lea.l      $21a(a7), a7
00691c: 4ced0100fffc movem.l    -$4(a5), a0
006922: 4e5d         unlk       a5
006924: 4e75         rts        
006926: 4e550000     link.w     a5, #$0
00692a: 48e78000     movem.l    d0, -(a7)
00692e: 61000156     bsr.w      $6a86
006932: 4e5d         unlk       a5
006934: 4e75         rts        
006936: 4e550000     link.w     a5, #$0
00693a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00693e: 4feffde6     lea.l      -$21a(a7), a7
006942: 3ebc00d3     move.w     #$d3, (a7)
006946: 222f021a     move.l     $21a(a7), d1
00694a: 41ef0002     lea.l      $2(a7), a0
00694e: 2008         move.l     a0, d0
006950: 61002274     bsr.w      $8bc6
006954: 222f021e     move.l     $21e(a7), d1
006958: 41ef009a     lea.l      $9a(a7), a0
00695c: 2008         move.l     a0, d0
00695e: 61002266     bsr.w      $8bc6
006962: 222f022e     move.l     $22e(a7), d1
006966: 41ef004e     lea.l      $4e(a7), a0
00696a: 2008         move.l     a0, d0
00696c: 61002258     bsr.w      $8bc6
006970: 222f0232     move.l     $232(a7), d1
006974: 41ef0132     lea.l      $132(a7), a0
006978: 2008         move.l     a0, d0
00697a: 6100224a     bsr.w      $8bc6
00697e: 222f0236     move.l     $236(a7), d1
006982: 41ef00e6     lea.l      $e6(a7), a0
006986: 2008         move.l     a0, d0
006988: 6100223c     bsr.w      $8bc6
00698c: 222f023a     move.l     $23a(a7), d1
006990: 41ef01ca     lea.l      $1ca(a7), a0
006994: 2008         move.l     a0, d0
006996: 6100222e     bsr.w      $8bc6
00699a: 1f6f02410216 move.b     $241(a7), $216(a7)
0069a0: 41d7         lea.l      (a7), a0
0069a2: 2008         move.l     a0, d0
0069a4: 61000210     bsr.w      $6bb6
0069a8: 4fef021a     lea.l      $21a(a7), a7
0069ac: 4ced0100fffc movem.l    -$4(a5), a0
0069b2: 4e5d         unlk       a5
0069b4: 4e75         rts        
0069b6: 4e550000     link.w     a5, #$0
0069ba: 48e78000     movem.l    d0, -(a7)
0069be: 610000c6     bsr.w      $6a86
0069c2: 4e5d         unlk       a5
0069c4: 4e75         rts        
0069c6: 4e550000     link.w     a5, #$0
0069ca: 48e78080     movem.l    d0/a0, -(a7)
0069ce: 4feffde6     lea.l      -$21a(a7), a7
0069d2: 3ebc00d4     move.w     #$d4, (a7)
0069d6: 206f021a     movea.l    $21a(a7), a0
0069da: 2f500002     move.l     (a0), $2(a7)
0069de: 2f6800040006 move.l     $4(a0), $6(a7)
0069e4: 41d7         lea.l      (a7), a0
0069e6: 2008         move.l     a0, d0
0069e8: 610001cc     bsr.w      $6bb6
0069ec: 4fef021a     lea.l      $21a(a7), a7
0069f0: 4ced0100fffc movem.l    -$4(a5), a0
0069f6: 4e5d         unlk       a5
0069f8: 4e75         rts        
0069fa: 4e550000     link.w     a5, #$0
0069fe: 48e78000     movem.l    d0, -(a7)
006a02: 61000082     bsr.w      $6a86
006a06: 4e5d         unlk       a5
006a08: 4e75         rts        
006a0a: 4e550000     link.w     a5, #$0
006a0e: 48e78080     movem.l    d0/a0, -(a7)
006a12: 4feffde6     lea.l      -$21a(a7), a7
006a16: 3ebc00cd     move.w     #$cd, (a7)
006a1a: 206f021a     movea.l    $21a(a7), a0
006a1e: 2f500002     move.l     (a0), $2(a7)
006a22: 2f6800040006 move.l     $4(a0), $6(a7)
006a28: 41d7         lea.l      (a7), a0
006a2a: 2008         move.l     a0, d0
006a2c: 61000188     bsr.w      $6bb6
006a30: 4fef021a     lea.l      $21a(a7), a7
006a34: 4ced0100fffc movem.l    -$4(a5), a0
006a3a: 4e5d         unlk       a5
006a3c: 4e75         rts        
006a3e: 4e550000     link.w     a5, #$0
006a42: 48e7c000     movem.l    d0-d1, -(a7)
006a46: 6100003e     bsr.w      $6a86
006a4a: 4a00         tst.b      d0
006a4c: 6604         bne.b      $6a52
006a4e: 7000         moveq      #$0, d0
006a50: 6008         bra.b      $6a5a
006a52: 7214         moveq      #$14, d1
006a54: 2017         move.l     (a7), d0
006a56: 610000e4     bsr.w      $6b3c
006a5a: 4ced0002fffc movem.l    -$4(a5), d1
006a60: 4e5d         unlk       a5
006a62: 4e75         rts        
006a64: 4e550000     link.w     a5, #$0
006a68: 48e78000     movem.l    d0, -(a7)
006a6c: 3d6f000289b0 move.w     $2(a7), -$7650(a6)
006a72: 4e5d         unlk       a5
006a74: 4e75         rts        
006a76: 4e550000     link.w     a5, #$0
006a7a: 48e78000     movem.l    d0, -(a7)
006a7e: 302e89b0     move.w     -$7650(a6), d0
006a82: 4e5d         unlk       a5
006a84: 4e75         rts        
006a86: 4e550000     link.w     a5, #$0
006a8a: 48e7c080     movem.l    d0-d1/a0, -(a7)
006a8e: 4feffff4     lea.l      -$c(a7), a7
006a92: 41ee89b2     lea.l      -$764e(a6), a0
006a96: 2e88         move.l     a0, (a7)
006a98: 7008         moveq      #$8, d0
006a9a: 2f400008     move.l     d0, $8(a7)
006a9e: 2f2f0008     move.l     $8(a7), -(a7)
006aa2: 222f0004     move.l     $4(a7), d1
006aa6: 202e99f8     move.l     -$6608(a6), d0
006aaa: 61001f6e     bsr.w      $8a1a
006aae: 588f         addq.l     #$4, a7
006ab0: 2f400004     move.l     d0, $4(a7)
006ab4: 202f0004     move.l     $4(a7), d0
006ab8: b0af0008     cmp.l      $8(a7), d0
006abc: 6634         bne.b      $6af2
006abe: 41ee89ba     lea.l      -$7646(a6), a0
006ac2: 2e88         move.l     a0, (a7)
006ac4: 306e89b2     movea.w    -$764e(a6), a0
006ac8: 2f480008     move.l     a0, $8(a7)
006acc: 4aaf0008     tst.l      $8(a7)
006ad0: 6f2c         ble.b      $6afe
006ad2: 2f2f0008     move.l     $8(a7), -(a7)
006ad6: 222f0004     move.l     $4(a7), d1
006ada: 202e99f8     move.l     -$6608(a6), d0
006ade: 61001f3a     bsr.w      $8a1a
006ae2: 588f         addq.l     #$4, a7
006ae4: 2f400004     move.l     d0, $4(a7)
006ae8: 202f0004     move.l     $4(a7), d0
006aec: b0af0008     cmp.l      $8(a7), d0
006af0: 670c         beq.b      $6afe
006af2: 203c0000025a move.l     #$25a, d0
006af8: 6100ff6a     bsr.w      $6a64
006afc: 602e         bra.b      $6b2c
006afe: 7000         moveq      #$0, d0
006b00: 302e89b8     move.w     -$7648(a6), d0
006b04: 6100ff5e     bsr.w      $6a64
006b08: 6100ff6c     bsr.w      $6a76
006b0c: 0c40025a     cmpi.w     #$25a, d0
006b10: 0c6e000189b4 cmpi.w     #$1, -$764c(a6)
006b16: 6604         bne.b      $6b1c
006b18: 53ae9a00     subq.l     #$1, -$6600(a6)
006b1c: 0c6e025989b8 cmpi.w     #$259, -$7648(a6)
006b22: 6608         bne.b      $6b2c
006b24: 42ae8db2     clr.l      -$724e(a6)
006b28: 7001         moveq      #$1, d0
006b2a: 6002         bra.b      $6b2e
006b2c: 7000         moveq      #$0, d0
006b2e: 4fef000c     lea.l      $c(a7), a7
006b32: 4ced0102fff8 movem.l    -$8(a5), d1/a0
006b38: 4e5d         unlk       a5
006b3a: 4e75         rts        
006b3c: 4e550000     link.w     a5, #$0
006b40: 48e7c080     movem.l    d0-d1/a0, -(a7)
006b44: 6100ff30     bsr.w      $6a76
006b48: 0c400259     cmpi.w     #$259, d0
006b4c: 6636         bne.b      $6b84
006b4e: 4a6e89b4     tst.w      -$764c(a6)
006b52: 6614         bne.b      $6b68
006b54: 302e89b2     move.w     -$764e(a6), d0
006b58: 48c0         ext.l      d0
006b5a: b0ae8db2     cmp.l      -$724e(a6), d0
006b5e: 6608         bne.b      $6b68
006b60: 6100ff24     bsr.w      $6a86
006b64: 4a00         tst.b      d0
006b66: 671c         beq.b      $6b84
006b68: 302e89b2     move.w     -$764e(a6), d0
006b6c: 48c0         ext.l      d0
006b6e: 222e8db2     move.l     -$724e(a6), d1
006b72: d2af0004     add.l      $4(a7), d1
006b76: b081         cmp.l      d1, d0
006b78: 6c0e         bge.b      $6b88
006b7a: 203c00000270 move.l     #$270, d0
006b80: 6100fee2     bsr.w      $6a64
006b84: 7000         moveq      #$0, d0
006b86: 6024         bra.b      $6bac
006b88: 2f2f0004     move.l     $4(a7), -(a7)
006b8c: 41ee89ba     lea.l      -$7646(a6), a0
006b90: 2008         move.l     a0, d0
006b92: d0ae8db2     add.l      -$724e(a6), d0
006b96: 2200         move.l     d0, d1
006b98: 202f0004     move.l     $4(a7), d0
006b9c: 610021c6     bsr.w      $8d64
006ba0: 588f         addq.l     #$4, a7
006ba2: 202f0004     move.l     $4(a7), d0
006ba6: d1ae8db2     add.l      d0, -$724e(a6)
006baa: 7001         moveq      #$1, d0
006bac: 4ced0100fffc movem.l    -$4(a5), a0
006bb2: 4e5d         unlk       a5
006bb4: 4e75         rts        
006bb6: 4e550000     link.w     a5, #$0
006bba: 48e7c000     movem.l    d0-d1, -(a7)
006bbe: 518f         subq.l     #$8, a7
006bc0: 202e99fc     move.l     -$6604(a6), d0
006bc4: 610023e6     bsr.w      $8fac
006bc8: 2e80         move.l     d0, (a7)
006bca: 70ff         moveq      #$ff, d0
006bcc: b097         cmp.l      (a7), d0
006bce: 6602         bne.b      $6bd2
006bd0: 4297         clr.l      (a7)
006bd2: 203c00000c00 move.l     #$c00, d0
006bd8: 9097         sub.l      (a7), d0
006bda: 0c800000021a cmpi.l     #$21a, d0
006be0: 6c08         bge.b      $6bea
006be2: 203c0000025c move.l     #$25c, d0
006be8: 6026         bra.b      $6c10
006bea: 4878021a     pea.l      $21a.w
006bee: 222f000c     move.l     $c(a7), d1
006bf2: 202e99fc     move.l     -$6604(a6), d0
006bf6: 61001e2a     bsr.w      $8a22
006bfa: 588f         addq.l     #$4, a7
006bfc: 2f400004     move.l     d0, $4(a7)
006c00: 0caf0000021a0004 cmpi.l     #$21a, $4(a7)
006c08: 670e         beq.b      $6c18
006c0a: 203c0000025a move.l     #$25a, d0
006c10: 6100fe52     bsr.w      $6a64
006c14: 7000         moveq      #$0, d0
006c16: 6010         bra.b      $6c28
006c18: 52ae9a00     addq.l     #$1, -$6600(a6)
006c1c: 203c00000259 move.l     #$259, d0
006c22: 6100fe40     bsr.w      $6a64
006c26: 7001         moveq      #$1, d0
006c28: 508f         addq.l     #$8, a7
006c2a: 4ced0002fffc movem.l    -$4(a5), d1
006c30: 4e5d         unlk       a5
006c32: 4e75         rts        
006c34: 4e550000     link.w     a5, #$0
006c38: 48e78080     movem.l    d0/a0, -(a7)
006c3c: 610003a2     bsr.w      $6fe0
006c40: 4a00         tst.b      d0
006c42: 672a         beq.b      $6c6e
006c44: 306e9a04     movea.w    -$65fc(a6), a0
006c48: 2008         move.l     a0, d0
006c4a: 61000132     bsr.w      $6d7e
006c4e: 4a00         tst.b      d0
006c50: 671c         beq.b      $6c6e
006c52: 610002b4     bsr.w      $6f08
006c56: 2d4099fc     move.l     d0, -$6604(a6)
006c5a: 4aae99fc     tst.l      -$6604(a6)
006c5e: 6d0e         blt.b      $6c6e
006c60: 610002b6     bsr.w      $6f18
006c64: 2d4099f8     move.l     d0, -$6608(a6)
006c68: 4aae99f8     tst.l      -$6608(a6)
006c6c: 6c0e         bge.b      $6c7c
006c6e: 203c0000025a move.l     #$25a, d0
006c74: 6100fdee     bsr.w      $6a64
006c78: 7000         moveq      #$0, d0
006c7a: 6014         bra.b      $6c90
006c7c: 6100024a     bsr.w      $6ec8
006c80: 2d4099f4     move.l     d0, -$660c(a6)
006c84: 203c00000259 move.l     #$259, d0
006c8a: 6100fdd8     bsr.w      $6a64
006c8e: 7001         moveq      #$1, d0
006c90: 4ced0100fffc movem.l    -$4(a5), a0
006c96: 4e5d         unlk       a5
006c98: 4e75         rts        
006c9a: 4e550000     link.w     a5, #$0
006c9e: 48e7c080     movem.l    d0-d1/a0, -(a7)
006ca2: 4aae9a00     tst.l      -$6600(a6)
006ca6: 6f06         ble.b      $6cae
006ca8: 615a         bsr.b      $6d04
006caa: 4a00         tst.b      d0
006cac: 673c         beq.b      $6cea
006cae: 202e99fc     move.l     -$6604(a6), d0
006cb2: 61001d82     bsr.w      $8a36
006cb6: 4a80         tst.l      d0
006cb8: 6d26         blt.b      $6ce0
006cba: 202e99f8     move.l     -$6608(a6), d0
006cbe: 61001d76     bsr.w      $8a36
006cc2: 4a80         tst.l      d0
006cc4: 6d1a         blt.b      $6ce0
006cc6: 222e99f4     move.l     -$660c(a6), d1
006cca: 306e9a04     movea.w    -$65fc(a6), a0
006cce: 2008         move.l     a0, d0
006cd0: 6100013c     bsr.w      $6e0e
006cd4: 4a00         tst.b      d0
006cd6: 6708         beq.b      $6ce0
006cd8: 6100035e     bsr.w      $7038
006cdc: 4a00         tst.b      d0
006cde: 660e         bne.b      $6cee
006ce0: 203c0000025a move.l     #$25a, d0
006ce6: 6100fd7c     bsr.w      $6a64
006cea: 7000         moveq      #$0, d0
006cec: 600c         bra.b      $6cfa
006cee: 203c00000259 move.l     #$259, d0
006cf4: 6100fd6e     bsr.w      $6a64
006cf8: 7001         moveq      #$1, d0
006cfa: 4ced0102fff8 movem.l    -$8(a5), d1/a0
006d00: 4e5d         unlk       a5
006d02: 4e75         rts        
006d04: 4e550000     link.w     a5, #$0
006d08: 48e7c080     movem.l    d0-d1/a0, -(a7)
006d0c: 222e99f4     move.l     -$660c(a6), d1
006d10: 306e9a04     movea.w    -$65fc(a6), a0
006d14: 2008         move.l     a0, d0
006d16: 61000146     bsr.w      $6e5e
006d1a: 4a00         tst.b      d0
006d1c: 662e         bne.b      $6d4c
006d1e: 603a         bra.b      $6d5a
006d20: 6100fd64     bsr.w      $6a86
006d24: 4a00         tst.b      d0
006d26: 661e         bne.b      $6d46
006d28: 6100fd4c     bsr.w      $6a76
006d2c: 0c40025a     cmpi.w     #$25a, d0
006d30: 6732         beq.b      $6d64
006d32: 6012         bra.b      $6d46
006d34: 6100fd50     bsr.w      $6a86
006d38: 4a00         tst.b      d0
006d3a: 660a         bne.b      $6d46
006d3c: 6100fd38     bsr.w      $6a76
006d40: 0c40025a     cmpi.w     #$25a, d0
006d44: 671e         beq.b      $6d64
006d46: 4a6e89b4     tst.w      -$764c(a6)
006d4a: 67e8         beq.b      $6d34
006d4c: 4aae9a00     tst.l      -$6600(a6)
006d50: 6ece         bgt.b      $6d20
006d52: 61000148     bsr.w      $6e9c
006d56: 4a00         tst.b      d0
006d58: 660e         bne.b      $6d68
006d5a: 203c0000025a move.l     #$25a, d0
006d60: 6100fd02     bsr.w      $6a64
006d64: 7000         moveq      #$0, d0
006d66: 600c         bra.b      $6d74
006d68: 203c00000259 move.l     #$259, d0
006d6e: 6100fcf4     bsr.w      $6a64
006d72: 7001         moveq      #$1, d0
006d74: 4ced0102fff8 movem.l    -$8(a5), d1/a0
006d7a: 4e5d         unlk       a5
006d7c: 4e75         rts        
006d7e: 4e550000     link.w     a5, #$0
006d82: 48e7c080     movem.l    d0-d1/a0, -(a7)
006d86: 4fefffa4     lea.l      -$5c(a7), a7
006d8a: 3f7c00010002 move.w     #$1, $2(a7)
006d90: 3f7c01010004 move.w     #$101, $4(a7)
006d96: 3f6f005e0006 move.w     $5e(a7), $6(a7)
006d9c: 6100018a     bsr.w      $6f28
006da0: 2200         move.l     d0, d1
006da2: 41ef0008     lea.l      $8(a7), a0
006da6: 2008         move.l     a0, d0
006da8: 61001e1c     bsr.w      $8bc6
006dac: 3ebc0052     move.w     #$52, (a7)
006db0: 41d7         lea.l      (a7), a0
006db2: 2008         move.l     a0, d0
006db4: 61000182     bsr.w      $6f38
006db8: 4a00         tst.b      d0
006dba: 6608         bne.b      $6dc4
006dbc: 603c         bra.b      $6dfa
006dbe: 7001         moveq      #$1, d0
006dc0: 610023e4     bsr.w      $91a6
006dc4: 41ee8db6     lea.l      -$724a(a6), a0
006dc8: 2008         move.l     a0, d0
006dca: 610001b2     bsr.w      $6f7e
006dce: 4a00         tst.b      d0
006dd0: 67ec         beq.b      $6dbe
006dd2: 0c6f0002005e cmpi.w     #$2, $5e(a7)
006dd8: 6724         beq.b      $6dfe
006dda: 7202         moveq      #$2, d1
006ddc: 610000fa     bsr.w      $6ed8
006de0: 6100036c     bsr.w      $714e
006de4: 2d409a06     move.l     d0, -$65fa(a6)
006de8: 6d10         blt.b      $6dfa
006dea: 7201         moveq      #$1, d1
006dec: 61000102     bsr.w      $6ef0
006df0: 6100035c     bsr.w      $714e
006df4: 2d409a0a     move.l     d0, -$65f6(a6)
006df8: 6c04         bge.b      $6dfe
006dfa: 7000         moveq      #$0, d0
006dfc: 6002         bra.b      $6e00
006dfe: 7001         moveq      #$1, d0
006e00: 4fef005c     lea.l      $5c(a7), a7
006e04: 4ced0102fff8 movem.l    -$8(a5), d1/a0
006e0a: 4e5d         unlk       a5
006e0c: 4e75         rts        
006e0e: 4e550000     link.w     a5, #$0
006e12: 48e7c080     movem.l    d0-d1/a0, -(a7)
006e16: 4fefffa4     lea.l      -$5c(a7), a7
006e1a: 3f7c00010002 move.w     #$1, $2(a7)
006e20: 3f7c01020004 move.w     #$102, $4(a7)
006e26: 3f6f005e0006 move.w     $5e(a7), $6(a7)
006e2c: 2f6f00600008 move.l     $60(a7), $8(a7)
006e32: 3ebc000a     move.w     #$a, (a7)
006e36: 41d7         lea.l      (a7), a0
006e38: 2008         move.l     a0, d0
006e3a: 610000fc     bsr.w      $6f38
006e3e: 4a00         tst.b      d0
006e40: 6604         bne.b      $6e46
006e42: 7000         moveq      #$0, d0
006e44: 600a         bra.b      $6e50
006e46: 41ee8db6     lea.l      -$724a(a6), a0
006e4a: 2008         move.l     a0, d0
006e4c: 61000130     bsr.w      $6f7e
006e50: 4fef005c     lea.l      $5c(a7), a7
006e54: 4ced0100fffc movem.l    -$4(a5), a0
006e5a: 4e5d         unlk       a5
006e5c: 4e75         rts        
006e5e: 4e550000     link.w     a5, #$0
006e62: 48e7c080     movem.l    d0-d1/a0, -(a7)
006e66: 4fefffa4     lea.l      -$5c(a7), a7
006e6a: 3f7c00010002 move.w     #$1, $2(a7)
006e70: 3f7c01030004 move.w     #$103, $4(a7)
006e76: 3f6f005e0006 move.w     $5e(a7), $6(a7)
006e7c: 2f6f00600008 move.l     $60(a7), $8(a7)
006e82: 3ebc000a     move.w     #$a, (a7)
006e86: 41d7         lea.l      (a7), a0
006e88: 2008         move.l     a0, d0
006e8a: 610000ac     bsr.w      $6f38
006e8e: 4fef005c     lea.l      $5c(a7), a7
006e92: 4ced0100fffc movem.l    -$4(a5), a0
006e98: 4e5d         unlk       a5
006e9a: 4e75         rts        
006e9c: 4e550000     link.w     a5, #$0
006ea0: 48e78080     movem.l    d0/a0, -(a7)
006ea4: 41ee8db6     lea.l      -$724a(a6), a0
006ea8: 2008         move.l     a0, d0
006eaa: 610000d2     bsr.w      $6f7e
006eae: 4ced0100fffc movem.l    -$4(a5), a0
006eb4: 4e5d         unlk       a5
006eb6: 4e75         rts        
006eb8: 4e550000     link.w     a5, #$0
006ebc: 48e78000     movem.l    d0, -(a7)
006ec0: 302e8dbc     move.w     -$7244(a6), d0
006ec4: 4e5d         unlk       a5
006ec6: 4e75         rts        
006ec8: 4e550000     link.w     a5, #$0
006ecc: 48e78000     movem.l    d0, -(a7)
006ed0: 202e8dbe     move.l     -$7242(a6), d0
006ed4: 4e5d         unlk       a5
006ed6: 4e75         rts        
006ed8: 4e550000     link.w     a5, #$0
006edc: 48e78080     movem.l    d0/a0, -(a7)
006ee0: 41ee8dc2     lea.l      -$723e(a6), a0
006ee4: 2008         move.l     a0, d0
006ee6: 4ced0100fffc movem.l    -$4(a5), a0
006eec: 4e5d         unlk       a5
006eee: 4e75         rts        
006ef0: 4e550000     link.w     a5, #$0
006ef4: 48e78080     movem.l    d0/a0, -(a7)
006ef8: 41ee8e0e     lea.l      -$71f2(a6), a0
006efc: 2008         move.l     a0, d0
006efe: 4ced0100fffc movem.l    -$4(a5), a0
006f04: 4e5d         unlk       a5
006f06: 4e75         rts        
006f08: 4e550000     link.w     a5, #$0
006f0c: 48e78000     movem.l    d0, -(a7)
006f10: 202e9a06     move.l     -$65fa(a6), d0
006f14: 4e5d         unlk       a5
006f16: 4e75         rts        
006f18: 4e550000     link.w     a5, #$0
006f1c: 48e78000     movem.l    d0, -(a7)
006f20: 202e9a0a     move.l     -$65f6(a6), d0
006f24: 4e5d         unlk       a5
006f26: 4e75         rts        
006f28: 4e550000     link.w     a5, #$0
006f2c: 48e78000     movem.l    d0, -(a7)
006f30: 202e9a0e     move.l     -$65f2(a6), d0
006f34: 4e5d         unlk       a5
006f36: 4e75         rts        
006f38: 4e550000     link.w     a5, #$0
006f3c: 48e7c080     movem.l    d0-d1/a0, -(a7)
006f40: 518f         subq.l     #$8, a7
006f42: 206f0008     movea.l    $8(a7), a0
006f46: 3010         move.w     (a0), d0
006f48: 48c0         ext.l      d0
006f4a: 5480         addq.l     #$2, d0
006f4c: 2f400004     move.l     d0, $4(a7)
006f50: 2f2f0004     move.l     $4(a7), -(a7)
006f54: 222f000c     move.l     $c(a7), d1
006f58: 202e9a12     move.l     -$65ee(a6), d0
006f5c: 61001ac4     bsr.w      $8a22
006f60: 588f         addq.l     #$4, a7
006f62: 2e80         move.l     d0, (a7)
006f64: 2017         move.l     (a7), d0
006f66: b0af0004     cmp.l      $4(a7), d0
006f6a: 6704         beq.b      $6f70
006f6c: 7000         moveq      #$0, d0
006f6e: 6002         bra.b      $6f72
006f70: 7001         moveq      #$1, d0
006f72: 508f         addq.l     #$8, a7
006f74: 4ced0102fff8 movem.l    -$8(a5), d1/a0
006f7a: 4e5d         unlk       a5
006f7c: 4e75         rts        
006f7e: 4e550000     link.w     a5, #$0
006f82: 48e7c080     movem.l    d0-d1/a0, -(a7)
006f86: 598f         subq.l     #$4, a7
006f88: 48780002     pea.l      $2.w
006f8c: 222f0008     move.l     $8(a7), d1
006f90: 202e9a16     move.l     -$65ea(a6), d0
006f94: 61001a84     bsr.w      $8a1a
006f98: 588f         addq.l     #$4, a7
006f9a: 2e80         move.l     d0, (a7)
006f9c: 7002         moveq      #$2, d0
006f9e: b097         cmp.l      (a7), d0
006fa0: 6628         bne.b      $6fca
006fa2: 206f0004     movea.l    $4(a7), a0
006fa6: 3050         movea.w    (a0), a0
006fa8: 2f08         move.l     a0, -(a7)
006faa: 202f0008     move.l     $8(a7), d0
006fae: 5480         addq.l     #$2, d0
006fb0: 2200         move.l     d0, d1
006fb2: 202e9a16     move.l     -$65ea(a6), d0
006fb6: 61001a62     bsr.w      $8a1a
006fba: 588f         addq.l     #$4, a7
006fbc: 2e80         move.l     d0, (a7)
006fbe: 206f0004     movea.l    $4(a7), a0
006fc2: 3010         move.w     (a0), d0
006fc4: 48c0         ext.l      d0
006fc6: b097         cmp.l      (a7), d0
006fc8: 6708         beq.b      $6fd2
006fca: 70ff         moveq      #$ff, d0
006fcc: b097         cmp.l      (a7), d0
006fce: 7000         moveq      #$0, d0
006fd0: 6002         bra.b      $6fd4
006fd2: 7001         moveq      #$1, d0
006fd4: 588f         addq.l     #$4, a7
006fd6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
006fdc: 4e5d         unlk       a5
006fde: 4e75         rts        
006fe0: 4e550000     link.w     a5, #$0
006fe4: 48e7c080     movem.l    d0-d1/a0, -(a7)
006fe8: 7202         moveq      #$2, d1
006fea: 41fa0076     lea.l      $7062(pc), a0
006fee: 2008         move.l     a0, d0
006ff0: 6100015c     bsr.w      $714e
006ff4: 2d409a12     move.l     d0, -$65ee(a6)
006ff8: 6d2e         blt.b      $7028
006ffa: 41fa0086     lea.l      $7082(pc), a0
006ffe: 2208         move.l     a0, d1
007000: 41ee8e5a     lea.l      -$71a6(a6), a0
007004: 2008         move.l     a0, d0
007006: 610019be     bsr.w      $89c6
00700a: 41ee8e5a     lea.l      -$71a6(a6), a0
00700e: 2008         move.l     a0, d0
007010: 61001a94     bsr.w      $8aa6
007014: 2d409a0e     move.l     d0, -$65f2(a6)
007018: 7203         moveq      #$3, d1
00701a: 202e9a0e     move.l     -$65f2(a6), d0
00701e: 61000148     bsr.w      $7168
007022: 2d409a16     move.l     d0, -$65ea(a6)
007026: 6c04         bge.b      $702c
007028: 7000         moveq      #$0, d0
00702a: 6002         bra.b      $702e
00702c: 7001         moveq      #$1, d0
00702e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007034: 4e5d         unlk       a5
007036: 4e75         rts        
007038: 4e550000     link.w     a5, #$0
00703c: 48e78000     movem.l    d0, -(a7)
007040: 202e9a12     move.l     -$65ee(a6), d0
007044: 610019f0     bsr.w      $8a36
007048: 4a80         tst.l      d0
00704a: 6d10         blt.b      $705c
00704c: 4aae9a16     tst.l      -$65ea(a6)
007050: 6f0a         ble.b      $705c
007052: 202e9a16     move.l     -$65ea(a6), d0
007056: 610019de     bsr.w      $8a36
00705a: 4a80         tst.l      d0
00705c: 7001         moveq      #$1, d0
00705e: 4e5d         unlk       a5
007060: 4e75         rts        
007062: 2f63302f     move.l     -(a3), $302f(a7)
007066: 5f313239     subq.b     #$7, $39(a1, d3.w)
00706a: 5f2f7069     subq.b     #$7, $7069(a7)
00706e: 7065         moveq      #$65, d0
007070: 2f646263     move.l     -(a4), $6263(a7)
007074: 5f72657175657374 subq.w     #$7, ([$75657374, a2])
00707c: 5f70697065002f63 subq.w     #$7, $65002f63(a0, invalid.w)
007084: 302f5f31     move.w     $5f31(a7), d0
007088: 32395f2f7069 move.w     $5f2f7069.l, d1
00708e: 7065         moveq      #$65, d0
007090: 2f646263     move.l     -(a4), $6263(a7)
007094: 5f7273705f585858 subq.w     #$7, $5f585858(a2, invalid.w)
00709c: 5858         addq.w     #$4, (a0)+
00709e: 5800         addq.b     #$4, d0
0070a0: 4e550000     link.w     a5, #$0
0070a4: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0070a8: 7200         moveq      #$0, d1
0070aa: 41ee9a1a     lea.l      -$65e6(a6), a0
0070ae: 2008         move.l     a0, d0
0070b0: 61002394     bsr.w      $9446
0070b4: 2440         movea.l    d0, a2
0070b6: 70ff         moveq      #$ff, d0
0070b8: b08a         cmp.l      a2, d0
0070ba: 6614         bne.b      $70d0
0070bc: 41ee9a1a     lea.l      -$65e6(a6), a0
0070c0: 2208         move.l     a0, d1
0070c2: 41fa0072     lea.l      $7136(pc), a0
0070c6: 2008         move.l     a0, d0
0070c8: 610018f4     bsr.w      $89be
0070cc: 7000         moveq      #$0, d0
0070ce: 6016         bra.b      $70e6
0070d0: 202a0030     move.l     $30(a2), d0
0070d4: d08a         add.l      a2, d0
0070d6: 2800         move.l     d0, d4
0070d8: 2204         move.l     d4, d1
0070da: 200a         move.l     a2, d0
0070dc: 6112         bsr.b      $70f0
0070de: 200a         move.l     a2, d0
0070e0: 6100239a     bsr.w      $947c
0070e4: 7001         moveq      #$1, d0
0070e6: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0070ec: 4e5d         unlk       a5
0070ee: 4e75         rts        
0070f0: 4e550000     link.w     a5, #$0
0070f4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0070f8: 518f         subq.l     #$8, a7
0070fa: 41ee8e8c     lea.l      -$7174(a6), a0
0070fe: 2f480004     move.l     a0, $4(a7)
007102: 4297         clr.l      (a7)
007104: 601c         bra.b      $7122
007106: 206f000c     movea.l    $c(a7), a0
00710a: 2017         move.l     (a7), d0
00710c: 7200         moveq      #$0, d1
00710e: 32300a00     move.w     (a0, d0.l * 2), d1
007112: d2af0008     add.l      $8(a7), d1
007116: 206f0004     movea.l    $4(a7), a0
00711a: 2017         move.l     (a7), d0
00711c: 21810c00     move.l     d1, (a0, d0.l * 4)
007120: 5297         addq.l     #$1, (a7)
007122: 0c97000000c4 cmpi.l     #$c4, (a7)
007128: 6ddc         blt.b      $7106
00712a: 508f         addq.l     #$8, a7
00712c: 4ced0100fffc movem.l    -$4(a5), a0
007132: 4e5d         unlk       a5
007134: 4e75         rts        
007136: 434f         .dc.w      $434f
007138: 4f52         .dc.w      $4f52
00713a: 445f         neg.w      (a7)+
00713c: 696e         bvs.b      $71ac
00713e: 6974         bvs.b      $71b4
007140: 3a20         move.w     -(a0), d5
007142: 4e6f         move       usp, a7
007144: 2027         move.l     -(a7), d0
007146: 25732720210d0000 move.l     $210d(a3, d2.w * 8), $0(a2)
00714e: 4e550000     link.w     a5, #$0
007152: 48e7c000     movem.l    d0-d1, -(a7)
007156: 42a7         clr.l      -(a7)
007158: 222f0008     move.l     $8(a7), d1
00715c: 202f0004     move.l     $4(a7), d0
007160: 613e         bsr.b      $71a0
007162: 588f         addq.l     #$4, a7
007164: 4e5d         unlk       a5
007166: 4e75         rts        
007168: 4e550000     link.w     a5, #$0
00716c: 48e7c000     movem.l    d0-d1, -(a7)
007170: 48780001     pea.l      $1.w
007174: 222f0008     move.l     $8(a7), d1
007178: 202f0004     move.l     $4(a7), d0
00717c: 6122         bsr.b      $71a0
00717e: 588f         addq.l     #$4, a7
007180: 4e5d         unlk       a5
007182: 4e75         rts        
007184: 4e550000     link.w     a5, #$0
007188: 48e7c000     movem.l    d0-d1, -(a7)
00718c: 48780002     pea.l      $2.w
007190: 222f0008     move.l     $8(a7), d1
007194: 202f0004     move.l     $4(a7), d0
007198: 6106         bsr.b      $71a0
00719a: 588f         addq.l     #$4, a7
00719c: 4e5d         unlk       a5
00719e: 4e75         rts        
0071a0: 4e550000     link.w     a5, #$0
0071a4: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
0071a8: 4fefffda     lea.l      -$26(a7), a7
0071ac: 41ef0008     lea.l      $8(a7), a0
0071b0: 2208         move.l     a0, d1
0071b2: 202f0026     move.l     $26(a7), d0
0071b6: 61000bbe     bsr.w      $7d76
0071ba: 2440         movea.l    d0, a2
0071bc: 4a80         tst.l      d0
0071be: 67000108     beq.w      $72c8
0071c2: 41ef0008     lea.l      $8(a7), a0
0071c6: 2008         move.l     a0, d0
0071c8: 61000bf2     bsr.w      $7dbc
0071cc: 2f400004     move.l     d0, $4(a7)
0071d0: 6d0000f6     blt.w      $72c8
0071d4: 41ef0022     lea.l      $22(a7), a0
0071d8: 2208         move.l     a0, d1
0071da: 200a         move.l     a2, d0
0071dc: 61000c64     bsr.w      $7e42
0071e0: 2440         movea.l    d0, a2
0071e2: 4a80         tst.l      d0
0071e4: 670000e2     beq.w      $72c8
0071e8: 202f0004     move.l     $4(a7), d0
0071ec: e588         lsl.l      #$2, d0
0071ee: 41ee9a6e     lea.l      -$6592(a6), a0
0071f2: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0071f8: 6600009a     bne.w      $7294
0071fc: 7203         moveq      #$3, d1
0071fe: 41ef0008     lea.l      $8(a7), a0
007202: 2008         move.l     a0, d0
007204: 61001800     bsr.w      $8a06
007208: 222f0004     move.l     $4(a7), d1
00720c: e589         lsl.l      #$2, d1
00720e: 41ee9a6e     lea.l      -$6592(a6), a0
007212: 31801800     move.w     d0, (a0, d1.l)
007216: 6d0000ca     blt.w      $72e2
00721a: 202f0004     move.l     $4(a7), d0
00721e: e588         lsl.l      #$2, d0
007220: 41ee9a6e     lea.l      -$6592(a6), a0
007224: 2400         move.l     d0, d2
007226: 42a7         clr.l      -(a7)
007228: 202f0008     move.l     $8(a7), d0
00722c: e588         lsl.l      #$2, d0
00722e: 43ee9a6e     lea.l      -$6592(a6), a1
007232: 32710800     movea.w    (a1, d0.l), a1
007236: 2209         move.l     a1, d1
007238: 203c0000ff0e move.l     #$ff0e, d0
00723e: 61000df2     bsr.w      $8032
007242: 588f         addq.l     #$4, a7
007244: 2240         movea.l    d0, a1
007246: 7000         moveq      #$0, d0
007248: 1011         move.b     (a1), d0
00724a: 31802802     move.w     d0, $2(a0, d2.l)
00724e: 202f0004     move.l     $4(a7), d0
007252: e588         lsl.l      #$2, d0
007254: 41ee9a6e     lea.l      -$6592(a6), a0
007258: 4a700800     tst.w      (a0, d0.l)
00725c: 6d36         blt.b      $7294
00725e: 202f0004     move.l     $4(a7), d0
007262: e588         lsl.l      #$2, d0
007264: 41ee9a6e     lea.l      -$6592(a6), a0
007268: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
00726e: 6c24         bge.b      $7294
007270: 202f0004     move.l     $4(a7), d0
007274: e588         lsl.l      #$2, d0
007276: 41ee9a6e     lea.l      -$6592(a6), a0
00727a: 30700800     movea.w    (a0, d0.l), a0
00727e: 2008         move.l     a0, d0
007280: 610017b4     bsr.w      $8a36
007284: 202f0004     move.l     $4(a7), d0
007288: e588         lsl.l      #$2, d0
00728a: 41ee9a6e     lea.l      -$6592(a6), a0
00728e: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
007294: 202f0004     move.l     $4(a7), d0
007298: e588         lsl.l      #$2, d0
00729a: 41ee9a6e     lea.l      -$6592(a6), a0
00729e: 30300802     move.w     $2(a0, d0.l), d0
0072a2: 48c0         ext.l      d0
0072a4: b0af0022     cmp.l      $22(a7), d0
0072a8: 661e         bne.b      $72c8
0072aa: 0c12005f     cmpi.b     #$5f, (a2)
0072ae: 6610         bne.b      $72c0
0072b0: 6004         bra.b      $72b6
0072b2: 4a12         tst.b      (a2)
0072b4: 672c         beq.b      $72e2
0072b6: 528a         addq.l     #$1, a2
0072b8: 0c12005f     cmpi.b     #$5f, (a2)
0072bc: 66f4         bne.b      $72b2
0072be: 528a         addq.l     #$1, a2
0072c0: 222f002a     move.l     $2a(a7), d1
0072c4: 200a         move.l     a2, d0
0072c6: 6008         bra.b      $72d0
0072c8: 222f002a     move.l     $2a(a7), d1
0072cc: 202f0026     move.l     $26(a7), d0
0072d0: 242f004e     move.l     $4e(a7), d2
0072d4: e58a         lsl.l      #$2, d2
0072d6: 41ee9a28     lea.l      -$65d8(a6), a0
0072da: 20702800     movea.l    (a0, d2.l), a0
0072de: 4e90         jsr        (a0)
0072e0: 6002         bra.b      $72e4
0072e2: 70ff         moveq      #$ff, d0
0072e4: 4fef0026     lea.l      $26(a7), a7
0072e8: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
0072ee: 4e5d         unlk       a5
0072f0: 4e75         rts        
0072f2: 4e550000     link.w     a5, #$0
0072f6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0072fa: 2f2f0018     move.l     $18(a7), -(a7)
0072fe: 306f001a     movea.w    $1a(a7), a0
007302: 2f08         move.l     a0, -(a7)
007304: 222f000c     move.l     $c(a7), d1
007308: 202f0008     move.l     $8(a7), d0
00730c: 610c         bsr.b      $731a
00730e: 508f         addq.l     #$8, a7
007310: 4ced0100fffc movem.l    -$4(a5), a0
007316: 4e5d         unlk       a5
007318: 4e75         rts        
00731a: 4e550000     link.w     a5, #$0
00731e: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
007322: 4fefffda     lea.l      -$26(a7), a7
007326: 41ef0008     lea.l      $8(a7), a0
00732a: 2208         move.l     a0, d1
00732c: 202f0026     move.l     $26(a7), d0
007330: 61000a44     bsr.w      $7d76
007334: 2440         movea.l    d0, a2
007336: 4a80         tst.l      d0
007338: 67000112     beq.w      $744c
00733c: 41ef0008     lea.l      $8(a7), a0
007340: 2008         move.l     a0, d0
007342: 61000a78     bsr.w      $7dbc
007346: 2f400004     move.l     d0, $4(a7)
00734a: 6d000100     blt.w      $744c
00734e: 41ef0022     lea.l      $22(a7), a0
007352: 2208         move.l     a0, d1
007354: 200a         move.l     a2, d0
007356: 61000aea     bsr.w      $7e42
00735a: 2440         movea.l    d0, a2
00735c: 4a80         tst.l      d0
00735e: 670000ec     beq.w      $744c
007362: 202f0004     move.l     $4(a7), d0
007366: e588         lsl.l      #$2, d0
007368: 41ee9a6e     lea.l      -$6592(a6), a0
00736c: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
007372: 6600009a     bne.w      $740e
007376: 7203         moveq      #$3, d1
007378: 41ef0008     lea.l      $8(a7), a0
00737c: 2008         move.l     a0, d0
00737e: 61001686     bsr.w      $8a06
007382: 222f0004     move.l     $4(a7), d1
007386: e589         lsl.l      #$2, d1
007388: 41ee9a6e     lea.l      -$6592(a6), a0
00738c: 31801800     move.w     d0, (a0, d1.l)
007390: 6d0000d4     blt.w      $7466
007394: 202f0004     move.l     $4(a7), d0
007398: e588         lsl.l      #$2, d0
00739a: 41ee9a6e     lea.l      -$6592(a6), a0
00739e: 2400         move.l     d0, d2
0073a0: 42a7         clr.l      -(a7)
0073a2: 202f0008     move.l     $8(a7), d0
0073a6: e588         lsl.l      #$2, d0
0073a8: 43ee9a6e     lea.l      -$6592(a6), a1
0073ac: 32710800     movea.w    (a1, d0.l), a1
0073b0: 2209         move.l     a1, d1
0073b2: 203c0000ff0e move.l     #$ff0e, d0
0073b8: 61000c78     bsr.w      $8032
0073bc: 588f         addq.l     #$4, a7
0073be: 2240         movea.l    d0, a1
0073c0: 7000         moveq      #$0, d0
0073c2: 1011         move.b     (a1), d0
0073c4: 31802802     move.w     d0, $2(a0, d2.l)
0073c8: 202f0004     move.l     $4(a7), d0
0073cc: e588         lsl.l      #$2, d0
0073ce: 41ee9a6e     lea.l      -$6592(a6), a0
0073d2: 4a700800     tst.w      (a0, d0.l)
0073d6: 6d36         blt.b      $740e
0073d8: 202f0004     move.l     $4(a7), d0
0073dc: e588         lsl.l      #$2, d0
0073de: 41ee9a6e     lea.l      -$6592(a6), a0
0073e2: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
0073e8: 6c24         bge.b      $740e
0073ea: 202f0004     move.l     $4(a7), d0
0073ee: e588         lsl.l      #$2, d0
0073f0: 41ee9a6e     lea.l      -$6592(a6), a0
0073f4: 30700800     movea.w    (a0, d0.l), a0
0073f8: 2008         move.l     a0, d0
0073fa: 6100163a     bsr.w      $8a36
0073fe: 202f0004     move.l     $4(a7), d0
007402: e588         lsl.l      #$2, d0
007404: 41ee9a6e     lea.l      -$6592(a6), a0
007408: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
00740e: 202f0004     move.l     $4(a7), d0
007412: e588         lsl.l      #$2, d0
007414: 41ee9a6e     lea.l      -$6592(a6), a0
007418: 30300802     move.w     $2(a0, d0.l), d0
00741c: 48c0         ext.l      d0
00741e: b0af0022     cmp.l      $22(a7), d0
007422: 6628         bne.b      $744c
007424: 0c12005f     cmpi.b     #$5f, (a2)
007428: 6610         bne.b      $743a
00742a: 6004         bra.b      $7430
00742c: 4a12         tst.b      (a2)
00742e: 6736         beq.b      $7466
007430: 528a         addq.l     #$1, a2
007432: 0c12005f     cmpi.b     #$5f, (a2)
007436: 66f4         bne.b      $742c
007438: 528a         addq.l     #$1, a2
00743a: 2f2f0052     move.l     $52(a7), -(a7)
00743e: 306f0054     movea.w    $54(a7), a0
007442: 2f08         move.l     a0, -(a7)
007444: 222f0032     move.l     $32(a7), d1
007448: 200a         move.l     a2, d0
00744a: 6012         bra.b      $745e
00744c: 2f2f0052     move.l     $52(a7), -(a7)
007450: 306f0054     movea.w    $54(a7), a0
007454: 2f08         move.l     a0, -(a7)
007456: 222f0032     move.l     $32(a7), d1
00745a: 202f002e     move.l     $2e(a7), d0
00745e: 6100159e     bsr.w      $89fe
007462: 508f         addq.l     #$8, a7
007464: 6002         bra.b      $7468
007466: 70ff         moveq      #$ff, d0
007468: 4fef0026     lea.l      $26(a7), a7
00746c: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
007472: 4e5d         unlk       a5
007474: 4e75         rts        
007476: 4e550000     link.w     a5, #$0
00747a: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
00747e: 4fefffc8     lea.l      -$38(a7), a7
007482: 2f6f00380008 move.l     $38(a7), $8(a7)
007488: 4a2f0009     tst.b      $9(a7)
00748c: 660e         bne.b      $749c
00748e: 306f003e     movea.w    $3e(a7), a0
007492: 2208         move.l     a0, d1
007494: 202f0008     move.l     $8(a7), d0
007498: 600000c8     bra.w      $7562
00749c: 4aae9a38     tst.l      -$65c8(a6)
0074a0: 6608         bne.b      $74aa
0074a2: 61000b6a     bsr.w      $800e
0074a6: 2d409a38     move.l     d0, -$65c8(a6)
0074aa: 7000         moveq      #$0, d0
0074ac: 102f0008     move.b     $8(a7), d0
0074b0: e588         lsl.l      #$2, d0
0074b2: 41ee9a6e     lea.l      -$6592(a6), a0
0074b6: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0074bc: 66000080     bne.w      $753e
0074c0: 7000         moveq      #$0, d0
0074c2: 102f0008     move.b     $8(a7), d0
0074c6: e588         lsl.l      #$2, d0
0074c8: 206e9a38     movea.l    -$65c8(a6), a0
0074cc: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
0074d0: 41fa016e     lea.l      $7640(pc), a0
0074d4: 2208         move.l     a0, d1
0074d6: 41ef001c     lea.l      $1c(a7), a0
0074da: 2008         move.l     a0, d0
0074dc: 610014e8     bsr.w      $89c6
0074e0: 588f         addq.l     #$4, a7
0074e2: 7203         moveq      #$3, d1
0074e4: 41ef0018     lea.l      $18(a7), a0
0074e8: 2008         move.l     a0, d0
0074ea: 6100151a     bsr.w      $8a06
0074ee: 7200         moveq      #$0, d1
0074f0: 122f0008     move.b     $8(a7), d1
0074f4: e589         lsl.l      #$2, d1
0074f6: 41ee9a6e     lea.l      -$6592(a6), a0
0074fa: 31801800     move.w     d0, (a0, d1.l)
0074fe: 6c06         bge.b      $7506
007500: 70ff         moveq      #$ff, d0
007502: 6000012e     bra.w      $7632
007506: 7000         moveq      #$0, d0
007508: 102f0008     move.b     $8(a7), d0
00750c: e588         lsl.l      #$2, d0
00750e: 41ee9a6e     lea.l      -$6592(a6), a0
007512: 2400         move.l     d0, d2
007514: 42a7         clr.l      -(a7)
007516: 7000         moveq      #$0, d0
007518: 102f000c     move.b     $c(a7), d0
00751c: e588         lsl.l      #$2, d0
00751e: 43ee9a6e     lea.l      -$6592(a6), a1
007522: 32710800     movea.w    (a1, d0.l), a1
007526: 2209         move.l     a1, d1
007528: 203c0000ff0e move.l     #$ff0e, d0
00752e: 61000b02     bsr.w      $8032
007532: 588f         addq.l     #$4, a7
007534: 2240         movea.l    d0, a1
007536: 7000         moveq      #$0, d0
007538: 1011         move.b     (a1), d0
00753a: 31802802     move.w     d0, $2(a0, d2.l)
00753e: 7000         moveq      #$0, d0
007540: 102f0008     move.b     $8(a7), d0
007544: e588         lsl.l      #$2, d0
007546: 41ee9a6e     lea.l      -$6592(a6), a0
00754a: 7200         moveq      #$0, d1
00754c: 122f0009     move.b     $9(a7), d1
007550: b2700802     cmp.w      $2(a0, d0.l), d1
007554: 6614         bne.b      $756a
007556: 306f003e     movea.w    $3e(a7), a0
00755a: 2208         move.l     a0, d1
00755c: 7000         moveq      #$0, d0
00755e: 302f000a     move.w     $a(a7), d0
007562: 61001f42     bsr.w      $94a6
007566: 600000ca     bra.w      $7632
00756a: 4aae9a34     tst.l      -$65cc(a6)
00756e: 661a         bne.b      $758a
007570: 61001ff2     bsr.w      $9564
007574: 2d409a34     move.l     d0, -$65cc(a6)
007578: 2d7c0001000091a4 move.l     #$10000, -$6e5c(a6)
007580: 2d6e9a3491a8 move.l     -$65cc(a6), -$6e58(a6)
007586: 42ae91a0     clr.l      -$6e60(a6)
00758a: 7001         moveq      #$1, d0
00758c: 2d4091c0     move.l     d0, -$6e40(a6)
007590: 7008         moveq      #$8, d0
007592: 2d4091c4     move.l     d0, -$6e3c(a6)
007596: 41d7         lea.l      (a7), a0
007598: 2d4891c8     move.l     a0, -$6e38(a6)
00759c: 41ee919c     lea.l      -$6e64(a6), a0
0075a0: 2d4891d0     move.l     a0, -$6e30(a6)
0075a4: 7018         moveq      #$18, d0
0075a6: 2d4091cc     move.l     d0, -$6e34(a6)
0075aa: 7000         moveq      #$0, d0
0075ac: 302f000a     move.w     $a(a7), d0
0075b0: 2d4091ac     move.l     d0, -$6e54(a6)
0075b4: 306f003e     movea.w    $3e(a7), a0
0075b8: 2d4891b0     move.l     a0, -$6e50(a6)
0075bc: 1d6f0009919f move.b     $9(a7), -$6e61(a6)
0075c2: 422e91a0     clr.b      -$6e60(a6)
0075c6: 486e91c0     pea.l      -$6e40(a6)
0075ca: 7000         moveq      #$0, d0
0075cc: 102f000c     move.b     $c(a7), d0
0075d0: e588         lsl.l      #$2, d0
0075d2: 41ee9a6e     lea.l      -$6592(a6), a0
0075d6: 30700800     movea.w    (a0, d0.l), a0
0075da: 2208         move.l     a0, d1
0075dc: 203c0000ff05 move.l     #$ff05, d0
0075e2: 61000ab2     bsr.w      $8096
0075e6: 588f         addq.l     #$4, a7
0075e8: 2f400010     move.l     d0, $10(a7)
0075ec: 6c08         bge.b      $75f6
0075ee: 70ff         moveq      #$ff, d0
0075f0: 2f40000c     move.l     d0, $c(a7)
0075f4: 6038         bra.b      $762e
0075f6: 2f2f0010     move.l     $10(a7), -(a7)
0075fa: 7000         moveq      #$0, d0
0075fc: 102f000c     move.b     $c(a7), d0
007600: e588         lsl.l      #$2, d0
007602: 41ee9a6e     lea.l      -$6592(a6), a0
007606: 30700800     movea.w    (a0, d0.l), a0
00760a: 2208         move.l     a0, d1
00760c: 203c0000ff06 move.l     #$ff06, d0
007612: 61000a82     bsr.w      $8096
007616: 588f         addq.l     #$4, a7
007618: 2f40000c     move.l     d0, $c(a7)
00761c: 6dd0         blt.b      $75ee
00761e: 2f6f0004000c move.l     $4(a7), $c(a7)
007624: 4aaf0004     tst.l      $4(a7)
007628: 6c04         bge.b      $762e
00762a: 2d57800c     move.l     (a7), -$7ff4(a6)
00762e: 202f000c     move.l     $c(a7), d0
007632: 4fef0038     lea.l      $38(a7), a7
007636: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
00763c: 4e5d         unlk       a5
00763e: 4e75         rts        
007640: 2f25         move.l     -(a5), -(a7)
007642: 7300         .dc.w      $7300
007644: 4e550000     link.w     a5, #$0
007648: 48e7c080     movem.l    d0-d1/a0, -(a7)
00764c: 7002         moveq      #$2, d0
00764e: b0ae9a3c     cmp.l      -$65c4(a6), d0
007652: 6c0c         bge.b      $7660
007654: 2217         move.l     (a7), d1
007656: 41fa052c     lea.l      $7b84(pc), a0
00765a: 2008         move.l     a0, d0
00765c: 61001360     bsr.w      $89be
007660: 0c9700000106 cmpi.l     #$106, (a7)
007666: 6608         bne.b      $7670
007668: 7001         moveq      #$1, d0
00766a: 2d4091dc     move.l     d0, -$6e24(a6)
00766e: 600e         bra.b      $767e
007670: 4aae91e0     tst.l      -$6e20(a6)
007674: 6708         beq.b      $767e
007676: 2017         move.l     (a7), d0
007678: 206e91e0     movea.l    -$6e20(a6), a0
00767c: 4e90         jsr        (a0)
00767e: 7000         moveq      #$0, d0
007680: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007686: 4e5d         unlk       a5
007688: 4e75         rts        
00768a: 4e550000     link.w     a5, #$0
00768e: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
007692: 4fefff58     lea.l      -$a8(a7), a7
007696: 6010         bra.b      $76a8
007698: 08ef000600de bset.b     #$6, $de(a7)
00769e: 601c         bra.b      $76bc
0076a0: 08ef000700de bset.b     #$7, $de(a7)
0076a6: 6014         bra.b      $76bc
0076a8: 202f00e0     move.l     $e0(a7), d0
0076ac: 0c80a95acd81 cmpi.l     #$a95acd81, d0
0076b2: 67e4         beq.b      $7698
0076b4: 0c80a95acd82 cmpi.l     #$a95acd82, d0
0076ba: 67e4         beq.b      $76a0
0076bc: 41ef0094     lea.l      $94(a7), a0
0076c0: 2208         move.l     a0, d1
0076c2: 202f00ac     move.l     $ac(a7), d0
0076c6: 610006ae     bsr.w      $7d76
0076ca: 2f400028     move.l     d0, $28(a7)
0076ce: 6700015c     beq.w      $782c
0076d2: 206f0028     movea.l    $28(a7), a0
0076d6: 0c10005f     cmpi.b     #$5f, (a0)
0076da: 66000150     bne.w      $782c
0076de: 2f6f002800ac move.l     $28(a7), $ac(a7)
0076e4: 2d6f00ac9a58 move.l     $ac(a7), -$65a8(a6)
0076ea: 41ef0094     lea.l      $94(a7), a0
0076ee: 2d489a4c     move.l     a0, -$65b4(a6)
0076f2: 41ef0094     lea.l      $94(a7), a0
0076f6: 2008         move.l     a0, d0
0076f8: 610006c2     bsr.w      $7dbc
0076fc: 3f40002c     move.w     d0, $2c(a7)
007700: 6c0c         bge.b      $770e
007702: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
00770a: 60000242     bra.w      $794e
00770e: 422f0052     clr.b      $52(a7)
007712: 41ef0046     lea.l      $46(a7), a0
007716: 2208         move.l     a0, d1
007718: 202f00ac     move.l     $ac(a7), d0
00771c: 61000724     bsr.w      $7e42
007720: 2f400028     move.l     d0, $28(a7)
007724: 67000106     beq.w      $782c
007728: 1f6f00490051 move.b     $49(a7), $51(a7)
00772e: 2f6f002800ac move.l     $28(a7), $ac(a7)
007734: 302f002c     move.w     $2c(a7), d0
007738: 48c0         ext.l      d0
00773a: e588         lsl.l      #$2, d0
00773c: 41ee9a6e     lea.l      -$6592(a6), a0
007740: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
007746: 660000b6     bne.w      $77fe
00774a: 486f0094     pea.l      $94(a7)
00774e: 41fa0464     lea.l      $7bb4(pc), a0
007752: 2208         move.l     a0, d1
007754: 41ef0078     lea.l      $78(a7), a0
007758: 2008         move.l     a0, d0
00775a: 6100126a     bsr.w      $89c6
00775e: 588f         addq.l     #$4, a7
007760: 7001         moveq      #$1, d0
007762: b0ae9a3c     cmp.l      -$65c4(a6), d0
007766: 6c10         bge.b      $7778
007768: 41ef0074     lea.l      $74(a7), a0
00776c: 2208         move.l     a0, d1
00776e: 41fa0447     lea.l      $7bb7(pc), a0
007772: 2008         move.l     a0, d0
007774: 61001248     bsr.w      $89be
007778: 7203         moveq      #$3, d1
00777a: 41ef0074     lea.l      $74(a7), a0
00777e: 2008         move.l     a0, d0
007780: 61001284     bsr.w      $8a06
007784: 322f002c     move.w     $2c(a7), d1
007788: 48c1         ext.l      d1
00778a: e589         lsl.l      #$2, d1
00778c: 41ee9a6e     lea.l      -$6592(a6), a0
007790: 31801800     move.w     d0, (a0, d1.l)
007794: 6c30         bge.b      $77c6
007796: 7001         moveq      #$1, d0
007798: b0ae9a3c     cmp.l      -$65c4(a6), d0
00779c: 6c0001b0     bge.w      $794e
0077a0: 302f002c     move.w     $2c(a7), d0
0077a4: 48c0         ext.l      d0
0077a6: e588         lsl.l      #$2, d0
0077a8: 41ee9a6e     lea.l      -$6592(a6), a0
0077ac: 30700800     movea.w    (a0, d0.l), a0
0077b0: 2f08         move.l     a0, -(a7)
0077b2: 222f004a     move.l     $4a(a7), d1
0077b6: 41fa0418     lea.l      $7bd0(pc), a0
0077ba: 2008         move.l     a0, d0
0077bc: 61001200     bsr.w      $89be
0077c0: 588f         addq.l     #$4, a7
0077c2: 6000018a     bra.w      $794e
0077c6: 302f002c     move.w     $2c(a7), d0
0077ca: 48c0         ext.l      d0
0077cc: e588         lsl.l      #$2, d0
0077ce: 41ee9a6e     lea.l      -$6592(a6), a0
0077d2: 2400         move.l     d0, d2
0077d4: 42a7         clr.l      -(a7)
0077d6: 302f0030     move.w     $30(a7), d0
0077da: 48c0         ext.l      d0
0077dc: e588         lsl.l      #$2, d0
0077de: 43ee9a6e     lea.l      -$6592(a6), a1
0077e2: 32710800     movea.w    (a1, d0.l), a1
0077e6: 2209         move.l     a1, d1
0077e8: 203c0000ff0e move.l     #$ff0e, d0
0077ee: 61000842     bsr.w      $8032
0077f2: 588f         addq.l     #$4, a7
0077f4: 2240         movea.l    d0, a1
0077f6: 7000         moveq      #$0, d0
0077f8: 1011         move.b     (a1), d0
0077fa: 31802802     move.w     d0, $2(a0, d2.l)
0077fe: 302f002c     move.w     $2c(a7), d0
007802: 48c0         ext.l      d0
007804: e588         lsl.l      #$2, d0
007806: 41ee9a6e     lea.l      -$6592(a6), a0
00780a: 30300802     move.w     $2(a0, d0.l), d0
00780e: 48c0         ext.l      d0
007810: b0af0046     cmp.l      $46(a7), d0
007814: 6642         bne.b      $7858
007816: 7001         moveq      #$1, d0
007818: b0ae9a3c     cmp.l      -$65c4(a6), d0
00781c: 6c0e         bge.b      $782c
00781e: 222f00ac     move.l     $ac(a7), d1
007822: 41fa03bf     lea.l      $7be3(pc), a0
007826: 2008         move.l     a0, d0
007828: 61001194     bsr.w      $89be
00782c: 306f00de     movea.w    $de(a7), a0
007830: 2f08         move.l     a0, -(a7)
007832: 306f00de     movea.w    $de(a7), a0
007836: 2f08         move.l     a0, -(a7)
007838: 2f2f00dc     move.l     $dc(a7), -(a7)
00783c: 2f2f00dc     move.l     $dc(a7), -(a7)
007840: 2f2f00dc     move.l     $dc(a7), -(a7)
007844: 222f00c0     move.l     $c0(a7), d1
007848: 202f00bc     move.l     $bc(a7), d0
00784c: 61001208     bsr.w      $8a56
007850: 4fef0014     lea.l      $14(a7), a7
007854: 6000030a     bra.w      $7b60
007858: 4a6e9a60     tst.w      -$65a0(a6)
00785c: 6608         bne.b      $7866
00785e: 61001d04     bsr.w      $9564
007862: 3d409a60     move.w     d0, -$65a0(a6)
007866: 42ae91e0     clr.l      -$6e20(a6)
00786a: 306e9a60     movea.w    -$65a0(a6), a0
00786e: 2008         move.l     a0, d0
007870: 61000776     bsr.w      $7fe8
007874: 2d4091e0     move.l     d0, -$6e20(a6)
007878: 7001         moveq      #$1, d0
00787a: b0ae9a3c     cmp.l      -$65c4(a6), d0
00787e: 6c0e         bge.b      $788e
007880: 222e91e0     move.l     -$6e20(a6), d1
007884: 41fa0384     lea.l      $7c0a(pc), a0
007888: 2008         move.l     a0, d0
00788a: 61001132     bsr.w      $89be
00788e: 41fafdb4     lea.l      $7644(pc), a0
007892: 2008         move.l     a0, d0
007894: 610002d8     bsr.w      $7b6e
007898: 306f00de     movea.w    $de(a7), a0
00789c: 2f08         move.l     a0, -(a7)
00789e: 42a7         clr.l      -(a7)
0078a0: 42a7         clr.l      -(a7)
0078a2: 2f2f00dc     move.l     $dc(a7), -(a7)
0078a6: 486e9a40     pea.l      -$65c0(a6)
0078aa: 41fa0374     lea.l      $7c20(pc), a0
0078ae: 2208         move.l     a0, d1
0078b0: 41fa1c56     lea.l      $9508(pc), a0
0078b4: 2008         move.l     a0, d0
0078b6: 6100119e     bsr.w      $8a56
0078ba: 4fef0014     lea.l      $14(a7), a7
0078be: 2f40005e     move.l     d0, $5e(a7)
0078c2: 6f00008a     ble.w      $794e
0078c6: 2f7c000200000056 move.l     #$20000, $56(a7)
0078ce: 42af005a     clr.l      $5a(a7)
0078d2: 2f6f00d40062 move.l     $d4(a7), $62(a7)
0078d8: 3f6f00da0066 move.w     $da(a7), $66(a7)
0078de: 3f6f00de0068 move.w     $de(a7), $68(a7)
0078e4: 3f6f002c006c move.w     $2c(a7), $6c(a7)
0078ea: 3f6e9a60006a move.w     -$65a0(a6), $6a(a7)
0078f0: 7001         moveq      #$1, d0
0078f2: 2f40004a     move.l     d0, $4a(a7)
0078f6: 42af0042     clr.l      $42(a7)
0078fa: 6004         bra.b      $7900
0078fc: 52af004a     addq.l     #$1, $4a(a7)
007900: 202f0042     move.l     $42(a7), d0
007904: 52af0042     addq.l     #$1, $42(a7)
007908: e588         lsl.l      #$2, d0
00790a: 206f00cc     movea.l    $cc(a7), a0
00790e: 4ab00800     tst.l      (a0, d0.l)
007912: 66e8         bne.b      $78fc
007914: 52af004a     addq.l     #$1, $4a(a7)
007918: 42af0042     clr.l      $42(a7)
00791c: 6004         bra.b      $7922
00791e: 52af004a     addq.l     #$1, $4a(a7)
007922: 202f0042     move.l     $42(a7), d0
007926: 52af0042     addq.l     #$1, $42(a7)
00792a: e588         lsl.l      #$2, d0
00792c: 206f00d0     movea.l    $d0(a7), a0
007930: 4ab00800     tst.l      (a0, d0.l)
007934: 66e8         bne.b      $791e
007936: 52af004a     addq.l     #$1, $4a(a7)
00793a: 202f004a     move.l     $4a(a7), d0
00793e: e788         lsl.l      #$3, d0
007940: 7214         moveq      #$14, d1
007942: d081         add.l      d1, d0
007944: 61001134     bsr.w      $8a7a
007948: 2440         movea.l    d0, a2
00794a: 4a80         tst.l      d0
00794c: 6606         bne.b      $7954
00794e: 70ff         moveq      #$ff, d0
007950: 6000020e     bra.w      $7b60
007954: 202f004a     move.l     $4a(a7), d0
007958: 5280         addq.l     #$1, d0
00795a: 2480         move.l     d0, (a2)
00795c: 257c000000080004 move.l     #$8, $4(a2)
007964: 41ef0020     lea.l      $20(a7), a0
007968: 25480008     move.l     a0, $8(a2)
00796c: 700c         moveq      #$c, d0
00796e: d08a         add.l      a2, d0
007970: 2640         movea.l    d0, a3
007972: 41ef004e     lea.l      $4e(a7), a0
007976: 27480004     move.l     a0, $4(a3)
00797a: 26bc00000020 move.l     #$20, (a3)
007980: 508b         addq.l     #$8, a3
007982: 276f00ac0004 move.l     $ac(a7), $4(a3)
007988: 202f00ac     move.l     $ac(a7), d0
00798c: 6100121a     bsr.w      $8ba8
007990: 5280         addq.l     #$1, d0
007992: 2680         move.l     d0, (a3)
007994: 508b         addq.l     #$8, a3
007996: 42af0042     clr.l      $42(a7)
00799a: 605a         bra.b      $79f6
00799c: 7001         moveq      #$1, d0
00799e: b0ae9a3c     cmp.l      -$65c4(a6), d0
0079a2: 6c26         bge.b      $79ca
0079a4: 222f0042     move.l     $42(a7), d1
0079a8: 41fa027d     lea.l      $7c27(pc), a0
0079ac: 2008         move.l     a0, d0
0079ae: 6100100e     bsr.w      $89be
0079b2: 202f0042     move.l     $42(a7), d0
0079b6: e588         lsl.l      #$2, d0
0079b8: 206f00cc     movea.l    $cc(a7), a0
0079bc: 22300800     move.l     (a0, d0.l), d1
0079c0: 41fa0285     lea.l      $7c47(pc), a0
0079c4: 2008         move.l     a0, d0
0079c6: 61000ff6     bsr.w      $89be
0079ca: 202f0042     move.l     $42(a7), d0
0079ce: e588         lsl.l      #$2, d0
0079d0: 206f00cc     movea.l    $cc(a7), a0
0079d4: 277008000004 move.l     (a0, d0.l), $4(a3)
0079da: 202f0042     move.l     $42(a7), d0
0079de: 52af0042     addq.l     #$1, $42(a7)
0079e2: e588         lsl.l      #$2, d0
0079e4: 206f00cc     movea.l    $cc(a7), a0
0079e8: 20300800     move.l     (a0, d0.l), d0
0079ec: 610011ba     bsr.w      $8ba8
0079f0: 5280         addq.l     #$1, d0
0079f2: 2680         move.l     d0, (a3)
0079f4: 508b         addq.l     #$8, a3
0079f6: 202f0042     move.l     $42(a7), d0
0079fa: e588         lsl.l      #$2, d0
0079fc: 206f00cc     movea.l    $cc(a7), a0
007a00: 4ab00800     tst.l      (a0, d0.l)
007a04: 6696         bne.b      $799c
007a06: 41fa024e     lea.l      $7c56(pc), a0
007a0a: 27480004     move.l     a0, $4(a3)
007a0e: 26bc00000001 move.l     #$1, (a3)
007a14: 508b         addq.l     #$8, a3
007a16: 42af0042     clr.l      $42(a7)
007a1a: 604c         bra.b      $7a68
007a1c: 7001         moveq      #$1, d0
007a1e: b0ae9a3c     cmp.l      -$65c4(a6), d0
007a22: 6c18         bge.b      $7a3c
007a24: 202f0042     move.l     $42(a7), d0
007a28: e588         lsl.l      #$2, d0
007a2a: 206f00d0     movea.l    $d0(a7), a0
007a2e: 22300800     move.l     (a0, d0.l), d1
007a32: 41fa0223     lea.l      $7c57(pc), a0
007a36: 2008         move.l     a0, d0
007a38: 61000f84     bsr.w      $89be
007a3c: 202f0042     move.l     $42(a7), d0
007a40: e588         lsl.l      #$2, d0
007a42: 206f00d0     movea.l    $d0(a7), a0
007a46: 277008000004 move.l     (a0, d0.l), $4(a3)
007a4c: 202f0042     move.l     $42(a7), d0
007a50: 52af0042     addq.l     #$1, $42(a7)
007a54: e588         lsl.l      #$2, d0
007a56: 206f00d0     movea.l    $d0(a7), a0
007a5a: 20300800     move.l     (a0, d0.l), d0
007a5e: 61001148     bsr.w      $8ba8
007a62: 5280         addq.l     #$1, d0
007a64: 2680         move.l     d0, (a3)
007a66: 508b         addq.l     #$8, a3
007a68: 202f0042     move.l     $42(a7), d0
007a6c: e588         lsl.l      #$2, d0
007a6e: 206f00d0     movea.l    $d0(a7), a0
007a72: 4ab00800     tst.l      (a0, d0.l)
007a76: 66a4         bne.b      $7a1c
007a78: 41fa01ec     lea.l      $7c66(pc), a0
007a7c: 27480004     move.l     a0, $4(a3)
007a80: 26bc00000001 move.l     #$1, (a3)
007a86: 508b         addq.l     #$8, a3
007a88: 7001         moveq      #$1, d0
007a8a: 6100171a     bsr.w      $91a6
007a8e: 42ae91d8     clr.l      -$6e28(a6)
007a92: 600a         bra.b      $7a9e
007a94: 52ae91d8     addq.l     #$1, -$6e28(a6)
007a98: 7001         moveq      #$1, d0
007a9a: 6100170a     bsr.w      $91a6
007a9e: 4aae91dc     tst.l      -$6e24(a6)
007aa2: 67f0         beq.b      $7a94
007aa4: 7064         moveq      #$64, d0
007aa6: b0ae91d8     cmp.l      -$6e28(a6), d0
007aaa: 6e0e         bgt.b      $7aba
007aac: 222e91d8     move.l     -$6e28(a6), d1
007ab0: 41fa01b5     lea.l      $7c67(pc), a0
007ab4: 2008         move.l     a0, d0
007ab6: 61000f06     bsr.w      $89be
007aba: 4aae91e0     tst.l      -$6e20(a6)
007abe: 6708         beq.b      $7ac8
007ac0: 202e91e0     move.l     -$6e20(a6), d0
007ac4: 610000a8     bsr.w      $7b6e
007ac8: 4852         pea.l      (a2)
007aca: 302f0030     move.w     $30(a7), d0
007ace: 48c0         ext.l      d0
007ad0: e588         lsl.l      #$2, d0
007ad2: 41ee9a6e     lea.l      -$6592(a6), a0
007ad6: 30700800     movea.w    (a0, d0.l), a0
007ada: 2208         move.l     a0, d1
007adc: 203c0000ff05 move.l     #$ff05, d0
007ae2: 610005b2     bsr.w      $8096
007ae6: 588f         addq.l     #$4, a7
007ae8: 2f40003a     move.l     d0, $3a(a7)
007aec: 6c08         bge.b      $7af6
007aee: 70ff         moveq      #$ff, d0
007af0: 2f40002e     move.l     d0, $2e(a7)
007af4: 6060         bra.b      $7b56
007af6: 2f2f003a     move.l     $3a(a7), -(a7)
007afa: 302f0030     move.w     $30(a7), d0
007afe: 48c0         ext.l      d0
007b00: e588         lsl.l      #$2, d0
007b02: 41ee9a6e     lea.l      -$6592(a6), a0
007b06: 30700800     movea.w    (a0, d0.l), a0
007b0a: 2208         move.l     a0, d1
007b0c: 203c0000ff06 move.l     #$ff06, d0
007b12: 61000582     bsr.w      $8096
007b16: 588f         addq.l     #$4, a7
007b18: 2f40002e     move.l     d0, $2e(a7)
007b1c: 6c10         bge.b      $7b2e
007b1e: 70ff         moveq      #$ff, d0
007b20: 2f40002e     move.l     d0, $2e(a7)
007b24: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
007b2c: 6028         bra.b      $7b56
007b2e: 2f6f0024002e move.l     $24(a7), $2e(a7)
007b34: 4aaf002e     tst.l      $2e(a7)
007b38: 6c16         bge.b      $7b50
007b3a: 223c00008000 move.l     #$8000, d1
007b40: 202f005e     move.l     $5e(a7), d0
007b44: 61001960     bsr.w      $94a6
007b48: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
007b4e: 6006         bra.b      $7b56
007b50: 1f6f002d002e move.b     $2d(a7), $2e(a7)
007b56: 200a         move.l     a2, d0
007b58: 61000f2c     bsr.w      $8a86
007b5c: 202f002e     move.l     $2e(a7), d0
007b60: 4fef00a8     lea.l      $a8(a7), a7
007b64: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
007b6a: 4e5d         unlk       a5
007b6c: 4e75         rts        
007b6e: 4e550000     link.w     a5, #$0
007b72: 48e78000     movem.l    d0, -(a7)
007b76: 2d579a7e     move.l     (a7), -$6582(a6)
007b7a: 2017         move.l     (a7), d0
007b7c: 61001a1e     bsr.w      $959c
007b80: 4e5d         unlk       a5
007b82: 4e75         rts        
007b84: 5369676e     subq.w     #$1, $676e(a1)
007b88: 616c         bsr.b      $7bf6
007b8a: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
007b94: 2063         movea.l    -(a3), a0
007b96: 6f64         ble.b      $7bfc
007b98: 653d         bcs.b      $7bd7
007b9a: 2025         move.l     -(a5), d0
007b9c: 780d         moveq      #$d, d4
007b9e: 007365727665 ori.w      #$6572, $65(a3, d7.w)
007ba4: 7200         moveq      #$0, d1
007ba6: 3200         move.w     d0, d1
007ba8: 3000         move.w     d0, d0
007baa: 2f633000     move.l     -(a3), $3000(a7)
007bae: 3000         move.w     d0, d0
007bb0: 3000         move.w     d0, d0
007bb2: 3000         move.w     d0, d0
007bb4: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
007bba: 6e20         bgt.b      $7bdc
007bbc: 6361         bls.b      $7c1f
007bbe: 726f         moveq      #$6f, d1
007bc0: 7370         .dc.w      $7370
007bc2: 6174         bsr.b      $7c38
007bc4: 6820         bvc.b      $7be6
007bc6: 6e61         bgt.b      $7c29
007bc8: 6d65         blt.b      $7c2f
007bca: 6420         bcc.b      $7bec
007bcc: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
007bd2: 7468         moveq      #$68, d2
007bd4: 6964         bvs.b      $7c3a
007bd6: 5b25         subq.b     #$5, -(a5)
007bd8: 645d         bcc.b      $7c37
007bda: 206d6772     movea.l    $6772(a5), a0
007bde: 3d25         move.w     -(a5), -(a6)
007be0: 640d         bcc.b      $7bef
007be2: 00666f72     ori.w      #$6f72, -(a6)
007be6: 6b69         bmi.b      $7c51
007be8: 6e67         bgt.b      $7c51
007bea: 2070726f     movea.l    $6f(a0, d7.w), a0
007bee: 6365         bls.b      $7c55
007bf0: 7373         .dc.w      $7373
007bf2: 206c6f63     movea.l    $6f63(a4), a0
007bf6: 616c         bsr.b      $7c64
007bf8: 6c79         bge.b      $7c73
007bfa: 2c20         move.l     -(a0), d6
007bfc: 6d6f         blt.b      $7c6d
007bfe: 646e         bcc.b      $7c6e
007c00: 616d         bsr.b      $7c6f
007c02: 6520         bcs.b      $7c24
007c04: 3d20         move.w     -(a0), -(a6)
007c06: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
007c0c: 6420         bcc.b      $7c2e
007c0e: 6963         bvs.b      $7c73
007c10: 7074         moveq      #$74, d0
007c12: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
007c1c: 25780d007365 move.l     $d00.w, $7365(a2)
007c22: 7276         moveq      #$76, d1
007c24: 6572         bcs.b      $7c98
007c26: 00656e74     ori.w      #$6e74, -(a5)
007c2a: 6572         bcs.b      $7c9e
007c2c: 6564         bcs.b      $7c92
007c2e: 2061         movea.l    -(a1), a0
007c30: 7267         moveq      #$67, d1
007c32: 6c69         bge.b      $7c9d
007c34: 7374         .dc.w      $7374
007c36: 206c6f6f     movea.l    $6f6f(a4), a0
007c3a: 702c         moveq      #$2c, d0
007c3c: 20696e64     movea.l    $6e64(a1), a0
007c40: 6578         bcs.b      $7cba
007c42: 3d25         move.w     -(a5), -(a6)
007c44: 640d         bcc.b      $7c53
007c46: 00415247     ori.w      #$5247, d1
007c4a: 4c49         .dc.w      $4c49
007c4c: 5354         subq.w     #$1, (a4)
007c4e: 5b695d3d     subq.w     #$5, $5d3d(a1)
007c52: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
007c58: 4e564c49     link.w     a6, #$4c49
007c5c: 5354         subq.w     #$1, (a4)
007c5e: 5b695d3d     subq.w     #$5, $5d3d(a1)
007c62: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
007c68: 796e         .dc.w      $796e
007c6a: 6368         bls.b      $7cd4
007c6c: 726f         moveq      #$6f, d1
007c6e: 6e69         bgt.b      $7cd9
007c70: 7369         .dc.w      $7369
007c72: 6e67         bgt.b      $7cdb
007c74: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
007c7e: 6f6b         ble.b      $7ceb
007c80: 2025         move.l     -(a5), d0
007c82: 6420         bcc.b      $7ca4
007c84: 7469         moveq      #$69, d2
007c86: 636b         bls.b      $7cf3
007c88: 730d         .dc.w      $730d
007c8a: 00004e55     ori.b      #$55, d0
007c8e: 000048e7     ori.b      #$e7, d0
007c92: c080         and.l      d0, d0
007c94: 4fefffdc     lea.l      -$24(a7), a7
007c98: 61000374     bsr.w      $800e
007c9c: 2f400014     move.l     d0, $14(a7)
007ca0: 206f0014     movea.l    $14(a7), a0
007ca4: 2f28001a     move.l     $1a(a0), -(a7)
007ca8: 41fa00c8     lea.l      $7d72(pc), a0
007cac: 2208         move.l     a0, d1
007cae: 41ef0004     lea.l      $4(a7), a0
007cb2: 2008         move.l     a0, d0
007cb4: 61000d10     bsr.w      $89c6
007cb8: 588f         addq.l     #$4, a7
007cba: 7203         moveq      #$3, d1
007cbc: 41d7         lea.l      (a7), a0
007cbe: 2008         move.l     a0, d0
007cc0: 61000d44     bsr.w      $8a06
007cc4: 2f400020     move.l     d0, $20(a7)
007cc8: 6c000016     bge.w      $7ce0
007ccc: 202f0024     move.l     $24(a7), d0
007cd0: 61000048     bsr.w      $7d1a
007cd4: 4fef0024     lea.l      $24(a7), a7
007cd8: 60000036     bra.w      $7d10
007cdc: 6000002e     bra.w      $7d0c
007ce0: 2f2f0024     move.l     $24(a7), -(a7)
007ce4: 222f0024     move.l     $24(a7), d1
007ce8: 203c0000ff20 move.l     #$ff20, d0
007cee: 61000342     bsr.w      $8032
007cf2: 588f         addq.l     #$4, a7
007cf4: 2f40001c     move.l     d0, $1c(a7)
007cf8: 202f0020     move.l     $20(a7), d0
007cfc: 61000d38     bsr.w      $8a36
007d00: 202f001c     move.l     $1c(a7), d0
007d04: 4fef0024     lea.l      $24(a7), a7
007d08: 60000006     bra.w      $7d10
007d0c: 4fef0024     lea.l      $24(a7), a7
007d10: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007d16: 4e5d         unlk       a5
007d18: 4e75         rts        
007d1a: 4e550000     link.w     a5, #$0
007d1e: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
007d22: 2800         move.l     d0, d4
007d24: 7204         moveq      #$4, d1
007d26: 7044         moveq      #$44, d0
007d28: 610015a4     bsr.w      $92ce
007d2c: 2440         movea.l    d0, a2
007d2e: 3a1a         move.w     (a2)+, d5
007d30: 548a         addq.l     #$2, a2
007d32: 6000002a     bra.w      $7d5e
007d36: 4a92         tst.l      (a2)
007d38: 66000006     bne.w      $7d40
007d3c: 6000001e     bra.w      $7d5c
007d40: 2052         movea.l    (a2), a0
007d42: 7000         moveq      #$0, d0
007d44: 3010         move.w     (a0), d0
007d46: 3204         move.w     d4, d1
007d48: 48c1         ext.l      d1
007d4a: b081         cmp.l      d1, d0
007d4c: 6600000e     bne.w      $7d5c
007d50: 2052         movea.l    (a2), a0
007d52: 7000         moveq      #$0, d0
007d54: 30280002     move.w     $2(a0), d0
007d58: 6000000a     bra.w      $7d64
007d5c: 588a         addq.l     #$4, a2
007d5e: 5345         subq.w     #$1, d5
007d60: 6c00ffd4     bge.w      $7d36
007d64: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
007d6a: 4e5d         unlk       a5
007d6c: 4e75         rts        
007d6e: 4afb         .dc.w      $4afb
007d70: 00042f25     ori.b      #$25, d4
007d74: 7300         .dc.w      $7300
007d76: 4e550000     link.w     a5, #$0
007d7a: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
007d7e: 2440         movea.l    d0, a2
007d80: 2641         movea.l    d1, a3
007d82: 558f         subq.l     #$2, a7
007d84: 1012         move.b     (a2), d0
007d86: 1680         move.b     d0, (a3)
007d88: 0c00002f     cmpi.b     #$2f, d0
007d8c: 6704         beq.b      $7d92
007d8e: 7000         moveq      #$0, d0
007d90: 601e         bra.b      $7db0
007d92: 528a         addq.l     #$1, a2
007d94: 528b         addq.l     #$1, a3
007d96: 1012         move.b     (a2), d0
007d98: 1680         move.b     d0, (a3)
007d9a: 1f400001     move.b     d0, $1(a7)
007d9e: 0c00002f     cmpi.b     #$2f, d0
007da2: 6706         beq.b      $7daa
007da4: 4a2f0001     tst.b      $1(a7)
007da8: 66e8         bne.b      $7d92
007daa: 4213         clr.b      (a3)
007dac: 528a         addq.l     #$1, a2
007dae: 200a         move.l     a2, d0
007db0: 548f         addq.l     #$2, a7
007db2: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
007db8: 4e5d         unlk       a5
007dba: 4e75         rts        
007dbc: 4e550000     link.w     a5, #$0
007dc0: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
007dc4: 2440         movea.l    d0, a2
007dc6: 4aae9a62     tst.l      -$659e(a6)
007dca: 6608         bne.b      $7dd4
007dcc: 61000240     bsr.w      $800e
007dd0: 2d409a62     move.l     d0, -$659e(a6)
007dd4: 7800         moveq      #$0, d4
007dd6: 601a         bra.b      $7df2
007dd8: 2004         move.l     d4, d0
007dda: e588         lsl.l      #$2, d0
007ddc: 206e9a62     movea.l    -$659e(a6), a0
007de0: 2230081a     move.l     $1a(a0, d0.l), d1
007de4: 200a         move.l     a2, d0
007de6: 5280         addq.l     #$1, d0
007de8: 61000d4a     bsr.w      $8b34
007dec: 4a80         tst.l      d0
007dee: 6710         beq.b      $7e00
007df0: 5284         addq.l     #$1, d4
007df2: 206e9a62     movea.l    -$659e(a6), a0
007df6: 30280010     move.w     $10(a0), d0
007dfa: 48c0         ext.l      d0
007dfc: b084         cmp.l      d4, d0
007dfe: 6ed8         bgt.b      $7dd8
007e00: 206e9a62     movea.l    -$659e(a6), a0
007e04: 30280010     move.w     $10(a0), d0
007e08: 48c0         ext.l      d0
007e0a: b084         cmp.l      d4, d0
007e0c: 6e04         bgt.b      $7e12
007e0e: 70ff         moveq      #$ff, d0
007e10: 6002         bra.b      $7e14
007e12: 2004         move.l     d4, d0
007e14: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
007e1a: 4e5d         unlk       a5
007e1c: 4e75         rts        
007e1e: 4e550000     link.w     a5, #$0
007e22: 48e7c080     movem.l    d0-d1/a0, -(a7)
007e26: 202f0004     move.l     $4(a7), d0
007e2a: e588         lsl.l      #$2, d0
007e2c: 2057         movea.l    (a7), a0
007e2e: 2070082a     movea.l    $2a(a0, d0.l), a0
007e32: 7000         moveq      #$0, d0
007e34: 10280012     move.b     $12(a0), d0
007e38: 4ced0100fffc movem.l    -$4(a5), a0
007e3e: 4e5d         unlk       a5
007e40: 4e75         rts        
007e42: 4e550000     link.w     a5, #$0
007e46: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
007e4a: 2440         movea.l    d0, a2
007e4c: 4fefffda     lea.l      -$26(a7), a7
007e50: 200a         move.l     a2, d0
007e52: 61000110     bsr.w      $7f64
007e56: 2440         movea.l    d0, a2
007e58: 0c12005f     cmpi.b     #$5f, (a2)
007e5c: 660000f6     bne.w      $7f54
007e60: 102a0001     move.b     $1(a2), d0
007e64: 1f400005     move.b     d0, $5(a7)
007e68: 0c000041     cmpi.b     #$41, d0
007e6c: 6d0000a4     blt.w      $7f12
007e70: 4aae9a66     tst.l      -$659a(a6)
007e74: 6626         bne.b      $7e9c
007e76: 7200         moveq      #$0, d1
007e78: 41fa017e     lea.l      $7ff8(pc), a0
007e7c: 2008         move.l     a0, d0
007e7e: 610015c6     bsr.w      $9446
007e82: 2f400022     move.l     d0, $22(a7)
007e86: 72ff         moveq      #$ff, d1
007e88: b280         cmp.l      d0, d1
007e8a: 6606         bne.b      $7e92
007e8c: 70ff         moveq      #$ff, d0
007e8e: 600000c6     bra.w      $7f56
007e92: 7030         moveq      #$30, d0
007e94: d0af0022     add.l      $22(a7), d0
007e98: 2d409a66     move.l     d0, -$659a(a6)
007e9c: 41ef000a     lea.l      $a(a7), a0
007ea0: 2f480006     move.l     a0, $6(a7)
007ea4: 600c         bra.b      $7eb2
007ea6: 206f0006     movea.l    $6(a7), a0
007eaa: 52af0006     addq.l     #$1, $6(a7)
007eae: 10af0005     move.b     $5(a7), (a0)
007eb2: 528a         addq.l     #$1, a2
007eb4: 1012         move.b     (a2), d0
007eb6: 1f400005     move.b     d0, $5(a7)
007eba: 0c00005f     cmpi.b     #$5f, d0
007ebe: 66e6         bne.b      $7ea6
007ec0: 206f0006     movea.l    $6(a7), a0
007ec4: 4210         clr.b      (a0)
007ec6: 202e9a66     move.l     -$659a(a6), d0
007eca: 5480         addq.l     #$2, d0
007ecc: 2f40001e     move.l     d0, $1e(a7)
007ed0: 7800         moveq      #$0, d4
007ed2: 6030         bra.b      $7f04
007ed4: 41ef000a     lea.l      $a(a7), a0
007ed8: 2208         move.l     a0, d1
007eda: 202f001e     move.l     $1e(a7), d0
007ede: 61000c54     bsr.w      $8b34
007ee2: 4a80         tst.l      d0
007ee4: 6614         bne.b      $7efa
007ee6: 206f001e     movea.l    $1e(a7), a0
007eea: 7000         moveq      #$0, d0
007eec: 10280013     move.b     $13(a0), d0
007ef0: 206f002a     movea.l    $2a(a7), a0
007ef4: 2080         move.l     d0, (a0)
007ef6: 528a         addq.l     #$1, a2
007ef8: 6056         bra.b      $7f50
007efa: 06af00000014001e addi.l     #$14, $1e(a7)
007f02: 5284         addq.l     #$1, d4
007f04: 206e9a66     movea.l    -$659a(a6), a0
007f08: 3010         move.w     (a0), d0
007f0a: 48c0         ext.l      d0
007f0c: b084         cmp.l      d4, d0
007f0e: 6ec4         bgt.b      $7ed4
007f10: 6042         bra.b      $7f54
007f12: 4297         clr.l      (a7)
007f14: 6018         bra.b      $7f2e
007f16: 2017         move.l     (a7), d0
007f18: 720a         moveq      #$a, d1
007f1a: 61000f00     bsr.w      $8e1c
007f1e: 122f0005     move.b     $5(a7), d1
007f22: 4881         ext.w      d1
007f24: 48c1         ext.l      d1
007f26: d081         add.l      d1, d0
007f28: 7230         moveq      #$30, d1
007f2a: 9081         sub.l      d1, d0
007f2c: 2e80         move.l     d0, (a7)
007f2e: 528a         addq.l     #$1, a2
007f30: 1012         move.b     (a2), d0
007f32: 1f400005     move.b     d0, $5(a7)
007f36: 0c000030     cmpi.b     #$30, d0
007f3a: 6d08         blt.b      $7f44
007f3c: 0c2f00390005 cmpi.b     #$39, $5(a7)
007f42: 6fd2         ble.b      $7f16
007f44: 0c1a005f     cmpi.b     #$5f, (a2)+
007f48: 660a         bne.b      $7f54
007f4a: 206f002a     movea.l    $2a(a7), a0
007f4e: 2097         move.l     (a7), (a0)
007f50: 200a         move.l     a2, d0
007f52: 6002         bra.b      $7f56
007f54: 7000         moveq      #$0, d0
007f56: 4fef0026     lea.l      $26(a7), a7
007f5a: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
007f60: 4e5d         unlk       a5
007f62: 4e75         rts        
007f64: 4e550000     link.w     a5, #$0
007f68: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
007f6c: 2440         movea.l    d0, a2
007f6e: 518f         subq.l     #$8, a7
007f70: 0c12005f     cmpi.b     #$5f, (a2)
007f74: 6764         beq.b      $7fda
007f76: 0c120040     cmpi.b     #$40, (a2)
007f7a: 675e         beq.b      $7fda
007f7c: 0c120041     cmpi.b     #$41, (a2)
007f80: 6d58         blt.b      $7fda
007f82: 4aae9a6a     tst.l      -$6596(a6)
007f86: 6620         bne.b      $7fa8
007f88: 7200         moveq      #$0, d1
007f8a: 41fa0076     lea.l      $8002(pc), a0
007f8e: 2008         move.l     a0, d0
007f90: 610014b4     bsr.w      $9446
007f94: 2f400004     move.l     d0, $4(a7)
007f98: 72ff         moveq      #$ff, d1
007f9a: b280         cmp.l      d0, d1
007f9c: 673c         beq.b      $7fda
007f9e: 7030         moveq      #$30, d0
007fa0: d0af0004     add.l      $4(a7), d0
007fa4: 2d409a6a     move.l     d0, -$6596(a6)
007fa8: 202e9a6a     move.l     -$6596(a6), d0
007fac: 5480         addq.l     #$2, d0
007fae: 2e80         move.l     d0, (a7)
007fb0: 7800         moveq      #$0, d4
007fb2: 601a         bra.b      $7fce
007fb4: 220a         move.l     a2, d1
007fb6: 2017         move.l     (a7), d0
007fb8: 61000b7a     bsr.w      $8b34
007fbc: 4a80         tst.l      d0
007fbe: 6606         bne.b      $7fc6
007fc0: 7014         moveq      #$14, d0
007fc2: d097         add.l      (a7), d0
007fc4: 6016         bra.b      $7fdc
007fc6: 069700000032 addi.l     #$32, (a7)
007fcc: 5284         addq.l     #$1, d4
007fce: 206e9a6a     movea.l    -$6596(a6), a0
007fd2: 3010         move.w     (a0), d0
007fd4: 48c0         ext.l      d0
007fd6: b084         cmp.l      d4, d0
007fd8: 6eda         bgt.b      $7fb4
007fda: 200a         move.l     a2, d0
007fdc: 508f         addq.l     #$8, a7
007fde: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
007fe4: 4e5d         unlk       a5
007fe6: 4e75         rts        
007fe8: 4e550000     link.w     a5, #$0
007fec: 48e78000     movem.l    d0, -(a7)
007ff0: 202e9a7e     move.l     -$6582(a6), d0
007ff4: 4e5d         unlk       a5
007ff6: 4e75         rts        
007ff8: 6361         bls.b      $805b
007ffa: 725f         moveq      #$5f, d1
007ffc: 6e65         bgt.b      $8063
007ffe: 7464         moveq      #$64, d2
008000: 62006361     bhi.w      $e363
008004: 725f         moveq      #$5f, d1
008006: 6465         bcc.b      $806d
008008: 7669         moveq      #$69, d3
00800a: 6365         bls.b      $8071
00800c: 00002f08     ori.b      #$8, d0
008010: 207900000000 movea.l    $0.l, a0
008016: 41e80814     lea.l      $814(a0), a0
00801a: 2010         move.l     (a0), d0
00801c: 205f         movea.l    (a7)+, a0
00801e: 4e75         rts        
008020: 2f08         move.l     a0, -(a7)
008022: 207900000000 movea.l    $0.l, a0
008028: 41e80814     lea.l      $814(a0), a0
00802c: 2008         move.l     a0, d0
00802e: 205f         movea.l    (a7)+, a0
008030: 4e75         rts        
008032: 48e76080     movem.l    d1-d2/a0, -(a7)
008036: c141         exg.l      d0, d1
008038: 0c8100000002 cmpi.l     #$2, d1
00803e: 6716         beq.b      $8056
008040: 0c8100000005 cmpi.l     #$5, d1
008046: 670e         beq.b      $8056
008048: 206f0010     movea.l    $10(a7), a0
00804c: 2408         move.l     a0, d2
00804e: 4e40         trap       #$0
008050: 008d         .dc.w      $008d
008052: 60000056     bra.w      $80aa
008056: 206f0010     movea.l    $10(a7), a0
00805a: 2408         move.l     a0, d2
00805c: 4e40         trap       #$0
00805e: 008d         .dc.w      $008d
008060: 2202         move.l     d2, d1
008062: 60000046     bra.w      $80aa
008066: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
00806a: c141         exg.l      d0, d1
00806c: 206f0018     movea.l    $18(a7), a0
008070: 242f001c     move.l     $1c(a7), d2
008074: 262f0020     move.l     $20(a7), d3
008078: 4e40         trap       #$0
00807a: 008d         .dc.w      $008d
00807c: 60000068     bra.w      $80e6
008080: 48e76080     movem.l    d1-d2/a0, -(a7)
008084: c141         exg.l      d0, d1
008086: 206f0010     movea.l    $10(a7), a0
00808a: 242f0014     move.l     $14(a7), d2
00808e: 4e40         trap       #$0
008090: 008e         .dc.w      $008e
008092: 60000016     bra.w      $80aa
008096: 48e76080     movem.l    d1-d2/a0, -(a7)
00809a: c141         exg.l      d0, d1
00809c: 206f0010     movea.l    $10(a7), a0
0080a0: 2408         move.l     a0, d2
0080a2: 4e40         trap       #$0
0080a4: 008e         .dc.w      $008e
0080a6: 60000002     bra.w      $80aa
0080aa: 6408         bcc.b      $80b4
0080ac: 2d41800c     move.l     d1, -$7ff4(a6)
0080b0: 70ff         moveq      #$ff, d0
0080b2: 6002         bra.b      $80b6
0080b4: 2001         move.l     d1, d0
0080b6: 4cdf0106     movem.l    (a7)+, d1-d2/a0
0080ba: 4e75         rts        
0080bc: 6406         bcc.b      $80c4
0080be: 2d41800c     move.l     d1, -$7ff4(a6)
0080c2: 70ff         moveq      #$ff, d0
0080c4: 4cdf043e     movem.l    (a7)+, d1-d5/a2
0080c8: 4e75         rts        
0080ca: 6406         bcc.b      $80d2
0080cc: 2d41800c     move.l     d1, -$7ff4(a6)
0080d0: 70ff         moveq      #$ff, d0
0080d2: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
0080d6: 4e75         rts        
0080d8: 6406         bcc.b      $80e0
0080da: 2d41800c     move.l     d1, -$7ff4(a6)
0080de: 70ff         moveq      #$ff, d0
0080e0: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
0080e4: 4e75         rts        
0080e6: 6408         bcc.b      $80f0
0080e8: 2d41800c     move.l     d1, -$7ff4(a6)
0080ec: 70ff         moveq      #$ff, d0
0080ee: 6002         bra.b      $80f2
0080f0: 2001         move.l     d1, d0
0080f2: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
0080f6: 4e75         rts        
0080f8: 48e74000     movem.l    d1, -(a7)
0080fc: c141         exg.l      d0, d1
0080fe: 4e40         trap       #$0
008100: 005c6406     ori.w      #$6406, (a4)+
008104: 2d41800c     move.l     d1, -$7ff4(a6)
008108: 70ff         moveq      #$ff, d0
00810a: 4cdf0002     movem.l    (a7)+, d1
00810e: 4e75         rts        
008110: 48e740e0     movem.l    d1/a0-a2, -(a7)
008114: e340         asl.w      #$1, d0
008116: 207900000000 movea.l    $0.l, a0
00811c: 2268004c     movea.l    $4c(a0), a1
008120: 45e90168     lea.l      $168(a1), a2
008124: 30320000     move.w     (a2, d0.w), d0
008128: 660a         bne.b      $8134
00812a: 4cdf0702     movem.l    (a7)+, d1/a0-a2
00812e: 303cffff     move.w     #$ffff, d0
008132: 4e75         rts        
008134: 22680048     movea.l    $48(a0), a1
008138: b051         cmp.w      (a1), d0
00813a: 62f2         bhi.b      $812e
00813c: e540         asl.w      #$2, d0
00813e: d2c0         adda.w     d0, a1
008140: e448         lsr.w      #$2, d0
008142: 4a91         tst.l      (a1)
008144: 67e8         beq.b      $812e
008146: 2251         movea.l    (a1), a1
008148: b051         cmp.w      (a1), d0
00814a: 66e2         bne.b      $812e
00814c: 22690004     movea.l    $4(a1), a1
008150: 20290008     move.l     $8(a1), d0
008154: 4cdf0702     movem.l    (a7)+, d1/a0-a2
008158: 4e75         rts        
00815a: 4e550000     link.w     a5, #$0
00815e: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
008162: 7800         moveq      #$0, d4
008164: 7a00         moveq      #$0, d5
008166: 6042         bra.b      $81aa
008168: 2f04         move.l     d4, -(a7)
00816a: 41fa011c     lea.l      $8288(pc), a0
00816e: 2208         move.l     a0, d1
008170: 202f0004     move.l     $4(a7), d0
008174: 61000850     bsr.w      $89c6
008178: 588f         addq.l     #$4, a7
00817a: 2f17         move.l     (a7), -(a7)
00817c: 48780001     pea.l      $1.w
008180: 72ff         moveq      #$ff, d1
008182: 7000         moveq      #$0, d0
008184: 610011a8     bsr.w      $932e
008188: 508f         addq.l     #$8, a7
00818a: 206f0004     movea.l    $4(a7), a0
00818e: 2080         move.l     d0, (a0)
008190: 72ff         moveq      #$ff, d1
008192: b280         cmp.l      d0, d1
008194: 6612         bne.b      $81a8
008196: 0cae000000a9800c cmpi.l     #$a9, -$7ff4(a6)
00819e: 6604         bne.b      $81a4
0081a0: 5284         addq.l     #$1, d4
0081a2: 6006         bra.b      $81aa
0081a4: 7000         moveq      #$0, d0
0081a6: 6012         bra.b      $81ba
0081a8: 7a01         moveq      #$1, d5
0081aa: 4a85         tst.l      d5
0081ac: 67ba         beq.b      $8168
0081ae: 206f0004     movea.l    $4(a7), a0
0081b2: 2010         move.l     (a0), d0
0081b4: 610000b4     bsr.w      $826a
0081b8: 7001         moveq      #$1, d0
0081ba: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
0081c0: 4e5d         unlk       a5
0081c2: 4e75         rts        
0081c4: 4e550000     link.w     a5, #$0
0081c8: 48e7c000     movem.l    d0-d1, -(a7)
0081cc: 2017         move.l     (a7), d0
0081ce: 610011aa     bsr.w      $937a
0081d2: 72ff         moveq      #$ff, d1
0081d4: b280         cmp.l      d0, d1
0081d6: 6604         bne.b      $81dc
0081d8: 7000         moveq      #$0, d0
0081da: 6002         bra.b      $81de
0081dc: 7001         moveq      #$1, d0
0081de: 4ced0002fffc movem.l    -$4(a5), d1
0081e4: 4e5d         unlk       a5
0081e6: 4e75         rts        
0081e8: 4e550000     link.w     a5, #$0
0081ec: 48e7c080     movem.l    d0-d1/a0, -(a7)
0081f0: 2017         move.l     (a7), d0
0081f2: 61001164     bsr.w      $9358
0081f6: 206f0004     movea.l    $4(a7), a0
0081fa: 2080         move.l     d0, (a0)
0081fc: 72ff         moveq      #$ff, d1
0081fe: b280         cmp.l      d0, d1
008200: 6604         bne.b      $8206
008202: 7000         moveq      #$0, d0
008204: 6002         bra.b      $8208
008206: 7001         moveq      #$1, d0
008208: 4ced0100fffc movem.l    -$4(a5), a0
00820e: 4e5d         unlk       a5
008210: 4e75         rts        
008212: 4e550000     link.w     a5, #$0
008216: 48e7c000     movem.l    d0-d1, -(a7)
00821a: 2017         move.l     (a7), d0
00821c: 61a6         bsr.b      $81c4
00821e: 4a80         tst.l      d0
008220: 670e         beq.b      $8230
008222: 202f0004     move.l     $4(a7), d0
008226: 6100115e     bsr.w      $9386
00822a: 72ff         moveq      #$ff, d1
00822c: b280         cmp.l      d0, d1
00822e: 6604         bne.b      $8234
008230: 7000         moveq      #$0, d0
008232: 6002         bra.b      $8236
008234: 7001         moveq      #$1, d0
008236: 4e5d         unlk       a5
008238: 4e75         rts        
00823a: 4e550000     link.w     a5, #$0
00823e: 48e7c800     movem.l    d0-d1/d4, -(a7)
008242: 6004         bra.b      $8248
008244: 70ff         moveq      #$ff, d0
008246: b084         cmp.l      d4, d0
008248: 48780001     pea.l      $1.w
00824c: 7201         moveq      #$1, d1
00824e: 202f0004     move.l     $4(a7), d0
008252: 610011be     bsr.w      $9412
008256: 588f         addq.l     #$4, a7
008258: 2800         move.l     d0, d4
00825a: 7201         moveq      #$1, d1
00825c: b280         cmp.l      d0, d1
00825e: 66e4         bne.b      $8244
008260: 4ced0012fff8 movem.l    -$8(a5), d1/d4
008266: 4e5d         unlk       a5
008268: 4e75         rts        
00826a: 4e550000     link.w     a5, #$0
00826e: 48e7c000     movem.l    d0-d1, -(a7)
008272: 7200         moveq      #$0, d1
008274: 2017         move.l     (a7), d0
008276: 6100112a     bsr.w      $93a2
00827a: 72ff         moveq      #$ff, d1
00827c: b280         cmp.l      d0, d1
00827e: 4ced0002fffc movem.l    -$4(a5), d1
008284: 4e5d         unlk       a5
008286: 4e75         rts        
008288: 7365         .dc.w      $7365
00828a: 6d25         blt.b      $82b1
00828c: 30366400     move.w     (a6, d6.w * 4), d0
008290: 0008         .dc.w      $0008
008292: 006e000c006a ori.w      #$c, $6a(a6)
008298: 00100066     ori.b      #$66, (a0)
00829c: 00140062     ori.b      #$62, (a4)
0082a0: 0018005e     ori.b      #$5e, (a0)+
0082a4: 001c005a     ori.b      #$5a, (a4)+
0082a8: 00200056     ori.b      #$56, -(a0)
0082ac: 002c00520028 ori.b      #$52, $28(a4)
0082b2: 004e         .dc.w      $004e
0082b4: ffff         dc.w       $ffff
0082b6: 0008         .dc.w      $0008
0082b8: 0000000c     ori.b      #$c, d0
0082bc: 00000010     ori.b      #$10, d0
0082c0: 00000014     ori.b      #$14, d0
0082c4: 00000018     ori.b      #$18, d0
0082c8: 0000001c     ori.b      #$1c, d0
0082cc: 00000020     ori.b      #$20, d0
0082d0: 0000002c     ori.b      #$2c, d0
0082d4: 00000028     ori.b      #$28, d0
0082d8: 0000ffff     ori.b      #$ff, d0
0082dc: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0082e0: 43faffae     lea.l      $8290(pc), a1
0082e4: 6008         bra.b      $82ee
0082e6: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0082ea: 43faffca     lea.l      $82b6(pc), a1
0082ee: 91c8         suba.l     a0, a0
0082f0: 4e40         trap       #$0
0082f2: 000e         .dc.w      $000e
0082f4: 6406         bcc.b      $82fc
0082f6: 2d41800c     move.l     d1, -$7ff4(a6)
0082fa: 70ff         moveq      #$ff, d0
0082fc: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
008300: 4e75         rts        
008302: 48e70004     movem.l    a5, -(a7)
008306: 91ee9a92     suba.l     -$656e(a6), a0
00830a: 2d489a8a     move.l     a0, -$6576(a6)
00830e: 41ee91e4     lea.l      -$6e1c(a6), a0
008312: 202e9a86     move.l     -$657a(a6), d0
008316: e248         lsr.w      #$1, d0
008318: 5340         subq.w     #$1, d0
00831a: 30dd         move.w     (a5)+, (a0)+
00831c: 51c8fffc     dbra       d0, $831a
008320: 4cdf2000     movem.l    (a7)+, a5
008324: e44f         lsr.w      #$2, d7
008326: 3d479a8e     move.w     d7, -$6572(a6)
00832a: 206e922c     movea.l    -$6dd4(a6), a0
00832e: 4e90         jsr        (a0)
008330: 4a80         tst.l      d0
008332: 6708         beq.b      $833c
008334: 7264         moveq      #$64, d1
008336: d247         add.w      d7, d1
008338: 4e40         trap       #$0
00833a: 00064cdf     ori.b      #$df, d6
00833e: 7fff         .dc.w      $7fff
008340: 588f         addq.l     #$4, a7
008342: 44df         move.w     (a7)+, ccr
008344: 4e75         rts        
008346: 4e550000     link.w     a5, #$0
00834a: 48e78000     movem.l    d0, -(a7)
00834e: 1d7c00019a90 move.b     #$1, -$6570(a6)
008354: 4e5d         unlk       a5
008356: 4e75         rts        
008358: 4e550000     link.w     a5, #$0
00835c: 48e78000     movem.l    d0, -(a7)
008360: 2d57922c     move.l     (a7), -$6dd4(a6)
008364: 6606         bne.b      $836c
008366: 6100ff7e     bsr.w      $82e6
00836a: 6004         bra.b      $8370
00836c: 6100ff6e     bsr.w      $82dc
008370: 4e5d         unlk       a5
008372: 4e75         rts        
008374: 4e550000     link.w     a5, #$0
008378: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
00837c: 4fefffd4     lea.l      -$2c(a7), a7
008380: 604a         bra.b      $83cc
008382: 2ebc000000b5 move.l     #$b5, (a7)
008388: 60000076     bra.w      $8400
00838c: 2ebc000000b6 move.l     #$b6, (a7)
008392: 606c         bra.b      $8400
008394: 2ebc000000b7 move.l     #$b7, (a7)
00839a: 6064         bra.b      $8400
00839c: 2ebc000000b8 move.l     #$b8, (a7)
0083a2: 605c         bra.b      $8400
0083a4: 2ebc000000b9 move.l     #$b9, (a7)
0083aa: 6054         bra.b      $8400
0083ac: 2ebc000000ba move.l     #$ba, (a7)
0083b2: 604c         bra.b      $8400
0083b4: 2ebc000000b2 move.l     #$b2, (a7)
0083ba: 6044         bra.b      $8400
0083bc: 2ebc000000c0 move.l     #$c0, (a7)
0083c2: 603c         bra.b      $8400
0083c4: 2ebc000000b3 move.l     #$b3, (a7)
0083ca: 6034         bra.b      $8400
0083cc: 302e9a8e     move.w     -$6572(a6), d0
0083d0: 48c0         ext.l      d0
0083d2: 7264         moveq      #$64, d1
0083d4: d081         add.l      d1, d0
0083d6: 048000000066 subi.l     #$66, d0
0083dc: 0c8000000009 cmpi.l     #$9, d0
0083e2: 62e0         bhi.b      $83c4
0083e4: 303b0206     move.w     $83ec(pc, d0.w), d0
0083e8: 4efb0002     jmp        $83ec(pc, d0.w)
0083ec: ff96         dc.w       $ff96
0083ee: ffa0         dc.w       $ffa0
0083f0: ffa8         dc.w       $ffa8
0083f2: ffb0         dc.w       $ffb0
0083f4: ffb8         dc.w       $ffb8
0083f6: ffc0         dc.w       $ffc0
0083f8: ffc8         dc.w       $ffc8
0083fa: ffd8         dc.w       $ffd8
0083fc: ffd0         dc.w       $ffd0
0083fe: ffd0         dc.w       $ffd0
008400: 0c97000000ba cmpi.l     #$ba, (a7)
008406: 660c         bne.b      $8414
008408: 4a2e9a90     tst.b      -$6570(a6)
00840c: 6706         beq.b      $8414
00840e: 7000         moveq      #$0, d0
008410: 600001ec     bra.w      $85fe
008414: 2f2e9a8a     move.l     -$6576(a6), -(a7)
008418: 306e9a8e     movea.w    -$6572(a6), a0
00841c: 2f08         move.l     a0, -(a7)
00841e: 6100063a     bsr.w      $8a5a
008422: 2200         move.l     d0, d1
008424: 41fa01f0     lea.l      $8616(pc), a0
008428: 2008         move.l     a0, d0
00842a: 61000592     bsr.w      $89be
00842e: 508f         addq.l     #$8, a7
008430: 61001132     bsr.w      $9564
008434: 2f00         move.l     d0, -(a7)
008436: 61000622     bsr.w      $8a5a
00843a: 2f00         move.l     d0, -(a7)
00843c: 2f2e9a82     move.l     -$657e(a6), -(a7)
008440: 41fa01fb     lea.l      $863d(pc), a0
008444: 2208         move.l     a0, d1
008446: 41ef0010     lea.l      $10(a7), a0
00844a: 2008         move.l     a0, d0
00844c: 61000578     bsr.w      $89c6
008450: 4fef000c     lea.l      $c(a7), a7
008454: 41fa01ef     lea.l      $8645(pc), a0
008458: 2208         move.l     a0, d1
00845a: 41ef0004     lea.l      $4(a7), a0
00845e: 2008         move.l     a0, d0
008460: 6100052c     bsr.w      $898e
008464: 2440         movea.l    d0, a2
008466: 4a80         tst.l      d0
008468: 6604         bne.b      $846e
00846a: 45ee924c     lea.l      -$6db4(a6), a2
00846e: 2f2e9a8a     move.l     -$6576(a6), -(a7)
008472: 306e9a8e     movea.w    -$6572(a6), a0
008476: 2f08         move.l     a0, -(a7)
008478: 610005e0     bsr.w      $8a5a
00847c: 2f00         move.l     d0, -(a7)
00847e: 41fa01c7     lea.l      $8647(pc), a0
008482: 2208         move.l     a0, d1
008484: 200a         move.l     a2, d0
008486: 6100053a     bsr.w      $89c2
00848a: 4fef000c     lea.l      $c(a7), a7
00848e: 7800         moveq      #$0, d4
008490: 6018         bra.b      $84aa
008492: 41ee91e4     lea.l      -$6e1c(a6), a0
008496: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
00849a: 41fa01d6     lea.l      $8672(pc), a0
00849e: 2208         move.l     a0, d1
0084a0: 200a         move.l     a2, d0
0084a2: 6100051e     bsr.w      $89c2
0084a6: 588f         addq.l     #$4, a7
0084a8: 5284         addq.l     #$1, d4
0084aa: 7008         moveq      #$8, d0
0084ac: b084         cmp.l      d4, d0
0084ae: 6ee2         bgt.b      $8492
0084b0: 41fa01c7     lea.l      $8679(pc), a0
0084b4: 2208         move.l     a0, d1
0084b6: 200a         move.l     a2, d0
0084b8: 61000508     bsr.w      $89c2
0084bc: 6018         bra.b      $84d6
0084be: 41ee91e4     lea.l      -$6e1c(a6), a0
0084c2: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
0084c6: 41fa01b7     lea.l      $867f(pc), a0
0084ca: 2208         move.l     a0, d1
0084cc: 200a         move.l     a2, d0
0084ce: 610004f2     bsr.w      $89c2
0084d2: 588f         addq.l     #$4, a7
0084d4: 5284         addq.l     #$1, d4
0084d6: 7010         moveq      #$10, d0
0084d8: b084         cmp.l      d4, d0
0084da: 6ee2         bgt.b      $84be
0084dc: 41fa01a8     lea.l      $8686(pc), a0
0084e0: 2208         move.l     a0, d1
0084e2: 200a         move.l     a2, d0
0084e4: 610004dc     bsr.w      $89c2
0084e8: 266e9218     movea.l    -$6de8(a6), a3
0084ec: 7800         moveq      #$0, d4
0084ee: 6014         bra.b      $8504
0084f0: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0084f4: 41fa01ac     lea.l      $86a2(pc), a0
0084f8: 2208         move.l     a0, d1
0084fa: 200a         move.l     a2, d0
0084fc: 610004c4     bsr.w      $89c2
008500: 588f         addq.l     #$4, a7
008502: 5284         addq.l     #$1, d4
008504: 7008         moveq      #$8, d0
008506: b084         cmp.l      d4, d0
008508: 6ee6         bgt.b      $84f0
00850a: 41fa019d     lea.l      $86a9(pc), a0
00850e: 2208         move.l     a0, d1
008510: 200a         move.l     a2, d0
008512: 610004ae     bsr.w      $89c2
008516: 266e9220     movea.l    -$6de0(a6), a3
00851a: 7800         moveq      #$0, d4
00851c: 6014         bra.b      $8532
00851e: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
008522: 41fa01a0     lea.l      $86c4(pc), a0
008526: 2208         move.l     a0, d1
008528: 200a         move.l     a2, d0
00852a: 61000496     bsr.w      $89c2
00852e: 588f         addq.l     #$4, a7
008530: 5284         addq.l     #$1, d4
008532: 7008         moveq      #$8, d0
008534: b084         cmp.l      d4, d0
008536: 6ee6         bgt.b      $851e
008538: 41fa0191     lea.l      $86cb(pc), a0
00853c: 2208         move.l     a0, d1
00853e: 200a         move.l     a2, d0
008540: 61000480     bsr.w      $89c2
008544: 266e9218     movea.l    -$6de8(a6), a3
008548: 2653         movea.l    (a3), a3
00854a: 7800         moveq      #$0, d4
00854c: 6014         bra.b      $8562
00854e: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
008552: 41fa01a5     lea.l      $86f9(pc), a0
008556: 2208         move.l     a0, d1
008558: 200a         move.l     a2, d0
00855a: 61000466     bsr.w      $89c2
00855e: 588f         addq.l     #$4, a7
008560: 5284         addq.l     #$1, d4
008562: 7008         moveq      #$8, d0
008564: b084         cmp.l      d4, d0
008566: 6ee6         bgt.b      $854e
008568: 082e00009225 btst.b     #$0, -$6ddb(a6)
00856e: 6704         beq.b      $8574
008570: 7043         moveq      #$43, d0
008572: 6002         bra.b      $8576
008574: 702d         moveq      #$2d, d0
008576: 2f00         move.l     d0, -(a7)
008578: 082e00019225 btst.b     #$1, -$6ddb(a6)
00857e: 6704         beq.b      $8584
008580: 7056         moveq      #$56, d0
008582: 6002         bra.b      $8586
008584: 702d         moveq      #$2d, d0
008586: 2f00         move.l     d0, -(a7)
008588: 082e00029225 btst.b     #$2, -$6ddb(a6)
00858e: 6704         beq.b      $8594
008590: 705a         moveq      #$5a, d0
008592: 6002         bra.b      $8596
008594: 702d         moveq      #$2d, d0
008596: 2f00         move.l     d0, -(a7)
008598: 082e00039225 btst.b     #$3, -$6ddb(a6)
00859e: 6704         beq.b      $85a4
0085a0: 704e         moveq      #$4e, d0
0085a2: 6002         bra.b      $85a6
0085a4: 702d         moveq      #$2d, d0
0085a6: 2f00         move.l     d0, -(a7)
0085a8: 082e00049225 btst.b     #$4, -$6ddb(a6)
0085ae: 6704         beq.b      $85b4
0085b0: 7058         moveq      #$58, d0
0085b2: 6002         bra.b      $85b6
0085b4: 702d         moveq      #$2d, d0
0085b6: 2f00         move.l     d0, -(a7)
0085b8: 303c00ff     move.w     #$ff, d0
0085bc: c06e9224     and.w      -$6ddc(a6), d0
0085c0: 7200         moveq      #$0, d1
0085c2: 3200         move.w     d0, d1
0085c4: 2f01         move.l     d1, -(a7)
0085c6: 2f2e9226     move.l     -$6dda(a6), -(a7)
0085ca: 41fa0134     lea.l      $8700(pc), a0
0085ce: 2208         move.l     a0, d1
0085d0: 200a         move.l     a2, d0
0085d2: 610003ee     bsr.w      $89c2
0085d6: 4fef001c     lea.l      $1c(a7), a7
0085da: 41ee924c     lea.l      -$6db4(a6), a0
0085de: b1ca         cmpa.l     a2, a0
0085e0: 6706         beq.b      $85e8
0085e2: 200a         move.l     a2, d0
0085e4: 610003fc     bsr.w      $89e2
0085e8: 2f2e9a8a     move.l     -$6576(a6), -(a7)
0085ec: 61000f76     bsr.w      $9564
0085f0: 2200         move.l     d0, d1
0085f2: 202f0004     move.l     $4(a7), d0
0085f6: 6100be84     bsr.w      $447c
0085fa: 588f         addq.l     #$4, a7
0085fc: 70ff         moveq      #$ff, d0
0085fe: 4fef002c     lea.l      $2c(a7), a7
008602: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
008608: 4e5d         unlk       a5
00860a: 4e75         rts        
00860c: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
008612: 6170         bsr.b      $8684
008614: 5f00         subq.b     #$7, d0
008616: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
00861c: 6170         bsr.b      $868e
00861e: 2023         move.l     -(a3), d0
008620: 2564206f     move.l     -(a4), $206f(a2)
008624: 6363         bls.b      $8689
008626: 7572         .dc.w      $7572
008628: 7265         moveq      #$65, d1
00862a: 6420         bcc.b      $864c
00862c: 6174         bsr.b      $86a2
00862e: 206f6666     movea.l    $6666(a7), a0
008632: 7365         .dc.w      $7365
008634: 743a         moveq      #$3a, d2
008636: 20307825     move.l     $25(a0, d7.l), d0
00863a: 780d         moveq      #$d, d4
00863c: 00257325     ori.b      #$25, -(a5)
008640: 735f         .dc.w      $735f
008642: 25640077     move.l     -(a4), $77(a2)
008646: 0025733a     ori.b      #$3a, -(a5)
00864a: 2054         movea.l    (a4), a0
00864c: 7261         moveq      #$61, d1
00864e: 7020         moveq      #$20, d0
008650: 2325         move.l     -(a5), -(a1)
008652: 6420         bcc.b      $8674
008654: 6f63         ble.b      $86b9
008656: 6375         bls.b      $86cd
008658: 7272         moveq      #$72, d1
00865a: 6564         bcs.b      $86c0
00865c: 2061         movea.l    -(a1), a0
00865e: 7420         moveq      #$20, d2
008660: 6f66         ble.b      $86c8
008662: 6673         bne.b      $86d7
008664: 6574         bcs.b      $86da
008666: 3a20         move.w     -(a0), d5
008668: 30782578     movea.w    $2578.w, a0
00866c: 0d0d446e     movep.w    $446e(a5), d6
008670: 3a00         move.w     d0, d5
008672: 2025         move.l     -(a5), d0
008674: 30386c58     move.w     $6c58.w, d0
008678: 000d         .dc.w      $000d
00867a: 0d41         bchg.b     d6, d1
00867c: 6e3a         bgt.b      $86b8
00867e: 00202530     ori.b      #$30, -(a0)
008682: 386c5800     movea.w    $5800(a4), a4
008686: 0d0d4d65     movep.w    $4d65(a5), d6
00868a: 6d20         blt.b      $86ac
00868c: 706f         moveq      #$6f, d0
00868e: 696e         bvs.b      $86fe
008690: 7465         moveq      #$65, d2
008692: 6420         bcc.b      $86b4
008694: 746f         moveq      #$6f, d2
008696: 2062         movea.l    -(a2), a0
008698: 7920         .dc.w      $7920
00869a: 41353a0d     chk.l      $d(a5, d3.l), d0
00869e: 53353a00     subq.b     #$1, (a5, d3.l * 2)
0086a2: 2025         move.l     -(a5), d0
0086a4: 30386c58     move.w     $6c58.w, d0
0086a8: 000d         .dc.w      $000d
0086aa: 0d4d656d     movep.l    $656d(a5), d6
0086ae: 20706f696e74 movea.l    ([$6e74, a0]), a0
0086b4: 6564         bcs.b      $871a
0086b6: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
0086bc: 2041         movea.l    d1, a0
0086be: 373a0d53     move.w     $9413(pc), -(a3)
0086c2: 3700         move.w     d0, -(a3)
0086c4: 2025         move.l     -(a5), d0
0086c6: 30386c58     move.w     $6c58.w, d0
0086ca: 000d         .dc.w      $000d
0086cc: 0d4d656d     movep.l    $656d(a5), d6
0086d0: 20706f696e74 movea.l    ([$6e74, a0]), a0
0086d6: 6564         bcs.b      $873c
0086d8: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
0086de: 20284135     move.l     $4135(a0), d0
0086e2: 292c2069     move.l     $2069(a4), -(a4)
0086e6: 652e         bcs.b      $8716
0086e8: 2063         movea.l    -(a3), a0
0086ea: 6f6e         ble.b      $875a
0086ec: 7420         moveq      #$20, d2
0086ee: 6f66         ble.b      $8756
0086f0: 2041         movea.l    d1, a0
0086f2: 353a0d4d     move.w     $9441(pc), -(a2)
0086f6: 353a0020     move.w     $8718(pc), -(a2)
0086fa: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0086fe: 5800         addq.b     #$4, d0
008700: 0d0d5043     movep.w    $5043(a5), d6
008704: 3a20         move.w     -(a0), d5
008706: 2530386c     move.l     $6c(a0, d3.l), -(a2)
00870a: 5820         addq.b     #$4, -(a0)
00870c: 2043         movea.l    d3, a0
00870e: 433a2025     chk.l      $a735(pc), d1
008712: 30325820     move.w     $20(a2, d5.l), d0
008716: 2825         move.l     -(a5), d4
008718: 6325         bls.b      $873f
00871a: 6325         bls.b      $8741
00871c: 6325         bls.b      $8743
00871e: 6325         bls.b      $8745
008720: 6329         bls.b      $874b
008722: 0d00         btst.l     d6, d0
008724: 48e74000     movem.l    d1, -(a7)
008728: 203c00000000 move.l     #$0, d0
00872e: 223c00000001 move.l     #$1, d1
008734: 4e40         trap       #$0
008736: 0057640c     ori.w      #$640c, (a7)
00873a: 2d41800c     move.l     d1, -$7ff4(a6)
00873e: 70ff         moveq      #$ff, d0
008740: 4cdf0002     movem.l    (a7)+, d1
008744: 4e75         rts        
008746: 4280         clr.l      d0
008748: 3001         move.w     d1, d0
00874a: 4cdf0002     movem.l    (a7)+, d1
00874e: 4e75         rts        
008750: 48e74000     movem.l    d1, -(a7)
008754: 203c00000000 move.l     #$0, d0
00875a: 223c00000000 move.l     #$0, d1
008760: 4e40         trap       #$0
008762: 005764e0     ori.w      #$64e0, (a7)
008766: 60d2         bra.b      $873a
008768: 48e740e0     movem.l    d1/a0-a2, -(a7)
00876c: 207900000000 movea.l    $0.l, a0
008772: 2268004c     movea.l    $4c(a0), a1
008776: 4280         clr.l      d0
008778: 10290370     move.b     $370(a1), d0
00877c: 4cdf0702     movem.l    (a7)+, d1/a0-a2
008780: 4e75         rts        
008782: 48e740e0     movem.l    d1/a0-a2, -(a7)
008786: 207900000000 movea.l    $0.l, a0
00878c: 2268004c     movea.l    $4c(a0), a1
008790: 81a90374     or.l       d0, $374(a1)
008794: 4cdf0702     movem.l    (a7)+, d1/a0-a2
008798: 4e75         rts        
00879a: 48e740e0     movem.l    d1/a0-a2, -(a7)
00879e: 207900000000 movea.l    $0.l, a0
0087a4: 2268004c     movea.l    $4c(a0), a1
0087a8: 4480         neg.l      d0
0087aa: c1a90374     and.l      d0, $374(a1)
0087ae: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0087b2: 4e75         rts        
0087b4: 640c         bcc.b      $87c2
0087b6: 3d41800c     move.w     d1, -$7ff4(a6)
0087ba: 70ff         moveq      #$ff, d0
0087bc: 6004         bra.b      $87c2
0087be: 65f6         bcs.b      $87b6
0087c0: 7000         moveq      #$0, d0
0087c2: 4cdf001e     movem.l    (a7)+, d1-d4
0087c6: 4e75         rts        
0087c8: 48e77800     movem.l    d1-d4, -(a7)
0087cc: 282f0014     move.l     $14(a7), d4
0087d0: 2601         move.l     d1, d3
0087d2: 2400         move.l     d0, d2
0087d4: 7203         moveq      #$3, d1
0087d6: 7000         moveq      #$0, d0
0087d8: 4e40         trap       #$0
0087da: 005660d6     ori.w      #$60d6, (a6)
0087de: 48e77800     movem.l    d1-d4, -(a7)
0087e2: 282f0014     move.l     $14(a7), d4
0087e6: 2601         move.l     d1, d3
0087e8: 2400         move.l     d0, d2
0087ea: 7204         moveq      #$4, d1
0087ec: 7000         moveq      #$0, d0
0087ee: 4e40         trap       #$0
0087f0: 005660c0     ori.w      #$60c0, (a6)
0087f4: 48e77800     movem.l    d1-d4, -(a7)
0087f8: 2601         move.l     d1, d3
0087fa: 2400         move.l     d0, d2
0087fc: 7202         moveq      #$2, d1
0087fe: 7000         moveq      #$0, d0
008800: 4e40         trap       #$0
008802: 005660ae     ori.w      #$60ae, (a6)
008806: 48e77800     movem.l    d1-d4, -(a7)
00880a: 7200         moveq      #$0, d1
00880c: 4e40         trap       #$0
00880e: 005660ac     ori.w      #$60ac, (a6)
008812: 48e77800     movem.l    d1-d4, -(a7)
008816: 2601         move.l     d1, d3
008818: 2400         move.l     d0, d2
00881a: 7201         moveq      #$1, d1
00881c: 7000         moveq      #$0, d0
00881e: 4e40         trap       #$0
008820: 00566090     ori.w      #$6090, (a6)
008824: 4e550000     link.w     a5, #$0
008828: 48e7c080     movem.l    d0-d1/a0, -(a7)
00882c: 518f         subq.l     #$8, a7
00882e: 7203         moveq      #$3, d1
008830: 41fa00aa     lea.l      $88dc(pc), a0
008834: 2008         move.l     a0, d0
008836: 610001ce     bsr.w      $8a06
00883a: 2f400004     move.l     d0, $4(a7)
00883e: 72ff         moveq      #$ff, d1
008840: b280         cmp.l      d0, d1
008842: 6600000a     bne.w      $884e
008846: 70ff         moveq      #$ff, d0
008848: 2e80         move.l     d0, (a7)
00884a: 6000001e     bra.w      $886a
00884e: 2f2f000c     move.l     $c(a7), -(a7)
008852: 222f0008     move.l     $8(a7), d1
008856: 202f000c     move.l     $c(a7), d0
00885a: 6100f83a     bsr.w      $8096
00885e: 588f         addq.l     #$4, a7
008860: 2e80         move.l     d0, (a7)
008862: 202f0004     move.l     $4(a7), d0
008866: 610001ce     bsr.w      $8a36
00886a: 2017         move.l     (a7), d0
00886c: 508f         addq.l     #$8, a7
00886e: 60000004     bra.w      $8874
008872: 4e71         nop        
008874: 4ced0100fffc movem.l    -$4(a5), a0
00887a: 4e5d         unlk       a5
00887c: 4e75         rts        
00887e: 4e550000     link.w     a5, #$0
008882: 48e7c080     movem.l    d0-d1/a0, -(a7)
008886: 518f         subq.l     #$8, a7
008888: 7203         moveq      #$3, d1
00888a: 41fa0058     lea.l      $88e4(pc), a0
00888e: 2008         move.l     a0, d0
008890: 61000174     bsr.w      $8a06
008894: 2f400004     move.l     d0, $4(a7)
008898: 72ff         moveq      #$ff, d1
00889a: b280         cmp.l      d0, d1
00889c: 6600000a     bne.w      $88a8
0088a0: 70ff         moveq      #$ff, d0
0088a2: 2e80         move.l     d0, (a7)
0088a4: 6000001e     bra.w      $88c4
0088a8: 2f2f000c     move.l     $c(a7), -(a7)
0088ac: 222f0008     move.l     $8(a7), d1
0088b0: 202f000c     move.l     $c(a7), d0
0088b4: 6100f77c     bsr.w      $8032
0088b8: 588f         addq.l     #$4, a7
0088ba: 2e80         move.l     d0, (a7)
0088bc: 202f0004     move.l     $4(a7), d0
0088c0: 61000174     bsr.w      $8a36
0088c4: 2017         move.l     (a7), d0
0088c6: 508f         addq.l     #$8, a7
0088c8: 60000004     bra.w      $88ce
0088cc: 4e71         nop        
0088ce: 4ced0100fffc movem.l    -$4(a5), a0
0088d4: 4e5d         unlk       a5
0088d6: 4e75         rts        
0088d8: 4afb         .dc.w      $4afb
0088da: 00102f73     ori.b      #$73, (a0)
0088de: 7973         .dc.w      $7973
0088e0: 636f         bls.b      $8951
0088e2: 6e002f73     bgt.w      $b857
0088e6: 7973         .dc.w      $7973
0088e8: 636f         bls.b      $8959
0088ea: 6e004e55     bgt.w      $d741
0088ee: 000048e7     ori.b      #$e7, d0
0088f2: 80387000     or.b       $7000.w, d0
0088f6: 2840         movea.l    d0, a4
0088f8: 2640         movea.l    d0, a3
0088fa: 2440         movea.l    d0, a2
0088fc: 700d         moveq      #$d, d0
0088fe: 7200         moveq      #$0, d1
008900: 41fa0064     lea.l      $8966(pc), a0
008904: 47ee800c     lea.l      -$7ff4(a6), a3
008908: 7609         moveq      #$9, d3
00890a: 2683         move.l     d3, (a3)
00890c: 262e95b8     move.l     -$6a48(a6), d3
008910: 242e95b4     move.l     -$6a4c(a6), d2
008914: 286e9a96     movea.l    -$656a(a6), a4
008918: 4e40         trap       #$0
00891a: 0021653e     ori.b      #$3e, -(a1)
00891e: 4a93         tst.l      (a3)
008920: 6718         beq.b      $893a
008922: 41fa0046     lea.l      $896a(pc), a0
008926: 7264         moveq      #$64, d1
008928: 7002         moveq      #$2, d0
00892a: 4e40         trap       #$0
00892c: 008c         .dc.w      $008c
00892e: 41fa0036     lea.l      $8966(pc), a0
008932: 72dd         moveq      #$dd, d1
008934: 003c0001     ori.b      #$1, ccr
008938: 6022         bra.b      $895c
00893a: 3d7c0041923c move.w     #$41, -$6dc4(a6)
008940: 426e923e     clr.w      -$6dc2(a6)
008944: 3d7c00029258 move.w     #$2, -$6da8(a6)
00894a: 3d7c0001925a move.w     #$1, -$6da6(a6)
008950: 3d7c00029274 move.w     #$2, -$6d8c(a6)
008956: 3d7c00029276 move.w     #$2, -$6d8a(a6)
00895c: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
008962: 4e5d         unlk       a5
008964: 4e75         rts        
008966: 6369         bls.b      $89d1
008968: 6f002a2a     ble.w      $b394
00896c: 2a2a2063     move.l     $2063(a2), d5
008970: 696f         bvs.b      $89e1
008972: 20747261     movea.l    $61(a4, d7.w), a0
008976: 7068         moveq      #$68, d0
008978: 616e         bsr.b      $89e8
00897a: 646c         bcc.b      $89e8
00897c: 6572         bcs.b      $89f0
00897e: 206d6973     movea.l    $6973(a5), a0
008982: 6d61         blt.b      $89e5
008984: 7463         moveq      #$63, d2
008986: 6820         bvc.b      $89a8
008988: 2a2a2a2a     move.l     $2a2a(a2), d5
00898c: 0d00         btst.l     d6, d0
00898e: 4e4d         trap       #$d
008990: 00004e4d     ori.b      #$4d, d0
008994: 00014e4d     ori.b      #$4d, d1
008998: 00024e4d     ori.b      #$4d, d2
00899c: 00034e4d     ori.b      #$4d, d3
0089a0: 00044e4d     ori.b      #$4d, d4
0089a4: 00054e4d     ori.b      #$4d, d5
0089a8: 00064e4d     ori.b      #$4d, d6
0089ac: 00074e4d     ori.b      #$4d, d7
0089b0: 0008         .dc.w      $0008
0089b2: 4e4d         trap       #$d
0089b4: 0009         .dc.w      $0009
0089b6: 4e4d         trap       #$d
0089b8: 000a         .dc.w      $000a
0089ba: 4e4d         trap       #$d
0089bc: 000b         .dc.w      $000b
0089be: 4e4d         trap       #$d
0089c0: 000c         .dc.w      $000c
0089c2: 4e4d         trap       #$d
0089c4: 000d         .dc.w      $000d
0089c6: 4e4d         trap       #$d
0089c8: 000e         .dc.w      $000e
0089ca: 4e4d         trap       #$d
0089cc: 000f         .dc.w      $000f
0089ce: 4e4d         trap       #$d
0089d0: 00104e4d     ori.b      #$4d, (a0)
0089d4: 00114e4d     ori.b      #$4d, (a1)
0089d8: 00124e4d     ori.b      #$4d, (a2)
0089dc: 00134e4d     ori.b      #$4d, (a3)
0089e0: 00144e4d     ori.b      #$4d, (a4)
0089e4: 00154e4d     ori.b      #$4d, (a5)
0089e8: 00164e4d     ori.b      #$4d, (a6)
0089ec: 00174e4d     ori.b      #$4d, (a7)
0089f0: 00184e4d     ori.b      #$4d, (a0)+
0089f4: 00194e4d     ori.b      #$4d, (a1)+
0089f8: 001a4e4d     ori.b      #$4d, (a2)+
0089fc: 001b4e4d     ori.b      #$4d, (a3)+
008a00: 001c4e4d     ori.b      #$4d, (a4)+
008a04: 001d4e4d     ori.b      #$4d, (a5)+
008a08: 001e4e4d     ori.b      #$4d, (a6)+
008a0c: 001f4e4d     ori.b      #$4d, (a7)+
008a10: 00204e4d     ori.b      #$4d, -(a0)
008a14: 00214e4d     ori.b      #$4d, -(a1)
008a18: 00224e4d     ori.b      #$4d, -(a2)
008a1c: 00234e4d     ori.b      #$4d, -(a3)
008a20: 00244e4d     ori.b      #$4d, -(a4)
008a24: 00254e4d     ori.b      #$4d, -(a5)
008a28: 00264e4d     ori.b      #$4d, -(a6)
008a2c: 00274e4d     ori.b      #$4d, -(a7)
008a30: 00284e4d0029 ori.b      #$4d, $29(a0)
008a36: 4e4d         trap       #$d
008a38: 002a4e4d002b ori.b      #$4d, $2b(a2)
008a3e: 4e4d         trap       #$d
008a40: 002c4e4d002d ori.b      #$4d, $2d(a4)
008a46: 4e4d         trap       #$d
008a48: 002e4e4d002f ori.b      #$4d, $2f(a6)
008a4e: 4e4d         trap       #$d
008a50: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
008a56: 4e4d         trap       #$d
008a58: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
008a5e: 4e4d         trap       #$d
008a60: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
008a66: 4e4d         trap       #$d
008a68: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
008a6e: 4e4d         trap       #$d
008a70: 00384e4d0039 ori.b      #$4d, $39.w
008a76: 4e4d         trap       #$d
008a78: 003a         .dc.w      $003a
008a7a: 4e4d         trap       #$d
008a7c: 003b         .dc.w      $003b
008a7e: 4e4d         trap       #$d
008a80: 003c         .dc.w      $003c
008a82: 4e4d         trap       #$d
008a84: 003d         .dc.w      $003d
008a86: 4e4d         trap       #$d
008a88: 003e         .dc.w      $003e
008a8a: 4e4d         trap       #$d
008a8c: 003f         .dc.w      $003f
008a8e: 4e4d         trap       #$d
008a90: 00414e4d     ori.w      #$4e4d, d1
008a94: 00424e4d     ori.w      #$4e4d, d2
008a98: 00434e4d     ori.w      #$4e4d, d3
008a9c: 00444e4d     ori.w      #$4e4d, d4
008aa0: 00454e4d     ori.w      #$4e4d, d5
008aa4: 00404e55     ori.w      #$4e55, d0
008aa8: 000048e7     ori.b      #$e7, d0
008aac: cc302440     and.b      $40(a0, d2.w), d6
008ab0: 61ff00000ab2 bsr.l      $9564
008ab6: 2a00         move.l     d0, d5
008ab8: 264a         movea.l    a2, a3
008aba: 4a1a         tst.b      (a2)+
008abc: 66fffffffffc bne.l      $8aba
008ac2: 538a         subq.l     #$1, a2
008ac4: 60ff0000001c bra.l      $8ae2
008aca: 2005         move.l     d5, d0
008acc: 4c7c08010000000a divs.l     #$a, d0
008ad4: 06010030     addi.b     #$30, d1
008ad8: 1481         move.b     d1, (a2)
008ada: 4c7c58050000000a divs.l     #$a, d5
008ae2: 0c220058     cmpi.b     #$58, -(a2)
008ae6: 67ffffffffe2 beq.l      $8aca
008aec: 528a         addq.l     #$1, a2
008aee: 7861         moveq      #$61, d4
008af0: 60ff0000001a bra.l      $8b0c
008af6: 707a         moveq      #$7a, d0
008af8: b084         cmp.l      d4, d0
008afa: 66ff0000000c bne.l      $8b08
008b00: 7000         moveq      #$0, d0
008b02: 60ff00000026 bra.l      $8b2a
008b08: 1484         move.b     d4, (a2)
008b0a: 5284         addq.l     #$1, d4
008b0c: 7200         moveq      #$0, d1
008b0e: 200b         move.l     a3, d0
008b10: 61fffffffee8 bsr.l      $89fa
008b16: 72ff         moveq      #$ff, d1
008b18: b280         cmp.l      d0, d1
008b1a: 66ffffffffda bne.l      $8af6
008b20: 200b         move.l     a3, d0
008b22: 60ff00000006 bra.l      $8b2a
008b28: 4e71         nop        
008b2a: 4ced0c32ffec movem.l    -$14(a5), d1/d4-d5/a2-a3
008b30: 4e5d         unlk       a5
008b32: 4e75         rts        
008b34: 2f08         move.l     a0, -(a7)
008b36: 2040         movea.l    d0, a0
008b38: b300         eor.b      d1, d0
008b3a: 08000000     btst.b     #$0, d0
008b3e: 6652         bne.b      $8b92
008b40: 08010000     btst.b     #$0, d1
008b44: c389         exg.l      d1, a1
008b46: 6718         beq.b      $8b60
008b48: b109         cmpm.b     (a1)+, (a0)+
008b4a: 6530         bcs.b      $8b7c
008b4c: 6220         bhi.b      $8b6e
008b4e: 4a28ffff     tst.b      -$1(a0)
008b52: 660c         bne.b      $8b60
008b54: 6034         bra.b      $8b8a
008b56: 4a00         tst.b      d0
008b58: 6730         beq.b      $8b8a
008b5a: 0c4000ff     cmpi.w     #$ff, d0
008b5e: 632a         bls.b      $8b8a
008b60: 3018         move.w     (a0)+, d0
008b62: b059         cmp.w      (a1)+, d0
008b64: 67f0         beq.b      $8b56
008b66: 650e         bcs.b      $8b76
008b68: 0c4000ff     cmpi.w     #$ff, d0
008b6c: 6316         bls.b      $8b84
008b6e: 7001         moveq      #$1, d0
008b70: 205f         movea.l    (a7)+, a0
008b72: c389         exg.l      d1, a1
008b74: 4e75         rts        
008b76: 0c4000ff     cmpi.w     #$ff, d0
008b7a: 6308         bls.b      $8b84
008b7c: 70ff         moveq      #$ff, d0
008b7e: 205f         movea.l    (a7)+, a0
008b80: c389         exg.l      d1, a1
008b82: 4e75         rts        
008b84: 4a29fffe     tst.b      -$2(a1)
008b88: 66f2         bne.b      $8b7c
008b8a: 7000         moveq      #$0, d0
008b8c: 205f         movea.l    (a7)+, a0
008b8e: c389         exg.l      d1, a1
008b90: 4e75         rts        
008b92: c389         exg.l      d1, a1
008b94: 7000         moveq      #$0, d0
008b96: 1018         move.b     (a0)+, d0
008b98: b019         cmp.b      (a1)+, d0
008b9a: 56c8fffa     dbne       d0, $8b96
008b9e: 65dc         bcs.b      $8b7c
008ba0: 5240         addq.w     #$1, d0
008ba2: 205f         movea.l    (a7)+, a0
008ba4: c389         exg.l      d1, a1
008ba6: 4e75         rts        
008ba8: 2f08         move.l     a0, -(a7)
008baa: 2040         movea.l    d0, a0
008bac: 4a18         tst.b      (a0)+
008bae: 670c         beq.b      $8bbc
008bb0: 4a18         tst.b      (a0)+
008bb2: 6708         beq.b      $8bbc
008bb4: 4a18         tst.b      (a0)+
008bb6: 6704         beq.b      $8bbc
008bb8: 4a18         tst.b      (a0)+
008bba: 66f0         bne.b      $8bac
008bbc: 91c0         suba.l     d0, a0
008bbe: 2008         move.l     a0, d0
008bc0: 5380         subq.l     #$1, d0
008bc2: 205f         movea.l    (a7)+, a0
008bc4: 4e75         rts        
008bc6: 2f08         move.l     a0, -(a7)
008bc8: 2040         movea.l    d0, a0
008bca: c389         exg.l      d1, a1
008bcc: 10d9         move.b     (a1)+, (a0)+
008bce: 670c         beq.b      $8bdc
008bd0: 10d9         move.b     (a1)+, (a0)+
008bd2: 6708         beq.b      $8bdc
008bd4: 10d9         move.b     (a1)+, (a0)+
008bd6: 6704         beq.b      $8bdc
008bd8: 10d9         move.b     (a1)+, (a0)+
008bda: 66f0         bne.b      $8bcc
008bdc: 205f         movea.l    (a7)+, a0
008bde: c389         exg.l      d1, a1
008be0: 4e75         rts        
008be2: 2f08         move.l     a0, -(a7)
008be4: 2040         movea.l    d0, a0
008be6: c389         exg.l      d1, a1
008be8: 4a18         tst.b      (a0)+
008bea: 670c         beq.b      $8bf8
008bec: 4a18         tst.b      (a0)+
008bee: 6708         beq.b      $8bf8
008bf0: 4a18         tst.b      (a0)+
008bf2: 6704         beq.b      $8bf8
008bf4: 4a18         tst.b      (a0)+
008bf6: 66f0         bne.b      $8be8
008bf8: 1159ffff     move.b     (a1)+, -$1(a0)
008bfc: 66ce         bne.b      $8bcc
008bfe: 60dc         bra.b      $8bdc
008c00: 2f08         move.l     a0, -(a7)
008c02: 2040         movea.l    d0, a0
008c04: c389         exg.l      d1, a1
008c06: 10d9         move.b     (a1)+, (a0)+
008c08: 6afc         bpl.b      $8c06
008c0a: 4210         clr.b      (a0)
008c0c: 0220007f     andi.b     #$7f, -(a0)
008c10: 205f         movea.l    (a7)+, a0
008c12: c389         exg.l      d1, a1
008c14: 4e75         rts        
008c16: 4e550000     link.w     a5, #$0
008c1a: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
008c1e: 2440         movea.l    d0, a2
008c20: 2641         movea.l    d1, a3
008c22: 282f0020     move.l     $20(a7), d4
008c26: 284a         movea.l    a2, a4
008c28: 5384         subq.l     #$1, d4
008c2a: 6dff0000000c blt.l      $8c38
008c30: 18db         move.b     (a3)+, (a4)+
008c32: 66fffffffff4 bne.l      $8c28
008c38: 60ff00000006 bra.l      $8c40
008c3e: 421c         clr.b      (a4)+
008c40: 5384         subq.l     #$1, d4
008c42: 6cfffffffffa bge.l      $8c3e
008c48: 200a         move.l     a2, d0
008c4a: 60ff00000006 bra.l      $8c52
008c50: 4e71         nop        
008c52: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
008c58: 4e5d         unlk       a5
008c5a: 4e75         rts        
008c5c: 4e550000     link.w     a5, #$0
008c60: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
008c64: 2440         movea.l    d0, a2
008c66: 2641         movea.l    d1, a3
008c68: 282f001c     move.l     $1c(a7), d4
008c6c: 60ff00000016 bra.l      $8c84
008c72: 4a1b         tst.b      (a3)+
008c74: 66ff0000000c bne.l      $8c82
008c7a: 7000         moveq      #$0, d0
008c7c: 60ff0000003a bra.l      $8cb8
008c82: 528a         addq.l     #$1, a2
008c84: 5384         subq.l     #$1, d4
008c86: 6dff0000000e blt.l      $8c96
008c8c: 1012         move.b     (a2), d0
008c8e: b013         cmp.b      (a3), d0
008c90: 67ffffffffe0 beq.l      $8c72
008c96: 4a84         tst.l      d4
008c98: 6cff00000008 bge.l      $8ca2
008c9e: 7000         moveq      #$0, d0
008ca0: 600e         bra.b      $8cb0
008ca2: 1013         move.b     (a3), d0
008ca4: 4880         ext.w      d0
008ca6: 1212         move.b     (a2), d1
008ca8: 4881         ext.w      d1
008caa: 9240         sub.w      d0, d1
008cac: 48c1         ext.l      d1
008cae: 2001         move.l     d1, d0
008cb0: 60ff00000006 bra.l      $8cb8
008cb6: 4e71         nop        
008cb8: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
008cbe: 4e5d         unlk       a5
008cc0: 4e75         rts        
008cc2: 4e550000     link.w     a5, #$0
008cc6: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
008cca: 2440         movea.l    d0, a2
008ccc: 2641         movea.l    d1, a3
008cce: 282f0020     move.l     $20(a7), d4
008cd2: 284a         movea.l    a2, a4
008cd4: 4a1c         tst.b      (a4)+
008cd6: 66fffffffffc bne.l      $8cd4
008cdc: 538c         subq.l     #$1, a4
008cde: 5384         subq.l     #$1, d4
008ce0: 6dff0000000c blt.l      $8cee
008ce6: 18db         move.b     (a3)+, (a4)+
008ce8: 66fffffffff4 bne.l      $8cde
008cee: 4a84         tst.l      d4
008cf0: 6cff00000006 bge.l      $8cf8
008cf6: 4214         clr.b      (a4)
008cf8: 200a         move.l     a2, d0
008cfa: 60ff00000006 bra.l      $8d02
008d00: 4e71         nop        
008d02: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
008d08: 4e5d         unlk       a5
008d0a: 4e75         rts        
008d0c: 4e550000     link.w     a5, #$0
008d10: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
008d14: 2440         movea.l    d0, a2
008d16: 2641         movea.l    d1, a3
008d18: 282f001c     move.l     $1c(a7), d4
008d1c: 60ff00000026 bra.l      $8d44
008d22: 1012         move.b     (a2), d0
008d24: b013         cmp.b      (a3), d0
008d26: 67ff00000018 beq.l      $8d40
008d2c: 1013         move.b     (a3), d0
008d2e: 4880         ext.w      d0
008d30: 1212         move.b     (a2), d1
008d32: 4881         ext.w      d1
008d34: 9240         sub.w      d0, d1
008d36: 48c1         ext.l      d1
008d38: 2001         move.l     d1, d0
008d3a: 60ff0000001e bra.l      $8d5a
008d40: 528a         addq.l     #$1, a2
008d42: 528b         addq.l     #$1, a3
008d44: 2004         move.l     d4, d0
008d46: 5384         subq.l     #$1, d4
008d48: 4a80         tst.l      d0
008d4a: 66ffffffffd6 bne.l      $8d22
008d50: 7000         moveq      #$0, d0
008d52: 60ff00000006 bra.l      $8d5a
008d58: 4e71         nop        
008d5a: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
008d60: 4e5d         unlk       a5
008d62: 4e75         rts        
008d64: 4e550000     link.w     a5, #$0
008d68: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
008d6c: 2040         movea.l    d0, a0
008d6e: 2441         movea.l    d1, a2
008d70: 242d0008     move.l     $8(a5), d2
008d74: 6702         beq.b      $8d78
008d76: 610a         bsr.b      $8d82
008d78: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
008d7e: 4e5d         unlk       a5
008d80: 4e75         rts        
008d82: 4a82         tst.l      d2
008d84: 674a         beq.b      $8dd0
008d86: b1ca         cmpa.l     a2, a0
008d88: 6248         bhi.b      $8dd2
008d8a: 6744         beq.b      $8dd0
008d8c: 300a         move.w     a2, d0
008d8e: 08000000     btst.b     #$0, d0
008d92: 6704         beq.b      $8d98
008d94: 10da         move.b     (a2)+, (a0)+
008d96: 5382         subq.l     #$1, d2
008d98: 3008         move.w     a0, d0
008d9a: 08000000     btst.b     #$0, d0
008d9e: 6624         bne.b      $8dc4
008da0: e28a         lsr.l      #$1, d2
008da2: 6406         bcc.b      $8daa
008da4: 6104         bsr.b      $8daa
008da6: 10da         move.b     (a2)+, (a0)+
008da8: 4e75         rts        
008daa: e28a         lsr.l      #$1, d2
008dac: 6406         bcc.b      $8db4
008dae: 30da         move.w     (a2)+, (a0)+
008db0: 6002         bra.b      $8db4
008db2: 20da         move.l     (a2)+, (a0)+
008db4: 51cafffc     dbra       d2, $8db2
008db8: 5242         addq.w     #$1, d2
008dba: 5382         subq.l     #$1, d2
008dbc: 64f4         bcc.b      $8db2
008dbe: 7400         moveq      #$0, d2
008dc0: 4e75         rts        
008dc2: 10da         move.b     (a2)+, (a0)+
008dc4: 51cafffc     dbra       d2, $8dc2
008dc8: 5242         addq.w     #$1, d2
008dca: 5382         subq.l     #$1, d2
008dcc: 64f4         bcc.b      $8dc2
008dce: 7400         moveq      #$0, d2
008dd0: 4e75         rts        
008dd2: d5c2         adda.l     d2, a2
008dd4: d1c2         adda.l     d2, a0
008dd6: 300a         move.w     a2, d0
008dd8: 08000000     btst.b     #$0, d0
008ddc: 6704         beq.b      $8de2
008dde: 1122         move.b     -(a2), -(a0)
008de0: 5382         subq.l     #$1, d2
008de2: 3008         move.w     a0, d0
008de4: 08000000     btst.b     #$0, d0
008de8: 6624         bne.b      $8e0e
008dea: e28a         lsr.l      #$1, d2
008dec: 6406         bcc.b      $8df4
008dee: 6104         bsr.b      $8df4
008df0: 1122         move.b     -(a2), -(a0)
008df2: 4e75         rts        
008df4: e28a         lsr.l      #$1, d2
008df6: 6406         bcc.b      $8dfe
008df8: 3122         move.w     -(a2), -(a0)
008dfa: 6002         bra.b      $8dfe
008dfc: 2122         move.l     -(a2), -(a0)
008dfe: 51cafffc     dbra       d2, $8dfc
008e02: 5242         addq.w     #$1, d2
008e04: 5382         subq.l     #$1, d2
008e06: 64f4         bcc.b      $8dfc
008e08: 7400         moveq      #$0, d2
008e0a: 4e75         rts        
008e0c: 1122         move.b     -(a2), -(a0)
008e0e: 51cafffc     dbra       d2, $8e0c
008e12: 5242         addq.w     #$1, d2
008e14: 5382         subq.l     #$1, d2
008e16: 64f4         bcc.b      $8e0c
008e18: 7400         moveq      #$0, d2
008e1a: 4e75         rts        
008e1c: 48e73800     movem.l    d2-d4, -(a7)
008e20: 2400         move.l     d0, d2
008e22: 2600         move.l     d0, d3
008e24: 4843         swap       d3
008e26: 2801         move.l     d1, d4
008e28: 4844         swap       d4
008e2a: c0c1         mulu.w     d1, d0
008e2c: c2c3         mulu.w     d3, d1
008e2e: c4c4         mulu.w     d4, d2
008e30: c6c4         mulu.w     d4, d3
008e32: 4840         swap       d0
008e34: d041         add.w      d1, d0
008e36: 7800         moveq      #$0, d4
008e38: d784         addx.l     d4, d3
008e3a: d042         add.w      d2, d0
008e3c: d784         addx.l     d4, d3
008e3e: 4840         swap       d0
008e40: 4241         clr.w      d1
008e42: 4841         swap       d1
008e44: 4242         clr.w      d2
008e46: 4842         swap       d2
008e48: d282         add.l      d2, d1
008e4a: d283         add.l      d3, d1
008e4c: 4a80         tst.l      d0
008e4e: 4cdf001c     movem.l    (a7)+, d2-d4
008e52: 4e75         rts        
008e54: 2f02         move.l     d2, -(a7)
008e56: 7400         moveq      #$0, d2
008e58: 4a80         tst.l      d0
008e5a: 6a04         bpl.b      $8e60
008e5c: 4480         neg.l      d0
008e5e: 7403         moveq      #$3, d2
008e60: 4a81         tst.l      d1
008e62: 6a06         bpl.b      $8e6a
008e64: 4481         neg.l      d1
008e66: 0a020001     eori.b     #$1, d2
008e6a: 6122         bsr.b      $8e8e
008e6c: e20a         lsr.b      #$1, d2
008e6e: 6402         bcc.b      $8e72
008e70: 4480         neg.l      d0
008e72: e20a         lsr.b      #$1, d2
008e74: 6402         bcc.b      $8e78
008e76: 4481         neg.l      d1
008e78: 241f         move.l     (a7)+, d2
008e7a: 4a80         tst.l      d0
008e7c: 4e75         rts        
008e7e: 61d4         bsr.b      $8e54
008e80: c141         exg.l      d0, d1
008e82: 4a80         tst.l      d0
008e84: 4e75         rts        
008e86: 6106         bsr.b      $8e8e
008e88: c141         exg.l      d0, d1
008e8a: 4a80         tst.l      d0
008e8c: 4e75         rts        
008e8e: 48e73800     movem.l    d2-d4, -(a7)
008e92: 2401         move.l     d1, d2
008e94: 6606         bne.b      $8e9c
008e96: 81fc0000     divs.w     #$0, d0
008e9a: 606e         bra.b      $8f0a
008e9c: 5381         subq.l     #$1, d1
008e9e: 676a         beq.b      $8f0a
008ea0: 2801         move.l     d1, d4
008ea2: 2200         move.l     d0, d1
008ea4: b481         cmp.l      d1, d2
008ea6: 650c         bcs.b      $8eb4
008ea8: 6704         beq.b      $8eae
008eaa: 7000         moveq      #$0, d0
008eac: 605c         bra.b      $8f0a
008eae: 7001         moveq      #$1, d0
008eb0: 9282         sub.l      d2, d1
008eb2: 6056         bra.b      $8f0a
008eb4: 2602         move.l     d2, d3
008eb6: 6bf6         bmi.b      $8eae
008eb8: c684         and.l      d4, d3
008eba: 6612         bne.b      $8ece
008ebc: e28a         lsr.l      #$1, d2
008ebe: 76ff         moveq      #$ff, d3
008ec0: e28a         lsr.l      #$1, d2
008ec2: 55cbfffc     dbcs       d3, $8ec0
008ec6: 4483         neg.l      d3
008ec8: e6a8         lsr.l      d3, d0
008eca: c284         and.l      d4, d1
008ecc: 603c         bra.b      $8f0a
008ece: 7000         moveq      #$0, d0
008ed0: 76ff         moveq      #$ff, d3
008ed2: e382         asl.l      #$1, d2
008ed4: 6a06         bpl.b      $8edc
008ed6: b481         cmp.l      d1, d2
008ed8: 620a         bhi.b      $8ee4
008eda: 600c         bra.b      $8ee8
008edc: b481         cmp.l      d1, d2
008ede: 54cbfff2     dbcc       d3, $8ed2
008ee2: 6704         beq.b      $8ee8
008ee4: 5283         addq.l     #$1, d3
008ee6: e28a         lsr.l      #$1, d2
008ee8: 4483         neg.l      d3
008eea: 6004         bra.b      $8ef0
008eec: e380         asl.l      #$1, d0
008eee: e28a         lsr.l      #$1, d2
008ef0: 9282         sub.l      d2, d1
008ef2: 6510         bcs.b      $8f04
008ef4: 5280         addq.l     #$1, d0
008ef6: 51cbfff4     dbra       d3, $8eec
008efa: 600e         bra.b      $8f0a
008efc: e380         asl.l      #$1, d0
008efe: e28a         lsr.l      #$1, d2
008f00: d282         add.l      d2, d1
008f02: 65f0         bcs.b      $8ef4
008f04: 51cbfff6     dbra       d3, $8efc
008f08: d282         add.l      d2, d1
008f0a: 4cdf001c     movem.l    (a7)+, d2-d4
008f0e: 4a80         tst.l      d0
008f10: 4e75         rts        
008f12: 2a5f         movea.l    (a7)+, a5
008f14: 5385         subq.l     #$1, d5
008f16: 6562         bcs.b      $8f7a
008f18: 1018         move.b     (a0)+, d0
008f1a: 67f8         beq.b      $8f14
008f1c: 0c00000d     cmpi.b     #$d, d0
008f20: 6758         beq.b      $8f7a
008f22: 0c000020     cmpi.b     #$20, d0
008f26: 67ec         beq.b      $8f14
008f28: 0c000009     cmpi.b     #$9, d0
008f2c: 67e6         beq.b      $8f14
008f2e: 0c00002c     cmpi.b     #$2c, d0
008f32: 67e0         beq.b      $8f14
008f34: 5282         addq.l     #$1, d2
008f36: 0c000022     cmpi.b     #$22, d0
008f3a: 6730         beq.b      $8f6c
008f3c: 0c000027     cmpi.b     #$27, d0
008f40: 672a         beq.b      $8f6c
008f42: 4868ffff     pea.l      -$1(a0)
008f46: 5385         subq.l     #$1, d5
008f48: 6530         bcs.b      $8f7a
008f4a: 1018         move.b     (a0)+, d0
008f4c: 67c6         beq.b      $8f14
008f4e: 0c00000d     cmpi.b     #$d, d0
008f52: 6712         beq.b      $8f66
008f54: 0c000020     cmpi.b     #$20, d0
008f58: 670c         beq.b      $8f66
008f5a: 0c000009     cmpi.b     #$9, d0
008f5e: 6706         beq.b      $8f66
008f60: 0c00002c     cmpi.b     #$2c, d0
008f64: 66e0         bne.b      $8f46
008f66: 4228ffff     clr.b      -$1(a0)
008f6a: 60a8         bra.b      $8f14
008f6c: 4850         pea.l      (a0)
008f6e: 5385         subq.l     #$1, d5
008f70: 6508         bcs.b      $8f7a
008f72: 1218         move.b     (a0)+, d1
008f74: b001         cmp.b      d1, d0
008f76: 66f6         bne.b      $8f6e
008f78: 60ec         bra.b      $8f66
008f7a: 204f         movea.l    a7, a0
008f7c: 4857         pea.l      (a7)
008f7e: 2f02         move.l     d2, -(a7)
008f80: 5382         subq.l     #$1, d2
008f82: 6710         beq.b      $8f94
008f84: e582         asl.l      #$2, d2
008f86: 20302800     move.l     (a0, d2.l), d0
008f8a: 21902800     move.l     (a0), (a0, d2.l)
008f8e: 20c0         move.l     d0, (a0)+
008f90: 5182         subq.l     #$8, d2
008f92: 62f2         bhi.b      $8f86
008f94: 4ed5         jmp        (a5)
008f96: 4e550000     link.w     a5, #$0
008f9a: 48e76080     movem.l    d1-d2/a0, -(a7)
008f9e: 2041         movea.l    d1, a0
008fa0: 323c0000     move.w     #$0, d1
008fa4: 4e40         trap       #$0
008fa6: 008d         .dc.w      $008d
008fa8: 6000061a     bra.w      $95c4
008fac: 4e550000     link.w     a5, #$0
008fb0: 48e76080     movem.l    d1-d2/a0, -(a7)
008fb4: 323c0001     move.w     #$1, d1
008fb8: 4e40         trap       #$0
008fba: 008d         .dc.w      $008d
008fbc: 65000608     bcs.w      $95c6
008fc0: 2001         move.l     d1, d0
008fc2: 60000600     bra.w      $95c4
008fc6: 4e550000     link.w     a5, #$0
008fca: 48e76080     movem.l    d1-d2/a0, -(a7)
008fce: 323c0006     move.w     #$6, d1
008fd2: 4e40         trap       #$0
008fd4: 008d         .dc.w      $008d
008fd6: 640005f6     bcc.w      $95ce
008fda: 0c4100d3     cmpi.w     #$d3, d1
008fde: 660005e6     bne.w      $95c6
008fe2: 7001         moveq      #$1, d0
008fe4: 600005de     bra.w      $95c4
008fe8: 4e550000     link.w     a5, #$0
008fec: 48e76080     movem.l    d1-d2/a0, -(a7)
008ff0: 2041         movea.l    d1, a0
008ff2: 323c000f     move.w     #$f, d1
008ff6: 242d0008     move.l     $8(a5), d2
008ffa: 60a8         bra.b      $8fa4
008ffc: 4e550000     link.w     a5, #$0
009000: 48e76080     movem.l    d1-d2/a0, -(a7)
009004: 2041         movea.l    d1, a0
009006: 323c000e     move.w     #$e, d1
00900a: 6098         bra.b      $8fa4
00900c: 4e550000     link.w     a5, #$0
009010: 48e76080     movem.l    d1-d2/a0, -(a7)
009014: 323c0002     move.w     #$2, d1
009018: 4e40         trap       #$0
00901a: 008d         .dc.w      $008d
00901c: 650005a8     bcs.w      $95c6
009020: 2002         move.l     d2, d0
009022: 600005a0     bra.w      $95c4
009026: 4e550000     link.w     a5, #$0
00902a: 48e76080     movem.l    d1-d2/a0, -(a7)
00902e: 323c0005     move.w     #$5, d1
009032: 60e4         bra.b      $9018
009034: 4e550000     link.w     a5, #$0
009038: 48e76080     movem.l    d1-d2/a0, -(a7)
00903c: 2041         movea.l    d1, a0
00903e: 323c0000     move.w     #$0, d1
009042: 4e40         trap       #$0
009044: 008e         .dc.w      $008e
009046: 6000057c     bra.w      $95c4
00904a: 4e550000     link.w     a5, #$0
00904e: 48e76080     movem.l    d1-d2/a0, -(a7)
009052: 323c0003     move.w     #$3, d1
009056: 60ea         bra.b      $9042
009058: 4e550000     link.w     a5, #$0
00905c: 48e76080     movem.l    d1-d2/a0, -(a7)
009060: 2401         move.l     d1, d2
009062: 323c0002     move.w     #$2, d1
009066: 60da         bra.b      $9042
009068: 4e550000     link.w     a5, #$0
00906c: 48e76080     movem.l    d1-d2/a0, -(a7)
009070: 2041         movea.l    d1, a0
009072: 323c000f     move.w     #$f, d1
009076: 60ca         bra.b      $9042
009078: 4e550000     link.w     a5, #$0
00907c: 48e76080     movem.l    d1-d2/a0, -(a7)
009080: 2401         move.l     d1, d2
009082: 323c0010     move.w     #$10, d1
009086: 60ba         bra.b      $9042
009088: 4e550000     link.w     a5, #$0
00908c: 48e76080     movem.l    d1-d2/a0, -(a7)
009090: 2401         move.l     d1, d2
009092: 323c0011     move.w     #$11, d1
009096: 60aa         bra.b      $9042
009098: 4e550000     link.w     a5, #$0
00909c: 48e76080     movem.l    d1-d2/a0, -(a7)
0090a0: 2401         move.l     d1, d2
0090a2: 323c001a     move.w     #$1a, d1
0090a6: 609a         bra.b      $9042
0090a8: 4e550000     link.w     a5, #$0
0090ac: 48e76080     movem.l    d1-d2/a0, -(a7)
0090b0: 323c001b     move.w     #$1b, d1
0090b4: 60f0         bra.b      $90a6
0090b6: 4e550000     link.w     a5, #$0
0090ba: 48e76080     movem.l    d1-d2/a0, -(a7)
0090be: 48e71840     movem.l    d3-d4/a1, -(a7)
0090c2: 2401         move.l     d1, d2
0090c4: 7204         moveq      #$4, d1
0090c6: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
0090cc: 4e40         trap       #$0
0090ce: 008e         .dc.w      $008e
0090d0: 4cdf0218     movem.l    (a7)+, d3-d4/a1
0090d4: 600004ee     bra.w      $95c4
0090d8: 4e550000     link.w     a5, #$0
0090dc: 48e76080     movem.l    d1-d2/a0, -(a7)
0090e0: 2401         move.l     d1, d2
0090e2: 323c001c     move.w     #$1c, d1
0090e6: 60be         bra.b      $90a6
0090e8: 4e550000     link.w     a5, #$0
0090ec: 48e76080     movem.l    d1-d2/a0, -(a7)
0090f0: 323c0024     move.w     #$24, d1
0090f4: 60b0         bra.b      $90a6
0090f6: 4e550000     link.w     a5, #$0
0090fa: 48e76080     movem.l    d1-d2/a0, -(a7)
0090fe: 323c0025     move.w     #$25, d1
009102: 60a2         bra.b      $90a6
009104: 4e550000     link.w     a5, #$0
009108: 48e76080     movem.l    d1-d2/a0, -(a7)
00910c: 3401         move.w     d1, d2
00910e: 323c0026     move.w     #$26, d1
009112: 6092         bra.b      $90a6
009114: 4e550000     link.w     a5, #$0
009118: 48e76080     movem.l    d1-d2/a0, -(a7)
00911c: 3401         move.w     d1, d2
00911e: 323c0027     move.w     #$27, d1
009122: 6082         bra.b      $90a6
009124: 4e550000     link.w     a5, #$0
009128: 48e76080     movem.l    d1-d2/a0, -(a7)
00912c: 2040         movea.l    d0, a0
00912e: 2001         move.l     d1, d0
009130: 2f0a         move.l     a2, -(a7)
009132: 4e40         trap       #$0
009134: 0080204a245f ori.l      #$204a245f, d0
00913a: 6500048a     bcs.w      $95c6
00913e: 2008         move.l     a0, d0
009140: 60000482     bra.w      $95c4
009144: 4e550000     link.w     a5, #$0
009148: 48e76080     movem.l    d1-d2/a0, -(a7)
00914c: 204a         movea.l    a2, a0
00914e: 2440         movea.l    d0, a2
009150: 4e40         trap       #$0
009152: 008124486000 ori.l      #$24486000, d1
009158: 046c4e550000 subi.w     #$4e55, $0(a4)
00915e: 48e76080     movem.l    d1-d2/a0, -(a7)
009162: 7000         moveq      #$0, d0
009164: 4e40         trap       #$0
009166: 000a         .dc.w      $000a
009168: 6000045a     bra.w      $95c4
00916c: 4e550000     link.w     a5, #$0
009170: 48e76080     movem.l    d1-d2/a0, -(a7)
009174: 206d0008     movea.l    $8(a5), a0
009178: 2210         move.l     (a0), d1
00917a: 2040         movea.l    d0, a0
00917c: 2017         move.l     (a7), d0
00917e: 4e40         trap       #$0
009180: 00176500     ori.b      #$0, (a7)
009184: 0442206d     subi.w     #$206d, d2
009188: 0008         .dc.w      $0008
00918a: 2081         move.l     d1, (a0)
00918c: 60000440     bra.w      $95ce
009190: 4e550000     link.w     a5, #$0
009194: 48e76080     movem.l    d1-d2/a0, -(a7)
009198: 4e40         trap       #$0
00919a: 000f         .dc.w      $000f
00919c: 60000426     bra.w      $95c4
0091a0: e188         lsl.l      #$8, d0
0091a2: 08c0001f     bset.b     #$1f, d0
0091a6: 4e550000     link.w     a5, #$0
0091aa: 48e76080     movem.l    d1-d2/a0, -(a7)
0091ae: 4e40         trap       #$0
0091b0: 000a         .dc.w      $000a
0091b2: 60000410     bra.w      $95c4
0091b6: 4e550000     link.w     a5, #$0
0091ba: 48e700c0     movem.l    a0-a1, -(a7)
0091be: 2041         movea.l    d1, a0
0091c0: 2240         movea.l    d0, a1
0091c2: 222d0008     move.l     $8(a5), d1
0091c6: 4e40         trap       #$0
0091c8: 00116560     ori.b      #$60, (a1)
0091cc: 7000         moveq      #$0, d0
0091ce: 6068         bra.b      $9238
0091d0: 4e550000     link.w     a5, #$0
0091d4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0091d8: 2040         movea.l    d0, a0
0091da: 4e40         trap       #$0
0091dc: 00106454     ori.b      #$54, (a0)
0091e0: 604a         bra.b      $922c
0091e2: 4e550000     link.w     a5, #$0
0091e6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0091ea: 2040         movea.l    d0, a0
0091ec: 2248         movea.l    a0, a1
0091ee: 1019         move.b     (a1)+, d0
0091f0: 0c00002f     cmpi.b     #$2f, d0
0091f4: 671a         beq.b      $9210
0091f6: 0c00002e     cmpi.b     #$2e, d0
0091fa: 6622         bne.b      $921e
0091fc: 0c19002e     cmpi.b     #$2e, (a1)+
009200: 67fa         beq.b      $91fc
009202: 1021         move.b     -(a1), d0
009204: 672e         beq.b      $9234
009206: 0c00002f     cmpi.b     #$2f, d0
00920a: 6612         bne.b      $921e
00920c: 2049         movea.l    a1, a0
00920e: 60de         bra.b      $91ee
009210: 1019         move.b     (a1)+, d0
009212: 0c00002f     cmpi.b     #$2f, d0
009216: 6706         beq.b      $921e
009218: 0c00002e     cmpi.b     #$2e, d0
00921c: 67de         beq.b      $91fc
00921e: 4e40         trap       #$0
009220: 00106508     ori.b      #$8, (a0)
009224: 4a00         tst.b      d0
009226: 670c         beq.b      $9234
009228: 2049         movea.l    a1, a0
00922a: 60c2         bra.b      $91ee
00922c: 2d41800c     move.l     d1, -$7ff4(a6)
009230: 70ff         moveq      #$ff, d0
009232: 6004         bra.b      $9238
009234: 2009         move.l     a1, d0
009236: 9097         sub.l      (a7), d0
009238: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
00923e: 4e5d         unlk       a5
009240: 4e75         rts        
009242: 4e550000     link.w     a5, #$0
009246: 48e76080     movem.l    d1-d2/a0, -(a7)
00924a: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
00924e: 242d000c     move.l     $c(a5), d2
009252: 0802000f     btst.b     #$f, d2
009256: 6708         beq.b      $9260
009258: 262d0010     move.l     $10(a5), d3
00925c: 282d0014     move.l     $14(a5), d4
009260: 2040         movea.l    d0, a0
009262: 2001         move.l     d1, d0
009264: 222d0008     move.l     $8(a5), d1
009268: 4e40         trap       #$0
00926a: 00256502     ori.b      #$2, -(a5)
00926e: 200a         move.l     a2, d0
009270: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
009274: 6000034e     bra.w      $95c4
009278: 4e550000     link.w     a5, #$0
00927c: 48e76080     movem.l    d1-d2/a0, -(a7)
009280: 2040         movea.l    d0, a0
009282: 4e40         trap       #$0
009284: 001a6500     ori.b      #$0, (a2)+
009288: 033e         .dc.w      $033e
00928a: 2001         move.l     d1, d0
00928c: 60000336     bra.w      $95c4
009290: 4e550000     link.w     a5, #$0
009294: 48e76080     movem.l    d1-d2/a0, -(a7)
009298: 2040         movea.l    d0, a0
00929a: 4e40         trap       #$0
00929c: 001f6500     ori.b      #$0, (a7)+
0092a0: 0326         btst.l     d1, -(a6)
0092a2: 2001         move.l     d1, d0
0092a4: 6000031e     bra.w      $95c4
0092a8: 4e550000     link.w     a5, #$0
0092ac: 48e76080     movem.l    d1-d2/a0, -(a7)
0092b0: 206d0008     movea.l    $8(a5), a0
0092b4: 4e40         trap       #$0
0092b6: 00186000     ori.b      #$0, (a0)+
0092ba: 030a4e55     movep.w    $4e55(a2), d1
0092be: 000048e7     ori.b      #$e7, d0
0092c2: 6080         bra.b      $9244
0092c4: 2040         movea.l    d0, a0
0092c6: 4e40         trap       #$0
0092c8: 00266000     ori.b      #$0, -(a6)
0092cc: 02f8         .dc.w      $02f8
0092ce: 4e550000     link.w     a5, #$0
0092d2: 48e76080     movem.l    d1-d2/a0, -(a7)
0092d6: 08c1001f     bset.b     #$1f, d1
0092da: 600c         bra.b      $92e8
0092dc: 4e550000     link.w     a5, #$0
0092e0: 48e76080     movem.l    d1-d2/a0, -(a7)
0092e4: 242d0008     move.l     $8(a5), d2
0092e8: 4e40         trap       #$0
0092ea: 00276500     ori.b      #$0, -(a7)
0092ee: 02d8         .dc.w      $02d8
0092f0: 2002         move.l     d2, d0
0092f2: 600002d0     bra.w      $95c4
0092f6: 4e550000     link.w     a5, #$0
0092fa: 48e76080     movem.l    d1-d2/a0, -(a7)
0092fe: 4e40         trap       #$0
009300: 000b         .dc.w      $000b
009302: 600002c0     bra.w      $95c4
009306: 4e550000     link.w     a5, #$0
00930a: 4e40         trap       #$0
00930c: 00524e5d     ori.w      #$4e5d, (a2)
009310: 4e75         rts        
009312: 4e550000     link.w     a5, #$0
009316: 48e76080     movem.l    d1-d2/a0, -(a7)
00931a: 2f09         move.l     a1, -(a7)
00931c: 206d0008     movea.l    $8(a5), a0
009320: 226d000c     movea.l    $c(a5), a1
009324: 4e40         trap       #$0
009326: 001b225f     ori.b      #$5f, (a3)+
00932a: 60000298     bra.w      $95c4
00932e: 4e550000     link.w     a5, #$0
009332: 48e73080     movem.l    d2-d3/a0, -(a7)
009336: 2401         move.l     d1, d2
009338: 262f0014     move.l     $14(a7), d3
00933c: 206f0018     movea.l    $18(a7), a0
009340: 7202         moveq      #$2, d1
009342: 4e40         trap       #$0
009344: 00536406     ori.w      #$6406, (a3)
009348: 2d41800c     move.l     d1, -$7ff4(a6)
00934c: 70ff         moveq      #$ff, d0
00934e: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
009354: 4e5d         unlk       a5
009356: 4e75         rts        
009358: 4e550000     link.w     a5, #$0
00935c: 48e77080     movem.l    d1-d3/a0, -(a7)
009360: 2040         movea.l    d0, a0
009362: 7200         moveq      #$0, d1
009364: 4e40         trap       #$0
009366: 00536406     ori.w      #$6406, (a3)
00936a: 2d41800c     move.l     d1, -$7ff4(a6)
00936e: 70ff         moveq      #$ff, d0
009370: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
009376: 4e5d         unlk       a5
009378: 4e75         rts        
00937a: 4e550000     link.w     a5, #$0
00937e: 48e77080     movem.l    d1-d3/a0, -(a7)
009382: 7201         moveq      #$1, d1
009384: 60de         bra.b      $9364
009386: 4e550000     link.w     a5, #$0
00938a: 48e77080     movem.l    d1-d3/a0, -(a7)
00938e: 2040         movea.l    d0, a0
009390: 7203         moveq      #$3, d1
009392: 60d0         bra.b      $9364
009394: 4e550000     link.w     a5, #$0
009398: 48e73080     movem.l    d2-d3/a0, -(a7)
00939c: 2041         movea.l    d1, a0
00939e: 7207         moveq      #$7, d1
0093a0: 60a0         bra.b      $9342
0093a2: 4e550000     link.w     a5, #$0
0093a6: 827c0008     or.w       #$8, d1
0093aa: 4e40         trap       #$0
0093ac: 00536406     ori.w      #$6406, (a3)
0093b0: 2d41800c     move.l     d1, -$7ff4(a6)
0093b4: 72ff         moveq      #$ff, d1
0093b6: 2001         move.l     d1, d0
0093b8: 4e5d         unlk       a5
0093ba: 4e75         rts        
0093bc: 4e550000     link.w     a5, #$0
0093c0: 2f01         move.l     d1, -(a7)
0093c2: 7206         moveq      #$6, d1
0093c4: 4e40         trap       #$0
0093c6: 00536406     ori.w      #$6406, (a3)
0093ca: 2d41800c     move.l     d1, -$7ff4(a6)
0093ce: 72ff         moveq      #$ff, d1
0093d0: 2001         move.l     d1, d0
0093d2: 222dfffc     move.l     -$4(a5), d1
0093d6: 4e5d         unlk       a5
0093d8: 4e75         rts        
0093da: 4e550000     link.w     a5, #$0
0093de: 2f02         move.l     d2, -(a7)
0093e0: 7409         moveq      #$9, d2
0093e2: 6012         bra.b      $93f6
0093e4: 4e550000     link.w     a5, #$0
0093e8: 2f02         move.l     d2, -(a7)
0093ea: 740a         moveq      #$a, d2
0093ec: 6008         bra.b      $93f6
0093ee: 4e550000     link.w     a5, #$0
0093f2: 2f02         move.l     d2, -(a7)
0093f4: 740b         moveq      #$b, d2
0093f6: c342         exg.l      d1, d2
0093f8: 826f000e     or.w       $e(a7), d1
0093fc: 4e40         trap       #$0
0093fe: 00536406     ori.w      #$6406, (a3)
009402: 2d41800c     move.l     d1, -$7ff4(a6)
009406: 72ff         moveq      #$ff, d1
009408: 2001         move.l     d1, d0
00940a: 242dfffc     move.l     -$4(a5), d2
00940e: 4e5d         unlk       a5
009410: 4e75         rts        
009412: 4e550000     link.w     a5, #$0
009416: 48e73000     movem.l    d2-d3, -(a7)
00941a: 7404         moveq      #$4, d2
00941c: c342         exg.l      d1, d2
00941e: 262f0010     move.l     $10(a7), d3
009422: 4e40         trap       #$0
009424: 00536406     ori.w      #$6406, (a3)
009428: 2d41800c     move.l     d1, -$7ff4(a6)
00942c: 72ff         moveq      #$ff, d1
00942e: 2001         move.l     d1, d0
009430: 4ced000cfff8 movem.l    -$8(a5), d2-d3
009436: 4e5d         unlk       a5
009438: 4e75         rts        
00943a: 4e550000     link.w     a5, #$0
00943e: 48e73000     movem.l    d2-d3, -(a7)
009442: 7405         moveq      #$5, d2
009444: 60d6         bra.b      $941c
009446: 4e550000     link.w     a5, #$0
00944a: 48e76080     movem.l    d1-d2/a0, -(a7)
00944e: 2040         movea.l    d0, a0
009450: 3001         move.w     d1, d0
009452: 48e70060     movem.l    a1-a2, -(a7)
009456: 4e40         trap       #$0
009458: 00006502     ori.b      #$2, d0
00945c: 200a         move.l     a2, d0
00945e: 4cdf0600     movem.l    (a7)+, a1-a2
009462: 60000160     bra.w      $95c4
009466: 4e550000     link.w     a5, #$0
00946a: 48e76080     movem.l    d1-d2/a0, -(a7)
00946e: 2040         movea.l    d0, a0
009470: 3001         move.w     d1, d0
009472: 48e70060     movem.l    a1-a2, -(a7)
009476: 4e40         trap       #$0
009478: 000160de     ori.b      #$de, d1
00947c: 4e550000     link.w     a5, #$0
009480: 48e76080     movem.l    d1-d2/a0, -(a7)
009484: 2f0a         move.l     a2, -(a7)
009486: 2440         movea.l    d0, a2
009488: 4e40         trap       #$0
00948a: 0002245f     ori.b      #$5f, d2
00948e: 60000134     bra.w      $95c4
009492: 4e550000     link.w     a5, #$0
009496: 48e76080     movem.l    d1-d2/a0, -(a7)
00949a: 2040         movea.l    d0, a0
00949c: 3001         move.w     d1, d0
00949e: 4e40         trap       #$0
0094a0: 001d6000     ori.b      #$0, (a5)+
0094a4: 0120         btst.l     d0, -(a0)
0094a6: 4e550000     link.w     a5, #$0
0094aa: 48e76080     movem.l    d1-d2/a0, -(a7)
0094ae: 4e40         trap       #$0
0094b0: 0008         .dc.w      $0008
0094b2: 60000110     bra.w      $95c4
0094b6: 4e550000     link.w     a5, #$0
0094ba: 48e76080     movem.l    d1-d2/a0, -(a7)
0094be: 2040         movea.l    d0, a0
0094c0: 7000         moveq      #$0, d0
0094c2: 4e40         trap       #$0
0094c4: 00046500     ori.b      #$0, d4
0094c8: 00fe         .dc.w      $00fe
0094ca: 2408         move.l     a0, d2
0094cc: 670000f6     beq.w      $95c4
0094d0: 4258         clr.w      (a0)+
0094d2: 3081         move.w     d1, (a0)
0094d4: 600000ee     bra.w      $95c4
0094d8: 4e550000     link.w     a5, #$0
0094dc: 48e76080     movem.l    d1-d2/a0, -(a7)
0094e0: 4e40         trap       #$0
0094e2: 000d         .dc.w      $000d
0094e4: 600000de     bra.w      $95c4
0094e8: 4e550000     link.w     a5, #$0
0094ec: 48e76080     movem.l    d1-d2/a0, -(a7)
0094f0: 48e71c40     movem.l    d3-d5/a1, -(a7)
0094f4: 7a03         moveq      #$3, d5
0094f6: 602e         bra.b      $9526
0094f8: 4e550000     link.w     a5, #$0
0094fc: 48e76080     movem.l    d1-d2/a0, -(a7)
009500: 48e71c40     movem.l    d3-d5/a1, -(a7)
009504: 7a01         moveq      #$1, d5
009506: 601e         bra.b      $9526
009508: 4e550000     link.w     a5, #$0
00950c: 48e76080     movem.l    d1-d2/a0, -(a7)
009510: 48e71c40     movem.l    d3-d5/a1, -(a7)
009514: 7a02         moveq      #$2, d5
009516: 600e         bra.b      $9526
009518: 4e550000     link.w     a5, #$0
00951c: 48e76080     movem.l    d1-d2/a0, -(a7)
009520: 48e71c40     movem.l    d3-d5/a1, -(a7)
009524: 7a00         moveq      #$0, d5
009526: 2040         movea.l    d0, a0
009528: 2401         move.l     d1, d2
00952a: 226d0008     movea.l    $8(a5), a1
00952e: 302d0012     move.w     $12(a5), d0
009532: 4840         swap       d0
009534: 302d000e     move.w     $e(a5), d0
009538: 222d0014     move.l     $14(a5), d1
00953c: 7603         moveq      #$3, d3
00953e: 08050001     btst.b     #$1, d5
009542: 6704         beq.b      $9548
009544: 262d001c     move.l     $1c(a5), d3
009548: 282d0018     move.l     $18(a5), d4
00954c: 08050000     btst.b     #$0, d5
009550: 6606         bne.b      $9558
009552: 4e40         trap       #$0
009554: 00036004     ori.b      #$4, d3
009558: 4e40         trap       #$0
00955a: 00054cdf     ori.b      #$df, d5
00955e: 023860000062 andi.b     #$0, $62.w
009564: 4e550000     link.w     a5, #$0
009568: 48e76080     movem.l    d1-d2/a0, -(a7)
00956c: 4e40         trap       #$0
00956e: 000c         .dc.w      $000c
009570: 60000052     bra.w      $95c4
009574: 4e550000     link.w     a5, #$0
009578: 48e76080     movem.l    d1-d2/a0, -(a7)
00957c: 4e40         trap       #$0
00957e: 000c         .dc.w      $000c
009580: 65000044     bcs.w      $95c6
009584: 2001         move.l     d1, d0
009586: 6000003c     bra.w      $95c4
00958a: 4e550000     link.w     a5, #$0
00958e: 48e76080     movem.l    d1-d2/a0, -(a7)
009592: 2200         move.l     d0, d1
009594: 4e40         trap       #$0
009596: 001c6000     ori.b      #$0, (a4)+
00959a: 002a4e550000 ori.b      #$55, $0(a2)
0095a0: 48e76080     movem.l    d1-d2/a0, -(a7)
0095a4: 41fa0012     lea.l      $95b8(pc), a0
0095a8: 2d4095b0     move.l     d0, -$6a50(a6)
0095ac: 6602         bne.b      $95b0
0095ae: 2040         movea.l    d0, a0
0095b0: 4e40         trap       #$0
0095b2: 0009         .dc.w      $0009
0095b4: 6000000e     bra.w      $95c4
0095b8: 2001         move.l     d1, d0
0095ba: 206e95b0     movea.l    -$6a50(a6), a0
0095be: 4e90         jsr        (a0)
0095c0: 4e40         trap       #$0
0095c2: 001e640c     ori.b      #$c, (a6)+
0095c6: 2d41800c     move.l     d1, -$7ff4(a6)
0095ca: 70ff         moveq      #$ff, d0
0095cc: 6004         bra.b      $95d2
0095ce: 65f6         bcs.b      $95c6
0095d0: 7000         moveq      #$0, d0
0095d2: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
0095d8: 4e5d         unlk       a5
0095da: 4e75         rts        
0095dc: 4e550000     link.w     a5, #$0
0095e0: 2200         move.l     d0, d1
0095e2: 6100001e     bsr.w      $9602
0095e6: 6100f452     bsr.w      $8a3a
0095ea: 6008         bra.b      $95f4
0095ec: 4e550000     link.w     a5, #$0
0095f0: 4afc         illegal    #$4afc
0095f2: 2200         move.l     d0, d1
0095f4: 4e40         trap       #$0
0095f6: 0006dead     ori.b      #$ad, d6
0095fa: dead003c     add.l      $3c(a5), d7
0095fe: 00014e75     ori.b      #$75, d1
009602: 4e75         rts        
