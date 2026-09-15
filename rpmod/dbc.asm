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
00009c: 203c00003ab2 move.l     #$3ab2, d0
0000a2: 4ebb0800     jsr        $a4(pc,d0.l)
0000a6: 6076         bra.b      $11e
0000a8: 43e80004     lea.l      $4(a0), a1
0000ac: 2d49878e     move.l     a1, -$7872(a6)
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
00011e: 207c00003610 movea.l    #$3610, a0
000124: 4ebb8800     jsr        $126(pc,a0.l)
000128: 6500011c     bcs.w      $246
00012c: 6120         bsr.b      $14e
00012e: 4cdf0003     movem.l    (a7)+, d0-d1
000132: 9bcd         suba.l     a5, a5
000134: 2f2e878e     move.l     -$7872(a6), -(a7)
000138: 207c0000022c movea.l    #$22c, a0
00013e: 4ebb8800     jsr        $140(pc,a0.l)
000142: 7000         moveq      #$0, d0
000144: 207c00003fbc movea.l    #$3fbc, a0
00014a: 4ebb8800     jsr        $14c(pc,a0.l)
00014e: 207cffff8978 movea.l    #$ffff8978, a0
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
00018a: 207c00003f8c movea.l    #$3f8c, a0
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
0001d6: 227c00003f4a movea.l    #$3f4a, a1
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
000250: 227cffff8406 movea.l    #$ffff8406, a1
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
000272: 207cffff8406 movea.l    #$ffff8406, a0
000278: d1ce         adda.l     a6, a0
00027a: 6100ff18     bsr.w      $194
00027e: 4e40         trap       #$0
000280: 00064e40     ori.b      #$40, d6
000284: 000612d8     ori.b      #$d8, d6
000288: 66fc         bne.b      $286
00028a: 4e75         rts        
00028c: 4e550000     link.w     a5, #$0
000290: 48e78000     movem.l    d0, -(a7)
000294: 102e8792     move.b     -$786e(a6), d0
000298: 4e5d         unlk       a5
00029a: 4e75         rts        
00029c: 4e550000     link.w     a5, #$0
0002a0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0002a4: 4feffff4     lea.l      -$c(a7), a7
0002a8: 7001         moveq      #$1, d0
0002aa: 2f400008     move.l     d0, $8(a7)
0002ae: 600000a2     bra.w      $352
0002b2: 206f0010     movea.l    $10(a7), a0
0002b6: 202f0008     move.l     $8(a7), d0
0002ba: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
0002be: 2057         movea.l    (a7), a0
0002c0: 0c10002d     cmpi.b     #$2d, (a0)
0002c4: 66000088     bne.w      $34e
0002c8: 5297         addq.l     #$1, (a7)
0002ca: 605c         bra.b      $328
0002cc: 5297         addq.l     #$1, (a7)
0002ce: 486f0004     pea.l      $4(a7)
0002d2: 41fa04f0     lea.l      $7c4(pc), a0
0002d6: 2208         move.l     a0, d1
0002d8: 202f0004     move.l     $4(a7), d0
0002dc: 61003562     bsr.w      $3840
0002e0: 588f         addq.l     #$4, a7
0002e2: 4aaf0004     tst.l      $4(a7)
0002e6: 6606         bne.b      $2ee
0002e8: 422e8792     clr.b      -$786e(a6)
0002ec: 6060         bra.b      $34e
0002ee: 1d7c00018792 move.b     #$1, -$786e(a6)
0002f4: 6058         bra.b      $34e
0002f6: 7000         moveq      #$0, d0
0002f8: 61003e0e     bsr.w      $4108
0002fc: 6050         bra.b      $34e
0002fe: 5297         addq.l     #$1, (a7)
000300: 2057         movea.l    (a7), a0
000302: 0c100043     cmpi.b     #$43, (a0)
000306: 6646         bne.b      $34e
000308: 5297         addq.l     #$1, (a7)
00030a: 486f0004     pea.l      $4(a7)
00030e: 41fa04b7     lea.l      $7c7(pc), a0
000312: 2208         move.l     a0, d1
000314: 202f0004     move.l     $4(a7), d0
000318: 61003526     bsr.w      $3840
00031c: 588f         addq.l     #$4, a7
00031e: 202f0004     move.l     $4(a7), d0
000322: 61001c10     bsr.w      $1f34
000326: 6026         bra.b      $34e
000328: 2057         movea.l    (a7), a0
00032a: 1010         move.b     (a0), d0
00032c: 4880         ext.w      d0
00032e: 0c400068     cmpi.w     #$68, d0
000332: 67c2         beq.b      $2f6
000334: 6210         bhi.b      $346
000336: 0c00004c     cmpi.b     #$4c, d0
00033a: 67c2         beq.b      $2fe
00033c: 6210         bhi.b      $34e
00033e: 0c00003f     cmpi.b     #$3f, d0
000342: 67b2         beq.b      $2f6
000344: 6008         bra.b      $34e
000346: 0c400073     cmpi.w     #$73, d0
00034a: 6700ff80     beq.w      $2cc
00034e: 52af0008     addq.l     #$1, $8(a7)
000352: 202f0008     move.l     $8(a7), d0
000356: b0af000c     cmp.l      $c(a7), d0
00035a: 6d00ff56     blt.w      $2b2
00035e: 4fef000c     lea.l      $c(a7), a7
000362: 4ced0100fffc movem.l    -$4(a5), a0
000368: 4e5d         unlk       a5
00036a: 4e75         rts        
00036c: 4e550000     link.w     a5, #$0
000370: 48e7c080     movem.l    d0-d1/a0, -(a7)
000374: 4fefffea     lea.l      -$16(a7), a7
000378: 42af0010     clr.l      $10(a7)
00037c: 42af000c     clr.l      $c(a7)
000380: 42af0008     clr.l      $8(a7)
000384: 222f001a     move.l     $1a(a7), d1
000388: 202f0016     move.l     $16(a7), d0
00038c: 6100ff0e     bsr.w      $29c
000390: 2f2f001a     move.l     $1a(a7), -(a7)
000394: 222f001a     move.l     $1a(a7), d1
000398: 41ef0014     lea.l      $14(a7), a0
00039c: 2008         move.l     a0, d0
00039e: 61000540     bsr.w      $8e0
0003a2: 588f         addq.l     #$4, a7
0003a4: 4a00         tst.b      d0
0003a6: 6640         bne.b      $3e8
0003a8: 6100fee2     bsr.w      $28c
0003ac: 4a00         tst.b      d0
0003ae: 662e         bne.b      $3de
0003b0: 223c00002015 move.l     #$2015, d1
0003b6: 61003cd8     bsr.w      $4090
0003ba: 61002150     bsr.w      $250c
0003be: 6100277c     bsr.w      $2b3c
0003c2: 72ff         moveq      #$ff, d1
0003c4: b280         cmp.l      d0, d1
0003c6: 6616         bne.b      $3de
0003c8: 48780014     pea.l      $14.w
0003cc: 720e         moveq      #$e, d1
0003ce: 203c00000098 move.l     #$98, d0
0003d4: 610022b6     bsr.w      $268c
0003d8: 588f         addq.l     #$4, a7
0003da: 610022d6     bsr.w      $26b2
0003de: 1f7c00010015 move.b     #$1, $15(a7)
0003e4: 60000398     bra.w      $77e
0003e8: 6100fea2     bsr.w      $28c
0003ec: 4a00         tst.b      d0
0003ee: 662e         bne.b      $41e
0003f0: 223c00002014 move.l     #$2014, d1
0003f6: 61003c98     bsr.w      $4090
0003fa: 61002110     bsr.w      $250c
0003fe: 6100273c     bsr.w      $2b3c
000402: 72ff         moveq      #$ff, d1
000404: b280         cmp.l      d0, d1
000406: 6616         bne.b      $41e
000408: 48780015     pea.l      $15.w
00040c: 720e         moveq      #$e, d1
00040e: 203c00000098 move.l     #$98, d0
000414: 61002276     bsr.w      $268c
000418: 588f         addq.l     #$4, a7
00041a: 61002296     bsr.w      $26b2
00041e: 422f0015     clr.b      $15(a7)
000422: 422e8042     clr.b      -$7fbe(a6)
000426: 60000356     bra.w      $77e
00042a: 61000b14     bsr.w      $f40
00042e: 4a2e8042     tst.b      -$7fbe(a6)
000432: 670002ee     beq.w      $722
000436: 60000346     bra.w      $77e
00043a: 202f0010     move.l     $10(a7), d0
00043e: 6100161c     bsr.w      $1a5c
000442: 7214         moveq      #$14, d1
000444: b280         cmp.l      d0, d1
000446: 6f0000ae     ble.w      $4f6
00044a: 61000b74     bsr.w      $fc0
00044e: 0c400001     cmpi.w     #$1, d0
000452: 6618         bne.b      $46c
000454: 610007cc     bsr.w      $c22
000458: 2f40000c     move.l     d0, $c(a7)
00045c: 61000b62     bsr.w      $fc0
000460: 48c0         ext.l      d0
000462: 61000808     bsr.w      $c6c
000466: 2f400008     move.l     d0, $8(a7)
00046a: 6010         bra.b      $47c
00046c: 41fa035c     lea.l      $7ca(pc), a0
000470: 2f48000c     move.l     a0, $c(a7)
000474: 41fa0372     lea.l      $7e8(pc), a0
000478: 2f480008     move.l     a0, $8(a7)
00047c: 2f2f001a     move.l     $1a(a7), -(a7)
000480: 2f2f001a     move.l     $1a(a7), -(a7)
000484: 61000b5a     bsr.w      $fe0
000488: 2f00         move.l     d0, -(a7)
00048a: 2f2f0014     move.l     $14(a7), -(a7)
00048e: 2f2f001c     move.l     $1c(a7), -(a7)
000492: 61000b2c     bsr.w      $fc0
000496: 48c0         ext.l      d0
000498: 2f00         move.l     d0, -(a7)
00049a: 7204         moveq      #$4, d1
00049c: 202f0028     move.l     $28(a7), d0
0004a0: 61000f66     bsr.w      $1408
0004a4: 4fef0018     lea.l      $18(a7), a7
0004a8: 2f400004     move.l     d0, $4(a7)
0004ac: 6100147a     bsr.w      $1928
0004b0: 4a00         tst.b      d0
0004b2: 673a         beq.b      $4ee
0004b4: 2f2f0008     move.l     $8(a7), -(a7)
0004b8: 2f2f0010     move.l     $10(a7), -(a7)
0004bc: 2f2f000c     move.l     $c(a7), -(a7)
0004c0: 7200         moveq      #$0, d1
0004c2: 61000aec     bsr.w      $fb0
0004c6: 48c0         ext.l      d0
0004c8: 61000986     bsr.w      $e50
0004cc: 4fef000c     lea.l      $c(a7), a7
0004d0: 222f0004     move.l     $4(a7), d1
0004d4: 202f0010     move.l     $10(a7), d0
0004d8: 61001524     bsr.w      $19fe
0004dc: 610009e6     bsr.w      $ec4
0004e0: 4a00         tst.b      d0
0004e2: 66000296     bne.w      $77a
0004e6: 48780016     pea.l      $16.w
0004ea: 600001d6     bra.w      $6c2
0004ee: 48780017     pea.l      $17.w
0004f2: 600001ce     bra.w      $6c2
0004f6: 41fa030d     lea.l      $805(pc), a0
0004fa: 2008         move.l     a0, d0
0004fc: 61000670     bsr.w      $b6e
000500: 487a0325     pea.l      $827(pc)
000504: 487a0322     pea.l      $828(pc)
000508: 42a7         clr.l      -(a7)
00050a: 7232         moveq      #$32, d1
00050c: 61000aa2     bsr.w      $fb0
000510: 48c0         ext.l      d0
000512: 6100093c     bsr.w      $e50
000516: 4fef000c     lea.l      $c(a7), a7
00051a: 70ff         moveq      #$ff, d0
00051c: 610009a6     bsr.w      $ec4
000520: 4a00         tst.b      d0
000522: 66000256     bne.w      $77a
000526: 48780018     pea.l      $18.w
00052a: 60000196     bra.w      $6c2
00052e: 61000aa0     bsr.w      $fd0
000532: 2f00         move.l     d0, -(a7)
000534: 61000a8a     bsr.w      $fc0
000538: 48c0         ext.l      d0
00053a: 2200         move.l     d0, d1
00053c: 202f0014     move.l     $14(a7), d0
000540: 6100141a     bsr.w      $195c
000544: 588f         addq.l     #$4, a7
000546: 4a00         tst.b      d0
000548: 670000aa     beq.w      $5f4
00054c: 61000a82     bsr.w      $fd0
000550: 2200         move.l     d0, d1
000552: 202f0010     move.l     $10(a7), d0
000556: 610014a6     bsr.w      $19fe
00055a: 2e80         move.l     d0, (a7)
00055c: 61000a72     bsr.w      $fd0
000560: 2f00         move.l     d0, -(a7)
000562: 61000a6c     bsr.w      $fd0
000566: 2200         move.l     d0, d1
000568: 202f0014     move.l     $14(a7), d0
00056c: 61001432     bsr.w      $19a0
000570: 48c0         ext.l      d0
000572: 2200         move.l     d0, d1
000574: 202f0014     move.l     $14(a7), d0
000578: 61001124     bsr.w      $169e
00057c: 588f         addq.l     #$4, a7
00057e: 4a00         tst.b      d0
000580: 670e         beq.b      $590
000582: 487a02a5     pea.l      $829(pc)
000586: 487a02a2     pea.l      $82a(pc)
00058a: 42a7         clr.l      -(a7)
00058c: 7200         moveq      #$0, d1
00058e: 6022         bra.b      $5b2
000590: 48780019     pea.l      $19.w
000594: 720e         moveq      #$e, d1
000596: 203c00000098 move.l     #$98, d0
00059c: 610020ee     bsr.w      $268c
0005a0: 588f         addq.l     #$4, a7
0005a2: 6100210e     bsr.w      $26b2
0005a6: 487a0283     pea.l      $82b(pc)
0005aa: 487a0280     pea.l      $82c(pc)
0005ae: 42a7         clr.l      -(a7)
0005b0: 7233         moveq      #$33, d1
0005b2: 610009fc     bsr.w      $fb0
0005b6: 48c0         ext.l      d0
0005b8: 61000896     bsr.w      $e50
0005bc: 4fef000c     lea.l      $c(a7), a7
0005c0: 2017         move.l     (a7), d0
0005c2: 61000900     bsr.w      $ec4
0005c6: 4a00         tst.b      d0
0005c8: 6616         bne.b      $5e0
0005ca: 4878001a     pea.l      $1a.w
0005ce: 720e         moveq      #$e, d1
0005d0: 203c00000098 move.l     #$98, d0
0005d6: 610020b4     bsr.w      $268c
0005da: 588f         addq.l     #$4, a7
0005dc: 610020d4     bsr.w      $26b2
0005e0: 2017         move.l     (a7), d0
0005e2: 6100329c     bsr.w      $3880
0005e6: 4a80         tst.l      d0
0005e8: 6c000190     bge.w      $77a
0005ec: 4878001b     pea.l      $1b.w
0005f0: 600000d0     bra.w      $6c2
0005f4: 4878001c     pea.l      $1c.w
0005f8: 600000c8     bra.w      $6c2
0005fc: 610009d2     bsr.w      $fd0
000600: 2f00         move.l     d0, -(a7)
000602: 610009bc     bsr.w      $fc0
000606: 48c0         ext.l      d0
000608: 2200         move.l     d0, d1
00060a: 202f0014     move.l     $14(a7), d0
00060e: 6100134c     bsr.w      $195c
000612: 588f         addq.l     #$4, a7
000614: 4a00         tst.b      d0
000616: 670000a6     beq.w      $6be
00061a: 223c00002021 move.l     #$2021, d1
000620: 610009ae     bsr.w      $fd0
000624: 61002516     bsr.w      $2b3c
000628: 72ff         moveq      #$ff, d1
00062a: b280         cmp.l      d0, d1
00062c: 6620         bne.b      $64e
00062e: 4878001d     pea.l      $1d.w
000632: 720e         moveq      #$e, d1
000634: 203c00000098 move.l     #$98, d0
00063a: 61002050     bsr.w      $268c
00063e: 588f         addq.l     #$4, a7
000640: 61002070     bsr.w      $26b2
000644: 487a01e7     pea.l      $82d(pc)
000648: 487a01e4     pea.l      $82e(pc)
00064c: 603c         bra.b      $68a
00064e: 610019f8     bsr.w      $2048
000652: 0c8000002023 cmpi.l     #$2023, d0
000658: 6612         bne.b      $66c
00065a: 487a01d3     pea.l      $82f(pc)
00065e: 487a01d0     pea.l      $830(pc)
000662: 6100096c     bsr.w      $fd0
000666: 2f00         move.l     d0, -(a7)
000668: 7200         moveq      #$0, d1
00066a: 6026         bra.b      $692
00066c: 4878001e     pea.l      $1e.w
000670: 720e         moveq      #$e, d1
000672: 203c00000098 move.l     #$98, d0
000678: 61002012     bsr.w      $268c
00067c: 588f         addq.l     #$4, a7
00067e: 61002032     bsr.w      $26b2
000682: 487a01ad     pea.l      $831(pc)
000686: 487a01aa     pea.l      $832(pc)
00068a: 61000944     bsr.w      $fd0
00068e: 2f00         move.l     d0, -(a7)
000690: 7233         moveq      #$33, d1
000692: 6100091c     bsr.w      $fb0
000696: 48c0         ext.l      d0
000698: 610007b6     bsr.w      $e50
00069c: 4fef000c     lea.l      $c(a7), a7
0006a0: 6100092e     bsr.w      $fd0
0006a4: 2200         move.l     d0, d1
0006a6: 202f0010     move.l     $10(a7), d0
0006aa: 61001352     bsr.w      $19fe
0006ae: 61000814     bsr.w      $ec4
0006b2: 4a00         tst.b      d0
0006b4: 660000c4     bne.w      $77a
0006b8: 4878001f     pea.l      $1f.w
0006bc: 6004         bra.b      $6c2
0006be: 48780020     pea.l      $20.w
0006c2: 720e         moveq      #$e, d1
0006c4: 203c00000098 move.l     #$98, d0
0006ca: 61001fc0     bsr.w      $268c
0006ce: 588f         addq.l     #$4, a7
0006d0: 61001fe0     bsr.w      $26b2
0006d4: 600000a4     bra.w      $77a
0006d8: 222f0010     move.l     $10(a7), d1
0006dc: 61000932     bsr.w      $1010
0006e0: 61000bac     bsr.w      $128e
0006e4: 60000094     bra.w      $77a
0006e8: 6100090e     bsr.w      $ff8
0006ec: 61000a7c     bsr.w      $116a
0006f0: 60000088     bra.w      $77a
0006f4: 61000a00     bsr.w      $10f6
0006f8: 60000080     bra.w      $77a
0006fc: 61000a1a     bsr.w      $1118
000700: 60000078     bra.w      $77a
000704: 48780021     pea.l      $21.w
000708: 720e         moveq      #$e, d1
00070a: 203c00000098 move.l     #$98, d0
000710: 61001f7a     bsr.w      $268c
000714: 588f         addq.l     #$4, a7
000716: 61001f9a     bsr.w      $26b2
00071a: 1d7c00018042 move.b     #$1, -$7fbe(a6)
000720: 6058         bra.b      $77a
000722: 6100088c     bsr.w      $fb0
000726: 0c400104     cmpi.w     #$104, d0
00072a: 67ee         beq.b      $71a
00072c: 6224         bhi.b      $752
00072e: 0c400102     cmpi.w     #$102, d0
000732: 6700fdfa     beq.w      $52e
000736: 6210         bhi.b      $748
000738: 0c400101     cmpi.w     #$101, d0
00073c: 6700fcfc     beq.w      $43a
000740: 62c2         bhi.b      $704
000742: 4a40         tst.w      d0
000744: 6734         beq.b      $77a
000746: 60bc         bra.b      $704
000748: 0c400103     cmpi.w     #$103, d0
00074c: 6700feae     beq.w      $5fc
000750: 60b2         bra.b      $704
000752: 0c400130     cmpi.w     #$130, d0
000756: 679c         beq.b      $6f4
000758: 6214         bhi.b      $76e
00075a: 0c400120     cmpi.w     #$120, d0
00075e: 6700ff88     beq.w      $6e8
000762: 62a0         bhi.b      $704
000764: 0c400110     cmpi.w     #$110, d0
000768: 6700ff6e     beq.w      $6d8
00076c: 6096         bra.b      $704
00076e: 0c400140     cmpi.w     #$140, d0
000772: 6700ff88     beq.w      $6fc
000776: 6000ff8c     bra.w      $704
00077a: 610008ac     bsr.w      $1028
00077e: 4a2e8042     tst.b      -$7fbe(a6)
000782: 6608         bne.b      $78c
000784: 4a2f0015     tst.b      $15(a7)
000788: 6700fca0     beq.w      $42a
00078c: 4a2f0015     tst.b      $15(a7)
000790: 6622         bne.b      $7b4
000792: 202f0010     move.l     $10(a7), d0
000796: 610001b2     bsr.w      $94a
00079a: 4a00         tst.b      d0
00079c: 6616         bne.b      $7b4
00079e: 48780022     pea.l      $22.w
0007a2: 720e         moveq      #$e, d1
0007a4: 203c00000098 move.l     #$98, d0
0007aa: 61001ee0     bsr.w      $268c
0007ae: 588f         addq.l     #$4, a7
0007b0: 61001f00     bsr.w      $26b2
0007b4: 7000         moveq      #$0, d0
0007b6: 4fef0016     lea.l      $16(a7), a7
0007ba: 4ced0100fffc movem.l    -$4(a5), a0
0007c0: 4e5d         unlk       a5
0007c2: 4e75         rts        
0007c4: 25640025     move.l     -(a4), $25(a2)
0007c8: 64002f63     bcc.w      $372d
0007cc: 302f5f31     move.w     $5f31(a7), d0
0007d0: 32395f2f7069 move.w     $5f2f7069.l, d1
0007d6: 7065         moveq      #$65, d0
0007d8: 2f627369     move.l     -(a2), $7369(a7)
0007dc: 5f6d715f     subq.w     #$7, $715f(a5)
0007e0: 7265         moveq      #$65, d1
0007e2: 7175         .dc.w      $7175
0007e4: 6573         bcs.b      $859
0007e6: 7400         moveq      #$0, d2
0007e8: 2f63302f     move.l     -(a3), $302f(a7)
0007ec: 5f313238     subq.b     #$7, $38(a1, d3.w)
0007f0: 5f2f7069     subq.b     #$7, $7069(a7)
0007f4: 7065         moveq      #$65, d0
0007f6: 2f627369     move.l     -(a2), $7369(a7)
0007fa: 5f6d715f     subq.w     #$7, $715f(a5)
0007fe: 616e         bsr.b      $86e
000800: 7377         .dc.w      $7377
000802: 6572         bcs.b      $876
000804: 00457272     ori.w      #$7272, d5
000808: 6f72         ble.b      $87c
00080a: 3a20         move.w     -(a0), d5
00080c: 546f6f20     addq.w     #$2, $6f20(a7)
000810: 6d61         blt.b      $873
000812: 6e79         bgt.b      $88d
000814: 2070726f     movea.l    $6f(a0, d7.w), a0
000818: 6365         bls.b      $87f
00081a: 7373         .dc.w      $7373
00081c: 6573         bcs.b      $891
00081e: 20737461     movea.l    $61(a3, d7.w), a0
000822: 7274         moveq      #$74, d1
000824: 6564         bcs.b      $88a
000826: 00000000     ori.b      #$0, d0
00082a: 00000000     ori.b      #$0, d0
00082e: 00000000     ori.b      #$0, d0
000832: 00004e55     ori.b      #$55, d0
000836: 000048e7     ori.b      #$e7, d0
00083a: c8302440     and.b      $40(a0, d2.w), d4
00083e: 2801         move.l     d1, d4
000840: 266f001c     movea.l    $1c(a7), a3
000844: 4853         pea.l      (a3)
000846: 2f04         move.l     d4, -(a7)
000848: 487a02e2     pea.l      $b2c(pc)
00084c: 487a02df     pea.l      $b2d(pc)
000850: 487a02dc     pea.l      $b2e(pc)
000854: 48780001     pea.l      $1.w
000858: 7200         moveq      #$0, d1
00085a: 200a         move.l     a2, d0
00085c: 61000baa     bsr.w      $1408
000860: 4fef0018     lea.l      $18(a7), a7
000864: 2d408022     move.l     d0, -$7fde(a6)
000868: 202e8022     move.l     -$7fde(a6), d0
00086c: 610010ba     bsr.w      $1928
000870: 4a00         tst.b      d0
000872: 675c         beq.b      $8d0
000874: 610012d6     bsr.w      $1b4c
000878: 4853         pea.l      (a3)
00087a: 2f04         move.l     d4, -(a7)
00087c: 487a02b1     pea.l      $b2f(pc)
000880: 487a02ae     pea.l      $b30(pc)
000884: 487a02ab     pea.l      $b31(pc)
000888: 48780001     pea.l      $1.w
00088c: 7201         moveq      #$1, d1
00088e: 200a         move.l     a2, d0
000890: 61000b76     bsr.w      $1408
000894: 4fef0018     lea.l      $18(a7), a7
000898: 2d408026     move.l     d0, -$7fda(a6)
00089c: 6100108a     bsr.w      $1928
0008a0: 4a00         tst.b      d0
0008a2: 672c         beq.b      $8d0
0008a4: 4853         pea.l      (a3)
0008a6: 2f04         move.l     d4, -(a7)
0008a8: 487a0288     pea.l      $b32(pc)
0008ac: 487a0285     pea.l      $b33(pc)
0008b0: 487a0282     pea.l      $b34(pc)
0008b4: 48780001     pea.l      $1.w
0008b8: 7205         moveq      #$5, d1
0008ba: 200a         move.l     a2, d0
0008bc: 61000b4a     bsr.w      $1408
0008c0: 4fef0018     lea.l      $18(a7), a7
0008c4: 2d408036     move.l     d0, -$7fca(a6)
0008c8: 6100105e     bsr.w      $1928
0008cc: 4a00         tst.b      d0
0008ce: 6604         bne.b      $8d4
0008d0: 7000         moveq      #$0, d0
0008d2: 6002         bra.b      $8d6
0008d4: 7001         moveq      #$1, d0
0008d6: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0008dc: 4e5d         unlk       a5
0008de: 4e75         rts        
0008e0: 4e550000     link.w     a5, #$0
0008e4: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
0008e8: 2440         movea.l    d0, a2
0008ea: 2801         move.l     d1, d4
0008ec: 266f001c     movea.l    $1c(a7), a3
0008f0: 610007c6     bsr.w      $10b8
0008f4: 4a00         tst.b      d0
0008f6: 6742         beq.b      $93a
0008f8: 61000ede     bsr.w      $17d8
0008fc: 2480         move.l     d0, (a2)
0008fe: 673a         beq.b      $93a
000900: 61000ed6     bsr.w      $17d8
000904: 2d40801e     move.l     d0, -$7fe2(a6)
000908: 6730         beq.b      $93a
00090a: 61000288     bsr.w      $b94
00090e: 4a00         tst.b      d0
000910: 6610         bne.b      $922
000912: 2012         move.l     (a2), d0
000914: 6100115c     bsr.w      $1a72
000918: 202e801e     move.l     -$7fe2(a6), d0
00091c: 61001154     bsr.w      $1a72
000920: 6018         bra.b      $93a
000922: 4853         pea.l      (a3)
000924: 2204         move.l     d4, d1
000926: 202e801e     move.l     -$7fe2(a6), d0
00092a: 6100ff08     bsr.w      $834
00092e: 588f         addq.l     #$4, a7
000930: 4a00         tst.b      d0
000932: 660a         bne.b      $93e
000934: 2012         move.l     (a2), d0
000936: 6112         bsr.b      $94a
000938: 4a00         tst.b      d0
00093a: 7000         moveq      #$0, d0
00093c: 6002         bra.b      $940
00093e: 7001         moveq      #$1, d0
000940: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
000946: 4e5d         unlk       a5
000948: 4e75         rts        
00094a: 4e550000     link.w     a5, #$0
00094e: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
000952: 2440         movea.l    d0, a2
000954: 598f         subq.l     #$4, a7
000956: 7801         moveq      #$1, d4
000958: 6020         bra.b      $97a
00095a: 200a         move.l     a2, d0
00095c: 61001176     bsr.w      $1ad4
000960: 2e80         move.l     d0, (a7)
000962: 6c04         bge.b      $968
000964: 7800         moveq      #$0, d4
000966: 601c         bra.b      $984
000968: 2f17         move.l     (a7), -(a7)
00096a: 7201         moveq      #$1, d1
00096c: 200a         move.l     a2, d0
00096e: 61000d2e     bsr.w      $169e
000972: 588f         addq.l     #$4, a7
000974: 4a00         tst.b      d0
000976: 6602         bne.b      $97a
000978: 7800         moveq      #$0, d4
00097a: 200a         move.l     a2, d0
00097c: 610010de     bsr.w      $1a5c
000980: 4a80         tst.l      d0
000982: 6ed6         bgt.b      $95a
000984: 200a         move.l     a2, d0
000986: 610010ea     bsr.w      $1a72
00098a: 610011f8     bsr.w      $1b84
00098e: 202e8036     move.l     -$7fca(a6), d0
000992: 61000f94     bsr.w      $1928
000996: 4a00         tst.b      d0
000998: 6714         beq.b      $9ae
00099a: 2f2e8036     move.l     -$7fca(a6), -(a7)
00099e: 7201         moveq      #$1, d1
0009a0: 202e801e     move.l     -$7fe2(a6), d0
0009a4: 61000cf8     bsr.w      $169e
0009a8: 588f         addq.l     #$4, a7
0009aa: 4a00         tst.b      d0
0009ac: 6602         bne.b      $9b0
0009ae: 7800         moveq      #$0, d4
0009b0: 202e8026     move.l     -$7fda(a6), d0
0009b4: 61000f72     bsr.w      $1928
0009b8: 4a00         tst.b      d0
0009ba: 6714         beq.b      $9d0
0009bc: 2f2e8026     move.l     -$7fda(a6), -(a7)
0009c0: 7201         moveq      #$1, d1
0009c2: 202e801e     move.l     -$7fe2(a6), d0
0009c6: 61000cd6     bsr.w      $169e
0009ca: 588f         addq.l     #$4, a7
0009cc: 4a00         tst.b      d0
0009ce: 6602         bne.b      $9d2
0009d0: 7800         moveq      #$0, d4
0009d2: 202e8022     move.l     -$7fde(a6), d0
0009d6: 61000f50     bsr.w      $1928
0009da: 4a00         tst.b      d0
0009dc: 6714         beq.b      $9f2
0009de: 2f2e8022     move.l     -$7fde(a6), -(a7)
0009e2: 7201         moveq      #$1, d1
0009e4: 202e801e     move.l     -$7fe2(a6), d0
0009e8: 61000cb4     bsr.w      $169e
0009ec: 588f         addq.l     #$4, a7
0009ee: 4a00         tst.b      d0
0009f0: 6602         bne.b      $9f4
0009f2: 7800         moveq      #$0, d4
0009f4: 6100020a     bsr.w      $c00
0009f8: 4a00         tst.b      d0
0009fa: 6602         bne.b      $9fe
0009fc: 7800         moveq      #$0, d4
0009fe: 202e801e     move.l     -$7fe2(a6), d0
000a02: 6100106e     bsr.w      $1a72
000a06: 610006be     bsr.w      $10c6
000a0a: 4a00         tst.b      d0
000a0c: 6604         bne.b      $a12
000a0e: 7000         moveq      #$0, d0
000a10: 6002         bra.b      $a14
000a12: 1004         move.b     d4, d0
000a14: 588f         addq.l     #$4, a7
000a16: 4ced0412fff4 movem.l    -$c(a5), d1/d4/a2
000a1c: 4e5d         unlk       a5
000a1e: 4e75         rts        
000a20: 4e550000     link.w     a5, #$0
000a24: 48e78080     movem.l    d0/a0, -(a7)
000a28: 6010         bra.b      $a3a
000a2a: 2017         move.l     (a7), d0
000a2c: 41ee8022     lea.l      -$7fde(a6), a0
000a30: 20300c00     move.l     (a0, d0.l * 4), d0
000a34: 6020         bra.b      $a56
000a36: 70ff         moveq      #$ff, d0
000a38: 601c         bra.b      $a56
000a3a: 2017         move.l     (a7), d0
000a3c: 0c80000000ff cmpi.l     #$ff, d0
000a42: 62f2         bhi.b      $a36
000a44: 4a00         tst.b      d0
000a46: 67e2         beq.b      $a2a
000a48: 0c000001     cmpi.b     #$1, d0
000a4c: 67dc         beq.b      $a2a
000a4e: 0c000005     cmpi.b     #$5, d0
000a52: 67d6         beq.b      $a2a
000a54: 60e0         bra.b      $a36
000a56: 4ced0100fffc movem.l    -$4(a5), a0
000a5c: 4e5d         unlk       a5
000a5e: 4e75         rts        
000a60: 4e550000     link.w     a5, #$0
000a64: 48e7c000     movem.l    d0-d1, -(a7)
000a68: 598f         subq.l     #$4, a7
000a6a: 202e801e     move.l     -$7fe2(a6), d0
000a6e: 61001064     bsr.w      $1ad4
000a72: 2e80         move.l     d0, (a7)
000a74: 70ff         moveq      #$ff, d0
000a76: b097         cmp.l      (a7), d0
000a78: 663a         bne.b      $ab4
000a7a: 4878000a     pea.l      $a.w
000a7e: 720e         moveq      #$e, d1
000a80: 203c00000098 move.l     #$98, d0
000a86: 61001c04     bsr.w      $268c
000a8a: 588f         addq.l     #$4, a7
000a8c: 61001c24     bsr.w      $26b2
000a90: 6022         bra.b      $ab4
000a92: 2017         move.l     (a7), d0
000a94: b0ae8022     cmp.l      -$7fde(a6), d0
000a98: 670e         beq.b      $aa8
000a9a: 2017         move.l     (a7), d0
000a9c: b0ae8036     cmp.l      -$7fca(a6), d0
000aa0: 6706         beq.b      $aa8
000aa2: 2017         move.l     (a7), d0
000aa4: 61000c6a     bsr.w      $1710
000aa8: 2217         move.l     (a7), d1
000aaa: 202e801e     move.l     -$7fe2(a6), d0
000aae: 6100104a     bsr.w      $1afa
000ab2: 2e80         move.l     d0, (a7)
000ab4: 70ff         moveq      #$ff, d0
000ab6: b097         cmp.l      (a7), d0
000ab8: 66d8         bne.b      $a92
000aba: 588f         addq.l     #$4, a7
000abc: 4ced0002fffc movem.l    -$4(a5), d1
000ac2: 4e5d         unlk       a5
000ac4: 4e75         rts        
000ac6: 4e550000     link.w     a5, #$0
000aca: 48e7c000     movem.l    d0-d1, -(a7)
000ace: 598f         subq.l     #$4, a7
000ad0: 202e801e     move.l     -$7fe2(a6), d0
000ad4: 61000ffe     bsr.w      $1ad4
000ad8: 2e80         move.l     d0, (a7)
000ada: 70ff         moveq      #$ff, d0
000adc: b097         cmp.l      (a7), d0
000ade: 663a         bne.b      $b1a
000ae0: 4878000b     pea.l      $b.w
000ae4: 720e         moveq      #$e, d1
000ae6: 203c00000098 move.l     #$98, d0
000aec: 61001b9e     bsr.w      $268c
000af0: 588f         addq.l     #$4, a7
000af2: 61001bbe     bsr.w      $26b2
000af6: 6022         bra.b      $b1a
000af8: 2017         move.l     (a7), d0
000afa: b0ae8022     cmp.l      -$7fde(a6), d0
000afe: 670e         beq.b      $b0e
000b00: 2017         move.l     (a7), d0
000b02: b0ae8036     cmp.l      -$7fca(a6), d0
000b06: 6706         beq.b      $b0e
000b08: 2017         move.l     (a7), d0
000b0a: 61000c56     bsr.w      $1762
000b0e: 2217         move.l     (a7), d1
000b10: 202e801e     move.l     -$7fe2(a6), d0
000b14: 61000fe4     bsr.w      $1afa
000b18: 2e80         move.l     d0, (a7)
000b1a: 70ff         moveq      #$ff, d0
000b1c: b097         cmp.l      (a7), d0
000b1e: 66d8         bne.b      $af8
000b20: 588f         addq.l     #$4, a7
000b22: 4ced0002fffc movem.l    -$4(a5), d1
000b28: 4e5d         unlk       a5
000b2a: 4e75         rts        
000b2c: 00000000     ori.b      #$0, d0
000b30: 00000000     ori.b      #$0, d0
000b34: 00004e55     ori.b      #$55, d0
000b38: 000048e7     ori.b      #$e7, d0
000b3c: 8000         or.b       d0, d0
000b3e: 600e         bra.b      $b4e
000b40: 1d7c00018042 move.b     #$1, -$7fbe(a6)
000b46: 2017         move.l     (a7), d0
000b48: 61001444     bsr.w      $1f8e
000b4c: 601c         bra.b      $b6a
000b4e: 2017         move.l     (a7), d0
000b50: 0c800000ffff cmpi.l     #$ffff, d0
000b56: 62ee         bhi.b      $b46
000b58: 0c40202d     cmpi.w     #$202d, d0
000b5c: 67e2         beq.b      $b40
000b5e: 0c402041     cmpi.w     #$2041, d0
000b62: 6706         beq.b      $b6a
000b64: 0c402042     cmpi.w     #$2042, d0
000b68: 66dc         bne.b      $b46
000b6a: 4e5d         unlk       a5
000b6c: 4e75         rts        
000b6e: 4e550000     link.w     a5, #$0
000b72: 48e7c080     movem.l    d0-d1/a0, -(a7)
000b76: 2f2e800c     move.l     -$7ff4(a6), -(a7)
000b7a: 222f0004     move.l     $4(a7), d1
000b7e: 41fa0228     lea.l      $da8(pc), a0
000b82: 2008         move.l     a0, d0
000b84: 61002c82     bsr.w      $3808
000b88: 588f         addq.l     #$4, a7
000b8a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000b90: 4e5d         unlk       a5
000b92: 4e75         rts        
000b94: 4e550000     link.w     a5, #$0
000b98: 48e7c080     movem.l    d0-d1/a0, -(a7)
000b9c: 48780400     pea.l      $400.w
000ba0: 48780003     pea.l      $3.w
000ba4: 7223         moveq      #$23, d1
000ba6: 41fa020e     lea.l      $db6(pc), a0
000baa: 2008         move.l     a0, d0
000bac: 61001e0a     bsr.w      $29b8
000bb0: 508f         addq.l     #$8, a7
000bb2: 2d408794     move.l     d0, -$786c(a6)
000bb6: 6c18         bge.b      $bd0
000bb8: 48780032     pea.l      $32.w
000bbc: 720e         moveq      #$e, d1
000bbe: 203c00000098 move.l     #$98, d0
000bc4: 61001ac6     bsr.w      $268c
000bc8: 588f         addq.l     #$4, a7
000bca: 61001ae6     bsr.w      $26b2
000bce: 6024         bra.b      $bf4
000bd0: 41fb01700000158a lea.l      $158a(a16, invalid.w), a0
000bd8: 2008         move.l     a0, d0
000bda: 61001564     bsr.w      $2140
000bde: 41fb0170ffffff56 lea.l      $ffffff56(a16, invalid.w), a0
000be6: 2008         move.l     a0, d0
000be8: 6100143c     bsr.w      $2026
000bec: 4a80         tst.l      d0
000bee: 6704         beq.b      $bf4
000bf0: 7001         moveq      #$1, d0
000bf2: 6002         bra.b      $bf6
000bf4: 7000         moveq      #$0, d0
000bf6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000bfc: 4e5d         unlk       a5
000bfe: 4e75         rts        
000c00: 4e550000     link.w     a5, #$0
000c04: 48e78000     movem.l    d0, -(a7)
000c08: 61001430     bsr.w      $203a
000c0c: 4a80         tst.l      d0
000c0e: 6604         bne.b      $c14
000c10: 7000         moveq      #$0, d0
000c12: 600a         bra.b      $c1e
000c14: 202e8794     move.l     -$786c(a6), d0
000c18: 61002c66     bsr.w      $3880
000c1c: 7001         moveq      #$1, d0
000c1e: 4e5d         unlk       a5
000c20: 4e75         rts        
000c22: 4e550000     link.w     a5, #$0
000c26: 48e7c080     movem.l    d0-d1/a0, -(a7)
000c2a: 41fa01aa     lea.l      $dd6(pc), a0
000c2e: 2208         move.l     a0, d1
000c30: 41ee8043     lea.l      -$7fbd(a6), a0
000c34: 2008         move.l     a0, d0
000c36: 61002dd8     bsr.w      $3a10
000c3a: 41ee8043     lea.l      -$7fbd(a6), a0
000c3e: 2008         move.l     a0, d0
000c40: 61002cae     bsr.w      $38f0
000c44: 2f00         move.l     d0, -(a7)
000c46: 487a01a8     pea.l      $df0(pc)
000c4a: 41fa01ae     lea.l      $dfa(pc), a0
000c4e: 2208         move.l     a0, d1
000c50: 41ee8063     lea.l      -$7f9d(a6), a0
000c54: 2008         move.l     a0, d0
000c56: 61002bb8     bsr.w      $3810
000c5a: 508f         addq.l     #$8, a7
000c5c: 41ee8063     lea.l      -$7f9d(a6), a0
000c60: 2008         move.l     a0, d0
000c62: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000c68: 4e5d         unlk       a5
000c6a: 4e75         rts        
000c6c: 4e550000     link.w     a5, #$0
000c70: 48e7c080     movem.l    d0-d1/a0, -(a7)
000c74: 60000076     bra.w      $cec
000c78: 41fa0185     lea.l      $dff(pc), a0
000c7c: 2208         move.l     a0, d1
000c7e: 41ee80b3     lea.l      -$7f4d(a6), a0
000c82: 2008         move.l     a0, d0
000c84: 61002d8a     bsr.w      $3a10
000c88: 41fa017f     lea.l      $e09(pc), a0
000c8c: 2208         move.l     a0, d1
000c8e: 41ee80b3     lea.l      -$7f4d(a6), a0
000c92: 2008         move.l     a0, d0
000c94: 61002d96     bsr.w      $3a2c
000c98: 41ee80b3     lea.l      -$7f4d(a6), a0
000c9c: 2008         move.l     a0, d0
000c9e: 61002c50     bsr.w      $38f0
000ca2: 2f00         move.l     d0, -(a7)
000ca4: 41fa017d     lea.l      $e23(pc), a0
000ca8: 2208         move.l     a0, d1
000caa: 41ee8103     lea.l      -$7efd(a6), a0
000cae: 2008         move.l     a0, d0
000cb0: 61002b5e     bsr.w      $3810
000cb4: 588f         addq.l     #$4, a7
000cb6: 6046         bra.b      $cfe
000cb8: 41fa016c     lea.l      $e26(pc), a0
000cbc: 2208         move.l     a0, d1
000cbe: 41ee80b3     lea.l      -$7f4d(a6), a0
000cc2: 2008         move.l     a0, d0
000cc4: 61002d4a     bsr.w      $3a10
000cc8: 41ee80b3     lea.l      -$7f4d(a6), a0
000ccc: 2008         move.l     a0, d0
000cce: 61002c20     bsr.w      $38f0
000cd2: 2f00         move.l     d0, -(a7)
000cd4: 487a016a     pea.l      $e40(pc)
000cd8: 41fa0170     lea.l      $e4a(pc), a0
000cdc: 2208         move.l     a0, d1
000cde: 41ee8103     lea.l      -$7efd(a6), a0
000ce2: 2008         move.l     a0, d0
000ce4: 61002b2a     bsr.w      $3810
000ce8: 508f         addq.l     #$8, a7
000cea: 6012         bra.b      $cfe
000cec: 302f0002     move.w     $2(a7), d0
000cf0: 0c400001     cmpi.w     #$1, d0
000cf4: 67c2         beq.b      $cb8
000cf6: 0c400002     cmpi.w     #$2, d0
000cfa: 6700ff7c     beq.w      $c78
000cfe: 41ee8103     lea.l      -$7efd(a6), a0
000d02: 2008         move.l     a0, d0
000d04: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000d0a: 4e5d         unlk       a5
000d0c: 4e75         rts        
000d0e: 4e550000     link.w     a5, #$0
000d12: 48e7c000     movem.l    d0-d1, -(a7)
000d16: 598f         subq.l     #$4, a7
000d18: 223c00002032 move.l     #$2032, d1
000d1e: 202e8794     move.l     -$786c(a6), d0
000d22: 61002fb8     bsr.w      $3cdc
000d26: 4a80         tst.l      d0
000d28: 6c16         bge.b      $d40
000d2a: 48780036     pea.l      $36.w
000d2e: 720e         moveq      #$e, d1
000d30: 203c00000098 move.l     #$98, d0
000d36: 61001954     bsr.w      $268c
000d3a: 588f         addq.l     #$4, a7
000d3c: 61001974     bsr.w      $26b2
000d40: 61001306     bsr.w      $2048
000d44: 2e80         move.l     d0, (a7)
000d46: 0c8000002032 cmpi.l     #$2032, d0
000d4c: 6706         beq.b      $d54
000d4e: 1d7c00018042 move.b     #$1, -$7fbe(a6)
000d54: 588f         addq.l     #$4, a7
000d56: 4ced0002fffc movem.l    -$4(a5), d1
000d5c: 4e5d         unlk       a5
000d5e: 4e75         rts        
000d60: 4e550000     link.w     a5, #$0
000d64: 48e7c000     movem.l    d0-d1, -(a7)
000d68: 598f         subq.l     #$4, a7
000d6a: 2f2f0008     move.l     $8(a7), -(a7)
000d6e: 222f0008     move.l     $8(a7), d1
000d72: 202e8794     move.l     -$786c(a6), d0
000d76: 61002aec     bsr.w      $3864
000d7a: 588f         addq.l     #$4, a7
000d7c: 2e80         move.l     d0, (a7)
000d7e: 2017         move.l     (a7), d0
000d80: b0af0008     cmp.l      $8(a7), d0
000d84: 671a         beq.b      $da0
000d86: 48780037     pea.l      $37.w
000d8a: 720e         moveq      #$e, d1
000d8c: 203c00000098 move.l     #$98, d0
000d92: 610018f8     bsr.w      $268c
000d96: 588f         addq.l     #$4, a7
000d98: 61001918     bsr.w      $26b2
000d9c: 70ff         moveq      #$ff, d0
000d9e: 6002         bra.b      $da2
000da0: 2017         move.l     (a7), d0
000da2: 588f         addq.l     #$4, a7
000da4: 4e5d         unlk       a5
000da6: 4e75         rts        
000da8: 5b44         subq.w     #$5, d4
000daa: 4243         clr.w      d3
000dac: 5d20         subq.b     #$6, -(a0)
000dae: 25732c202564 move.l     $20(a3, d2.l), $2564(a2)
000db4: 0d00         btst.l     d6, d0
000db6: 2f63302f     move.l     -(a3), $302f(a7)
000dba: 5f313239     subq.b     #$7, $39(a1, d3.w)
000dbe: 5f2f7069     subq.b     #$7, $7069(a7)
000dc2: 7065         moveq      #$65, d0
000dc4: 2f646263     move.l     -(a4), $6263(a7)
000dc8: 5f72657175657374 subq.w     #$7, ([$75657374, a2])
000dd0: 5f70697065002f70 subq.w     #$7, $65002f70(a0, invalid.w)
000dd8: 6970         bvs.b      $e4a
000dda: 652f         bcs.b      $e0b
000ddc: 6462         bcc.b      $e40
000dde: 715f         .dc.w      $715f
000de0: 7265         moveq      #$65, d1
000de2: 715f         .dc.w      $715f
000de4: 7069         moveq      #$69, d0
000de6: 7065         moveq      #$65, d0
000de8: 5f58         subq.w     #$7, (a0)+
000dea: 5858         addq.w     #$4, (a0)+
000dec: 5858         addq.w     #$4, (a0)+
000dee: 5800         addq.b     #$4, d0
000df0: 2f63302f     move.l     -(a3), $302f(a7)
000df4: 5f313239     subq.b     #$7, $39(a1, d3.w)
000df8: 5f00         subq.b     #$7, d0
000dfa: 25732573002f63302f5f3132385f move.l     ([$2f6330, a3], $2f5f3132), $385f(a2)
000e08: 002f70697065 ori.b      #$69, $7065(a7)
000e0e: 2f646271     move.l     -(a4), $6271(a7)
000e12: 5f7273705f706970 subq.w     #$7, $5f706970(a2, invalid.w)
000e1a: 655f         bcs.b      $e7b
000e1c: 5858         addq.w     #$4, (a0)+
000e1e: 5858         addq.w     #$4, (a0)+
000e20: 5858         addq.w     #$4, (a0)+
000e22: 00257300     ori.b      #$0, -(a5)
000e26: 2f706970652f6462715f move.l     $652f6462(a0, invalid.w), $715f(a7)
000e30: 7273         moveq      #$73, d1
000e32: 705f         moveq      #$5f, d0
000e34: 7069         moveq      #$69, d0
000e36: 7065         moveq      #$65, d0
000e38: 5f58         subq.w     #$7, (a0)+
000e3a: 5858         addq.w     #$4, (a0)+
000e3c: 5858         addq.w     #$4, (a0)+
000e3e: 5800         addq.b     #$4, d0
000e40: 2f63302f     move.l     -(a3), $302f(a7)
000e44: 5f313239     subq.b     #$7, $39(a1, d3.w)
000e48: 5f00         subq.b     #$7, d0
000e4a: 2573257300004e55000048e7ceb0 move.l     ([$4e55, a3], $48e7), -$3150(a2)
000e58: 2800         move.l     d0, d4
000e5a: 2a01         move.l     d1, d5
000e5c: 2c2f0028     move.l     $28(a7), d6
000e60: 246f002c     movea.l    $2c(a7), a2
000e64: 266f0030     movea.l    $30(a7), a3
000e68: 3d7c00018156 move.w     #$1, -$7eaa(a6)
000e6e: 3d448158     move.w     d4, -$7ea8(a6)
000e72: 3d45815a     move.w     d5, -$7ea6(a6)
000e76: 6030         bra.b      $ea8
000e78: 3d7c00a28154 move.w     #$a2, -$7eac(a6)
000e7e: 4a45         tst.w      d5
000e80: 6638         bne.b      $eba
000e82: 2d46815c     move.l     d6, -$7ea4(a6)
000e86: 220a         move.l     a2, d1
000e88: 41ee8160     lea.l      -$7ea0(a6), a0
000e8c: 2008         move.l     a0, d0
000e8e: 61002b80     bsr.w      $3a10
000e92: 220b         move.l     a3, d1
000e94: 41ee81ac     lea.l      -$7e54(a6), a0
000e98: 2008         move.l     a0, d0
000e9a: 61002b74     bsr.w      $3a10
000e9e: 601a         bra.b      $eba
000ea0: 3d7c00068154 move.w     #$6, -$7eac(a6)
000ea6: 6012         bra.b      $eba
000ea8: 0c440101     cmpi.w     #$101, d4
000eac: 67ca         beq.b      $e78
000eae: 0c440102     cmpi.w     #$102, d4
000eb2: 67ec         beq.b      $ea0
000eb4: 0c440103     cmpi.w     #$103, d4
000eb8: 67e6         beq.b      $ea0
000eba: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
000ec0: 4e5d         unlk       a5
000ec2: 4e75         rts        
000ec4: 4e550000     link.w     a5, #$0
000ec8: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
000ecc: 2800         move.l     d0, d4
000ece: 4a84         tst.l      d4
000ed0: 6c12         bge.b      $ee4
000ed2: 7202         moveq      #$2, d1
000ed4: 6100010a     bsr.w      $fe0
000ed8: 6100193a     bsr.w      $2814
000edc: 2a00         move.l     d0, d5
000ede: 6c06         bge.b      $ee6
000ee0: 7000         moveq      #$0, d0
000ee2: 6052         bra.b      $f36
000ee4: 2a04         move.l     d4, d5
000ee6: 302e8154     move.w     -$7eac(a6), d0
000eea: 48c0         ext.l      d0
000eec: 5480         addq.l     #$2, d0
000eee: 2f00         move.l     d0, -(a7)
000ef0: 41ee8154     lea.l      -$7eac(a6), a0
000ef4: 2208         move.l     a0, d1
000ef6: 2005         move.l     d5, d0
000ef8: 61002972     bsr.w      $386c
000efc: 588f         addq.l     #$4, a7
000efe: 322e8154     move.w     -$7eac(a6), d1
000f02: 48c1         ext.l      d1
000f04: 5481         addq.l     #$2, d1
000f06: b081         cmp.l      d1, d0
000f08: 6704         beq.b      $f0e
000f0a: 7c00         moveq      #$0, d6
000f0c: 6002         bra.b      $f10
000f0e: 7c01         moveq      #$1, d6
000f10: b885         cmp.l      d5, d4
000f12: 6720         beq.b      $f34
000f14: 2005         move.l     d5, d0
000f16: 61002968     bsr.w      $3880
000f1a: 4a80         tst.l      d0
000f1c: 6c16         bge.b      $f34
000f1e: 4878005a     pea.l      $5a.w
000f22: 720e         moveq      #$e, d1
000f24: 203c00000098 move.l     #$98, d0
000f2a: 61001760     bsr.w      $268c
000f2e: 588f         addq.l     #$4, a7
000f30: 61001780     bsr.w      $26b2
000f34: 1006         move.b     d6, d0
000f36: 4ced0172ffec movem.l    -$14(a5), d1/d4-d6/a0
000f3c: 4e5d         unlk       a5
000f3e: 4e75         rts        
000f40: 4e550000     link.w     a5, #$0
000f44: 48e7c080     movem.l    d0-d1/a0, -(a7)
000f48: 598f         subq.l     #$4, a7
000f4a: 6100fdc2     bsr.w      $d0e
000f4e: 4a2e8042     tst.b      -$7fbe(a6)
000f52: 6650         bne.b      $fa4
000f54: 7202         moveq      #$2, d1
000f56: 41ee81f8     lea.l      -$7e08(a6), a0
000f5a: 2008         move.l     a0, d0
000f5c: 6100fe02     bsr.w      $d60
000f60: 2e80         move.l     d0, (a7)
000f62: 7202         moveq      #$2, d1
000f64: b280         cmp.l      d0, d1
000f66: 6706         beq.b      $f6e
000f68: 48780050     pea.l      $50.w
000f6c: 601e         bra.b      $f8c
000f6e: 306e81f8     movea.w    -$7e08(a6), a0
000f72: 2208         move.l     a0, d1
000f74: 41ee81fa     lea.l      -$7e06(a6), a0
000f78: 2008         move.l     a0, d0
000f7a: 6100fde4     bsr.w      $d60
000f7e: 322e81f8     move.w     -$7e08(a6), d1
000f82: 48c1         ext.l      d1
000f84: b081         cmp.l      d1, d0
000f86: 671c         beq.b      $fa4
000f88: 48780051     pea.l      $51.w
000f8c: 720e         moveq      #$e, d1
000f8e: 203c00000098 move.l     #$98, d0
000f94: 610016f6     bsr.w      $268c
000f98: 588f         addq.l     #$4, a7
000f9a: 61001716     bsr.w      $26b2
000f9e: 1d7c00018042 move.b     #$1, -$7fbe(a6)
000fa4: 588f         addq.l     #$4, a7
000fa6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000fac: 4e5d         unlk       a5
000fae: 4e75         rts        
000fb0: 4e550000     link.w     a5, #$0
000fb4: 48e78000     movem.l    d0, -(a7)
000fb8: 302e81fc     move.w     -$7e04(a6), d0
000fbc: 4e5d         unlk       a5
000fbe: 4e75         rts        
000fc0: 4e550000     link.w     a5, #$0
000fc4: 48e78000     movem.l    d0, -(a7)
000fc8: 302e81fe     move.w     -$7e02(a6), d0
000fcc: 4e5d         unlk       a5
000fce: 4e75         rts        
000fd0: 4e550000     link.w     a5, #$0
000fd4: 48e78000     movem.l    d0, -(a7)
000fd8: 202e8200     move.l     -$7e00(a6), d0
000fdc: 4e5d         unlk       a5
000fde: 4e75         rts        
000fe0: 4e550000     link.w     a5, #$0
000fe4: 48e78080     movem.l    d0/a0, -(a7)
000fe8: 41ee8200     lea.l      -$7e00(a6), a0
000fec: 2008         move.l     a0, d0
000fee: 4ced0100fffc movem.l    -$4(a5), a0
000ff4: 4e5d         unlk       a5
000ff6: 4e75         rts        
000ff8: 4e550000     link.w     a5, #$0
000ffc: 48e78080     movem.l    d0/a0, -(a7)
001000: 41ee8200     lea.l      -$7e00(a6), a0
001004: 2008         move.l     a0, d0
001006: 4ced0100fffc movem.l    -$4(a5), a0
00100c: 4e5d         unlk       a5
00100e: 4e75         rts        
001010: 4e550000     link.w     a5, #$0
001014: 48e78080     movem.l    d0/a0, -(a7)
001018: 41ee8200     lea.l      -$7e00(a6), a0
00101c: 2008         move.l     a0, d0
00101e: 4ced0100fffc movem.l    -$4(a5), a0
001024: 4e5d         unlk       a5
001026: 4e75         rts        
001028: 4e550000     link.w     a5, #$0
00102c: 48e78000     movem.l    d0, -(a7)
001030: 426e81f8     clr.w      -$7e08(a6)
001034: 426e81fc     clr.w      -$7e04(a6)
001038: 426e81fe     clr.w      -$7e02(a6)
00103c: 4e5d         unlk       a5
00103e: 4e75         rts        
001040: 4e550000     link.w     a5, #$0
001044: 48e7c000     movem.l    d0-d1, -(a7)
001048: 598f         subq.l     #$4, a7
00104a: 6100fa14     bsr.w      $a60
00104e: 202f0004     move.l     $4(a7), d0
001052: 61000a80     bsr.w      $1ad4
001056: 6010         bra.b      $1068
001058: 2017         move.l     (a7), d0
00105a: 610006b4     bsr.w      $1710
00105e: 2217         move.l     (a7), d1
001060: 202f0004     move.l     $4(a7), d0
001064: 61000a94     bsr.w      $1afa
001068: 2e80         move.l     d0, (a7)
00106a: 70ff         moveq      #$ff, d0
00106c: b097         cmp.l      (a7), d0
00106e: 66e8         bne.b      $1058
001070: 588f         addq.l     #$4, a7
001072: 4ced0002fffc movem.l    -$4(a5), d1
001078: 4e5d         unlk       a5
00107a: 4e75         rts        
00107c: 4e550000     link.w     a5, #$0
001080: 48e7c000     movem.l    d0-d1, -(a7)
001084: 598f         subq.l     #$4, a7
001086: 6100fa3e     bsr.w      $ac6
00108a: 202f0004     move.l     $4(a7), d0
00108e: 61000a44     bsr.w      $1ad4
001092: 6010         bra.b      $10a4
001094: 2017         move.l     (a7), d0
001096: 610006ca     bsr.w      $1762
00109a: 2217         move.l     (a7), d1
00109c: 202f0004     move.l     $4(a7), d0
0010a0: 61000a58     bsr.w      $1afa
0010a4: 2e80         move.l     d0, (a7)
0010a6: 70ff         moveq      #$ff, d0
0010a8: b097         cmp.l      (a7), d0
0010aa: 66e8         bne.b      $1094
0010ac: 588f         addq.l     #$4, a7
0010ae: 4ced0002fffc movem.l    -$4(a5), d1
0010b4: 4e5d         unlk       a5
0010b6: 4e75         rts        
0010b8: 4e550000     link.w     a5, #$0
0010bc: 48e78000     movem.l    d0, -(a7)
0010c0: 7001         moveq      #$1, d0
0010c2: 4e5d         unlk       a5
0010c4: 4e75         rts        
0010c6: 4e550000     link.w     a5, #$0
0010ca: 48e78000     movem.l    d0, -(a7)
0010ce: 7001         moveq      #$1, d0
0010d0: 4e5d         unlk       a5
0010d2: 4e75         rts        
0010d4: 4e550000     link.w     a5, #$0
0010d8: 48e7c000     movem.l    d0-d1, -(a7)
0010dc: 223c00002033 move.l     #$2033, d1
0010e2: 7005         moveq      #$5, d0
0010e4: 6100f93a     bsr.w      $a20
0010e8: 61001a52     bsr.w      $2b3c
0010ec: 4ced0002fffc movem.l    -$4(a5), d1
0010f2: 4e5d         unlk       a5
0010f4: 4e75         rts        
0010f6: 4e550000     link.w     a5, #$0
0010fa: 48e7c000     movem.l    d0-d1, -(a7)
0010fe: 223c00002038 move.l     #$2038, d1
001104: 7005         moveq      #$5, d0
001106: 6100f918     bsr.w      $a20
00110a: 61001a30     bsr.w      $2b3c
00110e: 4ced0002fffc movem.l    -$4(a5), d1
001114: 4e5d         unlk       a5
001116: 4e75         rts        
001118: 4e550000     link.w     a5, #$0
00111c: 48e78000     movem.l    d0, -(a7)
001120: 61b2         bsr.b      $10d4
001122: 426e879a     clr.w      -$7866(a6)
001126: 3d7c0003879c move.w     #$3, -$7864(a6)
00112c: 4e5d         unlk       a5
00112e: 4e75         rts        
001130: 4e550000     link.w     a5, #$0
001134: 48e7c000     movem.l    d0-d1, -(a7)
001138: 6100f152     bsr.w      $28c
00113c: 4a00         tst.b      d0
00113e: 6620         bne.b      $1160
001140: 2017         move.l     (a7), d0
001142: 6100149c     bsr.w      $25e0
001146: 4a80         tst.l      d0
001148: 6c16         bge.b      $1160
00114a: 48780047     pea.l      $47.w
00114e: 720e         moveq      #$e, d1
001150: 203c00000098 move.l     #$98, d0
001156: 61001534     bsr.w      $268c
00115a: 588f         addq.l     #$4, a7
00115c: 61001554     bsr.w      $26b2
001160: 4ced0002fffc movem.l    -$4(a5), d1
001166: 4e5d         unlk       a5
001168: 4e75         rts        
00116a: 4e550000     link.w     a5, #$0
00116e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001172: 598f         subq.l     #$4, a7
001174: 206f0004     movea.l    $4(a7), a0
001178: 4a280002     tst.b      $2(a0)
00117c: 67000068     beq.w      $11e6
001180: 0c6e0003879a cmpi.w     #$3, -$7866(a6)
001186: 671e         beq.b      $11a6
001188: 0c6e0004879a cmpi.w     #$4, -$7866(a6)
00118e: 6716         beq.b      $11a6
001190: 48780048     pea.l      $48.w
001194: 720e         moveq      #$e, d1
001196: 203c00000098 move.l     #$98, d0
00119c: 610014ee     bsr.w      $268c
0011a0: 588f         addq.l     #$4, a7
0011a2: 6100150e     bsr.w      $26b2
0011a6: 4a2e879e     tst.b      -$7862(a6)
0011aa: 6616         bne.b      $11c2
0011ac: 48780049     pea.l      $49.w
0011b0: 720e         moveq      #$e, d1
0011b2: 203c00000098 move.l     #$98, d0
0011b8: 610014d2     bsr.w      $268c
0011bc: 588f         addq.l     #$4, a7
0011be: 610014f2     bsr.w      $26b2
0011c2: 422e879e     clr.b      -$7862(a6)
0011c6: 206f0004     movea.l    $4(a7), a0
0011ca: 3d50879c     move.w     (a0), -$7864(a6)
0011ce: 41ee879a     lea.l      -$7866(a6), a0
0011d2: 2008         move.l     a0, d0
0011d4: 6100ff5a     bsr.w      $1130
0011d8: 6100f0b2     bsr.w      $28c
0011dc: 4a00         tst.b      d0
0011de: 673e         beq.b      $121e
0011e0: 6100ff14     bsr.w      $10f6
0011e4: 6038         bra.b      $121e
0011e6: 0c6e0003879a cmpi.w     #$3, -$7866(a6)
0011ec: 6708         beq.b      $11f6
0011ee: 0c6e0004879a cmpi.w     #$4, -$7866(a6)
0011f4: 6628         bne.b      $121e
0011f6: 206f0004     movea.l    $4(a7), a0
0011fa: 302e879c     move.w     -$7864(a6), d0
0011fe: b050         cmp.w      (a0), d0
001200: 671c         beq.b      $121e
001202: 206f0004     movea.l    $4(a7), a0
001206: 3d50879c     move.w     (a0), -$7864(a6)
00120a: 3ebc0007     move.w     #$7, (a7)
00120e: 206f0004     movea.l    $4(a7), a0
001212: 3f500002     move.w     (a0), $2(a7)
001216: 41d7         lea.l      (a7), a0
001218: 2008         move.l     a0, d0
00121a: 6100ff14     bsr.w      $1130
00121e: 588f         addq.l     #$4, a7
001220: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001226: 4e5d         unlk       a5
001228: 4e75         rts        
00122a: 4e550000     link.w     a5, #$0
00122e: 48e78000     movem.l    d0, -(a7)
001232: 602e         bra.b      $1262
001234: 302e879a     move.w     -$7866(a6), d0
001238: 0c40000a     cmpi.w     #$a, d0
00123c: 624a         bhi.b      $1288
00123e: 303b0206     move.w     $1246(pc, d0.w), d0
001242: 4efb0002     jmp        $1246(pc, d0.w)
001246: 00180018     ori.b      #$18, (a0)+
00124a: 00180042     ori.b      #$42, (a0)+
00124e: 00420042     ori.w      #$42, d2
001252: 00420018     ori.w      #$18, d2
001256: 00180042     ori.b      #$42, (a0)+
00125a: 0018602a     ori.b      #$2a, (a0)+
00125e: 7001         moveq      #$1, d0
001260: 6028         bra.b      $128a
001262: 302f0002     move.w     $2(a7), d0
001266: 5340         subq.w     #$1, d0
001268: 0c400008     cmpi.w     #$8, d0
00126c: 621a         bhi.b      $1288
00126e: 303b0206     move.w     $1276(pc, d0.w), d0
001272: 4efb0002     jmp        $1276(pc, d0.w)
001276: ffbe         dc.w       $ffbe
001278: ffbe         dc.w       $ffbe
00127a: ffbe         dc.w       $ffbe
00127c: ffbe         dc.w       $ffbe
00127e: ffbe         dc.w       $ffbe
001280: ffbe         dc.w       $ffbe
001282: ffe8         dc.w       $ffe8
001284: ffbe         dc.w       $ffbe
001286: ffe8         dc.w       $ffe8
001288: 7000         moveq      #$0, d0
00128a: 4e5d         unlk       a5
00128c: 4e75         rts        
00128e: 4e550000     link.w     a5, #$0
001292: 48e7c080     movem.l    d0-d1/a0, -(a7)
001296: 2057         movea.l    (a7), a0
001298: 3050         movea.w    (a0), a0
00129a: 2008         move.l     a0, d0
00129c: 618c         bsr.b      $122a
00129e: 4a00         tst.b      d0
0012a0: 66000136     bne.w      $13d8
0012a4: 4878004a     pea.l      $4a.w
0012a8: 720e         moveq      #$e, d1
0012aa: 203c00000098 move.l     #$98, d0
0012b0: 610013da     bsr.w      $268c
0012b4: 588f         addq.l     #$4, a7
0012b6: 610013fa     bsr.w      $26b2
0012ba: 6000011c     bra.w      $13d8
0012be: 3d7c0003879a move.w     #$3, -$7866(a6)
0012c4: 42a7         clr.l      -(a7)
0012c6: 202f0004     move.l     $4(a7), d0
0012ca: 5880         addq.l     #$4, d0
0012cc: 2200         move.l     d0, d1
0012ce: 206f0004     movea.l    $4(a7), a0
0012d2: 30680002     movea.w    $2(a0), a0
0012d6: 2008         move.l     a0, d0
0012d8: 610008d4     bsr.w      $1bae
0012dc: 588f         addq.l     #$4, a7
0012de: 7001         moveq      #$1, d0
0012e0: 6100f73e     bsr.w      $a20
0012e4: 6100047c     bsr.w      $1762
0012e8: 6032         bra.b      $131c
0012ea: 3d7c0004879a move.w     #$4, -$7866(a6)
0012f0: 202f0004     move.l     $4(a7), d0
0012f4: 6100fd4a     bsr.w      $1040
0012f8: 48780001     pea.l      $1.w
0012fc: 202f0004     move.l     $4(a7), d0
001300: 5880         addq.l     #$4, d0
001302: 2200         move.l     d0, d1
001304: 206f0004     movea.l    $4(a7), a0
001308: 30680002     movea.w    $2(a0), a0
00130c: 2008         move.l     a0, d0
00130e: 6100089e     bsr.w      $1bae
001312: 588f         addq.l     #$4, a7
001314: 202f0004     move.l     $4(a7), d0
001318: 6100fd62     bsr.w      $107c
00131c: 1d7c0001879e move.b     #$1, -$7862(a6)
001322: 600000da     bra.w      $13fe
001326: 3d7c0006879a move.w     #$6, -$7866(a6)
00132c: 6064         bra.b      $1392
00132e: 610008fc     bsr.w      $1c2c
001332: 3d7c0009879a move.w     #$9, -$7866(a6)
001338: 3d7c0003879c move.w     #$3, -$7864(a6)
00133e: 41ee879a     lea.l      -$7866(a6), a0
001342: 2008         move.l     a0, d0
001344: 6100fdea     bsr.w      $1130
001348: 6100ef42     bsr.w      $28c
00134c: 4a00         tst.b      d0
00134e: 670000ae     beq.w      $13fe
001352: 6100fdc4     bsr.w      $1118
001356: 600000a6     bra.w      $13fe
00135a: 6100fd78     bsr.w      $10d4
00135e: 426e879a     clr.w      -$7866(a6)
001362: 3d7c0003879c move.w     #$3, -$7864(a6)
001368: 60000094     bra.w      $13fe
00136c: 302e879a     move.w     -$7866(a6), d0
001370: 0c4000ff     cmpi.w     #$ff, d0
001374: 62e4         bhi.b      $135a
001376: 0c000003     cmpi.b     #$3, d0
00137a: 67b2         beq.b      $132e
00137c: 0c000004     cmpi.b     #$4, d0
001380: 67ac         beq.b      $132e
001382: 0c000009     cmpi.b     #$9, d0
001386: 66d2         bne.b      $135a
001388: 60000074     bra.w      $13fe
00138c: 3d7c0005879a move.w     #$5, -$7866(a6)
001392: 3d7c0003879c move.w     #$3, -$7864(a6)
001398: 6032         bra.b      $13cc
00139a: 6100fd38     bsr.w      $10d4
00139e: 3d7c0001879a move.w     #$1, -$7866(a6)
0013a4: 60bc         bra.b      $1362
0013a6: 6100fd2c     bsr.w      $10d4
0013aa: 3d7c0002879a move.w     #$2, -$7866(a6)
0013b0: 60b0         bra.b      $1362
0013b2: 6100fd20     bsr.w      $10d4
0013b6: 3d7c0008879a move.w     #$8, -$7866(a6)
0013bc: 60a4         bra.b      $1362
0013be: 0c6e0007879a cmpi.w     #$7, -$7866(a6)
0013c4: 6606         bne.b      $13cc
0013c6: 3d7c000a879a move.w     #$a, -$7866(a6)
0013cc: 41ee879a     lea.l      -$7866(a6), a0
0013d0: 2008         move.l     a0, d0
0013d2: 6100fd5c     bsr.w      $1130
0013d6: 6026         bra.b      $13fe
0013d8: 2057         movea.l    (a7), a0
0013da: 3010         move.w     (a0), d0
0013dc: 5340         subq.w     #$1, d0
0013de: 0c400008     cmpi.w     #$8, d0
0013e2: 621a         bhi.b      $13fe
0013e4: 303b0206     move.w     $13ec(pc, d0.w), d0
0013e8: 4efb0002     jmp        $13ec(pc, d0.w)
0013ec: fed2fefeffa0 fbf.l      $feff138e
0013f2: ff3a         dc.w       $ff3a
0013f4: ffba         dc.w       $ffba
0013f6: ffae         dc.w       $ffae
0013f8: ff80         dc.w       $ff80
0013fa: ffd2         dc.w       $ffd2
0013fc: ffc6         dc.w       $ffc6
0013fe: 4ced0100fffc movem.l    -$4(a5), a0
001404: 4e5d         unlk       a5
001406: 4e75         rts        
001408: 4e550000     link.w     a5, #$0
00140c: 48e7cff8     movem.l    d0-d1/d4-d7/a0-a4, -(a7)
001410: 2440         movea.l    d0, a2
001412: 2801         move.l     d1, d4
001414: 2a2f0034     move.l     $34(a7), d5
001418: 266f0038     movea.l    $38(a7), a3
00141c: 286f003c     movea.l    $3c(a7), a4
001420: 2c2f0040     move.l     $40(a7), d6
001424: 4feffeea     lea.l      -$116(a7), a7
001428: 70ff         moveq      #$ff, d0
00142a: 2f400112     move.l     d0, $112(a7)
00142e: 70ff         moveq      #$ff, d0
001430: 2f40010e     move.l     d0, $10e(a7)
001434: 42af010a     clr.l      $10a(a7)
001438: 7e00         moveq      #$0, d7
00143a: 6018         bra.b      $1454
00143c: 7036         moveq      #$36, d0
00143e: 4c070000     mulu.l     d7, d0
001442: 41ee87a2     lea.l      -$785e(a6), a0
001446: b8b00800     cmp.l      (a0, d0.l), d4
00144a: 6606         bne.b      $1452
00144c: 2f47010a     move.l     d7, $10a(a7)
001450: 6008         bra.b      $145a
001452: 5287         addq.l     #$1, d7
001454: 7006         moveq      #$6, d0
001456: b087         cmp.l      d7, d0
001458: 6ee2         bgt.b      $143c
00145a: 7036         moveq      #$36, d0
00145c: 4c2f0000010a mulu.l     $10a(a7), d0
001462: 41ee87a2     lea.l      -$785e(a6), a0
001466: 7236         moveq      #$36, d1
001468: 4c2f1001010a mulu.l     $10a(a7), d1
00146e: 43ee87a2     lea.l      -$785e(a6), a1
001472: 23b00804180a move.l     $4(a0, d0.l), $a(a1, d1.l)
001478: 7004         moveq      #$4, d0
00147a: b084         cmp.l      d4, d0
00147c: 660000b4     bne.w      $1532
001480: 4853         pea.l      (a3)
001482: 41fa0345     lea.l      $17c9(pc), a0
001486: 2208         move.l     a0, d1
001488: 41ef008a     lea.l      $8a(a7), a0
00148c: 2008         move.l     a0, d0
00148e: 61002380     bsr.w      $3810
001492: 588f         addq.l     #$4, a7
001494: 7036         moveq      #$36, d0
001496: 4c2f0000010a mulu.l     $10a(a7), d0
00149c: 41ee87a2     lea.l      -$785e(a6), a0
0014a0: 43ef0086     lea.l      $86(a7), a1
0014a4: 2189080e     move.l     a1, $e(a0, d0.l)
0014a8: 4854         pea.l      (a4)
0014aa: 41fa0322     lea.l      $17ce(pc), a0
0014ae: 2208         move.l     a0, d1
0014b0: 41ef000a     lea.l      $a(a7), a0
0014b4: 2008         move.l     a0, d0
0014b6: 61002358     bsr.w      $3810
0014ba: 588f         addq.l     #$4, a7
0014bc: 7036         moveq      #$36, d0
0014be: 4c2f0000010a mulu.l     $10a(a7), d0
0014c4: 41ee87a2     lea.l      -$785e(a6), a0
0014c8: 43ef0006     lea.l      $6(a7), a1
0014cc: 21890812     move.l     a1, $12(a0, d0.l)
0014d0: 48c5         ext.l      d5
0014d2: 2f05         move.l     d5, -(a7)
0014d4: 41fa02fd     lea.l      $17d3(pc), a0
0014d8: 2208         move.l     a0, d1
0014da: 41ef0004     lea.l      $4(a7), a0
0014de: 2008         move.l     a0, d0
0014e0: 6100232e     bsr.w      $3810
0014e4: 588f         addq.l     #$4, a7
0014e6: 7036         moveq      #$36, d0
0014e8: 4c2f0000010a mulu.l     $10a(a7), d0
0014ee: 41ee87a2     lea.l      -$785e(a6), a0
0014f2: 43d7         lea.l      (a7), a1
0014f4: 21890816     move.l     a1, $16(a0, d0.l)
0014f8: 7e01         moveq      #$1, d7
0014fa: 601e         bra.b      $151a
0014fc: 7036         moveq      #$36, d0
0014fe: 4c2f0000010a mulu.l     $10a(a7), d0
001504: 41ee87a2     lea.l      -$785e(a6), a0
001508: 2207         move.l     d7, d1
00150a: 5681         addq.l     #$3, d1
00150c: d1c0         adda.l     d0, a0
00150e: 226f015e     movea.l    $15e(a7), a1
001512: 21b17c001c0a move.l     (a1, d7.l * 4), $a(a0, d1.l)
001518: 5287         addq.l     #$1, d7
00151a: beaf015a     cmp.l      $15a(a7), d7
00151e: 6ddc         blt.b      $14fc
001520: 7036         moveq      #$36, d0
001522: 4c2f0000010a mulu.l     $10a(a7), d0
001528: 41ee87a2     lea.l      -$785e(a6), a0
00152c: 2207         move.l     d7, d1
00152e: 5681         addq.l     #$3, d1
001530: 6034         bra.b      $1566
001532: 7e01         moveq      #$1, d7
001534: 601a         bra.b      $1550
001536: 7036         moveq      #$36, d0
001538: 4c2f0000010a mulu.l     $10a(a7), d0
00153e: 41ee87a2     lea.l      -$785e(a6), a0
001542: d1c0         adda.l     d0, a0
001544: 226f015e     movea.l    $15e(a7), a1
001548: 21b17c007c0a move.l     (a1, d7.l * 4), $a(a0, d7.l)
00154e: 5287         addq.l     #$1, d7
001550: beaf015a     cmp.l      $15a(a7), d7
001554: 6de0         blt.b      $1536
001556: 7036         moveq      #$36, d0
001558: 4c2f0000010a mulu.l     $10a(a7), d0
00155e: 41ee87a2     lea.l      -$785e(a6), a0
001562: 222f015a     move.l     $15a(a7), d1
001566: d1c0         adda.l     d0, a0
001568: 42b01c0a     clr.l      $a(a0, d1.l)
00156c: 2f3ca95acd82 move.l     #$a95acd82, -(a7)
001572: 48780003     pea.l      $3.w
001576: 7036         moveq      #$36, d0
001578: 4c2f00000112 mulu.l     $112(a7), d0
00157e: 41ee87a2     lea.l      -$785e(a6), a0
001582: 30700808     movea.w    $8(a0, d0.l), a0
001586: 2f08         move.l     a0, -(a7)
001588: 42a7         clr.l      -(a7)
00158a: 2f2e878e     move.l     -$7872(a6), -(a7)
00158e: 7036         moveq      #$36, d0
001590: 4c2f0000011e mulu.l     $11e(a7), d0
001596: 41ee87a2     lea.l      -$785e(a6), a0
00159a: 4870080a     pea.l      $a(a0, d0.l)
00159e: 7036         moveq      #$36, d0
0015a0: 4c2f00000122 mulu.l     $122(a7), d0
0015a6: 41ee87a2     lea.l      -$785e(a6), a0
0015aa: 22300804     move.l     $4(a0, d0.l), d1
0015ae: 41fb017000002a84 lea.l      $2a84(a16, invalid.w), a0
0015b6: 2008         move.l     a0, d0
0015b8: 61001796     bsr.w      $2d50
0015bc: 4fef0018     lea.l      $18(a7), a7
0015c0: 2f400112     move.l     d0, $112(a7)
0015c4: 202f0112     move.l     $112(a7), d0
0015c8: 6100035e     bsr.w      $1928
0015cc: 4a00         tst.b      d0
0015ce: 670000a2     beq.w      $1672
0015d2: 202f0112     move.l     $112(a7), d0
0015d6: 6100036e     bsr.w      $1946
0015da: 2f00         move.l     d0, -(a7)
0015dc: 48c5         ext.l      d5
0015de: 2205         move.l     d5, d1
0015e0: 200a         move.l     a2, d0
0015e2: 61000378     bsr.w      $195c
0015e6: 588f         addq.l     #$4, a7
0015e8: 4a00         tst.b      d0
0015ea: 66000086     bne.w      $1672
0015ee: 2006         move.l     d6, d0
0015f0: 61002400     bsr.w      $39f2
0015f4: 4a80         tst.l      d0
0015f6: 6f2a         ble.b      $1622
0015f8: 7202         moveq      #$2, d1
0015fa: 2006         move.l     d6, d0
0015fc: 61001216     bsr.w      $2814
001600: 2f40010e     move.l     d0, $10e(a7)
001604: 70ff         moveq      #$ff, d0
001606: b0af010e     cmp.l      $10e(a7), d0
00160a: 6616         bne.b      $1622
00160c: 4878003c     pea.l      $3c.w
001610: 720e         moveq      #$e, d1
001612: 203c00000098 move.l     #$98, d0
001618: 61001072     bsr.w      $268c
00161c: 588f         addq.l     #$4, a7
00161e: 61001092     bsr.w      $26b2
001622: 2f2f010e     move.l     $10e(a7), -(a7)
001626: 202f0116     move.l     $116(a7), d0
00162a: 6100031a     bsr.w      $1946
00162e: 2f00         move.l     d0, -(a7)
001630: 48c5         ext.l      d5
001632: 2205         move.l     d5, d1
001634: 200a         move.l     a2, d0
001636: 610001fc     bsr.w      $1834
00163a: 508f         addq.l     #$8, a7
00163c: 2440         movea.l    d0, a2
00163e: 61000a08     bsr.w      $2048
001642: 2f400106     move.l     d0, $106(a7)
001646: 0c8000002023 cmpi.l     #$2023, d0
00164c: 673a         beq.b      $1688
00164e: 202f0112     move.l     $112(a7), d0
001652: 610002f2     bsr.w      $1946
001656: 2f00         move.l     d0, -(a7)
001658: 48c5         ext.l      d5
00165a: 2205         move.l     d5, d1
00165c: 200a         move.l     a2, d0
00165e: 61000214     bsr.w      $1874
001662: 588f         addq.l     #$4, a7
001664: 2440         movea.l    d0, a2
001666: 70ff         moveq      #$ff, d0
001668: 2f400112     move.l     d0, $112(a7)
00166c: 4878003d     pea.l      $3d.w
001670: 6004         bra.b      $1676
001672: 4878003e     pea.l      $3e.w
001676: 720e         moveq      #$e, d1
001678: 203c00000098 move.l     #$98, d0
00167e: 6100100c     bsr.w      $268c
001682: 588f         addq.l     #$4, a7
001684: 6100102c     bsr.w      $26b2
001688: 202f0112     move.l     $112(a7), d0
00168c: 610002b8     bsr.w      $1946
001690: 4fef0116     lea.l      $116(a7), a7
001694: 4ced1ff0ffdc movem.l    -$24(a5), d4-d7/a0-a4
00169a: 4e5d         unlk       a5
00169c: 4e75         rts        
00169e: 4e550000     link.w     a5, #$0
0016a2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0016a6: 598f         subq.l     #$4, a7
0016a8: 223c0000202d move.l     #$202d, d1
0016ae: 202f0018     move.l     $18(a7), d0
0016b2: 61001488     bsr.w      $2b3c
0016b6: 4a80         tst.l      d0
0016b8: 6c06         bge.b      $16c0
0016ba: 4878003f     pea.l      $3f.w
0016be: 6030         bra.b      $16f0
0016c0: 61000986     bsr.w      $2048
0016c4: 2e80         move.l     d0, (a7)
0016c6: c0af0018     and.l      $18(a7), d0
0016ca: b0af0018     cmp.l      $18(a7), d0
0016ce: 661c         bne.b      $16ec
0016d0: 2f2f0018     move.l     $18(a7), -(a7)
0016d4: 306f000e     movea.w    $e(a7), a0
0016d8: 2208         move.l     a0, d1
0016da: 202f0008     move.l     $8(a7), d0
0016de: 61000194     bsr.w      $1874
0016e2: 588f         addq.l     #$4, a7
0016e4: 2f400004     move.l     d0, $4(a7)
0016e8: 7001         moveq      #$1, d0
0016ea: 6018         bra.b      $1704
0016ec: 48780040     pea.l      $40.w
0016f0: 720e         moveq      #$e, d1
0016f2: 203c00000098 move.l     #$98, d0
0016f8: 61000f92     bsr.w      $268c
0016fc: 588f         addq.l     #$4, a7
0016fe: 61000fb2     bsr.w      $26b2
001702: 7000         moveq      #$0, d0
001704: 588f         addq.l     #$4, a7
001706: 4ced0100fffc movem.l    -$4(a5), a0
00170c: 4e5d         unlk       a5
00170e: 4e75         rts        
001710: 4e550000     link.w     a5, #$0
001714: 48e7c000     movem.l    d0-d1, -(a7)
001718: 598f         subq.l     #$4, a7
00171a: 223c0000203f move.l     #$203f, d1
001720: 202f0004     move.l     $4(a7), d0
001724: 61001416     bsr.w      $2b3c
001728: 4a80         tst.l      d0
00172a: 6c06         bge.b      $1732
00172c: 48780041     pea.l      $41.w
001730: 6012         bra.b      $1744
001732: 61000914     bsr.w      $2048
001736: 2e80         move.l     d0, (a7)
001738: 0c8000002023 cmpi.l     #$2023, d0
00173e: 6716         beq.b      $1756
001740: 48780042     pea.l      $42.w
001744: 720e         moveq      #$e, d1
001746: 203c00000098 move.l     #$98, d0
00174c: 61000f3e     bsr.w      $268c
001750: 588f         addq.l     #$4, a7
001752: 61000f5e     bsr.w      $26b2
001756: 588f         addq.l     #$4, a7
001758: 4ced0002fffc movem.l    -$4(a5), d1
00175e: 4e5d         unlk       a5
001760: 4e75         rts        
001762: 4e550000     link.w     a5, #$0
001766: 48e7c000     movem.l    d0-d1, -(a7)
00176a: 598f         subq.l     #$4, a7
00176c: 223c00002040 move.l     #$2040, d1
001772: 202f0004     move.l     $4(a7), d0
001776: 610013c4     bsr.w      $2b3c
00177a: 4a80         tst.l      d0
00177c: 6c06         bge.b      $1784
00177e: 48780043     pea.l      $43.w
001782: 6012         bra.b      $1796
001784: 610008c2     bsr.w      $2048
001788: 2e80         move.l     d0, (a7)
00178a: 0c8000002023 cmpi.l     #$2023, d0
001790: 6716         beq.b      $17a8
001792: 48780044     pea.l      $44.w
001796: 720e         moveq      #$e, d1
001798: 203c00000098 move.l     #$98, d0
00179e: 61000eec     bsr.w      $268c
0017a2: 588f         addq.l     #$4, a7
0017a4: 61000f0c     bsr.w      $26b2
0017a8: 588f         addq.l     #$4, a7
0017aa: 4ced0002fffc movem.l    -$4(a5), d1
0017b0: 4e5d         unlk       a5
0017b2: 4e75         rts        
0017b4: 7062         moveq      #$62, d0
0017b6: 7000         moveq      #$0, d0
0017b8: 6462         bcc.b      $181c
0017ba: 7061         moveq      #$61, d0
0017bc: 00646271     ori.w      #$6271, -(a4)
0017c0: 00646271     ori.w      #$6271, -(a4)
0017c4: 00646264     ori.w      #$6264, -(a4)
0017c8: 002d71257300 ori.b      #$25, $7300(a5)
0017ce: 2d722573002d612564004e550000 move.l     ([$2d6125, a2], $64004e55), $0(a6)
0017dc: 48e7c020     movem.l    d0-d1/a2, -(a7)
0017e0: 203c000000cc move.l     #$cc, d0
0017e6: 610020dc     bsr.w      $38c4
0017ea: 2440         movea.l    d0, a2
0017ec: 4a80         tst.l      d0
0017ee: 6618         bne.b      $1808
0017f0: 48780028     pea.l      $28.w
0017f4: 720e         moveq      #$e, d1
0017f6: 203c00000098 move.l     #$98, d0
0017fc: 61000e8e     bsr.w      $268c
001800: 588f         addq.l     #$4, a7
001802: 61000eae     bsr.w      $26b2
001806: 6002         bra.b      $180a
001808: 4292         clr.l      (a2)
00180a: 200a         move.l     a2, d0
00180c: 4ced0402fff8 movem.l    -$8(a5), d1/a2
001812: 4e5d         unlk       a5
001814: 4e75         rts        
001816: 4e550000     link.w     a5, #$0
00181a: 48e78020     movem.l    d0/a2, -(a7)
00181e: 2440         movea.l    d0, a2
001820: 4a92         tst.l      (a2)
001822: 6604         bne.b      $1828
001824: 7001         moveq      #$1, d0
001826: 6002         bra.b      $182a
001828: 7000         moveq      #$0, d0
00182a: 4ced0400fffc movem.l    -$4(a5), a2
001830: 4e5d         unlk       a5
001832: 4e75         rts        
001834: 4e550000     link.w     a5, #$0
001838: 48e7ce20     movem.l    d0-d1/d4-d6/a2, -(a7)
00183c: 2440         movea.l    d0, a2
00183e: 2801         move.l     d1, d4
001840: 2a2f0020     move.l     $20(a7), d5
001844: 2c2f0024     move.l     $24(a7), d6
001848: 700a         moveq      #$a, d0
00184a: 4c120000     mulu.l     (a2), d0
00184e: 35840804     move.w     d4, $4(a2, d0.l)
001852: 700a         moveq      #$a, d0
001854: 4c120000     mulu.l     (a2), d0
001858: 25850806     move.l     d5, $6(a2, d0.l)
00185c: 700a         moveq      #$a, d0
00185e: 4c120000     mulu.l     (a2), d0
001862: 2586080a     move.l     d6, $a(a2, d0.l)
001866: 5292         addq.l     #$1, (a2)
001868: 200a         move.l     a2, d0
00186a: 4ced0470fff0 movem.l    -$10(a5), d4-d6/a2
001870: 4e5d         unlk       a5
001872: 4e75         rts        
001874: 4e550000     link.w     a5, #$0
001878: 48e7cfe0     movem.l    d0-d1/d4-d7/a0-a2, -(a7)
00187c: 2440         movea.l    d0, a2
00187e: 2801         move.l     d1, d4
001880: 2a2f002c     move.l     $2c(a7), d5
001884: 7eff         moveq      #$ff, d7
001886: 7c00         moveq      #$0, d6
001888: 6012         bra.b      $189c
00188a: 700a         moveq      #$a, d0
00188c: 4c060000     mulu.l     d6, d0
001890: bab20806     cmp.l      $6(a2, d0.l), d5
001894: 6604         bne.b      $189a
001896: 2e06         move.l     d6, d7
001898: 6006         bra.b      $18a0
00189a: 5286         addq.l     #$1, d6
00189c: bc92         cmp.l      (a2), d6
00189e: 6dea         blt.b      $188a
0018a0: 4a87         tst.l      d7
0018a2: 6c18         bge.b      $18bc
0018a4: 48780029     pea.l      $29.w
0018a8: 720e         moveq      #$e, d1
0018aa: 203c00000098 move.l     #$98, d0
0018b0: 61000dda     bsr.w      $268c
0018b4: 588f         addq.l     #$4, a7
0018b6: 61000dfa     bsr.w      $26b2
0018ba: 6024         bra.b      $18e0
0018bc: 5392         subq.l     #$1, (a2)
0018be: 700a         moveq      #$a, d0
0018c0: 4c060000     mulu.l     d6, d0
0018c4: 720a         moveq      #$a, d1
0018c6: 4c121001     mulu.l     (a2), d1
0018ca: 41f21804     lea.l      $4(a2, d1.l), a0
0018ce: 43f20804     lea.l      $4(a2, d0.l), a1
0018d2: 2290         move.l     (a0), (a1)
0018d4: 236800040004 move.l     $4(a0), $4(a1)
0018da: 336800080008 move.w     $8(a0), $8(a1)
0018e0: 200a         move.l     a2, d0
0018e2: 4ced07f0ffe4 movem.l    -$1c(a5), d4-d7/a0-a2
0018e8: 4e5d         unlk       a5
0018ea: 4e75         rts        
0018ec: 4e550000     link.w     a5, #$0
0018f0: 48e78800     movem.l    d0/d4, -(a7)
0018f4: 2800         move.l     d0, d4
0018f6: 0c440002     cmpi.w     #$2, d4
0018fa: 6706         beq.b      $1902
0018fc: 0c440001     cmpi.w     #$1, d4
001900: 6604         bne.b      $1906
001902: 7001         moveq      #$1, d0
001904: 6002         bra.b      $1908
001906: 7000         moveq      #$0, d0
001908: 4ced0010fffc movem.l    -$4(a5), d4
00190e: 4e5d         unlk       a5
001910: 4e75         rts        
001912: 4e550000     link.w     a5, #$0
001916: 48e78800     movem.l    d0/d4, -(a7)
00191a: 2800         move.l     d0, d4
00191c: 3004         move.w     d4, d0
00191e: 4ced0010fffc movem.l    -$4(a5), d4
001924: 4e5d         unlk       a5
001926: 4e75         rts        
001928: 4e550000     link.w     a5, #$0
00192c: 48e78800     movem.l    d0/d4, -(a7)
001930: 2800         move.l     d0, d4
001932: 4a84         tst.l      d4
001934: 6f04         ble.b      $193a
001936: 7001         moveq      #$1, d0
001938: 6002         bra.b      $193c
00193a: 7000         moveq      #$0, d0
00193c: 4ced0010fffc movem.l    -$4(a5), d4
001942: 4e5d         unlk       a5
001944: 4e75         rts        
001946: 4e550000     link.w     a5, #$0
00194a: 48e78800     movem.l    d0/d4, -(a7)
00194e: 2800         move.l     d0, d4
001950: 2004         move.l     d4, d0
001952: 4ced0010fffc movem.l    -$4(a5), d4
001958: 4e5d         unlk       a5
00195a: 4e75         rts        
00195c: 4e550000     link.w     a5, #$0
001960: 48e7cf20     movem.l    d0-d1/d4-d7/a2, -(a7)
001964: 2440         movea.l    d0, a2
001966: 2801         move.l     d1, d4
001968: 2a2f0024     move.l     $24(a7), d5
00196c: 7eff         moveq      #$ff, d7
00196e: 7c00         moveq      #$0, d6
001970: 6016         bra.b      $1988
001972: 700a         moveq      #$a, d0
001974: 4c060000     mulu.l     d6, d0
001978: bab20806     cmp.l      $6(a2, d0.l), d5
00197c: 6604         bne.b      $1982
00197e: 2e06         move.l     d6, d7
001980: 600a         bra.b      $198c
001982: 2006         move.l     d6, d0
001984: 5280         addq.l     #$1, d0
001986: 2c00         move.l     d0, d6
001988: bc92         cmp.l      (a2), d6
00198a: 6de6         blt.b      $1972
00198c: 4a87         tst.l      d7
00198e: 6c04         bge.b      $1994
001990: 7000         moveq      #$0, d0
001992: 6002         bra.b      $1996
001994: 7001         moveq      #$1, d0
001996: 4ced04f0ffec movem.l    -$14(a5), d4-d7/a2
00199c: 4e5d         unlk       a5
00199e: 4e75         rts        
0019a0: 4e550000     link.w     a5, #$0
0019a4: 48e7ce20     movem.l    d0-d1/d4-d6/a2, -(a7)
0019a8: 2440         movea.l    d0, a2
0019aa: 2801         move.l     d1, d4
0019ac: 7cff         moveq      #$ff, d6
0019ae: 7a00         moveq      #$0, d5
0019b0: 6016         bra.b      $19c8
0019b2: 700a         moveq      #$a, d0
0019b4: 4c050000     mulu.l     d5, d0
0019b8: b8b20806     cmp.l      $6(a2, d0.l), d4
0019bc: 6604         bne.b      $19c2
0019be: 2c05         move.l     d5, d6
0019c0: 600a         bra.b      $19cc
0019c2: 2005         move.l     d5, d0
0019c4: 5280         addq.l     #$1, d0
0019c6: 2a00         move.l     d0, d5
0019c8: ba92         cmp.l      (a2), d5
0019ca: 6de6         blt.b      $19b2
0019cc: 4a86         tst.l      d6
0019ce: 6c1a         bge.b      $19ea
0019d0: 4878002a     pea.l      $2a.w
0019d4: 720e         moveq      #$e, d1
0019d6: 203c00000098 move.l     #$98, d0
0019dc: 61000cae     bsr.w      $268c
0019e0: 588f         addq.l     #$4, a7
0019e2: 61000cce     bsr.w      $26b2
0019e6: 7000         moveq      #$0, d0
0019e8: 600a         bra.b      $19f4
0019ea: 700a         moveq      #$a, d0
0019ec: 4c060000     mulu.l     d6, d0
0019f0: 30320804     move.w     $4(a2, d0.l), d0
0019f4: 4ced0470fff0 movem.l    -$10(a5), d4-d6/a2
0019fa: 4e5d         unlk       a5
0019fc: 4e75         rts        
0019fe: 4e550000     link.w     a5, #$0
001a02: 48e7ce20     movem.l    d0-d1/d4-d6/a2, -(a7)
001a06: 2440         movea.l    d0, a2
001a08: 2801         move.l     d1, d4
001a0a: 7cff         moveq      #$ff, d6
001a0c: 7a00         moveq      #$0, d5
001a0e: 6016         bra.b      $1a26
001a10: 700a         moveq      #$a, d0
001a12: 4c050000     mulu.l     d5, d0
001a16: b8b20806     cmp.l      $6(a2, d0.l), d4
001a1a: 6604         bne.b      $1a20
001a1c: 2c05         move.l     d5, d6
001a1e: 600a         bra.b      $1a2a
001a20: 2005         move.l     d5, d0
001a22: 5280         addq.l     #$1, d0
001a24: 2a00         move.l     d0, d5
001a26: ba92         cmp.l      (a2), d5
001a28: 6de6         blt.b      $1a10
001a2a: 4a86         tst.l      d6
001a2c: 6c1a         bge.b      $1a48
001a2e: 4878002b     pea.l      $2b.w
001a32: 720e         moveq      #$e, d1
001a34: 203c00000098 move.l     #$98, d0
001a3a: 61000c50     bsr.w      $268c
001a3e: 588f         addq.l     #$4, a7
001a40: 61000c70     bsr.w      $26b2
001a44: 7000         moveq      #$0, d0
001a46: 600a         bra.b      $1a52
001a48: 700a         moveq      #$a, d0
001a4a: 4c060000     mulu.l     d6, d0
001a4e: 2032080a     move.l     $a(a2, d0.l), d0
001a52: 4ced0470fff0 movem.l    -$10(a5), d4-d6/a2
001a58: 4e5d         unlk       a5
001a5a: 4e75         rts        
001a5c: 4e550000     link.w     a5, #$0
001a60: 48e78020     movem.l    d0/a2, -(a7)
001a64: 2440         movea.l    d0, a2
001a66: 2012         move.l     (a2), d0
001a68: 4ced0400fffc movem.l    -$4(a5), a2
001a6e: 4e5d         unlk       a5
001a70: 4e75         rts        
001a72: 4e550000     link.w     a5, #$0
001a76: 48e7c020     movem.l    d0-d1/a2, -(a7)
001a7a: 2440         movea.l    d0, a2
001a7c: 598f         subq.l     #$4, a7
001a7e: 4297         clr.l      (a7)
001a80: 603a         bra.b      $1abc
001a82: 700a         moveq      #$a, d0
001a84: 4c170000     mulu.l     (a7), d0
001a88: 4ab2080a     tst.l      $a(a2, d0.l)
001a8c: 6f28         ble.b      $1ab6
001a8e: 700a         moveq      #$a, d0
001a90: 4c170000     mulu.l     (a7), d0
001a94: 2032080a     move.l     $a(a2, d0.l), d0
001a98: 61001de6     bsr.w      $3880
001a9c: 4a80         tst.l      d0
001a9e: 6c16         bge.b      $1ab6
001aa0: 4878002c     pea.l      $2c.w
001aa4: 720e         moveq      #$e, d1
001aa6: 203c00000098 move.l     #$98, d0
001aac: 61000bde     bsr.w      $268c
001ab0: 588f         addq.l     #$4, a7
001ab2: 61000bfe     bsr.w      $26b2
001ab6: 2017         move.l     (a7), d0
001ab8: 5280         addq.l     #$1, d0
001aba: 2e80         move.l     d0, (a7)
001abc: 2017         move.l     (a7), d0
001abe: b092         cmp.l      (a2), d0
001ac0: 6dc0         blt.b      $1a82
001ac2: 200a         move.l     a2, d0
001ac4: 61001e0a     bsr.w      $38d0
001ac8: 588f         addq.l     #$4, a7
001aca: 4ced0402fff8 movem.l    -$8(a5), d1/a2
001ad0: 4e5d         unlk       a5
001ad2: 4e75         rts        
001ad4: 4e550000     link.w     a5, #$0
001ad8: 48e78020     movem.l    d0/a2, -(a7)
001adc: 2440         movea.l    d0, a2
001ade: 200a         move.l     a2, d0
001ae0: 6100fd34     bsr.w      $1816
001ae4: 4a00         tst.b      d0
001ae6: 6704         beq.b      $1aec
001ae8: 70ff         moveq      #$ff, d0
001aea: 6004         bra.b      $1af0
001aec: 202a0006     move.l     $6(a2), d0
001af0: 4ced0400fffc movem.l    -$4(a5), a2
001af6: 4e5d         unlk       a5
001af8: 4e75         rts        
001afa: 4e550000     link.w     a5, #$0
001afe: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
001b02: 2440         movea.l    d0, a2
001b04: 2801         move.l     d1, d4
001b06: 7a00         moveq      #$0, d5
001b08: 600e         bra.b      $1b18
001b0a: 700a         moveq      #$a, d0
001b0c: 4c050000     mulu.l     d5, d0
001b10: b8b20806     cmp.l      $6(a2, d0.l), d4
001b14: 670e         beq.b      $1b24
001b16: 5285         addq.l     #$1, d5
001b18: 200a         move.l     a2, d0
001b1a: 6100ff40     bsr.w      $1a5c
001b1e: 5380         subq.l     #$1, d0
001b20: b085         cmp.l      d5, d0
001b22: 6ee6         bgt.b      $1b0a
001b24: 200a         move.l     a2, d0
001b26: 6100ff34     bsr.w      $1a5c
001b2a: 5380         subq.l     #$1, d0
001b2c: b085         cmp.l      d5, d0
001b2e: 6604         bne.b      $1b34
001b30: 70ff         moveq      #$ff, d0
001b32: 600e         bra.b      $1b42
001b34: 2005         move.l     d5, d0
001b36: 5280         addq.l     #$1, d0
001b38: 720a         moveq      #$a, d1
001b3a: 4c010000     mulu.l     d1, d0
001b3e: 20320806     move.l     $6(a2, d0.l), d0
001b42: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
001b48: 4e5d         unlk       a5
001b4a: 4e75         rts        
001b4c: 4e550000     link.w     a5, #$0
001b50: 48e7c080     movem.l    d0-d1/a0, -(a7)
001b54: 4fefffcc     lea.l      -$34(a7), a7
001b58: 610001fc     bsr.w      $1d56
001b5c: 4857         pea.l      (a7)
001b5e: 41ee88ea     lea.l      -$7716(a6), a0
001b62: 2208         move.l     a0, d1
001b64: 41ee8254     lea.l      -$7dac(a6), a0
001b68: 2008         move.l     a0, d0
001b6a: 61000228     bsr.w      $1d94
001b6e: 588f         addq.l     #$4, a7
001b70: 2d6f000888e6 move.l     $8(a7), -$771a(a6)
001b76: 4fef0034     lea.l      $34(a7), a7
001b7a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001b80: 4e5d         unlk       a5
001b82: 4e75         rts        
001b84: 4e550000     link.w     a5, #$0
001b88: 48e7c080     movem.l    d0-d1/a0, -(a7)
001b8c: 2f2e88e6     move.l     -$771a(a6), -(a7)
001b90: 222e88ea     move.l     -$7716(a6), d1
001b94: 41ee8254     lea.l      -$7dac(a6), a0
001b98: 2008         move.l     a0, d0
001b9a: 610002f6     bsr.w      $1e92
001b9e: 588f         addq.l     #$4, a7
001ba0: 610002d6     bsr.w      $1e78
001ba4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001baa: 4e5d         unlk       a5
001bac: 4e75         rts        
001bae: 4e550000     link.w     a5, #$0
001bb2: 48e7c080     movem.l    d0-d1/a0, -(a7)
001bb6: 4fefff6e     lea.l      -$92(a7), a7
001bba: 0c6fffff0094 cmpi.w     #$ffff, $94(a7)
001bc0: 6616         bne.b      $1bd8
001bc2: 487800f0     pea.l      $f0.w
001bc6: 7212         moveq      #$12, d1
001bc8: 203c00000098 move.l     #$98, d0
001bce: 61000abc     bsr.w      $268c
001bd2: 588f         addq.l     #$4, a7
001bd4: 61000adc     bsr.w      $26b2
001bd8: 7003         moveq      #$3, d0
001bda: 2f400034     move.l     d0, $34(a7)
001bde: 2f6e88e60038 move.l     -$771a(a6), $38(a7)
001be4: 306f0094     movea.w    $94(a7), a0
001be8: 2f48003c     move.l     a0, $3c(a7)
001bec: 1f6f00a90090 move.b     $a9(a7), $90(a7)
001bf2: 222f0096     move.l     $96(a7), d1
001bf6: 41ef0040     lea.l      $40(a7), a0
001bfa: 2008         move.l     a0, d0
001bfc: 61001e12     bsr.w      $3a10
001c00: 4857         pea.l      (a7)
001c02: 41ef0038     lea.l      $38(a7), a0
001c06: 2208         move.l     a0, d1
001c08: 202e88ea     move.l     -$7716(a6), d0
001c0c: 61000102     bsr.w      $1d10
001c10: 588f         addq.l     #$4, a7
001c12: 4aaf0004     tst.l      $4(a7)
001c16: 6704         beq.b      $1c1c
001c18: 7000         moveq      #$0, d0
001c1a: 6002         bra.b      $1c1e
001c1c: 7001         moveq      #$1, d0
001c1e: 4fef0092     lea.l      $92(a7), a7
001c22: 4ced0100fffc movem.l    -$4(a5), a0
001c28: 4e5d         unlk       a5
001c2a: 4e75         rts        
001c2c: 4e550000     link.w     a5, #$0
001c30: 48e7c080     movem.l    d0-d1/a0, -(a7)
001c34: 4fefff6e     lea.l      -$92(a7), a7
001c38: 700c         moveq      #$c, d0
001c3a: 2f400034     move.l     d0, $34(a7)
001c3e: 2f6e88e60038 move.l     -$771a(a6), $38(a7)
001c44: 4857         pea.l      (a7)
001c46: 41ef0038     lea.l      $38(a7), a0
001c4a: 2208         move.l     a0, d1
001c4c: 202e88ea     move.l     -$7716(a6), d0
001c50: 610000be     bsr.w      $1d10
001c54: 588f         addq.l     #$4, a7
001c56: 4fef0092     lea.l      $92(a7), a7
001c5a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001c60: 4e5d         unlk       a5
001c62: 4e75         rts        
001c64: 4e550000     link.w     a5, #$0
001c68: 48e78080     movem.l    d0/a0, -(a7)
001c6c: 4fefffa2     lea.l      -$5e(a7), a7
001c70: 7008         moveq      #$8, d0
001c72: 2e80         move.l     d0, (a7)
001c74: 41d7         lea.l      (a7), a0
001c76: 2008         move.l     a0, d0
001c78: 61000010     bsr.w      $1c8a
001c7c: 4fef005e     lea.l      $5e(a7), a7
001c80: 4ced0100fffc movem.l    -$4(a5), a0
001c86: 4e5d         unlk       a5
001c88: 4e75         rts        
001c8a: 4e550000     link.w     a5, #$0
001c8e: 48e7c000     movem.l    d0-d1, -(a7)
001c92: 598f         subq.l     #$4, a7
001c94: 4878005e     pea.l      $5e.w
001c98: 222f0008     move.l     $8(a7), d1
001c9c: 202e88ee     move.l     -$7712(a6), d0
001ca0: 61001bca     bsr.w      $386c
001ca4: 588f         addq.l     #$4, a7
001ca6: 2e80         move.l     d0, (a7)
001ca8: 705e         moveq      #$5e, d0
001caa: b097         cmp.l      (a7), d0
001cac: 6716         beq.b      $1cc4
001cae: 487800e6     pea.l      $e6.w
001cb2: 7212         moveq      #$12, d1
001cb4: 203c00000098 move.l     #$98, d0
001cba: 610009d0     bsr.w      $268c
001cbe: 588f         addq.l     #$4, a7
001cc0: 610009f0     bsr.w      $26b2
001cc4: 588f         addq.l     #$4, a7
001cc6: 4ced0002fffc movem.l    -$4(a5), d1
001ccc: 4e5d         unlk       a5
001cce: 4e75         rts        
001cd0: 4e550000     link.w     a5, #$0
001cd4: 48e7c000     movem.l    d0-d1, -(a7)
001cd8: 598f         subq.l     #$4, a7
001cda: 48780034     pea.l      $34.w
001cde: 222f000c     move.l     $c(a7), d1
001ce2: 202f0008     move.l     $8(a7), d0
001ce6: 61001b7c     bsr.w      $3864
001cea: 588f         addq.l     #$4, a7
001cec: 2e80         move.l     d0, (a7)
001cee: 7034         moveq      #$34, d0
001cf0: b097         cmp.l      (a7), d0
001cf2: 6716         beq.b      $1d0a
001cf4: 487800e7     pea.l      $e7.w
001cf8: 7212         moveq      #$12, d1
001cfa: 203c00000098 move.l     #$98, d0
001d00: 6100098a     bsr.w      $268c
001d04: 588f         addq.l     #$4, a7
001d06: 610009aa     bsr.w      $26b2
001d0a: 588f         addq.l     #$4, a7
001d0c: 4e5d         unlk       a5
001d0e: 4e75         rts        
001d10: 4e550000     link.w     a5, #$0
001d14: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001d18: 202f0004     move.l     $4(a7), d0
001d1c: 6100ff6c     bsr.w      $1c8a
001d20: 222f0018     move.l     $18(a7), d1
001d24: 2017         move.l     (a7), d0
001d26: 61a8         bsr.b      $1cd0
001d28: 206f0004     movea.l    $4(a7), a0
001d2c: 226f0018     movea.l    $18(a7), a1
001d30: 2011         move.l     (a1), d0
001d32: b090         cmp.l      (a0), d0
001d34: 6716         beq.b      $1d4c
001d36: 487800e8     pea.l      $e8.w
001d3a: 7212         moveq      #$12, d1
001d3c: 203c00000098 move.l     #$98, d0
001d42: 61000948     bsr.w      $268c
001d46: 588f         addq.l     #$4, a7
001d48: 61000968     bsr.w      $26b2
001d4c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001d52: 4e5d         unlk       a5
001d54: 4e75         rts        
001d56: 4e550000     link.w     a5, #$0
001d5a: 48e7c080     movem.l    d0-d1/a0, -(a7)
001d5e: 7202         moveq      #$2, d1
001d60: 41fa017a     lea.l      $1edc(pc), a0
001d64: 2008         move.l     a0, d0
001d66: 61000aac     bsr.w      $2814
001d6a: 2d4088ee     move.l     d0, -$7712(a6)
001d6e: 72ff         moveq      #$ff, d1
001d70: b280         cmp.l      d0, d1
001d72: 6616         bne.b      $1d8a
001d74: 487800e9     pea.l      $e9.w
001d78: 7212         moveq      #$12, d1
001d7a: 203c00000098 move.l     #$98, d0
001d80: 6100090a     bsr.w      $268c
001d84: 588f         addq.l     #$4, a7
001d86: 6100092a     bsr.w      $26b2
001d8a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001d90: 4e5d         unlk       a5
001d92: 4e75         rts        
001d94: 4e550000     link.w     a5, #$0
001d98: 48e7c080     movem.l    d0-d1/a0, -(a7)
001d9c: 4fefff9e     lea.l      -$62(a7), a7
001da0: 41fa0148     lea.l      $1eea(pc), a0
001da4: 2208         move.l     a0, d1
001da6: 202f0062     move.l     $62(a7), d0
001daa: 61001c64     bsr.w      $3a10
001dae: 202f0062     move.l     $62(a7), d0
001db2: 61001b3c     bsr.w      $38f0
001db6: 48780400     pea.l      $400.w
001dba: 48780003     pea.l      $3.w
001dbe: 7222         moveq      #$22, d1
001dc0: 202f006a     move.l     $6a(a7), d0
001dc4: 61000bf2     bsr.w      $29b8
001dc8: 508f         addq.l     #$8, a7
001dca: 206f0066     movea.l    $66(a7), a0
001dce: 2080         move.l     d0, (a0)
001dd0: 72ff         moveq      #$ff, d1
001dd2: b280         cmp.l      d0, d1
001dd4: 6616         bne.b      $1dec
001dd6: 487800ea     pea.l      $ea.w
001dda: 7212         moveq      #$12, d1
001ddc: 203c00000098 move.l     #$98, d0
001de2: 610008a8     bsr.w      $268c
001de6: 588f         addq.l     #$4, a7
001de8: 610008c8     bsr.w      $26b2
001dec: 7004         moveq      #$4, d0
001dee: 2f400004     move.l     d0, $4(a7)
001df2: 222f0062     move.l     $62(a7), d1
001df6: 41ef0008     lea.l      $8(a7), a0
001dfa: 2008         move.l     a0, d0
001dfc: 61001c12     bsr.w      $3a10
001e00: 41ef0004     lea.l      $4(a7), a0
001e04: 2008         move.l     a0, d0
001e06: 6100fe82     bsr.w      $1c8a
001e0a: 6022         bra.b      $1e2e
001e0c: 70ff         moveq      #$ff, d0
001e0e: b097         cmp.l      (a7), d0
001e10: 6616         bne.b      $1e28
001e12: 487800ed     pea.l      $ed.w
001e16: 7212         moveq      #$12, d1
001e18: 203c00000098 move.l     #$98, d0
001e1e: 6100086c     bsr.w      $268c
001e22: 588f         addq.l     #$4, a7
001e24: 6100088c     bsr.w      $26b2
001e28: 7001         moveq      #$1, d0
001e2a: 61001fbe     bsr.w      $3dea
001e2e: 48780034     pea.l      $34.w
001e32: 222f007a     move.l     $7a(a7), d1
001e36: 206f006a     movea.l    $6a(a7), a0
001e3a: 2010         move.l     (a0), d0
001e3c: 61001a26     bsr.w      $3864
001e40: 588f         addq.l     #$4, a7
001e42: 2e80         move.l     d0, (a7)
001e44: 7234         moveq      #$34, d1
001e46: b280         cmp.l      d0, d1
001e48: 66c2         bne.b      $1e0c
001e4a: 206f0076     movea.l    $76(a7), a0
001e4e: 7004         moveq      #$4, d0
001e50: b090         cmp.l      (a0), d0
001e52: 6716         beq.b      $1e6a
001e54: 487800ee     pea.l      $ee.w
001e58: 7212         moveq      #$12, d1
001e5a: 203c00000098 move.l     #$98, d0
001e60: 6100082a     bsr.w      $268c
001e64: 588f         addq.l     #$4, a7
001e66: 6100084a     bsr.w      $26b2
001e6a: 4fef0062     lea.l      $62(a7), a7
001e6e: 4ced0100fffc movem.l    -$4(a5), a0
001e74: 4e5d         unlk       a5
001e76: 4e75         rts        
001e78: 4e550000     link.w     a5, #$0
001e7c: 48e78000     movem.l    d0, -(a7)
001e80: 202e88ee     move.l     -$7712(a6), d0
001e84: 610019fa     bsr.w      $3880
001e88: 70ff         moveq      #$ff, d0
001e8a: 2d4088ee     move.l     d0, -$7712(a6)
001e8e: 4e5d         unlk       a5
001e90: 4e75         rts        
001e92: 4e550000     link.w     a5, #$0
001e96: 48e7c080     movem.l    d0-d1/a0, -(a7)
001e9a: 4fefff6e     lea.l      -$92(a7), a7
001e9e: 700a         moveq      #$a, d0
001ea0: 2f400034     move.l     d0, $34(a7)
001ea4: 2f6f00a60038 move.l     $a6(a7), $38(a7)
001eaa: 41ef0034     lea.l      $34(a7), a0
001eae: 2008         move.l     a0, d0
001eb0: 6100fdd8     bsr.w      $1c8a
001eb4: 41d7         lea.l      (a7), a0
001eb6: 2208         move.l     a0, d1
001eb8: 202f0096     move.l     $96(a7), d0
001ebc: 6100fe12     bsr.w      $1cd0
001ec0: 700a         moveq      #$a, d0
001ec2: b097         cmp.l      (a7), d0
001ec4: 66ee         bne.b      $1eb4
001ec6: 202f0096     move.l     $96(a7), d0
001eca: 610019b4     bsr.w      $3880
001ece: 4fef0092     lea.l      $92(a7), a7
001ed2: 4ced0100fffc movem.l    -$4(a5), a0
001ed8: 4e5d         unlk       a5
001eda: 4e75         rts        
001edc: 2f706970652f7062705f move.l     $652f7062(a0, invalid.w), $705f(a7)
001ee6: 7265         moveq      #$65, d1
001ee8: 7100         .dc.w      $7100
001eea: 2f706970652f7062705f move.l     $652f7062(a0, invalid.w), $705f(a7)
001ef4: 7273         moveq      #$73, d1
001ef6: 705f         moveq      #$5f, d0
001ef8: 5858         addq.w     #$4, (a0)+
001efa: 5858         addq.w     #$4, (a0)+
001efc: 5858         addq.w     #$4, (a0)+
001efe: 00004e55     ori.b      #$55, d0
001f02: 000048e7     ori.b      #$e7, d0
001f06: c080         and.l      d0, d0
001f08: 6100199a     bsr.w      $38a4
001f0c: 2200         move.l     d0, d1
001f0e: 41fa007a     lea.l      $1f8a(pc), a0
001f12: 2008         move.l     a0, d0
001f14: 610018f2     bsr.w      $3808
001f18: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001f1e: 4e5d         unlk       a5
001f20: 4e75         rts        
001f22: 4e550000     link.w     a5, #$0
001f26: 48e78000     movem.l    d0, -(a7)
001f2a: 42ae88f2     clr.l      -$770e(a6)
001f2e: 7000         moveq      #$0, d0
001f30: 4e5d         unlk       a5
001f32: 4e75         rts        
001f34: 4e550000     link.w     a5, #$0
001f38: 48e78000     movem.l    d0, -(a7)
001f3c: 7010         moveq      #$10, d0
001f3e: b097         cmp.l      (a7), d0
001f40: 6d0c         blt.b      $1f4e
001f42: 7001         moveq      #$1, d0
001f44: b097         cmp.l      (a7), d0
001f46: 6e06         bgt.b      $1f4e
001f48: 2017         move.l     (a7), d0
001f4a: 81ae88f2     or.l       d0, -$770e(a6)
001f4e: 4e5d         unlk       a5
001f50: 4e75         rts        
001f52: 4e550000     link.w     a5, #$0
001f56: 48e78000     movem.l    d0, -(a7)
001f5a: 7010         moveq      #$10, d0
001f5c: b097         cmp.l      (a7), d0
001f5e: 6d16         blt.b      $1f76
001f60: 7001         moveq      #$1, d0
001f62: b097         cmp.l      (a7), d0
001f64: 6e10         bgt.b      $1f76
001f66: 202e88f2     move.l     -$770e(a6), d0
001f6a: c097         and.l      (a7), d0
001f6c: b097         cmp.l      (a7), d0
001f6e: 6606         bne.b      $1f76
001f70: 2017         move.l     (a7), d0
001f72: b1ae88f2     eor.l      d0, -$770e(a6)
001f76: 4e5d         unlk       a5
001f78: 4e75         rts        
001f7a: 4e550000     link.w     a5, #$0
001f7e: 48e78000     movem.l    d0, -(a7)
001f82: 202e88f2     move.l     -$770e(a6), d0
001f86: 4e5d         unlk       a5
001f88: 4e75         rts        
001f8a: 25733a004e55 move.l     (a3, d3.l * 2), $4e55(a2)
001f90: 000048e7     ori.b      #$e7, d0
001f94: 8080         or.l       d0, d0
001f96: 202e88fa     move.l     -$7706(a6), d0
001f9a: 52ae88fa     addq.l     #$1, -$7706(a6)
001f9e: 41ee8272     lea.l      -$7d8e(a6), a0
001fa2: 21970c00     move.l     (a7), (a0, d0.l * 4)
001fa6: 703f         moveq      #$3f, d0
001fa8: b0ae88fa     cmp.l      -$7706(a6), d0
001fac: 6c04         bge.b      $1fb2
001fae: 42ae88fa     clr.l      -$7706(a6)
001fb2: 4ced0100fffc movem.l    -$4(a5), a0
001fb8: 4e5d         unlk       a5
001fba: 4e75         rts        
001fbc: 4e550000     link.w     a5, #$0
001fc0: 48e78080     movem.l    d0/a0, -(a7)
001fc4: 598f         subq.l     #$4, a7
001fc6: 202e88f6     move.l     -$770a(a6), d0
001fca: b0ae88fa     cmp.l      -$7706(a6), d0
001fce: 6604         bne.b      $1fd4
001fd0: 70ff         moveq      #$ff, d0
001fd2: 601e         bra.b      $1ff2
001fd4: 202e88f6     move.l     -$770a(a6), d0
001fd8: 52ae88f6     addq.l     #$1, -$770a(a6)
001fdc: 41ee8272     lea.l      -$7d8e(a6), a0
001fe0: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
001fe4: 703f         moveq      #$3f, d0
001fe6: b0ae88f6     cmp.l      -$770a(a6), d0
001fea: 6c04         bge.b      $1ff0
001fec: 42ae88f6     clr.l      -$770a(a6)
001ff0: 2017         move.l     (a7), d0
001ff2: 588f         addq.l     #$4, a7
001ff4: 4ced0100fffc movem.l    -$4(a5), a0
001ffa: 4e5d         unlk       a5
001ffc: 4e75         rts        
001ffe: 4e550000     link.w     a5, #$0
002002: 48e78000     movem.l    d0, -(a7)
002006: 4e5d         unlk       a5
002008: 4e75         rts        
00200a: 4e550000     link.w     a5, #$0
00200e: 48e78000     movem.l    d0, -(a7)
002012: 202e88f6     move.l     -$770a(a6), d0
002016: b0ae88fa     cmp.l      -$7706(a6), d0
00201a: 6604         bne.b      $2020
00201c: 7001         moveq      #$1, d0
00201e: 6002         bra.b      $2022
002020: 7000         moveq      #$0, d0
002022: 4e5d         unlk       a5
002024: 4e75         rts        
002026: 4e550000     link.w     a5, #$0
00202a: 48e78000     movem.l    d0, -(a7)
00202e: 2017         move.l     (a7), d0
002030: 61001202     bsr.w      $3234
002034: 7001         moveq      #$1, d0
002036: 4e5d         unlk       a5
002038: 4e75         rts        
00203a: 4e550000     link.w     a5, #$0
00203e: 48e78000     movem.l    d0, -(a7)
002042: 7001         moveq      #$1, d0
002044: 4e5d         unlk       a5
002046: 4e75         rts        
002048: 4e550000     link.w     a5, #$0
00204c: 48e78800     movem.l    d0/d4, -(a7)
002050: 610004fe     bsr.w      $2550
002054: 6100ff66     bsr.w      $1fbc
002058: 2800         move.l     d0, d4
00205a: 6c0c         bge.b      $2068
00205c: 7000         moveq      #$0, d0
00205e: 61001d84     bsr.w      $3de4
002062: 6100ff58     bsr.w      $1fbc
002066: 2800         move.l     d0, d4
002068: 61000512     bsr.w      $257c
00206c: 2004         move.l     d4, d0
00206e: 4ced0010fffc movem.l    -$4(a5), d4
002074: 4e5d         unlk       a5
002076: 4e75         rts        
002078: 0008         .dc.w      $0008
00207a: 006e000c006a ori.w      #$c, $6a(a6)
002080: 00100066     ori.b      #$66, (a0)
002084: 00140062     ori.b      #$62, (a4)
002088: 0018005e     ori.b      #$5e, (a0)+
00208c: 001c005a     ori.b      #$5a, (a4)+
002090: 00200056     ori.b      #$56, -(a0)
002094: 002c00520028 ori.b      #$52, $28(a4)
00209a: 004e         .dc.w      $004e
00209c: ffff         dc.w       $ffff
00209e: 0008         .dc.w      $0008
0020a0: 0000000c     ori.b      #$c, d0
0020a4: 00000010     ori.b      #$10, d0
0020a8: 00000014     ori.b      #$14, d0
0020ac: 00000018     ori.b      #$18, d0
0020b0: 0000001c     ori.b      #$1c, d0
0020b4: 00000020     ori.b      #$20, d0
0020b8: 0000002c     ori.b      #$2c, d0
0020bc: 00000028     ori.b      #$28, d0
0020c0: 0000ffff     ori.b      #$ff, d0
0020c4: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0020c8: 43faffae     lea.l      $2078(pc), a1
0020cc: 6008         bra.b      $20d6
0020ce: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0020d2: 43faffca     lea.l      $209e(pc), a1
0020d6: 91c8         suba.l     a0, a0
0020d8: 4e40         trap       #$0
0020da: 000e         .dc.w      $000e
0020dc: 6406         bcc.b      $20e4
0020de: 2d41800c     move.l     d1, -$7ff4(a6)
0020e2: 70ff         moveq      #$ff, d0
0020e4: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
0020e8: 4e75         rts        
0020ea: 48e70004     movem.l    a5, -(a7)
0020ee: 91ee890e     suba.l     -$76f2(a6), a0
0020f2: 2d488906     move.l     a0, -$76fa(a6)
0020f6: 41ee8372     lea.l      -$7c8e(a6), a0
0020fa: 202e8902     move.l     -$76fe(a6), d0
0020fe: e248         lsr.w      #$1, d0
002100: 5340         subq.w     #$1, d0
002102: 30dd         move.w     (a5)+, (a0)+
002104: 51c8fffc     dbra       d0, $2102
002108: 4cdf2000     movem.l    (a7)+, a5
00210c: e44f         lsr.w      #$2, d7
00210e: 3d47890a     move.w     d7, -$76f6(a6)
002112: 206e83ba     movea.l    -$7c46(a6), a0
002116: 4e90         jsr        (a0)
002118: 4a80         tst.l      d0
00211a: 6708         beq.b      $2124
00211c: 7264         moveq      #$64, d1
00211e: d247         add.w      d7, d1
002120: 4e40         trap       #$0
002122: 00064cdf     ori.b      #$df, d6
002126: 7fff         .dc.w      $7fff
002128: 588f         addq.l     #$4, a7
00212a: 44df         move.w     (a7)+, ccr
00212c: 4e75         rts        
00212e: 4e550000     link.w     a5, #$0
002132: 48e78000     movem.l    d0, -(a7)
002136: 1d7c0001890c move.b     #$1, -$76f4(a6)
00213c: 4e5d         unlk       a5
00213e: 4e75         rts        
002140: 4e550000     link.w     a5, #$0
002144: 48e78000     movem.l    d0, -(a7)
002148: 2d5783ba     move.l     (a7), -$7c46(a6)
00214c: 6606         bne.b      $2154
00214e: 6100ff7e     bsr.w      $20ce
002152: 6004         bra.b      $2158
002154: 6100ff6e     bsr.w      $20c4
002158: 4e5d         unlk       a5
00215a: 4e75         rts        
00215c: 4e550000     link.w     a5, #$0
002160: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
002164: 4fefffd4     lea.l      -$2c(a7), a7
002168: 604a         bra.b      $21b4
00216a: 2ebc000000b5 move.l     #$b5, (a7)
002170: 60000076     bra.w      $21e8
002174: 2ebc000000b6 move.l     #$b6, (a7)
00217a: 606c         bra.b      $21e8
00217c: 2ebc000000b7 move.l     #$b7, (a7)
002182: 6064         bra.b      $21e8
002184: 2ebc000000b8 move.l     #$b8, (a7)
00218a: 605c         bra.b      $21e8
00218c: 2ebc000000b9 move.l     #$b9, (a7)
002192: 6054         bra.b      $21e8
002194: 2ebc000000ba move.l     #$ba, (a7)
00219a: 604c         bra.b      $21e8
00219c: 2ebc000000b2 move.l     #$b2, (a7)
0021a2: 6044         bra.b      $21e8
0021a4: 2ebc000000c0 move.l     #$c0, (a7)
0021aa: 603c         bra.b      $21e8
0021ac: 2ebc000000b3 move.l     #$b3, (a7)
0021b2: 6034         bra.b      $21e8
0021b4: 302e890a     move.w     -$76f6(a6), d0
0021b8: 48c0         ext.l      d0
0021ba: 7264         moveq      #$64, d1
0021bc: d081         add.l      d1, d0
0021be: 048000000066 subi.l     #$66, d0
0021c4: 0c8000000009 cmpi.l     #$9, d0
0021ca: 62e0         bhi.b      $21ac
0021cc: 303b0206     move.w     $21d4(pc, d0.w), d0
0021d0: 4efb0002     jmp        $21d4(pc, d0.w)
0021d4: ff96         dc.w       $ff96
0021d6: ffa0         dc.w       $ffa0
0021d8: ffa8         dc.w       $ffa8
0021da: ffb0         dc.w       $ffb0
0021dc: ffb8         dc.w       $ffb8
0021de: ffc0         dc.w       $ffc0
0021e0: ffc8         dc.w       $ffc8
0021e2: ffd8         dc.w       $ffd8
0021e4: ffd0         dc.w       $ffd0
0021e6: ffd0         dc.w       $ffd0
0021e8: 0c97000000ba cmpi.l     #$ba, (a7)
0021ee: 660c         bne.b      $21fc
0021f0: 4a2e890c     tst.b      -$76f4(a6)
0021f4: 6706         beq.b      $21fc
0021f6: 7000         moveq      #$0, d0
0021f8: 600001ec     bra.w      $23e6
0021fc: 2f2e8906     move.l     -$76fa(a6), -(a7)
002200: 306e890a     movea.w    -$76f6(a6), a0
002204: 2f08         move.l     a0, -(a7)
002206: 6100169c     bsr.w      $38a4
00220a: 2200         move.l     d0, d1
00220c: 41fa01f0     lea.l      $23fe(pc), a0
002210: 2008         move.l     a0, d0
002212: 610015f4     bsr.w      $3808
002216: 508f         addq.l     #$8, a7
002218: 61001e76     bsr.w      $4090
00221c: 2f00         move.l     d0, -(a7)
00221e: 61001684     bsr.w      $38a4
002222: 2f00         move.l     d0, -(a7)
002224: 2f2e88fe     move.l     -$7702(a6), -(a7)
002228: 41fa01fb     lea.l      $2425(pc), a0
00222c: 2208         move.l     a0, d1
00222e: 41ef0010     lea.l      $10(a7), a0
002232: 2008         move.l     a0, d0
002234: 610015da     bsr.w      $3810
002238: 4fef000c     lea.l      $c(a7), a7
00223c: 41fa01ef     lea.l      $242d(pc), a0
002240: 2208         move.l     a0, d1
002242: 41ef0004     lea.l      $4(a7), a0
002246: 2008         move.l     a0, d0
002248: 6100158e     bsr.w      $37d8
00224c: 2440         movea.l    d0, a2
00224e: 4a80         tst.l      d0
002250: 6604         bne.b      $2256
002252: 45ee8422     lea.l      -$7bde(a6), a2
002256: 2f2e8906     move.l     -$76fa(a6), -(a7)
00225a: 306e890a     movea.w    -$76f6(a6), a0
00225e: 2f08         move.l     a0, -(a7)
002260: 61001642     bsr.w      $38a4
002264: 2f00         move.l     d0, -(a7)
002266: 41fa01c7     lea.l      $242f(pc), a0
00226a: 2208         move.l     a0, d1
00226c: 200a         move.l     a2, d0
00226e: 6100159c     bsr.w      $380c
002272: 4fef000c     lea.l      $c(a7), a7
002276: 7800         moveq      #$0, d4
002278: 6018         bra.b      $2292
00227a: 41ee8372     lea.l      -$7c8e(a6), a0
00227e: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
002282: 41fa01d6     lea.l      $245a(pc), a0
002286: 2208         move.l     a0, d1
002288: 200a         move.l     a2, d0
00228a: 61001580     bsr.w      $380c
00228e: 588f         addq.l     #$4, a7
002290: 5284         addq.l     #$1, d4
002292: 7008         moveq      #$8, d0
002294: b084         cmp.l      d4, d0
002296: 6ee2         bgt.b      $227a
002298: 41fa01c7     lea.l      $2461(pc), a0
00229c: 2208         move.l     a0, d1
00229e: 200a         move.l     a2, d0
0022a0: 6100156a     bsr.w      $380c
0022a4: 6018         bra.b      $22be
0022a6: 41ee8372     lea.l      -$7c8e(a6), a0
0022aa: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
0022ae: 41fa01b7     lea.l      $2467(pc), a0
0022b2: 2208         move.l     a0, d1
0022b4: 200a         move.l     a2, d0
0022b6: 61001554     bsr.w      $380c
0022ba: 588f         addq.l     #$4, a7
0022bc: 5284         addq.l     #$1, d4
0022be: 7010         moveq      #$10, d0
0022c0: b084         cmp.l      d4, d0
0022c2: 6ee2         bgt.b      $22a6
0022c4: 41fa01a8     lea.l      $246e(pc), a0
0022c8: 2208         move.l     a0, d1
0022ca: 200a         move.l     a2, d0
0022cc: 6100153e     bsr.w      $380c
0022d0: 266e83a6     movea.l    -$7c5a(a6), a3
0022d4: 7800         moveq      #$0, d4
0022d6: 6014         bra.b      $22ec
0022d8: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0022dc: 41fa01ac     lea.l      $248a(pc), a0
0022e0: 2208         move.l     a0, d1
0022e2: 200a         move.l     a2, d0
0022e4: 61001526     bsr.w      $380c
0022e8: 588f         addq.l     #$4, a7
0022ea: 5284         addq.l     #$1, d4
0022ec: 7008         moveq      #$8, d0
0022ee: b084         cmp.l      d4, d0
0022f0: 6ee6         bgt.b      $22d8
0022f2: 41fa019d     lea.l      $2491(pc), a0
0022f6: 2208         move.l     a0, d1
0022f8: 200a         move.l     a2, d0
0022fa: 61001510     bsr.w      $380c
0022fe: 266e83ae     movea.l    -$7c52(a6), a3
002302: 7800         moveq      #$0, d4
002304: 6014         bra.b      $231a
002306: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
00230a: 41fa01a0     lea.l      $24ac(pc), a0
00230e: 2208         move.l     a0, d1
002310: 200a         move.l     a2, d0
002312: 610014f8     bsr.w      $380c
002316: 588f         addq.l     #$4, a7
002318: 5284         addq.l     #$1, d4
00231a: 7008         moveq      #$8, d0
00231c: b084         cmp.l      d4, d0
00231e: 6ee6         bgt.b      $2306
002320: 41fa0191     lea.l      $24b3(pc), a0
002324: 2208         move.l     a0, d1
002326: 200a         move.l     a2, d0
002328: 610014e2     bsr.w      $380c
00232c: 266e83a6     movea.l    -$7c5a(a6), a3
002330: 2653         movea.l    (a3), a3
002332: 7800         moveq      #$0, d4
002334: 6014         bra.b      $234a
002336: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
00233a: 41fa01a5     lea.l      $24e1(pc), a0
00233e: 2208         move.l     a0, d1
002340: 200a         move.l     a2, d0
002342: 610014c8     bsr.w      $380c
002346: 588f         addq.l     #$4, a7
002348: 5284         addq.l     #$1, d4
00234a: 7008         moveq      #$8, d0
00234c: b084         cmp.l      d4, d0
00234e: 6ee6         bgt.b      $2336
002350: 082e000083b3 btst.b     #$0, -$7c4d(a6)
002356: 6704         beq.b      $235c
002358: 7043         moveq      #$43, d0
00235a: 6002         bra.b      $235e
00235c: 702d         moveq      #$2d, d0
00235e: 2f00         move.l     d0, -(a7)
002360: 082e000183b3 btst.b     #$1, -$7c4d(a6)
002366: 6704         beq.b      $236c
002368: 7056         moveq      #$56, d0
00236a: 6002         bra.b      $236e
00236c: 702d         moveq      #$2d, d0
00236e: 2f00         move.l     d0, -(a7)
002370: 082e000283b3 btst.b     #$2, -$7c4d(a6)
002376: 6704         beq.b      $237c
002378: 705a         moveq      #$5a, d0
00237a: 6002         bra.b      $237e
00237c: 702d         moveq      #$2d, d0
00237e: 2f00         move.l     d0, -(a7)
002380: 082e000383b3 btst.b     #$3, -$7c4d(a6)
002386: 6704         beq.b      $238c
002388: 704e         moveq      #$4e, d0
00238a: 6002         bra.b      $238e
00238c: 702d         moveq      #$2d, d0
00238e: 2f00         move.l     d0, -(a7)
002390: 082e000483b3 btst.b     #$4, -$7c4d(a6)
002396: 6704         beq.b      $239c
002398: 7058         moveq      #$58, d0
00239a: 6002         bra.b      $239e
00239c: 702d         moveq      #$2d, d0
00239e: 2f00         move.l     d0, -(a7)
0023a0: 303c00ff     move.w     #$ff, d0
0023a4: c06e83b2     and.w      -$7c4e(a6), d0
0023a8: 7200         moveq      #$0, d1
0023aa: 3200         move.w     d0, d1
0023ac: 2f01         move.l     d1, -(a7)
0023ae: 2f2e83b4     move.l     -$7c4c(a6), -(a7)
0023b2: 41fa0134     lea.l      $24e8(pc), a0
0023b6: 2208         move.l     a0, d1
0023b8: 200a         move.l     a2, d0
0023ba: 61001450     bsr.w      $380c
0023be: 4fef001c     lea.l      $1c(a7), a7
0023c2: 41ee8422     lea.l      -$7bde(a6), a0
0023c6: b1ca         cmpa.l     a2, a0
0023c8: 6706         beq.b      $23d0
0023ca: 200a         move.l     a2, d0
0023cc: 6100145e     bsr.w      $382c
0023d0: 2f2e8906     move.l     -$76fa(a6), -(a7)
0023d4: 61001cba     bsr.w      $4090
0023d8: 2200         move.l     d0, d1
0023da: 202f0004     move.l     $4(a7), d0
0023de: 610002ac     bsr.w      $268c
0023e2: 588f         addq.l     #$4, a7
0023e4: 70ff         moveq      #$ff, d0
0023e6: 4fef002c     lea.l      $2c(a7), a7
0023ea: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
0023f0: 4e5d         unlk       a5
0023f2: 4e75         rts        
0023f4: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
0023fa: 6170         bsr.b      $246c
0023fc: 5f00         subq.b     #$7, d0
0023fe: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
002404: 6170         bsr.b      $2476
002406: 2023         move.l     -(a3), d0
002408: 2564206f     move.l     -(a4), $206f(a2)
00240c: 6363         bls.b      $2471
00240e: 7572         .dc.w      $7572
002410: 7265         moveq      #$65, d1
002412: 6420         bcc.b      $2434
002414: 6174         bsr.b      $248a
002416: 206f6666     movea.l    $6666(a7), a0
00241a: 7365         .dc.w      $7365
00241c: 743a         moveq      #$3a, d2
00241e: 20307825     move.l     $25(a0, d7.l), d0
002422: 780d         moveq      #$d, d4
002424: 00257325     ori.b      #$25, -(a5)
002428: 735f         .dc.w      $735f
00242a: 25640077     move.l     -(a4), $77(a2)
00242e: 0025733a     ori.b      #$3a, -(a5)
002432: 2054         movea.l    (a4), a0
002434: 7261         moveq      #$61, d1
002436: 7020         moveq      #$20, d0
002438: 2325         move.l     -(a5), -(a1)
00243a: 6420         bcc.b      $245c
00243c: 6f63         ble.b      $24a1
00243e: 6375         bls.b      $24b5
002440: 7272         moveq      #$72, d1
002442: 6564         bcs.b      $24a8
002444: 2061         movea.l    -(a1), a0
002446: 7420         moveq      #$20, d2
002448: 6f66         ble.b      $24b0
00244a: 6673         bne.b      $24bf
00244c: 6574         bcs.b      $24c2
00244e: 3a20         move.w     -(a0), d5
002450: 30782578     movea.w    $2578.w, a0
002454: 0d0d446e     movep.w    $446e(a5), d6
002458: 3a00         move.w     d0, d5
00245a: 2025         move.l     -(a5), d0
00245c: 30386c58     move.w     $6c58.w, d0
002460: 000d         .dc.w      $000d
002462: 0d41         bchg.b     d6, d1
002464: 6e3a         bgt.b      $24a0
002466: 00202530     ori.b      #$30, -(a0)
00246a: 386c5800     movea.w    $5800(a4), a4
00246e: 0d0d4d65     movep.w    $4d65(a5), d6
002472: 6d20         blt.b      $2494
002474: 706f         moveq      #$6f, d0
002476: 696e         bvs.b      $24e6
002478: 7465         moveq      #$65, d2
00247a: 6420         bcc.b      $249c
00247c: 746f         moveq      #$6f, d2
00247e: 2062         movea.l    -(a2), a0
002480: 7920         .dc.w      $7920
002482: 41353a0d     chk.l      $d(a5, d3.l), d0
002486: 53353a00     subq.b     #$1, (a5, d3.l * 2)
00248a: 2025         move.l     -(a5), d0
00248c: 30386c58     move.w     $6c58.w, d0
002490: 000d         .dc.w      $000d
002492: 0d4d656d     movep.l    $656d(a5), d6
002496: 20706f696e74 movea.l    ([$6e74, a0]), a0
00249c: 6564         bcs.b      $2502
00249e: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
0024a4: 2041         movea.l    d1, a0
0024a6: 373a0d53     move.w     $31fb(pc), -(a3)
0024aa: 3700         move.w     d0, -(a3)
0024ac: 2025         move.l     -(a5), d0
0024ae: 30386c58     move.w     $6c58.w, d0
0024b2: 000d         .dc.w      $000d
0024b4: 0d4d656d     movep.l    $656d(a5), d6
0024b8: 20706f696e74 movea.l    ([$6e74, a0]), a0
0024be: 6564         bcs.b      $2524
0024c0: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
0024c6: 20284135     move.l     $4135(a0), d0
0024ca: 292c2069     move.l     $2069(a4), -(a4)
0024ce: 652e         bcs.b      $24fe
0024d0: 2063         movea.l    -(a3), a0
0024d2: 6f6e         ble.b      $2542
0024d4: 7420         moveq      #$20, d2
0024d6: 6f66         ble.b      $253e
0024d8: 2041         movea.l    d1, a0
0024da: 353a0d4d     move.w     $3229(pc), -(a2)
0024de: 353a0020     move.w     $2500(pc), -(a2)
0024e2: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0024e6: 5800         addq.b     #$4, d0
0024e8: 0d0d5043     movep.w    $5043(a5), d6
0024ec: 3a20         move.w     -(a0), d5
0024ee: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0024f2: 5820         addq.b     #$4, -(a0)
0024f4: 2043         movea.l    d3, a0
0024f6: 433a2025     chk.l      $451d(pc), d1
0024fa: 30325820     move.w     $20(a2, d5.l), d0
0024fe: 2825         move.l     -(a5), d4
002500: 6325         bls.b      $2527
002502: 6325         bls.b      $2529
002504: 6325         bls.b      $252b
002506: 6325         bls.b      $252d
002508: 6329         bls.b      $2533
00250a: 0d00         btst.l     d6, d0
00250c: 4e550000     link.w     a5, #$0
002510: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
002514: 2800         move.l     d0, d4
002516: 7204         moveq      #$4, d1
002518: 7044         moveq      #$44, d0
00251a: 610019f6     bsr.w      $3f12
00251e: 2440         movea.l    d0, a2
002520: 3a12         move.w     (a2), d5
002522: 601c         bra.b      $2540
002524: 4a92         tst.l      (a2)
002526: 6718         beq.b      $2540
002528: 2052         movea.l    (a2), a0
00252a: 7000         moveq      #$0, d0
00252c: 3010         move.w     (a0), d0
00252e: 3204         move.w     d4, d1
002530: 48c1         ext.l      d1
002532: b081         cmp.l      d1, d0
002534: 660a         bne.b      $2540
002536: 2052         movea.l    (a2), a0
002538: 7000         moveq      #$0, d0
00253a: 30280002     move.w     $2(a0), d0
00253e: 6006         bra.b      $2546
002540: 588a         addq.l     #$4, a2
002542: 5345         subq.w     #$1, d5
002544: 6cde         bge.b      $2524
002546: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
00254c: 4e5d         unlk       a5
00254e: 4e75         rts        
002550: 48e74000     movem.l    d1, -(a7)
002554: 203c00000000 move.l     #$0, d0
00255a: 223c00000001 move.l     #$1, d1
002560: 4e40         trap       #$0
002562: 0057640c     ori.w      #$640c, (a7)
002566: 2d41800c     move.l     d1, -$7ff4(a6)
00256a: 70ff         moveq      #$ff, d0
00256c: 4cdf0002     movem.l    (a7)+, d1
002570: 4e75         rts        
002572: 4280         clr.l      d0
002574: 3001         move.w     d1, d0
002576: 4cdf0002     movem.l    (a7)+, d1
00257a: 4e75         rts        
00257c: 48e74000     movem.l    d1, -(a7)
002580: 203c00000000 move.l     #$0, d0
002586: 223c00000000 move.l     #$0, d1
00258c: 4e40         trap       #$0
00258e: 005764e0     ori.w      #$64e0, (a7)
002592: 60d2         bra.b      $2566
002594: 48e740e0     movem.l    d1/a0-a2, -(a7)
002598: 207900000000 movea.l    $0.l, a0
00259e: 2268004c     movea.l    $4c(a0), a1
0025a2: 4280         clr.l      d0
0025a4: 10290370     move.b     $370(a1), d0
0025a8: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0025ac: 4e75         rts        
0025ae: 48e740e0     movem.l    d1/a0-a2, -(a7)
0025b2: 207900000000 movea.l    $0.l, a0
0025b8: 2268004c     movea.l    $4c(a0), a1
0025bc: 81a90374     or.l       d0, $374(a1)
0025c0: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0025c4: 4e75         rts        
0025c6: 48e740e0     movem.l    d1/a0-a2, -(a7)
0025ca: 207900000000 movea.l    $0.l, a0
0025d0: 2268004c     movea.l    $4c(a0), a1
0025d4: 4480         neg.l      d0
0025d6: c1a90374     and.l      d0, $374(a1)
0025da: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0025de: 4e75         rts        
0025e0: 4e550000     link.w     a5, #$0
0025e4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0025e8: 70ff         moveq      #$ff, d0
0025ea: b0ae8912     cmp.l      -$76ee(a6), d0
0025ee: 6616         bne.b      $2606
0025f0: 7202         moveq      #$2, d1
0025f2: 41fa003a     lea.l      $262e(pc), a0
0025f6: 2008         move.l     a0, d0
0025f8: 6100021a     bsr.w      $2814
0025fc: 2d408912     move.l     d0, -$76ee(a6)
002600: 72ff         moveq      #$ff, d1
002602: b280         cmp.l      d0, d1
002604: 671c         beq.b      $2622
002606: 48780004     pea.l      $4.w
00260a: 222f0004     move.l     $4(a7), d1
00260e: 202e8912     move.l     -$76ee(a6), d0
002612: 61001258     bsr.w      $386c
002616: 588f         addq.l     #$4, a7
002618: 7204         moveq      #$4, d1
00261a: b280         cmp.l      d0, d1
00261c: 6604         bne.b      $2622
00261e: 7000         moveq      #$0, d0
002620: 6002         bra.b      $2624
002622: 70ff         moveq      #$ff, d0
002624: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00262a: 4e5d         unlk       a5
00262c: 4e75         rts        
00262e: 2f63302f     move.l     -(a3), $302f(a7)
002632: 5f313239     subq.b     #$7, $39(a1, d3.w)
002636: 5f2f7069     subq.b     #$7, $7069(a7)
00263a: 7065         moveq      #$65, d0
00263c: 2f64625f     move.l     -(a4), $625f(a7)
002640: 7376         .dc.w      $7376
002642: 5f70697065004e55 subq.w     #$7, $65004e55(a0, invalid.w)
00264a: 000048e7     ori.b      #$e7, d0
00264e: c080         and.l      d0, d0
002650: 518f         subq.l     #$8, a7
002652: 203c00000100 move.l     #$100, d0
002658: d0af0008     add.l      $8(a7), d0
00265c: 2e80         move.l     d0, (a7)
00265e: 1f6f000f0004 move.b     $f(a7), $4(a7)
002664: 202f001c     move.l     $1c(a7), d0
002668: e080         asr.l      #$8, d0
00266a: 1f400005     move.b     d0, $5(a7)
00266e: 1f6f001f0006 move.b     $1f(a7), $6(a7)
002674: 1f7c00ff0007 move.b     #$ff, $7(a7)
00267a: 41d7         lea.l      (a7), a0
00267c: 2008         move.l     a0, d0
00267e: 6146         bsr.b      $26c6
002680: 508f         addq.l     #$8, a7
002682: 4ced0100fffc movem.l    -$4(a5), a0
002688: 4e5d         unlk       a5
00268a: 4e75         rts        
00268c: 4e550000     link.w     a5, #$0
002690: 48e7c000     movem.l    d0-d1, -(a7)
002694: 2f2f0010     move.l     $10(a7), -(a7)
002698: 222f0008     move.l     $8(a7), d1
00269c: 202f0004     move.l     $4(a7), d0
0026a0: 61a6         bsr.b      $2648
0026a2: 588f         addq.l     #$4, a7
0026a4: 203c00002410 move.l     #$2410, d0
0026aa: 610000bc     bsr.w      $2768
0026ae: 4e5d         unlk       a5
0026b0: 4e75         rts        
0026b2: 4e550000     link.w     a5, #$0
0026b6: 48e78000     movem.l    d0, -(a7)
0026ba: 7000         moveq      #$0, d0
0026bc: 61001726     bsr.w      $3de4
0026c0: 60f8         bra.b      $26ba
0026c2: 4e5d         unlk       a5
0026c4: 4e75         rts        
0026c6: 4e550000     link.w     a5, #$0
0026ca: 48e7c080     movem.l    d0-d1/a0, -(a7)
0026ce: 4aae8916     tst.l      -$76ea(a6)
0026d2: 6c16         bge.b      $26ea
0026d4: 7203         moveq      #$3, d1
0026d6: 41fa002e     lea.l      $2706(pc), a0
0026da: 2008         move.l     a0, d0
0026dc: 61000136     bsr.w      $2814
0026e0: 2d408916     move.l     d0, -$76ea(a6)
0026e4: 6c04         bge.b      $26ea
0026e6: 70ff         moveq      #$ff, d0
0026e8: 6012         bra.b      $26fc
0026ea: 2f17         move.l     (a7), -(a7)
0026ec: 222e8916     move.l     -$76ea(a6), d1
0026f0: 203c00007f23 move.l     #$7f23, d0
0026f6: 61000f7a     bsr.w      $3672
0026fa: 588f         addq.l     #$4, a7
0026fc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002702: 4e5d         unlk       a5
002704: 4e75         rts        
002706: 2f636339     move.l     -(a3), $6339(a7)
00270a: 3300         move.w     d0, -(a1)
00270c: 4e550000     link.w     a5, #$0
002710: 48e7c080     movem.l    d0-d1/a0, -(a7)
002714: 518f         subq.l     #$8, a7
002716: 7201         moveq      #$1, d1
002718: 41fa00ce     lea.l      $27e8(pc), a0
00271c: 2008         move.l     a0, d0
00271e: 610000f4     bsr.w      $2814
002722: 2f400004     move.l     d0, $4(a7)
002726: 72ff         moveq      #$ff, d1
002728: b280         cmp.l      d0, d1
00272a: 6722         beq.b      $274e
00272c: 48780004     pea.l      $4.w
002730: 41ef0004     lea.l      $4(a7), a0
002734: 2208         move.l     a0, d1
002736: 202f0008     move.l     $8(a7), d0
00273a: 61001128     bsr.w      $3864
00273e: 588f         addq.l     #$4, a7
002740: 7204         moveq      #$4, d1
002742: b280         cmp.l      d0, d1
002744: 670c         beq.b      $2752
002746: 202f0004     move.l     $4(a7), d0
00274a: 61001134     bsr.w      $3880
00274e: 70ff         moveq      #$ff, d0
002750: 600a         bra.b      $275c
002752: 202f0004     move.l     $4(a7), d0
002756: 61001128     bsr.w      $3880
00275a: 2017         move.l     (a7), d0
00275c: 508f         addq.l     #$8, a7
00275e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002764: 4e5d         unlk       a5
002766: 4e75         rts        
002768: 4e550000     link.w     a5, #$0
00276c: 48e7c000     movem.l    d0-d1, -(a7)
002770: 2217         move.l     (a7), d1
002772: 6198         bsr.b      $270c
002774: 610003c6     bsr.w      $2b3c
002778: 72ff         moveq      #$ff, d1
00277a: b280         cmp.l      d0, d1
00277c: 4ced0002fffc movem.l    -$4(a5), d1
002782: 4e5d         unlk       a5
002784: 4e75         rts        
002786: 4e550000     link.w     a5, #$0
00278a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00278e: 518f         subq.l     #$8, a7
002790: 7202         moveq      #$2, d1
002792: 41fa006a     lea.l      $27fe(pc), a0
002796: 2008         move.l     a0, d0
002798: 6100007a     bsr.w      $2814
00279c: 2f400004     move.l     d0, $4(a7)
0027a0: 72ff         moveq      #$ff, d1
0027a2: b280         cmp.l      d0, d1
0027a4: 6728         beq.b      $27ce
0027a6: 610018e8     bsr.w      $4090
0027aa: 2e80         move.l     d0, (a7)
0027ac: 48780004     pea.l      $4.w
0027b0: 41ef0004     lea.l      $4(a7), a0
0027b4: 2208         move.l     a0, d1
0027b6: 202f0008     move.l     $8(a7), d0
0027ba: 610010b0     bsr.w      $386c
0027be: 588f         addq.l     #$4, a7
0027c0: 7204         moveq      #$4, d1
0027c2: b280         cmp.l      d0, d1
0027c4: 670c         beq.b      $27d2
0027c6: 202f0004     move.l     $4(a7), d0
0027ca: 610010b4     bsr.w      $3880
0027ce: 70ff         moveq      #$ff, d0
0027d0: 600a         bra.b      $27dc
0027d2: 202f0004     move.l     $4(a7), d0
0027d6: 610010a8     bsr.w      $3880
0027da: 7000         moveq      #$0, d0
0027dc: 508f         addq.l     #$8, a7
0027de: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0027e4: 4e5d         unlk       a5
0027e6: 4e75         rts        
0027e8: 2f63302f     move.l     -(a3), $302f(a7)
0027ec: 5f313239     subq.b     #$7, $39(a1, d3.w)
0027f0: 5f2f7061     subq.b     #$7, $7061(a7)
0027f4: 636b         bls.b      $2861
0027f6: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
0027fc: 64002f63     bcc.w      $5761
002800: 302f5f31     move.w     $5f31(a7), d0
002804: 32395f2f7061 move.w     $5f2f7061.l, d1
00280a: 636b         bls.b      $2877
00280c: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
002812: 64004e55     bcc.w      $7669
002816: 000048e7     ori.b      #$e7, d0
00281a: c000         and.b      d0, d0
00281c: 42a7         clr.l      -(a7)
00281e: 222f0008     move.l     $8(a7), d1
002822: 202f0004     move.l     $4(a7), d0
002826: 613e         bsr.b      $2866
002828: 588f         addq.l     #$4, a7
00282a: 4e5d         unlk       a5
00282c: 4e75         rts        
00282e: 4e550000     link.w     a5, #$0
002832: 48e7c000     movem.l    d0-d1, -(a7)
002836: 48780001     pea.l      $1.w
00283a: 222f0008     move.l     $8(a7), d1
00283e: 202f0004     move.l     $4(a7), d0
002842: 6122         bsr.b      $2866
002844: 588f         addq.l     #$4, a7
002846: 4e5d         unlk       a5
002848: 4e75         rts        
00284a: 4e550000     link.w     a5, #$0
00284e: 48e7c000     movem.l    d0-d1, -(a7)
002852: 48780002     pea.l      $2.w
002856: 222f0008     move.l     $8(a7), d1
00285a: 202f0004     move.l     $4(a7), d0
00285e: 6106         bsr.b      $2866
002860: 588f         addq.l     #$4, a7
002862: 4e5d         unlk       a5
002864: 4e75         rts        
002866: 4e550000     link.w     a5, #$0
00286a: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
00286e: 4fefffda     lea.l      -$26(a7), a7
002872: 41ef0008     lea.l      $8(a7), a0
002876: 2208         move.l     a0, d1
002878: 202f0026     move.l     $26(a7), d0
00287c: 61000ad4     bsr.w      $3352
002880: 2440         movea.l    d0, a2
002882: 4a80         tst.l      d0
002884: 67000108     beq.w      $298e
002888: 41ef0008     lea.l      $8(a7), a0
00288c: 2008         move.l     a0, d0
00288e: 61000b08     bsr.w      $3398
002892: 2f400004     move.l     d0, $4(a7)
002896: 6d0000f6     blt.w      $298e
00289a: 41ef0022     lea.l      $22(a7), a0
00289e: 2208         move.l     a0, d1
0028a0: 200a         move.l     a2, d0
0028a2: 61000b7a     bsr.w      $341e
0028a6: 2440         movea.l    d0, a2
0028a8: 4a80         tst.l      d0
0028aa: 670000e2     beq.w      $298e
0028ae: 202f0004     move.l     $4(a7), d0
0028b2: e588         lsl.l      #$2, d0
0028b4: 41ee8960     lea.l      -$76a0(a6), a0
0028b8: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0028be: 6600009a     bne.w      $295a
0028c2: 7203         moveq      #$3, d1
0028c4: 41ef0008     lea.l      $8(a7), a0
0028c8: 2008         move.l     a0, d0
0028ca: 61000f84     bsr.w      $3850
0028ce: 222f0004     move.l     $4(a7), d1
0028d2: e589         lsl.l      #$2, d1
0028d4: 41ee8960     lea.l      -$76a0(a6), a0
0028d8: 31801800     move.w     d0, (a0, d1.l)
0028dc: 6d0000ca     blt.w      $29a8
0028e0: 202f0004     move.l     $4(a7), d0
0028e4: e588         lsl.l      #$2, d0
0028e6: 41ee8960     lea.l      -$76a0(a6), a0
0028ea: 2400         move.l     d0, d2
0028ec: 42a7         clr.l      -(a7)
0028ee: 202f0008     move.l     $8(a7), d0
0028f2: e588         lsl.l      #$2, d0
0028f4: 43ee8960     lea.l      -$76a0(a6), a1
0028f8: 32710800     movea.w    (a1, d0.l), a1
0028fc: 2209         move.l     a1, d1
0028fe: 203c0000ff0e move.l     #$ff0e, d0
002904: 61000d08     bsr.w      $360e
002908: 588f         addq.l     #$4, a7
00290a: 2240         movea.l    d0, a1
00290c: 7000         moveq      #$0, d0
00290e: 1011         move.b     (a1), d0
002910: 31802802     move.w     d0, $2(a0, d2.l)
002914: 202f0004     move.l     $4(a7), d0
002918: e588         lsl.l      #$2, d0
00291a: 41ee8960     lea.l      -$76a0(a6), a0
00291e: 4a700800     tst.w      (a0, d0.l)
002922: 6d36         blt.b      $295a
002924: 202f0004     move.l     $4(a7), d0
002928: e588         lsl.l      #$2, d0
00292a: 41ee8960     lea.l      -$76a0(a6), a0
00292e: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
002934: 6c24         bge.b      $295a
002936: 202f0004     move.l     $4(a7), d0
00293a: e588         lsl.l      #$2, d0
00293c: 41ee8960     lea.l      -$76a0(a6), a0
002940: 30700800     movea.w    (a0, d0.l), a0
002944: 2008         move.l     a0, d0
002946: 61000f38     bsr.w      $3880
00294a: 202f0004     move.l     $4(a7), d0
00294e: e588         lsl.l      #$2, d0
002950: 41ee8960     lea.l      -$76a0(a6), a0
002954: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
00295a: 202f0004     move.l     $4(a7), d0
00295e: e588         lsl.l      #$2, d0
002960: 41ee8960     lea.l      -$76a0(a6), a0
002964: 30300802     move.w     $2(a0, d0.l), d0
002968: 48c0         ext.l      d0
00296a: b0af0022     cmp.l      $22(a7), d0
00296e: 661e         bne.b      $298e
002970: 0c12005f     cmpi.b     #$5f, (a2)
002974: 6610         bne.b      $2986
002976: 6004         bra.b      $297c
002978: 4a12         tst.b      (a2)
00297a: 672c         beq.b      $29a8
00297c: 528a         addq.l     #$1, a2
00297e: 0c12005f     cmpi.b     #$5f, (a2)
002982: 66f4         bne.b      $2978
002984: 528a         addq.l     #$1, a2
002986: 222f002a     move.l     $2a(a7), d1
00298a: 200a         move.l     a2, d0
00298c: 6008         bra.b      $2996
00298e: 222f002a     move.l     $2a(a7), d1
002992: 202f0026     move.l     $26(a7), d0
002996: 242f004e     move.l     $4e(a7), d2
00299a: e58a         lsl.l      #$2, d2
00299c: 41ee891a     lea.l      -$76e6(a6), a0
0029a0: 20702800     movea.l    (a0, d2.l), a0
0029a4: 4e90         jsr        (a0)
0029a6: 6002         bra.b      $29aa
0029a8: 70ff         moveq      #$ff, d0
0029aa: 4fef0026     lea.l      $26(a7), a7
0029ae: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
0029b4: 4e5d         unlk       a5
0029b6: 4e75         rts        
0029b8: 4e550000     link.w     a5, #$0
0029bc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0029c0: 2f2f0018     move.l     $18(a7), -(a7)
0029c4: 306f001a     movea.w    $1a(a7), a0
0029c8: 2f08         move.l     a0, -(a7)
0029ca: 222f000c     move.l     $c(a7), d1
0029ce: 202f0008     move.l     $8(a7), d0
0029d2: 610c         bsr.b      $29e0
0029d4: 508f         addq.l     #$8, a7
0029d6: 4ced0100fffc movem.l    -$4(a5), a0
0029dc: 4e5d         unlk       a5
0029de: 4e75         rts        
0029e0: 4e550000     link.w     a5, #$0
0029e4: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
0029e8: 4fefffda     lea.l      -$26(a7), a7
0029ec: 41ef0008     lea.l      $8(a7), a0
0029f0: 2208         move.l     a0, d1
0029f2: 202f0026     move.l     $26(a7), d0
0029f6: 6100095a     bsr.w      $3352
0029fa: 2440         movea.l    d0, a2
0029fc: 4a80         tst.l      d0
0029fe: 67000112     beq.w      $2b12
002a02: 41ef0008     lea.l      $8(a7), a0
002a06: 2008         move.l     a0, d0
002a08: 6100098e     bsr.w      $3398
002a0c: 2f400004     move.l     d0, $4(a7)
002a10: 6d000100     blt.w      $2b12
002a14: 41ef0022     lea.l      $22(a7), a0
002a18: 2208         move.l     a0, d1
002a1a: 200a         move.l     a2, d0
002a1c: 61000a00     bsr.w      $341e
002a20: 2440         movea.l    d0, a2
002a22: 4a80         tst.l      d0
002a24: 670000ec     beq.w      $2b12
002a28: 202f0004     move.l     $4(a7), d0
002a2c: e588         lsl.l      #$2, d0
002a2e: 41ee8960     lea.l      -$76a0(a6), a0
002a32: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
002a38: 6600009a     bne.w      $2ad4
002a3c: 7203         moveq      #$3, d1
002a3e: 41ef0008     lea.l      $8(a7), a0
002a42: 2008         move.l     a0, d0
002a44: 61000e0a     bsr.w      $3850
002a48: 222f0004     move.l     $4(a7), d1
002a4c: e589         lsl.l      #$2, d1
002a4e: 41ee8960     lea.l      -$76a0(a6), a0
002a52: 31801800     move.w     d0, (a0, d1.l)
002a56: 6d0000d4     blt.w      $2b2c
002a5a: 202f0004     move.l     $4(a7), d0
002a5e: e588         lsl.l      #$2, d0
002a60: 41ee8960     lea.l      -$76a0(a6), a0
002a64: 2400         move.l     d0, d2
002a66: 42a7         clr.l      -(a7)
002a68: 202f0008     move.l     $8(a7), d0
002a6c: e588         lsl.l      #$2, d0
002a6e: 43ee8960     lea.l      -$76a0(a6), a1
002a72: 32710800     movea.w    (a1, d0.l), a1
002a76: 2209         move.l     a1, d1
002a78: 203c0000ff0e move.l     #$ff0e, d0
002a7e: 61000b8e     bsr.w      $360e
002a82: 588f         addq.l     #$4, a7
002a84: 2240         movea.l    d0, a1
002a86: 7000         moveq      #$0, d0
002a88: 1011         move.b     (a1), d0
002a8a: 31802802     move.w     d0, $2(a0, d2.l)
002a8e: 202f0004     move.l     $4(a7), d0
002a92: e588         lsl.l      #$2, d0
002a94: 41ee8960     lea.l      -$76a0(a6), a0
002a98: 4a700800     tst.w      (a0, d0.l)
002a9c: 6d36         blt.b      $2ad4
002a9e: 202f0004     move.l     $4(a7), d0
002aa2: e588         lsl.l      #$2, d0
002aa4: 41ee8960     lea.l      -$76a0(a6), a0
002aa8: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
002aae: 6c24         bge.b      $2ad4
002ab0: 202f0004     move.l     $4(a7), d0
002ab4: e588         lsl.l      #$2, d0
002ab6: 41ee8960     lea.l      -$76a0(a6), a0
002aba: 30700800     movea.w    (a0, d0.l), a0
002abe: 2008         move.l     a0, d0
002ac0: 61000dbe     bsr.w      $3880
002ac4: 202f0004     move.l     $4(a7), d0
002ac8: e588         lsl.l      #$2, d0
002aca: 41ee8960     lea.l      -$76a0(a6), a0
002ace: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
002ad4: 202f0004     move.l     $4(a7), d0
002ad8: e588         lsl.l      #$2, d0
002ada: 41ee8960     lea.l      -$76a0(a6), a0
002ade: 30300802     move.w     $2(a0, d0.l), d0
002ae2: 48c0         ext.l      d0
002ae4: b0af0022     cmp.l      $22(a7), d0
002ae8: 6628         bne.b      $2b12
002aea: 0c12005f     cmpi.b     #$5f, (a2)
002aee: 6610         bne.b      $2b00
002af0: 6004         bra.b      $2af6
002af2: 4a12         tst.b      (a2)
002af4: 6736         beq.b      $2b2c
002af6: 528a         addq.l     #$1, a2
002af8: 0c12005f     cmpi.b     #$5f, (a2)
002afc: 66f4         bne.b      $2af2
002afe: 528a         addq.l     #$1, a2
002b00: 2f2f0052     move.l     $52(a7), -(a7)
002b04: 306f0054     movea.w    $54(a7), a0
002b08: 2f08         move.l     a0, -(a7)
002b0a: 222f0032     move.l     $32(a7), d1
002b0e: 200a         move.l     a2, d0
002b10: 6012         bra.b      $2b24
002b12: 2f2f0052     move.l     $52(a7), -(a7)
002b16: 306f0054     movea.w    $54(a7), a0
002b1a: 2f08         move.l     a0, -(a7)
002b1c: 222f0032     move.l     $32(a7), d1
002b20: 202f002e     move.l     $2e(a7), d0
002b24: 61000d22     bsr.w      $3848
002b28: 508f         addq.l     #$8, a7
002b2a: 6002         bra.b      $2b2e
002b2c: 70ff         moveq      #$ff, d0
002b2e: 4fef0026     lea.l      $26(a7), a7
002b32: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
002b38: 4e5d         unlk       a5
002b3a: 4e75         rts        
002b3c: 4e550000     link.w     a5, #$0
002b40: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
002b44: 4fefffc8     lea.l      -$38(a7), a7
002b48: 2f6f00380008 move.l     $38(a7), $8(a7)
002b4e: 4a2f0009     tst.b      $9(a7)
002b52: 660e         bne.b      $2b62
002b54: 306f003e     movea.w    $3e(a7), a0
002b58: 2208         move.l     a0, d1
002b5a: 202f0008     move.l     $8(a7), d0
002b5e: 600000c8     bra.w      $2c28
002b62: 4aae892a     tst.l      -$76d6(a6)
002b66: 6608         bne.b      $2b70
002b68: 61000a80     bsr.w      $35ea
002b6c: 2d40892a     move.l     d0, -$76d6(a6)
002b70: 7000         moveq      #$0, d0
002b72: 102f0008     move.b     $8(a7), d0
002b76: e588         lsl.l      #$2, d0
002b78: 41ee8960     lea.l      -$76a0(a6), a0
002b7c: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
002b82: 66000080     bne.w      $2c04
002b86: 7000         moveq      #$0, d0
002b88: 102f0008     move.b     $8(a7), d0
002b8c: e588         lsl.l      #$2, d0
002b8e: 206e892a     movea.l    -$76d6(a6), a0
002b92: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
002b96: 41fa016e     lea.l      $2d06(pc), a0
002b9a: 2208         move.l     a0, d1
002b9c: 41ef001c     lea.l      $1c(a7), a0
002ba0: 2008         move.l     a0, d0
002ba2: 61000c6c     bsr.w      $3810
002ba6: 588f         addq.l     #$4, a7
002ba8: 7203         moveq      #$3, d1
002baa: 41ef0018     lea.l      $18(a7), a0
002bae: 2008         move.l     a0, d0
002bb0: 61000c9e     bsr.w      $3850
002bb4: 7200         moveq      #$0, d1
002bb6: 122f0008     move.b     $8(a7), d1
002bba: e589         lsl.l      #$2, d1
002bbc: 41ee8960     lea.l      -$76a0(a6), a0
002bc0: 31801800     move.w     d0, (a0, d1.l)
002bc4: 6c06         bge.b      $2bcc
002bc6: 70ff         moveq      #$ff, d0
002bc8: 6000012e     bra.w      $2cf8
002bcc: 7000         moveq      #$0, d0
002bce: 102f0008     move.b     $8(a7), d0
002bd2: e588         lsl.l      #$2, d0
002bd4: 41ee8960     lea.l      -$76a0(a6), a0
002bd8: 2400         move.l     d0, d2
002bda: 42a7         clr.l      -(a7)
002bdc: 7000         moveq      #$0, d0
002bde: 102f000c     move.b     $c(a7), d0
002be2: e588         lsl.l      #$2, d0
002be4: 43ee8960     lea.l      -$76a0(a6), a1
002be8: 32710800     movea.w    (a1, d0.l), a1
002bec: 2209         move.l     a1, d1
002bee: 203c0000ff0e move.l     #$ff0e, d0
002bf4: 61000a18     bsr.w      $360e
002bf8: 588f         addq.l     #$4, a7
002bfa: 2240         movea.l    d0, a1
002bfc: 7000         moveq      #$0, d0
002bfe: 1011         move.b     (a1), d0
002c00: 31802802     move.w     d0, $2(a0, d2.l)
002c04: 7000         moveq      #$0, d0
002c06: 102f0008     move.b     $8(a7), d0
002c0a: e588         lsl.l      #$2, d0
002c0c: 41ee8960     lea.l      -$76a0(a6), a0
002c10: 7200         moveq      #$0, d1
002c12: 122f0009     move.b     $9(a7), d1
002c16: b2700802     cmp.w      $2(a0, d0.l), d1
002c1a: 6614         bne.b      $2c30
002c1c: 306f003e     movea.w    $3e(a7), a0
002c20: 2208         move.l     a0, d1
002c22: 7000         moveq      #$0, d0
002c24: 302f000a     move.w     $a(a7), d0
002c28: 610013a8     bsr.w      $3fd2
002c2c: 600000ca     bra.w      $2cf8
002c30: 4aae8926     tst.l      -$76da(a6)
002c34: 661a         bne.b      $2c50
002c36: 61001458     bsr.w      $4090
002c3a: 2d408926     move.l     d0, -$76da(a6)
002c3e: 2d7c0001000083c6 move.l     #$10000, -$7c3a(a6)
002c46: 2d6e892683ca move.l     -$76da(a6), -$7c36(a6)
002c4c: 42ae83c2     clr.l      -$7c3e(a6)
002c50: 7001         moveq      #$1, d0
002c52: 2d4083e2     move.l     d0, -$7c1e(a6)
002c56: 7008         moveq      #$8, d0
002c58: 2d4083e6     move.l     d0, -$7c1a(a6)
002c5c: 41d7         lea.l      (a7), a0
002c5e: 2d4883ea     move.l     a0, -$7c16(a6)
002c62: 41ee83be     lea.l      -$7c42(a6), a0
002c66: 2d4883f2     move.l     a0, -$7c0e(a6)
002c6a: 7018         moveq      #$18, d0
002c6c: 2d4083ee     move.l     d0, -$7c12(a6)
002c70: 7000         moveq      #$0, d0
002c72: 302f000a     move.w     $a(a7), d0
002c76: 2d4083ce     move.l     d0, -$7c32(a6)
002c7a: 306f003e     movea.w    $3e(a7), a0
002c7e: 2d4883d2     move.l     a0, -$7c2e(a6)
002c82: 1d6f000983c1 move.b     $9(a7), -$7c3f(a6)
002c88: 422e83c2     clr.b      -$7c3e(a6)
002c8c: 486e83e2     pea.l      -$7c1e(a6)
002c90: 7000         moveq      #$0, d0
002c92: 102f000c     move.b     $c(a7), d0
002c96: e588         lsl.l      #$2, d0
002c98: 41ee8960     lea.l      -$76a0(a6), a0
002c9c: 30700800     movea.w    (a0, d0.l), a0
002ca0: 2208         move.l     a0, d1
002ca2: 203c0000ff05 move.l     #$ff05, d0
002ca8: 610009c8     bsr.w      $3672
002cac: 588f         addq.l     #$4, a7
002cae: 2f400010     move.l     d0, $10(a7)
002cb2: 6c08         bge.b      $2cbc
002cb4: 70ff         moveq      #$ff, d0
002cb6: 2f40000c     move.l     d0, $c(a7)
002cba: 6038         bra.b      $2cf4
002cbc: 2f2f0010     move.l     $10(a7), -(a7)
002cc0: 7000         moveq      #$0, d0
002cc2: 102f000c     move.b     $c(a7), d0
002cc6: e588         lsl.l      #$2, d0
002cc8: 41ee8960     lea.l      -$76a0(a6), a0
002ccc: 30700800     movea.w    (a0, d0.l), a0
002cd0: 2208         move.l     a0, d1
002cd2: 203c0000ff06 move.l     #$ff06, d0
002cd8: 61000998     bsr.w      $3672
002cdc: 588f         addq.l     #$4, a7
002cde: 2f40000c     move.l     d0, $c(a7)
002ce2: 6dd0         blt.b      $2cb4
002ce4: 2f6f0004000c move.l     $4(a7), $c(a7)
002cea: 4aaf0004     tst.l      $4(a7)
002cee: 6c04         bge.b      $2cf4
002cf0: 2d57800c     move.l     (a7), -$7ff4(a6)
002cf4: 202f000c     move.l     $c(a7), d0
002cf8: 4fef0038     lea.l      $38(a7), a7
002cfc: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
002d02: 4e5d         unlk       a5
002d04: 4e75         rts        
002d06: 2f25         move.l     -(a5), -(a7)
002d08: 7300         .dc.w      $7300
002d0a: 4e550000     link.w     a5, #$0
002d0e: 48e7c080     movem.l    d0-d1/a0, -(a7)
002d12: 7002         moveq      #$2, d0
002d14: b0ae892e     cmp.l      -$76d2(a6), d0
002d18: 6c0c         bge.b      $2d26
002d1a: 2217         move.l     (a7), d1
002d1c: 41fa052c     lea.l      $324a(pc), a0
002d20: 2008         move.l     a0, d0
002d22: 61000ae4     bsr.w      $3808
002d26: 0c9700000106 cmpi.l     #$106, (a7)
002d2c: 6608         bne.b      $2d36
002d2e: 7001         moveq      #$1, d0
002d30: 2d4083fe     move.l     d0, -$7c02(a6)
002d34: 600e         bra.b      $2d44
002d36: 4aae8402     tst.l      -$7bfe(a6)
002d3a: 6708         beq.b      $2d44
002d3c: 2017         move.l     (a7), d0
002d3e: 206e8402     movea.l    -$7bfe(a6), a0
002d42: 4e90         jsr        (a0)
002d44: 7000         moveq      #$0, d0
002d46: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002d4c: 4e5d         unlk       a5
002d4e: 4e75         rts        
002d50: 4e550000     link.w     a5, #$0
002d54: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
002d58: 4fefff58     lea.l      -$a8(a7), a7
002d5c: 6010         bra.b      $2d6e
002d5e: 08ef000600de bset.b     #$6, $de(a7)
002d64: 601c         bra.b      $2d82
002d66: 08ef000700de bset.b     #$7, $de(a7)
002d6c: 6014         bra.b      $2d82
002d6e: 202f00e0     move.l     $e0(a7), d0
002d72: 0c80a95acd81 cmpi.l     #$a95acd81, d0
002d78: 67e4         beq.b      $2d5e
002d7a: 0c80a95acd82 cmpi.l     #$a95acd82, d0
002d80: 67e4         beq.b      $2d66
002d82: 41ef0094     lea.l      $94(a7), a0
002d86: 2208         move.l     a0, d1
002d88: 202f00ac     move.l     $ac(a7), d0
002d8c: 610005c4     bsr.w      $3352
002d90: 2f400028     move.l     d0, $28(a7)
002d94: 6700015c     beq.w      $2ef2
002d98: 206f0028     movea.l    $28(a7), a0
002d9c: 0c10005f     cmpi.b     #$5f, (a0)
002da0: 66000150     bne.w      $2ef2
002da4: 2f6f002800ac move.l     $28(a7), $ac(a7)
002daa: 2d6f00ac894a move.l     $ac(a7), -$76b6(a6)
002db0: 41ef0094     lea.l      $94(a7), a0
002db4: 2d48893e     move.l     a0, -$76c2(a6)
002db8: 41ef0094     lea.l      $94(a7), a0
002dbc: 2008         move.l     a0, d0
002dbe: 610005d8     bsr.w      $3398
002dc2: 3f40002c     move.w     d0, $2c(a7)
002dc6: 6c0c         bge.b      $2dd4
002dc8: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
002dd0: 60000242     bra.w      $3014
002dd4: 422f0052     clr.b      $52(a7)
002dd8: 41ef0046     lea.l      $46(a7), a0
002ddc: 2208         move.l     a0, d1
002dde: 202f00ac     move.l     $ac(a7), d0
002de2: 6100063a     bsr.w      $341e
002de6: 2f400028     move.l     d0, $28(a7)
002dea: 67000106     beq.w      $2ef2
002dee: 1f6f00490051 move.b     $49(a7), $51(a7)
002df4: 2f6f002800ac move.l     $28(a7), $ac(a7)
002dfa: 302f002c     move.w     $2c(a7), d0
002dfe: 48c0         ext.l      d0
002e00: e588         lsl.l      #$2, d0
002e02: 41ee8960     lea.l      -$76a0(a6), a0
002e06: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
002e0c: 660000b6     bne.w      $2ec4
002e10: 486f0094     pea.l      $94(a7)
002e14: 41fa0464     lea.l      $327a(pc), a0
002e18: 2208         move.l     a0, d1
002e1a: 41ef0078     lea.l      $78(a7), a0
002e1e: 2008         move.l     a0, d0
002e20: 610009ee     bsr.w      $3810
002e24: 588f         addq.l     #$4, a7
002e26: 7001         moveq      #$1, d0
002e28: b0ae892e     cmp.l      -$76d2(a6), d0
002e2c: 6c10         bge.b      $2e3e
002e2e: 41ef0074     lea.l      $74(a7), a0
002e32: 2208         move.l     a0, d1
002e34: 41fa0447     lea.l      $327d(pc), a0
002e38: 2008         move.l     a0, d0
002e3a: 610009cc     bsr.w      $3808
002e3e: 7203         moveq      #$3, d1
002e40: 41ef0074     lea.l      $74(a7), a0
002e44: 2008         move.l     a0, d0
002e46: 61000a08     bsr.w      $3850
002e4a: 322f002c     move.w     $2c(a7), d1
002e4e: 48c1         ext.l      d1
002e50: e589         lsl.l      #$2, d1
002e52: 41ee8960     lea.l      -$76a0(a6), a0
002e56: 31801800     move.w     d0, (a0, d1.l)
002e5a: 6c30         bge.b      $2e8c
002e5c: 7001         moveq      #$1, d0
002e5e: b0ae892e     cmp.l      -$76d2(a6), d0
002e62: 6c0001b0     bge.w      $3014
002e66: 302f002c     move.w     $2c(a7), d0
002e6a: 48c0         ext.l      d0
002e6c: e588         lsl.l      #$2, d0
002e6e: 41ee8960     lea.l      -$76a0(a6), a0
002e72: 30700800     movea.w    (a0, d0.l), a0
002e76: 2f08         move.l     a0, -(a7)
002e78: 222f004a     move.l     $4a(a7), d1
002e7c: 41fa0418     lea.l      $3296(pc), a0
002e80: 2008         move.l     a0, d0
002e82: 61000984     bsr.w      $3808
002e86: 588f         addq.l     #$4, a7
002e88: 6000018a     bra.w      $3014
002e8c: 302f002c     move.w     $2c(a7), d0
002e90: 48c0         ext.l      d0
002e92: e588         lsl.l      #$2, d0
002e94: 41ee8960     lea.l      -$76a0(a6), a0
002e98: 2400         move.l     d0, d2
002e9a: 42a7         clr.l      -(a7)
002e9c: 302f0030     move.w     $30(a7), d0
002ea0: 48c0         ext.l      d0
002ea2: e588         lsl.l      #$2, d0
002ea4: 43ee8960     lea.l      -$76a0(a6), a1
002ea8: 32710800     movea.w    (a1, d0.l), a1
002eac: 2209         move.l     a1, d1
002eae: 203c0000ff0e move.l     #$ff0e, d0
002eb4: 61000758     bsr.w      $360e
002eb8: 588f         addq.l     #$4, a7
002eba: 2240         movea.l    d0, a1
002ebc: 7000         moveq      #$0, d0
002ebe: 1011         move.b     (a1), d0
002ec0: 31802802     move.w     d0, $2(a0, d2.l)
002ec4: 302f002c     move.w     $2c(a7), d0
002ec8: 48c0         ext.l      d0
002eca: e588         lsl.l      #$2, d0
002ecc: 41ee8960     lea.l      -$76a0(a6), a0
002ed0: 30300802     move.w     $2(a0, d0.l), d0
002ed4: 48c0         ext.l      d0
002ed6: b0af0046     cmp.l      $46(a7), d0
002eda: 6642         bne.b      $2f1e
002edc: 7001         moveq      #$1, d0
002ede: b0ae892e     cmp.l      -$76d2(a6), d0
002ee2: 6c0e         bge.b      $2ef2
002ee4: 222f00ac     move.l     $ac(a7), d1
002ee8: 41fa03bf     lea.l      $32a9(pc), a0
002eec: 2008         move.l     a0, d0
002eee: 61000918     bsr.w      $3808
002ef2: 306f00de     movea.w    $de(a7), a0
002ef6: 2f08         move.l     a0, -(a7)
002ef8: 306f00de     movea.w    $de(a7), a0
002efc: 2f08         move.l     a0, -(a7)
002efe: 2f2f00dc     move.l     $dc(a7), -(a7)
002f02: 2f2f00dc     move.l     $dc(a7), -(a7)
002f06: 2f2f00dc     move.l     $dc(a7), -(a7)
002f0a: 222f00c0     move.l     $c0(a7), d1
002f0e: 202f00bc     move.l     $bc(a7), d0
002f12: 6100098c     bsr.w      $38a0
002f16: 4fef0014     lea.l      $14(a7), a7
002f1a: 6000030a     bra.w      $3226
002f1e: 4a6e8952     tst.w      -$76ae(a6)
002f22: 6608         bne.b      $2f2c
002f24: 6100116a     bsr.w      $4090
002f28: 3d408952     move.w     d0, -$76ae(a6)
002f2c: 42ae8402     clr.l      -$7bfe(a6)
002f30: 306e8952     movea.w    -$76ae(a6), a0
002f34: 2008         move.l     a0, d0
002f36: 6100068c     bsr.w      $35c4
002f3a: 2d408402     move.l     d0, -$7bfe(a6)
002f3e: 7001         moveq      #$1, d0
002f40: b0ae892e     cmp.l      -$76d2(a6), d0
002f44: 6c0e         bge.b      $2f54
002f46: 222e8402     move.l     -$7bfe(a6), d1
002f4a: 41fa0384     lea.l      $32d0(pc), a0
002f4e: 2008         move.l     a0, d0
002f50: 610008b6     bsr.w      $3808
002f54: 41fafdb4     lea.l      $2d0a(pc), a0
002f58: 2008         move.l     a0, d0
002f5a: 610002d8     bsr.w      $3234
002f5e: 306f00de     movea.w    $de(a7), a0
002f62: 2f08         move.l     a0, -(a7)
002f64: 42a7         clr.l      -(a7)
002f66: 42a7         clr.l      -(a7)
002f68: 2f2f00dc     move.l     $dc(a7), -(a7)
002f6c: 486e8932     pea.l      -$76ce(a6)
002f70: 41fa0374     lea.l      $32e6(pc), a0
002f74: 2208         move.l     a0, d1
002f76: 41fa10bc     lea.l      $4034(pc), a0
002f7a: 2008         move.l     a0, d0
002f7c: 61000922     bsr.w      $38a0
002f80: 4fef0014     lea.l      $14(a7), a7
002f84: 2f40005e     move.l     d0, $5e(a7)
002f88: 6f00008a     ble.w      $3014
002f8c: 2f7c000200000056 move.l     #$20000, $56(a7)
002f94: 42af005a     clr.l      $5a(a7)
002f98: 2f6f00d40062 move.l     $d4(a7), $62(a7)
002f9e: 3f6f00da0066 move.w     $da(a7), $66(a7)
002fa4: 3f6f00de0068 move.w     $de(a7), $68(a7)
002faa: 3f6f002c006c move.w     $2c(a7), $6c(a7)
002fb0: 3f6e8952006a move.w     -$76ae(a6), $6a(a7)
002fb6: 7001         moveq      #$1, d0
002fb8: 2f40004a     move.l     d0, $4a(a7)
002fbc: 42af0042     clr.l      $42(a7)
002fc0: 6004         bra.b      $2fc6
002fc2: 52af004a     addq.l     #$1, $4a(a7)
002fc6: 202f0042     move.l     $42(a7), d0
002fca: 52af0042     addq.l     #$1, $42(a7)
002fce: e588         lsl.l      #$2, d0
002fd0: 206f00cc     movea.l    $cc(a7), a0
002fd4: 4ab00800     tst.l      (a0, d0.l)
002fd8: 66e8         bne.b      $2fc2
002fda: 52af004a     addq.l     #$1, $4a(a7)
002fde: 42af0042     clr.l      $42(a7)
002fe2: 6004         bra.b      $2fe8
002fe4: 52af004a     addq.l     #$1, $4a(a7)
002fe8: 202f0042     move.l     $42(a7), d0
002fec: 52af0042     addq.l     #$1, $42(a7)
002ff0: e588         lsl.l      #$2, d0
002ff2: 206f00d0     movea.l    $d0(a7), a0
002ff6: 4ab00800     tst.l      (a0, d0.l)
002ffa: 66e8         bne.b      $2fe4
002ffc: 52af004a     addq.l     #$1, $4a(a7)
003000: 202f004a     move.l     $4a(a7), d0
003004: e788         lsl.l      #$3, d0
003006: 7214         moveq      #$14, d1
003008: d081         add.l      d1, d0
00300a: 610008b8     bsr.w      $38c4
00300e: 2440         movea.l    d0, a2
003010: 4a80         tst.l      d0
003012: 6606         bne.b      $301a
003014: 70ff         moveq      #$ff, d0
003016: 6000020e     bra.w      $3226
00301a: 202f004a     move.l     $4a(a7), d0
00301e: 5280         addq.l     #$1, d0
003020: 2480         move.l     d0, (a2)
003022: 257c000000080004 move.l     #$8, $4(a2)
00302a: 41ef0020     lea.l      $20(a7), a0
00302e: 25480008     move.l     a0, $8(a2)
003032: 700c         moveq      #$c, d0
003034: d08a         add.l      a2, d0
003036: 2640         movea.l    d0, a3
003038: 41ef004e     lea.l      $4e(a7), a0
00303c: 27480004     move.l     a0, $4(a3)
003040: 26bc00000020 move.l     #$20, (a3)
003046: 508b         addq.l     #$8, a3
003048: 276f00ac0004 move.l     $ac(a7), $4(a3)
00304e: 202f00ac     move.l     $ac(a7), d0
003052: 6100099e     bsr.w      $39f2
003056: 5280         addq.l     #$1, d0
003058: 2680         move.l     d0, (a3)
00305a: 508b         addq.l     #$8, a3
00305c: 42af0042     clr.l      $42(a7)
003060: 605a         bra.b      $30bc
003062: 7001         moveq      #$1, d0
003064: b0ae892e     cmp.l      -$76d2(a6), d0
003068: 6c26         bge.b      $3090
00306a: 222f0042     move.l     $42(a7), d1
00306e: 41fa027d     lea.l      $32ed(pc), a0
003072: 2008         move.l     a0, d0
003074: 61000792     bsr.w      $3808
003078: 202f0042     move.l     $42(a7), d0
00307c: e588         lsl.l      #$2, d0
00307e: 206f00cc     movea.l    $cc(a7), a0
003082: 22300800     move.l     (a0, d0.l), d1
003086: 41fa0285     lea.l      $330d(pc), a0
00308a: 2008         move.l     a0, d0
00308c: 6100077a     bsr.w      $3808
003090: 202f0042     move.l     $42(a7), d0
003094: e588         lsl.l      #$2, d0
003096: 206f00cc     movea.l    $cc(a7), a0
00309a: 277008000004 move.l     (a0, d0.l), $4(a3)
0030a0: 202f0042     move.l     $42(a7), d0
0030a4: 52af0042     addq.l     #$1, $42(a7)
0030a8: e588         lsl.l      #$2, d0
0030aa: 206f00cc     movea.l    $cc(a7), a0
0030ae: 20300800     move.l     (a0, d0.l), d0
0030b2: 6100093e     bsr.w      $39f2
0030b6: 5280         addq.l     #$1, d0
0030b8: 2680         move.l     d0, (a3)
0030ba: 508b         addq.l     #$8, a3
0030bc: 202f0042     move.l     $42(a7), d0
0030c0: e588         lsl.l      #$2, d0
0030c2: 206f00cc     movea.l    $cc(a7), a0
0030c6: 4ab00800     tst.l      (a0, d0.l)
0030ca: 6696         bne.b      $3062
0030cc: 41fa024e     lea.l      $331c(pc), a0
0030d0: 27480004     move.l     a0, $4(a3)
0030d4: 26bc00000001 move.l     #$1, (a3)
0030da: 508b         addq.l     #$8, a3
0030dc: 42af0042     clr.l      $42(a7)
0030e0: 604c         bra.b      $312e
0030e2: 7001         moveq      #$1, d0
0030e4: b0ae892e     cmp.l      -$76d2(a6), d0
0030e8: 6c18         bge.b      $3102
0030ea: 202f0042     move.l     $42(a7), d0
0030ee: e588         lsl.l      #$2, d0
0030f0: 206f00d0     movea.l    $d0(a7), a0
0030f4: 22300800     move.l     (a0, d0.l), d1
0030f8: 41fa0223     lea.l      $331d(pc), a0
0030fc: 2008         move.l     a0, d0
0030fe: 61000708     bsr.w      $3808
003102: 202f0042     move.l     $42(a7), d0
003106: e588         lsl.l      #$2, d0
003108: 206f00d0     movea.l    $d0(a7), a0
00310c: 277008000004 move.l     (a0, d0.l), $4(a3)
003112: 202f0042     move.l     $42(a7), d0
003116: 52af0042     addq.l     #$1, $42(a7)
00311a: e588         lsl.l      #$2, d0
00311c: 206f00d0     movea.l    $d0(a7), a0
003120: 20300800     move.l     (a0, d0.l), d0
003124: 610008cc     bsr.w      $39f2
003128: 5280         addq.l     #$1, d0
00312a: 2680         move.l     d0, (a3)
00312c: 508b         addq.l     #$8, a3
00312e: 202f0042     move.l     $42(a7), d0
003132: e588         lsl.l      #$2, d0
003134: 206f00d0     movea.l    $d0(a7), a0
003138: 4ab00800     tst.l      (a0, d0.l)
00313c: 66a4         bne.b      $30e2
00313e: 41fa01ec     lea.l      $332c(pc), a0
003142: 27480004     move.l     a0, $4(a3)
003146: 26bc00000001 move.l     #$1, (a3)
00314c: 508b         addq.l     #$8, a3
00314e: 7001         moveq      #$1, d0
003150: 61000c98     bsr.w      $3dea
003154: 42ae83fa     clr.l      -$7c06(a6)
003158: 600a         bra.b      $3164
00315a: 52ae83fa     addq.l     #$1, -$7c06(a6)
00315e: 7001         moveq      #$1, d0
003160: 61000c88     bsr.w      $3dea
003164: 4aae83fe     tst.l      -$7c02(a6)
003168: 67f0         beq.b      $315a
00316a: 7064         moveq      #$64, d0
00316c: b0ae83fa     cmp.l      -$7c06(a6), d0
003170: 6e0e         bgt.b      $3180
003172: 222e83fa     move.l     -$7c06(a6), d1
003176: 41fa01b5     lea.l      $332d(pc), a0
00317a: 2008         move.l     a0, d0
00317c: 6100068a     bsr.w      $3808
003180: 4aae8402     tst.l      -$7bfe(a6)
003184: 6708         beq.b      $318e
003186: 202e8402     move.l     -$7bfe(a6), d0
00318a: 610000a8     bsr.w      $3234
00318e: 4852         pea.l      (a2)
003190: 302f0030     move.w     $30(a7), d0
003194: 48c0         ext.l      d0
003196: e588         lsl.l      #$2, d0
003198: 41ee8960     lea.l      -$76a0(a6), a0
00319c: 30700800     movea.w    (a0, d0.l), a0
0031a0: 2208         move.l     a0, d1
0031a2: 203c0000ff05 move.l     #$ff05, d0
0031a8: 610004c8     bsr.w      $3672
0031ac: 588f         addq.l     #$4, a7
0031ae: 2f40003a     move.l     d0, $3a(a7)
0031b2: 6c08         bge.b      $31bc
0031b4: 70ff         moveq      #$ff, d0
0031b6: 2f40002e     move.l     d0, $2e(a7)
0031ba: 6060         bra.b      $321c
0031bc: 2f2f003a     move.l     $3a(a7), -(a7)
0031c0: 302f0030     move.w     $30(a7), d0
0031c4: 48c0         ext.l      d0
0031c6: e588         lsl.l      #$2, d0
0031c8: 41ee8960     lea.l      -$76a0(a6), a0
0031cc: 30700800     movea.w    (a0, d0.l), a0
0031d0: 2208         move.l     a0, d1
0031d2: 203c0000ff06 move.l     #$ff06, d0
0031d8: 61000498     bsr.w      $3672
0031dc: 588f         addq.l     #$4, a7
0031de: 2f40002e     move.l     d0, $2e(a7)
0031e2: 6c10         bge.b      $31f4
0031e4: 70ff         moveq      #$ff, d0
0031e6: 2f40002e     move.l     d0, $2e(a7)
0031ea: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
0031f2: 6028         bra.b      $321c
0031f4: 2f6f0024002e move.l     $24(a7), $2e(a7)
0031fa: 4aaf002e     tst.l      $2e(a7)
0031fe: 6c16         bge.b      $3216
003200: 223c00008000 move.l     #$8000, d1
003206: 202f005e     move.l     $5e(a7), d0
00320a: 61000dc6     bsr.w      $3fd2
00320e: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
003214: 6006         bra.b      $321c
003216: 1f6f002d002e move.b     $2d(a7), $2e(a7)
00321c: 200a         move.l     a2, d0
00321e: 610006b0     bsr.w      $38d0
003222: 202f002e     move.l     $2e(a7), d0
003226: 4fef00a8     lea.l      $a8(a7), a7
00322a: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
003230: 4e5d         unlk       a5
003232: 4e75         rts        
003234: 4e550000     link.w     a5, #$0
003238: 48e78000     movem.l    d0, -(a7)
00323c: 2d578970     move.l     (a7), -$7690(a6)
003240: 2017         move.l     (a7), d0
003242: 61000e84     bsr.w      $40c8
003246: 4e5d         unlk       a5
003248: 4e75         rts        
00324a: 5369676e     subq.w     #$1, $676e(a1)
00324e: 616c         bsr.b      $32bc
003250: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
00325a: 2063         movea.l    -(a3), a0
00325c: 6f64         ble.b      $32c2
00325e: 653d         bcs.b      $329d
003260: 2025         move.l     -(a5), d0
003262: 780d         moveq      #$d, d4
003264: 007365727665 ori.w      #$6572, $65(a3, d7.w)
00326a: 7200         moveq      #$0, d1
00326c: 3200         move.w     d0, d1
00326e: 3000         move.w     d0, d0
003270: 2f633000     move.l     -(a3), $3000(a7)
003274: 3000         move.w     d0, d0
003276: 3000         move.w     d0, d0
003278: 3000         move.w     d0, d0
00327a: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
003280: 6e20         bgt.b      $32a2
003282: 6361         bls.b      $32e5
003284: 726f         moveq      #$6f, d1
003286: 7370         .dc.w      $7370
003288: 6174         bsr.b      $32fe
00328a: 6820         bvc.b      $32ac
00328c: 6e61         bgt.b      $32ef
00328e: 6d65         blt.b      $32f5
003290: 6420         bcc.b      $32b2
003292: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
003298: 7468         moveq      #$68, d2
00329a: 6964         bvs.b      $3300
00329c: 5b25         subq.b     #$5, -(a5)
00329e: 645d         bcc.b      $32fd
0032a0: 206d6772     movea.l    $6772(a5), a0
0032a4: 3d25         move.w     -(a5), -(a6)
0032a6: 640d         bcc.b      $32b5
0032a8: 00666f72     ori.w      #$6f72, -(a6)
0032ac: 6b69         bmi.b      $3317
0032ae: 6e67         bgt.b      $3317
0032b0: 2070726f     movea.l    $6f(a0, d7.w), a0
0032b4: 6365         bls.b      $331b
0032b6: 7373         .dc.w      $7373
0032b8: 206c6f63     movea.l    $6f63(a4), a0
0032bc: 616c         bsr.b      $332a
0032be: 6c79         bge.b      $3339
0032c0: 2c20         move.l     -(a0), d6
0032c2: 6d6f         blt.b      $3333
0032c4: 646e         bcc.b      $3334
0032c6: 616d         bsr.b      $3335
0032c8: 6520         bcs.b      $32ea
0032ca: 3d20         move.w     -(a0), -(a6)
0032cc: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
0032d2: 6420         bcc.b      $32f4
0032d4: 6963         bvs.b      $3339
0032d6: 7074         moveq      #$74, d0
0032d8: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
0032e2: 25780d007365 move.l     $d00.w, $7365(a2)
0032e8: 7276         moveq      #$76, d1
0032ea: 6572         bcs.b      $335e
0032ec: 00656e74     ori.w      #$6e74, -(a5)
0032f0: 6572         bcs.b      $3364
0032f2: 6564         bcs.b      $3358
0032f4: 2061         movea.l    -(a1), a0
0032f6: 7267         moveq      #$67, d1
0032f8: 6c69         bge.b      $3363
0032fa: 7374         .dc.w      $7374
0032fc: 206c6f6f     movea.l    $6f6f(a4), a0
003300: 702c         moveq      #$2c, d0
003302: 20696e64     movea.l    $6e64(a1), a0
003306: 6578         bcs.b      $3380
003308: 3d25         move.w     -(a5), -(a6)
00330a: 640d         bcc.b      $3319
00330c: 00415247     ori.w      #$5247, d1
003310: 4c49         .dc.w      $4c49
003312: 5354         subq.w     #$1, (a4)
003314: 5b695d3d     subq.w     #$5, $5d3d(a1)
003318: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
00331e: 4e564c49     link.w     a6, #$4c49
003322: 5354         subq.w     #$1, (a4)
003324: 5b695d3d     subq.w     #$5, $5d3d(a1)
003328: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
00332e: 796e         .dc.w      $796e
003330: 6368         bls.b      $339a
003332: 726f         moveq      #$6f, d1
003334: 6e69         bgt.b      $339f
003336: 7369         .dc.w      $7369
003338: 6e67         bgt.b      $33a1
00333a: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
003344: 6f6b         ble.b      $33b1
003346: 2025         move.l     -(a5), d0
003348: 6420         bcc.b      $336a
00334a: 7469         moveq      #$69, d2
00334c: 636b         bls.b      $33b9
00334e: 730d         .dc.w      $730d
003350: 00004e55     ori.b      #$55, d0
003354: 000048e7     ori.b      #$e7, d0
003358: c8302440     and.b      $40(a0, d2.w), d4
00335c: 2641         movea.l    d1, a3
00335e: 558f         subq.l     #$2, a7
003360: 1012         move.b     (a2), d0
003362: 1680         move.b     d0, (a3)
003364: 0c00002f     cmpi.b     #$2f, d0
003368: 6704         beq.b      $336e
00336a: 7000         moveq      #$0, d0
00336c: 601e         bra.b      $338c
00336e: 528a         addq.l     #$1, a2
003370: 528b         addq.l     #$1, a3
003372: 1012         move.b     (a2), d0
003374: 1680         move.b     d0, (a3)
003376: 1f400001     move.b     d0, $1(a7)
00337a: 0c00002f     cmpi.b     #$2f, d0
00337e: 6706         beq.b      $3386
003380: 4a2f0001     tst.b      $1(a7)
003384: 66e8         bne.b      $336e
003386: 4213         clr.b      (a3)
003388: 528a         addq.l     #$1, a2
00338a: 200a         move.l     a2, d0
00338c: 548f         addq.l     #$2, a7
00338e: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
003394: 4e5d         unlk       a5
003396: 4e75         rts        
003398: 4e550000     link.w     a5, #$0
00339c: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0033a0: 2440         movea.l    d0, a2
0033a2: 4aae8954     tst.l      -$76ac(a6)
0033a6: 6608         bne.b      $33b0
0033a8: 61000240     bsr.w      $35ea
0033ac: 2d408954     move.l     d0, -$76ac(a6)
0033b0: 7800         moveq      #$0, d4
0033b2: 601a         bra.b      $33ce
0033b4: 2004         move.l     d4, d0
0033b6: e588         lsl.l      #$2, d0
0033b8: 206e8954     movea.l    -$76ac(a6), a0
0033bc: 2230081a     move.l     $1a(a0, d0.l), d1
0033c0: 200a         move.l     a2, d0
0033c2: 5280         addq.l     #$1, d0
0033c4: 610005b8     bsr.w      $397e
0033c8: 4a80         tst.l      d0
0033ca: 6710         beq.b      $33dc
0033cc: 5284         addq.l     #$1, d4
0033ce: 206e8954     movea.l    -$76ac(a6), a0
0033d2: 30280010     move.w     $10(a0), d0
0033d6: 48c0         ext.l      d0
0033d8: b084         cmp.l      d4, d0
0033da: 6ed8         bgt.b      $33b4
0033dc: 206e8954     movea.l    -$76ac(a6), a0
0033e0: 30280010     move.w     $10(a0), d0
0033e4: 48c0         ext.l      d0
0033e6: b084         cmp.l      d4, d0
0033e8: 6e04         bgt.b      $33ee
0033ea: 70ff         moveq      #$ff, d0
0033ec: 6002         bra.b      $33f0
0033ee: 2004         move.l     d4, d0
0033f0: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0033f6: 4e5d         unlk       a5
0033f8: 4e75         rts        
0033fa: 4e550000     link.w     a5, #$0
0033fe: 48e7c080     movem.l    d0-d1/a0, -(a7)
003402: 202f0004     move.l     $4(a7), d0
003406: e588         lsl.l      #$2, d0
003408: 2057         movea.l    (a7), a0
00340a: 2070082a     movea.l    $2a(a0, d0.l), a0
00340e: 7000         moveq      #$0, d0
003410: 10280012     move.b     $12(a0), d0
003414: 4ced0100fffc movem.l    -$4(a5), a0
00341a: 4e5d         unlk       a5
00341c: 4e75         rts        
00341e: 4e550000     link.w     a5, #$0
003422: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
003426: 2440         movea.l    d0, a2
003428: 4fefffda     lea.l      -$26(a7), a7
00342c: 200a         move.l     a2, d0
00342e: 61000110     bsr.w      $3540
003432: 2440         movea.l    d0, a2
003434: 0c12005f     cmpi.b     #$5f, (a2)
003438: 660000f6     bne.w      $3530
00343c: 102a0001     move.b     $1(a2), d0
003440: 1f400005     move.b     d0, $5(a7)
003444: 0c000041     cmpi.b     #$41, d0
003448: 6d0000a4     blt.w      $34ee
00344c: 4aae8958     tst.l      -$76a8(a6)
003450: 6626         bne.b      $3478
003452: 7200         moveq      #$0, d1
003454: 41fa017e     lea.l      $35d4(pc), a0
003458: 2008         move.l     a0, d0
00345a: 61000b16     bsr.w      $3f72
00345e: 2f400022     move.l     d0, $22(a7)
003462: 72ff         moveq      #$ff, d1
003464: b280         cmp.l      d0, d1
003466: 6606         bne.b      $346e
003468: 70ff         moveq      #$ff, d0
00346a: 600000c6     bra.w      $3532
00346e: 7030         moveq      #$30, d0
003470: d0af0022     add.l      $22(a7), d0
003474: 2d408958     move.l     d0, -$76a8(a6)
003478: 41ef000a     lea.l      $a(a7), a0
00347c: 2f480006     move.l     a0, $6(a7)
003480: 600c         bra.b      $348e
003482: 206f0006     movea.l    $6(a7), a0
003486: 52af0006     addq.l     #$1, $6(a7)
00348a: 10af0005     move.b     $5(a7), (a0)
00348e: 528a         addq.l     #$1, a2
003490: 1012         move.b     (a2), d0
003492: 1f400005     move.b     d0, $5(a7)
003496: 0c00005f     cmpi.b     #$5f, d0
00349a: 66e6         bne.b      $3482
00349c: 206f0006     movea.l    $6(a7), a0
0034a0: 4210         clr.b      (a0)
0034a2: 202e8958     move.l     -$76a8(a6), d0
0034a6: 5480         addq.l     #$2, d0
0034a8: 2f40001e     move.l     d0, $1e(a7)
0034ac: 7800         moveq      #$0, d4
0034ae: 6030         bra.b      $34e0
0034b0: 41ef000a     lea.l      $a(a7), a0
0034b4: 2208         move.l     a0, d1
0034b6: 202f001e     move.l     $1e(a7), d0
0034ba: 610004c2     bsr.w      $397e
0034be: 4a80         tst.l      d0
0034c0: 6614         bne.b      $34d6
0034c2: 206f001e     movea.l    $1e(a7), a0
0034c6: 7000         moveq      #$0, d0
0034c8: 10280013     move.b     $13(a0), d0
0034cc: 206f002a     movea.l    $2a(a7), a0
0034d0: 2080         move.l     d0, (a0)
0034d2: 528a         addq.l     #$1, a2
0034d4: 6056         bra.b      $352c
0034d6: 06af00000014001e addi.l     #$14, $1e(a7)
0034de: 5284         addq.l     #$1, d4
0034e0: 206e8958     movea.l    -$76a8(a6), a0
0034e4: 3010         move.w     (a0), d0
0034e6: 48c0         ext.l      d0
0034e8: b084         cmp.l      d4, d0
0034ea: 6ec4         bgt.b      $34b0
0034ec: 6042         bra.b      $3530
0034ee: 4297         clr.l      (a7)
0034f0: 6018         bra.b      $350a
0034f2: 2017         move.l     (a7), d0
0034f4: 720a         moveq      #$a, d1
0034f6: 61000568     bsr.w      $3a60
0034fa: 122f0005     move.b     $5(a7), d1
0034fe: 4881         ext.w      d1
003500: 48c1         ext.l      d1
003502: d081         add.l      d1, d0
003504: 7230         moveq      #$30, d1
003506: 9081         sub.l      d1, d0
003508: 2e80         move.l     d0, (a7)
00350a: 528a         addq.l     #$1, a2
00350c: 1012         move.b     (a2), d0
00350e: 1f400005     move.b     d0, $5(a7)
003512: 0c000030     cmpi.b     #$30, d0
003516: 6d08         blt.b      $3520
003518: 0c2f00390005 cmpi.b     #$39, $5(a7)
00351e: 6fd2         ble.b      $34f2
003520: 0c1a005f     cmpi.b     #$5f, (a2)+
003524: 660a         bne.b      $3530
003526: 206f002a     movea.l    $2a(a7), a0
00352a: 2097         move.l     (a7), (a0)
00352c: 200a         move.l     a2, d0
00352e: 6002         bra.b      $3532
003530: 7000         moveq      #$0, d0
003532: 4fef0026     lea.l      $26(a7), a7
003536: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00353c: 4e5d         unlk       a5
00353e: 4e75         rts        
003540: 4e550000     link.w     a5, #$0
003544: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
003548: 2440         movea.l    d0, a2
00354a: 518f         subq.l     #$8, a7
00354c: 0c12005f     cmpi.b     #$5f, (a2)
003550: 6764         beq.b      $35b6
003552: 0c120040     cmpi.b     #$40, (a2)
003556: 675e         beq.b      $35b6
003558: 0c120041     cmpi.b     #$41, (a2)
00355c: 6d58         blt.b      $35b6
00355e: 4aae895c     tst.l      -$76a4(a6)
003562: 6620         bne.b      $3584
003564: 7200         moveq      #$0, d1
003566: 41fa0076     lea.l      $35de(pc), a0
00356a: 2008         move.l     a0, d0
00356c: 61000a04     bsr.w      $3f72
003570: 2f400004     move.l     d0, $4(a7)
003574: 72ff         moveq      #$ff, d1
003576: b280         cmp.l      d0, d1
003578: 673c         beq.b      $35b6
00357a: 7030         moveq      #$30, d0
00357c: d0af0004     add.l      $4(a7), d0
003580: 2d40895c     move.l     d0, -$76a4(a6)
003584: 202e895c     move.l     -$76a4(a6), d0
003588: 5480         addq.l     #$2, d0
00358a: 2e80         move.l     d0, (a7)
00358c: 7800         moveq      #$0, d4
00358e: 601a         bra.b      $35aa
003590: 220a         move.l     a2, d1
003592: 2017         move.l     (a7), d0
003594: 610003e8     bsr.w      $397e
003598: 4a80         tst.l      d0
00359a: 6606         bne.b      $35a2
00359c: 7014         moveq      #$14, d0
00359e: d097         add.l      (a7), d0
0035a0: 6016         bra.b      $35b8
0035a2: 069700000032 addi.l     #$32, (a7)
0035a8: 5284         addq.l     #$1, d4
0035aa: 206e895c     movea.l    -$76a4(a6), a0
0035ae: 3010         move.w     (a0), d0
0035b0: 48c0         ext.l      d0
0035b2: b084         cmp.l      d4, d0
0035b4: 6eda         bgt.b      $3590
0035b6: 200a         move.l     a2, d0
0035b8: 508f         addq.l     #$8, a7
0035ba: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0035c0: 4e5d         unlk       a5
0035c2: 4e75         rts        
0035c4: 4e550000     link.w     a5, #$0
0035c8: 48e78000     movem.l    d0, -(a7)
0035cc: 202e8970     move.l     -$7690(a6), d0
0035d0: 4e5d         unlk       a5
0035d2: 4e75         rts        
0035d4: 6361         bls.b      $3637
0035d6: 725f         moveq      #$5f, d1
0035d8: 6e65         bgt.b      $363f
0035da: 7464         moveq      #$64, d2
0035dc: 62006361     bhi.w      $993f
0035e0: 725f         moveq      #$5f, d1
0035e2: 6465         bcc.b      $3649
0035e4: 7669         moveq      #$69, d3
0035e6: 6365         bls.b      $364d
0035e8: 00002f08     ori.b      #$8, d0
0035ec: 207900000000 movea.l    $0.l, a0
0035f2: 41e80814     lea.l      $814(a0), a0
0035f6: 2010         move.l     (a0), d0
0035f8: 205f         movea.l    (a7)+, a0
0035fa: 4e75         rts        
0035fc: 2f08         move.l     a0, -(a7)
0035fe: 207900000000 movea.l    $0.l, a0
003604: 41e80814     lea.l      $814(a0), a0
003608: 2008         move.l     a0, d0
00360a: 205f         movea.l    (a7)+, a0
00360c: 4e75         rts        
00360e: 48e76080     movem.l    d1-d2/a0, -(a7)
003612: c141         exg.l      d0, d1
003614: 0c8100000002 cmpi.l     #$2, d1
00361a: 6716         beq.b      $3632
00361c: 0c8100000005 cmpi.l     #$5, d1
003622: 670e         beq.b      $3632
003624: 206f0010     movea.l    $10(a7), a0
003628: 2408         move.l     a0, d2
00362a: 4e40         trap       #$0
00362c: 008d         .dc.w      $008d
00362e: 60000056     bra.w      $3686
003632: 206f0010     movea.l    $10(a7), a0
003636: 2408         move.l     a0, d2
003638: 4e40         trap       #$0
00363a: 008d         .dc.w      $008d
00363c: 2202         move.l     d2, d1
00363e: 60000046     bra.w      $3686
003642: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
003646: c141         exg.l      d0, d1
003648: 206f0018     movea.l    $18(a7), a0
00364c: 242f001c     move.l     $1c(a7), d2
003650: 262f0020     move.l     $20(a7), d3
003654: 4e40         trap       #$0
003656: 008d         .dc.w      $008d
003658: 60000068     bra.w      $36c2
00365c: 48e76080     movem.l    d1-d2/a0, -(a7)
003660: c141         exg.l      d0, d1
003662: 206f0010     movea.l    $10(a7), a0
003666: 242f0014     move.l     $14(a7), d2
00366a: 4e40         trap       #$0
00366c: 008e         .dc.w      $008e
00366e: 60000016     bra.w      $3686
003672: 48e76080     movem.l    d1-d2/a0, -(a7)
003676: c141         exg.l      d0, d1
003678: 206f0010     movea.l    $10(a7), a0
00367c: 2408         move.l     a0, d2
00367e: 4e40         trap       #$0
003680: 008e         .dc.w      $008e
003682: 60000002     bra.w      $3686
003686: 6408         bcc.b      $3690
003688: 2d41800c     move.l     d1, -$7ff4(a6)
00368c: 70ff         moveq      #$ff, d0
00368e: 6002         bra.b      $3692
003690: 2001         move.l     d1, d0
003692: 4cdf0106     movem.l    (a7)+, d1-d2/a0
003696: 4e75         rts        
003698: 6406         bcc.b      $36a0
00369a: 2d41800c     move.l     d1, -$7ff4(a6)
00369e: 70ff         moveq      #$ff, d0
0036a0: 4cdf043e     movem.l    (a7)+, d1-d5/a2
0036a4: 4e75         rts        
0036a6: 6406         bcc.b      $36ae
0036a8: 2d41800c     move.l     d1, -$7ff4(a6)
0036ac: 70ff         moveq      #$ff, d0
0036ae: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
0036b2: 4e75         rts        
0036b4: 6406         bcc.b      $36bc
0036b6: 2d41800c     move.l     d1, -$7ff4(a6)
0036ba: 70ff         moveq      #$ff, d0
0036bc: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
0036c0: 4e75         rts        
0036c2: 6408         bcc.b      $36cc
0036c4: 2d41800c     move.l     d1, -$7ff4(a6)
0036c8: 70ff         moveq      #$ff, d0
0036ca: 6002         bra.b      $36ce
0036cc: 2001         move.l     d1, d0
0036ce: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
0036d2: 4e75         rts        
0036d4: 48e74000     movem.l    d1, -(a7)
0036d8: c141         exg.l      d0, d1
0036da: 4e40         trap       #$0
0036dc: 005c6406     ori.w      #$6406, (a4)+
0036e0: 2d41800c     move.l     d1, -$7ff4(a6)
0036e4: 70ff         moveq      #$ff, d0
0036e6: 4cdf0002     movem.l    (a7)+, d1
0036ea: 4e75         rts        
0036ec: 48e740e0     movem.l    d1/a0-a2, -(a7)
0036f0: e340         asl.w      #$1, d0
0036f2: 207900000000 movea.l    $0.l, a0
0036f8: 2268004c     movea.l    $4c(a0), a1
0036fc: 45e90168     lea.l      $168(a1), a2
003700: 30320000     move.w     (a2, d0.w), d0
003704: 660a         bne.b      $3710
003706: 4cdf0702     movem.l    (a7)+, d1/a0-a2
00370a: 303cffff     move.w     #$ffff, d0
00370e: 4e75         rts        
003710: 22680048     movea.l    $48(a0), a1
003714: b051         cmp.w      (a1), d0
003716: 62f2         bhi.b      $370a
003718: e540         asl.w      #$2, d0
00371a: d2c0         adda.w     d0, a1
00371c: e448         lsr.w      #$2, d0
00371e: 4a91         tst.l      (a1)
003720: 67e8         beq.b      $370a
003722: 2251         movea.l    (a1), a1
003724: b051         cmp.w      (a1), d0
003726: 66e2         bne.b      $370a
003728: 22690004     movea.l    $4(a1), a1
00372c: 20290008     move.l     $8(a1), d0
003730: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003734: 4e75         rts        
003736: 4e550000     link.w     a5, #$0
00373a: 48e78038     movem.l    d0/a2-a4, -(a7)
00373e: 7000         moveq      #$0, d0
003740: 2840         movea.l    d0, a4
003742: 2640         movea.l    d0, a3
003744: 2440         movea.l    d0, a2
003746: 700d         moveq      #$d, d0
003748: 7200         moveq      #$0, d1
00374a: 41fa0064     lea.l      $37b0(pc), a0
00374e: 47ee800c     lea.l      -$7ff4(a6), a3
003752: 7609         moveq      #$9, d3
003754: 2683         move.l     d3, (a3)
003756: 262e878e     move.l     -$7872(a6), d3
00375a: 242e878a     move.l     -$7876(a6), d2
00375e: 286e8974     movea.l    -$768c(a6), a4
003762: 4e40         trap       #$0
003764: 0021653e     ori.b      #$3e, -(a1)
003768: 4a93         tst.l      (a3)
00376a: 6718         beq.b      $3784
00376c: 41fa0046     lea.l      $37b4(pc), a0
003770: 7264         moveq      #$64, d1
003772: 7002         moveq      #$2, d0
003774: 4e40         trap       #$0
003776: 008c         .dc.w      $008c
003778: 41fa0036     lea.l      $37b0(pc), a0
00377c: 72dd         moveq      #$dd, d1
00377e: 003c0001     ori.b      #$1, ccr
003782: 6022         bra.b      $37a6
003784: 3d7c00418412 move.w     #$41, -$7bee(a6)
00378a: 426e8414     clr.w      -$7bec(a6)
00378e: 3d7c0002842e move.w     #$2, -$7bd2(a6)
003794: 3d7c00018430 move.w     #$1, -$7bd0(a6)
00379a: 3d7c0002844a move.w     #$2, -$7bb6(a6)
0037a0: 3d7c0002844c move.w     #$2, -$7bb4(a6)
0037a6: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0037ac: 4e5d         unlk       a5
0037ae: 4e75         rts        
0037b0: 6369         bls.b      $381b
0037b2: 6f002a2a     ble.w      $61de
0037b6: 2a2a2063     move.l     $2063(a2), d5
0037ba: 696f         bvs.b      $382b
0037bc: 20747261     movea.l    $61(a4, d7.w), a0
0037c0: 7068         moveq      #$68, d0
0037c2: 616e         bsr.b      $3832
0037c4: 646c         bcc.b      $3832
0037c6: 6572         bcs.b      $383a
0037c8: 206d6973     movea.l    $6973(a5), a0
0037cc: 6d61         blt.b      $382f
0037ce: 7463         moveq      #$63, d2
0037d0: 6820         bvc.b      $37f2
0037d2: 2a2a2a2a     move.l     $2a2a(a2), d5
0037d6: 0d00         btst.l     d6, d0
0037d8: 4e4d         trap       #$d
0037da: 00004e4d     ori.b      #$4d, d0
0037de: 00014e4d     ori.b      #$4d, d1
0037e2: 00024e4d     ori.b      #$4d, d2
0037e6: 00034e4d     ori.b      #$4d, d3
0037ea: 00044e4d     ori.b      #$4d, d4
0037ee: 00054e4d     ori.b      #$4d, d5
0037f2: 00064e4d     ori.b      #$4d, d6
0037f6: 00074e4d     ori.b      #$4d, d7
0037fa: 0008         .dc.w      $0008
0037fc: 4e4d         trap       #$d
0037fe: 0009         .dc.w      $0009
003800: 4e4d         trap       #$d
003802: 000a         .dc.w      $000a
003804: 4e4d         trap       #$d
003806: 000b         .dc.w      $000b
003808: 4e4d         trap       #$d
00380a: 000c         .dc.w      $000c
00380c: 4e4d         trap       #$d
00380e: 000d         .dc.w      $000d
003810: 4e4d         trap       #$d
003812: 000e         .dc.w      $000e
003814: 4e4d         trap       #$d
003816: 000f         .dc.w      $000f
003818: 4e4d         trap       #$d
00381a: 00104e4d     ori.b      #$4d, (a0)
00381e: 00114e4d     ori.b      #$4d, (a1)
003822: 00124e4d     ori.b      #$4d, (a2)
003826: 00134e4d     ori.b      #$4d, (a3)
00382a: 00144e4d     ori.b      #$4d, (a4)
00382e: 00154e4d     ori.b      #$4d, (a5)
003832: 00164e4d     ori.b      #$4d, (a6)
003836: 00174e4d     ori.b      #$4d, (a7)
00383a: 00184e4d     ori.b      #$4d, (a0)+
00383e: 00194e4d     ori.b      #$4d, (a1)+
003842: 001a4e4d     ori.b      #$4d, (a2)+
003846: 001b4e4d     ori.b      #$4d, (a3)+
00384a: 001c4e4d     ori.b      #$4d, (a4)+
00384e: 001d4e4d     ori.b      #$4d, (a5)+
003852: 001e4e4d     ori.b      #$4d, (a6)+
003856: 001f4e4d     ori.b      #$4d, (a7)+
00385a: 00204e4d     ori.b      #$4d, -(a0)
00385e: 00214e4d     ori.b      #$4d, -(a1)
003862: 00224e4d     ori.b      #$4d, -(a2)
003866: 00234e4d     ori.b      #$4d, -(a3)
00386a: 00244e4d     ori.b      #$4d, -(a4)
00386e: 00254e4d     ori.b      #$4d, -(a5)
003872: 00264e4d     ori.b      #$4d, -(a6)
003876: 00274e4d     ori.b      #$4d, -(a7)
00387a: 00284e4d0029 ori.b      #$4d, $29(a0)
003880: 4e4d         trap       #$d
003882: 002a4e4d002b ori.b      #$4d, $2b(a2)
003888: 4e4d         trap       #$d
00388a: 002c4e4d002d ori.b      #$4d, $2d(a4)
003890: 4e4d         trap       #$d
003892: 002e4e4d002f ori.b      #$4d, $2f(a6)
003898: 4e4d         trap       #$d
00389a: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
0038a0: 4e4d         trap       #$d
0038a2: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
0038a8: 4e4d         trap       #$d
0038aa: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
0038b0: 4e4d         trap       #$d
0038b2: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
0038b8: 4e4d         trap       #$d
0038ba: 00384e4d0039 ori.b      #$4d, $39.w
0038c0: 4e4d         trap       #$d
0038c2: 003a         .dc.w      $003a
0038c4: 4e4d         trap       #$d
0038c6: 003b         .dc.w      $003b
0038c8: 4e4d         trap       #$d
0038ca: 003c         .dc.w      $003c
0038cc: 4e4d         trap       #$d
0038ce: 003d         .dc.w      $003d
0038d0: 4e4d         trap       #$d
0038d2: 003e         .dc.w      $003e
0038d4: 4e4d         trap       #$d
0038d6: 003f         .dc.w      $003f
0038d8: 4e4d         trap       #$d
0038da: 00414e4d     ori.w      #$4e4d, d1
0038de: 00424e4d     ori.w      #$4e4d, d2
0038e2: 00434e4d     ori.w      #$4e4d, d3
0038e6: 00444e4d     ori.w      #$4e4d, d4
0038ea: 00454e4d     ori.w      #$4e4d, d5
0038ee: 00404e55     ori.w      #$4e55, d0
0038f2: 000048e7     ori.b      #$e7, d0
0038f6: cc302440     and.b      $40(a0, d2.w), d6
0038fa: 61ff00000794 bsr.l      $4090
003900: 2a00         move.l     d0, d5
003902: 264a         movea.l    a2, a3
003904: 4a1a         tst.b      (a2)+
003906: 66fffffffffc bne.l      $3904
00390c: 538a         subq.l     #$1, a2
00390e: 60ff0000001c bra.l      $392c
003914: 2005         move.l     d5, d0
003916: 4c7c08010000000a divs.l     #$a, d0
00391e: 06010030     addi.b     #$30, d1
003922: 1481         move.b     d1, (a2)
003924: 4c7c58050000000a divs.l     #$a, d5
00392c: 0c220058     cmpi.b     #$58, -(a2)
003930: 67ffffffffe2 beq.l      $3914
003936: 528a         addq.l     #$1, a2
003938: 7861         moveq      #$61, d4
00393a: 60ff0000001a bra.l      $3956
003940: 707a         moveq      #$7a, d0
003942: b084         cmp.l      d4, d0
003944: 66ff0000000c bne.l      $3952
00394a: 7000         moveq      #$0, d0
00394c: 60ff00000026 bra.l      $3974
003952: 1484         move.b     d4, (a2)
003954: 5284         addq.l     #$1, d4
003956: 7200         moveq      #$0, d1
003958: 200b         move.l     a3, d0
00395a: 61fffffffee8 bsr.l      $3844
003960: 72ff         moveq      #$ff, d1
003962: b280         cmp.l      d0, d1
003964: 66ffffffffda bne.l      $3940
00396a: 200b         move.l     a3, d0
00396c: 60ff00000006 bra.l      $3974
003972: 4e71         nop        
003974: 4ced0c32ffec movem.l    -$14(a5), d1/d4-d5/a2-a3
00397a: 4e5d         unlk       a5
00397c: 4e75         rts        
00397e: 2f08         move.l     a0, -(a7)
003980: 2040         movea.l    d0, a0
003982: b300         eor.b      d1, d0
003984: 08000000     btst.b     #$0, d0
003988: 6652         bne.b      $39dc
00398a: 08010000     btst.b     #$0, d1
00398e: c389         exg.l      d1, a1
003990: 6718         beq.b      $39aa
003992: b109         cmpm.b     (a1)+, (a0)+
003994: 6530         bcs.b      $39c6
003996: 6220         bhi.b      $39b8
003998: 4a28ffff     tst.b      -$1(a0)
00399c: 660c         bne.b      $39aa
00399e: 6034         bra.b      $39d4
0039a0: 4a00         tst.b      d0
0039a2: 6730         beq.b      $39d4
0039a4: 0c4000ff     cmpi.w     #$ff, d0
0039a8: 632a         bls.b      $39d4
0039aa: 3018         move.w     (a0)+, d0
0039ac: b059         cmp.w      (a1)+, d0
0039ae: 67f0         beq.b      $39a0
0039b0: 650e         bcs.b      $39c0
0039b2: 0c4000ff     cmpi.w     #$ff, d0
0039b6: 6316         bls.b      $39ce
0039b8: 7001         moveq      #$1, d0
0039ba: 205f         movea.l    (a7)+, a0
0039bc: c389         exg.l      d1, a1
0039be: 4e75         rts        
0039c0: 0c4000ff     cmpi.w     #$ff, d0
0039c4: 6308         bls.b      $39ce
0039c6: 70ff         moveq      #$ff, d0
0039c8: 205f         movea.l    (a7)+, a0
0039ca: c389         exg.l      d1, a1
0039cc: 4e75         rts        
0039ce: 4a29fffe     tst.b      -$2(a1)
0039d2: 66f2         bne.b      $39c6
0039d4: 7000         moveq      #$0, d0
0039d6: 205f         movea.l    (a7)+, a0
0039d8: c389         exg.l      d1, a1
0039da: 4e75         rts        
0039dc: c389         exg.l      d1, a1
0039de: 7000         moveq      #$0, d0
0039e0: 1018         move.b     (a0)+, d0
0039e2: b019         cmp.b      (a1)+, d0
0039e4: 56c8fffa     dbne       d0, $39e0
0039e8: 65dc         bcs.b      $39c6
0039ea: 5240         addq.w     #$1, d0
0039ec: 205f         movea.l    (a7)+, a0
0039ee: c389         exg.l      d1, a1
0039f0: 4e75         rts        
0039f2: 2f08         move.l     a0, -(a7)
0039f4: 2040         movea.l    d0, a0
0039f6: 4a18         tst.b      (a0)+
0039f8: 670c         beq.b      $3a06
0039fa: 4a18         tst.b      (a0)+
0039fc: 6708         beq.b      $3a06
0039fe: 4a18         tst.b      (a0)+
003a00: 6704         beq.b      $3a06
003a02: 4a18         tst.b      (a0)+
003a04: 66f0         bne.b      $39f6
003a06: 91c0         suba.l     d0, a0
003a08: 2008         move.l     a0, d0
003a0a: 5380         subq.l     #$1, d0
003a0c: 205f         movea.l    (a7)+, a0
003a0e: 4e75         rts        
003a10: 2f08         move.l     a0, -(a7)
003a12: 2040         movea.l    d0, a0
003a14: c389         exg.l      d1, a1
003a16: 10d9         move.b     (a1)+, (a0)+
003a18: 670c         beq.b      $3a26
003a1a: 10d9         move.b     (a1)+, (a0)+
003a1c: 6708         beq.b      $3a26
003a1e: 10d9         move.b     (a1)+, (a0)+
003a20: 6704         beq.b      $3a26
003a22: 10d9         move.b     (a1)+, (a0)+
003a24: 66f0         bne.b      $3a16
003a26: 205f         movea.l    (a7)+, a0
003a28: c389         exg.l      d1, a1
003a2a: 4e75         rts        
003a2c: 2f08         move.l     a0, -(a7)
003a2e: 2040         movea.l    d0, a0
003a30: c389         exg.l      d1, a1
003a32: 4a18         tst.b      (a0)+
003a34: 670c         beq.b      $3a42
003a36: 4a18         tst.b      (a0)+
003a38: 6708         beq.b      $3a42
003a3a: 4a18         tst.b      (a0)+
003a3c: 6704         beq.b      $3a42
003a3e: 4a18         tst.b      (a0)+
003a40: 66f0         bne.b      $3a32
003a42: 1159ffff     move.b     (a1)+, -$1(a0)
003a46: 66ce         bne.b      $3a16
003a48: 60dc         bra.b      $3a26
003a4a: 2f08         move.l     a0, -(a7)
003a4c: 2040         movea.l    d0, a0
003a4e: c389         exg.l      d1, a1
003a50: 10d9         move.b     (a1)+, (a0)+
003a52: 6afc         bpl.b      $3a50
003a54: 4210         clr.b      (a0)
003a56: 0220007f     andi.b     #$7f, -(a0)
003a5a: 205f         movea.l    (a7)+, a0
003a5c: c389         exg.l      d1, a1
003a5e: 4e75         rts        
003a60: 48e73800     movem.l    d2-d4, -(a7)
003a64: 2400         move.l     d0, d2
003a66: 2600         move.l     d0, d3
003a68: 4843         swap       d3
003a6a: 2801         move.l     d1, d4
003a6c: 4844         swap       d4
003a6e: c0c1         mulu.w     d1, d0
003a70: c2c3         mulu.w     d3, d1
003a72: c4c4         mulu.w     d4, d2
003a74: c6c4         mulu.w     d4, d3
003a76: 4840         swap       d0
003a78: d041         add.w      d1, d0
003a7a: 7800         moveq      #$0, d4
003a7c: d784         addx.l     d4, d3
003a7e: d042         add.w      d2, d0
003a80: d784         addx.l     d4, d3
003a82: 4840         swap       d0
003a84: 4241         clr.w      d1
003a86: 4841         swap       d1
003a88: 4242         clr.w      d2
003a8a: 4842         swap       d2
003a8c: d282         add.l      d2, d1
003a8e: d283         add.l      d3, d1
003a90: 4a80         tst.l      d0
003a92: 4cdf001c     movem.l    (a7)+, d2-d4
003a96: 4e75         rts        
003a98: 2f02         move.l     d2, -(a7)
003a9a: 7400         moveq      #$0, d2
003a9c: 4a80         tst.l      d0
003a9e: 6a04         bpl.b      $3aa4
003aa0: 4480         neg.l      d0
003aa2: 7403         moveq      #$3, d2
003aa4: 4a81         tst.l      d1
003aa6: 6a06         bpl.b      $3aae
003aa8: 4481         neg.l      d1
003aaa: 0a020001     eori.b     #$1, d2
003aae: 6122         bsr.b      $3ad2
003ab0: e20a         lsr.b      #$1, d2
003ab2: 6402         bcc.b      $3ab6
003ab4: 4480         neg.l      d0
003ab6: e20a         lsr.b      #$1, d2
003ab8: 6402         bcc.b      $3abc
003aba: 4481         neg.l      d1
003abc: 241f         move.l     (a7)+, d2
003abe: 4a80         tst.l      d0
003ac0: 4e75         rts        
003ac2: 61d4         bsr.b      $3a98
003ac4: c141         exg.l      d0, d1
003ac6: 4a80         tst.l      d0
003ac8: 4e75         rts        
003aca: 6106         bsr.b      $3ad2
003acc: c141         exg.l      d0, d1
003ace: 4a80         tst.l      d0
003ad0: 4e75         rts        
003ad2: 48e73800     movem.l    d2-d4, -(a7)
003ad6: 2401         move.l     d1, d2
003ad8: 6606         bne.b      $3ae0
003ada: 81fc0000     divs.w     #$0, d0
003ade: 606e         bra.b      $3b4e
003ae0: 5381         subq.l     #$1, d1
003ae2: 676a         beq.b      $3b4e
003ae4: 2801         move.l     d1, d4
003ae6: 2200         move.l     d0, d1
003ae8: b481         cmp.l      d1, d2
003aea: 650c         bcs.b      $3af8
003aec: 6704         beq.b      $3af2
003aee: 7000         moveq      #$0, d0
003af0: 605c         bra.b      $3b4e
003af2: 7001         moveq      #$1, d0
003af4: 9282         sub.l      d2, d1
003af6: 6056         bra.b      $3b4e
003af8: 2602         move.l     d2, d3
003afa: 6bf6         bmi.b      $3af2
003afc: c684         and.l      d4, d3
003afe: 6612         bne.b      $3b12
003b00: e28a         lsr.l      #$1, d2
003b02: 76ff         moveq      #$ff, d3
003b04: e28a         lsr.l      #$1, d2
003b06: 55cbfffc     dbcs       d3, $3b04
003b0a: 4483         neg.l      d3
003b0c: e6a8         lsr.l      d3, d0
003b0e: c284         and.l      d4, d1
003b10: 603c         bra.b      $3b4e
003b12: 7000         moveq      #$0, d0
003b14: 76ff         moveq      #$ff, d3
003b16: e382         asl.l      #$1, d2
003b18: 6a06         bpl.b      $3b20
003b1a: b481         cmp.l      d1, d2
003b1c: 620a         bhi.b      $3b28
003b1e: 600c         bra.b      $3b2c
003b20: b481         cmp.l      d1, d2
003b22: 54cbfff2     dbcc       d3, $3b16
003b26: 6704         beq.b      $3b2c
003b28: 5283         addq.l     #$1, d3
003b2a: e28a         lsr.l      #$1, d2
003b2c: 4483         neg.l      d3
003b2e: 6004         bra.b      $3b34
003b30: e380         asl.l      #$1, d0
003b32: e28a         lsr.l      #$1, d2
003b34: 9282         sub.l      d2, d1
003b36: 6510         bcs.b      $3b48
003b38: 5280         addq.l     #$1, d0
003b3a: 51cbfff4     dbra       d3, $3b30
003b3e: 600e         bra.b      $3b4e
003b40: e380         asl.l      #$1, d0
003b42: e28a         lsr.l      #$1, d2
003b44: d282         add.l      d2, d1
003b46: 65f0         bcs.b      $3b38
003b48: 51cbfff6     dbra       d3, $3b40
003b4c: d282         add.l      d2, d1
003b4e: 4cdf001c     movem.l    (a7)+, d2-d4
003b52: 4a80         tst.l      d0
003b54: 4e75         rts        
003b56: 2a5f         movea.l    (a7)+, a5
003b58: 5385         subq.l     #$1, d5
003b5a: 6562         bcs.b      $3bbe
003b5c: 1018         move.b     (a0)+, d0
003b5e: 67f8         beq.b      $3b58
003b60: 0c00000d     cmpi.b     #$d, d0
003b64: 6758         beq.b      $3bbe
003b66: 0c000020     cmpi.b     #$20, d0
003b6a: 67ec         beq.b      $3b58
003b6c: 0c000009     cmpi.b     #$9, d0
003b70: 67e6         beq.b      $3b58
003b72: 0c00002c     cmpi.b     #$2c, d0
003b76: 67e0         beq.b      $3b58
003b78: 5282         addq.l     #$1, d2
003b7a: 0c000022     cmpi.b     #$22, d0
003b7e: 6730         beq.b      $3bb0
003b80: 0c000027     cmpi.b     #$27, d0
003b84: 672a         beq.b      $3bb0
003b86: 4868ffff     pea.l      -$1(a0)
003b8a: 5385         subq.l     #$1, d5
003b8c: 6530         bcs.b      $3bbe
003b8e: 1018         move.b     (a0)+, d0
003b90: 67c6         beq.b      $3b58
003b92: 0c00000d     cmpi.b     #$d, d0
003b96: 6712         beq.b      $3baa
003b98: 0c000020     cmpi.b     #$20, d0
003b9c: 670c         beq.b      $3baa
003b9e: 0c000009     cmpi.b     #$9, d0
003ba2: 6706         beq.b      $3baa
003ba4: 0c00002c     cmpi.b     #$2c, d0
003ba8: 66e0         bne.b      $3b8a
003baa: 4228ffff     clr.b      -$1(a0)
003bae: 60a8         bra.b      $3b58
003bb0: 4850         pea.l      (a0)
003bb2: 5385         subq.l     #$1, d5
003bb4: 6508         bcs.b      $3bbe
003bb6: 1218         move.b     (a0)+, d1
003bb8: b001         cmp.b      d1, d0
003bba: 66f6         bne.b      $3bb2
003bbc: 60ec         bra.b      $3baa
003bbe: 204f         movea.l    a7, a0
003bc0: 4857         pea.l      (a7)
003bc2: 2f02         move.l     d2, -(a7)
003bc4: 5382         subq.l     #$1, d2
003bc6: 6710         beq.b      $3bd8
003bc8: e582         asl.l      #$2, d2
003bca: 20302800     move.l     (a0, d2.l), d0
003bce: 21902800     move.l     (a0), (a0, d2.l)
003bd2: 20c0         move.l     d0, (a0)+
003bd4: 5182         subq.l     #$8, d2
003bd6: 62f2         bhi.b      $3bca
003bd8: 4ed5         jmp        (a5)
003bda: 4e550000     link.w     a5, #$0
003bde: 48e76080     movem.l    d1-d2/a0, -(a7)
003be2: 2041         movea.l    d1, a0
003be4: 323c0000     move.w     #$0, d1
003be8: 4e40         trap       #$0
003bea: 008d         .dc.w      $008d
003bec: 60000502     bra.w      $40f0
003bf0: 4e550000     link.w     a5, #$0
003bf4: 48e76080     movem.l    d1-d2/a0, -(a7)
003bf8: 323c0001     move.w     #$1, d1
003bfc: 4e40         trap       #$0
003bfe: 008d         .dc.w      $008d
003c00: 650004f0     bcs.w      $40f2
003c04: 2001         move.l     d1, d0
003c06: 600004e8     bra.w      $40f0
003c0a: 4e550000     link.w     a5, #$0
003c0e: 48e76080     movem.l    d1-d2/a0, -(a7)
003c12: 323c0006     move.w     #$6, d1
003c16: 4e40         trap       #$0
003c18: 008d         .dc.w      $008d
003c1a: 640004de     bcc.w      $40fa
003c1e: 0c4100d3     cmpi.w     #$d3, d1
003c22: 660004ce     bne.w      $40f2
003c26: 7001         moveq      #$1, d0
003c28: 600004c6     bra.w      $40f0
003c2c: 4e550000     link.w     a5, #$0
003c30: 48e76080     movem.l    d1-d2/a0, -(a7)
003c34: 2041         movea.l    d1, a0
003c36: 323c000f     move.w     #$f, d1
003c3a: 242d0008     move.l     $8(a5), d2
003c3e: 60a8         bra.b      $3be8
003c40: 4e550000     link.w     a5, #$0
003c44: 48e76080     movem.l    d1-d2/a0, -(a7)
003c48: 2041         movea.l    d1, a0
003c4a: 323c000e     move.w     #$e, d1
003c4e: 6098         bra.b      $3be8
003c50: 4e550000     link.w     a5, #$0
003c54: 48e76080     movem.l    d1-d2/a0, -(a7)
003c58: 323c0002     move.w     #$2, d1
003c5c: 4e40         trap       #$0
003c5e: 008d         .dc.w      $008d
003c60: 65000490     bcs.w      $40f2
003c64: 2002         move.l     d2, d0
003c66: 60000488     bra.w      $40f0
003c6a: 4e550000     link.w     a5, #$0
003c6e: 48e76080     movem.l    d1-d2/a0, -(a7)
003c72: 323c0005     move.w     #$5, d1
003c76: 60e4         bra.b      $3c5c
003c78: 4e550000     link.w     a5, #$0
003c7c: 48e76080     movem.l    d1-d2/a0, -(a7)
003c80: 2041         movea.l    d1, a0
003c82: 323c0000     move.w     #$0, d1
003c86: 4e40         trap       #$0
003c88: 008e         .dc.w      $008e
003c8a: 60000464     bra.w      $40f0
003c8e: 4e550000     link.w     a5, #$0
003c92: 48e76080     movem.l    d1-d2/a0, -(a7)
003c96: 323c0003     move.w     #$3, d1
003c9a: 60ea         bra.b      $3c86
003c9c: 4e550000     link.w     a5, #$0
003ca0: 48e76080     movem.l    d1-d2/a0, -(a7)
003ca4: 2401         move.l     d1, d2
003ca6: 323c0002     move.w     #$2, d1
003caa: 60da         bra.b      $3c86
003cac: 4e550000     link.w     a5, #$0
003cb0: 48e76080     movem.l    d1-d2/a0, -(a7)
003cb4: 2041         movea.l    d1, a0
003cb6: 323c000f     move.w     #$f, d1
003cba: 60ca         bra.b      $3c86
003cbc: 4e550000     link.w     a5, #$0
003cc0: 48e76080     movem.l    d1-d2/a0, -(a7)
003cc4: 2401         move.l     d1, d2
003cc6: 323c0010     move.w     #$10, d1
003cca: 60ba         bra.b      $3c86
003ccc: 4e550000     link.w     a5, #$0
003cd0: 48e76080     movem.l    d1-d2/a0, -(a7)
003cd4: 2401         move.l     d1, d2
003cd6: 323c0011     move.w     #$11, d1
003cda: 60aa         bra.b      $3c86
003cdc: 4e550000     link.w     a5, #$0
003ce0: 48e76080     movem.l    d1-d2/a0, -(a7)
003ce4: 2401         move.l     d1, d2
003ce6: 323c001a     move.w     #$1a, d1
003cea: 609a         bra.b      $3c86
003cec: 4e550000     link.w     a5, #$0
003cf0: 48e76080     movem.l    d1-d2/a0, -(a7)
003cf4: 323c001b     move.w     #$1b, d1
003cf8: 60f0         bra.b      $3cea
003cfa: 4e550000     link.w     a5, #$0
003cfe: 48e76080     movem.l    d1-d2/a0, -(a7)
003d02: 48e71840     movem.l    d3-d4/a1, -(a7)
003d06: 2401         move.l     d1, d2
003d08: 7204         moveq      #$4, d1
003d0a: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
003d10: 4e40         trap       #$0
003d12: 008e         .dc.w      $008e
003d14: 4cdf0218     movem.l    (a7)+, d3-d4/a1
003d18: 600003d6     bra.w      $40f0
003d1c: 4e550000     link.w     a5, #$0
003d20: 48e76080     movem.l    d1-d2/a0, -(a7)
003d24: 2401         move.l     d1, d2
003d26: 323c001c     move.w     #$1c, d1
003d2a: 60be         bra.b      $3cea
003d2c: 4e550000     link.w     a5, #$0
003d30: 48e76080     movem.l    d1-d2/a0, -(a7)
003d34: 323c0024     move.w     #$24, d1
003d38: 60b0         bra.b      $3cea
003d3a: 4e550000     link.w     a5, #$0
003d3e: 48e76080     movem.l    d1-d2/a0, -(a7)
003d42: 323c0025     move.w     #$25, d1
003d46: 60a2         bra.b      $3cea
003d48: 4e550000     link.w     a5, #$0
003d4c: 48e76080     movem.l    d1-d2/a0, -(a7)
003d50: 3401         move.w     d1, d2
003d52: 323c0026     move.w     #$26, d1
003d56: 6092         bra.b      $3cea
003d58: 4e550000     link.w     a5, #$0
003d5c: 48e76080     movem.l    d1-d2/a0, -(a7)
003d60: 3401         move.w     d1, d2
003d62: 323c0027     move.w     #$27, d1
003d66: 6082         bra.b      $3cea
003d68: 4e550000     link.w     a5, #$0
003d6c: 48e76080     movem.l    d1-d2/a0, -(a7)
003d70: 2040         movea.l    d0, a0
003d72: 2001         move.l     d1, d0
003d74: 2f0a         move.l     a2, -(a7)
003d76: 4e40         trap       #$0
003d78: 0080204a245f ori.l      #$204a245f, d0
003d7e: 65000372     bcs.w      $40f2
003d82: 2008         move.l     a0, d0
003d84: 6000036a     bra.w      $40f0
003d88: 4e550000     link.w     a5, #$0
003d8c: 48e76080     movem.l    d1-d2/a0, -(a7)
003d90: 204a         movea.l    a2, a0
003d92: 2440         movea.l    d0, a2
003d94: 4e40         trap       #$0
003d96: 008124486000 ori.l      #$24486000, d1
003d9c: 0354         bchg.b     d1, (a4)
003d9e: 4e550000     link.w     a5, #$0
003da2: 48e76080     movem.l    d1-d2/a0, -(a7)
003da6: 7000         moveq      #$0, d0
003da8: 4e40         trap       #$0
003daa: 000a         .dc.w      $000a
003dac: 60000342     bra.w      $40f0
003db0: 4e550000     link.w     a5, #$0
003db4: 48e76080     movem.l    d1-d2/a0, -(a7)
003db8: 206d0008     movea.l    $8(a5), a0
003dbc: 2210         move.l     (a0), d1
003dbe: 2040         movea.l    d0, a0
003dc0: 2017         move.l     (a7), d0
003dc2: 4e40         trap       #$0
003dc4: 00176500     ori.b      #$0, (a7)
003dc8: 032a206d     btst.l     d1, $206d(a2)
003dcc: 0008         .dc.w      $0008
003dce: 2081         move.l     d1, (a0)
003dd0: 60000328     bra.w      $40fa
003dd4: 4e550000     link.w     a5, #$0
003dd8: 48e76080     movem.l    d1-d2/a0, -(a7)
003ddc: 4e40         trap       #$0
003dde: 000f         .dc.w      $000f
003de0: 6000030e     bra.w      $40f0
003de4: e188         lsl.l      #$8, d0
003de6: 08c0001f     bset.b     #$1f, d0
003dea: 4e550000     link.w     a5, #$0
003dee: 48e76080     movem.l    d1-d2/a0, -(a7)
003df2: 4e40         trap       #$0
003df4: 000a         .dc.w      $000a
003df6: 600002f8     bra.w      $40f0
003dfa: 4e550000     link.w     a5, #$0
003dfe: 48e700c0     movem.l    a0-a1, -(a7)
003e02: 2041         movea.l    d1, a0
003e04: 2240         movea.l    d0, a1
003e06: 222d0008     move.l     $8(a5), d1
003e0a: 4e40         trap       #$0
003e0c: 00116560     ori.b      #$60, (a1)
003e10: 7000         moveq      #$0, d0
003e12: 6068         bra.b      $3e7c
003e14: 4e550000     link.w     a5, #$0
003e18: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003e1c: 2040         movea.l    d0, a0
003e1e: 4e40         trap       #$0
003e20: 00106454     ori.b      #$54, (a0)
003e24: 604a         bra.b      $3e70
003e26: 4e550000     link.w     a5, #$0
003e2a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003e2e: 2040         movea.l    d0, a0
003e30: 2248         movea.l    a0, a1
003e32: 1019         move.b     (a1)+, d0
003e34: 0c00002f     cmpi.b     #$2f, d0
003e38: 671a         beq.b      $3e54
003e3a: 0c00002e     cmpi.b     #$2e, d0
003e3e: 6622         bne.b      $3e62
003e40: 0c19002e     cmpi.b     #$2e, (a1)+
003e44: 67fa         beq.b      $3e40
003e46: 1021         move.b     -(a1), d0
003e48: 672e         beq.b      $3e78
003e4a: 0c00002f     cmpi.b     #$2f, d0
003e4e: 6612         bne.b      $3e62
003e50: 2049         movea.l    a1, a0
003e52: 60de         bra.b      $3e32
003e54: 1019         move.b     (a1)+, d0
003e56: 0c00002f     cmpi.b     #$2f, d0
003e5a: 6706         beq.b      $3e62
003e5c: 0c00002e     cmpi.b     #$2e, d0
003e60: 67de         beq.b      $3e40
003e62: 4e40         trap       #$0
003e64: 00106508     ori.b      #$8, (a0)
003e68: 4a00         tst.b      d0
003e6a: 670c         beq.b      $3e78
003e6c: 2049         movea.l    a1, a0
003e6e: 60c2         bra.b      $3e32
003e70: 2d41800c     move.l     d1, -$7ff4(a6)
003e74: 70ff         moveq      #$ff, d0
003e76: 6004         bra.b      $3e7c
003e78: 2009         move.l     a1, d0
003e7a: 9097         sub.l      (a7), d0
003e7c: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
003e82: 4e5d         unlk       a5
003e84: 4e75         rts        
003e86: 4e550000     link.w     a5, #$0
003e8a: 48e76080     movem.l    d1-d2/a0, -(a7)
003e8e: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
003e92: 242d000c     move.l     $c(a5), d2
003e96: 0802000f     btst.b     #$f, d2
003e9a: 6708         beq.b      $3ea4
003e9c: 262d0010     move.l     $10(a5), d3
003ea0: 282d0014     move.l     $14(a5), d4
003ea4: 2040         movea.l    d0, a0
003ea6: 2001         move.l     d1, d0
003ea8: 222d0008     move.l     $8(a5), d1
003eac: 4e40         trap       #$0
003eae: 00256502     ori.b      #$2, -(a5)
003eb2: 200a         move.l     a2, d0
003eb4: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
003eb8: 60000236     bra.w      $40f0
003ebc: 4e550000     link.w     a5, #$0
003ec0: 48e76080     movem.l    d1-d2/a0, -(a7)
003ec4: 2040         movea.l    d0, a0
003ec6: 4e40         trap       #$0
003ec8: 001a6500     ori.b      #$0, (a2)+
003ecc: 02262001     andi.b     #$1, -(a6)
003ed0: 6000021e     bra.w      $40f0
003ed4: 4e550000     link.w     a5, #$0
003ed8: 48e76080     movem.l    d1-d2/a0, -(a7)
003edc: 2040         movea.l    d0, a0
003ede: 4e40         trap       #$0
003ee0: 001f6500     ori.b      #$0, (a7)+
003ee4: 020e         .dc.w      $020e
003ee6: 2001         move.l     d1, d0
003ee8: 60000206     bra.w      $40f0
003eec: 4e550000     link.w     a5, #$0
003ef0: 48e76080     movem.l    d1-d2/a0, -(a7)
003ef4: 206d0008     movea.l    $8(a5), a0
003ef8: 4e40         trap       #$0
003efa: 00186000     ori.b      #$0, (a0)+
003efe: 01f24e55     bset.b     d0, $55(a2, d4.l)
003f02: 000048e7     ori.b      #$e7, d0
003f06: 6080         bra.b      $3e88
003f08: 2040         movea.l    d0, a0
003f0a: 4e40         trap       #$0
003f0c: 00266000     ori.b      #$0, -(a6)
003f10: 01e0         bset.b     d0, -(a0)
003f12: 4e550000     link.w     a5, #$0
003f16: 48e76080     movem.l    d1-d2/a0, -(a7)
003f1a: 08c1001f     bset.b     #$1f, d1
003f1e: 600c         bra.b      $3f2c
003f20: 4e550000     link.w     a5, #$0
003f24: 48e76080     movem.l    d1-d2/a0, -(a7)
003f28: 242d0008     move.l     $8(a5), d2
003f2c: 4e40         trap       #$0
003f2e: 00276500     ori.b      #$0, -(a7)
003f32: 01c0         bset.b     d0, d0
003f34: 2002         move.l     d2, d0
003f36: 600001b8     bra.w      $40f0
003f3a: 4e550000     link.w     a5, #$0
003f3e: 48e76080     movem.l    d1-d2/a0, -(a7)
003f42: 4e40         trap       #$0
003f44: 000b         .dc.w      $000b
003f46: 600001a8     bra.w      $40f0
003f4a: 4e550000     link.w     a5, #$0
003f4e: 4e40         trap       #$0
003f50: 00524e5d     ori.w      #$4e5d, (a2)
003f54: 4e75         rts        
003f56: 4e550000     link.w     a5, #$0
003f5a: 48e76080     movem.l    d1-d2/a0, -(a7)
003f5e: 2f09         move.l     a1, -(a7)
003f60: 206d0008     movea.l    $8(a5), a0
003f64: 226d000c     movea.l    $c(a5), a1
003f68: 4e40         trap       #$0
003f6a: 001b225f     ori.b      #$5f, (a3)+
003f6e: 60000180     bra.w      $40f0
003f72: 4e550000     link.w     a5, #$0
003f76: 48e76080     movem.l    d1-d2/a0, -(a7)
003f7a: 2040         movea.l    d0, a0
003f7c: 3001         move.w     d1, d0
003f7e: 48e70060     movem.l    a1-a2, -(a7)
003f82: 4e40         trap       #$0
003f84: 00006502     ori.b      #$2, d0
003f88: 200a         move.l     a2, d0
003f8a: 4cdf0600     movem.l    (a7)+, a1-a2
003f8e: 60000160     bra.w      $40f0
003f92: 4e550000     link.w     a5, #$0
003f96: 48e76080     movem.l    d1-d2/a0, -(a7)
003f9a: 2040         movea.l    d0, a0
003f9c: 3001         move.w     d1, d0
003f9e: 48e70060     movem.l    a1-a2, -(a7)
003fa2: 4e40         trap       #$0
003fa4: 000160de     ori.b      #$de, d1
003fa8: 4e550000     link.w     a5, #$0
003fac: 48e76080     movem.l    d1-d2/a0, -(a7)
003fb0: 2f0a         move.l     a2, -(a7)
003fb2: 2440         movea.l    d0, a2
003fb4: 4e40         trap       #$0
003fb6: 0002245f     ori.b      #$5f, d2
003fba: 60000134     bra.w      $40f0
003fbe: 4e550000     link.w     a5, #$0
003fc2: 48e76080     movem.l    d1-d2/a0, -(a7)
003fc6: 2040         movea.l    d0, a0
003fc8: 3001         move.w     d1, d0
003fca: 4e40         trap       #$0
003fcc: 001d6000     ori.b      #$0, (a5)+
003fd0: 0120         btst.l     d0, -(a0)
003fd2: 4e550000     link.w     a5, #$0
003fd6: 48e76080     movem.l    d1-d2/a0, -(a7)
003fda: 4e40         trap       #$0
003fdc: 0008         .dc.w      $0008
003fde: 60000110     bra.w      $40f0
003fe2: 4e550000     link.w     a5, #$0
003fe6: 48e76080     movem.l    d1-d2/a0, -(a7)
003fea: 2040         movea.l    d0, a0
003fec: 7000         moveq      #$0, d0
003fee: 4e40         trap       #$0
003ff0: 00046500     ori.b      #$0, d4
003ff4: 00fe         .dc.w      $00fe
003ff6: 2408         move.l     a0, d2
003ff8: 670000f6     beq.w      $40f0
003ffc: 4258         clr.w      (a0)+
003ffe: 3081         move.w     d1, (a0)
004000: 600000ee     bra.w      $40f0
004004: 4e550000     link.w     a5, #$0
004008: 48e76080     movem.l    d1-d2/a0, -(a7)
00400c: 4e40         trap       #$0
00400e: 000d         .dc.w      $000d
004010: 600000de     bra.w      $40f0
004014: 4e550000     link.w     a5, #$0
004018: 48e76080     movem.l    d1-d2/a0, -(a7)
00401c: 48e71c40     movem.l    d3-d5/a1, -(a7)
004020: 7a03         moveq      #$3, d5
004022: 602e         bra.b      $4052
004024: 4e550000     link.w     a5, #$0
004028: 48e76080     movem.l    d1-d2/a0, -(a7)
00402c: 48e71c40     movem.l    d3-d5/a1, -(a7)
004030: 7a01         moveq      #$1, d5
004032: 601e         bra.b      $4052
004034: 4e550000     link.w     a5, #$0
004038: 48e76080     movem.l    d1-d2/a0, -(a7)
00403c: 48e71c40     movem.l    d3-d5/a1, -(a7)
004040: 7a02         moveq      #$2, d5
004042: 600e         bra.b      $4052
004044: 4e550000     link.w     a5, #$0
004048: 48e76080     movem.l    d1-d2/a0, -(a7)
00404c: 48e71c40     movem.l    d3-d5/a1, -(a7)
004050: 7a00         moveq      #$0, d5
004052: 2040         movea.l    d0, a0
004054: 2401         move.l     d1, d2
004056: 226d0008     movea.l    $8(a5), a1
00405a: 302d0012     move.w     $12(a5), d0
00405e: 4840         swap       d0
004060: 302d000e     move.w     $e(a5), d0
004064: 222d0014     move.l     $14(a5), d1
004068: 7603         moveq      #$3, d3
00406a: 08050001     btst.b     #$1, d5
00406e: 6704         beq.b      $4074
004070: 262d001c     move.l     $1c(a5), d3
004074: 282d0018     move.l     $18(a5), d4
004078: 08050000     btst.b     #$0, d5
00407c: 6606         bne.b      $4084
00407e: 4e40         trap       #$0
004080: 00036004     ori.b      #$4, d3
004084: 4e40         trap       #$0
004086: 00054cdf     ori.b      #$df, d5
00408a: 023860000062 andi.b     #$0, $62.w
004090: 4e550000     link.w     a5, #$0
004094: 48e76080     movem.l    d1-d2/a0, -(a7)
004098: 4e40         trap       #$0
00409a: 000c         .dc.w      $000c
00409c: 60000052     bra.w      $40f0
0040a0: 4e550000     link.w     a5, #$0
0040a4: 48e76080     movem.l    d1-d2/a0, -(a7)
0040a8: 4e40         trap       #$0
0040aa: 000c         .dc.w      $000c
0040ac: 65000044     bcs.w      $40f2
0040b0: 2001         move.l     d1, d0
0040b2: 6000003c     bra.w      $40f0
0040b6: 4e550000     link.w     a5, #$0
0040ba: 48e76080     movem.l    d1-d2/a0, -(a7)
0040be: 2200         move.l     d0, d1
0040c0: 4e40         trap       #$0
0040c2: 001c6000     ori.b      #$0, (a4)+
0040c6: 002a4e550000 ori.b      #$55, $0(a2)
0040cc: 48e76080     movem.l    d1-d2/a0, -(a7)
0040d0: 41fa0012     lea.l      $40e4(pc), a0
0040d4: 2d408786     move.l     d0, -$787a(a6)
0040d8: 6602         bne.b      $40dc
0040da: 2040         movea.l    d0, a0
0040dc: 4e40         trap       #$0
0040de: 0009         .dc.w      $0009
0040e0: 6000000e     bra.w      $40f0
0040e4: 2001         move.l     d1, d0
0040e6: 206e8786     movea.l    -$787a(a6), a0
0040ea: 4e90         jsr        (a0)
0040ec: 4e40         trap       #$0
0040ee: 001e640c     ori.b      #$c, (a6)+
0040f2: 2d41800c     move.l     d1, -$7ff4(a6)
0040f6: 70ff         moveq      #$ff, d0
0040f8: 6004         bra.b      $40fe
0040fa: 65f6         bcs.b      $40f2
0040fc: 7000         moveq      #$0, d0
0040fe: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
004104: 4e5d         unlk       a5
004106: 4e75         rts        
004108: 4e550000     link.w     a5, #$0
00410c: 2200         move.l     d0, d1
00410e: 6100001e     bsr.w      $412e
004112: 6100f770     bsr.w      $3884
004116: 6008         bra.b      $4120
004118: 4e550000     link.w     a5, #$0
00411c: 4afc         illegal    #$4afc
00411e: 2200         move.l     d0, d1
004120: 4e40         trap       #$0
004122: 0006dead     ori.b      #$ad, d6
004126: dead003c     add.l      $3c(a5), d7
00412a: 00014e75     ori.b      #$75, d1
00412e: 4e75         rts        
