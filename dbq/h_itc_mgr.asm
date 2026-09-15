00003c: 002800360044 ori.b      #$36, $44(a0)
000042: 00520060     ori.w      #$60, (a2)
000046: 006e007c008a ori.w      #$7c, $8a(a6)
00004c: 009800a800b8 ori.l      #$a800b8, (a0)+
000052: 00c8         .dc.w      $00c8
000054: 00d8         .dc.w      $00d8
000056: 2200         move.l     d0, d1
000058: 6b06         bmi.b      $60
00005a: 2b410004     move.l     d1, $4(a5)
00005e: 4e75         rts        
000060: 4481         neg.l      d1
000062: 4e75         rts        
000064: 2f0d         move.l     a5, -(a7)
000066: 220c         move.l     a4, d1
000068: 2009         move.l     a1, d0
00006a: 610000b8     bsr.w      $124
00006e: 588f         addq.l     #$4, a7
000070: 60e4         bra.b      $56
000072: 2f0d         move.l     a5, -(a7)
000074: 220c         move.l     a4, d1
000076: 2009         move.l     a1, d0
000078: 61000304     bsr.w      $37e
00007c: 588f         addq.l     #$4, a7
00007e: 60d6         bra.b      $56
000080: 2f0d         move.l     a5, -(a7)
000082: 220c         move.l     a4, d1
000084: 2009         move.l     a1, d0
000086: 610004a8     bsr.w      $530
00008a: 588f         addq.l     #$4, a7
00008c: 60c8         bra.b      $56
00008e: 2f0d         move.l     a5, -(a7)
000090: 220c         move.l     a4, d1
000092: 2009         move.l     a1, d0
000094: 610004b2     bsr.w      $548
000098: 588f         addq.l     #$4, a7
00009a: 60ba         bra.b      $56
00009c: 2f0d         move.l     a5, -(a7)
00009e: 220c         move.l     a4, d1
0000a0: 2009         move.l     a1, d0
0000a2: 610004bc     bsr.w      $560
0000a6: 588f         addq.l     #$4, a7
0000a8: 60ac         bra.b      $56
0000aa: 2f0d         move.l     a5, -(a7)
0000ac: 220c         move.l     a4, d1
0000ae: 2009         move.l     a1, d0
0000b0: 610004c6     bsr.w      $578
0000b4: 588f         addq.l     #$4, a7
0000b6: 609e         bra.b      $56
0000b8: 2f0d         move.l     a5, -(a7)
0000ba: 220c         move.l     a4, d1
0000bc: 2009         move.l     a1, d0
0000be: 610004cc     bsr.w      $58c
0000c2: 588f         addq.l     #$4, a7
0000c4: 6090         bra.b      $56
0000c6: 2f0d         move.l     a5, -(a7)
0000c8: 220c         move.l     a4, d1
0000ca: 2009         move.l     a1, d0
0000cc: 6100061a     bsr.w      $6e8
0000d0: 588f         addq.l     #$4, a7
0000d2: 6082         bra.b      $56
0000d4: 2f0d         move.l     a5, -(a7)
0000d6: 220c         move.l     a4, d1
0000d8: 2009         move.l     a1, d0
0000da: 61000746     bsr.w      $822
0000de: 588f         addq.l     #$4, a7
0000e0: 6000ff74     bra.w      $56
0000e4: 2f0d         move.l     a5, -(a7)
0000e6: 220c         move.l     a4, d1
0000e8: 2009         move.l     a1, d0
0000ea: 6100074e     bsr.w      $83a
0000ee: 588f         addq.l     #$4, a7
0000f0: 6000ff64     bra.w      $56
0000f4: 2f0d         move.l     a5, -(a7)
0000f6: 220c         move.l     a4, d1
0000f8: 2009         move.l     a1, d0
0000fa: 61000756     bsr.w      $852
0000fe: 588f         addq.l     #$4, a7
000100: 6000ff54     bra.w      $56
000104: 2f0d         move.l     a5, -(a7)
000106: 220c         move.l     a4, d1
000108: 2009         move.l     a1, d0
00010a: 61000a48     bsr.w      $b54
00010e: 588f         addq.l     #$4, a7
000110: 6000ff44     bra.w      $56
000114: 2f0d         move.l     a5, -(a7)
000116: 220c         move.l     a4, d1
000118: 2009         move.l     a1, d0
00011a: 61000f42     bsr.w      $105e
00011e: 588f         addq.l     #$4, a7
000120: 6000ff34     bra.w      $56
000124: 4e550000     link.w     a5, #$0
000128: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
00012c: 2440         movea.l    d0, a2
00012e: 4fefffea     lea.l      -$16(a7), a7
000132: 206f0036     movea.l    $36(a7), a0
000136: 2f680020000e move.l     $20(a0), $e(a7)
00013c: 206f0036     movea.l    $36(a7), a0
000140: 3f6800020008 move.w     $2(a0), $8(a7)
000146: 206a0004     movea.l    $4(a2), a0
00014a: 26680004     movea.l    $4(a0), a3
00014e: 422a0052     clr.b      $52(a2)
000152: 157c00ff002b move.b     #$ff, $2b(a2)
000158: 257cffffffff004e move.l     #$ffffffff, $4e(a2)
000160: 422a0053     clr.b      $53(a2)
000164: 486a002a     pea.l      $2a(a2)
000168: 702b         moveq      #$2b, d0
00016a: d08a         add.l      a2, d0
00016c: 2200         move.l     d0, d1
00016e: 202f0012     move.l     $12(a7), d0
000172: 610011f4     bsr.w      $1368
000176: 588f         addq.l     #$4, a7
000178: 2f40000a     move.l     d0, $a(a7)
00017c: 67000018     beq.w      $196
000180: 48780010     pea.l      $10.w
000184: 222f000e     move.l     $e(a7), d1
000188: 702c         moveq      #$2c, d0
00018a: d08a         add.l      a2, d0
00018c: 610036c2     bsr.w      $3850
000190: 588f         addq.l     #$4, a7
000192: 422a003b     clr.b      $3b(a2)
000196: 0c2a0002002a cmpi.b     #$2, $2a(a2)
00019c: 66000010     bne.w      $1ae
0001a0: 7000         moveq      #$0, d0
0001a2: 4fef0016     lea.l      $16(a7), a7
0001a6: 600001cc     bra.w      $374
0001aa: 600001bc     bra.w      $368
0001ae: 0c2a0001002a cmpi.b     #$1, $2a(a2)
0001b4: 66000190     bne.w      $346
0001b8: 082f00050009 btst.b     #$5, $9(a7)
0001be: 6600001a     bne.w      $1da
0001c2: 2f2f0036     move.l     $36(a7), -(a7)
0001c6: 222f001e     move.l     $1e(a7), d1
0001ca: 200a         move.l     a2, d0
0001cc: 610001b0     bsr.w      $37e
0001d0: 588f         addq.l     #$4, a7
0001d2: 4fef0016     lea.l      $16(a7), a7
0001d6: 6000019c     bra.w      $374
0001da: 7000         moveq      #$0, d0
0001dc: 102a002b     move.b     $2b(a2), d0
0001e0: 0c40ffff     cmpi.w     #$ffff, d0
0001e4: 67000016     beq.w      $1fc
0001e8: 0c2a00e4002b cmpi.b     #$e4, $2b(a2)
0001ee: 6300001a     bls.w      $20a
0001f2: 0c2a00fc002b cmpi.b     #$fc, $2b(a2)
0001f8: 64000010     bcc.w      $20a
0001fc: 203cfffffefb move.l     #$fffffefb, d0
000202: 4fef0016     lea.l      $16(a7), a7
000206: 6000016c     bra.w      $374
00020a: 206f0036     movea.l    $36(a7), a0
00020e: 156800070052 move.b     $7(a0), $52(a2)
000214: 206f0036     movea.l    $36(a7), a0
000218: 2f6800080004 move.l     $8(a0), $4(a7)
00021e: 0c2a0080002b cmpi.b     #$80, $2b(a2)
000224: 6500000c     bcs.w      $232
000228: 7080         moveq      #$80, d0
00022a: d02a002b     add.b      $2b(a2), d0
00022e: 60000004     bra.w      $234
000232: 7000         moveq      #$0, d0
000234: 15400044     move.b     d0, $44(a2)
000238: 60000066     bra.w      $2a0
00023c: 157c00010048 move.b     #$1, $48(a2)
000242: 2eaf0004     move.l     $4(a7), (a7)
000246: 6000007e     bra.w      $2c6
00024a: 157c00020048 move.b     #$2, $48(a2)
000250: 202f0004     move.l     $4(a7), d0
000254: e388         lsl.l      #$1, d0
000256: 2e80         move.l     d0, (a7)
000258: 6000006c     bra.w      $2c6
00025c: 157c00040048 move.b     #$4, $48(a2)
000262: 202f0004     move.l     $4(a7), d0
000266: e588         lsl.l      #$2, d0
000268: 2e80         move.l     d0, (a7)
00026a: 6000005a     bra.w      $2c6
00026e: 157c00040048 move.b     #$4, $48(a2)
000274: 202f0004     move.l     $4(a7), d0
000278: e588         lsl.l      #$2, d0
00027a: 2e80         move.l     d0, (a7)
00027c: 60000048     bra.w      $2c6
000280: 157c00080048 move.b     #$8, $48(a2)
000286: 202f0004     move.l     $4(a7), d0
00028a: e788         lsl.l      #$3, d0
00028c: 2e80         move.l     d0, (a7)
00028e: 60000036     bra.w      $2c6
000292: 203cfffffefd move.l     #$fffffefd, d0
000298: 4fef0016     lea.l      $16(a7), a7
00029c: 600000d6     bra.w      $374
0002a0: 700f         moveq      #$f, d0
0002a2: c02a0052     and.b      $52(a2), d0
0002a6: 7200         moveq      #$0, d1
0002a8: 1200         move.b     d0, d1
0002aa: 5341         subq.w     #$1, d1
0002ac: 0c410004     cmpi.w     #$4, d1
0002b0: 6200ffe0     bhi.w      $292
0002b4: 323b1206     move.w     $2bc(pc, d1.w), d1
0002b8: 4efb1002     jmp        $2bc(pc, d1.w)
0002bc: ff80         dc.w       $ff80
0002be: ff8e         dc.w       $ff8e
0002c0: ffa0         dc.w       $ffa0
0002c2: ffb2         dc.w       $ffb2
0002c4: ffc4         dc.w       $ffc4
0002c6: 0c97000000f8 cmpi.l     #$f8, (a7)
0002cc: 6f000010     ble.w      $2de
0002d0: 203cfffffefc move.l     #$fffffefc, d0
0002d6: 4fef0016     lea.l      $16(a7), a7
0002da: 60000098     bra.w      $374
0002de: 0c2a0080002b cmpi.b     #$80, $2b(a2)
0002e4: 65000016     bcs.w      $2fc
0002e8: 202b0090     move.l     $90(a3), d0
0002ec: 7200         moveq      #$0, d1
0002ee: 122a0044     move.b     $44(a2), d1
0002f2: e189         lsl.l      #$8, d1
0002f4: d081         add.l      d1, d0
0002f6: 2840         movea.l    d0, a4
0002f8: 6000002c     bra.w      $326
0002fc: 2f17         move.l     (a7), -(a7)
0002fe: 7000         moveq      #$0, d0
000300: 102a002b     move.b     $2b(a2), d0
000304: 2200         move.l     d0, d1
000306: 7066         moveq      #$66, d0
000308: d08b         add.l      a3, d0
00030a: 610022de     bsr.w      $25ea
00030e: 588f         addq.l     #$4, a7
000310: 2840         movea.l    d0, a4
000312: 4a80         tst.l      d0
000314: 66000010     bne.w      $326
000318: 203cfffffefe move.l     #$fffffefe, d0
00031e: 4fef0016     lea.l      $16(a7), a7
000322: 60000050     bra.w      $374
000326: 4214         clr.b      (a4)
000328: 422c0001     clr.b      $1(a4)
00032c: 196a00520002 move.b     $52(a2), $2(a4)
000332: 422c0003     clr.b      $3(a4)
000336: 196f00030005 move.b     $3(a7), $5(a4)
00033c: 197c00020004 move.b     #$2, $4(a4)
000342: 60000024     bra.w      $368
000346: 0c2a0003002a cmpi.b     #$3, $2a(a2)
00034c: 6600001a     bne.w      $368
000350: 2f2f0036     move.l     $36(a7), -(a7)
000354: 222f001e     move.l     $1e(a7), d1
000358: 200a         move.l     a2, d0
00035a: 61000022     bsr.w      $37e
00035e: 588f         addq.l     #$4, a7
000360: 4fef0016     lea.l      $16(a7), a7
000364: 6000000e     bra.w      $374
000368: 7000         moveq      #$0, d0
00036a: 4fef0016     lea.l      $16(a7), a7
00036e: 60000004     bra.w      $374
000372: 4e71         nop        
000374: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
00037a: 4e5d         unlk       a5
00037c: 4e75         rts        
00037e: 4e550000     link.w     a5, #$0
000382: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000386: 2440         movea.l    d0, a2
000388: 4fefffe6     lea.l      -$1a(a7), a7
00038c: 257cffffffff004e move.l     #$ffffffff, $4e(a2)
000394: 422a0053     clr.b      $53(a2)
000398: 206f0036     movea.l    $36(a7), a0
00039c: 2f6800200012 move.l     $20(a0), $12(a7)
0003a2: 206f0036     movea.l    $36(a7), a0
0003a6: 2f500006     move.l     (a0), $6(a7)
0003aa: 206a0004     movea.l    $4(a2), a0
0003ae: 26680004     movea.l    $4(a0), a3
0003b2: 157c00ff002b move.b     #$ff, $2b(a2)
0003b8: 486a002a     pea.l      $2a(a2)
0003bc: 702b         moveq      #$2b, d0
0003be: d08a         add.l      a2, d0
0003c0: 2200         move.l     d0, d1
0003c2: 202f0016     move.l     $16(a7), d0
0003c6: 61000fa0     bsr.w      $1368
0003ca: 588f         addq.l     #$4, a7
0003cc: 2f40000e     move.l     d0, $e(a7)
0003d0: 67000018     beq.w      $3ea
0003d4: 48780010     pea.l      $10.w
0003d8: 222f0012     move.l     $12(a7), d1
0003dc: 702c         moveq      #$2c, d0
0003de: d08a         add.l      a2, d0
0003e0: 6100346e     bsr.w      $3850
0003e4: 588f         addq.l     #$4, a7
0003e6: 422a003b     clr.b      $3b(a2)
0003ea: 0c2a0002002a cmpi.b     #$2, $2a(a2)
0003f0: 66000010     bne.w      $402
0003f4: 7000         moveq      #$0, d0
0003f6: 4fef001a     lea.l      $1a(a7), a7
0003fa: 6000012a     bra.w      $526
0003fe: 6000011a     bra.w      $51a
000402: 0c2a0001002a cmpi.b     #$1, $2a(a2)
000408: 660000fc     bne.w      $506
00040c: 7000         moveq      #$0, d0
00040e: 102a002b     move.b     $2b(a2), d0
000412: 0c40ffff     cmpi.w     #$ffff, d0
000416: 66000010     bne.w      $428
00041a: 203cfffffefb move.l     #$fffffefb, d0
000420: 4fef001a     lea.l      $1a(a7), a7
000424: 60000100     bra.w      $526
000428: 156a002b0045 move.b     $2b(a2), $45(a2)
00042e: 0c2a0080002b cmpi.b     #$80, $2b(a2)
000434: 6500000c     bcs.w      $442
000438: 7080         moveq      #$80, d0
00043a: d02a002b     add.b      $2b(a2), d0
00043e: 60000004     bra.w      $444
000442: 7000         moveq      #$0, d0
000444: 15400044     move.b     d0, $44(a2)
000448: 0c2a0080002b cmpi.b     #$80, $2b(a2)
00044e: 65000018     bcs.w      $468
000452: 202b0090     move.l     $90(a3), d0
000456: 7200         moveq      #$0, d1
000458: 122a0044     move.b     $44(a2), d1
00045c: e189         lsl.l      #$8, d1
00045e: d081         add.l      d1, d0
000460: 2f40000a     move.l     d0, $a(a7)
000464: 60000016     bra.w      $47c
000468: 7000         moveq      #$0, d0
00046a: 102a002b     move.b     $2b(a2), d0
00046e: 2200         move.l     d0, d1
000470: 7066         moveq      #$66, d0
000472: d08b         add.l      a3, d0
000474: 61002126     bsr.w      $259c
000478: 2f40000a     move.l     d0, $a(a7)
00047c: 4aaf000a     tst.l      $a(a7)
000480: 67000010     beq.w      $492
000484: 206f000a     movea.l    $a(a7), a0
000488: 082800010004 btst.b     #$1, $4(a0)
00048e: 66000010     bne.w      $4a0
000492: 203cfffffef9 move.l     #$fffffef9, d0
000498: 4fef001a     lea.l      $1a(a7), a7
00049c: 60000088     bra.w      $526
0004a0: 206f0036     movea.l    $36(a7), a0
0004a4: 3ea80006     move.w     $6(a0), (a7)
0004a8: 256f000a003c move.l     $a(a7), $3c(a2)
0004ae: 202f000a     move.l     $a(a7), d0
0004b2: 5c80         addq.l     #$6, d0
0004b4: 2540004a     move.l     d0, $4a(a2)
0004b8: 206f000a     movea.l    $a(a7), a0
0004bc: 156800050049 move.b     $5(a0), $49(a2)
0004c2: 103c00ff     move.b     #$ff, d0
0004c6: c02f0001     and.b      $1(a7), d0
0004ca: 15400046     move.b     d0, $46(a2)
0004ce: 422a0047     clr.b      $47(a2)
0004d2: 3017         move.w     (a7), d0
0004d4: e048         lsr.w      #$8, d0
0004d6: 020000ff     andi.b     #$ff, d0
0004da: 7200         moveq      #$0, d1
0004dc: 1200         move.b     d0, d1
0004de: 2f01         move.l     d1, -(a7)
0004e0: 222f000e     move.l     $e(a7), d1
0004e4: 703c         moveq      #$3c, d0
0004e6: d08a         add.l      a2, d0
0004e8: 61000fd0     bsr.w      $14ba
0004ec: 588f         addq.l     #$4, a7
0004ee: 2f400002     move.l     d0, $2(a7)
0004f2: 6c00000e     bge.w      $502
0004f6: 202f0002     move.l     $2(a7), d0
0004fa: 4fef001a     lea.l      $1a(a7), a7
0004fe: 60000026     bra.w      $526
000502: 60000016     bra.w      $51a
000506: 0c2a0003002a cmpi.b     #$3, $2a(a2)
00050c: 6600000c     bne.w      $51a
000510: 7000         moveq      #$0, d0
000512: 4fef001a     lea.l      $1a(a7), a7
000516: 6000000e     bra.w      $526
00051a: 7000         moveq      #$0, d0
00051c: 4fef001a     lea.l      $1a(a7), a7
000520: 60000004     bra.w      $526
000524: 4e71         nop        
000526: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00052c: 4e5d         unlk       a5
00052e: 4e75         rts        
000530: 4e550000     link.w     a5, #$0
000534: 48e7c000     movem.l    d0-d1, -(a7)
000538: 203cffffff29 move.l     #$ffffff29, d0
00053e: 60000004     bra.w      $544
000542: 4e71         nop        
000544: 4e5d         unlk       a5
000546: 4e75         rts        
000548: 4e550000     link.w     a5, #$0
00054c: 48e7c000     movem.l    d0-d1, -(a7)
000550: 203cffffff29 move.l     #$ffffff29, d0
000556: 60000004     bra.w      $55c
00055a: 4e71         nop        
00055c: 4e5d         unlk       a5
00055e: 4e75         rts        
000560: 4e550000     link.w     a5, #$0
000564: 48e7c000     movem.l    d0-d1, -(a7)
000568: 203cffffff29 move.l     #$ffffff29, d0
00056e: 60000004     bra.w      $574
000572: 4e71         nop        
000574: 4e5d         unlk       a5
000576: 4e75         rts        
000578: 4e550000     link.w     a5, #$0
00057c: 48e7c000     movem.l    d0-d1, -(a7)
000580: 7000         moveq      #$0, d0
000582: 60000004     bra.w      $588
000586: 4e71         nop        
000588: 4e5d         unlk       a5
00058a: 4e75         rts        
00058c: 4e550000     link.w     a5, #$0
000590: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
000594: 4feffff4     lea.l      -$c(a7), a7
000598: 703c         moveq      #$3c, d0
00059a: d0af000c     add.l      $c(a7), d0
00059e: 2640         movea.l    d0, a3
0005a0: 206f000c     movea.l    $c(a7), a0
0005a4: 2ea8003c     move.l     $3c(a0), (a7)
0005a8: 206f000c     movea.l    $c(a7), a0
0005ac: 20680004     movea.l    $4(a0), a0
0005b0: 24680004     movea.l    $4(a0), a2
0005b4: 206f002c     movea.l    $2c(a7), a0
0005b8: 28280004     move.l     $4(a0), d4
0005bc: 206f000c     movea.l    $c(a7), a0
0005c0: 4a280053     tst.b      $53(a0)
0005c4: 6700000c     beq.w      $5d2
0005c8: 7000         moveq      #$0, d0
0005ca: 102b000c     move.b     $c(a3), d0
0005ce: 4c404804     divs.l     d0, d4
0005d2: 206f002c     movea.l    $2c(a7), a0
0005d6: 2f6800200004 move.l     $20(a0), $4(a7)
0005dc: 082b0002000a btst.b     #$2, $a(a3)
0005e2: 67000010     beq.w      $5f4
0005e6: 203cfffffef7 move.l     #$fffffef7, d0
0005ec: 4fef000c     lea.l      $c(a7), a7
0005f0: 600000ec     bra.w      $6de
0005f4: 082b0000000a btst.b     #$0, $a(a3)
0005fa: 67000044     beq.w      $640
0005fe: 60000032     bra.w      $632
000602: 7001         moveq      #$1, d0
000604: 610022ba     bsr.w      $28c0
000608: 206f0010     movea.l    $10(a7), a0
00060c: 0c6800020026 cmpi.w     #$2, $26(a0)
000612: 67000010     beq.w      $624
000616: 206f0010     movea.l    $10(a7), a0
00061a: 0c6800030026 cmpi.w     #$3, $26(a0)
000620: 66000010     bne.w      $632
000624: 203cffffff1c move.l     #$ffffff1c, d0
00062a: 4fef000c     lea.l      $c(a7), a7
00062e: 600000ae     bra.w      $6de
000632: 2057         movea.l    (a7), a0
000634: 102b000b     move.b     $b(a3), d0
000638: b0280003     cmp.b      $3(a0), d0
00063c: 6700ffc4     beq.w      $602
000640: 2217         move.l     (a7), d1
000642: 200a         move.l     a2, d0
000644: 6100143e     bsr.w      $1a84
000648: 4a80         tst.l      d0
00064a: 66000010     bne.w      $65c
00064e: 202a003a     move.l     $3a(a2), d0
000652: 4480         neg.l      d0
000654: 4fef000c     lea.l      $c(a7), a7
000658: 60000084     bra.w      $6de
00065c: 7000         moveq      #$0, d0
00065e: 102b000d     move.b     $d(a3), d0
000662: 7200         moveq      #$0, d1
000664: 122b000c     move.b     $c(a3), d1
000668: 4c041001     mulu.l     d4, d1
00066c: b081         cmp.l      d1, d0
00066e: 64000014     bcc.w      $684
000672: 7000         moveq      #$0, d0
000674: 102b000d     move.b     $d(a3), d0
000678: 7200         moveq      #$0, d1
00067a: 122b000c     move.b     $c(a3), d1
00067e: 81c1         divs.w     d1, d0
000680: 48c0         ext.l      d0
000682: 2800         move.l     d0, d4
000684: 2f04         move.l     d4, -(a7)
000686: 222b000e     move.l     $e(a3), d1
00068a: 202f0008     move.l     $8(a7), d0
00068e: 206b0004     movea.l    $4(a3), a0
000692: 4e90         jsr        (a0)
000694: 588f         addq.l     #$4, a7
000696: 082b0003000a btst.b     #$3, $a(a3)
00069c: 67000008     beq.w      $6a6
0006a0: 2017         move.l     (a7), d0
0006a2: 610013b2     bsr.w      $1a56
0006a6: 2057         movea.l    (a7), a0
0006a8: 17680003000b move.b     $3(a0), $b(a3)
0006ae: 2057         movea.l    (a7), a0
0006b0: 022800fe0004 andi.b     #$fe, $4(a0)
0006b6: 2017         move.l     (a7), d0
0006b8: 61001436     bsr.w      $1af0
0006bc: 206f000c     movea.l    $c(a7), a0
0006c0: 4a280053     tst.b      $53(a0)
0006c4: 6700000c     beq.w      $6d2
0006c8: 7000         moveq      #$0, d0
0006ca: 102b000c     move.b     $c(a3), d0
0006ce: 4c004004     mulu.l     d0, d4
0006d2: 2004         move.l     d4, d0
0006d4: 4fef000c     lea.l      $c(a7), a7
0006d8: 60000004     bra.w      $6de
0006dc: 4e71         nop        
0006de: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
0006e4: 4e5d         unlk       a5
0006e6: 4e75         rts        
0006e8: 4e550000     link.w     a5, #$0
0006ec: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0006f0: 4feffff4     lea.l      -$c(a7), a7
0006f4: 703c         moveq      #$3c, d0
0006f6: d0af000c     add.l      $c(a7), d0
0006fa: 2640         movea.l    d0, a3
0006fc: 206f000c     movea.l    $c(a7), a0
000700: 2ea8003c     move.l     $3c(a0), (a7)
000704: 206f000c     movea.l    $c(a7), a0
000708: 20680004     movea.l    $4(a0), a0
00070c: 24680004     movea.l    $4(a0), a2
000710: 206f002c     movea.l    $2c(a7), a0
000714: 28280004     move.l     $4(a0), d4
000718: 206f000c     movea.l    $c(a7), a0
00071c: 4a280053     tst.b      $53(a0)
000720: 6700000c     beq.w      $72e
000724: 7000         moveq      #$0, d0
000726: 102b000c     move.b     $c(a3), d0
00072a: 4c404804     divs.l     d0, d4
00072e: 206f002c     movea.l    $2c(a7), a0
000732: 2f6800200004 move.l     $20(a0), $4(a7)
000738: 082b0001000a btst.b     #$1, $a(a3)
00073e: 67000042     beq.w      $782
000742: 60000032     bra.w      $776
000746: 7001         moveq      #$1, d0
000748: 61002176     bsr.w      $28c0
00074c: 206f0010     movea.l    $10(a7), a0
000750: 0c6800020026 cmpi.w     #$2, $26(a0)
000756: 67000010     beq.w      $768
00075a: 206f0010     movea.l    $10(a7), a0
00075e: 0c6800030026 cmpi.w     #$3, $26(a0)
000764: 66000010     bne.w      $776
000768: 203cffffff1c move.l     #$ffffff1c, d0
00076e: 4fef000c     lea.l      $c(a7), a7
000772: 600000a4     bra.w      $818
000776: 2057         movea.l    (a7), a0
000778: 082800000004 btst.b     #$0, $4(a0)
00077e: 6600ffc6     bne.w      $746
000782: 2217         move.l     (a7), d1
000784: 200a         move.l     a2, d0
000786: 610012fc     bsr.w      $1a84
00078a: 4a80         tst.l      d0
00078c: 66000010     bne.w      $79e
000790: 202a003a     move.l     $3a(a2), d0
000794: 4480         neg.l      d0
000796: 4fef000c     lea.l      $c(a7), a7
00079a: 6000007c     bra.w      $818
00079e: 2057         movea.l    (a7), a0
0007a0: 08e800000004 bset.b     #$0, $4(a0)
0007a6: 7000         moveq      #$0, d0
0007a8: 102b000d     move.b     $d(a3), d0
0007ac: 7200         moveq      #$0, d1
0007ae: 122b000c     move.b     $c(a3), d1
0007b2: 4c041001     mulu.l     d4, d1
0007b6: b081         cmp.l      d1, d0
0007b8: 64000014     bcc.w      $7ce
0007bc: 7000         moveq      #$0, d0
0007be: 102b000d     move.b     $d(a3), d0
0007c2: 7200         moveq      #$0, d1
0007c4: 122b000c     move.b     $c(a3), d1
0007c8: 81c1         divs.w     d1, d0
0007ca: 48c0         ext.l      d0
0007cc: 2800         move.l     d0, d4
0007ce: 2f04         move.l     d4, -(a7)
0007d0: 222f0008     move.l     $8(a7), d1
0007d4: 202b000e     move.l     $e(a3), d0
0007d8: 206b0004     movea.l    $4(a3), a0
0007dc: 4e90         jsr        (a0)
0007de: 588f         addq.l     #$4, a7
0007e0: 2057         movea.l    (a7), a0
0007e2: 52280003     addq.b     #$1, $3(a0)
0007e6: 66000008     bne.w      $7f0
0007ea: 2057         movea.l    (a7), a0
0007ec: 52280003     addq.b     #$1, $3(a0)
0007f0: 2017         move.l     (a7), d0
0007f2: 610012fc     bsr.w      $1af0
0007f6: 206f000c     movea.l    $c(a7), a0
0007fa: 4a280053     tst.b      $53(a0)
0007fe: 6700000c     beq.w      $80c
000802: 7000         moveq      #$0, d0
000804: 102b000c     move.b     $c(a3), d0
000808: 4c004004     mulu.l     d0, d4
00080c: 2004         move.l     d4, d0
00080e: 4fef000c     lea.l      $c(a7), a7
000812: 60000004     bra.w      $818
000816: 4e71         nop        
000818: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
00081e: 4e5d         unlk       a5
000820: 4e75         rts        
000822: 4e550000     link.w     a5, #$0
000826: 48e7c000     movem.l    d0-d1, -(a7)
00082a: 203cffffff35 move.l     #$ffffff35, d0
000830: 60000004     bra.w      $836
000834: 4e71         nop        
000836: 4e5d         unlk       a5
000838: 4e75         rts        
00083a: 4e550000     link.w     a5, #$0
00083e: 48e7c000     movem.l    d0-d1, -(a7)
000842: 203cffffff35 move.l     #$ffffff35, d0
000848: 60000004     bra.w      $84e
00084c: 4e71         nop        
00084e: 4e5d         unlk       a5
000850: 4e75         rts        
000852: 4e550000     link.w     a5, #$0
000856: 48e7c8e0     movem.l    d0-d1/d4/a0-a2, -(a7)
00085a: 4fefffe6     lea.l      -$1a(a7), a7
00085e: 206f001a     movea.l    $1a(a7), a0
000862: 20680004     movea.l    $4(a0), a0
000866: 24680004     movea.l    $4(a0), a2
00086a: 206f003a     movea.l    $3a(a7), a0
00086e: 203c0000ffff move.l     #$ffff, d0
000874: c0a80004     and.l      $4(a0), d0
000878: 2800         move.l     d0, d4
00087a: 600001c4     bra.w      $a40
00087e: 600002be     bra.w      $b3e
000882: 703e         moveq      #$3e, d0
000884: d08a         add.l      a2, d0
000886: 4fef001a     lea.l      $1a(a7), a7
00088a: 600002be     bra.w      $b4a
00088e: 600002ae     bra.w      $b3e
000892: 206f003a     movea.l    $3a(a7), a0
000896: 1f6800230019 move.b     $23(a0), $19(a7)
00089c: 206f001e     movea.l    $1e(a7), a0
0008a0: 7000         moveq      #$0, d0
0008a2: 3010         move.w     (a0), d0
0008a4: 2f00         move.l     d0, -(a7)
0008a6: 7000         moveq      #$0, d0
0008a8: 102f001d     move.b     $1d(a7), d0
0008ac: 2200         move.l     d0, d1
0008ae: 703e         moveq      #$3e, d0
0008b0: d08a         add.l      a2, d0
0008b2: 61001a48     bsr.w      $22fc
0008b6: 588f         addq.l     #$4, a7
0008b8: 4fef001a     lea.l      $1a(a7), a7
0008bc: 6000028c     bra.w      $b4a
0008c0: 6000027c     bra.w      $b3e
0008c4: 206f003a     movea.l    $3a(a7), a0
0008c8: 1f6800230019 move.b     $23(a0), $19(a7)
0008ce: 202a002e     move.l     $2e(a2), d0
0008d2: 61002116     bsr.w      $29ea
0008d6: 2f400010     move.l     d0, $10(a7)
0008da: 206f001e     movea.l    $1e(a7), a0
0008de: 7000         moveq      #$0, d0
0008e0: 3010         move.w     (a0), d0
0008e2: 2f00         move.l     d0, -(a7)
0008e4: 7000         moveq      #$0, d0
0008e6: 102f001d     move.b     $1d(a7), d0
0008ea: 2200         move.l     d0, d1
0008ec: 703e         moveq      #$3e, d0
0008ee: d08a         add.l      a2, d0
0008f0: 61001a64     bsr.w      $2356
0008f4: 588f         addq.l     #$4, a7
0008f6: 2f400014     move.l     d0, $14(a7)
0008fa: 202f0010     move.l     $10(a7), d0
0008fe: 610020ea     bsr.w      $29ea
000902: 202f0014     move.l     $14(a7), d0
000906: 4fef001a     lea.l      $1a(a7), a7
00090a: 6000023e     bra.w      $b4a
00090e: 6000022e     bra.w      $b3e
000912: 206f001a     movea.l    $1a(a7), a0
000916: 2068003c     movea.l    $3c(a0), a0
00091a: 226f001a     movea.l    $1a(a7), a1
00091e: 10290047     move.b     $47(a1), d0
000922: b0280003     cmp.b      $3(a0), d0
000926: 67000008     beq.w      $930
00092a: 7001         moveq      #$1, d0
00092c: 60000004     bra.w      $932
000930: 7000         moveq      #$0, d0
000932: 4fef001a     lea.l      $1a(a7), a7
000936: 60000212     bra.w      $b4a
00093a: 60000202     bra.w      $b3e
00093e: 206f003a     movea.l    $3a(a7), a0
000942: 2f680020000c move.l     $20(a0), $c(a7)
000948: 48780012     pea.l      $12.w
00094c: 703c         moveq      #$3c, d0
00094e: d0af001e     add.l      $1e(a7), d0
000952: 2200         move.l     d0, d1
000954: 202f0010     move.l     $10(a7), d0
000958: 61002ef6     bsr.w      $3850
00095c: 588f         addq.l     #$4, a7
00095e: 48780008     pea.l      $8.w
000962: 206f001e     movea.l    $1e(a7), a0
000966: 2228003c     move.l     $3c(a0), d1
00096a: 7012         moveq      #$12, d0
00096c: d0af0010     add.l      $10(a7), d0
000970: 61002ede     bsr.w      $3850
000974: 588f         addq.l     #$4, a7
000976: 600001c6     bra.w      $b3e
00097a: 703c         moveq      #$3c, d0
00097c: d0af001a     add.l      $1a(a7), d0
000980: 4fef001a     lea.l      $1a(a7), a7
000984: 600001c4     bra.w      $b4a
000988: 600001b4     bra.w      $b3e
00098c: 206f001a     movea.l    $1a(a7), a0
000990: 2028003c     move.l     $3c(a0), d0
000994: 4fef001a     lea.l      $1a(a7), a7
000998: 600001b0     bra.w      $b4a
00099c: 600001a0     bra.w      $b3e
0009a0: 206f001a     movea.l    $1a(a7), a0
0009a4: 2028003c     move.l     $3c(a0), d0
0009a8: 5c80         addq.l     #$6, d0
0009aa: 206f001a     movea.l    $1a(a7), a0
0009ae: 2228004a     move.l     $4a(a0), d1
0009b2: 9280         sub.l      d0, d1
0009b4: 2001         move.l     d1, d0
0009b6: 4fef001a     lea.l      $1a(a7), a7
0009ba: 6000018e     bra.w      $b4a
0009be: 6000017e     bra.w      $b3e
0009c2: 206f001a     movea.l    $1a(a7), a0
0009c6: 2068003c     movea.l    $3c(a0), a0
0009ca: 7000         moveq      #$0, d0
0009cc: 10280004     move.b     $4(a0), d0
0009d0: 4fef001a     lea.l      $1a(a7), a7
0009d4: 60000174     bra.w      $b4a
0009d8: 60000164     bra.w      $b3e
0009dc: 206f001a     movea.l    $1a(a7), a0
0009e0: 7000         moveq      #$0, d0
0009e2: 10280048     move.b     $48(a0), d0
0009e6: 4fef001a     lea.l      $1a(a7), a7
0009ea: 6000015e     bra.w      $b4a
0009ee: 6000014e     bra.w      $b3e
0009f2: 42a7         clr.l      -(a7)
0009f4: 2f04         move.l     d4, -(a7)
0009f6: 222f0026     move.l     $26(a7), d1
0009fa: 200a         move.l     a2, d0
0009fc: 610006ba     bsr.w      $10b8
000a00: 508f         addq.l     #$8, a7
000a02: 4fef001a     lea.l      $1a(a7), a7
000a06: 60000142     bra.w      $b4a
000a0a: 60000132     bra.w      $b3e
000a0e: 202a0094     move.l     $94(a2), d0
000a12: 4fef001a     lea.l      $1a(a7), a7
000a16: 60000132     bra.w      $b4a
000a1a: 60000122     bra.w      $b3e
000a1e: 202a00a0     move.l     $a0(a2), d0
000a22: 4fef001a     lea.l      $1a(a7), a7
000a26: 60000122     bra.w      $b4a
000a2a: 60000112     bra.w      $b3e
000a2e: 203cffffff30 move.l     #$ffffff30, d0
000a34: 4fef001a     lea.l      $1a(a7), a7
000a38: 60000110     bra.w      $b4a
000a3c: 60000100     bra.w      $b3e
000a40: 0c8400000800 cmpi.l     #$800, d4
000a46: 6700ff94     beq.w      $9dc
000a4a: 6200007a     bhi.w      $ac6
000a4e: 0c44070a     cmpi.w     #$70a, d4
000a52: 6700ff9e     beq.w      $9f2
000a56: 6200003e     bhi.w      $a96
000a5a: 0c440703     cmpi.w     #$703, d4
000a5e: 6700ff92     beq.w      $9f2
000a62: 6200001a     bhi.w      $a7e
000a66: 0c8400000702 cmpi.l     #$702, d4
000a6c: 6700ff84     beq.w      $9f2
000a70: 6200ffbc     bhi.w      $a2e
000a74: 4a44         tst.w      d4
000a76: 6700fe06     beq.w      $87e
000a7a: 6000ffb2     bra.w      $a2e
000a7e: 0c440708     cmpi.w     #$708, d4
000a82: 6700ff6e     beq.w      $9f2
000a86: 6200ffa6     bhi.w      $a2e
000a8a: 0c440704     cmpi.w     #$704, d4
000a8e: 6700ff62     beq.w      $9f2
000a92: 6000ff9a     bra.w      $a2e
000a96: 0c440780     cmpi.w     #$780, d4
000a9a: 6700ff72     beq.w      $a0e
000a9e: 6200001a     bhi.w      $aba
000aa2: 0c44070e     cmpi.w     #$70e, d4
000aa6: 6700ff4a     beq.w      $9f2
000aaa: 6200ff82     bhi.w      $a2e
000aae: 0c44070c     cmpi.w     #$70c, d4
000ab2: 6700ff3e     beq.w      $9f2
000ab6: 6000ff76     bra.w      $a2e
000aba: 0c440783     cmpi.w     #$783, d4
000abe: 6700ff5e     beq.w      $a1e
000ac2: 6000ff6a     bra.w      $a2e
000ac6: 0c8400000806 cmpi.l     #$806, d4
000acc: 6700fef4     beq.w      $9c2
000ad0: 62000038     bhi.w      $b0a
000ad4: 0c440804     cmpi.w     #$804, d4
000ad8: 6700fea0     beq.w      $97a
000adc: 6200001e     bhi.w      $afc
000ae0: 0c8400000803 cmpi.l     #$803, d4
000ae6: 6700fe56     beq.w      $93e
000aea: 6200ff42     bhi.w      $a2e
000aee: 0c8400000802 cmpi.l     #$802, d4
000af4: 6700fe1c     beq.w      $912
000af8: 6000ff34     bra.w      $a2e
000afc: 0c8400000805 cmpi.l     #$805, d4
000b02: 6700fe88     beq.w      $98c
000b06: 6000ff26     bra.w      $a2e
000b0a: 0c8400000903 cmpi.l     #$903, d4
000b10: 6700fd80     beq.w      $892
000b14: 6200001a     bhi.w      $b30
000b18: 0c440900     cmpi.w     #$900, d4
000b1c: 6700fda6     beq.w      $8c4
000b20: 6200ff0c     bhi.w      $a2e
000b24: 0c440808     cmpi.w     #$808, d4
000b28: 6700fe76     beq.w      $9a0
000b2c: 6000ff00     bra.w      $a2e
000b30: 0c8400000905 cmpi.l     #$905, d4
000b36: 6700fd4a     beq.w      $882
000b3a: 6000fef2     bra.w      $a2e
000b3e: 7000         moveq      #$0, d0
000b40: 4fef001a     lea.l      $1a(a7), a7
000b44: 60000004     bra.w      $b4a
000b48: 4e71         nop        
000b4a: 4ced0710fff0 movem.l    -$10(a5), d4/a0-a2
000b50: 4e5d         unlk       a5
000b52: 4e75         rts        
000b54: 4e550000     link.w     a5, #$0
000b58: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
000b5c: 4fefffdc     lea.l      -$24(a7), a7
000b60: 206f0024     movea.l    $24(a7), a0
000b64: 20680004     movea.l    $4(a0), a0
000b68: 24680004     movea.l    $4(a0), a2
000b6c: 206f0040     movea.l    $40(a7), a0
000b70: 203c0000ffff move.l     #$ffff, d0
000b76: c0a80004     and.l      $4(a0), d0
000b7a: 2f400020     move.l     d0, $20(a7)
000b7e: 60000350     bra.w      $ed0
000b82: 60000438     bra.w      $fbc
000b86: 206f0040     movea.l    $40(a7), a0
000b8a: 1f6800230013 move.b     $23(a0), $13(a7)
000b90: 202a002e     move.l     $2e(a2), d0
000b94: 61001e54     bsr.w      $29ea
000b98: 2f40001c     move.l     d0, $1c(a7)
000b9c: 206f0028     movea.l    $28(a7), a0
000ba0: 7000         moveq      #$0, d0
000ba2: 3010         move.w     (a0), d0
000ba4: 2f00         move.l     d0, -(a7)
000ba6: 7000         moveq      #$0, d0
000ba8: 102f0017     move.b     $17(a7), d0
000bac: 2200         move.l     d0, d1
000bae: 703e         moveq      #$3e, d0
000bb0: d08a         add.l      a2, d0
000bb2: 61001832     bsr.w      $23e6
000bb6: 588f         addq.l     #$4, a7
000bb8: 2f400018     move.l     d0, $18(a7)
000bbc: 202f001c     move.l     $1c(a7), d0
000bc0: 61001e28     bsr.w      $29ea
000bc4: 202f0018     move.l     $18(a7), d0
000bc8: 4fef0024     lea.l      $24(a7), a7
000bcc: 600003fa     bra.w      $fc8
000bd0: 600003ea     bra.w      $fbc
000bd4: 206f0040     movea.l    $40(a7), a0
000bd8: 1f6800230013 move.b     $23(a0), $13(a7)
000bde: 42af0018     clr.l      $18(a7)
000be2: 0c2f00800013 cmpi.b     #$80, $13(a7)
000be8: 65000014     bcs.w      $bfe
000bec: 7000         moveq      #$0, d0
000bee: 102f0013     move.b     $13(a7), d0
000bf2: 2200         move.l     d0, d1
000bf4: 200a         move.l     a2, d0
000bf6: 610006c2     bsr.w      $12ba
000bfa: 2f400018     move.l     d0, $18(a7)
000bfe: 202a002e     move.l     $2e(a2), d0
000c02: 61001de6     bsr.w      $29ea
000c06: 2f40001c     move.l     d0, $1c(a7)
000c0a: 7000         moveq      #$0, d0
000c0c: 102f0013     move.b     $13(a7), d0
000c10: 2200         move.l     d0, d1
000c12: 703e         moveq      #$3e, d0
000c14: d08a         add.l      a2, d0
000c16: 6100187e     bsr.w      $2496
000c1a: 202f001c     move.l     $1c(a7), d0
000c1e: 61001dca     bsr.w      $29ea
000c22: 202f0018     move.l     $18(a7), d0
000c26: 4fef0024     lea.l      $24(a7), a7
000c2a: 6000039c     bra.w      $fc8
000c2e: 6000038c     bra.w      $fbc
000c32: 202a002e     move.l     $2e(a2), d0
000c36: 61001db2     bsr.w      $29ea
000c3a: 2f40001c     move.l     d0, $1c(a7)
000c3e: 206f0028     movea.l    $28(a7), a0
000c42: 7000         moveq      #$0, d0
000c44: 3010         move.w     (a0), d0
000c46: 2200         move.l     d0, d1
000c48: 703e         moveq      #$3e, d0
000c4a: d08a         add.l      a2, d0
000c4c: 610018ce     bsr.w      $251c
000c50: 202f001c     move.l     $1c(a7), d0
000c54: 61001d94     bsr.w      $29ea
000c58: 60000362     bra.w      $fbc
000c5c: 206f0040     movea.l    $40(a7), a0
000c60: 226f0024     movea.l    $24(a7), a1
000c64: 136800230052 move.b     $23(a0), $52(a1)
000c6a: 60000350     bra.w      $fbc
000c6e: 206f0024     movea.l    $24(a7), a0
000c72: 4a280052     tst.b      $52(a0)
000c76: 66000010     bne.w      $c88
000c7a: 203cfffffefd move.l     #$fffffefd, d0
000c80: 4fef0024     lea.l      $24(a7), a7
000c84: 60000342     bra.w      $fc8
000c88: 206f0040     movea.l    $40(a7), a0
000c8c: 1f6800230011 move.b     $23(a0), $11(a7)
000c92: 6000005e     bra.w      $cf2
000c96: 7000         moveq      #$0, d0
000c98: 102f0011     move.b     $11(a7), d0
000c9c: 2f40000c     move.l     d0, $c(a7)
000ca0: 6000007a     bra.w      $d1c
000ca4: 7000         moveq      #$0, d0
000ca6: 102f0011     move.b     $11(a7), d0
000caa: e388         lsl.l      #$1, d0
000cac: 2f40000c     move.l     d0, $c(a7)
000cb0: 6000006a     bra.w      $d1c
000cb4: 7000         moveq      #$0, d0
000cb6: 102f0011     move.b     $11(a7), d0
000cba: e588         lsl.l      #$2, d0
000cbc: 2f40000c     move.l     d0, $c(a7)
000cc0: 6000005a     bra.w      $d1c
000cc4: 7000         moveq      #$0, d0
000cc6: 102f0011     move.b     $11(a7), d0
000cca: e588         lsl.l      #$2, d0
000ccc: 2f40000c     move.l     d0, $c(a7)
000cd0: 6000004a     bra.w      $d1c
000cd4: 7000         moveq      #$0, d0
000cd6: 102f0011     move.b     $11(a7), d0
000cda: e788         lsl.l      #$3, d0
000cdc: 2f40000c     move.l     d0, $c(a7)
000ce0: 6000003a     bra.w      $d1c
000ce4: 203cfffffefd move.l     #$fffffefd, d0
000cea: 4fef0024     lea.l      $24(a7), a7
000cee: 600002d8     bra.w      $fc8
000cf2: 206f0024     movea.l    $24(a7), a0
000cf6: 700f         moveq      #$f, d0
000cf8: c0280052     and.b      $52(a0), d0
000cfc: 7200         moveq      #$0, d1
000cfe: 1200         move.b     d0, d1
000d00: 5341         subq.w     #$1, d1
000d02: 0c410004     cmpi.w     #$4, d1
000d06: 6200ffdc     bhi.w      $ce4
000d0a: 323b1206     move.w     $d12(pc, d1.w), d1
000d0e: 4efb1002     jmp        $d12(pc, d1.w)
000d12: ff84         dc.w       $ff84
000d14: ff92         dc.w       $ff92
000d16: ffa2         dc.w       $ffa2
000d18: ffb2         dc.w       $ffb2
000d1a: ffc2         dc.w       $ffc2
000d1c: 0caf000000f8000c cmpi.l     #$f8, $c(a7)
000d24: 6f000010     ble.w      $d36
000d28: 203cfffffefc move.l     #$fffffefc, d0
000d2e: 4fef0024     lea.l      $24(a7), a7
000d32: 60000294     bra.w      $fc8
000d36: 206f0024     movea.l    $24(a7), a0
000d3a: 0c280080002b cmpi.b     #$80, $2b(a0)
000d40: 6500001c     bcs.w      $d5e
000d44: 202a0090     move.l     $90(a2), d0
000d48: 206f0024     movea.l    $24(a7), a0
000d4c: 7200         moveq      #$0, d1
000d4e: 12280044     move.b     $44(a0), d1
000d52: e189         lsl.l      #$8, d1
000d54: d081         add.l      d1, d0
000d56: 2f400008     move.l     d0, $8(a7)
000d5a: 60000032     bra.w      $d8e
000d5e: 2f2f000c     move.l     $c(a7), -(a7)
000d62: 206f0028     movea.l    $28(a7), a0
000d66: 7000         moveq      #$0, d0
000d68: 1028002b     move.b     $2b(a0), d0
000d6c: 2200         move.l     d0, d1
000d6e: 7066         moveq      #$66, d0
000d70: d08a         add.l      a2, d0
000d72: 61001876     bsr.w      $25ea
000d76: 588f         addq.l     #$4, a7
000d78: 2f400008     move.l     d0, $8(a7)
000d7c: 66000010     bne.w      $d8e
000d80: 203cfffffefe move.l     #$fffffefe, d0
000d86: 4fef0024     lea.l      $24(a7), a7
000d8a: 6000023c     bra.w      $fc8
000d8e: 206f0008     movea.l    $8(a7), a0
000d92: 4210         clr.b      (a0)
000d94: 206f0008     movea.l    $8(a7), a0
000d98: 42280001     clr.b      $1(a0)
000d9c: 206f0024     movea.l    $24(a7), a0
000da0: 226f0008     movea.l    $8(a7), a1
000da4: 136800520002 move.b     $52(a0), $2(a1)
000daa: 206f0008     movea.l    $8(a7), a0
000dae: 42280003     clr.b      $3(a0)
000db2: 206f0008     movea.l    $8(a7), a0
000db6: 116f000f0005 move.b     $f(a7), $5(a0)
000dbc: 206f0008     movea.l    $8(a7), a0
000dc0: 117c00020004 move.b     #$2, $4(a0)
000dc6: 600001f4     bra.w      $fbc
000dca: 206f0024     movea.l    $24(a7), a0
000dce: 2f68003c0008 move.l     $3c(a0), $8(a7)
000dd4: 206f0040     movea.l    $40(a7), a0
000dd8: 1f6800230001 move.b     $23(a0), $1(a7)
000dde: 206f0008     movea.l    $8(a7), a0
000de2: 102f0001     move.b     $1(a7), d0
000de6: b0280005     cmp.b      $5(a0), d0
000dea: 65000014     bcs.w      $e00
000dee: 203cfffffefc move.l     #$fffffefc, d0
000df4: 4fef0024     lea.l      $24(a7), a7
000df8: 600001ce     bra.w      $fc8
000dfc: 6000002c     bra.w      $e2a
000e00: 202f0008     move.l     $8(a7), d0
000e04: 5c80         addq.l     #$6, d0
000e06: 7200         moveq      #$0, d1
000e08: 122f0001     move.b     $1(a7), d1
000e0c: d081         add.l      d1, d0
000e0e: 206f0024     movea.l    $24(a7), a0
000e12: 2140004a     move.l     d0, $4a(a0)
000e16: 206f0008     movea.l    $8(a7), a0
000e1a: 10280005     move.b     $5(a0), d0
000e1e: 902f0001     sub.b      $1(a7), d0
000e22: 206f0024     movea.l    $24(a7), a0
000e26: 11400049     move.b     d0, $49(a0)
000e2a: 7000         moveq      #$0, d0
000e2c: 102f0001     move.b     $1(a7), d0
000e30: 4fef0024     lea.l      $24(a7), a7
000e34: 60000192     bra.w      $fc8
000e38: 60000182     bra.w      $fbc
000e3c: 206f0024     movea.l    $24(a7), a0
000e40: 117c00010053 move.b     #$1, $53(a0)
000e46: 60000174     bra.w      $fbc
000e4a: 206f0040     movea.l    $40(a7), a0
000e4e: 1f6800230003 move.b     $23(a0), $3(a7)
000e54: 7000         moveq      #$0, d0
000e56: 102f0003     move.b     $3(a7), d0
000e5a: 2f00         move.l     d0, -(a7)
000e5c: 2f2f0024     move.l     $24(a7), -(a7)
000e60: 222f0030     move.l     $30(a7), d1
000e64: 200a         move.l     a2, d0
000e66: 61000250     bsr.w      $10b8
000e6a: 508f         addq.l     #$8, a7
000e6c: 4fef0024     lea.l      $24(a7), a7
000e70: 60000156     bra.w      $fc8
000e74: 60000146     bra.w      $fbc
000e78: 61000c90     bsr.w      $1b0a
000e7c: 4fef0024     lea.l      $24(a7), a7
000e80: 60000146     bra.w      $fc8
000e84: 60000136     bra.w      $fbc
000e88: 206f0040     movea.l    $40(a7), a0
000e8c: 1f6800230002 move.b     $23(a0), $2(a7)
000e92: 7000         moveq      #$0, d0
000e94: 102f0002     move.b     $2(a7), d0
000e98: 2200         move.l     d0, d1
000e9a: 202f0024     move.l     $24(a7), d0
000e9e: 61000196     bsr.w      $1036
000ea2: 4fef0024     lea.l      $24(a7), a7
000ea6: 60000120     bra.w      $fc8
000eaa: 60000110     bra.w      $fbc
000eae: 200a         move.l     a2, d0
000eb0: 61000120     bsr.w      $fd2
000eb4: 7000         moveq      #$0, d0
000eb6: 4fef0024     lea.l      $24(a7), a7
000eba: 6000010c     bra.w      $fc8
000ebe: 600000fc     bra.w      $fbc
000ec2: 203cffffff30 move.l     #$ffffff30, d0
000ec8: 4fef0024     lea.l      $24(a7), a7
000ecc: 600000fa     bra.w      $fc8
000ed0: 202f0020     move.l     $20(a7), d0
000ed4: 0c8000000785 cmpi.l     #$785, d0
000eda: 6700ffd2     beq.w      $eae
000ede: 62000070     bhi.w      $f50
000ee2: 0c400706     cmpi.w     #$706, d0
000ee6: 6700ff62     beq.w      $e4a
000eea: 62000034     bhi.w      $f20
000eee: 0c400701     cmpi.w     #$701, d0
000ef2: 6700ff56     beq.w      $e4a
000ef6: 6200001a     bhi.w      $f12
000efa: 0c8000000700 cmpi.l     #$700, d0
000f00: 6700ff48     beq.w      $e4a
000f04: 6200ffbc     bhi.w      $ec2
000f08: 4a40         tst.w      d0
000f0a: 6700fc76     beq.w      $b82
000f0e: 6000ffb2     bra.w      $ec2
000f12: 0c8000000705 cmpi.l     #$705, d0
000f18: 6700ff30     beq.w      $e4a
000f1c: 6000ffa4     bra.w      $ec2
000f20: 0c40070d     cmpi.w     #$70d, d0
000f24: 6700ff24     beq.w      $e4a
000f28: 6200001a     bhi.w      $f44
000f2c: 0c40070b     cmpi.w     #$70b, d0
000f30: 6700ff46     beq.w      $e78
000f34: 6200ff8c     bhi.w      $ec2
000f38: 0c400709     cmpi.w     #$709, d0
000f3c: 6700ff0c     beq.w      $e4a
000f40: 6000ff80     bra.w      $ec2
000f44: 0c40070f     cmpi.w     #$70f, d0
000f48: 6700ff00     beq.w      $e4a
000f4c: 6000ff74     bra.w      $ec2
000f50: 0c8000000809 cmpi.l     #$809, d0
000f56: 6700fee4     beq.w      $e3c
000f5a: 62000036     bhi.w      $f92
000f5e: 0c400807     cmpi.w     #$807, d0
000f62: 6700ff24     beq.w      $e88
000f66: 6200001c     bhi.w      $f84
000f6a: 0c400801     cmpi.w     #$801, d0
000f6e: 6700fcec     beq.w      $c5c
000f72: 6200ff4e     bhi.w      $ec2
000f76: 0c8000000800 cmpi.l     #$800, d0
000f7c: 6700fcf0     beq.w      $c6e
000f80: 6000ff40     bra.w      $ec2
000f84: 0c8000000808 cmpi.l     #$808, d0
000f8a: 6700fe3e     beq.w      $dca
000f8e: 6000ff32     bra.w      $ec2
000f92: 0c8000000902 cmpi.l     #$902, d0
000f98: 6700fc3a     beq.w      $bd4
000f9c: 62000010     bhi.w      $fae
000fa0: 0c8000000901 cmpi.l     #$901, d0
000fa6: 6700fbde     beq.w      $b86
000faa: 6000ff16     bra.w      $ec2
000fae: 0c8000000904 cmpi.l     #$904, d0
000fb4: 6700fc7c     beq.w      $c32
000fb8: 6000ff08     bra.w      $ec2
000fbc: 7000         moveq      #$0, d0
000fbe: 4fef0024     lea.l      $24(a7), a7
000fc2: 60000004     bra.w      $fc8
000fc6: 4e71         nop        
000fc8: 4ced0700fff4 movem.l    -$c(a5), a0-a2
000fce: 4e5d         unlk       a5
000fd0: 4e75         rts        
000fd2: 4e550000     link.w     a5, #$0
000fd6: 48e780e0     movem.l    d0/a0-a2, -(a7)
000fda: 2440         movea.l    d0, a2
000fdc: 518f         subq.l     #$8, a7
000fde: 2f6a00a00004 move.l     $a0(a2), $4(a7)
000fe4: 2ebc00100400 move.l     #$100400, (a7)
000fea: 6000002c     bra.w      $1018
000fee: 2057         movea.l    (a7), a0
000ff0: 226f0004     movea.l    $4(a7), a1
000ff4: 1011         move.b     (a1), d0
000ff6: b010         cmp.b      (a0), d0
000ff8: 67000018     beq.w      $1012
000ffc: 206f0004     movea.l    $4(a7), a0
001000: 2257         movea.l    (a7), a1
001002: 1290         move.b     (a0), (a1)
001004: 206f0004     movea.l    $4(a7), a0
001008: 2257         movea.l    (a7), a1
00100a: 1011         move.b     (a1), d0
00100c: b010         cmp.b      (a0), d0
00100e: 6600fff4     bne.w      $1004
001012: 5297         addq.l     #$1, (a7)
001014: 52af0004     addq.l     #$1, $4(a7)
001018: 203c00000400 move.l     #$400, d0
00101e: d0aa00a0     add.l      $a0(a2), d0
001022: b0af0004     cmp.l      $4(a7), d0
001026: 6200ffc6     bhi.w      $fee
00102a: 508f         addq.l     #$8, a7
00102c: 4ced0700fff4 movem.l    -$c(a5), a0-a2
001032: 4e5d         unlk       a5
001034: 4e75         rts        
001036: 4e550000     link.w     a5, #$0
00103a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00103e: 2057         movea.l    (a7), a0
001040: 2068003c     movea.l    $3c(a0), a0
001044: 102f0007     move.b     $7(a7), d0
001048: 11400006     move.b     d0, $6(a0)
00104c: 49c0         extb.l     d0
00104e: 60000004     bra.w      $1054
001052: 4e71         nop        
001054: 4ced0100fffc movem.l    -$4(a5), a0
00105a: 4e5d         unlk       a5
00105c: 4e75         rts        
00105e: 4e550000     link.w     a5, #$0
001062: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001066: 598f         subq.l     #$4, a7
001068: 206f0004     movea.l    $4(a7), a0
00106c: 20680004     movea.l    $4(a0), a0
001070: 24680004     movea.l    $4(a0), a2
001074: 206f0004     movea.l    $4(a7), a0
001078: 0c280002002a cmpi.b     #$2, $2a(a0)
00107e: 66000024     bne.w      $10a4
001082: 202a002e     move.l     $2e(a2), d0
001086: 61001962     bsr.w      $29ea
00108a: 2e80         move.l     d0, (a7)
00108c: 206f0008     movea.l    $8(a7), a0
001090: 7000         moveq      #$0, d0
001092: 3010         move.w     (a0), d0
001094: 2200         move.l     d0, d1
001096: 703e         moveq      #$3e, d0
001098: d08a         add.l      a2, d0
00109a: 61001480     bsr.w      $251c
00109e: 2017         move.l     (a7), d0
0010a0: 61001948     bsr.w      $29ea
0010a4: 7000         moveq      #$0, d0
0010a6: 588f         addq.l     #$4, a7
0010a8: 60000004     bra.w      $10ae
0010ac: 4e71         nop        
0010ae: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0010b4: 4e5d         unlk       a5
0010b6: 4e75         rts        
0010b8: 4e550000     link.w     a5, #$0
0010bc: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0010c0: 2440         movea.l    d0, a2
0010c2: 4fefffd8     lea.l      -$28(a7), a7
0010c6: 42af0004     clr.l      $4(a7)
0010ca: 206f002c     movea.l    $2c(a7), a0
0010ce: 1f6800010024 move.b     $1(a0), $24(a7)
0010d4: 103c00ff     move.b     #$ff, d0
0010d8: c02f0043     and.b      $43(a7), d0
0010dc: 1f400025     move.b     d0, $25(a7)
0010e0: 1f6f00470026 move.b     $47(a7), $26(a7)
0010e6: 6000002e     bra.w      $1116
0010ea: 202f000e     move.l     $e(a7), d0
0010ee: 81aa0036     or.l       d0, $36(a2)
0010f2: 7001         moveq      #$1, d0
0010f4: 610017ca     bsr.w      $28c0
0010f8: 52af0004     addq.l     #$1, $4(a7)
0010fc: 700a         moveq      #$a, d0
0010fe: b0af0004     cmp.l      $4(a7), d0
001102: 6c000012     bge.w      $1116
001106: 08ea00060035 bset.b     #$6, $35(a2)
00110c: 70fb         moveq      #$fb, d0
00110e: 4fef0028     lea.l      $28(a7), a7
001112: 6000019c     bra.w      $12b0
001116: 486f0012     pea.l      $12(a7)
00111a: 7204         moveq      #$4, d1
00111c: 7007         moveq      #$7, d0
00111e: 61000a42     bsr.w      $1b62
001122: 588f         addq.l     #$4, a7
001124: 2f40000e     move.l     d0, $e(a7)
001128: 6600ffc0     bne.w      $10ea
00112c: 206f002c     movea.l    $2c(a7), a0
001130: 7000         moveq      #$0, d0
001132: 3010         move.w     (a0), d0
001134: 25400098     move.l     d0, $98(a2)
001138: 486f0012     pea.l      $12(a7)
00113c: 41ef0028     lea.l      $28(a7), a0
001140: 2208         move.l     a0, d1
001142: 7004         moveq      #$4, d0
001144: 61000b38     bsr.w      $1c7e
001148: 588f         addq.l     #$4, a7
00114a: 2f40000e     move.l     d0, $e(a7)
00114e: 66000014     bne.w      $1164
001152: 41ef0012     lea.l      $12(a7), a0
001156: 2008         move.l     a0, d0
001158: 61000bba     bsr.w      $1d14
00115c: 2f40000e     move.l     d0, $e(a7)
001160: 67000014     beq.w      $1176
001164: 202f000e     move.l     $e(a7), d0
001168: 81aa0036     or.l       d0, $36(a2)
00116c: 70fb         moveq      #$fb, d0
00116e: 4fef0028     lea.l      $28(a7), a7
001172: 6000013c     bra.w      $12b0
001176: 6000004e     bra.w      $11c6
00117a: 700a         moveq      #$a, d0
00117c: 61001742     bsr.w      $28c0
001180: 082a00070035 btst.b     #$7, $35(a2)
001186: 67000010     beq.w      $1198
00118a: 42aa0098     clr.l      $98(a2)
00118e: 70fb         moveq      #$fb, d0
001190: 4fef0028     lea.l      $28(a7), a7
001194: 6000011a     bra.w      $12b0
001198: 206f002c     movea.l    $2c(a7), a0
00119c: 0c6800020026 cmpi.w     #$2, $26(a0)
0011a2: 67000010     beq.w      $11b4
0011a6: 206f002c     movea.l    $2c(a7), a0
0011aa: 0c6800030026 cmpi.w     #$3, $26(a0)
0011b0: 66000014     bne.w      $11c6
0011b4: 42aa0098     clr.l      $98(a2)
0011b8: 203cffffff1c move.l     #$ffffff1c, d0
0011be: 4fef0028     lea.l      $28(a7), a7
0011c2: 600000ec     bra.w      $12b0
0011c6: 4aaa0098     tst.l      $98(a2)
0011ca: 6600ffae     bne.w      $117a
0011ce: 41ef0012     lea.l      $12(a7), a0
0011d2: 2208         move.l     a0, d1
0011d4: 7007         moveq      #$7, d0
0011d6: 61000b96     bsr.w      $1d6e
0011da: 4a80         tst.l      d0
0011dc: 67000012     beq.w      $11f0
0011e0: 08ea00010035 bset.b     #$1, $35(a2)
0011e6: 70fb         moveq      #$fb, d0
0011e8: 4fef0028     lea.l      $28(a7), a7
0011ec: 600000c2     bra.w      $12b0
0011f0: 70ff         moveq      #$ff, d0
0011f2: 2e80         move.l     d0, (a7)
0011f4: 41ef000d     lea.l      $d(a7), a0
0011f8: 2208         move.l     a0, d1
0011fa: 41ef0012     lea.l      $12(a7), a0
0011fe: 2008         move.l     a0, d0
001200: 61000cf0     bsr.w      $1ef2
001204: 6000008e     bra.w      $1294
001208: 486f0008     pea.l      $8(a7)
00120c: 41ef0020     lea.l      $20(a7), a0
001210: 2208         move.l     a0, d1
001212: 41ef0016     lea.l      $16(a7), a0
001216: 2008         move.l     a0, d0
001218: 61000bf0     bsr.w      $1e0a
00121c: 588f         addq.l     #$4, a7
00121e: 2f40000e     move.l     d0, $e(a7)
001222: 66000016     bne.w      $123a
001226: 48780004     pea.l      $4.w
00122a: 222f0020     move.l     $20(a7), d1
00122e: 41ef0024     lea.l      $24(a7), a0
001232: 2008         move.l     a0, d0
001234: 6100261a     bsr.w      $3850
001238: 588f         addq.l     #$4, a7
00123a: 41ef0012     lea.l      $12(a7), a0
00123e: 2008         move.l     a0, d0
001240: 61000cf0     bsr.w      $1f32
001244: 4aaf000e     tst.l      $e(a7)
001248: 6600000c     bne.w      $1256
00124c: 7004         moveq      #$4, d0
00124e: b0af0008     cmp.l      $8(a7), d0
001252: 6700000a     beq.w      $125e
001256: 70fb         moveq      #$fb, d0
001258: 2e80         move.l     d0, (a7)
00125a: 60000020     bra.w      $127c
00125e: 4a2f0022     tst.b      $22(a7)
001262: 6c000010     bge.w      $1274
001266: 7000         moveq      #$0, d0
001268: 102f0023     move.b     $23(a7), d0
00126c: 4480         neg.l      d0
00126e: 2e80         move.l     d0, (a7)
001270: 6000000a     bra.w      $127c
001274: 102f0022     move.b     $22(a7), d0
001278: 49c0         extb.l     d0
00127a: 2e80         move.l     d0, (a7)
00127c: 60000026     bra.w      $12a4
001280: 41ef0012     lea.l      $12(a7), a0
001284: 2008         move.l     a0, d0
001286: 61000caa     bsr.w      $1f32
00128a: 08ea00020035 bset.b     #$2, $35(a2)
001290: 60000012     bra.w      $12a4
001294: 7000         moveq      #$0, d0
001296: 102f000d     move.b     $d(a7), d0
00129a: 4a40         tst.w      d0
00129c: 6700ff6a     beq.w      $1208
0012a0: 6000ffde     bra.w      $1280
0012a4: 2017         move.l     (a7), d0
0012a6: 4fef0028     lea.l      $28(a7), a7
0012aa: 60000004     bra.w      $12b0
0012ae: 4e71         nop        
0012b0: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0012b6: 4e5d         unlk       a5
0012b8: 4e75         rts        
0012ba: 4e550000     link.w     a5, #$0
0012be: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0012c2: 2440         movea.l    d0, a2
0012c4: 4fefffee     lea.l      -$12(a7), a7
0012c8: 4297         clr.l      (a7)
0012ca: 6000002e     bra.w      $12fa
0012ce: 202f0004     move.l     $4(a7), d0
0012d2: 81aa0036     or.l       d0, $36(a2)
0012d6: 7001         moveq      #$1, d0
0012d8: 610015e6     bsr.w      $28c0
0012dc: 5297         addq.l     #$1, (a7)
0012de: 700a         moveq      #$a, d0
0012e0: b097         cmp.l      (a7), d0
0012e2: 6c000016     bge.w      $12fa
0012e6: 08ea00040035 bset.b     #$4, $35(a2)
0012ec: 203cfffffef6 move.l     #$fffffef6, d0
0012f2: 4fef0012     lea.l      $12(a7), a7
0012f6: 60000066     bra.w      $135e
0012fa: 486f0008     pea.l      $8(a7)
0012fe: 7206         moveq      #$6, d1
001300: 7006         moveq      #$6, d0
001302: 6100085e     bsr.w      $1b62
001306: 588f         addq.l     #$4, a7
001308: 2f400004     move.l     d0, $4(a7)
00130c: 6600ffc0     bne.w      $12ce
001310: 486f0008     pea.l      $8(a7)
001314: 41ef001d     lea.l      $1d(a7), a0
001318: 2208         move.l     a0, d1
00131a: 7001         moveq      #$1, d0
00131c: 61000960     bsr.w      $1c7e
001320: 588f         addq.l     #$4, a7
001322: 2f400004     move.l     d0, $4(a7)
001326: 66000014     bne.w      $133c
00132a: 41ef0008     lea.l      $8(a7), a0
00132e: 2008         move.l     a0, d0
001330: 610009e2     bsr.w      $1d14
001334: 2f400004     move.l     d0, $4(a7)
001338: 67000018     beq.w      $1352
00133c: 202f0004     move.l     $4(a7), d0
001340: 81aa0036     or.l       d0, $36(a2)
001344: 203cfffffef6 move.l     #$fffffef6, d0
00134a: 4fef0012     lea.l      $12(a7), a7
00134e: 6000000e     bra.w      $135e
001352: 7000         moveq      #$0, d0
001354: 4fef0012     lea.l      $12(a7), a7
001358: 60000004     bra.w      $135e
00135c: 4e71         nop        
00135e: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001364: 4e5d         unlk       a5
001366: 4e75         rts        
001368: 4e550000     link.w     a5, #$0
00136c: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001370: 2440         movea.l    d0, a2
001372: 4feffff6     lea.l      -$a(a7), a7
001376: 60000114     bra.w      $148c
00137a: 206f0022     movea.l    $22(a7), a0
00137e: 4210         clr.b      (a0)
001380: 7000         moveq      #$0, d0
001382: 4fef000a     lea.l      $a(a7), a7
001386: 60000128     bra.w      $14b0
00138a: 60000118     bra.w      $14a4
00138e: 60000012     bra.w      $13a2
001392: 4a12         tst.b      (a2)
001394: 6600000c     bne.w      $13a2
001398: 7000         moveq      #$0, d0
00139a: 4fef000a     lea.l      $a(a7), a7
00139e: 60000110     bra.w      $14b0
0013a2: 528a         addq.l     #$1, a2
0013a4: 0c12002f     cmpi.b     #$2f, (a2)
0013a8: 6600ffe8     bne.w      $1392
0013ac: 60000036     bra.w      $13e4
0013b0: 206f0022     movea.l    $22(a7), a0
0013b4: 10bc0002     move.b     #$2, (a0)
0013b8: 528a         addq.l     #$1, a2
0013ba: 60000052     bra.w      $140e
0013be: 206f0022     movea.l    $22(a7), a0
0013c2: 10bc0001     move.b     #$1, (a0)
0013c6: 528a         addq.l     #$1, a2
0013c8: 60000044     bra.w      $140e
0013cc: 206f0022     movea.l    $22(a7), a0
0013d0: 10bc0003     move.b     #$3, (a0)
0013d4: 528a         addq.l     #$1, a2
0013d6: 60000036     bra.w      $140e
0013da: 206f0022     movea.l    $22(a7), a0
0013de: 4210         clr.b      (a0)
0013e0: 6000002c     bra.w      $140e
0013e4: 528a         addq.l     #$1, a2
0013e6: 1012         move.b     (a2), d0
0013e8: 4880         ext.w      d0
0013ea: 0c4000ff     cmpi.w     #$ff, d0
0013ee: 6200ffea     bhi.w      $13da
0013f2: 0c000065     cmpi.b     #$65, d0
0013f6: 6700ffb8     beq.w      $13b0
0013fa: 0c000072     cmpi.b     #$72, d0
0013fe: 6700ffcc     beq.w      $13cc
001402: 0c000073     cmpi.b     #$73, d0
001406: 6700ffb6     beq.w      $13be
00140a: 6000ffce     bra.w      $13da
00140e: 2f4a0006     move.l     a2, $6(a7)
001412: 206f0006     movea.l    $6(a7), a0
001416: 0c10005f     cmpi.b     #$5f, (a0)
00141a: 6700000c     beq.w      $1428
00141e: 7000         moveq      #$0, d0
001420: 4fef000a     lea.l      $a(a7), a7
001424: 6000008a     bra.w      $14b0
001428: 42af0002     clr.l      $2(a7)
00142c: 6000001a     bra.w      $1448
001430: 700a         moveq      #$a, d0
001432: 4c2f00000002 mulu.l     $2(a7), d0
001438: 122f0001     move.b     $1(a7), d1
00143c: 49c1         extb.l     d1
00143e: d081         add.l      d1, d0
001440: 7230         moveq      #$30, d1
001442: 9081         sub.l      d1, d0
001444: 2f400002     move.l     d0, $2(a7)
001448: 52af0006     addq.l     #$1, $6(a7)
00144c: 206f0006     movea.l    $6(a7), a0
001450: 1010         move.b     (a0), d0
001452: 1f400001     move.b     d0, $1(a7)
001456: 0c000030     cmpi.b     #$30, d0
00145a: 6d00000c     blt.w      $1468
00145e: 0c2f00390001 cmpi.b     #$39, $1(a7)
001464: 6f00ffca     ble.w      $1430
001468: 206f0006     movea.l    $6(a7), a0
00146c: 52af0006     addq.l     #$1, $6(a7)
001470: 0c10005f     cmpi.b     #$5f, (a0)
001474: 6600000e     bne.w      $1484
001478: 206f000e     movea.l    $e(a7), a0
00147c: 10af0005     move.b     $5(a7), (a0)
001480: 246f0006     movea.l    $6(a7), a2
001484: 6000001e     bra.w      $14a4
001488: 6000001a     bra.w      $14a4
00148c: 1012         move.b     (a2), d0
00148e: 4880         ext.w      d0
001490: 0c40002e     cmpi.w     #$2e, d0
001494: 6700fee4     beq.w      $137a
001498: 0c40002f     cmpi.w     #$2f, d0
00149c: 6700fef0     beq.w      $138e
0014a0: 6000ffe6     bra.w      $1488
0014a4: 200a         move.l     a2, d0
0014a6: 4fef000a     lea.l      $a(a7), a7
0014aa: 60000004     bra.w      $14b0
0014ae: 4e71         nop        
0014b0: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0014b6: 4e5d         unlk       a5
0014b8: 4e75         rts        
0014ba: 4e550000     link.w     a5, #$0
0014be: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0014c2: 558f         subq.l     #$2, a7
0014c4: 206f0002     movea.l    $2(a7), a0
0014c8: 1f68000a0001 move.b     $a(a0), $1(a7)
0014ce: 082f00020001 btst.b     #$2, $1(a7)
0014d4: 67000026     beq.w      $14fc
0014d8: 206f0006     movea.l    $6(a7), a0
0014dc: 102f001d     move.b     $1d(a7), d0
0014e0: b0280002     cmp.b      $2(a0), d0
0014e4: 6700000e     beq.w      $14f4
0014e8: 203cfffffef8 move.l     #$fffffef8, d0
0014ee: 548f         addq.l     #$2, a7
0014f0: 60000214     bra.w      $1706
0014f4: 202f0006     move.l     $6(a7), d0
0014f8: 6100055c     bsr.w      $1a56
0014fc: 600001ca     bra.w      $16c8
001500: 082f00020001 btst.b     #$2, $1(a7)
001506: 67000016     beq.w      $151e
00150a: 41fb01700000043e lea.l      $43e(a16, invalid.w), a0
001512: 226f0002     movea.l    $2(a7), a1
001516: 23480004     move.l     a0, $4(a1)
00151a: 60000012     bra.w      $152e
00151e: 41fb017000000338 lea.l      $338(a16, invalid.w), a0
001526: 226f0002     movea.l    $2(a7), a1
00152a: 23480004     move.l     a0, $4(a1)
00152e: 206f0002     movea.l    $2(a7), a0
001532: 117c0001000c move.b     #$1, $c(a0)
001538: 600001b4     bra.w      $16ee
00153c: 082f00020001 btst.b     #$2, $1(a7)
001542: 67000016     beq.w      $155a
001546: 41fb017000000430 lea.l      $430(a16, invalid.w), a0
00154e: 226f0002     movea.l    $2(a7), a1
001552: 23480004     move.l     a0, $4(a1)
001556: 60000036     bra.w      $158e
00155a: 206f0006     movea.l    $6(a7), a0
00155e: 102f001d     move.b     $1d(a7), d0
001562: b0280002     cmp.b      $2(a0), d0
001566: 67000016     beq.w      $157e
00156a: 41fb0170000001d0 lea.l      $1d0(a16, invalid.w), a0
001572: 226f0002     movea.l    $2(a7), a1
001576: 23480004     move.l     a0, $4(a1)
00157a: 60000012     bra.w      $158e
00157e: 41fb017000000304 lea.l      $304(a16, invalid.w), a0
001586: 226f0002     movea.l    $2(a7), a1
00158a: 23480004     move.l     a0, $4(a1)
00158e: 206f0002     movea.l    $2(a7), a0
001592: 117c0002000c move.b     #$2, $c(a0)
001598: 60000154     bra.w      $16ee
00159c: 082f00020001 btst.b     #$2, $1(a7)
0015a2: 67000016     beq.w      $15ba
0015a6: 41fb01700000047e lea.l      $47e(a16, invalid.w), a0
0015ae: 226f0002     movea.l    $2(a7), a1
0015b2: 23480004     move.l     a0, $4(a1)
0015b6: 60000036     bra.w      $15ee
0015ba: 206f0006     movea.l    $6(a7), a0
0015be: 102f001d     move.b     $1d(a7), d0
0015c2: b0280002     cmp.b      $2(a0), d0
0015c6: 67000016     beq.w      $15de
0015ca: 41fb0170000001a8 lea.l      $1a8(a16, invalid.w), a0
0015d2: 226f0002     movea.l    $2(a7), a1
0015d6: 23480004     move.l     a0, $4(a1)
0015da: 60000012     bra.w      $15ee
0015de: 41fb0170000002d2 lea.l      $2d2(a16, invalid.w), a0
0015e6: 226f0002     movea.l    $2(a7), a1
0015ea: 23480004     move.l     a0, $4(a1)
0015ee: 206f0002     movea.l    $2(a7), a0
0015f2: 117c0004000c move.b     #$4, $c(a0)
0015f8: 600000f4     bra.w      $16ee
0015fc: 082f00020001 btst.b     #$2, $1(a7)
001602: 67000016     beq.w      $161a
001606: 41fb0170000003a0 lea.l      $3a0(a16, invalid.w), a0
00160e: 226f0002     movea.l    $2(a7), a1
001612: 23480004     move.l     a0, $4(a1)
001616: 60000036     bra.w      $164e
00161a: 206f0006     movea.l    $6(a7), a0
00161e: 102f001d     move.b     $1d(a7), d0
001622: b0280002     cmp.b      $2(a0), d0
001626: 67000016     beq.w      $163e
00162a: 41fb01700000018c lea.l      $18c(a16, invalid.w), a0
001632: 226f0002     movea.l    $2(a7), a1
001636: 23480004     move.l     a0, $4(a1)
00163a: 60000012     bra.w      $164e
00163e: 41fb0170000002a0 lea.l      $2a0(a16, invalid.w), a0
001646: 226f0002     movea.l    $2(a7), a1
00164a: 23480004     move.l     a0, $4(a1)
00164e: 206f0002     movea.l    $2(a7), a0
001652: 117c0004000c move.b     #$4, $c(a0)
001658: 60000094     bra.w      $16ee
00165c: 082f00020001 btst.b     #$2, $1(a7)
001662: 67000016     beq.w      $167a
001666: 41fb01700000037c lea.l      $37c(a16, invalid.w), a0
00166e: 226f0002     movea.l    $2(a7), a1
001672: 23480004     move.l     a0, $4(a1)
001676: 60000036     bra.w      $16ae
00167a: 206f0006     movea.l    $6(a7), a0
00167e: 102f001d     move.b     $1d(a7), d0
001682: b0280002     cmp.b      $2(a0), d0
001686: 67000016     beq.w      $169e
00168a: 41fb017000000170 lea.l      $170(a16, invalid.w), a0
001692: 226f0002     movea.l    $2(a7), a1
001696: 23480004     move.l     a0, $4(a1)
00169a: 60000012     bra.w      $16ae
00169e: 41fb017000000272 lea.l      $272(a16, invalid.w), a0
0016a6: 226f0002     movea.l    $2(a7), a1
0016aa: 23480004     move.l     a0, $4(a1)
0016ae: 206f0002     movea.l    $2(a7), a0
0016b2: 117c0008000c move.b     #$8, $c(a0)
0016b8: 60000034     bra.w      $16ee
0016bc: 203cfffffefd move.l     #$fffffefd, d0
0016c2: 548f         addq.l     #$2, a7
0016c4: 60000040     bra.w      $1706
0016c8: 700f         moveq      #$f, d0
0016ca: c02f001d     and.b      $1d(a7), d0
0016ce: 7200         moveq      #$0, d1
0016d0: 1200         move.b     d0, d1
0016d2: 5341         subq.w     #$1, d1
0016d4: 0c410004     cmpi.w     #$4, d1
0016d8: 6200ffe2     bhi.w      $16bc
0016dc: 323b1206     move.w     $16e4(pc, d1.w), d1
0016e0: 4efb1002     jmp        $16e4(pc, d1.w)
0016e4: fe1cfe58     fmovem     invalid, (a4)+
0016e8: feb8ff18     fbf.w      $1602
0016ec: ff78206f     frestore   $206f.w
0016f0: 0006226f     ori.b      #$6f, d6
0016f4: 00021368     ori.b      #$68, d2
0016f8: 0003000b     ori.b      #$b, d3
0016fc: 7000         moveq      #$0, d0
0016fe: 548f         addq.l     #$2, a7
001700: 60000004     bra.w      $1706
001704: 4e71         nop        
001706: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00170c: 4e5d         unlk       a5
00170e: 4e75         rts        
001710: 4e550000     link.w     a5, #$0
001714: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001718: 2440         movea.l    d0, a2
00171a: 2641         movea.l    d1, a3
00171c: 7000         moveq      #$0, d0
00171e: 102f001f     move.b     $1f(a7), d0
001722: d08b         add.l      a3, d0
001724: 2840         movea.l    d0, a4
001726: 60000004     bra.w      $172c
00172a: 14db         move.b     (a3)+, (a2)+
00172c: b7cc         cmpa.l     a4, a3
00172e: 6500fffa     bcs.w      $172a
001732: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
001738: 4e5d         unlk       a5
00173a: 4e75         rts        
00173c: 4e550000     link.w     a5, #$0
001740: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001744: 2440         movea.l    d0, a2
001746: 2641         movea.l    d1, a3
001748: 7000         moveq      #$0, d0
00174a: 102f001f     move.b     $1f(a7), d0
00174e: e388         lsl.l      #$1, d0
001750: d08b         add.l      a3, d0
001752: 2840         movea.l    d0, a4
001754: 6000000e     bra.w      $1764
001758: 14ab0001     move.b     $1(a3), (a2)
00175c: 15530001     move.b     (a3), $1(a2)
001760: 548a         addq.l     #$2, a2
001762: 548b         addq.l     #$2, a3
001764: b7cc         cmpa.l     a4, a3
001766: 6500fff0     bcs.w      $1758
00176a: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
001770: 4e5d         unlk       a5
001772: 4e75         rts        
001774: 4e550000     link.w     a5, #$0
001778: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
00177c: 2440         movea.l    d0, a2
00177e: 2641         movea.l    d1, a3
001780: 7000         moveq      #$0, d0
001782: 102f001f     move.b     $1f(a7), d0
001786: e588         lsl.l      #$2, d0
001788: d08b         add.l      a3, d0
00178a: 2840         movea.l    d0, a4
00178c: 6000001a     bra.w      $17a8
001790: 14ab0003     move.b     $3(a3), (a2)
001794: 156b00020001 move.b     $2(a3), $1(a2)
00179a: 156b00010002 move.b     $1(a3), $2(a2)
0017a0: 15530003     move.b     (a3), $3(a2)
0017a4: 588a         addq.l     #$4, a2
0017a6: 588b         addq.l     #$4, a3
0017a8: b7cc         cmpa.l     a4, a3
0017aa: 6500ffe4     bcs.w      $1790
0017ae: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0017b4: 4e5d         unlk       a5
0017b6: 4e75         rts        
0017b8: 4e550000     link.w     a5, #$0
0017bc: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
0017c0: 2440         movea.l    d0, a2
0017c2: 2641         movea.l    d1, a3
0017c4: 7000         moveq      #$0, d0
0017c6: 102f001f     move.b     $1f(a7), d0
0017ca: e588         lsl.l      #$2, d0
0017cc: d08b         add.l      a3, d0
0017ce: 2840         movea.l    d0, a4
0017d0: 6000001a     bra.w      $17ec
0017d4: 14ab0003     move.b     $3(a3), (a2)
0017d8: 156b00020001 move.b     $2(a3), $1(a2)
0017de: 156b00010002 move.b     $1(a3), $2(a2)
0017e4: 15530003     move.b     (a3), $3(a2)
0017e8: 588a         addq.l     #$4, a2
0017ea: 588b         addq.l     #$4, a3
0017ec: b7cc         cmpa.l     a4, a3
0017ee: 6500ffe4     bcs.w      $17d4
0017f2: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0017f8: 4e5d         unlk       a5
0017fa: 4e75         rts        
0017fc: 4e550000     link.w     a5, #$0
001800: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001804: 2440         movea.l    d0, a2
001806: 2641         movea.l    d1, a3
001808: 7000         moveq      #$0, d0
00180a: 102f001f     move.b     $1f(a7), d0
00180e: e788         lsl.l      #$3, d0
001810: d08b         add.l      a3, d0
001812: 2840         movea.l    d0, a4
001814: 60000032     bra.w      $1848
001818: 14ab0007     move.b     $7(a3), (a2)
00181c: 156b00060001 move.b     $6(a3), $1(a2)
001822: 156b00050002 move.b     $5(a3), $2(a2)
001828: 156b00040003 move.b     $4(a3), $3(a2)
00182e: 156b00030004 move.b     $3(a3), $4(a2)
001834: 156b00020005 move.b     $2(a3), $5(a2)
00183a: 156b00010006 move.b     $1(a3), $6(a2)
001840: 15530007     move.b     (a3), $7(a2)
001844: 508a         addq.l     #$8, a2
001846: 508b         addq.l     #$8, a3
001848: b7cc         cmpa.l     a4, a3
00184a: 6500ffcc     bcs.w      $1818
00184e: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
001854: 4e5d         unlk       a5
001856: 4e75         rts        
001858: 4e550000     link.w     a5, #$0
00185c: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001860: 2440         movea.l    d0, a2
001862: 2641         movea.l    d1, a3
001864: 7000         moveq      #$0, d0
001866: 102f001f     move.b     $1f(a7), d0
00186a: d08b         add.l      a3, d0
00186c: 2840         movea.l    d0, a4
00186e: 60000004     bra.w      $1874
001872: 14db         move.b     (a3)+, (a2)+
001874: b7cc         cmpa.l     a4, a3
001876: 6500fffa     bcs.w      $1872
00187a: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
001880: 4e5d         unlk       a5
001882: 4e75         rts        
001884: 4e550000     link.w     a5, #$0
001888: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
00188c: 2440         movea.l    d0, a2
00188e: 2641         movea.l    d1, a3
001890: 7000         moveq      #$0, d0
001892: 102f001f     move.b     $1f(a7), d0
001896: e388         lsl.l      #$1, d0
001898: d08b         add.l      a3, d0
00189a: 2840         movea.l    d0, a4
00189c: 60000004     bra.w      $18a2
0018a0: 34db         move.w     (a3)+, (a2)+
0018a2: b7cc         cmpa.l     a4, a3
0018a4: 6500fffa     bcs.w      $18a0
0018a8: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0018ae: 4e5d         unlk       a5
0018b0: 4e75         rts        
0018b2: 4e550000     link.w     a5, #$0
0018b6: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
0018ba: 2440         movea.l    d0, a2
0018bc: 2641         movea.l    d1, a3
0018be: 7000         moveq      #$0, d0
0018c0: 102f001f     move.b     $1f(a7), d0
0018c4: e588         lsl.l      #$2, d0
0018c6: d08b         add.l      a3, d0
0018c8: 2840         movea.l    d0, a4
0018ca: 60000004     bra.w      $18d0
0018ce: 24db         move.l     (a3)+, (a2)+
0018d0: b7cc         cmpa.l     a4, a3
0018d2: 6500fffa     bcs.w      $18ce
0018d6: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0018dc: 4e5d         unlk       a5
0018de: 4e75         rts        
0018e0: 4e550000     link.w     a5, #$0
0018e4: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
0018e8: 2440         movea.l    d0, a2
0018ea: 2641         movea.l    d1, a3
0018ec: 7000         moveq      #$0, d0
0018ee: 102f001f     move.b     $1f(a7), d0
0018f2: e588         lsl.l      #$2, d0
0018f4: d08b         add.l      a3, d0
0018f6: 2840         movea.l    d0, a4
0018f8: 60000008     bra.w      $1902
0018fc: 2493         move.l     (a3), (a2)
0018fe: 588a         addq.l     #$4, a2
001900: 588b         addq.l     #$4, a3
001902: b7cc         cmpa.l     a4, a3
001904: 6500fff6     bcs.w      $18fc
001908: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
00190e: 4e5d         unlk       a5
001910: 4e75         rts        
001912: 4e550000     link.w     a5, #$0
001916: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
00191a: 2440         movea.l    d0, a2
00191c: 2641         movea.l    d1, a3
00191e: 7000         moveq      #$0, d0
001920: 102f001f     move.b     $1f(a7), d0
001924: e788         lsl.l      #$3, d0
001926: d08b         add.l      a3, d0
001928: 2840         movea.l    d0, a4
00192a: 6000000e     bra.w      $193a
00192e: 256b00040004 move.l     $4(a3), $4(a2)
001934: 2493         move.l     (a3), (a2)
001936: 508a         addq.l     #$8, a2
001938: 508b         addq.l     #$8, a3
00193a: b7cc         cmpa.l     a4, a3
00193c: 6500fff0     bcs.w      $192e
001940: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
001946: 4e5d         unlk       a5
001948: 4e75         rts        
00194a: 4e550000     link.w     a5, #$0
00194e: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001952: 2440         movea.l    d0, a2
001954: 2641         movea.l    d1, a3
001956: 7000         moveq      #$0, d0
001958: 102f001f     move.b     $1f(a7), d0
00195c: d08b         add.l      a3, d0
00195e: 2840         movea.l    d0, a4
001960: 60000006     bra.w      $1968
001964: 101b         move.b     (a3)+, d0
001966: d11a         add.b      d0, (a2)+
001968: b7cc         cmpa.l     a4, a3
00196a: 6500fff8     bcs.w      $1964
00196e: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
001974: 4e5d         unlk       a5
001976: 4e75         rts        
001978: 4e550000     link.w     a5, #$0
00197c: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001980: 2440         movea.l    d0, a2
001982: 2641         movea.l    d1, a3
001984: 7000         moveq      #$0, d0
001986: 102f001f     move.b     $1f(a7), d0
00198a: e388         lsl.l      #$1, d0
00198c: d08b         add.l      a3, d0
00198e: 2840         movea.l    d0, a4
001990: 60000006     bra.w      $1998
001994: 301b         move.w     (a3)+, d0
001996: d15a         add.w      d0, (a2)+
001998: b7cc         cmpa.l     a4, a3
00199a: 6500fff8     bcs.w      $1994
00199e: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0019a4: 4e5d         unlk       a5
0019a6: 4e75         rts        
0019a8: 4e550000     link.w     a5, #$0
0019ac: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
0019b0: 2440         movea.l    d0, a2
0019b2: 2641         movea.l    d1, a3
0019b4: 7000         moveq      #$0, d0
0019b6: 102f001f     move.b     $1f(a7), d0
0019ba: e588         lsl.l      #$2, d0
0019bc: d08b         add.l      a3, d0
0019be: 2840         movea.l    d0, a4
0019c0: 60000012     bra.w      $19d4
0019c4: 2213         move.l     (a3), d1
0019c6: 2012         move.l     (a2), d0
0019c8: 61ff0000105a bsr.l      $2a24
0019ce: 2480         move.l     d0, (a2)
0019d0: 588b         addq.l     #$4, a3
0019d2: 588a         addq.l     #$4, a2
0019d4: b7cc         cmpa.l     a4, a3
0019d6: 6500ffec     bcs.w      $19c4
0019da: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0019e0: 4e5d         unlk       a5
0019e2: 4e75         rts        
0019e4: 4e550000     link.w     a5, #$0
0019e8: 48e7f038     movem.l    d0-d3/a2-a4, -(a7)
0019ec: 2440         movea.l    d0, a2
0019ee: 2641         movea.l    d1, a3
0019f0: 7000         moveq      #$0, d0
0019f2: 102f0027     move.b     $27(a7), d0
0019f6: e788         lsl.l      #$3, d0
0019f8: d08b         add.l      a3, d0
0019fa: 2840         movea.l    d0, a4
0019fc: 60000018     bra.w      $1a16
001a00: 4cd3000c     movem.l    (a3), d2-d3
001a04: 4cd20003     movem.l    (a2), d0-d1
001a08: 61ff000011f8 bsr.l      $2c02
001a0e: 48d20003     movem.l    d0-d1, (a2)
001a12: 508b         addq.l     #$8, a3
001a14: 508a         addq.l     #$8, a2
001a16: b7cc         cmpa.l     a4, a3
001a18: 6500ffe6     bcs.w      $1a00
001a1c: 4ced1c0cffec movem.l    -$14(a5), d2-d3/a2-a4
001a22: 4e5d         unlk       a5
001a24: 4e75         rts        
001a26: 4e550000     link.w     a5, #$0
001a2a: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001a2e: 2440         movea.l    d0, a2
001a30: 2641         movea.l    d1, a3
001a32: 7000         moveq      #$0, d0
001a34: 102f001f     move.b     $1f(a7), d0
001a38: e588         lsl.l      #$2, d0
001a3a: d08b         add.l      a3, d0
001a3c: 2840         movea.l    d0, a4
001a3e: 60000006     bra.w      $1a46
001a42: 201b         move.l     (a3)+, d0
001a44: d19a         add.l      d0, (a2)+
001a46: b7cc         cmpa.l     a4, a3
001a48: 6500fff8     bcs.w      $1a42
001a4c: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
001a52: 4e5d         unlk       a5
001a54: 4e75         rts        
001a56: 4e550000     link.w     a5, #$0
001a5a: 48e788a0     movem.l    d0/d4/a0/a2, -(a7)
001a5e: 2057         movea.l    (a7), a0
001a60: 18280005     move.b     $5(a0), d4
001a64: 2017         move.l     (a7), d0
001a66: 5c80         addq.l     #$6, d0
001a68: 2440         movea.l    d0, a2
001a6a: 60000004     bra.w      $1a70
001a6e: 421a         clr.b      (a2)+
001a70: 1004         move.b     d4, d0
001a72: 5304         subq.b     #$1, d4
001a74: 4a00         tst.b      d0
001a76: 6600fff6     bne.w      $1a6e
001a7a: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
001a80: 4e5d         unlk       a5
001a82: 4e75         rts        
001a84: 4e550000     link.w     a5, #$0
001a88: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001a8c: 2441         movea.l    d1, a2
001a8e: 283c000002ee move.l     #$2ee, d4
001a94: 4a12         tst.b      (a2)
001a96: 67000012     beq.w      $1aaa
001a9a: 2057         movea.l    (a7), a0
001a9c: 00a80000010a003a ori.l      #$10a, $3a(a0)
001aa4: 7000         moveq      #$0, d0
001aa6: 6000003e     bra.w      $1ae6
001aaa: 61000f2e     bsr.w      $29da
001aae: 6000001a     bra.w      $1aca
001ab2: 14bc0001     move.b     #$1, (a2)
001ab6: 4a2a0001     tst.b      $1(a2)
001aba: 67000008     beq.w      $1ac4
001abe: 4212         clr.b      (a2)
001ac0: 60000008     bra.w      $1aca
001ac4: 7001         moveq      #$1, d0
001ac6: 6000001e     bra.w      $1ae6
001aca: 5384         subq.l     #$1, d4
001acc: 6600ffe4     bne.w      $1ab2
001ad0: 2057         movea.l    (a7), a0
001ad2: 00a800000101003a ori.l      #$101, $3a(a0)
001ada: 61000ec6     bsr.w      $29a2
001ade: 7000         moveq      #$0, d0
001ae0: 60000004     bra.w      $1ae6
001ae4: 4e71         nop        
001ae6: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
001aec: 4e5d         unlk       a5
001aee: 4e75         rts        
001af0: 4e550000     link.w     a5, #$0
001af4: 48e78080     movem.l    d0/a0, -(a7)
001af8: 2057         movea.l    (a7), a0
001afa: 4210         clr.b      (a0)
001afc: 61000ea4     bsr.w      $29a2
001b00: 4ced0100fffc movem.l    -$4(a5), a0
001b06: 4e5d         unlk       a5
001b08: 4e75         rts        
001b0a: 4e550000     link.w     a5, #$0
001b0e: 48e78000     movem.l    d0, -(a7)
001b12: 13fc004100c0000f move.b     #$41, $c0000f.l
001b1a: 7001         moveq      #$1, d0
001b1c: 61000da2     bsr.w      $28c0
001b20: 48e7f820     movem.l    d0-d4/a2, -(a7)
001b24: 247c00c0000f movea.l    #$c0000f, a2
001b2a: 223c00000001 move.l     #$1, d1
001b30: 4e7b1002     movec      d1, cacr
001b34: 243c00000042 move.l     #$42, d2
001b3a: 263c00000300 move.l     #$300, d3
001b40: 2003         move.l     d3, d0
001b42: 1482         move.b     d2, (a2)
001b44: 143c0001     move.b     #$1, d2
001b48: 51c8fffe     dbra       d0, $1b48
001b4c: 51c9fff2     dbra       d1, $1b40
001b50: 4cdf041f     movem.l    (a7)+, d0-d4/a2
001b54: 4e71         nop        
001b56: 7000         moveq      #$0, d0
001b58: 60000004     bra.w      $1b5e
001b5c: 4e71         nop        
001b5e: 4e5d         unlk       a5
001b60: 4e75         rts        
001b62: 4e550000     link.w     a5, #$0
001b66: 48e7c080     movem.l    d0-d1/a0, -(a7)
001b6a: 4feffff0     lea.l      -$10(a7), a7
001b6e: 7000         moveq      #$0, d0
001b70: 102f0013     move.b     $13(a7), d0
001b74: 610006f0     bsr.w      $2266
001b78: 4a00         tst.b      d0
001b7a: 6606         bne.b      $1b82
001b7c: 7002         moveq      #$2, d0
001b7e: 600000f0     bra.w      $1c70
001b82: 7000         moveq      #$0, d0
001b84: 102f0017     move.b     $17(a7), d0
001b88: 61000726     bsr.w      $22b0
001b8c: 4a00         tst.b      d0
001b8e: 6606         bne.b      $1b96
001b90: 7003         moveq      #$3, d0
001b92: 600000dc     bra.w      $1c70
001b96: 2f7c009f0000000c move.l     #$9f0000, $c(a7)
001b9e: 7000         moveq      #$0, d0
001ba0: 102f0013     move.b     $13(a7), d0
001ba4: 7206         moveq      #$6, d1
001ba6: 61001b44     bsr.w      $36ec
001baa: 222f000c     move.l     $c(a7), d1
001bae: 5481         addq.l     #$2, d1
001bb0: d081         add.l      d1, d0
001bb2: 2f400008     move.l     d0, $8(a7)
001bb6: 206f0008     movea.l    $8(a7), a0
001bba: 7000         moveq      #$0, d0
001bbc: 10280003     move.b     $3(a0), d0
001bc0: e188         lsl.l      #$8, d0
001bc2: d0af000c     add.l      $c(a7), d0
001bc6: 206f0024     movea.l    $24(a7), a0
001bca: 2080         move.l     d0, (a0)
001bcc: 206f0008     movea.l    $8(a7), a0
001bd0: 7000         moveq      #$0, d0
001bd2: 10280001     move.b     $1(a0), d0
001bd6: e188         lsl.l      #$8, d0
001bd8: d0af000c     add.l      $c(a7), d0
001bdc: 206f0024     movea.l    $24(a7), a0
001be0: 21400004     move.l     d0, $4(a0)
001be4: 206f0008     movea.l    $8(a7), a0
001be8: 7000         moveq      #$0, d0
001bea: 10280001     move.b     $1(a0), d0
001bee: 206f0008     movea.l    $8(a7), a0
001bf2: 7200         moveq      #$0, d1
001bf4: 12280002     move.b     $2(a0), d1
001bf8: 9240         sub.w      d0, d1
001bfa: 5241         addq.w     #$1, d1
001bfc: e149         lsl.w      #$8, d1
001bfe: 206f0024     movea.l    $24(a7), a0
001c02: 31410008     move.w     d1, $8(a0)
001c06: 206f0024     movea.l    $24(a7), a0
001c0a: 2f6800040004 move.l     $4(a0), $4(a7)
001c10: 206f0008     movea.l    $8(a7), a0
001c14: 102f0013     move.b     $13(a7), d0
001c18: b010         cmp.b      (a0), d0
001c1a: 6706         beq.b      $1c22
001c1c: 7004         moveq      #$4, d0
001c1e: 2e80         move.l     d0, (a7)
001c20: 604c         bra.b      $1c6e
001c22: 206f0004     movea.l    $4(a7), a0
001c26: 4a280001     tst.b      $1(a0)
001c2a: 6704         beq.b      $1c30
001c2c: 7001         moveq      #$1, d0
001c2e: 60ee         bra.b      $1c1e
001c30: 206f0004     movea.l    $4(a7), a0
001c34: 10af0013     move.b     $13(a7), (a0)
001c38: 206f0004     movea.l    $4(a7), a0
001c3c: 116f00170002 move.b     $17(a7), $2(a0)
001c42: 206f0004     movea.l    $4(a7), a0
001c46: 42280003     clr.b      $3(a0)
001c4a: 206f0004     movea.l    $4(a7), a0
001c4e: 117c00010001 move.b     #$1, $1(a0)
001c54: 206f0004     movea.l    $4(a7), a0
001c58: 42280004     clr.b      $4(a0)
001c5c: 206f0004     movea.l    $4(a7), a0
001c60: 42280005     clr.b      $5(a0)
001c64: 206f0004     movea.l    $4(a7), a0
001c68: 42680006     clr.w      $6(a0)
001c6c: 4297         clr.l      (a7)
001c6e: 2017         move.l     (a7), d0
001c70: 4fef0010     lea.l      $10(a7), a7
001c74: 4ced0100fffc movem.l    -$4(a5), a0
001c7a: 4e5d         unlk       a5
001c7c: 4e75         rts        
001c7e: 4e550000     link.w     a5, #$0
001c82: 48e7c080     movem.l    d0-d1/a0, -(a7)
001c86: 4feffff4     lea.l      -$c(a7), a7
001c8a: 206f0020     movea.l    $20(a7), a0
001c8e: 2f6800040004 move.l     $4(a0), $4(a7)
001c94: 206f0004     movea.l    $4(a7), a0
001c98: 0c2800010001 cmpi.b     #$1, $1(a0)
001c9e: 6706         beq.b      $1ca6
001ca0: 7006         moveq      #$6, d0
001ca2: 2e80         move.l     d0, (a7)
001ca4: 605e         bra.b      $1d04
001ca6: 206f0020     movea.l    $20(a7), a0
001caa: 30280008     move.w     $8(a0), d0
001cae: 48c0         ext.l      d0
001cb0: 206f0004     movea.l    $4(a7), a0
001cb4: 32280006     move.w     $6(a0), d1
001cb8: 48c1         ext.l      d1
001cba: d2af000c     add.l      $c(a7), d1
001cbe: b081         cmp.l      d1, d0
001cc0: 6c04         bge.b      $1cc6
001cc2: 7005         moveq      #$5, d0
001cc4: 60dc         bra.b      $1ca2
001cc6: 202f0004     move.l     $4(a7), d0
001cca: 5080         addq.l     #$8, d0
001ccc: 206f0004     movea.l    $4(a7), a0
001cd0: 32280006     move.w     $6(a0), d1
001cd4: 48c1         ext.l      d1
001cd6: d081         add.l      d1, d0
001cd8: 2f400008     move.l     d0, $8(a7)
001cdc: 2f2f0008     move.l     $8(a7), -(a7)
001ce0: 222f0014     move.l     $14(a7), d1
001ce4: 202f0010     move.l     $10(a7), d0
001ce8: 61000a8a     bsr.w      $2774
001cec: 588f         addq.l     #$4, a7
001cee: 206f0004     movea.l    $4(a7), a0
001cf2: 30280006     move.w     $6(a0), d0
001cf6: d06f000e     add.w      $e(a7), d0
001cfa: 206f0004     movea.l    $4(a7), a0
001cfe: 31400006     move.w     d0, $6(a0)
001d02: 4297         clr.l      (a7)
001d04: 2017         move.l     (a7), d0
001d06: 4fef000c     lea.l      $c(a7), a7
001d0a: 4ced0100fffc movem.l    -$4(a5), a0
001d10: 4e5d         unlk       a5
001d12: 4e75         rts        
001d14: 4e550000     link.w     a5, #$0
001d18: 48e78880     movem.l    d0/d4/a0, -(a7)
001d1c: 518f         subq.l     #$8, a7
001d1e: 206f0008     movea.l    $8(a7), a0
001d22: 2f6800040004 move.l     $4(a0), $4(a7)
001d28: 206f0004     movea.l    $4(a7), a0
001d2c: 0c2800010001 cmpi.b     #$1, $1(a0)
001d32: 670c         beq.b      $1d40
001d34: 7006         moveq      #$6, d0
001d36: 2e80         move.l     d0, (a7)
001d38: 6026         bra.b      $1d60
001d3a: 7005         moveq      #$5, d0
001d3c: 61000b82     bsr.w      $28c0
001d40: 4a3900c00002 tst.b      $c00002.l
001d46: 66f2         bne.b      $1d3a
001d48: 206f0004     movea.l    $4(a7), a0
001d4c: 117c00030001 move.b     #$3, $1(a0)
001d52: 206f0004     movea.l    $4(a7), a0
001d56: 1810         move.b     (a0), d4
001d58: 13c400c00002 move.b     d4, $c00002.l
001d5e: 4297         clr.l      (a7)
001d60: 2017         move.l     (a7), d0
001d62: 508f         addq.l     #$8, a7
001d64: 4ced0110fff8 movem.l    -$8(a5), d4/a0
001d6a: 4e5d         unlk       a5
001d6c: 4e75         rts        
001d6e: 4e550000     link.w     a5, #$0
001d72: 48e7c080     movem.l    d0-d1/a0, -(a7)
001d76: 4feffff0     lea.l      -$10(a7), a7
001d7a: 2f7c009f0000000c move.l     #$9f0000, $c(a7)
001d82: 7000         moveq      #$0, d0
001d84: 102f0013     move.b     $13(a7), d0
001d88: 7206         moveq      #$6, d1
001d8a: 61001960     bsr.w      $36ec
001d8e: 222f000c     move.l     $c(a7), d1
001d92: 5481         addq.l     #$2, d1
001d94: d081         add.l      d1, d0
001d96: 2f400008     move.l     d0, $8(a7)
001d9a: 206f0008     movea.l    $8(a7), a0
001d9e: 7000         moveq      #$0, d0
001da0: 10280003     move.b     $3(a0), d0
001da4: e188         lsl.l      #$8, d0
001da6: d0af000c     add.l      $c(a7), d0
001daa: 2f400004     move.l     d0, $4(a7)
001dae: 206f0004     movea.l    $4(a7), a0
001db2: 0c2800030001 cmpi.b     #$3, $1(a0)
001db8: 6706         beq.b      $1dc0
001dba: 7007         moveq      #$7, d0
001dbc: 2e80         move.l     d0, (a7)
001dbe: 603a         bra.b      $1dfa
001dc0: 206f0008     movea.l    $8(a7), a0
001dc4: 7000         moveq      #$0, d0
001dc6: 10280003     move.b     $3(a0), d0
001dca: e188         lsl.l      #$8, d0
001dcc: d0af000c     add.l      $c(a7), d0
001dd0: 206f0014     movea.l    $14(a7), a0
001dd4: 2080         move.l     d0, (a0)
001dd6: 206f0008     movea.l    $8(a7), a0
001dda: 7000         moveq      #$0, d0
001ddc: 10280001     move.b     $1(a0), d0
001de0: e188         lsl.l      #$8, d0
001de2: d0af000c     add.l      $c(a7), d0
001de6: 206f0014     movea.l    $14(a7), a0
001dea: 21400004     move.l     d0, $4(a0)
001dee: 206f0004     movea.l    $4(a7), a0
001df2: 117c00020001 move.b     #$2, $1(a0)
001df8: 4297         clr.l      (a7)
001dfa: 2017         move.l     (a7), d0
001dfc: 4fef0010     lea.l      $10(a7), a7
001e00: 4ced0100fffc movem.l    -$4(a5), a0
001e06: 4e5d         unlk       a5
001e08: 4e75         rts        
001e0a: 4e550000     link.w     a5, #$0
001e0e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001e12: 518f         subq.l     #$8, a7
001e14: 206f0008     movea.l    $8(a7), a0
001e18: 2f500004     move.l     (a0), $4(a7)
001e1c: 206f0004     movea.l    $4(a7), a0
001e20: 0c2800020001 cmpi.b     #$2, $1(a0)
001e26: 6704         beq.b      $1e2c
001e28: 7001         moveq      #$1, d0
001e2a: 6002         bra.b      $1e2e
001e2c: 7000         moveq      #$0, d0
001e2e: 206f0004     movea.l    $4(a7), a0
001e32: 4a680006     tst.w      $6(a0)
001e36: 6c04         bge.b      $1e3c
001e38: 7201         moveq      #$1, d1
001e3a: 6002         bra.b      $1e3e
001e3c: 7200         moveq      #$0, d1
001e3e: 8001         or.b       d1, d0
001e40: 6706         beq.b      $1e48
001e42: 7006         moveq      #$6, d0
001e44: 2e80         move.l     d0, (a7)
001e46: 601c         bra.b      $1e64
001e48: 202f0004     move.l     $4(a7), d0
001e4c: 5080         addq.l     #$8, d0
001e4e: 206f000c     movea.l    $c(a7), a0
001e52: 2080         move.l     d0, (a0)
001e54: 206f0004     movea.l    $4(a7), a0
001e58: 30680006     movea.w    $6(a0), a0
001e5c: 226f0020     movea.l    $20(a7), a1
001e60: 2288         move.l     a0, (a1)
001e62: 4297         clr.l      (a7)
001e64: 2017         move.l     (a7), d0
001e66: 508f         addq.l     #$8, a7
001e68: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001e6e: 4e5d         unlk       a5
001e70: 4e75         rts        
001e72: 4e550000     link.w     a5, #$0
001e76: 48e7c080     movem.l    d0-d1/a0, -(a7)
001e7a: 518f         subq.l     #$8, a7
001e7c: 206f000c     movea.l    $c(a7), a0
001e80: 2f6800040004 move.l     $4(a0), $4(a7)
001e86: 206f0004     movea.l    $4(a7), a0
001e8a: 0c2800010001 cmpi.b     #$1, $1(a0)
001e90: 6706         beq.b      $1e98
001e92: 7006         moveq      #$6, d0
001e94: 2e80         move.l     d0, (a7)
001e96: 600c         bra.b      $1ea4
001e98: 206f0004     movea.l    $4(a7), a0
001e9c: 116f000b0005 move.b     $b(a7), $5(a0)
001ea2: 4297         clr.l      (a7)
001ea4: 2017         move.l     (a7), d0
001ea6: 508f         addq.l     #$8, a7
001ea8: 4ced0100fffc movem.l    -$4(a5), a0
001eae: 4e5d         unlk       a5
001eb0: 4e75         rts        
001eb2: 4e550000     link.w     a5, #$0
001eb6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001eba: 518f         subq.l     #$8, a7
001ebc: 206f0008     movea.l    $8(a7), a0
001ec0: 2f500004     move.l     (a0), $4(a7)
001ec4: 206f0004     movea.l    $4(a7), a0
001ec8: 0c2800020001 cmpi.b     #$2, $1(a0)
001ece: 6706         beq.b      $1ed6
001ed0: 7006         moveq      #$6, d0
001ed2: 2e80         move.l     d0, (a7)
001ed4: 600e         bra.b      $1ee4
001ed6: 206f0004     movea.l    $4(a7), a0
001eda: 226f000c     movea.l    $c(a7), a1
001ede: 12a80005     move.b     $5(a0), (a1)
001ee2: 4297         clr.l      (a7)
001ee4: 2017         move.l     (a7), d0
001ee6: 508f         addq.l     #$8, a7
001ee8: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001eee: 4e5d         unlk       a5
001ef0: 4e75         rts        
001ef2: 4e550000     link.w     a5, #$0
001ef6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001efa: 518f         subq.l     #$8, a7
001efc: 206f0008     movea.l    $8(a7), a0
001f00: 2f500004     move.l     (a0), $4(a7)
001f04: 206f0004     movea.l    $4(a7), a0
001f08: 0c2800020001 cmpi.b     #$2, $1(a0)
001f0e: 6706         beq.b      $1f16
001f10: 7006         moveq      #$6, d0
001f12: 2e80         move.l     d0, (a7)
001f14: 600e         bra.b      $1f24
001f16: 206f0004     movea.l    $4(a7), a0
001f1a: 226f000c     movea.l    $c(a7), a1
001f1e: 12a80002     move.b     $2(a0), (a1)
001f22: 4297         clr.l      (a7)
001f24: 2017         move.l     (a7), d0
001f26: 508f         addq.l     #$8, a7
001f28: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001f2e: 4e5d         unlk       a5
001f30: 4e75         rts        
001f32: 4e550000     link.w     a5, #$0
001f36: 48e78080     movem.l    d0/a0, -(a7)
001f3a: 598f         subq.l     #$4, a7
001f3c: 206f0004     movea.l    $4(a7), a0
001f40: 2e90         move.l     (a0), (a7)
001f42: 2057         movea.l    (a7), a0
001f44: 42280001     clr.b      $1(a0)
001f48: 588f         addq.l     #$4, a7
001f4a: 4ced0100fffc movem.l    -$4(a5), a0
001f50: 4e5d         unlk       a5
001f52: 4e75         rts        
001f54: 4e550000     link.w     a5, #$0
001f58: 48e7c080     movem.l    d0-d1/a0, -(a7)
001f5c: 4fefffe0     lea.l      -$20(a7), a7
001f60: 7000         moveq      #$0, d0
001f62: 102f0023     move.b     $23(a7), d0
001f66: 610002fe     bsr.w      $2266
001f6a: 4a00         tst.b      d0
001f6c: 6606         bne.b      $1f74
001f6e: 7002         moveq      #$2, d0
001f70: 600001fa     bra.w      $216c
001f74: 2f7c009f0000001c move.l     #$9f0000, $1c(a7)
001f7c: 206f001c     movea.l    $1c(a7), a0
001f80: 0c2800690001 cmpi.b     #$69, $1(a0)
001f86: 670000b6     beq.w      $203e
001f8a: 4857         pea.l      (a7)
001f8c: 223c00005350 move.l     #$5350, d1
001f92: 70ff         moveq      #$ff, d0
001f94: 61000880     bsr.w      $2816
001f98: 588f         addq.l     #$4, a7
001f9a: 2f400018     move.l     d0, $18(a7)
001f9e: 4aaf0018     tst.l      $18(a7)
001fa2: 67000174     beq.w      $2118
001fa6: 222f0018     move.l     $18(a7), d1
001faa: 2017         move.l     (a7), d0
001fac: 61000892     bsr.w      $2840
001fb0: 4a80         tst.l      d0
001fb2: 66000164     bne.w      $2118
001fb6: 486f0004     pea.l      $4(a7)
001fba: 223c00005350 move.l     #$5350, d1
001fc0: 203cfffffe00 move.l     #$fffffe00, d0
001fc6: d0af0004     add.l      $4(a7), d0
001fca: 6100084a     bsr.w      $2816
001fce: 588f         addq.l     #$4, a7
001fd0: 2f400018     move.l     d0, $18(a7)
001fd4: 4aaf0018     tst.l      $18(a7)
001fd8: 6700013e     beq.w      $2118
001fdc: 486f0004     pea.l      $4(a7)
001fe0: 223c00005350 move.l     #$5350, d1
001fe6: 203c00000200 move.l     #$200, d0
001fec: 61000828     bsr.w      $2816
001ff0: 588f         addq.l     #$4, a7
001ff2: 2f40001c     move.l     d0, $1c(a7)
001ff6: 4aaf001c     tst.l      $1c(a7)
001ffa: 6700011c     beq.w      $2118
001ffe: 2217         move.l     (a7), d1
002000: 202f001c     move.l     $1c(a7), d0
002004: 610001d6     bsr.w      $21dc
002008: 222f0018     move.l     $18(a7), d1
00200c: 203cfffffe00 move.l     #$fffffe00, d0
002012: d097         add.l      (a7), d0
002014: 6100082a     bsr.w      $2840
002018: 4a80         tst.l      d0
00201a: 660000fc     bne.w      $2118
00201e: 206f001c     movea.l    $1c(a7), a0
002022: 117c00690001 move.b     #$69, $1(a0)
002028: 13fc009f00c00001 move.b     #$9f, $c00001.l
002030: 13fc00ff00c00003 move.b     #$ff, $c00003.l
002038: 423900c00002 clr.b      $c00002.l
00203e: 7000         moveq      #$0, d0
002040: 102f0023     move.b     $23(a7), d0
002044: 7206         moveq      #$6, d1
002046: 610016a4     bsr.w      $36ec
00204a: 222f001c     move.l     $1c(a7), d1
00204e: 5481         addq.l     #$2, d1
002050: d081         add.l      d1, d0
002052: 2f40000c     move.l     d0, $c(a7)
002056: 206f000c     movea.l    $c(a7), a0
00205a: 102f0023     move.b     $23(a7), d0
00205e: b010         cmp.b      (a0), d0
002060: 6644         bne.b      $20a6
002062: 206f000c     movea.l    $c(a7), a0
002066: 7000         moveq      #$0, d0
002068: 10280003     move.b     $3(a0), d0
00206c: e188         lsl.l      #$8, d0
00206e: d0af001c     add.l      $1c(a7), d0
002072: 2f400010     move.l     d0, $10(a7)
002076: 206f000c     movea.l    $c(a7), a0
00207a: 7000         moveq      #$0, d0
00207c: 10280001     move.b     $1(a0), d0
002080: e188         lsl.l      #$8, d0
002082: d0af001c     add.l      $1c(a7), d0
002086: 2f400014     move.l     d0, $14(a7)
00208a: 2f2f0024     move.l     $24(a7), -(a7)
00208e: 2f2f0014     move.l     $14(a7), -(a7)
002092: 222f003c     move.l     $3c(a7), d1
002096: 202f001c     move.l     $1c(a7), d0
00209a: 610000de     bsr.w      $217a
00209e: 508f         addq.l     #$8, a7
0020a0: 7009         moveq      #$9, d0
0020a2: 600000c8     bra.w      $216c
0020a6: 486f0004     pea.l      $4(a7)
0020aa: 223c00005350 move.l     #$5350, d1
0020b0: 202f0038     move.l     $38(a7), d0
0020b4: e188         lsl.l      #$8, d0
0020b6: 6100075e     bsr.w      $2816
0020ba: 588f         addq.l     #$4, a7
0020bc: 2f400014     move.l     d0, $14(a7)
0020c0: 4aaf0014     tst.l      $14(a7)
0020c4: 6752         beq.b      $2118
0020c6: 202f0014     move.l     $14(a7), d0
0020ca: 90af001c     sub.l      $1c(a7), d0
0020ce: 6c06         bge.b      $20d6
0020d0: 0680000000ff addi.l     #$ff, d0
0020d6: e080         asr.l      #$8, d0
0020d8: 2f400008     move.l     d0, $8(a7)
0020dc: 206f000c     movea.l    $c(a7), a0
0020e0: 116f000b0001 move.b     $b(a7), $1(a0)
0020e6: 102f000b     move.b     $b(a7), d0
0020ea: d02f0037     add.b      $37(a7), d0
0020ee: 5300         subq.b     #$1, d0
0020f0: 206f000c     movea.l    $c(a7), a0
0020f4: 11400002     move.b     d0, $2(a0)
0020f8: 486f0004     pea.l      $4(a7)
0020fc: 223c00005350 move.l     #$5350, d1
002102: 202f0028     move.l     $28(a7), d0
002106: e188         lsl.l      #$8, d0
002108: 6100070c     bsr.w      $2816
00210c: 588f         addq.l     #$4, a7
00210e: 2f400010     move.l     d0, $10(a7)
002112: 4aaf0010     tst.l      $10(a7)
002116: 6604         bne.b      $211c
002118: 7008         moveq      #$8, d0
00211a: 6050         bra.b      $216c
00211c: 202f0010     move.l     $10(a7), d0
002120: 90af001c     sub.l      $1c(a7), d0
002124: 6c06         bge.b      $212c
002126: 0680000000ff addi.l     #$ff, d0
00212c: e080         asr.l      #$8, d0
00212e: 2f400008     move.l     d0, $8(a7)
002132: 206f000c     movea.l    $c(a7), a0
002136: 116f000b0003 move.b     $b(a7), $3(a0)
00213c: 102f000b     move.b     $b(a7), d0
002140: d02f0027     add.b      $27(a7), d0
002144: 5300         subq.b     #$1, d0
002146: 206f000c     movea.l    $c(a7), a0
00214a: 11400004     move.b     d0, $4(a0)
00214e: 206f000c     movea.l    $c(a7), a0
002152: 10af0023     move.b     $23(a7), (a0)
002156: 2f2f0024     move.l     $24(a7), -(a7)
00215a: 2f2f0014     move.l     $14(a7), -(a7)
00215e: 222f003c     move.l     $3c(a7), d1
002162: 202f001c     move.l     $1c(a7), d0
002166: 6112         bsr.b      $217a
002168: 508f         addq.l     #$8, a7
00216a: 7000         moveq      #$0, d0
00216c: 4fef0020     lea.l      $20(a7), a7
002170: 4ced0100fffc movem.l    -$4(a5), a0
002176: 4e5d         unlk       a5
002178: 4e75         rts        
00217a: 4e550000     link.w     a5, #$0
00217e: 48e7c080     movem.l    d0-d1/a0, -(a7)
002182: 518f         subq.l     #$8, a7
002184: 2f6f001c0004 move.l     $1c(a7), $4(a7)
00218a: 202f0020     move.l     $20(a7), d0
00218e: e188         lsl.l      #$8, d0
002190: d0af0004     add.l      $4(a7), d0
002194: 2e80         move.l     d0, (a7)
002196: 600a         bra.b      $21a2
002198: 206f0004     movea.l    $4(a7), a0
00219c: 4210         clr.b      (a0)
00219e: 52af0004     addq.l     #$1, $4(a7)
0021a2: 202f0004     move.l     $4(a7), d0
0021a6: b097         cmp.l      (a7), d0
0021a8: 65ee         bcs.b      $2198
0021aa: 2f6f00080004 move.l     $8(a7), $4(a7)
0021b0: 202f000c     move.l     $c(a7), d0
0021b4: e188         lsl.l      #$8, d0
0021b6: d0af0004     add.l      $4(a7), d0
0021ba: 2e80         move.l     d0, (a7)
0021bc: 600a         bra.b      $21c8
0021be: 206f0004     movea.l    $4(a7), a0
0021c2: 4210         clr.b      (a0)
0021c4: 52af0004     addq.l     #$1, $4(a7)
0021c8: 202f0004     move.l     $4(a7), d0
0021cc: b097         cmp.l      (a7), d0
0021ce: 65ee         bcs.b      $21be
0021d0: 508f         addq.l     #$8, a7
0021d2: 4ced0100fffc movem.l    -$4(a5), a0
0021d8: 4e5d         unlk       a5
0021da: 4e75         rts        
0021dc: 4e550000     link.w     a5, #$0
0021e0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0021e4: 518f         subq.l     #$8, a7
0021e6: 2f6f00080004 move.l     $8(a7), $4(a7)
0021ec: 202f0004     move.l     $4(a7), d0
0021f0: d0af000c     add.l      $c(a7), d0
0021f4: 2e80         move.l     d0, (a7)
0021f6: 600a         bra.b      $2202
0021f8: 206f0004     movea.l    $4(a7), a0
0021fc: 4210         clr.b      (a0)
0021fe: 52af0004     addq.l     #$1, $4(a7)
002202: 202f0004     move.l     $4(a7), d0
002206: b097         cmp.l      (a7), d0
002208: 65ee         bcs.b      $21f8
00220a: 508f         addq.l     #$8, a7
00220c: 4ced0100fffc movem.l    -$4(a5), a0
002212: 4e5d         unlk       a5
002214: 4e75         rts        
002216: 4e550000     link.w     a5, #$0
00221a: 48e78080     movem.l    d0/a0, -(a7)
00221e: 598f         subq.l     #$4, a7
002220: 2ebc009f0000 move.l     #$9f0000, (a7)
002226: 2057         movea.l    (a7), a0
002228: 4a10         tst.b      (a0)
00222a: 6608         bne.b      $2234
00222c: 2057         movea.l    (a7), a0
00222e: 10b900c00000 move.b     $c00000.l, (a0)
002234: 2057         movea.l    (a7), a0
002236: 7000         moveq      #$0, d0
002238: 1010         move.b     (a0), d0
00223a: 588f         addq.l     #$4, a7
00223c: 4ced0100fffc movem.l    -$4(a5), a0
002242: 4e5d         unlk       a5
002244: 4e75         rts        
002246: 4e550000     link.w     a5, #$0
00224a: 48e78080     movem.l    d0/a0, -(a7)
00224e: 598f         subq.l     #$4, a7
002250: 2ebc009f0000 move.l     #$9f0000, (a7)
002256: 2057         movea.l    (a7), a0
002258: 4210         clr.b      (a0)
00225a: 588f         addq.l     #$4, a7
00225c: 4ced0100fffc movem.l    -$4(a5), a0
002262: 4e5d         unlk       a5
002264: 4e75         rts        
002266: 4e550000     link.w     a5, #$0
00226a: 48e78000     movem.l    d0, -(a7)
00226e: 558f         subq.l     #$2, a7
002270: 600e         bra.b      $2280
002272: 1f7c00010001 move.b     #$1, $1(a7)
002278: 602c         bra.b      $22a6
00227a: 422f0001     clr.b      $1(a7)
00227e: 6026         bra.b      $22a6
002280: 7000         moveq      #$0, d0
002282: 102f0005     move.b     $5(a7), d0
002286: 0c400007     cmpi.w     #$7, d0
00228a: 62ee         bhi.b      $227a
00228c: d040         add.w      d0, d0
00228e: 303b0006     move.w     $2296(pc, d0.w), d0
002292: 4efb0002     jmp        $2296(pc, d0.w)
002296: ffdc         dc.w       $ffdc
002298: ffdc         dc.w       $ffdc
00229a: ffdc         dc.w       $ffdc
00229c: ffdc         dc.w       $ffdc
00229e: ffdc         dc.w       $ffdc
0022a0: ffdc         dc.w       $ffdc
0022a2: ffdc         dc.w       $ffdc
0022a4: ffdc         dc.w       $ffdc
0022a6: 102f0001     move.b     $1(a7), d0
0022aa: 548f         addq.l     #$2, a7
0022ac: 4e5d         unlk       a5
0022ae: 4e75         rts        
0022b0: 4e550000     link.w     a5, #$0
0022b4: 48e78000     movem.l    d0, -(a7)
0022b8: 558f         subq.l     #$2, a7
0022ba: 600e         bra.b      $22ca
0022bc: 1f7c00010001 move.b     #$1, $1(a7)
0022c2: 602e         bra.b      $22f2
0022c4: 422f0001     clr.b      $1(a7)
0022c8: 6028         bra.b      $22f2
0022ca: 7000         moveq      #$0, d0
0022cc: 102f0005     move.b     $5(a7), d0
0022d0: 0c400008     cmpi.w     #$8, d0
0022d4: 62ee         bhi.b      $22c4
0022d6: d040         add.w      d0, d0
0022d8: 303b0006     move.w     $22e0(pc, d0.w), d0
0022dc: 4efb0002     jmp        $22e0(pc, d0.w)
0022e0: ffdc         dc.w       $ffdc
0022e2: ffdc         dc.w       $ffdc
0022e4: ffdc         dc.w       $ffdc
0022e6: ffdc         dc.w       $ffdc
0022e8: ffdc         dc.w       $ffdc
0022ea: ffdc         dc.w       $ffdc
0022ec: ffdc         dc.w       $ffdc
0022ee: ffdc         dc.w       $ffdc
0022f0: ffdc         dc.w       $ffdc
0022f2: 102f0001     move.b     $1(a7), d0
0022f6: 548f         addq.l     #$2, a7
0022f8: 4e5d         unlk       a5
0022fa: 4e75         rts        
0022fc: 4e550000     link.w     a5, #$0
002300: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002304: 7000         moveq      #$0, d0
002306: 102f0007     move.b     $7(a7), d0
00230a: 81fc000a     divs.w     #$a, d0
00230e: 4840         swap       d0
002310: 48c0         ext.l      d0
002312: 2057         movea.l    (a7), a0
002314: 24700c00     movea.l    (a0, d0.l * 4), a2
002318: 60000024     bra.w      $233e
00231c: 102f0007     move.b     $7(a7), d0
002320: b02a0014     cmp.b      $14(a2), d0
002324: 66000016     bne.w      $233c
002328: 202f0018     move.l     $18(a7), d0
00232c: b0aa0008     cmp.l      $8(a2), d0
002330: 6600000a     bne.w      $233c
002334: 200a         move.l     a2, d0
002336: 5880         addq.l     #$4, d0
002338: 60000012     bra.w      $234c
00233c: 2452         movea.l    (a2), a2
00233e: 200a         move.l     a2, d0
002340: 6600ffda     bne.w      $231c
002344: 7000         moveq      #$0, d0
002346: 60000004     bra.w      $234c
00234a: 4e71         nop        
00234c: 4ced0500fff8 movem.l    -$8(a5), a0/a2
002352: 4e5d         unlk       a5
002354: 4e75         rts        
002356: 4e550000     link.w     a5, #$0
00235a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
00235e: 518f         subq.l     #$8, a7
002360: 2f2f0020     move.l     $20(a7), -(a7)
002364: 7000         moveq      #$0, d0
002366: 102f0013     move.b     $13(a7), d0
00236a: 2200         move.l     d0, d1
00236c: 202f000c     move.l     $c(a7), d0
002370: 6100ff8a     bsr.w      $22fc
002374: 588f         addq.l     #$4, a7
002376: 2e80         move.l     d0, (a7)
002378: 6700000a     beq.w      $2384
00237c: 2017         move.l     (a7), d0
00237e: 508f         addq.l     #$8, a7
002380: 6000005a     bra.w      $23dc
002384: 7000         moveq      #$0, d0
002386: 102f000f     move.b     $f(a7), d0
00238a: 81fc000a     divs.w     #$a, d0
00238e: 4840         swap       d0
002390: 48c0         ext.l      d0
002392: e588         lsl.l      #$2, d0
002394: d0af0008     add.l      $8(a7), d0
002398: 2440         movea.l    d0, a2
00239a: 60000004     bra.w      $23a0
00239e: 2452         movea.l    (a2), a2
0023a0: 4a92         tst.l      (a2)
0023a2: 6600fffa     bne.w      $239e
0023a6: 41ef0004     lea.l      $4(a7), a0
0023aa: 2208         move.l     a0, d1
0023ac: 7016         moveq      #$16, d0
0023ae: 6100043e     bsr.w      $27ee
0023b2: 2480         move.l     d0, (a2)
0023b4: 6600000a     bne.w      $23c0
0023b8: 7000         moveq      #$0, d0
0023ba: 508f         addq.l     #$8, a7
0023bc: 6000001e     bra.w      $23dc
0023c0: 2452         movea.l    (a2), a2
0023c2: 4292         clr.l      (a2)
0023c4: 156f000f0014 move.b     $f(a7), $14(a2)
0023ca: 256f00200008 move.l     $20(a7), $8(a2)
0023d0: 200a         move.l     a2, d0
0023d2: 5880         addq.l     #$4, d0
0023d4: 508f         addq.l     #$8, a7
0023d6: 60000004     bra.w      $23dc
0023da: 4e71         nop        
0023dc: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0023e2: 4e5d         unlk       a5
0023e4: 4e75         rts        
0023e6: 4e550000     link.w     a5, #$0
0023ea: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
0023ee: 518f         subq.l     #$8, a7
0023f0: 7000         moveq      #$0, d0
0023f2: 102f000f     move.b     $f(a7), d0
0023f6: 81fc000a     divs.w     #$a, d0
0023fa: 4840         swap       d0
0023fc: 48c0         ext.l      d0
0023fe: e588         lsl.l      #$2, d0
002400: d0af0008     add.l      $8(a7), d0
002404: 2440         movea.l    d0, a2
002406: 6000002e     bra.w      $2436
00240a: 102f000f     move.b     $f(a7), d0
00240e: b02b0014     cmp.b      $14(a3), d0
002412: 66000020     bne.w      $2434
002416: 202f0020     move.l     $20(a7), d0
00241a: b0ab0008     cmp.l      $8(a3), d0
00241e: 66000014     bne.w      $2434
002422: 2493         move.l     (a3), (a2)
002424: 220b         move.l     a3, d1
002426: 7016         moveq      #$16, d0
002428: 61000416     bsr.w      $2840
00242c: 7000         moveq      #$0, d0
00242e: 508f         addq.l     #$8, a7
002430: 60000016     bra.w      $2448
002434: 2452         movea.l    (a2), a2
002436: 2652         movea.l    (a2), a3
002438: 200b         move.l     a3, d0
00243a: 6600ffce     bne.w      $240a
00243e: 70ff         moveq      #$ff, d0
002440: 508f         addq.l     #$8, a7
002442: 60000004     bra.w      $2448
002446: 4e71         nop        
002448: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
00244e: 4e5d         unlk       a5
002450: 4e75         rts        
002452: 4e550000     link.w     a5, #$0
002456: 48e7c080     movem.l    d0-d1/a0, -(a7)
00245a: 518f         subq.l     #$8, a7
00245c: 206f0008     movea.l    $8(a7), a0
002460: 202f000c     move.l     $c(a7), d0
002464: 2f700c000004 move.l     (a0, d0.l * 4), $4(a7)
00246a: 60000016     bra.w      $2482
00246e: 2eaf0004     move.l     $4(a7), (a7)
002472: 206f0004     movea.l    $4(a7), a0
002476: 2f500004     move.l     (a0), $4(a7)
00247a: 2217         move.l     (a7), d1
00247c: 7016         moveq      #$16, d0
00247e: 610003c0     bsr.w      $2840
002482: 4aaf0004     tst.l      $4(a7)
002486: 6600ffe6     bne.w      $246e
00248a: 508f         addq.l     #$8, a7
00248c: 4ced0100fffc movem.l    -$4(a5), a0
002492: 4e5d         unlk       a5
002494: 4e75         rts        
002496: 4e550000     link.w     a5, #$0
00249a: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
00249e: 2440         movea.l    d0, a2
0024a0: 7000         moveq      #$0, d0
0024a2: 102f0007     move.b     $7(a7), d0
0024a6: 81fc000a     divs.w     #$a, d0
0024aa: 4840         swap       d0
0024ac: 48c0         ext.l      d0
0024ae: 28720c00     movea.l    (a2, d0.l * 4), a4
0024b2: 60000058     bra.w      $250c
0024b6: 102f0007     move.b     $7(a7), d0
0024ba: b02c0014     cmp.b      $14(a4), d0
0024be: 6600004a     bne.w      $250a
0024c2: 4aac0008     tst.l      $8(a4)
0024c6: 67000042     beq.w      $250a
0024ca: 200c         move.l     a4, d0
0024cc: 5880         addq.l     #$4, d0
0024ce: 2640         movea.l    d0, a3
0024d0: 302b000c     move.w     $c(a3), d0
0024d4: 206b0008     movea.l    $8(a3), a0
0024d8: 81680004     or.w       d0, $4(a0)
0024dc: 0c6b0001000e cmpi.w     #$1, $e(a3)
0024e2: 66000016     bne.w      $24fa
0024e6: 206b0008     movea.l    $8(a3), a0
0024ea: 30280004     move.w     $4(a0), d0
0024ee: 206b0008     movea.l    $8(a3), a0
0024f2: c0680006     and.w      $6(a0), d0
0024f6: 67000012     beq.w      $250a
0024fa: 7000         moveq      #$0, d0
0024fc: 302b000e     move.w     $e(a3), d0
002500: 2200         move.l     d0, d1
002502: 202b0004     move.l     $4(a3), d0
002506: 61000376     bsr.w      $287e
00250a: 2854         movea.l    (a4), a4
00250c: 200c         move.l     a4, d0
00250e: 6600ffa6     bne.w      $24b6
002512: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
002518: 4e5d         unlk       a5
00251a: 4e75         rts        
00251c: 4e550000     link.w     a5, #$0
002520: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
002524: 2440         movea.l    d0, a2
002526: 4feffff4     lea.l      -$c(a7), a7
00252a: 42af0008     clr.l      $8(a7)
00252e: 60000054     bra.w      $2584
002532: 202f0008     move.l     $8(a7), d0
002536: e588         lsl.l      #$2, d0
002538: d08a         add.l      a2, d0
00253a: 2f400004     move.l     d0, $4(a7)
00253e: 60000036     bra.w      $2576
002542: 2057         movea.l    (a7), a0
002544: 202f0010     move.l     $10(a7), d0
002548: b0a80008     cmp.l      $8(a0), d0
00254c: 66000020     bne.w      $256e
002550: 2057         movea.l    (a7), a0
002552: 226f0004     movea.l    $4(a7), a1
002556: 2290         move.l     (a0), (a1)
002558: 2217         move.l     (a7), d1
00255a: 7016         moveq      #$16, d0
00255c: 610002e2     bsr.w      $2840
002560: 206f0004     movea.l    $4(a7), a0
002564: 4a90         tst.l      (a0)
002566: 66000006     bne.w      $256e
00256a: 60000014     bra.w      $2580
00256e: 206f0004     movea.l    $4(a7), a0
002572: 2f500004     move.l     (a0), $4(a7)
002576: 206f0004     movea.l    $4(a7), a0
00257a: 2e90         move.l     (a0), (a7)
00257c: 6600ffc4     bne.w      $2542
002580: 52af0008     addq.l     #$1, $8(a7)
002584: 700a         moveq      #$a, d0
002586: b0af0008     cmp.l      $8(a7), d0
00258a: 6e00ffa6     bgt.w      $2532
00258e: 4fef000c     lea.l      $c(a7), a7
002592: 4ced0700fff4 movem.l    -$c(a5), a0-a2
002598: 4e5d         unlk       a5
00259a: 4e75         rts        
00259c: 4e550000     link.w     a5, #$0
0025a0: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0025a4: 7000         moveq      #$0, d0
0025a6: 102f0007     move.b     $7(a7), d0
0025aa: 81fc000a     divs.w     #$a, d0
0025ae: 4840         swap       d0
0025b0: 48c0         ext.l      d0
0025b2: 2057         movea.l    (a7), a0
0025b4: 24700c00     movea.l    (a0, d0.l * 4), a2
0025b8: 60000018     bra.w      $25d2
0025bc: 102f0007     move.b     $7(a7), d0
0025c0: b02a0004     cmp.b      $4(a2), d0
0025c4: 6600000a     bne.w      $25d0
0025c8: 200a         move.l     a2, d0
0025ca: 5c80         addq.l     #$6, d0
0025cc: 60000012     bra.w      $25e0
0025d0: 2452         movea.l    (a2), a2
0025d2: 200a         move.l     a2, d0
0025d4: 6600ffe6     bne.w      $25bc
0025d8: 7000         moveq      #$0, d0
0025da: 60000004     bra.w      $25e0
0025de: 4e71         nop        
0025e0: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0025e6: 4e5d         unlk       a5
0025e8: 4e75         rts        
0025ea: 4e550000     link.w     a5, #$0
0025ee: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0025f2: 518f         subq.l     #$8, a7
0025f4: 7000         moveq      #$0, d0
0025f6: 102f000f     move.b     $f(a7), d0
0025fa: 2200         move.l     d0, d1
0025fc: 202f0008     move.l     $8(a7), d0
002600: 6100ff9a     bsr.w      $259c
002604: 2e80         move.l     d0, (a7)
002606: 6700000a     beq.w      $2612
00260a: 2017         move.l     (a7), d0
00260c: 508f         addq.l     #$8, a7
00260e: 6000005e     bra.w      $266e
002612: 7000         moveq      #$0, d0
002614: 102f000f     move.b     $f(a7), d0
002618: 81fc000a     divs.w     #$a, d0
00261c: 4840         swap       d0
00261e: 48c0         ext.l      d0
002620: e588         lsl.l      #$2, d0
002622: d0af0008     add.l      $8(a7), d0
002626: 2440         movea.l    d0, a2
002628: 60000004     bra.w      $262e
00262c: 2452         movea.l    (a2), a2
00262e: 4a92         tst.l      (a2)
002630: 6600fffa     bne.w      $262c
002634: 41ef0004     lea.l      $4(a7), a0
002638: 2208         move.l     a0, d1
00263a: 700e         moveq      #$e, d0
00263c: d0af0020     add.l      $20(a7), d0
002640: 610001ac     bsr.w      $27ee
002644: 2480         move.l     d0, (a2)
002646: 6600000a     bne.w      $2652
00264a: 7000         moveq      #$0, d0
00264c: 508f         addq.l     #$8, a7
00264e: 6000001e     bra.w      $266e
002652: 2452         movea.l    (a2), a2
002654: 4292         clr.l      (a2)
002656: 156f000f0004 move.b     $f(a7), $4(a2)
00265c: 156f00230005 move.b     $23(a7), $5(a2)
002662: 200a         move.l     a2, d0
002664: 5c80         addq.l     #$6, d0
002666: 508f         addq.l     #$8, a7
002668: 60000004     bra.w      $266e
00266c: 4e71         nop        
00266e: 4ced0500fff8 movem.l    -$8(a5), a0/a2
002674: 4e5d         unlk       a5
002676: 4e75         rts        
002678: 4e550000     link.w     a5, #$0
00267c: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002680: 4feffff4     lea.l      -$c(a7), a7
002684: 7000         moveq      #$0, d0
002686: 102f0013     move.b     $13(a7), d0
00268a: 81fc000a     divs.w     #$a, d0
00268e: 4840         swap       d0
002690: 48c0         ext.l      d0
002692: e588         lsl.l      #$2, d0
002694: d0af000c     add.l      $c(a7), d0
002698: 2440         movea.l    d0, a2
00269a: 6000002e     bra.w      $26ca
00269e: 102f0013     move.b     $13(a7), d0
0026a2: b02b0004     cmp.b      $4(a3), d0
0026a6: 66000020     bne.w      $26c8
0026aa: 2493         move.l     (a3), (a2)
0026ac: 7000         moveq      #$0, d0
0026ae: 102b0005     move.b     $5(a3), d0
0026b2: 2e80         move.l     d0, (a7)
0026b4: 220b         move.l     a3, d1
0026b6: 700e         moveq      #$e, d0
0026b8: d097         add.l      (a7), d0
0026ba: 61000184     bsr.w      $2840
0026be: 7000         moveq      #$0, d0
0026c0: 4fef000c     lea.l      $c(a7), a7
0026c4: 60000018     bra.w      $26de
0026c8: 2452         movea.l    (a2), a2
0026ca: 2652         movea.l    (a2), a3
0026cc: 200b         move.l     a3, d0
0026ce: 6600ffce     bne.w      $269e
0026d2: 70ff         moveq      #$ff, d0
0026d4: 4fef000c     lea.l      $c(a7), a7
0026d8: 60000004     bra.w      $26de
0026dc: 4e71         nop        
0026de: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0026e4: 4e5d         unlk       a5
0026e6: 4e75         rts        
0026e8: 4e550000     link.w     a5, #$0
0026ec: 48e7c080     movem.l    d0-d1/a0, -(a7)
0026f0: 4feffff4     lea.l      -$c(a7), a7
0026f4: 206f000c     movea.l    $c(a7), a0
0026f8: 202f0010     move.l     $10(a7), d0
0026fc: 2f700c000008 move.l     (a0, d0.l * 4), $8(a7)
002702: 60000028     bra.w      $272c
002706: 2f6f00080004 move.l     $8(a7), $4(a7)
00270c: 206f0008     movea.l    $8(a7), a0
002710: 2f500008     move.l     (a0), $8(a7)
002714: 206f0004     movea.l    $4(a7), a0
002718: 7000         moveq      #$0, d0
00271a: 10280005     move.b     $5(a0), d0
00271e: 2e80         move.l     d0, (a7)
002720: 222f0004     move.l     $4(a7), d1
002724: 700e         moveq      #$e, d0
002726: d097         add.l      (a7), d0
002728: 61000116     bsr.w      $2840
00272c: 4aaf0008     tst.l      $8(a7)
002730: 6600ffd4     bne.w      $2706
002734: 4fef000c     lea.l      $c(a7), a7
002738: 4ced0100fffc movem.l    -$4(a5), a0
00273e: 4e5d         unlk       a5
002740: 4e75         rts        
002742: 48e74000     movem.l    d1, -(a7)
002746: 4e40         trap       #$0
002748: 002b604848e7 ori.b      #$48, $48e7(a3)
00274e: 40b0206f     negx.l     $6f(a0, d2.w)
002752: 0014246f     ori.b      #$6f, (a4)
002756: 0018266f     ori.b      #$6f, (a0)+
00275a: 001c4e40     ori.b      #$40, (a4)+
00275e: 002a605048e7 ori.b      #$50, $48e7(a2)
002764: 40a0         negx.l     -(a0)
002766: 207c00000000 movea.l    #$0, a0
00276c: 2441         movea.l    d1, a2
00276e: 4e40         trap       #$0
002770: 002a603448e7 ori.b      #$34, $48e7(a2)
002776: 60a0         bra.b      $2718
002778: 2400         move.l     d0, d2
00277a: 2041         movea.l    d1, a0
00277c: 246f0014     movea.l    $14(a7), a2
002780: 4e40         trap       #$0
002782: 0038603648e7 ori.b      #$36, $48e7.w
002788: 4050         negx.w     (a0)
00278a: 2240         movea.l    d0, a1
00278c: 2641         movea.l    d1, a3
00278e: 4e40         trap       #$0
002790: 0032600a653042804cdf ori.b      #$a, $42804cdf(a2, d6.w * 4)
00279a: 00024e75     ori.b      #$75, d2
00279e: 652e         bcs.b      $27ce
0027a0: 4280         clr.l      d0
0027a2: 4cdf0a02     movem.l    (a7)+, d1/a1/a3
0027a6: 4e75         rts        
0027a8: 652c         bcs.b      $27d6
0027aa: 4280         clr.l      d0
0027ac: 4cdf0502     movem.l    (a7)+, d1/a0/a2
0027b0: 4e75         rts        
0027b2: 652a         bcs.b      $27de
0027b4: 4280         clr.l      d0
0027b6: 4cdf0d02     movem.l    (a7)+, d1/a0/a2-a3
0027ba: 4e75         rts        
0027bc: 6528         bcs.b      $27e6
0027be: 4280         clr.l      d0
0027c0: 4cdf0506     movem.l    (a7)+, d1-d2/a0/a2
0027c4: 4e75         rts        
0027c6: 4280         clr.l      d0
0027c8: 3001         move.w     d1, d0
0027ca: 4480         neg.l      d0
0027cc: 60ca         bra.b      $2798
0027ce: 4280         clr.l      d0
0027d0: 3001         move.w     d1, d0
0027d2: 4480         neg.l      d0
0027d4: 60cc         bra.b      $27a2
0027d6: 4280         clr.l      d0
0027d8: 3001         move.w     d1, d0
0027da: 4480         neg.l      d0
0027dc: 60ce         bra.b      $27ac
0027de: 4280         clr.l      d0
0027e0: 3001         move.w     d1, d0
0027e2: 4480         neg.l      d0
0027e4: 60d0         bra.b      $27b6
0027e6: 4280         clr.l      d0
0027e8: 3001         move.w     d1, d0
0027ea: 4480         neg.l      d0
0027ec: 60d2         bra.b      $27c0
0027ee: 48e700a0     movem.l    a0/a2, -(a7)
0027f2: 2f01         move.l     d1, -(a7)
0027f4: 4e40         trap       #$0
0027f6: 0028650c205f ori.b      #$c, $205f(a0)
0027fc: 2080         move.l     d0, (a0)
0027fe: 200a         move.l     a2, d0
002800: 4cdf0500     movem.l    (a7)+, a0/a2
002804: 4e75         rts        
002806: 4280         clr.l      d0
002808: 3001         move.w     d1, d0
00280a: 205f         movea.l    (a7)+, a0
00280c: 2080         move.l     d0, (a0)
00280e: 4280         clr.l      d0
002810: 4cdf0500     movem.l    (a7)+, a0/a2
002814: 4e75         rts        
002816: 48e700a0     movem.l    a0/a2, -(a7)
00281a: 4e40         trap       #$0
00281c: 005c650e     ori.w      #$650e, (a4)+
002820: 206f000c     movea.l    $c(a7), a0
002824: 2080         move.l     d0, (a0)
002826: 200a         move.l     a2, d0
002828: 4cdf0500     movem.l    (a7)+, a0/a2
00282c: 4e75         rts        
00282e: 4280         clr.l      d0
002830: 3001         move.w     d1, d0
002832: 206f000c     movea.l    $c(a7), a0
002836: 2080         move.l     d0, (a0)
002838: 4280         clr.l      d0
00283a: 4cdf0500     movem.l    (a7)+, a0/a2
00283e: 4e75         rts        
002840: 2f0a         move.l     a2, -(a7)
002842: 2441         movea.l    d1, a2
002844: 4e40         trap       #$0
002846: 0029245f6504 ori.b      #$5f, $6504(a1)
00284c: 4280         clr.l      d0
00284e: 4e75         rts        
002850: 4280         clr.l      d0
002852: 3001         move.w     d1, d0
002854: 4e75         rts        
002856: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
00285a: 242f001c     move.l     $1c(a7), d2
00285e: 262f0020     move.l     $20(a7), d3
002862: 282f0024     move.l     $24(a7), d4
002866: 206f0028     movea.l    $28(a7), a0
00286a: 226f002c     movea.l    $2c(a7), a1
00286e: 4e40         trap       #$0
002870: 00036506     ori.b      #$6, d3
002874: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
002878: 4e75         rts        
00287a: 4280         clr.l      d0
00287c: 60f6         bra.b      $2874
00287e: 48e74000     movem.l    d1, -(a7)
002882: 4e40         trap       #$0
002884: 0008         .dc.w      $0008
002886: 600000be     bra.w      $2946
00288a: 48e76000     movem.l    d1-d2, -(a7)
00288e: 008180000000 ori.l      #$80000000, d1
002894: 4e40         trap       #$0
002896: 00276000     ori.b      #$0, -(a7)
00289a: 00a248e76000 ori.l      #$48e76000, -(a2)
0028a0: 242f000c     move.l     $c(a7), d2
0028a4: 4e40         trap       #$0
0028a6: 00276000     ori.b      #$0, -(a7)
0028aa: 009248e74000 ori.l      #$48e74000, (a2)
0028b0: e180         asl.l      #$8, d0
0028b2: 008080000000 ori.l      #$80000000, d0
0028b8: 4e40         trap       #$0
0028ba: 000a         .dc.w      $000a
0028bc: 60000092     bra.w      $2950
0028c0: 48e74000     movem.l    d1, -(a7)
0028c4: 4e40         trap       #$0
0028c6: 000a         .dc.w      $000a
0028c8: 60000086     bra.w      $2950
0028cc: 48e74080     movem.l    d1/a0, -(a7)
0028d0: 2040         movea.l    d0, a0
0028d2: 2001         move.l     d1, d0
0028d4: 222f000c     move.l     $c(a7), d1
0028d8: 4e40         trap       #$0
0028da: 0017607a     ori.b      #$7a, (a7)
0028de: 48e77080     movem.l    d1-d3/a0, -(a7)
0028e2: 2041         movea.l    d1, a0
0028e4: 4e40         trap       #$0
0028e6: 0015651c     ori.b      #$1c, (a5)
0028ea: 2080         move.l     d0, (a0)
0028ec: 206f0014     movea.l    $14(a7), a0
0028f0: 2081         move.l     d1, (a0)
0028f2: 206f0018     movea.l    $18(a7), a0
0028f6: 3082         move.w     d2, (a0)
0028f8: 206f001c     movea.l    $1c(a7), a0
0028fc: 2083         move.l     d3, (a0)
0028fe: 4280         clr.l      d0
002900: 4cdf010e     movem.l    (a7)+, d1-d3/a0
002904: 4e75         rts        
002906: 4280         clr.l      d0
002908: 3001         move.w     d1, d0
00290a: 60f4         bra.b      $2900
00290c: 48e77000     movem.l    d1-d3, -(a7)
002910: 7003         moveq      #$3, d0
002912: 4e40         trap       #$0
002914: 0015604c     ori.b      #$4c, (a5)
002918: 48e77000     movem.l    d1-d3, -(a7)
00291c: 7000         moveq      #$0, d0
00291e: 4e40         trap       #$0
002920: 0015604c     ori.b      #$4c, (a5)
002924: 48e77000     movem.l    d1-d3, -(a7)
002928: 7000         moveq      #$0, d0
00292a: 4e40         trap       #$0
00292c: 00156048     ori.b      #$48, (a5)
002930: 48e77000     movem.l    d1-d3, -(a7)
002934: 7000         moveq      #$0, d0
002936: 4e40         trap       #$0
002938: 00156040     ori.b      #$40, (a5)
00293c: 6544         bcs.b      $2982
00293e: 2002         move.l     d2, d0
002940: 4cdf0006     movem.l    (a7)+, d1-d2
002944: 4e75         rts        
002946: 654a         bcs.b      $2992
002948: 4280         clr.l      d0
00294a: 4cdf0002     movem.l    (a7)+, d1
00294e: 4e75         rts        
002950: 6540         bcs.b      $2992
002952: 4cdf0002     movem.l    (a7)+, d1
002956: 4e75         rts        
002958: 6530         bcs.b      $298a
00295a: 2f41000c     move.l     d1, $c(a7)
00295e: 4cdf0102     movem.l    (a7)+, d1/a0
002962: 4e75         rts        
002964: 6534         bcs.b      $299a
002966: 4280         clr.l      d0
002968: 3003         move.w     d3, d0
00296a: 4cdf000e     movem.l    (a7)+, d1-d3
00296e: 4e75         rts        
002970: 6528         bcs.b      $299a
002972: 4280         clr.l      d0
002974: 3002         move.w     d2, d0
002976: 60f2         bra.b      $296a
002978: 6520         bcs.b      $299a
00297a: 60ee         bra.b      $296a
00297c: 651c         bcs.b      $299a
00297e: 2001         move.l     d1, d0
002980: 60e8         bra.b      $296a
002982: 203cffffffff move.l     #$ffffffff, d0
002988: 60b6         bra.b      $2940
00298a: 4280         clr.l      d0
00298c: 3001         move.w     d1, d0
00298e: 4480         neg.l      d0
002990: 60cc         bra.b      $295e
002992: 4280         clr.l      d0
002994: 3001         move.w     d1, d0
002996: 4480         neg.l      d0
002998: 60b0         bra.b      $294a
00299a: 4280         clr.l      d0
00299c: 3001         move.w     d1, d0
00299e: 4480         neg.l      d0
0029a0: 60c8         bra.b      $296a
0029a2: 027cf8ff     andi.w     #$f8ff, sr
0029a6: 4e75         rts        
0029a8: 007c0700     ori.w      #$700, sr
0029ac: 027cf9ff     andi.w     #$f9ff, sr
0029b0: 4e75         rts        
0029b2: 007c0700     ori.w      #$700, sr
0029b6: 027cfaff     andi.w     #$faff, sr
0029ba: 4e75         rts        
0029bc: 007c0700     ori.w      #$700, sr
0029c0: 027cfbff     andi.w     #$fbff, sr
0029c4: 4e75         rts        
0029c6: 007c0700     ori.w      #$700, sr
0029ca: 027cfcff     andi.w     #$fcff, sr
0029ce: 4e75         rts        
0029d0: 007c0700     ori.w      #$700, sr
0029d4: 027cfdff     andi.w     #$fdff, sr
0029d8: 4e75         rts        
0029da: 007c0700     ori.w      #$700, sr
0029de: 027cfeff     andi.w     #$feff, sr
0029e2: 4e75         rts        
0029e4: 007c0700     ori.w      #$700, sr
0029e8: 4e75         rts        
0029ea: 48e76000     movem.l    d1-d2, -(a7)
0029ee: 40c1         move.w     sr, d1
0029f0: 3401         move.w     d1, d2
0029f2: c27cf8ff     and.w      #$f8ff, d1
0029f6: 8240         or.w       d0, d1
0029f8: 46c1         move.w     d1, sr
0029fa: 028200000700 andi.l     #$700, d2
002a00: 2002         move.l     d2, d0
002a02: 4cdf0006     movem.l    (a7)+, d1-d2
002a06: 4e75         rts        
002a08: 48e73800     movem.l    d2-d4, -(a7)
002a0c: 2401         move.l     d1, d2
002a0e: c142         exg.l      d0, d2
002a10: 61000186     bsr.w      $2b98
002a14: c142         exg.l      d0, d2
002a16: 2601         move.l     d1, d3
002a18: 6100017e     bsr.w      $2b98
002a1c: 7800         moveq      #$0, d4
002a1e: 2f2f000c     move.l     $c(a7), -(a7)
002a22: 4e75         rts        
002a24: 61e2         bsr.b      $2a08
002a26: 610001da     bsr.w      $2c02
002a2a: 6048         bra.b      $2a74
002a2c: 61da         bsr.b      $2a08
002a2e: 610004a8     bsr.w      $2ed8
002a32: 6040         bra.b      $2a74
002a34: 61d2         bsr.b      $2a08
002a36: 610001c2     bsr.w      $2bfa
002a3a: 6038         bra.b      $2a74
002a3c: 61ca         bsr.b      $2a08
002a3e: 6100033e     bsr.w      $2d7e
002a42: 6030         bra.b      $2a74
002a44: 61c2         bsr.b      $2a08
002a46: 610005d0     bsr.w      $3018
002a4a: 6028         bra.b      $2a74
002a4c: 61ba         bsr.b      $2a08
002a4e: 6100079e     bsr.w      $31ee
002a52: 6020         bra.b      $2a74
002a54: 48e7c000     movem.l    d0-d1, -(a7)
002a58: 61ae         bsr.b      $2a08
002a5a: 61000944     bsr.w      $33a0
002a5e: 4cdf801c     movem.l    (a7)+, d2-d4/a7
002a62: 4cdf0003     movem.l    (a7)+, d0-d1
002a66: 4e75         rts        
002a68: 4a80         tst.l      d0
002a6a: 6706         beq.b      $2a72
002a6c: 0840001f     bchg.b     #$1f, d0
002a70: 4a80         tst.l      d0
002a72: 4e75         rts        
002a74: 6604         bne.b      $2a7a
002a76: 08c40002     bset.b     #$2, d4
002a7a: 6a04         bpl.b      $2a80
002a7c: 08c40003     bset.b     #$3, d4
002a80: 6804         bvc.b      $2a86
002a82: 08c40001     bset.b     #$1, d4
002a86: 6404         bcc.b      $2a8c
002a88: 08c40000     bset.b     #$0, d4
002a8c: 6100012a     bsr.w      $2bb8
002a90: 6604         bne.b      $2a96
002a92: 08c40002     bset.b     #$2, d4
002a96: 6804         bvc.b      $2a9c
002a98: 08c40001     bset.b     #$1, d4
002a9c: 44c4         move.w     d4, ccr
002a9e: 4cdf801c     movem.l    (a7)+, d2-d4/a7
002aa2: 4e76         trapv      
002aa4: 4e75         rts        
002aa6: 2f01         move.l     d1, -(a7)
002aa8: 6100093c     bsr.w      $33e6
002aac: 6100010a     bsr.w      $2bb8
002ab0: 221f         move.l     (a7)+, d1
002ab2: 4e75         rts        
002ab4: 2f01         move.l     d1, -(a7)
002ab6: 6100095e     bsr.w      $3416
002aba: 610000fc     bsr.w      $2bb8
002abe: 221f         move.l     (a7)+, d1
002ac0: 4e75         rts        
002ac2: 48e74000     movem.l    d1, -(a7)
002ac6: 610000d0     bsr.w      $2b98
002aca: 61000956     bsr.w      $3422
002ace: 4cdf0002     movem.l    (a7)+, d1
002ad2: 4e75         rts        
002ad4: 48e74000     movem.l    d1, -(a7)
002ad8: 610000be     bsr.w      $2b98
002adc: 61000978     bsr.w      $3456
002ae0: 4cdf0002     movem.l    (a7)+, d1
002ae4: 4e75         rts        
002ae6: 48e73000     movem.l    d2-d3, -(a7)
002aea: 610000ac     bsr.w      $2b98
002aee: 610009c8     bsr.w      $34b8
002af2: 610000c4     bsr.w      $2bb8
002af6: c142         exg.l      d0, d2
002af8: 2203         move.l     d3, d1
002afa: 610000bc     bsr.w      $2bb8
002afe: 2200         move.l     d0, d1
002b00: 2002         move.l     d2, d0
002b02: 4cdf000c     movem.l    (a7)+, d2-d3
002b06: 4e75         rts        
002b08: 48e74000     movem.l    d1, -(a7)
002b0c: 6100008a     bsr.w      $2b98
002b10: 610a         bsr.b      $2b1c
002b12: 610000a4     bsr.w      $2bb8
002b16: 4cdf0002     movem.l    (a7)+, d1
002b1a: 4e75         rts        
002b1c: 48e73f00     movem.l    d2-d7, -(a7)
002b20: 7800         moveq      #$0, d4
002b22: 61000b08     bsr.w      $362c
002b26: 0c47ffff     cmpi.w     #$ffff, d7
002b2a: 6e1c         bgt.b      $2b48
002b2c: 6d12         blt.b      $2b40
002b2e: 203c3ff00000 move.l     #$3ff00000, d0
002b34: 7200         moveq      #$0, d1
002b36: 4a84         tst.l      d4
002b38: 6a58         bpl.b      $2b92
002b3a: 08c0001f     bset.b     #$1f, d0
002b3e: 6052         bra.b      $2b92
002b40: 7000         moveq      #$0, d0
002b42: 7200         moveq      #$0, d1
002b44: 3e00         move.w     d0, d7
002b46: 604a         bra.b      $2b92
002b48: 7c34         moveq      #$34, d6
002b4a: 9c47         sub.w      d7, d6
002b4c: 6f28         ble.b      $2b76
002b4e: 7600         moveq      #$0, d3
002b50: 600c         bra.b      $2b5e
002b52: 6404         bcc.b      $2b58
002b54: 863c0001     or.b       #$1, d3
002b58: 5247         addq.w     #$1, d7
002b5a: e288         lsr.l      #$1, d0
002b5c: e291         roxr.l     #$1, d1
002b5e: 51cefff2     dbra       d6, $2b52
002b62: 6412         bcc.b      $2b76
002b64: 5281         addq.l     #$1, d1
002b66: 6404         bcc.b      $2b6c
002b68: 5280         addq.l     #$1, d0
002b6a: 600a         bra.b      $2b76
002b6c: 08030000     btst.b     #$0, d3
002b70: 6604         bne.b      $2b76
002b72: 020100fe     andi.b     #$fe, d1
002b76: 4a80         tst.l      d0
002b78: 6604         bne.b      $2b7e
002b7a: 4a81         tst.l      d1
002b7c: 6714         beq.b      $2b92
002b7e: b0bc00100000 cmp.l      #$100000, d0
002b84: 6408         bcc.b      $2b8e
002b86: e389         lsl.l      #$1, d1
002b88: e390         roxl.l     #$1, d0
002b8a: 5347         subq.w     #$1, d7
002b8c: 60e8         bra.b      $2b76
002b8e: 61000aec     bsr.w      $367c
002b92: 4cdf00fc     movem.l    (a7)+, d2-d7
002b96: 4e75         rts        
002b98: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
002b9c: 7800         moveq      #$0, d4
002b9e: 61000a70     bsr.w      $3610
002ba2: 7200         moveq      #$0, d1
002ba4: 7402         moveq      #$2, d2
002ba6: e288         lsr.l      #$1, d0
002ba8: e291         roxr.l     #$1, d1
002baa: 51cafffa     dbra       d2, $2ba6
002bae: 61000acc     bsr.w      $367c
002bb2: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
002bb6: 4e75         rts        
002bb8: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
002bbc: 7a00         moveq      #$0, d5
002bbe: 7800         moveq      #$0, d4
002bc0: 61000a6a     bsr.w      $362c
002bc4: 7402         moveq      #$2, d2
002bc6: e389         lsl.l      #$1, d1
002bc8: e390         roxl.l     #$1, d0
002bca: 51cafffa     dbra       d2, $2bc6
002bce: 4a81         tst.l      d1
002bd0: 6a1a         bpl.b      $2bec
002bd2: 5280         addq.l     #$1, d0
002bd4: 0c8180000000 cmpi.l     #$80000000, d1
002bda: 6604         bne.b      $2be0
002bdc: 020000fe     andi.b     #$fe, d0
002be0: 0c8001000000 cmpi.l     #$1000000, d0
002be6: 6504         bcs.b      $2bec
002be8: e288         lsr.l      #$1, d0
002bea: 5247         addq.w     #$1, d7
002bec: 61000a74     bsr.w      $3662
002bf0: 44c5         move.w     d5, ccr
002bf2: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
002bf6: 4e76         trapv      
002bf8: 4e75         rts        
002bfa: 4a82         tst.l      d2
002bfc: 6704         beq.b      $2c02
002bfe: 0842001f     bchg.b     #$1f, d2
002c02: 4a82         tst.l      d2
002c04: 6604         bne.b      $2c0a
002c06: 4a80         tst.l      d0
002c08: 4e75         rts        
002c0a: 4a80         tst.l      d0
002c0c: 6608         bne.b      $2c16
002c0e: 2002         move.l     d2, d0
002c10: 2203         move.l     d3, d1
002c12: 4a80         tst.l      d0
002c14: 4e75         rts        
002c16: 48e70f00     movem.l    d4-d7, -(a7)
002c1a: 7a00         moveq      #$0, d5
002c1c: 2e00         move.l     d0, d7
002c1e: 2c02         move.l     d2, d6
002c20: 4247         clr.w      d7
002c22: 4847         swap       d7
002c24: 4246         clr.w      d6
002c26: 4846         swap       d6
002c28: 2a3c000fffff move.l     #$fffff, d5
002c2e: c085         and.l      d5, d0
002c30: c485         and.l      d5, d2
002c32: 7a14         moveq      #$14, d5
002c34: 0bc0         bset.b     d5, d0
002c36: 0bc2         bset.b     d5, d2
002c38: 7a0f         moveq      #$f, d5
002c3a: 0b87         bclr.b     d5, d7
002c3c: 6704         beq.b      $2c42
002c3e: 4481         neg.l      d1
002c40: 4080         negx.l     d0
002c42: 0b86         bclr.b     d5, d6
002c44: 6704         beq.b      $2c4a
002c46: 4483         neg.l      d3
002c48: 4082         negx.l     d2
002c4a: e84e         lsr.w      #$4, d6
002c4c: e84f         lsr.w      #$4, d7
002c4e: 044603ff     subi.w     #$3ff, d6
002c52: 044703ff     subi.w     #$3ff, d7
002c56: 7a00         moveq      #$0, d5
002c58: 3807         move.w     d7, d4
002c5a: 9846         sub.w      d6, d4
002c5c: 6770         beq.b      $2cce
002c5e: 6a08         bpl.b      $2c68
002c60: 4444         neg.w      d4
002c62: c142         exg.l      d0, d2
002c64: c343         exg.l      d1, d3
002c66: cf46         exg.l      d7, d6
002c68: 7c00         moveq      #$0, d6
002c6a: 0c440036     cmpi.w     #$36, d4
002c6e: 6314         bls.b      $2c84
002c70: 2800         move.l     d0, d4
002c72: 028480000000 andi.l     #$80000000, d4
002c78: 6a06         bpl.b      $2c80
002c7a: 4486         neg.l      d6
002c7c: 4081         negx.l     d1
002c7e: 4080         negx.l     d0
002c80: 60000080     bra.w      $2d02
002c84: 0c440020     cmpi.w     #$20, d4
002c88: 650e         bcs.b      $2c98
002c8a: 04440020     subi.w     #$20, d4
002c8e: 2c03         move.l     d3, d6
002c90: 2602         move.l     d2, d3
002c92: 5bc2         smi.b      d2
002c94: 4882         ext.w      d2
002c96: 48c2         ext.l      d2
002c98: 0c440010     cmpi.w     #$10, d4
002c9c: 6510         bcs.b      $2cae
002c9e: 04440010     subi.w     #$10, d4
002ca2: 3c03         move.w     d3, d6
002ca4: 3602         move.w     d2, d3
002ca6: 4846         swap       d6
002ca8: 4843         swap       d3
002caa: 4842         swap       d2
002cac: 48c2         ext.l      d2
002cae: 0c440008     cmpi.w     #$8, d4
002cb2: 6514         bcs.b      $2cc8
002cb4: 5144         subq.w     #$8, d4
002cb6: 1c03         move.b     d3, d6
002cb8: 1602         move.b     d2, d3
002cba: e082         asr.l      #$8, d2
002cbc: e09b         ror.l      #$8, d3
002cbe: e09e         ror.l      #$8, d6
002cc0: 6006         bra.b      $2cc8
002cc2: e282         asr.l      #$1, d2
002cc4: e293         roxr.l     #$1, d3
002cc6: e296         roxr.l     #$1, d6
002cc8: 51ccfff8     dbra       d4, $2cc2
002ccc: 6002         bra.b      $2cd0
002cce: 7c00         moveq      #$0, d6
002cd0: 7800         moveq      #$0, d4
002cd2: d283         add.l      d3, d1
002cd4: d182         addx.l     d2, d0
002cd6: 6a0c         bpl.b      $2ce4
002cd8: 283c80000000 move.l     #$80000000, d4
002cde: 4486         neg.l      d6
002ce0: 4081         negx.l     d1
002ce2: 4080         negx.l     d0
002ce4: 2406         move.l     d6, d2
002ce6: 4a80         tst.l      d0
002ce8: 6616         bne.b      $2d00
002cea: 2001         move.l     d1, d0
002cec: 660a         bne.b      $2cf8
002cee: 2006         move.l     d6, d0
002cf0: 6714         beq.b      $2d06
002cf2: 04470040     subi.w     #$40, d7
002cf6: 6006         bra.b      $2cfe
002cf8: 04470020     subi.w     #$20, d7
002cfc: 2202         move.l     d2, d1
002cfe: 7400         moveq      #$0, d2
002d00: 611c         bsr.b      $2d1e
002d02: 61000978     bsr.w      $367c
002d06: 4a80         tst.l      d0
002d08: 6604         bne.b      $2d0e
002d0a: 08c50002     bset.b     #$2, d5
002d0e: 6a04         bpl.b      $2d14
002d10: 08c50003     bset.b     #$3, d5
002d14: 44c5         move.w     d5, ccr
002d16: 4cdf00f0     movem.l    (a7)+, d4-d7
002d1a: 4e76         trapv      
002d1c: 4e75         rts        
002d1e: 4a80         tst.l      d0
002d20: 660c         bne.b      $2d2e
002d22: 4a81         tst.l      d1
002d24: 6608         bne.b      $2d2e
002d26: 4a82         tst.l      d2
002d28: 6604         bne.b      $2d2e
002d2a: 7e00         moveq      #$0, d7
002d2c: 4e75         rts        
002d2e: 0c8000200000 cmpi.l     #$200000, d0
002d34: 650a         bcs.b      $2d40
002d36: e288         lsr.l      #$1, d0
002d38: e291         roxr.l     #$1, d1
002d3a: e292         roxr.l     #$1, d2
002d3c: 5247         addq.w     #$1, d7
002d3e: 60de         bra.b      $2d1e
002d40: b0bc00100000 cmp.l      #$100000, d0
002d46: 640a         bcc.b      $2d52
002d48: e38a         lsl.l      #$1, d2
002d4a: e391         roxl.l     #$1, d1
002d4c: e390         roxl.l     #$1, d0
002d4e: 5347         subq.w     #$1, d7
002d50: 60ee         bra.b      $2d40
002d52: 4a82         tst.l      d2
002d54: 6a22         bpl.b      $2d78
002d56: 5281         addq.l     #$1, d1
002d58: 6412         bcc.b      $2d6c
002d5a: 5280         addq.l     #$1, d0
002d5c: 0c8000200000 cmpi.l     #$200000, d0
002d62: 6514         bcs.b      $2d78
002d64: e288         lsr.l      #$1, d0
002d66: e291         roxr.l     #$1, d1
002d68: 5247         addq.w     #$1, d7
002d6a: 600c         bra.b      $2d78
002d6c: 0c8280000000 cmpi.l     #$80000000, d2
002d72: 6604         bne.b      $2d78
002d74: 020100fe     andi.b     #$fe, d1
002d78: 023c         .dc.w      $023c
002d7a: fffb         dc.w       $fffb
002d7c: 4e75         rts        
002d7e: 48e73c00     movem.l    d2-d5, -(a7)
002d82: 7400         moveq      #$0, d2
002d84: 4a80         tst.l      d0
002d86: 6b00015c     bmi.w      $2ee4
002d8a: 2600         move.l     d0, d3
002d8c: 0883001f     bclr.b     #$1f, d3
002d90: 4243         clr.w      d3
002d92: 4843         swap       d3
002d94: 67000274     beq.w      $300a
002d98: 2800         move.l     d0, d4
002d9a: 6a04         bpl.b      $2da0
002d9c: 08c3001f     bset.b     #$1f, d3
002da0: 0280000fffff andi.l     #$fffff, d0
002da6: 08c00014     bset.b     #$14, d0
002daa: e84b         lsr.w      #$4, d3
002dac: 044303ff     subi.w     #$3ff, d3
002db0: 620000cc     bhi.w      $2e7e
002db4: 6764         beq.b      $2e1a
002db6: 0843001f     bchg.b     #$1f, d3
002dba: 4443         neg.w      d3
002dbc: 0c430036     cmpi.w     #$36, d3
002dc0: 64000248     bcc.w      $300a
002dc4: 0c430014     cmpi.w     #$14, d3
002dc8: 621e         bhi.b      $2de8
002dca: 7400         moveq      #$0, d2
002dcc: 5343         subq.w     #$1, d3
002dce: e288         lsr.l      #$1, d0
002dd0: e291         roxr.l     #$1, d1
002dd2: e292         roxr.l     #$1, d2
002dd4: 51cbfff8     dbra       d3, $2dce
002dd8: 363c0000     move.w     #$0, d3
002ddc: 4481         neg.l      d1
002dde: 4080         negx.l     d0
002de0: d0bc00100000 add.l      #$100000, d0
002de6: 6032         bra.b      $2e1a
002de8: 2401         move.l     d1, d2
002dea: 2200         move.l     d0, d1
002dec: 7020         moveq      #$20, d0
002dee: 9043         sub.w      d3, d0
002df0: 6412         bcc.b      $2e04
002df2: 4440         neg.w      d0
002df4: 5340         subq.w     #$1, d0
002df6: e289         lsr.l      #$1, d1
002df8: e292         roxr.l     #$1, d2
002dfa: 51c8fffa     dbra       d0, $2df6
002dfe: 6008         bra.b      $2e08
002e00: e38a         lsl.l      #$1, d2
002e02: e391         roxl.l     #$1, d1
002e04: 51c8fffa     dbra       d0, $2e00
002e08: 7000         moveq      #$0, d0
002e0a: 4482         neg.l      d2
002e0c: 4081         negx.l     d1
002e0e: 4080         negx.l     d0
002e10: d0bc00100000 add.l      #$100000, d0
002e16: 363c0000     move.w     #$0, d3
002e1a: 08800014     bclr.b     #$14, d0
002e1e: 4a80         tst.l      d0
002e20: 660a         bne.b      $2e2c
002e22: 4a81         tst.l      d1
002e24: 6606         bne.b      $2e2c
002e26: 4cdf003c     movem.l    (a7)+, d2-d5
002e2a: 4e75         rts        
002e2c: e38a         lsl.l      #$1, d2
002e2e: e391         roxl.l     #$1, d1
002e30: e390         roxl.l     #$1, d0
002e32: 5343         subq.w     #$1, d3
002e34: 08000014     btst.b     #$14, d0
002e38: 67f2         beq.b      $2e2c
002e3a: 4a82         tst.l      d2
002e3c: 6a22         bpl.b      $2e60
002e3e: 5281         addq.l     #$1, d1
002e40: 6412         bcc.b      $2e54
002e42: 5280         addq.l     #$1, d0
002e44: 0c8000200000 cmpi.l     #$200000, d0
002e4a: 6514         bcs.b      $2e60
002e4c: e288         lsr.l      #$1, d0
002e4e: e291         roxr.l     #$1, d1
002e50: 5243         addq.w     #$1, d3
002e52: 600c         bra.b      $2e60
002e54: 0c8280000000 cmpi.l     #$80000000, d2
002e5a: 6604         bne.b      $2e60
002e5c: 020100fe     andi.b     #$fe, d1
002e60: 08800014     bclr.b     #$14, d0
002e64: d67c03ff     add.w      #$3ff, d3
002e68: e94b         lsl.w      #$4, d3
002e6a: 4843         swap       d3
002e6c: 4a43         tst.w      d3
002e6e: 6a04         bpl.b      $2e74
002e70: 08c3001f     bset.b     #$1f, d3
002e74: 4243         clr.w      d3
002e76: 8083         or.l       d3, d0
002e78: 4cdf003c     movem.l    (a7)+, d2-d5
002e7c: 4e75         rts        
002e7e: 0c430036     cmpi.w     #$36, d3
002e82: 6400017e     bcc.w      $3002
002e86: 7a00         moveq      #$0, d5
002e88: 967c0014     sub.w      #$14, d3
002e8c: 6212         bhi.b      $2ea0
002e8e: 4443         neg.w      d3
002e90: 07c5         bset.b     d3, d5
002e92: 4443         neg.w      d3
002e94: 9085         sub.l      d5, d0
002e96: 6614         bne.b      $2eac
002e98: 7200         moveq      #$0, d1
002e9a: 4cdf003c     movem.l    (a7)+, d2-d5
002e9e: 4e75         rts        
002ea0: 7420         moveq      #$20, d2
002ea2: 9483         sub.l      d3, d2
002ea4: 05c5         bset.b     d2, d5
002ea6: 7400         moveq      #$0, d2
002ea8: 9285         sub.l      d5, d1
002eaa: 9182         subx.l     d2, d0
002eac: 08000014     btst.b     #$14, d0
002eb0: 6606         bne.b      $2eb8
002eb2: e389         lsl.l      #$1, d1
002eb4: e390         roxl.l     #$1, d0
002eb6: 5343         subq.w     #$1, d3
002eb8: d67c0413     add.w      #$413, d3
002ebc: 0280000fffff andi.l     #$fffff, d0
002ec2: e94b         lsl.w      #$4, d3
002ec4: 4a83         tst.l      d3
002ec6: 6a04         bpl.b      $2ecc
002ec8: 08c3000f     bset.b     #$f, d3
002ecc: 4843         swap       d3
002ece: 4243         clr.w      d3
002ed0: 8083         or.l       d3, d0
002ed2: 4cdf003c     movem.l    (a7)+, d2-d5
002ed6: 4e75         rts        
002ed8: 48e73c00     movem.l    d2-d5, -(a7)
002edc: 7400         moveq      #$0, d2
002ede: 4a80         tst.l      d0
002ee0: 6b00fea8     bmi.w      $2d8a
002ee4: 2600         move.l     d0, d3
002ee6: 0883001f     bclr.b     #$1f, d3
002eea: 4243         clr.w      d3
002eec: 4843         swap       d3
002eee: 67000104     beq.w      $2ff4
002ef2: 2800         move.l     d0, d4
002ef4: 4a80         tst.l      d0
002ef6: 6a04         bpl.b      $2efc
002ef8: 08c3001f     bset.b     #$1f, d3
002efc: 0280000fffff andi.l     #$fffff, d0
002f02: 08c00014     bset.b     #$14, d0
002f06: e84b         lsr.w      #$4, d3
002f08: 044303ff     subi.w     #$3ff, d3
002f0c: 6472         bcc.b      $2f80
002f0e: 4443         neg.w      d3
002f10: 0c430036     cmpi.w     #$36, d3
002f14: 640000d8     bcc.w      $2fee
002f18: 0c430014     cmpi.w     #$14, d3
002f1c: 6428         bcc.b      $2f46
002f1e: e6b8         ror.l      d3, d0
002f20: e6b9         ror.l      d3, d1
002f22: 7400         moveq      #$0, d2
002f24: 7a00         moveq      #$0, d5
002f26: 967c0020     sub.w      #$20, d3
002f2a: 4443         neg.w      d3
002f2c: 07c5         bset.b     d3, d5
002f2e: 5385         subq.l     #$1, d5
002f30: 2805         move.l     d5, d4
002f32: 4685         not.l      d5
002f34: ca81         and.l      d1, d5
002f36: 2405         move.l     d5, d2
002f38: c284         and.l      d4, d1
002f3a: 2a04         move.l     d4, d5
002f3c: 4684         not.l      d4
002f3e: c880         and.l      d0, d4
002f40: c085         and.l      d5, d0
002f42: 8284         or.l       d4, d1
002f44: 6024         bra.b      $2f6a
002f46: 2401         move.l     d1, d2
002f48: 2200         move.l     d0, d1
002f4a: 7000         moveq      #$0, d0
002f4c: 04430014     subi.w     #$14, d3
002f50: e6b9         ror.l      d3, d1
002f52: e6aa         lsr.l      d3, d2
002f54: 7800         moveq      #$0, d4
002f56: 967c0020     sub.w      #$20, d3
002f5a: 4443         neg.w      d3
002f5c: 07c4         bset.b     d3, d4
002f5e: 5384         subq.l     #$1, d4
002f60: 2a04         move.l     d4, d5
002f62: 4684         not.l      d4
002f64: c881         and.l      d1, d4
002f66: c285         and.l      d5, d1
002f68: 8484         or.l       d4, d2
002f6a: 283c3ff00000 move.l     #$3ff00000, d4
002f70: 8084         or.l       d4, d0
002f72: 4a83         tst.l      d3
002f74: 6a04         bpl.b      $2f7a
002f76: 08c0001f     bset.b     #$1f, d0
002f7a: 4cdf003c     movem.l    (a7)+, d2-d5
002f7e: 4e75         rts        
002f80: 3a03         move.w     d3, d5
002f82: 7400         moveq      #$0, d2
002f84: 0c430036     cmpi.w     #$36, d3
002f88: 6478         bcc.b      $3002
002f8a: 7800         moveq      #$0, d4
002f8c: 04430014     subi.w     #$14, d3
002f90: 624c         bhi.b      $2fde
002f92: 4443         neg.w      d3
002f94: 07c4         bset.b     d3, d4
002f96: d084         add.l      d4, d0
002f98: 08000015     btst.b     #$15, d0
002f9c: 6722         beq.b      $2fc0
002f9e: 5245         addq.w     #$1, d5
002fa0: e288         lsr.l      #$1, d0
002fa2: e291         roxr.l     #$1, d1
002fa4: 641a         bcc.b      $2fc0
002fa6: 5281         addq.l     #$1, d1
002fa8: 6412         bcc.b      $2fbc
002faa: 5280         addq.l     #$1, d0
002fac: 0c8000200000 cmpi.l     #$200000, d0
002fb2: 650c         bcs.b      $2fc0
002fb4: e288         lsr.l      #$1, d0
002fb6: e291         roxr.l     #$1, d1
002fb8: 5245         addq.w     #$1, d5
002fba: 6004         bra.b      $2fc0
002fbc: 020100fe     andi.b     #$fe, d1
002fc0: da7c03ff     add.w      #$3ff, d5
002fc4: e94d         lsl.w      #$4, d5
002fc6: 4845         swap       d5
002fc8: 4245         clr.w      d5
002fca: 4a83         tst.l      d3
002fcc: 6a04         bpl.b      $2fd2
002fce: 08c5001f     bset.b     #$1f, d5
002fd2: 08800014     bclr.b     #$14, d0
002fd6: 8085         or.l       d5, d0
002fd8: 4cdf003c     movem.l    (a7)+, d2-d5
002fdc: 4e75         rts        
002fde: 4443         neg.w      d3
002fe0: 06430020     addi.w     #$20, d3
002fe4: 07c4         bset.b     d3, d4
002fe6: d284         add.l      d4, d1
002fe8: 64ae         bcc.b      $2f98
002fea: 5280         addq.l     #$1, d0
002fec: 60aa         bra.b      $2f98
002fee: 028080000000 andi.l     #$80000000, d0
002ff4: 7200         moveq      #$0, d1
002ff6: 00803ff00000 ori.l      #$3ff00000, d0
002ffc: 4cdf003c     movem.l    (a7)+, d2-d5
003000: 4e75         rts        
003002: 2004         move.l     d4, d0
003004: 4cdf003c     movem.l    (a7)+, d2-d5
003008: 4e75         rts        
00300a: 7200         moveq      #$0, d1
00300c: 203cbff00000 move.l     #$bff00000, d0
003012: 4cdf003c     movem.l    (a7)+, d2-d5
003016: 4e75         rts        
003018: 48e73f00     movem.l    d2-d7, -(a7)
00301c: 2800         move.l     d0, d4
00301e: b584         eor.l      d2, d4
003020: 2e00         move.l     d0, d7
003022: 2c02         move.l     d2, d6
003024: 4247         clr.w      d7
003026: 4847         swap       d7
003028: 670001be     beq.w      $31e8
00302c: 4246         clr.w      d6
00302e: 4846         swap       d6
003030: 670001b6     beq.w      $31e8
003034: 4a84         tst.l      d4
003036: 6a04         bpl.b      $303c
003038: 08c7001f     bset.b     #$1f, d7
00303c: 2a3c000fffff move.l     #$fffff, d5
003042: c085         and.l      d5, d0
003044: c485         and.l      d5, d2
003046: 7a14         moveq      #$14, d5
003048: 0bc0         bset.b     d5, d0
00304a: 0bc2         bset.b     d5, d2
00304c: cc7c7ff0     and.w      #$7ff0, d6
003050: ce7c7ff0     and.w      #$7ff0, d7
003054: 9c7c3ff0     sub.w      #$3ff0, d6
003058: de46         add.w      d6, d7
00305a: 6900013a     bvs.w      $3196
00305e: 6f000188     ble.w      $31e8
003062: 0c8000100000 cmpi.l     #$100000, d0
003068: 660c         bne.b      $3076
00306a: 4a81         tst.l      d1
00306c: 6608         bne.b      $3076
00306e: 2002         move.l     d2, d0
003070: 2203         move.l     d3, d1
003072: 60000146     bra.w      $31ba
003076: 0c8200100000 cmpi.l     #$100000, d2
00307c: 6604         bne.b      $3082
00307e: 4a83         tst.l      d3
003080: 67f0         beq.b      $3072
003082: 2f07         move.l     d7, -(a7)
003084: 7a00         moveq      #$0, d5
003086: 7e00         moveq      #$0, d7
003088: 3c01         move.w     d1, d6
00308a: ccc3         mulu.w     d3, d6
00308c: 3c05         move.w     d5, d6
00308e: 4846         swap       d6
003090: 4843         swap       d3
003092: 3801         move.w     d1, d4
003094: c8c3         mulu.w     d3, d4
003096: dc84         add.l      d4, d6
003098: db47         addx.w     d7, d5
00309a: 4841         swap       d1
00309c: 4843         swap       d3
00309e: 3801         move.w     d1, d4
0030a0: c8c3         mulu.w     d3, d4
0030a2: dc84         add.l      d4, d6
0030a4: db47         addx.w     d7, d5
0030a6: 3f06         move.w     d6, -(a7)
0030a8: 3c05         move.w     d5, d6
0030aa: 4846         swap       d6
0030ac: 7a00         moveq      #$0, d5
0030ae: 3800         move.w     d0, d4
0030b0: c8c3         mulu.w     d3, d4
0030b2: dc84         add.l      d4, d6
0030b4: db47         addx.w     d7, d5
0030b6: 4843         swap       d3
0030b8: 3801         move.w     d1, d4
0030ba: c8c3         mulu.w     d3, d4
0030bc: dc84         add.l      d4, d6
0030be: db47         addx.w     d7, d5
0030c0: 4841         swap       d1
0030c2: 3801         move.w     d1, d4
0030c4: c8c2         mulu.w     d2, d4
0030c6: dc84         add.l      d4, d6
0030c8: db47         addx.w     d7, d5
0030ca: 3f06         move.w     d6, -(a7)
0030cc: 3c05         move.w     d5, d6
0030ce: 4846         swap       d6
0030d0: 7a00         moveq      #$0, d5
0030d2: 4842         swap       d2
0030d4: 3801         move.w     d1, d4
0030d6: c8c2         mulu.w     d2, d4
0030d8: dc84         add.l      d4, d6
0030da: db47         addx.w     d7, d5
0030dc: 4841         swap       d1
0030de: 4842         swap       d2
0030e0: 3801         move.w     d1, d4
0030e2: c8c2         mulu.w     d2, d4
0030e4: dc84         add.l      d4, d6
0030e6: db47         addx.w     d7, d5
0030e8: 3800         move.w     d0, d4
0030ea: c8c3         mulu.w     d3, d4
0030ec: dc84         add.l      d4, d6
0030ee: db47         addx.w     d7, d5
0030f0: 4840         swap       d0
0030f2: 4843         swap       d3
0030f4: 3800         move.w     d0, d4
0030f6: c8c3         mulu.w     d3, d4
0030f8: dc84         add.l      d4, d6
0030fa: db47         addx.w     d7, d5
0030fc: 3f06         move.w     d6, -(a7)
0030fe: 3c05         move.w     d5, d6
003100: 4846         swap       d6
003102: 7a00         moveq      #$0, d5
003104: 4843         swap       d3
003106: 3800         move.w     d0, d4
003108: c8c3         mulu.w     d3, d4
00310a: dc84         add.l      d4, d6
00310c: db47         addx.w     d7, d5
00310e: 4840         swap       d0
003110: 3800         move.w     d0, d4
003112: c8c2         mulu.w     d2, d4
003114: dc84         add.l      d4, d6
003116: db47         addx.w     d7, d5
003118: 4842         swap       d2
00311a: 3801         move.w     d1, d4
00311c: c8c2         mulu.w     d2, d4
00311e: dc84         add.l      d4, d6
003120: db47         addx.w     d7, d5
003122: 3f06         move.w     d6, -(a7)
003124: 3c05         move.w     d5, d6
003126: 4846         swap       d6
003128: 7a00         moveq      #$0, d5
00312a: 3800         move.w     d0, d4
00312c: c8c2         mulu.w     d2, d4
00312e: dc84         add.l      d4, d6
003130: 4840         swap       d0
003132: 4842         swap       d2
003134: 3800         move.w     d0, d4
003136: c8c2         mulu.w     d2, d4
003138: dc84         add.l      d4, d6
00313a: 4842         swap       d2
00313c: c0c2         mulu.w     d2, d0
00313e: 4840         swap       d0
003140: d086         add.l      d6, d0
003142: 4cdf0086     movem.l    (a7)+, d1-d2/d7
003146: 7604         moveq      #$4, d3
003148: 283cf0000000 move.l     #$f0000000, d4
00314e: 08000019     btst.b     #$19, d0
003152: 670e         beq.b      $3162
003154: de7c0010     add.w      #$10, d7
003158: 6b3c         bmi.b      $3196
00315a: 7605         moveq      #$5, d3
00315c: 283cf8000000 move.l     #$f8000000, d4
003162: e6b8         ror.l      d3, d0
003164: e6b9         ror.l      d3, d1
003166: e6aa         lsr.l      d3, d2
003168: 2a04         move.l     d4, d5
00316a: ca81         and.l      d1, d5
00316c: 8485         or.l       d5, d2
00316e: 2a04         move.l     d4, d5
003170: 4685         not.l      d5
003172: c285         and.l      d5, d1
003174: c880         and.l      d0, d4
003176: 8284         or.l       d4, d1
003178: c085         and.l      d5, d0
00317a: 4a82         tst.l      d2
00317c: 6a3c         bpl.b      $31ba
00317e: 5281         addq.l     #$1, d1
003180: 642c         bcc.b      $31ae
003182: 5280         addq.l     #$1, d0
003184: 0c8000200000 cmpi.l     #$200000, d0
00318a: 652e         bcs.b      $31ba
00318c: e288         lsr.l      #$1, d0
00318e: e291         roxr.l     #$1, d1
003190: de7c0010     add.w      #$10, d7
003194: 6a24         bpl.b      $31ba
003196: 7a02         moveq      #$2, d5
003198: 203c7ff00000 move.l     #$7ff00000, d0
00319e: 7200         moveq      #$0, d1
0031a0: 4a87         tst.l      d7
0031a2: 6a3a         bpl.b      $31de
0031a4: 08c50001     bset.b     #$1, d5
0031a8: 08c0001f     bset.b     #$1f, d0
0031ac: 6030         bra.b      $31de
0031ae: 0c8280000000 cmpi.l     #$80000000, d2
0031b4: 6604         bne.b      $31ba
0031b6: 020100fe     andi.b     #$fe, d1
0031ba: 0280000fffff andi.l     #$fffff, d0
0031c0: 4847         swap       d7
0031c2: 4a47         tst.w      d7
0031c4: 6a04         bpl.b      $31ca
0031c6: 08c0001f     bset.b     #$1f, d0
0031ca: 4247         clr.w      d7
0031cc: 8087         or.l       d7, d0
0031ce: 7a00         moveq      #$0, d5
0031d0: 4a80         tst.l      d0
0031d2: 6604         bne.b      $31d8
0031d4: 08c50002     bset.b     #$2, d5
0031d8: 6a04         bpl.b      $31de
0031da: 08c50003     bset.b     #$3, d5
0031de: 44c5         move.w     d5, ccr
0031e0: 4cdf00fc     movem.l    (a7)+, d2-d7
0031e4: 4e76         trapv      
0031e6: 4e75         rts        
0031e8: 7000         moveq      #$0, d0
0031ea: 2200         move.l     d0, d1
0031ec: 60e0         bra.b      $31ce
0031ee: 48e73f00     movem.l    d2-d7, -(a7)
0031f2: 2800         move.l     d0, d4
0031f4: b584         eor.l      d2, d4
0031f6: 2e00         move.l     d0, d7
0031f8: 2c02         move.l     d2, d6
0031fa: 4246         clr.w      d6
0031fc: 4846         swap       d6
0031fe: 6616         bne.b      $3216
003200: 203c7ff00000 move.l     #$7ff00000, d0
003206: 7a03         moveq      #$3, d5
003208: 4a84         tst.l      d4
00320a: 6a00017c     bpl.w      $3388
00320e: 08c0001f     bset.b     #$1f, d0
003212: 60000174     bra.w      $3388
003216: 4247         clr.w      d7
003218: 4847         swap       d7
00321a: 67000166     beq.w      $3382
00321e: 4a84         tst.l      d4
003220: 6a04         bpl.b      $3226
003222: 08c7001f     bset.b     #$1f, d7
003226: 3a3c7ff0     move.w     #$7ff0, d5
00322a: cc45         and.w      d5, d6
00322c: ce45         and.w      d5, d7
00322e: 9e46         sub.w      d6, d7
003230: de7c3ff0     add.w      #$3ff0, d7
003234: 69ca         bvs.b      $3200
003236: 6f00014a     ble.w      $3382
00323a: 2f07         move.l     d7, -(a7)
00323c: 08820014     bclr.b     #$14, d2
003240: 7a0b         moveq      #$b, d5
003242: ebaa         lsl.l      d5, d2
003244: 6606         bne.b      $324c
003246: 4a83         tst.l      d3
003248: 670000fa     beq.w      $3344
00324c: ebbb         rol.l      d5, d3
00324e: eba8         lsl.l      d5, d0
003250: ebb9         rol.l      d5, d1
003252: 2a3c000007ff move.l     #$7ff, d5
003258: 2801         move.l     d1, d4
00325a: c885         and.l      d5, d4
00325c: b981         eor.l      d4, d1
00325e: 8084         or.l       d4, d0
003260: 2803         move.l     d3, d4
003262: c885         and.l      d5, d4
003264: b983         eor.l      d4, d3
003266: 8484         or.l       d4, d2
003268: 7a1f         moveq      #$1f, d5
00326a: 0bc0         bset.b     d5, d0
00326c: 0bc2         bset.b     d5, d2
00326e: 7c00         moveq      #$0, d6
003270: 7e00         moveq      #$0, d7
003272: 2f08         move.l     a0, -(a7)
003274: 2043         movea.l    d3, a0
003276: 783f         moveq      #$3f, d4
003278: 4a04         tst.b      d4
00327a: 6f0000cc     ble.w      $3348
00327e: 761f         moveq      #$1f, d3
003280: 9288         sub.l      a0, d1
003282: 9182         subx.l     d2, d0
003284: 6a7a         bpl.b      $3300
003286: 4481         neg.l      d1
003288: 4080         negx.l     d0
00328a: 4a80         tst.l      d0
00328c: 6628         bne.b      $32b6
00328e: 983c0020     sub.b      #$20, d4
003292: 640c         bcc.b      $32a0
003294: d83c0020     add.b      #$20, d4
003298: 09c7         bset.b     d4, d7
00329a: 5387         subq.l     #$1, d7
00329c: 600000aa     bra.w      $3348
0032a0: 09c6         bset.b     d4, d6
0032a2: 5386         subq.l     #$1, d6
0032a4: 2001         move.l     d1, d0
0032a6: 6002         bra.b      $32aa
0032a8: e388         lsl.l      #$1, d0
0032aa: 5bcbfffc     dbmi       d3, $32a8
0032ae: 7200         moveq      #$0, d1
0032b0: 0403001f     subi.b     #$1f, d3
0032b4: 6016         bra.b      $32cc
0032b6: e389         lsl.l      #$1, d1
0032b8: e390         roxl.l     #$1, d0
0032ba: 5bcbfffa     dbmi       d3, $32b6
0032be: 7a00         moveq      #$0, d5
0032c0: 04030020     subi.b     #$20, d3
0032c4: 0c040020     cmpi.b     #$20, d4
0032c8: 640e         bcc.b      $32d8
0032ca: 09c7         bset.b     d4, d7
0032cc: d803         add.b      d3, d4
0032ce: 6fca         ble.b      $329a
0032d0: 7a00         moveq      #$0, d5
0032d2: 09c5         bset.b     d4, d5
0032d4: da85         add.l      d5, d5
0032d6: 6014         bra.b      $32ec
0032d8: 09c6         bset.b     d4, d6
0032da: d803         add.b      d3, d4
0032dc: 09c5         bset.b     d4, d5
0032de: da85         add.l      d5, d5
0032e0: 0c040020     cmpi.b     #$20, d4
0032e4: 6504         bcs.b      $32ea
0032e6: 9c85         sub.l      d5, d6
0032e8: 6004         bra.b      $32ee
0032ea: 5386         subq.l     #$1, d6
0032ec: 9e85         sub.l      d5, d7
0032ee: 4a04         tst.b      d4
0032f0: 6f56         ble.b      $3348
0032f2: 761f         moveq      #$1f, d3
0032f4: 9288         sub.l      a0, d1
0032f6: 9182         subx.l     d2, d0
0032f8: 4a80         tst.l      d0
0032fa: 6a8e         bpl.b      $328a
0032fc: 4481         neg.l      d1
0032fe: 4080         negx.l     d0
003300: 4a80         tst.l      d0
003302: 6622         bne.b      $3326
003304: 04040020     subi.b     #$20, d4
003308: 6408         bcc.b      $3312
00330a: d83c0020     add.b      #$20, d4
00330e: 09c7         bset.b     d4, d7
003310: 6036         bra.b      $3348
003312: 09c6         bset.b     d4, d6
003314: 2001         move.l     d1, d0
003316: 6002         bra.b      $331a
003318: e388         lsl.l      #$1, d0
00331a: 5bcbfffc     dbmi       d3, $3318
00331e: 7200         moveq      #$0, d1
003320: 0403001f     subi.b     #$1f, d3
003324: 6018         bra.b      $333e
003326: e389         lsl.l      #$1, d1
003328: e390         roxl.l     #$1, d0
00332a: 5bcbfffa     dbmi       d3, $3326
00332e: 04030020     subi.b     #$20, d3
003332: 0c040020     cmpi.b     #$20, d4
003336: 6404         bcc.b      $333c
003338: 09c7         bset.b     d4, d7
00333a: 6002         bra.b      $333e
00333c: 09c6         bset.b     d4, d6
00333e: d803         add.b      d3, d4
003340: 6000ff36     bra.w      $3278
003344: 7e00         moveq      #$0, d7
003346: 6018         bra.b      $3360
003348: 2006         move.l     d6, d0
00334a: 2207         move.l     d7, d1
00334c: 7e00         moveq      #$0, d7
00334e: 7400         moveq      #$0, d2
003350: 610001de     bsr.w      $3530
003354: 08800014     bclr.b     #$14, d0
003358: 9e7c000b     sub.w      #$b, d7
00335c: e94f         lsl.w      #$4, d7
00335e: 205f         movea.l    (a7)+, a0
003360: 281f         move.l     (a7)+, d4
003362: d847         add.w      d7, d4
003364: 0c447ff0     cmpi.w     #$7ff0, d4
003368: 6c00fe96     bge.w      $3200
00336c: 4844         swap       d4
00336e: 4a44         tst.w      d4
003370: 6a06         bpl.b      $3378
003372: 08c4001f     bset.b     #$1f, d4
003376: 4244         clr.w      d4
003378: c0bc000fffff and.l      #$fffff, d0
00337e: 8084         or.l       d4, d0
003380: 6004         bra.b      $3386
003382: 7000         moveq      #$0, d0
003384: 7200         moveq      #$0, d1
003386: 7a00         moveq      #$0, d5
003388: 4a80         tst.l      d0
00338a: 6604         bne.b      $3390
00338c: 08c50002     bset.b     #$2, d5
003390: 6a04         bpl.b      $3396
003392: 08c50003     bset.b     #$3, d5
003396: 44c5         move.w     d5, ccr
003398: 4cdf00fc     movem.l    (a7)+, d2-d7
00339c: 4e76         trapv      
00339e: 4e75         rts        
0033a0: 4a82         tst.l      d2
0033a2: 6b14         bmi.b      $33b8
0033a4: 4a80         tst.l      d0
0033a6: 6a02         bpl.b      $33aa
0033a8: 6024         bra.b      $33ce
0033aa: b082         cmp.l      d2, d0
0033ac: 661e         bne.b      $33cc
0033ae: b283         cmp.l      d3, d1
0033b0: 661a         bne.b      $33cc
0033b2: 44fc0004     move.w     #$4, ccr
0033b6: 4e75         rts        
0033b8: 4a80         tst.l      d0
0033ba: 6b02         bmi.b      $33be
0033bc: 6016         bra.b      $33d4
0033be: b480         cmp.l      d0, d2
0033c0: 660a         bne.b      $33cc
0033c2: b681         cmp.l      d1, d3
0033c4: 6606         bne.b      $33cc
0033c6: 44fc0004     move.w     #$4, ccr
0033ca: 4e75         rts        
0033cc: 6206         bhi.b      $33d4
0033ce: 44fc0008     move.w     #$8, ccr
0033d2: 4e75         rts        
0033d4: 44fc0000     move.w     #$0, ccr
0033d8: 4e75         rts        
0033da: 4a80         tst.l      d0
0033dc: 6704         beq.b      $33e2
0033de: 0840001f     bchg.b     #$1f, d0
0033e2: 4a80         tst.l      d0
0033e4: 4e75         rts        
0033e6: 48e70d00     movem.l    d4-d5/d7, -(a7)
0033ea: 7800         moveq      #$0, d4
0033ec: 2200         move.l     d0, d1
0033ee: 6720         beq.b      $3410
0033f0: 6a06         bpl.b      $33f8
0033f2: 08c4001f     bset.b     #$1f, d4
0033f6: 4481         neg.l      d1
0033f8: 7000         moveq      #$0, d0
0033fa: 7e34         moveq      #$34, d7
0033fc: 6006         bra.b      $3404
0033fe: e389         lsl.l      #$1, d1
003400: e390         roxl.l     #$1, d0
003402: 5347         subq.w     #$1, d7
003404: 0c8000100000 cmpi.l     #$100000, d0
00340a: 65f2         bcs.b      $33fe
00340c: 6100026e     bsr.w      $367c
003410: 4cdf00b0     movem.l    (a7)+, d4-d5/d7
003414: 4e75         rts        
003416: 48e70d00     movem.l    d4-d5/d7, -(a7)
00341a: 7800         moveq      #$0, d4
00341c: 2200         move.l     d0, d1
00341e: 67f0         beq.b      $3410
003420: 60d6         bra.b      $33f8
003422: 2f04         move.l     d4, -(a7)
003424: 2800         move.l     d0, d4
003426: 612e         bsr.b      $3456
003428: 6806         bvc.b      $3430
00342a: 183c0002     move.b     #$2, d4
00342e: 6004         bra.b      $3434
003430: 183c0000     move.b     #$0, d4
003434: 4a80         tst.l      d0
003436: 6714         beq.b      $344c
003438: 6a04         bpl.b      $343e
00343a: 0844001f     bchg.b     #$1f, d4
00343e: 0804001f     btst.b     #$1f, d4
003442: 6708         beq.b      $344c
003444: 0840001f     bchg.b     #$1f, d0
003448: 00040002     ori.b      #$2, d4
00344c: 44c4         move.w     d4, ccr
00344e: 4cdf0010     movem.l    (a7)+, d4
003452: 4e76         trapv      
003454: 4e75         rts        
003456: 48e72d00     movem.l    d2/d4-d5/d7, -(a7)
00345a: 7a00         moveq      #$0, d5
00345c: 7800         moveq      #$0, d4
00345e: 610001cc     bsr.w      $362c
003462: 674a         beq.b      $34ae
003464: 0c8700000400 cmpi.l     #$400, d7
00346a: 6612         bne.b      $347e
00346c: 203c7fffffff move.l     #$7fffffff, d0
003472: 4a84         tst.l      d4
003474: 6702         beq.b      $3478
003476: 4680         not.l      d0
003478: 003c0002     ori.b      #$2, ccr
00347c: 6032         bra.b      $34b0
00347e: 7434         moveq      #$34, d2
003480: 9447         sub.w      d7, d2
003482: 6722         beq.b      $34a6
003484: 6b0e         bmi.b      $3494
003486: e280         asr.l      #$1, d0
003488: e291         roxr.l     #$1, d1
00348a: 5342         subq.w     #$1, d2
00348c: 66f8         bne.b      $3486
00348e: 4a80         tst.l      d0
003490: 6714         beq.b      $34a6
003492: 600e         bra.b      $34a2
003494: 0c42ffe0     cmpi.w     #$ffe0, d2
003498: 6f08         ble.b      $34a2
00349a: e381         asl.l      #$1, d1
00349c: e390         roxl.l     #$1, d0
00349e: 5242         addq.w     #$1, d2
0034a0: 66f8         bne.b      $349a
0034a2: 00040002     ori.b      #$2, d4
0034a6: 2001         move.l     d1, d0
0034a8: 4a84         tst.l      d4
0034aa: 6702         beq.b      $34ae
0034ac: 4480         neg.l      d0
0034ae: 44c4         move.w     d4, ccr
0034b0: 4cdf00b4     movem.l    (a7)+, d2/d4-d5/d7
0034b4: 4e76         trapv      
0034b6: 4e75         rts        
0034b8: 48e70fc0     movem.l    d4-d7/a0-a1, -(a7)
0034bc: 7800         moveq      #$0, d4
0034be: 6100016c     bsr.w      $362c
0034c2: 4a47         tst.w      d7
0034c4: 6a0e         bpl.b      $34d4
0034c6: 610001b4     bsr.w      $367c
0034ca: 2400         move.l     d0, d2
0034cc: 2601         move.l     d1, d3
0034ce: 7000         moveq      #$0, d0
0034d0: 7200         moveq      #$0, d1
0034d2: 6056         bra.b      $352a
0034d4: 2040         movea.l    d0, a0
0034d6: 2241         movea.l    d1, a1
0034d8: 7c34         moveq      #$34, d6
0034da: 9c47         sub.w      d7, d6
0034dc: 6e06         bgt.b      $34e4
0034de: 7400         moveq      #$0, d2
0034e0: 2602         move.l     d2, d3
0034e2: 6042         bra.b      $3526
0034e4: 243cffffffff move.l     #$ffffffff, d2
0034ea: 0c460020     cmpi.w     #$20, d6
0034ee: 6f14         ble.b      $3504
0034f0: 04460020     subi.w     #$20, d6
0034f4: edaa         lsl.l      d6, d2
0034f6: c082         and.l      d2, d0
0034f8: 7200         moveq      #$0, d1
0034fa: c188         exg.l      d0, a0
0034fc: c389         exg.l      d1, a1
0034fe: 4682         not.l      d2
003500: c082         and.l      d2, d0
003502: 600e         bra.b      $3512
003504: edaa         lsl.l      d6, d2
003506: c282         and.l      d2, d1
003508: c188         exg.l      d0, a0
00350a: c389         exg.l      d1, a1
00350c: 7000         moveq      #$0, d0
00350e: 4682         not.l      d2
003510: c282         and.l      d2, d1
003512: 2f07         move.l     d7, -(a7)
003514: 7400         moveq      #$0, d2
003516: 6118         bsr.b      $3530
003518: 61000162     bsr.w      $367c
00351c: 2400         move.l     d0, d2
00351e: 2601         move.l     d1, d3
003520: 2008         move.l     a0, d0
003522: 2209         move.l     a1, d1
003524: 2e1f         move.l     (a7)+, d7
003526: 61000154     bsr.w      $367c
00352a: 4cdf03f0     movem.l    (a7)+, d4-d7/a0-a1
00352e: 4e75         rts        
003530: 48e71c00     movem.l    d3-d5, -(a7)
003534: 7800         moveq      #$0, d4
003536: 2600         move.l     d0, d3
003538: 6704         beq.b      $353e
00353a: 7820         moveq      #$20, d4
00353c: 6006         bra.b      $3544
00353e: 2601         move.l     d1, d3
003540: 670000b4     beq.w      $35f6
003544: 4843         swap       d3
003546: 4a43         tst.w      d3
003548: 6706         beq.b      $3550
00354a: d83c0010     add.b      #$10, d4
00354e: 6002         bra.b      $3552
003550: 4843         swap       d3
003552: 0c430100     cmpi.w     #$100, d3
003556: 6504         bcs.b      $355c
003558: 7a0f         moveq      #$f, d5
00355a: 6002         bra.b      $355e
00355c: 7a07         moveq      #$7, d5
00355e: 0b03         btst.l     d5, d3
003560: 56cdfffc     dbne       d5, $355e
003564: d805         add.b      d5, d4
003566: de44         add.w      d4, d7
003568: 9e7c0034     sub.w      #$34, d7
00356c: 983c0020     sub.b      #$20, d4
003570: 6408         bcc.b      $357a
003572: d83c0020     add.b      #$20, d4
003576: c142         exg.l      d0, d2
003578: c141         exg.l      d0, d1
00357a: 0980         bclr.b     d4, d0
00357c: 983c0014     sub.b      #$14, d4
003580: 6220         bhi.b      $35a2
003582: 4404         neg.b      d4
003584: e9a8         lsl.l      d4, d0
003586: e9b9         rol.l      d4, d1
003588: e9ba         rol.l      d4, d2
00358a: 7a00         moveq      #$0, d5
00358c: 09c5         bset.b     d4, d5
00358e: 5385         subq.l     #$1, d5
003590: 2805         move.l     d5, d4
003592: ca81         and.l      d1, d5
003594: 8085         or.l       d5, d0
003596: 2a04         move.l     d4, d5
003598: 4685         not.l      d5
00359a: c285         and.l      d5, d1
00359c: c882         and.l      d2, d4
00359e: 8284         or.l       d4, d1
0035a0: 6022         bra.b      $35c4
0035a2: e8b9         ror.l      d4, d1
0035a4: e8b8         ror.l      d4, d0
0035a6: 983c0020     sub.b      #$20, d4
0035aa: 4404         neg.b      d4
0035ac: 7a00         moveq      #$0, d5
0035ae: 09c5         bset.b     d4, d5
0035b0: 5385         subq.l     #$1, d5
0035b2: 4685         not.l      d5
0035b4: 2805         move.l     d5, d4
0035b6: 4684         not.l      d4
0035b8: ca80         and.l      d0, d5
0035ba: c084         and.l      d4, d0
0035bc: 2401         move.l     d1, d2
0035be: c284         and.l      d4, d1
0035c0: b382         eor.l      d1, d2
0035c2: 8285         or.l       d5, d1
0035c4: 08c00014     bset.b     #$14, d0
0035c8: 4a82         tst.l      d2
0035ca: 6a22         bpl.b      $35ee
0035cc: 5281         addq.l     #$1, d1
0035ce: 6412         bcc.b      $35e2
0035d0: 5280         addq.l     #$1, d0
0035d2: 0c8000200000 cmpi.l     #$200000, d0
0035d8: 6514         bcs.b      $35ee
0035da: e288         lsr.l      #$1, d0
0035dc: e291         roxr.l     #$1, d1
0035de: 5247         addq.w     #$1, d7
0035e0: 600c         bra.b      $35ee
0035e2: 0c8280000000 cmpi.l     #$80000000, d2
0035e8: 6604         bne.b      $35ee
0035ea: 020100fe     andi.b     #$fe, d1
0035ee: 7a01         moveq      #$1, d5
0035f0: 4cdf0038     movem.l    (a7)+, d3-d5
0035f4: 4e75         rts        
0035f6: 4a82         tst.l      d2
0035f8: 670e         beq.b      $3608
0035fa: c142         exg.l      d0, d2
0035fc: 2600         move.l     d0, d3
0035fe: 9e7c0040     sub.w      #$40, d7
003602: 7820         moveq      #$20, d4
003604: 6000ff3e     bra.w      $3544
003608: 7e00         moveq      #$0, d7
00360a: 4cdf0038     movem.l    (a7)+, d3-d5
00360e: 4e75         rts        
003610: 2e00         move.l     d0, d7
003612: e38f         lsl.l      #$1, d7
003614: 6740         beq.b      $3656
003616: 4847         swap       d7
003618: e04f         lsr.w      #$8, d7
00361a: 0447007f     subi.w     #$7f, d7
00361e: 48c7         ext.l      d7
003620: 0280807fffff andi.l     #$807fffff, d0
003626: 08c00017     bset.b     #$17, d0
00362a: 601a         bra.b      $3646
00362c: 2e00         move.l     d0, d7
00362e: e38f         lsl.l      #$1, d7
003630: 6724         beq.b      $3656
003632: 4847         swap       d7
003634: ea4f         lsr.w      #$5, d7
003636: 044703ff     subi.w     #$3ff, d7
00363a: 48c7         ext.l      d7
00363c: 0280800fffff andi.l     #$800fffff, d0
003642: 08c00014     bset.b     #$14, d0
003646: 0880001f     bclr.b     #$1f, d0
00364a: 6710         beq.b      $365c
00364c: 0844001f     bchg.b     #$1f, d4
003650: 44fc0008     move.w     #$8, ccr
003654: 4e75         rts        
003656: 44fc0004     move.w     #$4, ccr
00365a: 4e75         rts        
00365c: 44fc0000     move.w     #$0, ccr
003660: 4e75         rts        
003662: 48e73000     movem.l    d2-d3, -(a7)
003666: 08800017     bclr.b     #$17, d0
00366a: 6752         beq.b      $36be
00366c: 0647007f     addi.w     #$7f, d7
003670: 243c7f8000ff move.l     #$7f8000ff, d2
003676: 163c0007     move.b     #$7, d3
00367a: 6018         bra.b      $3694
00367c: 48e73000     movem.l    d2-d3, -(a7)
003680: 08800014     bclr.b     #$14, d0
003684: 6738         beq.b      $36be
003686: 064703ff     addi.w     #$3ff, d7
00368a: 243c7ff007ff move.l     #$7ff007ff, d2
003690: 163c0004     move.b     #$4, d3
003694: 4a47         tst.w      d7
003696: 6e08         bgt.b      $36a0
003698: 7000         moveq      #$0, d0
00369a: 00050004     ori.b      #$4, d5
00369e: 600c         bra.b      $36ac
0036a0: be42         cmp.w      d2, d7
0036a2: 6510         bcs.b      $36b4
0036a4: 2002         move.l     d2, d0
0036a6: 02400000     andi.w     #$0, d0
0036aa: 8084         or.l       d4, d0
0036ac: 7200         moveq      #$0, d1
0036ae: 00050002     ori.b      #$2, d5
0036b2: 600a         bra.b      $36be
0036b4: e76f         lsl.w      d3, d7
0036b6: 4847         swap       d7
0036b8: 4247         clr.w      d7
0036ba: 8087         or.l       d7, d0
0036bc: 8084         or.l       d4, d0
0036be: 4cdf000c     movem.l    (a7)+, d2-d3
0036c2: 4e75         rts        
0036c4: 48e73c00     movem.l    d2-d5, -(a7)
0036c8: 7a00         moveq      #$0, d5
0036ca: 4a80         tst.l      d0
0036cc: 6a04         bpl.b      $36d2
0036ce: 7a08         moveq      #$8, d5
0036d0: 4480         neg.l      d0
0036d2: 4a81         tst.l      d1
0036d4: 6a06         bpl.b      $36dc
0036d6: 08450003     bchg.b     #$3, d5
0036da: 4481         neg.l      d1
0036dc: 612c         bsr.b      $370a
0036de: 4a85         tst.l      d5
0036e0: 6606         bne.b      $36e8
0036e2: 4a80         tst.l      d0
0036e4: 6b10         bmi.b      $36f6
0036e6: 600a         bra.b      $36f2
0036e8: 4480         neg.l      d0
0036ea: 6006         bra.b      $36f2
0036ec: 48e73c00     movem.l    d2-d5, -(a7)
0036f0: 6118         bsr.b      $370a
0036f2: 4a81         tst.l      d1
0036f4: 670c         beq.b      $3702
0036f6: 4a80         tst.l      d0
0036f8: 003c0002     ori.b      #$2, ccr
0036fc: 4cdf003c     movem.l    (a7)+, d2-d5
003700: 4e75         rts        
003702: 4a80         tst.l      d0
003704: 4cdf003c     movem.l    (a7)+, d2-d5
003708: 4e75         rts        
00370a: 2400         move.l     d0, d2
00370c: 2600         move.l     d0, d3
00370e: 4843         swap       d3
003710: 2801         move.l     d1, d4
003712: 4844         swap       d4
003714: c0c1         mulu.w     d1, d0
003716: c2c3         mulu.w     d3, d1
003718: c4c4         mulu.w     d4, d2
00371a: c6c4         mulu.w     d4, d3
00371c: 4840         swap       d0
00371e: d041         add.w      d1, d0
003720: 4284         clr.l      d4
003722: d784         addx.l     d4, d3
003724: d042         add.w      d2, d0
003726: d784         addx.l     d4, d3
003728: 4840         swap       d0
00372a: 4241         clr.w      d1
00372c: 4841         swap       d1
00372e: 4242         clr.w      d2
003730: 4842         swap       d2
003732: d282         add.l      d2, d1
003734: d283         add.l      d3, d1
003736: 4e75         rts        
003738: 48e71c00     movem.l    d3-d5, -(a7)
00373c: 4a81         tst.l      d1
00373e: 660e         bne.b      $374e
003740: 7000         moveq      #$0, d0
003742: 4680         not.l      d0
003744: 44fc0002     move.w     #$2, ccr
003748: 4cdf0038     movem.l    (a7)+, d3-d5
00374c: 4e75         rts        
00374e: 6150         bsr.b      $37a0
003750: 4a80         tst.l      d0
003752: 4cdf0038     movem.l    (a7)+, d3-d5
003756: 4e75         rts        
003758: 48e71c00     movem.l    d3-d5, -(a7)
00375c: 4a81         tst.l      d1
00375e: 6618         bne.b      $3778
003760: 223c7fffffff move.l     #$7fffffff, d1
003766: 4a80         tst.l      d0
003768: 6a02         bpl.b      $376c
00376a: 4681         not.l      d1
00376c: 2001         move.l     d1, d0
00376e: 44fc0002     move.w     #$2, ccr
003772: 4cdf0038     movem.l    (a7)+, d3-d5
003776: 4e75         rts        
003778: 6a0e         bpl.b      $3788
00377a: 4481         neg.l      d1
00377c: 6114         bsr.b      $3792
00377e: 4480         neg.l      d0
003780: 4a80         tst.l      d0
003782: 4cdf0038     movem.l    (a7)+, d3-d5
003786: 4e75         rts        
003788: 6108         bsr.b      $3792
00378a: 4a80         tst.l      d0
00378c: 4cdf0038     movem.l    (a7)+, d3-d5
003790: 4e75         rts        
003792: 4a80         tst.l      d0
003794: 6a0a         bpl.b      $37a0
003796: 4480         neg.l      d0
003798: 6106         bsr.b      $37a0
00379a: 4480         neg.l      d0
00379c: 4481         neg.l      d1
00379e: 4e75         rts        
0037a0: 2601         move.l     d1, d3
0037a2: 5383         subq.l     #$1, d3
0037a4: 6720         beq.b      $37c6
0037a6: 2803         move.l     d3, d4
0037a8: c881         and.l      d1, d4
0037aa: 6614         bne.b      $37c0
0037ac: e289         lsr.l      #$1, d1
0037ae: 78ff         moveq      #$ff, d4
0037b0: e289         lsr.l      #$1, d1
0037b2: 55ccfffc     dbcs       d4, $37b0
0037b6: 4484         neg.l      d4
0037b8: 2200         move.l     d0, d1
0037ba: e8a8         lsr.l      d4, d0
0037bc: c283         and.l      d3, d1
0037be: 4e75         rts        
0037c0: b280         cmp.l      d0, d1
0037c2: 6606         bne.b      $37ca
0037c4: 7001         moveq      #$1, d0
0037c6: 7200         moveq      #$0, d1
0037c8: 4e75         rts        
0037ca: 6506         bcs.b      $37d2
0037cc: 2200         move.l     d0, d1
0037ce: 7000         moveq      #$0, d0
0037d0: 4e75         rts        
0037d2: 0c8100010000 cmpi.l     #$10000, d1
0037d8: 653e         bcs.b      $3818
0037da: 2601         move.l     d1, d3
0037dc: 4243         clr.w      d3
0037de: 4843         swap       d3
0037e0: 5283         addq.l     #$1, d3
0037e2: 2800         move.l     d0, d4
0037e4: 2a01         move.l     d1, d5
0037e6: 2203         move.l     d3, d1
0037e8: 612e         bsr.b      $3818
0037ea: 2205         move.l     d5, d1
0037ec: 82c3         divu.w     d3, d1
0037ee: 80c1         divu.w     d1, d0
0037f0: 02800000ffff andi.l     #$ffff, d0
0037f6: 2205         move.l     d5, d1
0037f8: 2605         move.l     d5, d3
0037fa: 4843         swap       d3
0037fc: c2c0         mulu.w     d0, d1
0037fe: c6c0         mulu.w     d0, d3
003800: 4843         swap       d3
003802: d283         add.l      d3, d1
003804: 9284         sub.l      d4, d1
003806: 620a         bhi.b      $3812
003808: 4481         neg.l      d1
00380a: ba81         cmp.l      d1, d5
00380c: 6208         bhi.b      $3816
00380e: 5280         addq.l     #$1, d0
003810: 60e4         bra.b      $37f6
003812: 5380         subq.l     #$1, d0
003814: 60e0         bra.b      $37f6
003816: 4e75         rts        
003818: 48a79000     movem.w    d0/d3, -(a7)
00381c: 4240         clr.w      d0
00381e: 4840         swap       d0
003820: 80c1         divu.w     d1, d0
003822: 3600         move.w     d0, d3
003824: 301f         move.w     (a7)+, d0
003826: 80c1         divu.w     d1, d0
003828: 4840         swap       d0
00382a: 7200         moveq      #$0, d1
00382c: 3200         move.w     d0, d1
00382e: 3003         move.w     d3, d0
003830: 4840         swap       d0
003832: 361f         move.w     (a7)+, d3
003834: 4e75         rts        
003836: 6100ff20     bsr.w      $3758
00383a: 6004         bra.b      $3840
00383c: 6100fefa     bsr.w      $3738
003840: 6808         bvc.b      $384a
003842: 7000         moveq      #$0, d0
003844: 44fc0002     move.w     #$2, ccr
003848: 4e75         rts        
00384a: 2001         move.l     d1, d0
00384c: 4a80         tst.l      d0
00384e: 4e75         rts        
003850: 4e550000     link.w     a5, #$0
003854: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
003858: 2040         movea.l    d0, a0
00385a: 2441         movea.l    d1, a2
00385c: 242d0008     move.l     $8(a5), d2
003860: 6702         beq.b      $3864
003862: 610a         bsr.b      $386e
003864: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
00386a: 4e5d         unlk       a5
00386c: 4e75         rts        
00386e: 4a82         tst.l      d2
003870: 674a         beq.b      $38bc
003872: b1ca         cmpa.l     a2, a0
003874: 6248         bhi.b      $38be
003876: 6744         beq.b      $38bc
003878: 300a         move.w     a2, d0
00387a: 08000000     btst.b     #$0, d0
00387e: 6704         beq.b      $3884
003880: 10da         move.b     (a2)+, (a0)+
003882: 5382         subq.l     #$1, d2
003884: 3008         move.w     a0, d0
003886: 08000000     btst.b     #$0, d0
00388a: 6624         bne.b      $38b0
00388c: e28a         lsr.l      #$1, d2
00388e: 6406         bcc.b      $3896
003890: 6104         bsr.b      $3896
003892: 10da         move.b     (a2)+, (a0)+
003894: 4e75         rts        
003896: e28a         lsr.l      #$1, d2
003898: 6406         bcc.b      $38a0
00389a: 30da         move.w     (a2)+, (a0)+
00389c: 6002         bra.b      $38a0
00389e: 20da         move.l     (a2)+, (a0)+
0038a0: 51cafffc     dbra       d2, $389e
0038a4: 5242         addq.w     #$1, d2
0038a6: 5382         subq.l     #$1, d2
0038a8: 64f4         bcc.b      $389e
0038aa: 7400         moveq      #$0, d2
0038ac: 4e75         rts        
0038ae: 10da         move.b     (a2)+, (a0)+
0038b0: 51cafffc     dbra       d2, $38ae
0038b4: 5242         addq.w     #$1, d2
0038b6: 5382         subq.l     #$1, d2
0038b8: 64f4         bcc.b      $38ae
0038ba: 7400         moveq      #$0, d2
0038bc: 4e75         rts        
0038be: d5c2         adda.l     d2, a2
0038c0: d1c2         adda.l     d2, a0
0038c2: 300a         move.w     a2, d0
0038c4: 08000000     btst.b     #$0, d0
0038c8: 6704         beq.b      $38ce
0038ca: 1122         move.b     -(a2), -(a0)
0038cc: 5382         subq.l     #$1, d2
0038ce: 3008         move.w     a0, d0
0038d0: 08000000     btst.b     #$0, d0
0038d4: 6624         bne.b      $38fa
0038d6: e28a         lsr.l      #$1, d2
0038d8: 6406         bcc.b      $38e0
0038da: 6104         bsr.b      $38e0
0038dc: 1122         move.b     -(a2), -(a0)
0038de: 4e75         rts        
0038e0: e28a         lsr.l      #$1, d2
0038e2: 6406         bcc.b      $38ea
0038e4: 3122         move.w     -(a2), -(a0)
0038e6: 6002         bra.b      $38ea
0038e8: 2122         move.l     -(a2), -(a0)
0038ea: 51cafffc     dbra       d2, $38e8
0038ee: 5242         addq.w     #$1, d2
0038f0: 5382         subq.l     #$1, d2
0038f2: 64f4         bcc.b      $38e8
0038f4: 7400         moveq      #$0, d2
0038f6: 4e75         rts        
0038f8: 1122         move.b     -(a2), -(a0)
0038fa: 51cafffc     dbra       d2, $38f8
0038fe: 5242         addq.w     #$1, d2
003900: 5382         subq.l     #$1, d2
003902: 64f4         bcc.b      $38f8
003904: 7400         moveq      #$0, d2
003906: 4e75         rts        
003908: 685f         bvc.b      $3969
00390a: 6974         bvs.b      $3980
00390c: 635f         bls.b      $396d
00390e: 6d67         blt.b      $3977
003910: 7200         moveq      #$0, d1
003912: 0029d7df     ori.b      #$df, -$5556(a1)
