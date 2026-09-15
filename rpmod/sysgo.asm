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
00009e: 203c00002642 move.l     #$2642, d0
0000a4: 4ebb0800     jsr        $a6(pc,d0.l)
0000a8: 6076         bra.b      $120
0000aa: 43e80004     lea.l      $4(a0), a1
0000ae: 2d4983ae     move.l     a1, -$7c52(a6)
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
000120: 207c0000222e movea.l    #$222e, a0
000126: 4ebb8800     jsr        $128(pc,a0.l)
00012a: 6500011c     bcs.w      $248
00012e: 6120         bsr.b      $150
000130: 4cdf0003     movem.l    (a7)+, d0-d1
000134: 9bcd         suba.l     a5, a5
000136: 2f2e83ae     move.l     -$7c52(a6), -(a7)
00013a: 207c0000014c movea.l    #$14c, a0
000140: 4ebb8800     jsr        $142(pc,a0.l)
000144: 7000         moveq      #$0, d0
000146: 207c00002ada movea.l    #$2ada, a0
00014c: 4ebb8800     jsr        $14e(pc,a0.l)
000150: 207cffff8430 movea.l    #$ffff8430, a0
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
00018c: 207c00002aaa movea.l    #$2aaa, a0
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
0001d8: 227c00002a68 movea.l    #$2a68, a1
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
000252: 227cffff8026 movea.l    #$ffff8026, a1
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
000274: 207cffff8026 movea.l    #$ffff8026, a0
00027a: d1ce         adda.l     a6, a0
00027c: 6100ff18     bsr.w      $196
000280: 4e40         trap       #$0
000282: 00064e40     ori.b      #$40, d6
000286: 000612d8     ori.b      #$d8, d6
00028a: 66fc         bne.b      $288
00028c: 4e75         rts        
00028e: 4e550000     link.w     a5, #$0
000292: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
000296: 4fefffec     lea.l      -$14(a7), a7
00029a: 422f0013     clr.b      $13(a7)
00029e: 7800         moveq      #$0, d4
0002a0: 422f0012     clr.b      $12(a7)
0002a4: 422f0011     clr.b      $11(a7)
0002a8: 422f0010     clr.b      $10(a7)
0002ac: 7cff         moveq      #$ff, d6
0002ae: 41fb017000000994 lea.l      $994(a16, invalid.w), a0
0002b6: 2008         move.l     a0, d0
0002b8: 610028ba     bsr.w      $2b74
0002bc: 41ee83ee     lea.l      -$7c12(a6), a0
0002c0: 2008         move.l     a0, d0
0002c2: 61002712     bsr.w      $29d6
0002c6: 41fa0bbd     lea.l      $e85(pc), a0
0002ca: 2008         move.l     a0, d0
0002cc: 610004bc     bsr.w      $78a
0002d0: 72ff         moveq      #$ff, d1
0002d2: b280         cmp.l      d0, d1
0002d4: 66000004     bne.w      $2da
0002d8: 7801         moveq      #$1, d4
0002da: 7203         moveq      #$3, d1
0002dc: 41fa0bad     lea.l      $e8b(pc), a0
0002e0: 2008         move.l     a0, d0
0002e2: 6100218c     bsr.w      $2470
0002e6: 2d40801e     move.l     d0, -$7fe2(a6)
0002ea: 72ff         moveq      #$ff, d1
0002ec: b280         cmp.l      d0, d1
0002ee: 66000012     bne.w      $302
0002f2: 41fa0b9d     lea.l      $e91(pc), a0
0002f6: 2008         move.l     a0, d0
0002f8: 6100212e     bsr.w      $2428
0002fc: 7801         moveq      #$1, d4
0002fe: 6000002a     bra.w      $32a
000302: 4878013f     pea.l      $13f.w
000306: 222e801e     move.l     -$7fe2(a6), d1
00030a: 203c00007f0c move.l     #$7f0c, d0
000310: 6100117c     bsr.w      $148e
000314: 588f         addq.l     #$4, a7
000316: 72ff         moveq      #$ff, d1
000318: b280         cmp.l      d0, d1
00031a: 6600000e     bne.w      $32a
00031e: 41fa0b90     lea.l      $eb0(pc), a0
000322: 2008         move.l     a0, d0
000324: 61002102     bsr.w      $2428
000328: 7801         moveq      #$1, d4
00032a: 7203         moveq      #$3, d1
00032c: 41fa0ba9     lea.l      $ed7(pc), a0
000330: 2008         move.l     a0, d0
000332: 6100213c     bsr.w      $2470
000336: 2f400008     move.l     d0, $8(a7)
00033a: 6d000010     blt.w      $34c
00033e: 1f7c00010013 move.b     #$1, $13(a7)
000344: 202f0008     move.l     $8(a7), d0
000348: 61002156     bsr.w      $24a0
00034c: 41fa0b96     lea.l      $ee4(pc), a0
000350: 2008         move.l     a0, d0
000352: 61000436     bsr.w      $78a
000356: 4a80         tst.l      d0
000358: 66000084     bne.w      $3de
00035c: 610018b6     bsr.w      $1c14
000360: 2f40000c     move.l     d0, $c(a7)
000364: 6c000056     bge.w      $3bc
000368: 2f2e800c     move.l     -$7ff4(a6), -(a7)
00036c: 222f0010     move.l     $10(a7), d1
000370: 41fa0b78     lea.l      $eea(pc), a0
000374: 2008         move.l     a0, d0
000376: 610020b0     bsr.w      $2428
00037a: 588f         addq.l     #$4, a7
00037c: 70ff         moveq      #$ff, d0
00037e: b0ae801e     cmp.l      -$7fe2(a6), d0
000382: 67000032     beq.w      $3b6
000386: 4a2f0013     tst.b      $13(a7)
00038a: 6700002a     beq.w      $3b6
00038e: 42a7         clr.l      -(a7)
000390: 222e801e     move.l     -$7fe2(a6), d1
000394: 203c00007f32 move.l     #$7f32, d0
00039a: 610010f2     bsr.w      $148e
00039e: 588f         addq.l     #$4, a7
0003a0: 72ff         moveq      #$ff, d1
0003a2: b280         cmp.l      d0, d1
0003a4: 66000010     bne.w      $3b6
0003a8: 222e800c     move.l     -$7ff4(a6), d1
0003ac: 41fa0b6d     lea.l      $f1b(pc), a0
0003b0: 2008         move.l     a0, d0
0003b2: 61002074     bsr.w      $2428
0003b6: 7801         moveq      #$1, d4
0003b8: 60000020     bra.w      $3da
0003bc: 41fa0b7a     lea.l      $f38(pc), a0
0003c0: 2008         move.l     a0, d0
0003c2: 610003c6     bsr.w      $78a
0003c6: 72ff         moveq      #$ff, d1
0003c8: b280         cmp.l      d0, d1
0003ca: 66000008     bne.w      $3d4
0003ce: 7801         moveq      #$1, d4
0003d0: 60000008     bra.w      $3da
0003d4: 1d7c000183ce move.b     #$1, -$7c32(a6)
0003da: 60000004     bra.w      $3e0
0003de: 7801         moveq      #$1, d4
0003e0: 41fa0b59     lea.l      $f3b(pc), a0
0003e4: 2008         move.l     a0, d0
0003e6: 610003a2     bsr.w      $78a
0003ea: 4a80         tst.l      d0
0003ec: 6600004c     bne.w      $43a
0003f0: 41ee83c2     lea.l      -$7c3e(a6), a0
0003f4: 2008         move.l     a0, d0
0003f6: 61000810     bsr.w      $c08
0003fa: 72ff         moveq      #$ff, d1
0003fc: b280         cmp.l      d0, d1
0003fe: 66000012     bne.w      $412
000402: 41fa0b3a     lea.l      $f3e(pc), a0
000406: 2008         move.l     a0, d0
000408: 6100201e     bsr.w      $2428
00040c: 7801         moveq      #$1, d4
00040e: 60000026     bra.w      $436
000412: 7203         moveq      #$3, d1
000414: 41fa0b43     lea.l      $f59(pc), a0
000418: 2008         move.l     a0, d0
00041a: 61002054     bsr.w      $2470
00041e: 2d408022     move.l     d0, -$7fde(a6)
000422: 6c000012     bge.w      $436
000426: 222e800c     move.l     -$7ff4(a6), d1
00042a: 41fa0b31     lea.l      $f5d(pc), a0
00042e: 2008         move.l     a0, d0
000430: 61001ff6     bsr.w      $2428
000434: 7801         moveq      #$1, d4
000436: 60000004     bra.w      $43c
00043a: 7801         moveq      #$1, d4
00043c: 4a2f0013     tst.b      $13(a7)
000440: 67000074     beq.w      $4b6
000444: 4a04         tst.b      d4
000446: 6600006e     bne.w      $4b6
00044a: 41fa0b36     lea.l      $f82(pc), a0
00044e: 2008         move.l     a0, d0
000450: 61000338     bsr.w      $78a
000454: 72ff         moveq      #$ff, d1
000456: b280         cmp.l      d0, d1
000458: 66000004     bne.w      $45e
00045c: 7801         moveq      #$1, d4
00045e: 41fa0b26     lea.l      $f86(pc), a0
000462: 2008         move.l     a0, d0
000464: 61000324     bsr.w      $78a
000468: 72ff         moveq      #$ff, d1
00046a: b280         cmp.l      d0, d1
00046c: 66000004     bne.w      $472
000470: 7801         moveq      #$1, d4
000472: 41fa0b17     lea.l      $f8b(pc), a0
000476: 2008         move.l     a0, d0
000478: 61000310     bsr.w      $78a
00047c: 72ff         moveq      #$ff, d1
00047e: b280         cmp.l      d0, d1
000480: 66000004     bne.w      $486
000484: 7801         moveq      #$1, d4
000486: 4a04         tst.b      d4
000488: 6600002c     bne.w      $4b6
00048c: 41ee83ba     lea.l      -$7c46(a6), a0
000490: 2008         move.l     a0, d0
000492: 61000774     bsr.w      $c08
000496: 2c00         move.l     d0, d6
000498: 72ff         moveq      #$ff, d1
00049a: b280         cmp.l      d0, d1
00049c: 66000012     bne.w      $4b0
0004a0: 41fa0aef     lea.l      $f91(pc), a0
0004a4: 2008         move.l     a0, d0
0004a6: 61001f80     bsr.w      $2428
0004aa: 7801         moveq      #$1, d4
0004ac: 60000008     bra.w      $4b6
0004b0: 1f7c00010011 move.b     #$1, $11(a7)
0004b6: 4a2f0013     tst.b      $13(a7)
0004ba: 67000008     beq.w      $4c4
0004be: 4a04         tst.b      d4
0004c0: 67000074     beq.w      $536
0004c4: 7a00         moveq      #$0, d5
0004c6: 60000028     bra.w      $4f0
0004ca: 41ee83d6     lea.l      -$7c2a(a6), a0
0004ce: 20305c00     move.l     (a0, d5.l * 4), d0
0004d2: 610003ea     bsr.w      $8be
0004d6: 4a80         tst.l      d0
0004d8: 67000014     beq.w      $4ee
0004dc: 41ee83d6     lea.l      -$7c2a(a6), a0
0004e0: 22305c00     move.l     (a0, d5.l * 4), d1
0004e4: 41fa0aca     lea.l      $fb0(pc), a0
0004e8: 2008         move.l     a0, d0
0004ea: 61001f3c     bsr.w      $2428
0004ee: 5285         addq.l     #$1, d5
0004f0: 41ee83d6     lea.l      -$7c2a(a6), a0
0004f4: 4ab05c00     tst.l      (a0, d5.l * 4)
0004f8: 6600ffd0     bne.w      $4ca
0004fc: 7a00         moveq      #$0, d5
0004fe: 60000016     bra.w      $516
000502: 2005         move.l     d5, d0
000504: 61001f9a     bsr.w      $24a0
000508: 7203         moveq      #$3, d1
00050a: 41fa0abc     lea.l      $fc8(pc), a0
00050e: 2008         move.l     a0, d0
000510: 61001f5e     bsr.w      $2470
000514: 5285         addq.l     #$1, d5
000516: 7003         moveq      #$3, d0
000518: b085         cmp.l      d5, d0
00051a: 6e00ffe6     bgt.w      $502
00051e: 41fa0aae     lea.l      $fce(pc), a0
000522: 2008         move.l     a0, d0
000524: 61001f02     bsr.w      $2428
000528: 41fa0aba     lea.l      $fe4(pc), a0
00052c: 2008         move.l     a0, d0
00052e: 61001ef8     bsr.w      $2428
000532: 6100072c     bsr.w      $c60
000536: 223c80000200 move.l     #$80000200, d1
00053c: 203c00000140 move.l     #$140, d0
000542: 6100269a     bsr.w      $2bde
000546: 72ff         moveq      #$ff, d1
000548: b280         cmp.l      d0, d1
00054a: 66000012     bne.w      $55e
00054e: 222e800c     move.l     -$7ff4(a6), d1
000552: 41fa0aba     lea.l      $100e(pc), a0
000556: 2008         move.l     a0, d0
000558: 61001ece     bsr.w      $2428
00055c: 7801         moveq      #$1, d4
00055e: 600001fa     bra.w      $75a
000562: 4a2f0013     tst.b      $13(a7)
000566: 67000008     beq.w      $570
00056a: 4a04         tst.b      d4
00056c: 6700003e     beq.w      $5ac
000570: 70ff         moveq      #$ff, d0
000572: b086         cmp.l      d6, d0
000574: 66000036     bne.w      $5ac
000578: 41fa0ab8     lea.l      $1032(pc), a0
00057c: 2008         move.l     a0, d0
00057e: 61001ea8     bsr.w      $2428
000582: 41ee83b2     lea.l      -$7c4e(a6), a0
000586: 2008         move.l     a0, d0
000588: 6100067e     bsr.w      $c08
00058c: 2c00         move.l     d0, d6
00058e: 72ff         moveq      #$ff, d1
000590: b280         cmp.l      d0, d1
000592: 6600000e     bne.w      $5a2
000596: 41fa0ab0     lea.l      $1048(pc), a0
00059a: 2008         move.l     a0, d0
00059c: 61001e8a     bsr.w      $2428
0005a0: 7801         moveq      #$1, d4
0005a2: 4a04         tst.b      d4
0005a4: 67000006     beq.w      $5ac
0005a8: 6100021c     bsr.w      $7c6
0005ac: 4aae83ea     tst.l      -$7c16(a6)
0005b0: 670000f8     beq.w      $6aa
0005b4: 600000d4     bra.w      $68a
0005b8: 1f7c00010012 move.b     #$1, $12(a7)
0005be: 4a2f0013     tst.b      $13(a7)
0005c2: 66000010     bne.w      $5d4
0005c6: 41fa0a9a     lea.l      $1062(pc), a0
0005ca: 2008         move.l     a0, d0
0005cc: 6100080a     bsr.w      $dd8
0005d0: 1f400011     move.b     d0, $11(a7)
0005d4: 600000d0     bra.w      $6a6
0005d8: 4a04         tst.b      d4
0005da: 6600007c     bne.w      $658
0005de: 42a7         clr.l      -(a7)
0005e0: 222e8022     move.l     -$7fde(a6), d1
0005e4: 203c0000ff4b move.l     #$ff4b, d0
0005ea: 61000e0e     bsr.w      $13fa
0005ee: 588f         addq.l     #$4, a7
0005f0: 2f40000c     move.l     d0, $c(a7)
0005f4: 6c000014     bge.w      $60a
0005f8: 222e800c     move.l     -$7ff4(a6), d1
0005fc: 41fa0a6f     lea.l      $106d(pc), a0
000600: 2008         move.l     a0, d0
000602: 61001e24     bsr.w      $2428
000606: 60000050     bra.w      $658
00060a: 4aaf000c     tst.l      $c(a7)
00060e: 6600000e     bne.w      $61e
000612: 422e83d0     clr.b      -$7c30(a6)
000616: 61000268     bsr.w      $880
00061a: 6000003c     bra.w      $658
00061e: 4a2e83d0     tst.b      -$7c30(a6)
000622: 6700002e     beq.w      $652
000626: 60000012     bra.w      $63a
00062a: 61000216     bsr.w      $842
00062e: 60000022     bra.w      $652
000632: 610001d0     bsr.w      $804
000636: 6000001a     bra.w      $652
00063a: 202f000c     move.l     $c(a7), d0
00063e: 0c8000000001 cmpi.l     #$1, d0
000644: 6700ffe4     beq.w      $62a
000648: 0c8000000002 cmpi.l     #$2, d0
00064e: 6700ffe2     beq.w      $632
000652: 1d7c000183d0 move.b     #$1, -$7c30(a6)
000658: 4a2f0013     tst.b      $13(a7)
00065c: 66000010     bne.w      $66e
000660: 41fa0a38     lea.l      $109a(pc), a0
000664: 2008         move.l     a0, d0
000666: 61000770     bsr.w      $dd8
00066a: 1f400011     move.b     d0, $11(a7)
00066e: 60000036     bra.w      $6a6
000672: 2f2e83ea     move.l     -$7c16(a6), -(a7)
000676: 222e83ea     move.l     -$7c16(a6), d1
00067a: 41fa0a29     lea.l      $10a5(pc), a0
00067e: 2008         move.l     a0, d0
000680: 61001da6     bsr.w      $2428
000684: 588f         addq.l     #$4, a7
000686: 6000001e     bra.w      $6a6
00068a: 202e83ea     move.l     -$7c16(a6), d0
00068e: 0c800000013f cmpi.l     #$13f, d0
000694: 6700ff22     beq.w      $5b8
000698: 0c8000000140 cmpi.l     #$140, d0
00069e: 6700ff38     beq.w      $5d8
0006a2: 6000ffce     bra.w      $672
0006a6: 42ae83ea     clr.l      -$7c16(a6)
0006aa: 70ff         moveq      #$ff, d0
0006ac: b086         cmp.l      d6, d0
0006ae: 6700007c     beq.w      $72c
0006b2: 41d7         lea.l      (a7), a0
0006b4: 2008         move.l     a0, d0
0006b6: 6100240e     bsr.w      $2ac6
0006ba: 2f400004     move.l     d0, $4(a7)
0006be: 60000050     bra.w      $710
0006c2: 60000064     bra.w      $728
0006c6: 7cff         moveq      #$ff, d6
0006c8: 4a2f0013     tst.b      $13(a7)
0006cc: 67000006     beq.w      $6d4
0006d0: 422f0011     clr.b      $11(a7)
0006d4: 60000052     bra.w      $728
0006d8: bcaf0004     cmp.l      $4(a7), d6
0006dc: 6600002e     bne.w      $70c
0006e0: 7cff         moveq      #$ff, d6
0006e2: 4a2f0013     tst.b      $13(a7)
0006e6: 67000024     beq.w      $70c
0006ea: 4a2f0011     tst.b      $11(a7)
0006ee: 67000018     beq.w      $708
0006f2: 203c0000ffff move.l     #$ffff, d0
0006f8: c097         and.l      (a7), d0
0006fa: 7201         moveq      #$1, d1
0006fc: b280         cmp.l      d0, d1
0006fe: 66000008     bne.w      $708
000702: 1f7c00010010 move.b     #$1, $10(a7)
000708: 422f0011     clr.b      $11(a7)
00070c: 6000001a     bra.w      $728
000710: 202f0004     move.l     $4(a7), d0
000714: 4a80         tst.l      d0
000716: 6700ffaa     beq.w      $6c2
00071a: 0c80ffffffff cmpi.l     #$ffffffff, d0
000720: 6700ffa4     beq.w      $6c6
000724: 6000ffb2     bra.w      $6d8
000728: 60000010     bra.w      $73a
00072c: 4a2f0012     tst.b      $12(a7)
000730: 66000008     bne.w      $73a
000734: 7000         moveq      #$0, d0
000736: 610020b0     bsr.w      $27e8
00073a: 4a2f0013     tst.b      $13(a7)
00073e: 67000008     beq.w      $748
000742: 4a04         tst.b      d4
000744: 67000014     beq.w      $75a
000748: 70ff         moveq      #$ff, d0
00074a: b086         cmp.l      d6, d0
00074c: 6600000c     bne.w      $75a
000750: 41fa0982     lea.l      $10d4(pc), a0
000754: 2008         move.l     a0, d0
000756: 61001cd0     bsr.w      $2428
00075a: 4a2f0012     tst.b      $12(a7)
00075e: 6700000a     beq.w      $76a
000762: 4a2f0011     tst.b      $11(a7)
000766: 6700000a     beq.w      $772
00076a: 4a2f0010     tst.b      $10(a7)
00076e: 6700fdf2     beq.w      $562
000772: 7000         moveq      #$0, d0
000774: 102f0010     move.b     $10(a7), d0
000778: 61000220     bsr.w      $99a
00077c: 4fef0014     lea.l      $14(a7), a7
000780: 4ced0172ffec movem.l    -$14(a5), d1/d4-d6/a0
000786: 4e5d         unlk       a5
000788: 4e75         rts        
00078a: 4e550000     link.w     a5, #$0
00078e: 48e7c080     movem.l    d0-d1/a0, -(a7)
000792: 7200         moveq      #$0, d1
000794: 2017         move.l     (a7), d0
000796: 61001fd4     bsr.w      $276c
00079a: 72ff         moveq      #$ff, d1
00079c: b280         cmp.l      d0, d1
00079e: 66000014     bne.w      $7b4
0007a2: 2217         move.l     (a7), d1
0007a4: 41fa0941     lea.l      $10e7(pc), a0
0007a8: 2008         move.l     a0, d0
0007aa: 61001c7c     bsr.w      $2428
0007ae: 70ff         moveq      #$ff, d0
0007b0: 6000000a     bra.w      $7bc
0007b4: 7000         moveq      #$0, d0
0007b6: 60000004     bra.w      $7bc
0007ba: 4e71         nop        
0007bc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0007c2: 4e5d         unlk       a5
0007c4: 4e75         rts        
0007c6: 4e550000     link.w     a5, #$0
0007ca: 48e7c000     movem.l    d0-d1, -(a7)
0007ce: 7003         moveq      #$3, d0
0007d0: b0ae83d2     cmp.l      -$7c2e(a6), d0
0007d4: 67000024     beq.w      $7fa
0007d8: 70ff         moveq      #$ff, d0
0007da: b0ae801e     cmp.l      -$7fe2(a6), d0
0007de: 6700001a     beq.w      $7fa
0007e2: 42a7         clr.l      -(a7)
0007e4: 222e801e     move.l     -$7fe2(a6), d1
0007e8: 203c00007f2e move.l     #$7f2e, d0
0007ee: 61000c0a     bsr.w      $13fa
0007f2: 588f         addq.l     #$4, a7
0007f4: 7003         moveq      #$3, d0
0007f6: 2d4083d2     move.l     d0, -$7c2e(a6)
0007fa: 4ced0002fffc movem.l    -$4(a5), d1
000800: 4e5d         unlk       a5
000802: 4e75         rts        
000804: 4e550000     link.w     a5, #$0
000808: 48e7c000     movem.l    d0-d1, -(a7)
00080c: 7004         moveq      #$4, d0
00080e: b0ae83d2     cmp.l      -$7c2e(a6), d0
000812: 67000024     beq.w      $838
000816: 70ff         moveq      #$ff, d0
000818: b0ae801e     cmp.l      -$7fe2(a6), d0
00081c: 6700001a     beq.w      $838
000820: 42a7         clr.l      -(a7)
000822: 222e801e     move.l     -$7fe2(a6), d1
000826: 203c00007f35 move.l     #$7f35, d0
00082c: 61000bcc     bsr.w      $13fa
000830: 588f         addq.l     #$4, a7
000832: 7004         moveq      #$4, d0
000834: 2d4083d2     move.l     d0, -$7c2e(a6)
000838: 4ced0002fffc movem.l    -$4(a5), d1
00083e: 4e5d         unlk       a5
000840: 4e75         rts        
000842: 4e550000     link.w     a5, #$0
000846: 48e7c000     movem.l    d0-d1, -(a7)
00084a: 7005         moveq      #$5, d0
00084c: b0ae83d2     cmp.l      -$7c2e(a6), d0
000850: 67000024     beq.w      $876
000854: 70ff         moveq      #$ff, d0
000856: b0ae801e     cmp.l      -$7fe2(a6), d0
00085a: 6700001a     beq.w      $876
00085e: 42a7         clr.l      -(a7)
000860: 222e801e     move.l     -$7fe2(a6), d1
000864: 203c00007f36 move.l     #$7f36, d0
00086a: 61000b8e     bsr.w      $13fa
00086e: 588f         addq.l     #$4, a7
000870: 7005         moveq      #$5, d0
000872: 2d4083d2     move.l     d0, -$7c2e(a6)
000876: 4ced0002fffc movem.l    -$4(a5), d1
00087c: 4e5d         unlk       a5
00087e: 4e75         rts        
000880: 4e550000     link.w     a5, #$0
000884: 48e7c000     movem.l    d0-d1, -(a7)
000888: 7002         moveq      #$2, d0
00088a: b0ae83d2     cmp.l      -$7c2e(a6), d0
00088e: 67000024     beq.w      $8b4
000892: 70ff         moveq      #$ff, d0
000894: b0ae801e     cmp.l      -$7fe2(a6), d0
000898: 6700001a     beq.w      $8b4
00089c: 42a7         clr.l      -(a7)
00089e: 222e801e     move.l     -$7fe2(a6), d1
0008a2: 203c00007f2f move.l     #$7f2f, d0
0008a8: 61000b50     bsr.w      $13fa
0008ac: 588f         addq.l     #$4, a7
0008ae: 7002         moveq      #$2, d0
0008b0: 2d4083d2     move.l     d0, -$7c2e(a6)
0008b4: 4ced0002fffc movem.l    -$4(a5), d1
0008ba: 4e5d         unlk       a5
0008bc: 4e75         rts        
0008be: 4e550000     link.w     a5, #$0
0008c2: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
0008c6: 4fefffbc     lea.l      -$44(a7), a7
0008ca: 7200         moveq      #$0, d1
0008cc: 202f0044     move.l     $44(a7), d0
0008d0: 610020a4     bsr.w      $2976
0008d4: 2e80         move.l     d0, (a7)
0008d6: 72ff         moveq      #$ff, d1
0008d8: b280         cmp.l      d0, d1
0008da: 67000012     beq.w      $8ee
0008de: 2017         move.l     (a7), d0
0008e0: 610020ca     bsr.w      $29ac
0008e4: 7000         moveq      #$0, d0
0008e6: 4fef0044     lea.l      $44(a7), a7
0008ea: 600000a4     bra.w      $990
0008ee: 4a2e83ce     tst.b      -$7c32(a6)
0008f2: 6700003e     beq.w      $932
0008f6: 41fa0869     lea.l      $1161(pc), a0
0008fa: 2208         move.l     a0, d1
0008fc: 41ef0004     lea.l      $4(a7), a0
000900: 2008         move.l     a0, d0
000902: 61001c9e     bsr.w      $25a2
000906: 222f0044     move.l     $44(a7), d1
00090a: 41ef0004     lea.l      $4(a7), a0
00090e: 2008         move.l     a0, d0
000910: 61001cac     bsr.w      $25be
000914: 7200         moveq      #$0, d1
000916: 41ef0004     lea.l      $4(a7), a0
00091a: 2008         move.l     a0, d0
00091c: 61002078     bsr.w      $2996
000920: 72ff         moveq      #$ff, d1
000922: b280         cmp.l      d0, d1
000924: 6700000c     beq.w      $932
000928: 7000         moveq      #$0, d0
00092a: 4fef0044     lea.l      $44(a7), a7
00092e: 60000060     bra.w      $990
000932: 7800         moveq      #$0, d4
000934: 60000042     bra.w      $978
000938: 41ee83f4     lea.l      -$7c0c(a6), a0
00093c: 22304c00     move.l     (a0, d4.l * 4), d1
000940: 41ef0004     lea.l      $4(a7), a0
000944: 2008         move.l     a0, d0
000946: 61001c5a     bsr.w      $25a2
00094a: 222f0044     move.l     $44(a7), d1
00094e: 41ef0004     lea.l      $4(a7), a0
000952: 2008         move.l     a0, d0
000954: 61001c68     bsr.w      $25be
000958: 7200         moveq      #$0, d1
00095a: 41ef0004     lea.l      $4(a7), a0
00095e: 2008         move.l     a0, d0
000960: 61002034     bsr.w      $2996
000964: 72ff         moveq      #$ff, d1
000966: b280         cmp.l      d0, d1
000968: 6700000c     beq.w      $976
00096c: 7000         moveq      #$0, d0
00096e: 4fef0044     lea.l      $44(a7), a7
000972: 6000001c     bra.w      $990
000976: 5284         addq.l     #$1, d4
000978: 41ee83f4     lea.l      -$7c0c(a6), a0
00097c: 4ab04c00     tst.l      (a0, d4.l * 4)
000980: 6600ffb6     bne.w      $938
000984: 70ff         moveq      #$ff, d0
000986: 4fef0044     lea.l      $44(a7), a7
00098a: 60000004     bra.w      $990
00098e: 4e71         nop        
000990: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
000996: 4e5d         unlk       a5
000998: 4e75         rts        
00099a: 4e550000     link.w     a5, #$0
00099e: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
0009a2: 598f         subq.l     #$4, a7
0009a4: 70ff         moveq      #$ff, d0
0009a6: b0ae801e     cmp.l      -$7fe2(a6), d0
0009aa: 67000030     beq.w      $9dc
0009ae: 42a7         clr.l      -(a7)
0009b0: 222e801e     move.l     -$7fe2(a6), d1
0009b4: 203c00007f15 move.l     #$7f15, d0
0009ba: 61000ad2     bsr.w      $148e
0009be: 588f         addq.l     #$4, a7
0009c0: 72ff         moveq      #$ff, d1
0009c2: b280         cmp.l      d0, d1
0009c4: 66000016     bne.w      $9dc
0009c8: 7077         moveq      #$77, d0
0009ca: 61000388     bsr.w      $d54
0009ce: 222e800c     move.l     -$7ff4(a6), d1
0009d2: 41fa0792     lea.l      $1166(pc), a0
0009d6: 2008         move.l     a0, d0
0009d8: 61001a4e     bsr.w      $2428
0009dc: 223c00000081 move.l     #$81, d1
0009e2: 41fa07bb     lea.l      $119f(pc), a0
0009e6: 2008         move.l     a0, d0
0009e8: 61001a86     bsr.w      $2470
0009ec: 2800         move.l     d0, d4
0009ee: 6c000014     bge.w      $a04
0009f2: 222e800c     move.l     -$7ff4(a6), d1
0009f6: 41fa07ac     lea.l      $11a4(pc), a0
0009fa: 2008         move.l     a0, d0
0009fc: 61001a2a     bsr.w      $2428
000a00: 60000032     bra.w      $a34
000a04: 42a7         clr.l      -(a7)
000a06: 2204         move.l     d4, d1
000a08: 203c0000ff20 move.l     #$ff20, d0
000a0e: 61000a7e     bsr.w      $148e
000a12: 588f         addq.l     #$4, a7
000a14: 4a80         tst.l      d0
000a16: 6c000016     bge.w      $a2e
000a1a: 7077         moveq      #$77, d0
000a1c: 61000336     bsr.w      $d54
000a20: 222e800c     move.l     -$7ff4(a6), d1
000a24: 41fa07aa     lea.l      $11d0(pc), a0
000a28: 2008         move.l     a0, d0
000a2a: 610019fc     bsr.w      $2428
000a2e: 2004         move.l     d4, d0
000a30: 61001a6e     bsr.w      $24a0
000a34: 7201         moveq      #$1, d1
000a36: 41fa07bd     lea.l      $11f5(pc), a0
000a3a: 2008         move.l     a0, d0
000a3c: 61001a32     bsr.w      $2470
000a40: 2800         move.l     d0, d4
000a42: 6c00001e     bge.w      $a62
000a46: 203c000000a4 move.l     #$a4, d0
000a4c: 610002aa     bsr.w      $cf8
000a50: 222e800c     move.l     -$7ff4(a6), d1
000a54: 41fa07a4     lea.l      $11fa(pc), a0
000a58: 2008         move.l     a0, d0
000a5a: 610019cc     bsr.w      $2428
000a5e: 6000007e     bra.w      $ade
000a62: 42a7         clr.l      -(a7)
000a64: 2204         move.l     d4, d1
000a66: 203c00007f42 move.l     #$7f42, d0
000a6c: 610009d8     bsr.w      $1446
000a70: 588f         addq.l     #$4, a7
000a72: 2a00         move.l     d0, d5
000a74: 6c00001e     bge.w      $a94
000a78: 203c000000a4 move.l     #$a4, d0
000a7e: 61000278     bsr.w      $cf8
000a82: 222e800c     move.l     -$7ff4(a6), d1
000a86: 41fa0797     lea.l      $121f(pc), a0
000a8a: 2008         move.l     a0, d0
000a8c: 6100199a     bsr.w      $2428
000a90: 60000046     bra.w      $ad8
000a94: 70ff         moveq      #$ff, d0
000a96: b0ae801e     cmp.l      -$7fe2(a6), d0
000a9a: 6700003c     beq.w      $ad8
000a9e: 2f05         move.l     d5, -(a7)
000aa0: 222e801e     move.l     -$7fe2(a6), d1
000aa4: 203c00007f20 move.l     #$7f20, d0
000aaa: 610009e2     bsr.w      $148e
000aae: 588f         addq.l     #$4, a7
000ab0: 72ff         moveq      #$ff, d1
000ab2: b280         cmp.l      d0, d1
000ab4: 66000022     bne.w      $ad8
000ab8: 0cae00000807800c cmpi.l     #$807, -$7ff4(a6)
000ac0: 66000008     bne.w      $aca
000ac4: 7077         moveq      #$77, d0
000ac6: 6100028c     bsr.w      $d54
000aca: 222e800c     move.l     -$7ff4(a6), d1
000ace: 41fa0786     lea.l      $1256(pc), a0
000ad2: 2008         move.l     a0, d0
000ad4: 61001952     bsr.w      $2428
000ad8: 2004         move.l     d4, d0
000ada: 610019c4     bsr.w      $24a0
000ade: 70ff         moveq      #$ff, d0
000ae0: b0ae8022     cmp.l      -$7fde(a6), d0
000ae4: 6700007a     beq.w      $b60
000ae8: 42a7         clr.l      -(a7)
000aea: 222e8022     move.l     -$7fde(a6), d1
000aee: 203c0000ff44 move.l     #$ff44, d0
000af4: 61000950     bsr.w      $1446
000af8: 588f         addq.l     #$4, a7
000afa: 2a00         move.l     d0, d5
000afc: 6c00001e     bge.w      $b1c
000b00: 203c000000a4 move.l     #$a4, d0
000b06: 610001f0     bsr.w      $cf8
000b0a: 222e800c     move.l     -$7ff4(a6), d1
000b0e: 41fa0779     lea.l      $1289(pc), a0
000b12: 2008         move.l     a0, d0
000b14: 61001912     bsr.w      $2428
000b18: 60000046     bra.w      $b60
000b1c: 70ff         moveq      #$ff, d0
000b1e: b0ae801e     cmp.l      -$7fe2(a6), d0
000b22: 6700003c     beq.w      $b60
000b26: 2f05         move.l     d5, -(a7)
000b28: 222e801e     move.l     -$7fe2(a6), d1
000b2c: 203c00007f31 move.l     #$7f31, d0
000b32: 6100095a     bsr.w      $148e
000b36: 588f         addq.l     #$4, a7
000b38: 72ff         moveq      #$ff, d1
000b3a: b280         cmp.l      d0, d1
000b3c: 66000022     bne.w      $b60
000b40: 0cae00000807800c cmpi.l     #$807, -$7ff4(a6)
000b48: 66000008     bne.w      $b52
000b4c: 7077         moveq      #$77, d0
000b4e: 61000204     bsr.w      $d54
000b52: 222e800c     move.l     -$7ff4(a6), d1
000b56: 41fa0769     lea.l      $12c1(pc), a0
000b5a: 2008         move.l     a0, d0
000b5c: 610018ca     bsr.w      $2428
000b60: 4a2f0007     tst.b      $7(a7)
000b64: 67000064     beq.w      $bca
000b68: 7200         moveq      #$0, d1
000b6a: 41fa078c     lea.l      $12f8(pc), a0
000b6e: 2008         move.l     a0, d0
000b70: 61001bfa     bsr.w      $276c
000b74: 2e80         move.l     d0, (a7)
000b76: 72ff         moveq      #$ff, d1
000b78: b280         cmp.l      d0, d1
000b7a: 67000018     beq.w      $b94
000b7e: 7c00         moveq      #$0, d6
000b80: 6000000a     bra.w      $b8c
000b84: 2017         move.l     (a7), d0
000b86: 61001c04     bsr.w      $278c
000b8a: 5286         addq.l     #$1, d6
000b8c: 7014         moveq      #$14, d0
000b8e: b086         cmp.l      d6, d0
000b90: 6e00fff2     bgt.w      $b84
000b94: 70ff         moveq      #$ff, d0
000b96: b0ae801e     cmp.l      -$7fe2(a6), d0
000b9a: 6700002a     beq.w      $bc6
000b9e: 42a7         clr.l      -(a7)
000ba0: 222e801e     move.l     -$7fe2(a6), d1
000ba4: 203c00007f33 move.l     #$7f33, d0
000baa: 610008e2     bsr.w      $148e
000bae: 588f         addq.l     #$4, a7
000bb0: 72ff         moveq      #$ff, d1
000bb2: b280         cmp.l      d0, d1
000bb4: 66000010     bne.w      $bc6
000bb8: 222e800c     move.l     -$7ff4(a6), d1
000bbc: 41fa073d     lea.l      $12fb(pc), a0
000bc0: 2008         move.l     a0, d0
000bc2: 61001864     bsr.w      $2428
000bc6: 60000034     bra.w      $bfc
000bca: 70ff         moveq      #$ff, d0
000bcc: b0ae801e     cmp.l      -$7fe2(a6), d0
000bd0: 6700002a     beq.w      $bfc
000bd4: 42a7         clr.l      -(a7)
000bd6: 222e801e     move.l     -$7fe2(a6), d1
000bda: 203c00007f29 move.l     #$7f29, d0
000be0: 610008ac     bsr.w      $148e
000be4: 588f         addq.l     #$4, a7
000be6: 72ff         moveq      #$ff, d1
000be8: b280         cmp.l      d0, d1
000bea: 66000010     bne.w      $bfc
000bee: 222e800c     move.l     -$7ff4(a6), d1
000bf2: 41fa0723     lea.l      $1317(pc), a0
000bf6: 2008         move.l     a0, d0
000bf8: 6100182e     bsr.w      $2428
000bfc: 588f         addq.l     #$4, a7
000bfe: 4ced0172ffec movem.l    -$14(a5), d1/d4-d6/a0
000c04: 4e5d         unlk       a5
000c06: 4e75         rts        
000c08: 4e550000     link.w     a5, #$0
000c0c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000c10: 42a7         clr.l      -(a7)
000c12: 42a7         clr.l      -(a7)
000c14: 2f2e83ae     move.l     -$7c52(a6), -(a7)
000c18: 2f2f000c     move.l     $c(a7), -(a7)
000c1c: 206f0010     movea.l    $10(a7), a0
000c20: 2210         move.l     (a0), d1
000c22: 41fb017000001f04 lea.l      $1f04(a16, invalid.w), a0
000c2a: 2008         move.l     a0, d0
000c2c: 61001892     bsr.w      $24c0
000c30: 4fef0010     lea.l      $10(a7), a7
000c34: 60000004     bra.w      $c3a
000c38: 4e71         nop        
000c3a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000c40: 4e5d         unlk       a5
000c42: 4e75         rts        
000c44: 4e550000     link.w     a5, #$0
000c48: 48e78000     movem.l    d0, -(a7)
000c4c: 0cae0000013f83ea cmpi.l     #$13f, -$7c16(a6)
000c54: 67000006     beq.w      $c5c
000c58: 2d5783ea     move.l     (a7), -$7c16(a6)
000c5c: 4e5d         unlk       a5
000c5e: 4e75         rts        
000c60: 4e550000     link.w     a5, #$0
000c64: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
000c68: 518f         subq.l     #$8, a7
000c6a: 7000         moveq      #$0, d0
000c6c: 61001812     bsr.w      $2480
000c70: 2e80         move.l     d0, (a7)
000c72: 7000         moveq      #$0, d0
000c74: 6100182a     bsr.w      $24a0
000c78: 7201         moveq      #$1, d1
000c7a: 41fa06c7     lea.l      $1343(pc), a0
000c7e: 2008         move.l     a0, d0
000c80: 610017ee     bsr.w      $2470
000c84: 2f400004     move.l     d0, $4(a7)
000c88: 72ff         moveq      #$ff, d1
000c8a: b280         cmp.l      d0, d1
000c8c: 66000012     bne.w      $ca0
000c90: 41fa06be     lea.l      $1350(pc), a0
000c94: 2008         move.l     a0, d0
000c96: 61001790     bsr.w      $2428
000c9a: 78ff         moveq      #$ff, d4
000c9c: 6000003a     bra.w      $cd8
000ca0: 41ee8410     lea.l      -$7bf0(a6), a0
000ca4: 2008         move.l     a0, d0
000ca6: 6100ff60     bsr.w      $c08
000caa: 72ff         moveq      #$ff, d1
000cac: b280         cmp.l      d0, d1
000cae: 66000012     bne.w      $cc2
000cb2: 41fa06b3     lea.l      $1367(pc), a0
000cb6: 2008         move.l     a0, d0
000cb8: 6100176e     bsr.w      $2428
000cbc: 78ff         moveq      #$ff, d4
000cbe: 60000010     bra.w      $cd0
000cc2: 7800         moveq      #$0, d4
000cc4: 7000         moveq      #$0, d0
000cc6: 61001dfe     bsr.w      $2ac6
000cca: 4a80         tst.l      d0
000ccc: 6700fff6     beq.w      $cc4
000cd0: 202f0004     move.l     $4(a7), d0
000cd4: 610017ca     bsr.w      $24a0
000cd8: 2017         move.l     (a7), d0
000cda: 610017a4     bsr.w      $2480
000cde: 2017         move.l     (a7), d0
000ce0: 610017be     bsr.w      $24a0
000ce4: 2004         move.l     d4, d0
000ce6: 508f         addq.l     #$8, a7
000ce8: 60000004     bra.w      $cee
000cec: 4e71         nop        
000cee: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
000cf4: 4e5d         unlk       a5
000cf6: 4e75         rts        
000cf8: 4e550000     link.w     a5, #$0
000cfc: 48e7c080     movem.l    d0-d1/a0, -(a7)
000d00: 518f         subq.l     #$8, a7
000d02: 7000         moveq      #$0, d0
000d04: 102f000b     move.b     $b(a7), d0
000d08: 2e80         move.l     d0, (a7)
000d0a: 1f7c00230004 move.b     #$23, $4(a7)
000d10: 7000         moveq      #$0, d0
000d12: 1f400006     move.b     d0, $6(a7)
000d16: 1f400005     move.b     d0, $5(a7)
000d1a: 70ff         moveq      #$ff, d0
000d1c: b0ae801e     cmp.l      -$7fe2(a6), d0
000d20: 67000026     beq.w      $d48
000d24: 4857         pea.l      (a7)
000d26: 222e801e     move.l     -$7fe2(a6), d1
000d2a: 203c00007f23 move.l     #$7f23, d0
000d30: 610006c8     bsr.w      $13fa
000d34: 588f         addq.l     #$4, a7
000d36: 72ff         moveq      #$ff, d1
000d38: b280         cmp.l      d0, d1
000d3a: 6600000c     bne.w      $d48
000d3e: 41fa0639     lea.l      $1379(pc), a0
000d42: 2008         move.l     a0, d0
000d44: 610016e2     bsr.w      $2428
000d48: 508f         addq.l     #$8, a7
000d4a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000d50: 4e5d         unlk       a5
000d52: 4e75         rts        
000d54: 4e550000     link.w     a5, #$0
000d58: 48e7c080     movem.l    d0-d1/a0, -(a7)
000d5c: 4feffff0     lea.l      -$10(a7), a7
000d60: 7000         moveq      #$0, d0
000d62: 102f0013     move.b     $13(a7), d0
000d66: 2f400008     move.l     d0, $8(a7)
000d6a: 41d7         lea.l      (a7), a0
000d6c: 2208         move.l     a0, d1
000d6e: 41ef0004     lea.l      $4(a7), a0
000d72: 2008         move.l     a0, d0
000d74: 61000d7c     bsr.w      $1af2
000d78: 4a80         tst.l      d0
000d7a: 66000012     bne.w      $d8e
000d7e: 1f6f0003000c move.b     $3(a7), $c(a7)
000d84: 1f6f0007000d move.b     $7(a7), $d(a7)
000d8a: 6000000a     bra.w      $d96
000d8e: 422f000c     clr.b      $c(a7)
000d92: 422f000d     clr.b      $d(a7)
000d96: 422f000e     clr.b      $e(a7)
000d9a: 70ff         moveq      #$ff, d0
000d9c: b0ae801e     cmp.l      -$7fe2(a6), d0
000da0: 67000028     beq.w      $dca
000da4: 486f0008     pea.l      $8(a7)
000da8: 222e801e     move.l     -$7fe2(a6), d1
000dac: 203c00007f23 move.l     #$7f23, d0
000db2: 61000646     bsr.w      $13fa
000db6: 588f         addq.l     #$4, a7
000db8: 72ff         moveq      #$ff, d1
000dba: b280         cmp.l      d0, d1
000dbc: 6600000c     bne.w      $dca
000dc0: 41fa05d3     lea.l      $1395(pc), a0
000dc4: 2008         move.l     a0, d0
000dc6: 61001660     bsr.w      $2428
000dca: 4fef0010     lea.l      $10(a7), a7
000dce: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000dd4: 4e5d         unlk       a5
000dd6: 4e75         rts        
000dd8: 4e550000     link.w     a5, #$0
000ddc: 48e7c080     movem.l    d0-d1/a0, -(a7)
000de0: 518f         subq.l     #$8, a7
000de2: 7204         moveq      #$4, d1
000de4: 7044         moveq      #$44, d0
000de6: 61000978     bsr.w      $1760
000dea: 2f400004     move.l     d0, $4(a7)
000dee: 202f0004     move.l     $4(a7), d0
000df2: 61000716     bsr.w      $150a
000df6: 2e80         move.l     d0, (a7)
000df8: 6000003a     bra.w      $e34
000dfc: 2057         movea.l    (a7), a0
000dfe: 2050         movea.l    (a0), a0
000e00: 20280038     move.l     $38(a0), d0
000e04: 2057         movea.l    (a7), a0
000e06: 2050         movea.l    (a0), a0
000e08: 20680038     movea.l    $38(a0), a0
000e0c: d0a8000c     add.l      $c(a0), d0
000e10: 2200         move.l     d0, d1
000e12: 202f0008     move.l     $8(a7), d0
000e16: 610016f8     bsr.w      $2510
000e1a: 4a80         tst.l      d0
000e1c: 6600000a     bne.w      $e28
000e20: 7001         moveq      #$1, d0
000e22: 508f         addq.l     #$8, a7
000e24: 6000001e     bra.w      $e44
000e28: 2217         move.l     (a7), d1
000e2a: 202f0004     move.l     $4(a7), d0
000e2e: 6100074e     bsr.w      $157e
000e32: 2e80         move.l     d0, (a7)
000e34: 4a97         tst.l      (a7)
000e36: 6600ffc4     bne.w      $dfc
000e3a: 7000         moveq      #$0, d0
000e3c: 508f         addq.l     #$8, a7
000e3e: 60000004     bra.w      $e44
000e42: 4e71         nop        
000e44: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e4a: 4e5d         unlk       a5
000e4c: 4e75         rts        
000e4e: 4afb         .dc.w      $4afb
000e50: 055f         bchg.b     d2, (a7)+
000e52: 7368         .dc.w      $7368
000e54: 656c         bcs.b      $ec2
000e56: 6c007375     bge.w      $81cd
000e5a: 7065         moveq      #$65, d0
000e5c: 7276         moveq      #$76, d1
000e5e: 6973         bvs.b      $ed3
000e60: 6f72         ble.b      $ed4
000e62: 007365727665 ori.w      #$6572, $65(a3, d7.w)
000e68: 7200         moveq      #$0, d1
000e6a: 3100         move.w     d0, -(a0)
000e6c: 6c6f         bge.b      $edd
000e6e: 6164         bsr.b      $ed4
000e70: 007368656c6c ori.w      #$6865, $6c(a3, d6.l)
000e76: 007465726d00 ori.w      #$6572, (a4, d6.l * 4)
000e7c: 7363         .dc.w      $7363
000e7e: 36383638     move.w     $3638.w, d3
000e82: 3161002f     move.w     -(a1), $2f(a0)
000e86: 6363         bls.b      $eeb
000e88: 3933002f     move.w     $2f(a3, d0.w), -(a4)
000e8c: 6363         bls.b      $ef1
000e8e: 39330073     move.w     $73(a3, d0.w), -(a4)
000e92: 7973         .dc.w      $7973
000e94: 676f         beq.b      $f05
000e96: 3a20         move.w     -(a0), d5
000e98: 6361         bls.b      $efb
000e9a: 6e27         bgt.b      $ec3
000e9c: 7420         moveq      #$20, d2
000e9e: 6f70         ble.b      $f10
000ea0: 656e         bcs.b      $f10
000ea2: 2043         movea.l    d3, a0
000ea4: 433933206465 chk.l      $33206465.l, d1
000eaa: 7669         moveq      #$69, d3
000eac: 6365         bls.b      $f13
000eae: 0d00         btst.l     d6, d0
000eb0: 7379         .dc.w      $7379
000eb2: 7367         .dc.w      $7367
000eb4: 6f3a         ble.b      $ef0
000eb6: 2063         movea.l    -(a3), a0
000eb8: 616e         bsr.b      $f28
000eba: 277420736574 move.l     $73(a4, d2.w), $6574(a3)
000ec0: 207369676e61 movea.l    ([$6e61, a3]), a0
000ec6: 6c20         bge.b      $ee8
000ec8: 6f6e         ble.b      $f38
000eca: 20706f7765722064 movea.l    ([$65722064, a0]), a0
000ed2: 6f77         ble.b      $f4b
000ed4: 6e0d         bgt.b      $ee3
000ed6: 002f6e76722f ori.b      #$76, $722f(a7)
000edc: 7072         moveq      #$72, d0
000ede: 6f64         ble.b      $f44
000ee0: 7563         .dc.w      $7563
000ee2: 7400         moveq      #$0, d2
000ee4: 685f         bvc.b      $f45
000ee6: 6974         bvs.b      $f5c
000ee8: 6300736c     bls.w      $8256
000eec: 6176         bsr.b      $f64
000eee: 6520         bcs.b      $f10
000ef0: 7379         .dc.w      $7379
000ef2: 6e63         bgt.b      $f57
000ef4: 6872         bvc.b      $f68
000ef6: 6f6e         ble.b      $f66
000ef8: 6973         bvs.b      $f6d
000efa: 6174         bsr.b      $f70
000efc: 696f         bvs.b      $f6d
000efe: 6e20         bgt.b      $f20
000f00: 6661         bne.b      $f63
000f02: 696c         bvs.b      $f70
000f04: 6564         bcs.b      $f6a
000f06: 2c20         move.l     -(a0), d6
000f08: 7265         moveq      #$65, d1
000f0a: 7420         moveq      #$20, d2
000f0c: 3d20         move.w     -(a0), -(a6)
000f0e: 25642c65     move.l     -(a4), $2c65(a2)
000f12: 7272         moveq      #$72, d1
000f14: 6e6f         bgt.b      $f85
000f16: 3d25         move.w     -(a5), -(a6)
000f18: 640d         bcc.b      $f27
000f1a: 00666169     ori.w      #$6169, -(a6)
000f1e: 6c65         bge.b      $f85
000f20: 6420         bcc.b      $f42
000f22: 746f         moveq      #$6f, d2
000f24: 2072657365742c206572726e movea.l    ([$65742c20, a2], $6572726e), a0
000f30: 6f20         ble.b      $f52
000f32: 3d20         move.w     -(a0), -(a6)
000f34: 25640d00     move.l     -(a4), $d00(a2)
000f38: 6364         bls.b      $f9e
000f3a: 00633000     ori.w      #$3000, -(a3)
000f3e: 7379         .dc.w      $7379
000f40: 7367         .dc.w      $7367
000f42: 6f3a         ble.b      $f7e
000f44: 2063         movea.l    -(a3), a0
000f46: 616e         bsr.b      $fb6
000f48: 6e6f         bgt.b      $fb9
000f4a: 7420         moveq      #$20, d2
000f4c: 666f         bne.b      $fbd
000f4e: 726b         moveq      #$6b, d1
000f50: 207365727665720d002f movea.l    ([$7665720d, a3], $2f), a0
000f5a: 6330         bls.b      $f8c
000f5c: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
000f64: 6361         bls.b      $fc7
000f66: 6e27         bgt.b      $f8f
000f68: 7420         moveq      #$20, d2
000f6a: 6f70         ble.b      $fdc
000f6c: 656e         bcs.b      $fdc
000f6e: 2027         move.l     -(a7), d0
000f70: 2f633027     move.l     -(a3), $3027(a7)
000f74: 2c20         move.l     -(a0), d6
000f76: 6572         bcs.b      $fea
000f78: 726e         moveq      #$6e, d1
000f7a: 6f20         ble.b      $f9c
000f7c: 3d20         move.w     -(a0), -(a6)
000f7e: 25640d00     move.l     -(a4), $d00(a2)
000f82: 6e76         bgt.b      $ffa
000f84: 7200         moveq      #$0, d1
000f86: 7061         moveq      #$61, d0
000f88: 636b         bls.b      $ff5
000f8a: 00727061636b00737973676f ori.w      #$7061, ([$73, a2], $7973676f)
000f96: 3a20         move.w     -(a0), d5
000f98: 6361         bls.b      $ffb
000f9a: 6e6e         bgt.b      $100a
000f9c: 6f74         ble.b      $1012
000f9e: 2066         movea.l    -(a6), a0
000fa0: 6f72         ble.b      $1014
000fa2: 6b20         bmi.b      $fc4
000fa4: 7375         .dc.w      $7375
000fa6: 7065         moveq      #$65, d0
000fa8: 7276         moveq      #$76, d1
000faa: 6973         bvs.b      $101f
000fac: 6f72         ble.b      $1020
000fae: 0d00         btst.l     d6, d0
000fb0: 6361         bls.b      $1013
000fb2: 6e6e         bgt.b      $1022
000fb4: 6f74         ble.b      $102a
000fb6: 2066         movea.l    -(a6), a0
000fb8: 696e         bvs.b      $1028
000fba: 6420         bcc.b      $fdc
000fbc: 6d6f         blt.b      $102d
000fbe: 6475         bcc.b      $1035
000fc0: 6c65         bge.b      $1027
000fc2: 3a20         move.w     -(a0), d5
000fc4: 25730d002f74 move.l     (a3, d0.l * 4), $2f74(a2)
000fca: 6572         bcs.b      $103e
000fcc: 6d004343     blt.w      $5311
000fd0: 39332053     move.w     $53(a3, d2.w), -(a4)
000fd4: 5953         subq.w     #$4, (a3)
000fd6: 5445         addq.w     #$2, d5
000fd8: 4d20         chk.l      -(a0), d6
000fda: 534f         subq.w     #$1, a7
000fdc: 4654         not.w      (a4)
000fde: 5741         subq.w     #$3, d1
000fe0: 5245         addq.w     #$1, d5
000fe2: 0d00         btst.l     d6, d0
000fe4: 436f         .dc.w      $436f
000fe6: 7079         moveq      #$79, d0
000fe8: 7269         moveq      #$69, d1
000fea: 6768         beq.b      $1054
000fec: 743a         moveq      #$3a, d2
000fee: 2031393933205068 move.l     ([$33205068, a1, d3.l]), d0
000ff6: 696c         bvs.b      $1064
000ff8: 6970         bvs.b      $106a
000ffa: 7320         .dc.w      $7320
000ffc: 456c         .dc.w      $456c
000ffe: 6563         bcs.b      $1063
001000: 7472         moveq      #$72, d2
001002: 6f6e         ble.b      $1072
001004: 6963         bvs.b      $1069
001006: 7320         .dc.w      $7320
001008: 4e2e         .dc.w      $4e2e
00100a: 562e0d00     addq.b     #$3, $d00(a6)
00100e: 7379         .dc.w      $7379
001010: 7367         .dc.w      $7367
001012: 6f3a         ble.b      $104e
001014: 2063         movea.l    -(a3), a0
001016: 616e         bsr.b      $1086
001018: 277420736574 move.l     $73(a4, d2.w), $6574(a3)
00101e: 2061         movea.l    -(a1), a0
001020: 6c61         bge.b      $1083
001022: 726d         moveq      #$6d, d1
001024: 2c20         move.l     -(a0), d6
001026: 6572         bcs.b      $109a
001028: 726e         moveq      #$6e, d1
00102a: 6f20         ble.b      $104c
00102c: 3d20         move.w     -(a0), -(a6)
00102e: 25640d00     move.l     -(a4), $d00(a2)
001032: 7379         .dc.w      $7379
001034: 7367         .dc.w      $7367
001036: 6f3a         ble.b      $1072
001038: 2066         movea.l    -(a6), a0
00103a: 6f72         ble.b      $10ae
00103c: 6b69         bmi.b      $10a7
00103e: 6e67         bgt.b      $10a7
001040: 20736865     movea.l    $65(a3, d6.l), a0
001044: 6c6c         bge.b      $10b2
001046: 0d00         btst.l     d6, d0
001048: 7379         .dc.w      $7379
00104a: 7367         .dc.w      $7367
00104c: 6f3a         ble.b      $1088
00104e: 2063         movea.l    -(a3), a0
001050: 616e         bsr.b      $10c0
001052: 6e6f         bgt.b      $10c3
001054: 7420         moveq      #$20, d2
001056: 666f         bne.b      $10c7
001058: 726b         moveq      #$6b, d1
00105a: 20736865     movea.l    $65(a3, d6.l), a0
00105e: 6c6c         bge.b      $10cc
001060: 0d00         btst.l     d6, d0
001062: 7375         .dc.w      $7375
001064: 7065         moveq      #$65, d0
001066: 7276         moveq      #$76, d1
001068: 6973         bvs.b      $10dd
00106a: 6f72         ble.b      $10de
00106c: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
001074: 6361         bls.b      $10d7
001076: 6e6e         bgt.b      $10e6
001078: 6f74         ble.b      $10ee
00107a: 2067         movea.l    -(a7), a0
00107c: 6574         bcs.b      $10f2
00107e: 2041         movea.l    d1, a0
001080: 7263         moveq      #$63, d1
001082: 4e65         move       a5, usp
001084: 7420         moveq      #$20, d2
001086: 7374         .dc.w      $7374
001088: 6174         bsr.b      $10fe
00108a: 7573         .dc.w      $7573
00108c: 2c20         move.l     -(a0), d6
00108e: 6572         bcs.b      $1102
001090: 726e         moveq      #$6e, d1
001092: 6f20         ble.b      $10b4
001094: 3d20         move.w     -(a0), -(a6)
001096: 25640d00     move.l     -(a4), $d00(a2)
00109a: 7375         .dc.w      $7375
00109c: 7065         moveq      #$65, d0
00109e: 7276         moveq      #$76, d1
0010a0: 6973         bvs.b      $1115
0010a2: 6f72         ble.b      $1116
0010a4: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
0010ac: 756e         .dc.w      $756e
0010ae: 6578         bcs.b      $1128
0010b0: 7065         moveq      #$65, d0
0010b2: 6374         bls.b      $1128
0010b4: 6564         bcs.b      $111a
0010b6: 207369676e61 movea.l    ([$6e61, a3]), a0
0010bc: 6c20         bge.b      $10de
0010be: 2825         move.l     -(a5), d4
0010c0: 6420         bcc.b      $10e2
0010c2: 3d20         move.w     -(a0), -(a6)
0010c4: 30782578     movea.w    $2578.w, a0
0010c8: 2920         move.l     -(a0), -(a4)
0010ca: 7265         moveq      #$65, d1
0010cc: 6365         bls.b      $1133
0010ce: 6976         bvs.b      $1146
0010d0: 6564         bcs.b      $1136
0010d2: 0d00         btst.l     d6, d0
0010d4: 466f726b     not.w      $726b(a7)
0010d8: 696e         bvs.b      $1148
0010da: 6720         beq.b      $10fc
0010dc: 6e65         bgt.b      $1143
0010de: 7720         .dc.w      $7720
0010e0: 7368         .dc.w      $7368
0010e2: 656c         bcs.b      $1150
0010e4: 6c0d         bge.b      $10f3
0010e6: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
0010ee: 257320646576 move.l     $64(a3, d2.w), $6576(a2)
0010f4: 6963         bvs.b      $1159
0010f6: 6520         bcs.b      $1118
0010f8: 696e         bvs.b      $1168
0010fa: 6974         bvs.b      $1170
0010fc: 6961         bvs.b      $115f
0010fe: 6c69         bge.b      $1169
001100: 7a61         moveq      #$61, d5
001102: 7469         moveq      #$69, d2
001104: 6f6e         ble.b      $1174
001106: 2066         movea.l    -(a6), a0
001108: 6169         bsr.b      $1173
00110a: 6c65         bge.b      $1171
00110c: 640d         bcc.b      $111b
00110e: 002f63302f5f ori.b      #$30, $2f5f(a7)
001114: 32385f2f     move.w     $5f2f.w, d1
001118: 6830         bvc.b      $114a
00111a: 2f00         move.l     d0, -(a7)
00111c: 2f63302f     move.l     -(a3), $302f(a7)
001120: 5f32385f     subq.b     #$7, $5f(a2, d3.l)
001124: 2f68312f002f move.l     $312f(a0), $2f(a7)
00112a: 6330         bls.b      $115c
00112c: 2f5f3132     move.l     (a7)+, $3132(a7)
001130: 375f2f68     move.w     (a7)+, $2f68(a3)
001134: 302f002f     move.w     $2f(a7), d0
001138: 6330         bls.b      $116a
00113a: 2f5f3132     move.l     (a7)+, $3132(a7)
00113e: 375f2f68     move.w     (a7)+, $2f68(a3)
001142: 312f002f     move.w     $2f(a7), -(a0)
001146: 6330         bls.b      $1178
001148: 2f5f3132     move.l     (a7)+, $3132(a7)
00114c: 375f2f64     move.w     (a7)+, $2f64(a3)
001150: 302f002f     move.w     $2f(a7), d0
001154: 6330         bls.b      $1186
001156: 2f5f3132     move.l     (a7)+, $3132(a7)
00115a: 375f2f64     move.w     (a7)+, $2f64(a3)
00115e: 312f002f     move.w     $2f(a7), -(a0)
001162: 6364         bls.b      $11c8
001164: 2f00         move.l     d0, -(a7)
001166: 7379         .dc.w      $7379
001168: 7367         .dc.w      $7367
00116a: 6f3a         ble.b      $11a6
00116c: 2063         movea.l    -(a3), a0
00116e: 616e         bsr.b      $11de
001170: 277420736176 move.l     $73(a4, d2.w), $6176(a3)
001176: 6520         bcs.b      $1198
001178: 736c         .dc.w      $736c
00117a: 6176         bsr.b      $11f2
00117c: 6520         bcs.b      $119e
00117e: 6e6f         bgt.b      $11ef
001180: 6e2d         bgt.b      $11af
001182: 766f         moveq      #$6f, d3
001184: 6c61         bge.b      $11e7
001186: 7469         moveq      #$69, d2
001188: 6c65         bge.b      $11ef
00118a: 206d656d     movea.l    $656d(a5), a0
00118e: 6f72         ble.b      $1202
001190: 792c         .dc.w      $792c
001192: 2065         movea.l    -(a5), a0
001194: 7272         moveq      #$72, d1
001196: 6e6f         bgt.b      $1207
001198: 203d         .dc.w      $203d
00119a: 2025         move.l     -(a5), d0
00119c: 640d         bcc.b      $11ab
00119e: 002f6e767200 ori.b      #$76, $7200(a7)
0011a4: 6361         bls.b      $1207
0011a6: 6e27         bgt.b      $11cf
0011a8: 7420         moveq      #$20, d2
0011aa: 6f70         ble.b      $121c
0011ac: 656e         bcs.b      $121c
0011ae: 206e6f6e     movea.l    $6f6e(a6), a0
0011b2: 2d766f6c6174696c move.l     $6174(a6, invalid.w), $696c(a6)
0011ba: 6520         bcs.b      $11dc
0011bc: 6465         bcc.b      $1223
0011be: 7669         moveq      #$69, d3
0011c0: 6365         bls.b      $1227
0011c2: 2c20         move.l     -(a0), d6
0011c4: 6572         bcs.b      $1238
0011c6: 726e         moveq      #$6e, d1
0011c8: 6f20         ble.b      $11ea
0011ca: 3d20         move.w     -(a0), -(a6)
0011cc: 25640d00     move.l     -(a4), $d00(a2)
0011d0: 6661         bne.b      $1233
0011d2: 696c         bvs.b      $1240
0011d4: 6564         bcs.b      $123a
0011d6: 20746f207570 movea.l    $7570(a4, d6.l * 8), a0
0011dc: 6461         bcc.b      $123f
0011de: 7465         moveq      #$65, d2
0011e0: 2045         movea.l    d5, a0
0011e2: 4550         .dc.w      $4550
0011e4: 524f         addq.w     #$1, a7
0011e6: 4d2c2065     chk.l      $2065(a4), d6
0011ea: 7272         moveq      #$72, d1
0011ec: 6e6f         bgt.b      $125d
0011ee: 203d         .dc.w      $203d
0011f0: 2025         move.l     -(a5), d0
0011f2: 640d         bcc.b      $1201
0011f4: 002f63644000 ori.b      #$64, $4000(a7)
0011fa: 7379         .dc.w      $7379
0011fc: 7367         .dc.w      $7367
0011fe: 6f3a         ble.b      $123a
001200: 2063         movea.l    -(a3), a0
001202: 616e         bsr.b      $1272
001204: 2774206f7065 move.l     $6f(a4, d2.w), $7065(a3)
00120a: 6e20         bgt.b      $122c
00120c: 272f6364     move.l     $6364(a7), -(a3)
001210: 272c2065     move.l     $2065(a4), -(a3)
001214: 7272         moveq      #$72, d1
001216: 6e6f         bgt.b      $1287
001218: 203d         .dc.w      $203d
00121a: 2025         move.l     -(a5), d0
00121c: 640d         bcc.b      $122b
00121e: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
001226: 6661         bne.b      $1289
001228: 696c         bvs.b      $1296
00122a: 6564         bcs.b      $1290
00122c: 20746f206765 movea.l    $6765(a4, d6.l * 8), a0
001232: 7420         moveq      #$20, d2
001234: 6578         bcs.b      $12ae
001236: 6365         bls.b      $129d
001238: 7373         .dc.w      $7373
00123a: 6976         bvs.b      $12b2
00123c: 6520         bcs.b      $125e
00123e: 4344         .dc.w      $4344
001240: 2072657472696573 movea.l    $72696573(a2, invalid.w), a0
001248: 2c20         move.l     -(a0), d6
00124a: 6572         bcs.b      $12be
00124c: 726e         moveq      #$6e, d1
00124e: 6f20         ble.b      $1270
001250: 3d20         move.w     -(a0), -(a6)
001252: 25640d00     move.l     -(a4), $d00(a2)
001256: 7379         .dc.w      $7379
001258: 7367         .dc.w      $7367
00125a: 6f3a         ble.b      $1296
00125c: 20757064     movea.l    $64(a5, d7.w), a0
001260: 6174         bsr.b      $12d6
001262: 696e         bvs.b      $12d2
001264: 6720         beq.b      $1286
001266: 4344         .dc.w      $4344
001268: 2072657472792063 movea.l    $72792063(a2, invalid.w), a0
001270: 6f75         ble.b      $12e7
001272: 6e74         bgt.b      $12e8
001274: 2066         movea.l    -(a6), a0
001276: 6169         bsr.b      $12e1
001278: 6c65         bge.b      $12df
00127a: 642c         bcc.b      $12a8
00127c: 2065         movea.l    -(a5), a0
00127e: 7272         moveq      #$72, d1
001280: 6e6f         bgt.b      $12f1
001282: 203d         .dc.w      $203d
001284: 2025         move.l     -(a5), d0
001286: 640d         bcc.b      $1295
001288: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
001290: 6361         bls.b      $12f3
001292: 6e6e         bgt.b      $1302
001294: 6f74         ble.b      $130a
001296: 2067         movea.l    -(a7), a0
001298: 6574         bcs.b      $130e
00129a: 2065         movea.l    -(a5), a0
00129c: 7863         moveq      #$63, d4
00129e: 6573         bcs.b      $1313
0012a0: 7369         .dc.w      $7369
0012a2: 7665         moveq      #$65, d3
0012a4: 2041         movea.l    d1, a0
0012a6: 7263         moveq      #$63, d1
0012a8: 4e65         move       a5, usp
0012aa: 7420         moveq      #$20, d2
0012ac: 7265         moveq      #$65, d1
0012ae: 7472         moveq      #$72, d2
0012b0: 6965         bvs.b      $1317
0012b2: 732c         .dc.w      $732c
0012b4: 2065         movea.l    -(a5), a0
0012b6: 7272         moveq      #$72, d1
0012b8: 6e6f         bgt.b      $1329
0012ba: 203d         .dc.w      $203d
0012bc: 2025         move.l     -(a5), d0
0012be: 640d         bcc.b      $12cd
0012c0: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
0012c8: 7570         .dc.w      $7570
0012ca: 6461         bcc.b      $132d
0012cc: 7469         moveq      #$69, d2
0012ce: 6e67         bgt.b      $1337
0012d0: 2041         movea.l    d1, a0
0012d2: 7263         moveq      #$63, d1
0012d4: 4e65         move       a5, usp
0012d6: 7420         moveq      #$20, d2
0012d8: 7265         moveq      #$65, d1
0012da: 7472         moveq      #$72, d2
0012dc: 7920         .dc.w      $7920
0012de: 636f         bls.b      $134f
0012e0: 756e         .dc.w      $756e
0012e2: 7420         moveq      #$20, d2
0012e4: 6661         bne.b      $1347
0012e6: 696c         bvs.b      $1354
0012e8: 6564         bcs.b      $134e
0012ea: 2c20         move.l     -(a0), d6
0012ec: 6572         bcs.b      $1360
0012ee: 726e         moveq      #$6e, d1
0012f0: 6f20         ble.b      $1312
0012f2: 3d20         move.w     -(a0), -(a6)
0012f4: 25640d00     move.l     -(a4), $d00(a2)
0012f8: 6330         bls.b      $132a
0012fa: 00666169     ori.w      #$6169, -(a6)
0012fe: 6c65         bge.b      $1365
001300: 6420         bcc.b      $1322
001302: 746f         moveq      #$6f, d2
001304: 2073746f     movea.l    $6f(a3, d7.w), a0
001308: 702c         moveq      #$2c, d0
00130a: 2065         movea.l    -(a5), a0
00130c: 7272         moveq      #$72, d1
00130e: 6e6f         bgt.b      $137f
001310: 203d         .dc.w      $203d
001312: 2025         move.l     -(a5), d0
001314: 640d         bcc.b      $1323
001316: 00666169     ori.w      #$6169, -(a6)
00131a: 6c65         bge.b      $1381
00131c: 6420         bcc.b      $133e
00131e: 746f         moveq      #$6f, d2
001320: 20736875     movea.l    $75(a3, d6.l), a0
001324: 7464         moveq      #$64, d2
001326: 6f77         ble.b      $139f
001328: 6e2c         bgt.b      $1356
00132a: 2065         movea.l    -(a5), a0
00132c: 7272         moveq      #$72, d1
00132e: 6e6f         bgt.b      $139f
001330: 203d         .dc.w      $203d
001332: 2025         move.l     -(a5), d0
001334: 640d         bcc.b      $1343
001336: 007368656c6c ori.w      #$6865, $6c(a3, d6.l)
00133c: 002d6e707874 ori.b      #$70, $7874(a5)
001342: 002f6e76722f ori.b      #$76, $722f(a7)
001348: 7374         .dc.w      $7374
00134a: 6172         bsr.b      $13be
00134c: 7475         moveq      #$75, d2
00134e: 7000         moveq      #$0, d0
001350: 6361         bls.b      $13b3
001352: 6e27         bgt.b      $137b
001354: 7420         moveq      #$20, d2
001356: 6f70         ble.b      $13c8
001358: 656e         bcs.b      $13c8
00135a: 2070726f     movea.l    $6f(a0, d7.w), a0
00135e: 632e         bls.b      $138e
001360: 2066         movea.l    -(a6), a0
001362: 696c         bvs.b      $13d0
001364: 650d         bcs.b      $1373
001366: 0043616e     ori.w      #$616e, d3
00136a: 277420666f72 move.l     $66(a4, d2.w), $6f72(a3)
001370: 6b20         bmi.b      $1392
001372: 7368         .dc.w      $7368
001374: 656c         bcs.b      $13e2
001376: 6c0d         bge.b      $1385
001378: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
001380: 4361         .dc.w      $4361
001382: 6e6e         bgt.b      $13f2
001384: 6f74         ble.b      $13fa
001386: 206c6f67     movea.l    $6f67(a4), a0
00138a: 2053         movea.l    (a3), a0
00138c: 5720         subq.b     #$3, -(a0)
00138e: 6572         bcs.b      $1402
001390: 726f         moveq      #$6f, d1
001392: 720d         moveq      #$d, d1
001394: 00737973676f3a20 ori.w      #$7973, ([$3a20, a3])
00139c: 4361         .dc.w      $4361
00139e: 6e6e         bgt.b      $140e
0013a0: 6f74         ble.b      $1416
0013a2: 206c6f67     movea.l    $6f67(a4), a0
0013a6: 2048         movea.l    a0, a0
0013a8: 5720         subq.b     #$3, -(a0)
0013aa: 6572         bcs.b      $141e
0013ac: 726f         moveq      #$6f, d1
0013ae: 720d         moveq      #$d, d1
0013b0: 000048e7     ori.b      #$e7, d0
0013b4: 6080         bra.b      $1336
0013b6: c141         exg.l      d0, d1
0013b8: 0c8100000002 cmpi.l     #$2, d1
0013be: 6714         beq.b      $13d4
0013c0: 0c8100000005 cmpi.l     #$5, d1
0013c6: 670c         beq.b      $13d4
0013c8: 206f0010     movea.l    $10(a7), a0
0013cc: 2408         move.l     a0, d2
0013ce: 4e40         trap       #$0
0013d0: 008d         .dc.w      $008d
0013d2: 604e         bra.b      $1422
0013d4: 4e40         trap       #$0
0013d6: 008d         .dc.w      $008d
0013d8: 655c         bcs.b      $1436
0013da: 2002         move.l     d2, d0
0013dc: 4cdf0106     movem.l    (a7)+, d1-d2/a0
0013e0: 4e75         rts        
0013e2: 48e77080     movem.l    d1-d3/a0, -(a7)
0013e6: c141         exg.l      d0, d1
0013e8: 206f0014     movea.l    $14(a7), a0
0013ec: 242f0018     move.l     $18(a7), d2
0013f0: 262f001c     move.l     $1c(a7), d3
0013f4: 4e40         trap       #$0
0013f6: 008d         .dc.w      $008d
0013f8: 6032         bra.b      $142c
0013fa: 48e76080     movem.l    d1-d2/a0, -(a7)
0013fe: c141         exg.l      d0, d1
001400: 206f0010     movea.l    $10(a7), a0
001404: 2408         move.l     a0, d2
001406: 4e40         trap       #$0
001408: 008e         .dc.w      $008e
00140a: 6016         bra.b      $1422
00140c: 48e76080     movem.l    d1-d2/a0, -(a7)
001410: c141         exg.l      d0, d1
001412: 206f0010     movea.l    $10(a7), a0
001416: 242f0014     move.l     $14(a7), d2
00141a: 4e40         trap       #$0
00141c: 008e         .dc.w      $008e
00141e: 60000002     bra.w      $1422
001422: 6512         bcs.b      $1436
001424: 2001         move.l     d1, d0
001426: 4cdf0106     movem.l    (a7)+, d1-d2/a0
00142a: 4e75         rts        
00142c: 6510         bcs.b      $143e
00142e: 2001         move.l     d1, d0
001430: 4cdf010e     movem.l    (a7)+, d1-d3/a0
001434: 4e75         rts        
001436: 2d41800c     move.l     d1, -$7ff4(a6)
00143a: 70ff         moveq      #$ff, d0
00143c: 60e8         bra.b      $1426
00143e: 2d41800c     move.l     d1, -$7ff4(a6)
001442: 70ff         moveq      #$ff, d0
001444: 60ea         bra.b      $1430
001446: 48e76080     movem.l    d1-d2/a0, -(a7)
00144a: c141         exg.l      d0, d1
00144c: 0c8100000002 cmpi.l     #$2, d1
001452: 6714         beq.b      $1468
001454: 0c8100000005 cmpi.l     #$5, d1
00145a: 670c         beq.b      $1468
00145c: 206f0010     movea.l    $10(a7), a0
001460: 2408         move.l     a0, d2
001462: 4e40         trap       #$0
001464: 008d         .dc.w      $008d
001466: 604e         bra.b      $14b6
001468: 4e40         trap       #$0
00146a: 008d         .dc.w      $008d
00146c: 655c         bcs.b      $14ca
00146e: 2002         move.l     d2, d0
001470: 4cdf0106     movem.l    (a7)+, d1-d2/a0
001474: 4e75         rts        
001476: 48e77080     movem.l    d1-d3/a0, -(a7)
00147a: c141         exg.l      d0, d1
00147c: 206f0014     movea.l    $14(a7), a0
001480: 242f0018     move.l     $18(a7), d2
001484: 262f001c     move.l     $1c(a7), d3
001488: 4e40         trap       #$0
00148a: 008d         .dc.w      $008d
00148c: 6032         bra.b      $14c0
00148e: 48e76080     movem.l    d1-d2/a0, -(a7)
001492: c141         exg.l      d0, d1
001494: 206f0010     movea.l    $10(a7), a0
001498: 2408         move.l     a0, d2
00149a: 4e40         trap       #$0
00149c: 008e         .dc.w      $008e
00149e: 6016         bra.b      $14b6
0014a0: 48e76080     movem.l    d1-d2/a0, -(a7)
0014a4: c141         exg.l      d0, d1
0014a6: 206f0010     movea.l    $10(a7), a0
0014aa: 242f0014     move.l     $14(a7), d2
0014ae: 4e40         trap       #$0
0014b0: 008e         .dc.w      $008e
0014b2: 60000002     bra.w      $14b6
0014b6: 6512         bcs.b      $14ca
0014b8: 2001         move.l     d1, d0
0014ba: 4cdf0106     movem.l    (a7)+, d1-d2/a0
0014be: 4e75         rts        
0014c0: 650c         bcs.b      $14ce
0014c2: 2001         move.l     d1, d0
0014c4: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0014c8: 4e75         rts        
0014ca: 70ff         moveq      #$ff, d0
0014cc: 60ec         bra.b      $14ba
0014ce: 70ff         moveq      #$ff, d0
0014d0: 60f2         bra.b      $14c4
0014d2: 2f01         move.l     d1, -(a7)
0014d4: 4e40         trap       #$0
0014d6: 008f         .dc.w      $008f
0014d8: 6504         bcs.b      $14de
0014da: 221f         move.l     (a7)+, d1
0014dc: 4e75         rts        
0014de: 4280         clr.l      d0
0014e0: 3001         move.w     d1, d0
0014e2: 4480         neg.l      d0
0014e4: 4cdf0002     movem.l    (a7)+, d1
0014e8: 4e75         rts        
0014ea: 48e74080     movem.l    d1/a0, -(a7)
0014ee: 2040         movea.l    d0, a0
0014f0: 2001         move.l     d1, d0
0014f2: 4e40         trap       #$0
0014f4: 008465064cdf ori.l      #$65064cdf, d4
0014fa: 0102         btst.l     d0, d2
0014fc: 4e75         rts        
0014fe: 4280         clr.l      d0
001500: 3001         move.w     d1, d0
001502: 4480         neg.l      d0
001504: 4cdf0102     movem.l    (a7)+, d1/a0
001508: 4e75         rts        
00150a: 4e550000     link.w     a5, #$0
00150e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001512: 598f         subq.l     #$4, a7
001514: 202f0004     move.l     $4(a7), d0
001518: 5880         addq.l     #$4, d0
00151a: 2e80         move.l     d0, (a7)
00151c: 60ff00000042 bra.l      $1560
001522: 2057         movea.l    (a7), a0
001524: 4a90         tst.l      (a0)
001526: 67ff0000000e beq.l      $1536
00152c: 2017         move.l     (a7), d0
00152e: 588f         addq.l     #$4, a7
001530: 60ff00000042 bra.l      $1574
001536: 202f0004     move.l     $4(a7), d0
00153a: 5880         addq.l     #$4, d0
00153c: 206f0004     movea.l    $4(a7), a0
001540: 3210         move.w     (a0), d1
001542: 48c1         ext.l      d1
001544: 5381         subq.l     #$1, d1
001546: e589         lsl.l      #$2, d1
001548: d081         add.l      d1, d0
00154a: b097         cmp.l      (a7), d0
00154c: 63ff0000000e bls.l      $155c
001552: 2057         movea.l    (a7), a0
001554: 41e80004     lea.l      $4(a0), a0
001558: 60000004     bra.w      $155e
00155c: 91c8         suba.l     a0, a0
00155e: 2e88         move.l     a0, (a7)
001560: 4a97         tst.l      (a7)
001562: 66ffffffffbe bne.l      $1522
001568: 7000         moveq      #$0, d0
00156a: 588f         addq.l     #$4, a7
00156c: 60ff00000006 bra.l      $1574
001572: 4e71         nop        
001574: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00157a: 4e5d         unlk       a5
00157c: 4e75         rts        
00157e: 4e550000     link.w     a5, #$0
001582: 48e7c080     movem.l    d0-d1/a0, -(a7)
001586: 2017         move.l     (a7), d0
001588: 5880         addq.l     #$4, d0
00158a: 2057         movea.l    (a7), a0
00158c: 3210         move.w     (a0), d1
00158e: 48c1         ext.l      d1
001590: 5381         subq.l     #$1, d1
001592: e589         lsl.l      #$2, d1
001594: d081         add.l      d1, d0
001596: b0af0004     cmp.l      $4(a7), d0
00159a: 63ff00000010 bls.l      $15ac
0015a0: 206f0004     movea.l    $4(a7), a0
0015a4: 41e80004     lea.l      $4(a0), a0
0015a8: 60000004     bra.w      $15ae
0015ac: 91c8         suba.l     a0, a0
0015ae: 2f480004     move.l     a0, $4(a7)
0015b2: 60ff00000046 bra.l      $15fa
0015b8: 206f0004     movea.l    $4(a7), a0
0015bc: 4a90         tst.l      (a0)
0015be: 67ff0000000e beq.l      $15ce
0015c4: 202f0004     move.l     $4(a7), d0
0015c8: 60ff00000044 bra.l      $160e
0015ce: 2017         move.l     (a7), d0
0015d0: 5880         addq.l     #$4, d0
0015d2: 2057         movea.l    (a7), a0
0015d4: 3210         move.w     (a0), d1
0015d6: 48c1         ext.l      d1
0015d8: 5381         subq.l     #$1, d1
0015da: e589         lsl.l      #$2, d1
0015dc: d081         add.l      d1, d0
0015de: b0af0004     cmp.l      $4(a7), d0
0015e2: 63ff00000010 bls.l      $15f4
0015e8: 206f0004     movea.l    $4(a7), a0
0015ec: 41e80004     lea.l      $4(a0), a0
0015f0: 60000004     bra.w      $15f6
0015f4: 91c8         suba.l     a0, a0
0015f6: 2f480004     move.l     a0, $4(a7)
0015fa: 4aaf0004     tst.l      $4(a7)
0015fe: 66ffffffffb8 bne.l      $15b8
001604: 7000         moveq      #$0, d0
001606: 60ff00000006 bra.l      $160e
00160c: 4e71         nop        
00160e: 4ced0100fffc movem.l    -$4(a5), a0
001614: 4e5d         unlk       a5
001616: 4e75         rts        
001618: 4e550000     link.w     a5, #$0
00161c: 48e7c000     movem.l    d0-d1, -(a7)
001620: 518f         subq.l     #$8, a7
001622: 42af0004     clr.l      $4(a7)
001626: 202f0008     move.l     $8(a7), d0
00162a: 61fffffffede bsr.l      $150a
001630: 2e80         move.l     d0, (a7)
001632: 60ff00000016 bra.l      $164a
001638: 52af0004     addq.l     #$1, $4(a7)
00163c: 2217         move.l     (a7), d1
00163e: 202f0008     move.l     $8(a7), d0
001642: 61ffffffff3a bsr.l      $157e
001648: 2e80         move.l     d0, (a7)
00164a: 4a97         tst.l      (a7)
00164c: 66ffffffffea bne.l      $1638
001652: 202f0004     move.l     $4(a7), d0
001656: 508f         addq.l     #$8, a7
001658: 60ff00000006 bra.l      $1660
00165e: 4e71         nop        
001660: 4ced0002fffc movem.l    -$4(a5), d1
001666: 4e5d         unlk       a5
001668: 4e75         rts        
00166a: 4e550000     link.w     a5, #$0
00166e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001672: 598f         subq.l     #$4, a7
001674: 202f0004     move.l     $4(a7), d0
001678: 61fffffffe90 bsr.l      $150a
00167e: 2e80         move.l     d0, (a7)
001680: 60ff0000002e bra.l      $16b0
001686: 2057         movea.l    (a7), a0
001688: 2050         movea.l    (a0), a0
00168a: 302f000a     move.w     $a(a7), d0
00168e: b050         cmp.w      (a0), d0
001690: 66ff00000010 bne.l      $16a2
001696: 2057         movea.l    (a7), a0
001698: 2010         move.l     (a0), d0
00169a: 588f         addq.l     #$4, a7
00169c: 60ff0000001c bra.l      $16ba
0016a2: 2217         move.l     (a7), d1
0016a4: 202f0004     move.l     $4(a7), d0
0016a8: 61fffffffed4 bsr.l      $157e
0016ae: 2e80         move.l     d0, (a7)
0016b0: 4a97         tst.l      (a7)
0016b2: 66ffffffffd2 bne.l      $1686
0016b8: 588f         addq.l     #$4, a7
0016ba: 4ced0100fffc movem.l    -$4(a5), a0
0016c0: 4e5d         unlk       a5
0016c2: 4e75         rts        
0016c4: 48e700a0     movem.l    a0/a2, -(a7)
0016c8: 2f01         move.l     d1, -(a7)
0016ca: 4e40         trap       #$0
0016cc: 0028650c205f ori.b      #$c, $205f(a0)
0016d2: 2080         move.l     d0, (a0)
0016d4: 200a         move.l     a2, d0
0016d6: 4cdf0500     movem.l    (a7)+, a0/a2
0016da: 4e75         rts        
0016dc: 4280         clr.l      d0
0016de: 3001         move.w     d1, d0
0016e0: 205f         movea.l    (a7)+, a0
0016e2: 2080         move.l     d0, (a0)
0016e4: 4280         clr.l      d0
0016e6: 4cdf0500     movem.l    (a7)+, a0/a2
0016ea: 4e75         rts        
0016ec: 48e700a0     movem.l    a0/a2, -(a7)
0016f0: 4e40         trap       #$0
0016f2: 005c650e     ori.w      #$650e, (a4)+
0016f6: 206f000c     movea.l    $c(a7), a0
0016fa: 2080         move.l     d0, (a0)
0016fc: 200a         move.l     a2, d0
0016fe: 4cdf0500     movem.l    (a7)+, a0/a2
001702: 4e75         rts        
001704: 4280         clr.l      d0
001706: 3001         move.w     d1, d0
001708: 206f000c     movea.l    $c(a7), a0
00170c: 2080         move.l     d0, (a0)
00170e: 4280         clr.l      d0
001710: 4cdf0500     movem.l    (a7)+, a0/a2
001714: 4e75         rts        
001716: 2f0a         move.l     a2, -(a7)
001718: 2441         movea.l    d1, a2
00171a: 4e40         trap       #$0
00171c: 0029245f6504 ori.b      #$5f, $6504(a1)
001722: 4280         clr.l      d0
001724: 4e75         rts        
001726: 4280         clr.l      d0
001728: 3001         move.w     d1, d0
00172a: 4e75         rts        
00172c: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
001730: 242f001c     move.l     $1c(a7), d2
001734: 262f0020     move.l     $20(a7), d3
001738: 282f0024     move.l     $24(a7), d4
00173c: 206f0028     movea.l    $28(a7), a0
001740: 226f002c     movea.l    $2c(a7), a1
001744: 4e40         trap       #$0
001746: 00036506     ori.b      #$6, d3
00174a: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
00174e: 4e75         rts        
001750: 4280         clr.l      d0
001752: 60f6         bra.b      $174a
001754: 48e74000     movem.l    d1, -(a7)
001758: 4e40         trap       #$0
00175a: 0008         .dc.w      $0008
00175c: 600000be     bra.w      $181c
001760: 48e76000     movem.l    d1-d2, -(a7)
001764: 008180000000 ori.l      #$80000000, d1
00176a: 4e40         trap       #$0
00176c: 00276000     ori.b      #$0, -(a7)
001770: 00a248e76000 ori.l      #$48e76000, -(a2)
001776: 242f000c     move.l     $c(a7), d2
00177a: 4e40         trap       #$0
00177c: 00276000     ori.b      #$0, -(a7)
001780: 009248e74000 ori.l      #$48e74000, (a2)
001786: e180         asl.l      #$8, d0
001788: 008080000000 ori.l      #$80000000, d0
00178e: 4e40         trap       #$0
001790: 000a         .dc.w      $000a
001792: 60000092     bra.w      $1826
001796: 48e74000     movem.l    d1, -(a7)
00179a: 4e40         trap       #$0
00179c: 000a         .dc.w      $000a
00179e: 60000086     bra.w      $1826
0017a2: 48e74080     movem.l    d1/a0, -(a7)
0017a6: 2040         movea.l    d0, a0
0017a8: 2001         move.l     d1, d0
0017aa: 222f000c     move.l     $c(a7), d1
0017ae: 4e40         trap       #$0
0017b0: 0017607a     ori.b      #$7a, (a7)
0017b4: 48e77080     movem.l    d1-d3/a0, -(a7)
0017b8: 2041         movea.l    d1, a0
0017ba: 4e40         trap       #$0
0017bc: 0015651c     ori.b      #$1c, (a5)
0017c0: 2080         move.l     d0, (a0)
0017c2: 206f0014     movea.l    $14(a7), a0
0017c6: 2081         move.l     d1, (a0)
0017c8: 206f0018     movea.l    $18(a7), a0
0017cc: 3082         move.w     d2, (a0)
0017ce: 206f001c     movea.l    $1c(a7), a0
0017d2: 2083         move.l     d3, (a0)
0017d4: 4280         clr.l      d0
0017d6: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0017da: 4e75         rts        
0017dc: 4280         clr.l      d0
0017de: 3001         move.w     d1, d0
0017e0: 60f4         bra.b      $17d6
0017e2: 48e77000     movem.l    d1-d3, -(a7)
0017e6: 7003         moveq      #$3, d0
0017e8: 4e40         trap       #$0
0017ea: 0015604c     ori.b      #$4c, (a5)
0017ee: 48e77000     movem.l    d1-d3, -(a7)
0017f2: 7000         moveq      #$0, d0
0017f4: 4e40         trap       #$0
0017f6: 0015604c     ori.b      #$4c, (a5)
0017fa: 48e77000     movem.l    d1-d3, -(a7)
0017fe: 7000         moveq      #$0, d0
001800: 4e40         trap       #$0
001802: 00156048     ori.b      #$48, (a5)
001806: 48e77000     movem.l    d1-d3, -(a7)
00180a: 7000         moveq      #$0, d0
00180c: 4e40         trap       #$0
00180e: 00156040     ori.b      #$40, (a5)
001812: 6544         bcs.b      $1858
001814: 2002         move.l     d2, d0
001816: 4cdf0006     movem.l    (a7)+, d1-d2
00181a: 4e75         rts        
00181c: 654a         bcs.b      $1868
00181e: 4280         clr.l      d0
001820: 4cdf0002     movem.l    (a7)+, d1
001824: 4e75         rts        
001826: 6540         bcs.b      $1868
001828: 4cdf0002     movem.l    (a7)+, d1
00182c: 4e75         rts        
00182e: 6530         bcs.b      $1860
001830: 2f41000c     move.l     d1, $c(a7)
001834: 4cdf0102     movem.l    (a7)+, d1/a0
001838: 4e75         rts        
00183a: 6534         bcs.b      $1870
00183c: 4280         clr.l      d0
00183e: 3003         move.w     d3, d0
001840: 4cdf000e     movem.l    (a7)+, d1-d3
001844: 4e75         rts        
001846: 6528         bcs.b      $1870
001848: 4280         clr.l      d0
00184a: 3002         move.w     d2, d0
00184c: 60f2         bra.b      $1840
00184e: 6520         bcs.b      $1870
001850: 60ee         bra.b      $1840
001852: 651c         bcs.b      $1870
001854: 2001         move.l     d1, d0
001856: 60e8         bra.b      $1840
001858: 203cffffffff move.l     #$ffffffff, d0
00185e: 60b6         bra.b      $1816
001860: 4280         clr.l      d0
001862: 3001         move.w     d1, d0
001864: 4480         neg.l      d0
001866: 60cc         bra.b      $1834
001868: 4280         clr.l      d0
00186a: 3001         move.w     d1, d0
00186c: 4480         neg.l      d0
00186e: 60b0         bra.b      $1820
001870: 4280         clr.l      d0
001872: 3001         move.w     d1, d0
001874: 4480         neg.l      d0
001876: 60c8         bra.b      $1840
001878: 4e550000     link.w     a5, #$0
00187c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001880: 203cffffffb8 move.l     #$ffffffb8, d0
001886: 6100e8e2     bsr.w      $16a
00188a: 4aae841c     tst.l      -$7be4(a6)
00188e: 6c00001c     bge.w      $18ac
001892: 7203         moveq      #$3, d1
001894: 41fa0336     lea.l      $1bcc(pc), a0
001898: 2008         move.l     a0, d0
00189a: 61000bd4     bsr.w      $2470
00189e: 2d40841c     move.l     d0, -$7be4(a6)
0018a2: 6c000008     bge.w      $18ac
0018a6: 70ff         moveq      #$ff, d0
0018a8: 6000001a     bra.w      $18c4
0018ac: 42a7         clr.l      -(a7)
0018ae: 222e841c     move.l     -$7be4(a6), d1
0018b2: 203c00000704 move.l     #$704, d0
0018b8: 6100faf8     bsr.w      $13b2
0018bc: 588f         addq.l     #$4, a7
0018be: 60000004     bra.w      $18c4
0018c2: 4e71         nop        
0018c4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0018ca: 4e5d         unlk       a5
0018cc: 4e75         rts        
0018ce: 4e550000     link.w     a5, #$0
0018d2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0018d6: 203cffffffb8 move.l     #$ffffffb8, d0
0018dc: 6100e88c     bsr.w      $16a
0018e0: 4aae841c     tst.l      -$7be4(a6)
0018e4: 6c00001c     bge.w      $1902
0018e8: 7203         moveq      #$3, d1
0018ea: 41fa02e9     lea.l      $1bd5(pc), a0
0018ee: 2008         move.l     a0, d0
0018f0: 61000b7e     bsr.w      $2470
0018f4: 2d40841c     move.l     d0, -$7be4(a6)
0018f8: 6c000008     bge.w      $1902
0018fc: 70ff         moveq      #$ff, d0
0018fe: 6000001a     bra.w      $191a
001902: 42a7         clr.l      -(a7)
001904: 222e841c     move.l     -$7be4(a6), d1
001908: 203c00000703 move.l     #$703, d0
00190e: 6100faa2     bsr.w      $13b2
001912: 588f         addq.l     #$4, a7
001914: 60000004     bra.w      $191a
001918: 4e71         nop        
00191a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001920: 4e5d         unlk       a5
001922: 4e75         rts        
001924: 4e550000     link.w     a5, #$0
001928: 48e7c080     movem.l    d0-d1/a0, -(a7)
00192c: 203cffffffb8 move.l     #$ffffffb8, d0
001932: 6100e836     bsr.w      $16a
001936: 4aae841c     tst.l      -$7be4(a6)
00193a: 6c00001c     bge.w      $1958
00193e: 7203         moveq      #$3, d1
001940: 41fa029c     lea.l      $1bde(pc), a0
001944: 2008         move.l     a0, d0
001946: 61000b28     bsr.w      $2470
00194a: 2d40841c     move.l     d0, -$7be4(a6)
00194e: 6c000008     bge.w      $1958
001952: 70ff         moveq      #$ff, d0
001954: 6000001a     bra.w      $1970
001958: 42a7         clr.l      -(a7)
00195a: 222e841c     move.l     -$7be4(a6), d1
00195e: 203c00000702 move.l     #$702, d0
001964: 6100fa4c     bsr.w      $13b2
001968: 588f         addq.l     #$4, a7
00196a: 60000004     bra.w      $1970
00196e: 4e71         nop        
001970: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001976: 4e5d         unlk       a5
001978: 4e75         rts        
00197a: 4e550000     link.w     a5, #$0
00197e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001982: 203cffffffb8 move.l     #$ffffffb8, d0
001988: 6100e7e0     bsr.w      $16a
00198c: 4aae841c     tst.l      -$7be4(a6)
001990: 6c00001c     bge.w      $19ae
001994: 7203         moveq      #$3, d1
001996: 41fa024f     lea.l      $1be7(pc), a0
00199a: 2008         move.l     a0, d0
00199c: 61000ad2     bsr.w      $2470
0019a0: 2d40841c     move.l     d0, -$7be4(a6)
0019a4: 6c000008     bge.w      $19ae
0019a8: 70ff         moveq      #$ff, d0
0019aa: 60000022     bra.w      $19ce
0019ae: 102f0003     move.b     $3(a7), d0
0019b2: 4880         ext.w      d0
0019b4: 48c0         ext.l      d0
0019b6: 2f00         move.l     d0, -(a7)
0019b8: 222e841c     move.l     -$7be4(a6), d1
0019bc: 203c00000700 move.l     #$700, d0
0019c2: 6100fa36     bsr.w      $13fa
0019c6: 588f         addq.l     #$4, a7
0019c8: 60000004     bra.w      $19ce
0019cc: 4e71         nop        
0019ce: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0019d4: 4e5d         unlk       a5
0019d6: 4e75         rts        
0019d8: 4e550000     link.w     a5, #$0
0019dc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0019e0: 203cffffffb4 move.l     #$ffffffb4, d0
0019e6: 6100e782     bsr.w      $16a
0019ea: 598f         subq.l     #$4, a7
0019ec: 4aae841c     tst.l      -$7be4(a6)
0019f0: 6c00001e     bge.w      $1a10
0019f4: 7203         moveq      #$3, d1
0019f6: 41fa01f8     lea.l      $1bf0(pc), a0
0019fa: 2008         move.l     a0, d0
0019fc: 61000a72     bsr.w      $2470
001a00: 2d40841c     move.l     d0, -$7be4(a6)
001a04: 6c00000a     bge.w      $1a10
001a08: 70ff         moveq      #$ff, d0
001a0a: 588f         addq.l     #$4, a7
001a0c: 6000002e     bra.w      $1a3c
001a10: 42a7         clr.l      -(a7)
001a12: 222e841c     move.l     -$7be4(a6), d1
001a16: 203c00000701 move.l     #$701, d0
001a1c: 6100f9dc     bsr.w      $13fa
001a20: 588f         addq.l     #$4, a7
001a22: 2e80         move.l     d0, (a7)
001a24: 4a97         tst.l      (a7)
001a26: 6700000a     beq.w      $1a32
001a2a: 2017         move.l     (a7), d0
001a2c: 588f         addq.l     #$4, a7
001a2e: 6000000c     bra.w      $1a3c
001a32: 7000         moveq      #$0, d0
001a34: 588f         addq.l     #$4, a7
001a36: 60000004     bra.w      $1a3c
001a3a: 4e71         nop        
001a3c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001a42: 4e5d         unlk       a5
001a44: 4e75         rts        
001a46: 4e550000     link.w     a5, #$0
001a4a: 48e7c080     movem.l    d0-d1/a0, -(a7)
001a4e: 203cffffffb8 move.l     #$ffffffb8, d0
001a54: 6100e714     bsr.w      $16a
001a58: 4aae841c     tst.l      -$7be4(a6)
001a5c: 6c00001c     bge.w      $1a7a
001a60: 7203         moveq      #$3, d1
001a62: 41fa0195     lea.l      $1bf9(pc), a0
001a66: 2008         move.l     a0, d0
001a68: 61000a06     bsr.w      $2470
001a6c: 2d40841c     move.l     d0, -$7be4(a6)
001a70: 6c000008     bge.w      $1a7a
001a74: 70ff         moveq      #$ff, d0
001a76: 6000001a     bra.w      $1a92
001a7a: 42a7         clr.l      -(a7)
001a7c: 222e841c     move.l     -$7be4(a6), d1
001a80: 203c00000706 move.l     #$706, d0
001a86: 6100f972     bsr.w      $13fa
001a8a: 588f         addq.l     #$4, a7
001a8c: 60000004     bra.w      $1a92
001a90: 4e71         nop        
001a92: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001a98: 4e5d         unlk       a5
001a9a: 4e75         rts        
001a9c: 4e550000     link.w     a5, #$0
001aa0: 48e7c080     movem.l    d0-d1/a0, -(a7)
001aa4: 203cffffffb8 move.l     #$ffffffb8, d0
001aaa: 6100e6be     bsr.w      $16a
001aae: 4aae841c     tst.l      -$7be4(a6)
001ab2: 6c00001c     bge.w      $1ad0
001ab6: 7203         moveq      #$3, d1
001ab8: 41fa0148     lea.l      $1c02(pc), a0
001abc: 2008         move.l     a0, d0
001abe: 610009b0     bsr.w      $2470
001ac2: 2d40841c     move.l     d0, -$7be4(a6)
001ac6: 6c000008     bge.w      $1ad0
001aca: 70ff         moveq      #$ff, d0
001acc: 6000001a     bra.w      $1ae8
001ad0: 42a7         clr.l      -(a7)
001ad2: 222e841c     move.l     -$7be4(a6), d1
001ad6: 203c00000705 move.l     #$705, d0
001adc: 6100f91c     bsr.w      $13fa
001ae0: 588f         addq.l     #$4, a7
001ae2: 60000004     bra.w      $1ae8
001ae6: 4e71         nop        
001ae8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001aee: 4e5d         unlk       a5
001af0: 4e75         rts        
001af2: 4e550000     link.w     a5, #$0
001af6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001afa: 203cffffffb4 move.l     #$ffffffb4, d0
001b00: 6100e668     bsr.w      $16a
001b04: 598f         subq.l     #$4, a7
001b06: 4aae841c     tst.l      -$7be4(a6)
001b0a: 6c00001e     bge.w      $1b2a
001b0e: 7203         moveq      #$3, d1
001b10: 41fa00f9     lea.l      $1c0b(pc), a0
001b14: 2008         move.l     a0, d0
001b16: 61000958     bsr.w      $2470
001b1a: 2d40841c     move.l     d0, -$7be4(a6)
001b1e: 6c00000a     bge.w      $1b2a
001b22: 70ff         moveq      #$ff, d0
001b24: 588f         addq.l     #$4, a7
001b26: 60000096     bra.w      $1bbe
001b2a: 42a7         clr.l      -(a7)
001b2c: 222e841c     move.l     -$7be4(a6), d1
001b30: 203c0000070c move.l     #$70c, d0
001b36: 6100f87a     bsr.w      $13b2
001b3a: 588f         addq.l     #$4, a7
001b3c: 4a80         tst.l      d0
001b3e: 6700000a     beq.w      $1b4a
001b42: 70ff         moveq      #$ff, d0
001b44: 588f         addq.l     #$4, a7
001b46: 60000076     bra.w      $1bbe
001b4a: 4aae8420     tst.l      -$7be0(a6)
001b4e: 66000026     bne.w      $1b76
001b52: 42a7         clr.l      -(a7)
001b54: 223c00000082 move.l     #$82, d1
001b5a: 203c0000008a move.l     #$8a, d0
001b60: 61000154     bsr.w      $1cb6
001b64: 588f         addq.l     #$4, a7
001b66: 2d408420     move.l     d0, -$7be0(a6)
001b6a: 6600000a     bne.w      $1b76
001b6e: 70ff         moveq      #$ff, d0
001b70: 588f         addq.l     #$4, a7
001b72: 6000004a     bra.w      $1bbe
001b76: 48780002     pea.l      $2.w
001b7a: 41ef0004     lea.l      $4(a7), a0
001b7e: 2208         move.l     a0, d1
001b80: 202e8420     move.l     -$7be0(a6), d0
001b84: 610002de     bsr.w      $1e64
001b88: 588f         addq.l     #$4, a7
001b8a: 7202         moveq      #$2, d1
001b8c: b280         cmp.l      d0, d1
001b8e: 6700000a     beq.w      $1b9a
001b92: 70ff         moveq      #$ff, d0
001b94: 588f         addq.l     #$4, a7
001b96: 60000026     bra.w      $1bbe
001b9a: 7000         moveq      #$0, d0
001b9c: 302f0002     move.w     $2(a7), d0
001ba0: 7264         moveq      #$64, d1
001ba2: 61000a86     bsr.w      $262a
001ba6: 206f0004     movea.l    $4(a7), a0
001baa: 2080         move.l     d0, (a0)
001bac: 3057         movea.w    (a7), a0
001bae: 226f0008     movea.l    $8(a7), a1
001bb2: 2288         move.l     a0, (a1)
001bb4: 7000         moveq      #$0, d0
001bb6: 588f         addq.l     #$4, a7
001bb8: 60000004     bra.w      $1bbe
001bbc: 4e71         nop        
001bbe: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001bc4: 4e5d         unlk       a5
001bc6: 4e75         rts        
001bc8: 4afb         .dc.w      $4afb
001bca: 0048         .dc.w      $0048
001bcc: 2f685f697463 move.l     $5f69(a0), $7463(a7)
001bd2: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
001bd8: 6974         bvs.b      $1c4e
001bda: 632f         bls.b      $1c0b
001bdc: 7200         moveq      #$0, d1
001bde: 2f685f697463 move.l     $5f69(a0), $7463(a7)
001be4: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
001bea: 6974         bvs.b      $1c60
001bec: 632f         bls.b      $1c1d
001bee: 7200         moveq      #$0, d1
001bf0: 2f685f697463 move.l     $5f69(a0), $7463(a7)
001bf6: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
001bfc: 6974         bvs.b      $1c72
001bfe: 632f         bls.b      $1c2f
001c00: 7200         moveq      #$0, d1
001c02: 2f685f697463 move.l     $5f69(a0), $7463(a7)
001c08: 2f72002f685f move.l     $2f(a2, d0.w), $685f(a7)
001c0e: 6974         bvs.b      $1c84
001c10: 632f         bls.b      $1c41
001c12: 7200         moveq      #$0, d1
001c14: 4e550000     link.w     a5, #$0
001c18: 48e7c080     movem.l    d0-d1/a0, -(a7)
001c1c: 203cffffff9c move.l     #$ffffff9c, d0
001c22: 6100e546     bsr.w      $16a
001c26: 4fefffe0     lea.l      -$20(a7), a7
001c2a: 422f0014     clr.b      $14(a7)
001c2e: 60000008     bra.w      $1c38
001c32: 7005         moveq      #$5, d0
001c34: 61000bb8     bsr.w      $27ee
001c38: 41d7         lea.l      (a7), a0
001c3a: 2008         move.l     a0, d0
001c3c: 610004e6     bsr.w      $2124
001c40: 72ff         moveq      #$ff, d1
001c42: b280         cmp.l      d0, d1
001c44: 6700000c     beq.w      $1c52
001c48: 0c2f00020014 cmpi.b     #$2, $14(a7)
001c4e: 6c000012     bge.w      $1c62
001c52: 202e8424     move.l     -$7bdc(a6), d0
001c56: 52ae8424     addq.l     #$1, -$7bdc(a6)
001c5a: 7264         moveq      #$64, d1
001c5c: b280         cmp.l      d0, d1
001c5e: 6e00ffd2     bgt.w      $1c32
001c62: 0c2f00020014 cmpi.b     #$2, $14(a7)
001c68: 66000010     bne.w      $1c7a
001c6c: 7000         moveq      #$0, d0
001c6e: 4fef0020     lea.l      $20(a7), a7
001c72: 60000038     bra.w      $1cac
001c76: 60000030     bra.w      $1ca8
001c7a: 0c2f00020014 cmpi.b     #$2, $14(a7)
001c80: 6f00001c     ble.w      $1c9e
001c84: 102f0014     move.b     $14(a7), d0
001c88: 4880         ext.w      d0
001c8a: 48c0         ext.l      d0
001c8c: 2d40800c     move.l     d0, -$7ff4(a6)
001c90: 70fe         moveq      #$fe, d0
001c92: 4fef0020     lea.l      $20(a7), a7
001c96: 60000014     bra.w      $1cac
001c9a: 6000000c     bra.w      $1ca8
001c9e: 70ff         moveq      #$ff, d0
001ca0: 4fef0020     lea.l      $20(a7), a7
001ca4: 60000006     bra.w      $1cac
001ca8: 4fef0020     lea.l      $20(a7), a7
001cac: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001cb2: 4e5d         unlk       a5
001cb4: 4e75         rts        
001cb6: 4e550000     link.w     a5, #$0
001cba: 48e7c080     movem.l    d0-d1/a0, -(a7)
001cbe: 203cffffff92 move.l     #$ffffff92, d0
001cc4: 6100e4a4     bsr.w      $16a
001cc8: 4fefffde     lea.l      -$22(a7), a7
001ccc: 7000         moveq      #$0, d0
001cce: 102f0025     move.b     $25(a7), d0
001cd2: 2f00         move.l     d0, -(a7)
001cd4: 2f2e8428     move.l     -$7bd8(a6), -(a7)
001cd8: 41fa043b     lea.l      $2115(pc), a0
001cdc: 2208         move.l     a0, d1
001cde: 41ef000c     lea.l      $c(a7), a0
001ce2: 2008         move.l     a0, d0
001ce4: 6100074a     bsr.w      $2430
001ce8: 508f         addq.l     #$8, a7
001cea: 7000         moveq      #$0, d0
001cec: 102f0029     move.b     $29(a7), d0
001cf0: e188         lsl.l      #$8, d0
001cf2: 7200         moveq      #$0, d1
001cf4: 122f0039     move.b     $39(a7), d1
001cf8: 8081         or.l       d1, d0
001cfa: 2f00         move.l     d0, -(a7)
001cfc: 7203         moveq      #$3, d1
001cfe: 41ef0008     lea.l      $8(a7), a0
001d02: 2008         move.l     a0, d0
001d04: 61000762     bsr.w      $2468
001d08: 588f         addq.l     #$4, a7
001d0a: 2e80         move.l     d0, (a7)
001d0c: 6c00000c     bge.w      $1d1a
001d10: 7000         moveq      #$0, d0
001d12: 4fef0022     lea.l      $22(a7), a7
001d16: 60000010     bra.w      $1d28
001d1a: 2017         move.l     (a7), d0
001d1c: 5280         addq.l     #$1, d0
001d1e: 4fef0022     lea.l      $22(a7), a7
001d22: 60000004     bra.w      $1d28
001d26: 4e71         nop        
001d28: 4ced0100fffc movem.l    -$4(a5), a0
001d2e: 4e5d         unlk       a5
001d30: 4e75         rts        
001d32: 4e550000     link.w     a5, #$0
001d36: 48e7c080     movem.l    d0-d1/a0, -(a7)
001d3a: 203cffffff92 move.l     #$ffffff92, d0
001d40: 6100e428     bsr.w      $16a
001d44: 4fefffde     lea.l      -$22(a7), a7
001d48: 7000         moveq      #$0, d0
001d4a: 102f0025     move.b     $25(a7), d0
001d4e: 2f00         move.l     d0, -(a7)
001d50: 2f2e8428     move.l     -$7bd8(a6), -(a7)
001d54: 41fa03c6     lea.l      $211c(pc), a0
001d58: 2208         move.l     a0, d1
001d5a: 41ef000c     lea.l      $c(a7), a0
001d5e: 2008         move.l     a0, d0
001d60: 610006ce     bsr.w      $2430
001d64: 508f         addq.l     #$8, a7
001d66: 2f2f0036     move.l     $36(a7), -(a7)
001d6a: 7000         moveq      #$0, d0
001d6c: 102f002d     move.b     $2d(a7), d0
001d70: 2f00         move.l     d0, -(a7)
001d72: 7221         moveq      #$21, d1
001d74: 41ef000c     lea.l      $c(a7), a0
001d78: 2008         move.l     a0, d0
001d7a: 610006ec     bsr.w      $2468
001d7e: 508f         addq.l     #$8, a7
001d80: 2e80         move.l     d0, (a7)
001d82: 4a97         tst.l      (a7)
001d84: 6d000016     blt.w      $1d9c
001d88: 2017         move.l     (a7), d0
001d8a: 61000714     bsr.w      $24a0
001d8e: 7000         moveq      #$0, d0
001d90: 4fef0022     lea.l      $22(a7), a7
001d94: 60000014     bra.w      $1daa
001d98: 6000000c     bra.w      $1da6
001d9c: 70ff         moveq      #$ff, d0
001d9e: 4fef0022     lea.l      $22(a7), a7
001da2: 60000006     bra.w      $1daa
001da6: 4fef0022     lea.l      $22(a7), a7
001daa: 4ced0100fffc movem.l    -$4(a5), a0
001db0: 4e5d         unlk       a5
001db2: 4e75         rts        
001db4: 4e550000     link.w     a5, #$0
001db8: 48e78000     movem.l    d0, -(a7)
001dbc: 203cffffffbc move.l     #$ffffffbc, d0
001dc2: 6100e3a6     bsr.w      $16a
001dc6: 7001         moveq      #$1, d0
001dc8: b097         cmp.l      (a7), d0
001dca: 6e00001a     bgt.w      $1de6
001dce: 2017         move.l     (a7), d0
001dd0: 5380         subq.l     #$1, d0
001dd2: 610006cc     bsr.w      $24a0
001dd6: 4a80         tst.l      d0
001dd8: 6d00000c     blt.w      $1de6
001ddc: 7000         moveq      #$0, d0
001dde: 60000014     bra.w      $1df4
001de2: 60000010     bra.w      $1df4
001de6: 2d7c000000c9800c move.l     #$c9, -$7ff4(a6)
001dee: 70ff         moveq      #$ff, d0
001df0: 60000002     bra.w      $1df4
001df4: 4e5d         unlk       a5
001df6: 4e75         rts        
001df8: 4e550000     link.w     a5, #$0
001dfc: 48e7c000     movem.l    d0-d1, -(a7)
001e00: 203cffffffb8 move.l     #$ffffffb8, d0
001e06: 6100e362     bsr.w      $16a
001e0a: 7000         moveq      #$0, d0
001e0c: 102f0013     move.b     $13(a7), d0
001e10: 2f00         move.l     d0, -(a7)
001e12: 222f0008     move.l     $8(a7), d1
001e16: 202f0004     move.l     $4(a7), d0
001e1a: 5380         subq.l     #$1, d0
001e1c: 6100066e     bsr.w      $248c
001e20: 588f         addq.l     #$4, a7
001e22: 60000004     bra.w      $1e28
001e26: 4e71         nop        
001e28: 4e5d         unlk       a5
001e2a: 4e75         rts        
001e2c: 4e550000     link.w     a5, #$0
001e30: 48e7c000     movem.l    d0-d1, -(a7)
001e34: 203cffffffb8 move.l     #$ffffffb8, d0
001e3a: 6100e32e     bsr.w      $16a
001e3e: 7000         moveq      #$0, d0
001e40: 102f0007     move.b     $7(a7), d0
001e44: 2f00         move.l     d0, -(a7)
001e46: 202f0004     move.l     $4(a7), d0
001e4a: 5380         subq.l     #$1, d0
001e4c: 2200         move.l     d0, d1
001e4e: 203c00000808 move.l     #$808, d0
001e54: 6100f5a4     bsr.w      $13fa
001e58: 588f         addq.l     #$4, a7
001e5a: 60000004     bra.w      $1e60
001e5e: 4e71         nop        
001e60: 4e5d         unlk       a5
001e62: 4e75         rts        
001e64: 4e550000     link.w     a5, #$0
001e68: 48e7c000     movem.l    d0-d1, -(a7)
001e6c: 203cffffffb8 move.l     #$ffffffb8, d0
001e72: 6100e2f6     bsr.w      $16a
001e76: 7000         moveq      #$0, d0
001e78: 102f0013     move.b     $13(a7), d0
001e7c: 2f00         move.l     d0, -(a7)
001e7e: 222f0008     move.l     $8(a7), d1
001e82: 202f0004     move.l     $4(a7), d0
001e86: 5380         subq.l     #$1, d0
001e88: 610005fa     bsr.w      $2484
001e8c: 588f         addq.l     #$4, a7
001e8e: 60000004     bra.w      $1e94
001e92: 4e71         nop        
001e94: 4e5d         unlk       a5
001e96: 4e75         rts        
001e98: 4e550000     link.w     a5, #$0
001e9c: 48e7c000     movem.l    d0-d1, -(a7)
001ea0: 203cffffffb8 move.l     #$ffffffb8, d0
001ea6: 6100e2c2     bsr.w      $16a
001eaa: 42a7         clr.l      -(a7)
001eac: 202f0004     move.l     $4(a7), d0
001eb0: 5380         subq.l     #$1, d0
001eb2: 2200         move.l     d0, d1
001eb4: 203c00000802 move.l     #$802, d0
001eba: 6100f4f6     bsr.w      $13b2
001ebe: 588f         addq.l     #$4, a7
001ec0: 60000004     bra.w      $1ec6
001ec4: 4e71         nop        
001ec6: 4ced0002fffc movem.l    -$4(a5), d1
001ecc: 4e5d         unlk       a5
001ece: 4e75         rts        
001ed0: 4e550000     link.w     a5, #$0
001ed4: 48e7c000     movem.l    d0-d1, -(a7)
001ed8: 203cffffffb8 move.l     #$ffffffb8, d0
001ede: 6100e28a     bsr.w      $16a
001ee2: 2f2f0004     move.l     $4(a7), -(a7)
001ee6: 202f0004     move.l     $4(a7), d0
001eea: 5380         subq.l     #$1, d0
001eec: 2200         move.l     d0, d1
001eee: 203c00000803 move.l     #$803, d0
001ef4: 6100f4bc     bsr.w      $13b2
001ef8: 588f         addq.l     #$4, a7
001efa: 60000004     bra.w      $1f00
001efe: 4e71         nop        
001f00: 4e5d         unlk       a5
001f02: 4e75         rts        
001f04: 4e550000     link.w     a5, #$0
001f08: 48e78000     movem.l    d0, -(a7)
001f0c: 203cffffffc0 move.l     #$ffffffc0, d0
001f12: 6100e256     bsr.w      $16a
001f16: 4e5d         unlk       a5
001f18: 4e75         rts        
001f1a: 4e550000     link.w     a5, #$0
001f1e: 48e7c000     movem.l    d0-d1, -(a7)
001f22: 203cffffffb8 move.l     #$ffffffb8, d0
001f28: 6100e240     bsr.w      $16a
001f2c: 42a7         clr.l      -(a7)
001f2e: 202f0004     move.l     $4(a7), d0
001f32: 5380         subq.l     #$1, d0
001f34: 2200         move.l     d0, d1
001f36: 203c00000806 move.l     #$806, d0
001f3c: 6100f474     bsr.w      $13b2
001f40: 588f         addq.l     #$4, a7
001f42: 60000004     bra.w      $1f48
001f46: 4e71         nop        
001f48: 4ced0002fffc movem.l    -$4(a5), d1
001f4e: 4e5d         unlk       a5
001f50: 4e75         rts        
001f52: 4e550000     link.w     a5, #$0
001f56: 48e7c000     movem.l    d0-d1, -(a7)
001f5a: 203cffffffb8 move.l     #$ffffffb8, d0
001f60: 6100e208     bsr.w      $16a
001f64: 7000         moveq      #$0, d0
001f66: 102f0007     move.b     $7(a7), d0
001f6a: 2f00         move.l     d0, -(a7)
001f6c: 202f0004     move.l     $4(a7), d0
001f70: 5380         subq.l     #$1, d0
001f72: 2200         move.l     d0, d1
001f74: 203c00000807 move.l     #$807, d0
001f7a: 6100f47e     bsr.w      $13fa
001f7e: 588f         addq.l     #$4, a7
001f80: 60000004     bra.w      $1f86
001f84: 4e71         nop        
001f86: 4e5d         unlk       a5
001f88: 4e75         rts        
001f8a: 4e550000     link.w     a5, #$0
001f8e: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001f92: 2440         movea.l    d0, a2
001f94: 2641         movea.l    d1, a3
001f96: 203cffffffc0 move.l     #$ffffffc0, d0
001f9c: 6100e1cc     bsr.w      $16a
001fa0: 7000         moveq      #$0, d0
001fa2: 102f001f     move.b     $1f(a7), d0
001fa6: d08b         add.l      a3, d0
001fa8: 2840         movea.l    d0, a4
001faa: 60000008     bra.w      $1fb4
001fae: 1493         move.b     (a3), (a2)
001fb0: 528a         addq.l     #$1, a2
001fb2: 528b         addq.l     #$1, a3
001fb4: b7cc         cmpa.l     a4, a3
001fb6: 6500fff6     bcs.w      $1fae
001fba: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
001fc0: 4e5d         unlk       a5
001fc2: 4e75         rts        
001fc4: 4e550000     link.w     a5, #$0
001fc8: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001fcc: 2440         movea.l    d0, a2
001fce: 2641         movea.l    d1, a3
001fd0: 203cffffffc0 move.l     #$ffffffc0, d0
001fd6: 6100e192     bsr.w      $16a
001fda: 7000         moveq      #$0, d0
001fdc: 102f001f     move.b     $1f(a7), d0
001fe0: e388         lsl.l      #$1, d0
001fe2: d08b         add.l      a3, d0
001fe4: 2840         movea.l    d0, a4
001fe6: 6000000e     bra.w      $1ff6
001fea: 14ab0001     move.b     $1(a3), (a2)
001fee: 15530001     move.b     (a3), $1(a2)
001ff2: 548a         addq.l     #$2, a2
001ff4: 548b         addq.l     #$2, a3
001ff6: b7cc         cmpa.l     a4, a3
001ff8: 6500fff0     bcs.w      $1fea
001ffc: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
002002: 4e5d         unlk       a5
002004: 4e75         rts        
002006: 4e550000     link.w     a5, #$0
00200a: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
00200e: 2440         movea.l    d0, a2
002010: 2641         movea.l    d1, a3
002012: 203cffffffc0 move.l     #$ffffffc0, d0
002018: 6100e150     bsr.w      $16a
00201c: 7000         moveq      #$0, d0
00201e: 102f001f     move.b     $1f(a7), d0
002022: e588         lsl.l      #$2, d0
002024: d08b         add.l      a3, d0
002026: 2840         movea.l    d0, a4
002028: 6000001a     bra.w      $2044
00202c: 14ab0003     move.b     $3(a3), (a2)
002030: 156b00020001 move.b     $2(a3), $1(a2)
002036: 156b00010002 move.b     $1(a3), $2(a2)
00203c: 15530003     move.b     (a3), $3(a2)
002040: 588a         addq.l     #$4, a2
002042: 588b         addq.l     #$4, a3
002044: b7cc         cmpa.l     a4, a3
002046: 6500ffe4     bcs.w      $202c
00204a: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
002050: 4e5d         unlk       a5
002052: 4e75         rts        
002054: 4e550000     link.w     a5, #$0
002058: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
00205c: 2440         movea.l    d0, a2
00205e: 2641         movea.l    d1, a3
002060: 203cffffffc0 move.l     #$ffffffc0, d0
002066: 6100e102     bsr.w      $16a
00206a: 7000         moveq      #$0, d0
00206c: 102f001f     move.b     $1f(a7), d0
002070: e588         lsl.l      #$2, d0
002072: d08b         add.l      a3, d0
002074: 2840         movea.l    d0, a4
002076: 6000001a     bra.w      $2092
00207a: 14ab0003     move.b     $3(a3), (a2)
00207e: 156b00020001 move.b     $2(a3), $1(a2)
002084: 156b00010002 move.b     $1(a3), $2(a2)
00208a: 15530003     move.b     (a3), $3(a2)
00208e: 588a         addq.l     #$4, a2
002090: 588b         addq.l     #$4, a3
002092: b7cc         cmpa.l     a4, a3
002094: 6500ffe4     bcs.w      $207a
002098: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
00209e: 4e5d         unlk       a5
0020a0: 4e75         rts        
0020a2: 4e550000     link.w     a5, #$0
0020a6: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
0020aa: 2440         movea.l    d0, a2
0020ac: 2641         movea.l    d1, a3
0020ae: 203cffffffc0 move.l     #$ffffffc0, d0
0020b4: 6100e0b4     bsr.w      $16a
0020b8: 7000         moveq      #$0, d0
0020ba: 102f001f     move.b     $1f(a7), d0
0020be: e788         lsl.l      #$3, d0
0020c0: d08b         add.l      a3, d0
0020c2: 2840         movea.l    d0, a4
0020c4: 60000032     bra.w      $20f8
0020c8: 14ab0007     move.b     $7(a3), (a2)
0020cc: 156b00060001 move.b     $6(a3), $1(a2)
0020d2: 156b00050002 move.b     $5(a3), $2(a2)
0020d8: 156b00040003 move.b     $4(a3), $3(a2)
0020de: 156b00030004 move.b     $3(a3), $4(a2)
0020e4: 156b00020005 move.b     $2(a3), $5(a2)
0020ea: 156b00010006 move.b     $1(a3), $6(a2)
0020f0: 15530007     move.b     (a3), $7(a2)
0020f4: 508a         addq.l     #$8, a2
0020f6: 508b         addq.l     #$8, a3
0020f8: b7cc         cmpa.l     a4, a3
0020fa: 6500ffcc     bcs.w      $20c8
0020fe: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
002104: 4e5d         unlk       a5
002106: 4e75         rts        
002108: 4afb         .dc.w      $4afb
00210a: 00172f68     ori.b      #$68, (a7)
00210e: 5f697463     subq.w     #$7, $7463(a1)
002112: 2f730025735f move.l     $25(a3, d0.w), $735f(a7)
002118: 25645f00     move.l     -(a4), $5f00(a2)
00211c: 25735f25645f0000 move.l     ([$645f, a3], d5.l * 8), $0(a2)
002124: 4e550000     link.w     a5, #$0
002128: 48e7c000     movem.l    d0-d1, -(a7)
00212c: 203cffffffb0 move.l     #$ffffffb0, d0
002132: 6100e036     bsr.w      $16a
002136: 518f         subq.l     #$8, a7
002138: 42a7         clr.l      -(a7)
00213a: 223c00000081 move.l     #$81, d1
002140: 203c00000088 move.l     #$88, d0
002146: 6100fb6e     bsr.w      $1cb6
00214a: 588f         addq.l     #$4, a7
00214c: 2f400004     move.l     d0, $4(a7)
002150: 6604         bne.b      $2156
002152: 70ff         moveq      #$ff, d0
002154: 601e         bra.b      $2174
002156: 48780020     pea.l      $20.w
00215a: 222f000c     move.l     $c(a7), d1
00215e: 202f0008     move.l     $8(a7), d0
002162: 6100fd00     bsr.w      $1e64
002166: 588f         addq.l     #$4, a7
002168: 2e80         move.l     d0, (a7)
00216a: 202f0004     move.l     $4(a7), d0
00216e: 6100fc44     bsr.w      $1db4
002172: 2017         move.l     (a7), d0
002174: 508f         addq.l     #$8, a7
002176: 4ced0002fffc movem.l    -$4(a5), d1
00217c: 4e5d         unlk       a5
00217e: 4e75         rts        
002180: 4e550000     link.w     a5, #$0
002184: 48e7c000     movem.l    d0-d1, -(a7)
002188: 203cffffffb0 move.l     #$ffffffb0, d0
00218e: 6100dfda     bsr.w      $16a
002192: 518f         subq.l     #$8, a7
002194: 42a7         clr.l      -(a7)
002196: 223c00000081 move.l     #$81, d1
00219c: 203c000000fe move.l     #$fe, d0
0021a2: 6100fb12     bsr.w      $1cb6
0021a6: 588f         addq.l     #$4, a7
0021a8: 2f400004     move.l     d0, $4(a7)
0021ac: 6604         bne.b      $21b2
0021ae: 70ff         moveq      #$ff, d0
0021b0: 6028         bra.b      $21da
0021b2: 7220         moveq      #$20, d1
0021b4: 202f0004     move.l     $4(a7), d0
0021b8: 6100fc72     bsr.w      $1e2c
0021bc: 4878000c     pea.l      $c.w
0021c0: 222f000c     move.l     $c(a7), d1
0021c4: 202f0008     move.l     $8(a7), d0
0021c8: 6100fc9a     bsr.w      $1e64
0021cc: 588f         addq.l     #$4, a7
0021ce: 2e80         move.l     d0, (a7)
0021d0: 202f0004     move.l     $4(a7), d0
0021d4: 6100fbde     bsr.w      $1db4
0021d8: 2017         move.l     (a7), d0
0021da: 508f         addq.l     #$8, a7
0021dc: 4ced0002fffc movem.l    -$4(a5), d1
0021e2: 4e5d         unlk       a5
0021e4: 4e75         rts        
0021e6: 4e550000     link.w     a5, #$0
0021ea: 48e7c000     movem.l    d0-d1, -(a7)
0021ee: 203cffffffb0 move.l     #$ffffffb0, d0
0021f4: 6100df74     bsr.w      $16a
0021f8: 518f         subq.l     #$8, a7
0021fa: 42a7         clr.l      -(a7)
0021fc: 223c00000082 move.l     #$82, d1
002202: 203c000000fe move.l     #$fe, d0
002208: 6100faac     bsr.w      $1cb6
00220c: 588f         addq.l     #$4, a7
00220e: 2f400004     move.l     d0, $4(a7)
002212: 6604         bne.b      $2218
002214: 70ff         moveq      #$ff, d0
002216: 6028         bra.b      $2240
002218: 7214         moveq      #$14, d1
00221a: 202f0004     move.l     $4(a7), d0
00221e: 6100fc0c     bsr.w      $1e2c
002222: 48780006     pea.l      $6.w
002226: 222f000c     move.l     $c(a7), d1
00222a: 202f0008     move.l     $8(a7), d0
00222e: 6100fc34     bsr.w      $1e64
002232: 588f         addq.l     #$4, a7
002234: 2e80         move.l     d0, (a7)
002236: 202f0004     move.l     $4(a7), d0
00223a: 6100fb78     bsr.w      $1db4
00223e: 2017         move.l     (a7), d0
002240: 508f         addq.l     #$8, a7
002242: 4ced0002fffc movem.l    -$4(a5), d1
002248: 4e5d         unlk       a5
00224a: 4e75         rts        
00224c: 4e550000     link.w     a5, #$0
002250: 48e7c000     movem.l    d0-d1, -(a7)
002254: 203cffffffb0 move.l     #$ffffffb0, d0
00225a: 6100df0e     bsr.w      $16a
00225e: 518f         subq.l     #$8, a7
002260: 42a7         clr.l      -(a7)
002262: 223c00000082 move.l     #$82, d1
002268: 203c000000fe move.l     #$fe, d0
00226e: 6100fa46     bsr.w      $1cb6
002272: 588f         addq.l     #$4, a7
002274: 2f400004     move.l     d0, $4(a7)
002278: 6604         bne.b      $227e
00227a: 70ff         moveq      #$ff, d0
00227c: 6028         bra.b      $22a6
00227e: 7214         moveq      #$14, d1
002280: 202f0004     move.l     $4(a7), d0
002284: 6100fba6     bsr.w      $1e2c
002288: 48780006     pea.l      $6.w
00228c: 222f000c     move.l     $c(a7), d1
002290: 202f0008     move.l     $8(a7), d0
002294: 6100fb62     bsr.w      $1df8
002298: 588f         addq.l     #$4, a7
00229a: 2e80         move.l     d0, (a7)
00229c: 202f0004     move.l     $4(a7), d0
0022a0: 6100fb12     bsr.w      $1db4
0022a4: 2017         move.l     (a7), d0
0022a6: 508f         addq.l     #$8, a7
0022a8: 4ced0002fffc movem.l    -$4(a5), d1
0022ae: 4e5d         unlk       a5
0022b0: 4e75         rts        
0022b2: 4e550000     link.w     a5, #$0
0022b6: 48e7c000     movem.l    d0-d1, -(a7)
0022ba: 203cffffffb0 move.l     #$ffffffb0, d0
0022c0: 6100dea8     bsr.w      $16a
0022c4: 518f         subq.l     #$8, a7
0022c6: 42a7         clr.l      -(a7)
0022c8: 223c00000082 move.l     #$82, d1
0022ce: 203c000000fe move.l     #$fe, d0
0022d4: 6100f9e0     bsr.w      $1cb6
0022d8: 588f         addq.l     #$4, a7
0022da: 2f400004     move.l     d0, $4(a7)
0022de: 6604         bne.b      $22e4
0022e0: 70ff         moveq      #$ff, d0
0022e2: 6028         bra.b      $230c
0022e4: 7200         moveq      #$0, d1
0022e6: 202f0004     move.l     $4(a7), d0
0022ea: 6100fb40     bsr.w      $1e2c
0022ee: 4878000a     pea.l      $a.w
0022f2: 222f000c     move.l     $c(a7), d1
0022f6: 202f0008     move.l     $8(a7), d0
0022fa: 6100fb68     bsr.w      $1e64
0022fe: 588f         addq.l     #$4, a7
002300: 2e80         move.l     d0, (a7)
002302: 202f0004     move.l     $4(a7), d0
002306: 6100faac     bsr.w      $1db4
00230a: 2017         move.l     (a7), d0
00230c: 508f         addq.l     #$8, a7
00230e: 4ced0002fffc movem.l    -$4(a5), d1
002314: 4e5d         unlk       a5
002316: 4e75         rts        
002318: 4e550000     link.w     a5, #$0
00231c: 48e7c080     movem.l    d0-d1/a0, -(a7)
002320: 203cffffffb0 move.l     #$ffffffb0, d0
002326: 6100de42     bsr.w      $16a
00232a: 4feffff4     lea.l      -$c(a7), a7
00232e: 41d7         lea.l      (a7), a0
002330: 2008         move.l     a0, d0
002332: 6100fe4c     bsr.w      $2180
002336: 72ff         moveq      #$ff, d1
002338: b280         cmp.l      d0, d1
00233a: 670a         beq.b      $2346
00233c: 102f0009     move.b     $9(a7), d0
002340: 4880         ext.w      d0
002342: 48c0         ext.l      d0
002344: 6002         bra.b      $2348
002346: 7000         moveq      #$0, d0
002348: 4fef000c     lea.l      $c(a7), a7
00234c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002352: 4e5d         unlk       a5
002354: 4e75         rts        
002356: 4e550000     link.w     a5, #$0
00235a: 48e78038     movem.l    d0/a2-a4, -(a7)
00235e: 7000         moveq      #$0, d0
002360: 2840         movea.l    d0, a4
002362: 2640         movea.l    d0, a3
002364: 2440         movea.l    d0, a2
002366: 700d         moveq      #$d, d0
002368: 7200         moveq      #$0, d1
00236a: 41fa0064     lea.l      $23d0(pc), a0
00236e: 47ee800c     lea.l      -$7ff4(a6), a3
002372: 7609         moveq      #$9, d3
002374: 2683         move.l     d3, (a3)
002376: 262e83ae     move.l     -$7c52(a6), d3
00237a: 242e83aa     move.l     -$7c56(a6), d2
00237e: 286e842c     movea.l    -$7bd4(a6), a4
002382: 4e40         trap       #$0
002384: 0021653e     ori.b      #$3e, -(a1)
002388: 4a93         tst.l      (a3)
00238a: 6718         beq.b      $23a4
00238c: 41fa0046     lea.l      $23d4(pc), a0
002390: 7264         moveq      #$64, d1
002392: 7002         moveq      #$2, d0
002394: 4e40         trap       #$0
002396: 008c         .dc.w      $008c
002398: 41fa0036     lea.l      $23d0(pc), a0
00239c: 72dd         moveq      #$dd, d1
00239e: 003c0001     ori.b      #$1, ccr
0023a2: 6022         bra.b      $23c6
0023a4: 3d7c00418032 move.w     #$41, -$7fce(a6)
0023aa: 426e8034     clr.w      -$7fcc(a6)
0023ae: 3d7c0002804e move.w     #$2, -$7fb2(a6)
0023b4: 3d7c00018050 move.w     #$1, -$7fb0(a6)
0023ba: 3d7c0002806a move.w     #$2, -$7f96(a6)
0023c0: 3d7c0002806c move.w     #$2, -$7f94(a6)
0023c6: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0023cc: 4e5d         unlk       a5
0023ce: 4e75         rts        
0023d0: 6369         bls.b      $243b
0023d2: 6f002a2a     ble.w      $4dfe
0023d6: 2a2a2063     move.l     $2063(a2), d5
0023da: 696f         bvs.b      $244b
0023dc: 20747261     movea.l    $61(a4, d7.w), a0
0023e0: 7068         moveq      #$68, d0
0023e2: 616e         bsr.b      $2452
0023e4: 646c         bcc.b      $2452
0023e6: 6572         bcs.b      $245a
0023e8: 206d6973     movea.l    $6973(a5), a0
0023ec: 6d61         blt.b      $244f
0023ee: 7463         moveq      #$63, d2
0023f0: 6820         bvc.b      $2412
0023f2: 2a2a2a2a     move.l     $2a2a(a2), d5
0023f6: 0d00         btst.l     d6, d0
0023f8: 4e4d         trap       #$d
0023fa: 00004e4d     ori.b      #$4d, d0
0023fe: 00014e4d     ori.b      #$4d, d1
002402: 00024e4d     ori.b      #$4d, d2
002406: 00034e4d     ori.b      #$4d, d3
00240a: 00044e4d     ori.b      #$4d, d4
00240e: 00054e4d     ori.b      #$4d, d5
002412: 00064e4d     ori.b      #$4d, d6
002416: 00074e4d     ori.b      #$4d, d7
00241a: 0008         .dc.w      $0008
00241c: 4e4d         trap       #$d
00241e: 0009         .dc.w      $0009
002420: 4e4d         trap       #$d
002422: 000a         .dc.w      $000a
002424: 4e4d         trap       #$d
002426: 000b         .dc.w      $000b
002428: 4e4d         trap       #$d
00242a: 000c         .dc.w      $000c
00242c: 4e4d         trap       #$d
00242e: 000d         .dc.w      $000d
002430: 4e4d         trap       #$d
002432: 000e         .dc.w      $000e
002434: 4e4d         trap       #$d
002436: 000f         .dc.w      $000f
002438: 4e4d         trap       #$d
00243a: 00104e4d     ori.b      #$4d, (a0)
00243e: 00114e4d     ori.b      #$4d, (a1)
002442: 00124e4d     ori.b      #$4d, (a2)
002446: 00134e4d     ori.b      #$4d, (a3)
00244a: 00144e4d     ori.b      #$4d, (a4)
00244e: 00154e4d     ori.b      #$4d, (a5)
002452: 00164e4d     ori.b      #$4d, (a6)
002456: 00174e4d     ori.b      #$4d, (a7)
00245a: 00184e4d     ori.b      #$4d, (a0)+
00245e: 00194e4d     ori.b      #$4d, (a1)+
002462: 001a4e4d     ori.b      #$4d, (a2)+
002466: 001b4e4d     ori.b      #$4d, (a3)+
00246a: 001c4e4d     ori.b      #$4d, (a4)+
00246e: 001d4e4d     ori.b      #$4d, (a5)+
002472: 001e4e4d     ori.b      #$4d, (a6)+
002476: 001f4e4d     ori.b      #$4d, (a7)+
00247a: 00204e4d     ori.b      #$4d, -(a0)
00247e: 00214e4d     ori.b      #$4d, -(a1)
002482: 00224e4d     ori.b      #$4d, -(a2)
002486: 00234e4d     ori.b      #$4d, -(a3)
00248a: 00244e4d     ori.b      #$4d, -(a4)
00248e: 00254e4d     ori.b      #$4d, -(a5)
002492: 00264e4d     ori.b      #$4d, -(a6)
002496: 00274e4d     ori.b      #$4d, -(a7)
00249a: 00284e4d0029 ori.b      #$4d, $29(a0)
0024a0: 4e4d         trap       #$d
0024a2: 002a4e4d002b ori.b      #$4d, $2b(a2)
0024a8: 4e4d         trap       #$d
0024aa: 002c4e4d002d ori.b      #$4d, $2d(a4)
0024b0: 4e4d         trap       #$d
0024b2: 002e4e4d002f ori.b      #$4d, $2f(a6)
0024b8: 4e4d         trap       #$d
0024ba: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
0024c0: 4e4d         trap       #$d
0024c2: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
0024c8: 4e4d         trap       #$d
0024ca: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
0024d0: 4e4d         trap       #$d
0024d2: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
0024d8: 4e4d         trap       #$d
0024da: 00384e4d0039 ori.b      #$4d, $39.w
0024e0: 4e4d         trap       #$d
0024e2: 003a         .dc.w      $003a
0024e4: 4e4d         trap       #$d
0024e6: 003b         .dc.w      $003b
0024e8: 4e4d         trap       #$d
0024ea: 003c         .dc.w      $003c
0024ec: 4e4d         trap       #$d
0024ee: 003d         .dc.w      $003d
0024f0: 4e4d         trap       #$d
0024f2: 003e         .dc.w      $003e
0024f4: 4e4d         trap       #$d
0024f6: 003f         .dc.w      $003f
0024f8: 4e4d         trap       #$d
0024fa: 00414e4d     ori.w      #$4e4d, d1
0024fe: 00424e4d     ori.w      #$4e4d, d2
002502: 00434e4d     ori.w      #$4e4d, d3
002506: 00444e4d     ori.w      #$4e4d, d4
00250a: 00454e4d     ori.w      #$4e4d, d5
00250e: 00402f08     ori.w      #$2f08, d0
002512: 2040         movea.l    d0, a0
002514: b300         eor.b      d1, d0
002516: 08000000     btst.b     #$0, d0
00251a: 6652         bne.b      $256e
00251c: 08010000     btst.b     #$0, d1
002520: c389         exg.l      d1, a1
002522: 6718         beq.b      $253c
002524: b109         cmpm.b     (a1)+, (a0)+
002526: 6530         bcs.b      $2558
002528: 6220         bhi.b      $254a
00252a: 4a28ffff     tst.b      -$1(a0)
00252e: 660c         bne.b      $253c
002530: 6034         bra.b      $2566
002532: 4a00         tst.b      d0
002534: 6730         beq.b      $2566
002536: 0c4000ff     cmpi.w     #$ff, d0
00253a: 632a         bls.b      $2566
00253c: 3018         move.w     (a0)+, d0
00253e: b059         cmp.w      (a1)+, d0
002540: 67f0         beq.b      $2532
002542: 650e         bcs.b      $2552
002544: 0c4000ff     cmpi.w     #$ff, d0
002548: 6316         bls.b      $2560
00254a: 7001         moveq      #$1, d0
00254c: 205f         movea.l    (a7)+, a0
00254e: c389         exg.l      d1, a1
002550: 4e75         rts        
002552: 0c4000ff     cmpi.w     #$ff, d0
002556: 6308         bls.b      $2560
002558: 70ff         moveq      #$ff, d0
00255a: 205f         movea.l    (a7)+, a0
00255c: c389         exg.l      d1, a1
00255e: 4e75         rts        
002560: 4a29fffe     tst.b      -$2(a1)
002564: 66f2         bne.b      $2558
002566: 7000         moveq      #$0, d0
002568: 205f         movea.l    (a7)+, a0
00256a: c389         exg.l      d1, a1
00256c: 4e75         rts        
00256e: c389         exg.l      d1, a1
002570: 7000         moveq      #$0, d0
002572: 1018         move.b     (a0)+, d0
002574: b019         cmp.b      (a1)+, d0
002576: 56c8fffa     dbne       d0, $2572
00257a: 65dc         bcs.b      $2558
00257c: 5240         addq.w     #$1, d0
00257e: 205f         movea.l    (a7)+, a0
002580: c389         exg.l      d1, a1
002582: 4e75         rts        
002584: 2f08         move.l     a0, -(a7)
002586: 2040         movea.l    d0, a0
002588: 4a18         tst.b      (a0)+
00258a: 670c         beq.b      $2598
00258c: 4a18         tst.b      (a0)+
00258e: 6708         beq.b      $2598
002590: 4a18         tst.b      (a0)+
002592: 6704         beq.b      $2598
002594: 4a18         tst.b      (a0)+
002596: 66f0         bne.b      $2588
002598: 91c0         suba.l     d0, a0
00259a: 2008         move.l     a0, d0
00259c: 5380         subq.l     #$1, d0
00259e: 205f         movea.l    (a7)+, a0
0025a0: 4e75         rts        
0025a2: 2f08         move.l     a0, -(a7)
0025a4: 2040         movea.l    d0, a0
0025a6: c389         exg.l      d1, a1
0025a8: 10d9         move.b     (a1)+, (a0)+
0025aa: 670c         beq.b      $25b8
0025ac: 10d9         move.b     (a1)+, (a0)+
0025ae: 6708         beq.b      $25b8
0025b0: 10d9         move.b     (a1)+, (a0)+
0025b2: 6704         beq.b      $25b8
0025b4: 10d9         move.b     (a1)+, (a0)+
0025b6: 66f0         bne.b      $25a8
0025b8: 205f         movea.l    (a7)+, a0
0025ba: c389         exg.l      d1, a1
0025bc: 4e75         rts        
0025be: 2f08         move.l     a0, -(a7)
0025c0: 2040         movea.l    d0, a0
0025c2: c389         exg.l      d1, a1
0025c4: 4a18         tst.b      (a0)+
0025c6: 670c         beq.b      $25d4
0025c8: 4a18         tst.b      (a0)+
0025ca: 6708         beq.b      $25d4
0025cc: 4a18         tst.b      (a0)+
0025ce: 6704         beq.b      $25d4
0025d0: 4a18         tst.b      (a0)+
0025d2: 66f0         bne.b      $25c4
0025d4: 1159ffff     move.b     (a1)+, -$1(a0)
0025d8: 66ce         bne.b      $25a8
0025da: 60dc         bra.b      $25b8
0025dc: 2f08         move.l     a0, -(a7)
0025de: 2040         movea.l    d0, a0
0025e0: c389         exg.l      d1, a1
0025e2: 10d9         move.b     (a1)+, (a0)+
0025e4: 6afc         bpl.b      $25e2
0025e6: 4210         clr.b      (a0)
0025e8: 0220007f     andi.b     #$7f, -(a0)
0025ec: 205f         movea.l    (a7)+, a0
0025ee: c389         exg.l      d1, a1
0025f0: 4e75         rts        
0025f2: 48e73800     movem.l    d2-d4, -(a7)
0025f6: 2400         move.l     d0, d2
0025f8: 2600         move.l     d0, d3
0025fa: 4843         swap       d3
0025fc: 2801         move.l     d1, d4
0025fe: 4844         swap       d4
002600: c0c1         mulu.w     d1, d0
002602: c2c3         mulu.w     d3, d1
002604: c4c4         mulu.w     d4, d2
002606: c6c4         mulu.w     d4, d3
002608: 4840         swap       d0
00260a: d041         add.w      d1, d0
00260c: 7800         moveq      #$0, d4
00260e: d784         addx.l     d4, d3
002610: d042         add.w      d2, d0
002612: d784         addx.l     d4, d3
002614: 4840         swap       d0
002616: 4241         clr.w      d1
002618: 4841         swap       d1
00261a: 4242         clr.w      d2
00261c: 4842         swap       d2
00261e: d282         add.l      d2, d1
002620: d283         add.l      d3, d1
002622: 4a80         tst.l      d0
002624: 4cdf001c     movem.l    (a7)+, d2-d4
002628: 4e75         rts        
00262a: 2f02         move.l     d2, -(a7)
00262c: 7400         moveq      #$0, d2
00262e: 4a80         tst.l      d0
002630: 6a04         bpl.b      $2636
002632: 4480         neg.l      d0
002634: 7403         moveq      #$3, d2
002636: 4a81         tst.l      d1
002638: 6a06         bpl.b      $2640
00263a: 4481         neg.l      d1
00263c: 0a020001     eori.b     #$1, d2
002640: 6122         bsr.b      $2664
002642: e20a         lsr.b      #$1, d2
002644: 6402         bcc.b      $2648
002646: 4480         neg.l      d0
002648: e20a         lsr.b      #$1, d2
00264a: 6402         bcc.b      $264e
00264c: 4481         neg.l      d1
00264e: 241f         move.l     (a7)+, d2
002650: 4a80         tst.l      d0
002652: 4e75         rts        
002654: 61d4         bsr.b      $262a
002656: c141         exg.l      d0, d1
002658: 4a80         tst.l      d0
00265a: 4e75         rts        
00265c: 6106         bsr.b      $2664
00265e: c141         exg.l      d0, d1
002660: 4a80         tst.l      d0
002662: 4e75         rts        
002664: 48e73800     movem.l    d2-d4, -(a7)
002668: 2401         move.l     d1, d2
00266a: 6606         bne.b      $2672
00266c: 81fc0000     divs.w     #$0, d0
002670: 606e         bra.b      $26e0
002672: 5381         subq.l     #$1, d1
002674: 676a         beq.b      $26e0
002676: 2801         move.l     d1, d4
002678: 2200         move.l     d0, d1
00267a: b481         cmp.l      d1, d2
00267c: 650c         bcs.b      $268a
00267e: 6704         beq.b      $2684
002680: 7000         moveq      #$0, d0
002682: 605c         bra.b      $26e0
002684: 7001         moveq      #$1, d0
002686: 9282         sub.l      d2, d1
002688: 6056         bra.b      $26e0
00268a: 2602         move.l     d2, d3
00268c: 6bf6         bmi.b      $2684
00268e: c684         and.l      d4, d3
002690: 6612         bne.b      $26a4
002692: e28a         lsr.l      #$1, d2
002694: 76ff         moveq      #$ff, d3
002696: e28a         lsr.l      #$1, d2
002698: 55cbfffc     dbcs       d3, $2696
00269c: 4483         neg.l      d3
00269e: e6a8         lsr.l      d3, d0
0026a0: c284         and.l      d4, d1
0026a2: 603c         bra.b      $26e0
0026a4: 7000         moveq      #$0, d0
0026a6: 76ff         moveq      #$ff, d3
0026a8: e382         asl.l      #$1, d2
0026aa: 6a06         bpl.b      $26b2
0026ac: b481         cmp.l      d1, d2
0026ae: 620a         bhi.b      $26ba
0026b0: 600c         bra.b      $26be
0026b2: b481         cmp.l      d1, d2
0026b4: 54cbfff2     dbcc       d3, $26a8
0026b8: 6704         beq.b      $26be
0026ba: 5283         addq.l     #$1, d3
0026bc: e28a         lsr.l      #$1, d2
0026be: 4483         neg.l      d3
0026c0: 6004         bra.b      $26c6
0026c2: e380         asl.l      #$1, d0
0026c4: e28a         lsr.l      #$1, d2
0026c6: 9282         sub.l      d2, d1
0026c8: 6510         bcs.b      $26da
0026ca: 5280         addq.l     #$1, d0
0026cc: 51cbfff4     dbra       d3, $26c2
0026d0: 600e         bra.b      $26e0
0026d2: e380         asl.l      #$1, d0
0026d4: e28a         lsr.l      #$1, d2
0026d6: d282         add.l      d2, d1
0026d8: 65f0         bcs.b      $26ca
0026da: 51cbfff6     dbra       d3, $26d2
0026de: d282         add.l      d2, d1
0026e0: 4cdf001c     movem.l    (a7)+, d2-d4
0026e4: 4a80         tst.l      d0
0026e6: 4e75         rts        
0026e8: 2a5f         movea.l    (a7)+, a5
0026ea: 5385         subq.l     #$1, d5
0026ec: 6562         bcs.b      $2750
0026ee: 1018         move.b     (a0)+, d0
0026f0: 67f8         beq.b      $26ea
0026f2: 0c00000d     cmpi.b     #$d, d0
0026f6: 6758         beq.b      $2750
0026f8: 0c000020     cmpi.b     #$20, d0
0026fc: 67ec         beq.b      $26ea
0026fe: 0c000009     cmpi.b     #$9, d0
002702: 67e6         beq.b      $26ea
002704: 0c00002c     cmpi.b     #$2c, d0
002708: 67e0         beq.b      $26ea
00270a: 5282         addq.l     #$1, d2
00270c: 0c000022     cmpi.b     #$22, d0
002710: 6730         beq.b      $2742
002712: 0c000027     cmpi.b     #$27, d0
002716: 672a         beq.b      $2742
002718: 4868ffff     pea.l      -$1(a0)
00271c: 5385         subq.l     #$1, d5
00271e: 6530         bcs.b      $2750
002720: 1018         move.b     (a0)+, d0
002722: 67c6         beq.b      $26ea
002724: 0c00000d     cmpi.b     #$d, d0
002728: 6712         beq.b      $273c
00272a: 0c000020     cmpi.b     #$20, d0
00272e: 670c         beq.b      $273c
002730: 0c000009     cmpi.b     #$9, d0
002734: 6706         beq.b      $273c
002736: 0c00002c     cmpi.b     #$2c, d0
00273a: 66e0         bne.b      $271c
00273c: 4228ffff     clr.b      -$1(a0)
002740: 60a8         bra.b      $26ea
002742: 4850         pea.l      (a0)
002744: 5385         subq.l     #$1, d5
002746: 6508         bcs.b      $2750
002748: 1218         move.b     (a0)+, d1
00274a: b001         cmp.b      d1, d0
00274c: 66f6         bne.b      $2744
00274e: 60ec         bra.b      $273c
002750: 204f         movea.l    a7, a0
002752: 4857         pea.l      (a7)
002754: 2f02         move.l     d2, -(a7)
002756: 5382         subq.l     #$1, d2
002758: 6710         beq.b      $276a
00275a: e582         asl.l      #$2, d2
00275c: 20302800     move.l     (a0, d2.l), d0
002760: 21902800     move.l     (a0), (a0, d2.l)
002764: 20c0         move.l     d0, (a0)+
002766: 5182         subq.l     #$8, d2
002768: 62f2         bhi.b      $275c
00276a: 4ed5         jmp        (a5)
00276c: 4e550000     link.w     a5, #$0
002770: 48e76080     movem.l    d1-d2/a0, -(a7)
002774: 2040         movea.l    d0, a0
002776: 2001         move.l     d1, d0
002778: 2f0a         move.l     a2, -(a7)
00277a: 4e40         trap       #$0
00277c: 0080204a245f ori.l      #$204a245f, d0
002782: 6500048e     bcs.w      $2c12
002786: 2008         move.l     a0, d0
002788: 60000486     bra.w      $2c10
00278c: 4e550000     link.w     a5, #$0
002790: 48e76080     movem.l    d1-d2/a0, -(a7)
002794: 204a         movea.l    a2, a0
002796: 2440         movea.l    d0, a2
002798: 4e40         trap       #$0
00279a: 008124486000 ori.l      #$24486000, d1
0027a0: 04704e550000 subi.w     #$4e55, (a0, d0.w)
0027a6: 48e76080     movem.l    d1-d2/a0, -(a7)
0027aa: 7000         moveq      #$0, d0
0027ac: 4e40         trap       #$0
0027ae: 000a         .dc.w      $000a
0027b0: 6000045e     bra.w      $2c10
0027b4: 4e550000     link.w     a5, #$0
0027b8: 48e76080     movem.l    d1-d2/a0, -(a7)
0027bc: 206d0008     movea.l    $8(a5), a0
0027c0: 2210         move.l     (a0), d1
0027c2: 2040         movea.l    d0, a0
0027c4: 2017         move.l     (a7), d0
0027c6: 4e40         trap       #$0
0027c8: 00176500     ori.b      #$0, (a7)
0027cc: 0446206d     subi.w     #$206d, d6
0027d0: 0008         .dc.w      $0008
0027d2: 2081         move.l     d1, (a0)
0027d4: 60000444     bra.w      $2c1a
0027d8: 4e550000     link.w     a5, #$0
0027dc: 48e76080     movem.l    d1-d2/a0, -(a7)
0027e0: 4e40         trap       #$0
0027e2: 000f         .dc.w      $000f
0027e4: 6000042a     bra.w      $2c10
0027e8: e188         lsl.l      #$8, d0
0027ea: 08c0001f     bset.b     #$1f, d0
0027ee: 4e550000     link.w     a5, #$0
0027f2: 48e76080     movem.l    d1-d2/a0, -(a7)
0027f6: 4e40         trap       #$0
0027f8: 000a         .dc.w      $000a
0027fa: 60000414     bra.w      $2c10
0027fe: 4e550000     link.w     a5, #$0
002802: 48e700c0     movem.l    a0-a1, -(a7)
002806: 2041         movea.l    d1, a0
002808: 2240         movea.l    d0, a1
00280a: 222d0008     move.l     $8(a5), d1
00280e: 4e40         trap       #$0
002810: 00116560     ori.b      #$60, (a1)
002814: 7000         moveq      #$0, d0
002816: 6068         bra.b      $2880
002818: 4e550000     link.w     a5, #$0
00281c: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002820: 2040         movea.l    d0, a0
002822: 4e40         trap       #$0
002824: 00106454     ori.b      #$54, (a0)
002828: 604a         bra.b      $2874
00282a: 4e550000     link.w     a5, #$0
00282e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002832: 2040         movea.l    d0, a0
002834: 2248         movea.l    a0, a1
002836: 1019         move.b     (a1)+, d0
002838: 0c00002f     cmpi.b     #$2f, d0
00283c: 671a         beq.b      $2858
00283e: 0c00002e     cmpi.b     #$2e, d0
002842: 6622         bne.b      $2866
002844: 0c19002e     cmpi.b     #$2e, (a1)+
002848: 67fa         beq.b      $2844
00284a: 1021         move.b     -(a1), d0
00284c: 672e         beq.b      $287c
00284e: 0c00002f     cmpi.b     #$2f, d0
002852: 6612         bne.b      $2866
002854: 2049         movea.l    a1, a0
002856: 60de         bra.b      $2836
002858: 1019         move.b     (a1)+, d0
00285a: 0c00002f     cmpi.b     #$2f, d0
00285e: 6706         beq.b      $2866
002860: 0c00002e     cmpi.b     #$2e, d0
002864: 67de         beq.b      $2844
002866: 4e40         trap       #$0
002868: 00106508     ori.b      #$8, (a0)
00286c: 4a00         tst.b      d0
00286e: 670c         beq.b      $287c
002870: 2049         movea.l    a1, a0
002872: 60c2         bra.b      $2836
002874: 2d41800c     move.l     d1, -$7ff4(a6)
002878: 70ff         moveq      #$ff, d0
00287a: 6004         bra.b      $2880
00287c: 2009         move.l     a1, d0
00287e: 9097         sub.l      (a7), d0
002880: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
002886: 4e5d         unlk       a5
002888: 4e75         rts        
00288a: 4e550000     link.w     a5, #$0
00288e: 48e76080     movem.l    d1-d2/a0, -(a7)
002892: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
002896: 242d000c     move.l     $c(a5), d2
00289a: 0802000f     btst.b     #$f, d2
00289e: 6708         beq.b      $28a8
0028a0: 262d0010     move.l     $10(a5), d3
0028a4: 282d0014     move.l     $14(a5), d4
0028a8: 2040         movea.l    d0, a0
0028aa: 2001         move.l     d1, d0
0028ac: 222d0008     move.l     $8(a5), d1
0028b0: 4e40         trap       #$0
0028b2: 00256502     ori.b      #$2, -(a5)
0028b6: 200a         move.l     a2, d0
0028b8: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
0028bc: 60000352     bra.w      $2c10
0028c0: 4e550000     link.w     a5, #$0
0028c4: 48e76080     movem.l    d1-d2/a0, -(a7)
0028c8: 2040         movea.l    d0, a0
0028ca: 4e40         trap       #$0
0028cc: 001a6500     ori.b      #$0, (a2)+
0028d0: 0342         bchg.b     d1, d2
0028d2: 2001         move.l     d1, d0
0028d4: 6000033a     bra.w      $2c10
0028d8: 4e550000     link.w     a5, #$0
0028dc: 48e76080     movem.l    d1-d2/a0, -(a7)
0028e0: 2040         movea.l    d0, a0
0028e2: 4e40         trap       #$0
0028e4: 001f6500     ori.b      #$0, (a7)+
0028e8: 032a2001     btst.l     d1, $2001(a2)
0028ec: 60000322     bra.w      $2c10
0028f0: 4e550000     link.w     a5, #$0
0028f4: 48e76080     movem.l    d1-d2/a0, -(a7)
0028f8: 206d0008     movea.l    $8(a5), a0
0028fc: 4e40         trap       #$0
0028fe: 00186000     ori.b      #$0, (a0)+
002902: 030e4e55     movep.w    $4e55(a6), d1
002906: 000048e7     ori.b      #$e7, d0
00290a: 6080         bra.b      $288c
00290c: 2040         movea.l    d0, a0
00290e: 4e40         trap       #$0
002910: 00266000     ori.b      #$0, -(a6)
002914: 02fc         .dc.w      $02fc
002916: 4e550000     link.w     a5, #$0
00291a: 48e76080     movem.l    d1-d2/a0, -(a7)
00291e: 08c1001f     bset.b     #$1f, d1
002922: 600c         bra.b      $2930
002924: 4e550000     link.w     a5, #$0
002928: 48e76080     movem.l    d1-d2/a0, -(a7)
00292c: 242d0008     move.l     $8(a5), d2
002930: 4e40         trap       #$0
002932: 00276500     ori.b      #$0, -(a7)
002936: 02dc         .dc.w      $02dc
002938: 2002         move.l     d2, d0
00293a: 600002d4     bra.w      $2c10
00293e: 4e550000     link.w     a5, #$0
002942: 48e76080     movem.l    d1-d2/a0, -(a7)
002946: 4e40         trap       #$0
002948: 000b         .dc.w      $000b
00294a: 600002c4     bra.w      $2c10
00294e: 4e550000     link.w     a5, #$0
002952: 4e40         trap       #$0
002954: 00524e5d     ori.w      #$4e5d, (a2)
002958: 4e75         rts        
00295a: 4e550000     link.w     a5, #$0
00295e: 48e76080     movem.l    d1-d2/a0, -(a7)
002962: 2f09         move.l     a1, -(a7)
002964: 206d0008     movea.l    $8(a5), a0
002968: 226d000c     movea.l    $c(a5), a1
00296c: 4e40         trap       #$0
00296e: 001b225f     ori.b      #$5f, (a3)+
002972: 6000029c     bra.w      $2c10
002976: 4e550000     link.w     a5, #$0
00297a: 48e76080     movem.l    d1-d2/a0, -(a7)
00297e: 2040         movea.l    d0, a0
002980: 3001         move.w     d1, d0
002982: 48e70060     movem.l    a1-a2, -(a7)
002986: 4e40         trap       #$0
002988: 00006502     ori.b      #$2, d0
00298c: 200a         move.l     a2, d0
00298e: 4cdf0600     movem.l    (a7)+, a1-a2
002992: 6000027c     bra.w      $2c10
002996: 4e550000     link.w     a5, #$0
00299a: 48e76080     movem.l    d1-d2/a0, -(a7)
00299e: 2040         movea.l    d0, a0
0029a0: 3001         move.w     d1, d0
0029a2: 48e70060     movem.l    a1-a2, -(a7)
0029a6: 4e40         trap       #$0
0029a8: 000160de     ori.b      #$de, d1
0029ac: 4e550000     link.w     a5, #$0
0029b0: 48e76080     movem.l    d1-d2/a0, -(a7)
0029b4: 2f0a         move.l     a2, -(a7)
0029b6: 2440         movea.l    d0, a2
0029b8: 4e40         trap       #$0
0029ba: 0002245f     ori.b      #$5f, d2
0029be: 60000250     bra.w      $2c10
0029c2: 4e550000     link.w     a5, #$0
0029c6: 48e76080     movem.l    d1-d2/a0, -(a7)
0029ca: 2040         movea.l    d0, a0
0029cc: 3001         move.w     d1, d0
0029ce: 4e40         trap       #$0
0029d0: 001d6000     ori.b      #$0, (a5)+
0029d4: 023c         .dc.w      $023c
0029d6: 4e550000     link.w     a5, #$0
0029da: 48e76080     movem.l    d1-d2/a0, -(a7)
0029de: 2040         movea.l    d0, a0
0029e0: 7200         moveq      #$0, d1
0029e2: 1210         move.b     (a0), d1
0029e4: d27c076c     add.w      #$76c, d1
0029e8: 4841         swap       d1
0029ea: 12280001     move.b     $1(a0), d1
0029ee: e141         asl.w      #$8, d1
0029f0: 12280002     move.b     $2(a0), d1
0029f4: 7000         moveq      #$0, d0
0029f6: 10280003     move.b     $3(a0), d0
0029fa: 4840         swap       d0
0029fc: 10280004     move.b     $4(a0), d0
002a00: e140         asl.w      #$8, d0
002a02: 10280005     move.b     $5(a0), d0
002a06: 4e40         trap       #$0
002a08: 00166500     ori.b      #$0, (a6)
002a0c: 02062008     andi.b     #$8, d6
002a10: 600001fe     bra.w      $2c10
002a14: 4e550000     link.w     a5, #$0
002a18: 48e77080     movem.l    d1-d3/a0, -(a7)
002a1c: 2040         movea.l    d0, a0
002a1e: 7000         moveq      #$0, d0
002a20: 4e40         trap       #$0
002a22: 0015652c     ori.b      #$2c, (a5)
002a26: 2408         move.l     a0, d2
002a28: 4841         swap       d1
002a2a: 927c076c     sub.w      #$76c, d1
002a2e: 10c1         move.b     d1, (a0)+
002a30: 4841         swap       d1
002a32: e159         rol.w      #$8, d1
002a34: 10c1         move.b     d1, (a0)+
002a36: e159         rol.w      #$8, d1
002a38: 10c1         move.b     d1, (a0)+
002a3a: 4840         swap       d0
002a3c: 10c0         move.b     d0, (a0)+
002a3e: 4840         swap       d0
002a40: e158         rol.w      #$8, d0
002a42: 10c0         move.b     d0, (a0)+
002a44: e158         rol.w      #$8, d0
002a46: 10c0         move.b     d0, (a0)+
002a48: 2002         move.l     d2, d0
002a4a: 4cdf010e     movem.l    (a7)+, d1-d3/a0
002a4e: 4e5d         unlk       a5
002a50: 4e75         rts        
002a52: 70ff         moveq      #$ff, d0
002a54: 2d41800c     move.l     d1, -$7ff4(a6)
002a58: 60f0         bra.b      $2a4a
002a5a: 4e550000     link.w     a5, #$0
002a5e: 48e770c0     movem.l    d1-d3/a0-a1, -(a7)
002a62: 7400         moveq      #$0, d2
002a64: 4e40         trap       #$0
002a66: 00156520     ori.b      #$20, (a5)
002a6a: 206dffec     movea.l    -$14(a5), a0
002a6e: 2080         move.l     d0, (a0)
002a70: 41ed0008     lea.l      $8(a5), a0
002a74: 2258         movea.l    (a0)+, a1
002a76: 2281         move.l     d1, (a1)
002a78: 2258         movea.l    (a0)+, a1
002a7a: 3282         move.w     d2, (a1)
002a7c: 2250         movea.l    (a0), a1
002a7e: 2283         move.l     d3, (a1)
002a80: 7000         moveq      #$0, d0
002a82: 4cdf030e     movem.l    (a7)+, d1-d3/a0-a1
002a86: 4e5d         unlk       a5
002a88: 4e75         rts        
002a8a: 70ff         moveq      #$ff, d0
002a8c: 2d41800c     move.l     d1, -$7ff4(a6)
002a90: 60ee         bra.b      $2a80
002a92: 4e550000     link.w     a5, #$0
002a96: 48e76080     movem.l    d1-d2/a0, -(a7)
002a9a: 2f09         move.l     a1, -(a7)
002a9c: 2040         movea.l    d0, a0
002a9e: 2241         movea.l    d1, a1
002aa0: 2010         move.l     (a0), d0
002aa2: 2211         move.l     (a1), d1
002aa4: 4e40         trap       #$0
002aa6: 00206500     ori.b      #$0, -(a0)
002aaa: 00062080     ori.b      #$80, d6
002aae: 2281         move.l     d1, (a1)
002ab0: 225f         movea.l    (a7)+, a1
002ab2: 6000015c     bra.w      $2c10
002ab6: 4e550000     link.w     a5, #$0
002aba: 48e76080     movem.l    d1-d2/a0, -(a7)
002abe: 4e40         trap       #$0
002ac0: 0008         .dc.w      $0008
002ac2: 6000014c     bra.w      $2c10
002ac6: 4e550000     link.w     a5, #$0
002aca: 48e76080     movem.l    d1-d2/a0, -(a7)
002ace: 2040         movea.l    d0, a0
002ad0: 7000         moveq      #$0, d0
002ad2: 4e40         trap       #$0
002ad4: 00046500     ori.b      #$0, d4
002ad8: 013a2408     btst.l     d0, $4ee2(pc)
002adc: 67000132     beq.w      $2c10
002ae0: 4258         clr.w      (a0)+
002ae2: 3081         move.w     d1, (a0)
002ae4: 6000012a     bra.w      $2c10
002ae8: 4e550000     link.w     a5, #$0
002aec: 48e76080     movem.l    d1-d2/a0, -(a7)
002af0: 4e40         trap       #$0
002af2: 000d         .dc.w      $000d
002af4: 6000011a     bra.w      $2c10
002af8: 4e550000     link.w     a5, #$0
002afc: 48e76080     movem.l    d1-d2/a0, -(a7)
002b00: 48e71c40     movem.l    d3-d5/a1, -(a7)
002b04: 7a03         moveq      #$3, d5
002b06: 602e         bra.b      $2b36
002b08: 4e550000     link.w     a5, #$0
002b0c: 48e76080     movem.l    d1-d2/a0, -(a7)
002b10: 48e71c40     movem.l    d3-d5/a1, -(a7)
002b14: 7a01         moveq      #$1, d5
002b16: 601e         bra.b      $2b36
002b18: 4e550000     link.w     a5, #$0
002b1c: 48e76080     movem.l    d1-d2/a0, -(a7)
002b20: 48e71c40     movem.l    d3-d5/a1, -(a7)
002b24: 7a02         moveq      #$2, d5
002b26: 600e         bra.b      $2b36
002b28: 4e550000     link.w     a5, #$0
002b2c: 48e76080     movem.l    d1-d2/a0, -(a7)
002b30: 48e71c40     movem.l    d3-d5/a1, -(a7)
002b34: 7a00         moveq      #$0, d5
002b36: 2040         movea.l    d0, a0
002b38: 2401         move.l     d1, d2
002b3a: 226d0008     movea.l    $8(a5), a1
002b3e: 302d0012     move.w     $12(a5), d0
002b42: 4840         swap       d0
002b44: 302d000e     move.w     $e(a5), d0
002b48: 222d0014     move.l     $14(a5), d1
002b4c: 7603         moveq      #$3, d3
002b4e: 08050001     btst.b     #$1, d5
002b52: 6704         beq.b      $2b58
002b54: 262d001c     move.l     $1c(a5), d3
002b58: 282d0018     move.l     $18(a5), d4
002b5c: 08050000     btst.b     #$0, d5
002b60: 6606         bne.b      $2b68
002b62: 4e40         trap       #$0
002b64: 00036004     ori.b      #$4, d3
002b68: 4e40         trap       #$0
002b6a: 00054cdf     ori.b      #$df, d5
002b6e: 02386000009e andi.b     #$0, $9e.w
002b74: 4e550000     link.w     a5, #$0
002b78: 48e76080     movem.l    d1-d2/a0, -(a7)
002b7c: 41fa0012     lea.l      $2b90(pc), a0
002b80: 2d4083a6     move.l     d0, -$7c5a(a6)
002b84: 6602         bne.b      $2b88
002b86: 2040         movea.l    d0, a0
002b88: 4e40         trap       #$0
002b8a: 0009         .dc.w      $0009
002b8c: 60000082     bra.w      $2c10
002b90: 2001         move.l     d1, d0
002b92: 206e83a6     movea.l    -$7c5a(a6), a0
002b96: 4e90         jsr        (a0)
002b98: 4e40         trap       #$0
002b9a: 001e4e55     ori.b      #$55, (a6)+
002b9e: 00002f01     ori.b      #$1, d0
002ba2: 7200         moveq      #$0, d1
002ba4: 4e40         trap       #$0
002ba6: 00566508     ori.w      #$6508, (a6)
002baa: 7000         moveq      #$0, d0
002bac: 221f         move.l     (a7)+, d1
002bae: 4e5d         unlk       a5
002bb0: 4e75         rts        
002bb2: 2d41800c     move.l     d1, -$7ff4(a6)
002bb6: 70ff         moveq      #$ff, d0
002bb8: 60f2         bra.b      $2bac
002bba: 4e550000     link.w     a5, #$0
002bbe: 48e77800     movem.l    d1-d4, -(a7)
002bc2: 2601         move.l     d1, d3
002bc4: 7201         moveq      #$1, d1
002bc6: 3400         move.w     d0, d2
002bc8: 7000         moveq      #$0, d0
002bca: 4e40         trap       #$0
002bcc: 00566406     ori.w      #$6406, (a6)
002bd0: 2d41800c     move.l     d1, -$7ff4(a6)
002bd4: 70ff         moveq      #$ff, d0
002bd6: 4cdf001e     movem.l    (a7)+, d1-d4
002bda: 4e5d         unlk       a5
002bdc: 4e75         rts        
002bde: 4e550000     link.w     a5, #$0
002be2: 48e77800     movem.l    d1-d4, -(a7)
002be6: 2601         move.l     d1, d3
002be8: 7202         moveq      #$2, d1
002bea: 60da         bra.b      $2bc6
002bec: 4e550000     link.w     a5, #$0
002bf0: 48e77800     movem.l    d1-d4, -(a7)
002bf4: 2601         move.l     d1, d3
002bf6: 323c0003     move.w     #$3, d1
002bfa: 282f0018     move.l     $18(a7), d4
002bfe: 60c6         bra.b      $2bc6
002c00: 4e550000     link.w     a5, #$0
002c04: 48e77800     movem.l    d1-d4, -(a7)
002c08: 2601         move.l     d1, d3
002c0a: 323c0004     move.w     #$4, d1
002c0e: 60ea         bra.b      $2bfa
002c10: 640c         bcc.b      $2c1e
002c12: 2d41800c     move.l     d1, -$7ff4(a6)
002c16: 70ff         moveq      #$ff, d0
002c18: 6004         bra.b      $2c1e
002c1a: 65f6         bcs.b      $2c12
002c1c: 7000         moveq      #$0, d0
002c1e: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
002c24: 4e5d         unlk       a5
002c26: 4e75         rts        
002c28: 4e550000     link.w     a5, #$0
002c2c: 2200         move.l     d0, d1
002c2e: 6100001e     bsr.w      $2c4e
002c32: 6100f870     bsr.w      $24a4
002c36: 6008         bra.b      $2c40
002c38: 4e550000     link.w     a5, #$0
002c3c: 4afc         illegal    #$4afc
002c3e: 2200         move.l     d0, d1
002c40: 4e40         trap       #$0
002c42: 0006dead     ori.b      #$ad, d6
002c46: dead003c     add.l      $3c(a5), d7
002c4a: 00014e75     ori.b      #$75, d1
002c4e: 4e75         rts        
