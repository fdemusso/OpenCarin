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
0000a0: 203c000047f4 move.l     #$47f4, d0
0000a6: 4ebb0800     jsr        $a8(pc,d0.l)
0000aa: 6076         bra.b      $122
0000ac: 43e80004     lea.l      $4(a0), a1
0000b0: 2d498fb6     move.l     a1, -$704a(a6)
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
000122: 207c00003d16 movea.l    #$3d16, a0
000128: 4ebb8800     jsr        $12a(pc,a0.l)
00012c: 6500011c     bcs.w      $24a
000130: 6120         bsr.b      $152
000132: 4cdf0003     movem.l    (a7)+, d0-d1
000136: 9bcd         suba.l     a5, a5
000138: 2f2e8fb6     move.l     -$704a(a6), -(a7)
00013c: 207c0000014c movea.l    #$14c, a0
000142: 4ebb8800     jsr        $144(pc,a0.l)
000146: 7000         moveq      #$0, d0
000148: 207c00004cfe movea.l    #$4cfe, a0
00014e: 4ebb8800     jsr        $150(pc,a0.l)
000152: 207cffff9102 movea.l    #$ffff9102, a0
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
00018e: 207c00004cce movea.l    #$4cce, a0
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
0001da: 227c00004c8c movea.l    #$4c8c, a1
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
000254: 227cffff8c2e movea.l    #$ffff8c2e, a1
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
000276: 207cffff8c2e movea.l    #$ffff8c2e, a0
00027c: d1ce         adda.l     a6, a0
00027e: 6100ff18     bsr.w      $198
000282: 4e40         trap       #$0
000284: 00064e40     ori.b      #$40, d6
000288: 000612d8     ori.b      #$d8, d6
00028c: 66fc         bne.b      $28a
00028e: 4e75         rts        
000290: 4e550000     link.w     a5, #$0
000294: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000298: 2800         move.l     d0, d4
00029a: 2441         movea.l    d1, a2
00029c: 558f         subq.l     #$2, a7
00029e: 41fb017000002704 lea.l      $2704(a16, invalid.w), a0
0002a6: 2008         move.l     a0, d0
0002a8: 610026de     bsr.w      $2988
0002ac: 41fb01700000016e lea.l      $16e(a16, invalid.w), a0
0002b4: 2008         move.l     a0, d0
0002b6: 610025b6     bsr.w      $286e
0002ba: 220a         move.l     a2, d1
0002bc: 2004         move.l     d4, d0
0002be: 610000c2     bsr.w      $382
0002c2: 4a2e8fbc     tst.b      -$7044(a6)
0002c6: 6706         beq.b      $2ce
0002c8: 610003d0     bsr.w      $69a
0002cc: 601e         bra.b      $2ec
0002ce: 61004b06     bsr.w      $4dd6
0002d2: 61002a80     bsr.w      $2d54
0002d6: 2d408fd4     move.l     d0, -$702c(a6)
0002da: 223c00002608 move.l     #$2608, d1
0002e0: 202e8fd4     move.l     -$702c(a6), d0
0002e4: 61002f60     bsr.w      $3246
0002e8: 610002c6     bsr.w      $5b0
0002ec: 426e8fc8     clr.w      -$7038(a6)
0002f0: 1d7c00018fc0 move.b     #$1, -$7040(a6)
0002f6: 1f7c00010001 move.b     #$1, $1(a7)
0002fc: 7002         moveq      #$2, d0
0002fe: 6100482a     bsr.w      $4b2a
000302: 610006c6     bsr.w      $9ca
000306: 4a40         tst.w      d0
000308: 6706         beq.b      $310
00030a: 7001         moveq      #$1, d0
00030c: 6100481c     bsr.w      $4b2a
000310: 4a6e8fda     tst.w      -$7026(a6)
000314: 6710         beq.b      $326
000316: 202e8032     move.l     -$7fce(a6), d0
00031a: 61001ff4     bsr.w      $2310
00031e: 426e8fda     clr.w      -$7026(a6)
000322: 422f0001     clr.b      $1(a7)
000326: 4a6e8fdc     tst.w      -$7024(a6)
00032a: 670a         beq.b      $336
00032c: 7000         moveq      #$0, d0
00032e: 610004f4     bsr.w      $824
000332: 422f0001     clr.b      $1(a7)
000336: 4a6e8fd8     tst.w      -$7028(a6)
00033a: 670c         beq.b      $348
00033c: 426e8fd8     clr.w      -$7028(a6)
000340: 61001044     bsr.w      $1386
000344: 422f0001     clr.b      $1(a7)
000348: 4a6e8fc8     tst.w      -$7038(a6)
00034c: 6712         beq.b      $360
00034e: 61000566     bsr.w      $8b6
000352: 426e8fc8     clr.w      -$7038(a6)
000356: 1d7c00018fc0 move.b     #$1, -$7040(a6)
00035c: 422f0001     clr.b      $1(a7)
000360: 4a2f0001     tst.b      $1(a7)
000364: 6700ff90     beq.w      $2f6
000368: 61000642     bsr.w      $9ac
00036c: 7000         moveq      #$0, d0
00036e: 61000d62     bsr.w      $10d2
000372: 6000ff82     bra.w      $2f6
000376: 548f         addq.l     #$2, a7
000378: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00037e: 4e5d         unlk       a5
000380: 4e75         rts        
000382: 4e550000     link.w     a5, #$0
000386: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00038a: 2800         move.l     d0, d4
00038c: 2441         movea.l    d1, a2
00038e: 518f         subq.l     #$8, a7
000390: 7001         moveq      #$1, d0
000392: 2e80         move.l     d0, (a7)
000394: 60000074     bra.w      $40a
000398: 2017         move.l     (a7), d0
00039a: 2f720c000004 move.l     (a2, d0.l * 4), $4(a7)
0003a0: 206f0004     movea.l    $4(a7), a0
0003a4: 52af0004     addq.l     #$1, $4(a7)
0003a8: 0c10002d     cmpi.b     #$2d, (a0)
0003ac: 665a         bne.b      $408
0003ae: 6032         bra.b      $3e2
0003b0: 3d7c00018fba move.w     #$1, -$7046(a6)
0003b6: 6050         bra.b      $408
0003b8: 3d7c00028fba move.w     #$2, -$7046(a6)
0003be: 6048         bra.b      $408
0003c0: 1d7c00018fbc move.b     #$1, -$7044(a6)
0003c6: 6040         bra.b      $408
0003c8: 2017         move.l     (a7), d0
0003ca: 2f320c00     move.l     (a2, d0.l * 4), -(a7)
0003ce: 41fa061a     lea.l      $9ea(pc), a0
0003d2: 2208         move.l     a0, d1
0003d4: 41ee8c4a     lea.l      -$73b6(a6), a0
0003d8: 2008         move.l     a0, d0
0003da: 61003b3a     bsr.w      $3f16
0003de: 588f         addq.l     #$4, a7
0003e0: 6026         bra.b      $408
0003e2: 206f0004     movea.l    $4(a7), a0
0003e6: 52af0004     addq.l     #$1, $4(a7)
0003ea: 1010         move.b     (a0), d0
0003ec: 4880         ext.w      d0
0003ee: 0c4000ff     cmpi.w     #$ff, d0
0003f2: 62d4         bhi.b      $3c8
0003f4: 0c00004d     cmpi.b     #$4d, d0
0003f8: 67b6         beq.b      $3b0
0003fa: 0c000054     cmpi.b     #$54, d0
0003fe: 67b8         beq.b      $3b8
000400: 0c000078     cmpi.b     #$78, d0
000404: 67ba         beq.b      $3c0
000406: 60c0         bra.b      $3c8
000408: 5297         addq.l     #$1, (a7)
00040a: b897         cmp.l      (a7), d4
00040c: 6e00ff8a     bgt.w      $398
000410: 508f         addq.l     #$8, a7
000412: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
000418: 4e5d         unlk       a5
00041a: 4e75         rts        
00041c: 4e550000     link.w     a5, #$0
000420: 48e78800     movem.l    d0/d4, -(a7)
000424: 2800         move.l     d0, d4
000426: 6052         bra.b      $47a
000428: 3d7c00018fda move.w     #$1, -$7026(a6)
00042e: 60000084     bra.w      $4b4
000432: 3d7c00018fdc move.w     #$1, -$7024(a6)
000438: 6000007a     bra.w      $4b4
00043c: 3d7c00018fd8 move.w     #$1, -$7028(a6)
000442: 3d7c00018fbe move.w     #$1, -$7042(a6)
000448: 6000006a     bra.w      $4b4
00044c: 3d7c00018fd8 move.w     #$1, -$7028(a6)
000452: 3d7c00028fbe move.w     #$2, -$7042(a6)
000458: 605a         bra.b      $4b4
00045a: 4a2e8fc0     tst.b      -$7040(a6)
00045e: 6754         beq.b      $4b4
000460: 422e8fc0     clr.b      -$7040(a6)
000464: 3d7c00018fc8 move.w     #$1, -$7038(a6)
00046a: 6048         bra.b      $4b4
00046c: 3d7c00018fd2 move.w     #$1, -$702e(a6)
000472: 6040         bra.b      $4b4
000474: 52ae8fce     addq.l     #$1, -$7032(a6)
000478: 603a         bra.b      $4b4
00047a: 0c8400002601 cmpi.l     #$2601, d4
000480: 67a6         beq.b      $428
000482: 621c         bhi.b      $4a0
000484: 0c44211d     cmpi.w     #$211d, d4
000488: 67b2         beq.b      $43c
00048a: 620a         bhi.b      $496
00048c: 0c840000211c cmpi.l     #$211c, d4
000492: 67b8         beq.b      $44c
000494: 60de         bra.b      $474
000496: 0c8400002600 cmpi.l     #$2600, d4
00049c: 6794         beq.b      $432
00049e: 60d4         bra.b      $474
0004a0: 0c8400002605 cmpi.l     #$2605, d4
0004a6: 67c4         beq.b      $46c
0004a8: 62ca         bhi.b      $474
0004aa: 0c8400002604 cmpi.l     #$2604, d4
0004b0: 67a8         beq.b      $45a
0004b2: 60c0         bra.b      $474
0004b4: 4ced0010fffc movem.l    -$4(a5), d4
0004ba: 4e5d         unlk       a5
0004bc: 4e75         rts        
0004be: 4e550000     link.w     a5, #$0
0004c2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0004c6: 4fefffae     lea.l      -$52(a7), a7
0004ca: 4aaf0052     tst.l      $52(a7)
0004ce: 6d22         blt.b      $4f2
0004d0: 202f0052     move.l     $52(a7), d0
0004d4: 61003ab4     bsr.w      $3f8a
0004d8: 4a80         tst.l      d0
0004da: 6c16         bge.b      $4f2
0004dc: 2f2f0056     move.l     $56(a7), -(a7)
0004e0: 41fa0524     lea.l      $a06(pc), a0
0004e4: 2208         move.l     a0, d1
0004e6: 41ef0005     lea.l      $5(a7), a0
0004ea: 2008         move.l     a0, d0
0004ec: 61003a2c     bsr.w      $3f1a
0004f0: 588f         addq.l     #$4, a7
0004f2: 4fef0052     lea.l      $52(a7), a7
0004f6: 4ced0100fffc movem.l    -$4(a5), a0
0004fc: 4e5d         unlk       a5
0004fe: 4e75         rts        
000500: 4e550000     link.w     a5, #$0
000504: 48e7c080     movem.l    d0-d1/a0, -(a7)
000508: 4fefffaa     lea.l      -$56(a7), a7
00050c: 222f005a     move.l     $5a(a7), d1
000510: 202f0056     move.l     $56(a7), d0
000514: 61002b8c     bsr.w      $30a2
000518: 2f400052     move.l     d0, $52(a7)
00051c: 4aaf0052     tst.l      $52(a7)
000520: 6c32         bge.b      $554
000522: 2f2f0056     move.l     $56(a7), -(a7)
000526: 41fa04ef     lea.l      $a17(pc), a0
00052a: 2208         move.l     a0, d1
00052c: 41ef0005     lea.l      $5(a7), a0
000530: 2008         move.l     a0, d0
000532: 610039e6     bsr.w      $3f1a
000536: 588f         addq.l     #$4, a7
000538: 48780002     pea.l      $2.w
00053c: 720a         moveq      #$a, d1
00053e: 203c00000098 move.l     #$98, d0
000544: 610029d4     bsr.w      $2f1a
000548: 588f         addq.l     #$4, a7
00054a: 610029f4     bsr.w      $2f40
00054e: 70ff         moveq      #$ff, d0
000550: 610002d2     bsr.w      $824
000554: 202f0052     move.l     $52(a7), d0
000558: 4fef0056     lea.l      $56(a7), a7
00055c: 4ced0100fffc movem.l    -$4(a5), a0
000562: 4e5d         unlk       a5
000564: 4e75         rts        
000566: 4e550000     link.w     a5, #$0
00056a: 48e780c0     movem.l    d0/a0-a1, -(a7)
00056e: 6024         bra.b      $594
000570: 203c80000019 move.l     #$80000019, d0
000576: 610045b8     bsr.w      $4b30
00057a: 4a6e8fdc     tst.w      -$7024(a6)
00057e: 6706         beq.b      $586
000580: 7000         moveq      #$0, d0
000582: 610002a0     bsr.w      $824
000586: 61000d64     bsr.w      $12ec
00058a: 206e803a     movea.l    -$7fc6(a6), a0
00058e: 216e80700032 move.l     -$7f90(a6), $32(a0)
000594: 206e803a     movea.l    -$7fc6(a6), a0
000598: 226e8036     movea.l    -$7fca(a6), a1
00059c: 2029001c     move.l     $1c(a1), d0
0005a0: b0a80032     cmp.l      $32(a0), d0
0005a4: 6eca         bgt.b      $570
0005a6: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0005ac: 4e5d         unlk       a5
0005ae: 4e75         rts        
0005b0: 4e550000     link.w     a5, #$0
0005b4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0005b8: 41ee8080     lea.l      -$7f80(a6), a0
0005bc: 2d488032     move.l     a0, -$7fce(a6)
0005c0: 41ee809c     lea.l      -$7f64(a6), a0
0005c4: 2d488036     move.l     a0, -$7fca(a6)
0005c8: 41ee80ca     lea.l      -$7f36(a6), a0
0005cc: 2d48803a     move.l     a0, -$7fc6(a6)
0005d0: 41ee8104     lea.l      -$7efc(a6), a0
0005d4: 2d488078     move.l     a0, -$7f88(a6)
0005d8: 7203         moveq      #$3, d1
0005da: 41fa044b     lea.l      $a27(pc), a0
0005de: 2008         move.l     a0, d0
0005e0: 6100ff1e     bsr.w      $500
0005e4: 2d40801e     move.l     d0, -$7fe2(a6)
0005e8: 223c00002604 move.l     #$2604, d1
0005ee: 202e801e     move.l     -$7fe2(a6), d0
0005f2: 6100442e     bsr.w      $4a22
0005f6: 61001dde     bsr.w      $23d6
0005fa: 7202         moveq      #$2, d1
0005fc: 41fa0437     lea.l      $a35(pc), a0
000600: 2008         move.l     a0, d0
000602: 6100fefc     bsr.w      $500
000606: 2d408026     move.l     d0, -$7fda(a6)
00060a: 7201         moveq      #$1, d1
00060c: 41fa043e     lea.l      $a4c(pc), a0
000610: 2008         move.l     a0, d0
000612: 6100feec     bsr.w      $500
000616: 2d408022     move.l     d0, -$7fde(a6)
00061a: 7202         moveq      #$2, d1
00061c: 41fa0446     lea.l      $a64(pc), a0
000620: 2008         move.l     a0, d0
000622: 6100fedc     bsr.w      $500
000626: 2d40802e     move.l     d0, -$7fd2(a6)
00062a: 610027fc     bsr.w      $2e28
00062e: 4a00         tst.b      d0
000630: 661c         bne.b      $64e
000632: 4878000a     pea.l      $a.w
000636: 720a         moveq      #$a, d1
000638: 203c00000098 move.l     #$98, d0
00063e: 610028da     bsr.w      $2f1a
000642: 588f         addq.l     #$4, a7
000644: 610028fa     bsr.w      $2f40
000648: 70ff         moveq      #$ff, d0
00064a: 610001d8     bsr.w      $824
00064e: 7000         moveq      #$0, d0
000650: 61000a80     bsr.w      $10d2
000654: 202e8032     move.l     -$7fce(a6), d0
000658: 61001c1a     bsr.w      $2274
00065c: 61000d28     bsr.w      $1386
000660: 4a6e8fc2     tst.w      -$703e(a6)
000664: 6616         bne.b      $67c
000666: 4a2e8fde     tst.b      -$7022(a6)
00066a: 6710         beq.b      $67c
00066c: 6006         bra.b      $674
00066e: 701e         moveq      #$1e, d0
000670: 610044b8     bsr.w      $4b2a
000674: 61001996     bsr.w      $200c
000678: 4a00         tst.b      d0
00067a: 67f2         beq.b      $66e
00067c: 48782605     pea.l      $2605.w
000680: 222e801e     move.l     -$7fe2(a6), d1
000684: 203c00007f41 move.l     #$7f41, d0
00068a: 610036f0     bsr.w      $3d7c
00068e: 588f         addq.l     #$4, a7
000690: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000696: 4e5d         unlk       a5
000698: 4e75         rts        
00069a: 4e550000     link.w     a5, #$0
00069e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0006a2: 558f         subq.l     #$2, a7
0006a4: 422f0001     clr.b      $1(a7)
0006a8: 41ee8104     lea.l      -$7efc(a6), a0
0006ac: 2d488078     move.l     a0, -$7f88(a6)
0006b0: 41ee816e     lea.l      -$7e92(a6), a0
0006b4: 2d48807c     move.l     a0, -$7f84(a6)
0006b8: 7203         moveq      #$3, d1
0006ba: 41fa03c0     lea.l      $a7c(pc), a0
0006be: 2008         move.l     a0, d0
0006c0: 6100fe3e     bsr.w      $500
0006c4: 2d40801e     move.l     d0, -$7fe2(a6)
0006c8: 223c00002604 move.l     #$2604, d1
0006ce: 202e801e     move.l     -$7fe2(a6), d0
0006d2: 6100434e     bsr.w      $4a22
0006d6: 61001cfe     bsr.w      $23d6
0006da: 7202         moveq      #$2, d1
0006dc: 41fa03ac     lea.l      $a8a(pc), a0
0006e0: 2008         move.l     a0, d0
0006e2: 6100fe1c     bsr.w      $500
0006e6: 2d40802a     move.l     d0, -$7fd6(a6)
0006ea: 6100273c     bsr.w      $2e28
0006ee: 4a00         tst.b      d0
0006f0: 661c         bne.b      $70e
0006f2: 4878000a     pea.l      $a.w
0006f6: 720a         moveq      #$a, d1
0006f8: 203c00000098 move.l     #$98, d0
0006fe: 6100281a     bsr.w      $2f1a
000702: 588f         addq.l     #$4, a7
000704: 6100283a     bsr.w      $2f40
000708: 70ff         moveq      #$ff, d0
00070a: 61000118     bsr.w      $824
00070e: 610018fc     bsr.w      $200c
000712: 4a00         tst.b      d0
000714: 670000f2     beq.w      $808
000718: 61001ce2     bsr.w      $23fc
00071c: 1f400001     move.b     d0, $1(a7)
000720: 4a2f0001     tst.b      $1(a7)
000724: 670000e2     beq.w      $808
000728: 0c6e00018fba cmpi.w     #$1, -$7046(a6)
00072e: 670c         beq.b      $73c
000730: 610004ba     bsr.w      $bec
000734: 61001ea6     bsr.w      $25dc
000738: 61000830     bsr.w      $f6a
00073c: 41fa0366     lea.l      $aa4(pc), a0
000740: 2208         move.l     a0, d1
000742: 7050         moveq      #$50, d0
000744: d0ae8078     add.l      -$7f88(a6), d0
000748: 610038b0     bsr.w      $3ffa
00074c: 4a80         tst.l      d0
00074e: 6636         bne.b      $786
000750: 206e8078     movea.l    -$7f88(a6), a0
000754: 0c680003004c cmpi.w     #$3, $4c(a0)
00075a: 660a         bne.b      $766
00075c: 206e807c     movea.l    -$7f84(a6), a0
000760: 30bc000c     move.w     #$c, (a0)
000764: 6008         bra.b      $76e
000766: 206e807c     movea.l    -$7f84(a6), a0
00076a: 30bc000b     move.w     #$b, (a0)
00076e: 206e807c     movea.l    -$7f84(a6), a0
000772: 226e8078     movea.l    -$7f88(a6), a1
000776: 2169000a0002 move.l     $a(a1), $2(a0)
00077c: 2169000e0006 move.l     $e(a1), $6(a0)
000782: 6000008c     bra.w      $810
000786: 206e8078     movea.l    -$7f88(a6), a0
00078a: 4a680048     tst.w      $48(a0)
00078e: 6652         bne.b      $7e2
000790: 206e807c     movea.l    -$7f84(a6), a0
000794: 30bc0003     move.w     #$3, (a0)
000798: 60000076     bra.w      $810
00079c: 206e807c     movea.l    -$7f84(a6), a0
0007a0: 30bc0004     move.w     #$4, (a0)
0007a4: 606a         bra.b      $810
0007a6: 206e807c     movea.l    -$7f84(a6), a0
0007aa: 30bc0005     move.w     #$5, (a0)
0007ae: 6060         bra.b      $810
0007b0: 206e807c     movea.l    -$7f84(a6), a0
0007b4: 30bc0006     move.w     #$6, (a0)
0007b8: 6056         bra.b      $810
0007ba: 206e807c     movea.l    -$7f84(a6), a0
0007be: 30bc0007     move.w     #$7, (a0)
0007c2: 604c         bra.b      $810
0007c4: 206e807c     movea.l    -$7f84(a6), a0
0007c8: 30bc0008     move.w     #$8, (a0)
0007cc: 6042         bra.b      $810
0007ce: 206e807c     movea.l    -$7f84(a6), a0
0007d2: 30bc0009     move.w     #$9, (a0)
0007d6: 6038         bra.b      $810
0007d8: 206e807c     movea.l    -$7f84(a6), a0
0007dc: 30bc000a     move.w     #$a, (a0)
0007e0: 6024         bra.b      $806
0007e2: 206e8078     movea.l    -$7f88(a6), a0
0007e6: 3028004a     move.w     $4a(a0), d0
0007ea: 0c400006     cmpi.w     #$6, d0
0007ee: 6218         bhi.b      $808
0007f0: 303b0206     move.w     $7f8(pc, d0.w), d0
0007f4: 4efb0002     jmp        $7f8(pc, d0.w)
0007f8: ffa4         dc.w       $ffa4
0007fa: ffae         dc.w       $ffae
0007fc: ffb8         dc.w       $ffb8
0007fe: ffc2         dc.w       $ffc2
000800: ffcc         dc.w       $ffcc
000802: ffd6         dc.w       $ffd6
000804: ffe0         dc.w       $ffe0
000806: 6008         bra.b      $810
000808: 206e807c     movea.l    -$7f84(a6), a0
00080c: 30bc0001     move.w     #$1, (a0)
000810: 61000b2a     bsr.w      $133c
000814: 7000         moveq      #$0, d0
000816: 610c         bsr.b      $824
000818: 548f         addq.l     #$2, a7
00081a: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
000820: 4e5d         unlk       a5
000822: 4e75         rts        
000824: 4e550000     link.w     a5, #$0
000828: 48e7c080     movem.l    d0-d1/a0, -(a7)
00082c: 4aae8fce     tst.l      -$7032(a6)
000830: 202e801e     move.l     -$7fe2(a6), d0
000834: 610041fc     bsr.w      $4a32
000838: 4a2e8fbc     tst.b      -$7044(a6)
00083c: 6648         bne.b      $886
00083e: 4a6e8fda     tst.w      -$7026(a6)
000842: 670c         beq.b      $850
000844: 202e8032     move.l     -$7fce(a6), d0
000848: 61001ac6     bsr.w      $2310
00084c: 426e8fda     clr.w      -$7026(a6)
000850: 41fa0256     lea.l      $aa8(pc), a0
000854: 2208         move.l     a0, d1
000856: 202e801e     move.l     -$7fe2(a6), d0
00085a: 6100fc62     bsr.w      $4be
00085e: 41fa0258     lea.l      $ab8(pc), a0
000862: 2208         move.l     a0, d1
000864: 202e8026     move.l     -$7fda(a6), d0
000868: 6100fc54     bsr.w      $4be
00086c: 41fa0257     lea.l      $ac5(pc), a0
000870: 2208         move.l     a0, d1
000872: 202e802e     move.l     -$7fd2(a6), d0
000876: 6100fc46     bsr.w      $4be
00087a: 41fa0257     lea.l      $ad3(pc), a0
00087e: 2208         move.l     a0, d1
000880: 202e8022     move.l     -$7fde(a6), d0
000884: 6018         bra.b      $89e
000886: 41fa0257     lea.l      $adf(pc), a0
00088a: 2208         move.l     a0, d1
00088c: 202e801e     move.l     -$7fe2(a6), d0
000890: 6100fc2c     bsr.w      $4be
000894: 41fa0259     lea.l      $aef(pc), a0
000898: 2208         move.l     a0, d1
00089a: 202e802a     move.l     -$7fd6(a6), d0
00089e: 6100fc1e     bsr.w      $4be
0008a2: 61001fde     bsr.w      $2882
0008a6: 2017         move.l     (a7), d0
0008a8: 610045a4     bsr.w      $4e4e
0008ac: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0008b2: 4e5d         unlk       a5
0008b4: 4e75         rts        
0008b6: 4e550000     link.w     a5, #$0
0008ba: 48e780c0     movem.l    d0/a0-a1, -(a7)
0008be: 598f         subq.l     #$4, a7
0008c0: 422f0002     clr.b      $2(a7)
0008c4: 422f0001     clr.b      $1(a7)
0008c8: 3d7c00018fca move.w     #$1, -$7036(a6)
0008ce: 61001b2c     bsr.w      $23fc
0008d2: 1f400003     move.b     d0, $3(a7)
0008d6: 4a2f0003     tst.b      $3(a7)
0008da: 67000092     beq.w      $96e
0008de: 4a6e8fc2     tst.w      -$703e(a6)
0008e2: 6612         bne.b      $8f6
0008e4: 206e803a     movea.l    -$7fc6(a6), a0
0008e8: 43ee803e     lea.l      -$7fc2(a6), a1
0008ec: 700d         moveq      #$d, d0
0008ee: 20d9         move.l     (a1)+, (a0)+
0008f0: 51c8fffc     dbra       d0, $8ee
0008f4: 30d9         move.w     (a1)+, (a0)+
0008f6: 610002bc     bsr.w      $bb4
0008fa: 1f400002     move.b     d0, $2(a7)
0008fe: 610000ca     bsr.w      $9ca
000902: 4a2f0002     tst.b      $2(a7)
000906: 67000066     beq.w      $96e
00090a: 6100089e     bsr.w      $11aa
00090e: 61000260     bsr.w      $b70
000912: 1f400001     move.b     d0, $1(a7)
000916: 6752         beq.b      $96a
000918: 61000c46     bsr.w      $1560
00091c: 1f400001     move.b     d0, $1(a7)
000920: 6748         beq.b      $96a
000922: 610000a6     bsr.w      $9ca
000926: 0c6e00018fbe cmpi.w     #$1, -$7042(a6)
00092c: 6610         bne.b      $93e
00092e: 61000c16     bsr.w      $1546
000932: 4a00         tst.b      d0
000934: 6734         beq.b      $96a
000936: 3d7c00028fcc move.w     #$2, -$7034(a6)
00093c: 6030         bra.b      $96e
00093e: 7024         moveq      #$24, d0
000940: d0ae8036     add.l      -$7fca(a6), d0
000944: 61001354     bsr.w      $1c9a
000948: 4a00         tst.b      d0
00094a: 6608         bne.b      $954
00094c: 3d7c00018fcc move.w     #$1, -$7034(a6)
000952: 601a         bra.b      $96e
000954: 702c         moveq      #$2c, d0
000956: d0ae8036     add.l      -$7fca(a6), d0
00095a: 61000cde     bsr.w      $163a
00095e: 4a00         tst.b      d0
000960: 67d4         beq.b      $936
000962: 3d7c00038fcc move.w     #$3, -$7034(a6)
000968: 6004         bra.b      $96e
00096a: 426e8fcc     clr.w      -$7034(a6)
00096e: 615a         bsr.b      $9ca
000970: 4a2f0001     tst.b      $1(a7)
000974: 6618         bne.b      $98e
000976: 426e8fcc     clr.w      -$7034(a6)
00097a: 4a2f0003     tst.b      $3(a7)
00097e: 6706         beq.b      $986
000980: 4a2f0002     tst.b      $2(a7)
000984: 6608         bne.b      $98e
000986: 61000920     bsr.w      $12a8
00098a: 6100081e     bsr.w      $11aa
00098e: 613a         bsr.b      $9ca
000990: 306e8fcc     movea.w    -$7034(a6), a0
000994: 2008         move.l     a0, d0
000996: 6100073a     bsr.w      $10d2
00099a: 612e         bsr.b      $9ca
00099c: 52ae8fc4     addq.l     #$1, -$703c(a6)
0009a0: 588f         addq.l     #$4, a7
0009a2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0009a8: 4e5d         unlk       a5
0009aa: 4e75         rts        
0009ac: 4e550000     link.w     a5, #$0
0009b0: 48e78000     movem.l    d0, -(a7)
0009b4: 3d7c00018fca move.w     #$1, -$7036(a6)
0009ba: 426e8fcc     clr.w      -$7034(a6)
0009be: 610008e8     bsr.w      $12a8
0009c2: 610007e6     bsr.w      $11aa
0009c6: 4e5d         unlk       a5
0009c8: 4e75         rts        
0009ca: 4e550000     link.w     a5, #$0
0009ce: 48e78000     movem.l    d0, -(a7)
0009d2: 4a6e8fd2     tst.w      -$702e(a6)
0009d6: 670c         beq.b      $9e4
0009d8: 61000912     bsr.w      $12ec
0009dc: 426e8fd2     clr.w      -$702e(a6)
0009e0: 7001         moveq      #$1, d0
0009e2: 6002         bra.b      $9e6
0009e4: 7000         moveq      #$0, d0
0009e6: 4e5d         unlk       a5
0009e8: 4e75         rts        
0009ea: 7772         .dc.w      $7772
0009ec: 6f6e         ble.b      $a5c
0009ee: 6720         beq.b      $a10
0009f0: 6172         bsr.b      $a64
0009f2: 6775         beq.b      $a69
0009f4: 6d65         blt.b      $a5b
0009f6: 6e74         bgt.b      $a6c
0009f8: 2064         movea.l    -(a4), a0
0009fa: 705f         moveq      #$5f, d0
0009fc: 6770         beq.b      $a6e
0009fe: 733a         .dc.w      $733a
000a00: 2725         move.l     -(a5), -(a3)
000a02: 7327         .dc.w      $7327
000a04: 0d00         btst.l     d6, d0
000a06: 6361         bls.b      $a69
000a08: 6e6e         bgt.b      $a78
000a0a: 6f74         ble.b      $a80
000a0c: 2063         movea.l    -(a3), a0
000a0e: 6c6f         bge.b      $a7f
000a10: 7365         .dc.w      $7365
000a12: 2025         move.l     -(a5), d0
000a14: 730d         .dc.w      $730d
000a16: 0063616e     ori.w      #$616e, -(a3)
000a1a: 6e6f         bgt.b      $a8b
000a1c: 7420         moveq      #$20, d2
000a1e: 6f70         ble.b      $a90
000a20: 656e         bcs.b      $a90
000a22: 2025         move.l     -(a5), d0
000a24: 730d         .dc.w      $730d
000a26: 002f63302f5f ori.b      #$30, $2f5f(a7)
000a2c: 3132395f     move.w     ([a2]), -(a0)
000a30: 2f677073     move.l     -(a7), $7073(a7)
000a34: 002f63302f5f ori.b      #$30, $2f5f(a7)
000a3a: 3132395f     move.w     ([a2]), -(a0)
000a3e: 2f7061636b2f6770735f706f move.l     ([$6b2f, a0], $6770735f), $706f(a7)
000a4a: 7300         .dc.w      $7300
000a4c: 2f63302f     move.l     -(a3), $302f(a7)
000a50: 5f313239     subq.b     #$7, $39(a1, d3.w)
000a54: 5f2f7061     subq.b     #$7, $7061(a7)
000a58: 636b         bls.b      $ac5
000a5a: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
000a68: 5f313239     subq.b     #$7, $39(a1, d3.w)
000a6c: 5f2f7061     subq.b     #$7, $7061(a7)
000a70: 636b         bls.b      $add
000a72: 2f677073     move.l     -(a7), $7073(a7)
000a76: 5f696e66     subq.w     #$7, $6e66(a1)
000a7a: 6f002f63     ble.w      $39df
000a7e: 302f5f31     move.w     $5f31(a7), d0
000a82: 32395f2f6770 move.w     $5f2f6770.l, d1
000a88: 7300         .dc.w      $7300
000a8a: 2f63302f     move.l     -(a3), $302f(a7)
000a8e: 5f313239     subq.b     #$7, $39(a1, d3.w)
000a92: 5f2f7061     subq.b     #$7, $7061(a7)
000a96: 636b         bls.b      $b03
000a98: 2f677073     move.l     -(a7), $7073(a7)
000a9c: 5f737461     subq.w     #$7, $61(a3, d7.w)
000aa0: 7475         moveq      #$75, d2
000aa2: 7300         .dc.w      $7300
000aa4: 4e41         trap       #$1
000aa6: 5600         addq.b     #$3, d0
000aa8: 6770         beq.b      $b1a
000aaa: 735f         .dc.w      $735f
000aac: 6472         bcc.b      $b20
000aae: 6976         bvs.b      $b26
000ab0: 6572         bcs.b      $b24
000ab2: 5f70617468006770 subq.w     #$7, $68006770(a0, invalid.w)
000aba: 735f         .dc.w      $735f
000abc: 706f         moveq      #$6f, d0
000abe: 735f         .dc.w      $735f
000ac0: 7061         moveq      #$61, d0
000ac2: 7468         moveq      #$68, d2
000ac4: 00677073     ori.w      #$7073, -(a7)
000ac8: 5f696e66     subq.w     #$7, $6e66(a1)
000acc: 6f5f         ble.b      $b2d
000ace: 7061         moveq      #$61, d0
000ad0: 7468         moveq      #$68, d2
000ad2: 0064705f     ori.w      #$705f, -(a4)
000ad6: 706f         moveq      #$6f, d0
000ad8: 735f         .dc.w      $735f
000ada: 7061         moveq      #$61, d0
000adc: 7468         moveq      #$68, d2
000ade: 00677073     ori.w      #$7073, -(a7)
000ae2: 5f64         subq.w     #$7, -(a4)
000ae4: 7269         moveq      #$69, d1
000ae6: 7665         moveq      #$65, d3
000ae8: 725f         moveq      #$5f, d1
000aea: 7061         moveq      #$61, d0
000aec: 7468         moveq      #$68, d2
000aee: 00677073     ori.w      #$7073, -(a7)
000af2: 5f737461     subq.w     #$7, $61(a3, d7.w)
000af6: 745f         moveq      #$5f, d2
000af8: 7061         moveq      #$61, d0
000afa: 7468         moveq      #$68, d2
000afc: 00004e55     ori.b      #$55, d0
000b00: 000048e7     ori.b      #$e7, d0
000b04: f0804fef     fbf.w      $5af5
000b08: fff0         dc.w       $fff0
000b0a: 202f0010     move.l     $10(a7), d0
000b0e: d0af0014     add.l      $14(a7), d0
000b12: 61003620     bsr.w      $4134
000b16: 7600         moveq      #$0, d3
000b18: 243c404e0000 move.l     #$404e0000, d2
000b1e: 4e4f         trap       #$f
000b20: 001348ef     ori.b      #$ef, (a3)
000b24: 00030008     ori.b      #$8, d3
000b28: 206f0010     movea.l    $10(a7), a0
000b2c: 202f0014     move.l     $14(a7), d0
000b30: 42300800     clr.b      (a0, d0.l)
000b34: 202f0010     move.l     $10(a7), d0
000b38: 610035ce     bsr.w      $4108
000b3c: 4e4f         trap       #$f
000b3e: 002048d7     ori.b      #$d7, -(a0)
000b42: 00034cef     ori.b      #$ef, d3
000b46: 000c         .dc.w      $000c
000b48: 0008         .dc.w      $0008
000b4a: 4cd70003     movem.l    (a7), d0-d1
000b4e: 4e4f         trap       #$f
000b50: 000e         .dc.w      $000e
000b52: 263ca252dd11 move.l     #$a252dd11, d3
000b58: 243c3f91df46 move.l     #$3f91df46, d2
000b5e: 4e4f         trap       #$f
000b60: 00124fef     ori.b      #$ef, (a2)
000b64: 00104ced     ori.b      #$ed, (a0)
000b68: 010cfff4     movep.w    -$c(a4), d0
000b6c: 4e5d         unlk       a5
000b6e: 4e75         rts        
000b70: 4e550000     link.w     a5, #$0
000b74: 48e7c080     movem.l    d0-d1/a0, -(a7)
000b78: 41fa0554     lea.l      $10ce(pc), a0
000b7c: 2208         move.l     a0, d1
000b7e: 7050         moveq      #$50, d0
000b80: d0ae8078     add.l      -$7f88(a6), d0
000b84: 61003474     bsr.w      $3ffa
000b88: 4a80         tst.l      d0
000b8a: 661c         bne.b      $ba8
000b8c: 206e8078     movea.l    -$7f88(a6), a0
000b90: 0c680002004c cmpi.w     #$2, $4c(a0)
000b96: 670c         beq.b      $ba4
000b98: 206e8078     movea.l    -$7f88(a6), a0
000b9c: 0c680003004c cmpi.w     #$3, $4c(a0)
000ba2: 6604         bne.b      $ba8
000ba4: 7001         moveq      #$1, d0
000ba6: 6002         bra.b      $baa
000ba8: 7000         moveq      #$0, d0
000baa: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000bb0: 4e5d         unlk       a5
000bb2: 4e75         rts        
000bb4: 4e550000     link.w     a5, #$0
000bb8: 48e78000     movem.l    d0, -(a7)
000bbc: 0c6e00018fba cmpi.w     #$1, -$7046(a6)
000bc2: 6722         beq.b      $be6
000bc4: 0c6e00028fba cmpi.w     #$2, -$7046(a6)
000bca: 661a         bne.b      $be6
000bcc: 611e         bsr.b      $bec
000bce: 4a00         tst.b      d0
000bd0: 6710         beq.b      $be2
000bd2: 426e8fca     clr.w      -$7036(a6)
000bd6: 61001a04     bsr.w      $25dc
000bda: 6100038e     bsr.w      $f6a
000bde: 4a00         tst.b      d0
000be0: 6604         bne.b      $be6
000be2: 7000         moveq      #$0, d0
000be4: 6002         bra.b      $be8
000be6: 7001         moveq      #$1, d0
000be8: 4e5d         unlk       a5
000bea: 4e75         rts        
000bec: 4e550000     link.w     a5, #$0
000bf0: 48e7fcc0     movem.l    d0-d5/a0-a1, -(a7)
000bf4: 4fefffb2     lea.l      -$4e(a7), a7
000bf8: 61001a92     bsr.w      $268c
000bfc: 7201         moveq      #$1, d1
000bfe: b280         cmp.l      d0, d1
000c00: 6706         beq.b      $c08
000c02: 7000         moveq      #$0, d0
000c04: 60000356     bra.w      $f5c
000c08: 41ef0038     lea.l      $38(a7), a0
000c0c: 2008         move.l     a0, d0
000c0e: 61001952     bsr.w      $2562
000c12: 41ef0038     lea.l      $38(a7), a0
000c16: 2008         move.l     a0, d0
000c18: 610034c2     bsr.w      $40dc
000c1c: 206e8078     movea.l    -$7f88(a6), a0
000c20: 21400006     move.l     d0, $6(a0)
000c24: 206e8078     movea.l    -$7f88(a6), a0
000c28: 20280006     move.l     $6(a0), d0
000c2c: 61000448     bsr.w      $1076
000c30: 206e8078     movea.l    -$7f88(a6), a0
000c34: 21400054     move.l     d0, $54(a0)
000c38: 41ef0038     lea.l      $38(a7), a0
000c3c: 2008         move.l     a0, d0
000c3e: 61001922     bsr.w      $2562
000c42: 7202         moveq      #$2, d1
000c44: 41ef0038     lea.l      $38(a7), a0
000c48: 2008         move.l     a0, d0
000c4a: 6100feb2     bsr.w      $afe
000c4e: 48ef00030020 movem.l    d0-d1, $20(a7)
000c54: 41ef0038     lea.l      $38(a7), a0
000c58: 2008         move.l     a0, d0
000c5a: 61001906     bsr.w      $2562
000c5e: 0c2f004e0038 cmpi.b     #$4e, $38(a7)
000c64: 6710         beq.b      $c76
000c66: 4cef00030020 movem.l    $20(a7), d0-d1
000c6c: 4e4f         trap       #$f
000c6e: 001548ef     ori.b      #$ef, (a5)
000c72: 00030020     ori.b      #$20, d3
000c76: 41ef0038     lea.l      $38(a7), a0
000c7a: 2008         move.l     a0, d0
000c7c: 610018e4     bsr.w      $2562
000c80: 7203         moveq      #$3, d1
000c82: 41ef0038     lea.l      $38(a7), a0
000c86: 2008         move.l     a0, d0
000c88: 6100fe74     bsr.w      $afe
000c8c: 48ef00030018 movem.l    d0-d1, $18(a7)
000c92: 41ef0038     lea.l      $38(a7), a0
000c96: 2008         move.l     a0, d0
000c98: 610018c8     bsr.w      $2562
000c9c: 0c2f00450038 cmpi.b     #$45, $38(a7)
000ca2: 671c         beq.b      $cc0
000ca4: 4cef000c0018 movem.l    $18(a7), d2-d3
000caa: 223c54411744 move.l     #$54411744, d1
000cb0: 203c401921fb move.l     #$401921fb, d0
000cb6: 4e4f         trap       #$f
000cb8: 001048ef     ori.b      #$ef, (a0)
000cbc: 00030018     ori.b      #$18, d3
000cc0: 2f6f00240014 move.l     $24(a7), $14(a7)
000cc6: 2f6f00200010 move.l     $20(a7), $10(a7)
000ccc: 2f6f001c000c move.l     $1c(a7), $c(a7)
000cd2: 2f6f00180008 move.l     $18(a7), $8(a7)
000cd8: 700a         moveq      #$a, d0
000cda: d0ae8078     add.l      -$7f88(a6), d0
000cde: 2200         move.l     d0, d1
000ce0: 41ef0008     lea.l      $8(a7), a0
000ce4: 2008         move.l     a0, d0
000ce6: 206e8b3a     movea.l    -$74c6(a6), a0
000cea: 4e90         jsr        (a0)
000cec: 4a2e8fbc     tst.b      -$7044(a6)
000cf0: 6612         bne.b      $d04
000cf2: 206e8032     movea.l    -$7fce(a6), a0
000cf6: 226e8078     movea.l    -$7f88(a6), a1
000cfa: 20a9000a     move.l     $a(a1), (a0)
000cfe: 2169000e0004 move.l     $e(a1), $4(a0)
000d04: 41ef0038     lea.l      $38(a7), a0
000d08: 2008         move.l     a0, d0
000d0a: 61001856     bsr.w      $2562
000d0e: 41ef0038     lea.l      $38(a7), a0
000d12: 2008         move.l     a0, d0
000d14: 6100341e     bsr.w      $4134
000d18: 7600         moveq      #$0, d3
000d1a: 243c40590000 move.l     #$40590000, d2
000d20: 4e4f         trap       #$f
000d22: 00124e4f     ori.b      #$4f, (a2)
000d26: 0024206e     ori.b      #$6e, -(a4)
000d2a: 80782140     or.w       $2140.w, d0
000d2e: 001241ef     ori.b      #$ef, (a2)
000d32: 003820086100 ori.b      #$8, $6100.w
000d38: 182a41ef     move.b     $41ef(a2), d4
000d3c: 003820086100 ori.b      #$8, $6100.w
000d42: 33c63f40004c move.w     d6, $3f40004c.l
000d48: 0c6f0001004c cmpi.w     #$1, $4c(a7)
000d4e: 6720         beq.b      $d70
000d50: 0c6f0003004c cmpi.w     #$3, $4c(a7)
000d56: 6718         beq.b      $d70
000d58: 0c6f0004004c cmpi.w     #$4, $4c(a7)
000d5e: 6710         beq.b      $d70
000d60: 0c6f0005004c cmpi.w     #$5, $4c(a7)
000d66: 6708         beq.b      $d70
000d68: 0c6f0006004c cmpi.w     #$6, $4c(a7)
000d6e: 660c         bne.b      $d7c
000d70: 206e8078     movea.l    -$7f88(a6), a0
000d74: 317c0002004c move.w     #$2, $4c(a0)
000d7a: 6034         bra.b      $db0
000d7c: 0c6f0002004c cmpi.w     #$2, $4c(a7)
000d82: 6718         beq.b      $d9c
000d84: 0c6f0007004c cmpi.w     #$7, $4c(a7)
000d8a: 6710         beq.b      $d9c
000d8c: 0c6f0008004c cmpi.w     #$8, $4c(a7)
000d92: 6708         beq.b      $d9c
000d94: 0c6f0009004c cmpi.w     #$9, $4c(a7)
000d9a: 660c         bne.b      $da8
000d9c: 206e8078     movea.l    -$7f88(a6), a0
000da0: 317c0003004c move.w     #$3, $4c(a0)
000da6: 6008         bra.b      $db0
000da8: 206e8078     movea.l    -$7f88(a6), a0
000dac: 4268004c     clr.w      $4c(a0)
000db0: 41ef0038     lea.l      $38(a7), a0
000db4: 2008         move.l     a0, d0
000db6: 610017aa     bsr.w      $2562
000dba: 41ef0038     lea.l      $38(a7), a0
000dbe: 2008         move.l     a0, d0
000dc0: 610032ac     bsr.w      $406e
000dc4: 7204         moveq      #$4, d1
000dc6: b280         cmp.l      d0, d1
000dc8: 6f10         ble.b      $dda
000dca: 41ef0038     lea.l      $38(a7), a0
000dce: 2208         move.l     a0, d1
000dd0: 7050         moveq      #$50, d0
000dd2: d0ae8078     add.l      -$7f88(a6), d0
000dd6: 610032b4     bsr.w      $408c
000dda: 41ef0038     lea.l      $38(a7), a0
000dde: 2008         move.l     a0, d0
000de0: 61001780     bsr.w      $2562
000de4: 41ef0038     lea.l      $38(a7), a0
000de8: 2008         move.l     a0, d0
000dea: 6100331c     bsr.w      $4108
000dee: 206e8078     movea.l    -$7f88(a6), a0
000df2: 31400048     move.w     d0, $48(a0)
000df6: 41ef0038     lea.l      $38(a7), a0
000dfa: 2008         move.l     a0, d0
000dfc: 61001764     bsr.w      $2562
000e00: 41ef0038     lea.l      $38(a7), a0
000e04: 2008         move.l     a0, d0
000e06: 61003300     bsr.w      $4108
000e0a: 206e8078     movea.l    -$7f88(a6), a0
000e0e: 3140004a     move.w     d0, $4a(a0)
000e12: 6100fd5c     bsr.w      $b70
000e16: 4a00         tst.b      d0
000e18: 67000140     beq.w      $f5a
000e1c: 41ef0038     lea.l      $38(a7), a0
000e20: 2008         move.l     a0, d0
000e22: 6100173e     bsr.w      $2562
000e26: 41ef0038     lea.l      $38(a7), a0
000e2a: 2008         move.l     a0, d0
000e2c: 610032ae     bsr.w      $40dc
000e30: 7264         moveq      #$64, d1
000e32: 4c010000     mulu.l     d1, d0
000e36: 206e8078     movea.l    -$7f88(a6), a0
000e3a: 21400018     move.l     d0, $18(a0)
000e3e: 41ef0038     lea.l      $38(a7), a0
000e42: 2008         move.l     a0, d0
000e44: 6100171c     bsr.w      $2562
000e48: 41ef0038     lea.l      $38(a7), a0
000e4c: 2008         move.l     a0, d0
000e4e: 610032b8     bsr.w      $4108
000e52: 2f400004     move.l     d0, $4(a7)
000e56: 202f0004     move.l     $4(a7), d0
000e5a: 206e8b4a     movea.l    -$74b6(a6), a0
000e5e: 4e90         jsr        (a0)
000e60: 2e80         move.l     d0, (a7)
000e62: 2017         move.l     (a7), d0
000e64: 206e8b62     movea.l    -$749e(a6), a0
000e68: 4e90         jsr        (a0)
000e6a: 206e8078     movea.l    -$7f88(a6), a0
000e6e: 31400016     move.w     d0, $16(a0)
000e72: 41ef0038     lea.l      $38(a7), a0
000e76: 2008         move.l     a0, d0
000e78: 610016e8     bsr.w      $2562
000e7c: 41ef0038     lea.l      $38(a7), a0
000e80: 2008         move.l     a0, d0
000e82: 610032b0     bsr.w      $4134
000e86: 48ef00030030 movem.l    d0-d1, $30(a7)
000e8c: 206e8078     movea.l    -$7f88(a6), a0
000e90: 216f00340020 move.l     $34(a7), $20(a0)
000e96: 216f0030001c move.l     $30(a7), $1c(a0)
000e9c: 41ef0038     lea.l      $38(a7), a0
000ea0: 2008         move.l     a0, d0
000ea2: 610016be     bsr.w      $2562
000ea6: 41ef0038     lea.l      $38(a7), a0
000eaa: 2008         move.l     a0, d0
000eac: 61003286     bsr.w      $4134
000eb0: 48ef00030028 movem.l    d0-d1, $28(a7)
000eb6: 206e8078     movea.l    -$7f88(a6), a0
000eba: 216f002c0028 move.l     $2c(a7), $28(a0)
000ec0: 216f00280024 move.l     $28(a7), $24(a0)
000ec6: 41ef0038     lea.l      $38(a7), a0
000eca: 2008         move.l     a0, d0
000ecc: 61001694     bsr.w      $2562
000ed0: 41ef0038     lea.l      $38(a7), a0
000ed4: 2008         move.l     a0, d0
000ed6: 6100325c     bsr.w      $4134
000eda: 206e8078     movea.l    -$7f88(a6), a0
000ede: 48e80003002c movem.l    d0-d1, $2c(a0)
000ee4: 4cef000c0028 movem.l    $28(a7), d2-d3
000eea: 4cef00030028 movem.l    $28(a7), d0-d1
000ef0: 4e4f         trap       #$f
000ef2: 00122a01     ori.b      #$1, (a2)
000ef6: 2800         move.l     d0, d4
000ef8: 4cef000c0030 movem.l    $30(a7), d2-d3
000efe: 4cef00030030 movem.l    $30(a7), d0-d1
000f04: 4e4f         trap       #$f
000f06: 00122605     ori.b      #$5, (a2)
000f0a: 2404         move.l     d4, d2
000f0c: 4e4f         trap       #$f
000f0e: 000e         .dc.w      $000e
000f10: 610038c4     bsr.w      $47d6
000f14: 206e8078     movea.l    -$7f88(a6), a0
000f18: 48e800030034 movem.l    d0-d1, $34(a0)
000f1e: 41ef0038     lea.l      $38(a7), a0
000f22: 2008         move.l     a0, d0
000f24: 6100163c     bsr.w      $2562
000f28: 0c2f00310038 cmpi.b     #$31, $38(a7)
000f2e: 6604         bne.b      $f34
000f30: 7001         moveq      #$1, d0
000f32: 6002         bra.b      $f36
000f34: 7000         moveq      #$0, d0
000f36: 206e8078     movea.l    -$7f88(a6), a0
000f3a: 11400058     move.b     d0, $58(a0)
000f3e: 41ef0038     lea.l      $38(a7), a0
000f42: 2008         move.l     a0, d0
000f44: 6100161c     bsr.w      $2562
000f48: 41ef0038     lea.l      $38(a7), a0
000f4c: 2008         move.l     a0, d0
000f4e: 610031b8     bsr.w      $4108
000f52: 206e8078     movea.l    -$7f88(a6), a0
000f56: 3140004e     move.w     d0, $4e(a0)
000f5a: 7001         moveq      #$1, d0
000f5c: 4fef004e     lea.l      $4e(a7), a7
000f60: 4ced033effe4 movem.l    -$1c(a5), d1-d5/a0-a1
000f66: 4e5d         unlk       a5
000f68: 4e75         rts        
000f6a: 4e550000     link.w     a5, #$0
000f6e: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
000f72: 4fefffe0     lea.l      -$20(a7), a7
000f76: 61001714     bsr.w      $268c
000f7a: 7202         moveq      #$2, d1
000f7c: b280         cmp.l      d0, d1
000f7e: 6706         beq.b      $f86
000f80: 7000         moveq      #$0, d0
000f82: 600000e4     bra.w      $1068
000f86: 2f7c000003e80004 move.l     #$3e8, $4(a7)
000f8e: 206e8078     movea.l    -$7f88(a6), a0
000f92: 3ea8004a     move.w     $4a(a0), (a7)
000f96: 3f7c00010002 move.w     #$1, $2(a7)
000f9c: 604c         bra.b      $fea
000f9e: 41ef000c     lea.l      $c(a7), a0
000fa2: 2008         move.l     a0, d0
000fa4: 610015bc     bsr.w      $2562
000fa8: 41ef000c     lea.l      $c(a7), a0
000fac: 2008         move.l     a0, d0
000fae: 610015b2     bsr.w      $2562
000fb2: 41ef000c     lea.l      $c(a7), a0
000fb6: 2008         move.l     a0, d0
000fb8: 6100317a     bsr.w      $4134
000fbc: 7600         moveq      #$0, d3
000fbe: 243c40240000 move.l     #$40240000, d2
000fc4: 4e4f         trap       #$f
000fc6: 00124e4f     ori.b      #$4f, (a2)
000fca: 00242f40     ori.b      #$40, -(a4)
000fce: 0008         .dc.w      $0008
000fd0: 4aaf0008     tst.l      $8(a7)
000fd4: 6f10         ble.b      $fe6
000fd6: 202f0008     move.l     $8(a7), d0
000fda: b0af0004     cmp.l      $4(a7), d0
000fde: 6c06         bge.b      $fe6
000fe0: 2f6f00080004 move.l     $8(a7), $4(a7)
000fe6: 526f0002     addq.w     #$1, $2(a7)
000fea: 302f0002     move.w     $2(a7), d0
000fee: b057         cmp.w      (a7), d0
000ff0: 6fac         ble.b      $f9e
000ff2: 206e8078     movea.l    -$7f88(a6), a0
000ff6: 216f00040044 move.l     $4(a7), $44(a0)
000ffc: 41ef000c     lea.l      $c(a7), a0
001000: 2008         move.l     a0, d0
001002: 6100155e     bsr.w      $2562
001006: 41ef000c     lea.l      $c(a7), a0
00100a: 2008         move.l     a0, d0
00100c: 610030fa     bsr.w      $4108
001010: 206e8078     movea.l    -$7f88(a6), a0
001014: 3080         move.w     d0, (a0)
001016: 41ef000c     lea.l      $c(a7), a0
00101a: 2008         move.l     a0, d0
00101c: 61001544     bsr.w      $2562
001020: 41ef000c     lea.l      $c(a7), a0
001024: 2008         move.l     a0, d0
001026: 610030e0     bsr.w      $4108
00102a: 206e8078     movea.l    -$7f88(a6), a0
00102e: 31400002     move.w     d0, $2(a0)
001032: 41ef000c     lea.l      $c(a7), a0
001036: 2008         move.l     a0, d0
001038: 61001528     bsr.w      $2562
00103c: 41ef000c     lea.l      $c(a7), a0
001040: 2008         move.l     a0, d0
001042: 610030c4     bsr.w      $4108
001046: 206e8078     movea.l    -$7f88(a6), a0
00104a: 31400004     move.w     d0, $4(a0)
00104e: 4a2e8fbc     tst.b      -$7044(a6)
001052: 6612         bne.b      $1066
001054: 206e8032     movea.l    -$7fce(a6), a0
001058: 226e8078     movea.l    -$7f88(a6), a1
00105c: 21510008     move.l     (a1), $8(a0)
001060: 31690004000c move.w     $4(a1), $c(a0)
001066: 7001         moveq      #$1, d0
001068: 4fef0020     lea.l      $20(a7), a7
00106c: 4ced030effec movem.l    -$14(a5), d1-d3/a0-a1
001072: 4e5d         unlk       a5
001074: 4e75         rts        
001076: 4e550000     link.w     a5, #$0
00107a: 48e7c000     movem.l    d0-d1, -(a7)
00107e: 518f         subq.l     #$8, a7
001080: 202f0008     move.l     $8(a7), d0
001084: 4c7c080100000064 divs.l     #$64, d0
00108c: 2f410004     move.l     d1, $4(a7)
001090: 202f0008     move.l     $8(a7), d0
001094: 4c7c080000000064 divs.l     #$64, d0
00109c: 2f400008     move.l     d0, $8(a7)
0010a0: 202f0008     move.l     $8(a7), d0
0010a4: 4c7c080100000064 divs.l     #$64, d0
0010ac: 2e81         move.l     d1, (a7)
0010ae: 7024         moveq      #$24, d0
0010b0: 4c2f00000008 mulu.l     $8(a7), d0
0010b6: 7218         moveq      #$18, d1
0010b8: 4c171001     mulu.l     (a7), d1
0010bc: d081         add.l      d1, d0
0010be: d0af0004     add.l      $4(a7), d0
0010c2: 508f         addq.l     #$8, a7
0010c4: 4ced0002fffc movem.l    -$4(a5), d1
0010ca: 4e5d         unlk       a5
0010cc: 4e75         rts        
0010ce: 4e41         trap       #$1
0010d0: 5600         addq.b     #$3, d0
0010d2: 4e550000     link.w     a5, #$0
0010d6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0010da: 0c6e00028fc2 cmpi.w     #$2, -$703e(a6)
0010e0: 670c         beq.b      $10ee
0010e2: 6148         bsr.b      $112c
0010e4: 206e8036     movea.l    -$7fca(a6), a0
0010e8: 316f00020010 move.w     $2(a7), $10(a0)
0010ee: 4878002e     pea.l      $2e.w
0010f2: 222e8036     move.l     -$7fca(a6), d1
0010f6: 202e8026     move.l     -$7fda(a6), d0
0010fa: 61002e7a     bsr.w      $3f76
0010fe: 588f         addq.l     #$4, a7
001100: 722e         moveq      #$2e, d1
001102: b280         cmp.l      d0, d1
001104: 671c         beq.b      $1122
001106: 48780004     pea.l      $4.w
00110a: 720a         moveq      #$a, d1
00110c: 203c00000098 move.l     #$98, d0
001112: 61001e06     bsr.w      $2f1a
001116: 588f         addq.l     #$4, a7
001118: 61001e26     bsr.w      $2f40
00111c: 70ff         moveq      #$ff, d0
00111e: 6100f704     bsr.w      $824
001122: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001128: 4e5d         unlk       a5
00112a: 4e75         rts        
00112c: 4e550000     link.w     a5, #$0
001130: 48e780c0     movem.l    d0/a0-a1, -(a7)
001134: 206e8036     movea.l    -$7fca(a6), a0
001138: 226e803a     movea.l    -$7fc6(a6), a1
00113c: 20a90020     move.l     $20(a1), (a0)
001140: 216900240004 move.l     $24(a1), $4(a0)
001146: 206e803a     movea.l    -$7fc6(a6), a0
00114a: 226e8036     movea.l    -$7fca(a6), a1
00114e: 23680032001c move.l     $32(a0), $1c(a1)
001154: 206e8036     movea.l    -$7fca(a6), a0
001158: 226e8078     movea.l    -$7f88(a6), a1
00115c: 2169000a0008 move.l     $a(a1), $8(a0)
001162: 2169000e000c move.l     $e(a1), $c(a0)
001168: 206e8078     movea.l    -$7f88(a6), a0
00116c: 226e8036     movea.l    -$7fca(a6), a1
001170: 336800160012 move.w     $16(a0), $12(a1)
001176: 206e8078     movea.l    -$7f88(a6), a0
00117a: 226e8036     movea.l    -$7fca(a6), a1
00117e: 236800180014 move.l     $18(a0), $14(a1)
001184: 206e8078     movea.l    -$7f88(a6), a0
001188: 226e8036     movea.l    -$7fca(a6), a1
00118c: 2368005a0018 move.l     $5a(a0), $18(a1)
001192: 206e8078     movea.l    -$7f88(a6), a0
001196: 226e8036     movea.l    -$7fca(a6), a1
00119a: 236800540020 move.l     $54(a0), $20(a1)
0011a0: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0011a6: 4e5d         unlk       a5
0011a8: 4e75         rts        
0011aa: 4e550000     link.w     a5, #$0
0011ae: 48e7c080     movem.l    d0-d1/a0, -(a7)
0011b2: 6140         bsr.b      $11f4
0011b4: 4878001e     pea.l      $1e.w
0011b8: 41ee8178     lea.l      -$7e88(a6), a0
0011bc: 2208         move.l     a0, d1
0011be: 202e802e     move.l     -$7fd2(a6), d0
0011c2: 61002db2     bsr.w      $3f76
0011c6: 588f         addq.l     #$4, a7
0011c8: 721e         moveq      #$1e, d1
0011ca: b280         cmp.l      d0, d1
0011cc: 671c         beq.b      $11ea
0011ce: 48780004     pea.l      $4.w
0011d2: 720a         moveq      #$a, d1
0011d4: 203c00000098 move.l     #$98, d0
0011da: 61001d3e     bsr.w      $2f1a
0011de: 588f         addq.l     #$4, a7
0011e0: 61001d5e     bsr.w      $2f40
0011e4: 70ff         moveq      #$ff, d0
0011e6: 6100f63c     bsr.w      $824
0011ea: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0011f0: 4e5d         unlk       a5
0011f2: 4e75         rts        
0011f4: 4e550000     link.w     a5, #$0
0011f8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0011fc: 206e8078     movea.l    -$7f88(a6), a0
001200: 2d508178     move.l     (a0), -$7e88(a6)
001204: 3d680004817c move.w     $4(a0), -$7e84(a6)
00120a: 206e8078     movea.l    -$7f88(a6), a0
00120e: 2d680006817e move.l     $6(a0), -$7e82(a6)
001214: 206e8078     movea.l    -$7f88(a6), a0
001218: 2d68000a8182 move.l     $a(a0), -$7e7e(a6)
00121e: 2d68000e8186 move.l     $e(a0), -$7e7a(a6)
001224: 206e8078     movea.l    -$7f88(a6), a0
001228: 3d680048818a move.w     $48(a0), -$7e76(a6)
00122e: 206e8078     movea.l    -$7f88(a6), a0
001232: 3d68004c818e move.w     $4c(a0), -$7e72(a6)
001238: 206e8078     movea.l    -$7f88(a6), a0
00123c: 3d68004a818c move.w     $4a(a0), -$7e74(a6)
001242: 7050         moveq      #$50, d0
001244: d0ae8078     add.l      -$7f88(a6), d0
001248: 2200         move.l     d0, d1
00124a: 41ee8190     lea.l      -$7e70(a6), a0
00124e: 2008         move.l     a0, d0
001250: 61002e3a     bsr.w      $408c
001254: 206e8078     movea.l    -$7f88(a6), a0
001258: 3d68004e8194 move.w     $4e(a0), -$7e6c(a6)
00125e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001264: 4e5d         unlk       a5
001266: 4e75         rts        
001268: 4e550000     link.w     a5, #$0
00126c: 48e780c0     movem.l    d0/a0-a1, -(a7)
001270: 206e8078     movea.l    -$7f88(a6), a0
001274: 226e8032     movea.l    -$7fce(a6), a1
001278: 20a90008     move.l     $8(a1), (a0)
00127c: 3169000c0004 move.w     $c(a1), $4(a0)
001282: 206e8078     movea.l    -$7f88(a6), a0
001286: 42a80006     clr.l      $6(a0)
00128a: 206e8078     movea.l    -$7f88(a6), a0
00128e: 226e8032     movea.l    -$7fce(a6), a1
001292: 2151000a     move.l     (a1), $a(a0)
001296: 21690004000e move.l     $4(a1), $e(a0)
00129c: 610a         bsr.b      $12a8
00129e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0012a4: 4e5d         unlk       a5
0012a6: 4e75         rts        
0012a8: 4e550000     link.w     a5, #$0
0012ac: 48e7c080     movem.l    d0-d1/a0, -(a7)
0012b0: 206e8078     movea.l    -$7f88(a6), a0
0012b4: 42680048     clr.w      $48(a0)
0012b8: 206e8078     movea.l    -$7f88(a6), a0
0012bc: 4268004a     clr.w      $4a(a0)
0012c0: 206e8078     movea.l    -$7f88(a6), a0
0012c4: 4268004c     clr.w      $4c(a0)
0012c8: 41fa00b8     lea.l      $1382(pc), a0
0012cc: 2208         move.l     a0, d1
0012ce: 7050         moveq      #$50, d0
0012d0: d0ae8078     add.l      -$7f88(a6), d0
0012d4: 61002db6     bsr.w      $408c
0012d8: 206e8078     movea.l    -$7f88(a6), a0
0012dc: 317c0002004e move.w     #$2, $4e(a0)
0012e2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0012e8: 4e5d         unlk       a5
0012ea: 4e75         rts        
0012ec: 4e550000     link.w     a5, #$0
0012f0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0012f4: 0c6e00018fc2 cmpi.w     #$1, -$703e(a6)
0012fa: 6736         beq.b      $1332
0012fc: 4878003a     pea.l      $3a.w
001300: 41ee803e     lea.l      -$7fc2(a6), a0
001304: 2208         move.l     a0, d1
001306: 202e8022     move.l     -$7fde(a6), d0
00130a: 61002c62     bsr.w      $3f6e
00130e: 588f         addq.l     #$4, a7
001310: 723a         moveq      #$3a, d1
001312: b280         cmp.l      d0, d1
001314: 671c         beq.b      $1332
001316: 48780003     pea.l      $3.w
00131a: 720a         moveq      #$a, d1
00131c: 203c00000098 move.l     #$98, d0
001322: 61001bf6     bsr.w      $2f1a
001326: 588f         addq.l     #$4, a7
001328: 61001c16     bsr.w      $2f40
00132c: 70ff         moveq      #$ff, d0
00132e: 6100f4f4     bsr.w      $824
001332: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001338: 4e5d         unlk       a5
00133a: 4e75         rts        
00133c: 4e550000     link.w     a5, #$0
001340: 48e7c000     movem.l    d0-d1, -(a7)
001344: 4878000a     pea.l      $a.w
001348: 222e807c     move.l     -$7f84(a6), d1
00134c: 202e802a     move.l     -$7fd6(a6), d0
001350: 61002c24     bsr.w      $3f76
001354: 588f         addq.l     #$4, a7
001356: 720a         moveq      #$a, d1
001358: b280         cmp.l      d0, d1
00135a: 671c         beq.b      $1378
00135c: 48780004     pea.l      $4.w
001360: 720a         moveq      #$a, d1
001362: 203c00000098 move.l     #$98, d0
001368: 61001bb0     bsr.w      $2f1a
00136c: 588f         addq.l     #$4, a7
00136e: 61001bd0     bsr.w      $2f40
001372: 70ff         moveq      #$ff, d0
001374: 6100f4ae     bsr.w      $824
001378: 4ced0002fffc movem.l    -$4(a5), d1
00137e: 4e5d         unlk       a5
001380: 4e75         rts        
001382: 4e4f         trap       #$f
001384: 4300         chk.l      d0, d1
001386: 4e550000     link.w     a5, #$0
00138a: 48e78000     movem.l    d0, -(a7)
00138e: 42ae8196     clr.l      -$7e6a(a6)
001392: 7001         moveq      #$1, d0
001394: 2d40846a     move.l     d0, -$7b96(a6)
001398: 42ae846e     clr.l      -$7b92(a6)
00139c: 42ae8472     clr.l      -$7b8e(a6)
0013a0: 4e5d         unlk       a5
0013a2: 4e75         rts        
0013a4: 4e550000     link.w     a5, #$0
0013a8: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
0013ac: 518f         subq.l     #$8, a7
0013ae: 4aae8196     tst.l      -$7e6a(a6)
0013b2: 660a         bne.b      $13be
0013b4: 42af0004     clr.l      $4(a7)
0013b8: 42ae8472     clr.l      -$7b8e(a6)
0013bc: 603a         bra.b      $13f8
0013be: 0c6e00028fbe cmpi.w     #$2, -$7042(a6)
0013c4: 6632         bne.b      $13f8
0013c6: 7028         moveq      #$28, d0
0013c8: d0ae803a     add.l      -$7fc6(a6), d0
0013cc: 2200         move.l     d0, d1
0013ce: 41ee819a     lea.l      -$7e66(a6), a0
0013d2: 2008         move.l     a0, d0
0013d4: 7418         moveq      #$18, d2
0013d6: 4c2e2002846e mulu.l     -$7b92(a6), d2
0013dc: d082         add.l      d2, d0
0013de: 5880         addq.l     #$4, d0
0013e0: 206e893a     movea.l    -$76c6(a6), a0
0013e4: 4e90         jsr        (a0)
0013e6: 2f400004     move.l     d0, $4(a7)
0013ea: 4aaf0004     tst.l      $4(a7)
0013ee: 676e         beq.b      $145e
0013f0: 202f0004     move.l     $4(a7), d0
0013f4: d1ae8472     add.l      d0, -$7b8e(a6)
0013f8: 701e         moveq      #$1e, d0
0013fa: b0ae8196     cmp.l      -$7e6a(a6), d0
0013fe: 6e02         bgt.b      $1402
001400: 6168         bsr.b      $146a
001402: 52ae846e     addq.l     #$1, -$7b92(a6)
001406: 701e         moveq      #$1e, d0
001408: b0ae846e     cmp.l      -$7b92(a6), d0
00140c: 6e04         bgt.b      $1412
00140e: 42ae846e     clr.l      -$7b92(a6)
001412: 52ae8196     addq.l     #$1, -$7e6a(a6)
001416: 41ee819a     lea.l      -$7e66(a6), a0
00141a: 2008         move.l     a0, d0
00141c: 7218         moveq      #$18, d1
00141e: 4c2e1001846e mulu.l     -$7b92(a6), d1
001424: d081         add.l      d1, d0
001426: 2e80         move.l     d0, (a7)
001428: 2057         movea.l    (a7), a0
00142a: 20af0004     move.l     $4(a7), (a0)
00142e: 2057         movea.l    (a7), a0
001430: 226e803a     movea.l    -$7fc6(a6), a1
001434: 216900280004 move.l     $28(a1), $4(a0)
00143a: 2169002c0008 move.l     $2c(a1), $8(a0)
001440: 2057         movea.l    (a7), a0
001442: 226e8078     movea.l    -$7f88(a6), a1
001446: 2169000a000c move.l     $a(a1), $c(a0)
00144c: 2169000e0010 move.l     $e(a1), $10(a0)
001452: 206e8078     movea.l    -$7f88(a6), a0
001456: 2257         movea.l    (a7), a1
001458: 236800540014 move.l     $54(a0), $14(a1)
00145e: 508f         addq.l     #$8, a7
001460: 4ced0306fff0 movem.l    -$10(a5), d1-d2/a0-a1
001466: 4e5d         unlk       a5
001468: 4e75         rts        
00146a: 4e550000     link.w     a5, #$0
00146e: 48e78080     movem.l    d0/a0, -(a7)
001472: 4aae8196     tst.l      -$7e6a(a6)
001476: 6f28         ble.b      $14a0
001478: 7018         moveq      #$18, d0
00147a: 4c2e0000846a mulu.l     -$7b96(a6), d0
001480: 41ee819a     lea.l      -$7e66(a6), a0
001484: 20300800     move.l     (a0, d0.l), d0
001488: 91ae8472     sub.l      d0, -$7b8e(a6)
00148c: 53ae8196     subq.l     #$1, -$7e6a(a6)
001490: 52ae846a     addq.l     #$1, -$7b96(a6)
001494: 701e         moveq      #$1e, d0
001496: b0ae846a     cmp.l      -$7b96(a6), d0
00149a: 6e04         bgt.b      $14a0
00149c: 42ae846a     clr.l      -$7b96(a6)
0014a0: 4ced0100fffc movem.l    -$4(a5), a0
0014a6: 4e5d         unlk       a5
0014a8: 4e75         rts        
0014aa: 4e550000     link.w     a5, #$0
0014ae: 48e7c080     movem.l    d0-d1/a0, -(a7)
0014b2: 598f         subq.l     #$4, a7
0014b4: 206e8078     movea.l    -$7f88(a6), a0
0014b8: 2ea80054     move.l     $54(a0), (a7)
0014bc: 4a6e8fca     tst.w      -$7036(a6)
0014c0: 6622         bne.b      $14e4
0014c2: 6002         bra.b      $14c6
0014c4: 61a4         bsr.b      $146a
0014c6: 4aae8196     tst.l      -$7e6a(a6)
0014ca: 6f18         ble.b      $14e4
0014cc: 7018         moveq      #$18, d0
0014ce: 4c2e0000846a mulu.l     -$7b96(a6), d0
0014d4: 41ee819a     lea.l      -$7e66(a6), a0
0014d8: 2217         move.l     (a7), d1
0014da: 92b00814     sub.l      $14(a0, d0.l), d1
0014de: 7028         moveq      #$28, d0
0014e0: b081         cmp.l      d1, d0
0014e2: 6de0         blt.b      $14c4
0014e4: 588f         addq.l     #$4, a7
0014e6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0014ec: 4e5d         unlk       a5
0014ee: 4e75         rts        
0014f0: 4e550000     link.w     a5, #$0
0014f4: 48e7f080     movem.l    d0-d3/a0, -(a7)
0014f8: 206e8078     movea.l    -$7f88(a6), a0
0014fc: 7600         moveq      #$0, d3
0014fe: 243c408f4000 move.l     #$408f4000, d2
001504: 4ce80003005e movem.l    $5e(a0), d0-d1
00150a: 4e4f         trap       #$f
00150c: 00124e4f     ori.b      #$4f, (a2)
001510: 00262200     ori.b      #$0, -(a6)
001514: 4aae8476     tst.l      -$7b8a(a6)
001518: 6c08         bge.b      $1522
00151a: 202e8476     move.l     -$7b8a(a6), d0
00151e: 4480         neg.l      d0
001520: 6004         bra.b      $1526
001522: 202e8476     move.l     -$7b8a(a6), d0
001526: 7405         moveq      #$5, d2
001528: 4c020000     mulu.l     d2, d0
00152c: 068000003a98 addi.l     #$3a98, d0
001532: d280         add.l      d0, d1
001534: 206e8078     movea.l    -$7f88(a6), a0
001538: 2141005a     move.l     d1, $5a(a0)
00153c: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
001542: 4e5d         unlk       a5
001544: 4e75         rts        
001546: 4e550000     link.w     a5, #$0
00154a: 48e78000     movem.l    d0, -(a7)
00154e: 700a         moveq      #$a, d0
001550: b0ae8196     cmp.l      -$7e6a(a6), d0
001554: 6e04         bgt.b      $155a
001556: 7001         moveq      #$1, d0
001558: 6002         bra.b      $155c
00155a: 7000         moveq      #$0, d0
00155c: 4e5d         unlk       a5
00155e: 4e75         rts        
001560: 4e550000     link.w     a5, #$0
001564: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
001568: 206e8078     movea.l    -$7f88(a6), a0
00156c: 226e8078     movea.l    -$7f88(a6), a1
001570: 4ce8000c005e movem.l    $5e(a0), d2-d3
001576: 4ce900030034 movem.l    $34(a1), d0-d1
00157c: 4e4f         trap       #$f
00157e: 0010263c     ori.b      #$3c, (a0)
001582: 9999         sub.l      d4, (a1)+
001584: 999a         sub.l      d4, (a2)+
001586: 243c3fb99999 move.l     #$3fb99999, d2
00158c: 4e4f         trap       #$f
00158e: 00122601     ori.b      #$1, (a2)
001592: 2400         move.l     d0, d2
001594: 206e8078     movea.l    -$7f88(a6), a0
001598: 4ce80003005e movem.l    $5e(a0), d0-d1
00159e: 4e4f         trap       #$f
0015a0: 000e         .dc.w      $000e
0015a2: 48e80003005e movem.l    d0-d1, $5e(a0)
0015a8: 206e8078     movea.l    -$7f88(a6), a0
0015ac: 226e8078     movea.l    -$7f88(a6), a1
0015b0: 20290012     move.l     $12(a1), d0
0015b4: 90a80066     sub.l      $66(a0), d0
0015b8: 2d408476     move.l     d0, -$7b8a(a6)
0015bc: 202e8476     move.l     -$7b8a(a6), d0
0015c0: 4c7c08000000000a divs.l     #$a, d0
0015c8: 206e8078     movea.l    -$7f88(a6), a0
0015cc: d1a80066     add.l      d0, $66(a0)
0015d0: 4aae8476     tst.l      -$7b8a(a6)
0015d4: 6c08         bge.b      $15de
0015d6: 202e8476     move.l     -$7b8a(a6), d0
0015da: 4480         neg.l      d0
0015dc: 6004         bra.b      $15e2
0015de: 202e8476     move.l     -$7b8a(a6), d0
0015e2: 0c8000001388 cmpi.l     #$1388, d0
0015e8: 6d14         blt.b      $15fe
0015ea: 6100fd9a     bsr.w      $1386
0015ee: 206e8078     movea.l    -$7f88(a6), a0
0015f2: 226e8078     movea.l    -$7f88(a6), a1
0015f6: 236800120066 move.l     $12(a0), $66(a1)
0015fc: 6028         bra.b      $1626
0015fe: 6100feaa     bsr.w      $14aa
001602: 206e8078     movea.l    -$7f88(a6), a0
001606: 4ce800030034 movem.l    $34(a0), d0-d1
00160c: 7600         moveq      #$0, d3
00160e: 243c40200000 move.l     #$40200000, d2
001614: 4e4f         trap       #$f
001616: 00146e0c     ori.b      #$c, (a4)
00161a: 206e8078     movea.l    -$7f88(a6), a0
00161e: 7014         moveq      #$14, d0
001620: b0a80044     cmp.l      $44(a0), d0
001624: 6f04         ble.b      $162a
001626: 7000         moveq      #$0, d0
001628: 6006         bra.b      $1630
00162a: 6100fd78     bsr.w      $13a4
00162e: 7001         moveq      #$1, d0
001630: 4ced030effec movem.l    -$14(a5), d1-d3/a0-a1
001636: 4e5d         unlk       a5
001638: 4e75         rts        
00163a: 4e550000     link.w     a5, #$0
00163e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001642: 598f         subq.l     #$4, a7
001644: 206e803a     movea.l    -$7fc6(a6), a0
001648: 7064         moveq      #$64, d0
00164a: b0a80014     cmp.l      $14(a0), d0
00164e: 6c000082     bge.w      $16d2
001652: 206e8078     movea.l    -$7f88(a6), a0
001656: 7064         moveq      #$64, d0
001658: b0a80018     cmp.l      $18(a0), d0
00165c: 6c74         bge.b      $16d2
00165e: 2f2e8496     move.l     -$7b6a(a6), -(a7)
001662: 2f2e8492     move.l     -$7b6e(a6), -(a7)
001666: 4cee0003849a movem.l    -$7b66(a6), d0-d1
00166c: 206e8b96     movea.l    -$746a(a6), a0
001670: 4e90         jsr        (a0)
001672: 508f         addq.l     #$8, a7
001674: 3f400002     move.w     d0, $2(a7)
001678: 7000         moveq      #$0, d0
00167a: 302f0002     move.w     $2(a7), d0
00167e: 2200         move.l     d0, d1
001680: 206e803a     movea.l    -$7fc6(a6), a0
001684: 7000         moveq      #$0, d0
001686: 30280030     move.w     $30(a0), d0
00168a: 206e8b8a     movea.l    -$7476(a6), a0
00168e: 4e90         jsr        (a0)
001690: 3e80         move.w     d0, (a7)
001692: 206e8078     movea.l    -$7f88(a6), a0
001696: 7000         moveq      #$0, d0
001698: 30280016     move.w     $16(a0), d0
00169c: 2200         move.l     d0, d1
00169e: 7000         moveq      #$0, d0
0016a0: 3017         move.w     (a7), d0
0016a2: 206e8b82     movea.l    -$747e(a6), a0
0016a6: 4e90         jsr        (a0)
0016a8: 3e80         move.w     d0, (a7)
0016aa: 206e803a     movea.l    -$7fc6(a6), a0
0016ae: 0ca8000008ae0014 cmpi.l     #$8ae, $14(a0)
0016b6: 6e06         bgt.b      $16be
0016b8: 0c5702bc     cmpi.w     #$2bc, (a7)
0016bc: 6214         bhi.b      $16d2
0016be: 206e803a     movea.l    -$7fc6(a6), a0
0016c2: 0ca8000008ae0014 cmpi.l     #$8ae, $14(a0)
0016ca: 6f0a         ble.b      $16d6
0016cc: 0c5703e8     cmpi.w     #$3e8, (a7)
0016d0: 6304         bls.b      $16d6
0016d2: 7000         moveq      #$0, d0
0016d4: 600a         bra.b      $16e0
0016d6: 206f0004     movea.l    $4(a7), a0
0016da: 30af0002     move.w     $2(a7), (a0)
0016de: 7001         moveq      #$1, d0
0016e0: 588f         addq.l     #$4, a7
0016e2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0016e8: 4e5d         unlk       a5
0016ea: 4e75         rts        
0016ec: 4e550000     link.w     a5, #$0
0016f0: 48e780c0     movem.l    d0/a0-a1, -(a7)
0016f4: 4a2e8fe2     tst.b      -$701e(a6)
0016f8: 6634         bne.b      $172e
0016fa: 206e8078     movea.l    -$7f88(a6), a0
0016fe: 226e8078     movea.l    -$7f88(a6), a1
001702: 236800120066 move.l     $12(a0), $66(a1)
001708: 206e8078     movea.l    -$7f88(a6), a0
00170c: 226e8078     movea.l    -$7f88(a6), a1
001710: 236800380062 move.l     $38(a0), $62(a1)
001716: 23680034005e move.l     $34(a0), $5e(a1)
00171c: 206e8078     movea.l    -$7f88(a6), a0
001720: 0c680003004c cmpi.w     #$3, $4c(a0)
001726: 6606         bne.b      $172e
001728: 1d7c00018fe2 move.b     #$1, -$701e(a6)
00172e: 102e8fe2     move.b     -$701e(a6), d0
001732: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001738: 4e5d         unlk       a5
00173a: 4e75         rts        
00173c: 4e550000     link.w     a5, #$0
001740: 48e7fc80     movem.l    d0-d5/a0, -(a7)
001744: 4fefff0c     lea.l      -$f4(a7), a7
001748: 7000         moveq      #$0, d0
00174a: 2f4000d8     move.l     d0, $d8(a7)
00174e: 2f4000dc     move.l     d0, $dc(a7)
001752: 2f4000e0     move.l     d0, $e0(a7)
001756: 2f4000e4     move.l     d0, $e4(a7)
00175a: 2f6f011800e8 move.l     $118(a7), $e8(a7)
001760: 2f6f00f800ec move.l     $f8(a7), $ec(a7)
001766: 42af00f0     clr.l      $f0(a7)
00176a: 6038         bra.b      $17a4
00176c: 206f00e8     movea.l    $e8(a7), a0
001770: 2010         move.l     (a0), d0
001772: d1af00e4     add.l      d0, $e4(a7)
001776: 206f00e8     movea.l    $e8(a7), a0
00177a: 20280004     move.l     $4(a0), d0
00177e: d1af00e0     add.l      d0, $e0(a7)
001782: 206f00ec     movea.l    $ec(a7), a0
001786: 2010         move.l     (a0), d0
001788: d1af00dc     add.l      d0, $dc(a7)
00178c: 206f00ec     movea.l    $ec(a7), a0
001790: 20280004     move.l     $4(a0), d0
001794: d1af00d8     add.l      d0, $d8(a7)
001798: 50af00e8     addq.l     #$8, $e8(a7)
00179c: 50af00ec     addq.l     #$8, $ec(a7)
0017a0: 52af00f0     addq.l     #$1, $f0(a7)
0017a4: 202f00f0     move.l     $f0(a7), d0
0017a8: b0af00f4     cmp.l      $f4(a7), d0
0017ac: 6dbe         blt.b      $176c
0017ae: 202f00e4     move.l     $e4(a7), d0
0017b2: 4c6f080000f4 divs.l     $f4(a7), d0
0017b8: 2f4000d4     move.l     d0, $d4(a7)
0017bc: 202f00e0     move.l     $e0(a7), d0
0017c0: 4c6f080000f4 divs.l     $f4(a7), d0
0017c6: 2f4000d0     move.l     d0, $d0(a7)
0017ca: 202f00dc     move.l     $dc(a7), d0
0017ce: 4c6f080000f4 divs.l     $f4(a7), d0
0017d4: 2f4000cc     move.l     d0, $cc(a7)
0017d8: 202f00d8     move.l     $d8(a7), d0
0017dc: 4c6f080000f4 divs.l     $f4(a7), d0
0017e2: 2f4000c8     move.l     d0, $c8(a7)
0017e6: 7200         moveq      #$0, d1
0017e8: 7000         moveq      #$0, d0
0017ea: 48ef00030068 movem.l    d0-d1, $68(a7)
0017f0: 48ef00030070 movem.l    d0-d1, $70(a7)
0017f6: 48ef00030078 movem.l    d0-d1, $78(a7)
0017fc: 48ef00030080 movem.l    d0-d1, $80(a7)
001802: 48ef00030088 movem.l    d0-d1, $88(a7)
001808: 48ef00030090 movem.l    d0-d1, $90(a7)
00180e: 48ef00030098 movem.l    d0-d1, $98(a7)
001814: 48ef000300a0 movem.l    d0-d1, $a0(a7)
00181a: 2f6f011800e8 move.l     $118(a7), $e8(a7)
001820: 2f6f00f800ec move.l     $f8(a7), $ec(a7)
001826: 42af00f0     clr.l      $f0(a7)
00182a: 60000182     bra.w      $19ae
00182e: 206f00e8     movea.l    $e8(a7), a0
001832: 2010         move.l     (a0), d0
001834: 90af00d4     sub.l      $d4(a7), d0
001838: 4e4f         trap       #$f
00183a: 002048ef     ori.b      #$ef, -(a0)
00183e: 000300c0     ori.b      #$c0, d3
001842: 206f00e8     movea.l    $e8(a7), a0
001846: 20280004     move.l     $4(a0), d0
00184a: 90af00d0     sub.l      $d0(a7), d0
00184e: 4e4f         trap       #$f
001850: 002048ef     ori.b      #$ef, -(a0)
001854: 000300b8     ori.b      #$b8, d3
001858: 206f00ec     movea.l    $ec(a7), a0
00185c: 2010         move.l     (a0), d0
00185e: 90af00cc     sub.l      $cc(a7), d0
001862: 4e4f         trap       #$f
001864: 002048ef     ori.b      #$ef, -(a0)
001868: 000300b0     ori.b      #$b0, d3
00186c: 206f00ec     movea.l    $ec(a7), a0
001870: 20280004     move.l     $4(a0), d0
001874: 90af00c8     sub.l      $c8(a7), d0
001878: 4e4f         trap       #$f
00187a: 002048ef     ori.b      #$ef, -(a0)
00187e: 000300a8     ori.b      #$a8, d3
001882: 50af00e8     addq.l     #$8, $e8(a7)
001886: 50af00ec     addq.l     #$8, $ec(a7)
00188a: 4cef000c00c0 movem.l    $c0(a7), d2-d3
001890: 4cef000300c0 movem.l    $c0(a7), d0-d1
001896: 4e4f         trap       #$f
001898: 00122601     ori.b      #$1, (a2)
00189c: 2400         move.l     d0, d2
00189e: 4cef000300a0 movem.l    $a0(a7), d0-d1
0018a4: 4e4f         trap       #$f
0018a6: 000e         .dc.w      $000e
0018a8: 48ef000300a0 movem.l    d0-d1, $a0(a7)
0018ae: 4cef000c00b8 movem.l    $b8(a7), d2-d3
0018b4: 4cef000300b8 movem.l    $b8(a7), d0-d1
0018ba: 4e4f         trap       #$f
0018bc: 00122601     ori.b      #$1, (a2)
0018c0: 2400         move.l     d0, d2
0018c2: 4cef00030098 movem.l    $98(a7), d0-d1
0018c8: 4e4f         trap       #$f
0018ca: 000e         .dc.w      $000e
0018cc: 48ef00030098 movem.l    d0-d1, $98(a7)
0018d2: 4cef000c00b0 movem.l    $b0(a7), d2-d3
0018d8: 4cef000300b0 movem.l    $b0(a7), d0-d1
0018de: 4e4f         trap       #$f
0018e0: 00122601     ori.b      #$1, (a2)
0018e4: 2400         move.l     d0, d2
0018e6: 4cef00030090 movem.l    $90(a7), d0-d1
0018ec: 4e4f         trap       #$f
0018ee: 000e         .dc.w      $000e
0018f0: 48ef00030090 movem.l    d0-d1, $90(a7)
0018f6: 4cef000c00a8 movem.l    $a8(a7), d2-d3
0018fc: 4cef000300a8 movem.l    $a8(a7), d0-d1
001902: 4e4f         trap       #$f
001904: 00122601     ori.b      #$1, (a2)
001908: 2400         move.l     d0, d2
00190a: 4cef00030088 movem.l    $88(a7), d0-d1
001910: 4e4f         trap       #$f
001912: 000e         .dc.w      $000e
001914: 48ef00030088 movem.l    d0-d1, $88(a7)
00191a: 4cef000c00b0 movem.l    $b0(a7), d2-d3
001920: 4cef000300c0 movem.l    $c0(a7), d0-d1
001926: 4e4f         trap       #$f
001928: 00122601     ori.b      #$1, (a2)
00192c: 2400         move.l     d0, d2
00192e: 4cef00030080 movem.l    $80(a7), d0-d1
001934: 4e4f         trap       #$f
001936: 000e         .dc.w      $000e
001938: 48ef00030080 movem.l    d0-d1, $80(a7)
00193e: 4cef000c00a8 movem.l    $a8(a7), d2-d3
001944: 4cef000300b8 movem.l    $b8(a7), d0-d1
00194a: 4e4f         trap       #$f
00194c: 00122601     ori.b      #$1, (a2)
001950: 2400         move.l     d0, d2
001952: 4cef00030078 movem.l    $78(a7), d0-d1
001958: 4e4f         trap       #$f
00195a: 000e         .dc.w      $000e
00195c: 48ef00030078 movem.l    d0-d1, $78(a7)
001962: 4cef000c00a8 movem.l    $a8(a7), d2-d3
001968: 4cef000300c0 movem.l    $c0(a7), d0-d1
00196e: 4e4f         trap       #$f
001970: 00122601     ori.b      #$1, (a2)
001974: 2400         move.l     d0, d2
001976: 4cef00030070 movem.l    $70(a7), d0-d1
00197c: 4e4f         trap       #$f
00197e: 000e         .dc.w      $000e
001980: 48ef00030070 movem.l    d0-d1, $70(a7)
001986: 4cef000c00b0 movem.l    $b0(a7), d2-d3
00198c: 4cef000300b8 movem.l    $b8(a7), d0-d1
001992: 4e4f         trap       #$f
001994: 00122601     ori.b      #$1, (a2)
001998: 2400         move.l     d0, d2
00199a: 4cef00030068 movem.l    $68(a7), d0-d1
0019a0: 4e4f         trap       #$f
0019a2: 000e         .dc.w      $000e
0019a4: 48ef00030068 movem.l    d0-d1, $68(a7)
0019aa: 52af00f0     addq.l     #$1, $f0(a7)
0019ae: 202f00f0     move.l     $f0(a7), d0
0019b2: b0af00f4     cmp.l      $f4(a7), d0
0019b6: 6d00fe76     blt.w      $182e
0019ba: 202f00f4     move.l     $f4(a7), d0
0019be: 4e4f         trap       #$f
0019c0: 002048ef     ori.b      #$ef, -(a0)
0019c4: 00030060     ori.b      #$60, d3
0019c8: 4cef000c0060 movem.l    $60(a7), d2-d3
0019ce: 4cef000300a0 movem.l    $a0(a7), d0-d1
0019d4: 4e4f         trap       #$f
0019d6: 001348ef     ori.b      #$ef, (a3)
0019da: 000300a0     ori.b      #$a0, d3
0019de: 4cef000c0060 movem.l    $60(a7), d2-d3
0019e4: 4cef00030098 movem.l    $98(a7), d0-d1
0019ea: 4e4f         trap       #$f
0019ec: 001348ef     ori.b      #$ef, (a3)
0019f0: 00030098     ori.b      #$98, d3
0019f4: 4cef000c0060 movem.l    $60(a7), d2-d3
0019fa: 4cef00030090 movem.l    $90(a7), d0-d1
001a00: 4e4f         trap       #$f
001a02: 001348ef     ori.b      #$ef, (a3)
001a06: 00030090     ori.b      #$90, d3
001a0a: 4cef000c0060 movem.l    $60(a7), d2-d3
001a10: 4cef00030088 movem.l    $88(a7), d0-d1
001a16: 4e4f         trap       #$f
001a18: 001348ef     ori.b      #$ef, (a3)
001a1c: 00030088     ori.b      #$88, d3
001a20: 4cef000c0060 movem.l    $60(a7), d2-d3
001a26: 4cef00030080 movem.l    $80(a7), d0-d1
001a2c: 4e4f         trap       #$f
001a2e: 001348ef     ori.b      #$ef, (a3)
001a32: 00030080     ori.b      #$80, d3
001a36: 4cef000c0060 movem.l    $60(a7), d2-d3
001a3c: 4cef00030078 movem.l    $78(a7), d0-d1
001a42: 4e4f         trap       #$f
001a44: 001348ef     ori.b      #$ef, (a3)
001a48: 00030078     ori.b      #$78, d3
001a4c: 4cef000c0060 movem.l    $60(a7), d2-d3
001a52: 4cef00030070 movem.l    $70(a7), d0-d1
001a58: 4e4f         trap       #$f
001a5a: 001348ef     ori.b      #$ef, (a3)
001a5e: 00030070     ori.b      #$70, d3
001a62: 4cef000c0060 movem.l    $60(a7), d2-d3
001a68: 4cef00030068 movem.l    $68(a7), d0-d1
001a6e: 4e4f         trap       #$f
001a70: 001348ef     ori.b      #$ef, (a3)
001a74: 00030068     ori.b      #$68, d3
001a78: 4cef000c0078 movem.l    $78(a7), d2-d3
001a7e: 4cef00030080 movem.l    $80(a7), d0-d1
001a84: 4e4f         trap       #$f
001a86: 000e         .dc.w      $000e
001a88: 48ef00030030 movem.l    d0-d1, $30(a7)
001a8e: 4cef000c0068 movem.l    $68(a7), d2-d3
001a94: 4cef00030070 movem.l    $70(a7), d0-d1
001a9a: 4e4f         trap       #$f
001a9c: 001048ef     ori.b      #$ef, (a0)
001aa0: 00030028     ori.b      #$28, d3
001aa4: 4cef000c0028 movem.l    $28(a7), d2-d3
001aaa: 4cef00030028 movem.l    $28(a7), d0-d1
001ab0: 4e4f         trap       #$f
001ab2: 00122a01     ori.b      #$1, (a2)
001ab6: 2800         move.l     d0, d4
001ab8: 4cef000c0030 movem.l    $30(a7), d2-d3
001abe: 4cef00030030 movem.l    $30(a7), d0-d1
001ac4: 4e4f         trap       #$f
001ac6: 00122605     ori.b      #$5, (a2)
001aca: 2404         move.l     d4, d2
001acc: 4e4f         trap       #$f
001ace: 000e         .dc.w      $000e
001ad0: 61002d04     bsr.w      $47d6
001ad4: 48ef00030020 movem.l    d0-d1, $20(a7)
001ada: 4cef000c0020 movem.l    $20(a7), d2-d3
001ae0: 4cef00030030 movem.l    $30(a7), d0-d1
001ae6: 4e4f         trap       #$f
001ae8: 001348ef     ori.b      #$ef, (a3)
001aec: 00030018     ori.b      #$18, d3
001af0: 4cef000c0020 movem.l    $20(a7), d2-d3
001af6: 4cef00030028 movem.l    $28(a7), d0-d1
001afc: 4e4f         trap       #$f
001afe: 001348ef     ori.b      #$ef, (a3)
001b02: 00030010     ori.b      #$10, d3
001b06: 4cef000c0098 movem.l    $98(a7), d2-d3
001b0c: 4cef000300a0 movem.l    $a0(a7), d0-d1
001b12: 4e4f         trap       #$f
001b14: 000e         .dc.w      $000e
001b16: 2601         move.l     d1, d3
001b18: 2400         move.l     d0, d2
001b1a: 4cef00030020 movem.l    $20(a7), d0-d1
001b20: 4e4f         trap       #$f
001b22: 001348ef     ori.b      #$ef, (a3)
001b26: 00030008     ori.b      #$8, d3
001b2a: 4cef000c0020 movem.l    $20(a7), d2-d3
001b30: 4cef00030008 movem.l    $8(a7), d0-d1
001b36: 4e4f         trap       #$f
001b38: 00122a01     ori.b      #$1, (a2)
001b3c: 2800         move.l     d0, d4
001b3e: 4cef000c0088 movem.l    $88(a7), d2-d3
001b44: 4cef00030090 movem.l    $90(a7), d0-d1
001b4a: 4e4f         trap       #$f
001b4c: 000e         .dc.w      $000e
001b4e: 2605         move.l     d5, d3
001b50: 2404         move.l     d4, d2
001b52: 4e4f         trap       #$f
001b54: 00106100     ori.b      #$0, (a0)
001b58: 2c7e         .dc.w      $2c7e
001b5a: 48d70003     movem.l    d0-d1, (a7)
001b5e: 4cef000c00b8 movem.l    $b8(a7), d2-d3
001b64: 4cef00030010 movem.l    $10(a7), d0-d1
001b6a: 4e4f         trap       #$f
001b6c: 00122a01     ori.b      #$1, (a2)
001b70: 2800         move.l     d0, d4
001b72: 4cef000c00c0 movem.l    $c0(a7), d2-d3
001b78: 4cef00030018 movem.l    $18(a7), d0-d1
001b7e: 4e4f         trap       #$f
001b80: 00122605     ori.b      #$5, (a2)
001b84: 2404         move.l     d4, d2
001b86: 4e4f         trap       #$f
001b88: 001048ef     ori.b      #$ef, (a0)
001b8c: 00030058     ori.b      #$58, d3
001b90: 4cef000c00b8 movem.l    $b8(a7), d2-d3
001b96: 4cef00030018 movem.l    $18(a7), d0-d1
001b9c: 4e4f         trap       #$f
001b9e: 00122a01     ori.b      #$1, (a2)
001ba2: 2800         move.l     d0, d4
001ba4: 4cef000c00c0 movem.l    $c0(a7), d2-d3
001baa: 4cef00030010 movem.l    $10(a7), d0-d1
001bb0: 4e4f         trap       #$f
001bb2: 00122605     ori.b      #$5, (a2)
001bb6: 2404         move.l     d4, d2
001bb8: 4e4f         trap       #$f
001bba: 000e         .dc.w      $000e
001bbc: 48ef00030050 movem.l    d0-d1, $50(a7)
001bc2: 4cef000c0058 movem.l    $58(a7), d2-d3
001bc8: 4cef00030008 movem.l    $8(a7), d0-d1
001bce: 4e4f         trap       #$f
001bd0: 00122601     ori.b      #$1, (a2)
001bd4: 2400         move.l     d0, d2
001bd6: 4cef000300b0 movem.l    $b0(a7), d0-d1
001bdc: 4e4f         trap       #$f
001bde: 001048ef     ori.b      #$ef, (a0)
001be2: 00030048     ori.b      #$48, d3
001be6: 4cef000c0050 movem.l    $50(a7), d2-d3
001bec: 4cef00030008 movem.l    $8(a7), d0-d1
001bf2: 4e4f         trap       #$f
001bf4: 00122601     ori.b      #$1, (a2)
001bf8: 2400         move.l     d0, d2
001bfa: 4cef000300a8 movem.l    $a8(a7), d0-d1
001c00: 4e4f         trap       #$f
001c02: 001048ef     ori.b      #$ef, (a0)
001c06: 00030040     ori.b      #$40, d3
001c0a: 4cef000c0040 movem.l    $40(a7), d2-d3
001c10: 4cef00030040 movem.l    $40(a7), d0-d1
001c16: 4e4f         trap       #$f
001c18: 00122a01     ori.b      #$1, (a2)
001c1c: 2800         move.l     d0, d4
001c1e: 4cef000c0048 movem.l    $48(a7), d2-d3
001c24: 4cef00030048 movem.l    $48(a7), d0-d1
001c2a: 4e4f         trap       #$f
001c2c: 00122605     ori.b      #$5, (a2)
001c30: 2404         move.l     d4, d2
001c32: 4e4f         trap       #$f
001c34: 000e         .dc.w      $000e
001c36: 61002b9e     bsr.w      $47d6
001c3a: 48ef00030038 movem.l    d0-d1, $38(a7)
001c40: 206f011c     movea.l    $11c(a7), a0
001c44: 216f00040004 move.l     $4(a7), $4(a0)
001c4a: 2097         move.l     (a7), (a0)
001c4c: 206f011c     movea.l    $11c(a7), a0
001c50: 216f003c000c move.l     $3c(a7), $c(a0)
001c56: 216f00380008 move.l     $38(a7), $8(a0)
001c5c: 206f011c     movea.l    $11c(a7), a0
001c60: 216f000c0014 move.l     $c(a7), $14(a0)
001c66: 216f00080010 move.l     $8(a7), $10(a0)
001c6c: 206f011c     movea.l    $11c(a7), a0
001c70: 216f001c001c move.l     $1c(a7), $1c(a0)
001c76: 216f00180018 move.l     $18(a7), $18(a0)
001c7c: 206f011c     movea.l    $11c(a7), a0
001c80: 216f00140024 move.l     $14(a7), $24(a0)
001c86: 216f00100020 move.l     $10(a7), $20(a0)
001c8c: 4fef00f4     lea.l      $f4(a7), a7
001c90: 4ced013cffec movem.l    -$14(a5), d2-d5/a0
001c96: 4e5d         unlk       a5
001c98: 4e75         rts        
001c9a: 4e550000     link.w     a5, #$0
001c9e: 48e7fcc0     movem.l    d0-d5/a0-a1, -(a7)
001ca2: 4feffdd0     lea.l      -$230(a7), a7
001ca6: 206e8078     movea.l    -$7f88(a6), a0
001caa: 0c680002004c cmpi.w     #$2, $4c(a0)
001cb0: 660c         bne.b      $1cbe
001cb2: 0c6e00288fe0 cmpi.w     #$28, -$7020(a6)
001cb8: 6c04         bge.b      $1cbe
001cba: 526e8fe0     addq.w     #$1, -$7020(a6)
001cbe: 6100f830     bsr.w      $14f0
001cc2: 6100fa28     bsr.w      $16ec
001cc6: 4a00         tst.b      d0
001cc8: 6608         bne.b      $1cd2
001cca: 0c6e00288fe0 cmpi.w     #$28, -$7020(a6)
001cd0: 6d46         blt.b      $1d18
001cd2: 7014         moveq      #$14, d0
001cd4: b0ae8196     cmp.l      -$7e6a(a6), d0
001cd8: 6e3e         bgt.b      $1d18
001cda: 0cae000027108472 cmpi.l     #$2710, -$7b8e(a6)
001ce2: 6534         bcs.b      $1d18
001ce4: 41ee819a     lea.l      -$7e66(a6), a0
001ce8: 2008         move.l     a0, d0
001cea: 7218         moveq      #$18, d1
001cec: 4c2e1001846e mulu.l     -$7b92(a6), d1
001cf2: d081         add.l      d1, d0
001cf4: 720c         moveq      #$c, d1
001cf6: d081         add.l      d1, d0
001cf8: 2200         move.l     d0, d1
001cfa: 41ee819a     lea.l      -$7e66(a6), a0
001cfe: 2008         move.l     a0, d0
001d00: 7418         moveq      #$18, d2
001d02: 4c2e2002846a mulu.l     -$7b96(a6), d2
001d08: d082         add.l      d2, d0
001d0a: 740c         moveq      #$c, d2
001d0c: d082         add.l      d2, d0
001d0e: 206e8a3e     movea.l    -$75c2(a6), a0
001d12: 4e90         jsr        (a0)
001d14: 4a00         tst.b      d0
001d16: 6706         beq.b      $1d1e
001d18: 7000         moveq      #$0, d0
001d1a: 600002e2     bra.w      $1ffe
001d1e: 41ee819a     lea.l      -$7e66(a6), a0
001d22: 2008         move.l     a0, d0
001d24: 7218         moveq      #$18, d1
001d26: 4c2e1001846a mulu.l     -$7b96(a6), d1
001d2c: d081         add.l      d1, d0
001d2e: 720c         moveq      #$c, d1
001d30: d081         add.l      d1, d0
001d32: 2f40004c     move.l     d0, $4c(a7)
001d36: 41ee819a     lea.l      -$7e66(a6), a0
001d3a: 2008         move.l     a0, d0
001d3c: 7218         moveq      #$18, d1
001d3e: 4c2e1001846a mulu.l     -$7b96(a6), d1
001d44: d081         add.l      d1, d0
001d46: 5880         addq.l     #$4, d0
001d48: 2f400048     move.l     d0, $48(a7)
001d4c: 2f6e846a0040 move.l     -$7b96(a6), $40(a7)
001d52: 42af0044     clr.l      $44(a7)
001d56: 606c         bra.b      $1dc4
001d58: 202f0044     move.l     $44(a7), d0
001d5c: 41ef0140     lea.l      $140(a7), a0
001d60: 48700e00     pea.l      (a0, d0.l * 8)
001d64: 41ee819a     lea.l      -$7e66(a6), a0
001d68: 2008         move.l     a0, d0
001d6a: 7218         moveq      #$18, d1
001d6c: 4c2f10010044 mulu.l     $44(a7), d1
001d72: d081         add.l      d1, d0
001d74: 720c         moveq      #$c, d1
001d76: d081         add.l      d1, d0
001d78: 2200         move.l     d0, d1
001d7a: 202f0050     move.l     $50(a7), d0
001d7e: 206e8ae2     movea.l    -$751e(a6), a0
001d82: 4e90         jsr        (a0)
001d84: 588f         addq.l     #$4, a7
001d86: 202f0044     move.l     $44(a7), d0
001d8a: 41ef0050     lea.l      $50(a7), a0
001d8e: 48700e00     pea.l      (a0, d0.l * 8)
001d92: 222f004c     move.l     $4c(a7), d1
001d96: 41ee819a     lea.l      -$7e66(a6), a0
001d9a: 2008         move.l     a0, d0
001d9c: 7418         moveq      #$18, d2
001d9e: 4c2f20020044 mulu.l     $44(a7), d2
001da4: d082         add.l      d2, d0
001da6: 5880         addq.l     #$4, d0
001da8: 206e8956     movea.l    -$76aa(a6), a0
001dac: 4e90         jsr        (a0)
001dae: 588f         addq.l     #$4, a7
001db0: 52af0040     addq.l     #$1, $40(a7)
001db4: 701e         moveq      #$1e, d0
001db6: b0af0040     cmp.l      $40(a7), d0
001dba: 6e04         bgt.b      $1dc0
001dbc: 42af0040     clr.l      $40(a7)
001dc0: 52af0044     addq.l     #$1, $44(a7)
001dc4: 202f0044     move.l     $44(a7), d0
001dc8: b0ae8196     cmp.l      -$7e6a(a6), d0
001dcc: 6d8a         blt.b      $1d58
001dce: 486e847a     pea.l      -$7b86(a6)
001dd2: 486f0054     pea.l      $54(a7)
001dd6: 41ef0148     lea.l      $148(a7), a0
001dda: 2208         move.l     a0, d1
001ddc: 202e8196     move.l     -$7e6a(a6), d0
001de0: 6100f95a     bsr.w      $173c
001de4: 508f         addq.l     #$8, a7
001de6: 206e803a     movea.l    -$7fc6(a6), a0
001dea: 0ca8000005dc0014 cmpi.l     #$5dc, $14(a0)
001df2: 6e1a         bgt.b      $1e0e
001df4: 42af003c     clr.l      $3c(a7)
001df8: 2f7c407f40000038 move.l     #$407f4000, $38(a7)
001e00: 42af0034     clr.l      $34(a7)
001e04: 2f7c408f40000030 move.l     #$408f4000, $30(a7)
001e0c: 6048         bra.b      $1e56
001e0e: 518f         subq.l     #$8, a7
001e10: 206e803a     movea.l    -$7fc6(a6), a0
001e14: 20280014     move.l     $14(a0), d0
001e18: 4e4f         trap       #$f
001e1a: 002048d7     ori.b      #$d7, -(a0)
001e1e: 0003263c     ori.b      #$3c, d3
001e22: 5555         subq.w     #$2, (a5)
001e24: 5555         subq.w     #$2, (a5)
001e26: 243c3fd55555 move.l     #$3fd55555, d2
001e2c: 4cd70003     movem.l    (a7), d0-d1
001e30: 4e4f         trap       #$f
001e32: 001248ef     ori.b      #$ef, (a2)
001e36: 00030040     ori.b      #$40, d3
001e3a: 263c55555555 move.l     #$55555555, d3
001e40: 243c3fe55555 move.l     #$3fe55555, d2
001e46: 4cd70003     movem.l    (a7), d0-d1
001e4a: 4e4f         trap       #$f
001e4c: 001248ef     ori.b      #$ef, (a2)
001e50: 00030038     ori.b      #$38, d3
001e54: 508f         addq.l     #$8, a7
001e56: 7600         moveq      #$0, d3
001e58: 243c40590000 move.l     #$40590000, d2
001e5e: 4cef00030038 movem.l    $38(a7), d0-d1
001e64: 4e4f         trap       #$f
001e66: 00102a01     ori.b      #$1, (a0)
001e6a: 2800         move.l     d0, d4
001e6c: 7600         moveq      #$0, d3
001e6e: 243c40590000 move.l     #$40590000, d2
001e74: 4cee0003847a movem.l    -$7b86(a6), d0-d1
001e7a: 4e4f         trap       #$f
001e7c: 00102605     ori.b      #$5, (a0)
001e80: 2404         move.l     d4, d2
001e82: 4e4f         trap       #$f
001e84: 001348ef     ori.b      #$ef, (a3)
001e88: 00030028     ori.b      #$28, d3
001e8c: 4aaf0028     tst.l      $28(a7)
001e90: 6c08         bge.b      $1e9a
001e92: 42af002c     clr.l      $2c(a7)
001e96: 42af0028     clr.l      $28(a7)
001e9a: 4cef000c0030 movem.l    $30(a7), d2-d3
001ea0: 4cee00038482 movem.l    -$7b7e(a6), d0-d1
001ea6: 4e4f         trap       #$f
001ea8: 001348ef     ori.b      #$ef, (a3)
001eac: 00030020     ori.b      #$20, d3
001eb0: 7600         moveq      #$0, d3
001eb2: 243c3ff00000 move.l     #$3ff00000, d2
001eb8: 4cee0003848a movem.l    -$7b76(a6), d0-d1
001ebe: 4e4f         trap       #$f
001ec0: 0010263c     ori.b      #$3c, (a0)
001ec4: 9999         sub.l      d4, (a1)+
001ec6: 999a         sub.l      d4, (a2)+
001ec8: 243c3fa99999 move.l     #$3fa99999, d2
001ece: 4e4f         trap       #$f
001ed0: 001348ef     ori.b      #$ef, (a3)
001ed4: 00030018     ori.b      #$18, d3
001ed8: 4aaf0018     tst.l      $18(a7)
001edc: 6c0c         bge.b      $1eea
001ede: 4cef00030018 movem.l    $18(a7), d0-d1
001ee4: 4e4f         trap       #$f
001ee6: 00156006     ori.b      #$6, (a5)
001eea: 4cef00030018 movem.l    $18(a7), d0-d1
001ef0: 48ef00030018 movem.l    d0-d1, $18(a7)
001ef6: 206e8078     movea.l    -$7f88(a6), a0
001efa: 226e8078     movea.l    -$7f88(a6), a1
001efe: 4ce900030034 movem.l    $34(a1), d0-d1
001f04: 4ce8000c005e movem.l    $5e(a0), d2-d3
001f0a: 4e4f         trap       #$f
001f0c: 00146f0c     ori.b      #$c, (a4)
001f10: 206e8078     movea.l    -$7f88(a6), a0
001f14: 4ce800030034 movem.l    $34(a0), d0-d1
001f1a: 600a         bra.b      $1f26
001f1c: 206e8078     movea.l    -$7f88(a6), a0
001f20: 4ce80003005e movem.l    $5e(a0), d0-d1
001f26: 7600         moveq      #$0, d3
001f28: 243c3ff00000 move.l     #$3ff00000, d2
001f2e: 4e4f         trap       #$f
001f30: 00107600     ori.b      #$0, (a0)
001f34: 243c401c0000 move.l     #$401c0000, d2
001f3a: 4e4f         trap       #$f
001f3c: 001348ef     ori.b      #$ef, (a3)
001f40: 00030010     ori.b      #$10, d3
001f44: 4aae8476     tst.l      -$7b8a(a6)
001f48: 6c08         bge.b      $1f52
001f4a: 202e8476     move.l     -$7b8a(a6), d0
001f4e: 4480         neg.l      d0
001f50: 6004         bra.b      $1f56
001f52: 202e8476     move.l     -$7b8a(a6), d0
001f56: 4e4f         trap       #$f
001f58: 00207600     ori.b      #$0, -(a0)
001f5c: 243c408f4000 move.l     #$408f4000, d2
001f62: 4e4f         trap       #$f
001f64: 001348ef     ori.b      #$ef, (a3)
001f68: 00030008     ori.b      #$8, d3
001f6c: 4cef00030028 movem.l    $28(a7), d0-d1
001f72: 4cef000c0020 movem.l    $20(a7), d2-d3
001f78: 4e4f         trap       #$f
001f7a: 00146f08     ori.b      #$8, (a4)
001f7e: 4cef00030028 movem.l    $28(a7), d0-d1
001f84: 6006         bra.b      $1f8c
001f86: 4cef00030020 movem.l    $20(a7), d0-d1
001f8c: 48d70003     movem.l    d0-d1, (a7)
001f90: 4cd70003     movem.l    (a7), d0-d1
001f94: 4cef000c0018 movem.l    $18(a7), d2-d3
001f9a: 4e4f         trap       #$f
001f9c: 00146f06     ori.b      #$6, (a4)
001fa0: 4cd70003     movem.l    (a7), d0-d1
001fa4: 6006         bra.b      $1fac
001fa6: 4cef00030018 movem.l    $18(a7), d0-d1
001fac: 48d70003     movem.l    d0-d1, (a7)
001fb0: 4cd70003     movem.l    (a7), d0-d1
001fb4: 4cef000c0010 movem.l    $10(a7), d2-d3
001fba: 4e4f         trap       #$f
001fbc: 00146f06     ori.b      #$6, (a4)
001fc0: 4cd70003     movem.l    (a7), d0-d1
001fc4: 6006         bra.b      $1fcc
001fc6: 4cef00030010 movem.l    $10(a7), d0-d1
001fcc: 48d70003     movem.l    d0-d1, (a7)
001fd0: 4cd70003     movem.l    (a7), d0-d1
001fd4: 4cef000c0008 movem.l    $8(a7), d2-d3
001fda: 4e4f         trap       #$f
001fdc: 00146f06     ori.b      #$6, (a4)
001fe0: 4cd70003     movem.l    (a7), d0-d1
001fe4: 6006         bra.b      $1fec
001fe6: 4cef00030008 movem.l    $8(a7), d0-d1
001fec: 48d70003     movem.l    d0-d1, (a7)
001ff0: 206f0230     movea.l    $230(a7), a0
001ff4: 216f00040004 move.l     $4(a7), $4(a0)
001ffa: 2097         move.l     (a7), (a0)
001ffc: 7001         moveq      #$1, d0
001ffe: 4fef0230     lea.l      $230(a7), a7
002002: 4ced033effe4 movem.l    -$1c(a5), d1-d5/a0-a1
002008: 4e5d         unlk       a5
00200a: 4e75         rts        
00200c: 4e550000     link.w     a5, #$0
002010: 48e7c000     movem.l    d0-d1, -(a7)
002014: 4a2e8fbc     tst.b      -$7044(a6)
002018: 6608         bne.b      $2022
00201a: 6100f24c     bsr.w      $1268
00201e: 6100f18a     bsr.w      $11aa
002022: 0c6e00018fba cmpi.w     #$1, -$7046(a6)
002028: 673c         beq.b      $2066
00202a: 0c6e00028fba cmpi.w     #$2, -$7046(a6)
002030: 660c         bne.b      $203e
002032: 613e         bsr.b      $2072
002034: 6100014e     bsr.w      $2184
002038: 4a00         tst.b      d0
00203a: 6726         beq.b      $2062
00203c: 6028         bra.b      $2066
00203e: 4a2e8fbc     tst.b      -$7044(a6)
002042: 661e         bne.b      $2062
002044: 48780001     pea.l      $1.w
002048: 720a         moveq      #$a, d1
00204a: 203c00000098 move.l     #$98, d0
002050: 61000ec8     bsr.w      $2f1a
002054: 588f         addq.l     #$4, a7
002056: 61000ee8     bsr.w      $2f40
00205a: 70ff         moveq      #$ff, d0
00205c: 6100e7c6     bsr.w      $824
002060: 6004         bra.b      $2066
002062: 7000         moveq      #$0, d0
002064: 6002         bra.b      $2068
002066: 7001         moveq      #$1, d0
002068: 4ced0002fffc movem.l    -$4(a5), d1
00206e: 4e5d         unlk       a5
002070: 4e75         rts        
002072: 4e550000     link.w     a5, #$0
002076: 48e7c080     movem.l    d0-d1/a0, -(a7)
00207a: 4fefffcc     lea.l      -$34(a7), a7
00207e: 0c6e00018fba cmpi.w     #$1, -$7046(a6)
002084: 660000d0     bne.w      $2156
002088: 41fa01ac     lea.l      $2236(pc), a0
00208c: 2208         move.l     a0, d1
00208e: 41ee84a2     lea.l      -$7b5e(a6), a0
002092: 2008         move.l     a0, d0
002094: 61001ff6     bsr.w      $408c
002098: 41fa01a0     lea.l      $223a(pc), a0
00209c: 2208         move.l     a0, d1
00209e: 41ee84a6     lea.l      -$7b5a(a6), a0
0020a2: 2008         move.l     a0, d0
0020a4: 61001fe6     bsr.w      $408c
0020a8: 41fa0194     lea.l      $223e(pc), a0
0020ac: 2208         move.l     a0, d1
0020ae: 41ee84aa     lea.l      -$7b56(a6), a0
0020b2: 2008         move.l     a0, d0
0020b4: 61001fd6     bsr.w      $408c
0020b8: 41fa0188     lea.l      $2242(pc), a0
0020bc: 2208         move.l     a0, d1
0020be: 41ee84ae     lea.l      -$7b52(a6), a0
0020c2: 2008         move.l     a0, d0
0020c4: 61001fc6     bsr.w      $408c
0020c8: 41fa017c     lea.l      $2246(pc), a0
0020cc: 2208         move.l     a0, d1
0020ce: 41ee84b2     lea.l      -$7b4e(a6), a0
0020d2: 2008         move.l     a0, d0
0020d4: 61001fb6     bsr.w      $408c
0020d8: 41fa0170     lea.l      $224a(pc), a0
0020dc: 2208         move.l     a0, d1
0020de: 41ee84b6     lea.l      -$7b4a(a6), a0
0020e2: 2008         move.l     a0, d0
0020e4: 61001fa6     bsr.w      $408c
0020e8: 3f7c00010002 move.w     #$1, $2(a7)
0020ee: 4257         clr.w      (a7)
0020f0: 605c         bra.b      $214e
0020f2: 306f0002     movea.w    $2(a7), a0
0020f6: 2f08         move.l     a0, -(a7)
0020f8: 302f0004     move.w     $4(a7), d0
0020fc: 48c0         ext.l      d0
0020fe: 41ee84a2     lea.l      -$7b5e(a6), a0
002102: 48700c00     pea.l      (a0, d0.l * 4)
002106: 41fa0146     lea.l      $224e(pc), a0
00210a: 2208         move.l     a0, d1
00210c: 41ef0014     lea.l      $14(a7), a0
002110: 2008         move.l     a0, d0
002112: 61001e06     bsr.w      $3f1a
002116: 508f         addq.l     #$8, a7
002118: 426f0002     clr.w      $2(a7)
00211c: 486f0004     pea.l      $4(a7)
002120: 41ef000d     lea.l      $d(a7), a0
002124: 2208         move.l     a0, d1
002126: 41ef0010     lea.l      $10(a7), a0
00212a: 2008         move.l     a0, d0
00212c: 610005f2     bsr.w      $2720
002130: 588f         addq.l     #$4, a7
002132: 41ef0009     lea.l      $9(a7), a0
002136: 2208         move.l     a0, d1
002138: 41ef000c     lea.l      $c(a7), a0
00213c: 2008         move.l     a0, d0
00213e: 61001f68     bsr.w      $40a8
002142: 41ef000c     lea.l      $c(a7), a0
002146: 2008         move.l     a0, d0
002148: 610004a6     bsr.w      $25f0
00214c: 5257         addq.w     #$1, (a7)
00214e: 0c570006     cmpi.w     #$6, (a7)
002152: 6d9e         blt.b      $20f2
002154: 6020         bra.b      $2176
002156: 41fa0113     lea.l      $226b(pc), a0
00215a: 2208         move.l     a0, d1
00215c: 41ee84a2     lea.l      -$7b5e(a6), a0
002160: 2008         move.l     a0, d0
002162: 61001f28     bsr.w      $408c
002166: 41fa0107     lea.l      $226f(pc), a0
00216a: 2208         move.l     a0, d1
00216c: 41ee84a6     lea.l      -$7b5a(a6), a0
002170: 2008         move.l     a0, d0
002172: 61001f18     bsr.w      $408c
002176: 4fef0034     lea.l      $34(a7), a7
00217a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002180: 4e5d         unlk       a5
002182: 4e75         rts        
002184: 4e550000     link.w     a5, #$0
002188: 48e7c080     movem.l    d0-d1/a0, -(a7)
00218c: 4feffff6     lea.l      -$a(a7), a7
002190: 0c6e00018fba cmpi.w     #$1, -$7046(a6)
002196: 6606         bne.b      $219e
002198: 3ebc0006     move.w     #$6, (a7)
00219c: 6004         bra.b      $21a2
00219e: 3ebc0002     move.w     #$2, (a7)
0021a2: 426f0004     clr.w      $4(a7)
0021a6: 60000070     bra.w      $2218
0021aa: 1d7c00018fc0 move.b     #$1, -$7040(a6)
0021b0: 7001         moveq      #$1, d0
0021b2: 61002976     bsr.w      $4b2a
0021b6: 4a6e8fc8     tst.w      -$7038(a6)
0021ba: 6758         beq.b      $2214
0021bc: 426e8fc8     clr.w      -$7038(a6)
0021c0: 6100023a     bsr.w      $23fc
0021c4: 4a00         tst.b      d0
0021c6: 674c         beq.b      $2214
0021c8: 426f0002     clr.w      $2(a7)
0021cc: 603a         bra.b      $2208
0021ce: 610004f0     bsr.w      $26c0
0021d2: 4a00         tst.b      d0
0021d4: 6750         beq.b      $2226
0021d6: 41ef0006     lea.l      $6(a7), a0
0021da: 2008         move.l     a0, d0
0021dc: 61000384     bsr.w      $2562
0021e0: 41ee84a2     lea.l      -$7b5e(a6), a0
0021e4: 2008         move.l     a0, d0
0021e6: 322f0002     move.w     $2(a7), d1
0021ea: 48c1         ext.l      d1
0021ec: e589         lsl.l      #$2, d1
0021ee: d081         add.l      d1, d0
0021f0: 2200         move.l     d0, d1
0021f2: 41ef0006     lea.l      $6(a7), a0
0021f6: 2008         move.l     a0, d0
0021f8: 61001e00     bsr.w      $3ffa
0021fc: 4a80         tst.l      d0
0021fe: 6626         bne.b      $2226
002200: 610003da     bsr.w      $25dc
002204: 526f0002     addq.w     #$1, $2(a7)
002208: 302f0002     move.w     $2(a7), d0
00220c: b057         cmp.w      (a7), d0
00220e: 6dbe         blt.b      $21ce
002210: 7001         moveq      #$1, d0
002212: 6014         bra.b      $2228
002214: 526f0004     addq.w     #$1, $4(a7)
002218: 0c6f00190004 cmpi.w     #$19, $4(a7)
00221e: 6d00ff8a     blt.w      $21aa
002222: 4a2e8fbc     tst.b      -$7044(a6)
002226: 7000         moveq      #$0, d0
002228: 4fef000a     lea.l      $a(a7), a7
00222c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002232: 4e5d         unlk       a5
002234: 4e75         rts        
002236: 30303000     move.w     (a0, d3.w), d0
00223a: 30303100     move.w     (a0, d3.w), d0
00223e: 30303800     move.w     (a0, d3.l), d0
002242: 30313100     move.w     (a1, d3.w), d0
002246: 30313800     move.w     (a1, d3.l), d0
00224a: 30323200     move.w     (a2, d3.w * 2), d0
00224e: 2450         movea.l    (a0), a2
002250: 4d56         .dc.w      $4d56
002252: 5847         addq.w     #$4, d7
002254: 2c303037     move.l     $37(a0, d3.w), d6
002258: 2c25         move.l     -(a5), d6
00225a: 732c         .dc.w      $732c
00225c: 2531642c     move.l     $2c(a1, d6.w), -(a2)
002260: 312c302c     move.w     $302c(a4), -(a0)
002264: 312c2c2c     move.w     $2c2c(a4), -(a0)
002268: 312a0030     move.w     $30(a2), -(a0)
00226c: 30310030     move.w     $30(a1, d0.w), d0
002270: 30320000     move.w     (a2, d0.w), d0
002274: 4e550000     link.w     a5, #$0
002278: 48e7c080     movem.l    d0-d1/a0, -(a7)
00227c: 598f         subq.l     #$4, a7
00227e: 7201         moveq      #$1, d1
002280: 41fa012a     lea.l      $23ac(pc), a0
002284: 2008         move.l     a0, d0
002286: 61000e1a     bsr.w      $30a2
00228a: 2e80         move.l     d0, (a7)
00228c: 6c1c         bge.b      $22aa
00228e: 48780002     pea.l      $2.w
002292: 720a         moveq      #$a, d1
002294: 203c00000098 move.l     #$98, d0
00229a: 61000c7e     bsr.w      $2f1a
00229e: 588f         addq.l     #$4, a7
0022a0: 61000c9e     bsr.w      $2f40
0022a4: 70ff         moveq      #$ff, d0
0022a6: 6100e57c     bsr.w      $824
0022aa: 4878001c     pea.l      $1c.w
0022ae: 222f0008     move.l     $8(a7), d1
0022b2: 202f0004     move.l     $4(a7), d0
0022b6: 61001cb6     bsr.w      $3f6e
0022ba: 588f         addq.l     #$4, a7
0022bc: 721c         moveq      #$1c, d1
0022be: b280         cmp.l      d0, d1
0022c0: 671c         beq.b      $22de
0022c2: 48780003     pea.l      $3.w
0022c6: 720a         moveq      #$a, d1
0022c8: 203c00000098 move.l     #$98, d0
0022ce: 61000c4a     bsr.w      $2f1a
0022d2: 588f         addq.l     #$4, a7
0022d4: 61000c6a     bsr.w      $2f40
0022d8: 70ff         moveq      #$ff, d0
0022da: 6100e548     bsr.w      $824
0022de: 2017         move.l     (a7), d0
0022e0: 61001ca8     bsr.w      $3f8a
0022e4: 4a80         tst.l      d0
0022e6: 6c1c         bge.b      $2304
0022e8: 48780008     pea.l      $8.w
0022ec: 720a         moveq      #$a, d1
0022ee: 203c00000098 move.l     #$98, d0
0022f4: 61000c24     bsr.w      $2f1a
0022f8: 588f         addq.l     #$4, a7
0022fa: 61000c44     bsr.w      $2f40
0022fe: 70ff         moveq      #$ff, d0
002300: 6100e522     bsr.w      $824
002304: 588f         addq.l     #$4, a7
002306: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00230c: 4e5d         unlk       a5
00230e: 4e75         rts        
002310: 4e550000     link.w     a5, #$0
002314: 48e7c080     movem.l    d0-d1/a0, -(a7)
002318: 598f         subq.l     #$4, a7
00231a: 7202         moveq      #$2, d1
00231c: 41fa00a3     lea.l      $23c1(pc), a0
002320: 2008         move.l     a0, d0
002322: 61000d7e     bsr.w      $30a2
002326: 2e80         move.l     d0, (a7)
002328: 6c1c         bge.b      $2346
00232a: 48780002     pea.l      $2.w
00232e: 720a         moveq      #$a, d1
002330: 203c00000098 move.l     #$98, d0
002336: 61000be2     bsr.w      $2f1a
00233a: 588f         addq.l     #$4, a7
00233c: 61000c02     bsr.w      $2f40
002340: 70ff         moveq      #$ff, d0
002342: 6100e4e0     bsr.w      $824
002346: 4878001c     pea.l      $1c.w
00234a: 222f0008     move.l     $8(a7), d1
00234e: 202f0004     move.l     $4(a7), d0
002352: 61001c22     bsr.w      $3f76
002356: 588f         addq.l     #$4, a7
002358: 721c         moveq      #$1c, d1
00235a: b280         cmp.l      d0, d1
00235c: 671c         beq.b      $237a
00235e: 48780004     pea.l      $4.w
002362: 720a         moveq      #$a, d1
002364: 203c00000098 move.l     #$98, d0
00236a: 61000bae     bsr.w      $2f1a
00236e: 588f         addq.l     #$4, a7
002370: 61000bce     bsr.w      $2f40
002374: 70ff         moveq      #$ff, d0
002376: 6100e4ac     bsr.w      $824
00237a: 2017         move.l     (a7), d0
00237c: 61001c0c     bsr.w      $3f8a
002380: 4a80         tst.l      d0
002382: 6c1c         bge.b      $23a0
002384: 48780008     pea.l      $8.w
002388: 720a         moveq      #$a, d1
00238a: 203c00000098 move.l     #$98, d0
002390: 61000b88     bsr.w      $2f1a
002394: 588f         addq.l     #$4, a7
002396: 61000ba8     bsr.w      $2f40
00239a: 70ff         moveq      #$ff, d0
00239c: 6100e486     bsr.w      $824
0023a0: 588f         addq.l     #$4, a7
0023a2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0023a8: 4e5d         unlk       a5
0023aa: 4e75         rts        
0023ac: 2f63302f     move.l     -(a3), $302f(a7)
0023b0: 5f313239     subq.b     #$7, $39(a1, d3.w)
0023b4: 5f2f6e76     subq.b     #$7, $6e76(a7)
0023b8: 722f         moveq      #$2f, d1
0023ba: 6e76         bgt.b      $2432
0023bc: 5f67         subq.w     #$7, -(a7)
0023be: 7073         moveq      #$73, d0
0023c0: 002f63302f5f ori.b      #$30, $2f5f(a7)
0023c6: 3132395f     move.w     ([a2]), -(a0)
0023ca: 2f6e76722f6e move.l     $7672(a6), $2f6e(a7)
0023d0: 765f         moveq      #$5f, d3
0023d2: 6770         beq.b      $2444
0023d4: 7300         .dc.w      $7300
0023d6: 4e550000     link.w     a5, #$0
0023da: 48e78000     movem.l    d0, -(a7)
0023de: 0c6e00018fba cmpi.w     #$1, -$7046(a6)
0023e4: 6604         bne.b      $23ea
0023e6: 7006         moveq      #$6, d0
0023e8: 600a         bra.b      $23f4
0023ea: 0c6e00028fba cmpi.w     #$2, -$7046(a6)
0023f0: 6606         bne.b      $23f8
0023f2: 7002         moveq      #$2, d0
0023f4: 2d408fec     move.l     d0, -$7014(a6)
0023f8: 4e5d         unlk       a5
0023fa: 4e75         rts        
0023fc: 4e550000     link.w     a5, #$0
002400: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002404: 4feffde8     lea.l      -$218(a7), a7
002408: 48780200     pea.l      $200.w
00240c: 41ef0018     lea.l      $18(a7), a0
002410: 2208         move.l     a0, d1
002412: 202e801e     move.l     -$7fe2(a6), d0
002416: 61001b56     bsr.w      $3f6e
00241a: 588f         addq.l     #$4, a7
00241c: 2f400214     move.l     d0, $214(a7)
002420: 6c16         bge.b      $2438
002422: 526e8ff0     addq.w     #$1, -$7010(a6)
002426: 0c6e000a8ff0 cmpi.w     #$a, -$7010(a6)
00242c: 6f00010a     ble.w      $2538
002430: 426e8ff0     clr.w      -$7010(a6)
002434: 60000102     bra.w      $2538
002438: 42ae8fe4     clr.l      -$701c(a6)
00243c: 42af000c     clr.l      $c(a7)
002440: 60000092     bra.w      $24d4
002444: 202e8fe4     move.l     -$701c(a6), d0
002448: b0ae8fec     cmp.l      -$7014(a6), d0
00244c: 6d16         blt.b      $2464
00244e: 526e8ff2     addq.w     #$1, -$700e(a6)
002452: 0c6e000a8ff2 cmpi.w     #$a, -$700e(a6)
002458: 6f0000de     ble.w      $2538
00245c: 426e8ff2     clr.w      -$700e(a6)
002460: 600000d6     bra.w      $2538
002464: 41ee84ba     lea.l      -$7b46(a6), a0
002468: 2008         move.l     a0, d0
00246a: 7278         moveq      #$78, d1
00246c: 4c2e10018fe4 mulu.l     -$701c(a6), d1
002472: d081         add.l      d1, d0
002474: 2e80         move.l     d0, (a7)
002476: 42ae8fe8     clr.l      -$7018(a6)
00247a: 6032         bra.b      $24ae
00247c: 202f000c     move.l     $c(a7), d0
002480: 41ef0014     lea.l      $14(a7), a0
002484: 0c30000d0800 cmpi.b     #$d, (a0, d0.l)
00248a: 671e         beq.b      $24aa
00248c: 202f000c     move.l     $c(a7), d0
002490: 41ef0014     lea.l      $14(a7), a0
002494: 2257         movea.l    (a7), a1
002496: 5297         addq.l     #$1, (a7)
002498: 12b00800     move.b     (a0, d0.l), (a1)
00249c: 52ae8fe8     addq.l     #$1, -$7018(a6)
0024a0: 7078         moveq      #$78, d0
0024a2: b0ae8fe8     cmp.l      -$7018(a6), d0
0024a6: 6f000090     ble.w      $2538
0024aa: 52af000c     addq.l     #$1, $c(a7)
0024ae: 202f000c     move.l     $c(a7), d0
0024b2: b0af0214     cmp.l      $214(a7), d0
0024b6: 6c10         bge.b      $24c8
0024b8: 202f000c     move.l     $c(a7), d0
0024bc: 41ef0014     lea.l      $14(a7), a0
0024c0: 0c30000a0800 cmpi.b     #$a, (a0, d0.l)
0024c6: 66b4         bne.b      $247c
0024c8: 2057         movea.l    (a7), a0
0024ca: 4210         clr.b      (a0)
0024cc: 52af000c     addq.l     #$1, $c(a7)
0024d0: 52ae8fe4     addq.l     #$1, -$701c(a6)
0024d4: 202f000c     move.l     $c(a7), d0
0024d8: b0af0214     cmp.l      $214(a7), d0
0024dc: 6d00ff66     blt.w      $2444
0024e0: 42af0004     clr.l      $4(a7)
0024e4: 605a         bra.b      $2540
0024e6: 41ee84ba     lea.l      -$7b46(a6), a0
0024ea: 2008         move.l     a0, d0
0024ec: 7278         moveq      #$78, d1
0024ee: 4c2f10010004 mulu.l     $4(a7), d1
0024f4: d081         add.l      d1, d0
0024f6: 2e80         move.l     d0, (a7)
0024f8: 486f0008     pea.l      $8(a7)
0024fc: 41ef0015     lea.l      $15(a7), a0
002500: 2208         move.l     a0, d1
002502: 202f0004     move.l     $4(a7), d0
002506: 61000218     bsr.w      $2720
00250a: 588f         addq.l     #$4, a7
00250c: 7001         moveq      #$1, d0
00250e: b0af0214     cmp.l      $214(a7), d0
002512: 6c24         bge.b      $2538
002514: 202f0008     move.l     $8(a7), d0
002518: 5580         subq.l     #$2, d0
00251a: 2057         movea.l    (a7), a0
00251c: 122f0011     move.b     $11(a7), d1
002520: b2300800     cmp.b      (a0, d0.l), d1
002524: 6612         bne.b      $2538
002526: 202f0008     move.l     $8(a7), d0
00252a: 5380         subq.l     #$1, d0
00252c: 2057         movea.l    (a7), a0
00252e: 122f0012     move.b     $12(a7), d1
002532: b2300800     cmp.b      (a0, d0.l), d1
002536: 6704         beq.b      $253c
002538: 7000         moveq      #$0, d0
00253a: 6018         bra.b      $2554
00253c: 52af0004     addq.l     #$1, $4(a7)
002540: 202f0004     move.l     $4(a7), d0
002544: b0ae8fe4     cmp.l      -$701c(a6), d0
002548: 6d9c         blt.b      $24e6
00254a: 42ae8fe4     clr.l      -$701c(a6)
00254e: 42ae8fe8     clr.l      -$7018(a6)
002552: 7001         moveq      #$1, d0
002554: 4fef0218     lea.l      $218(a7), a7
002558: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
00255e: 4e5d         unlk       a5
002560: 4e75         rts        
002562: 4e550000     link.w     a5, #$0
002566: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00256a: 518f         subq.l     #$8, a7
00256c: 41ee84ba     lea.l      -$7b46(a6), a0
002570: 2008         move.l     a0, d0
002572: 7278         moveq      #$78, d1
002574: 4c2e10018fe4 mulu.l     -$701c(a6), d1
00257a: d081         add.l      d1, d0
00257c: d0ae8fe8     add.l      -$7018(a6), d0
002580: 2e80         move.l     d0, (a7)
002582: 42af0004     clr.l      $4(a7)
002586: 6028         bra.b      $25b0
002588: 52ae8fe8     addq.l     #$1, -$7018(a6)
00258c: 2057         movea.l    (a7), a0
00258e: 0c10002c     cmpi.b     #$2c, (a0)
002592: 6724         beq.b      $25b8
002594: 2057         movea.l    (a7), a0
002596: 0c10002a     cmpi.b     #$2a, (a0)
00259a: 671c         beq.b      $25b8
00259c: 2057         movea.l    (a7), a0
00259e: 5297         addq.l     #$1, (a7)
0025a0: 226f0008     movea.l    $8(a7), a1
0025a4: 202f0004     move.l     $4(a7), d0
0025a8: 13900800     move.b     (a0), (a1, d0.l)
0025ac: 52af0004     addq.l     #$1, $4(a7)
0025b0: 7014         moveq      #$14, d0
0025b2: b0af0004     cmp.l      $4(a7), d0
0025b6: 6ed0         bgt.b      $2588
0025b8: 7014         moveq      #$14, d0
0025ba: b0af0004     cmp.l      $4(a7), d0
0025be: 6e04         bgt.b      $25c4
0025c0: 42af0004     clr.l      $4(a7)
0025c4: 206f0008     movea.l    $8(a7), a0
0025c8: 202f0004     move.l     $4(a7), d0
0025cc: 42300800     clr.b      (a0, d0.l)
0025d0: 508f         addq.l     #$8, a7
0025d2: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
0025d8: 4e5d         unlk       a5
0025da: 4e75         rts        
0025dc: 4e550000     link.w     a5, #$0
0025e0: 48e78000     movem.l    d0, -(a7)
0025e4: 52ae8fe4     addq.l     #$1, -$701c(a6)
0025e8: 42ae8fe8     clr.l      -$7018(a6)
0025ec: 4e5d         unlk       a5
0025ee: 4e75         rts        
0025f0: 4e550000     link.w     a5, #$0
0025f4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0025f8: 4fefffac     lea.l      -$54(a7), a7
0025fc: 4878000a     pea.l      $a.w
002600: 4878000d     pea.l      $d.w
002604: 2f2f005c     move.l     $5c(a7), -(a7)
002608: 41fa01b0     lea.l      $27ba(pc), a0
00260c: 2208         move.l     a0, d1
00260e: 41ef0010     lea.l      $10(a7), a0
002612: 2008         move.l     a0, d0
002614: 61001904     bsr.w      $3f1a
002618: 4fef000c     lea.l      $c(a7), a7
00261c: 4297         clr.l      (a7)
00261e: 6056         bra.b      $2676
002620: 41ef0004     lea.l      $4(a7), a0
002624: 2008         move.l     a0, d0
002626: 61001a46     bsr.w      $406e
00262a: 2f00         move.l     d0, -(a7)
00262c: 41ef0008     lea.l      $8(a7), a0
002630: 2208         move.l     a0, d1
002632: 202e801e     move.l     -$7fe2(a6), d0
002636: 6100193e     bsr.w      $3f76
00263a: 588f         addq.l     #$4, a7
00263c: 2200         move.l     d0, d1
00263e: 41ef0004     lea.l      $4(a7), a0
002642: 2008         move.l     a0, d0
002644: 61001a28     bsr.w      $406e
002648: b280         cmp.l      d0, d1
00264a: 6728         beq.b      $2674
00264c: 4a2e8fbc     tst.b      -$7044(a6)
002650: 661e         bne.b      $2670
002652: 48780004     pea.l      $4.w
002656: 720a         moveq      #$a, d1
002658: 203c00000098 move.l     #$98, d0
00265e: 610008ba     bsr.w      $2f1a
002662: 588f         addq.l     #$4, a7
002664: 610008da     bsr.w      $2f40
002668: 70ff         moveq      #$ff, d0
00266a: 6100e1b8     bsr.w      $824
00266e: 6004         bra.b      $2674
002670: 7000         moveq      #$0, d0
002672: 600a         bra.b      $267e
002674: 5297         addq.l     #$1, (a7)
002676: 7002         moveq      #$2, d0
002678: b097         cmp.l      (a7), d0
00267a: 6ea4         bgt.b      $2620
00267c: 7001         moveq      #$1, d0
00267e: 4fef0054     lea.l      $54(a7), a7
002682: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002688: 4e5d         unlk       a5
00268a: 4e75         rts        
00268c: 4e550000     link.w     a5, #$0
002690: 48e78080     movem.l    d0/a0, -(a7)
002694: 4fefffec     lea.l      -$14(a7), a7
002698: 6126         bsr.b      $26c0
00269a: 4a00         tst.b      d0
00269c: 6604         bne.b      $26a2
00269e: 70ff         moveq      #$ff, d0
0026a0: 6010         bra.b      $26b2
0026a2: 41d7         lea.l      (a7), a0
0026a4: 2008         move.l     a0, d0
0026a6: 6100feba     bsr.w      $2562
0026aa: 41d7         lea.l      (a7), a0
0026ac: 2008         move.l     a0, d0
0026ae: 61001a58     bsr.w      $4108
0026b2: 4fef0014     lea.l      $14(a7), a7
0026b6: 4ced0100fffc movem.l    -$4(a5), a0
0026bc: 4e5d         unlk       a5
0026be: 4e75         rts        
0026c0: 4e550000     link.w     a5, #$0
0026c4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0026c8: 4fefffec     lea.l      -$14(a7), a7
0026cc: 41d7         lea.l      (a7), a0
0026ce: 2008         move.l     a0, d0
0026d0: 6100fe90     bsr.w      $2562
0026d4: 0c6e00018fba cmpi.w     #$1, -$7046(a6)
0026da: 6616         bne.b      $26f2
0026dc: 41fa00e3     lea.l      $27c1(pc), a0
0026e0: 2208         move.l     a0, d1
0026e2: 41d7         lea.l      (a7), a0
0026e4: 2008         move.l     a0, d0
0026e6: 61001912     bsr.w      $3ffa
0026ea: 4a80         tst.l      d0
0026ec: 6622         bne.b      $2710
0026ee: 7001         moveq      #$1, d0
0026f0: 6020         bra.b      $2712
0026f2: 0c6e00028fba cmpi.w     #$2, -$7046(a6)
0026f8: 6616         bne.b      $2710
0026fa: 41fa00cc     lea.l      $27c8(pc), a0
0026fe: 2208         move.l     a0, d1
002700: 41d7         lea.l      (a7), a0
002702: 2008         move.l     a0, d0
002704: 610018f4     bsr.w      $3ffa
002708: 4a80         tst.l      d0
00270a: 6604         bne.b      $2710
00270c: 7001         moveq      #$1, d0
00270e: 6002         bra.b      $2712
002710: 7000         moveq      #$0, d0
002712: 4fef0014     lea.l      $14(a7), a7
002716: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00271c: 4e5d         unlk       a5
00271e: 4e75         rts        
002720: 4e550000     link.w     a5, #$0
002724: 48e7c080     movem.l    d0-d1/a0, -(a7)
002728: 4fefffea     lea.l      -$16(a7), a7
00272c: 202f0016     move.l     $16(a7), d0
002730: 6100193c     bsr.w      $406e
002734: 2f40000a     move.l     d0, $a(a7)
002738: 42af0012     clr.l      $12(a7)
00273c: 7001         moveq      #$1, d0
00273e: 2f40000e     move.l     d0, $e(a7)
002742: 601c         bra.b      $2760
002744: 206f0016     movea.l    $16(a7), a0
002748: 202f000e     move.l     $e(a7), d0
00274c: 10300800     move.b     (a0, d0.l), d0
002750: 49c0         extb.l     d0
002752: 222f0012     move.l     $12(a7), d1
002756: b380         eor.l      d1, d0
002758: 2f400012     move.l     d0, $12(a7)
00275c: 52af000e     addq.l     #$1, $e(a7)
002760: 206f0016     movea.l    $16(a7), a0
002764: 202f000e     move.l     $e(a7), d0
002768: 0c30002a0800 cmpi.b     #$2a, (a0, d0.l)
00276e: 670a         beq.b      $277a
002770: 202f000e     move.l     $e(a7), d0
002774: b0af000a     cmp.l      $a(a7), d0
002778: 6fca         ble.b      $2744
00277a: 202f0016     move.l     $16(a7), d0
00277e: 610018ee     bsr.w      $406e
002782: 206f002a     movea.l    $2a(a7), a0
002786: 2080         move.l     d0, (a0)
002788: 2f2f0012     move.l     $12(a7), -(a7)
00278c: 41fa0043     lea.l      $27d1(pc), a0
002790: 2208         move.l     a0, d1
002792: 41ef0005     lea.l      $5(a7), a0
002796: 2008         move.l     a0, d0
002798: 61001780     bsr.w      $3f1a
00279c: 588f         addq.l     #$4, a7
00279e: 41ef0007     lea.l      $7(a7), a0
0027a2: 2208         move.l     a0, d1
0027a4: 202f001a     move.l     $1a(a7), d0
0027a8: 610018e2     bsr.w      $408c
0027ac: 4fef0016     lea.l      $16(a7), a7
0027b0: 4ced0100fffc movem.l    -$4(a5), a0
0027b6: 4e5d         unlk       a5
0027b8: 4e75         rts        
0027ba: 2573256325630024504d5658 move.l     ([$2563, a3], $24504d), $5658(a2)
0027c6: 4700         chk.l      d0, d3
0027c8: 2454         movea.l    (a4), a2
0027ca: 5249         addq.w     #$1, a1
0027cc: 4d42         .dc.w      $4d42
0027ce: 4c45         .dc.w      $4c45
0027d0: 00253038     ori.b      #$38, -(a5)
0027d4: 5800         addq.b     #$4, d0
0027d6: 4e550000     link.w     a5, #$0
0027da: 48e78080     movem.l    d0/a0, -(a7)
0027de: 202e8ff8     move.l     -$7008(a6), d0
0027e2: 52ae8ff8     addq.l     #$1, -$7008(a6)
0027e6: 41ee878a     lea.l      -$7876(a6), a0
0027ea: 21970c00     move.l     (a7), (a0, d0.l * 4)
0027ee: 703f         moveq      #$3f, d0
0027f0: b0ae8ff8     cmp.l      -$7008(a6), d0
0027f4: 6c04         bge.b      $27fa
0027f6: 42ae8ff8     clr.l      -$7008(a6)
0027fa: 4ced0100fffc movem.l    -$4(a5), a0
002800: 4e5d         unlk       a5
002802: 4e75         rts        
002804: 4e550000     link.w     a5, #$0
002808: 48e78080     movem.l    d0/a0, -(a7)
00280c: 598f         subq.l     #$4, a7
00280e: 202e8ff4     move.l     -$700c(a6), d0
002812: b0ae8ff8     cmp.l      -$7008(a6), d0
002816: 6604         bne.b      $281c
002818: 70ff         moveq      #$ff, d0
00281a: 601e         bra.b      $283a
00281c: 202e8ff4     move.l     -$700c(a6), d0
002820: 52ae8ff4     addq.l     #$1, -$700c(a6)
002824: 41ee878a     lea.l      -$7876(a6), a0
002828: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
00282c: 703f         moveq      #$3f, d0
00282e: b0ae8ff4     cmp.l      -$700c(a6), d0
002832: 6c04         bge.b      $2838
002834: 42ae8ff4     clr.l      -$700c(a6)
002838: 2017         move.l     (a7), d0
00283a: 588f         addq.l     #$4, a7
00283c: 4ced0100fffc movem.l    -$4(a5), a0
002842: 4e5d         unlk       a5
002844: 4e75         rts        
002846: 4e550000     link.w     a5, #$0
00284a: 48e78000     movem.l    d0, -(a7)
00284e: 4e5d         unlk       a5
002850: 4e75         rts        
002852: 4e550000     link.w     a5, #$0
002856: 48e78000     movem.l    d0, -(a7)
00285a: 202e8ff4     move.l     -$700c(a6), d0
00285e: b0ae8ff8     cmp.l      -$7008(a6), d0
002862: 6604         bne.b      $2868
002864: 7001         moveq      #$1, d0
002866: 6002         bra.b      $286a
002868: 7000         moveq      #$0, d0
00286a: 4e5d         unlk       a5
00286c: 4e75         rts        
00286e: 4e550000     link.w     a5, #$0
002872: 48e78000     movem.l    d0, -(a7)
002876: 2017         move.l     (a7), d0
002878: 610010c4     bsr.w      $393e
00287c: 7001         moveq      #$1, d0
00287e: 4e5d         unlk       a5
002880: 4e75         rts        
002882: 4e550000     link.w     a5, #$0
002886: 48e78000     movem.l    d0, -(a7)
00288a: 7001         moveq      #$1, d0
00288c: 4e5d         unlk       a5
00288e: 4e75         rts        
002890: 4e550000     link.w     a5, #$0
002894: 48e78800     movem.l    d0/d4, -(a7)
002898: 610004fe     bsr.w      $2d98
00289c: 6100ff66     bsr.w      $2804
0028a0: 2800         move.l     d0, d4
0028a2: 6c0c         bge.b      $28b0
0028a4: 7000         moveq      #$0, d0
0028a6: 61002282     bsr.w      $4b2a
0028aa: 6100ff58     bsr.w      $2804
0028ae: 2800         move.l     d0, d4
0028b0: 61000512     bsr.w      $2dc4
0028b4: 2004         move.l     d4, d0
0028b6: 4ced0010fffc movem.l    -$4(a5), d4
0028bc: 4e5d         unlk       a5
0028be: 4e75         rts        
0028c0: 0008         .dc.w      $0008
0028c2: 006e000c006a ori.w      #$c, $6a(a6)
0028c8: 00100066     ori.b      #$66, (a0)
0028cc: 00140062     ori.b      #$62, (a4)
0028d0: 0018005e     ori.b      #$5e, (a0)+
0028d4: 001c005a     ori.b      #$5a, (a4)+
0028d8: 00200056     ori.b      #$56, -(a0)
0028dc: 002c00520028 ori.b      #$52, $28(a4)
0028e2: 004e         .dc.w      $004e
0028e4: ffff         dc.w       $ffff
0028e6: 0008         .dc.w      $0008
0028e8: 0000000c     ori.b      #$c, d0
0028ec: 00000010     ori.b      #$10, d0
0028f0: 00000014     ori.b      #$14, d0
0028f4: 00000018     ori.b      #$18, d0
0028f8: 0000001c     ori.b      #$1c, d0
0028fc: 00000020     ori.b      #$20, d0
002900: 0000002c     ori.b      #$2c, d0
002904: 00000028     ori.b      #$28, d0
002908: 0000ffff     ori.b      #$ff, d0
00290c: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
002910: 43faffae     lea.l      $28c0(pc), a1
002914: 6008         bra.b      $291e
002916: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
00291a: 43faffca     lea.l      $28e6(pc), a1
00291e: 91c8         suba.l     a0, a0
002920: 4e40         trap       #$0
002922: 000e         .dc.w      $000e
002924: 6406         bcc.b      $292c
002926: 2d41800c     move.l     d1, -$7ff4(a6)
00292a: 70ff         moveq      #$ff, d0
00292c: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
002930: 4e75         rts        
002932: 48e70004     movem.l    a5, -(a7)
002936: 91ee900c     suba.l     -$6ff4(a6), a0
00293a: 2d489004     move.l     a0, -$6ffc(a6)
00293e: 41ee888a     lea.l      -$7776(a6), a0
002942: 202e9000     move.l     -$7000(a6), d0
002946: e248         lsr.w      #$1, d0
002948: 5340         subq.w     #$1, d0
00294a: 30dd         move.w     (a5)+, (a0)+
00294c: 51c8fffc     dbra       d0, $294a
002950: 4cdf2000     movem.l    (a7)+, a5
002954: e44f         lsr.w      #$2, d7
002956: 3d479008     move.w     d7, -$6ff8(a6)
00295a: 206e88d2     movea.l    -$772e(a6), a0
00295e: 4e90         jsr        (a0)
002960: 4a80         tst.l      d0
002962: 6708         beq.b      $296c
002964: 7264         moveq      #$64, d1
002966: d247         add.w      d7, d1
002968: 4e40         trap       #$0
00296a: 00064cdf     ori.b      #$df, d6
00296e: 7fff         .dc.w      $7fff
002970: 588f         addq.l     #$4, a7
002972: 44df         move.w     (a7)+, ccr
002974: 4e75         rts        
002976: 4e550000     link.w     a5, #$0
00297a: 48e78000     movem.l    d0, -(a7)
00297e: 1d7c0001900a move.b     #$1, -$6ff6(a6)
002984: 4e5d         unlk       a5
002986: 4e75         rts        
002988: 4e550000     link.w     a5, #$0
00298c: 48e78000     movem.l    d0, -(a7)
002990: 2d5788d2     move.l     (a7), -$772e(a6)
002994: 6606         bne.b      $299c
002996: 6100ff7e     bsr.w      $2916
00299a: 6004         bra.b      $29a0
00299c: 6100ff6e     bsr.w      $290c
0029a0: 4e5d         unlk       a5
0029a2: 4e75         rts        
0029a4: 4e550000     link.w     a5, #$0
0029a8: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0029ac: 4fefffd4     lea.l      -$2c(a7), a7
0029b0: 604a         bra.b      $29fc
0029b2: 2ebc000000b5 move.l     #$b5, (a7)
0029b8: 60000076     bra.w      $2a30
0029bc: 2ebc000000b6 move.l     #$b6, (a7)
0029c2: 606c         bra.b      $2a30
0029c4: 2ebc000000b7 move.l     #$b7, (a7)
0029ca: 6064         bra.b      $2a30
0029cc: 2ebc000000b8 move.l     #$b8, (a7)
0029d2: 605c         bra.b      $2a30
0029d4: 2ebc000000b9 move.l     #$b9, (a7)
0029da: 6054         bra.b      $2a30
0029dc: 2ebc000000ba move.l     #$ba, (a7)
0029e2: 604c         bra.b      $2a30
0029e4: 2ebc000000b2 move.l     #$b2, (a7)
0029ea: 6044         bra.b      $2a30
0029ec: 2ebc000000c0 move.l     #$c0, (a7)
0029f2: 603c         bra.b      $2a30
0029f4: 2ebc000000b3 move.l     #$b3, (a7)
0029fa: 6034         bra.b      $2a30
0029fc: 302e9008     move.w     -$6ff8(a6), d0
002a00: 48c0         ext.l      d0
002a02: 7264         moveq      #$64, d1
002a04: d081         add.l      d1, d0
002a06: 048000000066 subi.l     #$66, d0
002a0c: 0c8000000009 cmpi.l     #$9, d0
002a12: 62e0         bhi.b      $29f4
002a14: 303b0206     move.w     $2a1c(pc, d0.w), d0
002a18: 4efb0002     jmp        $2a1c(pc, d0.w)
002a1c: ff96         dc.w       $ff96
002a1e: ffa0         dc.w       $ffa0
002a20: ffa8         dc.w       $ffa8
002a22: ffb0         dc.w       $ffb0
002a24: ffb8         dc.w       $ffb8
002a26: ffc0         dc.w       $ffc0
002a28: ffc8         dc.w       $ffc8
002a2a: ffd8         dc.w       $ffd8
002a2c: ffd0         dc.w       $ffd0
002a2e: ffd0         dc.w       $ffd0
002a30: 0c97000000ba cmpi.l     #$ba, (a7)
002a36: 660c         bne.b      $2a44
002a38: 4a2e900a     tst.b      -$6ff6(a6)
002a3c: 6706         beq.b      $2a44
002a3e: 7000         moveq      #$0, d0
002a40: 600001ec     bra.w      $2c2e
002a44: 2f2e9004     move.l     -$6ffc(a6), -(a7)
002a48: 306e9008     movea.w    -$6ff8(a6), a0
002a4c: 2f08         move.l     a0, -(a7)
002a4e: 6100155e     bsr.w      $3fae
002a52: 2200         move.l     d0, d1
002a54: 41fa01f0     lea.l      $2c46(pc), a0
002a58: 2008         move.l     a0, d0
002a5a: 610014b6     bsr.w      $3f12
002a5e: 508f         addq.l     #$8, a7
002a60: 61002374     bsr.w      $4dd6
002a64: 2f00         move.l     d0, -(a7)
002a66: 61001546     bsr.w      $3fae
002a6a: 2f00         move.l     d0, -(a7)
002a6c: 2f2e8ffc     move.l     -$7004(a6), -(a7)
002a70: 41fa01fb     lea.l      $2c6d(pc), a0
002a74: 2208         move.l     a0, d1
002a76: 41ef0010     lea.l      $10(a7), a0
002a7a: 2008         move.l     a0, d0
002a7c: 6100149c     bsr.w      $3f1a
002a80: 4fef000c     lea.l      $c(a7), a7
002a84: 41fa01ef     lea.l      $2c75(pc), a0
002a88: 2208         move.l     a0, d1
002a8a: 41ef0004     lea.l      $4(a7), a0
002a8e: 2008         move.l     a0, d0
002a90: 61001450     bsr.w      $3ee2
002a94: 2440         movea.l    d0, a2
002a96: 4a80         tst.l      d0
002a98: 6604         bne.b      $2a9e
002a9a: 45ee8c4a     lea.l      -$73b6(a6), a2
002a9e: 2f2e9004     move.l     -$6ffc(a6), -(a7)
002aa2: 306e9008     movea.w    -$6ff8(a6), a0
002aa6: 2f08         move.l     a0, -(a7)
002aa8: 61001504     bsr.w      $3fae
002aac: 2f00         move.l     d0, -(a7)
002aae: 41fa01c7     lea.l      $2c77(pc), a0
002ab2: 2208         move.l     a0, d1
002ab4: 200a         move.l     a2, d0
002ab6: 6100145e     bsr.w      $3f16
002aba: 4fef000c     lea.l      $c(a7), a7
002abe: 7800         moveq      #$0, d4
002ac0: 6018         bra.b      $2ada
002ac2: 41ee888a     lea.l      -$7776(a6), a0
002ac6: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
002aca: 41fa01d6     lea.l      $2ca2(pc), a0
002ace: 2208         move.l     a0, d1
002ad0: 200a         move.l     a2, d0
002ad2: 61001442     bsr.w      $3f16
002ad6: 588f         addq.l     #$4, a7
002ad8: 5284         addq.l     #$1, d4
002ada: 7008         moveq      #$8, d0
002adc: b084         cmp.l      d4, d0
002ade: 6ee2         bgt.b      $2ac2
002ae0: 41fa01c7     lea.l      $2ca9(pc), a0
002ae4: 2208         move.l     a0, d1
002ae6: 200a         move.l     a2, d0
002ae8: 6100142c     bsr.w      $3f16
002aec: 6018         bra.b      $2b06
002aee: 41ee888a     lea.l      -$7776(a6), a0
002af2: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
002af6: 41fa01b7     lea.l      $2caf(pc), a0
002afa: 2208         move.l     a0, d1
002afc: 200a         move.l     a2, d0
002afe: 61001416     bsr.w      $3f16
002b02: 588f         addq.l     #$4, a7
002b04: 5284         addq.l     #$1, d4
002b06: 7010         moveq      #$10, d0
002b08: b084         cmp.l      d4, d0
002b0a: 6ee2         bgt.b      $2aee
002b0c: 41fa01a8     lea.l      $2cb6(pc), a0
002b10: 2208         move.l     a0, d1
002b12: 200a         move.l     a2, d0
002b14: 61001400     bsr.w      $3f16
002b18: 266e88be     movea.l    -$7742(a6), a3
002b1c: 7800         moveq      #$0, d4
002b1e: 6014         bra.b      $2b34
002b20: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
002b24: 41fa01ac     lea.l      $2cd2(pc), a0
002b28: 2208         move.l     a0, d1
002b2a: 200a         move.l     a2, d0
002b2c: 610013e8     bsr.w      $3f16
002b30: 588f         addq.l     #$4, a7
002b32: 5284         addq.l     #$1, d4
002b34: 7008         moveq      #$8, d0
002b36: b084         cmp.l      d4, d0
002b38: 6ee6         bgt.b      $2b20
002b3a: 41fa019d     lea.l      $2cd9(pc), a0
002b3e: 2208         move.l     a0, d1
002b40: 200a         move.l     a2, d0
002b42: 610013d2     bsr.w      $3f16
002b46: 266e88c6     movea.l    -$773a(a6), a3
002b4a: 7800         moveq      #$0, d4
002b4c: 6014         bra.b      $2b62
002b4e: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
002b52: 41fa01a0     lea.l      $2cf4(pc), a0
002b56: 2208         move.l     a0, d1
002b58: 200a         move.l     a2, d0
002b5a: 610013ba     bsr.w      $3f16
002b5e: 588f         addq.l     #$4, a7
002b60: 5284         addq.l     #$1, d4
002b62: 7008         moveq      #$8, d0
002b64: b084         cmp.l      d4, d0
002b66: 6ee6         bgt.b      $2b4e
002b68: 41fa0191     lea.l      $2cfb(pc), a0
002b6c: 2208         move.l     a0, d1
002b6e: 200a         move.l     a2, d0
002b70: 610013a4     bsr.w      $3f16
002b74: 266e88be     movea.l    -$7742(a6), a3
002b78: 2653         movea.l    (a3), a3
002b7a: 7800         moveq      #$0, d4
002b7c: 6014         bra.b      $2b92
002b7e: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
002b82: 41fa01a5     lea.l      $2d29(pc), a0
002b86: 2208         move.l     a0, d1
002b88: 200a         move.l     a2, d0
002b8a: 6100138a     bsr.w      $3f16
002b8e: 588f         addq.l     #$4, a7
002b90: 5284         addq.l     #$1, d4
002b92: 7008         moveq      #$8, d0
002b94: b084         cmp.l      d4, d0
002b96: 6ee6         bgt.b      $2b7e
002b98: 082e000088cb btst.b     #$0, -$7735(a6)
002b9e: 6704         beq.b      $2ba4
002ba0: 7043         moveq      #$43, d0
002ba2: 6002         bra.b      $2ba6
002ba4: 702d         moveq      #$2d, d0
002ba6: 2f00         move.l     d0, -(a7)
002ba8: 082e000188cb btst.b     #$1, -$7735(a6)
002bae: 6704         beq.b      $2bb4
002bb0: 7056         moveq      #$56, d0
002bb2: 6002         bra.b      $2bb6
002bb4: 702d         moveq      #$2d, d0
002bb6: 2f00         move.l     d0, -(a7)
002bb8: 082e000288cb btst.b     #$2, -$7735(a6)
002bbe: 6704         beq.b      $2bc4
002bc0: 705a         moveq      #$5a, d0
002bc2: 6002         bra.b      $2bc6
002bc4: 702d         moveq      #$2d, d0
002bc6: 2f00         move.l     d0, -(a7)
002bc8: 082e000388cb btst.b     #$3, -$7735(a6)
002bce: 6704         beq.b      $2bd4
002bd0: 704e         moveq      #$4e, d0
002bd2: 6002         bra.b      $2bd6
002bd4: 702d         moveq      #$2d, d0
002bd6: 2f00         move.l     d0, -(a7)
002bd8: 082e000488cb btst.b     #$4, -$7735(a6)
002bde: 6704         beq.b      $2be4
002be0: 7058         moveq      #$58, d0
002be2: 6002         bra.b      $2be6
002be4: 702d         moveq      #$2d, d0
002be6: 2f00         move.l     d0, -(a7)
002be8: 303c00ff     move.w     #$ff, d0
002bec: c06e88ca     and.w      -$7736(a6), d0
002bf0: 7200         moveq      #$0, d1
002bf2: 3200         move.w     d0, d1
002bf4: 2f01         move.l     d1, -(a7)
002bf6: 2f2e88cc     move.l     -$7734(a6), -(a7)
002bfa: 41fa0134     lea.l      $2d30(pc), a0
002bfe: 2208         move.l     a0, d1
002c00: 200a         move.l     a2, d0
002c02: 61001312     bsr.w      $3f16
002c06: 4fef001c     lea.l      $1c(a7), a7
002c0a: 41ee8c4a     lea.l      -$73b6(a6), a0
002c0e: b1ca         cmpa.l     a2, a0
002c10: 6706         beq.b      $2c18
002c12: 200a         move.l     a2, d0
002c14: 61001320     bsr.w      $3f36
002c18: 2f2e9004     move.l     -$6ffc(a6), -(a7)
002c1c: 610021b8     bsr.w      $4dd6
002c20: 2200         move.l     d0, d1
002c22: 202f0004     move.l     $4(a7), d0
002c26: 610002f2     bsr.w      $2f1a
002c2a: 588f         addq.l     #$4, a7
002c2c: 70ff         moveq      #$ff, d0
002c2e: 4fef002c     lea.l      $2c(a7), a7
002c32: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
002c38: 4e5d         unlk       a5
002c3a: 4e75         rts        
002c3c: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
002c42: 6170         bsr.b      $2cb4
002c44: 5f00         subq.b     #$7, d0
002c46: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
002c4c: 6170         bsr.b      $2cbe
002c4e: 2023         move.l     -(a3), d0
002c50: 2564206f     move.l     -(a4), $206f(a2)
002c54: 6363         bls.b      $2cb9
002c56: 7572         .dc.w      $7572
002c58: 7265         moveq      #$65, d1
002c5a: 6420         bcc.b      $2c7c
002c5c: 6174         bsr.b      $2cd2
002c5e: 206f6666     movea.l    $6666(a7), a0
002c62: 7365         .dc.w      $7365
002c64: 743a         moveq      #$3a, d2
002c66: 20307825     move.l     $25(a0, d7.l), d0
002c6a: 780d         moveq      #$d, d4
002c6c: 00257325     ori.b      #$25, -(a5)
002c70: 735f         .dc.w      $735f
002c72: 25640077     move.l     -(a4), $77(a2)
002c76: 0025733a     ori.b      #$3a, -(a5)
002c7a: 2054         movea.l    (a4), a0
002c7c: 7261         moveq      #$61, d1
002c7e: 7020         moveq      #$20, d0
002c80: 2325         move.l     -(a5), -(a1)
002c82: 6420         bcc.b      $2ca4
002c84: 6f63         ble.b      $2ce9
002c86: 6375         bls.b      $2cfd
002c88: 7272         moveq      #$72, d1
002c8a: 6564         bcs.b      $2cf0
002c8c: 2061         movea.l    -(a1), a0
002c8e: 7420         moveq      #$20, d2
002c90: 6f66         ble.b      $2cf8
002c92: 6673         bne.b      $2d07
002c94: 6574         bcs.b      $2d0a
002c96: 3a20         move.w     -(a0), d5
002c98: 30782578     movea.w    $2578.w, a0
002c9c: 0d0d446e     movep.w    $446e(a5), d6
002ca0: 3a00         move.w     d0, d5
002ca2: 2025         move.l     -(a5), d0
002ca4: 30386c58     move.w     $6c58.w, d0
002ca8: 000d         .dc.w      $000d
002caa: 0d41         bchg.b     d6, d1
002cac: 6e3a         bgt.b      $2ce8
002cae: 00202530     ori.b      #$30, -(a0)
002cb2: 386c5800     movea.w    $5800(a4), a4
002cb6: 0d0d4d65     movep.w    $4d65(a5), d6
002cba: 6d20         blt.b      $2cdc
002cbc: 706f         moveq      #$6f, d0
002cbe: 696e         bvs.b      $2d2e
002cc0: 7465         moveq      #$65, d2
002cc2: 6420         bcc.b      $2ce4
002cc4: 746f         moveq      #$6f, d2
002cc6: 2062         movea.l    -(a2), a0
002cc8: 7920         .dc.w      $7920
002cca: 41353a0d     chk.l      $d(a5, d3.l), d0
002cce: 53353a00     subq.b     #$1, (a5, d3.l * 2)
002cd2: 2025         move.l     -(a5), d0
002cd4: 30386c58     move.w     $6c58.w, d0
002cd8: 000d         .dc.w      $000d
002cda: 0d4d656d     movep.l    $656d(a5), d6
002cde: 20706f696e74 movea.l    ([$6e74, a0]), a0
002ce4: 6564         bcs.b      $2d4a
002ce6: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
002cec: 2041         movea.l    d1, a0
002cee: 373a0d53     move.w     $3a43(pc), -(a3)
002cf2: 3700         move.w     d0, -(a3)
002cf4: 2025         move.l     -(a5), d0
002cf6: 30386c58     move.w     $6c58.w, d0
002cfa: 000d         .dc.w      $000d
002cfc: 0d4d656d     movep.l    $656d(a5), d6
002d00: 20706f696e74 movea.l    ([$6e74, a0]), a0
002d06: 6564         bcs.b      $2d6c
002d08: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
002d0e: 20284135     move.l     $4135(a0), d0
002d12: 292c2069     move.l     $2069(a4), -(a4)
002d16: 652e         bcs.b      $2d46
002d18: 2063         movea.l    -(a3), a0
002d1a: 6f6e         ble.b      $2d8a
002d1c: 7420         moveq      #$20, d2
002d1e: 6f66         ble.b      $2d86
002d20: 2041         movea.l    d1, a0
002d22: 353a0d4d     move.w     $3a71(pc), -(a2)
002d26: 353a0020     move.w     $2d48(pc), -(a2)
002d2a: 2530386c     move.l     $6c(a0, d3.l), -(a2)
002d2e: 5800         addq.b     #$4, d0
002d30: 0d0d5043     movep.w    $5043(a5), d6
002d34: 3a20         move.w     -(a0), d5
002d36: 2530386c     move.l     $6c(a0, d3.l), -(a2)
002d3a: 5820         addq.b     #$4, -(a0)
002d3c: 2043         movea.l    d3, a0
002d3e: 433a2025     chk.l      $4d65(pc), d1
002d42: 30325820     move.w     $20(a2, d5.l), d0
002d46: 2825         move.l     -(a5), d4
002d48: 6325         bls.b      $2d6f
002d4a: 6325         bls.b      $2d71
002d4c: 6325         bls.b      $2d73
002d4e: 6325         bls.b      $2d75
002d50: 6329         bls.b      $2d7b
002d52: 0d00         btst.l     d6, d0
002d54: 4e550000     link.w     a5, #$0
002d58: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
002d5c: 2800         move.l     d0, d4
002d5e: 7204         moveq      #$4, d1
002d60: 7044         moveq      #$44, d0
002d62: 61001ef4     bsr.w      $4c58
002d66: 2440         movea.l    d0, a2
002d68: 3a12         move.w     (a2), d5
002d6a: 601c         bra.b      $2d88
002d6c: 4a92         tst.l      (a2)
002d6e: 6718         beq.b      $2d88
002d70: 2052         movea.l    (a2), a0
002d72: 7000         moveq      #$0, d0
002d74: 3010         move.w     (a0), d0
002d76: 3204         move.w     d4, d1
002d78: 48c1         ext.l      d1
002d7a: b081         cmp.l      d1, d0
002d7c: 660a         bne.b      $2d88
002d7e: 2052         movea.l    (a2), a0
002d80: 7000         moveq      #$0, d0
002d82: 30280002     move.w     $2(a0), d0
002d86: 6006         bra.b      $2d8e
002d88: 588a         addq.l     #$4, a2
002d8a: 5345         subq.w     #$1, d5
002d8c: 6cde         bge.b      $2d6c
002d8e: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
002d94: 4e5d         unlk       a5
002d96: 4e75         rts        
002d98: 48e74000     movem.l    d1, -(a7)
002d9c: 203c00000000 move.l     #$0, d0
002da2: 223c00000001 move.l     #$1, d1
002da8: 4e40         trap       #$0
002daa: 0057640c     ori.w      #$640c, (a7)
002dae: 2d41800c     move.l     d1, -$7ff4(a6)
002db2: 70ff         moveq      #$ff, d0
002db4: 4cdf0002     movem.l    (a7)+, d1
002db8: 4e75         rts        
002dba: 4280         clr.l      d0
002dbc: 3001         move.w     d1, d0
002dbe: 4cdf0002     movem.l    (a7)+, d1
002dc2: 4e75         rts        
002dc4: 48e74000     movem.l    d1, -(a7)
002dc8: 203c00000000 move.l     #$0, d0
002dce: 223c00000000 move.l     #$0, d1
002dd4: 4e40         trap       #$0
002dd6: 005764e0     ori.w      #$64e0, (a7)
002dda: 60d2         bra.b      $2dae
002ddc: 48e740e0     movem.l    d1/a0-a2, -(a7)
002de0: 207900000000 movea.l    $0.l, a0
002de6: 2268004c     movea.l    $4c(a0), a1
002dea: 4280         clr.l      d0
002dec: 10290370     move.b     $370(a1), d0
002df0: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002df4: 4e75         rts        
002df6: 48e740e0     movem.l    d1/a0-a2, -(a7)
002dfa: 207900000000 movea.l    $0.l, a0
002e00: 2268004c     movea.l    $4c(a0), a1
002e04: 81a90374     or.l       d0, $374(a1)
002e08: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002e0c: 4e75         rts        
002e0e: 48e740e0     movem.l    d1/a0-a2, -(a7)
002e12: 207900000000 movea.l    $0.l, a0
002e18: 2268004c     movea.l    $4c(a0), a1
002e1c: 4480         neg.l      d0
002e1e: c1a90374     and.l      d0, $374(a1)
002e22: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002e26: 4e75         rts        
002e28: 4e550000     link.w     a5, #$0
002e2c: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002e30: 7200         moveq      #$0, d1
002e32: 41ee9010     lea.l      -$6ff0(a6), a0
002e36: 2008         move.l     a0, d0
002e38: 61001e7e     bsr.w      $4cb8
002e3c: 2440         movea.l    d0, a2
002e3e: 70ff         moveq      #$ff, d0
002e40: b08a         cmp.l      a2, d0
002e42: 6614         bne.b      $2e58
002e44: 41ee9010     lea.l      -$6ff0(a6), a0
002e48: 2208         move.l     a0, d1
002e4a: 41fa0072     lea.l      $2ebe(pc), a0
002e4e: 2008         move.l     a0, d0
002e50: 610010c0     bsr.w      $3f12
002e54: 7000         moveq      #$0, d0
002e56: 6016         bra.b      $2e6e
002e58: 202a0030     move.l     $30(a2), d0
002e5c: d08a         add.l      a2, d0
002e5e: 2800         move.l     d0, d4
002e60: 2204         move.l     d4, d1
002e62: 200a         move.l     a2, d0
002e64: 6112         bsr.b      $2e78
002e66: 200a         move.l     a2, d0
002e68: 61001e84     bsr.w      $4cee
002e6c: 7001         moveq      #$1, d0
002e6e: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
002e74: 4e5d         unlk       a5
002e76: 4e75         rts        
002e78: 4e550000     link.w     a5, #$0
002e7c: 48e7c080     movem.l    d0-d1/a0, -(a7)
002e80: 518f         subq.l     #$8, a7
002e82: 41ee88d6     lea.l      -$772a(a6), a0
002e86: 2f480004     move.l     a0, $4(a7)
002e8a: 4297         clr.l      (a7)
002e8c: 601c         bra.b      $2eaa
002e8e: 206f000c     movea.l    $c(a7), a0
002e92: 2017         move.l     (a7), d0
002e94: 7200         moveq      #$0, d1
002e96: 32300a00     move.w     (a0, d0.l * 2), d1
002e9a: d2af0008     add.l      $8(a7), d1
002e9e: 206f0004     movea.l    $4(a7), a0
002ea2: 2017         move.l     (a7), d0
002ea4: 21810c00     move.l     d1, (a0, d0.l * 4)
002ea8: 5297         addq.l     #$1, (a7)
002eaa: 0c97000000c4 cmpi.l     #$c4, (a7)
002eb0: 6ddc         blt.b      $2e8e
002eb2: 508f         addq.l     #$8, a7
002eb4: 4ced0100fffc movem.l    -$4(a5), a0
002eba: 4e5d         unlk       a5
002ebc: 4e75         rts        
002ebe: 434f         .dc.w      $434f
002ec0: 4f52         .dc.w      $4f52
002ec2: 445f         neg.w      (a7)+
002ec4: 696e         bvs.b      $2f34
002ec6: 6974         bvs.b      $2f3c
002ec8: 3a20         move.w     -(a0), d5
002eca: 4e6f         move       usp, a7
002ecc: 2027         move.l     -(a7), d0
002ece: 25732720210d0000 move.l     $210d(a3, d2.w * 8), $0(a2)
002ed6: 4e550000     link.w     a5, #$0
002eda: 48e7c080     movem.l    d0-d1/a0, -(a7)
002ede: 518f         subq.l     #$8, a7
002ee0: 203c00000100 move.l     #$100, d0
002ee6: d0af0008     add.l      $8(a7), d0
002eea: 2e80         move.l     d0, (a7)
002eec: 1f6f000f0004 move.b     $f(a7), $4(a7)
002ef2: 202f001c     move.l     $1c(a7), d0
002ef6: e080         asr.l      #$8, d0
002ef8: 1f400005     move.b     d0, $5(a7)
002efc: 1f6f001f0006 move.b     $1f(a7), $6(a7)
002f02: 1f7c00ff0007 move.b     #$ff, $7(a7)
002f08: 41d7         lea.l      (a7), a0
002f0a: 2008         move.l     a0, d0
002f0c: 6146         bsr.b      $2f54
002f0e: 508f         addq.l     #$8, a7
002f10: 4ced0100fffc movem.l    -$4(a5), a0
002f16: 4e5d         unlk       a5
002f18: 4e75         rts        
002f1a: 4e550000     link.w     a5, #$0
002f1e: 48e7c000     movem.l    d0-d1, -(a7)
002f22: 2f2f0010     move.l     $10(a7), -(a7)
002f26: 222f0008     move.l     $8(a7), d1
002f2a: 202f0004     move.l     $4(a7), d0
002f2e: 61a6         bsr.b      $2ed6
002f30: 588f         addq.l     #$4, a7
002f32: 203c00002410 move.l     #$2410, d0
002f38: 610000bc     bsr.w      $2ff6
002f3c: 4e5d         unlk       a5
002f3e: 4e75         rts        
002f40: 4e550000     link.w     a5, #$0
002f44: 48e78000     movem.l    d0, -(a7)
002f48: 7000         moveq      #$0, d0
002f4a: 61001bde     bsr.w      $4b2a
002f4e: 60f8         bra.b      $2f48
002f50: 4e5d         unlk       a5
002f52: 4e75         rts        
002f54: 4e550000     link.w     a5, #$0
002f58: 48e7c080     movem.l    d0-d1/a0, -(a7)
002f5c: 4aae901e     tst.l      -$6fe2(a6)
002f60: 6c16         bge.b      $2f78
002f62: 7203         moveq      #$3, d1
002f64: 41fa002e     lea.l      $2f94(pc), a0
002f68: 2008         move.l     a0, d0
002f6a: 61000136     bsr.w      $30a2
002f6e: 2d40901e     move.l     d0, -$6fe2(a6)
002f72: 6c04         bge.b      $2f78
002f74: 70ff         moveq      #$ff, d0
002f76: 6012         bra.b      $2f8a
002f78: 2f17         move.l     (a7), -(a7)
002f7a: 222e901e     move.l     -$6fe2(a6), d1
002f7e: 203c00007f23 move.l     #$7f23, d0
002f84: 61000df6     bsr.w      $3d7c
002f88: 588f         addq.l     #$4, a7
002f8a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002f90: 4e5d         unlk       a5
002f92: 4e75         rts        
002f94: 2f636339     move.l     -(a3), $6339(a7)
002f98: 3300         move.w     d0, -(a1)
002f9a: 4e550000     link.w     a5, #$0
002f9e: 48e7c080     movem.l    d0-d1/a0, -(a7)
002fa2: 518f         subq.l     #$8, a7
002fa4: 7201         moveq      #$1, d1
002fa6: 41fa00ce     lea.l      $3076(pc), a0
002faa: 2008         move.l     a0, d0
002fac: 610000f4     bsr.w      $30a2
002fb0: 2f400004     move.l     d0, $4(a7)
002fb4: 72ff         moveq      #$ff, d1
002fb6: b280         cmp.l      d0, d1
002fb8: 6722         beq.b      $2fdc
002fba: 48780004     pea.l      $4.w
002fbe: 41ef0004     lea.l      $4(a7), a0
002fc2: 2208         move.l     a0, d1
002fc4: 202f0008     move.l     $8(a7), d0
002fc8: 61000fa4     bsr.w      $3f6e
002fcc: 588f         addq.l     #$4, a7
002fce: 7204         moveq      #$4, d1
002fd0: b280         cmp.l      d0, d1
002fd2: 670c         beq.b      $2fe0
002fd4: 202f0004     move.l     $4(a7), d0
002fd8: 61000fb0     bsr.w      $3f8a
002fdc: 70ff         moveq      #$ff, d0
002fde: 600a         bra.b      $2fea
002fe0: 202f0004     move.l     $4(a7), d0
002fe4: 61000fa4     bsr.w      $3f8a
002fe8: 2017         move.l     (a7), d0
002fea: 508f         addq.l     #$8, a7
002fec: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002ff2: 4e5d         unlk       a5
002ff4: 4e75         rts        
002ff6: 4e550000     link.w     a5, #$0
002ffa: 48e7c000     movem.l    d0-d1, -(a7)
002ffe: 2217         move.l     (a7), d1
003000: 6198         bsr.b      $2f9a
003002: 61000242     bsr.w      $3246
003006: 72ff         moveq      #$ff, d1
003008: b280         cmp.l      d0, d1
00300a: 4ced0002fffc movem.l    -$4(a5), d1
003010: 4e5d         unlk       a5
003012: 4e75         rts        
003014: 4e550000     link.w     a5, #$0
003018: 48e7c080     movem.l    d0-d1/a0, -(a7)
00301c: 518f         subq.l     #$8, a7
00301e: 7202         moveq      #$2, d1
003020: 41fa006a     lea.l      $308c(pc), a0
003024: 2008         move.l     a0, d0
003026: 6100007a     bsr.w      $30a2
00302a: 2f400004     move.l     d0, $4(a7)
00302e: 72ff         moveq      #$ff, d1
003030: b280         cmp.l      d0, d1
003032: 6728         beq.b      $305c
003034: 61001da0     bsr.w      $4dd6
003038: 2e80         move.l     d0, (a7)
00303a: 48780004     pea.l      $4.w
00303e: 41ef0004     lea.l      $4(a7), a0
003042: 2208         move.l     a0, d1
003044: 202f0008     move.l     $8(a7), d0
003048: 61000f2c     bsr.w      $3f76
00304c: 588f         addq.l     #$4, a7
00304e: 7204         moveq      #$4, d1
003050: b280         cmp.l      d0, d1
003052: 670c         beq.b      $3060
003054: 202f0004     move.l     $4(a7), d0
003058: 61000f30     bsr.w      $3f8a
00305c: 70ff         moveq      #$ff, d0
00305e: 600a         bra.b      $306a
003060: 202f0004     move.l     $4(a7), d0
003064: 61000f24     bsr.w      $3f8a
003068: 7000         moveq      #$0, d0
00306a: 508f         addq.l     #$8, a7
00306c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003072: 4e5d         unlk       a5
003074: 4e75         rts        
003076: 2f63302f     move.l     -(a3), $302f(a7)
00307a: 5f313239     subq.b     #$7, $39(a1, d3.w)
00307e: 5f2f7061     subq.b     #$7, $7061(a7)
003082: 636b         bls.b      $30ef
003084: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
00308a: 64002f63     bcc.w      $5fef
00308e: 302f5f31     move.w     $5f31(a7), d0
003092: 32395f2f7061 move.w     $5f2f7061.l, d1
003098: 636b         bls.b      $3105
00309a: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
0030a0: 64004e55     bcc.w      $7ef7
0030a4: 000048e7     ori.b      #$e7, d0
0030a8: c000         and.b      d0, d0
0030aa: 42a7         clr.l      -(a7)
0030ac: 222f0008     move.l     $8(a7), d1
0030b0: 202f0004     move.l     $4(a7), d0
0030b4: 613e         bsr.b      $30f4
0030b6: 588f         addq.l     #$4, a7
0030b8: 4e5d         unlk       a5
0030ba: 4e75         rts        
0030bc: 4e550000     link.w     a5, #$0
0030c0: 48e7c000     movem.l    d0-d1, -(a7)
0030c4: 48780001     pea.l      $1.w
0030c8: 222f0008     move.l     $8(a7), d1
0030cc: 202f0004     move.l     $4(a7), d0
0030d0: 6122         bsr.b      $30f4
0030d2: 588f         addq.l     #$4, a7
0030d4: 4e5d         unlk       a5
0030d6: 4e75         rts        
0030d8: 4e550000     link.w     a5, #$0
0030dc: 48e7c000     movem.l    d0-d1, -(a7)
0030e0: 48780002     pea.l      $2.w
0030e4: 222f0008     move.l     $8(a7), d1
0030e8: 202f0004     move.l     $4(a7), d0
0030ec: 6106         bsr.b      $30f4
0030ee: 588f         addq.l     #$4, a7
0030f0: 4e5d         unlk       a5
0030f2: 4e75         rts        
0030f4: 4e550000     link.w     a5, #$0
0030f8: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
0030fc: 4fefffda     lea.l      -$26(a7), a7
003100: 41ef0008     lea.l      $8(a7), a0
003104: 2208         move.l     a0, d1
003106: 202f0026     move.l     $26(a7), d0
00310a: 61000950     bsr.w      $3a5c
00310e: 2440         movea.l    d0, a2
003110: 4a80         tst.l      d0
003112: 67000108     beq.w      $321c
003116: 41ef0008     lea.l      $8(a7), a0
00311a: 2008         move.l     a0, d0
00311c: 61000984     bsr.w      $3aa2
003120: 2f400004     move.l     d0, $4(a7)
003124: 6d0000f6     blt.w      $321c
003128: 41ef0022     lea.l      $22(a7), a0
00312c: 2208         move.l     a0, d1
00312e: 200a         move.l     a2, d0
003130: 610009f6     bsr.w      $3b28
003134: 2440         movea.l    d0, a2
003136: 4a80         tst.l      d0
003138: 670000e2     beq.w      $321c
00313c: 202f0004     move.l     $4(a7), d0
003140: e588         lsl.l      #$2, d0
003142: 41ee9068     lea.l      -$6f98(a6), a0
003146: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
00314c: 6600009a     bne.w      $31e8
003150: 7203         moveq      #$3, d1
003152: 41ef0008     lea.l      $8(a7), a0
003156: 2008         move.l     a0, d0
003158: 61000e00     bsr.w      $3f5a
00315c: 222f0004     move.l     $4(a7), d1
003160: e589         lsl.l      #$2, d1
003162: 41ee9068     lea.l      -$6f98(a6), a0
003166: 31801800     move.w     d0, (a0, d1.l)
00316a: 6d0000ca     blt.w      $3236
00316e: 202f0004     move.l     $4(a7), d0
003172: e588         lsl.l      #$2, d0
003174: 41ee9068     lea.l      -$6f98(a6), a0
003178: 2400         move.l     d0, d2
00317a: 42a7         clr.l      -(a7)
00317c: 202f0008     move.l     $8(a7), d0
003180: e588         lsl.l      #$2, d0
003182: 43ee9068     lea.l      -$6f98(a6), a1
003186: 32710800     movea.w    (a1, d0.l), a1
00318a: 2209         move.l     a1, d1
00318c: 203c0000ff0e move.l     #$ff0e, d0
003192: 61000b84     bsr.w      $3d18
003196: 588f         addq.l     #$4, a7
003198: 2240         movea.l    d0, a1
00319a: 7000         moveq      #$0, d0
00319c: 1011         move.b     (a1), d0
00319e: 31802802     move.w     d0, $2(a0, d2.l)
0031a2: 202f0004     move.l     $4(a7), d0
0031a6: e588         lsl.l      #$2, d0
0031a8: 41ee9068     lea.l      -$6f98(a6), a0
0031ac: 4a700800     tst.w      (a0, d0.l)
0031b0: 6d36         blt.b      $31e8
0031b2: 202f0004     move.l     $4(a7), d0
0031b6: e588         lsl.l      #$2, d0
0031b8: 41ee9068     lea.l      -$6f98(a6), a0
0031bc: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
0031c2: 6c24         bge.b      $31e8
0031c4: 202f0004     move.l     $4(a7), d0
0031c8: e588         lsl.l      #$2, d0
0031ca: 41ee9068     lea.l      -$6f98(a6), a0
0031ce: 30700800     movea.w    (a0, d0.l), a0
0031d2: 2008         move.l     a0, d0
0031d4: 61000db4     bsr.w      $3f8a
0031d8: 202f0004     move.l     $4(a7), d0
0031dc: e588         lsl.l      #$2, d0
0031de: 41ee9068     lea.l      -$6f98(a6), a0
0031e2: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
0031e8: 202f0004     move.l     $4(a7), d0
0031ec: e588         lsl.l      #$2, d0
0031ee: 41ee9068     lea.l      -$6f98(a6), a0
0031f2: 30300802     move.w     $2(a0, d0.l), d0
0031f6: 48c0         ext.l      d0
0031f8: b0af0022     cmp.l      $22(a7), d0
0031fc: 661e         bne.b      $321c
0031fe: 0c12005f     cmpi.b     #$5f, (a2)
003202: 6610         bne.b      $3214
003204: 6004         bra.b      $320a
003206: 4a12         tst.b      (a2)
003208: 672c         beq.b      $3236
00320a: 528a         addq.l     #$1, a2
00320c: 0c12005f     cmpi.b     #$5f, (a2)
003210: 66f4         bne.b      $3206
003212: 528a         addq.l     #$1, a2
003214: 222f002a     move.l     $2a(a7), d1
003218: 200a         move.l     a2, d0
00321a: 6008         bra.b      $3224
00321c: 222f002a     move.l     $2a(a7), d1
003220: 202f0026     move.l     $26(a7), d0
003224: 242f004e     move.l     $4e(a7), d2
003228: e58a         lsl.l      #$2, d2
00322a: 41ee9022     lea.l      -$6fde(a6), a0
00322e: 20702800     movea.l    (a0, d2.l), a0
003232: 4e90         jsr        (a0)
003234: 6002         bra.b      $3238
003236: 70ff         moveq      #$ff, d0
003238: 4fef0026     lea.l      $26(a7), a7
00323c: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
003242: 4e5d         unlk       a5
003244: 4e75         rts        
003246: 4e550000     link.w     a5, #$0
00324a: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
00324e: 4fefffc8     lea.l      -$38(a7), a7
003252: 2f6f00380008 move.l     $38(a7), $8(a7)
003258: 4a2f0009     tst.b      $9(a7)
00325c: 660e         bne.b      $326c
00325e: 306f003e     movea.w    $3e(a7), a0
003262: 2208         move.l     a0, d1
003264: 202f0008     move.l     $8(a7), d0
003268: 600000c8     bra.w      $3332
00326c: 4aae9032     tst.l      -$6fce(a6)
003270: 6608         bne.b      $327a
003272: 61000a80     bsr.w      $3cf4
003276: 2d409032     move.l     d0, -$6fce(a6)
00327a: 7000         moveq      #$0, d0
00327c: 102f0008     move.b     $8(a7), d0
003280: e588         lsl.l      #$2, d0
003282: 41ee9068     lea.l      -$6f98(a6), a0
003286: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
00328c: 66000080     bne.w      $330e
003290: 7000         moveq      #$0, d0
003292: 102f0008     move.b     $8(a7), d0
003296: e588         lsl.l      #$2, d0
003298: 206e9032     movea.l    -$6fce(a6), a0
00329c: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
0032a0: 41fa016e     lea.l      $3410(pc), a0
0032a4: 2208         move.l     a0, d1
0032a6: 41ef001c     lea.l      $1c(a7), a0
0032aa: 2008         move.l     a0, d0
0032ac: 61000c6c     bsr.w      $3f1a
0032b0: 588f         addq.l     #$4, a7
0032b2: 7203         moveq      #$3, d1
0032b4: 41ef0018     lea.l      $18(a7), a0
0032b8: 2008         move.l     a0, d0
0032ba: 61000c9e     bsr.w      $3f5a
0032be: 7200         moveq      #$0, d1
0032c0: 122f0008     move.b     $8(a7), d1
0032c4: e589         lsl.l      #$2, d1
0032c6: 41ee9068     lea.l      -$6f98(a6), a0
0032ca: 31801800     move.w     d0, (a0, d1.l)
0032ce: 6c06         bge.b      $32d6
0032d0: 70ff         moveq      #$ff, d0
0032d2: 6000012e     bra.w      $3402
0032d6: 7000         moveq      #$0, d0
0032d8: 102f0008     move.b     $8(a7), d0
0032dc: e588         lsl.l      #$2, d0
0032de: 41ee9068     lea.l      -$6f98(a6), a0
0032e2: 2400         move.l     d0, d2
0032e4: 42a7         clr.l      -(a7)
0032e6: 7000         moveq      #$0, d0
0032e8: 102f000c     move.b     $c(a7), d0
0032ec: e588         lsl.l      #$2, d0
0032ee: 43ee9068     lea.l      -$6f98(a6), a1
0032f2: 32710800     movea.w    (a1, d0.l), a1
0032f6: 2209         move.l     a1, d1
0032f8: 203c0000ff0e move.l     #$ff0e, d0
0032fe: 61000a18     bsr.w      $3d18
003302: 588f         addq.l     #$4, a7
003304: 2240         movea.l    d0, a1
003306: 7000         moveq      #$0, d0
003308: 1011         move.b     (a1), d0
00330a: 31802802     move.w     d0, $2(a0, d2.l)
00330e: 7000         moveq      #$0, d0
003310: 102f0008     move.b     $8(a7), d0
003314: e588         lsl.l      #$2, d0
003316: 41ee9068     lea.l      -$6f98(a6), a0
00331a: 7200         moveq      #$0, d1
00331c: 122f0009     move.b     $9(a7), d1
003320: b2700802     cmp.w      $2(a0, d0.l), d1
003324: 6614         bne.b      $333a
003326: 306f003e     movea.w    $3e(a7), a0
00332a: 2208         move.l     a0, d1
00332c: 7000         moveq      #$0, d0
00332e: 302f000a     move.w     $a(a7), d0
003332: 610019e4     bsr.w      $4d18
003336: 600000ca     bra.w      $3402
00333a: 4aae902e     tst.l      -$6fd2(a6)
00333e: 661a         bne.b      $335a
003340: 61001a94     bsr.w      $4dd6
003344: 2d40902e     move.l     d0, -$6fd2(a6)
003348: 2d7c000100008bee move.l     #$10000, -$7412(a6)
003350: 2d6e902e8bf2 move.l     -$6fd2(a6), -$740e(a6)
003356: 42ae8bea     clr.l      -$7416(a6)
00335a: 7001         moveq      #$1, d0
00335c: 2d408c0a     move.l     d0, -$73f6(a6)
003360: 7008         moveq      #$8, d0
003362: 2d408c0e     move.l     d0, -$73f2(a6)
003366: 41d7         lea.l      (a7), a0
003368: 2d488c12     move.l     a0, -$73ee(a6)
00336c: 41ee8be6     lea.l      -$741a(a6), a0
003370: 2d488c1a     move.l     a0, -$73e6(a6)
003374: 7018         moveq      #$18, d0
003376: 2d408c16     move.l     d0, -$73ea(a6)
00337a: 7000         moveq      #$0, d0
00337c: 302f000a     move.w     $a(a7), d0
003380: 2d408bf6     move.l     d0, -$740a(a6)
003384: 306f003e     movea.w    $3e(a7), a0
003388: 2d488bfa     move.l     a0, -$7406(a6)
00338c: 1d6f00098be9 move.b     $9(a7), -$7417(a6)
003392: 422e8bea     clr.b      -$7416(a6)
003396: 486e8c0a     pea.l      -$73f6(a6)
00339a: 7000         moveq      #$0, d0
00339c: 102f000c     move.b     $c(a7), d0
0033a0: e588         lsl.l      #$2, d0
0033a2: 41ee9068     lea.l      -$6f98(a6), a0
0033a6: 30700800     movea.w    (a0, d0.l), a0
0033aa: 2208         move.l     a0, d1
0033ac: 203c0000ff05 move.l     #$ff05, d0
0033b2: 610009c8     bsr.w      $3d7c
0033b6: 588f         addq.l     #$4, a7
0033b8: 2f400010     move.l     d0, $10(a7)
0033bc: 6c08         bge.b      $33c6
0033be: 70ff         moveq      #$ff, d0
0033c0: 2f40000c     move.l     d0, $c(a7)
0033c4: 6038         bra.b      $33fe
0033c6: 2f2f0010     move.l     $10(a7), -(a7)
0033ca: 7000         moveq      #$0, d0
0033cc: 102f000c     move.b     $c(a7), d0
0033d0: e588         lsl.l      #$2, d0
0033d2: 41ee9068     lea.l      -$6f98(a6), a0
0033d6: 30700800     movea.w    (a0, d0.l), a0
0033da: 2208         move.l     a0, d1
0033dc: 203c0000ff06 move.l     #$ff06, d0
0033e2: 61000998     bsr.w      $3d7c
0033e6: 588f         addq.l     #$4, a7
0033e8: 2f40000c     move.l     d0, $c(a7)
0033ec: 6dd0         blt.b      $33be
0033ee: 2f6f0004000c move.l     $4(a7), $c(a7)
0033f4: 4aaf0004     tst.l      $4(a7)
0033f8: 6c04         bge.b      $33fe
0033fa: 2d57800c     move.l     (a7), -$7ff4(a6)
0033fe: 202f000c     move.l     $c(a7), d0
003402: 4fef0038     lea.l      $38(a7), a7
003406: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
00340c: 4e5d         unlk       a5
00340e: 4e75         rts        
003410: 2f25         move.l     -(a5), -(a7)
003412: 7300         .dc.w      $7300
003414: 4e550000     link.w     a5, #$0
003418: 48e7c080     movem.l    d0-d1/a0, -(a7)
00341c: 7002         moveq      #$2, d0
00341e: b0ae9036     cmp.l      -$6fca(a6), d0
003422: 6c0c         bge.b      $3430
003424: 2217         move.l     (a7), d1
003426: 41fa052c     lea.l      $3954(pc), a0
00342a: 2008         move.l     a0, d0
00342c: 61000ae4     bsr.w      $3f12
003430: 0c9700000106 cmpi.l     #$106, (a7)
003436: 6608         bne.b      $3440
003438: 7001         moveq      #$1, d0
00343a: 2d408c26     move.l     d0, -$73da(a6)
00343e: 600e         bra.b      $344e
003440: 4aae8c2a     tst.l      -$73d6(a6)
003444: 6708         beq.b      $344e
003446: 2017         move.l     (a7), d0
003448: 206e8c2a     movea.l    -$73d6(a6), a0
00344c: 4e90         jsr        (a0)
00344e: 7000         moveq      #$0, d0
003450: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003456: 4e5d         unlk       a5
003458: 4e75         rts        
00345a: 4e550000     link.w     a5, #$0
00345e: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
003462: 4fefff58     lea.l      -$a8(a7), a7
003466: 6010         bra.b      $3478
003468: 08ef000600de bset.b     #$6, $de(a7)
00346e: 601c         bra.b      $348c
003470: 08ef000700de bset.b     #$7, $de(a7)
003476: 6014         bra.b      $348c
003478: 202f00e0     move.l     $e0(a7), d0
00347c: 0c80a95acd81 cmpi.l     #$a95acd81, d0
003482: 67e4         beq.b      $3468
003484: 0c80a95acd82 cmpi.l     #$a95acd82, d0
00348a: 67e4         beq.b      $3470
00348c: 41ef0094     lea.l      $94(a7), a0
003490: 2208         move.l     a0, d1
003492: 202f00ac     move.l     $ac(a7), d0
003496: 610005c4     bsr.w      $3a5c
00349a: 2f400028     move.l     d0, $28(a7)
00349e: 6700015c     beq.w      $35fc
0034a2: 206f0028     movea.l    $28(a7), a0
0034a6: 0c10005f     cmpi.b     #$5f, (a0)
0034aa: 66000150     bne.w      $35fc
0034ae: 2f6f002800ac move.l     $28(a7), $ac(a7)
0034b4: 2d6f00ac9052 move.l     $ac(a7), -$6fae(a6)
0034ba: 41ef0094     lea.l      $94(a7), a0
0034be: 2d489046     move.l     a0, -$6fba(a6)
0034c2: 41ef0094     lea.l      $94(a7), a0
0034c6: 2008         move.l     a0, d0
0034c8: 610005d8     bsr.w      $3aa2
0034cc: 3f40002c     move.w     d0, $2c(a7)
0034d0: 6c0c         bge.b      $34de
0034d2: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
0034da: 60000242     bra.w      $371e
0034de: 422f0052     clr.b      $52(a7)
0034e2: 41ef0046     lea.l      $46(a7), a0
0034e6: 2208         move.l     a0, d1
0034e8: 202f00ac     move.l     $ac(a7), d0
0034ec: 6100063a     bsr.w      $3b28
0034f0: 2f400028     move.l     d0, $28(a7)
0034f4: 67000106     beq.w      $35fc
0034f8: 1f6f00490051 move.b     $49(a7), $51(a7)
0034fe: 2f6f002800ac move.l     $28(a7), $ac(a7)
003504: 302f002c     move.w     $2c(a7), d0
003508: 48c0         ext.l      d0
00350a: e588         lsl.l      #$2, d0
00350c: 41ee9068     lea.l      -$6f98(a6), a0
003510: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
003516: 660000b6     bne.w      $35ce
00351a: 486f0094     pea.l      $94(a7)
00351e: 41fa0464     lea.l      $3984(pc), a0
003522: 2208         move.l     a0, d1
003524: 41ef0078     lea.l      $78(a7), a0
003528: 2008         move.l     a0, d0
00352a: 610009ee     bsr.w      $3f1a
00352e: 588f         addq.l     #$4, a7
003530: 7001         moveq      #$1, d0
003532: b0ae9036     cmp.l      -$6fca(a6), d0
003536: 6c10         bge.b      $3548
003538: 41ef0074     lea.l      $74(a7), a0
00353c: 2208         move.l     a0, d1
00353e: 41fa0447     lea.l      $3987(pc), a0
003542: 2008         move.l     a0, d0
003544: 610009cc     bsr.w      $3f12
003548: 7203         moveq      #$3, d1
00354a: 41ef0074     lea.l      $74(a7), a0
00354e: 2008         move.l     a0, d0
003550: 61000a08     bsr.w      $3f5a
003554: 322f002c     move.w     $2c(a7), d1
003558: 48c1         ext.l      d1
00355a: e589         lsl.l      #$2, d1
00355c: 41ee9068     lea.l      -$6f98(a6), a0
003560: 31801800     move.w     d0, (a0, d1.l)
003564: 6c30         bge.b      $3596
003566: 7001         moveq      #$1, d0
003568: b0ae9036     cmp.l      -$6fca(a6), d0
00356c: 6c0001b0     bge.w      $371e
003570: 302f002c     move.w     $2c(a7), d0
003574: 48c0         ext.l      d0
003576: e588         lsl.l      #$2, d0
003578: 41ee9068     lea.l      -$6f98(a6), a0
00357c: 30700800     movea.w    (a0, d0.l), a0
003580: 2f08         move.l     a0, -(a7)
003582: 222f004a     move.l     $4a(a7), d1
003586: 41fa0418     lea.l      $39a0(pc), a0
00358a: 2008         move.l     a0, d0
00358c: 61000984     bsr.w      $3f12
003590: 588f         addq.l     #$4, a7
003592: 6000018a     bra.w      $371e
003596: 302f002c     move.w     $2c(a7), d0
00359a: 48c0         ext.l      d0
00359c: e588         lsl.l      #$2, d0
00359e: 41ee9068     lea.l      -$6f98(a6), a0
0035a2: 2400         move.l     d0, d2
0035a4: 42a7         clr.l      -(a7)
0035a6: 302f0030     move.w     $30(a7), d0
0035aa: 48c0         ext.l      d0
0035ac: e588         lsl.l      #$2, d0
0035ae: 43ee9068     lea.l      -$6f98(a6), a1
0035b2: 32710800     movea.w    (a1, d0.l), a1
0035b6: 2209         move.l     a1, d1
0035b8: 203c0000ff0e move.l     #$ff0e, d0
0035be: 61000758     bsr.w      $3d18
0035c2: 588f         addq.l     #$4, a7
0035c4: 2240         movea.l    d0, a1
0035c6: 7000         moveq      #$0, d0
0035c8: 1011         move.b     (a1), d0
0035ca: 31802802     move.w     d0, $2(a0, d2.l)
0035ce: 302f002c     move.w     $2c(a7), d0
0035d2: 48c0         ext.l      d0
0035d4: e588         lsl.l      #$2, d0
0035d6: 41ee9068     lea.l      -$6f98(a6), a0
0035da: 30300802     move.w     $2(a0, d0.l), d0
0035de: 48c0         ext.l      d0
0035e0: b0af0046     cmp.l      $46(a7), d0
0035e4: 6642         bne.b      $3628
0035e6: 7001         moveq      #$1, d0
0035e8: b0ae9036     cmp.l      -$6fca(a6), d0
0035ec: 6c0e         bge.b      $35fc
0035ee: 222f00ac     move.l     $ac(a7), d1
0035f2: 41fa03bf     lea.l      $39b3(pc), a0
0035f6: 2008         move.l     a0, d0
0035f8: 61000918     bsr.w      $3f12
0035fc: 306f00de     movea.w    $de(a7), a0
003600: 2f08         move.l     a0, -(a7)
003602: 306f00de     movea.w    $de(a7), a0
003606: 2f08         move.l     a0, -(a7)
003608: 2f2f00dc     move.l     $dc(a7), -(a7)
00360c: 2f2f00dc     move.l     $dc(a7), -(a7)
003610: 2f2f00dc     move.l     $dc(a7), -(a7)
003614: 222f00c0     move.l     $c0(a7), d1
003618: 202f00bc     move.l     $bc(a7), d0
00361c: 6100098c     bsr.w      $3faa
003620: 4fef0014     lea.l      $14(a7), a7
003624: 6000030a     bra.w      $3930
003628: 4a6e905a     tst.w      -$6fa6(a6)
00362c: 6608         bne.b      $3636
00362e: 610017a6     bsr.w      $4dd6
003632: 3d40905a     move.w     d0, -$6fa6(a6)
003636: 42ae8c2a     clr.l      -$73d6(a6)
00363a: 306e905a     movea.w    -$6fa6(a6), a0
00363e: 2008         move.l     a0, d0
003640: 6100068c     bsr.w      $3cce
003644: 2d408c2a     move.l     d0, -$73d6(a6)
003648: 7001         moveq      #$1, d0
00364a: b0ae9036     cmp.l      -$6fca(a6), d0
00364e: 6c0e         bge.b      $365e
003650: 222e8c2a     move.l     -$73d6(a6), d1
003654: 41fa0384     lea.l      $39da(pc), a0
003658: 2008         move.l     a0, d0
00365a: 610008b6     bsr.w      $3f12
00365e: 41fafdb4     lea.l      $3414(pc), a0
003662: 2008         move.l     a0, d0
003664: 610002d8     bsr.w      $393e
003668: 306f00de     movea.w    $de(a7), a0
00366c: 2f08         move.l     a0, -(a7)
00366e: 42a7         clr.l      -(a7)
003670: 42a7         clr.l      -(a7)
003672: 2f2f00dc     move.l     $dc(a7), -(a7)
003676: 486e903a     pea.l      -$6fc6(a6)
00367a: 41fa0374     lea.l      $39f0(pc), a0
00367e: 2208         move.l     a0, d1
003680: 41fa16f8     lea.l      $4d7a(pc), a0
003684: 2008         move.l     a0, d0
003686: 61000922     bsr.w      $3faa
00368a: 4fef0014     lea.l      $14(a7), a7
00368e: 2f40005e     move.l     d0, $5e(a7)
003692: 6f00008a     ble.w      $371e
003696: 2f7c000200000056 move.l     #$20000, $56(a7)
00369e: 42af005a     clr.l      $5a(a7)
0036a2: 2f6f00d40062 move.l     $d4(a7), $62(a7)
0036a8: 3f6f00da0066 move.w     $da(a7), $66(a7)
0036ae: 3f6f00de0068 move.w     $de(a7), $68(a7)
0036b4: 3f6f002c006c move.w     $2c(a7), $6c(a7)
0036ba: 3f6e905a006a move.w     -$6fa6(a6), $6a(a7)
0036c0: 7001         moveq      #$1, d0
0036c2: 2f40004a     move.l     d0, $4a(a7)
0036c6: 42af0042     clr.l      $42(a7)
0036ca: 6004         bra.b      $36d0
0036cc: 52af004a     addq.l     #$1, $4a(a7)
0036d0: 202f0042     move.l     $42(a7), d0
0036d4: 52af0042     addq.l     #$1, $42(a7)
0036d8: e588         lsl.l      #$2, d0
0036da: 206f00cc     movea.l    $cc(a7), a0
0036de: 4ab00800     tst.l      (a0, d0.l)
0036e2: 66e8         bne.b      $36cc
0036e4: 52af004a     addq.l     #$1, $4a(a7)
0036e8: 42af0042     clr.l      $42(a7)
0036ec: 6004         bra.b      $36f2
0036ee: 52af004a     addq.l     #$1, $4a(a7)
0036f2: 202f0042     move.l     $42(a7), d0
0036f6: 52af0042     addq.l     #$1, $42(a7)
0036fa: e588         lsl.l      #$2, d0
0036fc: 206f00d0     movea.l    $d0(a7), a0
003700: 4ab00800     tst.l      (a0, d0.l)
003704: 66e8         bne.b      $36ee
003706: 52af004a     addq.l     #$1, $4a(a7)
00370a: 202f004a     move.l     $4a(a7), d0
00370e: e788         lsl.l      #$3, d0
003710: 7214         moveq      #$14, d1
003712: d081         add.l      d1, d0
003714: 610008b8     bsr.w      $3fce
003718: 2440         movea.l    d0, a2
00371a: 4a80         tst.l      d0
00371c: 6606         bne.b      $3724
00371e: 70ff         moveq      #$ff, d0
003720: 6000020e     bra.w      $3930
003724: 202f004a     move.l     $4a(a7), d0
003728: 5280         addq.l     #$1, d0
00372a: 2480         move.l     d0, (a2)
00372c: 257c000000080004 move.l     #$8, $4(a2)
003734: 41ef0020     lea.l      $20(a7), a0
003738: 25480008     move.l     a0, $8(a2)
00373c: 700c         moveq      #$c, d0
00373e: d08a         add.l      a2, d0
003740: 2640         movea.l    d0, a3
003742: 41ef004e     lea.l      $4e(a7), a0
003746: 27480004     move.l     a0, $4(a3)
00374a: 26bc00000020 move.l     #$20, (a3)
003750: 508b         addq.l     #$8, a3
003752: 276f00ac0004 move.l     $ac(a7), $4(a3)
003758: 202f00ac     move.l     $ac(a7), d0
00375c: 61000910     bsr.w      $406e
003760: 5280         addq.l     #$1, d0
003762: 2680         move.l     d0, (a3)
003764: 508b         addq.l     #$8, a3
003766: 42af0042     clr.l      $42(a7)
00376a: 605a         bra.b      $37c6
00376c: 7001         moveq      #$1, d0
00376e: b0ae9036     cmp.l      -$6fca(a6), d0
003772: 6c26         bge.b      $379a
003774: 222f0042     move.l     $42(a7), d1
003778: 41fa027d     lea.l      $39f7(pc), a0
00377c: 2008         move.l     a0, d0
00377e: 61000792     bsr.w      $3f12
003782: 202f0042     move.l     $42(a7), d0
003786: e588         lsl.l      #$2, d0
003788: 206f00cc     movea.l    $cc(a7), a0
00378c: 22300800     move.l     (a0, d0.l), d1
003790: 41fa0285     lea.l      $3a17(pc), a0
003794: 2008         move.l     a0, d0
003796: 6100077a     bsr.w      $3f12
00379a: 202f0042     move.l     $42(a7), d0
00379e: e588         lsl.l      #$2, d0
0037a0: 206f00cc     movea.l    $cc(a7), a0
0037a4: 277008000004 move.l     (a0, d0.l), $4(a3)
0037aa: 202f0042     move.l     $42(a7), d0
0037ae: 52af0042     addq.l     #$1, $42(a7)
0037b2: e588         lsl.l      #$2, d0
0037b4: 206f00cc     movea.l    $cc(a7), a0
0037b8: 20300800     move.l     (a0, d0.l), d0
0037bc: 610008b0     bsr.w      $406e
0037c0: 5280         addq.l     #$1, d0
0037c2: 2680         move.l     d0, (a3)
0037c4: 508b         addq.l     #$8, a3
0037c6: 202f0042     move.l     $42(a7), d0
0037ca: e588         lsl.l      #$2, d0
0037cc: 206f00cc     movea.l    $cc(a7), a0
0037d0: 4ab00800     tst.l      (a0, d0.l)
0037d4: 6696         bne.b      $376c
0037d6: 41fa024e     lea.l      $3a26(pc), a0
0037da: 27480004     move.l     a0, $4(a3)
0037de: 26bc00000001 move.l     #$1, (a3)
0037e4: 508b         addq.l     #$8, a3
0037e6: 42af0042     clr.l      $42(a7)
0037ea: 604c         bra.b      $3838
0037ec: 7001         moveq      #$1, d0
0037ee: b0ae9036     cmp.l      -$6fca(a6), d0
0037f2: 6c18         bge.b      $380c
0037f4: 202f0042     move.l     $42(a7), d0
0037f8: e588         lsl.l      #$2, d0
0037fa: 206f00d0     movea.l    $d0(a7), a0
0037fe: 22300800     move.l     (a0, d0.l), d1
003802: 41fa0223     lea.l      $3a27(pc), a0
003806: 2008         move.l     a0, d0
003808: 61000708     bsr.w      $3f12
00380c: 202f0042     move.l     $42(a7), d0
003810: e588         lsl.l      #$2, d0
003812: 206f00d0     movea.l    $d0(a7), a0
003816: 277008000004 move.l     (a0, d0.l), $4(a3)
00381c: 202f0042     move.l     $42(a7), d0
003820: 52af0042     addq.l     #$1, $42(a7)
003824: e588         lsl.l      #$2, d0
003826: 206f00d0     movea.l    $d0(a7), a0
00382a: 20300800     move.l     (a0, d0.l), d0
00382e: 6100083e     bsr.w      $406e
003832: 5280         addq.l     #$1, d0
003834: 2680         move.l     d0, (a3)
003836: 508b         addq.l     #$8, a3
003838: 202f0042     move.l     $42(a7), d0
00383c: e588         lsl.l      #$2, d0
00383e: 206f00d0     movea.l    $d0(a7), a0
003842: 4ab00800     tst.l      (a0, d0.l)
003846: 66a4         bne.b      $37ec
003848: 41fa01ec     lea.l      $3a36(pc), a0
00384c: 27480004     move.l     a0, $4(a3)
003850: 26bc00000001 move.l     #$1, (a3)
003856: 508b         addq.l     #$8, a3
003858: 7001         moveq      #$1, d0
00385a: 610012d4     bsr.w      $4b30
00385e: 42ae8c22     clr.l      -$73de(a6)
003862: 600a         bra.b      $386e
003864: 52ae8c22     addq.l     #$1, -$73de(a6)
003868: 7001         moveq      #$1, d0
00386a: 610012c4     bsr.w      $4b30
00386e: 4aae8c26     tst.l      -$73da(a6)
003872: 67f0         beq.b      $3864
003874: 7064         moveq      #$64, d0
003876: b0ae8c22     cmp.l      -$73de(a6), d0
00387a: 6e0e         bgt.b      $388a
00387c: 222e8c22     move.l     -$73de(a6), d1
003880: 41fa01b5     lea.l      $3a37(pc), a0
003884: 2008         move.l     a0, d0
003886: 6100068a     bsr.w      $3f12
00388a: 4aae8c2a     tst.l      -$73d6(a6)
00388e: 6708         beq.b      $3898
003890: 202e8c2a     move.l     -$73d6(a6), d0
003894: 610000a8     bsr.w      $393e
003898: 4852         pea.l      (a2)
00389a: 302f0030     move.w     $30(a7), d0
00389e: 48c0         ext.l      d0
0038a0: e588         lsl.l      #$2, d0
0038a2: 41ee9068     lea.l      -$6f98(a6), a0
0038a6: 30700800     movea.w    (a0, d0.l), a0
0038aa: 2208         move.l     a0, d1
0038ac: 203c0000ff05 move.l     #$ff05, d0
0038b2: 610004c8     bsr.w      $3d7c
0038b6: 588f         addq.l     #$4, a7
0038b8: 2f40003a     move.l     d0, $3a(a7)
0038bc: 6c08         bge.b      $38c6
0038be: 70ff         moveq      #$ff, d0
0038c0: 2f40002e     move.l     d0, $2e(a7)
0038c4: 6060         bra.b      $3926
0038c6: 2f2f003a     move.l     $3a(a7), -(a7)
0038ca: 302f0030     move.w     $30(a7), d0
0038ce: 48c0         ext.l      d0
0038d0: e588         lsl.l      #$2, d0
0038d2: 41ee9068     lea.l      -$6f98(a6), a0
0038d6: 30700800     movea.w    (a0, d0.l), a0
0038da: 2208         move.l     a0, d1
0038dc: 203c0000ff06 move.l     #$ff06, d0
0038e2: 61000498     bsr.w      $3d7c
0038e6: 588f         addq.l     #$4, a7
0038e8: 2f40002e     move.l     d0, $2e(a7)
0038ec: 6c10         bge.b      $38fe
0038ee: 70ff         moveq      #$ff, d0
0038f0: 2f40002e     move.l     d0, $2e(a7)
0038f4: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
0038fc: 6028         bra.b      $3926
0038fe: 2f6f0024002e move.l     $24(a7), $2e(a7)
003904: 4aaf002e     tst.l      $2e(a7)
003908: 6c16         bge.b      $3920
00390a: 223c00008000 move.l     #$8000, d1
003910: 202f005e     move.l     $5e(a7), d0
003914: 61001402     bsr.w      $4d18
003918: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
00391e: 6006         bra.b      $3926
003920: 1f6f002d002e move.b     $2d(a7), $2e(a7)
003926: 200a         move.l     a2, d0
003928: 610006b0     bsr.w      $3fda
00392c: 202f002e     move.l     $2e(a7), d0
003930: 4fef00a8     lea.l      $a8(a7), a7
003934: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
00393a: 4e5d         unlk       a5
00393c: 4e75         rts        
00393e: 4e550000     link.w     a5, #$0
003942: 48e78000     movem.l    d0, -(a7)
003946: 2d579078     move.l     (a7), -$6f88(a6)
00394a: 2017         move.l     (a7), d0
00394c: 610014c0     bsr.w      $4e0e
003950: 4e5d         unlk       a5
003952: 4e75         rts        
003954: 5369676e     subq.w     #$1, $676e(a1)
003958: 616c         bsr.b      $39c6
00395a: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
003964: 2063         movea.l    -(a3), a0
003966: 6f64         ble.b      $39cc
003968: 653d         bcs.b      $39a7
00396a: 2025         move.l     -(a5), d0
00396c: 780d         moveq      #$d, d4
00396e: 007365727665 ori.w      #$6572, $65(a3, d7.w)
003974: 7200         moveq      #$0, d1
003976: 3200         move.w     d0, d1
003978: 3000         move.w     d0, d0
00397a: 2f633000     move.l     -(a3), $3000(a7)
00397e: 3000         move.w     d0, d0
003980: 3000         move.w     d0, d0
003982: 3000         move.w     d0, d0
003984: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
00398a: 6e20         bgt.b      $39ac
00398c: 6361         bls.b      $39ef
00398e: 726f         moveq      #$6f, d1
003990: 7370         .dc.w      $7370
003992: 6174         bsr.b      $3a08
003994: 6820         bvc.b      $39b6
003996: 6e61         bgt.b      $39f9
003998: 6d65         blt.b      $39ff
00399a: 6420         bcc.b      $39bc
00399c: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
0039a2: 7468         moveq      #$68, d2
0039a4: 6964         bvs.b      $3a0a
0039a6: 5b25         subq.b     #$5, -(a5)
0039a8: 645d         bcc.b      $3a07
0039aa: 206d6772     movea.l    $6772(a5), a0
0039ae: 3d25         move.w     -(a5), -(a6)
0039b0: 640d         bcc.b      $39bf
0039b2: 00666f72     ori.w      #$6f72, -(a6)
0039b6: 6b69         bmi.b      $3a21
0039b8: 6e67         bgt.b      $3a21
0039ba: 2070726f     movea.l    $6f(a0, d7.w), a0
0039be: 6365         bls.b      $3a25
0039c0: 7373         .dc.w      $7373
0039c2: 206c6f63     movea.l    $6f63(a4), a0
0039c6: 616c         bsr.b      $3a34
0039c8: 6c79         bge.b      $3a43
0039ca: 2c20         move.l     -(a0), d6
0039cc: 6d6f         blt.b      $3a3d
0039ce: 646e         bcc.b      $3a3e
0039d0: 616d         bsr.b      $3a3f
0039d2: 6520         bcs.b      $39f4
0039d4: 3d20         move.w     -(a0), -(a6)
0039d6: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
0039dc: 6420         bcc.b      $39fe
0039de: 6963         bvs.b      $3a43
0039e0: 7074         moveq      #$74, d0
0039e2: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
0039ec: 25780d007365 move.l     $d00.w, $7365(a2)
0039f2: 7276         moveq      #$76, d1
0039f4: 6572         bcs.b      $3a68
0039f6: 00656e74     ori.w      #$6e74, -(a5)
0039fa: 6572         bcs.b      $3a6e
0039fc: 6564         bcs.b      $3a62
0039fe: 2061         movea.l    -(a1), a0
003a00: 7267         moveq      #$67, d1
003a02: 6c69         bge.b      $3a6d
003a04: 7374         .dc.w      $7374
003a06: 206c6f6f     movea.l    $6f6f(a4), a0
003a0a: 702c         moveq      #$2c, d0
003a0c: 20696e64     movea.l    $6e64(a1), a0
003a10: 6578         bcs.b      $3a8a
003a12: 3d25         move.w     -(a5), -(a6)
003a14: 640d         bcc.b      $3a23
003a16: 00415247     ori.w      #$5247, d1
003a1a: 4c49         .dc.w      $4c49
003a1c: 5354         subq.w     #$1, (a4)
003a1e: 5b695d3d     subq.w     #$5, $5d3d(a1)
003a22: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
003a28: 4e564c49     link.w     a6, #$4c49
003a2c: 5354         subq.w     #$1, (a4)
003a2e: 5b695d3d     subq.w     #$5, $5d3d(a1)
003a32: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
003a38: 796e         .dc.w      $796e
003a3a: 6368         bls.b      $3aa4
003a3c: 726f         moveq      #$6f, d1
003a3e: 6e69         bgt.b      $3aa9
003a40: 7369         .dc.w      $7369
003a42: 6e67         bgt.b      $3aab
003a44: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
003a4e: 6f6b         ble.b      $3abb
003a50: 2025         move.l     -(a5), d0
003a52: 6420         bcc.b      $3a74
003a54: 7469         moveq      #$69, d2
003a56: 636b         bls.b      $3ac3
003a58: 730d         .dc.w      $730d
003a5a: 00004e55     ori.b      #$55, d0
003a5e: 000048e7     ori.b      #$e7, d0
003a62: c8302440     and.b      $40(a0, d2.w), d4
003a66: 2641         movea.l    d1, a3
003a68: 558f         subq.l     #$2, a7
003a6a: 1012         move.b     (a2), d0
003a6c: 1680         move.b     d0, (a3)
003a6e: 0c00002f     cmpi.b     #$2f, d0
003a72: 6704         beq.b      $3a78
003a74: 7000         moveq      #$0, d0
003a76: 601e         bra.b      $3a96
003a78: 528a         addq.l     #$1, a2
003a7a: 528b         addq.l     #$1, a3
003a7c: 1012         move.b     (a2), d0
003a7e: 1680         move.b     d0, (a3)
003a80: 1f400001     move.b     d0, $1(a7)
003a84: 0c00002f     cmpi.b     #$2f, d0
003a88: 6706         beq.b      $3a90
003a8a: 4a2f0001     tst.b      $1(a7)
003a8e: 66e8         bne.b      $3a78
003a90: 4213         clr.b      (a3)
003a92: 528a         addq.l     #$1, a2
003a94: 200a         move.l     a2, d0
003a96: 548f         addq.l     #$2, a7
003a98: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
003a9e: 4e5d         unlk       a5
003aa0: 4e75         rts        
003aa2: 4e550000     link.w     a5, #$0
003aa6: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
003aaa: 2440         movea.l    d0, a2
003aac: 4aae905c     tst.l      -$6fa4(a6)
003ab0: 6608         bne.b      $3aba
003ab2: 61000240     bsr.w      $3cf4
003ab6: 2d40905c     move.l     d0, -$6fa4(a6)
003aba: 7800         moveq      #$0, d4
003abc: 601a         bra.b      $3ad8
003abe: 2004         move.l     d4, d0
003ac0: e588         lsl.l      #$2, d0
003ac2: 206e905c     movea.l    -$6fa4(a6), a0
003ac6: 2230081a     move.l     $1a(a0, d0.l), d1
003aca: 200a         move.l     a2, d0
003acc: 5280         addq.l     #$1, d0
003ace: 6100052a     bsr.w      $3ffa
003ad2: 4a80         tst.l      d0
003ad4: 6710         beq.b      $3ae6
003ad6: 5284         addq.l     #$1, d4
003ad8: 206e905c     movea.l    -$6fa4(a6), a0
003adc: 30280010     move.w     $10(a0), d0
003ae0: 48c0         ext.l      d0
003ae2: b084         cmp.l      d4, d0
003ae4: 6ed8         bgt.b      $3abe
003ae6: 206e905c     movea.l    -$6fa4(a6), a0
003aea: 30280010     move.w     $10(a0), d0
003aee: 48c0         ext.l      d0
003af0: b084         cmp.l      d4, d0
003af2: 6e04         bgt.b      $3af8
003af4: 70ff         moveq      #$ff, d0
003af6: 6002         bra.b      $3afa
003af8: 2004         move.l     d4, d0
003afa: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
003b00: 4e5d         unlk       a5
003b02: 4e75         rts        
003b04: 4e550000     link.w     a5, #$0
003b08: 48e7c080     movem.l    d0-d1/a0, -(a7)
003b0c: 202f0004     move.l     $4(a7), d0
003b10: e588         lsl.l      #$2, d0
003b12: 2057         movea.l    (a7), a0
003b14: 2070082a     movea.l    $2a(a0, d0.l), a0
003b18: 7000         moveq      #$0, d0
003b1a: 10280012     move.b     $12(a0), d0
003b1e: 4ced0100fffc movem.l    -$4(a5), a0
003b24: 4e5d         unlk       a5
003b26: 4e75         rts        
003b28: 4e550000     link.w     a5, #$0
003b2c: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
003b30: 2440         movea.l    d0, a2
003b32: 4fefffda     lea.l      -$26(a7), a7
003b36: 200a         move.l     a2, d0
003b38: 61000110     bsr.w      $3c4a
003b3c: 2440         movea.l    d0, a2
003b3e: 0c12005f     cmpi.b     #$5f, (a2)
003b42: 660000f6     bne.w      $3c3a
003b46: 102a0001     move.b     $1(a2), d0
003b4a: 1f400005     move.b     d0, $5(a7)
003b4e: 0c000041     cmpi.b     #$41, d0
003b52: 6d0000a4     blt.w      $3bf8
003b56: 4aae9060     tst.l      -$6fa0(a6)
003b5a: 6626         bne.b      $3b82
003b5c: 7200         moveq      #$0, d1
003b5e: 41fa017e     lea.l      $3cde(pc), a0
003b62: 2008         move.l     a0, d0
003b64: 61001152     bsr.w      $4cb8
003b68: 2f400022     move.l     d0, $22(a7)
003b6c: 72ff         moveq      #$ff, d1
003b6e: b280         cmp.l      d0, d1
003b70: 6606         bne.b      $3b78
003b72: 70ff         moveq      #$ff, d0
003b74: 600000c6     bra.w      $3c3c
003b78: 7030         moveq      #$30, d0
003b7a: d0af0022     add.l      $22(a7), d0
003b7e: 2d409060     move.l     d0, -$6fa0(a6)
003b82: 41ef000a     lea.l      $a(a7), a0
003b86: 2f480006     move.l     a0, $6(a7)
003b8a: 600c         bra.b      $3b98
003b8c: 206f0006     movea.l    $6(a7), a0
003b90: 52af0006     addq.l     #$1, $6(a7)
003b94: 10af0005     move.b     $5(a7), (a0)
003b98: 528a         addq.l     #$1, a2
003b9a: 1012         move.b     (a2), d0
003b9c: 1f400005     move.b     d0, $5(a7)
003ba0: 0c00005f     cmpi.b     #$5f, d0
003ba4: 66e6         bne.b      $3b8c
003ba6: 206f0006     movea.l    $6(a7), a0
003baa: 4210         clr.b      (a0)
003bac: 202e9060     move.l     -$6fa0(a6), d0
003bb0: 5480         addq.l     #$2, d0
003bb2: 2f40001e     move.l     d0, $1e(a7)
003bb6: 7800         moveq      #$0, d4
003bb8: 6030         bra.b      $3bea
003bba: 41ef000a     lea.l      $a(a7), a0
003bbe: 2208         move.l     a0, d1
003bc0: 202f001e     move.l     $1e(a7), d0
003bc4: 61000434     bsr.w      $3ffa
003bc8: 4a80         tst.l      d0
003bca: 6614         bne.b      $3be0
003bcc: 206f001e     movea.l    $1e(a7), a0
003bd0: 7000         moveq      #$0, d0
003bd2: 10280013     move.b     $13(a0), d0
003bd6: 206f002a     movea.l    $2a(a7), a0
003bda: 2080         move.l     d0, (a0)
003bdc: 528a         addq.l     #$1, a2
003bde: 6056         bra.b      $3c36
003be0: 06af00000014001e addi.l     #$14, $1e(a7)
003be8: 5284         addq.l     #$1, d4
003bea: 206e9060     movea.l    -$6fa0(a6), a0
003bee: 3010         move.w     (a0), d0
003bf0: 48c0         ext.l      d0
003bf2: b084         cmp.l      d4, d0
003bf4: 6ec4         bgt.b      $3bba
003bf6: 6042         bra.b      $3c3a
003bf8: 4297         clr.l      (a7)
003bfa: 6018         bra.b      $3c14
003bfc: 2017         move.l     (a7), d0
003bfe: 720a         moveq      #$a, d1
003c00: 61000a00     bsr.w      $4602
003c04: 122f0005     move.b     $5(a7), d1
003c08: 4881         ext.w      d1
003c0a: 48c1         ext.l      d1
003c0c: d081         add.l      d1, d0
003c0e: 7230         moveq      #$30, d1
003c10: 9081         sub.l      d1, d0
003c12: 2e80         move.l     d0, (a7)
003c14: 528a         addq.l     #$1, a2
003c16: 1012         move.b     (a2), d0
003c18: 1f400005     move.b     d0, $5(a7)
003c1c: 0c000030     cmpi.b     #$30, d0
003c20: 6d08         blt.b      $3c2a
003c22: 0c2f00390005 cmpi.b     #$39, $5(a7)
003c28: 6fd2         ble.b      $3bfc
003c2a: 0c1a005f     cmpi.b     #$5f, (a2)+
003c2e: 660a         bne.b      $3c3a
003c30: 206f002a     movea.l    $2a(a7), a0
003c34: 2097         move.l     (a7), (a0)
003c36: 200a         move.l     a2, d0
003c38: 6002         bra.b      $3c3c
003c3a: 7000         moveq      #$0, d0
003c3c: 4fef0026     lea.l      $26(a7), a7
003c40: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
003c46: 4e5d         unlk       a5
003c48: 4e75         rts        
003c4a: 4e550000     link.w     a5, #$0
003c4e: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
003c52: 2440         movea.l    d0, a2
003c54: 518f         subq.l     #$8, a7
003c56: 0c12005f     cmpi.b     #$5f, (a2)
003c5a: 6764         beq.b      $3cc0
003c5c: 0c120040     cmpi.b     #$40, (a2)
003c60: 675e         beq.b      $3cc0
003c62: 0c120041     cmpi.b     #$41, (a2)
003c66: 6d58         blt.b      $3cc0
003c68: 4aae9064     tst.l      -$6f9c(a6)
003c6c: 6620         bne.b      $3c8e
003c6e: 7200         moveq      #$0, d1
003c70: 41fa0076     lea.l      $3ce8(pc), a0
003c74: 2008         move.l     a0, d0
003c76: 61001040     bsr.w      $4cb8
003c7a: 2f400004     move.l     d0, $4(a7)
003c7e: 72ff         moveq      #$ff, d1
003c80: b280         cmp.l      d0, d1
003c82: 673c         beq.b      $3cc0
003c84: 7030         moveq      #$30, d0
003c86: d0af0004     add.l      $4(a7), d0
003c8a: 2d409064     move.l     d0, -$6f9c(a6)
003c8e: 202e9064     move.l     -$6f9c(a6), d0
003c92: 5480         addq.l     #$2, d0
003c94: 2e80         move.l     d0, (a7)
003c96: 7800         moveq      #$0, d4
003c98: 601a         bra.b      $3cb4
003c9a: 220a         move.l     a2, d1
003c9c: 2017         move.l     (a7), d0
003c9e: 6100035a     bsr.w      $3ffa
003ca2: 4a80         tst.l      d0
003ca4: 6606         bne.b      $3cac
003ca6: 7014         moveq      #$14, d0
003ca8: d097         add.l      (a7), d0
003caa: 6016         bra.b      $3cc2
003cac: 069700000032 addi.l     #$32, (a7)
003cb2: 5284         addq.l     #$1, d4
003cb4: 206e9064     movea.l    -$6f9c(a6), a0
003cb8: 3010         move.w     (a0), d0
003cba: 48c0         ext.l      d0
003cbc: b084         cmp.l      d4, d0
003cbe: 6eda         bgt.b      $3c9a
003cc0: 200a         move.l     a2, d0
003cc2: 508f         addq.l     #$8, a7
003cc4: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
003cca: 4e5d         unlk       a5
003ccc: 4e75         rts        
003cce: 4e550000     link.w     a5, #$0
003cd2: 48e78000     movem.l    d0, -(a7)
003cd6: 202e9078     move.l     -$6f88(a6), d0
003cda: 4e5d         unlk       a5
003cdc: 4e75         rts        
003cde: 6361         bls.b      $3d41
003ce0: 725f         moveq      #$5f, d1
003ce2: 6e65         bgt.b      $3d49
003ce4: 7464         moveq      #$64, d2
003ce6: 62006361     bhi.w      $a049
003cea: 725f         moveq      #$5f, d1
003cec: 6465         bcc.b      $3d53
003cee: 7669         moveq      #$69, d3
003cf0: 6365         bls.b      $3d57
003cf2: 00002f08     ori.b      #$8, d0
003cf6: 207900000000 movea.l    $0.l, a0
003cfc: 41e80814     lea.l      $814(a0), a0
003d00: 2010         move.l     (a0), d0
003d02: 205f         movea.l    (a7)+, a0
003d04: 4e75         rts        
003d06: 2f08         move.l     a0, -(a7)
003d08: 207900000000 movea.l    $0.l, a0
003d0e: 41e80814     lea.l      $814(a0), a0
003d12: 2008         move.l     a0, d0
003d14: 205f         movea.l    (a7)+, a0
003d16: 4e75         rts        
003d18: 48e76080     movem.l    d1-d2/a0, -(a7)
003d1c: c141         exg.l      d0, d1
003d1e: 0c8100000002 cmpi.l     #$2, d1
003d24: 6716         beq.b      $3d3c
003d26: 0c8100000005 cmpi.l     #$5, d1
003d2c: 670e         beq.b      $3d3c
003d2e: 206f0010     movea.l    $10(a7), a0
003d32: 2408         move.l     a0, d2
003d34: 4e40         trap       #$0
003d36: 008d         .dc.w      $008d
003d38: 60000056     bra.w      $3d90
003d3c: 206f0010     movea.l    $10(a7), a0
003d40: 2408         move.l     a0, d2
003d42: 4e40         trap       #$0
003d44: 008d         .dc.w      $008d
003d46: 2202         move.l     d2, d1
003d48: 60000046     bra.w      $3d90
003d4c: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
003d50: c141         exg.l      d0, d1
003d52: 206f0018     movea.l    $18(a7), a0
003d56: 242f001c     move.l     $1c(a7), d2
003d5a: 262f0020     move.l     $20(a7), d3
003d5e: 4e40         trap       #$0
003d60: 008d         .dc.w      $008d
003d62: 60000068     bra.w      $3dcc
003d66: 48e76080     movem.l    d1-d2/a0, -(a7)
003d6a: c141         exg.l      d0, d1
003d6c: 206f0010     movea.l    $10(a7), a0
003d70: 242f0014     move.l     $14(a7), d2
003d74: 4e40         trap       #$0
003d76: 008e         .dc.w      $008e
003d78: 60000016     bra.w      $3d90
003d7c: 48e76080     movem.l    d1-d2/a0, -(a7)
003d80: c141         exg.l      d0, d1
003d82: 206f0010     movea.l    $10(a7), a0
003d86: 2408         move.l     a0, d2
003d88: 4e40         trap       #$0
003d8a: 008e         .dc.w      $008e
003d8c: 60000002     bra.w      $3d90
003d90: 6408         bcc.b      $3d9a
003d92: 2d41800c     move.l     d1, -$7ff4(a6)
003d96: 70ff         moveq      #$ff, d0
003d98: 6002         bra.b      $3d9c
003d9a: 2001         move.l     d1, d0
003d9c: 4cdf0106     movem.l    (a7)+, d1-d2/a0
003da0: 4e75         rts        
003da2: 6406         bcc.b      $3daa
003da4: 2d41800c     move.l     d1, -$7ff4(a6)
003da8: 70ff         moveq      #$ff, d0
003daa: 4cdf043e     movem.l    (a7)+, d1-d5/a2
003dae: 4e75         rts        
003db0: 6406         bcc.b      $3db8
003db2: 2d41800c     move.l     d1, -$7ff4(a6)
003db6: 70ff         moveq      #$ff, d0
003db8: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
003dbc: 4e75         rts        
003dbe: 6406         bcc.b      $3dc6
003dc0: 2d41800c     move.l     d1, -$7ff4(a6)
003dc4: 70ff         moveq      #$ff, d0
003dc6: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
003dca: 4e75         rts        
003dcc: 6408         bcc.b      $3dd6
003dce: 2d41800c     move.l     d1, -$7ff4(a6)
003dd2: 70ff         moveq      #$ff, d0
003dd4: 6002         bra.b      $3dd8
003dd6: 2001         move.l     d1, d0
003dd8: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
003ddc: 4e75         rts        
003dde: 48e74000     movem.l    d1, -(a7)
003de2: c141         exg.l      d0, d1
003de4: 4e40         trap       #$0
003de6: 005c6406     ori.w      #$6406, (a4)+
003dea: 2d41800c     move.l     d1, -$7ff4(a6)
003dee: 70ff         moveq      #$ff, d0
003df0: 4cdf0002     movem.l    (a7)+, d1
003df4: 4e75         rts        
003df6: 48e740e0     movem.l    d1/a0-a2, -(a7)
003dfa: e340         asl.w      #$1, d0
003dfc: 207900000000 movea.l    $0.l, a0
003e02: 2268004c     movea.l    $4c(a0), a1
003e06: 45e90168     lea.l      $168(a1), a2
003e0a: 30320000     move.w     (a2, d0.w), d0
003e0e: 660a         bne.b      $3e1a
003e10: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003e14: 303cffff     move.w     #$ffff, d0
003e18: 4e75         rts        
003e1a: 22680048     movea.l    $48(a0), a1
003e1e: b051         cmp.w      (a1), d0
003e20: 62f2         bhi.b      $3e14
003e22: e540         asl.w      #$2, d0
003e24: d2c0         adda.w     d0, a1
003e26: e448         lsr.w      #$2, d0
003e28: 4a91         tst.l      (a1)
003e2a: 67e8         beq.b      $3e14
003e2c: 2251         movea.l    (a1), a1
003e2e: b051         cmp.w      (a1), d0
003e30: 66e2         bne.b      $3e14
003e32: 22690004     movea.l    $4(a1), a1
003e36: 20290008     move.l     $8(a1), d0
003e3a: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003e3e: 4e75         rts        
003e40: 4e550000     link.w     a5, #$0
003e44: 48e78038     movem.l    d0/a2-a4, -(a7)
003e48: 7000         moveq      #$0, d0
003e4a: 2840         movea.l    d0, a4
003e4c: 2640         movea.l    d0, a3
003e4e: 2440         movea.l    d0, a2
003e50: 700d         moveq      #$d, d0
003e52: 7200         moveq      #$0, d1
003e54: 41fa0064     lea.l      $3eba(pc), a0
003e58: 47ee800c     lea.l      -$7ff4(a6), a3
003e5c: 7609         moveq      #$9, d3
003e5e: 2683         move.l     d3, (a3)
003e60: 262e8fb6     move.l     -$704a(a6), d3
003e64: 242e8fb2     move.l     -$704e(a6), d2
003e68: 286e907c     movea.l    -$6f84(a6), a4
003e6c: 4e40         trap       #$0
003e6e: 0021653e     ori.b      #$3e, -(a1)
003e72: 4a93         tst.l      (a3)
003e74: 6718         beq.b      $3e8e
003e76: 41fa0046     lea.l      $3ebe(pc), a0
003e7a: 7264         moveq      #$64, d1
003e7c: 7002         moveq      #$2, d0
003e7e: 4e40         trap       #$0
003e80: 008c         .dc.w      $008c
003e82: 41fa0036     lea.l      $3eba(pc), a0
003e86: 72dd         moveq      #$dd, d1
003e88: 003c0001     ori.b      #$1, ccr
003e8c: 6022         bra.b      $3eb0
003e8e: 3d7c00418c3a move.w     #$41, -$73c6(a6)
003e94: 426e8c3c     clr.w      -$73c4(a6)
003e98: 3d7c00028c56 move.w     #$2, -$73aa(a6)
003e9e: 3d7c00018c58 move.w     #$1, -$73a8(a6)
003ea4: 3d7c00028c72 move.w     #$2, -$738e(a6)
003eaa: 3d7c00028c74 move.w     #$2, -$738c(a6)
003eb0: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003eb6: 4e5d         unlk       a5
003eb8: 4e75         rts        
003eba: 6369         bls.b      $3f25
003ebc: 6f002a2a     ble.w      $68e8
003ec0: 2a2a2063     move.l     $2063(a2), d5
003ec4: 696f         bvs.b      $3f35
003ec6: 20747261     movea.l    $61(a4, d7.w), a0
003eca: 7068         moveq      #$68, d0
003ecc: 616e         bsr.b      $3f3c
003ece: 646c         bcc.b      $3f3c
003ed0: 6572         bcs.b      $3f44
003ed2: 206d6973     movea.l    $6973(a5), a0
003ed6: 6d61         blt.b      $3f39
003ed8: 7463         moveq      #$63, d2
003eda: 6820         bvc.b      $3efc
003edc: 2a2a2a2a     move.l     $2a2a(a2), d5
003ee0: 0d00         btst.l     d6, d0
003ee2: 4e4d         trap       #$d
003ee4: 00004e4d     ori.b      #$4d, d0
003ee8: 00014e4d     ori.b      #$4d, d1
003eec: 00024e4d     ori.b      #$4d, d2
003ef0: 00034e4d     ori.b      #$4d, d3
003ef4: 00044e4d     ori.b      #$4d, d4
003ef8: 00054e4d     ori.b      #$4d, d5
003efc: 00064e4d     ori.b      #$4d, d6
003f00: 00074e4d     ori.b      #$4d, d7
003f04: 0008         .dc.w      $0008
003f06: 4e4d         trap       #$d
003f08: 0009         .dc.w      $0009
003f0a: 4e4d         trap       #$d
003f0c: 000a         .dc.w      $000a
003f0e: 4e4d         trap       #$d
003f10: 000b         .dc.w      $000b
003f12: 4e4d         trap       #$d
003f14: 000c         .dc.w      $000c
003f16: 4e4d         trap       #$d
003f18: 000d         .dc.w      $000d
003f1a: 4e4d         trap       #$d
003f1c: 000e         .dc.w      $000e
003f1e: 4e4d         trap       #$d
003f20: 000f         .dc.w      $000f
003f22: 4e4d         trap       #$d
003f24: 00104e4d     ori.b      #$4d, (a0)
003f28: 00114e4d     ori.b      #$4d, (a1)
003f2c: 00124e4d     ori.b      #$4d, (a2)
003f30: 00134e4d     ori.b      #$4d, (a3)
003f34: 00144e4d     ori.b      #$4d, (a4)
003f38: 00154e4d     ori.b      #$4d, (a5)
003f3c: 00164e4d     ori.b      #$4d, (a6)
003f40: 00174e4d     ori.b      #$4d, (a7)
003f44: 00184e4d     ori.b      #$4d, (a0)+
003f48: 00194e4d     ori.b      #$4d, (a1)+
003f4c: 001a4e4d     ori.b      #$4d, (a2)+
003f50: 001b4e4d     ori.b      #$4d, (a3)+
003f54: 001c4e4d     ori.b      #$4d, (a4)+
003f58: 001d4e4d     ori.b      #$4d, (a5)+
003f5c: 001e4e4d     ori.b      #$4d, (a6)+
003f60: 001f4e4d     ori.b      #$4d, (a7)+
003f64: 00204e4d     ori.b      #$4d, -(a0)
003f68: 00214e4d     ori.b      #$4d, -(a1)
003f6c: 00224e4d     ori.b      #$4d, -(a2)
003f70: 00234e4d     ori.b      #$4d, -(a3)
003f74: 00244e4d     ori.b      #$4d, -(a4)
003f78: 00254e4d     ori.b      #$4d, -(a5)
003f7c: 00264e4d     ori.b      #$4d, -(a6)
003f80: 00274e4d     ori.b      #$4d, -(a7)
003f84: 00284e4d0029 ori.b      #$4d, $29(a0)
003f8a: 4e4d         trap       #$d
003f8c: 002a4e4d002b ori.b      #$4d, $2b(a2)
003f92: 4e4d         trap       #$d
003f94: 002c4e4d002d ori.b      #$4d, $2d(a4)
003f9a: 4e4d         trap       #$d
003f9c: 002e4e4d002f ori.b      #$4d, $2f(a6)
003fa2: 4e4d         trap       #$d
003fa4: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
003faa: 4e4d         trap       #$d
003fac: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
003fb2: 4e4d         trap       #$d
003fb4: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
003fba: 4e4d         trap       #$d
003fbc: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
003fc2: 4e4d         trap       #$d
003fc4: 00384e4d0039 ori.b      #$4d, $39.w
003fca: 4e4d         trap       #$d
003fcc: 003a         .dc.w      $003a
003fce: 4e4d         trap       #$d
003fd0: 003b         .dc.w      $003b
003fd2: 4e4d         trap       #$d
003fd4: 003c         .dc.w      $003c
003fd6: 4e4d         trap       #$d
003fd8: 003d         .dc.w      $003d
003fda: 4e4d         trap       #$d
003fdc: 003e         .dc.w      $003e
003fde: 4e4d         trap       #$d
003fe0: 003f         .dc.w      $003f
003fe2: 4e4d         trap       #$d
003fe4: 00414e4d     ori.w      #$4e4d, d1
003fe8: 00424e4d     ori.w      #$4e4d, d2
003fec: 00434e4d     ori.w      #$4e4d, d3
003ff0: 00444e4d     ori.w      #$4e4d, d4
003ff4: 00454e4d     ori.w      #$4e4d, d5
003ff8: 00402f08     ori.w      #$2f08, d0
003ffc: 2040         movea.l    d0, a0
003ffe: b300         eor.b      d1, d0
004000: 08000000     btst.b     #$0, d0
004004: 6652         bne.b      $4058
004006: 08010000     btst.b     #$0, d1
00400a: c389         exg.l      d1, a1
00400c: 6718         beq.b      $4026
00400e: b109         cmpm.b     (a1)+, (a0)+
004010: 6530         bcs.b      $4042
004012: 6220         bhi.b      $4034
004014: 4a28ffff     tst.b      -$1(a0)
004018: 660c         bne.b      $4026
00401a: 6034         bra.b      $4050
00401c: 4a00         tst.b      d0
00401e: 6730         beq.b      $4050
004020: 0c4000ff     cmpi.w     #$ff, d0
004024: 632a         bls.b      $4050
004026: 3018         move.w     (a0)+, d0
004028: b059         cmp.w      (a1)+, d0
00402a: 67f0         beq.b      $401c
00402c: 650e         bcs.b      $403c
00402e: 0c4000ff     cmpi.w     #$ff, d0
004032: 6316         bls.b      $404a
004034: 7001         moveq      #$1, d0
004036: 205f         movea.l    (a7)+, a0
004038: c389         exg.l      d1, a1
00403a: 4e75         rts        
00403c: 0c4000ff     cmpi.w     #$ff, d0
004040: 6308         bls.b      $404a
004042: 70ff         moveq      #$ff, d0
004044: 205f         movea.l    (a7)+, a0
004046: c389         exg.l      d1, a1
004048: 4e75         rts        
00404a: 4a29fffe     tst.b      -$2(a1)
00404e: 66f2         bne.b      $4042
004050: 7000         moveq      #$0, d0
004052: 205f         movea.l    (a7)+, a0
004054: c389         exg.l      d1, a1
004056: 4e75         rts        
004058: c389         exg.l      d1, a1
00405a: 7000         moveq      #$0, d0
00405c: 1018         move.b     (a0)+, d0
00405e: b019         cmp.b      (a1)+, d0
004060: 56c8fffa     dbne       d0, $405c
004064: 65dc         bcs.b      $4042
004066: 5240         addq.w     #$1, d0
004068: 205f         movea.l    (a7)+, a0
00406a: c389         exg.l      d1, a1
00406c: 4e75         rts        
00406e: 2f08         move.l     a0, -(a7)
004070: 2040         movea.l    d0, a0
004072: 4a18         tst.b      (a0)+
004074: 670c         beq.b      $4082
004076: 4a18         tst.b      (a0)+
004078: 6708         beq.b      $4082
00407a: 4a18         tst.b      (a0)+
00407c: 6704         beq.b      $4082
00407e: 4a18         tst.b      (a0)+
004080: 66f0         bne.b      $4072
004082: 91c0         suba.l     d0, a0
004084: 2008         move.l     a0, d0
004086: 5380         subq.l     #$1, d0
004088: 205f         movea.l    (a7)+, a0
00408a: 4e75         rts        
00408c: 2f08         move.l     a0, -(a7)
00408e: 2040         movea.l    d0, a0
004090: c389         exg.l      d1, a1
004092: 10d9         move.b     (a1)+, (a0)+
004094: 670c         beq.b      $40a2
004096: 10d9         move.b     (a1)+, (a0)+
004098: 6708         beq.b      $40a2
00409a: 10d9         move.b     (a1)+, (a0)+
00409c: 6704         beq.b      $40a2
00409e: 10d9         move.b     (a1)+, (a0)+
0040a0: 66f0         bne.b      $4092
0040a2: 205f         movea.l    (a7)+, a0
0040a4: c389         exg.l      d1, a1
0040a6: 4e75         rts        
0040a8: 2f08         move.l     a0, -(a7)
0040aa: 2040         movea.l    d0, a0
0040ac: c389         exg.l      d1, a1
0040ae: 4a18         tst.b      (a0)+
0040b0: 670c         beq.b      $40be
0040b2: 4a18         tst.b      (a0)+
0040b4: 6708         beq.b      $40be
0040b6: 4a18         tst.b      (a0)+
0040b8: 6704         beq.b      $40be
0040ba: 4a18         tst.b      (a0)+
0040bc: 66f0         bne.b      $40ae
0040be: 1159ffff     move.b     (a1)+, -$1(a0)
0040c2: 66ce         bne.b      $4092
0040c4: 60dc         bra.b      $40a2
0040c6: 2f08         move.l     a0, -(a7)
0040c8: 2040         movea.l    d0, a0
0040ca: c389         exg.l      d1, a1
0040cc: 10d9         move.b     (a1)+, (a0)+
0040ce: 6afc         bpl.b      $40cc
0040d0: 4210         clr.b      (a0)
0040d2: 0220007f     andi.b     #$7f, -(a0)
0040d6: 205f         movea.l    (a7)+, a0
0040d8: c389         exg.l      d1, a1
0040da: 4e75         rts        
0040dc: 4e550000     link.w     a5, #$0
0040e0: 48e7c020     movem.l    d0-d1/a2, -(a7)
0040e4: 2440         movea.l    d0, a2
0040e6: 4878000a     pea.l      $a.w
0040ea: 7200         moveq      #$0, d1
0040ec: 200a         move.l     a2, d0
0040ee: 61ff000001f6 bsr.l      $42e6
0040f4: 588f         addq.l     #$4, a7
0040f6: 60ff00000006 bra.l      $40fe
0040fc: 4e71         nop        
0040fe: 4ced0402fff8 movem.l    -$8(a5), d1/a2
004104: 4e5d         unlk       a5
004106: 4e75         rts        
004108: 4e550000     link.w     a5, #$0
00410c: 48e7c020     movem.l    d0-d1/a2, -(a7)
004110: 2440         movea.l    d0, a2
004112: 4878000a     pea.l      $a.w
004116: 7200         moveq      #$0, d1
004118: 200a         move.l     a2, d0
00411a: 61ff000001ca bsr.l      $42e6
004120: 588f         addq.l     #$4, a7
004122: 60ff00000006 bra.l      $412a
004128: 4e71         nop        
00412a: 4ced0402fff8 movem.l    -$8(a5), d1/a2
004130: 4e5d         unlk       a5
004132: 4e75         rts        
004134: 4e550000     link.w     a5, #$0
004138: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
00413c: 2440         movea.l    d0, a2
00413e: 518f         subq.l     #$8, a7
004140: 28360170ffff800c move.l     $ffff800c(a6, invalid.w), d4
004148: 7200         moveq      #$0, d1
00414a: 200a         move.l     a2, d0
00414c: 61ff00000028 bsr.l      $4176
004152: 48d70003     movem.l    d0-d1, (a7)
004156: 2d840170ffff800c move.l     d4, $ffff800c(a6, invalid.w)
00415e: 4cd70003     movem.l    (a7), d0-d1
004162: 508f         addq.l     #$8, a7
004164: 60ff00000006 bra.l      $416c
00416a: 4e71         nop        
00416c: 4ced0410fff8 movem.l    -$8(a5), d4/a2
004172: 4e5d         unlk       a5
004174: 4e75         rts        
004176: 4e550000     link.w     a5, #$0
00417a: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
00417e: 2441         movea.l    d1, a2
004180: 4feffff0     lea.l      -$10(a7), a7
004184: 7800         moveq      #$0, d4
004186: 42af000c     clr.l      $c(a7)
00418a: 42af0008     clr.l      $8(a7)
00418e: 7a01         moveq      #$1, d5
004190: 206f0010     movea.l    $10(a7), a0
004194: 52af0010     addq.l     #$1, $10(a7)
004198: 1010         move.b     (a0), d0
00419a: 49c0         extb.l     d0
00419c: 41f60170ffff9081 lea.l      $ffff9081(a6, invalid.w), a0
0041a4: 10300800     move.b     (a0, d0.l), d0
0041a8: 4880         ext.w      d0
0041aa: 08000004     btst.b     #$4, d0
0041ae: 66ffffffffe0 bne.l      $4190
0041b4: 60ff00000038 bra.l      $41ee
0041ba: 5284         addq.l     #$1, d4
0041bc: 52af0010     addq.l     #$1, $10(a7)
0041c0: 60ff00000066 bra.l      $4228
0041c6: 206f0010     movea.l    $10(a7), a0
0041ca: 1010         move.b     (a0), d0
0041cc: 49c0         extb.l     d0
0041ce: 41f60170ffff9081 lea.l      $ffff9081(a6, invalid.w), a0
0041d6: 10300800     move.b     (a0, d0.l), d0
0041da: 4880         ext.w      d0
0041dc: 08000003     btst.b     #$3, d0
0041e0: 66ff00000006 bne.l      $41e8
0041e6: 5385         subq.l     #$1, d5
0041e8: 60ff0000003e bra.l      $4228
0041ee: 53af0010     subq.l     #$1, $10(a7)
0041f2: 206f0010     movea.l    $10(a7), a0
0041f6: 1010         move.b     (a0), d0
0041f8: 4880         ext.w      d0
0041fa: 0c4000ff     cmpi.w     #$ff, d0
0041fe: 62ffffffffc6 bhi.l      $41c6
004204: 0c00002b     cmpi.b     #$2b, d0
004208: 67ffffffffb2 beq.l      $41bc
00420e: 0c00002d     cmpi.b     #$2d, d0
004212: 67ffffffffa6 beq.l      $41ba
004218: 0c00002e     cmpi.b     #$2e, d0
00421c: 67ffffffffa2 beq.l      $41c0
004222: 60ffffffffa2 bra.l      $41c6
004228: 4a85         tst.l      d5
00422a: 67ff00000054 beq.l      $4280
004230: 60ff00000026 bra.l      $4258
004236: 2f6f0004000c move.l     $4(a7), $c(a7)
00423c: 2f570008     move.l     (a7), $8(a7)
004240: 60ff0000003e bra.l      $4280
004246: 2017         move.l     (a7), d0
004248: 4e4f         trap       #$f
00424a: 002248ef     ori.b      #$ef, -(a2)
00424e: 00030008     ori.b      #$8, d3
004252: 60ff0000002c bra.l      $4280
004258: 41d7         lea.l      (a7), a0
00425a: 2208         move.l     a0, d1
00425c: 41ef0010     lea.l      $10(a7), a0
004260: 2008         move.l     a0, d0
004262: 61ff0000005a bsr.l      $42be
004268: 0c8000000001 cmpi.l     #$1, d0
00426e: 67ffffffffd6 beq.l      $4246
004274: 0c8000000002 cmpi.l     #$2, d0
00427a: 67ffffffffba beq.l      $4236
004280: 200a         move.l     a2, d0
004282: 67ff00000008 beq.l      $428c
004288: 24af0010     move.l     $10(a7), (a2)
00428c: 4a84         tst.l      d4
00428e: 67ff00000014 beq.l      $42a4
004294: 4cef00030008 movem.l    $8(a7), d0-d1
00429a: 4e4f         trap       #$f
00429c: 001548ef     ori.b      #$ef, (a5)
0042a0: 00030008     ori.b      #$8, d3
0042a4: 4cef00030008 movem.l    $8(a7), d0-d1
0042aa: 4fef0010     lea.l      $10(a7), a7
0042ae: 60ff00000006 bra.l      $42b6
0042b4: 4e71         nop        
0042b6: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
0042bc: 6024         bra.b      $42e2
0042be: 4e550000     link.w     a5, #$0
0042c2: 48e700e0     movem.l    a0-a2, -(a7)
0042c6: 2440         movea.l    d0, a2
0042c8: 2052         movea.l    (a2), a0
0042ca: 2241         movea.l    d1, a1
0042cc: 4e4f         trap       #$f
0042ce: 001648d1     ori.b      #$d1, (a6)
0042d2: 00036804     ori.b      #$4, d3
0042d6: 7002         moveq      #$2, d0
0042d8: 6002         bra.b      $42dc
0042da: 7001         moveq      #$1, d0
0042dc: 2488         move.l     a0, (a2)
0042de: 4cdf0700     movem.l    (a7)+, a0-a2
0042e2: 4e5d         unlk       a5
0042e4: 4e75         rts        
0042e6: 4e550000     link.w     a5, #$0
0042ea: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
0042ee: 2440         movea.l    d0, a2
0042f0: 2641         movea.l    d1, a3
0042f2: 282f0028     move.l     $28(a7), d4
0042f6: 7a00         moveq      #$0, d5
0042f8: 7c00         moveq      #$0, d6
0042fa: 101a         move.b     (a2)+, d0
0042fc: 49c0         extb.l     d0
0042fe: 41f60170ffff9081 lea.l      $ffff9081(a6, invalid.w), a0
004306: 10300800     move.b     (a0, d0.l), d0
00430a: 4880         ext.w      d0
00430c: 08000004     btst.b     #$4, d0
004310: 66ffffffffe8 bne.l      $42fa
004316: 60ff0000000e bra.l      $4326
00431c: 5285         addq.l     #$1, d5
00431e: 528a         addq.l     #$1, a2
004320: 60ff0000001c bra.l      $433e
004326: 1022         move.b     -(a2), d0
004328: 4880         ext.w      d0
00432a: 0c40002b     cmpi.w     #$2b, d0
00432e: 67ffffffffee beq.l      $431e
004334: 0c40002d     cmpi.w     #$2d, d0
004338: 67ffffffffe2 beq.l      $431c
00433e: 42b60170ffff800c clr.l      $ffff800c(a6, invalid.w)
004346: 2f04         move.l     d4, -(a7)
004348: 220b         move.l     a3, d1
00434a: 200a         move.l     a2, d0
00434c: 61ff00000086 bsr.l      $43d4
004352: 588f         addq.l     #$4, a7
004354: 2c00         move.l     d0, d6
004356: 0cb6000001000170ffff800c cmpi.l     #$100, $ffff800c(a6, invalid.w)
004362: 67ff00000024 beq.l      $4388
004368: 4a85         tst.l      d5
00436a: 67ff00000010 beq.l      $437c
004370: 0c8680000000 cmpi.l     #$80000000, d6
004376: 62ff00000010 bhi.l      $4388
00437c: 0c867fffffff cmpi.l     #$7fffffff, d6
004382: 63ff0000002e bls.l      $43b2
004388: 4a85         tst.l      d5
00438a: 67ff0000000c beq.l      $4398
004390: 203c80000000 move.l     #$80000000, d0
004396: 6006         bra.b      $439e
004398: 203c7fffffff move.l     #$7fffffff, d0
00439e: 2c00         move.l     d0, d6
0043a0: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
0043ac: 60ff00000012 bra.l      $43c0
0043b2: 4a85         tst.l      d5
0043b4: 67ff0000000a beq.l      $43c0
0043ba: 2006         move.l     d6, d0
0043bc: 4480         neg.l      d0
0043be: 2c00         move.l     d0, d6
0043c0: 2006         move.l     d6, d0
0043c2: 60ff00000006 bra.l      $43ca
0043c8: 4e71         nop        
0043ca: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
0043d0: 4e5d         unlk       a5
0043d2: 4e75         rts        
0043d4: 4e550000     link.w     a5, #$0
0043d8: 48e7cfb0     movem.l    d0-d1/d4-d7/a0/a2-a3, -(a7)
0043dc: 2440         movea.l    d0, a2
0043de: 2641         movea.l    d1, a3
0043e0: 282f002c     move.l     $2c(a7), d4
0043e4: 7a00         moveq      #$0, d5
0043e6: 7c00         moveq      #$0, d6
0043e8: 101a         move.b     (a2)+, d0
0043ea: 49c0         extb.l     d0
0043ec: 41f60170ffff9081 lea.l      $ffff9081(a6, invalid.w), a0
0043f4: 10300800     move.b     (a0, d0.l), d0
0043f8: 4880         ext.w      d0
0043fa: 08000004     btst.b     #$4, d0
0043fe: 66ffffffffe8 bne.l      $43e8
004404: 538a         subq.l     #$1, a2
004406: 200b         move.l     a3, d0
004408: 67ff00000006 beq.l      $4410
00440e: 268a         move.l     a2, (a3)
004410: 7002         moveq      #$2, d0
004412: b084         cmp.l      d4, d0
004414: 63ff0000000c bls.l      $4422
00441a: 4a84         tst.l      d4
00441c: 66ff0000000e bne.l      $442c
004422: 7023         moveq      #$23, d0
004424: b084         cmp.l      d4, d0
004426: 64ff0000000c bcc.l      $4434
00442c: 7000         moveq      #$0, d0
00442e: 60ff000001c8 bra.l      $45f8
004434: 60ff0000005c bra.l      $4492
00443a: 5285         addq.l     #$1, d5
00443c: 528a         addq.l     #$1, a2
00443e: 0c2a00780001 cmpi.b     #$78, $1(a2)
004444: 67ff00000010 beq.l      $4456
00444a: 0c2a00580001 cmpi.b     #$58, $1(a2)
004450: 66ff0000002e bne.l      $4480
004456: 4a84         tst.l      d4
004458: 66ff0000000c bne.l      $4466
00445e: 7810         moveq      #$10, d4
004460: 60ff00000016 bra.l      $4478
004466: 7010         moveq      #$10, d0
004468: b084         cmp.l      d4, d0
00446a: 67ff0000000c beq.l      $4478
004470: 7000         moveq      #$0, d0
004472: 60ff00000184 bra.l      $45f8
004478: 548a         addq.l     #$2, a2
00447a: 60ff00000010 bra.l      $448c
004480: 4a84         tst.l      d4
004482: 66ff00000008 bne.l      $448c
004488: 7808         moveq      #$8, d4
00448a: 528a         addq.l     #$1, a2
00448c: 60ff00000030 bra.l      $44be
004492: 1012         move.b     (a2), d0
004494: 4880         ext.w      d0
004496: 0c4000ff     cmpi.w     #$ff, d0
00449a: 62ff00000022 bhi.l      $44be
0044a0: 0c00002b     cmpi.b     #$2b, d0
0044a4: 67ffffffff96 beq.l      $443c
0044aa: 0c00002d     cmpi.b     #$2d, d0
0044ae: 67ffffffff8a beq.l      $443a
0044b4: 0c000030     cmpi.b     #$30, d0
0044b8: 67ffffffff84 beq.l      $443e
0044be: 4a84         tst.l      d4
0044c0: 66ff00000006 bne.l      $44c8
0044c6: 780a         moveq      #$a, d4
0044c8: 700a         moveq      #$a, d0
0044ca: b084         cmp.l      d4, d0
0044cc: 65ff00000070 bcs.l      $453e
0044d2: 60ff00000034 bra.l      $4508
0044d8: 70ff         moveq      #$ff, d0
0044da: 9087         sub.l      d7, d0
0044dc: 4c440000     divu.l     d4, d0
0044e0: b086         cmp.l      d6, d0
0044e2: 65ff00000014 bcs.l      $44f8
0044e8: 2006         move.l     d6, d0
0044ea: 4c040000     mulu.l     d4, d0
0044ee: d087         add.l      d7, d0
0044f0: 2c00         move.l     d0, d6
0044f2: 60ff00000012 bra.l      $4506
0044f8: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
004504: 7cff         moveq      #$ff, d6
004506: 528a         addq.l     #$1, a2
004508: 1012         move.b     (a2), d0
00450a: 49c0         extb.l     d0
00450c: 41f60170ffff9081 lea.l      $ffff9081(a6, invalid.w), a0
004514: 10300800     move.b     (a0, d0.l), d0
004518: 4880         ext.w      d0
00451a: 08000003     btst.b     #$3, d0
00451e: 67ff00000018 beq.l      $4538
004524: 1012         move.b     (a2), d0
004526: 4880         ext.w      d0
004528: 04400030     subi.w     #$30, d0
00452c: 48c0         ext.l      d0
00452e: 2e00         move.l     d0, d7
004530: b084         cmp.l      d4, d0
004532: 65ffffffffa4 bcs.l      $44d8
004538: 60ff0000009c bra.l      $45d6
00453e: 60ff00000034 bra.l      $4574
004544: 70ff         moveq      #$ff, d0
004546: 9087         sub.l      d7, d0
004548: 4c440000     divu.l     d4, d0
00454c: b086         cmp.l      d6, d0
00454e: 65ff00000014 bcs.l      $4564
004554: 2006         move.l     d6, d0
004556: 4c040000     mulu.l     d4, d0
00455a: d087         add.l      d7, d0
00455c: 2c00         move.l     d0, d6
00455e: 60ff00000012 bra.l      $4572
004564: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
004570: 7cff         moveq      #$ff, d6
004572: 528a         addq.l     #$1, a2
004574: 1012         move.b     (a2), d0
004576: 49c0         extb.l     d0
004578: 41f60170ffff9081 lea.l      $ffff9081(a6, invalid.w), a0
004580: 10300800     move.b     (a0, d0.l), d0
004584: 4880         ext.w      d0
004586: 08000003     btst.b     #$3, d0
00458a: 67ff00000016 beq.l      $45a2
004590: 1012         move.b     (a2), d0
004592: 4880         ext.w      d0
004594: 04400030     subi.w     #$30, d0
004598: 48c0         ext.l      d0
00459a: 2e00         move.l     d0, d7
00459c: 60ffffffffa6 bra.l      $4544
0045a2: 1012         move.b     (a2), d0
0045a4: 49c0         extb.l     d0
0045a6: 41f60170ffff9081 lea.l      $ffff9081(a6, invalid.w), a0
0045ae: 10300800     move.b     (a0, d0.l), d0
0045b2: 4880         ext.w      d0
0045b4: 02400006     andi.w     #$6, d0
0045b8: 67ff0000001c beq.l      $45d6
0045be: 1012         move.b     (a2), d0
0045c0: 4880         ext.w      d0
0045c2: 024000df     andi.w     #$df, d0
0045c6: 48c0         ext.l      d0
0045c8: 7237         moveq      #$37, d1
0045ca: 9081         sub.l      d1, d0
0045cc: 2e00         move.l     d0, d7
0045ce: b084         cmp.l      d4, d0
0045d0: 65ffffffff72 bcs.l      $4544
0045d6: 200b         move.l     a3, d0
0045d8: 67ff00000006 beq.l      $45e0
0045de: 268a         move.l     a2, (a3)
0045e0: 4a85         tst.l      d5
0045e2: 67ff0000000a beq.l      $45ee
0045e8: 2006         move.l     d6, d0
0045ea: 4480         neg.l      d0
0045ec: 2c00         move.l     d0, d6
0045ee: 2006         move.l     d6, d0
0045f0: 60ff00000006 bra.l      $45f8
0045f6: 4e71         nop        
0045f8: 4ced0df0ffe4 movem.l    -$1c(a5), d4-d7/a0/a2-a3
0045fe: 4e5d         unlk       a5
004600: 4e75         rts        
004602: 48e73800     movem.l    d2-d4, -(a7)
004606: 2400         move.l     d0, d2
004608: 2600         move.l     d0, d3
00460a: 4843         swap       d3
00460c: 2801         move.l     d1, d4
00460e: 4844         swap       d4
004610: c0c1         mulu.w     d1, d0
004612: c2c3         mulu.w     d3, d1
004614: c4c4         mulu.w     d4, d2
004616: c6c4         mulu.w     d4, d3
004618: 4840         swap       d0
00461a: d041         add.w      d1, d0
00461c: 7800         moveq      #$0, d4
00461e: d784         addx.l     d4, d3
004620: d042         add.w      d2, d0
004622: d784         addx.l     d4, d3
004624: 4840         swap       d0
004626: 4241         clr.w      d1
004628: 4841         swap       d1
00462a: 4242         clr.w      d2
00462c: 4842         swap       d2
00462e: d282         add.l      d2, d1
004630: d283         add.l      d3, d1
004632: 4a80         tst.l      d0
004634: 4cdf001c     movem.l    (a7)+, d2-d4
004638: 4e75         rts        
00463a: 2f02         move.l     d2, -(a7)
00463c: 7400         moveq      #$0, d2
00463e: 4a80         tst.l      d0
004640: 6a04         bpl.b      $4646
004642: 4480         neg.l      d0
004644: 7403         moveq      #$3, d2
004646: 4a81         tst.l      d1
004648: 6a06         bpl.b      $4650
00464a: 4481         neg.l      d1
00464c: 0a020001     eori.b     #$1, d2
004650: 6122         bsr.b      $4674
004652: e20a         lsr.b      #$1, d2
004654: 6402         bcc.b      $4658
004656: 4480         neg.l      d0
004658: e20a         lsr.b      #$1, d2
00465a: 6402         bcc.b      $465e
00465c: 4481         neg.l      d1
00465e: 241f         move.l     (a7)+, d2
004660: 4a80         tst.l      d0
004662: 4e75         rts        
004664: 61d4         bsr.b      $463a
004666: c141         exg.l      d0, d1
004668: 4a80         tst.l      d0
00466a: 4e75         rts        
00466c: 6106         bsr.b      $4674
00466e: c141         exg.l      d0, d1
004670: 4a80         tst.l      d0
004672: 4e75         rts        
004674: 48e73800     movem.l    d2-d4, -(a7)
004678: 2401         move.l     d1, d2
00467a: 6606         bne.b      $4682
00467c: 81fc0000     divs.w     #$0, d0
004680: 606e         bra.b      $46f0
004682: 5381         subq.l     #$1, d1
004684: 676a         beq.b      $46f0
004686: 2801         move.l     d1, d4
004688: 2200         move.l     d0, d1
00468a: b481         cmp.l      d1, d2
00468c: 650c         bcs.b      $469a
00468e: 6704         beq.b      $4694
004690: 7000         moveq      #$0, d0
004692: 605c         bra.b      $46f0
004694: 7001         moveq      #$1, d0
004696: 9282         sub.l      d2, d1
004698: 6056         bra.b      $46f0
00469a: 2602         move.l     d2, d3
00469c: 6bf6         bmi.b      $4694
00469e: c684         and.l      d4, d3
0046a0: 6612         bne.b      $46b4
0046a2: e28a         lsr.l      #$1, d2
0046a4: 76ff         moveq      #$ff, d3
0046a6: e28a         lsr.l      #$1, d2
0046a8: 55cbfffc     dbcs       d3, $46a6
0046ac: 4483         neg.l      d3
0046ae: e6a8         lsr.l      d3, d0
0046b0: c284         and.l      d4, d1
0046b2: 603c         bra.b      $46f0
0046b4: 7000         moveq      #$0, d0
0046b6: 76ff         moveq      #$ff, d3
0046b8: e382         asl.l      #$1, d2
0046ba: 6a06         bpl.b      $46c2
0046bc: b481         cmp.l      d1, d2
0046be: 620a         bhi.b      $46ca
0046c0: 600c         bra.b      $46ce
0046c2: b481         cmp.l      d1, d2
0046c4: 54cbfff2     dbcc       d3, $46b8
0046c8: 6704         beq.b      $46ce
0046ca: 5283         addq.l     #$1, d3
0046cc: e28a         lsr.l      #$1, d2
0046ce: 4483         neg.l      d3
0046d0: 6004         bra.b      $46d6
0046d2: e380         asl.l      #$1, d0
0046d4: e28a         lsr.l      #$1, d2
0046d6: 9282         sub.l      d2, d1
0046d8: 6510         bcs.b      $46ea
0046da: 5280         addq.l     #$1, d0
0046dc: 51cbfff4     dbra       d3, $46d2
0046e0: 600e         bra.b      $46f0
0046e2: e380         asl.l      #$1, d0
0046e4: e28a         lsr.l      #$1, d2
0046e6: d282         add.l      d2, d1
0046e8: 65f0         bcs.b      $46da
0046ea: 51cbfff6     dbra       d3, $46e2
0046ee: d282         add.l      d2, d1
0046f0: 4cdf001c     movem.l    (a7)+, d2-d4
0046f4: 4a80         tst.l      d0
0046f6: 4e75         rts        
0046f8: 3d06         move.w     d6, -(a6)
0046fa: 849b         or.l       (a3)+, d2
0046fc: 86a1         or.l       -(a1), d3
0046fe: 2b9c3fe00000 move.l     (a4)+, (invalid.w)
004704: 00000000     ori.b      #$0, d0
004708: 48e73000     movem.l    d2-d3, -(a7)
00470c: 4cfa000cffe8 movem.l    $46f6(pc), d2-d3
004712: 4e4f         trap       #$f
004714: 002e4cdf000c ori.b      #$df, $c(a6)
00471a: 4e75         rts        
00471c: 48e73000     movem.l    d2-d3, -(a7)
004720: 4cfa000cffd4 movem.l    $46f6(pc), d2-d3
004726: 4e4f         trap       #$f
004728: 002f4cdf000c ori.b      #$df, $c(a7)
00472e: 4e75         rts        
004730: 48e73000     movem.l    d2-d3, -(a7)
004734: 4cfa000cffc0 movem.l    $46f6(pc), d2-d3
00473a: 4e4f         trap       #$f
00473c: 00304cdf000c ori.b      #$df, $c(a0, d0.w)
004742: 4e75         rts        
004744: 48e73000     movem.l    d2-d3, -(a7)
004748: 4cfa000cffac movem.l    $46f6(pc), d2-d3
00474e: 4e4f         trap       #$f
004750: 00314cdf000c ori.b      #$df, $c(a1, d0.w)
004756: 4e75         rts        
004758: 48e73000     movem.l    d2-d3, -(a7)
00475c: 4cfa000cff98 movem.l    $46f6(pc), d2-d3
004762: 4e4f         trap       #$f
004764: 00324cdf000c ori.b      #$df, $c(a2, d0.w)
00476a: 4e75         rts        
00476c: 48e73000     movem.l    d2-d3, -(a7)
004770: 4cfa000cff84 movem.l    $46f6(pc), d2-d3
004776: 4e4f         trap       #$f
004778: 00334cdf000c ori.b      #$df, $c(a3, d0.w)
00477e: 4e75         rts        
004780: 48e73000     movem.l    d2-d3, -(a7)
004784: 4cfa000cff70 movem.l    $46f6(pc), d2-d3
00478a: 4e4f         trap       #$f
00478c: 00374cdf000c ori.b      #$df, $c(a7, d0.w)
004792: 4e75         rts        
004794: 48e73000     movem.l    d2-d3, -(a7)
004798: 4cfa000cff5c movem.l    $46f6(pc), d2-d3
00479e: 4e4f         trap       #$f
0047a0: 00344cdf000c ori.b      #$df, $c(a4, d0.w)
0047a6: 4e75         rts        
0047a8: 48e73000     movem.l    d2-d3, -(a7)
0047ac: 4cfa000cff48 movem.l    $46f6(pc), d2-d3
0047b2: 4e4f         trap       #$f
0047b4: 00354cdf000c ori.b      #$df, $c(a5, d0.w)
0047ba: 4e75         rts        
0047bc: 48e73c00     movem.l    d2-d5, -(a7)
0047c0: 4cef000c0014 movem.l    $14(a7), d2-d3
0047c6: 4cfa0030ff2e movem.l    $46f6(pc), d4-d5
0047cc: 4e4f         trap       #$f
0047ce: 00384cdf003c ori.b      #$df, $3c.w
0047d4: 4e75         rts        
0047d6: 48e73000     movem.l    d2-d3, -(a7)
0047da: 4cfa000cff1a movem.l    $46f6(pc), d2-d3
0047e0: 4e4f         trap       #$f
0047e2: 00364cdf000c ori.b      #$df, $c(a6, d0.w)
0047e8: 4e75         rts        
0047ea: 48e73000     movem.l    d2-d3, -(a7)
0047ee: 4a80         tst.l      d0
0047f0: 6c0e         bge.b      $4800
0047f2: 4e4f         trap       #$f
0047f4: 002a4a82670a ori.b      #$82, $670a(a2)
0047fa: 4e4f         trap       #$f
0047fc: 00116004     ori.b      #$4, (a1)
004800: 4e4f         trap       #$f
004802: 002a4cdf000c ori.b      #$df, $c(a2)
004808: 4e75         rts        
00480a: 48e73000     movem.l    d2-d3, -(a7)
00480e: 4a80         tst.l      d0
004810: 670e         beq.b      $4820
004812: 0840001f     bchg.b     #$1f, d0
004816: 61d2         bsr.b      $47ea
004818: 4a80         tst.l      d0
00481a: 6704         beq.b      $4820
00481c: 0840001f     bchg.b     #$1f, d0
004820: 4cdf000c     movem.l    (a7)+, d2-d3
004824: 4e75         rts        
004826: 0880001f     bclr.b     #$1f, d0
00482a: 4e75         rts        
00482c: 48e73080     movem.l    d2-d3/a0, -(a7)
004830: 4e4f         trap       #$f
004832: 002a206f0010 ori.b      #$6f, $10(a2)
004838: 48d00003     movem.l    d0-d1, (a0)
00483c: 2002         move.l     d2, d0
00483e: 2203         move.l     d3, d1
004840: 4cdf010c     movem.l    (a7)+, d2-d3/a0
004844: 4e75         rts        
004846: 48e73c00     movem.l    d2-d5, -(a7)
00484a: 4cef000c0014 movem.l    $14(a7), d2-d3
004850: 0880001f     bclr.b     #$1f, d0
004854: 0882001f     bclr.b     #$1f, d2
004858: 4e4f         trap       #$f
00485a: 00146b04     ori.b      #$4, (a4)
00485e: c142         exg.l      d0, d2
004860: c343         exg.l      d1, d3
004862: 48ef000c0014 movem.l    d2-d3, $14(a7)
004868: 4a82         tst.l      d2
00486a: 6606         bne.b      $4872
00486c: 2002         move.l     d2, d0
00486e: 2203         move.l     d3, d1
004870: 6024         bra.b      $4896
004872: 4e4f         trap       #$f
004874: 00132400     ori.b      #$0, (a3)
004878: 2601         move.l     d1, d3
00487a: 4e4f         trap       #$f
00487c: 00124e4f     ori.b      #$4f, (a2)
004880: 000f         .dc.w      $000f
004882: 4cfa000cfe72 movem.l    $46f6(pc), d2-d3
004888: 4e4f         trap       #$f
00488a: 00364cef000c ori.b      #$ef, $c(a6, d0.w)
004890: 00144e4f     ori.b      #$4f, (a4)
004894: 00124cdf     ori.b      #$df, (a2)
004898: 003c         .dc.w      $003c
00489a: 4e75         rts        
00489c: 2a5f         movea.l    (a7)+, a5
00489e: 5385         subq.l     #$1, d5
0048a0: 6562         bcs.b      $4904
0048a2: 1018         move.b     (a0)+, d0
0048a4: 67f8         beq.b      $489e
0048a6: 0c00000d     cmpi.b     #$d, d0
0048aa: 6758         beq.b      $4904
0048ac: 0c000020     cmpi.b     #$20, d0
0048b0: 67ec         beq.b      $489e
0048b2: 0c000009     cmpi.b     #$9, d0
0048b6: 67e6         beq.b      $489e
0048b8: 0c00002c     cmpi.b     #$2c, d0
0048bc: 67e0         beq.b      $489e
0048be: 5282         addq.l     #$1, d2
0048c0: 0c000022     cmpi.b     #$22, d0
0048c4: 6730         beq.b      $48f6
0048c6: 0c000027     cmpi.b     #$27, d0
0048ca: 672a         beq.b      $48f6
0048cc: 4868ffff     pea.l      -$1(a0)
0048d0: 5385         subq.l     #$1, d5
0048d2: 6530         bcs.b      $4904
0048d4: 1018         move.b     (a0)+, d0
0048d6: 67c6         beq.b      $489e
0048d8: 0c00000d     cmpi.b     #$d, d0
0048dc: 6712         beq.b      $48f0
0048de: 0c000020     cmpi.b     #$20, d0
0048e2: 670c         beq.b      $48f0
0048e4: 0c000009     cmpi.b     #$9, d0
0048e8: 6706         beq.b      $48f0
0048ea: 0c00002c     cmpi.b     #$2c, d0
0048ee: 66e0         bne.b      $48d0
0048f0: 4228ffff     clr.b      -$1(a0)
0048f4: 60a8         bra.b      $489e
0048f6: 4850         pea.l      (a0)
0048f8: 5385         subq.l     #$1, d5
0048fa: 6508         bcs.b      $4904
0048fc: 1218         move.b     (a0)+, d1
0048fe: b001         cmp.b      d1, d0
004900: 66f6         bne.b      $48f8
004902: 60ec         bra.b      $48f0
004904: 204f         movea.l    a7, a0
004906: 4857         pea.l      (a7)
004908: 2f02         move.l     d2, -(a7)
00490a: 5382         subq.l     #$1, d2
00490c: 6710         beq.b      $491e
00490e: e582         asl.l      #$2, d2
004910: 20302800     move.l     (a0, d2.l), d0
004914: 21902800     move.l     (a0), (a0, d2.l)
004918: 20c0         move.l     d0, (a0)+
00491a: 5182         subq.l     #$8, d2
00491c: 62f2         bhi.b      $4910
00491e: 4ed5         jmp        (a5)
004920: 4e550000     link.w     a5, #$0
004924: 48e76080     movem.l    d1-d2/a0, -(a7)
004928: 2041         movea.l    d1, a0
00492a: 323c0000     move.w     #$0, d1
00492e: 4e40         trap       #$0
004930: 008d         .dc.w      $008d
004932: 60000502     bra.w      $4e36
004936: 4e550000     link.w     a5, #$0
00493a: 48e76080     movem.l    d1-d2/a0, -(a7)
00493e: 323c0001     move.w     #$1, d1
004942: 4e40         trap       #$0
004944: 008d         .dc.w      $008d
004946: 650004f0     bcs.w      $4e38
00494a: 2001         move.l     d1, d0
00494c: 600004e8     bra.w      $4e36
004950: 4e550000     link.w     a5, #$0
004954: 48e76080     movem.l    d1-d2/a0, -(a7)
004958: 323c0006     move.w     #$6, d1
00495c: 4e40         trap       #$0
00495e: 008d         .dc.w      $008d
004960: 640004de     bcc.w      $4e40
004964: 0c4100d3     cmpi.w     #$d3, d1
004968: 660004ce     bne.w      $4e38
00496c: 7001         moveq      #$1, d0
00496e: 600004c6     bra.w      $4e36
004972: 4e550000     link.w     a5, #$0
004976: 48e76080     movem.l    d1-d2/a0, -(a7)
00497a: 2041         movea.l    d1, a0
00497c: 323c000f     move.w     #$f, d1
004980: 242d0008     move.l     $8(a5), d2
004984: 60a8         bra.b      $492e
004986: 4e550000     link.w     a5, #$0
00498a: 48e76080     movem.l    d1-d2/a0, -(a7)
00498e: 2041         movea.l    d1, a0
004990: 323c000e     move.w     #$e, d1
004994: 6098         bra.b      $492e
004996: 4e550000     link.w     a5, #$0
00499a: 48e76080     movem.l    d1-d2/a0, -(a7)
00499e: 323c0002     move.w     #$2, d1
0049a2: 4e40         trap       #$0
0049a4: 008d         .dc.w      $008d
0049a6: 65000490     bcs.w      $4e38
0049aa: 2002         move.l     d2, d0
0049ac: 60000488     bra.w      $4e36
0049b0: 4e550000     link.w     a5, #$0
0049b4: 48e76080     movem.l    d1-d2/a0, -(a7)
0049b8: 323c0005     move.w     #$5, d1
0049bc: 60e4         bra.b      $49a2
0049be: 4e550000     link.w     a5, #$0
0049c2: 48e76080     movem.l    d1-d2/a0, -(a7)
0049c6: 2041         movea.l    d1, a0
0049c8: 323c0000     move.w     #$0, d1
0049cc: 4e40         trap       #$0
0049ce: 008e         .dc.w      $008e
0049d0: 60000464     bra.w      $4e36
0049d4: 4e550000     link.w     a5, #$0
0049d8: 48e76080     movem.l    d1-d2/a0, -(a7)
0049dc: 323c0003     move.w     #$3, d1
0049e0: 60ea         bra.b      $49cc
0049e2: 4e550000     link.w     a5, #$0
0049e6: 48e76080     movem.l    d1-d2/a0, -(a7)
0049ea: 2401         move.l     d1, d2
0049ec: 323c0002     move.w     #$2, d1
0049f0: 60da         bra.b      $49cc
0049f2: 4e550000     link.w     a5, #$0
0049f6: 48e76080     movem.l    d1-d2/a0, -(a7)
0049fa: 2041         movea.l    d1, a0
0049fc: 323c000f     move.w     #$f, d1
004a00: 60ca         bra.b      $49cc
004a02: 4e550000     link.w     a5, #$0
004a06: 48e76080     movem.l    d1-d2/a0, -(a7)
004a0a: 2401         move.l     d1, d2
004a0c: 323c0010     move.w     #$10, d1
004a10: 60ba         bra.b      $49cc
004a12: 4e550000     link.w     a5, #$0
004a16: 48e76080     movem.l    d1-d2/a0, -(a7)
004a1a: 2401         move.l     d1, d2
004a1c: 323c0011     move.w     #$11, d1
004a20: 60aa         bra.b      $49cc
004a22: 4e550000     link.w     a5, #$0
004a26: 48e76080     movem.l    d1-d2/a0, -(a7)
004a2a: 2401         move.l     d1, d2
004a2c: 323c001a     move.w     #$1a, d1
004a30: 609a         bra.b      $49cc
004a32: 4e550000     link.w     a5, #$0
004a36: 48e76080     movem.l    d1-d2/a0, -(a7)
004a3a: 323c001b     move.w     #$1b, d1
004a3e: 60f0         bra.b      $4a30
004a40: 4e550000     link.w     a5, #$0
004a44: 48e76080     movem.l    d1-d2/a0, -(a7)
004a48: 48e71840     movem.l    d3-d4/a1, -(a7)
004a4c: 2401         move.l     d1, d2
004a4e: 7204         moveq      #$4, d1
004a50: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
004a56: 4e40         trap       #$0
004a58: 008e         .dc.w      $008e
004a5a: 4cdf0218     movem.l    (a7)+, d3-d4/a1
004a5e: 600003d6     bra.w      $4e36
004a62: 4e550000     link.w     a5, #$0
004a66: 48e76080     movem.l    d1-d2/a0, -(a7)
004a6a: 2401         move.l     d1, d2
004a6c: 323c001c     move.w     #$1c, d1
004a70: 60be         bra.b      $4a30
004a72: 4e550000     link.w     a5, #$0
004a76: 48e76080     movem.l    d1-d2/a0, -(a7)
004a7a: 323c0024     move.w     #$24, d1
004a7e: 60b0         bra.b      $4a30
004a80: 4e550000     link.w     a5, #$0
004a84: 48e76080     movem.l    d1-d2/a0, -(a7)
004a88: 323c0025     move.w     #$25, d1
004a8c: 60a2         bra.b      $4a30
004a8e: 4e550000     link.w     a5, #$0
004a92: 48e76080     movem.l    d1-d2/a0, -(a7)
004a96: 3401         move.w     d1, d2
004a98: 323c0026     move.w     #$26, d1
004a9c: 6092         bra.b      $4a30
004a9e: 4e550000     link.w     a5, #$0
004aa2: 48e76080     movem.l    d1-d2/a0, -(a7)
004aa6: 3401         move.w     d1, d2
004aa8: 323c0027     move.w     #$27, d1
004aac: 6082         bra.b      $4a30
004aae: 4e550000     link.w     a5, #$0
004ab2: 48e76080     movem.l    d1-d2/a0, -(a7)
004ab6: 2040         movea.l    d0, a0
004ab8: 2001         move.l     d1, d0
004aba: 2f0a         move.l     a2, -(a7)
004abc: 4e40         trap       #$0
004abe: 0080204a245f ori.l      #$204a245f, d0
004ac4: 65000372     bcs.w      $4e38
004ac8: 2008         move.l     a0, d0
004aca: 6000036a     bra.w      $4e36
004ace: 4e550000     link.w     a5, #$0
004ad2: 48e76080     movem.l    d1-d2/a0, -(a7)
004ad6: 204a         movea.l    a2, a0
004ad8: 2440         movea.l    d0, a2
004ada: 4e40         trap       #$0
004adc: 008124486000 ori.l      #$24486000, d1
004ae2: 0354         bchg.b     d1, (a4)
004ae4: 4e550000     link.w     a5, #$0
004ae8: 48e76080     movem.l    d1-d2/a0, -(a7)
004aec: 7000         moveq      #$0, d0
004aee: 4e40         trap       #$0
004af0: 000a         .dc.w      $000a
004af2: 60000342     bra.w      $4e36
004af6: 4e550000     link.w     a5, #$0
004afa: 48e76080     movem.l    d1-d2/a0, -(a7)
004afe: 206d0008     movea.l    $8(a5), a0
004b02: 2210         move.l     (a0), d1
004b04: 2040         movea.l    d0, a0
004b06: 2017         move.l     (a7), d0
004b08: 4e40         trap       #$0
004b0a: 00176500     ori.b      #$0, (a7)
004b0e: 032a206d     btst.l     d1, $206d(a2)
004b12: 0008         .dc.w      $0008
004b14: 2081         move.l     d1, (a0)
004b16: 60000328     bra.w      $4e40
004b1a: 4e550000     link.w     a5, #$0
004b1e: 48e76080     movem.l    d1-d2/a0, -(a7)
004b22: 4e40         trap       #$0
004b24: 000f         .dc.w      $000f
004b26: 6000030e     bra.w      $4e36
004b2a: e188         lsl.l      #$8, d0
004b2c: 08c0001f     bset.b     #$1f, d0
004b30: 4e550000     link.w     a5, #$0
004b34: 48e76080     movem.l    d1-d2/a0, -(a7)
004b38: 4e40         trap       #$0
004b3a: 000a         .dc.w      $000a
004b3c: 600002f8     bra.w      $4e36
004b40: 4e550000     link.w     a5, #$0
004b44: 48e700c0     movem.l    a0-a1, -(a7)
004b48: 2041         movea.l    d1, a0
004b4a: 2240         movea.l    d0, a1
004b4c: 222d0008     move.l     $8(a5), d1
004b50: 4e40         trap       #$0
004b52: 00116560     ori.b      #$60, (a1)
004b56: 7000         moveq      #$0, d0
004b58: 6068         bra.b      $4bc2
004b5a: 4e550000     link.w     a5, #$0
004b5e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004b62: 2040         movea.l    d0, a0
004b64: 4e40         trap       #$0
004b66: 00106454     ori.b      #$54, (a0)
004b6a: 604a         bra.b      $4bb6
004b6c: 4e550000     link.w     a5, #$0
004b70: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004b74: 2040         movea.l    d0, a0
004b76: 2248         movea.l    a0, a1
004b78: 1019         move.b     (a1)+, d0
004b7a: 0c00002f     cmpi.b     #$2f, d0
004b7e: 671a         beq.b      $4b9a
004b80: 0c00002e     cmpi.b     #$2e, d0
004b84: 6622         bne.b      $4ba8
004b86: 0c19002e     cmpi.b     #$2e, (a1)+
004b8a: 67fa         beq.b      $4b86
004b8c: 1021         move.b     -(a1), d0
004b8e: 672e         beq.b      $4bbe
004b90: 0c00002f     cmpi.b     #$2f, d0
004b94: 6612         bne.b      $4ba8
004b96: 2049         movea.l    a1, a0
004b98: 60de         bra.b      $4b78
004b9a: 1019         move.b     (a1)+, d0
004b9c: 0c00002f     cmpi.b     #$2f, d0
004ba0: 6706         beq.b      $4ba8
004ba2: 0c00002e     cmpi.b     #$2e, d0
004ba6: 67de         beq.b      $4b86
004ba8: 4e40         trap       #$0
004baa: 00106508     ori.b      #$8, (a0)
004bae: 4a00         tst.b      d0
004bb0: 670c         beq.b      $4bbe
004bb2: 2049         movea.l    a1, a0
004bb4: 60c2         bra.b      $4b78
004bb6: 2d41800c     move.l     d1, -$7ff4(a6)
004bba: 70ff         moveq      #$ff, d0
004bbc: 6004         bra.b      $4bc2
004bbe: 2009         move.l     a1, d0
004bc0: 9097         sub.l      (a7), d0
004bc2: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
004bc8: 4e5d         unlk       a5
004bca: 4e75         rts        
004bcc: 4e550000     link.w     a5, #$0
004bd0: 48e76080     movem.l    d1-d2/a0, -(a7)
004bd4: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
004bd8: 242d000c     move.l     $c(a5), d2
004bdc: 0802000f     btst.b     #$f, d2
004be0: 6708         beq.b      $4bea
004be2: 262d0010     move.l     $10(a5), d3
004be6: 282d0014     move.l     $14(a5), d4
004bea: 2040         movea.l    d0, a0
004bec: 2001         move.l     d1, d0
004bee: 222d0008     move.l     $8(a5), d1
004bf2: 4e40         trap       #$0
004bf4: 00256502     ori.b      #$2, -(a5)
004bf8: 200a         move.l     a2, d0
004bfa: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
004bfe: 60000236     bra.w      $4e36
004c02: 4e550000     link.w     a5, #$0
004c06: 48e76080     movem.l    d1-d2/a0, -(a7)
004c0a: 2040         movea.l    d0, a0
004c0c: 4e40         trap       #$0
004c0e: 001a6500     ori.b      #$0, (a2)+
004c12: 02262001     andi.b     #$1, -(a6)
004c16: 6000021e     bra.w      $4e36
004c1a: 4e550000     link.w     a5, #$0
004c1e: 48e76080     movem.l    d1-d2/a0, -(a7)
004c22: 2040         movea.l    d0, a0
004c24: 4e40         trap       #$0
004c26: 001f6500     ori.b      #$0, (a7)+
004c2a: 020e         .dc.w      $020e
004c2c: 2001         move.l     d1, d0
004c2e: 60000206     bra.w      $4e36
004c32: 4e550000     link.w     a5, #$0
004c36: 48e76080     movem.l    d1-d2/a0, -(a7)
004c3a: 206d0008     movea.l    $8(a5), a0
004c3e: 4e40         trap       #$0
004c40: 00186000     ori.b      #$0, (a0)+
004c44: 01f24e55     bset.b     d0, $55(a2, d4.l)
004c48: 000048e7     ori.b      #$e7, d0
004c4c: 6080         bra.b      $4bce
004c4e: 2040         movea.l    d0, a0
004c50: 4e40         trap       #$0
004c52: 00266000     ori.b      #$0, -(a6)
004c56: 01e0         bset.b     d0, -(a0)
004c58: 4e550000     link.w     a5, #$0
004c5c: 48e76080     movem.l    d1-d2/a0, -(a7)
004c60: 08c1001f     bset.b     #$1f, d1
004c64: 600c         bra.b      $4c72
004c66: 4e550000     link.w     a5, #$0
004c6a: 48e76080     movem.l    d1-d2/a0, -(a7)
004c6e: 242d0008     move.l     $8(a5), d2
004c72: 4e40         trap       #$0
004c74: 00276500     ori.b      #$0, -(a7)
004c78: 01c0         bset.b     d0, d0
004c7a: 2002         move.l     d2, d0
004c7c: 600001b8     bra.w      $4e36
004c80: 4e550000     link.w     a5, #$0
004c84: 48e76080     movem.l    d1-d2/a0, -(a7)
004c88: 4e40         trap       #$0
004c8a: 000b         .dc.w      $000b
004c8c: 600001a8     bra.w      $4e36
004c90: 4e550000     link.w     a5, #$0
004c94: 4e40         trap       #$0
004c96: 00524e5d     ori.w      #$4e5d, (a2)
004c9a: 4e75         rts        
004c9c: 4e550000     link.w     a5, #$0
004ca0: 48e76080     movem.l    d1-d2/a0, -(a7)
004ca4: 2f09         move.l     a1, -(a7)
004ca6: 206d0008     movea.l    $8(a5), a0
004caa: 226d000c     movea.l    $c(a5), a1
004cae: 4e40         trap       #$0
004cb0: 001b225f     ori.b      #$5f, (a3)+
004cb4: 60000180     bra.w      $4e36
004cb8: 4e550000     link.w     a5, #$0
004cbc: 48e76080     movem.l    d1-d2/a0, -(a7)
004cc0: 2040         movea.l    d0, a0
004cc2: 3001         move.w     d1, d0
004cc4: 48e70060     movem.l    a1-a2, -(a7)
004cc8: 4e40         trap       #$0
004cca: 00006502     ori.b      #$2, d0
004cce: 200a         move.l     a2, d0
004cd0: 4cdf0600     movem.l    (a7)+, a1-a2
004cd4: 60000160     bra.w      $4e36
004cd8: 4e550000     link.w     a5, #$0
004cdc: 48e76080     movem.l    d1-d2/a0, -(a7)
004ce0: 2040         movea.l    d0, a0
004ce2: 3001         move.w     d1, d0
004ce4: 48e70060     movem.l    a1-a2, -(a7)
004ce8: 4e40         trap       #$0
004cea: 000160de     ori.b      #$de, d1
004cee: 4e550000     link.w     a5, #$0
004cf2: 48e76080     movem.l    d1-d2/a0, -(a7)
004cf6: 2f0a         move.l     a2, -(a7)
004cf8: 2440         movea.l    d0, a2
004cfa: 4e40         trap       #$0
004cfc: 0002245f     ori.b      #$5f, d2
004d00: 60000134     bra.w      $4e36
004d04: 4e550000     link.w     a5, #$0
004d08: 48e76080     movem.l    d1-d2/a0, -(a7)
004d0c: 2040         movea.l    d0, a0
004d0e: 3001         move.w     d1, d0
004d10: 4e40         trap       #$0
004d12: 001d6000     ori.b      #$0, (a5)+
004d16: 0120         btst.l     d0, -(a0)
004d18: 4e550000     link.w     a5, #$0
004d1c: 48e76080     movem.l    d1-d2/a0, -(a7)
004d20: 4e40         trap       #$0
004d22: 0008         .dc.w      $0008
004d24: 60000110     bra.w      $4e36
004d28: 4e550000     link.w     a5, #$0
004d2c: 48e76080     movem.l    d1-d2/a0, -(a7)
004d30: 2040         movea.l    d0, a0
004d32: 7000         moveq      #$0, d0
004d34: 4e40         trap       #$0
004d36: 00046500     ori.b      #$0, d4
004d3a: 00fe         .dc.w      $00fe
004d3c: 2408         move.l     a0, d2
004d3e: 670000f6     beq.w      $4e36
004d42: 4258         clr.w      (a0)+
004d44: 3081         move.w     d1, (a0)
004d46: 600000ee     bra.w      $4e36
004d4a: 4e550000     link.w     a5, #$0
004d4e: 48e76080     movem.l    d1-d2/a0, -(a7)
004d52: 4e40         trap       #$0
004d54: 000d         .dc.w      $000d
004d56: 600000de     bra.w      $4e36
004d5a: 4e550000     link.w     a5, #$0
004d5e: 48e76080     movem.l    d1-d2/a0, -(a7)
004d62: 48e71c40     movem.l    d3-d5/a1, -(a7)
004d66: 7a03         moveq      #$3, d5
004d68: 602e         bra.b      $4d98
004d6a: 4e550000     link.w     a5, #$0
004d6e: 48e76080     movem.l    d1-d2/a0, -(a7)
004d72: 48e71c40     movem.l    d3-d5/a1, -(a7)
004d76: 7a01         moveq      #$1, d5
004d78: 601e         bra.b      $4d98
004d7a: 4e550000     link.w     a5, #$0
004d7e: 48e76080     movem.l    d1-d2/a0, -(a7)
004d82: 48e71c40     movem.l    d3-d5/a1, -(a7)
004d86: 7a02         moveq      #$2, d5
004d88: 600e         bra.b      $4d98
004d8a: 4e550000     link.w     a5, #$0
004d8e: 48e76080     movem.l    d1-d2/a0, -(a7)
004d92: 48e71c40     movem.l    d3-d5/a1, -(a7)
004d96: 7a00         moveq      #$0, d5
004d98: 2040         movea.l    d0, a0
004d9a: 2401         move.l     d1, d2
004d9c: 226d0008     movea.l    $8(a5), a1
004da0: 302d0012     move.w     $12(a5), d0
004da4: 4840         swap       d0
004da6: 302d000e     move.w     $e(a5), d0
004daa: 222d0014     move.l     $14(a5), d1
004dae: 7603         moveq      #$3, d3
004db0: 08050001     btst.b     #$1, d5
004db4: 6704         beq.b      $4dba
004db6: 262d001c     move.l     $1c(a5), d3
004dba: 282d0018     move.l     $18(a5), d4
004dbe: 08050000     btst.b     #$0, d5
004dc2: 6606         bne.b      $4dca
004dc4: 4e40         trap       #$0
004dc6: 00036004     ori.b      #$4, d3
004dca: 4e40         trap       #$0
004dcc: 00054cdf     ori.b      #$df, d5
004dd0: 023860000062 andi.b     #$0, $62.w
004dd6: 4e550000     link.w     a5, #$0
004dda: 48e76080     movem.l    d1-d2/a0, -(a7)
004dde: 4e40         trap       #$0
004de0: 000c         .dc.w      $000c
004de2: 60000052     bra.w      $4e36
004de6: 4e550000     link.w     a5, #$0
004dea: 48e76080     movem.l    d1-d2/a0, -(a7)
004dee: 4e40         trap       #$0
004df0: 000c         .dc.w      $000c
004df2: 65000044     bcs.w      $4e38
004df6: 2001         move.l     d1, d0
004df8: 6000003c     bra.w      $4e36
004dfc: 4e550000     link.w     a5, #$0
004e00: 48e76080     movem.l    d1-d2/a0, -(a7)
004e04: 2200         move.l     d0, d1
004e06: 4e40         trap       #$0
004e08: 001c6000     ori.b      #$0, (a4)+
004e0c: 002a4e550000 ori.b      #$55, $0(a2)
004e12: 48e76080     movem.l    d1-d2/a0, -(a7)
004e16: 41fa0012     lea.l      $4e2a(pc), a0
004e1a: 2d408fae     move.l     d0, -$7052(a6)
004e1e: 6602         bne.b      $4e22
004e20: 2040         movea.l    d0, a0
004e22: 4e40         trap       #$0
004e24: 0009         .dc.w      $0009
004e26: 6000000e     bra.w      $4e36
004e2a: 2001         move.l     d1, d0
004e2c: 206e8fae     movea.l    -$7052(a6), a0
004e30: 4e90         jsr        (a0)
004e32: 4e40         trap       #$0
004e34: 001e640c     ori.b      #$c, (a6)+
004e38: 2d41800c     move.l     d1, -$7ff4(a6)
004e3c: 70ff         moveq      #$ff, d0
004e3e: 6004         bra.b      $4e44
004e40: 65f6         bcs.b      $4e38
004e42: 7000         moveq      #$0, d0
004e44: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
004e4a: 4e5d         unlk       a5
004e4c: 4e75         rts        
004e4e: 4e550000     link.w     a5, #$0
004e52: 2200         move.l     d0, d1
004e54: 6100001e     bsr.w      $4e74
004e58: 6100f134     bsr.w      $3f8e
004e5c: 6008         bra.b      $4e66
004e5e: 4e550000     link.w     a5, #$0
004e62: 4afc         illegal    #$4afc
004e64: 2200         move.l     d0, d1
004e66: 4e40         trap       #$0
004e68: 0006dead     ori.b      #$ad, d6
004e6c: dead003c     add.l      $3c(a5), d7
004e70: 00014e75     ori.b      #$75, d1
004e74: 4e75         rts        
