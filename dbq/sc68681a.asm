00003c: 0048         .dc.w      $0048
00003e: 022002e4     andi.b     #$e4, -(a0)
000042: 0326         btst.l     d1, -(a6)
000044: 03a80570     bclr.b     d1, $570(a0)
000048: 41ea0088     lea.l      $88(a2), a0
00004c: 25480054     move.l     a0, $54(a2)
000050: 25480058     move.l     a0, $58(a2)
000054: 41e80100     lea.l      $100(a0), a0
000058: 2548005c     move.l     a0, $5c(a2)
00005c: 41ea0188     lea.l      $188(a2), a0
000060: 25480062     move.l     a0, $62(a2)
000064: 25480066     move.l     a0, $66(a2)
000068: 41e80100     lea.l      $100(a0), a0
00006c: 2548006a     move.l     a0, $6a(a2)
000070: 426a0060     clr.w      $60(a2)
000074: 426a006e     clr.w      $6e(a2)
000078: 422a0072     clr.b      $72(a2)
00007c: 426a0074     clr.w      $74(a2)
000080: 157c00020073 move.b     #$2, $73(a2)
000086: 422a007c     clr.b      $7c(a2)
00008a: 266a0000     movea.l    $0(a2), a3
00008e: 7000         moveq      #$0, d0
000090: 10290034     move.b     $34(a1), d0
000094: 14290035     move.b     $35(a1), d2
000098: e142         asl.w      #$8, d2
00009a: 08c2000d     bset.b     #$d, d2
00009e: 35420070     move.w     d2, $70(a2)
0000a2: 12290036     move.b     $36(a1), d1
0000a6: 41fa04f6     lea.l      $59e(pc), a0
0000aa: 4e40         trap       #$0
0000ac: 002a65181769 ori.b      #$18, $1769(a2)
0000b2: 0034000c1029 ori.b      #$c, $29(a4, d1.w)
0000b8: 005c1629     ori.w      #$1629, (a4)+
0000bc: 005d6114     ori.w      #$6114, (a5)+
0000c0: 6508         bcs.b      $ca
0000c2: 610006a2     bsr.w      $766
0000c6: 7200         moveq      #$0, d1
0000c8: 4e75         rts        
0000ca: 323c00f0     move.w     #$f0, d1
0000ce: 003c0001     ori.b      #$1, ccr
0000d2: 4e75         rts        
0000d4: 48a7f000     movem.w    d0-d3, -(a7)
0000d8: 1540007d     move.b     d0, $7d(a2)
0000dc: 1543007e     move.b     d3, $7e(a2)
0000e0: 177c00380002 move.b     #$38, $2(a3)
0000e6: 177c00220002 move.b     #$22, $2(a3)
0000ec: 177c004a0002 move.b     #$4a, $2(a3)
0000f2: 123c0013     move.b     #$13, d1
0000f6: 08000000     btst.b     #$0, d0
0000fa: 670e         beq.b      $10a
0000fc: 08810004     bclr.b     #$4, d1
000100: 08000001     btst.b     #$1, d0
000104: 6604         bne.b      $10a
000106: 08c10002     bset.b     #$2, d1
00010a: 1400         move.b     d0, d2
00010c: c43c000c     and.b      #$c, d2
000110: 6608         bne.b      $11a
000112: 157c00ff007b move.b     #$ff, $7b(a2)
000118: 602e         bra.b      $148
00011a: b43c0004     cmp.b      #$4, d2
00011e: 660c         bne.b      $12c
000120: c23c00fe     and.b      #$fe, d1
000124: 157c007f007b move.b     #$7f, $7b(a2)
00012a: 601c         bra.b      $148
00012c: b43c0008     cmp.b      #$8, d2
000130: 660c         bne.b      $13e
000132: c23c00fd     and.b      #$fd, d1
000136: 157c003f007b move.b     #$3f, $7b(a2)
00013c: 600a         bra.b      $148
00013e: c23c00fc     and.b      #$fc, d1
000142: 157c001f007b move.b     #$1f, $7b(a2)
000148: 177c00100002 move.b     #$10, $2(a3)
00014e: 17410000     move.b     d1, $0(a3)
000152: 08000004     btst.b     #$4, d0
000156: 660000b2     bne.w      $20a
00015a: 123c0017     move.b     #$17, d1
00015e: 08000005     btst.b     #$5, d0
000162: 6704         beq.b      $168
000164: 123c001f     move.b     #$1f, d1
000168: 08000007     btst.b     #$7, d0
00016c: 6604         bne.b      $172
00016e: 08810004     bclr.b     #$4, d1
000172: 17410000     move.b     d1, $0(a3)
000176: 1003         move.b     d3, d0
000178: 6b000090     bmi.w      $20a
00017c: c03c000f     and.b      #$f, d0
000180: 67000088     beq.w      $20a
000184: b03c000b     cmp.b      #$b, d0
000188: 67000080     beq.w      $20a
00018c: b03c000d     cmp.b      #$d, d0
000190: 67000078     beq.w      $20a
000194: b03c0008     cmp.b      #$8, d0
000198: 673a         beq.b      $1d4
00019a: b03c0009     cmp.b      #$9, d0
00019e: 673a         beq.b      $1da
0001a0: b03c000a     cmp.b      #$a, d0
0001a4: 6734         beq.b      $1da
0001a6: b03c000c     cmp.b      #$c, d0
0001aa: 6734         beq.b      $1e0
0001ac: b03c000e     cmp.b      #$e, d0
0001b0: 672e         beq.b      $1e0
0001b2: b03c000f     cmp.b      #$f, d0
0001b6: 6728         beq.b      $1e0
0001b8: 903c0001     sub.b      #$1, d0
0001bc: 1200         move.b     d0, d1
0001be: e908         lsl.b      #$4, d0
0001c0: d200         add.b      d0, d1
0001c2: 08ee000707c5 bset.b     #$7, $7c5(a6)
0001c8: 176e07c50004 move.b     $7c5(a6), $4(a3)
0001ce: 17410001     move.b     d1, $1(a3)
0001d2: 6012         bra.b      $1e6
0001d4: 123c00aa     move.b     #$aa, d1
0001d8: 60e8         bra.b      $1c2
0001da: 903c0002     sub.b      #$2, d0
0001de: 60dc         bra.b      $1bc
0001e0: 903c0003     sub.b      #$3, d0
0001e4: 60d6         bra.b      $1bc
0001e6: 123c0001     move.b     #$1, d1
0001ea: 1741000e     move.b     d1, $e(a3)
0001ee: 177c00050002 move.b     #$5, $2(a3)
0001f4: 102b0003     move.b     $3(a3), d0
0001f8: 102b0003     move.b     $3(a3), d0
0001fc: 102b0003     move.b     $3(a3), d0
000200: 4c9f000f     movem.w    (a7)+, d0-d3
000204: 023c00fe     andi.b     #$fe, ccr
000208: 4e75         rts        
00020a: 4c9f000f     movem.w    (a7)+, d0-d3
00020e: 003c0001     ori.b      #$1, ccr
000212: 4e75         rts        
000214: 356a00060008 move.w     $6(a2), $8(a2)
00021a: 46df         move.w     (a7)+, sr
00021c: 6100008e     bsr.w      $2ac
000220: 082a0007007d btst.b     #$7, $7d(a2)
000226: 6716         beq.b      $23e
000228: 0c6a000a0060 cmpi.w     #$a, $60(a2)
00022e: 620e         bhi.b      $23e
000230: 40e7         move.w     sr, -(a7)
000232: 266a0000     movea.l    $0(a2), a3
000236: 177c0001000e move.b     #$1, $e(a3)
00023c: 46df         move.w     (a7)+, sr
00023e: 4a2a0072     tst.b      $72(a2)
000242: 6f1c         ble.b      $260
000244: 0c6a000a0060 cmpi.w     #$a, $60(a2)
00024a: 6214         bhi.b      $260
00024c: 122a0039     move.b     $39(a2), d1
000250: 00010080     ori.b      #$80, d1
000254: 15410072     move.b     d1, $72(a2)
000258: 266a0000     movea.l    $0(a2), a3
00025c: 610004fe     bsr.w      $75c
000260: 4a6a0074     tst.w      $74(a2)
000264: 663c         bne.b      $2a2
000266: 40e7         move.w     sr, -(a7)
000268: 46ea0070     move.w     $70(a2), sr
00026c: 4a6a0060     tst.w      $60(a2)
000270: 67a2         beq.b      $214
000272: 46df         move.w     (a7)+, sr
000274: 206a0058     movea.l    $58(a2), a0
000278: 1018         move.b     (a0)+, d0
00027a: 536a0060     subq.w     #$1, $60(a2)
00027e: b1ea005c     cmpa.l     $5c(a2), a0
000282: 6504         bcs.b      $288
000284: 41ea0088     lea.l      $88(a2), a0
000288: 25480058     move.l     a0, $58(a2)
00028c: 136a003800a2 move.b     $38(a2), $a2(a1)
000292: 670c         beq.b      $2a0
000294: 422a0038     clr.b      $38(a2)
000298: 323c00f4     move.w     #$f4, d1
00029c: 003c0001     ori.b      #$1, ccr
0002a0: 4e75         rts        
0002a2: 323c00f6     move.w     #$f6, d1
0002a6: 003c0001     ori.b      #$1, ccr
0002aa: 4e75         rts        
0002ac: 48e78080     movem.l    d0/a0, -(a7)
0002b0: 7000         moveq      #$0, d0
0002b2: 4e40         trap       #$0
0002b4: 000a         .dc.w      $000a
0002b6: 302c0026     move.w     $26(a4), d0
0002ba: 6706         beq.b      $2c2
0002bc: 0c400020     cmpi.w     #$20, d0
0002c0: 630e         bls.b      $2d0
0002c2: 082c0001001c btst.b     #$1, $1c(a4)
0002c8: 6606         bne.b      $2d0
0002ca: 4cdf0101     movem.l    (a7)+, d0/a0
0002ce: 4e75         rts        
0002d0: 4fef000c     lea.l      $c(a7), a7
0002d4: 003c0001     ori.b      #$1, ccr
0002d8: 4e75         rts        
0002da: 356a00060008 move.w     $6(a2), $8(a2)
0002e0: 46df         move.w     (a7)+, sr
0002e2: 61c8         bsr.b      $2ac
0002e4: 40e7         move.w     sr, -(a7)
0002e6: 46ea0070     move.w     $70(a2), sr
0002ea: 0c6a0100006e cmpi.w     #$100, $6e(a2)
0002f0: 64e8         bcc.b      $2da
0002f2: 526a006e     addq.w     #$1, $6e(a2)
0002f6: 206a0062     movea.l    $62(a2), a0
0002fa: 10c0         move.b     d0, (a0)+
0002fc: b1ea006a     cmpa.l     $6a(a2), a0
000300: 6504         bcs.b      $306
000302: 41ea0188     lea.l      $188(a2), a0
000306: 25480062     move.l     a0, $62(a2)
00030a: 08aa00010073 bclr.b     #$1, $73(a2)
000310: 670e         beq.b      $320
000312: 4a2a0073     tst.b      $73(a2)
000316: 6608         bne.b      $320
000318: 266a0000     movea.l    $0(a2), a3
00031c: 6100043e     bsr.w      $75c
000320: 46df         move.w     (a7)+, sr
000322: 7200         moveq      #$0, d1
000324: 4e75         rts        
000326: 0c400001     cmpi.w     #$1, d0
00032a: 6614         bne.b      $340
00032c: 2069000a     movea.l    $a(a1), a0
000330: 42680004     clr.w      $4(a0)
000334: 316a00600006 move.w     $60(a2), $6(a0)
00033a: 6700ff66     beq.w      $2a2
00033e: 4e75         rts        
000340: 0c000006     cmpi.b     #$6, d0
000344: 670a         beq.b      $350
000346: 600a         bra.b      $352
000348: 323c00d0     move.w     #$d0, d1
00034c: 003c0001     ori.b      #$1, ccr
000350: 4e75         rts        
000352: 0c400096     cmpi.w     #$96, d0
000356: 6634         bne.b      $38c
000358: 2a69000a     movea.l    $a(a1), a5
00035c: 41ea0188     lea.l      $188(a2), a0
000360: 222a006a     move.l     $6a(a2), d1
000364: 9288         sub.l      a0, d1
000366: 7000         moveq      #$0, d0
000368: 302a006e     move.w     $6e(a2), d0
00036c: 9280         sub.l      d0, d1
00036e: 2001         move.l     d1, d0
000370: 242d0008     move.l     $8(a5), d2
000374: 9082         sub.l      d2, d0
000376: 6b08         bmi.b      $380
000378: 2b410000     move.l     d1, $0(a5)
00037c: 7200         moveq      #$0, d1
00037e: 4e75         rts        
000380: 08c1001f     bset.b     #$1f, d1
000384: 2b410000     move.l     d1, $0(a5)
000388: 7200         moveq      #$0, d1
00038a: 4e75         rts        
00038c: 0c4000a0     cmpi.w     #$a0, d0
000390: 66b6         bne.b      $348
000392: 2a69000a     movea.l    $a(a1), a5
000396: 41ea0188     lea.l      $188(a2), a0
00039a: 222a006a     move.l     $6a(a2), d1
00039e: 9288         sub.l      a0, d1
0003a0: 2b410000     move.l     d1, $0(a5)
0003a4: 7200         moveq      #$0, d1
0003a6: 4e75         rts        
0003a8: 0c40001a     cmpi.w     #$1a, d0
0003ac: 6642         bne.b      $3f0
0003ae: 4a6a0074     tst.w      $74(a2)
0003b2: 6600feee     bne.w      $2a2
0003b6: 30290008     move.w     $8(a1), d0
0003ba: 2069000a     movea.l    $a(a1), a0
0003be: 3228000a     move.w     $a(a0), d1
0003c2: 40e7         move.w     sr, -(a7)
0003c4: 46ea0070     move.w     $70(a2), sr
0003c8: 4a6a0060     tst.w      $60(a2)
0003cc: 661c         bne.b      $3ea
0003ce: 35400074     move.w     d0, $74(a2)
0003d2: 35410076     move.w     d1, $76(a2)
0003d6: 356900000078 move.w     $0(a1), $78(a2)
0003dc: 266a0000     movea.l    $0(a2), a3
0003e0: 6100037a     bsr.w      $75c
0003e4: 46df         move.w     (a7)+, sr
0003e6: 7200         moveq      #$0, d1
0003e8: 4e75         rts        
0003ea: 46df         move.w     (a7)+, sr
0003ec: 6000023c     bra.w      $62a
0003f0: 0c40001b     cmpi.w     #$1b, d0
0003f4: 6636         bne.b      $42c
0003f6: 34290008     move.w     $8(a1), d2
0003fa: 47ea0074     lea.l      $74(a2), a3
0003fe: 6124         bsr.b      $424
000400: 47ea0084     lea.l      $84(a2), a3
000404: 611e         bsr.b      $424
000406: 47ea0080     lea.l      $80(a2), a3
00040a: 6118         bsr.b      $424
00040c: 4a6a0080     tst.w      $80(a2)
000410: 664c         bne.b      $45e
000412: 4a6a0084     tst.w      $84(a2)
000416: 6646         bne.b      $45e
000418: 6044         bra.b      $45e
00041a: 266a0000     movea.l    $0(a2), a3
00041e: 6100033c     bsr.w      $75c
000422: 603a         bra.b      $45e
000424: b453         cmp.w      (a3), d2
000426: 6602         bne.b      $42a
000428: 4253         clr.w      (a3)
00042a: 4e75         rts        
00042c: 0c400026     cmpi.w     #$26, d0
000430: 6700ff16     beq.w      $348
000434: 0c400027     cmpi.w     #$27, d0
000438: 6700ff0e     beq.w      $348
00043c: 0c400024     cmpi.w     #$24, d0
000440: 660c         bne.b      $44e
000442: 266a0000     movea.l    $0(a2), a3
000446: 177c0001000e move.b     #$1, $e(a3)
00044c: 6010         bra.b      $45e
00044e: 0c400025     cmpi.w     #$25, d0
000452: 660e         bne.b      $462
000454: 266a0000     movea.l    $0(a2), a3
000458: 177c0001000f move.b     #$1, $f(a3)
00045e: 7200         moveq      #$0, d1
000460: 4e75         rts        
000462: 0c400096     cmpi.w     #$96, d0
000466: 6600004e     bne.w      $4b6
00046a: 4a2a007c     tst.b      $7c(a2)
00046e: 6720         beq.b      $490
000470: 422a007c     clr.b      $7c(a2)
000474: 40e7         move.w     sr, -(a7)
000476: 46ea0070     move.w     $70(a2), sr
00047a: 102a007d     move.b     $7d(a2), d0
00047e: 162a007e     move.b     $7e(a2), d3
000482: 266a0000     movea.l    $0(a2), a3
000486: 6100fc4c     bsr.w      $d4
00048a: 46df         move.w     (a7)+, sr
00048c: 6000ffd0     bra.w      $45e
000490: 157c0001007c move.b     #$1, $7c(a2)
000496: 40e7         move.w     sr, -(a7)
000498: 46ea0070     move.w     $70(a2), sr
00049c: 102a007d     move.b     $7d(a2), d0
0004a0: 0200007f     andi.b     #$7f, d0
0004a4: 162a007e     move.b     $7e(a2), d3
0004a8: 266a0000     movea.l    $0(a2), a3
0004ac: 6100fc26     bsr.w      $d4
0004b0: 46df         move.w     (a7)+, sr
0004b2: 6000ffaa     bra.w      $45e
0004b6: 0c4000a0     cmpi.w     #$a0, d0
0004ba: 66000034     bne.w      $4f0
0004be: 40e7         move.w     sr, -(a7)
0004c0: 46ea0070     move.w     $70(a2), sr
0004c4: 2f08         move.l     a0, -(a7)
0004c6: 41ea0188     lea.l      $188(a2), a0
0004ca: 25480062     move.l     a0, $62(a2)
0004ce: 25480066     move.l     a0, $66(a2)
0004d2: 41e80100     lea.l      $100(a0), a0
0004d6: 2548006a     move.l     a0, $6a(a2)
0004da: 426a006e     clr.w      $6e(a2)
0004de: 422a0073     clr.b      $73(a2)
0004e2: 08ea00010073 bset.b     #$1, $73(a2)
0004e8: 205f         movea.l    (a7)+, a0
0004ea: 46df         move.w     (a7)+, sr
0004ec: 6000ff70     bra.w      $45e
0004f0: 0c400003     cmpi.w     #$3, d0
0004f4: 6600fe52     bne.w      $348
0004f8: 40e7         move.w     sr, -(a7)
0004fa: 46ea0070     move.w     $70(a2), sr
0004fe: 10290094     move.b     $94(a1), d0
000502: 16290095     move.b     $95(a1), d3
000506: 266a0000     movea.l    $0(a2), a3
00050a: 6100fbc8     bsr.w      $d4
00050e: 6506         bcs.b      $516
000510: 46df         move.w     (a7)+, sr
000512: 6000ff4a     bra.w      $45e
000516: 46df         move.w     (a7)+, sr
000518: 323c00f0     move.w     #$f0, d1
00051c: 003c0001     ori.b      #$1, ccr
000520: 4e75         rts        
000522: 2f08         move.l     a0, -(a7)
000524: 41ea0088     lea.l      $88(a2), a0
000528: 25480054     move.l     a0, $54(a2)
00052c: 25480058     move.l     a0, $58(a2)
000530: 41e80100     lea.l      $100(a0), a0
000534: 2548005c     move.l     a0, $5c(a2)
000538: 41ea0188     lea.l      $188(a2), a0
00053c: 25480062     move.l     a0, $62(a2)
000540: 25480066     move.l     a0, $66(a2)
000544: 41e80100     lea.l      $100(a0), a0
000548: 2548006a     move.l     a0, $6a(a2)
00054c: 426a0060     clr.w      $60(a2)
000550: 426a006e     clr.w      $6e(a2)
000554: 422a0072     clr.b      $72(a2)
000558: 422a0073     clr.b      $73(a2)
00055c: 426a0074     clr.w      $74(a2)
000560: 205f         movea.l    (a7)+, a0
000562: 4e75         rts        
000564: 356a00060008 move.w     $6(a2), $8(a2)
00056a: 46df         move.w     (a7)+, sr
00056c: 6100fd3e     bsr.w      $2ac
000570: 302c0000     move.w     $0(a4), d0
000574: 35400006     move.w     d0, $6(a2)
000578: 35400004     move.w     d0, $4(a2)
00057c: 40e7         move.w     sr, -(a7)
00057e: 46ea0070     move.w     $70(a2), sr
000582: 4a6a006e     tst.w      $6e(a2)
000586: 66dc         bne.b      $564
000588: 266a0000     movea.l    $0(a2), a3
00058c: 610001e2     bsr.w      $770
000590: 46df         move.w     (a7)+, sr
000592: 10290034     move.b     $34(a1), d0
000596: 91c8         suba.l     a0, a0
000598: 4e40         trap       #$0
00059a: 002a4e75102b ori.b      #$75, $102b(a2)
0005a0: 0005c02a     ori.b      #$2a, d5
0005a4: 007a         .dc.w      $007a
0005a6: 6606         bne.b      $5ae
0005a8: 003c0001     ori.b      #$1, ccr
0005ac: 4e75         rts        
0005ae: c03c0002     and.b      #$2, d0
0005b2: 66000088     bne.w      $63c
0005b6: 102a0072     move.b     $72(a2), d0
0005ba: 6a1a         bpl.b      $5d6
0005bc: 08800007     bclr.b     #$7, d0
0005c0: 17400003     move.b     d0, $3(a3)
0005c4: 122a0039     move.b     $39(a2), d1
0005c8: b300         eor.b      d1, d0
0005ca: 15400072     move.b     d0, $72(a2)
0005ce: 4a2a0073     tst.b      $73(a2)
0005d2: 664a         bne.b      $61e
0005d4: 4e75         rts        
0005d6: 48e72040     movem.l    d2/a1, -(a7)
0005da: 082a00000073 btst.b     #$0, $73(a2)
0005e0: 6634         bne.b      $616
0005e2: 342a006e     move.w     $6e(a2), d2
0005e6: 6728         beq.b      $610
0005e8: 5342         subq.w     #$1, d2
0005ea: 226a0066     movea.l    $66(a2), a1
0005ee: 17590003     move.b     (a1)+, $3(a3)
0005f2: b3ea006a     cmpa.l     $6a(a2), a1
0005f6: 6504         bcs.b      $5fc
0005f8: 43ea0188     lea.l      $188(a2), a1
0005fc: 25490066     move.l     a1, $66(a2)
000600: 3542006e     move.w     d2, $6e(a2)
000604: 0c42000a     cmpi.w     #$a, d2
000608: 4cdf0204     movem.l    (a7)+, d2/a1
00060c: 622a         bhi.b      $638
00060e: 600e         bra.b      $61e
000610: 08ea00010073 bset.b     #$1, $73(a2)
000616: 6100014e     bsr.w      $766
00061a: 4cdf0204     movem.l    (a7)+, d2/a1
00061e: 7201         moveq      #$1, d1
000620: 302a0008     move.w     $8(a2), d0
000624: 6712         beq.b      $638
000626: 426a0008     clr.w      $8(a2)
00062a: 2f08         move.l     a0, -(a7)
00062c: 206e03a4     movea.l    $3a4(a6), a0
000630: 20680020     movea.l    $20(a0), a0
000634: 4e90         jsr        (a0)
000636: 205f         movea.l    (a7)+, a0
000638: 7200         moveq      #$0, d1
00063a: 4e75         rts        
00063c: 48e72040     movem.l    d2/a1, -(a7)
000640: 102b0003     move.b     $3(a3), d0
000644: c02a007b     and.b      $7b(a2), d0
000648: 6728         beq.b      $672
00064a: b02a0035     cmp.b      $35(a2), d0
00064e: 670000c6     beq.w      $716
000652: b02a0036     cmp.b      $36(a2), d0
000656: 670000c2     beq.w      $71a
00065a: b02a0037     cmp.b      $37(a2), d0
00065e: 670000a2     beq.w      $702
000662: b02a0039     cmp.b      $39(a2), d0
000666: 670000d4     beq.w      $73c
00066a: b02a003a     cmp.b      $3a(a2), d0
00066e: 670000e0     beq.w      $750
000672: 226a0054     movea.l    $54(a2), a1
000676: 12c0         move.b     d0, (a1)+
000678: 526a0060     addq.w     #$1, $60(a2)
00067c: 0c6a01000060 cmpi.w     #$100, $60(a2)
000682: 630c         bls.b      $690
000684: 536a0060     subq.w     #$1, $60(a2)
000688: 002a00100038 ori.b      #$10, $38(a2)
00068e: 608a         bra.b      $61a
000690: b3ea005c     cmpa.l     $5c(a2), a1
000694: 6504         bcs.b      $69a
000696: 43ea0088     lea.l      $88(a2), a1
00069a: 25490054     move.l     a1, $54(a2)
00069e: 302a0074     move.w     $74(a2), d0
0006a2: 6710         beq.b      $6b4
0006a4: 322a0076     move.w     $76(a2), d1
0006a8: 426a0074     clr.w      $74(a2)
0006ac: 4cdf0204     movem.l    (a7)+, d2/a1
0006b0: 6000ff78     bra.w      $62a
0006b4: 4a2a007c     tst.b      $7c(a2)
0006b8: 6644         bne.b      $6fe
0006ba: 082a0007007d btst.b     #$7, $7d(a2)
0006c0: 6710         beq.b      $6d2
0006c2: 0c6a00f60060 cmpi.w     #$f6, $60(a2)
0006c8: 6508         bcs.b      $6d2
0006ca: 123c0001     move.b     #$1, d1
0006ce: 1741000f     move.b     d1, $f(a3)
0006d2: 102a003a     move.b     $3a(a2), d0
0006d6: 6700ff42     beq.w      $61a
0006da: 0c6a00f60060 cmpi.w     #$f6, $60(a2)
0006e0: 6500ff38     bcs.w      $61a
0006e4: 122a0072     move.b     $72(a2), d1
0006e8: 6600ff30     bne.w      $61a
0006ec: 08800007     bclr.b     #$7, d0
0006f0: 1540003a     move.b     d0, $3a(a2)
0006f4: 00000080     ori.b      #$80, d0
0006f8: 15400072     move.b     d0, $72(a2)
0006fc: 615e         bsr.b      $75c
0006fe: 6000ff1a     bra.w      $61a
000702: 4aaa002e     tst.l      $2e(a2)
000706: 6700ff6a     beq.w      $672
00070a: 206a002e     movea.l    $2e(a2), a0
00070e: 11400034     move.b     d0, $34(a0)
000712: 6000ff5e     bra.w      $672
000716: 7203         moveq      #$3, d1
000718: 6002         bra.b      $71c
00071a: 7202         moveq      #$2, d1
00071c: 1f00         move.b     d0, -(a7)
00071e: 302a0004     move.w     $4(a2), d0
000722: 6712         beq.b      $736
000724: 426a0008     clr.w      $8(a2)
000728: 2f08         move.l     a0, -(a7)
00072a: 206e03a4     movea.l    $3a4(a6), a0
00072e: 20680020     movea.l    $20(a0), a0
000732: 4e90         jsr        (a0)
000734: 205f         movea.l    (a7)+, a0
000736: 101f         move.b     (a7)+, d0
000738: 6000ff38     bra.w      $672
00073c: 08aa00000073 bclr.b     #$0, $73(a2)
000742: 4a2a0073     tst.b      $73(a2)
000746: 6602         bne.b      $74a
000748: 6112         bsr.b      $75c
00074a: 4cdf0204     movem.l    (a7)+, d2/a1
00074e: 4e75         rts        
000750: 08ea00000073 bset.b     #$0, $73(a2)
000756: 4cdf0204     movem.l    (a7)+, d2/a1
00075a: 4e75         rts        
00075c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000760: 103c0003     move.b     #$3, d0
000764: 6012         bra.b      $778
000766: 48e7c080     movem.l    d0-d1/a0, -(a7)
00076a: 103c0002     move.b     #$2, d0
00076e: 6008         bra.b      $778
000770: 48e7c080     movem.l    d0-d1/a0, -(a7)
000774: 103c0000     move.b     #$0, d0
000778: 6106         bsr.b      $780
00077a: 4cdf0103     movem.l    (a7)+, d0-d1/a0
00077e: 4e75         rts        
000780: 41ee07c4     lea.l      $7c4(a6), a0
000784: 1540007a     move.b     d0, $7a(a2)
000788: b1fc00000000 cmpa.l     #$0, a0
00078e: 6716         beq.b      $7a6
000790: 40e7         move.w     sr, -(a7)
000792: 46ea0070     move.w     $70(a2), sr
000796: 1210         move.b     (a0), d1
000798: c23c00f8     and.b      #$f8, d1
00079c: 8200         or.b       d0, d1
00079e: 17410005     move.b     d1, $5(a3)
0007a2: 1081         move.b     d1, (a0)
0007a4: 46df         move.w     (a7)+, sr
0007a6: 4e75         rts        
0007a8: 7363         .dc.w      $7363
0007aa: 36383638     move.w     $3638.w, d3
0007ae: 31610000     move.w     -(a1), $0(a0)
0007b2: 00b07a53     ori.l      #$aaaaaaaa, -$56(a0, a2.l)
