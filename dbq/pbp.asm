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
00009c: 203c00006b0e move.l     #$6b0e, d0
0000a2: 4ebb0800     jsr        $a4(pc,d0.l)
0000a6: 6076         bra.b      $11e
0000a8: 43e80004     lea.l      $4(a0), a1
0000ac: 2d499424     move.l     a1, -$6bdc(a6)
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
00011e: 207c0000658c movea.l    #$658c, a0
000124: 4ebb8800     jsr        $126(pc,a0.l)
000128: 6500011c     bcs.w      $246
00012c: 6120         bsr.b      $14e
00012e: 4cdf0003     movem.l    (a7)+, d0-d1
000132: 9bcd         suba.l     a5, a5
000134: 2f2e9424     move.l     -$6bdc(a6), -(a7)
000138: 207c000002ea movea.l    #$2ea, a0
00013e: 4ebb8800     jsr        $140(pc,a0.l)
000142: 7000         moveq      #$0, d0
000144: 207c00007210 movea.l    #$7210, a0
00014a: 4ebb8800     jsr        $14c(pc,a0.l)
00014e: 207cffff9504 movea.l    #$ffff9504, a0
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
00018a: 207c000071e0 movea.l    #$71e0, a0
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
0001d6: 227c0000719e movea.l    #$719e, a1
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
000250: 227cffff909c movea.l    #$ffff909c, a1
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
000272: 207cffff909c movea.l    #$ffff909c, a0
000278: d1ce         adda.l     a6, a0
00027a: 6100ff18     bsr.w      $194
00027e: 4e40         trap       #$0
000280: 00064e40     ori.b      #$40, d6
000284: 000612d8     ori.b      #$d8, d6
000288: 66fc         bne.b      $286
00028a: 4e75         rts        
00028c: 4e550000     link.w     a5, #$0
000290: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
000294: 598f         subq.l     #$4, a7
000296: 60000078     bra.w      $310
00029a: 7800         moveq      #$0, d4
00029c: 6010         bra.b      $2ae
00029e: 700a         moveq      #$a, d0
0002a0: d0af0004     add.l      $4(a7), d0
0002a4: 2204         move.l     d4, d1
0002a6: e789         lsl.l      #$3, d1
0002a8: d081         add.l      d1, d0
0002aa: 2e80         move.l     d0, (a7)
0002ac: 5284         addq.l     #$1, d4
0002ae: 206f0004     movea.l    $4(a7), a0
0002b2: 7000         moveq      #$0, d0
0002b4: 30280008     move.w     $8(a0), d0
0002b8: b084         cmp.l      d4, d0
0002ba: 6ee2         bgt.b      $29e
0002bc: 6052         bra.b      $310
0002be: 7800         moveq      #$0, d4
0002c0: 6010         bra.b      $2d2
0002c2: 700a         moveq      #$a, d0
0002c4: d0af0004     add.l      $4(a7), d0
0002c8: 2204         move.l     d4, d1
0002ca: e789         lsl.l      #$3, d1
0002cc: d081         add.l      d1, d0
0002ce: 2e80         move.l     d0, (a7)
0002d0: 5284         addq.l     #$1, d4
0002d2: 206f0004     movea.l    $4(a7), a0
0002d6: 7000         moveq      #$0, d0
0002d8: 30280008     move.w     $8(a0), d0
0002dc: b084         cmp.l      d4, d0
0002de: 6ee2         bgt.b      $2c2
0002e0: 602e         bra.b      $310
0002e2: 206f0004     movea.l    $4(a7), a0
0002e6: 2010         move.l     (a0), d0
0002e8: 5780         subq.l     #$3, d0
0002ea: 0c800000000a cmpi.l     #$a, d0
0002f0: 621e         bhi.b      $310
0002f2: 303b0206     move.w     $2fa(pc, d0.w), d0
0002f6: 4efb0002     jmp        $2fa(pc, d0.w)
0002fa: 00160016     ori.b      #$16, (a6)
0002fe: ffa0         dc.w       $ffa0
000300: ffc4         dc.w       $ffc4
000302: 00160016     ori.b      #$16, (a6)
000306: 00160016     ori.b      #$16, (a6)
00030a: 00160016     ori.b      #$16, (a6)
00030e: 0016588f     ori.b      #$8f, (a6)
000312: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
000318: 4e5d         unlk       a5
00031a: 4e75         rts        
00031c: 4e550000     link.w     a5, #$0
000320: 48e7c080     movem.l    d0-d1/a0, -(a7)
000324: 4fefffe8     lea.l      -$18(a7), a7
000328: 2f2f0018     move.l     $18(a7), -(a7)
00032c: 41fa05f0     lea.l      $91e(pc), a0
000330: 2208         move.l     a0, d1
000332: 41ef0008     lea.l      $8(a7), a0
000336: 2008         move.l     a0, d0
000338: 61006452     bsr.w      $678c
00033c: 588f         addq.l     #$4, a7
00033e: 41fa05e4     lea.l      $924(pc), a0
000342: 2208         move.l     a0, d1
000344: 41ef0004     lea.l      $4(a7), a0
000348: 2008         move.l     a0, d0
00034a: 61003026     bsr.w      $3372
00034e: 2e80         move.l     d0, (a7)
000350: 670c         beq.b      $35e
000352: 2017         move.l     (a7), d0
000354: 61002620     bsr.w      $2976
000358: 2017         move.l     (a7), d0
00035a: 6100644c     bsr.w      $67a8
00035e: 2f2f0018     move.l     $18(a7), -(a7)
000362: 41fa05c2     lea.l      $926(pc), a0
000366: 2208         move.l     a0, d1
000368: 41ef0008     lea.l      $8(a7), a0
00036c: 2008         move.l     a0, d0
00036e: 6100641c     bsr.w      $678c
000372: 588f         addq.l     #$4, a7
000374: 41fa05b9     lea.l      $92f(pc), a0
000378: 2208         move.l     a0, d1
00037a: 41ef0004     lea.l      $4(a7), a0
00037e: 2008         move.l     a0, d0
000380: 61002ff0     bsr.w      $3372
000384: 2e80         move.l     d0, (a7)
000386: 670c         beq.b      $394
000388: 2017         move.l     (a7), d0
00038a: 61001b90     bsr.w      $1f1c
00038e: 2017         move.l     (a7), d0
000390: 61006416     bsr.w      $67a8
000394: 4fef0018     lea.l      $18(a7), a7
000398: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00039e: 4e5d         unlk       a5
0003a0: 4e75         rts        
0003a2: 4e550000     link.w     a5, #$0
0003a6: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
0003aa: 2800         move.l     d0, d4
0003ac: 598f         subq.l     #$4, a7
0003ae: 7a01         moveq      #$1, d5
0003b0: 60000066     bra.w      $418
0003b4: 206f0008     movea.l    $8(a7), a0
0003b8: 24705c00     movea.l    (a0, d5.l * 4), a2
0003bc: 0c12002d     cmpi.b     #$2d, (a2)
0003c0: 6654         bne.b      $416
0003c2: 528a         addq.l     #$1, a2
0003c4: 6040         bra.b      $406
0003c6: 528a         addq.l     #$1, a2
0003c8: 0c120050     cmpi.b     #$50, (a2)
0003cc: 6648         bne.b      $416
0003ce: 528a         addq.l     #$1, a2
0003d0: 4857         pea.l      (a7)
0003d2: 41fa055d     lea.l      $931(pc), a0
0003d6: 2208         move.l     a0, d1
0003d8: 200a         move.l     a2, d0
0003da: 610063e0     bsr.w      $67bc
0003de: 588f         addq.l     #$4, a7
0003e0: 2017         move.l     (a7), d0
0003e2: 61004750     bsr.w      $4b34
0003e6: 61004792     bsr.w      $4b7a
0003ea: 08000000     btst.b     #$0, d0
0003ee: 6706         beq.b      $3f6
0003f0: 610012c8     bsr.w      $16ba
0003f4: 6020         bra.b      $416
0003f6: 610012d4     bsr.w      $16cc
0003fa: 601a         bra.b      $416
0003fc: 528a         addq.l     #$1, a2
0003fe: 200a         move.l     a2, d0
000400: 61002f50     bsr.w      $3352
000404: 6010         bra.b      $416
000406: 1012         move.b     (a2), d0
000408: 4880         ext.w      d0
00040a: 0c40004c     cmpi.w     #$4c, d0
00040e: 67b6         beq.b      $3c6
000410: 0c40006f     cmpi.w     #$6f, d0
000414: 67e6         beq.b      $3fc
000416: 5285         addq.l     #$1, d5
000418: ba84         cmp.l      d4, d5
00041a: 6d00ff98     blt.w      $3b4
00041e: 588f         addq.l     #$4, a7
000420: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
000426: 4e5d         unlk       a5
000428: 4e75         rts        
00042a: 4e550000     link.w     a5, #$0
00042e: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
000432: 4fefff76     lea.l      -$8a(a7), a7
000436: 70ff         moveq      #$ff, d0
000438: 2f400082     move.l     d0, $82(a7)
00043c: 42af0020     clr.l      $20(a7)
000440: 4297         clr.l      (a7)
000442: 41fb017000004cfc lea.l      $4cfc(a16, invalid.w), a0
00044a: 2008         move.l     a0, d0
00044c: 61004cd6     bsr.w      $5124
000450: 222f008e     move.l     $8e(a7), d1
000454: 202f008a     move.l     $8a(a7), d0
000458: 6100ff48     bsr.w      $3a2
00045c: 41ef0082     lea.l      $82(a7), a0
000460: 2008         move.l     a0, d0
000462: 61000fd6     bsr.w      $143a
000466: 4a00         tst.b      d0
000468: 6612         bne.b      $47c
00046a: 1d7c00019438 move.b     #$1, -$6bc8(a6)
000470: 7201         moveq      #$1, d1
000472: 41fa04c0     lea.l      $934(pc), a0
000476: 2008         move.l     a0, d0
000478: 61001264     bsr.w      $16de
00047c: 486e801e     pea.l      -$7fe2(a6)
000480: 720e         moveq      #$e, d1
000482: 7020         moveq      #$20, d0
000484: 61002b4e     bsr.w      $2fd4
000488: 588f         addq.l     #$4, a7
00048a: 4a00         tst.b      d0
00048c: 6616         bne.b      $4a4
00048e: 48780118     pea.l      $118.w
000492: 7212         moveq      #$12, d1
000494: 203c00000098 move.l     #$98, d0
00049a: 6100516c     bsr.w      $5608
00049e: 588f         addq.l     #$4, a7
0004a0: 6100518c     bsr.w      $562e
0004a4: 6000043e     bra.w      $8e4
0004a8: 610026e0     bsr.w      $2b8a
0004ac: 41ee801e     lea.l      -$7fe2(a6), a0
0004b0: 2008         move.l     a0, d0
0004b2: 61002d40     bsr.w      $31f4
0004b6: 4a80         tst.l      d0
0004b8: 66000352     bne.w      $80c
0004bc: 223c00002032 move.l     #$2032, d1
0004c2: 202f0082     move.l     $82(a7), d0
0004c6: 61006870     bsr.w      $6d38
0004ca: 6100477c     bsr.w      $4c48
0004ce: 6000033c     bra.w      $80c
0004d2: 4878005e     pea.l      $5e.w
0004d6: 41ef0028     lea.l      $28(a7), a0
0004da: 2208         move.l     a0, d1
0004dc: 202f0086     move.l     $86(a7), d0
0004e0: 610062fe     bsr.w      $67e0
0004e4: 588f         addq.l     #$4, a7
0004e6: 2f400086     move.l     d0, $86(a7)
0004ea: 705e         moveq      #$5e, d0
0004ec: b0af0086     cmp.l      $86(a7), d0
0004f0: 6716         beq.b      $508
0004f2: 48780119     pea.l      $119.w
0004f6: 7212         moveq      #$12, d1
0004f8: 203c00000098 move.l     #$98, d0
0004fe: 61005108     bsr.w      $5608
000502: 588f         addq.l     #$4, a7
000504: 61005128     bsr.w      $562e
000508: 41ef0024     lea.l      $24(a7), a0
00050c: 2008         move.l     a0, d0
00050e: 6100fd7c     bsr.w      $28c
000512: 600002cc     bra.w      $7e0
000516: 7800         moveq      #$0, d4
000518: 600000e8     bra.w      $602
00051c: 2f6f00280014 move.l     $28(a7), $14(a7)
000522: 7006         moveq      #$6, d0
000524: b0af0024     cmp.l      $24(a7), d0
000528: 6604         bne.b      $52e
00052a: 7001         moveq      #$1, d0
00052c: 6002         bra.b      $530
00052e: 7000         moveq      #$0, d0
000530: 1f400012     move.b     d0, $12(a7)
000534: 41ef002e     lea.l      $2e(a7), a0
000538: 3f704e000018 move.w     (a0, d4.l * 8), $18(a7)
00053e: 41ef002e     lea.l      $2e(a7), a0
000542: 2f704e02001a move.l     $2(a0, d4.l), $1a(a7)
000548: 3f704e06001e move.w     $6(a0, d4.l), $1e(a7)
00054e: 41ee801e     lea.l      -$7fe2(a6), a0
000552: 2008         move.l     a0, d0
000554: 61002ad8     bsr.w      $302e
000558: 6066         bra.b      $5c0
00055a: 202f0020     move.l     $20(a7), d0
00055e: 61002c34     bsr.w      $3194
000562: 2e80         move.l     d0, (a7)
000564: 2057         movea.l    (a7), a0
000566: 202f0014     move.l     $14(a7), d0
00056a: b0a80002     cmp.l      $2(a0), d0
00056e: 6650         bne.b      $5c0
000570: 2057         movea.l    (a7), a0
000572: 302f0018     move.w     $18(a7), d0
000576: b0680006     cmp.w      $6(a0), d0
00057a: 6f44         ble.b      $5c0
00057c: 2057         movea.l    (a7), a0
00057e: 2f500004     move.l     (a0), $4(a7)
000582: 2f6800040008 move.l     $4(a0), $8(a7)
000588: 2f680008000c move.l     $8(a0), $c(a7)
00058e: 3f68000c0010 move.w     $c(a0), $10(a7)
000594: 486f0012     pea.l      $12(a7)
000598: 222f0024     move.l     $24(a7), d1
00059c: 41ee801e     lea.l      -$7fe2(a6), a0
0005a0: 2008         move.l     a0, d0
0005a2: 61002c08     bsr.w      $31ac
0005a6: 588f         addq.l     #$4, a7
0005a8: 2f6f00040012 move.l     $4(a7), $12(a7)
0005ae: 2f6f00080016 move.l     $8(a7), $16(a7)
0005b4: 2f6f000c001a move.l     $c(a7), $1a(a7)
0005ba: 3f6f0010001e move.w     $10(a7), $1e(a7)
0005c0: 41ee801e     lea.l      -$7fe2(a6), a0
0005c4: 2008         move.l     a0, d0
0005c6: 61002a82     bsr.w      $304a
0005ca: 2f400020     move.l     d0, $20(a7)
0005ce: 4aaf0020     tst.l      $20(a7)
0005d2: 6600ff86     bne.w      $55a
0005d6: 41ef0012     lea.l      $12(a7), a0
0005da: 2208         move.l     a0, d1
0005dc: 41ee801e     lea.l      -$7fe2(a6), a0
0005e0: 2008         move.l     a0, d0
0005e2: 61002a8e     bsr.w      $3072
0005e6: 4a00         tst.b      d0
0005e8: 6616         bne.b      $600
0005ea: 4878011a     pea.l      $11a.w
0005ee: 7212         moveq      #$12, d1
0005f0: 203c00000098 move.l     #$98, d0
0005f6: 61005010     bsr.w      $5608
0005fa: 588f         addq.l     #$4, a7
0005fc: 61005030     bsr.w      $562e
000600: 5284         addq.l     #$1, d4
000602: 7000         moveq      #$0, d0
000604: 302f002c     move.w     $2c(a7), d0
000608: b084         cmp.l      d4, d0
00060a: 6e00ff10     bgt.w      $51c
00060e: 600001fc     bra.w      $80c
000612: 41ef0028     lea.l      $28(a7), a0
000616: 2008         move.l     a0, d0
000618: 610005a2     bsr.w      $bbc
00061c: 600001ee     bra.w      $80c
000620: 202f0020     move.l     $20(a7), d0
000624: 61002b6e     bsr.w      $3194
000628: 2e80         move.l     d0, (a7)
00062a: 2057         movea.l    (a7), a0
00062c: 202f0028     move.l     $28(a7), d0
000630: b0a80002     cmp.l      $2(a0), d0
000634: 6638         bne.b      $66e
000636: 2017         move.l     (a7), d0
000638: 61000500     bsr.w      $b3a
00063c: 222f0020     move.l     $20(a7), d1
000640: 41ee801e     lea.l      -$7fe2(a6), a0
000644: 2008         move.l     a0, d0
000646: 61002a8a     bsr.w      $30d2
00064a: 4a00         tst.b      d0
00064c: 6616         bne.b      $664
00064e: 4878011b     pea.l      $11b.w
000652: 7212         moveq      #$12, d1
000654: 203c00000098 move.l     #$98, d0
00065a: 61004fac     bsr.w      $5608
00065e: 588f         addq.l     #$4, a7
000660: 61004fcc     bsr.w      $562e
000664: 41ee801e     lea.l      -$7fe2(a6), a0
000668: 2008         move.l     a0, d0
00066a: 610029c2     bsr.w      $302e
00066e: 41ee801e     lea.l      -$7fe2(a6), a0
000672: 2008         move.l     a0, d0
000674: 610029d4     bsr.w      $304a
000678: 2f400020     move.l     d0, $20(a7)
00067c: 66a2         bne.b      $620
00067e: 41ef0028     lea.l      $28(a7), a0
000682: 2008         move.l     a0, d0
000684: 61000500     bsr.w      $b86
000688: 60000182     bra.w      $80c
00068c: 202f0020     move.l     $20(a7), d0
000690: 61002b02     bsr.w      $3194
000694: 2e80         move.l     d0, (a7)
000696: 2057         movea.l    (a7), a0
000698: 202f0028     move.l     $28(a7), d0
00069c: b0a80002     cmp.l      $2(a0), d0
0006a0: 6632         bne.b      $6d4
0006a2: 222f0020     move.l     $20(a7), d1
0006a6: 41ee801e     lea.l      -$7fe2(a6), a0
0006aa: 2008         move.l     a0, d0
0006ac: 61002a24     bsr.w      $30d2
0006b0: 4a00         tst.b      d0
0006b2: 6616         bne.b      $6ca
0006b4: 4878011c     pea.l      $11c.w
0006b8: 7212         moveq      #$12, d1
0006ba: 203c00000098 move.l     #$98, d0
0006c0: 61004f46     bsr.w      $5608
0006c4: 588f         addq.l     #$4, a7
0006c6: 61004f66     bsr.w      $562e
0006ca: 41ee801e     lea.l      -$7fe2(a6), a0
0006ce: 2008         move.l     a0, d0
0006d0: 6100295c     bsr.w      $302e
0006d4: 41ee801e     lea.l      -$7fe2(a6), a0
0006d8: 2008         move.l     a0, d0
0006da: 6100296e     bsr.w      $304a
0006de: 2f400020     move.l     d0, $20(a7)
0006e2: 66a8         bne.b      $68c
0006e4: 2f6f00280014 move.l     $28(a7), $14(a7)
0006ea: 41ef0012     lea.l      $12(a7), a0
0006ee: 2008         move.l     a0, d0
0006f0: 61000448     bsr.w      $b3a
0006f4: 60000116     bra.w      $80c
0006f8: 202f0020     move.l     $20(a7), d0
0006fc: 61002a96     bsr.w      $3194
000700: 61000438     bsr.w      $b3a
000704: 222f0020     move.l     $20(a7), d1
000708: 41ee801e     lea.l      -$7fe2(a6), a0
00070c: 2008         move.l     a0, d0
00070e: 610029c2     bsr.w      $30d2
000712: 4a00         tst.b      d0
000714: 6616         bne.b      $72c
000716: 4878011d     pea.l      $11d.w
00071a: 7212         moveq      #$12, d1
00071c: 203c00000098 move.l     #$98, d0
000722: 61004ee4     bsr.w      $5608
000726: 588f         addq.l     #$4, a7
000728: 61004f04     bsr.w      $562e
00072c: 41ee801e     lea.l      -$7fe2(a6), a0
000730: 2008         move.l     a0, d0
000732: 610028fa     bsr.w      $302e
000736: 41ee801e     lea.l      -$7fe2(a6), a0
00073a: 2008         move.l     a0, d0
00073c: 6100290c     bsr.w      $304a
000740: 2f400020     move.l     d0, $20(a7)
000744: 66b2         bne.b      $6f8
000746: 41ef0028     lea.l      $28(a7), a0
00074a: 2008         move.l     a0, d0
00074c: 610006a6     bsr.w      $df4
000750: 600000ba     bra.w      $80c
000754: 41ef0028     lea.l      $28(a7), a0
000758: 2008         move.l     a0, d0
00075a: 6100073e     bsr.w      $e9a
00075e: 600000ac     bra.w      $80c
000762: 202f0020     move.l     $20(a7), d0
000766: 61002a2c     bsr.w      $3194
00076a: 610003ce     bsr.w      $b3a
00076e: 222f0020     move.l     $20(a7), d1
000772: 41ee801e     lea.l      -$7fe2(a6), a0
000776: 2008         move.l     a0, d0
000778: 61002958     bsr.w      $30d2
00077c: 4a00         tst.b      d0
00077e: 6616         bne.b      $796
000780: 4878011e     pea.l      $11e.w
000784: 7212         moveq      #$12, d1
000786: 203c00000098 move.l     #$98, d0
00078c: 61004e7a     bsr.w      $5608
000790: 588f         addq.l     #$4, a7
000792: 61004e9a     bsr.w      $562e
000796: 41ee801e     lea.l      -$7fe2(a6), a0
00079a: 2008         move.l     a0, d0
00079c: 61002890     bsr.w      $302e
0007a0: 41ee801e     lea.l      -$7fe2(a6), a0
0007a4: 2008         move.l     a0, d0
0007a6: 610028a2     bsr.w      $304a
0007aa: 2f400020     move.l     d0, $20(a7)
0007ae: 66b2         bne.b      $762
0007b0: 1d7c00019438 move.b     #$1, -$6bc8(a6)
0007b6: 6054         bra.b      $80c
0007b8: 61000ee8     bsr.w      $16a2
0007bc: 41fa018c     lea.l      $94a(pc), a0
0007c0: 2008         move.l     a0, d0
0007c2: 6100fb58     bsr.w      $31c
0007c6: 6044         bra.b      $80c
0007c8: 4878011f     pea.l      $11f.w
0007cc: 7212         moveq      #$12, d1
0007ce: 203c00000098 move.l     #$98, d0
0007d4: 61004e32     bsr.w      $5608
0007d8: 588f         addq.l     #$4, a7
0007da: 61004e52     bsr.w      $562e
0007de: 602c         bra.b      $80c
0007e0: 202f0024     move.l     $24(a7), d0
0007e4: 5780         subq.l     #$3, d0
0007e6: 0c800000000a cmpi.l     #$a, d0
0007ec: 62da         bhi.b      $7c8
0007ee: 303b0206     move.w     $7f6(pc, d0.w), d0
0007f2: 4efb0002     jmp        $7f6(pc, d0.w)
0007f6: ff36fe1c     fsave      $1c(a6, a7.l)
0007fa: fd20         fsave      -(a0)
0007fc: fd20         fsave      -(a0)
0007fe: ffd2         dc.w       $ffd2
000800: ffa0         dc.w       $ffa0
000802: ffd2         dc.w       $ffd2
000804: fe6effc2ff5e fsogt.b    -$a2(a6)
00080a: fed4202f0082 fbf.l      $202f088e
000810: 6100643a     bsr.w      $6c4c
000814: 4a80         tst.l      d0
000816: 6f12         ble.b      $82a
000818: 41ee801e     lea.l      -$7fe2(a6), a0
00081c: 2008         move.l     a0, d0
00081e: 610029c0     bsr.w      $31e0
000822: 7206         moveq      #$6, d1
000824: b280         cmp.l      d0, d1
000826: 6f00fcaa     ble.w      $4d2
00082a: 41ee801e     lea.l      -$7fe2(a6), a0
00082e: 2008         move.l     a0, d0
000830: 610029c2     bsr.w      $31f4
000834: 4a80         tst.l      d0
000836: 6f0000ac     ble.w      $8e4
00083a: 41ee801e     lea.l      -$7fe2(a6), a0
00083e: 2008         move.l     a0, d0
000840: 610027ec     bsr.w      $302e
000844: 41ee801e     lea.l      -$7fe2(a6), a0
000848: 2008         move.l     a0, d0
00084a: 610027fe     bsr.w      $304a
00084e: 2f400020     move.l     d0, $20(a7)
000852: 202f0020     move.l     $20(a7), d0
000856: 6100293c     bsr.w      $3194
00085a: 2040         movea.l    d0, a0
00085c: 2f500012     move.l     (a0), $12(a7)
000860: 2f6800040016 move.l     $4(a0), $16(a7)
000866: 2f680008001a move.l     $8(a0), $1a(a7)
00086c: 3f68000c001e move.w     $c(a0), $1e(a7)
000872: 6068         bra.b      $8dc
000874: 202f0020     move.l     $20(a7), d0
000878: 6100291a     bsr.w      $3194
00087c: 2e80         move.l     d0, (a7)
00087e: 2057         movea.l    (a7), a0
000880: 302f001e     move.w     $1e(a7), d0
000884: b068000c     cmp.w      $c(a0), d0
000888: 6644         bne.b      $8ce
00088a: 2057         movea.l    (a7), a0
00088c: 202f001a     move.l     $1a(a7), d0
000890: b0a80008     cmp.l      $8(a0), d0
000894: 6638         bne.b      $8ce
000896: 2017         move.l     (a7), d0
000898: 610000c8     bsr.w      $962
00089c: 222f0020     move.l     $20(a7), d1
0008a0: 41ee801e     lea.l      -$7fe2(a6), a0
0008a4: 2008         move.l     a0, d0
0008a6: 6100282a     bsr.w      $30d2
0008aa: 4a00         tst.b      d0
0008ac: 6616         bne.b      $8c4
0008ae: 48780120     pea.l      $120.w
0008b2: 7212         moveq      #$12, d1
0008b4: 203c00000098 move.l     #$98, d0
0008ba: 61004d4c     bsr.w      $5608
0008be: 588f         addq.l     #$4, a7
0008c0: 61004d6c     bsr.w      $562e
0008c4: 41ee801e     lea.l      -$7fe2(a6), a0
0008c8: 2008         move.l     a0, d0
0008ca: 61002762     bsr.w      $302e
0008ce: 41ee801e     lea.l      -$7fe2(a6), a0
0008d2: 2008         move.l     a0, d0
0008d4: 61002774     bsr.w      $304a
0008d8: 2f400020     move.l     d0, $20(a7)
0008dc: 4aaf0020     tst.l      $20(a7)
0008e0: 6600ff92     bne.w      $874
0008e4: 4a2e9438     tst.b      -$6bc8(a6)
0008e8: 6700fbbe     beq.w      $4a8
0008ec: 41ee801e     lea.l      -$7fe2(a6), a0
0008f0: 2008         move.l     a0, d0
0008f2: 61002844     bsr.w      $3138
0008f6: 202f0082     move.l     $82(a7), d0
0008fa: 61000c24     bsr.w      $1520
0008fe: 4a00         tst.b      d0
000900: 660c         bne.b      $90e
000902: 7200         moveq      #$0, d1
000904: 41fa0048     lea.l      $94e(pc), a0
000908: 2008         move.l     a0, d0
00090a: 61000dd2     bsr.w      $16de
00090e: 7000         moveq      #$0, d0
000910: 4fef008a     lea.l      $8a(a7), a7
000914: 4ced0110fff8 movem.l    -$8(a5), d4/a0
00091a: 4e5d         unlk       a5
00091c: 4e75         rts        
00091e: 636c         bls.b      $98c
000920: 2e25         move.l     -(a5), d7
000922: 7300         .dc.w      $7300
000924: 7700         .dc.w      $7700
000926: 6275         bhi.b      $99d
000928: 6464         bcc.b      $98e
00092a: 792e         .dc.w      $792e
00092c: 257300770025 move.l     $77(a3, d0.w), $25(a2)
000932: 6400496e     bcc.w      $52a2
000936: 6961         bvs.b      $999
000938: 6c69         bge.b      $9a3
00093a: 7a61         moveq      #$61, d5
00093c: 7469         moveq      #$69, d2
00093e: 6f6e         ble.b      $9ae
000940: 7320         .dc.w      $7320
000942: 6661         bne.b      $9a5
000944: 696c         bvs.b      $9b2
000946: 6564         bcs.b      $9ac
000948: 2e00         move.l     d0, d7
00094a: 746d         moveq      #$6d, d2
00094c: 7000         moveq      #$0, d0
00094e: 4552         .dc.w      $4552
000950: 524f         addq.w     #$1, a7
000952: 5220         addq.b     #$1, -(a0)
000954: 636c         bls.b      $9c2
000956: 6f73         ble.b      $9cb
000958: 696e         bvs.b      $9c8
00095a: 6720         beq.b      $97c
00095c: 646f         bcc.b      $9cd
00095e: 776e         .dc.w      $776e
000960: 00004e55     ori.b      #$55, d0
000964: 000048e7     ori.b      #$e7, d0
000968: c8b02440     and.l      $40(a0, d2.w), d4
00096c: 4fefffc4     lea.l      -$3c(a7), a7
000970: 7800         moveq      #$0, d4
000972: 4aae942c     tst.l      -$6bd4(a6)
000976: 6636         bne.b      $9ae
000978: 48780004     pea.l      $4.w
00097c: 223c00004000 move.l     #$4000, d1
000982: 41ee813c     lea.l      -$7ec4(a6), a0
000986: 2008         move.l     a0, d0
000988: 6100410c     bsr.w      $4a96
00098c: 588f         addq.l     #$4, a7
00098e: 2d40942c     move.l     d0, -$6bd4(a6)
000992: 4aae942c     tst.l      -$6bd4(a6)
000996: 6616         bne.b      $9ae
000998: 4878012c     pea.l      $12c.w
00099c: 7212         moveq      #$12, d1
00099e: 203c00000098 move.l     #$98, d0
0009a4: 61004c62     bsr.w      $5608
0009a8: 588f         addq.l     #$4, a7
0009aa: 61004c82     bsr.w      $562e
0009ae: 4a12         tst.b      (a2)
0009b0: 6704         beq.b      $9b6
0009b2: 7006         moveq      #$6, d0
0009b4: 6002         bra.b      $9b8
0009b6: 7005         moveq      #$5, d0
0009b8: 2f400008     move.l     d0, $8(a7)
0009bc: 3f7c0001000c move.w     #$1, $c(a7)
0009c2: 200a         move.l     a2, d0
0009c4: 5080         addq.l     #$8, d0
0009c6: 2640         movea.l    d0, a3
0009c8: 306b0004     movea.w    $4(a3), a0
0009cc: 2008         move.l     a0, d0
0009ce: 610019aa     bsr.w      $237a
0009d2: 4a00         tst.b      d0
0009d4: 67000102     beq.w      $ad8
0009d8: 303c00ff     move.w     #$ff, d0
0009dc: c06b0002     and.w      $2(a3), d0
0009e0: 0c400001     cmpi.w     #$1, d0
0009e4: 650000d2     bcs.w      $ab8
0009e8: 303c00ff     move.w     #$ff, d0
0009ec: c06b0002     and.w      $2(a3), d0
0009f0: 0c400008     cmpi.w     #$8, d0
0009f4: 620000c2     bhi.w      $ab8
0009f8: 2f2a0002     move.l     $2(a2), -(a7)
0009fc: 486f0004     pea.l      $4(a7)
000a00: 7000         moveq      #$0, d0
000a02: 1012         move.b     (a2), d0
000a04: 2200         move.l     d0, d1
000a06: 200b         move.l     a3, d0
000a08: 61001e3c     bsr.w      $2846
000a0c: 508f         addq.l     #$8, a7
000a0e: 4a00         tst.b      d0
000a10: 660000fa     bne.w      $b0c
000a14: 2f2a0002     move.l     $2(a2), -(a7)
000a18: 222e942c     move.l     -$6bd4(a6), d1
000a1c: 200b         move.l     a3, d0
000a1e: 610006f6     bsr.w      $1116
000a22: 588f         addq.l     #$4, a7
000a24: 2800         move.l     d0, d4
000a26: 4a84         tst.l      d4
000a28: 660000e2     bne.w      $b0c
000a2c: 202e942c     move.l     -$6bd4(a6), d0
000a30: 61002c2e     bsr.w      $3660
000a34: 61001364     bsr.w      $1d9a
000a38: 2e80         move.l     d0, (a7)
000a3a: 70ff         moveq      #$ff, d0
000a3c: b097         cmp.l      (a7), d0
000a3e: 6606         bne.b      $a46
000a40: 7804         moveq      #$4, d4
000a42: 600000c8     bra.w      $b0c
000a46: 61000e30     bsr.w      $1878
000a4a: d097         add.l      (a7), d0
000a4c: 2200         move.l     d0, d1
000a4e: 202e942c     move.l     -$6bd4(a6), d0
000a52: 61002c44     bsr.w      $3698
000a56: 61000e20     bsr.w      $1878
000a5a: d097         add.l      (a7), d0
000a5c: 2f400004     move.l     d0, $4(a7)
000a60: 206f0004     movea.l    $4(a7), a0
000a64: 2010         move.l     (a0), d0
000a66: b093         cmp.l      (a3), d0
000a68: 661a         bne.b      $a84
000a6a: 7000         moveq      #$0, d0
000a6c: 1012         move.b     (a2), d0
000a6e: 2f00         move.l     d0, -(a7)
000a70: 2f2a0002     move.l     $2(a2), -(a7)
000a74: 222f0008     move.l     $8(a7), d1
000a78: 200b         move.l     a3, d0
000a7a: 61001b20     bsr.w      $259c
000a7e: 508f         addq.l     #$8, a7
000a80: 6000008a     bra.w      $b0c
000a84: 4fefff9c     lea.l      -$64(a7), a7
000a88: 2f2a0002     move.l     $2(a2), -(a7)
000a8c: 2f13         move.l     (a3), -(a7)
000a8e: 41fa0446     lea.l      $ed6(pc), a0
000a92: 2208         move.l     a0, d1
000a94: 41ef0008     lea.l      $8(a7), a0
000a98: 2008         move.l     a0, d0
000a9a: 61005cf0     bsr.w      $678c
000a9e: 508f         addq.l     #$8, a7
000aa0: 7201         moveq      #$1, d1
000aa2: 41d7         lea.l      (a7), a0
000aa4: 2008         move.l     a0, d0
000aa6: 61000c36     bsr.w      $16de
000aaa: 4fef0064     lea.l      $64(a7), a7
000aae: 2017         move.l     (a7), d0
000ab0: 61001358     bsr.w      $1e0a
000ab4: 7803         moveq      #$3, d4
000ab6: 6054         bra.b      $b0c
000ab8: 7802         moveq      #$2, d4
000aba: 4fefff9c     lea.l      -$64(a7), a7
000abe: 2f2a0002     move.l     $2(a2), -(a7)
000ac2: 2f13         move.l     (a3), -(a7)
000ac4: 41fa042b     lea.l      $ef1(pc), a0
000ac8: 2208         move.l     a0, d1
000aca: 41ef0008     lea.l      $8(a7), a0
000ace: 2008         move.l     a0, d0
000ad0: 61005cba     bsr.w      $678c
000ad4: 508f         addq.l     #$8, a7
000ad6: 6026         bra.b      $afe
000ad8: 7807         moveq      #$7, d4
000ada: 4fefff9c     lea.l      -$64(a7), a7
000ade: 2f2a0002     move.l     $2(a2), -(a7)
000ae2: 2f13         move.l     (a3), -(a7)
000ae4: 306b0004     movea.w    $4(a3), a0
000ae8: 2f08         move.l     a0, -(a7)
000aea: 41fa0420     lea.l      $f0c(pc), a0
000aee: 2208         move.l     a0, d1
000af0: 41ef000c     lea.l      $c(a7), a0
000af4: 2008         move.l     a0, d0
000af6: 61005c94     bsr.w      $678c
000afa: 4fef000c     lea.l      $c(a7), a7
000afe: 7201         moveq      #$1, d1
000b00: 41d7         lea.l      (a7), a0
000b02: 2008         move.l     a0, d0
000b04: 61000bd8     bsr.w      $16de
000b08: 4fef0064     lea.l      $64(a7), a7
000b0c: 2f440018     move.l     d4, $18(a7)
000b10: 2f53000e     move.l     (a3), $e(a7)
000b14: 3f6b00040012 move.w     $4(a3), $12(a7)
000b1a: 2f570014     move.l     (a7), $14(a7)
000b1e: 222a0002     move.l     $2(a2), d1
000b22: 41ef0008     lea.l      $8(a7), a0
000b26: 2008         move.l     a0, d0
000b28: 61001740     bsr.w      $226a
000b2c: 4fef003c     lea.l      $3c(a7), a7
000b30: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
000b36: 4e5d         unlk       a5
000b38: 4e75         rts        
000b3a: 4e550000     link.w     a5, #$0
000b3e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000b42: 2440         movea.l    d0, a2
000b44: 4fefffcc     lea.l      -$34(a7), a7
000b48: 4a12         tst.b      (a2)
000b4a: 6704         beq.b      $b50
000b4c: 7006         moveq      #$6, d0
000b4e: 6002         bra.b      $b52
000b50: 7005         moveq      #$5, d0
000b52: 2e80         move.l     d0, (a7)
000b54: 3f7c00010004 move.w     #$1, $4(a7)
000b5a: 7009         moveq      #$9, d0
000b5c: 2f400010     move.l     d0, $10(a7)
000b60: 2f6a00080006 move.l     $8(a2), $6(a7)
000b66: 3f6a000c000a move.w     $c(a2), $a(a7)
000b6c: 222a0002     move.l     $2(a2), d1
000b70: 41d7         lea.l      (a7), a0
000b72: 2008         move.l     a0, d0
000b74: 610016f4     bsr.w      $226a
000b78: 4fef0034     lea.l      $34(a7), a7
000b7c: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
000b82: 4e5d         unlk       a5
000b84: 4e75         rts        
000b86: 4e550000     link.w     a5, #$0
000b8a: 48e7c080     movem.l    d0-d1/a0, -(a7)
000b8e: 4fefffcc     lea.l      -$34(a7), a7
000b92: 700a         moveq      #$a, d0
000b94: 2e80         move.l     d0, (a7)
000b96: 206f0034     movea.l    $34(a7), a0
000b9a: 2210         move.l     (a0), d1
000b9c: 41d7         lea.l      (a7), a0
000b9e: 2008         move.l     a0, d0
000ba0: 610016c8     bsr.w      $226a
000ba4: 206f0034     movea.l    $34(a7), a0
000ba8: 2010         move.l     (a0), d0
000baa: 6100157e     bsr.w      $212a
000bae: 4fef0034     lea.l      $34(a7), a7
000bb2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000bb8: 4e5d         unlk       a5
000bba: 4e75         rts        
000bbc: 4e550000     link.w     a5, #$0
000bc0: 48e7c080     movem.l    d0-d1/a0, -(a7)
000bc4: 4fefffc8     lea.l      -$38(a7), a7
000bc8: 7004         moveq      #$4, d0
000bca: 2f400004     move.l     d0, $4(a7)
000bce: 41d7         lea.l      (a7), a0
000bd0: 2208         move.l     a0, d1
000bd2: 202f0038     move.l     $38(a7), d0
000bd6: 610015b4     bsr.w      $218c
000bda: 2f400008     move.l     d0, $8(a7)
000bde: 42af0008     clr.l      $8(a7)
000be2: 2f57000c     move.l     (a7), $c(a7)
000be6: 61000c80     bsr.w      $1868
000bea: 2f400010     move.l     d0, $10(a7)
000bee: 6100200e     bsr.w      $2bfe
000bf2: 2f400014     move.l     d0, $14(a7)
000bf6: 61002016     bsr.w      $2c0e
000bfa: 2200         move.l     d0, d1
000bfc: 41ef0018     lea.l      $18(a7), a0
000c00: 2008         move.l     a0, d0
000c02: 61005cfa     bsr.w      $68fe
000c06: 2217         move.l     (a7), d1
000c08: 41ef0004     lea.l      $4(a7), a0
000c0c: 2008         move.l     a0, d0
000c0e: 6100165a     bsr.w      $226a
000c12: 4fef0038     lea.l      $38(a7), a7
000c16: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000c1c: 4e5d         unlk       a5
000c1e: 4e75         rts        
000c20: 4e550000     link.w     a5, #$0
000c24: 48e7c080     movem.l    d0-d1/a0, -(a7)
000c28: 4feffff4     lea.l      -$c(a7), a7
000c2c: 61001772     bsr.w      $23a0
000c30: 3d408136     move.w     d0, -$7eca(a6)
000c34: 7001         moveq      #$1, d0
000c36: 2d408132     move.l     d0, -$7ece(a6)
000c3a: 303c00ff     move.w     #$ff, d0
000c3e: c06e8134     and.w      -$7ecc(a6), d0
000c42: 7200         moveq      #$0, d1
000c44: 3200         move.w     d0, d1
000c46: 2001         move.l     d1, d0
000c48: 61001150     bsr.w      $1d9a
000c4c: 2f400008     move.l     d0, $8(a7)
000c50: 70ff         moveq      #$ff, d0
000c52: b0af0008     cmp.l      $8(a7), d0
000c56: 660a         bne.b      $c62
000c58: 7201         moveq      #$1, d1
000c5a: 41fa02d7     lea.l      $f33(pc), a0
000c5e: 6000011e     bra.w      $d7e
000c62: 61000c14     bsr.w      $1878
000c66: d0af0008     add.l      $8(a7), d0
000c6a: 2d408138     move.l     d0, -$7ec8(a6)
000c6e: 4878ffff     pea.l      $ffff.w
000c72: 222e8138     move.l     -$7ec8(a6), d1
000c76: 41ee8132     lea.l      -$7ece(a6), a0
000c7a: 2008         move.l     a0, d0
000c7c: 61000498     bsr.w      $1116
000c80: 588f         addq.l     #$4, a7
000c82: 2f400004     move.l     d0, $4(a7)
000c86: 4aaf0004     tst.l      $4(a7)
000c8a: 670a         beq.b      $c96
000c8c: 7201         moveq      #$1, d1
000c8e: 41fa02bc     lea.l      $f4c(pc), a0
000c92: 60000084     bra.w      $d18
000c96: 206e8138     movea.l    -$7ec8(a6), a0
000c9a: 303c00ff     move.w     #$ff, d0
000c9e: c0680002     and.w      $2(a0), d0
000ca2: 323c00ff     move.w     #$ff, d1
000ca6: c26e8134     and.w      -$7ecc(a6), d1
000caa: b041         cmp.w      d1, d0
000cac: 67000078     beq.w      $d26
000cb0: 206e8138     movea.l    -$7ec8(a6), a0
000cb4: 2d508132     move.l     (a0), -$7ece(a6)
000cb8: 202f0008     move.l     $8(a7), d0
000cbc: 6100114c     bsr.w      $1e0a
000cc0: 303c00ff     move.w     #$ff, d0
000cc4: c06e8134     and.w      -$7ecc(a6), d0
000cc8: 7200         moveq      #$0, d1
000cca: 3200         move.w     d0, d1
000ccc: 2001         move.l     d1, d0
000cce: 610010ca     bsr.w      $1d9a
000cd2: 2f400008     move.l     d0, $8(a7)
000cd6: 70ff         moveq      #$ff, d0
000cd8: b0af0008     cmp.l      $8(a7), d0
000cdc: 660a         bne.b      $ce8
000cde: 7201         moveq      #$1, d1
000ce0: 41fa0280     lea.l      $f62(pc), a0
000ce4: 60000098     bra.w      $d7e
000ce8: 61000b8e     bsr.w      $1878
000cec: d0af0008     add.l      $8(a7), d0
000cf0: 2d408138     move.l     d0, -$7ec8(a6)
000cf4: 4878ffff     pea.l      $ffff.w
000cf8: 222e8138     move.l     -$7ec8(a6), d1
000cfc: 41ee8132     lea.l      -$7ece(a6), a0
000d00: 2008         move.l     a0, d0
000d02: 61000412     bsr.w      $1116
000d06: 588f         addq.l     #$4, a7
000d08: 2f400004     move.l     d0, $4(a7)
000d0c: 4aaf0004     tst.l      $4(a7)
000d10: 6714         beq.b      $d26
000d12: 7201         moveq      #$1, d1
000d14: 41fa026e     lea.l      $f84(pc), a0
000d18: 2008         move.l     a0, d0
000d1a: 610009c2     bsr.w      $16de
000d1e: 202f0004     move.l     $4(a7), d0
000d22: 60000092     bra.w      $db6
000d26: 4aae9428     tst.l      -$6bd8(a6)
000d2a: 6c28         bge.b      $d54
000d2c: 41ee9428     lea.l      -$6bd8(a6), a0
000d30: 2208         move.l     a0, d1
000d32: 7000         moveq      #$0, d0
000d34: 61001456     bsr.w      $218c
000d38: 2e80         move.l     d0, (a7)
000d3a: 6718         beq.b      $d54
000d3c: 202f0008     move.l     $8(a7), d0
000d40: 610010c8     bsr.w      $1e0a
000d44: 7201         moveq      #$1, d1
000d46: 41fa0255     lea.l      $f9d(pc), a0
000d4a: 2008         move.l     a0, d0
000d4c: 61000990     bsr.w      $16de
000d50: 2017         move.l     (a7), d0
000d52: 6062         bra.b      $db6
000d54: 48780001     pea.l      $1.w
000d58: 2f2e9428     move.l     -$6bd8(a6), -(a7)
000d5c: 222f0010     move.l     $10(a7), d1
000d60: 41ee8132     lea.l      -$7ece(a6), a0
000d64: 2008         move.l     a0, d0
000d66: 61001834     bsr.w      $259c
000d6a: 508f         addq.l     #$8, a7
000d6c: 4a00         tst.b      d0
000d6e: 6618         bne.b      $d88
000d70: 202f0008     move.l     $8(a7), d0
000d74: 61001094     bsr.w      $1e0a
000d78: 7201         moveq      #$1, d1
000d7a: 41fa0233     lea.l      $faf(pc), a0
000d7e: 2008         move.l     a0, d0
000d80: 6100095c     bsr.w      $16de
000d84: 7004         moveq      #$4, d0
000d86: 602e         bra.b      $db6
000d88: 206e8138     movea.l    -$7ec8(a6), a0
000d8c: 0c68000e001a cmpi.w     #$e, $1a(a0)
000d92: 650c         bcs.b      $da0
000d94: 206e8138     movea.l    -$7ec8(a6), a0
000d98: 0c680011001a cmpi.w     #$11, $1a(a0)
000d9e: 630c         bls.b      $dac
000da0: 7201         moveq      #$1, d1
000da2: 41fa0223     lea.l      $fc7(pc), a0
000da6: 2008         move.l     a0, d0
000da8: 61000934     bsr.w      $16de
000dac: 202e8138     move.l     -$7ec8(a6), d0
000db0: 610027d0     bsr.w      $3582
000db4: 7000         moveq      #$0, d0
000db6: 4fef000c     lea.l      $c(a7), a7
000dba: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000dc0: 4e5d         unlk       a5
000dc2: 4e75         rts        
000dc4: 4e550000     link.w     a5, #$0
000dc8: 48e7c080     movem.l    d0-d1/a0, -(a7)
000dcc: 222e9428     move.l     -$6bd8(a6), d1
000dd0: 41ee8132     lea.l      -$7ece(a6), a0
000dd4: 2008         move.l     a0, d0
000dd6: 610018ce     bsr.w      $26a6
000dda: 4a00         tst.b      d0
000ddc: 660c         bne.b      $dea
000dde: 7201         moveq      #$1, d1
000de0: 41fa0202     lea.l      $fe4(pc), a0
000de4: 2008         move.l     a0, d0
000de6: 610008f6     bsr.w      $16de
000dea: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000df0: 4e5d         unlk       a5
000df2: 4e75         rts        
000df4: 4e550000     link.w     a5, #$0
000df8: 48e7c080     movem.l    d0-d1/a0, -(a7)
000dfc: 4fefffcc     lea.l      -$34(a7), a7
000e00: 206f0034     movea.l    $34(a7), a0
000e04: 4a280058     tst.b      $58(a0)
000e08: 6606         bne.b      $e10
000e0a: 4a2e9430     tst.b      -$6bd0(a6)
000e0e: 6756         beq.b      $e66
000e10: 4a2e9430     tst.b      -$6bd0(a6)
000e14: 6604         bne.b      $e1a
000e16: 61ac         bsr.b      $dc4
000e18: 6004         bra.b      $e1e
000e1a: 422e9430     clr.b      -$6bd0(a6)
000e1e: 202f0034     move.l     $34(a7), d0
000e22: 5080         addq.l     #$8, d0
000e24: 61000238     bsr.w      $105e
000e28: 4a00         tst.b      d0
000e2a: 6726         beq.b      $e52
000e2c: 206f0034     movea.l    $34(a7), a0
000e30: 20280004     move.l     $4(a0), d0
000e34: 61001584     bsr.w      $23ba
000e38: 61000a4e     bsr.w      $1888
000e3c: 6100fde2     bsr.w      $c20
000e40: 2f400004     move.l     d0, $4(a7)
000e44: 4aaf0004     tst.l      $4(a7)
000e48: 6730         beq.b      $e7a
000e4a: 7201         moveq      #$1, d1
000e4c: 41fa01a8     lea.l      $ff6(pc), a0
000e50: 6022         bra.b      $e74
000e52: 7201         moveq      #$1, d1
000e54: 41fa01b5     lea.l      $100b(pc), a0
000e58: 2008         move.l     a0, d0
000e5a: 61000882     bsr.w      $16de
000e5e: 7001         moveq      #$1, d0
000e60: 2f400004     move.l     d0, $4(a7)
000e64: 6014         bra.b      $e7a
000e66: 42af0004     clr.l      $4(a7)
000e6a: 61000298     bsr.w      $1104
000e6e: 7200         moveq      #$0, d1
000e70: 41fa01b2     lea.l      $1024(pc), a0
000e74: 2008         move.l     a0, d0
000e76: 61000866     bsr.w      $16de
000e7a: 7003         moveq      #$3, d0
000e7c: 2e80         move.l     d0, (a7)
000e7e: 206f0034     movea.l    $34(a7), a0
000e82: 2210         move.l     (a0), d1
000e84: 41d7         lea.l      (a7), a0
000e86: 2008         move.l     a0, d0
000e88: 610013e0     bsr.w      $226a
000e8c: 4fef0034     lea.l      $34(a7), a7
000e90: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e96: 4e5d         unlk       a5
000e98: 4e75         rts        
000e9a: 4e550000     link.w     a5, #$0
000e9e: 48e7c080     movem.l    d0-d1/a0, -(a7)
000ea2: 4fefffcc     lea.l      -$34(a7), a7
000ea6: 6100024c     bsr.w      $10f4
000eaa: 7200         moveq      #$0, d1
000eac: 41fa0183     lea.l      $1031(pc), a0
000eb0: 2008         move.l     a0, d0
000eb2: 6100082a     bsr.w      $16de
000eb6: 700c         moveq      #$c, d0
000eb8: 2e80         move.l     d0, (a7)
000eba: 206f0034     movea.l    $34(a7), a0
000ebe: 2210         move.l     (a0), d1
000ec0: 41d7         lea.l      (a7), a0
000ec2: 2008         move.l     a0, d0
000ec4: 610013a4     bsr.w      $226a
000ec8: 4fef0034     lea.l      $34(a7), a7
000ecc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000ed2: 4e5d         unlk       a5
000ed4: 4e75         rts        
000ed6: 6865         bvc.b      $f3d
000ed8: 6164         bsr.b      $f3e
000eda: 6572         bcs.b      $f4e
000edc: 2d666175     move.l     -(a6), $6175(a6)
000ee0: 6c74         bge.b      $f56
000ee2: 2066         movea.l    -(a6), a0
000ee4: 6f72         ble.b      $f58
000ee6: 2025         move.l     -(a5), d0
000ee8: 6420         bcc.b      $f0a
000eea: 7265         moveq      #$65, d1
000eec: 713d         .dc.w      $713d
000eee: 25640049     move.l     -(a4), $49(a2)
000ef2: 6e76         bgt.b      $f6a
000ef4: 616c         bsr.b      $f62
000ef6: 6964         bvs.b      $f5c
000ef8: 2062         movea.l    -(a2), a0
000efa: 6c6e         bge.b      $f6a
000efc: 723a         moveq      #$3a, d1
000efe: 2025         move.l     -(a5), d0
000f00: 6420         bcc.b      $f22
000f02: 7265         moveq      #$65, d1
000f04: 715f         .dc.w      $715f
000f06: 6964         bvs.b      $f6c
000f08: 3a25         move.w     -(a5), d5
000f0a: 6400496e     bcc.w      $587a
000f0e: 636f         bls.b      $f7f
000f10: 7272         moveq      #$72, d1
000f12: 6563         bcs.b      $f77
000f14: 7420         moveq      #$20, d2
000f16: 4344         .dc.w      $4344
000f18: 2d6e723a2564 move.l     $723a(a6), $2564(a6)
000f1e: 2062         movea.l    -(a2), a0
000f20: 6c6f         bge.b      $f91
000f22: 636b         bls.b      $f8f
000f24: 3a25         move.w     -(a5), d5
000f26: 6420         bcc.b      $f48
000f28: 7265         moveq      #$65, d1
000f2a: 715f         .dc.w      $715f
000f2c: 6964         bvs.b      $f92
000f2e: 3a20         move.w     -(a0), d5
000f30: 2564006e     move.l     -(a4), $6e(a2)
000f34: 6f20         ble.b      $f56
000f36: 4250         clr.w      (a0)
000f38: 206d656d     movea.l    $656d(a5), a0
000f3c: 6f72         ble.b      $fb0
000f3e: 7920         .dc.w      $7920
000f40: 666f         bne.b      $fb1
000f42: 7220         moveq      #$20, d1
000f44: 626c         bhi.b      $fb2
000f46: 6f63         ble.b      $fab
000f48: 6b20         bmi.b      $f6a
000f4a: 3000         move.w     d0, d0
000f4c: 4572         .dc.w      $4572
000f4e: 726f         moveq      #$6f, d1
000f50: 7220         moveq      #$20, d1
000f52: 7265         moveq      #$65, d1
000f54: 6164         bsr.b      $fba
000f56: 696e         bvs.b      $fc6
000f58: 6720         beq.b      $f7a
000f5a: 626c         bhi.b      $fc8
000f5c: 6f63         ble.b      $fc1
000f5e: 6b20         bmi.b      $f80
000f60: 3000         move.w     d0, d0
000f62: 6e6f         bgt.b      $fd3
000f64: 2065         movea.l    -(a5), a0
000f66: 7874         moveq      #$74, d4
000f68: 656e         bcs.b      $fd8
000f6a: 6465         bcc.b      $fd1
000f6c: 6420         bcc.b      $f8e
000f6e: 4250         clr.w      (a0)
000f70: 206d656d     movea.l    $656d(a5), a0
000f74: 6f72         ble.b      $fe8
000f76: 7920         .dc.w      $7920
000f78: 666f         bne.b      $fe9
000f7a: 7220         moveq      #$20, d1
000f7c: 626c         bhi.b      $fea
000f7e: 6f63         ble.b      $fe3
000f80: 6b20         bmi.b      $fa2
000f82: 3000         move.w     d0, d0
000f84: 4572         .dc.w      $4572
000f86: 726f         moveq      #$6f, d1
000f88: 7220         moveq      #$20, d1
000f8a: 7265         moveq      #$65, d1
000f8c: 2d72656164696e67 move.l     ([$6469, a2]), $6e67(a6)
000f94: 2062         movea.l    -(a2), a0
000f96: 6c6f         bge.b      $1007
000f98: 636b         bls.b      $1005
000f9a: 2030004e     move.l     $4e(a0, d0.w), d0
000f9e: 6f20         ble.b      $fc0
000fa0: 5265         addq.w     #$1, -(a5)
000fa2: 7120         .dc.w      $7120
000fa4: 6964         bvs.b      $100a
000fa6: 2066         movea.l    -(a6), a0
000fa8: 6f72         ble.b      $101c
000faa: 2050         movea.l    (a0), a0
000fac: 4250         clr.w      (a0)
000fae: 004e         .dc.w      $004e
000fb0: 6f20         ble.b      $fd2
000fb2: 434c         .dc.w      $434c
000fb4: 2065         movea.l    -(a5), a0
000fb6: 6e74         bgt.b      $102c
000fb8: 7279         moveq      #$79, d1
000fba: 2066         movea.l    -(a6), a0
000fbc: 6f72         ble.b      $1030
000fbe: 2062         movea.l    -(a2), a0
000fc0: 6c6f         bge.b      $1031
000fc2: 636b         bls.b      $102f
000fc4: 20300049     move.l     $49(a0, d0.w), d0
000fc8: 6e63         bgt.b      $102d
000fca: 6f72         ble.b      $103e
000fcc: 7265         moveq      #$65, d1
000fce: 6374         bls.b      $1044
000fd0: 2044         movea.l    d4, a0
000fd2: 4220         clr.b      -(a0)
000fd4: 5265         addq.w     #$1, -(a5)
000fd6: 6c65         bge.b      $103d
000fd8: 6173         bsr.b      $104d
000fda: 6520         bcs.b      $ffc
000fdc: 4e75         rts        
000fde: 6d62         blt.b      $1042
000fe0: 6572         bcs.b      $1054
000fe2: 2e00         move.l     d0, d7
000fe4: 626c         bhi.b      $1052
000fe6: 6f63         ble.b      $104b
000fe8: 6b20         bmi.b      $100a
000fea: 3020         move.w     -(a0), d0
000fec: 6e6f         bgt.b      $105d
000fee: 7420         moveq      #$20, d2
000ff0: 666f         bne.b      $1061
000ff2: 756e         .dc.w      $756e
000ff4: 64007265     bcc.w      $825b
000ff8: 6164         bsr.b      $105e
000ffa: 5f63         subq.w     #$7, -(a3)
000ffc: 6476         bcc.b      $1074
000ffe: 6f6c         ble.b      $106c
001000: 756d         .dc.w      $756d
001002: 6520         bcs.b      $1024
001004: 6661         bne.b      $1067
001006: 696c         bvs.b      $1074
001008: 6564         bcs.b      $106e
00100a: 00556e61     ori.w      #$6e61, (a5)
00100e: 626c         bhi.b      $107c
001010: 6520         bcs.b      $1032
001012: 746f         moveq      #$6f, d2
001014: 206f7065     movea.l    $7065(a7), a0
001018: 6e20         bgt.b      $103a
00101a: 6461         bcc.b      $107d
00101c: 7461         moveq      #$61, d2
00101e: 6261         bhi.b      $1081
001020: 7365         .dc.w      $7365
001022: 2e00         move.l     d0, d7
001024: 4465         neg.w      -(a5)
001026: 7669         moveq      #$69, d3
001028: 6365         bls.b      $108f
00102a: 207265616479 movea.l    ([$6479, a2]), a0
001030: 00446576     ori.w      #$6576, d4
001034: 6963         bvs.b      $1099
001036: 6520         bcs.b      $1058
001038: 6e6f         bgt.b      $10a9
00103a: 7420         moveq      #$20, d2
00103c: 7265         moveq      #$65, d1
00103e: 6164         bsr.b      $10a4
001040: 792e         .dc.w      $792e
001042: 00004e55     ori.b      #$55, d0
001046: 000048e7     ori.b      #$e7, d0
00104a: 8000         or.b       d0, d0
00104c: 202e9432     move.l     -$6bce(a6), d0
001050: 610057aa     bsr.w      $67fc
001054: 70ff         moveq      #$ff, d0
001056: 2d409432     move.l     d0, -$6bce(a6)
00105a: 4e5d         unlk       a5
00105c: 4e75         rts        
00105e: 4e550000     link.w     a5, #$0
001062: 48e7c080     movem.l    d0-d1/a0, -(a7)
001066: 70ff         moveq      #$ff, d0
001068: b0ae9432     cmp.l      -$6bce(a6), d0
00106c: 6708         beq.b      $1076
00106e: 202e9432     move.l     -$6bce(a6), d0
001072: 61005788     bsr.w      $67fc
001076: 7201         moveq      #$1, d1
001078: 2017         move.l     (a7), d0
00107a: 61004714     bsr.w      $5790
00107e: 2d409432     move.l     d0, -$6bce(a6)
001082: 70ff         moveq      #$ff, d0
001084: b0ae9432     cmp.l      -$6bce(a6), d0
001088: 6630         bne.b      $10ba
00108a: 4fefff9c     lea.l      -$64(a7), a7
00108e: 2f2e800c     move.l     -$7ff4(a6), -(a7)
001092: 2f2f0068     move.l     $68(a7), -(a7)
001096: 41fa0240     lea.l      $12d8(pc), a0
00109a: 2208         move.l     a0, d1
00109c: 41ef0008     lea.l      $8(a7), a0
0010a0: 2008         move.l     a0, d0
0010a2: 610056e8     bsr.w      $678c
0010a6: 508f         addq.l     #$8, a7
0010a8: 7201         moveq      #$1, d1
0010aa: 41d7         lea.l      (a7), a0
0010ac: 2008         move.l     a0, d0
0010ae: 6100062e     bsr.w      $16de
0010b2: 4fef0064     lea.l      $64(a7), a7
0010b6: 7000         moveq      #$0, d0
0010b8: 6030         bra.b      $10ea
0010ba: 1d7c00019436 move.b     #$1, -$6bca(a6)
0010c0: 4fefff9c     lea.l      -$64(a7), a7
0010c4: 2f2f0064     move.l     $64(a7), -(a7)
0010c8: 41fa0235     lea.l      $12ff(pc), a0
0010cc: 2208         move.l     a0, d1
0010ce: 41ef0004     lea.l      $4(a7), a0
0010d2: 2008         move.l     a0, d0
0010d4: 610056b6     bsr.w      $678c
0010d8: 588f         addq.l     #$4, a7
0010da: 7200         moveq      #$0, d1
0010dc: 41d7         lea.l      (a7), a0
0010de: 2008         move.l     a0, d0
0010e0: 610005fc     bsr.w      $16de
0010e4: 4fef0064     lea.l      $64(a7), a7
0010e8: 7001         moveq      #$1, d0
0010ea: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0010f0: 4e5d         unlk       a5
0010f2: 4e75         rts        
0010f4: 4e550000     link.w     a5, #$0
0010f8: 48e78000     movem.l    d0, -(a7)
0010fc: 422e9436     clr.b      -$6bca(a6)
001100: 4e5d         unlk       a5
001102: 4e75         rts        
001104: 4e550000     link.w     a5, #$0
001108: 48e78000     movem.l    d0, -(a7)
00110c: 1d7c00019436 move.b     #$1, -$6bca(a6)
001112: 4e5d         unlk       a5
001114: 4e75         rts        
001116: 4e550000     link.w     a5, #$0
00111a: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
00111e: 2440         movea.l    d0, a2
001120: 2641         movea.l    d1, a3
001122: 282f0020     move.l     $20(a7), d4
001126: 4fefffec     lea.l      -$14(a7), a7
00112a: 0c2e00019436 cmpi.b     #$1, -$6bca(a6)
001130: 6706         beq.b      $1138
001132: 7005         moveq      #$5, d0
001134: 60000194     bra.w      $12ca
001138: 610004b4     bsr.w      $15ee
00113c: 42af0010     clr.l      $10(a7)
001140: 60000174     bra.w      $12b6
001144: 203cffffff00 move.l     #$ffffff00, d0
00114a: c092         and.l      (a2), d0
00114c: e088         lsr.l      #$8, d0
00114e: 720b         moveq      #$b, d1
001150: e3a8         lsl.l      d1, d0
001152: 2f400008     move.l     d0, $8(a7)
001156: 42a7         clr.l      -(a7)
001158: 222f000c     move.l     $c(a7), d1
00115c: 202e9432     move.l     -$6bce(a6), d0
001160: 6100568e     bsr.w      $67f0
001164: 588f         addq.l     #$4, a7
001166: 72ff         moveq      #$ff, d1
001168: b280         cmp.l      d0, d1
00116a: 662a         bne.b      $1196
00116c: 7008         moveq      #$8, d0
00116e: 2e80         move.l     d0, (a7)
001170: 4fefff9c     lea.l      -$64(a7), a7
001174: 2f04         move.l     d4, -(a7)
001176: 2f2e800c     move.l     -$7ff4(a6), -(a7)
00117a: 2f2f0074     move.l     $74(a7), -(a7)
00117e: 41fa0197     lea.l      $1317(pc), a0
001182: 2208         move.l     a0, d1
001184: 41ef000c     lea.l      $c(a7), a0
001188: 2008         move.l     a0, d0
00118a: 61005600     bsr.w      $678c
00118e: 4fef000c     lea.l      $c(a7), a7
001192: 60000110     bra.w      $12a4
001196: 203c000000ff move.l     #$ff, d0
00119c: c092         and.l      (a2), d0
00119e: 720b         moveq      #$b, d1
0011a0: e3a8         lsl.l      d1, d0
0011a2: 2f400004     move.l     d0, $4(a7)
0011a6: 2f2f0004     move.l     $4(a7), -(a7)
0011aa: 220b         move.l     a3, d1
0011ac: 202e9432     move.l     -$6bce(a6), d0
0011b0: 6100562e     bsr.w      $67e0
0011b4: 588f         addq.l     #$4, a7
0011b6: 2f40000c     move.l     d0, $c(a7)
0011ba: 202f000c     move.l     $c(a7), d0
0011be: b0af0004     cmp.l      $4(a7), d0
0011c2: 6606         bne.b      $11ca
0011c4: 4297         clr.l      (a7)
0011c6: 600000f8     bra.w      $12c0
0011ca: 7008         moveq      #$8, d0
0011cc: 2e80         move.l     d0, (a7)
0011ce: 70ff         moveq      #$ff, d0
0011d0: b0af000c     cmp.l      $c(a7), d0
0011d4: 66000096     bne.w      $126c
0011d8: 4fefff9c     lea.l      -$64(a7), a7
0011dc: 2f04         move.l     d4, -(a7)
0011de: 2f2e800c     move.l     -$7ff4(a6), -(a7)
0011e2: 303c00ff     move.w     #$ff, d0
0011e6: c06a0002     and.w      $2(a2), d0
0011ea: 7200         moveq      #$0, d1
0011ec: 3200         move.w     d0, d1
0011ee: 2f01         move.l     d1, -(a7)
0011f0: 203cffffff00 move.l     #$ffffff00, d0
0011f6: c092         and.l      (a2), d0
0011f8: e088         lsr.l      #$8, d0
0011fa: 2f00         move.l     d0, -(a7)
0011fc: 41fa013e     lea.l      $133c(pc), a0
001200: 2208         move.l     a0, d1
001202: 41ef0010     lea.l      $10(a7), a0
001206: 2008         move.l     a0, d0
001208: 61005582     bsr.w      $678c
00120c: 4fef0010     lea.l      $10(a7), a7
001210: 7201         moveq      #$1, d1
001212: 41d7         lea.l      (a7), a0
001214: 2008         move.l     a0, d0
001216: 610004c6     bsr.w      $16de
00121a: 4fef0064     lea.l      $64(a7), a7
00121e: 0cae000000d2800c cmpi.l     #$d2, -$7ff4(a6)
001226: 6600008a     bne.w      $12b2
00122a: 4fefff9c     lea.l      -$64(a7), a7
00122e: 2f2f0068     move.l     $68(a7), -(a7)
001232: 4853         pea.l      (a3)
001234: 41fa012c     lea.l      $1362(pc), a0
001238: 2208         move.l     a0, d1
00123a: 41ef0008     lea.l      $8(a7), a0
00123e: 2008         move.l     a0, d0
001240: 6100554a     bsr.w      $678c
001244: 508f         addq.l     #$8, a7
001246: 7201         moveq      #$1, d1
001248: 41d7         lea.l      (a7), a0
00124a: 2008         move.l     a0, d0
00124c: 61000490     bsr.w      $16de
001250: 4fef0064     lea.l      $64(a7), a7
001254: 487800fa     pea.l      $fa.w
001258: 7212         moveq      #$12, d1
00125a: 203c00000098 move.l     #$98, d0
001260: 610043a6     bsr.w      $5608
001264: 588f         addq.l     #$4, a7
001266: 610043c6     bsr.w      $562e
00126a: 6046         bra.b      $12b2
00126c: 4fefff9c     lea.l      -$64(a7), a7
001270: 2f04         move.l     d4, -(a7)
001272: 2f2f0074     move.l     $74(a7), -(a7)
001276: 303c00ff     move.w     #$ff, d0
00127a: c06a0002     and.w      $2(a2), d0
00127e: 7200         moveq      #$0, d1
001280: 3200         move.w     d0, d1
001282: 2f01         move.l     d1, -(a7)
001284: 203cffffff00 move.l     #$ffffff00, d0
00128a: c092         and.l      (a2), d0
00128c: e088         lsr.l      #$8, d0
00128e: 2f00         move.l     d0, -(a7)
001290: 41fa0117     lea.l      $13a9(pc), a0
001294: 2208         move.l     a0, d1
001296: 41ef0010     lea.l      $10(a7), a0
00129a: 2008         move.l     a0, d0
00129c: 610054ee     bsr.w      $678c
0012a0: 4fef0010     lea.l      $10(a7), a7
0012a4: 7201         moveq      #$1, d1
0012a6: 41d7         lea.l      (a7), a0
0012a8: 2008         move.l     a0, d0
0012aa: 61000432     bsr.w      $16de
0012ae: 4fef0064     lea.l      $64(a7), a7
0012b2: 52af0010     addq.l     #$1, $10(a7)
0012b6: 7005         moveq      #$5, d0
0012b8: b0af0010     cmp.l      $10(a7), d0
0012bc: 6e00fe86     bgt.w      $1144
0012c0: 2204         move.l     d4, d1
0012c2: 200a         move.l     a2, d0
0012c4: 61000340     bsr.w      $1606
0012c8: 2017         move.l     (a7), d0
0012ca: 4fef0014     lea.l      $14(a7), a7
0012ce: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
0012d4: 4e5d         unlk       a5
0012d6: 4e75         rts        
0012d8: 556e6162     subq.w     #$2, $6162(a6)
0012dc: 6c65         bge.b      $1343
0012de: 20746f206f70 movea.l    $6f70(a4, d6.l * 8), a0
0012e4: 656e         bcs.b      $1354
0012e6: 2064         movea.l    -(a4), a0
0012e8: 6174         bsr.b      $135e
0012ea: 6162         bsr.b      $134e
0012ec: 6173         bsr.b      $1361
0012ee: 6520         bcs.b      $1310
0012f0: 2725         move.l     -(a5), -(a3)
0012f2: 7327         .dc.w      $7327
0012f4: 2065         movea.l    -(a5), a0
0012f6: 7272         moveq      #$72, d1
0012f8: 6e6f         bgt.b      $1369
0012fa: 3d25         move.w     -(a5), -(a6)
0012fc: 642e         bcc.b      $132c
0012fe: 0044423a     ori.w      #$423a, d4
001302: 2027         move.l     -(a7), d0
001304: 2573273b20646576696365207265 move.l     ([$20646576, a3, d2.w * 8], $69636520), $7265(a2)
001312: 6164         bsr.b      $1378
001314: 792e         .dc.w      $792e
001316: 00657272     ori.w      #$7272, -(a5)
00131a: 6e6f         bgt.b      $138b
00131c: 204c         movea.l    a4, a0
00131e: 5345         subq.w     #$1, d5
001320: 454b         .dc.w      $454b
001322: 2062         movea.l    -(a2), a0
001324: 6c6f         bge.b      $1395
001326: 636b         bls.b      $1393
001328: 2025         move.l     -(a5), d0
00132a: 6c64         bge.b      $1390
00132c: 3a20         move.w     -(a0), d5
00132e: 25643b20     move.l     -(a4), $3b20(a2)
001332: 7265         moveq      #$65, d1
001334: 715f         .dc.w      $715f
001336: 6964         bvs.b      $139c
001338: 3d25         move.w     -(a5), -(a6)
00133a: 64006572     bcc.w      $78ae
00133e: 726e         moveq      #$6e, d1
001340: 6f20         ble.b      $1362
001342: 5245         addq.w     #$1, d5
001344: 4144         .dc.w      $4144
001346: 2062         movea.l    -(a2), a0
001348: 6c6f         bge.b      $13b9
00134a: 636b         bls.b      $13b7
00134c: 2025         move.l     -(a5), d0
00134e: 642d         bcc.b      $137d
001350: 25643a20     move.l     -(a4), $3a20(a2)
001354: 25643b20     move.l     -(a4), $3b20(a2)
001358: 7265         moveq      #$65, d1
00135a: 715f         .dc.w      $715f
00135c: 6964         bvs.b      $13c2
00135e: 3d25         move.w     -(a5), -(a6)
001360: 64004344     bcc.w      $56a6
001364: 2d444d41     move.l     d4, $4d41(a6)
001368: 2d6f76657266 move.l     $7665(a7), $7266(a6)
00136e: 6c6f         bge.b      $13df
001370: 772c         .dc.w      $772c
001372: 2046         movea.l    d6, a0
001374: 4154         .dc.w      $4154
001376: 414c         .dc.w      $414c
001378: 2065         movea.l    -(a5), a0
00137a: 7272         moveq      #$72, d1
00137c: 6f72         ble.b      $13f0
00137e: 2c20         move.l     -(a0), d6
001380: 6d65         blt.b      $13e7
001382: 6d6f         blt.b      $13f3
001384: 7279         moveq      #$79, d1
001386: 206d6179     movea.l    $6179(a5), a0
00138a: 2062         movea.l    -(a2), a0
00138c: 6520         bcs.b      $13ae
00138e: 636f         bls.b      $13ff
001390: 7272         moveq      #$72, d1
001392: 7570         .dc.w      $7570
001394: 7465         moveq      #$65, d2
001396: 642c         bcc.b      $13c4
001398: 6d65         blt.b      $13ff
00139a: 6d3d         blt.b      $13d9
00139c: 30782578     movea.w    $2578.w, a0
0013a0: 2c73697a653d25640023 movea.l    ([$653d2564, a3], $23), a6
0013aa: 6279         bhi.b      $1425
0013ac: 7465         moveq      #$65, d2
0013ae: 7320         .dc.w      $7320
0013b0: 5245         addq.w     #$1, d5
0013b2: 4144         .dc.w      $4144
0013b4: 2066         movea.l    -(a6), a0
0013b6: 6f72         ble.b      $142a
0013b8: 2062         movea.l    -(a2), a0
0013ba: 6c6f         bge.b      $142b
0013bc: 636b         bls.b      $1429
0013be: 2025         move.l     -(a5), d0
0013c0: 642d         bcc.b      $13ef
0013c2: 25643a20     move.l     -(a4), $3a20(a2)
0013c6: 25643b20     move.l     -(a4), $3b20(a2)
0013ca: 7265         moveq      #$65, d1
0013cc: 715f         .dc.w      $715f
0013ce: 6964         bvs.b      $1434
0013d0: 3d25         move.w     -(a5), -(a6)
0013d2: 64004e55     bcc.w      $6229
0013d6: 000048e7     ori.b      #$e7, d0
0013da: c000         and.b      d0, d0
0013dc: 602e         bra.b      $140c
0013de: 2017         move.l     (a7), d0
0013e0: 610037ac     bsr.w      $4b8e
0013e4: 1d7c00019438 move.b     #$1, -$6bc8(a6)
0013ea: 6044         bra.b      $1430
0013ec: 2017         move.l     (a7), d0
0013ee: 6100379e     bsr.w      $4b8e
0013f2: 603c         bra.b      $1430
0013f4: 48780104     pea.l      $104.w
0013f8: 7212         moveq      #$12, d1
0013fa: 203c00000098 move.l     #$98, d0
001400: 61004206     bsr.w      $5608
001404: 588f         addq.l     #$4, a7
001406: 61004226     bsr.w      $562e
00140a: 6024         bra.b      $1430
00140c: 2017         move.l     (a7), d0
00140e: 0c8000002041 cmpi.l     #$2041, d0
001414: 671a         beq.b      $1430
001416: 6210         bhi.b      $1428
001418: 0c402032     cmpi.w     #$2032, d0
00141c: 67ce         beq.b      $13ec
00141e: 62d4         bhi.b      $13f4
001420: 0c40202d     cmpi.w     #$202d, d0
001424: 67b8         beq.b      $13de
001426: 60cc         bra.b      $13f4
001428: 0c8000002042 cmpi.l     #$2042, d0
00142e: 66c4         bne.b      $13f4
001430: 4ced0002fffc movem.l    -$4(a5), d1
001436: 4e5d         unlk       a5
001438: 4e75         rts        
00143a: 4e550000     link.w     a5, #$0
00143e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001442: 558f         subq.l     #$2, a7
001444: 1f7c00010001 move.b     #$1, $1(a7)
00144a: 41fb0170ffffff88 lea.l      $ffffff88(a16, invalid.w), a0
001452: 2008         move.l     a0, d0
001454: 610037d0     bsr.w      $4c26
001458: 48780400     pea.l      $400.w
00145c: 48780003     pea.l      $3.w
001460: 7222         moveq      #$22, d1
001462: 41fa00ea     lea.l      $154e(pc), a0
001466: 2008         move.l     a0, d0
001468: 610044ca     bsr.w      $5934
00146c: 508f         addq.l     #$8, a7
00146e: 206f0002     movea.l    $2(a7), a0
001472: 2080         move.l     d0, (a0)
001474: 206f0002     movea.l    $2(a7), a0
001478: 70ff         moveq      #$ff, d0
00147a: b090         cmp.l      (a0), d0
00147c: 662e         bne.b      $14ac
00147e: 4fefff9c     lea.l      -$64(a7), a7
001482: 2f2e800c     move.l     -$7ff4(a6), -(a7)
001486: 487a00d4     pea.l      $155c(pc)
00148a: 41fa00de     lea.l      $156a(pc), a0
00148e: 2208         move.l     a0, d1
001490: 41ef0008     lea.l      $8(a7), a0
001494: 2008         move.l     a0, d0
001496: 610052f4     bsr.w      $678c
00149a: 508f         addq.l     #$8, a7
00149c: 7201         moveq      #$1, d1
00149e: 41d7         lea.l      (a7), a0
0014a0: 2008         move.l     a0, d0
0014a2: 6100023a     bsr.w      $16de
0014a6: 4fef0064     lea.l      $64(a7), a7
0014aa: 6014         bra.b      $14c0
0014ac: 61000c50     bsr.w      $20fe
0014b0: 61000fec     bsr.w      $249e
0014b4: 4a00         tst.b      d0
0014b6: 6708         beq.b      $14c0
0014b8: 6100050c     bsr.w      $19c6
0014bc: 4a00         tst.b      d0
0014be: 6604         bne.b      $14c4
0014c0: 422f0001     clr.b      $1(a7)
0014c4: 0c2f00010001 cmpi.b     #$1, $1(a7)
0014ca: 6614         bne.b      $14e0
0014cc: 223c00002023 move.l     #$2023, d1
0014d2: 61005e10     bsr.w      $72e4
0014d6: 61004018     bsr.w      $54f0
0014da: 610045dc     bsr.w      $5ab8
0014de: 6016         bra.b      $14f6
0014e0: 223c00002024 move.l     #$2024, d1
0014e6: 61005dfc     bsr.w      $72e4
0014ea: 61004004     bsr.w      $54f0
0014ee: 610045c8     bsr.w      $5ab8
0014f2: 7000         moveq      #$0, d0
0014f4: 6008         bra.b      $14fe
0014f6: 6100009a     bsr.w      $1592
0014fa: 102f0001     move.b     $1(a7), d0
0014fe: 548f         addq.l     #$2, a7
001500: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001506: 4e5d         unlk       a5
001508: 4e75         rts        
00150a: 4e550000     link.w     a5, #$0
00150e: 48e78800     movem.l    d0/d4, -(a7)
001512: 7801         moveq      #$1, d4
001514: 1004         move.b     d4, d0
001516: 4ced0010fffc movem.l    -$4(a5), d4
00151c: 4e5d         unlk       a5
00151e: 4e75         rts        
001520: 4e550000     link.w     a5, #$0
001524: 48e78000     movem.l    d0, -(a7)
001528: 558f         subq.l     #$2, a7
00152a: 1f7c00010001 move.b     #$1, $1(a7)
001530: 61000ffa     bsr.w      $252c
001534: 6100056a     bsr.w      $1aa0
001538: 6100fb0a     bsr.w      $1044
00153c: 61000164     bsr.w      $16a2
001540: 610036f8     bsr.w      $4c3a
001544: 102f0001     move.b     $1(a7), d0
001548: 548f         addq.l     #$2, a7
00154a: 4e5d         unlk       a5
00154c: 4e75         rts        
00154e: 2f706970652f7062705f move.l     $652f7062(a0, invalid.w), $705f(a7)
001558: 7265         moveq      #$65, d1
00155a: 7100         .dc.w      $7100
00155c: 2f706970652f7062705f move.l     $652f7062(a0, invalid.w), $705f(a7)
001566: 7265         moveq      #$65, d1
001568: 7100         .dc.w      $7100
00156a: 4572         .dc.w      $4572
00156c: 726f         moveq      #$6f, d1
00156e: 723a         moveq      #$3a, d1
001570: 2055         movea.l    (a5), a0
001572: 6e61         bgt.b      $15d5
001574: 626c         bhi.b      $15e2
001576: 6520         bcs.b      $1598
001578: 746f         moveq      #$6f, d2
00157a: 2063         movea.l    -(a3), a0
00157c: 7265         moveq      #$65, d1
00157e: 6174         bsr.b      $15f4
001580: 6520         bcs.b      $15a2
001582: 25733b206572726e move.l     $6572(a3, d3.l * 2), $726e(a2)
00158a: 6f20         ble.b      $15ac
00158c: 3d20         move.w     -(a0), -(a6)
00158e: 25642e00     move.l     -(a4), $2e00(a2)
001592: 4e550000     link.w     a5, #$0
001596: 48e7c080     movem.l    d0-d1/a0, -(a7)
00159a: 70ff         moveq      #$ff, d0
00159c: b0ae9440     cmp.l      -$6bc0(a6), d0
0015a0: 660a         bne.b      $15ac
0015a2: 41ee9440     lea.l      -$6bc0(a6), a0
0015a6: 2008         move.l     a0, d0
0015a8: 61003776     bsr.w      $4d20
0015ac: 41fa01ea     lea.l      $1798(pc), a0
0015b0: 2208         move.l     a0, d1
0015b2: 41fa01e6     lea.l      $179a(pc), a0
0015b6: 2008         move.l     a0, d0
0015b8: 61001db8     bsr.w      $3372
0015bc: 2d40943c     move.l     d0, -$6bc4(a6)
0015c0: 6722         beq.b      $15e4
0015c2: 2f2e9440     move.l     -$6bc0(a6), -(a7)
0015c6: 41fa01db     lea.l      $17a3(pc), a0
0015ca: 2208         move.l     a0, d1
0015cc: 202e943c     move.l     -$6bc4(a6), d0
0015d0: 610051b6     bsr.w      $6788
0015d4: 588f         addq.l     #$4, a7
0015d6: 41fa01f3     lea.l      $17cb(pc), a0
0015da: 2208         move.l     a0, d1
0015dc: 202e943c     move.l     -$6bc4(a6), d0
0015e0: 610051a6     bsr.w      $6788
0015e4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0015ea: 4e5d         unlk       a5
0015ec: 4e75         rts        
0015ee: 4e550000     link.w     a5, #$0
0015f2: 48e78000     movem.l    d0, -(a7)
0015f6: 0c2e0001943a cmpi.b     #$1, -$6bc6(a6)
0015fc: 6604         bne.b      $1602
0015fe: 610037b2     bsr.w      $4db2
001602: 4e5d         unlk       a5
001604: 4e75         rts        
001606: 4e550000     link.w     a5, #$0
00160a: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00160e: 2440         movea.l    d0, a2
001610: 2801         move.l     d1, d4
001612: 4feffff0     lea.l      -$10(a7), a7
001616: 0c2e0001943a cmpi.b     #$1, -$6bc6(a6)
00161c: 66000076     bne.w      $1694
001620: 4857         pea.l      (a7)
001622: 486f0008     pea.l      $8(a7)
001626: 41ef0010     lea.l      $10(a7), a0
00162a: 2208         move.l     a0, d1
00162c: 41ef0014     lea.l      $14(a7), a0
001630: 2008         move.l     a0, d0
001632: 610037ae     bsr.w      $4de2
001636: 508f         addq.l     #$8, a7
001638: 4aae943c     tst.l      -$6bc4(a6)
00163c: 6614         bne.b      $1652
00163e: 41fa01b9     lea.l      $17f9(pc), a0
001642: 2208         move.l     a0, d1
001644: 41fa01b5     lea.l      $17fb(pc), a0
001648: 2008         move.l     a0, d0
00164a: 61001d26     bsr.w      $3372
00164e: 2d40943c     move.l     d0, -$6bc4(a6)
001652: 4aae943c     tst.l      -$6bc4(a6)
001656: 673c         beq.b      $1694
001658: 2f17         move.l     (a7), -(a7)
00165a: 2f2f0008     move.l     $8(a7), -(a7)
00165e: 2f2f0010     move.l     $10(a7), -(a7)
001662: 2f2f0018     move.l     $18(a7), -(a7)
001666: 303c00ff     move.w     #$ff, d0
00166a: c06a0002     and.w      $2(a2), d0
00166e: 7200         moveq      #$0, d1
001670: 3200         move.w     d0, d1
001672: 2f01         move.l     d1, -(a7)
001674: 203cffffff00 move.l     #$ffffff00, d0
00167a: c092         and.l      (a2), d0
00167c: e088         lsr.l      #$8, d0
00167e: 2f00         move.l     d0, -(a7)
001680: 2f04         move.l     d4, -(a7)
001682: 41fa0180     lea.l      $1804(pc), a0
001686: 2208         move.l     a0, d1
001688: 202e943c     move.l     -$6bc4(a6), d0
00168c: 610050fa     bsr.w      $6788
001690: 4fef001c     lea.l      $1c(a7), a7
001694: 4fef0010     lea.l      $10(a7), a7
001698: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00169e: 4e5d         unlk       a5
0016a0: 4e75         rts        
0016a2: 4e550000     link.w     a5, #$0
0016a6: 48e78000     movem.l    d0, -(a7)
0016aa: 202e943c     move.l     -$6bc4(a6), d0
0016ae: 610050f8     bsr.w      $67a8
0016b2: 42ae943c     clr.l      -$6bc4(a6)
0016b6: 4e5d         unlk       a5
0016b8: 4e75         rts        
0016ba: 4e550000     link.w     a5, #$0
0016be: 48e78000     movem.l    d0, -(a7)
0016c2: 1d7c0001943a move.b     #$1, -$6bc6(a6)
0016c8: 4e5d         unlk       a5
0016ca: 4e75         rts        
0016cc: 4e550000     link.w     a5, #$0
0016d0: 48e78000     movem.l    d0, -(a7)
0016d4: 61cc         bsr.b      $16a2
0016d6: 422e943a     clr.b      -$6bc6(a6)
0016da: 4e5d         unlk       a5
0016dc: 4e75         rts        
0016de: 4e550000     link.w     a5, #$0
0016e2: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0016e6: 2440         movea.l    d0, a2
0016e8: 4fefffec     lea.l      -$14(a7), a7
0016ec: 0c2f0001001b cmpi.b     #$1, $1b(a7)
0016f2: 660c         bne.b      $1700
0016f4: 220a         move.l     a2, d1
0016f6: 41fa0126     lea.l      $181e(pc), a0
0016fa: 2008         move.l     a0, d0
0016fc: 61005086     bsr.w      $6784
001700: 41fa0125     lea.l      $1827(pc), a0
001704: 2208         move.l     a0, d1
001706: 41fa0121     lea.l      $1829(pc), a0
00170a: 2008         move.l     a0, d0
00170c: 61001c64     bsr.w      $3372
001710: 2f400010     move.l     d0, $10(a7)
001714: 67000074     beq.w      $178a
001718: 0c2e00019444 cmpi.b     #$1, -$6bbc(a6)
00171e: 662e         bne.b      $174e
001720: 422e9444     clr.b      -$6bbc(a6)
001724: 70ff         moveq      #$ff, d0
001726: b0ae9440     cmp.l      -$6bc0(a6), d0
00172a: 660a         bne.b      $1736
00172c: 41ee9440     lea.l      -$6bc0(a6), a0
001730: 2008         move.l     a0, d0
001732: 610035ec     bsr.w      $4d20
001736: 2f2e9440     move.l     -$6bc0(a6), -(a7)
00173a: 41fa00f5     lea.l      $1831(pc), a0
00173e: 2208         move.l     a0, d1
001740: 202f0014     move.l     $14(a7), d0
001744: 61005042     bsr.w      $6788
001748: 588f         addq.l     #$4, a7
00174a: 61003666     bsr.w      $4db2
00174e: 4857         pea.l      (a7)
001750: 486f0008     pea.l      $8(a7)
001754: 41ef0010     lea.l      $10(a7), a0
001758: 2208         move.l     a0, d1
00175a: 41ef0014     lea.l      $14(a7), a0
00175e: 2008         move.l     a0, d0
001760: 61003680     bsr.w      $4de2
001764: 508f         addq.l     #$8, a7
001766: 4852         pea.l      (a2)
001768: 2f2f0004     move.l     $4(a7), -(a7)
00176c: 2f2f000c     move.l     $c(a7), -(a7)
001770: 41fa00e9     lea.l      $185b(pc), a0
001774: 2208         move.l     a0, d1
001776: 202f001c     move.l     $1c(a7), d0
00177a: 6100500c     bsr.w      $6788
00177e: 4fef000c     lea.l      $c(a7), a7
001782: 202f0010     move.l     $10(a7), d0
001786: 61005020     bsr.w      $67a8
00178a: 4fef0014     lea.l      $14(a7), a7
00178e: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001794: 4e5d         unlk       a5
001796: 4e75         rts        
001798: 61007062     bsr.w      $87fc
00179c: 702e         moveq      #$2e, d0
00179e: 7374         .dc.w      $7374
0017a0: 6174         bsr.b      $1816
0017a2: 006d65617375 ori.w      #$6561, $7375(a5)
0017a8: 7265         moveq      #$65, d1
0017aa: 6d65         blt.b      $1811
0017ac: 6e74         bgt.b      $1822
0017ae: 7320         .dc.w      $7320
0017b0: 7374         .dc.w      $7374
0017b2: 6172         bsr.b      $1826
0017b4: 7465         moveq      #$65, d2
0017b6: 6420         bcc.b      $17d8
0017b8: 6174         bsr.b      $182e
0017ba: 3a20         move.w     -(a0), d5
0017bc: 25642e30     move.l     -(a4), $2e30(a2)
0017c0: 3020         move.w     -(a0), d0
0017c2: 7365         .dc.w      $7365
0017c4: 636f         bls.b      $1835
0017c6: 6e64         bgt.b      $182c
0017c8: 2e0d         move.l     a5, d7
0017ca: 0072657175657374 ori.w      #$6571, ([$7374, a2])
0017d2: 6572         bcs.b      $1846
0017d4: 2d696409626c move.l     $6409(a1), $626c(a6)
0017da: 6f63         ble.b      $183f
0017dc: 6b09         bmi.b      $17e7
0017de: 656c         bcs.b      $184c
0017e0: 6170         bsr.b      $1852
0017e2: 7365         .dc.w      $7365
0017e4: 642d         bcc.b      $1813
0017e6: 7469         moveq      #$69, d2
0017e8: 6d65         blt.b      $184f
0017ea: 0963         bchg.b     d4, -(a3)
0017ec: 7572         .dc.w      $7572
0017ee: 7265         moveq      #$65, d1
0017f0: 6e74         bgt.b      $1866
0017f2: 2d74696d650d0061 move.l     ([$650d, a4]), $61(a6)
0017fa: 007062702e73 ori.w      #$6270, $73(a0, d2.l)
001800: 7461         moveq      #$61, d2
001802: 7400         moveq      #$0, d2
001804: 25640925     move.l     -(a4), $925(a2)
001808: 642d         bcc.b      $1837
00180a: 25640925     move.l     -(a4), $925(a2)
00180e: 642e         bcc.b      $183e
001810: 25303264     move.l     $64(a0, d3.w), -(a2)
001814: 0925         btst.l     d4, -(a5)
001816: 642e         bcc.b      $1846
001818: 25303264     move.l     $64(a0, d3.w), -(a2)
00181c: 0d00         btst.l     d6, d0
00181e: 5042         addq.w     #$8, d2
001820: 503a         .dc.w      $503a
001822: 2025         move.l     -(a5), d0
001824: 730d         .dc.w      $730d
001826: 00610070     ori.w      #$70, -(a1)
00182a: 6270         bhi.b      $189c
00182c: 2e65         movea.l    -(a5), a7
00182e: 7272         moveq      #$72, d1
001830: 000d         .dc.w      $000d
001832: 6d65         blt.b      $1899
001834: 6173         bsr.b      $18a9
001836: 7572         .dc.w      $7572
001838: 656d         bcs.b      $18a7
00183a: 656e         bcs.b      $18aa
00183c: 7473         moveq      #$73, d2
00183e: 20737461     movea.l    $61(a3, d7.w), a0
001842: 7274         moveq      #$74, d1
001844: 6564         bcs.b      $18aa
001846: 2061         movea.l    -(a1), a0
001848: 743a         moveq      #$3a, d2
00184a: 2025         move.l     -(a5), d0
00184c: 642e         bcc.b      $187c
00184e: 30302073     move.w     $73(a0, d2.w), d0
001852: 6563         bcs.b      $18b7
001854: 6f6e         ble.b      $18c4
001856: 642e         bcc.b      $1886
001858: 0d0d0025     movep.w    $25(a5), d6
00185c: 33642e25     move.w     -(a4), $2e25(a1)
001860: 30326420     move.w     $20(a2, d6.w), d0
001864: 25730d004e55 move.l     (a3, d0.l * 4), $4e55(a2)
00186a: 000048e7     ori.b      #$e7, d0
00186e: 8000         or.b       d0, d0
001870: 202e8d88     move.l     -$7278(a6), d0
001874: 4e5d         unlk       a5
001876: 4e75         rts        
001878: 4e550000     link.w     a5, #$0
00187c: 48e78000     movem.l    d0, -(a7)
001880: 202e8d84     move.l     -$727c(a6), d0
001884: 4e5d         unlk       a5
001886: 4e75         rts        
001888: 4e550000     link.w     a5, #$0
00188c: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
001890: 7800         moveq      #$0, d4
001892: 601a         bra.b      $18ae
001894: 41ee8144     lea.l      -$7ebc(a6), a0
001898: 21bcffffffff4e00 move.l     #$ffffffff, (a0, d4.l * 8)
0018a0: 41ee8144     lea.l      -$7ebc(a6), a0
0018a4: 21bcffffffff4e04 move.l     #$ffffffff, $4(a0, d4.l)
0018ac: 5284         addq.l     #$1, d4
0018ae: b8ae8d8c     cmp.l      -$7274(a6), d4
0018b2: 6de0         blt.b      $1894
0018b4: 202e8d8c     move.l     -$7274(a6), d0
0018b8: 41ee8144     lea.l      -$7ebc(a6), a0
0018bc: 42b00e00     clr.l      (a0, d0.l * 8)
0018c0: 202e8d8c     move.l     -$7274(a6), d0
0018c4: 41ee8144     lea.l      -$7ebc(a6), a0
0018c8: 21bc000000b80e04 move.l     #$b8, $4(a0, d0.l)
0018d0: 7800         moveq      #$0, d4
0018d2: 6042         bra.b      $1916
0018d4: 2004         move.l     d4, d0
0018d6: e988         lsl.l      #$4, d0
0018d8: 41ee8184     lea.l      -$7e7c(a6), a0
0018dc: 21bcffffffff0800 move.l     #$ffffffff, (a0, d0.l)
0018e4: 2004         move.l     d4, d0
0018e6: e988         lsl.l      #$4, d0
0018e8: 41ee8184     lea.l      -$7e7c(a6), a0
0018ec: 21bcffffffff0804 move.l     #$ffffffff, $4(a0, d0.l)
0018f4: 2004         move.l     d4, d0
0018f6: e988         lsl.l      #$4, d0
0018f8: 41ee8184     lea.l      -$7e7c(a6), a0
0018fc: 21bcffffffff0808 move.l     #$ffffffff, $8(a0, d0.l)
001904: 2004         move.l     d4, d0
001906: e988         lsl.l      #$4, d0
001908: 41ee8184     lea.l      -$7e7c(a6), a0
00190c: 21bcffffffff080c move.l     #$ffffffff, $c(a0, d0.l)
001914: 5284         addq.l     #$1, d4
001916: 0c84000000c0 cmpi.l     #$c0, d4
00191c: 6db6         blt.b      $18d4
00191e: 42ae8184     clr.l      -$7e7c(a6)
001922: 2d6e8d8c8188 move.l     -$7274(a6), -$7e78(a6)
001928: 7008         moveq      #$8, d0
00192a: 2d40818c     move.l     d0, -$7e74(a6)
00192e: 70ff         moveq      #$ff, d0
001930: 2d408190     move.l     d0, -$7e70(a6)
001934: 7808         moveq      #$8, d4
001936: 603c         bra.b      $1974
001938: 2004         move.l     d4, d0
00193a: e988         lsl.l      #$4, d0
00193c: 41ee8184     lea.l      -$7e7c(a6), a0
001940: 42b00800     clr.l      (a0, d0.l)
001944: 2004         move.l     d4, d0
001946: e988         lsl.l      #$4, d0
001948: 41ee8184     lea.l      -$7e7c(a6), a0
00194c: 21ae8d8c0804 move.l     -$7274(a6), $4(a0, d0.l)
001952: 2004         move.l     d4, d0
001954: e988         lsl.l      #$4, d0
001956: 41ee8184     lea.l      -$7e7c(a6), a0
00195a: 2204         move.l     d4, d1
00195c: 5081         addq.l     #$8, d1
00195e: 21810808     move.l     d1, $8(a0, d0.l)
001962: 2004         move.l     d4, d0
001964: e988         lsl.l      #$4, d0
001966: 41ee8184     lea.l      -$7e7c(a6), a0
00196a: 2204         move.l     d4, d1
00196c: 5181         subq.l     #$8, d1
00196e: 2181080c     move.l     d1, $c(a0, d0.l)
001972: 5084         addq.l     #$8, d4
001974: 0c84000000b8 cmpi.l     #$b8, d4
00197a: 6dbc         blt.b      $1938
00197c: 2a3c000000b8 move.l     #$b8, d5
001982: 2005         move.l     d5, d0
001984: e988         lsl.l      #$4, d0
001986: 41ee8184     lea.l      -$7e7c(a6), a0
00198a: 42b00800     clr.l      (a0, d0.l)
00198e: 2005         move.l     d5, d0
001990: e988         lsl.l      #$4, d0
001992: 41ee8184     lea.l      -$7e7c(a6), a0
001996: 21ae8d8c0804 move.l     -$7274(a6), $4(a0, d0.l)
00199c: 2005         move.l     d5, d0
00199e: e988         lsl.l      #$4, d0
0019a0: 41ee8184     lea.l      -$7e7c(a6), a0
0019a4: 21bcffffffff0808 move.l     #$ffffffff, $8(a0, d0.l)
0019ac: 2005         move.l     d5, d0
0019ae: e988         lsl.l      #$4, d0
0019b0: 41ee8184     lea.l      -$7e7c(a6), a0
0019b4: 21bc000000b0080c move.l     #$b0, $c(a0, d0.l)
0019bc: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
0019c2: 4e5d         unlk       a5
0019c4: 4e75         rts        
0019c6: 4e550000     link.w     a5, #$0
0019ca: 48e7c080     movem.l    d0-d1/a0, -(a7)
0019ce: 598f         subq.l     #$4, a7
0019d0: 486e8d84     pea.l      -$727c(a6)
0019d4: 41ee8d88     lea.l      -$7278(a6), a0
0019d8: 2208         move.l     a0, d1
0019da: 203c00060004 move.l     #$60004, d0
0019e0: 610035f4     bsr.w      $4fd6
0019e4: 588f         addq.l     #$4, a7
0019e6: 4a80         tst.l      d0
0019e8: 662e         bne.b      $1a18
0019ea: 4fefff9c     lea.l      -$64(a7), a7
0019ee: 2f2e800c     move.l     -$7ff4(a6), -(a7)
0019f2: 41fa05e0     lea.l      $1fd4(pc), a0
0019f6: 2208         move.l     a0, d1
0019f8: 41ef0004     lea.l      $4(a7), a0
0019fc: 2008         move.l     a0, d0
0019fe: 61004d8c     bsr.w      $678c
001a02: 588f         addq.l     #$4, a7
001a04: 7201         moveq      #$1, d1
001a06: 41d7         lea.l      (a7), a0
001a08: 2008         move.l     a0, d0
001a0a: 6100fcd2     bsr.w      $16de
001a0e: 4fef0064     lea.l      $64(a7), a7
001a12: 7000         moveq      #$0, d0
001a14: 6000007e     bra.w      $1a94
001a18: 202e8d84     move.l     -$727c(a6), d0
001a1c: 4c7c080100000004 divs.l     #$4, d0
001a24: 4a81         tst.l      d1
001a26: 670c         beq.b      $1a34
001a28: 7200         moveq      #$0, d1
001a2a: 41fa05cf     lea.l      $1ffb(pc), a0
001a2e: 2008         move.l     a0, d0
001a30: 6100fcac     bsr.w      $16de
001a34: 4297         clr.l      (a7)
001a36: 6016         bra.b      $1a4e
001a38: 202e8d84     move.l     -$727c(a6), d0
001a3c: 4c7c080100000004 divs.l     #$4, d0
001a44: 4a81         tst.l      d1
001a46: 670c         beq.b      $1a54
001a48: 5297         addq.l     #$1, (a7)
001a4a: 52ae8d84     addq.l     #$1, -$727c(a6)
001a4e: 7004         moveq      #$4, d0
001a50: b097         cmp.l      (a7), d0
001a52: 6ee4         bgt.b      $1a38
001a54: 202e8d84     move.l     -$727c(a6), d0
001a58: 4c7c080100000004 divs.l     #$4, d0
001a60: 4a81         tst.l      d1
001a62: 670c         beq.b      $1a70
001a64: 7201         moveq      #$1, d1
001a66: 41fa05ba     lea.l      $2022(pc), a0
001a6a: 2008         move.l     a0, d0
001a6c: 6100fc70     bsr.w      $16de
001a70: 42ae8d8c     clr.l      -$7274(a6)
001a74: 7008         moveq      #$8, d0
001a76: 2e80         move.l     d0, (a7)
001a78: 600e         bra.b      $1a88
001a7a: 2017         move.l     (a7), d0
001a7c: 6c02         bge.b      $1a80
001a7e: 5280         addq.l     #$1, d0
001a80: e280         asr.l      #$1, d0
001a82: 2e80         move.l     d0, (a7)
001a84: 52ae8d8c     addq.l     #$1, -$7274(a6)
001a88: 7001         moveq      #$1, d0
001a8a: b097         cmp.l      (a7), d0
001a8c: 6dec         blt.b      $1a7a
001a8e: 6100fdf8     bsr.w      $1888
001a92: 7001         moveq      #$1, d0
001a94: 588f         addq.l     #$4, a7
001a96: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001a9c: 4e5d         unlk       a5
001a9e: 4e75         rts        
001aa0: 4e550000     link.w     a5, #$0
001aa4: 48e7c080     movem.l    d0-d1/a0, -(a7)
001aa8: 222e8d84     move.l     -$727c(a6), d1
001aac: 202e8d88     move.l     -$7278(a6), d0
001ab0: 6100358a     bsr.w      $503c
001ab4: 4a80         tst.l      d0
001ab6: 6628         bne.b      $1ae0
001ab8: 4fefff9c     lea.l      -$64(a7), a7
001abc: 2f2e800c     move.l     -$7ff4(a6), -(a7)
001ac0: 41fa0582     lea.l      $2044(pc), a0
001ac4: 2208         move.l     a0, d1
001ac6: 41ef0004     lea.l      $4(a7), a0
001aca: 2008         move.l     a0, d0
001acc: 61004cbe     bsr.w      $678c
001ad0: 588f         addq.l     #$4, a7
001ad2: 7201         moveq      #$1, d1
001ad4: 41d7         lea.l      (a7), a0
001ad6: 2008         move.l     a0, d0
001ad8: 6100fc04     bsr.w      $16de
001adc: 4fef0064     lea.l      $64(a7), a7
001ae0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001ae6: 4e5d         unlk       a5
001ae8: 4e75         rts        
001aea: 4e550000     link.w     a5, #$0
001aee: 48e78cc0     movem.l    d0/d4-d5/a0-a1, -(a7)
001af2: 2800         move.l     d0, d4
001af4: 41ee8144     lea.l      -$7ebc(a6), a0
001af8: 2a304e00     move.l     (a0, d4.l * 8), d5
001afc: 41ee8144     lea.l      -$7ebc(a6), a0
001b00: 43ee8144     lea.l      -$7ebc(a6), a1
001b04: 20314e00     move.l     (a1, d4.l * 8), d0
001b08: b0b04e04     cmp.l      $4(a0, d4.l), d0
001b0c: 661a         bne.b      $1b28
001b0e: 41ee8144     lea.l      -$7ebc(a6), a0
001b12: 21bcffffffff4e00 move.l     #$ffffffff, (a0, d4.l * 8)
001b1a: 41ee8144     lea.l      -$7ebc(a6), a0
001b1e: 21bcffffffff4e04 move.l     #$ffffffff, $4(a0, d4.l)
001b26: 6028         bra.b      $1b50
001b28: 2005         move.l     d5, d0
001b2a: e988         lsl.l      #$4, d0
001b2c: 41ee8184     lea.l      -$7e7c(a6), a0
001b30: 43ee8144     lea.l      -$7ebc(a6), a1
001b34: 23b008084e00 move.l     $8(a0, d0.l), (a1, d4.l * 8)
001b3a: 41ee8144     lea.l      -$7ebc(a6), a0
001b3e: 20304e00     move.l     (a0, d4.l * 8), d0
001b42: e988         lsl.l      #$4, d0
001b44: 41ee8184     lea.l      -$7e7c(a6), a0
001b48: 21bcffffffff080c move.l     #$ffffffff, $c(a0, d0.l)
001b50: 2005         move.l     d5, d0
001b52: e988         lsl.l      #$4, d0
001b54: 41ee8184     lea.l      -$7e7c(a6), a0
001b58: 21bcffffffff0808 move.l     #$ffffffff, $8(a0, d0.l)
001b60: 2005         move.l     d5, d0
001b62: e988         lsl.l      #$4, d0
001b64: 41ee8184     lea.l      -$7e7c(a6), a0
001b68: 21bcffffffff080c move.l     #$ffffffff, $c(a0, d0.l)
001b70: 2005         move.l     d5, d0
001b72: 4ced0330fff0 movem.l    -$10(a5), d4-d5/a0-a1
001b78: 4e5d         unlk       a5
001b7a: 4e75         rts        
001b7c: 4e550000     link.w     a5, #$0
001b80: 48e7ccc0     movem.l    d0-d1/d4-d5/a0-a1, -(a7)
001b84: 2800         move.l     d0, d4
001b86: 2a01         move.l     d1, d5
001b88: 2004         move.l     d4, d0
001b8a: e988         lsl.l      #$4, d0
001b8c: 41ee8184     lea.l      -$7e7c(a6), a0
001b90: 42b00800     clr.l      (a0, d0.l)
001b94: 2004         move.l     d4, d0
001b96: e988         lsl.l      #$4, d0
001b98: 41ee8184     lea.l      -$7e7c(a6), a0
001b9c: 21850804     move.l     d5, $4(a0, d0.l)
001ba0: 41ee8144     lea.l      -$7ebc(a6), a0
001ba4: 70ff         moveq      #$ff, d0
001ba6: b0b05e00     cmp.l      (a0, d5.l * 8), d0
001baa: 662a         bne.b      $1bd6
001bac: 2004         move.l     d4, d0
001bae: e988         lsl.l      #$4, d0
001bb0: 41ee8184     lea.l      -$7e7c(a6), a0
001bb4: 21bcffffffff0808 move.l     #$ffffffff, $8(a0, d0.l)
001bbc: 2004         move.l     d4, d0
001bbe: e988         lsl.l      #$4, d0
001bc0: 41ee8184     lea.l      -$7e7c(a6), a0
001bc4: 21bcffffffff080c move.l     #$ffffffff, $c(a0, d0.l)
001bcc: 41ee8144     lea.l      -$7ebc(a6), a0
001bd0: 21845e00     move.l     d4, (a0, d5.l * 8)
001bd4: 6034         bra.b      $1c0a
001bd6: 2004         move.l     d4, d0
001bd8: e988         lsl.l      #$4, d0
001bda: 41ee8184     lea.l      -$7e7c(a6), a0
001bde: 21bcffffffff0808 move.l     #$ffffffff, $8(a0, d0.l)
001be6: 41ee8144     lea.l      -$7ebc(a6), a0
001bea: 2004         move.l     d4, d0
001bec: e988         lsl.l      #$4, d0
001bee: 43ee8184     lea.l      -$7e7c(a6), a1
001bf2: 23b05e04080c move.l     $4(a0, d5.l), $c(a1, d0.l)
001bf8: 41ee8144     lea.l      -$7ebc(a6), a0
001bfc: 20305e04     move.l     $4(a0, d5.l), d0
001c00: e988         lsl.l      #$4, d0
001c02: 41ee8184     lea.l      -$7e7c(a6), a0
001c06: 21840808     move.l     d4, $8(a0, d0.l)
001c0a: 41ee8144     lea.l      -$7ebc(a6), a0
001c0e: 21845e04     move.l     d4, $4(a0, d5.l)
001c12: 4ced0330fff0 movem.l    -$10(a5), d4-d5/a0-a1
001c18: 4e5d         unlk       a5
001c1a: 4e75         rts        
001c1c: 4e550000     link.w     a5, #$0
001c20: 48e7ccc0     movem.l    d0-d1/d4-d5/a0-a1, -(a7)
001c24: 2800         move.l     d0, d4
001c26: 2a01         move.l     d1, d5
001c28: 41ee8144     lea.l      -$7ebc(a6), a0
001c2c: b8b05e00     cmp.l      (a0, d5.l * 8), d4
001c30: 6614         bne.b      $1c46
001c32: 2004         move.l     d4, d0
001c34: e988         lsl.l      #$4, d0
001c36: 41ee8184     lea.l      -$7e7c(a6), a0
001c3a: 43ee8144     lea.l      -$7ebc(a6), a1
001c3e: 23b008085e00 move.l     $8(a0, d0.l), (a1, d5.l * 8)
001c44: 6020         bra.b      $1c66
001c46: 2004         move.l     d4, d0
001c48: e988         lsl.l      #$4, d0
001c4a: 41ee8184     lea.l      -$7e7c(a6), a0
001c4e: 2204         move.l     d4, d1
001c50: e989         lsl.l      #$4, d1
001c52: 43ee8184     lea.l      -$7e7c(a6), a1
001c56: 2231180c     move.l     $c(a1, d1.l), d1
001c5a: e989         lsl.l      #$4, d1
001c5c: 43ee8184     lea.l      -$7e7c(a6), a1
001c60: 23b008081808 move.l     $8(a0, d0.l), $8(a1, d1.l)
001c66: 41ee8144     lea.l      -$7ebc(a6), a0
001c6a: b8b05e04     cmp.l      $4(a0, d5.l), d4
001c6e: 6614         bne.b      $1c84
001c70: 2004         move.l     d4, d0
001c72: e988         lsl.l      #$4, d0
001c74: 41ee8184     lea.l      -$7e7c(a6), a0
001c78: 43ee8144     lea.l      -$7ebc(a6), a1
001c7c: 23b0080c5e04 move.l     $c(a0, d0.l), $4(a1, d5.l)
001c82: 6020         bra.b      $1ca4
001c84: 2004         move.l     d4, d0
001c86: e988         lsl.l      #$4, d0
001c88: 41ee8184     lea.l      -$7e7c(a6), a0
001c8c: 2204         move.l     d4, d1
001c8e: e989         lsl.l      #$4, d1
001c90: 43ee8184     lea.l      -$7e7c(a6), a1
001c94: 22311808     move.l     $8(a1, d1.l), d1
001c98: e989         lsl.l      #$4, d1
001c9a: 43ee8184     lea.l      -$7e7c(a6), a1
001c9e: 23b0080c180c move.l     $c(a0, d0.l), $c(a1, d1.l)
001ca4: 4ced0330fff0 movem.l    -$10(a5), d4-d5/a0-a1
001caa: 4e5d         unlk       a5
001cac: 4e75         rts        
001cae: 4e550000     link.w     a5, #$0
001cb2: 48e7ee80     movem.l    d0-d2/d4-d6/a0, -(a7)
001cb6: 518f         subq.l     #$8, a7
001cb8: 0c6f0008000a cmpi.w     #$8, $a(a7)
001cbe: 630c         bls.b      $1ccc
001cc0: 7200         moveq      #$0, d1
001cc2: 41fa03a9     lea.l      $206d(pc), a0
001cc6: 2008         move.l     a0, d0
001cc8: 6100fa14     bsr.w      $16de
001ccc: 7aff         moveq      #$ff, d5
001cce: 7800         moveq      #$0, d4
001cd0: 6022         bra.b      $1cf4
001cd2: 7000         moveq      #$0, d0
001cd4: 302f000a     move.w     $a(a7), d0
001cd8: 2200         move.l     d0, d1
001cda: 4a84         tst.l      d4
001cdc: 6e04         bgt.b      $1ce2
001cde: 7001         moveq      #$1, d0
001ce0: 600a         bra.b      $1cec
001ce2: 2004         move.l     d4, d0
001ce4: 5380         subq.l     #$1, d0
001ce6: 7402         moveq      #$2, d2
001ce8: e1aa         lsl.l      d0, d2
001cea: 2002         move.l     d2, d0
001cec: b280         cmp.l      d0, d1
001cee: 6e02         bgt.b      $1cf2
001cf0: 2a04         move.l     d4, d5
001cf2: 5284         addq.l     #$1, d4
001cf4: 70ff         moveq      #$ff, d0
001cf6: b085         cmp.l      d5, d0
001cf8: 67d8         beq.b      $1cd2
001cfa: 70ff         moveq      #$ff, d0
001cfc: 2f400004     move.l     d0, $4(a7)
001d00: 2805         move.l     d5, d4
001d02: 6012         bra.b      $1d16
001d04: 41ee8144     lea.l      -$7ebc(a6), a0
001d08: 70ff         moveq      #$ff, d0
001d0a: b0b04e00     cmp.l      (a0, d4.l * 8), d0
001d0e: 6704         beq.b      $1d14
001d10: 2f440004     move.l     d4, $4(a7)
001d14: 5284         addq.l     #$1, d4
001d16: b8ae8d8c     cmp.l      -$7274(a6), d4
001d1a: 6e08         bgt.b      $1d24
001d1c: 70ff         moveq      #$ff, d0
001d1e: b0af0004     cmp.l      $4(a7), d0
001d22: 67e0         beq.b      $1d04
001d24: 70ff         moveq      #$ff, d0
001d26: b0af0004     cmp.l      $4(a7), d0
001d2a: 6604         bne.b      $1d30
001d2c: 70ff         moveq      #$ff, d0
001d2e: 605e         bra.b      $1d8e
001d30: 202f0004     move.l     $4(a7), d0
001d34: 6100fdb4     bsr.w      $1aea
001d38: 2c00         move.l     d0, d6
001d3a: 6028         bra.b      $1d64
001d3c: 53af0004     subq.l     #$1, $4(a7)
001d40: 4aaf0004     tst.l      $4(a7)
001d44: 6e04         bgt.b      $1d4a
001d46: 7001         moveq      #$1, d0
001d48: 600c         bra.b      $1d56
001d4a: 202f0004     move.l     $4(a7), d0
001d4e: 5380         subq.l     #$1, d0
001d50: 7202         moveq      #$2, d1
001d52: e1a9         lsl.l      d0, d1
001d54: 2001         move.l     d1, d0
001d56: d086         add.l      d6, d0
001d58: 2e80         move.l     d0, (a7)
001d5a: 222f0004     move.l     $4(a7), d1
001d5e: 2017         move.l     (a7), d0
001d60: 6100fe1a     bsr.w      $1b7c
001d64: baaf0004     cmp.l      $4(a7), d5
001d68: 6dd2         blt.b      $1d3c
001d6a: 2006         move.l     d6, d0
001d6c: e988         lsl.l      #$4, d0
001d6e: 41ee8184     lea.l      -$7e7c(a6), a0
001d72: 21bc000000010800 move.l     #$1, (a0, d0.l)
001d7a: 2006         move.l     d6, d0
001d7c: e988         lsl.l      #$4, d0
001d7e: 41ee8184     lea.l      -$7e7c(a6), a0
001d82: 21850804     move.l     d5, $4(a0, d0.l)
001d86: 700b         moveq      #$b, d0
001d88: 2206         move.l     d6, d1
001d8a: e1a9         lsl.l      d0, d1
001d8c: 2001         move.l     d1, d0
001d8e: 508f         addq.l     #$8, a7
001d90: 4ced0176ffe8 movem.l    -$18(a5), d1-d2/d4-d6/a0
001d96: 4e5d         unlk       a5
001d98: 4e75         rts        
001d9a: 4e550000     link.w     a5, #$0
001d9e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001da2: 598f         subq.l     #$4, a7
001da4: 70ff         moveq      #$ff, d0
001da6: 2e80         move.l     d0, (a7)
001da8: 6040         bra.b      $1dea
001daa: 61000322     bsr.w      $20ce
001dae: 4a00         tst.b      d0
001db0: 6638         bne.b      $1dea
001db2: 4fefff9c     lea.l      -$64(a7), a7
001db6: 7000         moveq      #$0, d0
001db8: 302f006a     move.w     $6a(a7), d0
001dbc: 2f00         move.l     d0, -(a7)
001dbe: 41fa02cd     lea.l      $208d(pc), a0
001dc2: 2208         move.l     a0, d1
001dc4: 41ef0004     lea.l      $4(a7), a0
001dc8: 2008         move.l     a0, d0
001dca: 610049c0     bsr.w      $678c
001dce: 588f         addq.l     #$4, a7
001dd0: 7201         moveq      #$1, d1
001dd2: 41d7         lea.l      (a7), a0
001dd4: 2008         move.l     a0, d0
001dd6: 6100f906     bsr.w      $16de
001dda: 4fef0064     lea.l      $64(a7), a7
001dde: 41fa02db     lea.l      $20bb(pc), a0
001de2: 2008         move.l     a0, d0
001de4: 6100e536     bsr.w      $31c
001de8: 6012         bra.b      $1dfc
001dea: 7000         moveq      #$0, d0
001dec: 302f0006     move.w     $6(a7), d0
001df0: 6100febc     bsr.w      $1cae
001df4: 2e80         move.l     d0, (a7)
001df6: 72ff         moveq      #$ff, d1
001df8: b280         cmp.l      d0, d1
001dfa: 67ae         beq.b      $1daa
001dfc: 2017         move.l     (a7), d0
001dfe: 588f         addq.l     #$4, a7
001e00: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001e06: 4e5d         unlk       a5
001e08: 4e75         rts        
001e0a: 4e550000     link.w     a5, #$0
001e0e: 48e7cf80     movem.l    d0-d1/d4-d7/a0, -(a7)
001e12: 2800         move.l     d0, d4
001e14: 598f         subq.l     #$4, a7
001e16: 2004         move.l     d4, d0
001e18: 6c06         bge.b      $1e20
001e1a: 0680000007ff addi.l     #$7ff, d0
001e20: 720b         moveq      #$b, d1
001e22: e2a0         asr.l      d1, d0
001e24: 2e00         move.l     d0, d7
001e26: 2007         move.l     d7, d0
001e28: e988         lsl.l      #$4, d0
001e2a: 41ee8184     lea.l      -$7e7c(a6), a0
001e2e: 2c300804     move.l     $4(a0, d0.l), d6
001e32: 4a86         tst.l      d6
001e34: 6e0000a0     bgt.w      $1ed6
001e38: 7001         moveq      #$1, d0
001e3a: 600000a4     bra.w      $1ee0
001e3e: 2206         move.l     d6, d1
001e40: 2005         move.l     d5, d0
001e42: 6100fdd8     bsr.w      $1c1c
001e46: ba87         cmp.l      d7, d5
001e48: 6c06         bge.b      $1e50
001e4a: 2e85         move.l     d5, (a7)
001e4c: 2a07         move.l     d7, d5
001e4e: 2e17         move.l     (a7), d7
001e50: 2007         move.l     d7, d0
001e52: e988         lsl.l      #$4, d0
001e54: 41ee8184     lea.l      -$7e7c(a6), a0
001e58: 42b00800     clr.l      (a0, d0.l)
001e5c: 2007         move.l     d7, d0
001e5e: e988         lsl.l      #$4, d0
001e60: 41ee8184     lea.l      -$7e7c(a6), a0
001e64: 21bcffffffff0808 move.l     #$ffffffff, $8(a0, d0.l)
001e6c: 2007         move.l     d7, d0
001e6e: e988         lsl.l      #$4, d0
001e70: 41ee8184     lea.l      -$7e7c(a6), a0
001e74: 21bcffffffff080c move.l     #$ffffffff, $c(a0, d0.l)
001e7c: 2007         move.l     d7, d0
001e7e: e988         lsl.l      #$4, d0
001e80: 41ee8184     lea.l      -$7e7c(a6), a0
001e84: 2206         move.l     d6, d1
001e86: 5281         addq.l     #$1, d1
001e88: 21810804     move.l     d1, $4(a0, d0.l)
001e8c: 2005         move.l     d5, d0
001e8e: e988         lsl.l      #$4, d0
001e90: 41ee8184     lea.l      -$7e7c(a6), a0
001e94: 21bcffffffff0800 move.l     #$ffffffff, (a0, d0.l)
001e9c: 2005         move.l     d5, d0
001e9e: e988         lsl.l      #$4, d0
001ea0: 41ee8184     lea.l      -$7e7c(a6), a0
001ea4: 21bcffffffff0808 move.l     #$ffffffff, $8(a0, d0.l)
001eac: 2005         move.l     d5, d0
001eae: e988         lsl.l      #$4, d0
001eb0: 41ee8184     lea.l      -$7e7c(a6), a0
001eb4: 21bcffffffff080c move.l     #$ffffffff, $c(a0, d0.l)
001ebc: 2005         move.l     d5, d0
001ebe: e988         lsl.l      #$4, d0
001ec0: 41ee8184     lea.l      -$7e7c(a6), a0
001ec4: 21bcffffffff0804 move.l     #$ffffffff, $4(a0, d0.l)
001ecc: 5286         addq.l     #$1, d6
001ece: 4a86         tst.l      d6
001ed0: 6e04         bgt.b      $1ed6
001ed2: 7001         moveq      #$1, d0
001ed4: 600a         bra.b      $1ee0
001ed6: 2006         move.l     d6, d0
001ed8: 5380         subq.l     #$1, d0
001eda: 7202         moveq      #$2, d1
001edc: e1a9         lsl.l      d0, d1
001ede: 2001         move.l     d1, d0
001ee0: bf80         eor.l      d7, d0
001ee2: 2a00         move.l     d0, d5
001ee4: 2005         move.l     d5, d0
001ee6: e988         lsl.l      #$4, d0
001ee8: 41ee8184     lea.l      -$7e7c(a6), a0
001eec: 4ab00800     tst.l      (a0, d0.l)
001ef0: 6616         bne.b      $1f08
001ef2: 2005         move.l     d5, d0
001ef4: e988         lsl.l      #$4, d0
001ef6: 41ee8184     lea.l      -$7e7c(a6), a0
001efa: bcb00804     cmp.l      $4(a0, d0.l), d6
001efe: 6608         bne.b      $1f08
001f00: bcae8d8c     cmp.l      -$7274(a6), d6
001f04: 6d00ff38     blt.w      $1e3e
001f08: 2206         move.l     d6, d1
001f0a: 2007         move.l     d7, d0
001f0c: 6100fc6e     bsr.w      $1b7c
001f10: 588f         addq.l     #$4, a7
001f12: 4ced01f2ffe8 movem.l    -$18(a5), d1/d4-d7/a0
001f18: 4e5d         unlk       a5
001f1a: 4e75         rts        
001f1c: 4e550000     link.w     a5, #$0
001f20: 48e7c080     movem.l    d0-d1/a0, -(a7)
001f24: 598f         subq.l     #$4, a7
001f26: 4297         clr.l      (a7)
001f28: 6000008c     bra.w      $1fb6
001f2c: 2017         move.l     (a7), d0
001f2e: 4c7c080100000010 divs.l     #$10, d0
001f36: 4a81         tst.l      d1
001f38: 6660         bne.b      $1f9a
001f3a: 41fa0183     lea.l      $20bf(pc), a0
001f3e: 2208         move.l     a0, d1
001f40: 202f0004     move.l     $4(a7), d0
001f44: 61004842     bsr.w      $6788
001f48: 6050         bra.b      $1f9a
001f4a: 41fa0175     lea.l      $20c1(pc), a0
001f4e: 603e         bra.b      $1f8e
001f50: 2017         move.l     (a7), d0
001f52: e988         lsl.l      #$4, d0
001f54: 41ee8184     lea.l      -$7e7c(a6), a0
001f58: 4ab00804     tst.l      $4(a0, d0.l)
001f5c: 6e04         bgt.b      $1f62
001f5e: 7001         moveq      #$1, d0
001f60: 6014         bra.b      $1f76
001f62: 2017         move.l     (a7), d0
001f64: e988         lsl.l      #$4, d0
001f66: 41ee8184     lea.l      -$7e7c(a6), a0
001f6a: 20300804     move.l     $4(a0, d0.l), d0
001f6e: 5380         subq.l     #$1, d0
001f70: 7202         moveq      #$2, d1
001f72: e1a9         lsl.l      d0, d1
001f74: 2001         move.l     d1, d0
001f76: 2f00         move.l     d0, -(a7)
001f78: 41fa014b     lea.l      $20c5(pc), a0
001f7c: 2208         move.l     a0, d1
001f7e: 202f0008     move.l     $8(a7), d0
001f82: 61004804     bsr.w      $6788
001f86: 588f         addq.l     #$4, a7
001f88: 602a         bra.b      $1fb4
001f8a: 41fa013e     lea.l      $20ca(pc), a0
001f8e: 2208         move.l     a0, d1
001f90: 202f0004     move.l     $4(a7), d0
001f94: 610047f2     bsr.w      $6788
001f98: 601a         bra.b      $1fb4
001f9a: 2017         move.l     (a7), d0
001f9c: e988         lsl.l      #$4, d0
001f9e: 41ee8184     lea.l      -$7e7c(a6), a0
001fa2: 20300800     move.l     (a0, d0.l), d0
001fa6: 4a80         tst.l      d0
001fa8: 67a0         beq.b      $1f4a
001faa: 0c8000000001 cmpi.l     #$1, d0
001fb0: 679e         beq.b      $1f50
001fb2: 60d6         bra.b      $1f8a
001fb4: 5297         addq.l     #$1, (a7)
001fb6: 0c97000000c0 cmpi.l     #$c0, (a7)
001fbc: 6d00ff6e     blt.w      $1f2c
001fc0: 202f0004     move.l     $4(a7), d0
001fc4: 610047de     bsr.w      $67a4
001fc8: 588f         addq.l     #$4, a7
001fca: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001fd0: 4e5d         unlk       a5
001fd2: 4e75         rts        
001fd4: 6572         bcs.b      $2048
001fd6: 726e         moveq      #$6e, d1
001fd8: 6f20         ble.b      $1ffa
001fda: 7368         .dc.w      $7368
001fdc: 6d65         blt.b      $2043
001fde: 6d5f         blt.b      $203f
001fe0: 6372         bls.b      $2054
001fe2: 6561         bcs.b      $2045
001fe4: 7428         moveq      #$28, d2
001fe6: 2920         move.l     -(a0), -(a4)
001fe8: 666f         bne.b      $2059
001fea: 7220         moveq      #$20, d1
001fec: 42756666     clr.w      $66(a5, d6.w)
001ff0: 6572         bcs.b      $2064
001ff2: 506f6f6c     addq.w     #$8, $6f6c(a7)
001ff6: 3a20         move.w     -(a0), d5
001ff8: 2564004f     move.l     -(a4), $4f(a2)
001ffc: 7269         moveq      #$69, d1
001ffe: 6769         beq.b      $2069
002000: 6e61         bgt.b      $2063
002002: 6c20         bge.b      $2024
002004: 4250         clr.w      (a0)
002006: 206e6f74     movea.l    $6f74(a6), a0
00200a: 206f6e20     movea.l    $6e20(a7), a0
00200e: 6c6f         bge.b      $207f
002010: 6e67         bgt.b      $2079
002012: 20776f726420626f756e movea.l    ([$6420626f, a7], $756e), a0
00201c: 6461         bcc.b      $207f
00201e: 7279         moveq      #$79, d1
002020: 2e00         move.l     d0, d7
002022: 4e65         move       a5, usp
002024: 7720         .dc.w      $7720
002026: 4250         clr.w      (a0)
002028: 206e6f74     movea.l    $6f74(a6), a0
00202c: 206f6e20     movea.l    $6e20(a7), a0
002030: 6c6f         bge.b      $20a1
002032: 6e67         bgt.b      $209b
002034: 20776f726420626f756e movea.l    ([$6420626f, a7], $756e), a0
00203e: 6461         bcc.b      $20a1
002040: 7279         moveq      #$79, d1
002042: 2e00         move.l     d0, d7
002044: 4572         .dc.w      $4572
002046: 726f         moveq      #$6f, d1
002048: 7220         moveq      #$20, d1
00204a: 696e         bvs.b      $20ba
00204c: 2072656d6f76 movea.l    ([$6f76, a2]), a0
002052: 696e         bvs.b      $20c2
002054: 6720         beq.b      $2076
002056: 6275         bhi.b      $20cd
002058: 6666         bne.b      $20c0
00205a: 6572         bcs.b      $20ce
00205c: 20706f6f6c2c movea.l    ([$6c2c, a0]), a0
002062: 2065         movea.l    -(a5), a0
002064: 7272         moveq      #$72, d1
002066: 6e6f         bgt.b      $20d7
002068: 2025         move.l     -(a5), d0
00206a: 642e         bcc.b      $209a
00206c: 00627564     ori.w      #$7564, -(a2)
002070: 6479         bcc.b      $20eb
002072: 2e63         movea.l    -(a3), a7
002074: 3a20         move.w     -(a0), d5
002076: 4552         .dc.w      $4552
002078: 524f         addq.w     #$1, a7
00207a: 523a         .dc.w      $523a
00207c: 2062         movea.l    -(a2), a0
00207e: 6c6f         bge.b      $20ef
002080: 636b         bls.b      $20ed
002082: 20746f6f206c movea.l    ([$206c, a4]), a0
002088: 6172         bsr.b      $20fc
00208a: 6765         beq.b      $20f1
00208c: 004d         .dc.w      $004d
00208e: 454d         .dc.w      $454d
002090: 5f41         subq.w     #$7, d1
002092: 4c4c         .dc.w      $4c4c
002094: 4f43         .dc.w      $4f43
002096: 3a20         move.w     -(a0), d5
002098: 6e6f         bgt.b      $2109
00209a: 2042         movea.l    d2, a0
00209c: 7566         .dc.w      $7566
00209e: 6665         bne.b      $2105
0020a0: 7220         moveq      #$20, d1
0020a2: 506f6f6c     addq.w     #$8, $6f6c(a7)
0020a6: 206d656d     movea.l    $656d(a5), a0
0020aa: 6f72         ble.b      $211e
0020ac: 7920         .dc.w      $7920
0020ae: 666f         bne.b      $211f
0020b0: 7220         moveq      #$20, d1
0020b2: 7369         .dc.w      $7369
0020b4: 7a65         moveq      #$65, d5
0020b6: 2025         move.l     -(a5), d0
0020b8: 642e         bcc.b      $20e8
0020ba: 006e6f6d000d ori.w      #$6f6d, $d(a6)
0020c0: 00202066     ori.b      #$66, -(a0)
0020c4: 00202025     ori.b      #$25, -(a0)
0020c8: 64002020     bcc.w      $40ea
0020cc: 2d00         move.l     d0, -(a6)
0020ce: 4e550000     link.w     a5, #$0
0020d2: 48e78080     movem.l    d0/a0, -(a7)
0020d6: 598f         subq.l     #$4, a7
0020d8: 41d7         lea.l      (a7), a0
0020da: 2008         move.l     a0, d0
0020dc: 6100068c     bsr.w      $276a
0020e0: 0c000001     cmpi.b     #$1, d0
0020e4: 660a         bne.b      $20f0
0020e6: 2017         move.l     (a7), d0
0020e8: 6100fd20     bsr.w      $1e0a
0020ec: 7001         moveq      #$1, d0
0020ee: 6002         bra.b      $20f2
0020f0: 7000         moveq      #$0, d0
0020f2: 588f         addq.l     #$4, a7
0020f4: 4ced0100fffc movem.l    -$4(a5), a0
0020fa: 4e5d         unlk       a5
0020fc: 4e75         rts        
0020fe: 4e550000     link.w     a5, #$0
002102: 48e78880     movem.l    d0/d4/a0, -(a7)
002106: 7800         moveq      #$0, d4
002108: 600e         bra.b      $2118
00210a: 41ee8d90     lea.l      -$7270(a6), a0
00210e: 21bcffffffff4c00 move.l     #$ffffffff, (a0, d4.l * 4)
002116: 5284         addq.l     #$1, d4
002118: 7010         moveq      #$10, d0
00211a: b084         cmp.l      d4, d0
00211c: 6eec         bgt.b      $210a
00211e: 7001         moveq      #$1, d0
002120: 4ced0110fff8 movem.l    -$8(a5), d4/a0
002126: 4e5d         unlk       a5
002128: 4e75         rts        
00212a: 4e550000     link.w     a5, #$0
00212e: 48e7c080     movem.l    d0-d1/a0, -(a7)
002132: 2017         move.l     (a7), d0
002134: 41ee8d90     lea.l      -$7270(a6), a0
002138: 4ab00c00     tst.l      (a0, d0.l * 4)
00213c: 6f0e         ble.b      $214c
00213e: 2017         move.l     (a7), d0
002140: 41ee8d90     lea.l      -$7270(a6), a0
002144: 20300c00     move.l     (a0, d0.l * 4), d0
002148: 610046b2     bsr.w      $67fc
00214c: 2017         move.l     (a7), d0
00214e: 41ee8d90     lea.l      -$7270(a6), a0
002152: 21bcffffffff0c00 move.l     #$ffffffff, (a0, d0.l * 4)
00215a: 4fefff9c     lea.l      -$64(a7), a7
00215e: 2f2f0064     move.l     $64(a7), -(a7)
002162: 41fa015a     lea.l      $22be(pc), a0
002166: 2208         move.l     a0, d1
002168: 41ef0004     lea.l      $4(a7), a0
00216c: 2008         move.l     a0, d0
00216e: 6100461c     bsr.w      $678c
002172: 588f         addq.l     #$4, a7
002174: 7200         moveq      #$0, d1
002176: 41d7         lea.l      (a7), a0
002178: 2008         move.l     a0, d0
00217a: 6100f562     bsr.w      $16de
00217e: 4fef0064     lea.l      $64(a7), a7
002182: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002188: 4e5d         unlk       a5
00218a: 4e75         rts        
00218c: 4e550000     link.w     a5, #$0
002190: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
002194: 518f         subq.l     #$8, a7
002196: 7800         moveq      #$0, d4
002198: 6002         bra.b      $219c
00219a: 5284         addq.l     #$1, d4
00219c: 7010         moveq      #$10, d0
00219e: b084         cmp.l      d4, d0
0021a0: 6f0c         ble.b      $21ae
0021a2: 41ee8d90     lea.l      -$7270(a6), a0
0021a6: 70ff         moveq      #$ff, d0
0021a8: b0b04c00     cmp.l      (a0, d4.l * 4), d0
0021ac: 66ec         bne.b      $219a
0021ae: 7010         moveq      #$10, d0
0021b0: b084         cmp.l      d4, d0
0021b2: 660a         bne.b      $21be
0021b4: 7006         moveq      #$6, d0
0021b6: 2f400004     move.l     d0, $4(a7)
0021ba: 6000009e     bra.w      $225a
0021be: 4aaf0008     tst.l      $8(a7)
0021c2: 6614         bne.b      $21d8
0021c4: 41ee8d90     lea.l      -$7270(a6), a0
0021c8: 42b04c00     clr.l      (a0, d4.l * 4)
0021cc: 206f000c     movea.l    $c(a7), a0
0021d0: 2084         move.l     d4, (a0)
0021d2: 7000         moveq      #$0, d0
0021d4: 60000088     bra.w      $225e
0021d8: 7202         moveq      #$2, d1
0021da: 202f0008     move.l     $8(a7), d0
0021de: 610035b0     bsr.w      $5790
0021e2: 2e80         move.l     d0, (a7)
0021e4: 70ff         moveq      #$ff, d0
0021e6: b097         cmp.l      (a7), d0
0021e8: 6634         bne.b      $221e
0021ea: 4fefff9c     lea.l      -$64(a7), a7
0021ee: 2f2e800c     move.l     -$7ff4(a6), -(a7)
0021f2: 2f2f0070     move.l     $70(a7), -(a7)
0021f6: 41fa00d9     lea.l      $22d1(pc), a0
0021fa: 2208         move.l     a0, d1
0021fc: 41ef0008     lea.l      $8(a7), a0
002200: 2008         move.l     a0, d0
002202: 61004588     bsr.w      $678c
002206: 508f         addq.l     #$8, a7
002208: 7201         moveq      #$1, d1
00220a: 41d7         lea.l      (a7), a0
00220c: 2008         move.l     a0, d0
00220e: 6100f4ce     bsr.w      $16de
002212: 4fef0064     lea.l      $64(a7), a7
002216: 7001         moveq      #$1, d0
002218: 2f400004     move.l     d0, $4(a7)
00221c: 602e         bra.b      $224c
00221e: 4fefff9c     lea.l      -$64(a7), a7
002222: 2f2f006c     move.l     $6c(a7), -(a7)
002226: 2f04         move.l     d4, -(a7)
002228: 41fa00c7     lea.l      $22f1(pc), a0
00222c: 2208         move.l     a0, d1
00222e: 41ef0008     lea.l      $8(a7), a0
002232: 2008         move.l     a0, d0
002234: 61004556     bsr.w      $678c
002238: 508f         addq.l     #$8, a7
00223a: 7200         moveq      #$0, d1
00223c: 41d7         lea.l      (a7), a0
00223e: 2008         move.l     a0, d0
002240: 6100f49c     bsr.w      $16de
002244: 4fef0064     lea.l      $64(a7), a7
002248: 42af0004     clr.l      $4(a7)
00224c: 41ee8d90     lea.l      -$7270(a6), a0
002250: 21974c00     move.l     (a7), (a0, d4.l * 4)
002254: 206f000c     movea.l    $c(a7), a0
002258: 2084         move.l     d4, (a0)
00225a: 202f0004     move.l     $4(a7), d0
00225e: 508f         addq.l     #$8, a7
002260: 4ced0110fff8 movem.l    -$8(a5), d4/a0
002266: 4e5d         unlk       a5
002268: 4e75         rts        
00226a: 4e550000     link.w     a5, #$0
00226e: 48e7c080     movem.l    d0-d1/a0, -(a7)
002272: 598f         subq.l     #$4, a7
002274: 48780034     pea.l      $34.w
002278: 222f0008     move.l     $8(a7), d1
00227c: 202f000c     move.l     $c(a7), d0
002280: 41ee8d90     lea.l      -$7270(a6), a0
002284: 20300c00     move.l     (a0, d0.l * 4), d0
002288: 6100455e     bsr.w      $67e8
00228c: 588f         addq.l     #$4, a7
00228e: 2e80         move.l     d0, (a7)
002290: 7034         moveq      #$34, d0
002292: b097         cmp.l      (a7), d0
002294: 671a         beq.b      $22b0
002296: 48780122     pea.l      $122.w
00229a: 7212         moveq      #$12, d1
00229c: 203c00000098 move.l     #$98, d0
0022a2: 61003364     bsr.w      $5608
0022a6: 588f         addq.l     #$4, a7
0022a8: 61003384     bsr.w      $562e
0022ac: 7000         moveq      #$0, d0
0022ae: 6002         bra.b      $22b2
0022b0: 7001         moveq      #$1, d0
0022b2: 588f         addq.l     #$4, a7
0022b4: 4ced0100fffc movem.l    -$4(a5), a0
0022ba: 4e5d         unlk       a5
0022bc: 4e75         rts        
0022be: 436c         .dc.w      $436c
0022c0: 6f73         ble.b      $2335
0022c2: 696e         bvs.b      $2332
0022c4: 6720         beq.b      $22e6
0022c6: 7265         moveq      #$65, d1
0022c8: 715f         .dc.w      $715f
0022ca: 6964         bvs.b      $2330
0022cc: 3d25         move.w     -(a5), -(a6)
0022ce: 642e         bcc.b      $22fe
0022d0: 00556e61     ori.w      #$6e61, (a5)
0022d4: 626c         bhi.b      $2342
0022d6: 6520         bcs.b      $22f8
0022d8: 746f         moveq      #$6f, d2
0022da: 206f7065     movea.l    $7065(a7), a0
0022de: 6e20         bgt.b      $2300
0022e0: 2725         move.l     -(a5), -(a3)
0022e2: 7327         .dc.w      $7327
0022e4: 2c20         move.l     -(a0), d6
0022e6: 6572         bcs.b      $235a
0022e8: 726e         moveq      #$6e, d1
0022ea: 6f3d         ble.b      $2329
0022ec: 25642e0d     move.l     -(a4), $2e0d(a2)
0022f0: 004f         .dc.w      $004f
0022f2: 7065         moveq      #$65, d0
0022f4: 6e65         bgt.b      $235b
0022f6: 6420         bcc.b      $2318
0022f8: 666f         bne.b      $2369
0022fa: 7220         moveq      #$20, d1
0022fc: 7265         moveq      #$65, d1
0022fe: 715f         .dc.w      $715f
002300: 6964         bvs.b      $2366
002302: 3d25         move.w     -(a5), -(a6)
002304: 643a         bcc.b      $2340
002306: 2027         move.l     -(a7), d0
002308: 257327004e55 move.l     (a3, d2.w * 8), $4e55(a2)
00230e: 000048e7     ori.b      #$e7, d0
002312: 80a0         or.l       -(a0), d0
002314: 2440         movea.l    d0, a2
002316: 24ae8dfc     move.l     -$7204(a6), (a2)
00231a: 41ee8dfc     lea.l      -$7204(a6), a0
00231e: 25480004     move.l     a0, $4(a2)
002322: 206e8dfc     movea.l    -$7204(a6), a0
002326: 214a0004     move.l     a2, $4(a0)
00232a: 2d4a8dfc     move.l     a2, -$7204(a6)
00232e: 4ced0500fff8 movem.l    -$8(a5), a0/a2
002334: 4e5d         unlk       a5
002336: 4e75         rts        
002338: 4e550000     link.w     a5, #$0
00233c: 48e780a0     movem.l    d0/a0/a2, -(a7)
002340: 2440         movea.l    d0, a2
002342: 2052         movea.l    (a2), a0
002344: 216a00040004 move.l     $4(a2), $4(a0)
00234a: 206a0004     movea.l    $4(a2), a0
00234e: 2092         move.l     (a2), (a0)
002350: 4ced0500fff8 movem.l    -$8(a5), a0/a2
002356: 4e5d         unlk       a5
002358: 4e75         rts        
00235a: 4e550000     link.w     a5, #$0
00235e: 48e780a0     movem.l    d0/a0/a2, -(a7)
002362: 2440         movea.l    d0, a2
002364: 2052         movea.l    (a2), a0
002366: 214a0004     move.l     a2, $4(a0)
00236a: 206a0004     movea.l    $4(a2), a0
00236e: 208a         move.l     a2, (a0)
002370: 4ced0500fff8 movem.l    -$8(a5), a0/a2
002376: 4e5d         unlk       a5
002378: 4e75         rts        
00237a: 4e550000     link.w     a5, #$0
00237e: 48e78080     movem.l    d0/a0, -(a7)
002382: 206e8df8     movea.l    -$7208(a6), a0
002386: 302f0002     move.w     $2(a7), d0
00238a: b0680004     cmp.w      $4(a0), d0
00238e: 6604         bne.b      $2394
002390: 7001         moveq      #$1, d0
002392: 6002         bra.b      $2396
002394: 7000         moveq      #$0, d0
002396: 4ced0100fffc movem.l    -$4(a5), a0
00239c: 4e5d         unlk       a5
00239e: 4e75         rts        
0023a0: 4e550000     link.w     a5, #$0
0023a4: 48e78080     movem.l    d0/a0, -(a7)
0023a8: 206e8df8     movea.l    -$7208(a6), a0
0023ac: 30280004     move.w     $4(a0), d0
0023b0: 4ced0100fffc movem.l    -$4(a5), a0
0023b6: 4e5d         unlk       a5
0023b8: 4e75         rts        
0023ba: 4e550000     link.w     a5, #$0
0023be: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0023c2: 558f         subq.l     #$2, a7
0023c4: 95ca         suba.l     a2, a2
0023c6: 1f7c00010001 move.b     #$1, $1(a7)
0023cc: 700a         moveq      #$a, d0
0023ce: d0ae8df8     add.l      -$7208(a6), d0
0023d2: 2440         movea.l    d0, a2
0023d4: 7800         moveq      #$0, d4
0023d6: 6052         bra.b      $242a
0023d8: 4aaa0012     tst.l      $12(a2)
0023dc: 6606         bne.b      $23e4
0023de: 4aaa0016     tst.l      $16(a2)
0023e2: 6740         beq.b      $2424
0023e4: 4fefff9c     lea.l      -$64(a7), a7
0023e8: 203cffffff00 move.l     #$ffffff00, d0
0023ee: c0aa0008     and.l      $8(a2), d0
0023f2: e088         lsr.l      #$8, d0
0023f4: 2f00         move.l     d0, -(a7)
0023f6: 41fa082e     lea.l      $2c26(pc), a0
0023fa: 2208         move.l     a0, d1
0023fc: 41ef0004     lea.l      $4(a7), a0
002400: 2008         move.l     a0, d0
002402: 61004388     bsr.w      $678c
002406: 588f         addq.l     #$4, a7
002408: 7201         moveq      #$1, d1
00240a: 41d7         lea.l      (a7), a0
00240c: 2008         move.l     a0, d0
00240e: 6100f2ce     bsr.w      $16de
002412: 4fef0064     lea.l      $64(a7), a7
002416: 41fa083c     lea.l      $2c54(pc), a0
00241a: 2008         move.l     a0, d0
00241c: 6100defe     bsr.w      $31c
002420: 422f0001     clr.b      $1(a7)
002424: d5fc0000001a adda.l     #$1a, a2
00242a: 206e8df8     movea.l    -$7208(a6), a0
00242e: 2004         move.l     d4, d0
002430: 5284         addq.l     #$1, d4
002432: b0a80006     cmp.l      $6(a0), d0
002436: 6da0         blt.b      $23d8
002438: 0c6fffff0004 cmpi.w     #$ffff, $4(a7)
00243e: 6614         bne.b      $2454
002440: 206e8df8     movea.l    -$7208(a6), a0
002444: 42a80006     clr.l      $6(a0)
002448: 206e8df8     movea.l    -$7208(a6), a0
00244c: 316f00040004 move.w     $4(a7), $4(a0)
002452: 6022         bra.b      $2476
002454: 202e8dd4     move.l     -$722c(a6), d0
002458: 61002b26     bsr.w      $4f80
00245c: 206e8df8     movea.l    -$7208(a6), a0
002460: 42a80006     clr.l      $6(a0)
002464: 206e8df8     movea.l    -$7208(a6), a0
002468: 316f00040004 move.w     $4(a7), $4(a0)
00246e: 202e8dd4     move.l     -$722c(a6), d0
002472: 61002b3c     bsr.w      $4fb0
002476: 41ee8e16     lea.l      -$71ea(a6), a0
00247a: 2d488dfc     move.l     a0, -$7204(a6)
00247e: 42ae8e00     clr.l      -$7200(a6)
002482: 42ae8e16     clr.l      -$71ea(a6)
002486: 41ee8dfc     lea.l      -$7204(a6), a0
00248a: 2d488e1a     move.l     a0, -$71e6(a6)
00248e: 102f0001     move.b     $1(a7), d0
002492: 548f         addq.l     #$2, a7
002494: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
00249a: 4e5d         unlk       a5
00249c: 4e75         rts        
00249e: 4e550000     link.w     a5, #$0
0024a2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0024a6: 598f         subq.l     #$4, a7
0024a8: 486e8df8     pea.l      -$7208(a6)
0024ac: 41ee8dd0     lea.l      -$7230(a6), a0
0024b0: 2208         move.l     a0, d1
0024b2: 203c0000138a move.l     #$138a, d0
0024b8: 61002b1c     bsr.w      $4fd6
0024bc: 588f         addq.l     #$4, a7
0024be: 4a80         tst.l      d0
0024c0: 660e         bne.b      $24d0
0024c2: 4fefff9c     lea.l      -$64(a7), a7
0024c6: 2f2e800c     move.l     -$7ff4(a6), -(a7)
0024ca: 41fa078e     lea.l      $2c5a(pc), a0
0024ce: 6020         bra.b      $24f0
0024d0: 41ee8dd4     lea.l      -$722c(a6), a0
0024d4: 2208         move.l     a0, d1
0024d6: 41ee8dd8     lea.l      -$7228(a6), a0
0024da: 2008         move.l     a0, d0
0024dc: 610029c2     bsr.w      $4ea0
0024e0: 4a80         tst.l      d0
0024e2: 662c         bne.b      $2510
0024e4: 4fefff9c     lea.l      -$64(a7), a7
0024e8: 2f2e800c     move.l     -$7ff4(a6), -(a7)
0024ec: 41fa078b     lea.l      $2c79(pc), a0
0024f0: 2208         move.l     a0, d1
0024f2: 41ef0004     lea.l      $4(a7), a0
0024f6: 2008         move.l     a0, d0
0024f8: 61004292     bsr.w      $678c
0024fc: 588f         addq.l     #$4, a7
0024fe: 7201         moveq      #$1, d1
002500: 41d7         lea.l      (a7), a0
002502: 2008         move.l     a0, d0
002504: 6100f1d8     bsr.w      $16de
002508: 4fef0064     lea.l      $64(a7), a7
00250c: 7000         moveq      #$0, d0
00250e: 6010         bra.b      $2520
002510: 206e8df8     movea.l    -$7208(a6), a0
002514: 42a80006     clr.l      $6(a0)
002518: 70ff         moveq      #$ff, d0
00251a: 6100fe9e     bsr.w      $23ba
00251e: 7001         moveq      #$1, d0
002520: 588f         addq.l     #$4, a7
002522: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002528: 4e5d         unlk       a5
00252a: 4e75         rts        
00252c: 4e550000     link.w     a5, #$0
002530: 48e7c080     movem.l    d0-d1/a0, -(a7)
002534: 222e8df8     move.l     -$7208(a6), d1
002538: 202e8dd0     move.l     -$7230(a6), d0
00253c: 61002afe     bsr.w      $503c
002540: 4a80         tst.l      d0
002542: 660e         bne.b      $2552
002544: 4fefff9c     lea.l      -$64(a7), a7
002548: 2f2e800c     move.l     -$7ff4(a6), -(a7)
00254c: 41fa0748     lea.l      $2c96(pc), a0
002550: 601e         bra.b      $2570
002552: 41ee8dd8     lea.l      -$7228(a6), a0
002556: 2208         move.l     a0, d1
002558: 202e8dd4     move.l     -$722c(a6), d0
00255c: 610029fa     bsr.w      $4f58
002560: 4a80         tst.l      d0
002562: 662c         bne.b      $2590
002564: 4fefff9c     lea.l      -$64(a7), a7
002568: 2f2e800c     move.l     -$7ff4(a6), -(a7)
00256c: 41fa0746     lea.l      $2cb4(pc), a0
002570: 2208         move.l     a0, d1
002572: 41ef0004     lea.l      $4(a7), a0
002576: 2008         move.l     a0, d0
002578: 61004212     bsr.w      $678c
00257c: 588f         addq.l     #$4, a7
00257e: 7201         moveq      #$1, d1
002580: 41d7         lea.l      (a7), a0
002582: 2008         move.l     a0, d0
002584: 6100f158     bsr.w      $16de
002588: 4fef0064     lea.l      $64(a7), a7
00258c: 7000         moveq      #$0, d0
00258e: 6002         bra.b      $2592
002590: 7001         moveq      #$1, d0
002592: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002598: 4e5d         unlk       a5
00259a: 4e75         rts        
00259c: 4e550000     link.w     a5, #$0
0025a0: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0025a4: 2440         movea.l    d0, a2
0025a6: 598f         subq.l     #$4, a7
0025a8: 4297         clr.l      (a7)
0025aa: 7800         moveq      #$0, d4
0025ac: 700a         moveq      #$a, d0
0025ae: d0ae8df8     add.l      -$7208(a6), d0
0025b2: 2e80         move.l     d0, (a7)
0025b4: 6024         bra.b      $25da
0025b6: 2057         movea.l    (a7), a0
0025b8: 3028000c     move.w     $c(a0), d0
0025bc: b06a0004     cmp.w      $4(a2), d0
0025c0: 6612         bne.b      $25d4
0025c2: 2057         movea.l    (a7), a0
0025c4: 20280008     move.l     $8(a0), d0
0025c8: b092         cmp.l      (a2), d0
0025ca: 6608         bne.b      $25d4
0025cc: 7201         moveq      #$1, d1
0025ce: 41fa0700     lea.l      $2cd0(pc), a0
0025d2: 6028         bra.b      $25fc
0025d4: 06970000001a addi.l     #$1a, (a7)
0025da: 206e8df8     movea.l    -$7208(a6), a0
0025de: 2004         move.l     d4, d0
0025e0: 5284         addq.l     #$1, d4
0025e2: b0a80006     cmp.l      $6(a0), d0
0025e6: 6dce         blt.b      $25b6
0025e8: 206e8df8     movea.l    -$7208(a6), a0
0025ec: 0ca8000000c00006 cmpi.l     #$c0, $6(a0)
0025f4: 6d12         blt.b      $2608
0025f6: 7201         moveq      #$1, d1
0025f8: 41fa06f6     lea.l      $2cf0(pc), a0
0025fc: 2008         move.l     a0, d0
0025fe: 6100f0de     bsr.w      $16de
002602: 7000         moveq      #$0, d0
002604: 60000094     bra.w      $269a
002608: 202e8dd4     move.l     -$722c(a6), d0
00260c: 61002972     bsr.w      $4f80
002610: 2057         movea.l    (a7), a0
002612: 21520008     move.l     (a2), $8(a0)
002616: 316a0004000c move.w     $4(a2), $c(a0)
00261c: 2057         movea.l    (a7), a0
00261e: 7000         moveq      #$0, d0
002620: 21400016     move.l     d0, $16(a0)
002624: 2057         movea.l    (a7), a0
002626: 21400012     move.l     d0, $12(a0)
00262a: 2f2f0024     move.l     $24(a7), -(a7)
00262e: 222f0024     move.l     $24(a7), d1
002632: 7012         moveq      #$12, d0
002634: d0af0004     add.l      $4(a7), d0
002638: 610008f0     bsr.w      $2f2a
00263c: 588f         addq.l     #$4, a7
00263e: 4a00         tst.b      d0
002640: 6638         bne.b      $267a
002642: 4fefff9c     lea.l      -$64(a7), a7
002646: 2f2e8e30     move.l     -$71d0(a6), -(a7)
00264a: 2f2f008c     move.l     $8c(a7), -(a7)
00264e: 2f04         move.l     d4, -(a7)
002650: 206f0070     movea.l    $70(a7), a0
002654: 48680012     pea.l      $12(a0)
002658: 41fa06ad     lea.l      $2d07(pc), a0
00265c: 2208         move.l     a0, d1
00265e: 41ef0010     lea.l      $10(a7), a0
002662: 2008         move.l     a0, d0
002664: 61004126     bsr.w      $678c
002668: 4fef0010     lea.l      $10(a7), a7
00266c: 7201         moveq      #$1, d1
00266e: 41d7         lea.l      (a7), a0
002670: 2008         move.l     a0, d0
002672: 6100f06a     bsr.w      $16de
002676: 4fef0064     lea.l      $64(a7), a7
00267a: 2057         movea.l    (a7), a0
00267c: 216f0008000e move.l     $8(a7), $e(a0)
002682: 2017         move.l     (a7), d0
002684: 6100fc86     bsr.w      $230c
002688: 206e8df8     movea.l    -$7208(a6), a0
00268c: 52a80006     addq.l     #$1, $6(a0)
002690: 202e8dd4     move.l     -$722c(a6), d0
002694: 6100291a     bsr.w      $4fb0
002698: 7001         moveq      #$1, d0
00269a: 588f         addq.l     #$4, a7
00269c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0026a2: 4e5d         unlk       a5
0026a4: 4e75         rts        
0026a6: 4e550000     link.w     a5, #$0
0026aa: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0026ae: 2440         movea.l    d0, a2
0026b0: 598f         subq.l     #$4, a7
0026b2: 4297         clr.l      (a7)
0026b4: 7800         moveq      #$0, d4
0026b6: 202e8dd4     move.l     -$722c(a6), d0
0026ba: 610028c4     bsr.w      $4f80
0026be: 700a         moveq      #$a, d0
0026c0: d0ae8df8     add.l      -$7208(a6), d0
0026c4: 2e80         move.l     d0, (a7)
0026c6: 6000007c     bra.w      $2744
0026ca: 2057         movea.l    (a7), a0
0026cc: 3028000c     move.w     $c(a0), d0
0026d0: b06a0004     cmp.w      $4(a2), d0
0026d4: 6668         bne.b      $273e
0026d6: 2057         movea.l    (a7), a0
0026d8: 20280008     move.l     $8(a0), d0
0026dc: b092         cmp.l      (a2), d0
0026de: 665e         bne.b      $273e
0026e0: 2057         movea.l    (a7), a0
0026e2: 21520008     move.l     (a2), $8(a0)
0026e6: 316a0004000c move.w     $4(a2), $c(a0)
0026ec: 222f0008     move.l     $8(a7), d1
0026f0: 7012         moveq      #$12, d0
0026f2: d097         add.l      (a7), d0
0026f4: 610007a0     bsr.w      $2e96
0026f8: 4a00         tst.b      d0
0026fa: 6636         bne.b      $2732
0026fc: 4fefff9c     lea.l      -$64(a7), a7
002700: 2f2e8e30     move.l     -$71d0(a6), -(a7)
002704: 2f2f0070     move.l     $70(a7), -(a7)
002708: 206f006c     movea.l    $6c(a7), a0
00270c: 48680012     pea.l      $12(a0)
002710: 41fa060e     lea.l      $2d20(pc), a0
002714: 2208         move.l     a0, d1
002716: 41ef000c     lea.l      $c(a7), a0
00271a: 2008         move.l     a0, d0
00271c: 6100406e     bsr.w      $678c
002720: 4fef000c     lea.l      $c(a7), a7
002724: 7201         moveq      #$1, d1
002726: 41d7         lea.l      (a7), a0
002728: 2008         move.l     a0, d0
00272a: 6100efb2     bsr.w      $16de
00272e: 4fef0064     lea.l      $64(a7), a7
002732: 202e8dd4     move.l     -$722c(a6), d0
002736: 61002878     bsr.w      $4fb0
00273a: 7001         moveq      #$1, d0
00273c: 6020         bra.b      $275e
00273e: 06970000001a addi.l     #$1a, (a7)
002744: 206e8df8     movea.l    -$7208(a6), a0
002748: 2004         move.l     d4, d0
00274a: 5284         addq.l     #$1, d4
00274c: b0a80006     cmp.l      $6(a0), d0
002750: 6d00ff78     blt.w      $26ca
002754: 202e8dd4     move.l     -$722c(a6), d0
002758: 61002856     bsr.w      $4fb0
00275c: 7000         moveq      #$0, d0
00275e: 588f         addq.l     #$4, a7
002760: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
002766: 4e5d         unlk       a5
002768: 4e75         rts        
00276a: 4e550000     link.w     a5, #$0
00276e: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
002772: 4feffff2     lea.l      -$e(a7), a7
002776: 95ca         suba.l     a2, a2
002778: 422f000d     clr.b      $d(a7)
00277c: 4297         clr.l      (a7)
00277e: 202e8dd4     move.l     -$722c(a6), d0
002782: 610027fc     bsr.w      $4f80
002786: 246e8e1a     movea.l    -$71e6(a6), a2
00278a: 6010         bra.b      $279c
00278c: 4aaa0012     tst.l      $12(a2)
002790: 6606         bne.b      $2798
002792: 4aaa0016     tst.l      $16(a2)
002796: 670c         beq.b      $27a4
002798: 246a0004     movea.l    $4(a2), a2
00279c: 41ee8dfc     lea.l      -$7204(a6), a0
0027a0: b1ca         cmpa.l     a2, a0
0027a2: 66e8         bne.b      $278c
0027a4: 41ee8dfc     lea.l      -$7204(a6), a0
0027a8: b1ca         cmpa.l     a2, a0
0027aa: 6626         bne.b      $27d2
0027ac: 41fa0587     lea.l      $2d35(pc), a0
0027b0: 2008         move.l     a0, d0
0027b2: 6100db68     bsr.w      $31c
0027b6: 7201         moveq      #$1, d1
0027b8: 41fa057f     lea.l      $2d39(pc), a0
0027bc: 2008         move.l     a0, d0
0027be: 6100ef1e     bsr.w      $16de
0027c2: 206f000e     movea.l    $e(a7), a0
0027c6: 20bcffffffff move.l     #$ffffffff, (a0)
0027cc: 422f000d     clr.b      $d(a7)
0027d0: 605a         bra.b      $282c
0027d2: 206f000e     movea.l    $e(a7), a0
0027d6: 20aa000e     move.l     $e(a2), (a0)
0027da: 200a         move.l     a2, d0
0027dc: 6100fb5a     bsr.w      $2338
0027e0: 206e8df8     movea.l    -$7208(a6), a0
0027e4: 53a80006     subq.l     #$1, $6(a0)
0027e8: 700a         moveq      #$a, d0
0027ea: d0ae8df8     add.l      -$7208(a6), d0
0027ee: 206e8df8     movea.l    -$7208(a6), a0
0027f2: 721a         moveq      #$1a, d1
0027f4: 4c2810010006 mulu.l     $6(a0), d1
0027fa: d081         add.l      d1, d0
0027fc: b08a         cmp.l      a2, d0
0027fe: 6726         beq.b      $2826
002800: 206e8df8     movea.l    -$7208(a6), a0
002804: 701a         moveq      #$1a, d0
002806: 4c2800000006 mulu.l     $6(a0), d0
00280c: 206e8df8     movea.l    -$7208(a6), a0
002810: 41f0080a     lea.l      $a(a0, d0.l), a0
002814: 43d2         lea.l      (a2), a1
002816: 7005         moveq      #$5, d0
002818: 22d8         move.l     (a0)+, (a1)+
00281a: 51c8fffc     dbra       d0, $2818
00281e: 32d8         move.w     (a0)+, (a1)+
002820: 200a         move.l     a2, d0
002822: 6100fb36     bsr.w      $235a
002826: 1f7c0001000d move.b     #$1, $d(a7)
00282c: 202e8dd4     move.l     -$722c(a6), d0
002830: 6100277e     bsr.w      $4fb0
002834: 102f000d     move.b     $d(a7), d0
002838: 4fef000e     lea.l      $e(a7), a7
00283c: 4ced0702fff0 movem.l    -$10(a5), d1/a0-a2
002842: 4e5d         unlk       a5
002844: 4e75         rts        
002846: 4e550000     link.w     a5, #$0
00284a: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
00284e: 2440         movea.l    d0, a2
002850: 4fefffee     lea.l      -$12(a7), a7
002854: 97cb         suba.l     a3, a3
002856: 42af0002     clr.l      $2(a7)
00285a: 700a         moveq      #$a, d0
00285c: d0ae8df8     add.l      -$7208(a6), d0
002860: 2640         movea.l    d0, a3
002862: 7800         moveq      #$0, d4
002864: 600000f0     bra.w      $2956
002868: 302b000c     move.w     $c(a3), d0
00286c: b06a0004     cmp.w      $4(a2), d0
002870: 660000de     bne.w      $2950
002874: 202b0008     move.l     $8(a3), d0
002878: b092         cmp.l      (a2), d0
00287a: 660000d4     bne.w      $2950
00287e: 202e8dd4     move.l     -$722c(a6), d0
002882: 610026fc     bsr.w      $4f80
002886: 486f000e     pea.l      $e(a7)
00288a: 222f003a     move.l     $3a(a7), d1
00288e: 7012         moveq      #$12, d0
002890: d08b         add.l      a3, d0
002892: 61000642     bsr.w      $2ed6
002896: 588f         addq.l     #$4, a7
002898: 4a00         tst.b      d0
00289a: 6636         bne.b      $28d2
00289c: 4fefff9c     lea.l      -$64(a7), a7
0028a0: 2f2e8e30     move.l     -$71d0(a6), -(a7)
0028a4: 486f0076     pea.l      $76(a7)
0028a8: 2f2f00a2     move.l     $a2(a7), -(a7)
0028ac: 486b0012     pea.l      $12(a3)
0028b0: 41fa04a6     lea.l      $2d58(pc), a0
0028b4: 2208         move.l     a0, d1
0028b6: 41ef0010     lea.l      $10(a7), a0
0028ba: 2008         move.l     a0, d0
0028bc: 61003ece     bsr.w      $678c
0028c0: 4fef0010     lea.l      $10(a7), a7
0028c4: 7201         moveq      #$1, d1
0028c6: 41d7         lea.l      (a7), a0
0028c8: 2008         move.l     a0, d0
0028ca: 6100ee12     bsr.w      $16de
0028ce: 4fef0064     lea.l      $64(a7), a7
0028d2: 202f000e     move.l     $e(a7), d0
0028d6: d0af0016     add.l      $16(a7), d0
0028da: 2f00         move.l     d0, -(a7)
0028dc: 222f003a     move.l     $3a(a7), d1
0028e0: 7012         moveq      #$12, d0
0028e2: d08b         add.l      a3, d0
0028e4: 61000644     bsr.w      $2f2a
0028e8: 588f         addq.l     #$4, a7
0028ea: 4a00         tst.b      d0
0028ec: 663c         bne.b      $292a
0028ee: 4fefff9c     lea.l      -$64(a7), a7
0028f2: 2f2e8e30     move.l     -$71d0(a6), -(a7)
0028f6: 202f0076     move.l     $76(a7), d0
0028fa: d0af007e     add.l      $7e(a7), d0
0028fe: 2f00         move.l     d0, -(a7)
002900: 2f2f00a2     move.l     $a2(a7), -(a7)
002904: 486b0012     pea.l      $12(a3)
002908: 41fa0467     lea.l      $2d71(pc), a0
00290c: 2208         move.l     a0, d1
00290e: 41ef0010     lea.l      $10(a7), a0
002912: 2008         move.l     a0, d0
002914: 61003e76     bsr.w      $678c
002918: 4fef0010     lea.l      $10(a7), a7
00291c: 7201         moveq      #$1, d1
00291e: 41d7         lea.l      (a7), a0
002920: 2008         move.l     a0, d0
002922: 6100edba     bsr.w      $16de
002926: 4fef0064     lea.l      $64(a7), a7
00292a: b7ee8dfc     cmpa.l     -$7204(a6), a3
00292e: 670c         beq.b      $293c
002930: 200b         move.l     a3, d0
002932: 6100fa04     bsr.w      $2338
002936: 200b         move.l     a3, d0
002938: 6100f9d2     bsr.w      $230c
00293c: 202e8dd4     move.l     -$722c(a6), d0
002940: 6100266e     bsr.w      $4fb0
002944: 206f0032     movea.l    $32(a7), a0
002948: 20ab000e     move.l     $e(a3), (a0)
00294c: 7001         moveq      #$1, d0
00294e: 6018         bra.b      $2968
002950: d7fc0000001a adda.l     #$1a, a3
002956: 206e8df8     movea.l    -$7208(a6), a0
00295a: 2004         move.l     d4, d0
00295c: 5284         addq.l     #$1, d4
00295e: b0a80006     cmp.l      $6(a0), d0
002962: 6d00ff04     blt.w      $2868
002966: 7000         moveq      #$0, d0
002968: 4fef0012     lea.l      $12(a7), a7
00296c: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
002972: 4e5d         unlk       a5
002974: 4e75         rts        
002976: 4e550000     link.w     a5, #$0
00297a: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
00297e: 2440         movea.l    d0, a2
002980: 4fefffe0     lea.l      -$20(a7), a7
002984: 97cb         suba.l     a3, a3
002986: 42af0018     clr.l      $18(a7)
00298a: 42af0014     clr.l      $14(a7)
00298e: 206e8df8     movea.l    -$7208(a6), a0
002992: 2f280006     move.l     $6(a0), -(a7)
002996: 41fa03f2     lea.l      $2d8a(pc), a0
00299a: 2208         move.l     a0, d1
00299c: 200a         move.l     a2, d0
00299e: 61003de8     bsr.w      $6788
0029a2: 588f         addq.l     #$4, a7
0029a4: 206e8df8     movea.l    -$7208(a6), a0
0029a8: 30680004     movea.w    $4(a0), a0
0029ac: 2f08         move.l     a0, -(a7)
0029ae: 41fa03f1     lea.l      $2da1(pc), a0
0029b2: 2208         move.l     a0, d1
0029b4: 200a         move.l     a2, d0
0029b6: 61003dd0     bsr.w      $6788
0029ba: 588f         addq.l     #$4, a7
0029bc: 41fa03fa     lea.l      $2db8(pc), a0
0029c0: 2208         move.l     a0, d1
0029c2: 200a         move.l     a2, d0
0029c4: 61003dc2     bsr.w      $6788
0029c8: 700a         moveq      #$a, d0
0029ca: d0ae8df8     add.l      -$7208(a6), d0
0029ce: 2640         movea.l    d0, a3
0029d0: 7800         moveq      #$0, d4
0029d2: 6000011e     bra.w      $2af2
0029d6: 203c000000ff move.l     #$ff, d0
0029dc: c0ab0008     and.l      $8(a3), d0
0029e0: d1af0018     add.l      d0, $18(a7)
0029e4: 41ee8e16     lea.l      -$71ea(a6), a0
0029e8: b1d3         cmpa.l     (a3), a0
0029ea: 6612         bne.b      $29fe
0029ec: 41fa03f2     lea.l      $2de0(pc), a0
0029f0: 2208         move.l     a0, d1
0029f2: 41ef000a     lea.l      $a(a7), a0
0029f6: 2008         move.l     a0, d0
0029f8: 61003d92     bsr.w      $678c
0029fc: 6026         bra.b      $2a24
0029fe: 700a         moveq      #$a, d0
002a00: d0ae8df8     add.l      -$7208(a6), d0
002a04: 2213         move.l     (a3), d1
002a06: 9280         sub.l      d0, d1
002a08: 4c7c18010000001a divs.l     #$1a, d1
002a10: 2f01         move.l     d1, -(a7)
002a12: 41fa03d1     lea.l      $2de5(pc), a0
002a16: 2208         move.l     a0, d1
002a18: 41ef000e     lea.l      $e(a7), a0
002a1c: 2008         move.l     a0, d0
002a1e: 61003d6c     bsr.w      $678c
002a22: 588f         addq.l     #$4, a7
002a24: 41ee8dfc     lea.l      -$7204(a6), a0
002a28: b1eb0004     cmpa.l     $4(a3), a0
002a2c: 6610         bne.b      $2a3e
002a2e: 41fa03b9     lea.l      $2de9(pc), a0
002a32: 2208         move.l     a0, d1
002a34: 41d7         lea.l      (a7), a0
002a36: 2008         move.l     a0, d0
002a38: 61003d52     bsr.w      $678c
002a3c: 6028         bra.b      $2a66
002a3e: 700a         moveq      #$a, d0
002a40: d0ae8df8     add.l      -$7208(a6), d0
002a44: 222b0004     move.l     $4(a3), d1
002a48: 9280         sub.l      d0, d1
002a4a: 4c7c18010000001a divs.l     #$1a, d1
002a52: 2f01         move.l     d1, -(a7)
002a54: 41fa0398     lea.l      $2dee(pc), a0
002a58: 2208         move.l     a0, d1
002a5a: 41ef0004     lea.l      $4(a7), a0
002a5e: 2008         move.l     a0, d0
002a60: 61003d2a     bsr.w      $678c
002a64: 588f         addq.l     #$4, a7
002a66: 4857         pea.l      (a7)
002a68: 486f000e     pea.l      $e(a7)
002a6c: 303c00ff     move.w     #$ff, d0
002a70: c06b000a     and.w      $a(a3), d0
002a74: 7200         moveq      #$0, d1
002a76: 3200         move.w     d0, d1
002a78: 2f01         move.l     d1, -(a7)
002a7a: 203cffffff00 move.l     #$ffffff00, d0
002a80: c0ab0008     and.l      $8(a3), d0
002a84: e088         lsr.l      #$8, d0
002a86: 2f00         move.l     d0, -(a7)
002a88: 306b000c     movea.w    $c(a3), a0
002a8c: 2f08         move.l     a0, -(a7)
002a8e: 2f04         move.l     d4, -(a7)
002a90: 41fa0360     lea.l      $2df2(pc), a0
002a94: 2208         move.l     a0, d1
002a96: 200a         move.l     a2, d0
002a98: 61003cee     bsr.w      $6788
002a9c: 4fef0018     lea.l      $18(a7), a7
002aa0: 7a00         moveq      #$0, d5
002aa2: 6038         bra.b      $2adc
002aa4: 486f001c     pea.l      $1c(a7)
002aa8: 2205         move.l     d5, d1
002aaa: 7012         moveq      #$12, d0
002aac: d08b         add.l      a3, d0
002aae: 61000426     bsr.w      $2ed6
002ab2: 588f         addq.l     #$4, a7
002ab4: 4aaf001c     tst.l      $1c(a7)
002ab8: 660e         bne.b      $2ac8
002aba: 41fa0351     lea.l      $2e0d(pc), a0
002abe: 2208         move.l     a0, d1
002ac0: 200a         move.l     a2, d0
002ac2: 61003cc4     bsr.w      $6788
002ac6: 6012         bra.b      $2ada
002ac8: 2f2f001c     move.l     $1c(a7), -(a7)
002acc: 41fa0342     lea.l      $2e10(pc), a0
002ad0: 2208         move.l     a0, d1
002ad2: 200a         move.l     a2, d0
002ad4: 61003cb2     bsr.w      $6788
002ad8: 588f         addq.l     #$4, a7
002ada: 5285         addq.l     #$1, d5
002adc: 7010         moveq      #$10, d0
002ade: b085         cmp.l      d5, d0
002ae0: 6ec2         bgt.b      $2aa4
002ae2: 220a         move.l     a2, d1
002ae4: 700d         moveq      #$d, d0
002ae6: 61003cb4     bsr.w      $679c
002aea: d7fc0000001a adda.l     #$1a, a3
002af0: 5284         addq.l     #$1, d4
002af2: 206e8df8     movea.l    -$7208(a6), a0
002af6: b8a80006     cmp.l      $6(a0), d4
002afa: 6d00feda     blt.w      $29d6
002afe: 41fa0314     lea.l      $2e14(pc), a0
002b02: 2208         move.l     a0, d1
002b04: 200a         move.l     a2, d0
002b06: 61003c80     bsr.w      $6788
002b0a: 266e8dfc     movea.l    -$7204(a6), a3
002b0e: 601e         bra.b      $2b2e
002b10: 203cffffff00 move.l     #$ffffff00, d0
002b16: c0ab0008     and.l      $8(a3), d0
002b1a: e088         lsr.l      #$8, d0
002b1c: 2f00         move.l     d0, -(a7)
002b1e: 41fa02fb     lea.l      $2e1b(pc), a0
002b22: 2208         move.l     a0, d1
002b24: 200a         move.l     a2, d0
002b26: 61003c60     bsr.w      $6788
002b2a: 588f         addq.l     #$4, a7
002b2c: 2653         movea.l    (a3), a3
002b2e: 41ee8e16     lea.l      -$71ea(a6), a0
002b32: b1cb         cmpa.l     a3, a0
002b34: 66da         bne.b      $2b10
002b36: 41fa02e7     lea.l      $2e1f(pc), a0
002b3a: 2208         move.l     a0, d1
002b3c: 200a         move.l     a2, d0
002b3e: 61003c48     bsr.w      $6788
002b42: 266e8e1a     movea.l    -$71e6(a6), a3
002b46: 6020         bra.b      $2b68
002b48: 203cffffff00 move.l     #$ffffff00, d0
002b4e: c0ab0008     and.l      $8(a3), d0
002b52: e088         lsr.l      #$8, d0
002b54: 2f00         move.l     d0, -(a7)
002b56: 41fa02cf     lea.l      $2e27(pc), a0
002b5a: 2208         move.l     a0, d1
002b5c: 200a         move.l     a2, d0
002b5e: 61003c28     bsr.w      $6788
002b62: 588f         addq.l     #$4, a7
002b64: 266b0004     movea.l    $4(a3), a3
002b68: 41ee8dfc     lea.l      -$7204(a6), a0
002b6c: b1cb         cmpa.l     a3, a0
002b6e: 66d8         bne.b      $2b48
002b70: 41fa02b9     lea.l      $2e2b(pc), a0
002b74: 2208         move.l     a0, d1
002b76: 200a         move.l     a2, d0
002b78: 61003c0e     bsr.w      $6788
002b7c: 4fef0020     lea.l      $20(a7), a7
002b80: 4ced0d32ffe8 movem.l    -$18(a5), d1/d4-d5/a0/a2-a3
002b86: 4e5d         unlk       a5
002b88: 4e75         rts        
002b8a: 4e550000     link.w     a5, #$0
002b8e: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
002b92: 598f         subq.l     #$4, a7
002b94: 7800         moveq      #$0, d4
002b96: 4297         clr.l      (a7)
002b98: 700a         moveq      #$a, d0
002b9a: d0ae8df8     add.l      -$7208(a6), d0
002b9e: 2e80         move.l     d0, (a7)
002ba0: 7a00         moveq      #$0, d5
002ba2: 6014         bra.b      $2bb8
002ba4: 2057         movea.l    (a7), a0
002ba6: 4aa80012     tst.l      $12(a0)
002baa: 6606         bne.b      $2bb2
002bac: 2057         movea.l    (a7), a0
002bae: 4aa80016     tst.l      $16(a0)
002bb2: 06970000001a addi.l     #$1a, (a7)
002bb8: 206e8df8     movea.l    -$7208(a6), a0
002bbc: 2005         move.l     d5, d0
002bbe: 5285         addq.l     #$1, d5
002bc0: b0a80006     cmp.l      $6(a0), d0
002bc4: 6dde         blt.b      $2ba4
002bc6: 7063         moveq      #$63, d0
002bc8: b084         cmp.l      d4, d0
002bca: 6c26         bge.b      $2bf2
002bcc: 4fefff9c     lea.l      -$64(a7), a7
002bd0: 2f04         move.l     d4, -(a7)
002bd2: 41fa025b     lea.l      $2e2f(pc), a0
002bd6: 2208         move.l     a0, d1
002bd8: 41ef0004     lea.l      $4(a7), a0
002bdc: 2008         move.l     a0, d0
002bde: 61003bac     bsr.w      $678c
002be2: 588f         addq.l     #$4, a7
002be4: 7200         moveq      #$0, d1
002be6: 41d7         lea.l      (a7), a0
002be8: 2008         move.l     a0, d0
002bea: 6100eaf2     bsr.w      $16de
002bee: 4fef0064     lea.l      $64(a7), a7
002bf2: 588f         addq.l     #$4, a7
002bf4: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
002bfa: 4e5d         unlk       a5
002bfc: 4e75         rts        
002bfe: 4e550000     link.w     a5, #$0
002c02: 48e78000     movem.l    d0, -(a7)
002c06: 202e8dd0     move.l     -$7230(a6), d0
002c0a: 4e5d         unlk       a5
002c0c: 4e75         rts        
002c0e: 4e550000     link.w     a5, #$0
002c12: 48e78080     movem.l    d0/a0, -(a7)
002c16: 41ee8dd8     lea.l      -$7228(a6), a0
002c1a: 2008         move.l     a0, d0
002c1c: 4ced0100fffc movem.l    -$4(a5), a0
002c22: 4e5d         unlk       a5
002c24: 4e75         rts        
002c26: 4c6f         .dc.w      $4c6f
002c28: 636b         bls.b      $2c95
002c2a: 7320         .dc.w      $7320
002c2c: 6176         bsr.b      $2ca4
002c2e: 6169         bsr.b      $2c99
002c30: 6c61         bge.b      $2c93
002c32: 626c         bhi.b      $2ca0
002c34: 6520         bcs.b      $2c56
002c36: 696e         bvs.b      $2ca6
002c38: 2063         movea.l    -(a3), a0
002c3a: 6f6e         ble.b      $2caa
002c3c: 7465         moveq      #$65, d2
002c3e: 6e74         bgt.b      $2cb4
002c40: 7320         .dc.w      $7320
002c42: 6c69         bge.b      $2cad
002c44: 7374         .dc.w      $7374
002c46: 2066         movea.l    -(a6), a0
002c48: 6f72         ble.b      $2cbc
002c4a: 2062         movea.l    -(a2), a0
002c4c: 6c6f         bge.b      $2cbd
002c4e: 636b         bls.b      $2cbb
002c50: 2025         move.l     -(a5), d0
002c52: 64006c6f     bcc.w      $98c3
002c56: 636b         bls.b      $2cc3
002c58: 7300         .dc.w      $7300
002c5a: 636c         bls.b      $2cc8
002c5c: 5f696e69     subq.w     #$7, $6e69(a1)
002c60: 743a         moveq      #$3a, d2
002c62: 2065         movea.l    -(a5), a0
002c64: 7272         moveq      #$72, d1
002c66: 6e6f         bgt.b      $2cd7
002c68: 2073686d     movea.l    $6d(a3, d6.l), a0
002c6c: 656d         bcs.b      $2cdb
002c6e: 5f63         subq.w     #$7, -(a3)
002c70: 7265         moveq      #$65, d1
002c72: 6174         bsr.b      $2ce8
002c74: 3a25         move.w     -(a5), d5
002c76: 642e         bcc.b      $2ca6
002c78: 00636c5f     ori.w      #$6c5f, -(a3)
002c7c: 696e         bvs.b      $2cec
002c7e: 6974         bvs.b      $2cf4
002c80: 3a20         move.w     -(a0), d5
002c82: 6572         bcs.b      $2cf6
002c84: 726e         moveq      #$6e, d1
002c86: 6f20         ble.b      $2ca8
002c88: 7365         .dc.w      $7365
002c8a: 6d5f         blt.b      $2ceb
002c8c: 6372         bls.b      $2d00
002c8e: 6561         bcs.b      $2cf1
002c90: 743a         moveq      #$3a, d2
002c92: 25642e00     move.l     -(a4), $2e00(a2)
002c96: 636c         bls.b      $2d04
002c98: 5f65         subq.w     #$7, -(a5)
002c9a: 6e64         bgt.b      $2d00
002c9c: 3a20         move.w     -(a0), d5
002c9e: 6572         bcs.b      $2d12
002ca0: 726e         moveq      #$6e, d1
002ca2: 6f20         ble.b      $2cc4
002ca4: 7368         .dc.w      $7368
002ca6: 6d65         blt.b      $2d0d
002ca8: 6d5f         blt.b      $2d09
002caa: 7265         moveq      #$65, d1
002cac: 6d6f         blt.b      $2d1d
002cae: 7665         moveq      #$65, d3
002cb0: 3a25         move.w     -(a5), d5
002cb2: 6400636c     bcc.w      $9020
002cb6: 5f65         subq.w     #$7, -(a5)
002cb8: 6e64         bgt.b      $2d1e
002cba: 3a20         move.w     -(a0), d5
002cbc: 6572         bcs.b      $2d30
002cbe: 726e         moveq      #$6e, d1
002cc0: 6f20         ble.b      $2ce2
002cc2: 7365         .dc.w      $7365
002cc4: 6d5f         blt.b      $2d25
002cc6: 7265         moveq      #$65, d1
002cc8: 6d6f         blt.b      $2d39
002cca: 7665         moveq      #$65, d3
002ccc: 3a25         move.w     -(a5), d5
002cce: 6400636c     bcc.w      $903c
002cd2: 5f696e73     subq.w     #$7, $6e73(a1)
002cd6: 6572         bcs.b      $2d4a
002cd8: 743a         moveq      #$3a, d2
002cda: 2065         movea.l    -(a5), a0
002cdc: 6e74         bgt.b      $2d52
002cde: 7279         moveq      #$79, d1
002ce0: 2061         movea.l    -(a1), a0
002ce2: 6c72         bge.b      $2d56
002ce4: 6561         bcs.b      $2d47
002ce6: 6479         bcc.b      $2d61
002ce8: 2065         movea.l    -(a5), a0
002cea: 7869         moveq      #$69, d4
002cec: 7374         .dc.w      $7374
002cee: 7300         .dc.w      $7300
002cf0: 636c         bls.b      $2d5e
002cf2: 5f696e73     subq.w     #$7, $6e73(a1)
002cf6: 6572         bcs.b      $2d6a
002cf8: 743a         moveq      #$3a, d2
002cfa: 2043         movea.l    d3, a0
002cfc: 4c20         .dc.w      $4c20
002cfe: 6f76         ble.b      $2d76
002d00: 6572         bcs.b      $2d74
002d02: 666c         bne.b      $2d70
002d04: 6f77         ble.b      $2d7d
002d06: 00536574     ori.w      #$6574, (a3)
002d0a: 4c6f         .dc.w      $4c6f
002d0c: 636b         bls.b      $2d79
002d0e: 2825         move.l     -(a5), d4
002d10: 782c         moveq      #$2c, d4
002d12: 2025         move.l     -(a5), d0
002d14: 642c         bcc.b      $2d42
002d16: 2025         move.l     -(a5), d0
002d18: 6429         bcc.b      $2d43
002d1a: 2c20         move.l     -(a0), d6
002d1c: 25640d00     move.l     -(a4), $d00(a2)
002d20: 4465         neg.w      -(a5)
002d22: 634c         bls.b      $2d70
002d24: 6f63         ble.b      $2d89
002d26: 6b28         bmi.b      $2d50
002d28: 25782c202564 move.l     $2c20.w, $2564(a2)
002d2e: 292c2025     move.l     $2025(a4), -(a4)
002d32: 640d         bcc.b      $2d41
002d34: 006e6f6d0063 ori.w      #$6f6d, $63(a6)
002d3a: 6c5f         bge.b      $2d9b
002d3c: 7265         moveq      #$65, d1
002d3e: 6d6f         blt.b      $2daf
002d40: 7665         moveq      #$65, d3
002d42: 6f6c         ble.b      $2db0
002d44: 6465         bcc.b      $2dab
002d46: 7374         .dc.w      $7374
002d48: 3a20         move.w     -(a0), d5
002d4a: 6e6f         bgt.b      $2dbb
002d4c: 6e65         bgt.b      $2db3
002d4e: 2072656d6f76 movea.l    ([$6f76, a2]), a0
002d54: 6564         bcs.b      $2dba
002d56: 2e00         move.l     d0, d7
002d58: 4765         .dc.w      $4765
002d5a: 744c         moveq      #$4c, d2
002d5c: 6f63         ble.b      $2dc1
002d5e: 6b28         bmi.b      $2d88
002d60: 25782c202564 move.l     $2c20.w, $2564(a2)
002d66: 2c20         move.l     -(a0), d6
002d68: 2578292c2025 move.l     $292c.w, $2025(a2)
002d6e: 640d         bcc.b      $2d7d
002d70: 00536574     ori.w      #$6574, (a3)
002d74: 4c6f         .dc.w      $4c6f
002d76: 636b         bls.b      $2de3
002d78: 2825         move.l     -(a5), d4
002d7a: 782c         moveq      #$2c, d4
002d7c: 2025         move.l     -(a5), d0
002d7e: 642c         bcc.b      $2dac
002d80: 2025         move.l     -(a5), d0
002d82: 6429         bcc.b      $2dad
002d84: 2c20         move.l     -(a0), d6
002d86: 25640d00     move.l     -(a4), $d00(a2)
002d8a: 23656e74     move.l     -(a5), $6e74(a1)
002d8e: 7269         moveq      #$69, d1
002d90: 6573         bcs.b      $2e05
002d92: 20696e20     movea.l    $6e20(a1), a0
002d96: 434c         .dc.w      $434c
002d98: 2020         move.l     -(a0), d0
002d9a: 203a2025     move.l     $4dc1(pc), d0
002d9e: 640d         bcc.b      $2dad
002da0: 00434420     ori.w      #$4420, d3
002da4: 4964         .dc.w      $4964
002da6: 656e         bcs.b      $2e16
002da8: 7469         moveq      #$69, d2
002daa: 6669         bne.b      $2e15
002dac: 6361         bls.b      $2e0f
002dae: 7469         moveq      #$69, d2
002db0: 6f6e         ble.b      $2e20
002db2: 3a20         move.w     -(a0), d5
002db4: 25640d00     move.l     -(a4), $d00(a2)
002db8: 4e522043     link.w     a2, #$2043
002dbc: 4420         neg.b      -(a0)
002dbe: 2042         movea.l    d2, a0
002dc0: 4c4f         .dc.w      $4c4f
002dc2: 434b         .dc.w      $434b
002dc4: 5f4e         subq.w     #$7, a6
002dc6: 4f20         chk.l      -(a0), d7
002dc8: 4e45         trap       #$5
002dca: 5854         addq.w     #$4, (a4)
002dcc: 2050         movea.l    (a0), a0
002dce: 5245         addq.w     #$1, d5
002dd0: 5620         addq.b     #$3, -(a0)
002dd2: 2052         movea.l    (a2), a0
002dd4: 4551         .dc.w      $4551
002dd6: 205b         movea.l    (a3)+, a0
002dd8: 302e2e31     move.w     $2e31(a6), d0
002ddc: 355d0d00     move.w     (a5)+, $d00(a2)
002de0: 7461         moveq      #$61, d2
002de2: 696c         bvs.b      $2e50
002de4: 00253464     ori.b      #$64, -(a5)
002de8: 006865616400 ori.w      #$6561, $6400(a0)
002dee: 25346400     move.l     (a4, d6.w * 4), -(a2)
002df2: 25326420     move.l     $20(a2, d6.w), -(a2)
002df6: 25326420     move.l     $20(a2, d6.w), -(a2)
002dfa: 2025         move.l     -(a5), d0
002dfc: 35642d25     move.w     -(a4), $2d25(a2)
002e00: 6420         bcc.b      $2e22
002e02: 2025         move.l     -(a5), d0
002e04: 34732025     movea.w    $25(a3, d2.w), a2
002e08: 34732020     movea.w    $20(a3, d2.w), a2
002e0c: 002e20002564 ori.b      #$0, $2564(a6)
002e12: 2000         move.l     d0, d0
002e14: 0d4e4558     movep.l    $4558(a6), d6
002e18: 543a         .dc.w      $543a
002e1a: 00202564     ori.b      #$64, -(a0)
002e1e: 002e0d505245 ori.b      #$50, $5245(a6)
002e24: 563a         .dc.w      $563a
002e26: 00202564     ori.b      #$64, -(a0)
002e2a: 002e0d0d0057 ori.b      #$d, $57(a6)
002e30: 6172         bsr.b      $2ea4
002e32: 6e69         bgt.b      $2e9d
002e34: 6e67         bgt.b      $2e9d
002e36: 3a20         move.w     -(a0), d5
002e38: 556e7075     subq.w     #$2, $7075(a6)
002e3c: 7267         moveq      #$67, d1
002e3e: 6162         bsr.b      $2ea2
002e40: 6c65         bge.b      $2ea7
002e42: 20736563746f72733a20 movea.l    ([$746f, a3], $72733a20), a0
002e4c: 25640000     move.l     -(a4), $0(a2)
002e50: 4e550000     link.w     a5, #$0
002e54: 48e7c000     movem.l    d0-d1, -(a7)
002e58: 598f         subq.l     #$4, a7
002e5a: 4857         pea.l      (a7)
002e5c: 222f000c     move.l     $c(a7), d1
002e60: 202f0008     move.l     $8(a7), d0
002e64: 61000070     bsr.w      $2ed6
002e68: 588f         addq.l     #$4, a7
002e6a: 4a00         tst.b      d0
002e6c: 670c         beq.b      $2e7a
002e6e: 700f         moveq      #$f, d0
002e70: b097         cmp.l      (a7), d0
002e72: 6e0a         bgt.b      $2e7e
002e74: 7002         moveq      #$2, d0
002e76: 2d408e30     move.l     d0, -$71d0(a6)
002e7a: 7000         moveq      #$0, d0
002e7c: 6012         bra.b      $2e90
002e7e: 5297         addq.l     #$1, (a7)
002e80: 2f17         move.l     (a7), -(a7)
002e82: 222f000c     move.l     $c(a7), d1
002e86: 202f0008     move.l     $8(a7), d0
002e8a: 6100009e     bsr.w      $2f2a
002e8e: 588f         addq.l     #$4, a7
002e90: 588f         addq.l     #$4, a7
002e92: 4e5d         unlk       a5
002e94: 4e75         rts        
002e96: 4e550000     link.w     a5, #$0
002e9a: 48e7c000     movem.l    d0-d1, -(a7)
002e9e: 598f         subq.l     #$4, a7
002ea0: 4857         pea.l      (a7)
002ea2: 222f000c     move.l     $c(a7), d1
002ea6: 202f0008     move.l     $8(a7), d0
002eaa: 612a         bsr.b      $2ed6
002eac: 588f         addq.l     #$4, a7
002eae: 4a00         tst.b      d0
002eb0: 670a         beq.b      $2ebc
002eb2: 4a97         tst.l      (a7)
002eb4: 660a         bne.b      $2ec0
002eb6: 7002         moveq      #$2, d0
002eb8: 2d408e30     move.l     d0, -$71d0(a6)
002ebc: 7000         moveq      #$0, d0
002ebe: 6010         bra.b      $2ed0
002ec0: 5397         subq.l     #$1, (a7)
002ec2: 2f17         move.l     (a7), -(a7)
002ec4: 222f000c     move.l     $c(a7), d1
002ec8: 202f0008     move.l     $8(a7), d0
002ecc: 615c         bsr.b      $2f2a
002ece: 588f         addq.l     #$4, a7
002ed0: 588f         addq.l     #$4, a7
002ed2: 4e5d         unlk       a5
002ed4: 4e75         rts        
002ed6: 4e550000     link.w     a5, #$0
002eda: 48e7c080     movem.l    d0-d1/a0, -(a7)
002ede: 7010         moveq      #$10, d0
002ee0: b0af0004     cmp.l      $4(a7), d0
002ee4: 6c0a         bge.b      $2ef0
002ee6: 7002         moveq      #$2, d0
002ee8: 2d408e30     move.l     d0, -$71d0(a6)
002eec: 7000         moveq      #$0, d0
002eee: 6030         bra.b      $2f20
002ef0: 7008         moveq      #$8, d0
002ef2: b0af0004     cmp.l      $4(a7), d0
002ef6: 6e0e         bgt.b      $2f06
002ef8: 202f0004     move.l     $4(a7), d0
002efc: 5180         subq.l     #$8, d0
002efe: e588         lsl.l      #$2, d0
002f00: 2057         movea.l    (a7), a0
002f02: 2210         move.l     (a0), d1
002f04: 600c         bra.b      $2f12
002f06: 202f0004     move.l     $4(a7), d0
002f0a: e588         lsl.l      #$2, d0
002f0c: 2057         movea.l    (a7), a0
002f0e: 22280004     move.l     $4(a0), d1
002f12: e0a9         lsr.l      d0, d1
002f14: 700f         moveq      #$f, d0
002f16: c280         and.l      d0, d1
002f18: 206f0014     movea.l    $14(a7), a0
002f1c: 2081         move.l     d1, (a0)
002f1e: 7001         moveq      #$1, d0
002f20: 4ced0100fffc movem.l    -$4(a5), a0
002f26: 4e5d         unlk       a5
002f28: 4e75         rts        
002f2a: 4e550000     link.w     a5, #$0
002f2e: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
002f32: 7010         moveq      #$10, d0
002f34: b0af0004     cmp.l      $4(a7), d0
002f38: 6c04         bge.b      $2f3e
002f3a: 7001         moveq      #$1, d0
002f3c: 6010         bra.b      $2f4e
002f3e: 700f         moveq      #$f, d0
002f40: b0af0020     cmp.l      $20(a7), d0
002f44: 6d06         blt.b      $2f4c
002f46: 4aaf0020     tst.l      $20(a7)
002f4a: 6c0a         bge.b      $2f56
002f4c: 7002         moveq      #$2, d0
002f4e: 2d408e30     move.l     d0, -$71d0(a6)
002f52: 7000         moveq      #$0, d0
002f54: 6074         bra.b      $2fca
002f56: 7008         moveq      #$8, d0
002f58: b0af0004     cmp.l      $4(a7), d0
002f5c: 6e36         bgt.b      $2f94
002f5e: 202f0004     move.l     $4(a7), d0
002f62: 5180         subq.l     #$8, d0
002f64: e588         lsl.l      #$2, d0
002f66: 720f         moveq      #$f, d1
002f68: e1a9         lsl.l      d0, d1
002f6a: 2801         move.l     d1, d4
002f6c: 2004         move.l     d4, d0
002f6e: 4680         not.l      d0
002f70: 2800         move.l     d0, d4
002f72: 2057         movea.l    (a7), a0
002f74: 2010         move.l     (a0), d0
002f76: c084         and.l      d4, d0
002f78: 2a00         move.l     d0, d5
002f7a: 202f0004     move.l     $4(a7), d0
002f7e: 5180         subq.l     #$8, d0
002f80: e588         lsl.l      #$2, d0
002f82: 222f0020     move.l     $20(a7), d1
002f86: e1a9         lsl.l      d0, d1
002f88: 2c01         move.l     d1, d6
002f8a: 2005         move.l     d5, d0
002f8c: 8086         or.l       d6, d0
002f8e: 2057         movea.l    (a7), a0
002f90: 2080         move.l     d0, (a0)
002f92: 6034         bra.b      $2fc8
002f94: 202f0004     move.l     $4(a7), d0
002f98: e588         lsl.l      #$2, d0
002f9a: 720f         moveq      #$f, d1
002f9c: e1a9         lsl.l      d0, d1
002f9e: 2801         move.l     d1, d4
002fa0: 2004         move.l     d4, d0
002fa2: 4680         not.l      d0
002fa4: 2800         move.l     d0, d4
002fa6: 2057         movea.l    (a7), a0
002fa8: 20280004     move.l     $4(a0), d0
002fac: c084         and.l      d4, d0
002fae: 2a00         move.l     d0, d5
002fb0: 202f0004     move.l     $4(a7), d0
002fb4: e588         lsl.l      #$2, d0
002fb6: 222f0020     move.l     $20(a7), d1
002fba: e1a9         lsl.l      d0, d1
002fbc: 2c01         move.l     d1, d6
002fbe: 2005         move.l     d5, d0
002fc0: 8086         or.l       d6, d0
002fc2: 2057         movea.l    (a7), a0
002fc4: 21400004     move.l     d0, $4(a0)
002fc8: 7001         moveq      #$1, d0
002fca: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
002fd0: 4e5d         unlk       a5
002fd2: 4e75         rts        
002fd4: 4e550000     link.w     a5, #$0
002fd8: 48e7c080     movem.l    d0-d1/a0, -(a7)
002fdc: 598f         subq.l     #$4, a7
002fde: 302f000a     move.w     $a(a7), d0
002fe2: 48c0         ext.l      d0
002fe4: 5080         addq.l     #$8, d0
002fe6: 2e80         move.l     d0, (a7)
002fe8: 206f0018     movea.l    $18(a7), a0
002fec: 4868000a     pea.l      $a(a0)
002ff0: 222f0004     move.l     $4(a7), d1
002ff4: 306f000a     movea.w    $a(a7), a0
002ff8: 2008         move.l     a0, d0
002ffa: 6100020c     bsr.w      $3208
002ffe: 588f         addq.l     #$4, a7
003000: 4a00         tst.b      d0
003002: 6604         bne.b      $3008
003004: 7000         moveq      #$0, d0
003006: 601a         bra.b      $3022
003008: 206f0018     movea.l    $18(a7), a0
00300c: 42a80002     clr.l      $2(a0)
003010: 206f0018     movea.l    $18(a7), a0
003014: 42a80006     clr.l      $6(a0)
003018: 206f0018     movea.l    $18(a7), a0
00301c: 30af000a     move.w     $a(a7), (a0)
003020: 7001         moveq      #$1, d0
003022: 588f         addq.l     #$4, a7
003024: 4ced0100fffc movem.l    -$4(a5), a0
00302a: 4e5d         unlk       a5
00302c: 4e75         rts        
00302e: 4e550000     link.w     a5, #$0
003032: 48e780c0     movem.l    d0/a0-a1, -(a7)
003036: 2057         movea.l    (a7), a0
003038: 2257         movea.l    (a7), a1
00303a: 236800020006 move.l     $2(a0), $6(a1)
003040: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003046: 4e5d         unlk       a5
003048: 4e75         rts        
00304a: 4e550000     link.w     a5, #$0
00304e: 48e780a0     movem.l    d0/a0/a2, -(a7)
003052: 2057         movea.l    (a7), a0
003054: 24680006     movea.l    $6(a0), a2
003058: 200a         move.l     a2, d0
00305a: 6604         bne.b      $3060
00305c: 7000         moveq      #$0, d0
00305e: 6008         bra.b      $3068
003060: 2057         movea.l    (a7), a0
003062: 21520006     move.l     (a2), $6(a0)
003066: 200a         move.l     a2, d0
003068: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00306e: 4e5d         unlk       a5
003070: 4e75         rts        
003072: 4e550000     link.w     a5, #$0
003076: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00307a: 2057         movea.l    (a7), a0
00307c: 24680002     movea.l    $2(a0), a2
003080: 6002         bra.b      $3084
003082: 2452         movea.l    (a2), a2
003084: 200a         move.l     a2, d0
003086: 6704         beq.b      $308c
003088: 4a92         tst.l      (a2)
00308a: 66f6         bne.b      $3082
00308c: 700a         moveq      #$a, d0
00308e: d097         add.l      (a7), d0
003090: 610001d6     bsr.w      $3268
003094: 2640         movea.l    d0, a3
003096: 200b         move.l     a3, d0
003098: 6604         bne.b      $309e
00309a: 7000         moveq      #$0, d0
00309c: 602a         bra.b      $30c8
00309e: 4293         clr.l      (a3)
0030a0: 274a0004     move.l     a2, $4(a3)
0030a4: 2057         movea.l    (a7), a0
0030a6: 3050         movea.w    (a0), a0
0030a8: 2f08         move.l     a0, -(a7)
0030aa: 222f0008     move.l     $8(a7), d1
0030ae: 200b         move.l     a3, d0
0030b0: 5080         addq.l     #$8, d0
0030b2: 6100389a     bsr.w      $694e
0030b6: 588f         addq.l     #$4, a7
0030b8: 200a         move.l     a2, d0
0030ba: 6608         bne.b      $30c4
0030bc: 2057         movea.l    (a7), a0
0030be: 214b0002     move.l     a3, $2(a0)
0030c2: 6002         bra.b      $30c6
0030c4: 248b         move.l     a3, (a2)
0030c6: 7001         moveq      #$1, d0
0030c8: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0030ce: 4e5d         unlk       a5
0030d0: 4e75         rts        
0030d2: 4e550000     link.w     a5, #$0
0030d6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0030da: 4aaf0004     tst.l      $4(a7)
0030de: 6604         bne.b      $30e4
0030e0: 7000         moveq      #$0, d0
0030e2: 604a         bra.b      $312e
0030e4: 206f0004     movea.l    $4(a7), a0
0030e8: 4aa80004     tst.l      $4(a0)
0030ec: 660c         bne.b      $30fa
0030ee: 206f0004     movea.l    $4(a7), a0
0030f2: 2257         movea.l    (a7), a1
0030f4: 23500002     move.l     (a0), $2(a1)
0030f8: 600e         bra.b      $3108
0030fa: 206f0004     movea.l    $4(a7), a0
0030fe: 226f0004     movea.l    $4(a7), a1
003102: 22690004     movea.l    $4(a1), a1
003106: 2290         move.l     (a0), (a1)
003108: 206f0004     movea.l    $4(a7), a0
00310c: 4a90         tst.l      (a0)
00310e: 6710         beq.b      $3120
003110: 206f0004     movea.l    $4(a7), a0
003114: 226f0004     movea.l    $4(a7), a1
003118: 2251         movea.l    (a1), a1
00311a: 236800040004 move.l     $4(a0), $4(a1)
003120: 222f0004     move.l     $4(a7), d1
003124: 700a         moveq      #$a, d0
003126: d097         add.l      (a7), d0
003128: 6100018e     bsr.w      $32b8
00312c: 7001         moveq      #$1, d0
00312e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003134: 4e5d         unlk       a5
003136: 4e75         rts        
003138: 4e550000     link.w     a5, #$0
00313c: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
003140: 2440         movea.l    d0, a2
003142: 97cb         suba.l     a3, a3
003144: 200a         move.l     a2, d0
003146: 6100fee6     bsr.w      $302e
00314a: 6022         bra.b      $316e
00314c: 220b         move.l     a3, d1
00314e: 200a         move.l     a2, d0
003150: 6100ff80     bsr.w      $30d2
003154: 4a00         tst.b      d0
003156: 6616         bne.b      $316e
003158: 4878010e     pea.l      $10e.w
00315c: 7212         moveq      #$12, d1
00315e: 203c00000098 move.l     #$98, d0
003164: 610024a2     bsr.w      $5608
003168: 588f         addq.l     #$4, a7
00316a: 610024c2     bsr.w      $562e
00316e: 200a         move.l     a2, d0
003170: 6100fed8     bsr.w      $304a
003174: 2640         movea.l    d0, a3
003176: 4a80         tst.l      d0
003178: 66d2         bne.b      $314c
00317a: 42aa0002     clr.l      $2(a2)
00317e: 42aa0006     clr.l      $6(a2)
003182: 700a         moveq      #$a, d0
003184: d08a         add.l      a2, d0
003186: 610001ae     bsr.w      $3336
00318a: 4ced0c02fff4 movem.l    -$c(a5), d1/a2-a3
003190: 4e5d         unlk       a5
003192: 4e75         rts        
003194: 4e550000     link.w     a5, #$0
003198: 48e78000     movem.l    d0, -(a7)
00319c: 4a97         tst.l      (a7)
00319e: 6604         bne.b      $31a4
0031a0: 7000         moveq      #$0, d0
0031a2: 6004         bra.b      $31a8
0031a4: 2017         move.l     (a7), d0
0031a6: 5080         addq.l     #$8, d0
0031a8: 4e5d         unlk       a5
0031aa: 4e75         rts        
0031ac: 4e550000     link.w     a5, #$0
0031b0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0031b4: 4aaf0004     tst.l      $4(a7)
0031b8: 671c         beq.b      $31d6
0031ba: 4aaf0014     tst.l      $14(a7)
0031be: 6716         beq.b      $31d6
0031c0: 2057         movea.l    (a7), a0
0031c2: 3050         movea.w    (a0), a0
0031c4: 2f08         move.l     a0, -(a7)
0031c6: 222f0018     move.l     $18(a7), d1
0031ca: 202f0008     move.l     $8(a7), d0
0031ce: 5080         addq.l     #$8, d0
0031d0: 6100377c     bsr.w      $694e
0031d4: 588f         addq.l     #$4, a7
0031d6: 4ced0100fffc movem.l    -$4(a5), a0
0031dc: 4e5d         unlk       a5
0031de: 4e75         rts        
0031e0: 4e550000     link.w     a5, #$0
0031e4: 48e78000     movem.l    d0, -(a7)
0031e8: 700a         moveq      #$a, d0
0031ea: d097         add.l      (a7), d0
0031ec: 61000108     bsr.w      $32f6
0031f0: 4e5d         unlk       a5
0031f2: 4e75         rts        
0031f4: 4e550000     link.w     a5, #$0
0031f8: 48e78000     movem.l    d0, -(a7)
0031fc: 700a         moveq      #$a, d0
0031fe: d097         add.l      (a7), d0
003200: 6100011a     bsr.w      $331c
003204: 4e5d         unlk       a5
003206: 4e75         rts        
003208: 4e550000     link.w     a5, #$0
00320c: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
003210: 246f0018     movea.l    $18(a7), a2
003214: 0c6f01000002 cmpi.w     #$100, $2(a7)
00321a: 6e3c         bgt.b      $3258
00321c: 356f00060100 move.w     $6(a7), $100(a2)
003222: 356f00020102 move.w     $2(a7), $102(a2)
003228: 426a0104     clr.w      $104(a2)
00322c: 7800         moveq      #$0, d4
00322e: 6008         bra.b      $3238
003230: 15bc00014800 move.b     #$1, (a2, d4.l)
003236: 5284         addq.l     #$1, d4
003238: 302f0002     move.w     $2(a7), d0
00323c: 48c0         ext.l      d0
00323e: b084         cmp.l      d4, d0
003240: 6eee         bgt.b      $3230
003242: 302f0002     move.w     $2(a7), d0
003246: c1ef0006     muls.w     $6(a7), d0
00324a: 610035f4     bsr.w      $6840
00324e: 25400106     move.l     d0, $106(a2)
003252: 4aaa0106     tst.l      $106(a2)
003256: 6604         bne.b      $325c
003258: 7000         moveq      #$0, d0
00325a: 6002         bra.b      $325e
00325c: 7001         moveq      #$1, d0
00325e: 4ced0410fff8 movem.l    -$8(a5), d4/a2
003264: 4e5d         unlk       a5
003266: 4e75         rts        
003268: 4e550000     link.w     a5, #$0
00326c: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
003270: 2440         movea.l    d0, a2
003272: 302a0104     move.w     $104(a2), d0
003276: b06a0102     cmp.w      $102(a2), d0
00327a: 6604         bne.b      $3280
00327c: 7000         moveq      #$0, d0
00327e: 602e         bra.b      $32ae
003280: 7800         moveq      #$0, d4
003282: 6008         bra.b      $328c
003284: 4a324800     tst.b      (a2, d4.l)
003288: 660c         bne.b      $3296
00328a: 5284         addq.l     #$1, d4
00328c: 302a0102     move.w     $102(a2), d0
003290: 48c0         ext.l      d0
003292: b084         cmp.l      d4, d0
003294: 6eee         bgt.b      $3284
003296: 42324800     clr.b      (a2, d4.l)
00329a: 526a0104     addq.w     #$1, $104(a2)
00329e: 202a0106     move.l     $106(a2), d0
0032a2: 322a0100     move.w     $100(a2), d1
0032a6: 48c1         ext.l      d1
0032a8: 4c041001     mulu.l     d4, d1
0032ac: d081         add.l      d1, d0
0032ae: 4ced0412fff4 movem.l    -$c(a5), d1/d4/a2
0032b4: 4e5d         unlk       a5
0032b6: 4e75         rts        
0032b8: 4e550000     link.w     a5, #$0
0032bc: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
0032c0: 2440         movea.l    d0, a2
0032c2: 4a6a0104     tst.w      $104(a2)
0032c6: 6f24         ble.b      $32ec
0032c8: 4aaf0004     tst.l      $4(a7)
0032cc: 671e         beq.b      $32ec
0032ce: 302a0100     move.w     $100(a2), d0
0032d2: 48c0         ext.l      d0
0032d4: 222f0004     move.l     $4(a7), d1
0032d8: 92aa0106     sub.l      $106(a2), d1
0032dc: 4c401801     divs.l     d0, d1
0032e0: 2801         move.l     d1, d4
0032e2: 15bc00014800 move.b     #$1, (a2, d4.l)
0032e8: 536a0104     subq.w     #$1, $104(a2)
0032ec: 4ced0410fff8 movem.l    -$8(a5), d4/a2
0032f2: 4e5d         unlk       a5
0032f4: 4e75         rts        
0032f6: 4e550000     link.w     a5, #$0
0032fa: 48e7c080     movem.l    d0-d1/a0, -(a7)
0032fe: 2057         movea.l    (a7), a0
003300: 30280104     move.w     $104(a0), d0
003304: 48c0         ext.l      d0
003306: 2057         movea.l    (a7), a0
003308: 32280102     move.w     $102(a0), d1
00330c: 48c1         ext.l      d1
00330e: 9280         sub.l      d0, d1
003310: 2001         move.l     d1, d0
003312: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003318: 4e5d         unlk       a5
00331a: 4e75         rts        
00331c: 4e550000     link.w     a5, #$0
003320: 48e78080     movem.l    d0/a0, -(a7)
003324: 2057         movea.l    (a7), a0
003326: 30280104     move.w     $104(a0), d0
00332a: 48c0         ext.l      d0
00332c: 4ced0100fffc movem.l    -$4(a5), a0
003332: 4e5d         unlk       a5
003334: 4e75         rts        
003336: 4e550000     link.w     a5, #$0
00333a: 48e78080     movem.l    d0/a0, -(a7)
00333e: 2057         movea.l    (a7), a0
003340: 20280106     move.l     $106(a0), d0
003344: 61003506     bsr.w      $684c
003348: 4ced0100fffc movem.l    -$4(a5), a0
00334e: 4e5d         unlk       a5
003350: 4e75         rts        
003352: 4e550000     link.w     a5, #$0
003356: 48e78000     movem.l    d0, -(a7)
00335a: 2d579446     move.l     (a7), -$6bba(a6)
00335e: 4e5d         unlk       a5
003360: 4e75         rts        
003362: 4e550000     link.w     a5, #$0
003366: 48e78000     movem.l    d0, -(a7)
00336a: 202e9446     move.l     -$6bba(a6), d0
00336e: 4e5d         unlk       a5
003370: 4e75         rts        
003372: 4e550000     link.w     a5, #$0
003376: 48e7c080     movem.l    d0-d1/a0, -(a7)
00337a: 4fefffac     lea.l      -$54(a7), a7
00337e: 222e9446     move.l     -$6bba(a6), d1
003382: 41ef0004     lea.l      $4(a7), a0
003386: 2008         move.l     a0, d0
003388: 61003574     bsr.w      $68fe
00338c: 41ef0004     lea.l      $4(a7), a0
003390: 2008         move.l     a0, d0
003392: 6100354c     bsr.w      $68e0
003396: 5380         subq.l     #$1, d0
003398: 41ef0004     lea.l      $4(a7), a0
00339c: 0c30002f0800 cmpi.b     #$2f, (a0, d0.l)
0033a2: 6710         beq.b      $33b4
0033a4: 41fa0042     lea.l      $33e8(pc), a0
0033a8: 2208         move.l     a0, d1
0033aa: 41ef0004     lea.l      $4(a7), a0
0033ae: 2008         move.l     a0, d0
0033b0: 61003568     bsr.w      $691a
0033b4: 222f0054     move.l     $54(a7), d1
0033b8: 41ef0004     lea.l      $4(a7), a0
0033bc: 2008         move.l     a0, d0
0033be: 6100355a     bsr.w      $691a
0033c2: 222f0058     move.l     $58(a7), d1
0033c6: 41ef0004     lea.l      $4(a7), a0
0033ca: 2008         move.l     a0, d0
0033cc: 61003386     bsr.w      $6754
0033d0: 2e80         move.l     d0, (a7)
0033d2: 4a97         tst.l      (a7)
0033d4: 2017         move.l     (a7), d0
0033d6: 4fef0054     lea.l      $54(a7), a7
0033da: 4ced0100fffc movem.l    -$4(a5), a0
0033e0: 4e5d         unlk       a5
0033e2: 4e75         rts        
0033e4: 2f7230002f00 move.l     (a2, d3.w), $2f00(a7)
0033ea: 4e550000     link.w     a5, #$0
0033ee: 48e78000     movem.l    d0, -(a7)
0033f2: 3d7c00088e3e move.w     #$8, -$71c2(a6)
0033f8: 3d7c006c8e4a move.w     #$6c, -$71b6(a6)
0033fe: 3d7c00348e56 move.w     #$34, -$71aa(a6)
003404: 3d7c00308e50 move.w     #$30, -$71b0(a6)
00340a: 3d7c00068eb4 move.w     #$6, -$714c(a6)
003410: 3d7c00048e58 move.w     #$4, -$71a8(a6)
003416: 3d7c00168e46 move.w     #$16, -$71ba(a6)
00341c: 3d7c00068e48 move.w     #$6, -$71b8(a6)
003422: 3d7c001c8e44 move.w     #$1c, -$71bc(a6)
003428: 3d7c00088e54 move.w     #$8, -$71ac(a6)
00342e: 3d7c00088e42 move.w     #$8, -$71be(a6)
003434: 3d7c00108e40 move.w     #$10, -$71c0(a6)
00343a: 3d7c00068e4c move.w     #$6, -$71b4(a6)
003440: 3d7c00088e52 move.w     #$8, -$71ae(a6)
003446: 3d7c00048e4e move.w     #$4, -$71b2(a6)
00344c: 3d7c00088e5c move.w     #$8, -$71a4(a6)
003452: 3d7c00068e5a move.w     #$6, -$71a6(a6)
003458: 3d7c00048e5e move.w     #$4, -$71a2(a6)
00345e: 3d7c00108ea0 move.w     #$10, -$7160(a6)
003464: 3d7c00048ea6 move.w     #$4, -$715a(a6)
00346a: 3d7c00048ea4 move.w     #$4, -$715c(a6)
003470: 3d7c00088ea2 move.w     #$8, -$715e(a6)
003476: 3d7c00208e9a move.w     #$20, -$7166(a6)
00347c: 3d7c00088e9e move.w     #$8, -$7162(a6)
003482: 3d7c00108e9c move.w     #$10, -$7164(a6)
003488: 3d7c00108e98 move.w     #$10, -$7168(a6)
00348e: 3d7c002c8eae move.w     #$2c, -$7152(a6)
003494: 3d7c00108eb2 move.w     #$10, -$714e(a6)
00349a: 3d7c00148eb0 move.w     #$14, -$7150(a6)
0034a0: 3d7c00048eaa move.w     #$4, -$7156(a6)
0034a6: 3d7c00108ea8 move.w     #$10, -$7158(a6)
0034ac: 3d7c00088eac move.w     #$8, -$7154(a6)
0034b2: 3d7c000c8e84 move.w     #$c, -$717c(a6)
0034b8: 3d7c00048e88 move.w     #$4, -$7178(a6)
0034be: 3d7c000c8e86 move.w     #$c, -$717a(a6)
0034c4: 3d7c00248e8a move.w     #$24, -$7176(a6)
0034ca: 3d7c00148e90 move.w     #$14, -$7170(a6)
0034d0: 3d7c00088e8c move.w     #$8, -$7174(a6)
0034d6: 3d7c00088e8e move.w     #$8, -$7172(a6)
0034dc: 3d7c00288e74 move.w     #$28, -$718c(a6)
0034e2: 3d7c00148e72 move.w     #$14, -$718e(a6)
0034e8: 3d7c00048eb6 move.w     #$4, -$714a(a6)
0034ee: 3d7c00188eb8 move.w     #$18, -$7148(a6)
0034f4: 3d7c001c8e92 move.w     #$1c, -$716e(a6)
0034fa: 3d7c000c8e94 move.w     #$c, -$716c(a6)
003500: 3d7c00088e96 move.w     #$8, -$716a(a6)
003506: 3d7c00108e76 move.w     #$10, -$718a(a6)
00350c: 3d7c00048e7c move.w     #$4, -$7184(a6)
003512: 3d7c00048e7a move.w     #$4, -$7186(a6)
003518: 3d7c00048e78 move.w     #$4, -$7188(a6)
00351e: 3d7c00148e7e move.w     #$14, -$7182(a6)
003524: 3d7c00088e82 move.w     #$8, -$717e(a6)
00352a: 3d7c00048e80 move.w     #$4, -$7180(a6)
003530: 3d7c00cc8e62 move.w     #$cc, -$719e(a6)
003536: 3d7c00048e68 move.w     #$4, -$7198(a6)
00353c: 3d7c00c08e66 move.w     #$c0, -$719a(a6)
003542: 3d7c00188e64 move.w     #$18, -$719c(a6)
003548: 3d7c00068e60 move.w     #$6, -$71a0(a6)
00354e: 3d7c00248e6a move.w     #$24, -$7196(a6)
003554: 3d7c00048e6e move.w     #$4, -$7192(a6)
00355a: 3d7c00188e6c move.w     #$18, -$7194(a6)
003560: 3d7c00088e70 move.w     #$8, -$7190(a6)
003566: 3d7c00108e38 move.w     #$10, -$71c8(a6)
00356c: 3d7c00088e3a move.w     #$8, -$71c6(a6)
003572: 3d7c000c8e36 move.w     #$c, -$71ca(a6)
003578: 3d7c001c8e3c move.w     #$1c, -$71c4(a6)
00357e: 4e5d         unlk       a5
003580: 4e75         rts        
003582: 4e550000     link.w     a5, #$0
003586: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00358a: 4fefffea     lea.l      -$16(a7), a7
00358e: 42af0012     clr.l      $12(a7)
003592: 42af000e     clr.l      $e(a7)
003596: 206f0016     movea.l    $16(a7), a0
00359a: 3d68001a944a move.w     $1a(a0), -$6bb6(a6)
0035a0: 302e944a     move.w     -$6bb6(a6), d0
0035a4: b06e944c     cmp.w      -$6bb4(a6), d0
0035a8: 67000098     beq.w      $3642
0035ac: 3d6e944a944c move.w     -$6bb6(a6), -$6bb4(a6)
0035b2: 6100fe36     bsr.w      $33ea
0035b6: 0c6e0012944a cmpi.w     #$12, -$6bb6(a6)
0035bc: 65000084     bcs.w      $3642
0035c0: 7028         moveq      #$28, d0
0035c2: d0af0016     add.l      $16(a7), d0
0035c6: 2f40000e     move.l     d0, $e(a7)
0035ca: 206f000e     movea.l    $e(a7), a0
0035ce: 4a680002     tst.w      $2(a0)
0035d2: 676e         beq.b      $3642
0035d4: 206f000e     movea.l    $e(a7), a0
0035d8: 7000         moveq      #$0, d0
0035da: 3010         move.w     (a0), d0
0035dc: d0af0016     add.l      $16(a7), d0
0035e0: 2f400012     move.l     d0, $12(a7)
0035e4: 42af000a     clr.l      $a(a7)
0035e8: 6048         bra.b      $3632
0035ea: 206f0012     movea.l    $12(a7), a0
0035ee: 0c500042     cmpi.w     #$42, (a0)
0035f2: 6230         bhi.b      $3624
0035f4: 206f0012     movea.l    $12(a7), a0
0035f8: 7000         moveq      #$0, d0
0035fa: 3010         move.w     (a0), d0
0035fc: 41ee8e34     lea.l      -$71cc(a6), a0
003600: 226f0012     movea.l    $12(a7), a1
003604: 32290002     move.w     $2(a1), d1
003608: b2700a00     cmp.w      (a0, d0.l * 2), d1
00360c: 6716         beq.b      $3624
00360e: 206f0012     movea.l    $12(a7), a0
003612: 7000         moveq      #$0, d0
003614: 3010         move.w     (a0), d0
003616: 41ee8e34     lea.l      -$71cc(a6), a0
00361a: 226f0012     movea.l    $12(a7), a1
00361e: 31a900020a00 move.w     $2(a1), (a0, d0.l * 2)
003624: 202f0012     move.l     $12(a7), d0
003628: 5880         addq.l     #$4, d0
00362a: 2f400012     move.l     d0, $12(a7)
00362e: 52af000a     addq.l     #$1, $a(a7)
003632: 206f000e     movea.l    $e(a7), a0
003636: 7000         moveq      #$0, d0
003638: 30280002     move.w     $2(a0), d0
00363c: b0af000a     cmp.l      $a(a7), d0
003640: 6ea8         bgt.b      $35ea
003642: 4fef0016     lea.l      $16(a7), a7
003646: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
00364c: 4e5d         unlk       a5
00364e: 4e75         rts        
003650: 4e550000     link.w     a5, #$0
003654: 48e78000     movem.l    d0, -(a7)
003658: 302e944a     move.w     -$6bb6(a6), d0
00365c: 4e5d         unlk       a5
00365e: 4e75         rts        
003660: 4e550000     link.w     a5, #$0
003664: 48e7c080     movem.l    d0-d1/a0, -(a7)
003668: 2057         movea.l    (a7), a0
00366a: 082800000006 btst.b     #$0, $6(a0)
003670: 670c         beq.b      $367e
003672: 2057         movea.l    (a7), a0
003674: 303c00ff     move.w     #$ff, d0
003678: c0680006     and.w      $6(a0), d0
00367c: 600a         bra.b      $3688
00367e: 2057         movea.l    (a7), a0
003680: 303c00ff     move.w     #$ff, d0
003684: c0680002     and.w      $2(a0), d0
003688: 7200         moveq      #$0, d1
00368a: 3200         move.w     d0, d1
00368c: 2001         move.l     d1, d0
00368e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003694: 4e5d         unlk       a5
003696: 4e75         rts        
003698: 4e550000     link.w     a5, #$0
00369c: 48e7c080     movem.l    d0-d1/a0, -(a7)
0036a0: 2057         movea.l    (a7), a0
0036a2: 082800000006 btst.b     #$0, $6(a0)
0036a8: 6700007c     beq.w      $3726
0036ac: 2017         move.l     (a7), d0
0036ae: 610010e8     bsr.w      $4798
0036b2: 603c         bra.b      $36f0
0036b4: 202f0004     move.l     $4(a7), d0
0036b8: 610007e6     bsr.w      $3ea0
0036bc: 605e         bra.b      $371c
0036be: 202f0004     move.l     $4(a7), d0
0036c2: 61000c5c     bsr.w      $4320
0036c6: 6054         bra.b      $371c
0036c8: 202f0004     move.l     $4(a7), d0
0036cc: 61000fdc     bsr.w      $46aa
0036d0: 604a         bra.b      $371c
0036d2: 2057         movea.l    (a7), a0
0036d4: 203c000000ff move.l     #$ff, d0
0036da: c090         and.l      (a0), d0
0036dc: 720b         moveq      #$b, d1
0036de: e3a8         lsl.l      d1, d0
0036e0: 2f00         move.l     d0, -(a7)
0036e2: 7200         moveq      #$0, d1
0036e4: 202f0008     move.l     $8(a7), d0
0036e8: 6100331c     bsr.w      $6a06
0036ec: 588f         addq.l     #$4, a7
0036ee: 602c         bra.b      $371c
0036f0: 2057         movea.l    (a7), a0
0036f2: 30280004     move.w     $4(a0), d0
0036f6: 0c400014     cmpi.w     #$14, d0
0036fa: 67cc         beq.b      $36c8
0036fc: 620e         bhi.b      $370c
0036fe: 0c00000e     cmpi.b     #$e, d0
003702: 67ba         beq.b      $36be
003704: 62cc         bhi.b      $36d2
003706: 4a00         tst.b      d0
003708: 67aa         beq.b      $36b4
00370a: 60c6         bra.b      $36d2
00370c: 0c400016     cmpi.w     #$16, d0
003710: 67b6         beq.b      $36c8
003712: 62be         bhi.b      $36d2
003714: 0c400015     cmpi.w     #$15, d0
003718: 67ae         beq.b      $36c8
00371a: 60b6         bra.b      $36d2
00371c: 206f0004     movea.l    $4(a7), a0
003720: 42680006     clr.w      $6(a0)
003724: 601e         bra.b      $3744
003726: 2057         movea.l    (a7), a0
003728: 203c000000ff move.l     #$ff, d0
00372e: c090         and.l      (a0), d0
003730: 720b         moveq      #$b, d1
003732: e3a8         lsl.l      d1, d0
003734: 2f00         move.l     d0, -(a7)
003736: 222f0004     move.l     $4(a7), d1
00373a: 202f0008     move.l     $8(a7), d0
00373e: 6100320e     bsr.w      $694e
003742: 588f         addq.l     #$4, a7
003744: 4ced0100fffc movem.l    -$4(a5), a0
00374a: 4e5d         unlk       a5
00374c: 4e75         rts        
00374e: 4e550000     link.w     a5, #$0
003752: 48e78000     movem.l    d0, -(a7)
003756: 422e944e     clr.b      -$6bb2(a6)
00375a: 4e5d         unlk       a5
00375c: 4e75         rts        
00375e: 4e550000     link.w     a5, #$0
003762: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
003766: 598f         subq.l     #$4, a7
003768: 97cb         suba.l     a3, a3
00376a: 206f0008     movea.l    $8(a7), a0
00376e: 7000         moveq      #$0, d0
003770: 3010         move.w     (a0), d0
003772: d0af0004     add.l      $4(a7), d0
003776: 2e80         move.l     d0, (a7)
003778: 206f0008     movea.l    $8(a7), a0
00377c: 30280002     move.w     $2(a0), d0
003780: c0ee8eb4     mulu.w     -$714c(a6), d0
003784: d097         add.l      (a7), d0
003786: 2840         movea.l    d0, a4
003788: 2457         movea.l    (a7), a2
00378a: 6048         bra.b      $37d4
00378c: 61001246     bsr.w      $49d4
003790: 4a80         tst.l      d0
003792: 671e         beq.b      $37b2
003794: 202e8ef4     move.l     -$710c(a6), d0
003798: 61001222     bsr.w      $49bc
00379c: 35400002     move.w     d0, $2(a2)
0037a0: 202e8ef4     move.l     -$710c(a6), d0
0037a4: 5380         subq.l     #$1, d0
0037a6: 61001214     bsr.w      $49bc
0037aa: e348         lsl.w      #$1, d0
0037ac: 35400004     move.w     d0, $4(a2)
0037b0: 600c         bra.b      $37be
0037b2: 356b00020002 move.w     $2(a3), $2(a2)
0037b8: 356b00040004 move.w     $4(a3), $4(a2)
0037be: 202e8ef4     move.l     -$710c(a6), d0
0037c2: 610011f8     bsr.w      $49bc
0037c6: 3480         move.w     d0, (a2)
0037c8: 264a         movea.l    a2, a3
0037ca: 7000         moveq      #$0, d0
0037cc: 302e8eb4     move.w     -$714c(a6), d0
0037d0: d08a         add.l      a2, d0
0037d2: 2440         movea.l    d0, a2
0037d4: b5cc         cmpa.l     a4, a2
0037d6: 65b4         bcs.b      $378c
0037d8: 588f         addq.l     #$4, a7
0037da: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
0037e0: 4e5d         unlk       a5
0037e2: 4e75         rts        
0037e4: 4e550000     link.w     a5, #$0
0037e8: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
0037ec: 2440         movea.l    d0, a2
0037ee: 518f         subq.l     #$8, a7
0037f0: 97cb         suba.l     a3, a3
0037f2: 99cc         suba.l     a4, a4
0037f4: 42af0004     clr.l      $4(a7)
0037f8: 4297         clr.l      (a7)
0037fa: 282e8ec4     move.l     -$713c(a6), d4
0037fe: 2a2e8ec8     move.l     -$7138(a6), d5
003802: 2c2e8ec0     move.l     -$7140(a6), d6
003806: 206f000c     movea.l    $c(a7), a0
00380a: 7000         moveq      #$0, d0
00380c: 3010         move.w     (a0), d0
00380e: d08a         add.l      a2, d0
003810: 2f400004     move.l     d0, $4(a7)
003814: 206f000c     movea.l    $c(a7), a0
003818: 30280002     move.w     $2(a0), d0
00381c: c0ee8e44     mulu.w     -$71bc(a6), d0
003820: d0af0004     add.l      $4(a7), d0
003824: 2e80         move.l     d0, (a7)
003826: 3d7c00018eba move.w     #$1, -$7146(a6)
00382c: 3d7c00018ebc move.w     #$1, -$7144(a6)
003832: 266f0004     movea.l    $4(a7), a3
003836: 600001d0     bra.w      $3a08
00383a: b7ef0004     cmpa.l     $4(a7), a3
00383e: 6712         beq.b      $3852
003840: 7000         moveq      #$0, d0
003842: 302e8e44     move.w     -$71bc(a6), d0
003846: 2f00         move.l     d0, -(a7)
003848: 220c         move.l     a4, d1
00384a: 200b         move.l     a3, d0
00384c: 61003100     bsr.w      $694e
003850: 588f         addq.l     #$4, a7
003852: 61001180     bsr.w      $49d4
003856: 4a80         tst.l      d0
003858: 6766         beq.b      $38c0
00385a: 202e8ed0     move.l     -$7130(a6), d0
00385e: 6100115c     bsr.w      $49bc
003862: 7200         moveq      #$0, d1
003864: 322e8e5c     move.w     -$71a4(a6), d1
003868: 4c010000     mulu.l     d1, d0
00386c: 7200         moveq      #$0, d1
00386e: 322e8e3e     move.w     -$71c2(a6), d1
003872: d0721828     add.w      $28(a2, d1.l), d0
003876: 37400012     move.w     d0, $12(a3)
00387a: 202e8ed4     move.l     -$712c(a6), d0
00387e: 6100113c     bsr.w      $49bc
003882: 7200         moveq      #$0, d1
003884: 322e8e5e     move.w     -$71a2(a6), d1
003888: 4c010000     mulu.l     d1, d0
00388c: 7200         moveq      #$0, d1
00388e: 322e8e3e     move.w     -$71c2(a6), d1
003892: d0721830     add.w      $30(a2, d1.l), d0
003896: 37400014     move.w     d0, $14(a3)
00389a: 202e8ecc     move.l     -$7134(a6), d0
00389e: 6100111c     bsr.w      $49bc
0038a2: 7200         moveq      #$0, d1
0038a4: 322e8e5a     move.w     -$71a6(a6), d1
0038a8: 4c010000     mulu.l     d1, d0
0038ac: 7200         moveq      #$0, d1
0038ae: 322e8e3e     move.w     -$71c2(a6), d1
0038b2: d072182c     add.w      $2c(a2, d1.l), d0
0038b6: 7200         moveq      #$0, d1
0038b8: 322e8e46     move.w     -$71ba(a6), d1
0038bc: 37801804     move.w     d0, $4(a3, d1.l)
0038c0: 61001112     bsr.w      $49d4
0038c4: 4a80         tst.l      d0
0038c6: 672e         beq.b      $38f6
0038c8: 6100115a     bsr.w      $4a24
0038cc: 1740000a     move.b     d0, $a(a3)
0038d0: 61001152     bsr.w      $4a24
0038d4: 1740000b     move.b     d0, $b(a3)
0038d8: 6100114a     bsr.w      $4a24
0038dc: 17400010     move.b     d0, $10(a3)
0038e0: 61001142     bsr.w      $4a24
0038e4: 17400011     move.b     d0, $11(a3)
0038e8: 6100114e     bsr.w      $4a38
0038ec: 7200         moveq      #$0, d1
0038ee: 322e8e46     move.w     -$71ba(a6), d1
0038f2: 37801802     move.w     d0, $2(a3, d1.l)
0038f6: 202e8ef4     move.l     -$710c(a6), d0
0038fa: 5380         subq.l     #$1, d0
0038fc: 610010be     bsr.w      $49bc
003900: e348         lsl.w      #$1, d0
003902: 3680         move.w     d0, (a3)
003904: 202e8ef4     move.l     -$710c(a6), d0
003908: 5380         subq.l     #$1, d0
00390a: 610010b0     bsr.w      $49bc
00390e: e348         lsl.w      #$1, d0
003910: 37400002     move.w     d0, $2(a3)
003914: 610010be     bsr.w      $49d4
003918: 4a80         tst.l      d0
00391a: 671e         beq.b      $393a
00391c: 2005         move.l     d5, d0
00391e: 6100109c     bsr.w      $49bc
003922: 7200         moveq      #$0, d1
003924: 322e8e4c     move.w     -$71b4(a6), d1
003928: 4c010000     mulu.l     d1, d0
00392c: 7200         moveq      #$0, d1
00392e: 322e8e3e     move.w     -$71c2(a6), d1
003932: d072181c     add.w      $1c(a2, d1.l), d0
003936: 3d408eba     move.w     d0, -$7146(a6)
00393a: 376e8eba0004 move.w     -$7146(a6), $4(a3)
003940: 2004         move.l     d4, d0
003942: 61001078     bsr.w      $49bc
003946: 3e00         move.w     d0, d7
003948: 7000         moveq      #$0, d0
00394a: 302e8e3e     move.w     -$71c2(a6), d0
00394e: be720812     cmp.w      $12(a2, d0.l), d7
003952: 6606         bne.b      $395a
003954: 426b0006     clr.w      $6(a3)
003958: 6016         bra.b      $3970
00395a: 7000         moveq      #$0, d0
00395c: 302e8e3e     move.w     -$71c2(a6), d0
003960: 30320810     move.w     $10(a2, d0.l), d0
003964: 3207         move.w     d7, d1
003966: c2ee8e44     mulu.w     -$71bc(a6), d1
00396a: d041         add.w      d1, d0
00396c: 37400006     move.w     d0, $6(a3)
003970: 2004         move.l     d4, d0
003972: 61001048     bsr.w      $49bc
003976: 3e00         move.w     d0, d7
003978: 7000         moveq      #$0, d0
00397a: 302e8e3e     move.w     -$71c2(a6), d0
00397e: be720812     cmp.w      $12(a2, d0.l), d7
003982: 6606         bne.b      $398a
003984: 426b0008     clr.w      $8(a3)
003988: 6016         bra.b      $39a0
00398a: 7000         moveq      #$0, d0
00398c: 302e8e3e     move.w     -$71c2(a6), d0
003990: 30320810     move.w     $10(a2, d0.l), d0
003994: 3207         move.w     d7, d1
003996: c2ee8e44     mulu.w     -$71bc(a6), d1
00399a: d041         add.w      d1, d0
00399c: 37400008     move.w     d0, $8(a3)
0039a0: 61001032     bsr.w      $49d4
0039a4: 4a80         tst.l      d0
0039a6: 6704         beq.b      $39ac
0039a8: 7010         moveq      #$10, d0
0039aa: 6006         bra.b      $39b2
0039ac: 7000         moveq      #$0, d0
0039ae: 102e8ebe     move.b     -$7142(a6), d0
0039b2: 61001008     bsr.w      $49bc
0039b6: 3740000c     move.w     d0, $c(a3)
0039ba: 61001068     bsr.w      $4a24
0039be: 1740000e     move.b     d0, $e(a3)
0039c2: 61001060     bsr.w      $4a24
0039c6: 1740000f     move.b     d0, $f(a3)
0039ca: 61001008     bsr.w      $49d4
0039ce: 4a80         tst.l      d0
0039d0: 671e         beq.b      $39f0
0039d2: 2006         move.l     d6, d0
0039d4: 61000fe6     bsr.w      $49bc
0039d8: 7200         moveq      #$0, d1
0039da: 322e8eb4     move.w     -$714c(a6), d1
0039de: 4c010000     mulu.l     d1, d0
0039e2: 7200         moveq      #$0, d1
0039e4: 322e8e3e     move.w     -$71c2(a6), d1
0039e8: d0721808     add.w      $8(a2, d1.l), d0
0039ec: 3d408ebc     move.w     d0, -$7144(a6)
0039f0: 7000         moveq      #$0, d0
0039f2: 302e8e46     move.w     -$71ba(a6), d0
0039f6: 37ae8ebc0800 move.w     -$7144(a6), (a3, d0.l)
0039fc: 284b         movea.l    a3, a4
0039fe: 7000         moveq      #$0, d0
003a00: 302e8e44     move.w     -$71bc(a6), d0
003a04: d08b         add.l      a3, d0
003a06: 2640         movea.l    d0, a3
003a08: b7d7         cmpa.l     (a7), a3
003a0a: 6500fe2e     bcs.w      $383a
003a0e: 61000fc4     bsr.w      $49d4
003a12: 4a80         tst.l      d0
003a14: 6768         beq.b      $3a7e
003a16: 202e8ed0     move.l     -$7130(a6), d0
003a1a: 61000fa0     bsr.w      $49bc
003a1e: 7200         moveq      #$0, d1
003a20: 322e8e5c     move.w     -$71a4(a6), d1
003a24: 4c010000     mulu.l     d1, d0
003a28: 7200         moveq      #$0, d1
003a2a: 322e8e3e     move.w     -$71c2(a6), d1
003a2e: d0721828     add.w      $28(a2, d1.l), d0
003a32: 37400012     move.w     d0, $12(a3)
003a36: 202e8ed4     move.l     -$712c(a6), d0
003a3a: 61000f80     bsr.w      $49bc
003a3e: 7200         moveq      #$0, d1
003a40: 322e8e5e     move.w     -$71a2(a6), d1
003a44: 4c010000     mulu.l     d1, d0
003a48: 7200         moveq      #$0, d1
003a4a: 322e8e3e     move.w     -$71c2(a6), d1
003a4e: d0721830     add.w      $30(a2, d1.l), d0
003a52: 37400014     move.w     d0, $14(a3)
003a56: 202e8ecc     move.l     -$7134(a6), d0
003a5a: 61000f60     bsr.w      $49bc
003a5e: 7200         moveq      #$0, d1
003a60: 322e8e5a     move.w     -$71a6(a6), d1
003a64: 4c010000     mulu.l     d1, d0
003a68: 7200         moveq      #$0, d1
003a6a: 322e8e3e     move.w     -$71c2(a6), d1
003a6e: d072182c     add.w      $2c(a2, d1.l), d0
003a72: 7200         moveq      #$0, d1
003a74: 322e8e46     move.w     -$71ba(a6), d1
003a78: 37801804     move.w     d0, $4(a3, d1.l)
003a7c: 601e         bra.b      $3a9c
003a7e: 376c00120012 move.w     $12(a4), $12(a3)
003a84: 376c00140014 move.w     $14(a4), $14(a3)
003a8a: 7000         moveq      #$0, d0
003a8c: 302e8e46     move.w     -$71ba(a6), d0
003a90: 7200         moveq      #$0, d1
003a92: 322e8e46     move.w     -$71ba(a6), d1
003a96: 37b408041804 move.w     $4(a4, d0.l), $4(a3, d1.l)
003a9c: 61000f36     bsr.w      $49d4
003aa0: 4a80         tst.l      d0
003aa2: 671e         beq.b      $3ac2
003aa4: 2005         move.l     d5, d0
003aa6: 61000f14     bsr.w      $49bc
003aaa: 7200         moveq      #$0, d1
003aac: 322e8e4c     move.w     -$71b4(a6), d1
003ab0: 4c010000     mulu.l     d1, d0
003ab4: 7200         moveq      #$0, d1
003ab6: 322e8e3e     move.w     -$71c2(a6), d1
003aba: d072181c     add.w      $1c(a2, d1.l), d0
003abe: 3d408eba     move.w     d0, -$7146(a6)
003ac2: 376e8eba0004 move.w     -$7146(a6), $4(a3)
003ac8: 508f         addq.l     #$8, a7
003aca: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
003ad0: 4e5d         unlk       a5
003ad2: 4e75         rts        
003ad4: 4e550000     link.w     a5, #$0
003ad8: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003adc: 2440         movea.l    d0, a2
003ade: 518f         subq.l     #$8, a7
003ae0: 99cc         suba.l     a4, a4
003ae2: 282e8ec4     move.l     -$713c(a6), d4
003ae6: 206f000c     movea.l    $c(a7), a0
003aea: 7000         moveq      #$0, d0
003aec: 3010         move.w     (a0), d0
003aee: d08a         add.l      a2, d0
003af0: 2f400004     move.l     d0, $4(a7)
003af4: 206f000c     movea.l    $c(a7), a0
003af8: 30280002     move.w     $2(a0), d0
003afc: c0ee8e54     mulu.w     -$71ac(a6), d0
003b00: d0af0004     add.l      $4(a7), d0
003b04: 2e80         move.l     d0, (a7)
003b06: 266f0004     movea.l    $4(a7), a3
003b0a: 600000dc     bra.w      $3be8
003b0e: 61000ec4     bsr.w      $49d4
003b12: 4a80         tst.l      d0
003b14: 6712         beq.b      $3b28
003b16: 61000f0c     bsr.w      $4a24
003b1a: 17400006     move.b     d0, $6(a3)
003b1e: 61000edc     bsr.w      $49fc
003b22: 17400007     move.b     d0, $7(a3)
003b26: 600c         bra.b      $3b34
003b28: 176c00060006 move.b     $6(a4), $6(a3)
003b2e: 176c00070007 move.b     $7(a4), $7(a3)
003b34: b7ef0004     cmpa.l     $4(a7), a3
003b38: 6608         bne.b      $3b42
003b3a: 61000efc     bsr.w      $4a38
003b3e: 3680         move.w     d0, (a3)
003b40: 604a         bra.b      $3b8c
003b42: 61000e90     bsr.w      $49d4
003b46: 4a80         tst.l      d0
003b48: 6720         beq.b      $3b6a
003b4a: 61000e88     bsr.w      $49d4
003b4e: 4a80         tst.l      d0
003b50: 6708         beq.b      $3b5a
003b52: 61000ee4     bsr.w      $4a38
003b56: 3680         move.w     d0, (a3)
003b58: 6022         bra.b      $3b7c
003b5a: 7000         moveq      #$0, d0
003b5c: 102e8ebf     move.b     -$7141(a6), d0
003b60: 61000e5a     bsr.w      $49bc
003b64: 3214         move.w     (a4), d1
003b66: 9240         sub.w      d0, d1
003b68: 6010         bra.b      $3b7a
003b6a: 3014         move.w     (a4), d0
003b6c: 3200         move.w     d0, d1
003b6e: 7000         moveq      #$0, d0
003b70: 102e8ebf     move.b     -$7141(a6), d0
003b74: 61000e46     bsr.w      $49bc
003b78: d240         add.w      d0, d1
003b7a: 3681         move.w     d1, (a3)
003b7c: 61000e56     bsr.w      $49d4
003b80: 4a80         tst.l      d0
003b82: 6724         beq.b      $3ba8
003b84: 61000e4e     bsr.w      $49d4
003b88: 4a80         tst.l      d0
003b8a: 670a         beq.b      $3b96
003b8c: 61000eaa     bsr.w      $4a38
003b90: 37400002     move.w     d0, $2(a3)
003b94: 6028         bra.b      $3bbe
003b96: 7000         moveq      #$0, d0
003b98: 102e8ebf     move.b     -$7141(a6), d0
003b9c: 61000e1e     bsr.w      $49bc
003ba0: 322c0002     move.w     $2(a4), d1
003ba4: 9240         sub.w      d0, d1
003ba6: 6012         bra.b      $3bba
003ba8: 302c0002     move.w     $2(a4), d0
003bac: 3200         move.w     d0, d1
003bae: 7000         moveq      #$0, d0
003bb0: 102e8ebf     move.b     -$7141(a6), d0
003bb4: 61000e06     bsr.w      $49bc
003bb8: d240         add.w      d0, d1
003bba: 37410002     move.w     d1, $2(a3)
003bbe: 2004         move.l     d4, d0
003bc0: 61000dfa     bsr.w      $49bc
003bc4: 7200         moveq      #$0, d1
003bc6: 322e8e44     move.w     -$71bc(a6), d1
003bca: 4c010000     mulu.l     d1, d0
003bce: 7200         moveq      #$0, d1
003bd0: 322e8e3e     move.w     -$71c2(a6), d1
003bd4: d0721810     add.w      $10(a2, d1.l), d0
003bd8: 37400004     move.w     d0, $4(a3)
003bdc: 284b         movea.l    a3, a4
003bde: 7000         moveq      #$0, d0
003be0: 302e8e54     move.w     -$71ac(a6), d0
003be4: d08b         add.l      a3, d0
003be6: 2640         movea.l    d0, a3
003be8: b7d7         cmpa.l     (a7), a3
003bea: 6500ff22     bcs.w      $3b0e
003bee: 508f         addq.l     #$8, a7
003bf0: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
003bf6: 4e5d         unlk       a5
003bf8: 4e75         rts        
003bfa: 4e550000     link.w     a5, #$0
003bfe: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003c02: 2440         movea.l    d0, a2
003c04: 518f         subq.l     #$8, a7
003c06: 99cc         suba.l     a4, a4
003c08: 282e8ec4     move.l     -$713c(a6), d4
003c0c: 206f000c     movea.l    $c(a7), a0
003c10: 7000         moveq      #$0, d0
003c12: 3010         move.w     (a0), d0
003c14: d08a         add.l      a2, d0
003c16: 2f400004     move.l     d0, $4(a7)
003c1a: 206f000c     movea.l    $c(a7), a0
003c1e: 30280002     move.w     $2(a0), d0
003c22: c0ee8e40     mulu.w     -$71c0(a6), d0
003c26: d0af0004     add.l      $4(a7), d0
003c2a: 2e80         move.l     d0, (a7)
003c2c: 266f0004     movea.l    $4(a7), a3
003c30: 600000fa     bra.w      $3d2c
003c34: 61000d9e     bsr.w      $49d4
003c38: 4a80         tst.l      d0
003c3a: 6712         beq.b      $3c4e
003c3c: 61000de6     bsr.w      $4a24
003c40: 17400006     move.b     d0, $6(a3)
003c44: 61000db6     bsr.w      $49fc
003c48: 17400007     move.b     d0, $7(a3)
003c4c: 600c         bra.b      $3c5a
003c4e: 176c00060006 move.b     $6(a4), $6(a3)
003c54: 176c00070007 move.b     $7(a4), $7(a3)
003c5a: b7ef0004     cmpa.l     $4(a7), a3
003c5e: 6608         bne.b      $3c68
003c60: 61000dd6     bsr.w      $4a38
003c64: 3680         move.w     d0, (a3)
003c66: 604a         bra.b      $3cb2
003c68: 61000d6a     bsr.w      $49d4
003c6c: 4a80         tst.l      d0
003c6e: 6720         beq.b      $3c90
003c70: 61000d62     bsr.w      $49d4
003c74: 4a80         tst.l      d0
003c76: 6708         beq.b      $3c80
003c78: 61000dbe     bsr.w      $4a38
003c7c: 3680         move.w     d0, (a3)
003c7e: 6022         bra.b      $3ca2
003c80: 7000         moveq      #$0, d0
003c82: 102e8ebf     move.b     -$7141(a6), d0
003c86: 61000d34     bsr.w      $49bc
003c8a: 3214         move.w     (a4), d1
003c8c: 9240         sub.w      d0, d1
003c8e: 6010         bra.b      $3ca0
003c90: 3014         move.w     (a4), d0
003c92: 3200         move.w     d0, d1
003c94: 7000         moveq      #$0, d0
003c96: 102e8ebf     move.b     -$7141(a6), d0
003c9a: 61000d20     bsr.w      $49bc
003c9e: d240         add.w      d0, d1
003ca0: 3681         move.w     d1, (a3)
003ca2: 61000d30     bsr.w      $49d4
003ca6: 4a80         tst.l      d0
003ca8: 6724         beq.b      $3cce
003caa: 61000d28     bsr.w      $49d4
003cae: 4a80         tst.l      d0
003cb0: 670a         beq.b      $3cbc
003cb2: 61000d84     bsr.w      $4a38
003cb6: 37400002     move.w     d0, $2(a3)
003cba: 6028         bra.b      $3ce4
003cbc: 7000         moveq      #$0, d0
003cbe: 102e8ebf     move.b     -$7141(a6), d0
003cc2: 61000cf8     bsr.w      $49bc
003cc6: 322c0002     move.w     $2(a4), d1
003cca: 9240         sub.w      d0, d1
003ccc: 6012         bra.b      $3ce0
003cce: 302c0002     move.w     $2(a4), d0
003cd2: 3200         move.w     d0, d1
003cd4: 7000         moveq      #$0, d0
003cd6: 102e8ebf     move.b     -$7141(a6), d0
003cda: 61000ce0     bsr.w      $49bc
003cde: d240         add.w      d0, d1
003ce0: 37410002     move.w     d1, $2(a3)
003ce4: 2004         move.l     d4, d0
003ce6: 61000cd4     bsr.w      $49bc
003cea: 7200         moveq      #$0, d1
003cec: 322e8e44     move.w     -$71bc(a6), d1
003cf0: 4c010000     mulu.l     d1, d0
003cf4: 7200         moveq      #$0, d1
003cf6: 322e8e3e     move.w     -$71c2(a6), d1
003cfa: d0721810     add.w      $10(a2, d1.l), d0
003cfe: 37400004     move.w     d0, $4(a3)
003d02: 61000d4c     bsr.w      $4a50
003d06: 7200         moveq      #$0, d1
003d08: 322e8e54     move.w     -$71ac(a6), d1
003d0c: 27801800     move.l     d0, (a3, d1.l)
003d10: 700e         moveq      #$e, d0
003d12: 61000ca8     bsr.w      $49bc
003d16: 7200         moveq      #$0, d1
003d18: 322e8e54     move.w     -$71ac(a6), d1
003d1c: 37801804     move.w     d0, $4(a3, d1.l)
003d20: 284b         movea.l    a3, a4
003d22: 7000         moveq      #$0, d0
003d24: 302e8e40     move.w     -$71c0(a6), d0
003d28: d08b         add.l      a3, d0
003d2a: 2640         movea.l    d0, a3
003d2c: b7d7         cmpa.l     (a7), a3
003d2e: 6500ff04     bcs.w      $3c34
003d32: 508f         addq.l     #$8, a7
003d34: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
003d3a: 4e5d         unlk       a5
003d3c: 4e75         rts        
003d3e: 4e550000     link.w     a5, #$0
003d42: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
003d46: 598f         subq.l     #$4, a7
003d48: 97cb         suba.l     a3, a3
003d4a: 206f0008     movea.l    $8(a7), a0
003d4e: 7000         moveq      #$0, d0
003d50: 3010         move.w     (a0), d0
003d52: d0af0004     add.l      $4(a7), d0
003d56: 2840         movea.l    d0, a4
003d58: 206f0008     movea.l    $8(a7), a0
003d5c: 30280002     move.w     $2(a0), d0
003d60: c0ee8e4c     mulu.w     -$71b4(a6), d0
003d64: d08c         add.l      a4, d0
003d66: 2e80         move.l     d0, (a7)
003d68: 244c         movea.l    a4, a2
003d6a: 6000009e     bra.w      $3e0a
003d6e: b5cc         cmpa.l     a4, a2
003d70: 6608         bne.b      $3d7a
003d72: 61000cc4     bsr.w      $4a38
003d76: 3480         move.w     d0, (a2)
003d78: 604a         bra.b      $3dc4
003d7a: 61000c58     bsr.w      $49d4
003d7e: 4a80         tst.l      d0
003d80: 6720         beq.b      $3da2
003d82: 61000c50     bsr.w      $49d4
003d86: 4a80         tst.l      d0
003d88: 6708         beq.b      $3d92
003d8a: 61000cac     bsr.w      $4a38
003d8e: 3480         move.w     d0, (a2)
003d90: 6022         bra.b      $3db4
003d92: 7000         moveq      #$0, d0
003d94: 102e8ebf     move.b     -$7141(a6), d0
003d98: 61000c22     bsr.w      $49bc
003d9c: 3213         move.w     (a3), d1
003d9e: 9240         sub.w      d0, d1
003da0: 6010         bra.b      $3db2
003da2: 3013         move.w     (a3), d0
003da4: 3200         move.w     d0, d1
003da6: 7000         moveq      #$0, d0
003da8: 102e8ebf     move.b     -$7141(a6), d0
003dac: 61000c0e     bsr.w      $49bc
003db0: d240         add.w      d0, d1
003db2: 3481         move.w     d1, (a2)
003db4: 61000c1e     bsr.w      $49d4
003db8: 4a80         tst.l      d0
003dba: 6724         beq.b      $3de0
003dbc: 61000c16     bsr.w      $49d4
003dc0: 4a80         tst.l      d0
003dc2: 670a         beq.b      $3dce
003dc4: 61000c72     bsr.w      $4a38
003dc8: 35400002     move.w     d0, $2(a2)
003dcc: 6028         bra.b      $3df6
003dce: 7000         moveq      #$0, d0
003dd0: 102e8ebf     move.b     -$7141(a6), d0
003dd4: 61000be6     bsr.w      $49bc
003dd8: 322b0002     move.w     $2(a3), d1
003ddc: 9240         sub.w      d0, d1
003dde: 6012         bra.b      $3df2
003de0: 302b0002     move.w     $2(a3), d0
003de4: 3200         move.w     d0, d1
003de6: 7000         moveq      #$0, d0
003de8: 102e8ebf     move.b     -$7141(a6), d0
003dec: 61000bce     bsr.w      $49bc
003df0: d240         add.w      d0, d1
003df2: 35410002     move.w     d1, $2(a2)
003df6: 61000c04     bsr.w      $49fc
003dfa: 15400004     move.b     d0, $4(a2)
003dfe: 264a         movea.l    a2, a3
003e00: 7000         moveq      #$0, d0
003e02: 302e8e4c     move.w     -$71b4(a6), d0
003e06: d08a         add.l      a2, d0
003e08: 2440         movea.l    d0, a2
003e0a: b5d7         cmpa.l     (a7), a2
003e0c: 6500ff60     bcs.w      $3d6e
003e10: 588f         addq.l     #$4, a7
003e12: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
003e18: 4e5d         unlk       a5
003e1a: 4e75         rts        
003e1c: 4e550000     link.w     a5, #$0
003e20: 48e7c080     movem.l    d0-d1/a0, -(a7)
003e24: 4feffff4     lea.l      -$c(a7), a7
003e28: 206f0010     movea.l    $10(a7), a0
003e2c: 7000         moveq      #$0, d0
003e2e: 3010         move.w     (a0), d0
003e30: d0af000c     add.l      $c(a7), d0
003e34: 2f400004     move.l     d0, $4(a7)
003e38: 206f0010     movea.l    $10(a7), a0
003e3c: 30280002     move.w     $2(a0), d0
003e40: c0ee8e5a     mulu.w     -$71a6(a6), d0
003e44: d0af0004     add.l      $4(a7), d0
003e48: 2e80         move.l     d0, (a7)
003e4a: 2f6f00040008 move.l     $4(a7), $8(a7)
003e50: 6038         bra.b      $3e8a
003e52: 202e8ef4     move.l     -$710c(a6), d0
003e56: 61000b64     bsr.w      $49bc
003e5a: 206f0008     movea.l    $8(a7), a0
003e5e: 3080         move.w     d0, (a0)
003e60: 202e8ef4     move.l     -$710c(a6), d0
003e64: 61000b56     bsr.w      $49bc
003e68: 206f0008     movea.l    $8(a7), a0
003e6c: 31400002     move.w     d0, $2(a0)
003e70: 61000b62     bsr.w      $49d4
003e74: 206f0008     movea.l    $8(a7), a0
003e78: 31400004     move.w     d0, $4(a0)
003e7c: 7000         moveq      #$0, d0
003e7e: 302e8e5a     move.w     -$71a6(a6), d0
003e82: d0af0008     add.l      $8(a7), d0
003e86: 2f400008     move.l     d0, $8(a7)
003e8a: 202f0008     move.l     $8(a7), d0
003e8e: b097         cmp.l      (a7), d0
003e90: 65c0         bcs.b      $3e52
003e92: 4fef000c     lea.l      $c(a7), a7
003e96: 4ced0100fffc movem.l    -$4(a5), a0
003e9c: 4e5d         unlk       a5
003e9e: 4e75         rts        
003ea0: 4e550000     link.w     a5, #$0
003ea4: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
003ea8: 2440         movea.l    d0, a2
003eaa: 7000         moveq      #$0, d0
003eac: 302e8e4a     move.w     -$71b6(a6), d0
003eb0: 2200         move.l     d0, d1
003eb2: 200a         move.l     a2, d0
003eb4: 61000924     bsr.w      $47da
003eb8: 7000         moveq      #$0, d0
003eba: 302e8e3e     move.w     -$71c2(a6), d0
003ebe: 7200         moveq      #$0, d1
003ec0: 3232080a     move.w     $a(a2, d0.l), d1
003ec4: 2001         move.l     d1, d0
003ec6: 61000ba0     bsr.w      $4a68
003eca: 7200         moveq      #$0, d1
003ecc: 1200         move.b     d0, d1
003ece: 2d418ec0     move.l     d1, -$7140(a6)
003ed2: 7000         moveq      #$0, d0
003ed4: 302e8e3e     move.w     -$71c2(a6), d0
003ed8: 7200         moveq      #$0, d1
003eda: 32320812     move.w     $12(a2, d0.l), d1
003ede: 5281         addq.l     #$1, d1
003ee0: 2001         move.l     d1, d0
003ee2: 61000b84     bsr.w      $4a68
003ee6: 7200         moveq      #$0, d1
003ee8: 1200         move.b     d0, d1
003eea: 2d418ec4     move.l     d1, -$713c(a6)
003eee: 7000         moveq      #$0, d0
003ef0: 302e8e3e     move.w     -$71c2(a6), d0
003ef4: 7200         moveq      #$0, d1
003ef6: 3232081e     move.w     $1e(a2, d0.l), d1
003efa: 5281         addq.l     #$1, d1
003efc: 2001         move.l     d1, d0
003efe: 61000b68     bsr.w      $4a68
003f02: 7200         moveq      #$0, d1
003f04: 1200         move.b     d0, d1
003f06: 2d418ec8     move.l     d1, -$7138(a6)
003f0a: 7000         moveq      #$0, d0
003f0c: 302e8e3e     move.w     -$71c2(a6), d0
003f10: 7200         moveq      #$0, d1
003f12: 3232082a     move.w     $2a(a2, d0.l), d1
003f16: 5281         addq.l     #$1, d1
003f18: 2001         move.l     d1, d0
003f1a: 61000b4c     bsr.w      $4a68
003f1e: 7200         moveq      #$0, d1
003f20: 1200         move.b     d0, d1
003f22: 2d418ed0     move.l     d1, -$7130(a6)
003f26: 7000         moveq      #$0, d0
003f28: 302e8e3e     move.w     -$71c2(a6), d0
003f2c: 7200         moveq      #$0, d1
003f2e: 3232082e     move.w     $2e(a2, d0.l), d1
003f32: 5281         addq.l     #$1, d1
003f34: 2001         move.l     d1, d0
003f36: 61000b30     bsr.w      $4a68
003f3a: 7200         moveq      #$0, d1
003f3c: 1200         move.b     d0, d1
003f3e: 2d418ecc     move.l     d1, -$7134(a6)
003f42: 7000         moveq      #$0, d0
003f44: 302e8e3e     move.w     -$71c2(a6), d0
003f48: 7200         moveq      #$0, d1
003f4a: 32320832     move.w     $32(a2, d0.l), d1
003f4e: 5281         addq.l     #$1, d1
003f50: 2001         move.l     d1, d0
003f52: 61000b14     bsr.w      $4a68
003f56: 7200         moveq      #$0, d1
003f58: 1200         move.b     d0, d1
003f5a: 2d418ed4     move.l     d1, -$712c(a6)
003f5e: 7202         moveq      #$2, d1
003f60: 41ee8ebe     lea.l      -$7142(a6), a0
003f64: 2008         move.l     a0, d0
003f66: 61000872     bsr.w      $47da
003f6a: 48780001     pea.l      $1.w
003f6e: 7000         moveq      #$0, d0
003f70: 302e8e58     move.w     -$71a8(a6), d0
003f74: 2f00         move.l     d0, -(a7)
003f76: 7000         moveq      #$0, d0
003f78: 302e8e3e     move.w     -$71c2(a6), d0
003f7c: d08a         add.l      a2, d0
003f7e: 720c         moveq      #$c, d1
003f80: d081         add.l      d1, d0
003f82: 2200         move.l     d0, d1
003f84: 200a         move.l     a2, d0
003f86: 61000878     bsr.w      $4800
003f8a: 508f         addq.l     #$8, a7
003f8c: 42a7         clr.l      -(a7)
003f8e: 7000         moveq      #$0, d0
003f90: 302e8e52     move.w     -$71ae(a6), d0
003f94: 2f00         move.l     d0, -(a7)
003f96: 7000         moveq      #$0, d0
003f98: 302e8e3e     move.w     -$71c2(a6), d0
003f9c: d08a         add.l      a2, d0
003f9e: 7224         moveq      #$24, d1
003fa0: d081         add.l      d1, d0
003fa2: 2200         move.l     d0, d1
003fa4: 200a         move.l     a2, d0
003fa6: 61000858     bsr.w      $4800
003faa: 508f         addq.l     #$8, a7
003fac: 42a7         clr.l      -(a7)
003fae: 7000         moveq      #$0, d0
003fb0: 302e8e5c     move.w     -$71a4(a6), d0
003fb4: 2f00         move.l     d0, -(a7)
003fb6: 7000         moveq      #$0, d0
003fb8: 302e8e3e     move.w     -$71c2(a6), d0
003fbc: d08a         add.l      a2, d0
003fbe: 7228         moveq      #$28, d1
003fc0: d081         add.l      d1, d0
003fc2: 2200         move.l     d0, d1
003fc4: 200a         move.l     a2, d0
003fc6: 61000838     bsr.w      $4800
003fca: 508f         addq.l     #$8, a7
003fcc: 7000         moveq      #$0, d0
003fce: 302e8e3e     move.w     -$71c2(a6), d0
003fd2: 4a720832     tst.w      $32(a2, d0.l)
003fd6: 6720         beq.b      $3ff8
003fd8: 42a7         clr.l      -(a7)
003fda: 7000         moveq      #$0, d0
003fdc: 302e8e5e     move.w     -$71a2(a6), d0
003fe0: 2f00         move.l     d0, -(a7)
003fe2: 7000         moveq      #$0, d0
003fe4: 302e8e3e     move.w     -$71c2(a6), d0
003fe8: d08a         add.l      a2, d0
003fea: 7230         moveq      #$30, d1
003fec: d081         add.l      d1, d0
003fee: 2200         move.l     d0, d1
003ff0: 200a         move.l     a2, d0
003ff2: 6100080c     bsr.w      $4800
003ff6: 508f         addq.l     #$8, a7
003ff8: 6100099a     bsr.w      $4994
003ffc: 7000         moveq      #$0, d0
003ffe: 302e8e3e     move.w     -$71c2(a6), d0
004002: d08a         add.l      a2, d0
004004: 2200         move.l     d0, d1
004006: 200a         move.l     a2, d0
004008: 6100f754     bsr.w      $375e
00400c: 7000         moveq      #$0, d0
00400e: 302e8e3e     move.w     -$71c2(a6), d0
004012: d08a         add.l      a2, d0
004014: 5880         addq.l     #$4, d0
004016: 2200         move.l     d0, d1
004018: 200a         move.l     a2, d0
00401a: 6100f742     bsr.w      $375e
00401e: 7000         moveq      #$0, d0
004020: 302e8e3e     move.w     -$71c2(a6), d0
004024: d08a         add.l      a2, d0
004026: 5080         addq.l     #$8, d0
004028: 2200         move.l     d0, d1
00402a: 200a         move.l     a2, d0
00402c: 6100f730     bsr.w      $375e
004030: 7000         moveq      #$0, d0
004032: 302e8e3e     move.w     -$71c2(a6), d0
004036: d08a         add.l      a2, d0
004038: 7210         moveq      #$10, d1
00403a: d081         add.l      d1, d0
00403c: 2200         move.l     d0, d1
00403e: 200a         move.l     a2, d0
004040: 6100f7a2     bsr.w      $37e4
004044: 7000         moveq      #$0, d0
004046: 302e8e3e     move.w     -$71c2(a6), d0
00404a: d08a         add.l      a2, d0
00404c: 7214         moveq      #$14, d1
00404e: d081         add.l      d1, d0
004050: 2200         move.l     d0, d1
004052: 200a         move.l     a2, d0
004054: 6100fa7e     bsr.w      $3ad4
004058: 7000         moveq      #$0, d0
00405a: 302e8e3e     move.w     -$71c2(a6), d0
00405e: d08a         add.l      a2, d0
004060: 7218         moveq      #$18, d1
004062: d081         add.l      d1, d0
004064: 2200         move.l     d0, d1
004066: 200a         move.l     a2, d0
004068: 6100fb90     bsr.w      $3bfa
00406c: 7000         moveq      #$0, d0
00406e: 302e8e3e     move.w     -$71c2(a6), d0
004072: d08a         add.l      a2, d0
004074: 721c         moveq      #$1c, d1
004076: d081         add.l      d1, d0
004078: 2200         move.l     d0, d1
00407a: 200a         move.l     a2, d0
00407c: 6100fcc0     bsr.w      $3d3e
004080: 7000         moveq      #$0, d0
004082: 302e8e3e     move.w     -$71c2(a6), d0
004086: 4a72082e     tst.w      $2e(a2, d0.l)
00408a: 6714         beq.b      $40a0
00408c: 7000         moveq      #$0, d0
00408e: 302e8e3e     move.w     -$71c2(a6), d0
004092: d08a         add.l      a2, d0
004094: 722c         moveq      #$2c, d1
004096: d081         add.l      d1, d0
004098: 2200         move.l     d0, d1
00409a: 200a         move.l     a2, d0
00409c: 6100fd7e     bsr.w      $3e1c
0040a0: 200a         move.l     a2, d0
0040a2: 610007be     bsr.w      $4862
0040a6: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
0040ac: 4e5d         unlk       a5
0040ae: 4e75         rts        
0040b0: 4e550000     link.w     a5, #$0
0040b4: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
0040b8: 2440         movea.l    d0, a2
0040ba: 282f0030     move.l     $30(a7), d4
0040be: 518f         subq.l     #$8, a7
0040c0: 97cb         suba.l     a3, a3
0040c2: 99cc         suba.l     a4, a4
0040c4: 206f000c     movea.l    $c(a7), a0
0040c8: 4a680002     tst.w      $2(a0)
0040cc: 67000246     beq.w      $4314
0040d0: 7000         moveq      #$0, d0
0040d2: 3004         move.w     d4, d0
0040d4: 206f000c     movea.l    $c(a7), a0
0040d8: 7200         moveq      #$0, d1
0040da: 32280002     move.w     $2(a0), d1
0040de: 5381         subq.l     #$1, d1
0040e0: 4c010000     mulu.l     d1, d0
0040e4: 206f000c     movea.l    $c(a7), a0
0040e8: d050         add.w      (a0), d0
0040ea: 3a00         move.w     d0, d5
0040ec: 206f000c     movea.l    $c(a7), a0
0040f0: 3c10         move.w     (a0), d6
0040f2: 6000021c     bra.w      $4310
0040f6: 7000         moveq      #$0, d0
0040f8: 3006         move.w     d6, d0
0040fa: d08a         add.l      a2, d0
0040fc: 2640         movea.l    d0, a3
0040fe: 202e8ef4     move.l     -$710c(a6), d0
004102: 610008b8     bsr.w      $49bc
004106: 3680         move.w     d0, (a3)
004108: 610008de     bsr.w      $49e8
00410c: 17400002     move.b     d0, $2(a3)
004110: 610008c2     bsr.w      $49d4
004114: e908         lsl.b      #$4, d0
004116: d12b0002     add.b      d0, $2(a3)
00411a: 610008b8     bsr.w      $49d4
00411e: 4a80         tst.l      d0
004120: 6716         beq.b      $4138
004122: 610008d8     bsr.w      $49fc
004126: 17400003     move.b     d0, $3(a3)
00412a: 202e8ef4     move.l     -$710c(a6), d0
00412e: 6100088c     bsr.w      $49bc
004132: 37400004     move.w     d0, $4(a3)
004136: 600c         bra.b      $4144
004138: 176c00030003 move.b     $3(a4), $3(a3)
00413e: 376c00040004 move.w     $4(a4), $4(a3)
004144: 202e8ede     move.l     -$7122(a6), d0
004148: 61000872     bsr.w      $49bc
00414c: 7200         moveq      #$0, d1
00414e: 322e8eb6     move.w     -$714a(a6), d1
004152: 4c010000     mulu.l     d1, d0
004156: 7200         moveq      #$0, d1
004158: 322e8e3e     move.w     -$71c2(a6), d1
00415c: d0721804     add.w      $4(a2, d1.l), d0
004160: 37400006     move.w     d0, $6(a3)
004164: 600001a6     bra.w      $430c
004168: 7000         moveq      #$0, d0
00416a: 3006         move.w     d6, d0
00416c: d08a         add.l      a2, d0
00416e: 2e80         move.l     d0, (a7)
004170: 202e8eda     move.l     -$7126(a6), d0
004174: 61000846     bsr.w      $49bc
004178: 7200         moveq      #$0, d1
00417a: 322e8eb8     move.w     -$7148(a6), d1
00417e: 4c010000     mulu.l     d1, d0
004182: 7200         moveq      #$0, d1
004184: 322e8e3e     move.w     -$71c2(a6), d1
004188: d0721808     add.w      $8(a2, d1.l), d0
00418c: 2057         movea.l    (a7), a0
00418e: 3080         move.w     d0, (a0)
004190: 61000842     bsr.w      $49d4
004194: 4a80         tst.l      d0
004196: 6712         beq.b      $41aa
004198: 202e8eda     move.l     -$7126(a6), d0
00419c: 6100081e     bsr.w      $49bc
0041a0: 5400         addq.b     #$2, d0
0041a2: 2057         movea.l    (a7), a0
0041a4: 11400002     move.b     d0, $2(a0)
0041a8: 6008         bra.b      $41b2
0041aa: 2057         movea.l    (a7), a0
0041ac: 117c00010002 move.b     #$1, $2(a0)
0041b2: 61000820     bsr.w      $49d4
0041b6: 2057         movea.l    (a7), a0
0041b8: 11400003     move.b     d0, $3(a0)
0041bc: 6000014e     bra.w      $430c
0041c0: 7000         moveq      #$0, d0
0041c2: 3006         move.w     d6, d0
0041c4: d08a         add.l      a2, d0
0041c6: 2f400004     move.l     d0, $4(a7)
0041ca: 202e8ee2     move.l     -$711e(a6), d0
0041ce: 610007ec     bsr.w      $49bc
0041d2: 2e00         move.l     d0, d7
0041d4: 48780008     pea.l      $8.w
0041d8: 700c         moveq      #$c, d0
0041da: 4c070000     mulu.l     d7, d0
0041de: d0ae8ee8     add.l      -$7118(a6), d0
0041e2: 2200         move.l     d0, d1
0041e4: 202f0008     move.l     $8(a7), d0
0041e8: 61002764     bsr.w      $694e
0041ec: 588f         addq.l     #$4, a7
0041ee: 48780004     pea.l      $4.w
0041f2: 700c         moveq      #$c, d0
0041f4: 4c070000     mulu.l     d7, d0
0041f8: d0ae8ee8     add.l      -$7118(a6), d0
0041fc: 5080         addq.l     #$8, d0
0041fe: 2200         move.l     d0, d1
004200: 7010         moveq      #$10, d0
004202: d0af0008     add.l      $8(a7), d0
004206: 61002746     bsr.w      $694e
00420a: 588f         addq.l     #$4, a7
00420c: 610007c6     bsr.w      $49d4
004210: 4a80         tst.l      d0
004212: 6700007c     beq.w      $4290
004216: 610007bc     bsr.w      $49d4
00421a: 4a80         tst.l      d0
00421c: 6704         beq.b      $4222
00421e: 7010         moveq      #$10, d0
004220: 6006         bra.b      $4228
004222: 7000         moveq      #$0, d0
004224: 102e8ed8     move.b     -$7128(a6), d0
004228: 61000792     bsr.w      $49bc
00422c: 206f0004     movea.l    $4(a7), a0
004230: 31400008     move.w     d0, $8(a0)
004234: 6100079e     bsr.w      $49d4
004238: 4a80         tst.l      d0
00423a: 6704         beq.b      $4240
00423c: 7010         moveq      #$10, d0
00423e: 6006         bra.b      $4246
004240: 7000         moveq      #$0, d0
004242: 102e8ed8     move.b     -$7128(a6), d0
004246: 61000774     bsr.w      $49bc
00424a: 206f0004     movea.l    $4(a7), a0
00424e: 3140000a     move.w     d0, $a(a0)
004252: 61000780     bsr.w      $49d4
004256: 4a80         tst.l      d0
004258: 6704         beq.b      $425e
00425a: 7010         moveq      #$10, d0
00425c: 6006         bra.b      $4264
00425e: 7000         moveq      #$0, d0
004260: 102e8ed8     move.b     -$7128(a6), d0
004264: 61000756     bsr.w      $49bc
004268: 206f0004     movea.l    $4(a7), a0
00426c: 3140000c     move.w     d0, $c(a0)
004270: 61000762     bsr.w      $49d4
004274: 4a80         tst.l      d0
004276: 6704         beq.b      $427c
004278: 7010         moveq      #$10, d0
00427a: 6006         bra.b      $4282
00427c: 7000         moveq      #$0, d0
00427e: 102e8ed8     move.b     -$7128(a6), d0
004282: 61000738     bsr.w      $49bc
004286: 206f0004     movea.l    $4(a7), a0
00428a: 3140000e     move.w     d0, $e(a0)
00428e: 6028         bra.b      $42b8
004290: 206f0004     movea.l    $4(a7), a0
004294: 317c7fff0008 move.w     #$7fff, $8(a0)
00429a: 206f0004     movea.l    $4(a7), a0
00429e: 317c7fff000a move.w     #$7fff, $a(a0)
0042a4: 206f0004     movea.l    $4(a7), a0
0042a8: 317c7fff000c move.w     #$7fff, $c(a0)
0042ae: 206f0004     movea.l    $4(a7), a0
0042b2: 317c7fff000e move.w     #$7fff, $e(a0)
0042b8: 700d         moveq      #$d, d0
0042ba: 61000700     bsr.w      $49bc
0042be: 206f0004     movea.l    $4(a7), a0
0042c2: 31400014     move.w     d0, $14(a0)
0042c6: 206f0004     movea.l    $4(a7), a0
0042ca: 30280014     move.w     $14(a0), d0
0042ce: e348         lsl.w      #$1, d0
0042d0: 31400014     move.w     d0, $14(a0)
0042d4: 7000         moveq      #$0, d0
0042d6: 102e8ed9     move.b     -$7127(a6), d0
0042da: 610006e0     bsr.w      $49bc
0042de: 206f0004     movea.l    $4(a7), a0
0042e2: 31400016     move.w     d0, $16(a0)
0042e6: 6024         bra.b      $430c
0042e8: 202f003c     move.l     $3c(a7), d0
0042ec: 0c80000000ff cmpi.l     #$ff, d0
0042f2: 6218         bhi.b      $430c
0042f4: 0c00001c     cmpi.b     #$1c, d0
0042f8: 6700fdfc     beq.w      $40f6
0042fc: 0c00001f     cmpi.b     #$1f, d0
004300: 6700fe66     beq.w      $4168
004304: 0c000021     cmpi.b     #$21, d0
004308: 6700feb6     beq.w      $41c0
00430c: 284b         movea.l    a3, a4
00430e: dc44         add.w      d4, d6
004310: bc45         cmp.w      d5, d6
004312: 63d4         bls.b      $42e8
004314: 508f         addq.l     #$8, a7
004316: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
00431c: 4e5d         unlk       a5
00431e: 4e75         rts        
004320: 4e550000     link.w     a5, #$0
004324: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
004328: 2440         movea.l    d0, a2
00432a: 7000         moveq      #$0, d0
00432c: 302e8e8a     move.w     -$7176(a6), d0
004330: 2200         move.l     d0, d1
004332: 200a         move.l     a2, d0
004334: 610004a4     bsr.w      $47da
004338: 7000         moveq      #$0, d0
00433a: 302e8e3e     move.w     -$71c2(a6), d0
00433e: 7200         moveq      #$0, d1
004340: 3232080a     move.w     $a(a2, d0.l), d1
004344: 2001         move.l     d1, d0
004346: 61000720     bsr.w      $4a68
00434a: 7200         moveq      #$0, d1
00434c: 1200         move.b     d0, d1
00434e: 2d418eda     move.l     d1, -$7126(a6)
004352: 7000         moveq      #$0, d0
004354: 302e8e3e     move.w     -$71c2(a6), d0
004358: 7200         moveq      #$0, d1
00435a: 32320806     move.w     $6(a2, d0.l), d1
00435e: 2001         move.l     d1, d0
004360: 61000706     bsr.w      $4a68
004364: 7200         moveq      #$0, d1
004366: 1200         move.b     d0, d1
004368: 2d418ede     move.l     d1, -$7122(a6)
00436c: 7202         moveq      #$2, d1
00436e: 41ee8ee6     lea.l      -$711a(a6), a0
004372: 2008         move.l     a0, d0
004374: 61000464     bsr.w      $47da
004378: 700c         moveq      #$c, d0
00437a: c1ee8ee6     muls.w     -$711a(a6), d0
00437e: 2200         move.l     d0, d1
004380: 41ee8ee8     lea.l      -$7118(a6), a0
004384: 2008         move.l     a0, d0
004386: 610004ba     bsr.w      $4842
00438a: 306e8ee6     movea.w    -$711a(a6), a0
00438e: 2008         move.l     a0, d0
004390: 610006d6     bsr.w      $4a68
004394: 7200         moveq      #$0, d1
004396: 1200         move.b     d0, d1
004398: 2d418ee2     move.l     d1, -$711e(a6)
00439c: 7202         moveq      #$2, d1
00439e: 41ee8ed8     lea.l      -$7128(a6), a0
0043a2: 2008         move.l     a0, d0
0043a4: 61000434     bsr.w      $47da
0043a8: 610005ea     bsr.w      $4994
0043ac: 4878001c     pea.l      $1c.w
0043b0: 7000         moveq      #$0, d0
0043b2: 302e8e8e     move.w     -$7172(a6), d0
0043b6: 2f00         move.l     d0, -(a7)
0043b8: 7000         moveq      #$0, d0
0043ba: 302e8e3e     move.w     -$71c2(a6), d0
0043be: d08a         add.l      a2, d0
0043c0: 2200         move.l     d0, d1
0043c2: 200a         move.l     a2, d0
0043c4: 6100fcea     bsr.w      $40b0
0043c8: 508f         addq.l     #$8, a7
0043ca: 4878001f     pea.l      $1f.w
0043ce: 7000         moveq      #$0, d0
0043d0: 302e8eb6     move.w     -$714a(a6), d0
0043d4: 2f00         move.l     d0, -(a7)
0043d6: 7000         moveq      #$0, d0
0043d8: 302e8e3e     move.w     -$71c2(a6), d0
0043dc: d08a         add.l      a2, d0
0043de: 5880         addq.l     #$4, d0
0043e0: 2200         move.l     d0, d1
0043e2: 200a         move.l     a2, d0
0043e4: 6100fcca     bsr.w      $40b0
0043e8: 508f         addq.l     #$8, a7
0043ea: 48780021     pea.l      $21.w
0043ee: 7000         moveq      #$0, d0
0043f0: 302e8eb8     move.w     -$7148(a6), d0
0043f4: 2f00         move.l     d0, -(a7)
0043f6: 7000         moveq      #$0, d0
0043f8: 302e8e3e     move.w     -$71c2(a6), d0
0043fc: d08a         add.l      a2, d0
0043fe: 5080         addq.l     #$8, d0
004400: 2200         move.l     d0, d1
004402: 200a         move.l     a2, d0
004404: 6100fcaa     bsr.w      $40b0
004408: 508f         addq.l     #$8, a7
00440a: 200a         move.l     a2, d0
00440c: 61000454     bsr.w      $4862
004410: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
004416: 4e5d         unlk       a5
004418: 4e75         rts        
00441a: 4e550000     link.w     a5, #$0
00441e: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
004422: 2440         movea.l    d0, a2
004424: 282f0030     move.l     $30(a7), d4
004428: 2a2f0034     move.l     $34(a7), d5
00442c: 4fefffee     lea.l      -$12(a7), a7
004430: 206f0016     movea.l    $16(a7), a0
004434: 4a680002     tst.w      $2(a0)
004438: 67000262     beq.w      $469c
00443c: 7000         moveq      #$0, d0
00443e: 3004         move.w     d4, d0
004440: 206f0016     movea.l    $16(a7), a0
004444: 7200         moveq      #$0, d1
004446: 32280002     move.w     $2(a0), d1
00444a: 5381         subq.l     #$1, d1
00444c: 4c010000     mulu.l     d1, d0
004450: 206f0016     movea.l    $16(a7), a0
004454: d050         add.w      (a0), d0
004456: 3f400010     move.w     d0, $10(a7)
00445a: 6006         bra.b      $4462
00445c: d96f0010     add.w      d4, $10(a7)
004460: 601a         bra.b      $447c
004462: 0c85000000ff cmpi.l     #$ff, d5
004468: 6212         bhi.b      $447c
00446a: 0c050024     cmpi.b     #$24, d5
00446e: 67ec         beq.b      $445c
004470: 0c050025     cmpi.b     #$25, d5
004474: 67e6         beq.b      $445c
004476: 0c050026     cmpi.b     #$26, d5
00447a: 67e0         beq.b      $445c
00447c: 7000         moveq      #$0, d0
00447e: 302e8e3e     move.w     -$71c2(a6), d0
004482: 7200         moveq      #$0, d1
004484: 322e8eb2     move.w     -$714e(a6), d1
004488: d081         add.l      d1, d0
00448a: 4a720810     tst.w      $10(a2, d0.l)
00448e: 6604         bne.b      $4494
004490: 7008         moveq      #$8, d0
004492: 6002         bra.b      $4496
004494: 7004         moveq      #$4, d0
004496: 2e80         move.l     d0, (a7)
004498: 206f0016     movea.l    $16(a7), a0
00449c: 3c10         move.w     (a0), d6
00449e: 600001f6     bra.w      $4696
0044a2: 7000         moveq      #$0, d0
0044a4: 3006         move.w     d6, d0
0044a6: d08a         add.l      a2, d0
0044a8: 2f40000c     move.l     d0, $c(a7)
0044ac: 610005a2     bsr.w      $4a50
0044b0: 206f000c     movea.l    $c(a7), a0
0044b4: 2080         move.l     d0, (a0)
0044b6: 61000598     bsr.w      $4a50
0044ba: 206f000c     movea.l    $c(a7), a0
0044be: 60000194     bra.w      $4654
0044c2: 7000         moveq      #$0, d0
0044c4: 3006         move.w     d6, d0
0044c6: d08a         add.l      a2, d0
0044c8: 2640         movea.l    d0, a3
0044ca: 206f0016     movea.l    $16(a7), a0
0044ce: bc50         cmp.w      (a0), d6
0044d0: 6608         bne.b      $44da
0044d2: 61000564     bsr.w      $4a38
0044d6: 3680         move.w     d0, (a3)
0044d8: 604a         bra.b      $4524
0044da: 610004f8     bsr.w      $49d4
0044de: 4a80         tst.l      d0
0044e0: 6720         beq.b      $4502
0044e2: 610004f0     bsr.w      $49d4
0044e6: 4a80         tst.l      d0
0044e8: 6708         beq.b      $44f2
0044ea: 6100054c     bsr.w      $4a38
0044ee: 3680         move.w     d0, (a3)
0044f0: 6022         bra.b      $4514
0044f2: 7000         moveq      #$0, d0
0044f4: 102e8ef2     move.b     -$710e(a6), d0
0044f8: 610004c2     bsr.w      $49bc
0044fc: 3214         move.w     (a4), d1
0044fe: 9240         sub.w      d0, d1
004500: 6010         bra.b      $4512
004502: 3014         move.w     (a4), d0
004504: 3200         move.w     d0, d1
004506: 7000         moveq      #$0, d0
004508: 102e8ef2     move.b     -$710e(a6), d0
00450c: 610004ae     bsr.w      $49bc
004510: d240         add.w      d0, d1
004512: 3681         move.w     d1, (a3)
004514: 610004be     bsr.w      $49d4
004518: 4a80         tst.l      d0
00451a: 6726         beq.b      $4542
00451c: 610004b6     bsr.w      $49d4
004520: 4a80         tst.l      d0
004522: 670c         beq.b      $4530
004524: 61000512     bsr.w      $4a38
004528: 37400002     move.w     d0, $2(a3)
00452c: 60000164     bra.w      $4692
004530: 7000         moveq      #$0, d0
004532: 102e8ef2     move.b     -$710e(a6), d0
004536: 61000484     bsr.w      $49bc
00453a: 322c0002     move.w     $2(a4), d1
00453e: 9240         sub.w      d0, d1
004540: 6012         bra.b      $4554
004542: 302c0002     move.w     $2(a4), d0
004546: 3200         move.w     d0, d1
004548: 7000         moveq      #$0, d0
00454a: 102e8ef2     move.b     -$710e(a6), d0
00454e: 6100046c     bsr.w      $49bc
004552: d240         add.w      d0, d1
004554: 37410002     move.w     d1, $2(a3)
004558: 60000138     bra.w      $4692
00455c: 7000         moveq      #$0, d0
00455e: 3006         move.w     d6, d0
004560: d08a         add.l      a2, d0
004562: 2f400008     move.l     d0, $8(a7)
004566: 610004a8     bsr.w      $4a10
00456a: 206f0008     movea.l    $8(a7), a0
00456e: 1080         move.b     d0, (a0)
004570: 61000462     bsr.w      $49d4
004574: 206f0008     movea.l    $8(a7), a0
004578: 11400001     move.b     d0, $1(a0)
00457c: 202e8ef4     move.l     -$710c(a6), d0
004580: 5380         subq.l     #$1, d0
004582: 61000438     bsr.w      $49bc
004586: e348         lsl.w      #$1, d0
004588: 206f0008     movea.l    $8(a7), a0
00458c: 31400002     move.w     d0, $2(a0)
004590: 60000100     bra.w      $4692
004594: 7000         moveq      #$0, d0
004596: 3006         move.w     d6, d0
004598: d08a         add.l      a2, d0
00459a: 2f400004     move.l     d0, $4(a7)
00459e: 202e8ef4     move.l     -$710c(a6), d0
0045a2: 61000418     bsr.w      $49bc
0045a6: 206f0004     movea.l    $4(a7), a0
0045aa: 3080         move.w     d0, (a0)
0045ac: 7000         moveq      #$0, d0
0045ae: 302e8e3e     move.w     -$71c2(a6), d0
0045b2: 3032080c     move.w     $c(a2, d0.l), d0
0045b6: 3200         move.w     d0, d1
0045b8: 202e8eec     move.l     -$7114(a6), d0
0045bc: 610003fe     bsr.w      $49bc
0045c0: 4c170000     mulu.l     (a7), d0
0045c4: d240         add.w      d0, d1
0045c6: 206f0004     movea.l    $4(a7), a0
0045ca: 31410002     move.w     d1, $2(a0)
0045ce: 61000404     bsr.w      $49d4
0045d2: 4a80         tst.l      d0
0045d4: 6704         beq.b      $45da
0045d6: 7020         moveq      #$20, d0
0045d8: 6006         bra.b      $45e0
0045da: 7000         moveq      #$0, d0
0045dc: 102e8ef1     move.b     -$710f(a6), d0
0045e0: 610003da     bsr.w      $49bc
0045e4: 206f0004     movea.l    $4(a7), a0
0045e8: 21400004     move.l     d0, $4(a0)
0045ec: 61000462     bsr.w      $4a50
0045f0: 206f0004     movea.l    $4(a7), a0
0045f4: 21400008     move.l     d0, $8(a0)
0045f8: 61000456     bsr.w      $4a50
0045fc: 206f0004     movea.l    $4(a7), a0
004600: 2140000c     move.l     d0, $c(a0)
004604: 6000008c     bra.w      $4692
004608: 7000         moveq      #$0, d0
00460a: 3006         move.w     d6, d0
00460c: d08a         add.l      a2, d0
00460e: 2e00         move.l     d0, d7
004610: 202e8ef4     move.l     -$710c(a6), d0
004614: 610003a6     bsr.w      $49bc
004618: 2047         movea.l    d7, a0
00461a: 3080         move.w     d0, (a0)
00461c: 7000         moveq      #$0, d0
00461e: 302e8e3e     move.w     -$71c2(a6), d0
004622: 3032080c     move.w     $c(a2, d0.l), d0
004626: 3200         move.w     d0, d1
004628: 202e8eec     move.l     -$7114(a6), d0
00462c: 6100038e     bsr.w      $49bc
004630: 4c170000     mulu.l     (a7), d0
004634: d240         add.w      d0, d1
004636: 2047         movea.l    d7, a0
004638: 31410002     move.w     d1, $2(a0)
00463c: 61000396     bsr.w      $49d4
004640: 4a80         tst.l      d0
004642: 6704         beq.b      $4648
004644: 7020         moveq      #$20, d0
004646: 6006         bra.b      $464e
004648: 7000         moveq      #$0, d0
00464a: 102e8ef0     move.b     -$7110(a6), d0
00464e: 6100036c     bsr.w      $49bc
004652: 2047         movea.l    d7, a0
004654: 21400004     move.l     d0, $4(a0)
004658: 6038         bra.b      $4692
00465a: 0c8500000024 cmpi.l     #$24, d5
004660: 6700fefa     beq.w      $455c
004664: 6216         bhi.b      $467c
004666: 0c05000a     cmpi.b     #$a, d5
00466a: 6700fe36     beq.w      $44a2
00466e: 6222         bhi.b      $4692
004670: 0c8500000009 cmpi.l     #$9, d5
004676: 6700fe4a     beq.w      $44c2
00467a: 6016         bra.b      $4692
00467c: 0c8500000026 cmpi.l     #$26, d5
004682: 6700ff84     beq.w      $4608
004686: 620a         bhi.b      $4692
004688: 0c8500000025 cmpi.l     #$25, d5
00468e: 6700ff04     beq.w      $4594
004692: 284b         movea.l    a3, a4
004694: dc44         add.w      d4, d6
004696: bc6f0010     cmp.w      $10(a7), d6
00469a: 63be         bls.b      $465a
00469c: 4fef0012     lea.l      $12(a7), a7
0046a0: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
0046a6: 4e5d         unlk       a5
0046a8: 4e75         rts        
0046aa: 4e550000     link.w     a5, #$0
0046ae: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0046b2: 2440         movea.l    d0, a2
0046b4: 7000         moveq      #$0, d0
0046b6: 302e8eae     move.w     -$7152(a6), d0
0046ba: 2200         move.l     d0, d1
0046bc: 200a         move.l     a2, d0
0046be: 6100011a     bsr.w      $47da
0046c2: 7000         moveq      #$0, d0
0046c4: 302e8e3e     move.w     -$71c2(a6), d0
0046c8: 7200         moveq      #$0, d1
0046ca: 3232080e     move.w     $e(a2, d0.l), d1
0046ce: 5281         addq.l     #$1, d1
0046d0: 2001         move.l     d1, d0
0046d2: 61000394     bsr.w      $4a68
0046d6: 7200         moveq      #$0, d1
0046d8: 1200         move.b     d0, d1
0046da: 2d418eec     move.l     d1, -$7114(a6)
0046de: 7204         moveq      #$4, d1
0046e0: 41ee8ef0     lea.l      -$7110(a6), a0
0046e4: 2008         move.l     a0, d0
0046e6: 610000f2     bsr.w      $47da
0046ea: 610002a8     bsr.w      $4994
0046ee: 48780024     pea.l      $24.w
0046f2: 7000         moveq      #$0, d0
0046f4: 302e8eaa     move.w     -$7156(a6), d0
0046f8: 2f00         move.l     d0, -(a7)
0046fa: 7000         moveq      #$0, d0
0046fc: 302e8e3e     move.w     -$71c2(a6), d0
004700: d08a         add.l      a2, d0
004702: 2200         move.l     d0, d1
004704: 200a         move.l     a2, d0
004706: 6100fd12     bsr.w      $441a
00470a: 508f         addq.l     #$8, a7
00470c: 48780025     pea.l      $25.w
004710: 7000         moveq      #$0, d0
004712: 302e8ea8     move.w     -$7158(a6), d0
004716: 2f00         move.l     d0, -(a7)
004718: 7000         moveq      #$0, d0
00471a: 302e8e3e     move.w     -$71c2(a6), d0
00471e: d08a         add.l      a2, d0
004720: 5880         addq.l     #$4, d0
004722: 2200         move.l     d0, d1
004724: 200a         move.l     a2, d0
004726: 6100fcf2     bsr.w      $441a
00472a: 508f         addq.l     #$8, a7
00472c: 48780026     pea.l      $26.w
004730: 7000         moveq      #$0, d0
004732: 302e8eac     move.w     -$7154(a6), d0
004736: 2f00         move.l     d0, -(a7)
004738: 7000         moveq      #$0, d0
00473a: 302e8e3e     move.w     -$71c2(a6), d0
00473e: d08a         add.l      a2, d0
004740: 5080         addq.l     #$8, d0
004742: 2200         move.l     d0, d1
004744: 200a         move.l     a2, d0
004746: 6100fcd2     bsr.w      $441a
00474a: 508f         addq.l     #$8, a7
00474c: 7000         moveq      #$0, d0
00474e: 302e8e3e     move.w     -$71c2(a6), d0
004752: 7200         moveq      #$0, d1
004754: 322e8eb2     move.w     -$714e(a6), d1
004758: d081         add.l      d1, d0
00475a: 4a720810     tst.w      $10(a2, d0.l)
00475e: 660a         bne.b      $476a
004760: 4878000a     pea.l      $a.w
004764: 48780008     pea.l      $8.w
004768: 6008         bra.b      $4772
00476a: 48780009     pea.l      $9.w
00476e: 48780004     pea.l      $4.w
004772: 7000         moveq      #$0, d0
004774: 302e8e3e     move.w     -$71c2(a6), d0
004778: d08a         add.l      a2, d0
00477a: 720c         moveq      #$c, d1
00477c: d081         add.l      d1, d0
00477e: 2200         move.l     d0, d1
004780: 200a         move.l     a2, d0
004782: 6100fc96     bsr.w      $441a
004786: 508f         addq.l     #$8, a7
004788: 200a         move.l     a2, d0
00478a: 610000d6     bsr.w      $4862
00478e: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
004794: 4e5d         unlk       a5
004796: 4e75         rts        
004798: 4e550000     link.w     a5, #$0
00479c: 48e7c080     movem.l    d0-d1/a0, -(a7)
0047a0: 598f         subq.l     #$4, a7
0047a2: 206f0004     movea.l    $4(a7), a0
0047a6: 303c00ff     move.w     #$ff, d0
0047aa: c0680006     and.w      $6(a0), d0
0047ae: 7200         moveq      #$0, d1
0047b0: 3200         move.w     d0, d1
0047b2: 2e81         move.l     d1, (a7)
0047b4: 700b         moveq      #$b, d0
0047b6: 2217         move.l     (a7), d1
0047b8: e1a9         lsl.l      d0, d1
0047ba: 2001         move.l     d1, d0
0047bc: 610002aa     bsr.w      $4a68
0047c0: 7200         moveq      #$0, d1
0047c2: 1200         move.b     d0, d1
0047c4: 2d418ef4     move.l     d1, -$710c(a6)
0047c8: 2d6f00048ef8 move.l     $4(a7), -$7108(a6)
0047ce: 588f         addq.l     #$4, a7
0047d0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0047d6: 4e5d         unlk       a5
0047d8: 4e75         rts        
0047da: 4e550000     link.w     a5, #$0
0047de: 48e7c000     movem.l    d0-d1, -(a7)
0047e2: 2f2f0004     move.l     $4(a7), -(a7)
0047e6: 222e8ef8     move.l     -$7108(a6), d1
0047ea: 202f0004     move.l     $4(a7), d0
0047ee: 6100215e     bsr.w      $694e
0047f2: 588f         addq.l     #$4, a7
0047f4: 202f0004     move.l     $4(a7), d0
0047f8: d1ae8ef8     add.l      d0, -$7108(a6)
0047fc: 4e5d         unlk       a5
0047fe: 4e75         rts        
004800: 4e550000     link.w     a5, #$0
004804: 48e7c080     movem.l    d0-d1/a0, -(a7)
004808: 598f         subq.l     #$4, a7
00480a: 206f0008     movea.l    $8(a7), a0
00480e: 30280002     move.w     $2(a0), d0
004812: c0ef001a     mulu.w     $1a(a7), d0
004816: 2e80         move.l     d0, (a7)
004818: 4a2f001f     tst.b      $1f(a7)
00481c: 6708         beq.b      $4826
00481e: 7000         moveq      #$0, d0
004820: 302f001a     move.w     $1a(a7), d0
004824: d197         add.l      d0, (a7)
004826: 2217         move.l     (a7), d1
004828: 206f0008     movea.l    $8(a7), a0
00482c: 7000         moveq      #$0, d0
00482e: 3010         move.w     (a0), d0
004830: d0af0004     add.l      $4(a7), d0
004834: 61a4         bsr.b      $47da
004836: 588f         addq.l     #$4, a7
004838: 4ced0100fffc movem.l    -$4(a5), a0
00483e: 4e5d         unlk       a5
004840: 4e75         rts        
004842: 4e550000     link.w     a5, #$0
004846: 48e7c080     movem.l    d0-d1/a0, -(a7)
00484a: 2057         movea.l    (a7), a0
00484c: 20ae8ef8     move.l     -$7108(a6), (a0)
004850: 202f0004     move.l     $4(a7), d0
004854: d1ae8ef8     add.l      d0, -$7108(a6)
004858: 4ced0100fffc movem.l    -$4(a5), a0
00485e: 4e5d         unlk       a5
004860: 4e75         rts        
004862: 4e550000     link.w     a5, #$0
004866: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
00486a: 4fefff3c     lea.l      -$c4(a7), a7
00486e: 202e8ef4     move.l     -$710c(a6), d0
004872: 61000148     bsr.w      $49bc
004876: 3f4000c2     move.w     d0, $c2(a7)
00487a: 202e8ef4     move.l     -$710c(a6), d0
00487e: 6100013c     bsr.w      $49bc
004882: 3f4000c0     move.w     d0, $c0(a7)
004886: 4a6f00c2     tst.w      $c2(a7)
00488a: 6608         bne.b      $4894
00488c: 4a6f00c0     tst.w      $c0(a7)
004890: 670000f4     beq.w      $4986
004894: 7800         moveq      #$0, d4
004896: 49d7         lea.l      (a7), a4
004898: 6028         bra.b      $48c2
00489a: 7005         moveq      #$5, d0
00489c: 6100011e     bsr.w      $49bc
0048a0: 1880         move.b     d0, (a4)
0048a2: 7a00         moveq      #$0, d5
0048a4: 6010         bra.b      $48b6
0048a6: 7000         moveq      #$0, d0
0048a8: 1005         move.b     d5, d0
0048aa: 2200         move.l     d0, d1
0048ac: 61000162     bsr.w      $4a10
0048b0: 19801801     move.b     d0, $1(a4, d1.l)
0048b4: 5205         addq.b     #$1, d5
0048b6: ba14         cmp.b      (a4), d5
0048b8: 65ec         bcs.b      $48a6
0048ba: 5204         addq.b     #$1, d4
0048bc: d9fc00000020 adda.l     #$20, a4
0048c2: 0c040006     cmpi.b     #$6, d4
0048c6: 65d2         bcs.b      $489a
0048c8: 7000         moveq      #$0, d0
0048ca: 302f00c0     move.w     $c0(a7), d0
0048ce: d0af00c4     add.l      $c4(a7), d0
0048d2: 2440         movea.l    d0, a2
0048d4: 7000         moveq      #$0, d0
0048d6: 302f00c2     move.w     $c2(a7), d0
0048da: d0af00c4     add.l      $c4(a7), d0
0048de: 2640         movea.l    d0, a3
0048e0: 600000a0     bra.w      $4982
0048e4: 610000ee     bsr.w      $49d4
0048e8: 41ee9450     lea.l      -$6bb0(a6), a0
0048ec: 6066         bra.b      $4954
0048ee: 610000f8     bsr.w      $49e8
0048f2: 41ee9452     lea.l      -$6bae(a6), a0
0048f6: 605c         bra.b      $4954
0048f8: 61000102     bsr.w      $49fc
0048fc: 41ee9456     lea.l      -$6baa(a6), a0
004900: 6052         bra.b      $4954
004902: 6100010c     bsr.w      $4a10
004906: 1800         move.b     d0, d4
004908: 0c040026     cmpi.b     #$26, d4
00490c: 6304         bls.b      $4912
00490e: 1684         move.b     d4, (a3)
004910: 606e         bra.b      $4980
004912: 0c04001b     cmpi.b     #$1b, d4
004916: 6334         bls.b      $494c
004918: 41d7         lea.l      (a7), a0
00491a: 2008         move.l     a0, d0
00491c: 7200         moveq      #$0, d1
00491e: 1204         move.b     d4, d1
004920: 04410021     subi.w     #$21, d1
004924: 48c1         ext.l      d1
004926: eb89         lsl.l      #$5, d1
004928: d081         add.l      d1, d0
00492a: 2840         movea.l    d0, a4
00492c: 7000         moveq      #$0, d0
00492e: 1014         move.b     (a4), d0
004930: 2f00         move.l     d0, -(a7)
004932: 200c         move.l     a4, d0
004934: 5280         addq.l     #$1, d0
004936: 2200         move.l     d0, d1
004938: 200b         move.l     a3, d0
00493a: 61002012     bsr.w      $694e
00493e: 588f         addq.l     #$4, a7
004940: 7000         moveq      #$0, d0
004942: 1014         move.b     (a4), d0
004944: 5340         subq.w     #$1, d0
004946: 48c0         ext.l      d0
004948: d7c0         adda.l     d0, a3
00494a: 6034         bra.b      $4980
00494c: 7000         moveq      #$0, d0
00494e: 1004         move.b     d4, d0
004950: 41ee945e     lea.l      -$6ba2(a6), a0
004954: 16b00800     move.b     (a0, d0.l), (a3)
004958: 6026         bra.b      $4980
00495a: 6100008c     bsr.w      $49e8
00495e: 0c80000000ff cmpi.l     #$ff, d0
004964: 629c         bhi.b      $4902
004966: 4a00         tst.b      d0
004968: 6700ff7a     beq.w      $48e4
00496c: 0c000001     cmpi.b     #$1, d0
004970: 6700ff7c     beq.w      $48ee
004974: 0c000002     cmpi.b     #$2, d0
004978: 6700ff7e     beq.w      $48f8
00497c: 6000ff84     bra.w      $4902
004980: 528b         addq.l     #$1, a3
004982: b7ca         cmpa.l     a2, a3
004984: 63d4         bls.b      $495a
004986: 4fef00c4     lea.l      $c4(a7), a7
00498a: 4ced1d32ffe4 movem.l    -$1c(a5), d1/d4-d5/a0/a2-a4
004990: 4e5d         unlk       a5
004992: 4e75         rts        
004994: 4e550000     link.w     a5, #$0
004998: 48e78000     movem.l    d0, -(a7)
00499c: 202e8ef8     move.l     -$7108(a6), d0
0049a0: 61000006     bsr.w      $49a8
0049a4: 4e5d         unlk       a5
0049a6: 4e75         rts        
0049a8: 4e550000     link.w     a5, #$0
0049ac: 48e78000     movem.l    d0, -(a7)
0049b0: 2d578f00     move.l     (a7), -$7100(a6)
0049b4: 42ae8efc     clr.l      -$7104(a6)
0049b8: 4e5d         unlk       a5
0049ba: 4e75         rts        
0049bc: 48e74080     movem.l    d1/a0, -(a7)
0049c0: 41ee8efc     lea.l      -$7104(a6), a0
0049c4: 2210         move.l     (a0), d1
0049c6: d198         add.l      d0, (a0)+
0049c8: 2050         movea.l    (a0), a0
0049ca: e9d00860     bfextu     (a0){1:0}, d0
0049ce: 4cdf0102     movem.l    (a7)+, d1/a0
0049d2: 4e75         rts        
0049d4: 2f08         move.l     a0, -(a7)
0049d6: 41ee8efc     lea.l      -$7104(a6), a0
0049da: 2010         move.l     (a0), d0
0049dc: 5298         addq.l     #$1, (a0)+
0049de: 2050         movea.l    (a0), a0
0049e0: e9d00801     bfextu     (a0){0:1}, d0
0049e4: 205f         movea.l    (a7)+, a0
0049e6: 4e75         rts        
0049e8: 2f08         move.l     a0, -(a7)
0049ea: 41ee8efc     lea.l      -$7104(a6), a0
0049ee: 2010         move.l     (a0), d0
0049f0: 5498         addq.l     #$2, (a0)+
0049f2: 2050         movea.l    (a0), a0
0049f4: e9d00802     bfextu     (a0){0:2}, d0
0049f8: 205f         movea.l    (a7)+, a0
0049fa: 4e75         rts        
0049fc: 2f08         move.l     a0, -(a7)
0049fe: 41ee8efc     lea.l      -$7104(a6), a0
004a02: 2010         move.l     (a0), d0
004a04: 5698         addq.l     #$3, (a0)+
004a06: 2050         movea.l    (a0), a0
004a08: e9d00803     bfextu     (a0){0:3}, d0
004a0c: 205f         movea.l    (a7)+, a0
004a0e: 4e75         rts        
004a10: 2f08         move.l     a0, -(a7)
004a12: 41ee8efc     lea.l      -$7104(a6), a0
004a16: 2010         move.l     (a0), d0
004a18: 5e98         addq.l     #$7, (a0)+
004a1a: 2050         movea.l    (a0), a0
004a1c: e9d00807     bfextu     (a0){0:7}, d0
004a20: 205f         movea.l    (a7)+, a0
004a22: 4e75         rts        
004a24: 2f08         move.l     a0, -(a7)
004a26: 41ee8efc     lea.l      -$7104(a6), a0
004a2a: 2010         move.l     (a0), d0
004a2c: 5098         addq.l     #$8, (a0)+
004a2e: 2050         movea.l    (a0), a0
004a30: e9d00808     bfextu     (a0){0:8}, d0
004a34: 205f         movea.l    (a7)+, a0
004a36: 4e75         rts        
004a38: 2f08         move.l     a0, -(a7)
004a3a: 41ee8efc     lea.l      -$7104(a6), a0
004a3e: 2010         move.l     (a0), d0
004a40: 069800000010 addi.l     #$10, (a0)+
004a46: 2050         movea.l    (a0), a0
004a48: e9d00810     bfextu     (a0){0:16}, d0
004a4c: 205f         movea.l    (a7)+, a0
004a4e: 4e75         rts        
004a50: 2f08         move.l     a0, -(a7)
004a52: 41ee8efc     lea.l      -$7104(a6), a0
004a56: 2010         move.l     (a0), d0
004a58: 069800000020 addi.l     #$20, (a0)+
004a5e: 2050         movea.l    (a0), a0
004a60: e9d00800     bfextu     (a0){0:32}, d0
004a64: 205f         movea.l    (a7)+, a0
004a66: 4e75         rts        
004a68: 4e550000     link.w     a5, #$0
004a6c: 48e78c00     movem.l    d0/d4-d5, -(a7)
004a70: 2800         move.l     d0, d4
004a72: 7a00         moveq      #$0, d5
004a74: 0c440001     cmpi.w     #$1, d4
004a78: 6604         bne.b      $4a7e
004a7a: 7001         moveq      #$1, d0
004a7c: 600e         bra.b      $4a8c
004a7e: 5344         subq.w     #$1, d4
004a80: 6004         bra.b      $4a86
004a82: e24c         lsr.w      #$1, d4
004a84: 5205         addq.b     #$1, d5
004a86: 4a44         tst.w      d4
004a88: 66f8         bne.b      $4a82
004a8a: 1005         move.b     d5, d0
004a8c: 4ced0030fff8 movem.l    -$8(a5), d4-d5
004a92: 4e5d         unlk       a5
004a94: 4e75         rts        
004a96: 4e550000     link.w     a5, #$0
004a9a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004a9e: 202f0004     move.l     $4(a7), d0
004aa2: d0af0018     add.l      $18(a7), d0
004aa6: 5380         subq.l     #$1, d0
004aa8: 61001d96     bsr.w      $6840
004aac: 2057         movea.l    (a7), a0
004aae: 2080         move.l     d0, (a0)
004ab0: 6604         bne.b      $4ab6
004ab2: 7000         moveq      #$0, d0
004ab4: 6026         bra.b      $4adc
004ab6: 2057         movea.l    (a7), a0
004ab8: 2257         movea.l    (a7), a1
004aba: 23500004     move.l     (a0), $4(a1)
004abe: 6006         bra.b      $4ac6
004ac0: 2057         movea.l    (a7), a0
004ac2: 52a80004     addq.l     #$1, $4(a0)
004ac6: 2057         movea.l    (a7), a0
004ac8: 20280004     move.l     $4(a0), d0
004acc: 4c6f08010018 divs.l     $18(a7), d0
004ad2: 4a81         tst.l      d1
004ad4: 66ea         bne.b      $4ac0
004ad6: 2057         movea.l    (a7), a0
004ad8: 20280004     move.l     $4(a0), d0
004adc: 4ced0300fff8 movem.l    -$8(a5), a0-a1
004ae2: 4e5d         unlk       a5
004ae4: 4e75         rts        
004ae6: 4e550000     link.w     a5, #$0
004aea: 48e78080     movem.l    d0/a0, -(a7)
004aee: 2057         movea.l    (a7), a0
004af0: 2010         move.l     (a0), d0
004af2: 61001d58     bsr.w      $684c
004af6: 4ced0100fffc movem.l    -$4(a5), a0
004afc: 4e5d         unlk       a5
004afe: 4e75         rts        
004b00: 4e550000     link.w     a5, #$0
004b04: 48e7c080     movem.l    d0-d1/a0, -(a7)
004b08: 61001d16     bsr.w      $6820
004b0c: 2200         move.l     d0, d1
004b0e: 41fa007a     lea.l      $4b8a(pc), a0
004b12: 2008         move.l     a0, d0
004b14: 61001c6e     bsr.w      $6784
004b18: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004b1e: 4e5d         unlk       a5
004b20: 4e75         rts        
004b22: 4e550000     link.w     a5, #$0
004b26: 48e78000     movem.l    d0, -(a7)
004b2a: 42ae947a     clr.l      -$6b86(a6)
004b2e: 7000         moveq      #$0, d0
004b30: 4e5d         unlk       a5
004b32: 4e75         rts        
004b34: 4e550000     link.w     a5, #$0
004b38: 48e78000     movem.l    d0, -(a7)
004b3c: 7010         moveq      #$10, d0
004b3e: b097         cmp.l      (a7), d0
004b40: 6d0c         blt.b      $4b4e
004b42: 7001         moveq      #$1, d0
004b44: b097         cmp.l      (a7), d0
004b46: 6e06         bgt.b      $4b4e
004b48: 2017         move.l     (a7), d0
004b4a: 81ae947a     or.l       d0, -$6b86(a6)
004b4e: 4e5d         unlk       a5
004b50: 4e75         rts        
004b52: 4e550000     link.w     a5, #$0
004b56: 48e78000     movem.l    d0, -(a7)
004b5a: 7010         moveq      #$10, d0
004b5c: b097         cmp.l      (a7), d0
004b5e: 6d16         blt.b      $4b76
004b60: 7001         moveq      #$1, d0
004b62: b097         cmp.l      (a7), d0
004b64: 6e10         bgt.b      $4b76
004b66: 202e947a     move.l     -$6b86(a6), d0
004b6a: c097         and.l      (a7), d0
004b6c: b097         cmp.l      (a7), d0
004b6e: 6606         bne.b      $4b76
004b70: 2017         move.l     (a7), d0
004b72: b1ae947a     eor.l      d0, -$6b86(a6)
004b76: 4e5d         unlk       a5
004b78: 4e75         rts        
004b7a: 4e550000     link.w     a5, #$0
004b7e: 48e78000     movem.l    d0, -(a7)
004b82: 202e947a     move.l     -$6b86(a6), d0
004b86: 4e5d         unlk       a5
004b88: 4e75         rts        
004b8a: 25733a004e55 move.l     (a3, d3.l * 2), $4e55(a2)
004b90: 000048e7     ori.b      #$e7, d0
004b94: 8080         or.l       d0, d0
004b96: 202e9482     move.l     -$6b7e(a6), d0
004b9a: 52ae9482     addq.l     #$1, -$6b7e(a6)
004b9e: 41ee8f04     lea.l      -$70fc(a6), a0
004ba2: 21970c00     move.l     (a7), (a0, d0.l * 4)
004ba6: 703f         moveq      #$3f, d0
004ba8: b0ae9482     cmp.l      -$6b7e(a6), d0
004bac: 6c04         bge.b      $4bb2
004bae: 42ae9482     clr.l      -$6b7e(a6)
004bb2: 4ced0100fffc movem.l    -$4(a5), a0
004bb8: 4e5d         unlk       a5
004bba: 4e75         rts        
004bbc: 4e550000     link.w     a5, #$0
004bc0: 48e78080     movem.l    d0/a0, -(a7)
004bc4: 598f         subq.l     #$4, a7
004bc6: 202e947e     move.l     -$6b82(a6), d0
004bca: b0ae9482     cmp.l      -$6b7e(a6), d0
004bce: 6604         bne.b      $4bd4
004bd0: 70ff         moveq      #$ff, d0
004bd2: 601e         bra.b      $4bf2
004bd4: 202e947e     move.l     -$6b82(a6), d0
004bd8: 52ae947e     addq.l     #$1, -$6b82(a6)
004bdc: 41ee8f04     lea.l      -$70fc(a6), a0
004be0: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
004be4: 703f         moveq      #$3f, d0
004be6: b0ae947e     cmp.l      -$6b82(a6), d0
004bea: 6c04         bge.b      $4bf0
004bec: 42ae947e     clr.l      -$6b82(a6)
004bf0: 2017         move.l     (a7), d0
004bf2: 588f         addq.l     #$4, a7
004bf4: 4ced0100fffc movem.l    -$4(a5), a0
004bfa: 4e5d         unlk       a5
004bfc: 4e75         rts        
004bfe: 4e550000     link.w     a5, #$0
004c02: 48e78000     movem.l    d0, -(a7)
004c06: 4e5d         unlk       a5
004c08: 4e75         rts        
004c0a: 4e550000     link.w     a5, #$0
004c0e: 48e78000     movem.l    d0, -(a7)
004c12: 202e947e     move.l     -$6b82(a6), d0
004c16: b0ae9482     cmp.l      -$6b7e(a6), d0
004c1a: 6604         bne.b      $4c20
004c1c: 7001         moveq      #$1, d0
004c1e: 6002         bra.b      $4c22
004c20: 7000         moveq      #$0, d0
004c22: 4e5d         unlk       a5
004c24: 4e75         rts        
004c26: 4e550000     link.w     a5, #$0
004c2a: 48e78000     movem.l    d0, -(a7)
004c2e: 2017         move.l     (a7), d0
004c30: 6100157e     bsr.w      $61b0
004c34: 7001         moveq      #$1, d0
004c36: 4e5d         unlk       a5
004c38: 4e75         rts        
004c3a: 4e550000     link.w     a5, #$0
004c3e: 48e78000     movem.l    d0, -(a7)
004c42: 7001         moveq      #$1, d0
004c44: 4e5d         unlk       a5
004c46: 4e75         rts        
004c48: 4e550000     link.w     a5, #$0
004c4c: 48e78800     movem.l    d0/d4, -(a7)
004c50: 610008e2     bsr.w      $5534
004c54: 6100ff66     bsr.w      $4bbc
004c58: 2800         move.l     d0, d4
004c5a: 6c0c         bge.b      $4c68
004c5c: 7000         moveq      #$0, d0
004c5e: 610021e0     bsr.w      $6e40
004c62: 6100ff58     bsr.w      $4bbc
004c66: 2800         move.l     d0, d4
004c68: 610008f6     bsr.w      $5560
004c6c: 2004         move.l     d4, d0
004c6e: 4ced0010fffc movem.l    -$4(a5), d4
004c74: 4e5d         unlk       a5
004c76: 4e75         rts        
004c78: 4e550000     link.w     a5, #$0
004c7c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004c80: 4feffff6     lea.l      -$a(a7), a7
004c84: 486f0002     pea.l      $2(a7)
004c88: 486f0004     pea.l      $4(a7)
004c8c: 486f000e     pea.l      $e(a7)
004c90: 222f0016     move.l     $16(a7), d1
004c94: 7003         moveq      #$3, d0
004c96: 61002532     bsr.w      $71ca
004c9a: 4fef000c     lea.l      $c(a7), a7
004c9e: 72ff         moveq      #$ff, d1
004ca0: b280         cmp.l      d0, d1
004ca2: 6616         bne.b      $4cba
004ca4: 2f2e800c     move.l     -$7ff4(a6), -(a7)
004ca8: 41fa01ce     lea.l      $4e78(pc), a0
004cac: 2208         move.l     a0, d1
004cae: 7000         moveq      #$0, d0
004cb0: 61001afe     bsr.w      $67b0
004cb4: 588f         addq.l     #$4, a7
004cb6: 7000         moveq      #$0, d0
004cb8: 6012         bra.b      $4ccc
004cba: 203c0000ffff move.l     #$ffff, d0
004cc0: c0af0002     and.l      $2(a7), d0
004cc4: 206f000e     movea.l    $e(a7), a0
004cc8: 2080         move.l     d0, (a0)
004cca: 7001         moveq      #$1, d0
004ccc: 4fef000a     lea.l      $a(a7), a7
004cd0: 4ced0100fffc movem.l    -$4(a5), a0
004cd6: 4e5d         unlk       a5
004cd8: 4e75         rts        
004cda: 4e550000     link.w     a5, #$0
004cde: 48e7c080     movem.l    d0-d1/a0, -(a7)
004ce2: 4feffff4     lea.l      -$c(a7), a7
004ce6: 41d7         lea.l      (a7), a0
004ce8: 2208         move.l     a0, d1
004cea: 41ef0004     lea.l      $4(a7), a0
004cee: 2008         move.l     a0, d0
004cf0: 6100ff86     bsr.w      $4c78
004cf4: 2f400008     move.l     d0, $8(a7)
004cf8: 202f0004     move.l     $4(a7), d0
004cfc: 90ae9486     sub.l      -$6b7a(a6), d0
004d00: 4c2e00009004 mulu.l     -$6ffc(a6), d0
004d06: d097         add.l      (a7), d0
004d08: 206f000c     movea.l    $c(a7), a0
004d0c: 2080         move.l     d0, (a0)
004d0e: 202f0008     move.l     $8(a7), d0
004d12: 4fef000c     lea.l      $c(a7), a7
004d16: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004d1c: 4e5d         unlk       a5
004d1e: 4e75         rts        
004d20: 4e550000     link.w     a5, #$0
004d24: 48e7c080     movem.l    d0-d1/a0, -(a7)
004d28: 4fefffee     lea.l      -$12(a7), a7
004d2c: 70ff         moveq      #$ff, d0
004d2e: b0ae9486     cmp.l      -$6b7a(a6), d0
004d32: 670c         beq.b      $4d40
004d34: 206f0012     movea.l    $12(a7), a0
004d38: 20ae9486     move.l     -$6b7a(a6), (a0)
004d3c: 7001         moveq      #$1, d0
004d3e: 6064         bra.b      $4da4
004d40: 486f0002     pea.l      $2(a7)
004d44: 486f0004     pea.l      $4(a7)
004d48: 486f0012     pea.l      $12(a7)
004d4c: 41ef0012     lea.l      $12(a7), a0
004d50: 2208         move.l     a0, d1
004d52: 7003         moveq      #$3, d0
004d54: 61002474     bsr.w      $71ca
004d58: 4fef000c     lea.l      $c(a7), a7
004d5c: 72ff         moveq      #$ff, d1
004d5e: b280         cmp.l      d0, d1
004d60: 6616         bne.b      $4d78
004d62: 2f2e800c     move.l     -$7ff4(a6), -(a7)
004d66: 41fa0124     lea.l      $4e8c(pc), a0
004d6a: 2208         move.l     a0, d1
004d6c: 7000         moveq      #$0, d0
004d6e: 61001a40     bsr.w      $67b0
004d72: 588f         addq.l     #$4, a7
004d74: 7000         moveq      #$0, d0
004d76: 602c         bra.b      $4da4
004d78: 7010         moveq      #$10, d0
004d7a: 222f0002     move.l     $2(a7), d1
004d7e: e0a1         asr.l      d0, d1
004d80: 2d419004     move.l     d1, -$6ffc(a6)
004d84: 41ef0002     lea.l      $2(a7), a0
004d88: 2208         move.l     a0, d1
004d8a: 41ee9486     lea.l      -$6b7a(a6), a0
004d8e: 2008         move.l     a0, d0
004d90: 6100fee6     bsr.w      $4c78
004d94: 2f40000e     move.l     d0, $e(a7)
004d98: 206f0012     movea.l    $12(a7), a0
004d9c: 20ae9486     move.l     -$6b7a(a6), (a0)
004da0: 202f000e     move.l     $e(a7), d0
004da4: 4fef0012     lea.l      $12(a7), a7
004da8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004dae: 4e5d         unlk       a5
004db0: 4e75         rts        
004db2: 4e550000     link.w     a5, #$0
004db6: 48e78080     movem.l    d0/a0, -(a7)
004dba: 598f         subq.l     #$4, a7
004dbc: 70ff         moveq      #$ff, d0
004dbe: b0ae9486     cmp.l      -$6b7a(a6), d0
004dc2: 6604         bne.b      $4dc8
004dc4: 7000         moveq      #$0, d0
004dc6: 600e         bra.b      $4dd6
004dc8: 41ee948a     lea.l      -$6b76(a6), a0
004dcc: 2008         move.l     a0, d0
004dce: 6100ff0a     bsr.w      $4cda
004dd2: 2e80         move.l     d0, (a7)
004dd4: 2017         move.l     (a7), d0
004dd6: 588f         addq.l     #$4, a7
004dd8: 4ced0100fffc movem.l    -$4(a5), a0
004dde: 4e5d         unlk       a5
004de0: 4e75         rts        
004de2: 4e550000     link.w     a5, #$0
004de6: 48e7c080     movem.l    d0-d1/a0, -(a7)
004dea: 4feffff4     lea.l      -$c(a7), a7
004dee: 70ff         moveq      #$ff, d0
004df0: b0ae948a     cmp.l      -$6b76(a6), d0
004df4: 6604         bne.b      $4dfa
004df6: 7000         moveq      #$0, d0
004df8: 6070         bra.b      $4e6a
004dfa: 41ef0004     lea.l      $4(a7), a0
004dfe: 2008         move.l     a0, d0
004e00: 6100fed8     bsr.w      $4cda
004e04: 2f400008     move.l     d0, $8(a7)
004e08: 202f0004     move.l     $4(a7), d0
004e0c: 90ae948a     sub.l      -$6b76(a6), d0
004e10: 2e80         move.l     d0, (a7)
004e12: 2017         move.l     (a7), d0
004e14: 4c6e08009004 divs.l     -$6ffc(a6), d0
004e1a: 206f000c     movea.l    $c(a7), a0
004e1e: 2080         move.l     d0, (a0)
004e20: 2017         move.l     (a7), d0
004e22: 4c6e08019004 divs.l     -$6ffc(a6), d0
004e28: 7064         moveq      #$64, d0
004e2a: 4c001001     mulu.l     d0, d1
004e2e: 4c6e18019004 divs.l     -$6ffc(a6), d1
004e34: 206f0010     movea.l    $10(a7), a0
004e38: 2081         move.l     d1, (a0)
004e3a: 202f0004     move.l     $4(a7), d0
004e3e: 4c6e08009004 divs.l     -$6ffc(a6), d0
004e44: 206f0020     movea.l    $20(a7), a0
004e48: 2080         move.l     d0, (a0)
004e4a: 202f0004     move.l     $4(a7), d0
004e4e: 4c6e08019004 divs.l     -$6ffc(a6), d0
004e54: 7064         moveq      #$64, d0
004e56: 4c001001     mulu.l     d0, d1
004e5a: 4c6e18019004 divs.l     -$6ffc(a6), d1
004e60: 206f0024     movea.l    $24(a7), a0
004e64: 2081         move.l     d1, (a0)
004e66: 202f0008     move.l     $8(a7), d0
004e6a: 4fef000c     lea.l      $c(a7), a7
004e6e: 4ced0100fffc movem.l    -$4(a5), a0
004e74: 4e5d         unlk       a5
004e76: 4e75         rts        
004e78: 5f7379736461746520657272 subq.w     #$7, ([$64617465, a3], $20657272)
004e84: 6e6f         bgt.b      $4ef5
004e86: 3d25         move.w     -(a5), -(a6)
004e88: 642e         bcc.b      $4eb8
004e8a: 0d00         btst.l     d6, d0
004e8c: 5f7379736461746520657272 subq.w     #$7, ([$64617465, a3], $20657272)
004e98: 6e6f         bgt.b      $4f09
004e9a: 3d25         move.w     -(a5), -(a6)
004e9c: 642e         bcc.b      $4ecc
004e9e: 0d00         btst.l     d6, d0
004ea0: 4e550000     link.w     a5, #$0
004ea4: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
004ea8: 7800         moveq      #$0, d4
004eaa: 7a00         moveq      #$0, d5
004eac: 6042         bra.b      $4ef0
004eae: 2f04         move.l     d4, -(a7)
004eb0: 41fa011c     lea.l      $4fce(pc), a0
004eb4: 2208         move.l     a0, d1
004eb6: 202f0004     move.l     $4(a7), d0
004eba: 610018d0     bsr.w      $678c
004ebe: 588f         addq.l     #$4, a7
004ec0: 2f17         move.l     (a7), -(a7)
004ec2: 48780001     pea.l      $1.w
004ec6: 72ff         moveq      #$ff, d1
004ec8: 7000         moveq      #$0, d0
004eca: 61002102     bsr.w      $6fce
004ece: 508f         addq.l     #$8, a7
004ed0: 206f0004     movea.l    $4(a7), a0
004ed4: 2080         move.l     d0, (a0)
004ed6: 72ff         moveq      #$ff, d1
004ed8: b280         cmp.l      d0, d1
004eda: 6612         bne.b      $4eee
004edc: 0cae000000a9800c cmpi.l     #$a9, -$7ff4(a6)
004ee4: 6604         bne.b      $4eea
004ee6: 5284         addq.l     #$1, d4
004ee8: 6006         bra.b      $4ef0
004eea: 7000         moveq      #$0, d0
004eec: 6012         bra.b      $4f00
004eee: 7a01         moveq      #$1, d5
004ef0: 4a85         tst.l      d5
004ef2: 67ba         beq.b      $4eae
004ef4: 206f0004     movea.l    $4(a7), a0
004ef8: 2010         move.l     (a0), d0
004efa: 610000b4     bsr.w      $4fb0
004efe: 7001         moveq      #$1, d0
004f00: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
004f06: 4e5d         unlk       a5
004f08: 4e75         rts        
004f0a: 4e550000     link.w     a5, #$0
004f0e: 48e7c000     movem.l    d0-d1, -(a7)
004f12: 2017         move.l     (a7), d0
004f14: 61002104     bsr.w      $701a
004f18: 72ff         moveq      #$ff, d1
004f1a: b280         cmp.l      d0, d1
004f1c: 6604         bne.b      $4f22
004f1e: 7000         moveq      #$0, d0
004f20: 6002         bra.b      $4f24
004f22: 7001         moveq      #$1, d0
004f24: 4ced0002fffc movem.l    -$4(a5), d1
004f2a: 4e5d         unlk       a5
004f2c: 4e75         rts        
004f2e: 4e550000     link.w     a5, #$0
004f32: 48e7c080     movem.l    d0-d1/a0, -(a7)
004f36: 2017         move.l     (a7), d0
004f38: 610020be     bsr.w      $6ff8
004f3c: 206f0004     movea.l    $4(a7), a0
004f40: 2080         move.l     d0, (a0)
004f42: 72ff         moveq      #$ff, d1
004f44: b280         cmp.l      d0, d1
004f46: 6604         bne.b      $4f4c
004f48: 7000         moveq      #$0, d0
004f4a: 6002         bra.b      $4f4e
004f4c: 7001         moveq      #$1, d0
004f4e: 4ced0100fffc movem.l    -$4(a5), a0
004f54: 4e5d         unlk       a5
004f56: 4e75         rts        
004f58: 4e550000     link.w     a5, #$0
004f5c: 48e7c000     movem.l    d0-d1, -(a7)
004f60: 2017         move.l     (a7), d0
004f62: 61a6         bsr.b      $4f0a
004f64: 4a80         tst.l      d0
004f66: 670e         beq.b      $4f76
004f68: 202f0004     move.l     $4(a7), d0
004f6c: 610020b8     bsr.w      $7026
004f70: 72ff         moveq      #$ff, d1
004f72: b280         cmp.l      d0, d1
004f74: 6604         bne.b      $4f7a
004f76: 7000         moveq      #$0, d0
004f78: 6002         bra.b      $4f7c
004f7a: 7001         moveq      #$1, d0
004f7c: 4e5d         unlk       a5
004f7e: 4e75         rts        
004f80: 4e550000     link.w     a5, #$0
004f84: 48e7c800     movem.l    d0-d1/d4, -(a7)
004f88: 6004         bra.b      $4f8e
004f8a: 70ff         moveq      #$ff, d0
004f8c: b084         cmp.l      d4, d0
004f8e: 48780001     pea.l      $1.w
004f92: 7201         moveq      #$1, d1
004f94: 202f0004     move.l     $4(a7), d0
004f98: 61002118     bsr.w      $70b2
004f9c: 588f         addq.l     #$4, a7
004f9e: 2800         move.l     d0, d4
004fa0: 7201         moveq      #$1, d1
004fa2: b280         cmp.l      d0, d1
004fa4: 66e4         bne.b      $4f8a
004fa6: 4ced0012fff8 movem.l    -$8(a5), d1/d4
004fac: 4e5d         unlk       a5
004fae: 4e75         rts        
004fb0: 4e550000     link.w     a5, #$0
004fb4: 48e7c000     movem.l    d0-d1, -(a7)
004fb8: 7200         moveq      #$0, d1
004fba: 2017         move.l     (a7), d0
004fbc: 61002084     bsr.w      $7042
004fc0: 72ff         moveq      #$ff, d1
004fc2: b280         cmp.l      d0, d1
004fc4: 4ced0002fffc movem.l    -$4(a5), d1
004fca: 4e5d         unlk       a5
004fcc: 4e75         rts        
004fce: 7365         .dc.w      $7365
004fd0: 6d25         blt.b      $4ff7
004fd2: 30366400     move.w     (a6, d6.w * 4), d0
004fd6: 4e550000     link.w     a5, #$0
004fda: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004fde: 2017         move.l     (a7), d0
004fe0: 6100185e     bsr.w      $6840
004fe4: 206f0018     movea.l    $18(a7), a0
004fe8: 2080         move.l     d0, (a0)
004fea: 6604         bne.b      $4ff0
004fec: 7000         moveq      #$0, d0
004fee: 600c         bra.b      $4ffc
004ff0: 206f0018     movea.l    $18(a7), a0
004ff4: 226f0004     movea.l    $4(a7), a1
004ff8: 2290         move.l     (a0), (a1)
004ffa: 7001         moveq      #$1, d0
004ffc: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005002: 4e5d         unlk       a5
005004: 4e75         rts        
005006: 4e550000     link.w     a5, #$0
00500a: 48e7c000     movem.l    d0-d1, -(a7)
00500e: 7001         moveq      #$1, d0
005010: 4e5d         unlk       a5
005012: 4e75         rts        
005014: 4e550000     link.w     a5, #$0
005018: 48e7c080     movem.l    d0-d1/a0, -(a7)
00501c: 4a97         tst.l      (a7)
00501e: 660a         bne.b      $502a
005020: 206f0004     movea.l    $4(a7), a0
005024: 4290         clr.l      (a0)
005026: 7000         moveq      #$0, d0
005028: 6008         bra.b      $5032
00502a: 206f0004     movea.l    $4(a7), a0
00502e: 2097         move.l     (a7), (a0)
005030: 7001         moveq      #$1, d0
005032: 4ced0100fffc movem.l    -$4(a5), a0
005038: 4e5d         unlk       a5
00503a: 4e75         rts        
00503c: 4e550000     link.w     a5, #$0
005040: 48e7c000     movem.l    d0-d1, -(a7)
005044: 4aaf0004     tst.l      $4(a7)
005048: 6604         bne.b      $504e
00504a: 7000         moveq      #$0, d0
00504c: 600a         bra.b      $5058
00504e: 202f0004     move.l     $4(a7), d0
005052: 610017f8     bsr.w      $684c
005056: 7001         moveq      #$1, d0
005058: 4e5d         unlk       a5
00505a: 4e75         rts        
00505c: 0008         .dc.w      $0008
00505e: 006e000c006a ori.w      #$c, $6a(a6)
005064: 00100066     ori.b      #$66, (a0)
005068: 00140062     ori.b      #$62, (a4)
00506c: 0018005e     ori.b      #$5e, (a0)+
005070: 001c005a     ori.b      #$5a, (a4)+
005074: 00200056     ori.b      #$56, -(a0)
005078: 002c00520028 ori.b      #$52, $28(a4)
00507e: 004e         .dc.w      $004e
005080: ffff         dc.w       $ffff
005082: 0008         .dc.w      $0008
005084: 0000000c     ori.b      #$c, d0
005088: 00000010     ori.b      #$10, d0
00508c: 00000014     ori.b      #$14, d0
005090: 00000018     ori.b      #$18, d0
005094: 0000001c     ori.b      #$1c, d0
005098: 00000020     ori.b      #$20, d0
00509c: 0000002c     ori.b      #$2c, d0
0050a0: 00000028     ori.b      #$28, d0
0050a4: 0000ffff     ori.b      #$ff, d0
0050a8: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0050ac: 43faffae     lea.l      $505c(pc), a1
0050b0: 6008         bra.b      $50ba
0050b2: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0050b6: 43faffca     lea.l      $5082(pc), a1
0050ba: 91c8         suba.l     a0, a0
0050bc: 4e40         trap       #$0
0050be: 000e         .dc.w      $000e
0050c0: 6406         bcc.b      $50c8
0050c2: 2d41800c     move.l     d1, -$7ff4(a6)
0050c6: 70ff         moveq      #$ff, d0
0050c8: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
0050cc: 4e75         rts        
0050ce: 48e70004     movem.l    a5, -(a7)
0050d2: 91ee949e     suba.l     -$6b62(a6), a0
0050d6: 2d489496     move.l     a0, -$6b6a(a6)
0050da: 41ee9008     lea.l      -$6ff8(a6), a0
0050de: 202e9492     move.l     -$6b6e(a6), d0
0050e2: e248         lsr.w      #$1, d0
0050e4: 5340         subq.w     #$1, d0
0050e6: 30dd         move.w     (a5)+, (a0)+
0050e8: 51c8fffc     dbra       d0, $50e6
0050ec: 4cdf2000     movem.l    (a7)+, a5
0050f0: e44f         lsr.w      #$2, d7
0050f2: 3d47949a     move.w     d7, -$6b66(a6)
0050f6: 206e9050     movea.l    -$6fb0(a6), a0
0050fa: 4e90         jsr        (a0)
0050fc: 4a80         tst.l      d0
0050fe: 6708         beq.b      $5108
005100: 7264         moveq      #$64, d1
005102: d247         add.w      d7, d1
005104: 4e40         trap       #$0
005106: 00064cdf     ori.b      #$df, d6
00510a: 7fff         .dc.w      $7fff
00510c: 588f         addq.l     #$4, a7
00510e: 44df         move.w     (a7)+, ccr
005110: 4e75         rts        
005112: 4e550000     link.w     a5, #$0
005116: 48e78000     movem.l    d0, -(a7)
00511a: 1d7c0001949c move.b     #$1, -$6b64(a6)
005120: 4e5d         unlk       a5
005122: 4e75         rts        
005124: 4e550000     link.w     a5, #$0
005128: 48e78000     movem.l    d0, -(a7)
00512c: 2d579050     move.l     (a7), -$6fb0(a6)
005130: 6606         bne.b      $5138
005132: 6100ff7e     bsr.w      $50b2
005136: 6004         bra.b      $513c
005138: 6100ff6e     bsr.w      $50a8
00513c: 4e5d         unlk       a5
00513e: 4e75         rts        
005140: 4e550000     link.w     a5, #$0
005144: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
005148: 4fefffd4     lea.l      -$2c(a7), a7
00514c: 604a         bra.b      $5198
00514e: 2ebc000000b5 move.l     #$b5, (a7)
005154: 60000076     bra.w      $51cc
005158: 2ebc000000b6 move.l     #$b6, (a7)
00515e: 606c         bra.b      $51cc
005160: 2ebc000000b7 move.l     #$b7, (a7)
005166: 6064         bra.b      $51cc
005168: 2ebc000000b8 move.l     #$b8, (a7)
00516e: 605c         bra.b      $51cc
005170: 2ebc000000b9 move.l     #$b9, (a7)
005176: 6054         bra.b      $51cc
005178: 2ebc000000ba move.l     #$ba, (a7)
00517e: 604c         bra.b      $51cc
005180: 2ebc000000b2 move.l     #$b2, (a7)
005186: 6044         bra.b      $51cc
005188: 2ebc000000c0 move.l     #$c0, (a7)
00518e: 603c         bra.b      $51cc
005190: 2ebc000000b3 move.l     #$b3, (a7)
005196: 6034         bra.b      $51cc
005198: 302e949a     move.w     -$6b66(a6), d0
00519c: 48c0         ext.l      d0
00519e: 7264         moveq      #$64, d1
0051a0: d081         add.l      d1, d0
0051a2: 048000000066 subi.l     #$66, d0
0051a8: 0c8000000009 cmpi.l     #$9, d0
0051ae: 62e0         bhi.b      $5190
0051b0: 303b0206     move.w     $51b8(pc, d0.w), d0
0051b4: 4efb0002     jmp        $51b8(pc, d0.w)
0051b8: ff96         dc.w       $ff96
0051ba: ffa0         dc.w       $ffa0
0051bc: ffa8         dc.w       $ffa8
0051be: ffb0         dc.w       $ffb0
0051c0: ffb8         dc.w       $ffb8
0051c2: ffc0         dc.w       $ffc0
0051c4: ffc8         dc.w       $ffc8
0051c6: ffd8         dc.w       $ffd8
0051c8: ffd0         dc.w       $ffd0
0051ca: ffd0         dc.w       $ffd0
0051cc: 0c97000000ba cmpi.l     #$ba, (a7)
0051d2: 660c         bne.b      $51e0
0051d4: 4a2e949c     tst.b      -$6b64(a6)
0051d8: 6706         beq.b      $51e0
0051da: 7000         moveq      #$0, d0
0051dc: 600001ec     bra.w      $53ca
0051e0: 2f2e9496     move.l     -$6b6a(a6), -(a7)
0051e4: 306e949a     movea.w    -$6b66(a6), a0
0051e8: 2f08         move.l     a0, -(a7)
0051ea: 61001634     bsr.w      $6820
0051ee: 2200         move.l     d0, d1
0051f0: 41fa01f0     lea.l      $53e2(pc), a0
0051f4: 2008         move.l     a0, d0
0051f6: 6100158c     bsr.w      $6784
0051fa: 508f         addq.l     #$8, a7
0051fc: 610020e6     bsr.w      $72e4
005200: 2f00         move.l     d0, -(a7)
005202: 6100161c     bsr.w      $6820
005206: 2f00         move.l     d0, -(a7)
005208: 2f2e948e     move.l     -$6b72(a6), -(a7)
00520c: 41fa01fb     lea.l      $5409(pc), a0
005210: 2208         move.l     a0, d1
005212: 41ef0010     lea.l      $10(a7), a0
005216: 2008         move.l     a0, d0
005218: 61001572     bsr.w      $678c
00521c: 4fef000c     lea.l      $c(a7), a7
005220: 41fa01ef     lea.l      $5411(pc), a0
005224: 2208         move.l     a0, d1
005226: 41ef0004     lea.l      $4(a7), a0
00522a: 2008         move.l     a0, d0
00522c: 61001526     bsr.w      $6754
005230: 2440         movea.l    d0, a2
005232: 4a80         tst.l      d0
005234: 6604         bne.b      $523a
005236: 45ee90b8     lea.l      -$6f48(a6), a2
00523a: 2f2e9496     move.l     -$6b6a(a6), -(a7)
00523e: 306e949a     movea.w    -$6b66(a6), a0
005242: 2f08         move.l     a0, -(a7)
005244: 610015da     bsr.w      $6820
005248: 2f00         move.l     d0, -(a7)
00524a: 41fa01c7     lea.l      $5413(pc), a0
00524e: 2208         move.l     a0, d1
005250: 200a         move.l     a2, d0
005252: 61001534     bsr.w      $6788
005256: 4fef000c     lea.l      $c(a7), a7
00525a: 7800         moveq      #$0, d4
00525c: 6018         bra.b      $5276
00525e: 41ee9008     lea.l      -$6ff8(a6), a0
005262: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
005266: 41fa01d6     lea.l      $543e(pc), a0
00526a: 2208         move.l     a0, d1
00526c: 200a         move.l     a2, d0
00526e: 61001518     bsr.w      $6788
005272: 588f         addq.l     #$4, a7
005274: 5284         addq.l     #$1, d4
005276: 7008         moveq      #$8, d0
005278: b084         cmp.l      d4, d0
00527a: 6ee2         bgt.b      $525e
00527c: 41fa01c7     lea.l      $5445(pc), a0
005280: 2208         move.l     a0, d1
005282: 200a         move.l     a2, d0
005284: 61001502     bsr.w      $6788
005288: 6018         bra.b      $52a2
00528a: 41ee9008     lea.l      -$6ff8(a6), a0
00528e: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
005292: 41fa01b7     lea.l      $544b(pc), a0
005296: 2208         move.l     a0, d1
005298: 200a         move.l     a2, d0
00529a: 610014ec     bsr.w      $6788
00529e: 588f         addq.l     #$4, a7
0052a0: 5284         addq.l     #$1, d4
0052a2: 7010         moveq      #$10, d0
0052a4: b084         cmp.l      d4, d0
0052a6: 6ee2         bgt.b      $528a
0052a8: 41fa01a8     lea.l      $5452(pc), a0
0052ac: 2208         move.l     a0, d1
0052ae: 200a         move.l     a2, d0
0052b0: 610014d6     bsr.w      $6788
0052b4: 266e903c     movea.l    -$6fc4(a6), a3
0052b8: 7800         moveq      #$0, d4
0052ba: 6014         bra.b      $52d0
0052bc: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0052c0: 41fa01ac     lea.l      $546e(pc), a0
0052c4: 2208         move.l     a0, d1
0052c6: 200a         move.l     a2, d0
0052c8: 610014be     bsr.w      $6788
0052cc: 588f         addq.l     #$4, a7
0052ce: 5284         addq.l     #$1, d4
0052d0: 7008         moveq      #$8, d0
0052d2: b084         cmp.l      d4, d0
0052d4: 6ee6         bgt.b      $52bc
0052d6: 41fa019d     lea.l      $5475(pc), a0
0052da: 2208         move.l     a0, d1
0052dc: 200a         move.l     a2, d0
0052de: 610014a8     bsr.w      $6788
0052e2: 266e9044     movea.l    -$6fbc(a6), a3
0052e6: 7800         moveq      #$0, d4
0052e8: 6014         bra.b      $52fe
0052ea: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0052ee: 41fa01a0     lea.l      $5490(pc), a0
0052f2: 2208         move.l     a0, d1
0052f4: 200a         move.l     a2, d0
0052f6: 61001490     bsr.w      $6788
0052fa: 588f         addq.l     #$4, a7
0052fc: 5284         addq.l     #$1, d4
0052fe: 7008         moveq      #$8, d0
005300: b084         cmp.l      d4, d0
005302: 6ee6         bgt.b      $52ea
005304: 41fa0191     lea.l      $5497(pc), a0
005308: 2208         move.l     a0, d1
00530a: 200a         move.l     a2, d0
00530c: 6100147a     bsr.w      $6788
005310: 266e903c     movea.l    -$6fc4(a6), a3
005314: 2653         movea.l    (a3), a3
005316: 7800         moveq      #$0, d4
005318: 6014         bra.b      $532e
00531a: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
00531e: 41fa01a5     lea.l      $54c5(pc), a0
005322: 2208         move.l     a0, d1
005324: 200a         move.l     a2, d0
005326: 61001460     bsr.w      $6788
00532a: 588f         addq.l     #$4, a7
00532c: 5284         addq.l     #$1, d4
00532e: 7008         moveq      #$8, d0
005330: b084         cmp.l      d4, d0
005332: 6ee6         bgt.b      $531a
005334: 082e00009049 btst.b     #$0, -$6fb7(a6)
00533a: 6704         beq.b      $5340
00533c: 7043         moveq      #$43, d0
00533e: 6002         bra.b      $5342
005340: 702d         moveq      #$2d, d0
005342: 2f00         move.l     d0, -(a7)
005344: 082e00019049 btst.b     #$1, -$6fb7(a6)
00534a: 6704         beq.b      $5350
00534c: 7056         moveq      #$56, d0
00534e: 6002         bra.b      $5352
005350: 702d         moveq      #$2d, d0
005352: 2f00         move.l     d0, -(a7)
005354: 082e00029049 btst.b     #$2, -$6fb7(a6)
00535a: 6704         beq.b      $5360
00535c: 705a         moveq      #$5a, d0
00535e: 6002         bra.b      $5362
005360: 702d         moveq      #$2d, d0
005362: 2f00         move.l     d0, -(a7)
005364: 082e00039049 btst.b     #$3, -$6fb7(a6)
00536a: 6704         beq.b      $5370
00536c: 704e         moveq      #$4e, d0
00536e: 6002         bra.b      $5372
005370: 702d         moveq      #$2d, d0
005372: 2f00         move.l     d0, -(a7)
005374: 082e00049049 btst.b     #$4, -$6fb7(a6)
00537a: 6704         beq.b      $5380
00537c: 7058         moveq      #$58, d0
00537e: 6002         bra.b      $5382
005380: 702d         moveq      #$2d, d0
005382: 2f00         move.l     d0, -(a7)
005384: 303c00ff     move.w     #$ff, d0
005388: c06e9048     and.w      -$6fb8(a6), d0
00538c: 7200         moveq      #$0, d1
00538e: 3200         move.w     d0, d1
005390: 2f01         move.l     d1, -(a7)
005392: 2f2e904a     move.l     -$6fb6(a6), -(a7)
005396: 41fa0134     lea.l      $54cc(pc), a0
00539a: 2208         move.l     a0, d1
00539c: 200a         move.l     a2, d0
00539e: 610013e8     bsr.w      $6788
0053a2: 4fef001c     lea.l      $1c(a7), a7
0053a6: 41ee90b8     lea.l      -$6f48(a6), a0
0053aa: b1ca         cmpa.l     a2, a0
0053ac: 6706         beq.b      $53b4
0053ae: 200a         move.l     a2, d0
0053b0: 610013f6     bsr.w      $67a8
0053b4: 2f2e9496     move.l     -$6b6a(a6), -(a7)
0053b8: 61001f2a     bsr.w      $72e4
0053bc: 2200         move.l     d0, d1
0053be: 202f0004     move.l     $4(a7), d0
0053c2: 61000244     bsr.w      $5608
0053c6: 588f         addq.l     #$4, a7
0053c8: 70ff         moveq      #$ff, d0
0053ca: 4fef002c     lea.l      $2c(a7), a7
0053ce: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
0053d4: 4e5d         unlk       a5
0053d6: 4e75         rts        
0053d8: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
0053de: 6170         bsr.b      $5450
0053e0: 5f00         subq.b     #$7, d0
0053e2: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
0053e8: 6170         bsr.b      $545a
0053ea: 2023         move.l     -(a3), d0
0053ec: 2564206f     move.l     -(a4), $206f(a2)
0053f0: 6363         bls.b      $5455
0053f2: 7572         .dc.w      $7572
0053f4: 7265         moveq      #$65, d1
0053f6: 6420         bcc.b      $5418
0053f8: 6174         bsr.b      $546e
0053fa: 206f6666     movea.l    $6666(a7), a0
0053fe: 7365         .dc.w      $7365
005400: 743a         moveq      #$3a, d2
005402: 20307825     move.l     $25(a0, d7.l), d0
005406: 780d         moveq      #$d, d4
005408: 00257325     ori.b      #$25, -(a5)
00540c: 735f         .dc.w      $735f
00540e: 25640077     move.l     -(a4), $77(a2)
005412: 0025733a     ori.b      #$3a, -(a5)
005416: 2054         movea.l    (a4), a0
005418: 7261         moveq      #$61, d1
00541a: 7020         moveq      #$20, d0
00541c: 2325         move.l     -(a5), -(a1)
00541e: 6420         bcc.b      $5440
005420: 6f63         ble.b      $5485
005422: 6375         bls.b      $5499
005424: 7272         moveq      #$72, d1
005426: 6564         bcs.b      $548c
005428: 2061         movea.l    -(a1), a0
00542a: 7420         moveq      #$20, d2
00542c: 6f66         ble.b      $5494
00542e: 6673         bne.b      $54a3
005430: 6574         bcs.b      $54a6
005432: 3a20         move.w     -(a0), d5
005434: 30782578     movea.w    $2578.w, a0
005438: 0d0d446e     movep.w    $446e(a5), d6
00543c: 3a00         move.w     d0, d5
00543e: 2025         move.l     -(a5), d0
005440: 30386c58     move.w     $6c58.w, d0
005444: 000d         .dc.w      $000d
005446: 0d41         bchg.b     d6, d1
005448: 6e3a         bgt.b      $5484
00544a: 00202530     ori.b      #$30, -(a0)
00544e: 386c5800     movea.w    $5800(a4), a4
005452: 0d0d4d65     movep.w    $4d65(a5), d6
005456: 6d20         blt.b      $5478
005458: 706f         moveq      #$6f, d0
00545a: 696e         bvs.b      $54ca
00545c: 7465         moveq      #$65, d2
00545e: 6420         bcc.b      $5480
005460: 746f         moveq      #$6f, d2
005462: 2062         movea.l    -(a2), a0
005464: 7920         .dc.w      $7920
005466: 41353a0d     chk.l      $d(a5, d3.l), d0
00546a: 53353a00     subq.b     #$1, (a5, d3.l * 2)
00546e: 2025         move.l     -(a5), d0
005470: 30386c58     move.w     $6c58.w, d0
005474: 000d         .dc.w      $000d
005476: 0d4d656d     movep.l    $656d(a5), d6
00547a: 20706f696e74 movea.l    ([$6e74, a0]), a0
005480: 6564         bcs.b      $54e6
005482: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
005488: 2041         movea.l    d1, a0
00548a: 373a0d53     move.w     $61df(pc), -(a3)
00548e: 3700         move.w     d0, -(a3)
005490: 2025         move.l     -(a5), d0
005492: 30386c58     move.w     $6c58.w, d0
005496: 000d         .dc.w      $000d
005498: 0d4d656d     movep.l    $656d(a5), d6
00549c: 20706f696e74 movea.l    ([$6e74, a0]), a0
0054a2: 6564         bcs.b      $5508
0054a4: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
0054aa: 20284135     move.l     $4135(a0), d0
0054ae: 292c2069     move.l     $2069(a4), -(a4)
0054b2: 652e         bcs.b      $54e2
0054b4: 2063         movea.l    -(a3), a0
0054b6: 6f6e         ble.b      $5526
0054b8: 7420         moveq      #$20, d2
0054ba: 6f66         ble.b      $5522
0054bc: 2041         movea.l    d1, a0
0054be: 353a0d4d     move.w     $620d(pc), -(a2)
0054c2: 353a0020     move.w     $54e4(pc), -(a2)
0054c6: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0054ca: 5800         addq.b     #$4, d0
0054cc: 0d0d5043     movep.w    $5043(a5), d6
0054d0: 3a20         move.w     -(a0), d5
0054d2: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0054d6: 5820         addq.b     #$4, -(a0)
0054d8: 2043         movea.l    d3, a0
0054da: 433a2025     chk.l      $7501(pc), d1
0054de: 30325820     move.w     $20(a2, d5.l), d0
0054e2: 2825         move.l     -(a5), d4
0054e4: 6325         bls.b      $550b
0054e6: 6325         bls.b      $550d
0054e8: 6325         bls.b      $550f
0054ea: 6325         bls.b      $5511
0054ec: 6329         bls.b      $5517
0054ee: 0d00         btst.l     d6, d0
0054f0: 4e550000     link.w     a5, #$0
0054f4: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
0054f8: 2800         move.l     d0, d4
0054fa: 7204         moveq      #$4, d1
0054fc: 7044         moveq      #$44, d0
0054fe: 61001a6e     bsr.w      $6f6e
005502: 2440         movea.l    d0, a2
005504: 3a12         move.w     (a2), d5
005506: 601c         bra.b      $5524
005508: 4a92         tst.l      (a2)
00550a: 6718         beq.b      $5524
00550c: 2052         movea.l    (a2), a0
00550e: 7000         moveq      #$0, d0
005510: 3010         move.w     (a0), d0
005512: 3204         move.w     d4, d1
005514: 48c1         ext.l      d1
005516: b081         cmp.l      d1, d0
005518: 660a         bne.b      $5524
00551a: 2052         movea.l    (a2), a0
00551c: 7000         moveq      #$0, d0
00551e: 30280002     move.w     $2(a0), d0
005522: 6006         bra.b      $552a
005524: 588a         addq.l     #$4, a2
005526: 5345         subq.w     #$1, d5
005528: 6cde         bge.b      $5508
00552a: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
005530: 4e5d         unlk       a5
005532: 4e75         rts        
005534: 48e74000     movem.l    d1, -(a7)
005538: 203c00000000 move.l     #$0, d0
00553e: 223c00000001 move.l     #$1, d1
005544: 4e40         trap       #$0
005546: 0057640c     ori.w      #$640c, (a7)
00554a: 2d41800c     move.l     d1, -$7ff4(a6)
00554e: 70ff         moveq      #$ff, d0
005550: 4cdf0002     movem.l    (a7)+, d1
005554: 4e75         rts        
005556: 4280         clr.l      d0
005558: 3001         move.w     d1, d0
00555a: 4cdf0002     movem.l    (a7)+, d1
00555e: 4e75         rts        
005560: 48e74000     movem.l    d1, -(a7)
005564: 203c00000000 move.l     #$0, d0
00556a: 223c00000000 move.l     #$0, d1
005570: 4e40         trap       #$0
005572: 005764e0     ori.w      #$64e0, (a7)
005576: 60d2         bra.b      $554a
005578: 48e740e0     movem.l    d1/a0-a2, -(a7)
00557c: 207900000000 movea.l    $0.l, a0
005582: 2268004c     movea.l    $4c(a0), a1
005586: 4280         clr.l      d0
005588: 10290370     move.b     $370(a1), d0
00558c: 4cdf0702     movem.l    (a7)+, d1/a0-a2
005590: 4e75         rts        
005592: 48e740e0     movem.l    d1/a0-a2, -(a7)
005596: 207900000000 movea.l    $0.l, a0
00559c: 2268004c     movea.l    $4c(a0), a1
0055a0: 81a90374     or.l       d0, $374(a1)
0055a4: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0055a8: 4e75         rts        
0055aa: 48e740e0     movem.l    d1/a0-a2, -(a7)
0055ae: 207900000000 movea.l    $0.l, a0
0055b4: 2268004c     movea.l    $4c(a0), a1
0055b8: 4480         neg.l      d0
0055ba: c1a90374     and.l      d0, $374(a1)
0055be: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0055c2: 4e75         rts        
0055c4: 4e550000     link.w     a5, #$0
0055c8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0055cc: 518f         subq.l     #$8, a7
0055ce: 203c00000100 move.l     #$100, d0
0055d4: d0af0008     add.l      $8(a7), d0
0055d8: 2e80         move.l     d0, (a7)
0055da: 1f6f000f0004 move.b     $f(a7), $4(a7)
0055e0: 202f001c     move.l     $1c(a7), d0
0055e4: e080         asr.l      #$8, d0
0055e6: 1f400005     move.b     d0, $5(a7)
0055ea: 1f6f001f0006 move.b     $1f(a7), $6(a7)
0055f0: 1f7c00ff0007 move.b     #$ff, $7(a7)
0055f6: 41d7         lea.l      (a7), a0
0055f8: 2008         move.l     a0, d0
0055fa: 6146         bsr.b      $5642
0055fc: 508f         addq.l     #$8, a7
0055fe: 4ced0100fffc movem.l    -$4(a5), a0
005604: 4e5d         unlk       a5
005606: 4e75         rts        
005608: 4e550000     link.w     a5, #$0
00560c: 48e7c000     movem.l    d0-d1, -(a7)
005610: 2f2f0010     move.l     $10(a7), -(a7)
005614: 222f0008     move.l     $8(a7), d1
005618: 202f0004     move.l     $4(a7), d0
00561c: 61a6         bsr.b      $55c4
00561e: 588f         addq.l     #$4, a7
005620: 203c00002410 move.l     #$2410, d0
005626: 610000bc     bsr.w      $56e4
00562a: 4e5d         unlk       a5
00562c: 4e75         rts        
00562e: 4e550000     link.w     a5, #$0
005632: 48e78000     movem.l    d0, -(a7)
005636: 7000         moveq      #$0, d0
005638: 61001806     bsr.w      $6e40
00563c: 60f8         bra.b      $5636
00563e: 4e5d         unlk       a5
005640: 4e75         rts        
005642: 4e550000     link.w     a5, #$0
005646: 48e7c080     movem.l    d0-d1/a0, -(a7)
00564a: 4aae94a2     tst.l      -$6b5e(a6)
00564e: 6c16         bge.b      $5666
005650: 7203         moveq      #$3, d1
005652: 41fa002e     lea.l      $5682(pc), a0
005656: 2008         move.l     a0, d0
005658: 61000136     bsr.w      $5790
00565c: 2d4094a2     move.l     d0, -$6b5e(a6)
005660: 6c04         bge.b      $5666
005662: 70ff         moveq      #$ff, d0
005664: 6012         bra.b      $5678
005666: 2f17         move.l     (a7), -(a7)
005668: 222e94a2     move.l     -$6b5e(a6), d1
00566c: 203c00007f23 move.l     #$7f23, d0
005672: 61000f7a     bsr.w      $65ee
005676: 588f         addq.l     #$4, a7
005678: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00567e: 4e5d         unlk       a5
005680: 4e75         rts        
005682: 2f636339     move.l     -(a3), $6339(a7)
005686: 3300         move.w     d0, -(a1)
005688: 4e550000     link.w     a5, #$0
00568c: 48e7c080     movem.l    d0-d1/a0, -(a7)
005690: 518f         subq.l     #$8, a7
005692: 7201         moveq      #$1, d1
005694: 41fa00ce     lea.l      $5764(pc), a0
005698: 2008         move.l     a0, d0
00569a: 610000f4     bsr.w      $5790
00569e: 2f400004     move.l     d0, $4(a7)
0056a2: 72ff         moveq      #$ff, d1
0056a4: b280         cmp.l      d0, d1
0056a6: 6722         beq.b      $56ca
0056a8: 48780004     pea.l      $4.w
0056ac: 41ef0004     lea.l      $4(a7), a0
0056b0: 2208         move.l     a0, d1
0056b2: 202f0008     move.l     $8(a7), d0
0056b6: 61001128     bsr.w      $67e0
0056ba: 588f         addq.l     #$4, a7
0056bc: 7204         moveq      #$4, d1
0056be: b280         cmp.l      d0, d1
0056c0: 670c         beq.b      $56ce
0056c2: 202f0004     move.l     $4(a7), d0
0056c6: 61001134     bsr.w      $67fc
0056ca: 70ff         moveq      #$ff, d0
0056cc: 600a         bra.b      $56d8
0056ce: 202f0004     move.l     $4(a7), d0
0056d2: 61001128     bsr.w      $67fc
0056d6: 2017         move.l     (a7), d0
0056d8: 508f         addq.l     #$8, a7
0056da: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0056e0: 4e5d         unlk       a5
0056e2: 4e75         rts        
0056e4: 4e550000     link.w     a5, #$0
0056e8: 48e7c000     movem.l    d0-d1, -(a7)
0056ec: 2217         move.l     (a7), d1
0056ee: 6198         bsr.b      $5688
0056f0: 610003c6     bsr.w      $5ab8
0056f4: 72ff         moveq      #$ff, d1
0056f6: b280         cmp.l      d0, d1
0056f8: 4ced0002fffc movem.l    -$4(a5), d1
0056fe: 4e5d         unlk       a5
005700: 4e75         rts        
005702: 4e550000     link.w     a5, #$0
005706: 48e7c080     movem.l    d0-d1/a0, -(a7)
00570a: 518f         subq.l     #$8, a7
00570c: 7202         moveq      #$2, d1
00570e: 41fa006a     lea.l      $577a(pc), a0
005712: 2008         move.l     a0, d0
005714: 6100007a     bsr.w      $5790
005718: 2f400004     move.l     d0, $4(a7)
00571c: 72ff         moveq      #$ff, d1
00571e: b280         cmp.l      d0, d1
005720: 6728         beq.b      $574a
005722: 61001bc0     bsr.w      $72e4
005726: 2e80         move.l     d0, (a7)
005728: 48780004     pea.l      $4.w
00572c: 41ef0004     lea.l      $4(a7), a0
005730: 2208         move.l     a0, d1
005732: 202f0008     move.l     $8(a7), d0
005736: 610010b0     bsr.w      $67e8
00573a: 588f         addq.l     #$4, a7
00573c: 7204         moveq      #$4, d1
00573e: b280         cmp.l      d0, d1
005740: 670c         beq.b      $574e
005742: 202f0004     move.l     $4(a7), d0
005746: 610010b4     bsr.w      $67fc
00574a: 70ff         moveq      #$ff, d0
00574c: 600a         bra.b      $5758
00574e: 202f0004     move.l     $4(a7), d0
005752: 610010a8     bsr.w      $67fc
005756: 7000         moveq      #$0, d0
005758: 508f         addq.l     #$8, a7
00575a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
005760: 4e5d         unlk       a5
005762: 4e75         rts        
005764: 2f63302f     move.l     -(a3), $302f(a7)
005768: 5f313239     subq.b     #$7, $39(a1, d3.w)
00576c: 5f2f7061     subq.b     #$7, $7061(a7)
005770: 636b         bls.b      $57dd
005772: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
005778: 64002f63     bcc.w      $86dd
00577c: 302f5f31     move.w     $5f31(a7), d0
005780: 32395f2f7061 move.w     $5f2f7061.l, d1
005786: 636b         bls.b      $57f3
005788: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
00578e: 64004e55     bcc.w      $a5e5
005792: 000048e7     ori.b      #$e7, d0
005796: c000         and.b      d0, d0
005798: 42a7         clr.l      -(a7)
00579a: 222f0008     move.l     $8(a7), d1
00579e: 202f0004     move.l     $4(a7), d0
0057a2: 613e         bsr.b      $57e2
0057a4: 588f         addq.l     #$4, a7
0057a6: 4e5d         unlk       a5
0057a8: 4e75         rts        
0057aa: 4e550000     link.w     a5, #$0
0057ae: 48e7c000     movem.l    d0-d1, -(a7)
0057b2: 48780001     pea.l      $1.w
0057b6: 222f0008     move.l     $8(a7), d1
0057ba: 202f0004     move.l     $4(a7), d0
0057be: 6122         bsr.b      $57e2
0057c0: 588f         addq.l     #$4, a7
0057c2: 4e5d         unlk       a5
0057c4: 4e75         rts        
0057c6: 4e550000     link.w     a5, #$0
0057ca: 48e7c000     movem.l    d0-d1, -(a7)
0057ce: 48780002     pea.l      $2.w
0057d2: 222f0008     move.l     $8(a7), d1
0057d6: 202f0004     move.l     $4(a7), d0
0057da: 6106         bsr.b      $57e2
0057dc: 588f         addq.l     #$4, a7
0057de: 4e5d         unlk       a5
0057e0: 4e75         rts        
0057e2: 4e550000     link.w     a5, #$0
0057e6: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
0057ea: 4fefffda     lea.l      -$26(a7), a7
0057ee: 41ef0008     lea.l      $8(a7), a0
0057f2: 2208         move.l     a0, d1
0057f4: 202f0026     move.l     $26(a7), d0
0057f8: 61000ad4     bsr.w      $62ce
0057fc: 2440         movea.l    d0, a2
0057fe: 4a80         tst.l      d0
005800: 67000108     beq.w      $590a
005804: 41ef0008     lea.l      $8(a7), a0
005808: 2008         move.l     a0, d0
00580a: 61000b08     bsr.w      $6314
00580e: 2f400004     move.l     d0, $4(a7)
005812: 6d0000f6     blt.w      $590a
005816: 41ef0022     lea.l      $22(a7), a0
00581a: 2208         move.l     a0, d1
00581c: 200a         move.l     a2, d0
00581e: 61000b7a     bsr.w      $639a
005822: 2440         movea.l    d0, a2
005824: 4a80         tst.l      d0
005826: 670000e2     beq.w      $590a
00582a: 202f0004     move.l     $4(a7), d0
00582e: e588         lsl.l      #$2, d0
005830: 41ee94ec     lea.l      -$6b14(a6), a0
005834: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
00583a: 6600009a     bne.w      $58d6
00583e: 7203         moveq      #$3, d1
005840: 41ef0008     lea.l      $8(a7), a0
005844: 2008         move.l     a0, d0
005846: 61000f84     bsr.w      $67cc
00584a: 222f0004     move.l     $4(a7), d1
00584e: e589         lsl.l      #$2, d1
005850: 41ee94ec     lea.l      -$6b14(a6), a0
005854: 31801800     move.w     d0, (a0, d1.l)
005858: 6d0000ca     blt.w      $5924
00585c: 202f0004     move.l     $4(a7), d0
005860: e588         lsl.l      #$2, d0
005862: 41ee94ec     lea.l      -$6b14(a6), a0
005866: 2400         move.l     d0, d2
005868: 42a7         clr.l      -(a7)
00586a: 202f0008     move.l     $8(a7), d0
00586e: e588         lsl.l      #$2, d0
005870: 43ee94ec     lea.l      -$6b14(a6), a1
005874: 32710800     movea.w    (a1, d0.l), a1
005878: 2209         move.l     a1, d1
00587a: 203c0000ff0e move.l     #$ff0e, d0
005880: 61000d08     bsr.w      $658a
005884: 588f         addq.l     #$4, a7
005886: 2240         movea.l    d0, a1
005888: 7000         moveq      #$0, d0
00588a: 1011         move.b     (a1), d0
00588c: 31802802     move.w     d0, $2(a0, d2.l)
005890: 202f0004     move.l     $4(a7), d0
005894: e588         lsl.l      #$2, d0
005896: 41ee94ec     lea.l      -$6b14(a6), a0
00589a: 4a700800     tst.w      (a0, d0.l)
00589e: 6d36         blt.b      $58d6
0058a0: 202f0004     move.l     $4(a7), d0
0058a4: e588         lsl.l      #$2, d0
0058a6: 41ee94ec     lea.l      -$6b14(a6), a0
0058aa: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
0058b0: 6c24         bge.b      $58d6
0058b2: 202f0004     move.l     $4(a7), d0
0058b6: e588         lsl.l      #$2, d0
0058b8: 41ee94ec     lea.l      -$6b14(a6), a0
0058bc: 30700800     movea.w    (a0, d0.l), a0
0058c0: 2008         move.l     a0, d0
0058c2: 61000f38     bsr.w      $67fc
0058c6: 202f0004     move.l     $4(a7), d0
0058ca: e588         lsl.l      #$2, d0
0058cc: 41ee94ec     lea.l      -$6b14(a6), a0
0058d0: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
0058d6: 202f0004     move.l     $4(a7), d0
0058da: e588         lsl.l      #$2, d0
0058dc: 41ee94ec     lea.l      -$6b14(a6), a0
0058e0: 30300802     move.w     $2(a0, d0.l), d0
0058e4: 48c0         ext.l      d0
0058e6: b0af0022     cmp.l      $22(a7), d0
0058ea: 661e         bne.b      $590a
0058ec: 0c12005f     cmpi.b     #$5f, (a2)
0058f0: 6610         bne.b      $5902
0058f2: 6004         bra.b      $58f8
0058f4: 4a12         tst.b      (a2)
0058f6: 672c         beq.b      $5924
0058f8: 528a         addq.l     #$1, a2
0058fa: 0c12005f     cmpi.b     #$5f, (a2)
0058fe: 66f4         bne.b      $58f4
005900: 528a         addq.l     #$1, a2
005902: 222f002a     move.l     $2a(a7), d1
005906: 200a         move.l     a2, d0
005908: 6008         bra.b      $5912
00590a: 222f002a     move.l     $2a(a7), d1
00590e: 202f0026     move.l     $26(a7), d0
005912: 242f004e     move.l     $4e(a7), d2
005916: e58a         lsl.l      #$2, d2
005918: 41ee94a6     lea.l      -$6b5a(a6), a0
00591c: 20702800     movea.l    (a0, d2.l), a0
005920: 4e90         jsr        (a0)
005922: 6002         bra.b      $5926
005924: 70ff         moveq      #$ff, d0
005926: 4fef0026     lea.l      $26(a7), a7
00592a: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
005930: 4e5d         unlk       a5
005932: 4e75         rts        
005934: 4e550000     link.w     a5, #$0
005938: 48e7c080     movem.l    d0-d1/a0, -(a7)
00593c: 2f2f0018     move.l     $18(a7), -(a7)
005940: 306f001a     movea.w    $1a(a7), a0
005944: 2f08         move.l     a0, -(a7)
005946: 222f000c     move.l     $c(a7), d1
00594a: 202f0008     move.l     $8(a7), d0
00594e: 610c         bsr.b      $595c
005950: 508f         addq.l     #$8, a7
005952: 4ced0100fffc movem.l    -$4(a5), a0
005958: 4e5d         unlk       a5
00595a: 4e75         rts        
00595c: 4e550000     link.w     a5, #$0
005960: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
005964: 4fefffda     lea.l      -$26(a7), a7
005968: 41ef0008     lea.l      $8(a7), a0
00596c: 2208         move.l     a0, d1
00596e: 202f0026     move.l     $26(a7), d0
005972: 6100095a     bsr.w      $62ce
005976: 2440         movea.l    d0, a2
005978: 4a80         tst.l      d0
00597a: 67000112     beq.w      $5a8e
00597e: 41ef0008     lea.l      $8(a7), a0
005982: 2008         move.l     a0, d0
005984: 6100098e     bsr.w      $6314
005988: 2f400004     move.l     d0, $4(a7)
00598c: 6d000100     blt.w      $5a8e
005990: 41ef0022     lea.l      $22(a7), a0
005994: 2208         move.l     a0, d1
005996: 200a         move.l     a2, d0
005998: 61000a00     bsr.w      $639a
00599c: 2440         movea.l    d0, a2
00599e: 4a80         tst.l      d0
0059a0: 670000ec     beq.w      $5a8e
0059a4: 202f0004     move.l     $4(a7), d0
0059a8: e588         lsl.l      #$2, d0
0059aa: 41ee94ec     lea.l      -$6b14(a6), a0
0059ae: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0059b4: 6600009a     bne.w      $5a50
0059b8: 7203         moveq      #$3, d1
0059ba: 41ef0008     lea.l      $8(a7), a0
0059be: 2008         move.l     a0, d0
0059c0: 61000e0a     bsr.w      $67cc
0059c4: 222f0004     move.l     $4(a7), d1
0059c8: e589         lsl.l      #$2, d1
0059ca: 41ee94ec     lea.l      -$6b14(a6), a0
0059ce: 31801800     move.w     d0, (a0, d1.l)
0059d2: 6d0000d4     blt.w      $5aa8
0059d6: 202f0004     move.l     $4(a7), d0
0059da: e588         lsl.l      #$2, d0
0059dc: 41ee94ec     lea.l      -$6b14(a6), a0
0059e0: 2400         move.l     d0, d2
0059e2: 42a7         clr.l      -(a7)
0059e4: 202f0008     move.l     $8(a7), d0
0059e8: e588         lsl.l      #$2, d0
0059ea: 43ee94ec     lea.l      -$6b14(a6), a1
0059ee: 32710800     movea.w    (a1, d0.l), a1
0059f2: 2209         move.l     a1, d1
0059f4: 203c0000ff0e move.l     #$ff0e, d0
0059fa: 61000b8e     bsr.w      $658a
0059fe: 588f         addq.l     #$4, a7
005a00: 2240         movea.l    d0, a1
005a02: 7000         moveq      #$0, d0
005a04: 1011         move.b     (a1), d0
005a06: 31802802     move.w     d0, $2(a0, d2.l)
005a0a: 202f0004     move.l     $4(a7), d0
005a0e: e588         lsl.l      #$2, d0
005a10: 41ee94ec     lea.l      -$6b14(a6), a0
005a14: 4a700800     tst.w      (a0, d0.l)
005a18: 6d36         blt.b      $5a50
005a1a: 202f0004     move.l     $4(a7), d0
005a1e: e588         lsl.l      #$2, d0
005a20: 41ee94ec     lea.l      -$6b14(a6), a0
005a24: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
005a2a: 6c24         bge.b      $5a50
005a2c: 202f0004     move.l     $4(a7), d0
005a30: e588         lsl.l      #$2, d0
005a32: 41ee94ec     lea.l      -$6b14(a6), a0
005a36: 30700800     movea.w    (a0, d0.l), a0
005a3a: 2008         move.l     a0, d0
005a3c: 61000dbe     bsr.w      $67fc
005a40: 202f0004     move.l     $4(a7), d0
005a44: e588         lsl.l      #$2, d0
005a46: 41ee94ec     lea.l      -$6b14(a6), a0
005a4a: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
005a50: 202f0004     move.l     $4(a7), d0
005a54: e588         lsl.l      #$2, d0
005a56: 41ee94ec     lea.l      -$6b14(a6), a0
005a5a: 30300802     move.w     $2(a0, d0.l), d0
005a5e: 48c0         ext.l      d0
005a60: b0af0022     cmp.l      $22(a7), d0
005a64: 6628         bne.b      $5a8e
005a66: 0c12005f     cmpi.b     #$5f, (a2)
005a6a: 6610         bne.b      $5a7c
005a6c: 6004         bra.b      $5a72
005a6e: 4a12         tst.b      (a2)
005a70: 6736         beq.b      $5aa8
005a72: 528a         addq.l     #$1, a2
005a74: 0c12005f     cmpi.b     #$5f, (a2)
005a78: 66f4         bne.b      $5a6e
005a7a: 528a         addq.l     #$1, a2
005a7c: 2f2f0052     move.l     $52(a7), -(a7)
005a80: 306f0054     movea.w    $54(a7), a0
005a84: 2f08         move.l     a0, -(a7)
005a86: 222f0032     move.l     $32(a7), d1
005a8a: 200a         move.l     a2, d0
005a8c: 6012         bra.b      $5aa0
005a8e: 2f2f0052     move.l     $52(a7), -(a7)
005a92: 306f0054     movea.w    $54(a7), a0
005a96: 2f08         move.l     a0, -(a7)
005a98: 222f0032     move.l     $32(a7), d1
005a9c: 202f002e     move.l     $2e(a7), d0
005aa0: 61000d22     bsr.w      $67c4
005aa4: 508f         addq.l     #$8, a7
005aa6: 6002         bra.b      $5aaa
005aa8: 70ff         moveq      #$ff, d0
005aaa: 4fef0026     lea.l      $26(a7), a7
005aae: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
005ab4: 4e5d         unlk       a5
005ab6: 4e75         rts        
005ab8: 4e550000     link.w     a5, #$0
005abc: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
005ac0: 4fefffc8     lea.l      -$38(a7), a7
005ac4: 2f6f00380008 move.l     $38(a7), $8(a7)
005aca: 4a2f0009     tst.b      $9(a7)
005ace: 660e         bne.b      $5ade
005ad0: 306f003e     movea.w    $3e(a7), a0
005ad4: 2208         move.l     a0, d1
005ad6: 202f0008     move.l     $8(a7), d0
005ada: 600000c8     bra.w      $5ba4
005ade: 4aae94b6     tst.l      -$6b4a(a6)
005ae2: 6608         bne.b      $5aec
005ae4: 61000a80     bsr.w      $6566
005ae8: 2d4094b6     move.l     d0, -$6b4a(a6)
005aec: 7000         moveq      #$0, d0
005aee: 102f0008     move.b     $8(a7), d0
005af2: e588         lsl.l      #$2, d0
005af4: 41ee94ec     lea.l      -$6b14(a6), a0
005af8: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
005afe: 66000080     bne.w      $5b80
005b02: 7000         moveq      #$0, d0
005b04: 102f0008     move.b     $8(a7), d0
005b08: e588         lsl.l      #$2, d0
005b0a: 206e94b6     movea.l    -$6b4a(a6), a0
005b0e: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
005b12: 41fa016e     lea.l      $5c82(pc), a0
005b16: 2208         move.l     a0, d1
005b18: 41ef001c     lea.l      $1c(a7), a0
005b1c: 2008         move.l     a0, d0
005b1e: 61000c6c     bsr.w      $678c
005b22: 588f         addq.l     #$4, a7
005b24: 7203         moveq      #$3, d1
005b26: 41ef0018     lea.l      $18(a7), a0
005b2a: 2008         move.l     a0, d0
005b2c: 61000c9e     bsr.w      $67cc
005b30: 7200         moveq      #$0, d1
005b32: 122f0008     move.b     $8(a7), d1
005b36: e589         lsl.l      #$2, d1
005b38: 41ee94ec     lea.l      -$6b14(a6), a0
005b3c: 31801800     move.w     d0, (a0, d1.l)
005b40: 6c06         bge.b      $5b48
005b42: 70ff         moveq      #$ff, d0
005b44: 6000012e     bra.w      $5c74
005b48: 7000         moveq      #$0, d0
005b4a: 102f0008     move.b     $8(a7), d0
005b4e: e588         lsl.l      #$2, d0
005b50: 41ee94ec     lea.l      -$6b14(a6), a0
005b54: 2400         move.l     d0, d2
005b56: 42a7         clr.l      -(a7)
005b58: 7000         moveq      #$0, d0
005b5a: 102f000c     move.b     $c(a7), d0
005b5e: e588         lsl.l      #$2, d0
005b60: 43ee94ec     lea.l      -$6b14(a6), a1
005b64: 32710800     movea.w    (a1, d0.l), a1
005b68: 2209         move.l     a1, d1
005b6a: 203c0000ff0e move.l     #$ff0e, d0
005b70: 61000a18     bsr.w      $658a
005b74: 588f         addq.l     #$4, a7
005b76: 2240         movea.l    d0, a1
005b78: 7000         moveq      #$0, d0
005b7a: 1011         move.b     (a1), d0
005b7c: 31802802     move.w     d0, $2(a0, d2.l)
005b80: 7000         moveq      #$0, d0
005b82: 102f0008     move.b     $8(a7), d0
005b86: e588         lsl.l      #$2, d0
005b88: 41ee94ec     lea.l      -$6b14(a6), a0
005b8c: 7200         moveq      #$0, d1
005b8e: 122f0009     move.b     $9(a7), d1
005b92: b2700802     cmp.w      $2(a0, d0.l), d1
005b96: 6614         bne.b      $5bac
005b98: 306f003e     movea.w    $3e(a7), a0
005b9c: 2208         move.l     a0, d1
005b9e: 7000         moveq      #$0, d0
005ba0: 302f000a     move.w     $a(a7), d0
005ba4: 61001680     bsr.w      $7226
005ba8: 600000ca     bra.w      $5c74
005bac: 4aae94b2     tst.l      -$6b4e(a6)
005bb0: 661a         bne.b      $5bcc
005bb2: 61001730     bsr.w      $72e4
005bb6: 2d4094b2     move.l     d0, -$6b4e(a6)
005bba: 2d7c00010000905c move.l     #$10000, -$6fa4(a6)
005bc2: 2d6e94b29060 move.l     -$6b4e(a6), -$6fa0(a6)
005bc8: 42ae9058     clr.l      -$6fa8(a6)
005bcc: 7001         moveq      #$1, d0
005bce: 2d409078     move.l     d0, -$6f88(a6)
005bd2: 7008         moveq      #$8, d0
005bd4: 2d40907c     move.l     d0, -$6f84(a6)
005bd8: 41d7         lea.l      (a7), a0
005bda: 2d489080     move.l     a0, -$6f80(a6)
005bde: 41ee9054     lea.l      -$6fac(a6), a0
005be2: 2d489088     move.l     a0, -$6f78(a6)
005be6: 7018         moveq      #$18, d0
005be8: 2d409084     move.l     d0, -$6f7c(a6)
005bec: 7000         moveq      #$0, d0
005bee: 302f000a     move.w     $a(a7), d0
005bf2: 2d409064     move.l     d0, -$6f9c(a6)
005bf6: 306f003e     movea.w    $3e(a7), a0
005bfa: 2d489068     move.l     a0, -$6f98(a6)
005bfe: 1d6f00099057 move.b     $9(a7), -$6fa9(a6)
005c04: 422e9058     clr.b      -$6fa8(a6)
005c08: 486e9078     pea.l      -$6f88(a6)
005c0c: 7000         moveq      #$0, d0
005c0e: 102f000c     move.b     $c(a7), d0
005c12: e588         lsl.l      #$2, d0
005c14: 41ee94ec     lea.l      -$6b14(a6), a0
005c18: 30700800     movea.w    (a0, d0.l), a0
005c1c: 2208         move.l     a0, d1
005c1e: 203c0000ff05 move.l     #$ff05, d0
005c24: 610009c8     bsr.w      $65ee
005c28: 588f         addq.l     #$4, a7
005c2a: 2f400010     move.l     d0, $10(a7)
005c2e: 6c08         bge.b      $5c38
005c30: 70ff         moveq      #$ff, d0
005c32: 2f40000c     move.l     d0, $c(a7)
005c36: 6038         bra.b      $5c70
005c38: 2f2f0010     move.l     $10(a7), -(a7)
005c3c: 7000         moveq      #$0, d0
005c3e: 102f000c     move.b     $c(a7), d0
005c42: e588         lsl.l      #$2, d0
005c44: 41ee94ec     lea.l      -$6b14(a6), a0
005c48: 30700800     movea.w    (a0, d0.l), a0
005c4c: 2208         move.l     a0, d1
005c4e: 203c0000ff06 move.l     #$ff06, d0
005c54: 61000998     bsr.w      $65ee
005c58: 588f         addq.l     #$4, a7
005c5a: 2f40000c     move.l     d0, $c(a7)
005c5e: 6dd0         blt.b      $5c30
005c60: 2f6f0004000c move.l     $4(a7), $c(a7)
005c66: 4aaf0004     tst.l      $4(a7)
005c6a: 6c04         bge.b      $5c70
005c6c: 2d57800c     move.l     (a7), -$7ff4(a6)
005c70: 202f000c     move.l     $c(a7), d0
005c74: 4fef0038     lea.l      $38(a7), a7
005c78: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
005c7e: 4e5d         unlk       a5
005c80: 4e75         rts        
005c82: 2f25         move.l     -(a5), -(a7)
005c84: 7300         .dc.w      $7300
005c86: 4e550000     link.w     a5, #$0
005c8a: 48e7c080     movem.l    d0-d1/a0, -(a7)
005c8e: 7002         moveq      #$2, d0
005c90: b0ae94ba     cmp.l      -$6b46(a6), d0
005c94: 6c0c         bge.b      $5ca2
005c96: 2217         move.l     (a7), d1
005c98: 41fa052c     lea.l      $61c6(pc), a0
005c9c: 2008         move.l     a0, d0
005c9e: 61000ae4     bsr.w      $6784
005ca2: 0c9700000106 cmpi.l     #$106, (a7)
005ca8: 6608         bne.b      $5cb2
005caa: 7001         moveq      #$1, d0
005cac: 2d409094     move.l     d0, -$6f6c(a6)
005cb0: 600e         bra.b      $5cc0
005cb2: 4aae9098     tst.l      -$6f68(a6)
005cb6: 6708         beq.b      $5cc0
005cb8: 2017         move.l     (a7), d0
005cba: 206e9098     movea.l    -$6f68(a6), a0
005cbe: 4e90         jsr        (a0)
005cc0: 7000         moveq      #$0, d0
005cc2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
005cc8: 4e5d         unlk       a5
005cca: 4e75         rts        
005ccc: 4e550000     link.w     a5, #$0
005cd0: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
005cd4: 4fefff58     lea.l      -$a8(a7), a7
005cd8: 6010         bra.b      $5cea
005cda: 08ef000600de bset.b     #$6, $de(a7)
005ce0: 601c         bra.b      $5cfe
005ce2: 08ef000700de bset.b     #$7, $de(a7)
005ce8: 6014         bra.b      $5cfe
005cea: 202f00e0     move.l     $e0(a7), d0
005cee: 0c80a95acd81 cmpi.l     #$a95acd81, d0
005cf4: 67e4         beq.b      $5cda
005cf6: 0c80a95acd82 cmpi.l     #$a95acd82, d0
005cfc: 67e4         beq.b      $5ce2
005cfe: 41ef0094     lea.l      $94(a7), a0
005d02: 2208         move.l     a0, d1
005d04: 202f00ac     move.l     $ac(a7), d0
005d08: 610005c4     bsr.w      $62ce
005d0c: 2f400028     move.l     d0, $28(a7)
005d10: 6700015c     beq.w      $5e6e
005d14: 206f0028     movea.l    $28(a7), a0
005d18: 0c10005f     cmpi.b     #$5f, (a0)
005d1c: 66000150     bne.w      $5e6e
005d20: 2f6f002800ac move.l     $28(a7), $ac(a7)
005d26: 2d6f00ac94d6 move.l     $ac(a7), -$6b2a(a6)
005d2c: 41ef0094     lea.l      $94(a7), a0
005d30: 2d4894ca     move.l     a0, -$6b36(a6)
005d34: 41ef0094     lea.l      $94(a7), a0
005d38: 2008         move.l     a0, d0
005d3a: 610005d8     bsr.w      $6314
005d3e: 3f40002c     move.w     d0, $2c(a7)
005d42: 6c0c         bge.b      $5d50
005d44: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
005d4c: 60000242     bra.w      $5f90
005d50: 422f0052     clr.b      $52(a7)
005d54: 41ef0046     lea.l      $46(a7), a0
005d58: 2208         move.l     a0, d1
005d5a: 202f00ac     move.l     $ac(a7), d0
005d5e: 6100063a     bsr.w      $639a
005d62: 2f400028     move.l     d0, $28(a7)
005d66: 67000106     beq.w      $5e6e
005d6a: 1f6f00490051 move.b     $49(a7), $51(a7)
005d70: 2f6f002800ac move.l     $28(a7), $ac(a7)
005d76: 302f002c     move.w     $2c(a7), d0
005d7a: 48c0         ext.l      d0
005d7c: e588         lsl.l      #$2, d0
005d7e: 41ee94ec     lea.l      -$6b14(a6), a0
005d82: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
005d88: 660000b6     bne.w      $5e40
005d8c: 486f0094     pea.l      $94(a7)
005d90: 41fa0464     lea.l      $61f6(pc), a0
005d94: 2208         move.l     a0, d1
005d96: 41ef0078     lea.l      $78(a7), a0
005d9a: 2008         move.l     a0, d0
005d9c: 610009ee     bsr.w      $678c
005da0: 588f         addq.l     #$4, a7
005da2: 7001         moveq      #$1, d0
005da4: b0ae94ba     cmp.l      -$6b46(a6), d0
005da8: 6c10         bge.b      $5dba
005daa: 41ef0074     lea.l      $74(a7), a0
005dae: 2208         move.l     a0, d1
005db0: 41fa0447     lea.l      $61f9(pc), a0
005db4: 2008         move.l     a0, d0
005db6: 610009cc     bsr.w      $6784
005dba: 7203         moveq      #$3, d1
005dbc: 41ef0074     lea.l      $74(a7), a0
005dc0: 2008         move.l     a0, d0
005dc2: 61000a08     bsr.w      $67cc
005dc6: 322f002c     move.w     $2c(a7), d1
005dca: 48c1         ext.l      d1
005dcc: e589         lsl.l      #$2, d1
005dce: 41ee94ec     lea.l      -$6b14(a6), a0
005dd2: 31801800     move.w     d0, (a0, d1.l)
005dd6: 6c30         bge.b      $5e08
005dd8: 7001         moveq      #$1, d0
005dda: b0ae94ba     cmp.l      -$6b46(a6), d0
005dde: 6c0001b0     bge.w      $5f90
005de2: 302f002c     move.w     $2c(a7), d0
005de6: 48c0         ext.l      d0
005de8: e588         lsl.l      #$2, d0
005dea: 41ee94ec     lea.l      -$6b14(a6), a0
005dee: 30700800     movea.w    (a0, d0.l), a0
005df2: 2f08         move.l     a0, -(a7)
005df4: 222f004a     move.l     $4a(a7), d1
005df8: 41fa0418     lea.l      $6212(pc), a0
005dfc: 2008         move.l     a0, d0
005dfe: 61000984     bsr.w      $6784
005e02: 588f         addq.l     #$4, a7
005e04: 6000018a     bra.w      $5f90
005e08: 302f002c     move.w     $2c(a7), d0
005e0c: 48c0         ext.l      d0
005e0e: e588         lsl.l      #$2, d0
005e10: 41ee94ec     lea.l      -$6b14(a6), a0
005e14: 2400         move.l     d0, d2
005e16: 42a7         clr.l      -(a7)
005e18: 302f0030     move.w     $30(a7), d0
005e1c: 48c0         ext.l      d0
005e1e: e588         lsl.l      #$2, d0
005e20: 43ee94ec     lea.l      -$6b14(a6), a1
005e24: 32710800     movea.w    (a1, d0.l), a1
005e28: 2209         move.l     a1, d1
005e2a: 203c0000ff0e move.l     #$ff0e, d0
005e30: 61000758     bsr.w      $658a
005e34: 588f         addq.l     #$4, a7
005e36: 2240         movea.l    d0, a1
005e38: 7000         moveq      #$0, d0
005e3a: 1011         move.b     (a1), d0
005e3c: 31802802     move.w     d0, $2(a0, d2.l)
005e40: 302f002c     move.w     $2c(a7), d0
005e44: 48c0         ext.l      d0
005e46: e588         lsl.l      #$2, d0
005e48: 41ee94ec     lea.l      -$6b14(a6), a0
005e4c: 30300802     move.w     $2(a0, d0.l), d0
005e50: 48c0         ext.l      d0
005e52: b0af0046     cmp.l      $46(a7), d0
005e56: 6642         bne.b      $5e9a
005e58: 7001         moveq      #$1, d0
005e5a: b0ae94ba     cmp.l      -$6b46(a6), d0
005e5e: 6c0e         bge.b      $5e6e
005e60: 222f00ac     move.l     $ac(a7), d1
005e64: 41fa03bf     lea.l      $6225(pc), a0
005e68: 2008         move.l     a0, d0
005e6a: 61000918     bsr.w      $6784
005e6e: 306f00de     movea.w    $de(a7), a0
005e72: 2f08         move.l     a0, -(a7)
005e74: 306f00de     movea.w    $de(a7), a0
005e78: 2f08         move.l     a0, -(a7)
005e7a: 2f2f00dc     move.l     $dc(a7), -(a7)
005e7e: 2f2f00dc     move.l     $dc(a7), -(a7)
005e82: 2f2f00dc     move.l     $dc(a7), -(a7)
005e86: 222f00c0     move.l     $c0(a7), d1
005e8a: 202f00bc     move.l     $bc(a7), d0
005e8e: 6100098c     bsr.w      $681c
005e92: 4fef0014     lea.l      $14(a7), a7
005e96: 6000030a     bra.w      $61a2
005e9a: 4a6e94de     tst.w      -$6b22(a6)
005e9e: 6608         bne.b      $5ea8
005ea0: 61001442     bsr.w      $72e4
005ea4: 3d4094de     move.w     d0, -$6b22(a6)
005ea8: 42ae9098     clr.l      -$6f68(a6)
005eac: 306e94de     movea.w    -$6b22(a6), a0
005eb0: 2008         move.l     a0, d0
005eb2: 6100068c     bsr.w      $6540
005eb6: 2d409098     move.l     d0, -$6f68(a6)
005eba: 7001         moveq      #$1, d0
005ebc: b0ae94ba     cmp.l      -$6b46(a6), d0
005ec0: 6c0e         bge.b      $5ed0
005ec2: 222e9098     move.l     -$6f68(a6), d1
005ec6: 41fa0384     lea.l      $624c(pc), a0
005eca: 2008         move.l     a0, d0
005ecc: 610008b6     bsr.w      $6784
005ed0: 41fafdb4     lea.l      $5c86(pc), a0
005ed4: 2008         move.l     a0, d0
005ed6: 610002d8     bsr.w      $61b0
005eda: 306f00de     movea.w    $de(a7), a0
005ede: 2f08         move.l     a0, -(a7)
005ee0: 42a7         clr.l      -(a7)
005ee2: 42a7         clr.l      -(a7)
005ee4: 2f2f00dc     move.l     $dc(a7), -(a7)
005ee8: 486e94be     pea.l      -$6b42(a6)
005eec: 41fa0374     lea.l      $6262(pc), a0
005ef0: 2208         move.l     a0, d1
005ef2: 41fa1394     lea.l      $7288(pc), a0
005ef6: 2008         move.l     a0, d0
005ef8: 61000922     bsr.w      $681c
005efc: 4fef0014     lea.l      $14(a7), a7
005f00: 2f40005e     move.l     d0, $5e(a7)
005f04: 6f00008a     ble.w      $5f90
005f08: 2f7c000200000056 move.l     #$20000, $56(a7)
005f10: 42af005a     clr.l      $5a(a7)
005f14: 2f6f00d40062 move.l     $d4(a7), $62(a7)
005f1a: 3f6f00da0066 move.w     $da(a7), $66(a7)
005f20: 3f6f00de0068 move.w     $de(a7), $68(a7)
005f26: 3f6f002c006c move.w     $2c(a7), $6c(a7)
005f2c: 3f6e94de006a move.w     -$6b22(a6), $6a(a7)
005f32: 7001         moveq      #$1, d0
005f34: 2f40004a     move.l     d0, $4a(a7)
005f38: 42af0042     clr.l      $42(a7)
005f3c: 6004         bra.b      $5f42
005f3e: 52af004a     addq.l     #$1, $4a(a7)
005f42: 202f0042     move.l     $42(a7), d0
005f46: 52af0042     addq.l     #$1, $42(a7)
005f4a: e588         lsl.l      #$2, d0
005f4c: 206f00cc     movea.l    $cc(a7), a0
005f50: 4ab00800     tst.l      (a0, d0.l)
005f54: 66e8         bne.b      $5f3e
005f56: 52af004a     addq.l     #$1, $4a(a7)
005f5a: 42af0042     clr.l      $42(a7)
005f5e: 6004         bra.b      $5f64
005f60: 52af004a     addq.l     #$1, $4a(a7)
005f64: 202f0042     move.l     $42(a7), d0
005f68: 52af0042     addq.l     #$1, $42(a7)
005f6c: e588         lsl.l      #$2, d0
005f6e: 206f00d0     movea.l    $d0(a7), a0
005f72: 4ab00800     tst.l      (a0, d0.l)
005f76: 66e8         bne.b      $5f60
005f78: 52af004a     addq.l     #$1, $4a(a7)
005f7c: 202f004a     move.l     $4a(a7), d0
005f80: e788         lsl.l      #$3, d0
005f82: 7214         moveq      #$14, d1
005f84: d081         add.l      d1, d0
005f86: 610008b8     bsr.w      $6840
005f8a: 2440         movea.l    d0, a2
005f8c: 4a80         tst.l      d0
005f8e: 6606         bne.b      $5f96
005f90: 70ff         moveq      #$ff, d0
005f92: 6000020e     bra.w      $61a2
005f96: 202f004a     move.l     $4a(a7), d0
005f9a: 5280         addq.l     #$1, d0
005f9c: 2480         move.l     d0, (a2)
005f9e: 257c000000080004 move.l     #$8, $4(a2)
005fa6: 41ef0020     lea.l      $20(a7), a0
005faa: 25480008     move.l     a0, $8(a2)
005fae: 700c         moveq      #$c, d0
005fb0: d08a         add.l      a2, d0
005fb2: 2640         movea.l    d0, a3
005fb4: 41ef004e     lea.l      $4e(a7), a0
005fb8: 27480004     move.l     a0, $4(a3)
005fbc: 26bc00000020 move.l     #$20, (a3)
005fc2: 508b         addq.l     #$8, a3
005fc4: 276f00ac0004 move.l     $ac(a7), $4(a3)
005fca: 202f00ac     move.l     $ac(a7), d0
005fce: 61000910     bsr.w      $68e0
005fd2: 5280         addq.l     #$1, d0
005fd4: 2680         move.l     d0, (a3)
005fd6: 508b         addq.l     #$8, a3
005fd8: 42af0042     clr.l      $42(a7)
005fdc: 605a         bra.b      $6038
005fde: 7001         moveq      #$1, d0
005fe0: b0ae94ba     cmp.l      -$6b46(a6), d0
005fe4: 6c26         bge.b      $600c
005fe6: 222f0042     move.l     $42(a7), d1
005fea: 41fa027d     lea.l      $6269(pc), a0
005fee: 2008         move.l     a0, d0
005ff0: 61000792     bsr.w      $6784
005ff4: 202f0042     move.l     $42(a7), d0
005ff8: e588         lsl.l      #$2, d0
005ffa: 206f00cc     movea.l    $cc(a7), a0
005ffe: 22300800     move.l     (a0, d0.l), d1
006002: 41fa0285     lea.l      $6289(pc), a0
006006: 2008         move.l     a0, d0
006008: 6100077a     bsr.w      $6784
00600c: 202f0042     move.l     $42(a7), d0
006010: e588         lsl.l      #$2, d0
006012: 206f00cc     movea.l    $cc(a7), a0
006016: 277008000004 move.l     (a0, d0.l), $4(a3)
00601c: 202f0042     move.l     $42(a7), d0
006020: 52af0042     addq.l     #$1, $42(a7)
006024: e588         lsl.l      #$2, d0
006026: 206f00cc     movea.l    $cc(a7), a0
00602a: 20300800     move.l     (a0, d0.l), d0
00602e: 610008b0     bsr.w      $68e0
006032: 5280         addq.l     #$1, d0
006034: 2680         move.l     d0, (a3)
006036: 508b         addq.l     #$8, a3
006038: 202f0042     move.l     $42(a7), d0
00603c: e588         lsl.l      #$2, d0
00603e: 206f00cc     movea.l    $cc(a7), a0
006042: 4ab00800     tst.l      (a0, d0.l)
006046: 6696         bne.b      $5fde
006048: 41fa024e     lea.l      $6298(pc), a0
00604c: 27480004     move.l     a0, $4(a3)
006050: 26bc00000001 move.l     #$1, (a3)
006056: 508b         addq.l     #$8, a3
006058: 42af0042     clr.l      $42(a7)
00605c: 604c         bra.b      $60aa
00605e: 7001         moveq      #$1, d0
006060: b0ae94ba     cmp.l      -$6b46(a6), d0
006064: 6c18         bge.b      $607e
006066: 202f0042     move.l     $42(a7), d0
00606a: e588         lsl.l      #$2, d0
00606c: 206f00d0     movea.l    $d0(a7), a0
006070: 22300800     move.l     (a0, d0.l), d1
006074: 41fa0223     lea.l      $6299(pc), a0
006078: 2008         move.l     a0, d0
00607a: 61000708     bsr.w      $6784
00607e: 202f0042     move.l     $42(a7), d0
006082: e588         lsl.l      #$2, d0
006084: 206f00d0     movea.l    $d0(a7), a0
006088: 277008000004 move.l     (a0, d0.l), $4(a3)
00608e: 202f0042     move.l     $42(a7), d0
006092: 52af0042     addq.l     #$1, $42(a7)
006096: e588         lsl.l      #$2, d0
006098: 206f00d0     movea.l    $d0(a7), a0
00609c: 20300800     move.l     (a0, d0.l), d0
0060a0: 6100083e     bsr.w      $68e0
0060a4: 5280         addq.l     #$1, d0
0060a6: 2680         move.l     d0, (a3)
0060a8: 508b         addq.l     #$8, a3
0060aa: 202f0042     move.l     $42(a7), d0
0060ae: e588         lsl.l      #$2, d0
0060b0: 206f00d0     movea.l    $d0(a7), a0
0060b4: 4ab00800     tst.l      (a0, d0.l)
0060b8: 66a4         bne.b      $605e
0060ba: 41fa01ec     lea.l      $62a8(pc), a0
0060be: 27480004     move.l     a0, $4(a3)
0060c2: 26bc00000001 move.l     #$1, (a3)
0060c8: 508b         addq.l     #$8, a3
0060ca: 7001         moveq      #$1, d0
0060cc: 61000d78     bsr.w      $6e46
0060d0: 42ae9090     clr.l      -$6f70(a6)
0060d4: 600a         bra.b      $60e0
0060d6: 52ae9090     addq.l     #$1, -$6f70(a6)
0060da: 7001         moveq      #$1, d0
0060dc: 61000d68     bsr.w      $6e46
0060e0: 4aae9094     tst.l      -$6f6c(a6)
0060e4: 67f0         beq.b      $60d6
0060e6: 7064         moveq      #$64, d0
0060e8: b0ae9090     cmp.l      -$6f70(a6), d0
0060ec: 6e0e         bgt.b      $60fc
0060ee: 222e9090     move.l     -$6f70(a6), d1
0060f2: 41fa01b5     lea.l      $62a9(pc), a0
0060f6: 2008         move.l     a0, d0
0060f8: 6100068a     bsr.w      $6784
0060fc: 4aae9098     tst.l      -$6f68(a6)
006100: 6708         beq.b      $610a
006102: 202e9098     move.l     -$6f68(a6), d0
006106: 610000a8     bsr.w      $61b0
00610a: 4852         pea.l      (a2)
00610c: 302f0030     move.w     $30(a7), d0
006110: 48c0         ext.l      d0
006112: e588         lsl.l      #$2, d0
006114: 41ee94ec     lea.l      -$6b14(a6), a0
006118: 30700800     movea.w    (a0, d0.l), a0
00611c: 2208         move.l     a0, d1
00611e: 203c0000ff05 move.l     #$ff05, d0
006124: 610004c8     bsr.w      $65ee
006128: 588f         addq.l     #$4, a7
00612a: 2f40003a     move.l     d0, $3a(a7)
00612e: 6c08         bge.b      $6138
006130: 70ff         moveq      #$ff, d0
006132: 2f40002e     move.l     d0, $2e(a7)
006136: 6060         bra.b      $6198
006138: 2f2f003a     move.l     $3a(a7), -(a7)
00613c: 302f0030     move.w     $30(a7), d0
006140: 48c0         ext.l      d0
006142: e588         lsl.l      #$2, d0
006144: 41ee94ec     lea.l      -$6b14(a6), a0
006148: 30700800     movea.w    (a0, d0.l), a0
00614c: 2208         move.l     a0, d1
00614e: 203c0000ff06 move.l     #$ff06, d0
006154: 61000498     bsr.w      $65ee
006158: 588f         addq.l     #$4, a7
00615a: 2f40002e     move.l     d0, $2e(a7)
00615e: 6c10         bge.b      $6170
006160: 70ff         moveq      #$ff, d0
006162: 2f40002e     move.l     d0, $2e(a7)
006166: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
00616e: 6028         bra.b      $6198
006170: 2f6f0024002e move.l     $24(a7), $2e(a7)
006176: 4aaf002e     tst.l      $2e(a7)
00617a: 6c16         bge.b      $6192
00617c: 223c00008000 move.l     #$8000, d1
006182: 202f005e     move.l     $5e(a7), d0
006186: 6100109e     bsr.w      $7226
00618a: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
006190: 6006         bra.b      $6198
006192: 1f6f002d002e move.b     $2d(a7), $2e(a7)
006198: 200a         move.l     a2, d0
00619a: 610006b0     bsr.w      $684c
00619e: 202f002e     move.l     $2e(a7), d0
0061a2: 4fef00a8     lea.l      $a8(a7), a7
0061a6: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
0061ac: 4e5d         unlk       a5
0061ae: 4e75         rts        
0061b0: 4e550000     link.w     a5, #$0
0061b4: 48e78000     movem.l    d0, -(a7)
0061b8: 2d5794fc     move.l     (a7), -$6b04(a6)
0061bc: 2017         move.l     (a7), d0
0061be: 6100115c     bsr.w      $731c
0061c2: 4e5d         unlk       a5
0061c4: 4e75         rts        
0061c6: 5369676e     subq.w     #$1, $676e(a1)
0061ca: 616c         bsr.b      $6238
0061cc: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
0061d6: 2063         movea.l    -(a3), a0
0061d8: 6f64         ble.b      $623e
0061da: 653d         bcs.b      $6219
0061dc: 2025         move.l     -(a5), d0
0061de: 780d         moveq      #$d, d4
0061e0: 007365727665 ori.w      #$6572, $65(a3, d7.w)
0061e6: 7200         moveq      #$0, d1
0061e8: 3200         move.w     d0, d1
0061ea: 3000         move.w     d0, d0
0061ec: 2f633000     move.l     -(a3), $3000(a7)
0061f0: 3000         move.w     d0, d0
0061f2: 3000         move.w     d0, d0
0061f4: 3000         move.w     d0, d0
0061f6: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
0061fc: 6e20         bgt.b      $621e
0061fe: 6361         bls.b      $6261
006200: 726f         moveq      #$6f, d1
006202: 7370         .dc.w      $7370
006204: 6174         bsr.b      $627a
006206: 6820         bvc.b      $6228
006208: 6e61         bgt.b      $626b
00620a: 6d65         blt.b      $6271
00620c: 6420         bcc.b      $622e
00620e: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
006214: 7468         moveq      #$68, d2
006216: 6964         bvs.b      $627c
006218: 5b25         subq.b     #$5, -(a5)
00621a: 645d         bcc.b      $6279
00621c: 206d6772     movea.l    $6772(a5), a0
006220: 3d25         move.w     -(a5), -(a6)
006222: 640d         bcc.b      $6231
006224: 00666f72     ori.w      #$6f72, -(a6)
006228: 6b69         bmi.b      $6293
00622a: 6e67         bgt.b      $6293
00622c: 2070726f     movea.l    $6f(a0, d7.w), a0
006230: 6365         bls.b      $6297
006232: 7373         .dc.w      $7373
006234: 206c6f63     movea.l    $6f63(a4), a0
006238: 616c         bsr.b      $62a6
00623a: 6c79         bge.b      $62b5
00623c: 2c20         move.l     -(a0), d6
00623e: 6d6f         blt.b      $62af
006240: 646e         bcc.b      $62b0
006242: 616d         bsr.b      $62b1
006244: 6520         bcs.b      $6266
006246: 3d20         move.w     -(a0), -(a6)
006248: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
00624e: 6420         bcc.b      $6270
006250: 6963         bvs.b      $62b5
006252: 7074         moveq      #$74, d0
006254: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
00625e: 25780d007365 move.l     $d00.w, $7365(a2)
006264: 7276         moveq      #$76, d1
006266: 6572         bcs.b      $62da
006268: 00656e74     ori.w      #$6e74, -(a5)
00626c: 6572         bcs.b      $62e0
00626e: 6564         bcs.b      $62d4
006270: 2061         movea.l    -(a1), a0
006272: 7267         moveq      #$67, d1
006274: 6c69         bge.b      $62df
006276: 7374         .dc.w      $7374
006278: 206c6f6f     movea.l    $6f6f(a4), a0
00627c: 702c         moveq      #$2c, d0
00627e: 20696e64     movea.l    $6e64(a1), a0
006282: 6578         bcs.b      $62fc
006284: 3d25         move.w     -(a5), -(a6)
006286: 640d         bcc.b      $6295
006288: 00415247     ori.w      #$5247, d1
00628c: 4c49         .dc.w      $4c49
00628e: 5354         subq.w     #$1, (a4)
006290: 5b695d3d     subq.w     #$5, $5d3d(a1)
006294: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
00629a: 4e564c49     link.w     a6, #$4c49
00629e: 5354         subq.w     #$1, (a4)
0062a0: 5b695d3d     subq.w     #$5, $5d3d(a1)
0062a4: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
0062aa: 796e         .dc.w      $796e
0062ac: 6368         bls.b      $6316
0062ae: 726f         moveq      #$6f, d1
0062b0: 6e69         bgt.b      $631b
0062b2: 7369         .dc.w      $7369
0062b4: 6e67         bgt.b      $631d
0062b6: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
0062c0: 6f6b         ble.b      $632d
0062c2: 2025         move.l     -(a5), d0
0062c4: 6420         bcc.b      $62e6
0062c6: 7469         moveq      #$69, d2
0062c8: 636b         bls.b      $6335
0062ca: 730d         .dc.w      $730d
0062cc: 00004e55     ori.b      #$55, d0
0062d0: 000048e7     ori.b      #$e7, d0
0062d4: c8302440     and.b      $40(a0, d2.w), d4
0062d8: 2641         movea.l    d1, a3
0062da: 558f         subq.l     #$2, a7
0062dc: 1012         move.b     (a2), d0
0062de: 1680         move.b     d0, (a3)
0062e0: 0c00002f     cmpi.b     #$2f, d0
0062e4: 6704         beq.b      $62ea
0062e6: 7000         moveq      #$0, d0
0062e8: 601e         bra.b      $6308
0062ea: 528a         addq.l     #$1, a2
0062ec: 528b         addq.l     #$1, a3
0062ee: 1012         move.b     (a2), d0
0062f0: 1680         move.b     d0, (a3)
0062f2: 1f400001     move.b     d0, $1(a7)
0062f6: 0c00002f     cmpi.b     #$2f, d0
0062fa: 6706         beq.b      $6302
0062fc: 4a2f0001     tst.b      $1(a7)
006300: 66e8         bne.b      $62ea
006302: 4213         clr.b      (a3)
006304: 528a         addq.l     #$1, a2
006306: 200a         move.l     a2, d0
006308: 548f         addq.l     #$2, a7
00630a: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
006310: 4e5d         unlk       a5
006312: 4e75         rts        
006314: 4e550000     link.w     a5, #$0
006318: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00631c: 2440         movea.l    d0, a2
00631e: 4aae94e0     tst.l      -$6b20(a6)
006322: 6608         bne.b      $632c
006324: 61000240     bsr.w      $6566
006328: 2d4094e0     move.l     d0, -$6b20(a6)
00632c: 7800         moveq      #$0, d4
00632e: 601a         bra.b      $634a
006330: 2004         move.l     d4, d0
006332: e588         lsl.l      #$2, d0
006334: 206e94e0     movea.l    -$6b20(a6), a0
006338: 2230081a     move.l     $1a(a0, d0.l), d1
00633c: 200a         move.l     a2, d0
00633e: 5280         addq.l     #$1, d0
006340: 6100052a     bsr.w      $686c
006344: 4a80         tst.l      d0
006346: 6710         beq.b      $6358
006348: 5284         addq.l     #$1, d4
00634a: 206e94e0     movea.l    -$6b20(a6), a0
00634e: 30280010     move.w     $10(a0), d0
006352: 48c0         ext.l      d0
006354: b084         cmp.l      d4, d0
006356: 6ed8         bgt.b      $6330
006358: 206e94e0     movea.l    -$6b20(a6), a0
00635c: 30280010     move.w     $10(a0), d0
006360: 48c0         ext.l      d0
006362: b084         cmp.l      d4, d0
006364: 6e04         bgt.b      $636a
006366: 70ff         moveq      #$ff, d0
006368: 6002         bra.b      $636c
00636a: 2004         move.l     d4, d0
00636c: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
006372: 4e5d         unlk       a5
006374: 4e75         rts        
006376: 4e550000     link.w     a5, #$0
00637a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00637e: 202f0004     move.l     $4(a7), d0
006382: e588         lsl.l      #$2, d0
006384: 2057         movea.l    (a7), a0
006386: 2070082a     movea.l    $2a(a0, d0.l), a0
00638a: 7000         moveq      #$0, d0
00638c: 10280012     move.b     $12(a0), d0
006390: 4ced0100fffc movem.l    -$4(a5), a0
006396: 4e5d         unlk       a5
006398: 4e75         rts        
00639a: 4e550000     link.w     a5, #$0
00639e: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0063a2: 2440         movea.l    d0, a2
0063a4: 4fefffda     lea.l      -$26(a7), a7
0063a8: 200a         move.l     a2, d0
0063aa: 61000110     bsr.w      $64bc
0063ae: 2440         movea.l    d0, a2
0063b0: 0c12005f     cmpi.b     #$5f, (a2)
0063b4: 660000f6     bne.w      $64ac
0063b8: 102a0001     move.b     $1(a2), d0
0063bc: 1f400005     move.b     d0, $5(a7)
0063c0: 0c000041     cmpi.b     #$41, d0
0063c4: 6d0000a4     blt.w      $646a
0063c8: 4aae94e4     tst.l      -$6b1c(a6)
0063cc: 6626         bne.b      $63f4
0063ce: 7200         moveq      #$0, d1
0063d0: 41fa017e     lea.l      $6550(pc), a0
0063d4: 2008         move.l     a0, d0
0063d6: 61000d0e     bsr.w      $70e6
0063da: 2f400022     move.l     d0, $22(a7)
0063de: 72ff         moveq      #$ff, d1
0063e0: b280         cmp.l      d0, d1
0063e2: 6606         bne.b      $63ea
0063e4: 70ff         moveq      #$ff, d0
0063e6: 600000c6     bra.w      $64ae
0063ea: 7030         moveq      #$30, d0
0063ec: d0af0022     add.l      $22(a7), d0
0063f0: 2d4094e4     move.l     d0, -$6b1c(a6)
0063f4: 41ef000a     lea.l      $a(a7), a0
0063f8: 2f480006     move.l     a0, $6(a7)
0063fc: 600c         bra.b      $640a
0063fe: 206f0006     movea.l    $6(a7), a0
006402: 52af0006     addq.l     #$1, $6(a7)
006406: 10af0005     move.b     $5(a7), (a0)
00640a: 528a         addq.l     #$1, a2
00640c: 1012         move.b     (a2), d0
00640e: 1f400005     move.b     d0, $5(a7)
006412: 0c00005f     cmpi.b     #$5f, d0
006416: 66e6         bne.b      $63fe
006418: 206f0006     movea.l    $6(a7), a0
00641c: 4210         clr.b      (a0)
00641e: 202e94e4     move.l     -$6b1c(a6), d0
006422: 5480         addq.l     #$2, d0
006424: 2f40001e     move.l     d0, $1e(a7)
006428: 7800         moveq      #$0, d4
00642a: 6030         bra.b      $645c
00642c: 41ef000a     lea.l      $a(a7), a0
006430: 2208         move.l     a0, d1
006432: 202f001e     move.l     $1e(a7), d0
006436: 61000434     bsr.w      $686c
00643a: 4a80         tst.l      d0
00643c: 6614         bne.b      $6452
00643e: 206f001e     movea.l    $1e(a7), a0
006442: 7000         moveq      #$0, d0
006444: 10280013     move.b     $13(a0), d0
006448: 206f002a     movea.l    $2a(a7), a0
00644c: 2080         move.l     d0, (a0)
00644e: 528a         addq.l     #$1, a2
006450: 6056         bra.b      $64a8
006452: 06af00000014001e addi.l     #$14, $1e(a7)
00645a: 5284         addq.l     #$1, d4
00645c: 206e94e4     movea.l    -$6b1c(a6), a0
006460: 3010         move.w     (a0), d0
006462: 48c0         ext.l      d0
006464: b084         cmp.l      d4, d0
006466: 6ec4         bgt.b      $642c
006468: 6042         bra.b      $64ac
00646a: 4297         clr.l      (a7)
00646c: 6018         bra.b      $6486
00646e: 2017         move.l     (a7), d0
006470: 720a         moveq      #$a, d1
006472: 61000648     bsr.w      $6abc
006476: 122f0005     move.b     $5(a7), d1
00647a: 4881         ext.w      d1
00647c: 48c1         ext.l      d1
00647e: d081         add.l      d1, d0
006480: 7230         moveq      #$30, d1
006482: 9081         sub.l      d1, d0
006484: 2e80         move.l     d0, (a7)
006486: 528a         addq.l     #$1, a2
006488: 1012         move.b     (a2), d0
00648a: 1f400005     move.b     d0, $5(a7)
00648e: 0c000030     cmpi.b     #$30, d0
006492: 6d08         blt.b      $649c
006494: 0c2f00390005 cmpi.b     #$39, $5(a7)
00649a: 6fd2         ble.b      $646e
00649c: 0c1a005f     cmpi.b     #$5f, (a2)+
0064a0: 660a         bne.b      $64ac
0064a2: 206f002a     movea.l    $2a(a7), a0
0064a6: 2097         move.l     (a7), (a0)
0064a8: 200a         move.l     a2, d0
0064aa: 6002         bra.b      $64ae
0064ac: 7000         moveq      #$0, d0
0064ae: 4fef0026     lea.l      $26(a7), a7
0064b2: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0064b8: 4e5d         unlk       a5
0064ba: 4e75         rts        
0064bc: 4e550000     link.w     a5, #$0
0064c0: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0064c4: 2440         movea.l    d0, a2
0064c6: 518f         subq.l     #$8, a7
0064c8: 0c12005f     cmpi.b     #$5f, (a2)
0064cc: 6764         beq.b      $6532
0064ce: 0c120040     cmpi.b     #$40, (a2)
0064d2: 675e         beq.b      $6532
0064d4: 0c120041     cmpi.b     #$41, (a2)
0064d8: 6d58         blt.b      $6532
0064da: 4aae94e8     tst.l      -$6b18(a6)
0064de: 6620         bne.b      $6500
0064e0: 7200         moveq      #$0, d1
0064e2: 41fa0076     lea.l      $655a(pc), a0
0064e6: 2008         move.l     a0, d0
0064e8: 61000bfc     bsr.w      $70e6
0064ec: 2f400004     move.l     d0, $4(a7)
0064f0: 72ff         moveq      #$ff, d1
0064f2: b280         cmp.l      d0, d1
0064f4: 673c         beq.b      $6532
0064f6: 7030         moveq      #$30, d0
0064f8: d0af0004     add.l      $4(a7), d0
0064fc: 2d4094e8     move.l     d0, -$6b18(a6)
006500: 202e94e8     move.l     -$6b18(a6), d0
006504: 5480         addq.l     #$2, d0
006506: 2e80         move.l     d0, (a7)
006508: 7800         moveq      #$0, d4
00650a: 601a         bra.b      $6526
00650c: 220a         move.l     a2, d1
00650e: 2017         move.l     (a7), d0
006510: 6100035a     bsr.w      $686c
006514: 4a80         tst.l      d0
006516: 6606         bne.b      $651e
006518: 7014         moveq      #$14, d0
00651a: d097         add.l      (a7), d0
00651c: 6016         bra.b      $6534
00651e: 069700000032 addi.l     #$32, (a7)
006524: 5284         addq.l     #$1, d4
006526: 206e94e8     movea.l    -$6b18(a6), a0
00652a: 3010         move.w     (a0), d0
00652c: 48c0         ext.l      d0
00652e: b084         cmp.l      d4, d0
006530: 6eda         bgt.b      $650c
006532: 200a         move.l     a2, d0
006534: 508f         addq.l     #$8, a7
006536: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
00653c: 4e5d         unlk       a5
00653e: 4e75         rts        
006540: 4e550000     link.w     a5, #$0
006544: 48e78000     movem.l    d0, -(a7)
006548: 202e94fc     move.l     -$6b04(a6), d0
00654c: 4e5d         unlk       a5
00654e: 4e75         rts        
006550: 6361         bls.b      $65b3
006552: 725f         moveq      #$5f, d1
006554: 6e65         bgt.b      $65bb
006556: 7464         moveq      #$64, d2
006558: 62006361     bhi.w      $c8bb
00655c: 725f         moveq      #$5f, d1
00655e: 6465         bcc.b      $65c5
006560: 7669         moveq      #$69, d3
006562: 6365         bls.b      $65c9
006564: 00002f08     ori.b      #$8, d0
006568: 207900000000 movea.l    $0.l, a0
00656e: 41e80814     lea.l      $814(a0), a0
006572: 2010         move.l     (a0), d0
006574: 205f         movea.l    (a7)+, a0
006576: 4e75         rts        
006578: 2f08         move.l     a0, -(a7)
00657a: 207900000000 movea.l    $0.l, a0
006580: 41e80814     lea.l      $814(a0), a0
006584: 2008         move.l     a0, d0
006586: 205f         movea.l    (a7)+, a0
006588: 4e75         rts        
00658a: 48e76080     movem.l    d1-d2/a0, -(a7)
00658e: c141         exg.l      d0, d1
006590: 0c8100000002 cmpi.l     #$2, d1
006596: 6716         beq.b      $65ae
006598: 0c8100000005 cmpi.l     #$5, d1
00659e: 670e         beq.b      $65ae
0065a0: 206f0010     movea.l    $10(a7), a0
0065a4: 2408         move.l     a0, d2
0065a6: 4e40         trap       #$0
0065a8: 008d         .dc.w      $008d
0065aa: 60000056     bra.w      $6602
0065ae: 206f0010     movea.l    $10(a7), a0
0065b2: 2408         move.l     a0, d2
0065b4: 4e40         trap       #$0
0065b6: 008d         .dc.w      $008d
0065b8: 2202         move.l     d2, d1
0065ba: 60000046     bra.w      $6602
0065be: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
0065c2: c141         exg.l      d0, d1
0065c4: 206f0018     movea.l    $18(a7), a0
0065c8: 242f001c     move.l     $1c(a7), d2
0065cc: 262f0020     move.l     $20(a7), d3
0065d0: 4e40         trap       #$0
0065d2: 008d         .dc.w      $008d
0065d4: 60000068     bra.w      $663e
0065d8: 48e76080     movem.l    d1-d2/a0, -(a7)
0065dc: c141         exg.l      d0, d1
0065de: 206f0010     movea.l    $10(a7), a0
0065e2: 242f0014     move.l     $14(a7), d2
0065e6: 4e40         trap       #$0
0065e8: 008e         .dc.w      $008e
0065ea: 60000016     bra.w      $6602
0065ee: 48e76080     movem.l    d1-d2/a0, -(a7)
0065f2: c141         exg.l      d0, d1
0065f4: 206f0010     movea.l    $10(a7), a0
0065f8: 2408         move.l     a0, d2
0065fa: 4e40         trap       #$0
0065fc: 008e         .dc.w      $008e
0065fe: 60000002     bra.w      $6602
006602: 6408         bcc.b      $660c
006604: 2d41800c     move.l     d1, -$7ff4(a6)
006608: 70ff         moveq      #$ff, d0
00660a: 6002         bra.b      $660e
00660c: 2001         move.l     d1, d0
00660e: 4cdf0106     movem.l    (a7)+, d1-d2/a0
006612: 4e75         rts        
006614: 6406         bcc.b      $661c
006616: 2d41800c     move.l     d1, -$7ff4(a6)
00661a: 70ff         moveq      #$ff, d0
00661c: 4cdf043e     movem.l    (a7)+, d1-d5/a2
006620: 4e75         rts        
006622: 6406         bcc.b      $662a
006624: 2d41800c     move.l     d1, -$7ff4(a6)
006628: 70ff         moveq      #$ff, d0
00662a: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
00662e: 4e75         rts        
006630: 6406         bcc.b      $6638
006632: 2d41800c     move.l     d1, -$7ff4(a6)
006636: 70ff         moveq      #$ff, d0
006638: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
00663c: 4e75         rts        
00663e: 6408         bcc.b      $6648
006640: 2d41800c     move.l     d1, -$7ff4(a6)
006644: 70ff         moveq      #$ff, d0
006646: 6002         bra.b      $664a
006648: 2001         move.l     d1, d0
00664a: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
00664e: 4e75         rts        
006650: 48e74000     movem.l    d1, -(a7)
006654: c141         exg.l      d0, d1
006656: 4e40         trap       #$0
006658: 005c6406     ori.w      #$6406, (a4)+
00665c: 2d41800c     move.l     d1, -$7ff4(a6)
006660: 70ff         moveq      #$ff, d0
006662: 4cdf0002     movem.l    (a7)+, d1
006666: 4e75         rts        
006668: 48e740e0     movem.l    d1/a0-a2, -(a7)
00666c: e340         asl.w      #$1, d0
00666e: 207900000000 movea.l    $0.l, a0
006674: 2268004c     movea.l    $4c(a0), a1
006678: 45e90168     lea.l      $168(a1), a2
00667c: 30320000     move.w     (a2, d0.w), d0
006680: 660a         bne.b      $668c
006682: 4cdf0702     movem.l    (a7)+, d1/a0-a2
006686: 303cffff     move.w     #$ffff, d0
00668a: 4e75         rts        
00668c: 22680048     movea.l    $48(a0), a1
006690: b051         cmp.w      (a1), d0
006692: 62f2         bhi.b      $6686
006694: e540         asl.w      #$2, d0
006696: d2c0         adda.w     d0, a1
006698: e448         lsr.w      #$2, d0
00669a: 4a91         tst.l      (a1)
00669c: 67e8         beq.b      $6686
00669e: 2251         movea.l    (a1), a1
0066a0: b051         cmp.w      (a1), d0
0066a2: 66e2         bne.b      $6686
0066a4: 22690004     movea.l    $4(a1), a1
0066a8: 20290008     move.l     $8(a1), d0
0066ac: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0066b0: 4e75         rts        
0066b2: 4e550000     link.w     a5, #$0
0066b6: 48e78038     movem.l    d0/a2-a4, -(a7)
0066ba: 7000         moveq      #$0, d0
0066bc: 2840         movea.l    d0, a4
0066be: 2640         movea.l    d0, a3
0066c0: 2440         movea.l    d0, a2
0066c2: 700d         moveq      #$d, d0
0066c4: 7200         moveq      #$0, d1
0066c6: 41fa0064     lea.l      $672c(pc), a0
0066ca: 47ee800c     lea.l      -$7ff4(a6), a3
0066ce: 7609         moveq      #$9, d3
0066d0: 2683         move.l     d3, (a3)
0066d2: 262e9424     move.l     -$6bdc(a6), d3
0066d6: 242e9420     move.l     -$6be0(a6), d2
0066da: 286e9500     movea.l    -$6b00(a6), a4
0066de: 4e40         trap       #$0
0066e0: 0021653e     ori.b      #$3e, -(a1)
0066e4: 4a93         tst.l      (a3)
0066e6: 6718         beq.b      $6700
0066e8: 41fa0046     lea.l      $6730(pc), a0
0066ec: 7264         moveq      #$64, d1
0066ee: 7002         moveq      #$2, d0
0066f0: 4e40         trap       #$0
0066f2: 008c         .dc.w      $008c
0066f4: 41fa0036     lea.l      $672c(pc), a0
0066f8: 72dd         moveq      #$dd, d1
0066fa: 003c0001     ori.b      #$1, ccr
0066fe: 6022         bra.b      $6722
006700: 3d7c004190a8 move.w     #$41, -$6f58(a6)
006706: 426e90aa     clr.w      -$6f56(a6)
00670a: 3d7c000290c4 move.w     #$2, -$6f3c(a6)
006710: 3d7c000190c6 move.w     #$1, -$6f3a(a6)
006716: 3d7c000290e0 move.w     #$2, -$6f20(a6)
00671c: 3d7c000290e2 move.w     #$2, -$6f1e(a6)
006722: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
006728: 4e5d         unlk       a5
00672a: 4e75         rts        
00672c: 6369         bls.b      $6797
00672e: 6f002a2a     ble.w      $915a
006732: 2a2a2063     move.l     $2063(a2), d5
006736: 696f         bvs.b      $67a7
006738: 20747261     movea.l    $61(a4, d7.w), a0
00673c: 7068         moveq      #$68, d0
00673e: 616e         bsr.b      $67ae
006740: 646c         bcc.b      $67ae
006742: 6572         bcs.b      $67b6
006744: 206d6973     movea.l    $6973(a5), a0
006748: 6d61         blt.b      $67ab
00674a: 7463         moveq      #$63, d2
00674c: 6820         bvc.b      $676e
00674e: 2a2a2a2a     move.l     $2a2a(a2), d5
006752: 0d00         btst.l     d6, d0
006754: 4e4d         trap       #$d
006756: 00004e4d     ori.b      #$4d, d0
00675a: 00014e4d     ori.b      #$4d, d1
00675e: 00024e4d     ori.b      #$4d, d2
006762: 00034e4d     ori.b      #$4d, d3
006766: 00044e4d     ori.b      #$4d, d4
00676a: 00054e4d     ori.b      #$4d, d5
00676e: 00064e4d     ori.b      #$4d, d6
006772: 00074e4d     ori.b      #$4d, d7
006776: 0008         .dc.w      $0008
006778: 4e4d         trap       #$d
00677a: 0009         .dc.w      $0009
00677c: 4e4d         trap       #$d
00677e: 000a         .dc.w      $000a
006780: 4e4d         trap       #$d
006782: 000b         .dc.w      $000b
006784: 4e4d         trap       #$d
006786: 000c         .dc.w      $000c
006788: 4e4d         trap       #$d
00678a: 000d         .dc.w      $000d
00678c: 4e4d         trap       #$d
00678e: 000e         .dc.w      $000e
006790: 4e4d         trap       #$d
006792: 000f         .dc.w      $000f
006794: 4e4d         trap       #$d
006796: 00104e4d     ori.b      #$4d, (a0)
00679a: 00114e4d     ori.b      #$4d, (a1)
00679e: 00124e4d     ori.b      #$4d, (a2)
0067a2: 00134e4d     ori.b      #$4d, (a3)
0067a6: 00144e4d     ori.b      #$4d, (a4)
0067aa: 00154e4d     ori.b      #$4d, (a5)
0067ae: 00164e4d     ori.b      #$4d, (a6)
0067b2: 00174e4d     ori.b      #$4d, (a7)
0067b6: 00184e4d     ori.b      #$4d, (a0)+
0067ba: 00194e4d     ori.b      #$4d, (a1)+
0067be: 001a4e4d     ori.b      #$4d, (a2)+
0067c2: 001b4e4d     ori.b      #$4d, (a3)+
0067c6: 001c4e4d     ori.b      #$4d, (a4)+
0067ca: 001d4e4d     ori.b      #$4d, (a5)+
0067ce: 001e4e4d     ori.b      #$4d, (a6)+
0067d2: 001f4e4d     ori.b      #$4d, (a7)+
0067d6: 00204e4d     ori.b      #$4d, -(a0)
0067da: 00214e4d     ori.b      #$4d, -(a1)
0067de: 00224e4d     ori.b      #$4d, -(a2)
0067e2: 00234e4d     ori.b      #$4d, -(a3)
0067e6: 00244e4d     ori.b      #$4d, -(a4)
0067ea: 00254e4d     ori.b      #$4d, -(a5)
0067ee: 00264e4d     ori.b      #$4d, -(a6)
0067f2: 00274e4d     ori.b      #$4d, -(a7)
0067f6: 00284e4d0029 ori.b      #$4d, $29(a0)
0067fc: 4e4d         trap       #$d
0067fe: 002a4e4d002b ori.b      #$4d, $2b(a2)
006804: 4e4d         trap       #$d
006806: 002c4e4d002d ori.b      #$4d, $2d(a4)
00680c: 4e4d         trap       #$d
00680e: 002e4e4d002f ori.b      #$4d, $2f(a6)
006814: 4e4d         trap       #$d
006816: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
00681c: 4e4d         trap       #$d
00681e: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
006824: 4e4d         trap       #$d
006826: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
00682c: 4e4d         trap       #$d
00682e: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
006834: 4e4d         trap       #$d
006836: 00384e4d0039 ori.b      #$4d, $39.w
00683c: 4e4d         trap       #$d
00683e: 003a         .dc.w      $003a
006840: 4e4d         trap       #$d
006842: 003b         .dc.w      $003b
006844: 4e4d         trap       #$d
006846: 003c         .dc.w      $003c
006848: 4e4d         trap       #$d
00684a: 003d         .dc.w      $003d
00684c: 4e4d         trap       #$d
00684e: 003e         .dc.w      $003e
006850: 4e4d         trap       #$d
006852: 003f         .dc.w      $003f
006854: 4e4d         trap       #$d
006856: 00414e4d     ori.w      #$4e4d, d1
00685a: 00424e4d     ori.w      #$4e4d, d2
00685e: 00434e4d     ori.w      #$4e4d, d3
006862: 00444e4d     ori.w      #$4e4d, d4
006866: 00454e4d     ori.w      #$4e4d, d5
00686a: 00402f08     ori.w      #$2f08, d0
00686e: 2040         movea.l    d0, a0
006870: b300         eor.b      d1, d0
006872: 08000000     btst.b     #$0, d0
006876: 6652         bne.b      $68ca
006878: 08010000     btst.b     #$0, d1
00687c: c389         exg.l      d1, a1
00687e: 6718         beq.b      $6898
006880: b109         cmpm.b     (a1)+, (a0)+
006882: 6530         bcs.b      $68b4
006884: 6220         bhi.b      $68a6
006886: 4a28ffff     tst.b      -$1(a0)
00688a: 660c         bne.b      $6898
00688c: 6034         bra.b      $68c2
00688e: 4a00         tst.b      d0
006890: 6730         beq.b      $68c2
006892: 0c4000ff     cmpi.w     #$ff, d0
006896: 632a         bls.b      $68c2
006898: 3018         move.w     (a0)+, d0
00689a: b059         cmp.w      (a1)+, d0
00689c: 67f0         beq.b      $688e
00689e: 650e         bcs.b      $68ae
0068a0: 0c4000ff     cmpi.w     #$ff, d0
0068a4: 6316         bls.b      $68bc
0068a6: 7001         moveq      #$1, d0
0068a8: 205f         movea.l    (a7)+, a0
0068aa: c389         exg.l      d1, a1
0068ac: 4e75         rts        
0068ae: 0c4000ff     cmpi.w     #$ff, d0
0068b2: 6308         bls.b      $68bc
0068b4: 70ff         moveq      #$ff, d0
0068b6: 205f         movea.l    (a7)+, a0
0068b8: c389         exg.l      d1, a1
0068ba: 4e75         rts        
0068bc: 4a29fffe     tst.b      -$2(a1)
0068c0: 66f2         bne.b      $68b4
0068c2: 7000         moveq      #$0, d0
0068c4: 205f         movea.l    (a7)+, a0
0068c6: c389         exg.l      d1, a1
0068c8: 4e75         rts        
0068ca: c389         exg.l      d1, a1
0068cc: 7000         moveq      #$0, d0
0068ce: 1018         move.b     (a0)+, d0
0068d0: b019         cmp.b      (a1)+, d0
0068d2: 56c8fffa     dbne       d0, $68ce
0068d6: 65dc         bcs.b      $68b4
0068d8: 5240         addq.w     #$1, d0
0068da: 205f         movea.l    (a7)+, a0
0068dc: c389         exg.l      d1, a1
0068de: 4e75         rts        
0068e0: 2f08         move.l     a0, -(a7)
0068e2: 2040         movea.l    d0, a0
0068e4: 4a18         tst.b      (a0)+
0068e6: 670c         beq.b      $68f4
0068e8: 4a18         tst.b      (a0)+
0068ea: 6708         beq.b      $68f4
0068ec: 4a18         tst.b      (a0)+
0068ee: 6704         beq.b      $68f4
0068f0: 4a18         tst.b      (a0)+
0068f2: 66f0         bne.b      $68e4
0068f4: 91c0         suba.l     d0, a0
0068f6: 2008         move.l     a0, d0
0068f8: 5380         subq.l     #$1, d0
0068fa: 205f         movea.l    (a7)+, a0
0068fc: 4e75         rts        
0068fe: 2f08         move.l     a0, -(a7)
006900: 2040         movea.l    d0, a0
006902: c389         exg.l      d1, a1
006904: 10d9         move.b     (a1)+, (a0)+
006906: 670c         beq.b      $6914
006908: 10d9         move.b     (a1)+, (a0)+
00690a: 6708         beq.b      $6914
00690c: 10d9         move.b     (a1)+, (a0)+
00690e: 6704         beq.b      $6914
006910: 10d9         move.b     (a1)+, (a0)+
006912: 66f0         bne.b      $6904
006914: 205f         movea.l    (a7)+, a0
006916: c389         exg.l      d1, a1
006918: 4e75         rts        
00691a: 2f08         move.l     a0, -(a7)
00691c: 2040         movea.l    d0, a0
00691e: c389         exg.l      d1, a1
006920: 4a18         tst.b      (a0)+
006922: 670c         beq.b      $6930
006924: 4a18         tst.b      (a0)+
006926: 6708         beq.b      $6930
006928: 4a18         tst.b      (a0)+
00692a: 6704         beq.b      $6930
00692c: 4a18         tst.b      (a0)+
00692e: 66f0         bne.b      $6920
006930: 1159ffff     move.b     (a1)+, -$1(a0)
006934: 66ce         bne.b      $6904
006936: 60dc         bra.b      $6914
006938: 2f08         move.l     a0, -(a7)
00693a: 2040         movea.l    d0, a0
00693c: c389         exg.l      d1, a1
00693e: 10d9         move.b     (a1)+, (a0)+
006940: 6afc         bpl.b      $693e
006942: 4210         clr.b      (a0)
006944: 0220007f     andi.b     #$7f, -(a0)
006948: 205f         movea.l    (a7)+, a0
00694a: c389         exg.l      d1, a1
00694c: 4e75         rts        
00694e: 4e550000     link.w     a5, #$0
006952: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
006956: 2040         movea.l    d0, a0
006958: 2441         movea.l    d1, a2
00695a: 242d0008     move.l     $8(a5), d2
00695e: 6702         beq.b      $6962
006960: 610a         bsr.b      $696c
006962: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
006968: 4e5d         unlk       a5
00696a: 4e75         rts        
00696c: 4a82         tst.l      d2
00696e: 674a         beq.b      $69ba
006970: b1ca         cmpa.l     a2, a0
006972: 6248         bhi.b      $69bc
006974: 6744         beq.b      $69ba
006976: 300a         move.w     a2, d0
006978: 08000000     btst.b     #$0, d0
00697c: 6704         beq.b      $6982
00697e: 10da         move.b     (a2)+, (a0)+
006980: 5382         subq.l     #$1, d2
006982: 3008         move.w     a0, d0
006984: 08000000     btst.b     #$0, d0
006988: 6624         bne.b      $69ae
00698a: e28a         lsr.l      #$1, d2
00698c: 6406         bcc.b      $6994
00698e: 6104         bsr.b      $6994
006990: 10da         move.b     (a2)+, (a0)+
006992: 4e75         rts        
006994: e28a         lsr.l      #$1, d2
006996: 6406         bcc.b      $699e
006998: 30da         move.w     (a2)+, (a0)+
00699a: 6002         bra.b      $699e
00699c: 20da         move.l     (a2)+, (a0)+
00699e: 51cafffc     dbra       d2, $699c
0069a2: 5242         addq.w     #$1, d2
0069a4: 5382         subq.l     #$1, d2
0069a6: 64f4         bcc.b      $699c
0069a8: 7400         moveq      #$0, d2
0069aa: 4e75         rts        
0069ac: 10da         move.b     (a2)+, (a0)+
0069ae: 51cafffc     dbra       d2, $69ac
0069b2: 5242         addq.w     #$1, d2
0069b4: 5382         subq.l     #$1, d2
0069b6: 64f4         bcc.b      $69ac
0069b8: 7400         moveq      #$0, d2
0069ba: 4e75         rts        
0069bc: d5c2         adda.l     d2, a2
0069be: d1c2         adda.l     d2, a0
0069c0: 300a         move.w     a2, d0
0069c2: 08000000     btst.b     #$0, d0
0069c6: 6704         beq.b      $69cc
0069c8: 1122         move.b     -(a2), -(a0)
0069ca: 5382         subq.l     #$1, d2
0069cc: 3008         move.w     a0, d0
0069ce: 08000000     btst.b     #$0, d0
0069d2: 6624         bne.b      $69f8
0069d4: e28a         lsr.l      #$1, d2
0069d6: 6406         bcc.b      $69de
0069d8: 6104         bsr.b      $69de
0069da: 1122         move.b     -(a2), -(a0)
0069dc: 4e75         rts        
0069de: e28a         lsr.l      #$1, d2
0069e0: 6406         bcc.b      $69e8
0069e2: 3122         move.w     -(a2), -(a0)
0069e4: 6002         bra.b      $69e8
0069e6: 2122         move.l     -(a2), -(a0)
0069e8: 51cafffc     dbra       d2, $69e6
0069ec: 5242         addq.w     #$1, d2
0069ee: 5382         subq.l     #$1, d2
0069f0: 64f4         bcc.b      $69e6
0069f2: 7400         moveq      #$0, d2
0069f4: 4e75         rts        
0069f6: 1122         move.b     -(a2), -(a0)
0069f8: 51cafffc     dbra       d2, $69f6
0069fc: 5242         addq.w     #$1, d2
0069fe: 5382         subq.l     #$1, d2
006a00: 64f4         bcc.b      $69f6
006a02: 7400         moveq      #$0, d2
006a04: 4e75         rts        
006a06: 4e550000     link.w     a5, #$0
006a0a: 48e7a080     movem.l    d0/d2/a0, -(a7)
006a0e: 2040         movea.l    d0, a0
006a10: 242d0008     move.l     $8(a5), d2
006a14: 0c820000000c cmpi.l     #$c, d2
006a1a: 6410         bcc.b      $6a2c
006a1c: 5342         subq.w     #$1, d2
006a1e: 65000092     bcs.w      $6ab2
006a22: 10c1         move.b     d1, (a0)+
006a24: 51cafffc     dbra       d2, $6a22
006a28: 60000088     bra.w      $6ab2
006a2c: 2f01         move.l     d1, -(a7)
006a2e: e141         asl.w      #$8, d1
006a30: 122f0003     move.b     $3(a7), d1
006a34: 588f         addq.l     #$4, a7
006a36: 08000000     btst.b     #$0, d0
006a3a: 6706         beq.b      $6a42
006a3c: 10c1         move.b     d1, (a0)+
006a3e: 5382         subq.l     #$1, d2
006a40: 2008         move.l     a0, d0
006a42: 08000001     btst.b     #$1, d0
006a46: 6704         beq.b      $6a4c
006a48: 30c1         move.w     d1, (a0)+
006a4a: 5582         subq.l     #$2, d2
006a4c: 3001         move.w     d1, d0
006a4e: 4841         swap       d1
006a50: 3200         move.w     d0, d1
006a52: 7060         moveq      #$60, d0
006a54: b480         cmp.l      d0, d2
006a56: 653e         bcs.b      $6a96
006a58: 2002         move.l     d2, d0
006a5a: c47c001f     and.w      #$1f, d2
006a5e: b540         eor.w      d2, d0
006a60: 41f00800     lea.l      (a0, d0.l), a0
006a64: 48e71fe0     movem.l    d3-d7/a0-a2, -(a7)
006a68: 2601         move.l     d1, d3
006a6a: 2801         move.l     d1, d4
006a6c: 2a01         move.l     d1, d5
006a6e: 2c01         move.l     d1, d6
006a70: 2e01         move.l     d1, d7
006a72: 2241         movea.l    d1, a1
006a74: 2441         movea.l    d1, a2
006a76: ea88         lsr.l      #$5, d0
006a78: 5380         subq.l     #$1, d0
006a7a: 48e05f60     movem.l    d1/d3-d7/a1-a2, -(a0)
006a7e: 51c8fffa     dbra       d0, $6a7a
006a82: 5240         addq.w     #$1, d0
006a84: 5380         subq.l     #$1, d0
006a86: 64f2         bcc.b      $6a7a
006a88: 4cdf07f8     movem.l    (a7)+, d3-d7/a0-a2
006a8c: 3002         move.w     d2, d0
006a8e: 6722         beq.b      $6ab2
006a90: e448         lsr.w      #$2, d0
006a92: 6606         bne.b      $6a9a
006a94: 600c         bra.b      $6aa2
006a96: 3002         move.w     d2, d0
006a98: e448         lsr.w      #$2, d0
006a9a: 5340         subq.w     #$1, d0
006a9c: 20c1         move.l     d1, (a0)+
006a9e: 51c8fffc     dbra       d0, $6a9c
006aa2: 08020001     btst.b     #$1, d2
006aa6: 6702         beq.b      $6aaa
006aa8: 30c1         move.w     d1, (a0)+
006aaa: 08020000     btst.b     #$0, d2
006aae: 6702         beq.b      $6ab2
006ab0: 1081         move.b     d1, (a0)
006ab2: 4ced0105fff4 movem.l    -$c(a5), d0/d2/a0
006ab8: 4e5d         unlk       a5
006aba: 4e75         rts        
006abc: 48e73800     movem.l    d2-d4, -(a7)
006ac0: 2400         move.l     d0, d2
006ac2: 2600         move.l     d0, d3
006ac4: 4843         swap       d3
006ac6: 2801         move.l     d1, d4
006ac8: 4844         swap       d4
006aca: c0c1         mulu.w     d1, d0
006acc: c2c3         mulu.w     d3, d1
006ace: c4c4         mulu.w     d4, d2
006ad0: c6c4         mulu.w     d4, d3
006ad2: 4840         swap       d0
006ad4: d041         add.w      d1, d0
006ad6: 7800         moveq      #$0, d4
006ad8: d784         addx.l     d4, d3
006ada: d042         add.w      d2, d0
006adc: d784         addx.l     d4, d3
006ade: 4840         swap       d0
006ae0: 4241         clr.w      d1
006ae2: 4841         swap       d1
006ae4: 4242         clr.w      d2
006ae6: 4842         swap       d2
006ae8: d282         add.l      d2, d1
006aea: d283         add.l      d3, d1
006aec: 4a80         tst.l      d0
006aee: 4cdf001c     movem.l    (a7)+, d2-d4
006af2: 4e75         rts        
006af4: 2f02         move.l     d2, -(a7)
006af6: 7400         moveq      #$0, d2
006af8: 4a80         tst.l      d0
006afa: 6a04         bpl.b      $6b00
006afc: 4480         neg.l      d0
006afe: 7403         moveq      #$3, d2
006b00: 4a81         tst.l      d1
006b02: 6a06         bpl.b      $6b0a
006b04: 4481         neg.l      d1
006b06: 0a020001     eori.b     #$1, d2
006b0a: 6122         bsr.b      $6b2e
006b0c: e20a         lsr.b      #$1, d2
006b0e: 6402         bcc.b      $6b12
006b10: 4480         neg.l      d0
006b12: e20a         lsr.b      #$1, d2
006b14: 6402         bcc.b      $6b18
006b16: 4481         neg.l      d1
006b18: 241f         move.l     (a7)+, d2
006b1a: 4a80         tst.l      d0
006b1c: 4e75         rts        
006b1e: 61d4         bsr.b      $6af4
006b20: c141         exg.l      d0, d1
006b22: 4a80         tst.l      d0
006b24: 4e75         rts        
006b26: 6106         bsr.b      $6b2e
006b28: c141         exg.l      d0, d1
006b2a: 4a80         tst.l      d0
006b2c: 4e75         rts        
006b2e: 48e73800     movem.l    d2-d4, -(a7)
006b32: 2401         move.l     d1, d2
006b34: 6606         bne.b      $6b3c
006b36: 81fc0000     divs.w     #$0, d0
006b3a: 606e         bra.b      $6baa
006b3c: 5381         subq.l     #$1, d1
006b3e: 676a         beq.b      $6baa
006b40: 2801         move.l     d1, d4
006b42: 2200         move.l     d0, d1
006b44: b481         cmp.l      d1, d2
006b46: 650c         bcs.b      $6b54
006b48: 6704         beq.b      $6b4e
006b4a: 7000         moveq      #$0, d0
006b4c: 605c         bra.b      $6baa
006b4e: 7001         moveq      #$1, d0
006b50: 9282         sub.l      d2, d1
006b52: 6056         bra.b      $6baa
006b54: 2602         move.l     d2, d3
006b56: 6bf6         bmi.b      $6b4e
006b58: c684         and.l      d4, d3
006b5a: 6612         bne.b      $6b6e
006b5c: e28a         lsr.l      #$1, d2
006b5e: 76ff         moveq      #$ff, d3
006b60: e28a         lsr.l      #$1, d2
006b62: 55cbfffc     dbcs       d3, $6b60
006b66: 4483         neg.l      d3
006b68: e6a8         lsr.l      d3, d0
006b6a: c284         and.l      d4, d1
006b6c: 603c         bra.b      $6baa
006b6e: 7000         moveq      #$0, d0
006b70: 76ff         moveq      #$ff, d3
006b72: e382         asl.l      #$1, d2
006b74: 6a06         bpl.b      $6b7c
006b76: b481         cmp.l      d1, d2
006b78: 620a         bhi.b      $6b84
006b7a: 600c         bra.b      $6b88
006b7c: b481         cmp.l      d1, d2
006b7e: 54cbfff2     dbcc       d3, $6b72
006b82: 6704         beq.b      $6b88
006b84: 5283         addq.l     #$1, d3
006b86: e28a         lsr.l      #$1, d2
006b88: 4483         neg.l      d3
006b8a: 6004         bra.b      $6b90
006b8c: e380         asl.l      #$1, d0
006b8e: e28a         lsr.l      #$1, d2
006b90: 9282         sub.l      d2, d1
006b92: 6510         bcs.b      $6ba4
006b94: 5280         addq.l     #$1, d0
006b96: 51cbfff4     dbra       d3, $6b8c
006b9a: 600e         bra.b      $6baa
006b9c: e380         asl.l      #$1, d0
006b9e: e28a         lsr.l      #$1, d2
006ba0: d282         add.l      d2, d1
006ba2: 65f0         bcs.b      $6b94
006ba4: 51cbfff6     dbra       d3, $6b9c
006ba8: d282         add.l      d2, d1
006baa: 4cdf001c     movem.l    (a7)+, d2-d4
006bae: 4a80         tst.l      d0
006bb0: 4e75         rts        
006bb2: 2a5f         movea.l    (a7)+, a5
006bb4: 5385         subq.l     #$1, d5
006bb6: 6562         bcs.b      $6c1a
006bb8: 1018         move.b     (a0)+, d0
006bba: 67f8         beq.b      $6bb4
006bbc: 0c00000d     cmpi.b     #$d, d0
006bc0: 6758         beq.b      $6c1a
006bc2: 0c000020     cmpi.b     #$20, d0
006bc6: 67ec         beq.b      $6bb4
006bc8: 0c000009     cmpi.b     #$9, d0
006bcc: 67e6         beq.b      $6bb4
006bce: 0c00002c     cmpi.b     #$2c, d0
006bd2: 67e0         beq.b      $6bb4
006bd4: 5282         addq.l     #$1, d2
006bd6: 0c000022     cmpi.b     #$22, d0
006bda: 6730         beq.b      $6c0c
006bdc: 0c000027     cmpi.b     #$27, d0
006be0: 672a         beq.b      $6c0c
006be2: 4868ffff     pea.l      -$1(a0)
006be6: 5385         subq.l     #$1, d5
006be8: 6530         bcs.b      $6c1a
006bea: 1018         move.b     (a0)+, d0
006bec: 67c6         beq.b      $6bb4
006bee: 0c00000d     cmpi.b     #$d, d0
006bf2: 6712         beq.b      $6c06
006bf4: 0c000020     cmpi.b     #$20, d0
006bf8: 670c         beq.b      $6c06
006bfa: 0c000009     cmpi.b     #$9, d0
006bfe: 6706         beq.b      $6c06
006c00: 0c00002c     cmpi.b     #$2c, d0
006c04: 66e0         bne.b      $6be6
006c06: 4228ffff     clr.b      -$1(a0)
006c0a: 60a8         bra.b      $6bb4
006c0c: 4850         pea.l      (a0)
006c0e: 5385         subq.l     #$1, d5
006c10: 6508         bcs.b      $6c1a
006c12: 1218         move.b     (a0)+, d1
006c14: b001         cmp.b      d1, d0
006c16: 66f6         bne.b      $6c0e
006c18: 60ec         bra.b      $6c06
006c1a: 204f         movea.l    a7, a0
006c1c: 4857         pea.l      (a7)
006c1e: 2f02         move.l     d2, -(a7)
006c20: 5382         subq.l     #$1, d2
006c22: 6710         beq.b      $6c34
006c24: e582         asl.l      #$2, d2
006c26: 20302800     move.l     (a0, d2.l), d0
006c2a: 21902800     move.l     (a0), (a0, d2.l)
006c2e: 20c0         move.l     d0, (a0)+
006c30: 5182         subq.l     #$8, d2
006c32: 62f2         bhi.b      $6c26
006c34: 4ed5         jmp        (a5)
006c36: 4e550000     link.w     a5, #$0
006c3a: 48e76080     movem.l    d1-d2/a0, -(a7)
006c3e: 2041         movea.l    d1, a0
006c40: 323c0000     move.w     #$0, d1
006c44: 4e40         trap       #$0
006c46: 008d         .dc.w      $008d
006c48: 600006fa     bra.w      $7344
006c4c: 4e550000     link.w     a5, #$0
006c50: 48e76080     movem.l    d1-d2/a0, -(a7)
006c54: 323c0001     move.w     #$1, d1
006c58: 4e40         trap       #$0
006c5a: 008d         .dc.w      $008d
006c5c: 650006e8     bcs.w      $7346
006c60: 2001         move.l     d1, d0
006c62: 600006e0     bra.w      $7344
006c66: 4e550000     link.w     a5, #$0
006c6a: 48e76080     movem.l    d1-d2/a0, -(a7)
006c6e: 323c0006     move.w     #$6, d1
006c72: 4e40         trap       #$0
006c74: 008d         .dc.w      $008d
006c76: 640006d6     bcc.w      $734e
006c7a: 0c4100d3     cmpi.w     #$d3, d1
006c7e: 660006c6     bne.w      $7346
006c82: 7001         moveq      #$1, d0
006c84: 600006be     bra.w      $7344
006c88: 4e550000     link.w     a5, #$0
006c8c: 48e76080     movem.l    d1-d2/a0, -(a7)
006c90: 2041         movea.l    d1, a0
006c92: 323c000f     move.w     #$f, d1
006c96: 242d0008     move.l     $8(a5), d2
006c9a: 60a8         bra.b      $6c44
006c9c: 4e550000     link.w     a5, #$0
006ca0: 48e76080     movem.l    d1-d2/a0, -(a7)
006ca4: 2041         movea.l    d1, a0
006ca6: 323c000e     move.w     #$e, d1
006caa: 6098         bra.b      $6c44
006cac: 4e550000     link.w     a5, #$0
006cb0: 48e76080     movem.l    d1-d2/a0, -(a7)
006cb4: 323c0002     move.w     #$2, d1
006cb8: 4e40         trap       #$0
006cba: 008d         .dc.w      $008d
006cbc: 65000688     bcs.w      $7346
006cc0: 2002         move.l     d2, d0
006cc2: 60000680     bra.w      $7344
006cc6: 4e550000     link.w     a5, #$0
006cca: 48e76080     movem.l    d1-d2/a0, -(a7)
006cce: 323c0005     move.w     #$5, d1
006cd2: 60e4         bra.b      $6cb8
006cd4: 4e550000     link.w     a5, #$0
006cd8: 48e76080     movem.l    d1-d2/a0, -(a7)
006cdc: 2041         movea.l    d1, a0
006cde: 323c0000     move.w     #$0, d1
006ce2: 4e40         trap       #$0
006ce4: 008e         .dc.w      $008e
006ce6: 6000065c     bra.w      $7344
006cea: 4e550000     link.w     a5, #$0
006cee: 48e76080     movem.l    d1-d2/a0, -(a7)
006cf2: 323c0003     move.w     #$3, d1
006cf6: 60ea         bra.b      $6ce2
006cf8: 4e550000     link.w     a5, #$0
006cfc: 48e76080     movem.l    d1-d2/a0, -(a7)
006d00: 2401         move.l     d1, d2
006d02: 323c0002     move.w     #$2, d1
006d06: 60da         bra.b      $6ce2
006d08: 4e550000     link.w     a5, #$0
006d0c: 48e76080     movem.l    d1-d2/a0, -(a7)
006d10: 2041         movea.l    d1, a0
006d12: 323c000f     move.w     #$f, d1
006d16: 60ca         bra.b      $6ce2
006d18: 4e550000     link.w     a5, #$0
006d1c: 48e76080     movem.l    d1-d2/a0, -(a7)
006d20: 2401         move.l     d1, d2
006d22: 323c0010     move.w     #$10, d1
006d26: 60ba         bra.b      $6ce2
006d28: 4e550000     link.w     a5, #$0
006d2c: 48e76080     movem.l    d1-d2/a0, -(a7)
006d30: 2401         move.l     d1, d2
006d32: 323c0011     move.w     #$11, d1
006d36: 60aa         bra.b      $6ce2
006d38: 4e550000     link.w     a5, #$0
006d3c: 48e76080     movem.l    d1-d2/a0, -(a7)
006d40: 2401         move.l     d1, d2
006d42: 323c001a     move.w     #$1a, d1
006d46: 609a         bra.b      $6ce2
006d48: 4e550000     link.w     a5, #$0
006d4c: 48e76080     movem.l    d1-d2/a0, -(a7)
006d50: 323c001b     move.w     #$1b, d1
006d54: 60f0         bra.b      $6d46
006d56: 4e550000     link.w     a5, #$0
006d5a: 48e76080     movem.l    d1-d2/a0, -(a7)
006d5e: 48e71840     movem.l    d3-d4/a1, -(a7)
006d62: 2401         move.l     d1, d2
006d64: 7204         moveq      #$4, d1
006d66: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
006d6c: 4e40         trap       #$0
006d6e: 008e         .dc.w      $008e
006d70: 4cdf0218     movem.l    (a7)+, d3-d4/a1
006d74: 600005ce     bra.w      $7344
006d78: 4e550000     link.w     a5, #$0
006d7c: 48e76080     movem.l    d1-d2/a0, -(a7)
006d80: 2401         move.l     d1, d2
006d82: 323c001c     move.w     #$1c, d1
006d86: 60be         bra.b      $6d46
006d88: 4e550000     link.w     a5, #$0
006d8c: 48e76080     movem.l    d1-d2/a0, -(a7)
006d90: 323c0024     move.w     #$24, d1
006d94: 60b0         bra.b      $6d46
006d96: 4e550000     link.w     a5, #$0
006d9a: 48e76080     movem.l    d1-d2/a0, -(a7)
006d9e: 323c0025     move.w     #$25, d1
006da2: 60a2         bra.b      $6d46
006da4: 4e550000     link.w     a5, #$0
006da8: 48e76080     movem.l    d1-d2/a0, -(a7)
006dac: 3401         move.w     d1, d2
006dae: 323c0026     move.w     #$26, d1
006db2: 6092         bra.b      $6d46
006db4: 4e550000     link.w     a5, #$0
006db8: 48e76080     movem.l    d1-d2/a0, -(a7)
006dbc: 3401         move.w     d1, d2
006dbe: 323c0027     move.w     #$27, d1
006dc2: 6082         bra.b      $6d46
006dc4: 4e550000     link.w     a5, #$0
006dc8: 48e76080     movem.l    d1-d2/a0, -(a7)
006dcc: 2040         movea.l    d0, a0
006dce: 2001         move.l     d1, d0
006dd0: 2f0a         move.l     a2, -(a7)
006dd2: 4e40         trap       #$0
006dd4: 0080204a245f ori.l      #$204a245f, d0
006dda: 6500056a     bcs.w      $7346
006dde: 2008         move.l     a0, d0
006de0: 60000562     bra.w      $7344
006de4: 4e550000     link.w     a5, #$0
006de8: 48e76080     movem.l    d1-d2/a0, -(a7)
006dec: 204a         movea.l    a2, a0
006dee: 2440         movea.l    d0, a2
006df0: 4e40         trap       #$0
006df2: 008124486000 ori.l      #$24486000, d1
006df8: 054c4e55     movep.l    $4e55(a4), d2
006dfc: 000048e7     ori.b      #$e7, d0
006e00: 6080         bra.b      $6d82
006e02: 7000         moveq      #$0, d0
006e04: 4e40         trap       #$0
006e06: 000a         .dc.w      $000a
006e08: 6000053a     bra.w      $7344
006e0c: 4e550000     link.w     a5, #$0
006e10: 48e76080     movem.l    d1-d2/a0, -(a7)
006e14: 206d0008     movea.l    $8(a5), a0
006e18: 2210         move.l     (a0), d1
006e1a: 2040         movea.l    d0, a0
006e1c: 2017         move.l     (a7), d0
006e1e: 4e40         trap       #$0
006e20: 00176500     ori.b      #$0, (a7)
006e24: 0522         btst.l     d2, -(a2)
006e26: 206d0008     movea.l    $8(a5), a0
006e2a: 2081         move.l     d1, (a0)
006e2c: 60000520     bra.w      $734e
006e30: 4e550000     link.w     a5, #$0
006e34: 48e76080     movem.l    d1-d2/a0, -(a7)
006e38: 4e40         trap       #$0
006e3a: 000f         .dc.w      $000f
006e3c: 60000506     bra.w      $7344
006e40: e188         lsl.l      #$8, d0
006e42: 08c0001f     bset.b     #$1f, d0
006e46: 4e550000     link.w     a5, #$0
006e4a: 48e76080     movem.l    d1-d2/a0, -(a7)
006e4e: 4e40         trap       #$0
006e50: 000a         .dc.w      $000a
006e52: 600004f0     bra.w      $7344
006e56: 4e550000     link.w     a5, #$0
006e5a: 48e700c0     movem.l    a0-a1, -(a7)
006e5e: 2041         movea.l    d1, a0
006e60: 2240         movea.l    d0, a1
006e62: 222d0008     move.l     $8(a5), d1
006e66: 4e40         trap       #$0
006e68: 00116560     ori.b      #$60, (a1)
006e6c: 7000         moveq      #$0, d0
006e6e: 6068         bra.b      $6ed8
006e70: 4e550000     link.w     a5, #$0
006e74: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006e78: 2040         movea.l    d0, a0
006e7a: 4e40         trap       #$0
006e7c: 00106454     ori.b      #$54, (a0)
006e80: 604a         bra.b      $6ecc
006e82: 4e550000     link.w     a5, #$0
006e86: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006e8a: 2040         movea.l    d0, a0
006e8c: 2248         movea.l    a0, a1
006e8e: 1019         move.b     (a1)+, d0
006e90: 0c00002f     cmpi.b     #$2f, d0
006e94: 671a         beq.b      $6eb0
006e96: 0c00002e     cmpi.b     #$2e, d0
006e9a: 6622         bne.b      $6ebe
006e9c: 0c19002e     cmpi.b     #$2e, (a1)+
006ea0: 67fa         beq.b      $6e9c
006ea2: 1021         move.b     -(a1), d0
006ea4: 672e         beq.b      $6ed4
006ea6: 0c00002f     cmpi.b     #$2f, d0
006eaa: 6612         bne.b      $6ebe
006eac: 2049         movea.l    a1, a0
006eae: 60de         bra.b      $6e8e
006eb0: 1019         move.b     (a1)+, d0
006eb2: 0c00002f     cmpi.b     #$2f, d0
006eb6: 6706         beq.b      $6ebe
006eb8: 0c00002e     cmpi.b     #$2e, d0
006ebc: 67de         beq.b      $6e9c
006ebe: 4e40         trap       #$0
006ec0: 00106508     ori.b      #$8, (a0)
006ec4: 4a00         tst.b      d0
006ec6: 670c         beq.b      $6ed4
006ec8: 2049         movea.l    a1, a0
006eca: 60c2         bra.b      $6e8e
006ecc: 2d41800c     move.l     d1, -$7ff4(a6)
006ed0: 70ff         moveq      #$ff, d0
006ed2: 6004         bra.b      $6ed8
006ed4: 2009         move.l     a1, d0
006ed6: 9097         sub.l      (a7), d0
006ed8: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
006ede: 4e5d         unlk       a5
006ee0: 4e75         rts        
006ee2: 4e550000     link.w     a5, #$0
006ee6: 48e76080     movem.l    d1-d2/a0, -(a7)
006eea: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
006eee: 242d000c     move.l     $c(a5), d2
006ef2: 0802000f     btst.b     #$f, d2
006ef6: 6708         beq.b      $6f00
006ef8: 262d0010     move.l     $10(a5), d3
006efc: 282d0014     move.l     $14(a5), d4
006f00: 2040         movea.l    d0, a0
006f02: 2001         move.l     d1, d0
006f04: 222d0008     move.l     $8(a5), d1
006f08: 4e40         trap       #$0
006f0a: 00256502     ori.b      #$2, -(a5)
006f0e: 200a         move.l     a2, d0
006f10: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
006f14: 6000042e     bra.w      $7344
006f18: 4e550000     link.w     a5, #$0
006f1c: 48e76080     movem.l    d1-d2/a0, -(a7)
006f20: 2040         movea.l    d0, a0
006f22: 4e40         trap       #$0
006f24: 001a6500     ori.b      #$0, (a2)+
006f28: 041e2001     subi.b     #$1, (a6)+
006f2c: 60000416     bra.w      $7344
006f30: 4e550000     link.w     a5, #$0
006f34: 48e76080     movem.l    d1-d2/a0, -(a7)
006f38: 2040         movea.l    d0, a0
006f3a: 4e40         trap       #$0
006f3c: 001f6500     ori.b      #$0, (a7)+
006f40: 04062001     subi.b     #$1, d6
006f44: 600003fe     bra.w      $7344
006f48: 4e550000     link.w     a5, #$0
006f4c: 48e76080     movem.l    d1-d2/a0, -(a7)
006f50: 206d0008     movea.l    $8(a5), a0
006f54: 4e40         trap       #$0
006f56: 00186000     ori.b      #$0, (a0)+
006f5a: 03ea4e55     bset.b     d1, $4e55(a2)
006f5e: 000048e7     ori.b      #$e7, d0
006f62: 6080         bra.b      $6ee4
006f64: 2040         movea.l    d0, a0
006f66: 4e40         trap       #$0
006f68: 00266000     ori.b      #$0, -(a6)
006f6c: 03d8         bset.b     d1, (a0)+
006f6e: 4e550000     link.w     a5, #$0
006f72: 48e76080     movem.l    d1-d2/a0, -(a7)
006f76: 08c1001f     bset.b     #$1f, d1
006f7a: 600c         bra.b      $6f88
006f7c: 4e550000     link.w     a5, #$0
006f80: 48e76080     movem.l    d1-d2/a0, -(a7)
006f84: 242d0008     move.l     $8(a5), d2
006f88: 4e40         trap       #$0
006f8a: 00276500     ori.b      #$0, -(a7)
006f8e: 03b82002     bclr.b     d1, $2002.w
006f92: 600003b0     bra.w      $7344
006f96: 4e550000     link.w     a5, #$0
006f9a: 48e76080     movem.l    d1-d2/a0, -(a7)
006f9e: 4e40         trap       #$0
006fa0: 000b         .dc.w      $000b
006fa2: 600003a0     bra.w      $7344
006fa6: 4e550000     link.w     a5, #$0
006faa: 4e40         trap       #$0
006fac: 00524e5d     ori.w      #$4e5d, (a2)
006fb0: 4e75         rts        
006fb2: 4e550000     link.w     a5, #$0
006fb6: 48e76080     movem.l    d1-d2/a0, -(a7)
006fba: 2f09         move.l     a1, -(a7)
006fbc: 206d0008     movea.l    $8(a5), a0
006fc0: 226d000c     movea.l    $c(a5), a1
006fc4: 4e40         trap       #$0
006fc6: 001b225f     ori.b      #$5f, (a3)+
006fca: 60000378     bra.w      $7344
006fce: 4e550000     link.w     a5, #$0
006fd2: 48e73080     movem.l    d2-d3/a0, -(a7)
006fd6: 2401         move.l     d1, d2
006fd8: 262f0014     move.l     $14(a7), d3
006fdc: 206f0018     movea.l    $18(a7), a0
006fe0: 7202         moveq      #$2, d1
006fe2: 4e40         trap       #$0
006fe4: 00536406     ori.w      #$6406, (a3)
006fe8: 2d41800c     move.l     d1, -$7ff4(a6)
006fec: 70ff         moveq      #$ff, d0
006fee: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
006ff4: 4e5d         unlk       a5
006ff6: 4e75         rts        
006ff8: 4e550000     link.w     a5, #$0
006ffc: 48e77080     movem.l    d1-d3/a0, -(a7)
007000: 2040         movea.l    d0, a0
007002: 7200         moveq      #$0, d1
007004: 4e40         trap       #$0
007006: 00536406     ori.w      #$6406, (a3)
00700a: 2d41800c     move.l     d1, -$7ff4(a6)
00700e: 70ff         moveq      #$ff, d0
007010: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
007016: 4e5d         unlk       a5
007018: 4e75         rts        
00701a: 4e550000     link.w     a5, #$0
00701e: 48e77080     movem.l    d1-d3/a0, -(a7)
007022: 7201         moveq      #$1, d1
007024: 60de         bra.b      $7004
007026: 4e550000     link.w     a5, #$0
00702a: 48e77080     movem.l    d1-d3/a0, -(a7)
00702e: 2040         movea.l    d0, a0
007030: 7203         moveq      #$3, d1
007032: 60d0         bra.b      $7004
007034: 4e550000     link.w     a5, #$0
007038: 48e73080     movem.l    d2-d3/a0, -(a7)
00703c: 2041         movea.l    d1, a0
00703e: 7207         moveq      #$7, d1
007040: 60a0         bra.b      $6fe2
007042: 4e550000     link.w     a5, #$0
007046: 827c0008     or.w       #$8, d1
00704a: 4e40         trap       #$0
00704c: 00536406     ori.w      #$6406, (a3)
007050: 2d41800c     move.l     d1, -$7ff4(a6)
007054: 72ff         moveq      #$ff, d1
007056: 2001         move.l     d1, d0
007058: 4e5d         unlk       a5
00705a: 4e75         rts        
00705c: 4e550000     link.w     a5, #$0
007060: 2f01         move.l     d1, -(a7)
007062: 7206         moveq      #$6, d1
007064: 4e40         trap       #$0
007066: 00536406     ori.w      #$6406, (a3)
00706a: 2d41800c     move.l     d1, -$7ff4(a6)
00706e: 72ff         moveq      #$ff, d1
007070: 2001         move.l     d1, d0
007072: 222dfffc     move.l     -$4(a5), d1
007076: 4e5d         unlk       a5
007078: 4e75         rts        
00707a: 4e550000     link.w     a5, #$0
00707e: 2f02         move.l     d2, -(a7)
007080: 7409         moveq      #$9, d2
007082: 6012         bra.b      $7096
007084: 4e550000     link.w     a5, #$0
007088: 2f02         move.l     d2, -(a7)
00708a: 740a         moveq      #$a, d2
00708c: 6008         bra.b      $7096
00708e: 4e550000     link.w     a5, #$0
007092: 2f02         move.l     d2, -(a7)
007094: 740b         moveq      #$b, d2
007096: c342         exg.l      d1, d2
007098: 826f000e     or.w       $e(a7), d1
00709c: 4e40         trap       #$0
00709e: 00536406     ori.w      #$6406, (a3)
0070a2: 2d41800c     move.l     d1, -$7ff4(a6)
0070a6: 72ff         moveq      #$ff, d1
0070a8: 2001         move.l     d1, d0
0070aa: 242dfffc     move.l     -$4(a5), d2
0070ae: 4e5d         unlk       a5
0070b0: 4e75         rts        
0070b2: 4e550000     link.w     a5, #$0
0070b6: 48e73000     movem.l    d2-d3, -(a7)
0070ba: 7404         moveq      #$4, d2
0070bc: c342         exg.l      d1, d2
0070be: 262f0010     move.l     $10(a7), d3
0070c2: 4e40         trap       #$0
0070c4: 00536406     ori.w      #$6406, (a3)
0070c8: 2d41800c     move.l     d1, -$7ff4(a6)
0070cc: 72ff         moveq      #$ff, d1
0070ce: 2001         move.l     d1, d0
0070d0: 4ced000cfff8 movem.l    -$8(a5), d2-d3
0070d6: 4e5d         unlk       a5
0070d8: 4e75         rts        
0070da: 4e550000     link.w     a5, #$0
0070de: 48e73000     movem.l    d2-d3, -(a7)
0070e2: 7405         moveq      #$5, d2
0070e4: 60d6         bra.b      $70bc
0070e6: 4e550000     link.w     a5, #$0
0070ea: 48e76080     movem.l    d1-d2/a0, -(a7)
0070ee: 2040         movea.l    d0, a0
0070f0: 3001         move.w     d1, d0
0070f2: 48e70060     movem.l    a1-a2, -(a7)
0070f6: 4e40         trap       #$0
0070f8: 00006502     ori.b      #$2, d0
0070fc: 200a         move.l     a2, d0
0070fe: 4cdf0600     movem.l    (a7)+, a1-a2
007102: 60000240     bra.w      $7344
007106: 4e550000     link.w     a5, #$0
00710a: 48e76080     movem.l    d1-d2/a0, -(a7)
00710e: 2040         movea.l    d0, a0
007110: 3001         move.w     d1, d0
007112: 48e70060     movem.l    a1-a2, -(a7)
007116: 4e40         trap       #$0
007118: 000160de     ori.b      #$de, d1
00711c: 4e550000     link.w     a5, #$0
007120: 48e76080     movem.l    d1-d2/a0, -(a7)
007124: 2f0a         move.l     a2, -(a7)
007126: 2440         movea.l    d0, a2
007128: 4e40         trap       #$0
00712a: 0002245f     ori.b      #$5f, d2
00712e: 60000214     bra.w      $7344
007132: 4e550000     link.w     a5, #$0
007136: 48e76080     movem.l    d1-d2/a0, -(a7)
00713a: 2040         movea.l    d0, a0
00713c: 3001         move.w     d1, d0
00713e: 4e40         trap       #$0
007140: 001d6000     ori.b      #$0, (a5)+
007144: 02004e55     andi.b     #$55, d0
007148: 000048e7     ori.b      #$e7, d0
00714c: 6080         bra.b      $70ce
00714e: 2040         movea.l    d0, a0
007150: 7200         moveq      #$0, d1
007152: 1210         move.b     (a0), d1
007154: d27c076c     add.w      #$76c, d1
007158: 4841         swap       d1
00715a: 12280001     move.b     $1(a0), d1
00715e: e141         asl.w      #$8, d1
007160: 12280002     move.b     $2(a0), d1
007164: 7000         moveq      #$0, d0
007166: 10280003     move.b     $3(a0), d0
00716a: 4840         swap       d0
00716c: 10280004     move.b     $4(a0), d0
007170: e140         asl.w      #$8, d0
007172: 10280005     move.b     $5(a0), d0
007176: 4e40         trap       #$0
007178: 00166500     ori.b      #$0, (a6)
00717c: 01ca2008     movep.l    d0, $2008(a2)
007180: 600001c2     bra.w      $7344
007184: 4e550000     link.w     a5, #$0
007188: 48e77080     movem.l    d1-d3/a0, -(a7)
00718c: 2040         movea.l    d0, a0
00718e: 7000         moveq      #$0, d0
007190: 4e40         trap       #$0
007192: 0015652c     ori.b      #$2c, (a5)
007196: 2408         move.l     a0, d2
007198: 4841         swap       d1
00719a: 927c076c     sub.w      #$76c, d1
00719e: 10c1         move.b     d1, (a0)+
0071a0: 4841         swap       d1
0071a2: e159         rol.w      #$8, d1
0071a4: 10c1         move.b     d1, (a0)+
0071a6: e159         rol.w      #$8, d1
0071a8: 10c1         move.b     d1, (a0)+
0071aa: 4840         swap       d0
0071ac: 10c0         move.b     d0, (a0)+
0071ae: 4840         swap       d0
0071b0: e158         rol.w      #$8, d0
0071b2: 10c0         move.b     d0, (a0)+
0071b4: e158         rol.w      #$8, d0
0071b6: 10c0         move.b     d0, (a0)+
0071b8: 2002         move.l     d2, d0
0071ba: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0071be: 4e5d         unlk       a5
0071c0: 4e75         rts        
0071c2: 70ff         moveq      #$ff, d0
0071c4: 2d41800c     move.l     d1, -$7ff4(a6)
0071c8: 60f0         bra.b      $71ba
0071ca: 4e550000     link.w     a5, #$0
0071ce: 48e770c0     movem.l    d1-d3/a0-a1, -(a7)
0071d2: 7400         moveq      #$0, d2
0071d4: 4e40         trap       #$0
0071d6: 00156520     ori.b      #$20, (a5)
0071da: 206dffec     movea.l    -$14(a5), a0
0071de: 2080         move.l     d0, (a0)
0071e0: 41ed0008     lea.l      $8(a5), a0
0071e4: 2258         movea.l    (a0)+, a1
0071e6: 2281         move.l     d1, (a1)
0071e8: 2258         movea.l    (a0)+, a1
0071ea: 3282         move.w     d2, (a1)
0071ec: 2250         movea.l    (a0), a1
0071ee: 2283         move.l     d3, (a1)
0071f0: 7000         moveq      #$0, d0
0071f2: 4cdf030e     movem.l    (a7)+, d1-d3/a0-a1
0071f6: 4e5d         unlk       a5
0071f8: 4e75         rts        
0071fa: 70ff         moveq      #$ff, d0
0071fc: 2d41800c     move.l     d1, -$7ff4(a6)
007200: 60ee         bra.b      $71f0
007202: 4e550000     link.w     a5, #$0
007206: 48e76080     movem.l    d1-d2/a0, -(a7)
00720a: 2f09         move.l     a1, -(a7)
00720c: 2040         movea.l    d0, a0
00720e: 2241         movea.l    d1, a1
007210: 2010         move.l     (a0), d0
007212: 2211         move.l     (a1), d1
007214: 4e40         trap       #$0
007216: 00206500     ori.b      #$0, -(a0)
00721a: 00062080     ori.b      #$80, d6
00721e: 2281         move.l     d1, (a1)
007220: 225f         movea.l    (a7)+, a1
007222: 60000120     bra.w      $7344
007226: 4e550000     link.w     a5, #$0
00722a: 48e76080     movem.l    d1-d2/a0, -(a7)
00722e: 4e40         trap       #$0
007230: 0008         .dc.w      $0008
007232: 60000110     bra.w      $7344
007236: 4e550000     link.w     a5, #$0
00723a: 48e76080     movem.l    d1-d2/a0, -(a7)
00723e: 2040         movea.l    d0, a0
007240: 7000         moveq      #$0, d0
007242: 4e40         trap       #$0
007244: 00046500     ori.b      #$0, d4
007248: 00fe         .dc.w      $00fe
00724a: 2408         move.l     a0, d2
00724c: 670000f6     beq.w      $7344
007250: 4258         clr.w      (a0)+
007252: 3081         move.w     d1, (a0)
007254: 600000ee     bra.w      $7344
007258: 4e550000     link.w     a5, #$0
00725c: 48e76080     movem.l    d1-d2/a0, -(a7)
007260: 4e40         trap       #$0
007262: 000d         .dc.w      $000d
007264: 600000de     bra.w      $7344
007268: 4e550000     link.w     a5, #$0
00726c: 48e76080     movem.l    d1-d2/a0, -(a7)
007270: 48e71c40     movem.l    d3-d5/a1, -(a7)
007274: 7a03         moveq      #$3, d5
007276: 602e         bra.b      $72a6
007278: 4e550000     link.w     a5, #$0
00727c: 48e76080     movem.l    d1-d2/a0, -(a7)
007280: 48e71c40     movem.l    d3-d5/a1, -(a7)
007284: 7a01         moveq      #$1, d5
007286: 601e         bra.b      $72a6
007288: 4e550000     link.w     a5, #$0
00728c: 48e76080     movem.l    d1-d2/a0, -(a7)
007290: 48e71c40     movem.l    d3-d5/a1, -(a7)
007294: 7a02         moveq      #$2, d5
007296: 600e         bra.b      $72a6
007298: 4e550000     link.w     a5, #$0
00729c: 48e76080     movem.l    d1-d2/a0, -(a7)
0072a0: 48e71c40     movem.l    d3-d5/a1, -(a7)
0072a4: 7a00         moveq      #$0, d5
0072a6: 2040         movea.l    d0, a0
0072a8: 2401         move.l     d1, d2
0072aa: 226d0008     movea.l    $8(a5), a1
0072ae: 302d0012     move.w     $12(a5), d0
0072b2: 4840         swap       d0
0072b4: 302d000e     move.w     $e(a5), d0
0072b8: 222d0014     move.l     $14(a5), d1
0072bc: 7603         moveq      #$3, d3
0072be: 08050001     btst.b     #$1, d5
0072c2: 6704         beq.b      $72c8
0072c4: 262d001c     move.l     $1c(a5), d3
0072c8: 282d0018     move.l     $18(a5), d4
0072cc: 08050000     btst.b     #$0, d5
0072d0: 6606         bne.b      $72d8
0072d2: 4e40         trap       #$0
0072d4: 00036004     ori.b      #$4, d3
0072d8: 4e40         trap       #$0
0072da: 00054cdf     ori.b      #$df, d5
0072de: 023860000062 andi.b     #$0, $62.w
0072e4: 4e550000     link.w     a5, #$0
0072e8: 48e76080     movem.l    d1-d2/a0, -(a7)
0072ec: 4e40         trap       #$0
0072ee: 000c         .dc.w      $000c
0072f0: 60000052     bra.w      $7344
0072f4: 4e550000     link.w     a5, #$0
0072f8: 48e76080     movem.l    d1-d2/a0, -(a7)
0072fc: 4e40         trap       #$0
0072fe: 000c         .dc.w      $000c
007300: 65000044     bcs.w      $7346
007304: 2001         move.l     d1, d0
007306: 6000003c     bra.w      $7344
00730a: 4e550000     link.w     a5, #$0
00730e: 48e76080     movem.l    d1-d2/a0, -(a7)
007312: 2200         move.l     d0, d1
007314: 4e40         trap       #$0
007316: 001c6000     ori.b      #$0, (a4)+
00731a: 002a4e550000 ori.b      #$55, $0(a2)
007320: 48e76080     movem.l    d1-d2/a0, -(a7)
007324: 41fa0012     lea.l      $7338(pc), a0
007328: 2d40941c     move.l     d0, -$6be4(a6)
00732c: 6602         bne.b      $7330
00732e: 2040         movea.l    d0, a0
007330: 4e40         trap       #$0
007332: 0009         .dc.w      $0009
007334: 6000000e     bra.w      $7344
007338: 2001         move.l     d1, d0
00733a: 206e941c     movea.l    -$6be4(a6), a0
00733e: 4e90         jsr        (a0)
007340: 4e40         trap       #$0
007342: 001e640c     ori.b      #$c, (a6)+
007346: 2d41800c     move.l     d1, -$7ff4(a6)
00734a: 70ff         moveq      #$ff, d0
00734c: 6004         bra.b      $7352
00734e: 65f6         bcs.b      $7346
007350: 7000         moveq      #$0, d0
007352: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
007358: 4e5d         unlk       a5
00735a: 4e75         rts        
00735c: 4e550000     link.w     a5, #$0
007360: 2200         move.l     d0, d1
007362: 6100001e     bsr.w      $7382
007366: 6100f498     bsr.w      $6800
00736a: 6008         bra.b      $7374
00736c: 4e550000     link.w     a5, #$0
007370: 4afc         illegal    #$4afc
007372: 2200         move.l     d0, d1
007374: 4e40         trap       #$0
007376: 0006dead     ori.b      #$ad, d6
00737a: dead003c     add.l      $3c(a5), d7
00737e: 00014e75     ori.b      #$75, d1
007382: 4e75         rts        
