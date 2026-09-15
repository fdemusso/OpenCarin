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
0000a4: 203c00001cae move.l     #$1cae, d0
0000aa: 4ebb0800     jsr        $ac(pc,d0.l)
0000ae: 6076         bra.b      $126
0000b0: 43e80004     lea.l      $4(a0), a1
0000b4: 2d4984b6     move.l     a1, -$7b4a(a6)
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
000126: 207c00001552 movea.l    #$1552, a0
00012c: 4ebb8800     jsr        $12e(pc,a0.l)
000130: 6500011c     bcs.w      $24e
000134: 6120         bsr.b      $156
000136: 4cdf0003     movem.l    (a7)+, d0-d1
00013a: 9bcd         suba.l     a5, a5
00013c: 2f2e84b6     move.l     -$7b4a(a6), -(a7)
000140: 207c0000031e movea.l    #$31e, a0
000146: 4ebb8800     jsr        $148(pc,a0.l)
00014a: 7000         moveq      #$0, d0
00014c: 207c00002182 movea.l    #$2182, a0
000152: 4ebb8800     jsr        $154(pc,a0.l)
000156: 207cffff85a8 movea.l    #$ffff85a8, a0
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
000192: 207c00002152 movea.l    #$2152, a0
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
0001de: 227c00002110 movea.l    #$2110, a1
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
000258: 227cffff812e movea.l    #$ffff812e, a1
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
00027a: 207cffff812e movea.l    #$ffff812e, a0
000280: d1ce         adda.l     a6, a0
000282: 6100ff18     bsr.w      $19c
000286: 4e40         trap       #$0
000288: 00064e40     ori.b      #$40, d6
00028c: 000612d8     ori.b      #$d8, d6
000290: 66fc         bne.b      $28e
000292: 4e75         rts        
000294: 4e550000     link.w     a5, #$0
000298: 48e7c080     movem.l    d0-d1/a0, -(a7)
00029c: 518f         subq.l     #$8, a7
00029e: 70ff         moveq      #$ff, d0
0002a0: 2f400004     move.l     d0, $4(a7)
0002a4: 48780400     pea.l      $400.w
0002a8: 48780003     pea.l      $3.w
0002ac: 7223         moveq      #$23, d1
0002ae: 41fa0212     lea.l      $4c2(pc), a0
0002b2: 2008         move.l     a0, d0
0002b4: 61000668     bsr.w      $91e
0002b8: 508f         addq.l     #$8, a7
0002ba: 2d4084bc     move.l     d0, -$7b44(a6)
0002be: 72ff         moveq      #$ff, d1
0002c0: b280         cmp.l      d0, d1
0002c2: 671a         beq.b      $2de
0002c4: 223c00002427 move.l     #$2427, d1
0002ca: 202e84bc     move.l     -$7b44(a6), d0
0002ce: 61001c10     bsr.w      $1ee0
0002d2: 2e80         move.l     d0, (a7)
0002d4: 72ff         moveq      #$ff, d1
0002d6: b280         cmp.l      d0, d1
0002d8: 6704         beq.b      $2de
0002da: 42af0004     clr.l      $4(a7)
0002de: 202f0004     move.l     $4(a7), d0
0002e2: 508f         addq.l     #$8, a7
0002e4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0002ea: 4e5d         unlk       a5
0002ec: 4e75         rts        
0002ee: 4e550000     link.w     a5, #$0
0002f2: 48e78000     movem.l    d0, -(a7)
0002f6: 70ff         moveq      #$ff, d0
0002f8: b0ae84bc     cmp.l      -$7b44(a6), d0
0002fc: 670e         beq.b      $30c
0002fe: 202e84bc     move.l     -$7b44(a6), d0
000302: 610014c6     bsr.w      $17ca
000306: 70ff         moveq      #$ff, d0
000308: 2d4084bc     move.l     d0, -$7b44(a6)
00030c: 4e5d         unlk       a5
00030e: 4e75         rts        
000310: 4e550000     link.w     a5, #$0
000314: 48e7c080     movem.l    d0-d1/a0, -(a7)
000318: 5d8f         subq.l     #$6, a7
00031a: 202f0006     move.l     $6(a7), d0
00031e: 5880         addq.l     #$4, d0
000320: 2e80         move.l     d0, (a7)
000322: 604c         bra.b      $370
000324: 486f0005     pea.l      $5(a7)
000328: 41fa01b3     lea.l      $4dd(pc), a0
00032c: 2208         move.l     a0, d1
00032e: 202f0004     move.l     $4(a7), d0
000332: 5480         addq.l     #$2, d0
000334: 61001454     bsr.w      $178a
000338: 588f         addq.l     #$4, a7
00033a: 6018         bra.b      $354
00033c: 223c00002428 move.l     #$2428, d1
000342: 6006         bra.b      $34a
000344: 223c00002429 move.l     #$2429, d1
00034a: 202e84c0     move.l     -$7b40(a6), d0
00034e: 61001e50     bsr.w      $21a0
000352: 6026         bra.b      $37a
000354: 41ef0005     lea.l      $5(a7), a0
000358: 2008         move.l     a0, d0
00035a: 610015c0     bsr.w      $191c
00035e: 0c8000000001 cmpi.l     #$1, d0
000364: 67d6         beq.b      $33c
000366: 0c8000000002 cmpi.l     #$2, d0
00036c: 67d6         beq.b      $344
00036e: 600a         bra.b      $37a
000370: 2057         movea.l    (a7), a0
000372: 3010         move.w     (a0), d0
000374: 0c400002     cmpi.w     #$2, d0
000378: 67aa         beq.b      $324
00037a: 5c8f         addq.l     #$6, a7
00037c: 4ced0100fffc movem.l    -$4(a5), a0
000382: 4e5d         unlk       a5
000384: 4e75         rts        
000386: 4e550000     link.w     a5, #$0
00038a: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
00038e: 4feffff0     lea.l      -$10(a7), a7
000392: 48780005     pea.l      $5.w
000396: 486f0004     pea.l      $4(a7)
00039a: 41ef0014     lea.l      $14(a7), a0
00039e: 2208         move.l     a0, d1
0003a0: 202e84bc     move.l     -$7b44(a6), d0
0003a4: 61000262     bsr.w      $608
0003a8: 508f         addq.l     #$8, a7
0003aa: 72ff         moveq      #$ff, d1
0003ac: b280         cmp.l      d0, d1
0003ae: 6752         beq.b      $402
0003b0: 42af0004     clr.l      $4(a7)
0003b4: 6004         bra.b      $3ba
0003b6: 52af0004     addq.l     #$1, $4(a7)
0003ba: 7001         moveq      #$1, d0
0003bc: b0af0004     cmp.l      $4(a7), d0
0003c0: 6f18         ble.b      $3da
0003c2: 202f0004     move.l     $4(a7), d0
0003c6: 41ee84c4     lea.l      -$7b3c(a6), a0
0003ca: 226f000c     movea.l    $c(a7), a1
0003ce: 7200         moveq      #$0, d1
0003d0: 32290002     move.w     $2(a1), d1
0003d4: b2b00e00     cmp.l      (a0, d0.l * 8), d1
0003d8: 66dc         bne.b      $3b6
0003da: 7001         moveq      #$1, d0
0003dc: b0af0004     cmp.l      $4(a7), d0
0003e0: 6f18         ble.b      $3fa
0003e2: 2217         move.l     (a7), d1
0003e4: 202f000c     move.l     $c(a7), d0
0003e8: 242f0004     move.l     $4(a7), d2
0003ec: 41ee84c4     lea.l      -$7b3c(a6), a0
0003f0: 20702e04     movea.l    $4(a0, d2.l), a0
0003f4: 4e90         jsr        (a0)
0003f6: 72ff         moveq      #$ff, d1
0003f8: b280         cmp.l      d0, d1
0003fa: 202f000c     move.l     $c(a7), d0
0003fe: 6100141a     bsr.w      $181a
000402: 223c00002427 move.l     #$2427, d1
000408: 202e84bc     move.l     -$7b44(a6), d0
00040c: 61001ad2     bsr.w      $1ee0
000410: 2f400008     move.l     d0, $8(a7)
000414: 72ff         moveq      #$ff, d1
000416: b280         cmp.l      d0, d1
000418: 4fef0010     lea.l      $10(a7), a7
00041c: 4ced0306fff0 movem.l    -$10(a5), d1-d2/a0-a1
000422: 4e5d         unlk       a5
000424: 4e75         rts        
000426: 4e550000     link.w     a5, #$0
00042a: 48e78000     movem.l    d0, -(a7)
00042e: 2017         move.l     (a7), d0
000430: 61000302     bsr.w      $734
000434: 4e5d         unlk       a5
000436: 4e75         rts        
000438: 4e550000     link.w     a5, #$0
00043c: 48e78000     movem.l    d0, -(a7)
000440: 600e         bra.b      $450
000442: 1d7c000184ba move.b     #$1, -$7b46(a6)
000448: 6018         bra.b      $462
00044a: 6100ff3a     bsr.w      $386
00044e: 6012         bra.b      $462
000450: 2017         move.l     (a7), d0
000452: 0c8000002426 cmpi.l     #$2426, d0
000458: 67e8         beq.b      $442
00045a: 0c8000002427 cmpi.l     #$2427, d0
000460: 67e8         beq.b      $44a
000462: 4e5d         unlk       a5
000464: 4e75         rts        
000466: 4e550000     link.w     a5, #$0
00046a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00046e: 41fb0170ffffffb6 lea.l      $ffffffb6(a16, invalid.w), a0
000476: 2008         move.l     a0, d0
000478: 61000352     bsr.w      $7cc
00047c: 61001de0     bsr.w      $225e
000480: 61000cf6     bsr.w      $1178
000484: 2d4084c0     move.l     d0, -$7b40(a6)
000488: 6100fe0a     bsr.w      $294
00048c: 72ff         moveq      #$ff, d1
00048e: b280         cmp.l      d0, d1
000490: 671c         beq.b      $4ae
000492: 223c0000242a move.l     #$242a, d1
000498: 202e84c0     move.l     -$7b40(a6), d0
00049c: 61001d02     bsr.w      $21a0
0004a0: 6100034c     bsr.w      $7ee
0004a4: 6100ff92     bsr.w      $438
0004a8: 4a2e84ba     tst.b      -$7b46(a6)
0004ac: 67f2         beq.b      $4a0
0004ae: 6100fe3e     bsr.w      $2ee
0004b2: 7000         moveq      #$0, d0
0004b4: 61001e20     bsr.w      $22d6
0004b8: 4ced0100fffc movem.l    -$4(a5), a0
0004be: 4e5d         unlk       a5
0004c0: 4e75         rts        
0004c2: 2f63302f     move.l     -(a3), $302f(a7)
0004c6: 5f313239     subq.b     #$7, $39(a1, d3.w)
0004ca: 5f2f7069     subq.b     #$7, $7069(a7)
0004ce: 7065         moveq      #$65, d0
0004d0: 2f7573775f6d65737361 move.l     ([$5f6d6573, a5]), $7361(a7)
0004da: 6765         beq.b      $541
0004dc: 00257300     ori.b      #$0, -(a5)
0004e0: 4e550000     link.w     a5, #$0
0004e4: 48e7c000     movem.l    d0-d1, -(a7)
0004e8: 4feffff4     lea.l      -$c(a7), a7
0004ec: 70fe         moveq      #$fe, d0
0004ee: b0ae84cc     cmp.l      -$7b34(a6), d0
0004f2: 661c         bne.b      $510
0004f4: 7200         moveq      #$0, d1
0004f6: 203c00007fb1 move.l     #$7fb1, d0
0004fc: 61001114     bsr.w      $1612
000500: 2d4084cc     move.l     d0, -$7b34(a6)
000504: 4aae84cc     tst.l      -$7b34(a6)
000508: 6c06         bge.b      $510
00050a: 7001         moveq      #$1, d0
00050c: 2d4084cc     move.l     d0, -$7b34(a6)
000510: 4aae84cc     tst.l      -$7b34(a6)
000514: 672a         beq.b      $540
000516: 6006         bra.b      $51e
000518: 7001         moveq      #$1, d0
00051a: 61001a96     bsr.w      $1fb2
00051e: 202f0020     move.l     $20(a7), d0
000522: e188         lsl.l      #$8, d0
000524: 4c2e000084cc mulu.l     -$7b34(a6), d0
00052a: 08c0001f     bset.b     #$1f, d0
00052e: 2200         move.l     d0, d1
000530: 7006         moveq      #$6, d0
000532: 610003d8     bsr.w      $90c
000536: 2f400008     move.l     d0, $8(a7)
00053a: 72ff         moveq      #$ff, d1
00053c: b280         cmp.l      d0, d1
00053e: 67d8         beq.b      $518
000540: 2f2f001c     move.l     $1c(a7), -(a7)
000544: 222f0014     move.l     $14(a7), d1
000548: 202f0010     move.l     $10(a7), d0
00054c: 61001260     bsr.w      $17ae
000550: 588f         addq.l     #$4, a7
000552: 2e80         move.l     d0, (a7)
000554: 4aae84cc     tst.l      -$7b34(a6)
000558: 6710         beq.b      $56a
00055a: 202f0008     move.l     $8(a7), d0
00055e: 610003a0     bsr.w      $900
000562: 2f400004     move.l     d0, $4(a7)
000566: 72ff         moveq      #$ff, d1
000568: b280         cmp.l      d0, d1
00056a: 2017         move.l     (a7), d0
00056c: 4fef000c     lea.l      $c(a7), a7
000570: 4e5d         unlk       a5
000572: 4e75         rts        
000574: 4e550000     link.w     a5, #$0
000578: 48e7c000     movem.l    d0-d1, -(a7)
00057c: 4feffff4     lea.l      -$c(a7), a7
000580: 70fe         moveq      #$fe, d0
000582: b0ae84d0     cmp.l      -$7b30(a6), d0
000586: 661c         bne.b      $5a4
000588: 7200         moveq      #$0, d1
00058a: 203c00007fb1 move.l     #$7fb1, d0
000590: 61001080     bsr.w      $1612
000594: 2d4084d0     move.l     d0, -$7b30(a6)
000598: 4aae84d0     tst.l      -$7b30(a6)
00059c: 6c06         bge.b      $5a4
00059e: 7001         moveq      #$1, d0
0005a0: 2d4084d0     move.l     d0, -$7b30(a6)
0005a4: 4aae84d0     tst.l      -$7b30(a6)
0005a8: 672a         beq.b      $5d4
0005aa: 6006         bra.b      $5b2
0005ac: 7001         moveq      #$1, d0
0005ae: 61001a02     bsr.w      $1fb2
0005b2: 202f0020     move.l     $20(a7), d0
0005b6: e188         lsl.l      #$8, d0
0005b8: 4c2e000084d0 mulu.l     -$7b30(a6), d0
0005be: 08c0001f     bset.b     #$1f, d0
0005c2: 2200         move.l     d0, d1
0005c4: 7006         moveq      #$6, d0
0005c6: 61000344     bsr.w      $90c
0005ca: 2f400008     move.l     d0, $8(a7)
0005ce: 72ff         moveq      #$ff, d1
0005d0: b280         cmp.l      d0, d1
0005d2: 67d8         beq.b      $5ac
0005d4: 2f2f001c     move.l     $1c(a7), -(a7)
0005d8: 222f0014     move.l     $14(a7), d1
0005dc: 202f0010     move.l     $10(a7), d0
0005e0: 610011d4     bsr.w      $17b6
0005e4: 588f         addq.l     #$4, a7
0005e6: 2e80         move.l     d0, (a7)
0005e8: 4aae84d0     tst.l      -$7b30(a6)
0005ec: 6710         beq.b      $5fe
0005ee: 202f0008     move.l     $8(a7), d0
0005f2: 6100030c     bsr.w      $900
0005f6: 2f400004     move.l     d0, $4(a7)
0005fa: 72ff         moveq      #$ff, d1
0005fc: b280         cmp.l      d0, d1
0005fe: 2017         move.l     (a7), d0
000600: 4fef000c     lea.l      $c(a7), a7
000604: 4e5d         unlk       a5
000606: 4e75         rts        
000608: 4e550000     link.w     a5, #$0
00060c: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000610: 5d8f         subq.l     #$6, a7
000612: 70ff         moveq      #$ff, d0
000614: 2f400002     move.l     d0, $2(a7)
000618: 2f2f0022     move.l     $22(a7), -(a7)
00061c: 48780002     pea.l      $2.w
000620: 41ef0008     lea.l      $8(a7), a0
000624: 2208         move.l     a0, d1
000626: 202f000e     move.l     $e(a7), d0
00062a: 6100feb4     bsr.w      $4e0
00062e: 508f         addq.l     #$8, a7
000630: 7202         moveq      #$2, d1
000632: b280         cmp.l      d0, d1
000634: 6600008c     bne.w      $6c2
000638: 3057         movea.w    (a7), a0
00063a: 226f001e     movea.l    $1e(a7), a1
00063e: 2288         move.l     a0, (a1)
000640: 206f001e     movea.l    $1e(a7), a0
000644: 2010         move.l     (a0), d0
000646: 610011c6     bsr.w      $180e
00064a: 206f000a     movea.l    $a(a7), a0
00064e: 2080         move.l     d0, (a0)
000650: 6740         beq.b      $692
000652: 2f2f0022     move.l     $22(a7), -(a7)
000656: 206f0022     movea.l    $22(a7), a0
00065a: 2f10         move.l     (a0), -(a7)
00065c: 206f0012     movea.l    $12(a7), a0
000660: 2210         move.l     (a0), d1
000662: 202f000e     move.l     $e(a7), d0
000666: 6100fe78     bsr.w      $4e0
00066a: 508f         addq.l     #$8, a7
00066c: 206f001e     movea.l    $1e(a7), a0
000670: b090         cmp.l      (a0), d0
000672: 6606         bne.b      $67a
000674: 42af0002     clr.l      $2(a7)
000678: 6048         bra.b      $6c2
00067a: 206f001e     movea.l    $1e(a7), a0
00067e: 4290         clr.l      (a0)
000680: 206f000a     movea.l    $a(a7), a0
000684: 2010         move.l     (a0), d0
000686: 61001192     bsr.w      $181a
00068a: 206f000a     movea.l    $a(a7), a0
00068e: 4290         clr.l      (a0)
000690: 6030         bra.b      $6c2
000692: 558f         subq.l     #$2, a7
000694: 6018         bra.b      $6ae
000696: 2f2f0024     move.l     $24(a7), -(a7)
00069a: 48780001     pea.l      $1.w
00069e: 41ef0009     lea.l      $9(a7), a0
0006a2: 2208         move.l     a0, d1
0006a4: 202f0010     move.l     $10(a7), d0
0006a8: 6100fe36     bsr.w      $4e0
0006ac: 508f         addq.l     #$8, a7
0006ae: 206f0020     movea.l    $20(a7), a0
0006b2: 2010         move.l     (a0), d0
0006b4: 5390         subq.l     #$1, (a0)
0006b6: 4a80         tst.l      d0
0006b8: 66dc         bne.b      $696
0006ba: 206f0020     movea.l    $20(a7), a0
0006be: 4290         clr.l      (a0)
0006c0: 548f         addq.l     #$2, a7
0006c2: 202f0002     move.l     $2(a7), d0
0006c6: 5c8f         addq.l     #$6, a7
0006c8: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0006ce: 4e5d         unlk       a5
0006d0: 4e75         rts        
0006d2: 4e550000     link.w     a5, #$0
0006d6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0006da: 5d8f         subq.l     #$6, a7
0006dc: 70ff         moveq      #$ff, d0
0006de: 2f400002     move.l     d0, $2(a7)
0006e2: 3eaf001c     move.w     $1c(a7), (a7)
0006e6: 2f2f001e     move.l     $1e(a7), -(a7)
0006ea: 48780002     pea.l      $2.w
0006ee: 41ef0008     lea.l      $8(a7), a0
0006f2: 2208         move.l     a0, d1
0006f4: 202f000e     move.l     $e(a7), d0
0006f8: 6100fe7a     bsr.w      $574
0006fc: 508f         addq.l     #$8, a7
0006fe: 7202         moveq      #$2, d1
000700: b280         cmp.l      d0, d1
000702: 6620         bne.b      $724
000704: 2f2f001e     move.l     $1e(a7), -(a7)
000708: 2f2f001e     move.l     $1e(a7), -(a7)
00070c: 222f0012     move.l     $12(a7), d1
000710: 202f000e     move.l     $e(a7), d0
000714: 6100fe5e     bsr.w      $574
000718: 508f         addq.l     #$8, a7
00071a: b0af001a     cmp.l      $1a(a7), d0
00071e: 6604         bne.b      $724
000720: 42af0002     clr.l      $2(a7)
000724: 202f0002     move.l     $2(a7), d0
000728: 5c8f         addq.l     #$6, a7
00072a: 4ced0100fffc movem.l    -$4(a5), a0
000730: 4e5d         unlk       a5
000732: 4e75         rts        
000734: 4e550000     link.w     a5, #$0
000738: 48e78080     movem.l    d0/a0, -(a7)
00073c: 202e84d8     move.l     -$7b28(a6), d0
000740: 52ae84d8     addq.l     #$1, -$7b28(a6)
000744: 41ee801e     lea.l      -$7fe2(a6), a0
000748: 21970c00     move.l     (a7), (a0, d0.l * 4)
00074c: 703f         moveq      #$3f, d0
00074e: b0ae84d8     cmp.l      -$7b28(a6), d0
000752: 6c04         bge.b      $758
000754: 42ae84d8     clr.l      -$7b28(a6)
000758: 4ced0100fffc movem.l    -$4(a5), a0
00075e: 4e5d         unlk       a5
000760: 4e75         rts        
000762: 4e550000     link.w     a5, #$0
000766: 48e78080     movem.l    d0/a0, -(a7)
00076a: 598f         subq.l     #$4, a7
00076c: 202e84d4     move.l     -$7b2c(a6), d0
000770: b0ae84d8     cmp.l      -$7b28(a6), d0
000774: 6604         bne.b      $77a
000776: 70ff         moveq      #$ff, d0
000778: 601e         bra.b      $798
00077a: 202e84d4     move.l     -$7b2c(a6), d0
00077e: 52ae84d4     addq.l     #$1, -$7b2c(a6)
000782: 41ee801e     lea.l      -$7fe2(a6), a0
000786: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
00078a: 703f         moveq      #$3f, d0
00078c: b0ae84d4     cmp.l      -$7b2c(a6), d0
000790: 6c04         bge.b      $796
000792: 42ae84d4     clr.l      -$7b2c(a6)
000796: 2017         move.l     (a7), d0
000798: 588f         addq.l     #$4, a7
00079a: 4ced0100fffc movem.l    -$4(a5), a0
0007a0: 4e5d         unlk       a5
0007a2: 4e75         rts        
0007a4: 4e550000     link.w     a5, #$0
0007a8: 48e78000     movem.l    d0, -(a7)
0007ac: 4e5d         unlk       a5
0007ae: 4e75         rts        
0007b0: 4e550000     link.w     a5, #$0
0007b4: 48e78000     movem.l    d0, -(a7)
0007b8: 202e84d4     move.l     -$7b2c(a6), d0
0007bc: b0ae84d8     cmp.l      -$7b28(a6), d0
0007c0: 6604         bne.b      $7c6
0007c2: 7001         moveq      #$1, d0
0007c4: 6002         bra.b      $7c8
0007c6: 7000         moveq      #$0, d0
0007c8: 4e5d         unlk       a5
0007ca: 4e75         rts        
0007cc: 4e550000     link.w     a5, #$0
0007d0: 48e78000     movem.l    d0, -(a7)
0007d4: 2017         move.l     (a7), d0
0007d6: 610007f4     bsr.w      $fcc
0007da: 7001         moveq      #$1, d0
0007dc: 4e5d         unlk       a5
0007de: 4e75         rts        
0007e0: 4e550000     link.w     a5, #$0
0007e4: 48e78000     movem.l    d0, -(a7)
0007e8: 7001         moveq      #$1, d0
0007ea: 4e5d         unlk       a5
0007ec: 4e75         rts        
0007ee: 4e550000     link.w     a5, #$0
0007f2: 48e78800     movem.l    d0/d4, -(a7)
0007f6: 61000026     bsr.w      $81e
0007fa: 6100ff66     bsr.w      $762
0007fe: 2800         move.l     d0, d4
000800: 6c0c         bge.b      $80e
000802: 7000         moveq      #$0, d0
000804: 610017ac     bsr.w      $1fb2
000808: 6100ff58     bsr.w      $762
00080c: 2800         move.l     d0, d4
00080e: 6100003a     bsr.w      $84a
000812: 2004         move.l     d4, d0
000814: 4ced0010fffc movem.l    -$4(a5), d4
00081a: 4e5d         unlk       a5
00081c: 4e75         rts        
00081e: 48e74000     movem.l    d1, -(a7)
000822: 203c00000000 move.l     #$0, d0
000828: 223c00000001 move.l     #$1, d1
00082e: 4e40         trap       #$0
000830: 0057640c     ori.w      #$640c, (a7)
000834: 2d41800c     move.l     d1, -$7ff4(a6)
000838: 70ff         moveq      #$ff, d0
00083a: 4cdf0002     movem.l    (a7)+, d1
00083e: 4e75         rts        
000840: 4280         clr.l      d0
000842: 3001         move.w     d1, d0
000844: 4cdf0002     movem.l    (a7)+, d1
000848: 4e75         rts        
00084a: 48e74000     movem.l    d1, -(a7)
00084e: 203c00000000 move.l     #$0, d0
000854: 223c00000000 move.l     #$0, d1
00085a: 4e40         trap       #$0
00085c: 005764e0     ori.w      #$64e0, (a7)
000860: 60d2         bra.b      $834
000862: 48e740e0     movem.l    d1/a0-a2, -(a7)
000866: 207900000000 movea.l    $0.l, a0
00086c: 2268004c     movea.l    $4c(a0), a1
000870: 4280         clr.l      d0
000872: 10290370     move.b     $370(a1), d0
000876: 4cdf0702     movem.l    (a7)+, d1/a0-a2
00087a: 4e75         rts        
00087c: 48e740e0     movem.l    d1/a0-a2, -(a7)
000880: 207900000000 movea.l    $0.l, a0
000886: 2268004c     movea.l    $4c(a0), a1
00088a: 81a90374     or.l       d0, $374(a1)
00088e: 4cdf0702     movem.l    (a7)+, d1/a0-a2
000892: 4e75         rts        
000894: 48e740e0     movem.l    d1/a0-a2, -(a7)
000898: 207900000000 movea.l    $0.l, a0
00089e: 2268004c     movea.l    $4c(a0), a1
0008a2: 4480         neg.l      d0
0008a4: c1a90374     and.l      d0, $374(a1)
0008a8: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0008ac: 4e75         rts        
0008ae: 640c         bcc.b      $8bc
0008b0: 3d41800c     move.w     d1, -$7ff4(a6)
0008b4: 70ff         moveq      #$ff, d0
0008b6: 6004         bra.b      $8bc
0008b8: 65f6         bcs.b      $8b0
0008ba: 7000         moveq      #$0, d0
0008bc: 4cdf001e     movem.l    (a7)+, d1-d4
0008c0: 4e75         rts        
0008c2: 48e77800     movem.l    d1-d4, -(a7)
0008c6: 282f0014     move.l     $14(a7), d4
0008ca: 2601         move.l     d1, d3
0008cc: 2400         move.l     d0, d2
0008ce: 7203         moveq      #$3, d1
0008d0: 7000         moveq      #$0, d0
0008d2: 4e40         trap       #$0
0008d4: 005660d6     ori.w      #$60d6, (a6)
0008d8: 48e77800     movem.l    d1-d4, -(a7)
0008dc: 282f0014     move.l     $14(a7), d4
0008e0: 2601         move.l     d1, d3
0008e2: 2400         move.l     d0, d2
0008e4: 7204         moveq      #$4, d1
0008e6: 7000         moveq      #$0, d0
0008e8: 4e40         trap       #$0
0008ea: 005660c0     ori.w      #$60c0, (a6)
0008ee: 48e77800     movem.l    d1-d4, -(a7)
0008f2: 2601         move.l     d1, d3
0008f4: 2400         move.l     d0, d2
0008f6: 7202         moveq      #$2, d1
0008f8: 7000         moveq      #$0, d0
0008fa: 4e40         trap       #$0
0008fc: 005660ae     ori.w      #$60ae, (a6)
000900: 48e77800     movem.l    d1-d4, -(a7)
000904: 7200         moveq      #$0, d1
000906: 4e40         trap       #$0
000908: 005660ac     ori.w      #$60ac, (a6)
00090c: 48e77800     movem.l    d1-d4, -(a7)
000910: 2601         move.l     d1, d3
000912: 2400         move.l     d0, d2
000914: 7201         moveq      #$1, d1
000916: 7000         moveq      #$0, d0
000918: 4e40         trap       #$0
00091a: 00566090     ori.w      #$6090, (a6)
00091e: 4e550000     link.w     a5, #$0
000922: 48e7c080     movem.l    d0-d1/a0, -(a7)
000926: 2f2f0018     move.l     $18(a7), -(a7)
00092a: 306f001a     movea.w    $1a(a7), a0
00092e: 2f08         move.l     a0, -(a7)
000930: 222f000c     move.l     $c(a7), d1
000934: 202f0008     move.l     $8(a7), d0
000938: 610c         bsr.b      $946
00093a: 508f         addq.l     #$8, a7
00093c: 4ced0100fffc movem.l    -$4(a5), a0
000942: 4e5d         unlk       a5
000944: 4e75         rts        
000946: 4e550000     link.w     a5, #$0
00094a: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
00094e: 4fefffda     lea.l      -$26(a7), a7
000952: 41ef0008     lea.l      $8(a7), a0
000956: 2208         move.l     a0, d1
000958: 202f0026     move.l     $26(a7), d0
00095c: 61000876     bsr.w      $11d4
000960: 2440         movea.l    d0, a2
000962: 4a80         tst.l      d0
000964: 67000112     beq.w      $a78
000968: 41ef0008     lea.l      $8(a7), a0
00096c: 2008         move.l     a0, d0
00096e: 610008aa     bsr.w      $121a
000972: 2f400004     move.l     d0, $4(a7)
000976: 6d000100     blt.w      $a78
00097a: 41ef0022     lea.l      $22(a7), a0
00097e: 2208         move.l     a0, d1
000980: 200a         move.l     a2, d0
000982: 6100091c     bsr.w      $12a0
000986: 2440         movea.l    d0, a2
000988: 4a80         tst.l      d0
00098a: 670000ec     beq.w      $a78
00098e: 202f0004     move.l     $4(a7), d0
000992: e588         lsl.l      #$2, d0
000994: 41ee850e     lea.l      -$7af2(a6), a0
000998: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
00099e: 6600009a     bne.w      $a3a
0009a2: 7203         moveq      #$3, d1
0009a4: 41ef0008     lea.l      $8(a7), a0
0009a8: 2008         move.l     a0, d0
0009aa: 61000dee     bsr.w      $179a
0009ae: 222f0004     move.l     $4(a7), d1
0009b2: e589         lsl.l      #$2, d1
0009b4: 41ee850e     lea.l      -$7af2(a6), a0
0009b8: 31801800     move.w     d0, (a0, d1.l)
0009bc: 6d0000d4     blt.w      $a92
0009c0: 202f0004     move.l     $4(a7), d0
0009c4: e588         lsl.l      #$2, d0
0009c6: 41ee850e     lea.l      -$7af2(a6), a0
0009ca: 2400         move.l     d0, d2
0009cc: 42a7         clr.l      -(a7)
0009ce: 202f0008     move.l     $8(a7), d0
0009d2: e588         lsl.l      #$2, d0
0009d4: 43ee850e     lea.l      -$7af2(a6), a1
0009d8: 32710800     movea.w    (a1, d0.l), a1
0009dc: 2209         move.l     a1, d1
0009de: 203c0000ff0e move.l     #$ff0e, d0
0009e4: 61000aaa     bsr.w      $1490
0009e8: 588f         addq.l     #$4, a7
0009ea: 2240         movea.l    d0, a1
0009ec: 7000         moveq      #$0, d0
0009ee: 1011         move.b     (a1), d0
0009f0: 31802802     move.w     d0, $2(a0, d2.l)
0009f4: 202f0004     move.l     $4(a7), d0
0009f8: e588         lsl.l      #$2, d0
0009fa: 41ee850e     lea.l      -$7af2(a6), a0
0009fe: 4a700800     tst.w      (a0, d0.l)
000a02: 6d36         blt.b      $a3a
000a04: 202f0004     move.l     $4(a7), d0
000a08: e588         lsl.l      #$2, d0
000a0a: 41ee850e     lea.l      -$7af2(a6), a0
000a0e: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
000a14: 6c24         bge.b      $a3a
000a16: 202f0004     move.l     $4(a7), d0
000a1a: e588         lsl.l      #$2, d0
000a1c: 41ee850e     lea.l      -$7af2(a6), a0
000a20: 30700800     movea.w    (a0, d0.l), a0
000a24: 2008         move.l     a0, d0
000a26: 61000da2     bsr.w      $17ca
000a2a: 202f0004     move.l     $4(a7), d0
000a2e: e588         lsl.l      #$2, d0
000a30: 41ee850e     lea.l      -$7af2(a6), a0
000a34: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
000a3a: 202f0004     move.l     $4(a7), d0
000a3e: e588         lsl.l      #$2, d0
000a40: 41ee850e     lea.l      -$7af2(a6), a0
000a44: 30300802     move.w     $2(a0, d0.l), d0
000a48: 48c0         ext.l      d0
000a4a: b0af0022     cmp.l      $22(a7), d0
000a4e: 6628         bne.b      $a78
000a50: 0c12005f     cmpi.b     #$5f, (a2)
000a54: 6610         bne.b      $a66
000a56: 6004         bra.b      $a5c
000a58: 4a12         tst.b      (a2)
000a5a: 6736         beq.b      $a92
000a5c: 528a         addq.l     #$1, a2
000a5e: 0c12005f     cmpi.b     #$5f, (a2)
000a62: 66f4         bne.b      $a58
000a64: 528a         addq.l     #$1, a2
000a66: 2f2f0052     move.l     $52(a7), -(a7)
000a6a: 306f0054     movea.w    $54(a7), a0
000a6e: 2f08         move.l     a0, -(a7)
000a70: 222f0032     move.l     $32(a7), d1
000a74: 200a         move.l     a2, d0
000a76: 6012         bra.b      $a8a
000a78: 2f2f0052     move.l     $52(a7), -(a7)
000a7c: 306f0054     movea.w    $54(a7), a0
000a80: 2f08         move.l     a0, -(a7)
000a82: 222f0032     move.l     $32(a7), d1
000a86: 202f002e     move.l     $2e(a7), d0
000a8a: 61000d06     bsr.w      $1792
000a8e: 508f         addq.l     #$8, a7
000a90: 6002         bra.b      $a94
000a92: 70ff         moveq      #$ff, d0
000a94: 4fef0026     lea.l      $26(a7), a7
000a98: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
000a9e: 4e5d         unlk       a5
000aa0: 4e75         rts        
000aa2: 4e550000     link.w     a5, #$0
000aa6: 48e7c080     movem.l    d0-d1/a0, -(a7)
000aaa: 7002         moveq      #$2, d0
000aac: b0ae84dc     cmp.l      -$7b24(a6), d0
000ab0: 6c0c         bge.b      $abe
000ab2: 2217         move.l     (a7), d1
000ab4: 41fa052c     lea.l      $fe2(pc), a0
000ab8: 2008         move.l     a0, d0
000aba: 61000c96     bsr.w      $1752
000abe: 0c9700000106 cmpi.l     #$106, (a7)
000ac4: 6608         bne.b      $ace
000ac6: 7001         moveq      #$1, d0
000ac8: 2d408126     move.l     d0, -$7eda(a6)
000acc: 600e         bra.b      $adc
000ace: 4aae812a     tst.l      -$7ed6(a6)
000ad2: 6708         beq.b      $adc
000ad4: 2017         move.l     (a7), d0
000ad6: 206e812a     movea.l    -$7ed6(a6), a0
000ada: 4e90         jsr        (a0)
000adc: 7000         moveq      #$0, d0
000ade: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000ae4: 4e5d         unlk       a5
000ae6: 4e75         rts        
000ae8: 4e550000     link.w     a5, #$0
000aec: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
000af0: 4fefff58     lea.l      -$a8(a7), a7
000af4: 6010         bra.b      $b06
000af6: 08ef000600de bset.b     #$6, $de(a7)
000afc: 601c         bra.b      $b1a
000afe: 08ef000700de bset.b     #$7, $de(a7)
000b04: 6014         bra.b      $b1a
000b06: 202f00e0     move.l     $e0(a7), d0
000b0a: 0c80a95acd81 cmpi.l     #$a95acd81, d0
000b10: 67e4         beq.b      $af6
000b12: 0c80a95acd82 cmpi.l     #$a95acd82, d0
000b18: 67e4         beq.b      $afe
000b1a: 41ef0094     lea.l      $94(a7), a0
000b1e: 2208         move.l     a0, d1
000b20: 202f00ac     move.l     $ac(a7), d0
000b24: 610006ae     bsr.w      $11d4
000b28: 2f400028     move.l     d0, $28(a7)
000b2c: 6700015c     beq.w      $c8a
000b30: 206f0028     movea.l    $28(a7), a0
000b34: 0c10005f     cmpi.b     #$5f, (a0)
000b38: 66000150     bne.w      $c8a
000b3c: 2f6f002800ac move.l     $28(a7), $ac(a7)
000b42: 2d6f00ac84f8 move.l     $ac(a7), -$7b08(a6)
000b48: 41ef0094     lea.l      $94(a7), a0
000b4c: 2d4884ec     move.l     a0, -$7b14(a6)
000b50: 41ef0094     lea.l      $94(a7), a0
000b54: 2008         move.l     a0, d0
000b56: 610006c2     bsr.w      $121a
000b5a: 3f40002c     move.w     d0, $2c(a7)
000b5e: 6c0c         bge.b      $b6c
000b60: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
000b68: 60000242     bra.w      $dac
000b6c: 422f0052     clr.b      $52(a7)
000b70: 41ef0046     lea.l      $46(a7), a0
000b74: 2208         move.l     a0, d1
000b76: 202f00ac     move.l     $ac(a7), d0
000b7a: 61000724     bsr.w      $12a0
000b7e: 2f400028     move.l     d0, $28(a7)
000b82: 67000106     beq.w      $c8a
000b86: 1f6f00490051 move.b     $49(a7), $51(a7)
000b8c: 2f6f002800ac move.l     $28(a7), $ac(a7)
000b92: 302f002c     move.w     $2c(a7), d0
000b96: 48c0         ext.l      d0
000b98: e588         lsl.l      #$2, d0
000b9a: 41ee850e     lea.l      -$7af2(a6), a0
000b9e: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
000ba4: 660000b6     bne.w      $c5c
000ba8: 486f0094     pea.l      $94(a7)
000bac: 41fa0464     lea.l      $1012(pc), a0
000bb0: 2208         move.l     a0, d1
000bb2: 41ef0078     lea.l      $78(a7), a0
000bb6: 2008         move.l     a0, d0
000bb8: 61000ba0     bsr.w      $175a
000bbc: 588f         addq.l     #$4, a7
000bbe: 7001         moveq      #$1, d0
000bc0: b0ae84dc     cmp.l      -$7b24(a6), d0
000bc4: 6c10         bge.b      $bd6
000bc6: 41ef0074     lea.l      $74(a7), a0
000bca: 2208         move.l     a0, d1
000bcc: 41fa0447     lea.l      $1015(pc), a0
000bd0: 2008         move.l     a0, d0
000bd2: 61000b7e     bsr.w      $1752
000bd6: 7203         moveq      #$3, d1
000bd8: 41ef0074     lea.l      $74(a7), a0
000bdc: 2008         move.l     a0, d0
000bde: 61000bba     bsr.w      $179a
000be2: 322f002c     move.w     $2c(a7), d1
000be6: 48c1         ext.l      d1
000be8: e589         lsl.l      #$2, d1
000bea: 41ee850e     lea.l      -$7af2(a6), a0
000bee: 31801800     move.w     d0, (a0, d1.l)
000bf2: 6c30         bge.b      $c24
000bf4: 7001         moveq      #$1, d0
000bf6: b0ae84dc     cmp.l      -$7b24(a6), d0
000bfa: 6c0001b0     bge.w      $dac
000bfe: 302f002c     move.w     $2c(a7), d0
000c02: 48c0         ext.l      d0
000c04: e588         lsl.l      #$2, d0
000c06: 41ee850e     lea.l      -$7af2(a6), a0
000c0a: 30700800     movea.w    (a0, d0.l), a0
000c0e: 2f08         move.l     a0, -(a7)
000c10: 222f004a     move.l     $4a(a7), d1
000c14: 41fa0418     lea.l      $102e(pc), a0
000c18: 2008         move.l     a0, d0
000c1a: 61000b36     bsr.w      $1752
000c1e: 588f         addq.l     #$4, a7
000c20: 6000018a     bra.w      $dac
000c24: 302f002c     move.w     $2c(a7), d0
000c28: 48c0         ext.l      d0
000c2a: e588         lsl.l      #$2, d0
000c2c: 41ee850e     lea.l      -$7af2(a6), a0
000c30: 2400         move.l     d0, d2
000c32: 42a7         clr.l      -(a7)
000c34: 302f0030     move.w     $30(a7), d0
000c38: 48c0         ext.l      d0
000c3a: e588         lsl.l      #$2, d0
000c3c: 43ee850e     lea.l      -$7af2(a6), a1
000c40: 32710800     movea.w    (a1, d0.l), a1
000c44: 2209         move.l     a1, d1
000c46: 203c0000ff0e move.l     #$ff0e, d0
000c4c: 61000842     bsr.w      $1490
000c50: 588f         addq.l     #$4, a7
000c52: 2240         movea.l    d0, a1
000c54: 7000         moveq      #$0, d0
000c56: 1011         move.b     (a1), d0
000c58: 31802802     move.w     d0, $2(a0, d2.l)
000c5c: 302f002c     move.w     $2c(a7), d0
000c60: 48c0         ext.l      d0
000c62: e588         lsl.l      #$2, d0
000c64: 41ee850e     lea.l      -$7af2(a6), a0
000c68: 30300802     move.w     $2(a0, d0.l), d0
000c6c: 48c0         ext.l      d0
000c6e: b0af0046     cmp.l      $46(a7), d0
000c72: 6642         bne.b      $cb6
000c74: 7001         moveq      #$1, d0
000c76: b0ae84dc     cmp.l      -$7b24(a6), d0
000c7a: 6c0e         bge.b      $c8a
000c7c: 222f00ac     move.l     $ac(a7), d1
000c80: 41fa03bf     lea.l      $1041(pc), a0
000c84: 2008         move.l     a0, d0
000c86: 61000aca     bsr.w      $1752
000c8a: 306f00de     movea.w    $de(a7), a0
000c8e: 2f08         move.l     a0, -(a7)
000c90: 306f00de     movea.w    $de(a7), a0
000c94: 2f08         move.l     a0, -(a7)
000c96: 2f2f00dc     move.l     $dc(a7), -(a7)
000c9a: 2f2f00dc     move.l     $dc(a7), -(a7)
000c9e: 2f2f00dc     move.l     $dc(a7), -(a7)
000ca2: 222f00c0     move.l     $c0(a7), d1
000ca6: 202f00bc     move.l     $bc(a7), d0
000caa: 61000b3e     bsr.w      $17ea
000cae: 4fef0014     lea.l      $14(a7), a7
000cb2: 6000030a     bra.w      $fbe
000cb6: 4a6e8500     tst.w      -$7b00(a6)
000cba: 6608         bne.b      $cc4
000cbc: 610015a0     bsr.w      $225e
000cc0: 3d408500     move.w     d0, -$7b00(a6)
000cc4: 42ae812a     clr.l      -$7ed6(a6)
000cc8: 306e8500     movea.w    -$7b00(a6), a0
000ccc: 2008         move.l     a0, d0
000cce: 61000776     bsr.w      $1446
000cd2: 2d40812a     move.l     d0, -$7ed6(a6)
000cd6: 7001         moveq      #$1, d0
000cd8: b0ae84dc     cmp.l      -$7b24(a6), d0
000cdc: 6c0e         bge.b      $cec
000cde: 222e812a     move.l     -$7ed6(a6), d1
000ce2: 41fa0384     lea.l      $1068(pc), a0
000ce6: 2008         move.l     a0, d0
000ce8: 61000a68     bsr.w      $1752
000cec: 41fafdb4     lea.l      $aa2(pc), a0
000cf0: 2008         move.l     a0, d0
000cf2: 610002d8     bsr.w      $fcc
000cf6: 306f00de     movea.w    $de(a7), a0
000cfa: 2f08         move.l     a0, -(a7)
000cfc: 42a7         clr.l      -(a7)
000cfe: 42a7         clr.l      -(a7)
000d00: 2f2f00dc     move.l     $dc(a7), -(a7)
000d04: 486e84e0     pea.l      -$7b20(a6)
000d08: 41fa0374     lea.l      $107e(pc), a0
000d0c: 2208         move.l     a0, d1
000d0e: 41fa14f2     lea.l      $2202(pc), a0
000d12: 2008         move.l     a0, d0
000d14: 61000ad4     bsr.w      $17ea
000d18: 4fef0014     lea.l      $14(a7), a7
000d1c: 2f40005e     move.l     d0, $5e(a7)
000d20: 6f00008a     ble.w      $dac
000d24: 2f7c000200000056 move.l     #$20000, $56(a7)
000d2c: 42af005a     clr.l      $5a(a7)
000d30: 2f6f00d40062 move.l     $d4(a7), $62(a7)
000d36: 3f6f00da0066 move.w     $da(a7), $66(a7)
000d3c: 3f6f00de0068 move.w     $de(a7), $68(a7)
000d42: 3f6f002c006c move.w     $2c(a7), $6c(a7)
000d48: 3f6e8500006a move.w     -$7b00(a6), $6a(a7)
000d4e: 7001         moveq      #$1, d0
000d50: 2f40004a     move.l     d0, $4a(a7)
000d54: 42af0042     clr.l      $42(a7)
000d58: 6004         bra.b      $d5e
000d5a: 52af004a     addq.l     #$1, $4a(a7)
000d5e: 202f0042     move.l     $42(a7), d0
000d62: 52af0042     addq.l     #$1, $42(a7)
000d66: e588         lsl.l      #$2, d0
000d68: 206f00cc     movea.l    $cc(a7), a0
000d6c: 4ab00800     tst.l      (a0, d0.l)
000d70: 66e8         bne.b      $d5a
000d72: 52af004a     addq.l     #$1, $4a(a7)
000d76: 42af0042     clr.l      $42(a7)
000d7a: 6004         bra.b      $d80
000d7c: 52af004a     addq.l     #$1, $4a(a7)
000d80: 202f0042     move.l     $42(a7), d0
000d84: 52af0042     addq.l     #$1, $42(a7)
000d88: e588         lsl.l      #$2, d0
000d8a: 206f00d0     movea.l    $d0(a7), a0
000d8e: 4ab00800     tst.l      (a0, d0.l)
000d92: 66e8         bne.b      $d7c
000d94: 52af004a     addq.l     #$1, $4a(a7)
000d98: 202f004a     move.l     $4a(a7), d0
000d9c: e788         lsl.l      #$3, d0
000d9e: 7214         moveq      #$14, d1
000da0: d081         add.l      d1, d0
000da2: 61000a6a     bsr.w      $180e
000da6: 2440         movea.l    d0, a2
000da8: 4a80         tst.l      d0
000daa: 6606         bne.b      $db2
000dac: 70ff         moveq      #$ff, d0
000dae: 6000020e     bra.w      $fbe
000db2: 202f004a     move.l     $4a(a7), d0
000db6: 5280         addq.l     #$1, d0
000db8: 2480         move.l     d0, (a2)
000dba: 257c000000080004 move.l     #$8, $4(a2)
000dc2: 41ef0020     lea.l      $20(a7), a0
000dc6: 25480008     move.l     a0, $8(a2)
000dca: 700c         moveq      #$c, d0
000dcc: d08a         add.l      a2, d0
000dce: 2640         movea.l    d0, a3
000dd0: 41ef004e     lea.l      $4e(a7), a0
000dd4: 27480004     move.l     a0, $4(a3)
000dd8: 26bc00000020 move.l     #$20, (a3)
000dde: 508b         addq.l     #$8, a3
000de0: 276f00ac0004 move.l     $ac(a7), $4(a3)
000de6: 202f00ac     move.l     $ac(a7), d0
000dea: 61000ac2     bsr.w      $18ae
000dee: 5280         addq.l     #$1, d0
000df0: 2680         move.l     d0, (a3)
000df2: 508b         addq.l     #$8, a3
000df4: 42af0042     clr.l      $42(a7)
000df8: 605a         bra.b      $e54
000dfa: 7001         moveq      #$1, d0
000dfc: b0ae84dc     cmp.l      -$7b24(a6), d0
000e00: 6c26         bge.b      $e28
000e02: 222f0042     move.l     $42(a7), d1
000e06: 41fa027d     lea.l      $1085(pc), a0
000e0a: 2008         move.l     a0, d0
000e0c: 61000944     bsr.w      $1752
000e10: 202f0042     move.l     $42(a7), d0
000e14: e588         lsl.l      #$2, d0
000e16: 206f00cc     movea.l    $cc(a7), a0
000e1a: 22300800     move.l     (a0, d0.l), d1
000e1e: 41fa0285     lea.l      $10a5(pc), a0
000e22: 2008         move.l     a0, d0
000e24: 6100092c     bsr.w      $1752
000e28: 202f0042     move.l     $42(a7), d0
000e2c: e588         lsl.l      #$2, d0
000e2e: 206f00cc     movea.l    $cc(a7), a0
000e32: 277008000004 move.l     (a0, d0.l), $4(a3)
000e38: 202f0042     move.l     $42(a7), d0
000e3c: 52af0042     addq.l     #$1, $42(a7)
000e40: e588         lsl.l      #$2, d0
000e42: 206f00cc     movea.l    $cc(a7), a0
000e46: 20300800     move.l     (a0, d0.l), d0
000e4a: 61000a62     bsr.w      $18ae
000e4e: 5280         addq.l     #$1, d0
000e50: 2680         move.l     d0, (a3)
000e52: 508b         addq.l     #$8, a3
000e54: 202f0042     move.l     $42(a7), d0
000e58: e588         lsl.l      #$2, d0
000e5a: 206f00cc     movea.l    $cc(a7), a0
000e5e: 4ab00800     tst.l      (a0, d0.l)
000e62: 6696         bne.b      $dfa
000e64: 41fa024e     lea.l      $10b4(pc), a0
000e68: 27480004     move.l     a0, $4(a3)
000e6c: 26bc00000001 move.l     #$1, (a3)
000e72: 508b         addq.l     #$8, a3
000e74: 42af0042     clr.l      $42(a7)
000e78: 604c         bra.b      $ec6
000e7a: 7001         moveq      #$1, d0
000e7c: b0ae84dc     cmp.l      -$7b24(a6), d0
000e80: 6c18         bge.b      $e9a
000e82: 202f0042     move.l     $42(a7), d0
000e86: e588         lsl.l      #$2, d0
000e88: 206f00d0     movea.l    $d0(a7), a0
000e8c: 22300800     move.l     (a0, d0.l), d1
000e90: 41fa0223     lea.l      $10b5(pc), a0
000e94: 2008         move.l     a0, d0
000e96: 610008ba     bsr.w      $1752
000e9a: 202f0042     move.l     $42(a7), d0
000e9e: e588         lsl.l      #$2, d0
000ea0: 206f00d0     movea.l    $d0(a7), a0
000ea4: 277008000004 move.l     (a0, d0.l), $4(a3)
000eaa: 202f0042     move.l     $42(a7), d0
000eae: 52af0042     addq.l     #$1, $42(a7)
000eb2: e588         lsl.l      #$2, d0
000eb4: 206f00d0     movea.l    $d0(a7), a0
000eb8: 20300800     move.l     (a0, d0.l), d0
000ebc: 610009f0     bsr.w      $18ae
000ec0: 5280         addq.l     #$1, d0
000ec2: 2680         move.l     d0, (a3)
000ec4: 508b         addq.l     #$8, a3
000ec6: 202f0042     move.l     $42(a7), d0
000eca: e588         lsl.l      #$2, d0
000ecc: 206f00d0     movea.l    $d0(a7), a0
000ed0: 4ab00800     tst.l      (a0, d0.l)
000ed4: 66a4         bne.b      $e7a
000ed6: 41fa01ec     lea.l      $10c4(pc), a0
000eda: 27480004     move.l     a0, $4(a3)
000ede: 26bc00000001 move.l     #$1, (a3)
000ee4: 508b         addq.l     #$8, a3
000ee6: 7001         moveq      #$1, d0
000ee8: 610010ce     bsr.w      $1fb8
000eec: 42ae8122     clr.l      -$7ede(a6)
000ef0: 600a         bra.b      $efc
000ef2: 52ae8122     addq.l     #$1, -$7ede(a6)
000ef6: 7001         moveq      #$1, d0
000ef8: 610010be     bsr.w      $1fb8
000efc: 4aae8126     tst.l      -$7eda(a6)
000f00: 67f0         beq.b      $ef2
000f02: 7064         moveq      #$64, d0
000f04: b0ae8122     cmp.l      -$7ede(a6), d0
000f08: 6e0e         bgt.b      $f18
000f0a: 222e8122     move.l     -$7ede(a6), d1
000f0e: 41fa01b5     lea.l      $10c5(pc), a0
000f12: 2008         move.l     a0, d0
000f14: 6100083c     bsr.w      $1752
000f18: 4aae812a     tst.l      -$7ed6(a6)
000f1c: 6708         beq.b      $f26
000f1e: 202e812a     move.l     -$7ed6(a6), d0
000f22: 610000a8     bsr.w      $fcc
000f26: 4852         pea.l      (a2)
000f28: 302f0030     move.w     $30(a7), d0
000f2c: 48c0         ext.l      d0
000f2e: e588         lsl.l      #$2, d0
000f30: 41ee850e     lea.l      -$7af2(a6), a0
000f34: 30700800     movea.w    (a0, d0.l), a0
000f38: 2208         move.l     a0, d1
000f3a: 203c0000ff05 move.l     #$ff05, d0
000f40: 610005b2     bsr.w      $14f4
000f44: 588f         addq.l     #$4, a7
000f46: 2f40003a     move.l     d0, $3a(a7)
000f4a: 6c08         bge.b      $f54
000f4c: 70ff         moveq      #$ff, d0
000f4e: 2f40002e     move.l     d0, $2e(a7)
000f52: 6060         bra.b      $fb4
000f54: 2f2f003a     move.l     $3a(a7), -(a7)
000f58: 302f0030     move.w     $30(a7), d0
000f5c: 48c0         ext.l      d0
000f5e: e588         lsl.l      #$2, d0
000f60: 41ee850e     lea.l      -$7af2(a6), a0
000f64: 30700800     movea.w    (a0, d0.l), a0
000f68: 2208         move.l     a0, d1
000f6a: 203c0000ff06 move.l     #$ff06, d0
000f70: 61000582     bsr.w      $14f4
000f74: 588f         addq.l     #$4, a7
000f76: 2f40002e     move.l     d0, $2e(a7)
000f7a: 6c10         bge.b      $f8c
000f7c: 70ff         moveq      #$ff, d0
000f7e: 2f40002e     move.l     d0, $2e(a7)
000f82: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
000f8a: 6028         bra.b      $fb4
000f8c: 2f6f0024002e move.l     $24(a7), $2e(a7)
000f92: 4aaf002e     tst.l      $2e(a7)
000f96: 6c16         bge.b      $fae
000f98: 223c00008000 move.l     #$8000, d1
000f9e: 202f005e     move.l     $5e(a7), d0
000fa2: 610011fc     bsr.w      $21a0
000fa6: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
000fac: 6006         bra.b      $fb4
000fae: 1f6f002d002e move.b     $2d(a7), $2e(a7)
000fb4: 200a         move.l     a2, d0
000fb6: 61000862     bsr.w      $181a
000fba: 202f002e     move.l     $2e(a7), d0
000fbe: 4fef00a8     lea.l      $a8(a7), a7
000fc2: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
000fc8: 4e5d         unlk       a5
000fca: 4e75         rts        
000fcc: 4e550000     link.w     a5, #$0
000fd0: 48e78000     movem.l    d0, -(a7)
000fd4: 2d57851e     move.l     (a7), -$7ae2(a6)
000fd8: 2017         move.l     (a7), d0
000fda: 610012ba     bsr.w      $2296
000fde: 4e5d         unlk       a5
000fe0: 4e75         rts        
000fe2: 5369676e     subq.w     #$1, $676e(a1)
000fe6: 616c         bsr.b      $1054
000fe8: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
000ff2: 2063         movea.l    -(a3), a0
000ff4: 6f64         ble.b      $105a
000ff6: 653d         bcs.b      $1035
000ff8: 2025         move.l     -(a5), d0
000ffa: 780d         moveq      #$d, d4
000ffc: 007365727665 ori.w      #$6572, $65(a3, d7.w)
001002: 7200         moveq      #$0, d1
001004: 3200         move.w     d0, d1
001006: 3000         move.w     d0, d0
001008: 2f633000     move.l     -(a3), $3000(a7)
00100c: 3000         move.w     d0, d0
00100e: 3000         move.w     d0, d0
001010: 3000         move.w     d0, d0
001012: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
001018: 6e20         bgt.b      $103a
00101a: 6361         bls.b      $107d
00101c: 726f         moveq      #$6f, d1
00101e: 7370         .dc.w      $7370
001020: 6174         bsr.b      $1096
001022: 6820         bvc.b      $1044
001024: 6e61         bgt.b      $1087
001026: 6d65         blt.b      $108d
001028: 6420         bcc.b      $104a
00102a: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
001030: 7468         moveq      #$68, d2
001032: 6964         bvs.b      $1098
001034: 5b25         subq.b     #$5, -(a5)
001036: 645d         bcc.b      $1095
001038: 206d6772     movea.l    $6772(a5), a0
00103c: 3d25         move.w     -(a5), -(a6)
00103e: 640d         bcc.b      $104d
001040: 00666f72     ori.w      #$6f72, -(a6)
001044: 6b69         bmi.b      $10af
001046: 6e67         bgt.b      $10af
001048: 2070726f     movea.l    $6f(a0, d7.w), a0
00104c: 6365         bls.b      $10b3
00104e: 7373         .dc.w      $7373
001050: 206c6f63     movea.l    $6f63(a4), a0
001054: 616c         bsr.b      $10c2
001056: 6c79         bge.b      $10d1
001058: 2c20         move.l     -(a0), d6
00105a: 6d6f         blt.b      $10cb
00105c: 646e         bcc.b      $10cc
00105e: 616d         bsr.b      $10cd
001060: 6520         bcs.b      $1082
001062: 3d20         move.w     -(a0), -(a6)
001064: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
00106a: 6420         bcc.b      $108c
00106c: 6963         bvs.b      $10d1
00106e: 7074         moveq      #$74, d0
001070: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
00107a: 25780d007365 move.l     $d00.w, $7365(a2)
001080: 7276         moveq      #$76, d1
001082: 6572         bcs.b      $10f6
001084: 00656e74     ori.w      #$6e74, -(a5)
001088: 6572         bcs.b      $10fc
00108a: 6564         bcs.b      $10f0
00108c: 2061         movea.l    -(a1), a0
00108e: 7267         moveq      #$67, d1
001090: 6c69         bge.b      $10fb
001092: 7374         .dc.w      $7374
001094: 206c6f6f     movea.l    $6f6f(a4), a0
001098: 702c         moveq      #$2c, d0
00109a: 20696e64     movea.l    $6e64(a1), a0
00109e: 6578         bcs.b      $1118
0010a0: 3d25         move.w     -(a5), -(a6)
0010a2: 640d         bcc.b      $10b1
0010a4: 00415247     ori.w      #$5247, d1
0010a8: 4c49         .dc.w      $4c49
0010aa: 5354         subq.w     #$1, (a4)
0010ac: 5b695d3d     subq.w     #$5, $5d3d(a1)
0010b0: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
0010b6: 4e564c49     link.w     a6, #$4c49
0010ba: 5354         subq.w     #$1, (a4)
0010bc: 5b695d3d     subq.w     #$5, $5d3d(a1)
0010c0: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
0010c6: 796e         .dc.w      $796e
0010c8: 6368         bls.b      $1132
0010ca: 726f         moveq      #$6f, d1
0010cc: 6e69         bgt.b      $1137
0010ce: 7369         .dc.w      $7369
0010d0: 6e67         bgt.b      $1139
0010d2: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
0010dc: 6f6b         ble.b      $1149
0010de: 2025         move.l     -(a5), d0
0010e0: 6420         bcc.b      $1102
0010e2: 7469         moveq      #$69, d2
0010e4: 636b         bls.b      $1151
0010e6: 730d         .dc.w      $730d
0010e8: 00004e55     ori.b      #$55, d0
0010ec: 000048e7     ori.b      #$e7, d0
0010f0: c080         and.l      d0, d0
0010f2: 4fefffdc     lea.l      -$24(a7), a7
0010f6: 61000374     bsr.w      $146c
0010fa: 2f400014     move.l     d0, $14(a7)
0010fe: 206f0014     movea.l    $14(a7), a0
001102: 2f28001a     move.l     $1a(a0), -(a7)
001106: 41fa00c8     lea.l      $11d0(pc), a0
00110a: 2208         move.l     a0, d1
00110c: 41ef0004     lea.l      $4(a7), a0
001110: 2008         move.l     a0, d0
001112: 61000646     bsr.w      $175a
001116: 588f         addq.l     #$4, a7
001118: 7203         moveq      #$3, d1
00111a: 41d7         lea.l      (a7), a0
00111c: 2008         move.l     a0, d0
00111e: 6100067a     bsr.w      $179a
001122: 2f400020     move.l     d0, $20(a7)
001126: 6c000016     bge.w      $113e
00112a: 202f0024     move.l     $24(a7), d0
00112e: 61000048     bsr.w      $1178
001132: 4fef0024     lea.l      $24(a7), a7
001136: 60000036     bra.w      $116e
00113a: 6000002e     bra.w      $116a
00113e: 2f2f0024     move.l     $24(a7), -(a7)
001142: 222f0024     move.l     $24(a7), d1
001146: 203c0000ff20 move.l     #$ff20, d0
00114c: 61000342     bsr.w      $1490
001150: 588f         addq.l     #$4, a7
001152: 2f40001c     move.l     d0, $1c(a7)
001156: 202f0020     move.l     $20(a7), d0
00115a: 6100066e     bsr.w      $17ca
00115e: 202f001c     move.l     $1c(a7), d0
001162: 4fef0024     lea.l      $24(a7), a7
001166: 60000006     bra.w      $116e
00116a: 4fef0024     lea.l      $24(a7), a7
00116e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001174: 4e5d         unlk       a5
001176: 4e75         rts        
001178: 4e550000     link.w     a5, #$0
00117c: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
001180: 2800         move.l     d0, d4
001182: 7204         moveq      #$4, d1
001184: 7044         moveq      #$44, d0
001186: 61000f58     bsr.w      $20e0
00118a: 2440         movea.l    d0, a2
00118c: 3a1a         move.w     (a2)+, d5
00118e: 548a         addq.l     #$2, a2
001190: 6000002a     bra.w      $11bc
001194: 4a92         tst.l      (a2)
001196: 66000006     bne.w      $119e
00119a: 6000001e     bra.w      $11ba
00119e: 2052         movea.l    (a2), a0
0011a0: 7000         moveq      #$0, d0
0011a2: 3010         move.w     (a0), d0
0011a4: 3204         move.w     d4, d1
0011a6: 48c1         ext.l      d1
0011a8: b081         cmp.l      d1, d0
0011aa: 6600000e     bne.w      $11ba
0011ae: 2052         movea.l    (a2), a0
0011b0: 7000         moveq      #$0, d0
0011b2: 30280002     move.w     $2(a0), d0
0011b6: 6000000a     bra.w      $11c2
0011ba: 588a         addq.l     #$4, a2
0011bc: 5345         subq.w     #$1, d5
0011be: 6c00ffd4     bge.w      $1194
0011c2: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
0011c8: 4e5d         unlk       a5
0011ca: 4e75         rts        
0011cc: 4afb         .dc.w      $4afb
0011ce: 00042f25     ori.b      #$25, d4
0011d2: 7300         .dc.w      $7300
0011d4: 4e550000     link.w     a5, #$0
0011d8: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
0011dc: 2440         movea.l    d0, a2
0011de: 2641         movea.l    d1, a3
0011e0: 558f         subq.l     #$2, a7
0011e2: 1012         move.b     (a2), d0
0011e4: 1680         move.b     d0, (a3)
0011e6: 0c00002f     cmpi.b     #$2f, d0
0011ea: 6704         beq.b      $11f0
0011ec: 7000         moveq      #$0, d0
0011ee: 601e         bra.b      $120e
0011f0: 528a         addq.l     #$1, a2
0011f2: 528b         addq.l     #$1, a3
0011f4: 1012         move.b     (a2), d0
0011f6: 1680         move.b     d0, (a3)
0011f8: 1f400001     move.b     d0, $1(a7)
0011fc: 0c00002f     cmpi.b     #$2f, d0
001200: 6706         beq.b      $1208
001202: 4a2f0001     tst.b      $1(a7)
001206: 66e8         bne.b      $11f0
001208: 4213         clr.b      (a3)
00120a: 528a         addq.l     #$1, a2
00120c: 200a         move.l     a2, d0
00120e: 548f         addq.l     #$2, a7
001210: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
001216: 4e5d         unlk       a5
001218: 4e75         rts        
00121a: 4e550000     link.w     a5, #$0
00121e: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001222: 2440         movea.l    d0, a2
001224: 4aae8502     tst.l      -$7afe(a6)
001228: 6608         bne.b      $1232
00122a: 61000240     bsr.w      $146c
00122e: 2d408502     move.l     d0, -$7afe(a6)
001232: 7800         moveq      #$0, d4
001234: 601a         bra.b      $1250
001236: 2004         move.l     d4, d0
001238: e588         lsl.l      #$2, d0
00123a: 206e8502     movea.l    -$7afe(a6), a0
00123e: 2230081a     move.l     $1a(a0, d0.l), d1
001242: 200a         move.l     a2, d0
001244: 5280         addq.l     #$1, d0
001246: 610005f2     bsr.w      $183a
00124a: 4a80         tst.l      d0
00124c: 6710         beq.b      $125e
00124e: 5284         addq.l     #$1, d4
001250: 206e8502     movea.l    -$7afe(a6), a0
001254: 30280010     move.w     $10(a0), d0
001258: 48c0         ext.l      d0
00125a: b084         cmp.l      d4, d0
00125c: 6ed8         bgt.b      $1236
00125e: 206e8502     movea.l    -$7afe(a6), a0
001262: 30280010     move.w     $10(a0), d0
001266: 48c0         ext.l      d0
001268: b084         cmp.l      d4, d0
00126a: 6e04         bgt.b      $1270
00126c: 70ff         moveq      #$ff, d0
00126e: 6002         bra.b      $1272
001270: 2004         move.l     d4, d0
001272: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
001278: 4e5d         unlk       a5
00127a: 4e75         rts        
00127c: 4e550000     link.w     a5, #$0
001280: 48e7c080     movem.l    d0-d1/a0, -(a7)
001284: 202f0004     move.l     $4(a7), d0
001288: e588         lsl.l      #$2, d0
00128a: 2057         movea.l    (a7), a0
00128c: 2070082a     movea.l    $2a(a0, d0.l), a0
001290: 7000         moveq      #$0, d0
001292: 10280012     move.b     $12(a0), d0
001296: 4ced0100fffc movem.l    -$4(a5), a0
00129c: 4e5d         unlk       a5
00129e: 4e75         rts        
0012a0: 4e550000     link.w     a5, #$0
0012a4: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0012a8: 2440         movea.l    d0, a2
0012aa: 4fefffda     lea.l      -$26(a7), a7
0012ae: 200a         move.l     a2, d0
0012b0: 61000110     bsr.w      $13c2
0012b4: 2440         movea.l    d0, a2
0012b6: 0c12005f     cmpi.b     #$5f, (a2)
0012ba: 660000f6     bne.w      $13b2
0012be: 102a0001     move.b     $1(a2), d0
0012c2: 1f400005     move.b     d0, $5(a7)
0012c6: 0c000041     cmpi.b     #$41, d0
0012ca: 6d0000a4     blt.w      $1370
0012ce: 4aae8506     tst.l      -$7afa(a6)
0012d2: 6626         bne.b      $12fa
0012d4: 7200         moveq      #$0, d1
0012d6: 41fa017e     lea.l      $1456(pc), a0
0012da: 2008         move.l     a0, d0
0012dc: 61000e62     bsr.w      $2140
0012e0: 2f400022     move.l     d0, $22(a7)
0012e4: 72ff         moveq      #$ff, d1
0012e6: b280         cmp.l      d0, d1
0012e8: 6606         bne.b      $12f0
0012ea: 70ff         moveq      #$ff, d0
0012ec: 600000c6     bra.w      $13b4
0012f0: 7030         moveq      #$30, d0
0012f2: d0af0022     add.l      $22(a7), d0
0012f6: 2d408506     move.l     d0, -$7afa(a6)
0012fa: 41ef000a     lea.l      $a(a7), a0
0012fe: 2f480006     move.l     a0, $6(a7)
001302: 600c         bra.b      $1310
001304: 206f0006     movea.l    $6(a7), a0
001308: 52af0006     addq.l     #$1, $6(a7)
00130c: 10af0005     move.b     $5(a7), (a0)
001310: 528a         addq.l     #$1, a2
001312: 1012         move.b     (a2), d0
001314: 1f400005     move.b     d0, $5(a7)
001318: 0c00005f     cmpi.b     #$5f, d0
00131c: 66e6         bne.b      $1304
00131e: 206f0006     movea.l    $6(a7), a0
001322: 4210         clr.b      (a0)
001324: 202e8506     move.l     -$7afa(a6), d0
001328: 5480         addq.l     #$2, d0
00132a: 2f40001e     move.l     d0, $1e(a7)
00132e: 7800         moveq      #$0, d4
001330: 6030         bra.b      $1362
001332: 41ef000a     lea.l      $a(a7), a0
001336: 2208         move.l     a0, d1
001338: 202f001e     move.l     $1e(a7), d0
00133c: 610004fc     bsr.w      $183a
001340: 4a80         tst.l      d0
001342: 6614         bne.b      $1358
001344: 206f001e     movea.l    $1e(a7), a0
001348: 7000         moveq      #$0, d0
00134a: 10280013     move.b     $13(a0), d0
00134e: 206f002a     movea.l    $2a(a7), a0
001352: 2080         move.l     d0, (a0)
001354: 528a         addq.l     #$1, a2
001356: 6056         bra.b      $13ae
001358: 06af00000014001e addi.l     #$14, $1e(a7)
001360: 5284         addq.l     #$1, d4
001362: 206e8506     movea.l    -$7afa(a6), a0
001366: 3010         move.w     (a0), d0
001368: 48c0         ext.l      d0
00136a: b084         cmp.l      d4, d0
00136c: 6ec4         bgt.b      $1332
00136e: 6042         bra.b      $13b2
001370: 4297         clr.l      (a7)
001372: 6018         bra.b      $138c
001374: 2017         move.l     (a7), d0
001376: 720a         moveq      #$a, d1
001378: 610008ea     bsr.w      $1c64
00137c: 122f0005     move.b     $5(a7), d1
001380: 4881         ext.w      d1
001382: 48c1         ext.l      d1
001384: d081         add.l      d1, d0
001386: 7230         moveq      #$30, d1
001388: 9081         sub.l      d1, d0
00138a: 2e80         move.l     d0, (a7)
00138c: 528a         addq.l     #$1, a2
00138e: 1012         move.b     (a2), d0
001390: 1f400005     move.b     d0, $5(a7)
001394: 0c000030     cmpi.b     #$30, d0
001398: 6d08         blt.b      $13a2
00139a: 0c2f00390005 cmpi.b     #$39, $5(a7)
0013a0: 6fd2         ble.b      $1374
0013a2: 0c1a005f     cmpi.b     #$5f, (a2)+
0013a6: 660a         bne.b      $13b2
0013a8: 206f002a     movea.l    $2a(a7), a0
0013ac: 2097         move.l     (a7), (a0)
0013ae: 200a         move.l     a2, d0
0013b0: 6002         bra.b      $13b4
0013b2: 7000         moveq      #$0, d0
0013b4: 4fef0026     lea.l      $26(a7), a7
0013b8: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0013be: 4e5d         unlk       a5
0013c0: 4e75         rts        
0013c2: 4e550000     link.w     a5, #$0
0013c6: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0013ca: 2440         movea.l    d0, a2
0013cc: 518f         subq.l     #$8, a7
0013ce: 0c12005f     cmpi.b     #$5f, (a2)
0013d2: 6764         beq.b      $1438
0013d4: 0c120040     cmpi.b     #$40, (a2)
0013d8: 675e         beq.b      $1438
0013da: 0c120041     cmpi.b     #$41, (a2)
0013de: 6d58         blt.b      $1438
0013e0: 4aae850a     tst.l      -$7af6(a6)
0013e4: 6620         bne.b      $1406
0013e6: 7200         moveq      #$0, d1
0013e8: 41fa0076     lea.l      $1460(pc), a0
0013ec: 2008         move.l     a0, d0
0013ee: 61000d50     bsr.w      $2140
0013f2: 2f400004     move.l     d0, $4(a7)
0013f6: 72ff         moveq      #$ff, d1
0013f8: b280         cmp.l      d0, d1
0013fa: 673c         beq.b      $1438
0013fc: 7030         moveq      #$30, d0
0013fe: d0af0004     add.l      $4(a7), d0
001402: 2d40850a     move.l     d0, -$7af6(a6)
001406: 202e850a     move.l     -$7af6(a6), d0
00140a: 5480         addq.l     #$2, d0
00140c: 2e80         move.l     d0, (a7)
00140e: 7800         moveq      #$0, d4
001410: 601a         bra.b      $142c
001412: 220a         move.l     a2, d1
001414: 2017         move.l     (a7), d0
001416: 61000422     bsr.w      $183a
00141a: 4a80         tst.l      d0
00141c: 6606         bne.b      $1424
00141e: 7014         moveq      #$14, d0
001420: d097         add.l      (a7), d0
001422: 6016         bra.b      $143a
001424: 069700000032 addi.l     #$32, (a7)
00142a: 5284         addq.l     #$1, d4
00142c: 206e850a     movea.l    -$7af6(a6), a0
001430: 3010         move.w     (a0), d0
001432: 48c0         ext.l      d0
001434: b084         cmp.l      d4, d0
001436: 6eda         bgt.b      $1412
001438: 200a         move.l     a2, d0
00143a: 508f         addq.l     #$8, a7
00143c: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
001442: 4e5d         unlk       a5
001444: 4e75         rts        
001446: 4e550000     link.w     a5, #$0
00144a: 48e78000     movem.l    d0, -(a7)
00144e: 202e851e     move.l     -$7ae2(a6), d0
001452: 4e5d         unlk       a5
001454: 4e75         rts        
001456: 6361         bls.b      $14b9
001458: 725f         moveq      #$5f, d1
00145a: 6e65         bgt.b      $14c1
00145c: 7464         moveq      #$64, d2
00145e: 62006361     bhi.w      $77c1
001462: 725f         moveq      #$5f, d1
001464: 6465         bcc.b      $14cb
001466: 7669         moveq      #$69, d3
001468: 6365         bls.b      $14cf
00146a: 00002f08     ori.b      #$8, d0
00146e: 207900000000 movea.l    $0.l, a0
001474: 41e80814     lea.l      $814(a0), a0
001478: 2010         move.l     (a0), d0
00147a: 205f         movea.l    (a7)+, a0
00147c: 4e75         rts        
00147e: 2f08         move.l     a0, -(a7)
001480: 207900000000 movea.l    $0.l, a0
001486: 41e80814     lea.l      $814(a0), a0
00148a: 2008         move.l     a0, d0
00148c: 205f         movea.l    (a7)+, a0
00148e: 4e75         rts        
001490: 48e76080     movem.l    d1-d2/a0, -(a7)
001494: c141         exg.l      d0, d1
001496: 0c8100000002 cmpi.l     #$2, d1
00149c: 6716         beq.b      $14b4
00149e: 0c8100000005 cmpi.l     #$5, d1
0014a4: 670e         beq.b      $14b4
0014a6: 206f0010     movea.l    $10(a7), a0
0014aa: 2408         move.l     a0, d2
0014ac: 4e40         trap       #$0
0014ae: 008d         .dc.w      $008d
0014b0: 60000056     bra.w      $1508
0014b4: 206f0010     movea.l    $10(a7), a0
0014b8: 2408         move.l     a0, d2
0014ba: 4e40         trap       #$0
0014bc: 008d         .dc.w      $008d
0014be: 2202         move.l     d2, d1
0014c0: 60000046     bra.w      $1508
0014c4: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
0014c8: c141         exg.l      d0, d1
0014ca: 206f0018     movea.l    $18(a7), a0
0014ce: 242f001c     move.l     $1c(a7), d2
0014d2: 262f0020     move.l     $20(a7), d3
0014d6: 4e40         trap       #$0
0014d8: 008d         .dc.w      $008d
0014da: 60000068     bra.w      $1544
0014de: 48e76080     movem.l    d1-d2/a0, -(a7)
0014e2: c141         exg.l      d0, d1
0014e4: 206f0010     movea.l    $10(a7), a0
0014e8: 242f0014     move.l     $14(a7), d2
0014ec: 4e40         trap       #$0
0014ee: 008e         .dc.w      $008e
0014f0: 60000016     bra.w      $1508
0014f4: 48e76080     movem.l    d1-d2/a0, -(a7)
0014f8: c141         exg.l      d0, d1
0014fa: 206f0010     movea.l    $10(a7), a0
0014fe: 2408         move.l     a0, d2
001500: 4e40         trap       #$0
001502: 008e         .dc.w      $008e
001504: 60000002     bra.w      $1508
001508: 6408         bcc.b      $1512
00150a: 2d41800c     move.l     d1, -$7ff4(a6)
00150e: 70ff         moveq      #$ff, d0
001510: 6002         bra.b      $1514
001512: 2001         move.l     d1, d0
001514: 4cdf0106     movem.l    (a7)+, d1-d2/a0
001518: 4e75         rts        
00151a: 6406         bcc.b      $1522
00151c: 2d41800c     move.l     d1, -$7ff4(a6)
001520: 70ff         moveq      #$ff, d0
001522: 4cdf043e     movem.l    (a7)+, d1-d5/a2
001526: 4e75         rts        
001528: 6406         bcc.b      $1530
00152a: 2d41800c     move.l     d1, -$7ff4(a6)
00152e: 70ff         moveq      #$ff, d0
001530: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
001534: 4e75         rts        
001536: 6406         bcc.b      $153e
001538: 2d41800c     move.l     d1, -$7ff4(a6)
00153c: 70ff         moveq      #$ff, d0
00153e: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
001542: 4e75         rts        
001544: 6408         bcc.b      $154e
001546: 2d41800c     move.l     d1, -$7ff4(a6)
00154a: 70ff         moveq      #$ff, d0
00154c: 6002         bra.b      $1550
00154e: 2001         move.l     d1, d0
001550: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
001554: 4e75         rts        
001556: 48e74000     movem.l    d1, -(a7)
00155a: c141         exg.l      d0, d1
00155c: 4e40         trap       #$0
00155e: 005c6406     ori.w      #$6406, (a4)+
001562: 2d41800c     move.l     d1, -$7ff4(a6)
001566: 70ff         moveq      #$ff, d0
001568: 4cdf0002     movem.l    (a7)+, d1
00156c: 4e75         rts        
00156e: 48e740e0     movem.l    d1/a0-a2, -(a7)
001572: e340         asl.w      #$1, d0
001574: 207900000000 movea.l    $0.l, a0
00157a: 2268004c     movea.l    $4c(a0), a1
00157e: 45e90168     lea.l      $168(a1), a2
001582: 30320000     move.w     (a2, d0.w), d0
001586: 660a         bne.b      $1592
001588: 4cdf0702     movem.l    (a7)+, d1/a0-a2
00158c: 303cffff     move.w     #$ffff, d0
001590: 4e75         rts        
001592: 22680048     movea.l    $48(a0), a1
001596: b051         cmp.w      (a1), d0
001598: 62f2         bhi.b      $158c
00159a: e540         asl.w      #$2, d0
00159c: d2c0         adda.w     d0, a1
00159e: e448         lsr.w      #$2, d0
0015a0: 4a91         tst.l      (a1)
0015a2: 67e8         beq.b      $158c
0015a4: 2251         movea.l    (a1), a1
0015a6: b051         cmp.w      (a1), d0
0015a8: 66e2         bne.b      $158c
0015aa: 22690004     movea.l    $4(a1), a1
0015ae: 20290008     move.l     $8(a1), d0
0015b2: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0015b6: 4e75         rts        
0015b8: 4e550000     link.w     a5, #$0
0015bc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0015c0: 518f         subq.l     #$8, a7
0015c2: 7203         moveq      #$3, d1
0015c4: 41fa00aa     lea.l      $1670(pc), a0
0015c8: 2008         move.l     a0, d0
0015ca: 610001ce     bsr.w      $179a
0015ce: 2f400004     move.l     d0, $4(a7)
0015d2: 72ff         moveq      #$ff, d1
0015d4: b280         cmp.l      d0, d1
0015d6: 6600000a     bne.w      $15e2
0015da: 70ff         moveq      #$ff, d0
0015dc: 2e80         move.l     d0, (a7)
0015de: 6000001e     bra.w      $15fe
0015e2: 2f2f000c     move.l     $c(a7), -(a7)
0015e6: 222f0008     move.l     $8(a7), d1
0015ea: 202f000c     move.l     $c(a7), d0
0015ee: 6100ff04     bsr.w      $14f4
0015f2: 588f         addq.l     #$4, a7
0015f4: 2e80         move.l     d0, (a7)
0015f6: 202f0004     move.l     $4(a7), d0
0015fa: 610001ce     bsr.w      $17ca
0015fe: 2017         move.l     (a7), d0
001600: 508f         addq.l     #$8, a7
001602: 60000004     bra.w      $1608
001606: 4e71         nop        
001608: 4ced0100fffc movem.l    -$4(a5), a0
00160e: 4e5d         unlk       a5
001610: 4e75         rts        
001612: 4e550000     link.w     a5, #$0
001616: 48e7c080     movem.l    d0-d1/a0, -(a7)
00161a: 518f         subq.l     #$8, a7
00161c: 7203         moveq      #$3, d1
00161e: 41fa0058     lea.l      $1678(pc), a0
001622: 2008         move.l     a0, d0
001624: 61000174     bsr.w      $179a
001628: 2f400004     move.l     d0, $4(a7)
00162c: 72ff         moveq      #$ff, d1
00162e: b280         cmp.l      d0, d1
001630: 6600000a     bne.w      $163c
001634: 70ff         moveq      #$ff, d0
001636: 2e80         move.l     d0, (a7)
001638: 6000001e     bra.w      $1658
00163c: 2f2f000c     move.l     $c(a7), -(a7)
001640: 222f0008     move.l     $8(a7), d1
001644: 202f000c     move.l     $c(a7), d0
001648: 6100fe46     bsr.w      $1490
00164c: 588f         addq.l     #$4, a7
00164e: 2e80         move.l     d0, (a7)
001650: 202f0004     move.l     $4(a7), d0
001654: 61000174     bsr.w      $17ca
001658: 2017         move.l     (a7), d0
00165a: 508f         addq.l     #$8, a7
00165c: 60000004     bra.w      $1662
001660: 4e71         nop        
001662: 4ced0100fffc movem.l    -$4(a5), a0
001668: 4e5d         unlk       a5
00166a: 4e75         rts        
00166c: 4afb         .dc.w      $4afb
00166e: 00102f73     ori.b      #$73, (a0)
001672: 7973         .dc.w      $7973
001674: 636f         bls.b      $16e5
001676: 6e002f73     bgt.w      $45eb
00167a: 7973         .dc.w      $7973
00167c: 636f         bls.b      $16ed
00167e: 6e004e55     bgt.w      $64d5
001682: 000048e7     ori.b      #$e7, d0
001686: 80387000     or.b       $7000.w, d0
00168a: 2840         movea.l    d0, a4
00168c: 2640         movea.l    d0, a3
00168e: 2440         movea.l    d0, a2
001690: 700d         moveq      #$d, d0
001692: 7200         moveq      #$0, d1
001694: 41fa0064     lea.l      $16fa(pc), a0
001698: 47ee800c     lea.l      -$7ff4(a6), a3
00169c: 7609         moveq      #$9, d3
00169e: 2683         move.l     d3, (a3)
0016a0: 262e84b6     move.l     -$7b4a(a6), d3
0016a4: 242e84b2     move.l     -$7b4e(a6), d2
0016a8: 286e8522     movea.l    -$7ade(a6), a4
0016ac: 4e40         trap       #$0
0016ae: 0021653e     ori.b      #$3e, -(a1)
0016b2: 4a93         tst.l      (a3)
0016b4: 6718         beq.b      $16ce
0016b6: 41fa0046     lea.l      $16fe(pc), a0
0016ba: 7264         moveq      #$64, d1
0016bc: 7002         moveq      #$2, d0
0016be: 4e40         trap       #$0
0016c0: 008c         .dc.w      $008c
0016c2: 41fa0036     lea.l      $16fa(pc), a0
0016c6: 72dd         moveq      #$dd, d1
0016c8: 003c0001     ori.b      #$1, ccr
0016cc: 6022         bra.b      $16f0
0016ce: 3d7c0041813a move.w     #$41, -$7ec6(a6)
0016d4: 426e813c     clr.w      -$7ec4(a6)
0016d8: 3d7c00028156 move.w     #$2, -$7eaa(a6)
0016de: 3d7c00018158 move.w     #$1, -$7ea8(a6)
0016e4: 3d7c00028172 move.w     #$2, -$7e8e(a6)
0016ea: 3d7c00028174 move.w     #$2, -$7e8c(a6)
0016f0: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0016f6: 4e5d         unlk       a5
0016f8: 4e75         rts        
0016fa: 6369         bls.b      $1765
0016fc: 6f002a2a     ble.w      $4128
001700: 2a2a2063     move.l     $2063(a2), d5
001704: 696f         bvs.b      $1775
001706: 20747261     movea.l    $61(a4, d7.w), a0
00170a: 7068         moveq      #$68, d0
00170c: 616e         bsr.b      $177c
00170e: 646c         bcc.b      $177c
001710: 6572         bcs.b      $1784
001712: 206d6973     movea.l    $6973(a5), a0
001716: 6d61         blt.b      $1779
001718: 7463         moveq      #$63, d2
00171a: 6820         bvc.b      $173c
00171c: 2a2a2a2a     move.l     $2a2a(a2), d5
001720: 0d00         btst.l     d6, d0
001722: 4e4d         trap       #$d
001724: 00004e4d     ori.b      #$4d, d0
001728: 00014e4d     ori.b      #$4d, d1
00172c: 00024e4d     ori.b      #$4d, d2
001730: 00034e4d     ori.b      #$4d, d3
001734: 00044e4d     ori.b      #$4d, d4
001738: 00054e4d     ori.b      #$4d, d5
00173c: 00064e4d     ori.b      #$4d, d6
001740: 00074e4d     ori.b      #$4d, d7
001744: 0008         .dc.w      $0008
001746: 4e4d         trap       #$d
001748: 0009         .dc.w      $0009
00174a: 4e4d         trap       #$d
00174c: 000a         .dc.w      $000a
00174e: 4e4d         trap       #$d
001750: 000b         .dc.w      $000b
001752: 4e4d         trap       #$d
001754: 000c         .dc.w      $000c
001756: 4e4d         trap       #$d
001758: 000d         .dc.w      $000d
00175a: 4e4d         trap       #$d
00175c: 000e         .dc.w      $000e
00175e: 4e4d         trap       #$d
001760: 000f         .dc.w      $000f
001762: 4e4d         trap       #$d
001764: 00104e4d     ori.b      #$4d, (a0)
001768: 00114e4d     ori.b      #$4d, (a1)
00176c: 00124e4d     ori.b      #$4d, (a2)
001770: 00134e4d     ori.b      #$4d, (a3)
001774: 00144e4d     ori.b      #$4d, (a4)
001778: 00154e4d     ori.b      #$4d, (a5)
00177c: 00164e4d     ori.b      #$4d, (a6)
001780: 00174e4d     ori.b      #$4d, (a7)
001784: 00184e4d     ori.b      #$4d, (a0)+
001788: 00194e4d     ori.b      #$4d, (a1)+
00178c: 001a4e4d     ori.b      #$4d, (a2)+
001790: 001b4e4d     ori.b      #$4d, (a3)+
001794: 001c4e4d     ori.b      #$4d, (a4)+
001798: 001d4e4d     ori.b      #$4d, (a5)+
00179c: 001e4e4d     ori.b      #$4d, (a6)+
0017a0: 001f4e4d     ori.b      #$4d, (a7)+
0017a4: 00204e4d     ori.b      #$4d, -(a0)
0017a8: 00214e4d     ori.b      #$4d, -(a1)
0017ac: 00224e4d     ori.b      #$4d, -(a2)
0017b0: 00234e4d     ori.b      #$4d, -(a3)
0017b4: 00244e4d     ori.b      #$4d, -(a4)
0017b8: 00254e4d     ori.b      #$4d, -(a5)
0017bc: 00264e4d     ori.b      #$4d, -(a6)
0017c0: 00274e4d     ori.b      #$4d, -(a7)
0017c4: 00284e4d0029 ori.b      #$4d, $29(a0)
0017ca: 4e4d         trap       #$d
0017cc: 002a4e4d002b ori.b      #$4d, $2b(a2)
0017d2: 4e4d         trap       #$d
0017d4: 002c4e4d002d ori.b      #$4d, $2d(a4)
0017da: 4e4d         trap       #$d
0017dc: 002e4e4d002f ori.b      #$4d, $2f(a6)
0017e2: 4e4d         trap       #$d
0017e4: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
0017ea: 4e4d         trap       #$d
0017ec: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
0017f2: 4e4d         trap       #$d
0017f4: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
0017fa: 4e4d         trap       #$d
0017fc: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
001802: 4e4d         trap       #$d
001804: 00384e4d0039 ori.b      #$4d, $39.w
00180a: 4e4d         trap       #$d
00180c: 003a         .dc.w      $003a
00180e: 4e4d         trap       #$d
001810: 003b         .dc.w      $003b
001812: 4e4d         trap       #$d
001814: 003c         .dc.w      $003c
001816: 4e4d         trap       #$d
001818: 003d         .dc.w      $003d
00181a: 4e4d         trap       #$d
00181c: 003e         .dc.w      $003e
00181e: 4e4d         trap       #$d
001820: 003f         .dc.w      $003f
001822: 4e4d         trap       #$d
001824: 00414e4d     ori.w      #$4e4d, d1
001828: 00424e4d     ori.w      #$4e4d, d2
00182c: 00434e4d     ori.w      #$4e4d, d3
001830: 00444e4d     ori.w      #$4e4d, d4
001834: 00454e4d     ori.w      #$4e4d, d5
001838: 00402f08     ori.w      #$2f08, d0
00183c: 2040         movea.l    d0, a0
00183e: b300         eor.b      d1, d0
001840: 08000000     btst.b     #$0, d0
001844: 6652         bne.b      $1898
001846: 08010000     btst.b     #$0, d1
00184a: c389         exg.l      d1, a1
00184c: 6718         beq.b      $1866
00184e: b109         cmpm.b     (a1)+, (a0)+
001850: 6530         bcs.b      $1882
001852: 6220         bhi.b      $1874
001854: 4a28ffff     tst.b      -$1(a0)
001858: 660c         bne.b      $1866
00185a: 6034         bra.b      $1890
00185c: 4a00         tst.b      d0
00185e: 6730         beq.b      $1890
001860: 0c4000ff     cmpi.w     #$ff, d0
001864: 632a         bls.b      $1890
001866: 3018         move.w     (a0)+, d0
001868: b059         cmp.w      (a1)+, d0
00186a: 67f0         beq.b      $185c
00186c: 650e         bcs.b      $187c
00186e: 0c4000ff     cmpi.w     #$ff, d0
001872: 6316         bls.b      $188a
001874: 7001         moveq      #$1, d0
001876: 205f         movea.l    (a7)+, a0
001878: c389         exg.l      d1, a1
00187a: 4e75         rts        
00187c: 0c4000ff     cmpi.w     #$ff, d0
001880: 6308         bls.b      $188a
001882: 70ff         moveq      #$ff, d0
001884: 205f         movea.l    (a7)+, a0
001886: c389         exg.l      d1, a1
001888: 4e75         rts        
00188a: 4a29fffe     tst.b      -$2(a1)
00188e: 66f2         bne.b      $1882
001890: 7000         moveq      #$0, d0
001892: 205f         movea.l    (a7)+, a0
001894: c389         exg.l      d1, a1
001896: 4e75         rts        
001898: c389         exg.l      d1, a1
00189a: 7000         moveq      #$0, d0
00189c: 1018         move.b     (a0)+, d0
00189e: b019         cmp.b      (a1)+, d0
0018a0: 56c8fffa     dbne       d0, $189c
0018a4: 65dc         bcs.b      $1882
0018a6: 5240         addq.w     #$1, d0
0018a8: 205f         movea.l    (a7)+, a0
0018aa: c389         exg.l      d1, a1
0018ac: 4e75         rts        
0018ae: 2f08         move.l     a0, -(a7)
0018b0: 2040         movea.l    d0, a0
0018b2: 4a18         tst.b      (a0)+
0018b4: 670c         beq.b      $18c2
0018b6: 4a18         tst.b      (a0)+
0018b8: 6708         beq.b      $18c2
0018ba: 4a18         tst.b      (a0)+
0018bc: 6704         beq.b      $18c2
0018be: 4a18         tst.b      (a0)+
0018c0: 66f0         bne.b      $18b2
0018c2: 91c0         suba.l     d0, a0
0018c4: 2008         move.l     a0, d0
0018c6: 5380         subq.l     #$1, d0
0018c8: 205f         movea.l    (a7)+, a0
0018ca: 4e75         rts        
0018cc: 2f08         move.l     a0, -(a7)
0018ce: 2040         movea.l    d0, a0
0018d0: c389         exg.l      d1, a1
0018d2: 10d9         move.b     (a1)+, (a0)+
0018d4: 670c         beq.b      $18e2
0018d6: 10d9         move.b     (a1)+, (a0)+
0018d8: 6708         beq.b      $18e2
0018da: 10d9         move.b     (a1)+, (a0)+
0018dc: 6704         beq.b      $18e2
0018de: 10d9         move.b     (a1)+, (a0)+
0018e0: 66f0         bne.b      $18d2
0018e2: 205f         movea.l    (a7)+, a0
0018e4: c389         exg.l      d1, a1
0018e6: 4e75         rts        
0018e8: 2f08         move.l     a0, -(a7)
0018ea: 2040         movea.l    d0, a0
0018ec: c389         exg.l      d1, a1
0018ee: 4a18         tst.b      (a0)+
0018f0: 670c         beq.b      $18fe
0018f2: 4a18         tst.b      (a0)+
0018f4: 6708         beq.b      $18fe
0018f6: 4a18         tst.b      (a0)+
0018f8: 6704         beq.b      $18fe
0018fa: 4a18         tst.b      (a0)+
0018fc: 66f0         bne.b      $18ee
0018fe: 1159ffff     move.b     (a1)+, -$1(a0)
001902: 66ce         bne.b      $18d2
001904: 60dc         bra.b      $18e2
001906: 2f08         move.l     a0, -(a7)
001908: 2040         movea.l    d0, a0
00190a: c389         exg.l      d1, a1
00190c: 10d9         move.b     (a1)+, (a0)+
00190e: 6afc         bpl.b      $190c
001910: 4210         clr.b      (a0)
001912: 0220007f     andi.b     #$7f, -(a0)
001916: 205f         movea.l    (a7)+, a0
001918: c389         exg.l      d1, a1
00191a: 4e75         rts        
00191c: 4e550000     link.w     a5, #$0
001920: 48e7c020     movem.l    d0-d1/a2, -(a7)
001924: 2440         movea.l    d0, a2
001926: 4878000a     pea.l      $a.w
00192a: 7200         moveq      #$0, d1
00192c: 200a         move.l     a2, d0
00192e: 61ff00000018 bsr.l      $1948
001934: 588f         addq.l     #$4, a7
001936: 60ff00000006 bra.l      $193e
00193c: 4e71         nop        
00193e: 4ced0402fff8 movem.l    -$8(a5), d1/a2
001944: 4e5d         unlk       a5
001946: 4e75         rts        
001948: 4e550000     link.w     a5, #$0
00194c: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
001950: 2440         movea.l    d0, a2
001952: 2641         movea.l    d1, a3
001954: 282f0028     move.l     $28(a7), d4
001958: 7a00         moveq      #$0, d5
00195a: 7c00         moveq      #$0, d6
00195c: 101a         move.b     (a2)+, d0
00195e: 49c0         extb.l     d0
001960: 41f60170ffff8527 lea.l      $ffff8527(a6, invalid.w), a0
001968: 10300800     move.b     (a0, d0.l), d0
00196c: 4880         ext.w      d0
00196e: 08000004     btst.b     #$4, d0
001972: 66ffffffffe8 bne.l      $195c
001978: 60ff0000000e bra.l      $1988
00197e: 5285         addq.l     #$1, d5
001980: 528a         addq.l     #$1, a2
001982: 60ff0000001c bra.l      $19a0
001988: 1022         move.b     -(a2), d0
00198a: 4880         ext.w      d0
00198c: 0c40002b     cmpi.w     #$2b, d0
001990: 67ffffffffee beq.l      $1980
001996: 0c40002d     cmpi.w     #$2d, d0
00199a: 67ffffffffe2 beq.l      $197e
0019a0: 42b60170ffff800c clr.l      $ffff800c(a6, invalid.w)
0019a8: 2f04         move.l     d4, -(a7)
0019aa: 220b         move.l     a3, d1
0019ac: 200a         move.l     a2, d0
0019ae: 61ff00000086 bsr.l      $1a36
0019b4: 588f         addq.l     #$4, a7
0019b6: 2c00         move.l     d0, d6
0019b8: 0cb6000001000170ffff800c cmpi.l     #$100, $ffff800c(a6, invalid.w)
0019c4: 67ff00000024 beq.l      $19ea
0019ca: 4a85         tst.l      d5
0019cc: 67ff00000010 beq.l      $19de
0019d2: 0c8680000000 cmpi.l     #$80000000, d6
0019d8: 62ff00000010 bhi.l      $19ea
0019de: 0c867fffffff cmpi.l     #$7fffffff, d6
0019e4: 63ff0000002e bls.l      $1a14
0019ea: 4a85         tst.l      d5
0019ec: 67ff0000000c beq.l      $19fa
0019f2: 203c80000000 move.l     #$80000000, d0
0019f8: 6006         bra.b      $1a00
0019fa: 203c7fffffff move.l     #$7fffffff, d0
001a00: 2c00         move.l     d0, d6
001a02: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
001a0e: 60ff00000012 bra.l      $1a22
001a14: 4a85         tst.l      d5
001a16: 67ff0000000a beq.l      $1a22
001a1c: 2006         move.l     d6, d0
001a1e: 4480         neg.l      d0
001a20: 2c00         move.l     d0, d6
001a22: 2006         move.l     d6, d0
001a24: 60ff00000006 bra.l      $1a2c
001a2a: 4e71         nop        
001a2c: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
001a32: 4e5d         unlk       a5
001a34: 4e75         rts        
001a36: 4e550000     link.w     a5, #$0
001a3a: 48e7cfb0     movem.l    d0-d1/d4-d7/a0/a2-a3, -(a7)
001a3e: 2440         movea.l    d0, a2
001a40: 2641         movea.l    d1, a3
001a42: 282f002c     move.l     $2c(a7), d4
001a46: 7a00         moveq      #$0, d5
001a48: 7c00         moveq      #$0, d6
001a4a: 101a         move.b     (a2)+, d0
001a4c: 49c0         extb.l     d0
001a4e: 41f60170ffff8527 lea.l      $ffff8527(a6, invalid.w), a0
001a56: 10300800     move.b     (a0, d0.l), d0
001a5a: 4880         ext.w      d0
001a5c: 08000004     btst.b     #$4, d0
001a60: 66ffffffffe8 bne.l      $1a4a
001a66: 538a         subq.l     #$1, a2
001a68: 200b         move.l     a3, d0
001a6a: 67ff00000006 beq.l      $1a72
001a70: 268a         move.l     a2, (a3)
001a72: 7002         moveq      #$2, d0
001a74: b084         cmp.l      d4, d0
001a76: 63ff0000000c bls.l      $1a84
001a7c: 4a84         tst.l      d4
001a7e: 66ff0000000e bne.l      $1a8e
001a84: 7023         moveq      #$23, d0
001a86: b084         cmp.l      d4, d0
001a88: 64ff0000000c bcc.l      $1a96
001a8e: 7000         moveq      #$0, d0
001a90: 60ff000001c8 bra.l      $1c5a
001a96: 60ff0000005c bra.l      $1af4
001a9c: 5285         addq.l     #$1, d5
001a9e: 528a         addq.l     #$1, a2
001aa0: 0c2a00780001 cmpi.b     #$78, $1(a2)
001aa6: 67ff00000010 beq.l      $1ab8
001aac: 0c2a00580001 cmpi.b     #$58, $1(a2)
001ab2: 66ff0000002e bne.l      $1ae2
001ab8: 4a84         tst.l      d4
001aba: 66ff0000000c bne.l      $1ac8
001ac0: 7810         moveq      #$10, d4
001ac2: 60ff00000016 bra.l      $1ada
001ac8: 7010         moveq      #$10, d0
001aca: b084         cmp.l      d4, d0
001acc: 67ff0000000c beq.l      $1ada
001ad2: 7000         moveq      #$0, d0
001ad4: 60ff00000184 bra.l      $1c5a
001ada: 548a         addq.l     #$2, a2
001adc: 60ff00000010 bra.l      $1aee
001ae2: 4a84         tst.l      d4
001ae4: 66ff00000008 bne.l      $1aee
001aea: 7808         moveq      #$8, d4
001aec: 528a         addq.l     #$1, a2
001aee: 60ff00000030 bra.l      $1b20
001af4: 1012         move.b     (a2), d0
001af6: 4880         ext.w      d0
001af8: 0c4000ff     cmpi.w     #$ff, d0
001afc: 62ff00000022 bhi.l      $1b20
001b02: 0c00002b     cmpi.b     #$2b, d0
001b06: 67ffffffff96 beq.l      $1a9e
001b0c: 0c00002d     cmpi.b     #$2d, d0
001b10: 67ffffffff8a beq.l      $1a9c
001b16: 0c000030     cmpi.b     #$30, d0
001b1a: 67ffffffff84 beq.l      $1aa0
001b20: 4a84         tst.l      d4
001b22: 66ff00000006 bne.l      $1b2a
001b28: 780a         moveq      #$a, d4
001b2a: 700a         moveq      #$a, d0
001b2c: b084         cmp.l      d4, d0
001b2e: 65ff00000070 bcs.l      $1ba0
001b34: 60ff00000034 bra.l      $1b6a
001b3a: 70ff         moveq      #$ff, d0
001b3c: 9087         sub.l      d7, d0
001b3e: 4c440000     divu.l     d4, d0
001b42: b086         cmp.l      d6, d0
001b44: 65ff00000014 bcs.l      $1b5a
001b4a: 2006         move.l     d6, d0
001b4c: 4c040000     mulu.l     d4, d0
001b50: d087         add.l      d7, d0
001b52: 2c00         move.l     d0, d6
001b54: 60ff00000012 bra.l      $1b68
001b5a: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
001b66: 7cff         moveq      #$ff, d6
001b68: 528a         addq.l     #$1, a2
001b6a: 1012         move.b     (a2), d0
001b6c: 49c0         extb.l     d0
001b6e: 41f60170ffff8527 lea.l      $ffff8527(a6, invalid.w), a0
001b76: 10300800     move.b     (a0, d0.l), d0
001b7a: 4880         ext.w      d0
001b7c: 08000003     btst.b     #$3, d0
001b80: 67ff00000018 beq.l      $1b9a
001b86: 1012         move.b     (a2), d0
001b88: 4880         ext.w      d0
001b8a: 04400030     subi.w     #$30, d0
001b8e: 48c0         ext.l      d0
001b90: 2e00         move.l     d0, d7
001b92: b084         cmp.l      d4, d0
001b94: 65ffffffffa4 bcs.l      $1b3a
001b9a: 60ff0000009c bra.l      $1c38
001ba0: 60ff00000034 bra.l      $1bd6
001ba6: 70ff         moveq      #$ff, d0
001ba8: 9087         sub.l      d7, d0
001baa: 4c440000     divu.l     d4, d0
001bae: b086         cmp.l      d6, d0
001bb0: 65ff00000014 bcs.l      $1bc6
001bb6: 2006         move.l     d6, d0
001bb8: 4c040000     mulu.l     d4, d0
001bbc: d087         add.l      d7, d0
001bbe: 2c00         move.l     d0, d6
001bc0: 60ff00000012 bra.l      $1bd4
001bc6: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
001bd2: 7cff         moveq      #$ff, d6
001bd4: 528a         addq.l     #$1, a2
001bd6: 1012         move.b     (a2), d0
001bd8: 49c0         extb.l     d0
001bda: 41f60170ffff8527 lea.l      $ffff8527(a6, invalid.w), a0
001be2: 10300800     move.b     (a0, d0.l), d0
001be6: 4880         ext.w      d0
001be8: 08000003     btst.b     #$3, d0
001bec: 67ff00000016 beq.l      $1c04
001bf2: 1012         move.b     (a2), d0
001bf4: 4880         ext.w      d0
001bf6: 04400030     subi.w     #$30, d0
001bfa: 48c0         ext.l      d0
001bfc: 2e00         move.l     d0, d7
001bfe: 60ffffffffa6 bra.l      $1ba6
001c04: 1012         move.b     (a2), d0
001c06: 49c0         extb.l     d0
001c08: 41f60170ffff8527 lea.l      $ffff8527(a6, invalid.w), a0
001c10: 10300800     move.b     (a0, d0.l), d0
001c14: 4880         ext.w      d0
001c16: 02400006     andi.w     #$6, d0
001c1a: 67ff0000001c beq.l      $1c38
001c20: 1012         move.b     (a2), d0
001c22: 4880         ext.w      d0
001c24: 024000df     andi.w     #$df, d0
001c28: 48c0         ext.l      d0
001c2a: 7237         moveq      #$37, d1
001c2c: 9081         sub.l      d1, d0
001c2e: 2e00         move.l     d0, d7
001c30: b084         cmp.l      d4, d0
001c32: 65ffffffff72 bcs.l      $1ba6
001c38: 200b         move.l     a3, d0
001c3a: 67ff00000006 beq.l      $1c42
001c40: 268a         move.l     a2, (a3)
001c42: 4a85         tst.l      d5
001c44: 67ff0000000a beq.l      $1c50
001c4a: 2006         move.l     d6, d0
001c4c: 4480         neg.l      d0
001c4e: 2c00         move.l     d0, d6
001c50: 2006         move.l     d6, d0
001c52: 60ff00000006 bra.l      $1c5a
001c58: 4e71         nop        
001c5a: 4ced0df0ffe4 movem.l    -$1c(a5), d4-d7/a0/a2-a3
001c60: 4e5d         unlk       a5
001c62: 4e75         rts        
001c64: 48e73800     movem.l    d2-d4, -(a7)
001c68: 2400         move.l     d0, d2
001c6a: 2600         move.l     d0, d3
001c6c: 4843         swap       d3
001c6e: 2801         move.l     d1, d4
001c70: 4844         swap       d4
001c72: c0c1         mulu.w     d1, d0
001c74: c2c3         mulu.w     d3, d1
001c76: c4c4         mulu.w     d4, d2
001c78: c6c4         mulu.w     d4, d3
001c7a: 4840         swap       d0
001c7c: d041         add.w      d1, d0
001c7e: 7800         moveq      #$0, d4
001c80: d784         addx.l     d4, d3
001c82: d042         add.w      d2, d0
001c84: d784         addx.l     d4, d3
001c86: 4840         swap       d0
001c88: 4241         clr.w      d1
001c8a: 4841         swap       d1
001c8c: 4242         clr.w      d2
001c8e: 4842         swap       d2
001c90: d282         add.l      d2, d1
001c92: d283         add.l      d3, d1
001c94: 4a80         tst.l      d0
001c96: 4cdf001c     movem.l    (a7)+, d2-d4
001c9a: 4e75         rts        
001c9c: 2f02         move.l     d2, -(a7)
001c9e: 7400         moveq      #$0, d2
001ca0: 4a80         tst.l      d0
001ca2: 6a04         bpl.b      $1ca8
001ca4: 4480         neg.l      d0
001ca6: 7403         moveq      #$3, d2
001ca8: 4a81         tst.l      d1
001caa: 6a06         bpl.b      $1cb2
001cac: 4481         neg.l      d1
001cae: 0a020001     eori.b     #$1, d2
001cb2: 6122         bsr.b      $1cd6
001cb4: e20a         lsr.b      #$1, d2
001cb6: 6402         bcc.b      $1cba
001cb8: 4480         neg.l      d0
001cba: e20a         lsr.b      #$1, d2
001cbc: 6402         bcc.b      $1cc0
001cbe: 4481         neg.l      d1
001cc0: 241f         move.l     (a7)+, d2
001cc2: 4a80         tst.l      d0
001cc4: 4e75         rts        
001cc6: 61d4         bsr.b      $1c9c
001cc8: c141         exg.l      d0, d1
001cca: 4a80         tst.l      d0
001ccc: 4e75         rts        
001cce: 6106         bsr.b      $1cd6
001cd0: c141         exg.l      d0, d1
001cd2: 4a80         tst.l      d0
001cd4: 4e75         rts        
001cd6: 48e73800     movem.l    d2-d4, -(a7)
001cda: 2401         move.l     d1, d2
001cdc: 6606         bne.b      $1ce4
001cde: 81fc0000     divs.w     #$0, d0
001ce2: 606e         bra.b      $1d52
001ce4: 5381         subq.l     #$1, d1
001ce6: 676a         beq.b      $1d52
001ce8: 2801         move.l     d1, d4
001cea: 2200         move.l     d0, d1
001cec: b481         cmp.l      d1, d2
001cee: 650c         bcs.b      $1cfc
001cf0: 6704         beq.b      $1cf6
001cf2: 7000         moveq      #$0, d0
001cf4: 605c         bra.b      $1d52
001cf6: 7001         moveq      #$1, d0
001cf8: 9282         sub.l      d2, d1
001cfa: 6056         bra.b      $1d52
001cfc: 2602         move.l     d2, d3
001cfe: 6bf6         bmi.b      $1cf6
001d00: c684         and.l      d4, d3
001d02: 6612         bne.b      $1d16
001d04: e28a         lsr.l      #$1, d2
001d06: 76ff         moveq      #$ff, d3
001d08: e28a         lsr.l      #$1, d2
001d0a: 55cbfffc     dbcs       d3, $1d08
001d0e: 4483         neg.l      d3
001d10: e6a8         lsr.l      d3, d0
001d12: c284         and.l      d4, d1
001d14: 603c         bra.b      $1d52
001d16: 7000         moveq      #$0, d0
001d18: 76ff         moveq      #$ff, d3
001d1a: e382         asl.l      #$1, d2
001d1c: 6a06         bpl.b      $1d24
001d1e: b481         cmp.l      d1, d2
001d20: 620a         bhi.b      $1d2c
001d22: 600c         bra.b      $1d30
001d24: b481         cmp.l      d1, d2
001d26: 54cbfff2     dbcc       d3, $1d1a
001d2a: 6704         beq.b      $1d30
001d2c: 5283         addq.l     #$1, d3
001d2e: e28a         lsr.l      #$1, d2
001d30: 4483         neg.l      d3
001d32: 6004         bra.b      $1d38
001d34: e380         asl.l      #$1, d0
001d36: e28a         lsr.l      #$1, d2
001d38: 9282         sub.l      d2, d1
001d3a: 6510         bcs.b      $1d4c
001d3c: 5280         addq.l     #$1, d0
001d3e: 51cbfff4     dbra       d3, $1d34
001d42: 600e         bra.b      $1d52
001d44: e380         asl.l      #$1, d0
001d46: e28a         lsr.l      #$1, d2
001d48: d282         add.l      d2, d1
001d4a: 65f0         bcs.b      $1d3c
001d4c: 51cbfff6     dbra       d3, $1d44
001d50: d282         add.l      d2, d1
001d52: 4cdf001c     movem.l    (a7)+, d2-d4
001d56: 4a80         tst.l      d0
001d58: 4e75         rts        
001d5a: 2a5f         movea.l    (a7)+, a5
001d5c: 5385         subq.l     #$1, d5
001d5e: 6562         bcs.b      $1dc2
001d60: 1018         move.b     (a0)+, d0
001d62: 67f8         beq.b      $1d5c
001d64: 0c00000d     cmpi.b     #$d, d0
001d68: 6758         beq.b      $1dc2
001d6a: 0c000020     cmpi.b     #$20, d0
001d6e: 67ec         beq.b      $1d5c
001d70: 0c000009     cmpi.b     #$9, d0
001d74: 67e6         beq.b      $1d5c
001d76: 0c00002c     cmpi.b     #$2c, d0
001d7a: 67e0         beq.b      $1d5c
001d7c: 5282         addq.l     #$1, d2
001d7e: 0c000022     cmpi.b     #$22, d0
001d82: 6730         beq.b      $1db4
001d84: 0c000027     cmpi.b     #$27, d0
001d88: 672a         beq.b      $1db4
001d8a: 4868ffff     pea.l      -$1(a0)
001d8e: 5385         subq.l     #$1, d5
001d90: 6530         bcs.b      $1dc2
001d92: 1018         move.b     (a0)+, d0
001d94: 67c6         beq.b      $1d5c
001d96: 0c00000d     cmpi.b     #$d, d0
001d9a: 6712         beq.b      $1dae
001d9c: 0c000020     cmpi.b     #$20, d0
001da0: 670c         beq.b      $1dae
001da2: 0c000009     cmpi.b     #$9, d0
001da6: 6706         beq.b      $1dae
001da8: 0c00002c     cmpi.b     #$2c, d0
001dac: 66e0         bne.b      $1d8e
001dae: 4228ffff     clr.b      -$1(a0)
001db2: 60a8         bra.b      $1d5c
001db4: 4850         pea.l      (a0)
001db6: 5385         subq.l     #$1, d5
001db8: 6508         bcs.b      $1dc2
001dba: 1218         move.b     (a0)+, d1
001dbc: b001         cmp.b      d1, d0
001dbe: 66f6         bne.b      $1db6
001dc0: 60ec         bra.b      $1dae
001dc2: 204f         movea.l    a7, a0
001dc4: 4857         pea.l      (a7)
001dc6: 2f02         move.l     d2, -(a7)
001dc8: 5382         subq.l     #$1, d2
001dca: 6710         beq.b      $1ddc
001dcc: e582         asl.l      #$2, d2
001dce: 20302800     move.l     (a0, d2.l), d0
001dd2: 21902800     move.l     (a0), (a0, d2.l)
001dd6: 20c0         move.l     d0, (a0)+
001dd8: 5182         subq.l     #$8, d2
001dda: 62f2         bhi.b      $1dce
001ddc: 4ed5         jmp        (a5)
001dde: 4e550000     link.w     a5, #$0
001de2: 48e76080     movem.l    d1-d2/a0, -(a7)
001de6: 2041         movea.l    d1, a0
001de8: 323c0000     move.w     #$0, d1
001dec: 4e40         trap       #$0
001dee: 008d         .dc.w      $008d
001df0: 600004cc     bra.w      $22be
001df4: 4e550000     link.w     a5, #$0
001df8: 48e76080     movem.l    d1-d2/a0, -(a7)
001dfc: 323c0001     move.w     #$1, d1
001e00: 4e40         trap       #$0
001e02: 008d         .dc.w      $008d
001e04: 650004ba     bcs.w      $22c0
001e08: 2001         move.l     d1, d0
001e0a: 600004b2     bra.w      $22be
001e0e: 4e550000     link.w     a5, #$0
001e12: 48e76080     movem.l    d1-d2/a0, -(a7)
001e16: 323c0006     move.w     #$6, d1
001e1a: 4e40         trap       #$0
001e1c: 008d         .dc.w      $008d
001e1e: 640004a8     bcc.w      $22c8
001e22: 0c4100d3     cmpi.w     #$d3, d1
001e26: 66000498     bne.w      $22c0
001e2a: 7001         moveq      #$1, d0
001e2c: 60000490     bra.w      $22be
001e30: 4e550000     link.w     a5, #$0
001e34: 48e76080     movem.l    d1-d2/a0, -(a7)
001e38: 2041         movea.l    d1, a0
001e3a: 323c000f     move.w     #$f, d1
001e3e: 242d0008     move.l     $8(a5), d2
001e42: 60a8         bra.b      $1dec
001e44: 4e550000     link.w     a5, #$0
001e48: 48e76080     movem.l    d1-d2/a0, -(a7)
001e4c: 2041         movea.l    d1, a0
001e4e: 323c000e     move.w     #$e, d1
001e52: 6098         bra.b      $1dec
001e54: 4e550000     link.w     a5, #$0
001e58: 48e76080     movem.l    d1-d2/a0, -(a7)
001e5c: 323c0002     move.w     #$2, d1
001e60: 4e40         trap       #$0
001e62: 008d         .dc.w      $008d
001e64: 6500045a     bcs.w      $22c0
001e68: 2002         move.l     d2, d0
001e6a: 60000452     bra.w      $22be
001e6e: 4e550000     link.w     a5, #$0
001e72: 48e76080     movem.l    d1-d2/a0, -(a7)
001e76: 323c0005     move.w     #$5, d1
001e7a: 60e4         bra.b      $1e60
001e7c: 4e550000     link.w     a5, #$0
001e80: 48e76080     movem.l    d1-d2/a0, -(a7)
001e84: 2041         movea.l    d1, a0
001e86: 323c0000     move.w     #$0, d1
001e8a: 4e40         trap       #$0
001e8c: 008e         .dc.w      $008e
001e8e: 6000042e     bra.w      $22be
001e92: 4e550000     link.w     a5, #$0
001e96: 48e76080     movem.l    d1-d2/a0, -(a7)
001e9a: 323c0003     move.w     #$3, d1
001e9e: 60ea         bra.b      $1e8a
001ea0: 4e550000     link.w     a5, #$0
001ea4: 48e76080     movem.l    d1-d2/a0, -(a7)
001ea8: 2401         move.l     d1, d2
001eaa: 323c0002     move.w     #$2, d1
001eae: 60da         bra.b      $1e8a
001eb0: 4e550000     link.w     a5, #$0
001eb4: 48e76080     movem.l    d1-d2/a0, -(a7)
001eb8: 2041         movea.l    d1, a0
001eba: 323c000f     move.w     #$f, d1
001ebe: 60ca         bra.b      $1e8a
001ec0: 4e550000     link.w     a5, #$0
001ec4: 48e76080     movem.l    d1-d2/a0, -(a7)
001ec8: 2401         move.l     d1, d2
001eca: 323c0010     move.w     #$10, d1
001ece: 60ba         bra.b      $1e8a
001ed0: 4e550000     link.w     a5, #$0
001ed4: 48e76080     movem.l    d1-d2/a0, -(a7)
001ed8: 2401         move.l     d1, d2
001eda: 323c0011     move.w     #$11, d1
001ede: 60aa         bra.b      $1e8a
001ee0: 4e550000     link.w     a5, #$0
001ee4: 48e76080     movem.l    d1-d2/a0, -(a7)
001ee8: 2401         move.l     d1, d2
001eea: 323c001a     move.w     #$1a, d1
001eee: 609a         bra.b      $1e8a
001ef0: 4e550000     link.w     a5, #$0
001ef4: 48e76080     movem.l    d1-d2/a0, -(a7)
001ef8: 323c001b     move.w     #$1b, d1
001efc: 60f0         bra.b      $1eee
001efe: 4e550000     link.w     a5, #$0
001f02: 48e76080     movem.l    d1-d2/a0, -(a7)
001f06: 48e71840     movem.l    d3-d4/a1, -(a7)
001f0a: 2401         move.l     d1, d2
001f0c: 7204         moveq      #$4, d1
001f0e: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
001f14: 4e40         trap       #$0
001f16: 008e         .dc.w      $008e
001f18: 4cdf0218     movem.l    (a7)+, d3-d4/a1
001f1c: 600003a0     bra.w      $22be
001f20: 4e550000     link.w     a5, #$0
001f24: 48e76080     movem.l    d1-d2/a0, -(a7)
001f28: 2401         move.l     d1, d2
001f2a: 323c001c     move.w     #$1c, d1
001f2e: 60be         bra.b      $1eee
001f30: 4e550000     link.w     a5, #$0
001f34: 48e76080     movem.l    d1-d2/a0, -(a7)
001f38: 323c0024     move.w     #$24, d1
001f3c: 60b0         bra.b      $1eee
001f3e: 4e550000     link.w     a5, #$0
001f42: 48e76080     movem.l    d1-d2/a0, -(a7)
001f46: 323c0025     move.w     #$25, d1
001f4a: 60a2         bra.b      $1eee
001f4c: 4e550000     link.w     a5, #$0
001f50: 48e76080     movem.l    d1-d2/a0, -(a7)
001f54: 3401         move.w     d1, d2
001f56: 323c0026     move.w     #$26, d1
001f5a: 6092         bra.b      $1eee
001f5c: 4e550000     link.w     a5, #$0
001f60: 48e76080     movem.l    d1-d2/a0, -(a7)
001f64: 3401         move.w     d1, d2
001f66: 323c0027     move.w     #$27, d1
001f6a: 6082         bra.b      $1eee
001f6c: 4e550000     link.w     a5, #$0
001f70: 48e76080     movem.l    d1-d2/a0, -(a7)
001f74: 7000         moveq      #$0, d0
001f76: 4e40         trap       #$0
001f78: 000a         .dc.w      $000a
001f7a: 60000342     bra.w      $22be
001f7e: 4e550000     link.w     a5, #$0
001f82: 48e76080     movem.l    d1-d2/a0, -(a7)
001f86: 206d0008     movea.l    $8(a5), a0
001f8a: 2210         move.l     (a0), d1
001f8c: 2040         movea.l    d0, a0
001f8e: 2017         move.l     (a7), d0
001f90: 4e40         trap       #$0
001f92: 00176500     ori.b      #$0, (a7)
001f96: 032a206d     btst.l     d1, $206d(a2)
001f9a: 0008         .dc.w      $0008
001f9c: 2081         move.l     d1, (a0)
001f9e: 60000328     bra.w      $22c8
001fa2: 4e550000     link.w     a5, #$0
001fa6: 48e76080     movem.l    d1-d2/a0, -(a7)
001faa: 4e40         trap       #$0
001fac: 000f         .dc.w      $000f
001fae: 6000030e     bra.w      $22be
001fb2: e188         lsl.l      #$8, d0
001fb4: 08c0001f     bset.b     #$1f, d0
001fb8: 4e550000     link.w     a5, #$0
001fbc: 48e76080     movem.l    d1-d2/a0, -(a7)
001fc0: 4e40         trap       #$0
001fc2: 000a         .dc.w      $000a
001fc4: 600002f8     bra.w      $22be
001fc8: 4e550000     link.w     a5, #$0
001fcc: 48e700c0     movem.l    a0-a1, -(a7)
001fd0: 2041         movea.l    d1, a0
001fd2: 2240         movea.l    d0, a1
001fd4: 222d0008     move.l     $8(a5), d1
001fd8: 4e40         trap       #$0
001fda: 00116560     ori.b      #$60, (a1)
001fde: 7000         moveq      #$0, d0
001fe0: 6068         bra.b      $204a
001fe2: 4e550000     link.w     a5, #$0
001fe6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001fea: 2040         movea.l    d0, a0
001fec: 4e40         trap       #$0
001fee: 00106454     ori.b      #$54, (a0)
001ff2: 604a         bra.b      $203e
001ff4: 4e550000     link.w     a5, #$0
001ff8: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001ffc: 2040         movea.l    d0, a0
001ffe: 2248         movea.l    a0, a1
002000: 1019         move.b     (a1)+, d0
002002: 0c00002f     cmpi.b     #$2f, d0
002006: 671a         beq.b      $2022
002008: 0c00002e     cmpi.b     #$2e, d0
00200c: 6622         bne.b      $2030
00200e: 0c19002e     cmpi.b     #$2e, (a1)+
002012: 67fa         beq.b      $200e
002014: 1021         move.b     -(a1), d0
002016: 672e         beq.b      $2046
002018: 0c00002f     cmpi.b     #$2f, d0
00201c: 6612         bne.b      $2030
00201e: 2049         movea.l    a1, a0
002020: 60de         bra.b      $2000
002022: 1019         move.b     (a1)+, d0
002024: 0c00002f     cmpi.b     #$2f, d0
002028: 6706         beq.b      $2030
00202a: 0c00002e     cmpi.b     #$2e, d0
00202e: 67de         beq.b      $200e
002030: 4e40         trap       #$0
002032: 00106508     ori.b      #$8, (a0)
002036: 4a00         tst.b      d0
002038: 670c         beq.b      $2046
00203a: 2049         movea.l    a1, a0
00203c: 60c2         bra.b      $2000
00203e: 2d41800c     move.l     d1, -$7ff4(a6)
002042: 70ff         moveq      #$ff, d0
002044: 6004         bra.b      $204a
002046: 2009         move.l     a1, d0
002048: 9097         sub.l      (a7), d0
00204a: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
002050: 4e5d         unlk       a5
002052: 4e75         rts        
002054: 4e550000     link.w     a5, #$0
002058: 48e76080     movem.l    d1-d2/a0, -(a7)
00205c: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
002060: 242d000c     move.l     $c(a5), d2
002064: 0802000f     btst.b     #$f, d2
002068: 6708         beq.b      $2072
00206a: 262d0010     move.l     $10(a5), d3
00206e: 282d0014     move.l     $14(a5), d4
002072: 2040         movea.l    d0, a0
002074: 2001         move.l     d1, d0
002076: 222d0008     move.l     $8(a5), d1
00207a: 4e40         trap       #$0
00207c: 00256502     ori.b      #$2, -(a5)
002080: 200a         move.l     a2, d0
002082: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
002086: 60000236     bra.w      $22be
00208a: 4e550000     link.w     a5, #$0
00208e: 48e76080     movem.l    d1-d2/a0, -(a7)
002092: 2040         movea.l    d0, a0
002094: 4e40         trap       #$0
002096: 001a6500     ori.b      #$0, (a2)+
00209a: 02262001     andi.b     #$1, -(a6)
00209e: 6000021e     bra.w      $22be
0020a2: 4e550000     link.w     a5, #$0
0020a6: 48e76080     movem.l    d1-d2/a0, -(a7)
0020aa: 2040         movea.l    d0, a0
0020ac: 4e40         trap       #$0
0020ae: 001f6500     ori.b      #$0, (a7)+
0020b2: 020e         .dc.w      $020e
0020b4: 2001         move.l     d1, d0
0020b6: 60000206     bra.w      $22be
0020ba: 4e550000     link.w     a5, #$0
0020be: 48e76080     movem.l    d1-d2/a0, -(a7)
0020c2: 206d0008     movea.l    $8(a5), a0
0020c6: 4e40         trap       #$0
0020c8: 00186000     ori.b      #$0, (a0)+
0020cc: 01f24e55     bset.b     d0, $55(a2, d4.l)
0020d0: 000048e7     ori.b      #$e7, d0
0020d4: 6080         bra.b      $2056
0020d6: 2040         movea.l    d0, a0
0020d8: 4e40         trap       #$0
0020da: 00266000     ori.b      #$0, -(a6)
0020de: 01e0         bset.b     d0, -(a0)
0020e0: 4e550000     link.w     a5, #$0
0020e4: 48e76080     movem.l    d1-d2/a0, -(a7)
0020e8: 08c1001f     bset.b     #$1f, d1
0020ec: 600c         bra.b      $20fa
0020ee: 4e550000     link.w     a5, #$0
0020f2: 48e76080     movem.l    d1-d2/a0, -(a7)
0020f6: 242d0008     move.l     $8(a5), d2
0020fa: 4e40         trap       #$0
0020fc: 00276500     ori.b      #$0, -(a7)
002100: 01c0         bset.b     d0, d0
002102: 2002         move.l     d2, d0
002104: 600001b8     bra.w      $22be
002108: 4e550000     link.w     a5, #$0
00210c: 48e76080     movem.l    d1-d2/a0, -(a7)
002110: 4e40         trap       #$0
002112: 000b         .dc.w      $000b
002114: 600001a8     bra.w      $22be
002118: 4e550000     link.w     a5, #$0
00211c: 4e40         trap       #$0
00211e: 00524e5d     ori.w      #$4e5d, (a2)
002122: 4e75         rts        
002124: 4e550000     link.w     a5, #$0
002128: 48e76080     movem.l    d1-d2/a0, -(a7)
00212c: 2f09         move.l     a1, -(a7)
00212e: 206d0008     movea.l    $8(a5), a0
002132: 226d000c     movea.l    $c(a5), a1
002136: 4e40         trap       #$0
002138: 001b225f     ori.b      #$5f, (a3)+
00213c: 60000180     bra.w      $22be
002140: 4e550000     link.w     a5, #$0
002144: 48e76080     movem.l    d1-d2/a0, -(a7)
002148: 2040         movea.l    d0, a0
00214a: 3001         move.w     d1, d0
00214c: 48e70060     movem.l    a1-a2, -(a7)
002150: 4e40         trap       #$0
002152: 00006502     ori.b      #$2, d0
002156: 200a         move.l     a2, d0
002158: 4cdf0600     movem.l    (a7)+, a1-a2
00215c: 60000160     bra.w      $22be
002160: 4e550000     link.w     a5, #$0
002164: 48e76080     movem.l    d1-d2/a0, -(a7)
002168: 2040         movea.l    d0, a0
00216a: 3001         move.w     d1, d0
00216c: 48e70060     movem.l    a1-a2, -(a7)
002170: 4e40         trap       #$0
002172: 000160de     ori.b      #$de, d1
002176: 4e550000     link.w     a5, #$0
00217a: 48e76080     movem.l    d1-d2/a0, -(a7)
00217e: 2f0a         move.l     a2, -(a7)
002180: 2440         movea.l    d0, a2
002182: 4e40         trap       #$0
002184: 0002245f     ori.b      #$5f, d2
002188: 60000134     bra.w      $22be
00218c: 4e550000     link.w     a5, #$0
002190: 48e76080     movem.l    d1-d2/a0, -(a7)
002194: 2040         movea.l    d0, a0
002196: 3001         move.w     d1, d0
002198: 4e40         trap       #$0
00219a: 001d6000     ori.b      #$0, (a5)+
00219e: 0120         btst.l     d0, -(a0)
0021a0: 4e550000     link.w     a5, #$0
0021a4: 48e76080     movem.l    d1-d2/a0, -(a7)
0021a8: 4e40         trap       #$0
0021aa: 0008         .dc.w      $0008
0021ac: 60000110     bra.w      $22be
0021b0: 4e550000     link.w     a5, #$0
0021b4: 48e76080     movem.l    d1-d2/a0, -(a7)
0021b8: 2040         movea.l    d0, a0
0021ba: 7000         moveq      #$0, d0
0021bc: 4e40         trap       #$0
0021be: 00046500     ori.b      #$0, d4
0021c2: 00fe         .dc.w      $00fe
0021c4: 2408         move.l     a0, d2
0021c6: 670000f6     beq.w      $22be
0021ca: 4258         clr.w      (a0)+
0021cc: 3081         move.w     d1, (a0)
0021ce: 600000ee     bra.w      $22be
0021d2: 4e550000     link.w     a5, #$0
0021d6: 48e76080     movem.l    d1-d2/a0, -(a7)
0021da: 4e40         trap       #$0
0021dc: 000d         .dc.w      $000d
0021de: 600000de     bra.w      $22be
0021e2: 4e550000     link.w     a5, #$0
0021e6: 48e76080     movem.l    d1-d2/a0, -(a7)
0021ea: 48e71c40     movem.l    d3-d5/a1, -(a7)
0021ee: 7a03         moveq      #$3, d5
0021f0: 602e         bra.b      $2220
0021f2: 4e550000     link.w     a5, #$0
0021f6: 48e76080     movem.l    d1-d2/a0, -(a7)
0021fa: 48e71c40     movem.l    d3-d5/a1, -(a7)
0021fe: 7a01         moveq      #$1, d5
002200: 601e         bra.b      $2220
002202: 4e550000     link.w     a5, #$0
002206: 48e76080     movem.l    d1-d2/a0, -(a7)
00220a: 48e71c40     movem.l    d3-d5/a1, -(a7)
00220e: 7a02         moveq      #$2, d5
002210: 600e         bra.b      $2220
002212: 4e550000     link.w     a5, #$0
002216: 48e76080     movem.l    d1-d2/a0, -(a7)
00221a: 48e71c40     movem.l    d3-d5/a1, -(a7)
00221e: 7a00         moveq      #$0, d5
002220: 2040         movea.l    d0, a0
002222: 2401         move.l     d1, d2
002224: 226d0008     movea.l    $8(a5), a1
002228: 302d0012     move.w     $12(a5), d0
00222c: 4840         swap       d0
00222e: 302d000e     move.w     $e(a5), d0
002232: 222d0014     move.l     $14(a5), d1
002236: 7603         moveq      #$3, d3
002238: 08050001     btst.b     #$1, d5
00223c: 6704         beq.b      $2242
00223e: 262d001c     move.l     $1c(a5), d3
002242: 282d0018     move.l     $18(a5), d4
002246: 08050000     btst.b     #$0, d5
00224a: 6606         bne.b      $2252
00224c: 4e40         trap       #$0
00224e: 00036004     ori.b      #$4, d3
002252: 4e40         trap       #$0
002254: 00054cdf     ori.b      #$df, d5
002258: 023860000062 andi.b     #$0, $62.w
00225e: 4e550000     link.w     a5, #$0
002262: 48e76080     movem.l    d1-d2/a0, -(a7)
002266: 4e40         trap       #$0
002268: 000c         .dc.w      $000c
00226a: 60000052     bra.w      $22be
00226e: 4e550000     link.w     a5, #$0
002272: 48e76080     movem.l    d1-d2/a0, -(a7)
002276: 4e40         trap       #$0
002278: 000c         .dc.w      $000c
00227a: 65000044     bcs.w      $22c0
00227e: 2001         move.l     d1, d0
002280: 6000003c     bra.w      $22be
002284: 4e550000     link.w     a5, #$0
002288: 48e76080     movem.l    d1-d2/a0, -(a7)
00228c: 2200         move.l     d0, d1
00228e: 4e40         trap       #$0
002290: 001c6000     ori.b      #$0, (a4)+
002294: 002a4e550000 ori.b      #$55, $0(a2)
00229a: 48e76080     movem.l    d1-d2/a0, -(a7)
00229e: 41fa0012     lea.l      $22b2(pc), a0
0022a2: 2d4084ae     move.l     d0, -$7b52(a6)
0022a6: 6602         bne.b      $22aa
0022a8: 2040         movea.l    d0, a0
0022aa: 4e40         trap       #$0
0022ac: 0009         .dc.w      $0009
0022ae: 6000000e     bra.w      $22be
0022b2: 2001         move.l     d1, d0
0022b4: 206e84ae     movea.l    -$7b52(a6), a0
0022b8: 4e90         jsr        (a0)
0022ba: 4e40         trap       #$0
0022bc: 001e640c     ori.b      #$c, (a6)+
0022c0: 2d41800c     move.l     d1, -$7ff4(a6)
0022c4: 70ff         moveq      #$ff, d0
0022c6: 6004         bra.b      $22cc
0022c8: 65f6         bcs.b      $22c0
0022ca: 7000         moveq      #$0, d0
0022cc: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
0022d2: 4e5d         unlk       a5
0022d4: 4e75         rts        
0022d6: 4e550000     link.w     a5, #$0
0022da: 2200         move.l     d0, d1
0022dc: 6100001e     bsr.w      $22fc
0022e0: 6100f4ec     bsr.w      $17ce
0022e4: 6008         bra.b      $22ee
0022e6: 4e550000     link.w     a5, #$0
0022ea: 4afc         illegal    #$4afc
0022ec: 2200         move.l     d0, d1
0022ee: 4e40         trap       #$0
0022f0: 0006dead     ori.b      #$ad, d6
0022f4: dead003c     add.l      $3c(a5), d7
0022f8: 00014e75     ori.b      #$75, d1
0022fc: 4e75         rts        
