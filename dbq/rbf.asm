000042: 003a         .dc.w      $003a
000044: 01f002f6     bset.b     d0, -$a(a0, d0.w)
000048: 045e0494     subi.w     #$494, (a6)+
00004c: 085c         .dc.w      $085c
00004e: 0562         bchg.b     d2, -(a2)
000050: 0700         btst.l     d3, d0
000052: 055e         bchg.b     d2, (a6)+
000054: 06de         .dc.w      $06de
000056: 088c         .dc.w      $088c
000058: 09bc         .dc.w      $09bc
00005a: 0380         bclr.b     d1, d0
00005c: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
000060: 2f0b         move.l     a3, -(a7)
000062: 266e03a4     movea.l    $3a4(a6), a3
000066: 487a000c     pea.l      $74(pc)
00006a: 2f2b00e0     move.l     $e0(a3), -(a7)
00006e: 266b04e0     movea.l    $4e0(a3), a3
000072: 4e75         rts        
000074: 265f         movea.l    (a7)+, a3
000076: 4cdf0707     movem.l    (a7)+, d0-d2/a0-a2
00007a: 4e75         rts        
00007c: 4feffff4     lea.l      -$c(a7), a7
000080: 2f490008     move.l     a1, $8(a7)
000084: 08ad00070007 bclr.b     #$7, $7(a5)
00008a: 61000ae6     bsr.w      $b72
00008e: 6504         bcs.b      $94
000090: 323c00da     move.w     #$da, d1
000094: 0c4100d8     cmpi.w     #$d8, d1
000098: 6632         bne.b      $cc
00009a: 0c00002f     cmpi.b     #$2f, d0
00009e: 672c         beq.b      $cc
0000a0: 2f08         move.l     a0, -(a7)
0000a2: 2b4a0020     move.l     a2, $20(a5)
0000a6: 7000         moveq      #$0, d0
0000a8: 082d00050003 btst.b     #$5, $3(a5)
0000ae: 6712         beq.b      $c2
0000b0: 202d0008     move.l     $8(a5), d0
0000b4: d0a90070     add.l      $70(a1), d0
0000b8: 6402         bcc.b      $bc
0000ba: 70ff         moveq      #$ff, d0
0000bc: 1629006f     move.b     $6f(a1), d3
0000c0: e6a8         lsr.l      d3, d0
0000c2: 5280         addq.l     #$1, d0
0000c4: 610013b2     bsr.w      $1478
0000c8: 640a         bcc.b      $d4
0000ca: 588f         addq.l     #$4, a7
0000cc: 4fef000c     lea.l      $c(a7), a7
0000d0: 60000388     bra.w      $45a
0000d4: 2f400004     move.l     d0, $4(a7)
0000d8: 2f420008     move.l     d2, $8(a7)
0000dc: 236900be0032 move.l     $be(a1), $32(a1)
0000e2: 61000d48     bsr.w      $e2c
0000e6: 650a         bcs.b      $f2
0000e8: 4a10         tst.b      (a0)
0000ea: 672c         beq.b      $118
0000ec: 61000d28     bsr.w      $e16
0000f0: 64f6         bcc.b      $e8
0000f2: 0c4100d3     cmpi.w     #$d3, d1
0000f6: 66d2         bne.b      $ca
0000f8: 7420         moveq      #$20, d2
0000fa: d4a90032     add.l      $32(a1), d2
0000fe: 6406         bcc.b      $106
000100: 323c00f8     move.w     #$f8, d1
000104: 60c4         bra.b      $ca
000106: 610005f4     bsr.w      $6fc
00010a: 65be         bcs.b      $ca
00010c: 61000290     bsr.w      $39e
000110: 65b8         bcs.b      $ca
000112: 61000d18     bsr.w      $e2c
000116: 65b2         bcs.b      $ca
000118: 2448         movea.l    a0, a2
00011a: 610000f6     bsr.w      $212
00011e: 205f         movea.l    (a7)+, a0
000120: 4e40         trap       #$0
000122: 001065a6     ori.b      #$a6, (a0)
000126: 2401         move.l     d1, d2
000128: 6100ff32     bsr.w      $5c
00012c: 226f0008     movea.l    $8(a7), a1
000130: 0032008020ff ori.b      #$80, -$1(a2, d2.w)
000136: 42322000     clr.b      (a2, d2.w)
00013a: 202f0000     move.l     $0(a7), d0
00013e: 1629006f     move.b     $6f(a1), d3
000142: e6a8         lsr.l      d3, d0
000144: 2540001c     move.l     d0, $1c(a2)
000148: 7001         moveq      #$1, d0
00014a: 61001898     bsr.w      $19e4
00014e: 650000a2     bcs.w      $1f2
000152: 2469000e     movea.l    $e(a1), a2
000156: 610000c2     bsr.w      $21a
00015a: 137c0004002a move.b     #$4, $2a(a1)
000160: 156d00070000 move.b     $7(a5), $0(a2)
000166: 156c00150001 move.b     $15(a4), $1(a2)
00016c: 156c00170002 move.b     $17(a4), $2(a2)
000172: 610002ec     bsr.w      $460
000176: 156a0003000d move.b     $3(a2), $d(a2)
00017c: 356a0004000e move.w     $4(a2), $e(a2)
000182: 157c00010008 move.b     #$1, $8(a2)
000188: 202f0004     move.l     $4(a7), d0
00018c: 242f0000     move.l     $0(a7), d2
000190: 1629006f     move.b     $6f(a1), d3
000194: e6a8         lsr.l      d3, d0
000196: 5340         subq.w     #$1, d0
000198: 671a         beq.b      $1b4
00019a: 15400014     move.b     d0, $14(a2)
00019e: e048         lsr.w      #$8, d0
0001a0: 15400013     move.b     d0, $13(a2)
0001a4: 2002         move.l     d2, d0
0001a6: e6a8         lsr.l      d3, d0
0001a8: 5280         addq.l     #$1, d0
0001aa: 15400012     move.b     d0, $12(a2)
0001ae: e088         lsr.l      #$8, d0
0001b0: 35400010     move.w     d0, $10(a2)
0001b4: 7001         moveq      #$1, d0
0001b6: 61001838     bsr.w      $19f0
0001ba: 6536         bcs.b      $1f2
0001bc: 61000e46     bsr.w      $1004
0001c0: 236f000000b6 move.l     $0(a7), $b6(a1)
0001c6: 61000d68     bsr.w      $f30
0001ca: 6526         bcs.b      $1f2
0001cc: 137c0004002b move.b     #$4, $2b(a1)
0001d2: 6100010e     bsr.w      $2e2
0001d6: 303c002a     move.w     #$2a, d0
0001da: 610000ee     bsr.w      $2ca
0001de: 6406         bcc.b      $1e6
0001e0: b27c00d0     cmp.w      #$d0, d1
0001e4: 660c         bne.b      $1f2
0001e6: 4fef000c     lea.l      $c(a7), a7
0001ea: 137c0001006b move.b     #$1, $6b(a1)
0001f0: 4e75         rts        
0001f2: 202f0004     move.l     $4(a7), d0
0001f6: 242f0000     move.l     $0(a7), d2
0001fa: 23400042     move.l     d0, $42(a1)
0001fe: 2342003e     move.l     d2, $3e(a1)
000202: 4fef000c     lea.l      $c(a7), a7
000206: 3f01         move.w     d1, -(a7)
000208: 61001502     bsr.w      $170c
00020c: 321f         move.w     (a7)+, d1
00020e: 6000024a     bra.w      $45a
000212: 48e7c020     movem.l    d0-d1/a2, -(a7)
000216: 701f         moveq      #$1f, d0
000218: 6008         bra.b      $222
00021a: 48e7c020     movem.l    d0-d1/a2, -(a7)
00021e: 20290070     move.l     $70(a1), d0
000222: e448         lsr.w      #$2, d0
000224: 7200         moveq      #$0, d1
000226: 24c1         move.l     d1, (a2)+
000228: 51c8fffc     dbra       d0, $226
00022c: 4cdf0403     movem.l    (a7)+, d0-d1/a2
000230: 4e75         rts        
000232: 6100093e     bsr.w      $b72
000236: 65d6         bcs.b      $20e
000238: 2b4a0020     move.l     a2, $20(a5)
00023c: 4aa900b6     tst.l      $b6(a1)
000240: 6646         bne.b      $288
000242: 082900070002 btst.b     #$7, $2(a1)
000248: 6600020c     bne.w      $456
00024c: 20690048     movea.l    $48(a1), a0
000250: 20280000     move.l     $0(a0), d0
000254: e088         lsr.l      #$8, d0
000256: 4a6c0014     tst.w      $14(a4)
00025a: 6714         beq.b      $270
00025c: 082900010002 btst.b     #$1, $2(a1)
000262: 660001f2     bne.w      $456
000266: 20280008     move.l     $8(a0), d0
00026a: e088         lsr.l      #$8, d0
00026c: 6602         bne.b      $270
00026e: 7005         moveq      #$5, d0
000270: 1229006f     move.b     $6f(a1), d1
000274: e3a0         asl.l      d1, d0
000276: 23400042     move.l     d0, $42(a1)
00027a: 23400036     move.l     d0, $36(a1)
00027e: 42a9003e     clr.l      $3e(a1)
000282: 42a9003a     clr.l      $3a(a1)
000286: 602a         bra.b      $2b2
000288: 10290002     move.b     $2(a1), d0
00028c: 61000c30     bsr.w      $ebe
000290: 6500ff7c     bcs.w      $20e
000294: 614c         bsr.b      $2e2
000296: 082900010002 btst.b     #$1, $2(a1)
00029c: 6714         beq.b      $2b2
00029e: 610001c0     bsr.w      $460
0002a2: 61001714     bsr.w      $19b8
0002a6: 640a         bcc.b      $2b2
0002a8: 0c2c00860021 cmpi.b     #$86, $21(a4)
0002ae: 660001aa     bne.w      $45a
0002b2: 303c002a     move.w     #$2a, d0
0002b6: 6112         bsr.b      $2ca
0002b8: 6408         bcc.b      $2c2
0002ba: b27c00d0     cmp.w      #$d0, d1
0002be: 6600019a     bne.w      $45a
0002c2: 137c0001006b move.b     #$1, $6b(a1)
0002c8: 4e75         rts        
0002ca: 3f2d0006     move.w     $6(a5), -(a7)
0002ce: 3b400006     move.w     d0, $6(a5)
0002d2: 61000898     bsr.w      $b6c
0002d6: 4c9f0001     movem.w    (a7)+, d0
0002da: 48ad00010006 movem.w    d0, $6(a5)
0002e0: 4e75         rts        
0002e2: 7000         moveq      #$0, d0
0002e4: 23400032     move.l     d0, $32(a1)
0002e8: 2340003a     move.l     d0, $3a(a1)
0002ec: 136a000000b5 move.b     $0(a2), $b5(a1)
0002f2: 1229006f     move.b     $6f(a1), d1
0002f6: 202a0010     move.l     $10(a2), d0
0002fa: e088         lsr.l      #$8, d0
0002fc: e3a8         lsl.l      d1, d0
0002fe: 2340003e     move.l     d0, $3e(a1)
000302: 7000         moveq      #$0, d0
000304: 102a0013     move.b     $13(a2), d0
000308: e148         lsl.w      #$8, d0
00030a: 102a0014     move.b     $14(a2), d0
00030e: e3a8         lsl.l      d1, d0
000310: 23400042     move.l     d0, $42(a1)
000314: 202a0008     move.l     $8(a2), d0
000318: e188         lsl.l      #$8, d0
00031a: 102a000c     move.b     $c(a2), d0
00031e: b3e90050     cmpa.l     $50(a1), a1
000322: 6708         beq.b      $32c
000324: 20690050     movea.l    $50(a1), a0
000328: 20280036     move.l     $36(a0), d0
00032c: 23400036     move.l     d0, $36(a1)
000330: 0229000a002a andi.b     #$a, $2a(a1)
000336: 4e75         rts        
000338: 6100fd42     bsr.w      $7c
00033c: 655e         bcs.b      $39c
00033e: 102900b5     move.b     $b5(a1), d0
000342: 00000040     ori.b      #$40, d0
000346: 61000b76     bsr.w      $ebe
00034a: 6550         bcs.b      $39c
00034c: 137c00400039 move.b     #$40, $39(a1)
000352: 61001664     bsr.w      $19b8
000356: 6544         bcs.b      $39c
000358: 61000f44     bsr.w      $129e
00035c: 653e         bcs.b      $39c
00035e: 2469002e     movea.l    $2e(a1), a2
000362: 002a00800000 ori.b      #$80, $0(a2)
000368: 6134         bsr.b      $39e
00036a: 6530         bcs.b      $39c
00036c: 2469000e     movea.l    $e(a1), a2
000370: 6100fea8     bsr.w      $21a
000374: 34bc2eae     move.w     #$2eae, (a2)
000378: 157c00ae0020 move.b     #$ae, $20(a2)
00037e: 202900ba     move.l     $ba(a1), d0
000382: 1229006f     move.b     $6f(a1), d1
000386: e2a8         lsr.l      d1, d0
000388: 2540001c     move.l     d0, $1c(a2)
00038c: 202900b6     move.l     $b6(a1), d0
000390: e2a8         lsr.l      d1, d0
000392: 2540003c     move.l     d0, $3c(a2)
000396: 7001         moveq      #$1, d0
000398: 6100164a     bsr.w      $19e4
00039c: 604c         bra.b      $3ea
00039e: 2069002e     movea.l    $2e(a1), a0
0003a2: 116900360009 move.b     $36(a1), $9(a0)
0003a8: 11690037000a move.b     $37(a1), $a(a0)
0003ae: 11690038000b move.b     $38(a1), $b(a0)
0003b4: 11690039000c move.b     $39(a1), $c(a0)
0003ba: 4229002a     clr.b      $2a(a1)
0003be: 600015f8     bra.w      $19b8
0003c2: 61001682     bsr.w      $1a46
0003c6: 6522         bcs.b      $3ea
0003c8: 4a290003     tst.b      $3(a1)
0003cc: 6702         beq.b      $3d0
0003ce: 4e75         rts        
0003d0: 082900010002 btst.b     #$1, $2(a1)
0003d6: 6712         beq.b      $3ea
0003d8: 4aa900b6     tst.l      $b6(a1)
0003dc: 670c         beq.b      $3ea
0003de: 61be         bsr.b      $39e
0003e0: 61000198     bsr.w      $57a
0003e4: 6404         bcc.b      $3ea
0003e6: 610011f8     bsr.w      $15e0
0003ea: 40e7         move.w     sr, -(a7)
0003ec: 3f01         move.w     d1, -(a7)
0003ee: 61001656     bsr.w      $1a46
0003f2: 08a90000006b bclr.b     #$0, $6b(a1)
0003f8: 6708         beq.b      $402
0003fa: 303c002b     move.w     #$2b, d0
0003fe: 6100feca     bsr.w      $2ca
000402: 61000c00     bsr.w      $1004
000406: 2029000e     move.l     $e(a1), d0
00040a: 6720         beq.b      $42c
00040c: 2440         movea.l    d0, a2
00040e: 202900c8     move.l     $c8(a1), d0
000412: 2f0b         move.l     a3, -(a7)
000414: 266e03a4     movea.l    $3a4(a6), a3
000418: 487a000c     pea.l      $426(pc)
00041c: 2f2b00a4     move.l     $a4(a3), -(a7)
000420: 266b04a4     movea.l    $4a4(a3), a3
000424: 4e75         rts        
000426: 265f         movea.l    (a7)+, a3
000428: 42a9000e     clr.l      $e(a1)
00042c: 2029002e     move.l     $2e(a1), d0
000430: 6720         beq.b      $452
000432: 2440         movea.l    d0, a2
000434: 202900c8     move.l     $c8(a1), d0
000438: 2f0b         move.l     a3, -(a7)
00043a: 266e03a4     movea.l    $3a4(a6), a3
00043e: 487a000c     pea.l      $44c(pc)
000442: 2f2b00a4     move.l     $a4(a3), -(a7)
000446: 266b04a4     movea.l    $4a4(a3), a3
00044a: 4e75         rts        
00044c: 265f         movea.l    (a7)+, a3
00044e: 42a9002e     clr.l      $2e(a1)
000452: 321f         move.w     (a7)+, d1
000454: 4e77         rtr        
000456: 323c00d6     move.w     #$d6, d1
00045a: 003c0001     ori.b      #$1, ccr
00045e: 608a         bra.b      $3ea
000460: 7000         moveq      #$0, d0
000462: 48e7f804     movem.l    d0-d4/a5, -(a7)
000466: 2a4f         movea.l    a7, a5
000468: 2f0b         move.l     a3, -(a7)
00046a: 266e03a4     movea.l    $3a4(a6), a3
00046e: 487a000c     pea.l      $47c(pc)
000472: 2f2b0054     move.l     $54(a3), -(a7)
000476: 266b0454     movea.l    $454(a3), a3
00047a: 4e75         rts        
00047c: 265f         movea.l    (a7)+, a3
00047e: 4cd70003     movem.l    (a7), d0-d1
000482: e088         lsr.l      #$8, d0
000484: 35400006     move.w     d0, $6(a2)
000488: 35410004     move.w     d1, $4(a2)
00048c: 4241         clr.w      d1
00048e: 4841         swap       d1
000490: 82fc0064     divu.w     #$64, d1
000494: 4841         swap       d1
000496: 15410003     move.b     d1, $3(a2)
00049a: 4cdf201f     movem.l    (a7)+, d0-d4/a5
00049e: 4e75         rts        
0004a0: 002900800002 ori.b      #$80, $2(a1)
0004a6: 6100fd8a     bsr.w      $232
0004aa: 6500ff3e     bcs.w      $3ea
0004ae: 10290081     move.b     $81(a1), d0
0004b2: 222900b6     move.l     $b6(a1), d1
0004b6: 14290002     move.b     $2(a1), d2
0004ba: 1602         move.b     d2, d3
0004bc: c43c0003     and.b      #$3, d2
0004c0: 6704         beq.b      $4c6
0004c2: 2941014e     move.l     d1, $14e(a4)
0004c6: 02030004     andi.b     #$4, d3
0004ca: 6700ff1e     beq.w      $3ea
0004ce: 2941015e     move.l     d1, $15e(a4)
0004d2: 6000ff16     bra.w      $3ea
0004d6: 6100069a     bsr.w      $b72
0004da: 6500ff0e     bcs.w      $3ea
0004de: 4aa900b6     tst.l      $b6(a1)
0004e2: 6700ff72     beq.w      $456
0004e6: 7042         moveq      #$42, d0
0004e8: 204a         movea.l    a2, a0
0004ea: 610009d2     bsr.w      $ebe
0004ee: 65000086     bcs.w      $576
0004f2: 2b480020     move.l     a0, $20(a5)
0004f6: 2069002e     movea.l    $2e(a1), a0
0004fa: 53280008     subq.b     #$1, $8(a0)
0004fe: 6706         beq.b      $506
000500: 610014b6     bsr.w      $19b8
000504: 6036         bra.b      $53c
000506: 42a90036     clr.l      $36(a1)
00050a: 08e90007002a bset.b     #$7, $2a(a1)
000510: 610010ce     bsr.w      $15e0
000514: 6560         bcs.b      $576
000516: 2069002e     movea.l    $2e(a1), a0
00051a: 7000         moveq      #$0, d0
00051c: 10280013     move.b     $13(a0), d0
000520: e140         asl.w      #$8, d0
000522: 10280014     move.b     $14(a0), d0
000526: 5240         addq.w     #$1, d0
000528: 1229006f     move.b     $6f(a1), d1
00052c: e3a8         lsl.l      d1, d0
00052e: 23400042     move.l     d0, $42(a1)
000532: 236900b6003e move.l     $b6(a1), $3e(a1)
000538: 610011d2     bsr.w      $170c
00053c: 6538         bcs.b      $576
00053e: 08a90007002a bclr.b     #$7, $2a(a1)
000544: 61001500     bsr.w      $1a46
000548: 652c         bcs.b      $576
00054a: 61000ab8     bsr.w      $1004
00054e: 236900ba00b6 move.l     $ba(a1), $b6(a1)
000554: 610009da     bsr.w      $f30
000558: 651c         bcs.b      $576
00055a: 2469002e     movea.l    $2e(a1), a2
00055e: 6100fd82     bsr.w      $2e2
000562: 236900be0032 move.l     $be(a1), $32(a1)
000568: 610008c2     bsr.w      $e2c
00056c: 6508         bcs.b      $576
00056e: 4210         clr.b      (a0)
000570: 7001         moveq      #$1, d0
000572: 61001470     bsr.w      $19e4
000576: 6000fe72     bra.w      $3ea
00057a: 7401         moveq      #$1, d2
00057c: 2f02         move.l     d2, -(a7)
00057e: 24290036     move.l     $36(a1), d2
000582: 94a90032     sub.l      $32(a1), d2
000586: 650c         bcs.b      $594
000588: b497         cmp.l      (a7), d2
00058a: 6404         bcc.b      $590
00058c: 2e82         move.l     d2, (a7)
00058e: 6704         beq.b      $594
000590: 241f         move.l     (a7)+, d2
000592: 4e75         rts        
000594: 588f         addq.l     #$4, a7
000596: 323c00d3     move.w     #$d3, d1
00059a: 003c0001     ori.b      #$1, ccr
00059e: 4e75         rts        
0005a0: 7e0d         moveq      #$d, d7
0005a2: 6002         bra.b      $5a6
0005a4: 7e00         moveq      #$0, d7
0005a6: 242d0004     move.l     $4(a5), d2
0005aa: 61000b36     bsr.w      $10e2
0005ae: 65000102     bcs.w      $6b2
0005b2: 242d0004     move.l     $4(a5), d2
0005b6: 61c4         bsr.b      $57c
0005b8: 650000f8     bcs.w      $6b2
0005bc: 2b420004     move.l     d2, $4(a5)
0005c0: 670000f0     beq.w      $6b2
0005c4: 2c02         move.l     d2, d6
0005c6: 266d0020     movea.l    $20(a5), a3
0005ca: 08290001002a btst.b     #$1, $2a(a1)
0005d0: 666a         bne.b      $63c
0005d2: 4a07         tst.b      d7
0005d4: 665e         bne.b      $634
0005d6: bca900c8     cmp.l      $c8(a1), d6
0005da: 6558         bcs.b      $634
0005dc: 24290032     move.l     $32(a1), d2
0005e0: c4a90070     and.l      $70(a1), d2
0005e4: 664e         bne.b      $634
0005e6: 340b         move.w     a3, d2
0005e8: 08020000     btst.b     #$0, d2
0005ec: 6646         bne.b      $634
0005ee: 6100026e     bsr.w      $85e
0005f2: 6540         bcs.b      $634
0005f4: 61001226     bsr.w      $181c
0005f8: 65000098     bcs.w      $692
0005fc: 08e90006002a bset.b     #$6, $2a(a1)
000602: 2069000e     movea.l    $e(a1), a0
000606: c14b         exg.l      a0, a3
000608: 2348000e     move.l     a0, $e(a1)
00060c: 610000ba     bsr.w      $6c8
000610: 2f00         move.l     d0, -(a7)
000612: 61001452     bsr.w      $1a66
000616: 55c0         scs.b      d0
000618: 2069000e     movea.l    $e(a1), a0
00061c: c14b         exg.l      a0, a3
00061e: 2348000e     move.l     a0, $e(a1)
000622: 4229002a     clr.b      $2a(a1)
000626: 241f         move.l     (a7)+, d2
000628: 1629006f     move.b     $6f(a1), d3
00062c: e7a2         asl.l      d3, d2
00062e: 4a00         tst.b      d0
000630: 6740         beq.b      $672
000632: 605e         bra.b      $692
000634: 7001         moveq      #$1, d0
000636: 6100142e     bsr.w      $1a66
00063a: 6576         bcs.b      $6b2
00063c: 2069000e     movea.l    $e(a1), a0
000640: 24290032     move.l     $32(a1), d2
000644: c4a90070     and.l      $70(a1), d2
000648: d1c2         adda.l     d2, a0
00064a: 94a900c8     sub.l      $c8(a1), d2
00064e: 4482         neg.l      d2
000650: b486         cmp.l      d6, d2
000652: 6302         bls.b      $656
000654: 2406         move.l     d6, d2
000656: 4a07         tst.b      d7
000658: 6712         beq.b      $66c
00065a: 2202         move.l     d2, d1
00065c: 2448         movea.l    a0, a2
00065e: 6002         bra.b      $662
000660: be1a         cmp.b      (a2)+, d7
000662: 57c9fffc     dbeq       d1, $660
000666: 6702         beq.b      $66a
000668: 5241         addq.w     #$1, d1
00066a: 9481         sub.l      d1, d2
00066c: 244b         movea.l    a3, a2
00066e: 6100f9ec     bsr.w      $5c
000672: d7c2         adda.l     d2, a3
000674: 9c82         sub.l      d2, d6
000676: 08a90004002a bclr.b     #$4, $2a(a1)
00067c: d4a90032     add.l      $32(a1), d2
000680: 2602         move.l     d2, d3
000682: c4a90070     and.l      $70(a1), d2
000686: 6610         bne.b      $698
000688: 610013bc     bsr.w      $1a46
00068c: 640a         bcc.b      $698
00068e: 23430032     move.l     d3, $32(a1)
000692: 003c0001     ori.b      #$1, ccr
000696: 601a         bra.b      $6b2
000698: 23430032     move.l     d3, $32(a1)
00069c: 4a86         tst.l      d6
00069e: 6712         beq.b      $6b2
0006a0: 4a07         tst.b      d7
0006a2: 6700ff26     beq.w      $5ca
0006a6: be2bffff     cmp.b      -$1(a3), d7
0006aa: 6600ff1e     bne.w      $5ca
0006ae: 9dad0004     sub.l      d6, $4(a5)
0006b2: 082900010002 btst.b     #$1, $2(a1)
0006b8: 6640         bne.b      $6fa
0006ba: 40e7         move.w     sr, -(a7)
0006bc: 3f01         move.w     d1, -(a7)
0006be: 7005         moveq      #$5, d0
0006c0: 610009a4     bsr.w      $1066
0006c4: 321f         move.w     (a7)+, d1
0006c6: 4e77         rtr        
0006c8: 7001         moveq      #$1, d0
0006ca: 082900010097 btst.b     #$1, $97(a1)
0006d0: 6728         beq.b      $6fa
0006d2: 2029003a     move.l     $3a(a1), d0
0006d6: d0a90042     add.l      $42(a1), d0
0006da: 90a90032     sub.l      $32(a1), d0
0006de: b086         cmp.l      d6, d0
0006e0: 6302         bls.b      $6e4
0006e2: 2006         move.l     d6, d0
0006e4: 222900ac     move.l     $ac(a1), d1
0006e8: 6604         bne.b      $6ee
0006ea: 223af952     move.l     $3e(pc), d1
0006ee: b081         cmp.l      d1, d0
0006f0: 6302         bls.b      $6f4
0006f2: 2001         move.l     d1, d0
0006f4: 1229006f     move.b     $6f(a1), d1
0006f8: e2a8         lsr.l      d1, d0
0006fa: 4e75         rts        
0006fc: b4a90036     cmp.l      $36(a1), d2
000700: 631a         bls.b      $71c
000702: 2f290036     move.l     $36(a1), -(a7)
000706: 23420036     move.l     d2, $36(a1)
00070a: 61000b92     bsr.w      $129e
00070e: 205f         movea.l    (a7)+, a0
000710: 640c         bcc.b      $71e
000712: 23480036     move.l     a0, $36(a1)
000716: 003c0001     ori.b      #$1, ccr
00071a: 4e75         rts        
00071c: 7200         moveq      #$0, d1
00071e: 4e75         rts        
000720: 206d0020     movea.l    $20(a5), a0
000724: 700d         moveq      #$d, d0
000726: 242d0004     move.l     $4(a5), d2
00072a: 6002         bra.b      $72e
00072c: b018         cmp.b      (a0)+, d0
00072e: 57cafffc     dbeq       d2, $72c
000732: 6708         beq.b      $73c
000734: 5242         addq.w     #$1, d2
000736: 5382         subq.l     #$1, d2
000738: 6508         bcs.b      $742
00073a: 60f0         bra.b      $72c
00073c: 4482         neg.l      d2
00073e: d5ad0004     add.l      d2, $4(a5)
000742: 242d0004     move.l     $4(a5), d2
000746: 082900040002 btst.b     #$4, $2(a1)
00074c: 670c         beq.b      $75a
00074e: 137c0001006c move.b     #$1, $6c(a1)
000754: 236900360032 move.l     $36(a1), $32(a1)
00075a: 61000986     bsr.w      $10e2
00075e: 650000e0     bcs.w      $840
000762: 4aa900b6     tst.l      $b6(a1)
000766: 6704         beq.b      $76c
000768: 2469002e     movea.l    $2e(a1), a2
00076c: 242d0004     move.l     $4(a5), d2
000770: 670000e2     beq.w      $854
000774: d4a90032     add.l      $32(a1), d2
000778: 6408         bcc.b      $782
00077a: 323c00f8     move.w     #$f8, d1
00077e: 600000c0     bra.w      $840
000782: 6100ff78     bsr.w      $6fc
000786: 650000b8     bcs.w      $840
00078a: 2c2d0004     move.l     $4(a5), d6
00078e: 266d0020     movea.l    $20(a5), a3
000792: 08290001002a btst.b     #$1, $2a(a1)
000798: 665a         bne.b      $7f4
00079a: 24290032     move.l     $32(a1), d2
00079e: c4a90070     and.l      $70(a1), d2
0007a2: 6648         bne.b      $7ec
0007a4: bca900c8     cmp.l      $c8(a1), d6
0007a8: 6542         bcs.b      $7ec
0007aa: 610000b2     bsr.w      $85e
0007ae: 653c         bcs.b      $7ec
0007b0: 6100106a     bsr.w      $181c
0007b4: 340b         move.w     a3, d2
0007b6: 08020000     btst.b     #$0, d2
0007ba: 6636         bne.b      $7f2
0007bc: 4229002a     clr.b      $2a(a1)
0007c0: 2469000e     movea.l    $e(a1), a2
0007c4: 234b000e     move.l     a3, $e(a1)
0007c8: 6100fefe     bsr.w      $6c8
0007cc: 2f00         move.l     d0, -(a7)
0007ce: 61001214     bsr.w      $19e4
0007d2: 55c0         scs.b      d0
0007d4: 234a000e     move.l     a2, $e(a1)
0007d8: 261f         move.l     (a7)+, d3
0007da: 1429006f     move.b     $6f(a1), d2
0007de: e5a3         asl.l      d2, d3
0007e0: d7c3         adda.l     d3, a3
0007e2: 9c83         sub.l      d3, d6
0007e4: d6a90032     add.l      $32(a1), d3
0007e8: e208         lsr.b      #$1, d0
0007ea: 604e         bra.b      $83a
0007ec: 7001         moveq      #$1, d0
0007ee: 61001276     bsr.w      $1a66
0007f2: 654c         bcs.b      $840
0007f4: 2469000e     movea.l    $e(a1), a2
0007f8: 24290032     move.l     $32(a1), d2
0007fc: c4a90070     and.l      $70(a1), d2
000800: d5c2         adda.l     d2, a2
000802: 94a900c8     sub.l      $c8(a1), d2
000806: 4482         neg.l      d2
000808: 204b         movea.l    a3, a0
00080a: b486         cmp.l      d6, d2
00080c: 6302         bls.b      $810
00080e: 2406         move.l     d6, d2
000810: 6100f84a     bsr.w      $5c
000814: 08e90000002a bset.b     #$0, $2a(a1)
00081a: 08e90001002a bset.b     #$1, $2a(a1)
000820: 08a90004002a bclr.b     #$4, $2a(a1)
000826: d7c2         adda.l     d2, a3
000828: 9c82         sub.l      d2, d6
00082a: d4a90032     add.l      $32(a1), d2
00082e: 2602         move.l     d2, d3
000830: c4a90070     and.l      $70(a1), d2
000834: 6614         bne.b      $84a
000836: 6100120e     bsr.w      $1a46
00083a: 640e         bcc.b      $84a
00083c: 23430032     move.l     d3, $32(a1)
000840: 4229006c     clr.b      $6c(a1)
000844: 003c0001     ori.b      #$1, ccr
000848: 4e75         rts        
00084a: 23430032     move.l     d3, $32(a1)
00084e: 4a86         tst.l      d6
000850: 6600ff40     bne.w      $792
000854: 4229006c     clr.b      $6c(a1)
000858: 7001         moveq      #$1, d0
00085a: 6000080a     bra.w      $1066
00085e: 48e7e280     movem.l    d0-d2/d6/a0, -(a7)
000862: 20290032     move.l     $32(a1), d0
000866: dc80         add.l      d0, d6
000868: 24290070     move.l     $70(a1), d2
00086c: 4682         not.l      d2
00086e: c082         and.l      d2, d0
000870: cc82         and.l      d2, d6
000872: 2049         movea.l    a1, a0
000874: b3e80050     cmpa.l     $50(a0), a1
000878: 671e         beq.b      $898
00087a: 20680050     movea.l    $50(a0), a0
00087e: 08280001002a btst.b     #$1, $2a(a0)
000884: 67ee         beq.b      $874
000886: 22280032     move.l     $32(a0), d1
00088a: c282         and.l      d2, d1
00088c: b280         cmp.l      d0, d1
00088e: 65e4         bcs.b      $874
000890: b286         cmp.l      d6, d1
000892: 62e0         bhi.b      $874
000894: 003c0001     ori.b      #$1, ccr
000898: 4cdf0147     movem.l    (a7)+, d0-d2/d6/a0
00089c: 4e75         rts        
00089e: 08290001002a btst.b     #$1, $2a(a1)
0008a4: 6720         beq.b      $8c6
0008a6: 20290032     move.l     $32(a1), d0
0008aa: 22290070     move.l     $70(a1), d1
0008ae: 4681         not.l      d1
0008b0: c081         and.l      d1, d0
0008b2: 222d0004     move.l     $4(a5), d1
0008b6: 9280         sub.l      d0, d1
0008b8: 6506         bcs.b      $8c0
0008ba: b2a900c8     cmp.l      $c8(a1), d1
0008be: 6506         bcs.b      $8c6
0008c0: 61001184     bsr.w      $1a46
0008c4: 6506         bcs.b      $8cc
0008c6: 236d00040032 move.l     $4(a5), $32(a1)
0008cc: 4e75         rts        
0008ce: 302d0006     move.w     $6(a5), d0
0008d2: 0c400000     cmpi.w     #$0, d0
0008d6: 6612         bne.b      $8ea
0008d8: 6100011e     bsr.w      $9f8
0008dc: 6432         bcc.b      $910
0008de: 0c4100d0     cmpi.w     #$d0, d1
0008e2: 672c         beq.b      $910
0008e4: 003c0001     ori.b      #$1, ccr
0008e8: 6026         bra.b      $910
0008ea: 0c400006     cmpi.w     #$6, d0
0008ee: 6608         bne.b      $8f8
0008f0: 42ad0004     clr.l      $4(a5)
0008f4: 6000fc84     bra.w      $57a
0008f8: 0c400001     cmpi.w     #$1, d0
0008fc: 6606         bne.b      $904
0008fe: 42ad0004     clr.l      $4(a5)
000902: 4e75         rts        
000904: 0c400002     cmpi.w     #$2, d0
000908: 6608         bne.b      $912
00090a: 2b6900360008 move.l     $36(a1), $8(a5)
000910: 4e75         rts        
000912: 0c400005     cmpi.w     #$5, d0
000916: 6608         bne.b      $920
000918: 2b6900320008 move.l     $32(a1), $8(a5)
00091e: 4e75         rts        
000920: 0c40000f     cmpi.w     #$f, d0
000924: 6626         bne.b      $94c
000926: 4aa900b6     tst.l      $b6(a1)
00092a: 67000236     beq.w      $b62
00092e: 2069002e     movea.l    $2e(a1), a0
000932: 7400         moveq      #$0, d2
000934: 342d000a     move.w     $a(a5), d2
000938: b4a900c8     cmp.l      $c8(a1), d2
00093c: 6304         bls.b      $942
00093e: 242900c8     move.l     $c8(a1), d2
000942: 246d0020     movea.l    $20(a5), a2
000946: 6100f714     bsr.w      $5c
00094a: 4e75         rts        
00094c: 0c400020     cmpi.w     #$20, d0
000950: 660000a6     bne.w      $9f8
000954: 4a6c0014     tst.w      $14(a4)
000958: 670a         beq.b      $964
00095a: 082d00050040 btst.b     #$5, $40(a5)
000960: 6700008c     beq.w      $9ee
000964: 242d000c     move.l     $c(a5), d2
000968: 1229006f     move.b     $6f(a1), d1
00096c: e3aa         lsl.l      d1, d2
00096e: 671e         beq.b      $98e
000970: 24690048     movea.l    $48(a1), a2
000974: 45eaffcc     lea.l      -$34(a2), a2
000978: 246a004c     movea.l    $4c(a2), a2
00097c: 200a         move.l     a2, d0
00097e: 670e         beq.b      $98e
000980: b4aa00b6     cmp.l      $b6(a2), d2
000984: 62f2         bhi.b      $978
000986: 6606         bne.b      $98e
000988: 206a002e     movea.l    $2e(a2), a0
00098c: 60a4         bra.b      $932
00098e: 202900c8     move.l     $c8(a1), d0
000992: 4e40         trap       #$0
000994: 0028655a2669 ori.b      #$5a, $2669(a0)
00099a: 000e         .dc.w      $000e
00099c: 1629002a     move.b     $2a(a1), d3
0009a0: 137c0040002a move.b     #$40, $2a(a1)
0009a6: 234a000e     move.l     a2, $e(a1)
0009aa: 242d000c     move.l     $c(a5), d2
0009ae: 7001         moveq      #$1, d0
0009b0: 61000f0e     bsr.w      $18c0
0009b4: 55c0         scs.b      d0
0009b6: 2069000e     movea.l    $e(a1), a0
0009ba: 234b000e     move.l     a3, $e(a1)
0009be: 1343002a     move.b     d3, $2a(a1)
0009c2: e218         ror.b      #$1, d0
0009c4: 6504         bcs.b      $9ca
0009c6: 6100ff6a     bsr.w      $932
0009ca: 40e7         move.w     sr, -(a7)
0009cc: 3f01         move.w     d1, -(a7)
0009ce: 2448         movea.l    a0, a2
0009d0: 202900c8     move.l     $c8(a1), d0
0009d4: 2f0b         move.l     a3, -(a7)
0009d6: 266e03a4     movea.l    $3a4(a6), a3
0009da: 487a000c     pea.l      $9e8(pc)
0009de: 2f2b00a4     move.l     $a4(a3), -(a7)
0009e2: 266b04a4     movea.l    $4a4(a3), a3
0009e6: 4e75         rts        
0009e8: 265f         movea.l    (a7)+, a3
0009ea: 321f         move.w     (a7)+, d1
0009ec: 4e77         rtr        
0009ee: 323c00a4     move.w     #$a4, d1
0009f2: 003c0001     ori.b      #$1, ccr
0009f6: 4e75         rts        
0009f8: 7206         moveq      #$6, d1
0009fa: 60000ee6     bra.w      $18e2
0009fe: 302d0006     move.w     $6(a5), d0
000a02: 0c400000     cmpi.w     #$0, d0
000a06: 6624         bne.b      $a2c
000a08: 206d0020     movea.l    $20(a5), a0
000a0c: 41e80002     lea.l      $2(a0), a0
000a10: 45e90082     lea.l      $82(a1), a2
000a14: 740e         moveq      #$e, d2
000a16: 6100f644     bsr.w      $5c
000a1a: 303c0000     move.w     #$0, d0
000a1e: 6100014c     bsr.w      $b6c
000a22: 6406         bcc.b      $a2a
000a24: b27c00d0     cmp.w      #$d0, d1
000a28: 663c         bne.b      $a66
000a2a: 4e75         rts        
000a2c: 0c400002     cmpi.w     #$2, d0
000a30: 663a         bne.b      $a6c
000a32: 4aa900b6     tst.l      $b6(a1)
000a36: 672a         beq.b      $a62
000a38: 082900010002 btst.b     #$1, $2(a1)
000a3e: 6722         beq.b      $a62
000a40: 242d0008     move.l     $8(a5), d2
000a44: b4a90036     cmp.l      $36(a1), d2
000a48: 6400fcb2     bcc.w      $6fc
000a4c: 23420036     move.l     d2, $36(a1)
000a50: 2f290032     move.l     $32(a1), -(a7)
000a54: 61000b8a     bsr.w      $15e0
000a58: 55c7         scs.b      d7
000a5a: 235f0032     move.l     (a7)+, $32(a1)
000a5e: e31f         rol.b      #$1, d7
000a60: 4e75         rts        
000a62: 323c00cb     move.w     #$cb, d1
000a66: 003c0001     ori.b      #$1, ccr
000a6a: 4e75         rts        
000a6c: 0c40000f     cmpi.w     #$f, d0
000a70: 6632         bne.b      $aa4
000a72: 082900010002 btst.b     #$1, $2(a1)
000a78: 67e8         beq.b      $a62
000a7a: 206d0020     movea.l    $20(a5), a0
000a7e: 2469002e     movea.l    $2e(a1), a2
000a82: 342c0014     move.w     $14(a4), d2
000a86: 660c         bne.b      $a94
000a88: 156800010001 move.b     $1(a0), $1(a2)
000a8e: 156800020002 move.b     $2(a0), $2(a2)
000a94: 156800030003 move.b     $3(a0), $3(a2)
000a9a: 256800040004 move.l     $4(a0), $4(a2)
000aa0: 60000f16     bra.w      $19b8
000aa4: 0c400011     cmpi.w     #$11, d0
000aa8: 6616         bne.b      $ac0
000aaa: 242d0008     move.l     $8(a5), d2
000aae: 0c82ffffffff cmpi.l     #$ffffffff, d2
000ab4: 6606         bne.b      $abc
000ab6: 08e90001002b bset.b     #$1, $2b(a1)
000abc: 60000624     bra.w      $10e2
000ac0: 0c400010     cmpi.w     #$10, d0
000ac4: 6608         bne.b      $ace
000ac6: 236d00080062 move.l     $8(a5), $62(a1)
000acc: 4e75         rts        
000ace: 0c40001e     cmpi.w     #$1e, d0
000ad2: 6610         bne.b      $ae4
000ad4: 20690048     movea.l    $48(a1), a0
000ad8: 316d000a002a move.w     $a(a5), $2a(a0)
000ade: 42680020     clr.w      $20(a0)
000ae2: 4e75         rts        
000ae4: 0c40001c     cmpi.w     #$1c, d0
000ae8: 66000082     bne.w      $b6c
000aec: 2469002e     movea.l    $2e(a1), a2
000af0: 7200         moveq      #$0, d1
000af2: 342c0014     move.w     $14(a4), d2
000af6: 6708         beq.b      $b00
000af8: 122a0001     move.b     $1(a2), d1
000afc: b441         cmp.w      d1, d2
000afe: 6662         bne.b      $b62
000b00: 102d000b     move.b     $b(a5), d0
000b04: 122a0000     move.b     $0(a2), d1
000b08: b101         eor.b      d0, d1
000b0a: 6a4c         bpl.b      $b58
000b0c: 4a00         tst.b      d0
000b0e: 6b34         bmi.b      $b44
000b10: 20690048     movea.l    $48(a1), a0
000b14: 20280008     move.l     $8(a0), d0
000b18: e088         lsr.l      #$8, d0
000b1a: 1229006f     move.b     $6f(a1), d1
000b1e: e3a8         lsl.l      d1, d0
000b20: b0a900b6     cmp.l      $b6(a1), d0
000b24: 673c         beq.b      $b62
000b26: 61000f1e     bsr.w      $1a46
000b2a: 2f290032     move.l     $32(a1), -(a7)
000b2e: 237c000000200032 move.l     #$20, $32(a1)
000b36: 610002de     bsr.w      $e16
000b3a: 650e         bcs.b      $b4a
000b3c: 4a10         tst.b      (a0)
000b3e: 67f6         beq.b      $b36
000b40: 235f0032     move.l     (a7)+, $32(a1)
000b44: 323c00ee     move.w     #$ee, d1
000b48: 601c         bra.b      $b66
000b4a: 235f0032     move.l     (a7)+, $32(a1)
000b4e: 0c4100d3     cmpi.w     #$d3, d1
000b52: 6612         bne.b      $b66
000b54: 2469002e     movea.l    $2e(a1), a2
000b58: 156d000b0000 move.b     $b(a5), $0(a2)
000b5e: 60000e58     bra.w      $19b8
000b62: 323c00d6     move.w     #$d6, d1
000b66: 003c0001     ori.b      #$1, ccr
000b6a: 4e75         rts        
000b6c: 7208         moveq      #$8, d1
000b6e: 60000d72     bra.w      $18e2
000b72: 4229002a     clr.b      $2a(a1)
000b76: 2349005e     move.l     a1, $5e(a1)
000b7a: 206d0020     movea.l    $20(a5), a0
000b7e: 08e90003002a bset.b     #$3, $2a(a1)
000b84: 48e700e0     movem.l    a0-a2, -(a7)
000b88: 4feffff8     lea.l      -$8(a7), a7
000b8c: 10290002     move.b     $2(a1), d0
000b90: 1f400001     move.b     d0, $1(a7)
000b94: 02000007     andi.b     #$7, d0
000b98: 00000080     ori.b      #$80, d0
000b9c: 13400002     move.b     d0, $2(a1)
000ba0: 42a900b6     clr.l      $b6(a1)
000ba4: 42690046     clr.w      $46(a1)
000ba8: 24690004     movea.l    $4(a1), a2
000bac: 234a00c2     move.l     a2, $c2(a1)
000bb0: 7000         moveq      #$0, d0
000bb2: 10290081     move.b     $81(a1), d0
000bb6: 246a0004     movea.l    $4(a2), a2
000bba: b02a002e     cmp.b      $2e(a2), d0
000bbe: 6508         bcs.b      $bc8
000bc0: 323c00f0     move.w     #$f0, d1
000bc4: 600001fe     bra.w      $dc4
000bc8: c0faf472     mulu.w     $3c(pc), d0
000bcc: 06400036     addi.w     #$36, d0
000bd0: d08a         add.l      a2, d0
000bd2: 23400048     move.l     d0, $48(a1)
000bd6: 3f2d0006     move.w     $6(a5), -(a7)
000bda: 7044         moveq      #$44, d0
000bdc: 3b400006     move.w     d0, $6(a5)
000be0: 7206         moveq      #$6, d1
000be2: 61000cfe     bsr.w      $18e2
000be6: 641c         bcc.b      $c04
000be8: 3b5f0006     move.w     (a7)+, $6(a5)
000bec: b27c00d0     cmp.w      #$d0, d1
000bf0: 660e         bne.b      $c00
000bf2: 203c00000100 move.l     #$100, d0
000bf8: 7208         moveq      #$8, d1
000bfa: 6024         bra.b      $c20
000bfc: 323c00b0     move.w     #$b0, d1
000c00: 600001c2     bra.w      $dc4
000c04: 3b5f0006     move.w     (a7)+, $6(a5)
000c08: 7000         moveq      #$0, d0
000c0a: 30290094     move.w     $94(a1), d0
000c0e: 67e2         beq.b      $bf2
000c10: 2200         move.l     d0, d1
000c12: 5381         subq.l     #$1, d1
000c14: c280         and.l      d0, d1
000c16: 66e4         bne.b      $bfc
000c18: 720f         moveq      #$f, d1
000c1a: 0300         btst.l     d1, d0
000c1c: 56c9fffc     dbne       d1, $c1a
000c20: 234000c8     move.l     d0, $c8(a1)
000c24: 1341006f     move.b     d1, $6f(a1)
000c28: 2200         move.l     d0, d1
000c2a: 5381         subq.l     #$1, d1
000c2c: 23410070     move.l     d1, $70(a1)
000c30: 4e40         trap       #$0
000c32: 00286500015e ori.b      #$0, $15e(a0)
000c38: 234a000e     move.l     a2, $e(a1)
000c3c: 1010         move.b     (a0), d0
000c3e: 1f400000     move.b     d0, $0(a7)
000c42: 0c00002f     cmpi.b     #$2f, d0
000c46: 6618         bne.b      $c60
000c48: 61000218     bsr.w      $e62
000c4c: 40e7         move.w     sr, -(a7)
000c4e: 1f400002     move.b     d0, $2(a7)
000c52: 44df         move.w     (a7)+, ccr
000c54: 2049         movea.l    a1, a0
000c56: 226f000c     movea.l    $c(a7), a1
000c5a: 6500015c     bcs.w      $db8
000c5e: 6024         bra.b      $c84
000c60: 0c000040     cmpi.b     #$40, d0
000c64: 671e         beq.b      $c84
000c66: 1f7c002f0000 move.b     #$2f, $0(a7)
000c6c: 10290002     move.b     $2(a1), d0
000c70: 45ec0148     lea.l      $148(a4), a2
000c74: 08000002     btst.b     #$2, d0
000c78: 6704         beq.b      $c7e
000c7a: 45ea0010     lea.l      $10(a2), a2
000c7e: 236a000600b6 move.l     $6(a2), $b6(a1)
000c84: 102f0000     move.b     $0(a7), d0
000c88: 0c000040     cmpi.b     #$40, d0
000c8c: 6604         bne.b      $c92
000c8e: 5288         addq.l     #$1, a0
000c90: 603c         bra.b      $cce
000c92: 61000c0c     bsr.w      $18a0
000c96: 6500012c     bcs.w      $dc4
000c9a: 2469000e     movea.l    $e(a1), a2
000c9e: 336a000e0046 move.w     $e(a2), $46(a1)
000ca4: 720f         moveq      #$f, d1
000ca6: 302a0006     move.w     $6(a2), d0
000caa: 6602         bne.b      $cae
000cac: 7001         moveq      #$1, d0
000cae: 0300         btst.l     d1, d0
000cb0: 56c9fffc     dbne       d1, $cae
000cb4: 1341002d     move.b     d1, $2d(a1)
000cb8: 4aa900b6     tst.l      $b6(a1)
000cbc: 6610         bne.b      $cce
000cbe: 202a0008     move.l     $8(a2), d0
000cc2: e088         lsr.l      #$8, d0
000cc4: 1229006f     move.b     $6f(a1), d1
000cc8: e3a8         lsl.l      d1, d0
000cca: 234000b6     move.l     d0, $b6(a1)
000cce: 2f480008     move.l     a0, $8(a7)
000cd2: 2f480010     move.l     a0, $10(a7)
000cd6: 61000258     bsr.w      $f30
000cda: 650000e8     bcs.w      $dc4
000cde: 0c2f002f0000 cmpi.b     #$2f, $0(a7)
000ce4: 660000a8     bne.w      $d8e
000ce8: 42af0004     clr.l      $4(a7)
000cec: 10290002     move.b     $2(a1), d0
000cf0: 610001cc     bsr.w      $ebe
000cf4: 640c         bcc.b      $d02
000cf6: 4a2a0000     tst.b      $0(a2)
000cfa: 6b0000bc     bmi.w      $db8
000cfe: 600000c0     bra.w      $dc0
000d02: 6100f5de     bsr.w      $2e2
000d06: 206f0010     movea.l    $10(a7), a0
000d0a: 61000156     bsr.w      $e62
000d0e: 40e7         move.w     sr, -(a7)
000d10: 1f400002     move.b     d0, $2(a7)
000d14: 3f410004     move.w     d1, $4(a7)
000d18: 2f48000a     move.l     a0, $a(a7)
000d1c: 2f490012     move.l     a1, $12(a7)
000d20: 226f000e     movea.l    $e(a7), a1
000d24: 44df         move.w     (a7)+, ccr
000d26: 65000090     bcs.w      $db8
000d2a: 48e72020     movem.l    d2/a2, -(a7)
000d2e: 2401         move.l     d1, d2
000d30: 45e900e0     lea.l      $e0(a1), a2
000d34: 42322000     clr.b      (a2, d2.w)
000d38: 6100f322     bsr.w      $5c
000d3c: 4cdf0404     movem.l    (a7)+, d2/a2
000d40: 610000ea     bsr.w      $e2c
000d44: 6008         bra.b      $d4e
000d46: 610000ae     bsr.w      $df6
000d4a: 610000ca     bsr.w      $e16
000d4e: 6568         bcs.b      $db8
000d50: 4a10         tst.b      (a0)
000d52: 67f2         beq.b      $d46
000d54: 2248         movea.l    a0, a1
000d56: 206f0008     movea.l    $8(a7), a0
000d5a: 322f0002     move.w     $2(a7), d1
000d5e: 616a         bsr.b      $dca
000d60: 2049         movea.l    a1, a0
000d62: 226f000c     movea.l    $c(a7), a1
000d66: 65e2         bcs.b      $d4a
000d68: 6100009a     bsr.w      $e04
000d6c: 2f28001c     move.l     $1c(a0), -(a7)
000d70: 61000cd4     bsr.w      $1a46
000d74: 6404         bcc.b      $d7a
000d76: 588f         addq.l     #$4, a7
000d78: 604a         bra.b      $dc4
000d7a: 61000288     bsr.w      $1004
000d7e: 201f         move.l     (a7)+, d0
000d80: 1229006f     move.b     $6f(a1), d1
000d84: e3a8         lsl.l      d1, d0
000d86: 234000b6     move.l     d0, $b6(a1)
000d8a: 6000ff4a     bra.w      $cd6
000d8e: 206f0010     movea.l    $10(a7), a0
000d92: 7000         moveq      #$0, d0
000d94: 40c2         move.w     sr, d2
000d96: 136f00010002 move.b     $1(a7), $2(a1)
000d9c: 102f0000     move.b     $0(a7), d0
000da0: 44c2         move.w     d2, ccr
000da2: 4fef0008     lea.l      $8(a7), a7
000da6: 4cdf0700     movem.l    (a7)+, a0-a2
000daa: 08a90004002a bclr.b     #$4, $2a(a1)
000db0: 08a90003002a bclr.b     #$3, $2a(a1)
000db6: 4e75         rts        
000db8: 0c4100d3     cmpi.w     #$d3, d1
000dbc: 6606         bne.b      $dc4
000dbe: 6136         bsr.b      $df6
000dc0: 323c00d8     move.w     #$d8, d1
000dc4: 003c0001     ori.b      #$1, ccr
000dc8: 60ca         bra.b      $d94
000dca: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
000dce: 5341         subq.w     #$1, d1
000dd0: 1018         move.b     (a0)+, d0
000dd2: 1419         move.b     (a1)+, d2
000dd4: b500         eor.b      d2, d0
000dd6: 0200ffdf     andi.b     #$df, d0
000dda: 56c9fff4     dbne       d1, $dd0
000dde: 0200007f     andi.b     #$7f, d0
000de2: 6608         bne.b      $dec
000de4: 5341         subq.w     #$1, d1
000de6: 6404         bcc.b      $dec
000de8: 7000         moveq      #$0, d0
000dea: 6004         bra.b      $df0
000dec: 003c0001     ori.b      #$1, ccr
000df0: 4cdf0307     movem.l    (a7)+, d0-d2/a0-a1
000df4: 4e75         rts        
000df6: 0c2f002f0004 cmpi.b     #$2f, $4(a7)
000dfc: 6716         beq.b      $e14
000dfe: 4aaf0008     tst.l      $8(a7)
000e02: 6610         bne.b      $e14
000e04: 2f480008     move.l     a0, $8(a7)
000e08: 236900b600ba move.l     $b6(a1), $ba(a1)
000e0e: 2369003200be move.l     $32(a1), $be(a1)
000e14: 4e75         rts        
000e16: 7220         moveq      #$20, d1
000e18: d2a90032     add.l      $32(a1), d1
000e1c: 2f01         move.l     d1, -(a7)
000e1e: c2a90070     and.l      $70(a1), d1
000e22: 6604         bne.b      $e28
000e24: 61000c20     bsr.w      $1a46
000e28: 235f0032     move.l     (a7)+, $32(a1)
000e2c: 7420         moveq      #$20, d2
000e2e: 610002b2     bsr.w      $10e2
000e32: 652c         bcs.b      $e60
000e34: 7420         moveq      #$20, d2
000e36: 6100f744     bsr.w      $57c
000e3a: 6524         bcs.b      $e60
000e3c: 08290001002a btst.b     #$1, $2a(a1)
000e42: 660e         bne.b      $e52
000e44: 610009d6     bsr.w      $181c
000e48: 6516         bcs.b      $e60
000e4a: 7001         moveq      #$1, d0
000e4c: 61000c18     bsr.w      $1a66
000e50: 650e         bcs.b      $e60
000e52: 22290032     move.l     $32(a1), d1
000e56: c2a90070     and.l      $70(a1), d1
000e5a: 2069000e     movea.l    $e(a1), a0
000e5e: d1c1         adda.l     d1, a0
000e60: 4e75         rts        
000e62: 4e40         trap       #$0
000e64: 00106430     ori.b      #$30, (a0)
000e68: 2f08         move.l     a0, -(a7)
000e6a: 4241         clr.w      d1
000e6c: b03c002e     cmp.b      #$2e, d0
000e70: 6612         bne.b      $e84
000e72: 5241         addq.w     #$1, d1
000e74: 5288         addq.l     #$1, a0
000e76: 1010         move.b     (a0), d0
000e78: 0c010003     cmpi.b     #$3, d1
000e7c: 65ee         bcs.b      $e6c
000e7e: 702f         moveq      #$2f, d0
000e80: 5341         subq.w     #$1, d1
000e82: 5588         subq.l     #$2, a0
000e84: 4a41         tst.w      d1
000e86: 660c         bne.b      $e94
000e88: 205f         movea.l    (a7)+, a0
000e8a: 323c00d7     move.w     #$d7, d1
000e8e: 003c0001     ori.b      #$1, ccr
000e92: 4e75         rts        
000e94: 2248         movea.l    a0, a1
000e96: 205f         movea.l    (a7)+, a0
000e98: 0c810000001c cmpi.l     #$1c, d1
000e9e: 62ea         bhi.b      $e8a
000ea0: 4a00         tst.b      d0
000ea2: 6718         beq.b      $ebc
000ea4: 0c00002f     cmpi.b     #$2f, d0
000ea8: 6712         beq.b      $ebc
000eaa: 0c00000d     cmpi.b     #$d, d0
000eae: 670c         beq.b      $ebc
000eb0: 0c000020     cmpi.b     #$20, d0
000eb4: 6706         beq.b      $ebc
000eb6: 0c000040     cmpi.b     #$40, d0
000eba: 66ce         bne.b      $e8a
000ebc: 4e75         rts        
000ebe: 1200         move.b     d0, d1
000ec0: 02000007     andi.b     #$7, d0
000ec4: 020100c0     andi.b     #$c0, d1
000ec8: 48e7c080     movem.l    d0-d1/a0, -(a7)
000ecc: 2469002e     movea.l    $2e(a1), a2
000ed0: 2017         move.l     (a7), d0
000ed2: 342c0014     move.w     $14(a4), d2
000ed6: 6708         beq.b      $ee0
000ed8: b42a0001     cmp.b      $1(a2), d2
000edc: 6702         beq.b      $ee0
000ede: e700         asl.b      #$3, d0
000ee0: 802f0007     or.b       $7(a7), d0
000ee4: 08800006     bclr.b     #$6, d0
000ee8: 1e80         move.b     d0, (a7)
000eea: 00000080     ori.b      #$80, d0
000eee: c02a0000     and.b      $0(a2), d0
000ef2: b017         cmp.b      (a7), d0
000ef4: 6714         beq.b      $f0a
000ef6: 323c00d6     move.w     #$d6, d1
000efa: 508f         addq.l     #$8, a7
000efc: 205f         movea.l    (a7)+, a0
000efe: 003c0001     ori.b      #$1, ccr
000f02: 4e75         rts        
000f04: 323c00fd     move.w     #$fd, d1
000f08: 60f0         bra.b      $efa
000f0a: 122f0007     move.b     $7(a7), d1
000f0e: 822a0000     or.b       $0(a2), d1
000f12: 20690050     movea.l    $50(a1), a0
000f16: 82280002     or.b       $2(a0), d1
000f1a: 08010006     btst.b     #$6, d1
000f1e: 670a         beq.b      $f2a
000f20: b3c8         cmpa.l     a0, a1
000f22: 66e0         bne.b      $f04
000f24: 137c0002002b move.b     #$2, $2b(a1)
000f2a: 4cdf0103     movem.l    (a7)+, d0-d1/a0
000f2e: 4e75         rts        
000f30: 48e700a0     movem.l    a0/a2, -(a7)
000f34: 42a90032     clr.l      $32(a1)
000f38: 42a90042     clr.l      $42(a1)
000f3c: 242900b6     move.l     $b6(a1), d2
000f40: 24690048     movea.l    $48(a1), a2
000f44: 23490050     move.l     a1, $50(a1)
000f48: 45eaffcc     lea.l      -$34(a2), a2
000f4c: 6004         bra.b      $f52
000f4e: 246a004c     movea.l    $4c(a2), a2
000f52: 206a004c     movea.l    $4c(a2), a0
000f56: 2008         move.l     a0, d0
000f58: 674a         beq.b      $fa4
000f5a: b4a800b6     cmp.l      $b6(a0), d2
000f5e: 62ee         bhi.b      $f4e
000f60: 6542         bcs.b      $fa4
000f62: 08290001002b btst.b     #$1, $2b(a1)
000f68: 66000090     bne.w      $ffa
000f6c: 2349004c     move.l     a1, $4c(a1)
000f70: 236800500050 move.l     $50(a0), $50(a1)
000f76: 21490050     move.l     a1, $50(a0)
000f7a: 2469002e     movea.l    $2e(a1), a2
000f7e: 2368002e002e move.l     $2e(a0), $2e(a1)
000f84: 200a         move.l     a2, d0
000f86: 676c         beq.b      $ff4
000f88: 202900c8     move.l     $c8(a1), d0
000f8c: 2f0b         move.l     a3, -(a7)
000f8e: 266e03a4     movea.l    $3a4(a6), a3
000f92: 487a000c     pea.l      $fa0(pc)
000f96: 2f2b00a4     move.l     $a4(a3), -(a7)
000f9a: 266b04a4     movea.l    $4a4(a3), a3
000f9e: 4e75         rts        
000fa0: 265f         movea.l    (a7)+, a3
000fa2: 6050         bra.b      $ff4
000fa4: 204a         movea.l    a2, a0
000fa6: 2029002e     move.l     $2e(a1), d0
000faa: 660e         bne.b      $fba
000fac: 202900c8     move.l     $c8(a1), d0
000fb0: 4e40         trap       #$0
000fb2: 0028653e234a ori.b      #$3e, $234a(a0)
000fb8: 002e08a90002 ori.b      #$a9, $2(a6)
000fbe: 002a661a4aa9 ori.b      #$1a, $4aa9(a2)
000fc4: 00b66714610008ea ori.l      #$67146100, -$16(a6, d0.l)
000fcc: 6526         bcs.b      $ff4
000fce: 4cdf0500     movem.l    (a7)+, a0/a2
000fd2: 08e90002002a bset.b     #$2, $2a(a1)
000fd8: 6000ff56     bra.w      $f30
000fdc: 2368004c004c move.l     $4c(a0), $4c(a1)
000fe2: 2149004c     move.l     a1, $4c(a0)
000fe6: 2069000e     movea.l    $e(a1), a0
000fea: 2369002e000e move.l     $2e(a1), $e(a1)
000ff0: 2348002e     move.l     a0, $2e(a1)
000ff4: 4cdf0500     movem.l    (a7)+, a0/a2
000ff8: 4e75         rts        
000ffa: 323c00fd     move.w     #$fd, d1
000ffe: 003c0001     ori.b      #$1, ccr
001002: 60f0         bra.b      $ff4
001004: 48e740e0     movem.l    d1/a0-a2, -(a7)
001008: 24690048     movea.l    $48(a1), a2
00100c: 45eaffcc     lea.l      -$34(a2), a2
001010: 610000ae     bsr.w      $10c0
001014: 2049         movea.l    a1, a0
001016: 20680050     movea.l    $50(a0), a0
00101a: 2208         move.l     a0, d1
00101c: 673e         beq.b      $105c
00101e: b3e80050     cmpa.l     $50(a0), a1
001022: 66f2         bne.b      $1016
001024: b3c8         cmpa.l     a0, a1
001026: 6704         beq.b      $102c
001028: 42a9002e     clr.l      $2e(a1)
00102c: 216900500050 move.l     $50(a1), $50(a0)
001032: b3ea004c     cmpa.l     $4c(a2), a1
001036: 670c         beq.b      $1044
001038: 4aaa004c     tst.l      $4c(a2)
00103c: 671e         beq.b      $105c
00103e: 246a004c     movea.l    $4c(a2), a2
001042: 60ee         bra.b      $1032
001044: 2069004c     movea.l    $4c(a1), a0
001048: b3e90050     cmpa.l     $50(a1), a1
00104c: 670a         beq.b      $1058
00104e: 20690050     movea.l    $50(a1), a0
001052: 2169004c004c move.l     $4c(a1), $4c(a0)
001058: 2548004c     move.l     a0, $4c(a2)
00105c: 23490050     move.l     a1, $50(a1)
001060: 4cdf0702     movem.l    (a7)+, d1/a0-a2
001064: 4e75         rts        
001066: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
00106a: c029002b     and.b      $2b(a1), d0
00106e: 670c         beq.b      $107c
001070: b129002b     eor.b      d0, $2b(a1)
001074: 08290001002b btst.b     #$1, $2b(a1)
00107a: 6636         bne.b      $10b2
00107c: 2449         movea.l    a1, a2
00107e: 206a005e     movea.l    $5e(a2), a0
001082: b3c8         cmpa.l     a0, a1
001084: 6728         beq.b      $10ae
001086: 254a005e     move.l     a2, $5e(a2)
00108a: 2448         movea.l    a0, a2
00108c: 302a0054     move.w     $54(a2), d0
001090: 7201         moveq      #$1, d1
001092: 2f08         move.l     a0, -(a7)
001094: 2f0b         move.l     a3, -(a7)
001096: 266e03a4     movea.l    $3a4(a6), a3
00109a: 487a000c     pea.l      $10a8(pc)
00109e: 2f2b0020     move.l     $20(a3), -(a7)
0010a2: 266b0420     movea.l    $420(a3), a3
0010a6: 4e75         rts        
0010a8: 265f         movea.l    (a7)+, a3
0010aa: 205f         movea.l    (a7)+, a0
0010ac: 60d0         bra.b      $107e
0010ae: 254a005e     move.l     a2, $5e(a2)
0010b2: 4cdf0703     movem.l    (a7)+, d0-d1/a0-a2
0010b6: 4e75         rts        
0010b8: 323c00fd     move.w     #$fd, d1
0010bc: 003c0001     ori.b      #$1, ccr
0010c0: 40e7         move.w     sr, -(a7)
0010c2: 3f01         move.w     d1, -(a7)
0010c4: 7007         moveq      #$7, d0
0010c6: 619e         bsr.b      $1066
0010c8: 321f         move.w     (a7)+, d1
0010ca: 4e77         rtr        
0010cc: 1369002c002b move.b     $2c(a1), $2b(a1)
0010d2: 4cdf0704     movem.l    (a7)+, d2/a0-a2
0010d6: 4a29006c     tst.b      $6c(a1)
0010da: 6706         beq.b      $10e2
0010dc: 236900360032 move.l     $36(a1), $32(a1)
0010e2: 48e720e0     movem.l    d2/a0-a2, -(a7)
0010e6: 1369002b002c move.b     $2b(a1), $2c(a1)
0010ec: 610000d6     bsr.w      $11c4
0010f0: 64000098     bcc.w      $118a
0010f4: 30280054     move.w     $54(a0), d0
0010f8: 4e40         trap       #$0
0010fa: 003765123029 ori.b      #$12, $29(a7, d3.w)
001100: 0024670c     ori.b      #$c, -(a4)
001104: b06c0000     cmp.w      $0(a4), d0
001108: 66ee         bne.b      $10f8
00110a: 323c00fe     move.w     #$fe, d1
00110e: 6076         bra.b      $1186
001110: 30280054     move.w     $54(a0), d0
001114: 39400024     move.w     d0, $24(a4)
001118: 226f0008     movea.l    $8(a7), a1
00111c: 08a90004002a bclr.b     #$4, $2a(a1)
001122: 2368005e005e move.l     $5e(a0), $5e(a1)
001128: 2149005e     move.l     a1, $5e(a0)
00112c: 6162         bsr.b      $1190
00112e: 20290062     move.l     $62(a1), d0
001132: 48e7c004     movem.l    d0-d1/a5, -(a7)
001136: 2a4f         movea.l    a7, a5
001138: 2f0b         move.l     a3, -(a7)
00113a: 266e03a4     movea.l    $3a4(a6), a3
00113e: 487a000c     pea.l      $114c(pc)
001142: 2f2b0028     move.l     $28(a3), -(a7)
001146: 266b0428     movea.l    $428(a3), a3
00114a: 4e75         rts        
00114c: 265f         movea.l    (a7)+, a3
00114e: 4cdf2003     movem.l    (a7)+, d0-d1/a5
001152: 2049         movea.l    a1, a0
001154: 6004         bra.b      $115a
001156: 2068005e     movea.l    $5e(a0), a0
00115a: b3e8005e     cmpa.l     $5e(a0), a1
00115e: 66f6         bne.b      $1156
001160: 2169005e005e move.l     $5e(a1), $5e(a0)
001166: 2349005e     move.l     a1, $5e(a1)
00116a: 426c0024     clr.w      $24(a4)
00116e: 61000650     bsr.w      $17c0
001172: 6512         bcs.b      $1186
001174: 4a80         tst.l      d0
001176: 6600ff54     bne.w      $10cc
00117a: 4aa90062     tst.l      $62(a1)
00117e: 6700ff4c     beq.w      $10cc
001182: 323c00fc     move.w     #$fc, d1
001186: 003c0001     ori.b      #$1, ccr
00118a: 4cdf0704     movem.l    (a7)+, d2/a0-a2
00118e: 4e75         rts        
001190: 48e7c040     movem.l    d0-d1/a1, -(a7)
001194: 302c02d6     move.w     $2d6(a4), d0
001198: 6724         beq.b      $11be
00119a: 426c02d6     clr.w      $2d6(a4)
00119e: 7201         moveq      #$1, d1
0011a0: 2f0b         move.l     a3, -(a7)
0011a2: 266e03a4     movea.l    $3a4(a6), a3
0011a6: 487a000c     pea.l      $11b4(pc)
0011aa: 2f2b0020     move.l     $20(a3), -(a7)
0011ae: 266b0420     movea.l    $420(a3), a3
0011b2: 4e75         rts        
0011b4: 265f         movea.l    (a7)+, a3
0011b6: 4e40         trap       #$0
0011b8: 0037426902d4 ori.b      #$69, -$2c(a7, d0.w)
0011be: 4cdf0203     movem.l    (a7)+, d0-d1/a1
0011c2: 4e75         rts        
0011c4: 4a82         tst.l      d2
0011c6: 6700fef8     beq.w      $10c0
0011ca: 611a         bsr.b      $11e6
0011cc: 6500feea     bcs.w      $10b8
0011d0: 48e700e0     movem.l    a0-a2, -(a7)
0011d4: 7001         moveq      #$1, d0
0011d6: 6100fe8e     bsr.w      $1066
0011da: 08e90000002b bset.b     #$0, $2b(a1)
0011e0: 4cdf0700     movem.l    (a7)+, a0-a2
0011e4: 4e75         rts        
0011e6: 2f00         move.l     d0, -(a7)
0011e8: 2002         move.l     d2, d0
0011ea: d0a90032     add.l      $32(a1), d0
0011ee: 6402         bcc.b      $11f2
0011f0: 7000         moveq      #$0, d0
0011f2: 5380         subq.l     #$1, d0
0011f4: 2340005a     move.l     d0, $5a(a1)
0011f8: b0a90036     cmp.l      $36(a1), d0
0011fc: 6508         bcs.b      $1206
0011fe: 08e90002002b bset.b     #$2, $2b(a1)
001204: 600e         bra.b      $1214
001206: 08290002002b btst.b     #$2, $2b(a1)
00120c: 6706         beq.b      $1214
00120e: 7004         moveq      #$4, d0
001210: 6100fe54     bsr.w      $1066
001214: 236900320056 move.l     $32(a1), $56(a1)
00121a: 336900080054 move.w     $8(a1), $54(a1)
001220: 2049         movea.l    a1, a0
001222: b3e80050     cmpa.l     $50(a0), a1
001226: 6770         beq.b      $1298
001228: 20680050     movea.l    $50(a0), a0
00122c: 30280054     move.w     $54(a0), d0
001230: b0690054     cmp.w      $54(a1), d0
001234: 67ec         beq.b      $1222
001236: 1028002b     move.b     $2b(a0), d0
00123a: 67e6         beq.b      $1222
00123c: 8029002b     or.b       $2b(a1), d0
001240: 08000001     btst.b     #$1, d0
001244: 664e         bne.b      $1294
001246: 1028002b     move.b     $2b(a0), d0
00124a: c029002b     and.b      $2b(a1), d0
00124e: 08000002     btst.b     #$2, d0
001252: 6722         beq.b      $1276
001254: 0c280004002b cmpi.b     #$4, $2b(a0)
00125a: 6638         bne.b      $1294
00125c: 10280002     move.b     $2(a0), d0
001260: c0290002     and.b      $2(a1), d0
001264: 02000010     andi.b     #$10, d0
001268: 672a         beq.b      $1294
00126a: c149         exg.l      a0, a1
00126c: 7004         moveq      #$4, d0
00126e: 6100fdf6     bsr.w      $1066
001272: c149         exg.l      a0, a1
001274: 60ac         bra.b      $1222
001276: 08280000002b btst.b     #$0, $2b(a0)
00127c: 67a4         beq.b      $1222
00127e: 20280056     move.l     $56(a0), d0
001282: b0a9005a     cmp.l      $5a(a1), d0
001286: 629a         bhi.b      $1222
001288: 670a         beq.b      $1294
00128a: 2028005a     move.l     $5a(a0), d0
00128e: b0a90056     cmp.l      $56(a1), d0
001292: 658e         bcs.b      $1222
001294: 003c0001     ori.b      #$1, ccr
001298: 4cdf0001     movem.l    (a7)+, d0
00129c: 4e75         rts        
00129e: 4aa900b6     tst.l      $b6(a1)
0012a2: 660a         bne.b      $12ae
0012a4: 323c00f8     move.w     #$f8, d1
0012a8: 003c0001     ori.b      #$1, ccr
0012ac: 4e75         rts        
0012ae: 48e700a0     movem.l    a0/a2, -(a7)
0012b2: 20290036     move.l     $36(a1), d0
0012b6: 90a9003a     sub.l      $3a(a1), d0
0012ba: b0a90042     cmp.l      $42(a1), d0
0012be: 6350         bls.b      $1310
0012c0: 61000784     bsr.w      $1a46
0012c4: 2f290032     move.l     $32(a1), -(a7)
0012c8: 236900360032 move.l     $36(a1), $32(a1)
0012ce: 6100055e     bsr.w      $182e
0012d2: 55c0         scs.b      d0
0012d4: 235f0032     move.l     (a7)+, $32(a1)
0012d8: e208         lsr.b      #$1, d0
0012da: 6434         bcc.b      $1310
0012dc: 0c4100d5     cmpi.w     #$d5, d1
0012e0: 6628         bne.b      $130a
0012e2: 20290036     move.l     $36(a1), d0
0012e6: 90a9003a     sub.l      $3a(a1), d0
0012ea: d0a90070     add.l      $70(a1), d0
0012ee: 6404         bcc.b      $12f4
0012f0: 70ff         moveq      #$ff, d0
0012f2: 6012         bra.b      $1306
0012f4: 1229006f     move.b     $6f(a1), d1
0012f8: e2a8         lsr.l      d1, d0
0012fa: 7200         moveq      #$0, d1
0012fc: 3229008e     move.w     $8e(a1), d1
001300: b081         cmp.l      d1, d0
001302: 6402         bcc.b      $1306
001304: 2001         move.l     d1, d0
001306: 6156         bsr.b      $135e
001308: 64a8         bcc.b      $12b2
00130a: 003c0001     ori.b      #$1, ccr
00130e: 6008         bra.b      $1318
001310: 6100050a     bsr.w      $181c
001314: 65f4         bcs.b      $130a
001316: 6106         bsr.b      $131e
001318: 4cdf0500     movem.l    (a7)+, a0/a2
00131c: 4e75         rts        
00131e: 7000         moveq      #$0, d0
001320: 2f08         move.l     a0, -(a7)
001322: 2069002e     movea.l    $2e(a1), a0
001326: 116900360009 move.b     $36(a1), $9(a0)
00132c: 11690037000a move.b     $37(a1), $a(a0)
001332: 11690038000b move.b     $38(a1), $b(a0)
001338: 11690039000c move.b     $39(a1), $c(a0)
00133e: 2049         movea.l    a1, a0
001340: 600e         bra.b      $1350
001342: 216900360036 move.l     $36(a1), $36(a0)
001348: 082900010002 btst.b     #$1, $2(a1)
00134e: 56c0         sne.b      d0
001350: 20680050     movea.l    $50(a0), a0
001354: b3c8         cmpa.l     a0, a1
001356: 66ea         bne.b      $1342
001358: 4a00         tst.b      d0
00135a: 205f         movea.l    (a7)+, a0
00135c: 4e75         rts        
00135e: 48e700a0     movem.l    a0/a2, -(a7)
001362: 61000114     bsr.w      $1478
001366: 657e         bcs.b      $13e6
001368: 2340003e     move.l     d0, $3e(a1)
00136c: 23420042     move.l     d2, $42(a1)
001370: 2469002e     movea.l    $2e(a1), a2
001374: 7800         moveq      #$0, d4
001376: 15440009     move.b     d4, $9(a2)
00137a: 3544000a     move.w     d4, $a(a2)
00137e: 1544000c     move.b     d4, $c(a2)
001382: 1629006f     move.b     $6f(a1), d3
001386: 41ea0010     lea.l      $10(a2), a0
00138a: 7400         moveq      #$0, d2
00138c: 14280003     move.b     $3(a0), d2
001390: e142         asl.w      #$8, d2
001392: 14280004     move.b     $4(a0), d2
001396: 4a82         tst.l      d2
001398: 6700009a     beq.w      $1434
00139c: 202900c8     move.l     $c8(a1), d0
0013a0: 48720800     pea.l      (a2, d0.l)
0013a4: 6016         bra.b      $13bc
0013a6: 2002         move.l     d2, d0
0013a8: 7400         moveq      #$0, d2
0013aa: 1428fffe     move.b     -$2(a0), d2
0013ae: e142         asl.w      #$8, d2
0013b0: 1428ffff     move.b     -$1(a0), d2
0013b4: 4a42         tst.w      d2
0013b6: 6732         beq.b      $13ea
0013b8: e7a2         asl.l      d3, d2
0013ba: d882         add.l      d2, d4
0013bc: 41e80005     lea.l      $5(a0), a0
0013c0: b1d7         cmpa.l     (a7), a0
0013c2: 63e2         bls.b      $13a6
0013c4: 1544000c     move.b     d4, $c(a2)
0013c8: e08c         lsr.l      #$8, d4
0013ca: 3544000a     move.w     d4, $a(a2)
0013ce: 4844         swap       d4
0013d0: 15440009     move.b     d4, $9(a2)
0013d4: 61000336     bsr.w      $170c
0013d8: 588f         addq.l     #$4, a7
0013da: 42a90042     clr.l      $42(a1)
0013de: 323c00d9     move.w     #$d9, d1
0013e2: 003c0001     ori.b      #$1, ccr
0013e6: 6000008a     bra.w      $1472
0013ea: 588f         addq.l     #$4, a7
0013ec: 41e8fffb     lea.l      -$5(a0), a0
0013f0: 7200         moveq      #$0, d1
0013f2: 1228fffb     move.b     -$5(a0), d1
0013f6: e141         asl.w      #$8, d1
0013f8: 1228fffc     move.b     -$4(a0), d1
0013fc: e181         asl.l      #$8, d1
0013fe: 1228fffd     move.b     -$3(a0), d1
001402: e7a1         asl.l      d3, d1
001404: 2401         move.l     d1, d2
001406: d480         add.l      d0, d2
001408: b4a9003e     cmp.l      $3e(a1), d2
00140c: 6626         bne.b      $1434
00140e: 2429003e     move.l     $3e(a1), d2
001412: b382         eor.l      d1, d2
001414: 1203         move.b     d3, d1
001416: d229002d     add.b      $2d(a1), d1
00141a: 5601         addq.b     #$3, d1
00141c: d203         add.b      d3, d1
00141e: e2aa         lsr.l      d1, d2
001420: 6612         bne.b      $1434
001422: d0a90042     add.l      $42(a1), d0
001426: e6a8         lsr.l      d3, d0
001428: 5342         subq.w     #$1, d2
00142a: b082         cmp.l      d2, d0
00142c: 6206         bhi.b      $1434
00142e: 41e8fffb     lea.l      -$5(a0), a0
001432: 601c         bra.b      $1450
001434: 2029003e     move.l     $3e(a1), d0
001438: e6a8         lsr.l      d3, d0
00143a: 11400002     move.b     d0, $2(a0)
00143e: e088         lsr.l      #$8, d0
001440: 11400001     move.b     d0, $1(a0)
001444: e088         lsr.l      #$8, d0
001446: 11400000     move.b     d0, $0(a0)
00144a: 20290042     move.l     $42(a1), d0
00144e: e6a8         lsr.l      d3, d0
001450: 11400004     move.b     d0, $4(a0)
001454: e048         lsr.w      #$8, d0
001456: 11400003     move.b     d0, $3(a0)
00145a: d8a90042     add.l      $42(a1), d4
00145e: 1544000c     move.b     d4, $c(a2)
001462: e08c         lsr.l      #$8, d4
001464: 3544000a     move.w     d4, $a(a2)
001468: 4844         swap       d4
00146a: 15440009     move.b     d4, $9(a2)
00146e: 61000548     bsr.w      $19b8
001472: 4cdf0500     movem.l    (a7)+, a0/a2
001476: 4e75         rts        
001478: 48e710f0     movem.l    d3/a0-a3, -(a7)
00147c: 42a7         clr.l      -(a7)
00147e: 42a7         clr.l      -(a7)
001480: 26690048     movea.l    $48(a1), a3
001484: 7600         moveq      #$0, d3
001486: 362b0006     move.w     $6(a3), d3
00148a: 5383         subq.l     #$1, d3
00148c: d680         add.l      d0, d3
00148e: 6508         bcs.b      $1498
001490: b6bc00010000 cmp.l      #$10000, d3
001496: 6506         bcs.b      $149e
001498: 263c0000ffff move.l     #$ffff, d3
00149e: 1229002d     move.b     $2d(a1), d1
0014a2: e2ab         lsr.l      d1, d3
0014a4: 222900c8     move.l     $c8(a1), d1
0014a8: e781         asl.l      #$3, d1
0014aa: b681         cmp.l      d1, d3
0014ac: 6502         bcs.b      $14b0
0014ae: 2601         move.l     d1, d3
0014b0: 610002dc     bsr.w      $178e
0014b4: 65000118     bcs.w      $15ce
0014b8: 342b001c     move.w     $1c(a3), d2
0014bc: b46b000e     cmp.w      $e(a3), d2
0014c0: 6616         bne.b      $14d8
0014c2: 302b001e     move.w     $1e(a3), d0
0014c6: 6710         beq.b      $14d8
0014c8: b06b0004     cmp.w      $4(a3), d0
0014cc: 660a         bne.b      $14d8
0014ce: 322b0020     move.w     $20(a3), d1
0014d2: b26b003c     cmp.w      $3c(a3), d1
0014d6: 6522         bcs.b      $14fa
0014d8: 376b000e001c move.w     $e(a3), $1c(a3)
0014de: 302b0004     move.w     $4(a3), d0
0014e2: 3740001e     move.w     d0, $1e(a3)
0014e6: d0690072     add.w      $72(a1), d0
0014ea: 1229006f     move.b     $6f(a1), d1
0014ee: e2a8         lsr.l      d1, d0
0014f0: 3740003c     move.w     d0, $3c(a3)
0014f4: 426b0020     clr.w      $20(a3)
0014f8: 7200         moveq      #$0, d1
0014fa: 5241         addq.w     #$1, d1
0014fc: 3f410000     move.w     d1, $0(a7)
001500: b26b002a     cmp.w      $2a(a3), d1
001504: 6748         beq.b      $154e
001506: 6100030a     bsr.w      $1812
00150a: 650000c2     bcs.w      $15ce
00150e: 242900c8     move.l     $c8(a1), d2
001512: 322f0000     move.w     $0(a7), d1
001516: b26b003c     cmp.w      $3c(a3), d1
00151a: 650c         bcs.b      $1528
00151c: 5342         subq.w     #$1, d2
00151e: c46b0004     and.w      $4(a3), d2
001522: 6604         bne.b      $1528
001524: 242900c8     move.l     $c8(a1), d2
001528: 2069000e     movea.l    $e(a1), a0
00152c: 43f02000     lea.l      (a0, d2.w), a1
001530: 3203         move.w     d3, d1
001532: 7000         moveq      #$0, d0
001534: 4e40         trap       #$0
001536: 0012644c     ori.b      #$4c, (a2)
00153a: b26f0004     cmp.w      $4(a7), d1
00153e: 630e         bls.b      $154e
001540: 3f410004     move.w     d1, $4(a7)
001544: 3f400006     move.w     d0, $6(a7)
001548: 3f6f00000002 move.w     $0(a7), $2(a7)
00154e: 226f0010     movea.l    $10(a7), a1
001552: 322f0000     move.w     $0(a7), d1
001556: b26b003c     cmp.w      $3c(a3), d1
00155a: 6502         bcs.b      $155e
00155c: 7200         moveq      #$0, d1
00155e: b26b0020     cmp.w      $20(a3), d1
001562: 6696         bne.b      $14fa
001564: 322f0002     move.w     $2(a7), d1
001568: 6760         beq.b      $15ca
00156a: b26f0000     cmp.w      $0(a7), d1
00156e: 670a         beq.b      $157a
001570: 3f410000     move.w     d1, $0(a7)
001574: 6100029c     bsr.w      $1812
001578: 6554         bcs.b      $15ce
00157a: 2069000e     movea.l    $e(a1), a0
00157e: 302f0006     move.w     $6(a7), d0
001582: 322f0004     move.w     $4(a7), d1
001586: 3f400006     move.w     d0, $6(a7)
00158a: 3f410004     move.w     d1, $4(a7)
00158e: 4e40         trap       #$0
001590: 0013226f     ori.b      #$6f, (a3)
001594: 0010322f     ori.b      #$2f, (a0)
001598: 00006100     ori.b      #$0, d0
00159c: 0246652e     andi.w     #$652e, d6
0015a0: 7000         moveq      #$0, d0
0015a2: 302f0000     move.w     $0(a7), d0
0015a6: 5340         subq.w     #$1, d0
0015a8: 37400020     move.w     d0, $20(a3)
0015ac: 7403         moveq      #$3, d2
0015ae: d429006f     add.b      $6f(a1), d2
0015b2: e5a0         asl.l      d2, d0
0015b4: 806f0006     or.w       $6(a7), d0
0015b8: 342f0004     move.w     $4(a7), d2
0015bc: 1229002d     move.b     $2d(a1), d1
0015c0: d229006f     add.b      $6f(a1), d1
0015c4: e3a0         asl.l      d1, d0
0015c6: e3a2         asl.l      d1, d2
0015c8: 600c         bra.b      $15d6
0015ca: 323c00f8     move.w     #$f8, d1
0015ce: 6100021c     bsr.w      $17ec
0015d2: 003c0001     ori.b      #$1, ccr
0015d6: 4fef0008     lea.l      $8(a7), a7
0015da: 4cdf0f08     movem.l    (a7)+, d3/a0-a3
0015de: 4e75         rts        
0015e0: 4aa900b6     tst.l      $b6(a1)
0015e4: 660a         bne.b      $15f0
0015e6: 323c00e1     move.w     #$e1, d1
0015ea: 003c0001     ori.b      #$1, ccr
0015ee: 4e75         rts        
0015f0: 61000454     bsr.w      $1a46
0015f4: 082900070002 btst.b     #$7, $2(a1)
0015fa: 665e         bne.b      $165a
0015fc: 236900360032 move.l     $36(a1), $32(a1)
001602: 74ff         moveq      #$ff, d2
001604: 6100fadc     bsr.w      $10e2
001608: 654c         bcs.b      $1656
00160a: 6100fd12     bsr.w      $131e
00160e: 664a         bne.b      $165a
001610: 6100021c     bsr.w      $182e
001614: 6406         bcc.b      $161c
001616: 0c4100d5     cmpi.w     #$d5, d1
00161a: 6038         bra.b      $1654
00161c: 2429003a     move.l     $3a(a1), d2
001620: d4a90042     add.l      $42(a1), d2
001624: 94a90032     sub.l      $32(a1), d2
001628: 1629002d     move.b     $2d(a1), d3
00162c: d629006f     add.b      $6f(a1), d3
001630: e6aa         lsr.l      d3, d2
001632: e7aa         lsl.l      d3, d2
001634: 26290042     move.l     $42(a1), d3
001638: 23420042     move.l     d2, $42(a1)
00163c: 6732         beq.b      $1670
00163e: 9682         sub.l      d2, d3
001640: 48e71080     movem.l    d3/a0, -(a7)
001644: d7a9003e     add.l      d3, $3e(a1)
001648: 610000c2     bsr.w      $170c
00164c: 640e         bcc.b      $165c
00164e: 508f         addq.l     #$8, a7
001650: 0c4100db     cmpi.w     #$db, d1
001654: 671a         beq.b      $1670
001656: 003c0001     ori.b      #$1, ccr
00165a: 4e75         rts        
00165c: 4cdf0104     movem.l    (a7)+, d2/a0
001660: 1629006f     move.b     $6f(a1), d3
001664: e6aa         lsr.l      d3, d2
001666: 11420004     move.b     d2, $4(a0)
00166a: e04a         lsr.w      #$8, d2
00166c: 11420003     move.b     d2, $3(a0)
001670: 2469002e     movea.l    $2e(a1), a2
001674: 156900360009 move.b     $36(a1), $9(a2)
00167a: 15690037000a move.b     $37(a1), $a(a2)
001680: 15690038000b move.b     $38(a1), $b(a2)
001686: 15690039000c move.b     $39(a1), $c(a2)
00168c: 41e80005     lea.l      $5(a0), a0
001690: 2f08         move.l     a0, -(a7)
001692: 202900c8     move.l     $c8(a1), d0
001696: 48720800     pea.l      (a2, d0.l)
00169a: 604c         bra.b      $16e8
00169c: 7400         moveq      #$0, d2
00169e: 1428fffe     move.b     -$2(a0), d2
0016a2: e14a         lsl.w      #$8, d2
0016a4: 1428ffff     move.b     -$1(a0), d2
0016a8: 1629006f     move.b     $6f(a1), d3
0016ac: e7aa         lsl.l      d3, d2
0016ae: 6752         beq.b      $1702
0016b0: 23420042     move.l     d2, $42(a1)
0016b4: 7000         moveq      #$0, d0
0016b6: 1028fffb     move.b     -$5(a0), d0
0016ba: e140         asl.w      #$8, d0
0016bc: 1028fffc     move.b     -$4(a0), d0
0016c0: e180         asl.l      #$8, d0
0016c2: 1028fffd     move.b     -$3(a0), d0
0016c6: e7a0         asl.l      d3, d0
0016c8: 2340003e     move.l     d0, $3e(a1)
0016cc: 613e         bsr.b      $170c
0016ce: 6536         bcs.b      $1706
0016d0: 2f480004     move.l     a0, $4(a7)
0016d4: 4228fffb     clr.b      -$5(a0)
0016d8: 4228fffc     clr.b      -$4(a0)
0016dc: 4228fffd     clr.b      -$3(a0)
0016e0: 4228fffe     clr.b      -$2(a0)
0016e4: 4228ffff     clr.b      -$1(a0)
0016e8: 08290007002a btst.b     #$7, $2a(a1)
0016ee: 6606         bne.b      $16f6
0016f0: 610002c6     bsr.w      $19b8
0016f4: 6510         bcs.b      $1706
0016f6: 206f0004     movea.l    $4(a7), a0
0016fa: 41e80005     lea.l      $5(a0), a0
0016fe: b1d7         cmpa.l     (a7), a0
001700: 659a         bcs.b      $169c
001702: 42a90042     clr.l      $42(a1)
001706: 4fef0008     lea.l      $8(a7), a7
00170a: 4e75         rts        
00170c: 48e790e0     movem.l    d0/d3/a0-a2, -(a7)
001710: 20690048     movea.l    $48(a1), a0
001714: 7000         moveq      #$0, d0
001716: 30280006     move.w     $6(a0), d0
00171a: 1629006f     move.b     $6f(a1), d3
00171e: e7a0         asl.l      d3, d0
001720: 5380         subq.l     #$1, d0
001722: d0a9003e     add.l      $3e(a1), d0
001726: 22290042     move.l     $42(a1), d1
00172a: 1429002d     move.b     $2d(a1), d2
00172e: d403         add.b      d3, d2
001730: e4a8         lsr.l      d2, d0
001732: e4a9         lsr.l      d2, d1
001734: 2340003e     move.l     d0, $3e(a1)
001738: 23410042     move.l     d1, $42(a1)
00173c: 674a         beq.b      $1788
00173e: e688         lsr.l      #$3, d0
001740: 323c00db     move.w     #$db, d1
001744: b0680004     cmp.w      $4(a0), d0
001748: 623a         bhi.b      $1784
00174a: b0bc0000ffff cmp.l      #$ffff, d0
001750: 6232         bhi.b      $1784
001752: e668         lsr.w      d3, d0
001754: 5240         addq.w     #$1, d0
001756: 2e80         move.l     d0, (a7)
001758: 6134         bsr.b      $178e
00175a: 65fc         bcs.b      $1758
00175c: 2217         move.l     (a7), d1
00175e: 610000b2     bsr.w      $1812
001762: 6520         bcs.b      $1784
001764: 2069000e     movea.l    $e(a1), a0
001768: 2029003e     move.l     $3e(a1), d0
00176c: 222900c8     move.l     $c8(a1), d1
001770: e781         asl.l      #$3, d1
001772: 5381         subq.l     #$1, d1
001774: c081         and.l      d1, d0
001776: 22290042     move.l     $42(a1), d1
00177a: 4e40         trap       #$0
00177c: 00142217     ori.b      #$17, (a4)
001780: 6160         bsr.b      $17e2
001782: 6404         bcc.b      $1788
001784: 003c0001     ori.b      #$1, ccr
001788: 4cdf0709     movem.l    (a7)+, d0/d3/a0-a2
00178c: 4e75         rts        
00178e: 610002b6     bsr.w      $1a46
001792: 6018         bra.b      $17ac
001794: 2f0b         move.l     a3, -(a7)
001796: 266e03a4     movea.l    $3a4(a6), a3
00179a: 487a000c     pea.l      $17a8(pc)
00179e: 2f2b00ac     move.l     $ac(a3), -(a7)
0017a2: 266b04ac     movea.l    $4ac(a3), a3
0017a6: 4e75         rts        
0017a8: 265f         movea.l    (a7)+, a3
0017aa: 6114         bsr.b      $17c0
0017ac: 6510         bcs.b      $17be
0017ae: 20690048     movea.l    $48(a1), a0
0017b2: 30280022     move.w     $22(a0), d0
0017b6: 66dc         bne.b      $1794
0017b8: 316900080022 move.w     $8(a1), $22(a0)
0017be: 4e75         rts        
0017c0: 322c0026     move.w     $26(a4), d1
0017c4: 0c410001     cmpi.w     #$1, d1
0017c8: 6306         bls.b      $17d0
0017ca: 0c410020     cmpi.w     #$20, d1
0017ce: 650c         bcs.b      $17dc
0017d0: 023c         .dc.w      $023c
0017d2: fffe         dc.w       $fffe
0017d4: 082c0001001c btst.b     #$1, $1c(a4)
0017da: 6704         beq.b      $17e0
0017dc: 003c0001     ori.b      #$1, ccr
0017e0: 4e75         rts        
0017e2: 7400         moveq      #$0, d2
0017e4: 3401         move.w     d1, d2
0017e6: 7001         moveq      #$1, d0
0017e8: 6100020c     bsr.w      $19f6
0017ec: 40e7         move.w     sr, -(a7)
0017ee: 20690048     movea.l    $48(a1), a0
0017f2: 30290008     move.w     $8(a1), d0
0017f6: b0680022     cmp.w      $22(a0), d0
0017fa: 6614         bne.b      $1810
0017fc: 42680022     clr.w      $22(a0)
001800: 4a6c02d6     tst.w      $2d6(a4)
001804: 670a         beq.b      $1810
001806: 6100f988     bsr.w      $1190
00180a: 7001         moveq      #$1, d0
00180c: 4e40         trap       #$0
00180e: 000a         .dc.w      $000a
001810: 4e77         rtr        
001812: 7400         moveq      #$0, d2
001814: 3401         move.w     d1, d2
001816: 7001         moveq      #$1, d0
001818: 600000a6     bra.w      $18c0
00181c: 24290032     move.l     $32(a1), d2
001820: 94a9003a     sub.l      $3a(a1), d2
001824: b4a90042     cmp.l      $42(a1), d2
001828: 6404         bcc.b      $182e
00182a: 4202         clr.b      d2
00182c: 4e75         rts        
00182e: 48e71020     movem.l    d3/a2, -(a7)
001832: 42a9003a     clr.l      $3a(a1)
001836: 2069002e     movea.l    $2e(a1), a0
00183a: 242900c8     move.l     $c8(a1), d2
00183e: 45f028fc     lea.l      -$4(a0, d2.l), a2
001842: 41e80010     lea.l      $10(a0), a0
001846: 1629006f     move.b     $6f(a1), d3
00184a: 7400         moveq      #$0, d2
00184c: 14280003     move.b     $3(a0), d2
001850: e182         asl.l      #$8, d2
001852: 14280004     move.b     $4(a0), d2
001856: e7a2         asl.l      d3, d2
001858: 671a         beq.b      $1874
00185a: 23420042     move.l     d2, $42(a1)
00185e: d4a9003a     add.l      $3a(a1), d2
001862: b4a90032     cmp.l      $32(a1), d2
001866: 621a         bhi.b      $1882
001868: 2342003a     move.l     d2, $3a(a1)
00186c: 41e80005     lea.l      $5(a0), a0
001870: b1ca         cmpa.l     a2, a0
001872: 65d6         bcs.b      $184a
001874: 42a90042     clr.l      $42(a1)
001878: 323c00d5     move.w     #$d5, d1
00187c: 003c0001     ori.b      #$1, ccr
001880: 6018         bra.b      $189a
001882: 7400         moveq      #$0, d2
001884: 14280000     move.b     $0(a0), d2
001888: e182         asl.l      #$8, d2
00188a: 14280001     move.b     $1(a0), d2
00188e: e182         asl.l      #$8, d2
001890: 14280002     move.b     $2(a0), d2
001894: e7a2         asl.l      d3, d2
001896: 2342003e     move.l     d2, $3e(a1)
00189a: 4cdf0408     movem.l    (a7)+, d3/a2
00189e: 4e75         rts        
0018a0: 2f02         move.l     d2, -(a7)
0018a2: 610001a2     bsr.w      $1a46
0018a6: 6506         bcs.b      $18ae
0018a8: 7400         moveq      #$0, d2
0018aa: 7001         moveq      #$1, d0
0018ac: 610c         bsr.b      $18ba
0018ae: 4cdf0004     movem.l    (a7)+, d2
0018b2: 4e75         rts        
0018b4: 242900b6     move.l     $b6(a1), d2
0018b8: 7001         moveq      #$1, d0
0018ba: 1229006f     move.b     $6f(a1), d1
0018be: e2aa         lsr.l      d1, d2
0018c0: 7202         moveq      #$2, d1
0018c2: 61000160     bsr.w      $1a24
0018c6: 65ea         bcs.b      $18b2
0018c8: 48e7c000     movem.l    d0-d1, -(a7)
0018cc: 2f2e08f8     move.l     $8f8(a6), -(a7)
0018d0: 2f09         move.l     a1, -(a7)
0018d2: 2202         move.l     d2, d1
0018d4: 61000324     bsr.w      $1bfa
0018d8: 508f         addq.l     #$8, a7
0018da: 4a80         tst.l      d0
0018dc: 4cdf0003     movem.l    (a7)+, d0-d1
0018e0: 66d0         bne.b      $18b2
0018e2: 40e7         move.w     sr, -(a7)
0018e4: 2f01         move.l     d1, -(a7)
0018e6: 48e7fffe     movem.l    d0-d7/a0-a6, -(a7)
0018ea: 08e90005002a bset.b     #$5, $2a(a1)
0018f0: 24690004     movea.l    $4(a1), a2
0018f4: 246a0004     movea.l    $4(a2), a2
0018f8: 6016         bra.b      $1910
0018fa: 2f0b         move.l     a3, -(a7)
0018fc: 266e03a4     movea.l    $3a4(a6), a3
001900: 487a000c     pea.l      $190e(pc)
001904: 2f2b00ac     move.l     $ac(a3), -(a7)
001908: 266b04ac     movea.l    $4ac(a3), a3
00190c: 4e75         rts        
00190e: 265f         movea.l    (a7)+, a3
001910: 302a0006     move.w     $6(a2), d0
001914: 66e4         bne.b      $18fa
001916: 356900080006 move.w     $8(a1), $6(a2)
00191c: 20690004     movea.l    $4(a1), a0
001920: 20680000     movea.l    $0(a0), a0
001924: 4cd70003     movem.l    (a7), d0-d1
001928: d2a80030     add.l      $30(a0), d1
00192c: 32301800     move.w     (a0, d1.l), d1
001930: 2f0a         move.l     a2, -(a7)
001932: 4eb01000     jsr        (a0, d1.w)
001936: 245f         movea.l    (a7)+, a2
001938: 40ef0040     move.w     sr, $40(a7)
00193c: 2f410004     move.l     d1, $4(a7)
001940: 426a0006     clr.w      $6(a2)
001944: 4cdf7fff     movem.l    (a7)+, d0-d7/a0-a6
001948: 08a90005002a bclr.b     #$5, $2a(a1)
00194e: 48e7c084     movem.l    d0-d1/a0/a5, -(a7)
001952: 42a7         clr.l      -(a7)
001954: 082f00000019 btst.b     #$0, $19(a7)
00195a: 6702         beq.b      $195e
00195c: 5297         addq.l     #$1, (a7)
00195e: 2f2e08f8     move.l     $8f8(a6), -(a7)
001962: 2f09         move.l     a1, -(a7)
001964: 2f02         move.l     d2, -(a7)
001966: 222f0020     move.l     $20(a7), d1
00196a: 6100059e     bsr.w      $1f0a
00196e: 4fef0010     lea.l      $10(a7), a7
001972: 4a6c02d6     tst.w      $2d6(a4)
001976: 6738         beq.b      $19b0
001978: 082900020002 btst.b     #$2, $2(a1)
00197e: 6630         bne.b      $19b0
001980: 20690048     movea.l    $48(a1), a0
001984: 302c0000     move.w     $0(a4), d0
001988: b0680022     cmp.w      $22(a0), d0
00198c: 6722         beq.b      $19b0
00198e: 6100f800     bsr.w      $1190
001992: 7001         moveq      #$1, d0
001994: 598f         subq.l     #$4, a7
001996: 2a4f         movea.l    a7, a5
001998: 2f0b         move.l     a3, -(a7)
00199a: 266e03a4     movea.l    $3a4(a6), a3
00199e: 487a000c     pea.l      $19ac(pc)
0019a2: 2f2b0028     move.l     $28(a3), -(a7)
0019a6: 266b0428     movea.l    $428(a3), a3
0019aa: 4e75         rts        
0019ac: 265f         movea.l    (a7)+, a3
0019ae: 588f         addq.l     #$4, a7
0019b0: 4cdf2103     movem.l    (a7)+, d0-d1/a0/a5
0019b4: 588f         addq.l     #$4, a7
0019b6: 4e77         rtr        
0019b8: 558f         subq.l     #$2, a7
0019ba: 1f29002a     move.b     $2a(a1), -(a7)
0019be: 2f29000e     move.l     $e(a1), -(a7)
0019c2: 08e90004002a bset.b     #$4, $2a(a1)
0019c8: 2369002e000e move.l     $2e(a1), $e(a1)
0019ce: 242900b6     move.l     $b6(a1), d2
0019d2: 7001         moveq      #$1, d0
0019d4: 611a         bsr.b      $19f0
0019d6: 40ef0006     move.w     sr, $6(a7)
0019da: 235f000e     move.l     (a7)+, $e(a1)
0019de: 135f002a     move.b     (a7)+, $2a(a1)
0019e2: 4e77         rtr        
0019e4: 24290032     move.l     $32(a1), d2
0019e8: 94a9003a     sub.l      $3a(a1), d2
0019ec: d4a9003e     add.l      $3e(a1), d2
0019f0: 1229006f     move.b     $6f(a1), d1
0019f4: e2aa         lsr.l      d1, d2
0019f6: 7204         moveq      #$4, d1
0019f8: 612a         bsr.b      $1a24
0019fa: 6548         bcs.b      $1a44
0019fc: 48e7c080     movem.l    d0-d1/a0, -(a7)
001a00: 2f2e08f8     move.l     $8f8(a6), -(a7)
001a04: 2f01         move.l     d1, -(a7)
001a06: 20690048     movea.l    $48(a1), a0
001a0a: 2f280034     move.l     $34(a0), -(a7)
001a0e: 6708         beq.b      $1a18
001a10: 2200         move.l     d0, d1
001a12: 2002         move.l     d2, d0
001a14: 6100073c     bsr.w      $2152
001a18: 4fef000c     lea.l      $c(a7), a7
001a1c: 4cdf0103     movem.l    (a7)+, d0-d1/a0
001a20: 6000fec0     bra.w      $18e2
001a24: 48e78080     movem.l    d0/a0, -(a7)
001a28: 30290046     move.w     $46(a1), d0
001a2c: 6708         beq.b      $1a36
001a2e: 20690048     movea.l    $48(a1), a0
001a32: b068000e     cmp.w      $e(a0), d0
001a36: 4cdf0101     movem.l    (a7)+, d0/a0
001a3a: 6708         beq.b      $1a44
001a3c: 323c00fb     move.w     #$fb, d1
001a40: 003c0001     ori.b      #$1, ccr
001a44: 4e75         rts        
001a46: 023c         .dc.w      $023c
001a48: fffe         dc.w       $fffe
001a4a: 08290001002a btst.b     #$1, $2a(a1)
001a50: 6712         beq.b      $1a64
001a52: 08a90000002a bclr.b     #$0, $2a(a1)
001a58: 6704         beq.b      $1a5e
001a5a: 7001         moveq      #$1, d0
001a5c: 6186         bsr.b      $19e4
001a5e: 08a90001002a bclr.b     #$1, $2a(a1)
001a64: 4e75         rts        
001a66: 48e780a0     movem.l    d0/a0/a2, -(a7)
001a6a: 6100fdb0     bsr.w      $181c
001a6e: 650000c6     bcs.w      $1b36
001a72: 61d2         bsr.b      $1a46
001a74: 650000c0     bcs.w      $1b36
001a78: 08290006002a btst.b     #$6, $2a(a1)
001a7e: 66000096     bne.w      $1b16
001a82: 5340         subq.w     #$1, d0
001a84: 66000090     bne.w      $1b16
001a88: 20290032     move.l     $32(a1), d0
001a8c: 22290070     move.l     $70(a1), d1
001a90: 4681         not.l      d1
001a92: c081         and.l      d1, d0
001a94: 2049         movea.l    a1, a0
001a96: b3e80050     cmpa.l     $50(a0), a1
001a9a: 6774         beq.b      $1b10
001a9c: 20680050     movea.l    $50(a0), a0
001aa0: 08280001002a btst.b     #$1, $2a(a0)
001aa6: 67ee         beq.b      $1a96
001aa8: 22290070     move.l     $70(a1), d1
001aac: 4681         not.l      d1
001aae: c2a80032     and.l      $32(a0), d1
001ab2: b081         cmp.l      d1, d0
001ab4: 66e0         bne.b      $1a96
001ab6: 08280005002a btst.b     #$5, $2a(a0)
001abc: 6608         bne.b      $1ac6
001abe: 08280004002a btst.b     #$4, $2a(a0)
001ac4: 6722         beq.b      $1ae8
001ac6: 30280008     move.w     $8(a0), d0
001aca: 2f0b         move.l     a3, -(a7)
001acc: 266e03a4     movea.l    $3a4(a6), a3
001ad0: 487a000c     pea.l      $1ade(pc)
001ad4: 2f2b00ac     move.l     $ac(a3), -(a7)
001ad8: 266b04ac     movea.l    $4ac(a3), a3
001adc: 4e75         rts        
001ade: 265f         movea.l    (a7)+, a3
001ae0: 6100fcde     bsr.w      $17c0
001ae4: 64a2         bcc.b      $1a88
001ae6: 604e         bra.b      $1b36
001ae8: 2028000e     move.l     $e(a0), d0
001aec: 2169000e000e move.l     $e(a1), $e(a0)
001af2: 2340000e     move.l     d0, $e(a1)
001af6: 1368002a002a move.b     $2a(a0), $2a(a1)
001afc: 0229ff77002a andi.b     #$77, $2a(a1)
001b02: 02280088002a andi.b     #$88, $2a(a0)
001b08: 08e90004002a bset.b     #$4, $2a(a1)
001b0e: 6026         bra.b      $1b36
001b10: 08e90001002a bset.b     #$1, $2a(a1)
001b16: 08e90004002a bset.b     #$4, $2a(a1)
001b1c: 24290032     move.l     $32(a1), d2
001b20: 94a9003a     sub.l      $3a(a1), d2
001b24: d4a9003e     add.l      $3e(a1), d2
001b28: 2017         move.l     (a7), d0
001b2a: 6100fd8e     bsr.w      $18ba
001b2e: 6406         bcc.b      $1b36
001b30: 08a90001002a bclr.b     #$1, $2a(a1)
001b36: 4cdf0501     movem.l    (a7)+, d0/a0/a2
001b3a: 4e75         rts        
001b3c: 4e550000     link.w     a5, #$0
001b40: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
001b44: 2440         movea.l    d0, a2
001b46: 2641         movea.l    d1, a3
001b48: 256b00080008 move.l     $8(a3), $8(a2)
001b4e: 206b0008     movea.l    $8(a3), a0
001b52: 214a000c     move.l     a2, $c(a0)
001b56: 274a0008     move.l     a2, $8(a3)
001b5a: 254b000c     move.l     a3, $c(a2)
001b5e: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
001b64: 4e5d         unlk       a5
001b66: 4e75         rts        
001b68: 4e550000     link.w     a5, #$0
001b6c: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
001b70: 2440         movea.l    d0, a2
001b72: 2641         movea.l    d1, a3
001b74: 2493         move.l     (a3), (a2)
001b76: 2053         movea.l    (a3), a0
001b78: 214a0004     move.l     a2, $4(a0)
001b7c: 268a         move.l     a2, (a3)
001b7e: 254b0004     move.l     a3, $4(a2)
001b82: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
001b88: 4e5d         unlk       a5
001b8a: 4e75         rts        
001b8c: 4e550000     link.w     a5, #$0
001b90: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
001b94: 2800         move.l     d0, d4
001b96: 246f0024     movea.l    $24(a7), a2
001b9a: 203c000000ff move.l     #$ff, d0
001ba0: c084         and.l      d4, d0
001ba2: e788         lsl.l      #$3, d0
001ba4: 206f0004     movea.l    $4(a7), a0
001ba8: 26700800     movea.l    (a0, d0.l), a3
001bac: 286b0004     movea.l    $4(a3), a4
001bb0: 6038         bra.b      $1bea
001bb2: 5292         addq.l     #$1, (a2)
001bb4: b8ab0010     cmp.l      $10(a3), d4
001bb8: 662e         bne.b      $1be8
001bba: 206f0004     movea.l    $4(a7), a0
001bbe: 22280800     move.l     $800(a0), d1
001bc2: 202b0014     move.l     $14(a3), d0
001bc6: 61000686     bsr.w      $224e
001bca: b0ab0018     cmp.l      $18(a3), d0
001bce: 6604         bne.b      $1bd4
001bd0: 200b         move.l     a3, d0
001bd2: 601c         bra.b      $1bf0
001bd4: 206f0004     movea.l    $4(a7), a0
001bd8: 52a80844     addq.l     #$1, $844(a0)
001bdc: 222f0028     move.l     $28(a7), d1
001be0: 200b         move.l     a3, d0
001be2: 6100026a     bsr.w      $1e4e
001be6: 6006         bra.b      $1bee
001be8: 2653         movea.l    (a3), a3
001bea: b7cc         cmpa.l     a4, a3
001bec: 66c4         bne.b      $1bb2
001bee: 7000         moveq      #$0, d0
001bf0: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
001bf6: 4e5d         unlk       a5
001bf8: 4e75         rts        
001bfa: 4e550000     link.w     a5, #$0
001bfe: 48e7cff8     movem.l    d0-d1/d4-d7/a0-a4, -(a7)
001c02: 2800         move.l     d0, d4
001c04: 2a01         move.l     d1, d5
001c06: 518f         subq.l     #$8, a7
001c08: 7c00         moveq      #$0, d6
001c0a: 4297         clr.l      (a7)
001c0c: 4aaf0040     tst.l      $40(a7)
001c10: 67000188     beq.w      $1d9a
001c14: 206f003c     movea.l    $3c(a7), a0
001c18: 20280048     move.l     $48(a0), d0
001c1c: 2f400004     move.l     d0, $4(a7)
001c20: 2040         movea.l    d0, a0
001c22: 28680034     movea.l    $34(a0), a4
001c26: 200c         move.l     a4, d0
001c28: 67000170     beq.w      $1d9a
001c2c: 206f0004     movea.l    $4(a7), a0
001c30: 302c0806     move.w     $806(a4), d0
001c34: b068000e     cmp.w      $e(a0), d0
001c38: 660e         bne.b      $1c48
001c3a: 206f003c     movea.l    $3c(a7), a0
001c3e: 202c0800     move.l     $800(a4), d0
001c42: b0a800c8     cmp.l      $c8(a0), d0
001c46: 674c         beq.b      $1c94
001c48: 4aac0800     tst.l      $800(a4)
001c4c: 671a         beq.b      $1c68
001c4e: 2f2f0040     move.l     $40(a7), -(a7)
001c52: 48780002     pea.l      $2.w
001c56: 4854         pea.l      (a4)
001c58: 223c7fffffff move.l     #$7fffffff, d1
001c5e: 7001         moveq      #$1, d0
001c60: 610004f0     bsr.w      $2152
001c64: 4fef000c     lea.l      $c(a7), a7
001c68: 206f0004     movea.l    $4(a7), a0
001c6c: 3968000e0806 move.w     $e(a0), $806(a4)
001c72: 206f0040     movea.l    $40(a7), a0
001c76: 226f003c     movea.l    $3c(a7), a1
001c7a: 202900c8     move.l     $c8(a1), d0
001c7e: b0a80010     cmp.l      $10(a0), d0
001c82: 6206         bhi.b      $1c8a
001c84: 202900c8     move.l     $c8(a1), d0
001c88: 6002         bra.b      $1c8c
001c8a: 7000         moveq      #$0, d0
001c8c: 29400800     move.l     d0, $800(a4)
001c90: 600000d8     bra.w      $1d6a
001c94: 4a85         tst.l      d5
001c96: 670000c8     beq.w      $1d60
001c9a: 7002         moveq      #$2, d0
001c9c: b084         cmp.l      d4, d0
001c9e: 650000ca     bcs.w      $1d6a
001ca2: 2f2f0040     move.l     $40(a7), -(a7)
001ca6: 486f0004     pea.l      $4(a7)
001caa: 220c         move.l     a4, d1
001cac: 2005         move.l     d5, d0
001cae: 6100fedc     bsr.w      $1b8c
001cb2: 508f         addq.l     #$8, a7
001cb4: 2440         movea.l    d0, a2
001cb6: 4a80         tst.l      d0
001cb8: 6700009a     beq.w      $1d54
001cbc: 7002         moveq      #$2, d0
001cbe: b084         cmp.l      d4, d0
001cc0: 621c         bhi.b      $1cde
001cc2: 2f2f0040     move.l     $40(a7), -(a7)
001cc6: 486f0004     pea.l      $4(a7)
001cca: 220c         move.l     a4, d1
001ccc: 2005         move.l     d5, d0
001cce: 5280         addq.l     #$1, d0
001cd0: 6100feba     bsr.w      $1b8c
001cd4: 508f         addq.l     #$8, a7
001cd6: 2640         movea.l    d0, a3
001cd8: 4a80         tst.l      d0
001cda: 67000078     beq.w      $1d54
001cde: 206f003c     movea.l    $3c(a7), a0
001ce2: 08280003002a btst.b     #$3, $2a(a0)
001ce8: 6704         beq.b      $1cee
001cea: 7002         moveq      #$2, d0
001cec: 6002         bra.b      $1cf0
001cee: 7000         moveq      #$0, d0
001cf0: 3e00         move.w     d0, d7
001cf2: 2f05         move.l     d5, -(a7)
001cf4: 48c7         ext.l      d7
001cf6: 2f07         move.l     d7, -(a7)
001cf8: 2f2f0048     move.l     $48(a7), -(a7)
001cfc: 4854         pea.l      (a4)
001cfe: 220a         move.l     a2, d1
001d00: 206f004c     movea.l    $4c(a7), a0
001d04: 2028000e     move.l     $e(a0), d0
001d08: 6100009e     bsr.w      $1da8
001d0c: 4fef0010     lea.l      $10(a7), a7
001d10: 7002         moveq      #$2, d0
001d12: b084         cmp.l      d4, d0
001d14: 6626         bne.b      $1d3c
001d16: 2005         move.l     d5, d0
001d18: 5280         addq.l     #$1, d0
001d1a: 2f00         move.l     d0, -(a7)
001d1c: 48c7         ext.l      d7
001d1e: 2f07         move.l     d7, -(a7)
001d20: 2f2f0048     move.l     $48(a7), -(a7)
001d24: 4854         pea.l      (a4)
001d26: 220b         move.l     a3, d1
001d28: 206f004c     movea.l    $4c(a7), a0
001d2c: 2028000e     move.l     $e(a0), d0
001d30: d0ac0800     add.l      $800(a4), d0
001d34: 61000072     bsr.w      $1da8
001d38: 4fef0010     lea.l      $10(a7), a7
001d3c: 2017         move.l     (a7), d0
001d3e: d1ac0850     add.l      d0, $850(a4)
001d42: 4a47         tst.w      d7
001d44: 6706         beq.b      $1d4c
001d46: d9ac0838     add.l      d4, $838(a4)
001d4a: 6004         bra.b      $1d50
001d4c: d9ac0810     add.l      d4, $810(a4)
001d50: 7c01         moveq      #$1, d6
001d52: 6016         bra.b      $1d6a
001d54: d9ac084c     add.l      d4, $84c(a4)
001d58: 2017         move.l     (a7), d0
001d5a: d1ac0854     add.l      d0, $854(a4)
001d5e: 600a         bra.b      $1d6a
001d60: 206f0004     movea.l    $4(a7), a0
001d64: 3968000e0806 move.w     $e(a0), $806(a4)
001d6a: 206f003c     movea.l    $3c(a7), a0
001d6e: 08280003002a btst.b     #$3, $2a(a0)
001d74: 670a         beq.b      $1d80
001d76: 52ac0830     addq.l     #$1, $830(a4)
001d7a: d9ac0834     add.l      d4, $834(a4)
001d7e: 6008         bra.b      $1d88
001d80: 52ac0808     addq.l     #$1, $808(a4)
001d84: d9ac080c     add.l      d4, $80c(a4)
001d88: 7002         moveq      #$2, d0
001d8a: b084         cmp.l      d4, d0
001d8c: 6404         bcc.b      $1d92
001d8e: 52ac0818     addq.l     #$1, $818(a4)
001d92: 4a85         tst.l      d5
001d94: 6604         bne.b      $1d9a
001d96: 52ac081c     addq.l     #$1, $81c(a4)
001d9a: 2006         move.l     d6, d0
001d9c: 508f         addq.l     #$8, a7
001d9e: 4ced1ff0ffdc movem.l    -$24(a5), d4-d7/a0-a4
001da4: 4e5d         unlk       a5
001da6: 4e75         rts        
001da8: 4e550000     link.w     a5, #$0
001dac: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
001db0: 2441         movea.l    d1, a2
001db2: 266f0028     movea.l    $28(a7), a3
001db6: 286f002c     movea.l    $2c(a7), a4
001dba: 282f0030     move.l     $30(a7), d4
001dbe: 2a2f0034     move.l     $34(a7), d5
001dc2: b5d4         cmpa.l     (a4), a2
001dc4: 6720         beq.b      $1de6
001dc6: 206a000c     movea.l    $c(a2), a0
001dca: 216a00080008 move.l     $8(a2), $8(a0)
001dd0: 206a0008     movea.l    $8(a2), a0
001dd4: 216a000c000c move.l     $c(a2), $c(a0)
001dda: 2054         movea.l    (a4), a0
001ddc: 2228000c     move.l     $c(a0), d1
001de0: 200a         move.l     a2, d0
001de2: 6100fd58     bsr.w      $1b3c
001de6: 203c000000ff move.l     #$ff, d0
001dec: c085         and.l      d5, d0
001dee: e788         lsl.l      #$3, d0
001df0: b5f30800     cmpa.l     (a3, d0.l), a2
001df4: 6726         beq.b      $1e1c
001df6: 206a0004     movea.l    $4(a2), a0
001dfa: 2092         move.l     (a2), (a0)
001dfc: 2052         movea.l    (a2), a0
001dfe: 216a00040004 move.l     $4(a2), $4(a0)
001e04: 203c000000ff move.l     #$ff, d0
001e0a: c085         and.l      d5, d0
001e0c: e788         lsl.l      #$3, d0
001e0e: 20730800     movea.l    (a3, d0.l), a0
001e12: 22280004     move.l     $4(a0), d1
001e16: 200a         move.l     a2, d0
001e18: 6100fd4e     bsr.w      $1b68
001e1c: 3004         move.w     d4, d0
001e1e: 7200         moveq      #$0, d1
001e20: 122b0805     move.b     $805(a3), d1
001e24: d041         add.w      d1, d0
001e26: d16a001c     add.w      d0, $1c(a2)
001e2a: 6c06         bge.b      $1e32
001e2c: 357c7fff001c move.w     #$7fff, $1c(a2)
001e32: 2f2b0800     move.l     $800(a3), -(a7)
001e36: 222a0014     move.l     $14(a2), d1
001e3a: 202f0004     move.l     $4(a7), d0
001e3e: 610003f2     bsr.w      $2232
001e42: 588f         addq.l     #$4, a7
001e44: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
001e4a: 4e5d         unlk       a5
001e4c: 4e75         rts        
001e4e: 4e550000     link.w     a5, #$0
001e52: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
001e56: 2440         movea.l    d0, a2
001e58: 2641         movea.l    d1, a3
001e5a: 42aa0010     clr.l      $10(a2)
001e5e: 206a000c     movea.l    $c(a2), a0
001e62: 216a00080008 move.l     $8(a2), $8(a0)
001e68: 206a0008     movea.l    $8(a2), a0
001e6c: 216a000c000c move.l     $c(a2), $c(a0)
001e72: 206a0004     movea.l    $4(a2), a0
001e76: 2092         move.l     (a2), (a0)
001e78: 2052         movea.l    (a2), a0
001e7a: 216a00040004 move.l     $4(a2), $4(a0)
001e80: 256b00080008 move.l     $8(a3), $8(a2)
001e86: 274a0008     move.l     a2, $8(a3)
001e8a: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
001e90: 4e5d         unlk       a5
001e92: 4e75         rts        
001e94: 4e550000     link.w     a5, #$0
001e98: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
001e9c: 2440         movea.l    d0, a2
001e9e: 266a0008     movea.l    $8(a2), a3
001ea2: 200b         move.l     a3, d0
001ea4: 6652         bne.b      $1ef8
001ea6: 266a0004     movea.l    $4(a2), a3
001eaa: 280b         move.l     a3, d4
001eac: 286b0008     movea.l    $8(a3), a4
001eb0: 6018         bra.b      $1eca
001eb2: 536b001c     subq.w     #$1, $1c(a3)
001eb6: 6f16         ble.b      $1ece
001eb8: 2044         movea.l    d4, a0
001eba: 302b001c     move.w     $1c(a3), d0
001ebe: b068001c     cmp.w      $1c(a0), d0
001ec2: 6c02         bge.b      $1ec6
001ec4: 280b         move.l     a3, d4
001ec6: 266b000c     movea.l    $c(a3), a3
001eca: b7cc         cmpa.l     a4, a3
001ecc: 66e4         bne.b      $1eb2
001ece: b7cc         cmpa.l     a4, a3
001ed0: 6602         bne.b      $1ed4
001ed2: 2644         movea.l    d4, a3
001ed4: 206b000c     movea.l    $c(a3), a0
001ed8: 216b00080008 move.l     $8(a3), $8(a0)
001ede: 206b0008     movea.l    $8(a3), a0
001ee2: 216b000c000c move.l     $c(a3), $c(a0)
001ee8: 206b0004     movea.l    $4(a3), a0
001eec: 2093         move.l     (a3), (a0)
001eee: 2053         movea.l    (a3), a0
001ef0: 216b00040004 move.l     $4(a3), $4(a0)
001ef6: 6006         bra.b      $1efe
001ef8: 256b00080008 move.l     $8(a3), $8(a2)
001efe: 200b         move.l     a3, d0
001f00: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
001f06: 4e5d         unlk       a5
001f08: 4e75         rts        
001f0a: 4e550000     link.w     a5, #$0
001f0e: 48e7cff8     movem.l    d0-d1/d4-d7/a0-a4, -(a7)
001f12: 2800         move.l     d0, d4
001f14: 2a01         move.l     d1, d5
001f16: 2c2f0034     move.l     $34(a7), d6
001f1a: 246f003c     movea.l    $3c(a7), a2
001f1e: 4feffff2     lea.l      -$e(a7), a7
001f22: 42af0002     clr.l      $2(a7)
001f26: 206f0046     movea.l    $46(a7), a0
001f2a: 20280048     move.l     $48(a0), d0
001f2e: 2f40000a     move.l     d0, $a(a7)
001f32: 2040         movea.l    d0, a0
001f34: 2e280034     move.l     $34(a0), d7
001f38: 200a         move.l     a2, d0
001f3a: 67000208     beq.w      $2144
001f3e: 4a87         tst.l      d7
001f40: 67000202     beq.w      $2144
001f44: 7002         moveq      #$2, d0
001f46: b085         cmp.l      d5, d0
001f48: 6708         beq.b      $1f52
001f4a: 7004         moveq      #$4, d0
001f4c: b085         cmp.l      d5, d0
001f4e: 660001f4     bne.w      $2144
001f52: 206f000a     movea.l    $a(a7), a0
001f56: 2247         movea.l    d7, a1
001f58: 30290806     move.w     $806(a1), d0
001f5c: b068000e     cmp.w      $e(a0), d0
001f60: 6610         bne.b      $1f72
001f62: 206f0046     movea.l    $46(a7), a0
001f66: 2247         movea.l    d7, a1
001f68: 20290800     move.l     $800(a1), d0
001f6c: b0a800c8     cmp.l      $c8(a0), d0
001f70: 6754         beq.b      $1fc6
001f72: 2047         movea.l    d7, a0
001f74: 4aa80800     tst.l      $800(a0)
001f78: 6716         beq.b      $1f90
001f7a: 4852         pea.l      (a2)
001f7c: 2f05         move.l     d5, -(a7)
001f7e: 2f07         move.l     d7, -(a7)
001f80: 223c7fffffff move.l     #$7fffffff, d1
001f86: 7001         moveq      #$1, d0
001f88: 610001c8     bsr.w      $2152
001f8c: 4fef000c     lea.l      $c(a7), a7
001f90: 206f000a     movea.l    $a(a7), a0
001f94: 2247         movea.l    d7, a1
001f96: 3368000e0806 move.w     $e(a0), $806(a1)
001f9c: 206f0046     movea.l    $46(a7), a0
001fa0: 202800c8     move.l     $c8(a0), d0
001fa4: b0aa0010     cmp.l      $10(a2), d0
001fa8: 6206         bhi.b      $1fb0
001faa: 202800c8     move.l     $c8(a0), d0
001fae: 6002         bra.b      $1fb2
001fb0: 7000         moveq      #$0, d0
001fb2: 2047         movea.l    d7, a0
001fb4: 21400800     move.l     d0, $800(a0)
001fb8: 2047         movea.l    d7, a0
001fba: 4aa80800     tst.l      $800(a0)
001fbe: 6606         bne.b      $1fc6
001fc0: 7000         moveq      #$0, d0
001fc2: 60000180     bra.w      $2144
001fc6: 7004         moveq      #$4, d0
001fc8: b085         cmp.l      d5, d0
001fca: 6632         bne.b      $1ffe
001fcc: 206f0046     movea.l    $46(a7), a0
001fd0: 08280003002a btst.b     #$3, $2a(a0)
001fd6: 670e         beq.b      $1fe6
001fd8: 2047         movea.l    d7, a0
001fda: 52a8083c     addq.l     #$1, $83c(a0)
001fde: 2047         movea.l    d7, a0
001fe0: d9a80840     add.l      d4, $840(a0)
001fe4: 600c         bra.b      $1ff2
001fe6: 2047         movea.l    d7, a0
001fe8: 52a80820     addq.l     #$1, $820(a0)
001fec: 2047         movea.l    d7, a0
001fee: d9a80824     add.l      d4, $824(a0)
001ff2: 7002         moveq      #$2, d0
001ff4: b084         cmp.l      d4, d0
001ff6: 6406         bcc.b      $1ffe
001ff8: 2047         movea.l    d7, a0
001ffa: 52a8082c     addq.l     #$1, $82c(a0)
001ffe: 4a86         tst.l      d6
002000: 6608         bne.b      $200a
002002: 7001         moveq      #$1, d0
002004: b084         cmp.l      d4, d0
002006: 64000130     bcc.w      $2138
00200a: 4aaf004e     tst.l      $4e(a7)
00200e: 66000118     bne.w      $2128
002012: 7002         moveq      #$2, d0
002014: b084         cmp.l      d4, d0
002016: 65000110     bcs.w      $2128
00201a: 206f0046     movea.l    $46(a7), a0
00201e: 08280003002a btst.b     #$3, $2a(a0)
002024: 6704         beq.b      $202a
002026: 7002         moveq      #$2, d0
002028: 6002         bra.b      $202c
00202a: 7000         moveq      #$0, d0
00202c: 3e80         move.w     d0, (a7)
00202e: 42af0006     clr.l      $6(a7)
002032: 600000e8     bra.w      $211c
002036: 4a86         tst.l      d6
002038: 670000d6     beq.w      $2110
00203c: 4852         pea.l      (a2)
00203e: 486f0006     pea.l      $6(a7)
002042: 2207         move.l     d7, d1
002044: 2006         move.l     d6, d0
002046: 6100fb44     bsr.w      $1b8c
00204a: 508f         addq.l     #$8, a7
00204c: 2640         movea.l    d0, a3
00204e: 4a80         tst.l      d0
002050: 673c         beq.b      $208e
002052: b7d2         cmpa.l     (a2), a3
002054: 6720         beq.b      $2076
002056: 206b000c     movea.l    $c(a3), a0
00205a: 216b00080008 move.l     $8(a3), $8(a0)
002060: 206b0008     movea.l    $8(a3), a0
002064: 216b000c000c move.l     $c(a3), $c(a0)
00206a: 2052         movea.l    (a2), a0
00206c: 2228000c     move.l     $c(a0), d1
002070: 200b         move.l     a3, d0
002072: 6100fac8     bsr.w      $1b3c
002076: 2047         movea.l    d7, a0
002078: 7000         moveq      #$0, d0
00207a: 10280805     move.b     $805(a0), d0
00207e: d057         add.w      (a7), d0
002080: d16b001c     add.w      d0, $1c(a3)
002084: 6c5a         bge.b      $20e0
002086: 377c7fff001c move.w     #$7fff, $1c(a3)
00208c: 6052         bra.b      $20e0
00208e: 200a         move.l     a2, d0
002090: 6100fe02     bsr.w      $1e94
002094: 2640         movea.l    d0, a3
002096: 203c000000ff move.l     #$ff, d0
00209c: c086         and.l      d6, d0
00209e: e788         lsl.l      #$3, d0
0020a0: 2047         movea.l    d7, a0
0020a2: 20700800     movea.l    (a0, d0.l), a0
0020a6: 22280004     move.l     $4(a0), d1
0020aa: 200b         move.l     a3, d0
0020ac: 6100faba     bsr.w      $1b68
0020b0: 2052         movea.l    (a2), a0
0020b2: 2228000c     move.l     $c(a0), d1
0020b6: 200b         move.l     a3, d0
0020b8: 6100fa82     bsr.w      $1b3c
0020bc: 2047         movea.l    d7, a0
0020be: 7000         moveq      #$0, d0
0020c0: 10280804     move.b     $804(a0), d0
0020c4: d057         add.w      (a7), d0
0020c6: 3740001c     move.w     d0, $1c(a3)
0020ca: 27460010     move.l     d6, $10(a3)
0020ce: 4a57         tst.w      (a7)
0020d0: 6708         beq.b      $20da
0020d2: 08eb0000001f bset.b     #$0, $1f(a3)
0020d8: 6006         bra.b      $20e0
0020da: 026bfffe001e andi.w     #$fffe, $1e(a3)
0020e0: 2047         movea.l    d7, a0
0020e2: 2f280800     move.l     $800(a0), -(a7)
0020e6: 206f004a     movea.l    $4a(a7), a0
0020ea: 2028000e     move.l     $e(a0), d0
0020ee: d0af000a     add.l      $a(a7), d0
0020f2: 2200         move.l     d0, d1
0020f4: 202b0014     move.l     $14(a3), d0
0020f8: 61000138     bsr.w      $2232
0020fc: 588f         addq.l     #$4, a7
0020fe: 2047         movea.l    d7, a0
002100: 22280800     move.l     $800(a0), d1
002104: 202b0014     move.l     $14(a3), d0
002108: 61000144     bsr.w      $224e
00210c: 27400018     move.l     d0, $18(a3)
002110: 5286         addq.l     #$1, d6
002112: 2047         movea.l    d7, a0
002114: 20280800     move.l     $800(a0), d0
002118: d1af0006     add.l      d0, $6(a7)
00211c: 2004         move.l     d4, d0
00211e: 5384         subq.l     #$1, d4
002120: 4a80         tst.l      d0
002122: 6600ff12     bne.w      $2036
002126: 6010         bra.b      $2138
002128: 4852         pea.l      (a2)
00212a: 2f05         move.l     d5, -(a7)
00212c: 2f07         move.l     d7, -(a7)
00212e: 2204         move.l     d4, d1
002130: 2006         move.l     d6, d0
002132: 611e         bsr.b      $2152
002134: 4fef000c     lea.l      $c(a7), a7
002138: 4aaf004e     tst.l      $4e(a7)
00213c: 6706         beq.b      $2144
00213e: 2047         movea.l    d7, a0
002140: 52a80848     addq.l     #$1, $848(a0)
002144: 4fef000e     lea.l      $e(a7), a7
002148: 4ced1ff0ffdc movem.l    -$24(a5), d4-d7/a0-a4
00214e: 4e5d         unlk       a5
002150: 4e75         rts        
002152: 4e550000     link.w     a5, #$0
002156: 48e7cfb0     movem.l    d0-d1/d4-d7/a0/a2-a3, -(a7)
00215a: 2800         move.l     d0, d4
00215c: 4feffff4     lea.l      -$c(a7), a7
002160: 2004         move.l     d4, d0
002162: d0af0010     add.l      $10(a7), d0
002166: 2a00         move.l     d0, d5
002168: 203c000000ff move.l     #$ff, d0
00216e: d0af0010     add.l      $10(a7), d0
002172: e088         lsr.l      #$8, d0
002174: 2f400004     move.l     d0, $4(a7)
002178: 203c000000ff move.l     #$ff, d0
00217e: c0af0010     and.l      $10(a7), d0
002182: 2e80         move.l     d0, (a7)
002184: 6606         bne.b      $218c
002186: 2ebc00000100 move.l     #$100, (a7)
00218c: 7c00         moveq      #$0, d6
00218e: 0caf000001000010 cmpi.l     #$100, $10(a7)
002196: 6406         bcc.b      $219e
002198: 202f0010     move.l     $10(a7), d0
00219c: 6006         bra.b      $21a4
00219e: 203c00000100 move.l     #$100, d0
0021a4: 2e00         move.l     d0, d7
0021a6: 60000076     bra.w      $221e
0021aa: 2004         move.l     d4, d0
0021ac: d086         add.l      d6, d0
0021ae: 0280000000ff andi.l     #$ff, d0
0021b4: e788         lsl.l      #$3, d0
0021b6: 206f0038     movea.l    $38(a7), a0
0021ba: 24700800     movea.l    (a0, d0.l), a2
0021be: bc97         cmp.l      (a7), d6
0021c0: 6604         bne.b      $21c6
0021c2: 53af0004     subq.l     #$1, $4(a7)
0021c6: 42af0008     clr.l      $8(a7)
0021ca: 266a0004     movea.l    $4(a2), a3
0021ce: 6026         bra.b      $21f6
0021d0: b8aa0010     cmp.l      $10(a2), d4
0021d4: 621e         bhi.b      $21f4
0021d6: baaa0010     cmp.l      $10(a2), d5
0021da: 6318         bls.b      $21f4
0021dc: 222f0040     move.l     $40(a7), d1
0021e0: 200a         move.l     a2, d0
0021e2: 6100fc6a     bsr.w      $1e4e
0021e6: 52af0008     addq.l     #$1, $8(a7)
0021ea: 202f0004     move.l     $4(a7), d0
0021ee: b0af0008     cmp.l      $8(a7), d0
0021f2: 6306         bls.b      $21fa
0021f4: 2452         movea.l    (a2), a2
0021f6: b5cb         cmpa.l     a3, a2
0021f8: 66d6         bne.b      $21d0
0021fa: 7002         moveq      #$2, d0
0021fc: b0af003c     cmp.l      $3c(a7), d0
002200: 660e         bne.b      $2210
002202: 202f0008     move.l     $8(a7), d0
002206: 206f0038     movea.l    $38(a7), a0
00220a: d1a80814     add.l      d0, $814(a0)
00220e: 600c         bra.b      $221c
002210: 202f0008     move.l     $8(a7), d0
002214: 206f0038     movea.l    $38(a7), a0
002218: d1a80828     add.l      d0, $828(a0)
00221c: 5286         addq.l     #$1, d6
00221e: bc87         cmp.l      d7, d6
002220: 6500ff88     bcs.w      $21aa
002224: 4fef000c     lea.l      $c(a7), a7
002228: 4ced0df0ffe4 movem.l    -$1c(a5), d4-d7/a0/a2-a3
00222e: 4e5d         unlk       a5
002230: 4e75         rts        
002232: 48e700c0     movem.l    a0-a1, -(a7)
002236: 2040         movea.l    d0, a0
002238: 2241         movea.l    d1, a1
00223a: 202f000c     move.l     $c(a7), d0
00223e: e488         lsr.l      #$2, d0
002240: 6002         bra.b      $2244
002242: 20d9         move.l     (a1)+, (a0)+
002244: 51c8fffc     dbra       d0, $2242
002248: 4cdf0300     movem.l    (a7)+, a0-a1
00224c: 4e75         rts        
00224e: 48e77c80     movem.l    d1-d5/a0, -(a7)
002252: 2040         movea.l    d0, a0
002254: 2601         move.l     d1, d3
002256: 223c00ffffff move.l     #$ffffff, d1
00225c: e48b         lsr.l      #$2, d3
00225e: 6128         bsr.b      $2288
002260: 2001         move.l     d1, d0
002262: 4cdf013e     movem.l    (a7)+, d1-d5/a0
002266: 4e75         rts        
002268: 96696996     sub.w      $6996(a1), d3
00226c: 6996         bvs.b      $2204
00226e: 96696996     sub.w      $6996(a1), d3
002272: 96699669     sub.w      -$6997(a1), d3
002276: 6996         bvs.b      $220e
002278: 6996         bvs.b      $2210
00227a: 96699669     sub.w      -$6997(a1), d3
00227e: 6996         bvs.b      $2216
002280: 96696996     sub.w      $6996(a1), d3
002284: 6996         bvs.b      $221c
002286: 96692a3c     sub.w      $2a3c(a1), d3
00228a: 00800021604e ori.l      #$21604e, d0
002290: e189         lsl.l      #$8, d1
002292: 2018         move.l     (a0)+, d0
002294: b181         eor.l      d0, d1
002296: 2001         move.l     d1, d0
002298: 3401         move.w     d1, d2
00229a: 4840         swap       d0
00229c: 2801         move.l     d1, d4
00229e: ed89         lsl.l      #$6, d1
0022a0: c07cffc3     and.w      #$ffc3, d0
0022a4: b142         eor.w      d0, d2
0022a6: 1002         move.b     d2, d0
0022a8: e04a         lsr.w      #$8, d2
0022aa: b102         eor.b      d0, d2
0022ac: 3002         move.w     d2, d0
0022ae: e608         lsr.b      #$3, d0
0022b0: 053b00b6     btst.l     d2, $2268(pc, d0.w)
0022b4: 6702         beq.b      $22b8
0022b6: bb81         eor.l      d5, d1
0022b8: 2004         move.l     d4, d0
0022ba: 4240         clr.w      d0
0022bc: 4840         swap       d0
0022be: 3400         move.w     d0, d2
0022c0: 020000fc     andi.b     #$fc, d0
0022c4: e988         lsl.l      #$4, d0
0022c6: b181         eor.l      d0, d1
0022c8: e24a         lsr.w      #$1, d2
0022ca: 1002         move.b     d2, d0
0022cc: 0200001e     andi.b     #$1e, d0
0022d0: b101         eor.b      d0, d1
0022d2: ea4a         lsr.w      #$5, d2
0022d4: b541         eor.w      d2, d1
0022d6: d884         add.l      d4, d4
0022d8: 08840017     bclr.b     #$17, d4
0022dc: b981         eor.l      d4, d1
0022de: 51cbffb0     dbra       d3, $2290
0022e2: 5243         addq.w     #$1, d3
0022e4: 5383         subq.l     #$1, d3
0022e6: 64a8         bcc.b      $2290
0022e8: 028100ffffff andi.l     #$ffffff, d1
0022ee: 4e75         rts        
0022f0: 7262         moveq      #$62, d1
0022f2: 66000081     bne.w      $2375
0022f6: 5833         addq.b     #$4, -$56(a3, a2.l)
