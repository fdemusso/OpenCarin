00003c: 004c         .dc.w      $004c
00003e: 0052005e     ori.w      #$5e, (a2)
000042: 006a0072007a ori.w      #$72, $7a(a2)
000048: 0080008641fa ori.l      #$8641fa, d0
00004e: 00cc         .dc.w      $00cc
000050: 6038         bra.b      $8a
000052: 2008         move.l     a0, d0
000054: 2202         move.l     d2, d1
000056: 2403         move.l     d3, d2
000058: 41fa021c     lea.l      $276(pc), a0
00005c: 602c         bra.b      $8a
00005e: 2008         move.l     a0, d0
000060: 2202         move.l     d2, d1
000062: 2403         move.l     d3, d2
000064: 41fa064e     lea.l      $6b4(pc), a0
000068: 6020         bra.b      $8a
00006a: 2208         move.l     a0, d1
00006c: 41fa03d0     lea.l      $43e(pc), a0
000070: 6018         bra.b      $8a
000072: 2208         move.l     a0, d1
000074: 41fa0488     lea.l      $4fe(pc), a0
000078: 6010         bra.b      $8a
00007a: 41fa0198     lea.l      $214(pc), a0
00007e: 600a         bra.b      $8a
000080: 41fa0648     lea.l      $6ca(pc), a0
000084: 6004         bra.b      $8a
000086: 41fa0658     lea.l      $6e0(pc), a0
00008a: 48e7a000     movem.l    d0/d2, -(a7)
00008e: 342c0000     move.w     $0(a4), d2
000092: 302a0006     move.w     $6(a2), d0
000096: 6710         beq.b      $a8
000098: b042         cmp.w      d2, d0
00009a: 6710         beq.b      $ac
00009c: 4e40         trap       #$0
00009e: 002b64ec4cdf ori.b      #$ec, $4cdf(a3)
0000a4: 00054e75     ori.b      #$75, d5
0000a8: 35420006     move.w     d2, $6(a2)
0000ac: 4cdf0005     movem.l    (a7)+, d0/d2
0000b0: 48e7307e     movem.l    d2-d3/a1-a6, -(a7)
0000b4: 2c4a         movea.l    a2, a6
0000b6: 2d4f008a     move.l     a7, $8a(a6)
0000ba: 4e90         jsr        (a0)
0000bc: 426e0006     clr.w      $6(a6)
0000c0: 4cdf7e0c     movem.l    (a7)+, d2-d3/a1-a6
0000c4: 4e75         rts        
0000c6: 426e0006     clr.w      $6(a6)
0000ca: 2e6e008a     movea.l    $8a(a6), a7
0000ce: 2200         move.l     d0, d1
0000d0: 67ee         beq.b      $c0
0000d2: 003c0001     ori.b      #$1, ccr
0000d6: 60e8         bra.b      $c0
0000d8: 4e550000     link.w     a5, #$0
0000dc: 48e740b0     movem.l    d1/a0/a2-a3, -(a7)
0000e0: 266d0008     movea.l    $8(a5), a3
0000e4: 244e         movea.l    a6, a2
0000e6: 91c8         suba.l     a0, a0
0000e8: b1cb         cmpa.l     a3, a0
0000ea: 6704         beq.b      $f0
0000ec: 41fa0016     lea.l      $104(pc), a0
0000f0: 4e40         trap       #$0
0000f2: 002ac1416502 ori.b      #$41, $6502(a2)
0000f8: 7000         moveq      #$0, d0
0000fa: 48c0         ext.l      d0
0000fc: 4cdf0d02     movem.l    (a7)+, d1/a0/a2-a3
000100: 4e5d         unlk       a5
000102: 4e75         rts        
000104: 2f0d         move.l     a5, -(a7)
000106: 200e         move.l     a6, d0
000108: 2c4a         movea.l    a2, a6
00010a: 9bcd         suba.l     a5, a5
00010c: 4e93         jsr        (a3)
00010e: 4a80         tst.l      d0
000110: 6704         beq.b      $116
000112: 003c0001     ori.b      #$1, ccr
000116: 2a5f         movea.l    (a7)+, a5
000118: 4e75         rts        
00011a: 4e550000     link.w     a5, #$0
00011e: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000122: 598f         subq.l     #$4, a7
000124: 206e008a     movea.l    $8a(a6), a0
000128: 24680008     movea.l    $8(a0), a2
00012c: 1d7c0001002e move.b     #$1, $2e(a6)
000132: 302a003c     move.w     $3c(a2), d0
000136: 48c0         ext.l      d0
000138: d08a         add.l      a2, d0
00013a: 2d40008e     move.l     d0, $8e(a6)
00013e: 206e008e     movea.l    $8e(a6), a0
000142: 7000         moveq      #$0, d0
000144: 30280004     move.w     $4(a0), d0
000148: 2d4000ae     move.l     d0, $ae(a6)
00014c: 206e008e     movea.l    $8e(a6), a0
000150: 7000         moveq      #$0, d0
000152: 30280002     move.w     $2(a0), d0
000156: 2d4000aa     move.l     d0, $aa(a6)
00015a: 422e00a9     clr.b      $a9(a6)
00015e: 426e1328     clr.w      $1328(a6)
000162: 42ae132a     clr.l      $132a(a6)
000166: 42ae132e     clr.l      $132e(a6)
00016a: 426e1332     clr.w      $1332(a6)
00016e: 426e1334     clr.w      $1334(a6)
000172: 426e1336     clr.w      $1336(a6)
000176: 487a06f4     pea.l      $86c(pc)
00017a: 7000         moveq      #$0, d0
00017c: 102a0036     move.b     $36(a2), d0
000180: 2200         move.l     d0, d1
000182: 7000         moveq      #$0, d0
000184: 102a0034     move.b     $34(a2), d0
000188: 6100ff4e     bsr.w      $d8
00018c: 588f         addq.l     #$4, a7
00018e: 48780001     pea.l      $1.w
000192: 7201         moveq      #$1, d1
000194: 7003         moveq      #$3, d0
000196: 61000e3a     bsr.w      $fd2
00019a: 588f         addq.l     #$4, a7
00019c: 2e80         move.l     d0, (a7)
00019e: 4a97         tst.l      (a7)
0001a0: 6722         beq.b      $1c4
0001a2: 7009         moveq      #$9, d0
0001a4: b097         cmp.l      (a7), d0
0001a6: 671c         beq.b      $1c4
0001a8: 42a7         clr.l      -(a7)
0001aa: 7000         moveq      #$0, d0
0001ac: 102a0036     move.b     $36(a2), d0
0001b0: 2200         move.l     d0, d1
0001b2: 7000         moveq      #$0, d0
0001b4: 102a0034     move.b     $34(a2), d0
0001b8: 6100ff1e     bsr.w      $d8
0001bc: 588f         addq.l     #$4, a7
0001be: 2017         move.l     (a7), d0
0001c0: 6100ff04     bsr.w      $c6
0001c4: 486e00ba     pea.l      $ba(a6)
0001c8: 7207         moveq      #$7, d1
0001ca: 7003         moveq      #$3, d0
0001cc: 6100087e     bsr.w      $a4c
0001d0: 588f         addq.l     #$4, a7
0001d2: 2e80         move.l     d0, (a7)
0001d4: 660e         bne.b      $1e4
0001d6: 41ee00ba     lea.l      $ba(a6), a0
0001da: 2008         move.l     a0, d0
0001dc: 61000bb4     bsr.w      $d92
0001e0: 2e80         move.l     d0, (a7)
0001e2: 671c         beq.b      $200
0001e4: 42a7         clr.l      -(a7)
0001e6: 7000         moveq      #$0, d0
0001e8: 102a0036     move.b     $36(a2), d0
0001ec: 2200         move.l     d0, d1
0001ee: 7000         moveq      #$0, d0
0001f0: 102a0034     move.b     $34(a2), d0
0001f4: 6100fee2     bsr.w      $d8
0001f8: 588f         addq.l     #$4, a7
0001fa: 2017         move.l     (a7), d0
0001fc: 6100fec8     bsr.w      $c6
000200: 1d7c000100a8 move.b     #$1, $a8(a6)
000206: 7000         moveq      #$0, d0
000208: 588f         addq.l     #$4, a7
00020a: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
000210: 4e5d         unlk       a5
000212: 4e75         rts        
000214: 4e550000     link.w     a5, #$0
000218: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00021c: 4feffff6     lea.l      -$a(a7), a7
000220: 206e008a     movea.l    $8a(a6), a0
000224: 24680008     movea.l    $8(a0), a2
000228: 4857         pea.l      (a7)
00022a: 7208         moveq      #$8, d1
00022c: 7003         moveq      #$3, d0
00022e: 6100081c     bsr.w      $a4c
000232: 588f         addq.l     #$4, a7
000234: 2d4000ce     move.l     d0, $ce(a6)
000238: 660e         bne.b      $248
00023a: 41d7         lea.l      (a7), a0
00023c: 2008         move.l     a0, d0
00023e: 61000b52     bsr.w      $d92
000242: 2d4000ce     move.l     d0, $ce(a6)
000246: 6708         beq.b      $250
000248: 202e00ce     move.l     $ce(a6), d0
00024c: 6100fe78     bsr.w      $c6
000250: 42a7         clr.l      -(a7)
000252: 7000         moveq      #$0, d0
000254: 102a0036     move.b     $36(a2), d0
000258: 2200         move.l     d0, d1
00025a: 7000         moveq      #$0, d0
00025c: 102a0034     move.b     $34(a2), d0
000260: 6100fe76     bsr.w      $d8
000264: 588f         addq.l     #$4, a7
000266: 7000         moveq      #$0, d0
000268: 4fef000a     lea.l      $a(a7), a7
00026c: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
000272: 4e5d         unlk       a5
000274: 4e75         rts        
000276: 4e550000     link.w     a5, #$0
00027a: 48e7e080     movem.l    d0-d2/a0, -(a7)
00027e: 4fefffea     lea.l      -$16(a7), a7
000282: 42af000e     clr.l      $e(a7)
000286: 2f6f00160006 move.l     $16(a7), $6(a7)
00028c: 52ae132e     addq.l     #$1, $132e(a6)
000290: 7000         moveq      #$0, d0
000292: 61000800     bsr.w      $a94
000296: 60000176     bra.w      $40e
00029a: 7003         moveq      #$3, d0
00029c: c0af0016     and.l      $16(a7), d0
0002a0: 6700007a     beq.w      $31c
0002a4: 1f7c00010001 move.b     #$1, $1(a7)
0002aa: 7001         moveq      #$1, d0
0002ac: b0af002e     cmp.l      $2e(a7), d0
0002b0: 6404         bcc.b      $2b6
0002b2: 7002         moveq      #$2, d0
0002b4: 6002         bra.b      $2b8
0002b6: 7001         moveq      #$1, d0
0002b8: 2f400002     move.l     d0, $2(a7)
0002bc: 486e00ba     pea.l      $ba(a6)
0002c0: 7202         moveq      #$2, d1
0002c2: 7003         moveq      #$3, d0
0002c4: 61000786     bsr.w      $a4c
0002c8: 588f         addq.l     #$4, a7
0002ca: 2d4000ce     move.l     d0, $ce(a6)
0002ce: 6630         bne.b      $300
0002d0: 486e00ba     pea.l      $ba(a6)
0002d4: 41ef001e     lea.l      $1e(a7), a0
0002d8: 2208         move.l     a0, d1
0002da: 7004         moveq      #$4, d0
0002dc: 61000a1e     bsr.w      $cfc
0002e0: 588f         addq.l     #$4, a7
0002e2: 2d4000ce     move.l     d0, $ce(a6)
0002e6: 6618         bne.b      $300
0002e8: 486e00ba     pea.l      $ba(a6)
0002ec: 41ef0006     lea.l      $6(a7), a0
0002f0: 2208         move.l     a0, d1
0002f2: 7004         moveq      #$4, d0
0002f4: 61000a06     bsr.w      $cfc
0002f8: 588f         addq.l     #$4, a7
0002fa: 2d4000ce     move.l     d0, $ce(a6)
0002fe: 6708         beq.b      $308
000300: 202e00ce     move.l     $ce(a6), d0
000304: 6100fdc0     bsr.w      $c6
000308: 700b         moveq      #$b, d0
00030a: 222f0002     move.l     $2(a7), d1
00030e: e1a9         lsl.l      d0, d1
000310: 41ee00df     lea.l      $df(a6), a0
000314: 2008         move.l     a0, d0
000316: 74fc         moveq      #$fc, d2
000318: c082         and.l      d2, d0
00031a: 605c         bra.b      $378
00031c: 422f0001     clr.b      $1(a7)
000320: 486e00ba     pea.l      $ba(a6)
000324: 7202         moveq      #$2, d1
000326: 7003         moveq      #$3, d0
000328: 61000722     bsr.w      $a4c
00032c: 588f         addq.l     #$4, a7
00032e: 2d4000ce     move.l     d0, $ce(a6)
000332: 6630         bne.b      $364
000334: 486e00ba     pea.l      $ba(a6)
000338: 41ef001e     lea.l      $1e(a7), a0
00033c: 2208         move.l     a0, d1
00033e: 7004         moveq      #$4, d0
000340: 610009ba     bsr.w      $cfc
000344: 588f         addq.l     #$4, a7
000346: 2d4000ce     move.l     d0, $ce(a6)
00034a: 6618         bne.b      $364
00034c: 486e00ba     pea.l      $ba(a6)
000350: 41ef0032     lea.l      $32(a7), a0
000354: 2208         move.l     a0, d1
000356: 7004         moveq      #$4, d0
000358: 610009a2     bsr.w      $cfc
00035c: 588f         addq.l     #$4, a7
00035e: 2d4000ce     move.l     d0, $ce(a6)
000362: 6708         beq.b      $36c
000364: 202e00ce     move.l     $ce(a6), d0
000368: 6100fd5c     bsr.w      $c6
00036c: 700b         moveq      #$b, d0
00036e: 222f002e     move.l     $2e(a7), d1
000372: e1a9         lsl.l      d0, d1
000374: 202f0016     move.l     $16(a7), d0
000378: 6100037c     bsr.w      $6f6
00037c: 2f400012     move.l     d0, $12(a7)
000380: 4a6e00d6     tst.w      $d6(a6)
000384: 674a         beq.b      $3d0
000386: 0c6e082000d6 cmpi.w     #$820, $d6(a6)
00038c: 660a         bne.b      $398
00038e: 203c000000f6 move.l     #$f6, d0
000394: 6100fd30     bsr.w      $c6
000398: 52af000e     addq.l     #$1, $e(a7)
00039c: 7003         moveq      #$3, d0
00039e: b0af000e     cmp.l      $e(a7), d0
0003a2: 660a         bne.b      $3ae
0003a4: 52ae132a     addq.l     #$1, $132a(a6)
0003a8: 7001         moveq      #$1, d0
0003aa: 610006e8     bsr.w      $a94
0003ae: 7005         moveq      #$5, d0
0003b0: b0af000e     cmp.l      $e(a7), d0
0003b4: 6c14         bge.b      $3ca
0003b6: 3d7c00051334 move.w     #$5, $1334(a6)
0003bc: 526e1336     addq.w     #$1, $1336(a6)
0003c0: 306e00d6     movea.w    $d6(a6), a0
0003c4: 2008         move.l     a0, d0
0003c6: 6100fcfe     bsr.w      $c6
0003ca: 526e1332     addq.w     #$1, $1332(a6)
0003ce: 603e         bra.b      $40e
0003d0: 4a2f0001     tst.b      $1(a7)
0003d4: 672c         beq.b      $402
0003d6: 2f2f0012     move.l     $12(a7), -(a7)
0003da: 41ee00df     lea.l      $df(a6), a0
0003de: 2008         move.l     a0, d0
0003e0: 72fc         moveq      #$fc, d1
0003e2: c081         and.l      d1, d0
0003e4: 2200         move.l     d0, d1
0003e6: 202f001a     move.l     $1a(a7), d0
0003ea: 610011ee     bsr.w      $15da
0003ee: 588f         addq.l     #$4, a7
0003f0: 202f0002     move.l     $2(a7), d0
0003f4: 91af002e     sub.l      d0, $2e(a7)
0003f8: 202f0002     move.l     $2(a7), d0
0003fc: d1af001a     add.l      d0, $1a(a7)
000400: 6004         bra.b      $406
000402: 42af002e     clr.l      $2e(a7)
000406: 202f0012     move.l     $12(a7), d0
00040a: d1af0016     add.l      d0, $16(a7)
00040e: 4aaf002e     tst.l      $2e(a7)
000412: 6600fe86     bne.w      $29a
000416: 302e1334     move.w     $1334(a6), d0
00041a: 48c0         ext.l      d0
00041c: b0af000e     cmp.l      $e(a7), d0
000420: 6c06         bge.b      $428
000422: 3d6f00101334 move.w     $10(a7), $1334(a6)
000428: 202f0016     move.l     $16(a7), d0
00042c: 90af0006     sub.l      $6(a7), d0
000430: 4fef0016     lea.l      $16(a7), a7
000434: 4ced0104fff8 movem.l    -$8(a5), d2/a0
00043a: 4e5d         unlk       a5
00043c: 4e75         rts        
00043e: 4e550000     link.w     a5, #$0
000442: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
000446: 4fefffec     lea.l      -$14(a7), a7
00044a: 206e008a     movea.l    $8a(a6), a0
00044e: 24680008     movea.l    $8(a0), a2
000452: 206e008a     movea.l    $8a(a6), a0
000456: 26680014     movea.l    $14(a0), a3
00045a: 206e008a     movea.l    $8a(a6), a0
00045e: 28680018     movea.l    $18(a0), a4
000462: 4a2a0081     tst.b      $81(a2)
000466: 6746         beq.b      $4ae
000468: 203c000000d0 move.l     #$d0, d0
00046e: 6100fc56     bsr.w      $c6
000472: 603a         bra.b      $4ae
000474: 41fa005e     lea.l      $4d4(pc), a0
000478: 29480004     move.l     a0, $4(a4)
00047c: 6020         bra.b      $49e
00047e: 4aae00b2     tst.l      $b2(a6)
000482: 660a         bne.b      $48e
000484: 203c000000f6 move.l     #$f6, d0
00048a: 6100fc3a     bsr.w      $c6
00048e: 202e00b6     move.l     $b6(a6), d0
000492: 29400004     move.l     d0, $4(a4)
000496: 602e         bra.b      $4c6
000498: 296e132a0004 move.l     $132a(a6), $4(a4)
00049e: 7000         moveq      #$0, d0
0004a0: 6024         bra.b      $4c6
0004a2: 203c000000d0 move.l     #$d0, d0
0004a8: 6100fc1c     bsr.w      $c6
0004ac: 6018         bra.b      $4c6
0004ae: 302f0016     move.w     $16(a7), d0
0004b2: 0c400001     cmpi.w     #$1, d0
0004b6: 67c6         beq.b      $47e
0004b8: 0c407f42     cmpi.w     #$7f42, d0
0004bc: 67da         beq.b      $498
0004be: 0c40ff31     cmpi.w     #$ff31, d0
0004c2: 67b0         beq.b      $474
0004c4: 60dc         bra.b      $4a2
0004c6: 4fef0014     lea.l      $14(a7), a7
0004ca: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
0004d0: 4e5d         unlk       a5
0004d2: 4e75         rts        
0004d4: 40282329     negx.b     $2329(a0)
0004d8: 6765         beq.b      $53f
0004da: 7473         moveq      #$73, d2
0004dc: 7461         moveq      #$61, d2
0004de: 742e         moveq      #$2e, d2
0004e0: 6309         bls.b      $4eb
0004e2: 392e3120     move.w     $3120(a6), -(a4)
0004e6: 2020         move.l     -(a0), d0
0004e8: 20362f32322f39352020 move.l     ([$322f3935, a6, d2.l * 8], $2020), d0
0004f2: 2020         move.l     -(a0), d0
0004f4: 31343a32     move.w     $32(a4, d3.l), -(a0)
0004f8: 363a3237     move.w     $3731(pc), d3
0004fc: 00004e55     ori.b      #$55, d0
000500: 000048e7     ori.b      #$e7, d0
000504: c0a0         and.l      -(a0), d0
000506: 206e008a     movea.l    $8a(a6), a0
00050a: 24680014     movea.l    $14(a0), a2
00050e: 60000116     bra.w      $626
000512: 206e008a     movea.l    $8a(a6), a0
000516: 2f280004     move.l     $4(a0), -(a7)
00051a: 206e008a     movea.l    $8a(a6), a0
00051e: 2210         move.l     (a0), d1
000520: 202f0008     move.l     $8(a7), d0
000524: 61000274     bsr.w      $79a
000528: 588f         addq.l     #$4, a7
00052a: 6000017e     bra.w      $6aa
00052e: 7000         moveq      #$0, d0
000530: 61000562     bsr.w      $a94
000534: 486e00ba     pea.l      $ba(a6)
000538: 7204         moveq      #$4, d1
00053a: 7003         moveq      #$3, d0
00053c: 6100050e     bsr.w      $a4c
000540: 588f         addq.l     #$4, a7
000542: 2d4000ce     move.l     d0, $ce(a6)
000546: 6618         bne.b      $560
000548: 486e00ba     pea.l      $ba(a6)
00054c: 41ef0006     lea.l      $6(a7), a0
000550: 2208         move.l     a0, d1
000552: 7002         moveq      #$2, d0
000554: 610007a6     bsr.w      $cfc
000558: 588f         addq.l     #$4, a7
00055a: 2d4000ce     move.l     d0, $ce(a6)
00055e: 6708         beq.b      $568
000560: 202e00ce     move.l     $ce(a6), d0
000564: 6100fb60     bsr.w      $c6
000568: 7200         moveq      #$0, d1
00056a: 7000         moveq      #$0, d0
00056c: 61000188     bsr.w      $6f6
000570: 306e00d6     movea.w    $d6(a6), a0
000574: 2008         move.l     a0, d0
000576: 6100fb4e     bsr.w      $c6
00057a: 7001         moveq      #$1, d0
00057c: 61000516     bsr.w      $a94
000580: 60000128     bra.w      $6aa
000584: 41ee0092     lea.l      $92(a6), a0
000588: 2008         move.l     a0, d0
00058a: 61000596     bsr.w      $b22
00058e: 41ee0092     lea.l      $92(a6), a0
000592: b1ee00a4     cmpa.l     $a4(a6), a0
000596: 6604         bne.b      $59c
000598: 42ae00a4     clr.l      $a4(a6)
00059c: 4aae00b2     tst.l      $b2(a6)
0005a0: 6770         beq.b      $612
0005a2: 0c2e000900b8 cmpi.b     #$9, $b8(a6)
0005a8: 6368         bls.b      $612
0005aa: 41ee0092     lea.l      $92(a6), a0
0005ae: 602a         bra.b      $5da
0005b0: 41ee0098     lea.l      $98(a6), a0
0005b4: 2008         move.l     a0, d0
0005b6: 6100056a     bsr.w      $b22
0005ba: 41ee0098     lea.l      $98(a6), a0
0005be: b1ee00a4     cmpa.l     $a4(a6), a0
0005c2: 6604         bne.b      $5c8
0005c4: 42ae00a4     clr.l      $a4(a6)
0005c8: 4aae00b2     tst.l      $b2(a6)
0005cc: 6744         beq.b      $612
0005ce: 0c2e000300b8 cmpi.b     #$3, $b8(a6)
0005d4: 643c         bcc.b      $612
0005d6: 41ee0098     lea.l      $98(a6), a0
0005da: 2008         move.l     a0, d0
0005dc: 610005a8     bsr.w      $b86
0005e0: 6030         bra.b      $612
0005e2: 41ee009e     lea.l      $9e(a6), a0
0005e6: 2008         move.l     a0, d0
0005e8: 61000538     bsr.w      $b22
0005ec: 600000bc     bra.w      $6aa
0005f0: 41ee0092     lea.l      $92(a6), a0
0005f4: 2008         move.l     a0, d0
0005f6: 61000562     bsr.w      $b5a
0005fa: 41ee0098     lea.l      $98(a6), a0
0005fe: 2008         move.l     a0, d0
000600: 61000558     bsr.w      $b5a
000604: 41ee009e     lea.l      $9e(a6), a0
000608: 2008         move.l     a0, d0
00060a: 6100054e     bsr.w      $b5a
00060e: 6000009a     bra.w      $6aa
000612: 7000         moveq      #$0, d0
000614: 60000094     bra.w      $6aa
000618: 203c000000d0 move.l     #$d0, d0
00061e: 6100faa6     bsr.w      $c6
000622: 60000086     bra.w      $6aa
000626: 302f0002     move.w     $2(a7), d0
00062a: 5740         subq.w     #$3, d0
00062c: 0c400036     cmpi.w     #$36, d0
000630: 62e6         bhi.b      $618
000632: d040         add.w      d0, d0
000634: 303b0006     move.w     $63c(pc, d0.w), d0
000638: 4efb0002     jmp        $63c(pc, d0.w)
00063c: ff3e         dc.w       $ff3e
00063e: ffdc         dc.w       $ffdc
000640: ffdc         dc.w       $ffdc
000642: ffdc         dc.w       $ffdc
000644: ffdc         dc.w       $ffdc
000646: ffdc         dc.w       $ffdc
000648: ffdc         dc.w       $ffdc
00064a: ffdc         dc.w       $ffdc
00064c: ffdc         dc.w       $ffdc
00064e: ffdc         dc.w       $ffdc
000650: ffdc         dc.w       $ffdc
000652: ffdc         dc.w       $ffdc
000654: ffdc         dc.w       $ffdc
000656: ffdc         dc.w       $ffdc
000658: ffdc         dc.w       $ffdc
00065a: ffdc         dc.w       $ffdc
00065c: ffdc         dc.w       $ffdc
00065e: ffdc         dc.w       $ffdc
000660: ffdc         dc.w       $ffdc
000662: ffdc         dc.w       $ffdc
000664: ffdc         dc.w       $ffdc
000666: ffdc         dc.w       $ffdc
000668: ffdc         dc.w       $ffdc
00066a: ffa6         dc.w       $ffa6
00066c: ffb4         dc.w       $ffb4
00066e: ffdc         dc.w       $ffdc
000670: ffdc         dc.w       $ffdc
000672: ffdc         dc.w       $ffdc
000674: ffdc         dc.w       $ffdc
000676: ffdc         dc.w       $ffdc
000678: ffdc         dc.w       $ffdc
00067a: ffdc         dc.w       $ffdc
00067c: ffdc         dc.w       $ffdc
00067e: fef2fef2ff48 fbf.l      $fef305c8
000684: ff74ffdc     frestore   (invalid.w)
000688: ffdc         dc.w       $ffdc
00068a: ffdc         dc.w       $ffdc
00068c: ffb4         dc.w       $ffb4
00068e: ffdc         dc.w       $ffdc
000690: ffdc         dc.w       $ffdc
000692: ffdc         dc.w       $ffdc
000694: fed6ffdcffdc fbf.l      $ffdd0672
00069a: ffdc         dc.w       $ffdc
00069c: fef2fef2ffd6 fbf.l      $fef30674
0006a2: fef2fef2fef2 fbf.l      $fef30596
0006a8: fef24ced0500 fbf.l      $4ced0baa
0006ae: fff8         dc.w       $fff8
0006b0: 4e5d         unlk       a5
0006b2: 4e75         rts        
0006b4: 4e550000     link.w     a5, #$0
0006b8: 48e78000     movem.l    d0, -(a7)
0006bc: 203c000000d0 move.l     #$d0, d0
0006c2: 6100fa02     bsr.w      $c6
0006c6: 4e5d         unlk       a5
0006c8: 4e75         rts        
0006ca: 4e550000     link.w     a5, #$0
0006ce: 48e78000     movem.l    d0, -(a7)
0006d2: 203c000000d0 move.l     #$d0, d0
0006d8: 6100f9ec     bsr.w      $c6
0006dc: 4e5d         unlk       a5
0006de: 4e75         rts        
0006e0: 4e550000     link.w     a5, #$0
0006e4: 48e78000     movem.l    d0, -(a7)
0006e8: 203c000000d0 move.l     #$d0, d0
0006ee: 6100f9d6     bsr.w      $c6
0006f2: 4e5d         unlk       a5
0006f4: 4e75         rts        
0006f6: 4e550000     link.w     a5, #$0
0006fa: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0006fe: 246e0000     movea.l    $0(a6), a2
000702: 206e008a     movea.l    $8a(a6), a0
000706: 26680014     movea.l    $14(a0), a3
00070a: 25570008     move.l     (a7), $8(a2)
00070e: 157c0080000c move.b     #$80, $c(a2)
000714: 3d6e00060008 move.w     $6(a6), $8(a6)
00071a: 41ee00ba     lea.l      $ba(a6), a0
00071e: 2008         move.l     a0, d0
000720: 61000670     bsr.w      $d92
000724: 2d4000ce     move.l     d0, $ce(a6)
000728: 6718         beq.b      $742
00072a: 022a007f000c andi.b     #$7f, $c(a2)
000730: 41ee00ba     lea.l      $ba(a6), a0
000734: 2008         move.l     a0, d0
000736: 61000878     bsr.w      $fb0
00073a: 202e00ce     move.l     $ce(a6), d0
00073e: 6100f986     bsr.w      $c6
000742: 7000         moveq      #$0, d0
000744: 61000d9e     bsr.w      $14e4
000748: 382b0026     move.w     $26(a3), d4
00074c: 671a         beq.b      $768
00074e: 0c440002     cmpi.w     #$2, d4
000752: 6706         beq.b      $75a
000754: 0c440003     cmpi.w     #$3, d4
000758: 660e         bne.b      $768
00075a: 022a007f000c andi.b     #$7f, $c(a2)
000760: 48c4         ext.l      d4
000762: 2004         move.l     d4, d0
000764: 6100f960     bsr.w      $c6
000768: 4a6e0008     tst.w      $8(a6)
00076c: 66d4         bne.b      $742
00076e: 022a007f000c andi.b     #$7f, $c(a2)
000774: 202a0008     move.l     $8(a2), d0
000778: 9097         sub.l      (a7), d0
00077a: b0af0004     cmp.l      $4(a7), d0
00077e: 630a         bls.b      $78a
000780: 203c000000d2 move.l     #$d2, d0
000786: 6100f93e     bsr.w      $c6
00078a: 202a0008     move.l     $8(a2), d0
00078e: 9097         sub.l      (a7), d0
000790: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
000796: 4e5d         unlk       a5
000798: 4e75         rts        
00079a: 4e550000     link.w     a5, #$0
00079e: 48e7c080     movem.l    d0-d1/a0, -(a7)
0007a2: 4fefffea     lea.l      -$16(a7), a7
0007a6: 3ebc002f     move.w     #$2f, (a7)
0007aa: 4a2e0058     tst.b      $58(a6)
0007ae: 670a         beq.b      $7ba
0007b0: 203c000000fa move.l     #$fa, d0
0007b6: 6100f90e     bsr.w      $c6
0007ba: 486e00ba     pea.l      $ba(a6)
0007be: 7204         moveq      #$4, d1
0007c0: 7003         moveq      #$3, d0
0007c2: 61000288     bsr.w      $a4c
0007c6: 588f         addq.l     #$4, a7
0007c8: 2d4000ce     move.l     d0, $ce(a6)
0007cc: 6648         bne.b      $816
0007ce: 486e00ba     pea.l      $ba(a6)
0007d2: 41ef0004     lea.l      $4(a7), a0
0007d6: 2208         move.l     a0, d1
0007d8: 7002         moveq      #$2, d0
0007da: 61000520     bsr.w      $cfc
0007de: 588f         addq.l     #$4, a7
0007e0: 2d4000ce     move.l     d0, $ce(a6)
0007e4: 6630         bne.b      $816
0007e6: 486e00ba     pea.l      $ba(a6)
0007ea: 41ef001e     lea.l      $1e(a7), a0
0007ee: 2208         move.l     a0, d1
0007f0: 7004         moveq      #$4, d0
0007f2: 61000508     bsr.w      $cfc
0007f6: 588f         addq.l     #$4, a7
0007f8: 2d4000ce     move.l     d0, $ce(a6)
0007fc: 6618         bne.b      $816
0007fe: 486e00ba     pea.l      $ba(a6)
000802: 41ef002e     lea.l      $2e(a7), a0
000806: 2208         move.l     a0, d1
000808: 7004         moveq      #$4, d0
00080a: 610004f0     bsr.w      $cfc
00080e: 588f         addq.l     #$4, a7
000810: 2d4000ce     move.l     d0, $ce(a6)
000814: 6708         beq.b      $81e
000816: 202e00ce     move.l     $ce(a6), d0
00081a: 6100f8aa     bsr.w      $c6
00081e: 700b         moveq      #$b, d0
000820: 222f002a     move.l     $2a(a7), d1
000824: e1a9         lsl.l      d0, d1
000826: 202f0016     move.l     $16(a7), d0
00082a: 6100feca     bsr.w      $6f6
00082e: 2f400012     move.l     d0, $12(a7)
000832: 306e00d6     movea.w    $d6(a6), a0
000836: 2f480006     move.l     a0, $6(a7)
00083a: 6708         beq.b      $844
00083c: 202f0006     move.l     $6(a7), d0
000840: 6100f884     bsr.w      $c6
000844: 202f0012     move.l     $12(a7), d0
000848: 4fef0016     lea.l      $16(a7), a7
00084c: 4ced0100fffc movem.l    -$4(a5), a0
000852: 4e5d         unlk       a5
000854: 4e75         rts        
000856: 4e550000     link.w     a5, #$0
00085a: 48e7c000     movem.l    d0-d1, -(a7)
00085e: 203c000000f4 move.l     #$f4, d0
000864: 6100f860     bsr.w      $c6
000868: 4e5d         unlk       a5
00086a: 4e75         rts        
00086c: 4e550000     link.w     a5, #$0
000870: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000874: 4fefffec     lea.l      -$14(a7), a7
000878: 61000a1a     bsr.w      $1294
00087c: 3f400012     move.w     d0, $12(a7)
000880: 0c6f00030012 cmpi.w     #$3, $12(a7)
000886: 660000fa     bne.w      $982
00088a: 61000a38     bsr.w      $12c4
00088e: 41d7         lea.l      (a7), a0
000890: 2208         move.l     a0, d1
000892: 7003         moveq      #$3, d0
000894: 61000556     bsr.w      $dec
000898: 4a80         tst.l      d0
00089a: 670c         beq.b      $8a8
00089c: 13fc0001009f00fe move.b     #$1, $9f00fe.l
0008a4: 600000dc     bra.w      $982
0008a8: 41ef000f     lea.l      $f(a7), a0
0008ac: 2208         move.l     a0, d1
0008ae: 41d7         lea.l      (a7), a0
0008b0: 2008         move.l     a0, d0
0008b2: 610006bc     bsr.w      $f70
0008b6: 600000ac     bra.w      $964
0008ba: 486e00d2     pea.l      $d2(a6)
0008be: 41ef000e     lea.l      $e(a7), a0
0008c2: 2208         move.l     a0, d1
0008c4: 41ef0004     lea.l      $4(a7), a0
0008c8: 2008         move.l     a0, d0
0008ca: 610005bc     bsr.w      $e88
0008ce: 588f         addq.l     #$4, a7
0008d0: 2d4000ce     move.l     d0, $ce(a6)
0008d4: 486e00d6     pea.l      $d6(a6)
0008d8: 222f000e     move.l     $e(a7), d1
0008dc: 202e00d2     move.l     $d2(a6), d0
0008e0: 61000aca     bsr.w      $13ac
0008e4: 588f         addq.l     #$4, a7
0008e6: 4a6e0008     tst.w      $8(a6)
0008ea: 6700008a     beq.w      $976
0008ee: 7201         moveq      #$1, d1
0008f0: 7000         moveq      #$0, d0
0008f2: 302e0008     move.w     $8(a6), d0
0008f6: 61000bbe     bsr.w      $14b6
0008fa: 426e0008     clr.w      $8(a6)
0008fe: 60000076     bra.w      $976
000902: 486e00b2     pea.l      $b2(a6)
000906: 41ef000e     lea.l      $e(a7), a0
00090a: 2208         move.l     a0, d1
00090c: 41ef0004     lea.l      $4(a7), a0
000910: 2008         move.l     a0, d0
000912: 61000574     bsr.w      $e88
000916: 588f         addq.l     #$4, a7
000918: 2d4000ce     move.l     d0, $ce(a6)
00091c: 206f000a     movea.l    $a(a7), a0
000920: 2d5000b6     move.l     (a0), $b6(a6)
000924: 47ee00b2     lea.l      $b2(a6), a3
000928: 0c2b00090006 cmpi.b     #$9, $6(a3)
00092e: 630a         bls.b      $93a
000930: 41ee0092     lea.l      $92(a6), a0
000934: 2008         move.l     a0, d0
000936: 6100024e     bsr.w      $b86
00093a: 0c2b00030006 cmpi.b     #$3, $6(a3)
000940: 640e         bcc.b      $950
000942: 41ee0098     lea.l      $98(a6), a0
000946: 2008         move.l     a0, d0
000948: 6100023c     bsr.w      $b86
00094c: 422e005d     clr.b      $5d(a6)
000950: 082b00070004 btst.b     #$7, $4(a3)
000956: 671e         beq.b      $976
000958: 41ee009e     lea.l      $9e(a6), a0
00095c: 2008         move.l     a0, d0
00095e: 61000258     bsr.w      $bb8
000962: 6012         bra.b      $976
000964: 7000         moveq      #$0, d0
000966: 102f000f     move.b     $f(a7), d0
00096a: 4a40         tst.w      d0
00096c: 6700ff4c     beq.w      $8ba
000970: 0c400006     cmpi.w     #$6, d0
000974: 678c         beq.b      $902
000976: 41d7         lea.l      (a7), a0
000978: 2008         move.l     a0, d0
00097a: 61000634     bsr.w      $fb0
00097e: 7000         moveq      #$0, d0
000980: 6002         bra.b      $984
000982: 70ff         moveq      #$ff, d0
000984: 4fef0014     lea.l      $14(a7), a7
000988: 4ced0d02fff0 movem.l    -$10(a5), d1/a0/a2-a3
00098e: 4e5d         unlk       a5
000990: 4e75         rts        
000992: 4e550000     link.w     a5, #$0
000996: 48e7c080     movem.l    d0-d1/a0, -(a7)
00099a: 558f         subq.l     #$2, a7
00099c: 3ebc0001     move.w     #$1, (a7)
0009a0: 53ae00aa     subq.l     #$1, $aa(a6)
0009a4: 66000098     bne.w      $a3e
0009a8: 4a6e0006     tst.w      $6(a6)
0009ac: 675e         beq.b      $a0c
0009ae: 60000088     bra.w      $a38
0009b2: 4a6e1328     tst.w      $1328(a6)
0009b6: 6612         bne.b      $9ca
0009b8: 486e00c4     pea.l      $c4(a6)
0009bc: 7206         moveq      #$6, d1
0009be: 7003         moveq      #$3, d0
0009c0: 6100021e     bsr.w      $be0
0009c4: 588f         addq.l     #$4, a7
0009c6: 4a80         tst.l      d0
0009c8: 6708         beq.b      $9d2
0009ca: 1d7c000100a9 move.b     #$1, $a9(a6)
0009d0: 6058         bra.b      $a2a
0009d2: 486e00c4     pea.l      $c4(a6)
0009d6: 41ef0004     lea.l      $4(a7), a0
0009da: 2208         move.l     a0, d1
0009dc: 7002         moveq      #$2, d0
0009de: 6100031c     bsr.w      $cfc
0009e2: 588f         addq.l     #$4, a7
0009e4: 4a80         tst.l      d0
0009e6: 6708         beq.b      $9f0
0009e8: 1d7c000200a9 move.b     #$2, $a9(a6)
0009ee: 603a         bra.b      $a2a
0009f0: 41ee00c4     lea.l      $c4(a6), a0
0009f4: 2008         move.l     a0, d0
0009f6: 6100039a     bsr.w      $d92
0009fa: 4a80         tst.l      d0
0009fc: 6708         beq.b      $a06
0009fe: 1d7c000300a9 move.b     #$3, $a9(a6)
000a04: 6024         bra.b      $a2a
000a06: 422e00a9     clr.b      $a9(a6)
000a0a: 601e         bra.b      $a2a
000a0c: 102e00a9     move.b     $a9(a6), d0
000a10: 4880         ext.w      d0
000a12: 0c400003     cmpi.w     #$3, d0
000a16: 6212         bhi.b      $a2a
000a18: d040         add.w      d0, d0
000a1a: 303b0006     move.w     $a22(pc, d0.w), d0
000a1e: 4efb0002     jmp        $a22(pc, d0.w)
000a22: ff90         dc.w       $ff90
000a24: ff90         dc.w       $ff90
000a26: ffb0         dc.w       $ffb0
000a28: ffce         dc.w       $ffce
000a2a: 4a2e00a9     tst.b      $a9(a6)
000a2e: 6608         bne.b      $a38
000a30: 2d6e00ae00aa move.l     $ae(a6), $aa(a6)
000a36: 6006         bra.b      $a3e
000a38: 7001         moveq      #$1, d0
000a3a: 2d4000aa     move.l     d0, $aa(a6)
000a3e: 70ff         moveq      #$ff, d0
000a40: 548f         addq.l     #$2, a7
000a42: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000a48: 4e5d         unlk       a5
000a4a: 4e75         rts        
000a4c: 4e550000     link.w     a5, #$0
000a50: 48e7cc00     movem.l    d0-d1/d4-d5, -(a7)
000a54: 7864         moveq      #$64, d4
000a56: 3d7c00011328 move.w     #$1, $1328(a6)
000a5c: 6006         bra.b      $a64
000a5e: 7005         moveq      #$5, d0
000a60: 61000a96     bsr.w      $14f8
000a64: 2f2f0018     move.l     $18(a7), -(a7)
000a68: 7000         moveq      #$0, d0
000a6a: 102f000b     move.b     $b(a7), d0
000a6e: 2200         move.l     d0, d1
000a70: 7000         moveq      #$0, d0
000a72: 102f0007     move.b     $7(a7), d0
000a76: 61000168     bsr.w      $be0
000a7a: 588f         addq.l     #$4, a7
000a7c: 2a00         move.l     d0, d5
000a7e: 6704         beq.b      $a84
000a80: 5384         subq.l     #$1, d4
000a82: 66da         bne.b      $a5e
000a84: 426e1328     clr.w      $1328(a6)
000a88: 2005         move.l     d5, d0
000a8a: 4ced0030fff8 movem.l    -$8(a5), d4-d5
000a90: 4e5d         unlk       a5
000a92: 4e75         rts        
000a94: 4e550000     link.w     a5, #$0
000a98: 48e7c080     movem.l    d0-d1/a0, -(a7)
000a9c: 4feffff6     lea.l      -$a(a7), a7
000aa0: 3ebc0003     move.w     #$3, (a7)
000aa4: 7000         moveq      #$0, d0
000aa6: 102f000d     move.b     $d(a7), d0
000aaa: 122e00a8     move.b     $a8(a6), d1
000aae: 4881         ext.w      d1
000ab0: b041         cmp.w      d1, d0
000ab2: 6c04         bge.b      $ab8
000ab4: 7000         moveq      #$0, d0
000ab6: 605c         bra.b      $b14
000ab8: 486e00ba     pea.l      $ba(a6)
000abc: 7204         moveq      #$4, d1
000abe: 7003         moveq      #$3, d0
000ac0: 6100ff8a     bsr.w      $a4c
000ac4: 588f         addq.l     #$4, a7
000ac6: 2d4000ce     move.l     d0, $ce(a6)
000aca: 6618         bne.b      $ae4
000acc: 486e00ba     pea.l      $ba(a6)
000ad0: 41ef0004     lea.l      $4(a7), a0
000ad4: 2208         move.l     a0, d1
000ad6: 7002         moveq      #$2, d0
000ad8: 61000222     bsr.w      $cfc
000adc: 588f         addq.l     #$4, a7
000ade: 2d4000ce     move.l     d0, $ce(a6)
000ae2: 6708         beq.b      $aec
000ae4: 202e00ce     move.l     $ce(a6), d0
000ae8: 6100f5dc     bsr.w      $c6
000aec: 7200         moveq      #$0, d1
000aee: 7000         moveq      #$0, d0
000af0: 6100fc04     bsr.w      $6f6
000af4: 2f400006     move.l     d0, $6(a7)
000af8: 306e00d6     movea.w    $d6(a6), a0
000afc: 2f480002     move.l     a0, $2(a7)
000b00: 6708         beq.b      $b0a
000b02: 202f0002     move.l     $2(a7), d0
000b06: 6100f5be     bsr.w      $c6
000b0a: 7001         moveq      #$1, d0
000b0c: 1d4000a8     move.b     d0, $a8(a6)
000b10: 4880         ext.w      d0
000b12: 48c0         ext.l      d0
000b14: 4fef000a     lea.l      $a(a7), a7
000b18: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000b1e: 4e5d         unlk       a5
000b20: 4e75         rts        
000b22: 4e550000     link.w     a5, #$0
000b26: 48e780a0     movem.l    d0/a0/a2, -(a7)
000b2a: 2440         movea.l    d0, a2
000b2c: 206e008a     movea.l    $8a(a6), a0
000b30: 20680014     movea.l    $14(a0), a0
000b34: 3490         move.w     (a0), (a2)
000b36: 206e008a     movea.l    $8a(a6), a0
000b3a: 20680018     movea.l    $18(a0), a0
000b3e: 3568000a0002 move.w     $a(a0), $2(a2)
000b44: 206e008a     movea.l    $8a(a6), a0
000b48: 20680008     movea.l    $8(a0), a0
000b4c: 35500004     move.w     (a0), $4(a2)
000b50: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000b56: 4e5d         unlk       a5
000b58: 4e75         rts        
000b5a: 4e550000     link.w     a5, #$0
000b5e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000b62: 2440         movea.l    d0, a2
000b64: 206e008a     movea.l    $8a(a6), a0
000b68: 20680008     movea.l    $8(a0), a0
000b6c: 7000         moveq      #$0, d0
000b6e: 3010         move.w     (a0), d0
000b70: 322a0004     move.w     $4(a2), d1
000b74: 48c1         ext.l      d1
000b76: b081         cmp.l      d1, d0
000b78: 6602         bne.b      $b7c
000b7a: 4252         clr.w      (a2)
000b7c: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
000b82: 4e5d         unlk       a5
000b84: 4e75         rts        
000b86: 4e550000     link.w     a5, #$0
000b8a: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000b8e: 2440         movea.l    d0, a2
000b90: b5ee00a4     cmpa.l     $a4(a6), a2
000b94: 6716         beq.b      $bac
000b96: 3812         move.w     (a2), d4
000b98: 6712         beq.b      $bac
000b9a: 2d4a00a4     move.l     a2, $a4(a6)
000b9e: 306a0002     movea.w    $2(a2), a0
000ba2: 2208         move.l     a0, d1
000ba4: 48c4         ext.l      d4
000ba6: 2004         move.l     d4, d0
000ba8: 6100090c     bsr.w      $14b6
000bac: 7000         moveq      #$0, d0
000bae: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
000bb4: 4e5d         unlk       a5
000bb6: 4e75         rts        
000bb8: 4e550000     link.w     a5, #$0
000bbc: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000bc0: 2440         movea.l    d0, a2
000bc2: 3812         move.w     (a2), d4
000bc4: 670e         beq.b      $bd4
000bc6: 306a0002     movea.w    $2(a2), a0
000bca: 2208         move.l     a0, d1
000bcc: 48c4         ext.l      d4
000bce: 2004         move.l     d4, d0
000bd0: 610008e4     bsr.w      $14b6
000bd4: 7000         moveq      #$0, d0
000bd6: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
000bdc: 4e5d         unlk       a5
000bde: 4e75         rts        
000be0: 4e550000     link.w     a5, #$0
000be4: 48e7c080     movem.l    d0-d1/a0, -(a7)
000be8: 4feffff0     lea.l      -$10(a7), a7
000bec: 7000         moveq      #$0, d0
000bee: 102f0013     move.b     $13(a7), d0
000bf2: 610006f0     bsr.w      $12e4
000bf6: 4a00         tst.b      d0
000bf8: 6606         bne.b      $c00
000bfa: 7002         moveq      #$2, d0
000bfc: 600000f0     bra.w      $cee
000c00: 7000         moveq      #$0, d0
000c02: 102f0017     move.b     $17(a7), d0
000c06: 61000726     bsr.w      $132e
000c0a: 4a00         tst.b      d0
000c0c: 6606         bne.b      $c14
000c0e: 7003         moveq      #$3, d0
000c10: 600000dc     bra.w      $cee
000c14: 2f7c009f0000000c move.l     #$9f0000, $c(a7)
000c1c: 7000         moveq      #$0, d0
000c1e: 102f0013     move.b     $13(a7), d0
000c22: 7206         moveq      #$6, d1
000c24: 61000a6c     bsr.w      $1692
000c28: 222f000c     move.l     $c(a7), d1
000c2c: 5481         addq.l     #$2, d1
000c2e: d081         add.l      d1, d0
000c30: 2f400008     move.l     d0, $8(a7)
000c34: 206f0008     movea.l    $8(a7), a0
000c38: 7000         moveq      #$0, d0
000c3a: 10280003     move.b     $3(a0), d0
000c3e: e188         lsl.l      #$8, d0
000c40: d0af000c     add.l      $c(a7), d0
000c44: 206f0024     movea.l    $24(a7), a0
000c48: 2080         move.l     d0, (a0)
000c4a: 206f0008     movea.l    $8(a7), a0
000c4e: 7000         moveq      #$0, d0
000c50: 10280001     move.b     $1(a0), d0
000c54: e188         lsl.l      #$8, d0
000c56: d0af000c     add.l      $c(a7), d0
000c5a: 206f0024     movea.l    $24(a7), a0
000c5e: 21400004     move.l     d0, $4(a0)
000c62: 206f0008     movea.l    $8(a7), a0
000c66: 7000         moveq      #$0, d0
000c68: 10280001     move.b     $1(a0), d0
000c6c: 206f0008     movea.l    $8(a7), a0
000c70: 7200         moveq      #$0, d1
000c72: 12280002     move.b     $2(a0), d1
000c76: 9240         sub.w      d0, d1
000c78: 5241         addq.w     #$1, d1
000c7a: e149         lsl.w      #$8, d1
000c7c: 206f0024     movea.l    $24(a7), a0
000c80: 31410008     move.w     d1, $8(a0)
000c84: 206f0024     movea.l    $24(a7), a0
000c88: 2f6800040004 move.l     $4(a0), $4(a7)
000c8e: 206f0008     movea.l    $8(a7), a0
000c92: 102f0013     move.b     $13(a7), d0
000c96: b010         cmp.b      (a0), d0
000c98: 6706         beq.b      $ca0
000c9a: 7004         moveq      #$4, d0
000c9c: 2e80         move.l     d0, (a7)
000c9e: 604c         bra.b      $cec
000ca0: 206f0004     movea.l    $4(a7), a0
000ca4: 4a280001     tst.b      $1(a0)
000ca8: 6704         beq.b      $cae
000caa: 7001         moveq      #$1, d0
000cac: 60ee         bra.b      $c9c
000cae: 206f0004     movea.l    $4(a7), a0
000cb2: 10af0013     move.b     $13(a7), (a0)
000cb6: 206f0004     movea.l    $4(a7), a0
000cba: 116f00170002 move.b     $17(a7), $2(a0)
000cc0: 206f0004     movea.l    $4(a7), a0
000cc4: 42280003     clr.b      $3(a0)
000cc8: 206f0004     movea.l    $4(a7), a0
000ccc: 117c00010001 move.b     #$1, $1(a0)
000cd2: 206f0004     movea.l    $4(a7), a0
000cd6: 42280004     clr.b      $4(a0)
000cda: 206f0004     movea.l    $4(a7), a0
000cde: 42280005     clr.b      $5(a0)
000ce2: 206f0004     movea.l    $4(a7), a0
000ce6: 42680006     clr.w      $6(a0)
000cea: 4297         clr.l      (a7)
000cec: 2017         move.l     (a7), d0
000cee: 4fef0010     lea.l      $10(a7), a7
000cf2: 4ced0100fffc movem.l    -$4(a5), a0
000cf8: 4e5d         unlk       a5
000cfa: 4e75         rts        
000cfc: 4e550000     link.w     a5, #$0
000d00: 48e7c080     movem.l    d0-d1/a0, -(a7)
000d04: 4feffff4     lea.l      -$c(a7), a7
000d08: 206f0020     movea.l    $20(a7), a0
000d0c: 2f6800040004 move.l     $4(a0), $4(a7)
000d12: 206f0004     movea.l    $4(a7), a0
000d16: 0c2800010001 cmpi.b     #$1, $1(a0)
000d1c: 6706         beq.b      $d24
000d1e: 7006         moveq      #$6, d0
000d20: 2e80         move.l     d0, (a7)
000d22: 605e         bra.b      $d82
000d24: 206f0020     movea.l    $20(a7), a0
000d28: 30280008     move.w     $8(a0), d0
000d2c: 48c0         ext.l      d0
000d2e: 206f0004     movea.l    $4(a7), a0
000d32: 32280006     move.w     $6(a0), d1
000d36: 48c1         ext.l      d1
000d38: d2af000c     add.l      $c(a7), d1
000d3c: b081         cmp.l      d1, d0
000d3e: 6c04         bge.b      $d44
000d40: 7005         moveq      #$5, d0
000d42: 60dc         bra.b      $d20
000d44: 202f0004     move.l     $4(a7), d0
000d48: 5080         addq.l     #$8, d0
000d4a: 206f0004     movea.l    $4(a7), a0
000d4e: 32280006     move.w     $6(a0), d1
000d52: 48c1         ext.l      d1
000d54: d081         add.l      d1, d0
000d56: 2f400008     move.l     d0, $8(a7)
000d5a: 2f2f0008     move.l     $8(a7), -(a7)
000d5e: 222f0014     move.l     $14(a7), d1
000d62: 202f0010     move.l     $10(a7), d0
000d66: 61000644     bsr.w      $13ac
000d6a: 588f         addq.l     #$4, a7
000d6c: 206f0004     movea.l    $4(a7), a0
000d70: 30280006     move.w     $6(a0), d0
000d74: d06f000e     add.w      $e(a7), d0
000d78: 206f0004     movea.l    $4(a7), a0
000d7c: 31400006     move.w     d0, $6(a0)
000d80: 4297         clr.l      (a7)
000d82: 2017         move.l     (a7), d0
000d84: 4fef000c     lea.l      $c(a7), a7
000d88: 4ced0100fffc movem.l    -$4(a5), a0
000d8e: 4e5d         unlk       a5
000d90: 4e75         rts        
000d92: 4e550000     link.w     a5, #$0
000d96: 48e78880     movem.l    d0/d4/a0, -(a7)
000d9a: 518f         subq.l     #$8, a7
000d9c: 206f0008     movea.l    $8(a7), a0
000da0: 2f6800040004 move.l     $4(a0), $4(a7)
000da6: 206f0004     movea.l    $4(a7), a0
000daa: 0c2800010001 cmpi.b     #$1, $1(a0)
000db0: 670c         beq.b      $dbe
000db2: 7006         moveq      #$6, d0
000db4: 2e80         move.l     d0, (a7)
000db6: 6026         bra.b      $dde
000db8: 7005         moveq      #$5, d0
000dba: 6100073c     bsr.w      $14f8
000dbe: 4a3900c00002 tst.b      $c00002.l
000dc4: 66f2         bne.b      $db8
000dc6: 206f0004     movea.l    $4(a7), a0
000dca: 117c00030001 move.b     #$3, $1(a0)
000dd0: 206f0004     movea.l    $4(a7), a0
000dd4: 1810         move.b     (a0), d4
000dd6: 13c400c00002 move.b     d4, $c00002.l
000ddc: 4297         clr.l      (a7)
000dde: 2017         move.l     (a7), d0
000de0: 508f         addq.l     #$8, a7
000de2: 4ced0110fff8 movem.l    -$8(a5), d4/a0
000de8: 4e5d         unlk       a5
000dea: 4e75         rts        
000dec: 4e550000     link.w     a5, #$0
000df0: 48e7c080     movem.l    d0-d1/a0, -(a7)
000df4: 4feffff0     lea.l      -$10(a7), a7
000df8: 2f7c009f0000000c move.l     #$9f0000, $c(a7)
000e00: 7000         moveq      #$0, d0
000e02: 102f0013     move.b     $13(a7), d0
000e06: 7206         moveq      #$6, d1
000e08: 61000888     bsr.w      $1692
000e0c: 222f000c     move.l     $c(a7), d1
000e10: 5481         addq.l     #$2, d1
000e12: d081         add.l      d1, d0
000e14: 2f400008     move.l     d0, $8(a7)
000e18: 206f0008     movea.l    $8(a7), a0
000e1c: 7000         moveq      #$0, d0
000e1e: 10280003     move.b     $3(a0), d0
000e22: e188         lsl.l      #$8, d0
000e24: d0af000c     add.l      $c(a7), d0
000e28: 2f400004     move.l     d0, $4(a7)
000e2c: 206f0004     movea.l    $4(a7), a0
000e30: 0c2800030001 cmpi.b     #$3, $1(a0)
000e36: 6706         beq.b      $e3e
000e38: 7007         moveq      #$7, d0
000e3a: 2e80         move.l     d0, (a7)
000e3c: 603a         bra.b      $e78
000e3e: 206f0008     movea.l    $8(a7), a0
000e42: 7000         moveq      #$0, d0
000e44: 10280003     move.b     $3(a0), d0
000e48: e188         lsl.l      #$8, d0
000e4a: d0af000c     add.l      $c(a7), d0
000e4e: 206f0014     movea.l    $14(a7), a0
000e52: 2080         move.l     d0, (a0)
000e54: 206f0008     movea.l    $8(a7), a0
000e58: 7000         moveq      #$0, d0
000e5a: 10280001     move.b     $1(a0), d0
000e5e: e188         lsl.l      #$8, d0
000e60: d0af000c     add.l      $c(a7), d0
000e64: 206f0014     movea.l    $14(a7), a0
000e68: 21400004     move.l     d0, $4(a0)
000e6c: 206f0004     movea.l    $4(a7), a0
000e70: 117c00020001 move.b     #$2, $1(a0)
000e76: 4297         clr.l      (a7)
000e78: 2017         move.l     (a7), d0
000e7a: 4fef0010     lea.l      $10(a7), a7
000e7e: 4ced0100fffc movem.l    -$4(a5), a0
000e84: 4e5d         unlk       a5
000e86: 4e75         rts        
000e88: 4e550000     link.w     a5, #$0
000e8c: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000e90: 518f         subq.l     #$8, a7
000e92: 206f0008     movea.l    $8(a7), a0
000e96: 2f500004     move.l     (a0), $4(a7)
000e9a: 206f0004     movea.l    $4(a7), a0
000e9e: 0c2800020001 cmpi.b     #$2, $1(a0)
000ea4: 6704         beq.b      $eaa
000ea6: 7001         moveq      #$1, d0
000ea8: 6002         bra.b      $eac
000eaa: 7000         moveq      #$0, d0
000eac: 206f0004     movea.l    $4(a7), a0
000eb0: 4a680006     tst.w      $6(a0)
000eb4: 6c04         bge.b      $eba
000eb6: 7201         moveq      #$1, d1
000eb8: 6002         bra.b      $ebc
000eba: 7200         moveq      #$0, d1
000ebc: 8001         or.b       d1, d0
000ebe: 6706         beq.b      $ec6
000ec0: 7006         moveq      #$6, d0
000ec2: 2e80         move.l     d0, (a7)
000ec4: 601c         bra.b      $ee2
000ec6: 202f0004     move.l     $4(a7), d0
000eca: 5080         addq.l     #$8, d0
000ecc: 206f000c     movea.l    $c(a7), a0
000ed0: 2080         move.l     d0, (a0)
000ed2: 206f0004     movea.l    $4(a7), a0
000ed6: 30680006     movea.w    $6(a0), a0
000eda: 226f0020     movea.l    $20(a7), a1
000ede: 2288         move.l     a0, (a1)
000ee0: 4297         clr.l      (a7)
000ee2: 2017         move.l     (a7), d0
000ee4: 508f         addq.l     #$8, a7
000ee6: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000eec: 4e5d         unlk       a5
000eee: 4e75         rts        
000ef0: 4e550000     link.w     a5, #$0
000ef4: 48e7c080     movem.l    d0-d1/a0, -(a7)
000ef8: 518f         subq.l     #$8, a7
000efa: 206f000c     movea.l    $c(a7), a0
000efe: 2f6800040004 move.l     $4(a0), $4(a7)
000f04: 206f0004     movea.l    $4(a7), a0
000f08: 0c2800010001 cmpi.b     #$1, $1(a0)
000f0e: 6706         beq.b      $f16
000f10: 7006         moveq      #$6, d0
000f12: 2e80         move.l     d0, (a7)
000f14: 600c         bra.b      $f22
000f16: 206f0004     movea.l    $4(a7), a0
000f1a: 116f000b0005 move.b     $b(a7), $5(a0)
000f20: 4297         clr.l      (a7)
000f22: 2017         move.l     (a7), d0
000f24: 508f         addq.l     #$8, a7
000f26: 4ced0100fffc movem.l    -$4(a5), a0
000f2c: 4e5d         unlk       a5
000f2e: 4e75         rts        
000f30: 4e550000     link.w     a5, #$0
000f34: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000f38: 518f         subq.l     #$8, a7
000f3a: 206f0008     movea.l    $8(a7), a0
000f3e: 2f500004     move.l     (a0), $4(a7)
000f42: 206f0004     movea.l    $4(a7), a0
000f46: 0c2800020001 cmpi.b     #$2, $1(a0)
000f4c: 6706         beq.b      $f54
000f4e: 7006         moveq      #$6, d0
000f50: 2e80         move.l     d0, (a7)
000f52: 600e         bra.b      $f62
000f54: 206f0004     movea.l    $4(a7), a0
000f58: 226f000c     movea.l    $c(a7), a1
000f5c: 12a80005     move.b     $5(a0), (a1)
000f60: 4297         clr.l      (a7)
000f62: 2017         move.l     (a7), d0
000f64: 508f         addq.l     #$8, a7
000f66: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000f6c: 4e5d         unlk       a5
000f6e: 4e75         rts        
000f70: 4e550000     link.w     a5, #$0
000f74: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000f78: 518f         subq.l     #$8, a7
000f7a: 206f0008     movea.l    $8(a7), a0
000f7e: 2f500004     move.l     (a0), $4(a7)
000f82: 206f0004     movea.l    $4(a7), a0
000f86: 0c2800020001 cmpi.b     #$2, $1(a0)
000f8c: 6706         beq.b      $f94
000f8e: 7006         moveq      #$6, d0
000f90: 2e80         move.l     d0, (a7)
000f92: 600e         bra.b      $fa2
000f94: 206f0004     movea.l    $4(a7), a0
000f98: 226f000c     movea.l    $c(a7), a1
000f9c: 12a80002     move.b     $2(a0), (a1)
000fa0: 4297         clr.l      (a7)
000fa2: 2017         move.l     (a7), d0
000fa4: 508f         addq.l     #$8, a7
000fa6: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000fac: 4e5d         unlk       a5
000fae: 4e75         rts        
000fb0: 4e550000     link.w     a5, #$0
000fb4: 48e78080     movem.l    d0/a0, -(a7)
000fb8: 598f         subq.l     #$4, a7
000fba: 206f0004     movea.l    $4(a7), a0
000fbe: 2e90         move.l     (a0), (a7)
000fc0: 2057         movea.l    (a7), a0
000fc2: 42280001     clr.b      $1(a0)
000fc6: 588f         addq.l     #$4, a7
000fc8: 4ced0100fffc movem.l    -$4(a5), a0
000fce: 4e5d         unlk       a5
000fd0: 4e75         rts        
000fd2: 4e550000     link.w     a5, #$0
000fd6: 48e7c080     movem.l    d0-d1/a0, -(a7)
000fda: 4fefffe0     lea.l      -$20(a7), a7
000fde: 7000         moveq      #$0, d0
000fe0: 102f0023     move.b     $23(a7), d0
000fe4: 610002fe     bsr.w      $12e4
000fe8: 4a00         tst.b      d0
000fea: 6606         bne.b      $ff2
000fec: 7002         moveq      #$2, d0
000fee: 600001fa     bra.w      $11ea
000ff2: 2f7c009f0000001c move.l     #$9f0000, $1c(a7)
000ffa: 206f001c     movea.l    $1c(a7), a0
000ffe: 0c2800690001 cmpi.b     #$69, $1(a0)
001004: 670000b6     beq.w      $10bc
001008: 4857         pea.l      (a7)
00100a: 223c00005350 move.l     #$5350, d1
001010: 70ff         moveq      #$ff, d0
001012: 6100043a     bsr.w      $144e
001016: 588f         addq.l     #$4, a7
001018: 2f400018     move.l     d0, $18(a7)
00101c: 4aaf0018     tst.l      $18(a7)
001020: 67000174     beq.w      $1196
001024: 222f0018     move.l     $18(a7), d1
001028: 2017         move.l     (a7), d0
00102a: 6100044c     bsr.w      $1478
00102e: 4a80         tst.l      d0
001030: 66000164     bne.w      $1196
001034: 486f0004     pea.l      $4(a7)
001038: 223c00005350 move.l     #$5350, d1
00103e: 203cfffffe00 move.l     #$fffffe00, d0
001044: d0af0004     add.l      $4(a7), d0
001048: 61000404     bsr.w      $144e
00104c: 588f         addq.l     #$4, a7
00104e: 2f400018     move.l     d0, $18(a7)
001052: 4aaf0018     tst.l      $18(a7)
001056: 6700013e     beq.w      $1196
00105a: 486f0004     pea.l      $4(a7)
00105e: 223c00005350 move.l     #$5350, d1
001064: 203c00000200 move.l     #$200, d0
00106a: 610003e2     bsr.w      $144e
00106e: 588f         addq.l     #$4, a7
001070: 2f40001c     move.l     d0, $1c(a7)
001074: 4aaf001c     tst.l      $1c(a7)
001078: 6700011c     beq.w      $1196
00107c: 2217         move.l     (a7), d1
00107e: 202f001c     move.l     $1c(a7), d0
001082: 610001d6     bsr.w      $125a
001086: 222f0018     move.l     $18(a7), d1
00108a: 203cfffffe00 move.l     #$fffffe00, d0
001090: d097         add.l      (a7), d0
001092: 610003e4     bsr.w      $1478
001096: 4a80         tst.l      d0
001098: 660000fc     bne.w      $1196
00109c: 206f001c     movea.l    $1c(a7), a0
0010a0: 117c00690001 move.b     #$69, $1(a0)
0010a6: 13fc009f00c00001 move.b     #$9f, $c00001.l
0010ae: 13fc00ff00c00003 move.b     #$ff, $c00003.l
0010b6: 423900c00002 clr.b      $c00002.l
0010bc: 7000         moveq      #$0, d0
0010be: 102f0023     move.b     $23(a7), d0
0010c2: 7206         moveq      #$6, d1
0010c4: 610005cc     bsr.w      $1692
0010c8: 222f001c     move.l     $1c(a7), d1
0010cc: 5481         addq.l     #$2, d1
0010ce: d081         add.l      d1, d0
0010d0: 2f40000c     move.l     d0, $c(a7)
0010d4: 206f000c     movea.l    $c(a7), a0
0010d8: 102f0023     move.b     $23(a7), d0
0010dc: b010         cmp.b      (a0), d0
0010de: 6644         bne.b      $1124
0010e0: 206f000c     movea.l    $c(a7), a0
0010e4: 7000         moveq      #$0, d0
0010e6: 10280003     move.b     $3(a0), d0
0010ea: e188         lsl.l      #$8, d0
0010ec: d0af001c     add.l      $1c(a7), d0
0010f0: 2f400010     move.l     d0, $10(a7)
0010f4: 206f000c     movea.l    $c(a7), a0
0010f8: 7000         moveq      #$0, d0
0010fa: 10280001     move.b     $1(a0), d0
0010fe: e188         lsl.l      #$8, d0
001100: d0af001c     add.l      $1c(a7), d0
001104: 2f400014     move.l     d0, $14(a7)
001108: 2f2f0024     move.l     $24(a7), -(a7)
00110c: 2f2f0014     move.l     $14(a7), -(a7)
001110: 222f003c     move.l     $3c(a7), d1
001114: 202f001c     move.l     $1c(a7), d0
001118: 610000de     bsr.w      $11f8
00111c: 508f         addq.l     #$8, a7
00111e: 7009         moveq      #$9, d0
001120: 600000c8     bra.w      $11ea
001124: 486f0004     pea.l      $4(a7)
001128: 223c00005350 move.l     #$5350, d1
00112e: 202f0038     move.l     $38(a7), d0
001132: e188         lsl.l      #$8, d0
001134: 61000318     bsr.w      $144e
001138: 588f         addq.l     #$4, a7
00113a: 2f400014     move.l     d0, $14(a7)
00113e: 4aaf0014     tst.l      $14(a7)
001142: 6752         beq.b      $1196
001144: 202f0014     move.l     $14(a7), d0
001148: 90af001c     sub.l      $1c(a7), d0
00114c: 6c06         bge.b      $1154
00114e: 0680000000ff addi.l     #$ff, d0
001154: e080         asr.l      #$8, d0
001156: 2f400008     move.l     d0, $8(a7)
00115a: 206f000c     movea.l    $c(a7), a0
00115e: 116f000b0001 move.b     $b(a7), $1(a0)
001164: 102f000b     move.b     $b(a7), d0
001168: d02f0037     add.b      $37(a7), d0
00116c: 5300         subq.b     #$1, d0
00116e: 206f000c     movea.l    $c(a7), a0
001172: 11400002     move.b     d0, $2(a0)
001176: 486f0004     pea.l      $4(a7)
00117a: 223c00005350 move.l     #$5350, d1
001180: 202f0028     move.l     $28(a7), d0
001184: e188         lsl.l      #$8, d0
001186: 610002c6     bsr.w      $144e
00118a: 588f         addq.l     #$4, a7
00118c: 2f400010     move.l     d0, $10(a7)
001190: 4aaf0010     tst.l      $10(a7)
001194: 6604         bne.b      $119a
001196: 7008         moveq      #$8, d0
001198: 6050         bra.b      $11ea
00119a: 202f0010     move.l     $10(a7), d0
00119e: 90af001c     sub.l      $1c(a7), d0
0011a2: 6c06         bge.b      $11aa
0011a4: 0680000000ff addi.l     #$ff, d0
0011aa: e080         asr.l      #$8, d0
0011ac: 2f400008     move.l     d0, $8(a7)
0011b0: 206f000c     movea.l    $c(a7), a0
0011b4: 116f000b0003 move.b     $b(a7), $3(a0)
0011ba: 102f000b     move.b     $b(a7), d0
0011be: d02f0027     add.b      $27(a7), d0
0011c2: 5300         subq.b     #$1, d0
0011c4: 206f000c     movea.l    $c(a7), a0
0011c8: 11400004     move.b     d0, $4(a0)
0011cc: 206f000c     movea.l    $c(a7), a0
0011d0: 10af0023     move.b     $23(a7), (a0)
0011d4: 2f2f0024     move.l     $24(a7), -(a7)
0011d8: 2f2f0014     move.l     $14(a7), -(a7)
0011dc: 222f003c     move.l     $3c(a7), d1
0011e0: 202f001c     move.l     $1c(a7), d0
0011e4: 6112         bsr.b      $11f8
0011e6: 508f         addq.l     #$8, a7
0011e8: 7000         moveq      #$0, d0
0011ea: 4fef0020     lea.l      $20(a7), a7
0011ee: 4ced0100fffc movem.l    -$4(a5), a0
0011f4: 4e5d         unlk       a5
0011f6: 4e75         rts        
0011f8: 4e550000     link.w     a5, #$0
0011fc: 48e7c080     movem.l    d0-d1/a0, -(a7)
001200: 518f         subq.l     #$8, a7
001202: 2f6f001c0004 move.l     $1c(a7), $4(a7)
001208: 202f0020     move.l     $20(a7), d0
00120c: e188         lsl.l      #$8, d0
00120e: d0af0004     add.l      $4(a7), d0
001212: 2e80         move.l     d0, (a7)
001214: 600a         bra.b      $1220
001216: 206f0004     movea.l    $4(a7), a0
00121a: 4210         clr.b      (a0)
00121c: 52af0004     addq.l     #$1, $4(a7)
001220: 202f0004     move.l     $4(a7), d0
001224: b097         cmp.l      (a7), d0
001226: 65ee         bcs.b      $1216
001228: 2f6f00080004 move.l     $8(a7), $4(a7)
00122e: 202f000c     move.l     $c(a7), d0
001232: e188         lsl.l      #$8, d0
001234: d0af0004     add.l      $4(a7), d0
001238: 2e80         move.l     d0, (a7)
00123a: 600a         bra.b      $1246
00123c: 206f0004     movea.l    $4(a7), a0
001240: 4210         clr.b      (a0)
001242: 52af0004     addq.l     #$1, $4(a7)
001246: 202f0004     move.l     $4(a7), d0
00124a: b097         cmp.l      (a7), d0
00124c: 65ee         bcs.b      $123c
00124e: 508f         addq.l     #$8, a7
001250: 4ced0100fffc movem.l    -$4(a5), a0
001256: 4e5d         unlk       a5
001258: 4e75         rts        
00125a: 4e550000     link.w     a5, #$0
00125e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001262: 518f         subq.l     #$8, a7
001264: 2f6f00080004 move.l     $8(a7), $4(a7)
00126a: 202f0004     move.l     $4(a7), d0
00126e: d0af000c     add.l      $c(a7), d0
001272: 2e80         move.l     d0, (a7)
001274: 600a         bra.b      $1280
001276: 206f0004     movea.l    $4(a7), a0
00127a: 4210         clr.b      (a0)
00127c: 52af0004     addq.l     #$1, $4(a7)
001280: 202f0004     move.l     $4(a7), d0
001284: b097         cmp.l      (a7), d0
001286: 65ee         bcs.b      $1276
001288: 508f         addq.l     #$8, a7
00128a: 4ced0100fffc movem.l    -$4(a5), a0
001290: 4e5d         unlk       a5
001292: 4e75         rts        
001294: 4e550000     link.w     a5, #$0
001298: 48e78080     movem.l    d0/a0, -(a7)
00129c: 598f         subq.l     #$4, a7
00129e: 2ebc009f0000 move.l     #$9f0000, (a7)
0012a4: 2057         movea.l    (a7), a0
0012a6: 4a10         tst.b      (a0)
0012a8: 6608         bne.b      $12b2
0012aa: 2057         movea.l    (a7), a0
0012ac: 10b900c00000 move.b     $c00000.l, (a0)
0012b2: 2057         movea.l    (a7), a0
0012b4: 7000         moveq      #$0, d0
0012b6: 1010         move.b     (a0), d0
0012b8: 588f         addq.l     #$4, a7
0012ba: 4ced0100fffc movem.l    -$4(a5), a0
0012c0: 4e5d         unlk       a5
0012c2: 4e75         rts        
0012c4: 4e550000     link.w     a5, #$0
0012c8: 48e78080     movem.l    d0/a0, -(a7)
0012cc: 598f         subq.l     #$4, a7
0012ce: 2ebc009f0000 move.l     #$9f0000, (a7)
0012d4: 2057         movea.l    (a7), a0
0012d6: 4210         clr.b      (a0)
0012d8: 588f         addq.l     #$4, a7
0012da: 4ced0100fffc movem.l    -$4(a5), a0
0012e0: 4e5d         unlk       a5
0012e2: 4e75         rts        
0012e4: 4e550000     link.w     a5, #$0
0012e8: 48e78000     movem.l    d0, -(a7)
0012ec: 558f         subq.l     #$2, a7
0012ee: 600e         bra.b      $12fe
0012f0: 1f7c00010001 move.b     #$1, $1(a7)
0012f6: 602c         bra.b      $1324
0012f8: 422f0001     clr.b      $1(a7)
0012fc: 6026         bra.b      $1324
0012fe: 7000         moveq      #$0, d0
001300: 102f0005     move.b     $5(a7), d0
001304: 0c400007     cmpi.w     #$7, d0
001308: 62ee         bhi.b      $12f8
00130a: d040         add.w      d0, d0
00130c: 303b0006     move.w     $1314(pc, d0.w), d0
001310: 4efb0002     jmp        $1314(pc, d0.w)
001314: ffdc         dc.w       $ffdc
001316: ffdc         dc.w       $ffdc
001318: ffdc         dc.w       $ffdc
00131a: ffdc         dc.w       $ffdc
00131c: ffdc         dc.w       $ffdc
00131e: ffdc         dc.w       $ffdc
001320: ffdc         dc.w       $ffdc
001322: ffdc         dc.w       $ffdc
001324: 102f0001     move.b     $1(a7), d0
001328: 548f         addq.l     #$2, a7
00132a: 4e5d         unlk       a5
00132c: 4e75         rts        
00132e: 4e550000     link.w     a5, #$0
001332: 48e78000     movem.l    d0, -(a7)
001336: 558f         subq.l     #$2, a7
001338: 600e         bra.b      $1348
00133a: 1f7c00010001 move.b     #$1, $1(a7)
001340: 602e         bra.b      $1370
001342: 422f0001     clr.b      $1(a7)
001346: 6028         bra.b      $1370
001348: 7000         moveq      #$0, d0
00134a: 102f0005     move.b     $5(a7), d0
00134e: 0c400008     cmpi.w     #$8, d0
001352: 62ee         bhi.b      $1342
001354: d040         add.w      d0, d0
001356: 303b0006     move.w     $135e(pc, d0.w), d0
00135a: 4efb0002     jmp        $135e(pc, d0.w)
00135e: ffdc         dc.w       $ffdc
001360: ffdc         dc.w       $ffdc
001362: ffdc         dc.w       $ffdc
001364: ffdc         dc.w       $ffdc
001366: ffdc         dc.w       $ffdc
001368: ffdc         dc.w       $ffdc
00136a: ffdc         dc.w       $ffdc
00136c: ffdc         dc.w       $ffdc
00136e: ffdc         dc.w       $ffdc
001370: 102f0001     move.b     $1(a7), d0
001374: 548f         addq.l     #$2, a7
001376: 4e5d         unlk       a5
001378: 4e75         rts        
00137a: 48e74000     movem.l    d1, -(a7)
00137e: 4e40         trap       #$0
001380: 002b604848e7 ori.b      #$48, $48e7(a3)
001386: 40b0206f     negx.l     $6f(a0, d2.w)
00138a: 0014246f     ori.b      #$6f, (a4)
00138e: 0018266f     ori.b      #$6f, (a0)+
001392: 001c4e40     ori.b      #$40, (a4)+
001396: 002a605048e7 ori.b      #$50, $48e7(a2)
00139c: 40a0         negx.l     -(a0)
00139e: 207c00000000 movea.l    #$0, a0
0013a4: 2441         movea.l    d1, a2
0013a6: 4e40         trap       #$0
0013a8: 002a603448e7 ori.b      #$34, $48e7(a2)
0013ae: 60a0         bra.b      $1350
0013b0: 2400         move.l     d0, d2
0013b2: 2041         movea.l    d1, a0
0013b4: 246f0014     movea.l    $14(a7), a2
0013b8: 4e40         trap       #$0
0013ba: 0038603648e7 ori.b      #$36, $48e7.w
0013c0: 4050         negx.w     (a0)
0013c2: 2240         movea.l    d0, a1
0013c4: 2641         movea.l    d1, a3
0013c6: 4e40         trap       #$0
0013c8: 0032600a653042804cdf ori.b      #$a, $42804cdf(a2, d6.w * 4)
0013d2: 00024e75     ori.b      #$75, d2
0013d6: 652e         bcs.b      $1406
0013d8: 4280         clr.l      d0
0013da: 4cdf0a02     movem.l    (a7)+, d1/a1/a3
0013de: 4e75         rts        
0013e0: 652c         bcs.b      $140e
0013e2: 4280         clr.l      d0
0013e4: 4cdf0502     movem.l    (a7)+, d1/a0/a2
0013e8: 4e75         rts        
0013ea: 652a         bcs.b      $1416
0013ec: 4280         clr.l      d0
0013ee: 4cdf0d02     movem.l    (a7)+, d1/a0/a2-a3
0013f2: 4e75         rts        
0013f4: 6528         bcs.b      $141e
0013f6: 4280         clr.l      d0
0013f8: 4cdf0506     movem.l    (a7)+, d1-d2/a0/a2
0013fc: 4e75         rts        
0013fe: 4280         clr.l      d0
001400: 3001         move.w     d1, d0
001402: 4480         neg.l      d0
001404: 60ca         bra.b      $13d0
001406: 4280         clr.l      d0
001408: 3001         move.w     d1, d0
00140a: 4480         neg.l      d0
00140c: 60cc         bra.b      $13da
00140e: 4280         clr.l      d0
001410: 3001         move.w     d1, d0
001412: 4480         neg.l      d0
001414: 60ce         bra.b      $13e4
001416: 4280         clr.l      d0
001418: 3001         move.w     d1, d0
00141a: 4480         neg.l      d0
00141c: 60d0         bra.b      $13ee
00141e: 4280         clr.l      d0
001420: 3001         move.w     d1, d0
001422: 4480         neg.l      d0
001424: 60d2         bra.b      $13f8
001426: 48e700a0     movem.l    a0/a2, -(a7)
00142a: 2f01         move.l     d1, -(a7)
00142c: 4e40         trap       #$0
00142e: 0028650c205f ori.b      #$c, $205f(a0)
001434: 2080         move.l     d0, (a0)
001436: 200a         move.l     a2, d0
001438: 4cdf0500     movem.l    (a7)+, a0/a2
00143c: 4e75         rts        
00143e: 4280         clr.l      d0
001440: 3001         move.w     d1, d0
001442: 205f         movea.l    (a7)+, a0
001444: 2080         move.l     d0, (a0)
001446: 4280         clr.l      d0
001448: 4cdf0500     movem.l    (a7)+, a0/a2
00144c: 4e75         rts        
00144e: 48e700a0     movem.l    a0/a2, -(a7)
001452: 4e40         trap       #$0
001454: 005c650e     ori.w      #$650e, (a4)+
001458: 206f000c     movea.l    $c(a7), a0
00145c: 2080         move.l     d0, (a0)
00145e: 200a         move.l     a2, d0
001460: 4cdf0500     movem.l    (a7)+, a0/a2
001464: 4e75         rts        
001466: 4280         clr.l      d0
001468: 3001         move.w     d1, d0
00146a: 206f000c     movea.l    $c(a7), a0
00146e: 2080         move.l     d0, (a0)
001470: 4280         clr.l      d0
001472: 4cdf0500     movem.l    (a7)+, a0/a2
001476: 4e75         rts        
001478: 2f0a         move.l     a2, -(a7)
00147a: 2441         movea.l    d1, a2
00147c: 4e40         trap       #$0
00147e: 0029245f6504 ori.b      #$5f, $6504(a1)
001484: 4280         clr.l      d0
001486: 4e75         rts        
001488: 4280         clr.l      d0
00148a: 3001         move.w     d1, d0
00148c: 4e75         rts        
00148e: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
001492: 242f001c     move.l     $1c(a7), d2
001496: 262f0020     move.l     $20(a7), d3
00149a: 282f0024     move.l     $24(a7), d4
00149e: 206f0028     movea.l    $28(a7), a0
0014a2: 226f002c     movea.l    $2c(a7), a1
0014a6: 4e40         trap       #$0
0014a8: 00036506     ori.b      #$6, d3
0014ac: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
0014b0: 4e75         rts        
0014b2: 4280         clr.l      d0
0014b4: 60f6         bra.b      $14ac
0014b6: 48e74000     movem.l    d1, -(a7)
0014ba: 4e40         trap       #$0
0014bc: 0008         .dc.w      $0008
0014be: 600000be     bra.w      $157e
0014c2: 48e76000     movem.l    d1-d2, -(a7)
0014c6: 008180000000 ori.l      #$80000000, d1
0014cc: 4e40         trap       #$0
0014ce: 00276000     ori.b      #$0, -(a7)
0014d2: 00a248e76000 ori.l      #$48e76000, -(a2)
0014d8: 242f000c     move.l     $c(a7), d2
0014dc: 4e40         trap       #$0
0014de: 00276000     ori.b      #$0, -(a7)
0014e2: 009248e74000 ori.l      #$48e74000, (a2)
0014e8: e180         asl.l      #$8, d0
0014ea: 008080000000 ori.l      #$80000000, d0
0014f0: 4e40         trap       #$0
0014f2: 000a         .dc.w      $000a
0014f4: 60000092     bra.w      $1588
0014f8: 48e74000     movem.l    d1, -(a7)
0014fc: 4e40         trap       #$0
0014fe: 000a         .dc.w      $000a
001500: 60000086     bra.w      $1588
001504: 48e74080     movem.l    d1/a0, -(a7)
001508: 2040         movea.l    d0, a0
00150a: 2001         move.l     d1, d0
00150c: 222f000c     move.l     $c(a7), d1
001510: 4e40         trap       #$0
001512: 0017607a     ori.b      #$7a, (a7)
001516: 48e77080     movem.l    d1-d3/a0, -(a7)
00151a: 2041         movea.l    d1, a0
00151c: 4e40         trap       #$0
00151e: 0015651c     ori.b      #$1c, (a5)
001522: 2080         move.l     d0, (a0)
001524: 206f0014     movea.l    $14(a7), a0
001528: 2081         move.l     d1, (a0)
00152a: 206f0018     movea.l    $18(a7), a0
00152e: 3082         move.w     d2, (a0)
001530: 206f001c     movea.l    $1c(a7), a0
001534: 2083         move.l     d3, (a0)
001536: 4280         clr.l      d0
001538: 4cdf010e     movem.l    (a7)+, d1-d3/a0
00153c: 4e75         rts        
00153e: 4280         clr.l      d0
001540: 3001         move.w     d1, d0
001542: 60f4         bra.b      $1538
001544: 48e77000     movem.l    d1-d3, -(a7)
001548: 7003         moveq      #$3, d0
00154a: 4e40         trap       #$0
00154c: 0015604c     ori.b      #$4c, (a5)
001550: 48e77000     movem.l    d1-d3, -(a7)
001554: 7000         moveq      #$0, d0
001556: 4e40         trap       #$0
001558: 0015604c     ori.b      #$4c, (a5)
00155c: 48e77000     movem.l    d1-d3, -(a7)
001560: 7000         moveq      #$0, d0
001562: 4e40         trap       #$0
001564: 00156048     ori.b      #$48, (a5)
001568: 48e77000     movem.l    d1-d3, -(a7)
00156c: 7000         moveq      #$0, d0
00156e: 4e40         trap       #$0
001570: 00156040     ori.b      #$40, (a5)
001574: 6544         bcs.b      $15ba
001576: 2002         move.l     d2, d0
001578: 4cdf0006     movem.l    (a7)+, d1-d2
00157c: 4e75         rts        
00157e: 654a         bcs.b      $15ca
001580: 4280         clr.l      d0
001582: 4cdf0002     movem.l    (a7)+, d1
001586: 4e75         rts        
001588: 6540         bcs.b      $15ca
00158a: 4cdf0002     movem.l    (a7)+, d1
00158e: 4e75         rts        
001590: 6530         bcs.b      $15c2
001592: 2f41000c     move.l     d1, $c(a7)
001596: 4cdf0102     movem.l    (a7)+, d1/a0
00159a: 4e75         rts        
00159c: 6534         bcs.b      $15d2
00159e: 4280         clr.l      d0
0015a0: 3003         move.w     d3, d0
0015a2: 4cdf000e     movem.l    (a7)+, d1-d3
0015a6: 4e75         rts        
0015a8: 6528         bcs.b      $15d2
0015aa: 4280         clr.l      d0
0015ac: 3002         move.w     d2, d0
0015ae: 60f2         bra.b      $15a2
0015b0: 6520         bcs.b      $15d2
0015b2: 60ee         bra.b      $15a2
0015b4: 651c         bcs.b      $15d2
0015b6: 2001         move.l     d1, d0
0015b8: 60e8         bra.b      $15a2
0015ba: 203cffffffff move.l     #$ffffffff, d0
0015c0: 60b6         bra.b      $1578
0015c2: 4280         clr.l      d0
0015c4: 3001         move.w     d1, d0
0015c6: 4480         neg.l      d0
0015c8: 60cc         bra.b      $1596
0015ca: 4280         clr.l      d0
0015cc: 3001         move.w     d1, d0
0015ce: 4480         neg.l      d0
0015d0: 60b0         bra.b      $1582
0015d2: 4280         clr.l      d0
0015d4: 3001         move.w     d1, d0
0015d6: 4480         neg.l      d0
0015d8: 60c8         bra.b      $15a2
0015da: 4e550000     link.w     a5, #$0
0015de: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
0015e2: 2040         movea.l    d0, a0
0015e4: 2441         movea.l    d1, a2
0015e6: 242d0008     move.l     $8(a5), d2
0015ea: 6702         beq.b      $15ee
0015ec: 610a         bsr.b      $15f8
0015ee: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
0015f4: 4e5d         unlk       a5
0015f6: 4e75         rts        
0015f8: 4a82         tst.l      d2
0015fa: 674a         beq.b      $1646
0015fc: b1ca         cmpa.l     a2, a0
0015fe: 6248         bhi.b      $1648
001600: 6744         beq.b      $1646
001602: 300a         move.w     a2, d0
001604: 08000000     btst.b     #$0, d0
001608: 6704         beq.b      $160e
00160a: 10da         move.b     (a2)+, (a0)+
00160c: 5382         subq.l     #$1, d2
00160e: 3008         move.w     a0, d0
001610: 08000000     btst.b     #$0, d0
001614: 6624         bne.b      $163a
001616: e28a         lsr.l      #$1, d2
001618: 6406         bcc.b      $1620
00161a: 6104         bsr.b      $1620
00161c: 10da         move.b     (a2)+, (a0)+
00161e: 4e75         rts        
001620: e28a         lsr.l      #$1, d2
001622: 6406         bcc.b      $162a
001624: 30da         move.w     (a2)+, (a0)+
001626: 6002         bra.b      $162a
001628: 20da         move.l     (a2)+, (a0)+
00162a: 51cafffc     dbra       d2, $1628
00162e: 5242         addq.w     #$1, d2
001630: 5382         subq.l     #$1, d2
001632: 64f4         bcc.b      $1628
001634: 7400         moveq      #$0, d2
001636: 4e75         rts        
001638: 10da         move.b     (a2)+, (a0)+
00163a: 51cafffc     dbra       d2, $1638
00163e: 5242         addq.w     #$1, d2
001640: 5382         subq.l     #$1, d2
001642: 64f4         bcc.b      $1638
001644: 7400         moveq      #$0, d2
001646: 4e75         rts        
001648: d5c2         adda.l     d2, a2
00164a: d1c2         adda.l     d2, a0
00164c: 300a         move.w     a2, d0
00164e: 08000000     btst.b     #$0, d0
001652: 6704         beq.b      $1658
001654: 1122         move.b     -(a2), -(a0)
001656: 5382         subq.l     #$1, d2
001658: 3008         move.w     a0, d0
00165a: 08000000     btst.b     #$0, d0
00165e: 6624         bne.b      $1684
001660: e28a         lsr.l      #$1, d2
001662: 6406         bcc.b      $166a
001664: 6104         bsr.b      $166a
001666: 1122         move.b     -(a2), -(a0)
001668: 4e75         rts        
00166a: e28a         lsr.l      #$1, d2
00166c: 6406         bcc.b      $1674
00166e: 3122         move.w     -(a2), -(a0)
001670: 6002         bra.b      $1674
001672: 2122         move.l     -(a2), -(a0)
001674: 51cafffc     dbra       d2, $1672
001678: 5242         addq.w     #$1, d2
00167a: 5382         subq.l     #$1, d2
00167c: 64f4         bcc.b      $1672
00167e: 7400         moveq      #$0, d2
001680: 4e75         rts        
001682: 1122         move.b     -(a2), -(a0)
001684: 51cafffc     dbra       d2, $1682
001688: 5242         addq.w     #$1, d2
00168a: 5382         subq.l     #$1, d2
00168c: 64f4         bcc.b      $1682
00168e: 7400         moveq      #$0, d2
001690: 4e75         rts        
001692: 48e73800     movem.l    d2-d4, -(a7)
001696: 2400         move.l     d0, d2
001698: 2600         move.l     d0, d3
00169a: 4843         swap       d3
00169c: 2801         move.l     d1, d4
00169e: 4844         swap       d4
0016a0: c0c1         mulu.w     d1, d0
0016a2: c2c3         mulu.w     d3, d1
0016a4: c4c4         mulu.w     d4, d2
0016a6: c6c4         mulu.w     d4, d3
0016a8: 4840         swap       d0
0016aa: d041         add.w      d1, d0
0016ac: 7800         moveq      #$0, d4
0016ae: d784         addx.l     d4, d3
0016b0: d042         add.w      d2, d0
0016b2: d784         addx.l     d4, d3
0016b4: 4840         swap       d0
0016b6: 4241         clr.w      d1
0016b8: 4841         swap       d1
0016ba: 4242         clr.w      d2
0016bc: 4842         swap       d2
0016be: d282         add.l      d2, d1
0016c0: d283         add.l      d3, d1
0016c2: 4a80         tst.l      d0
0016c4: 4cdf001c     movem.l    (a7)+, d2-d4
0016c8: 4e75         rts        
0016ca: 2f02         move.l     d2, -(a7)
0016cc: 7400         moveq      #$0, d2
0016ce: 4a80         tst.l      d0
0016d0: 6a04         bpl.b      $16d6
0016d2: 4480         neg.l      d0
0016d4: 7403         moveq      #$3, d2
0016d6: 4a81         tst.l      d1
0016d8: 6a06         bpl.b      $16e0
0016da: 4481         neg.l      d1
0016dc: 0a020001     eori.b     #$1, d2
0016e0: 6122         bsr.b      $1704
0016e2: e20a         lsr.b      #$1, d2
0016e4: 6402         bcc.b      $16e8
0016e6: 4480         neg.l      d0
0016e8: e20a         lsr.b      #$1, d2
0016ea: 6402         bcc.b      $16ee
0016ec: 4481         neg.l      d1
0016ee: 241f         move.l     (a7)+, d2
0016f0: 4a80         tst.l      d0
0016f2: 4e75         rts        
0016f4: 61d4         bsr.b      $16ca
0016f6: c141         exg.l      d0, d1
0016f8: 4a80         tst.l      d0
0016fa: 4e75         rts        
0016fc: 6106         bsr.b      $1704
0016fe: c141         exg.l      d0, d1
001700: 4a80         tst.l      d0
001702: 4e75         rts        
001704: 48e73800     movem.l    d2-d4, -(a7)
001708: 2401         move.l     d1, d2
00170a: 6606         bne.b      $1712
00170c: 81fc0000     divs.w     #$0, d0
001710: 606e         bra.b      $1780
001712: 5381         subq.l     #$1, d1
001714: 676a         beq.b      $1780
001716: 2801         move.l     d1, d4
001718: 2200         move.l     d0, d1
00171a: b481         cmp.l      d1, d2
00171c: 650c         bcs.b      $172a
00171e: 6704         beq.b      $1724
001720: 7000         moveq      #$0, d0
001722: 605c         bra.b      $1780
001724: 7001         moveq      #$1, d0
001726: 9282         sub.l      d2, d1
001728: 6056         bra.b      $1780
00172a: 2602         move.l     d2, d3
00172c: 6bf6         bmi.b      $1724
00172e: c684         and.l      d4, d3
001730: 6612         bne.b      $1744
001732: e28a         lsr.l      #$1, d2
001734: 76ff         moveq      #$ff, d3
001736: e28a         lsr.l      #$1, d2
001738: 55cbfffc     dbcs       d3, $1736
00173c: 4483         neg.l      d3
00173e: e6a8         lsr.l      d3, d0
001740: c284         and.l      d4, d1
001742: 603c         bra.b      $1780
001744: 7000         moveq      #$0, d0
001746: 76ff         moveq      #$ff, d3
001748: e382         asl.l      #$1, d2
00174a: 6a06         bpl.b      $1752
00174c: b481         cmp.l      d1, d2
00174e: 620a         bhi.b      $175a
001750: 600c         bra.b      $175e
001752: b481         cmp.l      d1, d2
001754: 54cbfff2     dbcc       d3, $1748
001758: 6704         beq.b      $175e
00175a: 5283         addq.l     #$1, d3
00175c: e28a         lsr.l      #$1, d2
00175e: 4483         neg.l      d3
001760: 6004         bra.b      $1766
001762: e380         asl.l      #$1, d0
001764: e28a         lsr.l      #$1, d2
001766: 9282         sub.l      d2, d1
001768: 6510         bcs.b      $177a
00176a: 5280         addq.l     #$1, d0
00176c: 51cbfff4     dbra       d3, $1762
001770: 600e         bra.b      $1780
001772: e380         asl.l      #$1, d0
001774: e28a         lsr.l      #$1, d2
001776: d282         add.l      d2, d1
001778: 65f0         bcs.b      $176a
00177a: 51cbfff6     dbra       d3, $1772
00177e: d282         add.l      d2, d1
001780: 4cdf001c     movem.l    (a7)+, d2-d4
001784: 4a80         tst.l      d0
001786: 4e75         rts        
001788: 6364         bls.b      $17ee
00178a: 6472         bcc.b      $17fe
00178c: 5f697063     subq.w     #$7, $7063(a1)
001790: 00000006     ori.b      #$6, d0
001794: 6863         bvc.b      $17f9
