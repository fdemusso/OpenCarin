000040: 001a011c     ori.b      #$1c, (a2)+
000044: 03280328     btst.l     d1, $328(a0)
000048: 0306         btst.l     d1, d6
00004a: 03d0         bset.b     d1, (a0)
00004c: 0650065c     addi.w     #$65c, (a0)
000050: 0670068803d4 addi.w     #$688, (invalid.w)
000056: 04da         .dc.w      $04da
000058: 03320829     btst.l     d1, $29(a2, d0.l)
00005c: 00070002     ori.b      #$2, d7
000060: 660000e6     bne.w      $148
000064: 610001b0     bsr.w      $216
000068: 650c         bcs.b      $76
00006a: 4a40         tst.w      d0
00006c: 673a         beq.b      $a8
00006e: 323c00da     move.w     #$da, d1
000072: 600000d8     bra.w      $14c
000076: b27c00d8     cmp.w      #$d8, d1
00007a: 660000d0     bne.w      $14c
00007e: 526a0050     addq.w     #$1, $50(a2)
000082: 236a00560056 move.l     $56(a2), $56(a1)
000088: 25490056     move.l     a1, $56(a2)
00008c: 234a0052     move.l     a2, $52(a1)
000090: 24690056     movea.l    $56(a1), a2
000094: 25490052     move.l     a1, $52(a2)
000098: 45e900e0     lea.l      $e0(a1), a2
00009c: 2200         move.l     d0, d1
00009e: 610005a2     bsr.w      $642
0000a2: 2009         move.l     a1, d0
0000a4: 234000fc     move.l     d0, $fc(a1)
0000a8: 10290002     move.b     $2(a1), d0
0000ac: c03c0003     and.b      #$3, d0
0000b0: 67000096     beq.w      $148
0000b4: 002900030002 ori.b      #$3, $2(a1)
0000ba: 08e900070036 bset.b     #$7, $36(a1)
0000c0: 082d00050003 btst.b     #$5, $3(a5)
0000c6: 6706         beq.b      $ce
0000c8: 202d0008     move.l     $8(a5), d0
0000cc: 6604         bne.b      $d2
0000ce: 20290082     move.l     $82(a1), d0
0000d2: 0c800000005a cmpi.l     #$5a, d0
0000d8: 620c         bhi.b      $e6
0000da: 203c0000005a move.l     #$5a, d0
0000e0: 45e90086     lea.l      $86(a1), a2
0000e4: 6006         bra.b      $ec
0000e6: 4e40         trap       #$0
0000e8: 002865602b48 ori.b      #$60, $2b48(a0)
0000ee: 00202340     ori.b      #$40, -(a0)
0000f2: 0082234a000e ori.l      #$234a000e, d2
0000f8: 13690013005c move.b     $13(a1), $5c(a1)
0000fe: 13690015005d move.b     $15(a1), $5d(a1)
000104: 136d0007005b move.b     $7(a5), $5b(a1)
00010a: 20290082     move.l     $82(a1), d0
00010e: 2469000e     movea.l    $e(a1), a2
000112: 234a002e     move.l     a2, $2e(a1)
000116: 234a003c     move.l     a2, $3c(a1)
00011a: d5c0         adda.l     d0, a2
00011c: 234a004a     move.l     a2, $4a(a1)
000120: 23400040     move.l     d0, $40(a1)
000124: 7000         moveq      #$0, d0
000126: 4e40         trap       #$0
000128: 00152340     ori.b      #$40, (a5)
00012c: 00601341     ori.w      #$1341, -(a0)
000130: 0060e049     ori.w      #$e049, -(a0)
000134: 1341005f     move.b     d1, $5f(a1)
000138: 4201         clr.b      d1
00013a: 4841         swap       d1
00013c: 82fc0064     divu.w     #$64, d1
000140: 4841         swap       d1
000142: 1341005e     move.b     d1, $5e(a1)
000146: 4e75         rts        
000148: 323c00cb     move.w     #$cb, d1
00014c: 4aa90056     tst.l      $56(a1)
000150: 6704         beq.b      $156
000152: 610004ba     bsr.w      $60e
000156: 003c0001     ori.b      #$1, ccr
00015a: 4e75         rts        
00015c: 610000b8     bsr.w      $216
000160: 65f4         bcs.b      $156
000162: 4a40         tst.w      d0
000164: 661a         bne.b      $180
000166: 082900070002 btst.b     #$7, $2(a1)
00016c: 6700ff3a     beq.w      $a8
000170: 082900010002 btst.b     #$1, $2(a1)
000176: 66d0         bne.b      $148
000178: 234a004e     move.l     a2, $4e(a1)
00017c: 6000ff3c     bra.w      $ba
000180: 487a0092     pea.l      $214(pc)
000184: 082900070002 btst.b     #$7, $2(a1)
00018a: 66bc         bne.b      $148
00018c: d0c0         adda.w     d0, a0
00018e: 2b480020     move.l     a0, $20(a5)
000192: 2f0a         move.l     a2, -(a7)
000194: 24690004     movea.l    $4(a1), a2
000198: 206a0004     movea.l    $4(a2), a0
00019c: 41e8fff4     lea.l      -$c(a0), a0
0001a0: 2008         move.l     a0, d0
0001a2: 2040         movea.l    d0, a0
0001a4: 20280016     move.l     $16(a0), d0
0001a8: 670a         beq.b      $1b4
0001aa: b089         cmp.l      a1, d0
0001ac: 66f4         bne.b      $1a2
0001ae: 216900160016 move.l     $16(a1), $16(a0)
0001b4: 4e40         trap       #$0
0001b6: 008130290000 ori.l      #$30290000, d1
0001bc: 206e0048     movea.l    $48(a6), a0
0001c0: 2f0b         move.l     a3, -(a7)
0001c2: 266e03a4     movea.l    $3a4(a6), a3
0001c6: 487a000c     pea.l      $1d4(pc)
0001ca: 2f2b00c4     move.l     $c4(a3), -(a7)
0001ce: 266b04c4     movea.l    $4c4(a3), a3
0001d2: 4e75         rts        
0001d4: 265f         movea.l    (a7)+, a3
0001d6: 225f         movea.l    (a7)+, a1
0001d8: 2f490018     move.l     a1, $18(a7)
0001dc: 5269001a     addq.w     #$1, $1a(a1)
0001e0: 52290003     addq.b     #$1, $3(a1)
0001e4: 6404         bcc.b      $1ea
0001e6: 53290003     subq.b     #$1, $3(a1)
0001ea: 336c00000008 move.w     $0(a4), $8(a1)
0001f0: 7000         moveq      #$0, d0
0001f2: 1029005a     move.b     $5a(a1), d0
0001f6: 9169001a     sub.w      d0, $1a(a1)
0001fa: 1369001b0003 move.b     $1b(a1), $3(a1)
000200: 6606         bne.b      $208
000202: 1369001a0003 move.b     $1a(a1), $3(a1)
000208: 4229005a     clr.b      $5a(a1)
00020c: 4a290068     tst.b      $68(a1)
000210: 66000678     bne.w      $88a
000214: 4e75         rts        
000216: 48e700c0     movem.l    a0-a1, -(a7)
00021a: 41e9002a     lea.l      $2a(a1), a0
00021e: 2008         move.l     a0, d0
000220: 41e90038     lea.l      $38(a1), a0
000224: 2208         move.l     a0, d1
000226: b181         eor.l      d0, d1
000228: 23410046     move.l     d1, $46(a1)
00022c: 23490052     move.l     a1, $52(a1)
000230: 23490056     move.l     a1, $56(a1)
000234: 24690004     movea.l    $4(a1), a2
000238: 246a0004     movea.l    $4(a2), a2
00023c: 45eaffec     lea.l      -$14(a2), a2
000240: 4aaa0052     tst.l      $52(a2)
000244: 6608         bne.b      $24e
000246: 254a0052     move.l     a2, $52(a2)
00024a: 254a0056     move.l     a2, $56(a2)
00024e: 206d0020     movea.l    $20(a5), a0
000252: 6100009c     bsr.w      $2f0
000256: 6500008e     bcs.w      $2e6
00025a: b03c002f     cmp.b      #$2f, d0
00025e: 6708         beq.b      $268
000260: 2e89         move.l     a1, (a7)
000262: 7000         moveq      #$0, d0
000264: 60000084     bra.w      $2ea
000268: 2049         movea.l    a1, a0
00026a: 5289         addq.l     #$1, a1
00026c: 2e89         move.l     a1, (a7)
00026e: 240a         move.l     a2, d2
000270: 617e         bsr.b      $2f0
000272: 6572         bcs.b      $2e6
000274: b03c002f     cmp.b      #$2f, d0
000278: 6708         beq.b      $282
00027a: 2001         move.l     d1, d0
00027c: b27c001c     cmp.w      #$1c, d1
000280: 6324         bls.b      $2a6
000282: 323c00eb     move.w     #$eb, d1
000286: 605e         bra.b      $2e6
000288: 43ea00e0     lea.l      $e0(a2), a1
00028c: 2200         move.l     d0, d1
00028e: 2f0b         move.l     a3, -(a7)
000290: 266e03a4     movea.l    $3a4(a6), a3
000294: 487a000c     pea.l      $2a2(pc)
000298: 2f2b0044     move.l     $44(a3), -(a7)
00029c: 266b0444     movea.l    $444(a3), a3
0002a0: 4e75         rts        
0002a2: 265f         movea.l    (a7)+, a3
0002a4: 640e         bcc.b      $2b4
0002a6: 246a0052     movea.l    $52(a2), a2
0002aa: b48a         cmp.l      a2, d2
0002ac: 66da         bne.b      $288
0002ae: 323c00d8     move.w     #$d8, d1
0002b2: 6032         bra.b      $2e6
0002b4: 226f0004     movea.l    $4(a7), a1
0002b8: 322c0014     move.w     $14(a4), d1
0002bc: 670e         beq.b      $2cc
0002be: b22a005c     cmp.b      $5c(a2), d1
0002c2: 6708         beq.b      $2cc
0002c4: 122a005b     move.b     $5b(a2), d1
0002c8: e609         lsr.b      #$3, d1
0002ca: 6004         bra.b      $2d0
0002cc: 122a005b     move.b     $5b(a2), d1
0002d0: c2290002     and.b      $2(a1), d1
0002d4: 1f01         move.b     d1, -(a7)
0002d6: 12290002     move.b     $2(a1), d1
0002da: b317         eor.b      d1, (a7)
0002dc: 021f0007     andi.b     #$7, (a7)+
0002e0: 6708         beq.b      $2ea
0002e2: 323c00d6     move.w     #$d6, d1
0002e6: 003c0001     ori.b      #$1, ccr
0002ea: 4cdf0300     movem.l    (a7)+, a0-a1
0002ee: 4e75         rts        
0002f0: 4e40         trap       #$0
0002f2: 0010651e     ori.b      #$1e, (a0)
0002f6: 4a00         tst.b      d0
0002f8: 671a         beq.b      $314
0002fa: b03c002f     cmp.b      #$2f, d0
0002fe: 6714         beq.b      $314
000300: b03c000d     cmp.b      #$d, d0
000304: 670e         beq.b      $314
000306: b03c0020     cmp.b      #$20, d0
00030a: 6708         beq.b      $314
00030c: 323c00eb     move.w     #$eb, d1
000310: 003c0001     ori.b      #$1, ccr
000314: 4e75         rts        
000316: 206d0020     movea.l    $20(a5), a0
00031a: 24690004     movea.l    $4(a1), a2
00031e: 246a0004     movea.l    $4(a2), a2
000322: 45eaffec     lea.l      -$14(a2), a2
000326: 48e700c0     movem.l    a0-a1, -(a7)
00032a: 2008         move.l     a0, d0
00032c: 6700ff54     beq.w      $282
000330: 7000         moveq      #$0, d0
000332: 4a10         tst.b      (a0)
000334: 6600ff38     bne.w      $26e
000338: 6000ff74     bra.w      $2ae
00033c: 323c00fd     move.w     #$fd, d1
000340: 003c0001     ori.b      #$1, ccr
000344: 4e75         rts        
000346: 6100fece     bsr.w      $216
00034a: 65f8         bcs.b      $344
00034c: 4a40         tst.w      d0
00034e: 67f4         beq.b      $344
000350: 4a2a005a     tst.b      $5a(a2)
000354: 67e6         beq.b      $33c
000356: 6100fe2c     bsr.w      $184
00035a: 42a90032     clr.l      $32(a1)
00035e: 4269001a     clr.w      $1a(a1)
000362: 42290003     clr.b      $3(a1)
000366: 600a         bra.b      $372
000368: 323c00d0     move.w     #$d0, d1
00036c: 003c0001     ori.b      #$1, ccr
000370: 4e75         rts        
000372: 47e9002a     lea.l      $2a(a1), a3
000376: 302b0000     move.w     $0(a3), d0
00037a: b0690008     cmp.w      $8(a1), d0
00037e: 6604         bne.b      $384
000380: 610003dc     bsr.w      $75e
000384: 3029001a     move.w     $1a(a1), d0
000388: 664c         bne.b      $3d6
00038a: 4a2900e0     tst.b      $e0(a1)
00038e: 670a         beq.b      $39a
000390: 4aa90032     tst.l      $32(a1)
000394: 662c         bne.b      $3c2
000396: 61000276     bsr.w      $60e
00039a: 20290082     move.l     $82(a1), d0
00039e: b0bc0000005a cmp.l      #$5a, d0
0003a4: 676c         beq.b      $412
0003a6: 2469000e     movea.l    $e(a1), a2
0003aa: 2f0b         move.l     a3, -(a7)
0003ac: 266e03a4     movea.l    $3a4(a6), a3
0003b0: 487a000c     pea.l      $3be(pc)
0003b4: 2f2b00a4     move.l     $a4(a3), -(a7)
0003b8: 266b04a4     movea.l    $4a4(a3), a3
0003bc: 4e75         rts        
0003be: 265f         movea.l    (a7)+, a3
0003c0: 4e75         rts        
0003c2: 5269001a     addq.w     #$1, $1a(a1)
0003c6: 52290003     addq.b     #$1, $3(a1)
0003ca: 6404         bcc.b      $3d0
0003cc: 53290003     subq.b     #$1, $3(a1)
0003d0: 5229005a     addq.b     #$1, $5a(a1)
0003d4: 4e75         rts        
0003d6: 41e9002a     lea.l      $2a(a1), a0
0003da: b028000d     cmp.b      $d(a0), d0
0003de: 670a         beq.b      $3ea
0003e0: 41e90038     lea.l      $38(a1), a0
0003e4: b028000d     cmp.b      $d(a0), d0
0003e8: 6626         bne.b      $410
0003ea: 30280000     move.w     $0(a0), d0
0003ee: 6722         beq.b      $412
0003f0: 32280002     move.w     $2(a0), d1
0003f4: 671c         beq.b      $412
0003f6: 42680002     clr.w      $2(a0)
0003fa: 2f0b         move.l     a3, -(a7)
0003fc: 266e03a4     movea.l    $3a4(a6), a3
000400: 487a000c     pea.l      $40e(pc)
000404: 2f2b0020     move.l     $20(a3), -(a7)
000408: 266b0420     movea.l    $420(a3), a3
00040c: 4e75         rts        
00040e: 265f         movea.l    (a7)+, a3
000410: 7200         moveq      #$0, d1
000412: 4e75         rts        
000414: 322d0006     move.w     $6(a5), d1
000418: 0c410000     cmpi.w     #$0, d1
00041c: 6716         beq.b      $434
00041e: 0c410001     cmpi.w     #$1, d1
000422: 6612         bne.b      $436
000424: 2b6900320004 move.l     $32(a1), $4(a5)
00042a: 6608         bne.b      $434
00042c: 323c00f6     move.w     #$f6, d1
000430: 003c0001     ori.b      #$1, ccr
000434: 4e75         rts        
000436: 0c410006     cmpi.w     #$6, d1
00043a: 6640         bne.b      $47c
00043c: 7200         moveq      #$0, d1
00043e: 12290037     move.b     $37(a1), d1
000442: 5241         addq.w     #$1, d1
000444: b269001a     cmp.w      $1a(a1), d1
000448: 65c6         bcs.b      $410
00044a: 22290032     move.l     $32(a1), d1
00044e: 66e4         bne.b      $434
000450: 082900070002 btst.b     #$7, $2(a1)
000456: 671e         beq.b      $476
000458: 2069004e     movea.l    $4e(a1), a0
00045c: 24680052     movea.l    $52(a0), a2
000460: b1ea0056     cmpa.l     $56(a2), a0
000464: 6610         bne.b      $476
000466: 20690004     movea.l    $4(a1), a0
00046a: 20680004     movea.l    $4(a0), a0
00046e: 41e8ffec     lea.l      -$14(a0), a0
000472: b1ca         cmpa.l     a2, a0
000474: 669a         bne.b      $410
000476: 323c00d3     move.w     #$d3, d1
00047a: 60b4         bra.b      $430
00047c: 0c41000f     cmpi.w     #$f, d1
000480: 6624         bne.b      $4a6
000482: 136900030063 move.b     $3(a1), $63(a1)
000488: 236900320064 move.l     $32(a1), $64(a1)
00048e: 720d         moveq      #$d, d1
000490: b2ad0008     cmp.l      $8(a5), d1
000494: 6304         bls.b      $49a
000496: 222d0008     move.l     $8(a5), d1
00049a: 246d0020     movea.l    $20(a5), a2
00049e: 41e9005b     lea.l      $5b(a1), a0
0004a2: 6000019e     bra.w      $642
0004a6: b27c0002     cmp.w      #$2, d1
0004aa: 6608         bne.b      $4b4
0004ac: 2b6900820008 move.l     $82(a1), $8(a5)
0004b2: 4e75         rts        
0004b4: b27c0020     cmp.w      #$20, d1
0004b8: 6638         bne.b      $4f2
0004ba: 4a6c0014     tst.w      $14(a4)
0004be: 6708         beq.b      $4c8
0004c0: 082d00050040 btst.b     #$5, $40(a5)
0004c6: 6720         beq.b      $4e8
0004c8: 24690004     movea.l    $4(a1), a2
0004cc: 246a0004     movea.l    $4(a2), a2
0004d0: 45eaffec     lea.l      -$14(a2), a2
0004d4: 224a         movea.l    a2, a1
0004d6: 22690052     movea.l    $52(a1), a1
0004da: b689         cmp.l      a1, d3
0004dc: 67a4         beq.b      $482
0004de: b5c9         cmpa.l     a1, a2
0004e0: 66f4         bne.b      $4d6
0004e2: 323c00f1     move.w     #$f1, d1
0004e6: 6004         bra.b      $4ec
0004e8: 323c00a4     move.w     #$a4, d1
0004ec: 003c0001     ori.b      #$1, ccr
0004f0: 4e75         rts        
0004f2: 7206         moveq      #$6, d1
0004f4: 48e7004e     movem.l    a1/a4-a6, -(a7)
0004f8: 20690004     movea.l    $4(a1), a0
0004fc: 24680004     movea.l    $4(a0), a2
000500: 20680000     movea.l    $0(a0), a0
000504: d2a80030     add.l      $30(a0), d1
000508: 32301000     move.w     (a0, d1.w), d1
00050c: 202d0000     move.l     $0(a5), d0
000510: 4eb01000     jsr        (a0, d1.w)
000514: 4cdf7200     movem.l    (a7)+, a1/a4-a6
000518: 4e75         rts        
00051a: 322d0006     move.w     $6(a5), d1
00051e: b27c0000     cmp.w      #$0, d1
000522: 67f4         beq.b      $518
000524: 0c41001a     cmpi.w     #$1a, d1
000528: 6622         bne.b      $54c
00052a: 41e9002a     lea.l      $2a(a1), a0
00052e: 4a680000     tst.w      $0(a0)
000532: 6600fef8     bne.w      $42c
000536: 316900080000 move.w     $8(a1), $0(a0)
00053c: 316d000a0002 move.w     $a(a5), $2(a0)
000542: 4aa90032     tst.l      $32(a1)
000546: 6600fea2     bne.w      $3ea
00054a: 4e75         rts        
00054c: 0c41001b     cmpi.w     #$1b, d1
000550: 6612         bne.b      $564
000552: 47e9002a     lea.l      $2a(a1), a3
000556: 302b0000     move.w     $0(a3), d0
00055a: b0690008     cmp.w      $8(a1), d0
00055e: 6656         bne.b      $5b6
000560: 600001fc     bra.w      $75e
000564: b27c0002     cmp.w      #$2, d1
000568: 6616         bne.b      $580
00056a: 242d0008     move.l     $8(a5), d2
00056e: 6646         bne.b      $5b6
000570: 4a69002a     tst.w      $2a(a1)
000574: 6640         bne.b      $5b6
000576: 4a690038     tst.w      $38(a1)
00057a: 663a         bne.b      $5b6
00057c: 6000fb8c     bra.w      $10a
000580: b27c000f     cmp.w      #$f, d1
000584: 6618         bne.b      $59e
000586: 4a6c0014     tst.w      $14(a4)
00058a: 662a         bne.b      $5b6
00058c: 206d0020     movea.l    $20(a5), a0
000590: 13680001005c move.b     $1(a0), $5c(a1)
000596: 13680002005d move.b     $2(a0), $5d(a1)
00059c: 6018         bra.b      $5b6
00059e: b27c001c     cmp.w      #$1c, d1
0005a2: 661e         bne.b      $5c2
0005a4: 322c0014     move.w     $14(a4), d1
0005a8: 6706         beq.b      $5b0
0005aa: b229005c     cmp.b      $5c(a1), d1
0005ae: 6608         bne.b      $5b8
0005b0: 136d000b005b move.b     $b(a5), $5b(a1)
0005b6: 4e75         rts        
0005b8: 323c00d6     move.w     #$d6, d1
0005bc: 003c0001     ori.b      #$1, ccr
0005c0: 4e75         rts        
0005c2: b27c002f     cmp.w      #$2f, d1
0005c6: 6706         beq.b      $5ce
0005c8: b27c0042     cmp.w      #$42, d1
0005cc: 6660         bne.b      $62e
0005ce: 6100fd46     bsr.w      $316
0005d2: 6508         bcs.b      $5dc
0005d4: b5c9         cmpa.l     a1, a2
0005d6: 670a         beq.b      $5e2
0005d8: 323c00da     move.w     #$da, d1
0005dc: b27c00d8     cmp.w      #$d8, d1
0005e0: 66da         bne.b      $5bc
0005e2: 4a2900e0     tst.b      $e0(a1)
0005e6: 661a         bne.b      $602
0005e8: 526a0050     addq.w     #$1, $50(a2)
0005ec: 236a00560056 move.l     $56(a2), $56(a1)
0005f2: 25490056     move.l     a1, $56(a2)
0005f6: 234a0052     move.l     a2, $52(a1)
0005fa: 24690056     movea.l    $56(a1), a2
0005fe: 25490052     move.l     a1, $52(a2)
000602: 45e900e0     lea.l      $e0(a1), a2
000606: 42320800     clr.b      (a2, d0.l)
00060a: 2200         move.l     d0, d1
00060c: 6634         bne.b      $642
00060e: 4ce905000052 movem.l    $52(a1), a0/a2
000614: 256900520052 move.l     $52(a1), $52(a2)
00061a: 216900560056 move.l     $56(a1), $56(a0)
000620: 20690004     movea.l    $4(a1), a0
000624: 20680004     movea.l    $4(a0), a0
000628: 5368003c     subq.w     #$1, $3c(a0)
00062c: 4e75         rts        
00062e: b27c001d     cmp.w      #$1d, d1
000632: 6608         bne.b      $63c
000634: 52290068     addq.b     #$1, $68(a1)
000638: 6100fd9c     bsr.w      $3d6
00063c: 7208         moveq      #$8, d1
00063e: 6000feb4     bra.w      $4f4
000642: b2bc0000000c cmp.l      #$c, d1
000648: 6538         bcs.b      $682
00064a: 3808         move.w     a0, d4
00064c: 08040000     btst.b     #$0, d4
000650: 6704         beq.b      $656
000652: 14d8         move.b     (a0)+, (a2)+
000654: 5381         subq.l     #$1, d1
000656: 380a         move.w     a2, d4
000658: 08040000     btst.b     #$0, d4
00065c: 6624         bne.b      $682
00065e: e289         lsr.l      #$1, d1
000660: 6406         bcc.b      $668
000662: 6104         bsr.b      $668
000664: 14d8         move.b     (a0)+, (a2)+
000666: 4e75         rts        
000668: e289         lsr.l      #$1, d1
00066a: 6406         bcc.b      $672
00066c: 34d8         move.w     (a0)+, (a2)+
00066e: 6002         bra.b      $672
000670: 24d8         move.l     (a0)+, (a2)+
000672: 51c9fffc     dbra       d1, $670
000676: 5241         addq.w     #$1, d1
000678: 5381         subq.l     #$1, d1
00067a: 64f4         bcc.b      $670
00067c: 7200         moveq      #$0, d1
00067e: 4e75         rts        
000680: 14d8         move.b     (a0)+, (a2)+
000682: 51c9fffc     dbra       d1, $680
000686: 5241         addq.w     #$1, d1
000688: 5381         subq.l     #$1, d1
00068a: 64f4         bcc.b      $680
00068c: 7200         moveq      #$0, d1
00068e: 4e75         rts        
000690: 7eff         moveq      #$ff, d7
000692: 41faffae     lea.l      $642(pc), a0
000696: 47e9002a     lea.l      $2a(a1), a3
00069a: 6044         bra.b      $6e0
00069c: 7eff         moveq      #$ff, d7
00069e: 41fa0008     lea.l      $6a8(pc), a0
0006a2: 47e90038     lea.l      $38(a1), a3
0006a6: 6038         bra.b      $6e0
0006a8: c14a         exg.l      a0, a2
0006aa: 6196         bsr.b      $642
0006ac: c14a         exg.l      a0, a2
0006ae: 4e75         rts        
0006b0: 7e0d         moveq      #$d, d7
0006b2: 41fa000e     lea.l      $6c2(pc), a0
0006b6: 47e9002a     lea.l      $2a(a1), a3
0006ba: 6024         bra.b      $6e0
0006bc: 1018         move.b     (a0)+, d0
0006be: 14c0         move.b     d0, (a2)+
0006c0: be40         cmp.w      d0, d7
0006c2: 57c9fff8     dbeq       d1, $6bc
0006c6: 4e75         rts        
0006c8: 7e0d         moveq      #$d, d7
0006ca: 41fa000e     lea.l      $6da(pc), a0
0006ce: 47e90038     lea.l      $38(a1), a3
0006d2: 600c         bra.b      $6e0
0006d4: 101a         move.b     (a2)+, d0
0006d6: 10c0         move.b     d0, (a0)+
0006d8: be40         cmp.w      d0, d7
0006da: 57c9fff8     dbeq       d1, $6d4
0006de: 4e75         rts        
0006e0: 2a08         move.l     a0, d5
0006e2: 610000a0     bsr.w      $784
0006e6: 65c6         bcs.b      $6ae
0006e8: 246d0020     movea.l    $20(a5), a2
0006ec: 2c2d0004     move.l     $4(a5), d6
0006f0: 6608         bne.b      $6fa
0006f2: 606a         bra.b      $75e
0006f4: 610000fe     bsr.w      $7f4
0006f8: 6546         bcs.b      $740
0006fa: 222b0008     move.l     $8(a3), d1
0006fe: 67f4         beq.b      $6f4
000700: b286         cmp.l      d6, d1
000702: 6302         bls.b      $706
000704: 2206         move.l     d6, d1
000706: 2029004a     move.l     $4a(a1), d0
00070a: 206b0004     movea.l    $4(a3), a0
00070e: 9088         sub.l      a0, d0
000710: b280         cmp.l      d0, d1
000712: 6302         bls.b      $716
000714: 2200         move.l     d0, d1
000716: 7000         moveq      #$0, d0
000718: 240a         move.l     a2, d2
00071a: cb8d         exg.l      d5, a5
00071c: 4e95         jsr        (a5)
00071e: cb8d         exg.l      d5, a5
000720: b1e9004a     cmpa.l     $4a(a1), a0
000724: 6504         bcs.b      $72a
000726: 2069000e     movea.l    $e(a1), a0
00072a: 27480004     move.l     a0, $4(a3)
00072e: 948a         sub.l      a2, d2
000730: d5ab0008     add.l      d2, $8(a3)
000734: dc82         add.l      d2, d6
000736: 6704         beq.b      $73c
000738: be40         cmp.w      d0, d7
00073a: 66be         bne.b      $6fa
00073c: 023c         .dc.w      $023c
00073e: fffe         dc.w       $fffe
000740: 40e7         move.w     sr, -(a7)
000742: 95ed0020     suba.l     $20(a5), a2
000746: 2b4a0004     move.l     a2, $4(a5)
00074a: 4a2b000c     tst.b      $c(a3)
00074e: 6a10         bpl.b      $760
000750: 548f         addq.l     #$2, a7
000752: 200a         move.l     a2, d0
000754: 6608         bne.b      $75e
000756: 323c00d3     move.w     #$d3, d1
00075a: 003c0001     ori.b      #$1, ccr
00075e: 40e7         move.w     sr, -(a7)
000760: 2f01         move.l     d1, -(a7)
000762: 426b0000     clr.w      $0(a3)
000766: 200b         move.l     a3, d0
000768: 22290046     move.l     $46(a1), d1
00076c: b380         eor.l      d1, d0
00076e: 2040         movea.l    d0, a0
000770: 20290082     move.l     $82(a1), d0
000774: 90ab0008     sub.l      $8(a3), d0
000778: 21400008     move.l     d0, $8(a0)
00077c: 6100fc6c     bsr.w      $3ea
000780: 221f         move.l     (a7)+, d1
000782: 4e77         rtr        
000784: 4a290068     tst.b      $68(a1)
000788: 66000100     bne.w      $88a
00078c: 302b0000     move.w     $0(a3), d0
000790: 6608         bne.b      $79a
000792: 376900080000 move.w     $8(a1), $0(a3)
000798: 4e75         rts        
00079a: b0690008     cmp.w      $8(a1), d0
00079e: 6752         beq.b      $7f2
0007a0: 522b000d     addq.b     #$1, $d(a3)
0007a4: 7200         moveq      #$0, d1
0007a6: 122b000d     move.b     $d(a3), d1
0007aa: b269001a     cmp.w      $1a(a1), d1
0007ae: 6606         bne.b      $7b6
0007b0: 204b         movea.l    a3, a0
0007b2: 6100fc36     bsr.w      $3ea
0007b6: 42690008     clr.w      $8(a1)
0007ba: 2f0b         move.l     a3, -(a7)
0007bc: 266e03a4     movea.l    $3a4(a6), a3
0007c0: 487a000c     pea.l      $7ce(pc)
0007c4: 2f2b00ac     move.l     $ac(a3), -(a7)
0007c8: 266b04ac     movea.l    $4ac(a3), a3
0007cc: 4e75         rts        
0007ce: 265f         movea.l    (a7)+, a3
0007d0: 336c00000008 move.w     $0(a4), $8(a1)
0007d6: 532b000d     subq.b     #$1, $d(a3)
0007da: 322c0026     move.w     $26(a4), d1
0007de: 67a4         beq.b      $784
0007e0: 0c410020     cmpi.w     #$20, d1
0007e4: 6508         bcs.b      $7ee
0007e6: 082c0001001c btst.b     #$1, $1c(a4)
0007ec: 6796         beq.b      $784
0007ee: 003c0001     ori.b      #$1, ccr
0007f2: 4e75         rts        
0007f4: 082900070002 btst.b     #$7, $2(a1)
0007fa: 66000094     bne.w      $890
0007fe: 200b         move.l     a3, d0
000800: 22290046     move.l     $46(a1), d1
000804: b380         eor.l      d1, d0
000806: 2040         movea.l    d0, a0
000808: 20290082     move.l     $82(a1), d0
00080c: 90ab0008     sub.l      $8(a3), d0
000810: 21400008     move.l     d0, $8(a0)
000814: 7200         moveq      #$0, d1
000816: 122b000d     move.b     $d(a3), d1
00081a: 5241         addq.w     #$1, d1
00081c: b269001a     cmp.w      $1a(a1), d1
000820: 660c         bne.b      $82e
000822: 4a2900e0     tst.b      $e0(a1)
000826: 6758         beq.b      $880
000828: 4aa90032     tst.l      $32(a1)
00082c: 6752         beq.b      $880
00082e: 1741000d     move.b     d1, $d(a3)
000832: 377c00010002 move.w     #$1, $2(a3)
000838: 42690008     clr.w      $8(a1)
00083c: 6100fbac     bsr.w      $3ea
000840: 7000         moveq      #$0, d0
000842: 2f0b         move.l     a3, -(a7)
000844: 266e03a4     movea.l    $3a4(a6), a3
000848: 487a000c     pea.l      $856(pc)
00084c: 2f2b0028     move.l     $28(a3), -(a7)
000850: 266b0428     movea.l    $428(a3), a3
000854: 4e75         rts        
000856: 265f         movea.l    (a7)+, a3
000858: 532b000d     subq.b     #$1, $d(a3)
00085c: 336c00000008 move.w     $0(a4), $8(a1)
000862: 4a290068     tst.b      $68(a1)
000866: 6622         bne.b      $88a
000868: 322c0026     move.w     $26(a4), d1
00086c: 670e         beq.b      $87c
00086e: 0c410020     cmpi.w     #$20, d1
000872: 6510         bcs.b      $884
000874: 082c0001001c btst.b     #$1, $1c(a4)
00087a: 6608         bne.b      $884
00087c: 4e75         rts        
00087e: 245f         movea.l    (a7)+, a2
000880: 323c00f5     move.w     #$f5, d1
000884: 003c0001     ori.b      #$1, ccr
000888: 4e75         rts        
00088a: 323c00ad     move.w     #$ad, d1
00088e: 60f4         bra.b      $884
000890: 2f0a         move.l     a2, -(a7)
000892: 2069004e     movea.l    $4e(a1), a0
000896: 24680052     movea.l    $52(a0), a2
00089a: b1ea0056     cmpa.l     $56(a2), a0
00089e: 66de         bne.b      $87e
0008a0: 20690004     movea.l    $4(a1), a0
0008a4: 20680004     movea.l    $4(a0), a0
0008a8: 41e8ffec     lea.l      -$14(a0), a0
0008ac: b1ca         cmpa.l     a2, a0
0008ae: 67ce         beq.b      $87e
0008b0: 234a004e     move.l     a2, $4e(a1)
0008b4: 41ea00e0     lea.l      $e0(a2), a0
0008b8: 2469000e     movea.l    $e(a1), a2
0008bc: 234a003c     move.l     a2, $3c(a1)
0008c0: 234a002e     move.l     a2, $2e(a1)
0008c4: 7220         moveq      #$20, d1
0008c6: 23410032     move.l     d1, $32(a1)
0008ca: 6100fd76     bsr.w      $642
0008ce: 245f         movea.l    (a7)+, a2
0008d0: 4e75         rts        
0008d2: 7069         moveq      #$69, d0
0008d4: 7065         moveq      #$65, d0
0008d6: 6d61         blt.b      $939
0008d8: 6e000077     bgt.w      $951
0008dc: 5bd9         smi.b      (a1)+
