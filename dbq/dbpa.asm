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
00009e: 203c00005886 move.l     #$5886, d0
0000a4: 4ebb0800     jsr        $a6(pc,d0.l)
0000a8: 6076         bra.b      $120
0000aa: 43e80004     lea.l      $4(a0), a1
0000ae: 2d498990     move.l     a1, -$7670(a6)
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
000120: 207c0000532c movea.l    #$532c, a0
000126: 4ebb8800     jsr        $128(pc,a0.l)
00012a: 6500011c     bcs.w      $248
00012e: 6120         bsr.b      $150
000130: 4cdf0003     movem.l    (a7)+, d0-d1
000134: 9bcd         suba.l     a5, a5
000136: 2f2e8990     move.l     -$7670(a6), -(a7)
00013a: 207c00000a68 movea.l    #$a68, a0
000140: 4ebb8800     jsr        $142(pc,a0.l)
000144: 7000         moveq      #$0, d0
000146: 207c00005d1a movea.l    #$5d1a, a0
00014c: 4ebb8800     jsr        $14e(pc,a0.l)
000150: 207cffff8a64 movea.l    #$ffff8a64, a0
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
00018c: 207c00005cea movea.l    #$5cea, a0
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
0001d8: 227c00005ca8 movea.l    #$5ca8, a1
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
000252: 227cffff8608 movea.l    #$ffff8608, a1
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
000274: 207cffff8608 movea.l    #$ffff8608, a0
00027a: d1ce         adda.l     a6, a0
00027c: 6100ff18     bsr.w      $196
000280: 4e40         trap       #$0
000282: 00064e40     ori.b      #$40, d6
000286: 000612d8     ori.b      #$d8, d6
00028a: 66fc         bne.b      $288
00028c: 4e75         rts        
00028e: 4e550000     link.w     a5, #$0
000292: 48e78800     movem.l    d0/d4, -(a7)
000296: 2800         move.l     d0, d4
000298: b8ae801e     cmp.l      -$7fe2(a6), d4
00029c: 6610         bne.b      $2ae
00029e: 283c0000203e move.l     #$203e, d4
0002a4: 6008         bra.b      $2ae
0002a6: 2004         move.l     d4, d0
0002a8: 610030a2     bsr.w      $334c
0002ac: 6010         bra.b      $2be
0002ae: 0c8400002041 cmpi.l     #$2041, d4
0002b4: 6708         beq.b      $2be
0002b6: 0c8400002042 cmpi.l     #$2042, d4
0002bc: 66e8         bne.b      $2a6
0002be: 4ced0010fffc movem.l    -$4(a5), d4
0002c4: 4e5d         unlk       a5
0002c6: 4e75         rts        
0002c8: 4e550000     link.w     a5, #$0
0002cc: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
0002d0: 2440         movea.l    d0, a2
0002d2: 2641         movea.l    d1, a3
0002d4: 2012         move.l     (a2), d0
0002d6: b093         cmp.l      (a3), d0
0002d8: 660a         bne.b      $2e4
0002da: 302a0004     move.w     $4(a2), d0
0002de: b06b0004     cmp.w      $4(a3), d0
0002e2: 6704         beq.b      $2e8
0002e4: 7001         moveq      #$1, d0
0002e6: 6002         bra.b      $2ea
0002e8: 7000         moveq      #$0, d0
0002ea: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0002f0: 4e5d         unlk       a5
0002f2: 4e75         rts        
0002f4: 4e550000     link.w     a5, #$0
0002f8: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0002fc: 2440         movea.l    d0, a2
0002fe: 2641         movea.l    d1, a3
000300: 598f         subq.l     #$4, a7
000302: 7800         moveq      #$0, d4
000304: 200a         move.l     a2, d0
000306: 61002e30     bsr.w      $3138
00030a: 6008         bra.b      $314
00030c: 5284         addq.l     #$1, d4
00030e: 2017         move.l     (a7), d0
000310: 610020c2     bsr.w      $23d4
000314: 41d7         lea.l      (a7), a0
000316: 2208         move.l     a0, d1
000318: 200a         move.l     a2, d0
00031a: 61002e34     bsr.w      $3150
00031e: 4a00         tst.b      d0
000320: 6704         beq.b      $326
000322: b893         cmp.l      (a3), d4
000324: 6de6         blt.b      $30c
000326: 200a         move.l     a2, d0
000328: 61002eea     bsr.w      $3214
00032c: 4293         clr.l      (a3)
00032e: 588f         addq.l     #$4, a7
000330: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
000336: 4e5d         unlk       a5
000338: 4e75         rts        
00033a: 4e550000     link.w     a5, #$0
00033e: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
000342: 2440         movea.l    d0, a2
000344: 2641         movea.l    d1, a3
000346: 4feffff2     lea.l      -$e(a7), a7
00034a: 7a00         moveq      #$0, d5
00034c: 4a2e8994     tst.b      -$766c(a6)
000350: 6618         bne.b      $36a
000352: 61005a9c     bsr.w      $5df0
000356: 61003802     bsr.w      $3b5a
00035a: 2d408022     move.l     d0, -$7fde(a6)
00035e: 72ff         moveq      #$ff, d1
000360: b280         cmp.l      d0, d1
000362: 6762         beq.b      $3c6
000364: 1d7c00018994 move.b     #$1, -$766c(a6)
00036a: 202e8022     move.l     -$7fde(a6), d0
00036e: 61003de2     bsr.w      $4152
000372: 2800         move.l     d0, d4
000374: 72ff         moveq      #$ff, d1
000376: b280         cmp.l      d0, d1
000378: 6616         bne.b      $390
00037a: 220b         move.l     a3, d1
00037c: 200a         move.l     a2, d0
00037e: 6100ff74     bsr.w      $2f4
000382: 202e8022     move.l     -$7fde(a6), d0
000386: 610038ec     bsr.w      $3c74
00038a: 422e8994     clr.b      -$766c(a6)
00038e: 6036         bra.b      $3c6
000390: b8ae8996     cmp.l      -$766a(a6), d4
000394: 660a         bne.b      $3a0
000396: 4a2e899a     tst.b      -$7666(a6)
00039a: 6748         beq.b      $3e4
00039c: 6000010e     bra.w      $4ac
0003a0: 220b         move.l     a3, d1
0003a2: 200a         move.l     a2, d0
0003a4: 6100ff4e     bsr.w      $2f4
0003a8: 202e8022     move.l     -$7fde(a6), d0
0003ac: 610038c6     bsr.w      $3c74
0003b0: 422e8994     clr.b      -$766c(a6)
0003b4: 61005a3a     bsr.w      $5df0
0003b8: 610037a0     bsr.w      $3b5a
0003bc: 2d408022     move.l     d0, -$7fde(a6)
0003c0: 72ff         moveq      #$ff, d1
0003c2: b280         cmp.l      d0, d1
0003c4: 6606         bne.b      $3cc
0003c6: 7000         moveq      #$0, d0
0003c8: 600000e4     bra.w      $4ae
0003cc: 1d7c00018994 move.b     #$1, -$766c(a6)
0003d2: 422e899a     clr.b      -$7666(a6)
0003d6: 2d448996     move.l     d4, -$766a(a6)
0003da: 3d7cffff802a move.w     #$ffff, -$7fd6(a6)
0003e0: 42ae8026     clr.l      -$7fda(a6)
0003e4: 4a2e8994     tst.b      -$766c(a6)
0003e8: 660000a6     bne.w      $490
0003ec: 487800a0     pea.l      $a0.w
0003f0: 7213         moveq      #$13, d1
0003f2: 203c00000098 move.l     #$98, d0
0003f8: 61003fb0     bsr.w      $43aa
0003fc: 588f         addq.l     #$4, a7
0003fe: 61003fd0     bsr.w      $43d0
000402: 6000008c     bra.w      $490
000406: 220b         move.l     a3, d1
000408: 200a         move.l     a2, d0
00040a: 6100fee8     bsr.w      $2f4
00040e: 202e8022     move.l     -$7fde(a6), d0
000412: 61003860     bsr.w      $3c74
000416: 422e8994     clr.b      -$766c(a6)
00041a: 60000074     bra.w      $490
00041e: 2f570008     move.l     (a7), $8(a7)
000422: 3f6f0004000c move.w     $4(a7), $c(a7)
000428: 302e802a     move.w     -$7fd6(a6), d0
00042c: b06f000c     cmp.w      $c(a7), d0
000430: 660a         bne.b      $43c
000432: 202e8026     move.l     -$7fda(a6), d0
000436: b0af0008     cmp.l      $8(a7), d0
00043a: 6754         beq.b      $490
00043c: 41ef0008     lea.l      $8(a7), a0
000440: 2208         move.l     a0, d1
000442: 200a         move.l     a2, d0
000444: 61002c9c     bsr.w      $30e2
000448: 2d6f00088026 move.l     $8(a7), -$7fda(a6)
00044e: 3d6f000c802a move.w     $c(a7), -$7fd6(a6)
000454: 603a         bra.b      $490
000456: 41d7         lea.l      (a7), a0
000458: 2208         move.l     a0, d1
00045a: 202e8022     move.l     -$7fde(a6), d0
00045e: 6100387e     bsr.w      $3cde
000462: 2a00         move.l     d0, d5
000464: 0c8000000002 cmpi.l     #$2, d0
00046a: 67b2         beq.b      $41e
00046c: 6210         bhi.b      $47e
00046e: 0c8000000001 cmpi.l     #$1, d0
000474: 67a8         beq.b      $41e
000476: 6218         bhi.b      $490
000478: 4a80         tst.l      d0
00047a: 67a2         beq.b      $41e
00047c: 6012         bra.b      $490
00047e: 0c80ffffffff cmpi.l     #$ffffffff, d0
000484: 6700ff80     beq.w      $406
000488: 6206         bhi.b      $490
00048a: 0c80fffffffe cmpi.l     #$fffffffe, d0
000490: 4a85         tst.l      d5
000492: 660c         bne.b      $4a0
000494: 200a         move.l     a2, d0
000496: 61002df6     bsr.w      $328e
00049a: 7208         moveq      #$8, d1
00049c: b280         cmp.l      d0, d1
00049e: 6eb6         bgt.b      $456
0004a0: 7001         moveq      #$1, d0
0004a2: b085         cmp.l      d5, d0
0004a4: 6606         bne.b      $4ac
0004a6: 1d7c0001899a move.b     #$1, -$7666(a6)
0004ac: 7001         moveq      #$1, d0
0004ae: 4fef000e     lea.l      $e(a7), a7
0004b2: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
0004b8: 4e5d         unlk       a5
0004ba: 4e75         rts        
0004bc: 4e550000     link.w     a5, #$0
0004c0: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
0004c4: 2440         movea.l    d0, a2
0004c6: 2641         movea.l    d1, a3
0004c8: 286f0020     movea.l    $20(a7), a4
0004cc: 4fefffec     lea.l      -$14(a7), a7
0004d0: 42af0010     clr.l      $10(a7)
0004d4: 2f54000c     move.l     (a4), $c(a7)
0004d8: 200b         move.l     a3, d0
0004da: 61002c5c     bsr.w      $3138
0004de: 6036         bra.b      $516
0004e0: 52af0010     addq.l     #$1, $10(a7)
0004e4: 486f0004     pea.l      $4(a7)
0004e8: 222f000c     move.l     $c(a7), d1
0004ec: 200a         move.l     a2, d0
0004ee: 61002c94     bsr.w      $3184
0004f2: 588f         addq.l     #$4, a7
0004f4: 4a00         tst.b      d0
0004f6: 671e         beq.b      $516
0004f8: 222f0008     move.l     $8(a7), d1
0004fc: 200b         move.l     a3, d0
0004fe: 61002d3e     bsr.w      $323e
000502: 202f0010     move.l     $10(a7), d0
000506: b0af000c     cmp.l      $c(a7), d0
00050a: 6e0a         bgt.b      $516
00050c: 202f0008     move.l     $8(a7), d0
000510: 61001ec2     bsr.w      $23d4
000514: 5394         subq.l     #$1, (a4)
000516: 41ef0008     lea.l      $8(a7), a0
00051a: 2208         move.l     a0, d1
00051c: 200b         move.l     a3, d0
00051e: 61002c30     bsr.w      $3150
000522: 4a00         tst.b      d0
000524: 66ba         bne.b      $4e0
000526: 603a         bra.b      $562
000528: 42af0010     clr.l      $10(a7)
00052c: 200b         move.l     a3, d0
00052e: 61002c08     bsr.w      $3138
000532: 6016         bra.b      $54a
000534: 52af0010     addq.l     #$1, $10(a7)
000538: 202f0010     move.l     $10(a7), d0
00053c: b094         cmp.l      (a4), d0
00053e: 660a         bne.b      $54a
000540: 202f0008     move.l     $8(a7), d0
000544: 61001e8e     bsr.w      $23d4
000548: 5394         subq.l     #$1, (a4)
00054a: 202f0010     move.l     $10(a7), d0
00054e: b094         cmp.l      (a4), d0
000550: 6c10         bge.b      $562
000552: 41ef0008     lea.l      $8(a7), a0
000556: 2208         move.l     a0, d1
000558: 200b         move.l     a3, d0
00055a: 61002bf4     bsr.w      $3150
00055e: 4a00         tst.b      d0
000560: 66d2         bne.b      $534
000562: 200a         move.l     a2, d0
000564: 61002d28     bsr.w      $328e
000568: d094         add.l      (a4), d0
00056a: 720a         moveq      #$a, d1
00056c: b280         cmp.l      d0, d1
00056e: 6c04         bge.b      $574
000570: 4a94         tst.l      (a4)
000572: 6eb4         bgt.b      $528
000574: 200a         move.l     a2, d0
000576: 61002d16     bsr.w      $328e
00057a: d094         add.l      (a4), d0
00057c: 720a         moveq      #$a, d1
00057e: b280         cmp.l      d0, d1
000580: 6f5e         ble.b      $5e0
000582: 42af0010     clr.l      $10(a7)
000586: 200b         move.l     a3, d0
000588: 61002bae     bsr.w      $3138
00058c: 602e         bra.b      $5bc
00058e: 52af0010     addq.l     #$1, $10(a7)
000592: 202f0010     move.l     $10(a7), d0
000596: b094         cmp.l      (a4), d0
000598: 6f22         ble.b      $5bc
00059a: 41d7         lea.l      (a7), a0
00059c: 2208         move.l     a0, d1
00059e: 202f0008     move.l     $8(a7), d0
0005a2: 61001ef0     bsr.w      $2494
0005a6: 0c80000001f3 cmpi.l     #$1f3, d0
0005ac: 6604         bne.b      $5b2
0005ae: 5294         addq.l     #$1, (a4)
0005b0: 600a         bra.b      $5bc
0005b2: 222f0008     move.l     $8(a7), d1
0005b6: 200b         move.l     a3, d0
0005b8: 61002c84     bsr.w      $323e
0005bc: 41ef0008     lea.l      $8(a7), a0
0005c0: 2208         move.l     a0, d1
0005c2: 200b         move.l     a3, d0
0005c4: 61002b8a     bsr.w      $3150
0005c8: 4a00         tst.b      d0
0005ca: 6714         beq.b      $5e0
0005cc: 200a         move.l     a2, d0
0005ce: 61002cbe     bsr.w      $328e
0005d2: d094         add.l      (a4), d0
0005d4: 720a         moveq      #$a, d1
0005d6: b280         cmp.l      d0, d1
0005d8: 6f06         ble.b      $5e0
0005da: 7003         moveq      #$3, d0
0005dc: b094         cmp.l      (a4), d0
0005de: 6eae         bgt.b      $58e
0005e0: 4fef0014     lea.l      $14(a7), a7
0005e4: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
0005ea: 4e5d         unlk       a5
0005ec: 4e75         rts        
0005ee: 4e550000     link.w     a5, #$0
0005f2: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
0005f6: 2440         movea.l    d0, a2
0005f8: 2641         movea.l    d1, a3
0005fa: 220a         move.l     a2, d1
0005fc: 200b         move.l     a3, d0
0005fe: 206e8404     movea.l    -$7bfc(a6), a0
000602: 4e90         jsr        (a0)
000604: 4880         ext.w      d0
000606: 02400001     andi.w     #$1, d0
00060a: 0c400001     cmpi.w     #$1, d0
00060e: 6604         bne.b      $614
000610: 7000         moveq      #$0, d0
000612: 6002         bra.b      $616
000614: 7001         moveq      #$1, d0
000616: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00061c: 4e5d         unlk       a5
00061e: 4e75         rts        
000620: 4e550000     link.w     a5, #$0
000624: 48e7c080     movem.l    d0-d1/a0, -(a7)
000628: 2f17         move.l     (a7), -(a7)
00062a: 223c00011170 move.l     #$11170, d1
000630: 202f0018     move.l     $18(a7), d0
000634: 206e8408     movea.l    -$7bf8(a6), a0
000638: 4e90         jsr        (a0)
00063a: 588f         addq.l     #$4, a7
00063c: 2f2f0004     move.l     $4(a7), -(a7)
000640: 223c00004e20 move.l     #$4e20, d1
000646: 202f0018     move.l     $18(a7), d0
00064a: 206e8408     movea.l    -$7bf8(a6), a0
00064e: 4e90         jsr        (a0)
000650: 588f         addq.l     #$4, a7
000652: 4ced0100fffc movem.l    -$4(a5), a0
000658: 4e5d         unlk       a5
00065a: 4e75         rts        
00065c: 4e550000     link.w     a5, #$0
000660: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000664: 2440         movea.l    d0, a2
000666: 2641         movea.l    d1, a3
000668: 4feffff4     lea.l      -$c(a7), a7
00066c: 200b         move.l     a3, d0
00066e: 61002ac8     bsr.w      $3138
000672: 6026         bra.b      $69a
000674: 486f0004     pea.l      $4(a7)
000678: 222f000c     move.l     $c(a7), d1
00067c: 200a         move.l     a2, d0
00067e: 61002b04     bsr.w      $3184
000682: 588f         addq.l     #$4, a7
000684: 4a00         tst.b      d0
000686: 6612         bne.b      $69a
000688: 202f0008     move.l     $8(a7), d0
00068c: 61001d46     bsr.w      $23d4
000690: 222f0008     move.l     $8(a7), d1
000694: 200b         move.l     a3, d0
000696: 61002ba6     bsr.w      $323e
00069a: 41ef0008     lea.l      $8(a7), a0
00069e: 2208         move.l     a0, d1
0006a0: 200b         move.l     a3, d0
0006a2: 61002aac     bsr.w      $3150
0006a6: 4a00         tst.b      d0
0006a8: 66ca         bne.b      $674
0006aa: 200a         move.l     a2, d0
0006ac: 61002a8a     bsr.w      $3138
0006b0: 6048         bra.b      $6fa
0006b2: 486f0004     pea.l      $4(a7)
0006b6: 222f000c     move.l     $c(a7), d1
0006ba: 200b         move.l     a3, d0
0006bc: 61002ac6     bsr.w      $3184
0006c0: 588f         addq.l     #$4, a7
0006c2: 4a00         tst.b      d0
0006c4: 6634         bne.b      $6fa
0006c6: 41d7         lea.l      (a7), a0
0006c8: 2208         move.l     a0, d1
0006ca: 202f0008     move.l     $8(a7), d0
0006ce: 61001dc4     bsr.w      $2494
0006d2: 0c80000001f3 cmpi.l     #$1f3, d0
0006d8: 6620         bne.b      $6fa
0006da: 222f0008     move.l     $8(a7), d1
0006de: 200b         move.l     a3, d0
0006e0: 61002a00     bsr.w      $30e2
0006e4: 4a00         tst.b      d0
0006e6: 6612         bne.b      $6fa
0006e8: 41fa06ce     lea.l      $db8(pc), a0
0006ec: 2008         move.l     a0, d0
0006ee: 61004e36     bsr.w      $5526
0006f2: 202f0008     move.l     $8(a7), d0
0006f6: 61001cdc     bsr.w      $23d4
0006fa: 41ef0008     lea.l      $8(a7), a0
0006fe: 2208         move.l     a0, d1
000700: 200a         move.l     a2, d0
000702: 61002a4c     bsr.w      $3150
000706: 4a00         tst.b      d0
000708: 66a8         bne.b      $6b2
00070a: 200a         move.l     a2, d0
00070c: 61002b06     bsr.w      $3214
000710: 4fef000c     lea.l      $c(a7), a7
000714: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00071a: 4e5d         unlk       a5
00071c: 4e75         rts        
00071e: 4e550000     link.w     a5, #$0
000722: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000726: 2440         movea.l    d0, a2
000728: 2641         movea.l    d1, a3
00072a: 4fefffec     lea.l      -$14(a7), a7
00072e: 487b0170fffffb98 pea.l      $fffffb98(a16, invalid.w)
000736: 7206         moveq      #$6, d1
000738: 41ef0004     lea.l      $4(a7), a0
00073c: 2008         move.l     a0, d0
00073e: 61002916     bsr.w      $3056
000742: 588f         addq.l     #$4, a7
000744: 42a7         clr.l      -(a7)
000746: 486f0004     pea.l      $4(a7)
00074a: 7200         moveq      #$0, d1
00074c: 200b         move.l     a3, d0
00074e: 610009a4     bsr.w      $10f4
000752: 508f         addq.l     #$8, a7
000754: 0c80000001f3 cmpi.l     #$1f3, d0
00075a: 670a         beq.b      $766
00075c: 41d7         lea.l      (a7), a0
00075e: 2008         move.l     a0, d0
000760: 61002ab2     bsr.w      $3214
000764: 600a         bra.b      $770
000766: 220a         move.l     a2, d1
000768: 41d7         lea.l      (a7), a0
00076a: 2008         move.l     a0, d0
00076c: 6100feee     bsr.w      $65c
000770: 4fef0014     lea.l      $14(a7), a7
000774: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00077a: 4e5d         unlk       a5
00077c: 4e75         rts        
00077e: 4e550000     link.w     a5, #$0
000782: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
000786: 2440         movea.l    d0, a2
000788: 2641         movea.l    d1, a3
00078a: 4fefffec     lea.l      -$14(a7), a7
00078e: 487b0170fffffb38 pea.l      $fffffb38(a16, invalid.w)
000796: 7206         moveq      #$6, d1
000798: 41ef0004     lea.l      $4(a7), a0
00079c: 2008         move.l     a0, d0
00079e: 610028b6     bsr.w      $3056
0007a2: 588f         addq.l     #$4, a7
0007a4: 48780001     pea.l      $1.w
0007a8: 486f0004     pea.l      $4(a7)
0007ac: 7200         moveq      #$0, d1
0007ae: 200b         move.l     a3, d0
0007b0: 61000942     bsr.w      $10f4
0007b4: 508f         addq.l     #$8, a7
0007b6: 0c80000001f3 cmpi.l     #$1f3, d0
0007bc: 670a         beq.b      $7c8
0007be: 41d7         lea.l      (a7), a0
0007c0: 2008         move.l     a0, d0
0007c2: 61002a50     bsr.w      $3214
0007c6: 600a         bra.b      $7d2
0007c8: 220a         move.l     a2, d1
0007ca: 41d7         lea.l      (a7), a0
0007cc: 2008         move.l     a0, d0
0007ce: 6100fe8c     bsr.w      $65c
0007d2: 4fef0014     lea.l      $14(a7), a7
0007d6: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0007dc: 4e5d         unlk       a5
0007de: 4e75         rts        
0007e0: 4e550000     link.w     a5, #$0
0007e4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0007e8: 518f         subq.l     #$8, a7
0007ea: 222f0008     move.l     $8(a7), d1
0007ee: 7001         moveq      #$1, d0
0007f0: 61001312     bsr.w      $1b04
0007f4: 2f400004     move.l     d0, $4(a7)
0007f8: 0c80000001f3 cmpi.l     #$1f3, d0
0007fe: 6618         bne.b      $818
000800: 41d7         lea.l      (a7), a0
000802: 2208         move.l     a0, d1
000804: 202f0008     move.l     $8(a7), d0
000808: 61001c8a     bsr.w      $2494
00080c: 2f400004     move.l     d0, $4(a7)
000810: 0c80000001f3 cmpi.l     #$1f3, d0
000816: 6706         beq.b      $81e
000818: 206f0008     movea.l    $8(a7), a0
00081c: 4290         clr.l      (a0)
00081e: 202f0004     move.l     $4(a7), d0
000822: 508f         addq.l     #$8, a7
000824: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00082a: 4e5d         unlk       a5
00082c: 4e75         rts        
00082e: 4e550000     link.w     a5, #$0
000832: 48e7c080     movem.l    d0-d1/a0, -(a7)
000836: 598f         subq.l     #$4, a7
000838: 206f0004     movea.l    $4(a7), a0
00083c: 4a90         tst.l      (a0)
00083e: 670e         beq.b      $84e
000840: 202f0004     move.l     $4(a7), d0
000844: 61001b8e     bsr.w      $23d4
000848: 206f0004     movea.l    $4(a7), a0
00084c: 4290         clr.l      (a0)
00084e: 202f0008     move.l     $8(a7), d0
000852: 610028e4     bsr.w      $3138
000856: 6006         bra.b      $85e
000858: 2017         move.l     (a7), d0
00085a: 61001b78     bsr.w      $23d4
00085e: 41d7         lea.l      (a7), a0
000860: 2208         move.l     a0, d1
000862: 202f0008     move.l     $8(a7), d0
000866: 610028e8     bsr.w      $3150
00086a: 4a00         tst.b      d0
00086c: 66ea         bne.b      $858
00086e: 202f0008     move.l     $8(a7), d0
000872: 610029a0     bsr.w      $3214
000876: 202f0018     move.l     $18(a7), d0
00087a: 610028bc     bsr.w      $3138
00087e: 6006         bra.b      $886
000880: 2017         move.l     (a7), d0
000882: 61001b50     bsr.w      $23d4
000886: 41d7         lea.l      (a7), a0
000888: 2208         move.l     a0, d1
00088a: 202f0018     move.l     $18(a7), d0
00088e: 610028c0     bsr.w      $3150
000892: 4a00         tst.b      d0
000894: 66ea         bne.b      $880
000896: 202f0018     move.l     $18(a7), d0
00089a: 61002978     bsr.w      $3214
00089e: 222f0020     move.l     $20(a7), d1
0008a2: 202f001c     move.l     $1c(a7), d0
0008a6: 6100fa4c     bsr.w      $2f4
0008aa: 588f         addq.l     #$4, a7
0008ac: 4ced0100fffc movem.l    -$4(a5), a0
0008b2: 4e5d         unlk       a5
0008b4: 4e75         rts        
0008b6: 4e550000     link.w     a5, #$0
0008ba: 48e7c080     movem.l    d0-d1/a0, -(a7)
0008be: 4fefffd2     lea.l      -$2e(a7), a7
0008c2: 42af0004     clr.l      $4(a7)
0008c6: 4297         clr.l      (a7)
0008c8: 486f001e     pea.l      $1e(a7)
0008cc: 222f0032     move.l     $32(a7), d1
0008d0: 202f0032     move.l     $32(a7), d0
0008d4: 206e8420     movea.l    -$7be0(a6), a0
0008d8: 4e90         jsr        (a0)
0008da: 588f         addq.l     #$4, a7
0008dc: 487b0170fffff9ea pea.l      $fffff9ea(a16, invalid.w)
0008e4: 7206         moveq      #$6, d1
0008e6: 41ef000e     lea.l      $e(a7), a0
0008ea: 2008         move.l     a0, d0
0008ec: 61002768     bsr.w      $3056
0008f0: 588f         addq.l     #$4, a7
0008f2: 48780001     pea.l      $1.w
0008f6: 486f000e     pea.l      $e(a7)
0008fa: 7200         moveq      #$0, d1
0008fc: 41ef0026     lea.l      $26(a7), a0
000900: 2008         move.l     a0, d0
000902: 610007f0     bsr.w      $10f4
000906: 508f         addq.l     #$8, a7
000908: 0c80000001f3 cmpi.l     #$1f3, d0
00090e: 670a         beq.b      $91a
000910: 41ef000a     lea.l      $a(a7), a0
000914: 2008         move.l     a0, d0
000916: 610028fc     bsr.w      $3214
00091a: 41ef000a     lea.l      $a(a7), a0
00091e: 2008         move.l     a0, d0
000920: 6100296c     bsr.w      $328e
000924: 4a80         tst.l      d0
000926: 6608         bne.b      $930
000928: 3f7c00020008 move.w     #$2, $8(a7)
00092e: 6066         bra.b      $996
000930: 41ef000a     lea.l      $a(a7), a0
000934: 2008         move.l     a0, d0
000936: 61002800     bsr.w      $3138
00093a: 41ef0004     lea.l      $4(a7), a0
00093e: 2208         move.l     a0, d1
000940: 41ef000a     lea.l      $a(a7), a0
000944: 2008         move.l     a0, d0
000946: 61002808     bsr.w      $3150
00094a: 4a00         tst.b      d0
00094c: 6742         beq.b      $990
00094e: 41d7         lea.l      (a7), a0
000950: 2208         move.l     a0, d1
000952: 202f0004     move.l     $4(a7), d0
000956: 61001b3c     bsr.w      $2494
00095a: 0c80000001f3 cmpi.l     #$1f3, d0
000960: 6624         bne.b      $986
000962: 7000         moveq      #$0, d0
000964: 302e809a     move.w     -$7f66(a6), d0
000968: 7200         moveq      #$0, d1
00096a: 322e80b2     move.w     -$7f4e(a6), d1
00096e: d081         add.l      d1, d0
000970: 2057         movea.l    (a7), a0
000972: 0c300001082d cmpi.b     #$1, $2d(a0, d0.l)
000978: 6606         bne.b      $980
00097a: 426f0008     clr.w      $8(a7)
00097e: 6006         bra.b      $986
000980: 3f7c00010008 move.w     #$1, $8(a7)
000986: 202f0004     move.l     $4(a7), d0
00098a: 61001a48     bsr.w      $23d4
00098e: 6006         bra.b      $996
000990: 3f7c00030008 move.w     #$3, $8(a7)
000996: 41ef000a     lea.l      $a(a7), a0
00099a: 2008         move.l     a0, d0
00099c: 61002876     bsr.w      $3214
0009a0: 302f0008     move.w     $8(a7), d0
0009a4: b06e899c     cmp.w      -$7664(a6), d0
0009a8: 6606         bne.b      $9b0
0009aa: 4a2f0035     tst.b      $35(a7)
0009ae: 6718         beq.b      $9c8
0009b0: 3d6f0008899c move.w     $8(a7), -$7664(a6)
0009b6: 7000         moveq      #$0, d0
0009b8: 102f0035     move.b     $35(a7), d0
0009bc: 2200         move.l     d0, d1
0009be: 306f0008     movea.w    $8(a7), a0
0009c2: 2008         move.l     a0, d0
0009c4: 6100040a     bsr.w      $dd0
0009c8: 4fef002e     lea.l      $2e(a7), a7
0009cc: 4ced0100fffc movem.l    -$4(a5), a0
0009d2: 4e5d         unlk       a5
0009d4: 4e75         rts        
0009d6: 4e550000     link.w     a5, #$0
0009da: 48e7c000     movem.l    d0-d1, -(a7)
0009de: 7000         moveq      #$0, d0
0009e0: 102f0027     move.b     $27(a7), d0
0009e4: 2200         move.l     d0, d1
0009e6: 202f0010     move.l     $10(a7), d0
0009ea: 6100feca     bsr.w      $8b6
0009ee: 2f2f0010     move.l     $10(a7), -(a7)
0009f2: 222f0008     move.l     $8(a7), d1
0009f6: 202f0004     move.l     $4(a7), d0
0009fa: 6100fc24     bsr.w      $620
0009fe: 588f         addq.l     #$4, a7
000a00: 2217         move.l     (a7), d1
000a02: 202f0014     move.l     $14(a7), d0
000a06: 6100fd16     bsr.w      $71e
000a0a: 2217         move.l     (a7), d1
000a0c: 202f0018     move.l     $18(a7), d0
000a10: 6100fd6c     bsr.w      $77e
000a14: 222f0020     move.l     $20(a7), d1
000a18: 202f001c     move.l     $1c(a7), d0
000a1c: 6100f91c     bsr.w      $33a
000a20: 2f2f0020     move.l     $20(a7), -(a7)
000a24: 222f0020     move.l     $20(a7), d1
000a28: 202f001c     move.l     $1c(a7), d0
000a2c: 6100fa8e     bsr.w      $4bc
000a30: 588f         addq.l     #$4, a7
000a32: 4e5d         unlk       a5
000a34: 4e75         rts        
000a36: 4e550000     link.w     a5, #$0
000a3a: 48e7c080     movem.l    d0-d1/a0, -(a7)
000a3e: 518f         subq.l     #$8, a7
000a40: 610016ee     bsr.w      $2130
000a44: 0c80000001f3 cmpi.l     #$1f3, d0
000a4a: 671a         beq.b      $a66
000a4c: 223c00002024 move.l     #$2024, d1
000a52: 6100539c     bsr.w      $5df0
000a56: 6100302e     bsr.w      $3a86
000a5a: 61003dfe     bsr.w      $485a
000a5e: 7001         moveq      #$1, d0
000a60: 61005406     bsr.w      $5e68
000a64: 6012         bra.b      $a78
000a66: 223c00002023 move.l     #$2023, d1
000a6c: 61005382     bsr.w      $5df0
000a70: 61003014     bsr.w      $3a86
000a74: 61003de4     bsr.w      $485a
000a78: 61000452     bsr.w      $ecc
000a7c: 6100383a     bsr.w      $42b8
000a80: 4a00         tst.b      d0
000a82: 661c         bne.b      $aa0
000a84: 487800a1     pea.l      $a1.w
000a88: 7213         moveq      #$13, d1
000a8a: 203c00000098 move.l     #$98, d0
000a90: 61003918     bsr.w      $43aa
000a94: 588f         addq.l     #$4, a7
000a96: 61003938     bsr.w      $43d0
000a9a: 7001         moveq      #$1, d0
000a9c: 610053ca     bsr.w      $5e68
000aa0: 61002526     bsr.w      $2fc8
000aa4: 2d40801e     move.l     d0, -$7fe2(a6)
000aa8: 487b0170fffff81e pea.l      $fffff81e(a16, invalid.w)
000ab0: 7206         moveq      #$6, d1
000ab2: 202f000c     move.l     $c(a7), d0
000ab6: 6100259e     bsr.w      $3056
000aba: 588f         addq.l     #$4, a7
000abc: 487b0170fffff80a pea.l      $fffff80a(a16, invalid.w)
000ac4: 7206         moveq      #$6, d1
000ac6: 202f0010     move.l     $10(a7), d0
000aca: 6100258a     bsr.w      $3056
000ace: 588f         addq.l     #$4, a7
000ad0: 487b0170fffff7f6 pea.l      $fffff7f6(a16, invalid.w)
000ad8: 7206         moveq      #$6, d1
000ada: 202f0020     move.l     $20(a7), d0
000ade: 61002576     bsr.w      $3056
000ae2: 588f         addq.l     #$4, a7
000ae4: 206f0020     movea.l    $20(a7), a0
000ae8: 4290         clr.l      (a0)
000aea: 41d7         lea.l      (a7), a0
000aec: 2008         move.l     a0, d0
000aee: 206e83c0     movea.l    -$7c40(a6), a0
000af2: 4e90         jsr        (a0)
000af4: 2f2f0024     move.l     $24(a7), -(a7)
000af8: 7200         moveq      #$0, d1
000afa: 41ef0004     lea.l      $4(a7), a0
000afe: 2008         move.l     a0, d0
000b00: 206e8408     movea.l    -$7bf8(a6), a0
000b04: 4e90         jsr        (a0)
000b06: 588f         addq.l     #$4, a7
000b08: 2f2f0028     move.l     $28(a7), -(a7)
000b0c: 7200         moveq      #$0, d1
000b0e: 41ef0004     lea.l      $4(a7), a0
000b12: 2008         move.l     a0, d0
000b14: 206e8408     movea.l    -$7bf8(a6), a0
000b18: 4e90         jsr        (a0)
000b1a: 588f         addq.l     #$4, a7
000b1c: 508f         addq.l     #$8, a7
000b1e: 4ced0100fffc movem.l    -$4(a5), a0
000b24: 4e5d         unlk       a5
000b26: 4e75         rts        
000b28: 4e550000     link.w     a5, #$0
000b2c: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
000b30: 2800         move.l     d0, d4
000b32: 598f         subq.l     #$4, a7
000b34: 7a01         moveq      #$1, d5
000b36: 6062         bra.b      $b9a
000b38: 206f0008     movea.l    $8(a7), a0
000b3c: 24705c00     movea.l    (a0, d5.l * 4), a2
000b40: 0c12002d     cmpi.b     #$2d, (a2)
000b44: 6652         bne.b      $b98
000b46: 528a         addq.l     #$1, a2
000b48: 603e         bra.b      $b88
000b4a: 528a         addq.l     #$1, a2
000b4c: 0c120042     cmpi.b     #$42, (a2)
000b50: 6646         bne.b      $b98
000b52: 528a         addq.l     #$1, a2
000b54: 4857         pea.l      (a7)
000b56: 41fa0272     lea.l      $dca(pc), a0
000b5a: 2208         move.l     a0, d1
000b5c: 200a         move.l     a2, d0
000b5e: 610049fe     bsr.w      $555e
000b62: 588f         addq.l     #$4, a7
000b64: 6032         bra.b      $b98
000b66: 528a         addq.l     #$1, a2
000b68: 0c120042     cmpi.b     #$42, (a2)
000b6c: 662a         bne.b      $b98
000b6e: 528a         addq.l     #$1, a2
000b70: 4857         pea.l      (a7)
000b72: 41fa0259     lea.l      $dcd(pc), a0
000b76: 2208         move.l     a0, d1
000b78: 200a         move.l     a2, d0
000b7a: 610049e2     bsr.w      $555e
000b7e: 588f         addq.l     #$4, a7
000b80: 2017         move.l     (a7), d0
000b82: 6100276e     bsr.w      $32f2
000b86: 6010         bra.b      $b98
000b88: 1012         move.b     (a2), d0
000b8a: 4880         ext.w      d0
000b8c: 0c400044     cmpi.w     #$44, d0
000b90: 67b8         beq.b      $b4a
000b92: 0c40004c     cmpi.w     #$4c, d0
000b96: 67ce         beq.b      $b66
000b98: 5285         addq.l     #$1, d5
000b9a: ba84         cmp.l      d4, d5
000b9c: 6d9a         blt.b      $b38
000b9e: 588f         addq.l     #$4, a7
000ba0: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
000ba6: 4e5d         unlk       a5
000ba8: 4e75         rts        
000baa: 4e550000     link.w     a5, #$0
000bae: 48e7c080     movem.l    d0-d1/a0, -(a7)
000bb2: 4fefff5a     lea.l      -$a6(a7), a7
000bb6: 1f7c00010001 move.b     #$1, $1(a7)
000bbc: 4217         clr.b      (a7)
000bbe: 41fb017000002b16 lea.l      $2b16(a16, invalid.w), a0
000bc6: 2008         move.l     a0, d0
000bc8: 61002af0     bsr.w      $36ba
000bcc: 222f00aa     move.l     $aa(a7), d1
000bd0: 202f00a6     move.l     $a6(a7), d0
000bd4: 6100ff52     bsr.w      $b28
000bd8: 41fb0170fffff6b4 lea.l      $fffff6b4(a16, invalid.w), a0
000be0: 2008         move.l     a0, d0
000be2: 61002800     bsr.w      $33e4
000be6: 486f0042     pea.l      $42(a7)
000bea: 486f0056     pea.l      $56(a7)
000bee: 486f006a     pea.l      $6a(a7)
000bf2: 486f0072     pea.l      $72(a7)
000bf6: 41ef008a     lea.l      $8a(a7), a0
000bfa: 2208         move.l     a0, d1
000bfc: 41ef009e     lea.l      $9e(a7), a0
000c00: 2008         move.l     a0, d0
000c02: 6100fe32     bsr.w      $a36
000c06: 4fef0010     lea.l      $10(a7), a7
000c0a: 41ef0002     lea.l      $2(a7), a0
000c0e: 2008         move.l     a0, d0
000c10: 6100fbce     bsr.w      $7e0
000c14: 6000017c     bra.w      $d92
000c18: 61002eb0     bsr.w      $3aca
000c1c: 61002386     bsr.w      $2fa4
000c20: 61002ed4     bsr.w      $3af6
000c24: 60000138     bra.w      $d5e
000c28: 4a2f0001     tst.b      $1(a7)
000c2c: 67000164     beq.w      $d92
000c30: 41ef0008     lea.l      $8(a7), a0
000c34: 2008         move.l     a0, d0
000c36: 6100228c     bsr.w      $2ec4
000c3a: 72ff         moveq      #$ff, d1
000c3c: b280         cmp.l      d0, d1
000c3e: 67000152     beq.w      $d92
000c42: 41ef0008     lea.l      $8(a7), a0
000c46: 2208         move.l     a0, d1
000c48: 41ef0042     lea.l      $42(a7), a0
000c4c: 2008         move.l     a0, d0
000c4e: 6100f99e     bsr.w      $5ee
000c52: 4a00         tst.b      d0
000c54: 6600013c     bne.w      $d92
000c58: 42a7         clr.l      -(a7)
000c5a: 600000d8     bra.w      $d34
000c5e: 486f0062     pea.l      $62(a7)
000c62: 486f006a     pea.l      $6a(a7)
000c66: 486f0082     pea.l      $82(a7)
000c6a: 41ef009a     lea.l      $9a(a7), a0
000c6e: 2208         move.l     a0, d1
000c70: 41ef000e     lea.l      $e(a7), a0
000c74: 2008         move.l     a0, d0
000c76: 6100fbb6     bsr.w      $82e
000c7a: 4fef000c     lea.l      $c(a7), a7
000c7e: 1ebc0001     move.b     #$1, (a7)
000c82: 6000010e     bra.w      $d92
000c86: 486f0062     pea.l      $62(a7)
000c8a: 486f006a     pea.l      $6a(a7)
000c8e: 486f0082     pea.l      $82(a7)
000c92: 41ef009a     lea.l      $9a(a7), a0
000c96: 2208         move.l     a0, d1
000c98: 41ef000e     lea.l      $e(a7), a0
000c9c: 2008         move.l     a0, d0
000c9e: 6100fb8e     bsr.w      $82e
000ca2: 4fef000c     lea.l      $c(a7), a7
000ca6: 223c00002023 move.l     #$2023, d1
000cac: 61005142     bsr.w      $5df0
000cb0: 61002dd4     bsr.w      $3a86
000cb4: 61003ba4     bsr.w      $485a
000cb8: 72ff         moveq      #$ff, d1
000cba: b280         cmp.l      d0, d1
000cbc: 6616         bne.b      $cd4
000cbe: 487800a2     pea.l      $a2.w
000cc2: 7213         moveq      #$13, d1
000cc4: 203c00000098 move.l     #$98, d0
000cca: 610036de     bsr.w      $43aa
000cce: 588f         addq.l     #$4, a7
000cd0: 610036fe     bsr.w      $43d0
000cd4: 422f0001     clr.b      $1(a7)
000cd8: 600000b8     bra.w      $d92
000cdc: 223c00002023 move.l     #$2023, d1
000ce2: 6100510c     bsr.w      $5df0
000ce6: 61002d9e     bsr.w      $3a86
000cea: 61003b6e     bsr.w      $485a
000cee: 72ff         moveq      #$ff, d1
000cf0: b280         cmp.l      d0, d1
000cf2: 6616         bne.b      $d0a
000cf4: 487800a3     pea.l      $a3.w
000cf8: 7213         moveq      #$13, d1
000cfa: 203c00000098 move.l     #$98, d0
000d00: 610036a8     bsr.w      $43aa
000d04: 588f         addq.l     #$4, a7
000d06: 610036c8     bsr.w      $43d0
000d0a: 4aaf0002     tst.l      $2(a7)
000d0e: 660a         bne.b      $d1a
000d10: 41ef0002     lea.l      $2(a7), a0
000d14: 2008         move.l     a0, d0
000d16: 6100fac8     bsr.w      $7e0
000d1a: 4a2f0001     tst.b      $1(a7)
000d1e: 6606         bne.b      $d26
000d20: 1f7c00010001 move.b     #$1, $1(a7)
000d26: 41ef0008     lea.l      $8(a7), a0
000d2a: 2008         move.l     a0, d0
000d2c: 61002196     bsr.w      $2ec4
000d30: 48780001     pea.l      $1.w
000d34: 486f0066     pea.l      $66(a7)
000d38: 486f006e     pea.l      $6e(a7)
000d3c: 486f0086     pea.l      $86(a7)
000d40: 486f009e     pea.l      $9e(a7)
000d44: 486f001c     pea.l      $1c(a7)
000d48: 41ef005a     lea.l      $5a(a7), a0
000d4c: 2208         move.l     a0, d1
000d4e: 41ef006a     lea.l      $6a(a7), a0
000d52: 2008         move.l     a0, d0
000d54: 6100fc80     bsr.w      $9d6
000d58: 4fef0018     lea.l      $18(a7), a7
000d5c: 6034         bra.b      $d92
000d5e: 610026a6     bsr.w      $3406
000d62: 2f4000a2     move.l     d0, $a2(a7)
000d66: 0c800000203f cmpi.l     #$203f, d0
000d6c: 6700ff18     beq.w      $c86
000d70: 6216         bhi.b      $d88
000d72: 0c800000203e cmpi.l     #$203e, d0
000d78: 6700feae     beq.w      $c28
000d7c: 6214         bhi.b      $d92
000d7e: 0c40202d     cmpi.w     #$202d, d0
000d82: 6700feda     beq.w      $c5e
000d86: 600a         bra.b      $d92
000d88: 0c8000002040 cmpi.l     #$2040, d0
000d8e: 6700ff4c     beq.w      $cdc
000d92: 4a17         tst.b      (a7)
000d94: 6700fe82     beq.w      $c18
000d98: 6100148c     bsr.w      $2226
000d9c: 61000186     bsr.w      $f24
000da0: 610021da     bsr.w      $2f7c
000da4: 61002652     bsr.w      $33f8
000da8: 7000         moveq      #$0, d0
000daa: 4fef00a6     lea.l      $a6(a7), a7
000dae: 4ced0100fffc movem.l    -$4(a5), a0
000db4: 4e5d         unlk       a5
000db6: 4e75         rts        
000db8: 6572         bcs.b      $e2c
000dba: 726f         moveq      #$6f, d1
000dbc: 7220         moveq      #$20, d1
000dbe: 696e         bvs.b      $e2e
000dc0: 207075747365742e movea.l    $7365742e(a0, invalid.w), a0
000dc8: 0d00         btst.l     d6, d0
000dca: 25640025     move.l     -(a4), $25(a2)
000dce: 64004e55     bcc.w      $5c25
000dd2: 000048e7     ori.b      #$e7, d0
000dd6: c080         and.l      d0, d0
000dd8: 4fefffa4     lea.l      -$5c(a7), a7
000ddc: 3f7c00030002 move.w     #$3, $2(a7)
000de2: 3f7c01200004 move.w     #$120, $4(a7)
000de8: 3f7c00010006 move.w     #$1, $6(a7)
000dee: 3f6f005e0008 move.w     $5e(a7), $8(a7)
000df4: 1f6f0063000a move.b     $63(a7), $a(a7)
000dfa: 3ebc005a     move.w     #$5a, (a7)
000dfe: 41d7         lea.l      (a7), a0
000e00: 2008         move.l     a0, d0
000e02: 61000020     bsr.w      $e24
000e06: 4fef005c     lea.l      $5c(a7), a7
000e0a: 4ced0100fffc movem.l    -$4(a5), a0
000e10: 4e5d         unlk       a5
000e12: 4e75         rts        
000e14: 4e550000     link.w     a5, #$0
000e18: 48e78000     movem.l    d0, -(a7)
000e1c: 202e899e     move.l     -$7662(a6), d0
000e20: 4e5d         unlk       a5
000e22: 4e75         rts        
000e24: 4e550000     link.w     a5, #$0
000e28: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e2c: 518f         subq.l     #$8, a7
000e2e: 206f0008     movea.l    $8(a7), a0
000e32: 3010         move.w     (a0), d0
000e34: 48c0         ext.l      d0
000e36: 5480         addq.l     #$2, d0
000e38: 2f400004     move.l     d0, $4(a7)
000e3c: 2f2f0004     move.l     $4(a7), -(a7)
000e40: 222f000c     move.l     $c(a7), d1
000e44: 202e89a2     move.l     -$765e(a6), d0
000e48: 61004740     bsr.w      $558a
000e4c: 588f         addq.l     #$4, a7
000e4e: 2e80         move.l     d0, (a7)
000e50: 2017         move.l     (a7), d0
000e52: b0af0004     cmp.l      $4(a7), d0
000e56: 6704         beq.b      $e5c
000e58: 7000         moveq      #$0, d0
000e5a: 6002         bra.b      $e5e
000e5c: 7001         moveq      #$1, d0
000e5e: 508f         addq.l     #$8, a7
000e60: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000e66: 4e5d         unlk       a5
000e68: 4e75         rts        
000e6a: 4e550000     link.w     a5, #$0
000e6e: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e72: 598f         subq.l     #$4, a7
000e74: 48780002     pea.l      $2.w
000e78: 222f0008     move.l     $8(a7), d1
000e7c: 202e89a6     move.l     -$765a(a6), d0
000e80: 61004700     bsr.w      $5582
000e84: 588f         addq.l     #$4, a7
000e86: 2e80         move.l     d0, (a7)
000e88: 7002         moveq      #$2, d0
000e8a: b097         cmp.l      (a7), d0
000e8c: 6628         bne.b      $eb6
000e8e: 206f0004     movea.l    $4(a7), a0
000e92: 3050         movea.w    (a0), a0
000e94: 2f08         move.l     a0, -(a7)
000e96: 202f0008     move.l     $8(a7), d0
000e9a: 5480         addq.l     #$2, d0
000e9c: 2200         move.l     d0, d1
000e9e: 202e89a6     move.l     -$765a(a6), d0
000ea2: 610046de     bsr.w      $5582
000ea6: 588f         addq.l     #$4, a7
000ea8: 2e80         move.l     d0, (a7)
000eaa: 206f0004     movea.l    $4(a7), a0
000eae: 3010         move.w     (a0), d0
000eb0: 48c0         ext.l      d0
000eb2: b097         cmp.l      (a7), d0
000eb4: 6708         beq.b      $ebe
000eb6: 70ff         moveq      #$ff, d0
000eb8: b097         cmp.l      (a7), d0
000eba: 7000         moveq      #$0, d0
000ebc: 6002         bra.b      $ec0
000ebe: 7001         moveq      #$1, d0
000ec0: 588f         addq.l     #$4, a7
000ec2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000ec8: 4e5d         unlk       a5
000eca: 4e75         rts        
000ecc: 4e550000     link.w     a5, #$0
000ed0: 48e7c080     movem.l    d0-d1/a0, -(a7)
000ed4: 7202         moveq      #$2, d1
000ed6: 41fa0076     lea.l      $f4e(pc), a0
000eda: 2008         move.l     a0, d0
000edc: 61003654     bsr.w      $4532
000ee0: 2d4089a2     move.l     d0, -$765e(a6)
000ee4: 6d2e         blt.b      $f14
000ee6: 41fa0086     lea.l      $f6e(pc), a0
000eea: 2208         move.l     a0, d1
000eec: 41ee802c     lea.l      -$7fd4(a6), a0
000ef0: 2008         move.l     a0, d0
000ef2: 6100463a     bsr.w      $552e
000ef6: 41ee802c     lea.l      -$7fd4(a6), a0
000efa: 2008         move.l     a0, d0
000efc: 61004710     bsr.w      $560e
000f00: 2d40899e     move.l     d0, -$7662(a6)
000f04: 7203         moveq      #$3, d1
000f06: 202e899e     move.l     -$7662(a6), d0
000f0a: 61003640     bsr.w      $454c
000f0e: 2d4089a6     move.l     d0, -$765a(a6)
000f12: 6c04         bge.b      $f18
000f14: 7000         moveq      #$0, d0
000f16: 6002         bra.b      $f1a
000f18: 7001         moveq      #$1, d0
000f1a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000f20: 4e5d         unlk       a5
000f22: 4e75         rts        
000f24: 4e550000     link.w     a5, #$0
000f28: 48e78000     movem.l    d0, -(a7)
000f2c: 202e89a2     move.l     -$765e(a6), d0
000f30: 6100466c     bsr.w      $559e
000f34: 4a80         tst.l      d0
000f36: 6d10         blt.b      $f48
000f38: 4aae89a6     tst.l      -$765a(a6)
000f3c: 6f0a         ble.b      $f48
000f3e: 202e89a6     move.l     -$765a(a6), d0
000f42: 6100465a     bsr.w      $559e
000f46: 4a80         tst.l      d0
000f48: 7001         moveq      #$1, d0
000f4a: 4e5d         unlk       a5
000f4c: 4e75         rts        
000f4e: 2f63302f     move.l     -(a3), $302f(a7)
000f52: 5f313239     subq.b     #$7, $39(a1, d3.w)
000f56: 5f2f7069     subq.b     #$7, $7069(a7)
000f5a: 7065         moveq      #$65, d0
000f5c: 2f646263     move.l     -(a4), $6263(a7)
000f60: 5f72657175657374 subq.w     #$7, ([$75657374, a2])
000f68: 5f70697065002f63 subq.w     #$7, $65002f63(a0, invalid.w)
000f70: 302f5f31     move.w     $5f31(a7), d0
000f74: 32395f2f7069 move.w     $5f2f7069.l, d1
000f7a: 7065         moveq      #$65, d0
000f7c: 2f646263     move.l     -(a4), $6263(a7)
000f80: 5f7273705f585858 subq.w     #$7, $5f585858(a2, invalid.w)
000f88: 5858         addq.w     #$4, (a0)+
000f8a: 5800         addq.b     #$4, d0
000f8c: 4e550000     link.w     a5, #$0
000f90: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
000f94: 2440         movea.l    d0, a2
000f96: 2641         movea.l    d1, a3
000f98: 286f0020     movea.l    $20(a7), a4
000f9c: 220b         move.l     a3, d1
000f9e: 200a         move.l     a2, d0
000fa0: 206e83cc     movea.l    -$7c34(a6), a0
000fa4: 4e90         jsr        (a0)
000fa6: 4880         ext.w      d0
000fa8: 02400008     andi.w     #$8, d0
000fac: 0c400008     cmpi.w     #$8, d0
000fb0: 660a         bne.b      $fbc
000fb2: 41fa0acc     lea.l      $1a80(pc), a0
000fb6: 2008         move.l     a0, d0
000fb8: 6100456c     bsr.w      $5526
000fbc: 2892         move.l     (a2), (a4)
000fbe: 296a00040004 move.l     $4(a2), $4(a4)
000fc4: 296a00080008 move.l     $8(a2), $8(a4)
000fca: 296a000c000c move.l     $c(a2), $c(a4)
000fd0: 2013         move.l     (a3), d0
000fd2: b092         cmp.l      (a2), d0
000fd4: 6f02         ble.b      $fd8
000fd6: 2893         move.l     (a3), (a4)
000fd8: 202b0004     move.l     $4(a3), d0
000fdc: b0aa0004     cmp.l      $4(a2), d0
000fe0: 6f06         ble.b      $fe8
000fe2: 296b00040004 move.l     $4(a3), $4(a4)
000fe8: 202b0008     move.l     $8(a3), d0
000fec: b0aa0008     cmp.l      $8(a2), d0
000ff0: 6c06         bge.b      $ff8
000ff2: 296b00080008 move.l     $8(a3), $8(a4)
000ff8: 202b000c     move.l     $c(a3), d0
000ffc: b0aa000c     cmp.l      $c(a2), d0
001000: 6c06         bge.b      $1008
001002: 296b000c000c move.l     $c(a3), $c(a4)
001008: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
00100e: 4e5d         unlk       a5
001010: 4e75         rts        
001012: 4e550000     link.w     a5, #$0
001016: 48e7ceb8     movem.l    d0-d1/d4-d6/a0/a2-a4, -(a7)
00101a: 2440         movea.l    d0, a2
00101c: 2801         move.l     d1, d4
00101e: 2a2f002c     move.l     $2c(a7), d5
001022: 2c2f0030     move.l     $30(a7), d6
001026: 266f0034     movea.l    $34(a7), a3
00102a: 286f0038     movea.l    $38(a7), a4
00102e: 200a         move.l     a2, d0
001030: 206e83f4     movea.l    -$7c0c(a6), a0
001034: 4e90         jsr        (a0)
001036: 2200         move.l     d0, d1
001038: 200b         move.l     a3, d0
00103a: 206e83f4     movea.l    -$7c0c(a6), a0
00103e: 4e90         jsr        (a0)
001040: 9081         sub.l      d1, d0
001042: 5380         subq.l     #$1, d0
001044: 4c440800     divs.l     d4, d0
001048: 2880         move.l     d0, (a4)
00104a: 200a         move.l     a2, d0
00104c: 206e83fc     movea.l    -$7c04(a6), a0
001050: 4e90         jsr        (a0)
001052: 2200         move.l     d0, d1
001054: 200b         move.l     a3, d0
001056: 206e83fc     movea.l    -$7c04(a6), a0
00105a: 4e90         jsr        (a0)
00105c: 9081         sub.l      d1, d0
00105e: 5380         subq.l     #$1, d0
001060: 4c440800     divs.l     d4, d0
001064: 206f003c     movea.l    $3c(a7), a0
001068: 2080         move.l     d0, (a0)
00106a: 200a         move.l     a2, d0
00106c: 206e83f4     movea.l    -$7c0c(a6), a0
001070: 4e90         jsr        (a0)
001072: 2200         move.l     d0, d1
001074: 200b         move.l     a3, d0
001076: 5080         addq.l     #$8, d0
001078: 206e83f4     movea.l    -$7c0c(a6), a0
00107c: 4e90         jsr        (a0)
00107e: 9081         sub.l      d1, d0
001080: 4c440800     divs.l     d4, d0
001084: 206f0040     movea.l    $40(a7), a0
001088: 2080         move.l     d0, (a0)
00108a: 200a         move.l     a2, d0
00108c: 206e83fc     movea.l    -$7c04(a6), a0
001090: 4e90         jsr        (a0)
001092: 2200         move.l     d0, d1
001094: 200b         move.l     a3, d0
001096: 5080         addq.l     #$8, d0
001098: 206e83fc     movea.l    -$7c04(a6), a0
00109c: 4e90         jsr        (a0)
00109e: 9081         sub.l      d1, d0
0010a0: 4c440800     divs.l     d4, d0
0010a4: 206f0044     movea.l    $44(a7), a0
0010a8: 2080         move.l     d0, (a0)
0010aa: 4a94         tst.l      (a4)
0010ac: 6c02         bge.b      $10b0
0010ae: 4294         clr.l      (a4)
0010b0: 206f003c     movea.l    $3c(a7), a0
0010b4: 4a90         tst.l      (a0)
0010b6: 6c06         bge.b      $10be
0010b8: 206f003c     movea.l    $3c(a7), a0
0010bc: 4290         clr.l      (a0)
0010be: 2006         move.l     d6, d0
0010c0: 5380         subq.l     #$1, d0
0010c2: 206f0040     movea.l    $40(a7), a0
0010c6: b090         cmp.l      (a0), d0
0010c8: 6c0a         bge.b      $10d4
0010ca: 2006         move.l     d6, d0
0010cc: 5380         subq.l     #$1, d0
0010ce: 206f0040     movea.l    $40(a7), a0
0010d2: 2080         move.l     d0, (a0)
0010d4: 2005         move.l     d5, d0
0010d6: 5380         subq.l     #$1, d0
0010d8: 206f0044     movea.l    $44(a7), a0
0010dc: b090         cmp.l      (a0), d0
0010de: 6c0a         bge.b      $10ea
0010e0: 2005         move.l     d5, d0
0010e2: 5380         subq.l     #$1, d0
0010e4: 206f0044     movea.l    $44(a7), a0
0010e8: 2080         move.l     d0, (a0)
0010ea: 4ced1d70ffe4 movem.l    -$1c(a5), d4-d6/a0/a2-a4
0010f0: 4e5d         unlk       a5
0010f2: 4e75         rts        
0010f4: 4e550000     link.w     a5, #$0
0010f8: 48e7eeb8     movem.l    d0-d2/d4-d6/a0/a2-a4, -(a7)
0010fc: 246f0030     movea.l    $30(a7), a2
001100: 4fefff78     lea.l      -$88(a7), a7
001104: 42af0068     clr.l      $68(a7)
001108: 42af0064     clr.l      $64(a7)
00110c: 42af002c     clr.l      $2c(a7)
001110: 97cb         suba.l     a3, a3
001112: 42af0028     clr.l      $28(a7)
001116: 99cc         suba.l     a4, a4
001118: 42af0008     clr.l      $8(a7)
00111c: 42af0004     clr.l      $4(a7)
001120: 4297         clr.l      (a7)
001122: 41ef006c     lea.l      $6c(a7), a0
001126: 2208         move.l     a0, d1
001128: 7000         moveq      #$0, d0
00112a: 102f008f     move.b     $8f(a7), d0
00112e: 61000bd6     bsr.w      $1d06
001132: 2f400084     move.l     d0, $84(a7)
001136: 0c80000001f3 cmpi.l     #$1f3, d0
00113c: 660003f6     bne.w      $1534
001140: 61000fa6     bsr.w      $20e8
001144: 3f40000c     move.w     d0, $c(a7)
001148: 2f6f006c001a move.l     $6c(a7), $1a(a7)
00114e: 3f6f000c001e move.w     $c(a7), $1e(a7)
001154: 41ef0068     lea.l      $68(a7), a0
001158: 2208         move.l     a0, d1
00115a: 41ef001a     lea.l      $1a(a7), a0
00115e: 2008         move.l     a0, d0
001160: 61001332     bsr.w      $2494
001164: 2f400084     move.l     d0, $84(a7)
001168: 0c80000001f3 cmpi.l     #$1f3, d0
00116e: 660003c4     bne.w      $1534
001172: 4a2f00bf     tst.b      $bf(a7)
001176: 6612         bne.b      $118a
001178: 41ef001a     lea.l      $1a(a7), a0
00117c: 2208         move.l     a0, d1
00117e: 200a         move.l     a2, d0
001180: 61001f60     bsr.w      $30e2
001184: 4a00         tst.b      d0
001186: 67000354     beq.w      $14dc
00118a: 7000         moveq      #$0, d0
00118c: 302e809a     move.w     -$7f66(a6), d0
001190: 7200         moveq      #$0, d1
001192: 322e80d8     move.w     -$7f28(a6), d1
001196: d081         add.l      d1, d0
001198: 206f0068     movea.l    $68(a7), a0
00119c: 2f7008000060 move.l     (a0, d0.l), $60(a7)
0011a2: 41ef0070     lea.l      $70(a7), a0
0011a6: 2008         move.l     a0, d0
0011a8: 206e83fc     movea.l    -$7c04(a6), a0
0011ac: 4e90         jsr        (a0)
0011ae: 2200         move.l     d0, d1
0011b0: 41ef0078     lea.l      $78(a7), a0
0011b4: 2008         move.l     a0, d0
0011b6: 206e83fc     movea.l    -$7c04(a6), a0
0011ba: 4e90         jsr        (a0)
0011bc: 9081         sub.l      d1, d0
0011be: 4c6f08000060 divs.l     $60(a7), d0
0011c4: 2f40005c     move.l     d0, $5c(a7)
0011c8: 486f0048     pea.l      $48(a7)
0011cc: 486f0050     pea.l      $50(a7)
0011d0: 486f0058     pea.l      $58(a7)
0011d4: 486f0060     pea.l      $60(a7)
0011d8: 2f2f0098     move.l     $98(a7), -(a7)
0011dc: 2f2f0070     move.l     $70(a7), -(a7)
0011e0: 2f2f0074     move.l     $74(a7), -(a7)
0011e4: 222f007c     move.l     $7c(a7), d1
0011e8: 41ef008c     lea.l      $8c(a7), a0
0011ec: 2008         move.l     a0, d0
0011ee: 6100fe22     bsr.w      $1012
0011f2: 4fef001c     lea.l      $1c(a7), a7
0011f6: 7000         moveq      #$0, d0
0011f8: 302e809a     move.w     -$7f66(a6), d0
0011fc: d0af0068     add.l      $68(a7), d0
001200: 2f40002c     move.l     d0, $2c(a7)
001204: 2f6f00540044 move.l     $54(a7), $44(a7)
00120a: 60000312     bra.w      $151e
00120e: 2f6f00500040 move.l     $50(a7), $40(a7)
001214: 600002f8     bra.w      $150e
001218: 202f0040     move.l     $40(a7), d0
00121c: 5280         addq.l     #$1, d0
00121e: 222f0044     move.l     $44(a7), d1
001222: 4c2f1001005c mulu.l     $5c(a7), d1
001228: d081         add.l      d1, d0
00122a: 7200         moveq      #$0, d1
00122c: 322e80d2     move.w     -$7f2e(a6), d1
001230: 243c00004000 move.l     #$4000, d2
001236: 9481         sub.l      d1, d2
001238: 6c02         bge.b      $123c
00123a: 5682         addq.l     #$3, d2
00123c: e482         asr.l      #$2, d2
00123e: 4c420800     divs.l     d2, d0
001242: 2f400008     move.l     d0, $8(a7)
001246: 202f0040     move.l     $40(a7), d0
00124a: 5280         addq.l     #$1, d0
00124c: 222f0044     move.l     $44(a7), d1
001250: 4c2f1001005c mulu.l     $5c(a7), d1
001256: d081         add.l      d1, d0
001258: 7200         moveq      #$0, d1
00125a: 322e80d2     move.w     -$7f2e(a6), d1
00125e: 243c00004000 move.l     #$4000, d2
001264: 9481         sub.l      d1, d2
001266: 6c02         bge.b      $126a
001268: 5682         addq.l     #$3, d2
00126a: e482         asr.l      #$2, d2
00126c: 4c420801     divs.l     d2, d0
001270: 2e81         move.l     d1, (a7)
001272: 4a97         tst.l      (a7)
001274: 661a         bne.b      $1290
001276: 7000         moveq      #$0, d0
001278: 302e80d2     move.w     -$7f2e(a6), d0
00127c: 223c00004000 move.l     #$4000, d1
001282: 9280         sub.l      d0, d1
001284: 6c02         bge.b      $1288
001286: 5681         addq.l     #$3, d1
001288: e481         asr.l      #$2, d1
00128a: 2e81         move.l     d1, (a7)
00128c: 53af0008     subq.l     #$1, $8(a7)
001290: 202f0004     move.l     $4(a7), d0
001294: b0af0008     cmp.l      $8(a7), d0
001298: 670000e0     beq.w      $137a
00129c: 2f6f00080004 move.l     $8(a7), $4(a7)
0012a2: 41ef001a     lea.l      $1a(a7), a0
0012a6: 2008         move.l     a0, d0
0012a8: 6100112a     bsr.w      $23d4
0012ac: 700b         moveq      #$b, d0
0012ae: 222f0008     move.l     $8(a7), d1
0012b2: e1a9         lsl.l      d0, d1
0012b4: d2af006c     add.l      $6c(a7), d1
0012b8: 2f41001a     move.l     d1, $1a(a7)
0012bc: 7000         moveq      #$0, d0
0012be: 302e80d2     move.w     -$7f2e(a6), d0
0012c2: 223c00004000 move.l     #$4000, d1
0012c8: 9280         sub.l      d0, d1
0012ca: 6c02         bge.b      $12ce
0012cc: 5681         addq.l     #$3, d1
0012ce: e481         asr.l      #$2, d1
0012d0: 202f005c     move.l     $5c(a7), d0
0012d4: 4c2f0000005c mulu.l     $5c(a7), d0
0012da: 4c410800     divs.l     d1, d0
0012de: b0af0008     cmp.l      $8(a7), d0
0012e2: 664c         bne.b      $1330
0012e4: 7000         moveq      #$0, d0
0012e6: 302e80d2     move.w     -$7f2e(a6), d0
0012ea: 223c00004000 move.l     #$4000, d1
0012f0: 9280         sub.l      d0, d1
0012f2: 6c02         bge.b      $12f6
0012f4: 5681         addq.l     #$3, d1
0012f6: e481         asr.l      #$2, d1
0012f8: 202f005c     move.l     $5c(a7), d0
0012fc: 4c2f0000005c mulu.l     $5c(a7), d0
001302: 4c410801     divs.l     d1, d0
001306: e589         lsl.l      #$2, d1
001308: 7000         moveq      #$0, d0
00130a: 302e80d2     move.w     -$7f2e(a6), d0
00130e: d280         add.l      d0, d1
001310: 5381         subq.l     #$1, d1
001312: 6c06         bge.b      $131a
001314: 0681000007ff addi.l     #$7ff, d1
00131a: 700b         moveq      #$b, d0
00131c: e0a1         asr.l      d0, d1
00131e: 203cffffff00 move.l     #$ffffff00, d0
001324: c0af001a     and.l      $1a(a7), d0
001328: d280         add.l      d0, d1
00132a: 5281         addq.l     #$1, d1
00132c: 2f41001a     move.l     d1, $1a(a7)
001330: 3f6f000c001e move.w     $c(a7), $1e(a7)
001336: 41ef0068     lea.l      $68(a7), a0
00133a: 2208         move.l     a0, d1
00133c: 41ef001a     lea.l      $1a(a7), a0
001340: 2008         move.l     a0, d0
001342: 61001150     bsr.w      $2494
001346: 2f400084     move.l     d0, $84(a7)
00134a: 0c80000001f3 cmpi.l     #$1f3, d0
001350: 660001e2     bne.w      $1534
001354: 4a2f00bf     tst.b      $bf(a7)
001358: 6612         bne.b      $136c
00135a: 41ef001a     lea.l      $1a(a7), a0
00135e: 2208         move.l     a0, d1
001360: 200a         move.l     a2, d0
001362: 61001d7e     bsr.w      $30e2
001366: 4a00         tst.b      d0
001368: 67000172     beq.w      $14dc
00136c: 7000         moveq      #$0, d0
00136e: 302e809a     move.w     -$7f66(a6), d0
001372: d0af0068     add.l      $68(a7), d0
001376: 2f40002c     move.l     d0, $2c(a7)
00137a: 2017         move.l     (a7), d0
00137c: 5380         subq.l     #$1, d0
00137e: 7200         moveq      #$0, d1
001380: 322e80d4     move.w     -$7f2c(a6), d1
001384: 4c010000     mulu.l     d1, d0
001388: 206f002c     movea.l    $2c(a7), a0
00138c: 7200         moveq      #$0, d1
00138e: 3210         move.w     (a0), d1
001390: d2af0068     add.l      $68(a7), d1
001394: d081         add.l      d1, d0
001396: 2640         movea.l    d0, a3
001398: 4a93         tst.l      (a3)
00139a: 6700016e     beq.w      $150a
00139e: 2f530014     move.l     (a3), $14(a7)
0013a2: 3f6f000c0018 move.w     $c(a7), $18(a7)
0013a8: 4a2f00bf     tst.b      $bf(a7)
0013ac: 6616         bne.b      $13c4
0013ae: 41ef0014     lea.l      $14(a7), a0
0013b2: 2208         move.l     a0, d1
0013b4: 200a         move.l     a2, d0
0013b6: 61001d2a     bsr.w      $30e2
0013ba: 4a00         tst.b      d0
0013bc: 6700011e     beq.w      $14dc
0013c0: 60000148     bra.w      $150a
0013c4: 41ef0064     lea.l      $64(a7), a0
0013c8: 2208         move.l     a0, d1
0013ca: 41ef0014     lea.l      $14(a7), a0
0013ce: 2008         move.l     a0, d0
0013d0: 610010c2     bsr.w      $2494
0013d4: 2f400084     move.l     d0, $84(a7)
0013d8: 0c80000001f3 cmpi.l     #$1f3, d0
0013de: 6600014a     bne.w      $152a
0013e2: 486f0020     pea.l      $20(a7)
0013e6: 41ef0074     lea.l      $74(a7), a0
0013ea: 2008         move.l     a0, d0
0013ec: 206e83fc     movea.l    -$7c04(a6), a0
0013f0: 4e90         jsr        (a0)
0013f2: 222f0044     move.l     $44(a7), d1
0013f6: 4c2f10010064 mulu.l     $64(a7), d1
0013fc: d081         add.l      d1, d0
0013fe: 2200         move.l     d0, d1
001400: 41ef0074     lea.l      $74(a7), a0
001404: 2008         move.l     a0, d0
001406: 206e83f4     movea.l    -$7c0c(a6), a0
00140a: 4e90         jsr        (a0)
00140c: 242f0048     move.l     $48(a7), d2
001410: 4c2f20020064 mulu.l     $64(a7), d2
001416: d082         add.l      d2, d0
001418: 206e83e4     movea.l    -$7c1c(a6), a0
00141c: 4e90         jsr        (a0)
00141e: 588f         addq.l     #$4, a7
001420: 7000         moveq      #$0, d0
001422: 302e809a     move.w     -$7f66(a6), d0
001426: 7200         moveq      #$0, d1
001428: 322e80de     move.w     -$7f22(a6), d1
00142c: d081         add.l      d1, d0
00142e: 206f0064     movea.l    $64(a7), a0
001432: 2f7008000058 move.l     (a0, d0.l), $58(a7)
001438: 202f0060     move.l     $60(a7), d0
00143c: 4c6f08000058 divs.l     $58(a7), d0
001442: 2800         move.l     d0, d4
001444: 486f0030     pea.l      $30(a7)
001448: 486f0038     pea.l      $38(a7)
00144c: 486f0040     pea.l      $40(a7)
001450: 486f0048     pea.l      $48(a7)
001454: 2f2f0098     move.l     $98(a7), -(a7)
001458: 2f04         move.l     d4, -(a7)
00145a: 2f04         move.l     d4, -(a7)
00145c: 222f0074     move.l     $74(a7), d1
001460: 41ef003c     lea.l      $3c(a7), a0
001464: 2008         move.l     a0, d0
001466: 6100fbaa     bsr.w      $1012
00146a: 4fef001c     lea.l      $1c(a7), a7
00146e: 7000         moveq      #$0, d0
001470: 302e809a     move.w     -$7f66(a6), d0
001474: d0af0064     add.l      $64(a7), d0
001478: 2f400028     move.l     d0, $28(a7)
00147c: 2a2f003c     move.l     $3c(a7), d5
001480: 60000076     bra.w      $14f8
001484: 2c2f0038     move.l     $38(a7), d6
001488: 6066         bra.b      $14f0
00148a: 2006         move.l     d6, d0
00148c: 5280         addq.l     #$1, d0
00148e: 2205         move.l     d5, d1
001490: 4c041001     mulu.l     d4, d1
001494: d081         add.l      d1, d0
001496: 5380         subq.l     #$1, d0
001498: e388         lsl.l      #$1, d0
00149a: 206f0028     movea.l    $28(a7), a0
00149e: 7200         moveq      #$0, d1
0014a0: 3210         move.w     (a0), d1
0014a2: d2af0064     add.l      $64(a7), d1
0014a6: d081         add.l      d1, d0
0014a8: 2840         movea.l    d0, a4
0014aa: 4a54         tst.w      (a4)
0014ac: 6740         beq.b      $14ee
0014ae: 3f6f000c0012 move.w     $c(a7), $12(a7)
0014b4: 7000         moveq      #$0, d0
0014b6: 3014         move.w     (a4), d0
0014b8: 206f0064     movea.l    $64(a7), a0
0014bc: 2f700800000e move.l     (a0, d0.l), $e(a7)
0014c2: 41ef000e     lea.l      $e(a7), a0
0014c6: 2208         move.l     a0, d1
0014c8: 200a         move.l     a2, d0
0014ca: 61001c16     bsr.w      $30e2
0014ce: 4a00         tst.b      d0
0014d0: 661c         bne.b      $14ee
0014d2: 41ef0014     lea.l      $14(a7), a0
0014d6: 2008         move.l     a0, d0
0014d8: 61000efa     bsr.w      $23d4
0014dc: 41ef001a     lea.l      $1a(a7), a0
0014e0: 2008         move.l     a0, d0
0014e2: 61000ef0     bsr.w      $23d4
0014e6: 203c000001f2 move.l     #$1f2, d0
0014ec: 604a         bra.b      $1538
0014ee: 5286         addq.l     #$1, d6
0014f0: bcaf0030     cmp.l      $30(a7), d6
0014f4: 6f94         ble.b      $148a
0014f6: 5285         addq.l     #$1, d5
0014f8: baaf0034     cmp.l      $34(a7), d5
0014fc: 6f00ff86     ble.w      $1484
001500: 41ef0014     lea.l      $14(a7), a0
001504: 2008         move.l     a0, d0
001506: 61000ecc     bsr.w      $23d4
00150a: 52af0040     addq.l     #$1, $40(a7)
00150e: 202f0040     move.l     $40(a7), d0
001512: b0af0048     cmp.l      $48(a7), d0
001516: 6f00fd00     ble.w      $1218
00151a: 52af0044     addq.l     #$1, $44(a7)
00151e: 202f0044     move.l     $44(a7), d0
001522: b0af004c     cmp.l      $4c(a7), d0
001526: 6f00fce6     ble.w      $120e
00152a: 41ef001a     lea.l      $1a(a7), a0
00152e: 2008         move.l     a0, d0
001530: 61000ea2     bsr.w      $23d4
001534: 202f0084     move.l     $84(a7), d0
001538: 4fef0088     lea.l      $88(a7), a7
00153c: 4ced1d74ffe0 movem.l    -$20(a5), d2/d4-d6/a0/a2-a4
001542: 4e5d         unlk       a5
001544: 4e75         rts        
001546: 4e550000     link.w     a5, #$0
00154a: 48e7e8b0     movem.l    d0-d2/d4/a0/a2-a3, -(a7)
00154e: 2440         movea.l    d0, a2
001550: 266f0024     movea.l    $24(a7), a3
001554: 4fefffd4     lea.l      -$2c(a7), a7
001558: 42af0018     clr.l      $18(a7)
00155c: 4297         clr.l      (a7)
00155e: 487b01700000173e pea.l      $173e(a16, invalid.w)
001566: 7206         moveq      #$6, d1
001568: 41ef0008     lea.l      $8(a7), a0
00156c: 2008         move.l     a0, d0
00156e: 61001ae6     bsr.w      $3056
001572: 588f         addq.l     #$4, a7
001574: 41ef001c     lea.l      $1c(a7), a0
001578: 2208         move.l     a0, d1
00157a: 200a         move.l     a2, d0
00157c: 206e847c     movea.l    -$7b84(a6), a0
001580: 4e90         jsr        (a0)
001582: 48780001     pea.l      $1.w
001586: 486f0008     pea.l      $8(a7)
00158a: 7000         moveq      #$0, d0
00158c: 102f003b     move.b     $3b(a7), d0
001590: 2200         move.l     d0, d1
001592: 41ef0024     lea.l      $24(a7), a0
001596: 2008         move.l     a0, d0
001598: 6100fb5a     bsr.w      $10f4
00159c: 508f         addq.l     #$8, a7
00159e: 2800         move.l     d0, d4
0015a0: 0c80000001f3 cmpi.l     #$1f3, d0
0015a6: 660000b4     bne.w      $165c
0015aa: 41ef0004     lea.l      $4(a7), a0
0015ae: 2008         move.l     a0, d0
0015b0: 61001b86     bsr.w      $3138
0015b4: 60000090     bra.w      $1646
0015b8: 41d7         lea.l      (a7), a0
0015ba: 2208         move.l     a0, d1
0015bc: 202f0018     move.l     $18(a7), d0
0015c0: 61000ed2     bsr.w      $2494
0015c4: 2800         move.l     d0, d4
0015c6: 0c80000001f3 cmpi.l     #$1f3, d0
0015cc: 6600008e     bne.w      $165c
0015d0: 486f001c     pea.l      $1c(a7)
0015d4: 7000         moveq      #$0, d0
0015d6: 302e809a     move.w     -$7f66(a6), d0
0015da: 7200         moveq      #$0, d1
0015dc: 322e80b2     move.w     -$7f4e(a6), d1
0015e0: d081         add.l      d1, d0
0015e2: d0af0004     add.l      $4(a7), d0
0015e6: 5080         addq.l     #$8, d0
0015e8: 2200         move.l     d0, d1
0015ea: 7000         moveq      #$0, d0
0015ec: 302e809a     move.w     -$7f66(a6), d0
0015f0: 7400         moveq      #$0, d2
0015f2: 342e80b2     move.w     -$7f4e(a6), d2
0015f6: d082         add.l      d2, d0
0015f8: d0af0004     add.l      $4(a7), d0
0015fc: 206e8420     movea.l    -$7be0(a6), a0
001600: 4e90         jsr        (a0)
001602: 588f         addq.l     #$4, a7
001604: 202f0018     move.l     $18(a7), d0
001608: 61000dca     bsr.w      $23d4
00160c: 220a         move.l     a2, d1
00160e: 41ef001c     lea.l      $1c(a7), a0
001612: 2008         move.l     a0, d0
001614: 206e83dc     movea.l    -$7c24(a6), a0
001618: 4e90         jsr        (a0)
00161a: 4880         ext.w      d0
00161c: 02400004     andi.w     #$4, d0
001620: 0c400004     cmpi.w     #$4, d0
001624: 6620         bne.b      $1646
001626: 222f0018     move.l     $18(a7), d1
00162a: 200b         move.l     a3, d0
00162c: 61001ab4     bsr.w      $30e2
001630: 4a00         tst.b      d0
001632: 6612         bne.b      $1646
001634: 41ef0004     lea.l      $4(a7), a0
001638: 2008         move.l     a0, d0
00163a: 61001bd8     bsr.w      $3214
00163e: 203c000001f2 move.l     #$1f2, d0
001644: 6022         bra.b      $1668
001646: 41ef0018     lea.l      $18(a7), a0
00164a: 2208         move.l     a0, d1
00164c: 41ef0004     lea.l      $4(a7), a0
001650: 2008         move.l     a0, d0
001652: 61001afc     bsr.w      $3150
001656: 4a00         tst.b      d0
001658: 6600ff5e     bne.w      $15b8
00165c: 41ef0004     lea.l      $4(a7), a0
001660: 2008         move.l     a0, d0
001662: 61001bb0     bsr.w      $3214
001666: 2004         move.l     d4, d0
001668: 4fef002c     lea.l      $2c(a7), a7
00166c: 4ced0d14ffec movem.l    -$14(a5), d2/d4/a0/a2-a3
001672: 4e5d         unlk       a5
001674: 4e75         rts        
001676: 4e550000     link.w     a5, #$0
00167a: 48e7efb0     movem.l    d0-d2/d4-d7/a0/a2-a3, -(a7)
00167e: 2440         movea.l    d0, a2
001680: 4fefff8a     lea.l      -$76(a7), a7
001684: 42af0054     clr.l      $54(a7)
001688: 42af0038     clr.l      $38(a7)
00168c: 97cb         suba.l     a3, a3
00168e: 42af002e     clr.l      $2e(a7)
001692: 42af0008     clr.l      $8(a7)
001696: 42af0004     clr.l      $4(a7)
00169a: 4297         clr.l      (a7)
00169c: 41ef005e     lea.l      $5e(a7), a0
0016a0: 2208         move.l     a0, d1
0016a2: 7000         moveq      #$0, d0
0016a4: 102f007d     move.b     $7d(a7), d0
0016a8: 6100065c     bsr.w      $1d06
0016ac: 2800         move.l     d0, d4
0016ae: 0c80000001f3 cmpi.l     #$1f3, d0
0016b4: 66000310     bne.w      $19c6
0016b8: 2f6f005e0058 move.l     $5e(a7), $58(a7)
0016be: 61000a28     bsr.w      $20e8
0016c2: 3f40005c     move.w     d0, $5c(a7)
0016c6: 3f6f005c000c move.w     $5c(a7), $c(a7)
0016cc: 41ef0054     lea.l      $54(a7), a0
0016d0: 2208         move.l     a0, d1
0016d2: 41ef0058     lea.l      $58(a7), a0
0016d6: 2008         move.l     a0, d0
0016d8: 61000dba     bsr.w      $2494
0016dc: 2800         move.l     d0, d4
0016de: 0c80000001f3 cmpi.l     #$1f3, d0
0016e4: 660002e0     bne.w      $19c6
0016e8: 7000         moveq      #$0, d0
0016ea: 302e809a     move.w     -$7f66(a6), d0
0016ee: 7200         moveq      #$0, d1
0016f0: 322e80d8     move.w     -$7f28(a6), d1
0016f4: d081         add.l      d1, d0
0016f6: 206f0054     movea.l    $54(a7), a0
0016fa: 2f7008000050 move.l     (a0, d0.l), $50(a7)
001700: 41ef0062     lea.l      $62(a7), a0
001704: 2008         move.l     a0, d0
001706: 206e83fc     movea.l    -$7c04(a6), a0
00170a: 4e90         jsr        (a0)
00170c: 2200         move.l     d0, d1
00170e: 41ef006a     lea.l      $6a(a7), a0
001712: 2008         move.l     a0, d0
001714: 206e83fc     movea.l    -$7c04(a6), a0
001718: 4e90         jsr        (a0)
00171a: 9081         sub.l      d1, d0
00171c: 4c6f08000050 divs.l     $50(a7), d0
001722: 2f40004c     move.l     d0, $4c(a7)
001726: 486f003c     pea.l      $3c(a7)
00172a: 486f0044     pea.l      $44(a7)
00172e: 486f004c     pea.l      $4c(a7)
001732: 486f0054     pea.l      $54(a7)
001736: 4852         pea.l      (a2)
001738: 2f2f0060     move.l     $60(a7), -(a7)
00173c: 2f2f0064     move.l     $64(a7), -(a7)
001740: 222f006c     move.l     $6c(a7), d1
001744: 41ef007e     lea.l      $7e(a7), a0
001748: 2008         move.l     a0, d0
00174a: 6100f8c6     bsr.w      $1012
00174e: 4fef001c     lea.l      $1c(a7), a7
001752: 7000         moveq      #$0, d0
001754: 302e809a     move.w     -$7f66(a6), d0
001758: d0af0054     add.l      $54(a7), d0
00175c: 2f400038     move.l     d0, $38(a7)
001760: 2f520016     move.l     (a2), $16(a7)
001764: 2f6a0004001a move.l     $4(a2), $1a(a7)
00176a: 2f6a0008001e move.l     $8(a2), $1e(a7)
001770: 2f6a000c0022 move.l     $c(a2), $22(a7)
001776: 2e2f0050     move.l     $50(a7), d7
00177a: 2a2f0048     move.l     $48(a7), d5
00177e: 600002a8     bra.w      $1a28
001782: 2c2f0044     move.l     $44(a7), d6
001786: 60000296     bra.w      $1a1e
00178a: 2006         move.l     d6, d0
00178c: 5280         addq.l     #$1, d0
00178e: 2205         move.l     d5, d1
001790: 4c2f1001004c mulu.l     $4c(a7), d1
001796: d081         add.l      d1, d0
001798: 7200         moveq      #$0, d1
00179a: 322e80d2     move.w     -$7f2e(a6), d1
00179e: 243c00004000 move.l     #$4000, d2
0017a4: 9481         sub.l      d1, d2
0017a6: 6c02         bge.b      $17aa
0017a8: 5682         addq.l     #$3, d2
0017aa: e482         asr.l      #$2, d2
0017ac: 4c420800     divs.l     d2, d0
0017b0: 2f400008     move.l     d0, $8(a7)
0017b4: 2006         move.l     d6, d0
0017b6: 5280         addq.l     #$1, d0
0017b8: 2205         move.l     d5, d1
0017ba: 4c2f1001004c mulu.l     $4c(a7), d1
0017c0: d081         add.l      d1, d0
0017c2: 7200         moveq      #$0, d1
0017c4: 322e80d2     move.w     -$7f2e(a6), d1
0017c8: 243c00004000 move.l     #$4000, d2
0017ce: 9481         sub.l      d1, d2
0017d0: 6c02         bge.b      $17d4
0017d2: 5682         addq.l     #$3, d2
0017d4: e482         asr.l      #$2, d2
0017d6: 4c420801     divs.l     d2, d0
0017da: 2e81         move.l     d1, (a7)
0017dc: 4a97         tst.l      (a7)
0017de: 661a         bne.b      $17fa
0017e0: 7000         moveq      #$0, d0
0017e2: 302e80d2     move.w     -$7f2e(a6), d0
0017e6: 223c00004000 move.l     #$4000, d1
0017ec: 9280         sub.l      d0, d1
0017ee: 6c02         bge.b      $17f2
0017f0: 5681         addq.l     #$3, d1
0017f2: e481         asr.l      #$2, d1
0017f4: 2e81         move.l     d1, (a7)
0017f6: 53af0008     subq.l     #$1, $8(a7)
0017fa: 202f0004     move.l     $4(a7), d0
0017fe: b0af0008     cmp.l      $8(a7), d0
001802: 670000c6     beq.w      $18ca
001806: 2f6f00080004 move.l     $8(a7), $4(a7)
00180c: 41ef0058     lea.l      $58(a7), a0
001810: 2008         move.l     a0, d0
001812: 61000bc0     bsr.w      $23d4
001816: 700b         moveq      #$b, d0
001818: 222f0008     move.l     $8(a7), d1
00181c: e1a9         lsl.l      d0, d1
00181e: d2af005e     add.l      $5e(a7), d1
001822: 2f410058     move.l     d1, $58(a7)
001826: 7000         moveq      #$0, d0
001828: 302e80d2     move.w     -$7f2e(a6), d0
00182c: 223c00004000 move.l     #$4000, d1
001832: 9280         sub.l      d0, d1
001834: 6c02         bge.b      $1838
001836: 5681         addq.l     #$3, d1
001838: e481         asr.l      #$2, d1
00183a: 202f004c     move.l     $4c(a7), d0
00183e: 4c2f0000004c mulu.l     $4c(a7), d0
001844: 4c410800     divs.l     d1, d0
001848: b0af0008     cmp.l      $8(a7), d0
00184c: 664c         bne.b      $189a
00184e: 7000         moveq      #$0, d0
001850: 302e80d2     move.w     -$7f2e(a6), d0
001854: 223c00004000 move.l     #$4000, d1
00185a: 9280         sub.l      d0, d1
00185c: 6c02         bge.b      $1860
00185e: 5681         addq.l     #$3, d1
001860: e481         asr.l      #$2, d1
001862: 202f004c     move.l     $4c(a7), d0
001866: 4c2f0000004c mulu.l     $4c(a7), d0
00186c: 4c410801     divs.l     d1, d0
001870: e589         lsl.l      #$2, d1
001872: 7000         moveq      #$0, d0
001874: 302e80d2     move.w     -$7f2e(a6), d0
001878: d280         add.l      d0, d1
00187a: 5381         subq.l     #$1, d1
00187c: 6c06         bge.b      $1884
00187e: 0681000007ff addi.l     #$7ff, d1
001884: 700b         moveq      #$b, d0
001886: e0a1         asr.l      d0, d1
001888: 203cffffff00 move.l     #$ffffff00, d0
00188e: c0af0058     and.l      $58(a7), d0
001892: d280         add.l      d0, d1
001894: 5281         addq.l     #$1, d1
001896: 2f410058     move.l     d1, $58(a7)
00189a: 3f6f000c005c move.w     $c(a7), $5c(a7)
0018a0: 41ef0054     lea.l      $54(a7), a0
0018a4: 2208         move.l     a0, d1
0018a6: 41ef0058     lea.l      $58(a7), a0
0018aa: 2008         move.l     a0, d0
0018ac: 61000be6     bsr.w      $2494
0018b0: 2800         move.l     d0, d4
0018b2: 0c80000001f3 cmpi.l     #$1f3, d0
0018b8: 6600010c     bne.w      $19c6
0018bc: 7000         moveq      #$0, d0
0018be: 302e809a     move.w     -$7f66(a6), d0
0018c2: d0af0054     add.l      $54(a7), d0
0018c6: 2f400038     move.l     d0, $38(a7)
0018ca: 2017         move.l     (a7), d0
0018cc: 5380         subq.l     #$1, d0
0018ce: 7200         moveq      #$0, d1
0018d0: 322e80d4     move.w     -$7f2c(a6), d1
0018d4: 4c010000     mulu.l     d1, d0
0018d8: 206f0038     movea.l    $38(a7), a0
0018dc: 7200         moveq      #$0, d1
0018de: 3210         move.w     (a0), d1
0018e0: d2af0054     add.l      $54(a7), d1
0018e4: d081         add.l      d1, d0
0018e6: 2640         movea.l    d0, a3
0018e8: 486f0026     pea.l      $26(a7)
0018ec: 41ef0066     lea.l      $66(a7), a0
0018f0: 2008         move.l     a0, d0
0018f2: 206e83fc     movea.l    -$7c04(a6), a0
0018f6: 4e90         jsr        (a0)
0018f8: 2206         move.l     d6, d1
0018fa: 4c2f10010054 mulu.l     $54(a7), d1
001900: d081         add.l      d1, d0
001902: 2200         move.l     d0, d1
001904: 41ef0066     lea.l      $66(a7), a0
001908: 2008         move.l     a0, d0
00190a: 206e83f4     movea.l    -$7c0c(a6), a0
00190e: 4e90         jsr        (a0)
001910: 2405         move.l     d5, d2
001912: 4c2f20020054 mulu.l     $54(a7), d2
001918: d082         add.l      d2, d0
00191a: 206e83e4     movea.l    -$7c1c(a6), a0
00191e: 4e90         jsr        (a0)
001920: 588f         addq.l     #$4, a7
001922: 486f0016     pea.l      $16(a7)
001926: 41ef002a     lea.l      $2a(a7), a0
00192a: 2208         move.l     a0, d1
00192c: 41ef001a     lea.l      $1a(a7), a0
001930: 2008         move.l     a0, d0
001932: 206e83d8     movea.l    -$7c28(a6), a0
001936: 4e90         jsr        (a0)
001938: 588f         addq.l     #$4, a7
00193a: 486f0026     pea.l      $26(a7)
00193e: 41ef0066     lea.l      $66(a7), a0
001942: 2008         move.l     a0, d0
001944: 206e83fc     movea.l    -$7c04(a6), a0
001948: 4e90         jsr        (a0)
00194a: 2206         move.l     d6, d1
00194c: 5281         addq.l     #$1, d1
00194e: 4c2f10010054 mulu.l     $54(a7), d1
001954: d081         add.l      d1, d0
001956: 2200         move.l     d0, d1
001958: 41ef0066     lea.l      $66(a7), a0
00195c: 2008         move.l     a0, d0
00195e: 206e83f4     movea.l    -$7c0c(a6), a0
001962: 4e90         jsr        (a0)
001964: 2405         move.l     d5, d2
001966: 5282         addq.l     #$1, d2
001968: 4c2f20020054 mulu.l     $54(a7), d2
00196e: d082         add.l      d2, d0
001970: 206e83e4     movea.l    -$7c1c(a6), a0
001974: 4e90         jsr        (a0)
001976: 588f         addq.l     #$4, a7
001978: 486f0016     pea.l      $16(a7)
00197c: 41ef002a     lea.l      $2a(a7), a0
001980: 2208         move.l     a0, d1
001982: 41ef001a     lea.l      $1a(a7), a0
001986: 2008         move.l     a0, d0
001988: 206e83d8     movea.l    -$7c28(a6), a0
00198c: 4e90         jsr        (a0)
00198e: 588f         addq.l     #$4, a7
001990: 4a93         tst.l      (a3)
001992: 67000088     beq.w      $1a1c
001996: 2f530032     move.l     (a3), $32(a7)
00199a: 6100074c     bsr.w      $20e8
00199e: 3f400036     move.w     d0, $36(a7)
0019a2: 41ef002e     lea.l      $2e(a7), a0
0019a6: 2208         move.l     a0, d1
0019a8: 41ef0032     lea.l      $32(a7), a0
0019ac: 2008         move.l     a0, d0
0019ae: 61000ae4     bsr.w      $2494
0019b2: 2800         move.l     d0, d4
0019b4: 0c80000001f3 cmpi.l     #$1f3, d0
0019ba: 6710         beq.b      $19cc
0019bc: 41ef0058     lea.l      $58(a7), a0
0019c0: 2008         move.l     a0, d0
0019c2: 61000a10     bsr.w      $23d4
0019c6: 2004         move.l     d4, d0
0019c8: 600000a8     bra.w      $1a72
0019cc: 7000         moveq      #$0, d0
0019ce: 302e809a     move.w     -$7f66(a6), d0
0019d2: 7200         moveq      #$0, d1
0019d4: 322e80de     move.w     -$7f22(a6), d1
0019d8: d081         add.l      d1, d0
0019da: 206f002e     movea.l    $2e(a7), a0
0019de: beb00800     cmp.l      (a0, d0.l), d7
0019e2: 6f16         ble.b      $19fa
0019e4: 7000         moveq      #$0, d0
0019e6: 302e809a     move.w     -$7f66(a6), d0
0019ea: 7200         moveq      #$0, d1
0019ec: 322e80de     move.w     -$7f22(a6), d1
0019f0: d081         add.l      d1, d0
0019f2: 206f002e     movea.l    $2e(a7), a0
0019f6: 2e300800     move.l     (a0, d0.l), d7
0019fa: 7000         moveq      #$0, d0
0019fc: 302e809a     move.w     -$7f66(a6), d0
001a00: 7200         moveq      #$0, d1
001a02: 322e80de     move.w     -$7f22(a6), d1
001a06: d081         add.l      d1, d0
001a08: 206f002e     movea.l    $2e(a7), a0
001a0c: 72ff         moveq      #$ff, d1
001a0e: b2b00800     cmp.l      (a0, d0.l), d1
001a12: 41ef0032     lea.l      $32(a7), a0
001a16: 2008         move.l     a0, d0
001a18: 610009ba     bsr.w      $23d4
001a1c: 5286         addq.l     #$1, d6
001a1e: bcaf003c     cmp.l      $3c(a7), d6
001a22: 6f00fd66     ble.w      $178a
001a26: 5285         addq.l     #$1, d5
001a28: baaf0040     cmp.l      $40(a7), d5
001a2c: 6f00fd54     ble.w      $1782
001a30: 41ef0058     lea.l      $58(a7), a0
001a34: 2008         move.l     a0, d0
001a36: 6100099c     bsr.w      $23d4
001a3a: 486f000e     pea.l      $e(a7)
001a3e: 2207         move.l     d7, d1
001a40: 2007         move.l     d7, d0
001a42: 206e83e8     movea.l    -$7c18(a6), a0
001a46: 4e90         jsr        (a0)
001a48: 588f         addq.l     #$4, a7
001a4a: 4852         pea.l      (a2)
001a4c: 41ef0012     lea.l      $12(a7), a0
001a50: 2208         move.l     a0, d1
001a52: 200a         move.l     a2, d0
001a54: 206e83e0     movea.l    -$7c20(a6), a0
001a58: 4e90         jsr        (a0)
001a5a: 588f         addq.l     #$4, a7
001a5c: 4852         pea.l      (a2)
001a5e: 41ef001a     lea.l      $1a(a7), a0
001a62: 2208         move.l     a0, d1
001a64: 200a         move.l     a2, d0
001a66: 6100f524     bsr.w      $f8c
001a6a: 588f         addq.l     #$4, a7
001a6c: 203c000001f3 move.l     #$1f3, d0
001a72: 4fef0076     lea.l      $76(a7), a7
001a76: 4ced0df4ffe0 movem.l    -$20(a5), d2/d4-d7/a0/a2-a3
001a7c: 4e5d         unlk       a5
001a7e: 4e75         rts        
001a80: 4e6f         move       usp, a7
001a82: 206f7665     movea.l    $7665(a7), a0
001a86: 726c         moveq      #$6c, d1
001a88: 6170         bsr.b      $1afa
001a8a: 0d00         btst.l     d6, d0
001a8c: 4e550000     link.w     a5, #$0
001a90: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001a94: 4feffff2     lea.l      -$e(a7), a7
001a98: 6100064e     bsr.w      $20e8
001a9c: 3f400004     move.w     d0, $4(a7)
001aa0: 7008         moveq      #$8, d0
001aa2: 2e80         move.l     d0, (a7)
001aa4: 41ef0006     lea.l      $6(a7), a0
001aa8: 2208         move.l     a0, d1
001aaa: 41d7         lea.l      (a7), a0
001aac: 2008         move.l     a0, d0
001aae: 610009e4     bsr.w      $2494
001ab2: 2f40000a     move.l     d0, $a(a7)
001ab6: 0c80000001f3 cmpi.l     #$1f3, d0
001abc: 6634         bne.b      $1af2
001abe: 202f0006     move.l     $6(a7), d0
001ac2: 61000ca6     bsr.w      $276a
001ac6: 61000620     bsr.w      $20e8
001aca: 206f000e     movea.l    $e(a7), a0
001ace: 31400004     move.w     d0, $4(a0)
001ad2: 206f0006     movea.l    $6(a7), a0
001ad6: 226f000e     movea.l    $e(a7), a1
001ada: 22a8000c     move.l     $c(a0), (a1)
001ade: 206f0012     movea.l    $12(a7), a0
001ae2: 226f0006     movea.l    $6(a7), a1
001ae6: 20a90010     move.l     $10(a1), (a0)
001aea: 41d7         lea.l      (a7), a0
001aec: 2008         move.l     a0, d0
001aee: 610008e4     bsr.w      $23d4
001af2: 202f000a     move.l     $a(a7), d0
001af6: 4fef000e     lea.l      $e(a7), a7
001afa: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001b00: 4e5d         unlk       a5
001b02: 4e75         rts        
001b04: 4e550000     link.w     a5, #$0
001b08: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001b0c: 4fefffee     lea.l      -$12(a7), a7
001b10: 610005d6     bsr.w      $20e8
001b14: 3f400004     move.w     d0, $4(a7)
001b18: 7008         moveq      #$8, d0
001b1a: 2e80         move.l     d0, (a7)
001b1c: 41ef000a     lea.l      $a(a7), a0
001b20: 2208         move.l     a0, d1
001b22: 41d7         lea.l      (a7), a0
001b24: 2008         move.l     a0, d0
001b26: 6100096c     bsr.w      $2494
001b2a: 2f40000e     move.l     d0, $e(a7)
001b2e: 0c80000001f3 cmpi.l     #$1f3, d0
001b34: 6664         bne.b      $1b9a
001b36: 202f000a     move.l     $a(a7), d0
001b3a: 61000c2e     bsr.w      $276a
001b3e: 202f000a     move.l     $a(a7), d0
001b42: 5080         addq.l     #$8, d0
001b44: 2f400006     move.l     d0, $6(a7)
001b48: 206f0006     movea.l    $6(a7), a0
001b4c: 7000         moveq      #$0, d0
001b4e: 30280002     move.w     $2(a0), d0
001b52: b0af0012     cmp.l      $12(a7), d0
001b56: 6c08         bge.b      $1b60
001b58: 203c000001b3 move.l     #$1b3, d0
001b5e: 603e         bra.b      $1b9e
001b60: 202f0012     move.l     $12(a7), d0
001b64: 5380         subq.l     #$1, d0
001b66: 7200         moveq      #$0, d1
001b68: 322e80cc     move.w     -$7f34(a6), d1
001b6c: 4c010000     mulu.l     d1, d0
001b70: 206f0006     movea.l    $6(a7), a0
001b74: 7200         moveq      #$0, d1
001b76: 3210         move.w     (a0), d1
001b78: d2af000a     add.l      $a(a7), d1
001b7c: d081         add.l      d1, d0
001b7e: 2440         movea.l    d0, a2
001b80: 61000566     bsr.w      $20e8
001b84: 206f0016     movea.l    $16(a7), a0
001b88: 31400004     move.w     d0, $4(a0)
001b8c: 206f0016     movea.l    $16(a7), a0
001b90: 2092         move.l     (a2), (a0)
001b92: 41d7         lea.l      (a7), a0
001b94: 2008         move.l     a0, d0
001b96: 6100083c     bsr.w      $23d4
001b9a: 202f000e     move.l     $e(a7), d0
001b9e: 4fef0012     lea.l      $12(a7), a7
001ba2: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001ba8: 4e5d         unlk       a5
001baa: 4e75         rts        
001bac: 4e550000     link.w     a5, #$0
001bb0: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001bb4: 2441         movea.l    d1, a2
001bb6: 4fefff9c     lea.l      -$64(a7), a7
001bba: 41ef005a     lea.l      $5a(a7), a0
001bbe: 2208         move.l     a0, d1
001bc0: 7001         moveq      #$1, d0
001bc2: 6100ff40     bsr.w      $1b04
001bc6: 2f400060     move.l     d0, $60(a7)
001bca: 0c80000001f3 cmpi.l     #$1f3, d0
001bd0: 660000c2     bne.w      $1c94
001bd4: 41ef0056     lea.l      $56(a7), a0
001bd8: 2208         move.l     a0, d1
001bda: 41ef005a     lea.l      $5a(a7), a0
001bde: 2008         move.l     a0, d0
001be0: 610008b2     bsr.w      $2494
001be4: 2f400060     move.l     d0, $60(a7)
001be8: 0c80000001f3 cmpi.l     #$1f3, d0
001bee: 660000a4     bne.w      $1c94
001bf2: 7000         moveq      #$0, d0
001bf4: 302e809a     move.w     -$7f66(a6), d0
001bf8: d0af0056     add.l      $56(a7), d0
001bfc: 2f400052     move.l     d0, $52(a7)
001c00: 7800         moveq      #$0, d4
001c02: 206f0052     movea.l    $52(a7), a0
001c06: 7000         moveq      #$0, d0
001c08: 3010         move.w     (a0), d0
001c0a: d0af0056     add.l      $56(a7), d0
001c0e: 6066         bra.b      $1c76
001c10: 206f004e     movea.l    $4e(a7), a0
001c14: 102f0067     move.b     $67(a7), d0
001c18: b0280004     cmp.b      $4(a0), d0
001c1c: 6706         beq.b      $1c24
001c1e: 4a2f0067     tst.b      $67(a7)
001c22: 6646         bne.b      $1c6a
001c24: 206f004e     movea.l    $4e(a7), a0
001c28: 7000         moveq      #$0, d0
001c2a: 30280002     move.w     $2(a0), d0
001c2e: d0af0056     add.l      $56(a7), d0
001c32: 2200         move.l     d0, d1
001c34: 41ef0001     lea.l      $1(a7), a0
001c38: 2008         move.l     a0, d0
001c3a: 61003af2     bsr.w      $572e
001c3e: 206f004e     movea.l    $4e(a7), a0
001c42: 1f680001004d move.b     $1(a0), $4d(a7)
001c48: 41ef0001     lea.l      $1(a7), a0
001c4c: 2208         move.l     a0, d1
001c4e: 200a         move.l     a2, d0
001c50: 61001490     bsr.w      $30e2
001c54: 4a00         tst.b      d0
001c56: 6612         bne.b      $1c6a
001c58: 41ef005a     lea.l      $5a(a7), a0
001c5c: 2008         move.l     a0, d0
001c5e: 61000774     bsr.w      $23d4
001c62: 203c000001f2 move.l     #$1f2, d0
001c68: 602e         bra.b      $1c98
001c6a: 5284         addq.l     #$1, d4
001c6c: 7000         moveq      #$0, d0
001c6e: 302e80bc     move.w     -$7f44(a6), d0
001c72: d0af004e     add.l      $4e(a7), d0
001c76: 2f40004e     move.l     d0, $4e(a7)
001c7a: 206f0052     movea.l    $52(a7), a0
001c7e: 7000         moveq      #$0, d0
001c80: 30280002     move.w     $2(a0), d0
001c84: b084         cmp.l      d4, d0
001c86: 6e00ff88     bgt.w      $1c10
001c8a: 41ef005a     lea.l      $5a(a7), a0
001c8e: 2008         move.l     a0, d0
001c90: 61000742     bsr.w      $23d4
001c94: 202f0060     move.l     $60(a7), d0
001c98: 4fef0064     lea.l      $64(a7), a7
001c9c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
001ca2: 4e5d         unlk       a5
001ca4: 4e75         rts        
001ca6: 4e550000     link.w     a5, #$0
001caa: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001cae: 4feffff2     lea.l      -$e(a7), a7
001cb2: 61000434     bsr.w      $20e8
001cb6: 3f400004     move.w     d0, $4(a7)
001cba: 7008         moveq      #$8, d0
001cbc: 2e80         move.l     d0, (a7)
001cbe: 41ef0006     lea.l      $6(a7), a0
001cc2: 2208         move.l     a0, d1
001cc4: 41d7         lea.l      (a7), a0
001cc6: 2008         move.l     a0, d0
001cc8: 610007ca     bsr.w      $2494
001ccc: 2f40000a     move.l     d0, $a(a7)
001cd0: 0c80000001f3 cmpi.l     #$1f3, d0
001cd6: 661c         bne.b      $1cf4
001cd8: 202f0006     move.l     $6(a7), d0
001cdc: 61000a8c     bsr.w      $276a
001ce0: 206f0006     movea.l    $6(a7), a0
001ce4: 226f000e     movea.l    $e(a7), a1
001ce8: 32a8001a     move.w     $1a(a0), (a1)
001cec: 41d7         lea.l      (a7), a0
001cee: 2008         move.l     a0, d0
001cf0: 610006e2     bsr.w      $23d4
001cf4: 202f000a     move.l     $a(a7), d0
001cf8: 4fef000e     lea.l      $e(a7), a7
001cfc: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
001d02: 4e5d         unlk       a5
001d04: 4e75         rts        
001d06: 4e550000     link.w     a5, #$0
001d0a: 48e7e8c0     movem.l    d0-d2/d4/a0-a1, -(a7)
001d0e: 2800         move.l     d0, d4
001d10: 4feffff2     lea.l      -$e(a7), a7
001d14: 41ef0004     lea.l      $4(a7), a0
001d18: 2208         move.l     a0, d1
001d1a: 7001         moveq      #$1, d0
001d1c: 6100fde6     bsr.w      $1b04
001d20: 2f40000a     move.l     d0, $a(a7)
001d24: 0c80000001f3 cmpi.l     #$1f3, d0
001d2a: 660001e4     bne.w      $1f10
001d2e: 41d7         lea.l      (a7), a0
001d30: 2208         move.l     a0, d1
001d32: 41ef0004     lea.l      $4(a7), a0
001d36: 2008         move.l     a0, d0
001d38: 6100075a     bsr.w      $2494
001d3c: 2f40000a     move.l     d0, $a(a7)
001d40: 0c80000001f3 cmpi.l     #$1f3, d0
001d46: 6700017e     beq.w      $1ec6
001d4a: 600001c4     bra.w      $1f10
001d4e: 7000         moveq      #$0, d0
001d50: 302e809a     move.w     -$7f66(a6), d0
001d54: 7200         moveq      #$0, d1
001d56: 322e80c4     move.w     -$7f3c(a6), d1
001d5a: d081         add.l      d1, d0
001d5c: 2057         movea.l    (a7), a0
001d5e: 226f0012     movea.l    $12(a7), a1
001d62: 41f00800     lea.l      (a0, d0.l), a0
001d66: 7005         moveq      #$5, d0
001d68: 22d8         move.l     (a0)+, (a1)+
001d6a: 51c8fffc     dbra       d0, $1d68
001d6e: 60000196     bra.w      $1f06
001d72: 7000         moveq      #$0, d0
001d74: 302e809a     move.w     -$7f66(a6), d0
001d78: 7200         moveq      #$0, d1
001d7a: 322e80c4     move.w     -$7f3c(a6), d1
001d7e: d081         add.l      d1, d0
001d80: 2057         movea.l    (a7), a0
001d82: 7200         moveq      #$0, d1
001d84: 322e80c0     move.w     -$7f40(a6), d1
001d88: d1c0         adda.l     d0, a0
001d8a: 226f0012     movea.l    $12(a7), a1
001d8e: 41f01a00     lea.l      (a0, d1.l * 2), a0
001d92: 7005         moveq      #$5, d0
001d94: 22d8         move.l     (a0)+, (a1)+
001d96: 51c8fffc     dbra       d0, $1d94
001d9a: 6000016a     bra.w      $1f06
001d9e: 7000         moveq      #$0, d0
001da0: 302e809a     move.w     -$7f66(a6), d0
001da4: 7200         moveq      #$0, d1
001da6: 322e80c4     move.w     -$7f3c(a6), d1
001daa: d081         add.l      d1, d0
001dac: 2057         movea.l    (a7), a0
001dae: 7200         moveq      #$0, d1
001db0: 322e80c0     move.w     -$7f40(a6), d1
001db4: 7403         moveq      #$3, d2
001db6: 4c021001     mulu.l     d2, d1
001dba: d081         add.l      d1, d0
001dbc: 226f0012     movea.l    $12(a7), a1
001dc0: 41f00800     lea.l      (a0, d0.l), a0
001dc4: 7005         moveq      #$5, d0
001dc6: 22d8         move.l     (a0)+, (a1)+
001dc8: 51c8fffc     dbra       d0, $1dc6
001dcc: 60000138     bra.w      $1f06
001dd0: 7000         moveq      #$0, d0
001dd2: 302e809a     move.w     -$7f66(a6), d0
001dd6: 7200         moveq      #$0, d1
001dd8: 322e80c4     move.w     -$7f3c(a6), d1
001ddc: d081         add.l      d1, d0
001dde: 2057         movea.l    (a7), a0
001de0: 7200         moveq      #$0, d1
001de2: 322e80c0     move.w     -$7f40(a6), d1
001de6: d1c0         adda.l     d0, a0
001de8: 226f0012     movea.l    $12(a7), a1
001dec: 41f01c00     lea.l      (a0, d1.l * 4), a0
001df0: 7005         moveq      #$5, d0
001df2: 22d8         move.l     (a0)+, (a1)+
001df4: 51c8fffc     dbra       d0, $1df2
001df8: 6000010c     bra.w      $1f06
001dfc: 7000         moveq      #$0, d0
001dfe: 302e809a     move.w     -$7f66(a6), d0
001e02: 7200         moveq      #$0, d1
001e04: 322e80c4     move.w     -$7f3c(a6), d1
001e08: d081         add.l      d1, d0
001e0a: 2057         movea.l    (a7), a0
001e0c: 7200         moveq      #$0, d1
001e0e: 322e80c0     move.w     -$7f40(a6), d1
001e12: d081         add.l      d1, d0
001e14: 226f0012     movea.l    $12(a7), a1
001e18: 41f00800     lea.l      (a0, d0.l), a0
001e1c: 7005         moveq      #$5, d0
001e1e: 22d8         move.l     (a0)+, (a1)+
001e20: 51c8fffc     dbra       d0, $1e1e
001e24: 600000e0     bra.w      $1f06
001e28: 7000         moveq      #$0, d0
001e2a: 302e809a     move.w     -$7f66(a6), d0
001e2e: 7200         moveq      #$0, d1
001e30: 322e80c4     move.w     -$7f3c(a6), d1
001e34: d081         add.l      d1, d0
001e36: 2057         movea.l    (a7), a0
001e38: 7200         moveq      #$0, d1
001e3a: 322e80c0     move.w     -$7f40(a6), d1
001e3e: 7405         moveq      #$5, d2
001e40: 4c021001     mulu.l     d2, d1
001e44: d081         add.l      d1, d0
001e46: 226f0012     movea.l    $12(a7), a1
001e4a: 41f00800     lea.l      (a0, d0.l), a0
001e4e: 7005         moveq      #$5, d0
001e50: 22d8         move.l     (a0)+, (a1)+
001e52: 51c8fffc     dbra       d0, $1e50
001e56: 600000ae     bra.w      $1f06
001e5a: 7000         moveq      #$0, d0
001e5c: 302e809a     move.w     -$7f66(a6), d0
001e60: 7200         moveq      #$0, d1
001e62: 322e80c4     move.w     -$7f3c(a6), d1
001e66: d081         add.l      d1, d0
001e68: 2057         movea.l    (a7), a0
001e6a: 7200         moveq      #$0, d1
001e6c: 322e80c0     move.w     -$7f40(a6), d1
001e70: 7406         moveq      #$6, d2
001e72: 4c021001     mulu.l     d2, d1
001e76: d081         add.l      d1, d0
001e78: 226f0012     movea.l    $12(a7), a1
001e7c: 41f00800     lea.l      (a0, d0.l), a0
001e80: 7005         moveq      #$5, d0
001e82: 22d8         move.l     (a0)+, (a1)+
001e84: 51c8fffc     dbra       d0, $1e82
001e88: 6000007c     bra.w      $1f06
001e8c: 7000         moveq      #$0, d0
001e8e: 302e809a     move.w     -$7f66(a6), d0
001e92: 7200         moveq      #$0, d1
001e94: 322e80c4     move.w     -$7f3c(a6), d1
001e98: d081         add.l      d1, d0
001e9a: 2057         movea.l    (a7), a0
001e9c: 7200         moveq      #$0, d1
001e9e: 322e80c0     move.w     -$7f40(a6), d1
001ea2: 7407         moveq      #$7, d2
001ea4: 4c021001     mulu.l     d2, d1
001ea8: d081         add.l      d1, d0
001eaa: 226f0012     movea.l    $12(a7), a1
001eae: 41f00800     lea.l      (a0, d0.l), a0
001eb2: 7005         moveq      #$5, d0
001eb4: 22d8         move.l     (a0)+, (a1)+
001eb6: 51c8fffc     dbra       d0, $1eb4
001eba: 604a         bra.b      $1f06
001ebc: 2f7c00000199000a move.l     #$199, $a(a7)
001ec4: 6040         bra.b      $1f06
001ec6: 7000         moveq      #$0, d0
001ec8: 1004         move.b     d4, d0
001eca: 0c400016     cmpi.w     #$16, d0
001ece: 62ec         bhi.b      $1ebc
001ed0: 303b0206     move.w     $1ed8(pc, d0.w), d0
001ed4: 4efb0002     jmp        $1ed8(pc, d0.w)
001ed8: fe76fe9afec6 fsugt.b    -$3a(a6, a7.l)
001ede: fef8ffe4ffe4 fbf.l      $ffe51ec4
001ee4: ff24         fsave      -(a4)
001ee6: ffe4         dc.w       $ffe4
001ee8: ffe4         dc.w       $ffe4
001eea: ffe4         dc.w       $ffe4
001eec: ffe4         dc.w       $ffe4
001eee: ffe4         dc.w       $ffe4
001ef0: ffe4         dc.w       $ffe4
001ef2: ffe4         dc.w       $ffe4
001ef4: ffe4         dc.w       $ffe4
001ef6: ffe4         dc.w       $ffe4
001ef8: ffe4         dc.w       $ffe4
001efa: ffe4         dc.w       $ffe4
001efc: ffe4         dc.w       $ffe4
001efe: ffe4         dc.w       $ffe4
001f00: ff50         frestore   (a0)
001f02: ff82         dc.w       $ff82
001f04: ffb4         dc.w       $ffb4
001f06: 41ef0004     lea.l      $4(a7), a0
001f0a: 2008         move.l     a0, d0
001f0c: 610004c6     bsr.w      $23d4
001f10: 202f000a     move.l     $a(a7), d0
001f14: 4fef000e     lea.l      $e(a7), a7
001f18: 4ced0314fff0 movem.l    -$10(a5), d2/d4/a0-a1
001f1e: 4e5d         unlk       a5
001f20: 4e75         rts        
001f22: 4e550000     link.w     a5, #$0
001f26: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001f2a: 2441         movea.l    d1, a2
001f2c: 4fefffe4     lea.l      -$1c(a7), a7
001f30: 41d7         lea.l      (a7), a0
001f32: 2208         move.l     a0, d1
001f34: 7000         moveq      #$0, d0
001f36: 102f001f     move.b     $1f(a7), d0
001f3a: 6100fdca     bsr.w      $1d06
001f3e: 2f400018     move.l     d0, $18(a7)
001f42: 0c80000001f3 cmpi.l     #$1f3, d0
001f48: 6616         bne.b      $1f60
001f4a: 4852         pea.l      (a2)
001f4c: 41ef0010     lea.l      $10(a7), a0
001f50: 2208         move.l     a0, d1
001f52: 41ef0008     lea.l      $8(a7), a0
001f56: 2008         move.l     a0, d0
001f58: 206e8420     movea.l    -$7be0(a6), a0
001f5c: 4e90         jsr        (a0)
001f5e: 588f         addq.l     #$4, a7
001f60: 202f0018     move.l     $18(a7), d0
001f64: 4fef001c     lea.l      $1c(a7), a7
001f68: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001f6e: 4e5d         unlk       a5
001f70: 4e75         rts        
001f72: 4e550000     link.w     a5, #$0
001f76: 48e7c080     movem.l    d0-d1/a0, -(a7)
001f7a: 4fefffea     lea.l      -$16(a7), a7
001f7e: 41ef0002     lea.l      $2(a7), a0
001f82: 2208         move.l     a0, d1
001f84: 7000         moveq      #$0, d0
001f86: 102f001d     move.b     $1d(a7), d0
001f8a: 6196         bsr.b      $1f22
001f8c: 2f400012     move.l     d0, $12(a7)
001f90: 0c80000001f3 cmpi.l     #$1f3, d0
001f96: 662c         bne.b      $1fc4
001f98: 41ef0002     lea.l      $2(a7), a0
001f9c: 2208         move.l     a0, d1
001f9e: 202f0016     move.l     $16(a7), d0
001fa2: 206e8404     movea.l    -$7bfc(a6), a0
001fa6: 4e90         jsr        (a0)
001fa8: 1f400001     move.b     d0, $1(a7)
001fac: 102f0001     move.b     $1(a7), d0
001fb0: 4880         ext.w      d0
001fb2: 02400001     andi.w     #$1, d0
001fb6: 0c400001     cmpi.w     #$1, d0
001fba: 6608         bne.b      $1fc4
001fbc: 203c000001a9 move.l     #$1a9, d0
001fc2: 6004         bra.b      $1fc8
001fc4: 202f0012     move.l     $12(a7), d0
001fc8: 4fef0016     lea.l      $16(a7), a7
001fcc: 4ced0100fffc movem.l    -$4(a5), a0
001fd2: 4e5d         unlk       a5
001fd4: 4e75         rts        
001fd6: 4e550000     link.w     a5, #$0
001fda: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001fde: 4feffff2     lea.l      -$e(a7), a7
001fe2: 61000104     bsr.w      $20e8
001fe6: 3f400004     move.w     d0, $4(a7)
001fea: 7008         moveq      #$8, d0
001fec: 2e80         move.l     d0, (a7)
001fee: 41ef0006     lea.l      $6(a7), a0
001ff2: 2208         move.l     a0, d1
001ff4: 41d7         lea.l      (a7), a0
001ff6: 2008         move.l     a0, d0
001ff8: 6100049a     bsr.w      $2494
001ffc: 2f40000a     move.l     d0, $a(a7)
002000: 0c80000001f3 cmpi.l     #$1f3, d0
002006: 6628         bne.b      $2030
002008: 202f0006     move.l     $6(a7), d0
00200c: 6100075c     bsr.w      $276a
002010: 206f0006     movea.l    $6(a7), a0
002014: 226f000e     movea.l    $e(a7), a1
002018: 22a8001c     move.l     $1c(a0), (a1)
00201c: 206f0006     movea.l    $6(a7), a0
002020: 226f0012     movea.l    $12(a7), a1
002024: 32a80020     move.w     $20(a0), (a1)
002028: 41d7         lea.l      (a7), a0
00202a: 2008         move.l     a0, d0
00202c: 610003a6     bsr.w      $23d4
002030: 202f000a     move.l     $a(a7), d0
002034: 4fef000e     lea.l      $e(a7), a7
002038: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00203e: 4e5d         unlk       a5
002040: 4e75         rts        
002042: 4e550000     link.w     a5, #$0
002046: 48e78000     movem.l    d0, -(a7)
00204a: 6040         bra.b      $208c
00204c: 203c000001f3 move.l     #$1f3, d0
002052: 605e         bra.b      $20b2
002054: 203c0000019a move.l     #$19a, d0
00205a: 6056         bra.b      $20b2
00205c: 203c00000194 move.l     #$194, d0
002062: 604e         bra.b      $20b2
002064: 203c00000193 move.l     #$193, d0
00206a: 6046         bra.b      $20b2
00206c: 203c00000196 move.l     #$196, d0
002072: 603e         bra.b      $20b2
002074: 203c00000198 move.l     #$198, d0
00207a: 6036         bra.b      $20b2
00207c: 203c000001a0 move.l     #$1a0, d0
002082: 602e         bra.b      $20b2
002084: 203c000001f2 move.l     #$1f2, d0
00208a: 6026         bra.b      $20b2
00208c: 2017         move.l     (a7), d0
00208e: 0c8000000009 cmpi.l     #$9, d0
002094: 62ee         bhi.b      $2084
002096: 303b0206     move.w     $209e(pc, d0.w), d0
00209a: 4efb0002     jmp        $209e(pc, d0.w)
00209e: ffae         dc.w       $ffae
0020a0: ffe6         dc.w       $ffe6
0020a2: ffce         dc.w       $ffce
0020a4: ffce         dc.w       $ffce
0020a6: ffb6         dc.w       $ffb6
0020a8: ffd6         dc.w       $ffd6
0020aa: ffe6         dc.w       $ffe6
0020ac: ffc6         dc.w       $ffc6
0020ae: ffbe         dc.w       $ffbe
0020b0: ffde         dc.w       $ffde
0020b2: 4e5d         unlk       a5
0020b4: 4e75         rts        
0020b6: 4e550000     link.w     a5, #$0
0020ba: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
0020be: 2440         movea.l    d0, a2
0020c0: 2641         movea.l    d1, a3
0020c2: 200b         move.l     a3, d0
0020c4: 08000000     btst.b     #$0, d0
0020c8: 6612         bne.b      $20dc
0020ca: 611c         bsr.b      $20e8
0020cc: b06a0004     cmp.w      $4(a2), d0
0020d0: 660a         bne.b      $20dc
0020d2: 2013         move.l     (a3), d0
0020d4: b092         cmp.l      (a2), d0
0020d6: 6604         bne.b      $20dc
0020d8: 7001         moveq      #$1, d0
0020da: 6002         bra.b      $20de
0020dc: 7000         moveq      #$0, d0
0020de: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0020e4: 4e5d         unlk       a5
0020e6: 4e75         rts        
0020e8: 4e550000     link.w     a5, #$0
0020ec: 48e78080     movem.l    d0/a0, -(a7)
0020f0: 206e807c     movea.l    -$7f84(a6), a0
0020f4: 30280004     move.w     $4(a0), d0
0020f8: 4ced0100fffc movem.l    -$4(a5), a0
0020fe: 4e5d         unlk       a5
002100: 4e75         rts        
002102: 4e550000     link.w     a5, #$0
002106: 48e78000     movem.l    d0, -(a7)
00210a: 1d7c000189b2 move.b     #$1, -$764e(a6)
002110: 203c000001f3 move.l     #$1f3, d0
002116: 4e5d         unlk       a5
002118: 4e75         rts        
00211a: 4e550000     link.w     a5, #$0
00211e: 48e78000     movem.l    d0, -(a7)
002122: 422e89b2     clr.b      -$764e(a6)
002126: 203c000001f3 move.l     #$1f3, d0
00212c: 4e5d         unlk       a5
00212e: 4e75         rts        
002130: 4e550000     link.w     a5, #$0
002134: 48e7c080     movem.l    d0-d1/a0, -(a7)
002138: 4fefffc8     lea.l      -$38(a7), a7
00213c: 610007d6     bsr.w      $2914
002140: 486f0004     pea.l      $4(a7)
002144: 41ee89aa     lea.l      -$7656(a6), a0
002148: 2208         move.l     a0, d1
00214a: 41ee805e     lea.l      -$7fa2(a6), a0
00214e: 2008         move.l     a0, d0
002150: 61000800     bsr.w      $2952
002154: 588f         addq.l     #$4, a7
002156: 2d6f000c89ae move.l     $c(a7), -$7652(a6)
00215c: 2d6f00108084 move.l     $10(a7), -$7f7c(a6)
002162: 2d6f00148088 move.l     $14(a7), -$7f78(a6)
002168: 41ee8080     lea.l      -$7f80(a6), a0
00216c: 2208         move.l     a0, d1
00216e: 202e8084     move.l     -$7f7c(a6), d0
002172: 61001436     bsr.w      $35aa
002176: 4a80         tst.l      d0
002178: 660c         bne.b      $2186
00217a: 61003c74     bsr.w      $5df0
00217e: 720a         moveq      #$a, d1
002180: e3a8         lsl.l      d1, d0
002182: 7278         moveq      #$78, d1
002184: 603c         bra.b      $21c2
002186: 41ee807c     lea.l      -$7f84(a6), a0
00218a: 2208         move.l     a0, d1
00218c: 202e8088     move.l     -$7f78(a6), d0
002190: 61001418     bsr.w      $35aa
002194: 4a80         tst.l      d0
002196: 660c         bne.b      $21a4
002198: 61003c56     bsr.w      $5df0
00219c: 720a         moveq      #$a, d1
00219e: e3a8         lsl.l      d1, d0
0021a0: 7279         moveq      #$79, d1
0021a2: 601e         bra.b      $21c2
0021a4: 41ee808c     lea.l      -$7f74(a6), a0
0021a8: 2208         move.l     a0, d1
0021aa: 41ef0018     lea.l      $18(a7), a0
0021ae: 2008         move.l     a0, d0
0021b0: 61001312     bsr.w      $34c4
0021b4: 4a80         tst.l      d0
0021b6: 6628         bne.b      $21e0
0021b8: 61003c36     bsr.w      $5df0
0021bc: 720a         moveq      #$a, d1
0021be: e3a8         lsl.l      d1, d0
0021c0: 727a         moveq      #$7a, d1
0021c2: d081         add.l      d1, d0
0021c4: 2f00         move.l     d0, -(a7)
0021c6: 720e         moveq      #$e, d1
0021c8: 203c00000098 move.l     #$98, d0
0021ce: 610021da     bsr.w      $43aa
0021d2: 588f         addq.l     #$4, a7
0021d4: 610021fa     bsr.w      $43d0
0021d8: 203c000001f2 move.l     #$1f2, d0
0021de: 6038         bra.b      $2218
0021e0: 7001         moveq      #$1, d0
0021e2: 6100009c     bsr.w      $2280
0021e6: 4297         clr.l      (a7)
0021e8: 6016         bra.b      $2200
0021ea: 202e8080     move.l     -$7f80(a6), d0
0021ee: 4c7c080100000004 divs.l     #$4, d0
0021f6: 4a81         tst.l      d1
0021f8: 670c         beq.b      $2206
0021fa: 5297         addq.l     #$1, (a7)
0021fc: 52ae8080     addq.l     #$1, -$7f80(a6)
002200: 7004         moveq      #$4, d0
002202: b097         cmp.l      (a7), d0
002204: 6ee4         bgt.b      $21ea
002206: 4aaf0008     tst.l      $8(a7)
00220a: 6604         bne.b      $2210
00220c: 6100fef4     bsr.w      $2102
002210: 202f0008     move.l     $8(a7), d0
002214: 6100fe2c     bsr.w      $2042
002218: 4fef0038     lea.l      $38(a7), a7
00221c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002222: 4e5d         unlk       a5
002224: 4e75         rts        
002226: 4e550000     link.w     a5, #$0
00222a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00222e: 7001         moveq      #$1, d0
002230: 614e         bsr.b      $2280
002232: 222e8080     move.l     -$7f80(a6), d1
002236: 202e8084     move.l     -$7f7c(a6), d0
00223a: 61001360     bsr.w      $359c
00223e: 222e807c     move.l     -$7f84(a6), d1
002242: 202e8088     move.l     -$7f78(a6), d0
002246: 61001354     bsr.w      $359c
00224a: 202e808c     move.l     -$7f74(a6), d0
00224e: 61001250     bsr.w      $34a0
002252: 2f2e89ae     move.l     -$7652(a6), -(a7)
002256: 222e89aa     move.l     -$7656(a6), d1
00225a: 41ee805e     lea.l      -$7fa2(a6), a0
00225e: 2008         move.l     a0, d0
002260: 610007ee     bsr.w      $2a50
002264: 588f         addq.l     #$4, a7
002266: 610007ce     bsr.w      $2a36
00226a: 70ff         moveq      #$ff, d0
00226c: 2d4089aa     move.l     d0, -$7656(a6)
002270: 70ff         moveq      #$ff, d0
002272: 2d4089ae     move.l     d0, -$7652(a6)
002276: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00227c: 4e5d         unlk       a5
00227e: 4e75         rts        
002280: 4e550000     link.w     a5, #$0
002284: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002288: 5d8f         subq.l     #$6, a7
00228a: 1f7c00010005 move.b     #$1, $5(a7)
002290: 7800         moveq      #$0, d4
002292: 95ca         suba.l     a2, a2
002294: 202e808c     move.l     -$7f74(a6), d0
002298: 6100127c     bsr.w      $3516
00229c: 700a         moveq      #$a, d0
00229e: d0ae807c     add.l      -$7f84(a6), d0
0022a2: 2440         movea.l    d0, a2
0022a4: 6034         bra.b      $22da
0022a6: 4857         pea.l      (a7)
0022a8: 222e89ae     move.l     -$7652(a6), d1
0022ac: 7012         moveq      #$12, d0
0022ae: d08a         add.l      a2, d0
0022b0: 61000892     bsr.w      $2b44
0022b4: 588f         addq.l     #$4, a7
0022b6: 4a97         tst.l      (a7)
0022b8: 671a         beq.b      $22d4
0022ba: 422f0005     clr.b      $5(a7)
0022be: 4aaf0006     tst.l      $6(a7)
0022c2: 6710         beq.b      $22d4
0022c4: 42a7         clr.l      -(a7)
0022c6: 222e89ae     move.l     -$7652(a6), d1
0022ca: 7012         moveq      #$12, d0
0022cc: d08a         add.l      a2, d0
0022ce: 610008c8     bsr.w      $2b98
0022d2: 588f         addq.l     #$4, a7
0022d4: d5fc0000001a adda.l     #$1a, a2
0022da: 206e807c     movea.l    -$7f84(a6), a0
0022de: 2004         move.l     d4, d0
0022e0: 5284         addq.l     #$1, d4
0022e2: b0a80006     cmp.l      $6(a0), d0
0022e6: 6dbe         blt.b      $22a6
0022e8: 202e808c     move.l     -$7f74(a6), d0
0022ec: 61001258     bsr.w      $3546
0022f0: 102f0005     move.b     $5(a7), d0
0022f4: 5c8f         addq.l     #$6, a7
0022f6: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0022fc: 4e5d         unlk       a5
0022fe: 4e75         rts        
002300: 4e550000     link.w     a5, #$0
002304: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
002308: 2440         movea.l    d0, a2
00230a: 97cb         suba.l     a3, a3
00230c: 7800         moveq      #$0, d4
00230e: 4a2e89b2     tst.b      -$764e(a6)
002312: 660a         bne.b      $231e
002314: 203c00000195 move.l     #$195, d0
00231a: 600000ae     bra.w      $23ca
00231e: 202e808c     move.l     -$7f74(a6), d0
002322: 610011f2     bsr.w      $3516
002326: 700a         moveq      #$a, d0
002328: d0ae807c     add.l      -$7f84(a6), d0
00232c: 2640         movea.l    d0, a3
00232e: 60000076     bra.w      $23a6
002332: 302b000c     move.w     $c(a3), d0
002336: b06a0004     cmp.w      $4(a2), d0
00233a: 6664         bne.b      $23a0
00233c: 203cffffff00 move.l     #$ffffff00, d0
002342: c092         and.l      (a2), d0
002344: 223cffffff00 move.l     #$ffffff00, d1
00234a: c2ab0008     and.l      $8(a3), d1
00234e: b081         cmp.l      d1, d0
002350: 664e         bne.b      $23a0
002352: 202b000e     move.l     $e(a3), d0
002356: d0ae8080     add.l      -$7f80(a6), d0
00235a: 206f0004     movea.l    $4(a7), a0
00235e: 2080         move.l     d0, (a0)
002360: 222e89ae     move.l     -$7652(a6), d1
002364: 7012         moveq      #$12, d0
002366: d08b         add.l      a3, d0
002368: 61000754     bsr.w      $2abe
00236c: 4a00         tst.b      d0
00236e: 6620         bne.b      $2390
002370: 61003a7e     bsr.w      $5df0
002374: 720a         moveq      #$a, d1
002376: e3a8         lsl.l      d1, d0
002378: 727b         moveq      #$7b, d1
00237a: d081         add.l      d1, d0
00237c: 2f00         move.l     d0, -(a7)
00237e: 720e         moveq      #$e, d1
002380: 203c00000098 move.l     #$98, d0
002386: 61002022     bsr.w      $43aa
00238a: 588f         addq.l     #$4, a7
00238c: 61002042     bsr.w      $43d0
002390: 202e808c     move.l     -$7f74(a6), d0
002394: 610011b0     bsr.w      $3546
002398: 203c000001f3 move.l     #$1f3, d0
00239e: 602a         bra.b      $23ca
0023a0: d7fc0000001a adda.l     #$1a, a3
0023a6: 206e807c     movea.l    -$7f84(a6), a0
0023aa: 2004         move.l     d4, d0
0023ac: 5284         addq.l     #$1, d4
0023ae: b0a80006     cmp.l      $6(a0), d0
0023b2: 6d00ff7e     blt.w      $2332
0023b6: 202e808c     move.l     -$7f74(a6), d0
0023ba: 6100118a     bsr.w      $3546
0023be: 206f0004     movea.l    $4(a7), a0
0023c2: 4290         clr.l      (a0)
0023c4: 203c00000191 move.l     #$191, d0
0023ca: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
0023d0: 4e5d         unlk       a5
0023d2: 4e75         rts        
0023d4: 4e550000     link.w     a5, #$0
0023d8: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0023dc: 2440         movea.l    d0, a2
0023de: 97cb         suba.l     a3, a3
0023e0: 7800         moveq      #$0, d4
0023e2: 202e808c     move.l     -$7f74(a6), d0
0023e6: 6100112e     bsr.w      $3516
0023ea: 700a         moveq      #$a, d0
0023ec: d0ae807c     add.l      -$7f84(a6), d0
0023f0: 2640         movea.l    d0, a3
0023f2: 60000078     bra.w      $246c
0023f6: 302b000c     move.w     $c(a3), d0
0023fa: b06a0004     cmp.w      $4(a2), d0
0023fe: 6666         bne.b      $2466
002400: 203cffffff00 move.l     #$ffffff00, d0
002406: c092         and.l      (a2), d0
002408: 223cffffff00 move.l     #$ffffff00, d1
00240e: c2ab0008     and.l      $8(a3), d1
002412: b081         cmp.l      d1, d0
002414: 6650         bne.b      $2466
002416: 222e89ae     move.l     -$7652(a6), d1
00241a: 7012         moveq      #$12, d0
00241c: d08b         add.l      a3, d0
00241e: 610006e4     bsr.w      $2b04
002422: 4a00         tst.b      d0
002424: 6630         bne.b      $2456
002426: 610039c8     bsr.w      $5df0
00242a: 720a         moveq      #$a, d1
00242c: e3a8         lsl.l      d1, d0
00242e: 727c         moveq      #$7c, d1
002430: d081         add.l      d1, d0
002432: 2f00         move.l     d0, -(a7)
002434: 720e         moveq      #$e, d1
002436: 203c00000098 move.l     #$98, d0
00243c: 61001f6c     bsr.w      $43aa
002440: 588f         addq.l     #$4, a7
002442: 61001f8c     bsr.w      $43d0
002446: 202e808c     move.l     -$7f74(a6), d0
00244a: 610010fa     bsr.w      $3546
00244e: 203c00000192 move.l     #$192, d0
002454: 6034         bra.b      $248a
002456: 202e808c     move.l     -$7f74(a6), d0
00245a: 610010ea     bsr.w      $3546
00245e: 203c000001f3 move.l     #$1f3, d0
002464: 6024         bra.b      $248a
002466: d7fc0000001a adda.l     #$1a, a3
00246c: 206e807c     movea.l    -$7f84(a6), a0
002470: 2004         move.l     d4, d0
002472: 5284         addq.l     #$1, d4
002474: b0a80006     cmp.l      $6(a0), d0
002478: 6d00ff7c     blt.w      $23f6
00247c: 202e808c     move.l     -$7f74(a6), d0
002480: 610010c4     bsr.w      $3546
002484: 203c00000191 move.l     #$191, d0
00248a: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
002490: 4e5d         unlk       a5
002492: 4e75         rts        
002494: 4e550000     link.w     a5, #$0
002498: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
00249c: 2440         movea.l    d0, a2
00249e: 4fefff66     lea.l      -$9a(a7), a7
0024a2: 4297         clr.l      (a7)
0024a4: 4a2e89b2     tst.b      -$764e(a6)
0024a8: 660a         bne.b      $24b4
0024aa: 203c00000195 move.l     #$195, d0
0024b0: 600000be     bra.w      $2570
0024b4: 222f009e     move.l     $9e(a7), d1
0024b8: 200a         move.l     a2, d0
0024ba: 6100fe44     bsr.w      $2300
0024be: 2f400004     move.l     d0, $4(a7)
0024c2: 202f0004     move.l     $4(a7), d0
0024c6: 0c8000000195 cmpi.l     #$195, d0
0024cc: 6700009e     beq.w      $256c
0024d0: 0c80000001f3 cmpi.l     #$1f3, d0
0024d6: 67000094     beq.w      $256c
0024da: 7006         moveq      #$6, d0
0024dc: 2f40003c     move.l     d0, $3c(a7)
0024e0: 2f6e89ae0040 move.l     -$7652(a6), $40(a7)
0024e6: 3f7c00010044 move.w     #$1, $44(a7)
0024ec: 3f7c00010046 move.w     #$1, $46(a7)
0024f2: 2f520048     move.l     (a2), $48(a7)
0024f6: 3f6a0004004c move.w     $4(a2), $4c(a7)
0024fc: 486f0008     pea.l      $8(a7)
002500: 41ef0040     lea.l      $40(a7), a0
002504: 2208         move.l     a0, d1
002506: 202e89aa     move.l     -$7656(a6), d0
00250a: 610003c2     bsr.w      $28ce
00250e: 588f         addq.l     #$4, a7
002510: 41ef000e     lea.l      $e(a7), a0
002514: 2e88         move.l     a0, (a7)
002516: 2057         movea.l    (a7), a0
002518: 302a0004     move.w     $4(a2), d0
00251c: b0680004     cmp.w      $4(a0), d0
002520: 6608         bne.b      $252a
002522: 2057         movea.l    (a7), a0
002524: 2012         move.l     (a2), d0
002526: b090         cmp.l      (a0), d0
002528: 6728         beq.b      $2552
00252a: 610038c4     bsr.w      $5df0
00252e: 720a         moveq      #$a, d1
002530: e3a8         lsl.l      d1, d0
002532: 727d         moveq      #$7d, d1
002534: d081         add.l      d1, d0
002536: 2f00         move.l     d0, -(a7)
002538: 720e         moveq      #$e, d1
00253a: 203c00000098 move.l     #$98, d0
002540: 61001e68     bsr.w      $43aa
002544: 588f         addq.l     #$4, a7
002546: 61001e88     bsr.w      $43d0
00254a: 203c000001f2 move.l     #$1f2, d0
002550: 601e         bra.b      $2570
002552: 202e8080     move.l     -$7f80(a6), d0
002556: d0af0014     add.l      $14(a7), d0
00255a: 206f009e     movea.l    $9e(a7), a0
00255e: 2080         move.l     d0, (a0)
002560: 202f0018     move.l     $18(a7), d0
002564: 6100fadc     bsr.w      $2042
002568: 2f400004     move.l     d0, $4(a7)
00256c: 202f0004     move.l     $4(a7), d0
002570: 4fef009a     lea.l      $9a(a7), a7
002574: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00257a: 4e5d         unlk       a5
00257c: 4e75         rts        
00257e: 4e550000     link.w     a5, #$0
002582: 48e7c080     movem.l    d0-d1/a0, -(a7)
002586: 4feffff2     lea.l      -$e(a7), a7
00258a: 6100fb5c     bsr.w      $20e8
00258e: 3f400004     move.w     d0, $4(a7)
002592: 7008         moveq      #$8, d0
002594: 2e80         move.l     d0, (a7)
002596: 41ef0006     lea.l      $6(a7), a0
00259a: 2208         move.l     a0, d1
00259c: 41d7         lea.l      (a7), a0
00259e: 2008         move.l     a0, d0
0025a0: 6100fef2     bsr.w      $2494
0025a4: 2f40000a     move.l     d0, $a(a7)
0025a8: 0c80000001f3 cmpi.l     #$1f3, d0
0025ae: 6610         bne.b      $25c0
0025b0: 202f0006     move.l     $6(a7), d0
0025b4: 610001b4     bsr.w      $276a
0025b8: 41d7         lea.l      (a7), a0
0025ba: 2008         move.l     a0, d0
0025bc: 6100fe16     bsr.w      $23d4
0025c0: 202f000a     move.l     $a(a7), d0
0025c4: 4fef000e     lea.l      $e(a7), a7
0025c8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0025ce: 4e5d         unlk       a5
0025d0: 4e75         rts        
0025d2: 4e550000     link.w     a5, #$0
0025d6: 48e78000     movem.l    d0, -(a7)
0025da: 3d7c0008809a move.w     #$8, -$7f66(a6)
0025e0: 3d7c006c80a6 move.w     #$6c, -$7f5a(a6)
0025e6: 3d7c003480b2 move.w     #$34, -$7f4e(a6)
0025ec: 3d7c003080ac move.w     #$30, -$7f54(a6)
0025f2: 3d7c00068110 move.w     #$6, -$7ef0(a6)
0025f8: 3d7c000480b4 move.w     #$4, -$7f4c(a6)
0025fe: 3d7c001680a2 move.w     #$16, -$7f5e(a6)
002604: 3d7c000680a4 move.w     #$6, -$7f5c(a6)
00260a: 3d7c001c80a0 move.w     #$1c, -$7f60(a6)
002610: 3d7c000880b0 move.w     #$8, -$7f50(a6)
002616: 3d7c0008809e move.w     #$8, -$7f62(a6)
00261c: 3d7c0010809c move.w     #$10, -$7f64(a6)
002622: 3d7c000680a8 move.w     #$6, -$7f58(a6)
002628: 3d7c000880ae move.w     #$8, -$7f52(a6)
00262e: 3d7c000480aa move.w     #$4, -$7f56(a6)
002634: 3d7c000880b8 move.w     #$8, -$7f48(a6)
00263a: 3d7c000680b6 move.w     #$6, -$7f4a(a6)
002640: 3d7c000480ba move.w     #$4, -$7f46(a6)
002646: 3d7c001080fc move.w     #$10, -$7f04(a6)
00264c: 3d7c00048102 move.w     #$4, -$7efe(a6)
002652: 3d7c00048100 move.w     #$4, -$7f00(a6)
002658: 3d7c000880fe move.w     #$8, -$7f02(a6)
00265e: 3d7c002080f6 move.w     #$20, -$7f0a(a6)
002664: 3d7c000880fa move.w     #$8, -$7f06(a6)
00266a: 3d7c001080f8 move.w     #$10, -$7f08(a6)
002670: 3d7c001080f4 move.w     #$10, -$7f0c(a6)
002676: 3d7c002c810a move.w     #$2c, -$7ef6(a6)
00267c: 3d7c0010810e move.w     #$10, -$7ef2(a6)
002682: 3d7c0014810c move.w     #$14, -$7ef4(a6)
002688: 3d7c00048106 move.w     #$4, -$7efa(a6)
00268e: 3d7c00108104 move.w     #$10, -$7efc(a6)
002694: 3d7c00088108 move.w     #$8, -$7ef8(a6)
00269a: 3d7c000c80e0 move.w     #$c, -$7f20(a6)
0026a0: 3d7c000480e4 move.w     #$4, -$7f1c(a6)
0026a6: 3d7c000c80e2 move.w     #$c, -$7f1e(a6)
0026ac: 3d7c002480e6 move.w     #$24, -$7f1a(a6)
0026b2: 3d7c001480ec move.w     #$14, -$7f14(a6)
0026b8: 3d7c000880e8 move.w     #$8, -$7f18(a6)
0026be: 3d7c000880ea move.w     #$8, -$7f16(a6)
0026c4: 3d7c002880d0 move.w     #$28, -$7f30(a6)
0026ca: 3d7c001480ce move.w     #$14, -$7f32(a6)
0026d0: 3d7c00048112 move.w     #$4, -$7eee(a6)
0026d6: 3d7c00188114 move.w     #$18, -$7eec(a6)
0026dc: 3d7c001c80ee move.w     #$1c, -$7f12(a6)
0026e2: 3d7c000c80f0 move.w     #$c, -$7f10(a6)
0026e8: 3d7c000880f2 move.w     #$8, -$7f0e(a6)
0026ee: 3d7c001080d2 move.w     #$10, -$7f2e(a6)
0026f4: 3d7c000480d8 move.w     #$4, -$7f28(a6)
0026fa: 3d7c000480d6 move.w     #$4, -$7f2a(a6)
002700: 3d7c000480d4 move.w     #$4, -$7f2c(a6)
002706: 3d7c001480da move.w     #$14, -$7f26(a6)
00270c: 3d7c000880de move.w     #$8, -$7f22(a6)
002712: 3d7c000480dc move.w     #$4, -$7f24(a6)
002718: 3d7c00cc80be move.w     #$cc, -$7f42(a6)
00271e: 3d7c000480c4 move.w     #$4, -$7f3c(a6)
002724: 3d7c00c080c2 move.w     #$c0, -$7f3e(a6)
00272a: 3d7c001880c0 move.w     #$18, -$7f40(a6)
002730: 3d7c000680bc move.w     #$6, -$7f44(a6)
002736: 3d7c002480c6 move.w     #$24, -$7f3a(a6)
00273c: 3d7c000480ca move.w     #$4, -$7f36(a6)
002742: 3d7c001880c8 move.w     #$18, -$7f38(a6)
002748: 3d7c000880cc move.w     #$8, -$7f34(a6)
00274e: 3d7c00108094 move.w     #$10, -$7f6c(a6)
002754: 3d7c00088096 move.w     #$8, -$7f6a(a6)
00275a: 3d7c000c8092 move.w     #$c, -$7f6e(a6)
002760: 3d7c001c8098 move.w     #$1c, -$7f68(a6)
002766: 4e5d         unlk       a5
002768: 4e75         rts        
00276a: 4e550000     link.w     a5, #$0
00276e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002772: 4fefffea     lea.l      -$16(a7), a7
002776: 42af0012     clr.l      $12(a7)
00277a: 42af000e     clr.l      $e(a7)
00277e: 206f0016     movea.l    $16(a7), a0
002782: 3d68001a89b4 move.w     $1a(a0), -$764c(a6)
002788: 302e89b4     move.w     -$764c(a6), d0
00278c: b06e89b6     cmp.w      -$764a(a6), d0
002790: 67000098     beq.w      $282a
002794: 3d6e89b489b6 move.w     -$764c(a6), -$764a(a6)
00279a: 6100fe36     bsr.w      $25d2
00279e: 0c6e001289b4 cmpi.w     #$12, -$764c(a6)
0027a4: 65000084     bcs.w      $282a
0027a8: 7028         moveq      #$28, d0
0027aa: d0af0016     add.l      $16(a7), d0
0027ae: 2f40000e     move.l     d0, $e(a7)
0027b2: 206f000e     movea.l    $e(a7), a0
0027b6: 4a680002     tst.w      $2(a0)
0027ba: 676e         beq.b      $282a
0027bc: 206f000e     movea.l    $e(a7), a0
0027c0: 7000         moveq      #$0, d0
0027c2: 3010         move.w     (a0), d0
0027c4: d0af0016     add.l      $16(a7), d0
0027c8: 2f400012     move.l     d0, $12(a7)
0027cc: 42af000a     clr.l      $a(a7)
0027d0: 6048         bra.b      $281a
0027d2: 206f0012     movea.l    $12(a7), a0
0027d6: 0c500042     cmpi.w     #$42, (a0)
0027da: 6230         bhi.b      $280c
0027dc: 206f0012     movea.l    $12(a7), a0
0027e0: 7000         moveq      #$0, d0
0027e2: 3010         move.w     (a0), d0
0027e4: 41ee8090     lea.l      -$7f70(a6), a0
0027e8: 226f0012     movea.l    $12(a7), a1
0027ec: 32290002     move.w     $2(a1), d1
0027f0: b2700a00     cmp.w      (a0, d0.l * 2), d1
0027f4: 6716         beq.b      $280c
0027f6: 206f0012     movea.l    $12(a7), a0
0027fa: 7000         moveq      #$0, d0
0027fc: 3010         move.w     (a0), d0
0027fe: 41ee8090     lea.l      -$7f70(a6), a0
002802: 226f0012     movea.l    $12(a7), a1
002806: 31a900020a00 move.w     $2(a1), (a0, d0.l * 2)
00280c: 202f0012     move.l     $12(a7), d0
002810: 5880         addq.l     #$4, d0
002812: 2f400012     move.l     d0, $12(a7)
002816: 52af000a     addq.l     #$1, $a(a7)
00281a: 206f000e     movea.l    $e(a7), a0
00281e: 7000         moveq      #$0, d0
002820: 30280002     move.w     $2(a0), d0
002824: b0af000a     cmp.l      $a(a7), d0
002828: 6ea8         bgt.b      $27d2
00282a: 4fef0016     lea.l      $16(a7), a7
00282e: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
002834: 4e5d         unlk       a5
002836: 4e75         rts        
002838: 4e550000     link.w     a5, #$0
00283c: 48e78000     movem.l    d0, -(a7)
002840: 302e89b4     move.w     -$764c(a6), d0
002844: 4e5d         unlk       a5
002846: 4e75         rts        
002848: 4e550000     link.w     a5, #$0
00284c: 48e7c000     movem.l    d0-d1, -(a7)
002850: 598f         subq.l     #$4, a7
002852: 4878005e     pea.l      $5e.w
002856: 222f0008     move.l     $8(a7), d1
00285a: 202e89b8     move.l     -$7648(a6), d0
00285e: 61002d2a     bsr.w      $558a
002862: 588f         addq.l     #$4, a7
002864: 2e80         move.l     d0, (a7)
002866: 705e         moveq      #$5e, d0
002868: b097         cmp.l      (a7), d0
00286a: 6716         beq.b      $2882
00286c: 487800e6     pea.l      $e6.w
002870: 7212         moveq      #$12, d1
002872: 203c00000098 move.l     #$98, d0
002878: 61001b30     bsr.w      $43aa
00287c: 588f         addq.l     #$4, a7
00287e: 61001b50     bsr.w      $43d0
002882: 588f         addq.l     #$4, a7
002884: 4ced0002fffc movem.l    -$4(a5), d1
00288a: 4e5d         unlk       a5
00288c: 4e75         rts        
00288e: 4e550000     link.w     a5, #$0
002892: 48e7c000     movem.l    d0-d1, -(a7)
002896: 598f         subq.l     #$4, a7
002898: 48780034     pea.l      $34.w
00289c: 222f000c     move.l     $c(a7), d1
0028a0: 202f0008     move.l     $8(a7), d0
0028a4: 61002cdc     bsr.w      $5582
0028a8: 588f         addq.l     #$4, a7
0028aa: 2e80         move.l     d0, (a7)
0028ac: 7034         moveq      #$34, d0
0028ae: b097         cmp.l      (a7), d0
0028b0: 6716         beq.b      $28c8
0028b2: 487800e7     pea.l      $e7.w
0028b6: 7212         moveq      #$12, d1
0028b8: 203c00000098 move.l     #$98, d0
0028be: 61001aea     bsr.w      $43aa
0028c2: 588f         addq.l     #$4, a7
0028c4: 61001b0a     bsr.w      $43d0
0028c8: 588f         addq.l     #$4, a7
0028ca: 4e5d         unlk       a5
0028cc: 4e75         rts        
0028ce: 4e550000     link.w     a5, #$0
0028d2: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0028d6: 202f0004     move.l     $4(a7), d0
0028da: 6100ff6c     bsr.w      $2848
0028de: 222f0018     move.l     $18(a7), d1
0028e2: 2017         move.l     (a7), d0
0028e4: 61a8         bsr.b      $288e
0028e6: 206f0004     movea.l    $4(a7), a0
0028ea: 226f0018     movea.l    $18(a7), a1
0028ee: 2011         move.l     (a1), d0
0028f0: b090         cmp.l      (a0), d0
0028f2: 6716         beq.b      $290a
0028f4: 487800e8     pea.l      $e8.w
0028f8: 7212         moveq      #$12, d1
0028fa: 203c00000098 move.l     #$98, d0
002900: 61001aa8     bsr.w      $43aa
002904: 588f         addq.l     #$4, a7
002906: 61001ac8     bsr.w      $43d0
00290a: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002910: 4e5d         unlk       a5
002912: 4e75         rts        
002914: 4e550000     link.w     a5, #$0
002918: 48e7c080     movem.l    d0-d1/a0, -(a7)
00291c: 7202         moveq      #$2, d1
00291e: 41fa017a     lea.l      $2a9a(pc), a0
002922: 2008         move.l     a0, d0
002924: 61001c0c     bsr.w      $4532
002928: 2d4089b8     move.l     d0, -$7648(a6)
00292c: 72ff         moveq      #$ff, d1
00292e: b280         cmp.l      d0, d1
002930: 6616         bne.b      $2948
002932: 487800e9     pea.l      $e9.w
002936: 7212         moveq      #$12, d1
002938: 203c00000098 move.l     #$98, d0
00293e: 61001a6a     bsr.w      $43aa
002942: 588f         addq.l     #$4, a7
002944: 61001a8a     bsr.w      $43d0
002948: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00294e: 4e5d         unlk       a5
002950: 4e75         rts        
002952: 4e550000     link.w     a5, #$0
002956: 48e7c080     movem.l    d0-d1/a0, -(a7)
00295a: 4fefff9e     lea.l      -$62(a7), a7
00295e: 41fa0148     lea.l      $2aa8(pc), a0
002962: 2208         move.l     a0, d1
002964: 202f0062     move.l     $62(a7), d0
002968: 61002dc4     bsr.w      $572e
00296c: 202f0062     move.l     $62(a7), d0
002970: 61002c9c     bsr.w      $560e
002974: 48780400     pea.l      $400.w
002978: 48780003     pea.l      $3.w
00297c: 7222         moveq      #$22, d1
00297e: 202f006a     move.l     $6a(a7), d0
002982: 61001d52     bsr.w      $46d6
002986: 508f         addq.l     #$8, a7
002988: 206f0066     movea.l    $66(a7), a0
00298c: 2080         move.l     d0, (a0)
00298e: 72ff         moveq      #$ff, d1
002990: b280         cmp.l      d0, d1
002992: 6616         bne.b      $29aa
002994: 487800ea     pea.l      $ea.w
002998: 7212         moveq      #$12, d1
00299a: 203c00000098 move.l     #$98, d0
0029a0: 61001a08     bsr.w      $43aa
0029a4: 588f         addq.l     #$4, a7
0029a6: 61001a28     bsr.w      $43d0
0029aa: 7004         moveq      #$4, d0
0029ac: 2f400004     move.l     d0, $4(a7)
0029b0: 222f0062     move.l     $62(a7), d1
0029b4: 41ef0008     lea.l      $8(a7), a0
0029b8: 2008         move.l     a0, d0
0029ba: 61002d72     bsr.w      $572e
0029be: 41ef0004     lea.l      $4(a7), a0
0029c2: 2008         move.l     a0, d0
0029c4: 6100fe82     bsr.w      $2848
0029c8: 6022         bra.b      $29ec
0029ca: 70ff         moveq      #$ff, d0
0029cc: b097         cmp.l      (a7), d0
0029ce: 6616         bne.b      $29e6
0029d0: 487800ed     pea.l      $ed.w
0029d4: 7212         moveq      #$12, d1
0029d6: 203c00000098 move.l     #$98, d0
0029dc: 610019cc     bsr.w      $43aa
0029e0: 588f         addq.l     #$4, a7
0029e2: 610019ec     bsr.w      $43d0
0029e6: 7001         moveq      #$1, d0
0029e8: 61003048     bsr.w      $5a32
0029ec: 48780034     pea.l      $34.w
0029f0: 222f007a     move.l     $7a(a7), d1
0029f4: 206f006a     movea.l    $6a(a7), a0
0029f8: 2010         move.l     (a0), d0
0029fa: 61002b86     bsr.w      $5582
0029fe: 588f         addq.l     #$4, a7
002a00: 2e80         move.l     d0, (a7)
002a02: 7234         moveq      #$34, d1
002a04: b280         cmp.l      d0, d1
002a06: 66c2         bne.b      $29ca
002a08: 206f0076     movea.l    $76(a7), a0
002a0c: 7004         moveq      #$4, d0
002a0e: b090         cmp.l      (a0), d0
002a10: 6716         beq.b      $2a28
002a12: 487800ee     pea.l      $ee.w
002a16: 7212         moveq      #$12, d1
002a18: 203c00000098 move.l     #$98, d0
002a1e: 6100198a     bsr.w      $43aa
002a22: 588f         addq.l     #$4, a7
002a24: 610019aa     bsr.w      $43d0
002a28: 4fef0062     lea.l      $62(a7), a7
002a2c: 4ced0100fffc movem.l    -$4(a5), a0
002a32: 4e5d         unlk       a5
002a34: 4e75         rts        
002a36: 4e550000     link.w     a5, #$0
002a3a: 48e78000     movem.l    d0, -(a7)
002a3e: 202e89b8     move.l     -$7648(a6), d0
002a42: 61002b5a     bsr.w      $559e
002a46: 70ff         moveq      #$ff, d0
002a48: 2d4089b8     move.l     d0, -$7648(a6)
002a4c: 4e5d         unlk       a5
002a4e: 4e75         rts        
002a50: 4e550000     link.w     a5, #$0
002a54: 48e7c080     movem.l    d0-d1/a0, -(a7)
002a58: 4fefff6e     lea.l      -$92(a7), a7
002a5c: 700a         moveq      #$a, d0
002a5e: 2f400034     move.l     d0, $34(a7)
002a62: 2f6f00a60038 move.l     $a6(a7), $38(a7)
002a68: 41ef0034     lea.l      $34(a7), a0
002a6c: 2008         move.l     a0, d0
002a6e: 6100fdd8     bsr.w      $2848
002a72: 41d7         lea.l      (a7), a0
002a74: 2208         move.l     a0, d1
002a76: 202f0096     move.l     $96(a7), d0
002a7a: 6100fe12     bsr.w      $288e
002a7e: 700a         moveq      #$a, d0
002a80: b097         cmp.l      (a7), d0
002a82: 66ee         bne.b      $2a72
002a84: 202f0096     move.l     $96(a7), d0
002a88: 61002b14     bsr.w      $559e
002a8c: 4fef0092     lea.l      $92(a7), a7
002a90: 4ced0100fffc movem.l    -$4(a5), a0
002a96: 4e5d         unlk       a5
002a98: 4e75         rts        
002a9a: 2f706970652f7062705f move.l     $652f7062(a0, invalid.w), $705f(a7)
002aa4: 7265         moveq      #$65, d1
002aa6: 7100         .dc.w      $7100
002aa8: 2f706970652f7062705f move.l     $652f7062(a0, invalid.w), $705f(a7)
002ab2: 7273         moveq      #$73, d1
002ab4: 705f         moveq      #$5f, d0
002ab6: 5858         addq.w     #$4, (a0)+
002ab8: 5858         addq.w     #$4, (a0)+
002aba: 5858         addq.w     #$4, (a0)+
002abc: 00004e55     ori.b      #$55, d0
002ac0: 000048e7     ori.b      #$e7, d0
002ac4: c000         and.b      d0, d0
002ac6: 598f         subq.l     #$4, a7
002ac8: 4857         pea.l      (a7)
002aca: 222f000c     move.l     $c(a7), d1
002ace: 202f0008     move.l     $8(a7), d0
002ad2: 61000070     bsr.w      $2b44
002ad6: 588f         addq.l     #$4, a7
002ad8: 4a00         tst.b      d0
002ada: 670c         beq.b      $2ae8
002adc: 700f         moveq      #$f, d0
002ade: b097         cmp.l      (a7), d0
002ae0: 6e0a         bgt.b      $2aec
002ae2: 7002         moveq      #$2, d0
002ae4: 2d408116     move.l     d0, -$7eea(a6)
002ae8: 7000         moveq      #$0, d0
002aea: 6012         bra.b      $2afe
002aec: 5297         addq.l     #$1, (a7)
002aee: 2f17         move.l     (a7), -(a7)
002af0: 222f000c     move.l     $c(a7), d1
002af4: 202f0008     move.l     $8(a7), d0
002af8: 6100009e     bsr.w      $2b98
002afc: 588f         addq.l     #$4, a7
002afe: 588f         addq.l     #$4, a7
002b00: 4e5d         unlk       a5
002b02: 4e75         rts        
002b04: 4e550000     link.w     a5, #$0
002b08: 48e7c000     movem.l    d0-d1, -(a7)
002b0c: 598f         subq.l     #$4, a7
002b0e: 4857         pea.l      (a7)
002b10: 222f000c     move.l     $c(a7), d1
002b14: 202f0008     move.l     $8(a7), d0
002b18: 612a         bsr.b      $2b44
002b1a: 588f         addq.l     #$4, a7
002b1c: 4a00         tst.b      d0
002b1e: 670a         beq.b      $2b2a
002b20: 4a97         tst.l      (a7)
002b22: 660a         bne.b      $2b2e
002b24: 7002         moveq      #$2, d0
002b26: 2d408116     move.l     d0, -$7eea(a6)
002b2a: 7000         moveq      #$0, d0
002b2c: 6010         bra.b      $2b3e
002b2e: 5397         subq.l     #$1, (a7)
002b30: 2f17         move.l     (a7), -(a7)
002b32: 222f000c     move.l     $c(a7), d1
002b36: 202f0008     move.l     $8(a7), d0
002b3a: 615c         bsr.b      $2b98
002b3c: 588f         addq.l     #$4, a7
002b3e: 588f         addq.l     #$4, a7
002b40: 4e5d         unlk       a5
002b42: 4e75         rts        
002b44: 4e550000     link.w     a5, #$0
002b48: 48e7c080     movem.l    d0-d1/a0, -(a7)
002b4c: 7010         moveq      #$10, d0
002b4e: b0af0004     cmp.l      $4(a7), d0
002b52: 6c0a         bge.b      $2b5e
002b54: 7002         moveq      #$2, d0
002b56: 2d408116     move.l     d0, -$7eea(a6)
002b5a: 7000         moveq      #$0, d0
002b5c: 6030         bra.b      $2b8e
002b5e: 7008         moveq      #$8, d0
002b60: b0af0004     cmp.l      $4(a7), d0
002b64: 6e0e         bgt.b      $2b74
002b66: 202f0004     move.l     $4(a7), d0
002b6a: 5180         subq.l     #$8, d0
002b6c: e588         lsl.l      #$2, d0
002b6e: 2057         movea.l    (a7), a0
002b70: 2210         move.l     (a0), d1
002b72: 600c         bra.b      $2b80
002b74: 202f0004     move.l     $4(a7), d0
002b78: e588         lsl.l      #$2, d0
002b7a: 2057         movea.l    (a7), a0
002b7c: 22280004     move.l     $4(a0), d1
002b80: e0a9         lsr.l      d0, d1
002b82: 700f         moveq      #$f, d0
002b84: c280         and.l      d0, d1
002b86: 206f0014     movea.l    $14(a7), a0
002b8a: 2081         move.l     d1, (a0)
002b8c: 7001         moveq      #$1, d0
002b8e: 4ced0100fffc movem.l    -$4(a5), a0
002b94: 4e5d         unlk       a5
002b96: 4e75         rts        
002b98: 4e550000     link.w     a5, #$0
002b9c: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
002ba0: 7010         moveq      #$10, d0
002ba2: b0af0004     cmp.l      $4(a7), d0
002ba6: 6c04         bge.b      $2bac
002ba8: 7001         moveq      #$1, d0
002baa: 6010         bra.b      $2bbc
002bac: 700f         moveq      #$f, d0
002bae: b0af0020     cmp.l      $20(a7), d0
002bb2: 6d06         blt.b      $2bba
002bb4: 4aaf0020     tst.l      $20(a7)
002bb8: 6c0a         bge.b      $2bc4
002bba: 7002         moveq      #$2, d0
002bbc: 2d408116     move.l     d0, -$7eea(a6)
002bc0: 7000         moveq      #$0, d0
002bc2: 6074         bra.b      $2c38
002bc4: 7008         moveq      #$8, d0
002bc6: b0af0004     cmp.l      $4(a7), d0
002bca: 6e36         bgt.b      $2c02
002bcc: 202f0004     move.l     $4(a7), d0
002bd0: 5180         subq.l     #$8, d0
002bd2: e588         lsl.l      #$2, d0
002bd4: 720f         moveq      #$f, d1
002bd6: e1a9         lsl.l      d0, d1
002bd8: 2801         move.l     d1, d4
002bda: 2004         move.l     d4, d0
002bdc: 4680         not.l      d0
002bde: 2800         move.l     d0, d4
002be0: 2057         movea.l    (a7), a0
002be2: 2010         move.l     (a0), d0
002be4: c084         and.l      d4, d0
002be6: 2a00         move.l     d0, d5
002be8: 202f0004     move.l     $4(a7), d0
002bec: 5180         subq.l     #$8, d0
002bee: e588         lsl.l      #$2, d0
002bf0: 222f0020     move.l     $20(a7), d1
002bf4: e1a9         lsl.l      d0, d1
002bf6: 2c01         move.l     d1, d6
002bf8: 2005         move.l     d5, d0
002bfa: 8086         or.l       d6, d0
002bfc: 2057         movea.l    (a7), a0
002bfe: 2080         move.l     d0, (a0)
002c00: 6034         bra.b      $2c36
002c02: 202f0004     move.l     $4(a7), d0
002c06: e588         lsl.l      #$2, d0
002c08: 720f         moveq      #$f, d1
002c0a: e1a9         lsl.l      d0, d1
002c0c: 2801         move.l     d1, d4
002c0e: 2004         move.l     d4, d0
002c10: 4680         not.l      d0
002c12: 2800         move.l     d0, d4
002c14: 2057         movea.l    (a7), a0
002c16: 20280004     move.l     $4(a0), d0
002c1a: c084         and.l      d4, d0
002c1c: 2a00         move.l     d0, d5
002c1e: 202f0004     move.l     $4(a7), d0
002c22: e588         lsl.l      #$2, d0
002c24: 222f0020     move.l     $20(a7), d1
002c28: e1a9         lsl.l      d0, d1
002c2a: 2c01         move.l     d1, d6
002c2c: 2005         move.l     d5, d0
002c2e: 8086         or.l       d6, d0
002c30: 2057         movea.l    (a7), a0
002c32: 21400004     move.l     d0, $4(a0)
002c36: 7001         moveq      #$1, d0
002c38: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
002c3e: 4e5d         unlk       a5
002c40: 4e75         rts        
002c42: 4e550000     link.w     a5, #$0
002c46: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002c4a: 2440         movea.l    d0, a2
002c4c: 2641         movea.l    d1, a3
002c4e: 70ff         moveq      #$ff, d0
002c50: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002c56: 4e5d         unlk       a5
002c58: 4e75         rts        
002c5a: 4e550000     link.w     a5, #$0
002c5e: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002c62: 2440         movea.l    d0, a2
002c64: 2641         movea.l    d1, a3
002c66: 7001         moveq      #$1, d0
002c68: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002c6e: 4e5d         unlk       a5
002c70: 4e75         rts        
002c72: 4e550000     link.w     a5, #$0
002c76: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002c7a: 2440         movea.l    d0, a2
002c7c: 2641         movea.l    d1, a3
002c7e: 1012         move.b     (a2), d0
002c80: b013         cmp.b      (a3), d0
002c82: 6304         bls.b      $2c88
002c84: 7001         moveq      #$1, d0
002c86: 600c         bra.b      $2c94
002c88: 1012         move.b     (a2), d0
002c8a: b013         cmp.b      (a3), d0
002c8c: 6404         bcc.b      $2c92
002c8e: 70ff         moveq      #$ff, d0
002c90: 6002         bra.b      $2c94
002c92: 7000         moveq      #$0, d0
002c94: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002c9a: 4e5d         unlk       a5
002c9c: 4e75         rts        
002c9e: 4e550000     link.w     a5, #$0
002ca2: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002ca6: 2440         movea.l    d0, a2
002ca8: 2641         movea.l    d1, a3
002caa: 2012         move.l     (a2), d0
002cac: b093         cmp.l      (a3), d0
002cae: 651e         bcs.b      $2cce
002cb0: 2012         move.l     (a2), d0
002cb2: b093         cmp.l      (a3), d0
002cb4: 621c         bhi.b      $2cd2
002cb6: 302a0004     move.w     $4(a2), d0
002cba: b06b0004     cmp.w      $4(a3), d0
002cbe: 6604         bne.b      $2cc4
002cc0: 7000         moveq      #$0, d0
002cc2: 6010         bra.b      $2cd4
002cc4: 302a0004     move.w     $4(a2), d0
002cc8: b06b0004     cmp.w      $4(a3), d0
002ccc: 6c04         bge.b      $2cd2
002cce: 7001         moveq      #$1, d0
002cd0: 6002         bra.b      $2cd4
002cd2: 70ff         moveq      #$ff, d0
002cd4: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002cda: 4e5d         unlk       a5
002cdc: 4e75         rts        
002cde: 4e550000     link.w     a5, #$0
002ce2: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002ce6: 2440         movea.l    d0, a2
002ce8: 2641         movea.l    d1, a3
002cea: 3012         move.w     (a2), d0
002cec: b053         cmp.w      (a3), d0
002cee: 6f04         ble.b      $2cf4
002cf0: 7001         moveq      #$1, d0
002cf2: 600c         bra.b      $2d00
002cf4: 3012         move.w     (a2), d0
002cf6: b053         cmp.w      (a3), d0
002cf8: 6c04         bge.b      $2cfe
002cfa: 70ff         moveq      #$ff, d0
002cfc: 6002         bra.b      $2d00
002cfe: 7000         moveq      #$0, d0
002d00: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002d06: 4e5d         unlk       a5
002d08: 4e75         rts        
002d0a: 4e550000     link.w     a5, #$0
002d0e: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002d12: 2440         movea.l    d0, a2
002d14: 2641         movea.l    d1, a3
002d16: 3012         move.w     (a2), d0
002d18: b053         cmp.w      (a3), d0
002d1a: 6510         bcs.b      $2d2c
002d1c: 3012         move.w     (a2), d0
002d1e: b053         cmp.w      (a3), d0
002d20: 6218         bhi.b      $2d3a
002d22: 302a0002     move.w     $2(a2), d0
002d26: b06b0002     cmp.w      $2(a3), d0
002d2a: 6304         bls.b      $2d30
002d2c: 7001         moveq      #$1, d0
002d2e: 6010         bra.b      $2d40
002d30: 302a0002     move.w     $2(a2), d0
002d34: b06b0002     cmp.w      $2(a3), d0
002d38: 6404         bcc.b      $2d3e
002d3a: 70ff         moveq      #$ff, d0
002d3c: 6002         bra.b      $2d40
002d3e: 7000         moveq      #$0, d0
002d40: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002d46: 4e5d         unlk       a5
002d48: 4e75         rts        
002d4a: 4e550000     link.w     a5, #$0
002d4e: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002d52: 2440         movea.l    d0, a2
002d54: 2641         movea.l    d1, a3
002d56: 2012         move.l     (a2), d0
002d58: b093         cmp.l      (a3), d0
002d5a: 660e         bne.b      $2d6a
002d5c: 302a0006     move.w     $6(a2), d0
002d60: b06b0006     cmp.w      $6(a3), d0
002d64: 6604         bne.b      $2d6a
002d66: 7000         moveq      #$0, d0
002d68: 6002         bra.b      $2d6c
002d6a: 7001         moveq      #$1, d0
002d6c: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002d72: 4e5d         unlk       a5
002d74: 4e75         rts        
002d76: 4e550000     link.w     a5, #$0
002d7a: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002d7e: 2440         movea.l    d0, a2
002d80: 2641         movea.l    d1, a3
002d82: 203cffffff00 move.l     #$ffffff00, d0
002d88: c093         and.l      (a3), d0
002d8a: e088         lsr.l      #$8, d0
002d8c: 223cffffff00 move.l     #$ffffff00, d1
002d92: c292         and.l      (a2), d1
002d94: e089         lsr.l      #$8, d1
002d96: b081         cmp.l      d1, d0
002d98: 6d22         blt.b      $2dbc
002d9a: 203cffffff00 move.l     #$ffffff00, d0
002da0: c093         and.l      (a3), d0
002da2: e088         lsr.l      #$8, d0
002da4: 223cffffff00 move.l     #$ffffff00, d1
002daa: c292         and.l      (a2), d1
002dac: e089         lsr.l      #$8, d1
002dae: b081         cmp.l      d1, d0
002db0: 6e18         bgt.b      $2dca
002db2: 302a0006     move.w     $6(a2), d0
002db6: b06b0006     cmp.w      $6(a3), d0
002dba: 6304         bls.b      $2dc0
002dbc: 7001         moveq      #$1, d0
002dbe: 6010         bra.b      $2dd0
002dc0: 302a0006     move.w     $6(a2), d0
002dc4: b06b0006     cmp.w      $6(a3), d0
002dc8: 6404         bcc.b      $2dce
002dca: 70ff         moveq      #$ff, d0
002dcc: 6002         bra.b      $2dd0
002dce: 7000         moveq      #$0, d0
002dd0: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002dd6: 4e5d         unlk       a5
002dd8: 4e75         rts        
002dda: 4e550000     link.w     a5, #$0
002dde: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002de2: 2440         movea.l    d0, a2
002de4: 2641         movea.l    d1, a3
002de6: 2012         move.l     (a2), d0
002de8: b093         cmp.l      (a3), d0
002dea: 660e         bne.b      $2dfa
002dec: 302a0006     move.w     $6(a2), d0
002df0: b06b0006     cmp.w      $6(a3), d0
002df4: 6604         bne.b      $2dfa
002df6: 7000         moveq      #$0, d0
002df8: 6002         bra.b      $2dfc
002dfa: 7001         moveq      #$1, d0
002dfc: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002e02: 4e5d         unlk       a5
002e04: 4e75         rts        
002e06: 4e550000     link.w     a5, #$0
002e0a: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002e0e: 2440         movea.l    d0, a2
002e10: 2641         movea.l    d1, a3
002e12: 203cffffff00 move.l     #$ffffff00, d0
002e18: c093         and.l      (a3), d0
002e1a: e088         lsr.l      #$8, d0
002e1c: 223cffffff00 move.l     #$ffffff00, d1
002e22: c292         and.l      (a2), d1
002e24: e089         lsr.l      #$8, d1
002e26: b081         cmp.l      d1, d0
002e28: 6d22         blt.b      $2e4c
002e2a: 203cffffff00 move.l     #$ffffff00, d0
002e30: c093         and.l      (a3), d0
002e32: e088         lsr.l      #$8, d0
002e34: 223cffffff00 move.l     #$ffffff00, d1
002e3a: c292         and.l      (a2), d1
002e3c: e089         lsr.l      #$8, d1
002e3e: b081         cmp.l      d1, d0
002e40: 6e18         bgt.b      $2e5a
002e42: 302a0006     move.w     $6(a2), d0
002e46: b06b0006     cmp.w      $6(a3), d0
002e4a: 6304         bls.b      $2e50
002e4c: 7001         moveq      #$1, d0
002e4e: 6010         bra.b      $2e60
002e50: 302a0006     move.w     $6(a2), d0
002e54: b06b0006     cmp.w      $6(a3), d0
002e58: 6404         bcc.b      $2e5e
002e5a: 70ff         moveq      #$ff, d0
002e5c: 6002         bra.b      $2e60
002e5e: 7000         moveq      #$0, d0
002e60: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002e66: 4e5d         unlk       a5
002e68: 4e75         rts        
002e6a: 4e550000     link.w     a5, #$0
002e6e: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002e72: 2440         movea.l    d0, a2
002e74: 2641         movea.l    d1, a3
002e76: 220b         move.l     a3, d1
002e78: 200a         move.l     a2, d0
002e7a: 6100fece     bsr.w      $2d4a
002e7e: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002e84: 4e5d         unlk       a5
002e86: 4e75         rts        
002e88: 4e550000     link.w     a5, #$0
002e8c: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002e90: 2440         movea.l    d0, a2
002e92: 2641         movea.l    d1, a3
002e94: 220b         move.l     a3, d1
002e96: 200a         move.l     a2, d0
002e98: 6100fedc     bsr.w      $2d76
002e9c: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002ea2: 4e5d         unlk       a5
002ea4: 4e75         rts        
002ea6: 4e550000     link.w     a5, #$0
002eaa: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002eae: 2440         movea.l    d0, a2
002eb0: 2641         movea.l    d1, a3
002eb2: 220b         move.l     a3, d1
002eb4: 200a         move.l     a2, d0
002eb6: 610027e4     bsr.w      $569c
002eba: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
002ec0: 4e5d         unlk       a5
002ec2: 4e75         rts        
002ec4: 4e550000     link.w     a5, #$0
002ec8: 48e7c080     movem.l    d0-d1/a0, -(a7)
002ecc: 70ff         moveq      #$ff, d0
002ece: b0ae89bc     cmp.l      -$7644(a6), d0
002ed2: 6616         bne.b      $2eea
002ed4: 7203         moveq      #$3, d1
002ed6: 41fa0136     lea.l      $300e(pc), a0
002eda: 2008         move.l     a0, d0
002edc: 61001654     bsr.w      $4532
002ee0: 2d4089bc     move.l     d0, -$7644(a6)
002ee4: 72ff         moveq      #$ff, d1
002ee6: b280         cmp.l      d0, d1
002ee8: 672a         beq.b      $2f14
002eea: 42a7         clr.l      -(a7)
002eec: 7200         moveq      #$0, d1
002eee: 202e89bc     move.l     -$7644(a6), d0
002ef2: 6100269e     bsr.w      $5592
002ef6: 588f         addq.l     #$4, a7
002ef8: 4878003a     pea.l      $3a.w
002efc: 222f0004     move.l     $4(a7), d1
002f00: 202e89bc     move.l     -$7644(a6), d0
002f04: 6100267c     bsr.w      $5582
002f08: 588f         addq.l     #$4, a7
002f0a: 723a         moveq      #$3a, d1
002f0c: b280         cmp.l      d0, d1
002f0e: 6604         bne.b      $2f14
002f10: 7000         moveq      #$0, d0
002f12: 6002         bra.b      $2f16
002f14: 70ff         moveq      #$ff, d0
002f16: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002f1c: 4e5d         unlk       a5
002f1e: 4e75         rts        
002f20: 4e550000     link.w     a5, #$0
002f24: 48e7c080     movem.l    d0-d1/a0, -(a7)
002f28: 70ff         moveq      #$ff, d0
002f2a: b0ae89bc     cmp.l      -$7644(a6), d0
002f2e: 6616         bne.b      $2f46
002f30: 7203         moveq      #$3, d1
002f32: 41fa00f2     lea.l      $3026(pc), a0
002f36: 2008         move.l     a0, d0
002f38: 610015f8     bsr.w      $4532
002f3c: 2d4089bc     move.l     d0, -$7644(a6)
002f40: 72ff         moveq      #$ff, d1
002f42: b280         cmp.l      d0, d1
002f44: 672a         beq.b      $2f70
002f46: 42a7         clr.l      -(a7)
002f48: 7200         moveq      #$0, d1
002f4a: 202e89bc     move.l     -$7644(a6), d0
002f4e: 61002642     bsr.w      $5592
002f52: 588f         addq.l     #$4, a7
002f54: 4878003a     pea.l      $3a.w
002f58: 222f0004     move.l     $4(a7), d1
002f5c: 202e89bc     move.l     -$7644(a6), d0
002f60: 61002628     bsr.w      $558a
002f64: 588f         addq.l     #$4, a7
002f66: 723a         moveq      #$3a, d1
002f68: b280         cmp.l      d0, d1
002f6a: 6604         bne.b      $2f70
002f6c: 7000         moveq      #$0, d0
002f6e: 6002         bra.b      $2f72
002f70: 70ff         moveq      #$ff, d0
002f72: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002f78: 4e5d         unlk       a5
002f7a: 4e75         rts        
002f7c: 4e550000     link.w     a5, #$0
002f80: 48e78000     movem.l    d0, -(a7)
002f84: 70ff         moveq      #$ff, d0
002f86: b0ae89bc     cmp.l      -$7644(a6), d0
002f8a: 6604         bne.b      $2f90
002f8c: 70ff         moveq      #$ff, d0
002f8e: 6010         bra.b      $2fa0
002f90: 202e89bc     move.l     -$7644(a6), d0
002f94: 61002608     bsr.w      $559e
002f98: 70ff         moveq      #$ff, d0
002f9a: 2d4089bc     move.l     d0, -$7644(a6)
002f9e: 7000         moveq      #$0, d0
002fa0: 4e5d         unlk       a5
002fa2: 4e75         rts        
002fa4: 4e550000     link.w     a5, #$0
002fa8: 48e7c000     movem.l    d0-d1, -(a7)
002fac: 42a7         clr.l      -(a7)
002fae: 222e89bc     move.l     -$7644(a6), d1
002fb2: 203c00000200 move.l     #$200, d0
002fb8: 610023d6     bsr.w      $5390
002fbc: 588f         addq.l     #$4, a7
002fbe: 4ced0002fffc movem.l    -$4(a5), d1
002fc4: 4e5d         unlk       a5
002fc6: 4e75         rts        
002fc8: 4e550000     link.w     a5, #$0
002fcc: 48e7c080     movem.l    d0-d1/a0, -(a7)
002fd0: 70ff         moveq      #$ff, d0
002fd2: b0ae89bc     cmp.l      -$7644(a6), d0
002fd6: 661a         bne.b      $2ff2
002fd8: 7203         moveq      #$3, d1
002fda: 41fa0062     lea.l      $303e(pc), a0
002fde: 2008         move.l     a0, d0
002fe0: 61001550     bsr.w      $4532
002fe4: 2d4089bc     move.l     d0, -$7644(a6)
002fe8: 72ff         moveq      #$ff, d1
002fea: b280         cmp.l      d0, d1
002fec: 6604         bne.b      $2ff2
002fee: 70ff         moveq      #$ff, d0
002ff0: 6012         bra.b      $3004
002ff2: 42a7         clr.l      -(a7)
002ff4: 222e89bc     move.l     -$7644(a6), d1
002ff8: 203c00000900 move.l     #$900, d0
002ffe: 6100232c     bsr.w      $532c
003002: 588f         addq.l     #$4, a7
003004: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00300a: 4e5d         unlk       a5
00300c: 4e75         rts        
00300e: 2f63302f     move.l     -(a3), $302f(a7)
003012: 5f313239     subq.b     #$7, $39(a1, d3.w)
003016: 5f2f7061     subq.b     #$7, $7061(a7)
00301a: 636b         bls.b      $3087
00301c: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
00302a: 5f313239     subq.b     #$7, $39(a1, d3.w)
00302e: 5f2f7061     subq.b     #$7, $7061(a7)
003032: 636b         bls.b      $309f
003034: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
003042: 5f313239     subq.b     #$7, $39(a1, d3.w)
003046: 5f2f7061     subq.b     #$7, $7061(a7)
00304a: 636b         bls.b      $30b7
00304c: 2f706f736974696f6e004e550000 move.l     ([$6974696f, a0], $6e004e55), $0(a7)
00305a: 48e7c020     movem.l    d0-d1/a2, -(a7)
00305e: 2440         movea.l    d0, a2
003060: 4292         clr.l      (a2)
003062: 256f0004000c move.l     $4(a7), $c(a2)
003068: 256f00140010 move.l     $14(a7), $10(a2)
00306e: 42aa0008     clr.l      $8(a2)
003072: 25520004     move.l     (a2), $4(a2)
003076: 4ced0400fffc movem.l    -$4(a5), a2
00307c: 4e5d         unlk       a5
00307e: 4e75         rts        
003080: 4e550000     link.w     a5, #$0
003084: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
003088: 2440         movea.l    d0, a2
00308a: 598f         subq.l     #$4, a7
00308c: 202a000c     move.l     $c(a2), d0
003090: 5c80         addq.l     #$6, d0
003092: 6100254e     bsr.w      $55e2
003096: 2e80         move.l     d0, (a7)
003098: 4a97         tst.l      (a7)
00309a: 6604         bne.b      $30a0
00309c: 7000         moveq      #$0, d0
00309e: 6036         bra.b      $30d6
0030a0: 2f2a000c     move.l     $c(a2), -(a7)
0030a4: 222f000c     move.l     $c(a7), d1
0030a8: 202f0004     move.l     $4(a7), d0
0030ac: 5880         addq.l     #$4, d0
0030ae: 610026ce     bsr.w      $577e
0030b2: 588f         addq.l     #$4, a7
0030b4: 52aa0008     addq.l     #$1, $8(a2)
0030b8: 4aaf001c     tst.l      $1c(a7)
0030bc: 660a         bne.b      $30c8
0030be: 2057         movea.l    (a7), a0
0030c0: 20af0020     move.l     $20(a7), (a0)
0030c4: 2497         move.l     (a7), (a2)
0030c6: 600c         bra.b      $30d4
0030c8: 206f001c     movea.l    $1c(a7), a0
0030cc: 2097         move.l     (a7), (a0)
0030ce: 2057         movea.l    (a7), a0
0030d0: 20af0020     move.l     $20(a7), (a0)
0030d4: 7001         moveq      #$1, d0
0030d6: 588f         addq.l     #$4, a7
0030d8: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0030de: 4e5d         unlk       a5
0030e0: 4e75         rts        
0030e2: 4e550000     link.w     a5, #$0
0030e6: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
0030ea: 2440         movea.l    d0, a2
0030ec: 2641         movea.l    d1, a3
0030ee: 598f         subq.l     #$4, a7
0030f0: 4297         clr.l      (a7)
0030f2: 2852         movea.l    (a2), a4
0030f4: 6004         bra.b      $30fa
0030f6: 2e8c         move.l     a4, (a7)
0030f8: 2854         movea.l    (a4), a4
0030fa: 200c         move.l     a4, d0
0030fc: 6712         beq.b      $3110
0030fe: 200c         move.l     a4, d0
003100: 5880         addq.l     #$4, d0
003102: 2200         move.l     d0, d1
003104: 200b         move.l     a3, d0
003106: 206a0010     movea.l    $10(a2), a0
00310a: 4e90         jsr        (a0)
00310c: 2800         move.l     d0, d4
00310e: 6ee6         bgt.b      $30f6
003110: 200c         move.l     a4, d0
003112: 6704         beq.b      $3118
003114: 4a84         tst.l      d4
003116: 6712         beq.b      $312a
003118: 4854         pea.l      (a4)
00311a: 2f2f0004     move.l     $4(a7), -(a7)
00311e: 220b         move.l     a3, d1
003120: 200a         move.l     a2, d0
003122: 6100ff5c     bsr.w      $3080
003126: 508f         addq.l     #$8, a7
003128: 6002         bra.b      $312c
00312a: 7001         moveq      #$1, d0
00312c: 588f         addq.l     #$4, a7
00312e: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
003134: 4e5d         unlk       a5
003136: 4e75         rts        
003138: 4e550000     link.w     a5, #$0
00313c: 48e78020     movem.l    d0/a2, -(a7)
003140: 2440         movea.l    d0, a2
003142: 25520004     move.l     (a2), $4(a2)
003146: 4ced0400fffc movem.l    -$4(a5), a2
00314c: 4e5d         unlk       a5
00314e: 4e75         rts        
003150: 4e550000     link.w     a5, #$0
003154: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
003158: 2440         movea.l    d0, a2
00315a: 4aaa0004     tst.l      $4(a2)
00315e: 6604         bne.b      $3164
003160: 7000         moveq      #$0, d0
003162: 6016         bra.b      $317a
003164: 202a0004     move.l     $4(a2), d0
003168: 5880         addq.l     #$4, d0
00316a: 206f0004     movea.l    $4(a7), a0
00316e: 2080         move.l     d0, (a0)
003170: 206a0004     movea.l    $4(a2), a0
003174: 25500004     move.l     (a0), $4(a2)
003178: 7001         moveq      #$1, d0
00317a: 4ced0500fff8 movem.l    -$8(a5), a0/a2
003180: 4e5d         unlk       a5
003182: 4e75         rts        
003184: 4e550000     link.w     a5, #$0
003188: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
00318c: 2440         movea.l    d0, a2
00318e: 2641         movea.l    d1, a3
003190: 286f0020     movea.l    $20(a7), a4
003194: 200a         move.l     a2, d0
003196: 61a0         bsr.b      $3138
003198: 6012         bra.b      $31ac
00319a: 2214         move.l     (a4), d1
00319c: 200b         move.l     a3, d0
00319e: 206a0010     movea.l    $10(a2), a0
0031a2: 4e90         jsr        (a0)
0031a4: 4a80         tst.l      d0
0031a6: 6604         bne.b      $31ac
0031a8: 7001         moveq      #$1, d0
0031aa: 600e         bra.b      $31ba
0031ac: 220c         move.l     a4, d1
0031ae: 200a         move.l     a2, d0
0031b0: 619e         bsr.b      $3150
0031b2: 4a00         tst.b      d0
0031b4: 66e4         bne.b      $319a
0031b6: 4294         clr.l      (a4)
0031b8: 7000         moveq      #$0, d0
0031ba: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
0031c0: 4e5d         unlk       a5
0031c2: 4e75         rts        
0031c4: 4e550000     link.w     a5, #$0
0031c8: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
0031cc: 2440         movea.l    d0, a2
0031ce: 2641         movea.l    d1, a3
0031d0: 2852         movea.l    (a2), a4
0031d2: 602a         bra.b      $31fe
0031d4: 200c         move.l     a4, d0
0031d6: 5880         addq.l     #$4, d0
0031d8: 2200         move.l     d0, d1
0031da: 200b         move.l     a3, d0
0031dc: 206a0010     movea.l    $10(a2), a0
0031e0: 4e90         jsr        (a0)
0031e2: 2800         move.l     d0, d4
0031e4: 4a84         tst.l      d4
0031e6: 6f04         ble.b      $31ec
0031e8: 2854         movea.l    (a4), a4
0031ea: 6012         bra.b      $31fe
0031ec: 4a84         tst.l      d4
0031ee: 6612         bne.b      $3202
0031f0: 200c         move.l     a4, d0
0031f2: 5880         addq.l     #$4, d0
0031f4: 206f0024     movea.l    $24(a7), a0
0031f8: 2080         move.l     d0, (a0)
0031fa: 7001         moveq      #$1, d0
0031fc: 600c         bra.b      $320a
0031fe: 200c         move.l     a4, d0
003200: 66d2         bne.b      $31d4
003202: 206f0024     movea.l    $24(a7), a0
003206: 4290         clr.l      (a0)
003208: 7000         moveq      #$0, d0
00320a: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
003210: 4e5d         unlk       a5
003212: 4e75         rts        
003214: 4e550000     link.w     a5, #$0
003218: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
00321c: 2440         movea.l    d0, a2
00321e: 600c         bra.b      $322c
003220: 2052         movea.l    (a2), a0
003222: 2650         movea.l    (a0), a3
003224: 2012         move.l     (a2), d0
003226: 610023c6     bsr.w      $55ee
00322a: 248b         move.l     a3, (a2)
00322c: 4a92         tst.l      (a2)
00322e: 66f0         bne.b      $3220
003230: 42aa0008     clr.l      $8(a2)
003234: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00323a: 4e5d         unlk       a5
00323c: 4e75         rts        
00323e: 4e550000     link.w     a5, #$0
003242: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003246: 2440         movea.l    d0, a2
003248: 2641         movea.l    d1, a3
00324a: 7800         moveq      #$0, d4
00324c: 2852         movea.l    (a2), a4
00324e: 6004         bra.b      $3254
003250: 280c         move.l     a4, d4
003252: 2854         movea.l    (a4), a4
003254: 200c         move.l     a4, d0
003256: 6712         beq.b      $326a
003258: 200c         move.l     a4, d0
00325a: 5880         addq.l     #$4, d0
00325c: 2200         move.l     d0, d1
00325e: 200b         move.l     a3, d0
003260: 206a0010     movea.l    $10(a2), a0
003264: 4e90         jsr        (a0)
003266: 4a80         tst.l      d0
003268: 66e6         bne.b      $3250
00326a: 200c         move.l     a4, d0
00326c: 6716         beq.b      $3284
00326e: 4a84         tst.l      d4
003270: 6604         bne.b      $3276
003272: 2494         move.l     (a4), (a2)
003274: 6004         bra.b      $327a
003276: 2044         movea.l    d4, a0
003278: 2094         move.l     (a4), (a0)
00327a: 53aa0008     subq.l     #$1, $8(a2)
00327e: 200c         move.l     a4, d0
003280: 6100236c     bsr.w      $55ee
003284: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
00328a: 4e5d         unlk       a5
00328c: 4e75         rts        
00328e: 4e550000     link.w     a5, #$0
003292: 48e78020     movem.l    d0/a2, -(a7)
003296: 2440         movea.l    d0, a2
003298: 202a0008     move.l     $8(a2), d0
00329c: 4ced0400fffc movem.l    -$4(a5), a2
0032a2: 4e5d         unlk       a5
0032a4: 4e75         rts        
0032a6: 4e550000     link.w     a5, #$0
0032aa: 48e78020     movem.l    d0/a2, -(a7)
0032ae: 2440         movea.l    d0, a2
0032b0: 202a000c     move.l     $c(a2), d0
0032b4: 4ced0400fffc movem.l    -$4(a5), a2
0032ba: 4e5d         unlk       a5
0032bc: 4e75         rts        
0032be: 4e550000     link.w     a5, #$0
0032c2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0032c6: 610022fa     bsr.w      $55c2
0032ca: 2200         move.l     d0, d1
0032cc: 41fa007a     lea.l      $3348(pc), a0
0032d0: 2008         move.l     a0, d0
0032d2: 61002252     bsr.w      $5526
0032d6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0032dc: 4e5d         unlk       a5
0032de: 4e75         rts        
0032e0: 4e550000     link.w     a5, #$0
0032e4: 48e78000     movem.l    d0, -(a7)
0032e8: 42ae89c0     clr.l      -$7640(a6)
0032ec: 7000         moveq      #$0, d0
0032ee: 4e5d         unlk       a5
0032f0: 4e75         rts        
0032f2: 4e550000     link.w     a5, #$0
0032f6: 48e78000     movem.l    d0, -(a7)
0032fa: 7010         moveq      #$10, d0
0032fc: b097         cmp.l      (a7), d0
0032fe: 6d0c         blt.b      $330c
003300: 7001         moveq      #$1, d0
003302: b097         cmp.l      (a7), d0
003304: 6e06         bgt.b      $330c
003306: 2017         move.l     (a7), d0
003308: 81ae89c0     or.l       d0, -$7640(a6)
00330c: 4e5d         unlk       a5
00330e: 4e75         rts        
003310: 4e550000     link.w     a5, #$0
003314: 48e78000     movem.l    d0, -(a7)
003318: 7010         moveq      #$10, d0
00331a: b097         cmp.l      (a7), d0
00331c: 6d16         blt.b      $3334
00331e: 7001         moveq      #$1, d0
003320: b097         cmp.l      (a7), d0
003322: 6e10         bgt.b      $3334
003324: 202e89c0     move.l     -$7640(a6), d0
003328: c097         and.l      (a7), d0
00332a: b097         cmp.l      (a7), d0
00332c: 6606         bne.b      $3334
00332e: 2017         move.l     (a7), d0
003330: b1ae89c0     eor.l      d0, -$7640(a6)
003334: 4e5d         unlk       a5
003336: 4e75         rts        
003338: 4e550000     link.w     a5, #$0
00333c: 48e78000     movem.l    d0, -(a7)
003340: 202e89c0     move.l     -$7640(a6), d0
003344: 4e5d         unlk       a5
003346: 4e75         rts        
003348: 25733a004e55 move.l     (a3, d3.l * 2), $4e55(a2)
00334e: 000048e7     ori.b      #$e7, d0
003352: 8080         or.l       d0, d0
003354: 202e89c8     move.l     -$7638(a6), d0
003358: 52ae89c8     addq.l     #$1, -$7638(a6)
00335c: 41ee811a     lea.l      -$7ee6(a6), a0
003360: 21970c00     move.l     (a7), (a0, d0.l * 4)
003364: 703f         moveq      #$3f, d0
003366: b0ae89c8     cmp.l      -$7638(a6), d0
00336a: 6c04         bge.b      $3370
00336c: 42ae89c8     clr.l      -$7638(a6)
003370: 4ced0100fffc movem.l    -$4(a5), a0
003376: 4e5d         unlk       a5
003378: 4e75         rts        
00337a: 4e550000     link.w     a5, #$0
00337e: 48e78080     movem.l    d0/a0, -(a7)
003382: 598f         subq.l     #$4, a7
003384: 202e89c4     move.l     -$763c(a6), d0
003388: b0ae89c8     cmp.l      -$7638(a6), d0
00338c: 6604         bne.b      $3392
00338e: 70ff         moveq      #$ff, d0
003390: 601e         bra.b      $33b0
003392: 202e89c4     move.l     -$763c(a6), d0
003396: 52ae89c4     addq.l     #$1, -$763c(a6)
00339a: 41ee811a     lea.l      -$7ee6(a6), a0
00339e: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
0033a2: 703f         moveq      #$3f, d0
0033a4: b0ae89c4     cmp.l      -$763c(a6), d0
0033a8: 6c04         bge.b      $33ae
0033aa: 42ae89c4     clr.l      -$763c(a6)
0033ae: 2017         move.l     (a7), d0
0033b0: 588f         addq.l     #$4, a7
0033b2: 4ced0100fffc movem.l    -$4(a5), a0
0033b8: 4e5d         unlk       a5
0033ba: 4e75         rts        
0033bc: 4e550000     link.w     a5, #$0
0033c0: 48e78000     movem.l    d0, -(a7)
0033c4: 4e5d         unlk       a5
0033c6: 4e75         rts        
0033c8: 4e550000     link.w     a5, #$0
0033cc: 48e78000     movem.l    d0, -(a7)
0033d0: 202e89c4     move.l     -$763c(a6), d0
0033d4: b0ae89c8     cmp.l      -$7638(a6), d0
0033d8: 6604         bne.b      $33de
0033da: 7001         moveq      #$1, d0
0033dc: 6002         bra.b      $33e0
0033de: 7000         moveq      #$0, d0
0033e0: 4e5d         unlk       a5
0033e2: 4e75         rts        
0033e4: 4e550000     link.w     a5, #$0
0033e8: 48e78000     movem.l    d0, -(a7)
0033ec: 2017         move.l     (a7), d0
0033ee: 61001b62     bsr.w      $4f52
0033f2: 7001         moveq      #$1, d0
0033f4: 4e5d         unlk       a5
0033f6: 4e75         rts        
0033f8: 4e550000     link.w     a5, #$0
0033fc: 48e78000     movem.l    d0, -(a7)
003400: 7001         moveq      #$1, d0
003402: 4e5d         unlk       a5
003404: 4e75         rts        
003406: 4e550000     link.w     a5, #$0
00340a: 48e78800     movem.l    d0/d4, -(a7)
00340e: 610006ba     bsr.w      $3aca
003412: 6100ff66     bsr.w      $337a
003416: 2800         move.l     d0, d4
003418: 6c0c         bge.b      $3426
00341a: 7000         moveq      #$0, d0
00341c: 6100260e     bsr.w      $5a2c
003420: 6100ff58     bsr.w      $337a
003424: 2800         move.l     d0, d4
003426: 610006ce     bsr.w      $3af6
00342a: 2004         move.l     d4, d0
00342c: 4ced0010fffc movem.l    -$4(a5), d4
003432: 4e5d         unlk       a5
003434: 4e75         rts        
003436: 4e550000     link.w     a5, #$0
00343a: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
00343e: 7800         moveq      #$0, d4
003440: 7a00         moveq      #$0, d5
003442: 6042         bra.b      $3486
003444: 2f04         move.l     d4, -(a7)
003446: 41fa011c     lea.l      $3564(pc), a0
00344a: 2208         move.l     a0, d1
00344c: 202f0004     move.l     $4(a7), d0
003450: 610020dc     bsr.w      $552e
003454: 588f         addq.l     #$4, a7
003456: 2f17         move.l     (a7), -(a7)
003458: 48780001     pea.l      $1.w
00345c: 72ff         moveq      #$ff, d1
00345e: 7000         moveq      #$0, d0
003460: 61002758     bsr.w      $5bba
003464: 508f         addq.l     #$8, a7
003466: 206f0004     movea.l    $4(a7), a0
00346a: 2080         move.l     d0, (a0)
00346c: 72ff         moveq      #$ff, d1
00346e: b280         cmp.l      d0, d1
003470: 6612         bne.b      $3484
003472: 0cae000000a9800c cmpi.l     #$a9, -$7ff4(a6)
00347a: 6604         bne.b      $3480
00347c: 5284         addq.l     #$1, d4
00347e: 6006         bra.b      $3486
003480: 7000         moveq      #$0, d0
003482: 6012         bra.b      $3496
003484: 7a01         moveq      #$1, d5
003486: 4a85         tst.l      d5
003488: 67ba         beq.b      $3444
00348a: 206f0004     movea.l    $4(a7), a0
00348e: 2010         move.l     (a0), d0
003490: 610000b4     bsr.w      $3546
003494: 7001         moveq      #$1, d0
003496: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
00349c: 4e5d         unlk       a5
00349e: 4e75         rts        
0034a0: 4e550000     link.w     a5, #$0
0034a4: 48e7c000     movem.l    d0-d1, -(a7)
0034a8: 2017         move.l     (a7), d0
0034aa: 6100275a     bsr.w      $5c06
0034ae: 72ff         moveq      #$ff, d1
0034b0: b280         cmp.l      d0, d1
0034b2: 6604         bne.b      $34b8
0034b4: 7000         moveq      #$0, d0
0034b6: 6002         bra.b      $34ba
0034b8: 7001         moveq      #$1, d0
0034ba: 4ced0002fffc movem.l    -$4(a5), d1
0034c0: 4e5d         unlk       a5
0034c2: 4e75         rts        
0034c4: 4e550000     link.w     a5, #$0
0034c8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0034cc: 2017         move.l     (a7), d0
0034ce: 61002714     bsr.w      $5be4
0034d2: 206f0004     movea.l    $4(a7), a0
0034d6: 2080         move.l     d0, (a0)
0034d8: 72ff         moveq      #$ff, d1
0034da: b280         cmp.l      d0, d1
0034dc: 6604         bne.b      $34e2
0034de: 7000         moveq      #$0, d0
0034e0: 6002         bra.b      $34e4
0034e2: 7001         moveq      #$1, d0
0034e4: 4ced0100fffc movem.l    -$4(a5), a0
0034ea: 4e5d         unlk       a5
0034ec: 4e75         rts        
0034ee: 4e550000     link.w     a5, #$0
0034f2: 48e7c000     movem.l    d0-d1, -(a7)
0034f6: 2017         move.l     (a7), d0
0034f8: 61a6         bsr.b      $34a0
0034fa: 4a80         tst.l      d0
0034fc: 670e         beq.b      $350c
0034fe: 202f0004     move.l     $4(a7), d0
003502: 6100270e     bsr.w      $5c12
003506: 72ff         moveq      #$ff, d1
003508: b280         cmp.l      d0, d1
00350a: 6604         bne.b      $3510
00350c: 7000         moveq      #$0, d0
00350e: 6002         bra.b      $3512
003510: 7001         moveq      #$1, d0
003512: 4e5d         unlk       a5
003514: 4e75         rts        
003516: 4e550000     link.w     a5, #$0
00351a: 48e7c800     movem.l    d0-d1/d4, -(a7)
00351e: 6004         bra.b      $3524
003520: 70ff         moveq      #$ff, d0
003522: b084         cmp.l      d4, d0
003524: 48780001     pea.l      $1.w
003528: 7201         moveq      #$1, d1
00352a: 202f0004     move.l     $4(a7), d0
00352e: 6100276e     bsr.w      $5c9e
003532: 588f         addq.l     #$4, a7
003534: 2800         move.l     d0, d4
003536: 7201         moveq      #$1, d1
003538: b280         cmp.l      d0, d1
00353a: 66e4         bne.b      $3520
00353c: 4ced0012fff8 movem.l    -$8(a5), d1/d4
003542: 4e5d         unlk       a5
003544: 4e75         rts        
003546: 4e550000     link.w     a5, #$0
00354a: 48e7c000     movem.l    d0-d1, -(a7)
00354e: 7200         moveq      #$0, d1
003550: 2017         move.l     (a7), d0
003552: 610026da     bsr.w      $5c2e
003556: 72ff         moveq      #$ff, d1
003558: b280         cmp.l      d0, d1
00355a: 4ced0002fffc movem.l    -$4(a5), d1
003560: 4e5d         unlk       a5
003562: 4e75         rts        
003564: 7365         .dc.w      $7365
003566: 6d25         blt.b      $358d
003568: 30366400     move.w     (a6, d6.w * 4), d0
00356c: 4e550000     link.w     a5, #$0
003570: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003574: 2017         move.l     (a7), d0
003576: 6100206a     bsr.w      $55e2
00357a: 206f0018     movea.l    $18(a7), a0
00357e: 2080         move.l     d0, (a0)
003580: 6604         bne.b      $3586
003582: 7000         moveq      #$0, d0
003584: 600c         bra.b      $3592
003586: 206f0018     movea.l    $18(a7), a0
00358a: 226f0004     movea.l    $4(a7), a1
00358e: 2290         move.l     (a0), (a1)
003590: 7001         moveq      #$1, d0
003592: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003598: 4e5d         unlk       a5
00359a: 4e75         rts        
00359c: 4e550000     link.w     a5, #$0
0035a0: 48e7c000     movem.l    d0-d1, -(a7)
0035a4: 7001         moveq      #$1, d0
0035a6: 4e5d         unlk       a5
0035a8: 4e75         rts        
0035aa: 4e550000     link.w     a5, #$0
0035ae: 48e7c080     movem.l    d0-d1/a0, -(a7)
0035b2: 4a97         tst.l      (a7)
0035b4: 660a         bne.b      $35c0
0035b6: 206f0004     movea.l    $4(a7), a0
0035ba: 4290         clr.l      (a0)
0035bc: 7000         moveq      #$0, d0
0035be: 6008         bra.b      $35c8
0035c0: 206f0004     movea.l    $4(a7), a0
0035c4: 2097         move.l     (a7), (a0)
0035c6: 7001         moveq      #$1, d0
0035c8: 4ced0100fffc movem.l    -$4(a5), a0
0035ce: 4e5d         unlk       a5
0035d0: 4e75         rts        
0035d2: 4e550000     link.w     a5, #$0
0035d6: 48e7c000     movem.l    d0-d1, -(a7)
0035da: 4aaf0004     tst.l      $4(a7)
0035de: 6604         bne.b      $35e4
0035e0: 7000         moveq      #$0, d0
0035e2: 600a         bra.b      $35ee
0035e4: 202f0004     move.l     $4(a7), d0
0035e8: 61002004     bsr.w      $55ee
0035ec: 7001         moveq      #$1, d0
0035ee: 4e5d         unlk       a5
0035f0: 4e75         rts        
0035f2: 0008         .dc.w      $0008
0035f4: 006e000c006a ori.w      #$c, $6a(a6)
0035fa: 00100066     ori.b      #$66, (a0)
0035fe: 00140062     ori.b      #$62, (a4)
003602: 0018005e     ori.b      #$5e, (a0)+
003606: 001c005a     ori.b      #$5a, (a4)+
00360a: 00200056     ori.b      #$56, -(a0)
00360e: 002c00520028 ori.b      #$52, $28(a4)
003614: 004e         .dc.w      $004e
003616: ffff         dc.w       $ffff
003618: 0008         .dc.w      $0008
00361a: 0000000c     ori.b      #$c, d0
00361e: 00000010     ori.b      #$10, d0
003622: 00000014     ori.b      #$14, d0
003626: 00000018     ori.b      #$18, d0
00362a: 0000001c     ori.b      #$1c, d0
00362e: 00000020     ori.b      #$20, d0
003632: 0000002c     ori.b      #$2c, d0
003636: 00000028     ori.b      #$28, d0
00363a: 0000ffff     ori.b      #$ff, d0
00363e: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
003642: 43faffae     lea.l      $35f2(pc), a1
003646: 6008         bra.b      $3650
003648: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
00364c: 43faffca     lea.l      $3618(pc), a1
003650: 91c8         suba.l     a0, a0
003652: 4e40         trap       #$0
003654: 000e         .dc.w      $000e
003656: 6406         bcc.b      $365e
003658: 2d41800c     move.l     d1, -$7ff4(a6)
00365c: 70ff         moveq      #$ff, d0
00365e: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
003662: 4e75         rts        
003664: 48e70004     movem.l    a5, -(a7)
003668: 91ee89dc     suba.l     -$7624(a6), a0
00366c: 2d4889d4     move.l     a0, -$762c(a6)
003670: 41ee821a     lea.l      -$7de6(a6), a0
003674: 202e89d0     move.l     -$7630(a6), d0
003678: e248         lsr.w      #$1, d0
00367a: 5340         subq.w     #$1, d0
00367c: 30dd         move.w     (a5)+, (a0)+
00367e: 51c8fffc     dbra       d0, $367c
003682: 4cdf2000     movem.l    (a7)+, a5
003686: e44f         lsr.w      #$2, d7
003688: 3d4789d8     move.w     d7, -$7628(a6)
00368c: 206e8262     movea.l    -$7d9e(a6), a0
003690: 4e90         jsr        (a0)
003692: 4a80         tst.l      d0
003694: 6708         beq.b      $369e
003696: 7264         moveq      #$64, d1
003698: d247         add.w      d7, d1
00369a: 4e40         trap       #$0
00369c: 00064cdf     ori.b      #$df, d6
0036a0: 7fff         .dc.w      $7fff
0036a2: 588f         addq.l     #$4, a7
0036a4: 44df         move.w     (a7)+, ccr
0036a6: 4e75         rts        
0036a8: 4e550000     link.w     a5, #$0
0036ac: 48e78000     movem.l    d0, -(a7)
0036b0: 1d7c000189da move.b     #$1, -$7626(a6)
0036b6: 4e5d         unlk       a5
0036b8: 4e75         rts        
0036ba: 4e550000     link.w     a5, #$0
0036be: 48e78000     movem.l    d0, -(a7)
0036c2: 2d578262     move.l     (a7), -$7d9e(a6)
0036c6: 6606         bne.b      $36ce
0036c8: 6100ff7e     bsr.w      $3648
0036cc: 6004         bra.b      $36d2
0036ce: 6100ff6e     bsr.w      $363e
0036d2: 4e5d         unlk       a5
0036d4: 4e75         rts        
0036d6: 4e550000     link.w     a5, #$0
0036da: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0036de: 4fefffd4     lea.l      -$2c(a7), a7
0036e2: 604a         bra.b      $372e
0036e4: 2ebc000000b5 move.l     #$b5, (a7)
0036ea: 60000076     bra.w      $3762
0036ee: 2ebc000000b6 move.l     #$b6, (a7)
0036f4: 606c         bra.b      $3762
0036f6: 2ebc000000b7 move.l     #$b7, (a7)
0036fc: 6064         bra.b      $3762
0036fe: 2ebc000000b8 move.l     #$b8, (a7)
003704: 605c         bra.b      $3762
003706: 2ebc000000b9 move.l     #$b9, (a7)
00370c: 6054         bra.b      $3762
00370e: 2ebc000000ba move.l     #$ba, (a7)
003714: 604c         bra.b      $3762
003716: 2ebc000000b2 move.l     #$b2, (a7)
00371c: 6044         bra.b      $3762
00371e: 2ebc000000c0 move.l     #$c0, (a7)
003724: 603c         bra.b      $3762
003726: 2ebc000000b3 move.l     #$b3, (a7)
00372c: 6034         bra.b      $3762
00372e: 302e89d8     move.w     -$7628(a6), d0
003732: 48c0         ext.l      d0
003734: 7264         moveq      #$64, d1
003736: d081         add.l      d1, d0
003738: 048000000066 subi.l     #$66, d0
00373e: 0c8000000009 cmpi.l     #$9, d0
003744: 62e0         bhi.b      $3726
003746: 303b0206     move.w     $374e(pc, d0.w), d0
00374a: 4efb0002     jmp        $374e(pc, d0.w)
00374e: ff96         dc.w       $ff96
003750: ffa0         dc.w       $ffa0
003752: ffa8         dc.w       $ffa8
003754: ffb0         dc.w       $ffb0
003756: ffb8         dc.w       $ffb8
003758: ffc0         dc.w       $ffc0
00375a: ffc8         dc.w       $ffc8
00375c: ffd8         dc.w       $ffd8
00375e: ffd0         dc.w       $ffd0
003760: ffd0         dc.w       $ffd0
003762: 0c97000000ba cmpi.l     #$ba, (a7)
003768: 660c         bne.b      $3776
00376a: 4a2e89da     tst.b      -$7626(a6)
00376e: 6706         beq.b      $3776
003770: 7000         moveq      #$0, d0
003772: 600001ec     bra.w      $3960
003776: 2f2e89d4     move.l     -$762c(a6), -(a7)
00377a: 306e89d8     movea.w    -$7628(a6), a0
00377e: 2f08         move.l     a0, -(a7)
003780: 61001e40     bsr.w      $55c2
003784: 2200         move.l     d0, d1
003786: 41fa01f0     lea.l      $3978(pc), a0
00378a: 2008         move.l     a0, d0
00378c: 61001d98     bsr.w      $5526
003790: 508f         addq.l     #$8, a7
003792: 6100265c     bsr.w      $5df0
003796: 2f00         move.l     d0, -(a7)
003798: 61001e28     bsr.w      $55c2
00379c: 2f00         move.l     d0, -(a7)
00379e: 2f2e89cc     move.l     -$7634(a6), -(a7)
0037a2: 41fa01fb     lea.l      $399f(pc), a0
0037a6: 2208         move.l     a0, d1
0037a8: 41ef0010     lea.l      $10(a7), a0
0037ac: 2008         move.l     a0, d0
0037ae: 61001d7e     bsr.w      $552e
0037b2: 4fef000c     lea.l      $c(a7), a7
0037b6: 41fa01ef     lea.l      $39a7(pc), a0
0037ba: 2208         move.l     a0, d1
0037bc: 41ef0004     lea.l      $4(a7), a0
0037c0: 2008         move.l     a0, d0
0037c2: 61001d32     bsr.w      $54f6
0037c6: 2440         movea.l    d0, a2
0037c8: 4a80         tst.l      d0
0037ca: 6604         bne.b      $37d0
0037cc: 45ee8624     lea.l      -$79dc(a6), a2
0037d0: 2f2e89d4     move.l     -$762c(a6), -(a7)
0037d4: 306e89d8     movea.w    -$7628(a6), a0
0037d8: 2f08         move.l     a0, -(a7)
0037da: 61001de6     bsr.w      $55c2
0037de: 2f00         move.l     d0, -(a7)
0037e0: 41fa01c7     lea.l      $39a9(pc), a0
0037e4: 2208         move.l     a0, d1
0037e6: 200a         move.l     a2, d0
0037e8: 61001d40     bsr.w      $552a
0037ec: 4fef000c     lea.l      $c(a7), a7
0037f0: 7800         moveq      #$0, d4
0037f2: 6018         bra.b      $380c
0037f4: 41ee821a     lea.l      -$7de6(a6), a0
0037f8: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
0037fc: 41fa01d6     lea.l      $39d4(pc), a0
003800: 2208         move.l     a0, d1
003802: 200a         move.l     a2, d0
003804: 61001d24     bsr.w      $552a
003808: 588f         addq.l     #$4, a7
00380a: 5284         addq.l     #$1, d4
00380c: 7008         moveq      #$8, d0
00380e: b084         cmp.l      d4, d0
003810: 6ee2         bgt.b      $37f4
003812: 41fa01c7     lea.l      $39db(pc), a0
003816: 2208         move.l     a0, d1
003818: 200a         move.l     a2, d0
00381a: 61001d0e     bsr.w      $552a
00381e: 6018         bra.b      $3838
003820: 41ee821a     lea.l      -$7de6(a6), a0
003824: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
003828: 41fa01b7     lea.l      $39e1(pc), a0
00382c: 2208         move.l     a0, d1
00382e: 200a         move.l     a2, d0
003830: 61001cf8     bsr.w      $552a
003834: 588f         addq.l     #$4, a7
003836: 5284         addq.l     #$1, d4
003838: 7010         moveq      #$10, d0
00383a: b084         cmp.l      d4, d0
00383c: 6ee2         bgt.b      $3820
00383e: 41fa01a8     lea.l      $39e8(pc), a0
003842: 2208         move.l     a0, d1
003844: 200a         move.l     a2, d0
003846: 61001ce2     bsr.w      $552a
00384a: 266e824e     movea.l    -$7db2(a6), a3
00384e: 7800         moveq      #$0, d4
003850: 6014         bra.b      $3866
003852: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
003856: 41fa01ac     lea.l      $3a04(pc), a0
00385a: 2208         move.l     a0, d1
00385c: 200a         move.l     a2, d0
00385e: 61001cca     bsr.w      $552a
003862: 588f         addq.l     #$4, a7
003864: 5284         addq.l     #$1, d4
003866: 7008         moveq      #$8, d0
003868: b084         cmp.l      d4, d0
00386a: 6ee6         bgt.b      $3852
00386c: 41fa019d     lea.l      $3a0b(pc), a0
003870: 2208         move.l     a0, d1
003872: 200a         move.l     a2, d0
003874: 61001cb4     bsr.w      $552a
003878: 266e8256     movea.l    -$7daa(a6), a3
00387c: 7800         moveq      #$0, d4
00387e: 6014         bra.b      $3894
003880: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
003884: 41fa01a0     lea.l      $3a26(pc), a0
003888: 2208         move.l     a0, d1
00388a: 200a         move.l     a2, d0
00388c: 61001c9c     bsr.w      $552a
003890: 588f         addq.l     #$4, a7
003892: 5284         addq.l     #$1, d4
003894: 7008         moveq      #$8, d0
003896: b084         cmp.l      d4, d0
003898: 6ee6         bgt.b      $3880
00389a: 41fa0191     lea.l      $3a2d(pc), a0
00389e: 2208         move.l     a0, d1
0038a0: 200a         move.l     a2, d0
0038a2: 61001c86     bsr.w      $552a
0038a6: 266e824e     movea.l    -$7db2(a6), a3
0038aa: 2653         movea.l    (a3), a3
0038ac: 7800         moveq      #$0, d4
0038ae: 6014         bra.b      $38c4
0038b0: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0038b4: 41fa01a5     lea.l      $3a5b(pc), a0
0038b8: 2208         move.l     a0, d1
0038ba: 200a         move.l     a2, d0
0038bc: 61001c6c     bsr.w      $552a
0038c0: 588f         addq.l     #$4, a7
0038c2: 5284         addq.l     #$1, d4
0038c4: 7008         moveq      #$8, d0
0038c6: b084         cmp.l      d4, d0
0038c8: 6ee6         bgt.b      $38b0
0038ca: 082e0000825b btst.b     #$0, -$7da5(a6)
0038d0: 6704         beq.b      $38d6
0038d2: 7043         moveq      #$43, d0
0038d4: 6002         bra.b      $38d8
0038d6: 702d         moveq      #$2d, d0
0038d8: 2f00         move.l     d0, -(a7)
0038da: 082e0001825b btst.b     #$1, -$7da5(a6)
0038e0: 6704         beq.b      $38e6
0038e2: 7056         moveq      #$56, d0
0038e4: 6002         bra.b      $38e8
0038e6: 702d         moveq      #$2d, d0
0038e8: 2f00         move.l     d0, -(a7)
0038ea: 082e0002825b btst.b     #$2, -$7da5(a6)
0038f0: 6704         beq.b      $38f6
0038f2: 705a         moveq      #$5a, d0
0038f4: 6002         bra.b      $38f8
0038f6: 702d         moveq      #$2d, d0
0038f8: 2f00         move.l     d0, -(a7)
0038fa: 082e0003825b btst.b     #$3, -$7da5(a6)
003900: 6704         beq.b      $3906
003902: 704e         moveq      #$4e, d0
003904: 6002         bra.b      $3908
003906: 702d         moveq      #$2d, d0
003908: 2f00         move.l     d0, -(a7)
00390a: 082e0004825b btst.b     #$4, -$7da5(a6)
003910: 6704         beq.b      $3916
003912: 7058         moveq      #$58, d0
003914: 6002         bra.b      $3918
003916: 702d         moveq      #$2d, d0
003918: 2f00         move.l     d0, -(a7)
00391a: 303c00ff     move.w     #$ff, d0
00391e: c06e825a     and.w      -$7da6(a6), d0
003922: 7200         moveq      #$0, d1
003924: 3200         move.w     d0, d1
003926: 2f01         move.l     d1, -(a7)
003928: 2f2e825c     move.l     -$7da4(a6), -(a7)
00392c: 41fa0134     lea.l      $3a62(pc), a0
003930: 2208         move.l     a0, d1
003932: 200a         move.l     a2, d0
003934: 61001bf4     bsr.w      $552a
003938: 4fef001c     lea.l      $1c(a7), a7
00393c: 41ee8624     lea.l      -$79dc(a6), a0
003940: b1ca         cmpa.l     a2, a0
003942: 6706         beq.b      $394a
003944: 200a         move.l     a2, d0
003946: 61001c02     bsr.w      $554a
00394a: 2f2e89d4     move.l     -$762c(a6), -(a7)
00394e: 610024a0     bsr.w      $5df0
003952: 2200         move.l     d0, d1
003954: 202f0004     move.l     $4(a7), d0
003958: 61000a50     bsr.w      $43aa
00395c: 588f         addq.l     #$4, a7
00395e: 70ff         moveq      #$ff, d0
003960: 4fef002c     lea.l      $2c(a7), a7
003964: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
00396a: 4e5d         unlk       a5
00396c: 4e75         rts        
00396e: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
003974: 6170         bsr.b      $39e6
003976: 5f00         subq.b     #$7, d0
003978: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
00397e: 6170         bsr.b      $39f0
003980: 2023         move.l     -(a3), d0
003982: 2564206f     move.l     -(a4), $206f(a2)
003986: 6363         bls.b      $39eb
003988: 7572         .dc.w      $7572
00398a: 7265         moveq      #$65, d1
00398c: 6420         bcc.b      $39ae
00398e: 6174         bsr.b      $3a04
003990: 206f6666     movea.l    $6666(a7), a0
003994: 7365         .dc.w      $7365
003996: 743a         moveq      #$3a, d2
003998: 20307825     move.l     $25(a0, d7.l), d0
00399c: 780d         moveq      #$d, d4
00399e: 00257325     ori.b      #$25, -(a5)
0039a2: 735f         .dc.w      $735f
0039a4: 25640077     move.l     -(a4), $77(a2)
0039a8: 0025733a     ori.b      #$3a, -(a5)
0039ac: 2054         movea.l    (a4), a0
0039ae: 7261         moveq      #$61, d1
0039b0: 7020         moveq      #$20, d0
0039b2: 2325         move.l     -(a5), -(a1)
0039b4: 6420         bcc.b      $39d6
0039b6: 6f63         ble.b      $3a1b
0039b8: 6375         bls.b      $3a2f
0039ba: 7272         moveq      #$72, d1
0039bc: 6564         bcs.b      $3a22
0039be: 2061         movea.l    -(a1), a0
0039c0: 7420         moveq      #$20, d2
0039c2: 6f66         ble.b      $3a2a
0039c4: 6673         bne.b      $3a39
0039c6: 6574         bcs.b      $3a3c
0039c8: 3a20         move.w     -(a0), d5
0039ca: 30782578     movea.w    $2578.w, a0
0039ce: 0d0d446e     movep.w    $446e(a5), d6
0039d2: 3a00         move.w     d0, d5
0039d4: 2025         move.l     -(a5), d0
0039d6: 30386c58     move.w     $6c58.w, d0
0039da: 000d         .dc.w      $000d
0039dc: 0d41         bchg.b     d6, d1
0039de: 6e3a         bgt.b      $3a1a
0039e0: 00202530     ori.b      #$30, -(a0)
0039e4: 386c5800     movea.w    $5800(a4), a4
0039e8: 0d0d4d65     movep.w    $4d65(a5), d6
0039ec: 6d20         blt.b      $3a0e
0039ee: 706f         moveq      #$6f, d0
0039f0: 696e         bvs.b      $3a60
0039f2: 7465         moveq      #$65, d2
0039f4: 6420         bcc.b      $3a16
0039f6: 746f         moveq      #$6f, d2
0039f8: 2062         movea.l    -(a2), a0
0039fa: 7920         .dc.w      $7920
0039fc: 41353a0d     chk.l      $d(a5, d3.l), d0
003a00: 53353a00     subq.b     #$1, (a5, d3.l * 2)
003a04: 2025         move.l     -(a5), d0
003a06: 30386c58     move.w     $6c58.w, d0
003a0a: 000d         .dc.w      $000d
003a0c: 0d4d656d     movep.l    $656d(a5), d6
003a10: 20706f696e74 movea.l    ([$6e74, a0]), a0
003a16: 6564         bcs.b      $3a7c
003a18: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
003a1e: 2041         movea.l    d1, a0
003a20: 373a0d53     move.w     $4775(pc), -(a3)
003a24: 3700         move.w     d0, -(a3)
003a26: 2025         move.l     -(a5), d0
003a28: 30386c58     move.w     $6c58.w, d0
003a2c: 000d         .dc.w      $000d
003a2e: 0d4d656d     movep.l    $656d(a5), d6
003a32: 20706f696e74 movea.l    ([$6e74, a0]), a0
003a38: 6564         bcs.b      $3a9e
003a3a: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
003a40: 20284135     move.l     $4135(a0), d0
003a44: 292c2069     move.l     $2069(a4), -(a4)
003a48: 652e         bcs.b      $3a78
003a4a: 2063         movea.l    -(a3), a0
003a4c: 6f6e         ble.b      $3abc
003a4e: 7420         moveq      #$20, d2
003a50: 6f66         ble.b      $3ab8
003a52: 2041         movea.l    d1, a0
003a54: 353a0d4d     move.w     $47a3(pc), -(a2)
003a58: 353a0020     move.w     $3a7a(pc), -(a2)
003a5c: 2530386c     move.l     $6c(a0, d3.l), -(a2)
003a60: 5800         addq.b     #$4, d0
003a62: 0d0d5043     movep.w    $5043(a5), d6
003a66: 3a20         move.w     -(a0), d5
003a68: 2530386c     move.l     $6c(a0, d3.l), -(a2)
003a6c: 5820         addq.b     #$4, -(a0)
003a6e: 2043         movea.l    d3, a0
003a70: 433a2025     chk.l      $5a97(pc), d1
003a74: 30325820     move.w     $20(a2, d5.l), d0
003a78: 2825         move.l     -(a5), d4
003a7a: 6325         bls.b      $3aa1
003a7c: 6325         bls.b      $3aa3
003a7e: 6325         bls.b      $3aa5
003a80: 6325         bls.b      $3aa7
003a82: 6329         bls.b      $3aad
003a84: 0d00         btst.l     d6, d0
003a86: 4e550000     link.w     a5, #$0
003a8a: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
003a8e: 2800         move.l     d0, d4
003a90: 7204         moveq      #$4, d1
003a92: 7044         moveq      #$44, d0
003a94: 610020c4     bsr.w      $5b5a
003a98: 2440         movea.l    d0, a2
003a9a: 3a12         move.w     (a2), d5
003a9c: 601c         bra.b      $3aba
003a9e: 4a92         tst.l      (a2)
003aa0: 6718         beq.b      $3aba
003aa2: 2052         movea.l    (a2), a0
003aa4: 7000         moveq      #$0, d0
003aa6: 3010         move.w     (a0), d0
003aa8: 3204         move.w     d4, d1
003aaa: 48c1         ext.l      d1
003aac: b081         cmp.l      d1, d0
003aae: 660a         bne.b      $3aba
003ab0: 2052         movea.l    (a2), a0
003ab2: 7000         moveq      #$0, d0
003ab4: 30280002     move.w     $2(a0), d0
003ab8: 6006         bra.b      $3ac0
003aba: 588a         addq.l     #$4, a2
003abc: 5345         subq.w     #$1, d5
003abe: 6cde         bge.b      $3a9e
003ac0: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
003ac6: 4e5d         unlk       a5
003ac8: 4e75         rts        
003aca: 48e74000     movem.l    d1, -(a7)
003ace: 203c00000000 move.l     #$0, d0
003ad4: 223c00000001 move.l     #$1, d1
003ada: 4e40         trap       #$0
003adc: 0057640c     ori.w      #$640c, (a7)
003ae0: 2d41800c     move.l     d1, -$7ff4(a6)
003ae4: 70ff         moveq      #$ff, d0
003ae6: 4cdf0002     movem.l    (a7)+, d1
003aea: 4e75         rts        
003aec: 4280         clr.l      d0
003aee: 3001         move.w     d1, d0
003af0: 4cdf0002     movem.l    (a7)+, d1
003af4: 4e75         rts        
003af6: 48e74000     movem.l    d1, -(a7)
003afa: 203c00000000 move.l     #$0, d0
003b00: 223c00000000 move.l     #$0, d1
003b06: 4e40         trap       #$0
003b08: 005764e0     ori.w      #$64e0, (a7)
003b0c: 60d2         bra.b      $3ae0
003b0e: 48e740e0     movem.l    d1/a0-a2, -(a7)
003b12: 207900000000 movea.l    $0.l, a0
003b18: 2268004c     movea.l    $4c(a0), a1
003b1c: 4280         clr.l      d0
003b1e: 10290370     move.b     $370(a1), d0
003b22: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003b26: 4e75         rts        
003b28: 48e740e0     movem.l    d1/a0-a2, -(a7)
003b2c: 207900000000 movea.l    $0.l, a0
003b32: 2268004c     movea.l    $4c(a0), a1
003b36: 81a90374     or.l       d0, $374(a1)
003b3a: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003b3e: 4e75         rts        
003b40: 48e740e0     movem.l    d1/a0-a2, -(a7)
003b44: 207900000000 movea.l    $0.l, a0
003b4a: 2268004c     movea.l    $4c(a0), a1
003b4e: 4480         neg.l      d0
003b50: c1a90374     and.l      d0, $374(a1)
003b54: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003b58: 4e75         rts        
003b5a: 4e550000     link.w     a5, #$0
003b5e: 48e7c080     movem.l    d0-d1/a0, -(a7)
003b62: 61000612     bsr.w      $4176
003b66: 4a00         tst.b      d0
003b68: 660000fa     bne.w      $3c64
003b6c: 7201         moveq      #$1, d1
003b6e: 41fa04da     lea.l      $404a(pc), a0
003b72: 2008         move.l     a0, d0
003b74: 610006b0     bsr.w      $4226
003b78: 2d4089e0     move.l     d0, -$7620(a6)
003b7c: 6c04         bge.b      $3b82
003b7e: 70ff         moveq      #$ff, d0
003b80: 6062         bra.b      $3be4
003b82: 7201         moveq      #$1, d1
003b84: 41fa04d5     lea.l      $405b(pc), a0
003b88: 2008         move.l     a0, d0
003b8a: 6100069a     bsr.w      $4226
003b8e: 2d4089e4     move.l     d0, -$761c(a6)
003b92: 6c14         bge.b      $3ba8
003b94: 202e89e0     move.l     -$7620(a6), d0
003b98: 61001a04     bsr.w      $559e
003b9c: 72ff         moveq      #$ff, d1
003b9e: b280         cmp.l      d0, d1
003ba0: 670000c2     beq.w      $3c64
003ba4: 70ff         moveq      #$ff, d0
003ba6: 6038         bra.b      $3be0
003ba8: 7201         moveq      #$1, d1
003baa: 41fa04c7     lea.l      $4073(pc), a0
003bae: 2008         move.l     a0, d0
003bb0: 61000674     bsr.w      $4226
003bb4: 2d4089e8     move.l     d0, -$7618(a6)
003bb8: 6c32         bge.b      $3bec
003bba: 202e89e0     move.l     -$7620(a6), d0
003bbe: 610019de     bsr.w      $559e
003bc2: 72ff         moveq      #$ff, d1
003bc4: b280         cmp.l      d0, d1
003bc6: 6700009c     beq.w      $3c64
003bca: 202e89e4     move.l     -$761c(a6), d0
003bce: 610019ce     bsr.w      $559e
003bd2: 72ff         moveq      #$ff, d1
003bd4: b280         cmp.l      d0, d1
003bd6: 6700008c     beq.w      $3c64
003bda: 70ff         moveq      #$ff, d0
003bdc: 2d4089e8     move.l     d0, -$7618(a6)
003be0: 2d4089e4     move.l     d0, -$761c(a6)
003be4: 2d4089e0     move.l     d0, -$7620(a6)
003be8: 6000007a     bra.w      $3c64
003bec: 4aae89ec     tst.l      -$7614(a6)
003bf0: 6630         bne.b      $3c22
003bf2: 610005a6     bsr.w      $419a
003bf6: 4a00         tst.b      d0
003bf8: 6728         beq.b      $3c22
003bfa: 202e828c     move.l     -$7d74(a6), d0
003bfe: 5280         addq.l     #$1, d0
003c00: 2200         move.l     d0, d1
003c02: 2017         move.l     (a7), d0
003c04: 610004a0     bsr.w      $40a6
003c08: 72ff         moveq      #$ff, d1
003c0a: b280         cmp.l      d0, d1
003c0c: 6714         beq.b      $3c22
003c0e: 41ee89f0     lea.l      -$7610(a6), a0
003c12: 2208         move.l     a0, d1
003c14: 41ee8290     lea.l      -$7d70(a6), a0
003c18: 2008         move.l     a0, d0
003c1a: 6100f8a8     bsr.w      $34c4
003c1e: 4a80         tst.l      d0
003c20: 6646         bne.b      $3c68
003c22: 202e89e0     move.l     -$7620(a6), d0
003c26: 61001976     bsr.w      $559e
003c2a: 72ff         moveq      #$ff, d1
003c2c: b280         cmp.l      d0, d1
003c2e: 6734         beq.b      $3c64
003c30: 202e89e4     move.l     -$761c(a6), d0
003c34: 61001968     bsr.w      $559e
003c38: 72ff         moveq      #$ff, d1
003c3a: b280         cmp.l      d0, d1
003c3c: 6726         beq.b      $3c64
003c3e: 202e89e8     move.l     -$7618(a6), d0
003c42: 6100195a     bsr.w      $559e
003c46: 72ff         moveq      #$ff, d1
003c48: b280         cmp.l      d0, d1
003c4a: 6718         beq.b      $3c64
003c4c: 70ff         moveq      #$ff, d0
003c4e: 2d4089e8     move.l     d0, -$7618(a6)
003c52: 2d4089e4     move.l     d0, -$761c(a6)
003c56: 2d4089e0     move.l     d0, -$7620(a6)
003c5a: 70ff         moveq      #$ff, d0
003c5c: 2d4089f0     move.l     d0, -$7610(a6)
003c60: 42ae89ec     clr.l      -$7614(a6)
003c64: 70ff         moveq      #$ff, d0
003c66: 6002         bra.b      $3c6a
003c68: 2017         move.l     (a7), d0
003c6a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003c70: 4e5d         unlk       a5
003c72: 4e75         rts        
003c74: 4e550000     link.w     a5, #$0
003c78: 48e7c000     movem.l    d0-d1, -(a7)
003c7c: 610004f8     bsr.w      $4176
003c80: 4a00         tst.b      d0
003c82: 672a         beq.b      $3cae
003c84: 202e89e0     move.l     -$7620(a6), d0
003c88: 61001914     bsr.w      $559e
003c8c: 72ff         moveq      #$ff, d1
003c8e: b280         cmp.l      d0, d1
003c90: 671c         beq.b      $3cae
003c92: 202e89e4     move.l     -$761c(a6), d0
003c96: 61001906     bsr.w      $559e
003c9a: 72ff         moveq      #$ff, d1
003c9c: b280         cmp.l      d0, d1
003c9e: 670e         beq.b      $3cae
003ca0: 202e89e8     move.l     -$7618(a6), d0
003ca4: 610018f8     bsr.w      $559e
003ca8: 72ff         moveq      #$ff, d1
003caa: b280         cmp.l      d0, d1
003cac: 6604         bne.b      $3cb2
003cae: 70ff         moveq      #$ff, d0
003cb0: 6022         bra.b      $3cd4
003cb2: 202e89f0     move.l     -$7610(a6), d0
003cb6: 6100f7e8     bsr.w      $34a0
003cba: 70ff         moveq      #$ff, d0
003cbc: 2d4089e8     move.l     d0, -$7618(a6)
003cc0: 2d4089e4     move.l     d0, -$761c(a6)
003cc4: 2d4089e0     move.l     d0, -$7620(a6)
003cc8: 42ae89ec     clr.l      -$7614(a6)
003ccc: 70ff         moveq      #$ff, d0
003cce: 2d4089f0     move.l     d0, -$7610(a6)
003cd2: 7000         moveq      #$0, d0
003cd4: 4ced0002fffc movem.l    -$4(a5), d1
003cda: 4e5d         unlk       a5
003cdc: 4e75         rts        
003cde: 4e550000     link.w     a5, #$0
003ce2: 48e7c080     movem.l    d0-d1/a0, -(a7)
003ce6: 4fefffd4     lea.l      -$2c(a7), a7
003cea: 202e89f0     move.l     -$7610(a6), d0
003cee: 6100f826     bsr.w      $3516
003cf2: 41ef0004     lea.l      $4(a7), a0
003cf6: 2008         move.l     a0, d0
003cf8: 6100028e     bsr.w      $3f88
003cfc: 2e80         move.l     d0, (a7)
003cfe: 202e89f0     move.l     -$7610(a6), d0
003d02: 6100f842     bsr.w      $3546
003d06: 4a97         tst.l      (a7)
003d08: 6704         beq.b      $3d0e
003d0a: 2017         move.l     (a7), d0
003d0c: 6012         bra.b      $3d20
003d0e: 206f0030     movea.l    $30(a7), a0
003d12: 20af0004     move.l     $4(a7), (a0)
003d16: 216f00080004 move.l     $8(a7), $4(a0)
003d1c: 610002d2     bsr.w      $3ff0
003d20: 4fef002c     lea.l      $2c(a7), a7
003d24: 4ced0100fffc movem.l    -$4(a5), a0
003d2a: 4e5d         unlk       a5
003d2c: 4e75         rts        
003d2e: 4e550000     link.w     a5, #$0
003d32: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003d36: 4fefffd4     lea.l      -$2c(a7), a7
003d3a: 202e89f0     move.l     -$7610(a6), d0
003d3e: 6100f7d6     bsr.w      $3516
003d42: 41ef0004     lea.l      $4(a7), a0
003d46: 2008         move.l     a0, d0
003d48: 6100023e     bsr.w      $3f88
003d4c: 2e80         move.l     d0, (a7)
003d4e: 202e89f0     move.l     -$7610(a6), d0
003d52: 6100f7f2     bsr.w      $3546
003d56: 4a97         tst.l      (a7)
003d58: 6704         beq.b      $3d5e
003d5a: 2017         move.l     (a7), d0
003d5c: 605a         bra.b      $3db8
003d5e: 206f0030     movea.l    $30(a7), a0
003d62: 20af0004     move.l     $4(a7), (a0)
003d66: 216f00080004 move.l     $8(a7), $4(a0)
003d6c: 7001         moveq      #$1, d0
003d6e: c02f000c     and.b      $c(a7), d0
003d72: 206f0030     movea.l    $30(a7), a0
003d76: 11400008     move.b     d0, $8(a0)
003d7a: 206f0048     movea.l    $48(a7), a0
003d7e: 226f0030     movea.l    $30(a7), a1
003d82: 0c2900010008 cmpi.b     #$1, $8(a1)
003d88: 6606         bne.b      $3d90
003d8a: 43ef000e     lea.l      $e(a7), a1
003d8e: 6004         bra.b      $3d94
003d90: 43ef0016     lea.l      $16(a7), a1
003d94: 2091         move.l     (a1), (a0)
003d96: 216900040004 move.l     $4(a1), $4(a0)
003d9c: 7064         moveq      #$64, d0
003d9e: c1ef0022     muls.w     $22(a7), d0
003da2: 206f0044     movea.l    $44(a7), a0
003da6: 2080         move.l     d0, (a0)
003da8: 7002         moveq      #$2, d0
003daa: c02f000c     and.b      $c(a7), d0
003dae: 206f004c     movea.l    $4c(a7), a0
003db2: 1080         move.b     d0, (a0)
003db4: 6100023a     bsr.w      $3ff0
003db8: 4fef002c     lea.l      $2c(a7), a7
003dbc: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003dc2: 4e5d         unlk       a5
003dc4: 4e75         rts        
003dc6: 4e550000     link.w     a5, #$0
003dca: 48e7c080     movem.l    d0-d1/a0, -(a7)
003dce: 4fefffcc     lea.l      -$34(a7), a7
003dd2: 202e89f0     move.l     -$7610(a6), d0
003dd6: 6100f73e     bsr.w      $3516
003dda: 41d7         lea.l      (a7), a0
003ddc: 2008         move.l     a0, d0
003dde: 610001a8     bsr.w      $3f88
003de2: 2f400028     move.l     d0, $28(a7)
003de6: 4aaf0028     tst.l      $28(a7)
003dea: 670c         beq.b      $3df8
003dec: 202e89f0     move.l     -$7610(a6), d0
003df0: 6100f754     bsr.w      $3546
003df4: 60000180     bra.w      $3f76
003df8: 302f0020     move.w     $20(a7), d0
003dfc: 48c0         ext.l      d0
003dfe: 5280         addq.l     #$1, d0
003e00: e788         lsl.l      #$3, d0
003e02: 7216         moveq      #$16, d1
003e04: d081         add.l      d1, d0
003e06: 2f400030     move.l     d0, $30(a7)
003e0a: 202f0030     move.l     $30(a7), d0
003e0e: 610017d2     bsr.w      $55e2
003e12: 206f0038     movea.l    $38(a7), a0
003e16: 2080         move.l     d0, (a0)
003e18: 660c         bne.b      $3e26
003e1a: 202e89f0     move.l     -$7610(a6), d0
003e1e: 6100f726     bsr.w      $3546
003e22: 60000112     bra.w      $3f36
003e26: 206f0038     movea.l    $38(a7), a0
003e2a: 2050         movea.l    (a0), a0
003e2c: 10af0009     move.b     $9(a7), (a0)
003e30: 7001         moveq      #$1, d0
003e32: c02f0008     and.b      $8(a7), d0
003e36: 206f0038     movea.l    $38(a7), a0
003e3a: 2050         movea.l    (a0), a0
003e3c: 11400001     move.b     d0, $1(a0)
003e40: 206f0038     movea.l    $38(a7), a0
003e44: 2050         movea.l    (a0), a0
003e46: 21570002     move.l     (a7), $2(a0)
003e4a: 216f00040006 move.l     $4(a7), $6(a0)
003e50: 7004         moveq      #$4, d0
003e52: c02f0008     and.b      $8(a7), d0
003e56: 206f0038     movea.l    $38(a7), a0
003e5a: 2050         movea.l    (a0), a0
003e5c: 1140000a     move.b     d0, $a(a0)
003e60: 302f0020     move.w     $20(a7), d0
003e64: 5440         addq.w     #$2, d0
003e66: 206f0038     movea.l    $38(a7), a0
003e6a: 2050         movea.l    (a0), a0
003e6c: 3140000c     move.w     d0, $c(a0)
003e70: 206f0038     movea.l    $38(a7), a0
003e74: 2050         movea.l    (a0), a0
003e76: 216f000a000e move.l     $a(a7), $e(a0)
003e7c: 216f000e0012 move.l     $e(a7), $12(a0)
003e82: 302f0020     move.w     $20(a7), d0
003e86: 48c0         ext.l      d0
003e88: 5280         addq.l     #$1, d0
003e8a: 206f0038     movea.l    $38(a7), a0
003e8e: 2050         movea.l    (a0), a0
003e90: e788         lsl.l      #$3, d0
003e92: d1c0         adda.l     d0, a0
003e94: 216f0012000e move.l     $12(a7), $e(a0)
003e9a: 216f00160012 move.l     $16(a7), $12(a0)
003ea0: 4a6f0020     tst.w      $20(a7)
003ea4: 6f0000a6     ble.w      $3f4c
003ea8: 42a7         clr.l      -(a7)
003eaa: 302f0026     move.w     $26(a7), d0
003eae: 48c0         ext.l      d0
003eb0: 81fc06d6     divs.w     #$6d6, d0
003eb4: 4840         swap       d0
003eb6: 48c0         ext.l      d0
003eb8: e788         lsl.l      #$3, d0
003eba: 2200         move.l     d0, d1
003ebc: 202e89e8     move.l     -$7618(a6), d0
003ec0: 610016d0     bsr.w      $5592
003ec4: 588f         addq.l     #$4, a7
003ec6: 72ff         moveq      #$ff, d1
003ec8: b280         cmp.l      d0, d1
003eca: 6758         beq.b      $3f24
003ecc: 42af002c     clr.l      $2c(a7)
003ed0: 606c         bra.b      $3f3e
003ed2: 302f0022     move.w     $22(a7), d0
003ed6: 48c0         ext.l      d0
003ed8: d0af002c     add.l      $2c(a7), d0
003edc: 4c7c0801000006d6 divs.l     #$6d6, d0
003ee4: 4a81         tst.l      d1
003ee6: 6614         bne.b      $3efc
003ee8: 42a7         clr.l      -(a7)
003eea: 7200         moveq      #$0, d1
003eec: 202e89e8     move.l     -$7618(a6), d0
003ef0: 610016a0     bsr.w      $5592
003ef4: 588f         addq.l     #$4, a7
003ef6: 72ff         moveq      #$ff, d1
003ef8: b280         cmp.l      d0, d1
003efa: 6728         beq.b      $3f24
003efc: 48780008     pea.l      $8.w
003f00: 206f003c     movea.l    $3c(a7), a0
003f04: 700e         moveq      #$e, d0
003f06: d090         add.l      (a0), d0
003f08: 222f0030     move.l     $30(a7), d1
003f0c: 5281         addq.l     #$1, d1
003f0e: e789         lsl.l      #$3, d1
003f10: d081         add.l      d1, d0
003f12: 2200         move.l     d0, d1
003f14: 202e89e8     move.l     -$7618(a6), d0
003f18: 61001668     bsr.w      $5582
003f1c: 588f         addq.l     #$4, a7
003f1e: 7208         moveq      #$8, d1
003f20: b280         cmp.l      d0, d1
003f22: 6716         beq.b      $3f3a
003f24: 202e89f0     move.l     -$7610(a6), d0
003f28: 6100f61c     bsr.w      $3546
003f2c: 206f0038     movea.l    $38(a7), a0
003f30: 2010         move.l     (a0), d0
003f32: 610016ba     bsr.w      $55ee
003f36: 70ff         moveq      #$ff, d0
003f38: 6040         bra.b      $3f7a
003f3a: 52af002c     addq.l     #$1, $2c(a7)
003f3e: 302f0020     move.w     $20(a7), d0
003f42: 48c0         ext.l      d0
003f44: b0af002c     cmp.l      $2c(a7), d0
003f48: 6e00ff88     bgt.w      $3ed2
003f4c: 202e89f0     move.l     -$7610(a6), d0
003f50: 6100f5f4     bsr.w      $3546
003f54: 206f0048     movea.l    $48(a7), a0
003f58: 20af0030     move.l     $30(a7), (a0)
003f5c: 61000092     bsr.w      $3ff0
003f60: 2f400028     move.l     d0, $28(a7)
003f64: 70ff         moveq      #$ff, d0
003f66: b0af0028     cmp.l      $28(a7), d0
003f6a: 660a         bne.b      $3f76
003f6c: 206f0038     movea.l    $38(a7), a0
003f70: 2010         move.l     (a0), d0
003f72: 6100167a     bsr.w      $55ee
003f76: 202f0028     move.l     $28(a7), d0
003f7a: 4fef0034     lea.l      $34(a7), a7
003f7e: 4ced0100fffc movem.l    -$4(a5), a0
003f84: 4e5d         unlk       a5
003f86: 4e75         rts        
003f88: 4e550000     link.w     a5, #$0
003f8c: 48e7c000     movem.l    d0-d1, -(a7)
003f90: 598f         subq.l     #$4, a7
003f92: 610001e2     bsr.w      $4176
003f96: 4a00         tst.b      d0
003f98: 6604         bne.b      $3f9e
003f9a: 70ff         moveq      #$ff, d0
003f9c: 6046         bra.b      $3fe4
003f9e: 610001fa     bsr.w      $419a
003fa2: 4a00         tst.b      d0
003fa4: 6606         bne.b      $3fac
003fa6: 70ff         moveq      #$ff, d0
003fa8: 2e80         move.l     d0, (a7)
003faa: 6036         bra.b      $3fe2
003fac: 6100023e     bsr.w      $41ec
003fb0: 4a00         tst.b      d0
003fb2: 67f2         beq.b      $3fa6
003fb4: 61000254     bsr.w      $420a
003fb8: 4a00         tst.b      d0
003fba: 660c         bne.b      $3fc8
003fbc: 7002         moveq      #$2, d0
003fbe: b0ae8266     cmp.l      -$7d9a(a6), d0
003fc2: 66e2         bne.b      $3fa6
003fc4: 70fe         moveq      #$fe, d0
003fc6: 60e0         bra.b      $3fa8
003fc8: 48780028     pea.l      $28.w
003fcc: 222f0008     move.l     $8(a7), d1
003fd0: 202e89e4     move.l     -$761c(a6), d0
003fd4: 610015ac     bsr.w      $5582
003fd8: 588f         addq.l     #$4, a7
003fda: 7228         moveq      #$28, d1
003fdc: b280         cmp.l      d0, d1
003fde: 66c6         bne.b      $3fa6
003fe0: 4297         clr.l      (a7)
003fe2: 2017         move.l     (a7), d0
003fe4: 588f         addq.l     #$4, a7
003fe6: 4ced0002fffc movem.l    -$4(a5), d1
003fec: 4e5d         unlk       a5
003fee: 4e75         rts        
003ff0: 4e550000     link.w     a5, #$0
003ff4: 48e7c000     movem.l    d0-d1, -(a7)
003ff8: 52ae89ec     addq.l     #$1, -$7614(a6)
003ffc: 202e89ec     move.l     -$7614(a6), d0
004000: 5380         subq.l     #$1, d0
004002: 4c7c0801000003e8 divs.l     #$3e8, d0
00400a: 4a81         tst.l      d1
00400c: 6618         bne.b      $4026
00400e: 42a7         clr.l      -(a7)
004010: 7200         moveq      #$0, d1
004012: 202e89e4     move.l     -$761c(a6), d0
004016: 6100157a     bsr.w      $5592
00401a: 588f         addq.l     #$4, a7
00401c: 72ff         moveq      #$ff, d1
00401e: b280         cmp.l      d0, d1
004020: 6604         bne.b      $4026
004022: 70ff         moveq      #$ff, d0
004024: 601a         bra.b      $4040
004026: 610001e2     bsr.w      $420a
00402a: 4a00         tst.b      d0
00402c: 6610         bne.b      $403e
00402e: 7002         moveq      #$2, d0
004030: b0ae8266     cmp.l      -$7d9a(a6), d0
004034: 6604         bne.b      $403a
004036: 7002         moveq      #$2, d0
004038: 6006         bra.b      $4040
00403a: 7001         moveq      #$1, d0
00403c: 6002         bra.b      $4040
00403e: 7000         moveq      #$0, d0
004040: 4ced0002fffc movem.l    -$4(a5), d1
004046: 4e5d         unlk       a5
004048: 4e75         rts        
00404a: 2f7061636b2f72705f67656e move.l     ([$6b2f, a0], $72705f67), $656e(a7)
004056: 5f696e66     subq.w     #$7, $6e66(a1)
00405a: 002f72706163 ori.b      #$70, $6163(a7)
004060: 6b2f         bmi.b      $4091
004062: 7270         moveq      #$70, d1
004064: 5f706c61     subq.w     #$7, $61(a0, d6.l)
004068: 6e6e         bgt.b      $40d8
00406a: 6564         bcs.b      $40d0
00406c: 5f726f757465002f subq.w     #$7, ([$7465002f, a2])
004074: 7270         moveq      #$70, d1
004076: 6163         bsr.b      $40db
004078: 6b2f         bmi.b      $40a9
00407a: 7270         moveq      #$70, d1
00407c: 5f696e74     subq.w     #$7, $6e74(a1)
004080: 6572         bcs.b      $40f4
004082: 6d65         blt.b      $40e9
004084: 6469         bcc.b      $40ef
004086: 6174         bsr.b      $40fc
004088: 6573         bcs.b      $40fd
00408a: 00004e55     ori.b      #$55, d0
00408e: 000048e7     ori.b      #$e7, d0
004092: c000         and.b      d0, d0
004094: 202e89ec     move.l     -$7614(a6), d0
004098: d0af0004     add.l      $4(a7), d0
00409c: 2200         move.l     d0, d1
00409e: 2017         move.l     (a7), d0
0040a0: 6104         bsr.b      $40a6
0040a2: 4e5d         unlk       a5
0040a4: 4e75         rts        
0040a6: 4e550000     link.w     a5, #$0
0040aa: 48e7c000     movem.l    d0-d1, -(a7)
0040ae: 598f         subq.l     #$4, a7
0040b0: 610000c4     bsr.w      $4176
0040b4: 4a00         tst.b      d0
0040b6: 675e         beq.b      $4116
0040b8: 610000e0     bsr.w      $419a
0040bc: 4a00         tst.b      d0
0040be: 6756         beq.b      $4116
0040c0: 2d6f000889ec move.l     $8(a7), -$7614(a6)
0040c6: 4297         clr.l      (a7)
0040c8: 61000122     bsr.w      $41ec
0040cc: 4a00         tst.b      d0
0040ce: 660e         bne.b      $40de
0040d0: 202e828c     move.l     -$7d74(a6), d0
0040d4: 5280         addq.l     #$1, d0
0040d6: 2d4089ec     move.l     d0, -$7614(a6)
0040da: 70ff         moveq      #$ff, d0
0040dc: 2e80         move.l     d0, (a7)
0040de: 6100012a     bsr.w      $420a
0040e2: 4a00         tst.b      d0
0040e4: 660a         bne.b      $40f0
0040e6: 2d6e827489ec move.l     -$7d8c(a6), -$7614(a6)
0040ec: 70ff         moveq      #$ff, d0
0040ee: 2e80         move.l     d0, (a7)
0040f0: 42a7         clr.l      -(a7)
0040f2: 202e89ec     move.l     -$7614(a6), d0
0040f6: 5380         subq.l     #$1, d0
0040f8: 4c7c0801000003e8 divs.l     #$3e8, d0
004100: 7028         moveq      #$28, d0
004102: 4c001001     mulu.l     d0, d1
004106: 202e89e4     move.l     -$761c(a6), d0
00410a: 61001486     bsr.w      $5592
00410e: 588f         addq.l     #$4, a7
004110: 72ff         moveq      #$ff, d1
004112: b280         cmp.l      d0, d1
004114: 6604         bne.b      $411a
004116: 70ff         moveq      #$ff, d0
004118: 6002         bra.b      $411c
00411a: 2017         move.l     (a7), d0
00411c: 588f         addq.l     #$4, a7
00411e: 4e5d         unlk       a5
004120: 4e75         rts        
004122: 4e550000     link.w     a5, #$0
004126: 48e7c080     movem.l    d0-d1/a0, -(a7)
00412a: 6100004a     bsr.w      $4176
00412e: 4a00         tst.b      d0
004130: 6708         beq.b      $413a
004132: 61000066     bsr.w      $419a
004136: 4a00         tst.b      d0
004138: 6604         bne.b      $413e
00413a: 70ff         moveq      #$ff, d0
00413c: 600a         bra.b      $4148
00413e: 206f0004     movea.l    $4(a7), a0
004142: 20ae89ec     move.l     -$7614(a6), (a0)
004146: 7000         moveq      #$0, d0
004148: 4ced0100fffc movem.l    -$4(a5), a0
00414e: 4e5d         unlk       a5
004150: 4e75         rts        
004152: 4e550000     link.w     a5, #$0
004156: 48e78000     movem.l    d0, -(a7)
00415a: 6100001a     bsr.w      $4176
00415e: 4a00         tst.b      d0
004160: 6708         beq.b      $416a
004162: 61000036     bsr.w      $419a
004166: 4a00         tst.b      d0
004168: 6604         bne.b      $416e
00416a: 70ff         moveq      #$ff, d0
00416c: 6004         bra.b      $4172
00416e: 202e8288     move.l     -$7d78(a6), d0
004172: 4e5d         unlk       a5
004174: 4e75         rts        
004176: 4e550000     link.w     a5, #$0
00417a: 48e78000     movem.l    d0, -(a7)
00417e: 4aae89e0     tst.l      -$7620(a6)
004182: 6d10         blt.b      $4194
004184: 4aae89e4     tst.l      -$761c(a6)
004188: 6d0a         blt.b      $4194
00418a: 4aae89e8     tst.l      -$7618(a6)
00418e: 6d04         blt.b      $4194
004190: 7001         moveq      #$1, d0
004192: 6002         bra.b      $4196
004194: 7000         moveq      #$0, d0
004196: 4e5d         unlk       a5
004198: 4e75         rts        
00419a: 4e550000     link.w     a5, #$0
00419e: 48e7c080     movem.l    d0-d1/a0, -(a7)
0041a2: 4878004a     pea.l      $4a.w
0041a6: 41ee8266     lea.l      -$7d9a(a6), a0
0041aa: 2208         move.l     a0, d1
0041ac: 202e89e0     move.l     -$7620(a6), d0
0041b0: 610013d0     bsr.w      $5582
0041b4: 588f         addq.l     #$4, a7
0041b6: 724a         moveq      #$4a, d1
0041b8: b280         cmp.l      d0, d1
0041ba: 660c         bne.b      $41c8
0041bc: 7001         moveq      #$1, d0
0041be: b0ae8266     cmp.l      -$7d9a(a6), d0
0041c2: 6704         beq.b      $41c8
0041c4: 7001         moveq      #$1, d0
0041c6: 6002         bra.b      $41ca
0041c8: 7000         moveq      #$0, d0
0041ca: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0041d0: 4e5d         unlk       a5
0041d2: 4e75         rts        
0041d4: 4e550000     link.w     a5, #$0
0041d8: 48e78000     movem.l    d0, -(a7)
0041dc: 4aae8266     tst.l      -$7d9a(a6)
0041e0: 6604         bne.b      $41e6
0041e2: 7001         moveq      #$1, d0
0041e4: 6002         bra.b      $41e8
0041e6: 7000         moveq      #$0, d0
0041e8: 4e5d         unlk       a5
0041ea: 4e75         rts        
0041ec: 4e550000     link.w     a5, #$0
0041f0: 48e78000     movem.l    d0, -(a7)
0041f4: 202e828c     move.l     -$7d74(a6), d0
0041f8: 5280         addq.l     #$1, d0
0041fa: b0ae89ec     cmp.l      -$7614(a6), d0
0041fe: 6e04         bgt.b      $4204
004200: 7001         moveq      #$1, d0
004202: 6002         bra.b      $4206
004204: 7000         moveq      #$0, d0
004206: 4e5d         unlk       a5
004208: 4e75         rts        
00420a: 4e550000     link.w     a5, #$0
00420e: 48e78000     movem.l    d0, -(a7)
004212: 202e89ec     move.l     -$7614(a6), d0
004216: b0ae8274     cmp.l      -$7d8c(a6), d0
00421a: 6e04         bgt.b      $4220
00421c: 7001         moveq      #$1, d0
00421e: 6002         bra.b      $4222
004220: 7000         moveq      #$0, d0
004222: 4e5d         unlk       a5
004224: 4e75         rts        
004226: 4e550000     link.w     a5, #$0
00422a: 48e7c000     movem.l    d0-d1, -(a7)
00422e: 6026         bra.b      $4256
004230: 7201         moveq      #$1, d1
004232: 2017         move.l     (a7), d0
004234: 610002fc     bsr.w      $4532
004238: 603a         bra.b      $4274
00423a: 48780003     pea.l      $3.w
00423e: 7202         moveq      #$2, d1
004240: 202f0004     move.l     $4(a7), d0
004244: 61000490     bsr.w      $46d6
004248: 588f         addq.l     #$4, a7
00424a: 6028         bra.b      $4274
00424c: 7203         moveq      #$3, d1
00424e: 2017         move.l     (a7), d0
004250: 610002fa     bsr.w      $454c
004254: 601e         bra.b      $4274
004256: 7000         moveq      #$0, d0
004258: 102f0007     move.b     $7(a7), d0
00425c: 0c4000ff     cmpi.w     #$ff, d0
004260: 6212         bhi.b      $4274
004262: 0c000001     cmpi.b     #$1, d0
004266: 67c8         beq.b      $4230
004268: 0c000002     cmpi.b     #$2, d0
00426c: 67cc         beq.b      $423a
00426e: 0c000003     cmpi.b     #$3, d0
004272: 67d8         beq.b      $424c
004274: 4e5d         unlk       a5
004276: 4e75         rts        
004278: 4e550000     link.w     a5, #$0
00427c: 48e7c000     movem.l    d0-d1, -(a7)
004280: 598f         subq.l     #$4, a7
004282: 7000         moveq      #$0, d0
004284: 102f000b     move.b     $b(a7), d0
004288: 2200         move.l     d0, d1
00428a: 202f0004     move.l     $4(a7), d0
00428e: 6100ff96     bsr.w      $4226
004292: 2e80         move.l     d0, (a7)
004294: 70ff         moveq      #$ff, d0
004296: b097         cmp.l      (a7), d0
004298: 6616         bne.b      $42b0
00429a: 2f2f0014     move.l     $14(a7), -(a7)
00429e: 7204         moveq      #$4, d1
0042a0: 203c00000099 move.l     #$99, d0
0042a6: 61000102     bsr.w      $43aa
0042aa: 588f         addq.l     #$4, a7
0042ac: 61000122     bsr.w      $43d0
0042b0: 2017         move.l     (a7), d0
0042b2: 588f         addq.l     #$4, a7
0042b4: 4e5d         unlk       a5
0042b6: 4e75         rts        
0042b8: 4e550000     link.w     a5, #$0
0042bc: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0042c0: 7200         moveq      #$0, d1
0042c2: 41ee89f4     lea.l      -$760c(a6), a0
0042c6: 2008         move.l     a0, d0
0042c8: 61001a08     bsr.w      $5cd2
0042cc: 2440         movea.l    d0, a2
0042ce: 70ff         moveq      #$ff, d0
0042d0: b08a         cmp.l      a2, d0
0042d2: 6614         bne.b      $42e8
0042d4: 41ee89f4     lea.l      -$760c(a6), a0
0042d8: 2208         move.l     a0, d1
0042da: 41fa0072     lea.l      $434e(pc), a0
0042de: 2008         move.l     a0, d0
0042e0: 61001244     bsr.w      $5526
0042e4: 7000         moveq      #$0, d0
0042e6: 6016         bra.b      $42fe
0042e8: 202a0030     move.l     $30(a2), d0
0042ec: d08a         add.l      a2, d0
0042ee: 2800         move.l     d0, d4
0042f0: 2204         move.l     d4, d1
0042f2: 200a         move.l     a2, d0
0042f4: 6112         bsr.b      $4308
0042f6: 200a         move.l     a2, d0
0042f8: 61001a0e     bsr.w      $5d08
0042fc: 7001         moveq      #$1, d0
0042fe: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
004304: 4e5d         unlk       a5
004306: 4e75         rts        
004308: 4e550000     link.w     a5, #$0
00430c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004310: 518f         subq.l     #$8, a7
004312: 41ee82b0     lea.l      -$7d50(a6), a0
004316: 2f480004     move.l     a0, $4(a7)
00431a: 4297         clr.l      (a7)
00431c: 601c         bra.b      $433a
00431e: 206f000c     movea.l    $c(a7), a0
004322: 2017         move.l     (a7), d0
004324: 7200         moveq      #$0, d1
004326: 32300a00     move.w     (a0, d0.l * 2), d1
00432a: d2af0008     add.l      $8(a7), d1
00432e: 206f0004     movea.l    $4(a7), a0
004332: 2017         move.l     (a7), d0
004334: 21810c00     move.l     d1, (a0, d0.l * 4)
004338: 5297         addq.l     #$1, (a7)
00433a: 0c97000000c4 cmpi.l     #$c4, (a7)
004340: 6ddc         blt.b      $431e
004342: 508f         addq.l     #$8, a7
004344: 4ced0100fffc movem.l    -$4(a5), a0
00434a: 4e5d         unlk       a5
00434c: 4e75         rts        
00434e: 434f         .dc.w      $434f
004350: 4f52         .dc.w      $4f52
004352: 445f         neg.w      (a7)+
004354: 696e         bvs.b      $43c4
004356: 6974         bvs.b      $43cc
004358: 3a20         move.w     -(a0), d5
00435a: 4e6f         move       usp, a7
00435c: 2027         move.l     -(a7), d0
00435e: 25732720210d0000 move.l     $210d(a3, d2.w * 8), $0(a2)
004366: 4e550000     link.w     a5, #$0
00436a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00436e: 518f         subq.l     #$8, a7
004370: 203c00000100 move.l     #$100, d0
004376: d0af0008     add.l      $8(a7), d0
00437a: 2e80         move.l     d0, (a7)
00437c: 1f6f000f0004 move.b     $f(a7), $4(a7)
004382: 202f001c     move.l     $1c(a7), d0
004386: e080         asr.l      #$8, d0
004388: 1f400005     move.b     d0, $5(a7)
00438c: 1f6f001f0006 move.b     $1f(a7), $6(a7)
004392: 1f7c00ff0007 move.b     #$ff, $7(a7)
004398: 41d7         lea.l      (a7), a0
00439a: 2008         move.l     a0, d0
00439c: 6146         bsr.b      $43e4
00439e: 508f         addq.l     #$8, a7
0043a0: 4ced0100fffc movem.l    -$4(a5), a0
0043a6: 4e5d         unlk       a5
0043a8: 4e75         rts        
0043aa: 4e550000     link.w     a5, #$0
0043ae: 48e7c000     movem.l    d0-d1, -(a7)
0043b2: 2f2f0010     move.l     $10(a7), -(a7)
0043b6: 222f0008     move.l     $8(a7), d1
0043ba: 202f0004     move.l     $4(a7), d0
0043be: 61a6         bsr.b      $4366
0043c0: 588f         addq.l     #$4, a7
0043c2: 203c00002410 move.l     #$2410, d0
0043c8: 610000bc     bsr.w      $4486
0043cc: 4e5d         unlk       a5
0043ce: 4e75         rts        
0043d0: 4e550000     link.w     a5, #$0
0043d4: 48e78000     movem.l    d0, -(a7)
0043d8: 7000         moveq      #$0, d0
0043da: 61001650     bsr.w      $5a2c
0043de: 60f8         bra.b      $43d8
0043e0: 4e5d         unlk       a5
0043e2: 4e75         rts        
0043e4: 4e550000     link.w     a5, #$0
0043e8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0043ec: 4aae8a02     tst.l      -$75fe(a6)
0043f0: 6c16         bge.b      $4408
0043f2: 7203         moveq      #$3, d1
0043f4: 41fa002e     lea.l      $4424(pc), a0
0043f8: 2008         move.l     a0, d0
0043fa: 61000136     bsr.w      $4532
0043fe: 2d408a02     move.l     d0, -$75fe(a6)
004402: 6c04         bge.b      $4408
004404: 70ff         moveq      #$ff, d0
004406: 6012         bra.b      $441a
004408: 2f17         move.l     (a7), -(a7)
00440a: 222e8a02     move.l     -$75fe(a6), d1
00440e: 203c00007f23 move.l     #$7f23, d0
004414: 61000f7a     bsr.w      $5390
004418: 588f         addq.l     #$4, a7
00441a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004420: 4e5d         unlk       a5
004422: 4e75         rts        
004424: 2f636339     move.l     -(a3), $6339(a7)
004428: 3300         move.w     d0, -(a1)
00442a: 4e550000     link.w     a5, #$0
00442e: 48e7c080     movem.l    d0-d1/a0, -(a7)
004432: 518f         subq.l     #$8, a7
004434: 7201         moveq      #$1, d1
004436: 41fa00ce     lea.l      $4506(pc), a0
00443a: 2008         move.l     a0, d0
00443c: 610000f4     bsr.w      $4532
004440: 2f400004     move.l     d0, $4(a7)
004444: 72ff         moveq      #$ff, d1
004446: b280         cmp.l      d0, d1
004448: 6722         beq.b      $446c
00444a: 48780004     pea.l      $4.w
00444e: 41ef0004     lea.l      $4(a7), a0
004452: 2208         move.l     a0, d1
004454: 202f0008     move.l     $8(a7), d0
004458: 61001128     bsr.w      $5582
00445c: 588f         addq.l     #$4, a7
00445e: 7204         moveq      #$4, d1
004460: b280         cmp.l      d0, d1
004462: 670c         beq.b      $4470
004464: 202f0004     move.l     $4(a7), d0
004468: 61001134     bsr.w      $559e
00446c: 70ff         moveq      #$ff, d0
00446e: 600a         bra.b      $447a
004470: 202f0004     move.l     $4(a7), d0
004474: 61001128     bsr.w      $559e
004478: 2017         move.l     (a7), d0
00447a: 508f         addq.l     #$8, a7
00447c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004482: 4e5d         unlk       a5
004484: 4e75         rts        
004486: 4e550000     link.w     a5, #$0
00448a: 48e7c000     movem.l    d0-d1, -(a7)
00448e: 2217         move.l     (a7), d1
004490: 6198         bsr.b      $442a
004492: 610003c6     bsr.w      $485a
004496: 72ff         moveq      #$ff, d1
004498: b280         cmp.l      d0, d1
00449a: 4ced0002fffc movem.l    -$4(a5), d1
0044a0: 4e5d         unlk       a5
0044a2: 4e75         rts        
0044a4: 4e550000     link.w     a5, #$0
0044a8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0044ac: 518f         subq.l     #$8, a7
0044ae: 7202         moveq      #$2, d1
0044b0: 41fa006a     lea.l      $451c(pc), a0
0044b4: 2008         move.l     a0, d0
0044b6: 6100007a     bsr.w      $4532
0044ba: 2f400004     move.l     d0, $4(a7)
0044be: 72ff         moveq      #$ff, d1
0044c0: b280         cmp.l      d0, d1
0044c2: 6728         beq.b      $44ec
0044c4: 6100192a     bsr.w      $5df0
0044c8: 2e80         move.l     d0, (a7)
0044ca: 48780004     pea.l      $4.w
0044ce: 41ef0004     lea.l      $4(a7), a0
0044d2: 2208         move.l     a0, d1
0044d4: 202f0008     move.l     $8(a7), d0
0044d8: 610010b0     bsr.w      $558a
0044dc: 588f         addq.l     #$4, a7
0044de: 7204         moveq      #$4, d1
0044e0: b280         cmp.l      d0, d1
0044e2: 670c         beq.b      $44f0
0044e4: 202f0004     move.l     $4(a7), d0
0044e8: 610010b4     bsr.w      $559e
0044ec: 70ff         moveq      #$ff, d0
0044ee: 600a         bra.b      $44fa
0044f0: 202f0004     move.l     $4(a7), d0
0044f4: 610010a8     bsr.w      $559e
0044f8: 7000         moveq      #$0, d0
0044fa: 508f         addq.l     #$8, a7
0044fc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004502: 4e5d         unlk       a5
004504: 4e75         rts        
004506: 2f63302f     move.l     -(a3), $302f(a7)
00450a: 5f313239     subq.b     #$7, $39(a1, d3.w)
00450e: 5f2f7061     subq.b     #$7, $7061(a7)
004512: 636b         bls.b      $457f
004514: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
00451a: 64002f63     bcc.w      $747f
00451e: 302f5f31     move.w     $5f31(a7), d0
004522: 32395f2f7061 move.w     $5f2f7061.l, d1
004528: 636b         bls.b      $4595
00452a: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
004530: 64004e55     bcc.w      $9387
004534: 000048e7     ori.b      #$e7, d0
004538: c000         and.b      d0, d0
00453a: 42a7         clr.l      -(a7)
00453c: 222f0008     move.l     $8(a7), d1
004540: 202f0004     move.l     $4(a7), d0
004544: 613e         bsr.b      $4584
004546: 588f         addq.l     #$4, a7
004548: 4e5d         unlk       a5
00454a: 4e75         rts        
00454c: 4e550000     link.w     a5, #$0
004550: 48e7c000     movem.l    d0-d1, -(a7)
004554: 48780001     pea.l      $1.w
004558: 222f0008     move.l     $8(a7), d1
00455c: 202f0004     move.l     $4(a7), d0
004560: 6122         bsr.b      $4584
004562: 588f         addq.l     #$4, a7
004564: 4e5d         unlk       a5
004566: 4e75         rts        
004568: 4e550000     link.w     a5, #$0
00456c: 48e7c000     movem.l    d0-d1, -(a7)
004570: 48780002     pea.l      $2.w
004574: 222f0008     move.l     $8(a7), d1
004578: 202f0004     move.l     $4(a7), d0
00457c: 6106         bsr.b      $4584
00457e: 588f         addq.l     #$4, a7
004580: 4e5d         unlk       a5
004582: 4e75         rts        
004584: 4e550000     link.w     a5, #$0
004588: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
00458c: 4fefffda     lea.l      -$26(a7), a7
004590: 41ef0008     lea.l      $8(a7), a0
004594: 2208         move.l     a0, d1
004596: 202f0026     move.l     $26(a7), d0
00459a: 61000ad4     bsr.w      $5070
00459e: 2440         movea.l    d0, a2
0045a0: 4a80         tst.l      d0
0045a2: 67000108     beq.w      $46ac
0045a6: 41ef0008     lea.l      $8(a7), a0
0045aa: 2008         move.l     a0, d0
0045ac: 61000b08     bsr.w      $50b6
0045b0: 2f400004     move.l     d0, $4(a7)
0045b4: 6d0000f6     blt.w      $46ac
0045b8: 41ef0022     lea.l      $22(a7), a0
0045bc: 2208         move.l     a0, d1
0045be: 200a         move.l     a2, d0
0045c0: 61000b7a     bsr.w      $513c
0045c4: 2440         movea.l    d0, a2
0045c6: 4a80         tst.l      d0
0045c8: 670000e2     beq.w      $46ac
0045cc: 202f0004     move.l     $4(a7), d0
0045d0: e588         lsl.l      #$2, d0
0045d2: 41ee8a4c     lea.l      -$75b4(a6), a0
0045d6: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0045dc: 6600009a     bne.w      $4678
0045e0: 7203         moveq      #$3, d1
0045e2: 41ef0008     lea.l      $8(a7), a0
0045e6: 2008         move.l     a0, d0
0045e8: 61000f84     bsr.w      $556e
0045ec: 222f0004     move.l     $4(a7), d1
0045f0: e589         lsl.l      #$2, d1
0045f2: 41ee8a4c     lea.l      -$75b4(a6), a0
0045f6: 31801800     move.w     d0, (a0, d1.l)
0045fa: 6d0000ca     blt.w      $46c6
0045fe: 202f0004     move.l     $4(a7), d0
004602: e588         lsl.l      #$2, d0
004604: 41ee8a4c     lea.l      -$75b4(a6), a0
004608: 2400         move.l     d0, d2
00460a: 42a7         clr.l      -(a7)
00460c: 202f0008     move.l     $8(a7), d0
004610: e588         lsl.l      #$2, d0
004612: 43ee8a4c     lea.l      -$75b4(a6), a1
004616: 32710800     movea.w    (a1, d0.l), a1
00461a: 2209         move.l     a1, d1
00461c: 203c0000ff0e move.l     #$ff0e, d0
004622: 61000d08     bsr.w      $532c
004626: 588f         addq.l     #$4, a7
004628: 2240         movea.l    d0, a1
00462a: 7000         moveq      #$0, d0
00462c: 1011         move.b     (a1), d0
00462e: 31802802     move.w     d0, $2(a0, d2.l)
004632: 202f0004     move.l     $4(a7), d0
004636: e588         lsl.l      #$2, d0
004638: 41ee8a4c     lea.l      -$75b4(a6), a0
00463c: 4a700800     tst.w      (a0, d0.l)
004640: 6d36         blt.b      $4678
004642: 202f0004     move.l     $4(a7), d0
004646: e588         lsl.l      #$2, d0
004648: 41ee8a4c     lea.l      -$75b4(a6), a0
00464c: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
004652: 6c24         bge.b      $4678
004654: 202f0004     move.l     $4(a7), d0
004658: e588         lsl.l      #$2, d0
00465a: 41ee8a4c     lea.l      -$75b4(a6), a0
00465e: 30700800     movea.w    (a0, d0.l), a0
004662: 2008         move.l     a0, d0
004664: 61000f38     bsr.w      $559e
004668: 202f0004     move.l     $4(a7), d0
00466c: e588         lsl.l      #$2, d0
00466e: 41ee8a4c     lea.l      -$75b4(a6), a0
004672: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
004678: 202f0004     move.l     $4(a7), d0
00467c: e588         lsl.l      #$2, d0
00467e: 41ee8a4c     lea.l      -$75b4(a6), a0
004682: 30300802     move.w     $2(a0, d0.l), d0
004686: 48c0         ext.l      d0
004688: b0af0022     cmp.l      $22(a7), d0
00468c: 661e         bne.b      $46ac
00468e: 0c12005f     cmpi.b     #$5f, (a2)
004692: 6610         bne.b      $46a4
004694: 6004         bra.b      $469a
004696: 4a12         tst.b      (a2)
004698: 672c         beq.b      $46c6
00469a: 528a         addq.l     #$1, a2
00469c: 0c12005f     cmpi.b     #$5f, (a2)
0046a0: 66f4         bne.b      $4696
0046a2: 528a         addq.l     #$1, a2
0046a4: 222f002a     move.l     $2a(a7), d1
0046a8: 200a         move.l     a2, d0
0046aa: 6008         bra.b      $46b4
0046ac: 222f002a     move.l     $2a(a7), d1
0046b0: 202f0026     move.l     $26(a7), d0
0046b4: 242f004e     move.l     $4e(a7), d2
0046b8: e58a         lsl.l      #$2, d2
0046ba: 41ee8a06     lea.l      -$75fa(a6), a0
0046be: 20702800     movea.l    (a0, d2.l), a0
0046c2: 4e90         jsr        (a0)
0046c4: 6002         bra.b      $46c8
0046c6: 70ff         moveq      #$ff, d0
0046c8: 4fef0026     lea.l      $26(a7), a7
0046cc: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
0046d2: 4e5d         unlk       a5
0046d4: 4e75         rts        
0046d6: 4e550000     link.w     a5, #$0
0046da: 48e7c080     movem.l    d0-d1/a0, -(a7)
0046de: 2f2f0018     move.l     $18(a7), -(a7)
0046e2: 306f001a     movea.w    $1a(a7), a0
0046e6: 2f08         move.l     a0, -(a7)
0046e8: 222f000c     move.l     $c(a7), d1
0046ec: 202f0008     move.l     $8(a7), d0
0046f0: 610c         bsr.b      $46fe
0046f2: 508f         addq.l     #$8, a7
0046f4: 4ced0100fffc movem.l    -$4(a5), a0
0046fa: 4e5d         unlk       a5
0046fc: 4e75         rts        
0046fe: 4e550000     link.w     a5, #$0
004702: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
004706: 4fefffda     lea.l      -$26(a7), a7
00470a: 41ef0008     lea.l      $8(a7), a0
00470e: 2208         move.l     a0, d1
004710: 202f0026     move.l     $26(a7), d0
004714: 6100095a     bsr.w      $5070
004718: 2440         movea.l    d0, a2
00471a: 4a80         tst.l      d0
00471c: 67000112     beq.w      $4830
004720: 41ef0008     lea.l      $8(a7), a0
004724: 2008         move.l     a0, d0
004726: 6100098e     bsr.w      $50b6
00472a: 2f400004     move.l     d0, $4(a7)
00472e: 6d000100     blt.w      $4830
004732: 41ef0022     lea.l      $22(a7), a0
004736: 2208         move.l     a0, d1
004738: 200a         move.l     a2, d0
00473a: 61000a00     bsr.w      $513c
00473e: 2440         movea.l    d0, a2
004740: 4a80         tst.l      d0
004742: 670000ec     beq.w      $4830
004746: 202f0004     move.l     $4(a7), d0
00474a: e588         lsl.l      #$2, d0
00474c: 41ee8a4c     lea.l      -$75b4(a6), a0
004750: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
004756: 6600009a     bne.w      $47f2
00475a: 7203         moveq      #$3, d1
00475c: 41ef0008     lea.l      $8(a7), a0
004760: 2008         move.l     a0, d0
004762: 61000e0a     bsr.w      $556e
004766: 222f0004     move.l     $4(a7), d1
00476a: e589         lsl.l      #$2, d1
00476c: 41ee8a4c     lea.l      -$75b4(a6), a0
004770: 31801800     move.w     d0, (a0, d1.l)
004774: 6d0000d4     blt.w      $484a
004778: 202f0004     move.l     $4(a7), d0
00477c: e588         lsl.l      #$2, d0
00477e: 41ee8a4c     lea.l      -$75b4(a6), a0
004782: 2400         move.l     d0, d2
004784: 42a7         clr.l      -(a7)
004786: 202f0008     move.l     $8(a7), d0
00478a: e588         lsl.l      #$2, d0
00478c: 43ee8a4c     lea.l      -$75b4(a6), a1
004790: 32710800     movea.w    (a1, d0.l), a1
004794: 2209         move.l     a1, d1
004796: 203c0000ff0e move.l     #$ff0e, d0
00479c: 61000b8e     bsr.w      $532c
0047a0: 588f         addq.l     #$4, a7
0047a2: 2240         movea.l    d0, a1
0047a4: 7000         moveq      #$0, d0
0047a6: 1011         move.b     (a1), d0
0047a8: 31802802     move.w     d0, $2(a0, d2.l)
0047ac: 202f0004     move.l     $4(a7), d0
0047b0: e588         lsl.l      #$2, d0
0047b2: 41ee8a4c     lea.l      -$75b4(a6), a0
0047b6: 4a700800     tst.w      (a0, d0.l)
0047ba: 6d36         blt.b      $47f2
0047bc: 202f0004     move.l     $4(a7), d0
0047c0: e588         lsl.l      #$2, d0
0047c2: 41ee8a4c     lea.l      -$75b4(a6), a0
0047c6: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
0047cc: 6c24         bge.b      $47f2
0047ce: 202f0004     move.l     $4(a7), d0
0047d2: e588         lsl.l      #$2, d0
0047d4: 41ee8a4c     lea.l      -$75b4(a6), a0
0047d8: 30700800     movea.w    (a0, d0.l), a0
0047dc: 2008         move.l     a0, d0
0047de: 61000dbe     bsr.w      $559e
0047e2: 202f0004     move.l     $4(a7), d0
0047e6: e588         lsl.l      #$2, d0
0047e8: 41ee8a4c     lea.l      -$75b4(a6), a0
0047ec: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
0047f2: 202f0004     move.l     $4(a7), d0
0047f6: e588         lsl.l      #$2, d0
0047f8: 41ee8a4c     lea.l      -$75b4(a6), a0
0047fc: 30300802     move.w     $2(a0, d0.l), d0
004800: 48c0         ext.l      d0
004802: b0af0022     cmp.l      $22(a7), d0
004806: 6628         bne.b      $4830
004808: 0c12005f     cmpi.b     #$5f, (a2)
00480c: 6610         bne.b      $481e
00480e: 6004         bra.b      $4814
004810: 4a12         tst.b      (a2)
004812: 6736         beq.b      $484a
004814: 528a         addq.l     #$1, a2
004816: 0c12005f     cmpi.b     #$5f, (a2)
00481a: 66f4         bne.b      $4810
00481c: 528a         addq.l     #$1, a2
00481e: 2f2f0052     move.l     $52(a7), -(a7)
004822: 306f0054     movea.w    $54(a7), a0
004826: 2f08         move.l     a0, -(a7)
004828: 222f0032     move.l     $32(a7), d1
00482c: 200a         move.l     a2, d0
00482e: 6012         bra.b      $4842
004830: 2f2f0052     move.l     $52(a7), -(a7)
004834: 306f0054     movea.w    $54(a7), a0
004838: 2f08         move.l     a0, -(a7)
00483a: 222f0032     move.l     $32(a7), d1
00483e: 202f002e     move.l     $2e(a7), d0
004842: 61000d22     bsr.w      $5566
004846: 508f         addq.l     #$8, a7
004848: 6002         bra.b      $484c
00484a: 70ff         moveq      #$ff, d0
00484c: 4fef0026     lea.l      $26(a7), a7
004850: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
004856: 4e5d         unlk       a5
004858: 4e75         rts        
00485a: 4e550000     link.w     a5, #$0
00485e: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
004862: 4fefffc8     lea.l      -$38(a7), a7
004866: 2f6f00380008 move.l     $38(a7), $8(a7)
00486c: 4a2f0009     tst.b      $9(a7)
004870: 660e         bne.b      $4880
004872: 306f003e     movea.w    $3e(a7), a0
004876: 2208         move.l     a0, d1
004878: 202f0008     move.l     $8(a7), d0
00487c: 600000c8     bra.w      $4946
004880: 4aae8a16     tst.l      -$75ea(a6)
004884: 6608         bne.b      $488e
004886: 61000a80     bsr.w      $5308
00488a: 2d408a16     move.l     d0, -$75ea(a6)
00488e: 7000         moveq      #$0, d0
004890: 102f0008     move.b     $8(a7), d0
004894: e588         lsl.l      #$2, d0
004896: 41ee8a4c     lea.l      -$75b4(a6), a0
00489a: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
0048a0: 66000080     bne.w      $4922
0048a4: 7000         moveq      #$0, d0
0048a6: 102f0008     move.b     $8(a7), d0
0048aa: e588         lsl.l      #$2, d0
0048ac: 206e8a16     movea.l    -$75ea(a6), a0
0048b0: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
0048b4: 41fa016e     lea.l      $4a24(pc), a0
0048b8: 2208         move.l     a0, d1
0048ba: 41ef001c     lea.l      $1c(a7), a0
0048be: 2008         move.l     a0, d0
0048c0: 61000c6c     bsr.w      $552e
0048c4: 588f         addq.l     #$4, a7
0048c6: 7203         moveq      #$3, d1
0048c8: 41ef0018     lea.l      $18(a7), a0
0048cc: 2008         move.l     a0, d0
0048ce: 61000c9e     bsr.w      $556e
0048d2: 7200         moveq      #$0, d1
0048d4: 122f0008     move.b     $8(a7), d1
0048d8: e589         lsl.l      #$2, d1
0048da: 41ee8a4c     lea.l      -$75b4(a6), a0
0048de: 31801800     move.w     d0, (a0, d1.l)
0048e2: 6c06         bge.b      $48ea
0048e4: 70ff         moveq      #$ff, d0
0048e6: 6000012e     bra.w      $4a16
0048ea: 7000         moveq      #$0, d0
0048ec: 102f0008     move.b     $8(a7), d0
0048f0: e588         lsl.l      #$2, d0
0048f2: 41ee8a4c     lea.l      -$75b4(a6), a0
0048f6: 2400         move.l     d0, d2
0048f8: 42a7         clr.l      -(a7)
0048fa: 7000         moveq      #$0, d0
0048fc: 102f000c     move.b     $c(a7), d0
004900: e588         lsl.l      #$2, d0
004902: 43ee8a4c     lea.l      -$75b4(a6), a1
004906: 32710800     movea.w    (a1, d0.l), a1
00490a: 2209         move.l     a1, d1
00490c: 203c0000ff0e move.l     #$ff0e, d0
004912: 61000a18     bsr.w      $532c
004916: 588f         addq.l     #$4, a7
004918: 2240         movea.l    d0, a1
00491a: 7000         moveq      #$0, d0
00491c: 1011         move.b     (a1), d0
00491e: 31802802     move.w     d0, $2(a0, d2.l)
004922: 7000         moveq      #$0, d0
004924: 102f0008     move.b     $8(a7), d0
004928: e588         lsl.l      #$2, d0
00492a: 41ee8a4c     lea.l      -$75b4(a6), a0
00492e: 7200         moveq      #$0, d1
004930: 122f0009     move.b     $9(a7), d1
004934: b2700802     cmp.w      $2(a0, d0.l), d1
004938: 6614         bne.b      $494e
00493a: 306f003e     movea.w    $3e(a7), a0
00493e: 2208         move.l     a0, d1
004940: 7000         moveq      #$0, d0
004942: 302f000a     move.w     $a(a7), d0
004946: 610013ea     bsr.w      $5d32
00494a: 600000ca     bra.w      $4a16
00494e: 4aae8a12     tst.l      -$75ee(a6)
004952: 661a         bne.b      $496e
004954: 6100149a     bsr.w      $5df0
004958: 2d408a12     move.l     d0, -$75ee(a6)
00495c: 2d7c0001000085c8 move.l     #$10000, -$7a38(a6)
004964: 2d6e8a1285cc move.l     -$75ee(a6), -$7a34(a6)
00496a: 42ae85c4     clr.l      -$7a3c(a6)
00496e: 7001         moveq      #$1, d0
004970: 2d4085e4     move.l     d0, -$7a1c(a6)
004974: 7008         moveq      #$8, d0
004976: 2d4085e8     move.l     d0, -$7a18(a6)
00497a: 41d7         lea.l      (a7), a0
00497c: 2d4885ec     move.l     a0, -$7a14(a6)
004980: 41ee85c0     lea.l      -$7a40(a6), a0
004984: 2d4885f4     move.l     a0, -$7a0c(a6)
004988: 7018         moveq      #$18, d0
00498a: 2d4085f0     move.l     d0, -$7a10(a6)
00498e: 7000         moveq      #$0, d0
004990: 302f000a     move.w     $a(a7), d0
004994: 2d4085d0     move.l     d0, -$7a30(a6)
004998: 306f003e     movea.w    $3e(a7), a0
00499c: 2d4885d4     move.l     a0, -$7a2c(a6)
0049a0: 1d6f000985c3 move.b     $9(a7), -$7a3d(a6)
0049a6: 422e85c4     clr.b      -$7a3c(a6)
0049aa: 486e85e4     pea.l      -$7a1c(a6)
0049ae: 7000         moveq      #$0, d0
0049b0: 102f000c     move.b     $c(a7), d0
0049b4: e588         lsl.l      #$2, d0
0049b6: 41ee8a4c     lea.l      -$75b4(a6), a0
0049ba: 30700800     movea.w    (a0, d0.l), a0
0049be: 2208         move.l     a0, d1
0049c0: 203c0000ff05 move.l     #$ff05, d0
0049c6: 610009c8     bsr.w      $5390
0049ca: 588f         addq.l     #$4, a7
0049cc: 2f400010     move.l     d0, $10(a7)
0049d0: 6c08         bge.b      $49da
0049d2: 70ff         moveq      #$ff, d0
0049d4: 2f40000c     move.l     d0, $c(a7)
0049d8: 6038         bra.b      $4a12
0049da: 2f2f0010     move.l     $10(a7), -(a7)
0049de: 7000         moveq      #$0, d0
0049e0: 102f000c     move.b     $c(a7), d0
0049e4: e588         lsl.l      #$2, d0
0049e6: 41ee8a4c     lea.l      -$75b4(a6), a0
0049ea: 30700800     movea.w    (a0, d0.l), a0
0049ee: 2208         move.l     a0, d1
0049f0: 203c0000ff06 move.l     #$ff06, d0
0049f6: 61000998     bsr.w      $5390
0049fa: 588f         addq.l     #$4, a7
0049fc: 2f40000c     move.l     d0, $c(a7)
004a00: 6dd0         blt.b      $49d2
004a02: 2f6f0004000c move.l     $4(a7), $c(a7)
004a08: 4aaf0004     tst.l      $4(a7)
004a0c: 6c04         bge.b      $4a12
004a0e: 2d57800c     move.l     (a7), -$7ff4(a6)
004a12: 202f000c     move.l     $c(a7), d0
004a16: 4fef0038     lea.l      $38(a7), a7
004a1a: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
004a20: 4e5d         unlk       a5
004a22: 4e75         rts        
004a24: 2f25         move.l     -(a5), -(a7)
004a26: 7300         .dc.w      $7300
004a28: 4e550000     link.w     a5, #$0
004a2c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004a30: 7002         moveq      #$2, d0
004a32: b0ae8a1a     cmp.l      -$75e6(a6), d0
004a36: 6c0c         bge.b      $4a44
004a38: 2217         move.l     (a7), d1
004a3a: 41fa052c     lea.l      $4f68(pc), a0
004a3e: 2008         move.l     a0, d0
004a40: 61000ae4     bsr.w      $5526
004a44: 0c9700000106 cmpi.l     #$106, (a7)
004a4a: 6608         bne.b      $4a54
004a4c: 7001         moveq      #$1, d0
004a4e: 2d408600     move.l     d0, -$7a00(a6)
004a52: 600e         bra.b      $4a62
004a54: 4aae8604     tst.l      -$79fc(a6)
004a58: 6708         beq.b      $4a62
004a5a: 2017         move.l     (a7), d0
004a5c: 206e8604     movea.l    -$79fc(a6), a0
004a60: 4e90         jsr        (a0)
004a62: 7000         moveq      #$0, d0
004a64: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004a6a: 4e5d         unlk       a5
004a6c: 4e75         rts        
004a6e: 4e550000     link.w     a5, #$0
004a72: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
004a76: 4fefff58     lea.l      -$a8(a7), a7
004a7a: 6010         bra.b      $4a8c
004a7c: 08ef000600de bset.b     #$6, $de(a7)
004a82: 601c         bra.b      $4aa0
004a84: 08ef000700de bset.b     #$7, $de(a7)
004a8a: 6014         bra.b      $4aa0
004a8c: 202f00e0     move.l     $e0(a7), d0
004a90: 0c80a95acd81 cmpi.l     #$a95acd81, d0
004a96: 67e4         beq.b      $4a7c
004a98: 0c80a95acd82 cmpi.l     #$a95acd82, d0
004a9e: 67e4         beq.b      $4a84
004aa0: 41ef0094     lea.l      $94(a7), a0
004aa4: 2208         move.l     a0, d1
004aa6: 202f00ac     move.l     $ac(a7), d0
004aaa: 610005c4     bsr.w      $5070
004aae: 2f400028     move.l     d0, $28(a7)
004ab2: 6700015c     beq.w      $4c10
004ab6: 206f0028     movea.l    $28(a7), a0
004aba: 0c10005f     cmpi.b     #$5f, (a0)
004abe: 66000150     bne.w      $4c10
004ac2: 2f6f002800ac move.l     $28(a7), $ac(a7)
004ac8: 2d6f00ac8a36 move.l     $ac(a7), -$75ca(a6)
004ace: 41ef0094     lea.l      $94(a7), a0
004ad2: 2d488a2a     move.l     a0, -$75d6(a6)
004ad6: 41ef0094     lea.l      $94(a7), a0
004ada: 2008         move.l     a0, d0
004adc: 610005d8     bsr.w      $50b6
004ae0: 3f40002c     move.w     d0, $2c(a7)
004ae4: 6c0c         bge.b      $4af2
004ae6: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
004aee: 60000242     bra.w      $4d32
004af2: 422f0052     clr.b      $52(a7)
004af6: 41ef0046     lea.l      $46(a7), a0
004afa: 2208         move.l     a0, d1
004afc: 202f00ac     move.l     $ac(a7), d0
004b00: 6100063a     bsr.w      $513c
004b04: 2f400028     move.l     d0, $28(a7)
004b08: 67000106     beq.w      $4c10
004b0c: 1f6f00490051 move.b     $49(a7), $51(a7)
004b12: 2f6f002800ac move.l     $28(a7), $ac(a7)
004b18: 302f002c     move.w     $2c(a7), d0
004b1c: 48c0         ext.l      d0
004b1e: e588         lsl.l      #$2, d0
004b20: 41ee8a4c     lea.l      -$75b4(a6), a0
004b24: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
004b2a: 660000b6     bne.w      $4be2
004b2e: 486f0094     pea.l      $94(a7)
004b32: 41fa0464     lea.l      $4f98(pc), a0
004b36: 2208         move.l     a0, d1
004b38: 41ef0078     lea.l      $78(a7), a0
004b3c: 2008         move.l     a0, d0
004b3e: 610009ee     bsr.w      $552e
004b42: 588f         addq.l     #$4, a7
004b44: 7001         moveq      #$1, d0
004b46: b0ae8a1a     cmp.l      -$75e6(a6), d0
004b4a: 6c10         bge.b      $4b5c
004b4c: 41ef0074     lea.l      $74(a7), a0
004b50: 2208         move.l     a0, d1
004b52: 41fa0447     lea.l      $4f9b(pc), a0
004b56: 2008         move.l     a0, d0
004b58: 610009cc     bsr.w      $5526
004b5c: 7203         moveq      #$3, d1
004b5e: 41ef0074     lea.l      $74(a7), a0
004b62: 2008         move.l     a0, d0
004b64: 61000a08     bsr.w      $556e
004b68: 322f002c     move.w     $2c(a7), d1
004b6c: 48c1         ext.l      d1
004b6e: e589         lsl.l      #$2, d1
004b70: 41ee8a4c     lea.l      -$75b4(a6), a0
004b74: 31801800     move.w     d0, (a0, d1.l)
004b78: 6c30         bge.b      $4baa
004b7a: 7001         moveq      #$1, d0
004b7c: b0ae8a1a     cmp.l      -$75e6(a6), d0
004b80: 6c0001b0     bge.w      $4d32
004b84: 302f002c     move.w     $2c(a7), d0
004b88: 48c0         ext.l      d0
004b8a: e588         lsl.l      #$2, d0
004b8c: 41ee8a4c     lea.l      -$75b4(a6), a0
004b90: 30700800     movea.w    (a0, d0.l), a0
004b94: 2f08         move.l     a0, -(a7)
004b96: 222f004a     move.l     $4a(a7), d1
004b9a: 41fa0418     lea.l      $4fb4(pc), a0
004b9e: 2008         move.l     a0, d0
004ba0: 61000984     bsr.w      $5526
004ba4: 588f         addq.l     #$4, a7
004ba6: 6000018a     bra.w      $4d32
004baa: 302f002c     move.w     $2c(a7), d0
004bae: 48c0         ext.l      d0
004bb0: e588         lsl.l      #$2, d0
004bb2: 41ee8a4c     lea.l      -$75b4(a6), a0
004bb6: 2400         move.l     d0, d2
004bb8: 42a7         clr.l      -(a7)
004bba: 302f0030     move.w     $30(a7), d0
004bbe: 48c0         ext.l      d0
004bc0: e588         lsl.l      #$2, d0
004bc2: 43ee8a4c     lea.l      -$75b4(a6), a1
004bc6: 32710800     movea.w    (a1, d0.l), a1
004bca: 2209         move.l     a1, d1
004bcc: 203c0000ff0e move.l     #$ff0e, d0
004bd2: 61000758     bsr.w      $532c
004bd6: 588f         addq.l     #$4, a7
004bd8: 2240         movea.l    d0, a1
004bda: 7000         moveq      #$0, d0
004bdc: 1011         move.b     (a1), d0
004bde: 31802802     move.w     d0, $2(a0, d2.l)
004be2: 302f002c     move.w     $2c(a7), d0
004be6: 48c0         ext.l      d0
004be8: e588         lsl.l      #$2, d0
004bea: 41ee8a4c     lea.l      -$75b4(a6), a0
004bee: 30300802     move.w     $2(a0, d0.l), d0
004bf2: 48c0         ext.l      d0
004bf4: b0af0046     cmp.l      $46(a7), d0
004bf8: 6642         bne.b      $4c3c
004bfa: 7001         moveq      #$1, d0
004bfc: b0ae8a1a     cmp.l      -$75e6(a6), d0
004c00: 6c0e         bge.b      $4c10
004c02: 222f00ac     move.l     $ac(a7), d1
004c06: 41fa03bf     lea.l      $4fc7(pc), a0
004c0a: 2008         move.l     a0, d0
004c0c: 61000918     bsr.w      $5526
004c10: 306f00de     movea.w    $de(a7), a0
004c14: 2f08         move.l     a0, -(a7)
004c16: 306f00de     movea.w    $de(a7), a0
004c1a: 2f08         move.l     a0, -(a7)
004c1c: 2f2f00dc     move.l     $dc(a7), -(a7)
004c20: 2f2f00dc     move.l     $dc(a7), -(a7)
004c24: 2f2f00dc     move.l     $dc(a7), -(a7)
004c28: 222f00c0     move.l     $c0(a7), d1
004c2c: 202f00bc     move.l     $bc(a7), d0
004c30: 6100098c     bsr.w      $55be
004c34: 4fef0014     lea.l      $14(a7), a7
004c38: 6000030a     bra.w      $4f44
004c3c: 4a6e8a3e     tst.w      -$75c2(a6)
004c40: 6608         bne.b      $4c4a
004c42: 610011ac     bsr.w      $5df0
004c46: 3d408a3e     move.w     d0, -$75c2(a6)
004c4a: 42ae8604     clr.l      -$79fc(a6)
004c4e: 306e8a3e     movea.w    -$75c2(a6), a0
004c52: 2008         move.l     a0, d0
004c54: 6100068c     bsr.w      $52e2
004c58: 2d408604     move.l     d0, -$79fc(a6)
004c5c: 7001         moveq      #$1, d0
004c5e: b0ae8a1a     cmp.l      -$75e6(a6), d0
004c62: 6c0e         bge.b      $4c72
004c64: 222e8604     move.l     -$79fc(a6), d1
004c68: 41fa0384     lea.l      $4fee(pc), a0
004c6c: 2008         move.l     a0, d0
004c6e: 610008b6     bsr.w      $5526
004c72: 41fafdb4     lea.l      $4a28(pc), a0
004c76: 2008         move.l     a0, d0
004c78: 610002d8     bsr.w      $4f52
004c7c: 306f00de     movea.w    $de(a7), a0
004c80: 2f08         move.l     a0, -(a7)
004c82: 42a7         clr.l      -(a7)
004c84: 42a7         clr.l      -(a7)
004c86: 2f2f00dc     move.l     $dc(a7), -(a7)
004c8a: 486e8a1e     pea.l      -$75e2(a6)
004c8e: 41fa0374     lea.l      $5004(pc), a0
004c92: 2208         move.l     a0, d1
004c94: 41fa10fe     lea.l      $5d94(pc), a0
004c98: 2008         move.l     a0, d0
004c9a: 61000922     bsr.w      $55be
004c9e: 4fef0014     lea.l      $14(a7), a7
004ca2: 2f40005e     move.l     d0, $5e(a7)
004ca6: 6f00008a     ble.w      $4d32
004caa: 2f7c000200000056 move.l     #$20000, $56(a7)
004cb2: 42af005a     clr.l      $5a(a7)
004cb6: 2f6f00d40062 move.l     $d4(a7), $62(a7)
004cbc: 3f6f00da0066 move.w     $da(a7), $66(a7)
004cc2: 3f6f00de0068 move.w     $de(a7), $68(a7)
004cc8: 3f6f002c006c move.w     $2c(a7), $6c(a7)
004cce: 3f6e8a3e006a move.w     -$75c2(a6), $6a(a7)
004cd4: 7001         moveq      #$1, d0
004cd6: 2f40004a     move.l     d0, $4a(a7)
004cda: 42af0042     clr.l      $42(a7)
004cde: 6004         bra.b      $4ce4
004ce0: 52af004a     addq.l     #$1, $4a(a7)
004ce4: 202f0042     move.l     $42(a7), d0
004ce8: 52af0042     addq.l     #$1, $42(a7)
004cec: e588         lsl.l      #$2, d0
004cee: 206f00cc     movea.l    $cc(a7), a0
004cf2: 4ab00800     tst.l      (a0, d0.l)
004cf6: 66e8         bne.b      $4ce0
004cf8: 52af004a     addq.l     #$1, $4a(a7)
004cfc: 42af0042     clr.l      $42(a7)
004d00: 6004         bra.b      $4d06
004d02: 52af004a     addq.l     #$1, $4a(a7)
004d06: 202f0042     move.l     $42(a7), d0
004d0a: 52af0042     addq.l     #$1, $42(a7)
004d0e: e588         lsl.l      #$2, d0
004d10: 206f00d0     movea.l    $d0(a7), a0
004d14: 4ab00800     tst.l      (a0, d0.l)
004d18: 66e8         bne.b      $4d02
004d1a: 52af004a     addq.l     #$1, $4a(a7)
004d1e: 202f004a     move.l     $4a(a7), d0
004d22: e788         lsl.l      #$3, d0
004d24: 7214         moveq      #$14, d1
004d26: d081         add.l      d1, d0
004d28: 610008b8     bsr.w      $55e2
004d2c: 2440         movea.l    d0, a2
004d2e: 4a80         tst.l      d0
004d30: 6606         bne.b      $4d38
004d32: 70ff         moveq      #$ff, d0
004d34: 6000020e     bra.w      $4f44
004d38: 202f004a     move.l     $4a(a7), d0
004d3c: 5280         addq.l     #$1, d0
004d3e: 2480         move.l     d0, (a2)
004d40: 257c000000080004 move.l     #$8, $4(a2)
004d48: 41ef0020     lea.l      $20(a7), a0
004d4c: 25480008     move.l     a0, $8(a2)
004d50: 700c         moveq      #$c, d0
004d52: d08a         add.l      a2, d0
004d54: 2640         movea.l    d0, a3
004d56: 41ef004e     lea.l      $4e(a7), a0
004d5a: 27480004     move.l     a0, $4(a3)
004d5e: 26bc00000020 move.l     #$20, (a3)
004d64: 508b         addq.l     #$8, a3
004d66: 276f00ac0004 move.l     $ac(a7), $4(a3)
004d6c: 202f00ac     move.l     $ac(a7), d0
004d70: 6100099e     bsr.w      $5710
004d74: 5280         addq.l     #$1, d0
004d76: 2680         move.l     d0, (a3)
004d78: 508b         addq.l     #$8, a3
004d7a: 42af0042     clr.l      $42(a7)
004d7e: 605a         bra.b      $4dda
004d80: 7001         moveq      #$1, d0
004d82: b0ae8a1a     cmp.l      -$75e6(a6), d0
004d86: 6c26         bge.b      $4dae
004d88: 222f0042     move.l     $42(a7), d1
004d8c: 41fa027d     lea.l      $500b(pc), a0
004d90: 2008         move.l     a0, d0
004d92: 61000792     bsr.w      $5526
004d96: 202f0042     move.l     $42(a7), d0
004d9a: e588         lsl.l      #$2, d0
004d9c: 206f00cc     movea.l    $cc(a7), a0
004da0: 22300800     move.l     (a0, d0.l), d1
004da4: 41fa0285     lea.l      $502b(pc), a0
004da8: 2008         move.l     a0, d0
004daa: 6100077a     bsr.w      $5526
004dae: 202f0042     move.l     $42(a7), d0
004db2: e588         lsl.l      #$2, d0
004db4: 206f00cc     movea.l    $cc(a7), a0
004db8: 277008000004 move.l     (a0, d0.l), $4(a3)
004dbe: 202f0042     move.l     $42(a7), d0
004dc2: 52af0042     addq.l     #$1, $42(a7)
004dc6: e588         lsl.l      #$2, d0
004dc8: 206f00cc     movea.l    $cc(a7), a0
004dcc: 20300800     move.l     (a0, d0.l), d0
004dd0: 6100093e     bsr.w      $5710
004dd4: 5280         addq.l     #$1, d0
004dd6: 2680         move.l     d0, (a3)
004dd8: 508b         addq.l     #$8, a3
004dda: 202f0042     move.l     $42(a7), d0
004dde: e588         lsl.l      #$2, d0
004de0: 206f00cc     movea.l    $cc(a7), a0
004de4: 4ab00800     tst.l      (a0, d0.l)
004de8: 6696         bne.b      $4d80
004dea: 41fa024e     lea.l      $503a(pc), a0
004dee: 27480004     move.l     a0, $4(a3)
004df2: 26bc00000001 move.l     #$1, (a3)
004df8: 508b         addq.l     #$8, a3
004dfa: 42af0042     clr.l      $42(a7)
004dfe: 604c         bra.b      $4e4c
004e00: 7001         moveq      #$1, d0
004e02: b0ae8a1a     cmp.l      -$75e6(a6), d0
004e06: 6c18         bge.b      $4e20
004e08: 202f0042     move.l     $42(a7), d0
004e0c: e588         lsl.l      #$2, d0
004e0e: 206f00d0     movea.l    $d0(a7), a0
004e12: 22300800     move.l     (a0, d0.l), d1
004e16: 41fa0223     lea.l      $503b(pc), a0
004e1a: 2008         move.l     a0, d0
004e1c: 61000708     bsr.w      $5526
004e20: 202f0042     move.l     $42(a7), d0
004e24: e588         lsl.l      #$2, d0
004e26: 206f00d0     movea.l    $d0(a7), a0
004e2a: 277008000004 move.l     (a0, d0.l), $4(a3)
004e30: 202f0042     move.l     $42(a7), d0
004e34: 52af0042     addq.l     #$1, $42(a7)
004e38: e588         lsl.l      #$2, d0
004e3a: 206f00d0     movea.l    $d0(a7), a0
004e3e: 20300800     move.l     (a0, d0.l), d0
004e42: 610008cc     bsr.w      $5710
004e46: 5280         addq.l     #$1, d0
004e48: 2680         move.l     d0, (a3)
004e4a: 508b         addq.l     #$8, a3
004e4c: 202f0042     move.l     $42(a7), d0
004e50: e588         lsl.l      #$2, d0
004e52: 206f00d0     movea.l    $d0(a7), a0
004e56: 4ab00800     tst.l      (a0, d0.l)
004e5a: 66a4         bne.b      $4e00
004e5c: 41fa01ec     lea.l      $504a(pc), a0
004e60: 27480004     move.l     a0, $4(a3)
004e64: 26bc00000001 move.l     #$1, (a3)
004e6a: 508b         addq.l     #$8, a3
004e6c: 7001         moveq      #$1, d0
004e6e: 61000bc2     bsr.w      $5a32
004e72: 42ae85fc     clr.l      -$7a04(a6)
004e76: 600a         bra.b      $4e82
004e78: 52ae85fc     addq.l     #$1, -$7a04(a6)
004e7c: 7001         moveq      #$1, d0
004e7e: 61000bb2     bsr.w      $5a32
004e82: 4aae8600     tst.l      -$7a00(a6)
004e86: 67f0         beq.b      $4e78
004e88: 7064         moveq      #$64, d0
004e8a: b0ae85fc     cmp.l      -$7a04(a6), d0
004e8e: 6e0e         bgt.b      $4e9e
004e90: 222e85fc     move.l     -$7a04(a6), d1
004e94: 41fa01b5     lea.l      $504b(pc), a0
004e98: 2008         move.l     a0, d0
004e9a: 6100068a     bsr.w      $5526
004e9e: 4aae8604     tst.l      -$79fc(a6)
004ea2: 6708         beq.b      $4eac
004ea4: 202e8604     move.l     -$79fc(a6), d0
004ea8: 610000a8     bsr.w      $4f52
004eac: 4852         pea.l      (a2)
004eae: 302f0030     move.w     $30(a7), d0
004eb2: 48c0         ext.l      d0
004eb4: e588         lsl.l      #$2, d0
004eb6: 41ee8a4c     lea.l      -$75b4(a6), a0
004eba: 30700800     movea.w    (a0, d0.l), a0
004ebe: 2208         move.l     a0, d1
004ec0: 203c0000ff05 move.l     #$ff05, d0
004ec6: 610004c8     bsr.w      $5390
004eca: 588f         addq.l     #$4, a7
004ecc: 2f40003a     move.l     d0, $3a(a7)
004ed0: 6c08         bge.b      $4eda
004ed2: 70ff         moveq      #$ff, d0
004ed4: 2f40002e     move.l     d0, $2e(a7)
004ed8: 6060         bra.b      $4f3a
004eda: 2f2f003a     move.l     $3a(a7), -(a7)
004ede: 302f0030     move.w     $30(a7), d0
004ee2: 48c0         ext.l      d0
004ee4: e588         lsl.l      #$2, d0
004ee6: 41ee8a4c     lea.l      -$75b4(a6), a0
004eea: 30700800     movea.w    (a0, d0.l), a0
004eee: 2208         move.l     a0, d1
004ef0: 203c0000ff06 move.l     #$ff06, d0
004ef6: 61000498     bsr.w      $5390
004efa: 588f         addq.l     #$4, a7
004efc: 2f40002e     move.l     d0, $2e(a7)
004f00: 6c10         bge.b      $4f12
004f02: 70ff         moveq      #$ff, d0
004f04: 2f40002e     move.l     d0, $2e(a7)
004f08: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
004f10: 6028         bra.b      $4f3a
004f12: 2f6f0024002e move.l     $24(a7), $2e(a7)
004f18: 4aaf002e     tst.l      $2e(a7)
004f1c: 6c16         bge.b      $4f34
004f1e: 223c00008000 move.l     #$8000, d1
004f24: 202f005e     move.l     $5e(a7), d0
004f28: 61000e08     bsr.w      $5d32
004f2c: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
004f32: 6006         bra.b      $4f3a
004f34: 1f6f002d002e move.b     $2d(a7), $2e(a7)
004f3a: 200a         move.l     a2, d0
004f3c: 610006b0     bsr.w      $55ee
004f40: 202f002e     move.l     $2e(a7), d0
004f44: 4fef00a8     lea.l      $a8(a7), a7
004f48: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
004f4e: 4e5d         unlk       a5
004f50: 4e75         rts        
004f52: 4e550000     link.w     a5, #$0
004f56: 48e78000     movem.l    d0, -(a7)
004f5a: 2d578a5c     move.l     (a7), -$75a4(a6)
004f5e: 2017         move.l     (a7), d0
004f60: 61000ec6     bsr.w      $5e28
004f64: 4e5d         unlk       a5
004f66: 4e75         rts        
004f68: 5369676e     subq.w     #$1, $676e(a1)
004f6c: 616c         bsr.b      $4fda
004f6e: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
004f78: 2063         movea.l    -(a3), a0
004f7a: 6f64         ble.b      $4fe0
004f7c: 653d         bcs.b      $4fbb
004f7e: 2025         move.l     -(a5), d0
004f80: 780d         moveq      #$d, d4
004f82: 007365727665 ori.w      #$6572, $65(a3, d7.w)
004f88: 7200         moveq      #$0, d1
004f8a: 3200         move.w     d0, d1
004f8c: 3000         move.w     d0, d0
004f8e: 2f633000     move.l     -(a3), $3000(a7)
004f92: 3000         move.w     d0, d0
004f94: 3000         move.w     d0, d0
004f96: 3000         move.w     d0, d0
004f98: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
004f9e: 6e20         bgt.b      $4fc0
004fa0: 6361         bls.b      $5003
004fa2: 726f         moveq      #$6f, d1
004fa4: 7370         .dc.w      $7370
004fa6: 6174         bsr.b      $501c
004fa8: 6820         bvc.b      $4fca
004faa: 6e61         bgt.b      $500d
004fac: 6d65         blt.b      $5013
004fae: 6420         bcc.b      $4fd0
004fb0: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
004fb6: 7468         moveq      #$68, d2
004fb8: 6964         bvs.b      $501e
004fba: 5b25         subq.b     #$5, -(a5)
004fbc: 645d         bcc.b      $501b
004fbe: 206d6772     movea.l    $6772(a5), a0
004fc2: 3d25         move.w     -(a5), -(a6)
004fc4: 640d         bcc.b      $4fd3
004fc6: 00666f72     ori.w      #$6f72, -(a6)
004fca: 6b69         bmi.b      $5035
004fcc: 6e67         bgt.b      $5035
004fce: 2070726f     movea.l    $6f(a0, d7.w), a0
004fd2: 6365         bls.b      $5039
004fd4: 7373         .dc.w      $7373
004fd6: 206c6f63     movea.l    $6f63(a4), a0
004fda: 616c         bsr.b      $5048
004fdc: 6c79         bge.b      $5057
004fde: 2c20         move.l     -(a0), d6
004fe0: 6d6f         blt.b      $5051
004fe2: 646e         bcc.b      $5052
004fe4: 616d         bsr.b      $5053
004fe6: 6520         bcs.b      $5008
004fe8: 3d20         move.w     -(a0), -(a6)
004fea: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
004ff0: 6420         bcc.b      $5012
004ff2: 6963         bvs.b      $5057
004ff4: 7074         moveq      #$74, d0
004ff6: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
005000: 25780d007365 move.l     $d00.w, $7365(a2)
005006: 7276         moveq      #$76, d1
005008: 6572         bcs.b      $507c
00500a: 00656e74     ori.w      #$6e74, -(a5)
00500e: 6572         bcs.b      $5082
005010: 6564         bcs.b      $5076
005012: 2061         movea.l    -(a1), a0
005014: 7267         moveq      #$67, d1
005016: 6c69         bge.b      $5081
005018: 7374         .dc.w      $7374
00501a: 206c6f6f     movea.l    $6f6f(a4), a0
00501e: 702c         moveq      #$2c, d0
005020: 20696e64     movea.l    $6e64(a1), a0
005024: 6578         bcs.b      $509e
005026: 3d25         move.w     -(a5), -(a6)
005028: 640d         bcc.b      $5037
00502a: 00415247     ori.w      #$5247, d1
00502e: 4c49         .dc.w      $4c49
005030: 5354         subq.w     #$1, (a4)
005032: 5b695d3d     subq.w     #$5, $5d3d(a1)
005036: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
00503c: 4e564c49     link.w     a6, #$4c49
005040: 5354         subq.w     #$1, (a4)
005042: 5b695d3d     subq.w     #$5, $5d3d(a1)
005046: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
00504c: 796e         .dc.w      $796e
00504e: 6368         bls.b      $50b8
005050: 726f         moveq      #$6f, d1
005052: 6e69         bgt.b      $50bd
005054: 7369         .dc.w      $7369
005056: 6e67         bgt.b      $50bf
005058: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
005062: 6f6b         ble.b      $50cf
005064: 2025         move.l     -(a5), d0
005066: 6420         bcc.b      $5088
005068: 7469         moveq      #$69, d2
00506a: 636b         bls.b      $50d7
00506c: 730d         .dc.w      $730d
00506e: 00004e55     ori.b      #$55, d0
005072: 000048e7     ori.b      #$e7, d0
005076: c8302440     and.b      $40(a0, d2.w), d4
00507a: 2641         movea.l    d1, a3
00507c: 558f         subq.l     #$2, a7
00507e: 1012         move.b     (a2), d0
005080: 1680         move.b     d0, (a3)
005082: 0c00002f     cmpi.b     #$2f, d0
005086: 6704         beq.b      $508c
005088: 7000         moveq      #$0, d0
00508a: 601e         bra.b      $50aa
00508c: 528a         addq.l     #$1, a2
00508e: 528b         addq.l     #$1, a3
005090: 1012         move.b     (a2), d0
005092: 1680         move.b     d0, (a3)
005094: 1f400001     move.b     d0, $1(a7)
005098: 0c00002f     cmpi.b     #$2f, d0
00509c: 6706         beq.b      $50a4
00509e: 4a2f0001     tst.b      $1(a7)
0050a2: 66e8         bne.b      $508c
0050a4: 4213         clr.b      (a3)
0050a6: 528a         addq.l     #$1, a2
0050a8: 200a         move.l     a2, d0
0050aa: 548f         addq.l     #$2, a7
0050ac: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0050b2: 4e5d         unlk       a5
0050b4: 4e75         rts        
0050b6: 4e550000     link.w     a5, #$0
0050ba: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0050be: 2440         movea.l    d0, a2
0050c0: 4aae8a40     tst.l      -$75c0(a6)
0050c4: 6608         bne.b      $50ce
0050c6: 61000240     bsr.w      $5308
0050ca: 2d408a40     move.l     d0, -$75c0(a6)
0050ce: 7800         moveq      #$0, d4
0050d0: 601a         bra.b      $50ec
0050d2: 2004         move.l     d4, d0
0050d4: e588         lsl.l      #$2, d0
0050d6: 206e8a40     movea.l    -$75c0(a6), a0
0050da: 2230081a     move.l     $1a(a0, d0.l), d1
0050de: 200a         move.l     a2, d0
0050e0: 5280         addq.l     #$1, d0
0050e2: 610005b8     bsr.w      $569c
0050e6: 4a80         tst.l      d0
0050e8: 6710         beq.b      $50fa
0050ea: 5284         addq.l     #$1, d4
0050ec: 206e8a40     movea.l    -$75c0(a6), a0
0050f0: 30280010     move.w     $10(a0), d0
0050f4: 48c0         ext.l      d0
0050f6: b084         cmp.l      d4, d0
0050f8: 6ed8         bgt.b      $50d2
0050fa: 206e8a40     movea.l    -$75c0(a6), a0
0050fe: 30280010     move.w     $10(a0), d0
005102: 48c0         ext.l      d0
005104: b084         cmp.l      d4, d0
005106: 6e04         bgt.b      $510c
005108: 70ff         moveq      #$ff, d0
00510a: 6002         bra.b      $510e
00510c: 2004         move.l     d4, d0
00510e: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
005114: 4e5d         unlk       a5
005116: 4e75         rts        
005118: 4e550000     link.w     a5, #$0
00511c: 48e7c080     movem.l    d0-d1/a0, -(a7)
005120: 202f0004     move.l     $4(a7), d0
005124: e588         lsl.l      #$2, d0
005126: 2057         movea.l    (a7), a0
005128: 2070082a     movea.l    $2a(a0, d0.l), a0
00512c: 7000         moveq      #$0, d0
00512e: 10280012     move.b     $12(a0), d0
005132: 4ced0100fffc movem.l    -$4(a5), a0
005138: 4e5d         unlk       a5
00513a: 4e75         rts        
00513c: 4e550000     link.w     a5, #$0
005140: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
005144: 2440         movea.l    d0, a2
005146: 4fefffda     lea.l      -$26(a7), a7
00514a: 200a         move.l     a2, d0
00514c: 61000110     bsr.w      $525e
005150: 2440         movea.l    d0, a2
005152: 0c12005f     cmpi.b     #$5f, (a2)
005156: 660000f6     bne.w      $524e
00515a: 102a0001     move.b     $1(a2), d0
00515e: 1f400005     move.b     d0, $5(a7)
005162: 0c000041     cmpi.b     #$41, d0
005166: 6d0000a4     blt.w      $520c
00516a: 4aae8a44     tst.l      -$75bc(a6)
00516e: 6626         bne.b      $5196
005170: 7200         moveq      #$0, d1
005172: 41fa017e     lea.l      $52f2(pc), a0
005176: 2008         move.l     a0, d0
005178: 61000b58     bsr.w      $5cd2
00517c: 2f400022     move.l     d0, $22(a7)
005180: 72ff         moveq      #$ff, d1
005182: b280         cmp.l      d0, d1
005184: 6606         bne.b      $518c
005186: 70ff         moveq      #$ff, d0
005188: 600000c6     bra.w      $5250
00518c: 7030         moveq      #$30, d0
00518e: d0af0022     add.l      $22(a7), d0
005192: 2d408a44     move.l     d0, -$75bc(a6)
005196: 41ef000a     lea.l      $a(a7), a0
00519a: 2f480006     move.l     a0, $6(a7)
00519e: 600c         bra.b      $51ac
0051a0: 206f0006     movea.l    $6(a7), a0
0051a4: 52af0006     addq.l     #$1, $6(a7)
0051a8: 10af0005     move.b     $5(a7), (a0)
0051ac: 528a         addq.l     #$1, a2
0051ae: 1012         move.b     (a2), d0
0051b0: 1f400005     move.b     d0, $5(a7)
0051b4: 0c00005f     cmpi.b     #$5f, d0
0051b8: 66e6         bne.b      $51a0
0051ba: 206f0006     movea.l    $6(a7), a0
0051be: 4210         clr.b      (a0)
0051c0: 202e8a44     move.l     -$75bc(a6), d0
0051c4: 5480         addq.l     #$2, d0
0051c6: 2f40001e     move.l     d0, $1e(a7)
0051ca: 7800         moveq      #$0, d4
0051cc: 6030         bra.b      $51fe
0051ce: 41ef000a     lea.l      $a(a7), a0
0051d2: 2208         move.l     a0, d1
0051d4: 202f001e     move.l     $1e(a7), d0
0051d8: 610004c2     bsr.w      $569c
0051dc: 4a80         tst.l      d0
0051de: 6614         bne.b      $51f4
0051e0: 206f001e     movea.l    $1e(a7), a0
0051e4: 7000         moveq      #$0, d0
0051e6: 10280013     move.b     $13(a0), d0
0051ea: 206f002a     movea.l    $2a(a7), a0
0051ee: 2080         move.l     d0, (a0)
0051f0: 528a         addq.l     #$1, a2
0051f2: 6056         bra.b      $524a
0051f4: 06af00000014001e addi.l     #$14, $1e(a7)
0051fc: 5284         addq.l     #$1, d4
0051fe: 206e8a44     movea.l    -$75bc(a6), a0
005202: 3010         move.w     (a0), d0
005204: 48c0         ext.l      d0
005206: b084         cmp.l      d4, d0
005208: 6ec4         bgt.b      $51ce
00520a: 6042         bra.b      $524e
00520c: 4297         clr.l      (a7)
00520e: 6018         bra.b      $5228
005210: 2017         move.l     (a7), d0
005212: 720a         moveq      #$a, d1
005214: 61000620     bsr.w      $5836
005218: 122f0005     move.b     $5(a7), d1
00521c: 4881         ext.w      d1
00521e: 48c1         ext.l      d1
005220: d081         add.l      d1, d0
005222: 7230         moveq      #$30, d1
005224: 9081         sub.l      d1, d0
005226: 2e80         move.l     d0, (a7)
005228: 528a         addq.l     #$1, a2
00522a: 1012         move.b     (a2), d0
00522c: 1f400005     move.b     d0, $5(a7)
005230: 0c000030     cmpi.b     #$30, d0
005234: 6d08         blt.b      $523e
005236: 0c2f00390005 cmpi.b     #$39, $5(a7)
00523c: 6fd2         ble.b      $5210
00523e: 0c1a005f     cmpi.b     #$5f, (a2)+
005242: 660a         bne.b      $524e
005244: 206f002a     movea.l    $2a(a7), a0
005248: 2097         move.l     (a7), (a0)
00524a: 200a         move.l     a2, d0
00524c: 6002         bra.b      $5250
00524e: 7000         moveq      #$0, d0
005250: 4fef0026     lea.l      $26(a7), a7
005254: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00525a: 4e5d         unlk       a5
00525c: 4e75         rts        
00525e: 4e550000     link.w     a5, #$0
005262: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
005266: 2440         movea.l    d0, a2
005268: 518f         subq.l     #$8, a7
00526a: 0c12005f     cmpi.b     #$5f, (a2)
00526e: 6764         beq.b      $52d4
005270: 0c120040     cmpi.b     #$40, (a2)
005274: 675e         beq.b      $52d4
005276: 0c120041     cmpi.b     #$41, (a2)
00527a: 6d58         blt.b      $52d4
00527c: 4aae8a48     tst.l      -$75b8(a6)
005280: 6620         bne.b      $52a2
005282: 7200         moveq      #$0, d1
005284: 41fa0076     lea.l      $52fc(pc), a0
005288: 2008         move.l     a0, d0
00528a: 61000a46     bsr.w      $5cd2
00528e: 2f400004     move.l     d0, $4(a7)
005292: 72ff         moveq      #$ff, d1
005294: b280         cmp.l      d0, d1
005296: 673c         beq.b      $52d4
005298: 7030         moveq      #$30, d0
00529a: d0af0004     add.l      $4(a7), d0
00529e: 2d408a48     move.l     d0, -$75b8(a6)
0052a2: 202e8a48     move.l     -$75b8(a6), d0
0052a6: 5480         addq.l     #$2, d0
0052a8: 2e80         move.l     d0, (a7)
0052aa: 7800         moveq      #$0, d4
0052ac: 601a         bra.b      $52c8
0052ae: 220a         move.l     a2, d1
0052b0: 2017         move.l     (a7), d0
0052b2: 610003e8     bsr.w      $569c
0052b6: 4a80         tst.l      d0
0052b8: 6606         bne.b      $52c0
0052ba: 7014         moveq      #$14, d0
0052bc: d097         add.l      (a7), d0
0052be: 6016         bra.b      $52d6
0052c0: 069700000032 addi.l     #$32, (a7)
0052c6: 5284         addq.l     #$1, d4
0052c8: 206e8a48     movea.l    -$75b8(a6), a0
0052cc: 3010         move.w     (a0), d0
0052ce: 48c0         ext.l      d0
0052d0: b084         cmp.l      d4, d0
0052d2: 6eda         bgt.b      $52ae
0052d4: 200a         move.l     a2, d0
0052d6: 508f         addq.l     #$8, a7
0052d8: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0052de: 4e5d         unlk       a5
0052e0: 4e75         rts        
0052e2: 4e550000     link.w     a5, #$0
0052e6: 48e78000     movem.l    d0, -(a7)
0052ea: 202e8a5c     move.l     -$75a4(a6), d0
0052ee: 4e5d         unlk       a5
0052f0: 4e75         rts        
0052f2: 6361         bls.b      $5355
0052f4: 725f         moveq      #$5f, d1
0052f6: 6e65         bgt.b      $535d
0052f8: 7464         moveq      #$64, d2
0052fa: 62006361     bhi.w      $b65d
0052fe: 725f         moveq      #$5f, d1
005300: 6465         bcc.b      $5367
005302: 7669         moveq      #$69, d3
005304: 6365         bls.b      $536b
005306: 00002f08     ori.b      #$8, d0
00530a: 207900000000 movea.l    $0.l, a0
005310: 41e80814     lea.l      $814(a0), a0
005314: 2010         move.l     (a0), d0
005316: 205f         movea.l    (a7)+, a0
005318: 4e75         rts        
00531a: 2f08         move.l     a0, -(a7)
00531c: 207900000000 movea.l    $0.l, a0
005322: 41e80814     lea.l      $814(a0), a0
005326: 2008         move.l     a0, d0
005328: 205f         movea.l    (a7)+, a0
00532a: 4e75         rts        
00532c: 48e76080     movem.l    d1-d2/a0, -(a7)
005330: c141         exg.l      d0, d1
005332: 0c8100000002 cmpi.l     #$2, d1
005338: 6716         beq.b      $5350
00533a: 0c8100000005 cmpi.l     #$5, d1
005340: 670e         beq.b      $5350
005342: 206f0010     movea.l    $10(a7), a0
005346: 2408         move.l     a0, d2
005348: 4e40         trap       #$0
00534a: 008d         .dc.w      $008d
00534c: 60000056     bra.w      $53a4
005350: 206f0010     movea.l    $10(a7), a0
005354: 2408         move.l     a0, d2
005356: 4e40         trap       #$0
005358: 008d         .dc.w      $008d
00535a: 2202         move.l     d2, d1
00535c: 60000046     bra.w      $53a4
005360: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
005364: c141         exg.l      d0, d1
005366: 206f0018     movea.l    $18(a7), a0
00536a: 242f001c     move.l     $1c(a7), d2
00536e: 262f0020     move.l     $20(a7), d3
005372: 4e40         trap       #$0
005374: 008d         .dc.w      $008d
005376: 60000068     bra.w      $53e0
00537a: 48e76080     movem.l    d1-d2/a0, -(a7)
00537e: c141         exg.l      d0, d1
005380: 206f0010     movea.l    $10(a7), a0
005384: 242f0014     move.l     $14(a7), d2
005388: 4e40         trap       #$0
00538a: 008e         .dc.w      $008e
00538c: 60000016     bra.w      $53a4
005390: 48e76080     movem.l    d1-d2/a0, -(a7)
005394: c141         exg.l      d0, d1
005396: 206f0010     movea.l    $10(a7), a0
00539a: 2408         move.l     a0, d2
00539c: 4e40         trap       #$0
00539e: 008e         .dc.w      $008e
0053a0: 60000002     bra.w      $53a4
0053a4: 6408         bcc.b      $53ae
0053a6: 2d41800c     move.l     d1, -$7ff4(a6)
0053aa: 70ff         moveq      #$ff, d0
0053ac: 6002         bra.b      $53b0
0053ae: 2001         move.l     d1, d0
0053b0: 4cdf0106     movem.l    (a7)+, d1-d2/a0
0053b4: 4e75         rts        
0053b6: 6406         bcc.b      $53be
0053b8: 2d41800c     move.l     d1, -$7ff4(a6)
0053bc: 70ff         moveq      #$ff, d0
0053be: 4cdf043e     movem.l    (a7)+, d1-d5/a2
0053c2: 4e75         rts        
0053c4: 6406         bcc.b      $53cc
0053c6: 2d41800c     move.l     d1, -$7ff4(a6)
0053ca: 70ff         moveq      #$ff, d0
0053cc: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
0053d0: 4e75         rts        
0053d2: 6406         bcc.b      $53da
0053d4: 2d41800c     move.l     d1, -$7ff4(a6)
0053d8: 70ff         moveq      #$ff, d0
0053da: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
0053de: 4e75         rts        
0053e0: 6408         bcc.b      $53ea
0053e2: 2d41800c     move.l     d1, -$7ff4(a6)
0053e6: 70ff         moveq      #$ff, d0
0053e8: 6002         bra.b      $53ec
0053ea: 2001         move.l     d1, d0
0053ec: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
0053f0: 4e75         rts        
0053f2: 48e74000     movem.l    d1, -(a7)
0053f6: c141         exg.l      d0, d1
0053f8: 4e40         trap       #$0
0053fa: 005c6406     ori.w      #$6406, (a4)+
0053fe: 2d41800c     move.l     d1, -$7ff4(a6)
005402: 70ff         moveq      #$ff, d0
005404: 4cdf0002     movem.l    (a7)+, d1
005408: 4e75         rts        
00540a: 48e740e0     movem.l    d1/a0-a2, -(a7)
00540e: e340         asl.w      #$1, d0
005410: 207900000000 movea.l    $0.l, a0
005416: 2268004c     movea.l    $4c(a0), a1
00541a: 45e90168     lea.l      $168(a1), a2
00541e: 30320000     move.w     (a2, d0.w), d0
005422: 660a         bne.b      $542e
005424: 4cdf0702     movem.l    (a7)+, d1/a0-a2
005428: 303cffff     move.w     #$ffff, d0
00542c: 4e75         rts        
00542e: 22680048     movea.l    $48(a0), a1
005432: b051         cmp.w      (a1), d0
005434: 62f2         bhi.b      $5428
005436: e540         asl.w      #$2, d0
005438: d2c0         adda.w     d0, a1
00543a: e448         lsr.w      #$2, d0
00543c: 4a91         tst.l      (a1)
00543e: 67e8         beq.b      $5428
005440: 2251         movea.l    (a1), a1
005442: b051         cmp.w      (a1), d0
005444: 66e2         bne.b      $5428
005446: 22690004     movea.l    $4(a1), a1
00544a: 20290008     move.l     $8(a1), d0
00544e: 4cdf0702     movem.l    (a7)+, d1/a0-a2
005452: 4e75         rts        
005454: 4e550000     link.w     a5, #$0
005458: 48e78038     movem.l    d0/a2-a4, -(a7)
00545c: 7000         moveq      #$0, d0
00545e: 2840         movea.l    d0, a4
005460: 2640         movea.l    d0, a3
005462: 2440         movea.l    d0, a2
005464: 700d         moveq      #$d, d0
005466: 7200         moveq      #$0, d1
005468: 41fa0064     lea.l      $54ce(pc), a0
00546c: 47ee800c     lea.l      -$7ff4(a6), a3
005470: 7609         moveq      #$9, d3
005472: 2683         move.l     d3, (a3)
005474: 262e8990     move.l     -$7670(a6), d3
005478: 242e898c     move.l     -$7674(a6), d2
00547c: 286e8a60     movea.l    -$75a0(a6), a4
005480: 4e40         trap       #$0
005482: 0021653e     ori.b      #$3e, -(a1)
005486: 4a93         tst.l      (a3)
005488: 6718         beq.b      $54a2
00548a: 41fa0046     lea.l      $54d2(pc), a0
00548e: 7264         moveq      #$64, d1
005490: 7002         moveq      #$2, d0
005492: 4e40         trap       #$0
005494: 008c         .dc.w      $008c
005496: 41fa0036     lea.l      $54ce(pc), a0
00549a: 72dd         moveq      #$dd, d1
00549c: 003c0001     ori.b      #$1, ccr
0054a0: 6022         bra.b      $54c4
0054a2: 3d7c00418614 move.w     #$41, -$79ec(a6)
0054a8: 426e8616     clr.w      -$79ea(a6)
0054ac: 3d7c00028630 move.w     #$2, -$79d0(a6)
0054b2: 3d7c00018632 move.w     #$1, -$79ce(a6)
0054b8: 3d7c0002864c move.w     #$2, -$79b4(a6)
0054be: 3d7c0002864e move.w     #$2, -$79b2(a6)
0054c4: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
0054ca: 4e5d         unlk       a5
0054cc: 4e75         rts        
0054ce: 6369         bls.b      $5539
0054d0: 6f002a2a     ble.w      $7efc
0054d4: 2a2a2063     move.l     $2063(a2), d5
0054d8: 696f         bvs.b      $5549
0054da: 20747261     movea.l    $61(a4, d7.w), a0
0054de: 7068         moveq      #$68, d0
0054e0: 616e         bsr.b      $5550
0054e2: 646c         bcc.b      $5550
0054e4: 6572         bcs.b      $5558
0054e6: 206d6973     movea.l    $6973(a5), a0
0054ea: 6d61         blt.b      $554d
0054ec: 7463         moveq      #$63, d2
0054ee: 6820         bvc.b      $5510
0054f0: 2a2a2a2a     move.l     $2a2a(a2), d5
0054f4: 0d00         btst.l     d6, d0
0054f6: 4e4d         trap       #$d
0054f8: 00004e4d     ori.b      #$4d, d0
0054fc: 00014e4d     ori.b      #$4d, d1
005500: 00024e4d     ori.b      #$4d, d2
005504: 00034e4d     ori.b      #$4d, d3
005508: 00044e4d     ori.b      #$4d, d4
00550c: 00054e4d     ori.b      #$4d, d5
005510: 00064e4d     ori.b      #$4d, d6
005514: 00074e4d     ori.b      #$4d, d7
005518: 0008         .dc.w      $0008
00551a: 4e4d         trap       #$d
00551c: 0009         .dc.w      $0009
00551e: 4e4d         trap       #$d
005520: 000a         .dc.w      $000a
005522: 4e4d         trap       #$d
005524: 000b         .dc.w      $000b
005526: 4e4d         trap       #$d
005528: 000c         .dc.w      $000c
00552a: 4e4d         trap       #$d
00552c: 000d         .dc.w      $000d
00552e: 4e4d         trap       #$d
005530: 000e         .dc.w      $000e
005532: 4e4d         trap       #$d
005534: 000f         .dc.w      $000f
005536: 4e4d         trap       #$d
005538: 00104e4d     ori.b      #$4d, (a0)
00553c: 00114e4d     ori.b      #$4d, (a1)
005540: 00124e4d     ori.b      #$4d, (a2)
005544: 00134e4d     ori.b      #$4d, (a3)
005548: 00144e4d     ori.b      #$4d, (a4)
00554c: 00154e4d     ori.b      #$4d, (a5)
005550: 00164e4d     ori.b      #$4d, (a6)
005554: 00174e4d     ori.b      #$4d, (a7)
005558: 00184e4d     ori.b      #$4d, (a0)+
00555c: 00194e4d     ori.b      #$4d, (a1)+
005560: 001a4e4d     ori.b      #$4d, (a2)+
005564: 001b4e4d     ori.b      #$4d, (a3)+
005568: 001c4e4d     ori.b      #$4d, (a4)+
00556c: 001d4e4d     ori.b      #$4d, (a5)+
005570: 001e4e4d     ori.b      #$4d, (a6)+
005574: 001f4e4d     ori.b      #$4d, (a7)+
005578: 00204e4d     ori.b      #$4d, -(a0)
00557c: 00214e4d     ori.b      #$4d, -(a1)
005580: 00224e4d     ori.b      #$4d, -(a2)
005584: 00234e4d     ori.b      #$4d, -(a3)
005588: 00244e4d     ori.b      #$4d, -(a4)
00558c: 00254e4d     ori.b      #$4d, -(a5)
005590: 00264e4d     ori.b      #$4d, -(a6)
005594: 00274e4d     ori.b      #$4d, -(a7)
005598: 00284e4d0029 ori.b      #$4d, $29(a0)
00559e: 4e4d         trap       #$d
0055a0: 002a4e4d002b ori.b      #$4d, $2b(a2)
0055a6: 4e4d         trap       #$d
0055a8: 002c4e4d002d ori.b      #$4d, $2d(a4)
0055ae: 4e4d         trap       #$d
0055b0: 002e4e4d002f ori.b      #$4d, $2f(a6)
0055b6: 4e4d         trap       #$d
0055b8: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
0055be: 4e4d         trap       #$d
0055c0: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
0055c6: 4e4d         trap       #$d
0055c8: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
0055ce: 4e4d         trap       #$d
0055d0: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
0055d6: 4e4d         trap       #$d
0055d8: 00384e4d0039 ori.b      #$4d, $39.w
0055de: 4e4d         trap       #$d
0055e0: 003a         .dc.w      $003a
0055e2: 4e4d         trap       #$d
0055e4: 003b         .dc.w      $003b
0055e6: 4e4d         trap       #$d
0055e8: 003c         .dc.w      $003c
0055ea: 4e4d         trap       #$d
0055ec: 003d         .dc.w      $003d
0055ee: 4e4d         trap       #$d
0055f0: 003e         .dc.w      $003e
0055f2: 4e4d         trap       #$d
0055f4: 003f         .dc.w      $003f
0055f6: 4e4d         trap       #$d
0055f8: 00414e4d     ori.w      #$4e4d, d1
0055fc: 00424e4d     ori.w      #$4e4d, d2
005600: 00434e4d     ori.w      #$4e4d, d3
005604: 00444e4d     ori.w      #$4e4d, d4
005608: 00454e4d     ori.w      #$4e4d, d5
00560c: 00404e55     ori.w      #$4e55, d0
005610: 000048e7     ori.b      #$e7, d0
005614: cc302440     and.b      $40(a0, d2.w), d6
005618: 61ff000007d6 bsr.l      $5df0
00561e: 2a00         move.l     d0, d5
005620: 264a         movea.l    a2, a3
005622: 4a1a         tst.b      (a2)+
005624: 66fffffffffc bne.l      $5622
00562a: 538a         subq.l     #$1, a2
00562c: 60ff0000001c bra.l      $564a
005632: 2005         move.l     d5, d0
005634: 4c7c08010000000a divs.l     #$a, d0
00563c: 06010030     addi.b     #$30, d1
005640: 1481         move.b     d1, (a2)
005642: 4c7c58050000000a divs.l     #$a, d5
00564a: 0c220058     cmpi.b     #$58, -(a2)
00564e: 67ffffffffe2 beq.l      $5632
005654: 528a         addq.l     #$1, a2
005656: 7861         moveq      #$61, d4
005658: 60ff0000001a bra.l      $5674
00565e: 707a         moveq      #$7a, d0
005660: b084         cmp.l      d4, d0
005662: 66ff0000000c bne.l      $5670
005668: 7000         moveq      #$0, d0
00566a: 60ff00000026 bra.l      $5692
005670: 1484         move.b     d4, (a2)
005672: 5284         addq.l     #$1, d4
005674: 7200         moveq      #$0, d1
005676: 200b         move.l     a3, d0
005678: 61fffffffee8 bsr.l      $5562
00567e: 72ff         moveq      #$ff, d1
005680: b280         cmp.l      d0, d1
005682: 66ffffffffda bne.l      $565e
005688: 200b         move.l     a3, d0
00568a: 60ff00000006 bra.l      $5692
005690: 4e71         nop        
005692: 4ced0c32ffec movem.l    -$14(a5), d1/d4-d5/a2-a3
005698: 4e5d         unlk       a5
00569a: 4e75         rts        
00569c: 2f08         move.l     a0, -(a7)
00569e: 2040         movea.l    d0, a0
0056a0: b300         eor.b      d1, d0
0056a2: 08000000     btst.b     #$0, d0
0056a6: 6652         bne.b      $56fa
0056a8: 08010000     btst.b     #$0, d1
0056ac: c389         exg.l      d1, a1
0056ae: 6718         beq.b      $56c8
0056b0: b109         cmpm.b     (a1)+, (a0)+
0056b2: 6530         bcs.b      $56e4
0056b4: 6220         bhi.b      $56d6
0056b6: 4a28ffff     tst.b      -$1(a0)
0056ba: 660c         bne.b      $56c8
0056bc: 6034         bra.b      $56f2
0056be: 4a00         tst.b      d0
0056c0: 6730         beq.b      $56f2
0056c2: 0c4000ff     cmpi.w     #$ff, d0
0056c6: 632a         bls.b      $56f2
0056c8: 3018         move.w     (a0)+, d0
0056ca: b059         cmp.w      (a1)+, d0
0056cc: 67f0         beq.b      $56be
0056ce: 650e         bcs.b      $56de
0056d0: 0c4000ff     cmpi.w     #$ff, d0
0056d4: 6316         bls.b      $56ec
0056d6: 7001         moveq      #$1, d0
0056d8: 205f         movea.l    (a7)+, a0
0056da: c389         exg.l      d1, a1
0056dc: 4e75         rts        
0056de: 0c4000ff     cmpi.w     #$ff, d0
0056e2: 6308         bls.b      $56ec
0056e4: 70ff         moveq      #$ff, d0
0056e6: 205f         movea.l    (a7)+, a0
0056e8: c389         exg.l      d1, a1
0056ea: 4e75         rts        
0056ec: 4a29fffe     tst.b      -$2(a1)
0056f0: 66f2         bne.b      $56e4
0056f2: 7000         moveq      #$0, d0
0056f4: 205f         movea.l    (a7)+, a0
0056f6: c389         exg.l      d1, a1
0056f8: 4e75         rts        
0056fa: c389         exg.l      d1, a1
0056fc: 7000         moveq      #$0, d0
0056fe: 1018         move.b     (a0)+, d0
005700: b019         cmp.b      (a1)+, d0
005702: 56c8fffa     dbne       d0, $56fe
005706: 65dc         bcs.b      $56e4
005708: 5240         addq.w     #$1, d0
00570a: 205f         movea.l    (a7)+, a0
00570c: c389         exg.l      d1, a1
00570e: 4e75         rts        
005710: 2f08         move.l     a0, -(a7)
005712: 2040         movea.l    d0, a0
005714: 4a18         tst.b      (a0)+
005716: 670c         beq.b      $5724
005718: 4a18         tst.b      (a0)+
00571a: 6708         beq.b      $5724
00571c: 4a18         tst.b      (a0)+
00571e: 6704         beq.b      $5724
005720: 4a18         tst.b      (a0)+
005722: 66f0         bne.b      $5714
005724: 91c0         suba.l     d0, a0
005726: 2008         move.l     a0, d0
005728: 5380         subq.l     #$1, d0
00572a: 205f         movea.l    (a7)+, a0
00572c: 4e75         rts        
00572e: 2f08         move.l     a0, -(a7)
005730: 2040         movea.l    d0, a0
005732: c389         exg.l      d1, a1
005734: 10d9         move.b     (a1)+, (a0)+
005736: 670c         beq.b      $5744
005738: 10d9         move.b     (a1)+, (a0)+
00573a: 6708         beq.b      $5744
00573c: 10d9         move.b     (a1)+, (a0)+
00573e: 6704         beq.b      $5744
005740: 10d9         move.b     (a1)+, (a0)+
005742: 66f0         bne.b      $5734
005744: 205f         movea.l    (a7)+, a0
005746: c389         exg.l      d1, a1
005748: 4e75         rts        
00574a: 2f08         move.l     a0, -(a7)
00574c: 2040         movea.l    d0, a0
00574e: c389         exg.l      d1, a1
005750: 4a18         tst.b      (a0)+
005752: 670c         beq.b      $5760
005754: 4a18         tst.b      (a0)+
005756: 6708         beq.b      $5760
005758: 4a18         tst.b      (a0)+
00575a: 6704         beq.b      $5760
00575c: 4a18         tst.b      (a0)+
00575e: 66f0         bne.b      $5750
005760: 1159ffff     move.b     (a1)+, -$1(a0)
005764: 66ce         bne.b      $5734
005766: 60dc         bra.b      $5744
005768: 2f08         move.l     a0, -(a7)
00576a: 2040         movea.l    d0, a0
00576c: c389         exg.l      d1, a1
00576e: 10d9         move.b     (a1)+, (a0)+
005770: 6afc         bpl.b      $576e
005772: 4210         clr.b      (a0)
005774: 0220007f     andi.b     #$7f, -(a0)
005778: 205f         movea.l    (a7)+, a0
00577a: c389         exg.l      d1, a1
00577c: 4e75         rts        
00577e: 4e550000     link.w     a5, #$0
005782: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
005786: 2040         movea.l    d0, a0
005788: 2441         movea.l    d1, a2
00578a: 242d0008     move.l     $8(a5), d2
00578e: 6702         beq.b      $5792
005790: 610a         bsr.b      $579c
005792: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
005798: 4e5d         unlk       a5
00579a: 4e75         rts        
00579c: 4a82         tst.l      d2
00579e: 674a         beq.b      $57ea
0057a0: b1ca         cmpa.l     a2, a0
0057a2: 6248         bhi.b      $57ec
0057a4: 6744         beq.b      $57ea
0057a6: 300a         move.w     a2, d0
0057a8: 08000000     btst.b     #$0, d0
0057ac: 6704         beq.b      $57b2
0057ae: 10da         move.b     (a2)+, (a0)+
0057b0: 5382         subq.l     #$1, d2
0057b2: 3008         move.w     a0, d0
0057b4: 08000000     btst.b     #$0, d0
0057b8: 6624         bne.b      $57de
0057ba: e28a         lsr.l      #$1, d2
0057bc: 6406         bcc.b      $57c4
0057be: 6104         bsr.b      $57c4
0057c0: 10da         move.b     (a2)+, (a0)+
0057c2: 4e75         rts        
0057c4: e28a         lsr.l      #$1, d2
0057c6: 6406         bcc.b      $57ce
0057c8: 30da         move.w     (a2)+, (a0)+
0057ca: 6002         bra.b      $57ce
0057cc: 20da         move.l     (a2)+, (a0)+
0057ce: 51cafffc     dbra       d2, $57cc
0057d2: 5242         addq.w     #$1, d2
0057d4: 5382         subq.l     #$1, d2
0057d6: 64f4         bcc.b      $57cc
0057d8: 7400         moveq      #$0, d2
0057da: 4e75         rts        
0057dc: 10da         move.b     (a2)+, (a0)+
0057de: 51cafffc     dbra       d2, $57dc
0057e2: 5242         addq.w     #$1, d2
0057e4: 5382         subq.l     #$1, d2
0057e6: 64f4         bcc.b      $57dc
0057e8: 7400         moveq      #$0, d2
0057ea: 4e75         rts        
0057ec: d5c2         adda.l     d2, a2
0057ee: d1c2         adda.l     d2, a0
0057f0: 300a         move.w     a2, d0
0057f2: 08000000     btst.b     #$0, d0
0057f6: 6704         beq.b      $57fc
0057f8: 1122         move.b     -(a2), -(a0)
0057fa: 5382         subq.l     #$1, d2
0057fc: 3008         move.w     a0, d0
0057fe: 08000000     btst.b     #$0, d0
005802: 6624         bne.b      $5828
005804: e28a         lsr.l      #$1, d2
005806: 6406         bcc.b      $580e
005808: 6104         bsr.b      $580e
00580a: 1122         move.b     -(a2), -(a0)
00580c: 4e75         rts        
00580e: e28a         lsr.l      #$1, d2
005810: 6406         bcc.b      $5818
005812: 3122         move.w     -(a2), -(a0)
005814: 6002         bra.b      $5818
005816: 2122         move.l     -(a2), -(a0)
005818: 51cafffc     dbra       d2, $5816
00581c: 5242         addq.w     #$1, d2
00581e: 5382         subq.l     #$1, d2
005820: 64f4         bcc.b      $5816
005822: 7400         moveq      #$0, d2
005824: 4e75         rts        
005826: 1122         move.b     -(a2), -(a0)
005828: 51cafffc     dbra       d2, $5826
00582c: 5242         addq.w     #$1, d2
00582e: 5382         subq.l     #$1, d2
005830: 64f4         bcc.b      $5826
005832: 7400         moveq      #$0, d2
005834: 4e75         rts        
005836: 48e73800     movem.l    d2-d4, -(a7)
00583a: 2400         move.l     d0, d2
00583c: 2600         move.l     d0, d3
00583e: 4843         swap       d3
005840: 2801         move.l     d1, d4
005842: 4844         swap       d4
005844: c0c1         mulu.w     d1, d0
005846: c2c3         mulu.w     d3, d1
005848: c4c4         mulu.w     d4, d2
00584a: c6c4         mulu.w     d4, d3
00584c: 4840         swap       d0
00584e: d041         add.w      d1, d0
005850: 7800         moveq      #$0, d4
005852: d784         addx.l     d4, d3
005854: d042         add.w      d2, d0
005856: d784         addx.l     d4, d3
005858: 4840         swap       d0
00585a: 4241         clr.w      d1
00585c: 4841         swap       d1
00585e: 4242         clr.w      d2
005860: 4842         swap       d2
005862: d282         add.l      d2, d1
005864: d283         add.l      d3, d1
005866: 4a80         tst.l      d0
005868: 4cdf001c     movem.l    (a7)+, d2-d4
00586c: 4e75         rts        
00586e: 2f02         move.l     d2, -(a7)
005870: 7400         moveq      #$0, d2
005872: 4a80         tst.l      d0
005874: 6a04         bpl.b      $587a
005876: 4480         neg.l      d0
005878: 7403         moveq      #$3, d2
00587a: 4a81         tst.l      d1
00587c: 6a06         bpl.b      $5884
00587e: 4481         neg.l      d1
005880: 0a020001     eori.b     #$1, d2
005884: 6122         bsr.b      $58a8
005886: e20a         lsr.b      #$1, d2
005888: 6402         bcc.b      $588c
00588a: 4480         neg.l      d0
00588c: e20a         lsr.b      #$1, d2
00588e: 6402         bcc.b      $5892
005890: 4481         neg.l      d1
005892: 241f         move.l     (a7)+, d2
005894: 4a80         tst.l      d0
005896: 4e75         rts        
005898: 61d4         bsr.b      $586e
00589a: c141         exg.l      d0, d1
00589c: 4a80         tst.l      d0
00589e: 4e75         rts        
0058a0: 6106         bsr.b      $58a8
0058a2: c141         exg.l      d0, d1
0058a4: 4a80         tst.l      d0
0058a6: 4e75         rts        
0058a8: 48e73800     movem.l    d2-d4, -(a7)
0058ac: 2401         move.l     d1, d2
0058ae: 6606         bne.b      $58b6
0058b0: 81fc0000     divs.w     #$0, d0
0058b4: 606e         bra.b      $5924
0058b6: 5381         subq.l     #$1, d1
0058b8: 676a         beq.b      $5924
0058ba: 2801         move.l     d1, d4
0058bc: 2200         move.l     d0, d1
0058be: b481         cmp.l      d1, d2
0058c0: 650c         bcs.b      $58ce
0058c2: 6704         beq.b      $58c8
0058c4: 7000         moveq      #$0, d0
0058c6: 605c         bra.b      $5924
0058c8: 7001         moveq      #$1, d0
0058ca: 9282         sub.l      d2, d1
0058cc: 6056         bra.b      $5924
0058ce: 2602         move.l     d2, d3
0058d0: 6bf6         bmi.b      $58c8
0058d2: c684         and.l      d4, d3
0058d4: 6612         bne.b      $58e8
0058d6: e28a         lsr.l      #$1, d2
0058d8: 76ff         moveq      #$ff, d3
0058da: e28a         lsr.l      #$1, d2
0058dc: 55cbfffc     dbcs       d3, $58da
0058e0: 4483         neg.l      d3
0058e2: e6a8         lsr.l      d3, d0
0058e4: c284         and.l      d4, d1
0058e6: 603c         bra.b      $5924
0058e8: 7000         moveq      #$0, d0
0058ea: 76ff         moveq      #$ff, d3
0058ec: e382         asl.l      #$1, d2
0058ee: 6a06         bpl.b      $58f6
0058f0: b481         cmp.l      d1, d2
0058f2: 620a         bhi.b      $58fe
0058f4: 600c         bra.b      $5902
0058f6: b481         cmp.l      d1, d2
0058f8: 54cbfff2     dbcc       d3, $58ec
0058fc: 6704         beq.b      $5902
0058fe: 5283         addq.l     #$1, d3
005900: e28a         lsr.l      #$1, d2
005902: 4483         neg.l      d3
005904: 6004         bra.b      $590a
005906: e380         asl.l      #$1, d0
005908: e28a         lsr.l      #$1, d2
00590a: 9282         sub.l      d2, d1
00590c: 6510         bcs.b      $591e
00590e: 5280         addq.l     #$1, d0
005910: 51cbfff4     dbra       d3, $5906
005914: 600e         bra.b      $5924
005916: e380         asl.l      #$1, d0
005918: e28a         lsr.l      #$1, d2
00591a: d282         add.l      d2, d1
00591c: 65f0         bcs.b      $590e
00591e: 51cbfff6     dbra       d3, $5916
005922: d282         add.l      d2, d1
005924: 4cdf001c     movem.l    (a7)+, d2-d4
005928: 4a80         tst.l      d0
00592a: 4e75         rts        
00592c: 2a5f         movea.l    (a7)+, a5
00592e: 5385         subq.l     #$1, d5
005930: 6562         bcs.b      $5994
005932: 1018         move.b     (a0)+, d0
005934: 67f8         beq.b      $592e
005936: 0c00000d     cmpi.b     #$d, d0
00593a: 6758         beq.b      $5994
00593c: 0c000020     cmpi.b     #$20, d0
005940: 67ec         beq.b      $592e
005942: 0c000009     cmpi.b     #$9, d0
005946: 67e6         beq.b      $592e
005948: 0c00002c     cmpi.b     #$2c, d0
00594c: 67e0         beq.b      $592e
00594e: 5282         addq.l     #$1, d2
005950: 0c000022     cmpi.b     #$22, d0
005954: 6730         beq.b      $5986
005956: 0c000027     cmpi.b     #$27, d0
00595a: 672a         beq.b      $5986
00595c: 4868ffff     pea.l      -$1(a0)
005960: 5385         subq.l     #$1, d5
005962: 6530         bcs.b      $5994
005964: 1018         move.b     (a0)+, d0
005966: 67c6         beq.b      $592e
005968: 0c00000d     cmpi.b     #$d, d0
00596c: 6712         beq.b      $5980
00596e: 0c000020     cmpi.b     #$20, d0
005972: 670c         beq.b      $5980
005974: 0c000009     cmpi.b     #$9, d0
005978: 6706         beq.b      $5980
00597a: 0c00002c     cmpi.b     #$2c, d0
00597e: 66e0         bne.b      $5960
005980: 4228ffff     clr.b      -$1(a0)
005984: 60a8         bra.b      $592e
005986: 4850         pea.l      (a0)
005988: 5385         subq.l     #$1, d5
00598a: 6508         bcs.b      $5994
00598c: 1218         move.b     (a0)+, d1
00598e: b001         cmp.b      d1, d0
005990: 66f6         bne.b      $5988
005992: 60ec         bra.b      $5980
005994: 204f         movea.l    a7, a0
005996: 4857         pea.l      (a7)
005998: 2f02         move.l     d2, -(a7)
00599a: 5382         subq.l     #$1, d2
00599c: 6710         beq.b      $59ae
00599e: e582         asl.l      #$2, d2
0059a0: 20302800     move.l     (a0, d2.l), d0
0059a4: 21902800     move.l     (a0), (a0, d2.l)
0059a8: 20c0         move.l     d0, (a0)+
0059aa: 5182         subq.l     #$8, d2
0059ac: 62f2         bhi.b      $59a0
0059ae: 4ed5         jmp        (a5)
0059b0: 4e550000     link.w     a5, #$0
0059b4: 48e76080     movem.l    d1-d2/a0, -(a7)
0059b8: 2040         movea.l    d0, a0
0059ba: 2001         move.l     d1, d0
0059bc: 2f0a         move.l     a2, -(a7)
0059be: 4e40         trap       #$0
0059c0: 0080204a245f ori.l      #$204a245f, d0
0059c6: 6500048a     bcs.w      $5e52
0059ca: 2008         move.l     a0, d0
0059cc: 60000482     bra.w      $5e50
0059d0: 4e550000     link.w     a5, #$0
0059d4: 48e76080     movem.l    d1-d2/a0, -(a7)
0059d8: 204a         movea.l    a2, a0
0059da: 2440         movea.l    d0, a2
0059dc: 4e40         trap       #$0
0059de: 008124486000 ori.l      #$24486000, d1
0059e4: 046c4e550000 subi.w     #$4e55, $0(a4)
0059ea: 48e76080     movem.l    d1-d2/a0, -(a7)
0059ee: 7000         moveq      #$0, d0
0059f0: 4e40         trap       #$0
0059f2: 000a         .dc.w      $000a
0059f4: 6000045a     bra.w      $5e50
0059f8: 4e550000     link.w     a5, #$0
0059fc: 48e76080     movem.l    d1-d2/a0, -(a7)
005a00: 206d0008     movea.l    $8(a5), a0
005a04: 2210         move.l     (a0), d1
005a06: 2040         movea.l    d0, a0
005a08: 2017         move.l     (a7), d0
005a0a: 4e40         trap       #$0
005a0c: 00176500     ori.b      #$0, (a7)
005a10: 0442206d     subi.w     #$206d, d2
005a14: 0008         .dc.w      $0008
005a16: 2081         move.l     d1, (a0)
005a18: 60000440     bra.w      $5e5a
005a1c: 4e550000     link.w     a5, #$0
005a20: 48e76080     movem.l    d1-d2/a0, -(a7)
005a24: 4e40         trap       #$0
005a26: 000f         .dc.w      $000f
005a28: 60000426     bra.w      $5e50
005a2c: e188         lsl.l      #$8, d0
005a2e: 08c0001f     bset.b     #$1f, d0
005a32: 4e550000     link.w     a5, #$0
005a36: 48e76080     movem.l    d1-d2/a0, -(a7)
005a3a: 4e40         trap       #$0
005a3c: 000a         .dc.w      $000a
005a3e: 60000410     bra.w      $5e50
005a42: 4e550000     link.w     a5, #$0
005a46: 48e700c0     movem.l    a0-a1, -(a7)
005a4a: 2041         movea.l    d1, a0
005a4c: 2240         movea.l    d0, a1
005a4e: 222d0008     move.l     $8(a5), d1
005a52: 4e40         trap       #$0
005a54: 00116560     ori.b      #$60, (a1)
005a58: 7000         moveq      #$0, d0
005a5a: 6068         bra.b      $5ac4
005a5c: 4e550000     link.w     a5, #$0
005a60: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005a64: 2040         movea.l    d0, a0
005a66: 4e40         trap       #$0
005a68: 00106454     ori.b      #$54, (a0)
005a6c: 604a         bra.b      $5ab8
005a6e: 4e550000     link.w     a5, #$0
005a72: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005a76: 2040         movea.l    d0, a0
005a78: 2248         movea.l    a0, a1
005a7a: 1019         move.b     (a1)+, d0
005a7c: 0c00002f     cmpi.b     #$2f, d0
005a80: 671a         beq.b      $5a9c
005a82: 0c00002e     cmpi.b     #$2e, d0
005a86: 6622         bne.b      $5aaa
005a88: 0c19002e     cmpi.b     #$2e, (a1)+
005a8c: 67fa         beq.b      $5a88
005a8e: 1021         move.b     -(a1), d0
005a90: 672e         beq.b      $5ac0
005a92: 0c00002f     cmpi.b     #$2f, d0
005a96: 6612         bne.b      $5aaa
005a98: 2049         movea.l    a1, a0
005a9a: 60de         bra.b      $5a7a
005a9c: 1019         move.b     (a1)+, d0
005a9e: 0c00002f     cmpi.b     #$2f, d0
005aa2: 6706         beq.b      $5aaa
005aa4: 0c00002e     cmpi.b     #$2e, d0
005aa8: 67de         beq.b      $5a88
005aaa: 4e40         trap       #$0
005aac: 00106508     ori.b      #$8, (a0)
005ab0: 4a00         tst.b      d0
005ab2: 670c         beq.b      $5ac0
005ab4: 2049         movea.l    a1, a0
005ab6: 60c2         bra.b      $5a7a
005ab8: 2d41800c     move.l     d1, -$7ff4(a6)
005abc: 70ff         moveq      #$ff, d0
005abe: 6004         bra.b      $5ac4
005ac0: 2009         move.l     a1, d0
005ac2: 9097         sub.l      (a7), d0
005ac4: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
005aca: 4e5d         unlk       a5
005acc: 4e75         rts        
005ace: 4e550000     link.w     a5, #$0
005ad2: 48e76080     movem.l    d1-d2/a0, -(a7)
005ad6: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
005ada: 242d000c     move.l     $c(a5), d2
005ade: 0802000f     btst.b     #$f, d2
005ae2: 6708         beq.b      $5aec
005ae4: 262d0010     move.l     $10(a5), d3
005ae8: 282d0014     move.l     $14(a5), d4
005aec: 2040         movea.l    d0, a0
005aee: 2001         move.l     d1, d0
005af0: 222d0008     move.l     $8(a5), d1
005af4: 4e40         trap       #$0
005af6: 00256502     ori.b      #$2, -(a5)
005afa: 200a         move.l     a2, d0
005afc: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
005b00: 6000034e     bra.w      $5e50
005b04: 4e550000     link.w     a5, #$0
005b08: 48e76080     movem.l    d1-d2/a0, -(a7)
005b0c: 2040         movea.l    d0, a0
005b0e: 4e40         trap       #$0
005b10: 001a6500     ori.b      #$0, (a2)+
005b14: 033e         .dc.w      $033e
005b16: 2001         move.l     d1, d0
005b18: 60000336     bra.w      $5e50
005b1c: 4e550000     link.w     a5, #$0
005b20: 48e76080     movem.l    d1-d2/a0, -(a7)
005b24: 2040         movea.l    d0, a0
005b26: 4e40         trap       #$0
005b28: 001f6500     ori.b      #$0, (a7)+
005b2c: 0326         btst.l     d1, -(a6)
005b2e: 2001         move.l     d1, d0
005b30: 6000031e     bra.w      $5e50
005b34: 4e550000     link.w     a5, #$0
005b38: 48e76080     movem.l    d1-d2/a0, -(a7)
005b3c: 206d0008     movea.l    $8(a5), a0
005b40: 4e40         trap       #$0
005b42: 00186000     ori.b      #$0, (a0)+
005b46: 030a4e55     movep.w    $4e55(a2), d1
005b4a: 000048e7     ori.b      #$e7, d0
005b4e: 6080         bra.b      $5ad0
005b50: 2040         movea.l    d0, a0
005b52: 4e40         trap       #$0
005b54: 00266000     ori.b      #$0, -(a6)
005b58: 02f8         .dc.w      $02f8
005b5a: 4e550000     link.w     a5, #$0
005b5e: 48e76080     movem.l    d1-d2/a0, -(a7)
005b62: 08c1001f     bset.b     #$1f, d1
005b66: 600c         bra.b      $5b74
005b68: 4e550000     link.w     a5, #$0
005b6c: 48e76080     movem.l    d1-d2/a0, -(a7)
005b70: 242d0008     move.l     $8(a5), d2
005b74: 4e40         trap       #$0
005b76: 00276500     ori.b      #$0, -(a7)
005b7a: 02d8         .dc.w      $02d8
005b7c: 2002         move.l     d2, d0
005b7e: 600002d0     bra.w      $5e50
005b82: 4e550000     link.w     a5, #$0
005b86: 48e76080     movem.l    d1-d2/a0, -(a7)
005b8a: 4e40         trap       #$0
005b8c: 000b         .dc.w      $000b
005b8e: 600002c0     bra.w      $5e50
005b92: 4e550000     link.w     a5, #$0
005b96: 4e40         trap       #$0
005b98: 00524e5d     ori.w      #$4e5d, (a2)
005b9c: 4e75         rts        
005b9e: 4e550000     link.w     a5, #$0
005ba2: 48e76080     movem.l    d1-d2/a0, -(a7)
005ba6: 2f09         move.l     a1, -(a7)
005ba8: 206d0008     movea.l    $8(a5), a0
005bac: 226d000c     movea.l    $c(a5), a1
005bb0: 4e40         trap       #$0
005bb2: 001b225f     ori.b      #$5f, (a3)+
005bb6: 60000298     bra.w      $5e50
005bba: 4e550000     link.w     a5, #$0
005bbe: 48e73080     movem.l    d2-d3/a0, -(a7)
005bc2: 2401         move.l     d1, d2
005bc4: 262f0014     move.l     $14(a7), d3
005bc8: 206f0018     movea.l    $18(a7), a0
005bcc: 7202         moveq      #$2, d1
005bce: 4e40         trap       #$0
005bd0: 00536406     ori.w      #$6406, (a3)
005bd4: 2d41800c     move.l     d1, -$7ff4(a6)
005bd8: 70ff         moveq      #$ff, d0
005bda: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
005be0: 4e5d         unlk       a5
005be2: 4e75         rts        
005be4: 4e550000     link.w     a5, #$0
005be8: 48e77080     movem.l    d1-d3/a0, -(a7)
005bec: 2040         movea.l    d0, a0
005bee: 7200         moveq      #$0, d1
005bf0: 4e40         trap       #$0
005bf2: 00536406     ori.w      #$6406, (a3)
005bf6: 2d41800c     move.l     d1, -$7ff4(a6)
005bfa: 70ff         moveq      #$ff, d0
005bfc: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
005c02: 4e5d         unlk       a5
005c04: 4e75         rts        
005c06: 4e550000     link.w     a5, #$0
005c0a: 48e77080     movem.l    d1-d3/a0, -(a7)
005c0e: 7201         moveq      #$1, d1
005c10: 60de         bra.b      $5bf0
005c12: 4e550000     link.w     a5, #$0
005c16: 48e77080     movem.l    d1-d3/a0, -(a7)
005c1a: 2040         movea.l    d0, a0
005c1c: 7203         moveq      #$3, d1
005c1e: 60d0         bra.b      $5bf0
005c20: 4e550000     link.w     a5, #$0
005c24: 48e73080     movem.l    d2-d3/a0, -(a7)
005c28: 2041         movea.l    d1, a0
005c2a: 7207         moveq      #$7, d1
005c2c: 60a0         bra.b      $5bce
005c2e: 4e550000     link.w     a5, #$0
005c32: 827c0008     or.w       #$8, d1
005c36: 4e40         trap       #$0
005c38: 00536406     ori.w      #$6406, (a3)
005c3c: 2d41800c     move.l     d1, -$7ff4(a6)
005c40: 72ff         moveq      #$ff, d1
005c42: 2001         move.l     d1, d0
005c44: 4e5d         unlk       a5
005c46: 4e75         rts        
005c48: 4e550000     link.w     a5, #$0
005c4c: 2f01         move.l     d1, -(a7)
005c4e: 7206         moveq      #$6, d1
005c50: 4e40         trap       #$0
005c52: 00536406     ori.w      #$6406, (a3)
005c56: 2d41800c     move.l     d1, -$7ff4(a6)
005c5a: 72ff         moveq      #$ff, d1
005c5c: 2001         move.l     d1, d0
005c5e: 222dfffc     move.l     -$4(a5), d1
005c62: 4e5d         unlk       a5
005c64: 4e75         rts        
005c66: 4e550000     link.w     a5, #$0
005c6a: 2f02         move.l     d2, -(a7)
005c6c: 7409         moveq      #$9, d2
005c6e: 6012         bra.b      $5c82
005c70: 4e550000     link.w     a5, #$0
005c74: 2f02         move.l     d2, -(a7)
005c76: 740a         moveq      #$a, d2
005c78: 6008         bra.b      $5c82
005c7a: 4e550000     link.w     a5, #$0
005c7e: 2f02         move.l     d2, -(a7)
005c80: 740b         moveq      #$b, d2
005c82: c342         exg.l      d1, d2
005c84: 826f000e     or.w       $e(a7), d1
005c88: 4e40         trap       #$0
005c8a: 00536406     ori.w      #$6406, (a3)
005c8e: 2d41800c     move.l     d1, -$7ff4(a6)
005c92: 72ff         moveq      #$ff, d1
005c94: 2001         move.l     d1, d0
005c96: 242dfffc     move.l     -$4(a5), d2
005c9a: 4e5d         unlk       a5
005c9c: 4e75         rts        
005c9e: 4e550000     link.w     a5, #$0
005ca2: 48e73000     movem.l    d2-d3, -(a7)
005ca6: 7404         moveq      #$4, d2
005ca8: c342         exg.l      d1, d2
005caa: 262f0010     move.l     $10(a7), d3
005cae: 4e40         trap       #$0
005cb0: 00536406     ori.w      #$6406, (a3)
005cb4: 2d41800c     move.l     d1, -$7ff4(a6)
005cb8: 72ff         moveq      #$ff, d1
005cba: 2001         move.l     d1, d0
005cbc: 4ced000cfff8 movem.l    -$8(a5), d2-d3
005cc2: 4e5d         unlk       a5
005cc4: 4e75         rts        
005cc6: 4e550000     link.w     a5, #$0
005cca: 48e73000     movem.l    d2-d3, -(a7)
005cce: 7405         moveq      #$5, d2
005cd0: 60d6         bra.b      $5ca8
005cd2: 4e550000     link.w     a5, #$0
005cd6: 48e76080     movem.l    d1-d2/a0, -(a7)
005cda: 2040         movea.l    d0, a0
005cdc: 3001         move.w     d1, d0
005cde: 48e70060     movem.l    a1-a2, -(a7)
005ce2: 4e40         trap       #$0
005ce4: 00006502     ori.b      #$2, d0
005ce8: 200a         move.l     a2, d0
005cea: 4cdf0600     movem.l    (a7)+, a1-a2
005cee: 60000160     bra.w      $5e50
005cf2: 4e550000     link.w     a5, #$0
005cf6: 48e76080     movem.l    d1-d2/a0, -(a7)
005cfa: 2040         movea.l    d0, a0
005cfc: 3001         move.w     d1, d0
005cfe: 48e70060     movem.l    a1-a2, -(a7)
005d02: 4e40         trap       #$0
005d04: 000160de     ori.b      #$de, d1
005d08: 4e550000     link.w     a5, #$0
005d0c: 48e76080     movem.l    d1-d2/a0, -(a7)
005d10: 2f0a         move.l     a2, -(a7)
005d12: 2440         movea.l    d0, a2
005d14: 4e40         trap       #$0
005d16: 0002245f     ori.b      #$5f, d2
005d1a: 60000134     bra.w      $5e50
005d1e: 4e550000     link.w     a5, #$0
005d22: 48e76080     movem.l    d1-d2/a0, -(a7)
005d26: 2040         movea.l    d0, a0
005d28: 3001         move.w     d1, d0
005d2a: 4e40         trap       #$0
005d2c: 001d6000     ori.b      #$0, (a5)+
005d30: 0120         btst.l     d0, -(a0)
005d32: 4e550000     link.w     a5, #$0
005d36: 48e76080     movem.l    d1-d2/a0, -(a7)
005d3a: 4e40         trap       #$0
005d3c: 0008         .dc.w      $0008
005d3e: 60000110     bra.w      $5e50
005d42: 4e550000     link.w     a5, #$0
005d46: 48e76080     movem.l    d1-d2/a0, -(a7)
005d4a: 2040         movea.l    d0, a0
005d4c: 7000         moveq      #$0, d0
005d4e: 4e40         trap       #$0
005d50: 00046500     ori.b      #$0, d4
005d54: 00fe         .dc.w      $00fe
005d56: 2408         move.l     a0, d2
005d58: 670000f6     beq.w      $5e50
005d5c: 4258         clr.w      (a0)+
005d5e: 3081         move.w     d1, (a0)
005d60: 600000ee     bra.w      $5e50
005d64: 4e550000     link.w     a5, #$0
005d68: 48e76080     movem.l    d1-d2/a0, -(a7)
005d6c: 4e40         trap       #$0
005d6e: 000d         .dc.w      $000d
005d70: 600000de     bra.w      $5e50
005d74: 4e550000     link.w     a5, #$0
005d78: 48e76080     movem.l    d1-d2/a0, -(a7)
005d7c: 48e71c40     movem.l    d3-d5/a1, -(a7)
005d80: 7a03         moveq      #$3, d5
005d82: 602e         bra.b      $5db2
005d84: 4e550000     link.w     a5, #$0
005d88: 48e76080     movem.l    d1-d2/a0, -(a7)
005d8c: 48e71c40     movem.l    d3-d5/a1, -(a7)
005d90: 7a01         moveq      #$1, d5
005d92: 601e         bra.b      $5db2
005d94: 4e550000     link.w     a5, #$0
005d98: 48e76080     movem.l    d1-d2/a0, -(a7)
005d9c: 48e71c40     movem.l    d3-d5/a1, -(a7)
005da0: 7a02         moveq      #$2, d5
005da2: 600e         bra.b      $5db2
005da4: 4e550000     link.w     a5, #$0
005da8: 48e76080     movem.l    d1-d2/a0, -(a7)
005dac: 48e71c40     movem.l    d3-d5/a1, -(a7)
005db0: 7a00         moveq      #$0, d5
005db2: 2040         movea.l    d0, a0
005db4: 2401         move.l     d1, d2
005db6: 226d0008     movea.l    $8(a5), a1
005dba: 302d0012     move.w     $12(a5), d0
005dbe: 4840         swap       d0
005dc0: 302d000e     move.w     $e(a5), d0
005dc4: 222d0014     move.l     $14(a5), d1
005dc8: 7603         moveq      #$3, d3
005dca: 08050001     btst.b     #$1, d5
005dce: 6704         beq.b      $5dd4
005dd0: 262d001c     move.l     $1c(a5), d3
005dd4: 282d0018     move.l     $18(a5), d4
005dd8: 08050000     btst.b     #$0, d5
005ddc: 6606         bne.b      $5de4
005dde: 4e40         trap       #$0
005de0: 00036004     ori.b      #$4, d3
005de4: 4e40         trap       #$0
005de6: 00054cdf     ori.b      #$df, d5
005dea: 023860000062 andi.b     #$0, $62.w
005df0: 4e550000     link.w     a5, #$0
005df4: 48e76080     movem.l    d1-d2/a0, -(a7)
005df8: 4e40         trap       #$0
005dfa: 000c         .dc.w      $000c
005dfc: 60000052     bra.w      $5e50
005e00: 4e550000     link.w     a5, #$0
005e04: 48e76080     movem.l    d1-d2/a0, -(a7)
005e08: 4e40         trap       #$0
005e0a: 000c         .dc.w      $000c
005e0c: 65000044     bcs.w      $5e52
005e10: 2001         move.l     d1, d0
005e12: 6000003c     bra.w      $5e50
005e16: 4e550000     link.w     a5, #$0
005e1a: 48e76080     movem.l    d1-d2/a0, -(a7)
005e1e: 2200         move.l     d0, d1
005e20: 4e40         trap       #$0
005e22: 001c6000     ori.b      #$0, (a4)+
005e26: 002a4e550000 ori.b      #$55, $0(a2)
005e2c: 48e76080     movem.l    d1-d2/a0, -(a7)
005e30: 41fa0012     lea.l      $5e44(pc), a0
005e34: 2d408988     move.l     d0, -$7678(a6)
005e38: 6602         bne.b      $5e3c
005e3a: 2040         movea.l    d0, a0
005e3c: 4e40         trap       #$0
005e3e: 0009         .dc.w      $0009
005e40: 6000000e     bra.w      $5e50
005e44: 2001         move.l     d1, d0
005e46: 206e8988     movea.l    -$7678(a6), a0
005e4a: 4e90         jsr        (a0)
005e4c: 4e40         trap       #$0
005e4e: 001e640c     ori.b      #$c, (a6)+
005e52: 2d41800c     move.l     d1, -$7ff4(a6)
005e56: 70ff         moveq      #$ff, d0
005e58: 6004         bra.b      $5e5e
005e5a: 65f6         bcs.b      $5e52
005e5c: 7000         moveq      #$0, d0
005e5e: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
005e64: 4e5d         unlk       a5
005e66: 4e75         rts        
005e68: 4e550000     link.w     a5, #$0
005e6c: 2200         move.l     d0, d1
005e6e: 6100001e     bsr.w      $5e8e
005e72: 6100f72e     bsr.w      $55a2
005e76: 6008         bra.b      $5e80
005e78: 4e550000     link.w     a5, #$0
005e7c: 4afc         illegal    #$4afc
005e7e: 2200         move.l     d0, d1
005e80: 4e40         trap       #$0
005e82: 0006dead     ori.b      #$ad, d6
005e86: dead003c     add.l      $3c(a5), d7
005e8a: 00014e75     ori.b      #$75, d1
005e8e: 4e75         rts        
