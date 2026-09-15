000056: 2d468010     move.l     d6, -$7ff0(a6)
00005a: 2d468014     move.l     d6, -$7fec(a6)
00005e: 3d438018     move.w     d3, -$7fe8(a6)
000062: 082b00050014 btst.b     #$5, $14(a3)
000068: 670e         beq.b      $78
00006a: 2d4c801a     move.l     a4, -$7fe6(a6)
00006e: 6608         bne.b      $78
000070: 2d7900000000801a move.l     $0.l, -$7fe6(a6)
000078: 4a85         tst.l      d5
00007a: 671e         beq.b      $9a
00007c: 08050000     btst.b     #$0, d5
000080: 6614         bne.b      $96
000082: 41f55800     lea.l      (a5, d5.l), a0
000086: 4a68fffe     tst.w      -$2(a0)
00008a: 660a         bne.b      $96
00008c: 5988         subq.l     #$4, a0
00008e: 49e8fffc     lea.l      -$4(a0), a4
000092: 7001         moveq      #$1, d0
000094: 6026         bra.b      $bc
000096: 423558ff     clr.b      -$1(a5, d5.l)
00009a: 204d         movea.l    a5, a0
00009c: d7eb000c     adda.l     $c(a3), a3
0000a0: 42a7         clr.l      -(a7)
0000a2: 2f0b         move.l     a3, -(a7)
0000a4: 7401         moveq      #$1, d2
0000a6: 203c00002c14 move.l     #$2c14, d0
0000ac: 4ebb0800     jsr        $ae(pc,d0.l)
0000b0: 6076         bra.b      $128
0000b2: 43e80004     lea.l      $4(a0), a1
0000b6: 2d4986d4     move.l     a1, -$792c(a6)
0000ba: 7400         moveq      #$0, d2
0000bc: 2260         movea.l    -(a0), a1
0000be: 2e09         move.l     a1, d7
0000c0: 670c         beq.b      $ce
0000c2: d3cd         adda.l     a5, a1
0000c4: 4229ffff     clr.b      -$1(a1)
0000c8: 2089         move.l     a1, (a0)
0000ca: 5282         addq.l     #$1, d2
0000cc: 60ee         bra.b      $bc
0000ce: 5380         subq.l     #$1, d0
0000d0: 67e0         beq.b      $b2
0000d2: 4a82         tst.l      d2
0000d4: 6610         bne.b      $e6
0000d6: 4a68fffe     tst.w      -$2(a0)
0000da: 670a         beq.b      $e6
0000dc: 4228ffff     clr.b      -$1(a0)
0000e0: 2448         movea.l    a0, a2
0000e2: 5888         addq.l     #$4, a0
0000e4: 6006         bra.b      $ec
0000e6: 208d         move.l     a5, (a0)
0000e8: 2448         movea.l    a0, a2
0000ea: 5282         addq.l     #$1, d2
0000ec: 5282         addq.l     #$1, d2
0000ee: 4a94         tst.l      (a4)
0000f0: 6718         beq.b      $10a
0000f2: 2854         movea.l    (a4), a4
0000f4: 4a1c         tst.b      (a4)+
0000f6: 66fc         bne.b      $f4
0000f8: b5cc         cmpa.l     a4, a2
0000fa: 631e         bls.b      $11a
0000fc: 0c1c00fc     cmpi.b     #$fc, (a4)+
000100: 6618         bne.b      $11a
000102: 528c         addq.l     #$1, a4
000104: 2654         movea.l    (a4), a3
000106: d7cd         adda.l     a5, a3
000108: 6014         bra.b      $11e
00010a: 0c2d00fc0002 cmpi.b     #$fc, $2(a5)
000110: 6608         bne.b      $11a
000112: 266d0004     movea.l    $4(a5), a3
000116: d7cd         adda.l     a5, a3
000118: 6004         bra.b      $11e
00011a: d7eb000c     adda.l     $c(a3), a3
00011e: 210b         move.l     a3, -(a0)
000120: 2f08         move.l     a0, -(a7)
000122: 4228ffff     clr.b      -$1(a0)
000126: 2f02         move.l     d2, -(a7)
000128: 207c00002800 movea.l    #$2800, a0
00012e: 4ebb8800     jsr        $130(pc,a0.l)
000132: 6500011c     bcs.w      $250
000136: 6120         bsr.b      $158
000138: 4cdf0003     movem.l    (a7)+, d0-d1
00013c: 9bcd         suba.l     a5, a5
00013e: 2f2e86d4     move.l     -$792c(a6), -(a7)
000142: 207c00000370 movea.l    #$370, a0
000148: 4ebb8800     jsr        $14a(pc,a0.l)
00014c: 7000         moveq      #$0, d0
00014e: 207c00002f90 movea.l    #$2f90, a0
000154: 4ebb8800     jsr        $156(pc,a0.l)
000158: 207cffff87ee movea.l    #$ffff87ee, a0
00015e: d1ce         adda.l     a6, a0
000160: 2d488004     move.l     a0, -$7ffc(a6)
000164: 2d4f8000     move.l     a7, -$8000(a6)
000168: 2d4f8008     move.l     a7, -$7ff8(a6)
00016c: 203cffffff04 move.l     #$ffffff04, d0
000172: d08f         add.l      a7, d0
000174: b0ae8008     cmp.l      -$7ff8(a6), d0
000178: 6502         bcs.b      $17c
00017a: 4e75         rts        
00017c: b0ae8004     cmp.l      -$7ffc(a6), d0
000180: 6506         bcs.b      $188
000182: 2d408008     move.l     d0, -$7ff8(a6)
000186: 4e75         rts        
000188: 41fa0070     lea.l      $1fa(pc), a0
00018c: 6110         bsr.b      $19e
00018e: 2f3c00000101 move.l     #$101, -(a7)
000194: 207c00002f60 movea.l    #$2f60, a0
00019a: 4ebb8800     jsr        $19c(pc,a0.l)
00019e: 3f01         move.w     d1, -(a7)
0001a0: 7264         moveq      #$64, d1
0001a2: 7002         moveq      #$2, d0
0001a4: 4e40         trap       #$0
0001a6: 008c         .dc.w      $008c
0001a8: 321f         move.w     (a7)+, d1
0001aa: 4e75         rts        
0001ac: 202e8000     move.l     -$8000(a6), d0
0001b0: 90ae8008     sub.l      -$7ff8(a6), d0
0001b4: 4e75         rts        
0001b6: 202e8008     move.l     -$7ff8(a6), d0
0001ba: 90ae8004     sub.l      -$7ffc(a6), d0
0001be: 4e75         rts        
0001c0: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
0001c4: 302f001e     move.w     $1e(a7), d0
0001c8: 04400080     subi.w     #$80, d0
0001cc: e440         asr.w      #$2, d0
0001ce: 0c40000f     cmpi.w     #$f, d0
0001d2: 660c         bne.b      $1e0
0001d4: 41fa006b     lea.l      $241(pc), a0
0001d8: 7200         moveq      #$0, d1
0001da: 4e40         trap       #$0
0001dc: 0021640c     ori.b      #$c, -(a1)
0001e0: 227c00002f1e movea.l    #$2f1e, a1
0001e6: 4ebb9800     jsr        $1e8(pc,a1.l)
0001ea: 6564         bcs.b      $250
0001ec: 4cdf0f03     movem.l    (a7)+, d0-d1/a0-a3
0001f0: 508f         addq.l     #$8, a7
0001f2: 5997         subq.l     #$4, (a7)
0001f4: 4e75         rts        
0001f6: 4afb         .dc.w      $4afb
0001f8: 00502a2a     ori.w      #$2a2a, (a0)
0001fc: 2a2a2053     move.l     $2053(a2), d5
000200: 7461         moveq      #$61, d2
000202: 636b         bls.b      $26f
000204: 204f         movea.l    a7, a0
000206: 7665         moveq      #$65, d3
000208: 7266         moveq      #$66, d1
00020a: 6c6f         bge.b      $27b
00020c: 7720         .dc.w      $7720
00020e: 2a2a2a2a     move.l     $2a2a(a2), d5
000212: 0d00         btst.l     d6, d0
000214: 2a2a2a2a     move.l     $2a2a(a2), d5
000218: 2043         movea.l    d3, a0
00021a: 616e         bsr.b      $28a
00021c: 277420696e73 move.l     $69(a4, d2.w), $6e73(a3)
000222: 7461         moveq      #$61, d2
000224: 6c6c         bge.b      $292
000226: 20747261     movea.l    $61(a4, d7.w), a0
00022a: 7020         moveq      #$20, d0
00022c: 6861         bvc.b      $28f
00022e: 6e64         bgt.b      $294
000230: 6c65         bge.b      $297
000232: 7220         moveq      #$20, d1
000234: 2a2a2a2a     move.l     $2a2a(a2), d5
000238: 0d00         btst.l     d6, d0
00023a: 202a2a2a     move.l     $2a2a(a2), d0
00023e: 2a20         move.l     -(a0), d5
000240: 006d61746800 ori.w      #$6174, $6800(a5)
000246: 00000000     ori.b      #$0, d0
00024a: 223c00000040 move.l     #$40, d1
000250: 2f08         move.l     a0, -(a7)
000252: 41faffc0     lea.l      $214(pc), a0
000256: 6100ff46     bsr.w      $19e
00025a: 227cffff834c movea.l    #$ffff834c, a1
000260: d3ce         adda.l     a6, a1
000262: 41faffd6     lea.l      $23a(pc), a0
000266: 6128         bsr.b      $290
000268: 205f         movea.l    (a7)+, a0
00026a: 5389         subq.l     #$1, a1
00026c: 6122         bsr.b      $290
00026e: 41faffca     lea.l      $23a(pc), a0
000272: 5389         subq.l     #$1, a1
000274: 611a         bsr.b      $290
000276: 137c000dffff move.b     #$d, -$1(a1)
00027c: 207cffff834c movea.l    #$ffff834c, a0
000282: d1ce         adda.l     a6, a0
000284: 6100ff18     bsr.w      $19e
000288: 4e40         trap       #$0
00028a: 00064e40     ori.b      #$40, d6
00028e: 000612d8     ori.b      #$d8, d6
000292: 66fc         bne.b      $290
000294: 4e75         rts        
000296: 4e550000     link.w     a5, #$0
00029a: 48e78000     movem.l    d0, -(a7)
00029e: 2017         move.l     (a7), d0
0002a0: 61000e5a     bsr.w      $10fc
0002a4: 4e5d         unlk       a5
0002a6: 4e75         rts        
0002a8: 4e550000     link.w     a5, #$0
0002ac: 48e7c000     movem.l    d0-d1, -(a7)
0002b0: 598f         subq.l     #$4, a7
0002b2: 70ff         moveq      #$ff, d0
0002b4: 2e80         move.l     d0, (a7)
0002b6: 7008         moveq      #$8, d0
0002b8: 61000780     bsr.w      $a3a
0002bc: 2d4086dc     move.l     d0, -$7924(a6)
0002c0: 72ff         moveq      #$ff, d1
0002c2: b280         cmp.l      d0, d1
0002c4: 6722         beq.b      $2e8
0002c6: 61000668     bsr.w      $930
0002ca: 2d4086e0     move.l     d0, -$7920(a6)
0002ce: 61000488     bsr.w      $758
0002d2: 2d4086e4     move.l     d0, -$791c(a6)
0002d6: 70ff         moveq      #$ff, d0
0002d8: b0ae86e0     cmp.l      -$7920(a6), d0
0002dc: 670a         beq.b      $2e8
0002de: 70ff         moveq      #$ff, d0
0002e0: b0ae86e4     cmp.l      -$791c(a6), d0
0002e4: 6702         beq.b      $2e8
0002e6: 4297         clr.l      (a7)
0002e8: 2017         move.l     (a7), d0
0002ea: 588f         addq.l     #$4, a7
0002ec: 4ced0002fffc movem.l    -$4(a5), d1
0002f2: 4e5d         unlk       a5
0002f4: 4e75         rts        
0002f6: 4e550000     link.w     a5, #$0
0002fa: 48e78000     movem.l    d0, -(a7)
0002fe: 70ff         moveq      #$ff, d0
000300: b0ae86dc     cmp.l      -$7924(a6), d0
000304: 670e         beq.b      $314
000306: 202e86dc     move.l     -$7924(a6), d0
00030a: 610007e2     bsr.w      $aee
00030e: 70ff         moveq      #$ff, d0
000310: 2d4086dc     move.l     d0, -$7924(a6)
000314: 610005ce     bsr.w      $8e4
000318: 610003f2     bsr.w      $70c
00031c: 4e5d         unlk       a5
00031e: 4e75         rts        
000320: 4e550000     link.w     a5, #$0
000324: 48e7c080     movem.l    d0-d1/a0, -(a7)
000328: 4fefffe2     lea.l      -$1e(a7), a7
00032c: 41d7         lea.l      (a7), a0
00032e: 2008         move.l     a0, d0
000330: 61000322     bsr.w      $654
000334: 72ff         moveq      #$ff, d1
000336: b280         cmp.l      d0, d1
000338: 6610         bne.b      $34a
00033a: 426e81b2     clr.w      -$7e4e(a6)
00033e: 426e81b4     clr.w      -$7e4c(a6)
000342: 1d7c000186db move.b     #$1, -$7925(a6)
000348: 6026         bra.b      $370
00034a: 302e81b2     move.w     -$7e4e(a6), d0
00034e: b06f0014     cmp.w      $14(a7), d0
000352: 660a         bne.b      $35e
000354: 302e81b4     move.w     -$7e4c(a6), d0
000358: b06f0016     cmp.w      $16(a7), d0
00035c: 670e         beq.b      $36c
00035e: 3d6f001481b2 move.w     $14(a7), -$7e4e(a6)
000364: 3d6f001681b4 move.w     $16(a7), -$7e4c(a6)
00036a: 60d6         bra.b      $342
00036c: 422e86db     clr.b      -$7925(a6)
000370: 4fef001e     lea.l      $1e(a7), a7
000374: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00037a: 4e5d         unlk       a5
00037c: 4e75         rts        
00037e: 4e550000     link.w     a5, #$0
000382: 48e7c080     movem.l    d0-d1/a0, -(a7)
000386: 4fefffc6     lea.l      -$3a(a7), a7
00038a: 3d7c0001801e move.w     #$1, -$7fe2(a6)
000390: 41d7         lea.l      (a7), a0
000392: 2008         move.l     a0, d0
000394: 61000496     bsr.w      $82c
000398: 72ff         moveq      #$ff, d1
00039a: b280         cmp.l      d0, d1
00039c: 6606         bne.b      $3a4
00039e: 422e86da     clr.b      -$7926(a6)
0003a2: 604c         bra.b      $3f0
0003a4: 2d578020     move.l     (a7), -$7fe0(a6)
0003a8: 2d6f00048024 move.l     $4(a7), -$7fdc(a6)
0003ae: 3d6f00128028 move.w     $12(a7), -$7fd8(a6)
0003b4: 202f0014     move.l     $14(a7), d0
0003b8: 4c7c080000000064 divs.l     #$64, d0
0003c0: 3d40802a     move.w     d0, -$7fd6(a6)
0003c4: 7000         moveq      #$0, d0
0003c6: 102f001d     move.b     $1d(a7), d0
0003ca: 3d4081ac     move.w     d0, -$7e54(a6)
0003ce: 4a6f001e     tst.w      $1e(a7)
0003d2: 6708         beq.b      $3dc
0003d4: 0c6f0003001e cmpi.w     #$3, $1e(a7)
0003da: 6608         bne.b      $3e4
0003dc: 3d7c000181ae move.w     #$1, -$7e52(a6)
0003e2: 6006         bra.b      $3ea
0003e4: 3d7c000281ae move.w     #$2, -$7e52(a6)
0003ea: 1d7c000186da move.b     #$1, -$7926(a6)
0003f0: 4fef003a     lea.l      $3a(a7), a7
0003f4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0003fa: 4e5d         unlk       a5
0003fc: 4e75         rts        
0003fe: 4e550000     link.w     a5, #$0
000402: 48e7c080     movem.l    d0-d1/a0, -(a7)
000406: 4a2e86da     tst.b      -$7926(a6)
00040a: 671e         beq.b      $42a
00040c: 48780014     pea.l      $14.w
000410: 4878019a     pea.l      $19a.w
000414: 41ee801e     lea.l      -$7fe2(a6), a0
000418: 2208         move.l     a0, d1
00041a: 202e86dc     move.l     -$7924(a6), d0
00041e: 61000b1c     bsr.w      $f3c
000422: 508f         addq.l     #$8, a7
000424: 0c800000019a cmpi.l     #$19a, d0
00042a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000430: 4e5d         unlk       a5
000432: 4e75         rts        
000434: 4e550000     link.w     a5, #$0
000438: 48e78000     movem.l    d0, -(a7)
00043c: 2017         move.l     (a7), d0
00043e: b0ae86e0     cmp.l      -$7920(a6), d0
000442: 6610         bne.b      $454
000444: 4a2e86d9     tst.b      -$7927(a6)
000448: 670a         beq.b      $454
00044a: 6100ff32     bsr.w      $37e
00044e: 610004bc     bsr.w      $90c
000452: 61aa         bsr.b      $3fe
000454: 2017         move.l     (a7), d0
000456: b0ae86e4     cmp.l      -$791c(a6), d0
00045a: 663e         bne.b      $49a
00045c: 4a2e86d9     tst.b      -$7927(a6)
000460: 6738         beq.b      $49a
000462: 6100febc     bsr.w      $320
000466: 610002cc     bsr.w      $734
00046a: 4a2e86db     tst.b      -$7925(a6)
00046e: 6746         beq.b      $4b6
000470: 6100ff8c     bsr.w      $3fe
000474: 6040         bra.b      $4b6
000476: 1d7c000186d8 move.b     #$1, -$7928(a6)
00047c: 422e86d9     clr.b      -$7927(a6)
000480: 6034         bra.b      $4b6
000482: 1d7c000186d9 move.b     #$1, -$7927(a6)
000488: 6100fef4     bsr.w      $37e
00048c: 6100fe92     bsr.w      $320
000490: 6100047a     bsr.w      $90c
000494: 6100029e     bsr.w      $734
000498: 60d6         bra.b      $470
00049a: 2017         move.l     (a7), d0
00049c: 0c800000ffff cmpi.l     #$ffff, d0
0004a2: 6212         bhi.b      $4b6
0004a4: 0c402420     cmpi.w     #$2420, d0
0004a8: 67cc         beq.b      $476
0004aa: 0c402421     cmpi.w     #$2421, d0
0004ae: 67d2         beq.b      $482
0004b0: 0c402422     cmpi.w     #$2422, d0
0004b4: 67c6         beq.b      $47c
0004b6: 4e5d         unlk       a5
0004b8: 4e75         rts        
0004ba: 4e550000     link.w     a5, #$0
0004be: 48e7c080     movem.l    d0-d1/a0, -(a7)
0004c2: 41fb0170fffffdd2 lea.l      $fffffdd2(a16, invalid.w), a0
0004ca: 2008         move.l     a0, d0
0004cc: 61000cc6     bsr.w      $1194
0004d0: 41fb017000000df8 lea.l      $df8(a16, invalid.w), a0
0004d8: 2008         move.l     a0, d0
0004da: 61000dd2     bsr.w      $12ae
0004de: 6100fdc8     bsr.w      $2a8
0004e2: 72ff         moveq      #$ff, d1
0004e4: b280         cmp.l      d0, d1
0004e6: 670e         beq.b      $4f6
0004e8: 61000ccc     bsr.w      $11b6
0004ec: 6100ff46     bsr.w      $434
0004f0: 4a2e86d8     tst.b      -$7928(a6)
0004f4: 67f2         beq.b      $4e8
0004f6: 6100fdfe     bsr.w      $2f6
0004fa: 7000         moveq      #$0, d0
0004fc: 61002be8     bsr.w      $30e6
000500: 4ced0100fffc movem.l    -$4(a5), a0
000506: 4e5d         unlk       a5
000508: 4e75         rts        
00050a: 4e550000     link.w     a5, #$0
00050e: 48e7c080     movem.l    d0-d1/a0, -(a7)
000512: 70ff         moveq      #$ff, d0
000514: b0ae86e8     cmp.l      -$7918(a6), d0
000518: 6616         bne.b      $530
00051a: 7203         moveq      #$3, d1
00051c: 41fa0280     lea.l      $79e(pc), a0
000520: 2008         move.l     a0, d0
000522: 61001422     bsr.w      $1946
000526: 2d4086e8     move.l     d0, -$7918(a6)
00052a: 72ff         moveq      #$ff, d1
00052c: b280         cmp.l      d0, d1
00052e: 672a         beq.b      $55a
000530: 42a7         clr.l      -(a7)
000532: 7200         moveq      #$0, d1
000534: 202e86e8     move.l     -$7918(a6), d0
000538: 61002534     bsr.w      $2a6e
00053c: 588f         addq.l     #$4, a7
00053e: 4878002e     pea.l      $2e.w
000542: 222f0004     move.l     $4(a7), d1
000546: 202e86e8     move.l     -$7918(a6), d0
00054a: 61002512     bsr.w      $2a5e
00054e: 588f         addq.l     #$4, a7
000550: 722e         moveq      #$2e, d1
000552: b280         cmp.l      d0, d1
000554: 6604         bne.b      $55a
000556: 7000         moveq      #$0, d0
000558: 6002         bra.b      $55c
00055a: 70ff         moveq      #$ff, d0
00055c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000562: 4e5d         unlk       a5
000564: 4e75         rts        
000566: 4e550000     link.w     a5, #$0
00056a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00056e: 70ff         moveq      #$ff, d0
000570: b0ae86e8     cmp.l      -$7918(a6), d0
000574: 6616         bne.b      $58c
000576: 7203         moveq      #$3, d1
000578: 41fa023b     lea.l      $7b5(pc), a0
00057c: 2008         move.l     a0, d0
00057e: 610013c6     bsr.w      $1946
000582: 2d4086e8     move.l     d0, -$7918(a6)
000586: 72ff         moveq      #$ff, d1
000588: b280         cmp.l      d0, d1
00058a: 672a         beq.b      $5b6
00058c: 42a7         clr.l      -(a7)
00058e: 7200         moveq      #$0, d1
000590: 202e86e8     move.l     -$7918(a6), d0
000594: 610024d8     bsr.w      $2a6e
000598: 588f         addq.l     #$4, a7
00059a: 4878002e     pea.l      $2e.w
00059e: 222f0004     move.l     $4(a7), d1
0005a2: 202e86e8     move.l     -$7918(a6), d0
0005a6: 610024be     bsr.w      $2a66
0005aa: 588f         addq.l     #$4, a7
0005ac: 722e         moveq      #$2e, d1
0005ae: b280         cmp.l      d0, d1
0005b0: 6604         bne.b      $5b6
0005b2: 7000         moveq      #$0, d0
0005b4: 6002         bra.b      $5b8
0005b6: 70ff         moveq      #$ff, d0
0005b8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0005be: 4e5d         unlk       a5
0005c0: 4e75         rts        
0005c2: 4e550000     link.w     a5, #$0
0005c6: 48e78000     movem.l    d0, -(a7)
0005ca: 70ff         moveq      #$ff, d0
0005cc: b0ae86e8     cmp.l      -$7918(a6), d0
0005d0: 6604         bne.b      $5d6
0005d2: 70ff         moveq      #$ff, d0
0005d4: 6010         bra.b      $5e6
0005d6: 202e86e8     move.l     -$7918(a6), d0
0005da: 6100249e     bsr.w      $2a7a
0005de: 70ff         moveq      #$ff, d0
0005e0: 2d4086e8     move.l     d0, -$7918(a6)
0005e4: 7000         moveq      #$0, d0
0005e6: 4e5d         unlk       a5
0005e8: 4e75         rts        
0005ea: 4e550000     link.w     a5, #$0
0005ee: 48e7c000     movem.l    d0-d1, -(a7)
0005f2: 42a7         clr.l      -(a7)
0005f4: 222e86e8     move.l     -$7918(a6), d1
0005f8: 203c00000200 move.l     #$200, d0
0005fe: 610021a4     bsr.w      $27a4
000602: 588f         addq.l     #$4, a7
000604: 4ced0002fffc movem.l    -$4(a5), d1
00060a: 4e5d         unlk       a5
00060c: 4e75         rts        
00060e: 4e550000     link.w     a5, #$0
000612: 48e7c080     movem.l    d0-d1/a0, -(a7)
000616: 70ff         moveq      #$ff, d0
000618: b0ae86e8     cmp.l      -$7918(a6), d0
00061c: 661a         bne.b      $638
00061e: 7203         moveq      #$3, d1
000620: 41fa01aa     lea.l      $7cc(pc), a0
000624: 2008         move.l     a0, d0
000626: 6100131e     bsr.w      $1946
00062a: 2d4086e8     move.l     d0, -$7918(a6)
00062e: 72ff         moveq      #$ff, d1
000630: b280         cmp.l      d0, d1
000632: 6604         bne.b      $638
000634: 70ff         moveq      #$ff, d0
000636: 6012         bra.b      $64a
000638: 42a7         clr.l      -(a7)
00063a: 222e86e8     move.l     -$7918(a6), d1
00063e: 203c00000900 move.l     #$900, d0
000644: 610020fa     bsr.w      $2740
000648: 588f         addq.l     #$4, a7
00064a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000650: 4e5d         unlk       a5
000652: 4e75         rts        
000654: 4e550000     link.w     a5, #$0
000658: 48e7c080     movem.l    d0-d1/a0, -(a7)
00065c: 70ff         moveq      #$ff, d0
00065e: b0ae86ec     cmp.l      -$7914(a6), d0
000662: 6616         bne.b      $67a
000664: 7203         moveq      #$3, d1
000666: 41fa017b     lea.l      $7e3(pc), a0
00066a: 2008         move.l     a0, d0
00066c: 610012d8     bsr.w      $1946
000670: 2d4086ec     move.l     d0, -$7914(a6)
000674: 72ff         moveq      #$ff, d1
000676: b280         cmp.l      d0, d1
000678: 672a         beq.b      $6a4
00067a: 42a7         clr.l      -(a7)
00067c: 7200         moveq      #$0, d1
00067e: 202e86ec     move.l     -$7914(a6), d0
000682: 610023ea     bsr.w      $2a6e
000686: 588f         addq.l     #$4, a7
000688: 4878001e     pea.l      $1e.w
00068c: 222f0004     move.l     $4(a7), d1
000690: 202e86ec     move.l     -$7914(a6), d0
000694: 610023c8     bsr.w      $2a5e
000698: 588f         addq.l     #$4, a7
00069a: 721e         moveq      #$1e, d1
00069c: b280         cmp.l      d0, d1
00069e: 6604         bne.b      $6a4
0006a0: 7000         moveq      #$0, d0
0006a2: 6002         bra.b      $6a6
0006a4: 70ff         moveq      #$ff, d0
0006a6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0006ac: 4e5d         unlk       a5
0006ae: 4e75         rts        
0006b0: 4e550000     link.w     a5, #$0
0006b4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0006b8: 70ff         moveq      #$ff, d0
0006ba: b0ae86ec     cmp.l      -$7914(a6), d0
0006be: 6616         bne.b      $6d6
0006c0: 7203         moveq      #$3, d1
0006c2: 41fa0137     lea.l      $7fb(pc), a0
0006c6: 2008         move.l     a0, d0
0006c8: 6100127c     bsr.w      $1946
0006cc: 2d4086ec     move.l     d0, -$7914(a6)
0006d0: 72ff         moveq      #$ff, d1
0006d2: b280         cmp.l      d0, d1
0006d4: 672a         beq.b      $700
0006d6: 42a7         clr.l      -(a7)
0006d8: 7200         moveq      #$0, d1
0006da: 202e86ec     move.l     -$7914(a6), d0
0006de: 6100238e     bsr.w      $2a6e
0006e2: 588f         addq.l     #$4, a7
0006e4: 4878001e     pea.l      $1e.w
0006e8: 222f0004     move.l     $4(a7), d1
0006ec: 202e86ec     move.l     -$7914(a6), d0
0006f0: 61002374     bsr.w      $2a66
0006f4: 588f         addq.l     #$4, a7
0006f6: 721e         moveq      #$1e, d1
0006f8: b280         cmp.l      d0, d1
0006fa: 6604         bne.b      $700
0006fc: 7000         moveq      #$0, d0
0006fe: 6002         bra.b      $702
000700: 70ff         moveq      #$ff, d0
000702: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000708: 4e5d         unlk       a5
00070a: 4e75         rts        
00070c: 4e550000     link.w     a5, #$0
000710: 48e78000     movem.l    d0, -(a7)
000714: 70ff         moveq      #$ff, d0
000716: b0ae86ec     cmp.l      -$7914(a6), d0
00071a: 6604         bne.b      $720
00071c: 70ff         moveq      #$ff, d0
00071e: 6010         bra.b      $730
000720: 202e86ec     move.l     -$7914(a6), d0
000724: 61002354     bsr.w      $2a7a
000728: 70ff         moveq      #$ff, d0
00072a: 2d4086ec     move.l     d0, -$7914(a6)
00072e: 7000         moveq      #$0, d0
000730: 4e5d         unlk       a5
000732: 4e75         rts        
000734: 4e550000     link.w     a5, #$0
000738: 48e7c000     movem.l    d0-d1, -(a7)
00073c: 42a7         clr.l      -(a7)
00073e: 222e86ec     move.l     -$7914(a6), d1
000742: 203c00000200 move.l     #$200, d0
000748: 6100205a     bsr.w      $27a4
00074c: 588f         addq.l     #$4, a7
00074e: 4ced0002fffc movem.l    -$4(a5), d1
000754: 4e5d         unlk       a5
000756: 4e75         rts        
000758: 4e550000     link.w     a5, #$0
00075c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000760: 70ff         moveq      #$ff, d0
000762: b0ae86ec     cmp.l      -$7914(a6), d0
000766: 661a         bne.b      $782
000768: 7203         moveq      #$3, d1
00076a: 41fa00a7     lea.l      $813(pc), a0
00076e: 2008         move.l     a0, d0
000770: 610011d4     bsr.w      $1946
000774: 2d4086ec     move.l     d0, -$7914(a6)
000778: 72ff         moveq      #$ff, d1
00077a: b280         cmp.l      d0, d1
00077c: 6604         bne.b      $782
00077e: 70ff         moveq      #$ff, d0
000780: 6012         bra.b      $794
000782: 42a7         clr.l      -(a7)
000784: 222e86ec     move.l     -$7914(a6), d1
000788: 203c00000900 move.l     #$900, d0
00078e: 61001fb0     bsr.w      $2740
000792: 588f         addq.l     #$4, a7
000794: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00079a: 4e5d         unlk       a5
00079c: 4e75         rts        
00079e: 2f63302f     move.l     -(a3), $302f(a7)
0007a2: 5f313239     subq.b     #$7, $39(a1, d3.w)
0007a6: 5f2f7061     subq.b     #$7, $7061(a7)
0007aa: 636b         bls.b      $817
0007ac: 2f677073     move.l     -(a7), $7073(a7)
0007b0: 5f706f73002f63302f5f3132 subq.w     #$7, ([$2f6330, a0], $2f5f3132)
0007bc: 395f2f70     move.w     (a7)+, $2f70(a4)
0007c0: 6163         bsr.b      $825
0007c2: 6b2f         bmi.b      $7f3
0007c4: 6770         beq.b      $836
0007c6: 735f         .dc.w      $735f
0007c8: 706f         moveq      #$6f, d0
0007ca: 7300         .dc.w      $7300
0007cc: 2f63302f     move.l     -(a3), $302f(a7)
0007d0: 5f313239     subq.b     #$7, $39(a1, d3.w)
0007d4: 5f2f7061     subq.b     #$7, $7061(a7)
0007d8: 636b         bls.b      $845
0007da: 2f677073     move.l     -(a7), $7073(a7)
0007de: 5f706f73002f63302f5f3132 subq.w     #$7, ([$2f6330, a0], $2f5f3132)
0007ea: 395f2f70     move.w     (a7)+, $2f70(a4)
0007ee: 6163         bsr.b      $853
0007f0: 6b2f         bmi.b      $821
0007f2: 6770         beq.b      $864
0007f4: 735f         .dc.w      $735f
0007f6: 696e         bvs.b      $866
0007f8: 666f         bne.b      $869
0007fa: 002f63302f5f ori.b      #$30, $2f5f(a7)
000800: 3132395f     move.w     ([a2]), -(a0)
000804: 2f7061636b2f6770735f696e move.l     ([$6b2f, a0], $6770735f), $696e(a7)
000810: 666f         bne.b      $881
000812: 002f63302f5f ori.b      #$30, $2f5f(a7)
000818: 3132395f     move.w     ([a2]), -(a0)
00081c: 2f7061636b2f6770735f696e move.l     ([$6b2f, a0], $6770735f), $696e(a7)
000828: 666f         bne.b      $899
00082a: 00004e55     ori.b      #$55, d0
00082e: 000048e7     ori.b      #$e7, d0
000832: c080         and.l      d0, d0
000834: 70ff         moveq      #$ff, d0
000836: b0ae86f0     cmp.l      -$7910(a6), d0
00083a: 6616         bne.b      $852
00083c: 7203         moveq      #$3, d1
00083e: 41fa0136     lea.l      $976(pc), a0
000842: 2008         move.l     a0, d0
000844: 61001100     bsr.w      $1946
000848: 2d4086f0     move.l     d0, -$7910(a6)
00084c: 72ff         moveq      #$ff, d1
00084e: b280         cmp.l      d0, d1
000850: 672a         beq.b      $87c
000852: 42a7         clr.l      -(a7)
000854: 7200         moveq      #$0, d1
000856: 202e86f0     move.l     -$7910(a6), d0
00085a: 61002212     bsr.w      $2a6e
00085e: 588f         addq.l     #$4, a7
000860: 4878003a     pea.l      $3a.w
000864: 222f0004     move.l     $4(a7), d1
000868: 202e86f0     move.l     -$7910(a6), d0
00086c: 610021f0     bsr.w      $2a5e
000870: 588f         addq.l     #$4, a7
000872: 723a         moveq      #$3a, d1
000874: b280         cmp.l      d0, d1
000876: 6604         bne.b      $87c
000878: 7000         moveq      #$0, d0
00087a: 6002         bra.b      $87e
00087c: 70ff         moveq      #$ff, d0
00087e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000884: 4e5d         unlk       a5
000886: 4e75         rts        
000888: 4e550000     link.w     a5, #$0
00088c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000890: 70ff         moveq      #$ff, d0
000892: b0ae86f0     cmp.l      -$7910(a6), d0
000896: 6616         bne.b      $8ae
000898: 7203         moveq      #$3, d1
00089a: 41fa00f2     lea.l      $98e(pc), a0
00089e: 2008         move.l     a0, d0
0008a0: 610010a4     bsr.w      $1946
0008a4: 2d4086f0     move.l     d0, -$7910(a6)
0008a8: 72ff         moveq      #$ff, d1
0008aa: b280         cmp.l      d0, d1
0008ac: 672a         beq.b      $8d8
0008ae: 42a7         clr.l      -(a7)
0008b0: 7200         moveq      #$0, d1
0008b2: 202e86f0     move.l     -$7910(a6), d0
0008b6: 610021b6     bsr.w      $2a6e
0008ba: 588f         addq.l     #$4, a7
0008bc: 4878003a     pea.l      $3a.w
0008c0: 222f0004     move.l     $4(a7), d1
0008c4: 202e86f0     move.l     -$7910(a6), d0
0008c8: 6100219c     bsr.w      $2a66
0008cc: 588f         addq.l     #$4, a7
0008ce: 723a         moveq      #$3a, d1
0008d0: b280         cmp.l      d0, d1
0008d2: 6604         bne.b      $8d8
0008d4: 7000         moveq      #$0, d0
0008d6: 6002         bra.b      $8da
0008d8: 70ff         moveq      #$ff, d0
0008da: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0008e0: 4e5d         unlk       a5
0008e2: 4e75         rts        
0008e4: 4e550000     link.w     a5, #$0
0008e8: 48e78000     movem.l    d0, -(a7)
0008ec: 70ff         moveq      #$ff, d0
0008ee: b0ae86f0     cmp.l      -$7910(a6), d0
0008f2: 6604         bne.b      $8f8
0008f4: 70ff         moveq      #$ff, d0
0008f6: 6010         bra.b      $908
0008f8: 202e86f0     move.l     -$7910(a6), d0
0008fc: 6100217c     bsr.w      $2a7a
000900: 70ff         moveq      #$ff, d0
000902: 2d4086f0     move.l     d0, -$7910(a6)
000906: 7000         moveq      #$0, d0
000908: 4e5d         unlk       a5
00090a: 4e75         rts        
00090c: 4e550000     link.w     a5, #$0
000910: 48e7c000     movem.l    d0-d1, -(a7)
000914: 42a7         clr.l      -(a7)
000916: 222e86f0     move.l     -$7910(a6), d1
00091a: 203c00000200 move.l     #$200, d0
000920: 61001e82     bsr.w      $27a4
000924: 588f         addq.l     #$4, a7
000926: 4ced0002fffc movem.l    -$4(a5), d1
00092c: 4e5d         unlk       a5
00092e: 4e75         rts        
000930: 4e550000     link.w     a5, #$0
000934: 48e7c080     movem.l    d0-d1/a0, -(a7)
000938: 70ff         moveq      #$ff, d0
00093a: b0ae86f0     cmp.l      -$7910(a6), d0
00093e: 661a         bne.b      $95a
000940: 7203         moveq      #$3, d1
000942: 41fa0062     lea.l      $9a6(pc), a0
000946: 2008         move.l     a0, d0
000948: 61000ffc     bsr.w      $1946
00094c: 2d4086f0     move.l     d0, -$7910(a6)
000950: 72ff         moveq      #$ff, d1
000952: b280         cmp.l      d0, d1
000954: 6604         bne.b      $95a
000956: 70ff         moveq      #$ff, d0
000958: 6012         bra.b      $96c
00095a: 42a7         clr.l      -(a7)
00095c: 222e86f0     move.l     -$7910(a6), d1
000960: 203c00000900 move.l     #$900, d0
000966: 61001dd8     bsr.w      $2740
00096a: 588f         addq.l     #$4, a7
00096c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000972: 4e5d         unlk       a5
000974: 4e75         rts        
000976: 2f63302f     move.l     -(a3), $302f(a7)
00097a: 5f313239     subq.b     #$7, $39(a1, d3.w)
00097e: 5f2f7061     subq.b     #$7, $7061(a7)
000982: 636b         bls.b      $9ef
000984: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
000992: 5f313239     subq.b     #$7, $39(a1, d3.w)
000996: 5f2f7061     subq.b     #$7, $7061(a7)
00099a: 636b         bls.b      $a07
00099c: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
0009aa: 5f313239     subq.b     #$7, $39(a1, d3.w)
0009ae: 5f2f7061     subq.b     #$7, $7061(a7)
0009b2: 636b         bls.b      $a1f
0009b4: 2f706f736974696f6e004e550000 move.l     ([$6974696f, a0], $6e004e55), $0(a7)
0009c2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0009c6: 518f         subq.l     #$8, a7
0009c8: 42af0004     clr.l      $4(a7)
0009cc: 41d7         lea.l      (a7), a0
0009ce: 2008         move.l     a0, d0
0009d0: 610003e6     bsr.w      $db8
0009d4: 72ff         moveq      #$ff, d1
0009d6: b280         cmp.l      d0, d1
0009d8: 6704         beq.b      $9de
0009da: 2f570004     move.l     (a7), $4(a7)
0009de: 202f0004     move.l     $4(a7), d0
0009e2: 508f         addq.l     #$8, a7
0009e4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0009ea: 4e5d         unlk       a5
0009ec: 4e75         rts        
0009ee: 4e550000     link.w     a5, #$0
0009f2: 48e7e080     movem.l    d0-d2/a0, -(a7)
0009f6: 598f         subq.l     #$4, a7
0009f8: 61c4         bsr.b      $9be
0009fa: 2e80         move.l     d0, (a7)
0009fc: 700c         moveq      #$c, d0
0009fe: 4c2f00000004 mulu.l     $4(a7), d0
000a04: 41ee86f4     lea.l      -$790c(a6), a0
000a08: 2f300808     move.l     $8(a0, d0.l), -(a7)
000a0c: 48780003     pea.l      $3.w
000a10: 7223         moveq      #$23, d1
000a12: 700c         moveq      #$c, d0
000a14: 4c2f0000000c mulu.l     $c(a7), d0
000a1a: 41ee86f4     lea.l      -$790c(a6), a0
000a1e: 242f0008     move.l     $8(a7), d2
000a22: d1c0         adda.l     d0, a0
000a24: 20302c00     move.l     (a0, d2.l * 4), d0
000a28: 610010c0     bsr.w      $1aea
000a2c: 508f         addq.l     #$8, a7
000a2e: 588f         addq.l     #$4, a7
000a30: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
000a36: 4e5d         unlk       a5
000a38: 4e75         rts        
000a3a: 4e550000     link.w     a5, #$0
000a3e: 48e7e080     movem.l    d0-d2/a0, -(a7)
000a42: 4feffff0     lea.l      -$10(a7), a7
000a46: 6100ff76     bsr.w      $9be
000a4a: 2e80         move.l     d0, (a7)
000a4c: 70fe         moveq      #$fe, d0
000a4e: b0ae8760     cmp.l      -$78a0(a6), d0
000a52: 661c         bne.b      $a70
000a54: 7200         moveq      #$0, d1
000a56: 203c00007fb1 move.l     #$7fb1, d0
000a5c: 61001e64     bsr.w      $28c2
000a60: 2d408760     move.l     d0, -$78a0(a6)
000a64: 4aae8760     tst.l      -$78a0(a6)
000a68: 6c06         bge.b      $a70
000a6a: 7001         moveq      #$1, d0
000a6c: 2d408760     move.l     d0, -$78a0(a6)
000a70: 4aae8760     tst.l      -$78a0(a6)
000a74: 672a         beq.b      $aa0
000a76: 6006         bra.b      $a7e
000a78: 7001         moveq      #$1, d0
000a7a: 61002346     bsr.w      $2dc2
000a7e: 203c00000300 move.l     #$300, d0
000a84: 4c2e00008760 mulu.l     -$78a0(a6), d0
000a8a: 08c0001f     bset.b     #$1f, d0
000a8e: 2200         move.l     d0, d1
000a90: 7006         moveq      #$6, d0
000a92: 61000cd4     bsr.w      $1768
000a96: 2f40000c     move.l     d0, $c(a7)
000a9a: 72ff         moveq      #$ff, d1
000a9c: b280         cmp.l      d0, d1
000a9e: 67d8         beq.b      $a78
000aa0: 7203         moveq      #$3, d1
000aa2: 700c         moveq      #$c, d0
000aa4: 4c2f00000010 mulu.l     $10(a7), d0
000aaa: 41ee86f4     lea.l      -$790c(a6), a0
000aae: 2417         move.l     (a7), d2
000ab0: d1c0         adda.l     d0, a0
000ab2: 20302c00     move.l     (a0, d2.l * 4), d0
000ab6: 61000e8e     bsr.w      $1946
000aba: 2f400004     move.l     d0, $4(a7)
000abe: 4aae8760     tst.l      -$78a0(a6)
000ac2: 6718         beq.b      $adc
000ac4: 202f000c     move.l     $c(a7), d0
000ac8: 61000c92     bsr.w      $175c
000acc: 2f400008     move.l     d0, $8(a7)
000ad0: 72ff         moveq      #$ff, d1
000ad2: b280         cmp.l      d0, d1
000ad4: 6606         bne.b      $adc
000ad6: 70ff         moveq      #$ff, d0
000ad8: 2f400004     move.l     d0, $4(a7)
000adc: 202f0004     move.l     $4(a7), d0
000ae0: 4fef0010     lea.l      $10(a7), a7
000ae4: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
000aea: 4e5d         unlk       a5
000aec: 4e75         rts        
000aee: 4e550000     link.w     a5, #$0
000af2: 48e7c000     movem.l    d0-d1, -(a7)
000af6: 4feffff4     lea.l      -$c(a7), a7
000afa: 70fe         moveq      #$fe, d0
000afc: b0ae8764     cmp.l      -$789c(a6), d0
000b00: 661c         bne.b      $b1e
000b02: 7200         moveq      #$0, d1
000b04: 203c00007fb1 move.l     #$7fb1, d0
000b0a: 61001db6     bsr.w      $28c2
000b0e: 2d408764     move.l     d0, -$789c(a6)
000b12: 4aae8764     tst.l      -$789c(a6)
000b16: 6c06         bge.b      $b1e
000b18: 7001         moveq      #$1, d0
000b1a: 2d408764     move.l     d0, -$789c(a6)
000b1e: 4aae8764     tst.l      -$789c(a6)
000b22: 672a         beq.b      $b4e
000b24: 6006         bra.b      $b2c
000b26: 7001         moveq      #$1, d0
000b28: 61002298     bsr.w      $2dc2
000b2c: 203c00000300 move.l     #$300, d0
000b32: 4c2e00008764 mulu.l     -$789c(a6), d0
000b38: 08c0001f     bset.b     #$1f, d0
000b3c: 2200         move.l     d0, d1
000b3e: 7006         moveq      #$6, d0
000b40: 61000c26     bsr.w      $1768
000b44: 2f400008     move.l     d0, $8(a7)
000b48: 72ff         moveq      #$ff, d1
000b4a: b280         cmp.l      d0, d1
000b4c: 67d8         beq.b      $b26
000b4e: 202f000c     move.l     $c(a7), d0
000b52: 61001f26     bsr.w      $2a7a
000b56: 2e80         move.l     d0, (a7)
000b58: 4aae8764     tst.l      -$789c(a6)
000b5c: 6710         beq.b      $b6e
000b5e: 202f0008     move.l     $8(a7), d0
000b62: 61000bf8     bsr.w      $175c
000b66: 2f400004     move.l     d0, $4(a7)
000b6a: 72ff         moveq      #$ff, d1
000b6c: b280         cmp.l      d0, d1
000b6e: 2017         move.l     (a7), d0
000b70: 4fef000c     lea.l      $c(a7), a7
000b74: 4ced0002fffc movem.l    -$4(a5), d1
000b7a: 4e5d         unlk       a5
000b7c: 4e75         rts        
000b7e: 2f63302f     move.l     -(a3), $302f(a7)
000b82: 5f313239     subq.b     #$7, $39(a1, d3.w)
000b86: 5f2f7069     subq.b     #$7, $7069(a7)
000b8a: 7065         moveq      #$65, d0
000b8c: 2f627369     move.l     -(a2), $7369(a7)
000b90: 5f63         subq.w     #$7, -(a3)
000b92: 7472         moveq      #$72, d2
000b94: 6c5f         bge.b      $bf5
000b96: 636d         bls.b      $c05
000b98: 64002f63     bcc.w      $3afd
000b9c: 302f5f31     move.w     $5f31(a7), d0
000ba0: 32395f2f7069 move.w     $5f2f7069.l, d1
000ba6: 7065         moveq      #$65, d0
000ba8: 2f627369     move.l     -(a2), $7369(a7)
000bac: 5f746573745f6374726c5f63 subq.w     #$7, ([$745f6374, a4], $726c5f63)
000bb8: 6d64         blt.b      $c1e
000bba: 002f63302f5f ori.b      #$30, $2f5f(a7)
000bc0: 3132385f     move.w     $5f(a2, d3.l), -(a0)
000bc4: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
000bce: 6374         bls.b      $c44
000bd0: 726c         moveq      #$6c, d1
000bd2: 5f63         subq.w     #$7, -(a3)
000bd4: 6f6e         ble.b      $c44
000bd6: 66002f63     bne.w      $3b3b
000bda: 302f5f31     move.w     $5f31(a7), d0
000bde: 32385f2f     move.w     $5f2f.w, d1
000be2: 7069         moveq      #$69, d0
000be4: 7065         moveq      #$65, d0
000be6: 2f627369     move.l     -(a2), $7369(a7)
000bea: 5f746573745f6374726c5f63 subq.w     #$7, ([$745f6374, a4], $726c5f63)
000bf6: 6f6e         ble.b      $c66
000bf8: 66002f63     bne.w      $3b5d
000bfc: 302f5f31     move.w     $5f31(a7), d0
000c00: 32395f2f7069 move.w     $5f2f7069.l, d1
000c06: 7065         moveq      #$65, d0
000c08: 2f627369     move.l     -(a2), $7369(a7)
000c0c: 5f6e6176     subq.w     #$7, $6176(a6)
000c10: 5f726571002f6330 subq.w     #$7, ([$2f6330, a2])
000c18: 2f5f3132     move.l     (a7)+, $3132(a7)
000c1c: 395f2f70     move.w     (a7)+, $2f70(a4)
000c20: 6970         bvs.b      $c92
000c22: 652f         bcs.b      $c53
000c24: 6273         bhi.b      $c99
000c26: 695f         bvs.b      $c87
000c28: 7465         moveq      #$65, d2
000c2a: 7374         .dc.w      $7374
000c2c: 5f6e6176     subq.w     #$7, $6176(a6)
000c30: 5f726571002f6330 subq.w     #$7, ([$2f6330, a2])
000c38: 2f5f3132     move.l     (a7)+, $3132(a7)
000c3c: 385f         movea.w    (a7)+, a4
000c3e: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
000c48: 6e61         bgt.b      $cab
000c4a: 765f         moveq      #$5f, d3
000c4c: 696e         bvs.b      $cbc
000c4e: 666f         bne.b      $cbf
000c50: 002f63302f5f ori.b      #$30, $2f5f(a7)
000c56: 3132385f     move.w     $5f(a2, d3.l), -(a0)
000c5a: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
000c64: 7465         moveq      #$65, d2
000c66: 7374         .dc.w      $7374
000c68: 5f6e6176     subq.w     #$7, $6176(a6)
000c6c: 5f696e66     subq.w     #$7, $6e66(a1)
000c70: 6f002f63     ble.w      $3bd5
000c74: 302f5f31     move.w     $5f31(a7), d0
000c78: 32395f2f7069 move.w     $5f2f7069.l, d1
000c7e: 7065         moveq      #$65, d0
000c80: 2f627369     move.l     -(a2), $7369(a7)
000c84: 5f6d715f     subq.w     #$7, $715f(a5)
000c88: 7265         moveq      #$65, d1
000c8a: 7175         .dc.w      $7175
000c8c: 6573         bcs.b      $d01
000c8e: 7400         moveq      #$0, d2
000c90: 2f63302f     move.l     -(a3), $302f(a7)
000c94: 5f313239     subq.b     #$7, $39(a1, d3.w)
000c98: 5f2f7069     subq.b     #$7, $7069(a7)
000c9c: 7065         moveq      #$65, d0
000c9e: 2f627369     move.l     -(a2), $7369(a7)
000ca2: 5f746573745f6d715f726571 subq.w     #$7, ([$745f6d71, a4], $5f726571)
000cae: 7565         .dc.w      $7565
000cb0: 7374         .dc.w      $7374
000cb2: 002f63302f5f ori.b      #$30, $2f5f(a7)
000cb8: 3132385f     move.w     $5f(a2, d3.l), -(a0)
000cbc: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
000cc6: 6d71         blt.b      $d39
000cc8: 5f61         subq.w     #$7, -(a1)
000cca: 6e73         bgt.b      $d3f
000ccc: 7765         .dc.w      $7765
000cce: 7200         moveq      #$0, d1
000cd0: 2f63302f     move.l     -(a3), $302f(a7)
000cd4: 5f313238     subq.b     #$7, $38(a1, d3.w)
000cd8: 5f2f7069     subq.b     #$7, $7069(a7)
000cdc: 7065         moveq      #$65, d0
000cde: 2f627369     move.l     -(a2), $7369(a7)
000ce2: 5f746573745f6d715f616e73 subq.w     #$7, ([$745f6d71, a4], $5f616e73)
000cee: 7765         .dc.w      $7765
000cf0: 7200         moveq      #$0, d1
000cf2: 2f63302f     move.l     -(a3), $302f(a7)
000cf6: 5f313238     subq.b     #$7, $38(a1, d3.w)
000cfa: 5f2f7069     subq.b     #$7, $7069(a7)
000cfe: 7065         moveq      #$65, d0
000d00: 2f627369     move.l     -(a2), $7369(a7)
000d04: 5f766f696365 subq.w     #$7, ([$6365, a6])
000d0a: 5f6d7367     subq.w     #$7, $7367(a5)
000d0e: 002f63302f5f ori.b      #$30, $2f5f(a7)
000d14: 3132385f     move.w     $5f(a2, d3.l), -(a0)
000d18: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
000d22: 7465         moveq      #$65, d2
000d24: 7374         .dc.w      $7374
000d26: 5f766f696365 subq.w     #$7, ([$6365, a6])
000d2c: 5f6d7367     subq.w     #$7, $7367(a5)
000d30: 002f63302f5f ori.b      #$30, $2f5f(a7)
000d36: 3132385f     move.w     $5f(a2, d3.l), -(a0)
000d3a: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
000d44: 7374         .dc.w      $7374
000d46: 6174         bsr.b      $dbc
000d48: 7573         .dc.w      $7573
000d4a: 5f726570002f6330 subq.w     #$7, $2f6330(a2, invalid.w)
000d52: 2f5f3132     move.l     (a7)+, $3132(a7)
000d56: 385f         movea.w    (a7)+, a4
000d58: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
000d62: 7465         moveq      #$65, d2
000d64: 7374         .dc.w      $7374
000d66: 5f737461     subq.w     #$7, $61(a3, d7.w)
000d6a: 7475         moveq      #$75, d2
000d6c: 735f         .dc.w      $735f
000d6e: 7265         moveq      #$65, d1
000d70: 7000         moveq      #$0, d0
000d72: 2f63302f     move.l     -(a3), $302f(a7)
000d76: 5f313238     subq.b     #$7, $38(a1, d3.w)
000d7a: 5f2f7069     subq.b     #$7, $7069(a7)
000d7e: 7065         moveq      #$65, d0
000d80: 2f627369     move.l     -(a2), $7369(a7)
000d84: 5f63         subq.w     #$7, -(a3)
000d86: 6172         bsr.b      $dfa
000d88: 5f6c6f63     subq.w     #$7, $6f63(a4)
000d8c: 6174         bsr.b      $e02
000d8e: 696f         bvs.b      $dff
000d90: 6e002f63     bgt.w      $3cf5
000d94: 302f5f31     move.w     $5f31(a7), d0
000d98: 32385f2f     move.w     $5f2f.w, d1
000d9c: 7069         moveq      #$69, d0
000d9e: 7065         moveq      #$65, d0
000da0: 2f627369     move.l     -(a2), $7369(a7)
000da4: 5f746573745f6361725f6c6f subq.w     #$7, ([$745f6361, a4], $725f6c6f)
000db0: 6361         bls.b      $e13
000db2: 7469         moveq      #$69, d2
000db4: 6f6e         ble.b      $e24
000db6: 00004e55     ori.b      #$55, d0
000dba: 000048e7     ori.b      #$e7, d0
000dbe: c080         and.l      d0, d0
000dc0: 518f         subq.l     #$8, a7
000dc2: 70ff         moveq      #$ff, d0
000dc4: 2e80         move.l     d0, (a7)
000dc6: 7201         moveq      #$1, d1
000dc8: 41fa00aa     lea.l      $e74(pc), a0
000dcc: 2008         move.l     a0, d0
000dce: 61000b76     bsr.w      $1946
000dd2: 2f400004     move.l     d0, $4(a7)
000dd6: 72ff         moveq      #$ff, d1
000dd8: b280         cmp.l      d0, d1
000dda: 6604         bne.b      $de0
000ddc: 70ff         moveq      #$ff, d0
000dde: 602a         bra.b      $e0a
000de0: 48780004     pea.l      $4.w
000de4: 222f000c     move.l     $c(a7), d1
000de8: 202f0008     move.l     $8(a7), d0
000dec: 61001c70     bsr.w      $2a5e
000df0: 588f         addq.l     #$4, a7
000df2: 7204         moveq      #$4, d1
000df4: b280         cmp.l      d0, d1
000df6: 6604         bne.b      $dfc
000df8: 7000         moveq      #$0, d0
000dfa: 6002         bra.b      $dfe
000dfc: 70ff         moveq      #$ff, d0
000dfe: 2e80         move.l     d0, (a7)
000e00: 202f0004     move.l     $4(a7), d0
000e04: 61001c74     bsr.w      $2a7a
000e08: 2017         move.l     (a7), d0
000e0a: 508f         addq.l     #$8, a7
000e0c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e12: 4e5d         unlk       a5
000e14: 4e75         rts        
000e16: 4e550000     link.w     a5, #$0
000e1a: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e1e: 518f         subq.l     #$8, a7
000e20: 70ff         moveq      #$ff, d0
000e22: 2e80         move.l     d0, (a7)
000e24: 7202         moveq      #$2, d1
000e26: 41fa0066     lea.l      $e8e(pc), a0
000e2a: 2008         move.l     a0, d0
000e2c: 61000b18     bsr.w      $1946
000e30: 2f400004     move.l     d0, $4(a7)
000e34: 72ff         moveq      #$ff, d1
000e36: b280         cmp.l      d0, d1
000e38: 6604         bne.b      $e3e
000e3a: 70ff         moveq      #$ff, d0
000e3c: 602a         bra.b      $e68
000e3e: 48780004     pea.l      $4.w
000e42: 222f000c     move.l     $c(a7), d1
000e46: 202f0008     move.l     $8(a7), d0
000e4a: 61001c1a     bsr.w      $2a66
000e4e: 588f         addq.l     #$4, a7
000e50: 7204         moveq      #$4, d1
000e52: b280         cmp.l      d0, d1
000e54: 6604         bne.b      $e5a
000e56: 7000         moveq      #$0, d0
000e58: 6002         bra.b      $e5c
000e5a: 70ff         moveq      #$ff, d0
000e5c: 2e80         move.l     d0, (a7)
000e5e: 202f0004     move.l     $4(a7), d0
000e62: 61001c16     bsr.w      $2a7a
000e66: 2017         move.l     (a7), d0
000e68: 508f         addq.l     #$8, a7
000e6a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e70: 4e5d         unlk       a5
000e72: 4e75         rts        
000e74: 2f63302f     move.l     -(a3), $302f(a7)
000e78: 5f313239     subq.b     #$7, $39(a1, d3.w)
000e7c: 5f2f7061     subq.b     #$7, $7061(a7)
000e80: 636b         bls.b      $eed
000e82: 2f627377     move.l     -(a2), $7377(a7)
000e86: 5f63         subq.w     #$7, -(a3)
000e88: 6f6e         ble.b      $ef8
000e8a: 6669         bne.b      $ef5
000e8c: 67002f63     beq.w      $3df1
000e90: 302f5f31     move.w     $5f31(a7), d0
000e94: 32395f2f7061 move.w     $5f2f7061.l, d1
000e9a: 636b         bls.b      $f07
000e9c: 2f627377     move.l     -(a2), $7377(a7)
000ea0: 5f63         subq.w     #$7, -(a3)
000ea2: 6f6e         ble.b      $f12
000ea4: 6669         bne.b      $f0f
000ea6: 67004e55     beq.w      $5cfd
000eaa: 000048e7     ori.b      #$e7, d0
000eae: c000         and.b      d0, d0
000eb0: 4feffff4     lea.l      -$c(a7), a7
000eb4: 70fe         moveq      #$fe, d0
000eb6: b0ae8768     cmp.l      -$7898(a6), d0
000eba: 661c         bne.b      $ed8
000ebc: 7200         moveq      #$0, d1
000ebe: 203c00007fb1 move.l     #$7fb1, d0
000ec4: 610019fc     bsr.w      $28c2
000ec8: 2d408768     move.l     d0, -$7898(a6)
000ecc: 4aae8768     tst.l      -$7898(a6)
000ed0: 6c06         bge.b      $ed8
000ed2: 7001         moveq      #$1, d0
000ed4: 2d408768     move.l     d0, -$7898(a6)
000ed8: 4aae8768     tst.l      -$7898(a6)
000edc: 672a         beq.b      $f08
000ede: 6006         bra.b      $ee6
000ee0: 7001         moveq      #$1, d0
000ee2: 61001ede     bsr.w      $2dc2
000ee6: 202f0020     move.l     $20(a7), d0
000eea: e188         lsl.l      #$8, d0
000eec: 4c2e00008768 mulu.l     -$7898(a6), d0
000ef2: 08c0001f     bset.b     #$1f, d0
000ef6: 2200         move.l     d0, d1
000ef8: 7006         moveq      #$6, d0
000efa: 6100086c     bsr.w      $1768
000efe: 2f400008     move.l     d0, $8(a7)
000f02: 72ff         moveq      #$ff, d1
000f04: b280         cmp.l      d0, d1
000f06: 67d8         beq.b      $ee0
000f08: 2f2f001c     move.l     $1c(a7), -(a7)
000f0c: 222f0014     move.l     $14(a7), d1
000f10: 202f0010     move.l     $10(a7), d0
000f14: 61001b48     bsr.w      $2a5e
000f18: 588f         addq.l     #$4, a7
000f1a: 2e80         move.l     d0, (a7)
000f1c: 4aae8768     tst.l      -$7898(a6)
000f20: 6710         beq.b      $f32
000f22: 202f0008     move.l     $8(a7), d0
000f26: 61000834     bsr.w      $175c
000f2a: 2f400004     move.l     d0, $4(a7)
000f2e: 72ff         moveq      #$ff, d1
000f30: b280         cmp.l      d0, d1
000f32: 2017         move.l     (a7), d0
000f34: 4fef000c     lea.l      $c(a7), a7
000f38: 4e5d         unlk       a5
000f3a: 4e75         rts        
000f3c: 4e550000     link.w     a5, #$0
000f40: 48e7c000     movem.l    d0-d1, -(a7)
000f44: 4feffff4     lea.l      -$c(a7), a7
000f48: 70fe         moveq      #$fe, d0
000f4a: b0ae876c     cmp.l      -$7894(a6), d0
000f4e: 661c         bne.b      $f6c
000f50: 7200         moveq      #$0, d1
000f52: 203c00007fb1 move.l     #$7fb1, d0
000f58: 61001968     bsr.w      $28c2
000f5c: 2d40876c     move.l     d0, -$7894(a6)
000f60: 4aae876c     tst.l      -$7894(a6)
000f64: 6c06         bge.b      $f6c
000f66: 7001         moveq      #$1, d0
000f68: 2d40876c     move.l     d0, -$7894(a6)
000f6c: 4aae876c     tst.l      -$7894(a6)
000f70: 672a         beq.b      $f9c
000f72: 6006         bra.b      $f7a
000f74: 7001         moveq      #$1, d0
000f76: 61001e4a     bsr.w      $2dc2
000f7a: 202f0020     move.l     $20(a7), d0
000f7e: e188         lsl.l      #$8, d0
000f80: 4c2e0000876c mulu.l     -$7894(a6), d0
000f86: 08c0001f     bset.b     #$1f, d0
000f8a: 2200         move.l     d0, d1
000f8c: 7006         moveq      #$6, d0
000f8e: 610007d8     bsr.w      $1768
000f92: 2f400008     move.l     d0, $8(a7)
000f96: 72ff         moveq      #$ff, d1
000f98: b280         cmp.l      d0, d1
000f9a: 67d8         beq.b      $f74
000f9c: 2f2f001c     move.l     $1c(a7), -(a7)
000fa0: 222f0014     move.l     $14(a7), d1
000fa4: 202f0010     move.l     $10(a7), d0
000fa8: 61001abc     bsr.w      $2a66
000fac: 588f         addq.l     #$4, a7
000fae: 2e80         move.l     d0, (a7)
000fb0: 4aae876c     tst.l      -$7894(a6)
000fb4: 6710         beq.b      $fc6
000fb6: 202f0008     move.l     $8(a7), d0
000fba: 610007a0     bsr.w      $175c
000fbe: 2f400004     move.l     d0, $4(a7)
000fc2: 72ff         moveq      #$ff, d1
000fc4: b280         cmp.l      d0, d1
000fc6: 2017         move.l     (a7), d0
000fc8: 4fef000c     lea.l      $c(a7), a7
000fcc: 4e5d         unlk       a5
000fce: 4e75         rts        
000fd0: 4e550000     link.w     a5, #$0
000fd4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000fd8: 5d8f         subq.l     #$6, a7
000fda: 70ff         moveq      #$ff, d0
000fdc: 2f400002     move.l     d0, $2(a7)
000fe0: 2f2f0022     move.l     $22(a7), -(a7)
000fe4: 48780002     pea.l      $2.w
000fe8: 41ef0008     lea.l      $8(a7), a0
000fec: 2208         move.l     a0, d1
000fee: 202f000e     move.l     $e(a7), d0
000ff2: 6100feb4     bsr.w      $ea8
000ff6: 508f         addq.l     #$8, a7
000ff8: 7202         moveq      #$2, d1
000ffa: b280         cmp.l      d0, d1
000ffc: 6600008c     bne.w      $108a
001000: 3057         movea.w    (a7), a0
001002: 226f001e     movea.l    $1e(a7), a1
001006: 2288         move.l     a0, (a1)
001008: 206f001e     movea.l    $1e(a7), a0
00100c: 2010         move.l     (a0), d0
00100e: 61001aae     bsr.w      $2abe
001012: 206f000a     movea.l    $a(a7), a0
001016: 2080         move.l     d0, (a0)
001018: 6740         beq.b      $105a
00101a: 2f2f0022     move.l     $22(a7), -(a7)
00101e: 206f0022     movea.l    $22(a7), a0
001022: 2f10         move.l     (a0), -(a7)
001024: 206f0012     movea.l    $12(a7), a0
001028: 2210         move.l     (a0), d1
00102a: 202f000e     move.l     $e(a7), d0
00102e: 6100fe78     bsr.w      $ea8
001032: 508f         addq.l     #$8, a7
001034: 206f001e     movea.l    $1e(a7), a0
001038: b090         cmp.l      (a0), d0
00103a: 6606         bne.b      $1042
00103c: 42af0002     clr.l      $2(a7)
001040: 6048         bra.b      $108a
001042: 206f001e     movea.l    $1e(a7), a0
001046: 4290         clr.l      (a0)
001048: 206f000a     movea.l    $a(a7), a0
00104c: 2010         move.l     (a0), d0
00104e: 61001a7a     bsr.w      $2aca
001052: 206f000a     movea.l    $a(a7), a0
001056: 4290         clr.l      (a0)
001058: 6030         bra.b      $108a
00105a: 558f         subq.l     #$2, a7
00105c: 6018         bra.b      $1076
00105e: 2f2f0024     move.l     $24(a7), -(a7)
001062: 48780001     pea.l      $1.w
001066: 41ef0009     lea.l      $9(a7), a0
00106a: 2208         move.l     a0, d1
00106c: 202f0010     move.l     $10(a7), d0
001070: 6100fe36     bsr.w      $ea8
001074: 508f         addq.l     #$8, a7
001076: 206f0020     movea.l    $20(a7), a0
00107a: 2010         move.l     (a0), d0
00107c: 5390         subq.l     #$1, (a0)
00107e: 4a80         tst.l      d0
001080: 66dc         bne.b      $105e
001082: 206f0020     movea.l    $20(a7), a0
001086: 4290         clr.l      (a0)
001088: 548f         addq.l     #$2, a7
00108a: 202f0002     move.l     $2(a7), d0
00108e: 5c8f         addq.l     #$6, a7
001090: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001096: 4e5d         unlk       a5
001098: 4e75         rts        
00109a: 4e550000     link.w     a5, #$0
00109e: 48e7c080     movem.l    d0-d1/a0, -(a7)
0010a2: 5d8f         subq.l     #$6, a7
0010a4: 70ff         moveq      #$ff, d0
0010a6: 2f400002     move.l     d0, $2(a7)
0010aa: 3eaf001c     move.w     $1c(a7), (a7)
0010ae: 2f2f001e     move.l     $1e(a7), -(a7)
0010b2: 48780002     pea.l      $2.w
0010b6: 41ef0008     lea.l      $8(a7), a0
0010ba: 2208         move.l     a0, d1
0010bc: 202f000e     move.l     $e(a7), d0
0010c0: 6100fe7a     bsr.w      $f3c
0010c4: 508f         addq.l     #$8, a7
0010c6: 7202         moveq      #$2, d1
0010c8: b280         cmp.l      d0, d1
0010ca: 6620         bne.b      $10ec
0010cc: 2f2f001e     move.l     $1e(a7), -(a7)
0010d0: 2f2f001e     move.l     $1e(a7), -(a7)
0010d4: 222f0012     move.l     $12(a7), d1
0010d8: 202f000e     move.l     $e(a7), d0
0010dc: 6100fe5e     bsr.w      $f3c
0010e0: 508f         addq.l     #$8, a7
0010e2: b0af001a     cmp.l      $1a(a7), d0
0010e6: 6604         bne.b      $10ec
0010e8: 42af0002     clr.l      $2(a7)
0010ec: 202f0002     move.l     $2(a7), d0
0010f0: 5c8f         addq.l     #$6, a7
0010f2: 4ced0100fffc movem.l    -$4(a5), a0
0010f8: 4e5d         unlk       a5
0010fa: 4e75         rts        
0010fc: 4e550000     link.w     a5, #$0
001100: 48e78080     movem.l    d0/a0, -(a7)
001104: 202e8774     move.l     -$788c(a6), d0
001108: 52ae8774     addq.l     #$1, -$788c(a6)
00110c: 41ee81b8     lea.l      -$7e48(a6), a0
001110: 21970c00     move.l     (a7), (a0, d0.l * 4)
001114: 703f         moveq      #$3f, d0
001116: b0ae8774     cmp.l      -$788c(a6), d0
00111a: 6c04         bge.b      $1120
00111c: 42ae8774     clr.l      -$788c(a6)
001120: 4ced0100fffc movem.l    -$4(a5), a0
001126: 4e5d         unlk       a5
001128: 4e75         rts        
00112a: 4e550000     link.w     a5, #$0
00112e: 48e78080     movem.l    d0/a0, -(a7)
001132: 598f         subq.l     #$4, a7
001134: 202e8770     move.l     -$7890(a6), d0
001138: b0ae8774     cmp.l      -$788c(a6), d0
00113c: 6604         bne.b      $1142
00113e: 70ff         moveq      #$ff, d0
001140: 601e         bra.b      $1160
001142: 202e8770     move.l     -$7890(a6), d0
001146: 52ae8770     addq.l     #$1, -$7890(a6)
00114a: 41ee81b8     lea.l      -$7e48(a6), a0
00114e: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
001152: 703f         moveq      #$3f, d0
001154: b0ae8770     cmp.l      -$7890(a6), d0
001158: 6c04         bge.b      $115e
00115a: 42ae8770     clr.l      -$7890(a6)
00115e: 2017         move.l     (a7), d0
001160: 588f         addq.l     #$4, a7
001162: 4ced0100fffc movem.l    -$4(a5), a0
001168: 4e5d         unlk       a5
00116a: 4e75         rts        
00116c: 4e550000     link.w     a5, #$0
001170: 48e78000     movem.l    d0, -(a7)
001174: 4e5d         unlk       a5
001176: 4e75         rts        
001178: 4e550000     link.w     a5, #$0
00117c: 48e78000     movem.l    d0, -(a7)
001180: 202e8770     move.l     -$7890(a6), d0
001184: b0ae8774     cmp.l      -$788c(a6), d0
001188: 6604         bne.b      $118e
00118a: 7001         moveq      #$1, d0
00118c: 6002         bra.b      $1190
00118e: 7000         moveq      #$0, d0
001190: 4e5d         unlk       a5
001192: 4e75         rts        
001194: 4e550000     link.w     a5, #$0
001198: 48e78000     movem.l    d0, -(a7)
00119c: 2017         move.l     (a7), d0
00119e: 610011c6     bsr.w      $2366
0011a2: 7001         moveq      #$1, d0
0011a4: 4e5d         unlk       a5
0011a6: 4e75         rts        
0011a8: 4e550000     link.w     a5, #$0
0011ac: 48e78000     movem.l    d0, -(a7)
0011b0: 7001         moveq      #$1, d0
0011b2: 4e5d         unlk       a5
0011b4: 4e75         rts        
0011b6: 4e550000     link.w     a5, #$0
0011ba: 48e78800     movem.l    d0/d4, -(a7)
0011be: 610004ba     bsr.w      $167a
0011c2: 6100ff66     bsr.w      $112a
0011c6: 2800         move.l     d0, d4
0011c8: 6c0c         bge.b      $11d6
0011ca: 7000         moveq      #$0, d0
0011cc: 61001bf4     bsr.w      $2dc2
0011d0: 6100ff58     bsr.w      $112a
0011d4: 2800         move.l     d0, d4
0011d6: 610004ce     bsr.w      $16a6
0011da: 2004         move.l     d4, d0
0011dc: 4ced0010fffc movem.l    -$4(a5), d4
0011e2: 4e5d         unlk       a5
0011e4: 4e75         rts        
0011e6: 0008         .dc.w      $0008
0011e8: 006e000c006a ori.w      #$c, $6a(a6)
0011ee: 00100066     ori.b      #$66, (a0)
0011f2: 00140062     ori.b      #$62, (a4)
0011f6: 0018005e     ori.b      #$5e, (a0)+
0011fa: 001c005a     ori.b      #$5a, (a4)+
0011fe: 00200056     ori.b      #$56, -(a0)
001202: 002c00520028 ori.b      #$52, $28(a4)
001208: 004e         .dc.w      $004e
00120a: ffff         dc.w       $ffff
00120c: 0008         .dc.w      $0008
00120e: 0000000c     ori.b      #$c, d0
001212: 00000010     ori.b      #$10, d0
001216: 00000014     ori.b      #$14, d0
00121a: 00000018     ori.b      #$18, d0
00121e: 0000001c     ori.b      #$1c, d0
001222: 00000020     ori.b      #$20, d0
001226: 0000002c     ori.b      #$2c, d0
00122a: 00000028     ori.b      #$28, d0
00122e: 0000ffff     ori.b      #$ff, d0
001232: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
001236: 43faffae     lea.l      $11e6(pc), a1
00123a: 6008         bra.b      $1244
00123c: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
001240: 43faffca     lea.l      $120c(pc), a1
001244: 91c8         suba.l     a0, a0
001246: 4e40         trap       #$0
001248: 000e         .dc.w      $000e
00124a: 6406         bcc.b      $1252
00124c: 2d41800c     move.l     d1, -$7ff4(a6)
001250: 70ff         moveq      #$ff, d0
001252: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
001256: 4e75         rts        
001258: 48e70004     movem.l    a5, -(a7)
00125c: 91ee8788     suba.l     -$7878(a6), a0
001260: 2d488780     move.l     a0, -$7880(a6)
001264: 41ee82b8     lea.l      -$7d48(a6), a0
001268: 202e877c     move.l     -$7884(a6), d0
00126c: e248         lsr.w      #$1, d0
00126e: 5340         subq.w     #$1, d0
001270: 30dd         move.w     (a5)+, (a0)+
001272: 51c8fffc     dbra       d0, $1270
001276: 4cdf2000     movem.l    (a7)+, a5
00127a: e44f         lsr.w      #$2, d7
00127c: 3d478784     move.w     d7, -$787c(a6)
001280: 206e8300     movea.l    -$7d00(a6), a0
001284: 4e90         jsr        (a0)
001286: 4a80         tst.l      d0
001288: 6708         beq.b      $1292
00128a: 7264         moveq      #$64, d1
00128c: d247         add.w      d7, d1
00128e: 4e40         trap       #$0
001290: 00064cdf     ori.b      #$df, d6
001294: 7fff         .dc.w      $7fff
001296: 588f         addq.l     #$4, a7
001298: 44df         move.w     (a7)+, ccr
00129a: 4e75         rts        
00129c: 4e550000     link.w     a5, #$0
0012a0: 48e78000     movem.l    d0, -(a7)
0012a4: 1d7c00018786 move.b     #$1, -$787a(a6)
0012aa: 4e5d         unlk       a5
0012ac: 4e75         rts        
0012ae: 4e550000     link.w     a5, #$0
0012b2: 48e78000     movem.l    d0, -(a7)
0012b6: 2d578300     move.l     (a7), -$7d00(a6)
0012ba: 6606         bne.b      $12c2
0012bc: 6100ff7e     bsr.w      $123c
0012c0: 6004         bra.b      $12c6
0012c2: 6100ff6e     bsr.w      $1232
0012c6: 4e5d         unlk       a5
0012c8: 4e75         rts        
0012ca: 4e550000     link.w     a5, #$0
0012ce: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0012d2: 4fefffd4     lea.l      -$2c(a7), a7
0012d6: 604a         bra.b      $1322
0012d8: 2ebc000000b5 move.l     #$b5, (a7)
0012de: 60000076     bra.w      $1356
0012e2: 2ebc000000b6 move.l     #$b6, (a7)
0012e8: 606c         bra.b      $1356
0012ea: 2ebc000000b7 move.l     #$b7, (a7)
0012f0: 6064         bra.b      $1356
0012f2: 2ebc000000b8 move.l     #$b8, (a7)
0012f8: 605c         bra.b      $1356
0012fa: 2ebc000000b9 move.l     #$b9, (a7)
001300: 6054         bra.b      $1356
001302: 2ebc000000ba move.l     #$ba, (a7)
001308: 604c         bra.b      $1356
00130a: 2ebc000000b2 move.l     #$b2, (a7)
001310: 6044         bra.b      $1356
001312: 2ebc000000c0 move.l     #$c0, (a7)
001318: 603c         bra.b      $1356
00131a: 2ebc000000b3 move.l     #$b3, (a7)
001320: 6034         bra.b      $1356
001322: 302e8784     move.w     -$787c(a6), d0
001326: 48c0         ext.l      d0
001328: 7264         moveq      #$64, d1
00132a: d081         add.l      d1, d0
00132c: 048000000066 subi.l     #$66, d0
001332: 0c8000000009 cmpi.l     #$9, d0
001338: 62e0         bhi.b      $131a
00133a: 303b0206     move.w     $1342(pc, d0.w), d0
00133e: 4efb0002     jmp        $1342(pc, d0.w)
001342: ff96         dc.w       $ff96
001344: ffa0         dc.w       $ffa0
001346: ffa8         dc.w       $ffa8
001348: ffb0         dc.w       $ffb0
00134a: ffb8         dc.w       $ffb8
00134c: ffc0         dc.w       $ffc0
00134e: ffc8         dc.w       $ffc8
001350: ffd8         dc.w       $ffd8
001352: ffd0         dc.w       $ffd0
001354: ffd0         dc.w       $ffd0
001356: 0c97000000ba cmpi.l     #$ba, (a7)
00135c: 660c         bne.b      $136a
00135e: 4a2e8786     tst.b      -$787a(a6)
001362: 6706         beq.b      $136a
001364: 7000         moveq      #$0, d0
001366: 600001ec     bra.w      $1554
00136a: 2f2e8780     move.l     -$7880(a6), -(a7)
00136e: 306e8784     movea.w    -$787c(a6), a0
001372: 2f08         move.l     a0, -(a7)
001374: 61001728     bsr.w      $2a9e
001378: 2200         move.l     d0, d1
00137a: 41fa01f0     lea.l      $156c(pc), a0
00137e: 2008         move.l     a0, d0
001380: 61001680     bsr.w      $2a02
001384: 508f         addq.l     #$8, a7
001386: 61001ce6     bsr.w      $306e
00138a: 2f00         move.l     d0, -(a7)
00138c: 61001710     bsr.w      $2a9e
001390: 2f00         move.l     d0, -(a7)
001392: 2f2e8778     move.l     -$7888(a6), -(a7)
001396: 41fa01fb     lea.l      $1593(pc), a0
00139a: 2208         move.l     a0, d1
00139c: 41ef0010     lea.l      $10(a7), a0
0013a0: 2008         move.l     a0, d0
0013a2: 61001666     bsr.w      $2a0a
0013a6: 4fef000c     lea.l      $c(a7), a7
0013aa: 41fa01ef     lea.l      $159b(pc), a0
0013ae: 2208         move.l     a0, d1
0013b0: 41ef0004     lea.l      $4(a7), a0
0013b4: 2008         move.l     a0, d0
0013b6: 6100161a     bsr.w      $29d2
0013ba: 2440         movea.l    d0, a2
0013bc: 4a80         tst.l      d0
0013be: 6604         bne.b      $13c4
0013c0: 45ee8368     lea.l      -$7c98(a6), a2
0013c4: 2f2e8780     move.l     -$7880(a6), -(a7)
0013c8: 306e8784     movea.w    -$787c(a6), a0
0013cc: 2f08         move.l     a0, -(a7)
0013ce: 610016ce     bsr.w      $2a9e
0013d2: 2f00         move.l     d0, -(a7)
0013d4: 41fa01c7     lea.l      $159d(pc), a0
0013d8: 2208         move.l     a0, d1
0013da: 200a         move.l     a2, d0
0013dc: 61001628     bsr.w      $2a06
0013e0: 4fef000c     lea.l      $c(a7), a7
0013e4: 7800         moveq      #$0, d4
0013e6: 6018         bra.b      $1400
0013e8: 41ee82b8     lea.l      -$7d48(a6), a0
0013ec: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
0013f0: 41fa01d6     lea.l      $15c8(pc), a0
0013f4: 2208         move.l     a0, d1
0013f6: 200a         move.l     a2, d0
0013f8: 6100160c     bsr.w      $2a06
0013fc: 588f         addq.l     #$4, a7
0013fe: 5284         addq.l     #$1, d4
001400: 7008         moveq      #$8, d0
001402: b084         cmp.l      d4, d0
001404: 6ee2         bgt.b      $13e8
001406: 41fa01c7     lea.l      $15cf(pc), a0
00140a: 2208         move.l     a0, d1
00140c: 200a         move.l     a2, d0
00140e: 610015f6     bsr.w      $2a06
001412: 6018         bra.b      $142c
001414: 41ee82b8     lea.l      -$7d48(a6), a0
001418: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
00141c: 41fa01b7     lea.l      $15d5(pc), a0
001420: 2208         move.l     a0, d1
001422: 200a         move.l     a2, d0
001424: 610015e0     bsr.w      $2a06
001428: 588f         addq.l     #$4, a7
00142a: 5284         addq.l     #$1, d4
00142c: 7010         moveq      #$10, d0
00142e: b084         cmp.l      d4, d0
001430: 6ee2         bgt.b      $1414
001432: 41fa01a8     lea.l      $15dc(pc), a0
001436: 2208         move.l     a0, d1
001438: 200a         move.l     a2, d0
00143a: 610015ca     bsr.w      $2a06
00143e: 266e82ec     movea.l    -$7d14(a6), a3
001442: 7800         moveq      #$0, d4
001444: 6014         bra.b      $145a
001446: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
00144a: 41fa01ac     lea.l      $15f8(pc), a0
00144e: 2208         move.l     a0, d1
001450: 200a         move.l     a2, d0
001452: 610015b2     bsr.w      $2a06
001456: 588f         addq.l     #$4, a7
001458: 5284         addq.l     #$1, d4
00145a: 7008         moveq      #$8, d0
00145c: b084         cmp.l      d4, d0
00145e: 6ee6         bgt.b      $1446
001460: 41fa019d     lea.l      $15ff(pc), a0
001464: 2208         move.l     a0, d1
001466: 200a         move.l     a2, d0
001468: 6100159c     bsr.w      $2a06
00146c: 266e82f4     movea.l    -$7d0c(a6), a3
001470: 7800         moveq      #$0, d4
001472: 6014         bra.b      $1488
001474: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
001478: 41fa01a0     lea.l      $161a(pc), a0
00147c: 2208         move.l     a0, d1
00147e: 200a         move.l     a2, d0
001480: 61001584     bsr.w      $2a06
001484: 588f         addq.l     #$4, a7
001486: 5284         addq.l     #$1, d4
001488: 7008         moveq      #$8, d0
00148a: b084         cmp.l      d4, d0
00148c: 6ee6         bgt.b      $1474
00148e: 41fa0191     lea.l      $1621(pc), a0
001492: 2208         move.l     a0, d1
001494: 200a         move.l     a2, d0
001496: 6100156e     bsr.w      $2a06
00149a: 266e82ec     movea.l    -$7d14(a6), a3
00149e: 2653         movea.l    (a3), a3
0014a0: 7800         moveq      #$0, d4
0014a2: 6014         bra.b      $14b8
0014a4: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0014a8: 41fa01a5     lea.l      $164f(pc), a0
0014ac: 2208         move.l     a0, d1
0014ae: 200a         move.l     a2, d0
0014b0: 61001554     bsr.w      $2a06
0014b4: 588f         addq.l     #$4, a7
0014b6: 5284         addq.l     #$1, d4
0014b8: 7008         moveq      #$8, d0
0014ba: b084         cmp.l      d4, d0
0014bc: 6ee6         bgt.b      $14a4
0014be: 082e000082f9 btst.b     #$0, -$7d07(a6)
0014c4: 6704         beq.b      $14ca
0014c6: 7043         moveq      #$43, d0
0014c8: 6002         bra.b      $14cc
0014ca: 702d         moveq      #$2d, d0
0014cc: 2f00         move.l     d0, -(a7)
0014ce: 082e000182f9 btst.b     #$1, -$7d07(a6)
0014d4: 6704         beq.b      $14da
0014d6: 7056         moveq      #$56, d0
0014d8: 6002         bra.b      $14dc
0014da: 702d         moveq      #$2d, d0
0014dc: 2f00         move.l     d0, -(a7)
0014de: 082e000282f9 btst.b     #$2, -$7d07(a6)
0014e4: 6704         beq.b      $14ea
0014e6: 705a         moveq      #$5a, d0
0014e8: 6002         bra.b      $14ec
0014ea: 702d         moveq      #$2d, d0
0014ec: 2f00         move.l     d0, -(a7)
0014ee: 082e000382f9 btst.b     #$3, -$7d07(a6)
0014f4: 6704         beq.b      $14fa
0014f6: 704e         moveq      #$4e, d0
0014f8: 6002         bra.b      $14fc
0014fa: 702d         moveq      #$2d, d0
0014fc: 2f00         move.l     d0, -(a7)
0014fe: 082e000482f9 btst.b     #$4, -$7d07(a6)
001504: 6704         beq.b      $150a
001506: 7058         moveq      #$58, d0
001508: 6002         bra.b      $150c
00150a: 702d         moveq      #$2d, d0
00150c: 2f00         move.l     d0, -(a7)
00150e: 303c00ff     move.w     #$ff, d0
001512: c06e82f8     and.w      -$7d08(a6), d0
001516: 7200         moveq      #$0, d1
001518: 3200         move.w     d0, d1
00151a: 2f01         move.l     d1, -(a7)
00151c: 2f2e82fa     move.l     -$7d06(a6), -(a7)
001520: 41fa0134     lea.l      $1656(pc), a0
001524: 2208         move.l     a0, d1
001526: 200a         move.l     a2, d0
001528: 610014dc     bsr.w      $2a06
00152c: 4fef001c     lea.l      $1c(a7), a7
001530: 41ee8368     lea.l      -$7c98(a6), a0
001534: b1ca         cmpa.l     a2, a0
001536: 6706         beq.b      $153e
001538: 200a         move.l     a2, d0
00153a: 610014ea     bsr.w      $2a26
00153e: 2f2e8780     move.l     -$7880(a6), -(a7)
001542: 61001b2a     bsr.w      $306e
001546: 2200         move.l     d0, d1
001548: 202f0004     move.l     $4(a7), d0
00154c: 61000270     bsr.w      $17be
001550: 588f         addq.l     #$4, a7
001552: 70ff         moveq      #$ff, d0
001554: 4fef002c     lea.l      $2c(a7), a7
001558: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
00155e: 4e5d         unlk       a5
001560: 4e75         rts        
001562: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
001568: 6170         bsr.b      $15da
00156a: 5f00         subq.b     #$7, d0
00156c: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
001572: 6170         bsr.b      $15e4
001574: 2023         move.l     -(a3), d0
001576: 2564206f     move.l     -(a4), $206f(a2)
00157a: 6363         bls.b      $15df
00157c: 7572         .dc.w      $7572
00157e: 7265         moveq      #$65, d1
001580: 6420         bcc.b      $15a2
001582: 6174         bsr.b      $15f8
001584: 206f6666     movea.l    $6666(a7), a0
001588: 7365         .dc.w      $7365
00158a: 743a         moveq      #$3a, d2
00158c: 20307825     move.l     $25(a0, d7.l), d0
001590: 780d         moveq      #$d, d4
001592: 00257325     ori.b      #$25, -(a5)
001596: 735f         .dc.w      $735f
001598: 25640077     move.l     -(a4), $77(a2)
00159c: 0025733a     ori.b      #$3a, -(a5)
0015a0: 2054         movea.l    (a4), a0
0015a2: 7261         moveq      #$61, d1
0015a4: 7020         moveq      #$20, d0
0015a6: 2325         move.l     -(a5), -(a1)
0015a8: 6420         bcc.b      $15ca
0015aa: 6f63         ble.b      $160f
0015ac: 6375         bls.b      $1623
0015ae: 7272         moveq      #$72, d1
0015b0: 6564         bcs.b      $1616
0015b2: 2061         movea.l    -(a1), a0
0015b4: 7420         moveq      #$20, d2
0015b6: 6f66         ble.b      $161e
0015b8: 6673         bne.b      $162d
0015ba: 6574         bcs.b      $1630
0015bc: 3a20         move.w     -(a0), d5
0015be: 30782578     movea.w    $2578.w, a0
0015c2: 0d0d446e     movep.w    $446e(a5), d6
0015c6: 3a00         move.w     d0, d5
0015c8: 2025         move.l     -(a5), d0
0015ca: 30386c58     move.w     $6c58.w, d0
0015ce: 000d         .dc.w      $000d
0015d0: 0d41         bchg.b     d6, d1
0015d2: 6e3a         bgt.b      $160e
0015d4: 00202530     ori.b      #$30, -(a0)
0015d8: 386c5800     movea.w    $5800(a4), a4
0015dc: 0d0d4d65     movep.w    $4d65(a5), d6
0015e0: 6d20         blt.b      $1602
0015e2: 706f         moveq      #$6f, d0
0015e4: 696e         bvs.b      $1654
0015e6: 7465         moveq      #$65, d2
0015e8: 6420         bcc.b      $160a
0015ea: 746f         moveq      #$6f, d2
0015ec: 2062         movea.l    -(a2), a0
0015ee: 7920         .dc.w      $7920
0015f0: 41353a0d     chk.l      $d(a5, d3.l), d0
0015f4: 53353a00     subq.b     #$1, (a5, d3.l * 2)
0015f8: 2025         move.l     -(a5), d0
0015fa: 30386c58     move.w     $6c58.w, d0
0015fe: 000d         .dc.w      $000d
001600: 0d4d656d     movep.l    $656d(a5), d6
001604: 20706f696e74 movea.l    ([$6e74, a0]), a0
00160a: 6564         bcs.b      $1670
00160c: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
001612: 2041         movea.l    d1, a0
001614: 373a0d53     move.w     $2369(pc), -(a3)
001618: 3700         move.w     d0, -(a3)
00161a: 2025         move.l     -(a5), d0
00161c: 30386c58     move.w     $6c58.w, d0
001620: 000d         .dc.w      $000d
001622: 0d4d656d     movep.l    $656d(a5), d6
001626: 20706f696e74 movea.l    ([$6e74, a0]), a0
00162c: 6564         bcs.b      $1692
00162e: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
001634: 20284135     move.l     $4135(a0), d0
001638: 292c2069     move.l     $2069(a4), -(a4)
00163c: 652e         bcs.b      $166c
00163e: 2063         movea.l    -(a3), a0
001640: 6f6e         ble.b      $16b0
001642: 7420         moveq      #$20, d2
001644: 6f66         ble.b      $16ac
001646: 2041         movea.l    d1, a0
001648: 353a0d4d     move.w     $2397(pc), -(a2)
00164c: 353a0020     move.w     $166e(pc), -(a2)
001650: 2530386c     move.l     $6c(a0, d3.l), -(a2)
001654: 5800         addq.b     #$4, d0
001656: 0d0d5043     movep.w    $5043(a5), d6
00165a: 3a20         move.w     -(a0), d5
00165c: 2530386c     move.l     $6c(a0, d3.l), -(a2)
001660: 5820         addq.b     #$4, -(a0)
001662: 2043         movea.l    d3, a0
001664: 433a2025     chk.l      $368b(pc), d1
001668: 30325820     move.w     $20(a2, d5.l), d0
00166c: 2825         move.l     -(a5), d4
00166e: 6325         bls.b      $1695
001670: 6325         bls.b      $1697
001672: 6325         bls.b      $1699
001674: 6325         bls.b      $169b
001676: 6329         bls.b      $16a1
001678: 0d00         btst.l     d6, d0
00167a: 48e74000     movem.l    d1, -(a7)
00167e: 203c00000000 move.l     #$0, d0
001684: 223c00000001 move.l     #$1, d1
00168a: 4e40         trap       #$0
00168c: 0057640c     ori.w      #$640c, (a7)
001690: 2d41800c     move.l     d1, -$7ff4(a6)
001694: 70ff         moveq      #$ff, d0
001696: 4cdf0002     movem.l    (a7)+, d1
00169a: 4e75         rts        
00169c: 4280         clr.l      d0
00169e: 3001         move.w     d1, d0
0016a0: 4cdf0002     movem.l    (a7)+, d1
0016a4: 4e75         rts        
0016a6: 48e74000     movem.l    d1, -(a7)
0016aa: 203c00000000 move.l     #$0, d0
0016b0: 223c00000000 move.l     #$0, d1
0016b6: 4e40         trap       #$0
0016b8: 005764e0     ori.w      #$64e0, (a7)
0016bc: 60d2         bra.b      $1690
0016be: 48e740e0     movem.l    d1/a0-a2, -(a7)
0016c2: 207900000000 movea.l    $0.l, a0
0016c8: 2268004c     movea.l    $4c(a0), a1
0016cc: 4280         clr.l      d0
0016ce: 10290370     move.b     $370(a1), d0
0016d2: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0016d6: 4e75         rts        
0016d8: 48e740e0     movem.l    d1/a0-a2, -(a7)
0016dc: 207900000000 movea.l    $0.l, a0
0016e2: 2268004c     movea.l    $4c(a0), a1
0016e6: 81a90374     or.l       d0, $374(a1)
0016ea: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0016ee: 4e75         rts        
0016f0: 48e740e0     movem.l    d1/a0-a2, -(a7)
0016f4: 207900000000 movea.l    $0.l, a0
0016fa: 2268004c     movea.l    $4c(a0), a1
0016fe: 4480         neg.l      d0
001700: c1a90374     and.l      d0, $374(a1)
001704: 4cdf0702     movem.l    (a7)+, d1/a0-a2
001708: 4e75         rts        
00170a: 640c         bcc.b      $1718
00170c: 3d41800c     move.w     d1, -$7ff4(a6)
001710: 70ff         moveq      #$ff, d0
001712: 6004         bra.b      $1718
001714: 65f6         bcs.b      $170c
001716: 7000         moveq      #$0, d0
001718: 4cdf001e     movem.l    (a7)+, d1-d4
00171c: 4e75         rts        
00171e: 48e77800     movem.l    d1-d4, -(a7)
001722: 282f0014     move.l     $14(a7), d4
001726: 2601         move.l     d1, d3
001728: 2400         move.l     d0, d2
00172a: 7203         moveq      #$3, d1
00172c: 7000         moveq      #$0, d0
00172e: 4e40         trap       #$0
001730: 005660d6     ori.w      #$60d6, (a6)
001734: 48e77800     movem.l    d1-d4, -(a7)
001738: 282f0014     move.l     $14(a7), d4
00173c: 2601         move.l     d1, d3
00173e: 2400         move.l     d0, d2
001740: 7204         moveq      #$4, d1
001742: 7000         moveq      #$0, d0
001744: 4e40         trap       #$0
001746: 005660c0     ori.w      #$60c0, (a6)
00174a: 48e77800     movem.l    d1-d4, -(a7)
00174e: 2601         move.l     d1, d3
001750: 2400         move.l     d0, d2
001752: 7202         moveq      #$2, d1
001754: 7000         moveq      #$0, d0
001756: 4e40         trap       #$0
001758: 005660ae     ori.w      #$60ae, (a6)
00175c: 48e77800     movem.l    d1-d4, -(a7)
001760: 7200         moveq      #$0, d1
001762: 4e40         trap       #$0
001764: 005660ac     ori.w      #$60ac, (a6)
001768: 48e77800     movem.l    d1-d4, -(a7)
00176c: 2601         move.l     d1, d3
00176e: 2400         move.l     d0, d2
001770: 7201         moveq      #$1, d1
001772: 7000         moveq      #$0, d0
001774: 4e40         trap       #$0
001776: 00566090     ori.w      #$6090, (a6)
00177a: 4e550000     link.w     a5, #$0
00177e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001782: 518f         subq.l     #$8, a7
001784: 203c00000100 move.l     #$100, d0
00178a: d0af0008     add.l      $8(a7), d0
00178e: 2e80         move.l     d0, (a7)
001790: 1f6f000f0004 move.b     $f(a7), $4(a7)
001796: 202f001c     move.l     $1c(a7), d0
00179a: e080         asr.l      #$8, d0
00179c: 1f400005     move.b     d0, $5(a7)
0017a0: 1f6f001f0006 move.b     $1f(a7), $6(a7)
0017a6: 1f7c00ff0007 move.b     #$ff, $7(a7)
0017ac: 41d7         lea.l      (a7), a0
0017ae: 2008         move.l     a0, d0
0017b0: 6146         bsr.b      $17f8
0017b2: 508f         addq.l     #$8, a7
0017b4: 4ced0100fffc movem.l    -$4(a5), a0
0017ba: 4e5d         unlk       a5
0017bc: 4e75         rts        
0017be: 4e550000     link.w     a5, #$0
0017c2: 48e7c000     movem.l    d0-d1, -(a7)
0017c6: 2f2f0010     move.l     $10(a7), -(a7)
0017ca: 222f0008     move.l     $8(a7), d1
0017ce: 202f0004     move.l     $4(a7), d0
0017d2: 61a6         bsr.b      $177a
0017d4: 588f         addq.l     #$4, a7
0017d6: 203c00002410 move.l     #$2410, d0
0017dc: 610000bc     bsr.w      $189a
0017e0: 4e5d         unlk       a5
0017e2: 4e75         rts        
0017e4: 4e550000     link.w     a5, #$0
0017e8: 48e78000     movem.l    d0, -(a7)
0017ec: 7000         moveq      #$0, d0
0017ee: 610015d2     bsr.w      $2dc2
0017f2: 60f8         bra.b      $17ec
0017f4: 4e5d         unlk       a5
0017f6: 4e75         rts        
0017f8: 4e550000     link.w     a5, #$0
0017fc: 48e7c080     movem.l    d0-d1/a0, -(a7)
001800: 4aae878c     tst.l      -$7874(a6)
001804: 6c16         bge.b      $181c
001806: 7203         moveq      #$3, d1
001808: 41fa002e     lea.l      $1838(pc), a0
00180c: 2008         move.l     a0, d0
00180e: 61000136     bsr.w      $1946
001812: 2d40878c     move.l     d0, -$7874(a6)
001816: 6c04         bge.b      $181c
001818: 70ff         moveq      #$ff, d0
00181a: 6012         bra.b      $182e
00181c: 2f17         move.l     (a7), -(a7)
00181e: 222e878c     move.l     -$7874(a6), d1
001822: 203c00007f23 move.l     #$7f23, d0
001828: 61000f7a     bsr.w      $27a4
00182c: 588f         addq.l     #$4, a7
00182e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001834: 4e5d         unlk       a5
001836: 4e75         rts        
001838: 2f636339     move.l     -(a3), $6339(a7)
00183c: 3300         move.w     d0, -(a1)
00183e: 4e550000     link.w     a5, #$0
001842: 48e7c080     movem.l    d0-d1/a0, -(a7)
001846: 518f         subq.l     #$8, a7
001848: 7201         moveq      #$1, d1
00184a: 41fa00ce     lea.l      $191a(pc), a0
00184e: 2008         move.l     a0, d0
001850: 610000f4     bsr.w      $1946
001854: 2f400004     move.l     d0, $4(a7)
001858: 72ff         moveq      #$ff, d1
00185a: b280         cmp.l      d0, d1
00185c: 6722         beq.b      $1880
00185e: 48780004     pea.l      $4.w
001862: 41ef0004     lea.l      $4(a7), a0
001866: 2208         move.l     a0, d1
001868: 202f0008     move.l     $8(a7), d0
00186c: 610011f0     bsr.w      $2a5e
001870: 588f         addq.l     #$4, a7
001872: 7204         moveq      #$4, d1
001874: b280         cmp.l      d0, d1
001876: 670c         beq.b      $1884
001878: 202f0004     move.l     $4(a7), d0
00187c: 610011fc     bsr.w      $2a7a
001880: 70ff         moveq      #$ff, d0
001882: 600a         bra.b      $188e
001884: 202f0004     move.l     $4(a7), d0
001888: 610011f0     bsr.w      $2a7a
00188c: 2017         move.l     (a7), d0
00188e: 508f         addq.l     #$8, a7
001890: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001896: 4e5d         unlk       a5
001898: 4e75         rts        
00189a: 4e550000     link.w     a5, #$0
00189e: 48e7c000     movem.l    d0-d1, -(a7)
0018a2: 2217         move.l     (a7), d1
0018a4: 6198         bsr.b      $183e
0018a6: 610003c6     bsr.w      $1c6e
0018aa: 72ff         moveq      #$ff, d1
0018ac: b280         cmp.l      d0, d1
0018ae: 4ced0002fffc movem.l    -$4(a5), d1
0018b4: 4e5d         unlk       a5
0018b6: 4e75         rts        
0018b8: 4e550000     link.w     a5, #$0
0018bc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0018c0: 518f         subq.l     #$8, a7
0018c2: 7202         moveq      #$2, d1
0018c4: 41fa006a     lea.l      $1930(pc), a0
0018c8: 2008         move.l     a0, d0
0018ca: 6100007a     bsr.w      $1946
0018ce: 2f400004     move.l     d0, $4(a7)
0018d2: 72ff         moveq      #$ff, d1
0018d4: b280         cmp.l      d0, d1
0018d6: 6728         beq.b      $1900
0018d8: 61001794     bsr.w      $306e
0018dc: 2e80         move.l     d0, (a7)
0018de: 48780004     pea.l      $4.w
0018e2: 41ef0004     lea.l      $4(a7), a0
0018e6: 2208         move.l     a0, d1
0018e8: 202f0008     move.l     $8(a7), d0
0018ec: 61001178     bsr.w      $2a66
0018f0: 588f         addq.l     #$4, a7
0018f2: 7204         moveq      #$4, d1
0018f4: b280         cmp.l      d0, d1
0018f6: 670c         beq.b      $1904
0018f8: 202f0004     move.l     $4(a7), d0
0018fc: 6100117c     bsr.w      $2a7a
001900: 70ff         moveq      #$ff, d0
001902: 600a         bra.b      $190e
001904: 202f0004     move.l     $4(a7), d0
001908: 61001170     bsr.w      $2a7a
00190c: 7000         moveq      #$0, d0
00190e: 508f         addq.l     #$8, a7
001910: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001916: 4e5d         unlk       a5
001918: 4e75         rts        
00191a: 2f63302f     move.l     -(a3), $302f(a7)
00191e: 5f313239     subq.b     #$7, $39(a1, d3.w)
001922: 5f2f7061     subq.b     #$7, $7061(a7)
001926: 636b         bls.b      $1993
001928: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
00192e: 64002f63     bcc.w      $4893
001932: 302f5f31     move.w     $5f31(a7), d0
001936: 32395f2f7061 move.w     $5f2f7061.l, d1
00193c: 636b         bls.b      $19a9
00193e: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
001944: 64004e55     bcc.w      $679b
001948: 000048e7     ori.b      #$e7, d0
00194c: c000         and.b      d0, d0
00194e: 42a7         clr.l      -(a7)
001950: 222f0008     move.l     $8(a7), d1
001954: 202f0004     move.l     $4(a7), d0
001958: 613e         bsr.b      $1998
00195a: 588f         addq.l     #$4, a7
00195c: 4e5d         unlk       a5
00195e: 4e75         rts        
001960: 4e550000     link.w     a5, #$0
001964: 48e7c000     movem.l    d0-d1, -(a7)
001968: 48780001     pea.l      $1.w
00196c: 222f0008     move.l     $8(a7), d1
001970: 202f0004     move.l     $4(a7), d0
001974: 6122         bsr.b      $1998
001976: 588f         addq.l     #$4, a7
001978: 4e5d         unlk       a5
00197a: 4e75         rts        
00197c: 4e550000     link.w     a5, #$0
001980: 48e7c000     movem.l    d0-d1, -(a7)
001984: 48780002     pea.l      $2.w
001988: 222f0008     move.l     $8(a7), d1
00198c: 202f0004     move.l     $4(a7), d0
001990: 6106         bsr.b      $1998
001992: 588f         addq.l     #$4, a7
001994: 4e5d         unlk       a5
001996: 4e75         rts        
001998: 4e550000     link.w     a5, #$0
00199c: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
0019a0: 4fefffda     lea.l      -$26(a7), a7
0019a4: 41ef0008     lea.l      $8(a7), a0
0019a8: 2208         move.l     a0, d1
0019aa: 202f0026     move.l     $26(a7), d0
0019ae: 61000ad4     bsr.w      $2484
0019b2: 2440         movea.l    d0, a2
0019b4: 4a80         tst.l      d0
0019b6: 67000108     beq.w      $1ac0
0019ba: 41ef0008     lea.l      $8(a7), a0
0019be: 2008         move.l     a0, d0
0019c0: 61000b08     bsr.w      $24ca
0019c4: 2f400004     move.l     d0, $4(a7)
0019c8: 6d0000f6     blt.w      $1ac0
0019cc: 41ef0022     lea.l      $22(a7), a0
0019d0: 2208         move.l     a0, d1
0019d2: 200a         move.l     a2, d0
0019d4: 61000b7a     bsr.w      $2550
0019d8: 2440         movea.l    d0, a2
0019da: 4a80         tst.l      d0
0019dc: 670000e2     beq.w      $1ac0
0019e0: 202f0004     move.l     $4(a7), d0
0019e4: e588         lsl.l      #$2, d0
0019e6: 41ee87d6     lea.l      -$782a(a6), a0
0019ea: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0019f0: 6600009a     bne.w      $1a8c
0019f4: 7203         moveq      #$3, d1
0019f6: 41ef0008     lea.l      $8(a7), a0
0019fa: 2008         move.l     a0, d0
0019fc: 6100104c     bsr.w      $2a4a
001a00: 222f0004     move.l     $4(a7), d1
001a04: e589         lsl.l      #$2, d1
001a06: 41ee87d6     lea.l      -$782a(a6), a0
001a0a: 31801800     move.w     d0, (a0, d1.l)
001a0e: 6d0000ca     blt.w      $1ada
001a12: 202f0004     move.l     $4(a7), d0
001a16: e588         lsl.l      #$2, d0
001a18: 41ee87d6     lea.l      -$782a(a6), a0
001a1c: 2400         move.l     d0, d2
001a1e: 42a7         clr.l      -(a7)
001a20: 202f0008     move.l     $8(a7), d0
001a24: e588         lsl.l      #$2, d0
001a26: 43ee87d6     lea.l      -$782a(a6), a1
001a2a: 32710800     movea.w    (a1, d0.l), a1
001a2e: 2209         move.l     a1, d1
001a30: 203c0000ff0e move.l     #$ff0e, d0
001a36: 61000d08     bsr.w      $2740
001a3a: 588f         addq.l     #$4, a7
001a3c: 2240         movea.l    d0, a1
001a3e: 7000         moveq      #$0, d0
001a40: 1011         move.b     (a1), d0
001a42: 31802802     move.w     d0, $2(a0, d2.l)
001a46: 202f0004     move.l     $4(a7), d0
001a4a: e588         lsl.l      #$2, d0
001a4c: 41ee87d6     lea.l      -$782a(a6), a0
001a50: 4a700800     tst.w      (a0, d0.l)
001a54: 6d36         blt.b      $1a8c
001a56: 202f0004     move.l     $4(a7), d0
001a5a: e588         lsl.l      #$2, d0
001a5c: 41ee87d6     lea.l      -$782a(a6), a0
001a60: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
001a66: 6c24         bge.b      $1a8c
001a68: 202f0004     move.l     $4(a7), d0
001a6c: e588         lsl.l      #$2, d0
001a6e: 41ee87d6     lea.l      -$782a(a6), a0
001a72: 30700800     movea.w    (a0, d0.l), a0
001a76: 2008         move.l     a0, d0
001a78: 61001000     bsr.w      $2a7a
001a7c: 202f0004     move.l     $4(a7), d0
001a80: e588         lsl.l      #$2, d0
001a82: 41ee87d6     lea.l      -$782a(a6), a0
001a86: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
001a8c: 202f0004     move.l     $4(a7), d0
001a90: e588         lsl.l      #$2, d0
001a92: 41ee87d6     lea.l      -$782a(a6), a0
001a96: 30300802     move.w     $2(a0, d0.l), d0
001a9a: 48c0         ext.l      d0
001a9c: b0af0022     cmp.l      $22(a7), d0
001aa0: 661e         bne.b      $1ac0
001aa2: 0c12005f     cmpi.b     #$5f, (a2)
001aa6: 6610         bne.b      $1ab8
001aa8: 6004         bra.b      $1aae
001aaa: 4a12         tst.b      (a2)
001aac: 672c         beq.b      $1ada
001aae: 528a         addq.l     #$1, a2
001ab0: 0c12005f     cmpi.b     #$5f, (a2)
001ab4: 66f4         bne.b      $1aaa
001ab6: 528a         addq.l     #$1, a2
001ab8: 222f002a     move.l     $2a(a7), d1
001abc: 200a         move.l     a2, d0
001abe: 6008         bra.b      $1ac8
001ac0: 222f002a     move.l     $2a(a7), d1
001ac4: 202f0026     move.l     $26(a7), d0
001ac8: 242f004e     move.l     $4e(a7), d2
001acc: e58a         lsl.l      #$2, d2
001ace: 41ee8790     lea.l      -$7870(a6), a0
001ad2: 20702800     movea.l    (a0, d2.l), a0
001ad6: 4e90         jsr        (a0)
001ad8: 6002         bra.b      $1adc
001ada: 70ff         moveq      #$ff, d0
001adc: 4fef0026     lea.l      $26(a7), a7
001ae0: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
001ae6: 4e5d         unlk       a5
001ae8: 4e75         rts        
001aea: 4e550000     link.w     a5, #$0
001aee: 48e7c080     movem.l    d0-d1/a0, -(a7)
001af2: 2f2f0018     move.l     $18(a7), -(a7)
001af6: 306f001a     movea.w    $1a(a7), a0
001afa: 2f08         move.l     a0, -(a7)
001afc: 222f000c     move.l     $c(a7), d1
001b00: 202f0008     move.l     $8(a7), d0
001b04: 610c         bsr.b      $1b12
001b06: 508f         addq.l     #$8, a7
001b08: 4ced0100fffc movem.l    -$4(a5), a0
001b0e: 4e5d         unlk       a5
001b10: 4e75         rts        
001b12: 4e550000     link.w     a5, #$0
001b16: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
001b1a: 4fefffda     lea.l      -$26(a7), a7
001b1e: 41ef0008     lea.l      $8(a7), a0
001b22: 2208         move.l     a0, d1
001b24: 202f0026     move.l     $26(a7), d0
001b28: 6100095a     bsr.w      $2484
001b2c: 2440         movea.l    d0, a2
001b2e: 4a80         tst.l      d0
001b30: 67000112     beq.w      $1c44
001b34: 41ef0008     lea.l      $8(a7), a0
001b38: 2008         move.l     a0, d0
001b3a: 6100098e     bsr.w      $24ca
001b3e: 2f400004     move.l     d0, $4(a7)
001b42: 6d000100     blt.w      $1c44
001b46: 41ef0022     lea.l      $22(a7), a0
001b4a: 2208         move.l     a0, d1
001b4c: 200a         move.l     a2, d0
001b4e: 61000a00     bsr.w      $2550
001b52: 2440         movea.l    d0, a2
001b54: 4a80         tst.l      d0
001b56: 670000ec     beq.w      $1c44
001b5a: 202f0004     move.l     $4(a7), d0
001b5e: e588         lsl.l      #$2, d0
001b60: 41ee87d6     lea.l      -$782a(a6), a0
001b64: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
001b6a: 6600009a     bne.w      $1c06
001b6e: 7203         moveq      #$3, d1
001b70: 41ef0008     lea.l      $8(a7), a0
001b74: 2008         move.l     a0, d0
001b76: 61000ed2     bsr.w      $2a4a
001b7a: 222f0004     move.l     $4(a7), d1
001b7e: e589         lsl.l      #$2, d1
001b80: 41ee87d6     lea.l      -$782a(a6), a0
001b84: 31801800     move.w     d0, (a0, d1.l)
001b88: 6d0000d4     blt.w      $1c5e
001b8c: 202f0004     move.l     $4(a7), d0
001b90: e588         lsl.l      #$2, d0
001b92: 41ee87d6     lea.l      -$782a(a6), a0
001b96: 2400         move.l     d0, d2
001b98: 42a7         clr.l      -(a7)
001b9a: 202f0008     move.l     $8(a7), d0
001b9e: e588         lsl.l      #$2, d0
001ba0: 43ee87d6     lea.l      -$782a(a6), a1
001ba4: 32710800     movea.w    (a1, d0.l), a1
001ba8: 2209         move.l     a1, d1
001baa: 203c0000ff0e move.l     #$ff0e, d0
001bb0: 61000b8e     bsr.w      $2740
001bb4: 588f         addq.l     #$4, a7
001bb6: 2240         movea.l    d0, a1
001bb8: 7000         moveq      #$0, d0
001bba: 1011         move.b     (a1), d0
001bbc: 31802802     move.w     d0, $2(a0, d2.l)
001bc0: 202f0004     move.l     $4(a7), d0
001bc4: e588         lsl.l      #$2, d0
001bc6: 41ee87d6     lea.l      -$782a(a6), a0
001bca: 4a700800     tst.w      (a0, d0.l)
001bce: 6d36         blt.b      $1c06
001bd0: 202f0004     move.l     $4(a7), d0
001bd4: e588         lsl.l      #$2, d0
001bd6: 41ee87d6     lea.l      -$782a(a6), a0
001bda: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
001be0: 6c24         bge.b      $1c06
001be2: 202f0004     move.l     $4(a7), d0
001be6: e588         lsl.l      #$2, d0
001be8: 41ee87d6     lea.l      -$782a(a6), a0
001bec: 30700800     movea.w    (a0, d0.l), a0
001bf0: 2008         move.l     a0, d0
001bf2: 61000e86     bsr.w      $2a7a
001bf6: 202f0004     move.l     $4(a7), d0
001bfa: e588         lsl.l      #$2, d0
001bfc: 41ee87d6     lea.l      -$782a(a6), a0
001c00: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
001c06: 202f0004     move.l     $4(a7), d0
001c0a: e588         lsl.l      #$2, d0
001c0c: 41ee87d6     lea.l      -$782a(a6), a0
001c10: 30300802     move.w     $2(a0, d0.l), d0
001c14: 48c0         ext.l      d0
001c16: b0af0022     cmp.l      $22(a7), d0
001c1a: 6628         bne.b      $1c44
001c1c: 0c12005f     cmpi.b     #$5f, (a2)
001c20: 6610         bne.b      $1c32
001c22: 6004         bra.b      $1c28
001c24: 4a12         tst.b      (a2)
001c26: 6736         beq.b      $1c5e
001c28: 528a         addq.l     #$1, a2
001c2a: 0c12005f     cmpi.b     #$5f, (a2)
001c2e: 66f4         bne.b      $1c24
001c30: 528a         addq.l     #$1, a2
001c32: 2f2f0052     move.l     $52(a7), -(a7)
001c36: 306f0054     movea.w    $54(a7), a0
001c3a: 2f08         move.l     a0, -(a7)
001c3c: 222f0032     move.l     $32(a7), d1
001c40: 200a         move.l     a2, d0
001c42: 6012         bra.b      $1c56
001c44: 2f2f0052     move.l     $52(a7), -(a7)
001c48: 306f0054     movea.w    $54(a7), a0
001c4c: 2f08         move.l     a0, -(a7)
001c4e: 222f0032     move.l     $32(a7), d1
001c52: 202f002e     move.l     $2e(a7), d0
001c56: 61000dea     bsr.w      $2a42
001c5a: 508f         addq.l     #$8, a7
001c5c: 6002         bra.b      $1c60
001c5e: 70ff         moveq      #$ff, d0
001c60: 4fef0026     lea.l      $26(a7), a7
001c64: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
001c6a: 4e5d         unlk       a5
001c6c: 4e75         rts        
001c6e: 4e550000     link.w     a5, #$0
001c72: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
001c76: 4fefffc8     lea.l      -$38(a7), a7
001c7a: 2f6f00380008 move.l     $38(a7), $8(a7)
001c80: 4a2f0009     tst.b      $9(a7)
001c84: 660e         bne.b      $1c94
001c86: 306f003e     movea.w    $3e(a7), a0
001c8a: 2208         move.l     a0, d1
001c8c: 202f0008     move.l     $8(a7), d0
001c90: 600000c8     bra.w      $1d5a
001c94: 4aae87a0     tst.l      -$7860(a6)
001c98: 6608         bne.b      $1ca2
001c9a: 61000a80     bsr.w      $271c
001c9e: 2d4087a0     move.l     d0, -$7860(a6)
001ca2: 7000         moveq      #$0, d0
001ca4: 102f0008     move.b     $8(a7), d0
001ca8: e588         lsl.l      #$2, d0
001caa: 41ee87d6     lea.l      -$782a(a6), a0
001cae: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
001cb4: 66000080     bne.w      $1d36
001cb8: 7000         moveq      #$0, d0
001cba: 102f0008     move.b     $8(a7), d0
001cbe: e588         lsl.l      #$2, d0
001cc0: 206e87a0     movea.l    -$7860(a6), a0
001cc4: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
001cc8: 41fa016e     lea.l      $1e38(pc), a0
001ccc: 2208         move.l     a0, d1
001cce: 41ef001c     lea.l      $1c(a7), a0
001cd2: 2008         move.l     a0, d0
001cd4: 61000d34     bsr.w      $2a0a
001cd8: 588f         addq.l     #$4, a7
001cda: 7203         moveq      #$3, d1
001cdc: 41ef0018     lea.l      $18(a7), a0
001ce0: 2008         move.l     a0, d0
001ce2: 61000d66     bsr.w      $2a4a
001ce6: 7200         moveq      #$0, d1
001ce8: 122f0008     move.b     $8(a7), d1
001cec: e589         lsl.l      #$2, d1
001cee: 41ee87d6     lea.l      -$782a(a6), a0
001cf2: 31801800     move.w     d0, (a0, d1.l)
001cf6: 6c06         bge.b      $1cfe
001cf8: 70ff         moveq      #$ff, d0
001cfa: 6000012e     bra.w      $1e2a
001cfe: 7000         moveq      #$0, d0
001d00: 102f0008     move.b     $8(a7), d0
001d04: e588         lsl.l      #$2, d0
001d06: 41ee87d6     lea.l      -$782a(a6), a0
001d0a: 2400         move.l     d0, d2
001d0c: 42a7         clr.l      -(a7)
001d0e: 7000         moveq      #$0, d0
001d10: 102f000c     move.b     $c(a7), d0
001d14: e588         lsl.l      #$2, d0
001d16: 43ee87d6     lea.l      -$782a(a6), a1
001d1a: 32710800     movea.w    (a1, d0.l), a1
001d1e: 2209         move.l     a1, d1
001d20: 203c0000ff0e move.l     #$ff0e, d0
001d26: 61000a18     bsr.w      $2740
001d2a: 588f         addq.l     #$4, a7
001d2c: 2240         movea.l    d0, a1
001d2e: 7000         moveq      #$0, d0
001d30: 1011         move.b     (a1), d0
001d32: 31802802     move.w     d0, $2(a0, d2.l)
001d36: 7000         moveq      #$0, d0
001d38: 102f0008     move.b     $8(a7), d0
001d3c: e588         lsl.l      #$2, d0
001d3e: 41ee87d6     lea.l      -$782a(a6), a0
001d42: 7200         moveq      #$0, d1
001d44: 122f0009     move.b     $9(a7), d1
001d48: b2700802     cmp.w      $2(a0, d0.l), d1
001d4c: 6614         bne.b      $1d62
001d4e: 306f003e     movea.w    $3e(a7), a0
001d52: 2208         move.l     a0, d1
001d54: 7000         moveq      #$0, d0
001d56: 302f000a     move.w     $a(a7), d0
001d5a: 61001254     bsr.w      $2fb0
001d5e: 600000ca     bra.w      $1e2a
001d62: 4aae879c     tst.l      -$7864(a6)
001d66: 661a         bne.b      $1d82
001d68: 61001304     bsr.w      $306e
001d6c: 2d40879c     move.l     d0, -$7864(a6)
001d70: 2d7c00010000830c move.l     #$10000, -$7cf4(a6)
001d78: 2d6e879c8310 move.l     -$7864(a6), -$7cf0(a6)
001d7e: 42ae8308     clr.l      -$7cf8(a6)
001d82: 7001         moveq      #$1, d0
001d84: 2d408328     move.l     d0, -$7cd8(a6)
001d88: 7008         moveq      #$8, d0
001d8a: 2d40832c     move.l     d0, -$7cd4(a6)
001d8e: 41d7         lea.l      (a7), a0
001d90: 2d488330     move.l     a0, -$7cd0(a6)
001d94: 41ee8304     lea.l      -$7cfc(a6), a0
001d98: 2d488338     move.l     a0, -$7cc8(a6)
001d9c: 7018         moveq      #$18, d0
001d9e: 2d408334     move.l     d0, -$7ccc(a6)
001da2: 7000         moveq      #$0, d0
001da4: 302f000a     move.w     $a(a7), d0
001da8: 2d408314     move.l     d0, -$7cec(a6)
001dac: 306f003e     movea.w    $3e(a7), a0
001db0: 2d488318     move.l     a0, -$7ce8(a6)
001db4: 1d6f00098307 move.b     $9(a7), -$7cf9(a6)
001dba: 422e8308     clr.b      -$7cf8(a6)
001dbe: 486e8328     pea.l      -$7cd8(a6)
001dc2: 7000         moveq      #$0, d0
001dc4: 102f000c     move.b     $c(a7), d0
001dc8: e588         lsl.l      #$2, d0
001dca: 41ee87d6     lea.l      -$782a(a6), a0
001dce: 30700800     movea.w    (a0, d0.l), a0
001dd2: 2208         move.l     a0, d1
001dd4: 203c0000ff05 move.l     #$ff05, d0
001dda: 610009c8     bsr.w      $27a4
001dde: 588f         addq.l     #$4, a7
001de0: 2f400010     move.l     d0, $10(a7)
001de4: 6c08         bge.b      $1dee
001de6: 70ff         moveq      #$ff, d0
001de8: 2f40000c     move.l     d0, $c(a7)
001dec: 6038         bra.b      $1e26
001dee: 2f2f0010     move.l     $10(a7), -(a7)
001df2: 7000         moveq      #$0, d0
001df4: 102f000c     move.b     $c(a7), d0
001df8: e588         lsl.l      #$2, d0
001dfa: 41ee87d6     lea.l      -$782a(a6), a0
001dfe: 30700800     movea.w    (a0, d0.l), a0
001e02: 2208         move.l     a0, d1
001e04: 203c0000ff06 move.l     #$ff06, d0
001e0a: 61000998     bsr.w      $27a4
001e0e: 588f         addq.l     #$4, a7
001e10: 2f40000c     move.l     d0, $c(a7)
001e14: 6dd0         blt.b      $1de6
001e16: 2f6f0004000c move.l     $4(a7), $c(a7)
001e1c: 4aaf0004     tst.l      $4(a7)
001e20: 6c04         bge.b      $1e26
001e22: 2d57800c     move.l     (a7), -$7ff4(a6)
001e26: 202f000c     move.l     $c(a7), d0
001e2a: 4fef0038     lea.l      $38(a7), a7
001e2e: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
001e34: 4e5d         unlk       a5
001e36: 4e75         rts        
001e38: 2f25         move.l     -(a5), -(a7)
001e3a: 7300         .dc.w      $7300
001e3c: 4e550000     link.w     a5, #$0
001e40: 48e7c080     movem.l    d0-d1/a0, -(a7)
001e44: 7002         moveq      #$2, d0
001e46: b0ae87a4     cmp.l      -$785c(a6), d0
001e4a: 6c0c         bge.b      $1e58
001e4c: 2217         move.l     (a7), d1
001e4e: 41fa052c     lea.l      $237c(pc), a0
001e52: 2008         move.l     a0, d0
001e54: 61000bac     bsr.w      $2a02
001e58: 0c9700000106 cmpi.l     #$106, (a7)
001e5e: 6608         bne.b      $1e68
001e60: 7001         moveq      #$1, d0
001e62: 2d408344     move.l     d0, -$7cbc(a6)
001e66: 600e         bra.b      $1e76
001e68: 4aae8348     tst.l      -$7cb8(a6)
001e6c: 6708         beq.b      $1e76
001e6e: 2017         move.l     (a7), d0
001e70: 206e8348     movea.l    -$7cb8(a6), a0
001e74: 4e90         jsr        (a0)
001e76: 7000         moveq      #$0, d0
001e78: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001e7e: 4e5d         unlk       a5
001e80: 4e75         rts        
001e82: 4e550000     link.w     a5, #$0
001e86: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
001e8a: 4fefff58     lea.l      -$a8(a7), a7
001e8e: 6010         bra.b      $1ea0
001e90: 08ef000600de bset.b     #$6, $de(a7)
001e96: 601c         bra.b      $1eb4
001e98: 08ef000700de bset.b     #$7, $de(a7)
001e9e: 6014         bra.b      $1eb4
001ea0: 202f00e0     move.l     $e0(a7), d0
001ea4: 0c80a95acd81 cmpi.l     #$a95acd81, d0
001eaa: 67e4         beq.b      $1e90
001eac: 0c80a95acd82 cmpi.l     #$a95acd82, d0
001eb2: 67e4         beq.b      $1e98
001eb4: 41ef0094     lea.l      $94(a7), a0
001eb8: 2208         move.l     a0, d1
001eba: 202f00ac     move.l     $ac(a7), d0
001ebe: 610005c4     bsr.w      $2484
001ec2: 2f400028     move.l     d0, $28(a7)
001ec6: 6700015c     beq.w      $2024
001eca: 206f0028     movea.l    $28(a7), a0
001ece: 0c10005f     cmpi.b     #$5f, (a0)
001ed2: 66000150     bne.w      $2024
001ed6: 2f6f002800ac move.l     $28(a7), $ac(a7)
001edc: 2d6f00ac87c0 move.l     $ac(a7), -$7840(a6)
001ee2: 41ef0094     lea.l      $94(a7), a0
001ee6: 2d4887b4     move.l     a0, -$784c(a6)
001eea: 41ef0094     lea.l      $94(a7), a0
001eee: 2008         move.l     a0, d0
001ef0: 610005d8     bsr.w      $24ca
001ef4: 3f40002c     move.w     d0, $2c(a7)
001ef8: 6c0c         bge.b      $1f06
001efa: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
001f02: 60000242     bra.w      $2146
001f06: 422f0052     clr.b      $52(a7)
001f0a: 41ef0046     lea.l      $46(a7), a0
001f0e: 2208         move.l     a0, d1
001f10: 202f00ac     move.l     $ac(a7), d0
001f14: 6100063a     bsr.w      $2550
001f18: 2f400028     move.l     d0, $28(a7)
001f1c: 67000106     beq.w      $2024
001f20: 1f6f00490051 move.b     $49(a7), $51(a7)
001f26: 2f6f002800ac move.l     $28(a7), $ac(a7)
001f2c: 302f002c     move.w     $2c(a7), d0
001f30: 48c0         ext.l      d0
001f32: e588         lsl.l      #$2, d0
001f34: 41ee87d6     lea.l      -$782a(a6), a0
001f38: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
001f3e: 660000b6     bne.w      $1ff6
001f42: 486f0094     pea.l      $94(a7)
001f46: 41fa0464     lea.l      $23ac(pc), a0
001f4a: 2208         move.l     a0, d1
001f4c: 41ef0078     lea.l      $78(a7), a0
001f50: 2008         move.l     a0, d0
001f52: 61000ab6     bsr.w      $2a0a
001f56: 588f         addq.l     #$4, a7
001f58: 7001         moveq      #$1, d0
001f5a: b0ae87a4     cmp.l      -$785c(a6), d0
001f5e: 6c10         bge.b      $1f70
001f60: 41ef0074     lea.l      $74(a7), a0
001f64: 2208         move.l     a0, d1
001f66: 41fa0447     lea.l      $23af(pc), a0
001f6a: 2008         move.l     a0, d0
001f6c: 61000a94     bsr.w      $2a02
001f70: 7203         moveq      #$3, d1
001f72: 41ef0074     lea.l      $74(a7), a0
001f76: 2008         move.l     a0, d0
001f78: 61000ad0     bsr.w      $2a4a
001f7c: 322f002c     move.w     $2c(a7), d1
001f80: 48c1         ext.l      d1
001f82: e589         lsl.l      #$2, d1
001f84: 41ee87d6     lea.l      -$782a(a6), a0
001f88: 31801800     move.w     d0, (a0, d1.l)
001f8c: 6c30         bge.b      $1fbe
001f8e: 7001         moveq      #$1, d0
001f90: b0ae87a4     cmp.l      -$785c(a6), d0
001f94: 6c0001b0     bge.w      $2146
001f98: 302f002c     move.w     $2c(a7), d0
001f9c: 48c0         ext.l      d0
001f9e: e588         lsl.l      #$2, d0
001fa0: 41ee87d6     lea.l      -$782a(a6), a0
001fa4: 30700800     movea.w    (a0, d0.l), a0
001fa8: 2f08         move.l     a0, -(a7)
001faa: 222f004a     move.l     $4a(a7), d1
001fae: 41fa0418     lea.l      $23c8(pc), a0
001fb2: 2008         move.l     a0, d0
001fb4: 61000a4c     bsr.w      $2a02
001fb8: 588f         addq.l     #$4, a7
001fba: 6000018a     bra.w      $2146
001fbe: 302f002c     move.w     $2c(a7), d0
001fc2: 48c0         ext.l      d0
001fc4: e588         lsl.l      #$2, d0
001fc6: 41ee87d6     lea.l      -$782a(a6), a0
001fca: 2400         move.l     d0, d2
001fcc: 42a7         clr.l      -(a7)
001fce: 302f0030     move.w     $30(a7), d0
001fd2: 48c0         ext.l      d0
001fd4: e588         lsl.l      #$2, d0
001fd6: 43ee87d6     lea.l      -$782a(a6), a1
001fda: 32710800     movea.w    (a1, d0.l), a1
001fde: 2209         move.l     a1, d1
001fe0: 203c0000ff0e move.l     #$ff0e, d0
001fe6: 61000758     bsr.w      $2740
001fea: 588f         addq.l     #$4, a7
001fec: 2240         movea.l    d0, a1
001fee: 7000         moveq      #$0, d0
001ff0: 1011         move.b     (a1), d0
001ff2: 31802802     move.w     d0, $2(a0, d2.l)
001ff6: 302f002c     move.w     $2c(a7), d0
001ffa: 48c0         ext.l      d0
001ffc: e588         lsl.l      #$2, d0
001ffe: 41ee87d6     lea.l      -$782a(a6), a0
002002: 30300802     move.w     $2(a0, d0.l), d0
002006: 48c0         ext.l      d0
002008: b0af0046     cmp.l      $46(a7), d0
00200c: 6642         bne.b      $2050
00200e: 7001         moveq      #$1, d0
002010: b0ae87a4     cmp.l      -$785c(a6), d0
002014: 6c0e         bge.b      $2024
002016: 222f00ac     move.l     $ac(a7), d1
00201a: 41fa03bf     lea.l      $23db(pc), a0
00201e: 2008         move.l     a0, d0
002020: 610009e0     bsr.w      $2a02
002024: 306f00de     movea.w    $de(a7), a0
002028: 2f08         move.l     a0, -(a7)
00202a: 306f00de     movea.w    $de(a7), a0
00202e: 2f08         move.l     a0, -(a7)
002030: 2f2f00dc     move.l     $dc(a7), -(a7)
002034: 2f2f00dc     move.l     $dc(a7), -(a7)
002038: 2f2f00dc     move.l     $dc(a7), -(a7)
00203c: 222f00c0     move.l     $c0(a7), d1
002040: 202f00bc     move.l     $bc(a7), d0
002044: 61000a54     bsr.w      $2a9a
002048: 4fef0014     lea.l      $14(a7), a7
00204c: 6000030a     bra.w      $2358
002050: 4a6e87c8     tst.w      -$7838(a6)
002054: 6608         bne.b      $205e
002056: 61001016     bsr.w      $306e
00205a: 3d4087c8     move.w     d0, -$7838(a6)
00205e: 42ae8348     clr.l      -$7cb8(a6)
002062: 306e87c8     movea.w    -$7838(a6), a0
002066: 2008         move.l     a0, d0
002068: 6100068c     bsr.w      $26f6
00206c: 2d408348     move.l     d0, -$7cb8(a6)
002070: 7001         moveq      #$1, d0
002072: b0ae87a4     cmp.l      -$785c(a6), d0
002076: 6c0e         bge.b      $2086
002078: 222e8348     move.l     -$7cb8(a6), d1
00207c: 41fa0384     lea.l      $2402(pc), a0
002080: 2008         move.l     a0, d0
002082: 6100097e     bsr.w      $2a02
002086: 41fafdb4     lea.l      $1e3c(pc), a0
00208a: 2008         move.l     a0, d0
00208c: 610002d8     bsr.w      $2366
002090: 306f00de     movea.w    $de(a7), a0
002094: 2f08         move.l     a0, -(a7)
002096: 42a7         clr.l      -(a7)
002098: 42a7         clr.l      -(a7)
00209a: 2f2f00dc     move.l     $dc(a7), -(a7)
00209e: 486e87a8     pea.l      -$7858(a6)
0020a2: 41fa0374     lea.l      $2418(pc), a0
0020a6: 2208         move.l     a0, d1
0020a8: 41fa0f68     lea.l      $3012(pc), a0
0020ac: 2008         move.l     a0, d0
0020ae: 610009ea     bsr.w      $2a9a
0020b2: 4fef0014     lea.l      $14(a7), a7
0020b6: 2f40005e     move.l     d0, $5e(a7)
0020ba: 6f00008a     ble.w      $2146
0020be: 2f7c000200000056 move.l     #$20000, $56(a7)
0020c6: 42af005a     clr.l      $5a(a7)
0020ca: 2f6f00d40062 move.l     $d4(a7), $62(a7)
0020d0: 3f6f00da0066 move.w     $da(a7), $66(a7)
0020d6: 3f6f00de0068 move.w     $de(a7), $68(a7)
0020dc: 3f6f002c006c move.w     $2c(a7), $6c(a7)
0020e2: 3f6e87c8006a move.w     -$7838(a6), $6a(a7)
0020e8: 7001         moveq      #$1, d0
0020ea: 2f40004a     move.l     d0, $4a(a7)
0020ee: 42af0042     clr.l      $42(a7)
0020f2: 6004         bra.b      $20f8
0020f4: 52af004a     addq.l     #$1, $4a(a7)
0020f8: 202f0042     move.l     $42(a7), d0
0020fc: 52af0042     addq.l     #$1, $42(a7)
002100: e588         lsl.l      #$2, d0
002102: 206f00cc     movea.l    $cc(a7), a0
002106: 4ab00800     tst.l      (a0, d0.l)
00210a: 66e8         bne.b      $20f4
00210c: 52af004a     addq.l     #$1, $4a(a7)
002110: 42af0042     clr.l      $42(a7)
002114: 6004         bra.b      $211a
002116: 52af004a     addq.l     #$1, $4a(a7)
00211a: 202f0042     move.l     $42(a7), d0
00211e: 52af0042     addq.l     #$1, $42(a7)
002122: e588         lsl.l      #$2, d0
002124: 206f00d0     movea.l    $d0(a7), a0
002128: 4ab00800     tst.l      (a0, d0.l)
00212c: 66e8         bne.b      $2116
00212e: 52af004a     addq.l     #$1, $4a(a7)
002132: 202f004a     move.l     $4a(a7), d0
002136: e788         lsl.l      #$3, d0
002138: 7214         moveq      #$14, d1
00213a: d081         add.l      d1, d0
00213c: 61000980     bsr.w      $2abe
002140: 2440         movea.l    d0, a2
002142: 4a80         tst.l      d0
002144: 6606         bne.b      $214c
002146: 70ff         moveq      #$ff, d0
002148: 6000020e     bra.w      $2358
00214c: 202f004a     move.l     $4a(a7), d0
002150: 5280         addq.l     #$1, d0
002152: 2480         move.l     d0, (a2)
002154: 257c000000080004 move.l     #$8, $4(a2)
00215c: 41ef0020     lea.l      $20(a7), a0
002160: 25480008     move.l     a0, $8(a2)
002164: 700c         moveq      #$c, d0
002166: d08a         add.l      a2, d0
002168: 2640         movea.l    d0, a3
00216a: 41ef004e     lea.l      $4e(a7), a0
00216e: 27480004     move.l     a0, $4(a3)
002172: 26bc00000020 move.l     #$20, (a3)
002178: 508b         addq.l     #$8, a3
00217a: 276f00ac0004 move.l     $ac(a7), $4(a3)
002180: 202f00ac     move.l     $ac(a7), d0
002184: 610009d8     bsr.w      $2b5e
002188: 5280         addq.l     #$1, d0
00218a: 2680         move.l     d0, (a3)
00218c: 508b         addq.l     #$8, a3
00218e: 42af0042     clr.l      $42(a7)
002192: 605a         bra.b      $21ee
002194: 7001         moveq      #$1, d0
002196: b0ae87a4     cmp.l      -$785c(a6), d0
00219a: 6c26         bge.b      $21c2
00219c: 222f0042     move.l     $42(a7), d1
0021a0: 41fa027d     lea.l      $241f(pc), a0
0021a4: 2008         move.l     a0, d0
0021a6: 6100085a     bsr.w      $2a02
0021aa: 202f0042     move.l     $42(a7), d0
0021ae: e588         lsl.l      #$2, d0
0021b0: 206f00cc     movea.l    $cc(a7), a0
0021b4: 22300800     move.l     (a0, d0.l), d1
0021b8: 41fa0285     lea.l      $243f(pc), a0
0021bc: 2008         move.l     a0, d0
0021be: 61000842     bsr.w      $2a02
0021c2: 202f0042     move.l     $42(a7), d0
0021c6: e588         lsl.l      #$2, d0
0021c8: 206f00cc     movea.l    $cc(a7), a0
0021cc: 277008000004 move.l     (a0, d0.l), $4(a3)
0021d2: 202f0042     move.l     $42(a7), d0
0021d6: 52af0042     addq.l     #$1, $42(a7)
0021da: e588         lsl.l      #$2, d0
0021dc: 206f00cc     movea.l    $cc(a7), a0
0021e0: 20300800     move.l     (a0, d0.l), d0
0021e4: 61000978     bsr.w      $2b5e
0021e8: 5280         addq.l     #$1, d0
0021ea: 2680         move.l     d0, (a3)
0021ec: 508b         addq.l     #$8, a3
0021ee: 202f0042     move.l     $42(a7), d0
0021f2: e588         lsl.l      #$2, d0
0021f4: 206f00cc     movea.l    $cc(a7), a0
0021f8: 4ab00800     tst.l      (a0, d0.l)
0021fc: 6696         bne.b      $2194
0021fe: 41fa024e     lea.l      $244e(pc), a0
002202: 27480004     move.l     a0, $4(a3)
002206: 26bc00000001 move.l     #$1, (a3)
00220c: 508b         addq.l     #$8, a3
00220e: 42af0042     clr.l      $42(a7)
002212: 604c         bra.b      $2260
002214: 7001         moveq      #$1, d0
002216: b0ae87a4     cmp.l      -$785c(a6), d0
00221a: 6c18         bge.b      $2234
00221c: 202f0042     move.l     $42(a7), d0
002220: e588         lsl.l      #$2, d0
002222: 206f00d0     movea.l    $d0(a7), a0
002226: 22300800     move.l     (a0, d0.l), d1
00222a: 41fa0223     lea.l      $244f(pc), a0
00222e: 2008         move.l     a0, d0
002230: 610007d0     bsr.w      $2a02
002234: 202f0042     move.l     $42(a7), d0
002238: e588         lsl.l      #$2, d0
00223a: 206f00d0     movea.l    $d0(a7), a0
00223e: 277008000004 move.l     (a0, d0.l), $4(a3)
002244: 202f0042     move.l     $42(a7), d0
002248: 52af0042     addq.l     #$1, $42(a7)
00224c: e588         lsl.l      #$2, d0
00224e: 206f00d0     movea.l    $d0(a7), a0
002252: 20300800     move.l     (a0, d0.l), d0
002256: 61000906     bsr.w      $2b5e
00225a: 5280         addq.l     #$1, d0
00225c: 2680         move.l     d0, (a3)
00225e: 508b         addq.l     #$8, a3
002260: 202f0042     move.l     $42(a7), d0
002264: e588         lsl.l      #$2, d0
002266: 206f00d0     movea.l    $d0(a7), a0
00226a: 4ab00800     tst.l      (a0, d0.l)
00226e: 66a4         bne.b      $2214
002270: 41fa01ec     lea.l      $245e(pc), a0
002274: 27480004     move.l     a0, $4(a3)
002278: 26bc00000001 move.l     #$1, (a3)
00227e: 508b         addq.l     #$8, a3
002280: 7001         moveq      #$1, d0
002282: 61000b44     bsr.w      $2dc8
002286: 42ae8340     clr.l      -$7cc0(a6)
00228a: 600a         bra.b      $2296
00228c: 52ae8340     addq.l     #$1, -$7cc0(a6)
002290: 7001         moveq      #$1, d0
002292: 61000b34     bsr.w      $2dc8
002296: 4aae8344     tst.l      -$7cbc(a6)
00229a: 67f0         beq.b      $228c
00229c: 7064         moveq      #$64, d0
00229e: b0ae8340     cmp.l      -$7cc0(a6), d0
0022a2: 6e0e         bgt.b      $22b2
0022a4: 222e8340     move.l     -$7cc0(a6), d1
0022a8: 41fa01b5     lea.l      $245f(pc), a0
0022ac: 2008         move.l     a0, d0
0022ae: 61000752     bsr.w      $2a02
0022b2: 4aae8348     tst.l      -$7cb8(a6)
0022b6: 6708         beq.b      $22c0
0022b8: 202e8348     move.l     -$7cb8(a6), d0
0022bc: 610000a8     bsr.w      $2366
0022c0: 4852         pea.l      (a2)
0022c2: 302f0030     move.w     $30(a7), d0
0022c6: 48c0         ext.l      d0
0022c8: e588         lsl.l      #$2, d0
0022ca: 41ee87d6     lea.l      -$782a(a6), a0
0022ce: 30700800     movea.w    (a0, d0.l), a0
0022d2: 2208         move.l     a0, d1
0022d4: 203c0000ff05 move.l     #$ff05, d0
0022da: 610004c8     bsr.w      $27a4
0022de: 588f         addq.l     #$4, a7
0022e0: 2f40003a     move.l     d0, $3a(a7)
0022e4: 6c08         bge.b      $22ee
0022e6: 70ff         moveq      #$ff, d0
0022e8: 2f40002e     move.l     d0, $2e(a7)
0022ec: 6060         bra.b      $234e
0022ee: 2f2f003a     move.l     $3a(a7), -(a7)
0022f2: 302f0030     move.w     $30(a7), d0
0022f6: 48c0         ext.l      d0
0022f8: e588         lsl.l      #$2, d0
0022fa: 41ee87d6     lea.l      -$782a(a6), a0
0022fe: 30700800     movea.w    (a0, d0.l), a0
002302: 2208         move.l     a0, d1
002304: 203c0000ff06 move.l     #$ff06, d0
00230a: 61000498     bsr.w      $27a4
00230e: 588f         addq.l     #$4, a7
002310: 2f40002e     move.l     d0, $2e(a7)
002314: 6c10         bge.b      $2326
002316: 70ff         moveq      #$ff, d0
002318: 2f40002e     move.l     d0, $2e(a7)
00231c: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
002324: 6028         bra.b      $234e
002326: 2f6f0024002e move.l     $24(a7), $2e(a7)
00232c: 4aaf002e     tst.l      $2e(a7)
002330: 6c16         bge.b      $2348
002332: 223c00008000 move.l     #$8000, d1
002338: 202f005e     move.l     $5e(a7), d0
00233c: 61000c72     bsr.w      $2fb0
002340: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
002346: 6006         bra.b      $234e
002348: 1f6f002d002e move.b     $2d(a7), $2e(a7)
00234e: 200a         move.l     a2, d0
002350: 61000778     bsr.w      $2aca
002354: 202f002e     move.l     $2e(a7), d0
002358: 4fef00a8     lea.l      $a8(a7), a7
00235c: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
002362: 4e5d         unlk       a5
002364: 4e75         rts        
002366: 4e550000     link.w     a5, #$0
00236a: 48e78000     movem.l    d0, -(a7)
00236e: 2d5787e6     move.l     (a7), -$781a(a6)
002372: 2017         move.l     (a7), d0
002374: 61000d30     bsr.w      $30a6
002378: 4e5d         unlk       a5
00237a: 4e75         rts        
00237c: 5369676e     subq.w     #$1, $676e(a1)
002380: 616c         bsr.b      $23ee
002382: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
00238c: 2063         movea.l    -(a3), a0
00238e: 6f64         ble.b      $23f4
002390: 653d         bcs.b      $23cf
002392: 2025         move.l     -(a5), d0
002394: 780d         moveq      #$d, d4
002396: 007365727665 ori.w      #$6572, $65(a3, d7.w)
00239c: 7200         moveq      #$0, d1
00239e: 3200         move.w     d0, d1
0023a0: 3000         move.w     d0, d0
0023a2: 2f633000     move.l     -(a3), $3000(a7)
0023a6: 3000         move.w     d0, d0
0023a8: 3000         move.w     d0, d0
0023aa: 3000         move.w     d0, d0
0023ac: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
0023b2: 6e20         bgt.b      $23d4
0023b4: 6361         bls.b      $2417
0023b6: 726f         moveq      #$6f, d1
0023b8: 7370         .dc.w      $7370
0023ba: 6174         bsr.b      $2430
0023bc: 6820         bvc.b      $23de
0023be: 6e61         bgt.b      $2421
0023c0: 6d65         blt.b      $2427
0023c2: 6420         bcc.b      $23e4
0023c4: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
0023ca: 7468         moveq      #$68, d2
0023cc: 6964         bvs.b      $2432
0023ce: 5b25         subq.b     #$5, -(a5)
0023d0: 645d         bcc.b      $242f
0023d2: 206d6772     movea.l    $6772(a5), a0
0023d6: 3d25         move.w     -(a5), -(a6)
0023d8: 640d         bcc.b      $23e7
0023da: 00666f72     ori.w      #$6f72, -(a6)
0023de: 6b69         bmi.b      $2449
0023e0: 6e67         bgt.b      $2449
0023e2: 2070726f     movea.l    $6f(a0, d7.w), a0
0023e6: 6365         bls.b      $244d
0023e8: 7373         .dc.w      $7373
0023ea: 206c6f63     movea.l    $6f63(a4), a0
0023ee: 616c         bsr.b      $245c
0023f0: 6c79         bge.b      $246b
0023f2: 2c20         move.l     -(a0), d6
0023f4: 6d6f         blt.b      $2465
0023f6: 646e         bcc.b      $2466
0023f8: 616d         bsr.b      $2467
0023fa: 6520         bcs.b      $241c
0023fc: 3d20         move.w     -(a0), -(a6)
0023fe: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
002404: 6420         bcc.b      $2426
002406: 6963         bvs.b      $246b
002408: 7074         moveq      #$74, d0
00240a: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
002414: 25780d007365 move.l     $d00.w, $7365(a2)
00241a: 7276         moveq      #$76, d1
00241c: 6572         bcs.b      $2490
00241e: 00656e74     ori.w      #$6e74, -(a5)
002422: 6572         bcs.b      $2496
002424: 6564         bcs.b      $248a
002426: 2061         movea.l    -(a1), a0
002428: 7267         moveq      #$67, d1
00242a: 6c69         bge.b      $2495
00242c: 7374         .dc.w      $7374
00242e: 206c6f6f     movea.l    $6f6f(a4), a0
002432: 702c         moveq      #$2c, d0
002434: 20696e64     movea.l    $6e64(a1), a0
002438: 6578         bcs.b      $24b2
00243a: 3d25         move.w     -(a5), -(a6)
00243c: 640d         bcc.b      $244b
00243e: 00415247     ori.w      #$5247, d1
002442: 4c49         .dc.w      $4c49
002444: 5354         subq.w     #$1, (a4)
002446: 5b695d3d     subq.w     #$5, $5d3d(a1)
00244a: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
002450: 4e564c49     link.w     a6, #$4c49
002454: 5354         subq.w     #$1, (a4)
002456: 5b695d3d     subq.w     #$5, $5d3d(a1)
00245a: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
002460: 796e         .dc.w      $796e
002462: 6368         bls.b      $24cc
002464: 726f         moveq      #$6f, d1
002466: 6e69         bgt.b      $24d1
002468: 7369         .dc.w      $7369
00246a: 6e67         bgt.b      $24d3
00246c: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
002476: 6f6b         ble.b      $24e3
002478: 2025         move.l     -(a5), d0
00247a: 6420         bcc.b      $249c
00247c: 7469         moveq      #$69, d2
00247e: 636b         bls.b      $24eb
002480: 730d         .dc.w      $730d
002482: 00004e55     ori.b      #$55, d0
002486: 000048e7     ori.b      #$e7, d0
00248a: c8302440     and.b      $40(a0, d2.w), d4
00248e: 2641         movea.l    d1, a3
002490: 558f         subq.l     #$2, a7
002492: 1012         move.b     (a2), d0
002494: 1680         move.b     d0, (a3)
002496: 0c00002f     cmpi.b     #$2f, d0
00249a: 6704         beq.b      $24a0
00249c: 7000         moveq      #$0, d0
00249e: 601e         bra.b      $24be
0024a0: 528a         addq.l     #$1, a2
0024a2: 528b         addq.l     #$1, a3
0024a4: 1012         move.b     (a2), d0
0024a6: 1680         move.b     d0, (a3)
0024a8: 1f400001     move.b     d0, $1(a7)
0024ac: 0c00002f     cmpi.b     #$2f, d0
0024b0: 6706         beq.b      $24b8
0024b2: 4a2f0001     tst.b      $1(a7)
0024b6: 66e8         bne.b      $24a0
0024b8: 4213         clr.b      (a3)
0024ba: 528a         addq.l     #$1, a2
0024bc: 200a         move.l     a2, d0
0024be: 548f         addq.l     #$2, a7
0024c0: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0024c6: 4e5d         unlk       a5
0024c8: 4e75         rts        
0024ca: 4e550000     link.w     a5, #$0
0024ce: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0024d2: 2440         movea.l    d0, a2
0024d4: 4aae87ca     tst.l      -$7836(a6)
0024d8: 6608         bne.b      $24e2
0024da: 61000240     bsr.w      $271c
0024de: 2d4087ca     move.l     d0, -$7836(a6)
0024e2: 7800         moveq      #$0, d4
0024e4: 601a         bra.b      $2500
0024e6: 2004         move.l     d4, d0
0024e8: e588         lsl.l      #$2, d0
0024ea: 206e87ca     movea.l    -$7836(a6), a0
0024ee: 2230081a     move.l     $1a(a0, d0.l), d1
0024f2: 200a         move.l     a2, d0
0024f4: 5280         addq.l     #$1, d0
0024f6: 610005f2     bsr.w      $2aea
0024fa: 4a80         tst.l      d0
0024fc: 6710         beq.b      $250e
0024fe: 5284         addq.l     #$1, d4
002500: 206e87ca     movea.l    -$7836(a6), a0
002504: 30280010     move.w     $10(a0), d0
002508: 48c0         ext.l      d0
00250a: b084         cmp.l      d4, d0
00250c: 6ed8         bgt.b      $24e6
00250e: 206e87ca     movea.l    -$7836(a6), a0
002512: 30280010     move.w     $10(a0), d0
002516: 48c0         ext.l      d0
002518: b084         cmp.l      d4, d0
00251a: 6e04         bgt.b      $2520
00251c: 70ff         moveq      #$ff, d0
00251e: 6002         bra.b      $2522
002520: 2004         move.l     d4, d0
002522: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
002528: 4e5d         unlk       a5
00252a: 4e75         rts        
00252c: 4e550000     link.w     a5, #$0
002530: 48e7c080     movem.l    d0-d1/a0, -(a7)
002534: 202f0004     move.l     $4(a7), d0
002538: e588         lsl.l      #$2, d0
00253a: 2057         movea.l    (a7), a0
00253c: 2070082a     movea.l    $2a(a0, d0.l), a0
002540: 7000         moveq      #$0, d0
002542: 10280012     move.b     $12(a0), d0
002546: 4ced0100fffc movem.l    -$4(a5), a0
00254c: 4e5d         unlk       a5
00254e: 4e75         rts        
002550: 4e550000     link.w     a5, #$0
002554: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002558: 2440         movea.l    d0, a2
00255a: 4fefffda     lea.l      -$26(a7), a7
00255e: 200a         move.l     a2, d0
002560: 61000110     bsr.w      $2672
002564: 2440         movea.l    d0, a2
002566: 0c12005f     cmpi.b     #$5f, (a2)
00256a: 660000f6     bne.w      $2662
00256e: 102a0001     move.b     $1(a2), d0
002572: 1f400005     move.b     d0, $5(a7)
002576: 0c000041     cmpi.b     #$41, d0
00257a: 6d0000a4     blt.w      $2620
00257e: 4aae87ce     tst.l      -$7832(a6)
002582: 6626         bne.b      $25aa
002584: 7200         moveq      #$0, d1
002586: 41fa017e     lea.l      $2706(pc), a0
00258a: 2008         move.l     a0, d0
00258c: 610009c2     bsr.w      $2f50
002590: 2f400022     move.l     d0, $22(a7)
002594: 72ff         moveq      #$ff, d1
002596: b280         cmp.l      d0, d1
002598: 6606         bne.b      $25a0
00259a: 70ff         moveq      #$ff, d0
00259c: 600000c6     bra.w      $2664
0025a0: 7030         moveq      #$30, d0
0025a2: d0af0022     add.l      $22(a7), d0
0025a6: 2d4087ce     move.l     d0, -$7832(a6)
0025aa: 41ef000a     lea.l      $a(a7), a0
0025ae: 2f480006     move.l     a0, $6(a7)
0025b2: 600c         bra.b      $25c0
0025b4: 206f0006     movea.l    $6(a7), a0
0025b8: 52af0006     addq.l     #$1, $6(a7)
0025bc: 10af0005     move.b     $5(a7), (a0)
0025c0: 528a         addq.l     #$1, a2
0025c2: 1012         move.b     (a2), d0
0025c4: 1f400005     move.b     d0, $5(a7)
0025c8: 0c00005f     cmpi.b     #$5f, d0
0025cc: 66e6         bne.b      $25b4
0025ce: 206f0006     movea.l    $6(a7), a0
0025d2: 4210         clr.b      (a0)
0025d4: 202e87ce     move.l     -$7832(a6), d0
0025d8: 5480         addq.l     #$2, d0
0025da: 2f40001e     move.l     d0, $1e(a7)
0025de: 7800         moveq      #$0, d4
0025e0: 6030         bra.b      $2612
0025e2: 41ef000a     lea.l      $a(a7), a0
0025e6: 2208         move.l     a0, d1
0025e8: 202f001e     move.l     $1e(a7), d0
0025ec: 610004fc     bsr.w      $2aea
0025f0: 4a80         tst.l      d0
0025f2: 6614         bne.b      $2608
0025f4: 206f001e     movea.l    $1e(a7), a0
0025f8: 7000         moveq      #$0, d0
0025fa: 10280013     move.b     $13(a0), d0
0025fe: 206f002a     movea.l    $2a(a7), a0
002602: 2080         move.l     d0, (a0)
002604: 528a         addq.l     #$1, a2
002606: 6056         bra.b      $265e
002608: 06af00000014001e addi.l     #$14, $1e(a7)
002610: 5284         addq.l     #$1, d4
002612: 206e87ce     movea.l    -$7832(a6), a0
002616: 3010         move.w     (a0), d0
002618: 48c0         ext.l      d0
00261a: b084         cmp.l      d4, d0
00261c: 6ec4         bgt.b      $25e2
00261e: 6042         bra.b      $2662
002620: 4297         clr.l      (a7)
002622: 6018         bra.b      $263c
002624: 2017         move.l     (a7), d0
002626: 720a         moveq      #$a, d1
002628: 610005a2     bsr.w      $2bcc
00262c: 122f0005     move.b     $5(a7), d1
002630: 4881         ext.w      d1
002632: 48c1         ext.l      d1
002634: d081         add.l      d1, d0
002636: 7230         moveq      #$30, d1
002638: 9081         sub.l      d1, d0
00263a: 2e80         move.l     d0, (a7)
00263c: 528a         addq.l     #$1, a2
00263e: 1012         move.b     (a2), d0
002640: 1f400005     move.b     d0, $5(a7)
002644: 0c000030     cmpi.b     #$30, d0
002648: 6d08         blt.b      $2652
00264a: 0c2f00390005 cmpi.b     #$39, $5(a7)
002650: 6fd2         ble.b      $2624
002652: 0c1a005f     cmpi.b     #$5f, (a2)+
002656: 660a         bne.b      $2662
002658: 206f002a     movea.l    $2a(a7), a0
00265c: 2097         move.l     (a7), (a0)
00265e: 200a         move.l     a2, d0
002660: 6002         bra.b      $2664
002662: 7000         moveq      #$0, d0
002664: 4fef0026     lea.l      $26(a7), a7
002668: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00266e: 4e5d         unlk       a5
002670: 4e75         rts        
002672: 4e550000     link.w     a5, #$0
002676: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00267a: 2440         movea.l    d0, a2
00267c: 518f         subq.l     #$8, a7
00267e: 0c12005f     cmpi.b     #$5f, (a2)
002682: 6764         beq.b      $26e8
002684: 0c120040     cmpi.b     #$40, (a2)
002688: 675e         beq.b      $26e8
00268a: 0c120041     cmpi.b     #$41, (a2)
00268e: 6d58         blt.b      $26e8
002690: 4aae87d2     tst.l      -$782e(a6)
002694: 6620         bne.b      $26b6
002696: 7200         moveq      #$0, d1
002698: 41fa0076     lea.l      $2710(pc), a0
00269c: 2008         move.l     a0, d0
00269e: 610008b0     bsr.w      $2f50
0026a2: 2f400004     move.l     d0, $4(a7)
0026a6: 72ff         moveq      #$ff, d1
0026a8: b280         cmp.l      d0, d1
0026aa: 673c         beq.b      $26e8
0026ac: 7030         moveq      #$30, d0
0026ae: d0af0004     add.l      $4(a7), d0
0026b2: 2d4087d2     move.l     d0, -$782e(a6)
0026b6: 202e87d2     move.l     -$782e(a6), d0
0026ba: 5480         addq.l     #$2, d0
0026bc: 2e80         move.l     d0, (a7)
0026be: 7800         moveq      #$0, d4
0026c0: 601a         bra.b      $26dc
0026c2: 220a         move.l     a2, d1
0026c4: 2017         move.l     (a7), d0
0026c6: 61000422     bsr.w      $2aea
0026ca: 4a80         tst.l      d0
0026cc: 6606         bne.b      $26d4
0026ce: 7014         moveq      #$14, d0
0026d0: d097         add.l      (a7), d0
0026d2: 6016         bra.b      $26ea
0026d4: 069700000032 addi.l     #$32, (a7)
0026da: 5284         addq.l     #$1, d4
0026dc: 206e87d2     movea.l    -$782e(a6), a0
0026e0: 3010         move.w     (a0), d0
0026e2: 48c0         ext.l      d0
0026e4: b084         cmp.l      d4, d0
0026e6: 6eda         bgt.b      $26c2
0026e8: 200a         move.l     a2, d0
0026ea: 508f         addq.l     #$8, a7
0026ec: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0026f2: 4e5d         unlk       a5
0026f4: 4e75         rts        
0026f6: 4e550000     link.w     a5, #$0
0026fa: 48e78000     movem.l    d0, -(a7)
0026fe: 202e87e6     move.l     -$781a(a6), d0
002702: 4e5d         unlk       a5
002704: 4e75         rts        
002706: 6361         bls.b      $2769
002708: 725f         moveq      #$5f, d1
00270a: 6e65         bgt.b      $2771
00270c: 7464         moveq      #$64, d2
00270e: 62006361     bhi.w      $8a71
002712: 725f         moveq      #$5f, d1
002714: 6465         bcc.b      $277b
002716: 7669         moveq      #$69, d3
002718: 6365         bls.b      $277f
00271a: 00002f08     ori.b      #$8, d0
00271e: 207900000000 movea.l    $0.l, a0
002724: 41e80814     lea.l      $814(a0), a0
002728: 2010         move.l     (a0), d0
00272a: 205f         movea.l    (a7)+, a0
00272c: 4e75         rts        
00272e: 2f08         move.l     a0, -(a7)
002730: 207900000000 movea.l    $0.l, a0
002736: 41e80814     lea.l      $814(a0), a0
00273a: 2008         move.l     a0, d0
00273c: 205f         movea.l    (a7)+, a0
00273e: 4e75         rts        
002740: 48e76080     movem.l    d1-d2/a0, -(a7)
002744: c141         exg.l      d0, d1
002746: 0c8100000002 cmpi.l     #$2, d1
00274c: 6716         beq.b      $2764
00274e: 0c8100000005 cmpi.l     #$5, d1
002754: 670e         beq.b      $2764
002756: 206f0010     movea.l    $10(a7), a0
00275a: 2408         move.l     a0, d2
00275c: 4e40         trap       #$0
00275e: 008d         .dc.w      $008d
002760: 60000056     bra.w      $27b8
002764: 206f0010     movea.l    $10(a7), a0
002768: 2408         move.l     a0, d2
00276a: 4e40         trap       #$0
00276c: 008d         .dc.w      $008d
00276e: 2202         move.l     d2, d1
002770: 60000046     bra.w      $27b8
002774: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
002778: c141         exg.l      d0, d1
00277a: 206f0018     movea.l    $18(a7), a0
00277e: 242f001c     move.l     $1c(a7), d2
002782: 262f0020     move.l     $20(a7), d3
002786: 4e40         trap       #$0
002788: 008d         .dc.w      $008d
00278a: 60000068     bra.w      $27f4
00278e: 48e76080     movem.l    d1-d2/a0, -(a7)
002792: c141         exg.l      d0, d1
002794: 206f0010     movea.l    $10(a7), a0
002798: 242f0014     move.l     $14(a7), d2
00279c: 4e40         trap       #$0
00279e: 008e         .dc.w      $008e
0027a0: 60000016     bra.w      $27b8
0027a4: 48e76080     movem.l    d1-d2/a0, -(a7)
0027a8: c141         exg.l      d0, d1
0027aa: 206f0010     movea.l    $10(a7), a0
0027ae: 2408         move.l     a0, d2
0027b0: 4e40         trap       #$0
0027b2: 008e         .dc.w      $008e
0027b4: 60000002     bra.w      $27b8
0027b8: 6408         bcc.b      $27c2
0027ba: 2d41800c     move.l     d1, -$7ff4(a6)
0027be: 70ff         moveq      #$ff, d0
0027c0: 6002         bra.b      $27c4
0027c2: 2001         move.l     d1, d0
0027c4: 4cdf0106     movem.l    (a7)+, d1-d2/a0
0027c8: 4e75         rts        
0027ca: 6406         bcc.b      $27d2
0027cc: 2d41800c     move.l     d1, -$7ff4(a6)
0027d0: 70ff         moveq      #$ff, d0
0027d2: 4cdf043e     movem.l    (a7)+, d1-d5/a2
0027d6: 4e75         rts        
0027d8: 6406         bcc.b      $27e0
0027da: 2d41800c     move.l     d1, -$7ff4(a6)
0027de: 70ff         moveq      #$ff, d0
0027e0: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
0027e4: 4e75         rts        
0027e6: 6406         bcc.b      $27ee
0027e8: 2d41800c     move.l     d1, -$7ff4(a6)
0027ec: 70ff         moveq      #$ff, d0
0027ee: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
0027f2: 4e75         rts        
0027f4: 6408         bcc.b      $27fe
0027f6: 2d41800c     move.l     d1, -$7ff4(a6)
0027fa: 70ff         moveq      #$ff, d0
0027fc: 6002         bra.b      $2800
0027fe: 2001         move.l     d1, d0
002800: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
002804: 4e75         rts        
002806: 48e74000     movem.l    d1, -(a7)
00280a: c141         exg.l      d0, d1
00280c: 4e40         trap       #$0
00280e: 005c6406     ori.w      #$6406, (a4)+
002812: 2d41800c     move.l     d1, -$7ff4(a6)
002816: 70ff         moveq      #$ff, d0
002818: 4cdf0002     movem.l    (a7)+, d1
00281c: 4e75         rts        
00281e: 48e740e0     movem.l    d1/a0-a2, -(a7)
002822: e340         asl.w      #$1, d0
002824: 207900000000 movea.l    $0.l, a0
00282a: 2268004c     movea.l    $4c(a0), a1
00282e: 45e90168     lea.l      $168(a1), a2
002832: 30320000     move.w     (a2, d0.w), d0
002836: 660a         bne.b      $2842
002838: 4cdf0702     movem.l    (a7)+, d1/a0-a2
00283c: 303cffff     move.w     #$ffff, d0
002840: 4e75         rts        
002842: 22680048     movea.l    $48(a0), a1
002846: b051         cmp.w      (a1), d0
002848: 62f2         bhi.b      $283c
00284a: e540         asl.w      #$2, d0
00284c: d2c0         adda.w     d0, a1
00284e: e448         lsr.w      #$2, d0
002850: 4a91         tst.l      (a1)
002852: 67e8         beq.b      $283c
002854: 2251         movea.l    (a1), a1
002856: b051         cmp.w      (a1), d0
002858: 66e2         bne.b      $283c
00285a: 22690004     movea.l    $4(a1), a1
00285e: 20290008     move.l     $8(a1), d0
002862: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002866: 4e75         rts        
002868: 4e550000     link.w     a5, #$0
00286c: 48e7c080     movem.l    d0-d1/a0, -(a7)
002870: 518f         subq.l     #$8, a7
002872: 7203         moveq      #$3, d1
002874: 41fa00aa     lea.l      $2920(pc), a0
002878: 2008         move.l     a0, d0
00287a: 610001ce     bsr.w      $2a4a
00287e: 2f400004     move.l     d0, $4(a7)
002882: 72ff         moveq      #$ff, d1
002884: b280         cmp.l      d0, d1
002886: 6600000a     bne.w      $2892
00288a: 70ff         moveq      #$ff, d0
00288c: 2e80         move.l     d0, (a7)
00288e: 6000001e     bra.w      $28ae
002892: 2f2f000c     move.l     $c(a7), -(a7)
002896: 222f0008     move.l     $8(a7), d1
00289a: 202f000c     move.l     $c(a7), d0
00289e: 6100ff04     bsr.w      $27a4
0028a2: 588f         addq.l     #$4, a7
0028a4: 2e80         move.l     d0, (a7)
0028a6: 202f0004     move.l     $4(a7), d0
0028aa: 610001ce     bsr.w      $2a7a
0028ae: 2017         move.l     (a7), d0
0028b0: 508f         addq.l     #$8, a7
0028b2: 60000004     bra.w      $28b8
0028b6: 4e71         nop        
0028b8: 4ced0100fffc movem.l    -$4(a5), a0
0028be: 4e5d         unlk       a5
0028c0: 4e75         rts        
0028c2: 4e550000     link.w     a5, #$0
0028c6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0028ca: 518f         subq.l     #$8, a7
0028cc: 7203         moveq      #$3, d1
0028ce: 41fa0058     lea.l      $2928(pc), a0
0028d2: 2008         move.l     a0, d0
0028d4: 61000174     bsr.w      $2a4a
0028d8: 2f400004     move.l     d0, $4(a7)
0028dc: 72ff         moveq      #$ff, d1
0028de: b280         cmp.l      d0, d1
0028e0: 6600000a     bne.w      $28ec
0028e4: 70ff         moveq      #$ff, d0
0028e6: 2e80         move.l     d0, (a7)
0028e8: 6000001e     bra.w      $2908
0028ec: 2f2f000c     move.l     $c(a7), -(a7)
0028f0: 222f0008     move.l     $8(a7), d1
0028f4: 202f000c     move.l     $c(a7), d0
0028f8: 6100fe46     bsr.w      $2740
0028fc: 588f         addq.l     #$4, a7
0028fe: 2e80         move.l     d0, (a7)
002900: 202f0004     move.l     $4(a7), d0
002904: 61000174     bsr.w      $2a7a
002908: 2017         move.l     (a7), d0
00290a: 508f         addq.l     #$8, a7
00290c: 60000004     bra.w      $2912
002910: 4e71         nop        
002912: 4ced0100fffc movem.l    -$4(a5), a0
002918: 4e5d         unlk       a5
00291a: 4e75         rts        
00291c: 4afb         .dc.w      $4afb
00291e: 00102f73     ori.b      #$73, (a0)
002922: 7973         .dc.w      $7973
002924: 636f         bls.b      $2995
002926: 6e002f73     bgt.w      $589b
00292a: 7973         .dc.w      $7973
00292c: 636f         bls.b      $299d
00292e: 6e004e55     bgt.w      $7785
002932: 000048e7     ori.b      #$e7, d0
002936: 80387000     or.b       $7000.w, d0
00293a: 2840         movea.l    d0, a4
00293c: 2640         movea.l    d0, a3
00293e: 2440         movea.l    d0, a2
002940: 700d         moveq      #$d, d0
002942: 7200         moveq      #$0, d1
002944: 41fa0064     lea.l      $29aa(pc), a0
002948: 47ee800c     lea.l      -$7ff4(a6), a3
00294c: 7609         moveq      #$9, d3
00294e: 2683         move.l     d3, (a3)
002950: 262e86d4     move.l     -$792c(a6), d3
002954: 242e86d0     move.l     -$7930(a6), d2
002958: 286e87ea     movea.l    -$7816(a6), a4
00295c: 4e40         trap       #$0
00295e: 0021653e     ori.b      #$3e, -(a1)
002962: 4a93         tst.l      (a3)
002964: 6718         beq.b      $297e
002966: 41fa0046     lea.l      $29ae(pc), a0
00296a: 7264         moveq      #$64, d1
00296c: 7002         moveq      #$2, d0
00296e: 4e40         trap       #$0
002970: 008c         .dc.w      $008c
002972: 41fa0036     lea.l      $29aa(pc), a0
002976: 72dd         moveq      #$dd, d1
002978: 003c0001     ori.b      #$1, ccr
00297c: 6022         bra.b      $29a0
00297e: 3d7c00418358 move.w     #$41, -$7ca8(a6)
002984: 426e835a     clr.w      -$7ca6(a6)
002988: 3d7c00028374 move.w     #$2, -$7c8c(a6)
00298e: 3d7c00018376 move.w     #$1, -$7c8a(a6)
002994: 3d7c00028390 move.w     #$2, -$7c70(a6)
00299a: 3d7c00028392 move.w     #$2, -$7c6e(a6)
0029a0: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0029a6: 4e5d         unlk       a5
0029a8: 4e75         rts        
0029aa: 6369         bls.b      $2a15
0029ac: 6f002a2a     ble.w      $53d8
0029b0: 2a2a2063     move.l     $2063(a2), d5
0029b4: 696f         bvs.b      $2a25
0029b6: 20747261     movea.l    $61(a4, d7.w), a0
0029ba: 7068         moveq      #$68, d0
0029bc: 616e         bsr.b      $2a2c
0029be: 646c         bcc.b      $2a2c
0029c0: 6572         bcs.b      $2a34
0029c2: 206d6973     movea.l    $6973(a5), a0
0029c6: 6d61         blt.b      $2a29
0029c8: 7463         moveq      #$63, d2
0029ca: 6820         bvc.b      $29ec
0029cc: 2a2a2a2a     move.l     $2a2a(a2), d5
0029d0: 0d00         btst.l     d6, d0
0029d2: 4e4d         trap       #$d
0029d4: 00004e4d     ori.b      #$4d, d0
0029d8: 00014e4d     ori.b      #$4d, d1
0029dc: 00024e4d     ori.b      #$4d, d2
0029e0: 00034e4d     ori.b      #$4d, d3
0029e4: 00044e4d     ori.b      #$4d, d4
0029e8: 00054e4d     ori.b      #$4d, d5
0029ec: 00064e4d     ori.b      #$4d, d6
0029f0: 00074e4d     ori.b      #$4d, d7
0029f4: 0008         .dc.w      $0008
0029f6: 4e4d         trap       #$d
0029f8: 0009         .dc.w      $0009
0029fa: 4e4d         trap       #$d
0029fc: 000a         .dc.w      $000a
0029fe: 4e4d         trap       #$d
002a00: 000b         .dc.w      $000b
002a02: 4e4d         trap       #$d
002a04: 000c         .dc.w      $000c
002a06: 4e4d         trap       #$d
002a08: 000d         .dc.w      $000d
002a0a: 4e4d         trap       #$d
002a0c: 000e         .dc.w      $000e
002a0e: 4e4d         trap       #$d
002a10: 000f         .dc.w      $000f
002a12: 4e4d         trap       #$d
002a14: 00104e4d     ori.b      #$4d, (a0)
002a18: 00114e4d     ori.b      #$4d, (a1)
002a1c: 00124e4d     ori.b      #$4d, (a2)
002a20: 00134e4d     ori.b      #$4d, (a3)
002a24: 00144e4d     ori.b      #$4d, (a4)
002a28: 00154e4d     ori.b      #$4d, (a5)
002a2c: 00164e4d     ori.b      #$4d, (a6)
002a30: 00174e4d     ori.b      #$4d, (a7)
002a34: 00184e4d     ori.b      #$4d, (a0)+
002a38: 00194e4d     ori.b      #$4d, (a1)+
002a3c: 001a4e4d     ori.b      #$4d, (a2)+
002a40: 001b4e4d     ori.b      #$4d, (a3)+
002a44: 001c4e4d     ori.b      #$4d, (a4)+
002a48: 001d4e4d     ori.b      #$4d, (a5)+
002a4c: 001e4e4d     ori.b      #$4d, (a6)+
002a50: 001f4e4d     ori.b      #$4d, (a7)+
002a54: 00204e4d     ori.b      #$4d, -(a0)
002a58: 00214e4d     ori.b      #$4d, -(a1)
002a5c: 00224e4d     ori.b      #$4d, -(a2)
002a60: 00234e4d     ori.b      #$4d, -(a3)
002a64: 00244e4d     ori.b      #$4d, -(a4)
002a68: 00254e4d     ori.b      #$4d, -(a5)
002a6c: 00264e4d     ori.b      #$4d, -(a6)
002a70: 00274e4d     ori.b      #$4d, -(a7)
002a74: 00284e4d0029 ori.b      #$4d, $29(a0)
002a7a: 4e4d         trap       #$d
002a7c: 002a4e4d002b ori.b      #$4d, $2b(a2)
002a82: 4e4d         trap       #$d
002a84: 002c4e4d002d ori.b      #$4d, $2d(a4)
002a8a: 4e4d         trap       #$d
002a8c: 002e4e4d002f ori.b      #$4d, $2f(a6)
002a92: 4e4d         trap       #$d
002a94: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
002a9a: 4e4d         trap       #$d
002a9c: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
002aa2: 4e4d         trap       #$d
002aa4: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
002aaa: 4e4d         trap       #$d
002aac: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
002ab2: 4e4d         trap       #$d
002ab4: 00384e4d0039 ori.b      #$4d, $39.w
002aba: 4e4d         trap       #$d
002abc: 003a         .dc.w      $003a
002abe: 4e4d         trap       #$d
002ac0: 003b         .dc.w      $003b
002ac2: 4e4d         trap       #$d
002ac4: 003c         .dc.w      $003c
002ac6: 4e4d         trap       #$d
002ac8: 003d         .dc.w      $003d
002aca: 4e4d         trap       #$d
002acc: 003e         .dc.w      $003e
002ace: 4e4d         trap       #$d
002ad0: 003f         .dc.w      $003f
002ad2: 4e4d         trap       #$d
002ad4: 00414e4d     ori.w      #$4e4d, d1
002ad8: 00424e4d     ori.w      #$4e4d, d2
002adc: 00434e4d     ori.w      #$4e4d, d3
002ae0: 00444e4d     ori.w      #$4e4d, d4
002ae4: 00454e4d     ori.w      #$4e4d, d5
002ae8: 00402f08     ori.w      #$2f08, d0
002aec: 2040         movea.l    d0, a0
002aee: b300         eor.b      d1, d0
002af0: 08000000     btst.b     #$0, d0
002af4: 6652         bne.b      $2b48
002af6: 08010000     btst.b     #$0, d1
002afa: c389         exg.l      d1, a1
002afc: 6718         beq.b      $2b16
002afe: b109         cmpm.b     (a1)+, (a0)+
002b00: 6530         bcs.b      $2b32
002b02: 6220         bhi.b      $2b24
002b04: 4a28ffff     tst.b      -$1(a0)
002b08: 660c         bne.b      $2b16
002b0a: 6034         bra.b      $2b40
002b0c: 4a00         tst.b      d0
002b0e: 6730         beq.b      $2b40
002b10: 0c4000ff     cmpi.w     #$ff, d0
002b14: 632a         bls.b      $2b40
002b16: 3018         move.w     (a0)+, d0
002b18: b059         cmp.w      (a1)+, d0
002b1a: 67f0         beq.b      $2b0c
002b1c: 650e         bcs.b      $2b2c
002b1e: 0c4000ff     cmpi.w     #$ff, d0
002b22: 6316         bls.b      $2b3a
002b24: 7001         moveq      #$1, d0
002b26: 205f         movea.l    (a7)+, a0
002b28: c389         exg.l      d1, a1
002b2a: 4e75         rts        
002b2c: 0c4000ff     cmpi.w     #$ff, d0
002b30: 6308         bls.b      $2b3a
002b32: 70ff         moveq      #$ff, d0
002b34: 205f         movea.l    (a7)+, a0
002b36: c389         exg.l      d1, a1
002b38: 4e75         rts        
002b3a: 4a29fffe     tst.b      -$2(a1)
002b3e: 66f2         bne.b      $2b32
002b40: 7000         moveq      #$0, d0
002b42: 205f         movea.l    (a7)+, a0
002b44: c389         exg.l      d1, a1
002b46: 4e75         rts        
002b48: c389         exg.l      d1, a1
002b4a: 7000         moveq      #$0, d0
002b4c: 1018         move.b     (a0)+, d0
002b4e: b019         cmp.b      (a1)+, d0
002b50: 56c8fffa     dbne       d0, $2b4c
002b54: 65dc         bcs.b      $2b32
002b56: 5240         addq.w     #$1, d0
002b58: 205f         movea.l    (a7)+, a0
002b5a: c389         exg.l      d1, a1
002b5c: 4e75         rts        
002b5e: 2f08         move.l     a0, -(a7)
002b60: 2040         movea.l    d0, a0
002b62: 4a18         tst.b      (a0)+
002b64: 670c         beq.b      $2b72
002b66: 4a18         tst.b      (a0)+
002b68: 6708         beq.b      $2b72
002b6a: 4a18         tst.b      (a0)+
002b6c: 6704         beq.b      $2b72
002b6e: 4a18         tst.b      (a0)+
002b70: 66f0         bne.b      $2b62
002b72: 91c0         suba.l     d0, a0
002b74: 2008         move.l     a0, d0
002b76: 5380         subq.l     #$1, d0
002b78: 205f         movea.l    (a7)+, a0
002b7a: 4e75         rts        
002b7c: 2f08         move.l     a0, -(a7)
002b7e: 2040         movea.l    d0, a0
002b80: c389         exg.l      d1, a1
002b82: 10d9         move.b     (a1)+, (a0)+
002b84: 670c         beq.b      $2b92
002b86: 10d9         move.b     (a1)+, (a0)+
002b88: 6708         beq.b      $2b92
002b8a: 10d9         move.b     (a1)+, (a0)+
002b8c: 6704         beq.b      $2b92
002b8e: 10d9         move.b     (a1)+, (a0)+
002b90: 66f0         bne.b      $2b82
002b92: 205f         movea.l    (a7)+, a0
002b94: c389         exg.l      d1, a1
002b96: 4e75         rts        
002b98: 2f08         move.l     a0, -(a7)
002b9a: 2040         movea.l    d0, a0
002b9c: c389         exg.l      d1, a1
002b9e: 4a18         tst.b      (a0)+
002ba0: 670c         beq.b      $2bae
002ba2: 4a18         tst.b      (a0)+
002ba4: 6708         beq.b      $2bae
002ba6: 4a18         tst.b      (a0)+
002ba8: 6704         beq.b      $2bae
002baa: 4a18         tst.b      (a0)+
002bac: 66f0         bne.b      $2b9e
002bae: 1159ffff     move.b     (a1)+, -$1(a0)
002bb2: 66ce         bne.b      $2b82
002bb4: 60dc         bra.b      $2b92
002bb6: 2f08         move.l     a0, -(a7)
002bb8: 2040         movea.l    d0, a0
002bba: c389         exg.l      d1, a1
002bbc: 10d9         move.b     (a1)+, (a0)+
002bbe: 6afc         bpl.b      $2bbc
002bc0: 4210         clr.b      (a0)
002bc2: 0220007f     andi.b     #$7f, -(a0)
002bc6: 205f         movea.l    (a7)+, a0
002bc8: c389         exg.l      d1, a1
002bca: 4e75         rts        
002bcc: 48e73800     movem.l    d2-d4, -(a7)
002bd0: 2400         move.l     d0, d2
002bd2: 2600         move.l     d0, d3
002bd4: 4843         swap       d3
002bd6: 2801         move.l     d1, d4
002bd8: 4844         swap       d4
002bda: c0c1         mulu.w     d1, d0
002bdc: c2c3         mulu.w     d3, d1
002bde: c4c4         mulu.w     d4, d2
002be0: c6c4         mulu.w     d4, d3
002be2: 4840         swap       d0
002be4: d041         add.w      d1, d0
002be6: 7800         moveq      #$0, d4
002be8: d784         addx.l     d4, d3
002bea: d042         add.w      d2, d0
002bec: d784         addx.l     d4, d3
002bee: 4840         swap       d0
002bf0: 4241         clr.w      d1
002bf2: 4841         swap       d1
002bf4: 4242         clr.w      d2
002bf6: 4842         swap       d2
002bf8: d282         add.l      d2, d1
002bfa: d283         add.l      d3, d1
002bfc: 4a80         tst.l      d0
002bfe: 4cdf001c     movem.l    (a7)+, d2-d4
002c02: 4e75         rts        
002c04: 2f02         move.l     d2, -(a7)
002c06: 7400         moveq      #$0, d2
002c08: 4a80         tst.l      d0
002c0a: 6a04         bpl.b      $2c10
002c0c: 4480         neg.l      d0
002c0e: 7403         moveq      #$3, d2
002c10: 4a81         tst.l      d1
002c12: 6a06         bpl.b      $2c1a
002c14: 4481         neg.l      d1
002c16: 0a020001     eori.b     #$1, d2
002c1a: 6122         bsr.b      $2c3e
002c1c: e20a         lsr.b      #$1, d2
002c1e: 6402         bcc.b      $2c22
002c20: 4480         neg.l      d0
002c22: e20a         lsr.b      #$1, d2
002c24: 6402         bcc.b      $2c28
002c26: 4481         neg.l      d1
002c28: 241f         move.l     (a7)+, d2
002c2a: 4a80         tst.l      d0
002c2c: 4e75         rts        
002c2e: 61d4         bsr.b      $2c04
002c30: c141         exg.l      d0, d1
002c32: 4a80         tst.l      d0
002c34: 4e75         rts        
002c36: 6106         bsr.b      $2c3e
002c38: c141         exg.l      d0, d1
002c3a: 4a80         tst.l      d0
002c3c: 4e75         rts        
002c3e: 48e73800     movem.l    d2-d4, -(a7)
002c42: 2401         move.l     d1, d2
002c44: 6606         bne.b      $2c4c
002c46: 81fc0000     divs.w     #$0, d0
002c4a: 606e         bra.b      $2cba
002c4c: 5381         subq.l     #$1, d1
002c4e: 676a         beq.b      $2cba
002c50: 2801         move.l     d1, d4
002c52: 2200         move.l     d0, d1
002c54: b481         cmp.l      d1, d2
002c56: 650c         bcs.b      $2c64
002c58: 6704         beq.b      $2c5e
002c5a: 7000         moveq      #$0, d0
002c5c: 605c         bra.b      $2cba
002c5e: 7001         moveq      #$1, d0
002c60: 9282         sub.l      d2, d1
002c62: 6056         bra.b      $2cba
002c64: 2602         move.l     d2, d3
002c66: 6bf6         bmi.b      $2c5e
002c68: c684         and.l      d4, d3
002c6a: 6612         bne.b      $2c7e
002c6c: e28a         lsr.l      #$1, d2
002c6e: 76ff         moveq      #$ff, d3
002c70: e28a         lsr.l      #$1, d2
002c72: 55cbfffc     dbcs       d3, $2c70
002c76: 4483         neg.l      d3
002c78: e6a8         lsr.l      d3, d0
002c7a: c284         and.l      d4, d1
002c7c: 603c         bra.b      $2cba
002c7e: 7000         moveq      #$0, d0
002c80: 76ff         moveq      #$ff, d3
002c82: e382         asl.l      #$1, d2
002c84: 6a06         bpl.b      $2c8c
002c86: b481         cmp.l      d1, d2
002c88: 620a         bhi.b      $2c94
002c8a: 600c         bra.b      $2c98
002c8c: b481         cmp.l      d1, d2
002c8e: 54cbfff2     dbcc       d3, $2c82
002c92: 6704         beq.b      $2c98
002c94: 5283         addq.l     #$1, d3
002c96: e28a         lsr.l      #$1, d2
002c98: 4483         neg.l      d3
002c9a: 6004         bra.b      $2ca0
002c9c: e380         asl.l      #$1, d0
002c9e: e28a         lsr.l      #$1, d2
002ca0: 9282         sub.l      d2, d1
002ca2: 6510         bcs.b      $2cb4
002ca4: 5280         addq.l     #$1, d0
002ca6: 51cbfff4     dbra       d3, $2c9c
002caa: 600e         bra.b      $2cba
002cac: e380         asl.l      #$1, d0
002cae: e28a         lsr.l      #$1, d2
002cb0: d282         add.l      d2, d1
002cb2: 65f0         bcs.b      $2ca4
002cb4: 51cbfff6     dbra       d3, $2cac
002cb8: d282         add.l      d2, d1
002cba: 4cdf001c     movem.l    (a7)+, d2-d4
002cbe: 4a80         tst.l      d0
002cc0: 4e75         rts        
002cc2: 2a5f         movea.l    (a7)+, a5
002cc4: 5385         subq.l     #$1, d5
002cc6: 6562         bcs.b      $2d2a
002cc8: 1018         move.b     (a0)+, d0
002cca: 67f8         beq.b      $2cc4
002ccc: 0c00000d     cmpi.b     #$d, d0
002cd0: 6758         beq.b      $2d2a
002cd2: 0c000020     cmpi.b     #$20, d0
002cd6: 67ec         beq.b      $2cc4
002cd8: 0c000009     cmpi.b     #$9, d0
002cdc: 67e6         beq.b      $2cc4
002cde: 0c00002c     cmpi.b     #$2c, d0
002ce2: 67e0         beq.b      $2cc4
002ce4: 5282         addq.l     #$1, d2
002ce6: 0c000022     cmpi.b     #$22, d0
002cea: 6730         beq.b      $2d1c
002cec: 0c000027     cmpi.b     #$27, d0
002cf0: 672a         beq.b      $2d1c
002cf2: 4868ffff     pea.l      -$1(a0)
002cf6: 5385         subq.l     #$1, d5
002cf8: 6530         bcs.b      $2d2a
002cfa: 1018         move.b     (a0)+, d0
002cfc: 67c6         beq.b      $2cc4
002cfe: 0c00000d     cmpi.b     #$d, d0
002d02: 6712         beq.b      $2d16
002d04: 0c000020     cmpi.b     #$20, d0
002d08: 670c         beq.b      $2d16
002d0a: 0c000009     cmpi.b     #$9, d0
002d0e: 6706         beq.b      $2d16
002d10: 0c00002c     cmpi.b     #$2c, d0
002d14: 66e0         bne.b      $2cf6
002d16: 4228ffff     clr.b      -$1(a0)
002d1a: 60a8         bra.b      $2cc4
002d1c: 4850         pea.l      (a0)
002d1e: 5385         subq.l     #$1, d5
002d20: 6508         bcs.b      $2d2a
002d22: 1218         move.b     (a0)+, d1
002d24: b001         cmp.b      d1, d0
002d26: 66f6         bne.b      $2d1e
002d28: 60ec         bra.b      $2d16
002d2a: 204f         movea.l    a7, a0
002d2c: 4857         pea.l      (a7)
002d2e: 2f02         move.l     d2, -(a7)
002d30: 5382         subq.l     #$1, d2
002d32: 6710         beq.b      $2d44
002d34: e582         asl.l      #$2, d2
002d36: 20302800     move.l     (a0, d2.l), d0
002d3a: 21902800     move.l     (a0), (a0, d2.l)
002d3e: 20c0         move.l     d0, (a0)+
002d40: 5182         subq.l     #$8, d2
002d42: 62f2         bhi.b      $2d36
002d44: 4ed5         jmp        (a5)
002d46: 4e550000     link.w     a5, #$0
002d4a: 48e76080     movem.l    d1-d2/a0, -(a7)
002d4e: 2040         movea.l    d0, a0
002d50: 2001         move.l     d1, d0
002d52: 2f0a         move.l     a2, -(a7)
002d54: 4e40         trap       #$0
002d56: 0080204a245f ori.l      #$204a245f, d0
002d5c: 65000372     bcs.w      $30d0
002d60: 2008         move.l     a0, d0
002d62: 6000036a     bra.w      $30ce
002d66: 4e550000     link.w     a5, #$0
002d6a: 48e76080     movem.l    d1-d2/a0, -(a7)
002d6e: 204a         movea.l    a2, a0
002d70: 2440         movea.l    d0, a2
002d72: 4e40         trap       #$0
002d74: 008124486000 ori.l      #$24486000, d1
002d7a: 0354         bchg.b     d1, (a4)
002d7c: 4e550000     link.w     a5, #$0
002d80: 48e76080     movem.l    d1-d2/a0, -(a7)
002d84: 7000         moveq      #$0, d0
002d86: 4e40         trap       #$0
002d88: 000a         .dc.w      $000a
002d8a: 60000342     bra.w      $30ce
002d8e: 4e550000     link.w     a5, #$0
002d92: 48e76080     movem.l    d1-d2/a0, -(a7)
002d96: 206d0008     movea.l    $8(a5), a0
002d9a: 2210         move.l     (a0), d1
002d9c: 2040         movea.l    d0, a0
002d9e: 2017         move.l     (a7), d0
002da0: 4e40         trap       #$0
002da2: 00176500     ori.b      #$0, (a7)
002da6: 032a206d     btst.l     d1, $206d(a2)
002daa: 0008         .dc.w      $0008
002dac: 2081         move.l     d1, (a0)
002dae: 60000328     bra.w      $30d8
002db2: 4e550000     link.w     a5, #$0
002db6: 48e76080     movem.l    d1-d2/a0, -(a7)
002dba: 4e40         trap       #$0
002dbc: 000f         .dc.w      $000f
002dbe: 6000030e     bra.w      $30ce
002dc2: e188         lsl.l      #$8, d0
002dc4: 08c0001f     bset.b     #$1f, d0
002dc8: 4e550000     link.w     a5, #$0
002dcc: 48e76080     movem.l    d1-d2/a0, -(a7)
002dd0: 4e40         trap       #$0
002dd2: 000a         .dc.w      $000a
002dd4: 600002f8     bra.w      $30ce
002dd8: 4e550000     link.w     a5, #$0
002ddc: 48e700c0     movem.l    a0-a1, -(a7)
002de0: 2041         movea.l    d1, a0
002de2: 2240         movea.l    d0, a1
002de4: 222d0008     move.l     $8(a5), d1
002de8: 4e40         trap       #$0
002dea: 00116560     ori.b      #$60, (a1)
002dee: 7000         moveq      #$0, d0
002df0: 6068         bra.b      $2e5a
002df2: 4e550000     link.w     a5, #$0
002df6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002dfa: 2040         movea.l    d0, a0
002dfc: 4e40         trap       #$0
002dfe: 00106454     ori.b      #$54, (a0)
002e02: 604a         bra.b      $2e4e
002e04: 4e550000     link.w     a5, #$0
002e08: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002e0c: 2040         movea.l    d0, a0
002e0e: 2248         movea.l    a0, a1
002e10: 1019         move.b     (a1)+, d0
002e12: 0c00002f     cmpi.b     #$2f, d0
002e16: 671a         beq.b      $2e32
002e18: 0c00002e     cmpi.b     #$2e, d0
002e1c: 6622         bne.b      $2e40
002e1e: 0c19002e     cmpi.b     #$2e, (a1)+
002e22: 67fa         beq.b      $2e1e
002e24: 1021         move.b     -(a1), d0
002e26: 672e         beq.b      $2e56
002e28: 0c00002f     cmpi.b     #$2f, d0
002e2c: 6612         bne.b      $2e40
002e2e: 2049         movea.l    a1, a0
002e30: 60de         bra.b      $2e10
002e32: 1019         move.b     (a1)+, d0
002e34: 0c00002f     cmpi.b     #$2f, d0
002e38: 6706         beq.b      $2e40
002e3a: 0c00002e     cmpi.b     #$2e, d0
002e3e: 67de         beq.b      $2e1e
002e40: 4e40         trap       #$0
002e42: 00106508     ori.b      #$8, (a0)
002e46: 4a00         tst.b      d0
002e48: 670c         beq.b      $2e56
002e4a: 2049         movea.l    a1, a0
002e4c: 60c2         bra.b      $2e10
002e4e: 2d41800c     move.l     d1, -$7ff4(a6)
002e52: 70ff         moveq      #$ff, d0
002e54: 6004         bra.b      $2e5a
002e56: 2009         move.l     a1, d0
002e58: 9097         sub.l      (a7), d0
002e5a: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
002e60: 4e5d         unlk       a5
002e62: 4e75         rts        
002e64: 4e550000     link.w     a5, #$0
002e68: 48e76080     movem.l    d1-d2/a0, -(a7)
002e6c: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
002e70: 242d000c     move.l     $c(a5), d2
002e74: 0802000f     btst.b     #$f, d2
002e78: 6708         beq.b      $2e82
002e7a: 262d0010     move.l     $10(a5), d3
002e7e: 282d0014     move.l     $14(a5), d4
002e82: 2040         movea.l    d0, a0
002e84: 2001         move.l     d1, d0
002e86: 222d0008     move.l     $8(a5), d1
002e8a: 4e40         trap       #$0
002e8c: 00256502     ori.b      #$2, -(a5)
002e90: 200a         move.l     a2, d0
002e92: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
002e96: 60000236     bra.w      $30ce
002e9a: 4e550000     link.w     a5, #$0
002e9e: 48e76080     movem.l    d1-d2/a0, -(a7)
002ea2: 2040         movea.l    d0, a0
002ea4: 4e40         trap       #$0
002ea6: 001a6500     ori.b      #$0, (a2)+
002eaa: 02262001     andi.b     #$1, -(a6)
002eae: 6000021e     bra.w      $30ce
002eb2: 4e550000     link.w     a5, #$0
002eb6: 48e76080     movem.l    d1-d2/a0, -(a7)
002eba: 2040         movea.l    d0, a0
002ebc: 4e40         trap       #$0
002ebe: 001f6500     ori.b      #$0, (a7)+
002ec2: 020e         .dc.w      $020e
002ec4: 2001         move.l     d1, d0
002ec6: 60000206     bra.w      $30ce
002eca: 4e550000     link.w     a5, #$0
002ece: 48e76080     movem.l    d1-d2/a0, -(a7)
002ed2: 206d0008     movea.l    $8(a5), a0
002ed6: 4e40         trap       #$0
002ed8: 00186000     ori.b      #$0, (a0)+
002edc: 01f24e55     bset.b     d0, $55(a2, d4.l)
002ee0: 000048e7     ori.b      #$e7, d0
002ee4: 6080         bra.b      $2e66
002ee6: 2040         movea.l    d0, a0
002ee8: 4e40         trap       #$0
002eea: 00266000     ori.b      #$0, -(a6)
002eee: 01e0         bset.b     d0, -(a0)
002ef0: 4e550000     link.w     a5, #$0
002ef4: 48e76080     movem.l    d1-d2/a0, -(a7)
002ef8: 08c1001f     bset.b     #$1f, d1
002efc: 600c         bra.b      $2f0a
002efe: 4e550000     link.w     a5, #$0
002f02: 48e76080     movem.l    d1-d2/a0, -(a7)
002f06: 242d0008     move.l     $8(a5), d2
002f0a: 4e40         trap       #$0
002f0c: 00276500     ori.b      #$0, -(a7)
002f10: 01c0         bset.b     d0, d0
002f12: 2002         move.l     d2, d0
002f14: 600001b8     bra.w      $30ce
002f18: 4e550000     link.w     a5, #$0
002f1c: 48e76080     movem.l    d1-d2/a0, -(a7)
002f20: 4e40         trap       #$0
002f22: 000b         .dc.w      $000b
002f24: 600001a8     bra.w      $30ce
002f28: 4e550000     link.w     a5, #$0
002f2c: 4e40         trap       #$0
002f2e: 00524e5d     ori.w      #$4e5d, (a2)
002f32: 4e75         rts        
002f34: 4e550000     link.w     a5, #$0
002f38: 48e76080     movem.l    d1-d2/a0, -(a7)
002f3c: 2f09         move.l     a1, -(a7)
002f3e: 206d0008     movea.l    $8(a5), a0
002f42: 226d000c     movea.l    $c(a5), a1
002f46: 4e40         trap       #$0
002f48: 001b225f     ori.b      #$5f, (a3)+
002f4c: 60000180     bra.w      $30ce
002f50: 4e550000     link.w     a5, #$0
002f54: 48e76080     movem.l    d1-d2/a0, -(a7)
002f58: 2040         movea.l    d0, a0
002f5a: 3001         move.w     d1, d0
002f5c: 48e70060     movem.l    a1-a2, -(a7)
002f60: 4e40         trap       #$0
002f62: 00006502     ori.b      #$2, d0
002f66: 200a         move.l     a2, d0
002f68: 4cdf0600     movem.l    (a7)+, a1-a2
002f6c: 60000160     bra.w      $30ce
002f70: 4e550000     link.w     a5, #$0
002f74: 48e76080     movem.l    d1-d2/a0, -(a7)
002f78: 2040         movea.l    d0, a0
002f7a: 3001         move.w     d1, d0
002f7c: 48e70060     movem.l    a1-a2, -(a7)
002f80: 4e40         trap       #$0
002f82: 000160de     ori.b      #$de, d1
002f86: 4e550000     link.w     a5, #$0
002f8a: 48e76080     movem.l    d1-d2/a0, -(a7)
002f8e: 2f0a         move.l     a2, -(a7)
002f90: 2440         movea.l    d0, a2
002f92: 4e40         trap       #$0
002f94: 0002245f     ori.b      #$5f, d2
002f98: 60000134     bra.w      $30ce
002f9c: 4e550000     link.w     a5, #$0
002fa0: 48e76080     movem.l    d1-d2/a0, -(a7)
002fa4: 2040         movea.l    d0, a0
002fa6: 3001         move.w     d1, d0
002fa8: 4e40         trap       #$0
002faa: 001d6000     ori.b      #$0, (a5)+
002fae: 0120         btst.l     d0, -(a0)
002fb0: 4e550000     link.w     a5, #$0
002fb4: 48e76080     movem.l    d1-d2/a0, -(a7)
002fb8: 4e40         trap       #$0
002fba: 0008         .dc.w      $0008
002fbc: 60000110     bra.w      $30ce
002fc0: 4e550000     link.w     a5, #$0
002fc4: 48e76080     movem.l    d1-d2/a0, -(a7)
002fc8: 2040         movea.l    d0, a0
002fca: 7000         moveq      #$0, d0
002fcc: 4e40         trap       #$0
002fce: 00046500     ori.b      #$0, d4
002fd2: 00fe         .dc.w      $00fe
002fd4: 2408         move.l     a0, d2
002fd6: 670000f6     beq.w      $30ce
002fda: 4258         clr.w      (a0)+
002fdc: 3081         move.w     d1, (a0)
002fde: 600000ee     bra.w      $30ce
002fe2: 4e550000     link.w     a5, #$0
002fe6: 48e76080     movem.l    d1-d2/a0, -(a7)
002fea: 4e40         trap       #$0
002fec: 000d         .dc.w      $000d
002fee: 600000de     bra.w      $30ce
002ff2: 4e550000     link.w     a5, #$0
002ff6: 48e76080     movem.l    d1-d2/a0, -(a7)
002ffa: 48e71c40     movem.l    d3-d5/a1, -(a7)
002ffe: 7a03         moveq      #$3, d5
003000: 602e         bra.b      $3030
003002: 4e550000     link.w     a5, #$0
003006: 48e76080     movem.l    d1-d2/a0, -(a7)
00300a: 48e71c40     movem.l    d3-d5/a1, -(a7)
00300e: 7a01         moveq      #$1, d5
003010: 601e         bra.b      $3030
003012: 4e550000     link.w     a5, #$0
003016: 48e76080     movem.l    d1-d2/a0, -(a7)
00301a: 48e71c40     movem.l    d3-d5/a1, -(a7)
00301e: 7a02         moveq      #$2, d5
003020: 600e         bra.b      $3030
003022: 4e550000     link.w     a5, #$0
003026: 48e76080     movem.l    d1-d2/a0, -(a7)
00302a: 48e71c40     movem.l    d3-d5/a1, -(a7)
00302e: 7a00         moveq      #$0, d5
003030: 2040         movea.l    d0, a0
003032: 2401         move.l     d1, d2
003034: 226d0008     movea.l    $8(a5), a1
003038: 302d0012     move.w     $12(a5), d0
00303c: 4840         swap       d0
00303e: 302d000e     move.w     $e(a5), d0
003042: 222d0014     move.l     $14(a5), d1
003046: 7603         moveq      #$3, d3
003048: 08050001     btst.b     #$1, d5
00304c: 6704         beq.b      $3052
00304e: 262d001c     move.l     $1c(a5), d3
003052: 282d0018     move.l     $18(a5), d4
003056: 08050000     btst.b     #$0, d5
00305a: 6606         bne.b      $3062
00305c: 4e40         trap       #$0
00305e: 00036004     ori.b      #$4, d3
003062: 4e40         trap       #$0
003064: 00054cdf     ori.b      #$df, d5
003068: 023860000062 andi.b     #$0, $62.w
00306e: 4e550000     link.w     a5, #$0
003072: 48e76080     movem.l    d1-d2/a0, -(a7)
003076: 4e40         trap       #$0
003078: 000c         .dc.w      $000c
00307a: 60000052     bra.w      $30ce
00307e: 4e550000     link.w     a5, #$0
003082: 48e76080     movem.l    d1-d2/a0, -(a7)
003086: 4e40         trap       #$0
003088: 000c         .dc.w      $000c
00308a: 65000044     bcs.w      $30d0
00308e: 2001         move.l     d1, d0
003090: 6000003c     bra.w      $30ce
003094: 4e550000     link.w     a5, #$0
003098: 48e76080     movem.l    d1-d2/a0, -(a7)
00309c: 2200         move.l     d0, d1
00309e: 4e40         trap       #$0
0030a0: 001c6000     ori.b      #$0, (a4)+
0030a4: 002a4e550000 ori.b      #$55, $0(a2)
0030aa: 48e76080     movem.l    d1-d2/a0, -(a7)
0030ae: 41fa0012     lea.l      $30c2(pc), a0
0030b2: 2d4086cc     move.l     d0, -$7934(a6)
0030b6: 6602         bne.b      $30ba
0030b8: 2040         movea.l    d0, a0
0030ba: 4e40         trap       #$0
0030bc: 0009         .dc.w      $0009
0030be: 6000000e     bra.w      $30ce
0030c2: 2001         move.l     d1, d0
0030c4: 206e86cc     movea.l    -$7934(a6), a0
0030c8: 4e90         jsr        (a0)
0030ca: 4e40         trap       #$0
0030cc: 001e640c     ori.b      #$c, (a6)+
0030d0: 2d41800c     move.l     d1, -$7ff4(a6)
0030d4: 70ff         moveq      #$ff, d0
0030d6: 6004         bra.b      $30dc
0030d8: 65f6         bcs.b      $30d0
0030da: 7000         moveq      #$0, d0
0030dc: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
0030e2: 4e5d         unlk       a5
0030e4: 4e75         rts        
0030e6: 4e550000     link.w     a5, #$0
0030ea: 2200         move.l     d0, d1
0030ec: 6100001e     bsr.w      $310c
0030f0: 6100f98c     bsr.w      $2a7e
0030f4: 6008         bra.b      $30fe
0030f6: 4e550000     link.w     a5, #$0
0030fa: 4afc         illegal    #$4afc
0030fc: 2200         move.l     d0, d1
0030fe: 4e40         trap       #$0
003100: 0006dead     ori.b      #$ad, d6
003104: dead003c     add.l      $3c(a5), d7
003108: 00014e75     ori.b      #$75, d1
00310c: 4e75         rts        
