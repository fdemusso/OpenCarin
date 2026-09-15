000060: 001a0038     ori.b      #$38, (a2)+
000064: 001a04f0     ori.b      #$f0, (a2)+
000068: 001a054e     ori.b      #$4e, (a2)+
00006c: 061c001a     addi.b     #$1a, (a4)+
000070: 05b8001a     bclr.b     d2, $1a.w
000074: 08dc         .dc.w      $08dc
000076: 0a3804d0323c eori.b     #$d0, $323c.w
00007c: 00cb         .dc.w      $00cb
00007e: 003c0001     ori.b      #$1, ccr
000082: 4e75         rts        
000084: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
000088: 226e03a4     movea.l    $3a4(a6), a1
00008c: 226900e0     movea.l    $e0(a1), a1
000090: 4e91         jsr        (a1)
000092: 4cdf0707     movem.l    (a7)+, d0-d2/a0-a2
000096: 4e75         rts        
000098: 4a290081     tst.b      $81(a1)
00009c: 66000138     bne.w      $1d6
0000a0: 610002a6     bsr.w      $348
0000a4: 6500012e     bcs.w      $1d4
0000a8: 237cffffffff008e move.l     #$ffffffff, $8e(a1)
0000b0: 2f09         move.l     a1, -(a7)
0000b2: 206d0020     movea.l    $20(a5), a0
0000b6: 4e40         trap       #$0
0000b8: 00102049     ori.b      #$49, (a0)
0000bc: 225f         movea.l    (a7)+, a1
0000be: 0c000040     cmpi.b     #$40, d0
0000c2: 662e         bne.b      $f2
0000c4: 2b480020     move.l     a0, $20(a5)
0000c8: 137c00400092 move.b     #$40, $92(a1)
0000ce: 7000         moveq      #$0, d0
0000d0: 2340002c     move.l     d0, $2c(a1)
0000d4: 2340002a     move.l     d0, $2a(a1)
0000d8: 23400030     move.l     d0, $30(a1)
0000dc: 13400068     move.b     d0, $68(a1)
0000e0: 33400034     move.w     d0, $34(a1)
0000e4: 203c2756cd00 move.l     #$2756cd00, d0
0000ea: 23400036     move.l     d0, $36(a1)
0000ee: 600000c0     bra.w      $1b0
0000f2: 61000296     bsr.w      $38a
0000f6: 650000d4     bcs.w      $1cc
0000fa: 206d0020     movea.l    $20(a5), a0
0000fe: 7000         moveq      #$0, d0
000100: 10290002     move.b     $2(a1), d0
000104: 61000bbc     bsr.w      $cc2
000108: 6440         bcc.b      $14a
00010a: b27c00d8     cmp.w      #$d8, d1
00010e: 660000bc     bne.w      $1cc
000112: 4a00         tst.b      d0
000114: 6708         beq.b      $11e
000116: 0c00000d     cmpi.b     #$d, d0
00011a: 660000b0     bne.w      $1cc
00011e: 082900070002 btst.b     #$7, $2(a1)
000124: 660000a6     bne.w      $1cc
000128: 334200b4     move.w     d2, $b4(a1)
00012c: 334500b2     move.w     d5, $b2(a1)
000130: 2b480020     move.l     a0, $20(a5)
000134: 41e90092     lea.l      $92(a1), a0
000138: 6100013e     bsr.w      $278
00013c: 6500008e     bcs.w      $1cc
000140: 237c00000000002a move.l     #$0, $2a(a1)
000148: 6024         bra.b      $16e
00014a: 334200b4     move.w     d2, $b4(a1)
00014e: 334500b2     move.w     d5, $b2(a1)
000152: 2b480020     move.l     a0, $20(a5)
000156: 082900070002 btst.b     #$7, $2(a1)
00015c: 676a         beq.b      $1c8
00015e: 6100010a     bsr.w      $26a
000162: 6568         bcs.b      $1cc
000164: 7800         moveq      #$0, d4
000166: 237c00000800002a move.l     #$800, $2a(a1)
00016e: 6100008e     bsr.w      $1fe
000172: 6558         bcs.b      $1cc
000174: 237c00000000002c move.l     #$0, $2c(a1)
00017c: 2368000e0036 move.l     $e(a0), $36(a1)
000182: e18a         lsl.l      #$8, d2
000184: e78a         lsl.l      #$3, d2
000186: d484         add.l      d4, d2
000188: 2342003a     move.l     d2, $3a(a1)
00018c: 24280006     move.l     $6(a0), d2
000190: 10290085     move.b     $85(a1), d0
000194: e1aa         lsl.l      d0, d2
000196: 23420030     move.l     d2, $30(a1)
00019a: 7000         moveq      #$0, d0
00019c: 10280020     move.b     $20(a0), d0
0001a0: 08c00000     bset.b     #$0, d0
0001a4: 137008290068 move.b     $29(a0, d0.l), $68(a1)
0001aa: 3368001a0034 move.w     $1a(a0), $34(a1)
0001b0: 303c002a     move.w     #$2a, d0
0001b4: 7208         moveq      #$8, d1
0001b6: 6100070e     bsr.w      $8c6
0001ba: 6418         bcc.b      $1d4
0001bc: b27c00d0     cmp.w      #$d0, d1
0001c0: 660e         bne.b      $1d0
0001c2: 023c         .dc.w      $023c
0001c4: fffe         dc.w       $fffe
0001c6: 4e75         rts        
0001c8: 323c00d6     move.w     #$d6, d1
0001cc: 6100011e     bsr.w      $2ec
0001d0: 003c0001     ori.b      #$1, ccr
0001d4: 4e75         rts        
0001d6: 206d0020     movea.l    $20(a5), a0
0001da: 2f09         move.l     a1, -(a7)
0001dc: 4e40         trap       #$0
0001de: 0010225f     ori.b      #$5f, (a0)
0001e2: 6518         bcs.b      $1fc
0001e4: 0c00002f     cmpi.b     #$2f, d0
0001e8: 660a         bne.b      $1f4
0001ea: 323c00eb     move.w     #$eb, d1
0001ee: 003c0001     ori.b      #$1, ccr
0001f2: 4e75         rts        
0001f4: 2b480020     move.l     a0, $20(a5)
0001f8: 023c         .dc.w      $023c
0001fa: fffe         dc.w       $fffe
0001fc: 4e75         rts        
0001fe: 48e70020     movem.l    a2, -(a7)
000202: 2469005e     movea.l    $5e(a1), a2
000206: 4a2a0026     tst.b      $26(a2)
00020a: 4cdf0400     movem.l    (a7)+, a2
00020e: 6706         beq.b      $216
000210: 023c         .dc.w      $023c
000212: fffe         dc.w       $fffe
000214: 4e75         rts        
000216: 48e70080     movem.l    a0, -(a7)
00021a: 10280020     move.b     $20(a0), d0
00021e: 08c00000     bset.b     #$0, d0
000222: 41f00821     lea.l      $21(a0, d0.l), a0
000226: 32280004     move.w     $4(a0), d1
00022a: 202c0014     move.l     $14(a4), d0
00022e: 6718         beq.b      $248
000230: b0680002     cmp.w      $2(a0), d0
000234: 6712         beq.b      $248
000236: 4840         swap       d0
000238: 4a40         tst.w      d0
00023a: 670c         beq.b      $248
00023c: b0680000     cmp.w      $0(a0), d0
000240: 6604         bne.b      $246
000242: e881         asr.l      #$4, d1
000244: 6002         bra.b      $248
000246: e081         asr.l      #$8, d1
000248: 10290002     move.b     $2(a1), d0
00024c: c200         and.b      d0, d1
00024e: b101         eor.b      d0, d1
000250: 02010007     andi.b     #$7, d1
000254: 670a         beq.b      $260
000256: 323c00d6     move.w     #$d6, d1
00025a: 003c0001     ori.b      #$1, ccr
00025e: 6004         bra.b      $264
000260: 023c         .dc.w      $023c
000262: fffe         dc.w       $fffe
000264: 4cdf0100     movem.l    (a7)+, a0
000268: 4e75         rts        
00026a: 24322802     move.l     $2(a2, d2.l), d2
00026e: 10290085     move.b     $85(a1), d0
000272: e1aa         lsl.l      d0, d2
000274: 600004b6     bra.w      $72c
000278: 61f0         bsr.b      $26a
00027a: 6564         bcs.b      $2e0
00027c: 2a28000e     move.l     $e(a0), d5
000280: 7000         moveq      #$0, d0
000282: 1010         move.b     (a0), d0
000284: 2800         move.l     d0, d4
000286: 41f00800     lea.l      (a0, d0.l), a0
00028a: 1010         move.b     (a0), d0
00028c: d840         add.w      d0, d4
00028e: 41f00800     lea.l      (a0, d0.l), a0
000292: 6014         bra.b      $2a8
000294: 5282         addq.l     #$1, d2
000296: 61000494     bsr.w      $72c
00029a: 6544         bcs.b      $2e0
00029c: 9abc00000800 sub.l      #$800, d5
0002a2: 633e         bls.b      $2e2
0002a4: 7800         moveq      #$0, d4
0002a6: 600c         bra.b      $2b4
0002a8: ba84         cmp.l      d4, d5
0002aa: 6336         bls.b      $2e2
0002ac: 2604         move.l     d4, d3
0002ae: 024307ff     andi.w     #$7ff, d3
0002b2: 67e0         beq.b      $294
0002b4: 1010         move.b     (a0), d0
0002b6: 67dc         beq.b      $294
0002b8: d840         add.w      d0, d4
0002ba: 47e80021     lea.l      $21(a0), a3
0002be: 7600         moveq      #$0, d3
0002c0: 16280020     move.b     $20(a0), d3
0002c4: 41f00800     lea.l      (a0, d0.l), a0
0002c8: b607         cmp.b      d7, d3
0002ca: 66dc         bne.b      $2a8
0002cc: 45e90092     lea.l      $92(a1), a2
0002d0: 5303         subq.b     #$1, d3
0002d2: b70a         cmpm.b     (a2)+, (a3)+
0002d4: 56cbfffc     dbne       d3, $2d2
0002d8: 66ce         bne.b      $2a8
0002da: 91c0         suba.l     d0, a0
0002dc: 9880         sub.l      d0, d4
0002de: 7200         moveq      #$0, d1
0002e0: 4e75         rts        
0002e2: 323c00d8     move.w     #$d8, d1
0002e6: 003c0001     ori.b      #$1, ccr
0002ea: 4e75         rts        
0002ec: 6132         bsr.b      $320
0002ee: 6102         bsr.b      $2f2
0002f0: 4e75         rts        
0002f2: 48e74020     movem.l    d1/a2, -(a7)
0002f6: 203c000000b6 move.l     #$b6, d0
0002fc: 24690052     movea.l    $52(a1), a2
000300: b5fc00000000 cmpa.l     #$0, a2
000306: 6704         beq.b      $30c
000308: 4e40         trap       #$0
00030a: 002972002341 ori.b      #$0, $2341(a1)
000310: 00522341     ori.w      #$2341, (a2)
000314: 00562341     ori.w      #$2341, (a6)
000318: 005a4cdf     ori.w      #$4cdf, (a2)+
00031c: 04024e75     subi.b     #$75, d2
000320: 48e74020     movem.l    d1/a2, -(a7)
000324: 203c00000800 move.l     #$800, d0
00032a: 2469000e     movea.l    $e(a1), a2
00032e: b5fc00000000 cmpa.l     #$0, a2
000334: 6704         beq.b      $33a
000336: 4e40         trap       #$0
000338: 0029237c0000 ori.b      #$7c, $0(a1)
00033e: 0000000e     ori.b      #$e, d0
000342: 4cdf0402     movem.l    (a7)+, d1/a2
000346: 4e75         rts        
000348: 203c00000800 move.l     #$800, d0
00034e: 7200         moveq      #$0, d1
000350: 4e40         trap       #$0
000352: 00286532234a ori.b      #$32, $234a(a0)
000358: 000e         .dc.w      $000e
00035a: 203c000000b6 move.l     #$b6, d0
000360: 7200         moveq      #$0, d1
000362: 4e40         trap       #$0
000364: 0028640861b6 ori.b      #$8, $61b6(a0)
00036a: 003c0001     ori.b      #$1, ccr
00036e: 4e75         rts        
000370: 234a0052     move.l     a2, $52(a1)
000374: d5fc0000001a adda.l     #$1a, a2
00037a: 234a0056     move.l     a2, $56(a1)
00037e: d5fc0000001c adda.l     #$1c, a2
000384: 234a005a     move.l     a2, $5a(a1)
000388: 4e75         rts        
00038a: 26690004     movea.l    $4(a1), a3
00038e: 6100055a     bsr.w      $8ea
000392: 2669005e     movea.l    $5e(a1), a3
000396: 4a2b0027     tst.b      $27(a3)
00039a: 66000134     bne.w      $4d0
00039e: 222b0008     move.l     $8(a3), d1
0003a2: 6704         beq.b      $3a8
0003a4: 6100013c     bsr.w      $4e2
0003a8: 24690004     movea.l    $4(a1), a2
0003ac: 246a0008     movea.l    $8(a2), a2
0003b0: 7200         moveq      #$0, d1
0003b2: 322a003c     move.w     $3c(a2), d1
0003b6: d5c1         adda.l     d1, a2
0003b8: 243c00000010 move.l     #$10, d2
0003be: 7200         moveq      #$0, d1
0003c0: 33410034     move.w     d1, $34(a1)
0003c4: 2069000e     movea.l    $e(a1), a0
0003c8: 7601         moveq      #$1, d3
0003ca: 61000392     bsr.w      $75e
0003ce: 65000110     bcs.w      $4e0
0003d2: 4a280000     tst.b      $0(a0)
0003d6: 6768         beq.b      $440
0003d8: 0c2800ff0000 cmpi.b     #$ff, $0(a0)
0003de: 661c         bne.b      $3fc
0003e0: 243c00000010 move.l     #$10, d2
0003e6: 7200         moveq      #$0, d1
0003e8: 33410034     move.w     d1, $34(a1)
0003ec: 2069000e     movea.l    $e(a1), a0
0003f0: 7601         moveq      #$1, d3
0003f2: 6100036a     bsr.w      $75e
0003f6: 650000e8     bcs.w      $4e0
0003fa: 604a         bra.b      $446
0003fc: 0c2800010000 cmpi.b     #$1, $0(a0)
000402: 6712         beq.b      $416
000404: 0c2800020000 cmpi.b     #$2, $0(a0)
00040a: 670a         beq.b      $416
00040c: 223c000000f9 move.l     #$f9, d1
000412: 600000ce     bra.w      $4e2
000416: 48e7f030     movem.l    d0-d3/a2-a3, -(a7)
00041a: 47e80058     lea.l      $58(a0), a3
00041e: 303c001f     move.w     #$1f, d0
000422: 121a         move.b     (a2)+, d1
000424: 141b         move.b     (a3)+, d2
000426: 6606         bne.b      $42e
000428: 4a01         tst.b      d1
00042a: 6610         bne.b      $43c
00042c: 6008         bra.b      $436
00042e: b401         cmp.b      d1, d2
000430: 660a         bne.b      $43c
000432: 51c8ffee     dbra       d0, $422
000436: 4cdf0c0f     movem.l    (a7)+, d0-d3/a2-a3
00043a: 600a         bra.b      $446
00043c: 4cdf0c0f     movem.l    (a7)+, d0-d3/a2-a3
000440: 5282         addq.l     #$1, d2
000442: 6000ff7a     bra.w      $3be
000446: 14280004     move.b     $4(a0), d2
00044a: 0c020049     cmpi.b     #$49, d2
00044e: 6708         beq.b      $458
000450: 177c00010026 move.b     #$1, $26(a3)
000456: 6006         bra.b      $45e
000458: 177c00000026 move.b     #$0, $26(a3)
00045e: 276800540016 move.l     $54(a0), $16(a3)
000464: 24280094     move.l     $94(a0), d2
000468: 610000a2     bsr.w      $50c
00046c: 6b04         bmi.b      $472
00046e: e0aa         lsr.l      d0, d2
000470: 6002         bra.b      $474
000472: e1aa         lsl.l      d0, d2
000474: 20280088     move.l     $88(a0), d0
000478: 27400004     move.l     d0, $4(a3)
00047c: 2600         move.l     d0, d3
00047e: 7200         moveq      #$0, d1
000480: 4e40         trap       #$0
000482: 0028655a2f0a ori.b      #$5a, $2f0a(a0)
000488: 0283fffff800 andi.l     #$fffff800, d3
00048e: 2203         move.l     d3, d1
000490: 6710         beq.b      $4a2
000492: e08b         lsr.l      #$8, d3
000494: e68b         lsr.l      #$3, d3
000496: c548         exg.l      a2, a0
000498: 610002c4     bsr.w      $75e
00049c: 6544         bcs.b      $4e2
00049e: d483         add.l      d3, d2
0004a0: c548         exg.l      a2, a0
0004a2: 7601         moveq      #$1, d3
0004a4: 377cffff0012 move.w     #$ffff, $12(a3)
0004aa: 610002b2     bsr.w      $75e
0004ae: 6532         bcs.b      $4e2
0004b0: 377c00000012 move.w     #$0, $12(a3)
0004b6: d5c1         adda.l     d1, a2
0004b8: 242b0004     move.l     $4(a3), d2
0004bc: 0282000007ff andi.l     #$7ff, d2
0004c2: 6100fbc0     bsr.w      $84
0004c6: 275f0008     move.l     (a7)+, $8(a3)
0004ca: 177c00ff0027 move.b     #$ff, $27(a3)
0004d0: 246b0008     movea.l    $8(a3), a2
0004d4: 222b0004     move.l     $4(a3), d1
0004d8: 102b0024     move.b     $24(a3), d0
0004dc: 1340002a     move.b     d0, $2a(a1)
0004e0: 4e75         rts        
0004e2: 3f01         move.w     d1, -(a7)
0004e4: 422b0027     clr.b      $27(a3)
0004e8: 246b0008     movea.l    $8(a3), a2
0004ec: 202b0004     move.l     $4(a3), d0
0004f0: 277c000000000008 move.l     #$0, $8(a3)
0004f8: 277c000000000004 move.l     #$0, $4(a3)
000500: 4e40         trap       #$0
000502: 0029321f003c ori.b      #$1f, $3c(a1)
000508: 00014e75     ori.b      #$75, d1
00050c: 36280082     move.w     $82(a0), d3
000510: 203c00000800 move.l     #$800, d0
000516: b640         cmp.w      d0, d3
000518: 630c         bls.b      $526
00051a: e18b         lsl.l      #$8, d3
00051c: e78b         lsl.l      #$3, d3
00051e: 1003         move.b     d3, d0
000520: 00000050     ori.b      #$50, d0
000524: 6004         bra.b      $52a
000526: 80c3         divu.w     d3, d0
000528: 5340         subq.w     #$1, d0
00052a: 17400024     move.b     d0, $24(a3)
00052e: 4e75         rts        
000530: 4a290003     tst.b      $3(a1)
000534: 6618         bne.b      $54e
000536: 4a290081     tst.b      $81(a1)
00053a: 6604         bne.b      $540
00053c: 61000298     bsr.w      $7d6
000540: 303c002b     move.w     #$2b, d0
000544: 7208         moveq      #$8, d1
000546: 6100037e     bsr.w      $8c6
00054a: 6100fda0     bsr.w      $2ec
00054e: 4e75         rts        
000550: 4a290081     tst.b      $81(a1)
000554: 6600fb24     bne.w      $7a
000558: 6100fdee     bsr.w      $348
00055c: 654e         bcs.b      $5ac
00055e: 237cffffffff008e move.l     #$ffffffff, $8e(a1)
000566: 6100fe22     bsr.w      $38a
00056a: 6538         bcs.b      $5a4
00056c: 206d0020     movea.l    $20(a5), a0
000570: 7000         moveq      #$0, d0
000572: 10290002     move.b     $2(a1), d0
000576: 6100074a     bsr.w      $cc2
00057a: 6528         bcs.b      $5a4
00057c: 10290002     move.b     $2(a1), d0
000580: 1200         move.b     d0, d1
000582: c03c0003     and.b      #$3, d0
000586: 6708         beq.b      $590
000588: 2942014c     move.l     d2, $14c(a4)
00058c: 39450150     move.w     d5, $150(a4)
000590: 02010004     andi.b     #$4, d1
000594: 6708         beq.b      $59e
000596: 2942015c     move.l     d2, $15c(a4)
00059a: 39450160     move.w     d5, $160(a4)
00059e: 6100fd4c     bsr.w      $2ec
0005a2: 4e75         rts        
0005a4: 6100fd46     bsr.w      $2ec
0005a8: 003c0001     ori.b      #$1, ccr
0005ac: 4e75         rts        
0005ae: 4a290081     tst.b      $81(a1)
0005b2: 6600fac6     bne.w      $7a
0005b6: 262d0004     move.l     $4(a5), d3
0005ba: 2203         move.l     d3, d1
0005bc: 3429002a     move.w     $2a(a1), d2
0005c0: 6724         beq.b      $5e6
0005c2: 2029002c     move.l     $2c(a1), d0
0005c6: 0280fffff800 andi.l     #$fffff800, d0
0005cc: 9280         sub.l      d0, d1
0005ce: 6510         bcs.b      $5e0
0005d0: 92bc00000800 sub.l      #$800, d1
0005d6: 6408         bcc.b      $5e0
0005d8: 4441         neg.w      d1
0005da: 3341002a     move.w     d1, $2a(a1)
0005de: 6006         bra.b      $5e6
0005e0: 337c0000002a move.w     #$0, $2a(a1)
0005e6: 2343002c     move.l     d3, $2c(a1)
0005ea: 4e75         rts        
0005ec: 4a690034     tst.w      $34(a1)
0005f0: 6724         beq.b      $616
0005f2: 48e7c000     movem.l    d0-d1, -(a7)
0005f6: 7000         moveq      #$0, d0
0005f8: 10290034     move.b     $34(a1), d0
0005fc: 84c0         divu.w     d0, d2
0005fe: 2202         move.l     d2, d1
000600: 02820000ffff andi.l     #$ffff, d2
000606: d0290035     add.b      $35(a1), d0
00060a: c4c0         mulu.w     d0, d2
00060c: 4241         clr.w      d1
00060e: 4841         swap       d1
000610: d481         add.l      d1, d2
000612: 4cdf0003     movem.l    (a7)+, d0-d1
000616: 4e75         rts        
000618: 4a290081     tst.b      $81(a1)
00061c: 6600fa5c     bne.w      $7a
000620: 610002fa     bsr.w      $91c
000624: 6354         bls.b      $67a
000626: 7400         moveq      #$0, d2
000628: 780d         moveq      #$d, d4
00062a: 2069000e     movea.l    $e(a1), a0
00062e: 246d0020     movea.l    $20(a5), a2
000632: 3429002a     move.w     $2a(a1), d2
000636: 672e         beq.b      $666
000638: d1fc00000800 adda.l     #$800, a0
00063e: 91c2         suba.l     d2, a0
000640: b481         cmp.l      d1, d2
000642: 6302         bls.b      $646
000644: 2401         move.l     d1, d2
000646: 9282         sub.l      d2, d1
000648: 9569002a     sub.w      d2, $2a(a1)
00064c: d5a9002c     add.l      d2, $2c(a1)
000650: 5382         subq.l     #$1, d2
000652: 1018         move.b     (a0)+, d0
000654: 14c0         move.b     d0, (a2)+
000656: b004         cmp.b      d4, d0
000658: 57cafff8     dbeq       d2, $652
00065c: 670c         beq.b      $66a
00065e: 4a81         tst.l      d1
000660: 6710         beq.b      $672
000662: 2069000e     movea.l    $e(a1), a0
000666: 617a         bsr.b      $6e2
000668: 64ce         bcc.b      $638
00066a: d569002a     add.w      d2, $2a(a1)
00066e: 95a9002c     sub.l      d2, $2c(a1)
000672: 95ed0020     suba.l     $20(a5), a2
000676: 2b4a0004     move.l     a2, $4(a5)
00067a: 4e75         rts        
00067c: 4a290081     tst.b      $81(a1)
000680: 6600f9f8     bne.w      $7a
000684: 61000296     bsr.w      $91c
000688: 6356         bls.b      $6e0
00068a: 2b410004     move.l     d1, $4(a5)
00068e: 7400         moveq      #$0, d2
000690: 2469000e     movea.l    $e(a1), a2
000694: 206d0020     movea.l    $20(a5), a0
000698: 3429002a     move.w     $2a(a1), d2
00069c: 671c         beq.b      $6ba
00069e: d5fc00000800 adda.l     #$800, a2
0006a4: 95c2         suba.l     d2, a2
0006a6: b481         cmp.l      d1, d2
0006a8: 6302         bls.b      $6ac
0006aa: 2401         move.l     d1, d2
0006ac: 6152         bsr.b      $700
0006ae: 9569002a     sub.w      d2, $2a(a1)
0006b2: d5a9002c     add.l      d2, $2c(a1)
0006b6: 4a81         tst.l      d1
0006b8: 6726         beq.b      $6e0
0006ba: 2629002c     move.l     $2c(a1), d3
0006be: 0283000007ff andi.l     #$7ff, d3
0006c4: 6610         bne.b      $6d6
0006c6: 0c8100000800 cmpi.l     #$800, d1
0006cc: 6508         bcs.b      $6d6
0006ce: 6142         bsr.b      $712
0006d0: 650e         bcs.b      $6e0
0006d2: 4a81         tst.l      d1
0006d4: 670a         beq.b      $6e0
0006d6: c14a         exg.l      a0, a2
0006d8: 6108         bsr.b      $6e2
0006da: 6504         bcs.b      $6e0
0006dc: c14a         exg.l      a0, a2
0006de: 60be         bra.b      $69e
0006e0: 4e75         rts        
0006e2: 7601         moveq      #$1, d3
0006e4: 6152         bsr.b      $738
0006e6: 6516         bcs.b      $6fe
0006e8: 2429002c     move.l     $2c(a1), d2
0006ec: 0282000007ff andi.l     #$7ff, d2
0006f2: 94bc00000800 sub.l      #$800, d2
0006f8: 4482         neg.l      d2
0006fa: 3342002a     move.w     d2, $2a(a1)
0006fe: 4e75         rts        
000700: c14a         exg.l      a0, a2
000702: 6100f980     bsr.w      $84
000706: 2069000e     movea.l    $e(a1), a0
00070a: c14a         exg.l      a0, a2
00070c: d1c2         adda.l     d2, a0
00070e: 9282         sub.l      d2, d1
000710: 4e75         rts        
000712: 2601         move.l     d1, d3
000714: e08b         lsr.l      #$8, d3
000716: e68b         lsr.l      #$3, d3
000718: 611e         bsr.b      $738
00071a: 650e         bcs.b      $72a
00071c: e18b         lsl.l      #$8, d3
00071e: e78b         lsl.l      #$3, d3
000720: d7a9002c     add.l      d3, $2c(a1)
000724: 9283         sub.l      d3, d1
000726: 6702         beq.b      $72a
000728: d1c3         adda.l     d3, a0
00072a: 4e75         rts        
00072c: 2069000e     movea.l    $e(a1), a0
000730: 263c00000001 move.l     #$1, d3
000736: 6026         bra.b      $75e
000738: 4aa9004c     tst.l      $4c(a1)
00073c: 670a         beq.b      $748
00073e: 323c00fa     move.w     #$fa, d1
000742: 003c0001     ori.b      #$1, ccr
000746: 4e75         rts        
000748: 08a900000069 bclr.b     #$0, $69(a1)
00074e: 2429002c     move.l     $2c(a1), d2
000752: e08a         lsr.l      #$8, d2
000754: e68a         lsr.l      #$3, d2
000756: 6100fe94     bsr.w      $5ec
00075a: d4a90030     add.l      $30(a1), d2
00075e: 48e78020     movem.l    d0/a2, -(a7)
000762: 48e74000     movem.l    d1, -(a7)
000766: 610001a4     bsr.w      $90c
00076a: 223c00000002 move.l     #$2, d1
000770: 61000154     bsr.w      $8c6
000774: 65000048     bcs.w      $7be
000778: 6000004e     bra.w      $7c8
00077c: 6100069a     bsr.w      $e18
000780: 6100070e     bsr.w      $e90
000784: 65000038     bcs.w      $7be
000788: 24690004     movea.l    $4(a1), a2
00078c: 246a0004     movea.l    $4(a2), a2
000790: 720e         moveq      #$e, d1
000792: 61000132     bsr.w      $8c6
000796: 65000026     bcs.w      $7be
00079a: 6100009c     bsr.w      $838
00079e: 6510         bcs.b      $7b0
0007a0: 24690056     movea.l    $56(a1), a2
0007a4: 082a00000000 btst.b     #$0, $0(a2)
0007aa: 671c         beq.b      $7c8
0007ac: 6128         bsr.b      $7d6
0007ae: 6018         bra.b      $7c8
0007b0: 0c410003     cmpi.w     #$3, d1
0007b4: 6706         beq.b      $7bc
0007b6: 0c410002     cmpi.w     #$2, d1
0007ba: 6602         bne.b      $7be
0007bc: 6118         bsr.b      $7d6
0007be: 588f         addq.l     #$4, a7
0007c0: 003c0001     ori.b      #$1, ccr
0007c4: 6000000a     bra.w      $7d0
0007c8: 023c         .dc.w      $023c
0007ca: fffe         dc.w       $fffe
0007cc: 4cdf0002     movem.l    (a7)+, d1
0007d0: 4cdf0401     movem.l    (a7)+, d0/a2
0007d4: 4e75         rts        
0007d6: 61000134     bsr.w      $90c
0007da: b3ea000e     cmpa.l     $e(a2), a1
0007de: 6628         bne.b      $808
0007e0: 303c0031     move.w     #$31, d0
0007e4: 7208         moveq      #$8, d1
0007e6: 610000de     bsr.w      $8c6
0007ea: 6408         bcc.b      $7f4
0007ec: 0c810000060a cmpi.l     #$60a, d1
0007f2: 660e         bne.b      $802
0007f4: 2029004c     move.l     $4c(a1), d0
0007f8: 6704         beq.b      $7fe
0007fa: 61000096     bsr.w      $892
0007fe: 4a04         tst.b      d4
000800: 6704         beq.b      $806
000802: 007c0001     ori.w      #$1, sr
000806: 4e75         rts        
000808: 40e7         move.w     sr, -(a7)
00080a: 007c0700     ori.w      #$700, sr
00080e: 20290042     move.l     $42(a1), d0
000812: 6714         beq.b      $828
000814: 2440         movea.l    d0, a2
000816: 2029003e     move.l     $3e(a1), d0
00081a: 2540003e     move.l     d0, $3e(a2)
00081e: 6708         beq.b      $828
000820: c18a         exg.l      d0, a2
000822: 256900420042 move.l     $42(a1), $42(a2)
000828: 42a9003e     clr.l      $3e(a1)
00082c: 42a90042     clr.l      $42(a1)
000830: 46df         move.w     (a7)+, sr
000832: 027cfffe     andi.w     #$fffe, sr
000836: 4e75         rts        
000838: 7000         moveq      #$0, d0
00083a: 4e40         trap       #$0
00083c: 000a         .dc.w      $000a
00083e: 65000084     bcs.w      $8c4
000842: 082c0001001c btst.b     #$1, $1c(a4)
000848: 6676         bne.b      $8c0
00084a: 322c0026     move.w     $26(a4), d1
00084e: 6706         beq.b      $856
000850: 0c410003     cmpi.w     #$3, d1
000854: 636a         bls.b      $8c0
000856: 24690056     movea.l    $56(a1), a2
00085a: 102a0000     move.b     $0(a2), d0
00085e: 24690052     movea.l    $52(a1), a2
000862: 322a0000     move.w     $0(a2), d1
000866: 08000000     btst.b     #$0, d0
00086a: 660c         bne.b      $878
00086c: 0801000f     btst.b     #$f, d1
000870: 6612         bne.b      $884
000872: 08010008     btst.b     #$8, d1
000876: 67c0         beq.b      $838
000878: 0801000f     btst.b     #$f, d1
00087c: 6606         bne.b      $884
00087e: 023c         .dc.w      $023c
000880: fffe         dc.w       $fffe
000882: 4e75         rts        
000884: 7200         moveq      #$0, d1
000886: 322a0002     move.w     $2(a2), d1
00088a: 6634         bne.b      $8c0
00088c: 323c00f4     move.w     #$f4, d1
000890: 602e         bra.b      $8c0
000892: 7000         moveq      #$0, d0
000894: 4e40         trap       #$0
000896: 000a         .dc.w      $000a
000898: 652a         bcs.b      $8c4
00089a: 322c0026     move.w     $26(a4), d1
00089e: 0c410001     cmpi.w     #$1, d1
0008a2: 6310         bls.b      $8b4
0008a4: 0c410003     cmpi.w     #$3, d1
0008a8: 6316         bls.b      $8c0
0008aa: 082c0001001c btst.b     #$1, $1c(a4)
0008b0: 660e         bne.b      $8c0
0008b2: 60de         bra.b      $892
0008b4: 023c         .dc.w      $023c
0008b6: fffe         dc.w       $fffe
0008b8: 082c0001001c btst.b     #$1, $1c(a4)
0008be: 6704         beq.b      $8c4
0008c0: 003c0001     ori.b      #$1, ccr
0008c4: 4e75         rts        
0008c6: 48e7bffe     movem.l    d0/d2-d7/a0-a6, -(a7)
0008ca: 26690004     movea.l    $4(a1), a3
0008ce: 611a         bsr.b      $8ea
0008d0: 246b0004     movea.l    $4(a3), a2
0008d4: 266b0000     movea.l    $0(a3), a3
0008d8: d2ab0030     add.l      $30(a3), d1
0008dc: 32331800     move.w     (a3, d1.l), d1
0008e0: 4eb31000     jsr        (a3, d1.w)
0008e4: 4cdf7ffd     movem.l    (a7)+, d0/d2-d7/a0-a6
0008e8: 4e75         rts        
0008ea: 2f00         move.l     d0, -(a7)
0008ec: 4a290081     tst.b      $81(a1)
0008f0: 6616         bne.b      $908
0008f2: 7000         moveq      #$0, d0
0008f4: 10290084     move.b     $84(a1), d0
0008f8: c0fc0054     mulu.w     #$54, d0
0008fc: 06400036     addi.w     #$36, d0
000900: d0ab0004     add.l      $4(a3), d0
000904: 2340005e     move.l     d0, $5e(a1)
000908: 201f         move.l     (a7)+, d0
00090a: 4e75         rts        
00090c: 2f0b         move.l     a3, -(a7)
00090e: 26690004     movea.l    $4(a1), a3
000912: 61d6         bsr.b      $8ea
000914: 2469005e     movea.l    $5e(a1), a2
000918: 265f         movea.l    (a7)+, a3
00091a: 4e75         rts        
00091c: 222d0004     move.l     $4(a5), d1
000920: 24290036     move.l     $36(a1), d2
000924: 94a9002c     sub.l      $2c(a1), d2
000928: 6308         bls.b      $932
00092a: b481         cmp.l      d1, d2
00092c: 6202         bhi.b      $930
00092e: 2202         move.l     d2, d1
000930: 4e75         rts        
000932: 323c00d3     move.w     #$d3, d1
000936: 003c0001     ori.b      #$1, ccr
00093a: 4e75         rts        
00093c: 302d0006     move.w     $6(a5), d0
000940: 4a290081     tst.b      $81(a1)
000944: 6600014c     bne.w      $a92
000948: 0c400000     cmpi.w     #$0, d0
00094c: 67000142     beq.w      $a90
000950: 0c400006     cmpi.w     #$6, d0
000954: 6606         bne.b      $95c
000956: 7800         moveq      #$0, d4
000958: 6000ffc6     bra.w      $920
00095c: 0c400002     cmpi.w     #$2, d0
000960: 6608         bne.b      $96a
000962: 2b6900360008 move.l     $36(a1), $8(a5)
000968: 4e75         rts        
00096a: 0c400005     cmpi.w     #$5, d0
00096e: 6608         bne.b      $978
000970: 2b69002c0008 move.l     $2c(a1), $8(a5)
000976: 4e75         rts        
000978: 0c400090     cmpi.w     #$90, d0
00097c: 6648         bne.b      $9c6
00097e: 14290068     move.b     $68(a1), d2
000982: 2f02         move.l     d2, -(a7)
000984: 7400         moveq      #$0, d2
000986: 13420068     move.b     d2, $68(a1)
00098a: 2429003a     move.l     $3a(a1), d2
00098e: 2002         move.l     d2, d0
000990: e08a         lsr.l      #$8, d2
000992: e68a         lsr.l      #$3, d2
000994: 6100fd96     bsr.w      $72c
000998: 241f         move.l     (a7)+, d2
00099a: 13420068     move.b     d2, $68(a1)
00099e: 4269002a     clr.w      $2a(a1)
0009a2: 0280000007ff andi.l     #$7ff, d0
0009a8: d1c0         adda.l     d0, a0
0009aa: 7400         moveq      #$0, d2
0009ac: 342d000a     move.w     $a(a5), d2
0009b0: 7000         moveq      #$0, d0
0009b2: 1010         move.b     (a0), d0
0009b4: b440         cmp.w      d0, d2
0009b6: 6302         bls.b      $9ba
0009b8: 3400         move.w     d0, d2
0009ba: 246d0020     movea.l    $20(a5), a2
0009be: 6100f6c4     bsr.w      $84
0009c2: 600000cc     bra.w      $a90
0009c6: 0c40002c     cmpi.w     #$2c, d0
0009ca: 660000ba     bne.w      $a86
0009ce: 206d0020     movea.l    $20(a5), a0
0009d2: 6100f9b6     bsr.w      $38a
0009d6: 650000b8     bcs.w      $a90
0009da: 382900b4     move.w     $b4(a1), d4
0009de: 49f24800     lea.l      (a2, d4.l), a4
0009e2: 3c2900b2     move.w     $b2(a1), d6
0009e6: 2a690004     movea.l    $4(a1), a5
0009ea: 2a6d0008     movea.l    $8(a5), a5
0009ee: 202d000c     move.l     $c(a5), d0
0009f2: 4bf50800     lea.l      (a5, d0.l), a5
0009f6: 2648         movea.l    a0, a3
0009f8: 303c001f     move.w     #$1f, d0
0009fc: 16fc002f     move.b     #$2f, (a3)+
000a00: 16dd         move.b     (a5)+, (a3)+
000a02: 57c8fffc     dbeq       d0, $a00
000a06: 0c460001     cmpi.w     #$1, d6
000a0a: 63000084     bls.w      $a90
000a0e: 727f         moveq      #$7f, d1
000a10: d28b         add.l      a3, d1
000a12: 9288         sub.l      a0, d1
000a14: 47e80080     lea.l      $80(a0), a3
000a18: 7600         moveq      #$0, d3
000a1a: 1614         move.b     (a4), d3
000a1c: 173c0000     move.b     #$0, -(a3)
000a20: 4bf43808     lea.l      $8(a4, d3.l), a5
000a24: 5343         subq.w     #$1, d3
000a26: 1725         move.b     -(a5), -(a3)
000a28: 5381         subq.l     #$1, d1
000a2a: 635c         bls.b      $a88
000a2c: 51cbfff8     dbra       d3, $a26
000a30: 173c002f     move.b     #$2f, -(a3)
000a34: 5381         subq.l     #$1, d1
000a36: 7e02         moveq      #$2, d7
000a38: 6100036e     bsr.w      $da8
000a3c: bc7c0001     cmp.w      #$1, d6
000a40: 6302         bls.b      $a44
000a42: 60dc         bra.b      $a20
000a44: 303c0080     move.w     #$80, d0
000a48: 4a18         tst.b      (a0)+
000a4a: 57c8fffc     dbeq       d0, $a48
000a4e: 6638         bne.b      $a88
000a50: 91fc00000001 suba.l     #$1, a0
000a56: 10db         move.b     (a3)+, (a0)+
000a58: 57c8fffc     dbeq       d0, $a56
000a5c: 662a         bne.b      $a88
000a5e: 082900070002 btst.b     #$7, $2(a1)
000a64: 662a         bne.b      $a90
000a66: 47e90092     lea.l      $92(a1), a3
000a6a: 91fc00000001 suba.l     #$1, a0
000a70: 10fc002f     move.b     #$2f, (a0)+
000a74: 5381         subq.l     #$1, d1
000a76: 6310         bls.b      $a88
000a78: 10db         move.b     (a3)+, (a0)+
000a7a: 57c8fff8     dbeq       d0, $a74
000a7e: 6608         bne.b      $a88
000a80: 10fc0000     move.b     #$0, (a0)+
000a84: 600a         bra.b      $a90
000a86: 600a         bra.b      $a92
000a88: 323c00d7     move.w     #$d7, d1
000a8c: 003c0001     ori.b      #$1, ccr
000a90: 4e75         rts        
000a92: 7206         moveq      #$6, d1
000a94: 6000fe30     bra.w      $8c6
000a98: 302d0006     move.w     $6(a5), d0
000a9c: 4a290081     tst.b      $81(a1)
000aa0: 66000162     bne.w      $c04
000aa4: 6100fe66     bsr.w      $90c
000aa8: 0c40002d     cmpi.w     #$2d, d0
000aac: 6640         bne.b      $aee
000aae: 6110         bsr.b      $ac0
000ab0: 6500015c     bcs.w      $c0e
000ab4: 08e900000069 bset.b     #$0, $69(a1)
000aba: 720e         moveq      #$e, d1
000abc: 6000fe08     bra.w      $8c6
000ac0: 4aa9004c     tst.l      $4c(a1)
000ac4: 66000144     bne.w      $c0a
000ac8: 610003c6     bsr.w      $e90
000acc: 65000140     bcs.w      $c0e
000ad0: 2429002c     move.l     $2c(a1), d2
000ad4: e08a         lsr.l      #$8, d2
000ad6: e68a         lsr.l      #$3, d2
000ad8: 6100fb12     bsr.w      $5ec
000adc: d4a90030     add.l      $30(a1), d2
000ae0: 23420046     move.l     d2, $46(a1)
000ae4: 206d0020     movea.l    $20(a5), a0
000ae8: 2348004c     move.l     a0, $4c(a1)
000aec: 4e75         rts        
000aee: 0c400030     cmpi.w     #$30, d0
000af2: 661a         bne.b      $b0e
000af4: 262d0008     move.l     $8(a5), d3
000af8: 6100fac0     bsr.w      $5ba
000afc: 6100ffc2     bsr.w      $ac0
000b00: 6500010c     bcs.w      $c0e
000b04: 08a900000069 bclr.b     #$0, $69(a1)
000b0a: 600000f8     bra.w      $c04
000b0e: 0c400032     cmpi.w     #$32, d0
000b12: 662e         bne.b      $b42
000b14: 6100037a     bsr.w      $e90
000b18: 650000f4     bcs.w      $c0e
000b1c: 08e900000069 bset.b     #$0, $69(a1)
000b22: 2429002c     move.l     $2c(a1), d2
000b26: e08a         lsr.l      #$8, d2
000b28: e68a         lsr.l      #$3, d2
000b2a: d4a90030     add.l      $30(a1), d2
000b2e: 23420046     move.l     d2, $46(a1)
000b32: 206d0020     movea.l    $20(a5), a0
000b36: 2348004c     move.l     a0, $4c(a1)
000b3a: 262d0008     move.l     $8(a5), d3
000b3e: 600000c4     bra.w      $c04
000b42: 0c400000     cmpi.w     #$0, d0
000b46: 6614         bne.b      $b5c
000b48: 206d0020     movea.l    $20(a5), a0
000b4c: 45e90080     lea.l      $80(a1), a2
000b50: 303c001f     move.w     #$1f, d0
000b54: 24d8         move.l     (a0)+, (a2)+
000b56: 51c8fffc     dbra       d0, $b54
000b5a: 4e75         rts        
000b5c: 0c400031     cmpi.w     #$31, d0
000b60: 6712         beq.b      $b74
000b62: 0c400033     cmpi.w     #$33, d0
000b66: 670c         beq.b      $b74
000b68: 0c400036     cmpi.w     #$36, d0
000b6c: 6706         beq.b      $b74
000b6e: 0c400034     cmpi.w     #$34, d0
000b72: 663a         bne.b      $bae
000b74: 4aac0014     tst.l      $14(a4)
000b78: 6700008a     beq.w      $c04
000b7c: 0c400036     cmpi.w     #$36, d0
000b80: 6726         beq.b      $ba8
000b82: 0c400034     cmpi.w     #$34, d0
000b86: 6720         beq.b      $ba8
000b88: 48e78080     movem.l    d0/a0, -(a7)
000b8c: 202a000e     move.l     $e(a2), d0
000b90: 6606         bne.b      $b98
000b92: 4cdf0101     movem.l    (a7)+, d0/a0
000b96: 6010         bra.b      $ba8
000b98: 2040         movea.l    d0, a0
000b9a: 20280012     move.l     $12(a0), d0
000b9e: b0ac0014     cmp.l      $14(a4), d0
000ba2: 4cdf0101     movem.l    (a7)+, d0/a0
000ba6: 675c         beq.b      $c04
000ba8: 323c00a4     move.w     #$a4, d1
000bac: 6060         bra.b      $c0e
000bae: 0c40002f     cmpi.w     #$2f, d0
000bb2: 6642         bne.b      $bf6
000bb4: 222d0008     move.l     $8(a5), d1
000bb8: 82fc0924     divu.w     #$924, d1
000bbc: 02810000ffff andi.l     #$ffff, d1
000bc2: e189         lsl.l      #$8, d1
000bc4: e789         lsl.l      #$3, d1
000bc6: 6100fd58     bsr.w      $920
000bca: 6346         bls.b      $c12
000bcc: 2601         move.l     d1, d3
000bce: e08b         lsr.l      #$8, d3
000bd0: e68b         lsr.l      #$3, d3
000bd2: 4a83         tst.l      d3
000bd4: 6602         bne.b      $bd8
000bd6: 7601         moveq      #$1, d3
000bd8: 2429002c     move.l     $2c(a1), d2
000bdc: d3a9002c     add.l      d1, $2c(a1)
000be0: e08a         lsr.l      #$8, d2
000be2: e68a         lsr.l      #$3, d2
000be4: 6100fa06     bsr.w      $5ec
000be8: d4a90030     add.l      $30(a1), d2
000bec: 206d0020     movea.l    $20(a5), a0
000bf0: 303c002f     move.w     #$2f, d0
000bf4: 600e         bra.b      $c04
000bf6: 0c40003a     cmpi.w     #$3a, d0
000bfa: 6608         bne.b      $c04
000bfc: 242d0008     move.l     $8(a5), d2
000c00: 206d0020     movea.l    $20(a5), a0
000c04: 7208         moveq      #$8, d1
000c06: 6000fcbe     bra.w      $8c6
000c0a: 323c00fa     move.w     #$fa, d1
000c0e: 003c0001     ori.b      #$1, ccr
000c12: 4e75         rts        
000c14: 7000         moveq      #$0, d0
000c16: 1018         move.b     (a0)+, d0
000c18: 0c00002f     cmpi.b     #$2f, d0
000c1c: 6602         bne.b      $c20
000c1e: 1018         move.b     (a0)+, d0
000c20: 7e00         moveq      #$0, d7
000c22: 0c00002e     cmpi.b     #$2e, d0
000c26: 672a         beq.b      $c52
000c28: 614e         bsr.b      $c78
000c2a: 6510         bcs.b      $c3c
000c2c: 5247         addq.w     #$1, d7
000c2e: 0c470020     cmpi.w     #$20, d7
000c32: 6414         bcc.b      $c48
000c34: 1cc0         move.b     d0, (a6)+
000c36: 1018         move.b     (a0)+, d0
000c38: 613e         bsr.b      $c78
000c3a: 64f0         bcc.b      $c2c
000c3c: 1020         move.b     -(a0), d0
000c3e: 6602         bne.b      $c42
000c40: 1cc0         move.b     d0, (a6)+
000c42: 0887001f     bclr.b     #$1f, d7
000c46: 6608         bne.b      $c50
000c48: 323c00eb     move.w     #$eb, d1
000c4c: 003c0001     ori.b      #$1, ccr
000c50: 4e75         rts        
000c52: 5247         addq.w     #$1, d7
000c54: 1cc0         move.b     d0, (a6)+
000c56: 1018         move.b     (a0)+, d0
000c58: 6606         bne.b      $c60
000c5a: 08c7001f     bset.b     #$1f, d7
000c5e: 4e75         rts        
000c60: 0c00002e     cmpi.b     #$2e, d0
000c64: 67ec         beq.b      $c52
000c66: 0c00002f     cmpi.b     #$2f, d0
000c6a: 6706         beq.b      $c72
000c6c: 0c000040     cmpi.b     #$40, d0
000c70: 66c6         bne.b      $c38
000c72: 08c7001f     bset.b     #$1f, d7
000c76: 4e75         rts        
000c78: 0c00007a     cmpi.b     #$7a, d0
000c7c: 623e         bhi.b      $cbc
000c7e: 0c000061     cmpi.b     #$61, d0
000c82: 6422         bcc.b      $ca6
000c84: 0c000041     cmpi.b     #$41, d0
000c88: 6510         bcs.b      $c9a
000c8a: 0c00005a     cmpi.b     #$5a, d0
000c8e: 6202         bhi.b      $c92
000c90: 6014         bra.b      $ca6
000c92: 0c00005f     cmpi.b     #$5f, d0
000c96: 6712         beq.b      $caa
000c98: 6022         bra.b      $cbc
000c9a: 0c000030     cmpi.b     #$30, d0
000c9e: 6510         bcs.b      $cb0
000ca0: 0c000039     cmpi.b     #$39, d0
000ca4: 6216         bhi.b      $cbc
000ca6: 08c7001f     bset.b     #$1f, d7
000caa: 023c         .dc.w      $023c
000cac: fffe         dc.w       $fffe
000cae: 4e75         rts        
000cb0: 0c00002e     cmpi.b     #$2e, d0
000cb4: 67f4         beq.b      $caa
000cb6: 0c000024     cmpi.b     #$24, d0
000cba: 67ee         beq.b      $caa
000cbc: 003c0001     ori.b      #$1, ccr
000cc0: 4e75         rts        
000cc2: 48e7000a     movem.l    a4/a6, -(a7)
000cc6: 0c10002f     cmpi.b     #$2f, (a0)
000cca: 672a         beq.b      $cf6
000ccc: 0c100040     cmpi.b     #$40, (a0)
000cd0: 660a         bne.b      $cdc
000cd2: 1010         move.b     (a0), d0
000cd4: 7400         moveq      #$0, d2
000cd6: 7a01         moveq      #$1, d5
000cd8: 600000c8     bra.w      $da2
000cdc: 02000004     andi.b     #$4, d0
000ce0: 6702         beq.b      $ce4
000ce2: 7010         moveq      #$10, d0
000ce4: d07c0148     add.w      #$148, d0
000ce8: 28340804     move.l     $4(a4, d0.l), d4
000cec: 3a340808     move.w     $8(a4, d0.l), d5
000cf0: 3c05         move.w     d5, d6
000cf2: 2404         move.l     d4, d2
000cf4: 6022         bra.b      $d18
000cf6: 4de90092     lea.l      $92(a1), a6
000cfa: 7800         moveq      #$0, d4
000cfc: 7a01         moveq      #$1, d5
000cfe: 7c01         moveq      #$1, d6
000d00: 6100ff12     bsr.w      $c14
000d04: 6500009c     bcs.w      $da2
000d08: 2404         move.l     d4, d2
000d0a: 4a00         tst.b      d0
000d0c: 67000094     beq.w      $da2
000d10: 0c000040     cmpi.b     #$40, d0
000d14: 6700008c     beq.w      $da2
000d18: 49f24800     lea.l      (a2, d4.l), a4
000d1c: 7600         moveq      #$0, d3
000d1e: 162c0000     move.b     $0(a4), d3
000d22: 6058         bra.b      $d7c
000d24: 7600         moveq      #$0, d3
000d26: 162c0000     move.b     $0(a4), d3
000d2a: 5245         addq.w     #$1, d5
000d2c: b881         cmp.l      d1, d4
000d2e: 646a         bcc.b      $d9a
000d30: d883         add.l      d3, d4
000d32: 5284         addq.l     #$1, d4
000d34: 08840000     bclr.b     #$0, d4
000d38: d8bc00000008 add.l      #$8, d4
000d3e: 49f24800     lea.l      (a2, d4.l), a4
000d42: 7600         moveq      #$0, d3
000d44: 162c0000     move.b     $0(a4), d3
000d48: bc6c0006     cmp.w      $6(a4), d6
000d4c: 654c         bcs.b      $d9a
000d4e: 62da         bhi.b      $d2a
000d50: be03         cmp.b      d3, d7
000d52: 66d6         bne.b      $d2a
000d54: 47ec0008     lea.l      $8(a4), a3
000d58: 4de90092     lea.l      $92(a1), a6
000d5c: 5343         subq.w     #$1, d3
000d5e: b70e         cmpm.b     (a6)+, (a3)+
000d60: 56cbfffc     dbne       d3, $d5e
000d64: 65be         bcs.b      $d24
000d66: 6232         bhi.b      $d9a
000d68: 2404         move.l     d4, d2
000d6a: 4a00         tst.b      d0
000d6c: 6734         beq.b      $da2
000d6e: 0c000040     cmpi.b     #$40, d0
000d72: 672e         beq.b      $da2
000d74: 2c05         move.l     d5, d6
000d76: 7600         moveq      #$0, d3
000d78: 162c0000     move.b     $0(a4), d3
000d7c: 4de90092     lea.l      $92(a1), a6
000d80: 6100fe92     bsr.w      $c14
000d84: 651c         bcs.b      $da2
000d86: 0887001f     bclr.b     #$1f, d7
000d8a: 679e         beq.b      $d2a
000d8c: 611a         bsr.b      $da8
000d8e: 4a00         tst.b      d0
000d90: 6710         beq.b      $da2
000d92: 0c000040     cmpi.b     #$40, d0
000d96: 670a         beq.b      $da2
000d98: 60e2         bra.b      $d7c
000d9a: 323c00d8     move.w     #$d8, d1
000d9e: 003c0001     ori.b      #$1, ccr
000da2: 4cdf5000     movem.l    (a7)+, a4/a6
000da6: 4e75         rts        
000da8: 5347         subq.w     #$1, d7
000daa: 676a         beq.b      $e16
000dac: 0c460001     cmpi.w     #$1, d6
000db0: 620c         bhi.b      $dbe
000db2: 7a01         moveq      #$1, d5
000db4: 7c01         moveq      #$1, d6
000db6: 283c00000000 move.l     #$0, d4
000dbc: 604a         bra.b      $e08
000dbe: 7600         moveq      #$0, d3
000dc0: 3c2c0006     move.w     $6(a4), d6
000dc4: 7800         moveq      #$0, d4
000dc6: 49f24800     lea.l      (a2, d4.l), a4
000dca: 7a01         moveq      #$1, d5
000dcc: 162c0000     move.b     $0(a4), d3
000dd0: bc45         cmp.w      d5, d6
000dd2: 671c         beq.b      $df0
000dd4: 5245         addq.w     #$1, d5
000dd6: d883         add.l      d3, d4
000dd8: d8bc00000008 add.l      #$8, d4
000dde: 08040000     btst.b     #$0, d4
000de2: 6706         beq.b      $dea
000de4: d8bc00000001 add.l      #$1, d4
000dea: 49f24800     lea.l      (a2, d4.l), a4
000dee: 60dc         bra.b      $dcc
000df0: 3c2c0006     move.w     $6(a4), d6
000df4: 4a46         tst.w      d6
000df6: 660c         bne.b      $e04
000df8: 283c00000000 move.l     #$0, d4
000dfe: 7a01         moveq      #$1, d5
000e00: 3c05         move.w     d5, d6
000e02: 6004         bra.b      $e08
000e04: 5347         subq.w     #$1, d7
000e06: 62b6         bhi.b      $dbe
000e08: 2404         move.l     d4, d2
000e0a: 49f24800     lea.l      (a2, d4.l), a4
000e0e: 7600         moveq      #$0, d3
000e10: 162c0000     move.b     $0(a4), d3
000e14: 3c05         move.w     d5, d6
000e16: 4e75         rts        
000e18: 48e71820     movem.l    d3-d4/a2, -(a7)
000e1c: 7800         moveq      #$0, d4
000e1e: 23420046     move.l     d2, $46(a1)
000e22: 24690052     movea.l    $52(a1), a2
000e26: 234a004c     move.l     a2, $4c(a1)
000e2a: 35440000     move.w     d4, $0(a2)
000e2e: 357c00010002 move.w     #$1, $2(a2)
000e34: 25430004     move.l     d3, $4(a2)
000e38: 2569008e0008 move.l     $8e(a1), $8(a2)
000e3e: 2544000c     move.l     d4, $c(a2)
000e42: 25440012     move.l     d4, $12(a2)
000e46: 2569005a0016 move.l     $5a(a1), $16(a2)
000e4c: 2569005a000e move.l     $5a(a1), $e(a2)
000e52: 383c001f     move.w     #$1f, d4
000e56: 2469005a     movea.l    $5a(a1), a2
000e5a: 24e90056     move.l     $56(a1), (a2)+
000e5e: 51ccfffa     dbra       d4, $e5a
000e62: 7800         moveq      #$0, d4
000e64: 24690056     movea.l    $56(a1), a2
000e68: 15440000     move.b     d4, $0(a2)
000e6c: 15440003     move.b     d4, $3(a2)
000e70: 357c00010004 move.w     #$1, $4(a2)
000e76: 25440006     move.l     d4, $6(a2)
000e7a: 2548000a     move.l     a0, $a(a2)
000e7e: 2543000e     move.l     d3, $e(a2)
000e82: 25440018     move.l     d4, $18(a2)
000e86: 25440012     move.l     d4, $12(a2)
000e8a: 4cdf0418     movem.l    (a7)+, d3-d4/a2
000e8e: 4e75         rts        
000e90: 33690008004a move.w     $8(a1), $4a(a1)
000e96: 40e7         move.w     sr, -(a7)
000e98: 007c0700     ori.w      #$700, sr
000e9c: 4aaa000e     tst.l      $e(a2)
000ea0: 6618         bne.b      $eba
000ea2: 337c00010050 move.w     #$1, $50(a1)
000ea8: 42a9003e     clr.l      $3e(a1)
000eac: 42a90042     clr.l      $42(a1)
000eb0: 2549000e     move.l     a1, $e(a2)
000eb4: 46df         move.w     (a7)+, sr
000eb6: 600000e0     bra.w      $f98
000eba: 48e71818     movem.l    d3-d4/a3-a4, -(a7)
000ebe: 286a000e     movea.l    $e(a2), a4
000ec2: 3629004a     move.w     $4a(a1), d3
000ec6: b66c004a     cmp.w      $4a(a4), d3
000eca: 6612         bne.b      $ede
000ecc: 4cdf1818     movem.l    (a7)+, d3-d4/a3-a4
000ed0: 223c000000fa move.l     #$fa, d1
000ed6: 46df         move.w     (a7)+, sr
000ed8: 007c0001     ori.w      #$1, sr
000edc: 4e75         rts        
000ede: 382a0012     move.w     $12(a2), d4
000ee2: 222c0046     move.l     $46(a4), d1
000ee6: 4a44         tst.w      d4
000ee8: 673c         beq.b      $f26
000eea: b481         cmp.l      d1, d2
000eec: 641a         bcc.b      $f08
000eee: 282c003e     move.l     $3e(a4), d4
000ef2: 67000080     beq.w      $f74
000ef6: c98c         exg.l      d4, a4
000ef8: 262c0046     move.l     $46(a4), d3
000efc: b681         cmp.l      d1, d3
000efe: 6e5e         bgt.b      $f5e
000f00: 2203         move.l     d3, d1
000f02: b481         cmp.l      d1, d2
000f04: 65e8         bcs.b      $eee
000f06: 6056         bra.b      $f5e
000f08: 282c003e     move.l     $3e(a4), d4
000f0c: 660e         bne.b      $f1c
000f0e: 397c00000050 move.w     #$0, $50(a4)
000f14: 605e         bra.b      $f74
000f16: 282c003e     move.l     $3e(a4), d4
000f1a: 6758         beq.b      $f74
000f1c: c98c         exg.l      d4, a4
000f1e: b4ac0046     cmp.l      $46(a4), d2
000f22: 64f2         bcc.b      $f16
000f24: 6038         bra.b      $f5e
000f26: b481         cmp.l      d1, d2
000f28: 6518         bcs.b      $f42
000f2a: 282c003e     move.l     $3e(a4), d4
000f2e: 6744         beq.b      $f74
000f30: c98c         exg.l      d4, a4
000f32: 262c0046     move.l     $46(a4), d3
000f36: b681         cmp.l      d1, d3
000f38: 6524         bcs.b      $f5e
000f3a: 2203         move.l     d3, d1
000f3c: b481         cmp.l      d1, d2
000f3e: 62ea         bhi.b      $f2a
000f40: 601c         bra.b      $f5e
000f42: 282c003e     move.l     $3e(a4), d4
000f46: 660e         bne.b      $f56
000f48: 397c00000050 move.w     #$0, $50(a4)
000f4e: 6024         bra.b      $f74
000f50: 282c003e     move.l     $3e(a4), d4
000f54: 671e         beq.b      $f74
000f56: c98c         exg.l      d4, a4
000f58: b4ac0046     cmp.l      $46(a4), d2
000f5c: 63e4         bls.b      $f42
000f5e: 266c0042     movea.l    $42(a4), a3
000f62: 29490042     move.l     a1, $42(a4)
000f66: 2749003e     move.l     a1, $3e(a3)
000f6a: 234b0042     move.l     a3, $42(a1)
000f6e: 234c003e     move.l     a4, $3e(a1)
000f72: 600c         bra.b      $f80
000f74: 2949003e     move.l     a1, $3e(a4)
000f78: 42a9003e     clr.l      $3e(a1)
000f7c: 234c0042     move.l     a4, $42(a1)
000f80: 4cdf1818     movem.l    (a7)+, d3-d4/a3-a4
000f84: 46df         move.w     (a7)+, sr
000f86: 2f00         move.l     d0, -(a7)
000f88: 6100f908     bsr.w      $892
000f8c: 4cdf0001     movem.l    (a7)+, d0
000f90: 650a         bcs.b      $f9c
000f92: b3ea000e     cmpa.l     $e(a2), a1
000f96: 66ee         bne.b      $f86
000f98: 027cfffe     andi.w     #$fffe, sr
000f9c: 4e75         rts        
000f9e: 6364         bls.b      $1004
000fa0: 666d         bne.b      $100f
000fa2: 0000002b     ori.b      #$2b, d0
000fa6: 0386         bclr.b     d1, d6
