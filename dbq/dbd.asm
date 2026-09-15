00004c: 2d468010     move.l     d6, -$7ff0(a6)
000050: 2d468014     move.l     d6, -$7fec(a6)
000054: 3d438018     move.w     d3, -$7fe8(a6)
000058: 082b00050014 btst.b     #$5, $14(a3)
00005e: 670e         beq.b      $6e
000060: 2d4c801a     move.l     a4, -$7fe6(a6)
000064: 6608         bne.b      $6e
000066: 2d7900000000801a move.l     $0.l, -$7fe6(a6)
00006e: 4a85         tst.l      d5
000070: 671e         beq.b      $90
000072: 08050000     btst.b     #$0, d5
000076: 6614         bne.b      $8c
000078: 41f55800     lea.l      (a5, d5.l), a0
00007c: 4a68fffe     tst.w      -$2(a0)
000080: 660a         bne.b      $8c
000082: 5988         subq.l     #$4, a0
000084: 49e8fffc     lea.l      -$4(a0), a4
000088: 7001         moveq      #$1, d0
00008a: 6026         bra.b      $b2
00008c: 423558ff     clr.b      -$1(a5, d5.l)
000090: 204d         movea.l    a5, a0
000092: d7eb000c     adda.l     $c(a3), a3
000096: 42a7         clr.l      -(a7)
000098: 2f0b         move.l     a3, -(a7)
00009a: 7401         moveq      #$1, d2
00009c: 203c00003044 move.l     #$3044, d0
0000a2: 4ebb0800     jsr        $a4(pc,d0.l)
0000a6: 6076         bra.b      $11e
0000a8: 43e80004     lea.l      $4(a0), a1
0000ac: 2d49870a     move.l     a1, -$78f6(a6)
0000b0: 7400         moveq      #$0, d2
0000b2: 2260         movea.l    -(a0), a1
0000b4: 2e09         move.l     a1, d7
0000b6: 670c         beq.b      $c4
0000b8: d3cd         adda.l     a5, a1
0000ba: 4229ffff     clr.b      -$1(a1)
0000be: 2089         move.l     a1, (a0)
0000c0: 5282         addq.l     #$1, d2
0000c2: 60ee         bra.b      $b2
0000c4: 5380         subq.l     #$1, d0
0000c6: 67e0         beq.b      $a8
0000c8: 4a82         tst.l      d2
0000ca: 6610         bne.b      $dc
0000cc: 4a68fffe     tst.w      -$2(a0)
0000d0: 670a         beq.b      $dc
0000d2: 4228ffff     clr.b      -$1(a0)
0000d6: 2448         movea.l    a0, a2
0000d8: 5888         addq.l     #$4, a0
0000da: 6006         bra.b      $e2
0000dc: 208d         move.l     a5, (a0)
0000de: 2448         movea.l    a0, a2
0000e0: 5282         addq.l     #$1, d2
0000e2: 5282         addq.l     #$1, d2
0000e4: 4a94         tst.l      (a4)
0000e6: 6718         beq.b      $100
0000e8: 2854         movea.l    (a4), a4
0000ea: 4a1c         tst.b      (a4)+
0000ec: 66fc         bne.b      $ea
0000ee: b5cc         cmpa.l     a4, a2
0000f0: 631e         bls.b      $110
0000f2: 0c1c00fc     cmpi.b     #$fc, (a4)+
0000f6: 6618         bne.b      $110
0000f8: 528c         addq.l     #$1, a4
0000fa: 2654         movea.l    (a4), a3
0000fc: d7cd         adda.l     a5, a3
0000fe: 6014         bra.b      $114
000100: 0c2d00fc0002 cmpi.b     #$fc, $2(a5)
000106: 6608         bne.b      $110
000108: 266d0004     movea.l    $4(a5), a3
00010c: d7cd         adda.l     a5, a3
00010e: 6004         bra.b      $114
000110: d7eb000c     adda.l     $c(a3), a3
000114: 210b         move.l     a3, -(a0)
000116: 2f08         move.l     a0, -(a7)
000118: 4228ffff     clr.b      -$1(a0)
00011c: 2f02         move.l     d2, -(a7)
00011e: 207c00002a32 movea.l    #$2a32, a0
000124: 4ebb8800     jsr        $126(pc,a0.l)
000128: 6500011c     bcs.w      $246
00012c: 6120         bsr.b      $14e
00012e: 4cdf0003     movem.l    (a7)+, d0-d1
000132: 9bcd         suba.l     a5, a5
000134: 2f2e870a     move.l     -$78f6(a6), -(a7)
000138: 207c00000e86 movea.l    #$e86, a0
00013e: 4ebb8800     jsr        $140(pc,a0.l)
000142: 7000         moveq      #$0, d0
000144: 207c0000354e movea.l    #$354e, a0
00014a: 4ebb8800     jsr        $14c(pc,a0.l)
00014e: 207cffff8828 movea.l    #$ffff8828, a0
000154: d1ce         adda.l     a6, a0
000156: 2d488004     move.l     a0, -$7ffc(a6)
00015a: 2d4f8000     move.l     a7, -$8000(a6)
00015e: 2d4f8008     move.l     a7, -$7ff8(a6)
000162: 203cffffff04 move.l     #$ffffff04, d0
000168: d08f         add.l      a7, d0
00016a: b0ae8008     cmp.l      -$7ff8(a6), d0
00016e: 6502         bcs.b      $172
000170: 4e75         rts        
000172: b0ae8004     cmp.l      -$7ffc(a6), d0
000176: 6506         bcs.b      $17e
000178: 2d408008     move.l     d0, -$7ff8(a6)
00017c: 4e75         rts        
00017e: 41fa0070     lea.l      $1f0(pc), a0
000182: 6110         bsr.b      $194
000184: 2f3c00000101 move.l     #$101, -(a7)
00018a: 207c0000351e movea.l    #$351e, a0
000190: 4ebb8800     jsr        $192(pc,a0.l)
000194: 3f01         move.w     d1, -(a7)
000196: 7264         moveq      #$64, d1
000198: 7002         moveq      #$2, d0
00019a: 4e40         trap       #$0
00019c: 008c         .dc.w      $008c
00019e: 321f         move.w     (a7)+, d1
0001a0: 4e75         rts        
0001a2: 202e8000     move.l     -$8000(a6), d0
0001a6: 90ae8008     sub.l      -$7ff8(a6), d0
0001aa: 4e75         rts        
0001ac: 202e8008     move.l     -$7ff8(a6), d0
0001b0: 90ae8004     sub.l      -$7ffc(a6), d0
0001b4: 4e75         rts        
0001b6: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
0001ba: 302f001e     move.w     $1e(a7), d0
0001be: 04400080     subi.w     #$80, d0
0001c2: e440         asr.w      #$2, d0
0001c4: 0c40000f     cmpi.w     #$f, d0
0001c8: 660c         bne.b      $1d6
0001ca: 41fa006b     lea.l      $237(pc), a0
0001ce: 7200         moveq      #$0, d1
0001d0: 4e40         trap       #$0
0001d2: 0021640c     ori.b      #$c, -(a1)
0001d6: 227c000034dc movea.l    #$34dc, a1
0001dc: 4ebb9800     jsr        $1de(pc,a1.l)
0001e0: 6564         bcs.b      $246
0001e2: 4cdf0f03     movem.l    (a7)+, d0-d1/a0-a3
0001e6: 508f         addq.l     #$8, a7
0001e8: 5997         subq.l     #$4, (a7)
0001ea: 4e75         rts        
0001ec: 4afb         .dc.w      $4afb
0001ee: 00502a2a     ori.w      #$2a2a, (a0)
0001f2: 2a2a2053     move.l     $2053(a2), d5
0001f6: 7461         moveq      #$61, d2
0001f8: 636b         bls.b      $265
0001fa: 204f         movea.l    a7, a0
0001fc: 7665         moveq      #$65, d3
0001fe: 7266         moveq      #$66, d1
000200: 6c6f         bge.b      $271
000202: 7720         .dc.w      $7720
000204: 2a2a2a2a     move.l     $2a2a(a2), d5
000208: 0d00         btst.l     d6, d0
00020a: 2a2a2a2a     move.l     $2a2a(a2), d5
00020e: 2043         movea.l    d3, a0
000210: 616e         bsr.b      $280
000212: 277420696e73 move.l     $69(a4, d2.w), $6e73(a3)
000218: 7461         moveq      #$61, d2
00021a: 6c6c         bge.b      $288
00021c: 20747261     movea.l    $61(a4, d7.w), a0
000220: 7020         moveq      #$20, d0
000222: 6861         bvc.b      $285
000224: 6e64         bgt.b      $28a
000226: 6c65         bge.b      $28d
000228: 7220         moveq      #$20, d1
00022a: 2a2a2a2a     move.l     $2a2a(a2), d5
00022e: 0d00         btst.l     d6, d0
000230: 202a2a2a     move.l     $2a2a(a2), d0
000234: 2a20         move.l     -(a0), d5
000236: 006d61746800 ori.w      #$6174, $6800(a5)
00023c: 00000000     ori.b      #$0, d0
000240: 223c00000040 move.l     #$40, d1
000246: 2f08         move.l     a0, -(a7)
000248: 41faffc0     lea.l      $20a(pc), a0
00024c: 6100ff46     bsr.w      $194
000250: 227cffff8382 movea.l    #$ffff8382, a1
000256: d3ce         adda.l     a6, a1
000258: 41faffd6     lea.l      $230(pc), a0
00025c: 6128         bsr.b      $286
00025e: 205f         movea.l    (a7)+, a0
000260: 5389         subq.l     #$1, a1
000262: 6122         bsr.b      $286
000264: 41faffca     lea.l      $230(pc), a0
000268: 5389         subq.l     #$1, a1
00026a: 611a         bsr.b      $286
00026c: 137c000dffff move.b     #$d, -$1(a1)
000272: 207cffff8382 movea.l    #$ffff8382, a0
000278: d1ce         adda.l     a6, a0
00027a: 6100ff18     bsr.w      $194
00027e: 4e40         trap       #$0
000280: 00064e40     ori.b      #$40, d6
000284: 000612d8     ori.b      #$d8, d6
000288: 66fc         bne.b      $286
00028a: 4e75         rts        
00028c: 4e550000     link.w     a5, #$0
000290: 48e7c080     movem.l    d0-d1/a0, -(a7)
000294: 4fefffee     lea.l      -$12(a7), a7
000298: 42a7         clr.l      -(a7)
00029a: 7200         moveq      #$0, d1
00029c: 202f0016     move.l     $16(a7), d0
0002a0: 610029f4     bsr.w      $2c96
0002a4: 588f         addq.l     #$4, a7
0002a6: 42af0004     clr.l      $4(a7)
0002aa: 602a         bra.b      $2d6
0002ac: 4878000a     pea.l      $a.w
0002b0: 41ef000c     lea.l      $c(a7), a0
0002b4: 2208         move.l     a0, d1
0002b6: 202f0016     move.l     $16(a7), d0
0002ba: 610029ca     bsr.w      $2c86
0002be: 588f         addq.l     #$4, a7
0002c0: 2e80         move.l     d0, (a7)
0002c2: 720a         moveq      #$a, d1
0002c4: b280         cmp.l      d0, d1
0002c6: 6604         bne.b      $2cc
0002c8: 2017         move.l     (a7), d0
0002ca: 6014         bra.b      $2e0
0002cc: 7001         moveq      #$1, d0
0002ce: 610030a6     bsr.w      $3376
0002d2: 52af0004     addq.l     #$1, $4(a7)
0002d6: 7005         moveq      #$5, d0
0002d8: b0af0004     cmp.l      $4(a7), d0
0002dc: 6ece         bgt.b      $2ac
0002de: 70ff         moveq      #$ff, d0
0002e0: 4fef0012     lea.l      $12(a7), a7
0002e4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0002ea: 4e5d         unlk       a5
0002ec: 4e75         rts        
0002ee: 4e550000     link.w     a5, #$0
0002f2: 48e78800     movem.l    d0/d4, -(a7)
0002f6: 2800         move.l     d0, d4
0002f8: 2004         move.l     d4, d0
0002fa: 61001182     bsr.w      $147e
0002fe: 4ced0010fffc movem.l    -$4(a5), d4
000304: 4e5d         unlk       a5
000306: 4e75         rts        
000308: 4e550000     link.w     a5, #$0
00030c: 48e78000     movem.l    d0, -(a7)
000310: 102e8718     move.b     -$78e8(a6), d0
000314: 4e5d         unlk       a5
000316: 4e75         rts        
000318: 4e550000     link.w     a5, #$0
00031c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000320: 518f         subq.l     #$8, a7
000322: 422e8718     clr.b      -$78e8(a6)
000326: 7201         moveq      #$1, d1
000328: 41fa0d86     lea.l      $10b0(pc), a0
00032c: 2008         move.l     a0, d0
00032e: 61001a8a     bsr.w      $1dba
000332: 2f400004     move.l     d0, $4(a7)
000336: 70ff         moveq      #$ff, d0
000338: b0af0004     cmp.l      $4(a7), d0
00033c: 6726         beq.b      $364
00033e: 487800aa     pea.l      $aa.w
000342: 41ee801e     lea.l      -$7fe2(a6), a0
000346: 2208         move.l     a0, d1
000348: 202f0008     move.l     $8(a7), d0
00034c: 61002938     bsr.w      $2c86
000350: 588f         addq.l     #$4, a7
000352: 2e80         move.l     d0, (a7)
000354: 202f0004     move.l     $4(a7), d0
000358: 61002948     bsr.w      $2ca2
00035c: 0c97000000aa cmpi.l     #$aa, (a7)
000362: 6704         beq.b      $368
000364: 7000         moveq      #$0, d0
000366: 6008         bra.b      $370
000368: 1d7c00018718 move.b     #$1, -$78e8(a6)
00036e: 7001         moveq      #$1, d0
000370: 508f         addq.l     #$8, a7
000372: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000378: 4e5d         unlk       a5
00037a: 4e75         rts        
00037c: 4e550000     link.w     a5, #$0
000380: 48e78000     movem.l    d0, -(a7)
000384: 4a2e8718     tst.b      -$78e8(a6)
000388: 6604         bne.b      $38e
00038a: 70ff         moveq      #$ff, d0
00038c: 6004         bra.b      $392
00038e: 302e80c6     move.w     -$7f3a(a6), d0
000392: 4e5d         unlk       a5
000394: 4e75         rts        
000396: 4e550000     link.w     a5, #$0
00039a: 48e78000     movem.l    d0, -(a7)
00039e: 4a2e8718     tst.b      -$78e8(a6)
0003a2: 6604         bne.b      $3a8
0003a4: 7000         moveq      #$0, d0
0003a6: 6004         bra.b      $3ac
0003a8: 202e806e     move.l     -$7f92(a6), d0
0003ac: 4e5d         unlk       a5
0003ae: 4e75         rts        
0003b0: 4e550000     link.w     a5, #$0
0003b4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0003b8: 518f         subq.l     #$8, a7
0003ba: 42af0004     clr.l      $4(a7)
0003be: 4297         clr.l      (a7)
0003c0: 601e         bra.b      $3e0
0003c2: 41ee801e     lea.l      -$7fe2(a6), a0
0003c6: 2f480004     move.l     a0, $4(a7)
0003ca: 41ee80c8     lea.l      -$7f38(a6), a0
0003ce: 600c         bra.b      $3dc
0003d0: 41ee8072     lea.l      -$7f8e(a6), a0
0003d4: 2f480004     move.l     a0, $4(a7)
0003d8: 41ee8118     lea.l      -$7ee8(a6), a0
0003dc: 2e88         move.l     a0, (a7)
0003de: 6010         bra.b      $3f0
0003e0: 202f0008     move.l     $8(a7), d0
0003e4: 4a80         tst.l      d0
0003e6: 67da         beq.b      $3c2
0003e8: 0c8000000001 cmpi.l     #$1, d0
0003ee: 67e0         beq.b      $3d0
0003f0: 4a2e8718     tst.b      -$78e8(a6)
0003f4: 6658         bne.b      $44e
0003f6: 487a0ccc     pea.l      $10c4(pc)
0003fa: 487a0cd0     pea.l      $10cc(pc)
0003fe: 41fa0cd9     lea.l      $10d9(pc), a0
000402: 2208         move.l     a0, d1
000404: 202f0008     move.l     $8(a7), d0
000408: 61002828     bsr.w      $2c32
00040c: 508f         addq.l     #$8, a7
00040e: 6054         bra.b      $464
000410: 2f2f0004     move.l     $4(a7), -(a7)
000414: 487a0cc9     pea.l      $10df(pc)
000418: 41fa0cd2     lea.l      $10ec(pc), a0
00041c: 600c         bra.b      $42a
00041e: 2f2f0004     move.l     $4(a7), -(a7)
000422: 487a0cce     pea.l      $10f2(pc)
000426: 41fa0cd9     lea.l      $1101(pc), a0
00042a: 2208         move.l     a0, d1
00042c: 202f0008     move.l     $8(a7), d0
000430: 61002800     bsr.w      $2c32
000434: 508f         addq.l     #$8, a7
000436: 602c         bra.b      $464
000438: 2f2f0004     move.l     $4(a7), -(a7)
00043c: 41fa0cc9     lea.l      $1107(pc), a0
000440: 2208         move.l     a0, d1
000442: 202f0004     move.l     $4(a7), d0
000446: 610027ea     bsr.w      $2c32
00044a: 588f         addq.l     #$4, a7
00044c: 6016         bra.b      $464
00044e: 206f0004     movea.l    $4(a7), a0
000452: 20280050     move.l     $50(a0), d0
000456: 4a80         tst.l      d0
000458: 67b6         beq.b      $410
00045a: 0c8000000001 cmpi.l     #$1, d0
000460: 67bc         beq.b      $41e
000462: 60d4         bra.b      $438
000464: 2017         move.l     (a7), d0
000466: 508f         addq.l     #$8, a7
000468: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00046e: 4e5d         unlk       a5
000470: 4e75         rts        
000472: 4e550000     link.w     a5, #$0
000476: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00047a: 518f         subq.l     #$8, a7
00047c: 41ee801e     lea.l      -$7fe2(a6), a0
000480: 43ee8072     lea.l      -$7f8e(a6), a1
000484: 7014         moveq      #$14, d0
000486: 22d8         move.l     (a0)+, (a1)+
000488: 51c8fffc     dbra       d0, $486
00048c: 3d6f000a80c6 move.w     $a(a7), -$7f3a(a6)
000492: 7203         moveq      #$3, d1
000494: 41fa0c74     lea.l      $110a(pc), a0
000498: 2008         move.l     a0, d0
00049a: 6100191e     bsr.w      $1dba
00049e: 2f400004     move.l     d0, $4(a7)
0004a2: 70ff         moveq      #$ff, d0
0004a4: b0af0004     cmp.l      $4(a7), d0
0004a8: 6732         beq.b      $4dc
0004aa: 42a7         clr.l      -(a7)
0004ac: 7200         moveq      #$0, d1
0004ae: 202f0008     move.l     $8(a7), d0
0004b2: 610027e2     bsr.w      $2c96
0004b6: 588f         addq.l     #$4, a7
0004b8: 72ff         moveq      #$ff, d1
0004ba: b280         cmp.l      d0, d1
0004bc: 671e         beq.b      $4dc
0004be: 487800aa     pea.l      $aa.w
0004c2: 41ee801e     lea.l      -$7fe2(a6), a0
0004c6: 2208         move.l     a0, d1
0004c8: 202f0008     move.l     $8(a7), d0
0004cc: 610027c0     bsr.w      $2c8e
0004d0: 588f         addq.l     #$4, a7
0004d2: 2e80         move.l     d0, (a7)
0004d4: 0c97000000aa cmpi.l     #$aa, (a7)
0004da: 6704         beq.b      $4e0
0004dc: 7000         moveq      #$0, d0
0004de: 600a         bra.b      $4ea
0004e0: 202f0004     move.l     $4(a7), d0
0004e4: 610027bc     bsr.w      $2ca2
0004e8: 7001         moveq      #$1, d0
0004ea: 508f         addq.l     #$8, a7
0004ec: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
0004f2: 4e5d         unlk       a5
0004f4: 4e75         rts        
0004f6: 4e550000     link.w     a5, #$0
0004fa: 48e78000     movem.l    d0, -(a7)
0004fe: 6100fe18     bsr.w      $318
000502: 6100fe04     bsr.w      $308
000506: 4a00         tst.b      d0
000508: 6606         bne.b      $510
00050a: 422e871a     clr.b      -$78e6(a6)
00050e: 600e         bra.b      $51e
000510: 6100fe84     bsr.w      $396
000514: 4a80         tst.l      d0
000516: 67f2         beq.b      $50a
000518: 1d7c0001871a move.b     #$1, -$78e6(a6)
00051e: 4e5d         unlk       a5
000520: 4e75         rts        
000522: 4e550000     link.w     a5, #$0
000526: 48e78000     movem.l    d0, -(a7)
00052a: 102e871a     move.b     -$78e6(a6), d0
00052e: 4e5d         unlk       a5
000530: 4e75         rts        
000532: 4e550000     link.w     a5, #$0
000536: 48e7c000     movem.l    d0-d1, -(a7)
00053a: 598f         subq.l     #$4, a7
00053c: 7201         moveq      #$1, d1
00053e: 202f0004     move.l     $4(a7), d0
000542: 61001876     bsr.w      $1dba
000546: 2e80         move.l     d0, (a7)
000548: 70ff         moveq      #$ff, d0
00054a: b097         cmp.l      (a7), d0
00054c: 6604         bne.b      $552
00054e: 7000         moveq      #$0, d0
000550: 6008         bra.b      $55a
000552: 2017         move.l     (a7), d0
000554: 6100274c     bsr.w      $2ca2
000558: 7001         moveq      #$1, d0
00055a: 588f         addq.l     #$4, a7
00055c: 4ced0002fffc movem.l    -$4(a5), d1
000562: 4e5d         unlk       a5
000564: 4e75         rts        
000566: 4e550000     link.w     a5, #$0
00056a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00056e: 4fefffb0     lea.l      -$50(a7), a7
000572: 487a0baa     pea.l      $111e(pc)
000576: 487a0ba8     pea.l      $1120(pc)
00057a: 41fa0bb1     lea.l      $112d(pc), a0
00057e: 2208         move.l     a0, d1
000580: 41ef0008     lea.l      $8(a7), a0
000584: 2008         move.l     a0, d0
000586: 610026aa     bsr.w      $2c32
00058a: 508f         addq.l     #$8, a7
00058c: 223c00000081 move.l     #$81, d1
000592: 41d7         lea.l      (a7), a0
000594: 2008         move.l     a0, d0
000596: 61001822     bsr.w      $1dba
00059a: 2d40870e     move.l     d0, -$78f2(a6)
00059e: 70ff         moveq      #$ff, d0
0005a0: b0ae870e     cmp.l      -$78f2(a6), d0
0005a4: 661a         bne.b      $5c0
0005a6: 48780064     pea.l      $64.w
0005aa: 720f         moveq      #$f, d1
0005ac: 203c00000098 move.l     #$98, d0
0005b2: 6100167e     bsr.w      $1c32
0005b6: 588f         addq.l     #$4, a7
0005b8: 6100169e     bsr.w      $1c58
0005bc: 7000         moveq      #$0, d0
0005be: 6002         bra.b      $5c2
0005c0: 7001         moveq      #$1, d0
0005c2: 4fef0050     lea.l      $50(a7), a7
0005c6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0005cc: 4e5d         unlk       a5
0005ce: 4e75         rts        
0005d0: 4e550000     link.w     a5, #$0
0005d4: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
0005d8: 2440         movea.l    d0, a2
0005da: 518f         subq.l     #$8, a7
0005dc: 7800         moveq      #$0, d4
0005de: 41ef0004     lea.l      $4(a7), a0
0005e2: 2e88         move.l     a0, (a7)
0005e4: 6012         bra.b      $5f8
0005e6: 2017         move.l     (a7), d0
0005e8: 4c7c080100000004 divs.l     #$4, d0
0005f0: 4a81         tst.l      d1
0005f2: 670a         beq.b      $5fe
0005f4: 5284         addq.l     #$1, d4
0005f6: 5297         addq.l     #$1, (a7)
0005f8: 7004         moveq      #$4, d0
0005fa: b084         cmp.l      d4, d0
0005fc: 6ee8         bgt.b      $5e6
0005fe: 7800         moveq      #$0, d4
000600: 6046         bra.b      $648
000602: 48780001     pea.l      $1.w
000606: 222f0004     move.l     $4(a7), d1
00060a: 202f002c     move.l     $2c(a7), d0
00060e: 61002676     bsr.w      $2c86
000612: 588f         addq.l     #$4, a7
000614: 2a00         move.l     d0, d5
000616: 70ff         moveq      #$ff, d0
000618: b085         cmp.l      d5, d0
00061a: 6604         bne.b      $620
00061c: 4212         clr.b      (a2)
00061e: 600c         bra.b      $62c
000620: 4a85         tst.l      d5
000622: 660c         bne.b      $630
000624: 42324800     clr.b      (a2, d4.l)
000628: 4a84         tst.l      d4
00062a: 6e26         bgt.b      $652
00062c: 7000         moveq      #$0, d0
00062e: 6024         bra.b      $654
000630: 2057         movea.l    (a7), a0
000632: 0c10000a     cmpi.b     #$a, (a0)
000636: 6716         beq.b      $64e
000638: 2057         movea.l    (a7), a0
00063a: 0c10000d     cmpi.b     #$d, (a0)
00063e: 670e         beq.b      $64e
000640: 2057         movea.l    (a7), a0
000642: 15904800     move.b     (a0), (a2, d4.l)
000646: 5284         addq.l     #$1, d4
000648: b8af000c     cmp.l      $c(a7), d4
00064c: 6db4         blt.b      $602
00064e: 42324800     clr.b      (a2, d4.l)
000652: 200a         move.l     a2, d0
000654: 508f         addq.l     #$8, a7
000656: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
00065c: 4e5d         unlk       a5
00065e: 4e75         rts        
000660: 4e550000     link.w     a5, #$0
000664: 48e7c000     movem.l    d0-d1, -(a7)
000668: 42a7         clr.l      -(a7)
00066a: 7200         moveq      #$0, d1
00066c: 202f0004     move.l     $4(a7), d0
000670: 61002624     bsr.w      $2c96
000674: 588f         addq.l     #$4, a7
000676: 72ff         moveq      #$ff, d1
000678: b280         cmp.l      d0, d1
00067a: 6622         bne.b      $69e
00067c: 6032         bra.b      $6b0
00067e: 202f0004     move.l     $4(a7), d0
000682: 61002790     bsr.w      $2e14
000686: 2f00         move.l     d0, -(a7)
000688: 222f0008     move.l     $8(a7), d1
00068c: 202f0014     move.l     $14(a7), d0
000690: 61002836     bsr.w      $2ec8
000694: 588f         addq.l     #$4, a7
000696: 4a80         tst.l      d0
000698: 6604         bne.b      $69e
00069a: 7001         moveq      #$1, d0
00069c: 6014         bra.b      $6b2
00069e: 2f17         move.l     (a7), -(a7)
0006a0: 7250         moveq      #$50, d1
0006a2: 202f0014     move.l     $14(a7), d0
0006a6: 6100ff28     bsr.w      $5d0
0006aa: 588f         addq.l     #$4, a7
0006ac: 4a80         tst.l      d0
0006ae: 66ce         bne.b      $67e
0006b0: 7000         moveq      #$0, d0
0006b2: 4e5d         unlk       a5
0006b4: 4e75         rts        
0006b6: 4e550000     link.w     a5, #$0
0006ba: 48e7c000     movem.l    d0-d1, -(a7)
0006be: 598f         subq.l     #$4, a7
0006c0: 4297         clr.l      (a7)
0006c2: 601e         bra.b      $6e2
0006c4: 700a         moveq      #$a, d0
0006c6: 4c170000     mulu.l     (a7), d0
0006ca: d0af0008     add.l      $8(a7), d0
0006ce: 2200         move.l     d0, d1
0006d0: 202f0004     move.l     $4(a7), d0
0006d4: 610026ca     bsr.w      $2da0
0006d8: 4a80         tst.l      d0
0006da: 6604         bne.b      $6e0
0006dc: 7001         moveq      #$1, d0
0006de: 600c         bra.b      $6ec
0006e0: 5297         addq.l     #$1, (a7)
0006e2: 2017         move.l     (a7), d0
0006e4: b0af0014     cmp.l      $14(a7), d0
0006e8: 6dda         blt.b      $6c4
0006ea: 7000         moveq      #$0, d0
0006ec: 588f         addq.l     #$4, a7
0006ee: 4e5d         unlk       a5
0006f0: 4e75         rts        
0006f2: 4e550000     link.w     a5, #$0
0006f6: 48e7e080     movem.l    d0-d2/a0, -(a7)
0006fa: 4fefff3e     lea.l      -$c2(a7), a7
0006fe: 486f0076     pea.l      $76(a7)
000702: 41fa0a2e     lea.l      $1132(pc), a0
000706: 2208         move.l     a0, d1
000708: 202f00c6     move.l     $c6(a7), d0
00070c: 6100ff52     bsr.w      $660
000710: 588f         addq.l     #$4, a7
000712: 4a00         tst.b      d0
000714: 670000fe     beq.w      $814
000718: 486f006c     pea.l      $6c(a7)
00071c: 41fa0a1b     lea.l      $1139(pc), a0
000720: 2208         move.l     a0, d1
000722: 41ef007a     lea.l      $7a(a7), a0
000726: 2008         move.l     a0, d0
000728: 61002538     bsr.w      $2c62
00072c: 588f         addq.l     #$4, a7
00072e: 42af0004     clr.l      $4(a7)
000732: 700e         moveq      #$e, d0
000734: 2e80         move.l     d0, (a7)
000736: 602a         bra.b      $762
000738: 700e         moveq      #$e, d0
00073a: d0af0004     add.l      $4(a7), d0
00073e: 2f00         move.l     d0, -(a7)
000740: 41fa0a01     lea.l      $1143(pc), a0
000744: 2208         move.l     a0, d1
000746: 41ef000c     lea.l      $c(a7), a0
00074a: 2008         move.l     a0, d0
00074c: 740a         moveq      #$a, d2
00074e: 4c2f20020008 mulu.l     $8(a7), d2
000754: d082         add.l      d2, d0
000756: 610024da     bsr.w      $2c32
00075a: 588f         addq.l     #$4, a7
00075c: 52af0004     addq.l     #$1, $4(a7)
000760: 5297         addq.l     #$1, (a7)
000762: 7011         moveq      #$11, d0
000764: b097         cmp.l      (a7), d0
000766: 6cd0         bge.b      $738
000768: 2f2f0004     move.l     $4(a7), -(a7)
00076c: 41ef000c     lea.l      $c(a7), a0
000770: 2208         move.l     a0, d1
000772: 41ef0070     lea.l      $70(a7), a0
000776: 2008         move.l     a0, d0
000778: 6100ff3c     bsr.w      $6b6
00077c: 588f         addq.l     #$4, a7
00077e: 4a00         tst.b      d0
000780: 6600008e     bne.w      $810
000784: 48780001     pea.l      $1.w
000788: 4878005b     pea.l      $5b.w
00078c: 41fa09b8     lea.l      $1146(pc), a0
000790: 2208         move.l     a0, d1
000792: 41ef0074     lea.l      $74(a7), a0
000796: 2008         move.l     a0, d0
000798: 61002498     bsr.w      $2c32
00079c: 508f         addq.l     #$8, a7
00079e: 486f0076     pea.l      $76(a7)
0007a2: 41fa09a8     lea.l      $114c(pc), a0
0007a6: 2208         move.l     a0, d1
0007a8: 202f00c6     move.l     $c6(a7), d0
0007ac: 6100feb2     bsr.w      $660
0007b0: 588f         addq.l     #$4, a7
0007b2: 4a00         tst.b      d0
0007b4: 675e         beq.b      $814
0007b6: 486f0062     pea.l      $62(a7)
0007ba: 486f005c     pea.l      $5c(a7)
0007be: 486f0056     pea.l      $56(a7)
0007c2: 486f0050     pea.l      $50(a7)
0007c6: 486f004a     pea.l      $4a(a7)
0007ca: 486f0044     pea.l      $44(a7)
0007ce: 486f003e     pea.l      $3e(a7)
0007d2: 486f0038     pea.l      $38(a7)
0007d6: 486f0032     pea.l      $32(a7)
0007da: 486f002c     pea.l      $2c(a7)
0007de: 41fa0974     lea.l      $1154(pc), a0
0007e2: 2208         move.l     a0, d1
0007e4: 41ef009e     lea.l      $9e(a7), a0
0007e8: 2008         move.l     a0, d0
0007ea: 61002476     bsr.w      $2c62
0007ee: 4fef0028     lea.l      $28(a7), a7
0007f2: 2f400004     move.l     d0, $4(a7)
0007f6: 2f2f0004     move.l     $4(a7), -(a7)
0007fa: 41ef000c     lea.l      $c(a7), a0
0007fe: 2208         move.l     a0, d1
000800: 41ef0070     lea.l      $70(a7), a0
000804: 2008         move.l     a0, d0
000806: 6100feae     bsr.w      $6b6
00080a: 588f         addq.l     #$4, a7
00080c: 4a00         tst.b      d0
00080e: 6704         beq.b      $814
000810: 7001         moveq      #$1, d0
000812: 6002         bra.b      $816
000814: 7000         moveq      #$0, d0
000816: 4fef00c2     lea.l      $c2(a7), a7
00081a: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
000820: 4e5d         unlk       a5
000822: 4e75         rts        
000824: 4e550000     link.w     a5, #$0
000828: 48e7c080     movem.l    d0-d1/a0, -(a7)
00082c: 4fefffb0     lea.l      -$50(a7), a7
000830: 70ff         moveq      #$ff, d0
000832: 2e80         move.l     d0, (a7)
000834: 486f0004     pea.l      $4(a7)
000838: 41fa0940     lea.l      $117a(pc), a0
00083c: 2208         move.l     a0, d1
00083e: 202f0054     move.l     $54(a7), d0
000842: 6100fe1c     bsr.w      $660
000846: 588f         addq.l     #$4, a7
000848: 4a00         tst.b      d0
00084a: 6604         bne.b      $850
00084c: 70ff         moveq      #$ff, d0
00084e: 6016         bra.b      $866
000850: 4857         pea.l      (a7)
000852: 41fa092c     lea.l      $1180(pc), a0
000856: 2208         move.l     a0, d1
000858: 41ef0008     lea.l      $8(a7), a0
00085c: 2008         move.l     a0, d0
00085e: 61002402     bsr.w      $2c62
000862: 588f         addq.l     #$4, a7
000864: 2017         move.l     (a7), d0
000866: 4fef0050     lea.l      $50(a7), a7
00086a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000870: 4e5d         unlk       a5
000872: 4e75         rts        
000874: 4e550000     link.w     a5, #$0
000878: 48e7c080     movem.l    d0-d1/a0, -(a7)
00087c: 4feffff0     lea.l      -$10(a7), a7
000880: 41fa0906     lea.l      $1188(pc), a0
000884: 2008         move.l     a0, d0
000886: 61002426     bsr.w      $2cae
00088a: 2f40000c     move.l     d0, $c(a7)
00088e: 4aaf000c     tst.l      $c(a7)
000892: 666a         bne.b      $8fe
000894: 60000080     bra.w      $916
000898: 41fa08f2     lea.l      $118c(pc), a0
00089c: 2f480004     move.l     a0, $4(a7)
0008a0: 202f0008     move.l     $8(a7), d0
0008a4: 5080         addq.l     #$8, d0
0008a6: 2e80         move.l     d0, (a7)
0008a8: 6006         bra.b      $8b0
0008aa: 52af0004     addq.l     #$1, $4(a7)
0008ae: 5297         addq.l     #$1, (a7)
0008b0: 206f0004     movea.l    $4(a7), a0
0008b4: 4a10         tst.b      (a0)
0008b6: 6716         beq.b      $8ce
0008b8: 2057         movea.l    (a7), a0
0008ba: 1010         move.b     (a0), d0
0008bc: 49c0         extb.l     d0
0008be: 610026b8     bsr.w      $2f78
0008c2: 206f0004     movea.l    $4(a7), a0
0008c6: 1210         move.b     (a0), d1
0008c8: 49c1         extb.l     d1
0008ca: b081         cmp.l      d1, d0
0008cc: 67dc         beq.b      $8aa
0008ce: 206f0004     movea.l    $4(a7), a0
0008d2: 4a10         tst.b      (a0)
0008d4: 6628         bne.b      $8fe
0008d6: 206f0008     movea.l    $8(a7), a0
0008da: 48680008     pea.l      $8(a0)
0008de: 487a08b4     pea.l      $1194(pc)
0008e2: 41fa08bd     lea.l      $11a1(pc), a0
0008e6: 2208         move.l     a0, d1
0008e8: 202f0018     move.l     $18(a7), d0
0008ec: 61002344     bsr.w      $2c32
0008f0: 508f         addq.l     #$8, a7
0008f2: 202f000c     move.l     $c(a7), d0
0008f6: 610023b2     bsr.w      $2caa
0008fa: 7001         moveq      #$1, d0
0008fc: 601a         bra.b      $918
0008fe: 202f000c     move.l     $c(a7), d0
000902: 610023ae     bsr.w      $2cb2
000906: 2f400008     move.l     d0, $8(a7)
00090a: 6600ff8c     bne.w      $898
00090e: 202f000c     move.l     $c(a7), d0
000912: 61002396     bsr.w      $2caa
000916: 7000         moveq      #$0, d0
000918: 4fef0010     lea.l      $10(a7), a7
00091c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000922: 4e5d         unlk       a5
000924: 4e75         rts        
000926: 4e550000     link.w     a5, #$0
00092a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00092e: 6100f9e8     bsr.w      $318
000932: 7000         moveq      #$0, d0
000934: 6100fa7a     bsr.w      $3b0
000938: 6100fbf8     bsr.w      $532
00093c: 4a00         tst.b      d0
00093e: 6610         bne.b      $950
000940: 2057         movea.l    (a7), a0
000942: 30bc0003     move.w     #$3, (a0)
000946: 2057         movea.l    (a7), a0
000948: 317cffff0002 move.w     #$ffff, $2(a0)
00094e: 6042         bra.b      $992
000950: 7000         moveq      #$0, d0
000952: 6100fa5c     bsr.w      $3b0
000956: 2200         move.l     d0, d1
000958: 2017         move.l     (a7), d0
00095a: 5880         addq.l     #$4, d0
00095c: 610024d4     bsr.w      $2e32
000960: 2057         movea.l    (a7), a0
000962: 317c00010002 move.w     #$1, $2(a0)
000968: 6100f99e     bsr.w      $308
00096c: 4a00         tst.b      d0
00096e: 671c         beq.b      $98c
000970: 7001         moveq      #$1, d0
000972: 6100fa3c     bsr.w      $3b0
000976: 2200         move.l     d0, d1
000978: 2017         move.l     (a7), d0
00097a: 5880         addq.l     #$4, d0
00097c: 61002422     bsr.w      $2da0
000980: 4a80         tst.l      d0
000982: 6608         bne.b      $98c
000984: 2057         movea.l    (a7), a0
000986: 30bc0001     move.w     #$1, (a0)
00098a: 6006         bra.b      $992
00098c: 2057         movea.l    (a7), a0
00098e: 30bc0002     move.w     #$2, (a0)
000992: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000998: 4e5d         unlk       a5
00099a: 4e75         rts        
00099c: 4e550000     link.w     a5, #$0
0009a0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0009a4: 4fefff8c     lea.l      -$74(a7), a7
0009a8: 48780004     pea.l      $4.w
0009ac: 223c00000800 move.l     #$800, d1
0009b2: 41ef0070     lea.l      $70(a7), a0
0009b6: 2008         move.l     a0, d0
0009b8: 61000a5a     bsr.w      $1414
0009bc: 588f         addq.l     #$4, a7
0009be: 2f400068     move.l     d0, $68(a7)
0009c2: 4aaf0068     tst.l      $68(a7)
0009c6: 662c         bne.b      $9f4
0009c8: 206f0074     movea.l    $74(a7), a0
0009cc: 30bc0009     move.w     #$9, (a0)
0009d0: 206f0074     movea.l    $74(a7), a0
0009d4: 317cffff0002 move.w     #$ffff, $2(a0)
0009da: 48780065     pea.l      $65.w
0009de: 720f         moveq      #$f, d1
0009e0: 203c00000098 move.l     #$98, d0
0009e6: 6100124a     bsr.w      $1c32
0009ea: 588f         addq.l     #$4, a7
0009ec: 6100126a     bsr.w      $1c58
0009f0: 6000019e     bra.w      $b90
0009f4: 42a7         clr.l      -(a7)
0009f6: 223c00008000 move.l     #$8000, d1
0009fc: 202e870e     move.l     -$78f2(a6), d0
000a00: 61002294     bsr.w      $2c96
000a04: 588f         addq.l     #$4, a7
000a06: 72ff         moveq      #$ff, d1
000a08: b280         cmp.l      d0, d1
000a0a: 6720         beq.b      $a2c
000a0c: 48780800     pea.l      $800.w
000a10: 222f006c     move.l     $6c(a7), d1
000a14: 202e870e     move.l     -$78f2(a6), d0
000a18: 6100226c     bsr.w      $2c86
000a1c: 588f         addq.l     #$4, a7
000a1e: 2f400064     move.l     d0, $64(a7)
000a22: 0caf000008000064 cmpi.l     #$800, $64(a7)
000a2a: 670a         beq.b      $a36
000a2c: 206f0074     movea.l    $74(a7), a0
000a30: 30bc0006     move.w     #$6, (a0)
000a34: 605a         bra.b      $a90
000a36: 41fa076f     lea.l      $11a7(pc), a0
000a3a: 2008         move.l     a0, d0
000a3c: 610023d6     bsr.w      $2e14
000a40: 2f00         move.l     d0, -(a7)
000a42: 41fa0769     lea.l      $11ad(pc), a0
000a46: 2208         move.l     a0, d1
000a48: 203c000000be move.l     #$be, d0
000a4e: d0af006c     add.l      $6c(a7), d0
000a52: 61002474     bsr.w      $2ec8
000a56: 588f         addq.l     #$4, a7
000a58: 4a80         tst.l      d0
000a5a: 670a         beq.b      $a66
000a5c: 206f0074     movea.l    $74(a7), a0
000a60: 30bc0005     move.w     #$5, (a0)
000a64: 602a         bra.b      $a90
000a66: 41fa074b     lea.l      $11b3(pc), a0
000a6a: 2008         move.l     a0, d0
000a6c: 610023a6     bsr.w      $2e14
000a70: 2f00         move.l     d0, -(a7)
000a72: 41fa0746     lea.l      $11ba(pc), a0
000a76: 2208         move.l     a0, d1
000a78: 7028         moveq      #$28, d0
000a7a: d0af006c     add.l      $6c(a7), d0
000a7e: 61002448     bsr.w      $2ec8
000a82: 588f         addq.l     #$4, a7
000a84: 4a80         tst.l      d0
000a86: 6720         beq.b      $aa8
000a88: 206f0074     movea.l    $74(a7), a0
000a8c: 30bc0004     move.w     #$4, (a0)
000a90: 206f0074     movea.l    $74(a7), a0
000a94: 317cffff0002 move.w     #$ffff, $2(a0)
000a9a: 41ef006c     lea.l      $6c(a7), a0
000a9e: 2008         move.l     a0, d0
000aa0: 610009c2     bsr.w      $1464
000aa4: 600000ea     bra.w      $b90
000aa8: 42af0060     clr.l      $60(a7)
000aac: 6012         bra.b      $ac0
000aae: 202f0060     move.l     $60(a7), d0
000ab2: 41ef0036     lea.l      $36(a7), a0
000ab6: 11af005f0800 move.b     $5f(a7), (a0, d0.l)
000abc: 52af0060     addq.l     #$1, $60(a7)
000ac0: 206f0068     movea.l    $68(a7), a0
000ac4: 202f0060     move.l     $60(a7), d0
000ac8: d1c0         adda.l     d0, a0
000aca: 1f680308005f move.b     $308(a0), $5f(a7)
000ad0: 6708         beq.b      $ada
000ad2: 0c2f0020005f cmpi.b     #$20, $5f(a7)
000ad8: 66d4         bne.b      $aae
000ada: 202f0060     move.l     $60(a7), d0
000ade: 41ef0036     lea.l      $36(a7), a0
000ae2: 42300800     clr.b      (a0, d0.l)
000ae6: 41ef006c     lea.l      $6c(a7), a0
000aea: 2008         move.l     a0, d0
000aec: 61000976     bsr.w      $1464
000af0: 486f0036     pea.l      $36(a7)
000af4: 487a06cb     pea.l      $11c1(pc)
000af8: 41fa06d4     lea.l      $11ce(pc), a0
000afc: 2208         move.l     a0, d1
000afe: 41ef000c     lea.l      $c(a7), a0
000b02: 2008         move.l     a0, d0
000b04: 6100212c     bsr.w      $2c32
000b08: 508f         addq.l     #$8, a7
000b0a: 7201         moveq      #$1, d1
000b0c: 41ef0004     lea.l      $4(a7), a0
000b10: 2008         move.l     a0, d0
000b12: 610012a6     bsr.w      $1dba
000b16: 2e80         move.l     d0, (a7)
000b18: 70ff         moveq      #$ff, d0
000b1a: b097         cmp.l      (a7), d0
000b1c: 660a         bne.b      $b28
000b1e: 206f0074     movea.l    $74(a7), a0
000b22: 30bc0009     move.w     #$9, (a0)
000b26: 6034         bra.b      $b5c
000b28: 2017         move.l     (a7), d0
000b2a: 6100fbc6     bsr.w      $6f2
000b2e: 4a00         tst.b      d0
000b30: 6722         beq.b      $b54
000b32: 2017         move.l     (a7), d0
000b34: 6100fcee     bsr.w      $824
000b38: 206f0074     movea.l    $74(a7), a0
000b3c: 31400002     move.w     d0, $2(a0)
000b40: 2017         move.l     (a7), d0
000b42: 6100215e     bsr.w      $2ca2
000b46: 202f0074     move.l     $74(a7), d0
000b4a: 5880         addq.l     #$4, d0
000b4c: 6100fd26     bsr.w      $874
000b50: 4a00         tst.b      d0
000b52: 6614         bne.b      $b68
000b54: 206f0074     movea.l    $74(a7), a0
000b58: 30bc0003     move.w     #$3, (a0)
000b5c: 206f0074     movea.l    $74(a7), a0
000b60: 317cffff0002 move.w     #$ffff, $2(a0)
000b66: 6028         bra.b      $b90
000b68: 6100f79e     bsr.w      $308
000b6c: 4a00         tst.b      d0
000b6e: 6718         beq.b      $b88
000b70: 6100f80a     bsr.w      $37c
000b74: 206f0074     movea.l    $74(a7), a0
000b78: b0680002     cmp.w      $2(a0), d0
000b7c: 660a         bne.b      $b88
000b7e: 206f0074     movea.l    $74(a7), a0
000b82: 30bc0001     move.w     #$1, (a0)
000b86: 6008         bra.b      $b90
000b88: 206f0074     movea.l    $74(a7), a0
000b8c: 30bc0002     move.w     #$2, (a0)
000b90: 4fef0074     lea.l      $74(a7), a7
000b94: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000b9a: 4e5d         unlk       a5
000b9c: 4e75         rts        
000b9e: 4e550000     link.w     a5, #$0
000ba2: 48e7c080     movem.l    d0-d1/a0, -(a7)
000ba6: 6100f97a     bsr.w      $522
000baa: 0c000001     cmpi.b     #$1, d0
000bae: 660c         bne.b      $bbc
000bb0: 41ee8168     lea.l      -$7e98(a6), a0
000bb4: 2008         move.l     a0, d0
000bb6: 6100fd6e     bsr.w      $926
000bba: 6028         bra.b      $be4
000bbc: 202e870e     move.l     -$78f2(a6), d0
000bc0: 6100f6ca     bsr.w      $28c
000bc4: 72ff         moveq      #$ff, d1
000bc6: b280         cmp.l      d0, d1
000bc8: 41ee8168     lea.l      -$7e98(a6), a0
000bcc: 2008         move.l     a0, d0
000bce: 6100fdcc     bsr.w      $99c
000bd2: 6010         bra.b      $be4
000bd4: 422e8712     clr.b      -$78ee(a6)
000bd8: 306e816a     movea.w    -$7e96(a6), a0
000bdc: 2008         move.l     a0, d0
000bde: 6100f892     bsr.w      $472
000be2: 6010         bra.b      $bf4
000be4: 302e8168     move.w     -$7e98(a6), d0
000be8: 0c400001     cmpi.w     #$1, d0
000bec: 67e6         beq.b      $bd4
000bee: 0c400002     cmpi.w     #$2, d0
000bf2: 67e0         beq.b      $bd4
000bf4: 41ee8168     lea.l      -$7e98(a6), a0
000bf8: 2008         move.l     a0, d0
000bfa: 610005e8     bsr.w      $11e4
000bfe: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000c04: 4e5d         unlk       a5
000c06: 4e75         rts        
000c08: 4e550000     link.w     a5, #$0
000c0c: 48e78000     movem.l    d0, -(a7)
000c10: 6100f910     bsr.w      $522
000c14: 0c000001     cmpi.b     #$1, d0
000c18: 660c         bne.b      $c26
000c1a: 203c00002036 move.l     #$2036, d0
000c20: 6100085c     bsr.w      $147e
000c24: 6008         bra.b      $c2e
000c26: 202e870e     move.l     -$78f2(a6), d0
000c2a: 61000eb8     bsr.w      $1ae4
000c2e: 4e5d         unlk       a5
000c30: 4e75         rts        
000c32: 4e550000     link.w     a5, #$0
000c36: 48e78080     movem.l    d0/a0, -(a7)
000c3a: 4fefffac     lea.l      -$54(a7), a7
000c3e: 4a2e8712     tst.b      -$78ee(a6)
000c42: 6712         beq.b      $c56
000c44: 3ebc0007     move.w     #$7, (a7)
000c48: 3f7cffff0002 move.w     #$ffff, $2(a7)
000c4e: 41d7         lea.l      (a7), a0
000c50: 2008         move.l     a0, d0
000c52: 61000590     bsr.w      $11e4
000c56: 4fef0054     lea.l      $54(a7), a7
000c5a: 4ced0100fffc movem.l    -$4(a5), a0
000c60: 4e5d         unlk       a5
000c62: 4e75         rts        
000c64: 4e550000     link.w     a5, #$0
000c68: 48e78080     movem.l    d0/a0, -(a7)
000c6c: 4fefffac     lea.l      -$54(a7), a7
000c70: 3ebc0008     move.w     #$8, (a7)
000c74: 3f7cffff0002 move.w     #$ffff, $2(a7)
000c7a: 41d7         lea.l      (a7), a0
000c7c: 2008         move.l     a0, d0
000c7e: 61000564     bsr.w      $11e4
000c82: 6100f89e     bsr.w      $522
000c86: 0c000001     cmpi.b     #$1, d0
000c8a: 660a         bne.b      $c96
000c8c: 203c00002035 move.l     #$2035, d0
000c92: 610007ea     bsr.w      $147e
000c96: 4fef0054     lea.l      $54(a7), a7
000c9a: 4ced0100fffc movem.l    -$4(a5), a0
000ca0: 4e5d         unlk       a5
000ca2: 4e75         rts        
000ca4: 4e550000     link.w     a5, #$0
000ca8: 48e78080     movem.l    d0/a0, -(a7)
000cac: 4fefffac     lea.l      -$54(a7), a7
000cb0: 3ebc0009     move.w     #$9, (a7)
000cb4: 3f7cffff0002 move.w     #$ffff, $2(a7)
000cba: 41d7         lea.l      (a7), a0
000cbc: 2008         move.l     a0, d0
000cbe: 61000524     bsr.w      $11e4
000cc2: 4fef0054     lea.l      $54(a7), a7
000cc6: 4ced0100fffc movem.l    -$4(a5), a0
000ccc: 4e5d         unlk       a5
000cce: 4e75         rts        
000cd0: 4e550000     link.w     a5, #$0
000cd4: 48e7c000     movem.l    d0-d1, -(a7)
000cd8: 1d7c00018712 move.b     #$1, -$78ee(a6)
000cde: 6100f842     bsr.w      $522
000ce2: 0c000001     cmpi.b     #$1, d0
000ce6: 661c         bne.b      $d04
000ce8: 70ff         moveq      #$ff, d0
000cea: b0ae8714     cmp.l      -$78ec(a6), d0
000cee: 6714         beq.b      $d04
000cf0: 223c00002023 move.l     #$2023, d1
000cf6: 202e8714     move.l     -$78ec(a6), d0
000cfa: 61001262     bsr.w      $1f5e
000cfe: 70ff         moveq      #$ff, d0
000d00: 2d408714     move.l     d0, -$78ec(a6)
000d04: 4ced0002fffc movem.l    -$4(a5), d1
000d0a: 4e5d         unlk       a5
000d0c: 4e75         rts        
000d0e: 4e550000     link.w     a5, #$0
000d12: 48e78000     movem.l    d0, -(a7)
000d16: 61000820     bsr.w      $1538
000d1a: 2d408714     move.l     d0, -$78ec(a6)
000d1e: 203c00002034 move.l     #$2034, d0
000d24: 61000758     bsr.w      $147e
000d28: 4e5d         unlk       a5
000d2a: 4e75         rts        
000d2c: 4e550000     link.w     a5, #$0
000d30: 48e7c080     movem.l    d0-d1/a0, -(a7)
000d34: 4feffff4     lea.l      -$c(a7), a7
000d38: 7001         moveq      #$1, d0
000d3a: 2f400008     move.l     d0, $8(a7)
000d3e: 604a         bra.b      $d8a
000d40: 206f0010     movea.l    $10(a7), a0
000d44: 202f0008     move.l     $8(a7), d0
000d48: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
000d4c: 2057         movea.l    (a7), a0
000d4e: 0c10002d     cmpi.b     #$2d, (a0)
000d52: 6632         bne.b      $d86
000d54: 5297         addq.l     #$1, (a7)
000d56: 6022         bra.b      $d7a
000d58: 5297         addq.l     #$1, (a7)
000d5a: 2057         movea.l    (a7), a0
000d5c: 0c100044     cmpi.b     #$44, (a0)
000d60: 6624         bne.b      $d86
000d62: 5297         addq.l     #$1, (a7)
000d64: 486f0004     pea.l      $4(a7)
000d68: 41fa046a     lea.l      $11d4(pc), a0
000d6c: 2208         move.l     a0, d1
000d6e: 202f0004     move.l     $4(a7), d0
000d72: 61001eee     bsr.w      $2c62
000d76: 588f         addq.l     #$4, a7
000d78: 600c         bra.b      $d86
000d7a: 2057         movea.l    (a7), a0
000d7c: 1010         move.b     (a0), d0
000d7e: 4880         ext.w      d0
000d80: 0c400044     cmpi.w     #$44, d0
000d84: 67d2         beq.b      $d58
000d86: 52af0008     addq.l     #$1, $8(a7)
000d8a: 202f0008     move.l     $8(a7), d0
000d8e: b0af000c     cmp.l      $c(a7), d0
000d92: 6dac         blt.b      $d40
000d94: 4fef000c     lea.l      $c(a7), a7
000d98: 4ced0100fffc movem.l    -$4(a5), a0
000d9e: 4e5d         unlk       a5
000da0: 4e75         rts        
000da2: 4e550000     link.w     a5, #$0
000da6: 48e7c080     movem.l    d0-d1/a0, -(a7)
000daa: 4feffff4     lea.l      -$c(a7), a7
000dae: 610005a4     bsr.w      $1354
000db2: 4a00         tst.b      d0
000db4: 661c         bne.b      $dd2
000db6: 48780066     pea.l      $66.w
000dba: 720f         moveq      #$f, d1
000dbc: 203c00000098 move.l     #$98, d0
000dc2: 61000e6e     bsr.w      $1c32
000dc6: 588f         addq.l     #$4, a7
000dc8: 61000e8e     bsr.w      $1c58
000dcc: 7000         moveq      #$0, d0
000dce: 6000015e     bra.w      $f2e
000dd2: 6100f722     bsr.w      $4f6
000dd6: 6100f74a     bsr.w      $522
000dda: 0c000001     cmpi.b     #$1, d0
000dde: 66000080     bne.w      $e60
000de2: 7202         moveq      #$2, d1
000de4: 41fa03f1     lea.l      $11d7(pc), a0
000de8: 2008         move.l     a0, d0
000dea: 61000fe8     bsr.w      $1dd4
000dee: 2f400008     move.l     d0, $8(a7)
000df2: 70ff         moveq      #$ff, d0
000df4: b0af0008     cmp.l      $8(a7), d0
000df8: 6616         bne.b      $e10
000dfa: 48780067     pea.l      $67.w
000dfe: 720f         moveq      #$f, d1
000e00: 203c00000098 move.l     #$98, d0
000e06: 61000e2a     bsr.w      $1c32
000e0a: 588f         addq.l     #$4, a7
000e0c: 61000e4a     bsr.w      $1c58
000e10: 61002810     bsr.w      $3622
000e14: 2f400004     move.l     d0, $4(a7)
000e18: 48780004     pea.l      $4.w
000e1c: 41ef0008     lea.l      $8(a7), a0
000e20: 2208         move.l     a0, d1
000e22: 202f000c     move.l     $c(a7), d0
000e26: 61001e66     bsr.w      $2c8e
000e2a: 588f         addq.l     #$4, a7
000e2c: 2e80         move.l     d0, (a7)
000e2e: 7004         moveq      #$4, d0
000e30: b097         cmp.l      (a7), d0
000e32: 6716         beq.b      $e4a
000e34: 48780068     pea.l      $68.w
000e38: 720f         moveq      #$f, d1
000e3a: 203c00000098 move.l     #$98, d0
000e40: 61000df0     bsr.w      $1c32
000e44: 588f         addq.l     #$4, a7
000e46: 61000e10     bsr.w      $1c58
000e4a: 202f0008     move.l     $8(a7), d0
000e4e: 61001e52     bsr.w      $2ca2
000e52: 203c00002035 move.l     #$2035, d0
000e58: 61000624     bsr.w      $147e
000e5c: 600000ce     bra.w      $f2c
000e60: 6100f704     bsr.w      $566
000e64: 4a00         tst.b      d0
000e66: 660c         bne.b      $e74
000e68: 6100fe3a     bsr.w      $ca4
000e6c: 6006         bra.b      $e74
000e6e: 7002         moveq      #$2, d0
000e70: 61002504     bsr.w      $3376
000e74: 202e870e     move.l     -$78f2(a6), d0
000e78: 61000c7e     bsr.w      $1af8
000e7c: 2e80         move.l     d0, (a7)
000e7e: 72ff         moveq      #$ff, d1
000e80: b280         cmp.l      d0, d1
000e82: 6608         bne.b      $e8c
000e84: 7001         moveq      #$1, d0
000e86: b0ae800c     cmp.l      -$7ff4(a6), d0
000e8a: 67e2         beq.b      $e6e
000e8c: 70ff         moveq      #$ff, d0
000e8e: b097         cmp.l      (a7), d0
000e90: 6616         bne.b      $ea8
000e92: 48780069     pea.l      $69.w
000e96: 720f         moveq      #$f, d1
000e98: 203c00000098 move.l     #$98, d0
000e9e: 61000d92     bsr.w      $1c32
000ea2: 588f         addq.l     #$4, a7
000ea4: 61000db2     bsr.w      $1c58
000ea8: 223c00002034 move.l     #$2034, d1
000eae: 202e870e     move.l     -$78f2(a6), d0
000eb2: 610023ba     bsr.w      $326e
000eb6: 2e80         move.l     d0, (a7)
000eb8: 70ff         moveq      #$ff, d0
000eba: b097         cmp.l      (a7), d0
000ebc: 6616         bne.b      $ed4
000ebe: 4878006a     pea.l      $6a.w
000ec2: 720f         moveq      #$f, d1
000ec4: 203c00000098 move.l     #$98, d0
000eca: 61000d66     bsr.w      $1c32
000ece: 588f         addq.l     #$4, a7
000ed0: 61000d86     bsr.w      $1c58
000ed4: 223c00002035 move.l     #$2035, d1
000eda: 202e870e     move.l     -$78f2(a6), d0
000ede: 610023fa     bsr.w      $32da
000ee2: 2e80         move.l     d0, (a7)
000ee4: 70ff         moveq      #$ff, d0
000ee6: b097         cmp.l      (a7), d0
000ee8: 6616         bne.b      $f00
000eea: 4878006b     pea.l      $6b.w
000eee: 720f         moveq      #$f, d1
000ef0: 203c00000098 move.l     #$98, d0
000ef6: 61000d3a     bsr.w      $1c32
000efa: 588f         addq.l     #$4, a7
000efc: 61000d5a     bsr.w      $1c58
000f00: 223c00002036 move.l     #$2036, d1
000f06: 202e870e     move.l     -$78f2(a6), d0
000f0a: 610023de     bsr.w      $32ea
000f0e: 2e80         move.l     d0, (a7)
000f10: 70ff         moveq      #$ff, d0
000f12: b097         cmp.l      (a7), d0
000f14: 6616         bne.b      $f2c
000f16: 4878006c     pea.l      $6c.w
000f1a: 720f         moveq      #$f, d1
000f1c: 203c00000098 move.l     #$98, d0
000f22: 61000d0e     bsr.w      $1c32
000f26: 588f         addq.l     #$4, a7
000f28: 61000d2e     bsr.w      $1c58
000f2c: 7001         moveq      #$1, d0
000f2e: 4fef000c     lea.l      $c(a7), a7
000f32: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000f38: 4e5d         unlk       a5
000f3a: 4e75         rts        
000f3c: 4e550000     link.w     a5, #$0
000f40: 48e7c000     movem.l    d0-d1, -(a7)
000f44: 598f         subq.l     #$4, a7
000f46: 61000464     bsr.w      $13ac
000f4a: 4a00         tst.b      d0
000f4c: 6616         bne.b      $f64
000f4e: 4878006d     pea.l      $6d.w
000f52: 720f         moveq      #$f, d1
000f54: 203c00000098 move.l     #$98, d0
000f5a: 61000cd6     bsr.w      $1c32
000f5e: 588f         addq.l     #$4, a7
000f60: 61000cf6     bsr.w      $1c58
000f64: 6100f5bc     bsr.w      $522
000f68: 0c000001     cmpi.b     #$1, d0
000f6c: 674c         beq.b      $fba
000f6e: 202e870e     move.l     -$78f2(a6), d0
000f72: 61000b98     bsr.w      $1b0c
000f76: 2e80         move.l     d0, (a7)
000f78: 70ff         moveq      #$ff, d0
000f7a: b097         cmp.l      (a7), d0
000f7c: 6616         bne.b      $f94
000f7e: 4878006e     pea.l      $6e.w
000f82: 720f         moveq      #$f, d1
000f84: 203c00000098 move.l     #$98, d0
000f8a: 61000ca6     bsr.w      $1c32
000f8e: 588f         addq.l     #$4, a7
000f90: 61000cc6     bsr.w      $1c58
000f94: 202e870e     move.l     -$78f2(a6), d0
000f98: 610022e4     bsr.w      $327e
000f9c: 2e80         move.l     d0, (a7)
000f9e: 70ff         moveq      #$ff, d0
000fa0: b097         cmp.l      (a7), d0
000fa2: 6616         bne.b      $fba
000fa4: 4878006f     pea.l      $6f.w
000fa8: 720f         moveq      #$f, d1
000faa: 203c00000098 move.l     #$98, d0
000fb0: 61000c80     bsr.w      $1c32
000fb4: 588f         addq.l     #$4, a7
000fb6: 61000ca0     bsr.w      $1c58
000fba: 588f         addq.l     #$4, a7
000fbc: 4ced0002fffc movem.l    -$4(a5), d1
000fc2: 4e5d         unlk       a5
000fc4: 4e75         rts        
000fc6: 4e550000     link.w     a5, #$0
000fca: 48e7c080     movem.l    d0-d1/a0, -(a7)
000fce: 5d8f         subq.l     #$6, a7
000fd0: 422f0005     clr.b      $5(a7)
000fd4: 41fb017000000676 lea.l      $676(a16, invalid.w), a0
000fdc: 2008         move.l     a0, d0
000fde: 61000650     bsr.w      $1630
000fe2: 41fb0170fffff30a lea.l      $fffff30a(a16, invalid.w), a0
000fea: 2008         move.l     a0, d0
000fec: 61000528     bsr.w      $1516
000ff0: 222f000a     move.l     $a(a7), d1
000ff4: 202f0006     move.l     $6(a7), d0
000ff8: 6100fd32     bsr.w      $d2c
000ffc: 223c00002023 move.l     #$2023, d1
001002: 6100261e     bsr.w      $3622
001006: 610009f4     bsr.w      $19fc
00100a: 61000f52     bsr.w      $1f5e
00100e: 6100fd92     bsr.w      $da2
001012: 4a00         tst.b      d0
001014: 6600007c     bne.w      $1092
001018: 1f7c00010005 move.b     #$1, $5(a7)
00101e: 60000072     bra.w      $1092
001022: 61000514     bsr.w      $1538
001026: 2e80         move.l     d0, (a7)
001028: 6024         bra.b      $104e
00102a: 6100fbdc     bsr.w      $c08
00102e: 6062         bra.b      $1092
001030: 6100fc00     bsr.w      $c32
001034: 605c         bra.b      $1092
001036: 6100fc2c     bsr.w      $c64
00103a: 6056         bra.b      $1092
00103c: 6100fb60     bsr.w      $b9e
001040: 6050         bra.b      $1092
001042: 6100fcca     bsr.w      $d0e
001046: 604a         bra.b      $1092
001048: 6100fc86     bsr.w      $cd0
00104c: 6044         bra.b      $1092
00104e: 2017         move.l     (a7), d0
001050: 04800000202d subi.l     #$202d, d0
001056: 0c8000000015 cmpi.l     #$15, d0
00105c: 6234         bhi.b      $1092
00105e: 303b0206     move.w     $1066(pc, d0.w), d0
001062: 4efb0002     jmp        $1066(pc, d0.w)
001066: ffb2         dc.w       $ffb2
001068: 002c002c002c ori.b      #$2c, $2c(a4)
00106e: 002c002cffc4 ori.b      #$2c, -$3c(a4)
001074: ffca         dc.w       $ffca
001076: ffd6         dc.w       $ffd6
001078: ffd0         dc.w       $ffd0
00107a: ffdc         dc.w       $ffdc
00107c: ffe2         dc.w       $ffe2
00107e: 002c002c002c ori.b      #$2c, $2c(a4)
001084: 002c002c002c ori.b      #$2c, $2c(a4)
00108a: 002c002c002c ori.b      #$2c, $2c(a4)
001090: 002c4a2f0005 ori.b      #$2f, $5(a4)
001096: 6700ff8a     beq.w      $1022
00109a: 6100fea0     bsr.w      $f3c
00109e: 6100048a     bsr.w      $152a
0010a2: 7000         moveq      #$0, d0
0010a4: 5c8f         addq.l     #$6, a7
0010a6: 4ced0100fffc movem.l    -$4(a5), a0
0010ac: 4e5d         unlk       a5
0010ae: 4e75         rts        
0010b0: 2f63302f     move.l     -(a3), $302f(a7)
0010b4: 5f313239     subq.b     #$7, $39(a1, d3.w)
0010b8: 5f2f6e76     subq.b     #$7, $6e76(a7)
0010bc: 722f         moveq      #$2f, d1
0010be: 6e76         bgt.b      $1136
0010c0: 5f64         subq.w     #$7, -(a4)
0010c2: 62004341     bhi.w      $5405
0010c6: 5249         addq.w     #$1, a1
0010c8: 4e44         trap       #$4
0010ca: 4200         clr.b      d0
0010cc: 2f63302f     move.l     -(a3), $302f(a7)
0010d0: 5f313239     subq.b     #$7, $39(a1, d3.w)
0010d4: 5f2f6364     subq.b     #$7, $6364(a7)
0010d8: 0025732f     ori.b      #$2f, -(a5)
0010dc: 2573002f6330 move.l     $2f(a3, d0.w), $6330(a2)
0010e2: 2f5f3132     move.l     (a7)+, $3132(a7)
0010e6: 395f2f63     move.w     (a7)+, $2f63(a4)
0010ea: 64002573     bcc.w      $365f
0010ee: 2f25         move.l     -(a5), -(a7)
0010f0: 7300         .dc.w      $7300
0010f2: 2f63302f     move.l     -(a3), $302f(a7)
0010f6: 5f313239     subq.b     #$7, $39(a1, d3.w)
0010fa: 5f2f725f     subq.b     #$7, $725f(a7)
0010fe: 7270         moveq      #$70, d1
001100: 0025732f     ori.b      #$2f, -(a5)
001104: 257300257300 move.l     $25(a3, d0.w), $7300(a2)
00110a: 2f63302f     move.l     -(a3), $302f(a7)
00110e: 5f313239     subq.b     #$7, $39(a1, d3.w)
001112: 5f2f6e76     subq.b     #$7, $6e76(a7)
001116: 722f         moveq      #$2f, d1
001118: 6e76         bgt.b      $1190
00111a: 5f64         subq.w     #$7, -(a4)
00111c: 62004000     bhi.w      $511e
001120: 2f63302f     move.l     -(a3), $302f(a7)
001124: 5f313239     subq.b     #$7, $39(a1, d3.w)
001128: 5f2f6364     subq.b     #$7, $6364(a7)
00112c: 00257325     ori.b      #$25, -(a5)
001130: 7300         .dc.w      $7300
001132: 4442         neg.w      d2
001134: 2d52454c     move.l     (a2), $454c(a6)
001138: 0044422d     ori.w      #$422d, d4
00113c: 5245         addq.w     #$1, d5
00113e: 4c20         .dc.w      $4c20
001140: 257300256400 move.l     $25(a3, d0.w), $6400(a2)
001146: 25642e25     move.l     -(a4), $2e25(a2)
00114a: 64004253     bcc.w      $539f
00114e: 572d5245     subq.b     #$3, $5245(a5)
001152: 4c00         .dc.w      $4c00
001154: 4253         clr.w      (a3)
001156: 572d5245     subq.b     #$3, $5245(a5)
00115a: 4c20         .dc.w      $4c20
00115c: 257320257320 move.l     $25(a3, d2.w), $7320(a2)
001162: 257320257320 move.l     $25(a3, d2.w), $7320(a2)
001168: 257320257320 move.l     $25(a3, d2.w), $7320(a2)
00116e: 257320257320 move.l     $25(a3, d2.w), $7320(a2)
001174: 257320257300 move.l     $25(a3, d2.w), $7300(a2)
00117a: 4344         .dc.w      $4344
00117c: 2d494400     move.l     a1, $4400(a6)
001180: 4344         .dc.w      $4344
001182: 2d494425     move.l     a1, $4425(a6)
001186: 64002f63     bcc.w      $40eb
00118a: 64004341     bcc.w      $54cd
00118e: 5249         addq.w     #$1, a1
001190: 4e44         trap       #$4
001192: 4200         clr.b      d0
001194: 2f63302f     move.l     -(a3), $302f(a7)
001198: 5f313239     subq.b     #$7, $39(a1, d3.w)
00119c: 5f2f6364     subq.b     #$7, $6364(a7)
0011a0: 0025732f     ori.b      #$2f, -(a5)
0011a4: 257300434152 move.l     $43(a3, d0.w), $4152(a2)
0011aa: 494e         .dc.w      $494e
0011ac: 00434152     ori.w      #$4152, d3
0011b0: 494e         .dc.w      $494e
0011b2: 004e         .dc.w      $004e
0011b4: 4156         .dc.w      $4156
0011b6: 5f44         subq.w     #$7, d4
0011b8: 4200         clr.b      d0
0011ba: 4e41         trap       #$1
0011bc: 565f         addq.w     #$3, (a7)+
0011be: 4442         neg.w      d2
0011c0: 002f63302f5f ori.b      #$30, $2f5f(a7)
0011c6: 3132395f     move.w     ([a2]), -(a0)
0011ca: 2f636400     move.l     -(a3), $6400(a7)
0011ce: 25732f2573002564 move.l     ([$7300, a3], d2.l * 8), $2564(a2)
0011d6: 002f72302f64 ori.b      #$30, $2f64(a7)
0011dc: 6264         bhi.b      $1242
0011de: 2e7069640000 movea.l    (a0, invalid.w), a7
0011e4: 4e550000     link.w     a5, #$0
0011e8: 48e780c0     movem.l    d0/a0-a1, -(a7)
0011ec: 4fefffa4     lea.l      -$5c(a7), a7
0011f0: 3f7c00020002 move.w     #$2, $2(a7)
0011f6: 3f7c01100004 move.w     #$110, $4(a7)
0011fc: 3f7c00010006 move.w     #$1, $6(a7)
001202: 206f005c     movea.l    $5c(a7), a0
001206: 43ef0008     lea.l      $8(a7), a1
00120a: 7014         moveq      #$14, d0
00120c: 22d8         move.l     (a0)+, (a1)+
00120e: 51c8fffc     dbra       d0, $120c
001212: 3ebc005a     move.w     #$5a, (a7)
001216: 41d7         lea.l      (a7), a0
001218: 2008         move.l     a0, d0
00121a: 61000090     bsr.w      $12ac
00121e: 4fef005c     lea.l      $5c(a7), a7
001222: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001228: 4e5d         unlk       a5
00122a: 4e75         rts        
00122c: 4e550000     link.w     a5, #$0
001230: 48e78080     movem.l    d0/a0, -(a7)
001234: 4fefffa4     lea.l      -$5c(a7), a7
001238: 3f7c00020002 move.w     #$2, $2(a7)
00123e: 3f7c01300004 move.w     #$130, $4(a7)
001244: 3f7c00010006 move.w     #$1, $6(a7)
00124a: 3ebc005a     move.w     #$5a, (a7)
00124e: 41d7         lea.l      (a7), a0
001250: 2008         move.l     a0, d0
001252: 61000058     bsr.w      $12ac
001256: 4fef005c     lea.l      $5c(a7), a7
00125a: 4ced0100fffc movem.l    -$4(a5), a0
001260: 4e5d         unlk       a5
001262: 4e75         rts        
001264: 4e550000     link.w     a5, #$0
001268: 48e78080     movem.l    d0/a0, -(a7)
00126c: 4fefffa4     lea.l      -$5c(a7), a7
001270: 3f7c00020002 move.w     #$2, $2(a7)
001276: 3f7c01400004 move.w     #$140, $4(a7)
00127c: 3f7c00010006 move.w     #$1, $6(a7)
001282: 3ebc005a     move.w     #$5a, (a7)
001286: 41d7         lea.l      (a7), a0
001288: 2008         move.l     a0, d0
00128a: 61000020     bsr.w      $12ac
00128e: 4fef005c     lea.l      $5c(a7), a7
001292: 4ced0100fffc movem.l    -$4(a5), a0
001298: 4e5d         unlk       a5
00129a: 4e75         rts        
00129c: 4e550000     link.w     a5, #$0
0012a0: 48e78000     movem.l    d0, -(a7)
0012a4: 202e871c     move.l     -$78e4(a6), d0
0012a8: 4e5d         unlk       a5
0012aa: 4e75         rts        
0012ac: 4e550000     link.w     a5, #$0
0012b0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0012b4: 518f         subq.l     #$8, a7
0012b6: 206f0008     movea.l    $8(a7), a0
0012ba: 3010         move.w     (a0), d0
0012bc: 48c0         ext.l      d0
0012be: 5480         addq.l     #$2, d0
0012c0: 2f400004     move.l     d0, $4(a7)
0012c4: 2f2f0004     move.l     $4(a7), -(a7)
0012c8: 222f000c     move.l     $c(a7), d1
0012cc: 202e8720     move.l     -$78e0(a6), d0
0012d0: 610019bc     bsr.w      $2c8e
0012d4: 588f         addq.l     #$4, a7
0012d6: 2e80         move.l     d0, (a7)
0012d8: 2017         move.l     (a7), d0
0012da: b0af0004     cmp.l      $4(a7), d0
0012de: 6704         beq.b      $12e4
0012e0: 7000         moveq      #$0, d0
0012e2: 6002         bra.b      $12e6
0012e4: 7001         moveq      #$1, d0
0012e6: 508f         addq.l     #$8, a7
0012e8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0012ee: 4e5d         unlk       a5
0012f0: 4e75         rts        
0012f2: 4e550000     link.w     a5, #$0
0012f6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0012fa: 598f         subq.l     #$4, a7
0012fc: 48780002     pea.l      $2.w
001300: 222f0008     move.l     $8(a7), d1
001304: 202e8724     move.l     -$78dc(a6), d0
001308: 6100197c     bsr.w      $2c86
00130c: 588f         addq.l     #$4, a7
00130e: 2e80         move.l     d0, (a7)
001310: 7002         moveq      #$2, d0
001312: b097         cmp.l      (a7), d0
001314: 6628         bne.b      $133e
001316: 206f0004     movea.l    $4(a7), a0
00131a: 3050         movea.w    (a0), a0
00131c: 2f08         move.l     a0, -(a7)
00131e: 202f0008     move.l     $8(a7), d0
001322: 5480         addq.l     #$2, d0
001324: 2200         move.l     d0, d1
001326: 202e8724     move.l     -$78dc(a6), d0
00132a: 6100195a     bsr.w      $2c86
00132e: 588f         addq.l     #$4, a7
001330: 2e80         move.l     d0, (a7)
001332: 206f0004     movea.l    $4(a7), a0
001336: 3010         move.w     (a0), d0
001338: 48c0         ext.l      d0
00133a: b097         cmp.l      (a7), d0
00133c: 6708         beq.b      $1346
00133e: 70ff         moveq      #$ff, d0
001340: b097         cmp.l      (a7), d0
001342: 7000         moveq      #$0, d0
001344: 6002         bra.b      $1348
001346: 7001         moveq      #$1, d0
001348: 588f         addq.l     #$4, a7
00134a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001350: 4e5d         unlk       a5
001352: 4e75         rts        
001354: 4e550000     link.w     a5, #$0
001358: 48e7c080     movem.l    d0-d1/a0, -(a7)
00135c: 7202         moveq      #$2, d1
00135e: 41fa0076     lea.l      $13d6(pc), a0
001362: 2008         move.l     a0, d0
001364: 61000a54     bsr.w      $1dba
001368: 2d408720     move.l     d0, -$78e0(a6)
00136c: 6d2e         blt.b      $139c
00136e: 41fa0086     lea.l      $13f6(pc), a0
001372: 2208         move.l     a0, d1
001374: 41ee81bc     lea.l      -$7e44(a6), a0
001378: 2008         move.l     a0, d0
00137a: 610018b6     bsr.w      $2c32
00137e: 41ee81bc     lea.l      -$7e44(a6), a0
001382: 2008         move.l     a0, d0
001384: 6100198c     bsr.w      $2d12
001388: 2d40871c     move.l     d0, -$78e4(a6)
00138c: 7203         moveq      #$3, d1
00138e: 202e871c     move.l     -$78e4(a6), d0
001392: 61000a40     bsr.w      $1dd4
001396: 2d408724     move.l     d0, -$78dc(a6)
00139a: 6c04         bge.b      $13a0
00139c: 7000         moveq      #$0, d0
00139e: 6002         bra.b      $13a2
0013a0: 7001         moveq      #$1, d0
0013a2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0013a8: 4e5d         unlk       a5
0013aa: 4e75         rts        
0013ac: 4e550000     link.w     a5, #$0
0013b0: 48e78000     movem.l    d0, -(a7)
0013b4: 202e8720     move.l     -$78e0(a6), d0
0013b8: 610018e8     bsr.w      $2ca2
0013bc: 4a80         tst.l      d0
0013be: 6d10         blt.b      $13d0
0013c0: 4aae8724     tst.l      -$78dc(a6)
0013c4: 6f0a         ble.b      $13d0
0013c6: 202e8724     move.l     -$78dc(a6), d0
0013ca: 610018d6     bsr.w      $2ca2
0013ce: 4a80         tst.l      d0
0013d0: 7001         moveq      #$1, d0
0013d2: 4e5d         unlk       a5
0013d4: 4e75         rts        
0013d6: 2f63302f     move.l     -(a3), $302f(a7)
0013da: 5f313239     subq.b     #$7, $39(a1, d3.w)
0013de: 5f2f7069     subq.b     #$7, $7069(a7)
0013e2: 7065         moveq      #$65, d0
0013e4: 2f646263     move.l     -(a4), $6263(a7)
0013e8: 5f72657175657374 subq.w     #$7, ([$75657374, a2])
0013f0: 5f70697065002f63 subq.w     #$7, $65002f63(a0, invalid.w)
0013f8: 302f5f31     move.w     $5f31(a7), d0
0013fc: 32395f2f7069 move.w     $5f2f7069.l, d1
001402: 7065         moveq      #$65, d0
001404: 2f646263     move.l     -(a4), $6263(a7)
001408: 5f7273705f585858 subq.w     #$7, $5f585858(a2, invalid.w)
001410: 5858         addq.w     #$4, (a0)+
001412: 5800         addq.b     #$4, d0
001414: 4e550000     link.w     a5, #$0
001418: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00141c: 202f0004     move.l     $4(a7), d0
001420: d0af0018     add.l      $18(a7), d0
001424: 5380         subq.l     #$1, d0
001426: 610018be     bsr.w      $2ce6
00142a: 2057         movea.l    (a7), a0
00142c: 2080         move.l     d0, (a0)
00142e: 6604         bne.b      $1434
001430: 7000         moveq      #$0, d0
001432: 6026         bra.b      $145a
001434: 2057         movea.l    (a7), a0
001436: 2257         movea.l    (a7), a1
001438: 23500004     move.l     (a0), $4(a1)
00143c: 6006         bra.b      $1444
00143e: 2057         movea.l    (a7), a0
001440: 52a80004     addq.l     #$1, $4(a0)
001444: 2057         movea.l    (a7), a0
001446: 20280004     move.l     $4(a0), d0
00144a: 4c6f08010018 divs.l     $18(a7), d0
001450: 4a81         tst.l      d1
001452: 66ea         bne.b      $143e
001454: 2057         movea.l    (a7), a0
001456: 20280004     move.l     $4(a0), d0
00145a: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001460: 4e5d         unlk       a5
001462: 4e75         rts        
001464: 4e550000     link.w     a5, #$0
001468: 48e78080     movem.l    d0/a0, -(a7)
00146c: 2057         movea.l    (a7), a0
00146e: 2010         move.l     (a0), d0
001470: 61001880     bsr.w      $2cf2
001474: 4ced0100fffc movem.l    -$4(a5), a0
00147a: 4e5d         unlk       a5
00147c: 4e75         rts        
00147e: 4e550000     link.w     a5, #$0
001482: 48e78080     movem.l    d0/a0, -(a7)
001486: 202e872c     move.l     -$78d4(a6), d0
00148a: 52ae872c     addq.l     #$1, -$78d4(a6)
00148e: 41ee81ee     lea.l      -$7e12(a6), a0
001492: 21970c00     move.l     (a7), (a0, d0.l * 4)
001496: 703f         moveq      #$3f, d0
001498: b0ae872c     cmp.l      -$78d4(a6), d0
00149c: 6c04         bge.b      $14a2
00149e: 42ae872c     clr.l      -$78d4(a6)
0014a2: 4ced0100fffc movem.l    -$4(a5), a0
0014a8: 4e5d         unlk       a5
0014aa: 4e75         rts        
0014ac: 4e550000     link.w     a5, #$0
0014b0: 48e78080     movem.l    d0/a0, -(a7)
0014b4: 598f         subq.l     #$4, a7
0014b6: 202e8728     move.l     -$78d8(a6), d0
0014ba: b0ae872c     cmp.l      -$78d4(a6), d0
0014be: 6604         bne.b      $14c4
0014c0: 70ff         moveq      #$ff, d0
0014c2: 601e         bra.b      $14e2
0014c4: 202e8728     move.l     -$78d8(a6), d0
0014c8: 52ae8728     addq.l     #$1, -$78d8(a6)
0014cc: 41ee81ee     lea.l      -$7e12(a6), a0
0014d0: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
0014d4: 703f         moveq      #$3f, d0
0014d6: b0ae8728     cmp.l      -$78d8(a6), d0
0014da: 6c04         bge.b      $14e0
0014dc: 42ae8728     clr.l      -$78d8(a6)
0014e0: 2017         move.l     (a7), d0
0014e2: 588f         addq.l     #$4, a7
0014e4: 4ced0100fffc movem.l    -$4(a5), a0
0014ea: 4e5d         unlk       a5
0014ec: 4e75         rts        
0014ee: 4e550000     link.w     a5, #$0
0014f2: 48e78000     movem.l    d0, -(a7)
0014f6: 4e5d         unlk       a5
0014f8: 4e75         rts        
0014fa: 4e550000     link.w     a5, #$0
0014fe: 48e78000     movem.l    d0, -(a7)
001502: 202e8728     move.l     -$78d8(a6), d0
001506: b0ae872c     cmp.l      -$78d4(a6), d0
00150a: 6604         bne.b      $1510
00150c: 7001         moveq      #$1, d0
00150e: 6002         bra.b      $1512
001510: 7000         moveq      #$0, d0
001512: 4e5d         unlk       a5
001514: 4e75         rts        
001516: 4e550000     link.w     a5, #$0
00151a: 48e78000     movem.l    d0, -(a7)
00151e: 2017         move.l     (a7), d0
001520: 61001134     bsr.w      $2656
001524: 7001         moveq      #$1, d0
001526: 4e5d         unlk       a5
001528: 4e75         rts        
00152a: 4e550000     link.w     a5, #$0
00152e: 48e78000     movem.l    d0, -(a7)
001532: 7001         moveq      #$1, d0
001534: 4e5d         unlk       a5
001536: 4e75         rts        
001538: 4e550000     link.w     a5, #$0
00153c: 48e78800     movem.l    d0/d4, -(a7)
001540: 610004fe     bsr.w      $1a40
001544: 6100ff66     bsr.w      $14ac
001548: 2800         move.l     d0, d4
00154a: 6c0c         bge.b      $1558
00154c: 7000         moveq      #$0, d0
00154e: 61001e26     bsr.w      $3376
001552: 6100ff58     bsr.w      $14ac
001556: 2800         move.l     d0, d4
001558: 61000512     bsr.w      $1a6c
00155c: 2004         move.l     d4, d0
00155e: 4ced0010fffc movem.l    -$4(a5), d4
001564: 4e5d         unlk       a5
001566: 4e75         rts        
001568: 0008         .dc.w      $0008
00156a: 006e000c006a ori.w      #$c, $6a(a6)
001570: 00100066     ori.b      #$66, (a0)
001574: 00140062     ori.b      #$62, (a4)
001578: 0018005e     ori.b      #$5e, (a0)+
00157c: 001c005a     ori.b      #$5a, (a4)+
001580: 00200056     ori.b      #$56, -(a0)
001584: 002c00520028 ori.b      #$52, $28(a4)
00158a: 004e         .dc.w      $004e
00158c: ffff         dc.w       $ffff
00158e: 0008         .dc.w      $0008
001590: 0000000c     ori.b      #$c, d0
001594: 00000010     ori.b      #$10, d0
001598: 00000014     ori.b      #$14, d0
00159c: 00000018     ori.b      #$18, d0
0015a0: 0000001c     ori.b      #$1c, d0
0015a4: 00000020     ori.b      #$20, d0
0015a8: 0000002c     ori.b      #$2c, d0
0015ac: 00000028     ori.b      #$28, d0
0015b0: 0000ffff     ori.b      #$ff, d0
0015b4: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0015b8: 43faffae     lea.l      $1568(pc), a1
0015bc: 6008         bra.b      $15c6
0015be: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0015c2: 43faffca     lea.l      $158e(pc), a1
0015c6: 91c8         suba.l     a0, a0
0015c8: 4e40         trap       #$0
0015ca: 000e         .dc.w      $000e
0015cc: 6406         bcc.b      $15d4
0015ce: 2d41800c     move.l     d1, -$7ff4(a6)
0015d2: 70ff         moveq      #$ff, d0
0015d4: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
0015d8: 4e75         rts        
0015da: 48e70004     movem.l    a5, -(a7)
0015de: 91ee8740     suba.l     -$78c0(a6), a0
0015e2: 2d488738     move.l     a0, -$78c8(a6)
0015e6: 41ee82ee     lea.l      -$7d12(a6), a0
0015ea: 202e8734     move.l     -$78cc(a6), d0
0015ee: e248         lsr.w      #$1, d0
0015f0: 5340         subq.w     #$1, d0
0015f2: 30dd         move.w     (a5)+, (a0)+
0015f4: 51c8fffc     dbra       d0, $15f2
0015f8: 4cdf2000     movem.l    (a7)+, a5
0015fc: e44f         lsr.w      #$2, d7
0015fe: 3d47873c     move.w     d7, -$78c4(a6)
001602: 206e8336     movea.l    -$7cca(a6), a0
001606: 4e90         jsr        (a0)
001608: 4a80         tst.l      d0
00160a: 6708         beq.b      $1614
00160c: 7264         moveq      #$64, d1
00160e: d247         add.w      d7, d1
001610: 4e40         trap       #$0
001612: 00064cdf     ori.b      #$df, d6
001616: 7fff         .dc.w      $7fff
001618: 588f         addq.l     #$4, a7
00161a: 44df         move.w     (a7)+, ccr
00161c: 4e75         rts        
00161e: 4e550000     link.w     a5, #$0
001622: 48e78000     movem.l    d0, -(a7)
001626: 1d7c0001873e move.b     #$1, -$78c2(a6)
00162c: 4e5d         unlk       a5
00162e: 4e75         rts        
001630: 4e550000     link.w     a5, #$0
001634: 48e78000     movem.l    d0, -(a7)
001638: 2d578336     move.l     (a7), -$7cca(a6)
00163c: 6606         bne.b      $1644
00163e: 6100ff7e     bsr.w      $15be
001642: 6004         bra.b      $1648
001644: 6100ff6e     bsr.w      $15b4
001648: 4e5d         unlk       a5
00164a: 4e75         rts        
00164c: 4e550000     link.w     a5, #$0
001650: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001654: 4fefffd4     lea.l      -$2c(a7), a7
001658: 604a         bra.b      $16a4
00165a: 2ebc000000b5 move.l     #$b5, (a7)
001660: 60000076     bra.w      $16d8
001664: 2ebc000000b6 move.l     #$b6, (a7)
00166a: 606c         bra.b      $16d8
00166c: 2ebc000000b7 move.l     #$b7, (a7)
001672: 6064         bra.b      $16d8
001674: 2ebc000000b8 move.l     #$b8, (a7)
00167a: 605c         bra.b      $16d8
00167c: 2ebc000000b9 move.l     #$b9, (a7)
001682: 6054         bra.b      $16d8
001684: 2ebc000000ba move.l     #$ba, (a7)
00168a: 604c         bra.b      $16d8
00168c: 2ebc000000b2 move.l     #$b2, (a7)
001692: 6044         bra.b      $16d8
001694: 2ebc000000c0 move.l     #$c0, (a7)
00169a: 603c         bra.b      $16d8
00169c: 2ebc000000b3 move.l     #$b3, (a7)
0016a2: 6034         bra.b      $16d8
0016a4: 302e873c     move.w     -$78c4(a6), d0
0016a8: 48c0         ext.l      d0
0016aa: 7264         moveq      #$64, d1
0016ac: d081         add.l      d1, d0
0016ae: 048000000066 subi.l     #$66, d0
0016b4: 0c8000000009 cmpi.l     #$9, d0
0016ba: 62e0         bhi.b      $169c
0016bc: 303b0206     move.w     $16c4(pc, d0.w), d0
0016c0: 4efb0002     jmp        $16c4(pc, d0.w)
0016c4: ff96         dc.w       $ff96
0016c6: ffa0         dc.w       $ffa0
0016c8: ffa8         dc.w       $ffa8
0016ca: ffb0         dc.w       $ffb0
0016cc: ffb8         dc.w       $ffb8
0016ce: ffc0         dc.w       $ffc0
0016d0: ffc8         dc.w       $ffc8
0016d2: ffd8         dc.w       $ffd8
0016d4: ffd0         dc.w       $ffd0
0016d6: ffd0         dc.w       $ffd0
0016d8: 0c97000000ba cmpi.l     #$ba, (a7)
0016de: 660c         bne.b      $16ec
0016e0: 4a2e873e     tst.b      -$78c2(a6)
0016e4: 6706         beq.b      $16ec
0016e6: 7000         moveq      #$0, d0
0016e8: 600001ec     bra.w      $18d6
0016ec: 2f2e8738     move.l     -$78c8(a6), -(a7)
0016f0: 306e873c     movea.w    -$78c4(a6), a0
0016f4: 2f08         move.l     a0, -(a7)
0016f6: 610015ce     bsr.w      $2cc6
0016fa: 2200         move.l     d0, d1
0016fc: 41fa01f0     lea.l      $18ee(pc), a0
001700: 2008         move.l     a0, d0
001702: 61001526     bsr.w      $2c2a
001706: 508f         addq.l     #$8, a7
001708: 61001f18     bsr.w      $3622
00170c: 2f00         move.l     d0, -(a7)
00170e: 610015b6     bsr.w      $2cc6
001712: 2f00         move.l     d0, -(a7)
001714: 2f2e8730     move.l     -$78d0(a6), -(a7)
001718: 41fa01fb     lea.l      $1915(pc), a0
00171c: 2208         move.l     a0, d1
00171e: 41ef0010     lea.l      $10(a7), a0
001722: 2008         move.l     a0, d0
001724: 6100150c     bsr.w      $2c32
001728: 4fef000c     lea.l      $c(a7), a7
00172c: 41fa01ef     lea.l      $191d(pc), a0
001730: 2208         move.l     a0, d1
001732: 41ef0004     lea.l      $4(a7), a0
001736: 2008         move.l     a0, d0
001738: 610014c0     bsr.w      $2bfa
00173c: 2440         movea.l    d0, a2
00173e: 4a80         tst.l      d0
001740: 6604         bne.b      $1746
001742: 45ee839e     lea.l      -$7c62(a6), a2
001746: 2f2e8738     move.l     -$78c8(a6), -(a7)
00174a: 306e873c     movea.w    -$78c4(a6), a0
00174e: 2f08         move.l     a0, -(a7)
001750: 61001574     bsr.w      $2cc6
001754: 2f00         move.l     d0, -(a7)
001756: 41fa01c7     lea.l      $191f(pc), a0
00175a: 2208         move.l     a0, d1
00175c: 200a         move.l     a2, d0
00175e: 610014ce     bsr.w      $2c2e
001762: 4fef000c     lea.l      $c(a7), a7
001766: 7800         moveq      #$0, d4
001768: 6018         bra.b      $1782
00176a: 41ee82ee     lea.l      -$7d12(a6), a0
00176e: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
001772: 41fa01d6     lea.l      $194a(pc), a0
001776: 2208         move.l     a0, d1
001778: 200a         move.l     a2, d0
00177a: 610014b2     bsr.w      $2c2e
00177e: 588f         addq.l     #$4, a7
001780: 5284         addq.l     #$1, d4
001782: 7008         moveq      #$8, d0
001784: b084         cmp.l      d4, d0
001786: 6ee2         bgt.b      $176a
001788: 41fa01c7     lea.l      $1951(pc), a0
00178c: 2208         move.l     a0, d1
00178e: 200a         move.l     a2, d0
001790: 6100149c     bsr.w      $2c2e
001794: 6018         bra.b      $17ae
001796: 41ee82ee     lea.l      -$7d12(a6), a0
00179a: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
00179e: 41fa01b7     lea.l      $1957(pc), a0
0017a2: 2208         move.l     a0, d1
0017a4: 200a         move.l     a2, d0
0017a6: 61001486     bsr.w      $2c2e
0017aa: 588f         addq.l     #$4, a7
0017ac: 5284         addq.l     #$1, d4
0017ae: 7010         moveq      #$10, d0
0017b0: b084         cmp.l      d4, d0
0017b2: 6ee2         bgt.b      $1796
0017b4: 41fa01a8     lea.l      $195e(pc), a0
0017b8: 2208         move.l     a0, d1
0017ba: 200a         move.l     a2, d0
0017bc: 61001470     bsr.w      $2c2e
0017c0: 266e8322     movea.l    -$7cde(a6), a3
0017c4: 7800         moveq      #$0, d4
0017c6: 6014         bra.b      $17dc
0017c8: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0017cc: 41fa01ac     lea.l      $197a(pc), a0
0017d0: 2208         move.l     a0, d1
0017d2: 200a         move.l     a2, d0
0017d4: 61001458     bsr.w      $2c2e
0017d8: 588f         addq.l     #$4, a7
0017da: 5284         addq.l     #$1, d4
0017dc: 7008         moveq      #$8, d0
0017de: b084         cmp.l      d4, d0
0017e0: 6ee6         bgt.b      $17c8
0017e2: 41fa019d     lea.l      $1981(pc), a0
0017e6: 2208         move.l     a0, d1
0017e8: 200a         move.l     a2, d0
0017ea: 61001442     bsr.w      $2c2e
0017ee: 266e832a     movea.l    -$7cd6(a6), a3
0017f2: 7800         moveq      #$0, d4
0017f4: 6014         bra.b      $180a
0017f6: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0017fa: 41fa01a0     lea.l      $199c(pc), a0
0017fe: 2208         move.l     a0, d1
001800: 200a         move.l     a2, d0
001802: 6100142a     bsr.w      $2c2e
001806: 588f         addq.l     #$4, a7
001808: 5284         addq.l     #$1, d4
00180a: 7008         moveq      #$8, d0
00180c: b084         cmp.l      d4, d0
00180e: 6ee6         bgt.b      $17f6
001810: 41fa0191     lea.l      $19a3(pc), a0
001814: 2208         move.l     a0, d1
001816: 200a         move.l     a2, d0
001818: 61001414     bsr.w      $2c2e
00181c: 266e8322     movea.l    -$7cde(a6), a3
001820: 2653         movea.l    (a3), a3
001822: 7800         moveq      #$0, d4
001824: 6014         bra.b      $183a
001826: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
00182a: 41fa01a5     lea.l      $19d1(pc), a0
00182e: 2208         move.l     a0, d1
001830: 200a         move.l     a2, d0
001832: 610013fa     bsr.w      $2c2e
001836: 588f         addq.l     #$4, a7
001838: 5284         addq.l     #$1, d4
00183a: 7008         moveq      #$8, d0
00183c: b084         cmp.l      d4, d0
00183e: 6ee6         bgt.b      $1826
001840: 082e0000832f btst.b     #$0, -$7cd1(a6)
001846: 6704         beq.b      $184c
001848: 7043         moveq      #$43, d0
00184a: 6002         bra.b      $184e
00184c: 702d         moveq      #$2d, d0
00184e: 2f00         move.l     d0, -(a7)
001850: 082e0001832f btst.b     #$1, -$7cd1(a6)
001856: 6704         beq.b      $185c
001858: 7056         moveq      #$56, d0
00185a: 6002         bra.b      $185e
00185c: 702d         moveq      #$2d, d0
00185e: 2f00         move.l     d0, -(a7)
001860: 082e0002832f btst.b     #$2, -$7cd1(a6)
001866: 6704         beq.b      $186c
001868: 705a         moveq      #$5a, d0
00186a: 6002         bra.b      $186e
00186c: 702d         moveq      #$2d, d0
00186e: 2f00         move.l     d0, -(a7)
001870: 082e0003832f btst.b     #$3, -$7cd1(a6)
001876: 6704         beq.b      $187c
001878: 704e         moveq      #$4e, d0
00187a: 6002         bra.b      $187e
00187c: 702d         moveq      #$2d, d0
00187e: 2f00         move.l     d0, -(a7)
001880: 082e0004832f btst.b     #$4, -$7cd1(a6)
001886: 6704         beq.b      $188c
001888: 7058         moveq      #$58, d0
00188a: 6002         bra.b      $188e
00188c: 702d         moveq      #$2d, d0
00188e: 2f00         move.l     d0, -(a7)
001890: 303c00ff     move.w     #$ff, d0
001894: c06e832e     and.w      -$7cd2(a6), d0
001898: 7200         moveq      #$0, d1
00189a: 3200         move.w     d0, d1
00189c: 2f01         move.l     d1, -(a7)
00189e: 2f2e8330     move.l     -$7cd0(a6), -(a7)
0018a2: 41fa0134     lea.l      $19d8(pc), a0
0018a6: 2208         move.l     a0, d1
0018a8: 200a         move.l     a2, d0
0018aa: 61001382     bsr.w      $2c2e
0018ae: 4fef001c     lea.l      $1c(a7), a7
0018b2: 41ee839e     lea.l      -$7c62(a6), a0
0018b6: b1ca         cmpa.l     a2, a0
0018b8: 6706         beq.b      $18c0
0018ba: 200a         move.l     a2, d0
0018bc: 61001390     bsr.w      $2c4e
0018c0: 2f2e8738     move.l     -$78c8(a6), -(a7)
0018c4: 61001d5c     bsr.w      $3622
0018c8: 2200         move.l     d0, d1
0018ca: 202f0004     move.l     $4(a7), d0
0018ce: 61000362     bsr.w      $1c32
0018d2: 588f         addq.l     #$4, a7
0018d4: 70ff         moveq      #$ff, d0
0018d6: 4fef002c     lea.l      $2c(a7), a7
0018da: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
0018e0: 4e5d         unlk       a5
0018e2: 4e75         rts        
0018e4: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
0018ea: 6170         bsr.b      $195c
0018ec: 5f00         subq.b     #$7, d0
0018ee: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
0018f4: 6170         bsr.b      $1966
0018f6: 2023         move.l     -(a3), d0
0018f8: 2564206f     move.l     -(a4), $206f(a2)
0018fc: 6363         bls.b      $1961
0018fe: 7572         .dc.w      $7572
001900: 7265         moveq      #$65, d1
001902: 6420         bcc.b      $1924
001904: 6174         bsr.b      $197a
001906: 206f6666     movea.l    $6666(a7), a0
00190a: 7365         .dc.w      $7365
00190c: 743a         moveq      #$3a, d2
00190e: 20307825     move.l     $25(a0, d7.l), d0
001912: 780d         moveq      #$d, d4
001914: 00257325     ori.b      #$25, -(a5)
001918: 735f         .dc.w      $735f
00191a: 25640077     move.l     -(a4), $77(a2)
00191e: 0025733a     ori.b      #$3a, -(a5)
001922: 2054         movea.l    (a4), a0
001924: 7261         moveq      #$61, d1
001926: 7020         moveq      #$20, d0
001928: 2325         move.l     -(a5), -(a1)
00192a: 6420         bcc.b      $194c
00192c: 6f63         ble.b      $1991
00192e: 6375         bls.b      $19a5
001930: 7272         moveq      #$72, d1
001932: 6564         bcs.b      $1998
001934: 2061         movea.l    -(a1), a0
001936: 7420         moveq      #$20, d2
001938: 6f66         ble.b      $19a0
00193a: 6673         bne.b      $19af
00193c: 6574         bcs.b      $19b2
00193e: 3a20         move.w     -(a0), d5
001940: 30782578     movea.w    $2578.w, a0
001944: 0d0d446e     movep.w    $446e(a5), d6
001948: 3a00         move.w     d0, d5
00194a: 2025         move.l     -(a5), d0
00194c: 30386c58     move.w     $6c58.w, d0
001950: 000d         .dc.w      $000d
001952: 0d41         bchg.b     d6, d1
001954: 6e3a         bgt.b      $1990
001956: 00202530     ori.b      #$30, -(a0)
00195a: 386c5800     movea.w    $5800(a4), a4
00195e: 0d0d4d65     movep.w    $4d65(a5), d6
001962: 6d20         blt.b      $1984
001964: 706f         moveq      #$6f, d0
001966: 696e         bvs.b      $19d6
001968: 7465         moveq      #$65, d2
00196a: 6420         bcc.b      $198c
00196c: 746f         moveq      #$6f, d2
00196e: 2062         movea.l    -(a2), a0
001970: 7920         .dc.w      $7920
001972: 41353a0d     chk.l      $d(a5, d3.l), d0
001976: 53353a00     subq.b     #$1, (a5, d3.l * 2)
00197a: 2025         move.l     -(a5), d0
00197c: 30386c58     move.w     $6c58.w, d0
001980: 000d         .dc.w      $000d
001982: 0d4d656d     movep.l    $656d(a5), d6
001986: 20706f696e74 movea.l    ([$6e74, a0]), a0
00198c: 6564         bcs.b      $19f2
00198e: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
001994: 2041         movea.l    d1, a0
001996: 373a0d53     move.w     $26eb(pc), -(a3)
00199a: 3700         move.w     d0, -(a3)
00199c: 2025         move.l     -(a5), d0
00199e: 30386c58     move.w     $6c58.w, d0
0019a2: 000d         .dc.w      $000d
0019a4: 0d4d656d     movep.l    $656d(a5), d6
0019a8: 20706f696e74 movea.l    ([$6e74, a0]), a0
0019ae: 6564         bcs.b      $1a14
0019b0: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
0019b6: 20284135     move.l     $4135(a0), d0
0019ba: 292c2069     move.l     $2069(a4), -(a4)
0019be: 652e         bcs.b      $19ee
0019c0: 2063         movea.l    -(a3), a0
0019c2: 6f6e         ble.b      $1a32
0019c4: 7420         moveq      #$20, d2
0019c6: 6f66         ble.b      $1a2e
0019c8: 2041         movea.l    d1, a0
0019ca: 353a0d4d     move.w     $2719(pc), -(a2)
0019ce: 353a0020     move.w     $19f0(pc), -(a2)
0019d2: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0019d6: 5800         addq.b     #$4, d0
0019d8: 0d0d5043     movep.w    $5043(a5), d6
0019dc: 3a20         move.w     -(a0), d5
0019de: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0019e2: 5820         addq.b     #$4, -(a0)
0019e4: 2043         movea.l    d3, a0
0019e6: 433a2025     chk.l      $3a0d(pc), d1
0019ea: 30325820     move.w     $20(a2, d5.l), d0
0019ee: 2825         move.l     -(a5), d4
0019f0: 6325         bls.b      $1a17
0019f2: 6325         bls.b      $1a19
0019f4: 6325         bls.b      $1a1b
0019f6: 6325         bls.b      $1a1d
0019f8: 6329         bls.b      $1a23
0019fa: 0d00         btst.l     d6, d0
0019fc: 4e550000     link.w     a5, #$0
001a00: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
001a04: 2800         move.l     d0, d4
001a06: 7204         moveq      #$4, d1
001a08: 7044         moveq      #$44, d0
001a0a: 61001a98     bsr.w      $34a4
001a0e: 2440         movea.l    d0, a2
001a10: 3a12         move.w     (a2), d5
001a12: 601c         bra.b      $1a30
001a14: 4a92         tst.l      (a2)
001a16: 6718         beq.b      $1a30
001a18: 2052         movea.l    (a2), a0
001a1a: 7000         moveq      #$0, d0
001a1c: 3010         move.w     (a0), d0
001a1e: 3204         move.w     d4, d1
001a20: 48c1         ext.l      d1
001a22: b081         cmp.l      d1, d0
001a24: 660a         bne.b      $1a30
001a26: 2052         movea.l    (a2), a0
001a28: 7000         moveq      #$0, d0
001a2a: 30280002     move.w     $2(a0), d0
001a2e: 6006         bra.b      $1a36
001a30: 588a         addq.l     #$4, a2
001a32: 5345         subq.w     #$1, d5
001a34: 6cde         bge.b      $1a14
001a36: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
001a3c: 4e5d         unlk       a5
001a3e: 4e75         rts        
001a40: 48e74000     movem.l    d1, -(a7)
001a44: 203c00000000 move.l     #$0, d0
001a4a: 223c00000001 move.l     #$1, d1
001a50: 4e40         trap       #$0
001a52: 0057640c     ori.w      #$640c, (a7)
001a56: 2d41800c     move.l     d1, -$7ff4(a6)
001a5a: 70ff         moveq      #$ff, d0
001a5c: 4cdf0002     movem.l    (a7)+, d1
001a60: 4e75         rts        
001a62: 4280         clr.l      d0
001a64: 3001         move.w     d1, d0
001a66: 4cdf0002     movem.l    (a7)+, d1
001a6a: 4e75         rts        
001a6c: 48e74000     movem.l    d1, -(a7)
001a70: 203c00000000 move.l     #$0, d0
001a76: 223c00000000 move.l     #$0, d1
001a7c: 4e40         trap       #$0
001a7e: 005764e0     ori.w      #$64e0, (a7)
001a82: 60d2         bra.b      $1a56
001a84: 48e740e0     movem.l    d1/a0-a2, -(a7)
001a88: 207900000000 movea.l    $0.l, a0
001a8e: 2268004c     movea.l    $4c(a0), a1
001a92: 4280         clr.l      d0
001a94: 10290370     move.b     $370(a1), d0
001a98: 4cdf0702     movem.l    (a7)+, d1/a0-a2
001a9c: 4e75         rts        
001a9e: 48e740e0     movem.l    d1/a0-a2, -(a7)
001aa2: 207900000000 movea.l    $0.l, a0
001aa8: 2268004c     movea.l    $4c(a0), a1
001aac: 81a90374     or.l       d0, $374(a1)
001ab0: 4cdf0702     movem.l    (a7)+, d1/a0-a2
001ab4: 4e75         rts        
001ab6: 48e740e0     movem.l    d1/a0-a2, -(a7)
001aba: 207900000000 movea.l    $0.l, a0
001ac0: 2268004c     movea.l    $4c(a0), a1
001ac4: 4480         neg.l      d0
001ac6: c1a90374     and.l      d0, $374(a1)
001aca: 4cdf0702     movem.l    (a7)+, d1/a0-a2
001ace: 4e75         rts        
001ad0: 323c0033     move.w     #$33, d1
001ad4: 4e40         trap       #$0
001ad6: 008e         .dc.w      $008e
001ad8: 55c0         scs.b      d0
001ada: 4880         ext.w      d0
001adc: 48c0         ext.l      d0
001ade: 2d41800c     move.l     d1, -$7ff4(a6)
001ae2: 4e75         rts        
001ae4: 323c0034     move.w     #$34, d1
001ae8: 4e40         trap       #$0
001aea: 008e         .dc.w      $008e
001aec: 55c0         scs.b      d0
001aee: 4880         ext.w      d0
001af0: 48c0         ext.l      d0
001af2: 2d41800c     move.l     d1, -$7ff4(a6)
001af6: 4e75         rts        
001af8: 323c0038     move.w     #$38, d1
001afc: 4e40         trap       #$0
001afe: 008e         .dc.w      $008e
001b00: 55c0         scs.b      d0
001b02: 4880         ext.w      d0
001b04: 48c0         ext.l      d0
001b06: 2d41800c     move.l     d1, -$7ff4(a6)
001b0a: 4e75         rts        
001b0c: 323c0039     move.w     #$39, d1
001b10: 4e40         trap       #$0
001b12: 008e         .dc.w      $008e
001b14: 55c0         scs.b      d0
001b16: 4880         ext.w      d0
001b18: 48c0         ext.l      d0
001b1a: 2d41800c     move.l     d1, -$7ff4(a6)
001b1e: 4e75         rts        
001b20: 323c0036     move.w     #$36, d1
001b24: 4e40         trap       #$0
001b26: 008e         .dc.w      $008e
001b28: 55c0         scs.b      d0
001b2a: 4880         ext.w      d0
001b2c: 48c0         ext.l      d0
001b2e: 2d41800c     move.l     d1, -$7ff4(a6)
001b32: 4e75         rts        
001b34: 323c0037     move.w     #$37, d1
001b38: 4e40         trap       #$0
001b3a: 008e         .dc.w      $008e
001b3c: 55c0         scs.b      d0
001b3e: 4880         ext.w      d0
001b40: 48c0         ext.l      d0
001b42: 2d41800c     move.l     d1, -$7ff4(a6)
001b46: 4e75         rts        
001b48: 323c0024     move.w     #$24, d1
001b4c: 4e40         trap       #$0
001b4e: 008e         .dc.w      $008e
001b50: 55c0         scs.b      d0
001b52: 4880         ext.w      d0
001b54: 48c0         ext.l      d0
001b56: 2d41800c     move.l     d1, -$7ff4(a6)
001b5a: 4e75         rts        
001b5c: 323c0025     move.w     #$25, d1
001b60: 4e40         trap       #$0
001b62: 008e         .dc.w      $008e
001b64: 55c0         scs.b      d0
001b66: 4880         ext.w      d0
001b68: 48c0         ext.l      d0
001b6a: 2d41800c     move.l     d1, -$7ff4(a6)
001b6e: 4e75         rts        
001b70: 323c0003     move.w     #$3, d1
001b74: 4e40         trap       #$0
001b76: 008e         .dc.w      $008e
001b78: 55c0         scs.b      d0
001b7a: 4880         ext.w      d0
001b7c: 48c0         ext.l      d0
001b7e: 2d41800c     move.l     d1, -$7ff4(a6)
001b82: 4e75         rts        
001b84: 323c0001     move.w     #$1, d1
001b88: 4e40         trap       #$0
001b8a: 008d         .dc.w      $008d
001b8c: 55c0         scs.b      d0
001b8e: 4880         ext.w      d0
001b90: 48c0         ext.l      d0
001b92: 2d41800c     move.l     d1, -$7ff4(a6)
001b96: 4e75         rts        
001b98: 3401         move.w     d1, d2
001b9a: 323c0027     move.w     #$27, d1
001b9e: 4e40         trap       #$0
001ba0: 008e         .dc.w      $008e
001ba2: 55c0         scs.b      d0
001ba4: 4880         ext.w      d0
001ba6: 48c0         ext.l      d0
001ba8: 2d41800c     move.l     d1, -$7ff4(a6)
001bac: 4e75         rts        
001bae: 2401         move.l     d1, d2
001bb0: 323c0026     move.w     #$26, d1
001bb4: 4e40         trap       #$0
001bb6: 008e         .dc.w      $008e
001bb8: 55c0         scs.b      d0
001bba: 4880         ext.w      d0
001bbc: 48c0         ext.l      d0
001bbe: 2d41800c     move.l     d1, -$7ff4(a6)
001bc2: 4e75         rts        
001bc4: 2401         move.l     d1, d2
001bc6: 323c001a     move.w     #$1a, d1
001bca: 4e40         trap       #$0
001bcc: 008e         .dc.w      $008e
001bce: 55c0         scs.b      d0
001bd0: 4880         ext.w      d0
001bd2: 48c0         ext.l      d0
001bd4: 2d41800c     move.l     d1, -$7ff4(a6)
001bd8: 4e75         rts        
001bda: 323c001b     move.w     #$1b, d1
001bde: 4e40         trap       #$0
001be0: 008e         .dc.w      $008e
001be2: 55c0         scs.b      d0
001be4: 4880         ext.w      d0
001be6: 48c0         ext.l      d0
001be8: 2d41800c     move.l     d1, -$7ff4(a6)
001bec: 4e75         rts        
001bee: 4e550000     link.w     a5, #$0
001bf2: 48e7c080     movem.l    d0-d1/a0, -(a7)
001bf6: 518f         subq.l     #$8, a7
001bf8: 203c00000100 move.l     #$100, d0
001bfe: d0af0008     add.l      $8(a7), d0
001c02: 2e80         move.l     d0, (a7)
001c04: 1f6f000f0004 move.b     $f(a7), $4(a7)
001c0a: 202f001c     move.l     $1c(a7), d0
001c0e: e080         asr.l      #$8, d0
001c10: 1f400005     move.b     d0, $5(a7)
001c14: 1f6f001f0006 move.b     $1f(a7), $6(a7)
001c1a: 1f7c00ff0007 move.b     #$ff, $7(a7)
001c20: 41d7         lea.l      (a7), a0
001c22: 2008         move.l     a0, d0
001c24: 6146         bsr.b      $1c6c
001c26: 508f         addq.l     #$8, a7
001c28: 4ced0100fffc movem.l    -$4(a5), a0
001c2e: 4e5d         unlk       a5
001c30: 4e75         rts        
001c32: 4e550000     link.w     a5, #$0
001c36: 48e7c000     movem.l    d0-d1, -(a7)
001c3a: 2f2f0010     move.l     $10(a7), -(a7)
001c3e: 222f0008     move.l     $8(a7), d1
001c42: 202f0004     move.l     $4(a7), d0
001c46: 61a6         bsr.b      $1bee
001c48: 588f         addq.l     #$4, a7
001c4a: 203c00002410 move.l     #$2410, d0
001c50: 610000bc     bsr.w      $1d0e
001c54: 4e5d         unlk       a5
001c56: 4e75         rts        
001c58: 4e550000     link.w     a5, #$0
001c5c: 48e78000     movem.l    d0, -(a7)
001c60: 7000         moveq      #$0, d0
001c62: 61001712     bsr.w      $3376
001c66: 60f8         bra.b      $1c60
001c68: 4e5d         unlk       a5
001c6a: 4e75         rts        
001c6c: 4e550000     link.w     a5, #$0
001c70: 48e7c080     movem.l    d0-d1/a0, -(a7)
001c74: 4aae8744     tst.l      -$78bc(a6)
001c78: 6c16         bge.b      $1c90
001c7a: 7203         moveq      #$3, d1
001c7c: 41fa002e     lea.l      $1cac(pc), a0
001c80: 2008         move.l     a0, d0
001c82: 61000136     bsr.w      $1dba
001c86: 2d408744     move.l     d0, -$78bc(a6)
001c8a: 6c04         bge.b      $1c90
001c8c: 70ff         moveq      #$ff, d0
001c8e: 6012         bra.b      $1ca2
001c90: 2f17         move.l     (a7), -(a7)
001c92: 222e8744     move.l     -$78bc(a6), d1
001c96: 203c00007f23 move.l     #$7f23, d0
001c9c: 61000df6     bsr.w      $2a94
001ca0: 588f         addq.l     #$4, a7
001ca2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001ca8: 4e5d         unlk       a5
001caa: 4e75         rts        
001cac: 2f636339     move.l     -(a3), $6339(a7)
001cb0: 3300         move.w     d0, -(a1)
001cb2: 4e550000     link.w     a5, #$0
001cb6: 48e7c080     movem.l    d0-d1/a0, -(a7)
001cba: 518f         subq.l     #$8, a7
001cbc: 7201         moveq      #$1, d1
001cbe: 41fa00ce     lea.l      $1d8e(pc), a0
001cc2: 2008         move.l     a0, d0
001cc4: 610000f4     bsr.w      $1dba
001cc8: 2f400004     move.l     d0, $4(a7)
001ccc: 72ff         moveq      #$ff, d1
001cce: b280         cmp.l      d0, d1
001cd0: 6722         beq.b      $1cf4
001cd2: 48780004     pea.l      $4.w
001cd6: 41ef0004     lea.l      $4(a7), a0
001cda: 2208         move.l     a0, d1
001cdc: 202f0008     move.l     $8(a7), d0
001ce0: 61000fa4     bsr.w      $2c86
001ce4: 588f         addq.l     #$4, a7
001ce6: 7204         moveq      #$4, d1
001ce8: b280         cmp.l      d0, d1
001cea: 670c         beq.b      $1cf8
001cec: 202f0004     move.l     $4(a7), d0
001cf0: 61000fb0     bsr.w      $2ca2
001cf4: 70ff         moveq      #$ff, d0
001cf6: 600a         bra.b      $1d02
001cf8: 202f0004     move.l     $4(a7), d0
001cfc: 61000fa4     bsr.w      $2ca2
001d00: 2017         move.l     (a7), d0
001d02: 508f         addq.l     #$8, a7
001d04: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001d0a: 4e5d         unlk       a5
001d0c: 4e75         rts        
001d0e: 4e550000     link.w     a5, #$0
001d12: 48e7c000     movem.l    d0-d1, -(a7)
001d16: 2217         move.l     (a7), d1
001d18: 6198         bsr.b      $1cb2
001d1a: 61000242     bsr.w      $1f5e
001d1e: 72ff         moveq      #$ff, d1
001d20: b280         cmp.l      d0, d1
001d22: 4ced0002fffc movem.l    -$4(a5), d1
001d28: 4e5d         unlk       a5
001d2a: 4e75         rts        
001d2c: 4e550000     link.w     a5, #$0
001d30: 48e7c080     movem.l    d0-d1/a0, -(a7)
001d34: 518f         subq.l     #$8, a7
001d36: 7202         moveq      #$2, d1
001d38: 41fa006a     lea.l      $1da4(pc), a0
001d3c: 2008         move.l     a0, d0
001d3e: 6100007a     bsr.w      $1dba
001d42: 2f400004     move.l     d0, $4(a7)
001d46: 72ff         moveq      #$ff, d1
001d48: b280         cmp.l      d0, d1
001d4a: 6728         beq.b      $1d74
001d4c: 610018d4     bsr.w      $3622
001d50: 2e80         move.l     d0, (a7)
001d52: 48780004     pea.l      $4.w
001d56: 41ef0004     lea.l      $4(a7), a0
001d5a: 2208         move.l     a0, d1
001d5c: 202f0008     move.l     $8(a7), d0
001d60: 61000f2c     bsr.w      $2c8e
001d64: 588f         addq.l     #$4, a7
001d66: 7204         moveq      #$4, d1
001d68: b280         cmp.l      d0, d1
001d6a: 670c         beq.b      $1d78
001d6c: 202f0004     move.l     $4(a7), d0
001d70: 61000f30     bsr.w      $2ca2
001d74: 70ff         moveq      #$ff, d0
001d76: 600a         bra.b      $1d82
001d78: 202f0004     move.l     $4(a7), d0
001d7c: 61000f24     bsr.w      $2ca2
001d80: 7000         moveq      #$0, d0
001d82: 508f         addq.l     #$8, a7
001d84: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001d8a: 4e5d         unlk       a5
001d8c: 4e75         rts        
001d8e: 2f63302f     move.l     -(a3), $302f(a7)
001d92: 5f313239     subq.b     #$7, $39(a1, d3.w)
001d96: 5f2f7061     subq.b     #$7, $7061(a7)
001d9a: 636b         bls.b      $1e07
001d9c: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
001da2: 64002f63     bcc.w      $4d07
001da6: 302f5f31     move.w     $5f31(a7), d0
001daa: 32395f2f7061 move.w     $5f2f7061.l, d1
001db0: 636b         bls.b      $1e1d
001db2: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
001db8: 64004e55     bcc.w      $6c0f
001dbc: 000048e7     ori.b      #$e7, d0
001dc0: c000         and.b      d0, d0
001dc2: 42a7         clr.l      -(a7)
001dc4: 222f0008     move.l     $8(a7), d1
001dc8: 202f0004     move.l     $4(a7), d0
001dcc: 613e         bsr.b      $1e0c
001dce: 588f         addq.l     #$4, a7
001dd0: 4e5d         unlk       a5
001dd2: 4e75         rts        
001dd4: 4e550000     link.w     a5, #$0
001dd8: 48e7c000     movem.l    d0-d1, -(a7)
001ddc: 48780001     pea.l      $1.w
001de0: 222f0008     move.l     $8(a7), d1
001de4: 202f0004     move.l     $4(a7), d0
001de8: 6122         bsr.b      $1e0c
001dea: 588f         addq.l     #$4, a7
001dec: 4e5d         unlk       a5
001dee: 4e75         rts        
001df0: 4e550000     link.w     a5, #$0
001df4: 48e7c000     movem.l    d0-d1, -(a7)
001df8: 48780002     pea.l      $2.w
001dfc: 222f0008     move.l     $8(a7), d1
001e00: 202f0004     move.l     $4(a7), d0
001e04: 6106         bsr.b      $1e0c
001e06: 588f         addq.l     #$4, a7
001e08: 4e5d         unlk       a5
001e0a: 4e75         rts        
001e0c: 4e550000     link.w     a5, #$0
001e10: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
001e14: 4fefffda     lea.l      -$26(a7), a7
001e18: 41ef0008     lea.l      $8(a7), a0
001e1c: 2208         move.l     a0, d1
001e1e: 202f0026     move.l     $26(a7), d0
001e22: 61000950     bsr.w      $2774
001e26: 2440         movea.l    d0, a2
001e28: 4a80         tst.l      d0
001e2a: 67000108     beq.w      $1f34
001e2e: 41ef0008     lea.l      $8(a7), a0
001e32: 2008         move.l     a0, d0
001e34: 61000984     bsr.w      $27ba
001e38: 2f400004     move.l     d0, $4(a7)
001e3c: 6d0000f6     blt.w      $1f34
001e40: 41ef0022     lea.l      $22(a7), a0
001e44: 2208         move.l     a0, d1
001e46: 200a         move.l     a2, d0
001e48: 610009f6     bsr.w      $2840
001e4c: 2440         movea.l    d0, a2
001e4e: 4a80         tst.l      d0
001e50: 670000e2     beq.w      $1f34
001e54: 202f0004     move.l     $4(a7), d0
001e58: e588         lsl.l      #$2, d0
001e5a: 41ee878e     lea.l      -$7872(a6), a0
001e5e: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
001e64: 6600009a     bne.w      $1f00
001e68: 7203         moveq      #$3, d1
001e6a: 41ef0008     lea.l      $8(a7), a0
001e6e: 2008         move.l     a0, d0
001e70: 61000e00     bsr.w      $2c72
001e74: 222f0004     move.l     $4(a7), d1
001e78: e589         lsl.l      #$2, d1
001e7a: 41ee878e     lea.l      -$7872(a6), a0
001e7e: 31801800     move.w     d0, (a0, d1.l)
001e82: 6d0000ca     blt.w      $1f4e
001e86: 202f0004     move.l     $4(a7), d0
001e8a: e588         lsl.l      #$2, d0
001e8c: 41ee878e     lea.l      -$7872(a6), a0
001e90: 2400         move.l     d0, d2
001e92: 42a7         clr.l      -(a7)
001e94: 202f0008     move.l     $8(a7), d0
001e98: e588         lsl.l      #$2, d0
001e9a: 43ee878e     lea.l      -$7872(a6), a1
001e9e: 32710800     movea.w    (a1, d0.l), a1
001ea2: 2209         move.l     a1, d1
001ea4: 203c0000ff0e move.l     #$ff0e, d0
001eaa: 61000b84     bsr.w      $2a30
001eae: 588f         addq.l     #$4, a7
001eb0: 2240         movea.l    d0, a1
001eb2: 7000         moveq      #$0, d0
001eb4: 1011         move.b     (a1), d0
001eb6: 31802802     move.w     d0, $2(a0, d2.l)
001eba: 202f0004     move.l     $4(a7), d0
001ebe: e588         lsl.l      #$2, d0
001ec0: 41ee878e     lea.l      -$7872(a6), a0
001ec4: 4a700800     tst.w      (a0, d0.l)
001ec8: 6d36         blt.b      $1f00
001eca: 202f0004     move.l     $4(a7), d0
001ece: e588         lsl.l      #$2, d0
001ed0: 41ee878e     lea.l      -$7872(a6), a0
001ed4: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
001eda: 6c24         bge.b      $1f00
001edc: 202f0004     move.l     $4(a7), d0
001ee0: e588         lsl.l      #$2, d0
001ee2: 41ee878e     lea.l      -$7872(a6), a0
001ee6: 30700800     movea.w    (a0, d0.l), a0
001eea: 2008         move.l     a0, d0
001eec: 61000db4     bsr.w      $2ca2
001ef0: 202f0004     move.l     $4(a7), d0
001ef4: e588         lsl.l      #$2, d0
001ef6: 41ee878e     lea.l      -$7872(a6), a0
001efa: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
001f00: 202f0004     move.l     $4(a7), d0
001f04: e588         lsl.l      #$2, d0
001f06: 41ee878e     lea.l      -$7872(a6), a0
001f0a: 30300802     move.w     $2(a0, d0.l), d0
001f0e: 48c0         ext.l      d0
001f10: b0af0022     cmp.l      $22(a7), d0
001f14: 661e         bne.b      $1f34
001f16: 0c12005f     cmpi.b     #$5f, (a2)
001f1a: 6610         bne.b      $1f2c
001f1c: 6004         bra.b      $1f22
001f1e: 4a12         tst.b      (a2)
001f20: 672c         beq.b      $1f4e
001f22: 528a         addq.l     #$1, a2
001f24: 0c12005f     cmpi.b     #$5f, (a2)
001f28: 66f4         bne.b      $1f1e
001f2a: 528a         addq.l     #$1, a2
001f2c: 222f002a     move.l     $2a(a7), d1
001f30: 200a         move.l     a2, d0
001f32: 6008         bra.b      $1f3c
001f34: 222f002a     move.l     $2a(a7), d1
001f38: 202f0026     move.l     $26(a7), d0
001f3c: 242f004e     move.l     $4e(a7), d2
001f40: e58a         lsl.l      #$2, d2
001f42: 41ee8748     lea.l      -$78b8(a6), a0
001f46: 20702800     movea.l    (a0, d2.l), a0
001f4a: 4e90         jsr        (a0)
001f4c: 6002         bra.b      $1f50
001f4e: 70ff         moveq      #$ff, d0
001f50: 4fef0026     lea.l      $26(a7), a7
001f54: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
001f5a: 4e5d         unlk       a5
001f5c: 4e75         rts        
001f5e: 4e550000     link.w     a5, #$0
001f62: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
001f66: 4fefffc8     lea.l      -$38(a7), a7
001f6a: 2f6f00380008 move.l     $38(a7), $8(a7)
001f70: 4a2f0009     tst.b      $9(a7)
001f74: 660e         bne.b      $1f84
001f76: 306f003e     movea.w    $3e(a7), a0
001f7a: 2208         move.l     a0, d1
001f7c: 202f0008     move.l     $8(a7), d0
001f80: 600000c8     bra.w      $204a
001f84: 4aae8758     tst.l      -$78a8(a6)
001f88: 6608         bne.b      $1f92
001f8a: 61000a80     bsr.w      $2a0c
001f8e: 2d408758     move.l     d0, -$78a8(a6)
001f92: 7000         moveq      #$0, d0
001f94: 102f0008     move.b     $8(a7), d0
001f98: e588         lsl.l      #$2, d0
001f9a: 41ee878e     lea.l      -$7872(a6), a0
001f9e: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
001fa4: 66000080     bne.w      $2026
001fa8: 7000         moveq      #$0, d0
001faa: 102f0008     move.b     $8(a7), d0
001fae: e588         lsl.l      #$2, d0
001fb0: 206e8758     movea.l    -$78a8(a6), a0
001fb4: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
001fb8: 41fa016e     lea.l      $2128(pc), a0
001fbc: 2208         move.l     a0, d1
001fbe: 41ef001c     lea.l      $1c(a7), a0
001fc2: 2008         move.l     a0, d0
001fc4: 61000c6c     bsr.w      $2c32
001fc8: 588f         addq.l     #$4, a7
001fca: 7203         moveq      #$3, d1
001fcc: 41ef0018     lea.l      $18(a7), a0
001fd0: 2008         move.l     a0, d0
001fd2: 61000c9e     bsr.w      $2c72
001fd6: 7200         moveq      #$0, d1
001fd8: 122f0008     move.b     $8(a7), d1
001fdc: e589         lsl.l      #$2, d1
001fde: 41ee878e     lea.l      -$7872(a6), a0
001fe2: 31801800     move.w     d0, (a0, d1.l)
001fe6: 6c06         bge.b      $1fee
001fe8: 70ff         moveq      #$ff, d0
001fea: 6000012e     bra.w      $211a
001fee: 7000         moveq      #$0, d0
001ff0: 102f0008     move.b     $8(a7), d0
001ff4: e588         lsl.l      #$2, d0
001ff6: 41ee878e     lea.l      -$7872(a6), a0
001ffa: 2400         move.l     d0, d2
001ffc: 42a7         clr.l      -(a7)
001ffe: 7000         moveq      #$0, d0
002000: 102f000c     move.b     $c(a7), d0
002004: e588         lsl.l      #$2, d0
002006: 43ee878e     lea.l      -$7872(a6), a1
00200a: 32710800     movea.w    (a1, d0.l), a1
00200e: 2209         move.l     a1, d1
002010: 203c0000ff0e move.l     #$ff0e, d0
002016: 61000a18     bsr.w      $2a30
00201a: 588f         addq.l     #$4, a7
00201c: 2240         movea.l    d0, a1
00201e: 7000         moveq      #$0, d0
002020: 1011         move.b     (a1), d0
002022: 31802802     move.w     d0, $2(a0, d2.l)
002026: 7000         moveq      #$0, d0
002028: 102f0008     move.b     $8(a7), d0
00202c: e588         lsl.l      #$2, d0
00202e: 41ee878e     lea.l      -$7872(a6), a0
002032: 7200         moveq      #$0, d1
002034: 122f0009     move.b     $9(a7), d1
002038: b2700802     cmp.w      $2(a0, d0.l), d1
00203c: 6614         bne.b      $2052
00203e: 306f003e     movea.w    $3e(a7), a0
002042: 2208         move.l     a0, d1
002044: 7000         moveq      #$0, d0
002046: 302f000a     move.w     $a(a7), d0
00204a: 61001518     bsr.w      $3564
00204e: 600000ca     bra.w      $211a
002052: 4aae8754     tst.l      -$78ac(a6)
002056: 661a         bne.b      $2072
002058: 610015c8     bsr.w      $3622
00205c: 2d408754     move.l     d0, -$78ac(a6)
002060: 2d7c000100008342 move.l     #$10000, -$7cbe(a6)
002068: 2d6e87548346 move.l     -$78ac(a6), -$7cba(a6)
00206e: 42ae833e     clr.l      -$7cc2(a6)
002072: 7001         moveq      #$1, d0
002074: 2d40835e     move.l     d0, -$7ca2(a6)
002078: 7008         moveq      #$8, d0
00207a: 2d408362     move.l     d0, -$7c9e(a6)
00207e: 41d7         lea.l      (a7), a0
002080: 2d488366     move.l     a0, -$7c9a(a6)
002084: 41ee833a     lea.l      -$7cc6(a6), a0
002088: 2d48836e     move.l     a0, -$7c92(a6)
00208c: 7018         moveq      #$18, d0
00208e: 2d40836a     move.l     d0, -$7c96(a6)
002092: 7000         moveq      #$0, d0
002094: 302f000a     move.w     $a(a7), d0
002098: 2d40834a     move.l     d0, -$7cb6(a6)
00209c: 306f003e     movea.w    $3e(a7), a0
0020a0: 2d48834e     move.l     a0, -$7cb2(a6)
0020a4: 1d6f0009833d move.b     $9(a7), -$7cc3(a6)
0020aa: 422e833e     clr.b      -$7cc2(a6)
0020ae: 486e835e     pea.l      -$7ca2(a6)
0020b2: 7000         moveq      #$0, d0
0020b4: 102f000c     move.b     $c(a7), d0
0020b8: e588         lsl.l      #$2, d0
0020ba: 41ee878e     lea.l      -$7872(a6), a0
0020be: 30700800     movea.w    (a0, d0.l), a0
0020c2: 2208         move.l     a0, d1
0020c4: 203c0000ff05 move.l     #$ff05, d0
0020ca: 610009c8     bsr.w      $2a94
0020ce: 588f         addq.l     #$4, a7
0020d0: 2f400010     move.l     d0, $10(a7)
0020d4: 6c08         bge.b      $20de
0020d6: 70ff         moveq      #$ff, d0
0020d8: 2f40000c     move.l     d0, $c(a7)
0020dc: 6038         bra.b      $2116
0020de: 2f2f0010     move.l     $10(a7), -(a7)
0020e2: 7000         moveq      #$0, d0
0020e4: 102f000c     move.b     $c(a7), d0
0020e8: e588         lsl.l      #$2, d0
0020ea: 41ee878e     lea.l      -$7872(a6), a0
0020ee: 30700800     movea.w    (a0, d0.l), a0
0020f2: 2208         move.l     a0, d1
0020f4: 203c0000ff06 move.l     #$ff06, d0
0020fa: 61000998     bsr.w      $2a94
0020fe: 588f         addq.l     #$4, a7
002100: 2f40000c     move.l     d0, $c(a7)
002104: 6dd0         blt.b      $20d6
002106: 2f6f0004000c move.l     $4(a7), $c(a7)
00210c: 4aaf0004     tst.l      $4(a7)
002110: 6c04         bge.b      $2116
002112: 2d57800c     move.l     (a7), -$7ff4(a6)
002116: 202f000c     move.l     $c(a7), d0
00211a: 4fef0038     lea.l      $38(a7), a7
00211e: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
002124: 4e5d         unlk       a5
002126: 4e75         rts        
002128: 2f25         move.l     -(a5), -(a7)
00212a: 7300         .dc.w      $7300
00212c: 4e550000     link.w     a5, #$0
002130: 48e7c080     movem.l    d0-d1/a0, -(a7)
002134: 7002         moveq      #$2, d0
002136: b0ae875c     cmp.l      -$78a4(a6), d0
00213a: 6c0c         bge.b      $2148
00213c: 2217         move.l     (a7), d1
00213e: 41fa052c     lea.l      $266c(pc), a0
002142: 2008         move.l     a0, d0
002144: 61000ae4     bsr.w      $2c2a
002148: 0c9700000106 cmpi.l     #$106, (a7)
00214e: 6608         bne.b      $2158
002150: 7001         moveq      #$1, d0
002152: 2d40837a     move.l     d0, -$7c86(a6)
002156: 600e         bra.b      $2166
002158: 4aae837e     tst.l      -$7c82(a6)
00215c: 6708         beq.b      $2166
00215e: 2017         move.l     (a7), d0
002160: 206e837e     movea.l    -$7c82(a6), a0
002164: 4e90         jsr        (a0)
002166: 7000         moveq      #$0, d0
002168: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00216e: 4e5d         unlk       a5
002170: 4e75         rts        
002172: 4e550000     link.w     a5, #$0
002176: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
00217a: 4fefff58     lea.l      -$a8(a7), a7
00217e: 6010         bra.b      $2190
002180: 08ef000600de bset.b     #$6, $de(a7)
002186: 601c         bra.b      $21a4
002188: 08ef000700de bset.b     #$7, $de(a7)
00218e: 6014         bra.b      $21a4
002190: 202f00e0     move.l     $e0(a7), d0
002194: 0c80a95acd81 cmpi.l     #$a95acd81, d0
00219a: 67e4         beq.b      $2180
00219c: 0c80a95acd82 cmpi.l     #$a95acd82, d0
0021a2: 67e4         beq.b      $2188
0021a4: 41ef0094     lea.l      $94(a7), a0
0021a8: 2208         move.l     a0, d1
0021aa: 202f00ac     move.l     $ac(a7), d0
0021ae: 610005c4     bsr.w      $2774
0021b2: 2f400028     move.l     d0, $28(a7)
0021b6: 6700015c     beq.w      $2314
0021ba: 206f0028     movea.l    $28(a7), a0
0021be: 0c10005f     cmpi.b     #$5f, (a0)
0021c2: 66000150     bne.w      $2314
0021c6: 2f6f002800ac move.l     $28(a7), $ac(a7)
0021cc: 2d6f00ac8778 move.l     $ac(a7), -$7888(a6)
0021d2: 41ef0094     lea.l      $94(a7), a0
0021d6: 2d48876c     move.l     a0, -$7894(a6)
0021da: 41ef0094     lea.l      $94(a7), a0
0021de: 2008         move.l     a0, d0
0021e0: 610005d8     bsr.w      $27ba
0021e4: 3f40002c     move.w     d0, $2c(a7)
0021e8: 6c0c         bge.b      $21f6
0021ea: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
0021f2: 60000242     bra.w      $2436
0021f6: 422f0052     clr.b      $52(a7)
0021fa: 41ef0046     lea.l      $46(a7), a0
0021fe: 2208         move.l     a0, d1
002200: 202f00ac     move.l     $ac(a7), d0
002204: 6100063a     bsr.w      $2840
002208: 2f400028     move.l     d0, $28(a7)
00220c: 67000106     beq.w      $2314
002210: 1f6f00490051 move.b     $49(a7), $51(a7)
002216: 2f6f002800ac move.l     $28(a7), $ac(a7)
00221c: 302f002c     move.w     $2c(a7), d0
002220: 48c0         ext.l      d0
002222: e588         lsl.l      #$2, d0
002224: 41ee878e     lea.l      -$7872(a6), a0
002228: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
00222e: 660000b6     bne.w      $22e6
002232: 486f0094     pea.l      $94(a7)
002236: 41fa0464     lea.l      $269c(pc), a0
00223a: 2208         move.l     a0, d1
00223c: 41ef0078     lea.l      $78(a7), a0
002240: 2008         move.l     a0, d0
002242: 610009ee     bsr.w      $2c32
002246: 588f         addq.l     #$4, a7
002248: 7001         moveq      #$1, d0
00224a: b0ae875c     cmp.l      -$78a4(a6), d0
00224e: 6c10         bge.b      $2260
002250: 41ef0074     lea.l      $74(a7), a0
002254: 2208         move.l     a0, d1
002256: 41fa0447     lea.l      $269f(pc), a0
00225a: 2008         move.l     a0, d0
00225c: 610009cc     bsr.w      $2c2a
002260: 7203         moveq      #$3, d1
002262: 41ef0074     lea.l      $74(a7), a0
002266: 2008         move.l     a0, d0
002268: 61000a08     bsr.w      $2c72
00226c: 322f002c     move.w     $2c(a7), d1
002270: 48c1         ext.l      d1
002272: e589         lsl.l      #$2, d1
002274: 41ee878e     lea.l      -$7872(a6), a0
002278: 31801800     move.w     d0, (a0, d1.l)
00227c: 6c30         bge.b      $22ae
00227e: 7001         moveq      #$1, d0
002280: b0ae875c     cmp.l      -$78a4(a6), d0
002284: 6c0001b0     bge.w      $2436
002288: 302f002c     move.w     $2c(a7), d0
00228c: 48c0         ext.l      d0
00228e: e588         lsl.l      #$2, d0
002290: 41ee878e     lea.l      -$7872(a6), a0
002294: 30700800     movea.w    (a0, d0.l), a0
002298: 2f08         move.l     a0, -(a7)
00229a: 222f004a     move.l     $4a(a7), d1
00229e: 41fa0418     lea.l      $26b8(pc), a0
0022a2: 2008         move.l     a0, d0
0022a4: 61000984     bsr.w      $2c2a
0022a8: 588f         addq.l     #$4, a7
0022aa: 6000018a     bra.w      $2436
0022ae: 302f002c     move.w     $2c(a7), d0
0022b2: 48c0         ext.l      d0
0022b4: e588         lsl.l      #$2, d0
0022b6: 41ee878e     lea.l      -$7872(a6), a0
0022ba: 2400         move.l     d0, d2
0022bc: 42a7         clr.l      -(a7)
0022be: 302f0030     move.w     $30(a7), d0
0022c2: 48c0         ext.l      d0
0022c4: e588         lsl.l      #$2, d0
0022c6: 43ee878e     lea.l      -$7872(a6), a1
0022ca: 32710800     movea.w    (a1, d0.l), a1
0022ce: 2209         move.l     a1, d1
0022d0: 203c0000ff0e move.l     #$ff0e, d0
0022d6: 61000758     bsr.w      $2a30
0022da: 588f         addq.l     #$4, a7
0022dc: 2240         movea.l    d0, a1
0022de: 7000         moveq      #$0, d0
0022e0: 1011         move.b     (a1), d0
0022e2: 31802802     move.w     d0, $2(a0, d2.l)
0022e6: 302f002c     move.w     $2c(a7), d0
0022ea: 48c0         ext.l      d0
0022ec: e588         lsl.l      #$2, d0
0022ee: 41ee878e     lea.l      -$7872(a6), a0
0022f2: 30300802     move.w     $2(a0, d0.l), d0
0022f6: 48c0         ext.l      d0
0022f8: b0af0046     cmp.l      $46(a7), d0
0022fc: 6642         bne.b      $2340
0022fe: 7001         moveq      #$1, d0
002300: b0ae875c     cmp.l      -$78a4(a6), d0
002304: 6c0e         bge.b      $2314
002306: 222f00ac     move.l     $ac(a7), d1
00230a: 41fa03bf     lea.l      $26cb(pc), a0
00230e: 2008         move.l     a0, d0
002310: 61000918     bsr.w      $2c2a
002314: 306f00de     movea.w    $de(a7), a0
002318: 2f08         move.l     a0, -(a7)
00231a: 306f00de     movea.w    $de(a7), a0
00231e: 2f08         move.l     a0, -(a7)
002320: 2f2f00dc     move.l     $dc(a7), -(a7)
002324: 2f2f00dc     move.l     $dc(a7), -(a7)
002328: 2f2f00dc     move.l     $dc(a7), -(a7)
00232c: 222f00c0     move.l     $c0(a7), d1
002330: 202f00bc     move.l     $bc(a7), d0
002334: 6100098c     bsr.w      $2cc2
002338: 4fef0014     lea.l      $14(a7), a7
00233c: 6000030a     bra.w      $2648
002340: 4a6e8780     tst.w      -$7880(a6)
002344: 6608         bne.b      $234e
002346: 610012da     bsr.w      $3622
00234a: 3d408780     move.w     d0, -$7880(a6)
00234e: 42ae837e     clr.l      -$7c82(a6)
002352: 306e8780     movea.w    -$7880(a6), a0
002356: 2008         move.l     a0, d0
002358: 6100068c     bsr.w      $29e6
00235c: 2d40837e     move.l     d0, -$7c82(a6)
002360: 7001         moveq      #$1, d0
002362: b0ae875c     cmp.l      -$78a4(a6), d0
002366: 6c0e         bge.b      $2376
002368: 222e837e     move.l     -$7c82(a6), d1
00236c: 41fa0384     lea.l      $26f2(pc), a0
002370: 2008         move.l     a0, d0
002372: 610008b6     bsr.w      $2c2a
002376: 41fafdb4     lea.l      $212c(pc), a0
00237a: 2008         move.l     a0, d0
00237c: 610002d8     bsr.w      $2656
002380: 306f00de     movea.w    $de(a7), a0
002384: 2f08         move.l     a0, -(a7)
002386: 42a7         clr.l      -(a7)
002388: 42a7         clr.l      -(a7)
00238a: 2f2f00dc     move.l     $dc(a7), -(a7)
00238e: 486e8760     pea.l      -$78a0(a6)
002392: 41fa0374     lea.l      $2708(pc), a0
002396: 2208         move.l     a0, d1
002398: 41fa122c     lea.l      $35c6(pc), a0
00239c: 2008         move.l     a0, d0
00239e: 61000922     bsr.w      $2cc2
0023a2: 4fef0014     lea.l      $14(a7), a7
0023a6: 2f40005e     move.l     d0, $5e(a7)
0023aa: 6f00008a     ble.w      $2436
0023ae: 2f7c000200000056 move.l     #$20000, $56(a7)
0023b6: 42af005a     clr.l      $5a(a7)
0023ba: 2f6f00d40062 move.l     $d4(a7), $62(a7)
0023c0: 3f6f00da0066 move.w     $da(a7), $66(a7)
0023c6: 3f6f00de0068 move.w     $de(a7), $68(a7)
0023cc: 3f6f002c006c move.w     $2c(a7), $6c(a7)
0023d2: 3f6e8780006a move.w     -$7880(a6), $6a(a7)
0023d8: 7001         moveq      #$1, d0
0023da: 2f40004a     move.l     d0, $4a(a7)
0023de: 42af0042     clr.l      $42(a7)
0023e2: 6004         bra.b      $23e8
0023e4: 52af004a     addq.l     #$1, $4a(a7)
0023e8: 202f0042     move.l     $42(a7), d0
0023ec: 52af0042     addq.l     #$1, $42(a7)
0023f0: e588         lsl.l      #$2, d0
0023f2: 206f00cc     movea.l    $cc(a7), a0
0023f6: 4ab00800     tst.l      (a0, d0.l)
0023fa: 66e8         bne.b      $23e4
0023fc: 52af004a     addq.l     #$1, $4a(a7)
002400: 42af0042     clr.l      $42(a7)
002404: 6004         bra.b      $240a
002406: 52af004a     addq.l     #$1, $4a(a7)
00240a: 202f0042     move.l     $42(a7), d0
00240e: 52af0042     addq.l     #$1, $42(a7)
002412: e588         lsl.l      #$2, d0
002414: 206f00d0     movea.l    $d0(a7), a0
002418: 4ab00800     tst.l      (a0, d0.l)
00241c: 66e8         bne.b      $2406
00241e: 52af004a     addq.l     #$1, $4a(a7)
002422: 202f004a     move.l     $4a(a7), d0
002426: e788         lsl.l      #$3, d0
002428: 7214         moveq      #$14, d1
00242a: d081         add.l      d1, d0
00242c: 610008b8     bsr.w      $2ce6
002430: 2440         movea.l    d0, a2
002432: 4a80         tst.l      d0
002434: 6606         bne.b      $243c
002436: 70ff         moveq      #$ff, d0
002438: 6000020e     bra.w      $2648
00243c: 202f004a     move.l     $4a(a7), d0
002440: 5280         addq.l     #$1, d0
002442: 2480         move.l     d0, (a2)
002444: 257c000000080004 move.l     #$8, $4(a2)
00244c: 41ef0020     lea.l      $20(a7), a0
002450: 25480008     move.l     a0, $8(a2)
002454: 700c         moveq      #$c, d0
002456: d08a         add.l      a2, d0
002458: 2640         movea.l    d0, a3
00245a: 41ef004e     lea.l      $4e(a7), a0
00245e: 27480004     move.l     a0, $4(a3)
002462: 26bc00000020 move.l     #$20, (a3)
002468: 508b         addq.l     #$8, a3
00246a: 276f00ac0004 move.l     $ac(a7), $4(a3)
002470: 202f00ac     move.l     $ac(a7), d0
002474: 6100099e     bsr.w      $2e14
002478: 5280         addq.l     #$1, d0
00247a: 2680         move.l     d0, (a3)
00247c: 508b         addq.l     #$8, a3
00247e: 42af0042     clr.l      $42(a7)
002482: 605a         bra.b      $24de
002484: 7001         moveq      #$1, d0
002486: b0ae875c     cmp.l      -$78a4(a6), d0
00248a: 6c26         bge.b      $24b2
00248c: 222f0042     move.l     $42(a7), d1
002490: 41fa027d     lea.l      $270f(pc), a0
002494: 2008         move.l     a0, d0
002496: 61000792     bsr.w      $2c2a
00249a: 202f0042     move.l     $42(a7), d0
00249e: e588         lsl.l      #$2, d0
0024a0: 206f00cc     movea.l    $cc(a7), a0
0024a4: 22300800     move.l     (a0, d0.l), d1
0024a8: 41fa0285     lea.l      $272f(pc), a0
0024ac: 2008         move.l     a0, d0
0024ae: 6100077a     bsr.w      $2c2a
0024b2: 202f0042     move.l     $42(a7), d0
0024b6: e588         lsl.l      #$2, d0
0024b8: 206f00cc     movea.l    $cc(a7), a0
0024bc: 277008000004 move.l     (a0, d0.l), $4(a3)
0024c2: 202f0042     move.l     $42(a7), d0
0024c6: 52af0042     addq.l     #$1, $42(a7)
0024ca: e588         lsl.l      #$2, d0
0024cc: 206f00cc     movea.l    $cc(a7), a0
0024d0: 20300800     move.l     (a0, d0.l), d0
0024d4: 6100093e     bsr.w      $2e14
0024d8: 5280         addq.l     #$1, d0
0024da: 2680         move.l     d0, (a3)
0024dc: 508b         addq.l     #$8, a3
0024de: 202f0042     move.l     $42(a7), d0
0024e2: e588         lsl.l      #$2, d0
0024e4: 206f00cc     movea.l    $cc(a7), a0
0024e8: 4ab00800     tst.l      (a0, d0.l)
0024ec: 6696         bne.b      $2484
0024ee: 41fa024e     lea.l      $273e(pc), a0
0024f2: 27480004     move.l     a0, $4(a3)
0024f6: 26bc00000001 move.l     #$1, (a3)
0024fc: 508b         addq.l     #$8, a3
0024fe: 42af0042     clr.l      $42(a7)
002502: 604c         bra.b      $2550
002504: 7001         moveq      #$1, d0
002506: b0ae875c     cmp.l      -$78a4(a6), d0
00250a: 6c18         bge.b      $2524
00250c: 202f0042     move.l     $42(a7), d0
002510: e588         lsl.l      #$2, d0
002512: 206f00d0     movea.l    $d0(a7), a0
002516: 22300800     move.l     (a0, d0.l), d1
00251a: 41fa0223     lea.l      $273f(pc), a0
00251e: 2008         move.l     a0, d0
002520: 61000708     bsr.w      $2c2a
002524: 202f0042     move.l     $42(a7), d0
002528: e588         lsl.l      #$2, d0
00252a: 206f00d0     movea.l    $d0(a7), a0
00252e: 277008000004 move.l     (a0, d0.l), $4(a3)
002534: 202f0042     move.l     $42(a7), d0
002538: 52af0042     addq.l     #$1, $42(a7)
00253c: e588         lsl.l      #$2, d0
00253e: 206f00d0     movea.l    $d0(a7), a0
002542: 20300800     move.l     (a0, d0.l), d0
002546: 610008cc     bsr.w      $2e14
00254a: 5280         addq.l     #$1, d0
00254c: 2680         move.l     d0, (a3)
00254e: 508b         addq.l     #$8, a3
002550: 202f0042     move.l     $42(a7), d0
002554: e588         lsl.l      #$2, d0
002556: 206f00d0     movea.l    $d0(a7), a0
00255a: 4ab00800     tst.l      (a0, d0.l)
00255e: 66a4         bne.b      $2504
002560: 41fa01ec     lea.l      $274e(pc), a0
002564: 27480004     move.l     a0, $4(a3)
002568: 26bc00000001 move.l     #$1, (a3)
00256e: 508b         addq.l     #$8, a3
002570: 7001         moveq      #$1, d0
002572: 61000e08     bsr.w      $337c
002576: 42ae8376     clr.l      -$7c8a(a6)
00257a: 600a         bra.b      $2586
00257c: 52ae8376     addq.l     #$1, -$7c8a(a6)
002580: 7001         moveq      #$1, d0
002582: 61000df8     bsr.w      $337c
002586: 4aae837a     tst.l      -$7c86(a6)
00258a: 67f0         beq.b      $257c
00258c: 7064         moveq      #$64, d0
00258e: b0ae8376     cmp.l      -$7c8a(a6), d0
002592: 6e0e         bgt.b      $25a2
002594: 222e8376     move.l     -$7c8a(a6), d1
002598: 41fa01b5     lea.l      $274f(pc), a0
00259c: 2008         move.l     a0, d0
00259e: 6100068a     bsr.w      $2c2a
0025a2: 4aae837e     tst.l      -$7c82(a6)
0025a6: 6708         beq.b      $25b0
0025a8: 202e837e     move.l     -$7c82(a6), d0
0025ac: 610000a8     bsr.w      $2656
0025b0: 4852         pea.l      (a2)
0025b2: 302f0030     move.w     $30(a7), d0
0025b6: 48c0         ext.l      d0
0025b8: e588         lsl.l      #$2, d0
0025ba: 41ee878e     lea.l      -$7872(a6), a0
0025be: 30700800     movea.w    (a0, d0.l), a0
0025c2: 2208         move.l     a0, d1
0025c4: 203c0000ff05 move.l     #$ff05, d0
0025ca: 610004c8     bsr.w      $2a94
0025ce: 588f         addq.l     #$4, a7
0025d0: 2f40003a     move.l     d0, $3a(a7)
0025d4: 6c08         bge.b      $25de
0025d6: 70ff         moveq      #$ff, d0
0025d8: 2f40002e     move.l     d0, $2e(a7)
0025dc: 6060         bra.b      $263e
0025de: 2f2f003a     move.l     $3a(a7), -(a7)
0025e2: 302f0030     move.w     $30(a7), d0
0025e6: 48c0         ext.l      d0
0025e8: e588         lsl.l      #$2, d0
0025ea: 41ee878e     lea.l      -$7872(a6), a0
0025ee: 30700800     movea.w    (a0, d0.l), a0
0025f2: 2208         move.l     a0, d1
0025f4: 203c0000ff06 move.l     #$ff06, d0
0025fa: 61000498     bsr.w      $2a94
0025fe: 588f         addq.l     #$4, a7
002600: 2f40002e     move.l     d0, $2e(a7)
002604: 6c10         bge.b      $2616
002606: 70ff         moveq      #$ff, d0
002608: 2f40002e     move.l     d0, $2e(a7)
00260c: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
002614: 6028         bra.b      $263e
002616: 2f6f0024002e move.l     $24(a7), $2e(a7)
00261c: 4aaf002e     tst.l      $2e(a7)
002620: 6c16         bge.b      $2638
002622: 223c00008000 move.l     #$8000, d1
002628: 202f005e     move.l     $5e(a7), d0
00262c: 61000f36     bsr.w      $3564
002630: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
002636: 6006         bra.b      $263e
002638: 1f6f002d002e move.b     $2d(a7), $2e(a7)
00263e: 200a         move.l     a2, d0
002640: 610006b0     bsr.w      $2cf2
002644: 202f002e     move.l     $2e(a7), d0
002648: 4fef00a8     lea.l      $a8(a7), a7
00264c: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
002652: 4e5d         unlk       a5
002654: 4e75         rts        
002656: 4e550000     link.w     a5, #$0
00265a: 48e78000     movem.l    d0, -(a7)
00265e: 2d57879e     move.l     (a7), -$7862(a6)
002662: 2017         move.l     (a7), d0
002664: 61000ff4     bsr.w      $365a
002668: 4e5d         unlk       a5
00266a: 4e75         rts        
00266c: 5369676e     subq.w     #$1, $676e(a1)
002670: 616c         bsr.b      $26de
002672: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
00267c: 2063         movea.l    -(a3), a0
00267e: 6f64         ble.b      $26e4
002680: 653d         bcs.b      $26bf
002682: 2025         move.l     -(a5), d0
002684: 780d         moveq      #$d, d4
002686: 007365727665 ori.w      #$6572, $65(a3, d7.w)
00268c: 7200         moveq      #$0, d1
00268e: 3200         move.w     d0, d1
002690: 3000         move.w     d0, d0
002692: 2f633000     move.l     -(a3), $3000(a7)
002696: 3000         move.w     d0, d0
002698: 3000         move.w     d0, d0
00269a: 3000         move.w     d0, d0
00269c: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
0026a2: 6e20         bgt.b      $26c4
0026a4: 6361         bls.b      $2707
0026a6: 726f         moveq      #$6f, d1
0026a8: 7370         .dc.w      $7370
0026aa: 6174         bsr.b      $2720
0026ac: 6820         bvc.b      $26ce
0026ae: 6e61         bgt.b      $2711
0026b0: 6d65         blt.b      $2717
0026b2: 6420         bcc.b      $26d4
0026b4: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
0026ba: 7468         moveq      #$68, d2
0026bc: 6964         bvs.b      $2722
0026be: 5b25         subq.b     #$5, -(a5)
0026c0: 645d         bcc.b      $271f
0026c2: 206d6772     movea.l    $6772(a5), a0
0026c6: 3d25         move.w     -(a5), -(a6)
0026c8: 640d         bcc.b      $26d7
0026ca: 00666f72     ori.w      #$6f72, -(a6)
0026ce: 6b69         bmi.b      $2739
0026d0: 6e67         bgt.b      $2739
0026d2: 2070726f     movea.l    $6f(a0, d7.w), a0
0026d6: 6365         bls.b      $273d
0026d8: 7373         .dc.w      $7373
0026da: 206c6f63     movea.l    $6f63(a4), a0
0026de: 616c         bsr.b      $274c
0026e0: 6c79         bge.b      $275b
0026e2: 2c20         move.l     -(a0), d6
0026e4: 6d6f         blt.b      $2755
0026e6: 646e         bcc.b      $2756
0026e8: 616d         bsr.b      $2757
0026ea: 6520         bcs.b      $270c
0026ec: 3d20         move.w     -(a0), -(a6)
0026ee: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
0026f4: 6420         bcc.b      $2716
0026f6: 6963         bvs.b      $275b
0026f8: 7074         moveq      #$74, d0
0026fa: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
002704: 25780d007365 move.l     $d00.w, $7365(a2)
00270a: 7276         moveq      #$76, d1
00270c: 6572         bcs.b      $2780
00270e: 00656e74     ori.w      #$6e74, -(a5)
002712: 6572         bcs.b      $2786
002714: 6564         bcs.b      $277a
002716: 2061         movea.l    -(a1), a0
002718: 7267         moveq      #$67, d1
00271a: 6c69         bge.b      $2785
00271c: 7374         .dc.w      $7374
00271e: 206c6f6f     movea.l    $6f6f(a4), a0
002722: 702c         moveq      #$2c, d0
002724: 20696e64     movea.l    $6e64(a1), a0
002728: 6578         bcs.b      $27a2
00272a: 3d25         move.w     -(a5), -(a6)
00272c: 640d         bcc.b      $273b
00272e: 00415247     ori.w      #$5247, d1
002732: 4c49         .dc.w      $4c49
002734: 5354         subq.w     #$1, (a4)
002736: 5b695d3d     subq.w     #$5, $5d3d(a1)
00273a: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
002740: 4e564c49     link.w     a6, #$4c49
002744: 5354         subq.w     #$1, (a4)
002746: 5b695d3d     subq.w     #$5, $5d3d(a1)
00274a: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
002750: 796e         .dc.w      $796e
002752: 6368         bls.b      $27bc
002754: 726f         moveq      #$6f, d1
002756: 6e69         bgt.b      $27c1
002758: 7369         .dc.w      $7369
00275a: 6e67         bgt.b      $27c3
00275c: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
002766: 6f6b         ble.b      $27d3
002768: 2025         move.l     -(a5), d0
00276a: 6420         bcc.b      $278c
00276c: 7469         moveq      #$69, d2
00276e: 636b         bls.b      $27db
002770: 730d         .dc.w      $730d
002772: 00004e55     ori.b      #$55, d0
002776: 000048e7     ori.b      #$e7, d0
00277a: c8302440     and.b      $40(a0, d2.w), d4
00277e: 2641         movea.l    d1, a3
002780: 558f         subq.l     #$2, a7
002782: 1012         move.b     (a2), d0
002784: 1680         move.b     d0, (a3)
002786: 0c00002f     cmpi.b     #$2f, d0
00278a: 6704         beq.b      $2790
00278c: 7000         moveq      #$0, d0
00278e: 601e         bra.b      $27ae
002790: 528a         addq.l     #$1, a2
002792: 528b         addq.l     #$1, a3
002794: 1012         move.b     (a2), d0
002796: 1680         move.b     d0, (a3)
002798: 1f400001     move.b     d0, $1(a7)
00279c: 0c00002f     cmpi.b     #$2f, d0
0027a0: 6706         beq.b      $27a8
0027a2: 4a2f0001     tst.b      $1(a7)
0027a6: 66e8         bne.b      $2790
0027a8: 4213         clr.b      (a3)
0027aa: 528a         addq.l     #$1, a2
0027ac: 200a         move.l     a2, d0
0027ae: 548f         addq.l     #$2, a7
0027b0: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0027b6: 4e5d         unlk       a5
0027b8: 4e75         rts        
0027ba: 4e550000     link.w     a5, #$0
0027be: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0027c2: 2440         movea.l    d0, a2
0027c4: 4aae8782     tst.l      -$787e(a6)
0027c8: 6608         bne.b      $27d2
0027ca: 61000240     bsr.w      $2a0c
0027ce: 2d408782     move.l     d0, -$787e(a6)
0027d2: 7800         moveq      #$0, d4
0027d4: 601a         bra.b      $27f0
0027d6: 2004         move.l     d4, d0
0027d8: e588         lsl.l      #$2, d0
0027da: 206e8782     movea.l    -$787e(a6), a0
0027de: 2230081a     move.l     $1a(a0, d0.l), d1
0027e2: 200a         move.l     a2, d0
0027e4: 5280         addq.l     #$1, d0
0027e6: 610005b8     bsr.w      $2da0
0027ea: 4a80         tst.l      d0
0027ec: 6710         beq.b      $27fe
0027ee: 5284         addq.l     #$1, d4
0027f0: 206e8782     movea.l    -$787e(a6), a0
0027f4: 30280010     move.w     $10(a0), d0
0027f8: 48c0         ext.l      d0
0027fa: b084         cmp.l      d4, d0
0027fc: 6ed8         bgt.b      $27d6
0027fe: 206e8782     movea.l    -$787e(a6), a0
002802: 30280010     move.w     $10(a0), d0
002806: 48c0         ext.l      d0
002808: b084         cmp.l      d4, d0
00280a: 6e04         bgt.b      $2810
00280c: 70ff         moveq      #$ff, d0
00280e: 6002         bra.b      $2812
002810: 2004         move.l     d4, d0
002812: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
002818: 4e5d         unlk       a5
00281a: 4e75         rts        
00281c: 4e550000     link.w     a5, #$0
002820: 48e7c080     movem.l    d0-d1/a0, -(a7)
002824: 202f0004     move.l     $4(a7), d0
002828: e588         lsl.l      #$2, d0
00282a: 2057         movea.l    (a7), a0
00282c: 2070082a     movea.l    $2a(a0, d0.l), a0
002830: 7000         moveq      #$0, d0
002832: 10280012     move.b     $12(a0), d0
002836: 4ced0100fffc movem.l    -$4(a5), a0
00283c: 4e5d         unlk       a5
00283e: 4e75         rts        
002840: 4e550000     link.w     a5, #$0
002844: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002848: 2440         movea.l    d0, a2
00284a: 4fefffda     lea.l      -$26(a7), a7
00284e: 200a         move.l     a2, d0
002850: 61000110     bsr.w      $2962
002854: 2440         movea.l    d0, a2
002856: 0c12005f     cmpi.b     #$5f, (a2)
00285a: 660000f6     bne.w      $2952
00285e: 102a0001     move.b     $1(a2), d0
002862: 1f400005     move.b     d0, $5(a7)
002866: 0c000041     cmpi.b     #$41, d0
00286a: 6d0000a4     blt.w      $2910
00286e: 4aae8786     tst.l      -$787a(a6)
002872: 6626         bne.b      $289a
002874: 7200         moveq      #$0, d1
002876: 41fa017e     lea.l      $29f6(pc), a0
00287a: 2008         move.l     a0, d0
00287c: 61000c86     bsr.w      $3504
002880: 2f400022     move.l     d0, $22(a7)
002884: 72ff         moveq      #$ff, d1
002886: b280         cmp.l      d0, d1
002888: 6606         bne.b      $2890
00288a: 70ff         moveq      #$ff, d0
00288c: 600000c6     bra.w      $2954
002890: 7030         moveq      #$30, d0
002892: d0af0022     add.l      $22(a7), d0
002896: 2d408786     move.l     d0, -$787a(a6)
00289a: 41ef000a     lea.l      $a(a7), a0
00289e: 2f480006     move.l     a0, $6(a7)
0028a2: 600c         bra.b      $28b0
0028a4: 206f0006     movea.l    $6(a7), a0
0028a8: 52af0006     addq.l     #$1, $6(a7)
0028ac: 10af0005     move.b     $5(a7), (a0)
0028b0: 528a         addq.l     #$1, a2
0028b2: 1012         move.b     (a2), d0
0028b4: 1f400005     move.b     d0, $5(a7)
0028b8: 0c00005f     cmpi.b     #$5f, d0
0028bc: 66e6         bne.b      $28a4
0028be: 206f0006     movea.l    $6(a7), a0
0028c2: 4210         clr.b      (a0)
0028c4: 202e8786     move.l     -$787a(a6), d0
0028c8: 5480         addq.l     #$2, d0
0028ca: 2f40001e     move.l     d0, $1e(a7)
0028ce: 7800         moveq      #$0, d4
0028d0: 6030         bra.b      $2902
0028d2: 41ef000a     lea.l      $a(a7), a0
0028d6: 2208         move.l     a0, d1
0028d8: 202f001e     move.l     $1e(a7), d0
0028dc: 610004c2     bsr.w      $2da0
0028e0: 4a80         tst.l      d0
0028e2: 6614         bne.b      $28f8
0028e4: 206f001e     movea.l    $1e(a7), a0
0028e8: 7000         moveq      #$0, d0
0028ea: 10280013     move.b     $13(a0), d0
0028ee: 206f002a     movea.l    $2a(a7), a0
0028f2: 2080         move.l     d0, (a0)
0028f4: 528a         addq.l     #$1, a2
0028f6: 6056         bra.b      $294e
0028f8: 06af00000014001e addi.l     #$14, $1e(a7)
002900: 5284         addq.l     #$1, d4
002902: 206e8786     movea.l    -$787a(a6), a0
002906: 3010         move.w     (a0), d0
002908: 48c0         ext.l      d0
00290a: b084         cmp.l      d4, d0
00290c: 6ec4         bgt.b      $28d2
00290e: 6042         bra.b      $2952
002910: 4297         clr.l      (a7)
002912: 6018         bra.b      $292c
002914: 2017         move.l     (a7), d0
002916: 720a         moveq      #$a, d1
002918: 610006d8     bsr.w      $2ff2
00291c: 122f0005     move.b     $5(a7), d1
002920: 4881         ext.w      d1
002922: 48c1         ext.l      d1
002924: d081         add.l      d1, d0
002926: 7230         moveq      #$30, d1
002928: 9081         sub.l      d1, d0
00292a: 2e80         move.l     d0, (a7)
00292c: 528a         addq.l     #$1, a2
00292e: 1012         move.b     (a2), d0
002930: 1f400005     move.b     d0, $5(a7)
002934: 0c000030     cmpi.b     #$30, d0
002938: 6d08         blt.b      $2942
00293a: 0c2f00390005 cmpi.b     #$39, $5(a7)
002940: 6fd2         ble.b      $2914
002942: 0c1a005f     cmpi.b     #$5f, (a2)+
002946: 660a         bne.b      $2952
002948: 206f002a     movea.l    $2a(a7), a0
00294c: 2097         move.l     (a7), (a0)
00294e: 200a         move.l     a2, d0
002950: 6002         bra.b      $2954
002952: 7000         moveq      #$0, d0
002954: 4fef0026     lea.l      $26(a7), a7
002958: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00295e: 4e5d         unlk       a5
002960: 4e75         rts        
002962: 4e550000     link.w     a5, #$0
002966: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00296a: 2440         movea.l    d0, a2
00296c: 518f         subq.l     #$8, a7
00296e: 0c12005f     cmpi.b     #$5f, (a2)
002972: 6764         beq.b      $29d8
002974: 0c120040     cmpi.b     #$40, (a2)
002978: 675e         beq.b      $29d8
00297a: 0c120041     cmpi.b     #$41, (a2)
00297e: 6d58         blt.b      $29d8
002980: 4aae878a     tst.l      -$7876(a6)
002984: 6620         bne.b      $29a6
002986: 7200         moveq      #$0, d1
002988: 41fa0076     lea.l      $2a00(pc), a0
00298c: 2008         move.l     a0, d0
00298e: 61000b74     bsr.w      $3504
002992: 2f400004     move.l     d0, $4(a7)
002996: 72ff         moveq      #$ff, d1
002998: b280         cmp.l      d0, d1
00299a: 673c         beq.b      $29d8
00299c: 7030         moveq      #$30, d0
00299e: d0af0004     add.l      $4(a7), d0
0029a2: 2d40878a     move.l     d0, -$7876(a6)
0029a6: 202e878a     move.l     -$7876(a6), d0
0029aa: 5480         addq.l     #$2, d0
0029ac: 2e80         move.l     d0, (a7)
0029ae: 7800         moveq      #$0, d4
0029b0: 601a         bra.b      $29cc
0029b2: 220a         move.l     a2, d1
0029b4: 2017         move.l     (a7), d0
0029b6: 610003e8     bsr.w      $2da0
0029ba: 4a80         tst.l      d0
0029bc: 6606         bne.b      $29c4
0029be: 7014         moveq      #$14, d0
0029c0: d097         add.l      (a7), d0
0029c2: 6016         bra.b      $29da
0029c4: 069700000032 addi.l     #$32, (a7)
0029ca: 5284         addq.l     #$1, d4
0029cc: 206e878a     movea.l    -$7876(a6), a0
0029d0: 3010         move.w     (a0), d0
0029d2: 48c0         ext.l      d0
0029d4: b084         cmp.l      d4, d0
0029d6: 6eda         bgt.b      $29b2
0029d8: 200a         move.l     a2, d0
0029da: 508f         addq.l     #$8, a7
0029dc: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0029e2: 4e5d         unlk       a5
0029e4: 4e75         rts        
0029e6: 4e550000     link.w     a5, #$0
0029ea: 48e78000     movem.l    d0, -(a7)
0029ee: 202e879e     move.l     -$7862(a6), d0
0029f2: 4e5d         unlk       a5
0029f4: 4e75         rts        
0029f6: 6361         bls.b      $2a59
0029f8: 725f         moveq      #$5f, d1
0029fa: 6e65         bgt.b      $2a61
0029fc: 7464         moveq      #$64, d2
0029fe: 62006361     bhi.w      $8d61
002a02: 725f         moveq      #$5f, d1
002a04: 6465         bcc.b      $2a6b
002a06: 7669         moveq      #$69, d3
002a08: 6365         bls.b      $2a6f
002a0a: 00002f08     ori.b      #$8, d0
002a0e: 207900000000 movea.l    $0.l, a0
002a14: 41e80814     lea.l      $814(a0), a0
002a18: 2010         move.l     (a0), d0
002a1a: 205f         movea.l    (a7)+, a0
002a1c: 4e75         rts        
002a1e: 2f08         move.l     a0, -(a7)
002a20: 207900000000 movea.l    $0.l, a0
002a26: 41e80814     lea.l      $814(a0), a0
002a2a: 2008         move.l     a0, d0
002a2c: 205f         movea.l    (a7)+, a0
002a2e: 4e75         rts        
002a30: 48e76080     movem.l    d1-d2/a0, -(a7)
002a34: c141         exg.l      d0, d1
002a36: 0c8100000002 cmpi.l     #$2, d1
002a3c: 6716         beq.b      $2a54
002a3e: 0c8100000005 cmpi.l     #$5, d1
002a44: 670e         beq.b      $2a54
002a46: 206f0010     movea.l    $10(a7), a0
002a4a: 2408         move.l     a0, d2
002a4c: 4e40         trap       #$0
002a4e: 008d         .dc.w      $008d
002a50: 60000056     bra.w      $2aa8
002a54: 206f0010     movea.l    $10(a7), a0
002a58: 2408         move.l     a0, d2
002a5a: 4e40         trap       #$0
002a5c: 008d         .dc.w      $008d
002a5e: 2202         move.l     d2, d1
002a60: 60000046     bra.w      $2aa8
002a64: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
002a68: c141         exg.l      d0, d1
002a6a: 206f0018     movea.l    $18(a7), a0
002a6e: 242f001c     move.l     $1c(a7), d2
002a72: 262f0020     move.l     $20(a7), d3
002a76: 4e40         trap       #$0
002a78: 008d         .dc.w      $008d
002a7a: 60000068     bra.w      $2ae4
002a7e: 48e76080     movem.l    d1-d2/a0, -(a7)
002a82: c141         exg.l      d0, d1
002a84: 206f0010     movea.l    $10(a7), a0
002a88: 242f0014     move.l     $14(a7), d2
002a8c: 4e40         trap       #$0
002a8e: 008e         .dc.w      $008e
002a90: 60000016     bra.w      $2aa8
002a94: 48e76080     movem.l    d1-d2/a0, -(a7)
002a98: c141         exg.l      d0, d1
002a9a: 206f0010     movea.l    $10(a7), a0
002a9e: 2408         move.l     a0, d2
002aa0: 4e40         trap       #$0
002aa2: 008e         .dc.w      $008e
002aa4: 60000002     bra.w      $2aa8
002aa8: 6408         bcc.b      $2ab2
002aaa: 2d41800c     move.l     d1, -$7ff4(a6)
002aae: 70ff         moveq      #$ff, d0
002ab0: 6002         bra.b      $2ab4
002ab2: 2001         move.l     d1, d0
002ab4: 4cdf0106     movem.l    (a7)+, d1-d2/a0
002ab8: 4e75         rts        
002aba: 6406         bcc.b      $2ac2
002abc: 2d41800c     move.l     d1, -$7ff4(a6)
002ac0: 70ff         moveq      #$ff, d0
002ac2: 4cdf043e     movem.l    (a7)+, d1-d5/a2
002ac6: 4e75         rts        
002ac8: 6406         bcc.b      $2ad0
002aca: 2d41800c     move.l     d1, -$7ff4(a6)
002ace: 70ff         moveq      #$ff, d0
002ad0: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
002ad4: 4e75         rts        
002ad6: 6406         bcc.b      $2ade
002ad8: 2d41800c     move.l     d1, -$7ff4(a6)
002adc: 70ff         moveq      #$ff, d0
002ade: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
002ae2: 4e75         rts        
002ae4: 6408         bcc.b      $2aee
002ae6: 2d41800c     move.l     d1, -$7ff4(a6)
002aea: 70ff         moveq      #$ff, d0
002aec: 6002         bra.b      $2af0
002aee: 2001         move.l     d1, d0
002af0: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
002af4: 4e75         rts        
002af6: 48e74000     movem.l    d1, -(a7)
002afa: c141         exg.l      d0, d1
002afc: 4e40         trap       #$0
002afe: 005c6406     ori.w      #$6406, (a4)+
002b02: 2d41800c     move.l     d1, -$7ff4(a6)
002b06: 70ff         moveq      #$ff, d0
002b08: 4cdf0002     movem.l    (a7)+, d1
002b0c: 4e75         rts        
002b0e: 48e740e0     movem.l    d1/a0-a2, -(a7)
002b12: e340         asl.w      #$1, d0
002b14: 207900000000 movea.l    $0.l, a0
002b1a: 2268004c     movea.l    $4c(a0), a1
002b1e: 45e90168     lea.l      $168(a1), a2
002b22: 30320000     move.w     (a2, d0.w), d0
002b26: 660a         bne.b      $2b32
002b28: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002b2c: 303cffff     move.w     #$ffff, d0
002b30: 4e75         rts        
002b32: 22680048     movea.l    $48(a0), a1
002b36: b051         cmp.w      (a1), d0
002b38: 62f2         bhi.b      $2b2c
002b3a: e540         asl.w      #$2, d0
002b3c: d2c0         adda.w     d0, a1
002b3e: e448         lsr.w      #$2, d0
002b40: 4a91         tst.l      (a1)
002b42: 67e8         beq.b      $2b2c
002b44: 2251         movea.l    (a1), a1
002b46: b051         cmp.w      (a1), d0
002b48: 66e2         bne.b      $2b2c
002b4a: 22690004     movea.l    $4(a1), a1
002b4e: 20290008     move.l     $8(a1), d0
002b52: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002b56: 4e75         rts        
002b58: 4e550000     link.w     a5, #$0
002b5c: 48e78038     movem.l    d0/a2-a4, -(a7)
002b60: 7000         moveq      #$0, d0
002b62: 2840         movea.l    d0, a4
002b64: 2640         movea.l    d0, a3
002b66: 2440         movea.l    d0, a2
002b68: 700d         moveq      #$d, d0
002b6a: 7200         moveq      #$0, d1
002b6c: 41fa0064     lea.l      $2bd2(pc), a0
002b70: 47ee800c     lea.l      -$7ff4(a6), a3
002b74: 7609         moveq      #$9, d3
002b76: 2683         move.l     d3, (a3)
002b78: 262e870a     move.l     -$78f6(a6), d3
002b7c: 242e8706     move.l     -$78fa(a6), d2
002b80: 286e87a2     movea.l    -$785e(a6), a4
002b84: 4e40         trap       #$0
002b86: 0021653e     ori.b      #$3e, -(a1)
002b8a: 4a93         tst.l      (a3)
002b8c: 6718         beq.b      $2ba6
002b8e: 41fa0046     lea.l      $2bd6(pc), a0
002b92: 7264         moveq      #$64, d1
002b94: 7002         moveq      #$2, d0
002b96: 4e40         trap       #$0
002b98: 008c         .dc.w      $008c
002b9a: 41fa0036     lea.l      $2bd2(pc), a0
002b9e: 72dd         moveq      #$dd, d1
002ba0: 003c0001     ori.b      #$1, ccr
002ba4: 6022         bra.b      $2bc8
002ba6: 3d7c0041838e move.w     #$41, -$7c72(a6)
002bac: 426e8390     clr.w      -$7c70(a6)
002bb0: 3d7c000283aa move.w     #$2, -$7c56(a6)
002bb6: 3d7c000183ac move.w     #$1, -$7c54(a6)
002bbc: 3d7c000283c6 move.w     #$2, -$7c3a(a6)
002bc2: 3d7c000283c8 move.w     #$2, -$7c38(a6)
002bc8: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
002bce: 4e5d         unlk       a5
002bd0: 4e75         rts        
002bd2: 6369         bls.b      $2c3d
002bd4: 6f002a2a     ble.w      $5600
002bd8: 2a2a2063     move.l     $2063(a2), d5
002bdc: 696f         bvs.b      $2c4d
002bde: 20747261     movea.l    $61(a4, d7.w), a0
002be2: 7068         moveq      #$68, d0
002be4: 616e         bsr.b      $2c54
002be6: 646c         bcc.b      $2c54
002be8: 6572         bcs.b      $2c5c
002bea: 206d6973     movea.l    $6973(a5), a0
002bee: 6d61         blt.b      $2c51
002bf0: 7463         moveq      #$63, d2
002bf2: 6820         bvc.b      $2c14
002bf4: 2a2a2a2a     move.l     $2a2a(a2), d5
002bf8: 0d00         btst.l     d6, d0
002bfa: 4e4d         trap       #$d
002bfc: 00004e4d     ori.b      #$4d, d0
002c00: 00014e4d     ori.b      #$4d, d1
002c04: 00024e4d     ori.b      #$4d, d2
002c08: 00034e4d     ori.b      #$4d, d3
002c0c: 00044e4d     ori.b      #$4d, d4
002c10: 00054e4d     ori.b      #$4d, d5
002c14: 00064e4d     ori.b      #$4d, d6
002c18: 00074e4d     ori.b      #$4d, d7
002c1c: 0008         .dc.w      $0008
002c1e: 4e4d         trap       #$d
002c20: 0009         .dc.w      $0009
002c22: 4e4d         trap       #$d
002c24: 000a         .dc.w      $000a
002c26: 4e4d         trap       #$d
002c28: 000b         .dc.w      $000b
002c2a: 4e4d         trap       #$d
002c2c: 000c         .dc.w      $000c
002c2e: 4e4d         trap       #$d
002c30: 000d         .dc.w      $000d
002c32: 4e4d         trap       #$d
002c34: 000e         .dc.w      $000e
002c36: 4e4d         trap       #$d
002c38: 000f         .dc.w      $000f
002c3a: 4e4d         trap       #$d
002c3c: 00104e4d     ori.b      #$4d, (a0)
002c40: 00114e4d     ori.b      #$4d, (a1)
002c44: 00124e4d     ori.b      #$4d, (a2)
002c48: 00134e4d     ori.b      #$4d, (a3)
002c4c: 00144e4d     ori.b      #$4d, (a4)
002c50: 00154e4d     ori.b      #$4d, (a5)
002c54: 00164e4d     ori.b      #$4d, (a6)
002c58: 00174e4d     ori.b      #$4d, (a7)
002c5c: 00184e4d     ori.b      #$4d, (a0)+
002c60: 00194e4d     ori.b      #$4d, (a1)+
002c64: 001a4e4d     ori.b      #$4d, (a2)+
002c68: 001b4e4d     ori.b      #$4d, (a3)+
002c6c: 001c4e4d     ori.b      #$4d, (a4)+
002c70: 001d4e4d     ori.b      #$4d, (a5)+
002c74: 001e4e4d     ori.b      #$4d, (a6)+
002c78: 001f4e4d     ori.b      #$4d, (a7)+
002c7c: 00204e4d     ori.b      #$4d, -(a0)
002c80: 00214e4d     ori.b      #$4d, -(a1)
002c84: 00224e4d     ori.b      #$4d, -(a2)
002c88: 00234e4d     ori.b      #$4d, -(a3)
002c8c: 00244e4d     ori.b      #$4d, -(a4)
002c90: 00254e4d     ori.b      #$4d, -(a5)
002c94: 00264e4d     ori.b      #$4d, -(a6)
002c98: 00274e4d     ori.b      #$4d, -(a7)
002c9c: 00284e4d0029 ori.b      #$4d, $29(a0)
002ca2: 4e4d         trap       #$d
002ca4: 002a4e4d002b ori.b      #$4d, $2b(a2)
002caa: 4e4d         trap       #$d
002cac: 002c4e4d002d ori.b      #$4d, $2d(a4)
002cb2: 4e4d         trap       #$d
002cb4: 002e4e4d002f ori.b      #$4d, $2f(a6)
002cba: 4e4d         trap       #$d
002cbc: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
002cc2: 4e4d         trap       #$d
002cc4: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
002cca: 4e4d         trap       #$d
002ccc: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
002cd2: 4e4d         trap       #$d
002cd4: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
002cda: 4e4d         trap       #$d
002cdc: 00384e4d0039 ori.b      #$4d, $39.w
002ce2: 4e4d         trap       #$d
002ce4: 003a         .dc.w      $003a
002ce6: 4e4d         trap       #$d
002ce8: 003b         .dc.w      $003b
002cea: 4e4d         trap       #$d
002cec: 003c         .dc.w      $003c
002cee: 4e4d         trap       #$d
002cf0: 003d         .dc.w      $003d
002cf2: 4e4d         trap       #$d
002cf4: 003e         .dc.w      $003e
002cf6: 4e4d         trap       #$d
002cf8: 003f         .dc.w      $003f
002cfa: 4e4d         trap       #$d
002cfc: 00414e4d     ori.w      #$4e4d, d1
002d00: 00424e4d     ori.w      #$4e4d, d2
002d04: 00434e4d     ori.w      #$4e4d, d3
002d08: 00444e4d     ori.w      #$4e4d, d4
002d0c: 00454e4d     ori.w      #$4e4d, d5
002d10: 00404e55     ori.w      #$4e55, d0
002d14: 000048e7     ori.b      #$e7, d0
002d18: cc302440     and.b      $40(a0, d2.w), d6
002d1c: 61ff00000904 bsr.l      $3622
002d22: 2a00         move.l     d0, d5
002d24: 264a         movea.l    a2, a3
002d26: 4a1a         tst.b      (a2)+
002d28: 66fffffffffc bne.l      $2d26
002d2e: 538a         subq.l     #$1, a2
002d30: 60ff0000001c bra.l      $2d4e
002d36: 2005         move.l     d5, d0
002d38: 4c7c08010000000a divs.l     #$a, d0
002d40: 06010030     addi.b     #$30, d1
002d44: 1481         move.b     d1, (a2)
002d46: 4c7c58050000000a divs.l     #$a, d5
002d4e: 0c220058     cmpi.b     #$58, -(a2)
002d52: 67ffffffffe2 beq.l      $2d36
002d58: 528a         addq.l     #$1, a2
002d5a: 7861         moveq      #$61, d4
002d5c: 60ff0000001a bra.l      $2d78
002d62: 707a         moveq      #$7a, d0
002d64: b084         cmp.l      d4, d0
002d66: 66ff0000000c bne.l      $2d74
002d6c: 7000         moveq      #$0, d0
002d6e: 60ff00000026 bra.l      $2d96
002d74: 1484         move.b     d4, (a2)
002d76: 5284         addq.l     #$1, d4
002d78: 7200         moveq      #$0, d1
002d7a: 200b         move.l     a3, d0
002d7c: 61fffffffee8 bsr.l      $2c66
002d82: 72ff         moveq      #$ff, d1
002d84: b280         cmp.l      d0, d1
002d86: 66ffffffffda bne.l      $2d62
002d8c: 200b         move.l     a3, d0
002d8e: 60ff00000006 bra.l      $2d96
002d94: 4e71         nop        
002d96: 4ced0c32ffec movem.l    -$14(a5), d1/d4-d5/a2-a3
002d9c: 4e5d         unlk       a5
002d9e: 4e75         rts        
002da0: 2f08         move.l     a0, -(a7)
002da2: 2040         movea.l    d0, a0
002da4: b300         eor.b      d1, d0
002da6: 08000000     btst.b     #$0, d0
002daa: 6652         bne.b      $2dfe
002dac: 08010000     btst.b     #$0, d1
002db0: c389         exg.l      d1, a1
002db2: 6718         beq.b      $2dcc
002db4: b109         cmpm.b     (a1)+, (a0)+
002db6: 6530         bcs.b      $2de8
002db8: 6220         bhi.b      $2dda
002dba: 4a28ffff     tst.b      -$1(a0)
002dbe: 660c         bne.b      $2dcc
002dc0: 6034         bra.b      $2df6
002dc2: 4a00         tst.b      d0
002dc4: 6730         beq.b      $2df6
002dc6: 0c4000ff     cmpi.w     #$ff, d0
002dca: 632a         bls.b      $2df6
002dcc: 3018         move.w     (a0)+, d0
002dce: b059         cmp.w      (a1)+, d0
002dd0: 67f0         beq.b      $2dc2
002dd2: 650e         bcs.b      $2de2
002dd4: 0c4000ff     cmpi.w     #$ff, d0
002dd8: 6316         bls.b      $2df0
002dda: 7001         moveq      #$1, d0
002ddc: 205f         movea.l    (a7)+, a0
002dde: c389         exg.l      d1, a1
002de0: 4e75         rts        
002de2: 0c4000ff     cmpi.w     #$ff, d0
002de6: 6308         bls.b      $2df0
002de8: 70ff         moveq      #$ff, d0
002dea: 205f         movea.l    (a7)+, a0
002dec: c389         exg.l      d1, a1
002dee: 4e75         rts        
002df0: 4a29fffe     tst.b      -$2(a1)
002df4: 66f2         bne.b      $2de8
002df6: 7000         moveq      #$0, d0
002df8: 205f         movea.l    (a7)+, a0
002dfa: c389         exg.l      d1, a1
002dfc: 4e75         rts        
002dfe: c389         exg.l      d1, a1
002e00: 7000         moveq      #$0, d0
002e02: 1018         move.b     (a0)+, d0
002e04: b019         cmp.b      (a1)+, d0
002e06: 56c8fffa     dbne       d0, $2e02
002e0a: 65dc         bcs.b      $2de8
002e0c: 5240         addq.w     #$1, d0
002e0e: 205f         movea.l    (a7)+, a0
002e10: c389         exg.l      d1, a1
002e12: 4e75         rts        
002e14: 2f08         move.l     a0, -(a7)
002e16: 2040         movea.l    d0, a0
002e18: 4a18         tst.b      (a0)+
002e1a: 670c         beq.b      $2e28
002e1c: 4a18         tst.b      (a0)+
002e1e: 6708         beq.b      $2e28
002e20: 4a18         tst.b      (a0)+
002e22: 6704         beq.b      $2e28
002e24: 4a18         tst.b      (a0)+
002e26: 66f0         bne.b      $2e18
002e28: 91c0         suba.l     d0, a0
002e2a: 2008         move.l     a0, d0
002e2c: 5380         subq.l     #$1, d0
002e2e: 205f         movea.l    (a7)+, a0
002e30: 4e75         rts        
002e32: 2f08         move.l     a0, -(a7)
002e34: 2040         movea.l    d0, a0
002e36: c389         exg.l      d1, a1
002e38: 10d9         move.b     (a1)+, (a0)+
002e3a: 670c         beq.b      $2e48
002e3c: 10d9         move.b     (a1)+, (a0)+
002e3e: 6708         beq.b      $2e48
002e40: 10d9         move.b     (a1)+, (a0)+
002e42: 6704         beq.b      $2e48
002e44: 10d9         move.b     (a1)+, (a0)+
002e46: 66f0         bne.b      $2e38
002e48: 205f         movea.l    (a7)+, a0
002e4a: c389         exg.l      d1, a1
002e4c: 4e75         rts        
002e4e: 2f08         move.l     a0, -(a7)
002e50: 2040         movea.l    d0, a0
002e52: c389         exg.l      d1, a1
002e54: 4a18         tst.b      (a0)+
002e56: 670c         beq.b      $2e64
002e58: 4a18         tst.b      (a0)+
002e5a: 6708         beq.b      $2e64
002e5c: 4a18         tst.b      (a0)+
002e5e: 6704         beq.b      $2e64
002e60: 4a18         tst.b      (a0)+
002e62: 66f0         bne.b      $2e54
002e64: 1159ffff     move.b     (a1)+, -$1(a0)
002e68: 66ce         bne.b      $2e38
002e6a: 60dc         bra.b      $2e48
002e6c: 2f08         move.l     a0, -(a7)
002e6e: 2040         movea.l    d0, a0
002e70: c389         exg.l      d1, a1
002e72: 10d9         move.b     (a1)+, (a0)+
002e74: 6afc         bpl.b      $2e72
002e76: 4210         clr.b      (a0)
002e78: 0220007f     andi.b     #$7f, -(a0)
002e7c: 205f         movea.l    (a7)+, a0
002e7e: c389         exg.l      d1, a1
002e80: 4e75         rts        
002e82: 4e550000     link.w     a5, #$0
002e86: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
002e8a: 2440         movea.l    d0, a2
002e8c: 2641         movea.l    d1, a3
002e8e: 282f0020     move.l     $20(a7), d4
002e92: 284a         movea.l    a2, a4
002e94: 5384         subq.l     #$1, d4
002e96: 6dff0000000c blt.l      $2ea4
002e9c: 18db         move.b     (a3)+, (a4)+
002e9e: 66fffffffff4 bne.l      $2e94
002ea4: 60ff00000006 bra.l      $2eac
002eaa: 421c         clr.b      (a4)+
002eac: 5384         subq.l     #$1, d4
002eae: 6cfffffffffa bge.l      $2eaa
002eb4: 200a         move.l     a2, d0
002eb6: 60ff00000006 bra.l      $2ebe
002ebc: 4e71         nop        
002ebe: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
002ec4: 4e5d         unlk       a5
002ec6: 4e75         rts        
002ec8: 4e550000     link.w     a5, #$0
002ecc: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
002ed0: 2440         movea.l    d0, a2
002ed2: 2641         movea.l    d1, a3
002ed4: 282f001c     move.l     $1c(a7), d4
002ed8: 60ff00000016 bra.l      $2ef0
002ede: 4a1b         tst.b      (a3)+
002ee0: 66ff0000000c bne.l      $2eee
002ee6: 7000         moveq      #$0, d0
002ee8: 60ff0000003a bra.l      $2f24
002eee: 528a         addq.l     #$1, a2
002ef0: 5384         subq.l     #$1, d4
002ef2: 6dff0000000e blt.l      $2f02
002ef8: 1012         move.b     (a2), d0
002efa: b013         cmp.b      (a3), d0
002efc: 67ffffffffe0 beq.l      $2ede
002f02: 4a84         tst.l      d4
002f04: 6cff00000008 bge.l      $2f0e
002f0a: 7000         moveq      #$0, d0
002f0c: 600e         bra.b      $2f1c
002f0e: 1013         move.b     (a3), d0
002f10: 4880         ext.w      d0
002f12: 1212         move.b     (a2), d1
002f14: 4881         ext.w      d1
002f16: 9240         sub.w      d0, d1
002f18: 48c1         ext.l      d1
002f1a: 2001         move.l     d1, d0
002f1c: 60ff00000006 bra.l      $2f24
002f22: 4e71         nop        
002f24: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
002f2a: 4e5d         unlk       a5
002f2c: 4e75         rts        
002f2e: 4e550000     link.w     a5, #$0
002f32: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
002f36: 2440         movea.l    d0, a2
002f38: 2641         movea.l    d1, a3
002f3a: 282f0020     move.l     $20(a7), d4
002f3e: 284a         movea.l    a2, a4
002f40: 4a1c         tst.b      (a4)+
002f42: 66fffffffffc bne.l      $2f40
002f48: 538c         subq.l     #$1, a4
002f4a: 5384         subq.l     #$1, d4
002f4c: 6dff0000000c blt.l      $2f5a
002f52: 18db         move.b     (a3)+, (a4)+
002f54: 66fffffffff4 bne.l      $2f4a
002f5a: 4a84         tst.l      d4
002f5c: 6cff00000006 bge.l      $2f64
002f62: 4214         clr.b      (a4)
002f64: 200a         move.l     a2, d0
002f66: 60ff00000006 bra.l      $2f6e
002f6c: 4e71         nop        
002f6e: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
002f74: 4e5d         unlk       a5
002f76: 4e75         rts        
002f78: 4e550000     link.w     a5, #$0
002f7c: 48e7c080     movem.l    d0-d1/a0, -(a7)
002f80: 2017         move.l     (a7), d0
002f82: 41f60170ffff87a7 lea.l      $ffff87a7(a6, invalid.w), a0
002f8a: 12300800     move.b     (a0, d0.l), d1
002f8e: 4881         ext.w      d1
002f90: 08010002     btst.b     #$2, d1
002f94: 67ff0000000c beq.l      $2fa2
002f9a: 0280000000df andi.l     #$df, d0
002fa0: 6002         bra.b      $2fa4
002fa2: 2017         move.l     (a7), d0
002fa4: 60ff00000006 bra.l      $2fac
002faa: 4e71         nop        
002fac: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002fb2: 4e5d         unlk       a5
002fb4: 4e75         rts        
002fb6: 4e550000     link.w     a5, #$0
002fba: 48e7c080     movem.l    d0-d1/a0, -(a7)
002fbe: 2017         move.l     (a7), d0
002fc0: 41f60170ffff87a7 lea.l      $ffff87a7(a6, invalid.w), a0
002fc8: 12300800     move.b     (a0, d0.l), d1
002fcc: 4881         ext.w      d1
002fce: 08010001     btst.b     #$1, d1
002fd2: 67ff0000000a beq.l      $2fde
002fd8: 08c00005     bset.b     #$5, d0
002fdc: 6002         bra.b      $2fe0
002fde: 2017         move.l     (a7), d0
002fe0: 60ff00000006 bra.l      $2fe8
002fe6: 4e71         nop        
002fe8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002fee: 4e5d         unlk       a5
002ff0: 4e75         rts        
002ff2: 48e73800     movem.l    d2-d4, -(a7)
002ff6: 2400         move.l     d0, d2
002ff8: 2600         move.l     d0, d3
002ffa: 4843         swap       d3
002ffc: 2801         move.l     d1, d4
002ffe: 4844         swap       d4
003000: c0c1         mulu.w     d1, d0
003002: c2c3         mulu.w     d3, d1
003004: c4c4         mulu.w     d4, d2
003006: c6c4         mulu.w     d4, d3
003008: 4840         swap       d0
00300a: d041         add.w      d1, d0
00300c: 7800         moveq      #$0, d4
00300e: d784         addx.l     d4, d3
003010: d042         add.w      d2, d0
003012: d784         addx.l     d4, d3
003014: 4840         swap       d0
003016: 4241         clr.w      d1
003018: 4841         swap       d1
00301a: 4242         clr.w      d2
00301c: 4842         swap       d2
00301e: d282         add.l      d2, d1
003020: d283         add.l      d3, d1
003022: 4a80         tst.l      d0
003024: 4cdf001c     movem.l    (a7)+, d2-d4
003028: 4e75         rts        
00302a: 2f02         move.l     d2, -(a7)
00302c: 7400         moveq      #$0, d2
00302e: 4a80         tst.l      d0
003030: 6a04         bpl.b      $3036
003032: 4480         neg.l      d0
003034: 7403         moveq      #$3, d2
003036: 4a81         tst.l      d1
003038: 6a06         bpl.b      $3040
00303a: 4481         neg.l      d1
00303c: 0a020001     eori.b     #$1, d2
003040: 6122         bsr.b      $3064
003042: e20a         lsr.b      #$1, d2
003044: 6402         bcc.b      $3048
003046: 4480         neg.l      d0
003048: e20a         lsr.b      #$1, d2
00304a: 6402         bcc.b      $304e
00304c: 4481         neg.l      d1
00304e: 241f         move.l     (a7)+, d2
003050: 4a80         tst.l      d0
003052: 4e75         rts        
003054: 61d4         bsr.b      $302a
003056: c141         exg.l      d0, d1
003058: 4a80         tst.l      d0
00305a: 4e75         rts        
00305c: 6106         bsr.b      $3064
00305e: c141         exg.l      d0, d1
003060: 4a80         tst.l      d0
003062: 4e75         rts        
003064: 48e73800     movem.l    d2-d4, -(a7)
003068: 2401         move.l     d1, d2
00306a: 6606         bne.b      $3072
00306c: 81fc0000     divs.w     #$0, d0
003070: 606e         bra.b      $30e0
003072: 5381         subq.l     #$1, d1
003074: 676a         beq.b      $30e0
003076: 2801         move.l     d1, d4
003078: 2200         move.l     d0, d1
00307a: b481         cmp.l      d1, d2
00307c: 650c         bcs.b      $308a
00307e: 6704         beq.b      $3084
003080: 7000         moveq      #$0, d0
003082: 605c         bra.b      $30e0
003084: 7001         moveq      #$1, d0
003086: 9282         sub.l      d2, d1
003088: 6056         bra.b      $30e0
00308a: 2602         move.l     d2, d3
00308c: 6bf6         bmi.b      $3084
00308e: c684         and.l      d4, d3
003090: 6612         bne.b      $30a4
003092: e28a         lsr.l      #$1, d2
003094: 76ff         moveq      #$ff, d3
003096: e28a         lsr.l      #$1, d2
003098: 55cbfffc     dbcs       d3, $3096
00309c: 4483         neg.l      d3
00309e: e6a8         lsr.l      d3, d0
0030a0: c284         and.l      d4, d1
0030a2: 603c         bra.b      $30e0
0030a4: 7000         moveq      #$0, d0
0030a6: 76ff         moveq      #$ff, d3
0030a8: e382         asl.l      #$1, d2
0030aa: 6a06         bpl.b      $30b2
0030ac: b481         cmp.l      d1, d2
0030ae: 620a         bhi.b      $30ba
0030b0: 600c         bra.b      $30be
0030b2: b481         cmp.l      d1, d2
0030b4: 54cbfff2     dbcc       d3, $30a8
0030b8: 6704         beq.b      $30be
0030ba: 5283         addq.l     #$1, d3
0030bc: e28a         lsr.l      #$1, d2
0030be: 4483         neg.l      d3
0030c0: 6004         bra.b      $30c6
0030c2: e380         asl.l      #$1, d0
0030c4: e28a         lsr.l      #$1, d2
0030c6: 9282         sub.l      d2, d1
0030c8: 6510         bcs.b      $30da
0030ca: 5280         addq.l     #$1, d0
0030cc: 51cbfff4     dbra       d3, $30c2
0030d0: 600e         bra.b      $30e0
0030d2: e380         asl.l      #$1, d0
0030d4: e28a         lsr.l      #$1, d2
0030d6: d282         add.l      d2, d1
0030d8: 65f0         bcs.b      $30ca
0030da: 51cbfff6     dbra       d3, $30d2
0030de: d282         add.l      d2, d1
0030e0: 4cdf001c     movem.l    (a7)+, d2-d4
0030e4: 4a80         tst.l      d0
0030e6: 4e75         rts        
0030e8: 2a5f         movea.l    (a7)+, a5
0030ea: 5385         subq.l     #$1, d5
0030ec: 6562         bcs.b      $3150
0030ee: 1018         move.b     (a0)+, d0
0030f0: 67f8         beq.b      $30ea
0030f2: 0c00000d     cmpi.b     #$d, d0
0030f6: 6758         beq.b      $3150
0030f8: 0c000020     cmpi.b     #$20, d0
0030fc: 67ec         beq.b      $30ea
0030fe: 0c000009     cmpi.b     #$9, d0
003102: 67e6         beq.b      $30ea
003104: 0c00002c     cmpi.b     #$2c, d0
003108: 67e0         beq.b      $30ea
00310a: 5282         addq.l     #$1, d2
00310c: 0c000022     cmpi.b     #$22, d0
003110: 6730         beq.b      $3142
003112: 0c000027     cmpi.b     #$27, d0
003116: 672a         beq.b      $3142
003118: 4868ffff     pea.l      -$1(a0)
00311c: 5385         subq.l     #$1, d5
00311e: 6530         bcs.b      $3150
003120: 1018         move.b     (a0)+, d0
003122: 67c6         beq.b      $30ea
003124: 0c00000d     cmpi.b     #$d, d0
003128: 6712         beq.b      $313c
00312a: 0c000020     cmpi.b     #$20, d0
00312e: 670c         beq.b      $313c
003130: 0c000009     cmpi.b     #$9, d0
003134: 6706         beq.b      $313c
003136: 0c00002c     cmpi.b     #$2c, d0
00313a: 66e0         bne.b      $311c
00313c: 4228ffff     clr.b      -$1(a0)
003140: 60a8         bra.b      $30ea
003142: 4850         pea.l      (a0)
003144: 5385         subq.l     #$1, d5
003146: 6508         bcs.b      $3150
003148: 1218         move.b     (a0)+, d1
00314a: b001         cmp.b      d1, d0
00314c: 66f6         bne.b      $3144
00314e: 60ec         bra.b      $313c
003150: 204f         movea.l    a7, a0
003152: 4857         pea.l      (a7)
003154: 2f02         move.l     d2, -(a7)
003156: 5382         subq.l     #$1, d2
003158: 6710         beq.b      $316a
00315a: e582         asl.l      #$2, d2
00315c: 20302800     move.l     (a0, d2.l), d0
003160: 21902800     move.l     (a0), (a0, d2.l)
003164: 20c0         move.l     d0, (a0)+
003166: 5182         subq.l     #$8, d2
003168: 62f2         bhi.b      $315c
00316a: 4ed5         jmp        (a5)
00316c: 4e550000     link.w     a5, #$0
003170: 48e76080     movem.l    d1-d2/a0, -(a7)
003174: 2041         movea.l    d1, a0
003176: 323c0000     move.w     #$0, d1
00317a: 4e40         trap       #$0
00317c: 008d         .dc.w      $008d
00317e: 60000502     bra.w      $3682
003182: 4e550000     link.w     a5, #$0
003186: 48e76080     movem.l    d1-d2/a0, -(a7)
00318a: 323c0001     move.w     #$1, d1
00318e: 4e40         trap       #$0
003190: 008d         .dc.w      $008d
003192: 650004f0     bcs.w      $3684
003196: 2001         move.l     d1, d0
003198: 600004e8     bra.w      $3682
00319c: 4e550000     link.w     a5, #$0
0031a0: 48e76080     movem.l    d1-d2/a0, -(a7)
0031a4: 323c0006     move.w     #$6, d1
0031a8: 4e40         trap       #$0
0031aa: 008d         .dc.w      $008d
0031ac: 640004de     bcc.w      $368c
0031b0: 0c4100d3     cmpi.w     #$d3, d1
0031b4: 660004ce     bne.w      $3684
0031b8: 7001         moveq      #$1, d0
0031ba: 600004c6     bra.w      $3682
0031be: 4e550000     link.w     a5, #$0
0031c2: 48e76080     movem.l    d1-d2/a0, -(a7)
0031c6: 2041         movea.l    d1, a0
0031c8: 323c000f     move.w     #$f, d1
0031cc: 242d0008     move.l     $8(a5), d2
0031d0: 60a8         bra.b      $317a
0031d2: 4e550000     link.w     a5, #$0
0031d6: 48e76080     movem.l    d1-d2/a0, -(a7)
0031da: 2041         movea.l    d1, a0
0031dc: 323c000e     move.w     #$e, d1
0031e0: 6098         bra.b      $317a
0031e2: 4e550000     link.w     a5, #$0
0031e6: 48e76080     movem.l    d1-d2/a0, -(a7)
0031ea: 323c0002     move.w     #$2, d1
0031ee: 4e40         trap       #$0
0031f0: 008d         .dc.w      $008d
0031f2: 65000490     bcs.w      $3684
0031f6: 2002         move.l     d2, d0
0031f8: 60000488     bra.w      $3682
0031fc: 4e550000     link.w     a5, #$0
003200: 48e76080     movem.l    d1-d2/a0, -(a7)
003204: 323c0005     move.w     #$5, d1
003208: 60e4         bra.b      $31ee
00320a: 4e550000     link.w     a5, #$0
00320e: 48e76080     movem.l    d1-d2/a0, -(a7)
003212: 2041         movea.l    d1, a0
003214: 323c0000     move.w     #$0, d1
003218: 4e40         trap       #$0
00321a: 008e         .dc.w      $008e
00321c: 60000464     bra.w      $3682
003220: 4e550000     link.w     a5, #$0
003224: 48e76080     movem.l    d1-d2/a0, -(a7)
003228: 323c0003     move.w     #$3, d1
00322c: 60ea         bra.b      $3218
00322e: 4e550000     link.w     a5, #$0
003232: 48e76080     movem.l    d1-d2/a0, -(a7)
003236: 2401         move.l     d1, d2
003238: 323c0002     move.w     #$2, d1
00323c: 60da         bra.b      $3218
00323e: 4e550000     link.w     a5, #$0
003242: 48e76080     movem.l    d1-d2/a0, -(a7)
003246: 2041         movea.l    d1, a0
003248: 323c000f     move.w     #$f, d1
00324c: 60ca         bra.b      $3218
00324e: 4e550000     link.w     a5, #$0
003252: 48e76080     movem.l    d1-d2/a0, -(a7)
003256: 2401         move.l     d1, d2
003258: 323c0010     move.w     #$10, d1
00325c: 60ba         bra.b      $3218
00325e: 4e550000     link.w     a5, #$0
003262: 48e76080     movem.l    d1-d2/a0, -(a7)
003266: 2401         move.l     d1, d2
003268: 323c0011     move.w     #$11, d1
00326c: 60aa         bra.b      $3218
00326e: 4e550000     link.w     a5, #$0
003272: 48e76080     movem.l    d1-d2/a0, -(a7)
003276: 2401         move.l     d1, d2
003278: 323c001a     move.w     #$1a, d1
00327c: 609a         bra.b      $3218
00327e: 4e550000     link.w     a5, #$0
003282: 48e76080     movem.l    d1-d2/a0, -(a7)
003286: 323c001b     move.w     #$1b, d1
00328a: 60f0         bra.b      $327c
00328c: 4e550000     link.w     a5, #$0
003290: 48e76080     movem.l    d1-d2/a0, -(a7)
003294: 48e71840     movem.l    d3-d4/a1, -(a7)
003298: 2401         move.l     d1, d2
00329a: 7204         moveq      #$4, d1
00329c: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
0032a2: 4e40         trap       #$0
0032a4: 008e         .dc.w      $008e
0032a6: 4cdf0218     movem.l    (a7)+, d3-d4/a1
0032aa: 600003d6     bra.w      $3682
0032ae: 4e550000     link.w     a5, #$0
0032b2: 48e76080     movem.l    d1-d2/a0, -(a7)
0032b6: 2401         move.l     d1, d2
0032b8: 323c001c     move.w     #$1c, d1
0032bc: 60be         bra.b      $327c
0032be: 4e550000     link.w     a5, #$0
0032c2: 48e76080     movem.l    d1-d2/a0, -(a7)
0032c6: 323c0024     move.w     #$24, d1
0032ca: 60b0         bra.b      $327c
0032cc: 4e550000     link.w     a5, #$0
0032d0: 48e76080     movem.l    d1-d2/a0, -(a7)
0032d4: 323c0025     move.w     #$25, d1
0032d8: 60a2         bra.b      $327c
0032da: 4e550000     link.w     a5, #$0
0032de: 48e76080     movem.l    d1-d2/a0, -(a7)
0032e2: 3401         move.w     d1, d2
0032e4: 323c0026     move.w     #$26, d1
0032e8: 6092         bra.b      $327c
0032ea: 4e550000     link.w     a5, #$0
0032ee: 48e76080     movem.l    d1-d2/a0, -(a7)
0032f2: 3401         move.w     d1, d2
0032f4: 323c0027     move.w     #$27, d1
0032f8: 6082         bra.b      $327c
0032fa: 4e550000     link.w     a5, #$0
0032fe: 48e76080     movem.l    d1-d2/a0, -(a7)
003302: 2040         movea.l    d0, a0
003304: 2001         move.l     d1, d0
003306: 2f0a         move.l     a2, -(a7)
003308: 4e40         trap       #$0
00330a: 0080204a245f ori.l      #$204a245f, d0
003310: 65000372     bcs.w      $3684
003314: 2008         move.l     a0, d0
003316: 6000036a     bra.w      $3682
00331a: 4e550000     link.w     a5, #$0
00331e: 48e76080     movem.l    d1-d2/a0, -(a7)
003322: 204a         movea.l    a2, a0
003324: 2440         movea.l    d0, a2
003326: 4e40         trap       #$0
003328: 008124486000 ori.l      #$24486000, d1
00332e: 0354         bchg.b     d1, (a4)
003330: 4e550000     link.w     a5, #$0
003334: 48e76080     movem.l    d1-d2/a0, -(a7)
003338: 7000         moveq      #$0, d0
00333a: 4e40         trap       #$0
00333c: 000a         .dc.w      $000a
00333e: 60000342     bra.w      $3682
003342: 4e550000     link.w     a5, #$0
003346: 48e76080     movem.l    d1-d2/a0, -(a7)
00334a: 206d0008     movea.l    $8(a5), a0
00334e: 2210         move.l     (a0), d1
003350: 2040         movea.l    d0, a0
003352: 2017         move.l     (a7), d0
003354: 4e40         trap       #$0
003356: 00176500     ori.b      #$0, (a7)
00335a: 032a206d     btst.l     d1, $206d(a2)
00335e: 0008         .dc.w      $0008
003360: 2081         move.l     d1, (a0)
003362: 60000328     bra.w      $368c
003366: 4e550000     link.w     a5, #$0
00336a: 48e76080     movem.l    d1-d2/a0, -(a7)
00336e: 4e40         trap       #$0
003370: 000f         .dc.w      $000f
003372: 6000030e     bra.w      $3682
003376: e188         lsl.l      #$8, d0
003378: 08c0001f     bset.b     #$1f, d0
00337c: 4e550000     link.w     a5, #$0
003380: 48e76080     movem.l    d1-d2/a0, -(a7)
003384: 4e40         trap       #$0
003386: 000a         .dc.w      $000a
003388: 600002f8     bra.w      $3682
00338c: 4e550000     link.w     a5, #$0
003390: 48e700c0     movem.l    a0-a1, -(a7)
003394: 2041         movea.l    d1, a0
003396: 2240         movea.l    d0, a1
003398: 222d0008     move.l     $8(a5), d1
00339c: 4e40         trap       #$0
00339e: 00116560     ori.b      #$60, (a1)
0033a2: 7000         moveq      #$0, d0
0033a4: 6068         bra.b      $340e
0033a6: 4e550000     link.w     a5, #$0
0033aa: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0033ae: 2040         movea.l    d0, a0
0033b0: 4e40         trap       #$0
0033b2: 00106454     ori.b      #$54, (a0)
0033b6: 604a         bra.b      $3402
0033b8: 4e550000     link.w     a5, #$0
0033bc: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0033c0: 2040         movea.l    d0, a0
0033c2: 2248         movea.l    a0, a1
0033c4: 1019         move.b     (a1)+, d0
0033c6: 0c00002f     cmpi.b     #$2f, d0
0033ca: 671a         beq.b      $33e6
0033cc: 0c00002e     cmpi.b     #$2e, d0
0033d0: 6622         bne.b      $33f4
0033d2: 0c19002e     cmpi.b     #$2e, (a1)+
0033d6: 67fa         beq.b      $33d2
0033d8: 1021         move.b     -(a1), d0
0033da: 672e         beq.b      $340a
0033dc: 0c00002f     cmpi.b     #$2f, d0
0033e0: 6612         bne.b      $33f4
0033e2: 2049         movea.l    a1, a0
0033e4: 60de         bra.b      $33c4
0033e6: 1019         move.b     (a1)+, d0
0033e8: 0c00002f     cmpi.b     #$2f, d0
0033ec: 6706         beq.b      $33f4
0033ee: 0c00002e     cmpi.b     #$2e, d0
0033f2: 67de         beq.b      $33d2
0033f4: 4e40         trap       #$0
0033f6: 00106508     ori.b      #$8, (a0)
0033fa: 4a00         tst.b      d0
0033fc: 670c         beq.b      $340a
0033fe: 2049         movea.l    a1, a0
003400: 60c2         bra.b      $33c4
003402: 2d41800c     move.l     d1, -$7ff4(a6)
003406: 70ff         moveq      #$ff, d0
003408: 6004         bra.b      $340e
00340a: 2009         move.l     a1, d0
00340c: 9097         sub.l      (a7), d0
00340e: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
003414: 4e5d         unlk       a5
003416: 4e75         rts        
003418: 4e550000     link.w     a5, #$0
00341c: 48e76080     movem.l    d1-d2/a0, -(a7)
003420: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
003424: 242d000c     move.l     $c(a5), d2
003428: 0802000f     btst.b     #$f, d2
00342c: 6708         beq.b      $3436
00342e: 262d0010     move.l     $10(a5), d3
003432: 282d0014     move.l     $14(a5), d4
003436: 2040         movea.l    d0, a0
003438: 2001         move.l     d1, d0
00343a: 222d0008     move.l     $8(a5), d1
00343e: 4e40         trap       #$0
003440: 00256502     ori.b      #$2, -(a5)
003444: 200a         move.l     a2, d0
003446: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
00344a: 60000236     bra.w      $3682
00344e: 4e550000     link.w     a5, #$0
003452: 48e76080     movem.l    d1-d2/a0, -(a7)
003456: 2040         movea.l    d0, a0
003458: 4e40         trap       #$0
00345a: 001a6500     ori.b      #$0, (a2)+
00345e: 02262001     andi.b     #$1, -(a6)
003462: 6000021e     bra.w      $3682
003466: 4e550000     link.w     a5, #$0
00346a: 48e76080     movem.l    d1-d2/a0, -(a7)
00346e: 2040         movea.l    d0, a0
003470: 4e40         trap       #$0
003472: 001f6500     ori.b      #$0, (a7)+
003476: 020e         .dc.w      $020e
003478: 2001         move.l     d1, d0
00347a: 60000206     bra.w      $3682
00347e: 4e550000     link.w     a5, #$0
003482: 48e76080     movem.l    d1-d2/a0, -(a7)
003486: 206d0008     movea.l    $8(a5), a0
00348a: 4e40         trap       #$0
00348c: 00186000     ori.b      #$0, (a0)+
003490: 01f24e55     bset.b     d0, $55(a2, d4.l)
003494: 000048e7     ori.b      #$e7, d0
003498: 6080         bra.b      $341a
00349a: 2040         movea.l    d0, a0
00349c: 4e40         trap       #$0
00349e: 00266000     ori.b      #$0, -(a6)
0034a2: 01e0         bset.b     d0, -(a0)
0034a4: 4e550000     link.w     a5, #$0
0034a8: 48e76080     movem.l    d1-d2/a0, -(a7)
0034ac: 08c1001f     bset.b     #$1f, d1
0034b0: 600c         bra.b      $34be
0034b2: 4e550000     link.w     a5, #$0
0034b6: 48e76080     movem.l    d1-d2/a0, -(a7)
0034ba: 242d0008     move.l     $8(a5), d2
0034be: 4e40         trap       #$0
0034c0: 00276500     ori.b      #$0, -(a7)
0034c4: 01c0         bset.b     d0, d0
0034c6: 2002         move.l     d2, d0
0034c8: 600001b8     bra.w      $3682
0034cc: 4e550000     link.w     a5, #$0
0034d0: 48e76080     movem.l    d1-d2/a0, -(a7)
0034d4: 4e40         trap       #$0
0034d6: 000b         .dc.w      $000b
0034d8: 600001a8     bra.w      $3682
0034dc: 4e550000     link.w     a5, #$0
0034e0: 4e40         trap       #$0
0034e2: 00524e5d     ori.w      #$4e5d, (a2)
0034e6: 4e75         rts        
0034e8: 4e550000     link.w     a5, #$0
0034ec: 48e76080     movem.l    d1-d2/a0, -(a7)
0034f0: 2f09         move.l     a1, -(a7)
0034f2: 206d0008     movea.l    $8(a5), a0
0034f6: 226d000c     movea.l    $c(a5), a1
0034fa: 4e40         trap       #$0
0034fc: 001b225f     ori.b      #$5f, (a3)+
003500: 60000180     bra.w      $3682
003504: 4e550000     link.w     a5, #$0
003508: 48e76080     movem.l    d1-d2/a0, -(a7)
00350c: 2040         movea.l    d0, a0
00350e: 3001         move.w     d1, d0
003510: 48e70060     movem.l    a1-a2, -(a7)
003514: 4e40         trap       #$0
003516: 00006502     ori.b      #$2, d0
00351a: 200a         move.l     a2, d0
00351c: 4cdf0600     movem.l    (a7)+, a1-a2
003520: 60000160     bra.w      $3682
003524: 4e550000     link.w     a5, #$0
003528: 48e76080     movem.l    d1-d2/a0, -(a7)
00352c: 2040         movea.l    d0, a0
00352e: 3001         move.w     d1, d0
003530: 48e70060     movem.l    a1-a2, -(a7)
003534: 4e40         trap       #$0
003536: 000160de     ori.b      #$de, d1
00353a: 4e550000     link.w     a5, #$0
00353e: 48e76080     movem.l    d1-d2/a0, -(a7)
003542: 2f0a         move.l     a2, -(a7)
003544: 2440         movea.l    d0, a2
003546: 4e40         trap       #$0
003548: 0002245f     ori.b      #$5f, d2
00354c: 60000134     bra.w      $3682
003550: 4e550000     link.w     a5, #$0
003554: 48e76080     movem.l    d1-d2/a0, -(a7)
003558: 2040         movea.l    d0, a0
00355a: 3001         move.w     d1, d0
00355c: 4e40         trap       #$0
00355e: 001d6000     ori.b      #$0, (a5)+
003562: 0120         btst.l     d0, -(a0)
003564: 4e550000     link.w     a5, #$0
003568: 48e76080     movem.l    d1-d2/a0, -(a7)
00356c: 4e40         trap       #$0
00356e: 0008         .dc.w      $0008
003570: 60000110     bra.w      $3682
003574: 4e550000     link.w     a5, #$0
003578: 48e76080     movem.l    d1-d2/a0, -(a7)
00357c: 2040         movea.l    d0, a0
00357e: 7000         moveq      #$0, d0
003580: 4e40         trap       #$0
003582: 00046500     ori.b      #$0, d4
003586: 00fe         .dc.w      $00fe
003588: 2408         move.l     a0, d2
00358a: 670000f6     beq.w      $3682
00358e: 4258         clr.w      (a0)+
003590: 3081         move.w     d1, (a0)
003592: 600000ee     bra.w      $3682
003596: 4e550000     link.w     a5, #$0
00359a: 48e76080     movem.l    d1-d2/a0, -(a7)
00359e: 4e40         trap       #$0
0035a0: 000d         .dc.w      $000d
0035a2: 600000de     bra.w      $3682
0035a6: 4e550000     link.w     a5, #$0
0035aa: 48e76080     movem.l    d1-d2/a0, -(a7)
0035ae: 48e71c40     movem.l    d3-d5/a1, -(a7)
0035b2: 7a03         moveq      #$3, d5
0035b4: 602e         bra.b      $35e4
0035b6: 4e550000     link.w     a5, #$0
0035ba: 48e76080     movem.l    d1-d2/a0, -(a7)
0035be: 48e71c40     movem.l    d3-d5/a1, -(a7)
0035c2: 7a01         moveq      #$1, d5
0035c4: 601e         bra.b      $35e4
0035c6: 4e550000     link.w     a5, #$0
0035ca: 48e76080     movem.l    d1-d2/a0, -(a7)
0035ce: 48e71c40     movem.l    d3-d5/a1, -(a7)
0035d2: 7a02         moveq      #$2, d5
0035d4: 600e         bra.b      $35e4
0035d6: 4e550000     link.w     a5, #$0
0035da: 48e76080     movem.l    d1-d2/a0, -(a7)
0035de: 48e71c40     movem.l    d3-d5/a1, -(a7)
0035e2: 7a00         moveq      #$0, d5
0035e4: 2040         movea.l    d0, a0
0035e6: 2401         move.l     d1, d2
0035e8: 226d0008     movea.l    $8(a5), a1
0035ec: 302d0012     move.w     $12(a5), d0
0035f0: 4840         swap       d0
0035f2: 302d000e     move.w     $e(a5), d0
0035f6: 222d0014     move.l     $14(a5), d1
0035fa: 7603         moveq      #$3, d3
0035fc: 08050001     btst.b     #$1, d5
003600: 6704         beq.b      $3606
003602: 262d001c     move.l     $1c(a5), d3
003606: 282d0018     move.l     $18(a5), d4
00360a: 08050000     btst.b     #$0, d5
00360e: 6606         bne.b      $3616
003610: 4e40         trap       #$0
003612: 00036004     ori.b      #$4, d3
003616: 4e40         trap       #$0
003618: 00054cdf     ori.b      #$df, d5
00361c: 023860000062 andi.b     #$0, $62.w
003622: 4e550000     link.w     a5, #$0
003626: 48e76080     movem.l    d1-d2/a0, -(a7)
00362a: 4e40         trap       #$0
00362c: 000c         .dc.w      $000c
00362e: 60000052     bra.w      $3682
003632: 4e550000     link.w     a5, #$0
003636: 48e76080     movem.l    d1-d2/a0, -(a7)
00363a: 4e40         trap       #$0
00363c: 000c         .dc.w      $000c
00363e: 65000044     bcs.w      $3684
003642: 2001         move.l     d1, d0
003644: 6000003c     bra.w      $3682
003648: 4e550000     link.w     a5, #$0
00364c: 48e76080     movem.l    d1-d2/a0, -(a7)
003650: 2200         move.l     d0, d1
003652: 4e40         trap       #$0
003654: 001c6000     ori.b      #$0, (a4)+
003658: 002a4e550000 ori.b      #$55, $0(a2)
00365e: 48e76080     movem.l    d1-d2/a0, -(a7)
003662: 41fa0012     lea.l      $3676(pc), a0
003666: 2d408702     move.l     d0, -$78fe(a6)
00366a: 6602         bne.b      $366e
00366c: 2040         movea.l    d0, a0
00366e: 4e40         trap       #$0
003670: 0009         .dc.w      $0009
003672: 6000000e     bra.w      $3682
003676: 2001         move.l     d1, d0
003678: 206e8702     movea.l    -$78fe(a6), a0
00367c: 4e90         jsr        (a0)
00367e: 4e40         trap       #$0
003680: 001e640c     ori.b      #$c, (a6)+
003684: 2d41800c     move.l     d1, -$7ff4(a6)
003688: 70ff         moveq      #$ff, d0
00368a: 6004         bra.b      $3690
00368c: 65f6         bcs.b      $3684
00368e: 7000         moveq      #$0, d0
003690: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
003696: 4e5d         unlk       a5
003698: 4e75         rts        
00369a: 4e550000     link.w     a5, #$0
00369e: 2200         move.l     d0, d1
0036a0: 6100001e     bsr.w      $36c0
0036a4: 6100f600     bsr.w      $2ca6
0036a8: 6008         bra.b      $36b2
0036aa: 4e550000     link.w     a5, #$0
0036ae: 4afc         illegal    #$4afc
0036b0: 2200         move.l     d0, d1
0036b2: 4e40         trap       #$0
0036b4: 0006dead     ori.b      #$ad, d6
0036b8: dead003c     add.l      $3c(a5), d7
0036bc: 00014e75     ori.b      #$75, d1
0036c0: 4e75         rts        
