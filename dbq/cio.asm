00008a: 48e78080     movem.l    d0/a0, -(a7)
00008e: 302f000c     move.w     $c(a7), d0
000092: 0c400046     cmpi.w     #$46, d0
000096: 644c         bcc.b      $e4
000098: 41fa013a     lea.l      $1d4(pc), a0
00009c: e340         asl.w      #$1, d0
00009e: 30300000     move.w     (a0, d0.w), d0
0000a2: 41f00000     lea.l      (a0, d0.w), a0
0000a6: 2f480010     move.l     a0, $10(a7)
0000aa: 2d6f00148004 move.l     $14(a7), -$7ffc(a6)
0000b0: 41fa0016     lea.l      $c8(pc), a0
0000b4: 2f480014     move.l     a0, $14(a7)
0000b8: 4cdf0101     movem.l    (a7)+, d0/a0
0000bc: 2d5f8008     move.l     (a7)+, -$7ff8(a6)
0000c0: 588f         addq.l     #$4, a7
0000c2: 42ae800c     clr.l      -$7ff4(a6)
0000c6: 4e75         rts        
0000c8: 2f2e8004     move.l     -$7ffc(a6), -(a7)
0000cc: 4aae800c     tst.l      -$7ff4(a6)
0000d0: 670c         beq.b      $de
0000d2: 2f08         move.l     a0, -(a7)
0000d4: 206e8000     movea.l    -$8000(a6), a0
0000d8: 20ae800c     move.l     -$7ff4(a6), (a0)
0000dc: 205f         movea.l    (a7)+, a0
0000de: 2c6e8008     movea.l    -$7ff8(a6), a6
0000e2: 4e75         rts        
0000e4: 4cdf0101     movem.l    (a7)+, d0/a0
0000e8: 2c5f         movea.l    (a7)+, a6
0000ea: 2eaf0004     move.l     $4(a7), (a7)
0000ee: 2f7c000000400004 move.l     #$40, $4(a7)
0000f6: 4e75         rts        
0000f8: 4e550000     link.w     a5, #$0
0000fc: 48e76080     movem.l    d1-d2/a0, -(a7)
000100: 2200         move.l     d0, d1
000102: 5281         addq.l     #$1, d1
000104: 08810000     bclr.b     #$0, d1
000108: d2ae8010     add.l      -$7ff0(a6), d1
00010c: 6514         bcs.b      $122
00010e: b2ae8014     cmp.l      -$7fec(a6), d1
000112: 640e         bcc.b      $122
000114: 202e8010     move.l     -$7ff0(a6), d0
000118: 2d418010     move.l     d1, -$7ff0(a6)
00011c: 610a         bsr.b      $128
00011e: 60004258     bra.w      $4378
000122: 72cf         moveq      #$cf, d1
000124: 60004254     bra.w      $437a
000128: 2040         movea.l    d0, a0
00012a: 9280         sub.l      d0, d1
00012c: e489         lsr.l      #$2, d1
00012e: 6406         bcc.b      $136
000130: 4258         clr.w      (a0)+
000132: 6002         bra.b      $136
000134: 4298         clr.l      (a0)+
000136: 51c9fffc     dbra       d1, $134
00013a: 5241         addq.w     #$1, d1
00013c: 5381         subq.l     #$1, d1
00013e: 64f4         bcc.b      $134
000140: 2000         move.l     d0, d0
000142: 4e75         rts        
000144: 4e550000     link.w     a5, #$0
000148: 48e76080     movem.l    d1-d2/a0, -(a7)
00014c: 2200         move.l     d0, d1
00014e: 66000008     bne.w      $158
000152: 72cb         moveq      #$cb, d1
000154: 60004224     bra.w      $437a
000158: 08010000     btst.b     #$0, d1
00015c: 6702         beq.b      $160
00015e: 5281         addq.l     #$1, d1
000160: 242e8024     move.l     -$7fdc(a6), d2
000164: 9481         sub.l      d1, d2
000166: 6b18         bmi.b      $180
000168: 202e8020     move.l     -$7fe0(a6), d0
00016c: d3ae8020     add.l      d1, -$7fe0(a6)
000170: 93ae8024     sub.l      d1, -$7fdc(a6)
000174: d280         add.l      d0, d1
000176: 6100ffb0     bsr.w      $128
00017a: 2000         move.l     d0, d0
00017c: 600041fa     bra.w      $4378
000180: 203c00000800 move.l     #$800, d0
000186: b081         cmp.l      d1, d0
000188: 6202         bhi.b      $18c
00018a: 2001         move.l     d1, d0
00018c: 2f0a         move.l     a2, -(a7)
00018e: 4e40         trap       #$0
000190: 0028204a245f ori.b      #$4a, $245f(a0)
000196: 650041e2     bcs.w      $437a
00019a: 2d488020     move.l     a0, -$7fe0(a6)
00019e: 2d408024     move.l     d0, -$7fdc(a6)
0001a2: 60b4         bra.b      $158
0001a4: 4e55fffc     link.w     a5, #$fffc
0001a8: 2e8a         move.l     a2, (a7)
0001aa: 4e40         trap       #$0
0001ac: 0028651c2d40 ori.b      #$1c, $2d40(a0)
0001b2: 802c200a     or.b       $200a(a4), d0
0001b6: 246dfffc     movea.l    -$4(a5), a2
0001ba: 4e5d         unlk       a5
0001bc: 4e75         rts        
0001be: 4e55fffc     link.w     a5, #$fffc
0001c2: 2e8a         move.l     a2, (a7)
0001c4: 2441         movea.l    d1, a2
0001c6: 4e40         trap       #$0
0001c8: 002964ea70ff ori.b      #$ea, $70ff(a1)
0001ce: 2d41800c     move.l     d1, -$7ff4(a6)
0001d2: 60e2         bra.b      $1b6
0001d4: 13b4139813ee2d68 move.b     (d1.w * 2), ([$2d68])
0001dc: 2a9e         move.l     (a6)+, (a5)
0001de: 2b962702149c move.l     (a6), ([a5, d2.w * 8], $149c)
0001e4: 14da         move.b     (a2)+, (a2)+
0001e6: 278a27d0     move.l     a2, (invalid.w)
0001ea: 280c         move.l     a4, d4
0001ec: 1524         move.b     -(a4), -(a2)
0001ee: 156c15a82742 move.b     $15a8(a4), $2742(a2)
0001f4: 142e1466     move.b     $1466(a6), d2
0001f8: 291e         move.l     (a6)+, -(a4)
0001fa: 29c8         .dc.w      $29c8
0001fc: 2bb62a202df00f641ed4 move.l     $20(a6, d2.l), $f641ed4(invalid.w)
000206: 1f0a         .dc.w      $1f0a
000208: 1f3e         .dc.w      $1f3e
00020a: 3cca         move.w     a2, (a6)+
00020c: 3d383d54     move.w     $3d54.w, -(a6)
000210: 3ce6         move.w     -(a6), (a6)+
000212: 3d0c         move.w     a4, -(a6)
000214: 3dbc3da83dd0 move.w     #$3da8, (invalid.w)
00021a: 3de0         .dc.w      $3de0
00021c: 3e00         move.w     d0, d7
00021e: 3e1a         move.w     (a2)+, d7
000220: 3e323e4a     move.w     $4a(a2, d3.l), d7
000224: 3ab63b123cfc move.w     ([a6, d3.l * 2], $3cfc), (a5)
00022a: 29f0         .dc.w      $29f0
00022c: 11c00fd6     move.b     d0, $fd6.w
000230: 103c11a8     move.b     #$a8, d0
000234: 1184116200fc0fc0 move.b     d4, ([$fc, a0], $fc0)
00023c: 03b40f340e2e08ce bclr.b     d1, $e2e08ce(a4, d0.l * 8)
000244: 084e         .dc.w      $084e
000246: 058804a0     movep.w    d2, $4a0(a0)
00024a: 32fa370c     move.w     $3958(pc), (a1)+
00024e: 34a0         move.w     -(a0), (a2)
000250: 353c3578     move.w     #$3578, -(a2)
000254: 3d22         move.w     -(a2), -(a6)
000256: 3250         movea.w    (a0), a1
000258: 3506         move.w     d6, -(a2)
00025a: 33383750     move.w     $3750.w, -(a1)
00025e: 35d6         .dc.w      $35d6
000260: 4e550000     link.w     a5, #$0
000264: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
000268: 2440         movea.l    d0, a2
00026a: 2641         movea.l    d1, a3
00026c: 14db         move.b     (a3)+, (a2)+
00026e: 66fc         bne.b      $26c
000270: 157c0020ffff move.b     #$20, -$1(a2)
000276: 200a         move.l     a2, d0
000278: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
00027e: 4e5d         unlk       a5
000280: 4e75         rts        
000282: 48e700a0     movem.l    a0/a2, -(a7)
000286: 4e40         trap       #$0
000288: 0028650c2041 ori.b      #$c, $2041(a0)
00028e: 2080         move.l     d0, (a0)
000290: 200a         move.l     a2, d0
000292: 4cdf0500     movem.l    (a7)+, a0/a2
000296: 4e75         rts        
000298: 70ff         moveq      #$ff, d0
00029a: 2d41800c     move.l     d1, -$7ff4(a6)
00029e: 60f2         bra.b      $292
0002a0: 2f0a         move.l     a2, -(a7)
0002a2: 2441         movea.l    d1, a2
0002a4: 4e40         trap       #$0
0002a6: 0029245f4e75 ori.b      #$5f, $4e75(a1)
0002ac: 4e550000     link.w     a5, #$0
0002b0: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
0002b4: 2440         movea.l    d0, a2
0002b6: 2641         movea.l    d1, a3
0002b8: 282f001c     move.l     $1c(a7), d4
0002bc: 6002         bra.b      $2c0
0002be: 14db         move.b     (a3)+, (a2)+
0002c0: 5344         subq.w     #$1, d4
0002c2: 6cfa         bge.b      $2be
0002c4: 200a         move.l     a2, d0
0002c6: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0002cc: 4e5d         unlk       a5
0002ce: 4e75         rts        
0002d0: 4e550000     link.w     a5, #$0
0002d4: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
0002d8: 4feffff4     lea.l      -$c(a7), a7
0002dc: 7000         moveq      #$0, d0
0002de: 3f40000a     move.w     d0, $a(a7)
0002e2: 3f400004     move.w     d0, $4(a7)
0002e6: 3f400006     move.w     d0, $6(a7)
0002ea: 7200         moveq      #$0, d1
0002ec: 3200         move.w     d0, d1
0002ee: 2a01         move.l     d1, d5
0002f0: 2801         move.l     d1, d4
0002f2: 2c01         move.l     d1, d6
0002f4: 206f003c     movea.l    $3c(a7), a0
0002f8: 2010         move.l     (a0), d0
0002fa: 61002da4     bsr.w      $30a0
0002fe: 5280         addq.l     #$1, d0
000300: 2e00         move.l     d0, d7
000302: 7001         moveq      #$1, d0
000304: c047         and.w      d7, d0
000306: 3f400008     move.w     d0, $8(a7)
00030a: 202f003c     move.l     $3c(a7), d0
00030e: 5880         addq.l     #$4, d0
000310: 2640         movea.l    d0, a3
000312: 600e         bra.b      $322
000314: 2013         move.l     (a3), d0
000316: 61002d88     bsr.w      $30a0
00031a: d880         add.l      d0, d4
00031c: 588b         addq.l     #$4, a3
00031e: 526f0006     addq.w     #$1, $6(a7)
000322: 4a93         tst.l      (a3)
000324: 66ee         bne.b      $314
000326: 266f0040     movea.l    $40(a7), a3
00032a: 600e         bra.b      $33a
00032c: 2013         move.l     (a3), d0
00032e: 61002d70     bsr.w      $30a0
000332: da80         add.l      d0, d5
000334: 588b         addq.l     #$4, a3
000336: 526f0004     addq.w     #$1, $4(a7)
00033a: 4a93         tst.l      (a3)
00033c: 66ee         bne.b      $32c
00033e: 7000         moveq      #$0, d0
000340: 302f0006     move.w     $6(a7), d0
000344: 5280         addq.l     #$1, d0
000346: d880         add.l      d0, d4
000348: 7000         moveq      #$0, d0
00034a: 302f0004     move.w     $4(a7), d0
00034e: da80         add.l      d0, d5
000350: 526f0006     addq.w     #$1, $6(a7)
000354: 2004         move.l     d4, d0
000356: d085         add.l      d5, d0
000358: 08000000     btst.b     #$0, d0
00035c: 6704         beq.b      $362
00035e: 526f000a     addq.w     #$1, $a(a7)
000362: 2004         move.l     d4, d0
000364: d085         add.l      d5, d0
000366: 7200         moveq      #$0, d1
000368: 322f000a     move.w     $a(a7), d1
00036c: d081         add.l      d1, d0
00036e: 5c80         addq.l     #$6, d0
000370: d087         add.l      d7, d0
000372: 7200         moveq      #$0, d1
000374: 322f0008     move.w     $8(a7), d1
000378: d081         add.l      d1, d0
00037a: 5480         addq.l     #$2, d0
00037c: 7200         moveq      #$0, d1
00037e: 322f0006     move.w     $6(a7), d1
000382: e589         lsl.l      #$2, d1
000384: d081         add.l      d1, d0
000386: 7200         moveq      #$0, d1
000388: 322f0004     move.w     $4(a7), d1
00038c: e589         lsl.l      #$2, d1
00038e: d081         add.l      d1, d0
000390: 5080         addq.l     #$8, d0
000392: 2c00         move.l     d0, d6
000394: 41ee8030     lea.l      -$7fd0(a6), a0
000398: 2208         move.l     a0, d1
00039a: 2006         move.l     d6, d0
00039c: 6100fee4     bsr.w      $282
0003a0: 2840         movea.l    d0, a4
0003a2: 2440         movea.l    d0, a2
0003a4: 72ff         moveq      #$ff, d1
0003a6: b280         cmp.l      d0, d1
0003a8: 6606         bne.b      $3b0
0003aa: 70ff         moveq      #$ff, d0
0003ac: 600001cc     bra.w      $57a
0003b0: 202f003c     move.l     $3c(a7), d0
0003b4: 5880         addq.l     #$4, d0
0003b6: 2640         movea.l    d0, a3
0003b8: 600c         bra.b      $3c6
0003ba: 2213         move.l     (a3), d1
0003bc: 200a         move.l     a2, d0
0003be: 6100fea0     bsr.w      $260
0003c2: 2440         movea.l    d0, a2
0003c4: 588b         addq.l     #$4, a3
0003c6: 4a93         tst.l      (a3)
0003c8: 66f0         bne.b      $3ba
0003ca: 0c6f00010006 cmpi.w     #$1, $6(a7)
0003d0: 6304         bls.b      $3d6
0003d2: 422affff     clr.b      -$1(a2)
0003d6: 14fc000d     move.b     #$d, (a2)+
0003da: 4a6f000a     tst.w      $a(a7)
0003de: 6702         beq.b      $3e2
0003e0: 421a         clr.b      (a2)+
0003e2: 266f0040     movea.l    $40(a7), a3
0003e6: 600c         bra.b      $3f4
0003e8: 2213         move.l     (a3), d1
0003ea: 200a         move.l     a2, d0
0003ec: 6100fe72     bsr.w      $260
0003f0: 2440         movea.l    d0, a2
0003f2: 588b         addq.l     #$4, a3
0003f4: 4a93         tst.l      (a3)
0003f6: 66f0         bne.b      $3e8
0003f8: 422affff     clr.b      -$1(a2)
0003fc: 2ebc0000fc01 move.l     #$fc01, (a7)
000402: 48780002     pea.l      $2.w
000406: 41ef0006     lea.l      $6(a7), a0
00040a: 2208         move.l     a0, d1
00040c: 200a         move.l     a2, d0
00040e: 6100fe9c     bsr.w      $2ac
000412: 588f         addq.l     #$4, a7
000414: 2440         movea.l    d0, a2
000416: 2004         move.l     d4, d0
000418: d085         add.l      d5, d0
00041a: 7200         moveq      #$0, d1
00041c: 322f000a     move.w     $a(a7), d1
000420: d081         add.l      d1, d0
000422: 5c80         addq.l     #$6, d0
000424: 2e80         move.l     d0, (a7)
000426: 48780004     pea.l      $4.w
00042a: 41ef0004     lea.l      $4(a7), a0
00042e: 2208         move.l     a0, d1
000430: 200a         move.l     a2, d0
000432: 6100fe78     bsr.w      $2ac
000436: 588f         addq.l     #$4, a7
000438: 2440         movea.l    d0, a2
00043a: 206f003c     movea.l    $3c(a7), a0
00043e: 2210         move.l     (a0), d1
000440: 200a         move.l     a2, d0
000442: 6100fe1c     bsr.w      $260
000446: 2440         movea.l    d0, a2
000448: 422affff     clr.b      -$1(a2)
00044c: 4a6f0008     tst.w      $8(a7)
000450: 6702         beq.b      $454
000452: 421a         clr.b      (a2)+
000454: 421a         clr.b      (a2)+
000456: 14fc000d     move.b     #$d, (a2)+
00045a: 4297         clr.l      (a7)
00045c: 48780004     pea.l      $4.w
000460: 41ef0004     lea.l      $4(a7), a0
000464: 2208         move.l     a0, d1
000466: 200a         move.l     a2, d0
000468: 6100fe42     bsr.w      $2ac
00046c: 588f         addq.l     #$4, a7
00046e: 2440         movea.l    d0, a2
000470: 202f003c     move.l     $3c(a7), d0
000474: 5880         addq.l     #$4, d0
000476: 2640         movea.l    d0, a3
000478: 6020         bra.b      $49a
00047a: 48780004     pea.l      $4.w
00047e: 41ef0004     lea.l      $4(a7), a0
000482: 2208         move.l     a0, d1
000484: 200a         move.l     a2, d0
000486: 6100fe24     bsr.w      $2ac
00048a: 588f         addq.l     #$4, a7
00048c: 2440         movea.l    d0, a2
00048e: 2013         move.l     (a3), d0
000490: 61002c0e     bsr.w      $30a0
000494: 5280         addq.l     #$1, d0
000496: d197         add.l      d0, (a7)
000498: 588b         addq.l     #$4, a3
00049a: 4a93         tst.l      (a3)
00049c: 66dc         bne.b      $47a
00049e: 4297         clr.l      (a7)
0004a0: 48780004     pea.l      $4.w
0004a4: 41ef0004     lea.l      $4(a7), a0
0004a8: 2208         move.l     a0, d1
0004aa: 200a         move.l     a2, d0
0004ac: 6100fdfe     bsr.w      $2ac
0004b0: 588f         addq.l     #$4, a7
0004b2: 2440         movea.l    d0, a2
0004b4: 7000         moveq      #$0, d0
0004b6: 302f000a     move.w     $a(a7), d0
0004ba: d084         add.l      d4, d0
0004bc: 2e80         move.l     d0, (a7)
0004be: 266f0040     movea.l    $40(a7), a3
0004c2: 6020         bra.b      $4e4
0004c4: 48780004     pea.l      $4.w
0004c8: 41ef0004     lea.l      $4(a7), a0
0004cc: 2208         move.l     a0, d1
0004ce: 200a         move.l     a2, d0
0004d0: 6100fdda     bsr.w      $2ac
0004d4: 588f         addq.l     #$4, a7
0004d6: 2440         movea.l    d0, a2
0004d8: 2013         move.l     (a3), d0
0004da: 61002bc4     bsr.w      $30a0
0004de: 5280         addq.l     #$1, d0
0004e0: d197         add.l      d0, (a7)
0004e2: 588b         addq.l     #$4, a3
0004e4: 4a93         tst.l      (a3)
0004e6: 66dc         bne.b      $4c4
0004e8: 4297         clr.l      (a7)
0004ea: 48780004     pea.l      $4.w
0004ee: 41ef0004     lea.l      $4(a7), a0
0004f2: 2208         move.l     a0, d1
0004f4: 200a         move.l     a2, d0
0004f6: 6100fdb4     bsr.w      $2ac
0004fa: 588f         addq.l     #$4, a7
0004fc: 2440         movea.l    d0, a2
0004fe: 95ca         suba.l     a2, a2
000500: 426f000a     clr.w      $a(a7)
000504: 4fedffcc     lea.l      -$34(a5), a7
000508: 306f004e     movea.w    $4e(a7), a0
00050c: 2f08         move.l     a0, -(a7)
00050e: 306f004e     movea.w    $4e(a7), a0
000512: 2f08         move.l     a0, -(a7)
000514: 2f2f004c     move.l     $4c(a7), -(a7)
000518: 42a7         clr.l      -(a7)
00051a: 42a7         clr.l      -(a7)
00051c: 4854         pea.l      (a4)
00051e: 2206         move.l     d6, d1
000520: 202f0028     move.l     $28(a7), d0
000524: 206f0024     movea.l    $24(a7), a0
000528: 4e90         jsr        (a0)
00052a: 4fef0018     lea.l      $18(a7), a7
00052e: 2e80         move.l     d0, (a7)
000530: 72ff         moveq      #$ff, d1
000532: b280         cmp.l      d0, d1
000534: 662e         bne.b      $564
000536: 0cae000000d8800c cmpi.l     #$d8, -$7ff4(a6)
00053e: 6624         bne.b      $564
000540: 302f000a     move.w     $a(a7), d0
000544: 526f000a     addq.w     #$1, $a(a7)
000548: 4a40         tst.w      d0
00054a: 6618         bne.b      $564
00054c: 42a7         clr.l      -(a7)
00054e: 7200         moveq      #$0, d1
000550: 202f0014     move.l     $14(a7), d0
000554: 61000032     bsr.w      $588
000558: 588f         addq.l     #$4, a7
00055a: 2440         movea.l    d0, a2
00055c: 72ff         moveq      #$ff, d1
00055e: b280         cmp.l      d0, d1
000560: 66a2         bne.b      $504
000562: 95ca         suba.l     a2, a2
000564: 200a         move.l     a2, d0
000566: 6706         beq.b      $56e
000568: 200a         move.l     a2, d0
00056a: 61003d02     bsr.w      $426e
00056e: 220c         move.l     a4, d1
000570: 202e8030     move.l     -$7fd0(a6), d0
000574: 6100fd2a     bsr.w      $2a0
000578: 2017         move.l     (a7), d0
00057a: 4fef000c     lea.l      $c(a7), a7
00057e: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
000584: 4e5d         unlk       a5
000586: 4e75         rts        
000588: 4e550000     link.w     a5, #$0
00058c: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
000590: 2440         movea.l    d0, a2
000592: 266f0030     movea.l    $30(a7), a3
000596: 4fefff00     lea.l      -$100(a7), a7
00059a: 7e00         moveq      #$0, d7
00059c: 200b         move.l     a3, d0
00059e: 6602         bne.b      $5a2
0005a0: 47d7         lea.l      (a7), a3
0005a2: 306f0106     movea.w    $106(a7), a0
0005a6: 2208         move.l     a0, d1
0005a8: 200a         move.l     a2, d0
0005aa: 61003cac     bsr.w      $4258
0005ae: 2a00         move.l     d0, d5
0005b0: 72ff         moveq      #$ff, d1
0005b2: b280         cmp.l      d0, d1
0005b4: 660000a0     bne.w      $656
0005b8: 0cae000000d8800c cmpi.l     #$d8, -$7ff4(a6)
0005c0: 66000090     bne.w      $652
0005c4: 0c12002f     cmpi.b     #$2f, (a2)
0005c8: 67000088     beq.w      $652
0005cc: 41fa00a0     lea.l      $66e(pc), a0
0005d0: 2008         move.l     a0, d0
0005d2: 61000b34     bsr.w      $1108
0005d6: 2840         movea.l    d0, a4
0005d8: 4a80         tst.l      d0
0005da: 67000076     beq.w      $652
0005de: 723a         moveq      #$3a, d1
0005e0: 200c         move.l     a4, d0
0005e2: 61002bcc     bsr.w      $31b0
0005e6: 2800         move.l     d0, d4
0005e8: 6708         beq.b      $5f2
0005ea: 2004         move.l     d4, d0
0005ec: 5284         addq.l     #$1, d4
0005ee: 908c         sub.l      a4, d0
0005f0: 6006         bra.b      $5f8
0005f2: 200c         move.l     a4, d0
0005f4: 61002aaa     bsr.w      $30a0
0005f8: 2c00         move.l     d0, d6
0005fa: 2f06         move.l     d6, -(a7)
0005fc: 220c         move.l     a4, d1
0005fe: 200b         move.l     a3, d0
000600: 61002b0c     bsr.w      $310e
000604: 588f         addq.l     #$4, a7
000606: 2006         move.l     d6, d0
000608: 5286         addq.l     #$1, d6
00060a: 17bc002f0800 move.b     #$2f, (a3, d0.l)
000610: 42336800     clr.b      (a3, d6.l)
000614: 220a         move.l     a2, d1
000616: 200b         move.l     a3, d0
000618: 61002ac0     bsr.w      $30da
00061c: 306f0106     movea.w    $106(a7), a0
000620: 2208         move.l     a0, d1
000622: 200b         move.l     a3, d0
000624: 61003c32     bsr.w      $4258
000628: 2a00         move.l     d0, d5
00062a: 72ff         moveq      #$ff, d1
00062c: b280         cmp.l      d0, d1
00062e: 6704         beq.b      $634
000630: 5287         addq.l     #$1, d7
000632: 6016         bra.b      $64a
000634: 0cae000000d8800c cmpi.l     #$d8, -$7ff4(a6)
00063c: 6702         beq.b      $640
00063e: 7800         moveq      #$0, d4
000640: 2844         movea.l    d4, a4
000642: 200c         move.l     a4, d0
000644: 6704         beq.b      $64a
000646: 4a87         tst.l      d7
000648: 6794         beq.b      $5de
00064a: 200c         move.l     a4, d0
00064c: 6610         bne.b      $65e
00064e: 4a87         tst.l      d7
000650: 660c         bne.b      $65e
000652: 4213         clr.b      (a3)
000654: 6008         bra.b      $65e
000656: 220a         move.l     a2, d1
000658: 200b         move.l     a3, d0
00065a: 61002a62     bsr.w      $30be
00065e: 2005         move.l     d5, d0
000660: 4fef0100     lea.l      $100(a7), a7
000664: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
00066a: 4e5d         unlk       a5
00066c: 4e75         rts        
00066e: 5041         addq.w     #$8, d1
000670: 5448         addq.w     #$2, a0
000672: 00004e55     ori.b      #$55, d0
000676: 000048e7     ori.b      #$e7, d0
00067a: c0c0         mulu.w     d0, d0
00067c: 4fefffe6     lea.l      -$1a(a7), a7
000680: 486f0008     pea.l      $8(a7)
000684: 486f0010     pea.l      $10(a7)
000688: 486f0016     pea.l      $16(a7)
00068c: 41ef001e     lea.l      $1e(a7), a0
000690: 2208         move.l     a0, d1
000692: 7000         moveq      #$0, d0
000694: 61003c86     bsr.w      $431c
000698: 4fef000c     lea.l      $c(a7), a7
00069c: 72ff         moveq      #$ff, d1
00069e: b280         cmp.l      d0, d1
0006a0: 671e         beq.b      $6c0
0006a2: 2f6f00120004 move.l     $12(a7), $4(a7)
0006a8: 2eaf000e     move.l     $e(a7), (a7)
0006ac: 41d7         lea.l      (a7), a0
0006ae: 2208         move.l     a0, d1
0006b0: 41ef0004     lea.l      $4(a7), a0
0006b4: 2008         move.l     a0, d0
0006b6: 61003c9c     bsr.w      $4354
0006ba: 72ff         moveq      #$ff, d1
0006bc: b280         cmp.l      d0, d1
0006be: 6606         bne.b      $6c6
0006c0: 70ff         moveq      #$ff, d0
0006c2: 6000008a     bra.w      $74e
0006c6: 4aae8034     tst.l      -$7fcc(a6)
0006ca: 6608         bne.b      $6d4
0006cc: 6100050e     bsr.w      $bdc
0006d0: 2d408034     move.l     d0, -$7fcc(a6)
0006d4: 206e8034     movea.l    -$7fcc(a6), a0
0006d8: 20280004     move.l     $4(a0), d0
0006dc: 723c         moveq      #$3c, d1
0006de: 610034b4     bsr.w      $3b94
0006e2: d1af0004     add.l      d0, $4(a7)
0006e6: 326f0012     movea.w    $12(a7), a1
0006ea: 2f09         move.l     a1, -(a7)
0006ec: 326f0010     movea.w    $10(a7), a1
0006f0: 2f09         move.l     a1, -(a7)
0006f2: 7000         moveq      #$0, d0
0006f4: 102f0019     move.b     $19(a7), d0
0006f8: 2f00         move.l     d0, -(a7)
0006fa: 7000         moveq      #$0, d0
0006fc: 102f001c     move.b     $1c(a7), d0
000700: 5340         subq.w     #$1, d0
000702: 48c0         ext.l      d0
000704: 2200         move.l     d0, d1
000706: 326f001a     movea.w    $1a(a7), a1
00070a: 2009         move.l     a1, d0
00070c: 22680008     movea.l    $8(a0), a1
000710: 4e91         jsr        (a1)
000712: 4fef000c     lea.l      $c(a7), a7
000716: 4a80         tst.l      d0
000718: 6708         beq.b      $722
00071a: 04af00000e100004 subi.l     #$e10, $4(a7)
000722: 203cffdac275 move.l     #$ffdac275, d0
000728: d097         add.l      (a7), d0
00072a: 223c00015180 move.l     #$15180, d1
000730: 61003462     bsr.w      $3b94
000734: d0af0004     add.l      $4(a7), d0
000738: 2f400016     move.l     d0, $16(a7)
00073c: 4aaf001a     tst.l      $1a(a7)
000740: 6708         beq.b      $74a
000742: 206f001a     movea.l    $1a(a7), a0
000746: 20af0016     move.l     $16(a7), (a0)
00074a: 202f0016     move.l     $16(a7), d0
00074e: 4fef001a     lea.l      $1a(a7), a7
000752: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
000758: 4e5d         unlk       a5
00075a: 4e75         rts        
00075c: 4e550000     link.w     a5, #$0
000760: 48e7e8e0     movem.l    d0-d2/d4/a0-a2, -(a7)
000764: 2440         movea.l    d0, a2
000766: 518f         subq.l     #$8, a7
000768: 200a         move.l     a2, d0
00076a: 61000102     bsr.w      $86e
00076e: 7003         moveq      #$3, d0
000770: b0aa0014     cmp.l      $14(a2), d0
000774: 6e64         bgt.b      $7da
000776: 0caa000000890014 cmpi.l     #$89, $14(a2)
00077e: 6e5a         bgt.b      $7da
000780: 2f2a000c     move.l     $c(a2), -(a7)
000784: 222a0010     move.l     $10(a2), d1
000788: 202a0014     move.l     $14(a2), d0
00078c: 6100024e     bsr.w      $9dc
000790: 588f         addq.l     #$4, a7
000792: 2540001c     move.l     d0, $1c(a2)
000796: 202a0008     move.l     $8(a2), d0
00079a: 7210         moveq      #$10, d1
00079c: e3a8         lsl.l      d1, d0
00079e: 242a0004     move.l     $4(a2), d2
0007a2: e18a         lsl.l      #$8, d2
0007a4: 8082         or.l       d2, d0
0007a6: 8092         or.l       (a2), d0
0007a8: 2f400004     move.l     d0, $4(a7)
0007ac: 203c0000076c move.l     #$76c, d0
0007b2: d0aa0014     add.l      $14(a2), d0
0007b6: e3a8         lsl.l      d1, d0
0007b8: 242a0010     move.l     $10(a2), d2
0007bc: 5282         addq.l     #$1, d2
0007be: e18a         lsl.l      #$8, d2
0007c0: 8082         or.l       d2, d0
0007c2: 80aa000c     or.l       $c(a2), d0
0007c6: 2e80         move.l     d0, (a7)
0007c8: 41d7         lea.l      (a7), a0
0007ca: 2208         move.l     a0, d1
0007cc: 41ef0004     lea.l      $4(a7), a0
0007d0: 2008         move.l     a0, d0
0007d2: 61003b80     bsr.w      $4354
0007d6: 4a80         tst.l      d0
0007d8: 6c06         bge.b      $7e0
0007da: 70ff         moveq      #$ff, d0
0007dc: 60000084     bra.w      $862
0007e0: 2017         move.l     (a7), d0
0007e2: 5480         addq.l     #$2, d0
0007e4: 7207         moveq      #$7, d1
0007e6: 6100340e     bsr.w      $3bf6
0007ea: 25400018     move.l     d0, $18(a2)
0007ee: 4aae8034     tst.l      -$7fcc(a6)
0007f2: 6608         bne.b      $7fc
0007f4: 610003e6     bsr.w      $bdc
0007f8: 2d408034     move.l     d0, -$7fcc(a6)
0007fc: 206e8034     movea.l    -$7fcc(a6), a0
000800: 20280004     move.l     $4(a0), d0
000804: 723c         moveq      #$3c, d1
000806: 6100338c     bsr.w      $3b94
00080a: d1af0004     add.l      d0, $4(a7)
00080e: 2f2a0008     move.l     $8(a2), -(a7)
000812: 2f2a0018     move.l     $18(a2), -(a7)
000816: 2f2a000c     move.l     $c(a2), -(a7)
00081a: 222a0010     move.l     $10(a2), d1
00081e: 203c0000076c move.l     #$76c, d0
000824: d0aa0014     add.l      $14(a2), d0
000828: 22680008     movea.l    $8(a0), a1
00082c: 4e91         jsr        (a1)
00082e: 4fef000c     lea.l      $c(a7), a7
000832: 4a80         tst.l      d0
000834: 6712         beq.b      $848
000836: 04af00000e100004 subi.l     #$e10, $4(a7)
00083e: 257c000000010020 move.l     #$1, $20(a2)
000846: 6004         bra.b      $84c
000848: 42aa0020     clr.l      $20(a2)
00084c: 203cffdac275 move.l     #$ffdac275, d0
000852: d097         add.l      (a7), d0
000854: 223c00015180 move.l     #$15180, d1
00085a: 61003338     bsr.w      $3b94
00085e: d0af0004     add.l      $4(a7), d0
000862: 508f         addq.l     #$8, a7
000864: 4ced0716ffe8 movem.l    -$18(a5), d1-d2/d4/a0-a2
00086a: 4e5d         unlk       a5
00086c: 4e75         rts        
00086e: 4e550000     link.w     a5, #$0
000872: 48e7cea0     movem.l    d0-d1/d4-d6/a0/a2, -(a7)
000876: 2440         movea.l    d0, a2
000878: 723c         moveq      #$3c, d1
00087a: 200a         move.l     a2, d0
00087c: 61000120     bsr.w      $99e
000880: d1aa0004     add.l      d0, $4(a2)
000884: 723c         moveq      #$3c, d1
000886: 200a         move.l     a2, d0
000888: 5880         addq.l     #$4, d0
00088a: 61000112     bsr.w      $99e
00088e: d1aa0008     add.l      d0, $8(a2)
000892: 7218         moveq      #$18, d1
000894: 200a         move.l     a2, d0
000896: 5080         addq.l     #$8, d0
000898: 61000104     bsr.w      $99e
00089c: 2a00         move.l     d0, d5
00089e: d1aa001c     add.l      d0, $1c(a2)
0008a2: dbaa000c     add.l      d5, $c(a2)
0008a6: 4a85         tst.l      d5
0008a8: 6c10         bge.b      $8ba
0008aa: 2005         move.l     d5, d0
0008ac: 4480         neg.l      d0
0008ae: 7207         moveq      #$7, d1
0008b0: 61003344     bsr.w      $3bf6
0008b4: 7207         moveq      #$7, d1
0008b6: 9280         sub.l      d0, d1
0008b8: 2a01         move.l     d1, d5
0008ba: 202a0018     move.l     $18(a2), d0
0008be: d085         add.l      d5, d0
0008c0: 7207         moveq      #$7, d1
0008c2: 61003332     bsr.w      $3bf6
0008c6: 25400018     move.l     d0, $18(a2)
0008ca: 720c         moveq      #$c, d1
0008cc: 7010         moveq      #$10, d0
0008ce: d08a         add.l      a2, d0
0008d0: 610000cc     bsr.w      $99e
0008d4: d1aa0014     add.l      d0, $14(a2)
0008d8: 7c00         moveq      #$0, d6
0008da: 7003         moveq      #$3, d0
0008dc: c0aa0014     and.l      $14(a2), d0
0008e0: 663e         bne.b      $920
0008e2: 701d         moveq      #$1d, d0
0008e4: 6036         bra.b      $91c
0008e6: 202a0010     move.l     $10(a2), d0
0008ea: e588         lsl.l      #$2, d0
0008ec: 41ee833c     lea.l      -$7cc4(a6), a0
0008f0: 20300800     move.l     (a0, d0.l), d0
0008f4: 91aa000c     sub.l      d0, $c(a2)
0008f8: 52aa0010     addq.l     #$1, $10(a2)
0008fc: 700b         moveq      #$b, d0
0008fe: b0aa0010     cmp.l      $10(a2), d0
000902: 6c1c         bge.b      $920
000904: 7c01         moveq      #$1, d6
000906: 42aa0010     clr.l      $10(a2)
00090a: 52aa0014     addq.l     #$1, $14(a2)
00090e: 7003         moveq      #$3, d0
000910: c0aa0014     and.l      $14(a2), d0
000914: 6604         bne.b      $91a
000916: 701d         moveq      #$1d, d0
000918: 6002         bra.b      $91c
00091a: 701c         moveq      #$1c, d0
00091c: 2d408340     move.l     d0, -$7cc0(a6)
000920: 202a0010     move.l     $10(a2), d0
000924: e588         lsl.l      #$2, d0
000926: 41ee833c     lea.l      -$7cc4(a6), a0
00092a: 222a000c     move.l     $c(a2), d1
00092e: b2b00800     cmp.l      (a0, d0.l), d1
000932: 6eb2         bgt.b      $8e6
000934: 6038         bra.b      $96e
000936: 53aa0010     subq.l     #$1, $10(a2)
00093a: 6c20         bge.b      $95c
00093c: 7c01         moveq      #$1, d6
00093e: 257c0000000b0010 move.l     #$b, $10(a2)
000946: 53aa0014     subq.l     #$1, $14(a2)
00094a: 7003         moveq      #$3, d0
00094c: c0aa0014     and.l      $14(a2), d0
000950: 6604         bne.b      $956
000952: 701d         moveq      #$1d, d0
000954: 6002         bra.b      $958
000956: 701c         moveq      #$1c, d0
000958: 2d408340     move.l     d0, -$7cc0(a6)
00095c: 202a0010     move.l     $10(a2), d0
000960: e588         lsl.l      #$2, d0
000962: 41ee833c     lea.l      -$7cc4(a6), a0
000966: 20300800     move.l     (a0, d0.l), d0
00096a: d1aa000c     add.l      d0, $c(a2)
00096e: 7001         moveq      #$1, d0
000970: b0aa000c     cmp.l      $c(a2), d0
000974: 6ec0         bgt.b      $936
000976: 4a86         tst.l      d6
000978: 6714         beq.b      $98e
00097a: 2f2a000c     move.l     $c(a2), -(a7)
00097e: 222a0010     move.l     $10(a2), d1
000982: 202a0014     move.l     $14(a2), d0
000986: 6154         bsr.b      $9dc
000988: 588f         addq.l     #$4, a7
00098a: 2540001c     move.l     d0, $1c(a2)
00098e: 701c         moveq      #$1c, d0
000990: 2d408340     move.l     d0, -$7cc0(a6)
000994: 4ced0572ffe8 movem.l    -$18(a5), d1/d4-d6/a0/a2
00099a: 4e5d         unlk       a5
00099c: 4e75         rts        
00099e: 4e550000     link.w     a5, #$0
0009a2: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
0009a6: 7800         moveq      #$0, d4
0009a8: 600a         bra.b      $9b4
0009aa: 5284         addq.l     #$1, d4
0009ac: 202f0004     move.l     $4(a7), d0
0009b0: 2057         movea.l    (a7), a0
0009b2: 9190         sub.l      d0, (a0)
0009b4: 2057         movea.l    (a7), a0
0009b6: 202f0004     move.l     $4(a7), d0
0009ba: b090         cmp.l      (a0), d0
0009bc: 6fec         ble.b      $9aa
0009be: 600a         bra.b      $9ca
0009c0: 5384         subq.l     #$1, d4
0009c2: 202f0004     move.l     $4(a7), d0
0009c6: 2057         movea.l    (a7), a0
0009c8: d190         add.l      d0, (a0)
0009ca: 2057         movea.l    (a7), a0
0009cc: 4a90         tst.l      (a0)
0009ce: 6df0         blt.b      $9c0
0009d0: 2004         move.l     d4, d0
0009d2: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0009d8: 4e5d         unlk       a5
0009da: 4e75         rts        
0009dc: 4e550000     link.w     a5, #$0
0009e0: 48e7cf80     movem.l    d0-d1/d4-d7/a0, -(a7)
0009e4: 2800         move.l     d0, d4
0009e6: 2a01         move.l     d1, d5
0009e8: 2c2f0024     move.l     $24(a7), d6
0009ec: 7003         moveq      #$3, d0
0009ee: c084         and.l      d4, d0
0009f0: 6606         bne.b      $9f8
0009f2: 701d         moveq      #$1d, d0
0009f4: 2d408340     move.l     d0, -$7cc0(a6)
0009f8: 2006         move.l     d6, d0
0009fa: 5380         subq.l     #$1, d0
0009fc: 2e00         move.l     d0, d7
0009fe: 600c         bra.b      $a0c
000a00: 2005         move.l     d5, d0
000a02: e588         lsl.l      #$2, d0
000a04: 41ee833c     lea.l      -$7cc4(a6), a0
000a08: deb00800     add.l      (a0, d0.l), d7
000a0c: 5385         subq.l     #$1, d5
000a0e: 6ef0         bgt.b      $a00
000a10: 701c         moveq      #$1c, d0
000a12: 2d408340     move.l     d0, -$7cc0(a6)
000a16: 2007         move.l     d7, d0
000a18: 4ced01f0ffec movem.l    -$14(a5), d4-d7/a0
000a1e: 4e5d         unlk       a5
000a20: 4e75         rts        
000a22: 4e550000     link.w     a5, #$0
000a26: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000a2a: 4a97         tst.l      (a7)
000a2c: 6604         bne.b      $a32
000a2e: 7000         moveq      #$0, d0
000a30: 6066         bra.b      $a98
000a32: 2017         move.l     (a7), d0
000a34: 616c         bsr.b      $aa2
000a36: 2440         movea.l    d0, a2
000a38: 4aae8034     tst.l      -$7fcc(a6)
000a3c: 6608         bne.b      $a46
000a3e: 6100019c     bsr.w      $bdc
000a42: 2d408034     move.l     d0, -$7fcc(a6)
000a46: 206e8034     movea.l    -$7fcc(a6), a0
000a4a: 20280004     move.l     $4(a0), d0
000a4e: 91aa0004     sub.l      d0, $4(a2)
000a52: 200a         move.l     a2, d0
000a54: 6100fe18     bsr.w      $86e
000a58: 2f2a0008     move.l     $8(a2), -(a7)
000a5c: 2f2a0018     move.l     $18(a2), -(a7)
000a60: 2f2a000c     move.l     $c(a2), -(a7)
000a64: 222a0010     move.l     $10(a2), d1
000a68: 203c0000076c move.l     #$76c, d0
000a6e: d0aa0014     add.l      $14(a2), d0
000a72: 206e8034     movea.l    -$7fcc(a6), a0
000a76: 20680008     movea.l    $8(a0), a0
000a7a: 4e90         jsr        (a0)
000a7c: 4fef000c     lea.l      $c(a7), a7
000a80: 4a80         tst.l      d0
000a82: 6712         beq.b      $a96
000a84: 52aa0008     addq.l     #$1, $8(a2)
000a88: 200a         move.l     a2, d0
000a8a: 6100fde2     bsr.w      $86e
000a8e: 257c000000010020 move.l     #$1, $20(a2)
000a96: 200a         move.l     a2, d0
000a98: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
000a9e: 4e5d         unlk       a5
000aa0: 4e75         rts        
000aa2: 4e550000     link.w     a5, #$0
000aa6: 48e7cf80     movem.l    d0-d1/d4-d7/a0, -(a7)
000aaa: 598f         subq.l     #$4, a7
000aac: 4aaf0004     tst.l      $4(a7)
000ab0: 6606         bne.b      $ab8
000ab2: 7000         moveq      #$0, d0
000ab4: 6000011a     bra.w      $bd0
000ab8: 206f0004     movea.l    $4(a7), a0
000abc: 2810         move.l     (a0), d4
000abe: 2004         move.l     d4, d0
000ac0: 223c00015180 move.l     #$15180, d1
000ac6: 61003104     bsr.w      $3bcc
000aca: 068000253d8b addi.l     #$253d8b, d0
000ad0: 2e80         move.l     d0, (a7)
000ad2: 2017         move.l     (a7), d0
000ad4: 5480         addq.l     #$2, d0
000ad6: 7207         moveq      #$7, d1
000ad8: 6100311c     bsr.w      $3bf6
000adc: 2d408050     move.l     d0, -$7fb0(a6)
000ae0: 2a3c000007b2 move.l     #$7b2, d5
000ae6: 6004         bra.b      $aec
000ae8: 9886         sub.l      d6, d4
000aea: 5285         addq.l     #$1, d5
000aec: 7003         moveq      #$3, d0
000aee: c085         and.l      d5, d0
000af0: 6608         bne.b      $afa
000af2: 203c01e28500 move.l     #$1e28500, d0
000af8: 6006         bra.b      $b00
000afa: 203c01e13380 move.l     #$1e13380, d0
000b00: 2c00         move.l     d0, d6
000b02: b084         cmp.l      d4, d0
000b04: 6fe2         ble.b      $ae8
000b06: 6018         bra.b      $b20
000b08: 5385         subq.l     #$1, d5
000b0a: 7003         moveq      #$3, d0
000b0c: c085         and.l      d5, d0
000b0e: 6608         bne.b      $b18
000b10: 203c01e28500 move.l     #$1e28500, d0
000b16: 6006         bra.b      $b1e
000b18: 203c01e13380 move.l     #$1e13380, d0
000b1e: d880         add.l      d0, d4
000b20: 4a84         tst.l      d4
000b22: 6de4         blt.b      $b08
000b24: 203cfffff894 move.l     #$fffff894, d0
000b2a: d085         add.l      d5, d0
000b2c: 2d40804c     move.l     d0, -$7fb4(a6)
000b30: 2004         move.l     d4, d0
000b32: 223c00015180 move.l     #$15180, d1
000b38: 61003092     bsr.w      $3bcc
000b3c: 2d408054     move.l     d0, -$7fac(a6)
000b40: 223c00015180 move.l     #$15180, d1
000b46: 2004         move.l     d4, d0
000b48: 610030ac     bsr.w      $3bf6
000b4c: 2800         move.l     d0, d4
000b4e: 2004         move.l     d4, d0
000b50: 223c00000e10 move.l     #$e10, d1
000b56: 61003074     bsr.w      $3bcc
000b5a: 2d408040     move.l     d0, -$7fc0(a6)
000b5e: 223c00000e10 move.l     #$e10, d1
000b64: 2004         move.l     d4, d0
000b66: 6100308e     bsr.w      $3bf6
000b6a: 2800         move.l     d0, d4
000b6c: 2004         move.l     d4, d0
000b6e: 723c         moveq      #$3c, d1
000b70: 6100305a     bsr.w      $3bcc
000b74: 2d40803c     move.l     d0, -$7fc4(a6)
000b78: 2004         move.l     d4, d0
000b7a: 723c         moveq      #$3c, d1
000b7c: 61003078     bsr.w      $3bf6
000b80: 2d408038     move.l     d0, -$7fc8(a6)
000b84: 42ae8058     clr.l      -$7fa8(a6)
000b88: 7003         moveq      #$3, d0
000b8a: c085         and.l      d5, d0
000b8c: 6606         bne.b      $b94
000b8e: 701d         moveq      #$1d, d0
000b90: 2d408340     move.l     d0, -$7cc0(a6)
000b94: 282e8054     move.l     -$7fac(a6), d4
000b98: 7e00         moveq      #$0, d7
000b9a: 600e         bra.b      $baa
000b9c: 2007         move.l     d7, d0
000b9e: e588         lsl.l      #$2, d0
000ba0: 41ee833c     lea.l      -$7cc4(a6), a0
000ba4: 98b00800     sub.l      (a0, d0.l), d4
000ba8: 5287         addq.l     #$1, d7
000baa: 2007         move.l     d7, d0
000bac: e588         lsl.l      #$2, d0
000bae: 41ee833c     lea.l      -$7cc4(a6), a0
000bb2: b8b00800     cmp.l      (a0, d0.l), d4
000bb6: 6ce4         bge.b      $b9c
000bb8: 2d478048     move.l     d7, -$7fb8(a6)
000bbc: 2004         move.l     d4, d0
000bbe: 5280         addq.l     #$1, d0
000bc0: 2d408044     move.l     d0, -$7fbc(a6)
000bc4: 701c         moveq      #$1c, d0
000bc6: 2d408340     move.l     d0, -$7cc0(a6)
000bca: 41ee8038     lea.l      -$7fc8(a6), a0
000bce: 2008         move.l     a0, d0
000bd0: 588f         addq.l     #$4, a7
000bd2: 4ced01f2ffe8 movem.l    -$18(a5), d1/d4-d7/a0
000bd8: 4e5d         unlk       a5
000bda: 4e75         rts        
000bdc: 4e550000     link.w     a5, #$0
000be0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000be4: 4fefffe4     lea.l      -$1c(a7), a7
000be8: 41fa040a     lea.l      $ff4(pc), a0
000bec: 2008         move.l     a0, d0
000bee: 61000518     bsr.w      $1108
000bf2: 2f400018     move.l     d0, $18(a7)
000bf6: 4aaf0018     tst.l      $18(a7)
000bfa: 6700015e     beq.w      $d5a
000bfe: 41ef0004     lea.l      $4(a7), a0
000c02: 2f480014     move.l     a0, $14(a7)
000c06: 6012         bra.b      $c1a
000c08: 206f0018     movea.l    $18(a7), a0
000c0c: 52af0018     addq.l     #$1, $18(a7)
000c10: 226f0014     movea.l    $14(a7), a1
000c14: 52af0014     addq.l     #$1, $14(a7)
000c18: 1290         move.b     (a0), (a1)
000c1a: 206f0018     movea.l    $18(a7), a0
000c1e: 1010         move.b     (a0), d0
000c20: 4880         ext.w      d0
000c22: 0c40002d     cmpi.w     #$2d, d0
000c26: 6714         beq.b      $c3c
000c28: 620c         bhi.b      $c36
000c2a: 0c00002b     cmpi.b     #$2b, d0
000c2e: 670c         beq.b      $c3c
000c30: 62d6         bhi.b      $c08
000c32: 4a00         tst.b      d0
000c34: 6004         bra.b      $c3a
000c36: 0c40003a     cmpi.w     #$3a, d0
000c3a: 66cc         bne.b      $c08
000c3c: 206f0014     movea.l    $14(a7), a0
000c40: 4210         clr.b      (a0)
000c42: 41ee8370     lea.l      -$7c90(a6), a0
000c46: 2e88         move.l     a0, (a7)
000c48: 6018         bra.b      $c62
000c4a: 2057         movea.l    (a7), a0
000c4c: 2210         move.l     (a0), d1
000c4e: 41ef0004     lea.l      $4(a7), a0
000c52: 2008         move.l     a0, d0
000c54: 610023d6     bsr.w      $302c
000c58: 4a80         tst.l      d0
000c5a: 670c         beq.b      $c68
000c5c: 06970000000c addi.l     #$c, (a7)
000c62: 2057         movea.l    (a7), a0
000c64: 4a90         tst.l      (a0)
000c66: 66e2         bne.b      $c4a
000c68: 2057         movea.l    (a7), a0
000c6a: 4a90         tst.l      (a0)
000c6c: 670000ec     beq.w      $d5a
000c70: 42af000c     clr.l      $c(a7)
000c74: 42af0010     clr.l      $10(a7)
000c78: 605a         bra.b      $cd4
000c7a: 2017         move.l     (a7), d0
000c7c: 6000010c     bra.w      $d8a
000c80: 7001         moveq      #$1, d0
000c82: 2f40000c     move.l     d0, $c(a7)
000c86: 601e         bra.b      $ca6
000c88: 202f0010     move.l     $10(a7), d0
000c8c: 720a         moveq      #$a, d1
000c8e: 61002f04     bsr.w      $3b94
000c92: 206f0018     movea.l    $18(a7), a0
000c96: 1210         move.b     (a0), d1
000c98: 4881         ext.w      d1
000c9a: 04410030     subi.w     #$30, d1
000c9e: 48c1         ext.l      d1
000ca0: d081         add.l      d1, d0
000ca2: 2f400010     move.l     d0, $10(a7)
000ca6: 52af0018     addq.l     #$1, $18(a7)
000caa: 206f0018     movea.l    $18(a7), a0
000cae: 0c100030     cmpi.b     #$30, (a0)
000cb2: 6d0a         blt.b      $cbe
000cb4: 206f0018     movea.l    $18(a7), a0
000cb8: 0c100039     cmpi.b     #$39, (a0)
000cbc: 6fca         ble.b      $c88
000cbe: 4aaf000c     tst.l      $c(a7)
000cc2: 6600009c     bne.w      $d60
000cc6: 202f0010     move.l     $10(a7), d0
000cca: 4480         neg.l      d0
000ccc: 2f400010     move.l     d0, $10(a7)
000cd0: 6000008e     bra.w      $d60
000cd4: 206f0018     movea.l    $18(a7), a0
000cd8: 1010         move.b     (a0), d0
000cda: 4880         ext.w      d0
000cdc: 0c4000ff     cmpi.w     #$ff, d0
000ce0: 6200007e     bhi.w      $d60
000ce4: 4a00         tst.b      d0
000ce6: 6792         beq.b      $c7a
000ce8: 0c00002b     cmpi.b     #$2b, d0
000cec: 67b8         beq.b      $ca6
000cee: 0c00002d     cmpi.b     #$2d, d0
000cf2: 678c         beq.b      $c80
000cf4: 606a         bra.b      $d60
000cf6: 2057         movea.l    (a7), a0
000cf8: 2d6800088064 move.l     $8(a0), -$7f9c(a6)
000cfe: 60000076     bra.w      $d76
000d02: 52af0018     addq.l     #$1, $18(a7)
000d06: 41fa02ef     lea.l      $ff7(pc), a0
000d0a: 2208         move.l     a0, d1
000d0c: 202f0018     move.l     $18(a7), d0
000d10: 6100231a     bsr.w      $302c
000d14: 4a80         tst.l      d0
000d16: 660a         bne.b      $d22
000d18: 41fa009e     lea.l      $db8(pc), a0
000d1c: 2d488064     move.l     a0, -$7f9c(a6)
000d20: 6054         bra.b      $d76
000d22: 41fa02d7     lea.l      $ffb(pc), a0
000d26: 2208         move.l     a0, d1
000d28: 202f0018     move.l     $18(a7), d0
000d2c: 610022fe     bsr.w      $302c
000d30: 4a80         tst.l      d0
000d32: 660a         bne.b      $d3e
000d34: 41fa0186     lea.l      $ebc(pc), a0
000d38: 2d488064     move.l     a0, -$7f9c(a6)
000d3c: 6038         bra.b      $d76
000d3e: 41fa02bf     lea.l      $fff(pc), a0
000d42: 2208         move.l     a0, d1
000d44: 202f0018     move.l     $18(a7), d0
000d48: 610022e2     bsr.w      $302c
000d4c: 4a80         tst.l      d0
000d4e: 660a         bne.b      $d5a
000d50: 41fa0046     lea.l      $d98(pc), a0
000d54: 2d488064     move.l     a0, -$7f9c(a6)
000d58: 601c         bra.b      $d76
000d5a: 202e8430     move.l     -$7bd0(a6), d0
000d5e: 602a         bra.b      $d8a
000d60: 206f0018     movea.l    $18(a7), a0
000d64: 1010         move.b     (a0), d0
000d66: 4880         ext.w      d0
000d68: 4a40         tst.w      d0
000d6a: 6700ff8a     beq.w      $cf6
000d6e: 0c40003a     cmpi.w     #$3a, d0
000d72: 678e         beq.b      $d02
000d74: 60e4         bra.b      $d5a
000d76: 2057         movea.l    (a7), a0
000d78: 20280004     move.l     $4(a0), d0
000d7c: d0af0010     add.l      $10(a7), d0
000d80: 2d408060     move.l     d0, -$7fa0(a6)
000d84: 41ee805c     lea.l      -$7fa4(a6), a0
000d88: 2008         move.l     a0, d0
000d8a: 4fef001c     lea.l      $1c(a7), a7
000d8e: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
000d94: 4e5d         unlk       a5
000d96: 4e75         rts        
000d98: 4e550000     link.w     a5, #$0
000d9c: 48e7cf00     movem.l    d0-d1/d4-d7, -(a7)
000da0: 2800         move.l     d0, d4
000da2: 2a01         move.l     d1, d5
000da4: 2c2f0020     move.l     $20(a7), d6
000da8: 2e2f0024     move.l     $24(a7), d7
000dac: 7000         moveq      #$0, d0
000dae: 4ced00f0fff0 movem.l    -$10(a5), d4-d7
000db4: 4e5d         unlk       a5
000db6: 4e75         rts        
000db8: 4e550000     link.w     a5, #$0
000dbc: 48e7cf80     movem.l    d0-d1/d4-d7/a0, -(a7)
000dc0: 2800         move.l     d0, d4
000dc2: 2a01         move.l     d1, d5
000dc4: 2c2f0024     move.l     $24(a7), d6
000dc8: 2e2f0028     move.l     $28(a7), d7
000dcc: 4fefffec     lea.l      -$14(a7), a7
000dd0: 0c84000007af cmpi.l     #$7af, d4
000dd6: 6d0000d0     blt.w      $ea8
000dda: 0c84000007b6 cmpi.l     #$7b6, d4
000de0: 6708         beq.b      $dea
000de2: 0c84000007b7 cmpi.l     #$7b7, d4
000de8: 662a         bne.b      $e14
000dea: 203cfffff84a move.l     #$fffff84a, d0
000df0: d084         add.l      d4, d0
000df2: e788         lsl.l      #$3, d0
000df4: 41ee8434     lea.l      -$7bcc(a6), a0
000df8: 2f700804000c move.l     $4(a0, d0.l), $c(a7)
000dfe: 203cfffff84a move.l     #$fffff84a, d0
000e04: d084         add.l      d4, d0
000e06: e788         lsl.l      #$3, d0
000e08: 41ee8434     lea.l      -$7bcc(a6), a0
000e0c: 2f7008000010 move.l     (a0, d0.l), $10(a7)
000e12: 601a         bra.b      $e2e
000e14: 0c84000007c3 cmpi.l     #$7c3, d4
000e1a: 6c06         bge.b      $e22
000e1c: 42af000c     clr.l      $c(a7)
000e20: 6006         bra.b      $e28
000e22: 7001         moveq      #$1, d0
000e24: 2f40000c     move.l     d0, $c(a7)
000e28: 7003         moveq      #$3, d0
000e2a: 2f400010     move.l     d0, $10(a7)
000e2e: 42af0004     clr.l      $4(a7)
000e32: 7009         moveq      #$9, d0
000e34: 2f400008     move.l     d0, $8(a7)
000e38: baaf0010     cmp.l      $10(a7), d5
000e3c: 6d00006a     blt.w      $ea8
000e40: baaf0008     cmp.l      $8(a7), d5
000e44: 6e62         bgt.b      $ea8
000e46: baaf0010     cmp.l      $10(a7), d5
000e4a: 662c         bne.b      $e78
000e4c: 2f07         move.l     d7, -(a7)
000e4e: 2f06         move.l     d6, -(a7)
000e50: 2f04         move.l     d4, -(a7)
000e52: 222f001c     move.l     $1c(a7), d1
000e56: 202f0018     move.l     $18(a7), d0
000e5a: 610000ea     bsr.w      $f46
000e5e: 4fef000c     lea.l      $c(a7), a7
000e62: 2e80         move.l     d0, (a7)
000e64: bc97         cmp.l      (a7), d6
000e66: 660a         bne.b      $e72
000e68: 7002         moveq      #$2, d0
000e6a: b0af0040     cmp.l      $40(a7), d0
000e6e: 6e38         bgt.b      $ea8
000e70: 603a         bra.b      $eac
000e72: bc97         cmp.l      (a7), d6
000e74: 6f32         ble.b      $ea8
000e76: 6034         bra.b      $eac
000e78: baaf0008     cmp.l      $8(a7), d5
000e7c: 662e         bne.b      $eac
000e7e: 2f07         move.l     d7, -(a7)
000e80: 2f06         move.l     d6, -(a7)
000e82: 2f04         move.l     d4, -(a7)
000e84: 222f0014     move.l     $14(a7), d1
000e88: 202f0010     move.l     $10(a7), d0
000e8c: 610000b8     bsr.w      $f46
000e90: 4fef000c     lea.l      $c(a7), a7
000e94: 2e80         move.l     d0, (a7)
000e96: bc97         cmp.l      (a7), d6
000e98: 660a         bne.b      $ea4
000e9a: 7002         moveq      #$2, d0
000e9c: b0af0040     cmp.l      $40(a7), d0
000ea0: 6f06         ble.b      $ea8
000ea2: 6008         bra.b      $eac
000ea4: bc97         cmp.l      (a7), d6
000ea6: 6d04         blt.b      $eac
000ea8: 7000         moveq      #$0, d0
000eaa: 6002         bra.b      $eae
000eac: 7001         moveq      #$1, d0
000eae: 4fef0014     lea.l      $14(a7), a7
000eb2: 4ced01f0ffec movem.l    -$14(a5), d4-d7/a0
000eb8: 4e5d         unlk       a5
000eba: 4e75         rts        
000ebc: 4e550000     link.w     a5, #$0
000ec0: 48e7cf00     movem.l    d0-d1/d4-d7, -(a7)
000ec4: 2800         move.l     d0, d4
000ec6: 2a01         move.l     d1, d5
000ec8: 2c2f0020     move.l     $20(a7), d6
000ecc: 2e2f0024     move.l     $24(a7), d7
000ed0: 598f         subq.l     #$4, a7
000ed2: 7002         moveq      #$2, d0
000ed4: b085         cmp.l      d5, d0
000ed6: 6e5c         bgt.b      $f34
000ed8: 7008         moveq      #$8, d0
000eda: b085         cmp.l      d5, d0
000edc: 6d56         blt.b      $f34
000ede: 7002         moveq      #$2, d0
000ee0: b085         cmp.l      d5, d0
000ee2: 6626         bne.b      $f0a
000ee4: 2f07         move.l     d7, -(a7)
000ee6: 2f06         move.l     d6, -(a7)
000ee8: 2f04         move.l     d4, -(a7)
000eea: 7202         moveq      #$2, d1
000eec: 7000         moveq      #$0, d0
000eee: 6156         bsr.b      $f46
000ef0: 4fef000c     lea.l      $c(a7), a7
000ef4: 2e80         move.l     d0, (a7)
000ef6: bc97         cmp.l      (a7), d6
000ef8: 660a         bne.b      $f04
000efa: 7002         moveq      #$2, d0
000efc: b0af002c     cmp.l      $2c(a7), d0
000f00: 6e32         bgt.b      $f34
000f02: 6034         bra.b      $f38
000f04: bc97         cmp.l      (a7), d6
000f06: 6f2c         ble.b      $f34
000f08: 602e         bra.b      $f38
000f0a: 7008         moveq      #$8, d0
000f0c: b085         cmp.l      d5, d0
000f0e: 6628         bne.b      $f38
000f10: 2f07         move.l     d7, -(a7)
000f12: 2f06         move.l     d6, -(a7)
000f14: 2f04         move.l     d4, -(a7)
000f16: 7208         moveq      #$8, d1
000f18: 7000         moveq      #$0, d0
000f1a: 612a         bsr.b      $f46
000f1c: 4fef000c     lea.l      $c(a7), a7
000f20: 2e80         move.l     d0, (a7)
000f22: bc97         cmp.l      (a7), d6
000f24: 660a         bne.b      $f30
000f26: 7002         moveq      #$2, d0
000f28: b0af002c     cmp.l      $2c(a7), d0
000f2c: 6f06         ble.b      $f34
000f2e: 6008         bra.b      $f38
000f30: bc97         cmp.l      (a7), d6
000f32: 6d04         blt.b      $f38
000f34: 7000         moveq      #$0, d0
000f36: 6002         bra.b      $f3a
000f38: 7001         moveq      #$1, d0
000f3a: 588f         addq.l     #$4, a7
000f3c: 4ced00f0fff0 movem.l    -$10(a5), d4-d7
000f42: 4e5d         unlk       a5
000f44: 4e75         rts        
000f46: 4e550000     link.w     a5, #$0
000f4a: 48e7cf80     movem.l    d0-d1/d4-d7/a0, -(a7)
000f4e: 7003         moveq      #$3, d0
000f50: c0af0024     and.l      $24(a7), d0
000f54: 6606         bne.b      $f5c
000f56: 701d         moveq      #$1d, d0
000f58: 2d408340     move.l     d0, -$7cc0(a6)
000f5c: 202f0028     move.l     $28(a7), d0
000f60: 90af002c     sub.l      $2c(a7), d0
000f64: 2a00         move.l     d0, d5
000f66: 7001         moveq      #$1, d0
000f68: b085         cmp.l      d5, d0
000f6a: 6f02         ble.b      $f6e
000f6c: 5e85         addq.l     #$7, d5
000f6e: 2005         move.l     d5, d0
000f70: 5380         subq.l     #$1, d0
000f72: 7207         moveq      #$7, d1
000f74: 61002c56     bsr.w      $3bcc
000f78: 5280         addq.l     #$1, d0
000f7a: 2c00         move.l     d0, d6
000f7c: 4a97         tst.l      (a7)
000f7e: 661a         bne.b      $f9a
000f80: 202f0004     move.l     $4(a7), d0
000f84: e588         lsl.l      #$2, d0
000f86: 41ee833c     lea.l      -$7cc4(a6), a0
000f8a: 2e300800     move.l     (a0, d0.l), d7
000f8e: 6002         bra.b      $f92
000f90: 5e85         addq.l     #$7, d5
000f92: ba87         cmp.l      d7, d5
000f94: 6ffa         ble.b      $f90
000f96: 5f85         subq.l     #$7, d5
000f98: 600c         bra.b      $fa6
000f9a: 2017         move.l     (a7), d0
000f9c: 9086         sub.l      d6, d0
000f9e: 7207         moveq      #$7, d1
000fa0: 61002bf2     bsr.w      $3b94
000fa4: da80         add.l      d0, d5
000fa6: 701c         moveq      #$1c, d0
000fa8: 2d408340     move.l     d0, -$7cc0(a6)
000fac: 2005         move.l     d5, d0
000fae: 4ced01f0ffec movem.l    -$14(a5), d4-d7/a0
000fb4: 4e5d         unlk       a5
000fb6: 4e75         rts        
000fb8: 5053         addq.w     #$8, (a3)
000fba: 5400         addq.b     #$2, d0
000fbc: 5044         addq.w     #$8, d4
000fbe: 5400         addq.b     #$2, d0
000fc0: 4d53         .dc.w      $4d53
000fc2: 5400         addq.b     #$2, d0
000fc4: 4d44         .dc.w      $4d44
000fc6: 5400         addq.b     #$2, d0
000fc8: 4353         .dc.w      $4353
000fca: 5400         addq.b     #$2, d0
000fcc: 4344         .dc.w      $4344
000fce: 5400         addq.b     #$2, d0
000fd0: 4553         .dc.w      $4553
000fd2: 5400         addq.b     #$2, d0
000fd4: 4544         .dc.w      $4544
000fd6: 5400         addq.b     #$2, d0
000fd8: 5953         subq.w     #$4, (a3)
000fda: 5400         addq.b     #$2, d0
000fdc: 4153         .dc.w      $4153
000fde: 5400         addq.b     #$2, d0
000fe0: 5745         subq.w     #$3, d5
000fe2: 5400         addq.b     #$2, d0
000fe4: 4345         .dc.w      $4345
000fe6: 5400         addq.b     #$2, d0
000fe8: 4545         .dc.w      $4545
000fea: 5400         addq.b     #$2, d0
000fec: 474d         .dc.w      $474d
000fee: 5400         addq.b     #$2, d0
000ff0: 5554         subq.w     #$2, (a4)
000ff2: 4300         chk.l      d0, d1
000ff4: 545a         addq.w     #$2, (a2)+
000ff6: 007573610065 ori.w      #$7361, $65(a5, d0.w)
000ffc: 7572         .dc.w      $7572
000ffe: 006e6f004e55 ori.w      #$6f00, $4e55(a6)
001004: 000048e7     ori.b      #$e7, d0
001008: c0c0         mulu.w     d0, d0
00100a: 2057         movea.l    (a7), a0
00100c: 203c0000076c move.l     #$76c, d0
001012: d0a80014     add.l      $14(a0), d0
001016: 2f00         move.l     d0, -(a7)
001018: 2f10         move.l     (a0), -(a7)
00101a: 2f280004     move.l     $4(a0), -(a7)
00101e: 2f280008     move.l     $8(a0), -(a7)
001022: 2f28000c     move.l     $c(a0), -(a7)
001026: 20280010     move.l     $10(a0), d0
00102a: e588         lsl.l      #$2, d0
00102c: 43ee8460     lea.l      -$7ba0(a6), a1
001030: 2f310800     move.l     (a1, d0.l), -(a7)
001034: 20280018     move.l     $18(a0), d0
001038: e588         lsl.l      #$2, d0
00103a: 43ee8444     lea.l      -$7bbc(a6), a1
00103e: 2f310800     move.l     (a1, d0.l), -(a7)
001042: 43fa006e     lea.l      $10b2(pc), a1
001046: 2209         move.l     a1, d1
001048: 43ee8068     lea.l      -$7f98(a6), a1
00104c: 2009         move.l     a1, d0
00104e: 6100072c     bsr.w      $177c
001052: 4fef001c     lea.l      $1c(a7), a7
001056: 41ee8068     lea.l      -$7f98(a6), a0
00105a: 2008         move.l     a0, d0
00105c: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
001062: 4e5d         unlk       a5
001064: 4e75         rts        
001066: 53756e00     subq.w     #$1, (a5, d6.l * 8)
00106a: 4d6f         .dc.w      $4d6f
00106c: 6e005475     bgt.w      $64e3
001070: 65005765     bcs.w      $67d7
001074: 64005468     bcc.w      $64de
001078: 7500         .dc.w      $7500
00107a: 46726900     not.w      (a2, d6.l)
00107e: 5361         subq.w     #$1, -(a1)
001080: 7400         moveq      #$0, d2
001082: 4a61         tst.w      -(a1)
001084: 6e004665     bgt.w      $56eb
001088: 62004d61     bhi.w      $5deb
00108c: 7200         moveq      #$0, d1
00108e: 4170         .dc.w      $4170
001090: 7200         moveq      #$0, d1
001092: 4d61         .dc.w      $4d61
001094: 7900         .dc.w      $7900
001096: 4a756e00     tst.w      (a5, d6.l * 8)
00109a: 4a756c00     tst.w      (a5, d6.l * 4)
00109e: 4175         .dc.w      $4175
0010a0: 67005365     beq.w      $6407
0010a4: 7000         moveq      #$0, d0
0010a6: 4f63         .dc.w      $4f63
0010a8: 7400         moveq      #$0, d2
0010aa: 4e6f         move       usp, a7
0010ac: 7600         moveq      #$0, d3
0010ae: 4465         neg.w      -(a5)
0010b0: 63002533     bls.w      $35e5
0010b4: 7320         .dc.w      $7320
0010b6: 253373202532 move.l     $2532(a3, d7.w * 2), -(a2)
0010bc: 6420         bcc.b      $10de
0010be: 25303264     move.l     $64(a0, d3.w), -(a2)
0010c2: 3a25         move.w     -(a5), d5
0010c4: 3032643a     move.w     $3a(a2, d6.w), d0
0010c8: 25303264     move.l     $64(a0, d3.w), -(a2)
0010cc: 2025         move.l     -(a5), d0
0010ce: 3464         movea.w    -(a4), a2
0010d0: 0d00         btst.l     d6, d0
0010d2: 4e550000     link.w     a5, #$0
0010d6: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
0010da: 2440         movea.l    d0, a2
0010dc: 2641         movea.l    d1, a3
0010de: 6006         bra.b      $10e6
0010e0: 0c1a003d     cmpi.b     #$3d, (a2)+
0010e4: 6712         beq.b      $10f8
0010e6: 1012         move.b     (a2), d0
0010e8: b01b         cmp.b      (a3)+, d0
0010ea: 67f4         beq.b      $10e0
0010ec: 4a12         tst.b      (a2)
0010ee: 660c         bne.b      $10fc
0010f0: 0c2b003dffff cmpi.b     #$3d, -$1(a3)
0010f6: 6604         bne.b      $10fc
0010f8: 200b         move.l     a3, d0
0010fa: 6002         bra.b      $10fe
0010fc: 7000         moveq      #$0, d0
0010fe: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
001104: 4e5d         unlk       a5
001106: 4e75         rts        
001108: 4e550000     link.w     a5, #$0
00110c: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
001110: 2440         movea.l    d0, a2
001112: 266e8028     movea.l    -$7fd8(a6), a3
001116: 6010         bra.b      $1128
001118: 221b         move.l     (a3)+, d1
00111a: 200a         move.l     a2, d0
00111c: 61b4         bsr.b      $10d2
00111e: 2840         movea.l    d0, a4
001120: 4a80         tst.l      d0
001122: 6704         beq.b      $1128
001124: 200c         move.l     a4, d0
001126: 6006         bra.b      $112e
001128: 4a93         tst.l      (a3)
00112a: 66ec         bne.b      $1118
00112c: 7000         moveq      #$0, d0
00112e: 4ced1c02fff0 movem.l    -$10(a5), d1/a2-a4
001134: 4e5d         unlk       a5
001136: 4e75         rts        
001138: 4e550000     link.w     a5, #$0
00113c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001140: 701c         moveq      #$1c, d0
001142: d0ae8018     add.l      -$7fe8(a6), d0
001146: 61001c42     bsr.w      $2d8a
00114a: 6148         bsr.b      $1194
00114c: 2f00         move.l     d0, -(a7)
00114e: 41fa0054     lea.l      $11a4(pc), a0
001152: 2208         move.l     a0, d1
001154: 7038         moveq      #$38, d0
001156: d0ae8018     add.l      -$7fe8(a6), d0
00115a: 610005e4     bsr.w      $1740
00115e: 588f         addq.l     #$4, a7
001160: 2f2f001c     move.l     $1c(a7), -(a7)
001164: 2f2f001c     move.l     $1c(a7), -(a7)
001168: 2f2f001c     move.l     $1c(a7), -(a7)
00116c: 222f0010     move.l     $10(a7), d1
001170: 7038         moveq      #$38, d0
001172: d0ae8018     add.l      -$7fe8(a6), d0
001176: 610005c8     bsr.w      $1740
00117a: 4fef000c     lea.l      $c(a7), a7
00117e: 7038         moveq      #$38, d0
001180: d0ae8018     add.l      -$7fe8(a6), d0
001184: 61001c04     bsr.w      $2d8a
001188: 2017         move.l     (a7), d0
00118a: 4ced0100fffc movem.l    -$4(a5), a0
001190: 4e5d         unlk       a5
001192: 4e75         rts        
001194: 2f08         move.l     a0, -(a7)
001196: 206e801c     movea.l    -$7fe4(a6), a0
00119a: d1e8000c     adda.l     $c(a0), a0
00119e: 2008         move.l     a0, d0
0011a0: 205f         movea.l    (a7)+, a0
0011a2: 4e75         rts        
0011a4: 25733a200000 move.l     $20(a3, d3.l), $0(a2)
0011aa: 4e550000     link.w     a5, #$0
0011ae: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0011b2: 4fefff7c     lea.l      -$84(a7), a7
0011b6: 223c00000081 move.l     #$81, d1
0011bc: 202f0084     move.l     $84(a7), d0
0011c0: 61002cf8     bsr.w      $3eba
0011c4: 2e80         move.l     d0, (a7)
0011c6: 72ff         moveq      #$ff, d1
0011c8: b280         cmp.l      d0, d1
0011ca: 6716         beq.b      $11e2
0011cc: 203c0000010c move.l     #$10c, d0
0011d2: 610022fa     bsr.w      $34ce
0011d6: 2440         movea.l    d0, a2
0011d8: 4a80         tst.l      d0
0011da: 660a         bne.b      $11e6
0011dc: 2017         move.l     (a7), d0
0011de: 61002cf0     bsr.w      $3ed0
0011e2: 7000         moveq      #$0, d0
0011e4: 601c         bra.b      $1202
0011e6: 2497         move.l     (a7), (a2)
0011e8: 41ef0004     lea.l      $4(a7), a0
0011ec: 2208         move.l     a0, d1
0011ee: 2012         move.l     (a2), d0
0011f0: 61002b1e     bsr.w      $3d10
0011f4: 102f0004     move.b     $4(a7), d0
0011f8: 4880         ext.w      d0
0011fa: 48c0         ext.l      d0
0011fc: 25400004     move.l     d0, $4(a2)
001200: 200a         move.l     a2, d0
001202: 4fef0084     lea.l      $84(a7), a7
001206: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
00120c: 4e5d         unlk       a5
00120e: 4e75         rts        
001210: 4e550000     link.w     a5, #$0
001214: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001218: 2440         movea.l    d0, a2
00121a: 4fefffbe     lea.l      -$42(a7), a7
00121e: 7005         moveq      #$5, d0
001220: b0aa0004     cmp.l      $4(a2), d0
001224: 66000098     bne.w      $12be
001228: 48780021     pea.l      $21.w
00122c: 41ef0024     lea.l      $24(a7), a0
001230: 2208         move.l     a0, d1
001232: 2012         move.l     (a2), d0
001234: 61002d7e     bsr.w      $3fb4
001238: 588f         addq.l     #$4, a7
00123a: 4a80         tst.l      d0
00123c: 6f0000a2     ble.w      $12e0
001240: 700c         moveq      #$c, d0
001242: d08a         add.l      a2, d0
001244: 2640         movea.l    d0, a3
001246: 26af0026     move.l     $26(a7), (a3)
00124a: 7000         moveq      #$0, d0
00124c: 102f0040     move.b     $40(a7), d0
001250: 2f00         move.l     d0, -(a7)
001252: 200b         move.l     a3, d0
001254: 5080         addq.l     #$8, d0
001256: 2200         move.l     d0, d1
001258: 2012         move.l     (a2), d0
00125a: 61002d58     bsr.w      $3fb4
00125e: 588f         addq.l     #$4, a7
001260: 4a80         tst.l      d0
001262: 6e26         bgt.b      $128a
001264: 6000007a     bra.w      $12e0
001268: 702e         moveq      #$2e, d0
00126a: 17400009     move.b     d0, $9(a3)
00126e: 17400008     move.b     d0, $8(a3)
001272: 422b000a     clr.b      $a(a3)
001276: 6024         bra.b      $129c
001278: 177c002e0008 move.b     #$2e, $8(a3)
00127e: 7000         moveq      #$0, d0
001280: 102f0040     move.b     $40(a7), d0
001284: 42330808     clr.b      $8(a3, d0.l)
001288: 6012         bra.b      $129c
00128a: 102b0008     move.b     $8(a3), d0
00128e: 4880         ext.w      d0
001290: 4a40         tst.w      d0
001292: 67e4         beq.b      $1278
001294: 0c400001     cmpi.w     #$1, d0
001298: 67ce         beq.b      $1268
00129a: 60e2         bra.b      $127e
00129c: 48780001     pea.l      $1.w
0012a0: 7000         moveq      #$0, d0
0012a2: 102f0044     move.b     $44(a7), d0
0012a6: 7200         moveq      #$0, d1
0012a8: 122f0024     move.b     $24(a7), d1
0012ac: 9240         sub.w      d0, d1
0012ae: 48c1         ext.l      d1
0012b0: 7021         moveq      #$21, d0
0012b2: 9280         sub.l      d0, d1
0012b4: 2012         move.l     (a2), d0
0012b6: 61002d66     bsr.w      $401e
0012ba: 588f         addq.l     #$4, a7
0012bc: 6068         bra.b      $1326
0012be: 48780020     pea.l      $20.w
0012c2: 41ef0004     lea.l      $4(a7), a0
0012c6: 2208         move.l     a0, d1
0012c8: 2012         move.l     (a2), d0
0012ca: 61002ce8     bsr.w      $3fb4
0012ce: 588f         addq.l     #$4, a7
0012d0: 2800         move.l     d0, d4
0012d2: 7220         moveq      #$20, d1
0012d4: b280         cmp.l      d0, d1
0012d6: 6604         bne.b      $12dc
0012d8: 4a17         tst.b      (a7)
0012da: 67e2         beq.b      $12be
0012dc: 4a84         tst.l      d4
0012de: 6e04         bgt.b      $12e4
0012e0: 7000         moveq      #$0, d0
0012e2: 6044         bra.b      $1328
0012e4: 700c         moveq      #$c, d0
0012e6: d08a         add.l      a2, d0
0012e8: 2640         movea.l    d0, a3
0012ea: 102f001d     move.b     $1d(a7), d0
0012ee: 4880         ext.w      d0
0012f0: 024000ff     andi.w     #$ff, d0
0012f4: 48c0         ext.l      d0
0012f6: 7210         moveq      #$10, d1
0012f8: e3a8         lsl.l      d1, d0
0012fa: 122f001e     move.b     $1e(a7), d1
0012fe: 4881         ext.w      d1
001300: 024100ff     andi.w     #$ff, d1
001304: 48c1         ext.l      d1
001306: e189         lsl.l      #$8, d1
001308: 8081         or.l       d1, d0
00130a: 122f001f     move.b     $1f(a7), d1
00130e: 4881         ext.w      d1
001310: 024100ff     andi.w     #$ff, d1
001314: 48c1         ext.l      d1
001316: 8081         or.l       d1, d0
001318: 2680         move.l     d0, (a3)
00131a: 41d7         lea.l      (a7), a0
00131c: 2208         move.l     a0, d1
00131e: 200b         move.l     a3, d0
001320: 5080         addq.l     #$8, d0
001322: 61000090     bsr.w      $13b4
001326: 200b         move.l     a3, d0
001328: 4fef0042     lea.l      $42(a7), a7
00132c: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
001332: 4e5d         unlk       a5
001334: 4e75         rts        
001336: 4e550000     link.w     a5, #$0
00133a: 48e7c020     movem.l    d0-d1/a2, -(a7)
00133e: 2440         movea.l    d0, a2
001340: 48780001     pea.l      $1.w
001344: 7200         moveq      #$0, d1
001346: 2012         move.l     (a2), d0
001348: 61002cd4     bsr.w      $401e
00134c: 588f         addq.l     #$4, a7
00134e: 4ced0402fff8 movem.l    -$8(a5), d1/a2
001354: 4e5d         unlk       a5
001356: 4e75         rts        
001358: 4e550000     link.w     a5, #$0
00135c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001360: 42a7         clr.l      -(a7)
001362: 222f0008     move.l     $8(a7), d1
001366: 206f0004     movea.l    $4(a7), a0
00136a: 2010         move.l     (a0), d0
00136c: 61002cb0     bsr.w      $401e
001370: 588f         addq.l     #$4, a7
001372: 4ced0100fffc movem.l    -$4(a5), a0
001378: 4e5d         unlk       a5
00137a: 4e75         rts        
00137c: 4e550000     link.w     a5, #$0
001380: 48e7c000     movem.l    d0-d1, -(a7)
001384: 7200         moveq      #$0, d1
001386: 2017         move.l     (a7), d0
001388: 61ce         bsr.b      $1358
00138a: 4ced0002fffc movem.l    -$4(a5), d1
001390: 4e5d         unlk       a5
001392: 4e75         rts        
001394: 4e550000     link.w     a5, #$0
001398: 48e78020     movem.l    d0/a2, -(a7)
00139c: 2440         movea.l    d0, a2
00139e: 2012         move.l     (a2), d0
0013a0: 61002b2e     bsr.w      $3ed0
0013a4: 200a         move.l     a2, d0
0013a6: 61002368     bsr.w      $3710
0013aa: 4ced0400fffc movem.l    -$4(a5), a2
0013b0: 4e5d         unlk       a5
0013b2: 4e75         rts        
0013b4: 4e550000     link.w     a5, #$0
0013b8: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
0013bc: 2440         movea.l    d0, a2
0013be: 2641         movea.l    d1, a3
0013c0: 284a         movea.l    a2, a4
0013c2: 101b         move.b     (a3)+, d0
0013c4: 18c0         move.b     d0, (a4)+
0013c6: 6efa         bgt.b      $13c2
0013c8: 022c007fffff andi.b     #$7f, -$1(a4)
0013ce: 4214         clr.b      (a4)
0013d0: 200a         move.l     a2, d0
0013d2: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0013d8: 4e5d         unlk       a5
0013da: 4e75         rts        
0013dc: 4e550000     link.w     a5, #$0
0013e0: 48e78020     movem.l    d0/a2, -(a7)
0013e4: 246e8018     movea.l    -$7fe8(a6), a2
0013e8: 6012         bra.b      $13fc
0013ea: 7003         moveq      #$3, d0
0013ec: c06a000c     and.w      $c(a2), d0
0013f0: 6604         bne.b      $13f6
0013f2: 200a         move.l     a2, d0
0013f4: 601e         bra.b      $1414
0013f6: d5fc0000001c adda.l     #$1c, a2
0013fc: 203c00000380 move.l     #$380, d0
001402: d0ae8018     add.l      -$7fe8(a6), d0
001406: b08a         cmp.l      a2, d0
001408: 62e0         bhi.b      $13ea
00140a: 2d7c000000c8800c move.l     #$c8, -$7ff4(a6)
001412: 7000         moveq      #$0, d0
001414: 4ced0400fffc movem.l    -$4(a5), a2
00141a: 4e5d         unlk       a5
00141c: 4e75         rts        
00141e: 4e550000     link.w     a5, #$0
001422: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
001426: 2441         movea.l    d1, a2
001428: 266f0018     movea.l    $18(a7), a3
00142c: 200b         move.l     a3, d0
00142e: 6604         bne.b      $1434
001430: 61aa         bsr.b      $13dc
001432: 2640         movea.l    d0, a3
001434: 200b         move.l     a3, d0
001436: 674a         beq.b      $1482
001438: 376f0002000e move.w     $2(a7), $e(a3)
00143e: 0c2a002b0001 cmpi.b     #$2b, $1(a2)
001444: 6708         beq.b      $144e
001446: 0c2a002b0002 cmpi.b     #$2b, $2(a2)
00144c: 6608         bne.b      $1456
00144e: 006b0003000c ori.w      #$3, $c(a3)
001454: 6016         bra.b      $146c
001456: 0c120072     cmpi.b     #$72, (a2)
00145a: 6706         beq.b      $1462
00145c: 0c120064     cmpi.b     #$64, (a2)
001460: 6604         bne.b      $1466
001462: 7001         moveq      #$1, d0
001464: 6002         bra.b      $1468
001466: 7002         moveq      #$2, d0
001468: 816b000c     or.w       d0, $c(a3)
00146c: 202b0004     move.l     $4(a3), d0
001470: 322b0012     move.w     $12(a3), d1
001474: 48c1         ext.l      d1
001476: d081         add.l      d1, d0
001478: 27400008     move.l     d0, $8(a3)
00147c: 2680         move.l     d0, (a3)
00147e: 200b         move.l     a3, d0
001480: 6002         bra.b      $1484
001482: 7000         moveq      #$0, d0
001484: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
00148a: 4e5d         unlk       a5
00148c: 4e75         rts        
00148e: 4e550000     link.w     a5, #$0
001492: 48e7cc30     movem.l    d0-d1/d4-d5/a2-a3, -(a7)
001496: 2440         movea.l    d0, a2
001498: 2641         movea.l    d1, a3
00149a: 7a00         moveq      #$0, d5
00149c: 601a         bra.b      $14b8
00149e: 0c2b002b0002 cmpi.b     #$2b, $2(a3)
0014a4: 6604         bne.b      $14aa
0014a6: 7007         moveq      #$7, d0
0014a8: 6002         bra.b      $14ac
0014aa: 7004         moveq      #$4, d0
0014ac: 2a00         move.l     d0, d5
0014ae: 6000008a     bra.w      $153a
0014b2: 7a03         moveq      #$3, d5
0014b4: 60000084     bra.w      $153a
0014b8: 102b0001     move.b     $1(a3), d0
0014bc: 4880         ext.w      d0
0014be: 0c4000ff     cmpi.w     #$ff, d0
0014c2: 6266         bhi.b      $152a
0014c4: 4a00         tst.b      d0
0014c6: 67000072     beq.w      $153a
0014ca: 0c00002b     cmpi.b     #$2b, d0
0014ce: 67e2         beq.b      $14b2
0014d0: 0c000078     cmpi.b     #$78, d0
0014d4: 67c8         beq.b      $149e
0014d6: 6052         bra.b      $152a
0014d8: 2005         move.l     d5, d0
0014da: 08c00000     bset.b     #$0, d0
0014de: 603e         bra.b      $151e
0014e0: 2005         move.l     d5, d0
0014e2: 08c00001     bset.b     #$1, d0
0014e6: 2200         move.l     d0, d1
0014e8: 200a         move.l     a2, d0
0014ea: 610029ce     bsr.w      $3eba
0014ee: 2800         move.l     d0, d4
0014f0: 72ff         moveq      #$ff, d1
0014f2: b280         cmp.l      d0, d1
0014f4: 6710         beq.b      $1506
0014f6: 48780002     pea.l      $2.w
0014fa: 7200         moveq      #$0, d1
0014fc: 2004         move.l     d4, d0
0014fe: 61002b1e     bsr.w      $401e
001502: 588f         addq.l     #$4, a7
001504: 605a         bra.b      $1560
001506: 2005         move.l     d5, d0
001508: 08c00001     bset.b     #$1, d0
00150c: 2200         move.l     d0, d1
00150e: 200a         move.l     a2, d0
001510: 61002a16     bsr.w      $3f28
001514: 6010         bra.b      $1526
001516: 203c00000081 move.l     #$81, d0
00151c: 8085         or.l       d5, d0
00151e: 2200         move.l     d0, d1
001520: 200a         move.l     a2, d0
001522: 61002996     bsr.w      $3eba
001526: 2800         move.l     d0, d4
001528: 6036         bra.b      $1560
00152a: 4fedffe8     lea.l      -$18(a5), a7
00152e: 2d7c000000cb800c move.l     #$cb, -$7ff4(a6)
001536: 70ff         moveq      #$ff, d0
001538: 6028         bra.b      $1562
00153a: 1013         move.b     (a3), d0
00153c: 4880         ext.w      d0
00153e: 0c400072     cmpi.w     #$72, d0
001542: 6794         beq.b      $14d8
001544: 6212         bhi.b      $1558
001546: 0c000064     cmpi.b     #$64, d0
00154a: 67ca         beq.b      $1516
00154c: 62dc         bhi.b      $152a
00154e: 0c000061     cmpi.b     #$61, d0
001552: 6700ff8c     beq.w      $14e0
001556: 60d2         bra.b      $152a
001558: 0c400077     cmpi.w     #$77, d0
00155c: 67a8         beq.b      $1506
00155e: 60ca         bra.b      $152a
001560: 2004         move.l     d4, d0
001562: 4ced0c30fff0 movem.l    -$10(a5), d4-d5/a2-a3
001568: 4e5d         unlk       a5
00156a: 4e75         rts        
00156c: 4e550000     link.w     a5, #$0
001570: 48e7c000     movem.l    d0-d1, -(a7)
001574: 42a7         clr.l      -(a7)
001576: 222f0008     move.l     $8(a7), d1
00157a: 202f0004     move.l     $4(a7), d0
00157e: 6100fe9e     bsr.w      $141e
001582: 588f         addq.l     #$4, a7
001584: 4e5d         unlk       a5
001586: 4e75         rts        
001588: 4e550000     link.w     a5, #$0
00158c: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001590: 2440         movea.l    d0, a2
001592: 2641         movea.l    d1, a3
001594: 220b         move.l     a3, d1
001596: 200a         move.l     a2, d0
001598: 6100fef4     bsr.w      $148e
00159c: 2800         move.l     d0, d4
00159e: 72ff         moveq      #$ff, d1
0015a0: b280         cmp.l      d0, d1
0015a2: 6604         bne.b      $15a8
0015a4: 91c8         suba.l     a0, a0
0015a6: 600e         bra.b      $15b6
0015a8: 42a7         clr.l      -(a7)
0015aa: 220b         move.l     a3, d1
0015ac: 2004         move.l     d4, d0
0015ae: 6100fe6e     bsr.w      $141e
0015b2: 588f         addq.l     #$4, a7
0015b4: 2040         movea.l    d0, a0
0015b6: 2008         move.l     a0, d0
0015b8: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
0015be: 4e5d         unlk       a5
0015c0: 4e75         rts        
0015c2: 4e550000     link.w     a5, #$0
0015c6: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
0015ca: 2440         movea.l    d0, a2
0015cc: 2641         movea.l    d1, a3
0015ce: 286f0024     movea.l    $24(a7), a4
0015d2: 200c         move.l     a4, d0
0015d4: 6100161e     bsr.w      $2bf4
0015d8: 220b         move.l     a3, d1
0015da: 200a         move.l     a2, d0
0015dc: 6100feb0     bsr.w      $148e
0015e0: 2800         move.l     d0, d4
0015e2: 6c04         bge.b      $15e8
0015e4: 91c8         suba.l     a0, a0
0015e6: 600e         bra.b      $15f6
0015e8: 4854         pea.l      (a4)
0015ea: 220b         move.l     a3, d1
0015ec: 2004         move.l     d4, d0
0015ee: 6100fe2e     bsr.w      $141e
0015f2: 588f         addq.l     #$4, a7
0015f4: 2040         movea.l    d0, a0
0015f6: 2008         move.l     a0, d0
0015f8: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
0015fe: 4e5d         unlk       a5
001600: 4e75         rts        
001602: 4e550000     link.w     a5, #$0
001606: 48e7c020     movem.l    d0-d1/a2, -(a7)
00160a: 2440         movea.l    d0, a2
00160c: 701c         moveq      #$1c, d0
00160e: d0ae8018     add.l      -$7fe8(a6), d0
001612: 2200         move.l     d0, d1
001614: 200a         move.l     a2, d0
001616: 6122         bsr.b      $163a
001618: 72ff         moveq      #$ff, d1
00161a: b280         cmp.l      d0, d1
00161c: 6604         bne.b      $1622
00161e: 70ff         moveq      #$ff, d0
001620: 600e         bra.b      $1630
001622: 701c         moveq      #$1c, d0
001624: d0ae8018     add.l      -$7fe8(a6), d0
001628: 2200         move.l     d0, d1
00162a: 700d         moveq      #$d, d0
00162c: 610014c4     bsr.w      $2af2
001630: 4ced0402fff8 movem.l    -$8(a5), d1/a2
001636: 4e5d         unlk       a5
001638: 4e75         rts        
00163a: 4e550000     link.w     a5, #$0
00163e: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
001642: 2440         movea.l    d0, a2
001644: 2641         movea.l    d1, a3
001646: 600c         bra.b      $1654
001648: 220b         move.l     a3, d1
00164a: 1004         move.b     d4, d0
00164c: 4880         ext.w      d0
00164e: 48c0         ext.l      d0
001650: 610014a0     bsr.w      $2af2
001654: 181a         move.b     (a2)+, d4
001656: 66f0         bne.b      $1648
001658: 082b0005000d btst.b     #$5, $d(a3)
00165e: 6704         beq.b      $1664
001660: 70ff         moveq      #$ff, d0
001662: 6002         bra.b      $1666
001664: 7000         moveq      #$0, d0
001666: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
00166c: 4e5d         unlk       a5
00166e: 4e75         rts        
001670: 4e550000     link.w     a5, #$0
001674: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
001678: 2440         movea.l    d0, a2
00167a: 264a         movea.l    a2, a3
00167c: 6002         bra.b      $1680
00167e: 16c4         move.b     d4, (a3)+
001680: 202e8018     move.l     -$7fe8(a6), d0
001684: 610012d8     bsr.w      $295e
001688: 2800         move.l     d0, d4
00168a: 720d         moveq      #$d, d1
00168c: b280         cmp.l      d0, d1
00168e: 6706         beq.b      $1696
001690: 70ff         moveq      #$ff, d0
001692: b084         cmp.l      d4, d0
001694: 66e8         bne.b      $167e
001696: 70ff         moveq      #$ff, d0
001698: b084         cmp.l      d4, d0
00169a: 6604         bne.b      $16a0
00169c: 7000         moveq      #$0, d0
00169e: 6004         bra.b      $16a4
0016a0: 4213         clr.b      (a3)
0016a2: 200a         move.l     a2, d0
0016a4: 4ced0c12fff0 movem.l    -$10(a5), d1/d4/a2-a3
0016aa: 4e5d         unlk       a5
0016ac: 4e75         rts        
0016ae: 4e550000     link.w     a5, #$0
0016b2: 48e7cc38     movem.l    d0-d1/d4-d5/a2-a4, -(a7)
0016b6: 2440         movea.l    d0, a2
0016b8: 2801         move.l     d1, d4
0016ba: 266f0024     movea.l    $24(a7), a3
0016be: 284a         movea.l    a2, a4
0016c0: 6008         bra.b      $16ca
0016c2: 18c5         move.b     d5, (a4)+
0016c4: 0c05000d     cmpi.b     #$d, d5
0016c8: 6712         beq.b      $16dc
0016ca: 5384         subq.l     #$1, d4
0016cc: 6f0e         ble.b      $16dc
0016ce: 200b         move.l     a3, d0
0016d0: 6100128c     bsr.w      $295e
0016d4: 2a00         move.l     d0, d5
0016d6: 72ff         moveq      #$ff, d1
0016d8: b280         cmp.l      d0, d1
0016da: 66e6         bne.b      $16c2
0016dc: 4214         clr.b      (a4)
0016de: 70ff         moveq      #$ff, d0
0016e0: b085         cmp.l      d5, d0
0016e2: 6608         bne.b      $16ec
0016e4: b9ca         cmpa.l     a2, a4
0016e6: 6604         bne.b      $16ec
0016e8: 7000         moveq      #$0, d0
0016ea: 6002         bra.b      $16ee
0016ec: 200a         move.l     a2, d0
0016ee: 4ced1c30ffec movem.l    -$14(a5), d4-d5/a2-a4
0016f4: 4e5d         unlk       a5
0016f6: 4e75         rts        
0016f8: 4e550000     link.w     a5, #$0
0016fc: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
001700: 701c         moveq      #$1c, d0
001702: d0ae8018     add.l      -$7fe8(a6), d0
001706: 2d408296     move.l     d0, -$7d6a(a6)
00170a: 486f0018     pea.l      $18(a7)
00170e: 486f0008     pea.l      $8(a7)
001712: 222f0008     move.l     $8(a7), d1
001716: 41fa0392     lea.l      $1aaa(pc), a0
00171a: 2008         move.l     a0, d0
00171c: 61000092     bsr.w      $17b0
001720: 508f         addq.l     #$8, a7
001722: 2800         move.l     d0, d4
001724: 206e8018     movea.l    -$7fe8(a6), a0
001728: 082800050029 btst.b     #$5, $29(a0)
00172e: 6704         beq.b      $1734
001730: 70ff         moveq      #$ff, d0
001732: 6002         bra.b      $1736
001734: 2004         move.l     d4, d0
001736: 4ced0110fff8 movem.l    -$8(a5), d4/a0
00173c: 4e5d         unlk       a5
00173e: 4e75         rts        
001740: 4e550000     link.w     a5, #$0
001744: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
001748: 2d578296     move.l     (a7), -$7d6a(a6)
00174c: 486f0018     pea.l      $18(a7)
001750: 42a7         clr.l      -(a7)
001752: 222f000c     move.l     $c(a7), d1
001756: 41fa0352     lea.l      $1aaa(pc), a0
00175a: 2008         move.l     a0, d0
00175c: 6152         bsr.b      $17b0
00175e: 508f         addq.l     #$8, a7
001760: 2800         move.l     d0, d4
001762: 2057         movea.l    (a7), a0
001764: 08280005000d btst.b     #$5, $d(a0)
00176a: 6704         beq.b      $1770
00176c: 70ff         moveq      #$ff, d0
00176e: 6002         bra.b      $1772
001770: 2004         move.l     d4, d0
001772: 4ced0110fff8 movem.l    -$8(a5), d4/a0
001778: 4e5d         unlk       a5
00177a: 4e75         rts        
00177c: 4e550000     link.w     a5, #$0
001780: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
001784: 2d578296     move.l     (a7), -$7d6a(a6)
001788: 486f0018     pea.l      $18(a7)
00178c: 42a7         clr.l      -(a7)
00178e: 222f000c     move.l     $c(a7), d1
001792: 41fa03ac     lea.l      $1b40(pc), a0
001796: 2008         move.l     a0, d0
001798: 6116         bsr.b      $17b0
00179a: 508f         addq.l     #$8, a7
00179c: 2800         move.l     d0, d4
00179e: 206e8296     movea.l    -$7d6a(a6), a0
0017a2: 4210         clr.b      (a0)
0017a4: 2004         move.l     d4, d0
0017a6: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0017ac: 4e5d         unlk       a5
0017ae: 4e75         rts        
0017b0: 4e550000     link.w     a5, #$0
0017b4: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
0017b8: 2440         movea.l    d0, a2
0017ba: 2641         movea.l    d1, a3
0017bc: 4feffff6     lea.l      -$a(a7), a7
0017c0: 4aaf003a     tst.l      $3a(a7)
0017c4: 6704         beq.b      $17ca
0017c6: 7001         moveq      #$1, d0
0017c8: 6002         bra.b      $17cc
0017ca: 7000         moveq      #$0, d0
0017cc: 1f400001     move.b     d0, $1(a7)
0017d0: 6706         beq.b      $17d8
0017d2: 206f003a     movea.l    $3a(a7), a0
0017d6: 6004         bra.b      $17dc
0017d8: 206f003e     movea.l    $3e(a7), a0
0017dc: 2848         movea.l    a0, a4
0017de: 7000         moveq      #$0, d0
0017e0: 2800         move.l     d0, d4
0017e2: 2f400006     move.l     d0, $6(a7)
0017e6: 60000288     bra.w      $1a70
0017ea: 7025         moveq      #$25, d0
0017ec: b085         cmp.l      d5, d0
0017ee: 6710         beq.b      $1800
0017f0: 4a84         tst.l      d4
0017f2: 6606         bne.b      $17fa
0017f4: 200b         move.l     a3, d0
0017f6: 5380         subq.l     #$1, d0
0017f8: 2e00         move.l     d0, d7
0017fa: 5284         addq.l     #$1, d4
0017fc: 60000272     bra.w      $1a70
001800: 4a84         tst.l      d4
001802: 6f1a         ble.b      $181e
001804: 422e8283     clr.b      -$7d7d(a6)
001808: 7000         moveq      #$0, d0
00180a: 2d40828e     move.l     d0, -$7d72(a6)
00180e: 2d40828a     move.l     d0, -$7d76(a6)
001812: 2204         move.l     d4, d1
001814: 2007         move.l     d7, d0
001816: 4e92         jsr        (a2)
001818: d1af0006     add.l      d0, $6(a7)
00181c: 7800         moveq      #$0, d4
00181e: 7000         moveq      #$0, d0
001820: 1d408286     move.b     d0, -$7d7a(a6)
001824: 1d408283     move.b     d0, -$7d7d(a6)
001828: 1d408282     move.b     d0, -$7d7e(a6)
00182c: 1d408287     move.b     d0, -$7d79(a6)
001830: 1d408284     move.b     d0, -$7d7c(a6)
001834: 1d408285     move.b     d0, -$7d7b(a6)
001838: 7220         moveq      #$20, d1
00183a: 1d418289     move.b     d1, -$7d77(a6)
00183e: 1d418288     move.b     d1, -$7d78(a6)
001842: 2d40828e     move.l     d0, -$7d72(a6)
001846: 2d40828a     move.l     d0, -$7d76(a6)
00184a: 6026         bra.b      $1872
00184c: 1d7c00018285 move.b     #$1, -$7d7b(a6)
001852: 601e         bra.b      $1872
001854: 1d7c00018283 move.b     #$1, -$7d7d(a6)
00185a: 6016         bra.b      $1872
00185c: 1d7c00018284 move.b     #$1, -$7d7c(a6)
001862: 600e         bra.b      $1872
001864: 1d7c00308289 move.b     #$30, -$7d77(a6)
00186a: 6006         bra.b      $1872
00186c: 1d7c00018286 move.b     #$1, -$7d7a(a6)
001872: 101b         move.b     (a3)+, d0
001874: 4880         ext.w      d0
001876: 48c0         ext.l      d0
001878: 2a00         move.l     d0, d5
00187a: 048000000020 subi.l     #$20, d0
001880: 0c8000000010 cmpi.l     #$10, d0
001886: 622c         bhi.b      $18b4
001888: d040         add.w      d0, d0
00188a: 303b0006     move.w     $1892(pc, d0.w), d0
00188e: 4efb0002     jmp        $1892(pc, d0.w)
001892: ffba         dc.w       $ffba
001894: 00220022     ori.b      #$22, -(a2)
001898: ffda         dc.w       $ffda
00189a: 00220022     ori.b      #$22, -(a2)
00189e: 00220022     ori.b      #$22, -(a2)
0018a2: 00220022     ori.b      #$22, -(a2)
0018a6: 0022ffca     ori.b      #$ca, -(a2)
0018aa: 0022ffc2     ori.b      #$c2, -(a2)
0018ae: 00220022     ori.b      #$22, -(a2)
0018b2: ffd2         dc.w       $ffd2
0018b4: 702a         moveq      #$2a, d0
0018b6: b085         cmp.l      d5, d0
0018b8: 6638         bne.b      $18f2
0018ba: 2d5c828a     move.l     (a4)+, -$7d76(a6)
0018be: 4a2f0001     tst.b      $1(a7)
0018c2: 6708         beq.b      $18cc
0018c4: 286f003e     movea.l    $3e(a7), a4
0018c8: 422f0001     clr.b      $1(a7)
0018cc: 101b         move.b     (a3)+, d0
0018ce: 4880         ext.w      d0
0018d0: 48c0         ext.l      d0
0018d2: 2a00         move.l     d0, d5
0018d4: 602c         bra.b      $1902
0018d6: 202e828a     move.l     -$7d76(a6), d0
0018da: 720a         moveq      #$a, d1
0018dc: 610022b6     bsr.w      $3b94
0018e0: 72d0         moveq      #$d0, d1
0018e2: d285         add.l      d5, d1
0018e4: d081         add.l      d1, d0
0018e6: 2d40828a     move.l     d0, -$7d76(a6)
0018ea: 101b         move.b     (a3)+, d0
0018ec: 4880         ext.w      d0
0018ee: 48c0         ext.l      d0
0018f0: 2a00         move.l     d0, d5
0018f2: 41ee8511     lea.l      -$7aef(a6), a0
0018f6: 10305800     move.b     (a0, d5.l), d0
0018fa: 4880         ext.w      d0
0018fc: 08000003     btst.b     #$3, d0
001900: 66d4         bne.b      $18d6
001902: 702e         moveq      #$2e, d0
001904: b085         cmp.l      d5, d0
001906: 666c         bne.b      $1974
001908: 1d7c00018287 move.b     #$1, -$7d79(a6)
00190e: 101b         move.b     (a3)+, d0
001910: 4880         ext.w      d0
001912: 48c0         ext.l      d0
001914: 2a00         move.l     d0, d5
001916: 722a         moveq      #$2a, d1
001918: b280         cmp.l      d0, d1
00191a: 6638         bne.b      $1954
00191c: 2d5c828e     move.l     (a4)+, -$7d72(a6)
001920: 4a2f0001     tst.b      $1(a7)
001924: 6708         beq.b      $192e
001926: 286f003e     movea.l    $3e(a7), a4
00192a: 422f0001     clr.b      $1(a7)
00192e: 101b         move.b     (a3)+, d0
001930: 4880         ext.w      d0
001932: 48c0         ext.l      d0
001934: 2a00         move.l     d0, d5
001936: 603c         bra.b      $1974
001938: 202e828e     move.l     -$7d72(a6), d0
00193c: 720a         moveq      #$a, d1
00193e: 61002254     bsr.w      $3b94
001942: 72d0         moveq      #$d0, d1
001944: d285         add.l      d5, d1
001946: d081         add.l      d1, d0
001948: 2d40828e     move.l     d0, -$7d72(a6)
00194c: 101b         move.b     (a3)+, d0
00194e: 4880         ext.w      d0
001950: 48c0         ext.l      d0
001952: 2a00         move.l     d0, d5
001954: 41ee8511     lea.l      -$7aef(a6), a0
001958: 10305800     move.b     (a0, d5.l), d0
00195c: 4880         ext.w      d0
00195e: 08000003     btst.b     #$3, d0
001962: 66d4         bne.b      $1938
001964: 600e         bra.b      $1974
001966: 1d458288     move.b     d5, -$7d78(a6)
00196a: 101b         move.b     (a3)+, d0
00196c: 4880         ext.w      d0
00196e: 48c0         ext.l      d0
001970: 2a00         move.l     d0, d5
001972: 601a         bra.b      $198e
001974: 0c85000000ff cmpi.l     #$ff, d5
00197a: 6212         bhi.b      $198e
00197c: 0c05004c     cmpi.b     #$4c, d5
001980: 67e4         beq.b      $1966
001982: 0c050068     cmpi.b     #$68, d5
001986: 67de         beq.b      $1966
001988: 0c05006c     cmpi.b     #$6c, d5
00198c: 67d8         beq.b      $1966
00198e: 41ee8511     lea.l      -$7aef(a6), a0
001992: 10305800     move.b     (a0, d5.l), d0
001996: 4880         ext.w      d0
001998: 08000001     btst.b     #$1, d0
00199c: 670e         beq.b      $19ac
00199e: 1d7c00018282 move.b     #$1, -$7d7e(a6)
0019a4: 2005         move.l     d5, d0
0019a6: 6100210a     bsr.w      $3ab2
0019aa: 2a00         move.l     d0, d5
0019ac: 7061         moveq      #$61, d0
0019ae: b085         cmp.l      d5, d0
0019b0: 6e18         bgt.b      $19ca
0019b2: 727a         moveq      #$7a, d1
0019b4: b285         cmp.l      d5, d1
0019b6: 6d12         blt.b      $19ca
0019b8: 709f         moveq      #$9f, d0
0019ba: d085         add.l      d5, d0
0019bc: e588         lsl.l      #$2, d0
0019be: 41ee8490     lea.l      -$7b70(a6), a0
0019c2: 2f7008000002 move.l     (a0, d0.l), $2(a7)
0019c8: 664e         bne.b      $1a18
0019ca: 2d458292     move.l     d5, -$7d6e(a6)
0019ce: 6602         bne.b      $19d2
0019d0: 538b         subq.l     #$1, a3
0019d2: 41fa0208     lea.l      $1bdc(pc), a0
0019d6: 2f480002     move.l     a0, $2(a7)
0019da: 41ee8292     lea.l      -$7d6e(a6), a0
0019de: 2c08         move.l     a0, d6
0019e0: 606e         bra.b      $1a50
0019e2: 4a2f0001     tst.b      $1(a7)
0019e6: 6708         beq.b      $19f0
0019e8: 286f003e     movea.l    $3e(a7), a4
0019ec: 422f0001     clr.b      $1(a7)
0019f0: 2c0c         move.l     a4, d6
0019f2: 200c         move.l     a4, d0
0019f4: 5080         addq.l     #$8, d0
0019f6: 2840         movea.l    d0, a4
0019f8: 6056         bra.b      $1a50
0019fa: 41ef0006     lea.l      $6(a7), a0
0019fe: 60de         bra.b      $19de
001a00: 2c1c         move.l     (a4)+, d6
001a02: 6004         bra.b      $1a08
001a04: 2c0c         move.l     a4, d6
001a06: 588c         addq.l     #$4, a4
001a08: 4a2f0001     tst.b      $1(a7)
001a0c: 6742         beq.b      $1a50
001a0e: 422f0001     clr.b      $1(a7)
001a12: 286f003e     movea.l    $3e(a7), a4
001a16: 6038         bra.b      $1a50
001a18: 2005         move.l     d5, d0
001a1a: 048000000065 subi.l     #$65, d0
001a20: 0c800000000e cmpi.l     #$e, d0
001a26: 62dc         bhi.b      $1a04
001a28: d040         add.w      d0, d0
001a2a: 303b0006     move.w     $1a32(pc, d0.w), d0
001a2e: 4efb0002     jmp        $1a32(pc, d0.w)
001a32: ffb0         dc.w       $ffb0
001a34: ffb0         dc.w       $ffb0
001a36: ffb0         dc.w       $ffb0
001a38: ffd2         dc.w       $ffd2
001a3a: ffd2         dc.w       $ffd2
001a3c: ffd2         dc.w       $ffd2
001a3e: ffd2         dc.w       $ffd2
001a40: ffd2         dc.w       $ffd2
001a42: ffd2         dc.w       $ffd2
001a44: ffc8         dc.w       $ffc8
001a46: ffd2         dc.w       $ffd2
001a48: ffd2         dc.w       $ffd2
001a4a: ffd2         dc.w       $ffd2
001a4c: ffd2         dc.w       $ffd2
001a4e: ffce         dc.w       $ffce
001a50: 2006         move.l     d6, d0
001a52: 206f0002     movea.l    $2(a7), a0
001a56: 4e90         jsr        (a0)
001a58: 2200         move.l     d0, d1
001a5a: 7073         moveq      #$73, d0
001a5c: b085         cmp.l      d5, d0
001a5e: 6604         bne.b      $1a64
001a60: 2046         movea.l    d6, a0
001a62: 6004         bra.b      $1a68
001a64: 41ee8082     lea.l      -$7f7e(a6), a0
001a68: 2008         move.l     a0, d0
001a6a: 4e92         jsr        (a2)
001a6c: d1af0006     add.l      d0, $6(a7)
001a70: 101b         move.b     (a3)+, d0
001a72: 4880         ext.w      d0
001a74: 48c0         ext.l      d0
001a76: 2a00         move.l     d0, d5
001a78: 6600fd70     bne.w      $17ea
001a7c: 4a84         tst.l      d4
001a7e: 6f18         ble.b      $1a98
001a80: 422e8283     clr.b      -$7d7d(a6)
001a84: 7000         moveq      #$0, d0
001a86: 2d40828e     move.l     d0, -$7d72(a6)
001a8a: 2d40828a     move.l     d0, -$7d76(a6)
001a8e: 2204         move.l     d4, d1
001a90: 2007         move.l     d7, d0
001a92: 4e92         jsr        (a2)
001a94: d1af0006     add.l      d0, $6(a7)
001a98: 202f0006     move.l     $6(a7), d0
001a9c: 4fef000a     lea.l      $a(a7), a7
001aa0: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
001aa6: 4e5d         unlk       a5
001aa8: 4e75         rts        
001aaa: 4e550000     link.w     a5, #$0
001aae: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
001ab2: 2440         movea.l    d0, a2
001ab4: 2801         move.l     d1, d4
001ab6: 202e828a     move.l     -$7d76(a6), d0
001aba: 9084         sub.l      d4, d0
001abc: 2c00         move.l     d0, d6
001abe: 6e04         bgt.b      $1ac4
001ac0: 2e04         move.l     d4, d7
001ac2: 6026         bra.b      $1aea
001ac4: 41ee8082     lea.l      -$7f7e(a6), a0
001ac8: b1ca         cmpa.l     a2, a0
001aca: 6606         bne.b      $1ad2
001acc: 41f24800     lea.l      (a2, d4.l), a0
001ad0: 6004         bra.b      $1ad6
001ad2: 41ee8082     lea.l      -$7f7e(a6), a0
001ad6: 2848         movea.l    a0, a4
001ad8: 2648         movea.l    a0, a3
001ada: 2a06         move.l     d6, d5
001adc: 6004         bra.b      $1ae2
001ade: 16ee8289     move.b     -$7d77(a6), (a3)+
001ae2: 5385         subq.l     #$1, d5
001ae4: 6cf8         bge.b      $1ade
001ae6: 2e2e828a     move.l     -$7d76(a6), d7
001aea: 4a2e8283     tst.b      -$7d7d(a6)
001aee: 6616         bne.b      $1b06
001af0: 4a86         tst.l      d6
001af2: 6f12         ble.b      $1b06
001af4: 2f2e8296     move.l     -$7d6a(a6), -(a7)
001af8: 48780001     pea.l      $1.w
001afc: 2206         move.l     d6, d1
001afe: 200c         move.l     a4, d0
001b00: 61000e14     bsr.w      $2916
001b04: 508f         addq.l     #$8, a7
001b06: 2f2e8296     move.l     -$7d6a(a6), -(a7)
001b0a: 48780001     pea.l      $1.w
001b0e: 2204         move.l     d4, d1
001b10: 200a         move.l     a2, d0
001b12: 61000e02     bsr.w      $2916
001b16: 508f         addq.l     #$8, a7
001b18: 4a2e8283     tst.b      -$7d7d(a6)
001b1c: 6716         beq.b      $1b34
001b1e: 4a86         tst.l      d6
001b20: 6f12         ble.b      $1b34
001b22: 2f2e8296     move.l     -$7d6a(a6), -(a7)
001b26: 48780001     pea.l      $1.w
001b2a: 2206         move.l     d6, d1
001b2c: 200c         move.l     a4, d0
001b2e: 61000de6     bsr.w      $2916
001b32: 508f         addq.l     #$8, a7
001b34: 2007         move.l     d7, d0
001b36: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
001b3c: 4e5d         unlk       a5
001b3e: 4e75         rts        
001b40: 4e550000     link.w     a5, #$0
001b44: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
001b48: 2440         movea.l    d0, a2
001b4a: 2801         move.l     d1, d4
001b4c: 598f         subq.l     #$4, a7
001b4e: 2a2e8296     move.l     -$7d6a(a6), d5
001b52: 202e828a     move.l     -$7d76(a6), d0
001b56: 9084         sub.l      d4, d0
001b58: 2e00         move.l     d0, d7
001b5a: 6e04         bgt.b      $1b60
001b5c: 2004         move.l     d4, d0
001b5e: 6004         bra.b      $1b64
001b60: 202e828a     move.l     -$7d76(a6), d0
001b64: 2e80         move.l     d0, (a7)
001b66: 4a2e8283     tst.b      -$7d7d(a6)
001b6a: 660e         bne.b      $1b7a
001b6c: 6008         bra.b      $1b76
001b6e: 2045         movea.l    d5, a0
001b70: 5285         addq.l     #$1, d5
001b72: 10ae8289     move.b     -$7d77(a6), (a0)
001b76: 5387         subq.l     #$1, d7
001b78: 6cf4         bge.b      $1b6e
001b7a: 2c04         move.l     d4, d6
001b7c: 6006         bra.b      $1b84
001b7e: 2045         movea.l    d5, a0
001b80: 5285         addq.l     #$1, d5
001b82: 109a         move.b     (a2)+, (a0)
001b84: 5386         subq.l     #$1, d6
001b86: 6cf6         bge.b      $1b7e
001b88: 4a2e8283     tst.b      -$7d7d(a6)
001b8c: 670e         beq.b      $1b9c
001b8e: 6008         bra.b      $1b98
001b90: 2045         movea.l    d5, a0
001b92: 5285         addq.l     #$1, d5
001b94: 10ae8289     move.b     -$7d77(a6), (a0)
001b98: 5387         subq.l     #$1, d7
001b9a: 6cf4         bge.b      $1b90
001b9c: 2d458296     move.l     d5, -$7d6a(a6)
001ba0: 2017         move.l     (a7), d0
001ba2: 588f         addq.l     #$4, a7
001ba4: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
001baa: 4e5d         unlk       a5
001bac: 4e75         rts        
001bae: 4e550000     link.w     a5, #$0
001bb2: 48e78820     movem.l    d0/d4/a2, -(a7)
001bb6: 2440         movea.l    d0, a2
001bb8: 200a         move.l     a2, d0
001bba: 610014e4     bsr.w      $30a0
001bbe: 2800         move.l     d0, d4
001bc0: 4a2e8287     tst.b      -$7d79(a6)
001bc4: 670a         beq.b      $1bd0
001bc6: b8ae828e     cmp.l      -$7d72(a6), d4
001bca: 6f04         ble.b      $1bd0
001bcc: 282e828e     move.l     -$7d72(a6), d4
001bd0: 2004         move.l     d4, d0
001bd2: 4ced0410fff8 movem.l    -$8(a5), d4/a2
001bd8: 4e5d         unlk       a5
001bda: 4e75         rts        
001bdc: 4e550000     link.w     a5, #$0
001be0: 48e78020     movem.l    d0/a2, -(a7)
001be4: 2440         movea.l    d0, a2
001be6: 1d6a00038082 move.b     $3(a2), -$7f7e(a6)
001bec: 7001         moveq      #$1, d0
001bee: 4ced0400fffc movem.l    -$4(a5), a2
001bf4: 4e5d         unlk       a5
001bf6: 4e75         rts        
001bf8: 4e550000     link.w     a5, #$0
001bfc: 48e788b8     movem.l    d0/d4/a0/a2-a4, -(a7)
001c00: 49ee8082     lea.l      -$7f7e(a6), a4
001c04: 2057         movea.l    (a7), a0
001c06: 2810         move.l     (a0), d4
001c08: 6718         beq.b      $1c22
001c0a: 4a2e8286     tst.b      -$7d7a(a6)
001c0e: 6712         beq.b      $1c22
001c10: 18fc0030     move.b     #$30, (a4)+
001c14: 4a2e8282     tst.b      -$7d7e(a6)
001c18: 6704         beq.b      $1c1e
001c1a: 7058         moveq      #$58, d0
001c1c: 6002         bra.b      $1c20
001c1e: 7078         moveq      #$78, d0
001c20: 18c0         move.b     d0, (a4)+
001c22: 4a2e8282     tst.b      -$7d7e(a6)
001c26: 6706         beq.b      $1c2e
001c28: 41fa045c     lea.l      $2086(pc), a0
001c2c: 6004         bra.b      $1c32
001c2e: 41fa0467     lea.l      $2097(pc), a0
001c32: 2448         movea.l    a0, a2
001c34: 47ee829a     lea.l      -$7d66(a6), a3
001c38: 700f         moveq      #$f, d0
001c3a: c084         and.l      d4, d0
001c3c: 16f20800     move.b     (a2, d0.l), (a3)+
001c40: e88c         lsr.l      #$4, d4
001c42: 66f4         bne.b      $1c38
001c44: 6002         bra.b      $1c48
001c46: 18e3         move.b     -(a3), (a4)+
001c48: 41ee829a     lea.l      -$7d66(a6), a0
001c4c: b1cb         cmpa.l     a3, a0
001c4e: 65f6         bcs.b      $1c46
001c50: 41ee8082     lea.l      -$7f7e(a6), a0
001c54: 200c         move.l     a4, d0
001c56: 9088         sub.l      a0, d0
001c58: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
001c5e: 4e5d         unlk       a5
001c60: 4e75         rts        
001c62: 4e550000     link.w     a5, #$0
001c66: 48e788b0     movem.l    d0/d4/a0/a2-a3, -(a7)
001c6a: 47ee8082     lea.l      -$7f7e(a6), a3
001c6e: 2057         movea.l    (a7), a0
001c70: 2810         move.l     (a0), d4
001c72: 670a         beq.b      $1c7e
001c74: 4a2e8286     tst.b      -$7d7a(a6)
001c78: 6704         beq.b      $1c7e
001c7a: 16fc0030     move.b     #$30, (a3)+
001c7e: 45ee829a     lea.l      -$7d66(a6), a2
001c82: 7007         moveq      #$7, d0
001c84: c004         and.b      d4, d0
001c86: 06000030     addi.b     #$30, d0
001c8a: 14c0         move.b     d0, (a2)+
001c8c: e68c         lsr.l      #$3, d4
001c8e: 66f2         bne.b      $1c82
001c90: 6002         bra.b      $1c94
001c92: 16e2         move.b     -(a2), (a3)+
001c94: 41ee829a     lea.l      -$7d66(a6), a0
001c98: b1ca         cmpa.l     a2, a0
001c9a: 65f6         bcs.b      $1c92
001c9c: 41ee8082     lea.l      -$7f7e(a6), a0
001ca0: 200b         move.l     a3, d0
001ca2: 9088         sub.l      a0, d0
001ca4: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
001caa: 4e5d         unlk       a5
001cac: 4e75         rts        
001cae: 4e550000     link.w     a5, #$0
001cb2: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
001cb6: 2440         movea.l    d0, a2
001cb8: 47ee8082     lea.l      -$7f7e(a6), a3
001cbc: 2812         move.l     (a2), d4
001cbe: 6c0c         bge.b      $1ccc
001cc0: 2004         move.l     d4, d0
001cc2: 4480         neg.l      d0
001cc4: 2800         move.l     d0, d4
001cc6: 16fc002d     move.b     #$2d, (a3)+
001cca: 6016         bra.b      $1ce2
001ccc: 4a2e8284     tst.b      -$7d7c(a6)
001cd0: 6706         beq.b      $1cd8
001cd2: 16fc002b     move.b     #$2b, (a3)+
001cd6: 600a         bra.b      $1ce2
001cd8: 4a2e8285     tst.b      -$7d7b(a6)
001cdc: 6704         beq.b      $1ce2
001cde: 16fc0020     move.b     #$20, (a3)+
001ce2: 2204         move.l     d4, d1
001ce4: 200b         move.l     a3, d0
001ce6: 6140         bsr.b      $1d28
001ce8: 4ced0c12fff0 movem.l    -$10(a5), d1/d4/a2-a3
001cee: 4e5d         unlk       a5
001cf0: 4e75         rts        
001cf2: 4e550000     link.w     a5, #$0
001cf6: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
001cfa: 2440         movea.l    d0, a2
001cfc: 47ee8082     lea.l      -$7f7e(a6), a3
001d00: 2812         move.l     (a2), d4
001d02: 4a2e8284     tst.b      -$7d7c(a6)
001d06: 6706         beq.b      $1d0e
001d08: 16fc002b     move.b     #$2b, (a3)+
001d0c: 600a         bra.b      $1d18
001d0e: 4a2e8285     tst.b      -$7d7b(a6)
001d12: 6704         beq.b      $1d18
001d14: 16fc0020     move.b     #$20, (a3)+
001d18: 2204         move.l     d4, d1
001d1a: 200b         move.l     a3, d0
001d1c: 610a         bsr.b      $1d28
001d1e: 4ced0c12fff0 movem.l    -$10(a5), d1/d4/a2-a3
001d24: 4e5d         unlk       a5
001d26: 4e75         rts        
001d28: 4e550000     link.w     a5, #$0
001d2c: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001d30: 2440         movea.l    d0, a2
001d32: 2801         move.l     d1, d4
001d34: 47ee829a     lea.l      -$7d66(a6), a3
001d38: 2004         move.l     d4, d0
001d3a: 720a         moveq      #$a, d1
001d3c: 61001ec0     bsr.w      $3bfe
001d40: 06000030     addi.b     #$30, d0
001d44: 16c0         move.b     d0, (a3)+
001d46: 720a         moveq      #$a, d1
001d48: 2004         move.l     d4, d0
001d4a: 61001eba     bsr.w      $3c06
001d4e: 2800         move.l     d0, d4
001d50: 66e6         bne.b      $1d38
001d52: 6002         bra.b      $1d56
001d54: 14e3         move.b     -(a3), (a2)+
001d56: 41ee829a     lea.l      -$7d66(a6), a0
001d5a: b1cb         cmpa.l     a3, a0
001d5c: 65f6         bcs.b      $1d54
001d5e: 41ee8082     lea.l      -$7f7e(a6), a0
001d62: 200a         move.l     a2, d0
001d64: 9088         sub.l      a0, d0
001d66: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
001d6c: 4e5d         unlk       a5
001d6e: 4e75         rts        
001d70: 4e550000     link.w     a5, #$0
001d74: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
001d78: 2440         movea.l    d0, a2
001d7a: 47ee8082     lea.l      -$7f7e(a6), a3
001d7e: 4cd20003     movem.l    (a2), d0-d1
001d82: 48ee000382a4 movem.l    d0-d1, -$7d5c(a6)
001d88: 4a80         tst.l      d0
001d8a: 6c16         bge.b      $1da2
001d8c: 16fc002d     move.b     #$2d, (a3)+
001d90: 4cee000382a4 movem.l    -$7d5c(a6), d0-d1
001d96: 4e4f         trap       #$f
001d98: 001548ee     ori.b      #$ee, (a5)
001d9c: 000382a4     ori.b      #$a4, d3
001da0: 6016         bra.b      $1db8
001da2: 4a2e8284     tst.b      -$7d7c(a6)
001da6: 6706         beq.b      $1dae
001da8: 16fc002b     move.b     #$2b, (a3)+
001dac: 600a         bra.b      $1db8
001dae: 4a2e8285     tst.b      -$7d7b(a6)
001db2: 6704         beq.b      $1db8
001db4: 16fc0020     move.b     #$20, (a3)+
001db8: 4a2e8287     tst.b      -$7d79(a6)
001dbc: 6606         bne.b      $1dc4
001dbe: 7006         moveq      #$6, d0
001dc0: 2d40828e     move.l     d0, -$7d72(a6)
001dc4: 200b         move.l     a3, d0
001dc6: 4ced0c02fff4 movem.l    -$c(a5), d1/a2-a3
001dcc: 4e5d         unlk       a5
001dce: 4e75         rts        
001dd0: 4e550000     link.w     a5, #$0
001dd4: 48e78c20     movem.l    d0/d4-d5/a2, -(a7)
001dd8: 2440         movea.l    d0, a2
001dda: 7a2e         moveq      #$2e, d5
001ddc: 1812         move.b     (a2), d4
001dde: 14c5         move.b     d5, (a2)+
001de0: 1a04         move.b     d4, d5
001de2: 66f8         bne.b      $1ddc
001de4: 200a         move.l     a2, d0
001de6: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
001dec: 4e5d         unlk       a5
001dee: 4e75         rts        
001df0: 4e550000     link.w     a5, #$0
001df4: 48e78820     movem.l    d0/d4/a2, -(a7)
001df8: 2440         movea.l    d0, a2
001dfa: 1822         move.b     -(a2), d4
001dfc: 0c040030     cmpi.b     #$30, d4
001e00: 67f8         beq.b      $1dfa
001e02: 0c04002e     cmpi.b     #$2e, d4
001e06: 6702         beq.b      $1e0a
001e08: 528a         addq.l     #$1, a2
001e0a: 200a         move.l     a2, d0
001e0c: 4ced0410fff8 movem.l    -$8(a5), d4/a2
001e12: 4e5d         unlk       a5
001e14: 4e75         rts        
001e16: 4e550000     link.w     a5, #$0
001e1a: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
001e1e: 2440         movea.l    d0, a2
001e20: 2801         move.l     d1, d4
001e22: 4a2e8282     tst.b      -$7d7e(a6)
001e26: 6704         beq.b      $1e2c
001e28: 7045         moveq      #$45, d0
001e2a: 6002         bra.b      $1e2e
001e2c: 7065         moveq      #$65, d0
001e2e: 14c0         move.b     d0, (a2)+
001e30: 4a84         tst.l      d4
001e32: 6d06         blt.b      $1e3a
001e34: 14fc002b     move.b     #$2b, (a2)+
001e38: 600a         bra.b      $1e44
001e3a: 2004         move.l     d4, d0
001e3c: 4480         neg.l      d0
001e3e: 2800         move.l     d0, d4
001e40: 14fc002d     move.b     #$2d, (a2)+
001e44: 7063         moveq      #$63, d0
001e46: b084         cmp.l      d4, d0
001e48: 6c18         bge.b      $1e62
001e4a: 2004         move.l     d4, d0
001e4c: 7264         moveq      #$64, d1
001e4e: 61001d7c     bsr.w      $3bcc
001e52: 06000030     addi.b     #$30, d0
001e56: 14c0         move.b     d0, (a2)+
001e58: 7264         moveq      #$64, d1
001e5a: 2004         move.l     d4, d0
001e5c: 61001d98     bsr.w      $3bf6
001e60: 2800         move.l     d0, d4
001e62: 2004         move.l     d4, d0
001e64: 720a         moveq      #$a, d1
001e66: 61001d64     bsr.w      $3bcc
001e6a: 06000030     addi.b     #$30, d0
001e6e: 14c0         move.b     d0, (a2)+
001e70: 2004         move.l     d4, d0
001e72: 720a         moveq      #$a, d1
001e74: 61001d80     bsr.w      $3bf6
001e78: 06000030     addi.b     #$30, d0
001e7c: 14c0         move.b     d0, (a2)+
001e7e: 200a         move.l     a2, d0
001e80: 4ced0410fff8 movem.l    -$8(a5), d4/a2
001e86: 4e5d         unlk       a5
001e88: 4e75         rts        
001e8a: 4e550000     link.w     a5, #$0
001e8e: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001e92: 2440         movea.l    d0, a2
001e94: 598f         subq.l     #$4, a7
001e96: 200a         move.l     a2, d0
001e98: 6100fed6     bsr.w      $1d70
001e9c: 2640         movea.l    d0, a3
001e9e: 4857         pea.l      (a7)
001ea0: 48787fff     pea.l      $7fff.w
001ea4: 202e828e     move.l     -$7d72(a6), d0
001ea8: 5280         addq.l     #$1, d0
001eaa: 2f00         move.l     d0, -(a7)
001eac: 4853         pea.l      (a3)
001eae: 4cee000382a4 movem.l    -$7d5c(a6), d0-d1
001eb4: 610001ac     bsr.w      $2062
001eb8: 4fef0010     lea.l      $10(a7), a7
001ebc: 5380         subq.l     #$1, d0
001ebe: 2800         move.l     d0, d4
001ec0: 2204         move.l     d4, d1
001ec2: 200b         move.l     a3, d0
001ec4: 5280         addq.l     #$1, d0
001ec6: 6100ff08     bsr.w      $1dd0
001eca: 6100ff4a     bsr.w      $1e16
001ece: 41ee8082     lea.l      -$7f7e(a6), a0
001ed2: 9088         sub.l      a0, d0
001ed4: 588f         addq.l     #$4, a7
001ed6: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
001edc: 4e5d         unlk       a5
001ede: 4e75         rts        
001ee0: 4e550000     link.w     a5, #$0
001ee4: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001ee8: 2440         movea.l    d0, a2
001eea: 598f         subq.l     #$4, a7
001eec: 200a         move.l     a2, d0
001eee: 6100fe80     bsr.w      $1d70
001ef2: 2640         movea.l    d0, a3
001ef4: 4857         pea.l      (a7)
001ef6: 2f2e828e     move.l     -$7d72(a6), -(a7)
001efa: 4878000f     pea.l      $f.w
001efe: 4853         pea.l      (a3)
001f00: 4cee000382a4 movem.l    -$7d5c(a6), d0-d1
001f06: 6100015a     bsr.w      $2062
001f0a: 4fef0010     lea.l      $10(a7), a7
001f0e: 5380         subq.l     #$1, d0
001f10: 2800         move.l     d0, d4
001f12: 2204         move.l     d4, d1
001f14: 200b         move.l     a3, d0
001f16: 610000b6     bsr.w      $1fce
001f1a: 41ee8082     lea.l      -$7f7e(a6), a0
001f1e: 9088         sub.l      a0, d0
001f20: 588f         addq.l     #$4, a7
001f22: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
001f28: 4e5d         unlk       a5
001f2a: 4e75         rts        
001f2c: 4e550000     link.w     a5, #$0
001f30: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001f34: 2440         movea.l    d0, a2
001f36: 598f         subq.l     #$4, a7
001f38: 200a         move.l     a2, d0
001f3a: 6100fe34     bsr.w      $1d70
001f3e: 2640         movea.l    d0, a3
001f40: 4aae828e     tst.l      -$7d72(a6)
001f44: 6606         bne.b      $1f4c
001f46: 7001         moveq      #$1, d0
001f48: 2d40828e     move.l     d0, -$7d72(a6)
001f4c: 4857         pea.l      (a7)
001f4e: 48787fff     pea.l      $7fff.w
001f52: 2f2e828e     move.l     -$7d72(a6), -(a7)
001f56: 4853         pea.l      (a3)
001f58: 4cee000382a4 movem.l    -$7d5c(a6), d0-d1
001f5e: 61000102     bsr.w      $2062
001f62: 4fef0010     lea.l      $10(a7), a7
001f66: 5380         subq.l     #$1, d0
001f68: 2800         move.l     d0, d4
001f6a: 70fc         moveq      #$fc, d0
001f6c: b084         cmp.l      d4, d0
001f6e: 6e06         bgt.b      $1f76
001f70: b8ae828e     cmp.l      -$7d72(a6), d4
001f74: 6d28         blt.b      $1f9e
001f76: 200b         move.l     a3, d0
001f78: 5280         addq.l     #$1, d0
001f7a: 6100fe54     bsr.w      $1dd0
001f7e: 2640         movea.l    d0, a3
001f80: 4aae828e     tst.l      -$7d72(a6)
001f84: 670e         beq.b      $1f94
001f86: 4a2e8286     tst.b      -$7d7a(a6)
001f8a: 6608         bne.b      $1f94
001f8c: 200b         move.l     a3, d0
001f8e: 6100fe60     bsr.w      $1df0
001f92: 2640         movea.l    d0, a3
001f94: 2204         move.l     d4, d1
001f96: 200b         move.l     a3, d0
001f98: 6100fe7c     bsr.w      $1e16
001f9c: 601a         bra.b      $1fb8
001f9e: 2204         move.l     d4, d1
001fa0: 200b         move.l     a3, d0
001fa2: 612a         bsr.b      $1fce
001fa4: 2640         movea.l    d0, a3
001fa6: 4aae828e     tst.l      -$7d72(a6)
001faa: 670e         beq.b      $1fba
001fac: 4a2e8286     tst.b      -$7d7a(a6)
001fb0: 6608         bne.b      $1fba
001fb2: 200b         move.l     a3, d0
001fb4: 6100fe3a     bsr.w      $1df0
001fb8: 2640         movea.l    d0, a3
001fba: 41ee8082     lea.l      -$7f7e(a6), a0
001fbe: 200b         move.l     a3, d0
001fc0: 9088         sub.l      a0, d0
001fc2: 588f         addq.l     #$4, a7
001fc4: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
001fca: 4e5d         unlk       a5
001fcc: 4e75         rts        
001fce: 4e550000     link.w     a5, #$0
001fd2: 48e7ce38     movem.l    d0-d1/d4-d6/a2-a4, -(a7)
001fd6: 2440         movea.l    d0, a2
001fd8: 2801         move.l     d1, d4
001fda: 264a         movea.l    a2, a3
001fdc: 6002         bra.b      $1fe0
001fde: 528b         addq.l     #$1, a3
001fe0: 4a13         tst.b      (a3)
001fe2: 66fa         bne.b      $1fde
001fe4: 4a84         tst.l      d4
001fe6: 6c3a         bge.b      $2022
001fe8: 200b         move.l     a3, d0
001fea: 908a         sub.l      a2, d0
001fec: 2f00         move.l     d0, -(a7)
001fee: 220a         move.l     a2, d1
001ff0: 200a         move.l     a2, d0
001ff2: 9084         sub.l      d4, d0
001ff4: 610019d6     bsr.w      $39cc
001ff8: 588f         addq.l     #$4, a7
001ffa: 97c4         suba.l     d4, a3
001ffc: 284a         movea.l    a2, a4
001ffe: 202e828e     move.l     -$7d72(a6), d0
002002: 5280         addq.l     #$1, d0
002004: 2204         move.l     d4, d1
002006: 4481         neg.l      d1
002008: 2a01         move.l     d1, d5
00200a: b081         cmp.l      d1, d0
00200c: 6c0e         bge.b      $201c
00200e: 202e828e     move.l     -$7d72(a6), d0
002012: 5280         addq.l     #$1, d0
002014: 2a00         move.l     d0, d5
002016: 6004         bra.b      $201c
002018: 18fc0030     move.b     #$30, (a4)+
00201c: 5385         subq.l     #$1, d5
00201e: 6cf8         bge.b      $2018
002020: 7800         moveq      #$0, d4
002022: 200b         move.l     a3, d0
002024: 908a         sub.l      a2, d0
002026: 2c00         move.l     d0, d6
002028: 202e828e     move.l     -$7d72(a6), d0
00202c: d084         add.l      d4, d0
00202e: 5280         addq.l     #$1, d0
002030: 9086         sub.l      d6, d0
002032: 2a00         move.l     d0, d5
002034: 6004         bra.b      $203a
002036: 16fc0030     move.b     #$30, (a3)+
00203a: 5385         subq.l     #$1, d5
00203c: 6cf8         bge.b      $2036
00203e: 4aae828e     tst.l      -$7d72(a6)
002042: 6606         bne.b      $204a
002044: 4a2e8286     tst.b      -$7d7a(a6)
002048: 670e         beq.b      $2058
00204a: 4213         clr.b      (a3)
00204c: 200a         move.l     a2, d0
00204e: d084         add.l      d4, d0
002050: 5280         addq.l     #$1, d0
002052: 6100fd7c     bsr.w      $1dd0
002056: 6002         bra.b      $205a
002058: 200b         move.l     a3, d0
00205a: 4ced1c70ffe8 movem.l    -$18(a5), d4-d6/a2-a4
002060: 6020         bra.b      $2082
002062: 4e550000     link.w     a5, #$0
002066: 48e72080     movem.l    d2/a0, -(a7)
00206a: 206d0008     movea.l    $8(a5), a0
00206e: 242d0010     move.l     $10(a5), d2
002072: e18a         lsl.l      #$8, d2
002074: e18a         lsl.l      #$8, d2
002076: 84ad000c     or.l       $c(a5), d2
00207a: 4e4f         trap       #$f
00207c: 001e4cdf     ori.b      #$df, (a6)+
002080: 0104         btst.l     d0, d4
002082: 4e5d         unlk       a5
002084: 4e75         rts        
002086: 30313233     move.w     $33(a1, d3.w), d0
00208a: 34353637     move.w     $37(a5, d3.w), d2
00208e: 383941424344 move.w     $41424344.l, d4
002094: 4546         .dc.w      $4546
002096: 00303132333435363738 ori.b      #$32, $35363738(a0, d3.w * 2)
0020a0: 39616263     move.w     -(a1), $6263(a4)
0020a4: 6465         bcc.b      $210b
0020a6: 66004e55     bne.w      $6efd
0020aa: 000048e7     ori.b      #$e7, d0
0020ae: c080         and.l      d0, d0
0020b0: 2d6e80188330 move.l     -$7fe8(a6), -$7cd0(a6)
0020b6: 486f0014     pea.l      $14(a7)
0020ba: 486f0008     pea.l      $8(a7)
0020be: 2f2f0008     move.l     $8(a7), -(a7)
0020c2: 41fa07ba     lea.l      $287e(pc), a0
0020c6: 2208         move.l     a0, d1
0020c8: 41fa07a0     lea.l      $286a(pc), a0
0020cc: 2008         move.l     a0, d0
0020ce: 6176         bsr.b      $2146
0020d0: 4fef000c     lea.l      $c(a7), a7
0020d4: 4ced0100fffc movem.l    -$4(a5), a0
0020da: 4e5d         unlk       a5
0020dc: 4e75         rts        
0020de: 4e550000     link.w     a5, #$0
0020e2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0020e6: 2d578330     move.l     (a7), -$7cd0(a6)
0020ea: 486f0018     pea.l      $18(a7)
0020ee: 486f0018     pea.l      $18(a7)
0020f2: 2f2f000c     move.l     $c(a7), -(a7)
0020f6: 41fa0786     lea.l      $287e(pc), a0
0020fa: 2208         move.l     a0, d1
0020fc: 41fa076c     lea.l      $286a(pc), a0
002100: 2008         move.l     a0, d0
002102: 6142         bsr.b      $2146
002104: 4fef000c     lea.l      $c(a7), a7
002108: 4ced0100fffc movem.l    -$4(a5), a0
00210e: 4e5d         unlk       a5
002110: 4e75         rts        
002112: 4e550000     link.w     a5, #$0
002116: 48e7c080     movem.l    d0-d1/a0, -(a7)
00211a: 2d57832c     move.l     (a7), -$7cd4(a6)
00211e: 486f0018     pea.l      $18(a7)
002122: 486f0018     pea.l      $18(a7)
002126: 2f2f000c     move.l     $c(a7), -(a7)
00212a: 41fa079a     lea.l      $28c6(pc), a0
00212e: 2208         move.l     a0, d1
002130: 41fa0768     lea.l      $289a(pc), a0
002134: 2008         move.l     a0, d0
002136: 610e         bsr.b      $2146
002138: 4fef000c     lea.l      $c(a7), a7
00213c: 4ced0100fffc movem.l    -$4(a5), a0
002142: 4e5d         unlk       a5
002144: 4e75         rts        
002146: 4e550000     link.w     a5, #$0
00214a: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
00214e: 2440         movea.l    d0, a2
002150: 2641         movea.l    d1, a3
002152: 286f0030     movea.l    $30(a7), a4
002156: 4feffff0     lea.l      -$10(a7), a7
00215a: 7001         moveq      #$1, d0
00215c: 1d4082cc     move.b     d0, -$7d34(a6)
002160: 1d4082b9     move.b     d0, -$7d47(a6)
002164: 1d4082b5     move.b     d0, -$7d4b(a6)
002168: 7000         moveq      #$0, d0
00216a: 2f400004     move.l     d0, $4(a7)
00216e: 2f400008     move.l     d0, $8(a7)
002172: 2a00         move.l     d0, d5
002174: 60000248     bra.w      $23be
002178: 181c         move.b     (a4)+, d4
00217a: 0c040025     cmpi.b     #$25, d4
00217e: 6700021a     beq.w      $239a
002182: 0c04002a     cmpi.b     #$2a, d4
002186: 6608         bne.b      $2190
002188: 42af000c     clr.l      $c(a7)
00218c: 181c         move.b     (a4)+, d4
00218e: 601e         bra.b      $21ae
002190: 4aaf0004     tst.l      $4(a7)
002194: 660e         bne.b      $21a4
002196: 7001         moveq      #$1, d0
002198: 2f400004     move.l     d0, $4(a7)
00219c: 2f6f0044000c move.l     $44(a7), $c(a7)
0021a2: 600a         bra.b      $21ae
0021a4: 2f6f0048000c move.l     $48(a7), $c(a7)
0021aa: 58af0048     addq.l     #$4, $48(a7)
0021ae: 7c00         moveq      #$0, d6
0021b0: 7001         moveq      #$1, d0
0021b2: 2e80         move.l     d0, (a7)
0021b4: 6018         bra.b      $21ce
0021b6: 2006         move.l     d6, d0
0021b8: 720a         moveq      #$a, d1
0021ba: 610019d8     bsr.w      $3b94
0021be: 1204         move.b     d4, d1
0021c0: 4881         ext.w      d1
0021c2: 48c1         ext.l      d1
0021c4: d081         add.l      d1, d0
0021c6: 7230         moveq      #$30, d1
0021c8: 9081         sub.l      d1, d0
0021ca: 2c00         move.l     d0, d6
0021cc: 181c         move.b     (a4)+, d4
0021ce: 1004         move.b     d4, d0
0021d0: 4880         ext.w      d0
0021d2: 48c0         ext.l      d0
0021d4: 41ee8511     lea.l      -$7aef(a6), a0
0021d8: 10300800     move.b     (a0, d0.l), d0
0021dc: 4880         ext.w      d0
0021de: 08000003     btst.b     #$3, d0
0021e2: 66d2         bne.b      $21b6
0021e4: 4a86         tst.l      d6
0021e6: 66000100     bne.w      $22e8
0021ea: 2c3c7fffffff move.l     #$7fffffff, d6
0021f0: 600000f6     bra.w      $22e8
0021f4: 7002         moveq      #$2, d0
0021f6: 6000007e     bra.w      $2276
0021fa: 181c         move.b     (a4)+, d4
0021fc: 1004         move.b     d4, d0
0021fe: 4880         ext.w      d0
002200: 0c400066     cmpi.w     #$66, d0
002204: 67ee         beq.b      $21f4
002206: 6210         bhi.b      $2218
002208: 0c400065     cmpi.w     #$65, d0
00220c: 67e6         beq.b      $21f4
00220e: 620001a2     bhi.w      $23b2
002212: 0c400064     cmpi.w     #$64, d0
002216: 600e         bra.b      $2226
002218: 0c400078     cmpi.w     #$78, d0
00221c: 67d6         beq.b      $21f4
00221e: 62000192     bhi.w      $23b2
002222: 0c00006f     cmpi.b     #$6f, d0
002226: 67cc         beq.b      $21f4
002228: 60000188     bra.w      $23b2
00222c: 4297         clr.l      (a7)
00222e: 6048         bra.b      $2278
002230: 181c         move.b     (a4)+, d4
002232: 1004         move.b     d4, d0
002234: 4880         ext.w      d0
002236: 0c400066     cmpi.w     #$66, d0
00223a: 67f0         beq.b      $222c
00223c: 6210         bhi.b      $224e
00223e: 0c400065     cmpi.w     #$65, d0
002242: 67e8         beq.b      $222c
002244: 6200016c     bhi.w      $23b2
002248: 0c400064     cmpi.w     #$64, d0
00224c: 600e         bra.b      $225c
00224e: 0c400078     cmpi.w     #$78, d0
002252: 67d8         beq.b      $222c
002254: 6200015c     bhi.w      $23b2
002258: 0c00006f     cmpi.b     #$6f, d0
00225c: 67ce         beq.b      $222c
00225e: 60000152     bra.w      $23b2
002262: 7002         moveq      #$2, d0
002264: 2e80         move.l     d0, (a7)
002266: 1004         move.b     d4, d0
002268: 4880         ext.w      d0
00226a: 48c0         ext.l      d0
00226c: 61001844     bsr.w      $3ab2
002270: 1800         move.b     d0, d4
002272: 6004         bra.b      $2278
002274: 7001         moveq      #$1, d0
002276: 2e80         move.l     d0, (a7)
002278: 4fedffc8     lea.l      -$38(a5), a7
00227c: 486f0008     pea.l      $8(a7)
002280: 2f2f0004     move.l     $4(a7), -(a7)
002284: 2f06         move.l     d6, -(a7)
002286: 1004         move.b     d4, d0
002288: 4880         ext.w      d0
00228a: 48c0         ext.l      d0
00228c: 2f00         move.l     d0, -(a7)
00228e: 2f2f001c     move.l     $1c(a7), -(a7)
002292: 220b         move.l     a3, d1
002294: 200a         move.l     a2, d0
002296: 61000164     bsr.w      $23fc
00229a: 4fef0014     lea.l      $14(a7), a7
00229e: 6034         bra.b      $22d4
0022a0: 200c         move.l     a4, d0
0022a2: 6100053e     bsr.w      $27e2
0022a6: 2840         movea.l    d0, a4
0022a8: 486f0008     pea.l      $8(a7)
0022ac: 2f06         move.l     d6, -(a7)
0022ae: 1004         move.b     d4, d0
0022b0: 4880         ext.w      d0
0022b2: 48c0         ext.l      d0
0022b4: 2f00         move.l     d0, -(a7)
0022b6: 4aaf0018     tst.l      $18(a7)
0022ba: 6708         beq.b      $22c4
0022bc: 206f0018     movea.l    $18(a7), a0
0022c0: 2050         movea.l    (a0), a0
0022c2: 6002         bra.b      $22c6
0022c4: 91c8         suba.l     a0, a0
0022c6: 4850         pea.l      (a0)
0022c8: 220b         move.l     a3, d1
0022ca: 200a         move.l     a2, d0
0022cc: 61000426     bsr.w      $26f4
0022d0: 4fef0010     lea.l      $10(a7), a7
0022d4: 4a80         tst.l      d0
0022d6: 67000094     beq.w      $236c
0022da: 4aaf000c     tst.l      $c(a7)
0022de: 6700008c     beq.w      $236c
0022e2: 5285         addq.l     #$1, d5
0022e4: 60000086     bra.w      $236c
0022e8: 1004         move.b     d4, d0
0022ea: 4880         ext.w      d0
0022ec: 04400044     subi.w     #$44, d0
0022f0: 0c400034     cmpi.w     #$34, d0
0022f4: 620000bc     bhi.w      $23b2
0022f8: d040         add.w      d0, d0
0022fa: 303b0006     move.w     $2302(pc, d0.w), d0
0022fe: 4efb0002     jmp        $2302(pc, d0.w)
002302: ff60         dc.w       $ff60
002304: ff60         dc.w       $ff60
002306: ff60         dc.w       $ff60
002308: 00b000b000b000b0 ori.l      #$b000b0, -$50(a0, d0.w)
002310: 00b000b000b000b0 ori.l      #$b000b0, -$50(a0, d0.w)
002318: ff60         dc.w       $ff60
00231a: 00b000b000b000b0 ori.l      #$b000b0, -$50(a0, d0.w)
002322: 00b000b000b000b0 ori.l      #$b000b0, -$50(a0, d0.w)
00232a: ff60         dc.w       $ff60
00232c: 00b000b0ff9e00b0 ori.l      #$b0ff9e, -$50(a0, d0.w)
002334: 00b000b000b000b0 ori.l      #$b000b0, -$50(a0, d0.w)
00233c: 00b000b0ffa6ff72ff72ff7200b0 ori.l      #$b0ffa6, ([$ff72ff72, a0], $b0)
00234a: ff2e00b0     fsave      $b0(a6)
00234e: 00b000b0fef800b0 ori.l      #$b0fef8, -$50(a0, d0.w)
002356: 00b0ff7200b000b0 ori.l      #$ff7200b0, -$50(a0, d0.w)
00235e: 00b0ffa600b000b0 ori.l      #$ffa600b0, -$50(a0, d0.w)
002366: 00b000b0ff724aaf ori.l      #$b0ff72, -$51(a0, d4.l)
00236e: 0008         .dc.w      $0008
002370: 6706         beq.b      $2378
002372: 4a85         tst.l      d5
002374: 673c         beq.b      $23b2
002376: 6042         bra.b      $23ba
002378: 6044         bra.b      $23be
00237a: 4e92         jsr        (a2)
00237c: 2e00         move.l     d0, d7
00237e: 41ee8511     lea.l      -$7aef(a6), a0
002382: 10300800     move.b     (a0, d0.l), d0
002386: 4880         ext.w      d0
002388: 08000004     btst.b     #$4, d0
00238c: 66ec         bne.b      $237a
00238e: 70ff         moveq      #$ff, d0
002390: b087         cmp.l      d7, d0
002392: 6704         beq.b      $2398
002394: 2007         move.l     d7, d0
002396: 4e93         jsr        (a3)
002398: 6024         bra.b      $23be
00239a: 4fedffc8     lea.l      -$38(a5), a7
00239e: 4e92         jsr        (a2)
0023a0: 2e00         move.l     d0, d7
0023a2: 1004         move.b     d4, d0
0023a4: 4880         ext.w      d0
0023a6: 48c0         ext.l      d0
0023a8: be80         cmp.l      d0, d7
0023aa: 6712         beq.b      $23be
0023ac: 70ff         moveq      #$ff, d0
0023ae: b087         cmp.l      d7, d0
0023b0: 6604         bne.b      $23b6
0023b2: 70ff         moveq      #$ff, d0
0023b4: 6038         bra.b      $23ee
0023b6: 2007         move.l     d7, d0
0023b8: 4e93         jsr        (a3)
0023ba: 2005         move.l     d5, d0
0023bc: 6030         bra.b      $23ee
0023be: 181c         move.b     (a4)+, d4
0023c0: 1004         move.b     d4, d0
0023c2: 4880         ext.w      d0
0023c4: 0c40000d     cmpi.w     #$d, d0
0023c8: 67b0         beq.b      $237a
0023ca: 620e         bhi.b      $23da
0023cc: 0c000009     cmpi.b     #$9, d0
0023d0: 67a8         beq.b      $237a
0023d2: 62c6         bhi.b      $239a
0023d4: 4a00         tst.b      d0
0023d6: 67e2         beq.b      $23ba
0023d8: 60c0         bra.b      $239a
0023da: 0c400025     cmpi.w     #$25, d0
0023de: 6700fd98     beq.w      $2178
0023e2: 62b6         bhi.b      $239a
0023e4: 0c000020     cmpi.b     #$20, d0
0023e8: 6700ff90     beq.w      $237a
0023ec: 60ac         bra.b      $239a
0023ee: 4fef0010     lea.l      $10(a7), a7
0023f2: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
0023f8: 4e5d         unlk       a5
0023fa: 4e75         rts        
0023fc: 4e550000     link.w     a5, #$0
002400: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
002404: 2440         movea.l    d0, a2
002406: 266f0030     movea.l    $30(a7), a3
00240a: 286f0040     movea.l    $40(a7), a4
00240e: 4fefffb0     lea.l      -$50(a7), a7
002412: 7e00         moveq      #$0, d7
002414: 7000         moveq      #$0, d0
002416: 2f400004     move.l     d0, $4(a7)
00241a: 2f400008     move.l     d0, $8(a7)
00241e: 2f40000c     move.l     d0, $c(a7)
002422: 6010         bra.b      $2434
002424: 7c08         moveq      #$8, d6
002426: 6036         bra.b      $245e
002428: 7c10         moveq      #$10, d6
00242a: 6032         bra.b      $245e
00242c: 7c00         moveq      #$0, d6
00242e: 602e         bra.b      $245e
002430: 7c0a         moveq      #$a, d6
002432: 602a         bra.b      $245e
002434: 202f0084     move.l     $84(a7), d0
002438: 0c800000006f cmpi.l     #$6f, d0
00243e: 67e4         beq.b      $2424
002440: 6212         bhi.b      $2454
002442: 0c000066     cmpi.b     #$66, d0
002446: 67e4         beq.b      $242c
002448: 62e6         bhi.b      $2430
00244a: 0c8000000065 cmpi.l     #$65, d0
002450: 67da         beq.b      $242c
002452: 60dc         bra.b      $2430
002454: 0c8000000078 cmpi.l     #$78, d0
00245a: 67cc         beq.b      $2428
00245c: 60d2         bra.b      $2430
00245e: 4e92         jsr        (a2)
002460: 1a00         move.b     d0, d5
002462: 4880         ext.w      d0
002464: 48c0         ext.l      d0
002466: 41ee8511     lea.l      -$7aef(a6), a0
00246a: 10300800     move.b     (a0, d0.l), d0
00246e: 4880         ext.w      d0
002470: 08000004     btst.b     #$4, d0
002474: 66e8         bne.b      $245e
002476: 4a86         tst.l      d6
002478: 660000ca     bne.w      $2544
00247c: 41ef0010     lea.l      $10(a7), a0
002480: 2808         move.l     a0, d4
002482: 4297         clr.l      (a7)
002484: 703f         moveq      #$3f, d0
002486: b0af0088     cmp.l      $88(a7), d0
00248a: 6c06         bge.b      $2492
00248c: 703f         moveq      #$3f, d0
00248e: 2f400088     move.l     d0, $88(a7)
002492: 0c05002d     cmpi.b     #$2d, d5
002496: 6608         bne.b      $24a0
002498: 2044         movea.l    d4, a0
00249a: 5284         addq.l     #$1, d4
00249c: 1085         move.b     d5, (a0)
00249e: 6008         bra.b      $24a8
0024a0: 0c05002b     cmpi.b     #$2b, d5
0024a4: 66000092     bne.w      $2538
0024a8: 53af0088     subq.l     #$1, $88(a7)
0024ac: 60000086     bra.w      $2534
0024b0: 1005         move.b     d5, d0
0024b2: 4880         ext.w      d0
0024b4: 48c0         ext.l      d0
0024b6: 41ee8511     lea.l      -$7aef(a6), a0
0024ba: 10300800     move.b     (a0, d0.l), d0
0024be: 4880         ext.w      d0
0024c0: 08000003     btst.b     #$3, d0
0024c4: 6704         beq.b      $24ca
0024c6: 5297         addq.l     #$1, (a7)
0024c8: 6064         bra.b      $252e
0024ca: 0c05002e     cmpi.b     #$2e, d5
0024ce: 660e         bne.b      $24de
0024d0: 4aaf0004     tst.l      $4(a7)
0024d4: 6608         bne.b      $24de
0024d6: 7001         moveq      #$1, d0
0024d8: 2f400004     move.l     d0, $4(a7)
0024dc: 6050         bra.b      $252e
0024de: 0c050065     cmpi.b     #$65, d5
0024e2: 6708         beq.b      $24ec
0024e4: 0c050045     cmpi.b     #$45, d5
0024e8: 66000156     bne.w      $2640
0024ec: 4aaf000c     tst.l      $c(a7)
0024f0: 6600014e     bne.w      $2640
0024f4: 4a97         tst.l      (a7)
0024f6: 67000148     beq.w      $2640
0024fa: 7001         moveq      #$1, d0
0024fc: 2f40000c     move.l     d0, $c(a7)
002500: 2044         movea.l    d4, a0
002502: 5284         addq.l     #$1, d4
002504: 1085         move.b     d5, (a0)
002506: 4e92         jsr        (a2)
002508: 1a00         move.b     d0, d5
00250a: 0c05002d     cmpi.b     #$2d, d5
00250e: 671e         beq.b      $252e
002510: 0c05002b     cmpi.b     #$2b, d5
002514: 6718         beq.b      $252e
002516: 1005         move.b     d5, d0
002518: 4880         ext.w      d0
00251a: 48c0         ext.l      d0
00251c: 41ee8511     lea.l      -$7aef(a6), a0
002520: 10300800     move.b     (a0, d0.l), d0
002524: 4880         ext.w      d0
002526: 08000003     btst.b     #$3, d0
00252a: 67000114     beq.w      $2640
00252e: 2044         movea.l    d4, a0
002530: 5284         addq.l     #$1, d4
002532: 1085         move.b     d5, (a0)
002534: 4e92         jsr        (a2)
002536: 1a00         move.b     d0, d5
002538: 53af0088     subq.l     #$1, $88(a7)
00253c: 6c00ff72     bge.w      $24b0
002540: 600000fe     bra.w      $2640
002544: 0c05002d     cmpi.b     #$2d, d5
002548: 6608         bne.b      $2552
00254a: 7001         moveq      #$1, d0
00254c: 2f400008     move.l     d0, $8(a7)
002550: 6006         bra.b      $2558
002552: 0c05002b     cmpi.b     #$2b, d5
002556: 6604         bne.b      $255c
002558: 4e92         jsr        (a2)
00255a: 1a00         move.b     d0, d5
00255c: 41ef0010     lea.l      $10(a7), a0
002560: 2808         move.l     a0, d4
002562: 600000ca     bra.w      $262e
002566: 1005         move.b     d5, d0
002568: 4880         ext.w      d0
00256a: 48c0         ext.l      d0
00256c: 41ee8511     lea.l      -$7aef(a6), a0
002570: 10300800     move.b     (a0, d0.l), d0
002574: 4880         ext.w      d0
002576: 08000003     btst.b     #$3, d0
00257a: 670000b8     beq.w      $2634
00257e: 0c050038     cmpi.b     #$38, d5
002582: 6c0000b0     bge.w      $2634
002586: 2007         move.l     d7, d0
002588: e788         lsl.l      #$3, d0
00258a: 606c         bra.b      $25f8
00258c: 1005         move.b     d5, d0
00258e: 4880         ext.w      d0
002590: 48c0         ext.l      d0
002592: 41ee8511     lea.l      -$7aef(a6), a0
002596: 10300800     move.b     (a0, d0.l), d0
00259a: 4880         ext.w      d0
00259c: 08000006     btst.b     #$6, d0
0025a0: 67000092     beq.w      $2634
0025a4: e98f         lsl.l      #$4, d7
0025a6: 1005         move.b     d5, d0
0025a8: 4880         ext.w      d0
0025aa: 48c0         ext.l      d0
0025ac: 41ee8511     lea.l      -$7aef(a6), a0
0025b0: 10300800     move.b     (a0, d0.l), d0
0025b4: 4880         ext.w      d0
0025b6: 08000003     btst.b     #$3, d0
0025ba: 670c         beq.b      $25c8
0025bc: 1005         move.b     d5, d0
0025be: 4880         ext.w      d0
0025c0: 04400030     subi.w     #$30, d0
0025c4: 48c0         ext.l      d0
0025c6: 600e         bra.b      $25d6
0025c8: 1005         move.b     d5, d0
0025ca: 4880         ext.w      d0
0025cc: 48c0         ext.l      d0
0025ce: 610014b4     bsr.w      $3a84
0025d2: 7237         moveq      #$37, d1
0025d4: 9081         sub.l      d1, d0
0025d6: de80         add.l      d0, d7
0025d8: 602c         bra.b      $2606
0025da: 1005         move.b     d5, d0
0025dc: 4880         ext.w      d0
0025de: 48c0         ext.l      d0
0025e0: 41ee8511     lea.l      -$7aef(a6), a0
0025e4: 10300800     move.b     (a0, d0.l), d0
0025e8: 4880         ext.w      d0
0025ea: 08000003     btst.b     #$3, d0
0025ee: 6744         beq.b      $2634
0025f0: 2007         move.l     d7, d0
0025f2: 720a         moveq      #$a, d1
0025f4: 6100159e     bsr.w      $3b94
0025f8: 1205         move.b     d5, d1
0025fa: 4881         ext.w      d1
0025fc: 48c1         ext.l      d1
0025fe: d081         add.l      d1, d0
002600: 7230         moveq      #$30, d1
002602: 9081         sub.l      d1, d0
002604: 2e00         move.l     d0, d7
002606: 7800         moveq      #$0, d4
002608: 6020         bra.b      $262a
00260a: 0c86000000ff cmpi.l     #$ff, d6
002610: 6222         bhi.b      $2634
002612: 0c060008     cmpi.b     #$8, d6
002616: 6700ff4e     beq.w      $2566
00261a: 0c06000a     cmpi.b     #$a, d6
00261e: 67ba         beq.b      $25da
002620: 0c060010     cmpi.b     #$10, d6
002624: 6700ff66     beq.w      $258c
002628: 600a         bra.b      $2634
00262a: 4e92         jsr        (a2)
00262c: 1a00         move.b     d0, d5
00262e: 53af0088     subq.l     #$1, $88(a7)
002632: 6cd6         bge.b      $260a
002634: 4aaf0008     tst.l      $8(a7)
002638: 6706         beq.b      $2640
00263a: 2007         move.l     d7, d0
00263c: 4480         neg.l      d0
00263e: 2e00         move.l     d0, d7
002640: 0c05ffff     cmpi.b     #$ff, d5
002644: 6710         beq.b      $2656
002646: 1005         move.b     d5, d0
002648: 4880         ext.w      d0
00264a: 48c0         ext.l      d0
00264c: 206f0054     movea.l    $54(a7), a0
002650: 4e90         jsr        (a0)
002652: 4294         clr.l      (a4)
002654: 6006         bra.b      $265c
002656: 28bc00000001 move.l     #$1, (a4)
00265c: 200b         move.l     a3, d0
00265e: 6708         beq.b      $2668
002660: 41ef0010     lea.l      $10(a7), a0
002664: b1c4         cmpa.l     d4, a0
002666: 6606         bne.b      $266e
002668: 7000         moveq      #$0, d0
00266a: 6000007a     bra.w      $26e6
00266e: 4a86         tst.l      d6
002670: 6656         bne.b      $26c8
002672: 2044         movea.l    d4, a0
002674: 4210         clr.b      (a0)
002676: 6026         bra.b      $269e
002678: 41ef0010     lea.l      $10(a7), a0
00267c: 2008         move.l     a0, d0
00267e: 61000b78     bsr.w      $31f8
002682: 4e4f         trap       #$f
002684: 002820532080 ori.b      #$53, $2080(a0)
00268a: 6058         bra.b      $26e4
00268c: 41ef0010     lea.l      $10(a7), a0
002690: 2008         move.l     a0, d0
002692: 61000b64     bsr.w      $31f8
002696: 2053         movea.l    (a3), a0
002698: 48d00003     movem.l    d0-d1, (a0)
00269c: 6046         bra.b      $26e4
00269e: 202f008c     move.l     $8c(a7), d0
0026a2: 0c80000000ff cmpi.l     #$ff, d0
0026a8: 623a         bhi.b      $26e4
0026aa: 4a00         tst.b      d0
0026ac: 67ca         beq.b      $2678
0026ae: 0c000001     cmpi.b     #$1, d0
0026b2: 67c4         beq.b      $2678
0026b4: 0c000002     cmpi.b     #$2, d0
0026b8: 67d2         beq.b      $268c
0026ba: 6028         bra.b      $26e4
0026bc: 2053         movea.l    (a3), a0
0026be: 3087         move.w     d7, (a0)
0026c0: 6022         bra.b      $26e4
0026c2: 2053         movea.l    (a3), a0
0026c4: 2087         move.l     d7, (a0)
0026c6: 601c         bra.b      $26e4
0026c8: 202f008c     move.l     $8c(a7), d0
0026cc: 0c80000000ff cmpi.l     #$ff, d0
0026d2: 6210         bhi.b      $26e4
0026d4: 4a00         tst.b      d0
0026d6: 67e4         beq.b      $26bc
0026d8: 0c000001     cmpi.b     #$1, d0
0026dc: 67e4         beq.b      $26c2
0026de: 0c000002     cmpi.b     #$2, d0
0026e2: 67de         beq.b      $26c2
0026e4: 7001         moveq      #$1, d0
0026e6: 4fef0050     lea.l      $50(a7), a7
0026ea: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
0026f0: 4e5d         unlk       a5
0026f2: 4e75         rts        
0026f4: 4e550000     link.w     a5, #$0
0026f8: 48e7ceb8     movem.l    d0-d1/d4-d6/a0/a2-a4, -(a7)
0026fc: 2440         movea.l    d0, a2
0026fe: 266f002c     movea.l    $2c(a7), a3
002702: 286f0038     movea.l    $38(a7), a4
002706: 4294         clr.l      (a4)
002708: 2a0b         move.l     a3, d5
00270a: 7063         moveq      #$63, d0
00270c: b0af0030     cmp.l      $30(a7), d0
002710: 6610         bne.b      $2722
002712: 0caf7fffffff0034 cmpi.l     #$7fffffff, $34(a7)
00271a: 6606         bne.b      $2722
00271c: 7001         moveq      #$1, d0
00271e: 2f400034     move.l     d0, $34(a7)
002722: 7c00         moveq      #$0, d6
002724: 7073         moveq      #$73, d0
002726: b0af0030     cmp.l      $30(a7), d0
00272a: 660a         bne.b      $2736
00272c: 7c01         moveq      #$1, d6
00272e: 6006         bra.b      $2736
002730: 0c04ffff     cmpi.b     #$ff, d4
002734: 6726         beq.b      $275c
002736: 4e92         jsr        (a2)
002738: 1800         move.b     d0, d4
00273a: 4880         ext.w      d0
00273c: 48c0         ext.l      d0
00273e: 41ee82ac     lea.l      -$7d54(a6), a0
002742: 10300800     move.b     (a0, d0.l), d0
002746: 4880         ext.w      d0
002748: 48c0         ext.l      d0
00274a: c086         and.l      d6, d0
00274c: 66e2         bne.b      $2730
00274e: 600c         bra.b      $275c
002750: 7c00         moveq      #$0, d6
002752: 602e         bra.b      $2782
002754: 7c02         moveq      #$2, d6
002756: 602a         bra.b      $2782
002758: 7c01         moveq      #$1, d6
00275a: 6026         bra.b      $2782
00275c: 202f0030     move.l     $30(a7), d0
002760: 0c800000005b cmpi.l     #$5b, d0
002766: 67ec         beq.b      $2754
002768: 0c8000000063 cmpi.l     #$63, d0
00276e: 67e0         beq.b      $2750
002770: 60e6         bra.b      $2758
002772: 200b         move.l     a3, d0
002774: 6702         beq.b      $2778
002776: 16c4         move.b     d4, (a3)+
002778: 53af0034     subq.l     #$1, $34(a7)
00277c: 6f20         ble.b      $279e
00277e: 4e92         jsr        (a2)
002780: 1800         move.b     d0, d4
002782: 0c04ffff     cmpi.b     #$ff, d4
002786: 6716         beq.b      $279e
002788: 1004         move.b     d4, d0
00278a: 4880         ext.w      d0
00278c: 48c0         ext.l      d0
00278e: 41ee82ac     lea.l      -$7d54(a6), a0
002792: 10300800     move.b     (a0, d0.l), d0
002796: 4880         ext.w      d0
002798: 48c0         ext.l      d0
00279a: c086         and.l      d6, d0
00279c: 67d4         beq.b      $2772
00279e: 0c04ffff     cmpi.b     #$ff, d4
0027a2: 6716         beq.b      $27ba
0027a4: 4aaf0034     tst.l      $34(a7)
0027a8: 6f0c         ble.b      $27b6
0027aa: 1004         move.b     d4, d0
0027ac: 4880         ext.w      d0
0027ae: 48c0         ext.l      d0
0027b0: 206f0004     movea.l    $4(a7), a0
0027b4: 4e90         jsr        (a0)
0027b6: 4294         clr.l      (a4)
0027b8: 6006         bra.b      $27c0
0027ba: 28bc00000001 move.l     #$1, (a4)
0027c0: 200b         move.l     a3, d0
0027c2: 6712         beq.b      $27d6
0027c4: b7c5         cmpa.l     d5, a3
0027c6: 670e         beq.b      $27d6
0027c8: 7063         moveq      #$63, d0
0027ca: b0af0030     cmp.l      $30(a7), d0
0027ce: 6702         beq.b      $27d2
0027d0: 421b         clr.b      (a3)+
0027d2: 7001         moveq      #$1, d0
0027d4: 6002         bra.b      $27d8
0027d6: 7000         moveq      #$0, d0
0027d8: 4ced1d70ffe4 movem.l    -$1c(a5), d4-d6/a0/a2-a4
0027de: 4e5d         unlk       a5
0027e0: 4e75         rts        
0027e2: 4e550000     link.w     a5, #$0
0027e6: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
0027ea: 2440         movea.l    d0, a2
0027ec: 7a00         moveq      #$0, d5
0027ee: 0c12005e     cmpi.b     #$5e, (a2)
0027f2: 6604         bne.b      $27f8
0027f4: 7a01         moveq      #$1, d5
0027f6: 528a         addq.l     #$1, a2
0027f8: 7800         moveq      #$0, d4
0027fa: 601c         bra.b      $2818
0027fc: 4a85         tst.l      d5
0027fe: 670c         beq.b      $280c
002800: 41ee82ac     lea.l      -$7d54(a6), a0
002804: 0230fffd4800 andi.b     #$fd, (a0, d4.l)
00280a: 600a         bra.b      $2816
00280c: 41ee82ac     lea.l      -$7d54(a6), a0
002810: 08f000014800 bset.b     #$1, (a0, d4.l)
002816: 5284         addq.l     #$1, d4
002818: 0c8400000080 cmpi.l     #$80, d4
00281e: 6ddc         blt.b      $27fc
002820: 602a         bra.b      $284c
002822: 4a85         tst.l      d5
002824: 6710         beq.b      $2836
002826: 2004         move.l     d4, d0
002828: 5284         addq.l     #$1, d4
00282a: 41ee82ac     lea.l      -$7d54(a6), a0
00282e: 08f000010800 bset.b     #$1, (a0, d0.l)
002834: 600e         bra.b      $2844
002836: 2004         move.l     d4, d0
002838: 5284         addq.l     #$1, d4
00283a: 41ee82ac     lea.l      -$7d54(a6), a0
00283e: 0230fffd0800 andi.b     #$fd, (a0, d0.l)
002844: 4a84         tst.l      d4
002846: 6604         bne.b      $284c
002848: 538a         subq.l     #$1, a2
00284a: 6012         bra.b      $285e
00284c: 101a         move.b     (a2)+, d0
00284e: 4880         ext.w      d0
002850: 48c0         ext.l      d0
002852: 2800         move.l     d0, d4
002854: 727f         moveq      #$7f, d1
002856: c081         and.l      d1, d0
002858: 725d         moveq      #$5d, d1
00285a: b280         cmp.l      d0, d1
00285c: 66c4         bne.b      $2822
00285e: 200a         move.l     a2, d0
002860: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
002866: 4e5d         unlk       a5
002868: 4e75         rts        
00286a: 4e550000     link.w     a5, #$0
00286e: 48e78000     movem.l    d0, -(a7)
002872: 202e8330     move.l     -$7cd0(a6), d0
002876: 610000e6     bsr.w      $295e
00287a: 4e5d         unlk       a5
00287c: 4e75         rts        
00287e: 4e550000     link.w     a5, #$0
002882: 48e7c000     movem.l    d0-d1, -(a7)
002886: 222e8330     move.l     -$7cd0(a6), d1
00288a: 2017         move.l     (a7), d0
00288c: 61000116     bsr.w      $29a4
002890: 4ced0002fffc movem.l    -$4(a5), d1
002896: 4e5d         unlk       a5
002898: 4e75         rts        
00289a: 4e550000     link.w     a5, #$0
00289e: 48e78080     movem.l    d0/a0, -(a7)
0028a2: 206e832c     movea.l    -$7cd4(a6), a0
0028a6: 4a10         tst.b      (a0)
0028a8: 6710         beq.b      $28ba
0028aa: 206e832c     movea.l    -$7cd4(a6), a0
0028ae: 52ae832c     addq.l     #$1, -$7cd4(a6)
0028b2: 1010         move.b     (a0), d0
0028b4: 4880         ext.w      d0
0028b6: 48c0         ext.l      d0
0028b8: 6002         bra.b      $28bc
0028ba: 70ff         moveq      #$ff, d0
0028bc: 4ced0100fffc movem.l    -$4(a5), a0
0028c2: 4e5d         unlk       a5
0028c4: 4e75         rts        
0028c6: 4e550000     link.w     a5, #$0
0028ca: 48e78000     movem.l    d0, -(a7)
0028ce: 53ae832c     subq.l     #$1, -$7cd4(a6)
0028d2: 4e5d         unlk       a5
0028d4: 4e75         rts        
0028d6: 4e550000     link.w     a5, #$0
0028da: 48e7ce30     movem.l    d0-d1/d4-d6/a2-a3, -(a7)
0028de: 2440         movea.l    d0, a2
0028e0: 266f0028     movea.l    $28(a7), a3
0028e4: 7a00         moveq      #$0, d5
0028e6: 601c         bra.b      $2904
0028e8: 282f0004     move.l     $4(a7), d4
0028ec: 6010         bra.b      $28fe
0028ee: 200b         move.l     a3, d0
0028f0: 6100006c     bsr.w      $295e
0028f4: 2c00         move.l     d0, d6
0028f6: 72ff         moveq      #$ff, d1
0028f8: b280         cmp.l      d0, d1
0028fa: 670e         beq.b      $290a
0028fc: 14c6         move.b     d6, (a2)+
0028fe: 5384         subq.l     #$1, d4
002900: 6cec         bge.b      $28ee
002902: 5285         addq.l     #$1, d5
002904: baaf0024     cmp.l      $24(a7), d5
002908: 6dde         blt.b      $28e8
00290a: 2005         move.l     d5, d0
00290c: 4ced0c70ffec movem.l    -$14(a5), d4-d6/a2-a3
002912: 4e5d         unlk       a5
002914: 4e75         rts        
002916: 4e550000     link.w     a5, #$0
00291a: 48e7cc30     movem.l    d0-d1/d4-d5/a2-a3, -(a7)
00291e: 2440         movea.l    d0, a2
002920: 266f0024     movea.l    $24(a7), a3
002924: 7800         moveq      #$0, d4
002926: 6024         bra.b      $294c
002928: 7a00         moveq      #$0, d5
00292a: 6014         bra.b      $2940
00292c: 220b         move.l     a3, d1
00292e: 101a         move.b     (a2)+, d0
002930: 4880         ext.w      d0
002932: 48c0         ext.l      d0
002934: 610001bc     bsr.w      $2af2
002938: 082b0005000d btst.b     #$5, $d(a3)
00293e: 6612         bne.b      $2952
002940: 2005         move.l     d5, d0
002942: 5285         addq.l     #$1, d5
002944: b0af0004     cmp.l      $4(a7), d0
002948: 6de2         blt.b      $292c
00294a: 5284         addq.l     #$1, d4
00294c: b8af0020     cmp.l      $20(a7), d4
002950: 6dd6         blt.b      $2928
002952: 2004         move.l     d4, d0
002954: 4ced0c30fff0 movem.l    -$10(a5), d4-d5/a2-a3
00295a: 4e5d         unlk       a5
00295c: 4e75         rts        
00295e: 4e550000     link.w     a5, #$0
002962: 48e780a0     movem.l    d0/a0/a2, -(a7)
002966: 2440         movea.l    d0, a2
002968: 200a         move.l     a2, d0
00296a: 670c         beq.b      $2978
00296c: 302a000c     move.w     $c(a2), d0
002970: 48c0         ext.l      d0
002972: 08000008     btst.b     #$8, d0
002976: 6704         beq.b      $297c
002978: 70ff         moveq      #$ff, d0
00297a: 601e         bra.b      $299a
00297c: 2012         move.l     (a2), d0
00297e: b0aa0008     cmp.l      $8(a2), d0
002982: 6410         bcc.b      $2994
002984: 2052         movea.l    (a2), a0
002986: 5292         addq.l     #$1, (a2)
002988: 1010         move.b     (a0), d0
00298a: 4880         ext.w      d0
00298c: 024000ff     andi.w     #$ff, d0
002990: 48c0         ext.l      d0
002992: 6006         bra.b      $299a
002994: 200a         move.l     a2, d0
002996: 61000080     bsr.w      $2a18
00299a: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0029a0: 4e5d         unlk       a5
0029a2: 4e75         rts        
0029a4: 4e550000     link.w     a5, #$0
0029a8: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0029ac: 2441         movea.l    d1, a2
0029ae: 200a         move.l     a2, d0
0029b0: 6716         beq.b      $29c8
0029b2: 082a0000000d btst.b     #$0, $d(a2)
0029b8: 670e         beq.b      $29c8
0029ba: 70ff         moveq      #$ff, d0
0029bc: b097         cmp.l      (a7), d0
0029be: 6708         beq.b      $29c8
0029c0: 2012         move.l     (a2), d0
0029c2: b0aa0004     cmp.l      $4(a2), d0
0029c6: 6204         bhi.b      $29cc
0029c8: 70ff         moveq      #$ff, d0
0029ca: 600a         bra.b      $29d6
0029cc: 5392         subq.l     #$1, (a2)
0029ce: 2052         movea.l    (a2), a0
0029d0: 10af0003     move.b     $3(a7), (a0)
0029d4: 2017         move.l     (a7), d0
0029d6: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0029dc: 4e5d         unlk       a5
0029de: 4e75         rts        
0029e0: 4e550000     link.w     a5, #$0
0029e4: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
0029e8: 2440         movea.l    d0, a2
0029ea: 200a         move.l     a2, d0
0029ec: 6100ff70     bsr.w      $295e
0029f0: 2800         move.l     d0, d4
0029f2: 72ff         moveq      #$ff, d1
0029f4: b280         cmp.l      d0, d1
0029f6: 670c         beq.b      $2a04
0029f8: 200a         move.l     a2, d0
0029fa: 6100ff62     bsr.w      $295e
0029fe: 2a00         move.l     d0, d5
002a00: b280         cmp.l      d0, d1
002a02: 6604         bne.b      $2a08
002a04: 70ff         moveq      #$ff, d0
002a06: 6006         bra.b      $2a0e
002a08: 2004         move.l     d4, d0
002a0a: e188         lsl.l      #$8, d0
002a0c: d085         add.l      d5, d0
002a0e: 4ced0432fff0 movem.l    -$10(a5), d1/d4-d5/a2
002a14: 4e5d         unlk       a5
002a16: 4e75         rts        
002a18: 4e550000     link.w     a5, #$0
002a1c: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002a20: 2440         movea.l    d0, a2
002a22: 302a000c     move.w     $c(a2), d0
002a26: 48c0         ext.l      d0
002a28: 028000008031 andi.l     #$8031, d0
002a2e: 0c8000008001 cmpi.l     #$8001, d0
002a34: 6714         beq.b      $2a4a
002a36: 7031         moveq      #$31, d0
002a38: c06a000c     and.w      $c(a2), d0
002a3c: 0c400001     cmpi.w     #$1, d0
002a40: 66000082     bne.w      $2ac4
002a44: 200a         move.l     a2, d0
002a46: 61000426     bsr.w      $2e6e
002a4a: b5ee8018     cmpa.l     -$7fe8(a6), a2
002a4e: 6622         bne.b      $2a72
002a50: 206e8018     movea.l    -$7fe8(a6), a0
002a54: 30280028     move.w     $28(a0), d0
002a58: 48c0         ext.l      d0
002a5a: 0800000f     btst.b     #$f, d0
002a5e: 6712         beq.b      $2a72
002a60: 082a0007000d btst.b     #$7, $d(a2)
002a66: 660a         bne.b      $2a72
002a68: 701c         moveq      #$1c, d0
002a6a: d0ae8018     add.l      -$7fe8(a6), d0
002a6e: 6100031a     bsr.w      $2d8a
002a72: 082a0003000d btst.b     #$3, $d(a2)
002a78: 6718         beq.b      $2a92
002a7a: 306a0012     movea.w    $12(a2), a0
002a7e: 2f08         move.l     a0, -(a7)
002a80: 222a0004     move.l     $4(a2), d1
002a84: 306a000e     movea.w    $e(a2), a0
002a88: 2008         move.l     a0, d0
002a8a: 206a0014     movea.l    $14(a2), a0
002a8e: 4e90         jsr        (a0)
002a90: 6018         bra.b      $2aaa
002a92: 48780001     pea.l      $1.w
002a96: 7010         moveq      #$10, d0
002a98: d08a         add.l      a2, d0
002a9a: 25400004     move.l     d0, $4(a2)
002a9e: 2200         move.l     d0, d1
002aa0: 306a000e     movea.w    $e(a2), a0
002aa4: 2008         move.l     a0, d0
002aa6: 6100150c     bsr.w      $3fb4
002aaa: 588f         addq.l     #$4, a7
002aac: 2800         move.l     d0, d4
002aae: 4a84         tst.l      d4
002ab0: 6608         bne.b      $2aba
002ab2: 08ea0004000d bset.b     #$4, $d(a2)
002ab8: 600a         bra.b      $2ac4
002aba: 4a84         tst.l      d4
002abc: 6c0a         bge.b      $2ac8
002abe: 08ea0005000d bset.b     #$5, $d(a2)
002ac4: 70ff         moveq      #$ff, d0
002ac6: 6020         bra.b      $2ae8
002ac8: 202a0004     move.l     $4(a2), d0
002acc: 5280         addq.l     #$1, d0
002ace: 2480         move.l     d0, (a2)
002ad0: 202a0004     move.l     $4(a2), d0
002ad4: d084         add.l      d4, d0
002ad6: 25400008     move.l     d0, $8(a2)
002ada: 206a0004     movea.l    $4(a2), a0
002ade: 1010         move.b     (a0), d0
002ae0: 4880         ext.w      d0
002ae2: 024000ff     andi.w     #$ff, d0
002ae6: 48c0         ext.l      d0
002ae8: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
002aee: 4e5d         unlk       a5
002af0: 4e75         rts        
002af2: 4e550000     link.w     a5, #$0
002af6: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002afa: 2441         movea.l    d1, a2
002afc: 302a000c     move.w     $c(a2), d0
002b00: 48c0         ext.l      d0
002b02: 028000008022 andi.l     #$8022, d0
002b08: 0c8000008002 cmpi.l     #$8002, d0
002b0e: 6714         beq.b      $2b24
002b10: 7022         moveq      #$22, d0
002b12: c06a000c     and.w      $c(a2), d0
002b16: 0c400002     cmpi.w     #$2, d0
002b1a: 66000070     bne.w      $2b8c
002b1e: 200a         move.l     a2, d0
002b20: 6100034c     bsr.w      $2e6e
002b24: 082a0002000d btst.b     #$2, $d(a2)
002b2a: 6726         beq.b      $2b52
002b2c: 48780001     pea.l      $1.w
002b30: 41ef0007     lea.l      $7(a7), a0
002b34: 2208         move.l     a0, d1
002b36: 306a000e     movea.w    $e(a2), a0
002b3a: 2008         move.l     a0, d0
002b3c: 206a0018     movea.l    $18(a2), a0
002b40: 4e90         jsr        (a0)
002b42: 588f         addq.l     #$4, a7
002b44: 72ff         moveq      #$ff, d1
002b46: b280         cmp.l      d0, d1
002b48: 6646         bne.b      $2b90
002b4a: 08ea0005000d bset.b     #$5, $d(a2)
002b50: 603a         bra.b      $2b8c
002b52: 302a000c     move.w     $c(a2), d0
002b56: 48c0         ext.l      d0
002b58: 08000008     btst.b     #$8, d0
002b5c: 6606         bne.b      $2b64
002b5e: 200a         move.l     a2, d0
002b60: 61000266     bsr.w      $2dc8
002b64: 2052         movea.l    (a2), a0
002b66: 5292         addq.l     #$1, (a2)
002b68: 10af0003     move.b     $3(a7), (a0)
002b6c: 2012         move.l     (a2), d0
002b6e: b0aa0008     cmp.l      $8(a2), d0
002b72: 640e         bcc.b      $2b82
002b74: 082a0007000d btst.b     #$7, $d(a2)
002b7a: 6614         bne.b      $2b90
002b7c: 700d         moveq      #$d, d0
002b7e: b097         cmp.l      (a7), d0
002b80: 660e         bne.b      $2b90
002b82: 200a         move.l     a2, d0
002b84: 61000242     bsr.w      $2dc8
002b88: 4a80         tst.l      d0
002b8a: 6704         beq.b      $2b90
002b8c: 70ff         moveq      #$ff, d0
002b8e: 6002         bra.b      $2b92
002b90: 2017         move.l     (a7), d0
002b92: 4ced0500fff8 movem.l    -$8(a5), a0/a2
002b98: 4e5d         unlk       a5
002b9a: 4e75         rts        
002b9c: 4e550000     link.w     a5, #$0
002ba0: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
002ba4: 2800         move.l     d0, d4
002ba6: 2441         movea.l    d1, a2
002ba8: 220a         move.l     a2, d1
002baa: 2004         move.l     d4, d0
002bac: e088         lsr.l      #$8, d0
002bae: 6100ff42     bsr.w      $2af2
002bb2: 220a         move.l     a2, d1
002bb4: 2004         move.l     d4, d0
002bb6: 6100ff3a     bsr.w      $2af2
002bba: 4ced0410fff8 movem.l    -$8(a5), d4/a2
002bc0: 4e5d         unlk       a5
002bc2: 4e75         rts        
002bc4: 4e550000     link.w     a5, #$0
002bc8: 48e78020     movem.l    d0/a2, -(a7)
002bcc: 246e8018     movea.l    -$7fe8(a6), a2
002bd0: 600a         bra.b      $2bdc
002bd2: 200a         move.l     a2, d0
002bd4: 611e         bsr.b      $2bf4
002bd6: d5fc0000001c adda.l     #$1c, a2
002bdc: 203c00000380 move.l     #$380, d0
002be2: d0ae8018     add.l      -$7fe8(a6), d0
002be6: b08a         cmp.l      a2, d0
002be8: 62e8         bhi.b      $2bd2
002bea: 4ced0400fffc movem.l    -$4(a5), a2
002bf0: 4e5d         unlk       a5
002bf2: 4e75         rts        
002bf4: 4e550000     link.w     a5, #$0
002bf8: 48e788a0     movem.l    d0/d4/a0/a2, -(a7)
002bfc: 2440         movea.l    d0, a2
002bfe: 7800         moveq      #$0, d4
002c00: 200a         move.l     a2, d0
002c02: 6762         beq.b      $2c66
002c04: 302a000c     move.w     $c(a2), d0
002c08: 48c0         ext.l      d0
002c0a: 0800000f     btst.b     #$f, d0
002c0e: 6712         beq.b      $2c22
002c10: 082a0001000d btst.b     #$1, $d(a2)
002c16: 6710         beq.b      $2c28
002c18: 200a         move.l     a2, d0
002c1a: 6100016e     bsr.w      $2d8a
002c1e: 2800         move.l     d0, d4
002c20: 6006         bra.b      $2c28
002c22: 4a6a000c     tst.w      $c(a2)
002c26: 670a         beq.b      $2c32
002c28: 306a000e     movea.w    $e(a2), a0
002c2c: 2008         move.l     a0, d0
002c2e: 610012a0     bsr.w      $3ed0
002c32: 302a000c     move.w     $c(a2), d0
002c36: 48c0         ext.l      d0
002c38: 08000009     btst.b     #$9, d0
002c3c: 6708         beq.b      $2c46
002c3e: 202a0004     move.l     $4(a2), d0
002c42: 61000acc     bsr.w      $3710
002c46: 7000         moveq      #$0, d0
002c48: 25400008     move.l     d0, $8(a2)
002c4c: 2480         move.l     d0, (a2)
002c4e: 25400004     move.l     d0, $4(a2)
002c52: 3540000c     move.w     d0, $c(a2)
002c56: 35400012     move.w     d0, $12(a2)
002c5a: 25400018     move.l     d0, $18(a2)
002c5e: 25400014     move.l     d0, $14(a2)
002c62: 2004         move.l     d4, d0
002c64: 6002         bra.b      $2c68
002c66: 70ff         moveq      #$ff, d0
002c68: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
002c6e: 4e5d         unlk       a5
002c70: 4e75         rts        
002c72: 4e550000     link.w     a5, #$0
002c76: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
002c7a: 2440         movea.l    d0, a2
002c7c: 2801         move.l     d1, d4
002c7e: 200a         move.l     a2, d0
002c80: 670000d8     beq.w      $2d5a
002c84: 7003         moveq      #$3, d0
002c86: c06a000c     and.w      $c(a2), d0
002c8a: 670000ce     beq.w      $2d5a
002c8e: 302a000c     move.w     $c(a2), d0
002c92: 48c0         ext.l      d0
002c94: 0800000f     btst.b     #$f, d0
002c98: 660a         bne.b      $2ca4
002c9a: 200a         move.l     a2, d0
002c9c: 610001d0     bsr.w      $2e6e
002ca0: 6000009a     bra.w      $2d3c
002ca4: 302a000c     move.w     $c(a2), d0
002ca8: 48c0         ext.l      d0
002caa: 08000008     btst.b     #$8, d0
002cae: 6722         beq.b      $2cd2
002cb0: 200a         move.l     a2, d0
002cb2: 610000d6     bsr.w      $2d8a
002cb6: 026afeff000c andi.w     #$feff, $c(a2)
002cbc: 202a0004     move.l     $4(a2), d0
002cc0: 322a0012     move.w     $12(a2), d1
002cc4: 48c1         ext.l      d1
002cc6: d081         add.l      d1, d0
002cc8: 25400008     move.l     d0, $8(a2)
002ccc: 2480         move.l     d0, (a2)
002cce: 6000006c     bra.w      $2d3c
002cd2: 2012         move.l     (a2), d0
002cd4: b0aa0008     cmp.l      $8(a2), d0
002cd8: 6462         bcc.b      $2d3c
002cda: 2a04         move.l     d4, d5
002cdc: 603a         bra.b      $2d18
002cde: 200a         move.l     a2, d0
002ce0: 610002e2     bsr.w      $2fc4
002ce4: 9a80         sub.l      d0, d5
002ce6: 4a85         tst.l      d5
002ce8: 6c06         bge.b      $2cf0
002cea: 2005         move.l     d5, d0
002cec: 4480         neg.l      d0
002cee: 6002         bra.b      $2cf2
002cf0: 2005         move.l     d5, d0
002cf2: 322a0012     move.w     $12(a2), d1
002cf6: 48c1         ext.l      d1
002cf8: b081         cmp.l      d1, d0
002cfa: 6e2c         bgt.b      $2d28
002cfc: 2012         move.l     (a2), d0
002cfe: d085         add.l      d5, d0
002d00: 2640         movea.l    d0, a3
002d02: b7ea0004     cmpa.l     $4(a2), a3
002d06: 6520         bcs.b      $2d28
002d08: b7ea0008     cmpa.l     $8(a2), a3
002d0c: 641a         bcc.b      $2d28
002d0e: 248b         move.l     a3, (a2)
002d10: 026affef000c andi.w     #$ffef, $c(a2)
002d16: 6046         bra.b      $2d5e
002d18: 202f0024     move.l     $24(a7), d0
002d1c: 4a80         tst.l      d0
002d1e: 67be         beq.b      $2cde
002d20: 0c8000000001 cmpi.l     #$1, d0
002d26: 67be         beq.b      $2ce6
002d28: 7001         moveq      #$1, d0
002d2a: b0af0024     cmp.l      $24(a7), d0
002d2e: 6608         bne.b      $2d38
002d30: 202a0008     move.l     $8(a2), d0
002d34: 9092         sub.l      (a2), d0
002d36: 9880         sub.l      d0, d4
002d38: 24aa0008     move.l     $8(a2), (a2)
002d3c: 026affef000c andi.w     #$ffef, $c(a2)
002d42: 2f2f0024     move.l     $24(a7), -(a7)
002d46: 2204         move.l     d4, d1
002d48: 306a000e     movea.w    $e(a2), a0
002d4c: 2008         move.l     a0, d0
002d4e: 610012ce     bsr.w      $401e
002d52: 588f         addq.l     #$4, a7
002d54: 72ff         moveq      #$ff, d1
002d56: b280         cmp.l      d0, d1
002d58: 6604         bne.b      $2d5e
002d5a: 70ff         moveq      #$ff, d0
002d5c: 6002         bra.b      $2d60
002d5e: 7000         moveq      #$0, d0
002d60: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
002d66: 4e5d         unlk       a5
002d68: 4e75         rts        
002d6a: 4e550000     link.w     a5, #$0
002d6e: 48e7c000     movem.l    d0-d1, -(a7)
002d72: 42a7         clr.l      -(a7)
002d74: 7200         moveq      #$0, d1
002d76: 202f0004     move.l     $4(a7), d0
002d7a: 6100fef6     bsr.w      $2c72
002d7e: 588f         addq.l     #$4, a7
002d80: 4ced0002fffc movem.l    -$4(a5), d1
002d86: 4e5d         unlk       a5
002d88: 4e75         rts        
002d8a: 4e550000     link.w     a5, #$0
002d8e: 48e78020     movem.l    d0/a2, -(a7)
002d92: 2440         movea.l    d0, a2
002d94: 200a         move.l     a2, d0
002d96: 670c         beq.b      $2da4
002d98: 7022         moveq      #$22, d0
002d9a: c06a000c     and.w      $c(a2), d0
002d9e: 0c400002     cmpi.w     #$2, d0
002da2: 6704         beq.b      $2da8
002da4: 70ff         moveq      #$ff, d0
002da6: 6016         bra.b      $2dbe
002da8: 302a000c     move.w     $c(a2), d0
002dac: 48c0         ext.l      d0
002dae: 0800000f     btst.b     #$f, d0
002db2: 6606         bne.b      $2dba
002db4: 200a         move.l     a2, d0
002db6: 610000b6     bsr.w      $2e6e
002dba: 200a         move.l     a2, d0
002dbc: 610a         bsr.b      $2dc8
002dbe: 4ced0400fffc movem.l    -$4(a5), a2
002dc4: 4e5d         unlk       a5
002dc6: 4e75         rts        
002dc8: 4e550000     link.w     a5, #$0
002dcc: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
002dd0: 2440         movea.l    d0, a2
002dd2: 302a000c     move.w     $c(a2), d0
002dd6: 48c0         ext.l      d0
002dd8: 08000008     btst.b     #$8, d0
002ddc: 661e         bne.b      $2dfc
002dde: 2012         move.l     (a2), d0
002de0: b0aa0008     cmp.l      $8(a2), d0
002de4: 6716         beq.b      $2dfc
002de6: 42a7         clr.l      -(a7)
002de8: 200a         move.l     a2, d0
002dea: 610001d8     bsr.w      $2fc4
002dee: 2200         move.l     d0, d1
002df0: 306a000e     movea.w    $e(a2), a0
002df4: 2008         move.l     a0, d0
002df6: 61001226     bsr.w      $401e
002dfa: 588f         addq.l     #$4, a7
002dfc: 2012         move.l     (a2), d0
002dfe: 90aa0004     sub.l      $4(a2), d0
002e02: 2800         move.l     d0, d4
002e04: 4a84         tst.l      d4
002e06: 6742         beq.b      $2e4a
002e08: 302a000c     move.w     $c(a2), d0
002e0c: 48c0         ext.l      d0
002e0e: 08000008     btst.b     #$8, d0
002e12: 6736         beq.b      $2e4a
002e14: 24aa0004     move.l     $4(a2), (a2)
002e18: 602c         bra.b      $2e46
002e1a: 2f04         move.l     d4, -(a7)
002e1c: 2212         move.l     (a2), d1
002e1e: 306a000e     movea.w    $e(a2), a0
002e22: 2008         move.l     a0, d0
002e24: 206a0018     movea.l    $18(a2), a0
002e28: 4e90         jsr        (a0)
002e2a: 588f         addq.l     #$4, a7
002e2c: 2a00         move.l     d0, d5
002e2e: 72ff         moveq      #$ff, d1
002e30: b280         cmp.l      d0, d1
002e32: 660e         bne.b      $2e42
002e34: 08ea0005000d bset.b     #$5, $d(a2)
002e3a: 24aa0004     move.l     $4(a2), (a2)
002e3e: 70ff         moveq      #$ff, d0
002e40: 6022         bra.b      $2e64
002e42: 9885         sub.l      d5, d4
002e44: db92         add.l      d5, (a2)
002e46: 4a84         tst.l      d4
002e48: 6ed0         bgt.b      $2e1a
002e4a: 08ea0000000c bset.b     #$0, $c(a2)
002e50: 202a0004     move.l     $4(a2), d0
002e54: 2480         move.l     d0, (a2)
002e56: 322a0012     move.w     $12(a2), d1
002e5a: 48c1         ext.l      d1
002e5c: d081         add.l      d1, d0
002e5e: 25400008     move.l     d0, $8(a2)
002e62: 7000         moveq      #$0, d0
002e64: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
002e6a: 4e5d         unlk       a5
002e6c: 4e75         rts        
002e6e: 4e550000     link.w     a5, #$0
002e72: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002e76: 2440         movea.l    d0, a2
002e78: 303c00c0     move.w     #$c0, d0
002e7c: c06a000c     and.w      $c(a2), d0
002e80: 6638         bne.b      $2eba
002e82: 4fefff80     lea.l      -$80(a7), a7
002e86: 41d7         lea.l      (a7), a0
002e88: 2208         move.l     a0, d1
002e8a: 306a000e     movea.w    $e(a2), a0
002e8e: 2008         move.l     a0, d0
002e90: 61000e7e     bsr.w      $3d10
002e94: 6010         bra.b      $2ea6
002e96: 08ea0006000d bset.b     #$6, $d(a2)
002e9c: 6018         bra.b      $2eb6
002e9e: 08ea0007000d bset.b     #$7, $d(a2)
002ea4: 6010         bra.b      $2eb6
002ea6: 1017         move.b     (a7), d0
002ea8: 4880         ext.w      d0
002eaa: 4a40         tst.w      d0
002eac: 67e8         beq.b      $2e96
002eae: 0c400002     cmpi.w     #$2, d0
002eb2: 67e2         beq.b      $2e96
002eb4: 60e8         bra.b      $2e9e
002eb6: 4fef0080     lea.l      $80(a7), a7
002eba: 08ea0007000c bset.b     #$7, $c(a2)
002ec0: 082a0007000d btst.b     #$7, $d(a2)
002ec6: 670e         beq.b      $2ed6
002ec8: 41fa10ea     lea.l      $3fb4(pc), a0
002ecc: 25480014     move.l     a0, $14(a2)
002ed0: 41fa111c     lea.l      $3fee(pc), a0
002ed4: 600c         bra.b      $2ee2
002ed6: 41fa10fc     lea.l      $3fd4(pc), a0
002eda: 25480014     move.l     a0, $14(a2)
002ede: 41fa1126     lea.l      $4006(pc), a0
002ee2: 25480018     move.l     a0, $18(a2)
002ee6: 4a6a0012     tst.w      $12(a2)
002eea: 6616         bne.b      $2f02
002eec: 082a0007000d btst.b     #$7, $d(a2)
002ef2: 6708         beq.b      $2efc
002ef4: 357c02000012 move.w     #$200, $12(a2)
002efa: 6006         bra.b      $2f02
002efc: 357c01000012 move.w     #$100, $12(a2)
002f02: 4aaa0004     tst.l      $4(a2)
002f06: 662a         bne.b      $2f32
002f08: 082a0002000d btst.b     #$2, $d(a2)
002f0e: 6704         beq.b      $2f14
002f10: 7000         moveq      #$0, d0
002f12: 600a         bra.b      $2f1e
002f14: 306a0012     movea.w    $12(a2), a0
002f18: 2008         move.l     a0, d0
002f1a: 610005b2     bsr.w      $34ce
002f1e: 2200         move.l     d0, d1
002f20: 200a         move.l     a2, d0
002f22: 6118         bsr.b      $2f3c
002f24: 082a0003000d btst.b     #$3, $d(a2)
002f2a: 6706         beq.b      $2f32
002f2c: 08ea0001000c bset.b     #$1, $c(a2)
002f32: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
002f38: 4e5d         unlk       a5
002f3a: 4e75         rts        
002f3c: 4e550000     link.w     a5, #$0
002f40: 48e7c020     movem.l    d0-d1/a2, -(a7)
002f44: 2440         movea.l    d0, a2
002f46: 302a000c     move.w     $c(a2), d0
002f4a: 48c0         ext.l      d0
002f4c: 08000008     btst.b     #$8, d0
002f50: 6706         beq.b      $2f58
002f52: 200a         move.l     a2, d0
002f54: 6100fe34     bsr.w      $2d8a
002f58: 302a000c     move.w     $c(a2), d0
002f5c: 48c0         ext.l      d0
002f5e: 08000009     btst.b     #$9, d0
002f62: 670e         beq.b      $2f72
002f64: 202a0004     move.l     $4(a2), d0
002f68: 610007a6     bsr.w      $3710
002f6c: 026afdff000c andi.w     #$fdff, $c(a2)
002f72: 026afef3000c andi.w     #$fef3, $c(a2)
002f78: 256f00040004 move.l     $4(a7), $4(a2)
002f7e: 6714         beq.b      $2f94
002f80: 08ea0003000d bset.b     #$3, $d(a2)
002f86: 4a6a0012     tst.w      $12(a2)
002f8a: 661c         bne.b      $2fa8
002f8c: 357c02000012 move.w     #$200, $12(a2)
002f92: 6014         bra.b      $2fa8
002f94: 7010         moveq      #$10, d0
002f96: d08a         add.l      a2, d0
002f98: 25400004     move.l     d0, $4(a2)
002f9c: 08ea0002000d bset.b     #$2, $d(a2)
002fa2: 357c00010012 move.w     #$1, $12(a2)
002fa8: 202a0004     move.l     $4(a2), d0
002fac: 322a0012     move.w     $12(a2), d1
002fb0: 48c1         ext.l      d1
002fb2: d081         add.l      d1, d0
002fb4: 25400008     move.l     d0, $8(a2)
002fb8: 2480         move.l     d0, (a2)
002fba: 4ced0400fffc movem.l    -$4(a5), a2
002fc0: 4e5d         unlk       a5
002fc2: 4e75         rts        
002fc4: 4e550000     link.w     a5, #$0
002fc8: 48e7e0a0     movem.l    d0-d2/a0/a2, -(a7)
002fcc: 2440         movea.l    d0, a2
002fce: 200a         move.l     a2, d0
002fd0: 6708         beq.b      $2fda
002fd2: 7003         moveq      #$3, d0
002fd4: c06a000c     and.w      $c(a2), d0
002fd8: 6604         bne.b      $2fde
002fda: 70ff         moveq      #$ff, d0
002fdc: 6044         bra.b      $3022
002fde: 302a000c     move.w     $c(a2), d0
002fe2: 48c0         ext.l      d0
002fe4: 0800000f     btst.b     #$f, d0
002fe8: 6606         bne.b      $2ff0
002fea: 200a         move.l     a2, d0
002fec: 6100fe80     bsr.w      $2e6e
002ff0: 48780001     pea.l      $1.w
002ff4: 7200         moveq      #$0, d1
002ff6: 306a000e     movea.w    $e(a2), a0
002ffa: 2008         move.l     a0, d0
002ffc: 61001020     bsr.w      $401e
003000: 588f         addq.l     #$4, a7
003002: 2200         move.l     d0, d1
003004: 302a000c     move.w     $c(a2), d0
003008: 48c0         ext.l      d0
00300a: 08000008     btst.b     #$8, d0
00300e: 6706         beq.b      $3016
003010: 202a0004     move.l     $4(a2), d0
003014: 6004         bra.b      $301a
003016: 202a0008     move.l     $8(a2), d0
00301a: 2412         move.l     (a2), d2
00301c: 9480         sub.l      d0, d2
00301e: d282         add.l      d2, d1
003020: 2001         move.l     d1, d0
003022: 4ced0506fff0 movem.l    -$10(a5), d1-d2/a0/a2
003028: 4e5d         unlk       a5
00302a: 4e75         rts        
00302c: 2f08         move.l     a0, -(a7)
00302e: 2040         movea.l    d0, a0
003030: b300         eor.b      d1, d0
003032: 08000000     btst.b     #$0, d0
003036: 6652         bne.b      $308a
003038: 08010000     btst.b     #$0, d1
00303c: c389         exg.l      d1, a1
00303e: 6718         beq.b      $3058
003040: b109         cmpm.b     (a1)+, (a0)+
003042: 6530         bcs.b      $3074
003044: 6220         bhi.b      $3066
003046: 4a28ffff     tst.b      -$1(a0)
00304a: 660c         bne.b      $3058
00304c: 6034         bra.b      $3082
00304e: 4a00         tst.b      d0
003050: 6730         beq.b      $3082
003052: 0c4000ff     cmpi.w     #$ff, d0
003056: 632a         bls.b      $3082
003058: 3018         move.w     (a0)+, d0
00305a: b059         cmp.w      (a1)+, d0
00305c: 67f0         beq.b      $304e
00305e: 650e         bcs.b      $306e
003060: 0c4000ff     cmpi.w     #$ff, d0
003064: 6316         bls.b      $307c
003066: 7001         moveq      #$1, d0
003068: 205f         movea.l    (a7)+, a0
00306a: c389         exg.l      d1, a1
00306c: 4e75         rts        
00306e: 0c4000ff     cmpi.w     #$ff, d0
003072: 6308         bls.b      $307c
003074: 70ff         moveq      #$ff, d0
003076: 205f         movea.l    (a7)+, a0
003078: c389         exg.l      d1, a1
00307a: 4e75         rts        
00307c: 4a29fffe     tst.b      -$2(a1)
003080: 66f2         bne.b      $3074
003082: 7000         moveq      #$0, d0
003084: 205f         movea.l    (a7)+, a0
003086: c389         exg.l      d1, a1
003088: 4e75         rts        
00308a: c389         exg.l      d1, a1
00308c: 7000         moveq      #$0, d0
00308e: 1018         move.b     (a0)+, d0
003090: b019         cmp.b      (a1)+, d0
003092: 56c8fffa     dbne       d0, $308e
003096: 65dc         bcs.b      $3074
003098: 5240         addq.w     #$1, d0
00309a: 205f         movea.l    (a7)+, a0
00309c: c389         exg.l      d1, a1
00309e: 4e75         rts        
0030a0: 2f08         move.l     a0, -(a7)
0030a2: 2040         movea.l    d0, a0
0030a4: 4a18         tst.b      (a0)+
0030a6: 670c         beq.b      $30b4
0030a8: 4a18         tst.b      (a0)+
0030aa: 6708         beq.b      $30b4
0030ac: 4a18         tst.b      (a0)+
0030ae: 6704         beq.b      $30b4
0030b0: 4a18         tst.b      (a0)+
0030b2: 66f0         bne.b      $30a4
0030b4: 91c0         suba.l     d0, a0
0030b6: 2008         move.l     a0, d0
0030b8: 5380         subq.l     #$1, d0
0030ba: 205f         movea.l    (a7)+, a0
0030bc: 4e75         rts        
0030be: 2f08         move.l     a0, -(a7)
0030c0: 2040         movea.l    d0, a0
0030c2: c389         exg.l      d1, a1
0030c4: 10d9         move.b     (a1)+, (a0)+
0030c6: 670c         beq.b      $30d4
0030c8: 10d9         move.b     (a1)+, (a0)+
0030ca: 6708         beq.b      $30d4
0030cc: 10d9         move.b     (a1)+, (a0)+
0030ce: 6704         beq.b      $30d4
0030d0: 10d9         move.b     (a1)+, (a0)+
0030d2: 66f0         bne.b      $30c4
0030d4: 205f         movea.l    (a7)+, a0
0030d6: c389         exg.l      d1, a1
0030d8: 4e75         rts        
0030da: 2f08         move.l     a0, -(a7)
0030dc: 2040         movea.l    d0, a0
0030de: c389         exg.l      d1, a1
0030e0: 4a18         tst.b      (a0)+
0030e2: 670c         beq.b      $30f0
0030e4: 4a18         tst.b      (a0)+
0030e6: 6708         beq.b      $30f0
0030e8: 4a18         tst.b      (a0)+
0030ea: 6704         beq.b      $30f0
0030ec: 4a18         tst.b      (a0)+
0030ee: 66f0         bne.b      $30e0
0030f0: 1159ffff     move.b     (a1)+, -$1(a0)
0030f4: 66ce         bne.b      $30c4
0030f6: 60dc         bra.b      $30d4
0030f8: 2f08         move.l     a0, -(a7)
0030fa: 2040         movea.l    d0, a0
0030fc: c389         exg.l      d1, a1
0030fe: 10d9         move.b     (a1)+, (a0)+
003100: 6afc         bpl.b      $30fe
003102: 4210         clr.b      (a0)
003104: 0220007f     andi.b     #$7f, -(a0)
003108: 205f         movea.l    (a7)+, a0
00310a: c389         exg.l      d1, a1
00310c: 4e75         rts        
00310e: 4e550000     link.w     a5, #$0
003112: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
003116: 2440         movea.l    d0, a2
003118: 2641         movea.l    d1, a3
00311a: 282f0020     move.l     $20(a7), d4
00311e: 284a         movea.l    a2, a4
003120: 5384         subq.l     #$1, d4
003122: 6d08         blt.b      $312c
003124: 18db         move.b     (a3)+, (a4)+
003126: 66f8         bne.b      $3120
003128: 6002         bra.b      $312c
00312a: 421c         clr.b      (a4)+
00312c: 5384         subq.l     #$1, d4
00312e: 6cfa         bge.b      $312a
003130: 200a         move.l     a2, d0
003132: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
003138: 4e5d         unlk       a5
00313a: 4e75         rts        
00313c: 4e550000     link.w     a5, #$0
003140: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
003144: 2440         movea.l    d0, a2
003146: 2641         movea.l    d1, a3
003148: 282f001c     move.l     $1c(a7), d4
00314c: 6006         bra.b      $3154
00314e: 4a1b         tst.b      (a3)+
003150: 6710         beq.b      $3162
003152: 528a         addq.l     #$1, a2
003154: 5384         subq.l     #$1, d4
003156: 6d06         blt.b      $315e
003158: 1012         move.b     (a2), d0
00315a: b013         cmp.b      (a3), d0
00315c: 67f0         beq.b      $314e
00315e: 4a84         tst.l      d4
003160: 6c04         bge.b      $3166
003162: 7000         moveq      #$0, d0
003164: 600e         bra.b      $3174
003166: 1013         move.b     (a3), d0
003168: 4880         ext.w      d0
00316a: 1212         move.b     (a2), d1
00316c: 4881         ext.w      d1
00316e: 9240         sub.w      d0, d1
003170: 48c1         ext.l      d1
003172: 2001         move.l     d1, d0
003174: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
00317a: 4e5d         unlk       a5
00317c: 4e75         rts        
00317e: 4e550000     link.w     a5, #$0
003182: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
003186: 2440         movea.l    d0, a2
003188: 2641         movea.l    d1, a3
00318a: 282f0020     move.l     $20(a7), d4
00318e: 284a         movea.l    a2, a4
003190: 4a1c         tst.b      (a4)+
003192: 66fc         bne.b      $3190
003194: 538c         subq.l     #$1, a4
003196: 5384         subq.l     #$1, d4
003198: 6d04         blt.b      $319e
00319a: 18db         move.b     (a3)+, (a4)+
00319c: 66f8         bne.b      $3196
00319e: 4a84         tst.l      d4
0031a0: 6c02         bge.b      $31a4
0031a2: 4214         clr.b      (a4)
0031a4: 200a         move.l     a2, d0
0031a6: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
0031ac: 4e5d         unlk       a5
0031ae: 4e75         rts        
0031b0: 4e550000     link.w     a5, #$0
0031b4: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
0031b8: 2440         movea.l    d0, a2
0031ba: 2801         move.l     d1, d4
0031bc: b812         cmp.b      (a2), d4
0031be: 6604         bne.b      $31c4
0031c0: 200a         move.l     a2, d0
0031c2: 6006         bra.b      $31ca
0031c4: 4a1a         tst.b      (a2)+
0031c6: 66f4         bne.b      $31bc
0031c8: 7000         moveq      #$0, d0
0031ca: 4ced0410fff8 movem.l    -$8(a5), d4/a2
0031d0: 4e5d         unlk       a5
0031d2: 4e75         rts        
0031d4: 4e550000     link.w     a5, #$0
0031d8: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
0031dc: 2440         movea.l    d0, a2
0031de: 2801         move.l     d1, d4
0031e0: 97cb         suba.l     a3, a3
0031e2: b812         cmp.b      (a2), d4
0031e4: 6602         bne.b      $31e8
0031e6: 264a         movea.l    a2, a3
0031e8: 4a1a         tst.b      (a2)+
0031ea: 66f6         bne.b      $31e2
0031ec: 200b         move.l     a3, d0
0031ee: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0031f4: 4e5d         unlk       a5
0031f6: 4e75         rts        
0031f8: 4e550000     link.w     a5, #$0
0031fc: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
003200: 2440         movea.l    d0, a2
003202: 518f         subq.l     #$8, a7
003204: 282e800c     move.l     -$7ff4(a6), d4
003208: 7200         moveq      #$0, d1
00320a: 200a         move.l     a2, d0
00320c: 6100001a     bsr.w      $3228
003210: 48d70003     movem.l    d0-d1, (a7)
003214: 2d44800c     move.l     d4, -$7ff4(a6)
003218: 4cd70003     movem.l    (a7), d0-d1
00321c: 508f         addq.l     #$8, a7
00321e: 4ced0410fff8 movem.l    -$8(a5), d4/a2
003224: 4e5d         unlk       a5
003226: 4e75         rts        
003228: 4e550000     link.w     a5, #$0
00322c: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
003230: 2441         movea.l    d1, a2
003232: 4feffff0     lea.l      -$10(a7), a7
003236: 7800         moveq      #$0, d4
003238: 42af000c     clr.l      $c(a7)
00323c: 42af0008     clr.l      $8(a7)
003240: 7a01         moveq      #$1, d5
003242: 206f0010     movea.l    $10(a7), a0
003246: 52af0010     addq.l     #$1, $10(a7)
00324a: 1010         move.b     (a0), d0
00324c: 4880         ext.w      d0
00324e: 48c0         ext.l      d0
003250: 41ee8511     lea.l      -$7aef(a6), a0
003254: 10300800     move.b     (a0, d0.l), d0
003258: 4880         ext.w      d0
00325a: 08000004     btst.b     #$4, d0
00325e: 66e2         bne.b      $3242
003260: 6026         bra.b      $3288
003262: 5284         addq.l     #$1, d4
003264: 52af0010     addq.l     #$1, $10(a7)
003268: 6042         bra.b      $32ac
00326a: 206f0010     movea.l    $10(a7), a0
00326e: 1010         move.b     (a0), d0
003270: 4880         ext.w      d0
003272: 48c0         ext.l      d0
003274: 41ee8511     lea.l      -$7aef(a6), a0
003278: 10300800     move.b     (a0, d0.l), d0
00327c: 4880         ext.w      d0
00327e: 08000003     btst.b     #$3, d0
003282: 6628         bne.b      $32ac
003284: 5385         subq.l     #$1, d5
003286: 6024         bra.b      $32ac
003288: 53af0010     subq.l     #$1, $10(a7)
00328c: 206f0010     movea.l    $10(a7), a0
003290: 1010         move.b     (a0), d0
003292: 4880         ext.w      d0
003294: 0c4000ff     cmpi.w     #$ff, d0
003298: 62d0         bhi.b      $326a
00329a: 0c00002b     cmpi.b     #$2b, d0
00329e: 67c4         beq.b      $3264
0032a0: 0c00002d     cmpi.b     #$2d, d0
0032a4: 67bc         beq.b      $3262
0032a6: 0c00002e     cmpi.b     #$2e, d0
0032aa: 66be         bne.b      $326a
0032ac: 4a85         tst.l      d5
0032ae: 6738         beq.b      $32e8
0032b0: 601a         bra.b      $32cc
0032b2: 2f6f0004000c move.l     $4(a7), $c(a7)
0032b8: 2f570008     move.l     (a7), $8(a7)
0032bc: 602a         bra.b      $32e8
0032be: 2017         move.l     (a7), d0
0032c0: 4e4f         trap       #$f
0032c2: 002248ef     ori.b      #$ef, -(a2)
0032c6: 00030008     ori.b      #$8, d3
0032ca: 601c         bra.b      $32e8
0032cc: 41d7         lea.l      (a7), a0
0032ce: 2208         move.l     a0, d1
0032d0: 41ef0010     lea.l      $10(a7), a0
0032d4: 2008         move.l     a0, d0
0032d6: 613e         bsr.b      $3316
0032d8: 0c8000000001 cmpi.l     #$1, d0
0032de: 67de         beq.b      $32be
0032e0: 0c8000000002 cmpi.l     #$2, d0
0032e6: 67ca         beq.b      $32b2
0032e8: 200a         move.l     a2, d0
0032ea: 6704         beq.b      $32f0
0032ec: 24af0010     move.l     $10(a7), (a2)
0032f0: 4a84         tst.l      d4
0032f2: 6710         beq.b      $3304
0032f4: 4cef00030008 movem.l    $8(a7), d0-d1
0032fa: 4e4f         trap       #$f
0032fc: 001548ef     ori.b      #$ef, (a5)
003300: 00030008     ori.b      #$8, d3
003304: 4cef00030008 movem.l    $8(a7), d0-d1
00330a: 4fef0010     lea.l      $10(a7), a7
00330e: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
003314: 6024         bra.b      $333a
003316: 4e550000     link.w     a5, #$0
00331a: 48e700e0     movem.l    a0-a2, -(a7)
00331e: 2440         movea.l    d0, a2
003320: 2052         movea.l    (a2), a0
003322: 2241         movea.l    d1, a1
003324: 4e4f         trap       #$f
003326: 001648d1     ori.b      #$d1, (a6)
00332a: 00036804     ori.b      #$4, d3
00332e: 7002         moveq      #$2, d0
003330: 6002         bra.b      $3334
003332: 7001         moveq      #$1, d0
003334: 2488         move.l     a0, (a2)
003336: 4cdf0700     movem.l    (a7)+, a0-a2
00333a: 4e5d         unlk       a5
00333c: 4e75         rts        
00333e: 4e550000     link.w     a5, #$0
003342: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
003346: 2440         movea.l    d0, a2
003348: 49ee8500     lea.l      -$7b00(a6), a4
00334c: 266e8500     movea.l    -$7b00(a6), a3
003350: 6068         bra.b      $33ba
003352: 202a0004     move.l     $4(a2), d0
003356: e788         lsl.l      #$3, d0
003358: d08a         add.l      a2, d0
00335a: b08b         cmp.l      a3, d0
00335c: 6630         bne.b      $338e
00335e: 288a         move.l     a2, (a4)
003360: 2493         move.l     (a3), (a2)
003362: 202b0004     move.l     $4(a3), d0
003366: d1aa0004     add.l      d0, $4(a2)
00336a: 7208         moveq      #$8, d1
00336c: 200b         move.l     a3, d0
00336e: 6100048a     bsr.w      $37fa
003372: 202c0004     move.l     $4(a4), d0
003376: e788         lsl.l      #$3, d0
003378: d08c         add.l      a4, d0
00337a: b08a         cmp.l      a2, d0
00337c: 6644         bne.b      $33c2
00337e: 202a0004     move.l     $4(a2), d0
003382: d1ac0004     add.l      d0, $4(a4)
003386: 2892         move.l     (a2), (a4)
003388: 7208         moveq      #$8, d1
00338a: 200b         move.l     a3, d0
00338c: 6018         bra.b      $33a6
00338e: 202b0004     move.l     $4(a3), d0
003392: e788         lsl.l      #$3, d0
003394: d08b         add.l      a3, d0
003396: b08a         cmp.l      a2, d0
003398: 6612         bne.b      $33ac
00339a: 202a0004     move.l     $4(a2), d0
00339e: d1ab0004     add.l      d0, $4(a3)
0033a2: 7208         moveq      #$8, d1
0033a4: 200a         move.l     a2, d0
0033a6: 61000452     bsr.w      $37fa
0033aa: 6016         bra.b      $33c2
0033ac: b7ca         cmpa.l     a2, a3
0033ae: 6406         bcc.b      $33b6
0033b0: 288a         move.l     a2, (a4)
0033b2: 248b         move.l     a3, (a2)
0033b4: 600c         bra.b      $33c2
0033b6: 284b         movea.l    a3, a4
0033b8: 2653         movea.l    (a3), a3
0033ba: 200b         move.l     a3, d0
0033bc: 6694         bne.b      $3352
0033be: 288a         move.l     a2, (a4)
0033c0: 4292         clr.l      (a2)
0033c2: 4ced1c02fff0 movem.l    -$10(a5), d1/a2-a4
0033c8: 4e5d         unlk       a5
0033ca: 4e75         rts        
0033cc: 4e550000     link.w     a5, #$0
0033d0: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
0033d4: 2800         move.l     d0, d4
0033d6: 5284         addq.l     #$1, d4
0033d8: b8ae8334     cmp.l      -$7ccc(a6), d4
0033dc: 6404         bcc.b      $33e2
0033de: 282e8334     move.l     -$7ccc(a6), d4
0033e2: 2004         move.l     d4, d0
0033e4: e788         lsl.l      #$3, d0
0033e6: 6100cdbc     bsr.w      $1a4
0033ea: 2440         movea.l    d0, a2
0033ec: 72ff         moveq      #$ff, d1
0033ee: b280         cmp.l      d0, d1
0033f0: 6604         bne.b      $33f6
0033f2: 7000         moveq      #$0, d0
0033f4: 6024         bra.b      $341a
0033f6: 202e802c     move.l     -$7fd4(a6), d0
0033fa: e688         lsr.l      #$3, d0
0033fc: 25400004     move.l     d0, $4(a2)
003400: 200a         move.l     a2, d0
003402: 6100ff3a     bsr.w      $333e
003406: 202e802c     move.l     -$7fd4(a6), d0
00340a: 5180         subq.l     #$8, d0
00340c: 2200         move.l     d0, d1
00340e: 200a         move.l     a2, d0
003410: 5080         addq.l     #$8, d0
003412: 610003e6     bsr.w      $37fa
003416: 202e8508     move.l     -$7af8(a6), d0
00341a: 4ced0412fff4 movem.l    -$c(a5), d1/d4/a2
003420: 4e5d         unlk       a5
003422: 4e75         rts        
003424: 4e550000     link.w     a5, #$0
003428: 48e78c30     movem.l    d0/d4-d5/a2-a3, -(a7)
00342c: 2800         move.l     d0, d4
00342e: 2004         move.l     d4, d0
003430: 5e80         addq.l     #$7, d0
003432: e688         lsr.l      #$3, d0
003434: 2a00         move.l     d0, d5
003436: 4aae8508     tst.l      -$7af8(a6)
00343a: 6602         bne.b      $343e
00343c: 614c         bsr.b      $348a
00343e: 266e8508     movea.l    -$7af8(a6), a3
003442: 6018         bra.b      $345c
003444: b5ee8508     cmpa.l     -$7af8(a6), a2
003448: 6610         bne.b      $345a
00344a: 2005         move.l     d5, d0
00344c: 6100ff7e     bsr.w      $33cc
003450: 2440         movea.l    d0, a2
003452: 4a80         tst.l      d0
003454: 6604         bne.b      $345a
003456: 7000         moveq      #$0, d0
003458: 6026         bra.b      $3480
00345a: 264a         movea.l    a2, a3
00345c: 2453         movea.l    (a3), a2
00345e: baaa0004     cmp.l      $4(a2), d5
003462: 62e0         bhi.b      $3444
003464: baaa0004     cmp.l      $4(a2), d5
003468: 6604         bne.b      $346e
00346a: 2692         move.l     (a2), (a3)
00346c: 600c         bra.b      $347a
00346e: 9baa0004     sub.l      d5, $4(a2)
003472: 202a0004     move.l     $4(a2), d0
003476: e788         lsl.l      #$3, d0
003478: d5c0         adda.l     d0, a2
00347a: 2d4b8508     move.l     a3, -$7af8(a6)
00347e: 200a         move.l     a2, d0
003480: 4ced0c30fff0 movem.l    -$10(a5), d4-d5/a2-a3
003486: 4e5d         unlk       a5
003488: 4e75         rts        
00348a: 4e550000     link.w     a5, #$0
00348e: 48e7c080     movem.l    d0-d1/a0, -(a7)
003492: 598f         subq.l     #$4, a7
003494: 41ee84f8     lea.l      -$7b08(a6), a0
003498: 2d488508     move.l     a0, -$7af8(a6)
00349c: 7204         moveq      #$4, d1
00349e: 707c         moveq      #$7c, d0
0034a0: 61000d36     bsr.w      $41d8
0034a4: 6c02         bge.b      $34a8
0034a6: 5e80         addq.l     #$7, d0
0034a8: e680         asr.l      #$3, d0
0034aa: 2e80         move.l     d0, (a7)
0034ac: b0ae850c     cmp.l      -$7af4(a6), d0
0034b0: 6304         bls.b      $34b6
0034b2: 2d57850c     move.l     (a7), -$7af4(a6)
0034b6: 202e850c     move.l     -$7af4(a6), d0
0034ba: 2d408338     move.l     d0, -$7cc8(a6)
0034be: 2d408334     move.l     d0, -$7ccc(a6)
0034c2: 588f         addq.l     #$4, a7
0034c4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0034ca: 4e5d         unlk       a5
0034cc: 4e75         rts        
0034ce: 4e550000     link.w     a5, #$0
0034d2: 48e78820     movem.l    d0/d4/a2, -(a7)
0034d6: 2800         move.l     d0, d4
0034d8: 4a84         tst.l      d4
0034da: 6604         bne.b      $34e0
0034dc: 7000         moveq      #$0, d0
0034de: 6022         bra.b      $3502
0034e0: 5084         addq.l     #$8, d4
0034e2: 2004         move.l     d4, d0
0034e4: 6100ff3e     bsr.w      $3424
0034e8: 2440         movea.l    d0, a2
0034ea: 4a80         tst.l      d0
0034ec: 6712         beq.b      $3500
0034ee: 2004         move.l     d4, d0
0034f0: 5e80         addq.l     #$7, d0
0034f2: e688         lsr.l      #$3, d0
0034f4: 25400004     move.l     d0, $4(a2)
0034f8: 24bc8765abcd move.l     #$8765abcd, (a2)
0034fe: 508a         addq.l     #$8, a2
003500: 200a         move.l     a2, d0
003502: 4ced0410fff8 movem.l    -$8(a5), d4/a2
003508: 4e5d         unlk       a5
00350a: 4e75         rts        
00350c: 4e550000     link.w     a5, #$0
003510: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
003514: 2440         movea.l    d0, a2
003516: 2801         move.l     d1, d4
003518: 2a2f0030     move.l     $30(a7), d5
00351c: 4feffff4     lea.l      -$c(a7), a7
003520: 200a         move.l     a2, d0
003522: 660a         bne.b      $352e
003524: 2004         move.l     d4, d0
003526: 6100fefc     bsr.w      $3424
00352a: 6000013a     bra.w      $3666
00352e: 4a84         tst.l      d4
003530: 660a         bne.b      $353c
003532: 2205         move.l     d5, d1
003534: 200a         move.l     a2, d0
003536: 610001a2     bsr.w      $36da
00353a: 600c         bra.b      $3548
00353c: 2205         move.l     d5, d1
00353e: 200a         move.l     a2, d0
003540: 61000348     bsr.w      $388a
003544: 4a80         tst.l      d0
003546: 6606         bne.b      $354e
003548: 7000         moveq      #$0, d0
00354a: 6000011a     bra.w      $3666
00354e: 264a         movea.l    a2, a3
003550: 2005         move.l     d5, d0
003552: 5e80         addq.l     #$7, d0
003554: e688         lsr.l      #$3, d0
003556: 2e00         move.l     d0, d7
003558: 2004         move.l     d4, d0
00355a: 5e80         addq.l     #$7, d0
00355c: e688         lsr.l      #$3, d0
00355e: 2f400008     move.l     d0, $8(a7)
003562: beaf0008     cmp.l      $8(a7), d7
003566: 6522         bcs.b      $358a
003568: beaf0008     cmp.l      $8(a7), d7
00356c: 63000094     bls.w      $3602
003570: 2007         move.l     d7, d0
003572: 90af0008     sub.l      $8(a7), d0
003576: e788         lsl.l      #$3, d0
003578: 2200         move.l     d0, d1
00357a: 202f0008     move.l     $8(a7), d0
00357e: e788         lsl.l      #$3, d0
003580: d08b         add.l      a3, d0
003582: 61000156     bsr.w      $36da
003586: 6000007a     bra.w      $3602
00358a: 286e8508     movea.l    -$7af8(a6), a4
00358e: 6002         bra.b      $3592
003590: 2854         movea.l    (a4), a4
003592: b7cc         cmpa.l     a4, a3
003594: 6306         bls.b      $359c
003596: b7d4         cmpa.l     (a4), a3
003598: 650a         bcs.b      $35a4
00359a: 6004         bra.b      $35a0
00359c: b7d4         cmpa.l     (a4), a3
00359e: 64f0         bcc.b      $3590
0035a0: b9d4         cmpa.l     (a4), a4
0035a2: 65ec         bcs.b      $3590
0035a4: 2c14         move.l     (a4), d6
0035a6: 2007         move.l     d7, d0
0035a8: e788         lsl.l      #$3, d0
0035aa: d08b         add.l      a3, d0
0035ac: b086         cmp.l      d6, d0
0035ae: 6656         bne.b      $3606
0035b0: 2046         movea.l    d6, a0
0035b2: 20280004     move.l     $4(a0), d0
0035b6: d087         add.l      d7, d0
0035b8: b0af0008     cmp.l      $8(a7), d0
0035bc: 6548         bcs.b      $3606
0035be: 2046         movea.l    d6, a0
0035c0: 20280004     move.l     $4(a0), d0
0035c4: d087         add.l      d7, d0
0035c6: b0af0008     cmp.l      $8(a7), d0
0035ca: 632e         bls.b      $35fa
0035cc: 2046         movea.l    d6, a0
0035ce: 202f0008     move.l     $8(a7), d0
0035d2: e788         lsl.l      #$3, d0
0035d4: 27900800     move.l     (a0), (a3, d0.l)
0035d8: 2046         movea.l    d6, a0
0035da: 20280004     move.l     $4(a0), d0
0035de: d087         add.l      d7, d0
0035e0: 90af0008     sub.l      $8(a7), d0
0035e4: 222f0008     move.l     $8(a7), d1
0035e8: e789         lsl.l      #$3, d1
0035ea: 27801804     move.l     d0, $4(a3, d1.l)
0035ee: 202f0008     move.l     $8(a7), d0
0035f2: e788         lsl.l      #$3, d0
0035f4: d08b         add.l      a3, d0
0035f6: 2880         move.l     d0, (a4)
0035f8: 6004         bra.b      $35fe
0035fa: 2046         movea.l    d6, a0
0035fc: 2890         move.l     (a0), (a4)
0035fe: 2d4c8508     move.l     a4, -$7af8(a6)
003602: 200b         move.l     a3, d0
003604: 6060         bra.b      $3666
003606: 2e93         move.l     (a3), (a7)
003608: 2f6b00040004 move.l     $4(a3), $4(a7)
00360e: 2205         move.l     d5, d1
003610: 200b         move.l     a3, d0
003612: 610001e6     bsr.w      $37fa
003616: 2840         movea.l    d0, a4
003618: 2004         move.l     d4, d0
00361a: 6100fe08     bsr.w      $3424
00361e: 2c00         move.l     d0, d6
003620: 6738         beq.b      $365a
003622: 2046         movea.l    d6, a0
003624: 2097         move.l     (a7), (a0)
003626: 216f00040004 move.l     $4(a7), $4(a0)
00362c: 2007         move.l     d7, d0
00362e: 5380         subq.l     #$1, d0
003630: e788         lsl.l      #$3, d0
003632: 2f00         move.l     d0, -(a7)
003634: 200b         move.l     a3, d0
003636: 5080         addq.l     #$8, d0
003638: 2200         move.l     d0, d1
00363a: 2006         move.l     d6, d0
00363c: 5080         addq.l     #$8, d0
00363e: 6100038c     bsr.w      $39cc
003642: 588f         addq.l     #$4, a7
003644: 200c         move.l     a4, d0
003646: 671c         beq.b      $3664
003648: b9c6         cmpa.l     d6, a4
00364a: 6512         bcs.b      $365e
00364c: 202f0008     move.l     $8(a7), d0
003650: e788         lsl.l      #$3, d0
003652: d086         add.l      d6, d0
003654: b08c         cmp.l      a4, d0
003656: 620c         bhi.b      $3664
003658: 6004         bra.b      $365e
00365a: 200c         move.l     a4, d0
00365c: 6706         beq.b      $3664
00365e: 200c         move.l     a4, d0
003660: 610002fa     bsr.w      $395c
003664: 2006         move.l     d6, d0
003666: 4fef000c     lea.l      $c(a7), a7
00366a: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
003670: 4e5d         unlk       a5
003672: 4e75         rts        
003674: 4e550000     link.w     a5, #$0
003678: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
00367c: 2440         movea.l    d0, a2
00367e: 2801         move.l     d1, d4
003680: 200a         move.l     a2, d0
003682: 6608         bne.b      $368c
003684: 2004         move.l     d4, d0
003686: 6100fe46     bsr.w      $34ce
00368a: 6044         bra.b      $36d0
00368c: 200a         move.l     a2, d0
00368e: 08000000     btst.b     #$0, d0
003692: 6610         bne.b      $36a4
003694: 200a         move.l     a2, d0
003696: 5180         subq.l     #$8, d0
003698: 2640         movea.l    d0, a3
00369a: 2040         movea.l    d0, a0
00369c: 0c908765abcd cmpi.l     #$8765abcd, (a0)
0036a2: 6704         beq.b      $36a8
0036a4: 7000         moveq      #$0, d0
0036a6: 6028         bra.b      $36d0
0036a8: 202b0004     move.l     $4(a3), d0
0036ac: e788         lsl.l      #$3, d0
0036ae: 2f00         move.l     d0, -(a7)
0036b0: 5084         addq.l     #$8, d4
0036b2: 2204         move.l     d4, d1
0036b4: 200b         move.l     a3, d0
0036b6: 6100fe54     bsr.w      $350c
0036ba: 588f         addq.l     #$4, a7
0036bc: 2640         movea.l    d0, a3
0036be: 4a80         tst.l      d0
0036c0: 670c         beq.b      $36ce
0036c2: 2004         move.l     d4, d0
0036c4: 5e80         addq.l     #$7, d0
0036c6: e688         lsr.l      #$3, d0
0036c8: 27400004     move.l     d0, $4(a3)
0036cc: 508b         addq.l     #$8, a3
0036ce: 200b         move.l     a3, d0
0036d0: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
0036d6: 4e5d         unlk       a5
0036d8: 4e75         rts        
0036da: 4e550000     link.w     a5, #$0
0036de: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
0036e2: 2440         movea.l    d0, a2
0036e4: 2801         move.l     d1, d4
0036e6: 2204         move.l     d4, d1
0036e8: 200a         move.l     a2, d0
0036ea: 6100019e     bsr.w      $388a
0036ee: 4a80         tst.l      d0
0036f0: 6714         beq.b      $3706
0036f2: 2204         move.l     d4, d1
0036f4: 200a         move.l     a2, d0
0036f6: 61000102     bsr.w      $37fa
0036fa: 2640         movea.l    d0, a3
0036fc: 4a80         tst.l      d0
0036fe: 6706         beq.b      $3706
003700: 200b         move.l     a3, d0
003702: 61000258     bsr.w      $395c
003706: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
00370c: 4e5d         unlk       a5
00370e: 4e75         rts        
003710: 4e550000     link.w     a5, #$0
003714: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
003718: 2440         movea.l    d0, a2
00371a: 200a         move.l     a2, d0
00371c: 6724         beq.b      $3742
00371e: 200a         move.l     a2, d0
003720: 08000000     btst.b     #$0, d0
003724: 661c         bne.b      $3742
003726: 200a         move.l     a2, d0
003728: 5180         subq.l     #$8, d0
00372a: 2640         movea.l    d0, a3
00372c: 2040         movea.l    d0, a0
00372e: 0c908765abcd cmpi.l     #$8765abcd, (a0)
003734: 660c         bne.b      $3742
003736: 202b0004     move.l     $4(a3), d0
00373a: e788         lsl.l      #$3, d0
00373c: 2200         move.l     d0, d1
00373e: 200b         move.l     a3, d0
003740: 6198         bsr.b      $36da
003742: 4ced0d02fff0 movem.l    -$10(a5), d1/a0/a2-a3
003748: 4e5d         unlk       a5
00374a: 4e75         rts        
00374c: 4e550000     link.w     a5, #$0
003750: 48e7c800     movem.l    d0-d1/d4, -(a7)
003754: 2800         move.l     d0, d4
003756: 4aae8508     tst.l      -$7af8(a6)
00375a: 6604         bne.b      $3760
00375c: 6100fd2c     bsr.w      $348a
003760: 4a84         tst.l      d4
003762: 6c0a         bge.b      $376e
003764: 2d7c800000008338 move.l     #$80000000, -$7cc8(a6)
00376c: 6032         bra.b      $37a0
00376e: 4a84         tst.l      d4
003770: 6c02         bge.b      $3774
003772: 5e84         addq.l     #$7, d4
003774: e684         asr.l      #$3, d4
003776: b8ae850c     cmp.l      -$7af4(a6), d4
00377a: 6524         bcs.b      $37a0
00377c: 2004         move.l     d4, d0
00377e: d0ae850c     add.l      -$7af4(a6), d0
003782: 5380         subq.l     #$1, d0
003784: 222e850c     move.l     -$7af4(a6), d1
003788: 6100047c     bsr.w      $3c06
00378c: 2d408338     move.l     d0, -$7cc8(a6)
003790: 202e850c     move.l     -$7af4(a6), d0
003794: 222e8338     move.l     -$7cc8(a6), d1
003798: 610003fa     bsr.w      $3b94
00379c: 2d408338     move.l     d0, -$7cc8(a6)
0037a0: 4ced0012fff8 movem.l    -$8(a5), d1/d4
0037a6: 4e5d         unlk       a5
0037a8: 4e75         rts        
0037aa: 4e550000     link.w     a5, #$0
0037ae: 48e7c800     movem.l    d0-d1/d4, -(a7)
0037b2: 2800         move.l     d0, d4
0037b4: 4aae8508     tst.l      -$7af8(a6)
0037b8: 6604         bne.b      $37be
0037ba: 6100fcce     bsr.w      $348a
0037be: 4a84         tst.l      d4
0037c0: 6c02         bge.b      $37c4
0037c2: 5e84         addq.l     #$7, d4
0037c4: e684         asr.l      #$3, d4
0037c6: b8ae850c     cmp.l      -$7af4(a6), d4
0037ca: 6524         bcs.b      $37f0
0037cc: 2004         move.l     d4, d0
0037ce: d0ae850c     add.l      -$7af4(a6), d0
0037d2: 5380         subq.l     #$1, d0
0037d4: 222e850c     move.l     -$7af4(a6), d1
0037d8: 6100042c     bsr.w      $3c06
0037dc: 2d408334     move.l     d0, -$7ccc(a6)
0037e0: 202e850c     move.l     -$7af4(a6), d0
0037e4: 222e8334     move.l     -$7ccc(a6), d1
0037e8: 610003aa     bsr.w      $3b94
0037ec: 2d408334     move.l     d0, -$7ccc(a6)
0037f0: 4ced0012fff8 movem.l    -$8(a5), d1/d4
0037f6: 4e5d         unlk       a5
0037f8: 4e75         rts        
0037fa: 4e550000     link.w     a5, #$0
0037fe: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003802: 2440         movea.l    d0, a2
003804: 2801         move.l     d1, d4
003806: 284a         movea.l    a2, a4
003808: 2004         move.l     d4, d0
00380a: 5e80         addq.l     #$7, d0
00380c: e688         lsr.l      #$3, d0
00380e: 2800         move.l     d0, d4
003810: 266e8508     movea.l    -$7af8(a6), a3
003814: 6002         bra.b      $3818
003816: 2653         movea.l    (a3), a3
003818: b5cb         cmpa.l     a3, a2
00381a: 6306         bls.b      $3822
00381c: b5d3         cmpa.l     (a3), a2
00381e: 650a         bcs.b      $382a
003820: 6004         bra.b      $3826
003822: b5d3         cmpa.l     (a3), a2
003824: 64f0         bcc.b      $3816
003826: b7d3         cmpa.l     (a3), a3
003828: 65ec         bcs.b      $3816
00382a: 2004         move.l     d4, d0
00382c: e788         lsl.l      #$3, d0
00382e: d08a         add.l      a2, d0
003830: b093         cmp.l      (a3), d0
003832: 6612         bne.b      $3846
003834: 2053         movea.l    (a3), a0
003836: 20280004     move.l     $4(a0), d0
00383a: d084         add.l      d4, d0
00383c: 25400004     move.l     d0, $4(a2)
003840: 2053         movea.l    (a3), a0
003842: 2490         move.l     (a0), (a2)
003844: 6006         bra.b      $384c
003846: 25440004     move.l     d4, $4(a2)
00384a: 2493         move.l     (a3), (a2)
00384c: 202b0004     move.l     $4(a3), d0
003850: e788         lsl.l      #$3, d0
003852: d08b         add.l      a3, d0
003854: b08a         cmp.l      a2, d0
003856: 660e         bne.b      $3866
003858: 202a0004     move.l     $4(a2), d0
00385c: d1ab0004     add.l      d0, $4(a3)
003860: 2692         move.l     (a2), (a3)
003862: 284b         movea.l    a3, a4
003864: 6002         bra.b      $3868
003866: 268a         move.l     a2, (a3)
003868: 2d4b8508     move.l     a3, -$7af8(a6)
00386c: 202e8338     move.l     -$7cc8(a6), d0
003870: 5380         subq.l     #$1, d0
003872: b0ac0004     cmp.l      $4(a4), d0
003876: 6204         bhi.b      $387c
003878: 204c         movea.l    a4, a0
00387a: 6002         bra.b      $387e
00387c: 91c8         suba.l     a0, a0
00387e: 2008         move.l     a0, d0
003880: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
003886: 4e5d         unlk       a5
003888: 4e75         rts        
00388a: 4e550000     link.w     a5, #$0
00388e: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
003892: 2440         movea.l    d0, a2
003894: 2801         move.l     d1, d4
003896: 4aae8508     tst.l      -$7af8(a6)
00389a: 6738         beq.b      $38d4
00389c: 200a         move.l     a2, d0
00389e: 6734         beq.b      $38d4
0038a0: 200a         move.l     a2, d0
0038a2: 08000000     btst.b     #$0, d0
0038a6: 662c         bne.b      $38d4
0038a8: 2004         move.l     d4, d0
0038aa: 5e80         addq.l     #$7, d0
0038ac: e688         lsr.l      #$3, d0
0038ae: e788         lsl.l      #$3, d0
0038b0: d08a         add.l      a2, d0
0038b2: 2840         movea.l    d0, a4
0038b4: 266e8500     movea.l    -$7b00(a6), a3
0038b8: 6016         bra.b      $38d0
0038ba: b5cb         cmpa.l     a3, a2
0038bc: 6310         bls.b      $38ce
0038be: 202b0004     move.l     $4(a3), d0
0038c2: e788         lsl.l      #$3, d0
0038c4: d08b         add.l      a3, d0
0038c6: b08c         cmp.l      a4, d0
0038c8: 6504         bcs.b      $38ce
0038ca: 7001         moveq      #$1, d0
0038cc: 6008         bra.b      $38d6
0038ce: 2653         movea.l    (a3), a3
0038d0: 200b         move.l     a3, d0
0038d2: 66e6         bne.b      $38ba
0038d4: 7000         moveq      #$0, d0
0038d6: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
0038dc: 4e5d         unlk       a5
0038de: 4e75         rts        
0038e0: 4e550000     link.w     a5, #$0
0038e4: 48e7ee20     movem.l    d0-d2/d4-d6/a2, -(a7)
0038e8: 2800         move.l     d0, d4
0038ea: 2a01         move.l     d1, d5
0038ec: 7201         moveq      #$1, d1
0038ee: 2401         move.l     d1, d2
0038f0: 2004         move.l     d4, d0
0038f2: 2205         move.l     d5, d1
0038f4: 6100029e     bsr.w      $3b94
0038f8: 5080         addq.l     #$8, d0
0038fa: 2c00         move.l     d0, d6
0038fc: 2202         move.l     d2, d1
0038fe: 6124         bsr.b      $3924
003900: 2440         movea.l    d0, a2
003902: 4a80         tst.l      d0
003904: 6712         beq.b      $3918
003906: 2006         move.l     d6, d0
003908: 5e80         addq.l     #$7, d0
00390a: e688         lsr.l      #$3, d0
00390c: 25400004     move.l     d0, $4(a2)
003910: 24bc8765abcd move.l     #$8765abcd, (a2)
003916: 508a         addq.l     #$8, a2
003918: 200a         move.l     a2, d0
00391a: 4ced0474ffec movem.l    -$14(a5), d2/d4-d6/a2
003920: 4e5d         unlk       a5
003922: 4e75         rts        
003924: 4e550000     link.w     a5, #$0
003928: 48e7ce20     movem.l    d0-d1/d4-d6/a2, -(a7)
00392c: 2800         move.l     d0, d4
00392e: 2a01         move.l     d1, d5
003930: 2004         move.l     d4, d0
003932: 2205         move.l     d5, d1
003934: 6100025e     bsr.w      $3b94
003938: 2c00         move.l     d0, d6
00393a: 6100fae8     bsr.w      $3424
00393e: 2440         movea.l    d0, a2
003940: 4a80         tst.l      d0
003942: 670c         beq.b      $3950
003944: 2f06         move.l     d6, -(a7)
003946: 7200         moveq      #$0, d1
003948: 200a         move.l     a2, d0
00394a: 61000192     bsr.w      $3ade
00394e: 588f         addq.l     #$4, a7
003950: 200a         move.l     a2, d0
003952: 4ced0470fff0 movem.l    -$10(a5), d4-d6/a2
003958: 4e5d         unlk       a5
00395a: 4e75         rts        
00395c: 4e550000     link.w     a5, #$0
003960: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003964: 2440         movea.l    d0, a2
003966: 202a0004     move.l     $4(a2), d0
00396a: 5280         addq.l     #$1, d0
00396c: b0aafffc     cmp.l      -$4(a2), d0
003970: 6650         bne.b      $39c2
003972: 200a         move.l     a2, d0
003974: 5180         subq.l     #$8, d0
003976: 2840         movea.l    d0, a4
003978: 41ee8500     lea.l      -$7b00(a6), a0
00397c: 2808         move.l     a0, d4
00397e: 266e8500     movea.l    -$7b00(a6), a3
003982: 6008         bra.b      $398c
003984: b7cc         cmpa.l     a4, a3
003986: 6708         beq.b      $3990
003988: 280b         move.l     a3, d4
00398a: 2653         movea.l    (a3), a3
00398c: 200b         move.l     a3, d0
00398e: 66f4         bne.b      $3984
003990: 200b         move.l     a3, d0
003992: 672e         beq.b      $39c2
003994: 2044         movea.l    d4, a0
003996: 2093         move.l     (a3), (a0)
003998: 282e8508     move.l     -$7af8(a6), d4
00399c: 6004         bra.b      $39a2
00399e: 2044         movea.l    d4, a0
0039a0: 2810         move.l     (a0), d4
0039a2: 2044         movea.l    d4, a0
0039a4: b5d0         cmpa.l     (a0), a2
0039a6: 66f6         bne.b      $399e
0039a8: b5ee8508     cmpa.l     -$7af8(a6), a2
0039ac: 6604         bne.b      $39b2
0039ae: 2d448508     move.l     d4, -$7af8(a6)
0039b2: 2044         movea.l    d4, a0
0039b4: 2092         move.l     (a2), (a0)
0039b6: 220b         move.l     a3, d1
0039b8: 202b0004     move.l     $4(a3), d0
0039bc: e788         lsl.l      #$3, d0
0039be: 6100c7fe     bsr.w      $1be
0039c2: 4ced1d12ffe8 movem.l    -$18(a5), d1/d4/a0/a2-a4
0039c8: 4e5d         unlk       a5
0039ca: 4e75         rts        
0039cc: 4e550000     link.w     a5, #$0
0039d0: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
0039d4: 2040         movea.l    d0, a0
0039d6: 2441         movea.l    d1, a2
0039d8: 242d0008     move.l     $8(a5), d2
0039dc: 6702         beq.b      $39e0
0039de: 610a         bsr.b      $39ea
0039e0: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
0039e6: 4e5d         unlk       a5
0039e8: 4e75         rts        
0039ea: 4a82         tst.l      d2
0039ec: 674a         beq.b      $3a38
0039ee: b1ca         cmpa.l     a2, a0
0039f0: 6248         bhi.b      $3a3a
0039f2: 6744         beq.b      $3a38
0039f4: 300a         move.w     a2, d0
0039f6: 08000000     btst.b     #$0, d0
0039fa: 6704         beq.b      $3a00
0039fc: 10da         move.b     (a2)+, (a0)+
0039fe: 5382         subq.l     #$1, d2
003a00: 3008         move.w     a0, d0
003a02: 08000000     btst.b     #$0, d0
003a06: 6624         bne.b      $3a2c
003a08: e28a         lsr.l      #$1, d2
003a0a: 6406         bcc.b      $3a12
003a0c: 6104         bsr.b      $3a12
003a0e: 10da         move.b     (a2)+, (a0)+
003a10: 4e75         rts        
003a12: e28a         lsr.l      #$1, d2
003a14: 6406         bcc.b      $3a1c
003a16: 30da         move.w     (a2)+, (a0)+
003a18: 6002         bra.b      $3a1c
003a1a: 20da         move.l     (a2)+, (a0)+
003a1c: 51cafffc     dbra       d2, $3a1a
003a20: 5242         addq.w     #$1, d2
003a22: 5382         subq.l     #$1, d2
003a24: 64f4         bcc.b      $3a1a
003a26: 7400         moveq      #$0, d2
003a28: 4e75         rts        
003a2a: 10da         move.b     (a2)+, (a0)+
003a2c: 51cafffc     dbra       d2, $3a2a
003a30: 5242         addq.w     #$1, d2
003a32: 5382         subq.l     #$1, d2
003a34: 64f4         bcc.b      $3a2a
003a36: 7400         moveq      #$0, d2
003a38: 4e75         rts        
003a3a: d5c2         adda.l     d2, a2
003a3c: d1c2         adda.l     d2, a0
003a3e: 300a         move.w     a2, d0
003a40: 08000000     btst.b     #$0, d0
003a44: 6704         beq.b      $3a4a
003a46: 1122         move.b     -(a2), -(a0)
003a48: 5382         subq.l     #$1, d2
003a4a: 3008         move.w     a0, d0
003a4c: 08000000     btst.b     #$0, d0
003a50: 6624         bne.b      $3a76
003a52: e28a         lsr.l      #$1, d2
003a54: 6406         bcc.b      $3a5c
003a56: 6104         bsr.b      $3a5c
003a58: 1122         move.b     -(a2), -(a0)
003a5a: 4e75         rts        
003a5c: e28a         lsr.l      #$1, d2
003a5e: 6406         bcc.b      $3a66
003a60: 3122         move.w     -(a2), -(a0)
003a62: 6002         bra.b      $3a66
003a64: 2122         move.l     -(a2), -(a0)
003a66: 51cafffc     dbra       d2, $3a64
003a6a: 5242         addq.w     #$1, d2
003a6c: 5382         subq.l     #$1, d2
003a6e: 64f4         bcc.b      $3a64
003a70: 7400         moveq      #$0, d2
003a72: 4e75         rts        
003a74: 1122         move.b     -(a2), -(a0)
003a76: 51cafffc     dbra       d2, $3a74
003a7a: 5242         addq.w     #$1, d2
003a7c: 5382         subq.l     #$1, d2
003a7e: 64f4         bcc.b      $3a74
003a80: 7400         moveq      #$0, d2
003a82: 4e75         rts        
003a84: 4e550000     link.w     a5, #$0
003a88: 48e7c080     movem.l    d0-d1/a0, -(a7)
003a8c: 2017         move.l     (a7), d0
003a8e: 41ee8511     lea.l      -$7aef(a6), a0
003a92: 12300800     move.b     (a0, d0.l), d1
003a96: 4881         ext.w      d1
003a98: 08010002     btst.b     #$2, d1
003a9c: 6708         beq.b      $3aa6
003a9e: 0280000000df andi.l     #$df, d0
003aa4: 6002         bra.b      $3aa8
003aa6: 2017         move.l     (a7), d0
003aa8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003aae: 4e5d         unlk       a5
003ab0: 4e75         rts        
003ab2: 4e550000     link.w     a5, #$0
003ab6: 48e7c080     movem.l    d0-d1/a0, -(a7)
003aba: 2017         move.l     (a7), d0
003abc: 41ee8511     lea.l      -$7aef(a6), a0
003ac0: 12300800     move.b     (a0, d0.l), d1
003ac4: 4881         ext.w      d1
003ac6: 08010001     btst.b     #$1, d1
003aca: 6706         beq.b      $3ad2
003acc: 08c00005     bset.b     #$5, d0
003ad0: 6002         bra.b      $3ad4
003ad2: 2017         move.l     (a7), d0
003ad4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003ada: 4e5d         unlk       a5
003adc: 4e75         rts        
003ade: 4e550000     link.w     a5, #$0
003ae2: 48e7a080     movem.l    d0/d2/a0, -(a7)
003ae6: 2040         movea.l    d0, a0
003ae8: 242d0008     move.l     $8(a5), d2
003aec: 0c820000000c cmpi.l     #$c, d2
003af2: 6410         bcc.b      $3b04
003af4: 5342         subq.w     #$1, d2
003af6: 65000092     bcs.w      $3b8a
003afa: 10c1         move.b     d1, (a0)+
003afc: 51cafffc     dbra       d2, $3afa
003b00: 60000088     bra.w      $3b8a
003b04: 2f01         move.l     d1, -(a7)
003b06: e141         asl.w      #$8, d1
003b08: 122f0003     move.b     $3(a7), d1
003b0c: 588f         addq.l     #$4, a7
003b0e: 08000000     btst.b     #$0, d0
003b12: 6706         beq.b      $3b1a
003b14: 10c1         move.b     d1, (a0)+
003b16: 5382         subq.l     #$1, d2
003b18: 2008         move.l     a0, d0
003b1a: 08000001     btst.b     #$1, d0
003b1e: 6704         beq.b      $3b24
003b20: 30c1         move.w     d1, (a0)+
003b22: 5582         subq.l     #$2, d2
003b24: 3001         move.w     d1, d0
003b26: 4841         swap       d1
003b28: 3200         move.w     d0, d1
003b2a: 7060         moveq      #$60, d0
003b2c: b480         cmp.l      d0, d2
003b2e: 653e         bcs.b      $3b6e
003b30: 2002         move.l     d2, d0
003b32: c47c001f     and.w      #$1f, d2
003b36: b540         eor.w      d2, d0
003b38: 41f00800     lea.l      (a0, d0.l), a0
003b3c: 48e71fe0     movem.l    d3-d7/a0-a2, -(a7)
003b40: 2601         move.l     d1, d3
003b42: 2801         move.l     d1, d4
003b44: 2a01         move.l     d1, d5
003b46: 2c01         move.l     d1, d6
003b48: 2e01         move.l     d1, d7
003b4a: 2241         movea.l    d1, a1
003b4c: 2441         movea.l    d1, a2
003b4e: ea88         lsr.l      #$5, d0
003b50: 5380         subq.l     #$1, d0
003b52: 48e05f60     movem.l    d1/d3-d7/a1-a2, -(a0)
003b56: 51c8fffa     dbra       d0, $3b52
003b5a: 5240         addq.w     #$1, d0
003b5c: 5380         subq.l     #$1, d0
003b5e: 64f2         bcc.b      $3b52
003b60: 4cdf07f8     movem.l    (a7)+, d3-d7/a0-a2
003b64: 3002         move.w     d2, d0
003b66: 6722         beq.b      $3b8a
003b68: e448         lsr.w      #$2, d0
003b6a: 6606         bne.b      $3b72
003b6c: 600c         bra.b      $3b7a
003b6e: 3002         move.w     d2, d0
003b70: e448         lsr.w      #$2, d0
003b72: 5340         subq.w     #$1, d0
003b74: 20c1         move.l     d1, (a0)+
003b76: 51c8fffc     dbra       d0, $3b74
003b7a: 08020001     btst.b     #$1, d2
003b7e: 6702         beq.b      $3b82
003b80: 30c1         move.w     d1, (a0)+
003b82: 08020000     btst.b     #$0, d2
003b86: 6702         beq.b      $3b8a
003b88: 1081         move.b     d1, (a0)
003b8a: 4ced0105fff4 movem.l    -$c(a5), d0/d2/a0
003b90: 4e5d         unlk       a5
003b92: 4e75         rts        
003b94: 48e73800     movem.l    d2-d4, -(a7)
003b98: 2400         move.l     d0, d2
003b9a: 2600         move.l     d0, d3
003b9c: 4843         swap       d3
003b9e: 2801         move.l     d1, d4
003ba0: 4844         swap       d4
003ba2: c0c1         mulu.w     d1, d0
003ba4: c2c3         mulu.w     d3, d1
003ba6: c4c4         mulu.w     d4, d2
003ba8: c6c4         mulu.w     d4, d3
003baa: 4840         swap       d0
003bac: d041         add.w      d1, d0
003bae: 7800         moveq      #$0, d4
003bb0: d784         addx.l     d4, d3
003bb2: d042         add.w      d2, d0
003bb4: d784         addx.l     d4, d3
003bb6: 4840         swap       d0
003bb8: 4241         clr.w      d1
003bba: 4841         swap       d1
003bbc: 4242         clr.w      d2
003bbe: 4842         swap       d2
003bc0: d282         add.l      d2, d1
003bc2: d283         add.l      d3, d1
003bc4: 4a80         tst.l      d0
003bc6: 4cdf001c     movem.l    (a7)+, d2-d4
003bca: 4e75         rts        
003bcc: 2f02         move.l     d2, -(a7)
003bce: 7400         moveq      #$0, d2
003bd0: 4a80         tst.l      d0
003bd2: 6a04         bpl.b      $3bd8
003bd4: 4480         neg.l      d0
003bd6: 7403         moveq      #$3, d2
003bd8: 4a81         tst.l      d1
003bda: 6a06         bpl.b      $3be2
003bdc: 4481         neg.l      d1
003bde: 0a020001     eori.b     #$1, d2
003be2: 6122         bsr.b      $3c06
003be4: e20a         lsr.b      #$1, d2
003be6: 6402         bcc.b      $3bea
003be8: 4480         neg.l      d0
003bea: e20a         lsr.b      #$1, d2
003bec: 6402         bcc.b      $3bf0
003bee: 4481         neg.l      d1
003bf0: 241f         move.l     (a7)+, d2
003bf2: 4a80         tst.l      d0
003bf4: 4e75         rts        
003bf6: 61d4         bsr.b      $3bcc
003bf8: c141         exg.l      d0, d1
003bfa: 4a80         tst.l      d0
003bfc: 4e75         rts        
003bfe: 6106         bsr.b      $3c06
003c00: c141         exg.l      d0, d1
003c02: 4a80         tst.l      d0
003c04: 4e75         rts        
003c06: 48e73800     movem.l    d2-d4, -(a7)
003c0a: 2401         move.l     d1, d2
003c0c: 6606         bne.b      $3c14
003c0e: 81fc0000     divs.w     #$0, d0
003c12: 606e         bra.b      $3c82
003c14: 5381         subq.l     #$1, d1
003c16: 676a         beq.b      $3c82
003c18: 2801         move.l     d1, d4
003c1a: 2200         move.l     d0, d1
003c1c: b481         cmp.l      d1, d2
003c1e: 650c         bcs.b      $3c2c
003c20: 6704         beq.b      $3c26
003c22: 7000         moveq      #$0, d0
003c24: 605c         bra.b      $3c82
003c26: 7001         moveq      #$1, d0
003c28: 9282         sub.l      d2, d1
003c2a: 6056         bra.b      $3c82
003c2c: 2602         move.l     d2, d3
003c2e: 6bf6         bmi.b      $3c26
003c30: c684         and.l      d4, d3
003c32: 6612         bne.b      $3c46
003c34: e28a         lsr.l      #$1, d2
003c36: 76ff         moveq      #$ff, d3
003c38: e28a         lsr.l      #$1, d2
003c3a: 55cbfffc     dbcs       d3, $3c38
003c3e: 4483         neg.l      d3
003c40: e6a8         lsr.l      d3, d0
003c42: c284         and.l      d4, d1
003c44: 603c         bra.b      $3c82
003c46: 7000         moveq      #$0, d0
003c48: 76ff         moveq      #$ff, d3
003c4a: e382         asl.l      #$1, d2
003c4c: 6a06         bpl.b      $3c54
003c4e: b481         cmp.l      d1, d2
003c50: 620a         bhi.b      $3c5c
003c52: 600c         bra.b      $3c60
003c54: b481         cmp.l      d1, d2
003c56: 54cbfff2     dbcc       d3, $3c4a
003c5a: 6704         beq.b      $3c60
003c5c: 5283         addq.l     #$1, d3
003c5e: e28a         lsr.l      #$1, d2
003c60: 4483         neg.l      d3
003c62: 6004         bra.b      $3c68
003c64: e380         asl.l      #$1, d0
003c66: e28a         lsr.l      #$1, d2
003c68: 9282         sub.l      d2, d1
003c6a: 6510         bcs.b      $3c7c
003c6c: 5280         addq.l     #$1, d0
003c6e: 51cbfff4     dbra       d3, $3c64
003c72: 600e         bra.b      $3c82
003c74: e380         asl.l      #$1, d0
003c76: e28a         lsr.l      #$1, d2
003c78: d282         add.l      d2, d1
003c7a: 65f0         bcs.b      $3c6c
003c7c: 51cbfff6     dbra       d3, $3c74
003c80: d282         add.l      d2, d1
003c82: 4cdf001c     movem.l    (a7)+, d2-d4
003c86: 4a80         tst.l      d0
003c88: 4e75         rts        
003c8a: 4e550000     link.w     a5, #$0
003c8e: 48e76080     movem.l    d1-d2/a0, -(a7)
003c92: c141         exg.l      d0, d1
003c94: 4a81         tst.l      d1
003c96: 6742         beq.b      $3cda
003c98: 0c010001     cmpi.b     #$1, d1
003c9c: 672e         beq.b      $3ccc
003c9e: 0c010006     cmpi.b     #$6, d1
003ca2: 673a         beq.b      $3cde
003ca4: 0c010002     cmpi.b     #$2, d1
003ca8: 6710         beq.b      $3cba
003caa: 0c010005     cmpi.b     #$5, d1
003cae: 670a         beq.b      $3cba
003cb0: 72d0         moveq      #$d0, d1
003cb2: 003c0001     ori.b      #$1, ccr
003cb6: 600006c2     bra.w      $437a
003cba: 4e40         trap       #$0
003cbc: 008d         .dc.w      $008d
003cbe: 650006ba     bcs.w      $437a
003cc2: 206d0008     movea.l    $8(a5), a0
003cc6: 2082         move.l     d2, (a0)
003cc8: 600006b8     bra.w      $4382
003ccc: 4e40         trap       #$0
003cce: 008d         .dc.w      $008d
003cd0: 650006a8     bcs.w      $437a
003cd4: 2001         move.l     d1, d0
003cd6: 600006a0     bra.w      $4378
003cda: 206d0008     movea.l    $8(a5), a0
003cde: 4e40         trap       #$0
003ce0: 008d         .dc.w      $008d
003ce2: 60000694     bra.w      $4378
003ce6: 4e550000     link.w     a5, #$0
003cea: 48e76080     movem.l    d1-d2/a0, -(a7)
003cee: c141         exg.l      d0, d1
003cf0: 4a81         tst.l      d1
003cf2: 6608         bne.b      $3cfc
003cf4: 206d0008     movea.l    $8(a5), a0
003cf8: 7200         moveq      #$0, d1
003cfa: 600c         bra.b      $3d08
003cfc: 0c010002     cmpi.b     #$2, d1
003d00: 66ae         bne.b      $3cb0
003d02: 242d0008     move.l     $8(a5), d2
003d06: 7202         moveq      #$2, d1
003d08: 4e40         trap       #$0
003d0a: 008e         .dc.w      $008e
003d0c: 6000066a     bra.w      $4378
003d10: 4e550000     link.w     a5, #$0
003d14: 48e76080     movem.l    d1-d2/a0, -(a7)
003d18: 2041         movea.l    d1, a0
003d1a: 323c0000     move.w     #$0, d1
003d1e: 4e40         trap       #$0
003d20: 008d         .dc.w      $008d
003d22: 60000654     bra.w      $4378
003d26: 4e550000     link.w     a5, #$0
003d2a: 48e76080     movem.l    d1-d2/a0, -(a7)
003d2e: 323c0001     move.w     #$1, d1
003d32: 4e40         trap       #$0
003d34: 008d         .dc.w      $008d
003d36: 65000642     bcs.w      $437a
003d3a: 2001         move.l     d1, d0
003d3c: 6000063a     bra.w      $4378
003d40: 4e550000     link.w     a5, #$0
003d44: 48e76080     movem.l    d1-d2/a0, -(a7)
003d48: 323c0006     move.w     #$6, d1
003d4c: 4e40         trap       #$0
003d4e: 008d         .dc.w      $008d
003d50: 64000630     bcc.w      $4382
003d54: 0c4100d3     cmpi.w     #$d3, d1
003d58: 66000620     bne.w      $437a
003d5c: 7001         moveq      #$1, d0
003d5e: 60000618     bra.w      $4378
003d62: 4e550000     link.w     a5, #$0
003d66: 48e76080     movem.l    d1-d2/a0, -(a7)
003d6a: 2041         movea.l    d1, a0
003d6c: 323c000f     move.w     #$f, d1
003d70: 242d0008     move.l     $8(a5), d2
003d74: 60a8         bra.b      $3d1e
003d76: 4e550000     link.w     a5, #$0
003d7a: 48e76080     movem.l    d1-d2/a0, -(a7)
003d7e: 2041         movea.l    d1, a0
003d80: 323c000e     move.w     #$e, d1
003d84: 6098         bra.b      $3d1e
003d86: 4e550000     link.w     a5, #$0
003d8a: 48e76080     movem.l    d1-d2/a0, -(a7)
003d8e: 323c0002     move.w     #$2, d1
003d92: 4e40         trap       #$0
003d94: 008d         .dc.w      $008d
003d96: 650005e2     bcs.w      $437a
003d9a: 2002         move.l     d2, d0
003d9c: 600005da     bra.w      $4378
003da0: 4e550000     link.w     a5, #$0
003da4: 48e76080     movem.l    d1-d2/a0, -(a7)
003da8: 323c0005     move.w     #$5, d1
003dac: 60e4         bra.b      $3d92
003dae: 4e550000     link.w     a5, #$0
003db2: 48e76080     movem.l    d1-d2/a0, -(a7)
003db6: 2041         movea.l    d1, a0
003db8: 323c0000     move.w     #$0, d1
003dbc: 4e40         trap       #$0
003dbe: 008e         .dc.w      $008e
003dc0: 600005b6     bra.w      $4378
003dc4: 4e550000     link.w     a5, #$0
003dc8: 48e76080     movem.l    d1-d2/a0, -(a7)
003dcc: 323c0003     move.w     #$3, d1
003dd0: 60ea         bra.b      $3dbc
003dd2: 4e550000     link.w     a5, #$0
003dd6: 48e76080     movem.l    d1-d2/a0, -(a7)
003dda: 2401         move.l     d1, d2
003ddc: 323c0002     move.w     #$2, d1
003de0: 60da         bra.b      $3dbc
003de2: 4e550000     link.w     a5, #$0
003de6: 48e76080     movem.l    d1-d2/a0, -(a7)
003dea: 2041         movea.l    d1, a0
003dec: 323c000f     move.w     #$f, d1
003df0: 60ca         bra.b      $3dbc
003df2: 4e550000     link.w     a5, #$0
003df6: 48e76080     movem.l    d1-d2/a0, -(a7)
003dfa: 2401         move.l     d1, d2
003dfc: 323c0010     move.w     #$10, d1
003e00: 60ba         bra.b      $3dbc
003e02: 4e550000     link.w     a5, #$0
003e06: 48e76080     movem.l    d1-d2/a0, -(a7)
003e0a: 2401         move.l     d1, d2
003e0c: 323c0011     move.w     #$11, d1
003e10: 60aa         bra.b      $3dbc
003e12: 4e550000     link.w     a5, #$0
003e16: 48e76080     movem.l    d1-d2/a0, -(a7)
003e1a: 2401         move.l     d1, d2
003e1c: 323c001a     move.w     #$1a, d1
003e20: 609a         bra.b      $3dbc
003e22: 4e550000     link.w     a5, #$0
003e26: 48e76080     movem.l    d1-d2/a0, -(a7)
003e2a: 323c001b     move.w     #$1b, d1
003e2e: 60f0         bra.b      $3e20
003e30: 4e550000     link.w     a5, #$0
003e34: 48e76080     movem.l    d1-d2/a0, -(a7)
003e38: 48e71840     movem.l    d3-d4/a1, -(a7)
003e3c: 2401         move.l     d1, d2
003e3e: 7204         moveq      #$4, d1
003e40: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
003e46: 4e40         trap       #$0
003e48: 008e         .dc.w      $008e
003e4a: 4cdf0218     movem.l    (a7)+, d3-d4/a1
003e4e: 60000528     bra.w      $4378
003e52: 4e550000     link.w     a5, #$0
003e56: 48e76080     movem.l    d1-d2/a0, -(a7)
003e5a: 2401         move.l     d1, d2
003e5c: 323c001c     move.w     #$1c, d1
003e60: 60be         bra.b      $3e20
003e62: 4e550000     link.w     a5, #$0
003e66: 48e76080     movem.l    d1-d2/a0, -(a7)
003e6a: 323c0024     move.w     #$24, d1
003e6e: 60b0         bra.b      $3e20
003e70: 4e550000     link.w     a5, #$0
003e74: 48e76080     movem.l    d1-d2/a0, -(a7)
003e78: 323c0025     move.w     #$25, d1
003e7c: 60a2         bra.b      $3e20
003e7e: 4e550000     link.w     a5, #$0
003e82: 48e76080     movem.l    d1-d2/a0, -(a7)
003e86: 3401         move.w     d1, d2
003e88: 323c0026     move.w     #$26, d1
003e8c: 6092         bra.b      $3e20
003e8e: 4e550000     link.w     a5, #$0
003e92: 48e76080     movem.l    d1-d2/a0, -(a7)
003e96: 3401         move.w     d1, d2
003e98: 323c0027     move.w     #$27, d1
003e9c: 6082         bra.b      $3e20
003e9e: 4e550000     link.w     a5, #$0
003ea2: 48e76080     movem.l    d1-d2/a0, -(a7)
003ea6: 2040         movea.l    d0, a0
003ea8: 3001         move.w     d1, d0
003eaa: 4e40         trap       #$0
003eac: 0084650004ca ori.l      #$650004ca, d4
003eb2: 4e40         trap       #$0
003eb4: 008f         .dc.w      $008f
003eb6: 600004ca     bra.w      $4382
003eba: 4e550000     link.w     a5, #$0
003ebe: 48e76080     movem.l    d1-d2/a0, -(a7)
003ec2: 2040         movea.l    d0, a0
003ec4: 3001         move.w     d1, d0
003ec6: 7400         moveq      #$0, d2
003ec8: 4e40         trap       #$0
003eca: 0084600004aa ori.l      #$600004aa, d4
003ed0: 4e550000     link.w     a5, #$0
003ed4: 48e76080     movem.l    d1-d2/a0, -(a7)
003ed8: 4e40         trap       #$0
003eda: 008f         .dc.w      $008f
003edc: 6000049a     bra.w      $4378
003ee0: 4e550000     link.w     a5, #$0
003ee4: 48e76080     movem.l    d1-d2/a0, -(a7)
003ee8: 2040         movea.l    d0, a0
003eea: 7082         moveq      #$82, d0
003eec: 7400         moveq      #$0, d2
003eee: 4e40         trap       #$0
003ef0: 00856000048e ori.l      #$6000048e, d5
003ef6: 4e550000     link.w     a5, #$0
003efa: 48e76080     movem.l    d1-d2/a0, -(a7)
003efe: 2040         movea.l    d0, a0
003f00: 2001         move.l     d1, d0
003f02: 222f0014     move.l     $14(a7), d1
003f06: 242f0018     move.l     $18(a7), d2
003f0a: 60e2         bra.b      $3eee
003f0c: 4e550000     link.w     a5, #$0
003f10: 48e76080     movem.l    d1-d2/a0, -(a7)
003f14: 2040         movea.l    d0, a0
003f16: 3001         move.w     d1, d0
003f18: 222f0014     move.l     $14(a7), d1
003f1c: 242f0018     move.l     $18(a7), d2
003f20: 4e40         trap       #$0
003f22: 008360000452 ori.l      #$60000452, d3
003f28: 4e550000     link.w     a5, #$0
003f2c: 48e7e080     movem.l    d0-d2/a0, -(a7)
003f30: 2040         movea.l    d0, a0
003f32: 3001         move.w     d1, d0
003f34: 02410024     andi.w     #$24, d1
003f38: 00410003     ori.w      #$3, d1
003f3c: 7400         moveq      #$0, d2
003f3e: 4e40         trap       #$0
003f40: 0083205f6400 ori.l      #$205f6400, d3
003f46: 04320c0100da subi.b     #$1, -$26(a2, d0.w)
003f4c: 6600042c     bne.w      $437a
003f50: 302f0002     move.w     $2(a7), d0
003f54: 6b000424     bmi.w      $437a
003f58: 02400007     andi.w     #$7, d0
003f5c: 4e40         trap       #$0
003f5e: 008465000418 ori.l      #$65000418, d4
003f64: 7400         moveq      #$0, d2
003f66: 7202         moveq      #$2, d1
003f68: 4e40         trap       #$0
003f6a: 008e         .dc.w      $008e
003f6c: 6400040a     bcc.w      $4378
003f70: 3401         move.w     d1, d2
003f72: 4e40         trap       #$0
003f74: 008f         .dc.w      $008f
003f76: 3202         move.w     d2, d1
003f78: 60000400     bra.w      $437a
003f7c: 4e550000     link.w     a5, #$0
003f80: 48e76080     movem.l    d1-d2/a0, -(a7)
003f84: 2040         movea.l    d0, a0
003f86: 3001         move.w     d1, d0
003f88: 4e40         trap       #$0
003f8a: 0087600003f4 ori.l      #$600003f4, d7
003f90: 4e550000     link.w     a5, #$0
003f94: 48e76080     movem.l    d1-d2/a0, -(a7)
003f98: 2040         movea.l    d0, a0
003f9a: 7002         moveq      #$2, d0
003f9c: 4e40         trap       #$0
003f9e: 0087600003e0 ori.l      #$600003e0, d7
003fa4: 4e550000     link.w     a5, #$0
003fa8: 48e76080     movem.l    d1-d2/a0, -(a7)
003fac: 4e40         trap       #$0
003fae: 0082600003c6 ori.l      #$600003c6, d2
003fb4: 4e550000     link.w     a5, #$0
003fb8: 48e76080     movem.l    d1-d2/a0, -(a7)
003fbc: 2041         movea.l    d1, a0
003fbe: 222d0008     move.l     $8(a5), d1
003fc2: 4e40         trap       #$0
003fc4: 0089         .dc.w      $0089
003fc6: 6420         bcc.b      $3fe8
003fc8: 0c4100d3     cmpi.w     #$d3, d1
003fcc: 660003ac     bne.w      $437a
003fd0: 600003b0     bra.w      $4382
003fd4: 4e550000     link.w     a5, #$0
003fd8: 48e76080     movem.l    d1-d2/a0, -(a7)
003fdc: 2041         movea.l    d1, a0
003fde: 222d0008     move.l     $8(a5), d1
003fe2: 4e40         trap       #$0
003fe4: 008b         .dc.w      $008b
003fe6: 65e0         bcs.b      $3fc8
003fe8: 2001         move.l     d1, d0
003fea: 6000038c     bra.w      $4378
003fee: 4e550000     link.w     a5, #$0
003ff2: 48e76080     movem.l    d1-d2/a0, -(a7)
003ff6: 2041         movea.l    d1, a0
003ff8: 222d0008     move.l     $8(a5), d1
003ffc: 4e40         trap       #$0
003ffe: 008a         .dc.w      $008a
004000: 64e6         bcc.b      $3fe8
004002: 60000376     bra.w      $437a
004006: 4e550000     link.w     a5, #$0
00400a: 48e76080     movem.l    d1-d2/a0, -(a7)
00400e: 2041         movea.l    d1, a0
004010: 222d0008     move.l     $8(a5), d1
004014: 4e40         trap       #$0
004016: 008c         .dc.w      $008c
004018: 64ce         bcc.b      $3fe8
00401a: 6000035e     bra.w      $437a
00401e: 4e550000     link.w     a5, #$0
004022: 48e76080     movem.l    d1-d2/a0, -(a7)
004026: 122d000b     move.b     $b(a5), d1
00402a: 6726         beq.b      $4052
00402c: 0c010001     cmpi.b     #$1, d1
004030: 6716         beq.b      $4048
004032: 0c010002     cmpi.b     #$2, d1
004036: 6706         beq.b      $403e
004038: 72cb         moveq      #$cb, d1
00403a: 6000033e     bra.w      $437a
00403e: 7202         moveq      #$2, d1
004040: 4e40         trap       #$0
004042: 008d         .dc.w      $008d
004044: 640e         bcc.b      $4054
004046: 60f2         bra.b      $403a
004048: 7205         moveq      #$5, d1
00404a: 4e40         trap       #$0
00404c: 008d         .dc.w      $008d
00404e: 6404         bcc.b      $4054
004050: 60e8         bra.b      $403a
004052: 7400         moveq      #$0, d2
004054: d497         add.l      (a7), d2
004056: 2202         move.l     d2, d1
004058: 4e40         trap       #$0
00405a: 0088         .dc.w      $0088
00405c: 65dc         bcs.b      $403a
00405e: 2001         move.l     d1, d0
004060: 60000316     bra.w      $4378
004064: 4e550000     link.w     a5, #$0
004068: 48e76080     movem.l    d1-d2/a0, -(a7)
00406c: 7000         moveq      #$0, d0
00406e: 4e40         trap       #$0
004070: 000a         .dc.w      $000a
004072: 60000304     bra.w      $4378
004076: 4e550000     link.w     a5, #$0
00407a: 48e76080     movem.l    d1-d2/a0, -(a7)
00407e: 206d0008     movea.l    $8(a5), a0
004082: 2210         move.l     (a0), d1
004084: 2040         movea.l    d0, a0
004086: 2017         move.l     (a7), d0
004088: 4e40         trap       #$0
00408a: 00176500     ori.b      #$0, (a7)
00408e: 02ec         .dc.w      $02ec
004090: 206d0008     movea.l    $8(a5), a0
004094: 2081         move.l     d1, (a0)
004096: 600002ea     bra.w      $4382
00409a: 4e550000     link.w     a5, #$0
00409e: 48e76080     movem.l    d1-d2/a0, -(a7)
0040a2: 4e40         trap       #$0
0040a4: 000f         .dc.w      $000f
0040a6: 600002d0     bra.w      $4378
0040aa: e188         lsl.l      #$8, d0
0040ac: 08c0001f     bset.b     #$1f, d0
0040b0: 4e550000     link.w     a5, #$0
0040b4: 48e76080     movem.l    d1-d2/a0, -(a7)
0040b8: 4e40         trap       #$0
0040ba: 000a         .dc.w      $000a
0040bc: 600002ba     bra.w      $4378
0040c0: 4e550000     link.w     a5, #$0
0040c4: 48e700c0     movem.l    a0-a1, -(a7)
0040c8: 2041         movea.l    d1, a0
0040ca: 2240         movea.l    d0, a1
0040cc: 222d0008     move.l     $8(a5), d1
0040d0: 4e40         trap       #$0
0040d2: 00116560     ori.b      #$60, (a1)
0040d6: 7000         moveq      #$0, d0
0040d8: 6068         bra.b      $4142
0040da: 4e550000     link.w     a5, #$0
0040de: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0040e2: 2040         movea.l    d0, a0
0040e4: 4e40         trap       #$0
0040e6: 00106454     ori.b      #$54, (a0)
0040ea: 604a         bra.b      $4136
0040ec: 4e550000     link.w     a5, #$0
0040f0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0040f4: 2040         movea.l    d0, a0
0040f6: 2248         movea.l    a0, a1
0040f8: 1019         move.b     (a1)+, d0
0040fa: 0c00002f     cmpi.b     #$2f, d0
0040fe: 671a         beq.b      $411a
004100: 0c00002e     cmpi.b     #$2e, d0
004104: 6622         bne.b      $4128
004106: 0c19002e     cmpi.b     #$2e, (a1)+
00410a: 67fa         beq.b      $4106
00410c: 1021         move.b     -(a1), d0
00410e: 672e         beq.b      $413e
004110: 0c00002f     cmpi.b     #$2f, d0
004114: 6612         bne.b      $4128
004116: 2049         movea.l    a1, a0
004118: 60de         bra.b      $40f8
00411a: 1019         move.b     (a1)+, d0
00411c: 0c00002f     cmpi.b     #$2f, d0
004120: 6706         beq.b      $4128
004122: 0c00002e     cmpi.b     #$2e, d0
004126: 67de         beq.b      $4106
004128: 4e40         trap       #$0
00412a: 00106508     ori.b      #$8, (a0)
00412e: 4a00         tst.b      d0
004130: 670c         beq.b      $413e
004132: 2049         movea.l    a1, a0
004134: 60c2         bra.b      $40f8
004136: 2d41800c     move.l     d1, -$7ff4(a6)
00413a: 70ff         moveq      #$ff, d0
00413c: 6004         bra.b      $4142
00413e: 2009         move.l     a1, d0
004140: 9097         sub.l      (a7), d0
004142: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
004148: 4e5d         unlk       a5
00414a: 4e75         rts        
00414c: 4e550000     link.w     a5, #$0
004150: 48e76080     movem.l    d1-d2/a0, -(a7)
004154: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
004158: 242d000c     move.l     $c(a5), d2
00415c: 0802000f     btst.b     #$f, d2
004160: 6708         beq.b      $416a
004162: 262d0010     move.l     $10(a5), d3
004166: 282d0014     move.l     $14(a5), d4
00416a: 2040         movea.l    d0, a0
00416c: 2001         move.l     d1, d0
00416e: 222d0008     move.l     $8(a5), d1
004172: 4e40         trap       #$0
004174: 00256502     ori.b      #$2, -(a5)
004178: 200a         move.l     a2, d0
00417a: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
00417e: 600001f8     bra.w      $4378
004182: 4e550000     link.w     a5, #$0
004186: 48e76080     movem.l    d1-d2/a0, -(a7)
00418a: 2040         movea.l    d0, a0
00418c: 4e40         trap       #$0
00418e: 001a6500     ori.b      #$0, (a2)+
004192: 01e82001     bset.b     d0, $2001(a0)
004196: 600001e0     bra.w      $4378
00419a: 4e550000     link.w     a5, #$0
00419e: 48e76080     movem.l    d1-d2/a0, -(a7)
0041a2: 2040         movea.l    d0, a0
0041a4: 4e40         trap       #$0
0041a6: 001f6500     ori.b      #$0, (a7)+
0041aa: 01d0         bset.b     d0, (a0)
0041ac: 2001         move.l     d1, d0
0041ae: 600001c8     bra.w      $4378
0041b2: 4e550000     link.w     a5, #$0
0041b6: 48e76080     movem.l    d1-d2/a0, -(a7)
0041ba: 206d0008     movea.l    $8(a5), a0
0041be: 4e40         trap       #$0
0041c0: 00186000     ori.b      #$0, (a0)+
0041c4: 01b44e55     bclr.b     d0, $55(a4, d4.l)
0041c8: 000048e7     ori.b      #$e7, d0
0041cc: 6080         bra.b      $414e
0041ce: 2040         movea.l    d0, a0
0041d0: 4e40         trap       #$0
0041d2: 00266000     ori.b      #$0, -(a6)
0041d6: 01a2         bclr.b     d0, -(a2)
0041d8: 4e550000     link.w     a5, #$0
0041dc: 48e76080     movem.l    d1-d2/a0, -(a7)
0041e0: 08c1001f     bset.b     #$1f, d1
0041e4: 600c         bra.b      $41f2
0041e6: 4e550000     link.w     a5, #$0
0041ea: 48e76080     movem.l    d1-d2/a0, -(a7)
0041ee: 242d0008     move.l     $8(a5), d2
0041f2: 4e40         trap       #$0
0041f4: 00276500     ori.b      #$0, -(a7)
0041f8: 0182         bclr.b     d0, d2
0041fa: 2002         move.l     d2, d0
0041fc: 6000017a     bra.w      $4378
004200: 4e550000     link.w     a5, #$0
004204: 48e76080     movem.l    d1-d2/a0, -(a7)
004208: 4e40         trap       #$0
00420a: 000b         .dc.w      $000b
00420c: 6000016a     bra.w      $4378
004210: 4e550000     link.w     a5, #$0
004214: 4e40         trap       #$0
004216: 00524e5d     ori.w      #$4e5d, (a2)
00421a: 4e75         rts        
00421c: 4e550000     link.w     a5, #$0
004220: 48e76080     movem.l    d1-d2/a0, -(a7)
004224: 2f09         move.l     a1, -(a7)
004226: 206d0008     movea.l    $8(a5), a0
00422a: 226d000c     movea.l    $c(a5), a1
00422e: 4e40         trap       #$0
004230: 001b225f     ori.b      #$5f, (a3)+
004234: 60000142     bra.w      $4378
004238: 4e550000     link.w     a5, #$0
00423c: 48e76080     movem.l    d1-d2/a0, -(a7)
004240: 2040         movea.l    d0, a0
004242: 3001         move.w     d1, d0
004244: 48e70060     movem.l    a1-a2, -(a7)
004248: 4e40         trap       #$0
00424a: 00006502     ori.b      #$2, d0
00424e: 200a         move.l     a2, d0
004250: 4cdf0600     movem.l    (a7)+, a1-a2
004254: 60000122     bra.w      $4378
004258: 4e550000     link.w     a5, #$0
00425c: 48e76080     movem.l    d1-d2/a0, -(a7)
004260: 2040         movea.l    d0, a0
004262: 3001         move.w     d1, d0
004264: 48e70060     movem.l    a1-a2, -(a7)
004268: 4e40         trap       #$0
00426a: 000160de     ori.b      #$de, d1
00426e: 4e550000     link.w     a5, #$0
004272: 48e76080     movem.l    d1-d2/a0, -(a7)
004276: 2f0a         move.l     a2, -(a7)
004278: 2440         movea.l    d0, a2
00427a: 4e40         trap       #$0
00427c: 0002245f     ori.b      #$5f, d2
004280: 600000f6     bra.w      $4378
004284: 4e550000     link.w     a5, #$0
004288: 48e76080     movem.l    d1-d2/a0, -(a7)
00428c: 2040         movea.l    d0, a0
00428e: 3001         move.w     d1, d0
004290: 4e40         trap       #$0
004292: 001d6000     ori.b      #$0, (a5)+
004296: 00e2         .dc.w      $00e2
004298: 4e550000     link.w     a5, #$0
00429c: 48e76080     movem.l    d1-d2/a0, -(a7)
0042a0: 2040         movea.l    d0, a0
0042a2: 7200         moveq      #$0, d1
0042a4: 1210         move.b     (a0), d1
0042a6: d27c076c     add.w      #$76c, d1
0042aa: 4841         swap       d1
0042ac: 12280001     move.b     $1(a0), d1
0042b0: e141         asl.w      #$8, d1
0042b2: 12280002     move.b     $2(a0), d1
0042b6: 7000         moveq      #$0, d0
0042b8: 10280003     move.b     $3(a0), d0
0042bc: 4840         swap       d0
0042be: 10280004     move.b     $4(a0), d0
0042c2: e140         asl.w      #$8, d0
0042c4: 10280005     move.b     $5(a0), d0
0042c8: 4e40         trap       #$0
0042ca: 00166500     ori.b      #$0, (a6)
0042ce: 00ac2008600000a4 ori.l      #$20086000, $a4(a4)
0042d6: 4e550000     link.w     a5, #$0
0042da: 48e77080     movem.l    d1-d3/a0, -(a7)
0042de: 2040         movea.l    d0, a0
0042e0: 7000         moveq      #$0, d0
0042e2: 4e40         trap       #$0
0042e4: 0015652c     ori.b      #$2c, (a5)
0042e8: 2408         move.l     a0, d2
0042ea: 4841         swap       d1
0042ec: 927c076c     sub.w      #$76c, d1
0042f0: 10c1         move.b     d1, (a0)+
0042f2: 4841         swap       d1
0042f4: e159         rol.w      #$8, d1
0042f6: 10c1         move.b     d1, (a0)+
0042f8: e159         rol.w      #$8, d1
0042fa: 10c1         move.b     d1, (a0)+
0042fc: 4840         swap       d0
0042fe: 10c0         move.b     d0, (a0)+
004300: 4840         swap       d0
004302: e158         rol.w      #$8, d0
004304: 10c0         move.b     d0, (a0)+
004306: e158         rol.w      #$8, d0
004308: 10c0         move.b     d0, (a0)+
00430a: 2002         move.l     d2, d0
00430c: 4cdf010e     movem.l    (a7)+, d1-d3/a0
004310: 4e5d         unlk       a5
004312: 4e75         rts        
004314: 70ff         moveq      #$ff, d0
004316: 2d41800c     move.l     d1, -$7ff4(a6)
00431a: 60f0         bra.b      $430c
00431c: 4e550000     link.w     a5, #$0
004320: 48e770c0     movem.l    d1-d3/a0-a1, -(a7)
004324: 7400         moveq      #$0, d2
004326: 4e40         trap       #$0
004328: 00156520     ori.b      #$20, (a5)
00432c: 206dffec     movea.l    -$14(a5), a0
004330: 2080         move.l     d0, (a0)
004332: 41ed0008     lea.l      $8(a5), a0
004336: 2258         movea.l    (a0)+, a1
004338: 2281         move.l     d1, (a1)
00433a: 2258         movea.l    (a0)+, a1
00433c: 3282         move.w     d2, (a1)
00433e: 2250         movea.l    (a0), a1
004340: 2283         move.l     d3, (a1)
004342: 7000         moveq      #$0, d0
004344: 4cdf030e     movem.l    (a7)+, d1-d3/a0-a1
004348: 4e5d         unlk       a5
00434a: 4e75         rts        
00434c: 70ff         moveq      #$ff, d0
00434e: 2d41800c     move.l     d1, -$7ff4(a6)
004352: 60ee         bra.b      $4342
004354: 4e550000     link.w     a5, #$0
004358: 48e76080     movem.l    d1-d2/a0, -(a7)
00435c: 2f09         move.l     a1, -(a7)
00435e: 2040         movea.l    d0, a0
004360: 2241         movea.l    d1, a1
004362: 2010         move.l     (a0), d0
004364: 2211         move.l     (a1), d1
004366: 4e40         trap       #$0
004368: 00206500     ori.b      #$0, -(a0)
00436c: 00062080     ori.b      #$80, d6
004370: 2281         move.l     d1, (a1)
004372: 225f         movea.l    (a7)+, a1
004374: 60000002     bra.w      $4378
004378: 640c         bcc.b      $4386
00437a: 2d41800c     move.l     d1, -$7ff4(a6)
00437e: 70ff         moveq      #$ff, d0
004380: 6004         bra.b      $4386
004382: 65f6         bcs.b      $437a
004384: 7000         moveq      #$0, d0
004386: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
00438c: 4e5d         unlk       a5
00438e: 4e75         rts        
004390: 6369         bls.b      $43fb
004392: 6f00         ble.w      $ffffee3e
