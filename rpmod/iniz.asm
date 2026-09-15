00004e: 2d468010     move.l     d6, -$7ff0(a6)
000052: 2d468014     move.l     d6, -$7fec(a6)
000056: 3d438018     move.w     d3, -$7fe8(a6)
00005a: 082b00050014 btst.b     #$5, $14(a3)
000060: 670e         beq.b      $70
000062: 2d4c801a     move.l     a4, -$7fe6(a6)
000066: 6608         bne.b      $70
000068: 2d7900000000801a move.l     $0.l, -$7fe6(a6)
000070: 4a85         tst.l      d5
000072: 671e         beq.b      $92
000074: 08050000     btst.b     #$0, d5
000078: 6614         bne.b      $8e
00007a: 41f55800     lea.l      (a5, d5.l), a0
00007e: 4a68fffe     tst.w      -$2(a0)
000082: 660a         bne.b      $8e
000084: 5988         subq.l     #$4, a0
000086: 49e8fffc     lea.l      -$4(a0), a4
00008a: 7001         moveq      #$1, d0
00008c: 6026         bra.b      $b4
00008e: 423558ff     clr.b      -$1(a5, d5.l)
000092: 204d         movea.l    a5, a0
000094: d7eb000c     adda.l     $c(a3), a3
000098: 42a7         clr.l      -(a7)
00009a: 2f0b         move.l     a3, -(a7)
00009c: 7401         moveq      #$1, d2
00009e: 203c000007dc move.l     #$7dc, d0
0000a4: 4ebb0800     jsr        $a6(pc,d0.l)
0000a8: 6076         bra.b      $120
0000aa: 43e80004     lea.l      $4(a0), a1
0000ae: 2d4984b4     move.l     a1, -$7b4c(a6)
0000b2: 7400         moveq      #$0, d2
0000b4: 2260         movea.l    -(a0), a1
0000b6: 2e09         move.l     a1, d7
0000b8: 670c         beq.b      $c6
0000ba: d3cd         adda.l     a5, a1
0000bc: 4229ffff     clr.b      -$1(a1)
0000c0: 2089         move.l     a1, (a0)
0000c2: 5282         addq.l     #$1, d2
0000c4: 60ee         bra.b      $b4
0000c6: 5380         subq.l     #$1, d0
0000c8: 67e0         beq.b      $aa
0000ca: 4a82         tst.l      d2
0000cc: 6610         bne.b      $de
0000ce: 4a68fffe     tst.w      -$2(a0)
0000d2: 670a         beq.b      $de
0000d4: 4228ffff     clr.b      -$1(a0)
0000d8: 2448         movea.l    a0, a2
0000da: 5888         addq.l     #$4, a0
0000dc: 6006         bra.b      $e4
0000de: 208d         move.l     a5, (a0)
0000e0: 2448         movea.l    a0, a2
0000e2: 5282         addq.l     #$1, d2
0000e4: 5282         addq.l     #$1, d2
0000e6: 4a94         tst.l      (a4)
0000e8: 6718         beq.b      $102
0000ea: 2854         movea.l    (a4), a4
0000ec: 4a1c         tst.b      (a4)+
0000ee: 66fc         bne.b      $ec
0000f0: b5cc         cmpa.l     a4, a2
0000f2: 631e         bls.b      $112
0000f4: 0c1c00fc     cmpi.b     #$fc, (a4)+
0000f8: 6618         bne.b      $112
0000fa: 528c         addq.l     #$1, a4
0000fc: 2654         movea.l    (a4), a3
0000fe: d7cd         adda.l     a5, a3
000100: 6014         bra.b      $116
000102: 0c2d00fc0002 cmpi.b     #$fc, $2(a5)
000108: 6608         bne.b      $112
00010a: 266d0004     movea.l    $4(a5), a3
00010e: d7cd         adda.l     a5, a3
000110: 6004         bra.b      $116
000112: d7eb000c     adda.l     $c(a3), a3
000116: 210b         move.l     a3, -(a0)
000118: 2f08         move.l     a0, -(a7)
00011a: 4228ffff     clr.b      -$1(a0)
00011e: 2f02         move.l     d2, -(a7)
000120: 207c000004be movea.l    #$4be, a0
000126: 4ebb8800     jsr        $128(pc,a0.l)
00012a: 6500011c     bcs.w      $248
00012e: 6120         bsr.b      $150
000130: 4cdf0003     movem.l    (a7)+, d0-d1
000134: 9bcd         suba.l     a5, a5
000136: 2f2e84b4     move.l     -$7b4c(a6), -(a7)
00013a: 207c000002d2 movea.l    #$2d2, a0
000140: 4ebb8800     jsr        $142(pc,a0.l)
000144: 7000         moveq      #$0, d0
000146: 207c000007b8 movea.l    #$7b8, a0
00014c: 4ebb8800     jsr        $14e(pc,a0.l)
000150: 207cffff84d0 movea.l    #$ffff84d0, a0
000156: d1ce         adda.l     a6, a0
000158: 2d488004     move.l     a0, -$7ffc(a6)
00015c: 2d4f8000     move.l     a7, -$8000(a6)
000160: 2d4f8008     move.l     a7, -$7ff8(a6)
000164: 203cffffff04 move.l     #$ffffff04, d0
00016a: d08f         add.l      a7, d0
00016c: b0ae8008     cmp.l      -$7ff8(a6), d0
000170: 6502         bcs.b      $174
000172: 4e75         rts        
000174: b0ae8004     cmp.l      -$7ffc(a6), d0
000178: 6506         bcs.b      $180
00017a: 2d408008     move.l     d0, -$7ff8(a6)
00017e: 4e75         rts        
000180: 41fa0070     lea.l      $1f2(pc), a0
000184: 6110         bsr.b      $196
000186: 2f3c00000101 move.l     #$101, -(a7)
00018c: 207c00000788 movea.l    #$788, a0
000192: 4ebb8800     jsr        $194(pc,a0.l)
000196: 3f01         move.w     d1, -(a7)
000198: 7264         moveq      #$64, d1
00019a: 7002         moveq      #$2, d0
00019c: 4e40         trap       #$0
00019e: 008c         .dc.w      $008c
0001a0: 321f         move.w     (a7)+, d1
0001a2: 4e75         rts        
0001a4: 202e8000     move.l     -$8000(a6), d0
0001a8: 90ae8008     sub.l      -$7ff8(a6), d0
0001ac: 4e75         rts        
0001ae: 202e8008     move.l     -$7ff8(a6), d0
0001b2: 90ae8004     sub.l      -$7ffc(a6), d0
0001b6: 4e75         rts        
0001b8: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
0001bc: 302f001e     move.w     $1e(a7), d0
0001c0: 04400080     subi.w     #$80, d0
0001c4: e440         asr.w      #$2, d0
0001c6: 0c40000f     cmpi.w     #$f, d0
0001ca: 660c         bne.b      $1d8
0001cc: 41fa006b     lea.l      $239(pc), a0
0001d0: 7200         moveq      #$0, d1
0001d2: 4e40         trap       #$0
0001d4: 0021640c     ori.b      #$c, -(a1)
0001d8: 227c00000746 movea.l    #$746, a1
0001de: 4ebb9800     jsr        $1e0(pc,a1.l)
0001e2: 6564         bcs.b      $248
0001e4: 4cdf0f03     movem.l    (a7)+, d0-d1/a0-a3
0001e8: 508f         addq.l     #$8, a7
0001ea: 5997         subq.l     #$4, (a7)
0001ec: 4e75         rts        
0001ee: 4afb         .dc.w      $4afb
0001f0: 00502a2a     ori.w      #$2a2a, (a0)
0001f4: 2a2a2053     move.l     $2053(a2), d5
0001f8: 7461         moveq      #$61, d2
0001fa: 636b         bls.b      $267
0001fc: 204f         movea.l    a7, a0
0001fe: 7665         moveq      #$65, d3
000200: 7266         moveq      #$66, d1
000202: 6c6f         bge.b      $273
000204: 7720         .dc.w      $7720
000206: 2a2a2a2a     move.l     $2a2a(a2), d5
00020a: 0d00         btst.l     d6, d0
00020c: 2a2a2a2a     move.l     $2a2a(a2), d5
000210: 2043         movea.l    d3, a0
000212: 616e         bsr.b      $282
000214: 277420696e73 move.l     $69(a4, d2.w), $6e73(a3)
00021a: 7461         moveq      #$61, d2
00021c: 6c6c         bge.b      $28a
00021e: 20747261     movea.l    $61(a4, d7.w), a0
000222: 7020         moveq      #$20, d0
000224: 6861         bvc.b      $287
000226: 6e64         bgt.b      $28c
000228: 6c65         bge.b      $28f
00022a: 7220         moveq      #$20, d1
00022c: 2a2a2a2a     move.l     $2a2a(a2), d5
000230: 0d00         btst.l     d6, d0
000232: 202a2a2a     move.l     $2a2a(a2), d0
000236: 2a20         move.l     -(a0), d5
000238: 006d61746800 ori.w      #$6174, $6800(a5)
00023e: 00000000     ori.b      #$0, d0
000242: 223c00000040 move.l     #$40, d1
000248: 2f08         move.l     a0, -(a7)
00024a: 41faffc0     lea.l      $20c(pc), a0
00024e: 6100ff46     bsr.w      $196
000252: 227cffff8130 movea.l    #$ffff8130, a1
000258: d3ce         adda.l     a6, a1
00025a: 41faffd6     lea.l      $232(pc), a0
00025e: 6128         bsr.b      $288
000260: 205f         movea.l    (a7)+, a0
000262: 5389         subq.l     #$1, a1
000264: 6122         bsr.b      $288
000266: 41faffca     lea.l      $232(pc), a0
00026a: 5389         subq.l     #$1, a1
00026c: 611a         bsr.b      $288
00026e: 137c000dffff move.b     #$d, -$1(a1)
000274: 207cffff8130 movea.l    #$ffff8130, a0
00027a: d1ce         adda.l     a6, a0
00027c: 6100ff18     bsr.w      $196
000280: 4e40         trap       #$0
000282: 00064e40     ori.b      #$40, d6
000286: 000612d8     ori.b      #$d8, d6
00028a: 66fc         bne.b      $288
00028c: 4e75         rts        
00028e: 4e550000     link.w     a5, #$0
000292: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000296: 203cffffffbc move.l     #$ffffffbc, d0
00029c: 6100fecc     bsr.w      $16a
0002a0: 45ee84b8     lea.l      -$7b48(a6), a2
0002a4: 47ee84cc     lea.l      -$7b34(a6), a3
0002a8: 600c         bra.b      $2b6
0002aa: 41ee8168     lea.l      -$7e98(a6), a0
0002ae: 2208         move.l     a0, d1
0002b0: 201a         move.l     (a2)+, d0
0002b2: 61000418     bsr.w      $6cc
0002b6: b5cb         cmpa.l     a3, a2
0002b8: 65f0         bcs.b      $2aa
0002ba: 4ced0d02fff0 movem.l    -$10(a5), d1/a0/a2-a3
0002c0: 4e5d         unlk       a5
0002c2: 4e75         rts        
0002c4: 4e550000     link.w     a5, #$0
0002c8: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0002cc: 2440         movea.l    d0, a2
0002ce: 203cffffffb8 move.l     #$ffffffb8, d0
0002d4: 6100fe94     bsr.w      $16a
0002d8: 6056         bra.b      $330
0002da: 61b2         bsr.b      $28e
0002dc: 7000         moveq      #$0, d0
0002de: 61000626     bsr.w      $906
0002e2: 526e8022     addq.w     #$1, -$7fde(a6)
0002e6: 528a         addq.l     #$1, a2
0002e8: 0c12003d     cmpi.b     #$3d, (a2)
0002ec: 660a         bne.b      $2f8
0002ee: 528a         addq.l     #$1, a2
0002f0: 2d4a8028     move.l     a2, -$7fd8(a6)
0002f4: 7000         moveq      #$0, d0
0002f6: 603e         bra.b      $336
0002f8: 538a         subq.l     #$1, a2
0002fa: 6034         bra.b      $330
0002fc: 6190         bsr.b      $28e
0002fe: 1012         move.b     (a2), d0
000300: 4880         ext.w      d0
000302: 48c0         ext.l      d0
000304: 2f00         move.l     d0, -(a7)
000306: 41fa027c     lea.l      $584(pc), a0
00030a: 2208         move.l     a0, d1
00030c: 7001         moveq      #$1, d0
00030e: 610003d4     bsr.w      $6e4
000312: 588f         addq.l     #$4, a7
000314: 610005f0     bsr.w      $906
000318: 6016         bra.b      $330
00031a: 1012         move.b     (a2), d0
00031c: 4880         ext.w      d0
00031e: 08c00005     bset.b     #$5, d0
000322: 0c40003f     cmpi.w     #$3f, d0
000326: 67b2         beq.b      $2da
000328: 0c40007a     cmpi.w     #$7a, d0
00032c: 67b4         beq.b      $2e2
00032e: 60cc         bra.b      $2fc
000330: 528a         addq.l     #$1, a2
000332: 4a12         tst.b      (a2)
000334: 66e4         bne.b      $31a
000336: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
00033c: 4e5d         unlk       a5
00033e: 4e75         rts        
000340: 4e550000     link.w     a5, #$0
000344: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000348: 203cffffffb8 move.l     #$ffffffb8, d0
00034e: 6100fe1a     bsr.w      $16a
000352: 4aae801e     tst.l      -$7fe2(a6)
000356: 671a         beq.b      $372
000358: 53ae801e     subq.l     #$1, -$7fe2(a6)
00035c: 58ae8024     addq.l     #$4, -$7fdc(a6)
000360: 206e8024     movea.l    -$7fdc(a6), a0
000364: 4a90         tst.l      (a0)
000366: 67f4         beq.b      $35c
000368: 206e8024     movea.l    -$7fdc(a6), a0
00036c: 2010         move.l     (a0), d0
00036e: 6000009a     bra.w      $40a
000372: 4a6e8022     tst.w      -$7fde(a6)
000376: 67000090     beq.w      $408
00037a: 4aae802c     tst.l      -$7fd4(a6)
00037e: 663c         bne.b      $3bc
000380: 4aae8028     tst.l      -$7fd8(a6)
000384: 672e         beq.b      $3b4
000386: 41fa0211     lea.l      $599(pc), a0
00038a: 2208         move.l     a0, d1
00038c: 202e8028     move.l     -$7fd8(a6), d0
000390: 610002f6     bsr.w      $688
000394: 2d40802c     move.l     d0, -$7fd4(a6)
000398: 6622         bne.b      $3bc
00039a: 2f2e8028     move.l     -$7fd8(a6), -(a7)
00039e: 41fa01fb     lea.l      $59b(pc), a0
0003a2: 2208         move.l     a0, d1
0003a4: 202e800c     move.l     -$7ff4(a6), d0
0003a8: 6100033a     bsr.w      $6e4
0003ac: 588f         addq.l     #$4, a7
0003ae: 61000556     bsr.w      $906
0003b2: 6008         bra.b      $3bc
0003b4: 41ee8130     lea.l      -$7ed0(a6), a0
0003b8: 2d48802c     move.l     a0, -$7fd4(a6)
0003bc: 2f2e802c     move.l     -$7fd4(a6), -(a7)
0003c0: 223c00000100 move.l     #$100, d1
0003c6: 41ee8030     lea.l      -$7fd0(a6), a0
0003ca: 2008         move.l     a0, d0
0003cc: 610002da     bsr.w      $6a8
0003d0: 588f         addq.l     #$4, a7
0003d2: 2440         movea.l    d0, a2
0003d4: 4a80         tst.l      d0
0003d6: 6708         beq.b      $3e0
0003d8: 0c2e002a8030 cmpi.b     #$2a, -$7fd0(a6)
0003de: 67dc         beq.b      $3bc
0003e0: 200a         move.l     a2, d0
0003e2: 6724         beq.b      $408
0003e4: 0c2e000d8030 cmpi.b     #$d, -$7fd0(a6)
0003ea: 671c         beq.b      $408
0003ec: 41ee8030     lea.l      -$7fd0(a6), a0
0003f0: 2008         move.l     a0, d0
0003f2: 61000420     bsr.w      $814
0003f6: 5380         subq.l     #$1, d0
0003f8: 41ee8030     lea.l      -$7fd0(a6), a0
0003fc: 42300800     clr.b      (a0, d0.l)
000400: 41ee8030     lea.l      -$7fd0(a6), a0
000404: 2008         move.l     a0, d0
000406: 6002         bra.b      $40a
000408: 7000         moveq      #$0, d0
00040a: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
000410: 4e5d         unlk       a5
000412: 4e75         rts        
000414: 4e550000     link.w     a5, #$0
000418: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
00041c: 2800         move.l     d0, d4
00041e: 2441         movea.l    d1, a2
000420: 203cffffffb8 move.l     #$ffffffb8, d0
000426: 6100fd42     bsr.w      $16a
00042a: 2d4a8024     move.l     a2, -$7fdc(a6)
00042e: 2004         move.l     d4, d0
000430: 5380         subq.l     #$1, d0
000432: 2d40801e     move.l     d0, -$7fe2(a6)
000436: 6016         bra.b      $44e
000438: 588a         addq.l     #$4, a2
00043a: 2852         movea.l    (a2), a4
00043c: 0c14002d     cmpi.b     #$2d, (a4)
000440: 660c         bne.b      $44e
000442: 200c         move.l     a4, d0
000444: 6100fe7e     bsr.w      $2c4
000448: 53ae801e     subq.l     #$1, -$7fe2(a6)
00044c: 4292         clr.l      (a2)
00044e: 5384         subq.l     #$1, d4
000450: 66e6         bne.b      $438
000452: 4aae801e     tst.l      -$7fe2(a6)
000456: 663a         bne.b      $492
000458: 4a6e8022     tst.w      -$7fde(a6)
00045c: 6634         bne.b      $492
00045e: 6100fe2e     bsr.w      $28e
000462: 41fa0149     lea.l      $5ad(pc), a0
000466: 2208         move.l     a0, d1
000468: 7001         moveq      #$1, d0
00046a: 61000278     bsr.w      $6e4
00046e: 601e         bra.b      $48e
000470: 220c         move.l     a4, d1
000472: 7000         moveq      #$0, d0
000474: 6130         bsr.b      $4a6
000476: 72ff         moveq      #$ff, d1
000478: b280         cmp.l      d0, d1
00047a: 6616         bne.b      $492
00047c: 4854         pea.l      (a4)
00047e: 41fa0152     lea.l      $5d2(pc), a0
000482: 2208         move.l     a0, d1
000484: 202e800c     move.l     -$7ff4(a6), d0
000488: 6100025a     bsr.w      $6e4
00048c: 588f         addq.l     #$4, a7
00048e: 61000476     bsr.w      $906
000492: 6100feac     bsr.w      $340
000496: 2840         movea.l    d0, a4
000498: 4a80         tst.l      d0
00049a: 66d4         bne.b      $470
00049c: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
0004a2: 4e5d         unlk       a5
0004a4: 4e75         rts        
0004a6: 48e74080     movem.l    d1/a0, -(a7)
0004aa: 2041         movea.l    d1, a0
0004ac: 4e40         trap       #$0
0004ae: 008064082d41 ori.l      #$64082d41, d0
0004b4: 800c         .dc.w      $800c
0004b6: 70ff         moveq      #$ff, d0
0004b8: 6002         bra.b      $4bc
0004ba: 7000         moveq      #$0, d0
0004bc: 4cdf0102     movem.l    (a7)+, d1/a0
0004c0: 4e75         rts        
0004c2: 53796e746178 subq.w     #$1, $6e746178.l
0004c8: 3a20         move.w     -(a0), d5
0004ca: 696e         bvs.b      $53a
0004cc: 697a         bvs.b      $548
0004ce: 205b         movea.l    (a3)+, a0
0004d0: 3c6f7074     movea.w    $7074(a7), a6
0004d4: 733e         .dc.w      $733e
0004d6: 5d20         subq.b     #$6, -(a0)
0004d8: 7b3c         .dc.w      $7b3c
0004da: 6465         bcc.b      $541
0004dc: 766e         moveq      #$6e, d3
0004de: 616d         bsr.b      $54d
0004e0: 653e         bcs.b      $520
0004e2: 205b         movea.l    (a3)+, a0
0004e4: 3c6f7074     movea.w    $7074(a7), a6
0004e8: 733e         .dc.w      $733e
0004ea: 5d7d         .dc.w      $5d7d
0004ec: 0d00         btst.l     d6, d0
0004ee: 46756e63     not.w      $63(a5, d6.l)
0004f2: 7469         moveq      #$69, d2
0004f4: 6f6e         ble.b      $564
0004f6: 3a20         move.w     -(a0), d5
0004f8: 6174         bsr.b      $56e
0004fa: 7461         moveq      #$61, d2
0004fc: 6368         bls.b      $566
0004fe: 2064         movea.l    -(a4), a0
000500: 6576         bcs.b      $578
000502: 6963         bvs.b      $567
000504: 6573         bcs.b      $579
000506: 0d00         btst.l     d6, d0
000508: 4f70         .dc.w      $4f70
00050a: 7469         moveq      #$69, d2
00050c: 6f6e         ble.b      $57c
00050e: 733a         .dc.w      $733a
000510: 0d00         btst.l     d6, d0
000512: 2020         move.l     -(a0), d0
000514: 2020         move.l     -(a0), d0
000516: 202d7a20     move.l     $7a20(a5), d0
00051a: 2020         move.l     -(a0), d0
00051c: 2020         move.l     -(a0), d0
00051e: 2020         move.l     -(a0), d0
000520: 2067         movea.l    -(a7), a0
000522: 6574         bcs.b      $598
000524: 206c6973     movea.l    $6973(a4), a0
000528: 7420         moveq      #$20, d2
00052a: 6f66         ble.b      $592
00052c: 2064         movea.l    -(a4), a0
00052e: 6576         bcs.b      $5a6
000530: 6963         bvs.b      $595
000532: 6520         bcs.b      $554
000534: 6e61         bgt.b      $597
000536: 6d65         blt.b      $59d
000538: 7320         .dc.w      $7320
00053a: 6672         bne.b      $5ae
00053c: 6f6d         ble.b      $5ab
00053e: 20737461     movea.l    $61(a3, d7.w), a0
000542: 6e64         bgt.b      $5a8
000544: 6172         bsr.b      $5b8
000546: 6420         bcc.b      $568
000548: 696e         bvs.b      $5b8
00054a: 7075         moveq      #$75, d0
00054c: 740d         moveq      #$d, d2
00054e: 00202020     ori.b      #$20, -(a0)
000552: 2020         move.l     -(a0), d0
000554: 2d7a3d3c7061 move.l     $4292(pc), $7061(a6)
00055a: 7468         moveq      #$68, d2
00055c: 3e20         move.w     -(a0), d7
00055e: 6765         beq.b      $5c5
000560: 7420         moveq      #$20, d2
000562: 6c69         bge.b      $5cd
000564: 7374         .dc.w      $7374
000566: 206f6620     movea.l    $6620(a7), a0
00056a: 6465         bcc.b      $5d1
00056c: 7669         moveq      #$69, d3
00056e: 6365         bls.b      $5d5
000570: 206e616d     movea.l    $616d(a6), a0
000574: 6573         bcs.b      $5e9
000576: 2066         movea.l    -(a6), a0
000578: 726f         moveq      #$6f, d1
00057a: 6d20         blt.b      $59c
00057c: 3c706174683e0d00 movea.w    $683e0d00(a0, invalid.w), a6
000584: 756e         .dc.w      $756e
000586: 6b6e         bmi.b      $5f6
000588: 6f77         ble.b      $601
00058a: 6e20         bgt.b      $5ac
00058c: 6f70         ble.b      $5fe
00058e: 7469         moveq      #$69, d2
000590: 6f6e         ble.b      $600
000592: 2027         move.l     -(a7), d0
000594: 2563270d     move.l     -(a3), $270d(a2)
000598: 00720063616e2774 ori.w      #$63, ([$2774, a2])
0005a0: 206f7065     movea.l    $7065(a7), a0
0005a4: 6e20         bgt.b      $5c6
0005a6: 2225         move.l     -(a5), d1
0005a8: 7322         .dc.w      $7322
0005aa: 2e20         move.l     -(a0), d7
0005ac: 00796f75206d7573 ori.w      #$6f75, $206d7573.l
0005b4: 7420         moveq      #$20, d2
0005b6: 7370         .dc.w      $7370
0005b8: 6563         bcs.b      $61d
0005ba: 6966         bvs.b      $622
0005bc: 7920         .dc.w      $7920
0005be: 2d7a206f7220 move.l     $262f(pc), $7220(a6)
0005c4: 6465         bcc.b      $62b
0005c6: 7669         moveq      #$69, d3
0005c8: 6365         bls.b      $62f
0005ca: 206e616d     movea.l    $616d(a6), a0
0005ce: 6573         bcs.b      $643
0005d0: 0d00         btst.l     d6, d0
0005d2: 6361         bls.b      $635
0005d4: 6e27         bgt.b      $5fd
0005d6: 7420         moveq      #$20, d2
0005d8: 6174         bsr.b      $64e
0005da: 7461         moveq      #$61, d2
0005dc: 6368         bls.b      $646
0005de: 2022         move.l     -(a2), d0
0005e0: 2573222e2000 move.l     $2e(a3, d2.w), $2000(a2)
0005e6: 4e550000     link.w     a5, #$0
0005ea: 48e78038     movem.l    d0/a2-a4, -(a7)
0005ee: 7000         moveq      #$0, d0
0005f0: 2840         movea.l    d0, a4
0005f2: 2640         movea.l    d0, a3
0005f4: 2440         movea.l    d0, a2
0005f6: 700d         moveq      #$d, d0
0005f8: 7200         moveq      #$0, d1
0005fa: 41fa0064     lea.l      $660(pc), a0
0005fe: 47ee800c     lea.l      -$7ff4(a6), a3
000602: 7609         moveq      #$9, d3
000604: 2683         move.l     d3, (a3)
000606: 262e84b4     move.l     -$7b4c(a6), d3
00060a: 242e84b0     move.l     -$7b50(a6), d2
00060e: 286e84cc     movea.l    -$7b34(a6), a4
000612: 4e40         trap       #$0
000614: 0021653e     ori.b      #$3e, -(a1)
000618: 4a93         tst.l      (a3)
00061a: 6718         beq.b      $634
00061c: 41fa0046     lea.l      $664(pc), a0
000620: 7264         moveq      #$64, d1
000622: 7002         moveq      #$2, d0
000624: 4e40         trap       #$0
000626: 008c         .dc.w      $008c
000628: 41fa0036     lea.l      $660(pc), a0
00062c: 72dd         moveq      #$dd, d1
00062e: 003c0001     ori.b      #$1, ccr
000632: 6022         bra.b      $656
000634: 3d7c0041813c move.w     #$41, -$7ec4(a6)
00063a: 426e813e     clr.w      -$7ec2(a6)
00063e: 3d7c00028158 move.w     #$2, -$7ea8(a6)
000644: 3d7c0001815a move.w     #$1, -$7ea6(a6)
00064a: 3d7c00028174 move.w     #$2, -$7e8c(a6)
000650: 3d7c00028176 move.w     #$2, -$7e8a(a6)
000656: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
00065c: 4e5d         unlk       a5
00065e: 4e75         rts        
000660: 6369         bls.b      $6cb
000662: 6f002a2a     ble.w      $308e
000666: 2a2a2063     move.l     $2063(a2), d5
00066a: 696f         bvs.b      $6db
00066c: 20747261     movea.l    $61(a4, d7.w), a0
000670: 7068         moveq      #$68, d0
000672: 616e         bsr.b      $6e2
000674: 646c         bcc.b      $6e2
000676: 6572         bcs.b      $6ea
000678: 206d6973     movea.l    $6973(a5), a0
00067c: 6d61         blt.b      $6df
00067e: 7463         moveq      #$63, d2
000680: 6820         bvc.b      $6a2
000682: 2a2a2a2a     move.l     $2a2a(a2), d5
000686: 0d00         btst.l     d6, d0
000688: 4e4d         trap       #$d
00068a: 00004e4d     ori.b      #$4d, d0
00068e: 00014e4d     ori.b      #$4d, d1
000692: 00024e4d     ori.b      #$4d, d2
000696: 00034e4d     ori.b      #$4d, d3
00069a: 00044e4d     ori.b      #$4d, d4
00069e: 00054e4d     ori.b      #$4d, d5
0006a2: 00064e4d     ori.b      #$4d, d6
0006a6: 00074e4d     ori.b      #$4d, d7
0006aa: 0008         .dc.w      $0008
0006ac: 4e4d         trap       #$d
0006ae: 0009         .dc.w      $0009
0006b0: 4e4d         trap       #$d
0006b2: 000a         .dc.w      $000a
0006b4: 4e4d         trap       #$d
0006b6: 000b         .dc.w      $000b
0006b8: 4e4d         trap       #$d
0006ba: 000c         .dc.w      $000c
0006bc: 4e4d         trap       #$d
0006be: 000d         .dc.w      $000d
0006c0: 4e4d         trap       #$d
0006c2: 000e         .dc.w      $000e
0006c4: 4e4d         trap       #$d
0006c6: 000f         .dc.w      $000f
0006c8: 4e4d         trap       #$d
0006ca: 00104e4d     ori.b      #$4d, (a0)
0006ce: 00114e4d     ori.b      #$4d, (a1)
0006d2: 00124e4d     ori.b      #$4d, (a2)
0006d6: 00134e4d     ori.b      #$4d, (a3)
0006da: 00144e4d     ori.b      #$4d, (a4)
0006de: 00154e4d     ori.b      #$4d, (a5)
0006e2: 00164e4d     ori.b      #$4d, (a6)
0006e6: 00174e4d     ori.b      #$4d, (a7)
0006ea: 00184e4d     ori.b      #$4d, (a0)+
0006ee: 00194e4d     ori.b      #$4d, (a1)+
0006f2: 001a4e4d     ori.b      #$4d, (a2)+
0006f6: 001b4e4d     ori.b      #$4d, (a3)+
0006fa: 001c4e4d     ori.b      #$4d, (a4)+
0006fe: 001d4e4d     ori.b      #$4d, (a5)+
000702: 001e4e4d     ori.b      #$4d, (a6)+
000706: 001f4e4d     ori.b      #$4d, (a7)+
00070a: 00204e4d     ori.b      #$4d, -(a0)
00070e: 00214e4d     ori.b      #$4d, -(a1)
000712: 00224e4d     ori.b      #$4d, -(a2)
000716: 00234e4d     ori.b      #$4d, -(a3)
00071a: 00244e4d     ori.b      #$4d, -(a4)
00071e: 00254e4d     ori.b      #$4d, -(a5)
000722: 00264e4d     ori.b      #$4d, -(a6)
000726: 00274e4d     ori.b      #$4d, -(a7)
00072a: 00284e4d0029 ori.b      #$4d, $29(a0)
000730: 4e4d         trap       #$d
000732: 002a4e4d002b ori.b      #$4d, $2b(a2)
000738: 4e4d         trap       #$d
00073a: 002c4e4d002d ori.b      #$4d, $2d(a4)
000740: 4e4d         trap       #$d
000742: 002e4e4d002f ori.b      #$4d, $2f(a6)
000748: 4e4d         trap       #$d
00074a: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
000750: 4e4d         trap       #$d
000752: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
000758: 4e4d         trap       #$d
00075a: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
000760: 4e4d         trap       #$d
000762: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
000768: 4e4d         trap       #$d
00076a: 00384e4d0039 ori.b      #$4d, $39.w
000770: 4e4d         trap       #$d
000772: 003a         .dc.w      $003a
000774: 4e4d         trap       #$d
000776: 003b         .dc.w      $003b
000778: 4e4d         trap       #$d
00077a: 003c         .dc.w      $003c
00077c: 4e4d         trap       #$d
00077e: 003d         .dc.w      $003d
000780: 4e4d         trap       #$d
000782: 003e         .dc.w      $003e
000784: 4e4d         trap       #$d
000786: 003f         .dc.w      $003f
000788: 4e4d         trap       #$d
00078a: 00414e4d     ori.w      #$4e4d, d1
00078e: 00424e4d     ori.w      #$4e4d, d2
000792: 00434e4d     ori.w      #$4e4d, d3
000796: 00444e4d     ori.w      #$4e4d, d4
00079a: 00454e4d     ori.w      #$4e4d, d5
00079e: 00402f08     ori.w      #$2f08, d0
0007a2: 2040         movea.l    d0, a0
0007a4: b300         eor.b      d1, d0
0007a6: 08000000     btst.b     #$0, d0
0007aa: 6652         bne.b      $7fe
0007ac: 08010000     btst.b     #$0, d1
0007b0: c389         exg.l      d1, a1
0007b2: 6718         beq.b      $7cc
0007b4: b109         cmpm.b     (a1)+, (a0)+
0007b6: 6530         bcs.b      $7e8
0007b8: 6220         bhi.b      $7da
0007ba: 4a28ffff     tst.b      -$1(a0)
0007be: 660c         bne.b      $7cc
0007c0: 6034         bra.b      $7f6
0007c2: 4a00         tst.b      d0
0007c4: 6730         beq.b      $7f6
0007c6: 0c4000ff     cmpi.w     #$ff, d0
0007ca: 632a         bls.b      $7f6
0007cc: 3018         move.w     (a0)+, d0
0007ce: b059         cmp.w      (a1)+, d0
0007d0: 67f0         beq.b      $7c2
0007d2: 650e         bcs.b      $7e2
0007d4: 0c4000ff     cmpi.w     #$ff, d0
0007d8: 6316         bls.b      $7f0
0007da: 7001         moveq      #$1, d0
0007dc: 205f         movea.l    (a7)+, a0
0007de: c389         exg.l      d1, a1
0007e0: 4e75         rts        
0007e2: 0c4000ff     cmpi.w     #$ff, d0
0007e6: 6308         bls.b      $7f0
0007e8: 70ff         moveq      #$ff, d0
0007ea: 205f         movea.l    (a7)+, a0
0007ec: c389         exg.l      d1, a1
0007ee: 4e75         rts        
0007f0: 4a29fffe     tst.b      -$2(a1)
0007f4: 66f2         bne.b      $7e8
0007f6: 7000         moveq      #$0, d0
0007f8: 205f         movea.l    (a7)+, a0
0007fa: c389         exg.l      d1, a1
0007fc: 4e75         rts        
0007fe: c389         exg.l      d1, a1
000800: 7000         moveq      #$0, d0
000802: 1018         move.b     (a0)+, d0
000804: b019         cmp.b      (a1)+, d0
000806: 56c8fffa     dbne       d0, $802
00080a: 65dc         bcs.b      $7e8
00080c: 5240         addq.w     #$1, d0
00080e: 205f         movea.l    (a7)+, a0
000810: c389         exg.l      d1, a1
000812: 4e75         rts        
000814: 2f08         move.l     a0, -(a7)
000816: 2040         movea.l    d0, a0
000818: 4a18         tst.b      (a0)+
00081a: 670c         beq.b      $828
00081c: 4a18         tst.b      (a0)+
00081e: 6708         beq.b      $828
000820: 4a18         tst.b      (a0)+
000822: 6704         beq.b      $828
000824: 4a18         tst.b      (a0)+
000826: 66f0         bne.b      $818
000828: 91c0         suba.l     d0, a0
00082a: 2008         move.l     a0, d0
00082c: 5380         subq.l     #$1, d0
00082e: 205f         movea.l    (a7)+, a0
000830: 4e75         rts        
000832: 2f08         move.l     a0, -(a7)
000834: 2040         movea.l    d0, a0
000836: c389         exg.l      d1, a1
000838: 10d9         move.b     (a1)+, (a0)+
00083a: 670c         beq.b      $848
00083c: 10d9         move.b     (a1)+, (a0)+
00083e: 6708         beq.b      $848
000840: 10d9         move.b     (a1)+, (a0)+
000842: 6704         beq.b      $848
000844: 10d9         move.b     (a1)+, (a0)+
000846: 66f0         bne.b      $838
000848: 205f         movea.l    (a7)+, a0
00084a: c389         exg.l      d1, a1
00084c: 4e75         rts        
00084e: 2f08         move.l     a0, -(a7)
000850: 2040         movea.l    d0, a0
000852: c389         exg.l      d1, a1
000854: 4a18         tst.b      (a0)+
000856: 670c         beq.b      $864
000858: 4a18         tst.b      (a0)+
00085a: 6708         beq.b      $864
00085c: 4a18         tst.b      (a0)+
00085e: 6704         beq.b      $864
000860: 4a18         tst.b      (a0)+
000862: 66f0         bne.b      $854
000864: 1159ffff     move.b     (a1)+, -$1(a0)
000868: 66ce         bne.b      $838
00086a: 60dc         bra.b      $848
00086c: 2f08         move.l     a0, -(a7)
00086e: 2040         movea.l    d0, a0
000870: c389         exg.l      d1, a1
000872: 10d9         move.b     (a1)+, (a0)+
000874: 6afc         bpl.b      $872
000876: 4210         clr.b      (a0)
000878: 0220007f     andi.b     #$7f, -(a0)
00087c: 205f         movea.l    (a7)+, a0
00087e: c389         exg.l      d1, a1
000880: 4e75         rts        
000882: 2a5f         movea.l    (a7)+, a5
000884: 5385         subq.l     #$1, d5
000886: 6562         bcs.b      $8ea
000888: 1018         move.b     (a0)+, d0
00088a: 67f8         beq.b      $884
00088c: 0c00000d     cmpi.b     #$d, d0
000890: 6758         beq.b      $8ea
000892: 0c000020     cmpi.b     #$20, d0
000896: 67ec         beq.b      $884
000898: 0c000009     cmpi.b     #$9, d0
00089c: 67e6         beq.b      $884
00089e: 0c00002c     cmpi.b     #$2c, d0
0008a2: 67e0         beq.b      $884
0008a4: 5282         addq.l     #$1, d2
0008a6: 0c000022     cmpi.b     #$22, d0
0008aa: 6730         beq.b      $8dc
0008ac: 0c000027     cmpi.b     #$27, d0
0008b0: 672a         beq.b      $8dc
0008b2: 4868ffff     pea.l      -$1(a0)
0008b6: 5385         subq.l     #$1, d5
0008b8: 6530         bcs.b      $8ea
0008ba: 1018         move.b     (a0)+, d0
0008bc: 67c6         beq.b      $884
0008be: 0c00000d     cmpi.b     #$d, d0
0008c2: 6712         beq.b      $8d6
0008c4: 0c000020     cmpi.b     #$20, d0
0008c8: 670c         beq.b      $8d6
0008ca: 0c000009     cmpi.b     #$9, d0
0008ce: 6706         beq.b      $8d6
0008d0: 0c00002c     cmpi.b     #$2c, d0
0008d4: 66e0         bne.b      $8b6
0008d6: 4228ffff     clr.b      -$1(a0)
0008da: 60a8         bra.b      $884
0008dc: 4850         pea.l      (a0)
0008de: 5385         subq.l     #$1, d5
0008e0: 6508         bcs.b      $8ea
0008e2: 1218         move.b     (a0)+, d1
0008e4: b001         cmp.b      d1, d0
0008e6: 66f6         bne.b      $8de
0008e8: 60ec         bra.b      $8d6
0008ea: 204f         movea.l    a7, a0
0008ec: 4857         pea.l      (a7)
0008ee: 2f02         move.l     d2, -(a7)
0008f0: 5382         subq.l     #$1, d2
0008f2: 6710         beq.b      $904
0008f4: e582         asl.l      #$2, d2
0008f6: 20302800     move.l     (a0, d2.l), d0
0008fa: 21902800     move.l     (a0), (a0, d2.l)
0008fe: 20c0         move.l     d0, (a0)+
000900: 5182         subq.l     #$8, d2
000902: 62f2         bhi.b      $8f6
000904: 4ed5         jmp        (a5)
000906: 4e550000     link.w     a5, #$0
00090a: 2200         move.l     d0, d1
00090c: 6100001e     bsr.w      $92c
000910: 6100fe22     bsr.w      $734
000914: 6008         bra.b      $91e
000916: 4e550000     link.w     a5, #$0
00091a: 4afc         illegal    #$4afc
00091c: 2200         move.l     d0, d1
00091e: 4e40         trap       #$0
000920: 0006dead     ori.b      #$ad, d6
000924: dead003c     add.l      $3c(a5), d7
000928: 00014e75     ori.b      #$75, d1
00092c: 4e75         rts        
