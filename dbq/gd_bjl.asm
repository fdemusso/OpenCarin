000050: 2d468010     move.l     d6, -$7ff0(a6)
000054: 2d468014     move.l     d6, -$7fec(a6)
000058: 3d438018     move.w     d3, -$7fe8(a6)
00005c: 082b00050014 btst.b     #$5, $14(a3)
000062: 670e         beq.b      $72
000064: 2d4c801a     move.l     a4, -$7fe6(a6)
000068: 6608         bne.b      $72
00006a: 2d7900000000801a move.l     $0.l, -$7fe6(a6)
000072: 4a85         tst.l      d5
000074: 671e         beq.b      $94
000076: 08050000     btst.b     #$0, d5
00007a: 6614         bne.b      $90
00007c: 41f55800     lea.l      (a5, d5.l), a0
000080: 4a68fffe     tst.w      -$2(a0)
000084: 660a         bne.b      $90
000086: 5988         subq.l     #$4, a0
000088: 49e8fffc     lea.l      -$4(a0), a4
00008c: 7001         moveq      #$1, d0
00008e: 6026         bra.b      $b6
000090: 423558ff     clr.b      -$1(a5, d5.l)
000094: 204d         movea.l    a5, a0
000096: d7eb000c     adda.l     $c(a3), a3
00009a: 42a7         clr.l      -(a7)
00009c: 2f0b         move.l     a3, -(a7)
00009e: 7401         moveq      #$1, d2
0000a0: 203c0000a060 move.l     #$a060, d0
0000a6: 4ebb0800     jsr        $a8(pc,d0.l)
0000aa: 6076         bra.b      $122
0000ac: 43e80004     lea.l      $4(a0), a1
0000b0: 2d49925e     move.l     a1, -$6da2(a6)
0000b4: 7400         moveq      #$0, d2
0000b6: 2260         movea.l    -(a0), a1
0000b8: 2e09         move.l     a1, d7
0000ba: 670c         beq.b      $c8
0000bc: d3cd         adda.l     a5, a1
0000be: 4229ffff     clr.b      -$1(a1)
0000c2: 2089         move.l     a1, (a0)
0000c4: 5282         addq.l     #$1, d2
0000c6: 60ee         bra.b      $b6
0000c8: 5380         subq.l     #$1, d0
0000ca: 67e0         beq.b      $ac
0000cc: 4a82         tst.l      d2
0000ce: 6610         bne.b      $e0
0000d0: 4a68fffe     tst.w      -$2(a0)
0000d4: 670a         beq.b      $e0
0000d6: 4228ffff     clr.b      -$1(a0)
0000da: 2448         movea.l    a0, a2
0000dc: 5888         addq.l     #$4, a0
0000de: 6006         bra.b      $e6
0000e0: 208d         move.l     a5, (a0)
0000e2: 2448         movea.l    a0, a2
0000e4: 5282         addq.l     #$1, d2
0000e6: 5282         addq.l     #$1, d2
0000e8: 4a94         tst.l      (a4)
0000ea: 6718         beq.b      $104
0000ec: 2854         movea.l    (a4), a4
0000ee: 4a1c         tst.b      (a4)+
0000f0: 66fc         bne.b      $ee
0000f2: b5cc         cmpa.l     a4, a2
0000f4: 631e         bls.b      $114
0000f6: 0c1c00fc     cmpi.b     #$fc, (a4)+
0000fa: 6618         bne.b      $114
0000fc: 528c         addq.l     #$1, a4
0000fe: 2654         movea.l    (a4), a3
000100: d7cd         adda.l     a5, a3
000102: 6014         bra.b      $118
000104: 0c2d00fc0002 cmpi.b     #$fc, $2(a5)
00010a: 6608         bne.b      $114
00010c: 266d0004     movea.l    $4(a5), a3
000110: d7cd         adda.l     a5, a3
000112: 6004         bra.b      $118
000114: d7eb000c     adda.l     $c(a3), a3
000118: 210b         move.l     a3, -(a0)
00011a: 2f08         move.l     a0, -(a7)
00011c: 4228ffff     clr.b      -$1(a0)
000120: 2f02         move.l     d2, -(a7)
000122: 207c00009a50 movea.l    #$9a50, a0
000128: 4ebb8800     jsr        $12a(pc,a0.l)
00012c: 6500011c     bcs.w      $24a
000130: 6120         bsr.b      $152
000132: 4cdf0003     movem.l    (a7)+, d0-d1
000136: 9bcd         suba.l     a5, a5
000138: 2f2e925e     move.l     -$6da2(a6), -(a7)
00013c: 207c0000021c movea.l    #$21c, a0
000142: 4ebb8800     jsr        $144(pc,a0.l)
000146: 7000         moveq      #$0, d0
000148: 207c0000a682 movea.l    #$a682, a0
00014e: 4ebb8800     jsr        $150(pc,a0.l)
000152: 207cffff94da movea.l    #$ffff94da, a0
000158: d1ce         adda.l     a6, a0
00015a: 2d488004     move.l     a0, -$7ffc(a6)
00015e: 2d4f8000     move.l     a7, -$8000(a6)
000162: 2d4f8008     move.l     a7, -$7ff8(a6)
000166: 203cffffff04 move.l     #$ffffff04, d0
00016c: d08f         add.l      a7, d0
00016e: b0ae8008     cmp.l      -$7ff8(a6), d0
000172: 6502         bcs.b      $176
000174: 4e75         rts        
000176: b0ae8004     cmp.l      -$7ffc(a6), d0
00017a: 6506         bcs.b      $182
00017c: 2d408008     move.l     d0, -$7ff8(a6)
000180: 4e75         rts        
000182: 41fa0070     lea.l      $1f4(pc), a0
000186: 6110         bsr.b      $198
000188: 2f3c00000101 move.l     #$101, -(a7)
00018e: 207c0000a652 movea.l    #$a652, a0
000194: 4ebb8800     jsr        $196(pc,a0.l)
000198: 3f01         move.w     d1, -(a7)
00019a: 7264         moveq      #$64, d1
00019c: 7002         moveq      #$2, d0
00019e: 4e40         trap       #$0
0001a0: 008c         .dc.w      $008c
0001a2: 321f         move.w     (a7)+, d1
0001a4: 4e75         rts        
0001a6: 202e8000     move.l     -$8000(a6), d0
0001aa: 90ae8008     sub.l      -$7ff8(a6), d0
0001ae: 4e75         rts        
0001b0: 202e8008     move.l     -$7ff8(a6), d0
0001b4: 90ae8004     sub.l      -$7ffc(a6), d0
0001b8: 4e75         rts        
0001ba: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
0001be: 302f001e     move.w     $1e(a7), d0
0001c2: 04400080     subi.w     #$80, d0
0001c6: e440         asr.w      #$2, d0
0001c8: 0c40000f     cmpi.w     #$f, d0
0001cc: 660c         bne.b      $1da
0001ce: 41fa006b     lea.l      $23b(pc), a0
0001d2: 7200         moveq      #$0, d1
0001d4: 4e40         trap       #$0
0001d6: 0021640c     ori.b      #$c, -(a1)
0001da: 227c0000a610 movea.l    #$a610, a1
0001e0: 4ebb9800     jsr        $1e2(pc,a1.l)
0001e4: 6564         bcs.b      $24a
0001e6: 4cdf0f03     movem.l    (a7)+, d0-d1/a0-a3
0001ea: 508f         addq.l     #$8, a7
0001ec: 5997         subq.l     #$4, (a7)
0001ee: 4e75         rts        
0001f0: 4afb         .dc.w      $4afb
0001f2: 00502a2a     ori.w      #$2a2a, (a0)
0001f6: 2a2a2053     move.l     $2053(a2), d5
0001fa: 7461         moveq      #$61, d2
0001fc: 636b         bls.b      $269
0001fe: 204f         movea.l    a7, a0
000200: 7665         moveq      #$65, d3
000202: 7266         moveq      #$66, d1
000204: 6c6f         bge.b      $275
000206: 7720         .dc.w      $7720
000208: 2a2a2a2a     move.l     $2a2a(a2), d5
00020c: 0d00         btst.l     d6, d0
00020e: 2a2a2a2a     move.l     $2a2a(a2), d5
000212: 2043         movea.l    d3, a0
000214: 616e         bsr.b      $284
000216: 277420696e73 move.l     $69(a4, d2.w), $6e73(a3)
00021c: 7461         moveq      #$61, d2
00021e: 6c6c         bge.b      $28c
000220: 20747261     movea.l    $61(a4, d7.w), a0
000224: 7020         moveq      #$20, d0
000226: 6861         bvc.b      $289
000228: 6e64         bgt.b      $28e
00022a: 6c65         bge.b      $291
00022c: 7220         moveq      #$20, d1
00022e: 2a2a2a2a     move.l     $2a2a(a2), d5
000232: 0d00         btst.l     d6, d0
000234: 202a2a2a     move.l     $2a2a(a2), d0
000238: 2a20         move.l     -(a0), d5
00023a: 006d61746800 ori.w      #$6174, $6800(a5)
000240: 00000000     ori.b      #$0, d0
000244: 223c00000040 move.l     #$40, d1
00024a: 2f08         move.l     a0, -(a7)
00024c: 41faffc0     lea.l      $20e(pc), a0
000250: 6100ff46     bsr.w      $198
000254: 227cffff8ed6 movea.l    #$ffff8ed6, a1
00025a: d3ce         adda.l     a6, a1
00025c: 41faffd6     lea.l      $234(pc), a0
000260: 6128         bsr.b      $28a
000262: 205f         movea.l    (a7)+, a0
000264: 5389         subq.l     #$1, a1
000266: 6122         bsr.b      $28a
000268: 41faffca     lea.l      $234(pc), a0
00026c: 5389         subq.l     #$1, a1
00026e: 611a         bsr.b      $28a
000270: 137c000dffff move.b     #$d, -$1(a1)
000276: 207cffff8ed6 movea.l    #$ffff8ed6, a0
00027c: d1ce         adda.l     a6, a0
00027e: 6100ff18     bsr.w      $198
000282: 4e40         trap       #$0
000284: 00064e40     ori.b      #$40, d6
000288: 000612d8     ori.b      #$d8, d6
00028c: 66fc         bne.b      $28a
00028e: 4e75         rts        
000290: 4e550000     link.w     a5, #$0
000294: 48e78000     movem.l    d0, -(a7)
000298: 4e5d         unlk       a5
00029a: 4e75         rts        
00029c: 4e550000     link.w     a5, #$0
0002a0: 48e78000     movem.l    d0, -(a7)
0002a4: 0c9700002321 cmpi.l     #$2321, (a7)
0002aa: 6606         bne.b      $2b2
0002ac: 1d7c0001801e move.b     #$1, -$7fe2(a6)
0002b2: 2017         move.l     (a7), d0
0002b4: 61007f1a     bsr.w      $81d0
0002b8: 4e5d         unlk       a5
0002ba: 4e75         rts        
0002bc: 4e550000     link.w     a5, #$0
0002c0: 48e78080     movem.l    d0/a0, -(a7)
0002c4: 4fefffec     lea.l      -$14(a7), a7
0002c8: 41ee9262     lea.l      -$6d9e(a6), a0
0002cc: 2f480010     move.l     a0, $10(a7)
0002d0: 422f0007     clr.b      $7(a7)
0002d4: 422f0001     clr.b      $1(a7)
0002d8: 61007fb0     bsr.w      $828a
0002dc: 2f400002     move.l     d0, $2(a7)
0002e0: 0caf000023260002 cmpi.l     #$2326, $2(a7)
0002e8: 6606         bne.b      $2f0
0002ea: 1f7c00010001 move.b     #$1, $1(a7)
0002f0: 42af000c     clr.l      $c(a7)
0002f4: 701c         moveq      #$1c, d0
0002f6: 2f400008     move.l     d0, $8(a7)
0002fa: 6042         bra.b      $33e
0002fc: 206f0010     movea.l    $10(a7), a0
000300: 202f0002     move.l     $2(a7), d0
000304: b090         cmp.l      (a0), d0
000306: 662a         bne.b      $332
000308: 206f0010     movea.l    $10(a7), a0
00030c: 302e8020     move.w     -$7fe0(a6), d0
000310: b0680004     cmp.w      $4(a0), d0
000314: 661c         bne.b      $332
000316: 1f7c00010007 move.b     #$1, $7(a7)
00031c: 206f0010     movea.l    $10(a7), a0
000320: 20680008     movea.l    $8(a0), a0
000324: 4e90         jsr        (a0)
000326: 206f0010     movea.l    $10(a7), a0
00032a: 3d6800068020 move.w     $6(a0), -$7fe0(a6)
000330: 600c         bra.b      $33e
000332: 06af0000000c0010 addi.l     #$c, $10(a7)
00033a: 52af000c     addq.l     #$1, $c(a7)
00033e: 4a2f0007     tst.b      $7(a7)
000342: 660a         bne.b      $34e
000344: 202f000c     move.l     $c(a7), d0
000348: b0af0008     cmp.l      $8(a7), d0
00034c: 6dae         blt.b      $2fc
00034e: 102f0001     move.b     $1(a7), d0
000352: 4fef0014     lea.l      $14(a7), a7
000356: 4ced0100fffc movem.l    -$4(a5), a0
00035c: 4e5d         unlk       a5
00035e: 4e75         rts        
000360: 4e550000     link.w     a5, #$0
000364: 48e7c080     movem.l    d0-d1/a0, -(a7)
000368: 558f         subq.l     #$2, a7
00036a: 422f0001     clr.b      $1(a7)
00036e: 422e801e     clr.b      -$7fe2(a6)
000372: 41fb0170000081e6 lea.l      $81e6(a16, invalid.w), a0
00037a: 2008         move.l     a0, d0
00037c: 4eae9486     jsr        -$6b7a(a6)
000380: 61000072     bsr.w      $3f4
000384: 41fb0170ffffff16 lea.l      $ffffff16(a16, invalid.w), a0
00038c: 2008         move.l     a0, d0
00038e: 61007ed8     bsr.w      $8268
000392: 4a80         tst.l      d0
000394: 6618         bne.b      $3ae
000396: 223c00002325 move.l     #$2325, d1
00039c: 4eae9480     jsr        -$6b80(a6)
0003a0: 4eae948c     jsr        -$6b74(a6)
0003a4: 4eae9492     jsr        -$6b6e(a6)
0003a8: 7000         moveq      #$0, d0
0003aa: 4eae947a     jsr        -$6b86(a6)
0003ae: 61000072     bsr.w      $422
0003b2: 4a00         tst.b      d0
0003b4: 6618         bne.b      $3ce
0003b6: 223c00002325 move.l     #$2325, d1
0003bc: 4eae9480     jsr        -$6b80(a6)
0003c0: 4eae948c     jsr        -$6b74(a6)
0003c4: 4eae9492     jsr        -$6b6e(a6)
0003c8: 7000         moveq      #$0, d0
0003ca: 4eae947a     jsr        -$6b86(a6)
0003ce: 3d7c00018020 move.w     #$1, -$7fe0(a6)
0003d4: 422f0001     clr.b      $1(a7)
0003d8: 6008         bra.b      $3e2
0003da: 6100fee0     bsr.w      $2bc
0003de: 1f400001     move.b     d0, $1(a7)
0003e2: 4a2f0001     tst.b      $1(a7)
0003e6: 67f2         beq.b      $3da
0003e8: 548f         addq.l     #$2, a7
0003ea: 4ced0100fffc movem.l    -$4(a5), a0
0003f0: 4e5d         unlk       a5
0003f2: 4e75         rts        
0003f4: 4e550000     link.w     a5, #$0
0003f8: 48e78000     movem.l    d0, -(a7)
0003fc: 4e5d         unlk       a5
0003fe: 4e75         rts        
000400: 4e550000     link.w     a5, #$0
000404: 48e78000     movem.l    d0, -(a7)
000408: 422e84e2     clr.b      -$7b1e(a6)
00040c: 4e5d         unlk       a5
00040e: 4e75         rts        
000410: 4e550000     link.w     a5, #$0
000414: 48e78000     movem.l    d0, -(a7)
000418: 1d7c000184e2 move.b     #$1, -$7b1e(a6)
00041e: 4e5d         unlk       a5
000420: 4e75         rts        
000422: 4e550000     link.w     a5, #$0
000426: 48e7c080     movem.l    d0-d1/a0, -(a7)
00042a: 486e843c     pea.l      -$7bc4(a6)
00042e: 486e803c     pea.l      -$7fc4(a6)
000432: 486e8038     pea.l      -$7fc8(a6)
000436: 4878000c     pea.l      $c.w
00043a: 7202         moveq      #$2, d1
00043c: 203c0000cba8 move.l     #$cba8, d0
000442: 6100683e     bsr.w      $6c82
000446: 4fef0010     lea.l      $10(a7), a7
00044a: 2d408022     move.l     d0, -$7fde(a6)
00044e: 4aae8022     tst.l      -$7fde(a6)
000452: 672e         beq.b      $482
000454: 48780028     pea.l      $28.w
000458: 48780078     pea.l      $78.w
00045c: 487803e8     pea.l      $3e8.w
000460: 487800c8     pea.l      $c8.w
000464: 723c         moveq      #$3c, d1
000466: 202e8022     move.l     -$7fde(a6), d0
00046a: 61001ec4     bsr.w      $2330
00046e: 4fef0010     lea.l      $10(a7), a7
000472: 4eae9498     jsr        -$6b68(a6)
000476: 4a00         tst.b      d0
000478: 6708         beq.b      $482
00047a: 610070fa     bsr.w      $7576
00047e: 4a00         tst.b      d0
000480: 6604         bne.b      $486
000482: 7000         moveq      #$0, d0
000484: 6024         bra.b      $4aa
000486: 41fa1c84     lea.l      $210c(pc), a0
00048a: 2208         move.l     a0, d1
00048c: 41ee8490     lea.l      -$7b70(a6), a0
000490: 2008         move.l     a0, d0
000492: 4eae94aa     jsr        -$6b56(a6)
000496: 1d7c000284dc move.b     #$2, -$7b24(a6)
00049c: 422e8440     clr.b      -$7bc0(a6)
0004a0: 422e8442     clr.b      -$7bbe(a6)
0004a4: 422e8441     clr.b      -$7bbf(a6)
0004a8: 7001         moveq      #$1, d0
0004aa: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0004b0: 4e5d         unlk       a5
0004b2: 4e75         rts        
0004b4: 4e550000     link.w     a5, #$0
0004b8: 48e7c000     movem.l    d0-d1, -(a7)
0004bc: 2f2e843c     move.l     -$7bc4(a6), -(a7)
0004c0: 486e803c     pea.l      -$7fc4(a6)
0004c4: 2f2e8038     move.l     -$7fc8(a6), -(a7)
0004c8: 4878000c     pea.l      $c.w
0004cc: 7202         moveq      #$2, d1
0004ce: 202e8022     move.l     -$7fde(a6), d0
0004d2: 610068a8     bsr.w      $6d7c
0004d6: 4fef0010     lea.l      $10(a7), a7
0004da: 6100716a     bsr.w      $7646
0004de: 610070fc     bsr.w      $75dc
0004e2: 4a00         tst.b      d0
0004e4: 223c00002327 move.l     #$2327, d1
0004ea: 4eae9480     jsr        -$6b80(a6)
0004ee: 4eae948c     jsr        -$6b74(a6)
0004f2: 4eae9492     jsr        -$6b6e(a6)
0004f6: 4ced0002fffc movem.l    -$4(a5), d1
0004fc: 4e5d         unlk       a5
0004fe: 4e75         rts        
000500: 4e550000     link.w     a5, #$0
000504: 48e7c080     movem.l    d0-d1/a0, -(a7)
000508: 4feffe84     lea.l      -$17c(a7), a7
00050c: 202e843c     move.l     -$7bc4(a6), d0
000510: 61006a6a     bsr.w      $6f7c
000514: 7068         moveq      #$68, d0
000516: d0ae8022     add.l      -$7fde(a6), d0
00051a: 61006cc6     bsr.w      $71e2
00051e: 4a00         tst.b      d0
000520: 672e         beq.b      $550
000522: 41d7         lea.l      (a7), a0
000524: 2008         move.l     a0, d0
000526: 61006cee     bsr.w      $7216
00052a: 4a00         tst.b      d0
00052c: 6722         beq.b      $550
00052e: 41ef0130     lea.l      $130(a7), a0
000532: 2208         move.l     a0, d1
000534: 7070         moveq      #$70, d0
000536: d0ae8022     add.l      -$7fde(a6), d0
00053a: 4eae94aa     jsr        -$6b56(a6)
00053e: 223c0000232b move.l     #$232b, d1
000544: 4eae9480     jsr        -$6b80(a6)
000548: 4eae948c     jsr        -$6b74(a6)
00054c: 4eae9492     jsr        -$6b6e(a6)
000550: 202e843c     move.l     -$7bc4(a6), d0
000554: 61006a38     bsr.w      $6f8e
000558: 4fef017c     lea.l      $17c(a7), a7
00055c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000562: 4e5d         unlk       a5
000564: 4e75         rts        
000566: 4e550000     link.w     a5, #$0
00056a: 48e7c800     movem.l    d0-d1/d4, -(a7)
00056e: 7800         moveq      #$0, d4
000570: 7001         moveq      #$1, d0
000572: 2d4084de     move.l     d0, -$7b22(a6)
000576: 4eae9480     jsr        -$6b80(a6)
00057a: 61007466     bsr.w      $79e2
00057e: 2d40802a     move.l     d0, -$7fd6(a6)
000582: 6f000060     ble.w      $5e4
000586: 61000db2     bsr.w      $133a
00058a: 4a00         tst.b      d0
00058c: 660a         bne.b      $598
00058e: 202e802a     move.l     -$7fd6(a6), d0
000592: 61007568     bsr.w      $7afc
000596: 604c         bra.b      $5e4
000598: 61001076     bsr.w      $1610
00059c: 1d408036     move.b     d0, -$7fca(a6)
0005a0: 610013b6     bsr.w      $1958
0005a4: 4a00         tst.b      d0
0005a6: 67e6         beq.b      $58e
0005a8: 4a2e8441     tst.b      -$7bbf(a6)
0005ac: 660e         bne.b      $5bc
0005ae: 61001924     bsr.w      $1ed4
0005b2: 4a00         tst.b      d0
0005b4: 6606         bne.b      $5bc
0005b6: 4a2e8442     tst.b      -$7bbe(a6)
0005ba: 6718         beq.b      $5d4
0005bc: 223c00002323 move.l     #$2323, d1
0005c2: 4eae9480     jsr        -$6b80(a6)
0005c6: 4eae948c     jsr        -$6b74(a6)
0005ca: 4eae9492     jsr        -$6b6e(a6)
0005ce: 1d7c00018440 move.b     #$1, -$7bc0(a6)
0005d4: 223c00002324 move.l     #$2324, d1
0005da: 4eae9480     jsr        -$6b80(a6)
0005de: 4eae9492     jsr        -$6b6e(a6)
0005e2: 7801         moveq      #$1, d4
0005e4: 4a04         tst.b      d4
0005e6: 6612         bne.b      $5fa
0005e8: 223c00002325 move.l     #$2325, d1
0005ee: 4eae9480     jsr        -$6b80(a6)
0005f2: 4eae948c     jsr        -$6b74(a6)
0005f6: 4eae9492     jsr        -$6b6e(a6)
0005fa: 4ced0012fff8 movem.l    -$8(a5), d1/d4
000600: 4e5d         unlk       a5
000602: 4e75         rts        
000604: 4e550000     link.w     a5, #$0
000608: 48e7c000     movem.l    d0-d1, -(a7)
00060c: 48780028     pea.l      $28.w
000610: 48780078     pea.l      $78.w
000614: 487803e8     pea.l      $3e8.w
000618: 487800c8     pea.l      $c8.w
00061c: 723c         moveq      #$3c, d1
00061e: 202e8022     move.l     -$7fde(a6), d0
000622: 61001d0c     bsr.w      $2330
000626: 4fef0010     lea.l      $10(a7), a7
00062a: 202e802a     move.l     -$7fd6(a6), d0
00062e: 610074cc     bsr.w      $7afc
000632: 422e8440     clr.b      -$7bc0(a6)
000636: 422e8442     clr.b      -$7bbe(a6)
00063a: 422e8441     clr.b      -$7bbf(a6)
00063e: 223c00002332 move.l     #$2332, d1
000644: 4eae9480     jsr        -$6b80(a6)
000648: 4eae948c     jsr        -$6b74(a6)
00064c: 4eae9492     jsr        -$6b6e(a6)
000650: 4ced0002fffc movem.l    -$4(a5), d1
000656: 4e5d         unlk       a5
000658: 4e75         rts        
00065a: 4e550000     link.w     a5, #$0
00065e: 48e7c000     movem.l    d0-d1, -(a7)
000662: 223c00002332 move.l     #$2332, d1
000668: 4eae9480     jsr        -$6b80(a6)
00066c: 4eae948c     jsr        -$6b74(a6)
000670: 4eae9492     jsr        -$6b6e(a6)
000674: 4ced0002fffc movem.l    -$4(a5), d1
00067a: 4e5d         unlk       a5
00067c: 4e75         rts        
00067e: 4e550000     link.w     a5, #$0
000682: 48e7c080     movem.l    d0-d1/a0, -(a7)
000686: 202e843c     move.l     -$7bc4(a6), d0
00068a: 610068f0     bsr.w      $6f7c
00068e: 206e8022     movea.l    -$7fde(a6), a0
000692: 4aa800c0     tst.l      $c0(a0)
000696: 671e         beq.b      $6b6
000698: 206e8022     movea.l    -$7fde(a6), a0
00069c: 202800c0     move.l     $c0(a0), d0
0006a0: 61000bce     bsr.w      $1270
0006a4: 422e8442     clr.b      -$7bbe(a6)
0006a8: 223c00002324 move.l     #$2324, d1
0006ae: 4eae9480     jsr        -$6b80(a6)
0006b2: 4eae9492     jsr        -$6b6e(a6)
0006b6: 202e843c     move.l     -$7bc4(a6), d0
0006ba: 610068d2     bsr.w      $6f8e
0006be: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0006c4: 4e5d         unlk       a5
0006c6: 4e75         rts        
0006c8: 4e550000     link.w     a5, #$0
0006cc: 48e7c000     movem.l    d0-d1, -(a7)
0006d0: 4a2e8441     tst.b      -$7bbf(a6)
0006d4: 66000092     bne.w      $768
0006d8: 70ff         moveq      #$ff, d0
0006da: b0ae802e     cmp.l      -$7fd2(a6), d0
0006de: 67000076     beq.w      $756
0006e2: 4a2e8036     tst.b      -$7fca(a6)
0006e6: 6608         bne.b      $6f0
0006e8: 61000f26     bsr.w      $1610
0006ec: 1d408036     move.b     d0, -$7fca(a6)
0006f0: 61001266     bsr.w      $1958
0006f4: 4a00         tst.b      d0
0006f6: 670c         beq.b      $704
0006f8: 223c00002324 move.l     #$2324, d1
0006fe: 4eae9480     jsr        -$6b80(a6)
000702: 601a         bra.b      $71e
000704: 4a2e8440     tst.b      -$7bc0(a6)
000708: 6618         bne.b      $722
00070a: 4a2e8442     tst.b      -$7bbe(a6)
00070e: 6612         bne.b      $722
000710: 223c00002325 move.l     #$2325, d1
000716: 4eae9480     jsr        -$6b80(a6)
00071a: 4eae948c     jsr        -$6b74(a6)
00071e: 4eae9492     jsr        -$6b6e(a6)
000722: 4a2e8440     tst.b      -$7bc0(a6)
000726: 6640         bne.b      $768
000728: 4a2e8441     tst.b      -$7bbf(a6)
00072c: 660e         bne.b      $73c
00072e: 610017a4     bsr.w      $1ed4
000732: 4a00         tst.b      d0
000734: 6606         bne.b      $73c
000736: 4a2e8442     tst.b      -$7bbe(a6)
00073a: 672c         beq.b      $768
00073c: 223c00002323 move.l     #$2323, d1
000742: 4eae9480     jsr        -$6b80(a6)
000746: 4eae948c     jsr        -$6b74(a6)
00074a: 4eae9492     jsr        -$6b6e(a6)
00074e: 1d7c00018440 move.b     #$1, -$7bc0(a6)
000754: 6012         bra.b      $768
000756: 223c00002325 move.l     #$2325, d1
00075c: 4eae9480     jsr        -$6b80(a6)
000760: 4eae948c     jsr        -$6b74(a6)
000764: 4eae9492     jsr        -$6b6e(a6)
000768: 4ced0002fffc movem.l    -$4(a5), d1
00076e: 4e5d         unlk       a5
000770: 4e75         rts        
000772: 4e550000     link.w     a5, #$0
000776: 48e78000     movem.l    d0, -(a7)
00077a: 422e8443     clr.b      -$7bbd(a6)
00077e: 4e5d         unlk       a5
000780: 4e75         rts        
000782: 4e550000     link.w     a5, #$0
000786: 48e78000     movem.l    d0, -(a7)
00078a: 1d7c00018443 move.b     #$1, -$7bbd(a6)
000790: 4e5d         unlk       a5
000792: 4e75         rts        
000794: 4e550000     link.w     a5, #$0
000798: 48e7c8c0     movem.l    d0-d1/d4/a0-a1, -(a7)
00079c: 7800         moveq      #$0, d4
00079e: 206f0004     movea.l    $4(a7), a0
0007a2: 2257         movea.l    (a7), a1
0007a4: 30290004     move.w     $4(a1), d0
0007a8: b0680004     cmp.w      $4(a0), d0
0007ac: 661e         bne.b      $7cc
0007ae: 206f0004     movea.l    $4(a7), a0
0007b2: 2257         movea.l    (a7), a1
0007b4: 2011         move.l     (a1), d0
0007b6: b090         cmp.l      (a0), d0
0007b8: 6612         bne.b      $7cc
0007ba: 206f0004     movea.l    $4(a7), a0
0007be: 2257         movea.l    (a7), a1
0007c0: 30290006     move.w     $6(a1), d0
0007c4: b0680006     cmp.w      $6(a0), d0
0007c8: 6602         bne.b      $7cc
0007ca: 7801         moveq      #$1, d4
0007cc: 1004         move.b     d4, d0
0007ce: 4ced0310fff4 movem.l    -$c(a5), d4/a0-a1
0007d4: 4e5d         unlk       a5
0007d6: 4e75         rts        
0007d8: 4e550000     link.w     a5, #$0
0007dc: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0007e0: 206f0004     movea.l    $4(a7), a0
0007e4: 42a80008     clr.l      $8(a0)
0007e8: 206f0004     movea.l    $4(a7), a0
0007ec: 2257         movea.l    (a7), a1
0007ee: 2169004c004c move.l     $4c(a1), $4c(a0)
0007f4: 216900500050 move.l     $50(a1), $50(a0)
0007fa: 2057         movea.l    (a7), a0
0007fc: 226f0004     movea.l    $4(a7), a1
000800: 236800100010 move.l     $10(a0), $10(a1)
000806: 2057         movea.l    (a7), a0
000808: 226f0004     movea.l    $4(a7), a1
00080c: 236800140014 move.l     $14(a0), $14(a1)
000812: 2057         movea.l    (a7), a0
000814: 226f0004     movea.l    $4(a7), a1
000818: 1368005a005a move.b     $5a(a0), $5a(a1)
00081e: 2057         movea.l    (a7), a0
000820: 226f0004     movea.l    $4(a7), a1
000824: 1368001c001c move.b     $1c(a0), $1c(a1)
00082a: 2057         movea.l    (a7), a0
00082c: 226f0004     movea.l    $4(a7), a1
000830: 1368001d001d move.b     $1d(a0), $1d(a1)
000836: 2057         movea.l    (a7), a0
000838: 226f0004     movea.l    $4(a7), a1
00083c: 336800280028 move.w     $28(a0), $28(a1)
000842: 2057         movea.l    (a7), a0
000844: 226f0004     movea.l    $4(a7), a1
000848: 3368002a002a move.w     $2a(a0), $2a(a1)
00084e: 2057         movea.l    (a7), a0
000850: 226f0004     movea.l    $4(a7), a1
000854: 136800550055 move.b     $55(a0), $55(a1)
00085a: 2057         movea.l    (a7), a0
00085c: 226f0004     movea.l    $4(a7), a1
000860: 236800180018 move.l     $18(a0), $18(a1)
000866: 206f0004     movea.l    $4(a7), a0
00086a: 4228001e     clr.b      $1e(a0)
00086e: 2057         movea.l    (a7), a0
000870: 226f0004     movea.l    $4(a7), a1
000874: 136800570057 move.b     $57(a0), $57(a1)
00087a: 2057         movea.l    (a7), a0
00087c: 226f0004     movea.l    $4(a7), a1
000880: 136800580058 move.b     $58(a0), $58(a1)
000886: 2057         movea.l    (a7), a0
000888: 226f0004     movea.l    $4(a7), a1
00088c: 1368001f001f move.b     $1f(a0), $1f(a1)
000892: 206f0004     movea.l    $4(a7), a0
000896: 42680022     clr.w      $22(a0)
00089a: 2057         movea.l    (a7), a0
00089c: 226f0004     movea.l    $4(a7), a1
0008a0: 136800210021 move.b     $21(a0), $21(a1)
0008a6: 2057         movea.l    (a7), a0
0008a8: 226f0004     movea.l    $4(a7), a1
0008ac: 1368005e005e move.b     $5e(a0), $5e(a1)
0008b2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0008b8: 4e5d         unlk       a5
0008ba: 4e75         rts        
0008bc: 4e550000     link.w     a5, #$0
0008c0: 48e7c000     movem.l    d0-d1, -(a7)
0008c4: 704c         moveq      #$4c, d0
0008c6: d0af0004     add.l      $4(a7), d0
0008ca: 2200         move.l     d0, d1
0008cc: 704c         moveq      #$4c, d0
0008ce: d097         add.l      (a7), d0
0008d0: 6100fec2     bsr.w      $794
0008d4: 4e5d         unlk       a5
0008d6: 4e75         rts        
0008d8: 4e550000     link.w     a5, #$0
0008dc: 48e78f80     movem.l    d0/d4-d7/a0, -(a7)
0008e0: 2057         movea.l    (a7), a0
0008e2: 4a280030     tst.b      $30(a0)
0008e6: 6700008e     beq.w      $976
0008ea: 2017         move.l     (a7), d0
0008ec: 61000f80     bsr.w      $186e
0008f0: 4a00         tst.b      d0
0008f2: 66000082     bne.w      $976
0008f6: 4a2e8443     tst.b      -$7bbd(a6)
0008fa: 6712         beq.b      $90e
0008fc: 4a2e8443     tst.b      -$7bbd(a6)
000900: 6710         beq.b      $912
000902: 2057         movea.l    (a7), a0
000904: 2068001c     movea.l    $1c(a0), a0
000908: 4a280020     tst.b      $20(a0)
00090c: 6604         bne.b      $912
00090e: 7001         moveq      #$1, d0
000910: 6002         bra.b      $914
000912: 7000         moveq      #$0, d0
000914: 1c00         move.b     d0, d6
000916: 2057         movea.l    (a7), a0
000918: 20680018     movea.l    $18(a0), a0
00091c: 0c280006005a cmpi.b     #$6, $5a(a0)
000922: 6704         beq.b      $928
000924: 7001         moveq      #$1, d0
000926: 6002         bra.b      $92a
000928: 7000         moveq      #$0, d0
00092a: 1800         move.b     d0, d4
00092c: 2057         movea.l    (a7), a0
00092e: 2028001c     move.l     $1c(a0), d0
000932: 61000f84     bsr.w      $18b8
000936: 1a00         move.b     d0, d5
000938: 4a04         tst.b      d4
00093a: 6708         beq.b      $944
00093c: 4a05         tst.b      d5
00093e: 6704         beq.b      $944
000940: 7001         moveq      #$1, d0
000942: 6002         bra.b      $946
000944: 7000         moveq      #$0, d0
000946: 1e00         move.b     d0, d7
000948: 4a06         tst.b      d6
00094a: 672a         beq.b      $976
00094c: 4a07         tst.b      d7
00094e: 6726         beq.b      $976
000950: 2057         movea.l    (a7), a0
000952: 117c00120010 move.b     #$12, $10(a0)
000958: 2057         movea.l    (a7), a0
00095a: 42280013     clr.b      $13(a0)
00095e: 2057         movea.l    (a7), a0
000960: 0c28004d0044 cmpi.b     #$4d, $44(a0)
000966: 6608         bne.b      $970
000968: 2057         movea.l    (a7), a0
00096a: 117c00210044 move.b     #$21, $44(a0)
000970: 1d7c00018441 move.b     #$1, -$7bbf(a6)
000976: 4ced01f0ffec movem.l    -$14(a5), d4-d7/a0
00097c: 4e5d         unlk       a5
00097e: 4e75         rts        
000980: 4e550000     link.w     a5, #$0
000984: 48e7c080     movem.l    d0-d1/a0, -(a7)
000988: 7001         moveq      #$1, d0
00098a: b0ae84fc     cmp.l      -$7b04(a6), d0
00098e: 661c         bne.b      $9ac
000990: 7034         moveq      #$34, d0
000992: d097         add.l      (a7), d0
000994: 2200         move.l     d0, d1
000996: 41ee84ec     lea.l      -$7b14(a6), a0
00099a: 2008         move.l     a0, d0
00099c: 206e8ce6     movea.l    -$731a(a6), a0
0009a0: 4e90         jsr        (a0)
0009a2: 4a00         tst.b      d0
0009a4: 6722         beq.b      $9c8
0009a6: 42ae84fc     clr.l      -$7b04(a6)
0009aa: 601c         bra.b      $9c8
0009ac: 703c         moveq      #$3c, d0
0009ae: d097         add.l      (a7), d0
0009b0: 2200         move.l     d0, d1
0009b2: 41ee84f4     lea.l      -$7b0c(a6), a0
0009b6: 2008         move.l     a0, d0
0009b8: 206e8ce6     movea.l    -$731a(a6), a0
0009bc: 4e90         jsr        (a0)
0009be: 4a00         tst.b      d0
0009c0: 6706         beq.b      $9c8
0009c2: 7001         moveq      #$1, d0
0009c4: 2d4084fc     move.l     d0, -$7b04(a6)
0009c8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0009ce: 4e5d         unlk       a5
0009d0: 4e75         rts        
0009d2: 4e550000     link.w     a5, #$0
0009d6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0009da: 41ee8444     lea.l      -$7bbc(a6), a0
0009de: 2008         move.l     a0, d0
0009e0: 4eae94b0     jsr        -$6b50(a6)
0009e4: 4a80         tst.l      d0
0009e6: 6f0000b8     ble.w      $aa0
0009ea: 41ee8444     lea.l      -$7bbc(a6), a0
0009ee: 2208         move.l     a0, d1
0009f0: 41ee8490     lea.l      -$7b70(a6), a0
0009f4: 2008         move.l     a0, d0
0009f6: 4eae94a4     jsr        -$6b5c(a6)
0009fa: 4a80         tst.l      d0
0009fc: 670000a2     beq.w      $aa0
000a00: 41ee8444     lea.l      -$7bbc(a6), a0
000a04: 2208         move.l     a0, d1
000a06: 41ee8490     lea.l      -$7b70(a6), a0
000a0a: 2008         move.l     a0, d0
000a0c: 4eae94aa     jsr        -$6b56(a6)
000a10: 41ee8444     lea.l      -$7bbc(a6), a0
000a14: 2208         move.l     a0, d1
000a16: 202e8022     move.l     -$7fde(a6), d0
000a1a: 4eae94aa     jsr        -$6b56(a6)
000a1e: 41ee8490     lea.l      -$7b70(a6), a0
000a22: 2008         move.l     a0, d0
000a24: 61006762     bsr.w      $7188
000a28: 4a00         tst.b      d0
000a2a: 67000074     beq.w      $aa0
000a2e: 202e843c     move.l     -$7bc4(a6), d0
000a32: 61006548     bsr.w      $6f7c
000a36: 704c         moveq      #$4c, d0
000a38: d0ae8022     add.l      -$7fde(a6), d0
000a3c: 6100677e     bsr.w      $71bc
000a40: 4a00         tst.b      d0
000a42: 6754         beq.b      $a98
000a44: 206e8022     movea.l    -$7fde(a6), a0
000a48: 2028004c     move.l     $4c(a0), d0
000a4c: 4c7c000000000064 divu.l     #$64, d0
000a54: 660c         bne.b      $a62
000a56: 206e8022     movea.l    -$7fde(a6), a0
000a5a: 217c0000c350004c move.l     #$c350, $4c(a0)
000a62: 206e8022     movea.l    -$7fde(a6), a0
000a66: 20280050     move.l     $50(a0), d0
000a6a: 4c7c000000000064 divu.l     #$64, d0
000a72: 660c         bne.b      $a80
000a74: 206e8022     movea.l    -$7fde(a6), a0
000a78: 217c000061a80050 move.l     #$61a8, $50(a0)
000a80: 206e8022     movea.l    -$7fde(a6), a0
000a84: 4a28005c     tst.b      $5c(a0)
000a88: 6708         beq.b      $a92
000a8a: 1d7c000284dc move.b     #$2, -$7b24(a6)
000a90: 6006         bra.b      $a98
000a92: 1d7c000184dc move.b     #$1, -$7b24(a6)
000a98: 202e843c     move.l     -$7bc4(a6), d0
000a9c: 610064f0     bsr.w      $6f8e
000aa0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000aa6: 4e5d         unlk       a5
000aa8: 4e75         rts        
000aaa: 4e550000     link.w     a5, #$0
000aae: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000ab2: 5d8f         subq.l     #$6, a7
000ab4: 7001         moveq      #$1, d0
000ab6: 2f400002     move.l     d0, $2(a7)
000aba: 422f0001     clr.b      $1(a7)
000abe: 4aaf000a     tst.l      $a(a7)
000ac2: 6708         beq.b      $acc
000ac4: 206f000a     movea.l    $a(a7), a0
000ac8: 4a10         tst.b      (a0)
000aca: 660a         bne.b      $ad6
000acc: 42af0002     clr.l      $2(a7)
000ad0: 1f7c00010001 move.b     #$1, $1(a7)
000ad6: 206f0006     movea.l    $6(a7), a0
000ada: 24680028     movea.l    $28(a0), a2
000ade: 601e         bra.b      $afe
000ae0: 222f000a     move.l     $a(a7), d1
000ae4: 200a         move.l     a2, d0
000ae6: 5880         addq.l     #$4, d0
000ae8: 4eae94a4     jsr        -$6b5c(a6)
000aec: 4a80         tst.l      d0
000aee: 6608         bne.b      $af8
000af0: 1f7c00010001 move.b     #$1, $1(a7)
000af6: 6006         bra.b      $afe
000af8: 52af0002     addq.l     #$1, $2(a7)
000afc: 2452         movea.l    (a2), a2
000afe: 4a2f0001     tst.b      $1(a7)
000b02: 6604         bne.b      $b08
000b04: 200a         move.l     a2, d0
000b06: 66d8         bne.b      $ae0
000b08: 4a2f0001     tst.b      $1(a7)
000b0c: 6634         bne.b      $b42
000b0e: 61001706     bsr.w      $2216
000b12: 2440         movea.l    d0, a2
000b14: 200a         move.l     a2, d0
000b16: 6724         beq.b      $b3c
000b18: 222f000a     move.l     $a(a7), d1
000b1c: 200a         move.l     a2, d0
000b1e: 5880         addq.l     #$4, d0
000b20: 4eae94aa     jsr        -$6b56(a6)
000b24: 220a         move.l     a2, d1
000b26: 206f0006     movea.l    $6(a7), a0
000b2a: 20280028     move.l     $28(a0), d0
000b2e: 61006054     bsr.w      $6b84
000b32: 206f0006     movea.l    $6(a7), a0
000b36: 21400028     move.l     d0, $28(a0)
000b3a: 6006         bra.b      $b42
000b3c: 70ff         moveq      #$ff, d0
000b3e: 2f400002     move.l     d0, $2(a7)
000b42: 202f0002     move.l     $2(a7), d0
000b46: 5c8f         addq.l     #$6, a7
000b48: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000b4e: 4e5d         unlk       a5
000b50: 4e75         rts        
000b52: 4e550000     link.w     a5, #$0
000b56: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000b5a: 202e843c     move.l     -$7bc4(a6), d0
000b5e: 6100641c     bsr.w      $6f7c
000b62: 206e8022     movea.l    -$7fde(a6), a0
000b66: 202800bc     move.l     $bc(a0), d0
000b6a: 61006066     bsr.w      $6bd2
000b6e: 2440         movea.l    d0, a2
000b70: 200a         move.l     a2, d0
000b72: 6728         beq.b      $b9c
000b74: 4aaa001c     tst.l      $1c(a2)
000b78: 6722         beq.b      $b9c
000b7a: 202a001c     move.l     $1c(a2), d0
000b7e: 61000d38     bsr.w      $18b8
000b82: 4a00         tst.b      d0
000b84: 6716         beq.b      $b9c
000b86: 2057         movea.l    (a7), a0
000b88: 22280018     move.l     $18(a0), d1
000b8c: 202a001c     move.l     $1c(a2), d0
000b90: 6100fd2a     bsr.w      $8bc
000b94: 4a00         tst.b      d0
000b96: 6704         beq.b      $b9c
000b98: 422a0013     clr.b      $13(a2)
000b9c: 202e843c     move.l     -$7bc4(a6), d0
000ba0: 610063ec     bsr.w      $6f8e
000ba4: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
000baa: 4e5d         unlk       a5
000bac: 4e75         rts        
000bae: 4e550000     link.w     a5, #$0
000bb2: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000bb6: 7800         moveq      #$0, d4
000bb8: 610015d4     bsr.w      $218e
000bbc: 2440         movea.l    d0, a2
000bbe: 4a80         tst.l      d0
000bc0: 6722         beq.b      $be4
000bc2: 206f0004     movea.l    $4(a7), a0
000bc6: 25500004     move.l     (a0), $4(a2)
000bca: 256800040008 move.l     $4(a0), $8(a2)
000bd0: 220a         move.l     a2, d1
000bd2: 2057         movea.l    (a7), a0
000bd4: 20280030     move.l     $30(a0), d0
000bd8: 61005f8c     bsr.w      $6b66
000bdc: 2057         movea.l    (a7), a0
000bde: 21400030     move.l     d0, $30(a0)
000be2: 7801         moveq      #$1, d4
000be4: 1004         move.b     d4, d0
000be6: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
000bec: 4e5d         unlk       a5
000bee: 4e75         rts        
000bf0: 4e550000     link.w     a5, #$0
000bf4: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
000bf8: 598f         subq.l     #$4, a7
000bfa: 7800         moveq      #$0, d4
000bfc: 6100154c     bsr.w      $214a
000c00: 2440         movea.l    d0, a2
000c02: 4a80         tst.l      d0
000c04: 670000ac     beq.w      $cb2
000c08: 220a         move.l     a2, d1
000c0a: 206f0008     movea.l    $8(a7), a0
000c0e: 20280020     move.l     $20(a0), d0
000c12: 61005f70     bsr.w      $6b84
000c16: 206f0008     movea.l    $8(a7), a0
000c1a: 21400020     move.l     d0, $20(a0)
000c1e: 220a         move.l     a2, d1
000c20: 202f0028     move.l     $28(a7), d0
000c24: 6100fbb2     bsr.w      $7d8
000c28: 206f0028     movea.l    $28(a7), a0
000c2c: 22280030     move.l     $30(a0), d1
000c30: 200a         move.l     a2, d0
000c32: 61000092     bsr.w      $cc6
000c36: 1800         move.b     d0, d4
000c38: 4a04         tst.b      d4
000c3a: 67000076     beq.w      $cb2
000c3e: 206f0028     movea.l    $28(a7), a0
000c42: 2ea80060     move.l     $60(a0), (a7)
000c46: 4a97         tst.l      (a7)
000c48: 671c         beq.b      $c66
000c4a: 2f17         move.l     (a7), -(a7)
000c4c: 222f0008     move.l     $8(a7), d1
000c50: 202f000c     move.l     $c(a7), d0
000c54: 6100013e     bsr.w      $d94
000c58: 588f         addq.l     #$4, a7
000c5a: 2e80         move.l     d0, (a7)
000c5c: 25570060     move.l     (a7), $60(a2)
000c60: 4a97         tst.l      (a7)
000c62: 6602         bne.b      $c66
000c64: 7800         moveq      #$0, d4
000c66: 206f0028     movea.l    $28(a7), a0
000c6a: 2ea80064     move.l     $64(a0), (a7)
000c6e: 4a97         tst.l      (a7)
000c70: 671c         beq.b      $c8e
000c72: 2f17         move.l     (a7), -(a7)
000c74: 222f0008     move.l     $8(a7), d1
000c78: 202f000c     move.l     $c(a7), d0
000c7c: 61000116     bsr.w      $d94
000c80: 588f         addq.l     #$4, a7
000c82: 2e80         move.l     d0, (a7)
000c84: 25570064     move.l     (a7), $64(a2)
000c88: 4a97         tst.l      (a7)
000c8a: 6602         bne.b      $c8e
000c8c: 7800         moveq      #$0, d4
000c8e: 206f0028     movea.l    $28(a7), a0
000c92: 2f28000c     move.l     $c(a0), -(a7)
000c96: 222f0008     move.l     $8(a7), d1
000c9a: 202f000c     move.l     $c(a7), d0
000c9e: 61000086     bsr.w      $d26
000ca2: 588f         addq.l     #$4, a7
000ca4: 2a00         move.l     d0, d5
000ca6: 4a85         tst.l      d5
000ca8: 6c04         bge.b      $cae
000caa: 7800         moveq      #$0, d4
000cac: 6004         bra.b      $cb2
000cae: 2545000c     move.l     d5, $c(a2)
000cb2: 4a04         tst.b      d4
000cb4: 6602         bne.b      $cb8
000cb6: 95ca         suba.l     a2, a2
000cb8: 200a         move.l     a2, d0
000cba: 588f         addq.l     #$4, a7
000cbc: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
000cc2: 4e5d         unlk       a5
000cc4: 4e75         rts        
000cc6: 4e550000     link.w     a5, #$0
000cca: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
000cce: 7801         moveq      #$1, d4
000cd0: 246f0004     movea.l    $4(a7), a2
000cd4: 6032         bra.b      $d08
000cd6: 610014b6     bsr.w      $218e
000cda: 2640         movea.l    d0, a3
000cdc: 4a80         tst.l      d0
000cde: 6722         beq.b      $d02
000ce0: 276a00040004 move.l     $4(a2), $4(a3)
000ce6: 276a00080008 move.l     $8(a2), $8(a3)
000cec: 220b         move.l     a3, d1
000cee: 2057         movea.l    (a7), a0
000cf0: 20280030     move.l     $30(a0), d0
000cf4: 61005e70     bsr.w      $6b66
000cf8: 2057         movea.l    (a7), a0
000cfa: 21400030     move.l     d0, $30(a0)
000cfe: 7801         moveq      #$1, d4
000d00: 6004         bra.b      $d06
000d02: 7800         moveq      #$0, d4
000d04: 600a         bra.b      $d10
000d06: 2452         movea.l    (a2), a2
000d08: 4a04         tst.b      d4
000d0a: 6704         beq.b      $d10
000d0c: 200a         move.l     a2, d0
000d0e: 66c6         bne.b      $cd6
000d10: 4a04         tst.b      d4
000d12: 6706         beq.b      $d1a
000d14: 2017         move.l     (a7), d0
000d16: 61000f54     bsr.w      $1c6c
000d1a: 1004         move.b     d4, d0
000d1c: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
000d22: 4e5d         unlk       a5
000d24: 4e75         rts        
000d26: 4e550000     link.w     a5, #$0
000d2a: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000d2e: 518f         subq.l     #$8, a7
000d30: 7800         moveq      #$0, d4
000d32: 4297         clr.l      (a7)
000d34: 4aaf000c     tst.l      $c(a7)
000d38: 673a         beq.b      $d74
000d3a: 4aaf0024     tst.l      $24(a7)
000d3e: 6f34         ble.b      $d74
000d40: 206f000c     movea.l    $c(a7), a0
000d44: 24680028     movea.l    $28(a0), a2
000d48: 7001         moveq      #$1, d0
000d4a: 2f400004     move.l     d0, $4(a7)
000d4e: 6006         bra.b      $d56
000d50: 2452         movea.l    (a2), a2
000d52: 52af0004     addq.l     #$1, $4(a7)
000d56: 200a         move.l     a2, d0
000d58: 670a         beq.b      $d64
000d5a: 202f0004     move.l     $4(a7), d0
000d5e: b0af0024     cmp.l      $24(a7), d0
000d62: 6dec         blt.b      $d50
000d64: 200a         move.l     a2, d0
000d66: 670c         beq.b      $d74
000d68: 4a2a0004     tst.b      $4(a2)
000d6c: 6706         beq.b      $d74
000d6e: 200a         move.l     a2, d0
000d70: 5880         addq.l     #$4, d0
000d72: 2e80         move.l     d0, (a7)
000d74: 2217         move.l     (a7), d1
000d76: 202f0008     move.l     $8(a7), d0
000d7a: 6100fd2e     bsr.w      $aaa
000d7e: 2800         move.l     d0, d4
000d80: 4a84         tst.l      d4
000d82: 6c02         bge.b      $d86
000d84: 78ff         moveq      #$ff, d4
000d86: 2004         move.l     d4, d0
000d88: 508f         addq.l     #$8, a7
000d8a: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
000d90: 4e5d         unlk       a5
000d92: 4e75         rts        
000d94: 4e550000     link.w     a5, #$0
000d98: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000d9c: 5d8f         subq.l     #$6, a7
000d9e: 95ca         suba.l     a2, a2
000da0: 1f7c00010005 move.b     #$1, $5(a7)
000da6: 4aaf0022     tst.l      $22(a7)
000daa: 670000bc     beq.w      $e68
000dae: 610014aa     bsr.w      $225a
000db2: 2440         movea.l    d0, a2
000db4: 200a         move.l     a2, d0
000db6: 6604         bne.b      $dbc
000db8: 422f0005     clr.b      $5(a7)
000dbc: 7800         moveq      #$0, d4
000dbe: 60000088     bra.w      $e48
000dc2: 206f0022     movea.l    $22(a7), a0
000dc6: 4ab04c04     tst.l      $4(a0, d4.l)
000dca: 6720         beq.b      $dec
000dcc: 206f0022     movea.l    $22(a7), a0
000dd0: 2f304c04     move.l     $4(a0, d4.l), -(a7)
000dd4: 222f000e     move.l     $e(a7), d1
000dd8: 202f000a     move.l     $a(a7), d0
000ddc: 6100ff48     bsr.w      $d26
000de0: 588f         addq.l     #$4, a7
000de2: 2e80         move.l     d0, (a7)
000de4: 25974c04     move.l     (a7), $4(a2, d4.l)
000de8: 4a97         tst.l      (a7)
000dea: 6d54         blt.b      $e40
000dec: 206f0022     movea.l    $22(a7), a0
000df0: 4ab04c18     tst.l      $18(a0, d4.l)
000df4: 6720         beq.b      $e16
000df6: 206f0022     movea.l    $22(a7), a0
000dfa: 2f304c18     move.l     $18(a0, d4.l), -(a7)
000dfe: 222f000e     move.l     $e(a7), d1
000e02: 202f000a     move.l     $a(a7), d0
000e06: 6100ff1e     bsr.w      $d26
000e0a: 588f         addq.l     #$4, a7
000e0c: 2e80         move.l     d0, (a7)
000e0e: 25974c18     move.l     (a7), $18(a2, d4.l)
000e12: 4a97         tst.l      (a7)
000e14: 6d2a         blt.b      $e40
000e16: 206f0022     movea.l    $22(a7), a0
000e1a: 4ab04c2c     tst.l      $2c(a0, d4.l)
000e1e: 6726         beq.b      $e46
000e20: 206f0022     movea.l    $22(a7), a0
000e24: 2f304c2c     move.l     $2c(a0, d4.l), -(a7)
000e28: 222f000e     move.l     $e(a7), d1
000e2c: 202f000a     move.l     $a(a7), d0
000e30: 6100fef4     bsr.w      $d26
000e34: 588f         addq.l     #$4, a7
000e36: 2e80         move.l     d0, (a7)
000e38: 25974c2c     move.l     (a7), $2c(a2, d4.l)
000e3c: 4a97         tst.l      (a7)
000e3e: 6c06         bge.b      $e46
000e40: 422f0005     clr.b      $5(a7)
000e44: 6010         bra.b      $e56
000e46: 5284         addq.l     #$1, d4
000e48: 7005         moveq      #$5, d0
000e4a: b084         cmp.l      d4, d0
000e4c: 6f08         ble.b      $e56
000e4e: 4a2f0005     tst.b      $5(a7)
000e52: 6600ff6e     bne.w      $dc2
000e56: 200a         move.l     a2, d0
000e58: 670e         beq.b      $e68
000e5a: 4a2f0005     tst.b      $5(a7)
000e5e: 6608         bne.b      $e68
000e60: 200a         move.l     a2, d0
000e62: 6100166e     bsr.w      $24d2
000e66: 95ca         suba.l     a2, a2
000e68: 200a         move.l     a2, d0
000e6a: 5c8f         addq.l     #$6, a7
000e6c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
000e72: 4e5d         unlk       a5
000e74: 4e75         rts        
000e76: 4e550000     link.w     a5, #$0
000e7a: 48e7c8f8     movem.l    d0-d1/d4/a0-a4, -(a7)
000e7e: 4feffff0     lea.l      -$10(a7), a7
000e82: 422f000b     clr.b      $b(a7)
000e86: 42af0006     clr.l      $6(a7)
000e8a: 42af0002     clr.l      $2(a7)
000e8e: 1f7c00010001 move.b     #$1, $1(a7)
000e94: 6100133c     bsr.w      $21d2
000e98: 2440         movea.l    d0, a2
000e9a: 4a80         tst.l      d0
000e9c: 670002ca     beq.w      $1168
000ea0: 206f0010     movea.l    $10(a7), a0
000ea4: 1568006e006e move.b     $6e(a0), $6e(a2)
000eaa: 2f2f0014     move.l     $14(a7), -(a7)
000eae: 220a         move.l     a2, d1
000eb0: 202f0014     move.l     $14(a7), d0
000eb4: 6100fd3a     bsr.w      $bf0
000eb8: 588f         addq.l     #$4, a7
000eba: 2800         move.l     d0, d4
000ebc: 4a84         tst.l      d4
000ebe: 6726         beq.b      $ee6
000ec0: 25440018     move.l     d4, $18(a2)
000ec4: 222f0038     move.l     $38(a7), d1
000ec8: 7034         moveq      #$34, d0
000eca: d0aa0018     add.l      $18(a2), d0
000ece: 206e8ce6     movea.l    -$731a(a6), a0
000ed2: 4e90         jsr        (a0)
000ed4: 4a00         tst.b      d0
000ed6: 6704         beq.b      $edc
000ed8: 7034         moveq      #$34, d0
000eda: 6002         bra.b      $ede
000edc: 703c         moveq      #$3c, d0
000ede: d0aa0018     add.l      $18(a2), d0
000ee2: 2540000c     move.l     d0, $c(a2)
000ee6: 206f0014     movea.l    $14(a7), a0
000eea: 0c280005001e cmpi.b     #$5, $1e(a0)
000ef0: 6756         beq.b      $f48
000ef2: 206f0014     movea.l    $14(a7), a0
000ef6: 0c280006001e cmpi.b     #$6, $1e(a0)
000efc: 674a         beq.b      $f48
000efe: 206f0014     movea.l    $14(a7), a0
000f02: 0c280007001e cmpi.b     #$7, $1e(a0)
000f08: 673e         beq.b      $f48
000f0a: 206f0010     movea.l    $10(a7), a0
000f0e: 26680020     movea.l    $20(a0), a3
000f12: 6030         bra.b      $f44
000f14: 0c2b0005001e cmpi.b     #$5, $1e(a3)
000f1a: 6710         beq.b      $f2c
000f1c: 0c2b0006001e cmpi.b     #$6, $1e(a3)
000f22: 6708         beq.b      $f2c
000f24: 0c2b0007001e cmpi.b     #$7, $1e(a3)
000f2a: 6616         bne.b      $f42
000f2c: 222f0038     move.l     $38(a7), d1
000f30: 200b         move.l     a3, d0
000f32: 6100599a     bsr.w      $68ce
000f36: 4a00         tst.b      d0
000f38: 6708         beq.b      $f42
000f3a: 1f7c0001000b move.b     #$1, $b(a7)
000f40: 6006         bra.b      $f48
000f42: 2653         movea.l    (a3), a3
000f44: 200b         move.l     a3, d0
000f46: 66cc         bne.b      $f14
000f48: 206f0010     movea.l    $10(a7), a0
000f4c: 26680020     movea.l    $20(a0), a3
000f50: 2f2f0038     move.l     $38(a7), -(a7)
000f54: 222f0018     move.l     $18(a7), d1
000f58: 200b         move.l     a3, d0
000f5a: 61001702     bsr.w      $265e
000f5e: 588f         addq.l     #$4, a7
000f60: 2840         movea.l    d0, a4
000f62: 2f6f0038000c move.l     $38(a7), $c(a7)
000f68: 4a2f000b     tst.b      $b(a7)
000f6c: 670001a8     beq.w      $1116
000f70: 6000009e     bra.w      $1010
000f74: 0c2c0005001e cmpi.b     #$5, $1e(a4)
000f7a: 6710         beq.b      $f8c
000f7c: 0c2c0006001e cmpi.b     #$6, $1e(a4)
000f82: 6708         beq.b      $f8c
000f84: 0c2c0007001e cmpi.b     #$7, $1e(a4)
000f8a: 6640         bne.b      $fcc
000f8c: 4a2f0001     tst.b      $1(a7)
000f90: 6728         beq.b      $fba
000f92: 422f0001     clr.b      $1(a7)
000f96: 222f000c     move.l     $c(a7), d1
000f9a: 7034         moveq      #$34, d0
000f9c: d08c         add.l      a4, d0
000f9e: 206e8ce6     movea.l    -$731a(a6), a0
000fa2: 4e90         jsr        (a0)
000fa4: 4a00         tst.b      d0
000fa6: 6704         beq.b      $fac
000fa8: 703c         moveq      #$3c, d0
000faa: 6002         bra.b      $fae
000fac: 7034         moveq      #$34, d0
000fae: d08c         add.l      a4, d0
000fb0: 2f400002     move.l     d0, $2(a7)
000fb4: 2f4c0006     move.l     a4, $6(a7)
000fb8: 6046         bra.b      $1000
000fba: 1f7c00010001 move.b     #$1, $1(a7)
000fc0: 286f0006     movea.l    $6(a7), a4
000fc4: 2f6f0002000c move.l     $2(a7), $c(a7)
000fca: 6034         bra.b      $1000
000fcc: 4854         pea.l      (a4)
000fce: 220a         move.l     a2, d1
000fd0: 202f0014     move.l     $14(a7), d0
000fd4: 6100fc1a     bsr.w      $bf0
000fd8: 588f         addq.l     #$4, a7
000fda: 2800         move.l     d0, d4
000fdc: 4a84         tst.l      d4
000fde: 674a         beq.b      $102a
000fe0: 2044         movea.l    d4, a0
000fe2: 4228001e     clr.b      $1e(a0)
000fe6: 4aac0010     tst.l      $10(a4)
000fea: 6714         beq.b      $1000
000fec: 2544001c     move.l     d4, $1c(a2)
000ff0: 2044         movea.l    d4, a0
000ff2: 226f000c     movea.l    $c(a7), a1
000ff6: 21510044     move.l     (a1), $44(a0)
000ffa: 216900040048 move.l     $4(a1), $48(a0)
001000: 2f2f000c     move.l     $c(a7), -(a7)
001004: 220c         move.l     a4, d1
001006: 200b         move.l     a3, d0
001008: 61001654     bsr.w      $265e
00100c: 588f         addq.l     #$4, a7
00100e: 2840         movea.l    d0, a4
001010: 4a84         tst.l      d4
001012: 6716         beq.b      $102a
001014: 704c         moveq      #$4c, d0
001016: d0af0014     add.l      $14(a7), d0
00101a: 2200         move.l     d0, d1
00101c: 704c         moveq      #$4c, d0
00101e: d08c         add.l      a4, d0
001020: 6100f772     bsr.w      $794
001024: 4a00         tst.b      d0
001026: 6700ff4c     beq.w      $f74
00102a: 2f6f0038000c move.l     $38(a7), $c(a7)
001030: 2f2f000c     move.l     $c(a7), -(a7)
001034: 222f0018     move.l     $18(a7), d1
001038: 60000088     bra.w      $10c2
00103c: 0c2c0005001e cmpi.b     #$5, $1e(a4)
001042: 6710         beq.b      $1054
001044: 0c2c0006001e cmpi.b     #$6, $1e(a4)
00104a: 6708         beq.b      $1054
00104c: 0c2c0007001e cmpi.b     #$7, $1e(a4)
001052: 6668         bne.b      $10bc
001054: 222f000c     move.l     $c(a7), d1
001058: 7034         moveq      #$34, d0
00105a: d08c         add.l      a4, d0
00105c: 206e8ce6     movea.l    -$731a(a6), a0
001060: 4e90         jsr        (a0)
001062: 4a00         tst.b      d0
001064: 6704         beq.b      $106a
001066: 703c         moveq      #$3c, d0
001068: 6002         bra.b      $106c
00106a: 7034         moveq      #$34, d0
00106c: d08c         add.l      a4, d0
00106e: 2f40000c     move.l     d0, $c(a7)
001072: 4854         pea.l      (a4)
001074: 220a         move.l     a2, d1
001076: 202f0014     move.l     $14(a7), d0
00107a: 6100fb74     bsr.w      $bf0
00107e: 588f         addq.l     #$4, a7
001080: 2800         move.l     d0, d4
001082: 4a84         tst.l      d4
001084: 670000a8     beq.w      $112e
001088: 206f0010     movea.l    $10(a7), a0
00108c: 704c         moveq      #$4c, d0
00108e: d0a8001c     add.l      $1c(a0), d0
001092: 2200         move.l     d0, d1
001094: 704c         moveq      #$4c, d0
001096: d084         add.l      d4, d0
001098: 6100f6fa     bsr.w      $794
00109c: 4a00         tst.b      d0
00109e: 6714         beq.b      $10b4
0010a0: 2544001c     move.l     d4, $1c(a2)
0010a4: 2044         movea.l    d4, a0
0010a6: 226f000c     movea.l    $c(a7), a1
0010aa: 21510044     move.l     (a1), $44(a0)
0010ae: 216900040048 move.l     $4(a1), $48(a0)
0010b4: 2044         movea.l    d4, a0
0010b6: 116c001e001e move.b     $1e(a4), $1e(a0)
0010bc: 2f2f000c     move.l     $c(a7), -(a7)
0010c0: 220c         move.l     a4, d1
0010c2: 200b         move.l     a3, d0
0010c4: 61001598     bsr.w      $265e
0010c8: 588f         addq.l     #$4, a7
0010ca: 2840         movea.l    d0, a4
0010cc: 4a84         tst.l      d4
0010ce: 675e         beq.b      $112e
0010d0: 704c         moveq      #$4c, d0
0010d2: d0af0014     add.l      $14(a7), d0
0010d6: 2200         move.l     d0, d1
0010d8: 704c         moveq      #$4c, d0
0010da: d08c         add.l      a4, d0
0010dc: 6100f6b6     bsr.w      $794
0010e0: 4a00         tst.b      d0
0010e2: 6700ff58     beq.w      $103c
0010e6: 6046         bra.b      $112e
0010e8: 4854         pea.l      (a4)
0010ea: 220a         move.l     a2, d1
0010ec: 202f0014     move.l     $14(a7), d0
0010f0: 6100fafe     bsr.w      $bf0
0010f4: 588f         addq.l     #$4, a7
0010f6: 2800         move.l     d0, d4
0010f8: 4a84         tst.l      d4
0010fa: 6732         beq.b      $112e
0010fc: 4aac0010     tst.l      $10(a4)
001100: 6704         beq.b      $1106
001102: 2544001c     move.l     d4, $1c(a2)
001106: 2f2f0038     move.l     $38(a7), -(a7)
00110a: 220c         move.l     a4, d1
00110c: 200b         move.l     a3, d0
00110e: 6100154e     bsr.w      $265e
001112: 588f         addq.l     #$4, a7
001114: 2840         movea.l    d0, a4
001116: 4a84         tst.l      d4
001118: 6714         beq.b      $112e
00111a: 704c         moveq      #$4c, d0
00111c: d0af0014     add.l      $14(a7), d0
001120: 2200         move.l     d0, d1
001122: 704c         moveq      #$4c, d0
001124: d08c         add.l      a4, d0
001126: 6100f66c     bsr.w      $794
00112a: 4a00         tst.b      d0
00112c: 67ba         beq.b      $10e8
00112e: 4a84         tst.l      d4
001130: 660a         bne.b      $113c
001132: 200a         move.l     a2, d0
001134: 61000fd8     bsr.w      $210e
001138: 95ca         suba.l     a2, a2
00113a: 602c         bra.b      $1168
00113c: 4aaa001c     tst.l      $1c(a2)
001140: 6606         bne.b      $1148
001142: 256a0018001c move.l     $18(a2), $1c(a2)
001148: 202a0020     move.l     $20(a2), d0
00114c: 61005ade     bsr.w      $6c2c
001150: 2540004a     move.l     d0, $4a(a2)
001154: 4a2f000b     tst.b      $b(a7)
001158: 6708         beq.b      $1162
00115a: 157c00010010 move.b     #$1, $10(a2)
001160: 6006         bra.b      $1168
001162: 157c00150010 move.b     #$15, $10(a2)
001168: 200a         move.l     a2, d0
00116a: 6706         beq.b      $1172
00116c: 200a         move.l     a2, d0
00116e: 61000170     bsr.w      $12e0
001172: 200a         move.l     a2, d0
001174: 4fef0010     lea.l      $10(a7), a7
001178: 4ced1f10ffe8 movem.l    -$18(a5), d4/a0-a4
00117e: 4e5d         unlk       a5
001180: 4e75         rts        
001182: 4e550000     link.w     a5, #$0
001186: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
00118a: 518f         subq.l     #$8, a7
00118c: 42af0004     clr.l      $4(a7)
001190: 206f0008     movea.l    $8(a7), a0
001194: 26680018     movea.l    $18(a0), a3
001198: 206f0008     movea.l    $8(a7), a0
00119c: 2868000c     movea.l    $c(a0), a4
0011a0: 4854         pea.l      (a4)
0011a2: 220b         move.l     a3, d1
0011a4: 202f000c     move.l     $c(a7), d0
0011a8: 6100fccc     bsr.w      $e76
0011ac: 588f         addq.l     #$4, a7
0011ae: 2440         movea.l    d0, a2
0011b0: 200a         move.l     a2, d0
0011b2: 660e         bne.b      $11c2
0011b4: 202f0004     move.l     $4(a7), d0
0011b8: 6100021e     bsr.w      $13d8
0011bc: 7000         moveq      #$0, d0
0011be: 600000a4     bra.w      $1264
0011c2: 220a         move.l     a2, d1
0011c4: 202f0004     move.l     $4(a7), d0
0011c8: 610059ba     bsr.w      $6b84
0011cc: 2f400004     move.l     d0, $4(a7)
0011d0: 266a001c     movea.l    $1c(a2), a3
0011d4: 206f0008     movea.l    $8(a7), a0
0011d8: 2ea80020     move.l     $20(a0), (a7)
0011dc: 6004         bra.b      $11e2
0011de: 2057         movea.l    (a7), a0
0011e0: 2e90         move.l     (a0), (a7)
0011e2: 704c         moveq      #$4c, d0
0011e4: d08b         add.l      a3, d0
0011e6: 2200         move.l     d0, d1
0011e8: 704c         moveq      #$4c, d0
0011ea: d097         add.l      (a7), d0
0011ec: 6100f5a6     bsr.w      $794
0011f0: 4a00         tst.b      d0
0011f2: 67ea         beq.b      $11de
0011f4: 2657         movea.l    (a7), a3
0011f6: 0c2a00010010 cmpi.b     #$1, $10(a2)
0011fc: 663e         bne.b      $123c
0011fe: 2eaa0020     move.l     $20(a2), (a7)
001202: 6032         bra.b      $1236
001204: 2057         movea.l    (a7), a0
001206: 4a28001e     tst.b      $1e(a0)
00120a: 6726         beq.b      $1232
00120c: 220b         move.l     a3, d1
00120e: 2017         move.l     (a7), d0
001210: 610056f8     bsr.w      $690a
001214: 4a00         tst.b      d0
001216: 671a         beq.b      $1232
001218: 7034         moveq      #$34, d0
00121a: d08b         add.l      a3, d0
00121c: 2200         move.l     d0, d1
00121e: 2017         move.l     (a7), d0
001220: 610056ac     bsr.w      $68ce
001224: 4a00         tst.b      d0
001226: 6704         beq.b      $122c
001228: 703c         moveq      #$3c, d0
00122a: 6002         bra.b      $122e
00122c: 7034         moveq      #$34, d0
00122e: d08b         add.l      a3, d0
001230: 6012         bra.b      $1244
001232: 2057         movea.l    (a7), a0
001234: 2e90         move.l     (a0), (a7)
001236: 4a97         tst.l      (a7)
001238: 66ca         bne.b      $1204
00123a: 600a         bra.b      $1246
00123c: 220c         move.l     a4, d1
00123e: 200b         move.l     a3, d0
001240: 610058be     bsr.w      $6b00
001244: 2840         movea.l    d0, a4
001246: 206f0008     movea.l    $8(a7), a0
00124a: 704c         moveq      #$4c, d0
00124c: d0a8001c     add.l      $1c(a0), d0
001250: 2200         move.l     d0, d1
001252: 704c         moveq      #$4c, d0
001254: d08b         add.l      a3, d0
001256: 6100f53c     bsr.w      $794
00125a: 4a00         tst.b      d0
00125c: 6700ff42     beq.w      $11a0
001260: 202f0004     move.l     $4(a7), d0
001264: 508f         addq.l     #$8, a7
001266: 4ced1d02ffec movem.l    -$14(a5), d1/a0/a2-a4
00126c: 4e5d         unlk       a5
00126e: 4e75         rts        
001270: 4e550000     link.w     a5, #$0
001274: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001278: 206e8022     movea.l    -$7fde(a6), a0
00127c: 4aa800bc     tst.l      $bc(a0)
001280: 6754         beq.b      $12d6
001282: 206e8022     movea.l    -$7fde(a6), a0
001286: 246800bc     movea.l    $bc(a0), a2
00128a: 6046         bra.b      $12d2
00128c: b5d7         cmpa.l     (a7), a2
00128e: 6640         bne.b      $12d0
001290: 206e8022     movea.l    -$7fde(a6), a0
001294: 246800bc     movea.l    $bc(a0), a2
001298: 220a         move.l     a2, d1
00129a: 206e8022     movea.l    -$7fde(a6), a0
00129e: 202800bc     move.l     $bc(a0), d0
0012a2: 61005950     bsr.w      $6bf4
0012a6: 206e8022     movea.l    -$7fde(a6), a0
0012aa: 214000bc     move.l     d0, $bc(a0)
0012ae: 200a         move.l     a2, d0
0012b0: 61000ca8     bsr.w      $1f5a
0012b4: 200a         move.l     a2, d0
0012b6: 61000cda     bsr.w      $1f92
0012ba: 200a         move.l     a2, d0
0012bc: 61000e50     bsr.w      $210e
0012c0: b5d7         cmpa.l     (a7), a2
0012c2: 6712         beq.b      $12d6
0012c4: 206e8022     movea.l    -$7fde(a6), a0
0012c8: 4aa800bc     tst.l      $bc(a0)
0012cc: 66c2         bne.b      $1290
0012ce: 6006         bra.b      $12d6
0012d0: 2452         movea.l    (a2), a2
0012d2: 200a         move.l     a2, d0
0012d4: 66b6         bne.b      $128c
0012d6: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
0012dc: 4e5d         unlk       a5
0012de: 4e75         rts        
0012e0: 4e550000     link.w     a5, #$0
0012e4: 48e788a0     movem.l    d0/d4/a0/a2, -(a7)
0012e8: 7800         moveq      #$0, d4
0012ea: 2057         movea.l    (a7), a0
0012ec: 24680020     movea.l    $20(a0), a2
0012f0: 6034         bra.b      $1326
0012f2: 4aaa0010     tst.l      $10(a2)
0012f6: 6f1a         ble.b      $1312
0012f8: 4a2a001e     tst.b      $1e(a2)
0012fc: 6614         bne.b      $1312
0012fe: 2057         movea.l    (a7), a0
001300: b5e80018     cmpa.l     $18(a0), a2
001304: 670c         beq.b      $1312
001306: 2057         movea.l    (a7), a0
001308: b5e8001c     cmpa.l     $1c(a0), a2
00130c: 6704         beq.b      $1312
00130e: 42aa0010     clr.l      $10(a2)
001312: 4aaa0010     tst.l      $10(a2)
001316: 6f0c         ble.b      $1324
001318: 2057         movea.l    (a7), a0
00131a: b5e8001c     cmpa.l     $1c(a0), a2
00131e: 6704         beq.b      $1324
001320: d8aa0014     add.l      $14(a2), d4
001324: 2452         movea.l    (a2), a2
001326: 200a         move.l     a2, d0
001328: 66c8         bne.b      $12f2
00132a: 2057         movea.l    (a7), a0
00132c: 2144006a     move.l     d4, $6a(a0)
001330: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
001336: 4e5d         unlk       a5
001338: 4e75         rts        
00133a: 4e550000     link.w     a5, #$0
00133e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001342: 4feffff6     lea.l      -$a(a7), a7
001346: 422f0001     clr.b      $1(a7)
00134a: 486f0002     pea.l      $2(a7)
00134e: 41ef000a     lea.l      $a(a7), a0
001352: 2208         move.l     a0, d1
001354: 202e802a     move.l     -$7fd6(a6), d0
001358: 610068f4     bsr.w      $7c4e
00135c: 588f         addq.l     #$4, a7
00135e: 2d40802e     move.l     d0, -$7fd2(a6)
001362: 70ff         moveq      #$ff, d0
001364: b0ae802e     cmp.l      -$7fd2(a6), d0
001368: 675c         beq.b      $13c6
00136a: 206f0006     movea.l    $6(a7), a0
00136e: 7000         moveq      #$0, d0
001370: 10280001     move.b     $1(a0), d0
001374: 2d4084fc     move.l     d0, -$7b04(a6)
001378: 206f0006     movea.l    $6(a7), a0
00137c: 2d68000284e4 move.l     $2(a0), -$7b1c(a6)
001382: 2d68000684e8 move.l     $6(a0), -$7b18(a6)
001388: 206f0006     movea.l    $6(a7), a0
00138c: 2d68000e84ec move.l     $e(a0), -$7b14(a6)
001392: 2d68001284f0 move.l     $12(a0), -$7b10(a6)
001398: 206f0006     movea.l    $6(a7), a0
00139c: 3028000c     move.w     $c(a0), d0
0013a0: 48c0         ext.l      d0
0013a2: 5380         subq.l     #$1, d0
0013a4: 206f0006     movea.l    $6(a7), a0
0013a8: e788         lsl.l      #$3, d0
0013aa: d1c0         adda.l     d0, a0
0013ac: 2d68000e84f4 move.l     $e(a0), -$7b0c(a6)
0013b2: 2d68001284f8 move.l     $12(a0), -$7b08(a6)
0013b8: 202f0006     move.l     $6(a7), d0
0013bc: 4eae949e     jsr        -$6b62(a6)
0013c0: 1f7c00010001 move.b     #$1, $1(a7)
0013c6: 102f0001     move.b     $1(a7), d0
0013ca: 4fef000a     lea.l      $a(a7), a7
0013ce: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0013d4: 4e5d         unlk       a5
0013d6: 4e75         rts        
0013d8: 4e550000     link.w     a5, #$0
0013dc: 48e780a0     movem.l    d0/a0/a2, -(a7)
0013e0: 600c         bra.b      $13ee
0013e2: 2457         movea.l    (a7), a2
0013e4: 2057         movea.l    (a7), a0
0013e6: 2e90         move.l     (a0), (a7)
0013e8: 200a         move.l     a2, d0
0013ea: 61000d22     bsr.w      $210e
0013ee: 4a97         tst.l      (a7)
0013f0: 66f0         bne.b      $13e2
0013f2: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0013f8: 4e5d         unlk       a5
0013fa: 4e75         rts        
0013fc: 4e550000     link.w     a5, #$0
001400: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001404: 4fefff7a     lea.l      -$86(a7), a7
001408: 7801         moveq      #$1, d4
00140a: 61000dc6     bsr.w      $21d2
00140e: 2440         movea.l    d0, a2
001410: 4a80         tst.l      d0
001412: 67000088     beq.w      $149c
001416: 7800         moveq      #$0, d4
001418: 42af0004     clr.l      $4(a7)
00141c: 6050         bra.b      $146e
00141e: 486f0008     pea.l      $8(a7)
001422: 41ef0010     lea.l      $10(a7), a0
001426: 2208         move.l     a0, d1
001428: 41ef0014     lea.l      $14(a7), a0
00142c: 2008         move.l     a0, d0
00142e: 61005c5c     bsr.w      $708c
001432: 588f         addq.l     #$4, a7
001434: 4a00         tst.b      d0
001436: 6604         bne.b      $143c
001438: 7801         moveq      #$1, d4
00143a: 6032         bra.b      $146e
00143c: 2f2f000c     move.l     $c(a7), -(a7)
001440: 2f2f000c     move.l     $c(a7), -(a7)
001444: 41ef0018     lea.l      $18(a7), a0
001448: 2208         move.l     a0, d1
00144a: 200a         move.l     a2, d0
00144c: 61000100     bsr.w      $154e
001450: 508f         addq.l     #$8, a7
001452: 4a00         tst.b      d0
001454: 6604         bne.b      $145a
001456: 7801         moveq      #$1, d4
001458: 6004         bra.b      $145e
00145a: 52af0004     addq.l     #$1, $4(a7)
00145e: 202f000c     move.l     $c(a7), d0
001462: 4eae949e     jsr        -$6b62(a6)
001466: 202f0008     move.l     $8(a7), d0
00146a: 4eae949e     jsr        -$6b62(a6)
00146e: 302f0088     move.w     $88(a7), d0
001472: 48c0         ext.l      d0
001474: b0af0004     cmp.l      $4(a7), d0
001478: 6f04         ble.b      $147e
00147a: 4a04         tst.b      d4
00147c: 67a0         beq.b      $141e
00147e: 302f0088     move.w     $88(a7), d0
001482: 48c0         ext.l      d0
001484: b0af0004     cmp.l      $4(a7), d0
001488: 6f0a         ble.b      $1494
00148a: 200a         move.l     a2, d0
00148c: 61000c80     bsr.w      $210e
001490: 95ca         suba.l     a2, a2
001492: 6008         bra.b      $149c
001494: 306f0088     movea.w    $88(a7), a0
001498: 2548004a     move.l     a0, $4a(a2)
00149c: 200a         move.l     a2, d0
00149e: 4fef0086     lea.l      $86(a7), a7
0014a2: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0014a8: 4e5d         unlk       a5
0014aa: 4e75         rts        
0014ac: 4e550000     link.w     a5, #$0
0014b0: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0014b4: 558f         subq.l     #$2, a7
0014b6: 95ca         suba.l     a2, a2
0014b8: 7001         moveq      #$1, d0
0014ba: b0ae84fc     cmp.l      -$7b04(a6), d0
0014be: 6604         bne.b      $14c4
0014c0: 7801         moveq      #$1, d4
0014c2: 6002         bra.b      $14c6
0014c4: 7802         moveq      #$2, d4
0014c6: 2204         move.l     d4, d1
0014c8: 202f0002     move.l     $2(a7), d0
0014cc: 61005b44     bsr.w      $7012
0014d0: 4a00         tst.b      d0
0014d2: 6734         beq.b      $1508
0014d4: 41ee8444     lea.l      -$7bbc(a6), a0
0014d8: 2008         move.l     a0, d0
0014da: 61005b70     bsr.w      $704c
0014de: 4a00         tst.b      d0
0014e0: 6726         beq.b      $1508
0014e2: 41d7         lea.l      (a7), a0
0014e4: 2008         move.l     a0, d0
0014e6: 61005b8a     bsr.w      $7072
0014ea: 4a00         tst.b      d0
0014ec: 671a         beq.b      $1508
0014ee: 3057         movea.w    (a7), a0
0014f0: 2008         move.l     a0, d0
0014f2: 6100ff08     bsr.w      $13fc
0014f6: 2440         movea.l    d0, a2
0014f8: 4a80         tst.l      d0
0014fa: 6608         bne.b      $1504
0014fc: 1d7c00018442 move.b     #$1, -$7bbe(a6)
001502: 6004         bra.b      $1508
001504: 422e8442     clr.b      -$7bbe(a6)
001508: 200a         move.l     a2, d0
00150a: 6604         bne.b      $1510
00150c: 61006138     bsr.w      $7646
001510: 200a         move.l     a2, d0
001512: 548f         addq.l     #$2, a7
001514: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
00151a: 4e5d         unlk       a5
00151c: 4e75         rts        
00151e: 4e550000     link.w     a5, #$0
001522: 48e7c020     movem.l    d0-d1/a2, -(a7)
001526: 246f0004     movea.l    $4(a7), a2
00152a: 6008         bra.b      $1534
00152c: 0c2a004d0044 cmpi.b     #$4d, $44(a2)
001532: 660e         bne.b      $1542
001534: 220a         move.l     a2, d1
001536: 2017         move.l     (a7), d0
001538: 61005672     bsr.w      $6bac
00153c: 2440         movea.l    d0, a2
00153e: 4a80         tst.l      d0
001540: 66ea         bne.b      $152c
001542: 200a         move.l     a2, d0
001544: 4ced0400fffc movem.l    -$4(a5), a2
00154a: 4e5d         unlk       a5
00154c: 4e75         rts        
00154e: 4e550000     link.w     a5, #$0
001552: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001556: 7800         moveq      #$0, d4
001558: 61000bf0     bsr.w      $214a
00155c: 2440         movea.l    d0, a2
00155e: 4a80         tst.l      d0
001560: 6760         beq.b      $15c2
001562: 220a         move.l     a2, d1
001564: 2057         movea.l    (a7), a0
001566: 20280020     move.l     $20(a0), d0
00156a: 61005618     bsr.w      $6b84
00156e: 2057         movea.l    (a7), a0
001570: 21400020     move.l     d0, $20(a0)
001574: 2f2f0020     move.l     $20(a7), -(a7)
001578: 222f0008     move.l     $8(a7), d1
00157c: 200a         move.l     a2, d0
00157e: 6100073c     bsr.w      $1cbc
001582: 588f         addq.l     #$4, a7
001584: 4a00         tst.b      d0
001586: 673a         beq.b      $15c2
001588: 2f2f001c     move.l     $1c(a7), -(a7)
00158c: 206f0008     movea.l    $8(a7), a0
001590: 7000         moveq      #$0, d0
001592: 10280075     move.b     $75(a0), d0
001596: 2f00         move.l     d0, -(a7)
001598: 220a         move.l     a2, d1
00159a: 202f0008     move.l     $8(a7), d0
00159e: 610001aa     bsr.w      $174a
0015a2: 508f         addq.l     #$8, a7
0015a4: 4a00         tst.b      d0
0015a6: 671a         beq.b      $15c2
0015a8: 206f0004     movea.l    $4(a7), a0
0015ac: 48680025     pea.l      $25(a0)
0015b0: 220a         move.l     a2, d1
0015b2: 202f0004     move.l     $4(a7), d0
0015b6: 610000f4     bsr.w      $16ac
0015ba: 588f         addq.l     #$4, a7
0015bc: 4a00         tst.b      d0
0015be: 6702         beq.b      $15c2
0015c0: 7801         moveq      #$1, d4
0015c2: 1004         move.b     d4, d0
0015c4: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0015ca: 4e5d         unlk       a5
0015cc: 4e75         rts        
0015ce: 4e550000     link.w     a5, #$0
0015d2: 48e7cc00     movem.l    d0-d1/d4-d5, -(a7)
0015d6: 7a01         moveq      #$1, d5
0015d8: 7800         moveq      #$0, d4
0015da: 6014         bra.b      $15f0
0015dc: 2004         move.l     d4, d0
0015de: 5284         addq.l     #$1, d4
0015e0: e788         lsl.l      #$3, d0
0015e2: d0af0018     add.l      $18(a7), d0
0015e6: 2200         move.l     d0, d1
0015e8: 2017         move.l     (a7), d0
0015ea: 6100f5c2     bsr.w      $bae
0015ee: 1a00         move.b     d0, d5
0015f0: 4a05         tst.b      d5
0015f2: 6706         beq.b      $15fa
0015f4: b8af0004     cmp.l      $4(a7), d4
0015f8: 6de2         blt.b      $15dc
0015fa: 4a05         tst.b      d5
0015fc: 6706         beq.b      $1604
0015fe: 2017         move.l     (a7), d0
001600: 6100066a     bsr.w      $1c6c
001604: 1005         move.b     d5, d0
001606: 4ced0030fff8 movem.l    -$8(a5), d4-d5
00160c: 4e5d         unlk       a5
00160e: 4e75         rts        
001610: 4e550000     link.w     a5, #$0
001614: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
001618: 4feffff6     lea.l      -$a(a7), a7
00161c: 7801         moveq      #$1, d4
00161e: 41ef0009     lea.l      $9(a7), a0
001622: 2208         move.l     a0, d1
001624: 202e802a     move.l     -$7fd6(a6), d0
001628: 610069b0     bsr.w      $7fda
00162c: 72ff         moveq      #$ff, d1
00162e: b280         cmp.l      d0, d1
001630: 660a         bne.b      $163c
001632: 1f7c00010009 move.b     #$1, $9(a7)
001638: 7800         moveq      #$0, d4
00163a: 6056         bra.b      $1692
00163c: 4a2f0009     tst.b      $9(a7)
001640: 662a         bne.b      $166c
001642: 41d7         lea.l      (a7), a0
001644: 2208         move.l     a0, d1
001646: 202e802a     move.l     -$7fd6(a6), d0
00164a: 610069c6     bsr.w      $8012
00164e: 72ff         moveq      #$ff, d1
001650: b280         cmp.l      d0, d1
001652: 660a         bne.b      $165e
001654: 1f7c00010009 move.b     #$1, $9(a7)
00165a: 7800         moveq      #$0, d4
00165c: 600e         bra.b      $166c
00165e: 206e8022     movea.l    -$7fde(a6), a0
001662: 21570060     move.l     (a7), $60(a0)
001666: 216f00040064 move.l     $4(a7), $64(a0)
00166c: 41ef0008     lea.l      $8(a7), a0
001670: 2208         move.l     a0, d1
001672: 202e802a     move.l     -$7fd6(a6), d0
001676: 610069de     bsr.w      $8056
00167a: 72ff         moveq      #$ff, d1
00167c: b280         cmp.l      d0, d1
00167e: 6608         bne.b      $1688
001680: 1f7c00030008 move.b     #$3, $8(a7)
001686: 7800         moveq      #$0, d4
001688: 206e8022     movea.l    -$7fde(a6), a0
00168c: 116f0008005f move.b     $8(a7), $5f(a0)
001692: 206e8022     movea.l    -$7fde(a6), a0
001696: 116f0009005e move.b     $9(a7), $5e(a0)
00169c: 1004         move.b     d4, d0
00169e: 4fef000a     lea.l      $a(a7), a7
0016a2: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
0016a8: 4e5d         unlk       a5
0016aa: 4e75         rts        
0016ac: 4e550000     link.w     a5, #$0
0016b0: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
0016b4: 598f         subq.l     #$4, a7
0016b6: 7801         moveq      #$1, d4
0016b8: 222f001c     move.l     $1c(a7), d1
0016bc: 202f0004     move.l     $4(a7), d0
0016c0: 6100f3e8     bsr.w      $aaa
0016c4: 2e80         move.l     d0, (a7)
0016c6: 4a97         tst.l      (a7)
0016c8: 6c04         bge.b      $16ce
0016ca: 7800         moveq      #$0, d4
0016cc: 6008         bra.b      $16d6
0016ce: 206f0008     movea.l    $8(a7), a0
0016d2: 2157000c     move.l     (a7), $c(a0)
0016d6: 1004         move.b     d4, d0
0016d8: 588f         addq.l     #$4, a7
0016da: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0016e0: 4e5d         unlk       a5
0016e2: 4e75         rts        
0016e4: 4e550000     link.w     a5, #$0
0016e8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0016ec: 518f         subq.l     #$8, a7
0016ee: 222f001c     move.l     $1c(a7), d1
0016f2: 202f0008     move.l     $8(a7), d0
0016f6: 6100f3b2     bsr.w      $aaa
0016fa: 2f400004     move.l     d0, $4(a7)
0016fe: 4aaf0004     tst.l      $4(a7)
001702: 6f36         ble.b      $173a
001704: 4297         clr.l      (a7)
001706: 602c         bra.b      $1734
001708: 206f000c     movea.l    $c(a7), a0
00170c: 2017         move.l     (a7), d0
00170e: 222f0004     move.l     $4(a7), d1
001712: b2b00c00     cmp.l      (a0, d0.l * 4), d1
001716: 6722         beq.b      $173a
001718: 206f000c     movea.l    $c(a7), a0
00171c: 2017         move.l     (a7), d0
00171e: 4ab00c00     tst.l      (a0, d0.l * 4)
001722: 660e         bne.b      $1732
001724: 206f000c     movea.l    $c(a7), a0
001728: 2017         move.l     (a7), d0
00172a: 21af00040c00 move.l     $4(a7), (a0, d0.l * 4)
001730: 6008         bra.b      $173a
001732: 5297         addq.l     #$1, (a7)
001734: 7005         moveq      #$5, d0
001736: b097         cmp.l      (a7), d0
001738: 6ece         bgt.b      $1708
00173a: 202f0004     move.l     $4(a7), d0
00173e: 508f         addq.l     #$8, a7
001740: 4ced0100fffc movem.l    -$4(a5), a0
001746: 4e5d         unlk       a5
001748: 4e75         rts        
00174a: 4e550000     link.w     a5, #$0
00174e: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001752: 4feffff0     lea.l      -$10(a7), a7
001756: 7801         moveq      #$1, d4
001758: 4aaf002c     tst.l      $2c(a7)
00175c: 6f000100     ble.w      $185e
001760: 42af0008     clr.l      $8(a7)
001764: 600000e8     bra.w      $184e
001768: 203c000000e5 move.l     #$e5, d0
00176e: 4c2f00000008 mulu.l     $8(a7), d0
001774: 206f0030     movea.l    $30(a7), a0
001778: d1c0         adda.l     d0, a0
00177a: 0c28000100e4 cmpi.b     #$1, $e4(a0)
001780: 6604         bne.b      $1786
001782: 7060         moveq      #$60, d0
001784: 6002         bra.b      $1788
001786: 7064         moveq      #$64, d0
001788: d0af0014     add.l      $14(a7), d0
00178c: 2e80         move.l     d0, (a7)
00178e: 2057         movea.l    (a7), a0
001790: 4a90         tst.l      (a0)
001792: 6610         bne.b      $17a4
001794: 61000ac4     bsr.w      $225a
001798: 2057         movea.l    (a7), a0
00179a: 2080         move.l     d0, (a0)
00179c: 2057         movea.l    (a7), a0
00179e: 4a90         tst.l      (a0)
0017a0: 6602         bne.b      $17a4
0017a2: 7800         moveq      #$0, d4
0017a4: 2057         movea.l    (a7), a0
0017a6: 4a90         tst.l      (a0)
0017a8: 670000a0     beq.w      $184a
0017ac: 203c000000e5 move.l     #$e5, d0
0017b2: 4c2f00000008 mulu.l     $8(a7), d0
0017b8: 206f0030     movea.l    $30(a7), a0
0017bc: d1c0         adda.l     d0, a0
0017be: 48680098     pea.l      $98(a0)
0017c2: 206f0004     movea.l    $4(a7), a0
0017c6: 2010         move.l     (a0), d0
0017c8: 5880         addq.l     #$4, d0
0017ca: 2200         move.l     d0, d1
0017cc: 202f0014     move.l     $14(a7), d0
0017d0: 6100ff12     bsr.w      $16e4
0017d4: 588f         addq.l     #$4, a7
0017d6: 2f40000c     move.l     d0, $c(a7)
0017da: 4aaf000c     tst.l      $c(a7)
0017de: 6c02         bge.b      $17e2
0017e0: 7800         moveq      #$0, d4
0017e2: 203c000000e5 move.l     #$e5, d0
0017e8: 4c2f00000008 mulu.l     $8(a7), d0
0017ee: 206f0030     movea.l    $30(a7), a0
0017f2: 4870084c     pea.l      $4c(a0, d0.l)
0017f6: 206f0004     movea.l    $4(a7), a0
0017fa: 7018         moveq      #$18, d0
0017fc: d090         add.l      (a0), d0
0017fe: 2200         move.l     d0, d1
001800: 202f0014     move.l     $14(a7), d0
001804: 6100fede     bsr.w      $16e4
001808: 588f         addq.l     #$4, a7
00180a: 2f40000c     move.l     d0, $c(a7)
00180e: 4aaf000c     tst.l      $c(a7)
001812: 6c02         bge.b      $1816
001814: 7800         moveq      #$0, d4
001816: 203c000000e5 move.l     #$e5, d0
00181c: 4c2f00000008 mulu.l     $8(a7), d0
001822: 206f0030     movea.l    $30(a7), a0
001826: 48700800     pea.l      (a0, d0.l)
00182a: 206f0004     movea.l    $4(a7), a0
00182e: 702c         moveq      #$2c, d0
001830: d090         add.l      (a0), d0
001832: 2200         move.l     d0, d1
001834: 202f0014     move.l     $14(a7), d0
001838: 6100feaa     bsr.w      $16e4
00183c: 588f         addq.l     #$4, a7
00183e: 2f40000c     move.l     d0, $c(a7)
001842: 4aaf000c     tst.l      $c(a7)
001846: 6c02         bge.b      $184a
001848: 7800         moveq      #$0, d4
00184a: 52af0008     addq.l     #$1, $8(a7)
00184e: 202f0008     move.l     $8(a7), d0
001852: b0af002c     cmp.l      $2c(a7), d0
001856: 6c06         bge.b      $185e
001858: 4a04         tst.b      d4
00185a: 6600ff0c     bne.w      $1768
00185e: 1004         move.b     d4, d0
001860: 4fef0010     lea.l      $10(a7), a7
001864: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00186a: 4e5d         unlk       a5
00186c: 4e75         rts        
00186e: 4e550000     link.w     a5, #$0
001872: 48e78080     movem.l    d0/a0, -(a7)
001876: 2057         movea.l    (a7), a0
001878: 0c2800110010 cmpi.b     #$11, $10(a0)
00187e: 6728         beq.b      $18a8
001880: 2057         movea.l    (a7), a0
001882: 0c2800120010 cmpi.b     #$12, $10(a0)
001888: 671e         beq.b      $18a8
00188a: 2057         movea.l    (a7), a0
00188c: 0c2800170010 cmpi.b     #$17, $10(a0)
001892: 6714         beq.b      $18a8
001894: 2057         movea.l    (a7), a0
001896: 0c2800180010 cmpi.b     #$18, $10(a0)
00189c: 670a         beq.b      $18a8
00189e: 2057         movea.l    (a7), a0
0018a0: 0c2800160010 cmpi.b     #$16, $10(a0)
0018a6: 6604         bne.b      $18ac
0018a8: 7001         moveq      #$1, d0
0018aa: 6002         bra.b      $18ae
0018ac: 7000         moveq      #$0, d0
0018ae: 4ced0100fffc movem.l    -$4(a5), a0
0018b4: 4e5d         unlk       a5
0018b6: 4e75         rts        
0018b8: 4e550000     link.w     a5, #$0
0018bc: 48e78080     movem.l    d0/a0, -(a7)
0018c0: 2057         movea.l    (a7), a0
0018c2: 0c280006005a cmpi.b     #$6, $5a(a0)
0018c8: 6622         bne.b      $18ec
0018ca: 2057         movea.l    (a7), a0
0018cc: 0c2800040059 cmpi.b     #$4, $59(a0)
0018d2: 6714         beq.b      $18e8
0018d4: 2057         movea.l    (a7), a0
0018d6: 0c2800060059 cmpi.b     #$6, $59(a0)
0018dc: 670a         beq.b      $18e8
0018de: 2057         movea.l    (a7), a0
0018e0: 0c2800020059 cmpi.b     #$2, $59(a0)
0018e6: 6604         bne.b      $18ec
0018e8: 7001         moveq      #$1, d0
0018ea: 6002         bra.b      $18ee
0018ec: 7000         moveq      #$0, d0
0018ee: 4ced0100fffc movem.l    -$4(a5), a0
0018f4: 4e5d         unlk       a5
0018f6: 4e75         rts        
0018f8: 4e550000     link.w     a5, #$0
0018fc: 48e78800     movem.l    d0/d4, -(a7)
001900: 6020         bra.b      $1922
001902: 7800         moveq      #$0, d4
001904: 6046         bra.b      $194c
001906: 7801         moveq      #$1, d4
001908: 6042         bra.b      $194c
00190a: 7802         moveq      #$2, d4
00190c: 603e         bra.b      $194c
00190e: 7803         moveq      #$3, d4
001910: 603a         bra.b      $194c
001912: 7804         moveq      #$4, d4
001914: 6036         bra.b      $194c
001916: 7805         moveq      #$5, d4
001918: 6032         bra.b      $194c
00191a: 7806         moveq      #$6, d4
00191c: 602e         bra.b      $194c
00191e: 7807         moveq      #$7, d4
001920: 602a         bra.b      $194c
001922: 7000         moveq      #$0, d0
001924: 102f0003     move.b     $3(a7), d0
001928: 5380         subq.l     #$1, d0
00192a: 0c8000000008 cmpi.l     #$8, d0
001930: 62ec         bhi.b      $191e
001932: 303b0206     move.w     $193a(pc, d0.w), d0
001936: 4efb0002     jmp        $193a(pc, d0.w)
00193a: ffcc         dc.w       $ffcc
00193c: ffd0         dc.w       $ffd0
00193e: ffd4         dc.w       $ffd4
001940: ffd8         dc.w       $ffd8
001942: ffc8         dc.w       $ffc8
001944: ffc8         dc.w       $ffc8
001946: ffc8         dc.w       $ffc8
001948: ffdc         dc.w       $ffdc
00194a: ffe0         dc.w       $ffe0
00194c: 2004         move.l     d4, d0
00194e: 4ced0010fffc movem.l    -$4(a5), d4
001954: 4e5d         unlk       a5
001956: 4e75         rts        
001958: 4e550000     link.w     a5, #$0
00195c: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
001960: 4fefffe0     lea.l      -$20(a7), a7
001964: 7801         moveq      #$1, d4
001966: 7a01         moveq      #$1, d5
001968: 41ee84e4     lea.l      -$7b1c(a6), a0
00196c: 2008         move.l     a0, d0
00196e: 6100fb3c     bsr.w      $14ac
001972: 2440         movea.l    d0, a2
001974: 4a80         tst.l      d0
001976: 67000188     beq.w      $1b00
00197a: 7001         moveq      #$1, d0
00197c: 2d408026     move.l     d0, -$7fda(a6)
001980: 4878000b     pea.l      $b.w
001984: 41ee84e4     lea.l      -$7b1c(a6), a0
001988: 2208         move.l     a0, d1
00198a: 200a         move.l     a2, d0
00198c: 61000242     bsr.w      $1bd0
001990: 588f         addq.l     #$4, a7
001992: 7001         moveq      #$1, d0
001994: b0ae802e     cmp.l      -$7fd2(a6), d0
001998: 6616         bne.b      $19b0
00199a: 200a         move.l     a2, d0
00199c: 61000174     bsr.w      $1b12
0019a0: 200a         move.l     a2, d0
0019a2: 61000626     bsr.w      $1fca
0019a6: 1d7c00018441 move.b     #$1, -$7bbf(a6)
0019ac: 60000154     bra.w      $1b02
0019b0: 41ee8032     lea.l      -$7fce(a6), a0
0019b4: 2208         move.l     a0, d1
0019b6: 202e802a     move.l     -$7fd6(a6), d0
0019ba: 610065ee     bsr.w      $7faa
0019be: 2c2e802e     move.l     -$7fd2(a6), d6
0019c2: 7800         moveq      #$0, d4
0019c4: 486f0001     pea.l      $1(a7)
0019c8: 486f0006     pea.l      $6(a7)
0019cc: 486f0012     pea.l      $12(a7)
0019d0: 41ef001a     lea.l      $1a(a7), a0
0019d4: 2208         move.l     a0, d1
0019d6: 202e802a     move.l     -$7fd6(a6), d0
0019da: 610061da     bsr.w      $7bb6
0019de: 4fef000c     lea.l      $c(a7), a7
0019e2: 2d40802e     move.l     d0, -$7fd2(a6)
0019e6: 70ff         moveq      #$ff, d0
0019e8: b0ae802e     cmp.l      -$7fd2(a6), d0
0019ec: 6756         beq.b      $1a44
0019ee: 70fe         moveq      #$fe, d0
0019f0: b0ae802e     cmp.l      -$7fd2(a6), d0
0019f4: 674e         beq.b      $1a44
0019f6: 2f6f000e0018 move.l     $e(a7), $18(a7)
0019fc: 2f6f0012001c move.l     $12(a7), $1c(a7)
001a02: 7000         moveq      #$0, d0
001a04: 102f0016     move.b     $16(a7), d0
001a08: 2d4084fc     move.l     d0, -$7b04(a6)
001a0c: 4878000c     pea.l      $c.w
001a10: 41ef001c     lea.l      $1c(a7), a0
001a14: 2208         move.l     a0, d1
001a16: 200a         move.l     a2, d0
001a18: 610001b6     bsr.w      $1bd0
001a1c: 588f         addq.l     #$4, a7
001a1e: 4a00         tst.b      d0
001a20: 6624         bne.b      $1a46
001a22: 61000680     bsr.w      $20a4
001a26: 4a00         tst.b      d0
001a28: 670e         beq.b      $1a38
001a2a: 157c00120010 move.b     #$12, $10(a2)
001a30: 1d7c00018441 move.b     #$1, -$7bbf(a6)
001a36: 600c         bra.b      $1a44
001a38: 1d7c00018442 move.b     #$1, -$7bbe(a6)
001a3e: 7000         moveq      #$0, d0
001a40: 600000c2     bra.w      $1b04
001a44: 7801         moveq      #$1, d4
001a46: 4a04         tst.b      d4
001a48: 6614         bne.b      $1a5e
001a4a: 206a001c     movea.l    $1c(a2), a0
001a4e: 4a28001e     tst.b      $1e(a0)
001a52: 670a         beq.b      $1a5e
001a54: 7001         moveq      #$1, d0
001a56: b0ae802e     cmp.l      -$7fd2(a6), d0
001a5a: 6600ff68     bne.w      $19c4
001a5e: 7002         moveq      #$2, d0
001a60: b0ae802e     cmp.l      -$7fd2(a6), d0
001a64: 660a         bne.b      $1a70
001a66: 206a001c     movea.l    $1c(a2), a0
001a6a: 4a28001e     tst.b      $1e(a0)
001a6e: 6614         bne.b      $1a84
001a70: 4a04         tst.b      d4
001a72: 6718         beq.b      $1a8c
001a74: 70ff         moveq      #$ff, d0
001a76: b0ae802e     cmp.l      -$7fd2(a6), d0
001a7a: 6708         beq.b      $1a84
001a7c: 70fe         moveq      #$fe, d0
001a7e: b0ae802e     cmp.l      -$7fd2(a6), d0
001a82: 6608         bne.b      $1a8c
001a84: 200a         move.l     a2, d0
001a86: 61000686     bsr.w      $210e
001a8a: 606c         bra.b      $1af8
001a8c: 200a         move.l     a2, d0
001a8e: 610000ce     bsr.w      $1b5e
001a92: 200a         move.l     a2, d0
001a94: 6100f84a     bsr.w      $12e0
001a98: 200a         move.l     a2, d0
001a9a: 6100038a     bsr.w      $1e26
001a9e: 6100ef32     bsr.w      $9d2
001aa2: 156e84dc006e move.b     -$7b24(a6), $6e(a2)
001aa8: 266a0018     movea.l    $18(a2), a3
001aac: 200a         move.l     a2, d0
001aae: 6100051a     bsr.w      $1fca
001ab2: 4a00         tst.b      d0
001ab4: 6642         bne.b      $1af8
001ab6: 200a         move.l     a2, d0
001ab8: 61000654     bsr.w      $210e
001abc: 2d6b004c84e4 move.l     $4c(a3), -$7b1c(a6)
001ac2: 2d6b005084e8 move.l     $50(a3), -$7b18(a6)
001ac8: 2d6b003484ec move.l     $34(a3), -$7b14(a6)
001ace: 2d6b003884f0 move.l     $38(a3), -$7b10(a6)
001ad4: 2d6b003c84f4 move.l     $3c(a3), -$7b0c(a6)
001ada: 2d6b004084f8 move.l     $40(a3), -$7b08(a6)
001ae0: 2d6b001884fc move.l     $18(a3), -$7b04(a6)
001ae6: 222e8032     move.l     -$7fce(a6), d1
001aea: 202e802a     move.l     -$7fd6(a6), d0
001aee: 6100643e     bsr.w      $7f2e
001af2: 2d46802e     move.l     d6, -$7fd2(a6)
001af6: 7a00         moveq      #$0, d5
001af8: 70ff         moveq      #$ff, d0
001afa: b0ae802e     cmp.l      -$7fd2(a6), d0
001afe: 6602         bne.b      $1b02
001b00: 7a00         moveq      #$0, d5
001b02: 1005         move.b     d5, d0
001b04: 4fef0020     lea.l      $20(a7), a7
001b08: 4ced0d72ffe4 movem.l    -$1c(a5), d1/d4-d6/a0/a2-a3
001b0e: 4e5d         unlk       a5
001b10: 4e75         rts        
001b12: 4e550000     link.w     a5, #$0
001b16: 48e780a0     movem.l    d0/a0/a2, -(a7)
001b1a: 2440         movea.l    d0, a2
001b1c: 157c00420044 move.b     #$42, $44(a2)
001b22: 157c00110010 move.b     #$11, $10(a2)
001b28: 206a0018     movea.l    $18(a2), a0
001b2c: 4228001e     clr.b      $1e(a0)
001b30: 4a2e8443     tst.b      -$7bbd(a6)
001b34: 6618         bne.b      $1b4e
001b36: 202a0018     move.l     $18(a2), d0
001b3a: 6100fd7c     bsr.w      $18b8
001b3e: 4a00         tst.b      d0
001b40: 670c         beq.b      $1b4e
001b42: 157c00120010 move.b     #$12, $10(a2)
001b48: 200a         move.l     a2, d0
001b4a: 610002da     bsr.w      $1e26
001b4e: 200a         move.l     a2, d0
001b50: 6100f000     bsr.w      $b52
001b54: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001b5a: 4e5d         unlk       a5
001b5c: 4e75         rts        
001b5e: 4e550000     link.w     a5, #$0
001b62: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001b66: 558f         subq.l     #$2, a7
001b68: 202f0002     move.l     $2(a7), d0
001b6c: 6100fd00     bsr.w      $186e
001b70: 4a00         tst.b      d0
001b72: 6650         bne.b      $1bc4
001b74: 422f0001     clr.b      $1(a7)
001b78: 206f0002     movea.l    $2(a7), a0
001b7c: 24680020     movea.l    $20(a0), a2
001b80: 602e         bra.b      $1bb0
001b82: 4a2a001e     tst.b      $1e(a2)
001b86: 6726         beq.b      $1bae
001b88: 4aaa0010     tst.l      $10(a2)
001b8c: 6720         beq.b      $1bae
001b8e: 7000         moveq      #$0, d0
001b90: 102f0001     move.b     $1(a7), d0
001b94: 6100fd62     bsr.w      $18f8
001b98: 2200         move.l     d0, d1
001b9a: 7000         moveq      #$0, d0
001b9c: 102a001e     move.b     $1e(a2), d0
001ba0: 6100fd56     bsr.w      $18f8
001ba4: b280         cmp.l      d0, d1
001ba6: 6f06         ble.b      $1bae
001ba8: 1f6a001e0001 move.b     $1e(a2), $1(a7)
001bae: 2452         movea.l    (a2), a2
001bb0: 200a         move.l     a2, d0
001bb2: 66ce         bne.b      $1b82
001bb4: 7000         moveq      #$0, d0
001bb6: 102f0001     move.b     $1(a7), d0
001bba: 2200         move.l     d0, d1
001bbc: 202f0002     move.l     $2(a7), d0
001bc0: 61000298     bsr.w      $1e5a
001bc4: 548f         addq.l     #$2, a7
001bc6: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
001bcc: 4e5d         unlk       a5
001bce: 4e75         rts        
001bd0: 4e550000     link.w     a5, #$0
001bd4: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001bd8: 598f         subq.l     #$4, a7
001bda: 206f0004     movea.l    $4(a7), a0
001bde: 24680020     movea.l    $20(a0), a2
001be2: 60000074     bra.w      $1c58
001be6: 704c         moveq      #$4c, d0
001be8: d08a         add.l      a2, d0
001bea: 2e80         move.l     d0, (a7)
001bec: 222f0008     move.l     $8(a7), d1
001bf0: 2017         move.l     (a7), d0
001bf2: 6100eba0     bsr.w      $794
001bf6: 4a00         tst.b      d0
001bf8: 675c         beq.b      $1c56
001bfa: 256e80260010 move.l     -$7fda(a6), $10(a2)
001c00: 52ae8026     addq.l     #$1, -$7fda(a6)
001c04: 700b         moveq      #$b, d0
001c06: b0af001c     cmp.l      $1c(a7), d0
001c0a: 660a         bne.b      $1c16
001c0c: 206f0004     movea.l    $4(a7), a0
001c10: 214a0018     move.l     a2, $18(a0)
001c14: 6036         bra.b      $1c4c
001c16: 206f0004     movea.l    $4(a7), a0
001c1a: 214a001c     move.l     a2, $1c(a0)
001c1e: 2d6a004c84e4 move.l     $4c(a2), -$7b1c(a6)
001c24: 2d6a005084e8 move.l     $50(a2), -$7b18(a6)
001c2a: 2d6a003484ec move.l     $34(a2), -$7b14(a6)
001c30: 2d6a003884f0 move.l     $38(a2), -$7b10(a6)
001c36: 2d6a003c84f4 move.l     $3c(a2), -$7b0c(a6)
001c3c: 2d6a004084f8 move.l     $40(a2), -$7b08(a6)
001c42: 206f0004     movea.l    $4(a7), a0
001c46: b5e80018     cmpa.l     $18(a0), a2
001c4a: 6706         beq.b      $1c52
001c4c: 256e84fc0018 move.l     -$7b04(a6), $18(a2)
001c52: 7001         moveq      #$1, d0
001c54: 600a         bra.b      $1c60
001c56: 2452         movea.l    (a2), a2
001c58: 200a         move.l     a2, d0
001c5a: 6600ff8a     bne.w      $1be6
001c5e: 7000         moveq      #$0, d0
001c60: 588f         addq.l     #$4, a7
001c62: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001c68: 4e5d         unlk       a5
001c6a: 4e75         rts        
001c6c: 4e550000     link.w     a5, #$0
001c70: 48e780e0     movem.l    d0/a0-a2, -(a7)
001c74: 2057         movea.l    (a7), a0
001c76: 20280030     move.l     $30(a0), d0
001c7a: 61004fd8     bsr.w      $6c54
001c7e: 2057         movea.l    (a7), a0
001c80: 21400030     move.l     d0, $30(a0)
001c84: 2057         movea.l    (a7), a0
001c86: 2257         movea.l    (a7), a1
001c88: 22690030     movea.l    $30(a1), a1
001c8c: 216900040034 move.l     $4(a1), $34(a0)
001c92: 216900080038 move.l     $8(a1), $38(a0)
001c98: 2057         movea.l    (a7), a0
001c9a: 20280030     move.l     $30(a0), d0
001c9e: 61004f32     bsr.w      $6bd2
001ca2: 2440         movea.l    d0, a2
001ca4: 2057         movea.l    (a7), a0
001ca6: 216a0004003c move.l     $4(a2), $3c(a0)
001cac: 216a00080040 move.l     $8(a2), $40(a0)
001cb2: 4ced0700fff4 movem.l    -$c(a5), a0-a2
001cb8: 4e5d         unlk       a5
001cba: 4e75         rts        
001cbc: 4e550000     link.w     a5, #$0
001cc0: 48e7c8c0     movem.l    d0-d1/d4/a0-a1, -(a7)
001cc4: 2057         movea.l    (a7), a0
001cc6: 226f0004     movea.l    $4(a7), a1
001cca: 2151004c     move.l     (a1), $4c(a0)
001cce: 216900040050 move.l     $4(a1), $50(a0)
001cd4: 2057         movea.l    (a7), a0
001cd6: 42680022     clr.w      $22(a0)
001cda: 206f0004     movea.l    $4(a7), a0
001cde: 20280008     move.l     $8(a0), d0
001ce2: 4c7c000000000064 divu.l     #$64, d0
001cea: 2057         movea.l    (a7), a0
001cec: 21400014     move.l     d0, $14(a0)
001cf0: 206f0004     movea.l    $4(a7), a0
001cf4: 4a280071     tst.b      $71(a0)
001cf8: 6708         beq.b      $1d02
001cfa: 2057         movea.l    (a7), a0
001cfc: 42280021     clr.b      $21(a0)
001d00: 6008         bra.b      $1d0a
001d02: 2057         movea.l    (a7), a0
001d04: 117c00010021 move.b     #$1, $21(a0)
001d0a: 206f0004     movea.l    $4(a7), a0
001d0e: 2257         movea.l    (a7), a1
001d10: 13680073005e move.b     $73(a0), $5e(a1)
001d16: 7800         moveq      #$0, d4
001d18: 206f0004     movea.l    $4(a7), a0
001d1c: 0c280002000f cmpi.b     #$2, $f(a0)
001d22: 6602         bne.b      $1d26
001d24: 7801         moveq      #$1, d4
001d26: 2057         movea.l    (a7), a0
001d28: 1144001c     move.b     d4, $1c(a0)
001d2c: 206f0004     movea.l    $4(a7), a0
001d30: 7000         moveq      #$0, d0
001d32: 3028000c     move.w     $c(a0), d0
001d36: 4c7c080000000064 divs.l     #$64, d0
001d3e: 2057         movea.l    (a7), a0
001d40: 31400028     move.w     d0, $28(a0)
001d44: 7800         moveq      #$0, d4
001d46: 206f0004     movea.l    $4(a7), a0
001d4a: 0c2800020015 cmpi.b     #$2, $15(a0)
001d50: 6602         bne.b      $1d54
001d52: 7801         moveq      #$1, d4
001d54: 2057         movea.l    (a7), a0
001d56: 1144001d     move.b     d4, $1d(a0)
001d5a: 206f0004     movea.l    $4(a7), a0
001d5e: 7000         moveq      #$0, d0
001d60: 30280012     move.w     $12(a0), d0
001d64: 4c7c080000000064 divs.l     #$64, d0
001d6c: 2057         movea.l    (a7), a0
001d6e: 3140002a     move.w     d0, $2a(a0)
001d72: 206f0004     movea.l    $4(a7), a0
001d76: 2257         movea.l    (a7), a1
001d78: 13680019001e move.b     $19(a0), $1e(a1)
001d7e: 206f0004     movea.l    $4(a7), a0
001d82: 2257         movea.l    (a7), a1
001d84: 1368001b0055 move.b     $1b(a0), $55(a1)
001d8a: 206f0004     movea.l    $4(a7), a0
001d8e: 2257         movea.l    (a7), a1
001d90: 1368001c005a move.b     $1c(a0), $5a(a1)
001d96: 206f0004     movea.l    $4(a7), a0
001d9a: 2257         movea.l    (a7), a1
001d9c: 1368001d005d move.b     $1d(a0), $5d(a1)
001da2: 206f0004     movea.l    $4(a7), a0
001da6: 2257         movea.l    (a7), a1
001da8: 1368001e0057 move.b     $1e(a0), $57(a1)
001dae: 206f0004     movea.l    $4(a7), a0
001db2: 2257         movea.l    (a7), a1
001db4: 136800240056 move.b     $24(a0), $56(a1)
001dba: 206f0004     movea.l    $4(a7), a0
001dbe: 2257         movea.l    (a7), a1
001dc0: 136800210059 move.b     $21(a0), $59(a1)
001dc6: 206f0004     movea.l    $4(a7), a0
001dca: 2257         movea.l    (a7), a1
001dcc: 1368001f0058 move.b     $1f(a0), $58(a1)
001dd2: 206f0004     movea.l    $4(a7), a0
001dd6: 2257         movea.l    (a7), a1
001dd8: 13680023005c move.b     $23(a0), $5c(a1)
001dde: 206f0004     movea.l    $4(a7), a0
001de2: 2257         movea.l    (a7), a1
001de4: 13680072001f move.b     $72(a0), $1f(a1)
001dea: 206f0004     movea.l    $4(a7), a0
001dee: 2257         movea.l    (a7), a1
001df0: 1368001a0054 move.b     $1a(a0), $54(a1)
001df6: 2057         movea.l    (a7), a0
001df8: 42a80010     clr.l      $10(a0)
001dfc: 2057         movea.l    (a7), a0
001dfe: 42a80008     clr.l      $8(a0)
001e02: 2f2f001c     move.l     $1c(a7), -(a7)
001e06: 206f0008     movea.l    $8(a7), a0
001e0a: 7000         moveq      #$0, d0
001e0c: 10280074     move.b     $74(a0), d0
001e10: 2200         move.l     d0, d1
001e12: 202f0004     move.l     $4(a7), d0
001e16: 6100f7b6     bsr.w      $15ce
001e1a: 588f         addq.l     #$4, a7
001e1c: 4ced0310fff4 movem.l    -$c(a5), d4/a0-a1
001e22: 4e5d         unlk       a5
001e24: 4e75         rts        
001e26: 4e550000     link.w     a5, #$0
001e2a: 48e78080     movem.l    d0/a0, -(a7)
001e2e: 2057         movea.l    (a7), a0
001e30: 20680018     movea.l    $18(a0), a0
001e34: 7001         moveq      #$1, d0
001e36: b0a80018     cmp.l      $18(a0), d0
001e3a: 6606         bne.b      $1e42
001e3c: 2057         movea.l    (a7), a0
001e3e: 7034         moveq      #$34, d0
001e40: 6004         bra.b      $1e46
001e42: 2057         movea.l    (a7), a0
001e44: 703c         moveq      #$3c, d0
001e46: d0a80018     add.l      $18(a0), d0
001e4a: 2057         movea.l    (a7), a0
001e4c: 2140000c     move.l     d0, $c(a0)
001e50: 4ced0100fffc movem.l    -$4(a5), a0
001e56: 4e5d         unlk       a5
001e58: 4e75         rts        
001e5a: 4e550000     link.w     a5, #$0
001e5e: 48e7c080     movem.l    d0-d1/a0, -(a7)
001e62: 603c         bra.b      $1ea0
001e64: 2057         movea.l    (a7), a0
001e66: 117c000a0010 move.b     #$a, $10(a0)
001e6c: 605c         bra.b      $1eca
001e6e: 2057         movea.l    (a7), a0
001e70: 117c000c0010 move.b     #$c, $10(a0)
001e76: 6052         bra.b      $1eca
001e78: 2057         movea.l    (a7), a0
001e7a: 117c00130010 move.b     #$13, $10(a0)
001e80: 6048         bra.b      $1eca
001e82: 2057         movea.l    (a7), a0
001e84: 117c000b0010 move.b     #$b, $10(a0)
001e8a: 603e         bra.b      $1eca
001e8c: 2057         movea.l    (a7), a0
001e8e: 117c00010010 move.b     #$1, $10(a0)
001e94: 6034         bra.b      $1eca
001e96: 2057         movea.l    (a7), a0
001e98: 117c00150010 move.b     #$15, $10(a0)
001e9e: 602a         bra.b      $1eca
001ea0: 7000         moveq      #$0, d0
001ea2: 102f0007     move.b     $7(a7), d0
001ea6: 0c8000000009 cmpi.l     #$9, d0
001eac: 62e8         bhi.b      $1e96
001eae: 303b0206     move.w     $1eb6(pc, d0.w), d0
001eb2: 4efb0002     jmp        $1eb6(pc, d0.w)
001eb6: ffe0         dc.w       $ffe0
001eb8: ffae         dc.w       $ffae
001eba: ffb8         dc.w       $ffb8
001ebc: ffcc         dc.w       $ffcc
001ebe: ffcc         dc.w       $ffcc
001ec0: ffd6         dc.w       $ffd6
001ec2: ffd6         dc.w       $ffd6
001ec4: ffd6         dc.w       $ffd6
001ec6: ffc2         dc.w       $ffc2
001ec8: ffc2         dc.w       $ffc2
001eca: 4ced0100fffc movem.l    -$4(a5), a0
001ed0: 4e5d         unlk       a5
001ed2: 4e75         rts        
001ed4: 4e550000     link.w     a5, #$0
001ed8: 48e78fa0     movem.l    d0/d4-d7/a0/a2, -(a7)
001edc: 558f         subq.l     #$2, a7
001ede: 206e8022     movea.l    -$7fde(a6), a0
001ee2: 246800bc     movea.l    $bc(a0), a2
001ee6: 7800         moveq      #$0, d4
001ee8: 7a00         moveq      #$0, d5
001eea: 7c00         moveq      #$0, d6
001eec: 7e00         moveq      #$0, d7
001eee: 422f0001     clr.b      $1(a7)
001ef2: 6030         bra.b      $1f24
001ef4: d8aa006a     add.l      $6a(a2), d4
001ef8: 5286         addq.l     #$1, d6
001efa: 0c2a004d0044 cmpi.b     #$4d, $44(a2)
001f00: 670a         beq.b      $1f0c
001f02: 5285         addq.l     #$1, d5
001f04: 4a2f0001     tst.b      $1(a7)
001f08: 6702         beq.b      $1f0c
001f0a: 7e01         moveq      #$1, d7
001f0c: 0c2a000f0010 cmpi.b     #$f, $10(a2)
001f12: 6708         beq.b      $1f1c
001f14: 0c2a00100010 cmpi.b     #$10, $10(a2)
001f1a: 6606         bne.b      $1f22
001f1c: 1f7c00010001 move.b     #$1, $1(a7)
001f22: 2452         movea.l    (a2), a2
001f24: 200a         move.l     a2, d0
001f26: 66cc         bne.b      $1ef4
001f28: 4a2f0001     tst.b      $1(a7)
001f2c: 670c         beq.b      $1f3a
001f2e: 0c84000001f4 cmpi.l     #$1f4, d4
001f34: 6d04         blt.b      $1f3a
001f36: 1007         move.b     d7, d0
001f38: 6014         bra.b      $1f4e
001f3a: 0c84000001f4 cmpi.l     #$1f4, d4
001f40: 6c06         bge.b      $1f48
001f42: 7001         moveq      #$1, d0
001f44: b085         cmp.l      d5, d0
001f46: 6c04         bge.b      $1f4c
001f48: 7001         moveq      #$1, d0
001f4a: 6002         bra.b      $1f4e
001f4c: 7000         moveq      #$0, d0
001f4e: 548f         addq.l     #$2, a7
001f50: 4ced05f0ffe8 movem.l    -$18(a5), d4-d7/a0/a2
001f56: 4e5d         unlk       a5
001f58: 4e75         rts        
001f5a: 4e550000     link.w     a5, #$0
001f5e: 48e780a0     movem.l    d0/a0/a2, -(a7)
001f62: 206e8022     movea.l    -$7fde(a6), a0
001f66: 246800bc     movea.l    $bc(a0), a2
001f6a: 6018         bra.b      $1f84
001f6c: 0c2a004d0044 cmpi.b     #$4d, $44(a2)
001f72: 670e         beq.b      $1f82
001f74: 2017         move.l     (a7), d0
001f76: b0aa0004     cmp.l      $4(a2), d0
001f7a: 6606         bne.b      $1f82
001f7c: 42aa0004     clr.l      $4(a2)
001f80: 6006         bra.b      $1f88
001f82: 2452         movea.l    (a2), a2
001f84: 200a         move.l     a2, d0
001f86: 66e4         bne.b      $1f6c
001f88: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001f8e: 4e5d         unlk       a5
001f90: 4e75         rts        
001f92: 4e550000     link.w     a5, #$0
001f96: 48e780a0     movem.l    d0/a0/a2, -(a7)
001f9a: 206e8022     movea.l    -$7fde(a6), a0
001f9e: 246800bc     movea.l    $bc(a0), a2
001fa2: 6018         bra.b      $1fbc
001fa4: 0c2a004d0044 cmpi.b     #$4d, $44(a2)
001faa: 670e         beq.b      $1fba
001fac: 2017         move.l     (a7), d0
001fae: b0aa0008     cmp.l      $8(a2), d0
001fb2: 6606         bne.b      $1fba
001fb4: 42aa0008     clr.l      $8(a2)
001fb8: 6006         bra.b      $1fc0
001fba: 2452         movea.l    (a2), a2
001fbc: 200a         move.l     a2, d0
001fbe: 66e4         bne.b      $1fa4
001fc0: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001fc6: 4e5d         unlk       a5
001fc8: 4e75         rts        
001fca: 4e550000     link.w     a5, #$0
001fce: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001fd2: 7800         moveq      #$0, d4
001fd4: 42a7         clr.l      -(a7)
001fd6: 7000         moveq      #$0, d0
001fd8: 102e84e2     move.b     -$7b1e(a6), d0
001fdc: 2200         move.l     d0, d1
001fde: 202f0004     move.l     $4(a7), d0
001fe2: 610030c6     bsr.w      $50aa
001fe6: 588f         addq.l     #$4, a7
001fe8: 4a00         tst.b      d0
001fea: 661a         bne.b      $2006
001fec: 2017         move.l     (a7), d0
001fee: 6100f192     bsr.w      $1182
001ff2: 2640         movea.l    d0, a3
001ff4: 200b         move.l     a3, d0
001ff6: 6606         bne.b      $1ffe
001ff8: 7000         moveq      #$0, d0
001ffa: 6000009e     bra.w      $209a
001ffe: 2457         movea.l    (a7), a2
002000: 7801         moveq      #$1, d4
002002: 60000084     bra.w      $2088
002006: 2657         movea.l    (a7), a3
002008: 95ca         suba.l     a2, a2
00200a: 6000007c     bra.w      $2088
00200e: 2e8b         move.l     a3, (a7)
002010: 2217         move.l     (a7), d1
002012: 200b         move.l     a3, d0
002014: 61004bde     bsr.w      $6bf4
002018: 2640         movea.l    d0, a3
00201a: 4a04         tst.b      d4
00201c: 6716         beq.b      $2034
00201e: 48780001     pea.l      $1.w
002022: 7000         moveq      #$0, d0
002024: 102e84e2     move.b     -$7b1e(a6), d0
002028: 2200         move.l     d0, d1
00202a: 202f0004     move.l     $4(a7), d0
00202e: 6100307a     bsr.w      $50aa
002032: 588f         addq.l     #$4, a7
002034: 2057         movea.l    (a7), a0
002036: 217c000000010038 move.l     #$1, $38(a0)
00203e: 2057         movea.l    (a7), a0
002040: 217c00000001003c move.l     #$1, $3c(a0)
002048: 2057         movea.l    (a7), a0
00204a: 117c00010012 move.b     #$1, $12(a0)
002050: 2057         movea.l    (a7), a0
002052: 4228002e     clr.b      $2e(a0)
002056: 2057         movea.l    (a7), a0
002058: 4228002f     clr.b      $2f(a0)
00205c: 2017         move.l     (a7), d0
00205e: 6100e878     bsr.w      $8d8
002062: 202e843c     move.l     -$7bc4(a6), d0
002066: 61004f14     bsr.w      $6f7c
00206a: 2217         move.l     (a7), d1
00206c: 206e8022     movea.l    -$7fde(a6), a0
002070: 202800bc     move.l     $bc(a0), d0
002074: 61004b0e     bsr.w      $6b84
002078: 206e8022     movea.l    -$7fde(a6), a0
00207c: 214000bc     move.l     d0, $bc(a0)
002080: 202e843c     move.l     -$7bc4(a6), d0
002084: 61004f08     bsr.w      $6f8e
002088: 200b         move.l     a3, d0
00208a: 6600ff82     bne.w      $200e
00208e: 200a         move.l     a2, d0
002090: 6706         beq.b      $2098
002092: 200a         move.l     a2, d0
002094: 61000078     bsr.w      $210e
002098: 7001         moveq      #$1, d0
00209a: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
0020a0: 4e5d         unlk       a5
0020a2: 4e75         rts        
0020a4: 4e550000     link.w     a5, #$0
0020a8: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
0020ac: 518f         subq.l     #$8, a7
0020ae: 7800         moveq      #$0, d4
0020b0: 72ff         moveq      #$ff, d1
0020b2: 202e802a     move.l     -$7fd6(a6), d0
0020b6: 61005e5c     bsr.w      $7f14
0020ba: 72ff         moveq      #$ff, d1
0020bc: b280         cmp.l      d0, d1
0020be: 6726         beq.b      $20e6
0020c0: 4857         pea.l      (a7)
0020c2: 41ef0008     lea.l      $8(a7), a0
0020c6: 2208         move.l     a0, d1
0020c8: 202e802a     move.l     -$7fd6(a6), d0
0020cc: 61005b80     bsr.w      $7c4e
0020d0: 588f         addq.l     #$4, a7
0020d2: 2d40802e     move.l     d0, -$7fd2(a6)
0020d6: 70ff         moveq      #$ff, d0
0020d8: b0ae802e     cmp.l      -$7fd2(a6), d0
0020dc: 6708         beq.b      $20e6
0020de: 70fe         moveq      #$fe, d0
0020e0: b0ae802e     cmp.l      -$7fd2(a6), d0
0020e4: 6604         bne.b      $20ea
0020e6: 7000         moveq      #$0, d0
0020e8: 6016         bra.b      $2100
0020ea: 206f0004     movea.l    $4(a7), a0
0020ee: 0c100006     cmpi.b     #$6, (a0)
0020f2: 6602         bne.b      $20f6
0020f4: 7801         moveq      #$1, d4
0020f6: 202f0004     move.l     $4(a7), d0
0020fa: 61007c18     bsr.w      $9d14
0020fe: 1004         move.b     d4, d0
002100: 508f         addq.l     #$8, a7
002102: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
002108: 4e5d         unlk       a5
00210a: 4e75         rts        
00210c: 00004e55     ori.b      #$55, d0
002110: 000048e7     ori.b      #$e7, d0
002114: c080         and.l      d0, d0
002116: 2057         movea.l    (a7), a0
002118: 20280020     move.l     $20(a0), d0
00211c: 610002f0     bsr.w      $240e
002120: 2057         movea.l    (a7), a0
002122: 20280028     move.l     $28(a0), d0
002126: 61000370     bsr.w      $2498
00212a: 2217         move.l     (a7), d1
00212c: 206e8022     movea.l    -$7fde(a6), a0
002130: 202800c4     move.l     $c4(a0), d0
002134: 61004a30     bsr.w      $6b66
002138: 206e8022     movea.l    -$7fde(a6), a0
00213c: 214000c4     move.l     d0, $c4(a0)
002140: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002146: 4e5d         unlk       a5
002148: 4e75         rts        
00214a: 4e550000     link.w     a5, #$0
00214e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002152: 95ca         suba.l     a2, a2
002154: 206e8022     movea.l    -$7fde(a6), a0
002158: 4aa800c8     tst.l      $c8(a0)
00215c: 6724         beq.b      $2182
00215e: 206e8022     movea.l    -$7fde(a6), a0
002162: 246800c8     movea.l    $c8(a0), a2
002166: 220a         move.l     a2, d1
002168: 206e8022     movea.l    -$7fde(a6), a0
00216c: 202800c8     move.l     $c8(a0), d0
002170: 61004a82     bsr.w      $6bf4
002174: 206e8022     movea.l    -$7fde(a6), a0
002178: 214000c8     move.l     d0, $c8(a0)
00217c: 200a         move.l     a2, d0
00217e: 6100011e     bsr.w      $229e
002182: 200a         move.l     a2, d0
002184: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
00218a: 4e5d         unlk       a5
00218c: 4e75         rts        
00218e: 4e550000     link.w     a5, #$0
002192: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002196: 95ca         suba.l     a2, a2
002198: 206e8022     movea.l    -$7fde(a6), a0
00219c: 4aa800cc     tst.l      $cc(a0)
0021a0: 6724         beq.b      $21c6
0021a2: 206e8022     movea.l    -$7fde(a6), a0
0021a6: 246800cc     movea.l    $cc(a0), a2
0021aa: 220a         move.l     a2, d1
0021ac: 206e8022     movea.l    -$7fde(a6), a0
0021b0: 202800cc     move.l     $cc(a0), d0
0021b4: 61004a3e     bsr.w      $6bf4
0021b8: 206e8022     movea.l    -$7fde(a6), a0
0021bc: 214000cc     move.l     d0, $cc(a0)
0021c0: 200a         move.l     a2, d0
0021c2: 6100010e     bsr.w      $22d2
0021c6: 200a         move.l     a2, d0
0021c8: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
0021ce: 4e5d         unlk       a5
0021d0: 4e75         rts        
0021d2: 4e550000     link.w     a5, #$0
0021d6: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0021da: 95ca         suba.l     a2, a2
0021dc: 206e8022     movea.l    -$7fde(a6), a0
0021e0: 4aa800c4     tst.l      $c4(a0)
0021e4: 6724         beq.b      $220a
0021e6: 206e8022     movea.l    -$7fde(a6), a0
0021ea: 246800c4     movea.l    $c4(a0), a2
0021ee: 220a         move.l     a2, d1
0021f0: 206e8022     movea.l    -$7fde(a6), a0
0021f4: 202800c4     move.l     $c4(a0), d0
0021f8: 610049fa     bsr.w      $6bf4
0021fc: 206e8022     movea.l    -$7fde(a6), a0
002200: 214000c4     move.l     d0, $c4(a0)
002204: 200a         move.l     a2, d0
002206: 610000e0     bsr.w      $22e8
00220a: 200a         move.l     a2, d0
00220c: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
002212: 4e5d         unlk       a5
002214: 4e75         rts        
002216: 4e550000     link.w     a5, #$0
00221a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
00221e: 95ca         suba.l     a2, a2
002220: 206e8022     movea.l    -$7fde(a6), a0
002224: 4aa800d0     tst.l      $d0(a0)
002228: 6724         beq.b      $224e
00222a: 206e8022     movea.l    -$7fde(a6), a0
00222e: 246800d0     movea.l    $d0(a0), a2
002232: 220a         move.l     a2, d1
002234: 206e8022     movea.l    -$7fde(a6), a0
002238: 202800d0     move.l     $d0(a0), d0
00223c: 610049b6     bsr.w      $6bf4
002240: 206e8022     movea.l    -$7fde(a6), a0
002244: 214000d0     move.l     d0, $d0(a0)
002248: 200a         move.l     a2, d0
00224a: 610002c0     bsr.w      $250c
00224e: 200a         move.l     a2, d0
002250: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
002256: 4e5d         unlk       a5
002258: 4e75         rts        
00225a: 4e550000     link.w     a5, #$0
00225e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002262: 95ca         suba.l     a2, a2
002264: 206e8022     movea.l    -$7fde(a6), a0
002268: 4aa800d4     tst.l      $d4(a0)
00226c: 6724         beq.b      $2292
00226e: 206e8022     movea.l    -$7fde(a6), a0
002272: 246800d4     movea.l    $d4(a0), a2
002276: 220a         move.l     a2, d1
002278: 206e8022     movea.l    -$7fde(a6), a0
00227c: 202800d4     move.l     $d4(a0), d0
002280: 61004972     bsr.w      $6bf4
002284: 206e8022     movea.l    -$7fde(a6), a0
002288: 214000d4     move.l     d0, $d4(a0)
00228c: 200a         move.l     a2, d0
00228e: 6100029e     bsr.w      $252e
002292: 200a         move.l     a2, d0
002294: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
00229a: 4e5d         unlk       a5
00229c: 4e75         rts        
00229e: 4e550000     link.w     a5, #$0
0022a2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0022a6: 48780068     pea.l      $68.w
0022aa: 7200         moveq      #$0, d1
0022ac: 202f0004     move.l     $4(a7), d0
0022b0: 61007caa     bsr.w      $9f5c
0022b4: 588f         addq.l     #$4, a7
0022b6: 2057         movea.l    (a7), a0
0022b8: 4228001e     clr.b      $1e(a0)
0022bc: 2057         movea.l    (a7), a0
0022be: 4228002e     clr.b      $2e(a0)
0022c2: 2057         movea.l    (a7), a0
0022c4: 4228002f     clr.b      $2f(a0)
0022c8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0022ce: 4e5d         unlk       a5
0022d0: 4e75         rts        
0022d2: 4e550000     link.w     a5, #$0
0022d6: 48e78080     movem.l    d0/a0, -(a7)
0022da: 2057         movea.l    (a7), a0
0022dc: 4290         clr.l      (a0)
0022de: 4ced0100fffc movem.l    -$4(a5), a0
0022e4: 4e5d         unlk       a5
0022e6: 4e75         rts        
0022e8: 4e550000     link.w     a5, #$0
0022ec: 48e7c080     movem.l    d0-d1/a0, -(a7)
0022f0: 48780074     pea.l      $74.w
0022f4: 7200         moveq      #$0, d1
0022f6: 202f0004     move.l     $4(a7), d0
0022fa: 61007c60     bsr.w      $9f5c
0022fe: 588f         addq.l     #$4, a7
002300: 2057         movea.l    (a7), a0
002302: 42280013     clr.b      $13(a0)
002306: 2057         movea.l    (a7), a0
002308: 42280044     clr.b      $44(a0)
00230c: 2057         movea.l    (a7), a0
00230e: 42280011     clr.b      $11(a0)
002312: 2057         movea.l    (a7), a0
002314: 42280012     clr.b      $12(a0)
002318: 2057         movea.l    (a7), a0
00231a: 42280044     clr.b      $44(a0)
00231e: 2057         movea.l    (a7), a0
002320: 117c0002006e move.b     #$2, $6e(a0)
002326: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00232c: 4e5d         unlk       a5
00232e: 4e75         rts        
002330: 4e550000     link.w     a5, #$0
002334: 48e7c080     movem.l    d0-d1/a0, -(a7)
002338: 4fefffd8     lea.l      -$28(a7), a7
00233c: 2d6f00288022 move.l     $28(a7), -$7fde(a6)
002342: 206e8022     movea.l    -$7fde(a6), a0
002346: 42a800bc     clr.l      $bc(a0)
00234a: 206e8022     movea.l    -$7fde(a6), a0
00234e: 42a800c0     clr.l      $c0(a0)
002352: 203c000000d8 move.l     #$d8, d0
002358: d0ae8022     add.l      -$7fde(a6), d0
00235c: 2f400024     move.l     d0, $24(a7)
002360: 222f002c     move.l     $2c(a7), d1
002364: 41ef0024     lea.l      $24(a7), a0
002368: 2008         move.l     a0, d0
00236a: 610001e4     bsr.w      $2550
00236e: 2f400020     move.l     d0, $20(a7)
002372: 206e8022     movea.l    -$7fde(a6), a0
002376: 216f002000c4 move.l     $20(a7), $c4(a0)
00237c: 2f6f0024001c move.l     $24(a7), $1c(a7)
002382: 222f003c     move.l     $3c(a7), d1
002386: 41ef001c     lea.l      $1c(a7), a0
00238a: 2008         move.l     a0, d0
00238c: 610001f8     bsr.w      $2586
002390: 2f400018     move.l     d0, $18(a7)
002394: 206e8022     movea.l    -$7fde(a6), a0
002398: 216f001800c8 move.l     $18(a7), $c8(a0)
00239e: 2f6f001c0014 move.l     $1c(a7), $14(a7)
0023a4: 222f0040     move.l     $40(a7), d1
0023a8: 41ef0014     lea.l      $14(a7), a0
0023ac: 2008         move.l     a0, d0
0023ae: 6100020c     bsr.w      $25bc
0023b2: 2f400010     move.l     d0, $10(a7)
0023b6: 206e8022     movea.l    -$7fde(a6), a0
0023ba: 216f001000cc move.l     $10(a7), $cc(a0)
0023c0: 2f6f0014000c move.l     $14(a7), $c(a7)
0023c6: 222f0044     move.l     $44(a7), d1
0023ca: 41ef000c     lea.l      $c(a7), a0
0023ce: 2008         move.l     a0, d0
0023d0: 61000220     bsr.w      $25f2
0023d4: 2f400008     move.l     d0, $8(a7)
0023d8: 206e8022     movea.l    -$7fde(a6), a0
0023dc: 216f000800d0 move.l     $8(a7), $d0(a0)
0023e2: 2f6f000c0004 move.l     $c(a7), $4(a7)
0023e8: 222f0048     move.l     $48(a7), d1
0023ec: 41ef0004     lea.l      $4(a7), a0
0023f0: 2008         move.l     a0, d0
0023f2: 61000234     bsr.w      $2628
0023f6: 2e80         move.l     d0, (a7)
0023f8: 206e8022     movea.l    -$7fde(a6), a0
0023fc: 215700d4     move.l     (a7), $d4(a0)
002400: 4fef0028     lea.l      $28(a7), a7
002404: 4ced0100fffc movem.l    -$4(a5), a0
00240a: 4e5d         unlk       a5
00240c: 4e75         rts        
00240e: 4e550000     link.w     a5, #$0
002412: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002416: 6038         bra.b      $2450
002418: 2457         movea.l    (a7), a2
00241a: 220a         move.l     a2, d1
00241c: 2017         move.l     (a7), d0
00241e: 610047d4     bsr.w      $6bf4
002422: 2e80         move.l     d0, (a7)
002424: 202a0030     move.l     $30(a2), d0
002428: 6134         bsr.b      $245e
00242a: 202a0060     move.l     $60(a2), d0
00242e: 610000a2     bsr.w      $24d2
002432: 202a0064     move.l     $64(a2), d0
002436: 6100009a     bsr.w      $24d2
00243a: 220a         move.l     a2, d1
00243c: 206e8022     movea.l    -$7fde(a6), a0
002440: 202800c8     move.l     $c8(a0), d0
002444: 61004720     bsr.w      $6b66
002448: 206e8022     movea.l    -$7fde(a6), a0
00244c: 214000c8     move.l     d0, $c8(a0)
002450: 4a97         tst.l      (a7)
002452: 66c4         bne.b      $2418
002454: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
00245a: 4e5d         unlk       a5
00245c: 4e75         rts        
00245e: 4e550000     link.w     a5, #$0
002462: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002466: 6022         bra.b      $248a
002468: 2457         movea.l    (a7), a2
00246a: 220a         move.l     a2, d1
00246c: 2017         move.l     (a7), d0
00246e: 61004784     bsr.w      $6bf4
002472: 2e80         move.l     d0, (a7)
002474: 220a         move.l     a2, d1
002476: 206e8022     movea.l    -$7fde(a6), a0
00247a: 202800cc     move.l     $cc(a0), d0
00247e: 610046e6     bsr.w      $6b66
002482: 206e8022     movea.l    -$7fde(a6), a0
002486: 214000cc     move.l     d0, $cc(a0)
00248a: 4a97         tst.l      (a7)
00248c: 66da         bne.b      $2468
00248e: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
002494: 4e5d         unlk       a5
002496: 4e75         rts        
002498: 4e550000     link.w     a5, #$0
00249c: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0024a0: 6022         bra.b      $24c4
0024a2: 2457         movea.l    (a7), a2
0024a4: 220a         move.l     a2, d1
0024a6: 2017         move.l     (a7), d0
0024a8: 6100474a     bsr.w      $6bf4
0024ac: 2e80         move.l     d0, (a7)
0024ae: 220a         move.l     a2, d1
0024b0: 206e8022     movea.l    -$7fde(a6), a0
0024b4: 202800d0     move.l     $d0(a0), d0
0024b8: 610046ac     bsr.w      $6b66
0024bc: 206e8022     movea.l    -$7fde(a6), a0
0024c0: 214000d0     move.l     d0, $d0(a0)
0024c4: 4a97         tst.l      (a7)
0024c6: 66da         bne.b      $24a2
0024c8: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
0024ce: 4e5d         unlk       a5
0024d0: 4e75         rts        
0024d2: 4e550000     link.w     a5, #$0
0024d6: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0024da: 6022         bra.b      $24fe
0024dc: 2457         movea.l    (a7), a2
0024de: 220a         move.l     a2, d1
0024e0: 2017         move.l     (a7), d0
0024e2: 61004710     bsr.w      $6bf4
0024e6: 2e80         move.l     d0, (a7)
0024e8: 220a         move.l     a2, d1
0024ea: 206e8022     movea.l    -$7fde(a6), a0
0024ee: 202800d4     move.l     $d4(a0), d0
0024f2: 61004672     bsr.w      $6b66
0024f6: 206e8022     movea.l    -$7fde(a6), a0
0024fa: 214000d4     move.l     d0, $d4(a0)
0024fe: 4a97         tst.l      (a7)
002500: 66da         bne.b      $24dc
002502: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
002508: 4e5d         unlk       a5
00250a: 4e75         rts        
00250c: 4e550000     link.w     a5, #$0
002510: 48e7c000     movem.l    d0-d1, -(a7)
002514: 48780004     pea.l      $4.w
002518: 7200         moveq      #$0, d1
00251a: 202f0004     move.l     $4(a7), d0
00251e: 61007a3c     bsr.w      $9f5c
002522: 588f         addq.l     #$4, a7
002524: 4ced0002fffc movem.l    -$4(a5), d1
00252a: 4e5d         unlk       a5
00252c: 4e75         rts        
00252e: 4e550000     link.w     a5, #$0
002532: 48e7c000     movem.l    d0-d1, -(a7)
002536: 48780040     pea.l      $40.w
00253a: 7200         moveq      #$0, d1
00253c: 202f0004     move.l     $4(a7), d0
002540: 61007a1a     bsr.w      $9f5c
002544: 588f         addq.l     #$4, a7
002546: 4ced0002fffc movem.l    -$4(a5), d1
00254c: 4e5d         unlk       a5
00254e: 4e75         rts        
002550: 4e550000     link.w     a5, #$0
002554: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002558: 95ca         suba.l     a2, a2
00255a: 7800         moveq      #$0, d4
00255c: 6016         bra.b      $2574
00255e: 2057         movea.l    (a7), a0
002560: 2210         move.l     (a0), d1
002562: 200a         move.l     a2, d0
002564: 61004600     bsr.w      $6b66
002568: 2440         movea.l    d0, a2
00256a: 2057         movea.l    (a7), a0
00256c: 069000000074 addi.l     #$74, (a0)
002572: 5284         addq.l     #$1, d4
002574: b8af0004     cmp.l      $4(a7), d4
002578: 6de4         blt.b      $255e
00257a: 200a         move.l     a2, d0
00257c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
002582: 4e5d         unlk       a5
002584: 4e75         rts        
002586: 4e550000     link.w     a5, #$0
00258a: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00258e: 95ca         suba.l     a2, a2
002590: 7800         moveq      #$0, d4
002592: 6016         bra.b      $25aa
002594: 2057         movea.l    (a7), a0
002596: 2210         move.l     (a0), d1
002598: 200a         move.l     a2, d0
00259a: 610045ca     bsr.w      $6b66
00259e: 2440         movea.l    d0, a2
0025a0: 2057         movea.l    (a7), a0
0025a2: 069000000068 addi.l     #$68, (a0)
0025a8: 5284         addq.l     #$1, d4
0025aa: b8af0004     cmp.l      $4(a7), d4
0025ae: 6de4         blt.b      $2594
0025b0: 200a         move.l     a2, d0
0025b2: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0025b8: 4e5d         unlk       a5
0025ba: 4e75         rts        
0025bc: 4e550000     link.w     a5, #$0
0025c0: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0025c4: 95ca         suba.l     a2, a2
0025c6: 7800         moveq      #$0, d4
0025c8: 6016         bra.b      $25e0
0025ca: 2057         movea.l    (a7), a0
0025cc: 2210         move.l     (a0), d1
0025ce: 200a         move.l     a2, d0
0025d0: 61004594     bsr.w      $6b66
0025d4: 2440         movea.l    d0, a2
0025d6: 2057         movea.l    (a7), a0
0025d8: 06900000000c addi.l     #$c, (a0)
0025de: 5284         addq.l     #$1, d4
0025e0: b8af0004     cmp.l      $4(a7), d4
0025e4: 6de4         blt.b      $25ca
0025e6: 200a         move.l     a2, d0
0025e8: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0025ee: 4e5d         unlk       a5
0025f0: 4e75         rts        
0025f2: 4e550000     link.w     a5, #$0
0025f6: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0025fa: 95ca         suba.l     a2, a2
0025fc: 7800         moveq      #$0, d4
0025fe: 6016         bra.b      $2616
002600: 2057         movea.l    (a7), a0
002602: 2210         move.l     (a0), d1
002604: 200a         move.l     a2, d0
002606: 6100455e     bsr.w      $6b66
00260a: 2440         movea.l    d0, a2
00260c: 2057         movea.l    (a7), a0
00260e: 069000000050 addi.l     #$50, (a0)
002614: 5284         addq.l     #$1, d4
002616: b8af0004     cmp.l      $4(a7), d4
00261a: 6de4         blt.b      $2600
00261c: 200a         move.l     a2, d0
00261e: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
002624: 4e5d         unlk       a5
002626: 4e75         rts        
002628: 4e550000     link.w     a5, #$0
00262c: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002630: 95ca         suba.l     a2, a2
002632: 7800         moveq      #$0, d4
002634: 6016         bra.b      $264c
002636: 2057         movea.l    (a7), a0
002638: 2210         move.l     (a0), d1
00263a: 200a         move.l     a2, d0
00263c: 61004528     bsr.w      $6b66
002640: 2440         movea.l    d0, a2
002642: 2057         movea.l    (a7), a0
002644: 069000000040 addi.l     #$40, (a0)
00264a: 5284         addq.l     #$1, d4
00264c: b8af0004     cmp.l      $4(a7), d4
002650: 6de4         blt.b      $2636
002652: 200a         move.l     a2, d0
002654: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00265a: 4e5d         unlk       a5
00265c: 4e75         rts        
00265e: 4e550000     link.w     a5, #$0
002662: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
002666: 2440         movea.l    d0, a2
002668: 2641         movea.l    d1, a3
00266a: 286f0030     movea.l    $30(a7), a4
00266e: 518f         subq.l     #$8, a7
002670: 3e3c03e7     move.w     #$3e7, d7
002674: 4297         clr.l      (a7)
002676: 2f4a0004     move.l     a2, $4(a7)
00267a: 7034         moveq      #$34, d0
00267c: d08b         add.l      a3, d0
00267e: 2200         move.l     d0, d1
002680: 200c         move.l     a4, d0
002682: 206e8ce6     movea.l    -$731a(a6), a0
002686: 4e90         jsr        (a0)
002688: 4a00         tst.b      d0
00268a: 6706         beq.b      $2692
00268c: 382b0028     move.w     $28(a3), d4
002690: 6060         bra.b      $26f2
002692: 382b002a     move.w     $2a(a3), d4
002696: 605a         bra.b      $26f2
002698: b7ef0004     cmpa.l     $4(a7), a3
00269c: 674c         beq.b      $26ea
00269e: 220c         move.l     a4, d1
0026a0: 202f0004     move.l     $4(a7), d0
0026a4: 61004228     bsr.w      $68ce
0026a8: 4a00         tst.b      d0
0026aa: 673e         beq.b      $26ea
0026ac: 7034         moveq      #$34, d0
0026ae: d0af0004     add.l      $4(a7), d0
0026b2: 2200         move.l     d0, d1
0026b4: 200c         move.l     a4, d0
0026b6: 206e8ce6     movea.l    -$731a(a6), a0
0026ba: 4e90         jsr        (a0)
0026bc: 4a00         tst.b      d0
0026be: 670a         beq.b      $26ca
0026c0: 206f0004     movea.l    $4(a7), a0
0026c4: 3a280028     move.w     $28(a0), d5
0026c8: 6008         bra.b      $26d2
0026ca: 206f0004     movea.l    $4(a7), a0
0026ce: 3a28002a     move.w     $2a(a0), d5
0026d2: 3005         move.w     d5, d0
0026d4: 9044         sub.w      d4, d0
0026d6: 3c00         move.w     d0, d6
0026d8: 4a46         tst.w      d6
0026da: 6e04         bgt.b      $26e0
0026dc: 06460168     addi.w     #$168, d6
0026e0: bc47         cmp.w      d7, d6
0026e2: 6c06         bge.b      $26ea
0026e4: 3e06         move.w     d6, d7
0026e6: 2eaf0004     move.l     $4(a7), (a7)
0026ea: 206f0004     movea.l    $4(a7), a0
0026ee: 2f500004     move.l     (a0), $4(a7)
0026f2: 4aaf0004     tst.l      $4(a7)
0026f6: 66a0         bne.b      $2698
0026f8: 2017         move.l     (a7), d0
0026fa: 508f         addq.l     #$8, a7
0026fc: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
002702: 4e5d         unlk       a5
002704: 4e75         rts        
002706: 4e550000     link.w     a5, #$0
00270a: 48e7ccf0     movem.l    d0-d1/d4-d5/a0-a3, -(a7)
00270e: 97cb         suba.l     a3, a3
002710: 222f0004     move.l     $4(a7), d1
002714: 2017         move.l     (a7), d0
002716: 61004262     bsr.w      $697a
00271a: 7201         moveq      #$1, d1
00271c: b280         cmp.l      d0, d1
00271e: 663a         bne.b      $275a
002720: 7034         moveq      #$34, d0
002722: d0af0004     add.l      $4(a7), d0
002726: 2200         move.l     d0, d1
002728: 7034         moveq      #$34, d0
00272a: d097         add.l      (a7), d0
00272c: 206e8ce6     movea.l    -$731a(a6), a0
002730: 4e90         jsr        (a0)
002732: 4a00         tst.b      d0
002734: 6616         bne.b      $274c
002736: 703c         moveq      #$3c, d0
002738: d0af0004     add.l      $4(a7), d0
00273c: 2200         move.l     d0, d1
00273e: 7034         moveq      #$34, d0
002740: d097         add.l      (a7), d0
002742: 206e8ce6     movea.l    -$731a(a6), a0
002746: 4e90         jsr        (a0)
002748: 4a00         tst.b      d0
00274a: 6704         beq.b      $2750
00274c: 7034         moveq      #$34, d0
00274e: 6002         bra.b      $2752
002750: 703c         moveq      #$3c, d0
002752: d097         add.l      (a7), d0
002754: 2640         movea.l    d0, a3
002756: 600000c0     bra.w      $2818
00275a: 206e8500     movea.l    -$7b00(a6), a0
00275e: 7002         moveq      #$2, d0
002760: b0a8004a     cmp.l      $4a(a0), d0
002764: 6d0c         blt.b      $2772
002766: 206e8500     movea.l    -$7b00(a6), a0
00276a: 2668000c     movea.l    $c(a0), a3
00276e: 600000a8     bra.w      $2818
002772: 206e8500     movea.l    -$7b00(a6), a0
002776: 24680020     movea.l    $20(a0), a2
00277a: 60000096     bra.w      $2812
00277e: 220a         move.l     a2, d1
002780: 2017         move.l     (a7), d0
002782: 61004186     bsr.w      $690a
002786: 4a00         tst.b      d0
002788: 67000086     beq.w      $2810
00278c: 206e8500     movea.l    -$7b00(a6), a0
002790: 226e8500     movea.l    -$7b00(a6), a1
002794: 2029004e     move.l     $4e(a1), d0
002798: b0a8004a     cmp.l      $4a(a0), d0
00279c: 6604         bne.b      $27a2
00279e: 7001         moveq      #$1, d0
0027a0: 6002         bra.b      $27a4
0027a2: 7000         moveq      #$0, d0
0027a4: 1800         move.b     d0, d4
0027a6: 4a04         tst.b      d4
0027a8: 661a         bne.b      $27c4
0027aa: 2057         movea.l    (a7), a0
0027ac: 4a28001e     tst.b      $1e(a0)
0027b0: 660e         bne.b      $27c0
0027b2: 2057         movea.l    (a7), a0
0027b4: 4a28001e     tst.b      $1e(a0)
0027b8: 660a         bne.b      $27c4
0027ba: 4a2a001e     tst.b      $1e(a2)
0027be: 6704         beq.b      $27c4
0027c0: 7001         moveq      #$1, d0
0027c2: 6002         bra.b      $27c6
0027c4: 7000         moveq      #$0, d0
0027c6: 1a00         move.b     d0, d5
0027c8: 4a04         tst.b      d4
0027ca: 6604         bne.b      $27d0
0027cc: 4a05         tst.b      d5
0027ce: 6740         beq.b      $2810
0027d0: 220a         move.l     a2, d1
0027d2: 2017         move.l     (a7), d0
0027d4: 610041a4     bsr.w      $697a
0027d8: 7201         moveq      #$1, d1
0027da: b280         cmp.l      d0, d1
0027dc: 6632         bne.b      $2810
0027de: 7034         moveq      #$34, d0
0027e0: d08a         add.l      a2, d0
0027e2: 2200         move.l     d0, d1
0027e4: 7034         moveq      #$34, d0
0027e6: d097         add.l      (a7), d0
0027e8: 206e8ce6     movea.l    -$731a(a6), a0
0027ec: 4e90         jsr        (a0)
0027ee: 4a00         tst.b      d0
0027f0: 6614         bne.b      $2806
0027f2: 703c         moveq      #$3c, d0
0027f4: d08a         add.l      a2, d0
0027f6: 2200         move.l     d0, d1
0027f8: 7034         moveq      #$34, d0
0027fa: d097         add.l      (a7), d0
0027fc: 206e8ce6     movea.l    -$731a(a6), a0
002800: 4e90         jsr        (a0)
002802: 4a00         tst.b      d0
002804: 6704         beq.b      $280a
002806: 7034         moveq      #$34, d0
002808: 6002         bra.b      $280c
00280a: 703c         moveq      #$3c, d0
00280c: d097         add.l      (a7), d0
00280e: 2640         movea.l    d0, a3
002810: 2452         movea.l    (a2), a2
002812: 200a         move.l     a2, d0
002814: 6600ff68     bne.w      $277e
002818: 200b         move.l     a3, d0
00281a: 4ced0f30ffe8 movem.l    -$18(a5), d4-d5/a0-a3
002820: 4e5d         unlk       a5
002822: 4e75         rts        
002824: 4e550000     link.w     a5, #$0
002828: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00282c: 97cb         suba.l     a3, a3
00282e: 2057         movea.l    (a7), a0
002830: 4a28001e     tst.b      $1e(a0)
002834: 6600008c     bne.w      $28c2
002838: 206e8500     movea.l    -$7b00(a6), a0
00283c: 0c2800150010 cmpi.b     #$15, $10(a0)
002842: 670c         beq.b      $2850
002844: 206e8500     movea.l    -$7b00(a6), a0
002848: 0c28000b0010 cmpi.b     #$b, $10(a0)
00284e: 663e         bne.b      $288e
002850: 206e8500     movea.l    -$7b00(a6), a0
002854: 24680020     movea.l    $20(a0), a2
002858: 601e         bra.b      $2878
00285a: b5d7         cmpa.l     (a7), a2
00285c: 6718         beq.b      $2876
00285e: 2217         move.l     (a7), d1
002860: 200a         move.l     a2, d0
002862: 61004116     bsr.w      $697a
002866: 7201         moveq      #$1, d1
002868: b280         cmp.l      d0, d1
00286a: 660a         bne.b      $2876
00286c: 2217         move.l     (a7), d1
00286e: 200a         move.l     a2, d0
002870: 6100fe94     bsr.w      $2706
002874: 2640         movea.l    d0, a3
002876: 2452         movea.l    (a2), a2
002878: 200a         move.l     a2, d0
00287a: 6704         beq.b      $2880
00287c: 200b         move.l     a3, d0
00287e: 67da         beq.b      $285a
002880: 200b         move.l     a3, d0
002882: 663e         bne.b      $28c2
002884: 206e8500     movea.l    -$7b00(a6), a0
002888: 2668000c     movea.l    $c(a0), a3
00288c: 6034         bra.b      $28c2
00288e: 206e8500     movea.l    -$7b00(a6), a0
002892: 24680020     movea.l    $20(a0), a2
002896: 6022         bra.b      $28ba
002898: b5d7         cmpa.l     (a7), a2
00289a: 671c         beq.b      $28b8
00289c: 4a2a001e     tst.b      $1e(a2)
0028a0: 6716         beq.b      $28b8
0028a2: 2217         move.l     (a7), d1
0028a4: 200a         move.l     a2, d0
0028a6: 61004062     bsr.w      $690a
0028aa: 4a00         tst.b      d0
0028ac: 670a         beq.b      $28b8
0028ae: 2217         move.l     (a7), d1
0028b0: 200a         move.l     a2, d0
0028b2: 6100fe52     bsr.w      $2706
0028b6: 2640         movea.l    d0, a3
0028b8: 2452         movea.l    (a2), a2
0028ba: 200a         move.l     a2, d0
0028bc: 6704         beq.b      $28c2
0028be: 200b         move.l     a3, d0
0028c0: 67d6         beq.b      $2898
0028c2: 200b         move.l     a3, d0
0028c4: 4ced0d02fff0 movem.l    -$10(a5), d1/a0/a2-a3
0028ca: 4e5d         unlk       a5
0028cc: 4e75         rts        
0028ce: 4e550000     link.w     a5, #$0
0028d2: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
0028d6: 206e8500     movea.l    -$7b00(a6), a0
0028da: 24680020     movea.l    $20(a0), a2
0028de: 6018         bra.b      $28f8
0028e0: 200a         move.l     a2, d0
0028e2: 6100ff40     bsr.w      $2824
0028e6: 2640         movea.l    d0, a3
0028e8: 200b         move.l     a3, d0
0028ea: 670a         beq.b      $28f6
0028ec: 25530044     move.l     (a3), $44(a2)
0028f0: 256b00040048 move.l     $4(a3), $48(a2)
0028f6: 2452         movea.l    (a2), a2
0028f8: 200a         move.l     a2, d0
0028fa: 66e4         bne.b      $28e0
0028fc: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
002902: 4e5d         unlk       a5
002904: 4e75         rts        
002906: 4e550000     link.w     a5, #$0
00290a: 48e7cea0     movem.l    d0-d1/d4-d6/a0/a2, -(a7)
00290e: 206e8504     movea.l    -$7afc(a6), a0
002912: 7001         moveq      #$1, d0
002914: b0a80018     cmp.l      $18(a0), d0
002918: 660a         bne.b      $2924
00291a: 206e8504     movea.l    -$7afc(a6), a0
00291e: 3a280028     move.w     $28(a0), d5
002922: 6008         bra.b      $292c
002924: 206e8504     movea.l    -$7afc(a6), a0
002928: 3a28002a     move.w     $2a(a0), d5
00292c: 206e8500     movea.l    -$7b00(a6), a0
002930: 24680020     movea.l    $20(a0), a2
002934: 6060         bra.b      $2996
002936: 4a2a001e     tst.b      $1e(a2)
00293a: 6650         bne.b      $298c
00293c: b5ee8504     cmpa.l     -$7afc(a6), a2
002940: 6744         beq.b      $2986
002942: 7034         moveq      #$34, d0
002944: d08a         add.l      a2, d0
002946: 2200         move.l     d0, d1
002948: 7044         moveq      #$44, d0
00294a: d08a         add.l      a2, d0
00294c: 206e8ce6     movea.l    -$731a(a6), a0
002950: 4e90         jsr        (a0)
002952: 4a00         tst.b      d0
002954: 6706         beq.b      $295c
002956: 3c2a0028     move.w     $28(a2), d6
00295a: 6004         bra.b      $2960
00295c: 3c2a002a     move.w     $2a(a2), d6
002960: 3005         move.w     d5, d0
002962: 48c0         ext.l      d0
002964: 3206         move.w     d6, d1
002966: 48c1         ext.l      d1
002968: 9280         sub.l      d0, d1
00296a: 0681000000b4 addi.l     #$b4, d1
002970: 4c7c180000000168 divs.l     #$168, d1
002978: 3800         move.w     d0, d4
00297a: 0c4400b4     cmpi.w     #$b4, d4
00297e: 6f10         ble.b      $2990
002980: 04440168     subi.w     #$168, d4
002984: 600a         bra.b      $2990
002986: 383c00b4     move.w     #$b4, d4
00298a: 6004         bra.b      $2990
00298c: 383c03e7     move.w     #$3e7, d4
002990: 3544002c     move.w     d4, $2c(a2)
002994: 2452         movea.l    (a2), a2
002996: 200a         move.l     a2, d0
002998: 669c         bne.b      $2936
00299a: 4ced0572ffe8 movem.l    -$18(a5), d1/d4-d6/a0/a2
0029a0: 4e5d         unlk       a5
0029a2: 4e75         rts        
0029a4: 4e550000     link.w     a5, #$0
0029a8: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0029ac: 7800         moveq      #$0, d4
0029ae: 222f0004     move.l     $4(a7), d1
0029b2: 2017         move.l     (a7), d0
0029b4: 6100fd50     bsr.w      $2706
0029b8: 2440         movea.l    d0, a2
0029ba: 2017         move.l     (a7), d0
0029bc: b0af0004     cmp.l      $4(a7), d0
0029c0: 6744         beq.b      $2a06
0029c2: 222f0004     move.l     $4(a7), d1
0029c6: 2017         move.l     (a7), d0
0029c8: 61003f40     bsr.w      $690a
0029cc: 4a00         tst.b      d0
0029ce: 6738         beq.b      $2a08
0029d0: 2057         movea.l    (a7), a0
0029d2: 4a28001e     tst.b      $1e(a0)
0029d6: 662e         bne.b      $2a06
0029d8: 206f0004     movea.l    $4(a7), a0
0029dc: 4a28001e     tst.b      $1e(a0)
0029e0: 6624         bne.b      $2a06
0029e2: 7034         moveq      #$34, d0
0029e4: d097         add.l      (a7), d0
0029e6: 2200         move.l     d0, d1
0029e8: 200a         move.l     a2, d0
0029ea: 206e8ce6     movea.l    -$731a(a6), a0
0029ee: 4e90         jsr        (a0)
0029f0: 4a00         tst.b      d0
0029f2: 6612         bne.b      $2a06
0029f4: 703c         moveq      #$3c, d0
0029f6: d097         add.l      (a7), d0
0029f8: 2200         move.l     d0, d1
0029fa: 200a         move.l     a2, d0
0029fc: 206e8ce6     movea.l    -$731a(a6), a0
002a00: 4e90         jsr        (a0)
002a02: 4a00         tst.b      d0
002a04: 6702         beq.b      $2a08
002a06: 7801         moveq      #$1, d4
002a08: 4a04         tst.b      d4
002a0a: 6718         beq.b      $2a24
002a0c: 4aaf001c     tst.l      $1c(a7)
002a10: 6712         beq.b      $2a24
002a12: 200a         move.l     a2, d0
002a14: 670e         beq.b      $2a24
002a16: 222f001c     move.l     $1c(a7), d1
002a1a: 200a         move.l     a2, d0
002a1c: 206e8ce6     movea.l    -$731a(a6), a0
002a20: 4e90         jsr        (a0)
002a22: 6002         bra.b      $2a26
002a24: 1004         move.b     d4, d0
002a26: 1800         move.b     d0, d4
002a28: 1004         move.b     d4, d0
002a2a: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
002a30: 4e5d         unlk       a5
002a32: 4e75         rts        
002a34: 4e550000     link.w     a5, #$0
002a38: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
002a3c: 7801         moveq      #$1, d4
002a3e: 7044         moveq      #$44, d0
002a40: d097         add.l      (a7), d0
002a42: 2200         move.l     d0, d1
002a44: 2017         move.l     (a7), d0
002a46: 610040b8     bsr.w      $6b00
002a4a: 2640         movea.l    d0, a3
002a4c: 206e8500     movea.l    -$7b00(a6), a0
002a50: 24680020     movea.l    $20(a0), a2
002a54: 602c         bra.b      $2a82
002a56: 4a2a001e     tst.b      $1e(a2)
002a5a: 6724         beq.b      $2a80
002a5c: 220b         move.l     a3, d1
002a5e: 7034         moveq      #$34, d0
002a60: d08a         add.l      a2, d0
002a62: 206e8ce6     movea.l    -$731a(a6), a0
002a66: 4e90         jsr        (a0)
002a68: 4a00         tst.b      d0
002a6a: 6702         beq.b      $2a6e
002a6c: 5284         addq.l     #$1, d4
002a6e: 220b         move.l     a3, d1
002a70: 703c         moveq      #$3c, d0
002a72: d08a         add.l      a2, d0
002a74: 206e8ce6     movea.l    -$731a(a6), a0
002a78: 4e90         jsr        (a0)
002a7a: 4a00         tst.b      d0
002a7c: 6702         beq.b      $2a80
002a7e: 5284         addq.l     #$1, d4
002a80: 2452         movea.l    (a2), a2
002a82: 200a         move.l     a2, d0
002a84: 66d0         bne.b      $2a56
002a86: 2004         move.l     d4, d0
002a88: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
002a8e: 4e5d         unlk       a5
002a90: 4e75         rts        
002a92: 4e550000     link.w     a5, #$0
002a96: 48e78ca0     movem.l    d0/d4-d5/a0/a2, -(a7)
002a9a: 7800         moveq      #$0, d4
002a9c: 7a00         moveq      #$0, d5
002a9e: 206e8500     movea.l    -$7b00(a6), a0
002aa2: 24680020     movea.l    $20(a0), a2
002aa6: 6020         bra.b      $2ac8
002aa8: 4a2a001e     tst.b      $1e(a2)
002aac: 6618         bne.b      $2ac6
002aae: 5284         addq.l     #$1, d4
002ab0: 200a         move.l     a2, d0
002ab2: 610003ca     bsr.w      $2e7e
002ab6: 4a00         tst.b      d0
002ab8: 670c         beq.b      $2ac6
002aba: 200a         move.l     a2, d0
002abc: 61000428     bsr.w      $2ee6
002ac0: 4a00         tst.b      d0
002ac2: 6602         bne.b      $2ac6
002ac4: 5285         addq.l     #$1, d5
002ac6: 2452         movea.l    (a2), a2
002ac8: 200a         move.l     a2, d0
002aca: 66dc         bne.b      $2aa8
002acc: 206e8500     movea.l    -$7b00(a6), a0
002ad0: 2144004e     move.l     d4, $4e(a0)
002ad4: 206e8500     movea.l    -$7b00(a6), a0
002ad8: 21450052     move.l     d5, $52(a0)
002adc: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
002ae2: 4e5d         unlk       a5
002ae4: 4e75         rts        
002ae6: 4e550000     link.w     a5, #$0
002aea: 48e7ceb8     movem.l    d0-d1/d4-d6/a0/a2-a4, -(a7)
002aee: 7800         moveq      #$0, d4
002af0: 7a00         moveq      #$0, d5
002af2: 206e8500     movea.l    -$7b00(a6), a0
002af6: 24680020     movea.l    $20(a0), a2
002afa: 206e8500     movea.l    -$7b00(a6), a0
002afe: 28680020     movea.l    $20(a0), a4
002b02: 206e8500     movea.l    -$7b00(a6), a0
002b06: 2a28004e     move.l     $4e(a0), d5
002b0a: 6004         bra.b      $2b10
002b0c: 2c0a         move.l     a2, d6
002b0e: 2452         movea.l    (a2), a2
002b10: 200a         move.l     a2, d0
002b12: 670a         beq.b      $2b1e
002b14: 4a2a001e     tst.b      $1e(a2)
002b18: 67f2         beq.b      $2b0c
002b1a: 6002         bra.b      $2b1e
002b1c: 2452         movea.l    (a2), a2
002b1e: 200a         move.l     a2, d0
002b20: 6706         beq.b      $2b28
002b22: 4a2a001e     tst.b      $1e(a2)
002b26: 66f4         bne.b      $2b1c
002b28: 200a         move.l     a2, d0
002b2a: 6712         beq.b      $2b3e
002b2c: 157c0009001e move.b     #$9, $1e(a2)
002b32: 5385         subq.l     #$1, d5
002b34: 206e8500     movea.l    -$7b00(a6), a0
002b38: 2145004e     move.l     d5, $4e(a0)
002b3c: 60de         bra.b      $2b1c
002b3e: 200c         move.l     a4, d0
002b40: 6754         beq.b      $2b96
002b42: 244c         movea.l    a4, a2
002b44: 206e8500     movea.l    -$7b00(a6), a0
002b48: 0c280001006e cmpi.b     #$1, $6e(a0)
002b4e: 661e         bne.b      $2b6e
002b50: 2652         movea.l    (a2), a3
002b52: 7800         moveq      #$0, d4
002b54: 600e         bra.b      $2b64
002b56: 254b0004     move.l     a3, $4(a2)
002b5a: 35440022     move.w     d4, $22(a2)
002b5e: 244b         movea.l    a3, a2
002b60: 2653         movea.l    (a3), a3
002b62: 5284         addq.l     #$1, d4
002b64: 2005         move.l     d5, d0
002b66: 5380         subq.l     #$1, d0
002b68: b084         cmp.l      d4, d0
002b6a: 6eea         bgt.b      $2b56
002b6c: 6024         bra.b      $2b92
002b6e: 2646         movea.l    d6, a3
002b70: 7800         moveq      #$0, d4
002b72: 6016         bra.b      $2b8a
002b74: 35440022     move.w     d4, $22(a2)
002b78: 254b0004     move.l     a3, $4(a2)
002b7c: 244b         movea.l    a3, a2
002b7e: 220b         move.l     a3, d1
002b80: 200c         move.l     a4, d0
002b82: 61004028     bsr.w      $6bac
002b86: 2640         movea.l    d0, a3
002b88: 5284         addq.l     #$1, d4
002b8a: 2005         move.l     d5, d0
002b8c: 5380         subq.l     #$1, d0
002b8e: b084         cmp.l      d4, d0
002b90: 6ee2         bgt.b      $2b74
002b92: 254c0004     move.l     a4, $4(a2)
002b96: 4ced1d72ffe0 movem.l    -$20(a5), d1/d4-d6/a0/a2-a4
002b9c: 4e5d         unlk       a5
002b9e: 4e75         rts        
002ba0: 4e550000     link.w     a5, #$0
002ba4: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
002ba8: 7800         moveq      #$0, d4
002baa: 2057         movea.l    (a7), a0
002bac: 4a28001e     tst.b      $1e(a0)
002bb0: 6632         bne.b      $2be4
002bb2: 7034         moveq      #$34, d0
002bb4: d097         add.l      (a7), d0
002bb6: 2200         move.l     d0, d1
002bb8: 7044         moveq      #$44, d0
002bba: d097         add.l      (a7), d0
002bbc: 206e8ce6     movea.l    -$731a(a6), a0
002bc0: 4e90         jsr        (a0)
002bc2: 4a00         tst.b      d0
002bc4: 6710         beq.b      $2bd6
002bc6: 2057         movea.l    (a7), a0
002bc8: 102f0007     move.b     $7(a7), d0
002bcc: b0280055     cmp.b      $55(a0), d0
002bd0: 6610         bne.b      $2be2
002bd2: 7801         moveq      #$1, d4
002bd4: 600e         bra.b      $2be4
002bd6: 2057         movea.l    (a7), a0
002bd8: 102f001b     move.b     $1b(a7), d0
002bdc: b0280055     cmp.b      $55(a0), d0
002be0: 67f0         beq.b      $2bd2
002be2: 7800         moveq      #$0, d4
002be4: 1004         move.b     d4, d0
002be6: 4ced0110fff8 movem.l    -$8(a5), d4/a0
002bec: 4e5d         unlk       a5
002bee: 4e75         rts        
002bf0: 4e550000     link.w     a5, #$0
002bf4: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002bf8: 518f         subq.l     #$8, a7
002bfa: 222f000c     move.l     $c(a7), d1
002bfe: 7034         moveq      #$34, d0
002c00: d0af0008     add.l      $8(a7), d0
002c04: 206e8ce6     movea.l    -$731a(a6), a0
002c08: 4e90         jsr        (a0)
002c0a: 4a00         tst.b      d0
002c0c: 670a         beq.b      $2c18
002c0e: 206f0008     movea.l    $8(a7), a0
002c12: 38280028     move.w     $28(a0), d4
002c16: 6008         bra.b      $2c20
002c18: 206f0008     movea.l    $8(a7), a0
002c1c: 3828002a     move.w     $2a(a0), d4
002c20: 4857         pea.l      (a7)
002c22: 48782710     pea.l      $2710.w
002c26: 7000         moveq      #$0, d0
002c28: 3004         move.w     d4, d0
002c2a: 7264         moveq      #$64, d1
002c2c: 4c010000     mulu.l     d1, d0
002c30: 2200         move.l     d0, d1
002c32: 202f0014     move.l     $14(a7), d0
002c36: 206e8cca     movea.l    -$7336(a6), a0
002c3a: 4e90         jsr        (a0)
002c3c: 206e8d5e     movea.l    -$72a2(a6), a0
002c40: 4e90         jsr        (a0)
002c42: 508f         addq.l     #$8, a7
002c44: 7008         moveq      #$8, d0
002c46: 610070c0     bsr.w      $9d08
002c4a: 2440         movea.l    d0, a2
002c4c: 200a         move.l     a2, d0
002c4e: 6614         bne.b      $2c64
002c50: 42a7         clr.l      -(a7)
002c52: 7205         moveq      #$5, d1
002c54: 203c00000099 move.l     #$99, d0
002c5a: 61005e74     bsr.w      $8ad0
002c5e: 588f         addq.l     #$4, a7
002c60: 61005e94     bsr.w      $8af6
002c64: 4852         pea.l      (a2)
002c66: 41ef0004     lea.l      $4(a7), a0
002c6a: 2208         move.l     a0, d1
002c6c: 202f0010     move.l     $10(a7), d0
002c70: 206e8d22     movea.l    -$72de(a6), a0
002c74: 4e90         jsr        (a0)
002c76: 588f         addq.l     #$4, a7
002c78: 200a         move.l     a2, d0
002c7a: 508f         addq.l     #$8, a7
002c7c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
002c82: 4e5d         unlk       a5
002c84: 4e75         rts        
002c86: 4e550000     link.w     a5, #$0
002c8a: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
002c8e: 518f         subq.l     #$8, a7
002c90: 7044         moveq      #$44, d0
002c92: d0af0008     add.l      $8(a7), d0
002c96: 2440         movea.l    d0, a2
002c98: 220a         move.l     a2, d1
002c9a: 202f0008     move.l     $8(a7), d0
002c9e: 6100ff50     bsr.w      $2bf0
002ca2: 2640         movea.l    d0, a3
002ca4: 7044         moveq      #$44, d0
002ca6: d0af000c     add.l      $c(a7), d0
002caa: 2f400004     move.l     d0, $4(a7)
002cae: 222f0004     move.l     $4(a7), d1
002cb2: 202f000c     move.l     $c(a7), d0
002cb6: 6100ff38     bsr.w      $2bf0
002cba: 2e80         move.l     d0, (a7)
002cbc: 7010         moveq      #$10, d0
002cbe: 61007048     bsr.w      $9d08
002cc2: 2840         movea.l    d0, a4
002cc4: 200c         move.l     a4, d0
002cc6: 6614         bne.b      $2cdc
002cc8: 42a7         clr.l      -(a7)
002cca: 7205         moveq      #$5, d1
002ccc: 203c00000099 move.l     #$99, d0
002cd2: 61005dfc     bsr.w      $8ad0
002cd6: 588f         addq.l     #$4, a7
002cd8: 61005e1c     bsr.w      $8af6
002cdc: 4854         pea.l      (a4)
002cde: 220a         move.l     a2, d1
002ce0: 200b         move.l     a3, d0
002ce2: 206e8cf2     movea.l    -$730e(a6), a0
002ce6: 4e90         jsr        (a0)
002ce8: 588f         addq.l     #$4, a7
002cea: 220c         move.l     a4, d1
002cec: 202f0004     move.l     $4(a7), d0
002cf0: 206e8d1a     movea.l    -$72e6(a6), a0
002cf4: 4e90         jsr        (a0)
002cf6: 4a80         tst.l      d0
002cf8: 6e0e         bgt.b      $2d08
002cfa: 220c         move.l     a4, d1
002cfc: 2017         move.l     (a7), d0
002cfe: 206e8d1a     movea.l    -$72e6(a6), a0
002d02: 4e90         jsr        (a0)
002d04: 4a80         tst.l      d0
002d06: 6f04         ble.b      $2d0c
002d08: 7801         moveq      #$1, d4
002d0a: 6002         bra.b      $2d0e
002d0c: 7800         moveq      #$0, d4
002d0e: 200c         move.l     a4, d0
002d10: 61007002     bsr.w      $9d14
002d14: 200b         move.l     a3, d0
002d16: 61006ffc     bsr.w      $9d14
002d1a: 2017         move.l     (a7), d0
002d1c: 61006ff6     bsr.w      $9d14
002d20: 1004         move.b     d4, d0
002d22: 508f         addq.l     #$8, a7
002d24: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
002d2a: 4e5d         unlk       a5
002d2c: 4e75         rts        
002d2e: 4e550000     link.w     a5, #$0
002d32: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002d36: 206e8500     movea.l    -$7b00(a6), a0
002d3a: 24680020     movea.l    $20(a0), a2
002d3e: 600000dc     bra.w      $2e1c
002d42: 4a2a001e     tst.b      $1e(a2)
002d46: 660000c2     bne.w      $2e0a
002d4a: 0c2a0001001f cmpi.b     #$1, $1f(a2)
002d50: 6626         bne.b      $2d78
002d52: 4aaa0008     tst.l      $8(a2)
002d56: 670a         beq.b      $2d62
002d58: 157c00080026 move.b     #$8, $26(a2)
002d5e: 600000ba     bra.w      $2e1a
002d62: 200a         move.l     a2, d0
002d64: 61000180     bsr.w      $2ee6
002d68: 4a00         tst.b      d0
002d6a: 67000096     beq.w      $2e02
002d6e: 157c00070026 move.b     #$7, $26(a2)
002d74: 600000a4     bra.w      $2e1a
002d78: 4aaa0008     tst.l      $8(a2)
002d7c: 6742         beq.b      $2dc0
002d7e: 206e8500     movea.l    -$7b00(a6), a0
002d82: 0c280002006e cmpi.b     #$2, $6e(a0)
002d88: 661c         bne.b      $2da6
002d8a: 48780002     pea.l      $2.w
002d8e: 7201         moveq      #$1, d1
002d90: 200a         move.l     a2, d0
002d92: 6100fe0c     bsr.w      $2ba0
002d96: 588f         addq.l     #$4, a7
002d98: 4a00         tst.b      d0
002d9a: 661c         bne.b      $2db8
002d9c: 157c00020026 move.b     #$2, $26(a2)
002da2: 60000076     bra.w      $2e1a
002da6: 48780002     pea.l      $2.w
002daa: 7201         moveq      #$1, d1
002dac: 200a         move.l     a2, d0
002dae: 6100fdf0     bsr.w      $2ba0
002db2: 588f         addq.l     #$4, a7
002db4: 4a00         tst.b      d0
002db6: 66e4         bne.b      $2d9c
002db8: 157c00030026 move.b     #$3, $26(a2)
002dbe: 605a         bra.b      $2e1a
002dc0: 200a         move.l     a2, d0
002dc2: 61000122     bsr.w      $2ee6
002dc6: 4a00         tst.b      d0
002dc8: 664a         bne.b      $2e14
002dca: 7200         moveq      #$0, d1
002dcc: 200a         move.l     a2, d0
002dce: 61000480     bsr.w      $3250
002dd2: 4a00         tst.b      d0
002dd4: 6706         beq.b      $2ddc
002dd6: 422a0026     clr.b      $26(a2)
002dda: 603e         bra.b      $2e1a
002ddc: 0c2a00010056 cmpi.b     #$1, $56(a2)
002de2: 660c         bne.b      $2df0
002de4: 206e8504     movea.l    -$7afc(a6), a0
002de8: 0c2800010056 cmpi.b     #$1, $56(a0)
002dee: 66e6         bne.b      $2dd6
002df0: 0c2a00030056 cmpi.b     #$3, $56(a2)
002df6: 660a         bne.b      $2e02
002df8: 206e8504     movea.l    -$7afc(a6), a0
002dfc: 4a280056     tst.b      $56(a0)
002e00: 67d4         beq.b      $2dd6
002e02: 157c00010026 move.b     #$1, $26(a2)
002e08: 6010         bra.b      $2e1a
002e0a: 200a         move.l     a2, d0
002e0c: 610000d8     bsr.w      $2ee6
002e10: 4a00         tst.b      d0
002e12: 6706         beq.b      $2e1a
002e14: 157c00060026 move.b     #$6, $26(a2)
002e1a: 2452         movea.l    (a2), a2
002e1c: 200a         move.l     a2, d0
002e1e: 6600ff22     bne.w      $2d42
002e22: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
002e28: 4e5d         unlk       a5
002e2a: 4e75         rts        
002e2c: 4e550000     link.w     a5, #$0
002e30: 48e780c0     movem.l    d0/a0-a1, -(a7)
002e34: 206e8504     movea.l    -$7afc(a6), a0
002e38: 226e8500     movea.l    -$7b00(a6), a1
002e3c: 136800210033 move.b     $21(a0), $33(a1)
002e42: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002e48: 4e5d         unlk       a5
002e4a: 4e75         rts        
002e4c: 4e550000     link.w     a5, #$0
002e50: 48e780c0     movem.l    d0/a0-a1, -(a7)
002e54: 4aae8508     tst.l      -$7af8(a6)
002e58: 6710         beq.b      $2e6a
002e5a: 206e8508     movea.l    -$7af8(a6), a0
002e5e: 226e8500     movea.l    -$7b00(a6), a1
002e62: 1368005e006f move.b     $5e(a0), $6f(a1)
002e68: 600a         bra.b      $2e74
002e6a: 206e8500     movea.l    -$7b00(a6), a0
002e6e: 117c0001006f move.b     #$1, $6f(a0)
002e74: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002e7a: 4e5d         unlk       a5
002e7c: 4e75         rts        
002e7e: 4e550000     link.w     a5, #$0
002e82: 48e78080     movem.l    d0/a0, -(a7)
002e86: 2057         movea.l    (a7), a0
002e88: 4a280057     tst.b      $57(a0)
002e8c: 671e         beq.b      $2eac
002e8e: 2057         movea.l    (a7), a0
002e90: 0c2800040057 cmpi.b     #$4, $57(a0)
002e96: 6714         beq.b      $2eac
002e98: 2057         movea.l    (a7), a0
002e9a: 0c2800050057 cmpi.b     #$5, $57(a0)
002ea0: 670a         beq.b      $2eac
002ea2: 2057         movea.l    (a7), a0
002ea4: 0c2800070057 cmpi.b     #$7, $57(a0)
002eaa: 6604         bne.b      $2eb0
002eac: 7001         moveq      #$1, d0
002eae: 6002         bra.b      $2eb2
002eb0: 7000         moveq      #$0, d0
002eb2: 4ced0100fffc movem.l    -$4(a5), a0
002eb8: 4e5d         unlk       a5
002eba: 4e75         rts        
002ebc: 4e550000     link.w     a5, #$0
002ec0: 48e78080     movem.l    d0/a0, -(a7)
002ec4: 2057         movea.l    (a7), a0
002ec6: 4aa80008     tst.l      $8(a0)
002eca: 660a         bne.b      $2ed6
002ecc: 2057         movea.l    (a7), a0
002ece: 0c2800070057 cmpi.b     #$7, $57(a0)
002ed4: 6604         bne.b      $2eda
002ed6: 7001         moveq      #$1, d0
002ed8: 6002         bra.b      $2edc
002eda: 7000         moveq      #$0, d0
002edc: 4ced0100fffc movem.l    -$4(a5), a0
002ee2: 4e5d         unlk       a5
002ee4: 4e75         rts        
002ee6: 4e550000     link.w     a5, #$0
002eea: 48e78080     movem.l    d0/a0, -(a7)
002eee: 2057         movea.l    (a7), a0
002ef0: 0c2800070057 cmpi.b     #$7, $57(a0)
002ef6: 6604         bne.b      $2efc
002ef8: 7001         moveq      #$1, d0
002efa: 6002         bra.b      $2efe
002efc: 7000         moveq      #$0, d0
002efe: 4ced0100fffc movem.l    -$4(a5), a0
002f04: 4e5d         unlk       a5
002f06: 4e75         rts        
002f08: 4e550000     link.w     a5, #$0
002f0c: 48e7c080     movem.l    d0-d1/a0, -(a7)
002f10: 2057         movea.l    (a7), a0
002f12: 216f00040008 move.l     $4(a7), $8(a0)
002f18: 206f0004     movea.l    $4(a7), a0
002f1c: 21570008     move.l     (a7), $8(a0)
002f20: 4ced0100fffc movem.l    -$4(a5), a0
002f26: 4e5d         unlk       a5
002f28: 4e75         rts        
002f2a: 4e550000     link.w     a5, #$0
002f2e: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
002f32: 7800         moveq      #$0, d4
002f34: 4a2f0003     tst.b      $3(a7)
002f38: 670e         beq.b      $2f48
002f3a: 206e8500     movea.l    -$7b00(a6), a0
002f3e: 0c2800010010 cmpi.b     #$1, $10(a0)
002f44: 66000146     bne.w      $308c
002f48: 246e8504     movea.l    -$7afc(a6), a2
002f4c: 6000012c     bra.w      $307a
002f50: 246a0004     movea.l    $4(a2), a2
002f54: 48780001     pea.l      $1.w
002f58: 7202         moveq      #$2, d1
002f5a: 200a         move.l     a2, d0
002f5c: 6100fc42     bsr.w      $2ba0
002f60: 588f         addq.l     #$4, a7
002f62: 4a00         tst.b      d0
002f64: 67000114     beq.w      $307a
002f68: 48780002     pea.l      $2.w
002f6c: 7201         moveq      #$1, d1
002f6e: 200b         move.l     a3, d0
002f70: 6100fc2e     bsr.w      $2ba0
002f74: 588f         addq.l     #$4, a7
002f76: 4a00         tst.b      d0
002f78: 67000100     beq.w      $307a
002f7c: 220b         move.l     a3, d1
002f7e: 200a         move.l     a2, d0
002f80: 6100fd04     bsr.w      $2c86
002f84: 4a00         tst.b      d0
002f86: 670000f2     beq.w      $307a
002f8a: 206e8500     movea.l    -$7b00(a6), a0
002f8e: 0c2800010010 cmpi.b     #$1, $10(a0)
002f94: 6664         bne.b      $2ffa
002f96: 220b         move.l     a3, d1
002f98: 200a         move.l     a2, d0
002f9a: 610000fa     bsr.w      $3096
002f9e: 4a00         tst.b      d0
002fa0: 660000d0     bne.w      $3072
002fa4: 200a         move.l     a2, d0
002fa6: 6100fed6     bsr.w      $2e7e
002faa: 4a00         tst.b      d0
002fac: 6716         beq.b      $2fc4
002fae: 200b         move.l     a3, d0
002fb0: 6100fecc     bsr.w      $2e7e
002fb4: 4a00         tst.b      d0
002fb6: 670c         beq.b      $2fc4
002fb8: 102a0057     move.b     $57(a2), d0
002fbc: b02b0057     cmp.b      $57(a3), d0
002fc0: 670000b0     beq.w      $3072
002fc4: 0c2a00020057 cmpi.b     #$2, $57(a2)
002fca: 660a         bne.b      $2fd6
002fcc: 0c2b00010057 cmpi.b     #$1, $57(a3)
002fd2: 6700009e     beq.w      $3072
002fd6: 0c2a00090057 cmpi.b     #$9, $57(a2)
002fdc: 660a         bne.b      $2fe8
002fde: 0c2b00080057 cmpi.b     #$8, $57(a3)
002fe4: 6700008c     beq.w      $3072
002fe8: 220b         move.l     a3, d1
002fea: 200a         move.l     a2, d0
002fec: 6100391c     bsr.w      $690a
002ff0: 4a00         tst.b      d0
002ff2: 67000086     beq.w      $307a
002ff6: 6000007a     bra.w      $3072
002ffa: 200a         move.l     a2, d0
002ffc: 6100fe80     bsr.w      $2e7e
003000: 4a00         tst.b      d0
003002: 670a         beq.b      $300e
003004: 200b         move.l     a3, d0
003006: 6100fe76     bsr.w      $2e7e
00300a: 4a00         tst.b      d0
00300c: 662a         bne.b      $3038
00300e: 0c2a00020057 cmpi.b     #$2, $57(a2)
003014: 6608         bne.b      $301e
003016: 0c2b00010057 cmpi.b     #$1, $57(a3)
00301c: 671a         beq.b      $3038
00301e: 0c2a00090057 cmpi.b     #$9, $57(a2)
003024: 6608         bne.b      $302e
003026: 0c2b00080057 cmpi.b     #$8, $57(a3)
00302c: 670a         beq.b      $3038
00302e: 220b         move.l     a3, d1
003030: 200a         move.l     a2, d0
003032: 6162         bsr.b      $3096
003034: 4a00         tst.b      d0
003036: 6742         beq.b      $307a
003038: 302b002c     move.w     $2c(a3), d0
00303c: 48c0         ext.l      d0
00303e: 322a002c     move.w     $2c(a2), d1
003042: 48c1         ext.l      d1
003044: 9280         sub.l      d0, d1
003046: 6c0c         bge.b      $3054
003048: 302a002c     move.w     $2c(a2), d0
00304c: 906b002c     sub.w      $2c(a3), d0
003050: 4440         neg.w      d0
003052: 6008         bra.b      $305c
003054: 302a002c     move.w     $2c(a2), d0
003058: 906b002c     sub.w      $2c(a3), d0
00305c: 3a00         move.w     d0, d5
00305e: 0c4500b4     cmpi.w     #$b4, d5
003062: 6f08         ble.b      $306c
003064: 303c0168     move.w     #$168, d0
003068: 9045         sub.w      d5, d0
00306a: 3a00         move.w     d0, d5
00306c: 0c450050     cmpi.w     #$50, d5
003070: 6c08         bge.b      $307a
003072: 220b         move.l     a3, d1
003074: 200a         move.l     a2, d0
003076: 6100fe90     bsr.w      $2f08
00307a: 264a         movea.l    a2, a3
00307c: 206e8500     movea.l    -$7b00(a6), a0
003080: 2004         move.l     d4, d0
003082: 5284         addq.l     #$1, d4
003084: b0a8004e     cmp.l      $4e(a0), d0
003088: 6d00fec6     blt.w      $2f50
00308c: 4ced0d32ffe8 movem.l    -$18(a5), d1/d4-d5/a0/a2-a3
003092: 4e5d         unlk       a5
003094: 4e75         rts        
003096: 4e550000     link.w     a5, #$0
00309a: 48e7cce0     movem.l    d0-d1/d4-d5/a0-a2, -(a7)
00309e: 7800         moveq      #$0, d4
0030a0: 206e8500     movea.l    -$7b00(a6), a0
0030a4: 24680028     movea.l    $28(a0), a2
0030a8: 206f0004     movea.l    $4(a7), a0
0030ac: 2257         movea.l    (a7), a1
0030ae: 2029000c     move.l     $c(a1), d0
0030b2: b0a8000c     cmp.l      $c(a0), d0
0030b6: 661e         bne.b      $30d6
0030b8: 2057         movea.l    (a7), a0
0030ba: 4aa8000c     tst.l      $c(a0)
0030be: 6704         beq.b      $30c4
0030c0: 7001         moveq      #$1, d0
0030c2: 6002         bra.b      $30c6
0030c4: 7000         moveq      #$0, d0
0030c6: 2200         move.l     d0, d1
0030c8: 202e8500     move.l     -$7b00(a6), d0
0030cc: 61001dd2     bsr.w      $4ea0
0030d0: 4a80         tst.l      d0
0030d2: 6702         beq.b      $30d6
0030d4: 7801         moveq      #$1, d4
0030d6: 1004         move.b     d4, d0
0030d8: 4ced0730ffec movem.l    -$14(a5), d4-d5/a0-a2
0030de: 4e5d         unlk       a5
0030e0: 4e75         rts        
0030e2: 4e550000     link.w     a5, #$0
0030e6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0030ea: 0c2f00010017 cmpi.b     #$1, $17(a7)
0030f0: 6654         bne.b      $3146
0030f2: 2057         movea.l    (a7), a0
0030f4: 0c2800020055 cmpi.b     #$2, $55(a0)
0030fa: 6616         bne.b      $3112
0030fc: 7034         moveq      #$34, d0
0030fe: d097         add.l      (a7), d0
003100: 2200         move.l     d0, d1
003102: 202f0004     move.l     $4(a7), d0
003106: 206e8ce6     movea.l    -$731a(a6), a0
00310a: 4e90         jsr        (a0)
00310c: 4a00         tst.b      d0
00310e: 66000072     bne.w      $3182
003112: 2057         movea.l    (a7), a0
003114: 0c2800010055 cmpi.b     #$1, $55(a0)
00311a: 6614         bne.b      $3130
00311c: 703c         moveq      #$3c, d0
00311e: d097         add.l      (a7), d0
003120: 2200         move.l     d0, d1
003122: 202f0004     move.l     $4(a7), d0
003126: 206e8ce6     movea.l    -$731a(a6), a0
00312a: 4e90         jsr        (a0)
00312c: 4a00         tst.b      d0
00312e: 6652         bne.b      $3182
003130: 2057         movea.l    (a7), a0
003132: 0c2800030055 cmpi.b     #$3, $55(a0)
003138: 6748         beq.b      $3182
00313a: 2057         movea.l    (a7), a0
00313c: 0c280002001f cmpi.b     #$2, $1f(a0)
003142: 673e         beq.b      $3182
003144: 6048         bra.b      $318e
003146: 2057         movea.l    (a7), a0
003148: 0c2800020055 cmpi.b     #$2, $55(a0)
00314e: 6614         bne.b      $3164
003150: 703c         moveq      #$3c, d0
003152: d097         add.l      (a7), d0
003154: 2200         move.l     d0, d1
003156: 202f0004     move.l     $4(a7), d0
00315a: 206e8ce6     movea.l    -$731a(a6), a0
00315e: 4e90         jsr        (a0)
003160: 4a00         tst.b      d0
003162: 661e         bne.b      $3182
003164: 2057         movea.l    (a7), a0
003166: 0c2800010055 cmpi.b     #$1, $55(a0)
00316c: 6618         bne.b      $3186
00316e: 7034         moveq      #$34, d0
003170: d097         add.l      (a7), d0
003172: 2200         move.l     d0, d1
003174: 202f0004     move.l     $4(a7), d0
003178: 206e8ce6     movea.l    -$731a(a6), a0
00317c: 4e90         jsr        (a0)
00317e: 4a00         tst.b      d0
003180: 6704         beq.b      $3186
003182: 7000         moveq      #$0, d0
003184: 600a         bra.b      $3190
003186: 2057         movea.l    (a7), a0
003188: 0c2800030055 cmpi.b     #$3, $55(a0)
00318e: 7001         moveq      #$1, d0
003190: 4ced0100fffc movem.l    -$4(a5), a0
003196: 4e5d         unlk       a5
003198: 4e75         rts        
00319a: 4e550000     link.w     a5, #$0
00319e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0031a2: 42a7         clr.l      -(a7)
0031a4: 222f0008     move.l     $8(a7), d1
0031a8: 202f0004     move.l     $4(a7), d0
0031ac: 6100f7f6     bsr.w      $29a4
0031b0: 588f         addq.l     #$4, a7
0031b2: 4a00         tst.b      d0
0031b4: 6700008e     beq.w      $3244
0031b8: 206f0004     movea.l    $4(a7), a0
0031bc: 0c280002001f cmpi.b     #$2, $1f(a0)
0031c2: 67000080     beq.w      $3244
0031c6: 2017         move.l     (a7), d0
0031c8: b0af0004     cmp.l      $4(a7), d0
0031cc: 6608         bne.b      $31d6
0031ce: 2057         movea.l    (a7), a0
0031d0: 4a280055     tst.b      $55(a0)
0031d4: 676a         beq.b      $3240
0031d6: 222f0004     move.l     $4(a7), d1
0031da: 2017         move.l     (a7), d0
0031dc: 6100f528     bsr.w      $2706
0031e0: 2440         movea.l    d0, a2
0031e2: 2057         movea.l    (a7), a0
0031e4: 4a28001e     tst.b      $1e(a0)
0031e8: 6630         bne.b      $321a
0031ea: 206f0004     movea.l    $4(a7), a0
0031ee: 4a28001e     tst.b      $1e(a0)
0031f2: 6626         bne.b      $321a
0031f4: 7044         moveq      #$44, d0
0031f6: d097         add.l      (a7), d0
0031f8: 2200         move.l     d0, d1
0031fa: 200a         move.l     a2, d0
0031fc: 206e8ce6     movea.l    -$731a(a6), a0
003200: 4e90         jsr        (a0)
003202: 4a00         tst.b      d0
003204: 673e         beq.b      $3244
003206: 7044         moveq      #$44, d0
003208: d0af0004     add.l      $4(a7), d0
00320c: 2200         move.l     d0, d1
00320e: 200a         move.l     a2, d0
003210: 206e8ce6     movea.l    -$731a(a6), a0
003214: 4e90         jsr        (a0)
003216: 4a00         tst.b      d0
003218: 672a         beq.b      $3244
00321a: 42a7         clr.l      -(a7)
00321c: 220a         move.l     a2, d1
00321e: 202f0004     move.l     $4(a7), d0
003222: 6100febe     bsr.w      $30e2
003226: 588f         addq.l     #$4, a7
003228: 4a00         tst.b      d0
00322a: 6718         beq.b      $3244
00322c: 48780001     pea.l      $1.w
003230: 220a         move.l     a2, d1
003232: 202f0008     move.l     $8(a7), d0
003236: 6100feaa     bsr.w      $30e2
00323a: 588f         addq.l     #$4, a7
00323c: 4a00         tst.b      d0
00323e: 6704         beq.b      $3244
003240: 7001         moveq      #$1, d0
003242: 6002         bra.b      $3246
003244: 7000         moveq      #$0, d0
003246: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00324c: 4e5d         unlk       a5
00324e: 4e75         rts        
003250: 4e550000     link.w     a5, #$0
003254: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
003258: 7e00         moveq      #$0, d7
00325a: 2017         move.l     (a7), d0
00325c: b0ae8508     cmp.l      -$7af8(a6), d0
003260: 6606         bne.b      $3268
003262: 7001         moveq      #$1, d0
003264: 60000220     bra.w      $3486
003268: 2057         movea.l    (a7), a0
00326a: 0c2800010056 cmpi.b     #$1, $56(a0)
003270: 660e         bne.b      $3280
003272: 206e8504     movea.l    -$7afc(a6), a0
003276: 0c2800010056 cmpi.b     #$1, $56(a0)
00327c: 66000088     bne.w      $3306
003280: 2057         movea.l    (a7), a0
003282: 0c2800030056 cmpi.b     #$3, $56(a0)
003288: 660c         bne.b      $3296
00328a: 206e8504     movea.l    -$7afc(a6), a0
00328e: 4a280056     tst.b      $56(a0)
003292: 67000072     beq.w      $3306
003296: 2057         movea.l    (a7), a0
003298: 0c2800020056 cmpi.b     #$2, $56(a0)
00329e: 660c         bne.b      $32ac
0032a0: 206e8504     movea.l    -$7afc(a6), a0
0032a4: 0c2800020056 cmpi.b     #$2, $56(a0)
0032aa: 665a         bne.b      $3306
0032ac: 2057         movea.l    (a7), a0
0032ae: 0c2800030056 cmpi.b     #$3, $56(a0)
0032b4: 660c         bne.b      $32c2
0032b6: 206e8500     movea.l    -$7b00(a6), a0
0032ba: 0c28000b0010 cmpi.b     #$b, $10(a0)
0032c0: 6744         beq.b      $3306
0032c2: 2057         movea.l    (a7), a0
0032c4: 0c2800040056 cmpi.b     #$4, $56(a0)
0032ca: 6714         beq.b      $32e0
0032cc: 2057         movea.l    (a7), a0
0032ce: 0c2800060056 cmpi.b     #$6, $56(a0)
0032d4: 670a         beq.b      $32e0
0032d6: 2057         movea.l    (a7), a0
0032d8: 0c2800050056 cmpi.b     #$5, $56(a0)
0032de: 660a         bne.b      $32ea
0032e0: 206e8504     movea.l    -$7afc(a6), a0
0032e4: 4a280056     tst.b      $56(a0)
0032e8: 671c         beq.b      $3306
0032ea: 2057         movea.l    (a7), a0
0032ec: 0c2800060059 cmpi.b     #$6, $59(a0)
0032f2: 6712         beq.b      $3306
0032f4: 2017         move.l     (a7), d0
0032f6: b0ae8504     cmp.l      -$7afc(a6), d0
0032fa: 6610         bne.b      $330c
0032fc: 2057         movea.l    (a7), a0
0032fe: 0c2800030055 cmpi.b     #$3, $55(a0)
003304: 6606         bne.b      $330c
003306: 7000         moveq      #$0, d0
003308: 6000017c     bra.w      $3486
00330c: 2057         movea.l    (a7), a0
00330e: 4a28001e     tst.b      $1e(a0)
003312: 66000170     bne.w      $3484
003316: 2017         move.l     (a7), d0
003318: b0ae8504     cmp.l      -$7afc(a6), d0
00331c: 6610         bne.b      $332e
00331e: 2217         move.l     (a7), d1
003320: 202e8504     move.l     -$7afc(a6), d0
003324: 6100fe74     bsr.w      $319a
003328: 4a00         tst.b      d0
00332a: 6702         beq.b      $332e
00332c: 7e01         moveq      #$1, d7
00332e: 95ca         suba.l     a2, a2
003330: 97cb         suba.l     a3, a3
003332: 222e8504     move.l     -$7afc(a6), d1
003336: 200a         move.l     a2, d0
003338: 6100371a     bsr.w      $6a54
00333c: 2440         movea.l    d0, a2
00333e: 60000082     bra.w      $33c2
003342: 286a0004     movea.l    $4(a2), a4
003346: 7c00         moveq      #$0, d6
003348: 206e8500     movea.l    -$7b00(a6), a0
00334c: 2a280020     move.l     $20(a0), d5
003350: 6050         bra.b      $33a2
003352: ba97         cmp.l      (a7), d5
003354: 6708         beq.b      $335e
003356: 2045         movea.l    d5, a0
003358: 4a28001e     tst.b      $1e(a0)
00335c: 6740         beq.b      $339e
00335e: 2205         move.l     d5, d1
003360: 200a         move.l     a2, d0
003362: 6100376e     bsr.w      $6ad2
003366: 4a00         tst.b      d0
003368: 6634         bne.b      $339e
00336a: 2205         move.l     d5, d1
00336c: 200b         move.l     a3, d0
00336e: 61003762     bsr.w      $6ad2
003372: 4a00         tst.b      d0
003374: 6706         beq.b      $337c
003376: baae8504     cmp.l      -$7afc(a6), d5
00337a: 6622         bne.b      $339e
00337c: 2205         move.l     d5, d1
00337e: 200c         move.l     a4, d0
003380: 6100fe18     bsr.w      $319a
003384: 4a00         tst.b      d0
003386: 6716         beq.b      $339e
003388: ba97         cmp.l      (a7), d5
00338a: 6604         bne.b      $3390
00338c: 7e01         moveq      #$1, d7
00338e: 6016         bra.b      $33a6
003390: 2205         move.l     d5, d1
003392: 200a         move.l     a2, d0
003394: 610036be     bsr.w      $6a54
003398: 2440         movea.l    d0, a2
00339a: 7c01         moveq      #$1, d6
00339c: 6008         bra.b      $33a6
00339e: 2045         movea.l    d5, a0
0033a0: 2a10         move.l     (a0), d5
0033a2: 4a85         tst.l      d5
0033a4: 66ac         bne.b      $3352
0033a6: 4a07         tst.b      d7
0033a8: 661e         bne.b      $33c8
0033aa: 4a06         tst.b      d6
0033ac: 6614         bne.b      $33c2
0033ae: 220c         move.l     a4, d1
0033b0: 200a         move.l     a2, d0
0033b2: 610036e2     bsr.w      $6a96
0033b6: 2440         movea.l    d0, a2
0033b8: 220c         move.l     a4, d1
0033ba: 200b         move.l     a3, d0
0033bc: 61003696     bsr.w      $6a54
0033c0: 2640         movea.l    d0, a3
0033c2: 200a         move.l     a2, d0
0033c4: 6600ff7c     bne.w      $3342
0033c8: 200a         move.l     a2, d0
0033ca: 61003664     bsr.w      $6a30
0033ce: 200b         move.l     a3, d0
0033d0: 6100365e     bsr.w      $6a30
0033d4: 0c2f00010007 cmpi.b     #$1, $7(a7)
0033da: 660000a8     bne.w      $3484
0033de: 48780001     pea.l      $1.w
0033e2: 7202         moveq      #$2, d1
0033e4: 202f0004     move.l     $4(a7), d0
0033e8: 6100f7b6     bsr.w      $2ba0
0033ec: 588f         addq.l     #$4, a7
0033ee: 4a00         tst.b      d0
0033f0: 6700007a     beq.w      $346c
0033f4: 2057         movea.l    (a7), a0
0033f6: 4aa80008     tst.l      $8(a0)
0033fa: 6600006c     bne.w      $3468
0033fe: 2017         move.l     (a7), d0
003400: b0ae8504     cmp.l      -$7afc(a6), d0
003404: 6762         beq.b      $3468
003406: 2057         movea.l    (a7), a0
003408: 4a280057     tst.b      $57(a0)
00340c: 675a         beq.b      $3468
00340e: 2057         movea.l    (a7), a0
003410: 0c2800010057 cmpi.b     #$1, $57(a0)
003416: 6750         beq.b      $3468
003418: 2057         movea.l    (a7), a0
00341a: 0c2800080057 cmpi.b     #$8, $57(a0)
003420: 6746         beq.b      $3468
003422: 2057         movea.l    (a7), a0
003424: 0c28000d0057 cmpi.b     #$d, $57(a0)
00342a: 673c         beq.b      $3468
00342c: 2017         move.l     (a7), d0
00342e: 6100fa4e     bsr.w      $2e7e
003432: 4a00         tst.b      d0
003434: 6632         bne.b      $3468
003436: 2057         movea.l    (a7), a0
003438: 0c2800020057 cmpi.b     #$2, $57(a0)
00343e: 6728         beq.b      $3468
003440: 2057         movea.l    (a7), a0
003442: 0c2800030057 cmpi.b     #$3, $57(a0)
003448: 671e         beq.b      $3468
00344a: 2057         movea.l    (a7), a0
00344c: 0c2800090057 cmpi.b     #$9, $57(a0)
003452: 6714         beq.b      $3468
003454: 2057         movea.l    (a7), a0
003456: 0c28000a0057 cmpi.b     #$a, $57(a0)
00345c: 670a         beq.b      $3468
00345e: 2017         move.l     (a7), d0
003460: 612e         bsr.b      $3490
003462: 0c000001     cmpi.b     #$1, d0
003466: 6604         bne.b      $346c
003468: 7e00         moveq      #$0, d7
00346a: 6018         bra.b      $3484
00346c: 4a07         tst.b      d7
00346e: 6614         bne.b      $3484
003470: 2057         movea.l    (a7), a0
003472: 4aa80008     tst.l      $8(a0)
003476: 660c         bne.b      $3484
003478: 2057         movea.l    (a7), a0
00347a: 0c280002001f cmpi.b     #$2, $1f(a0)
003480: 6702         beq.b      $3484
003482: 7e01         moveq      #$1, d7
003484: 1007         move.b     d7, d0
003486: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
00348c: 4e5d         unlk       a5
00348e: 4e75         rts        
003490: 4e550000     link.w     a5, #$0
003494: 48e78880     movem.l    d0/d4/a0, -(a7)
003498: 206e8500     movea.l    -$7b00(a6), a0
00349c: 7003         moveq      #$3, d0
00349e: b0a8004a     cmp.l      $4a(a0), d0
0034a2: 6622         bne.b      $34c6
0034a4: 2057         movea.l    (a7), a0
0034a6: 3828002c     move.w     $2c(a0), d4
0034aa: 4a44         tst.w      d4
0034ac: 6c08         bge.b      $34b6
0034ae: 3004         move.w     d4, d0
0034b0: 48c0         ext.l      d0
0034b2: 4480         neg.l      d0
0034b4: 6004         bra.b      $34ba
0034b6: 3004         move.w     d4, d0
0034b8: 48c0         ext.l      d0
0034ba: 0c8000000082 cmpi.l     #$82, d0
0034c0: 6f04         ble.b      $34c6
0034c2: 7001         moveq      #$1, d0
0034c4: 6002         bra.b      $34c8
0034c6: 7000         moveq      #$0, d0
0034c8: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0034ce: 4e5d         unlk       a5
0034d0: 4e75         rts        
0034d2: 4e550000     link.w     a5, #$0
0034d6: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0034da: 7800         moveq      #$0, d4
0034dc: 206e8500     movea.l    -$7b00(a6), a0
0034e0: 24680020     movea.l    $20(a0), a2
0034e4: 6022         bra.b      $3508
0034e6: 7000         moveq      #$0, d0
0034e8: 102f0003     move.b     $3(a7), d0
0034ec: 2200         move.l     d0, d1
0034ee: 200a         move.l     a2, d0
0034f0: 6100fd5e     bsr.w      $3250
0034f4: 4a00         tst.b      d0
0034f6: 670a         beq.b      $3502
0034f8: 157c00010020 move.b     #$1, $20(a2)
0034fe: 5284         addq.l     #$1, d4
003500: 6004         bra.b      $3506
003502: 422a0020     clr.b      $20(a2)
003506: 2452         movea.l    (a2), a2
003508: 200a         move.l     a2, d0
00350a: 66da         bne.b      $34e6
00350c: 206e8500     movea.l    -$7b00(a6), a0
003510: 21440066     move.l     d4, $66(a0)
003514: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
00351a: 4e5d         unlk       a5
00351c: 4e75         rts        
00351e: 4e550000     link.w     a5, #$0
003522: 48e78ca0     movem.l    d0/d4-d5/a0/a2, -(a7)
003526: 518f         subq.l     #$8, a7
003528: 7800         moveq      #$0, d4
00352a: 7a00         moveq      #$0, d5
00352c: 42af0004     clr.l      $4(a7)
003530: 4297         clr.l      (a7)
003532: 246e8504     movea.l    -$7afc(a6), a2
003536: 6046         bra.b      $357e
003538: 246a0004     movea.l    $4(a2), a2
00353c: 4a2a0020     tst.b      $20(a2)
003540: 6738         beq.b      $357a
003542: 202e8500     move.l     -$7b00(a6), d0
003546: 610030c2     bsr.w      $660a
00354a: 4a00         tst.b      d0
00354c: 6724         beq.b      $3572
00354e: 200a         move.l     a2, d0
003550: 6100258e     bsr.w      $5ae0
003554: 0c2a0016002f cmpi.b     #$16, $2f(a2)
00355a: 660a         bne.b      $3566
00355c: 5297         addq.l     #$1, (a7)
00355e: 356f00020024 move.w     $2(a7), $24(a2)
003564: 6018         bra.b      $357e
003566: 52af0004     addq.l     #$1, $4(a7)
00356a: 356f00060024 move.w     $6(a7), $24(a2)
003570: 600c         bra.b      $357e
003572: 5285         addq.l     #$1, d5
003574: 35450024     move.w     d5, $24(a2)
003578: 6004         bra.b      $357e
00357a: 426a0024     clr.w      $24(a2)
00357e: 206e8500     movea.l    -$7b00(a6), a0
003582: 2004         move.l     d4, d0
003584: 5284         addq.l     #$1, d4
003586: b0a8004e     cmp.l      $4e(a0), d0
00358a: 6dac         blt.b      $3538
00358c: 508f         addq.l     #$8, a7
00358e: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
003594: 4e5d         unlk       a5
003596: 4e75         rts        
003598: 4e550000     link.w     a5, #$0
00359c: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
0035a0: 2440         movea.l    d0, a2
0035a2: 7800         moveq      #$0, d4
0035a4: 7a00         moveq      #$0, d5
0035a6: 266e8504     movea.l    -$7afc(a6), a3
0035aa: 601e         bra.b      $35ca
0035ac: 266b0004     movea.l    $4(a3), a3
0035b0: 4a2b0055     tst.b      $55(a3)
0035b4: 6712         beq.b      $35c8
0035b6: 48780002     pea.l      $2.w
0035ba: 7201         moveq      #$1, d1
0035bc: 200b         move.l     a3, d0
0035be: 6100f5e0     bsr.w      $2ba0
0035c2: 588f         addq.l     #$4, a7
0035c4: 4a00         tst.b      d0
0035c6: 6702         beq.b      $35ca
0035c8: 5285         addq.l     #$1, d5
0035ca: b7ca         cmpa.l     a2, a3
0035cc: 670e         beq.b      $35dc
0035ce: 206e8500     movea.l    -$7b00(a6), a0
0035d2: 2004         move.l     d4, d0
0035d4: 5284         addq.l     #$1, d4
0035d6: b0a8004e     cmp.l      $4e(a0), d0
0035da: 6dd0         blt.b      $35ac
0035dc: 2005         move.l     d5, d0
0035de: 4ced0d32ffe8 movem.l    -$18(a5), d1/d4-d5/a0/a2-a3
0035e4: 4e5d         unlk       a5
0035e6: 4e75         rts        
0035e8: 4e550000     link.w     a5, #$0
0035ec: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
0035f0: 7800         moveq      #$0, d4
0035f2: 7044         moveq      #$44, d0
0035f4: d0ae8504     add.l      -$7afc(a6), d0
0035f8: 2440         movea.l    d0, a2
0035fa: 2217         move.l     (a7), d1
0035fc: 200a         move.l     a2, d0
0035fe: 206e8ce6     movea.l    -$731a(a6), a0
003602: 4e90         jsr        (a0)
003604: 4a00         tst.b      d0
003606: 6704         beq.b      $360c
003608: 7800         moveq      #$0, d4
00360a: 605a         bra.b      $3666
00360c: 220a         move.l     a2, d1
00360e: 202e8504     move.l     -$7afc(a6), d0
003612: 6100f5dc     bsr.w      $2bf0
003616: 2640         movea.l    d0, a3
003618: 7010         moveq      #$10, d0
00361a: 610066ec     bsr.w      $9d08
00361e: 2840         movea.l    d0, a4
003620: 200c         move.l     a4, d0
003622: 6614         bne.b      $3638
003624: 42a7         clr.l      -(a7)
003626: 7205         moveq      #$5, d1
003628: 203c00000099 move.l     #$99, d0
00362e: 610054a0     bsr.w      $8ad0
003632: 588f         addq.l     #$4, a7
003634: 610054c0     bsr.w      $8af6
003638: 4854         pea.l      (a4)
00363a: 220a         move.l     a2, d1
00363c: 200b         move.l     a3, d0
00363e: 206e8cf2     movea.l    -$730e(a6), a0
003642: 4e90         jsr        (a0)
003644: 588f         addq.l     #$4, a7
003646: 220c         move.l     a4, d1
003648: 2017         move.l     (a7), d0
00364a: 206e8d12     movea.l    -$72ee(a6), a0
00364e: 4e90         jsr        (a0)
003650: 4c7c080000000064 divs.l     #$64, d0
003658: 2800         move.l     d0, d4
00365a: 200c         move.l     a4, d0
00365c: 610066b6     bsr.w      $9d14
003660: 200b         move.l     a3, d0
003662: 610066b0     bsr.w      $9d14
003666: 2004         move.l     d4, d0
003668: 4ced1d12ffe8 movem.l    -$18(a5), d1/d4/a0/a2-a4
00366e: 4e5d         unlk       a5
003670: 4e75         rts        
003672: 4e550000     link.w     a5, #$0
003676: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
00367a: 7010         moveq      #$10, d0
00367c: 6100668a     bsr.w      $9d08
003680: 2440         movea.l    d0, a2
003682: 200a         move.l     a2, d0
003684: 6614         bne.b      $369a
003686: 42a7         clr.l      -(a7)
003688: 7205         moveq      #$5, d1
00368a: 203c00000099 move.l     #$99, d0
003690: 6100543e     bsr.w      $8ad0
003694: 588f         addq.l     #$4, a7
003696: 6100545e     bsr.w      $8af6
00369a: 7044         moveq      #$44, d0
00369c: d097         add.l      (a7), d0
00369e: 2840         movea.l    d0, a4
0036a0: 220c         move.l     a4, d1
0036a2: 2017         move.l     (a7), d0
0036a4: 6100f54a     bsr.w      $2bf0
0036a8: 2640         movea.l    d0, a3
0036aa: 4852         pea.l      (a2)
0036ac: 220c         move.l     a4, d1
0036ae: 200b         move.l     a3, d0
0036b0: 206e8cf2     movea.l    -$730e(a6), a0
0036b4: 4e90         jsr        (a0)
0036b6: 588f         addq.l     #$4, a7
0036b8: 200b         move.l     a3, d0
0036ba: 61006658     bsr.w      $9d14
0036be: 200a         move.l     a2, d0
0036c0: 4ced1d02ffec movem.l    -$14(a5), d1/a0/a2-a4
0036c6: 4e5d         unlk       a5
0036c8: 4e75         rts        
0036ca: 4e550000     link.w     a5, #$0
0036ce: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0036d2: 4fefffe8     lea.l      -$18(a7), a7
0036d6: 202e8504     move.l     -$7afc(a6), d0
0036da: 6196         bsr.b      $3672
0036dc: 2f400014     move.l     d0, $14(a7)
0036e0: 202f0018     move.l     $18(a7), d0
0036e4: 618c         bsr.b      $3672
0036e6: 2f400010     move.l     d0, $10(a7)
0036ea: 486f0008     pea.l      $8(a7)
0036ee: 222f0014     move.l     $14(a7), d1
0036f2: 202f0018     move.l     $18(a7), d0
0036f6: 206e8dba     movea.l    -$7246(a6), a0
0036fa: 4e90         jsr        (a0)
0036fc: 588f         addq.l     #$4, a7
0036fe: 4a00         tst.b      d0
003700: 6746         beq.b      $3748
003702: 7044         moveq      #$44, d0
003704: d0af0018     add.l      $18(a7), d0
003708: 2640         movea.l    d0, a3
00370a: 220b         move.l     a3, d1
00370c: 202f0018     move.l     $18(a7), d0
003710: 6100f4de     bsr.w      $2bf0
003714: 2440         movea.l    d0, a2
003716: 4857         pea.l      (a7)
003718: 222f0018     move.l     $18(a7), d1
00371c: 200a         move.l     a2, d0
00371e: 206e8d16     movea.l    -$72ea(a6), a0
003722: 4e90         jsr        (a0)
003724: 588f         addq.l     #$4, a7
003726: 41d7         lea.l      (a7), a0
003728: 2208         move.l     a0, d1
00372a: 41ef0008     lea.l      $8(a7), a0
00372e: 2008         move.l     a0, d0
003730: 206e8ce2     movea.l    -$731e(a6), a0
003734: 4e90         jsr        (a0)
003736: 4c7c000000000064 divu.l     #$64, d0
00373e: 2800         move.l     d0, d4
003740: 200a         move.l     a2, d0
003742: 610065d0     bsr.w      $9d14
003746: 6002         bra.b      $374a
003748: 783d         moveq      #$3d, d4
00374a: 202f0014     move.l     $14(a7), d0
00374e: 610065c4     bsr.w      $9d14
003752: 202f0010     move.l     $10(a7), d0
003756: 610065bc     bsr.w      $9d14
00375a: 2004         move.l     d4, d0
00375c: 4fef0018     lea.l      $18(a7), a7
003760: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
003766: 4e5d         unlk       a5
003768: 4e75         rts        
00376a: 4e550000     link.w     a5, #$0
00376e: 48e7cfb0     movem.l    d0-d1/d4-d7/a0/a2-a3, -(a7)
003772: 4feffff4     lea.l      -$c(a7), a7
003776: 42af0008     clr.l      $8(a7)
00377a: 7800         moveq      #$0, d4
00377c: 246e8504     movea.l    -$7afc(a6), a2
003780: 60000138     bra.w      $38ba
003784: 2452         movea.l    (a2), a2
003786: 206e8500     movea.l    -$7b00(a6), a0
00378a: 0c2800010010 cmpi.b     #$1, $10(a0)
003790: 6626         bne.b      $37b8
003792: 202e8500     move.l     -$7b00(a6), d0
003796: 61002e72     bsr.w      $660a
00379a: 4a00         tst.b      d0
00379c: 6600011c     bne.w      $38ba
0037a0: 206e8500     movea.l    -$7b00(a6), a0
0037a4: 0c280002006e cmpi.b     #$2, $6e(a0)
0037aa: 66000082     bne.w      $382e
0037ae: 157c0016002f move.b     #$16, $2f(a2)
0037b4: 60000104     bra.w      $38ba
0037b8: 7044         moveq      #$44, d0
0037ba: d08a         add.l      a2, d0
0037bc: 6100fe2a     bsr.w      $35e8
0037c0: 2a00         move.l     d0, d5
0037c2: 306a002c     movea.w    $2c(a2), a0
0037c6: 2e08         move.l     a0, d7
0037c8: 4a85         tst.l      d5
0037ca: 6c06         bge.b      $37d2
0037cc: 2005         move.l     d5, d0
0037ce: 4480         neg.l      d0
0037d0: 6002         bra.b      $37d4
0037d2: 2005         move.l     d5, d0
0037d4: 7202         moveq      #$2, d1
0037d6: b280         cmp.l      d0, d1
0037d8: 6d68         blt.b      $3842
0037da: 4a87         tst.l      d7
0037dc: 6c06         bge.b      $37e4
0037de: 2007         move.l     d7, d0
0037e0: 4480         neg.l      d0
0037e2: 6002         bra.b      $37e6
0037e4: 2007         move.l     d7, d0
0037e6: 720a         moveq      #$a, d1
0037e8: b280         cmp.l      d0, d1
0037ea: 6d2e         blt.b      $381a
0037ec: 157c0021002f move.b     #$21, $2f(a2)
0037f2: 4aaf0008     tst.l      $8(a7)
0037f6: 6608         bne.b      $3800
0037f8: 2f4a0008     move.l     a2, $8(a7)
0037fc: 600000bc     bra.w      $38ba
003800: 206f0008     movea.l    $8(a7), a0
003804: 4a68002c     tst.w      $2c(a0)
003808: 6c0a         bge.b      $3814
00380a: 206f0008     movea.l    $8(a7), a0
00380e: 117c000b002f move.b     #$b, $2f(a0)
003814: 4a6a002c     tst.w      $2c(a2)
003818: 6020         bra.b      $383a
00381a: 0c87000000b4 cmpi.l     #$b4, d7
003820: 6608         bne.b      $382a
003822: 422a002f     clr.b      $2f(a2)
003826: 60000092     bra.w      $38ba
00382a: 4a87         tst.l      d7
00382c: 6c0a         bge.b      $3838
00382e: 157c000b002f move.b     #$b, $2f(a2)
003834: 60000084     bra.w      $38ba
003838: 4a87         tst.l      d7
00383a: 6f00007e     ble.w      $38ba
00383e: 6000ff6e     bra.w      $37ae
003842: 4a85         tst.l      d5
003844: 6c04         bge.b      $384a
003846: 700b         moveq      #$b, d0
003848: 6002         bra.b      $384c
00384a: 7016         moveq      #$16, d0
00384c: 1f400003     move.b     d0, $3(a7)
003850: 4a87         tst.l      d7
003852: 6c04         bge.b      $3858
003854: 700b         moveq      #$b, d0
003856: 6002         bra.b      $385a
003858: 7016         moveq      #$16, d0
00385a: 1f400002     move.b     d0, $2(a7)
00385e: 4a87         tst.l      d7
003860: 670a         beq.b      $386c
003862: 102f0003     move.b     $3(a7), d0
003866: b02f0002     cmp.b      $2(a7), d0
00386a: 6608         bne.b      $3874
00386c: 156f0003002f move.b     $3(a7), $2f(a2)
003872: 6046         bra.b      $38ba
003874: 7044         moveq      #$44, d0
003876: d08a         add.l      a2, d0
003878: 2200         move.l     d0, d1
00387a: 200a         move.l     a2, d0
00387c: 61003282     bsr.w      $6b00
003880: 6100fd66     bsr.w      $35e8
003884: 2c00         move.l     d0, d6
003886: 4a86         tst.l      d6
003888: 6c04         bge.b      $388e
00388a: 700b         moveq      #$b, d0
00388c: 6002         bra.b      $3890
00388e: 7016         moveq      #$16, d0
003890: 1f400001     move.b     d0, $1(a7)
003894: 4a86         tst.l      d6
003896: 67d4         beq.b      $386c
003898: 102f0001     move.b     $1(a7), d0
00389c: b02f0003     cmp.b      $3(a7), d0
0038a0: 67ca         beq.b      $386c
0038a2: 200a         move.l     a2, d0
0038a4: 6100fe24     bsr.w      $36ca
0038a8: 2f400004     move.l     d0, $4(a7)
0038ac: 703c         moveq      #$3c, d0
0038ae: b0af0004     cmp.l      $4(a7), d0
0038b2: 6db8         blt.b      $386c
0038b4: 156f0001002f move.b     $1(a7), $2f(a2)
0038ba: 206e8500     movea.l    -$7b00(a6), a0
0038be: 2028004e     move.l     $4e(a0), d0
0038c2: 5380         subq.l     #$1, d0
0038c4: 2204         move.l     d4, d1
0038c6: 5284         addq.l     #$1, d4
0038c8: b081         cmp.l      d1, d0
0038ca: 6e00feb8     bgt.w      $3784
0038ce: 246e8504     movea.l    -$7afc(a6), a2
0038d2: 4a2a0055     tst.b      $55(a2)
0038d6: 6608         bne.b      $38e0
0038d8: 157c002c002f move.b     #$2c, $2f(a2)
0038de: 600e         bra.b      $38ee
0038e0: 266a0008     movea.l    $8(a2), a3
0038e4: 200b         move.l     a3, d0
0038e6: 6706         beq.b      $38ee
0038e8: 177c002c002f move.b     #$2c, $2f(a3)
0038ee: 61001cb6     bsr.w      $55a6
0038f2: 4a00         tst.b      d0
0038f4: 6706         beq.b      $38fc
0038f6: 61001d06     bsr.w      $55fe
0038fa: 600c         bra.b      $3908
0038fc: 61001b82     bsr.w      $5480
003900: 4a00         tst.b      d0
003902: 6704         beq.b      $3908
003904: 61001bfc     bsr.w      $5502
003908: 4fef000c     lea.l      $c(a7), a7
00390c: 4ced0df2ffe0 movem.l    -$20(a5), d1/d4-d7/a0/a2-a3
003912: 4e5d         unlk       a5
003914: 4e75         rts        
003916: 4e550000     link.w     a5, #$0
00391a: 48e78fa0     movem.l    d0/d4-d7/a0/a2, -(a7)
00391e: 4feffff2     lea.l      -$e(a7), a7
003922: 7800         moveq      #$0, d4
003924: 7a00         moveq      #$0, d5
003926: 7c00         moveq      #$0, d6
003928: 7e00         moveq      #$0, d7
00392a: 42af000a     clr.l      $a(a7)
00392e: 42af0002     clr.l      $2(a7)
003932: 246e8504     movea.l    -$7afc(a6), a2
003936: 604e         bra.b      $3986
003938: 246a0004     movea.l    $4(a2), a2
00393c: 4a2a0020     tst.b      $20(a2)
003940: 6744         beq.b      $3986
003942: 6016         bra.b      $395a
003944: 5284         addq.l     #$1, d4
003946: 603e         bra.b      $3986
003948: 5285         addq.l     #$1, d5
00394a: 603a         bra.b      $3986
00394c: 5287         addq.l     #$1, d7
00394e: 6036         bra.b      $3986
003950: 52af000a     addq.l     #$1, $a(a7)
003954: 6030         bra.b      $3986
003956: 5286         addq.l     #$1, d6
003958: 602c         bra.b      $3986
00395a: 7000         moveq      #$0, d0
00395c: 102a002e     move.b     $2e(a2), d0
003960: 0c400037     cmpi.w     #$37, d0
003964: 67f0         beq.b      $3956
003966: 6210         bhi.b      $3978
003968: 0c000016     cmpi.b     #$16, d0
00396c: 67e2         beq.b      $3950
00396e: 6216         bhi.b      $3986
003970: 0c00000b     cmpi.b     #$b, d0
003974: 67d6         beq.b      $394c
003976: 600e         bra.b      $3986
003978: 0c40004d     cmpi.w     #$4d, d0
00397c: 67ca         beq.b      $3948
00397e: 6206         bhi.b      $3986
003980: 0c000042     cmpi.b     #$42, d0
003984: 67be         beq.b      $3944
003986: 206e8500     movea.l    -$7b00(a6), a0
00398a: 202f0002     move.l     $2(a7), d0
00398e: 52af0002     addq.l     #$1, $2(a7)
003992: b0a8004e     cmp.l      $4e(a0), d0
003996: 6da0         blt.b      $3938
003998: 2004         move.l     d4, d0
00399a: d085         add.l      d5, d0
00399c: d087         add.l      d7, d0
00399e: d0af000a     add.l      $a(a7), d0
0039a2: d086         add.l      d6, d0
0039a4: 2f400006     move.l     d0, $6(a7)
0039a8: 206e8500     movea.l    -$7b00(a6), a0
0039ac: 202f0006     move.l     $6(a7), d0
0039b0: b0a80066     cmp.l      $66(a0), d0
0039b4: 6604         bne.b      $39ba
0039b6: 7001         moveq      #$1, d0
0039b8: 6002         bra.b      $39bc
0039ba: 7000         moveq      #$0, d0
0039bc: 1f400001     move.b     d0, $1(a7)
0039c0: 4a2f0001     tst.b      $1(a7)
0039c4: 6722         beq.b      $39e8
0039c6: 206e8500     movea.l    -$7b00(a6), a0
0039ca: 2144005e     move.l     d4, $5e(a0)
0039ce: 206e8500     movea.l    -$7b00(a6), a0
0039d2: 21460062     move.l     d6, $62(a0)
0039d6: 206e8500     movea.l    -$7b00(a6), a0
0039da: 21470056     move.l     d7, $56(a0)
0039de: 206e8500     movea.l    -$7b00(a6), a0
0039e2: 216f000a005a move.l     $a(a7), $5a(a0)
0039e8: 102f0001     move.b     $1(a7), d0
0039ec: 4fef000e     lea.l      $e(a7), a7
0039f0: 4ced05f0ffe8 movem.l    -$18(a5), d4-d7/a0/a2
0039f6: 4e5d         unlk       a5
0039f8: 4e75         rts        
0039fa: 4e550000     link.w     a5, #$0
0039fe: 48e7ceb8     movem.l    d0-d1/d4-d6/a0/a2-a4, -(a7)
003a02: 99cc         suba.l     a4, a4
003a04: 7a00         moveq      #$0, d5
003a06: 7c06         moveq      #$6, d6
003a08: 206e8500     movea.l    -$7b00(a6), a0
003a0c: 0c2800010010 cmpi.b     #$1, $10(a0)
003a12: 670000b6     beq.w      $3aca
003a16: 202e8504     move.l     -$7afc(a6), d0
003a1a: 6100f462     bsr.w      $2e7e
003a1e: 4a00         tst.b      d0
003a20: 670000a8     beq.w      $3aca
003a24: 7800         moveq      #$0, d4
003a26: 246e8504     movea.l    -$7afc(a6), a2
003a2a: 6036         bra.b      $3a62
003a2c: 246a0004     movea.l    $4(a2), a2
003a30: 200a         move.l     a2, d0
003a32: 6100f44a     bsr.w      $2e7e
003a36: 4a00         tst.b      d0
003a38: 6712         beq.b      $3a4c
003a3a: 200a         move.l     a2, d0
003a3c: 6100f4a8     bsr.w      $2ee6
003a40: 4a00         tst.b      d0
003a42: 6704         beq.b      $3a48
003a44: 5485         addq.l     #$2, d5
003a46: 601a         bra.b      $3a62
003a48: 5285         addq.l     #$1, d5
003a4a: 6016         bra.b      $3a62
003a4c: 7000         moveq      #$0, d0
003a4e: 102a005a     move.b     $5a(a2), d0
003a52: b086         cmp.l      d6, d0
003a54: 6c08         bge.b      $3a5e
003a56: 7000         moveq      #$0, d0
003a58: 102a005a     move.b     $5a(a2), d0
003a5c: 6002         bra.b      $3a60
003a5e: 2006         move.l     d6, d0
003a60: 2c00         move.l     d0, d6
003a62: 206e8500     movea.l    -$7b00(a6), a0
003a66: 2004         move.l     d4, d0
003a68: 5284         addq.l     #$1, d4
003a6a: b0a8004e     cmp.l      $4e(a0), d0
003a6e: 6dbc         blt.b      $3a2c
003a70: 7004         moveq      #$4, d0
003a72: b085         cmp.l      d5, d0
003a74: 6654         bne.b      $3aca
003a76: 7800         moveq      #$0, d4
003a78: 246e8504     movea.l    -$7afc(a6), a2
003a7c: 603e         bra.b      $3abc
003a7e: 246a0004     movea.l    $4(a2), a2
003a82: 266a0008     movea.l    $8(a2), a3
003a86: 4a2a0020     tst.b      $20(a2)
003a8a: 6730         beq.b      $3abc
003a8c: 200a         move.l     a2, d0
003a8e: 6100f3ee     bsr.w      $2e7e
003a92: 4a00         tst.b      d0
003a94: 6726         beq.b      $3abc
003a96: 202e8504     move.l     -$7afc(a6), d0
003a9a: b0aa0008     cmp.l      $8(a2), d0
003a9e: 671c         beq.b      $3abc
003aa0: 7000         moveq      #$0, d0
003aa2: 102a005a     move.b     $5a(a2), d0
003aa6: b086         cmp.l      d6, d0
003aa8: 6e12         bgt.b      $3abc
003aaa: 220a         move.l     a2, d1
003aac: 202e8504     move.l     -$7afc(a6), d0
003ab0: 6100f5e4     bsr.w      $3096
003ab4: 4a00         tst.b      d0
003ab6: 6704         beq.b      $3abc
003ab8: 284a         movea.l    a2, a4
003aba: 600e         bra.b      $3aca
003abc: 206e8500     movea.l    -$7b00(a6), a0
003ac0: 2004         move.l     d4, d0
003ac2: 5284         addq.l     #$1, d4
003ac4: b0a8004e     cmp.l      $4e(a0), d0
003ac8: 6db4         blt.b      $3a7e
003aca: 200c         move.l     a4, d0
003acc: 4ced1d72ffe0 movem.l    -$20(a5), d1/d4-d6/a0/a2-a4
003ad2: 4e5d         unlk       a5
003ad4: 4e75         rts        
003ad6: 4e550000     link.w     a5, #$0
003ada: 48e7ccf8     movem.l    d0-d1/d4-d5/a0-a4, -(a7)
003ade: 97cb         suba.l     a3, a3
003ae0: 99cc         suba.l     a4, a4
003ae2: 7a00         moveq      #$0, d5
003ae4: 202e8504     move.l     -$7afc(a6), d0
003ae8: 6100f394     bsr.w      $2e7e
003aec: 4a00         tst.b      d0
003aee: 670000fa     beq.w      $3bea
003af2: 7800         moveq      #$0, d4
003af4: 246e8504     movea.l    -$7afc(a6), a2
003af8: 6054         bra.b      $3b4e
003afa: 246a0004     movea.l    $4(a2), a2
003afe: 0c2a0006005a cmpi.b     #$6, $5a(a2)
003b04: 6748         beq.b      $3b4e
003b06: 200a         move.l     a2, d0
003b08: 6100f374     bsr.w      $2e7e
003b0c: 4a00         tst.b      d0
003b0e: 673e         beq.b      $3b4e
003b10: 4a2a0055     tst.b      $55(a2)
003b14: 6712         beq.b      $3b28
003b16: 48780002     pea.l      $2.w
003b1a: 7201         moveq      #$1, d1
003b1c: 200a         move.l     a2, d0
003b1e: 6100f080     bsr.w      $2ba0
003b22: 588f         addq.l     #$4, a7
003b24: 4a00         tst.b      d0
003b26: 6726         beq.b      $3b4e
003b28: 4a6a002c     tst.w      $2c(a2)
003b2c: 6c0a         bge.b      $3b38
003b2e: 302a002c     move.w     $2c(a2), d0
003b32: 48c0         ext.l      d0
003b34: 4480         neg.l      d0
003b36: 6006         bra.b      $3b3e
003b38: 302a002c     move.w     $2c(a2), d0
003b3c: 48c0         ext.l      d0
003b3e: 7243         moveq      #$43, d1
003b40: b280         cmp.l      d0, d1
003b42: 6d0a         blt.b      $3b4e
003b44: 4a2a001f     tst.b      $1f(a2)
003b48: 6604         bne.b      $3b4e
003b4a: 5285         addq.l     #$1, d5
003b4c: 264a         movea.l    a2, a3
003b4e: 206e8500     movea.l    -$7b00(a6), a0
003b52: 2004         move.l     d4, d0
003b54: 5284         addq.l     #$1, d4
003b56: b0a8004e     cmp.l      $4e(a0), d0
003b5a: 6d9e         blt.b      $3afa
003b5c: 7001         moveq      #$1, d0
003b5e: b085         cmp.l      d5, d0
003b60: 66000088     bne.w      $3bea
003b64: 206e8508     movea.l    -$7af8(a6), a0
003b68: 226e8504     movea.l    -$7afc(a6), a1
003b6c: 1029005a     move.b     $5a(a1), d0
003b70: b028005a     cmp.b      $5a(a0), d0
003b74: 65000074     bcs.w      $3bea
003b78: 284b         movea.l    a3, a4
003b7a: 7800         moveq      #$0, d4
003b7c: 246e8504     movea.l    -$7afc(a6), a2
003b80: 605a         bra.b      $3bdc
003b82: 246a0004     movea.l    $4(a2), a2
003b86: b5cc         cmpa.l     a4, a2
003b88: 6752         beq.b      $3bdc
003b8a: 4a2a0020     tst.b      $20(a2)
003b8e: 674c         beq.b      $3bdc
003b90: 0c2a0021002f cmpi.b     #$21, $2f(a2)
003b96: 6644         bne.b      $3bdc
003b98: 4a2a001f     tst.b      $1f(a2)
003b9c: 663e         bne.b      $3bdc
003b9e: 102a005a     move.b     $5a(a2), d0
003ba2: b02c005a     cmp.b      $5a(a4), d0
003ba6: 6234         bhi.b      $3bdc
003ba8: 0c2a00020057 cmpi.b     #$2, $57(a2)
003bae: 672c         beq.b      $3bdc
003bb0: 0c2a00010057 cmpi.b     #$1, $57(a2)
003bb6: 6724         beq.b      $3bdc
003bb8: 0c2a00030057 cmpi.b     #$3, $57(a2)
003bbe: 671c         beq.b      $3bdc
003bc0: 0c2a00090057 cmpi.b     #$9, $57(a2)
003bc6: 6714         beq.b      $3bdc
003bc8: 0c2a00080057 cmpi.b     #$8, $57(a2)
003bce: 670c         beq.b      $3bdc
003bd0: 0c2a000a0057 cmpi.b     #$a, $57(a2)
003bd6: 6704         beq.b      $3bdc
003bd8: 99cc         suba.l     a4, a4
003bda: 600e         bra.b      $3bea
003bdc: 206e8500     movea.l    -$7b00(a6), a0
003be0: 2004         move.l     d4, d0
003be2: 5284         addq.l     #$1, d4
003be4: b0a8004e     cmp.l      $4e(a0), d0
003be8: 6d98         blt.b      $3b82
003bea: 200c         move.l     a4, d0
003bec: 4ced1f32ffe0 movem.l    -$20(a5), d1/d4-d5/a0-a4
003bf2: 4e5d         unlk       a5
003bf4: 4e75         rts        
003bf6: 4e550000     link.w     a5, #$0
003bfa: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003bfe: 99cc         suba.l     a4, a4
003c00: 206e8504     movea.l    -$7afc(a6), a0
003c04: 0c2800090057 cmpi.b     #$9, $57(a0)
003c0a: 673e         beq.b      $3c4a
003c0c: 206e8504     movea.l    -$7afc(a6), a0
003c10: 0c2800080057 cmpi.b     #$8, $57(a0)
003c16: 6732         beq.b      $3c4a
003c18: 206e8504     movea.l    -$7afc(a6), a0
003c1c: 0c28000a0057 cmpi.b     #$a, $57(a0)
003c22: 6726         beq.b      $3c4a
003c24: 206e8504     movea.l    -$7afc(a6), a0
003c28: 0c2800020057 cmpi.b     #$2, $57(a0)
003c2e: 671a         beq.b      $3c4a
003c30: 206e8504     movea.l    -$7afc(a6), a0
003c34: 0c2800010057 cmpi.b     #$1, $57(a0)
003c3a: 670e         beq.b      $3c4a
003c3c: 206e8504     movea.l    -$7afc(a6), a0
003c40: 0c2800030057 cmpi.b     #$3, $57(a0)
003c46: 66000088     bne.w      $3cd0
003c4a: 206e8508     movea.l    -$7af8(a6), a0
003c4e: 4a280057     tst.b      $57(a0)
003c52: 6700006e     beq.w      $3cc2
003c56: 206e8508     movea.l    -$7af8(a6), a0
003c5a: 0c2800020057 cmpi.b     #$2, $57(a0)
003c60: 6760         beq.b      $3cc2
003c62: 206e8508     movea.l    -$7af8(a6), a0
003c66: 0c2800010057 cmpi.b     #$1, $57(a0)
003c6c: 6754         beq.b      $3cc2
003c6e: 206e8508     movea.l    -$7af8(a6), a0
003c72: 0c2800030057 cmpi.b     #$3, $57(a0)
003c78: 6748         beq.b      $3cc2
003c7a: 206e8508     movea.l    -$7af8(a6), a0
003c7e: 0c2800040057 cmpi.b     #$4, $57(a0)
003c84: 6730         beq.b      $3cb6
003c86: 206e8508     movea.l    -$7af8(a6), a0
003c8a: 0c2800050057 cmpi.b     #$5, $57(a0)
003c90: 6724         beq.b      $3cb6
003c92: 206e8508     movea.l    -$7af8(a6), a0
003c96: 0c2800090057 cmpi.b     #$9, $57(a0)
003c9c: 6718         beq.b      $3cb6
003c9e: 206e8508     movea.l    -$7af8(a6), a0
003ca2: 0c2800080057 cmpi.b     #$8, $57(a0)
003ca8: 670c         beq.b      $3cb6
003caa: 206e8508     movea.l    -$7af8(a6), a0
003cae: 0c28000a0057 cmpi.b     #$a, $57(a0)
003cb4: 661a         bne.b      $3cd0
003cb6: 206e8508     movea.l    -$7af8(a6), a0
003cba: 0c280004005a cmpi.b     #$4, $5a(a0)
003cc0: 640e         bcc.b      $3cd0
003cc2: 61002900     bsr.w      $65c4
003cc6: 7201         moveq      #$1, d1
003cc8: b280         cmp.l      d0, d1
003cca: 6604         bne.b      $3cd0
003ccc: 286e8508     movea.l    -$7af8(a6), a4
003cd0: 200c         move.l     a4, d0
003cd2: 4ced1d12ffe8 movem.l    -$18(a5), d1/d4/a0/a2-a4
003cd8: 4e5d         unlk       a5
003cda: 4e75         rts        
003cdc: 4e550000     link.w     a5, #$0
003ce0: 48e788b8     movem.l    d0/d4/a0/a2-a4, -(a7)
003ce4: 97cb         suba.l     a3, a3
003ce6: 99cc         suba.l     a4, a4
003ce8: 7800         moveq      #$0, d4
003cea: 246e8504     movea.l    -$7afc(a6), a2
003cee: 6028         bra.b      $3d18
003cf0: 4a2a0020     tst.b      $20(a2)
003cf4: 671e         beq.b      $3d14
003cf6: 206e8504     movea.l    -$7afc(a6), a0
003cfa: 4a280057     tst.b      $57(a0)
003cfe: 6614         bne.b      $3d14
003d00: 0c2a00020057 cmpi.b     #$2, $57(a2)
003d06: 6708         beq.b      $3d10
003d08: 0c2a00030057 cmpi.b     #$3, $57(a2)
003d0e: 6604         bne.b      $3d14
003d10: 284a         movea.l    a2, a4
003d12: 6012         bra.b      $3d26
003d14: 246a0004     movea.l    $4(a2), a2
003d18: 206e8500     movea.l    -$7b00(a6), a0
003d1c: 2004         move.l     d4, d0
003d1e: 5284         addq.l     #$1, d4
003d20: b0a8004e     cmp.l      $4e(a0), d0
003d24: 6dca         blt.b      $3cf0
003d26: 200c         move.l     a4, d0
003d28: 6746         beq.b      $3d70
003d2a: 7800         moveq      #$0, d4
003d2c: 246e8504     movea.l    -$7afc(a6), a2
003d30: 6030         bra.b      $3d62
003d32: b5ee8504     cmpa.l     -$7afc(a6), a2
003d36: 6726         beq.b      $3d5e
003d38: b5cc         cmpa.l     a4, a2
003d3a: 6722         beq.b      $3d5e
003d3c: 4a2a0057     tst.b      $57(a2)
003d40: 6718         beq.b      $3d5a
003d42: 0c2a00020057 cmpi.b     #$2, $57(a2)
003d48: 6710         beq.b      $3d5a
003d4a: 0c2a00010057 cmpi.b     #$1, $57(a2)
003d50: 6708         beq.b      $3d5a
003d52: 0c2a00030057 cmpi.b     #$3, $57(a2)
003d58: 6604         bne.b      $3d5e
003d5a: 264a         movea.l    a2, a3
003d5c: 6012         bra.b      $3d70
003d5e: 246a0004     movea.l    $4(a2), a2
003d62: 206e8500     movea.l    -$7b00(a6), a0
003d66: 2004         move.l     d4, d0
003d68: 5284         addq.l     #$1, d4
003d6a: b0a8004e     cmp.l      $4e(a0), d0
003d6e: 6dc2         blt.b      $3d32
003d70: 200b         move.l     a3, d0
003d72: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
003d78: 4e5d         unlk       a5
003d7a: 4e75         rts        
003d7c: 4e550000     link.w     a5, #$0
003d80: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
003d84: 4feffff4     lea.l      -$c(a7), a7
003d88: 95ca         suba.l     a2, a2
003d8a: 42af0004     clr.l      $4(a7)
003d8e: 4297         clr.l      (a7)
003d90: 42af0008     clr.l      $8(a7)
003d94: 266e8504     movea.l    -$7afc(a6), a3
003d98: 206e8500     movea.l    -$7b00(a6), a0
003d9c: 0c2800150010 cmpi.b     #$15, $10(a0)
003da2: 675c         beq.b      $3e00
003da4: 206e8500     movea.l    -$7b00(a6), a0
003da8: 7003         moveq      #$3, d0
003daa: b0a8004e     cmp.l      $4e(a0), d0
003dae: 66000090     bne.w      $3e40
003db2: 604c         bra.b      $3e00
003db4: 266b0004     movea.l    $4(a3), a3
003db8: 0c2b0037002e cmpi.b     #$37, $2e(a3)
003dbe: 6606         bne.b      $3dc6
003dc0: 7001         moveq      #$1, d0
003dc2: 2f400004     move.l     d0, $4(a7)
003dc6: 382b002c     move.w     $2c(a3), d4
003dca: 4a2b0057     tst.b      $57(a3)
003dce: 6730         beq.b      $3e00
003dd0: 4a44         tst.w      d4
003dd2: 6c08         bge.b      $3ddc
003dd4: 3004         move.w     d4, d0
003dd6: 48c0         ext.l      d0
003dd8: 4480         neg.l      d0
003dda: 6004         bra.b      $3de0
003ddc: 3004         move.w     d4, d0
003dde: 48c0         ext.l      d0
003de0: 7214         moveq      #$14, d1
003de2: b280         cmp.l      d0, d1
003de4: 6c1a         bge.b      $3e00
003de6: 4a44         tst.w      d4
003de8: 6c08         bge.b      $3df2
003dea: 3004         move.w     d4, d0
003dec: 48c0         ext.l      d0
003dee: 4480         neg.l      d0
003df0: 6004         bra.b      $3df6
003df2: 3004         move.w     d4, d0
003df4: 48c0         ext.l      d0
003df6: 0c8000000082 cmpi.l     #$82, d0
003dfc: 6c02         bge.b      $3e00
003dfe: 5297         addq.l     #$1, (a7)
003e00: 206e8500     movea.l    -$7b00(a6), a0
003e04: 202f0008     move.l     $8(a7), d0
003e08: 52af0008     addq.l     #$1, $8(a7)
003e0c: b0a8004e     cmp.l      $4e(a0), d0
003e10: 6da2         blt.b      $3db4
003e12: 206e8500     movea.l    -$7b00(a6), a0
003e16: 20280066     move.l     $66(a0), d0
003e1a: 90af0004     sub.l      $4(a7), d0
003e1e: 7201         moveq      #$1, d1
003e20: b280         cmp.l      d0, d1
003e22: 6614         bne.b      $3e38
003e24: 206e8504     movea.l    -$7afc(a6), a0
003e28: 24680004     movea.l    $4(a0), a2
003e2c: 6004         bra.b      $3e32
003e2e: 246a0004     movea.l    $4(a2), a2
003e32: 4a2a0020     tst.b      $20(a2)
003e36: 67f6         beq.b      $3e2e
003e38: 7001         moveq      #$1, d0
003e3a: b097         cmp.l      (a7), d0
003e3c: 6c02         bge.b      $3e40
003e3e: 95ca         suba.l     a2, a2
003e40: 200a         move.l     a2, d0
003e42: 4fef000c     lea.l      $c(a7), a7
003e46: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
003e4c: 4e5d         unlk       a5
003e4e: 4e75         rts        
003e50: 4e550000     link.w     a5, #$0
003e54: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
003e58: 558f         subq.l     #$2, a7
003e5a: 7800         moveq      #$0, d4
003e5c: 7e00         moveq      #$0, d7
003e5e: 7a00         moveq      #$0, d5
003e60: 286e8504     movea.l    -$7afc(a6), a4
003e64: 206e8504     movea.l    -$7afc(a6), a0
003e68: 26680008     movea.l    $8(a0), a3
003e6c: 600000e4     bra.w      $3f52
003e70: 286c0004     movea.l    $4(a4), a4
003e74: 4a6c002c     tst.w      $2c(a4)
003e78: 6c0a         bge.b      $3e84
003e7a: 302c002c     move.w     $2c(a4), d0
003e7e: 48c0         ext.l      d0
003e80: 4480         neg.l      d0
003e82: 6006         bra.b      $3e8a
003e84: 302c002c     move.w     $2c(a4), d0
003e88: 48c0         ext.l      d0
003e8a: 723c         moveq      #$3c, d1
003e8c: b280         cmp.l      d0, d1
003e8e: 6d0000c2     blt.w      $3f52
003e92: 0c2c0037002e cmpi.b     #$37, $2e(a4)
003e98: 670000b8     beq.w      $3f52
003e9c: 4a2c0020     tst.b      $20(a4)
003ea0: 670000b0     beq.w      $3f52
003ea4: 206e8504     movea.l    -$7afc(a6), a0
003ea8: 1028005a     move.b     $5a(a0), d0
003eac: b02c005a     cmp.b      $5a(a4), d0
003eb0: 660000a0     bne.w      $3f52
003eb4: 7c00         moveq      #$0, d6
003eb6: 246e8504     movea.l    -$7afc(a6), a2
003eba: 1f7c00630001 move.b     #$63, $1(a7)
003ec0: 6056         bra.b      $3f18
003ec2: 246a0004     movea.l    $4(a2), a2
003ec6: b5cb         cmpa.l     a3, a2
003ec8: 674e         beq.b      $3f18
003eca: 4a6a002c     tst.w      $2c(a2)
003ece: 6c0a         bge.b      $3eda
003ed0: 302a002c     move.w     $2c(a2), d0
003ed4: 48c0         ext.l      d0
003ed6: 4480         neg.l      d0
003ed8: 6006         bra.b      $3ee0
003eda: 302a002c     move.w     $2c(a2), d0
003ede: 48c0         ext.l      d0
003ee0: 723c         moveq      #$3c, d1
003ee2: b280         cmp.l      d0, d1
003ee4: 6d32         blt.b      $3f18
003ee6: 4a2a0020     tst.b      $20(a2)
003eea: 672c         beq.b      $3f18
003eec: b5ee8504     cmpa.l     -$7afc(a6), a2
003ef0: 6726         beq.b      $3f18
003ef2: b5cc         cmpa.l     a4, a2
003ef4: 6722         beq.b      $3f18
003ef6: 206e8504     movea.l    -$7afc(a6), a0
003efa: 1028005a     move.b     $5a(a0), d0
003efe: b02a005a     cmp.b      $5a(a2), d0
003f02: 6504         bcs.b      $3f08
003f04: 7e01         moveq      #$1, d7
003f06: 601e         bra.b      $3f26
003f08: 102f0001     move.b     $1(a7), d0
003f0c: b02a005a     cmp.b      $5a(a2), d0
003f10: 6306         bls.b      $3f18
003f12: 1f6a005a0001 move.b     $5a(a2), $1(a7)
003f18: 206e8500     movea.l    -$7b00(a6), a0
003f1c: 2006         move.l     d6, d0
003f1e: 5286         addq.l     #$1, d6
003f20: b0a8004e     cmp.l      $4e(a0), d0
003f24: 6d9c         blt.b      $3ec2
003f26: 4a07         tst.b      d7
003f28: 6628         bne.b      $3f52
003f2a: 7000         moveq      #$0, d0
003f2c: 102c005a     move.b     $5a(a4), d0
003f30: 7200         moveq      #$0, d1
003f32: 122f0001     move.b     $1(a7), d1
003f36: 9240         sub.w      d0, d1
003f38: 0c410001     cmpi.w     #$1, d1
003f3c: 6e06         bgt.b      $3f44
003f3e: 4a2c0057     tst.b      $57(a4)
003f42: 660e         bne.b      $3f52
003f44: 0c2c0004005a cmpi.b     #$4, $5a(a4)
003f4a: 6406         bcc.b      $3f52
003f4c: 7a00         moveq      #$0, d5
003f4e: 280c         move.l     a4, d4
003f50: 6010         bra.b      $3f62
003f52: 206e8500     movea.l    -$7b00(a6), a0
003f56: 2005         move.l     d5, d0
003f58: 5285         addq.l     #$1, d5
003f5a: b0a8004e     cmp.l      $4e(a0), d0
003f5e: 6d00ff10     blt.w      $3e70
003f62: 2004         move.l     d4, d0
003f64: 548f         addq.l     #$2, a7
003f66: 4ced1df2ffdc movem.l    -$24(a5), d1/d4-d7/a0/a2-a4
003f6c: 4e5d         unlk       a5
003f6e: 4e75         rts        
003f70: 4e550000     link.w     a5, #$0
003f74: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
003f78: 97cb         suba.l     a3, a3
003f7a: 202e8504     move.l     -$7afc(a6), d0
003f7e: b0ae8508     cmp.l      -$7af8(a6), d0
003f82: 6606         bne.b      $3f8a
003f84: 266e8508     movea.l    -$7af8(a6), a3
003f88: 602c         bra.b      $3fb6
003f8a: 7800         moveq      #$0, d4
003f8c: 246e8504     movea.l    -$7afc(a6), a2
003f90: 6016         bra.b      $3fa8
003f92: 246a0004     movea.l    $4(a2), a2
003f96: 0c2a002c002f cmpi.b     #$2c, $2f(a2)
003f9c: 660a         bne.b      $3fa8
003f9e: 4a2a0020     tst.b      $20(a2)
003fa2: 6704         beq.b      $3fa8
003fa4: 264a         movea.l    a2, a3
003fa6: 600e         bra.b      $3fb6
003fa8: 206e8500     movea.l    -$7b00(a6), a0
003fac: 2004         move.l     d4, d0
003fae: 5284         addq.l     #$1, d4
003fb0: b0a8004e     cmp.l      $4e(a0), d0
003fb4: 6ddc         blt.b      $3f92
003fb6: 200b         move.l     a3, d0
003fb8: 660000b6     bne.w      $4070
003fbc: 48780001     pea.l      $1.w
003fc0: 7202         moveq      #$2, d1
003fc2: 202e8504     move.l     -$7afc(a6), d0
003fc6: 6100ebd8     bsr.w      $2ba0
003fca: 588f         addq.l     #$4, a7
003fcc: 4a00         tst.b      d0
003fce: 670000a0     beq.w      $4070
003fd2: 7800         moveq      #$0, d4
003fd4: 246e8504     movea.l    -$7afc(a6), a2
003fd8: 60000086     bra.w      $4060
003fdc: 246a0004     movea.l    $4(a2), a2
003fe0: 48780002     pea.l      $2.w
003fe4: 7201         moveq      #$1, d1
003fe6: 200a         move.l     a2, d0
003fe8: 6100ebb6     bsr.w      $2ba0
003fec: 588f         addq.l     #$4, a7
003fee: 4a00         tst.b      d0
003ff0: 6700006e     beq.w      $4060
003ff4: 7044         moveq      #$44, d0
003ff6: d08a         add.l      a2, d0
003ff8: 2840         movea.l    d0, a4
003ffa: 200c         move.l     a4, d0
003ffc: 6100f5ea     bsr.w      $35e8
004000: 4a80         tst.l      d0
004002: 6e5c         bgt.b      $4060
004004: 4a2a0020     tst.b      $20(a2)
004008: 6756         beq.b      $4060
00400a: 4a6a002c     tst.w      $2c(a2)
00400e: 6c0a         bge.b      $401a
004010: 302a002c     move.w     $2c(a2), d0
004014: 48c0         ext.l      d0
004016: 4480         neg.l      d0
004018: 6006         bra.b      $4020
00401a: 302a002c     move.w     $2c(a2), d0
00401e: 48c0         ext.l      d0
004020: 0c800000008c cmpi.l     #$8c, d0
004026: 6d38         blt.b      $4060
004028: 206e8504     movea.l    -$7afc(a6), a0
00402c: 202a000c     move.l     $c(a2), d0
004030: b0a8000c     cmp.l      $c(a0), d0
004034: 662a         bne.b      $4060
004036: 206e8500     movea.l    -$7b00(a6), a0
00403a: 0c280002006e cmpi.b     #$2, $6e(a0)
004040: 6612         bne.b      $4054
004042: 206e8500     movea.l    -$7b00(a6), a0
004046: 302a0022     move.w     $22(a2), d0
00404a: 48c0         ext.l      d0
00404c: b0a8004e     cmp.l      $4e(a0), d0
004050: 670a         beq.b      $405c
004052: 600c         bra.b      $4060
004054: 0c6a00010022 cmpi.w     #$1, $22(a2)
00405a: 6604         bne.b      $4060
00405c: 264a         movea.l    a2, a3
00405e: 6010         bra.b      $4070
004060: 206e8500     movea.l    -$7b00(a6), a0
004064: 2004         move.l     d4, d0
004066: 5284         addq.l     #$1, d4
004068: b0a8004e     cmp.l      $4e(a0), d0
00406c: 6d00ff6e     blt.w      $3fdc
004070: 200b         move.l     a3, d0
004072: 4ced1d12ffe8 movem.l    -$18(a5), d1/d4/a0/a2-a4
004078: 4e5d         unlk       a5
00407a: 4e75         rts        
00407c: 4e550000     link.w     a5, #$0
004080: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
004084: 598f         subq.l     #$4, a7
004086: 97cb         suba.l     a3, a3
004088: 99cc         suba.l     a4, a4
00408a: 7800         moveq      #$0, d4
00408c: 2c3c000000b4 move.l     #$b4, d6
004092: 2e3c000000b4 move.l     #$b4, d7
004098: 246e8504     movea.l    -$7afc(a6), a2
00409c: 6046         bra.b      $40e4
00409e: 246a0004     movea.l    $4(a2), a2
0040a2: 4a2a0055     tst.b      $55(a2)
0040a6: 6712         beq.b      $40ba
0040a8: 48780002     pea.l      $2.w
0040ac: 7201         moveq      #$1, d1
0040ae: 200a         move.l     a2, d0
0040b0: 6100eaee     bsr.w      $2ba0
0040b4: 588f         addq.l     #$4, a7
0040b6: 4a00         tst.b      d0
0040b8: 672a         beq.b      $40e4
0040ba: 4a6a002c     tst.w      $2c(a2)
0040be: 6c0a         bge.b      $40ca
0040c0: 302a002c     move.w     $2c(a2), d0
0040c4: 48c0         ext.l      d0
0040c6: 4480         neg.l      d0
0040c8: 6006         bra.b      $40d0
0040ca: 302a002c     move.w     $2c(a2), d0
0040ce: 48c0         ext.l      d0
0040d0: 2a00         move.l     d0, d5
0040d2: b086         cmp.l      d6, d0
0040d4: 6e08         bgt.b      $40de
0040d6: 2e06         move.l     d6, d7
0040d8: 2c05         move.l     d5, d6
0040da: 264a         movea.l    a2, a3
0040dc: 6006         bra.b      $40e4
0040de: ba87         cmp.l      d7, d5
0040e0: 6c02         bge.b      $40e4
0040e2: 2e05         move.l     d5, d7
0040e4: 206e8500     movea.l    -$7b00(a6), a0
0040e8: 2028004e     move.l     $4e(a0), d0
0040ec: 5380         subq.l     #$1, d0
0040ee: 2204         move.l     d4, d1
0040f0: 5284         addq.l     #$1, d4
0040f2: b081         cmp.l      d1, d0
0040f4: 6ea8         bgt.b      $409e
0040f6: 705a         moveq      #$5a, d0
0040f8: b086         cmp.l      d6, d0
0040fa: 6f1c         ble.b      $4118
0040fc: 2007         move.l     d7, d0
0040fe: 9086         sub.l      d6, d0
004100: 2e80         move.l     d0, (a7)
004102: 700a         moveq      #$a, d0
004104: b097         cmp.l      (a7), d0
004106: 6c10         bge.b      $4118
004108: 2007         move.l     d7, d0
00410a: d086         add.l      d6, d0
00410c: 6c02         bge.b      $4110
00410e: 5680         addq.l     #$3, d0
004110: e480         asr.l      #$2, d0
004112: b097         cmp.l      (a7), d0
004114: 6c02         bge.b      $4118
004116: 284b         movea.l    a3, a4
004118: 200c         move.l     a4, d0
00411a: 588f         addq.l     #$4, a7
00411c: 4ced1df2ffdc movem.l    -$24(a5), d1/d4-d7/a0/a2-a4
004122: 4e5d         unlk       a5
004124: 4e75         rts        
004126: 4e550000     link.w     a5, #$0
00412a: 48e7c000     movem.l    d0-d1, -(a7)
00412e: 2017         move.l     (a7), d0
004130: b0af0004     cmp.l      $4(a7), d0
004134: 6604         bne.b      $413a
004136: 7064         moveq      #$64, d0
004138: 6002         bra.b      $413c
00413a: 7000         moveq      #$0, d0
00413c: 4e5d         unlk       a5
00413e: 4e75         rts        
004140: 4e550000     link.w     a5, #$0
004144: 48e7c000     movem.l    d0-d1, -(a7)
004148: 2017         move.l     (a7), d0
00414a: b0af0004     cmp.l      $4(a7), d0
00414e: 6604         bne.b      $4154
004150: 7064         moveq      #$64, d0
004152: 6002         bra.b      $4156
004154: 7000         moveq      #$0, d0
004156: 4e5d         unlk       a5
004158: 4e75         rts        
00415a: 4e550000     link.w     a5, #$0
00415e: 48e7c000     movem.l    d0-d1, -(a7)
004162: 2017         move.l     (a7), d0
004164: b0af0004     cmp.l      $4(a7), d0
004168: 6604         bne.b      $416e
00416a: 7064         moveq      #$64, d0
00416c: 6002         bra.b      $4170
00416e: 7000         moveq      #$0, d0
004170: 4e5d         unlk       a5
004172: 4e75         rts        
004174: 4e550000     link.w     a5, #$0
004178: 48e7c000     movem.l    d0-d1, -(a7)
00417c: 2017         move.l     (a7), d0
00417e: b0af0004     cmp.l      $4(a7), d0
004182: 6604         bne.b      $4188
004184: 7064         moveq      #$64, d0
004186: 6002         bra.b      $418a
004188: 7000         moveq      #$0, d0
00418a: 4e5d         unlk       a5
00418c: 4e75         rts        
00418e: 4e550000     link.w     a5, #$0
004192: 48e7c000     movem.l    d0-d1, -(a7)
004196: 2017         move.l     (a7), d0
004198: b0af0004     cmp.l      $4(a7), d0
00419c: 6604         bne.b      $41a2
00419e: 7009         moveq      #$9, d0
0041a0: 6002         bra.b      $41a4
0041a2: 7000         moveq      #$0, d0
0041a4: 4e5d         unlk       a5
0041a6: 4e75         rts        
0041a8: 4e550000     link.w     a5, #$0
0041ac: 48e7c080     movem.l    d0-d1/a0, -(a7)
0041b0: 2017         move.l     (a7), d0
0041b2: b0af0004     cmp.l      $4(a7), d0
0041b6: 6636         bne.b      $41ee
0041b8: 2057         movea.l    (a7), a0
0041ba: 4a68002c     tst.w      $2c(a0)
0041be: 6c0c         bge.b      $41cc
0041c0: 2057         movea.l    (a7), a0
0041c2: 3028002c     move.w     $2c(a0), d0
0041c6: 48c0         ext.l      d0
0041c8: 4480         neg.l      d0
0041ca: 6008         bra.b      $41d4
0041cc: 2057         movea.l    (a7), a0
0041ce: 3028002c     move.w     $2c(a0), d0
0041d2: 48c0         ext.l      d0
0041d4: 721e         moveq      #$1e, d1
0041d6: b280         cmp.l      d0, d1
0041d8: 6d04         blt.b      $41de
0041da: 7037         moveq      #$37, d0
0041dc: 6012         bra.b      $41f0
0041de: 2057         movea.l    (a7), a0
0041e0: 4a280057     tst.b      $57(a0)
0041e4: 6604         bne.b      $41ea
0041e6: 7028         moveq      #$28, d0
0041e8: 6006         bra.b      $41f0
0041ea: 7014         moveq      #$14, d0
0041ec: 6002         bra.b      $41f0
0041ee: 7000         moveq      #$0, d0
0041f0: 4ced0100fffc movem.l    -$4(a5), a0
0041f6: 4e5d         unlk       a5
0041f8: 4e75         rts        
0041fa: 4e550000     link.w     a5, #$0
0041fe: 48e7c000     movem.l    d0-d1, -(a7)
004202: 2017         move.l     (a7), d0
004204: b0af0004     cmp.l      $4(a7), d0
004208: 6606         bne.b      $4210
00420a: 2017         move.l     (a7), d0
00420c: 6108         bsr.b      $4216
00420e: 6002         bra.b      $4212
004210: 7000         moveq      #$0, d0
004212: 4e5d         unlk       a5
004214: 4e75         rts        
004216: 4e550000     link.w     a5, #$0
00421a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00421e: 48780096     pea.l      $96.w
004222: 7200         moveq      #$0, d1
004224: 202f0004     move.l     $4(a7), d0
004228: 61001108     bsr.w      $5332
00422c: 588f         addq.l     #$4, a7
00422e: 4a00         tst.b      d0
004230: 673e         beq.b      $4270
004232: 2057         movea.l    (a7), a0
004234: 4a68002c     tst.w      $2c(a0)
004238: 6c0c         bge.b      $4246
00423a: 2057         movea.l    (a7), a0
00423c: 3028002c     move.w     $2c(a0), d0
004240: 48c0         ext.l      d0
004242: 4480         neg.l      d0
004244: 6008         bra.b      $424e
004246: 2057         movea.l    (a7), a0
004248: 3028002c     move.w     $2c(a0), d0
00424c: 48c0         ext.l      d0
00424e: 7264         moveq      #$64, d1
004250: 4c010000     mulu.l     d1, d0
004254: 4c7c0800000000b4 divs.l     #$b4, d0
00425c: 7264         moveq      #$64, d1
00425e: 9280         sub.l      d0, d1
004260: 7046         moveq      #$46, d0
004262: 4c001001     mulu.l     d0, d1
004266: 4c7c180100000064 divs.l     #$64, d1
00426e: 6004         bra.b      $4274
004270: 7000         moveq      #$0, d0
004272: 2200         move.l     d0, d1
004274: 2001         move.l     d1, d0
004276: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00427c: 4e5d         unlk       a5
00427e: 4e75         rts        
004280: 4e550000     link.w     a5, #$0
004284: 48e7ccc0     movem.l    d0-d1/d4-d5/a0-a1, -(a7)
004288: 7800         moveq      #$0, d4
00428a: 206e8500     movea.l    -$7b00(a6), a0
00428e: 226e8500     movea.l    -$7b00(a6), a1
004292: 2029004e     move.l     $4e(a1), d0
004296: b0a8004a     cmp.l      $4a(a0), d0
00429a: 6750         beq.b      $42ec
00429c: 7044         moveq      #$44, d0
00429e: d097         add.l      (a7), d0
0042a0: 6100f346     bsr.w      $35e8
0042a4: 4a80         tst.l      d0
0042a6: 6c0c         bge.b      $42b4
0042a8: 7044         moveq      #$44, d0
0042aa: d097         add.l      (a7), d0
0042ac: 6100f33a     bsr.w      $35e8
0042b0: 4480         neg.l      d0
0042b2: 6008         bra.b      $42bc
0042b4: 7044         moveq      #$44, d0
0042b6: d097         add.l      (a7), d0
0042b8: 6100f32e     bsr.w      $35e8
0042bc: 2a00         move.l     d0, d5
0042be: 7032         moveq      #$32, d0
0042c0: b085         cmp.l      d5, d0
0042c2: 6c04         bge.b      $42c8
0042c4: 7000         moveq      #$0, d0
0042c6: 6022         bra.b      $42ea
0042c8: 7064         moveq      #$64, d0
0042ca: 4c050000     mulu.l     d5, d0
0042ce: 4c7c080000000032 divs.l     #$32, d0
0042d6: 7264         moveq      #$64, d1
0042d8: 9280         sub.l      d0, d1
0042da: 7005         moveq      #$5, d0
0042dc: 4c001001     mulu.l     d0, d1
0042e0: 4c7c180100000064 divs.l     #$64, d1
0042e8: 2001         move.l     d1, d0
0042ea: 2800         move.l     d0, d4
0042ec: 2004         move.l     d4, d0
0042ee: 4ced0332ffec movem.l    -$14(a5), d1/d4-d5/a0-a1
0042f4: 4e5d         unlk       a5
0042f6: 4e75         rts        
0042f8: 4e550000     link.w     a5, #$0
0042fc: 48e7c000     movem.l    d0-d1, -(a7)
004300: 202f001c     move.l     $1c(a7), d0
004304: 4c2f00000020 mulu.l     $20(a7), d0
00430a: 4c7c080000000064 divs.l     #$64, d0
004312: 222f001c     move.l     $1c(a7), d1
004316: d2af0020     add.l      $20(a7), d1
00431a: 9280         sub.l      d0, d1
00431c: 2f41001c     move.l     d1, $1c(a7)
004320: 202f0018     move.l     $18(a7), d0
004324: 4c2f0000001c mulu.l     $1c(a7), d0
00432a: 4c7c080000000064 divs.l     #$64, d0
004332: 222f0018     move.l     $18(a7), d1
004336: d2af001c     add.l      $1c(a7), d1
00433a: 9280         sub.l      d0, d1
00433c: 2f410018     move.l     d1, $18(a7)
004340: 202f0014     move.l     $14(a7), d0
004344: 4c2f00000018 mulu.l     $18(a7), d0
00434a: 4c7c080000000064 divs.l     #$64, d0
004352: 222f0014     move.l     $14(a7), d1
004356: d2af0018     add.l      $18(a7), d1
00435a: 9280         sub.l      d0, d1
00435c: 2f410014     move.l     d1, $14(a7)
004360: 202f0010     move.l     $10(a7), d0
004364: 4c2f00000014 mulu.l     $14(a7), d0
00436a: 4c7c080000000064 divs.l     #$64, d0
004372: 222f0010     move.l     $10(a7), d1
004376: d2af0014     add.l      $14(a7), d1
00437a: 9280         sub.l      d0, d1
00437c: 2f410010     move.l     d1, $10(a7)
004380: 202f0004     move.l     $4(a7), d0
004384: 4c2f00000010 mulu.l     $10(a7), d0
00438a: 4c7c080000000064 divs.l     #$64, d0
004392: 222f0004     move.l     $4(a7), d1
004396: d2af0010     add.l      $10(a7), d1
00439a: 9280         sub.l      d0, d1
00439c: 2f410004     move.l     d1, $4(a7)
0043a0: 2017         move.l     (a7), d0
0043a2: 4c2f00000004 mulu.l     $4(a7), d0
0043a8: 4c7c080000000064 divs.l     #$64, d0
0043b0: 2217         move.l     (a7), d1
0043b2: d2af0004     add.l      $4(a7), d1
0043b6: 9280         sub.l      d0, d1
0043b8: 2e81         move.l     d1, (a7)
0043ba: 2017         move.l     (a7), d0
0043bc: 4e5d         unlk       a5
0043be: 4e75         rts        
0043c0: 4e550000     link.w     a5, #$0
0043c4: 48e7c000     movem.l    d0-d1, -(a7)
0043c8: 202f0024     move.l     $24(a7), d0
0043cc: 4c2f00000020 mulu.l     $20(a7), d0
0043d2: 4c7c080000000064 divs.l     #$64, d0
0043da: 222f0024     move.l     $24(a7), d1
0043de: d2af0020     add.l      $20(a7), d1
0043e2: 9280         sub.l      d0, d1
0043e4: 2f410020     move.l     d1, $20(a7)
0043e8: 202f001c     move.l     $1c(a7), d0
0043ec: 4c2f00000020 mulu.l     $20(a7), d0
0043f2: 4c7c080000000064 divs.l     #$64, d0
0043fa: 222f001c     move.l     $1c(a7), d1
0043fe: d2af0020     add.l      $20(a7), d1
004402: 9280         sub.l      d0, d1
004404: 2f41001c     move.l     d1, $1c(a7)
004408: 202f0018     move.l     $18(a7), d0
00440c: 4c2f0000001c mulu.l     $1c(a7), d0
004412: 4c7c080000000064 divs.l     #$64, d0
00441a: 222f0018     move.l     $18(a7), d1
00441e: d2af001c     add.l      $1c(a7), d1
004422: 9280         sub.l      d0, d1
004424: 2f410018     move.l     d1, $18(a7)
004428: 202f0014     move.l     $14(a7), d0
00442c: 4c2f00000018 mulu.l     $18(a7), d0
004432: 4c7c080000000064 divs.l     #$64, d0
00443a: 222f0014     move.l     $14(a7), d1
00443e: d2af0018     add.l      $18(a7), d1
004442: 9280         sub.l      d0, d1
004444: 2f410014     move.l     d1, $14(a7)
004448: 202f0010     move.l     $10(a7), d0
00444c: 4c2f00000014 mulu.l     $14(a7), d0
004452: 4c7c080000000064 divs.l     #$64, d0
00445a: 222f0010     move.l     $10(a7), d1
00445e: d2af0014     add.l      $14(a7), d1
004462: 9280         sub.l      d0, d1
004464: 2f410010     move.l     d1, $10(a7)
004468: 202f0004     move.l     $4(a7), d0
00446c: 4c2f00000010 mulu.l     $10(a7), d0
004472: 4c7c080000000064 divs.l     #$64, d0
00447a: 222f0004     move.l     $4(a7), d1
00447e: d2af0010     add.l      $10(a7), d1
004482: 9280         sub.l      d0, d1
004484: 2f410004     move.l     d1, $4(a7)
004488: 2017         move.l     (a7), d0
00448a: 4c2f00000004 mulu.l     $4(a7), d0
004490: 4c7c080000000064 divs.l     #$64, d0
004498: 2217         move.l     (a7), d1
00449a: d2af0004     add.l      $4(a7), d1
00449e: 9280         sub.l      d0, d1
0044a0: 2e81         move.l     d1, (a7)
0044a2: 2017         move.l     (a7), d0
0044a4: 4e5d         unlk       a5
0044a6: 4e75         rts        
0044a8: 4e550000     link.w     a5, #$0
0044ac: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
0044b0: 2800         move.l     d0, d4
0044b2: 4fefffb8     lea.l      -$48(a7), a7
0044b6: 95ca         suba.l     a2, a2
0044b8: 99cc         suba.l     a4, a4
0044ba: 7c00         moveq      #$0, d6
0044bc: 42af0030     clr.l      $30(a7)
0044c0: 42af0008     clr.l      $8(a7)
0044c4: 42af0004     clr.l      $4(a7)
0044c8: 206e8500     movea.l    -$7b00(a6), a0
0044cc: 0c2800010010 cmpi.b     #$1, $10(a0)
0044d2: 670001d8     beq.w      $46ac
0044d6: 206e8500     movea.l    -$7b00(a6), a0
0044da: 0c28000c0010 cmpi.b     #$c, $10(a0)
0044e0: 670001ca     beq.w      $46ac
0044e4: 206e8500     movea.l    -$7b00(a6), a0
0044e8: 0c28000a0010 cmpi.b     #$a, $10(a0)
0044ee: 670001bc     beq.w      $46ac
0044f2: 6100f888     bsr.w      $3d7c
0044f6: 2440         movea.l    d0, a2
0044f8: 200a         move.l     a2, d0
0044fa: 66000178     bne.w      $4674
0044fe: 6100f7dc     bsr.w      $3cdc
004502: 2f40003c     move.l     d0, $3c(a7)
004506: 6100f4f2     bsr.w      $39fa
00450a: 2e00         move.l     d0, d7
00450c: 6100f5c8     bsr.w      $3ad6
004510: 2f400038     move.l     d0, $38(a7)
004514: 6100f6e0     bsr.w      $3bf6
004518: 2f400044     move.l     d0, $44(a7)
00451c: 6100f932     bsr.w      $3e50
004520: 2f400040     move.l     d0, $40(a7)
004524: 6100fb56     bsr.w      $407c
004528: 2f400034     move.l     d0, $34(a7)
00452c: 7a00         moveq      #$0, d5
00452e: 266e8504     movea.l    -$7afc(a6), a3
004532: 6000012e     bra.w      $4662
004536: 266b0004     movea.l    $4(a3), a3
00453a: 4a2b0020     tst.b      $20(a3)
00453e: 67000122     beq.w      $4662
004542: 0c2b00010057 cmpi.b     #$1, $57(a3)
004548: 6708         beq.b      $4552
00454a: 0c2b00030057 cmpi.b     #$3, $57(a3)
004550: 6604         bne.b      $4556
004552: 7001         moveq      #$1, d0
004554: 6002         bra.b      $4558
004556: 7000         moveq      #$0, d0
004558: 0c000001     cmpi.b     #$1, d0
00455c: 6626         bne.b      $4584
00455e: 206e8504     movea.l    -$7afc(a6), a0
004562: 0c2800020057 cmpi.b     #$2, $57(a0)
004568: 671a         beq.b      $4584
00456a: 206e8504     movea.l    -$7afc(a6), a0
00456e: 0c2800010057 cmpi.b     #$1, $57(a0)
004574: 670e         beq.b      $4584
004576: 206e8504     movea.l    -$7afc(a6), a0
00457a: 0c2800030057 cmpi.b     #$3, $57(a0)
004580: 660000e0     bne.w      $4662
004584: 0c2b0037002e cmpi.b     #$37, $2e(a3)
00458a: 670000d6     beq.w      $4662
00458e: 4a2b0055     tst.b      $55(a3)
004592: 6714         beq.b      $45a8
004594: 48780002     pea.l      $2.w
004598: 7201         moveq      #$1, d1
00459a: 200b         move.l     a3, d0
00459c: 6100e602     bsr.w      $2ba0
0045a0: 588f         addq.l     #$4, a7
0045a2: 4a00         tst.b      d0
0045a4: 670000bc     beq.w      $4662
0045a8: 2207         move.l     d7, d1
0045aa: 200b         move.l     a3, d0
0045ac: 6100fb78     bsr.w      $4126
0045b0: 2f400028     move.l     d0, $28(a7)
0045b4: 222f0038     move.l     $38(a7), d1
0045b8: 200b         move.l     a3, d0
0045ba: 6100fb84     bsr.w      $4140
0045be: 2f400010     move.l     d0, $10(a7)
0045c2: 222f003c     move.l     $3c(a7), d1
0045c6: 200b         move.l     a3, d0
0045c8: 6100fb90     bsr.w      $415a
0045cc: 2f40002c     move.l     d0, $2c(a7)
0045d0: 222f0044     move.l     $44(a7), d1
0045d4: 200b         move.l     a3, d0
0045d6: 6100fb9c     bsr.w      $4174
0045da: 2f400018     move.l     d0, $18(a7)
0045de: 222f0040     move.l     $40(a7), d1
0045e2: 200b         move.l     a3, d0
0045e4: 6100fbc2     bsr.w      $41a8
0045e8: 2f400024     move.l     d0, $24(a7)
0045ec: 222f0034     move.l     $34(a7), d1
0045f0: 200b         move.l     a3, d0
0045f2: 6100fc06     bsr.w      $41fa
0045f6: 2f400020     move.l     d0, $20(a7)
0045fa: 42af0014     clr.l      $14(a7)
0045fe: 200b         move.l     a3, d0
004600: 6100fc7e     bsr.w      $4280
004604: 2f40001c     move.l     d0, $1c(a7)
004608: 2f2f001c     move.l     $1c(a7), -(a7)
00460c: 2f2f0018     move.l     $18(a7), -(a7)
004610: 2f2f0028     move.l     $28(a7), -(a7)
004614: 2f2f0030     move.l     $30(a7), -(a7)
004618: 2f2f0028     move.l     $28(a7), -(a7)
00461c: 2f2f0040     move.l     $40(a7), -(a7)
004620: 222f0040     move.l     $40(a7), d1
004624: 202f0028     move.l     $28(a7), d0
004628: 6100fd96     bsr.w      $43c0
00462c: 4fef0018     lea.l      $18(a7), a7
004630: 2f40000c     move.l     d0, $c(a7)
004634: 202f000c     move.l     $c(a7), d0
004638: b0af0008     cmp.l      $8(a7), d0
00463c: 6f12         ble.b      $4650
00463e: 2f6f00080004 move.l     $8(a7), $4(a7)
004644: 2c0c         move.l     a4, d6
004646: 2f6f000c0008 move.l     $c(a7), $8(a7)
00464c: 284b         movea.l    a3, a4
00464e: 6012         bra.b      $4662
004650: 202f000c     move.l     $c(a7), d0
004654: b0af0004     cmp.l      $4(a7), d0
004658: 6f08         ble.b      $4662
00465a: 2f6f000c0004 move.l     $c(a7), $4(a7)
004660: 2c0b         move.l     a3, d6
004662: 206e8500     movea.l    -$7b00(a6), a0
004666: 2005         move.l     d5, d0
004668: 5285         addq.l     #$1, d5
00466a: b0a8004e     cmp.l      $4e(a0), d0
00466e: 6d00fec6     blt.w      $4536
004672: 6008         bra.b      $467c
004674: 7064         moveq      #$64, d0
004676: 2f400008     move.l     d0, $8(a7)
00467a: 284a         movea.l    a2, a4
00467c: 7037         moveq      #$37, d0
00467e: b0af0008     cmp.l      $8(a7), d0
004682: 6e1e         bgt.b      $46a2
004684: 4a86         tst.l      d6
004686: 671c         beq.b      $46a4
004688: 2046         movea.l    d6, a0
00468a: 102c002f     move.b     $2f(a4), d0
00468e: b028002f     cmp.b      $2f(a0), d0
004692: 6710         beq.b      $46a4
004694: 202f0008     move.l     $8(a7), d0
004698: 90af0004     sub.l      $4(a7), d0
00469c: 7201         moveq      #$1, d1
00469e: b280         cmp.l      d0, d1
0046a0: 6f02         ble.b      $46a4
0046a2: 99cc         suba.l     a4, a4
0046a4: 206e8500     movea.l    -$7b00(a6), a0
0046a8: 214c0024     move.l     a4, $24(a0)
0046ac: 4fef0048     lea.l      $48(a7), a7
0046b0: 4ced1df2ffdc movem.l    -$24(a5), d1/d4-d7/a0/a2-a4
0046b6: 4e5d         unlk       a5
0046b8: 4e75         rts        
0046ba: 4e550000     link.w     a5, #$0
0046be: 48e78020     movem.l    d0/a2, -(a7)
0046c2: 6100f8ac     bsr.w      $3f70
0046c6: 2440         movea.l    d0, a2
0046c8: 200a         move.l     a2, d0
0046ca: 6706         beq.b      $46d2
0046cc: 157c0037002e move.b     #$37, $2e(a2)
0046d2: 4ced0400fffc movem.l    -$4(a5), a2
0046d8: 4e5d         unlk       a5
0046da: 4e75         rts        
0046dc: 4e550000     link.w     a5, #$0
0046e0: 48e78ef0     movem.l    d0/d4-d6/a0-a3, -(a7)
0046e4: 95ca         suba.l     a2, a2
0046e6: 7c00         moveq      #$0, d6
0046e8: 206e8500     movea.l    -$7b00(a6), a0
0046ec: 226e8500     movea.l    -$7b00(a6), a1
0046f0: 2029004e     move.l     $4e(a1), d0
0046f4: b0a8004a     cmp.l      $4a(a0), d0
0046f8: 6656         bne.b      $4750
0046fa: 206e8504     movea.l    -$7afc(a6), a0
0046fe: 4a280057     tst.b      $57(a0)
004702: 674c         beq.b      $4750
004704: 206e8500     movea.l    -$7b00(a6), a0
004708: 4aa80024     tst.l      $24(a0)
00470c: 6742         beq.b      $4750
00470e: 7800         moveq      #$0, d4
004710: 266e8504     movea.l    -$7afc(a6), a3
004714: 6022         bra.b      $4738
004716: 266b0004     movea.l    $4(a3), a3
00471a: 4a2b0020     tst.b      $20(a3)
00471e: 6718         beq.b      $4738
004720: 0c2b0037002e cmpi.b     #$37, $2e(a3)
004726: 6710         beq.b      $4738
004728: 200b         move.l     a3, d0
00472a: 6100faea     bsr.w      $4216
00472e: 2a00         move.l     d0, d5
004730: ba86         cmp.l      d6, d5
004732: 6d04         blt.b      $4738
004734: 2c05         move.l     d5, d6
004736: 244b         movea.l    a3, a2
004738: 206e8500     movea.l    -$7b00(a6), a0
00473c: 2004         move.l     d4, d0
00473e: 5284         addq.l     #$1, d4
004740: b0a8004e     cmp.l      $4e(a0), d0
004744: 6dd0         blt.b      $4716
004746: 7037         moveq      #$37, d0
004748: b086         cmp.l      d6, d0
00474a: 6f0c         ble.b      $4758
00474c: 95ca         suba.l     a2, a2
00474e: 6008         bra.b      $4758
004750: 206e8500     movea.l    -$7b00(a6), a0
004754: 24680024     movea.l    $24(a0), a2
004758: 200a         move.l     a2, d0
00475a: 6712         beq.b      $476e
00475c: 61000e48     bsr.w      $55a6
004760: 4a00         tst.b      d0
004762: 660a         bne.b      $476e
004764: 61000d1a     bsr.w      $5480
004768: 4a00         tst.b      d0
00476a: 67000094     beq.w      $4800
00476e: 7800         moveq      #$0, d4
004770: 266e8504     movea.l    -$7afc(a6), a3
004774: 6000006c     bra.w      $47e2
004778: 266b0004     movea.l    $4(a3), a3
00477c: 4a2b0020     tst.b      $20(a3)
004780: 67000060     beq.w      $47e2
004784: 0c2b0037002e cmpi.b     #$37, $2e(a3)
00478a: 6756         beq.b      $47e2
00478c: 6028         bra.b      $47b6
00478e: 177c000b002e move.b     #$b, $2e(a3)
004794: 604c         bra.b      $47e2
004796: 177c0016002e move.b     #$16, $2e(a3)
00479c: 6044         bra.b      $47e2
00479e: 177c0042002e move.b     #$42, $2e(a3)
0047a4: 603c         bra.b      $47e2
0047a6: 177c0037002e move.b     #$37, $2e(a3)
0047ac: 6034         bra.b      $47e2
0047ae: 177c004d002e move.b     #$4d, $2e(a3)
0047b4: 602c         bra.b      $47e2
0047b6: 7000         moveq      #$0, d0
0047b8: 102b002f     move.b     $2f(a3), d0
0047bc: 0c400016     cmpi.w     #$16, d0
0047c0: 67d4         beq.b      $4796
0047c2: 620e         bhi.b      $47d2
0047c4: 0c00000b     cmpi.b     #$b, d0
0047c8: 67c4         beq.b      $478e
0047ca: 62e2         bhi.b      $47ae
0047cc: 4a00         tst.b      d0
0047ce: 67de         beq.b      $47ae
0047d0: 60dc         bra.b      $47ae
0047d2: 0c40002c     cmpi.w     #$2c, d0
0047d6: 67ce         beq.b      $47a6
0047d8: 62d4         bhi.b      $47ae
0047da: 0c000021     cmpi.b     #$21, d0
0047de: 67be         beq.b      $479e
0047e0: 60cc         bra.b      $47ae
0047e2: 206e8500     movea.l    -$7b00(a6), a0
0047e6: 2004         move.l     d4, d0
0047e8: 5284         addq.l     #$1, d4
0047ea: b0a8004e     cmp.l      $4e(a0), d0
0047ee: 6d00ff88     blt.w      $4778
0047f2: 206e8500     movea.l    -$7b00(a6), a0
0047f6: 26680024     movea.l    $24(a0), a3
0047fa: 200b         move.l     a3, d0
0047fc: 60000096     bra.w      $4894
004800: 266e8504     movea.l    -$7afc(a6), a3
004804: 6036         bra.b      $483c
004806: 266b0004     movea.l    $4(a3), a3
00480a: 206e8500     movea.l    -$7b00(a6), a0
00480e: b7e80024     cmpa.l     $24(a0), a3
004812: 6728         beq.b      $483c
004814: 4a2b0020     tst.b      $20(a3)
004818: 6722         beq.b      $483c
00481a: 0c2b0037002e cmpi.b     #$37, $2e(a3)
004820: 671a         beq.b      $483c
004822: 206e8500     movea.l    -$7b00(a6), a0
004826: 0c280002006e cmpi.b     #$2, $6e(a0)
00482c: 6608         bne.b      $4836
00482e: 177c0016002e move.b     #$16, $2e(a3)
004834: 6006         bra.b      $483c
004836: 177c000b002e move.b     #$b, $2e(a3)
00483c: b7ca         cmpa.l     a2, a3
00483e: 66c6         bne.b      $4806
004840: 177c0042002e move.b     #$42, $2e(a3)
004846: 264a         movea.l    a2, a3
004848: 6036         bra.b      $4880
00484a: 266b0004     movea.l    $4(a3), a3
00484e: 4a2b0020     tst.b      $20(a3)
004852: 672c         beq.b      $4880
004854: 206e8500     movea.l    -$7b00(a6), a0
004858: b7e80024     cmpa.l     $24(a0), a3
00485c: 6722         beq.b      $4880
00485e: 0c2b0037002e cmpi.b     #$37, $2e(a3)
004864: 671a         beq.b      $4880
004866: 206e8500     movea.l    -$7b00(a6), a0
00486a: 0c280002006e cmpi.b     #$2, $6e(a0)
004870: 6608         bne.b      $487a
004872: 177c000b002e move.b     #$b, $2e(a3)
004878: 6006         bra.b      $4880
00487a: 177c0016002e move.b     #$16, $2e(a3)
004880: b7ee8504     cmpa.l     -$7afc(a6), a3
004884: 66c4         bne.b      $484a
004886: 206e8500     movea.l    -$7b00(a6), a0
00488a: 26680024     movea.l    $24(a0), a3
00488e: 200b         move.l     a3, d0
004890: 670a         beq.b      $489c
004892: b7ca         cmpa.l     a2, a3
004894: 6706         beq.b      $489c
004896: 177c004d002e move.b     #$4d, $2e(a3)
00489c: 4ced0f70ffe4 movem.l    -$1c(a5), d4-d6/a0-a3
0048a2: 4e5d         unlk       a5
0048a4: 4e75         rts        
0048a6: 4e550000     link.w     a5, #$0
0048aa: 48e7c080     movem.l    d0-d1/a0, -(a7)
0048ae: 206e8500     movea.l    -$7b00(a6), a0
0048b2: 0c2800130010 cmpi.b     #$13, $10(a0)
0048b8: 6628         bne.b      $48e2
0048ba: 206e8500     movea.l    -$7b00(a6), a0
0048be: 0c2800370044 cmpi.b     #$37, $44(a0)
0048c4: 671c         beq.b      $48e2
0048c6: 7044         moveq      #$44, d0
0048c8: d0ae8508     add.l      -$7af8(a6), d0
0048cc: 2200         move.l     d0, d1
0048ce: 7044         moveq      #$44, d0
0048d0: d0ae8504     add.l      -$7afc(a6), d0
0048d4: 206e8ce6     movea.l    -$731a(a6), a0
0048d8: 4e90         jsr        (a0)
0048da: 4a00         tst.b      d0
0048dc: 6704         beq.b      $48e2
0048de: 7000         moveq      #$0, d0
0048e0: 6002         bra.b      $48e4
0048e2: 7001         moveq      #$1, d0
0048e4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0048ea: 4e5d         unlk       a5
0048ec: 4e75         rts        
0048ee: 4e550000     link.w     a5, #$0
0048f2: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0048f6: 518f         subq.l     #$8, a7
0048f8: 7801         moveq      #$1, d4
0048fa: 206e8500     movea.l    -$7b00(a6), a0
0048fe: 0c28000e0010 cmpi.b     #$e, $10(a0)
004904: 6612         bne.b      $4918
004906: 206e8500     movea.l    -$7b00(a6), a0
00490a: 7023         moveq      #$23, d0
00490c: b0a8004a     cmp.l      $4a(a0), d0
004910: 6c06         bge.b      $4918
004912: 7000         moveq      #$0, d0
004914: 600000ac     bra.w      $49c2
004918: 202e8504     move.l     -$7afc(a6), d0
00491c: b0ae8508     cmp.l      -$7af8(a6), d0
004920: 6606         bne.b      $4928
004922: 7001         moveq      #$1, d0
004924: 6000009c     bra.w      $49c2
004928: 206e8500     movea.l    -$7b00(a6), a0
00492c: 24680020     movea.l    $20(a0), a2
004930: 60000088     bra.w      $49ba
004934: 2652         movea.l    (a2), a3
004936: 4a2a001e     tst.b      $1e(a2)
00493a: 666c         bne.b      $49a8
00493c: 200a         move.l     a2, d0
00493e: 6100e0f4     bsr.w      $2a34
004942: 7201         moveq      #$1, d1
004944: b280         cmp.l      d0, d1
004946: 6c000070     bge.w      $49b8
00494a: b5ee8504     cmpa.l     -$7afc(a6), a2
00494e: 6764         beq.b      $49b4
004950: b5ee8508     cmpa.l     -$7af8(a6), a2
004954: 675e         beq.b      $49b4
004956: 4857         pea.l      (a7)
004958: 7200         moveq      #$0, d1
00495a: 7000         moveq      #$0, d0
00495c: 206e8cb2     movea.l    -$734e(a6), a0
004960: 4e90         jsr        (a0)
004962: 588f         addq.l     #$4, a7
004964: 25570044     move.l     (a7), $44(a2)
004968: 256f00040048 move.l     $4(a7), $48(a2)
00496e: 357c03e7002c move.w     #$3e7, $2c(a2)
004974: 157c0009001e move.b     #$9, $1e(a2)
00497a: 220a         move.l     a2, d1
00497c: 206e8500     movea.l    -$7b00(a6), a0
004980: 20280020     move.l     $20(a0), d0
004984: 6100226e     bsr.w      $6bf4
004988: 206e8500     movea.l    -$7b00(a6), a0
00498c: 21400020     move.l     d0, $20(a0)
004990: 220a         move.l     a2, d1
004992: 206e8500     movea.l    -$7b00(a6), a0
004996: 20280020     move.l     $20(a0), d0
00499a: 610021e8     bsr.w      $6b84
00499e: 206e8500     movea.l    -$7b00(a6), a0
0049a2: 21400020     move.l     d0, $20(a0)
0049a6: 6010         bra.b      $49b8
0049a8: b5ee8504     cmpa.l     -$7afc(a6), a2
0049ac: 6706         beq.b      $49b4
0049ae: b5ee8508     cmpa.l     -$7af8(a6), a2
0049b2: 6604         bne.b      $49b8
0049b4: 7800         moveq      #$0, d4
0049b6: 6008         bra.b      $49c0
0049b8: 244b         movea.l    a3, a2
0049ba: 200a         move.l     a2, d0
0049bc: 6600ff76     bne.w      $4934
0049c0: 1004         move.b     d4, d0
0049c2: 508f         addq.l     #$8, a7
0049c4: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
0049ca: 4e5d         unlk       a5
0049cc: 4e75         rts        
0049ce: 4e550000     link.w     a5, #$0
0049d2: 48e7ceb8     movem.l    d0-d1/d4-d6/a0/a2-a4, -(a7)
0049d6: 206e8504     movea.l    -$7afc(a6), a0
0049da: 24680008     movea.l    $8(a0), a2
0049de: 200a         move.l     a2, d0
0049e0: 670000ca     beq.w      $4aac
0049e4: 206e8504     movea.l    -$7afc(a6), a0
0049e8: 3028002c     move.w     $2c(a0), d0
0049ec: d06a002c     add.w      $2c(a2), d0
0049f0: 3a00         move.w     d0, d5
0049f2: 0c4500b4     cmpi.w     #$b4, d5
0049f6: 6f06         ble.b      $49fe
0049f8: 04450168     subi.w     #$168, d5
0049fc: 6008         bra.b      $4a06
0049fe: 0c4500b4     cmpi.w     #$b4, d5
004a02: 6602         bne.b      $4a06
004a04: 7a00         moveq      #$0, d5
004a06: 3005         move.w     d5, d0
004a08: 6c02         bge.b      $4a0c
004a0a: 5240         addq.w     #$1, d0
004a0c: e240         asr.w      #$1, d0
004a0e: 3a00         move.w     d0, d5
004a10: 7c00         moveq      #$0, d6
004a12: 266e8504     movea.l    -$7afc(a6), a3
004a16: 602a         bra.b      $4a42
004a18: 266b0004     movea.l    $4(a3), a3
004a1c: b7ee8504     cmpa.l     -$7afc(a6), a3
004a20: 6720         beq.b      $4a42
004a22: 302b002c     move.w     $2c(a3), d0
004a26: 9045         sub.w      d5, d0
004a28: 3800         move.w     d0, d4
004a2a: 0c4400b4     cmpi.w     #$b4, d4
004a2e: 6f04         ble.b      $4a34
004a30: 04440168     subi.w     #$168, d4
004a34: 0c44ff4c     cmpi.w     #$ff4c, d4
004a38: 6c04         bge.b      $4a3e
004a3a: 06440168     addi.w     #$168, d4
004a3e: 3744002c     move.w     d4, $2c(a3)
004a42: 206e8500     movea.l    -$7b00(a6), a0
004a46: 2006         move.l     d6, d0
004a48: 5286         addq.l     #$1, d6
004a4a: b0a8004e     cmp.l      $4e(a0), d0
004a4e: 6dc8         blt.b      $4a18
004a50: 357cff4c002c move.w     #$ff4c, $2c(a2)
004a56: 206e8500     movea.l    -$7b00(a6), a0
004a5a: 0c2800010010 cmpi.b     #$1, $10(a0)
004a60: 664a         bne.b      $4aac
004a62: 7034         moveq      #$34, d0
004a64: d0ae8504     add.l      -$7afc(a6), d0
004a68: 2200         move.l     d0, d1
004a6a: 7044         moveq      #$44, d0
004a6c: d0ae8504     add.l      -$7afc(a6), d0
004a70: 206e8ce6     movea.l    -$731a(a6), a0
004a74: 4e90         jsr        (a0)
004a76: 4a00         tst.b      d0
004a78: 671a         beq.b      $4a94
004a7a: 302b0028     move.w     $28(a3), d0
004a7e: d045         add.w      d5, d0
004a80: 3800         move.w     d0, d4
004a82: 4a44         tst.w      d4
004a84: 6c04         bge.b      $4a8a
004a86: 06440168     addi.w     #$168, d4
004a8a: 206e8504     movea.l    -$7afc(a6), a0
004a8e: 31440028     move.w     d4, $28(a0)
004a92: 6018         bra.b      $4aac
004a94: 302b002a     move.w     $2a(a3), d0
004a98: d045         add.w      d5, d0
004a9a: 3800         move.w     d0, d4
004a9c: 4a44         tst.w      d4
004a9e: 6c04         bge.b      $4aa4
004aa0: 06440168     addi.w     #$168, d4
004aa4: 206e8504     movea.l    -$7afc(a6), a0
004aa8: 3144002a     move.w     d4, $2a(a0)
004aac: 7c00         moveq      #$0, d6
004aae: 266e8504     movea.l    -$7afc(a6), a3
004ab2: 60000078     bra.w      $4b2c
004ab6: 266b0004     movea.l    $4(a3), a3
004aba: 286b0008     movea.l    $8(a3), a4
004abe: b7ee8504     cmpa.l     -$7afc(a6), a3
004ac2: 6768         beq.b      $4b2c
004ac4: 206e8504     movea.l    -$7afc(a6), a0
004ac8: b7e80008     cmpa.l     $8(a0), a3
004acc: 675e         beq.b      $4b2c
004ace: 200c         move.l     a4, d0
004ad0: 675a         beq.b      $4b2c
004ad2: 302b002c     move.w     $2c(a3), d0
004ad6: 48c0         ext.l      d0
004ad8: 322c002c     move.w     $2c(a4), d1
004adc: 48c1         ext.l      d1
004ade: d081         add.l      d1, d0
004ae0: 6c02         bge.b      $4ae4
004ae2: 5280         addq.l     #$1, d0
004ae4: e280         asr.l      #$1, d0
004ae6: 3800         move.w     d0, d4
004ae8: 302c002c     move.w     $2c(a4), d0
004aec: 48c0         ext.l      d0
004aee: 322b002c     move.w     $2c(a3), d1
004af2: 48c1         ext.l      d1
004af4: 9280         sub.l      d0, d1
004af6: 6c12         bge.b      $4b0a
004af8: 302c002c     move.w     $2c(a4), d0
004afc: 48c0         ext.l      d0
004afe: 322b002c     move.w     $2c(a3), d1
004b02: 48c1         ext.l      d1
004b04: 9280         sub.l      d0, d1
004b06: 4481         neg.l      d1
004b08: 600e         bra.b      $4b18
004b0a: 302c002c     move.w     $2c(a4), d0
004b0e: 48c0         ext.l      d0
004b10: 322b002c     move.w     $2c(a3), d1
004b14: 48c1         ext.l      d1
004b16: 9280         sub.l      d0, d1
004b18: 0c81000000b4 cmpi.l     #$b4, d1
004b1e: 6f04         ble.b      $4b24
004b20: 044400b4     subi.w     #$b4, d4
004b24: 3744002c     move.w     d4, $2c(a3)
004b28: 3944002c     move.w     d4, $2c(a4)
004b2c: 206e8500     movea.l    -$7b00(a6), a0
004b30: 2006         move.l     d6, d0
004b32: 5286         addq.l     #$1, d6
004b34: b0a8004e     cmp.l      $4e(a0), d0
004b38: 6d00ff7c     blt.w      $4ab6
004b3c: 4ced1d72ffe0 movem.l    -$20(a5), d1/d4-d6/a0/a2-a4
004b42: 4e5d         unlk       a5
004b44: 4e75         rts        
004b46: 4e550000     link.w     a5, #$0
004b4a: 48e7ccc0     movem.l    d0-d1/d4-d5/a0-a1, -(a7)
004b4e: 598f         subq.l     #$4, a7
004b50: 202e8508     move.l     -$7af8(a6), d0
004b54: 6100ea42     bsr.w      $3598
004b58: 2800         move.l     d0, d4
004b5a: 206e8500     movea.l    -$7b00(a6), a0
004b5e: 1a280010     move.b     $10(a0), d5
004b62: 206e8500     movea.l    -$7b00(a6), a0
004b66: 4a280013     tst.b      $13(a0)
004b6a: 6718         beq.b      $4b84
004b6c: 206e8500     movea.l    -$7b00(a6), a0
004b70: 202e8508     move.l     -$7af8(a6), d0
004b74: b0a80024     cmp.l      $24(a0), d0
004b78: 660a         bne.b      $4b84
004b7a: 206e8500     movea.l    -$7b00(a6), a0
004b7e: 117c00420044 move.b     #$42, $44(a0)
004b84: 206e8508     movea.l    -$7af8(a6), a0
004b88: 0c280037002e cmpi.b     #$37, $2e(a0)
004b8e: 660e         bne.b      $4b9e
004b90: 206e8500     movea.l    -$7b00(a6), a0
004b94: 117c00370044 move.b     #$37, $44(a0)
004b9a: 6000011e     bra.w      $4cba
004b9e: 0c05000a     cmpi.b     #$a, d5
004ba2: 67000108     beq.w      $4cac
004ba6: 0c050006     cmpi.b     #$6, d5
004baa: 6630         bne.b      $4bdc
004bac: 7001         moveq      #$1, d0
004bae: b084         cmp.l      d4, d0
004bb0: 661c         bne.b      $4bce
004bb2: 206e8500     movea.l    -$7b00(a6), a0
004bb6: 0c280002006e cmpi.b     #$2, $6e(a0)
004bbc: 67000086     beq.w      $4c44
004bc0: 206e8500     movea.l    -$7b00(a6), a0
004bc4: 117c000b0044 move.b     #$b, $44(a0)
004bca: 600000ee     bra.w      $4cba
004bce: 206e8500     movea.l    -$7b00(a6), a0
004bd2: 0c280002006e cmpi.b     #$2, $6e(a0)
004bd8: 67e6         beq.b      $4bc0
004bda: 6068         bra.b      $4c44
004bdc: 0c050007     cmpi.b     #$7, d5
004be0: 6636         bne.b      $4c18
004be2: 7001         moveq      #$1, d0
004be4: b084         cmp.l      d4, d0
004be6: 660e         bne.b      $4bf6
004be8: 206e8500     movea.l    -$7b00(a6), a0
004bec: 0c280002006e cmpi.b     #$2, $6e(a0)
004bf2: 6750         beq.b      $4c44
004bf4: 60ca         bra.b      $4bc0
004bf6: 7002         moveq      #$2, d0
004bf8: b084         cmp.l      d4, d0
004bfa: 660e         bne.b      $4c0a
004bfc: 206e8500     movea.l    -$7b00(a6), a0
004c00: 117c00420044 move.b     #$42, $44(a0)
004c06: 600000b2     bra.w      $4cba
004c0a: 206e8500     movea.l    -$7b00(a6), a0
004c0e: 0c280002006e cmpi.b     #$2, $6e(a0)
004c14: 67aa         beq.b      $4bc0
004c16: 602c         bra.b      $4c44
004c18: 0c050002     cmpi.b     #$2, d5
004c1c: 6700008e     beq.w      $4cac
004c20: 0c05000d     cmpi.b     #$d, d5
004c24: 67000086     beq.w      $4cac
004c28: 0c050003     cmpi.b     #$3, d5
004c2c: 6700007e     beq.w      $4cac
004c30: 0c05000e     cmpi.b     #$e, d5
004c34: 661a         bne.b      $4c50
004c36: 206e8500     movea.l    -$7b00(a6), a0
004c3a: 0c280002006e cmpi.b     #$2, $6e(a0)
004c40: 6600ff7e     bne.w      $4bc0
004c44: 206e8500     movea.l    -$7b00(a6), a0
004c48: 117c00160044 move.b     #$16, $44(a0)
004c4e: 606a         bra.b      $4cba
004c50: 0c050005     cmpi.b     #$5, d5
004c54: 6610         bne.b      $4c66
004c56: 206e8508     movea.l    -$7af8(a6), a0
004c5a: 226e8500     movea.l    -$7b00(a6), a1
004c5e: 1368002f0044 move.b     $2f(a0), $44(a1)
004c64: 6054         bra.b      $4cba
004c66: 206e8500     movea.l    -$7b00(a6), a0
004c6a: 202e8508     move.l     -$7af8(a6), d0
004c6e: b0a80024     cmp.l      $24(a0), d0
004c72: 6638         bne.b      $4cac
004c74: 206e8500     movea.l    -$7b00(a6), a0
004c78: 0c2800010033 cmpi.b     #$1, $33(a0)
004c7e: 6620         bne.b      $4ca0
004c80: 206e8504     movea.l    -$7afc(a6), a0
004c84: 7000         moveq      #$0, d0
004c86: 1028005a     move.b     $5a(a0), d0
004c8a: 206e8508     movea.l    -$7af8(a6), a0
004c8e: 7200         moveq      #$0, d1
004c90: 1228005a     move.b     $5a(a0), d1
004c94: 9240         sub.w      d0, d1
004c96: 48c1         ext.l      d1
004c98: 2e81         move.l     d1, (a7)
004c9a: 7001         moveq      #$1, d0
004c9c: b081         cmp.l      d1, d0
004c9e: 6f0c         ble.b      $4cac
004ca0: 206e8500     movea.l    -$7b00(a6), a0
004ca4: 117c004d0044 move.b     #$4d, $44(a0)
004caa: 600e         bra.b      $4cba
004cac: 206e8508     movea.l    -$7af8(a6), a0
004cb0: 226e8500     movea.l    -$7b00(a6), a1
004cb4: 1368002e0044 move.b     $2e(a0), $44(a1)
004cba: 588f         addq.l     #$4, a7
004cbc: 4ced0332ffec movem.l    -$14(a5), d1/d4-d5/a0-a1
004cc2: 4e5d         unlk       a5
004cc4: 4e75         rts        
004cc6: 4e550000     link.w     a5, #$0
004cca: 48e78880     movem.l    d0/d4/a0, -(a7)
004cce: 206e8500     movea.l    -$7b00(a6), a0
004cd2: 0c2800030010 cmpi.b     #$3, $10(a0)
004cd8: 670c         beq.b      $4ce6
004cda: 206e8500     movea.l    -$7b00(a6), a0
004cde: 0c28000e0010 cmpi.b     #$e, $10(a0)
004ce4: 6608         bne.b      $4cee
004ce6: 61000d1a     bsr.w      $5a02
004cea: 2800         move.l     d0, d4
004cec: 6026         bra.b      $4d14
004cee: 206e8500     movea.l    -$7b00(a6), a0
004cf2: 0c28000b0044 cmpi.b     #$b, $44(a0)
004cf8: 6606         bne.b      $4d00
004cfa: 61000596     bsr.w      $5292
004cfe: 60ea         bra.b      $4cea
004d00: 206e8500     movea.l    -$7b00(a6), a0
004d04: 0c2800160044 cmpi.b     #$16, $44(a0)
004d0a: 6606         bne.b      $4d12
004d0c: 610005d4     bsr.w      $52e2
004d10: 60d8         bra.b      $4cea
004d12: 7800         moveq      #$0, d4
004d14: 206e8500     movea.l    -$7b00(a6), a0
004d18: 21440040     move.l     d4, $40(a0)
004d1c: 4ced0110fff8 movem.l    -$8(a5), d4/a0
004d22: 4e5d         unlk       a5
004d24: 4e75         rts        
004d26: 4e550000     link.w     a5, #$0
004d2a: 48e78880     movem.l    d0/d4/a0, -(a7)
004d2e: 7800         moveq      #$0, d4
004d30: 206e8500     movea.l    -$7b00(a6), a0
004d34: 0c2800010033 cmpi.b     #$1, $33(a0)
004d3a: 6606         bne.b      $4d42
004d3c: 7801         moveq      #$1, d4
004d3e: 60000090     bra.w      $4dd0
004d42: 206e8500     movea.l    -$7b00(a6), a0
004d46: 0c2800060010 cmpi.b     #$6, $10(a0)
004d4c: 67ee         beq.b      $4d3c
004d4e: 206e8500     movea.l    -$7b00(a6), a0
004d52: 0c2800070010 cmpi.b     #$7, $10(a0)
004d58: 67e2         beq.b      $4d3c
004d5a: 206e8500     movea.l    -$7b00(a6), a0
004d5e: 0c28000b0044 cmpi.b     #$b, $44(a0)
004d64: 6612         bne.b      $4d78
004d66: 206e8500     movea.l    -$7b00(a6), a0
004d6a: 7001         moveq      #$1, d0
004d6c: b0a80056     cmp.l      $56(a0), d0
004d70: 6604         bne.b      $4d76
004d72: 7801         moveq      #$1, d4
004d74: 6002         bra.b      $4d78
004d76: 7802         moveq      #$2, d4
004d78: 206e8500     movea.l    -$7b00(a6), a0
004d7c: 0c2800160044 cmpi.b     #$16, $44(a0)
004d82: 6612         bne.b      $4d96
004d84: 206e8500     movea.l    -$7b00(a6), a0
004d88: 7001         moveq      #$1, d0
004d8a: b0a8005a     cmp.l      $5a(a0), d0
004d8e: 6604         bne.b      $4d94
004d90: 7801         moveq      #$1, d4
004d92: 6002         bra.b      $4d96
004d94: 7802         moveq      #$2, d4
004d96: 206e8500     movea.l    -$7b00(a6), a0
004d9a: 0c2800420044 cmpi.b     #$42, $44(a0)
004da0: 6612         bne.b      $4db4
004da2: 206e8500     movea.l    -$7b00(a6), a0
004da6: 7001         moveq      #$1, d0
004da8: b0a8005e     cmp.l      $5e(a0), d0
004dac: 6604         bne.b      $4db2
004dae: 7801         moveq      #$1, d4
004db0: 6002         bra.b      $4db4
004db2: 7802         moveq      #$2, d4
004db4: 206e8500     movea.l    -$7b00(a6), a0
004db8: 0c2800370044 cmpi.b     #$37, $44(a0)
004dbe: 6610         bne.b      $4dd0
004dc0: 206e8500     movea.l    -$7b00(a6), a0
004dc4: 7001         moveq      #$1, d0
004dc6: b0a80062     cmp.l      $62(a0), d0
004dca: 6700ff70     beq.w      $4d3c
004dce: 7802         moveq      #$2, d4
004dd0: 206e8500     movea.l    -$7b00(a6), a0
004dd4: 11440011     move.b     d4, $11(a0)
004dd8: 4ced0110fff8 movem.l    -$8(a5), d4/a0
004dde: 4e5d         unlk       a5
004de0: 4e75         rts        
004de2: 4e550000     link.w     a5, #$0
004de6: 48e788a0     movem.l    d0/d4/a0/a2, -(a7)
004dea: 7801         moveq      #$1, d4
004dec: 206e8500     movea.l    -$7b00(a6), a0
004df0: 24680020     movea.l    $20(a0), a2
004df4: 6012         bra.b      $4e08
004df6: 4a2a001e     tst.b      $1e(a2)
004dfa: 6606         bne.b      $4e02
004dfc: 4a2a0057     tst.b      $57(a2)
004e00: 6604         bne.b      $4e06
004e02: 7800         moveq      #$0, d4
004e04: 6006         bra.b      $4e0c
004e06: 2452         movea.l    (a2), a2
004e08: 200a         move.l     a2, d0
004e0a: 66ea         bne.b      $4df6
004e0c: 206e8500     movea.l    -$7b00(a6), a0
004e10: 11440032     move.b     d4, $32(a0)
004e14: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
004e1a: 4e5d         unlk       a5
004e1c: 4e75         rts        
004e1e: 4e550000     link.w     a5, #$0
004e22: 48e78880     movem.l    d0/d4/a0, -(a7)
004e26: 7800         moveq      #$0, d4
004e28: 206e8500     movea.l    -$7b00(a6), a0
004e2c: 0c2800130010 cmpi.b     #$13, $10(a0)
004e32: 6628         bne.b      $4e5c
004e34: 206e8500     movea.l    -$7b00(a6), a0
004e38: 0c2800370044 cmpi.b     #$37, $44(a0)
004e3e: 6602         bne.b      $4e42
004e40: 7801         moveq      #$1, d4
004e42: 206e8500     movea.l    -$7b00(a6), a0
004e46: 0c2800420044 cmpi.b     #$42, $44(a0)
004e4c: 6602         bne.b      $4e50
004e4e: 7801         moveq      #$1, d4
004e50: 206e8500     movea.l    -$7b00(a6), a0
004e54: 0c28004d0044 cmpi.b     #$4d, $44(a0)
004e5a: 6602         bne.b      $4e5e
004e5c: 7801         moveq      #$1, d4
004e5e: 4a04         tst.b      d4
004e60: 6632         bne.b      $4e94
004e62: 206e8500     movea.l    -$7b00(a6), a0
004e66: 7001         moveq      #$1, d0
004e68: b0a80056     cmp.l      $56(a0), d0
004e6c: 6d0c         blt.b      $4e7a
004e6e: 206e8500     movea.l    -$7b00(a6), a0
004e72: 0c28000b0044 cmpi.b     #$b, $44(a0)
004e78: 6718         beq.b      $4e92
004e7a: 206e8500     movea.l    -$7b00(a6), a0
004e7e: 7001         moveq      #$1, d0
004e80: b0a8005a     cmp.l      $5a(a0), d0
004e84: 6d0e         blt.b      $4e94
004e86: 206e8500     movea.l    -$7b00(a6), a0
004e8a: 0c2800160044 cmpi.b     #$16, $44(a0)
004e90: 6602         bne.b      $4e94
004e92: 7801         moveq      #$1, d4
004e94: 1004         move.b     d4, d0
004e96: 4ced0110fff8 movem.l    -$8(a5), d4/a0
004e9c: 4e5d         unlk       a5
004e9e: 4e75         rts        
004ea0: 4e550000     link.w     a5, #$0
004ea4: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
004ea8: 598f         subq.l     #$4, a7
004eaa: 4297         clr.l      (a7)
004eac: 4aaf0004     tst.l      $4(a7)
004eb0: 6730         beq.b      $4ee2
004eb2: 4aaf0008     tst.l      $8(a7)
004eb6: 6f2a         ble.b      $4ee2
004eb8: 206f0004     movea.l    $4(a7), a0
004ebc: 24680028     movea.l    $28(a0), a2
004ec0: 7801         moveq      #$1, d4
004ec2: 6004         bra.b      $4ec8
004ec4: 2452         movea.l    (a2), a2
004ec6: 5284         addq.l     #$1, d4
004ec8: 200a         move.l     a2, d0
004eca: 6706         beq.b      $4ed2
004ecc: b8af0008     cmp.l      $8(a7), d4
004ed0: 6df2         blt.b      $4ec4
004ed2: 200a         move.l     a2, d0
004ed4: 670c         beq.b      $4ee2
004ed6: 4a2a0004     tst.b      $4(a2)
004eda: 6706         beq.b      $4ee2
004edc: 200a         move.l     a2, d0
004ede: 5880         addq.l     #$4, d0
004ee0: 2e80         move.l     d0, (a7)
004ee2: 2017         move.l     (a7), d0
004ee4: 588f         addq.l     #$4, a7
004ee6: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
004eec: 4e5d         unlk       a5
004eee: 4e75         rts        
004ef0: 4e550000     link.w     a5, #$0
004ef4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004ef8: 4fefffd8     lea.l      -$28(a7), a7
004efc: 4aae8508     tst.l      -$7af8(a6)
004f00: 6700019a     beq.w      $509c
004f04: 7034         moveq      #$34, d0
004f06: d0ae8508     add.l      -$7af8(a6), d0
004f0a: 2200         move.l     d0, d1
004f0c: 7044         moveq      #$44, d0
004f0e: d0ae8508     add.l      -$7af8(a6), d0
004f12: 206e8ce6     movea.l    -$731a(a6), a0
004f16: 4e90         jsr        (a0)
004f18: 4a00         tst.b      d0
004f1a: 6710         beq.b      $4f2c
004f1c: 206e8508     movea.l    -$7af8(a6), a0
004f20: 226e8500     movea.l    -$7b00(a6), a1
004f24: 236800600070 move.l     $60(a0), $70(a1)
004f2a: 600e         bra.b      $4f3a
004f2c: 206e8508     movea.l    -$7af8(a6), a0
004f30: 226e8500     movea.l    -$7b00(a6), a1
004f34: 236800640070 move.l     $64(a0), $70(a1)
004f3a: 206e8500     movea.l    -$7b00(a6), a0
004f3e: 2f6800700020 move.l     $70(a0), $20(a7)
004f44: 4aaf0020     tst.l      $20(a7)
004f48: 67000152     beq.w      $509c
004f4c: 2f6e85040024 move.l     -$7afc(a6), $24(a7)
004f52: 42af0010     clr.l      $10(a7)
004f56: 60000130     bra.w      $5088
004f5a: 206f0024     movea.l    $24(a7), a0
004f5e: 2f6800040024 move.l     $4(a0), $24(a7)
004f64: 206f0024     movea.l    $24(a7), a0
004f68: 4a280020     tst.b      $20(a0)
004f6c: 6700011a     beq.w      $5088
004f70: 202f0024     move.l     $24(a7), d0
004f74: b0ae8504     cmp.l      -$7afc(a6), d0
004f78: 6700010e     beq.w      $5088
004f7c: 7034         moveq      #$34, d0
004f7e: d0af0024     add.l      $24(a7), d0
004f82: 2200         move.l     d0, d1
004f84: 7044         moveq      #$44, d0
004f86: d0af0024     add.l      $24(a7), d0
004f8a: 206e8ce6     movea.l    -$731a(a6), a0
004f8e: 4e90         jsr        (a0)
004f90: 4a00         tst.b      d0
004f92: 670c         beq.b      $4fa0
004f94: 206f0024     movea.l    $24(a7), a0
004f98: 2f680064001c move.l     $64(a0), $1c(a7)
004f9e: 600a         bra.b      $4faa
004fa0: 206f0024     movea.l    $24(a7), a0
004fa4: 2f680060001c move.l     $60(a0), $1c(a7)
004faa: 4aaf001c     tst.l      $1c(a7)
004fae: 670000d8     beq.w      $5088
004fb2: 42af0018     clr.l      $18(a7)
004fb6: 600000c6     bra.w      $507e
004fba: 206f0020     movea.l    $20(a7), a0
004fbe: 202f0018     move.l     $18(a7), d0
004fc2: 22300c18     move.l     $18(a0, d0.l), d1
004fc6: 202e8500     move.l     -$7b00(a6), d0
004fca: 6100fed4     bsr.w      $4ea0
004fce: 2f40000c     move.l     d0, $c(a7)
004fd2: 206f0020     movea.l    $20(a7), a0
004fd6: 202f0018     move.l     $18(a7), d0
004fda: 22300c2c     move.l     $2c(a0, d0.l), d1
004fde: 202e8500     move.l     -$7b00(a6), d0
004fe2: 6100febc     bsr.w      $4ea0
004fe6: 2f400004     move.l     d0, $4(a7)
004fea: 42af0014     clr.l      $14(a7)
004fee: 60000080     bra.w      $5070
004ff2: 206f001c     movea.l    $1c(a7), a0
004ff6: 202f0014     move.l     $14(a7), d0
004ffa: 22300c18     move.l     $18(a0, d0.l), d1
004ffe: 202e8500     move.l     -$7b00(a6), d0
005002: 6100fe9c     bsr.w      $4ea0
005006: 2f400008     move.l     d0, $8(a7)
00500a: 206f001c     movea.l    $1c(a7), a0
00500e: 202f0014     move.l     $14(a7), d0
005012: 22300c2c     move.l     $2c(a0, d0.l), d1
005016: 202e8500     move.l     -$7b00(a6), d0
00501a: 6100fe84     bsr.w      $4ea0
00501e: 2e80         move.l     d0, (a7)
005020: 4aaf000c     tst.l      $c(a7)
005024: 6722         beq.b      $5048
005026: 4aaf0008     tst.l      $8(a7)
00502a: 671c         beq.b      $5048
00502c: 222f0008     move.l     $8(a7), d1
005030: 202f000c     move.l     $c(a7), d0
005034: 61004d8c     bsr.w      $9dc2
005038: 4a80         tst.l      d0
00503a: 660c         bne.b      $5048
00503c: 206f0020     movea.l    $20(a7), a0
005040: 202f0018     move.l     $18(a7), d0
005044: 42b00c18     clr.l      $18(a0, d0.l)
005048: 4aaf0004     tst.l      $4(a7)
00504c: 671e         beq.b      $506c
00504e: 4a97         tst.l      (a7)
005050: 671a         beq.b      $506c
005052: 2217         move.l     (a7), d1
005054: 202f0004     move.l     $4(a7), d0
005058: 61004d68     bsr.w      $9dc2
00505c: 4a80         tst.l      d0
00505e: 660c         bne.b      $506c
005060: 206f0020     movea.l    $20(a7), a0
005064: 202f0018     move.l     $18(a7), d0
005068: 42b00c2c     clr.l      $2c(a0, d0.l)
00506c: 52af0014     addq.l     #$1, $14(a7)
005070: 7005         moveq      #$5, d0
005072: b0af0014     cmp.l      $14(a7), d0
005076: 6e00ff7a     bgt.w      $4ff2
00507a: 52af0018     addq.l     #$1, $18(a7)
00507e: 7005         moveq      #$5, d0
005080: b0af0018     cmp.l      $18(a7), d0
005084: 6e00ff34     bgt.w      $4fba
005088: 206e8500     movea.l    -$7b00(a6), a0
00508c: 202f0010     move.l     $10(a7), d0
005090: 52af0010     addq.l     #$1, $10(a7)
005094: b0a8004e     cmp.l      $4e(a0), d0
005098: 6d00fec0     blt.w      $4f5a
00509c: 4fef0028     lea.l      $28(a7), a7
0050a0: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
0050a6: 4e5d         unlk       a5
0050a8: 4e75         rts        
0050aa: 4e550000     link.w     a5, #$0
0050ae: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
0050b2: 7800         moveq      #$0, d4
0050b4: 2d578500     move.l     (a7), -$7b00(a6)
0050b8: 2057         movea.l    (a7), a0
0050ba: 2d6800188504 move.l     $18(a0), -$7afc(a6)
0050c0: 2057         movea.l    (a7), a0
0050c2: 2d68001c8508 move.l     $1c(a0), -$7af8(a6)
0050c8: 4a2f001f     tst.b      $1f(a7)
0050cc: 6612         bne.b      $50e0
0050ce: 202e8500     move.l     -$7b00(a6), d0
0050d2: 61001536     bsr.w      $660a
0050d6: 4a00         tst.b      d0
0050d8: 6706         beq.b      $50e0
0050da: 7000         moveq      #$0, d0
0050dc: 6000014a     bra.w      $5228
0050e0: 2057         movea.l    (a7), a0
0050e2: 0c2800110010 cmpi.b     #$11, $10(a0)
0050e8: 6728         beq.b      $5112
0050ea: 2057         movea.l    (a7), a0
0050ec: 0c2800120010 cmpi.b     #$12, $10(a0)
0050f2: 671e         beq.b      $5112
0050f4: 2057         movea.l    (a7), a0
0050f6: 0c2800160010 cmpi.b     #$16, $10(a0)
0050fc: 6714         beq.b      $5112
0050fe: 2057         movea.l    (a7), a0
005100: 0c2800170010 cmpi.b     #$17, $10(a0)
005106: 670a         beq.b      $5112
005108: 2057         movea.l    (a7), a0
00510a: 0c2800180010 cmpi.b     #$18, $10(a0)
005110: 6602         bne.b      $5114
005112: 7801         moveq      #$1, d4
005114: 0c040001     cmpi.b     #$1, d4
005118: 670000e4     beq.w      $51fe
00511c: 6100d7b0     bsr.w      $28ce
005120: 6100f7cc     bsr.w      $48ee
005124: 1a00         move.b     d0, d5
005126: 4a05         tst.b      d5
005128: 67000094     beq.w      $51be
00512c: 6100dcfe     bsr.w      $2e2c
005130: 6100dd1a     bsr.w      $2e4c
005134: 6100d7d0     bsr.w      $2906
005138: 6100d958     bsr.w      $2a92
00513c: 6100d9a8     bsr.w      $2ae6
005140: 7000         moveq      #$0, d0
005142: 102f001f     move.b     $1f(a7), d0
005146: 6100dde2     bsr.w      $2f2a
00514a: 7000         moveq      #$0, d0
00514c: 102f0007     move.b     $7(a7), d0
005150: 6100e380     bsr.w      $34d2
005154: 6100e3c8     bsr.w      $351e
005158: 6100f874     bsr.w      $49ce
00515c: 6100e60c     bsr.w      $376a
005160: 6100f558     bsr.w      $46ba
005164: 61000524     bsr.w      $568a
005168: 7000         moveq      #$0, d0
00516a: 102f001f     move.b     $1f(a7), d0
00516e: 6100f338     bsr.w      $44a8
005172: 6100f568     bsr.w      $46dc
005176: 6100e79e     bsr.w      $3916
00517a: 1a00         move.b     d0, d5
00517c: 4a05         tst.b      d5
00517e: 673e         beq.b      $51be
005180: 61000f50     bsr.w      $60d2
005184: 6100dba8     bsr.w      $2d2e
005188: 61000c36     bsr.w      $5dc0
00518c: 61000e90     bsr.w      $601e
005190: 61000fa4     bsr.w      $6136
005194: 6100f9b0     bsr.w      $4b46
005198: 6100fb2c     bsr.w      $4cc6
00519c: 6100fb88     bsr.w      $4d26
0051a0: 6100fc40     bsr.w      $4de2
0051a4: 61000e0e     bsr.w      $5fb4
0051a8: 6100fc74     bsr.w      $4e1e
0051ac: 1800         move.b     d0, d4
0051ae: 4a2f001f     tst.b      $1f(a7)
0051b2: 6606         bne.b      $51ba
0051b4: 6100f6f0     bsr.w      $48a6
0051b8: 1a00         move.b     d0, d5
0051ba: 6100fd34     bsr.w      $4ef0
0051be: 4a05         tst.b      d5
0051c0: 663c         bne.b      $51fe
0051c2: 206e8500     movea.l    -$7b00(a6), a0
0051c6: 117c004d0044 move.b     #$4d, $44(a0)
0051cc: 206e8500     movea.l    -$7b00(a6), a0
0051d0: 0c28000b0010 cmpi.b     #$b, $10(a0)
0051d6: 660a         bne.b      $51e2
0051d8: 206e8500     movea.l    -$7b00(a6), a0
0051dc: 117c00090013 move.b     #$9, $13(a0)
0051e2: 206e8508     movea.l    -$7af8(a6), a0
0051e6: 4a28001e     tst.b      $1e(a0)
0051ea: 660a         bne.b      $51f6
0051ec: 206e8504     movea.l    -$7afc(a6), a0
0051f0: 4a28001e     tst.b      $1e(a0)
0051f4: 6704         beq.b      $51fa
0051f6: 7001         moveq      #$1, d0
0051f8: 6002         bra.b      $51fc
0051fa: 7000         moveq      #$0, d0
0051fc: 1800         move.b     d0, d4
0051fe: 206e8500     movea.l    -$7b00(a6), a0
005202: 11440030     move.b     d4, $30(a0)
005206: 0c040001     cmpi.b     #$1, d4
00520a: 661a         bne.b      $5226
00520c: 206e8500     movea.l    -$7b00(a6), a0
005210: 0c28004d0044 cmpi.b     #$4d, $44(a0)
005216: 670e         beq.b      $5226
005218: 206e8500     movea.l    -$7b00(a6), a0
00521c: 216e84de0046 move.l     -$7b22(a6), $46(a0)
005222: 52ae84de     addq.l     #$1, -$7b22(a6)
005226: 1004         move.b     d4, d0
005228: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
00522e: 4e5d         unlk       a5
005230: 4e75         rts        
005232: 4e550000     link.w     a5, #$0
005236: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00523a: 7034         moveq      #$34, d0
00523c: d097         add.l      (a7), d0
00523e: 2200         move.l     d0, d1
005240: 7044         moveq      #$44, d0
005242: d097         add.l      (a7), d0
005244: 206e8ce6     movea.l    -$731a(a6), a0
005248: 4e90         jsr        (a0)
00524a: 4a00         tst.b      d0
00524c: 670a         beq.b      $5258
00524e: 2057         movea.l    (a7), a0
005250: 24680030     movea.l    $30(a0), a2
005254: 2652         movea.l    (a2), a3
005256: 601a         bra.b      $5272
005258: 2057         movea.l    (a7), a0
00525a: 20280030     move.l     $30(a0), d0
00525e: 61001972     bsr.w      $6bd2
005262: 2440         movea.l    d0, a2
005264: 220a         move.l     a2, d1
005266: 2057         movea.l    (a7), a0
005268: 20280030     move.l     $30(a0), d0
00526c: 6100193e     bsr.w      $6bac
005270: 2640         movea.l    d0, a3
005272: 2f2f0004     move.l     $4(a7), -(a7)
005276: 200b         move.l     a3, d0
005278: 5880         addq.l     #$4, d0
00527a: 2200         move.l     d0, d1
00527c: 200a         move.l     a2, d0
00527e: 5880         addq.l     #$4, d0
005280: 206e8cf2     movea.l    -$730e(a6), a0
005284: 4e90         jsr        (a0)
005286: 588f         addq.l     #$4, a7
005288: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00528e: 4e5d         unlk       a5
005290: 4e75         rts        
005292: 4e550000     link.w     a5, #$0
005296: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
00529a: 7800         moveq      #$0, d4
00529c: 206e8500     movea.l    -$7b00(a6), a0
0052a0: 0c280002006e cmpi.b     #$2, $6e(a0)
0052a6: 6624         bne.b      $52cc
0052a8: 206e8500     movea.l    -$7b00(a6), a0
0052ac: 28280062     move.l     $62(a0), d4
0052b0: 206e8508     movea.l    -$7af8(a6), a0
0052b4: 30280024     move.w     $24(a0), d0
0052b8: 48c0         ext.l      d0
0052ba: 206e8500     movea.l    -$7b00(a6), a0
0052be: 22280066     move.l     $66(a0), d1
0052c2: 9284         sub.l      d4, d1
0052c4: 9280         sub.l      d0, d1
0052c6: 5281         addq.l     #$1, d1
0052c8: 2a01         move.l     d1, d5
0052ca: 600a         bra.b      $52d6
0052cc: 206e8508     movea.l    -$7af8(a6), a0
0052d0: 30680024     movea.w    $24(a0), a0
0052d4: 2a08         move.l     a0, d5
0052d6: 2005         move.l     d5, d0
0052d8: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
0052de: 4e5d         unlk       a5
0052e0: 4e75         rts        
0052e2: 4e550000     link.w     a5, #$0
0052e6: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
0052ea: 7800         moveq      #$0, d4
0052ec: 206e8500     movea.l    -$7b00(a6), a0
0052f0: 0c280001006e cmpi.b     #$1, $6e(a0)
0052f6: 6624         bne.b      $531c
0052f8: 206e8500     movea.l    -$7b00(a6), a0
0052fc: 28280062     move.l     $62(a0), d4
005300: 206e8508     movea.l    -$7af8(a6), a0
005304: 30280024     move.w     $24(a0), d0
005308: 48c0         ext.l      d0
00530a: 206e8500     movea.l    -$7b00(a6), a0
00530e: 22280066     move.l     $66(a0), d1
005312: 9284         sub.l      d4, d1
005314: 9280         sub.l      d0, d1
005316: 5281         addq.l     #$1, d1
005318: 2a01         move.l     d1, d5
00531a: 600a         bra.b      $5326
00531c: 206e8508     movea.l    -$7af8(a6), a0
005320: 30680024     movea.w    $24(a0), a0
005324: 2a08         move.l     a0, d5
005326: 2005         move.l     d5, d0
005328: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
00532e: 4e5d         unlk       a5
005330: 4e75         rts        
005332: 4e550000     link.w     a5, #$0
005336: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
00533a: 2057         movea.l    (a7), a0
00533c: 4a68002c     tst.w      $2c(a0)
005340: 6c0a         bge.b      $534c
005342: 2057         movea.l    (a7), a0
005344: 3028002c     move.w     $2c(a0), d0
005348: 4440         neg.w      d0
00534a: 6006         bra.b      $5352
00534c: 2057         movea.l    (a7), a0
00534e: 3028002c     move.w     $2c(a0), d0
005352: 3800         move.w     d0, d4
005354: b86f0006     cmp.w      $6(a7), d4
005358: 6d0a         blt.b      $5364
00535a: b86f001a     cmp.w      $1a(a7), d4
00535e: 6e04         bgt.b      $5364
005360: 7001         moveq      #$1, d0
005362: 6002         bra.b      $5366
005364: 7000         moveq      #$0, d0
005366: 4ced0110fff8 movem.l    -$8(a5), d4/a0
00536c: 4e5d         unlk       a5
00536e: 4e75         rts        
005370: 4e550000     link.w     a5, #$0
005374: 48e7cfb0     movem.l    d0-d1/d4-d7/a0/a2-a3, -(a7)
005378: 558f         subq.l     #$2, a7
00537a: 283c00000096 move.l     #$96, d4
005380: 2a3c000000d2 move.l     #$d2, d5
005386: 202e8500     move.l     -$7b00(a6), d0
00538a: 61000bcc     bsr.w      $5f58
00538e: 4a00         tst.b      d0
005390: 660000e0     bne.w      $5472
005394: 206e8504     movea.l    -$7afc(a6), a0
005398: 26680004     movea.l    $4(a0), a3
00539c: 246b0004     movea.l    $4(a3), a2
0053a0: 4a6a002c     tst.w      $2c(a2)
0053a4: 6c08         bge.b      $53ae
0053a6: 302a002c     move.w     $2c(a2), d0
0053aa: 4440         neg.w      d0
0053ac: 6004         bra.b      $53b2
0053ae: 302a002c     move.w     $2c(a2), d0
0053b2: 3e80         move.w     d0, (a7)
0053b4: 4a6b002c     tst.w      $2c(a3)
0053b8: 6c08         bge.b      $53c2
0053ba: 302b002c     move.w     $2c(a3), d0
0053be: 4440         neg.w      d0
0053c0: 6004         bra.b      $53c6
0053c2: 302b002c     move.w     $2c(a3), d0
0053c6: 3e00         move.w     d0, d7
0053c8: 3007         move.w     d7, d0
0053ca: 48c0         ext.l      d0
0053cc: 3217         move.w     (a7), d1
0053ce: 48c1         ext.l      d1
0053d0: d081         add.l      d1, d0
0053d2: 2c00         move.l     d0, d6
0053d4: 206e8500     movea.l    -$7b00(a6), a0
0053d8: 4a280033     tst.b      $33(a0)
0053dc: 66000094     bne.w      $5472
0053e0: 206e8508     movea.l    -$7af8(a6), a0
0053e4: 4a280057     tst.b      $57(a0)
0053e8: 67000088     beq.w      $5472
0053ec: 206e8500     movea.l    -$7b00(a6), a0
0053f0: 7003         moveq      #$3, d0
0053f2: b0a8004e     cmp.l      $4e(a0), d0
0053f6: 6600007a     bne.w      $5472
0053fa: 206e8504     movea.l    -$7afc(a6), a0
0053fe: 700f         moveq      #$f, d0
005400: b0a80014     cmp.l      $14(a0), d0
005404: 6e00006c     bgt.w      $5472
005408: 206e8504     movea.l    -$7afc(a6), a0
00540c: 0c280001005a cmpi.b     #$1, $5a(a0)
005412: 635e         bls.b      $5472
005414: 0c47002d     cmpi.w     #$2d, d7
005418: 6d58         blt.b      $5472
00541a: 0c470087     cmpi.w     #$87, d7
00541e: 6e52         bgt.b      $5472
005420: 0c57002d     cmpi.w     #$2d, (a7)
005424: 6d4c         blt.b      $5472
005426: 0c570087     cmpi.w     #$87, (a7)
00542a: 6e46         bgt.b      $5472
00542c: 7000         moveq      #$0, d0
00542e: 102b005a     move.b     $5a(a3), d0
005432: 7200         moveq      #$0, d1
005434: 122a005a     move.b     $5a(a2), d1
005438: 9240         sub.w      d0, d1
00543a: 6c14         bge.b      $5450
00543c: 7000         moveq      #$0, d0
00543e: 102b005a     move.b     $5a(a3), d0
005442: 7200         moveq      #$0, d1
005444: 122a005a     move.b     $5a(a2), d1
005448: 9240         sub.w      d0, d1
00544a: 48c1         ext.l      d1
00544c: 4481         neg.l      d1
00544e: 6010         bra.b      $5460
005450: 7000         moveq      #$0, d0
005452: 102b005a     move.b     $5a(a3), d0
005456: 7200         moveq      #$0, d1
005458: 122a005a     move.b     $5a(a2), d1
00545c: 9240         sub.w      d0, d1
00545e: 48c1         ext.l      d1
005460: 7002         moveq      #$2, d0
005462: b081         cmp.l      d1, d0
005464: 6f0c         ble.b      $5472
005466: bc84         cmp.l      d4, d6
005468: 6d08         blt.b      $5472
00546a: bc85         cmp.l      d5, d6
00546c: 6e04         bgt.b      $5472
00546e: 7001         moveq      #$1, d0
005470: 6002         bra.b      $5474
005472: 7000         moveq      #$0, d0
005474: 548f         addq.l     #$2, a7
005476: 4ced0df2ffe0 movem.l    -$20(a5), d1/d4-d7/a0/a2-a3
00547c: 4e5d         unlk       a5
00547e: 4e75         rts        
005480: 4e550000     link.w     a5, #$0
005484: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
005488: 7800         moveq      #$0, d4
00548a: 222e8508     move.l     -$7af8(a6), d1
00548e: 202e8504     move.l     -$7afc(a6), d0
005492: 61001476     bsr.w      $690a
005496: 4a00         tst.b      d0
005498: 675c         beq.b      $54f6
00549a: 206e8504     movea.l    -$7afc(a6), a0
00549e: 0c2800040057 cmpi.b     #$4, $57(a0)
0054a4: 6718         beq.b      $54be
0054a6: 206e8504     movea.l    -$7afc(a6), a0
0054aa: 0c2800070057 cmpi.b     #$7, $57(a0)
0054b0: 670c         beq.b      $54be
0054b2: 206e8504     movea.l    -$7afc(a6), a0
0054b6: 0c2800050057 cmpi.b     #$5, $57(a0)
0054bc: 6638         bne.b      $54f6
0054be: 206e8500     movea.l    -$7b00(a6), a0
0054c2: 24680020     movea.l    $20(a0), a2
0054c6: 602a         bra.b      $54f2
0054c8: 0c2a00090057 cmpi.b     #$9, $57(a2)
0054ce: 6708         beq.b      $54d8
0054d0: 0c2a000a0057 cmpi.b     #$a, $57(a2)
0054d6: 6618         bne.b      $54f0
0054d8: 48780002     pea.l      $2.w
0054dc: 7201         moveq      #$1, d1
0054de: 200a         move.l     a2, d0
0054e0: 6100d6be     bsr.w      $2ba0
0054e4: 588f         addq.l     #$4, a7
0054e6: 0c000001     cmpi.b     #$1, d0
0054ea: 6604         bne.b      $54f0
0054ec: 7801         moveq      #$1, d4
0054ee: 6006         bra.b      $54f6
0054f0: 2452         movea.l    (a2), a2
0054f2: 200a         move.l     a2, d0
0054f4: 66d2         bne.b      $54c8
0054f6: 1004         move.b     d4, d0
0054f8: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0054fe: 4e5d         unlk       a5
005500: 4e75         rts        
005502: 4e550000     link.w     a5, #$0
005506: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
00550a: 97cb         suba.l     a3, a3
00550c: 206e8500     movea.l    -$7b00(a6), a0
005510: 20680020     movea.l    $20(a0), a0
005514: 2450         movea.l    (a0), a2
005516: 6024         bra.b      $553c
005518: 0c2a00040057 cmpi.b     #$4, $57(a2)
00551e: 6716         beq.b      $5536
005520: 0c2a00070057 cmpi.b     #$7, $57(a2)
005526: 670e         beq.b      $5536
005528: 0c2a00050057 cmpi.b     #$5, $57(a2)
00552e: 6706         beq.b      $5536
005530: 4a2a0057     tst.b      $57(a2)
005534: 6604         bne.b      $553a
005536: 264a         movea.l    a2, a3
005538: 600c         bra.b      $5546
00553a: 2452         movea.l    (a2), a2
00553c: 200a         move.l     a2, d0
00553e: 6706         beq.b      $5546
005540: b5ee8504     cmpa.l     -$7afc(a6), a2
005544: 66d2         bne.b      $5518
005546: 200b         move.l     a3, d0
005548: 6752         beq.b      $559c
00554a: 206e8500     movea.l    -$7b00(a6), a0
00554e: 20680020     movea.l    $20(a0), a0
005552: 2450         movea.l    (a0), a2
005554: 6018         bra.b      $556e
005556: 0c2a00090057 cmpi.b     #$9, $57(a2)
00555c: 6708         beq.b      $5566
00555e: 0c2a000a0057 cmpi.b     #$a, $57(a2)
005564: 6606         bne.b      $556c
005566: 157c000b002f move.b     #$b, $2f(a2)
00556c: 2452         movea.l    (a2), a2
00556e: b5cb         cmpa.l     a3, a2
005570: 66e4         bne.b      $5556
005572: 177c0021002f move.b     #$21, $2f(a3)
005578: 2452         movea.l    (a2), a2
00557a: 200a         move.l     a2, d0
00557c: 671e         beq.b      $559c
00557e: b5ee8504     cmpa.l     -$7afc(a6), a2
005582: 6718         beq.b      $559c
005584: 0c2a00090057 cmpi.b     #$9, $57(a2)
00558a: 6708         beq.b      $5594
00558c: 0c2a000a0057 cmpi.b     #$a, $57(a2)
005592: 6606         bne.b      $559a
005594: 157c0016002f move.b     #$16, $2f(a2)
00559a: 2452         movea.l    (a2), a2
00559c: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0055a2: 4e5d         unlk       a5
0055a4: 4e75         rts        
0055a6: 4e550000     link.w     a5, #$0
0055aa: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0055ae: 7800         moveq      #$0, d4
0055b0: 206e8504     movea.l    -$7afc(a6), a0
0055b4: 4a280057     tst.b      $57(a0)
0055b8: 6638         bne.b      $55f2
0055ba: 206e8500     movea.l    -$7b00(a6), a0
0055be: 24680020     movea.l    $20(a0), a2
0055c2: 602a         bra.b      $55ee
0055c4: 0c2a00020057 cmpi.b     #$2, $57(a2)
0055ca: 6708         beq.b      $55d4
0055cc: 0c2a00030057 cmpi.b     #$3, $57(a2)
0055d2: 6618         bne.b      $55ec
0055d4: 48780002     pea.l      $2.w
0055d8: 7201         moveq      #$1, d1
0055da: 200a         move.l     a2, d0
0055dc: 6100d5c2     bsr.w      $2ba0
0055e0: 588f         addq.l     #$4, a7
0055e2: 0c000001     cmpi.b     #$1, d0
0055e6: 6604         bne.b      $55ec
0055e8: 7801         moveq      #$1, d4
0055ea: 6006         bra.b      $55f2
0055ec: 2452         movea.l    (a2), a2
0055ee: 200a         move.l     a2, d0
0055f0: 66d2         bne.b      $55c4
0055f2: 1004         move.b     d4, d0
0055f4: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0055fa: 4e5d         unlk       a5
0055fc: 4e75         rts        
0055fe: 4e550000     link.w     a5, #$0
005602: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
005606: 97cb         suba.l     a3, a3
005608: 206e8500     movea.l    -$7b00(a6), a0
00560c: 20680020     movea.l    $20(a0), a0
005610: 2450         movea.l    (a0), a2
005612: 600c         bra.b      $5620
005614: 4a2a0057     tst.b      $57(a2)
005618: 6604         bne.b      $561e
00561a: 264a         movea.l    a2, a3
00561c: 600c         bra.b      $562a
00561e: 2452         movea.l    (a2), a2
005620: 200a         move.l     a2, d0
005622: 6706         beq.b      $562a
005624: b5ee8504     cmpa.l     -$7afc(a6), a2
005628: 66ea         bne.b      $5614
00562a: 200b         move.l     a3, d0
00562c: 6752         beq.b      $5680
00562e: 206e8500     movea.l    -$7b00(a6), a0
005632: 20680020     movea.l    $20(a0), a0
005636: 2450         movea.l    (a0), a2
005638: 6018         bra.b      $5652
00563a: 0c2a00020057 cmpi.b     #$2, $57(a2)
005640: 6708         beq.b      $564a
005642: 0c2a00030057 cmpi.b     #$3, $57(a2)
005648: 6606         bne.b      $5650
00564a: 157c000b002f move.b     #$b, $2f(a2)
005650: 2452         movea.l    (a2), a2
005652: b5cb         cmpa.l     a3, a2
005654: 66e4         bne.b      $563a
005656: 177c0021002f move.b     #$21, $2f(a3)
00565c: 6016         bra.b      $5674
00565e: 0c2a00020057 cmpi.b     #$2, $57(a2)
005664: 6708         beq.b      $566e
005666: 0c2a00030057 cmpi.b     #$3, $57(a2)
00566c: 6606         bne.b      $5674
00566e: 157c0016002f move.b     #$16, $2f(a2)
005674: 2452         movea.l    (a2), a2
005676: 200a         move.l     a2, d0
005678: 6706         beq.b      $5680
00567a: b5ee8504     cmpa.l     -$7afc(a6), a2
00567e: 66de         bne.b      $565e
005680: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
005686: 4e5d         unlk       a5
005688: 4e75         rts        
00568a: 4e550000     link.w     a5, #$0
00568e: 48e78080     movem.l    d0/a0, -(a7)
005692: 610001f0     bsr.w      $5884
005696: 4a00         tst.b      d0
005698: 670c         beq.b      $56a6
00569a: 206e8500     movea.l    -$7b00(a6), a0
00569e: 117c00010034 move.b     #$1, $34(a0)
0056a4: 601a         bra.b      $56c0
0056a6: 206e8500     movea.l    -$7b00(a6), a0
0056aa: 42280034     clr.b      $34(a0)
0056ae: 6122         bsr.b      $56d2
0056b0: 4a00         tst.b      d0
0056b2: 670c         beq.b      $56c0
0056b4: 206e8500     movea.l    -$7b00(a6), a0
0056b8: 117c00010035 move.b     #$1, $35(a0)
0056be: 6008         bra.b      $56c8
0056c0: 206e8500     movea.l    -$7b00(a6), a0
0056c4: 42280035     clr.b      $35(a0)
0056c8: 4ced0100fffc movem.l    -$4(a5), a0
0056ce: 4e5d         unlk       a5
0056d0: 4e75         rts        
0056d2: 4e550000     link.w     a5, #$0
0056d6: 48e7cea0     movem.l    d0-d1/d4-d6/a0/a2, -(a7)
0056da: 7a00         moveq      #$0, d5
0056dc: 7c00         moveq      #$0, d6
0056de: 206e8500     movea.l    -$7b00(a6), a0
0056e2: 7003         moveq      #$3, d0
0056e4: b0a8004a     cmp.l      $4a(a0), d0
0056e8: 6e0000ba     bgt.w      $57a4
0056ec: 206e8500     movea.l    -$7b00(a6), a0
0056f0: 7004         moveq      #$4, d0
0056f2: b0a8004a     cmp.l      $4a(a0), d0
0056f6: 6d0000ac     blt.w      $57a4
0056fa: 206e8500     movea.l    -$7b00(a6), a0
0056fe: 24680020     movea.l    $20(a0), a2
005702: 206e8504     movea.l    -$7afc(a6), a0
005706: 4a280057     tst.b      $57(a0)
00570a: 6604         bne.b      $5710
00570c: 7001         moveq      #$1, d0
00570e: 6002         bra.b      $5712
005710: 7000         moveq      #$0, d0
005712: 1a00         move.b     d0, d5
005714: 782d         moveq      #$2d, d4
005716: 60000080     bra.w      $5798
00571a: 4a2a001e     tst.b      $1e(a2)
00571e: 66000084     bne.w      $57a4
005722: b5ee8504     cmpa.l     -$7afc(a6), a2
005726: 6700006e     beq.w      $5796
00572a: 0c2a00090057 cmpi.b     #$9, $57(a2)
005730: 6708         beq.b      $573a
005732: 0c2a000a0057 cmpi.b     #$a, $57(a2)
005738: 6602         bne.b      $573c
00573a: 5286         addq.l     #$1, d6
00573c: 4a6a002c     tst.w      $2c(a2)
005740: 6c0a         bge.b      $574c
005742: 302a002c     move.w     $2c(a2), d0
005746: 48c0         ext.l      d0
005748: 4480         neg.l      d0
00574a: 6006         bra.b      $5752
00574c: 302a002c     move.w     $2c(a2), d0
005750: 48c0         ext.l      d0
005752: b084         cmp.l      d4, d0
005754: 6e4e         bgt.b      $57a4
005756: 206e8504     movea.l    -$7afc(a6), a0
00575a: 102a005a     move.b     $5a(a2), d0
00575e: b028005a     cmp.b      $5a(a0), d0
005762: 6640         bne.b      $57a4
005764: 0c2a0004005a cmpi.b     #$4, $5a(a2)
00576a: 6438         bcc.b      $57a4
00576c: 0c050001     cmpi.b     #$1, d5
005770: 6606         bne.b      $5778
005772: 4a2a0057     tst.b      $57(a2)
005776: 662c         bne.b      $57a4
005778: 48780002     pea.l      $2.w
00577c: 7201         moveq      #$1, d1
00577e: 200a         move.l     a2, d0
005780: 6100d41e     bsr.w      $2ba0
005784: 588f         addq.l     #$4, a7
005786: 4a00         tst.b      d0
005788: 671a         beq.b      $57a4
00578a: 2204         move.l     d4, d1
00578c: 200a         move.l     a2, d0
00578e: 6124         bsr.b      $57b4
005790: 0c000001     cmpi.b     #$1, d0
005794: 660e         bne.b      $57a4
005796: 2452         movea.l    (a2), a2
005798: 200a         move.l     a2, d0
00579a: 6600ff7e     bne.w      $571a
00579e: 7001         moveq      #$1, d0
0057a0: b086         cmp.l      d6, d0
0057a2: 6604         bne.b      $57a8
0057a4: 7000         moveq      #$0, d0
0057a6: 6002         bra.b      $57aa
0057a8: 7001         moveq      #$1, d0
0057aa: 4ced0572ffe8 movem.l    -$18(a5), d1/d4-d6/a0/a2
0057b0: 4e5d         unlk       a5
0057b2: 4e75         rts        
0057b4: 4e550000     link.w     a5, #$0
0057b8: 48e7cfa0     movem.l    d0-d1/d4-d7/a0/a2, -(a7)
0057bc: 2440         movea.l    d0, a2
0057be: 2801         move.l     d1, d4
0057c0: 598f         subq.l     #$4, a7
0057c2: 0caa000000fa0014 cmpi.l     #$fa, $14(a2)
0057ca: 6e0000a6     bgt.w      $5872
0057ce: 3a2a0028     move.w     $28(a2), d5
0057d2: 303cff4c     move.w     #$ff4c, d0
0057d6: d06a002a     add.w      $2a(a2), d0
0057da: 3c00         move.w     d0, d6
0057dc: 7034         moveq      #$34, d0
0057de: d08a         add.l      a2, d0
0057e0: 2200         move.l     d0, d1
0057e2: 7044         moveq      #$44, d0
0057e4: d08a         add.l      a2, d0
0057e6: 206e8ce6     movea.l    -$731a(a6), a0
0057ea: 4e90         jsr        (a0)
0057ec: 4a00         tst.b      d0
0057ee: 6706         beq.b      $57f6
0057f0: 3006         move.w     d6, d0
0057f2: 9045         sub.w      d5, d0
0057f4: 6004         bra.b      $57fa
0057f6: 3005         move.w     d5, d0
0057f8: 9046         sub.w      d6, d0
0057fa: 3e00         move.w     d0, d7
0057fc: 707d         moveq      #$7d, d0
0057fe: b0aa0014     cmp.l      $14(a2), d0
005802: 6c10         bge.b      $5814
005804: 0c47ffa6     cmpi.w     #$ffa6, d7
005808: 6f00006c     ble.w      $5876
00580c: 0c47005a     cmpi.w     #$5a, d7
005810: 6d60         blt.b      $5872
005812: 6062         bra.b      $5876
005814: 703c         moveq      #$3c, d0
005816: b0aa0014     cmp.l      $14(a2), d0
00581a: 6c0e         bge.b      $582a
00581c: 0c47ffd3     cmpi.w     #$ffd3, d7
005820: 6f54         ble.b      $5876
005822: 0c47002d     cmpi.w     #$2d, d7
005826: 6d4a         blt.b      $5872
005828: 604c         bra.b      $5876
00582a: 7064         moveq      #$64, d0
00582c: 4c2a00000014 mulu.l     $14(a2), d0
005832: 4c7c08000000003c divs.l     #$3c, d0
00583a: 2e80         move.l     d0, (a7)
00583c: 2004         move.l     d4, d0
00583e: 4c170000     mulu.l     (a7), d0
005842: 4c7c080000000064 divs.l     #$64, d0
00584a: 2200         move.l     d0, d1
00584c: 4a6a002c     tst.w      $2c(a2)
005850: 6c0a         bge.b      $585c
005852: 302a002c     move.w     $2c(a2), d0
005856: 48c0         ext.l      d0
005858: 4480         neg.l      d0
00585a: 6006         bra.b      $5862
00585c: 302a002c     move.w     $2c(a2), d0
005860: 48c0         ext.l      d0
005862: b280         cmp.l      d0, d1
005864: 6d10         blt.b      $5876
005866: 0c47ffe7     cmpi.w     #$ffe7, d7
00586a: 6f0a         ble.b      $5876
00586c: 0c470019     cmpi.w     #$19, d7
005870: 6c04         bge.b      $5876
005872: 7001         moveq      #$1, d0
005874: 6002         bra.b      $5878
005876: 7000         moveq      #$0, d0
005878: 588f         addq.l     #$4, a7
00587a: 4ced05f0ffe8 movem.l    -$18(a5), d4-d7/a0/a2
005880: 4e5d         unlk       a5
005882: 4e75         rts        
005884: 4e550000     link.w     a5, #$0
005888: 48e7cea0     movem.l    d0-d1/d4-d6/a0/a2, -(a7)
00588c: 7801         moveq      #$1, d4
00588e: 2a3cfffffc19 move.l     #$fffffc19, d5
005894: 2c3c000003e7 move.l     #$3e7, d6
00589a: 206e8500     movea.l    -$7b00(a6), a0
00589e: 7003         moveq      #$3, d0
0058a0: b0a8004a     cmp.l      $4a(a0), d0
0058a4: 6e0000f4     bgt.w      $599a
0058a8: 206e8500     movea.l    -$7b00(a6), a0
0058ac: 7004         moveq      #$4, d0
0058ae: b0a8004a     cmp.l      $4a(a0), d0
0058b2: 6d0000e6     blt.w      $599a
0058b6: 206e8500     movea.l    -$7b00(a6), a0
0058ba: 24680020     movea.l    $20(a0), a2
0058be: 60000088     bra.w      $5948
0058c2: 4a2a001e     tst.b      $1e(a2)
0058c6: 6600007c     bne.w      $5944
0058ca: b5ee8504     cmpa.l     -$7afc(a6), a2
0058ce: 6740         beq.b      $5910
0058d0: 48780002     pea.l      $2.w
0058d4: 7201         moveq      #$1, d1
0058d6: 200a         move.l     a2, d0
0058d8: 6100d2c6     bsr.w      $2ba0
0058dc: 588f         addq.l     #$4, a7
0058de: 0c000001     cmpi.b     #$1, d0
0058e2: 662c         bne.b      $5910
0058e4: 302a002c     move.w     $2c(a2), d0
0058e8: 48c0         ext.l      d0
0058ea: b086         cmp.l      d6, d0
0058ec: 6c08         bge.b      $58f6
0058ee: 302a002c     move.w     $2c(a2), d0
0058f2: 48c0         ext.l      d0
0058f4: 6002         bra.b      $58f8
0058f6: 2006         move.l     d6, d0
0058f8: 2c00         move.l     d0, d6
0058fa: 302a002c     move.w     $2c(a2), d0
0058fe: 48c0         ext.l      d0
005900: b085         cmp.l      d5, d0
005902: 6f08         ble.b      $590c
005904: 302a002c     move.w     $2c(a2), d0
005908: 48c0         ext.l      d0
00590a: 6002         bra.b      $590e
00590c: 2005         move.l     d5, d0
00590e: 2a00         move.l     d0, d5
005910: 7034         moveq      #$34, d0
005912: d08a         add.l      a2, d0
005914: 2200         move.l     d0, d1
005916: 7044         moveq      #$44, d0
005918: d08a         add.l      a2, d0
00591a: 206e8ce6     movea.l    -$731a(a6), a0
00591e: 4e90         jsr        (a0)
005920: 4a00         tst.b      d0
005922: 6706         beq.b      $592a
005924: 4a2a001c     tst.b      $1c(a2)
005928: 671a         beq.b      $5944
00592a: 703c         moveq      #$3c, d0
00592c: d08a         add.l      a2, d0
00592e: 2200         move.l     d0, d1
005930: 7044         moveq      #$44, d0
005932: d08a         add.l      a2, d0
005934: 206e8ce6     movea.l    -$731a(a6), a0
005938: 4e90         jsr        (a0)
00593a: 4a00         tst.b      d0
00593c: 6708         beq.b      $5946
00593e: 4a2a001d     tst.b      $1d(a2)
005942: 6602         bne.b      $5946
005944: 7800         moveq      #$0, d4
005946: 2452         movea.l    (a2), a2
005948: 200a         move.l     a2, d0
00594a: 6708         beq.b      $5954
00594c: 0c040001     cmpi.b     #$1, d4
005950: 6700ff70     beq.w      $58c2
005954: 0c040001     cmpi.b     #$1, d4
005958: 6640         bne.b      $599a
00595a: 4a85         tst.l      d5
00595c: 6c06         bge.b      $5964
00595e: 2005         move.l     d5, d0
005960: 4480         neg.l      d0
005962: 6002         bra.b      $5966
005964: 2005         move.l     d5, d0
005966: 725a         moveq      #$5a, d1
005968: b280         cmp.l      d0, d1
00596a: 6d2e         blt.b      $599a
00596c: 4a86         tst.l      d6
00596e: 6c06         bge.b      $5976
005970: 2006         move.l     d6, d0
005972: 4480         neg.l      d0
005974: 6002         bra.b      $5978
005976: 2006         move.l     d6, d0
005978: 725a         moveq      #$5a, d1
00597a: b280         cmp.l      d0, d1
00597c: 6d1c         blt.b      $599a
00597e: 2005         move.l     d5, d0
005980: 9086         sub.l      d6, d0
005982: 6c08         bge.b      $598c
005984: 2005         move.l     d5, d0
005986: 9086         sub.l      d6, d0
005988: 4480         neg.l      d0
00598a: 6004         bra.b      $5990
00598c: 2005         move.l     d5, d0
00598e: 9086         sub.l      d6, d0
005990: 725a         moveq      #$5a, d1
005992: b280         cmp.l      d0, d1
005994: 6d04         blt.b      $599a
005996: 7001         moveq      #$1, d0
005998: 6002         bra.b      $599c
00599a: 7000         moveq      #$0, d0
00599c: 4ced0572ffe8 movem.l    -$18(a5), d1/d4-d6/a0/a2
0059a2: 4e5d         unlk       a5
0059a4: 4e75         rts        
0059a6: 4e550000     link.w     a5, #$0
0059aa: 48e78800     movem.l    d0/d4, -(a7)
0059ae: 611e         bsr.b      $59ce
0059b0: 4a00         tst.b      d0
0059b2: 6606         bne.b      $59ba
0059b4: 6132         bsr.b      $59e8
0059b6: 4a00         tst.b      d0
0059b8: 6704         beq.b      $59be
0059ba: 7001         moveq      #$1, d0
0059bc: 6002         bra.b      $59c0
0059be: 7000         moveq      #$0, d0
0059c0: 1800         move.b     d0, d4
0059c2: 1004         move.b     d4, d0
0059c4: 4ced0010fffc movem.l    -$4(a5), d4
0059ca: 4e5d         unlk       a5
0059cc: 4e75         rts        
0059ce: 4e550000     link.w     a5, #$0
0059d2: 48e78080     movem.l    d0/a0, -(a7)
0059d6: 206e8500     movea.l    -$7b00(a6), a0
0059da: 10280034     move.b     $34(a0), d0
0059de: 4ced0100fffc movem.l    -$4(a5), a0
0059e4: 4e5d         unlk       a5
0059e6: 4e75         rts        
0059e8: 4e550000     link.w     a5, #$0
0059ec: 48e78080     movem.l    d0/a0, -(a7)
0059f0: 206e8500     movea.l    -$7b00(a6), a0
0059f4: 10280035     move.b     $35(a0), d0
0059f8: 4ced0100fffc movem.l    -$4(a5), a0
0059fe: 4e5d         unlk       a5
005a00: 4e75         rts        
005a02: 4e550000     link.w     a5, #$0
005a06: 48e78080     movem.l    d0/a0, -(a7)
005a0a: 206e8500     movea.l    -$7b00(a6), a0
005a0e: 0c280002006e cmpi.b     #$2, $6e(a0)
005a14: 6606         bne.b      $5a1c
005a16: 6100f8ca     bsr.w      $52e2
005a1a: 6004         bra.b      $5a20
005a1c: 6100f874     bsr.w      $5292
005a20: 4ced0100fffc movem.l    -$4(a5), a0
005a26: 4e5d         unlk       a5
005a28: 4e75         rts        
005a2a: 4e550000     link.w     a5, #$0
005a2e: 48e7ccf0     movem.l    d0-d1/d4-d5/a0-a3, -(a7)
005a32: 4fefffec     lea.l      -$14(a7), a7
005a36: 422f000e     clr.b      $e(a7)
005a3a: 422f000d     clr.b      $d(a7)
005a3e: 42af0008     clr.l      $8(a7)
005a42: 2eae8504     move.l     -$7afc(a6), (a7)
005a46: 42af0004     clr.l      $4(a7)
005a4a: 6034         bra.b      $5a80
005a4c: 2017         move.l     (a7), d0
005a4e: b0ae8504     cmp.l      -$7afc(a6), d0
005a52: 6722         beq.b      $5a76
005a54: 2057         movea.l    (a7), a0
005a56: 4a280055     tst.b      $55(a0)
005a5a: 6716         beq.b      $5a72
005a5c: 48780002     pea.l      $2.w
005a60: 7201         moveq      #$1, d1
005a62: 202f0004     move.l     $4(a7), d0
005a66: 6100d138     bsr.w      $2ba0
005a6a: 588f         addq.l     #$4, a7
005a6c: 0c000001     cmpi.b     #$1, d0
005a70: 6604         bne.b      $5a76
005a72: 52af0008     addq.l     #$1, $8(a7)
005a76: 2057         movea.l    (a7), a0
005a78: 2ea80004     move.l     $4(a0), (a7)
005a7c: 52af0004     addq.l     #$1, $4(a7)
005a80: 206e8500     movea.l    -$7b00(a6), a0
005a84: 202f0004     move.l     $4(a7), d0
005a88: b0a8004e     cmp.l      $4e(a0), d0
005a8c: 6dbe         blt.b      $5a4c
005a8e: 7002         moveq      #$2, d0
005a90: b0af0008     cmp.l      $8(a7), d0
005a94: 6608         bne.b      $5a9e
005a96: 1f7c0006000f move.b     #$6, $f(a7)
005a9c: 6030         bra.b      $5ace
005a9e: 7003         moveq      #$3, d0
005aa0: b0af0008     cmp.l      $8(a7), d0
005aa4: 6608         bne.b      $5aae
005aa6: 1f7c0007000f move.b     #$7, $f(a7)
005aac: 6020         bra.b      $5ace
005aae: 206e8500     movea.l    -$7b00(a6), a0
005ab2: 226e8500     movea.l    -$7b00(a6), a1
005ab6: 2029004a     move.l     $4a(a1), d0
005aba: b0a8004e     cmp.l      $4e(a0), d0
005abe: 6608         bne.b      $5ac8
005ac0: 1f7c0015000f move.b     #$15, $f(a7)
005ac6: 6006         bra.b      $5ace
005ac8: 1f7c0013000f move.b     #$13, $f(a7)
005ace: 102f000f     move.b     $f(a7), d0
005ad2: 4fef0014     lea.l      $14(a7), a7
005ad6: 4ced0f32ffe4 movem.l    -$1c(a5), d1/d4-d5/a0-a3
005adc: 4e5d         unlk       a5
005ade: 4e75         rts        
005ae0: 4e550000     link.w     a5, #$0
005ae4: 48e7c080     movem.l    d0-d1/a0, -(a7)
005ae8: 5d8f         subq.l     #$6, a7
005aea: 206f0006     movea.l    $6(a7), a0
005aee: 48680044     pea.l      $44(a0)
005af2: 222f000a     move.l     $a(a7), d1
005af6: 6000007e     bra.w      $5b76
005afa: 206f0002     movea.l    $2(a7), a0
005afe: 0c280005001e cmpi.b     #$5, $1e(a0)
005b04: 6718         beq.b      $5b1e
005b06: 206f0002     movea.l    $2(a7), a0
005b0a: 0c280006001e cmpi.b     #$6, $1e(a0)
005b10: 670c         beq.b      $5b1e
005b12: 206f0002     movea.l    $2(a7), a0
005b16: 0c280007001e cmpi.b     #$7, $1e(a0)
005b1c: 664c         bne.b      $5b6a
005b1e: 7034         moveq      #$34, d0
005b20: d0af0002     add.l      $2(a7), d0
005b24: 2200         move.l     d0, d1
005b26: 7044         moveq      #$44, d0
005b28: d0af0006     add.l      $6(a7), d0
005b2c: 206e8ce6     movea.l    -$731a(a6), a0
005b30: 4e90         jsr        (a0)
005b32: 4a00         tst.b      d0
005b34: 6708         beq.b      $5b3e
005b36: 1f7c00020001 move.b     #$2, $1(a7)
005b3c: 6006         bra.b      $5b44
005b3e: 1f7c00010001 move.b     #$1, $1(a7)
005b44: 206f0002     movea.l    $2(a7), a0
005b48: 102f0001     move.b     $1(a7), d0
005b4c: b0280055     cmp.b      $55(a0), d0
005b50: 660c         bne.b      $5b5e
005b52: 206f0006     movea.l    $6(a7), a0
005b56: 117c0016002f move.b     #$16, $2f(a0)
005b5c: 6032         bra.b      $5b90
005b5e: 206f0006     movea.l    $6(a7), a0
005b62: 117c000b002f move.b     #$b, $2f(a0)
005b68: 6026         bra.b      $5b90
005b6a: 206f0006     movea.l    $6(a7), a0
005b6e: 48680044     pea.l      $44(a0)
005b72: 222f0006     move.l     $6(a7), d1
005b76: 206e8500     movea.l    -$7b00(a6), a0
005b7a: 20280020     move.l     $20(a0), d0
005b7e: 6100cade     bsr.w      $265e
005b82: 588f         addq.l     #$4, a7
005b84: 2f400002     move.l     d0, $2(a7)
005b88: 4aaf0002     tst.l      $2(a7)
005b8c: 6600ff6c     bne.w      $5afa
005b90: 5c8f         addq.l     #$6, a7
005b92: 4ced0102fff8 movem.l    -$8(a5), d1/a0
005b98: 4e5d         unlk       a5
005b9a: 4e75         rts        
005b9c: 4e550000     link.w     a5, #$0
005ba0: 48e7c080     movem.l    d0-d1/a0, -(a7)
005ba4: 4fefffe6     lea.l      -$1a(a7), a7
005ba8: 1f7c00010019 move.b     #$1, $19(a7)
005bae: 42af0010     clr.l      $10(a7)
005bb2: 6018         bra.b      $5bcc
005bb4: 70a6         moveq      #$a6, d0
005bb6: 6002         bra.b      $5bba
005bb8: 705a         moveq      #$5a, d0
005bba: 2f400010     move.l     d0, $10(a7)
005bbe: 602c         bra.b      $5bec
005bc0: 42af0010     clr.l      $10(a7)
005bc4: 6026         bra.b      $5bec
005bc6: 422f0019     clr.b      $19(a7)
005bca: 6020         bra.b      $5bec
005bcc: 7000         moveq      #$0, d0
005bce: 102f001d     move.b     $1d(a7), d0
005bd2: 0c4000ff     cmpi.w     #$ff, d0
005bd6: 62ee         bhi.b      $5bc6
005bd8: 0c00000b     cmpi.b     #$b, d0
005bdc: 67d6         beq.b      $5bb4
005bde: 0c000016     cmpi.b     #$16, d0
005be2: 67d4         beq.b      $5bb8
005be4: 0c000042     cmpi.b     #$42, d0
005be8: 67d6         beq.b      $5bc0
005bea: 60da         bra.b      $5bc6
005bec: 70ec         moveq      #$ec, d0
005bee: d0af0010     add.l      $10(a7), d0
005bf2: 2f400008     move.l     d0, $8(a7)
005bf6: 7014         moveq      #$14, d0
005bf8: d0af0010     add.l      $10(a7), d0
005bfc: 2f400004     move.l     d0, $4(a7)
005c00: 206e8508     movea.l    -$7af8(a6), a0
005c04: 3068002c     movea.w    $2c(a0), a0
005c08: 2f48000c     move.l     a0, $c(a7)
005c0c: 202f000c     move.l     $c(a7), d0
005c10: b0af0008     cmp.l      $8(a7), d0
005c14: 6f0000a2     ble.w      $5cb8
005c18: 202f000c     move.l     $c(a7), d0
005c1c: b0af0004     cmp.l      $4(a7), d0
005c20: 6c000096     bge.w      $5cb8
005c24: 202f0010     move.l     $10(a7), d0
005c28: b0af000c     cmp.l      $c(a7), d0
005c2c: 6c06         bge.b      $5c34
005c2e: 202f0010     move.l     $10(a7), d0
005c32: 6004         bra.b      $5c38
005c34: 202f000c     move.l     $c(a7), d0
005c38: 7246         moveq      #$46, d1
005c3a: 9081         sub.l      d1, d0
005c3c: 2f400008     move.l     d0, $8(a7)
005c40: 202f0010     move.l     $10(a7), d0
005c44: b0af000c     cmp.l      $c(a7), d0
005c48: 6f06         ble.b      $5c50
005c4a: 202f0010     move.l     $10(a7), d0
005c4e: 6004         bra.b      $5c54
005c50: 202f000c     move.l     $c(a7), d0
005c54: 7246         moveq      #$46, d1
005c56: d081         add.l      d1, d0
005c58: 2f400004     move.l     d0, $4(a7)
005c5c: 2eae8504     move.l     -$7afc(a6), (a7)
005c60: 42af0014     clr.l      $14(a7)
005c64: 6038         bra.b      $5c9e
005c66: 2057         movea.l    (a7), a0
005c68: 2ea80004     move.l     $4(a0), (a7)
005c6c: 2057         movea.l    (a7), a0
005c6e: 3068002c     movea.w    $2c(a0), a0
005c72: 2f48000c     move.l     a0, $c(a7)
005c76: 2017         move.l     (a7), d0
005c78: b0ae8508     cmp.l      -$7af8(a6), d0
005c7c: 6720         beq.b      $5c9e
005c7e: 2057         movea.l    (a7), a0
005c80: 4a280020     tst.b      $20(a0)
005c84: 6718         beq.b      $5c9e
005c86: 202f000c     move.l     $c(a7), d0
005c8a: b0af0008     cmp.l      $8(a7), d0
005c8e: 6f0e         ble.b      $5c9e
005c90: 202f000c     move.l     $c(a7), d0
005c94: b0af0004     cmp.l      $4(a7), d0
005c98: 6c04         bge.b      $5c9e
005c9a: 422f0019     clr.b      $19(a7)
005c9e: 4a2f0019     tst.b      $19(a7)
005ca2: 6718         beq.b      $5cbc
005ca4: 206e8500     movea.l    -$7b00(a6), a0
005ca8: 202f0014     move.l     $14(a7), d0
005cac: 52af0014     addq.l     #$1, $14(a7)
005cb0: b0a8004e     cmp.l      $4e(a0), d0
005cb4: 6db0         blt.b      $5c66
005cb6: 6004         bra.b      $5cbc
005cb8: 422f0019     clr.b      $19(a7)
005cbc: 102f0019     move.b     $19(a7), d0
005cc0: 4fef001a     lea.l      $1a(a7), a7
005cc4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
005cca: 4e5d         unlk       a5
005ccc: 4e75         rts        
005cce: 4e550000     link.w     a5, #$0
005cd2: 48e78880     movem.l    d0/d4/a0, -(a7)
005cd6: 518f         subq.l     #$8, a7
005cd8: 42af0004     clr.l      $4(a7)
005cdc: 206e8500     movea.l    -$7b00(a6), a0
005ce0: 2ea80020     move.l     $20(a0), (a7)
005ce4: 602c         bra.b      $5d12
005ce6: 2057         movea.l    (a7), a0
005ce8: 0c280005001e cmpi.b     #$5, $1e(a0)
005cee: 6714         beq.b      $5d04
005cf0: 2057         movea.l    (a7), a0
005cf2: 0c280006001e cmpi.b     #$6, $1e(a0)
005cf8: 670a         beq.b      $5d04
005cfa: 2057         movea.l    (a7), a0
005cfc: 0c280007001e cmpi.b     #$7, $1e(a0)
005d02: 660a         bne.b      $5d0e
005d04: 2057         movea.l    (a7), a0
005d06: 20280014     move.l     $14(a0), d0
005d0a: d1af0004     add.l      d0, $4(a7)
005d0e: 2057         movea.l    (a7), a0
005d10: 2e90         move.l     (a0), (a7)
005d12: 4a97         tst.l      (a7)
005d14: 66d0         bne.b      $5ce6
005d16: 0caf000001c20004 cmpi.l     #$1c2, $4(a7)
005d1e: 6e44         bgt.b      $5d64
005d20: 700b         moveq      #$b, d0
005d22: 6100fe78     bsr.w      $5b9c
005d26: 4a00         tst.b      d0
005d28: 670e         beq.b      $5d38
005d2a: 206e8508     movea.l    -$7af8(a6), a0
005d2e: 117c000b002e move.b     #$b, $2e(a0)
005d34: 7802         moveq      #$2, d4
005d36: 602e         bra.b      $5d66
005d38: 7016         moveq      #$16, d0
005d3a: 6100fe60     bsr.w      $5b9c
005d3e: 4a00         tst.b      d0
005d40: 670c         beq.b      $5d4e
005d42: 206e8508     movea.l    -$7af8(a6), a0
005d46: 117c0016002e move.b     #$16, $2e(a0)
005d4c: 60e6         bra.b      $5d34
005d4e: 7042         moveq      #$42, d0
005d50: 6100fe4a     bsr.w      $5b9c
005d54: 4a00         tst.b      d0
005d56: 670c         beq.b      $5d64
005d58: 206e8508     movea.l    -$7af8(a6), a0
005d5c: 117c0042002e move.b     #$42, $2e(a0)
005d62: 60d0         bra.b      $5d34
005d64: 7803         moveq      #$3, d4
005d66: 1004         move.b     d4, d0
005d68: 508f         addq.l     #$8, a7
005d6a: 4ced0110fff8 movem.l    -$8(a5), d4/a0
005d70: 4e5d         unlk       a5
005d72: 4e75         rts        
005d74: 4e550000     link.w     a5, #$0
005d78: 48e78880     movem.l    d0/d4/a0, -(a7)
005d7c: 206e8500     movea.l    -$7b00(a6), a0
005d80: 7001         moveq      #$1, d0
005d82: b0a80056     cmp.l      $56(a0), d0
005d86: 6d10         blt.b      $5d98
005d88: 206e8500     movea.l    -$7b00(a6), a0
005d8c: 7001         moveq      #$1, d0
005d8e: b0a8005a     cmp.l      $5a(a0), d0
005d92: 6d04         blt.b      $5d98
005d94: 780d         moveq      #$d, d4
005d96: 6002         bra.b      $5d9a
005d98: 780e         moveq      #$e, d4
005d9a: 1004         move.b     d4, d0
005d9c: 4ced0110fff8 movem.l    -$8(a5), d4/a0
005da2: 4e5d         unlk       a5
005da4: 4e75         rts        
005da6: 4e550000     link.w     a5, #$0
005daa: 48e78080     movem.l    d0/a0, -(a7)
005dae: 206e8500     movea.l    -$7b00(a6), a0
005db2: 10280036     move.b     $36(a0), d0
005db6: 4ced0100fffc movem.l    -$4(a5), a0
005dbc: 4e5d         unlk       a5
005dbe: 4e75         rts        
005dc0: 4e550000     link.w     a5, #$0
005dc4: 48e78080     movem.l    d0/a0, -(a7)
005dc8: 6112         bsr.b      $5ddc
005dca: 206e8500     movea.l    -$7b00(a6), a0
005dce: 11400036     move.b     d0, $36(a0)
005dd2: 4ced0100fffc movem.l    -$4(a5), a0
005dd8: 4e5d         unlk       a5
005dda: 4e75         rts        
005ddc: 4e550000     link.w     a5, #$0
005de0: 48e7cfa0     movem.l    d0-d1/d4-d7/a0/a2, -(a7)
005de4: 5d8f         subq.l     #$6, a7
005de6: 206e8500     movea.l    -$7b00(a6), a0
005dea: 24680020     movea.l    $20(a0), a2
005dee: 7c00         moveq      #$0, d6
005df0: 7e00         moveq      #$0, d7
005df2: 42af0002     clr.l      $2(a7)
005df6: 1f7c00010001 move.b     #$1, $1(a7)
005dfc: 6000013e     bra.w      $5f3c
005e00: 4a2a001e     tst.b      $1e(a2)
005e04: 66000134     bne.w      $5f3a
005e08: 4a2a0026     tst.b      $26(a2)
005e0c: 672a         beq.b      $5e38
005e0e: 0c2a00010026 cmpi.b     #$1, $26(a2)
005e14: 6722         beq.b      $5e38
005e16: 0c2a00060026 cmpi.b     #$6, $26(a2)
005e1c: 671a         beq.b      $5e38
005e1e: 0c2a00070026 cmpi.b     #$7, $26(a2)
005e24: 6712         beq.b      $5e38
005e26: 0c2a00080026 cmpi.b     #$8, $26(a2)
005e2c: 670a         beq.b      $5e38
005e2e: 0c2a00030026 cmpi.b     #$3, $26(a2)
005e34: 66000104     bne.w      $5f3a
005e38: 382a002c     move.w     $2c(a2), d4
005e3c: 4a44         tst.w      d4
005e3e: 6c06         bge.b      $5e46
005e40: 3004         move.w     d4, d0
005e42: 4440         neg.w      d0
005e44: 6002         bra.b      $5e48
005e46: 3004         move.w     d4, d0
005e48: 3a00         move.w     d0, d5
005e4a: 0c45005a     cmpi.w     #$5a, d5
005e4e: 6f06         ble.b      $5e56
005e50: 70a6         moveq      #$a6, d0
005e52: d045         add.w      d5, d0
005e54: 6002         bra.b      $5e58
005e56: 3005         move.w     d5, d0
005e58: 3a00         move.w     d0, d5
005e5a: 0c450023     cmpi.w     #$23, d5
005e5e: 6f0e         ble.b      $5e6e
005e60: 0c450037     cmpi.w     #$37, d5
005e64: 6c08         bge.b      $5e6e
005e66: 422f0001     clr.b      $1(a7)
005e6a: 600000a6     bra.w      $5f12
005e6e: 4a44         tst.w      d4
005e70: 6f0a         ble.b      $5e7c
005e72: 3004         move.w     d4, d0
005e74: 48c0         ext.l      d0
005e76: 722d         moveq      #$2d, d1
005e78: d081         add.l      d1, d0
005e7a: 6008         bra.b      $5e84
005e7c: 3004         move.w     d4, d0
005e7e: 48c0         ext.l      d0
005e80: 722d         moveq      #$2d, d1
005e82: 9081         sub.l      d1, d0
005e84: 4c7c08000000005a divs.l     #$5a, d0
005e8c: 725a         moveq      #$5a, d1
005e8e: 4c010000     mulu.l     d1, d0
005e92: 3800         move.w     d0, d4
005e94: 6000007c     bra.w      $5f12
005e98: 5286         addq.l     #$1, d6
005e9a: 7001         moveq      #$1, d0
005e9c: b086         cmp.l      d6, d0
005e9e: 6c04         bge.b      $5ea4
005ea0: 422f0001     clr.b      $1(a7)
005ea4: 4a2a002e     tst.b      $2e(a2)
005ea8: 67000090     beq.w      $5f3a
005eac: 0c2a000b002e cmpi.b     #$b, $2e(a2)
005eb2: 6056         bra.b      $5f0a
005eb4: 5287         addq.l     #$1, d7
005eb6: 7001         moveq      #$1, d0
005eb8: b087         cmp.l      d7, d0
005eba: 6c04         bge.b      $5ec0
005ebc: 422f0001     clr.b      $1(a7)
005ec0: 4a2a002e     tst.b      $2e(a2)
005ec4: 67000074     beq.w      $5f3a
005ec8: 0c2a004d002e cmpi.b     #$4d, $2e(a2)
005ece: 6700006a     beq.w      $5f3a
005ed2: 0c2a0042002e cmpi.b     #$42, $2e(a2)
005ed8: 6030         bra.b      $5f0a
005eda: 52af0002     addq.l     #$1, $2(a7)
005ede: 7001         moveq      #$1, d0
005ee0: b0af0002     cmp.l      $2(a7), d0
005ee4: 6c04         bge.b      $5eea
005ee6: 422f0001     clr.b      $1(a7)
005eea: 4a2a002e     tst.b      $2e(a2)
005eee: 674a         beq.b      $5f3a
005ef0: 0c2a0016002e cmpi.b     #$16, $2e(a2)
005ef6: 6012         bra.b      $5f0a
005ef8: 4a2a002e     tst.b      $2e(a2)
005efc: 673c         beq.b      $5f3a
005efe: 0c2a0037002e cmpi.b     #$37, $2e(a2)
005f04: 6734         beq.b      $5f3a
005f06: b5ee8504     cmpa.l     -$7afc(a6), a2
005f0a: 672e         beq.b      $5f3a
005f0c: 422f0001     clr.b      $1(a7)
005f10: 6028         bra.b      $5f3a
005f12: 0c4400b4     cmpi.w     #$b4, d4
005f16: 67e0         beq.b      $5ef8
005f18: 6210         bhi.b      $5f2a
005f1a: 0c04005a     cmpi.b     #$5a, d4
005f1e: 67ba         beq.b      $5eda
005f20: 6218         bhi.b      $5f3a
005f22: 4a04         tst.b      d4
005f24: 6700ff8e     beq.w      $5eb4
005f28: 6010         bra.b      $5f3a
005f2a: 0c44ffa6     cmpi.w     #$ffa6, d4
005f2e: 6700ff68     beq.w      $5e98
005f32: 6206         bhi.b      $5f3a
005f34: 0c44ff4c     cmpi.w     #$ff4c, d4
005f38: 67be         beq.b      $5ef8
005f3a: 2452         movea.l    (a2), a2
005f3c: 200a         move.l     a2, d0
005f3e: 6708         beq.b      $5f48
005f40: 4a2f0001     tst.b      $1(a7)
005f44: 6600feba     bne.w      $5e00
005f48: 102f0001     move.b     $1(a7), d0
005f4c: 5c8f         addq.l     #$6, a7
005f4e: 4ced05f2ffe4 movem.l    -$1c(a5), d1/d4-d7/a0/a2
005f54: 4e5d         unlk       a5
005f56: 4e75         rts        
005f58: 4e550000     link.w     a5, #$0
005f5c: 48e780a0     movem.l    d0/a0/a2, -(a7)
005f60: 206e8500     movea.l    -$7b00(a6), a0
005f64: 24680020     movea.l    $20(a0), a2
005f68: 6010         bra.b      $5f7a
005f6a: 200a         move.l     a2, d0
005f6c: 6100cf4e     bsr.w      $2ebc
005f70: 4a00         tst.b      d0
005f72: 6704         beq.b      $5f78
005f74: 7001         moveq      #$1, d0
005f76: 6008         bra.b      $5f80
005f78: 2452         movea.l    (a2), a2
005f7a: 200a         move.l     a2, d0
005f7c: 66ec         bne.b      $5f6a
005f7e: 7000         moveq      #$0, d0
005f80: 4ced0500fff8 movem.l    -$8(a5), a0/a2
005f86: 4e5d         unlk       a5
005f88: 4e75         rts        
005f8a: 4e550000     link.w     a5, #$0
005f8e: 48e78020     movem.l    d0/a2, -(a7)
005f92: 2457         movea.l    (a7), a2
005f94: 600e         bra.b      $5fa4
005f96: 246a0004     movea.l    $4(a2), a2
005f9a: 200a         move.l     a2, d0
005f9c: 6100cee0     bsr.w      $2e7e
005fa0: 4a00         tst.b      d0
005fa2: 6604         bne.b      $5fa8
005fa4: 200a         move.l     a2, d0
005fa6: 66ee         bne.b      $5f96
005fa8: 200a         move.l     a2, d0
005faa: 4ced0400fffc movem.l    -$4(a5), a2
005fb0: 4e5d         unlk       a5
005fb2: 4e75         rts        
005fb4: 4e550000     link.w     a5, #$0
005fb8: 48e7c8e0     movem.l    d0-d1/d4/a0-a2, -(a7)
005fbc: 206e8500     movea.l    -$7b00(a6), a0
005fc0: 226e8500     movea.l    -$7b00(a6), a1
005fc4: 2029004e     move.l     $4e(a1), d0
005fc8: b0a8004a     cmp.l      $4a(a0), d0
005fcc: 6646         bne.b      $6014
005fce: 6100fdd6     bsr.w      $5da6
005fd2: 4a00         tst.b      d0
005fd4: 673e         beq.b      $6014
005fd6: 206e8500     movea.l    -$7b00(a6), a0
005fda: 24680020     movea.l    $20(a0), a2
005fde: 6030         bra.b      $6010
005fe0: 382a002c     move.w     $2c(a2), d4
005fe4: 4a44         tst.w      d4
005fe6: 6f0a         ble.b      $5ff2
005fe8: 3004         move.w     d4, d0
005fea: 48c0         ext.l      d0
005fec: 722d         moveq      #$2d, d1
005fee: d081         add.l      d1, d0
005ff0: 6008         bra.b      $5ffa
005ff2: 3004         move.w     d4, d0
005ff4: 48c0         ext.l      d0
005ff6: 722d         moveq      #$2d, d1
005ff8: 9081         sub.l      d1, d0
005ffa: 4c7c08000000005a divs.l     #$5a, d0
006002: 725a         moveq      #$5a, d1
006004: 4c010000     mulu.l     d1, d0
006008: 3800         move.w     d0, d4
00600a: 3544002c     move.w     d4, $2c(a2)
00600e: 2452         movea.l    (a2), a2
006010: 200a         move.l     a2, d0
006012: 66cc         bne.b      $5fe0
006014: 4ced0712ffec movem.l    -$14(a5), d1/d4/a0-a2
00601a: 4e5d         unlk       a5
00601c: 4e75         rts        
00601e: 4e550000     link.w     a5, #$0
006022: 48e788c0     movem.l    d0/d4/a0-a1, -(a7)
006026: 6100f97e     bsr.w      $59a6
00602a: 4a00         tst.b      d0
00602c: 670a         beq.b      $6038
00602e: 6100f9fa     bsr.w      $5a2a
006032: 1800         move.b     d0, d4
006034: 6000008a     bra.w      $60c0
006038: 6100f56c     bsr.w      $55a6
00603c: 4a00         tst.b      d0
00603e: 6706         beq.b      $6046
006040: 780f         moveq      #$f, d4
006042: 6000007c     bra.w      $60c0
006046: 6100f438     bsr.w      $5480
00604a: 4a00         tst.b      d0
00604c: 6706         beq.b      $6054
00604e: 7810         moveq      #$10, d4
006050: 6000006e     bra.w      $60c0
006054: 206e8500     movea.l    -$7b00(a6), a0
006058: 0c2800010010 cmpi.b     #$1, $10(a0)
00605e: 6606         bne.b      $6066
006060: 6100fc6c     bsr.w      $5cce
006064: 60cc         bra.b      $6032
006066: 206e8500     movea.l    -$7b00(a6), a0
00606a: 0c28000c0010 cmpi.b     #$c, $10(a0)
006070: 6606         bne.b      $6078
006072: 6100fd00     bsr.w      $5d74
006076: 60ba         bra.b      $6032
006078: 206e8500     movea.l    -$7b00(a6), a0
00607c: 0c28000a0010 cmpi.b     #$a, $10(a0)
006082: 6604         bne.b      $6088
006084: 780a         moveq      #$a, d4
006086: 6038         bra.b      $60c0
006088: 6100fd1c     bsr.w      $5da6
00608c: 4a00         tst.b      d0
00608e: 670c         beq.b      $609c
006090: 6100fec6     bsr.w      $5f58
006094: 4a00         tst.b      d0
006096: 6704         beq.b      $609c
006098: 7814         moveq      #$14, d4
00609a: 6024         bra.b      $60c0
00609c: 6100f2d2     bsr.w      $5370
0060a0: 4a00         tst.b      d0
0060a2: 6704         beq.b      $60a8
0060a4: 7805         moveq      #$5, d4
0060a6: 6018         bra.b      $60c0
0060a8: 206e8500     movea.l    -$7b00(a6), a0
0060ac: 226e8500     movea.l    -$7b00(a6), a1
0060b0: 2029004e     move.l     $4e(a1), d0
0060b4: b0a8004a     cmp.l      $4a(a0), d0
0060b8: 6604         bne.b      $60be
0060ba: 7815         moveq      #$15, d4
0060bc: 6002         bra.b      $60c0
0060be: 7813         moveq      #$13, d4
0060c0: 206e8500     movea.l    -$7b00(a6), a0
0060c4: 11440010     move.b     d4, $10(a0)
0060c8: 4ced0310fff4 movem.l    -$c(a5), d4/a0-a1
0060ce: 4e5d         unlk       a5
0060d0: 4e75         rts        
0060d2: 4e550000     link.w     a5, #$0
0060d6: 48e78880     movem.l    d0/d4/a0, -(a7)
0060da: 7800         moveq      #$0, d4
0060dc: 206e8500     movea.l    -$7b00(a6), a0
0060e0: 4aa8005a     tst.l      $5a(a0)
0060e4: 6708         beq.b      $60ee
0060e6: 2004         move.l     d4, d0
0060e8: 08c00001     bset.b     #$1, d0
0060ec: 2800         move.l     d0, d4
0060ee: 206e8500     movea.l    -$7b00(a6), a0
0060f2: 4aa80056     tst.l      $56(a0)
0060f6: 6708         beq.b      $6100
0060f8: 2004         move.l     d4, d0
0060fa: 08c00002     bset.b     #$2, d0
0060fe: 2800         move.l     d0, d4
006100: 206e8500     movea.l    -$7b00(a6), a0
006104: 4aa8005e     tst.l      $5e(a0)
006108: 6708         beq.b      $6112
00610a: 2004         move.l     d4, d0
00610c: 08c00003     bset.b     #$3, d0
006110: 2800         move.l     d0, d4
006112: 206e8500     movea.l    -$7b00(a6), a0
006116: 4aa80062     tst.l      $62(a0)
00611a: 6708         beq.b      $6124
00611c: 2004         move.l     d4, d0
00611e: 08c00004     bset.b     #$4, d0
006122: 2800         move.l     d0, d4
006124: 206e8500     movea.l    -$7b00(a6), a0
006128: 21440014     move.l     d4, $14(a0)
00612c: 4ced0110fff8 movem.l    -$8(a5), d4/a0
006132: 4e5d         unlk       a5
006134: 4e75         rts        
006136: 4e550000     link.w     a5, #$0
00613a: 48e788c0     movem.l    d0/d4/a0-a1, -(a7)
00613e: 206e8508     movea.l    -$7af8(a6), a0
006142: 0c2800050058 cmpi.b     #$5, $58(a0)
006148: 662a         bne.b      $6174
00614a: 206e8500     movea.l    -$7b00(a6), a0
00614e: 7002         moveq      #$2, d0
006150: b0a8004a     cmp.l      $4a(a0), d0
006154: 6c1e         bge.b      $6174
006156: 206e8504     movea.l    -$7afc(a6), a0
00615a: 0c2800050058 cmpi.b     #$5, $58(a0)
006160: 660c         bne.b      $616e
006162: 206e8500     movea.l    -$7b00(a6), a0
006166: 7002         moveq      #$2, d0
006168: b0a8004a     cmp.l      $4a(a0), d0
00616c: 6d06         blt.b      $6174
00616e: 7802         moveq      #$2, d4
006170: 6000034e     bra.w      $64c0
006174: 206e8508     movea.l    -$7af8(a6), a0
006178: 0c2800080057 cmpi.b     #$8, $57(a0)
00617e: 670e         beq.b      $618e
006180: 206e8508     movea.l    -$7af8(a6), a0
006184: 0c28000a0057 cmpi.b     #$a, $57(a0)
00618a: 6600007a     bne.w      $6206
00618e: 206e8504     movea.l    -$7afc(a6), a0
006192: 4a280057     tst.b      $57(a0)
006196: 6700006e     beq.w      $6206
00619a: 206e8504     movea.l    -$7afc(a6), a0
00619e: 0c2800020057 cmpi.b     #$2, $57(a0)
0061a4: 6760         beq.b      $6206
0061a6: 206e8504     movea.l    -$7afc(a6), a0
0061aa: 0c2800010057 cmpi.b     #$1, $57(a0)
0061b0: 6754         beq.b      $6206
0061b2: 206e8504     movea.l    -$7afc(a6), a0
0061b6: 0c2800030057 cmpi.b     #$3, $57(a0)
0061bc: 6748         beq.b      $6206
0061be: 206e8504     movea.l    -$7afc(a6), a0
0061c2: 0c2800040057 cmpi.b     #$4, $57(a0)
0061c8: 6730         beq.b      $61fa
0061ca: 206e8504     movea.l    -$7afc(a6), a0
0061ce: 0c2800050057 cmpi.b     #$5, $57(a0)
0061d4: 6724         beq.b      $61fa
0061d6: 206e8504     movea.l    -$7afc(a6), a0
0061da: 0c2800090057 cmpi.b     #$9, $57(a0)
0061e0: 6718         beq.b      $61fa
0061e2: 206e8504     movea.l    -$7afc(a6), a0
0061e6: 0c2800080057 cmpi.b     #$8, $57(a0)
0061ec: 670c         beq.b      $61fa
0061ee: 206e8504     movea.l    -$7afc(a6), a0
0061f2: 0c28000a0057 cmpi.b     #$a, $57(a0)
0061f8: 6660         bne.b      $625a
0061fa: 206e8504     movea.l    -$7afc(a6), a0
0061fe: 0c280004005a cmpi.b     #$4, $5a(a0)
006204: 6454         bcc.b      $625a
006206: 206e8508     movea.l    -$7af8(a6), a0
00620a: 0c2800040057 cmpi.b     #$4, $57(a0)
006210: 6730         beq.b      $6242
006212: 206e8508     movea.l    -$7af8(a6), a0
006216: 0c2800050057 cmpi.b     #$5, $57(a0)
00621c: 6724         beq.b      $6242
00621e: 206e8508     movea.l    -$7af8(a6), a0
006222: 0c2800090057 cmpi.b     #$9, $57(a0)
006228: 6718         beq.b      $6242
00622a: 206e8508     movea.l    -$7af8(a6), a0
00622e: 0c2800080057 cmpi.b     #$8, $57(a0)
006234: 670c         beq.b      $6242
006236: 206e8508     movea.l    -$7af8(a6), a0
00623a: 0c28000a0057 cmpi.b     #$a, $57(a0)
006240: 661e         bne.b      $6260
006242: 206e8508     movea.l    -$7af8(a6), a0
006246: 0c280004005a cmpi.b     #$4, $5a(a0)
00624c: 6412         bcc.b      $6260
00624e: 206e8504     movea.l    -$7afc(a6), a0
006252: 0c28000d0057 cmpi.b     #$d, $57(a0)
006258: 6606         bne.b      $6260
00625a: 7804         moveq      #$4, d4
00625c: 60000262     bra.w      $64c0
006260: 206e8508     movea.l    -$7af8(a6), a0
006264: 0c2800010057 cmpi.b     #$1, $57(a0)
00626a: 670c         beq.b      $6278
00626c: 206e8508     movea.l    -$7af8(a6), a0
006270: 0c2800030057 cmpi.b     #$3, $57(a0)
006276: 662e         bne.b      $62a6
006278: 206e8504     movea.l    -$7afc(a6), a0
00627c: 4a280057     tst.b      $57(a0)
006280: 6724         beq.b      $62a6
006282: 206e8504     movea.l    -$7afc(a6), a0
006286: 0c2800020057 cmpi.b     #$2, $57(a0)
00628c: 6718         beq.b      $62a6
00628e: 206e8504     movea.l    -$7afc(a6), a0
006292: 0c2800010057 cmpi.b     #$1, $57(a0)
006298: 670c         beq.b      $62a6
00629a: 206e8504     movea.l    -$7afc(a6), a0
00629e: 0c2800030057 cmpi.b     #$3, $57(a0)
0062a4: 6668         bne.b      $630e
0062a6: 206e8508     movea.l    -$7af8(a6), a0
0062aa: 4a280057     tst.b      $57(a0)
0062ae: 6724         beq.b      $62d4
0062b0: 206e8508     movea.l    -$7af8(a6), a0
0062b4: 0c2800020057 cmpi.b     #$2, $57(a0)
0062ba: 6718         beq.b      $62d4
0062bc: 206e8508     movea.l    -$7af8(a6), a0
0062c0: 0c2800010057 cmpi.b     #$1, $57(a0)
0062c6: 670c         beq.b      $62d4
0062c8: 206e8508     movea.l    -$7af8(a6), a0
0062cc: 0c2800030057 cmpi.b     #$3, $57(a0)
0062d2: 6640         bne.b      $6314
0062d4: 206e8508     movea.l    -$7af8(a6), a0
0062d8: 0c2800020057 cmpi.b     #$2, $57(a0)
0062de: 6734         beq.b      $6314
0062e0: 206e8504     movea.l    -$7afc(a6), a0
0062e4: 4a280057     tst.b      $57(a0)
0062e8: 672a         beq.b      $6314
0062ea: 206e8504     movea.l    -$7afc(a6), a0
0062ee: 0c2800020057 cmpi.b     #$2, $57(a0)
0062f4: 671e         beq.b      $6314
0062f6: 206e8504     movea.l    -$7afc(a6), a0
0062fa: 0c2800010057 cmpi.b     #$1, $57(a0)
006300: 6712         beq.b      $6314
006302: 206e8504     movea.l    -$7afc(a6), a0
006306: 0c2800030057 cmpi.b     #$3, $57(a0)
00630c: 6706         beq.b      $6314
00630e: 7806         moveq      #$6, d4
006310: 600001ae     bra.w      $64c0
006314: 206e8504     movea.l    -$7afc(a6), a0
006318: 4a280057     tst.b      $57(a0)
00631c: 6656         bne.b      $6374
00631e: 206e8508     movea.l    -$7af8(a6), a0
006322: 4a280057     tst.b      $57(a0)
006326: 674c         beq.b      $6374
006328: 206e8504     movea.l    -$7afc(a6), a0
00632c: 4a280057     tst.b      $57(a0)
006330: 6618         bne.b      $634a
006332: 206e8508     movea.l    -$7af8(a6), a0
006336: 0c2800020057 cmpi.b     #$2, $57(a0)
00633c: 6736         beq.b      $6374
00633e: 206e8508     movea.l    -$7af8(a6), a0
006342: 0c2800030057 cmpi.b     #$3, $57(a0)
006348: 672a         beq.b      $6374
00634a: 206e8508     movea.l    -$7af8(a6), a0
00634e: 0c2800010057 cmpi.b     #$1, $57(a0)
006354: 671e         beq.b      $6374
006356: 206e8508     movea.l    -$7af8(a6), a0
00635a: 0c2800030057 cmpi.b     #$3, $57(a0)
006360: 6712         beq.b      $6374
006362: 206e8500     movea.l    -$7b00(a6), a0
006366: 0c28004d0044 cmpi.b     #$4d, $44(a0)
00636c: 6706         beq.b      $6374
00636e: 7807         moveq      #$7, d4
006370: 6000014e     bra.w      $64c0
006374: 206e8508     movea.l    -$7af8(a6), a0
006378: 0c2800010056 cmpi.b     #$1, $56(a0)
00637e: 660c         bne.b      $638c
006380: 206e8504     movea.l    -$7afc(a6), a0
006384: 0c2800010056 cmpi.b     #$1, $56(a0)
00638a: 6616         bne.b      $63a2
00638c: 206e8508     movea.l    -$7af8(a6), a0
006390: 0c2800030056 cmpi.b     #$3, $56(a0)
006396: 6610         bne.b      $63a8
006398: 206e8504     movea.l    -$7afc(a6), a0
00639c: 4a280056     tst.b      $56(a0)
0063a0: 6606         bne.b      $63a8
0063a2: 7808         moveq      #$8, d4
0063a4: 6000011a     bra.w      $64c0
0063a8: 206e8508     movea.l    -$7af8(a6), a0
0063ac: 0c2800020056 cmpi.b     #$2, $56(a0)
0063b2: 660c         bne.b      $63c0
0063b4: 206e8504     movea.l    -$7afc(a6), a0
0063b8: 0c2800020056 cmpi.b     #$2, $56(a0)
0063be: 6618         bne.b      $63d8
0063c0: 206e8508     movea.l    -$7af8(a6), a0
0063c4: 0c2800030056 cmpi.b     #$3, $56(a0)
0063ca: 6612         bne.b      $63de
0063cc: 206e8500     movea.l    -$7b00(a6), a0
0063d0: 0c28000b0010 cmpi.b     #$b, $10(a0)
0063d6: 6606         bne.b      $63de
0063d8: 7809         moveq      #$9, d4
0063da: 600000e4     bra.w      $64c0
0063de: 206e8508     movea.l    -$7af8(a6), a0
0063e2: 0c28000d0057 cmpi.b     #$d, $57(a0)
0063e8: 6624         bne.b      $640e
0063ea: 206e8504     movea.l    -$7afc(a6), a0
0063ee: 0c28000d0057 cmpi.b     #$d, $57(a0)
0063f4: 6718         beq.b      $640e
0063f6: 206e8504     movea.l    -$7afc(a6), a0
0063fa: 226e8508     movea.l    -$7af8(a6), a1
0063fe: 1029005a     move.b     $5a(a1), d0
006402: b028005a     cmp.b      $5a(a0), d0
006406: 6306         bls.b      $640e
006408: 780a         moveq      #$a, d4
00640a: 600000b4     bra.w      $64c0
00640e: 206e8508     movea.l    -$7af8(a6), a0
006412: 0c28000f0057 cmpi.b     #$f, $57(a0)
006418: 6612         bne.b      $642c
00641a: 206e8504     movea.l    -$7afc(a6), a0
00641e: 0c28000f0057 cmpi.b     #$f, $57(a0)
006424: 6706         beq.b      $642c
006426: 780b         moveq      #$b, d4
006428: 60000096     bra.w      $64c0
00642c: 206e8508     movea.l    -$7af8(a6), a0
006430: 0c28000e0057 cmpi.b     #$e, $57(a0)
006436: 6612         bne.b      $644a
006438: 206e8504     movea.l    -$7afc(a6), a0
00643c: 0c28000e0057 cmpi.b     #$e, $57(a0)
006442: 6706         beq.b      $644a
006444: 780c         moveq      #$c, d4
006446: 60000078     bra.w      $64c0
00644a: 206e8508     movea.l    -$7af8(a6), a0
00644e: 0c2800040059 cmpi.b     #$4, $59(a0)
006454: 661a         bne.b      $6470
006456: 206e8504     movea.l    -$7afc(a6), a0
00645a: 0c2800040059 cmpi.b     #$4, $59(a0)
006460: 670e         beq.b      $6470
006462: 206e8508     movea.l    -$7af8(a6), a0
006466: 4a280020     tst.b      $20(a0)
00646a: 6704         beq.b      $6470
00646c: 780d         moveq      #$d, d4
00646e: 6050         bra.b      $64c0
006470: 206e8508     movea.l    -$7af8(a6), a0
006474: 0c2800040059 cmpi.b     #$4, $59(a0)
00647a: 6710         beq.b      $648c
00647c: 206e8504     movea.l    -$7afc(a6), a0
006480: 0c2800040059 cmpi.b     #$4, $59(a0)
006486: 6604         bne.b      $648c
006488: 780e         moveq      #$e, d4
00648a: 6034         bra.b      $64c0
00648c: 206e8500     movea.l    -$7b00(a6), a0
006490: 0c2800150010 cmpi.b     #$15, $10(a0)
006496: 6626         bne.b      $64be
006498: 6100d9b6     bsr.w      $3e50
00649c: b0ae8508     cmp.l      -$7af8(a6), d0
0064a0: 661c         bne.b      $64be
0064a2: 206e8508     movea.l    -$7af8(a6), a0
0064a6: 0c28000b002e cmpi.b     #$b, $2e(a0)
0064ac: 670c         beq.b      $64ba
0064ae: 206e8508     movea.l    -$7af8(a6), a0
0064b2: 0c280016002e cmpi.b     #$16, $2e(a0)
0064b8: 6604         bne.b      $64be
0064ba: 7803         moveq      #$3, d4
0064bc: 6002         bra.b      $64c0
0064be: 7800         moveq      #$0, d4
0064c0: 206e8508     movea.l    -$7af8(a6), a0
0064c4: 0c280042002e cmpi.b     #$42, $2e(a0)
0064ca: 670c         beq.b      $64d8
0064cc: 206e8508     movea.l    -$7af8(a6), a0
0064d0: 0c28004d002e cmpi.b     #$4d, $2e(a0)
0064d6: 6632         bne.b      $650a
0064d8: 0c04000e     cmpi.b     #$e, d4
0064dc: 672c         beq.b      $650a
0064de: 0c04000d     cmpi.b     #$d, d4
0064e2: 6726         beq.b      $650a
0064e4: 0c040006     cmpi.b     #$6, d4
0064e8: 6720         beq.b      $650a
0064ea: 0c04000a     cmpi.b     #$a, d4
0064ee: 671a         beq.b      $650a
0064f0: 0c04000c     cmpi.b     #$c, d4
0064f4: 6714         beq.b      $650a
0064f6: 0c04000b     cmpi.b     #$b, d4
0064fa: 670e         beq.b      $650a
0064fc: 0c040009     cmpi.b     #$9, d4
006500: 6708         beq.b      $650a
006502: 0c040008     cmpi.b     #$8, d4
006506: 6702         beq.b      $650a
006508: 7800         moveq      #$0, d4
00650a: 206e8500     movea.l    -$7b00(a6), a0
00650e: 11440013     move.b     d4, $13(a0)
006512: 4ced0310fff4 movem.l    -$c(a5), d4/a0-a1
006518: 4e5d         unlk       a5
00651a: 4e75         rts        
00651c: 4e550000     link.w     a5, #$0
006520: 48e78080     movem.l    d0/a0, -(a7)
006524: 0c2e000193b2 cmpi.b     #$1, -$6c4e(a6)
00652a: 6606         bne.b      $6532
00652c: 41fa028a     lea.l      $67b8(pc), a0
006530: 601e         bra.b      $6550
006532: 0c2e000293b2 cmpi.b     #$2, -$6c4e(a6)
006538: 6606         bne.b      $6540
00653a: 41fa02a3     lea.l      $67df(pc), a0
00653e: 6010         bra.b      $6550
006540: 4a2e93b2     tst.b      -$6c4e(a6)
006544: 6606         bne.b      $654c
006546: 41fa02bf     lea.l      $6807(pc), a0
00654a: 6004         bra.b      $6550
00654c: 41fa02e2     lea.l      $6830(pc), a0
006550: 2008         move.l     a0, d0
006552: 610036f8     bsr.w      $9c4c
006556: 4ced0100fffc movem.l    -$4(a5), a0
00655c: 4e5d         unlk       a5
00655e: 4e75         rts        
006560: 4e550000     link.w     a5, #$0
006564: 48e78080     movem.l    d0/a0, -(a7)
006568: 41fa02f0     lea.l      $685a(pc), a0
00656c: 2008         move.l     a0, d0
00656e: 610036dc     bsr.w      $9c4c
006572: 1d7c000193b2 move.b     #$1, -$6c4e(a6)
006578: 4ced0100fffc movem.l    -$4(a5), a0
00657e: 4e5d         unlk       a5
006580: 4e75         rts        
006582: 4e550000     link.w     a5, #$0
006586: 48e78080     movem.l    d0/a0, -(a7)
00658a: 41fa02f4     lea.l      $6880(pc), a0
00658e: 2008         move.l     a0, d0
006590: 610036ba     bsr.w      $9c4c
006594: 1d7c000293b2 move.b     #$2, -$6c4e(a6)
00659a: 4ced0100fffc movem.l    -$4(a5), a0
0065a0: 4e5d         unlk       a5
0065a2: 4e75         rts        
0065a4: 4e550000     link.w     a5, #$0
0065a8: 48e78080     movem.l    d0/a0, -(a7)
0065ac: 41fa02f9     lea.l      $68a7(pc), a0
0065b0: 2008         move.l     a0, d0
0065b2: 61003698     bsr.w      $9c4c
0065b6: 422e93b2     clr.b      -$6c4e(a6)
0065ba: 4ced0100fffc movem.l    -$4(a5), a0
0065c0: 4e5d         unlk       a5
0065c2: 4e75         rts        
0065c4: 4e550000     link.w     a5, #$0
0065c8: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0065cc: 7800         moveq      #$0, d4
0065ce: 206e8500     movea.l    -$7b00(a6), a0
0065d2: 24680020     movea.l    $20(a0), a2
0065d6: 6022         bra.b      $65fa
0065d8: b5ee8504     cmpa.l     -$7afc(a6), a2
0065dc: 6706         beq.b      $65e4
0065de: 4a2a0055     tst.b      $55(a2)
0065e2: 6712         beq.b      $65f6
0065e4: 48780002     pea.l      $2.w
0065e8: 7201         moveq      #$1, d1
0065ea: 200a         move.l     a2, d0
0065ec: 6100c5b2     bsr.w      $2ba0
0065f0: 588f         addq.l     #$4, a7
0065f2: 4a00         tst.b      d0
0065f4: 6702         beq.b      $65f8
0065f6: 5284         addq.l     #$1, d4
0065f8: 2452         movea.l    (a2), a2
0065fa: 200a         move.l     a2, d0
0065fc: 66da         bne.b      $65d8
0065fe: 2004         move.l     d4, d0
006600: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
006606: 4e5d         unlk       a5
006608: 4e75         rts        
00660a: 4e550000     link.w     a5, #$0
00660e: 48e7c080     movem.l    d0-d1/a0, -(a7)
006612: 4feffff2     lea.l      -$e(a7), a7
006616: 42af0002     clr.l      $2(a7)
00661a: 422f0001     clr.b      $1(a7)
00661e: 206f000e     movea.l    $e(a7), a0
006622: 4aa8001c     tst.l      $1c(a0)
006626: 6700007e     beq.w      $66a6
00662a: 206f000e     movea.l    $e(a7), a0
00662e: 2f680020000a move.l     $20(a0), $a(a7)
006634: 2f6f000a0006 move.l     $a(a7), $6(a7)
00663a: 6032         bra.b      $666e
00663c: 206f0006     movea.l    $6(a7), a0
006640: 0c280005001e cmpi.b     #$5, $1e(a0)
006646: 6718         beq.b      $6660
006648: 206f0006     movea.l    $6(a7), a0
00664c: 0c280006001e cmpi.b     #$6, $1e(a0)
006652: 670c         beq.b      $6660
006654: 206f0006     movea.l    $6(a7), a0
006658: 0c280007001e cmpi.b     #$7, $1e(a0)
00665e: 6606         bne.b      $6666
006660: 2f6f00060002 move.l     $6(a7), $2(a7)
006666: 206f0006     movea.l    $6(a7), a0
00666a: 2f500006     move.l     (a0), $6(a7)
00666e: 4aaf0006     tst.l      $6(a7)
006672: 6706         beq.b      $667a
006674: 4aaf0002     tst.l      $2(a7)
006678: 67c2         beq.b      $663c
00667a: 222f0002     move.l     $2(a7), d1
00667e: 6016         bra.b      $6696
006680: 202f0006     move.l     $6(a7), d0
006684: b0af0002     cmp.l      $2(a7), d0
006688: 6608         bne.b      $6692
00668a: 1f7c00010001 move.b     #$1, $1(a7)
006690: 6014         bra.b      $66a6
006692: 222f0006     move.l     $6(a7), d1
006696: 202f000a     move.l     $a(a7), d0
00669a: 611c         bsr.b      $66b8
00669c: 2f400006     move.l     d0, $6(a7)
0066a0: 4aaf0006     tst.l      $6(a7)
0066a4: 66da         bne.b      $6680
0066a6: 102f0001     move.b     $1(a7), d0
0066aa: 4fef000e     lea.l      $e(a7), a7
0066ae: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0066b4: 4e5d         unlk       a5
0066b6: 4e75         rts        
0066b8: 4e550000     link.w     a5, #$0
0066bc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0066c0: 518f         subq.l     #$8, a7
0066c2: 42af0004     clr.l      $4(a7)
0066c6: 4aaf0008     tst.l      $8(a7)
0066ca: 675c         beq.b      $6728
0066cc: 4aaf000c     tst.l      $c(a7)
0066d0: 6756         beq.b      $6728
0066d2: 2eaf0008     move.l     $8(a7), (a7)
0066d6: 604c         bra.b      $6724
0066d8: 2057         movea.l    (a7), a0
0066da: 0c280005001e cmpi.b     #$5, $1e(a0)
0066e0: 6714         beq.b      $66f6
0066e2: 2057         movea.l    (a7), a0
0066e4: 0c280006001e cmpi.b     #$6, $1e(a0)
0066ea: 670a         beq.b      $66f6
0066ec: 2057         movea.l    (a7), a0
0066ee: 0c280007001e cmpi.b     #$7, $1e(a0)
0066f4: 662a         bne.b      $6720
0066f6: 202f000c     move.l     $c(a7), d0
0066fa: b097         cmp.l      (a7), d0
0066fc: 6722         beq.b      $6720
0066fe: 2217         move.l     (a7), d1
006700: 202f000c     move.l     $c(a7), d0
006704: 61000204     bsr.w      $690a
006708: 4a00         tst.b      d0
00670a: 6714         beq.b      $6720
00670c: 2217         move.l     (a7), d1
00670e: 202f000c     move.l     $c(a7), d0
006712: 6100ca86     bsr.w      $319a
006716: 4a00         tst.b      d0
006718: 6706         beq.b      $6720
00671a: 2f570004     move.l     (a7), $4(a7)
00671e: 6008         bra.b      $6728
006720: 2057         movea.l    (a7), a0
006722: 2e90         move.l     (a0), (a7)
006724: 4a97         tst.l      (a7)
006726: 66b0         bne.b      $66d8
006728: 202f0004     move.l     $4(a7), d0
00672c: 508f         addq.l     #$8, a7
00672e: 4ced0100fffc movem.l    -$4(a5), a0
006734: 4e5d         unlk       a5
006736: 4e75         rts        
006738: 4e550000     link.w     a5, #$0
00673c: 48e7c080     movem.l    d0-d1/a0, -(a7)
006740: 518f         subq.l     #$8, a7
006742: 42af0004     clr.l      $4(a7)
006746: 4aaf0008     tst.l      $8(a7)
00674a: 675c         beq.b      $67a8
00674c: 4aaf000c     tst.l      $c(a7)
006750: 6756         beq.b      $67a8
006752: 2eaf0008     move.l     $8(a7), (a7)
006756: 604c         bra.b      $67a4
006758: 2057         movea.l    (a7), a0
00675a: 0c280005001e cmpi.b     #$5, $1e(a0)
006760: 6714         beq.b      $6776
006762: 2057         movea.l    (a7), a0
006764: 0c280006001e cmpi.b     #$6, $1e(a0)
00676a: 670a         beq.b      $6776
00676c: 2057         movea.l    (a7), a0
00676e: 0c280007001e cmpi.b     #$7, $1e(a0)
006774: 662a         bne.b      $67a0
006776: 202f000c     move.l     $c(a7), d0
00677a: b097         cmp.l      (a7), d0
00677c: 6722         beq.b      $67a0
00677e: 2217         move.l     (a7), d1
006780: 202f000c     move.l     $c(a7), d0
006784: 61000184     bsr.w      $690a
006788: 4a00         tst.b      d0
00678a: 6714         beq.b      $67a0
00678c: 222f000c     move.l     $c(a7), d1
006790: 2017         move.l     (a7), d0
006792: 6100ca06     bsr.w      $319a
006796: 4a00         tst.b      d0
006798: 6706         beq.b      $67a0
00679a: 2f570004     move.l     (a7), $4(a7)
00679e: 6008         bra.b      $67a8
0067a0: 2057         movea.l    (a7), a0
0067a2: 2e90         move.l     (a0), (a7)
0067a4: 4a97         tst.l      (a7)
0067a6: 66b0         bne.b      $6758
0067a8: 202f0004     move.l     $4(a7), d0
0067ac: 508f         addq.l     #$8, a7
0067ae: 4ced0100fffc movem.l    -$4(a5), a0
0067b4: 4e5d         unlk       a5
0067b6: 4e75         rts        
0067b8: 5061         addq.w     #$8, -(a1)
0067ba: 7274         moveq      #$74, d1
0067bc: 6c79         bge.b      $6837
0067be: 2064         movea.l    -(a4), a0
0067c0: 6967         bvs.b      $6829
0067c2: 6974         bvs.b      $6838
0067c4: 697a         bvs.b      $6840
0067c6: 696e         bvs.b      $6836
0067c8: 6720         beq.b      $67ea
0067ca: 6775         beq.b      $6841
0067cc: 6964         bvs.b      $6832
0067ce: 696e         bvs.b      $683e
0067d0: 6720         beq.b      $67f2
0067d2: 7377         .dc.w      $7377
0067d4: 6974         bvs.b      $684a
0067d6: 6368         bls.b      $6840
0067d8: 6564         bcs.b      $683e
0067da: 204f         movea.l    a7, a0
0067dc: 4e0d         .dc.w      $4e0d
0067de: 00506172     ori.w      #$6172, (a0)
0067e2: 746c         moveq      #$6c, d2
0067e4: 7920         .dc.w      $7920
0067e6: 6469         bcc.b      $6851
0067e8: 6769         beq.b      $6853
0067ea: 7469         moveq      #$69, d2
0067ec: 7a69         moveq      #$69, d5
0067ee: 6e67         bgt.b      $6857
0067f0: 2067         movea.l    -(a7), a0
0067f2: 7569         .dc.w      $7569
0067f4: 6469         bcc.b      $685f
0067f6: 6e67         bgt.b      $685f
0067f8: 207377697463 movea.l    ([$7463, a3]), a0
0067fe: 6865         bvc.b      $6865
006800: 6420         bcc.b      $6822
006802: 4f46         .dc.w      $4f46
006804: 460d         .dc.w      $460d
006806: 00506172     ori.w      #$6172, (a0)
00680a: 746c         moveq      #$6c, d2
00680c: 7920         .dc.w      $7920
00680e: 6469         bcc.b      $6879
006810: 6769         beq.b      $687b
006812: 7469         moveq      #$69, d2
006814: 7a69         moveq      #$69, d5
006816: 6e67         bgt.b      $687f
006818: 2067         movea.l    -(a7), a0
00681a: 7569         .dc.w      $7569
00681c: 6469         bcc.b      $6887
00681e: 6e67         bgt.b      $6887
006820: 2061         movea.l    -(a1), a0
006822: 6363         bls.b      $6887
006824: 6f72         ble.b      $6898
006826: 6469         bcc.b      $6891
006828: 6e67         bgt.b      $6891
00682a: 204d         movea.l    a5, a0
00682c: 4150         .dc.w      $4150
00682e: 0d00         btst.l     d6, d0
006830: 5061         addq.w     #$8, -(a1)
006832: 7274         moveq      #$74, d1
006834: 6c79         bge.b      $68af
006836: 2064         movea.l    -(a4), a0
006838: 6967         bvs.b      $68a1
00683a: 6974         bvs.b      $68b0
00683c: 697a         bvs.b      $68b8
00683e: 696e         bvs.b      $68ae
006840: 6720         beq.b      $6862
006842: 6775         beq.b      $68b9
006844: 6964         bvs.b      $68aa
006846: 696e         bvs.b      $68b6
006848: 6720         beq.b      $686a
00684a: 6d6f         blt.b      $68bb
00684c: 6465         bcc.b      $68b3
00684e: 2055         movea.l    (a5), a0
006850: 4e44         trap       #$4
006852: 4546         .dc.w      $4546
006854: 494e         .dc.w      $494e
006856: 4544         .dc.w      $4544
006858: 0d00         btst.l     d6, d0
00685a: 5345         subq.w     #$1, d5
00685c: 5420         addq.b     #$2, -(a0)
00685e: 7061         moveq      #$61, d0
006860: 7274         moveq      #$74, d1
006862: 6c79         bge.b      $68dd
006864: 2064         movea.l    -(a4), a0
006866: 6967         bvs.b      $68cf
006868: 6974         bvs.b      $68de
00686a: 697a         bvs.b      $68e6
00686c: 6564         bcs.b      $68d2
00686e: 2061         movea.l    -(a1), a0
006870: 7265         moveq      #$65, d1
006872: 6120         bsr.b      $6894
006874: 6775         beq.b      $68eb
006876: 6964         bvs.b      $68dc
006878: 696e         bvs.b      $68e8
00687a: 6720         beq.b      $689c
00687c: 4f4e         .dc.w      $4f4e
00687e: 0d00         btst.l     d6, d0
006880: 5345         subq.w     #$1, d5
006882: 5420         addq.b     #$2, -(a0)
006884: 7061         moveq      #$61, d0
006886: 7274         moveq      #$74, d1
006888: 6c79         bge.b      $6903
00688a: 2064         movea.l    -(a4), a0
00688c: 6967         bvs.b      $68f5
00688e: 6974         bvs.b      $6904
006890: 697a         bvs.b      $690c
006892: 6564         bcs.b      $68f8
006894: 2061         movea.l    -(a1), a0
006896: 7265         moveq      #$65, d1
006898: 6120         bsr.b      $68ba
00689a: 6775         beq.b      $6911
00689c: 6964         bvs.b      $6902
00689e: 696e         bvs.b      $690e
0068a0: 6720         beq.b      $68c2
0068a2: 4f46         .dc.w      $4f46
0068a4: 460d         .dc.w      $460d
0068a6: 00534554     ori.w      #$4554, (a3)
0068aa: 20706172746c79206469 movea.l    ([$746c7920, a0], $6469), a0
0068b4: 6769         beq.b      $691f
0068b6: 7469         moveq      #$69, d2
0068b8: 7a65         moveq      #$65, d5
0068ba: 6420         bcc.b      $68dc
0068bc: 6172         bsr.b      $6930
0068be: 6561         bcs.b      $6921
0068c0: 2067         movea.l    -(a7), a0
0068c2: 7569         .dc.w      $7569
0068c4: 6469         bcc.b      $692f
0068c6: 6e67         bgt.b      $692f
0068c8: 204d         movea.l    a5, a0
0068ca: 4150         .dc.w      $4150
0068cc: 0d00         btst.l     d6, d0
0068ce: 4e550000     link.w     a5, #$0
0068d2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0068d6: 222f0004     move.l     $4(a7), d1
0068da: 7034         moveq      #$34, d0
0068dc: d097         add.l      (a7), d0
0068de: 206e8ce6     movea.l    -$731a(a6), a0
0068e2: 4e90         jsr        (a0)
0068e4: 4a00         tst.b      d0
0068e6: 6612         bne.b      $68fa
0068e8: 222f0004     move.l     $4(a7), d1
0068ec: 703c         moveq      #$3c, d0
0068ee: d097         add.l      (a7), d0
0068f0: 206e8ce6     movea.l    -$731a(a6), a0
0068f4: 4e90         jsr        (a0)
0068f6: 4a00         tst.b      d0
0068f8: 6704         beq.b      $68fe
0068fa: 7001         moveq      #$1, d0
0068fc: 6002         bra.b      $6900
0068fe: 7000         moveq      #$0, d0
006900: 4ced0100fffc movem.l    -$4(a5), a0
006906: 4e5d         unlk       a5
006908: 4e75         rts        
00690a: 4e550000     link.w     a5, #$0
00690e: 48e7c080     movem.l    d0-d1/a0, -(a7)
006912: 7034         moveq      #$34, d0
006914: d0af0004     add.l      $4(a7), d0
006918: 2200         move.l     d0, d1
00691a: 7034         moveq      #$34, d0
00691c: d097         add.l      (a7), d0
00691e: 206e8ce6     movea.l    -$731a(a6), a0
006922: 4e90         jsr        (a0)
006924: 4a00         tst.b      d0
006926: 6642         bne.b      $696a
006928: 703c         moveq      #$3c, d0
00692a: d0af0004     add.l      $4(a7), d0
00692e: 2200         move.l     d0, d1
006930: 7034         moveq      #$34, d0
006932: d097         add.l      (a7), d0
006934: 206e8ce6     movea.l    -$731a(a6), a0
006938: 4e90         jsr        (a0)
00693a: 4a00         tst.b      d0
00693c: 662c         bne.b      $696a
00693e: 7034         moveq      #$34, d0
006940: d0af0004     add.l      $4(a7), d0
006944: 2200         move.l     d0, d1
006946: 703c         moveq      #$3c, d0
006948: d097         add.l      (a7), d0
00694a: 206e8ce6     movea.l    -$731a(a6), a0
00694e: 4e90         jsr        (a0)
006950: 4a00         tst.b      d0
006952: 6616         bne.b      $696a
006954: 703c         moveq      #$3c, d0
006956: d0af0004     add.l      $4(a7), d0
00695a: 2200         move.l     d0, d1
00695c: 703c         moveq      #$3c, d0
00695e: d097         add.l      (a7), d0
006960: 206e8ce6     movea.l    -$731a(a6), a0
006964: 4e90         jsr        (a0)
006966: 4a00         tst.b      d0
006968: 6704         beq.b      $696e
00696a: 7001         moveq      #$1, d0
00696c: 6002         bra.b      $6970
00696e: 7000         moveq      #$0, d0
006970: 4ced0100fffc movem.l    -$4(a5), a0
006976: 4e5d         unlk       a5
006978: 4e75         rts        
00697a: 4e550000     link.w     a5, #$0
00697e: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
006982: 7034         moveq      #$34, d0
006984: d0af0004     add.l      $4(a7), d0
006988: 2200         move.l     d0, d1
00698a: 7034         moveq      #$34, d0
00698c: d097         add.l      (a7), d0
00698e: 206e8ce6     movea.l    -$731a(a6), a0
006992: 4e90         jsr        (a0)
006994: 4a00         tst.b      d0
006996: 672e         beq.b      $69c6
006998: 703c         moveq      #$3c, d0
00699a: d0af0004     add.l      $4(a7), d0
00699e: 2200         move.l     d0, d1
0069a0: 703c         moveq      #$3c, d0
0069a2: d097         add.l      (a7), d0
0069a4: 206e8ce6     movea.l    -$731a(a6), a0
0069a8: 4e90         jsr        (a0)
0069aa: 4a00         tst.b      d0
0069ac: 6718         beq.b      $69c6
0069ae: 703c         moveq      #$3c, d0
0069b0: d097         add.l      (a7), d0
0069b2: 2200         move.l     d0, d1
0069b4: 7034         moveq      #$34, d0
0069b6: d097         add.l      (a7), d0
0069b8: 206e8ce6     movea.l    -$731a(a6), a0
0069bc: 4e90         jsr        (a0)
0069be: 4a00         tst.b      d0
0069c0: 6604         bne.b      $69c6
0069c2: 7802         moveq      #$2, d4
0069c4: 605e         bra.b      $6a24
0069c6: 7034         moveq      #$34, d0
0069c8: d0af0004     add.l      $4(a7), d0
0069cc: 2200         move.l     d0, d1
0069ce: 7034         moveq      #$34, d0
0069d0: d097         add.l      (a7), d0
0069d2: 206e8ce6     movea.l    -$731a(a6), a0
0069d6: 4e90         jsr        (a0)
0069d8: 4a00         tst.b      d0
0069da: 6646         bne.b      $6a22
0069dc: 703c         moveq      #$3c, d0
0069de: d0af0004     add.l      $4(a7), d0
0069e2: 2200         move.l     d0, d1
0069e4: 7034         moveq      #$34, d0
0069e6: d097         add.l      (a7), d0
0069e8: 206e8ce6     movea.l    -$731a(a6), a0
0069ec: 4e90         jsr        (a0)
0069ee: 4a00         tst.b      d0
0069f0: 6630         bne.b      $6a22
0069f2: 7034         moveq      #$34, d0
0069f4: d0af0004     add.l      $4(a7), d0
0069f8: 2200         move.l     d0, d1
0069fa: 703c         moveq      #$3c, d0
0069fc: d097         add.l      (a7), d0
0069fe: 206e8ce6     movea.l    -$731a(a6), a0
006a02: 4e90         jsr        (a0)
006a04: 4a00         tst.b      d0
006a06: 661a         bne.b      $6a22
006a08: 703c         moveq      #$3c, d0
006a0a: d0af0004     add.l      $4(a7), d0
006a0e: 2200         move.l     d0, d1
006a10: 703c         moveq      #$3c, d0
006a12: d097         add.l      (a7), d0
006a14: 206e8ce6     movea.l    -$731a(a6), a0
006a18: 4e90         jsr        (a0)
006a1a: 4a00         tst.b      d0
006a1c: 6604         bne.b      $6a22
006a1e: 7800         moveq      #$0, d4
006a20: 6002         bra.b      $6a24
006a22: 7801         moveq      #$1, d4
006a24: 2004         move.l     d4, d0
006a26: 4ced0110fff8 movem.l    -$8(a5), d4/a0
006a2c: 4e5d         unlk       a5
006a2e: 4e75         rts        
006a30: 4e550000     link.w     a5, #$0
006a34: 48e780a0     movem.l    d0/a0/a2, -(a7)
006a38: 600c         bra.b      $6a46
006a3a: 2457         movea.l    (a7), a2
006a3c: 2057         movea.l    (a7), a0
006a3e: 2e90         move.l     (a0), (a7)
006a40: 200a         move.l     a2, d0
006a42: 610032d0     bsr.w      $9d14
006a46: 4a97         tst.l      (a7)
006a48: 66f0         bne.b      $6a3a
006a4a: 4ced0500fff8 movem.l    -$8(a5), a0/a2
006a50: 4e5d         unlk       a5
006a52: 4e75         rts        
006a54: 4e550000     link.w     a5, #$0
006a58: 48e7c020     movem.l    d0-d1/a2, -(a7)
006a5c: 7008         moveq      #$8, d0
006a5e: 610032a8     bsr.w      $9d08
006a62: 2440         movea.l    d0, a2
006a64: 200a         move.l     a2, d0
006a66: 6614         bne.b      $6a7c
006a68: 42a7         clr.l      -(a7)
006a6a: 7205         moveq      #$5, d1
006a6c: 203c00000099 move.l     #$99, d0
006a72: 6100205c     bsr.w      $8ad0
006a76: 588f         addq.l     #$4, a7
006a78: 6100207c     bsr.w      $8af6
006a7c: 4292         clr.l      (a2)
006a7e: 256f00040004 move.l     $4(a7), $4(a2)
006a84: 220a         move.l     a2, d1
006a86: 2017         move.l     (a7), d0
006a88: 610000dc     bsr.w      $6b66
006a8c: 4ced0400fffc movem.l    -$4(a5), a2
006a92: 4e5d         unlk       a5
006a94: 4e75         rts        
006a96: 4e550000     link.w     a5, #$0
006a9a: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
006a9e: 2457         movea.l    (a7), a2
006aa0: 6020         bra.b      $6ac2
006aa2: 202f0004     move.l     $4(a7), d0
006aa6: b0aa0004     cmp.l      $4(a2), d0
006aaa: 6614         bne.b      $6ac0
006aac: 264a         movea.l    a2, a3
006aae: 220b         move.l     a3, d1
006ab0: 2017         move.l     (a7), d0
006ab2: 61000140     bsr.w      $6bf4
006ab6: 2e80         move.l     d0, (a7)
006ab8: 200b         move.l     a3, d0
006aba: 61003258     bsr.w      $9d14
006abe: 6006         bra.b      $6ac6
006ac0: 2452         movea.l    (a2), a2
006ac2: 200a         move.l     a2, d0
006ac4: 66dc         bne.b      $6aa2
006ac6: 2017         move.l     (a7), d0
006ac8: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
006ace: 4e5d         unlk       a5
006ad0: 4e75         rts        
006ad2: 4e550000     link.w     a5, #$0
006ad6: 48e7c080     movem.l    d0-d1/a0, -(a7)
006ada: 6014         bra.b      $6af0
006adc: 2057         movea.l    (a7), a0
006ade: 202f0004     move.l     $4(a7), d0
006ae2: b0a80004     cmp.l      $4(a0), d0
006ae6: 6604         bne.b      $6aec
006ae8: 7001         moveq      #$1, d0
006aea: 600a         bra.b      $6af6
006aec: 2057         movea.l    (a7), a0
006aee: 2e90         move.l     (a0), (a7)
006af0: 4a97         tst.l      (a7)
006af2: 66e8         bne.b      $6adc
006af4: 7000         moveq      #$0, d0
006af6: 4ced0100fffc movem.l    -$4(a5), a0
006afc: 4e5d         unlk       a5
006afe: 4e75         rts        
006b00: 4e550000     link.w     a5, #$0
006b04: 48e7c080     movem.l    d0-d1/a0, -(a7)
006b08: 222f0004     move.l     $4(a7), d1
006b0c: 7034         moveq      #$34, d0
006b0e: d097         add.l      (a7), d0
006b10: 206e8ce6     movea.l    -$731a(a6), a0
006b14: 4e90         jsr        (a0)
006b16: 4a00         tst.b      d0
006b18: 6708         beq.b      $6b22
006b1a: 2057         movea.l    (a7), a0
006b1c: 41e8003c     lea.l      $3c(a0), a0
006b20: 6006         bra.b      $6b28
006b22: 2057         movea.l    (a7), a0
006b24: 41e80034     lea.l      $34(a0), a0
006b28: 2008         move.l     a0, d0
006b2a: 4ced0100fffc movem.l    -$4(a5), a0
006b30: 4e5d         unlk       a5
006b32: 4e75         rts        
006b34: 4e550000     link.w     a5, #$0
006b38: 48e7c080     movem.l    d0-d1/a0, -(a7)
006b3c: 222f0004     move.l     $4(a7), d1
006b40: 7034         moveq      #$34, d0
006b42: d097         add.l      (a7), d0
006b44: 206e8ce6     movea.l    -$731a(a6), a0
006b48: 4e90         jsr        (a0)
006b4a: 4a00         tst.b      d0
006b4c: 6708         beq.b      $6b56
006b4e: 2057         movea.l    (a7), a0
006b50: 30280028     move.w     $28(a0), d0
006b54: 6006         bra.b      $6b5c
006b56: 2057         movea.l    (a7), a0
006b58: 3028002a     move.w     $2a(a0), d0
006b5c: 4ced0100fffc movem.l    -$4(a5), a0
006b62: 4e5d         unlk       a5
006b64: 4e75         rts        
006b66: 4e550000     link.w     a5, #$0
006b6a: 48e7c080     movem.l    d0-d1/a0, -(a7)
006b6e: 206f0004     movea.l    $4(a7), a0
006b72: 2097         move.l     (a7), (a0)
006b74: 2eaf0004     move.l     $4(a7), (a7)
006b78: 2017         move.l     (a7), d0
006b7a: 4ced0100fffc movem.l    -$4(a5), a0
006b80: 4e5d         unlk       a5
006b82: 4e75         rts        
006b84: 4e550000     link.w     a5, #$0
006b88: 48e7c020     movem.l    d0-d1/a2, -(a7)
006b8c: 2017         move.l     (a7), d0
006b8e: 6142         bsr.b      $6bd2
006b90: 2440         movea.l    d0, a2
006b92: 200a         move.l     a2, d0
006b94: 6606         bne.b      $6b9c
006b96: 2eaf0004     move.l     $4(a7), (a7)
006b9a: 6004         bra.b      $6ba0
006b9c: 24af0004     move.l     $4(a7), (a2)
006ba0: 2017         move.l     (a7), d0
006ba2: 4ced0400fffc movem.l    -$4(a5), a2
006ba8: 4e5d         unlk       a5
006baa: 4e75         rts        
006bac: 4e550000     link.w     a5, #$0
006bb0: 48e7c020     movem.l    d0-d1/a2, -(a7)
006bb4: 2457         movea.l    (a7), a2
006bb6: 600a         bra.b      $6bc2
006bb8: 202f0004     move.l     $4(a7), d0
006bbc: b092         cmp.l      (a2), d0
006bbe: 6706         beq.b      $6bc6
006bc0: 2452         movea.l    (a2), a2
006bc2: 200a         move.l     a2, d0
006bc4: 66f2         bne.b      $6bb8
006bc6: 200a         move.l     a2, d0
006bc8: 4ced0400fffc movem.l    -$4(a5), a2
006bce: 4e5d         unlk       a5
006bd0: 4e75         rts        
006bd2: 4e550000     link.w     a5, #$0
006bd6: 48e78020     movem.l    d0/a2, -(a7)
006bda: 2457         movea.l    (a7), a2
006bdc: 6002         bra.b      $6be0
006bde: 2452         movea.l    (a2), a2
006be0: 200a         move.l     a2, d0
006be2: 6704         beq.b      $6be8
006be4: 4a92         tst.l      (a2)
006be6: 66f6         bne.b      $6bde
006be8: 200a         move.l     a2, d0
006bea: 4ced0400fffc movem.l    -$4(a5), a2
006bf0: 4e5d         unlk       a5
006bf2: 4e75         rts        
006bf4: 4e550000     link.w     a5, #$0
006bf8: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
006bfc: 222f0004     move.l     $4(a7), d1
006c00: 2017         move.l     (a7), d0
006c02: 61a8         bsr.b      $6bac
006c04: 2440         movea.l    d0, a2
006c06: 2657         movea.l    (a7), a3
006c08: 200a         move.l     a2, d0
006c0a: 6608         bne.b      $6c14
006c0c: 206f0004     movea.l    $4(a7), a0
006c10: 2650         movea.l    (a0), a3
006c12: 6006         bra.b      $6c1a
006c14: 206f0004     movea.l    $4(a7), a0
006c18: 2490         move.l     (a0), (a2)
006c1a: 206f0004     movea.l    $4(a7), a0
006c1e: 4290         clr.l      (a0)
006c20: 200b         move.l     a3, d0
006c22: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
006c28: 4e5d         unlk       a5
006c2a: 4e75         rts        
006c2c: 4e550000     link.w     a5, #$0
006c30: 48e78020     movem.l    d0/a2, -(a7)
006c34: 598f         subq.l     #$4, a7
006c36: 246f0004     movea.l    $4(a7), a2
006c3a: 4297         clr.l      (a7)
006c3c: 6004         bra.b      $6c42
006c3e: 5297         addq.l     #$1, (a7)
006c40: 2452         movea.l    (a2), a2
006c42: 200a         move.l     a2, d0
006c44: 66f8         bne.b      $6c3e
006c46: 2017         move.l     (a7), d0
006c48: 588f         addq.l     #$4, a7
006c4a: 4ced0400fffc movem.l    -$4(a5), a2
006c50: 4e5d         unlk       a5
006c52: 4e75         rts        
006c54: 4e550000     link.w     a5, #$0
006c58: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
006c5c: 95ca         suba.l     a2, a2
006c5e: 2657         movea.l    (a7), a3
006c60: 6010         bra.b      $6c72
006c62: 284b         movea.l    a3, a4
006c64: 2653         movea.l    (a3), a3
006c66: 4294         clr.l      (a4)
006c68: 220c         move.l     a4, d1
006c6a: 200a         move.l     a2, d0
006c6c: 6100fef8     bsr.w      $6b66
006c70: 2440         movea.l    d0, a2
006c72: 200b         move.l     a3, d0
006c74: 66ec         bne.b      $6c62
006c76: 200a         move.l     a2, d0
006c78: 4ced1c02fff0 movem.l    -$10(a5), d1/a2-a4
006c7e: 4e5d         unlk       a5
006c80: 4e75         rts        
006c82: 4e550000     link.w     a5, #$0
006c86: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
006c8a: 598f         subq.l     #$4, a7
006c8c: 600000d4     bra.w      $6d62
006c90: 4857         pea.l      (a7)
006c92: 222f0024     move.l     $24(a7), d1
006c96: 7014         moveq      #$14, d0
006c98: d0af0008     add.l      $8(a7), d0
006c9c: 61001752     bsr.w      $83f0
006ca0: 588f         addq.l     #$4, a7
006ca2: 4a80         tst.l      d0
006ca4: 670000a0     beq.w      $6d46
006ca8: 222f0028     move.l     $28(a7), d1
006cac: 202f0024     move.l     $24(a7), d0
006cb0: 61001608     bsr.w      $82ba
006cb4: 4a80         tst.l      d0
006cb6: 6610         bne.b      $6cc8
006cb8: 2217         move.l     (a7), d1
006cba: 206f0020     movea.l    $20(a7), a0
006cbe: 2010         move.l     (a0), d0
006cc0: 61001794     bsr.w      $8456
006cc4: 60000080     bra.w      $6d46
006cc8: 206f0028     movea.l    $28(a7), a0
006ccc: 2f10         move.l     (a0), -(a7)
006cce: 222f0028     move.l     $28(a7), d1
006cd2: 206f0024     movea.l    $24(a7), a0
006cd6: 2010         move.l     (a0), d0
006cd8: 6100010c     bsr.w      $6de6
006cdc: 588f         addq.l     #$4, a7
006cde: 4a00         tst.b      d0
006ce0: 6600008c     bne.w      $6d6e
006ce4: 2217         move.l     (a7), d1
006ce6: 206f0020     movea.l    $20(a7), a0
006cea: 2010         move.l     (a0), d0
006cec: 61001768     bsr.w      $8456
006cf0: 222f0024     move.l     $24(a7), d1
006cf4: 206f0028     movea.l    $28(a7), a0
006cf8: 2010         move.l     (a0), d0
006cfa: 61001676     bsr.w      $8372
006cfe: 6046         bra.b      $6d46
006d00: 2f2f0028     move.l     $28(a7), -(a7)
006d04: 222f0028     move.l     $28(a7), d1
006d08: 202f0024     move.l     $24(a7), d0
006d0c: 610001b2     bsr.w      $6ec0
006d10: 588f         addq.l     #$4, a7
006d12: 4a00         tst.b      d0
006d14: 6730         beq.b      $6d46
006d16: 41d7         lea.l      (a7), a0
006d18: 2208         move.l     a0, d1
006d1a: 206f0020     movea.l    $20(a7), a0
006d1e: 2010         move.l     (a0), d0
006d20: 6100170c     bsr.w      $842e
006d24: 2800         move.l     d0, d4
006d26: 4a84         tst.l      d4
006d28: 671c         beq.b      $6d46
006d2a: 222f0028     move.l     $28(a7), d1
006d2e: 202f0024     move.l     $24(a7), d0
006d32: 61001614     bsr.w      $8348
006d36: 4a80         tst.l      d0
006d38: 6634         bne.b      $6d6e
006d3a: 2217         move.l     (a7), d1
006d3c: 206f0020     movea.l    $20(a7), a0
006d40: 2010         move.l     (a0), d0
006d42: 610016dc     bsr.w      $8420
006d46: 7000         moveq      #$0, d0
006d48: 6026         bra.b      $6d70
006d4a: 202f001c     move.l     $1c(a7), d0
006d4e: 0c800000000b cmpi.l     #$b, d0
006d54: 6700ff3a     beq.w      $6c90
006d58: 0c800000000c cmpi.l     #$c, d0
006d5e: 67a0         beq.b      $6d00
006d60: 600c         bra.b      $6d6e
006d62: 202f0008     move.l     $8(a7), d0
006d66: 0c8000000002 cmpi.l     #$2, d0
006d6c: 67dc         beq.b      $6d4a
006d6e: 2017         move.l     (a7), d0
006d70: 588f         addq.l     #$4, a7
006d72: 4ced0110fff8 movem.l    -$8(a5), d4/a0
006d78: 4e5d         unlk       a5
006d7a: 4e75         rts        
006d7c: 4e550000     link.w     a5, #$0
006d80: 48e7c800     movem.l    d0-d1/d4, -(a7)
006d84: 604a         bra.b      $6dd0
006d86: 222f001c     move.l     $1c(a7), d1
006d8a: 202f0020     move.l     $20(a7), d0
006d8e: 610015e2     bsr.w      $8372
006d92: 2217         move.l     (a7), d1
006d94: 202f0018     move.l     $18(a7), d0
006d98: 610016bc     bsr.w      $8456
006d9c: 6012         bra.b      $6db0
006d9e: 202f0020     move.l     $20(a7), d0
006da2: 61001580     bsr.w      $8324
006da6: 2217         move.l     (a7), d1
006da8: 202f0018     move.l     $18(a7), d0
006dac: 61001672     bsr.w      $8420
006db0: 2800         move.l     d0, d4
006db2: 7001         moveq      #$1, d0
006db4: b084         cmp.l      d4, d0
006db6: 6724         beq.b      $6ddc
006db8: 6022         bra.b      $6ddc
006dba: 202f0014     move.l     $14(a7), d0
006dbe: 0c800000000b cmpi.l     #$b, d0
006dc4: 67c0         beq.b      $6d86
006dc6: 0c800000000c cmpi.l     #$c, d0
006dcc: 67d0         beq.b      $6d9e
006dce: 600c         bra.b      $6ddc
006dd0: 202f0004     move.l     $4(a7), d0
006dd4: 0c8000000002 cmpi.l     #$2, d0
006dda: 67de         beq.b      $6dba
006ddc: 4ced0010fffc movem.l    -$4(a5), d4
006de2: 4e5d         unlk       a5
006de4: 4e75         rts        
006de6: 4e550000     link.w     a5, #$0
006dea: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
006dee: 4fefffd4     lea.l      -$2c(a7), a7
006df2: 7203         moveq      #$3, d1
006df4: 41fa01aa     lea.l      $6fa0(pc), a0
006df8: 2008         move.l     a0, d0
006dfa: 61001e76     bsr.w      $8c72
006dfe: 2800         move.l     d0, d4
006e00: 6d00009e     blt.w      $6ea0
006e04: 7203         moveq      #$3, d1
006e06: 41fa01ab     lea.l      $6fb3(pc), a0
006e0a: 2008         move.l     a0, d0
006e0c: 61001e64     bsr.w      $8c72
006e10: 2a00         move.l     d0, d5
006e12: 6d00008c     blt.w      $6ea0
006e16: 7c00         moveq      #$0, d6
006e18: 7202         moveq      #$2, d1
006e1a: 41fa01aa     lea.l      $6fc6(pc), a0
006e1e: 2008         move.l     a0, d0
006e20: 61001e36     bsr.w      $8c58
006e24: 2800         move.l     d0, d4
006e26: 6c0c         bge.b      $6e34
006e28: 2006         move.l     d6, d0
006e2a: 5286         addq.l     #$1, d6
006e2c: 0c80000005dc cmpi.l     #$5dc, d0
006e32: 6de4         blt.b      $6e18
006e34: 4a84         tst.l      d4
006e36: 6d68         blt.b      $6ea0
006e38: 7c00         moveq      #$0, d6
006e3a: 7201         moveq      #$1, d1
006e3c: 41fa019b     lea.l      $6fd9(pc), a0
006e40: 2008         move.l     a0, d0
006e42: 61001e14     bsr.w      $8c58
006e46: 2a00         move.l     d0, d5
006e48: 6c0c         bge.b      $6e56
006e4a: 2006         move.l     d6, d0
006e4c: 5286         addq.l     #$1, d6
006e4e: 0c80000005dc cmpi.l     #$5dc, d0
006e54: 6de4         blt.b      $6e3a
006e56: 4a85         tst.l      d5
006e58: 6d46         blt.b      $6ea0
006e5a: 2eaf002c     move.l     $2c(a7), (a7)
006e5e: 222f0030     move.l     $30(a7), d1
006e62: 41ef0004     lea.l      $4(a7), a0
006e66: 2008         move.l     a0, d0
006e68: 61002fea     bsr.w      $9e54
006e6c: 2f6f004c0024 move.l     $4c(a7), $24(a7)
006e72: 48780028     pea.l      $28.w
006e76: 41ef0004     lea.l      $4(a7), a0
006e7a: 2208         move.l     a0, d1
006e7c: 2004         move.l     d4, d0
006e7e: 61002e30     bsr.w      $9cb0
006e82: 588f         addq.l     #$4, a7
006e84: 4a80         tst.l      d0
006e86: 6d18         blt.b      $6ea0
006e88: 48780004     pea.l      $4.w
006e8c: 41ef002c     lea.l      $2c(a7), a0
006e90: 2208         move.l     a0, d1
006e92: 2005         move.l     d5, d0
006e94: 61002e12     bsr.w      $9ca8
006e98: 588f         addq.l     #$4, a7
006e9a: 7204         moveq      #$4, d1
006e9c: b280         cmp.l      d0, d1
006e9e: 6704         beq.b      $6ea4
006ea0: 7000         moveq      #$0, d0
006ea2: 600e         bra.b      $6eb2
006ea4: 2004         move.l     d4, d0
006ea6: 61002e1c     bsr.w      $9cc4
006eaa: 2005         move.l     d5, d0
006eac: 61002e16     bsr.w      $9cc4
006eb0: 7001         moveq      #$1, d0
006eb2: 4fef002c     lea.l      $2c(a7), a7
006eb6: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
006ebc: 4e5d         unlk       a5
006ebe: 4e75         rts        
006ec0: 4e550000     link.w     a5, #$0
006ec4: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
006ec8: 4fefffd4     lea.l      -$2c(a7), a7
006ecc: 7c00         moveq      #$0, d6
006ece: 7201         moveq      #$1, d1
006ed0: 41fa011a     lea.l      $6fec(pc), a0
006ed4: 2008         move.l     a0, d0
006ed6: 61001d80     bsr.w      $8c58
006eda: 2800         move.l     d0, d4
006edc: 6c0c         bge.b      $6eea
006ede: 2006         move.l     d6, d0
006ee0: 5286         addq.l     #$1, d6
006ee2: 0c80000005dc cmpi.l     #$5dc, d0
006ee8: 6de4         blt.b      $6ece
006eea: 4a84         tst.l      d4
006eec: 6d00006e     blt.w      $6f5c
006ef0: 7c00         moveq      #$0, d6
006ef2: 7202         moveq      #$2, d1
006ef4: 41fa0109     lea.l      $6fff(pc), a0
006ef8: 2008         move.l     a0, d0
006efa: 61001d5c     bsr.w      $8c58
006efe: 2a00         move.l     d0, d5
006f00: 6c0c         bge.b      $6f0e
006f02: 2006         move.l     d6, d0
006f04: 5286         addq.l     #$1, d6
006f06: 0c80000005dc cmpi.l     #$5dc, d0
006f0c: 6de4         blt.b      $6ef2
006f0e: 4a85         tst.l      d5
006f10: 6d4a         blt.b      $6f5c
006f12: 48780028     pea.l      $28.w
006f16: 41ef0004     lea.l      $4(a7), a0
006f1a: 2208         move.l     a0, d1
006f1c: 2004         move.l     d4, d0
006f1e: 61002d88     bsr.w      $9ca8
006f22: 588f         addq.l     #$4, a7
006f24: 7228         moveq      #$28, d1
006f26: b280         cmp.l      d0, d1
006f28: 6632         bne.b      $6f5c
006f2a: 206f002c     movea.l    $2c(a7), a0
006f2e: 2097         move.l     (a7), (a0)
006f30: 41ef0004     lea.l      $4(a7), a0
006f34: 2208         move.l     a0, d1
006f36: 202f0030     move.l     $30(a7), d0
006f3a: 61002f18     bsr.w      $9e54
006f3e: 206f004c     movea.l    $4c(a7), a0
006f42: 20af0024     move.l     $24(a7), (a0)
006f46: 48780004     pea.l      $4.w
006f4a: 41ef002c     lea.l      $2c(a7), a0
006f4e: 2208         move.l     a0, d1
006f50: 2005         move.l     d5, d0
006f52: 61002d5c     bsr.w      $9cb0
006f56: 588f         addq.l     #$4, a7
006f58: 4a80         tst.l      d0
006f5a: 6c04         bge.b      $6f60
006f5c: 7000         moveq      #$0, d0
006f5e: 600e         bra.b      $6f6e
006f60: 2004         move.l     d4, d0
006f62: 61002d60     bsr.w      $9cc4
006f66: 2005         move.l     d5, d0
006f68: 61002d5a     bsr.w      $9cc4
006f6c: 7001         moveq      #$1, d0
006f6e: 4fef002c     lea.l      $2c(a7), a7
006f72: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
006f78: 4e5d         unlk       a5
006f7a: 4e75         rts        
006f7c: 4e550000     link.w     a5, #$0
006f80: 48e78000     movem.l    d0, -(a7)
006f84: 2017         move.l     (a7), d0
006f86: 61001412     bsr.w      $839a
006f8a: 4e5d         unlk       a5
006f8c: 4e75         rts        
006f8e: 4e550000     link.w     a5, #$0
006f92: 48e78000     movem.l    d0, -(a7)
006f96: 2017         move.l     (a7), d0
006f98: 61001430     bsr.w      $83ca
006f9c: 4e5d         unlk       a5
006f9e: 4e75         rts        
006fa0: 2f706970652f6c6f635f move.l     $652f6c6f(a0, invalid.w), $635f(a7)
006faa: 6461         bcc.b      $700d
006fac: 745f         moveq      #$5f, d2
006fae: 7069         moveq      #$69, d0
006fb0: 7065         moveq      #$65, d0
006fb2: 002f70697065 ori.b      #$69, $7065(a7)
006fb8: 2f6c6f635f61 move.l     $6f63(a4), $5f61(a7)
006fbe: 636b         bls.b      $702b
006fc0: 5f70697065002f70 subq.w     #$7, $65002f70(a0, invalid.w)
006fc8: 6970         bvs.b      $703a
006fca: 652f         bcs.b      $6ffb
006fcc: 6c6f         bge.b      $703d
006fce: 635f         bls.b      $702f
006fd0: 6461         bcc.b      $7033
006fd2: 745f         moveq      #$5f, d2
006fd4: 7069         moveq      #$69, d0
006fd6: 7065         moveq      #$65, d0
006fd8: 002f70697065 ori.b      #$69, $7065(a7)
006fde: 2f6c6f635f61 move.l     $6f63(a4), $5f61(a7)
006fe4: 636b         bls.b      $7051
006fe6: 5f70697065002f70 subq.w     #$7, $65002f70(a0, invalid.w)
006fee: 6970         bvs.b      $7060
006ff0: 652f         bcs.b      $7021
006ff2: 6c6f         bge.b      $7063
006ff4: 635f         bls.b      $7055
006ff6: 6461         bcc.b      $7059
006ff8: 745f         moveq      #$5f, d2
006ffa: 7069         moveq      #$69, d0
006ffc: 7065         moveq      #$65, d0
006ffe: 002f70697065 ori.b      #$69, $7065(a7)
007004: 2f6c6f635f61 move.l     $6f63(a4), $5f61(a7)
00700a: 636b         bls.b      $7077
00700c: 5f70697065004e55 subq.w     #$7, $65004e55(a0, invalid.w)
007014: 000048e7     ori.b      #$e7, d0
007018: c080         and.l      d0, d0
00701a: 4feffde6     lea.l      -$21a(a7), a7
00701e: 3ebc00c8     move.w     #$c8, (a7)
007022: 206f021a     movea.l    $21a(a7), a0
007026: 2f500002     move.l     (a0), $2(a7)
00702a: 2f6800040006 move.l     $4(a0), $6(a7)
007030: 1f6f0221000a move.b     $221(a7), $a(a7)
007036: 41d7         lea.l      (a7), a0
007038: 2008         move.l     a0, d0
00703a: 610004bc     bsr.w      $74f8
00703e: 4fef021a     lea.l      $21a(a7), a7
007042: 4ced0100fffc movem.l    -$4(a5), a0
007048: 4e5d         unlk       a5
00704a: 4e75         rts        
00704c: 4e550000     link.w     a5, #$0
007050: 48e7c000     movem.l    d0-d1, -(a7)
007054: 61000372     bsr.w      $73c8
007058: 4a00         tst.b      d0
00705a: 6604         bne.b      $7060
00705c: 7000         moveq      #$0, d0
00705e: 6008         bra.b      $7068
007060: 724c         moveq      #$4c, d1
007062: 2017         move.l     (a7), d0
007064: 61000418     bsr.w      $747e
007068: 4ced0002fffc movem.l    -$4(a5), d1
00706e: 4e5d         unlk       a5
007070: 4e75         rts        
007072: 4e550000     link.w     a5, #$0
007076: 48e7c000     movem.l    d0-d1, -(a7)
00707a: 7202         moveq      #$2, d1
00707c: 2017         move.l     (a7), d0
00707e: 610003fe     bsr.w      $747e
007082: 4ced0002fffc movem.l    -$4(a5), d1
007088: 4e5d         unlk       a5
00708a: 4e75         rts        
00708c: 4e550000     link.w     a5, #$0
007090: 48e7e8b0     movem.l    d0-d2/d4/a0/a2-a3, -(a7)
007094: 2440         movea.l    d0, a2
007096: 2641         movea.l    d1, a3
007098: 7276         moveq      #$76, d1
00709a: 200a         move.l     a2, d0
00709c: 610003e0     bsr.w      $747e
0070a0: 4a00         tst.b      d0
0070a2: 670000be     beq.w      $7162
0070a6: 4a2a0074     tst.b      $74(a2)
0070aa: 6604         bne.b      $70b0
0070ac: 7008         moveq      #$8, d0
0070ae: 6008         bra.b      $70b8
0070b0: 7000         moveq      #$0, d0
0070b2: 102a0074     move.b     $74(a2), d0
0070b6: e788         lsl.l      #$3, d0
0070b8: 61002c4e     bsr.w      $9d08
0070bc: 2680         move.l     d0, (a3)
0070be: 4a93         tst.l      (a3)
0070c0: 660e         bne.b      $70d0
0070c2: 203c0000025a move.l     #$25a, d0
0070c8: 610002dc     bsr.w      $73a6
0070cc: 60000094     bra.w      $7162
0070d0: 4a2a0075     tst.b      $75(a2)
0070d4: 6608         bne.b      $70de
0070d6: 203c000000e5 move.l     #$e5, d0
0070dc: 600e         bra.b      $70ec
0070de: 7000         moveq      #$0, d0
0070e0: 102a0075     move.b     $75(a2), d0
0070e4: 4c3c0000000000e5 mulu.l     #$e5, d0
0070ec: 61002c1a     bsr.w      $9d08
0070f0: 206f0024     movea.l    $24(a7), a0
0070f4: 2080         move.l     d0, (a0)
0070f6: 206f0024     movea.l    $24(a7), a0
0070fa: 4a90         tst.l      (a0)
0070fc: 660e         bne.b      $710c
0070fe: 203c0000025a move.l     #$25a, d0
007104: 610002a0     bsr.w      $73a6
007108: 2013         move.l     (a3), d0
00710a: 6052         bra.b      $715e
00710c: 7800         moveq      #$0, d4
00710e: 6014         bra.b      $7124
007110: 7208         moveq      #$8, d1
007112: 2013         move.l     (a3), d0
007114: 2404         move.l     d4, d2
007116: e78a         lsl.l      #$3, d2
007118: d082         add.l      d2, d0
00711a: 61000362     bsr.w      $747e
00711e: 4a00         tst.b      d0
007120: 6730         beq.b      $7152
007122: 5284         addq.l     #$1, d4
007124: 7000         moveq      #$0, d0
007126: 102a0074     move.b     $74(a2), d0
00712a: b084         cmp.l      d4, d0
00712c: 6ee2         bgt.b      $7110
00712e: 7800         moveq      #$0, d4
007130: 6036         bra.b      $7168
007132: 223c000000e5 move.l     #$e5, d1
007138: 206f0024     movea.l    $24(a7), a0
00713c: 2010         move.l     (a0), d0
00713e: 243c000000e5 move.l     #$e5, d2
007144: 4c042002     mulu.l     d4, d2
007148: d082         add.l      d2, d0
00714a: 61000332     bsr.w      $747e
00714e: 4a00         tst.b      d0
007150: 6614         bne.b      $7166
007152: 2013         move.l     (a3), d0
007154: 61002bbe     bsr.w      $9d14
007158: 206f0024     movea.l    $24(a7), a0
00715c: 2010         move.l     (a0), d0
00715e: 61002bb4     bsr.w      $9d14
007162: 7000         moveq      #$0, d0
007164: 6018         bra.b      $717e
007166: 5284         addq.l     #$1, d4
007168: 7000         moveq      #$0, d0
00716a: 102a0075     move.b     $75(a2), d0
00716e: b084         cmp.l      d4, d0
007170: 6ec0         bgt.b      $7132
007172: 203c00000259 move.l     #$259, d0
007178: 6100022c     bsr.w      $73a6
00717c: 7001         moveq      #$1, d0
00717e: 4ced0d14ffec movem.l    -$14(a5), d2/d4/a0/a2-a3
007184: 4e5d         unlk       a5
007186: 4e75         rts        
007188: 4e550000     link.w     a5, #$0
00718c: 48e7c080     movem.l    d0-d1/a0, -(a7)
007190: 4feffde6     lea.l      -$21a(a7), a7
007194: 3ebc00ca     move.w     #$ca, (a7)
007198: 222f021a     move.l     $21a(a7), d1
00719c: 41ef0002     lea.l      $2(a7), a0
0071a0: 2008         move.l     a0, d0
0071a2: 61002cb0     bsr.w      $9e54
0071a6: 41d7         lea.l      (a7), a0
0071a8: 2008         move.l     a0, d0
0071aa: 6100034c     bsr.w      $74f8
0071ae: 4fef021a     lea.l      $21a(a7), a7
0071b2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0071b8: 4e5d         unlk       a5
0071ba: 4e75         rts        
0071bc: 4e550000     link.w     a5, #$0
0071c0: 48e7c000     movem.l    d0-d1, -(a7)
0071c4: 61000202     bsr.w      $73c8
0071c8: 4a00         tst.b      d0
0071ca: 6604         bne.b      $71d0
0071cc: 7000         moveq      #$0, d0
0071ce: 6008         bra.b      $71d8
0071d0: 7212         moveq      #$12, d1
0071d2: 2017         move.l     (a7), d0
0071d4: 610002a8     bsr.w      $747e
0071d8: 4ced0002fffc movem.l    -$4(a5), d1
0071de: 4e5d         unlk       a5
0071e0: 4e75         rts        
0071e2: 4e550000     link.w     a5, #$0
0071e6: 48e78080     movem.l    d0/a0, -(a7)
0071ea: 4feffde6     lea.l      -$21a(a7), a7
0071ee: 3ebc00c9     move.w     #$c9, (a7)
0071f2: 206f021a     movea.l    $21a(a7), a0
0071f6: 2f500002     move.l     (a0), $2(a7)
0071fa: 2f6800040006 move.l     $4(a0), $6(a7)
007200: 41d7         lea.l      (a7), a0
007202: 2008         move.l     a0, d0
007204: 610002f2     bsr.w      $74f8
007208: 4fef021a     lea.l      $21a(a7), a7
00720c: 4ced0100fffc movem.l    -$4(a5), a0
007212: 4e5d         unlk       a5
007214: 4e75         rts        
007216: 4e550000     link.w     a5, #$0
00721a: 48e7c000     movem.l    d0-d1, -(a7)
00721e: 610001a8     bsr.w      $73c8
007222: 4a00         tst.b      d0
007224: 6604         bne.b      $722a
007226: 7000         moveq      #$0, d0
007228: 600c         bra.b      $7236
00722a: 223c0000017c move.l     #$17c, d1
007230: 2017         move.l     (a7), d0
007232: 6100024a     bsr.w      $747e
007236: 4ced0002fffc movem.l    -$4(a5), d1
00723c: 4e5d         unlk       a5
00723e: 4e75         rts        
007240: 4e550000     link.w     a5, #$0
007244: 48e78080     movem.l    d0/a0, -(a7)
007248: 4feffde6     lea.l      -$21a(a7), a7
00724c: 3ebc00db     move.w     #$db, (a7)
007250: 206f021a     movea.l    $21a(a7), a0
007254: 2f500002     move.l     (a0), $2(a7)
007258: 2f6800040006 move.l     $4(a0), $6(a7)
00725e: 41d7         lea.l      (a7), a0
007260: 2008         move.l     a0, d0
007262: 61000294     bsr.w      $74f8
007266: 4fef021a     lea.l      $21a(a7), a7
00726a: 4ced0100fffc movem.l    -$4(a5), a0
007270: 4e5d         unlk       a5
007272: 4e75         rts        
007274: 4e550000     link.w     a5, #$0
007278: 48e7e080     movem.l    d0-d2/a0, -(a7)
00727c: 598f         subq.l     #$4, a7
00727e: 61000148     bsr.w      $73c8
007282: 4a00         tst.b      d0
007284: 670000f4     beq.w      $737a
007288: 7276         moveq      #$76, d1
00728a: 202f0004     move.l     $4(a7), d0
00728e: 610001ee     bsr.w      $747e
007292: 4a00         tst.b      d0
007294: 670000e4     beq.w      $737a
007298: 206f0004     movea.l    $4(a7), a0
00729c: 4a280074     tst.b      $74(a0)
0072a0: 6604         bne.b      $72a6
0072a2: 7008         moveq      #$8, d0
0072a4: 600c         bra.b      $72b2
0072a6: 206f0004     movea.l    $4(a7), a0
0072aa: 7000         moveq      #$0, d0
0072ac: 10280074     move.b     $74(a0), d0
0072b0: e788         lsl.l      #$3, d0
0072b2: 61002a54     bsr.w      $9d08
0072b6: 206f0008     movea.l    $8(a7), a0
0072ba: 2080         move.l     d0, (a0)
0072bc: 206f0008     movea.l    $8(a7), a0
0072c0: 4a90         tst.l      (a0)
0072c2: 660e         bne.b      $72d2
0072c4: 203c0000025a move.l     #$25a, d0
0072ca: 610000da     bsr.w      $73a6
0072ce: 600000aa     bra.w      $737a
0072d2: 206f0004     movea.l    $4(a7), a0
0072d6: 4a280075     tst.b      $75(a0)
0072da: 6608         bne.b      $72e4
0072dc: 203c000000e5 move.l     #$e5, d0
0072e2: 6012         bra.b      $72f6
0072e4: 206f0004     movea.l    $4(a7), a0
0072e8: 7000         moveq      #$0, d0
0072ea: 10280075     move.b     $75(a0), d0
0072ee: 4c3c0000000000e5 mulu.l     #$e5, d0
0072f6: 61002a10     bsr.w      $9d08
0072fa: 206f001c     movea.l    $1c(a7), a0
0072fe: 2080         move.l     d0, (a0)
007300: 206f001c     movea.l    $1c(a7), a0
007304: 4a90         tst.l      (a0)
007306: 6610         bne.b      $7318
007308: 203c0000025a move.l     #$25a, d0
00730e: 61000096     bsr.w      $73a6
007312: 206f0008     movea.l    $8(a7), a0
007316: 605c         bra.b      $7374
007318: 4297         clr.l      (a7)
00731a: 6018         bra.b      $7334
00731c: 7208         moveq      #$8, d1
00731e: 206f0008     movea.l    $8(a7), a0
007322: 2010         move.l     (a0), d0
007324: 2417         move.l     (a7), d2
007326: e78a         lsl.l      #$3, d2
007328: d082         add.l      d2, d0
00732a: 61000152     bsr.w      $747e
00732e: 4a00         tst.b      d0
007330: 6734         beq.b      $7366
007332: 5297         addq.l     #$1, (a7)
007334: 206f0004     movea.l    $4(a7), a0
007338: 7000         moveq      #$0, d0
00733a: 10280074     move.b     $74(a0), d0
00733e: b097         cmp.l      (a7), d0
007340: 6eda         bgt.b      $731c
007342: 4297         clr.l      (a7)
007344: 603a         bra.b      $7380
007346: 223c000000e5 move.l     #$e5, d1
00734c: 206f001c     movea.l    $1c(a7), a0
007350: 2010         move.l     (a0), d0
007352: 243c000000e5 move.l     #$e5, d2
007358: 4c172002     mulu.l     (a7), d2
00735c: d082         add.l      d2, d0
00735e: 6100011e     bsr.w      $747e
007362: 4a00         tst.b      d0
007364: 6618         bne.b      $737e
007366: 206f0008     movea.l    $8(a7), a0
00736a: 2010         move.l     (a0), d0
00736c: 610029a6     bsr.w      $9d14
007370: 206f001c     movea.l    $1c(a7), a0
007374: 2010         move.l     (a0), d0
007376: 6100299c     bsr.w      $9d14
00737a: 7000         moveq      #$0, d0
00737c: 601c         bra.b      $739a
00737e: 5297         addq.l     #$1, (a7)
007380: 206f0004     movea.l    $4(a7), a0
007384: 7000         moveq      #$0, d0
007386: 10280075     move.b     $75(a0), d0
00738a: b097         cmp.l      (a7), d0
00738c: 6eb8         bgt.b      $7346
00738e: 203c00000259 move.l     #$259, d0
007394: 61000010     bsr.w      $73a6
007398: 7001         moveq      #$1, d0
00739a: 588f         addq.l     #$4, a7
00739c: 4ced0104fff8 movem.l    -$8(a5), d2/a0
0073a2: 4e5d         unlk       a5
0073a4: 4e75         rts        
0073a6: 4e550000     link.w     a5, #$0
0073aa: 48e78000     movem.l    d0, -(a7)
0073ae: 3d6f0002850c move.w     $2(a7), -$7af4(a6)
0073b4: 4e5d         unlk       a5
0073b6: 4e75         rts        
0073b8: 4e550000     link.w     a5, #$0
0073bc: 48e78000     movem.l    d0, -(a7)
0073c0: 302e850c     move.w     -$7af4(a6), d0
0073c4: 4e5d         unlk       a5
0073c6: 4e75         rts        
0073c8: 4e550000     link.w     a5, #$0
0073cc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0073d0: 4feffff4     lea.l      -$c(a7), a7
0073d4: 41ee850e     lea.l      -$7af2(a6), a0
0073d8: 2e88         move.l     a0, (a7)
0073da: 7008         moveq      #$8, d0
0073dc: 2f400008     move.l     d0, $8(a7)
0073e0: 2f2f0008     move.l     $8(a7), -(a7)
0073e4: 222f0004     move.l     $4(a7), d1
0073e8: 202e93b8     move.l     -$6c48(a6), d0
0073ec: 610028ba     bsr.w      $9ca8
0073f0: 588f         addq.l     #$4, a7
0073f2: 2f400004     move.l     d0, $4(a7)
0073f6: 202f0004     move.l     $4(a7), d0
0073fa: b0af0008     cmp.l      $8(a7), d0
0073fe: 6634         bne.b      $7434
007400: 41ee8516     lea.l      -$7aea(a6), a0
007404: 2e88         move.l     a0, (a7)
007406: 306e850e     movea.w    -$7af2(a6), a0
00740a: 2f480008     move.l     a0, $8(a7)
00740e: 4aaf0008     tst.l      $8(a7)
007412: 6f2c         ble.b      $7440
007414: 2f2f0008     move.l     $8(a7), -(a7)
007418: 222f0004     move.l     $4(a7), d1
00741c: 202e93b8     move.l     -$6c48(a6), d0
007420: 61002886     bsr.w      $9ca8
007424: 588f         addq.l     #$4, a7
007426: 2f400004     move.l     d0, $4(a7)
00742a: 202f0004     move.l     $4(a7), d0
00742e: b0af0008     cmp.l      $8(a7), d0
007432: 670c         beq.b      $7440
007434: 203c0000025a move.l     #$25a, d0
00743a: 6100ff6a     bsr.w      $73a6
00743e: 602e         bra.b      $746e
007440: 7000         moveq      #$0, d0
007442: 302e8514     move.w     -$7aec(a6), d0
007446: 6100ff5e     bsr.w      $73a6
00744a: 6100ff6c     bsr.w      $73b8
00744e: 0c40025a     cmpi.w     #$25a, d0
007452: 0c6e00018510 cmpi.w     #$1, -$7af0(a6)
007458: 6604         bne.b      $745e
00745a: 53ae93c0     subq.l     #$1, -$6c40(a6)
00745e: 0c6e02598514 cmpi.w     #$259, -$7aec(a6)
007464: 6608         bne.b      $746e
007466: 42ae890e     clr.l      -$76f2(a6)
00746a: 7001         moveq      #$1, d0
00746c: 6002         bra.b      $7470
00746e: 7000         moveq      #$0, d0
007470: 4fef000c     lea.l      $c(a7), a7
007474: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00747a: 4e5d         unlk       a5
00747c: 4e75         rts        
00747e: 4e550000     link.w     a5, #$0
007482: 48e7c080     movem.l    d0-d1/a0, -(a7)
007486: 6100ff30     bsr.w      $73b8
00748a: 0c400259     cmpi.w     #$259, d0
00748e: 6636         bne.b      $74c6
007490: 4a6e8510     tst.w      -$7af0(a6)
007494: 6614         bne.b      $74aa
007496: 302e850e     move.w     -$7af2(a6), d0
00749a: 48c0         ext.l      d0
00749c: b0ae890e     cmp.l      -$76f2(a6), d0
0074a0: 6608         bne.b      $74aa
0074a2: 6100ff24     bsr.w      $73c8
0074a6: 4a00         tst.b      d0
0074a8: 671c         beq.b      $74c6
0074aa: 302e850e     move.w     -$7af2(a6), d0
0074ae: 48c0         ext.l      d0
0074b0: 222e890e     move.l     -$76f2(a6), d1
0074b4: d2af0004     add.l      $4(a7), d1
0074b8: b081         cmp.l      d1, d0
0074ba: 6c0e         bge.b      $74ca
0074bc: 203c00000270 move.l     #$270, d0
0074c2: 6100fee2     bsr.w      $73a6
0074c6: 7000         moveq      #$0, d0
0074c8: 6024         bra.b      $74ee
0074ca: 2f2f0004     move.l     $4(a7), -(a7)
0074ce: 41ee8516     lea.l      -$7aea(a6), a0
0074d2: 2008         move.l     a0, d0
0074d4: d0ae890e     add.l      -$76f2(a6), d0
0074d8: 2200         move.l     d0, d1
0074da: 202f0004     move.l     $4(a7), d0
0074de: 610029c4     bsr.w      $9ea4
0074e2: 588f         addq.l     #$4, a7
0074e4: 202f0004     move.l     $4(a7), d0
0074e8: d1ae890e     add.l      d0, -$76f2(a6)
0074ec: 7001         moveq      #$1, d0
0074ee: 4ced0100fffc movem.l    -$4(a5), a0
0074f4: 4e5d         unlk       a5
0074f6: 4e75         rts        
0074f8: 4e550000     link.w     a5, #$0
0074fc: 48e7c000     movem.l    d0-d1, -(a7)
007500: 518f         subq.l     #$8, a7
007502: 202e93bc     move.l     -$6c44(a6), d0
007506: 61002c9a     bsr.w      $a1a2
00750a: 2e80         move.l     d0, (a7)
00750c: 70ff         moveq      #$ff, d0
00750e: b097         cmp.l      (a7), d0
007510: 6602         bne.b      $7514
007512: 4297         clr.l      (a7)
007514: 203c00000c00 move.l     #$c00, d0
00751a: 9097         sub.l      (a7), d0
00751c: 0c800000021a cmpi.l     #$21a, d0
007522: 6c08         bge.b      $752c
007524: 203c0000025c move.l     #$25c, d0
00752a: 6026         bra.b      $7552
00752c: 4878021a     pea.l      $21a.w
007530: 222f000c     move.l     $c(a7), d1
007534: 202e93bc     move.l     -$6c44(a6), d0
007538: 61002776     bsr.w      $9cb0
00753c: 588f         addq.l     #$4, a7
00753e: 2f400004     move.l     d0, $4(a7)
007542: 0caf0000021a0004 cmpi.l     #$21a, $4(a7)
00754a: 670e         beq.b      $755a
00754c: 203c0000025a move.l     #$25a, d0
007552: 6100fe52     bsr.w      $73a6
007556: 7000         moveq      #$0, d0
007558: 6010         bra.b      $756a
00755a: 52ae93c0     addq.l     #$1, -$6c40(a6)
00755e: 203c00000259 move.l     #$259, d0
007564: 6100fe40     bsr.w      $73a6
007568: 7001         moveq      #$1, d0
00756a: 508f         addq.l     #$8, a7
00756c: 4ced0002fffc movem.l    -$4(a5), d1
007572: 4e5d         unlk       a5
007574: 4e75         rts        
007576: 4e550000     link.w     a5, #$0
00757a: 48e78080     movem.l    d0/a0, -(a7)
00757e: 610003a2     bsr.w      $7922
007582: 4a00         tst.b      d0
007584: 672a         beq.b      $75b0
007586: 306e93c4     movea.w    -$6c3c(a6), a0
00758a: 2008         move.l     a0, d0
00758c: 61000132     bsr.w      $76c0
007590: 4a00         tst.b      d0
007592: 671c         beq.b      $75b0
007594: 610002b4     bsr.w      $784a
007598: 2d4093bc     move.l     d0, -$6c44(a6)
00759c: 4aae93bc     tst.l      -$6c44(a6)
0075a0: 6d0e         blt.b      $75b0
0075a2: 610002b6     bsr.w      $785a
0075a6: 2d4093b8     move.l     d0, -$6c48(a6)
0075aa: 4aae93b8     tst.l      -$6c48(a6)
0075ae: 6c0e         bge.b      $75be
0075b0: 203c0000025a move.l     #$25a, d0
0075b6: 6100fdee     bsr.w      $73a6
0075ba: 7000         moveq      #$0, d0
0075bc: 6014         bra.b      $75d2
0075be: 6100024a     bsr.w      $780a
0075c2: 2d4093b4     move.l     d0, -$6c4c(a6)
0075c6: 203c00000259 move.l     #$259, d0
0075cc: 6100fdd8     bsr.w      $73a6
0075d0: 7001         moveq      #$1, d0
0075d2: 4ced0100fffc movem.l    -$4(a5), a0
0075d8: 4e5d         unlk       a5
0075da: 4e75         rts        
0075dc: 4e550000     link.w     a5, #$0
0075e0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0075e4: 4aae93c0     tst.l      -$6c40(a6)
0075e8: 6f06         ble.b      $75f0
0075ea: 615a         bsr.b      $7646
0075ec: 4a00         tst.b      d0
0075ee: 673c         beq.b      $762c
0075f0: 202e93bc     move.l     -$6c44(a6), d0
0075f4: 610026ce     bsr.w      $9cc4
0075f8: 4a80         tst.l      d0
0075fa: 6d26         blt.b      $7622
0075fc: 202e93b8     move.l     -$6c48(a6), d0
007600: 610026c2     bsr.w      $9cc4
007604: 4a80         tst.l      d0
007606: 6d1a         blt.b      $7622
007608: 222e93b4     move.l     -$6c4c(a6), d1
00760c: 306e93c4     movea.w    -$6c3c(a6), a0
007610: 2008         move.l     a0, d0
007612: 6100013c     bsr.w      $7750
007616: 4a00         tst.b      d0
007618: 6708         beq.b      $7622
00761a: 6100035e     bsr.w      $797a
00761e: 4a00         tst.b      d0
007620: 660e         bne.b      $7630
007622: 203c0000025a move.l     #$25a, d0
007628: 6100fd7c     bsr.w      $73a6
00762c: 7000         moveq      #$0, d0
00762e: 600c         bra.b      $763c
007630: 203c00000259 move.l     #$259, d0
007636: 6100fd6e     bsr.w      $73a6
00763a: 7001         moveq      #$1, d0
00763c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007642: 4e5d         unlk       a5
007644: 4e75         rts        
007646: 4e550000     link.w     a5, #$0
00764a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00764e: 222e93b4     move.l     -$6c4c(a6), d1
007652: 306e93c4     movea.w    -$6c3c(a6), a0
007656: 2008         move.l     a0, d0
007658: 61000146     bsr.w      $77a0
00765c: 4a00         tst.b      d0
00765e: 662e         bne.b      $768e
007660: 603a         bra.b      $769c
007662: 6100fd64     bsr.w      $73c8
007666: 4a00         tst.b      d0
007668: 661e         bne.b      $7688
00766a: 6100fd4c     bsr.w      $73b8
00766e: 0c40025a     cmpi.w     #$25a, d0
007672: 6732         beq.b      $76a6
007674: 6012         bra.b      $7688
007676: 6100fd50     bsr.w      $73c8
00767a: 4a00         tst.b      d0
00767c: 660a         bne.b      $7688
00767e: 6100fd38     bsr.w      $73b8
007682: 0c40025a     cmpi.w     #$25a, d0
007686: 671e         beq.b      $76a6
007688: 4a6e8510     tst.w      -$7af0(a6)
00768c: 67e8         beq.b      $7676
00768e: 4aae93c0     tst.l      -$6c40(a6)
007692: 6ece         bgt.b      $7662
007694: 61000148     bsr.w      $77de
007698: 4a00         tst.b      d0
00769a: 660e         bne.b      $76aa
00769c: 203c0000025a move.l     #$25a, d0
0076a2: 6100fd02     bsr.w      $73a6
0076a6: 7000         moveq      #$0, d0
0076a8: 600c         bra.b      $76b6
0076aa: 203c00000259 move.l     #$259, d0
0076b0: 6100fcf4     bsr.w      $73a6
0076b4: 7001         moveq      #$1, d0
0076b6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0076bc: 4e5d         unlk       a5
0076be: 4e75         rts        
0076c0: 4e550000     link.w     a5, #$0
0076c4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0076c8: 4fefffa4     lea.l      -$5c(a7), a7
0076cc: 3f7c00010002 move.w     #$1, $2(a7)
0076d2: 3f7c01010004 move.w     #$101, $4(a7)
0076d8: 3f6f005e0006 move.w     $5e(a7), $6(a7)
0076de: 6100018a     bsr.w      $786a
0076e2: 2200         move.l     d0, d1
0076e4: 41ef0008     lea.l      $8(a7), a0
0076e8: 2008         move.l     a0, d0
0076ea: 61002768     bsr.w      $9e54
0076ee: 3ebc0052     move.w     #$52, (a7)
0076f2: 41d7         lea.l      (a7), a0
0076f4: 2008         move.l     a0, d0
0076f6: 61000182     bsr.w      $787a
0076fa: 4a00         tst.b      d0
0076fc: 6608         bne.b      $7706
0076fe: 603c         bra.b      $773c
007700: 7001         moveq      #$1, d0
007702: 61002c98     bsr.w      $a39c
007706: 41ee8912     lea.l      -$76ee(a6), a0
00770a: 2008         move.l     a0, d0
00770c: 610001b2     bsr.w      $78c0
007710: 4a00         tst.b      d0
007712: 67ec         beq.b      $7700
007714: 0c6f0002005e cmpi.w     #$2, $5e(a7)
00771a: 6724         beq.b      $7740
00771c: 7202         moveq      #$2, d1
00771e: 610000fa     bsr.w      $781a
007722: 61001534     bsr.w      $8c58
007726: 2d4093c6     move.l     d0, -$6c3a(a6)
00772a: 6d10         blt.b      $773c
00772c: 7201         moveq      #$1, d1
00772e: 61000102     bsr.w      $7832
007732: 61001524     bsr.w      $8c58
007736: 2d4093ca     move.l     d0, -$6c36(a6)
00773a: 6c04         bge.b      $7740
00773c: 7000         moveq      #$0, d0
00773e: 6002         bra.b      $7742
007740: 7001         moveq      #$1, d0
007742: 4fef005c     lea.l      $5c(a7), a7
007746: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00774c: 4e5d         unlk       a5
00774e: 4e75         rts        
007750: 4e550000     link.w     a5, #$0
007754: 48e7c080     movem.l    d0-d1/a0, -(a7)
007758: 4fefffa4     lea.l      -$5c(a7), a7
00775c: 3f7c00010002 move.w     #$1, $2(a7)
007762: 3f7c01020004 move.w     #$102, $4(a7)
007768: 3f6f005e0006 move.w     $5e(a7), $6(a7)
00776e: 2f6f00600008 move.l     $60(a7), $8(a7)
007774: 3ebc000a     move.w     #$a, (a7)
007778: 41d7         lea.l      (a7), a0
00777a: 2008         move.l     a0, d0
00777c: 610000fc     bsr.w      $787a
007780: 4a00         tst.b      d0
007782: 6604         bne.b      $7788
007784: 7000         moveq      #$0, d0
007786: 600a         bra.b      $7792
007788: 41ee8912     lea.l      -$76ee(a6), a0
00778c: 2008         move.l     a0, d0
00778e: 61000130     bsr.w      $78c0
007792: 4fef005c     lea.l      $5c(a7), a7
007796: 4ced0100fffc movem.l    -$4(a5), a0
00779c: 4e5d         unlk       a5
00779e: 4e75         rts        
0077a0: 4e550000     link.w     a5, #$0
0077a4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0077a8: 4fefffa4     lea.l      -$5c(a7), a7
0077ac: 3f7c00010002 move.w     #$1, $2(a7)
0077b2: 3f7c01030004 move.w     #$103, $4(a7)
0077b8: 3f6f005e0006 move.w     $5e(a7), $6(a7)
0077be: 2f6f00600008 move.l     $60(a7), $8(a7)
0077c4: 3ebc000a     move.w     #$a, (a7)
0077c8: 41d7         lea.l      (a7), a0
0077ca: 2008         move.l     a0, d0
0077cc: 610000ac     bsr.w      $787a
0077d0: 4fef005c     lea.l      $5c(a7), a7
0077d4: 4ced0100fffc movem.l    -$4(a5), a0
0077da: 4e5d         unlk       a5
0077dc: 4e75         rts        
0077de: 4e550000     link.w     a5, #$0
0077e2: 48e78080     movem.l    d0/a0, -(a7)
0077e6: 41ee8912     lea.l      -$76ee(a6), a0
0077ea: 2008         move.l     a0, d0
0077ec: 610000d2     bsr.w      $78c0
0077f0: 4ced0100fffc movem.l    -$4(a5), a0
0077f6: 4e5d         unlk       a5
0077f8: 4e75         rts        
0077fa: 4e550000     link.w     a5, #$0
0077fe: 48e78000     movem.l    d0, -(a7)
007802: 302e8918     move.w     -$76e8(a6), d0
007806: 4e5d         unlk       a5
007808: 4e75         rts        
00780a: 4e550000     link.w     a5, #$0
00780e: 48e78000     movem.l    d0, -(a7)
007812: 202e891a     move.l     -$76e6(a6), d0
007816: 4e5d         unlk       a5
007818: 4e75         rts        
00781a: 4e550000     link.w     a5, #$0
00781e: 48e78080     movem.l    d0/a0, -(a7)
007822: 41ee891e     lea.l      -$76e2(a6), a0
007826: 2008         move.l     a0, d0
007828: 4ced0100fffc movem.l    -$4(a5), a0
00782e: 4e5d         unlk       a5
007830: 4e75         rts        
007832: 4e550000     link.w     a5, #$0
007836: 48e78080     movem.l    d0/a0, -(a7)
00783a: 41ee896a     lea.l      -$7696(a6), a0
00783e: 2008         move.l     a0, d0
007840: 4ced0100fffc movem.l    -$4(a5), a0
007846: 4e5d         unlk       a5
007848: 4e75         rts        
00784a: 4e550000     link.w     a5, #$0
00784e: 48e78000     movem.l    d0, -(a7)
007852: 202e93c6     move.l     -$6c3a(a6), d0
007856: 4e5d         unlk       a5
007858: 4e75         rts        
00785a: 4e550000     link.w     a5, #$0
00785e: 48e78000     movem.l    d0, -(a7)
007862: 202e93ca     move.l     -$6c36(a6), d0
007866: 4e5d         unlk       a5
007868: 4e75         rts        
00786a: 4e550000     link.w     a5, #$0
00786e: 48e78000     movem.l    d0, -(a7)
007872: 202e93ce     move.l     -$6c32(a6), d0
007876: 4e5d         unlk       a5
007878: 4e75         rts        
00787a: 4e550000     link.w     a5, #$0
00787e: 48e7c080     movem.l    d0-d1/a0, -(a7)
007882: 518f         subq.l     #$8, a7
007884: 206f0008     movea.l    $8(a7), a0
007888: 3010         move.w     (a0), d0
00788a: 48c0         ext.l      d0
00788c: 5480         addq.l     #$2, d0
00788e: 2f400004     move.l     d0, $4(a7)
007892: 2f2f0004     move.l     $4(a7), -(a7)
007896: 222f000c     move.l     $c(a7), d1
00789a: 202e93d2     move.l     -$6c2e(a6), d0
00789e: 61002410     bsr.w      $9cb0
0078a2: 588f         addq.l     #$4, a7
0078a4: 2e80         move.l     d0, (a7)
0078a6: 2017         move.l     (a7), d0
0078a8: b0af0004     cmp.l      $4(a7), d0
0078ac: 6704         beq.b      $78b2
0078ae: 7000         moveq      #$0, d0
0078b0: 6002         bra.b      $78b4
0078b2: 7001         moveq      #$1, d0
0078b4: 508f         addq.l     #$8, a7
0078b6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0078bc: 4e5d         unlk       a5
0078be: 4e75         rts        
0078c0: 4e550000     link.w     a5, #$0
0078c4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0078c8: 598f         subq.l     #$4, a7
0078ca: 48780002     pea.l      $2.w
0078ce: 222f0008     move.l     $8(a7), d1
0078d2: 202e93d6     move.l     -$6c2a(a6), d0
0078d6: 610023d0     bsr.w      $9ca8
0078da: 588f         addq.l     #$4, a7
0078dc: 2e80         move.l     d0, (a7)
0078de: 7002         moveq      #$2, d0
0078e0: b097         cmp.l      (a7), d0
0078e2: 6628         bne.b      $790c
0078e4: 206f0004     movea.l    $4(a7), a0
0078e8: 3050         movea.w    (a0), a0
0078ea: 2f08         move.l     a0, -(a7)
0078ec: 202f0008     move.l     $8(a7), d0
0078f0: 5480         addq.l     #$2, d0
0078f2: 2200         move.l     d0, d1
0078f4: 202e93d6     move.l     -$6c2a(a6), d0
0078f8: 610023ae     bsr.w      $9ca8
0078fc: 588f         addq.l     #$4, a7
0078fe: 2e80         move.l     d0, (a7)
007900: 206f0004     movea.l    $4(a7), a0
007904: 3010         move.w     (a0), d0
007906: 48c0         ext.l      d0
007908: b097         cmp.l      (a7), d0
00790a: 6708         beq.b      $7914
00790c: 70ff         moveq      #$ff, d0
00790e: b097         cmp.l      (a7), d0
007910: 7000         moveq      #$0, d0
007912: 6002         bra.b      $7916
007914: 7001         moveq      #$1, d0
007916: 588f         addq.l     #$4, a7
007918: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00791e: 4e5d         unlk       a5
007920: 4e75         rts        
007922: 4e550000     link.w     a5, #$0
007926: 48e7c080     movem.l    d0-d1/a0, -(a7)
00792a: 7202         moveq      #$2, d1
00792c: 41fa0076     lea.l      $79a4(pc), a0
007930: 2008         move.l     a0, d0
007932: 61001324     bsr.w      $8c58
007936: 2d4093d2     move.l     d0, -$6c2e(a6)
00793a: 6d2e         blt.b      $796a
00793c: 41fa0086     lea.l      $79c4(pc), a0
007940: 2208         move.l     a0, d1
007942: 41ee89b6     lea.l      -$764a(a6), a0
007946: 2008         move.l     a0, d0
007948: 6100230a     bsr.w      $9c54
00794c: 41ee89b6     lea.l      -$764a(a6), a0
007950: 2008         move.l     a0, d0
007952: 610023e0     bsr.w      $9d34
007956: 2d4093ce     move.l     d0, -$6c32(a6)
00795a: 7203         moveq      #$3, d1
00795c: 202e93ce     move.l     -$6c32(a6), d0
007960: 61001310     bsr.w      $8c72
007964: 2d4093d6     move.l     d0, -$6c2a(a6)
007968: 6c04         bge.b      $796e
00796a: 7000         moveq      #$0, d0
00796c: 6002         bra.b      $7970
00796e: 7001         moveq      #$1, d0
007970: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007976: 4e5d         unlk       a5
007978: 4e75         rts        
00797a: 4e550000     link.w     a5, #$0
00797e: 48e78000     movem.l    d0, -(a7)
007982: 202e93d2     move.l     -$6c2e(a6), d0
007986: 6100233c     bsr.w      $9cc4
00798a: 4a80         tst.l      d0
00798c: 6d10         blt.b      $799e
00798e: 4aae93d6     tst.l      -$6c2a(a6)
007992: 6f0a         ble.b      $799e
007994: 202e93d6     move.l     -$6c2a(a6), d0
007998: 6100232a     bsr.w      $9cc4
00799c: 4a80         tst.l      d0
00799e: 7001         moveq      #$1, d0
0079a0: 4e5d         unlk       a5
0079a2: 4e75         rts        
0079a4: 2f63302f     move.l     -(a3), $302f(a7)
0079a8: 5f313239     subq.b     #$7, $39(a1, d3.w)
0079ac: 5f2f7069     subq.b     #$7, $7069(a7)
0079b0: 7065         moveq      #$65, d0
0079b2: 2f646263     move.l     -(a4), $6263(a7)
0079b6: 5f72657175657374 subq.w     #$7, ([$75657374, a2])
0079be: 5f70697065002f63 subq.w     #$7, $65002f63(a0, invalid.w)
0079c6: 302f5f31     move.w     $5f31(a7), d0
0079ca: 32395f2f7069 move.w     $5f2f7069.l, d1
0079d0: 7065         moveq      #$65, d0
0079d2: 2f646263     move.l     -(a4), $6263(a7)
0079d6: 5f7273705f585858 subq.w     #$7, $5f585858(a2, invalid.w)
0079de: 5858         addq.w     #$4, (a0)+
0079e0: 5800         addq.b     #$4, d0
0079e2: 4e550000     link.w     a5, #$0
0079e6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0079ea: 610006a2     bsr.w      $808e
0079ee: 4a00         tst.b      d0
0079f0: 660000fa     bne.w      $7aec
0079f4: 7201         moveq      #$1, d1
0079f6: 41fa04da     lea.l      $7ed2(pc), a0
0079fa: 2008         move.l     a0, d0
0079fc: 61000740     bsr.w      $813e
007a00: 2d4093da     move.l     d0, -$6c26(a6)
007a04: 6c04         bge.b      $7a0a
007a06: 70ff         moveq      #$ff, d0
007a08: 6062         bra.b      $7a6c
007a0a: 7201         moveq      #$1, d1
007a0c: 41fa04d5     lea.l      $7ee3(pc), a0
007a10: 2008         move.l     a0, d0
007a12: 6100072a     bsr.w      $813e
007a16: 2d4093de     move.l     d0, -$6c22(a6)
007a1a: 6c14         bge.b      $7a30
007a1c: 202e93da     move.l     -$6c26(a6), d0
007a20: 610022a2     bsr.w      $9cc4
007a24: 72ff         moveq      #$ff, d1
007a26: b280         cmp.l      d0, d1
007a28: 670000c2     beq.w      $7aec
007a2c: 70ff         moveq      #$ff, d0
007a2e: 6038         bra.b      $7a68
007a30: 7201         moveq      #$1, d1
007a32: 41fa04c7     lea.l      $7efb(pc), a0
007a36: 2008         move.l     a0, d0
007a38: 61000704     bsr.w      $813e
007a3c: 2d4093e2     move.l     d0, -$6c1e(a6)
007a40: 6c32         bge.b      $7a74
007a42: 202e93da     move.l     -$6c26(a6), d0
007a46: 6100227c     bsr.w      $9cc4
007a4a: 72ff         moveq      #$ff, d1
007a4c: b280         cmp.l      d0, d1
007a4e: 6700009c     beq.w      $7aec
007a52: 202e93de     move.l     -$6c22(a6), d0
007a56: 6100226c     bsr.w      $9cc4
007a5a: 72ff         moveq      #$ff, d1
007a5c: b280         cmp.l      d0, d1
007a5e: 6700008c     beq.w      $7aec
007a62: 70ff         moveq      #$ff, d0
007a64: 2d4093e2     move.l     d0, -$6c1e(a6)
007a68: 2d4093de     move.l     d0, -$6c22(a6)
007a6c: 2d4093da     move.l     d0, -$6c26(a6)
007a70: 6000007a     bra.w      $7aec
007a74: 4aae93e6     tst.l      -$6c1a(a6)
007a78: 6630         bne.b      $7aaa
007a7a: 61000636     bsr.w      $80b2
007a7e: 4a00         tst.b      d0
007a80: 6728         beq.b      $7aaa
007a82: 202e8a0e     move.l     -$75f2(a6), d0
007a86: 5280         addq.l     #$1, d0
007a88: 2200         move.l     d0, d1
007a8a: 2017         move.l     (a7), d0
007a8c: 610004a0     bsr.w      $7f2e
007a90: 72ff         moveq      #$ff, d1
007a92: b280         cmp.l      d0, d1
007a94: 6714         beq.b      $7aaa
007a96: 41ee93ea     lea.l      -$6c16(a6), a0
007a9a: 2208         move.l     a0, d1
007a9c: 41ee8a12     lea.l      -$75ee(a6), a0
007aa0: 2008         move.l     a0, d0
007aa2: 610008a4     bsr.w      $8348
007aa6: 4a80         tst.l      d0
007aa8: 6646         bne.b      $7af0
007aaa: 202e93da     move.l     -$6c26(a6), d0
007aae: 61002214     bsr.w      $9cc4
007ab2: 72ff         moveq      #$ff, d1
007ab4: b280         cmp.l      d0, d1
007ab6: 6734         beq.b      $7aec
007ab8: 202e93de     move.l     -$6c22(a6), d0
007abc: 61002206     bsr.w      $9cc4
007ac0: 72ff         moveq      #$ff, d1
007ac2: b280         cmp.l      d0, d1
007ac4: 6726         beq.b      $7aec
007ac6: 202e93e2     move.l     -$6c1e(a6), d0
007aca: 610021f8     bsr.w      $9cc4
007ace: 72ff         moveq      #$ff, d1
007ad0: b280         cmp.l      d0, d1
007ad2: 6718         beq.b      $7aec
007ad4: 70ff         moveq      #$ff, d0
007ad6: 2d4093e2     move.l     d0, -$6c1e(a6)
007ada: 2d4093de     move.l     d0, -$6c22(a6)
007ade: 2d4093da     move.l     d0, -$6c26(a6)
007ae2: 70ff         moveq      #$ff, d0
007ae4: 2d4093ea     move.l     d0, -$6c16(a6)
007ae8: 42ae93e6     clr.l      -$6c1a(a6)
007aec: 70ff         moveq      #$ff, d0
007aee: 6002         bra.b      $7af2
007af0: 2017         move.l     (a7), d0
007af2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007af8: 4e5d         unlk       a5
007afa: 4e75         rts        
007afc: 4e550000     link.w     a5, #$0
007b00: 48e7c000     movem.l    d0-d1, -(a7)
007b04: 61000588     bsr.w      $808e
007b08: 4a00         tst.b      d0
007b0a: 672a         beq.b      $7b36
007b0c: 202e93da     move.l     -$6c26(a6), d0
007b10: 610021b2     bsr.w      $9cc4
007b14: 72ff         moveq      #$ff, d1
007b16: b280         cmp.l      d0, d1
007b18: 671c         beq.b      $7b36
007b1a: 202e93de     move.l     -$6c22(a6), d0
007b1e: 610021a4     bsr.w      $9cc4
007b22: 72ff         moveq      #$ff, d1
007b24: b280         cmp.l      d0, d1
007b26: 670e         beq.b      $7b36
007b28: 202e93e2     move.l     -$6c1e(a6), d0
007b2c: 61002196     bsr.w      $9cc4
007b30: 72ff         moveq      #$ff, d1
007b32: b280         cmp.l      d0, d1
007b34: 6604         bne.b      $7b3a
007b36: 70ff         moveq      #$ff, d0
007b38: 6022         bra.b      $7b5c
007b3a: 202e93ea     move.l     -$6c16(a6), d0
007b3e: 610007e4     bsr.w      $8324
007b42: 70ff         moveq      #$ff, d0
007b44: 2d4093e2     move.l     d0, -$6c1e(a6)
007b48: 2d4093de     move.l     d0, -$6c22(a6)
007b4c: 2d4093da     move.l     d0, -$6c26(a6)
007b50: 42ae93e6     clr.l      -$6c1a(a6)
007b54: 70ff         moveq      #$ff, d0
007b56: 2d4093ea     move.l     d0, -$6c16(a6)
007b5a: 7000         moveq      #$0, d0
007b5c: 4ced0002fffc movem.l    -$4(a5), d1
007b62: 4e5d         unlk       a5
007b64: 4e75         rts        
007b66: 4e550000     link.w     a5, #$0
007b6a: 48e7c080     movem.l    d0-d1/a0, -(a7)
007b6e: 4fefffd4     lea.l      -$2c(a7), a7
007b72: 202e93ea     move.l     -$6c16(a6), d0
007b76: 61000822     bsr.w      $839a
007b7a: 41ef0004     lea.l      $4(a7), a0
007b7e: 2008         move.l     a0, d0
007b80: 6100028e     bsr.w      $7e10
007b84: 2e80         move.l     d0, (a7)
007b86: 202e93ea     move.l     -$6c16(a6), d0
007b8a: 6100083e     bsr.w      $83ca
007b8e: 4a97         tst.l      (a7)
007b90: 6704         beq.b      $7b96
007b92: 2017         move.l     (a7), d0
007b94: 6012         bra.b      $7ba8
007b96: 206f0030     movea.l    $30(a7), a0
007b9a: 20af0004     move.l     $4(a7), (a0)
007b9e: 216f00080004 move.l     $8(a7), $4(a0)
007ba4: 610002d2     bsr.w      $7e78
007ba8: 4fef002c     lea.l      $2c(a7), a7
007bac: 4ced0100fffc movem.l    -$4(a5), a0
007bb2: 4e5d         unlk       a5
007bb4: 4e75         rts        
007bb6: 4e550000     link.w     a5, #$0
007bba: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
007bbe: 4fefffd4     lea.l      -$2c(a7), a7
007bc2: 202e93ea     move.l     -$6c16(a6), d0
007bc6: 610007d2     bsr.w      $839a
007bca: 41ef0004     lea.l      $4(a7), a0
007bce: 2008         move.l     a0, d0
007bd0: 6100023e     bsr.w      $7e10
007bd4: 2e80         move.l     d0, (a7)
007bd6: 202e93ea     move.l     -$6c16(a6), d0
007bda: 610007ee     bsr.w      $83ca
007bde: 4a97         tst.l      (a7)
007be0: 6704         beq.b      $7be6
007be2: 2017         move.l     (a7), d0
007be4: 605a         bra.b      $7c40
007be6: 206f0030     movea.l    $30(a7), a0
007bea: 20af0004     move.l     $4(a7), (a0)
007bee: 216f00080004 move.l     $8(a7), $4(a0)
007bf4: 7001         moveq      #$1, d0
007bf6: c02f000c     and.b      $c(a7), d0
007bfa: 206f0030     movea.l    $30(a7), a0
007bfe: 11400008     move.b     d0, $8(a0)
007c02: 206f0048     movea.l    $48(a7), a0
007c06: 226f0030     movea.l    $30(a7), a1
007c0a: 0c2900010008 cmpi.b     #$1, $8(a1)
007c10: 6606         bne.b      $7c18
007c12: 43ef000e     lea.l      $e(a7), a1
007c16: 6004         bra.b      $7c1c
007c18: 43ef0016     lea.l      $16(a7), a1
007c1c: 2091         move.l     (a1), (a0)
007c1e: 216900040004 move.l     $4(a1), $4(a0)
007c24: 7064         moveq      #$64, d0
007c26: c1ef0022     muls.w     $22(a7), d0
007c2a: 206f0044     movea.l    $44(a7), a0
007c2e: 2080         move.l     d0, (a0)
007c30: 7002         moveq      #$2, d0
007c32: c02f000c     and.b      $c(a7), d0
007c36: 206f004c     movea.l    $4c(a7), a0
007c3a: 1080         move.b     d0, (a0)
007c3c: 6100023a     bsr.w      $7e78
007c40: 4fef002c     lea.l      $2c(a7), a7
007c44: 4ced0300fff8 movem.l    -$8(a5), a0-a1
007c4a: 4e5d         unlk       a5
007c4c: 4e75         rts        
007c4e: 4e550000     link.w     a5, #$0
007c52: 48e7c080     movem.l    d0-d1/a0, -(a7)
007c56: 4fefffcc     lea.l      -$34(a7), a7
007c5a: 202e93ea     move.l     -$6c16(a6), d0
007c5e: 6100073a     bsr.w      $839a
007c62: 41d7         lea.l      (a7), a0
007c64: 2008         move.l     a0, d0
007c66: 610001a8     bsr.w      $7e10
007c6a: 2f400028     move.l     d0, $28(a7)
007c6e: 4aaf0028     tst.l      $28(a7)
007c72: 670c         beq.b      $7c80
007c74: 202e93ea     move.l     -$6c16(a6), d0
007c78: 61000750     bsr.w      $83ca
007c7c: 60000180     bra.w      $7dfe
007c80: 302f0020     move.w     $20(a7), d0
007c84: 48c0         ext.l      d0
007c86: 5280         addq.l     #$1, d0
007c88: e788         lsl.l      #$3, d0
007c8a: 7216         moveq      #$16, d1
007c8c: d081         add.l      d1, d0
007c8e: 2f400030     move.l     d0, $30(a7)
007c92: 202f0030     move.l     $30(a7), d0
007c96: 61002070     bsr.w      $9d08
007c9a: 206f0038     movea.l    $38(a7), a0
007c9e: 2080         move.l     d0, (a0)
007ca0: 660c         bne.b      $7cae
007ca2: 202e93ea     move.l     -$6c16(a6), d0
007ca6: 61000722     bsr.w      $83ca
007caa: 60000112     bra.w      $7dbe
007cae: 206f0038     movea.l    $38(a7), a0
007cb2: 2050         movea.l    (a0), a0
007cb4: 10af0009     move.b     $9(a7), (a0)
007cb8: 7001         moveq      #$1, d0
007cba: c02f0008     and.b      $8(a7), d0
007cbe: 206f0038     movea.l    $38(a7), a0
007cc2: 2050         movea.l    (a0), a0
007cc4: 11400001     move.b     d0, $1(a0)
007cc8: 206f0038     movea.l    $38(a7), a0
007ccc: 2050         movea.l    (a0), a0
007cce: 21570002     move.l     (a7), $2(a0)
007cd2: 216f00040006 move.l     $4(a7), $6(a0)
007cd8: 7004         moveq      #$4, d0
007cda: c02f0008     and.b      $8(a7), d0
007cde: 206f0038     movea.l    $38(a7), a0
007ce2: 2050         movea.l    (a0), a0
007ce4: 1140000a     move.b     d0, $a(a0)
007ce8: 302f0020     move.w     $20(a7), d0
007cec: 5440         addq.w     #$2, d0
007cee: 206f0038     movea.l    $38(a7), a0
007cf2: 2050         movea.l    (a0), a0
007cf4: 3140000c     move.w     d0, $c(a0)
007cf8: 206f0038     movea.l    $38(a7), a0
007cfc: 2050         movea.l    (a0), a0
007cfe: 216f000a000e move.l     $a(a7), $e(a0)
007d04: 216f000e0012 move.l     $e(a7), $12(a0)
007d0a: 302f0020     move.w     $20(a7), d0
007d0e: 48c0         ext.l      d0
007d10: 5280         addq.l     #$1, d0
007d12: 206f0038     movea.l    $38(a7), a0
007d16: 2050         movea.l    (a0), a0
007d18: e788         lsl.l      #$3, d0
007d1a: d1c0         adda.l     d0, a0
007d1c: 216f0012000e move.l     $12(a7), $e(a0)
007d22: 216f00160012 move.l     $16(a7), $12(a0)
007d28: 4a6f0020     tst.w      $20(a7)
007d2c: 6f0000a6     ble.w      $7dd4
007d30: 42a7         clr.l      -(a7)
007d32: 302f0026     move.w     $26(a7), d0
007d36: 48c0         ext.l      d0
007d38: 81fc06d6     divs.w     #$6d6, d0
007d3c: 4840         swap       d0
007d3e: 48c0         ext.l      d0
007d40: e788         lsl.l      #$3, d0
007d42: 2200         move.l     d0, d1
007d44: 202e93e2     move.l     -$6c1e(a6), d0
007d48: 61001f6e     bsr.w      $9cb8
007d4c: 588f         addq.l     #$4, a7
007d4e: 72ff         moveq      #$ff, d1
007d50: b280         cmp.l      d0, d1
007d52: 6758         beq.b      $7dac
007d54: 42af002c     clr.l      $2c(a7)
007d58: 606c         bra.b      $7dc6
007d5a: 302f0022     move.w     $22(a7), d0
007d5e: 48c0         ext.l      d0
007d60: d0af002c     add.l      $2c(a7), d0
007d64: 4c7c0801000006d6 divs.l     #$6d6, d0
007d6c: 4a81         tst.l      d1
007d6e: 6614         bne.b      $7d84
007d70: 42a7         clr.l      -(a7)
007d72: 7200         moveq      #$0, d1
007d74: 202e93e2     move.l     -$6c1e(a6), d0
007d78: 61001f3e     bsr.w      $9cb8
007d7c: 588f         addq.l     #$4, a7
007d7e: 72ff         moveq      #$ff, d1
007d80: b280         cmp.l      d0, d1
007d82: 6728         beq.b      $7dac
007d84: 48780008     pea.l      $8.w
007d88: 206f003c     movea.l    $3c(a7), a0
007d8c: 700e         moveq      #$e, d0
007d8e: d090         add.l      (a0), d0
007d90: 222f0030     move.l     $30(a7), d1
007d94: 5281         addq.l     #$1, d1
007d96: e789         lsl.l      #$3, d1
007d98: d081         add.l      d1, d0
007d9a: 2200         move.l     d0, d1
007d9c: 202e93e2     move.l     -$6c1e(a6), d0
007da0: 61001f06     bsr.w      $9ca8
007da4: 588f         addq.l     #$4, a7
007da6: 7208         moveq      #$8, d1
007da8: b280         cmp.l      d0, d1
007daa: 6716         beq.b      $7dc2
007dac: 202e93ea     move.l     -$6c16(a6), d0
007db0: 61000618     bsr.w      $83ca
007db4: 206f0038     movea.l    $38(a7), a0
007db8: 2010         move.l     (a0), d0
007dba: 61001f58     bsr.w      $9d14
007dbe: 70ff         moveq      #$ff, d0
007dc0: 6040         bra.b      $7e02
007dc2: 52af002c     addq.l     #$1, $2c(a7)
007dc6: 302f0020     move.w     $20(a7), d0
007dca: 48c0         ext.l      d0
007dcc: b0af002c     cmp.l      $2c(a7), d0
007dd0: 6e00ff88     bgt.w      $7d5a
007dd4: 202e93ea     move.l     -$6c16(a6), d0
007dd8: 610005f0     bsr.w      $83ca
007ddc: 206f0048     movea.l    $48(a7), a0
007de0: 20af0030     move.l     $30(a7), (a0)
007de4: 61000092     bsr.w      $7e78
007de8: 2f400028     move.l     d0, $28(a7)
007dec: 70ff         moveq      #$ff, d0
007dee: b0af0028     cmp.l      $28(a7), d0
007df2: 660a         bne.b      $7dfe
007df4: 206f0038     movea.l    $38(a7), a0
007df8: 2010         move.l     (a0), d0
007dfa: 61001f18     bsr.w      $9d14
007dfe: 202f0028     move.l     $28(a7), d0
007e02: 4fef0034     lea.l      $34(a7), a7
007e06: 4ced0100fffc movem.l    -$4(a5), a0
007e0c: 4e5d         unlk       a5
007e0e: 4e75         rts        
007e10: 4e550000     link.w     a5, #$0
007e14: 48e7c000     movem.l    d0-d1, -(a7)
007e18: 598f         subq.l     #$4, a7
007e1a: 61000272     bsr.w      $808e
007e1e: 4a00         tst.b      d0
007e20: 6604         bne.b      $7e26
007e22: 70ff         moveq      #$ff, d0
007e24: 6046         bra.b      $7e6c
007e26: 6100028a     bsr.w      $80b2
007e2a: 4a00         tst.b      d0
007e2c: 6606         bne.b      $7e34
007e2e: 70ff         moveq      #$ff, d0
007e30: 2e80         move.l     d0, (a7)
007e32: 6036         bra.b      $7e6a
007e34: 610002ce     bsr.w      $8104
007e38: 4a00         tst.b      d0
007e3a: 67f2         beq.b      $7e2e
007e3c: 610002e4     bsr.w      $8122
007e40: 4a00         tst.b      d0
007e42: 660c         bne.b      $7e50
007e44: 7002         moveq      #$2, d0
007e46: b0ae89e8     cmp.l      -$7618(a6), d0
007e4a: 66e2         bne.b      $7e2e
007e4c: 70fe         moveq      #$fe, d0
007e4e: 60e0         bra.b      $7e30
007e50: 48780028     pea.l      $28.w
007e54: 222f0008     move.l     $8(a7), d1
007e58: 202e93de     move.l     -$6c22(a6), d0
007e5c: 61001e4a     bsr.w      $9ca8
007e60: 588f         addq.l     #$4, a7
007e62: 7228         moveq      #$28, d1
007e64: b280         cmp.l      d0, d1
007e66: 66c6         bne.b      $7e2e
007e68: 4297         clr.l      (a7)
007e6a: 2017         move.l     (a7), d0
007e6c: 588f         addq.l     #$4, a7
007e6e: 4ced0002fffc movem.l    -$4(a5), d1
007e74: 4e5d         unlk       a5
007e76: 4e75         rts        
007e78: 4e550000     link.w     a5, #$0
007e7c: 48e7c000     movem.l    d0-d1, -(a7)
007e80: 52ae93e6     addq.l     #$1, -$6c1a(a6)
007e84: 202e93e6     move.l     -$6c1a(a6), d0
007e88: 5380         subq.l     #$1, d0
007e8a: 4c7c0801000003e8 divs.l     #$3e8, d0
007e92: 4a81         tst.l      d1
007e94: 6618         bne.b      $7eae
007e96: 42a7         clr.l      -(a7)
007e98: 7200         moveq      #$0, d1
007e9a: 202e93de     move.l     -$6c22(a6), d0
007e9e: 61001e18     bsr.w      $9cb8
007ea2: 588f         addq.l     #$4, a7
007ea4: 72ff         moveq      #$ff, d1
007ea6: b280         cmp.l      d0, d1
007ea8: 6604         bne.b      $7eae
007eaa: 70ff         moveq      #$ff, d0
007eac: 601a         bra.b      $7ec8
007eae: 61000272     bsr.w      $8122
007eb2: 4a00         tst.b      d0
007eb4: 6610         bne.b      $7ec6
007eb6: 7002         moveq      #$2, d0
007eb8: b0ae89e8     cmp.l      -$7618(a6), d0
007ebc: 6604         bne.b      $7ec2
007ebe: 7002         moveq      #$2, d0
007ec0: 6006         bra.b      $7ec8
007ec2: 7001         moveq      #$1, d0
007ec4: 6002         bra.b      $7ec8
007ec6: 7000         moveq      #$0, d0
007ec8: 4ced0002fffc movem.l    -$4(a5), d1
007ece: 4e5d         unlk       a5
007ed0: 4e75         rts        
007ed2: 2f7061636b2f72705f67656e move.l     ([$6b2f, a0], $72705f67), $656e(a7)
007ede: 5f696e66     subq.w     #$7, $6e66(a1)
007ee2: 002f72706163 ori.b      #$70, $6163(a7)
007ee8: 6b2f         bmi.b      $7f19
007eea: 7270         moveq      #$70, d1
007eec: 5f706c61     subq.w     #$7, $61(a0, d6.l)
007ef0: 6e6e         bgt.b      $7f60
007ef2: 6564         bcs.b      $7f58
007ef4: 5f726f757465002f subq.w     #$7, ([$7465002f, a2])
007efc: 7270         moveq      #$70, d1
007efe: 6163         bsr.b      $7f63
007f00: 6b2f         bmi.b      $7f31
007f02: 7270         moveq      #$70, d1
007f04: 5f696e74     subq.w     #$7, $6e74(a1)
007f08: 6572         bcs.b      $7f7c
007f0a: 6d65         blt.b      $7f71
007f0c: 6469         bcc.b      $7f77
007f0e: 6174         bsr.b      $7f84
007f10: 6573         bcs.b      $7f85
007f12: 00004e55     ori.b      #$55, d0
007f16: 000048e7     ori.b      #$e7, d0
007f1a: c000         and.b      d0, d0
007f1c: 202e93e6     move.l     -$6c1a(a6), d0
007f20: d0af0004     add.l      $4(a7), d0
007f24: 2200         move.l     d0, d1
007f26: 2017         move.l     (a7), d0
007f28: 6104         bsr.b      $7f2e
007f2a: 4e5d         unlk       a5
007f2c: 4e75         rts        
007f2e: 4e550000     link.w     a5, #$0
007f32: 48e7c000     movem.l    d0-d1, -(a7)
007f36: 598f         subq.l     #$4, a7
007f38: 61000154     bsr.w      $808e
007f3c: 4a00         tst.b      d0
007f3e: 675e         beq.b      $7f9e
007f40: 61000170     bsr.w      $80b2
007f44: 4a00         tst.b      d0
007f46: 6756         beq.b      $7f9e
007f48: 2d6f000893e6 move.l     $8(a7), -$6c1a(a6)
007f4e: 4297         clr.l      (a7)
007f50: 610001b2     bsr.w      $8104
007f54: 4a00         tst.b      d0
007f56: 660e         bne.b      $7f66
007f58: 202e8a0e     move.l     -$75f2(a6), d0
007f5c: 5280         addq.l     #$1, d0
007f5e: 2d4093e6     move.l     d0, -$6c1a(a6)
007f62: 70ff         moveq      #$ff, d0
007f64: 2e80         move.l     d0, (a7)
007f66: 610001ba     bsr.w      $8122
007f6a: 4a00         tst.b      d0
007f6c: 660a         bne.b      $7f78
007f6e: 2d6e89f693e6 move.l     -$760a(a6), -$6c1a(a6)
007f74: 70ff         moveq      #$ff, d0
007f76: 2e80         move.l     d0, (a7)
007f78: 42a7         clr.l      -(a7)
007f7a: 202e93e6     move.l     -$6c1a(a6), d0
007f7e: 5380         subq.l     #$1, d0
007f80: 4c7c0801000003e8 divs.l     #$3e8, d0
007f88: 7028         moveq      #$28, d0
007f8a: 4c001001     mulu.l     d0, d1
007f8e: 202e93de     move.l     -$6c22(a6), d0
007f92: 61001d24     bsr.w      $9cb8
007f96: 588f         addq.l     #$4, a7
007f98: 72ff         moveq      #$ff, d1
007f9a: b280         cmp.l      d0, d1
007f9c: 6604         bne.b      $7fa2
007f9e: 70ff         moveq      #$ff, d0
007fa0: 6002         bra.b      $7fa4
007fa2: 2017         move.l     (a7), d0
007fa4: 588f         addq.l     #$4, a7
007fa6: 4e5d         unlk       a5
007fa8: 4e75         rts        
007faa: 4e550000     link.w     a5, #$0
007fae: 48e7c080     movem.l    d0-d1/a0, -(a7)
007fb2: 610000da     bsr.w      $808e
007fb6: 4a00         tst.b      d0
007fb8: 6708         beq.b      $7fc2
007fba: 610000f6     bsr.w      $80b2
007fbe: 4a00         tst.b      d0
007fc0: 6604         bne.b      $7fc6
007fc2: 70ff         moveq      #$ff, d0
007fc4: 600a         bra.b      $7fd0
007fc6: 206f0004     movea.l    $4(a7), a0
007fca: 20ae93e6     move.l     -$6c1a(a6), (a0)
007fce: 7000         moveq      #$0, d0
007fd0: 4ced0100fffc movem.l    -$4(a5), a0
007fd6: 4e5d         unlk       a5
007fd8: 4e75         rts        
007fda: 4e550000     link.w     a5, #$0
007fde: 48e7c080     movem.l    d0-d1/a0, -(a7)
007fe2: 610000aa     bsr.w      $808e
007fe6: 4a00         tst.b      d0
007fe8: 6710         beq.b      $7ffa
007fea: 610000c6     bsr.w      $80b2
007fee: 4a00         tst.b      d0
007ff0: 6708         beq.b      $7ffa
007ff2: 610000f8     bsr.w      $80ec
007ff6: 4a00         tst.b      d0
007ff8: 6604         bne.b      $7ffe
007ffa: 70ff         moveq      #$ff, d0
007ffc: 600a         bra.b      $8008
007ffe: 206f0004     movea.l    $4(a7), a0
008002: 10ae89ec     move.b     -$7614(a6), (a0)
008006: 7000         moveq      #$0, d0
008008: 4ced0100fffc movem.l    -$4(a5), a0
00800e: 4e5d         unlk       a5
008010: 4e75         rts        
008012: 4e550000     link.w     a5, #$0
008016: 48e7c080     movem.l    d0-d1/a0, -(a7)
00801a: 61000072     bsr.w      $808e
00801e: 4a00         tst.b      d0
008020: 6716         beq.b      $8038
008022: 6100008e     bsr.w      $80b2
008026: 4a00         tst.b      d0
008028: 670e         beq.b      $8038
00802a: 610000c0     bsr.w      $80ec
00802e: 4a00         tst.b      d0
008030: 6706         beq.b      $8038
008032: 4a2e89ec     tst.b      -$7614(a6)
008036: 6704         beq.b      $803c
008038: 70ff         moveq      #$ff, d0
00803a: 6010         bra.b      $804c
00803c: 206f0004     movea.l    $4(a7), a0
008040: 20ae89ee     move.l     -$7612(a6), (a0)
008044: 216e89f20004 move.l     -$760e(a6), $4(a0)
00804a: 7000         moveq      #$0, d0
00804c: 4ced0100fffc movem.l    -$4(a5), a0
008052: 4e5d         unlk       a5
008054: 4e75         rts        
008056: 4e550000     link.w     a5, #$0
00805a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00805e: 6100002e     bsr.w      $808e
008062: 4a00         tst.b      d0
008064: 6710         beq.b      $8076
008066: 6100004a     bsr.w      $80b2
00806a: 4a00         tst.b      d0
00806c: 6708         beq.b      $8076
00806e: 6100007c     bsr.w      $80ec
008072: 4a00         tst.b      d0
008074: 6604         bne.b      $807a
008076: 70ff         moveq      #$ff, d0
008078: 600a         bra.b      $8084
00807a: 206f0004     movea.l    $4(a7), a0
00807e: 10ae89ed     move.b     -$7613(a6), (a0)
008082: 7000         moveq      #$0, d0
008084: 4ced0100fffc movem.l    -$4(a5), a0
00808a: 4e5d         unlk       a5
00808c: 4e75         rts        
00808e: 4e550000     link.w     a5, #$0
008092: 48e78000     movem.l    d0, -(a7)
008096: 4aae93da     tst.l      -$6c26(a6)
00809a: 6d10         blt.b      $80ac
00809c: 4aae93de     tst.l      -$6c22(a6)
0080a0: 6d0a         blt.b      $80ac
0080a2: 4aae93e2     tst.l      -$6c1e(a6)
0080a6: 6d04         blt.b      $80ac
0080a8: 7001         moveq      #$1, d0
0080aa: 6002         bra.b      $80ae
0080ac: 7000         moveq      #$0, d0
0080ae: 4e5d         unlk       a5
0080b0: 4e75         rts        
0080b2: 4e550000     link.w     a5, #$0
0080b6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0080ba: 4878004a     pea.l      $4a.w
0080be: 41ee89e8     lea.l      -$7618(a6), a0
0080c2: 2208         move.l     a0, d1
0080c4: 202e93da     move.l     -$6c26(a6), d0
0080c8: 61001bde     bsr.w      $9ca8
0080cc: 588f         addq.l     #$4, a7
0080ce: 724a         moveq      #$4a, d1
0080d0: b280         cmp.l      d0, d1
0080d2: 660c         bne.b      $80e0
0080d4: 7001         moveq      #$1, d0
0080d6: b0ae89e8     cmp.l      -$7618(a6), d0
0080da: 6704         beq.b      $80e0
0080dc: 7001         moveq      #$1, d0
0080de: 6002         bra.b      $80e2
0080e0: 7000         moveq      #$0, d0
0080e2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0080e8: 4e5d         unlk       a5
0080ea: 4e75         rts        
0080ec: 4e550000     link.w     a5, #$0
0080f0: 48e78000     movem.l    d0, -(a7)
0080f4: 4aae89e8     tst.l      -$7618(a6)
0080f8: 6604         bne.b      $80fe
0080fa: 7001         moveq      #$1, d0
0080fc: 6002         bra.b      $8100
0080fe: 7000         moveq      #$0, d0
008100: 4e5d         unlk       a5
008102: 4e75         rts        
008104: 4e550000     link.w     a5, #$0
008108: 48e78000     movem.l    d0, -(a7)
00810c: 202e8a0e     move.l     -$75f2(a6), d0
008110: 5280         addq.l     #$1, d0
008112: b0ae93e6     cmp.l      -$6c1a(a6), d0
008116: 6e04         bgt.b      $811c
008118: 7001         moveq      #$1, d0
00811a: 6002         bra.b      $811e
00811c: 7000         moveq      #$0, d0
00811e: 4e5d         unlk       a5
008120: 4e75         rts        
008122: 4e550000     link.w     a5, #$0
008126: 48e78000     movem.l    d0, -(a7)
00812a: 202e93e6     move.l     -$6c1a(a6), d0
00812e: b0ae89f6     cmp.l      -$760a(a6), d0
008132: 6e04         bgt.b      $8138
008134: 7001         moveq      #$1, d0
008136: 6002         bra.b      $813a
008138: 7000         moveq      #$0, d0
00813a: 4e5d         unlk       a5
00813c: 4e75         rts        
00813e: 4e550000     link.w     a5, #$0
008142: 48e7c000     movem.l    d0-d1, -(a7)
008146: 6026         bra.b      $816e
008148: 7201         moveq      #$1, d1
00814a: 2017         move.l     (a7), d0
00814c: 61000b0a     bsr.w      $8c58
008150: 603a         bra.b      $818c
008152: 48780003     pea.l      $3.w
008156: 7202         moveq      #$2, d1
008158: 202f0004     move.l     $4(a7), d0
00815c: 61000c9e     bsr.w      $8dfc
008160: 588f         addq.l     #$4, a7
008162: 6028         bra.b      $818c
008164: 7203         moveq      #$3, d1
008166: 2017         move.l     (a7), d0
008168: 61000b08     bsr.w      $8c72
00816c: 601e         bra.b      $818c
00816e: 7000         moveq      #$0, d0
008170: 102f0007     move.b     $7(a7), d0
008174: 0c4000ff     cmpi.w     #$ff, d0
008178: 6212         bhi.b      $818c
00817a: 0c000001     cmpi.b     #$1, d0
00817e: 67c8         beq.b      $8148
008180: 0c000002     cmpi.b     #$2, d0
008184: 67cc         beq.b      $8152
008186: 0c000003     cmpi.b     #$3, d0
00818a: 67d8         beq.b      $8164
00818c: 4e5d         unlk       a5
00818e: 4e75         rts        
008190: 4e550000     link.w     a5, #$0
008194: 48e7c000     movem.l    d0-d1, -(a7)
008198: 598f         subq.l     #$4, a7
00819a: 7000         moveq      #$0, d0
00819c: 102f000b     move.b     $b(a7), d0
0081a0: 2200         move.l     d0, d1
0081a2: 202f0004     move.l     $4(a7), d0
0081a6: 6100ff96     bsr.w      $813e
0081aa: 2e80         move.l     d0, (a7)
0081ac: 70ff         moveq      #$ff, d0
0081ae: b097         cmp.l      (a7), d0
0081b0: 6616         bne.b      $81c8
0081b2: 2f2f0014     move.l     $14(a7), -(a7)
0081b6: 7204         moveq      #$4, d1
0081b8: 203c00000099 move.l     #$99, d0
0081be: 61000910     bsr.w      $8ad0
0081c2: 588f         addq.l     #$4, a7
0081c4: 61000930     bsr.w      $8af6
0081c8: 2017         move.l     (a7), d0
0081ca: 588f         addq.l     #$4, a7
0081cc: 4e5d         unlk       a5
0081ce: 4e75         rts        
0081d0: 4e550000     link.w     a5, #$0
0081d4: 48e78080     movem.l    d0/a0, -(a7)
0081d8: 202e93f2     move.l     -$6c0e(a6), d0
0081dc: 52ae93f2     addq.l     #$1, -$6c0e(a6)
0081e0: 41ee8a32     lea.l      -$75ce(a6), a0
0081e4: 21970c00     move.l     (a7), (a0, d0.l * 4)
0081e8: 703f         moveq      #$3f, d0
0081ea: b0ae93f2     cmp.l      -$6c0e(a6), d0
0081ee: 6c04         bge.b      $81f4
0081f0: 42ae93f2     clr.l      -$6c0e(a6)
0081f4: 4ced0100fffc movem.l    -$4(a5), a0
0081fa: 4e5d         unlk       a5
0081fc: 4e75         rts        
0081fe: 4e550000     link.w     a5, #$0
008202: 48e78080     movem.l    d0/a0, -(a7)
008206: 598f         subq.l     #$4, a7
008208: 202e93ee     move.l     -$6c12(a6), d0
00820c: b0ae93f2     cmp.l      -$6c0e(a6), d0
008210: 6604         bne.b      $8216
008212: 70ff         moveq      #$ff, d0
008214: 601e         bra.b      $8234
008216: 202e93ee     move.l     -$6c12(a6), d0
00821a: 52ae93ee     addq.l     #$1, -$6c12(a6)
00821e: 41ee8a32     lea.l      -$75ce(a6), a0
008222: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
008226: 703f         moveq      #$3f, d0
008228: b0ae93ee     cmp.l      -$6c12(a6), d0
00822c: 6c04         bge.b      $8232
00822e: 42ae93ee     clr.l      -$6c12(a6)
008232: 2017         move.l     (a7), d0
008234: 588f         addq.l     #$4, a7
008236: 4ced0100fffc movem.l    -$4(a5), a0
00823c: 4e5d         unlk       a5
00823e: 4e75         rts        
008240: 4e550000     link.w     a5, #$0
008244: 48e78000     movem.l    d0, -(a7)
008248: 4e5d         unlk       a5
00824a: 4e75         rts        
00824c: 4e550000     link.w     a5, #$0
008250: 48e78000     movem.l    d0, -(a7)
008254: 202e93ee     move.l     -$6c12(a6), d0
008258: b0ae93f2     cmp.l      -$6c0e(a6), d0
00825c: 6604         bne.b      $8262
00825e: 7001         moveq      #$1, d0
008260: 6002         bra.b      $8264
008262: 7000         moveq      #$0, d0
008264: 4e5d         unlk       a5
008266: 4e75         rts        
008268: 4e550000     link.w     a5, #$0
00826c: 48e78000     movem.l    d0, -(a7)
008270: 2017         move.l     (a7), d0
008272: 61001404     bsr.w      $9678
008276: 7001         moveq      #$1, d0
008278: 4e5d         unlk       a5
00827a: 4e75         rts        
00827c: 4e550000     link.w     a5, #$0
008280: 48e78000     movem.l    d0, -(a7)
008284: 7001         moveq      #$1, d0
008286: 4e5d         unlk       a5
008288: 4e75         rts        
00828a: 4e550000     link.w     a5, #$0
00828e: 48e78800     movem.l    d0/d4, -(a7)
008292: 610006ba     bsr.w      $894e
008296: 6100ff66     bsr.w      $81fe
00829a: 2800         move.l     d0, d4
00829c: 6c0c         bge.b      $82aa
00829e: 7000         moveq      #$0, d0
0082a0: 610020f4     bsr.w      $a396
0082a4: 6100ff58     bsr.w      $81fe
0082a8: 2800         move.l     d0, d4
0082aa: 610006ce     bsr.w      $897a
0082ae: 2004         move.l     d4, d0
0082b0: 4ced0010fffc movem.l    -$4(a5), d4
0082b6: 4e5d         unlk       a5
0082b8: 4e75         rts        
0082ba: 4e550000     link.w     a5, #$0
0082be: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
0082c2: 7800         moveq      #$0, d4
0082c4: 7a00         moveq      #$0, d5
0082c6: 6042         bra.b      $830a
0082c8: 2f04         move.l     d4, -(a7)
0082ca: 41fa011c     lea.l      $83e8(pc), a0
0082ce: 2208         move.l     a0, d1
0082d0: 202f0004     move.l     $4(a7), d0
0082d4: 6100197e     bsr.w      $9c54
0082d8: 588f         addq.l     #$4, a7
0082da: 2f17         move.l     (a7), -(a7)
0082dc: 48780001     pea.l      $1.w
0082e0: 72ff         moveq      #$ff, d1
0082e2: 7000         moveq      #$0, d0
0082e4: 6100223e     bsr.w      $a524
0082e8: 508f         addq.l     #$8, a7
0082ea: 206f0004     movea.l    $4(a7), a0
0082ee: 2080         move.l     d0, (a0)
0082f0: 72ff         moveq      #$ff, d1
0082f2: b280         cmp.l      d0, d1
0082f4: 6612         bne.b      $8308
0082f6: 0cae000000a9800c cmpi.l     #$a9, -$7ff4(a6)
0082fe: 6604         bne.b      $8304
008300: 5284         addq.l     #$1, d4
008302: 6006         bra.b      $830a
008304: 7000         moveq      #$0, d0
008306: 6012         bra.b      $831a
008308: 7a01         moveq      #$1, d5
00830a: 4a85         tst.l      d5
00830c: 67ba         beq.b      $82c8
00830e: 206f0004     movea.l    $4(a7), a0
008312: 2010         move.l     (a0), d0
008314: 610000b4     bsr.w      $83ca
008318: 7001         moveq      #$1, d0
00831a: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
008320: 4e5d         unlk       a5
008322: 4e75         rts        
008324: 4e550000     link.w     a5, #$0
008328: 48e7c000     movem.l    d0-d1, -(a7)
00832c: 2017         move.l     (a7), d0
00832e: 61002240     bsr.w      $a570
008332: 72ff         moveq      #$ff, d1
008334: b280         cmp.l      d0, d1
008336: 6604         bne.b      $833c
008338: 7000         moveq      #$0, d0
00833a: 6002         bra.b      $833e
00833c: 7001         moveq      #$1, d0
00833e: 4ced0002fffc movem.l    -$4(a5), d1
008344: 4e5d         unlk       a5
008346: 4e75         rts        
008348: 4e550000     link.w     a5, #$0
00834c: 48e7c080     movem.l    d0-d1/a0, -(a7)
008350: 2017         move.l     (a7), d0
008352: 610021fa     bsr.w      $a54e
008356: 206f0004     movea.l    $4(a7), a0
00835a: 2080         move.l     d0, (a0)
00835c: 72ff         moveq      #$ff, d1
00835e: b280         cmp.l      d0, d1
008360: 6604         bne.b      $8366
008362: 7000         moveq      #$0, d0
008364: 6002         bra.b      $8368
008366: 7001         moveq      #$1, d0
008368: 4ced0100fffc movem.l    -$4(a5), a0
00836e: 4e5d         unlk       a5
008370: 4e75         rts        
008372: 4e550000     link.w     a5, #$0
008376: 48e7c000     movem.l    d0-d1, -(a7)
00837a: 2017         move.l     (a7), d0
00837c: 61a6         bsr.b      $8324
00837e: 4a80         tst.l      d0
008380: 670e         beq.b      $8390
008382: 202f0004     move.l     $4(a7), d0
008386: 610021f4     bsr.w      $a57c
00838a: 72ff         moveq      #$ff, d1
00838c: b280         cmp.l      d0, d1
00838e: 6604         bne.b      $8394
008390: 7000         moveq      #$0, d0
008392: 6002         bra.b      $8396
008394: 7001         moveq      #$1, d0
008396: 4e5d         unlk       a5
008398: 4e75         rts        
00839a: 4e550000     link.w     a5, #$0
00839e: 48e7c800     movem.l    d0-d1/d4, -(a7)
0083a2: 6004         bra.b      $83a8
0083a4: 70ff         moveq      #$ff, d0
0083a6: b084         cmp.l      d4, d0
0083a8: 48780001     pea.l      $1.w
0083ac: 7201         moveq      #$1, d1
0083ae: 202f0004     move.l     $4(a7), d0
0083b2: 61002254     bsr.w      $a608
0083b6: 588f         addq.l     #$4, a7
0083b8: 2800         move.l     d0, d4
0083ba: 7201         moveq      #$1, d1
0083bc: b280         cmp.l      d0, d1
0083be: 66e4         bne.b      $83a4
0083c0: 4ced0012fff8 movem.l    -$8(a5), d1/d4
0083c6: 4e5d         unlk       a5
0083c8: 4e75         rts        
0083ca: 4e550000     link.w     a5, #$0
0083ce: 48e7c000     movem.l    d0-d1, -(a7)
0083d2: 7200         moveq      #$0, d1
0083d4: 2017         move.l     (a7), d0
0083d6: 610021c0     bsr.w      $a598
0083da: 72ff         moveq      #$ff, d1
0083dc: b280         cmp.l      d0, d1
0083de: 4ced0002fffc movem.l    -$4(a5), d1
0083e4: 4e5d         unlk       a5
0083e6: 4e75         rts        
0083e8: 7365         .dc.w      $7365
0083ea: 6d25         blt.b      $8411
0083ec: 30366400     move.w     (a6, d6.w * 4), d0
0083f0: 4e550000     link.w     a5, #$0
0083f4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0083f8: 2017         move.l     (a7), d0
0083fa: 6100190c     bsr.w      $9d08
0083fe: 206f0018     movea.l    $18(a7), a0
008402: 2080         move.l     d0, (a0)
008404: 6604         bne.b      $840a
008406: 7000         moveq      #$0, d0
008408: 600c         bra.b      $8416
00840a: 206f0018     movea.l    $18(a7), a0
00840e: 226f0004     movea.l    $4(a7), a1
008412: 2290         move.l     (a0), (a1)
008414: 7001         moveq      #$1, d0
008416: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00841c: 4e5d         unlk       a5
00841e: 4e75         rts        
008420: 4e550000     link.w     a5, #$0
008424: 48e7c000     movem.l    d0-d1, -(a7)
008428: 7001         moveq      #$1, d0
00842a: 4e5d         unlk       a5
00842c: 4e75         rts        
00842e: 4e550000     link.w     a5, #$0
008432: 48e7c080     movem.l    d0-d1/a0, -(a7)
008436: 4a97         tst.l      (a7)
008438: 660a         bne.b      $8444
00843a: 206f0004     movea.l    $4(a7), a0
00843e: 4290         clr.l      (a0)
008440: 7000         moveq      #$0, d0
008442: 6008         bra.b      $844c
008444: 206f0004     movea.l    $4(a7), a0
008448: 2097         move.l     (a7), (a0)
00844a: 7001         moveq      #$1, d0
00844c: 4ced0100fffc movem.l    -$4(a5), a0
008452: 4e5d         unlk       a5
008454: 4e75         rts        
008456: 4e550000     link.w     a5, #$0
00845a: 48e7c000     movem.l    d0-d1, -(a7)
00845e: 4aaf0004     tst.l      $4(a7)
008462: 6604         bne.b      $8468
008464: 7000         moveq      #$0, d0
008466: 600a         bra.b      $8472
008468: 202f0004     move.l     $4(a7), d0
00846c: 610018a6     bsr.w      $9d14
008470: 7001         moveq      #$1, d0
008472: 4e5d         unlk       a5
008474: 4e75         rts        
008476: 0008         .dc.w      $0008
008478: 006e000c006a ori.w      #$c, $6a(a6)
00847e: 00100066     ori.b      #$66, (a0)
008482: 00140062     ori.b      #$62, (a4)
008486: 0018005e     ori.b      #$5e, (a0)+
00848a: 001c005a     ori.b      #$5a, (a4)+
00848e: 00200056     ori.b      #$56, -(a0)
008492: 002c00520028 ori.b      #$52, $28(a4)
008498: 004e         .dc.w      $004e
00849a: ffff         dc.w       $ffff
00849c: 0008         .dc.w      $0008
00849e: 0000000c     ori.b      #$c, d0
0084a2: 00000010     ori.b      #$10, d0
0084a6: 00000014     ori.b      #$14, d0
0084aa: 00000018     ori.b      #$18, d0
0084ae: 0000001c     ori.b      #$1c, d0
0084b2: 00000020     ori.b      #$20, d0
0084b6: 0000002c     ori.b      #$2c, d0
0084ba: 00000028     ori.b      #$28, d0
0084be: 0000ffff     ori.b      #$ff, d0
0084c2: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0084c6: 43faffae     lea.l      $8476(pc), a1
0084ca: 6008         bra.b      $84d4
0084cc: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
0084d0: 43faffca     lea.l      $849c(pc), a1
0084d4: 91c8         suba.l     a0, a0
0084d6: 4e40         trap       #$0
0084d8: 000e         .dc.w      $000e
0084da: 6406         bcc.b      $84e2
0084dc: 2d41800c     move.l     d1, -$7ff4(a6)
0084e0: 70ff         moveq      #$ff, d0
0084e2: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
0084e6: 4e75         rts        
0084e8: 48e70004     movem.l    a5, -(a7)
0084ec: 91ee9406     suba.l     -$6bfa(a6), a0
0084f0: 2d4893fe     move.l     a0, -$6c02(a6)
0084f4: 41ee8b32     lea.l      -$74ce(a6), a0
0084f8: 202e93fa     move.l     -$6c06(a6), d0
0084fc: e248         lsr.w      #$1, d0
0084fe: 5340         subq.w     #$1, d0
008500: 30dd         move.w     (a5)+, (a0)+
008502: 51c8fffc     dbra       d0, $8500
008506: 4cdf2000     movem.l    (a7)+, a5
00850a: e44f         lsr.w      #$2, d7
00850c: 3d479402     move.w     d7, -$6bfe(a6)
008510: 206e8b7a     movea.l    -$7486(a6), a0
008514: 4e90         jsr        (a0)
008516: 4a80         tst.l      d0
008518: 6708         beq.b      $8522
00851a: 7264         moveq      #$64, d1
00851c: d247         add.w      d7, d1
00851e: 4e40         trap       #$0
008520: 00064cdf     ori.b      #$df, d6
008524: 7fff         .dc.w      $7fff
008526: 588f         addq.l     #$4, a7
008528: 44df         move.w     (a7)+, ccr
00852a: 4e75         rts        
00852c: 4e550000     link.w     a5, #$0
008530: 48e78000     movem.l    d0, -(a7)
008534: 1d7c00019404 move.b     #$1, -$6bfc(a6)
00853a: 4e5d         unlk       a5
00853c: 4e75         rts        
00853e: 4e550000     link.w     a5, #$0
008542: 48e78000     movem.l    d0, -(a7)
008546: 2d578b7a     move.l     (a7), -$7486(a6)
00854a: 6606         bne.b      $8552
00854c: 6100ff7e     bsr.w      $84cc
008550: 6004         bra.b      $8556
008552: 6100ff6e     bsr.w      $84c2
008556: 4e5d         unlk       a5
008558: 4e75         rts        
00855a: 4e550000     link.w     a5, #$0
00855e: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
008562: 4fefffd4     lea.l      -$2c(a7), a7
008566: 604a         bra.b      $85b2
008568: 2ebc000000b5 move.l     #$b5, (a7)
00856e: 60000076     bra.w      $85e6
008572: 2ebc000000b6 move.l     #$b6, (a7)
008578: 606c         bra.b      $85e6
00857a: 2ebc000000b7 move.l     #$b7, (a7)
008580: 6064         bra.b      $85e6
008582: 2ebc000000b8 move.l     #$b8, (a7)
008588: 605c         bra.b      $85e6
00858a: 2ebc000000b9 move.l     #$b9, (a7)
008590: 6054         bra.b      $85e6
008592: 2ebc000000ba move.l     #$ba, (a7)
008598: 604c         bra.b      $85e6
00859a: 2ebc000000b2 move.l     #$b2, (a7)
0085a0: 6044         bra.b      $85e6
0085a2: 2ebc000000c0 move.l     #$c0, (a7)
0085a8: 603c         bra.b      $85e6
0085aa: 2ebc000000b3 move.l     #$b3, (a7)
0085b0: 6034         bra.b      $85e6
0085b2: 302e9402     move.w     -$6bfe(a6), d0
0085b6: 48c0         ext.l      d0
0085b8: 7264         moveq      #$64, d1
0085ba: d081         add.l      d1, d0
0085bc: 048000000066 subi.l     #$66, d0
0085c2: 0c8000000009 cmpi.l     #$9, d0
0085c8: 62e0         bhi.b      $85aa
0085ca: 303b0206     move.w     $85d2(pc, d0.w), d0
0085ce: 4efb0002     jmp        $85d2(pc, d0.w)
0085d2: ff96         dc.w       $ff96
0085d4: ffa0         dc.w       $ffa0
0085d6: ffa8         dc.w       $ffa8
0085d8: ffb0         dc.w       $ffb0
0085da: ffb8         dc.w       $ffb8
0085dc: ffc0         dc.w       $ffc0
0085de: ffc8         dc.w       $ffc8
0085e0: ffd8         dc.w       $ffd8
0085e2: ffd0         dc.w       $ffd0
0085e4: ffd0         dc.w       $ffd0
0085e6: 0c97000000ba cmpi.l     #$ba, (a7)
0085ec: 660c         bne.b      $85fa
0085ee: 4a2e9404     tst.b      -$6bfc(a6)
0085f2: 6706         beq.b      $85fa
0085f4: 7000         moveq      #$0, d0
0085f6: 600001ec     bra.w      $87e4
0085fa: 2f2e93fe     move.l     -$6c02(a6), -(a7)
0085fe: 306e9402     movea.w    -$6bfe(a6), a0
008602: 2f08         move.l     a0, -(a7)
008604: 610016e2     bsr.w      $9ce8
008608: 2200         move.l     d0, d1
00860a: 41fa01f0     lea.l      $87fc(pc), a0
00860e: 2008         move.l     a0, d0
008610: 6100163a     bsr.w      $9c4c
008614: 508f         addq.l     #$8, a7
008616: 61002142     bsr.w      $a75a
00861a: 2f00         move.l     d0, -(a7)
00861c: 610016ca     bsr.w      $9ce8
008620: 2f00         move.l     d0, -(a7)
008622: 2f2e93f6     move.l     -$6c0a(a6), -(a7)
008626: 41fa01fb     lea.l      $8823(pc), a0
00862a: 2208         move.l     a0, d1
00862c: 41ef0010     lea.l      $10(a7), a0
008630: 2008         move.l     a0, d0
008632: 61001620     bsr.w      $9c54
008636: 4fef000c     lea.l      $c(a7), a7
00863a: 41fa01ef     lea.l      $882b(pc), a0
00863e: 2208         move.l     a0, d1
008640: 41ef0004     lea.l      $4(a7), a0
008644: 2008         move.l     a0, d0
008646: 610015d4     bsr.w      $9c1c
00864a: 2440         movea.l    d0, a2
00864c: 4a80         tst.l      d0
00864e: 6604         bne.b      $8654
008650: 45ee8ef2     lea.l      -$710e(a6), a2
008654: 2f2e93fe     move.l     -$6c02(a6), -(a7)
008658: 306e9402     movea.w    -$6bfe(a6), a0
00865c: 2f08         move.l     a0, -(a7)
00865e: 61001688     bsr.w      $9ce8
008662: 2f00         move.l     d0, -(a7)
008664: 41fa01c7     lea.l      $882d(pc), a0
008668: 2208         move.l     a0, d1
00866a: 200a         move.l     a2, d0
00866c: 610015e2     bsr.w      $9c50
008670: 4fef000c     lea.l      $c(a7), a7
008674: 7800         moveq      #$0, d4
008676: 6018         bra.b      $8690
008678: 41ee8b32     lea.l      -$74ce(a6), a0
00867c: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
008680: 41fa01d6     lea.l      $8858(pc), a0
008684: 2208         move.l     a0, d1
008686: 200a         move.l     a2, d0
008688: 610015c6     bsr.w      $9c50
00868c: 588f         addq.l     #$4, a7
00868e: 5284         addq.l     #$1, d4
008690: 7008         moveq      #$8, d0
008692: b084         cmp.l      d4, d0
008694: 6ee2         bgt.b      $8678
008696: 41fa01c7     lea.l      $885f(pc), a0
00869a: 2208         move.l     a0, d1
00869c: 200a         move.l     a2, d0
00869e: 610015b0     bsr.w      $9c50
0086a2: 6018         bra.b      $86bc
0086a4: 41ee8b32     lea.l      -$74ce(a6), a0
0086a8: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
0086ac: 41fa01b7     lea.l      $8865(pc), a0
0086b0: 2208         move.l     a0, d1
0086b2: 200a         move.l     a2, d0
0086b4: 6100159a     bsr.w      $9c50
0086b8: 588f         addq.l     #$4, a7
0086ba: 5284         addq.l     #$1, d4
0086bc: 7010         moveq      #$10, d0
0086be: b084         cmp.l      d4, d0
0086c0: 6ee2         bgt.b      $86a4
0086c2: 41fa01a8     lea.l      $886c(pc), a0
0086c6: 2208         move.l     a0, d1
0086c8: 200a         move.l     a2, d0
0086ca: 61001584     bsr.w      $9c50
0086ce: 266e8b66     movea.l    -$749a(a6), a3
0086d2: 7800         moveq      #$0, d4
0086d4: 6014         bra.b      $86ea
0086d6: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0086da: 41fa01ac     lea.l      $8888(pc), a0
0086de: 2208         move.l     a0, d1
0086e0: 200a         move.l     a2, d0
0086e2: 6100156c     bsr.w      $9c50
0086e6: 588f         addq.l     #$4, a7
0086e8: 5284         addq.l     #$1, d4
0086ea: 7008         moveq      #$8, d0
0086ec: b084         cmp.l      d4, d0
0086ee: 6ee6         bgt.b      $86d6
0086f0: 41fa019d     lea.l      $888f(pc), a0
0086f4: 2208         move.l     a0, d1
0086f6: 200a         move.l     a2, d0
0086f8: 61001556     bsr.w      $9c50
0086fc: 266e8b6e     movea.l    -$7492(a6), a3
008700: 7800         moveq      #$0, d4
008702: 6014         bra.b      $8718
008704: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
008708: 41fa01a0     lea.l      $88aa(pc), a0
00870c: 2208         move.l     a0, d1
00870e: 200a         move.l     a2, d0
008710: 6100153e     bsr.w      $9c50
008714: 588f         addq.l     #$4, a7
008716: 5284         addq.l     #$1, d4
008718: 7008         moveq      #$8, d0
00871a: b084         cmp.l      d4, d0
00871c: 6ee6         bgt.b      $8704
00871e: 41fa0191     lea.l      $88b1(pc), a0
008722: 2208         move.l     a0, d1
008724: 200a         move.l     a2, d0
008726: 61001528     bsr.w      $9c50
00872a: 266e8b66     movea.l    -$749a(a6), a3
00872e: 2653         movea.l    (a3), a3
008730: 7800         moveq      #$0, d4
008732: 6014         bra.b      $8748
008734: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
008738: 41fa01a5     lea.l      $88df(pc), a0
00873c: 2208         move.l     a0, d1
00873e: 200a         move.l     a2, d0
008740: 6100150e     bsr.w      $9c50
008744: 588f         addq.l     #$4, a7
008746: 5284         addq.l     #$1, d4
008748: 7008         moveq      #$8, d0
00874a: b084         cmp.l      d4, d0
00874c: 6ee6         bgt.b      $8734
00874e: 082e00008b73 btst.b     #$0, -$748d(a6)
008754: 6704         beq.b      $875a
008756: 7043         moveq      #$43, d0
008758: 6002         bra.b      $875c
00875a: 702d         moveq      #$2d, d0
00875c: 2f00         move.l     d0, -(a7)
00875e: 082e00018b73 btst.b     #$1, -$748d(a6)
008764: 6704         beq.b      $876a
008766: 7056         moveq      #$56, d0
008768: 6002         bra.b      $876c
00876a: 702d         moveq      #$2d, d0
00876c: 2f00         move.l     d0, -(a7)
00876e: 082e00028b73 btst.b     #$2, -$748d(a6)
008774: 6704         beq.b      $877a
008776: 705a         moveq      #$5a, d0
008778: 6002         bra.b      $877c
00877a: 702d         moveq      #$2d, d0
00877c: 2f00         move.l     d0, -(a7)
00877e: 082e00038b73 btst.b     #$3, -$748d(a6)
008784: 6704         beq.b      $878a
008786: 704e         moveq      #$4e, d0
008788: 6002         bra.b      $878c
00878a: 702d         moveq      #$2d, d0
00878c: 2f00         move.l     d0, -(a7)
00878e: 082e00048b73 btst.b     #$4, -$748d(a6)
008794: 6704         beq.b      $879a
008796: 7058         moveq      #$58, d0
008798: 6002         bra.b      $879c
00879a: 702d         moveq      #$2d, d0
00879c: 2f00         move.l     d0, -(a7)
00879e: 303c00ff     move.w     #$ff, d0
0087a2: c06e8b72     and.w      -$748e(a6), d0
0087a6: 7200         moveq      #$0, d1
0087a8: 3200         move.w     d0, d1
0087aa: 2f01         move.l     d1, -(a7)
0087ac: 2f2e8b74     move.l     -$748c(a6), -(a7)
0087b0: 41fa0134     lea.l      $88e6(pc), a0
0087b4: 2208         move.l     a0, d1
0087b6: 200a         move.l     a2, d0
0087b8: 61001496     bsr.w      $9c50
0087bc: 4fef001c     lea.l      $1c(a7), a7
0087c0: 41ee8ef2     lea.l      -$710e(a6), a0
0087c4: b1ca         cmpa.l     a2, a0
0087c6: 6706         beq.b      $87ce
0087c8: 200a         move.l     a2, d0
0087ca: 610014a4     bsr.w      $9c70
0087ce: 2f2e93fe     move.l     -$6c02(a6), -(a7)
0087d2: 61001f86     bsr.w      $a75a
0087d6: 2200         move.l     d0, d1
0087d8: 202f0004     move.l     $4(a7), d0
0087dc: 610002f2     bsr.w      $8ad0
0087e0: 588f         addq.l     #$4, a7
0087e2: 70ff         moveq      #$ff, d0
0087e4: 4fef002c     lea.l      $2c(a7), a7
0087e8: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
0087ee: 4e5d         unlk       a5
0087f0: 4e75         rts        
0087f2: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
0087f8: 6170         bsr.b      $886a
0087fa: 5f00         subq.b     #$7, d0
0087fc: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
008802: 6170         bsr.b      $8874
008804: 2023         move.l     -(a3), d0
008806: 2564206f     move.l     -(a4), $206f(a2)
00880a: 6363         bls.b      $886f
00880c: 7572         .dc.w      $7572
00880e: 7265         moveq      #$65, d1
008810: 6420         bcc.b      $8832
008812: 6174         bsr.b      $8888
008814: 206f6666     movea.l    $6666(a7), a0
008818: 7365         .dc.w      $7365
00881a: 743a         moveq      #$3a, d2
00881c: 20307825     move.l     $25(a0, d7.l), d0
008820: 780d         moveq      #$d, d4
008822: 00257325     ori.b      #$25, -(a5)
008826: 735f         .dc.w      $735f
008828: 25640077     move.l     -(a4), $77(a2)
00882c: 0025733a     ori.b      #$3a, -(a5)
008830: 2054         movea.l    (a4), a0
008832: 7261         moveq      #$61, d1
008834: 7020         moveq      #$20, d0
008836: 2325         move.l     -(a5), -(a1)
008838: 6420         bcc.b      $885a
00883a: 6f63         ble.b      $889f
00883c: 6375         bls.b      $88b3
00883e: 7272         moveq      #$72, d1
008840: 6564         bcs.b      $88a6
008842: 2061         movea.l    -(a1), a0
008844: 7420         moveq      #$20, d2
008846: 6f66         ble.b      $88ae
008848: 6673         bne.b      $88bd
00884a: 6574         bcs.b      $88c0
00884c: 3a20         move.w     -(a0), d5
00884e: 30782578     movea.w    $2578.w, a0
008852: 0d0d446e     movep.w    $446e(a5), d6
008856: 3a00         move.w     d0, d5
008858: 2025         move.l     -(a5), d0
00885a: 30386c58     move.w     $6c58.w, d0
00885e: 000d         .dc.w      $000d
008860: 0d41         bchg.b     d6, d1
008862: 6e3a         bgt.b      $889e
008864: 00202530     ori.b      #$30, -(a0)
008868: 386c5800     movea.w    $5800(a4), a4
00886c: 0d0d4d65     movep.w    $4d65(a5), d6
008870: 6d20         blt.b      $8892
008872: 706f         moveq      #$6f, d0
008874: 696e         bvs.b      $88e4
008876: 7465         moveq      #$65, d2
008878: 6420         bcc.b      $889a
00887a: 746f         moveq      #$6f, d2
00887c: 2062         movea.l    -(a2), a0
00887e: 7920         .dc.w      $7920
008880: 41353a0d     chk.l      $d(a5, d3.l), d0
008884: 53353a00     subq.b     #$1, (a5, d3.l * 2)
008888: 2025         move.l     -(a5), d0
00888a: 30386c58     move.w     $6c58.w, d0
00888e: 000d         .dc.w      $000d
008890: 0d4d656d     movep.l    $656d(a5), d6
008894: 20706f696e74 movea.l    ([$6e74, a0]), a0
00889a: 6564         bcs.b      $8900
00889c: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
0088a2: 2041         movea.l    d1, a0
0088a4: 373a0d53     move.w     $95f9(pc), -(a3)
0088a8: 3700         move.w     d0, -(a3)
0088aa: 2025         move.l     -(a5), d0
0088ac: 30386c58     move.w     $6c58.w, d0
0088b0: 000d         .dc.w      $000d
0088b2: 0d4d656d     movep.l    $656d(a5), d6
0088b6: 20706f696e74 movea.l    ([$6e74, a0]), a0
0088bc: 6564         bcs.b      $8922
0088be: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
0088c4: 20284135     move.l     $4135(a0), d0
0088c8: 292c2069     move.l     $2069(a4), -(a4)
0088cc: 652e         bcs.b      $88fc
0088ce: 2063         movea.l    -(a3), a0
0088d0: 6f6e         ble.b      $8940
0088d2: 7420         moveq      #$20, d2
0088d4: 6f66         ble.b      $893c
0088d6: 2041         movea.l    d1, a0
0088d8: 353a0d4d     move.w     $9627(pc), -(a2)
0088dc: 353a0020     move.w     $88fe(pc), -(a2)
0088e0: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0088e4: 5800         addq.b     #$4, d0
0088e6: 0d0d5043     movep.w    $5043(a5), d6
0088ea: 3a20         move.w     -(a0), d5
0088ec: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0088f0: 5820         addq.b     #$4, -(a0)
0088f2: 2043         movea.l    d3, a0
0088f4: 433a2025     chk.l      $a91b(pc), d1
0088f8: 30325820     move.w     $20(a2, d5.l), d0
0088fc: 2825         move.l     -(a5), d4
0088fe: 6325         bls.b      $8925
008900: 6325         bls.b      $8927
008902: 6325         bls.b      $8929
008904: 6325         bls.b      $892b
008906: 6329         bls.b      $8931
008908: 0d00         btst.l     d6, d0
00890a: 4e550000     link.w     a5, #$0
00890e: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
008912: 2800         move.l     d0, d4
008914: 7204         moveq      #$4, d1
008916: 7044         moveq      #$44, d0
008918: 61001baa     bsr.w      $a4c4
00891c: 2440         movea.l    d0, a2
00891e: 3a12         move.w     (a2), d5
008920: 601c         bra.b      $893e
008922: 4a92         tst.l      (a2)
008924: 6718         beq.b      $893e
008926: 2052         movea.l    (a2), a0
008928: 7000         moveq      #$0, d0
00892a: 3010         move.w     (a0), d0
00892c: 3204         move.w     d4, d1
00892e: 48c1         ext.l      d1
008930: b081         cmp.l      d1, d0
008932: 660a         bne.b      $893e
008934: 2052         movea.l    (a2), a0
008936: 7000         moveq      #$0, d0
008938: 30280002     move.w     $2(a0), d0
00893c: 6006         bra.b      $8944
00893e: 588a         addq.l     #$4, a2
008940: 5345         subq.w     #$1, d5
008942: 6cde         bge.b      $8922
008944: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
00894a: 4e5d         unlk       a5
00894c: 4e75         rts        
00894e: 48e74000     movem.l    d1, -(a7)
008952: 203c00000000 move.l     #$0, d0
008958: 223c00000001 move.l     #$1, d1
00895e: 4e40         trap       #$0
008960: 0057640c     ori.w      #$640c, (a7)
008964: 2d41800c     move.l     d1, -$7ff4(a6)
008968: 70ff         moveq      #$ff, d0
00896a: 4cdf0002     movem.l    (a7)+, d1
00896e: 4e75         rts        
008970: 4280         clr.l      d0
008972: 3001         move.w     d1, d0
008974: 4cdf0002     movem.l    (a7)+, d1
008978: 4e75         rts        
00897a: 48e74000     movem.l    d1, -(a7)
00897e: 203c00000000 move.l     #$0, d0
008984: 223c00000000 move.l     #$0, d1
00898a: 4e40         trap       #$0
00898c: 005764e0     ori.w      #$64e0, (a7)
008990: 60d2         bra.b      $8964
008992: 48e740e0     movem.l    d1/a0-a2, -(a7)
008996: 207900000000 movea.l    $0.l, a0
00899c: 2268004c     movea.l    $4c(a0), a1
0089a0: 4280         clr.l      d0
0089a2: 10290370     move.b     $370(a1), d0
0089a6: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0089aa: 4e75         rts        
0089ac: 48e740e0     movem.l    d1/a0-a2, -(a7)
0089b0: 207900000000 movea.l    $0.l, a0
0089b6: 2268004c     movea.l    $4c(a0), a1
0089ba: 81a90374     or.l       d0, $374(a1)
0089be: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0089c2: 4e75         rts        
0089c4: 48e740e0     movem.l    d1/a0-a2, -(a7)
0089c8: 207900000000 movea.l    $0.l, a0
0089ce: 2268004c     movea.l    $4c(a0), a1
0089d2: 4480         neg.l      d0
0089d4: c1a90374     and.l      d0, $374(a1)
0089d8: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0089dc: 4e75         rts        
0089de: 4e550000     link.w     a5, #$0
0089e2: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0089e6: 7200         moveq      #$0, d1
0089e8: 41ee940a     lea.l      -$6bf6(a6), a0
0089ec: 2008         move.l     a0, d0
0089ee: 61001c4c     bsr.w      $a63c
0089f2: 2440         movea.l    d0, a2
0089f4: 70ff         moveq      #$ff, d0
0089f6: b08a         cmp.l      a2, d0
0089f8: 6614         bne.b      $8a0e
0089fa: 41ee940a     lea.l      -$6bf6(a6), a0
0089fe: 2208         move.l     a0, d1
008a00: 41fa0072     lea.l      $8a74(pc), a0
008a04: 2008         move.l     a0, d0
008a06: 61001244     bsr.w      $9c4c
008a0a: 7000         moveq      #$0, d0
008a0c: 6016         bra.b      $8a24
008a0e: 202a0030     move.l     $30(a2), d0
008a12: d08a         add.l      a2, d0
008a14: 2800         move.l     d0, d4
008a16: 2204         move.l     d4, d1
008a18: 200a         move.l     a2, d0
008a1a: 6112         bsr.b      $8a2e
008a1c: 200a         move.l     a2, d0
008a1e: 61001c52     bsr.w      $a672
008a22: 7001         moveq      #$1, d0
008a24: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
008a2a: 4e5d         unlk       a5
008a2c: 4e75         rts        
008a2e: 4e550000     link.w     a5, #$0
008a32: 48e7c080     movem.l    d0-d1/a0, -(a7)
008a36: 518f         subq.l     #$8, a7
008a38: 41ee8b7e     lea.l      -$7482(a6), a0
008a3c: 2f480004     move.l     a0, $4(a7)
008a40: 4297         clr.l      (a7)
008a42: 601c         bra.b      $8a60
008a44: 206f000c     movea.l    $c(a7), a0
008a48: 2017         move.l     (a7), d0
008a4a: 7200         moveq      #$0, d1
008a4c: 32300a00     move.w     (a0, d0.l * 2), d1
008a50: d2af0008     add.l      $8(a7), d1
008a54: 206f0004     movea.l    $4(a7), a0
008a58: 2017         move.l     (a7), d0
008a5a: 21810c00     move.l     d1, (a0, d0.l * 4)
008a5e: 5297         addq.l     #$1, (a7)
008a60: 0c97000000c4 cmpi.l     #$c4, (a7)
008a66: 6ddc         blt.b      $8a44
008a68: 508f         addq.l     #$8, a7
008a6a: 4ced0100fffc movem.l    -$4(a5), a0
008a70: 4e5d         unlk       a5
008a72: 4e75         rts        
008a74: 434f         .dc.w      $434f
008a76: 4f52         .dc.w      $4f52
008a78: 445f         neg.w      (a7)+
008a7a: 696e         bvs.b      $8aea
008a7c: 6974         bvs.b      $8af2
008a7e: 3a20         move.w     -(a0), d5
008a80: 4e6f         move       usp, a7
008a82: 2027         move.l     -(a7), d0
008a84: 25732720210d0000 move.l     $210d(a3, d2.w * 8), $0(a2)
008a8c: 4e550000     link.w     a5, #$0
008a90: 48e7c080     movem.l    d0-d1/a0, -(a7)
008a94: 518f         subq.l     #$8, a7
008a96: 203c00000100 move.l     #$100, d0
008a9c: d0af0008     add.l      $8(a7), d0
008aa0: 2e80         move.l     d0, (a7)
008aa2: 1f6f000f0004 move.b     $f(a7), $4(a7)
008aa8: 202f001c     move.l     $1c(a7), d0
008aac: e080         asr.l      #$8, d0
008aae: 1f400005     move.b     d0, $5(a7)
008ab2: 1f6f001f0006 move.b     $1f(a7), $6(a7)
008ab8: 1f7c00ff0007 move.b     #$ff, $7(a7)
008abe: 41d7         lea.l      (a7), a0
008ac0: 2008         move.l     a0, d0
008ac2: 6146         bsr.b      $8b0a
008ac4: 508f         addq.l     #$8, a7
008ac6: 4ced0100fffc movem.l    -$4(a5), a0
008acc: 4e5d         unlk       a5
008ace: 4e75         rts        
008ad0: 4e550000     link.w     a5, #$0
008ad4: 48e7c000     movem.l    d0-d1, -(a7)
008ad8: 2f2f0010     move.l     $10(a7), -(a7)
008adc: 222f0008     move.l     $8(a7), d1
008ae0: 202f0004     move.l     $4(a7), d0
008ae4: 61a6         bsr.b      $8a8c
008ae6: 588f         addq.l     #$4, a7
008ae8: 203c00002410 move.l     #$2410, d0
008aee: 610000bc     bsr.w      $8bac
008af2: 4e5d         unlk       a5
008af4: 4e75         rts        
008af6: 4e550000     link.w     a5, #$0
008afa: 48e78000     movem.l    d0, -(a7)
008afe: 7000         moveq      #$0, d0
008b00: 61001894     bsr.w      $a396
008b04: 60f8         bra.b      $8afe
008b06: 4e5d         unlk       a5
008b08: 4e75         rts        
008b0a: 4e550000     link.w     a5, #$0
008b0e: 48e7c080     movem.l    d0-d1/a0, -(a7)
008b12: 4aae9418     tst.l      -$6be8(a6)
008b16: 6c16         bge.b      $8b2e
008b18: 7203         moveq      #$3, d1
008b1a: 41fa002e     lea.l      $8b4a(pc), a0
008b1e: 2008         move.l     a0, d0
008b20: 61000136     bsr.w      $8c58
008b24: 2d409418     move.l     d0, -$6be8(a6)
008b28: 6c04         bge.b      $8b2e
008b2a: 70ff         moveq      #$ff, d0
008b2c: 6012         bra.b      $8b40
008b2e: 2f17         move.l     (a7), -(a7)
008b30: 222e9418     move.l     -$6be8(a6), d1
008b34: 203c00007f23 move.l     #$7f23, d0
008b3a: 61000f7a     bsr.w      $9ab6
008b3e: 588f         addq.l     #$4, a7
008b40: 4ced0102fff8 movem.l    -$8(a5), d1/a0
008b46: 4e5d         unlk       a5
008b48: 4e75         rts        
008b4a: 2f636339     move.l     -(a3), $6339(a7)
008b4e: 3300         move.w     d0, -(a1)
008b50: 4e550000     link.w     a5, #$0
008b54: 48e7c080     movem.l    d0-d1/a0, -(a7)
008b58: 518f         subq.l     #$8, a7
008b5a: 7201         moveq      #$1, d1
008b5c: 41fa00ce     lea.l      $8c2c(pc), a0
008b60: 2008         move.l     a0, d0
008b62: 610000f4     bsr.w      $8c58
008b66: 2f400004     move.l     d0, $4(a7)
008b6a: 72ff         moveq      #$ff, d1
008b6c: b280         cmp.l      d0, d1
008b6e: 6722         beq.b      $8b92
008b70: 48780004     pea.l      $4.w
008b74: 41ef0004     lea.l      $4(a7), a0
008b78: 2208         move.l     a0, d1
008b7a: 202f0008     move.l     $8(a7), d0
008b7e: 61001128     bsr.w      $9ca8
008b82: 588f         addq.l     #$4, a7
008b84: 7204         moveq      #$4, d1
008b86: b280         cmp.l      d0, d1
008b88: 670c         beq.b      $8b96
008b8a: 202f0004     move.l     $4(a7), d0
008b8e: 61001134     bsr.w      $9cc4
008b92: 70ff         moveq      #$ff, d0
008b94: 600a         bra.b      $8ba0
008b96: 202f0004     move.l     $4(a7), d0
008b9a: 61001128     bsr.w      $9cc4
008b9e: 2017         move.l     (a7), d0
008ba0: 508f         addq.l     #$8, a7
008ba2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
008ba8: 4e5d         unlk       a5
008baa: 4e75         rts        
008bac: 4e550000     link.w     a5, #$0
008bb0: 48e7c000     movem.l    d0-d1, -(a7)
008bb4: 2217         move.l     (a7), d1
008bb6: 6198         bsr.b      $8b50
008bb8: 610003c6     bsr.w      $8f80
008bbc: 72ff         moveq      #$ff, d1
008bbe: b280         cmp.l      d0, d1
008bc0: 4ced0002fffc movem.l    -$4(a5), d1
008bc6: 4e5d         unlk       a5
008bc8: 4e75         rts        
008bca: 4e550000     link.w     a5, #$0
008bce: 48e7c080     movem.l    d0-d1/a0, -(a7)
008bd2: 518f         subq.l     #$8, a7
008bd4: 7202         moveq      #$2, d1
008bd6: 41fa006a     lea.l      $8c42(pc), a0
008bda: 2008         move.l     a0, d0
008bdc: 6100007a     bsr.w      $8c58
008be0: 2f400004     move.l     d0, $4(a7)
008be4: 72ff         moveq      #$ff, d1
008be6: b280         cmp.l      d0, d1
008be8: 6728         beq.b      $8c12
008bea: 61001b6e     bsr.w      $a75a
008bee: 2e80         move.l     d0, (a7)
008bf0: 48780004     pea.l      $4.w
008bf4: 41ef0004     lea.l      $4(a7), a0
008bf8: 2208         move.l     a0, d1
008bfa: 202f0008     move.l     $8(a7), d0
008bfe: 610010b0     bsr.w      $9cb0
008c02: 588f         addq.l     #$4, a7
008c04: 7204         moveq      #$4, d1
008c06: b280         cmp.l      d0, d1
008c08: 670c         beq.b      $8c16
008c0a: 202f0004     move.l     $4(a7), d0
008c0e: 610010b4     bsr.w      $9cc4
008c12: 70ff         moveq      #$ff, d0
008c14: 600a         bra.b      $8c20
008c16: 202f0004     move.l     $4(a7), d0
008c1a: 610010a8     bsr.w      $9cc4
008c1e: 7000         moveq      #$0, d0
008c20: 508f         addq.l     #$8, a7
008c22: 4ced0102fff8 movem.l    -$8(a5), d1/a0
008c28: 4e5d         unlk       a5
008c2a: 4e75         rts        
008c2c: 2f63302f     move.l     -(a3), $302f(a7)
008c30: 5f313239     subq.b     #$7, $39(a1, d3.w)
008c34: 5f2f7061     subq.b     #$7, $7061(a7)
008c38: 636b         bls.b      $8ca5
008c3a: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
008c40: 64002f63     bcc.w      $bba5
008c44: 302f5f31     move.w     $5f31(a7), d0
008c48: 32395f2f7061 move.w     $5f2f7061.l, d1
008c4e: 636b         bls.b      $8cbb
008c50: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
008c56: 64004e55     bcc.w      $daad
008c5a: 000048e7     ori.b      #$e7, d0
008c5e: c000         and.b      d0, d0
008c60: 42a7         clr.l      -(a7)
008c62: 222f0008     move.l     $8(a7), d1
008c66: 202f0004     move.l     $4(a7), d0
008c6a: 613e         bsr.b      $8caa
008c6c: 588f         addq.l     #$4, a7
008c6e: 4e5d         unlk       a5
008c70: 4e75         rts        
008c72: 4e550000     link.w     a5, #$0
008c76: 48e7c000     movem.l    d0-d1, -(a7)
008c7a: 48780001     pea.l      $1.w
008c7e: 222f0008     move.l     $8(a7), d1
008c82: 202f0004     move.l     $4(a7), d0
008c86: 6122         bsr.b      $8caa
008c88: 588f         addq.l     #$4, a7
008c8a: 4e5d         unlk       a5
008c8c: 4e75         rts        
008c8e: 4e550000     link.w     a5, #$0
008c92: 48e7c000     movem.l    d0-d1, -(a7)
008c96: 48780002     pea.l      $2.w
008c9a: 222f0008     move.l     $8(a7), d1
008c9e: 202f0004     move.l     $4(a7), d0
008ca2: 6106         bsr.b      $8caa
008ca4: 588f         addq.l     #$4, a7
008ca6: 4e5d         unlk       a5
008ca8: 4e75         rts        
008caa: 4e550000     link.w     a5, #$0
008cae: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
008cb2: 4fefffda     lea.l      -$26(a7), a7
008cb6: 41ef0008     lea.l      $8(a7), a0
008cba: 2208         move.l     a0, d1
008cbc: 202f0026     move.l     $26(a7), d0
008cc0: 61000ad4     bsr.w      $9796
008cc4: 2440         movea.l    d0, a2
008cc6: 4a80         tst.l      d0
008cc8: 67000108     beq.w      $8dd2
008ccc: 41ef0008     lea.l      $8(a7), a0
008cd0: 2008         move.l     a0, d0
008cd2: 61000b08     bsr.w      $97dc
008cd6: 2f400004     move.l     d0, $4(a7)
008cda: 6d0000f6     blt.w      $8dd2
008cde: 41ef0022     lea.l      $22(a7), a0
008ce2: 2208         move.l     a0, d1
008ce4: 200a         move.l     a2, d0
008ce6: 61000b7a     bsr.w      $9862
008cea: 2440         movea.l    d0, a2
008cec: 4a80         tst.l      d0
008cee: 670000e2     beq.w      $8dd2
008cf2: 202f0004     move.l     $4(a7), d0
008cf6: e588         lsl.l      #$2, d0
008cf8: 41ee9462     lea.l      -$6b9e(a6), a0
008cfc: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
008d02: 6600009a     bne.w      $8d9e
008d06: 7203         moveq      #$3, d1
008d08: 41ef0008     lea.l      $8(a7), a0
008d0c: 2008         move.l     a0, d0
008d0e: 61000f84     bsr.w      $9c94
008d12: 222f0004     move.l     $4(a7), d1
008d16: e589         lsl.l      #$2, d1
008d18: 41ee9462     lea.l      -$6b9e(a6), a0
008d1c: 31801800     move.w     d0, (a0, d1.l)
008d20: 6d0000ca     blt.w      $8dec
008d24: 202f0004     move.l     $4(a7), d0
008d28: e588         lsl.l      #$2, d0
008d2a: 41ee9462     lea.l      -$6b9e(a6), a0
008d2e: 2400         move.l     d0, d2
008d30: 42a7         clr.l      -(a7)
008d32: 202f0008     move.l     $8(a7), d0
008d36: e588         lsl.l      #$2, d0
008d38: 43ee9462     lea.l      -$6b9e(a6), a1
008d3c: 32710800     movea.w    (a1, d0.l), a1
008d40: 2209         move.l     a1, d1
008d42: 203c0000ff0e move.l     #$ff0e, d0
008d48: 61000d08     bsr.w      $9a52
008d4c: 588f         addq.l     #$4, a7
008d4e: 2240         movea.l    d0, a1
008d50: 7000         moveq      #$0, d0
008d52: 1011         move.b     (a1), d0
008d54: 31802802     move.w     d0, $2(a0, d2.l)
008d58: 202f0004     move.l     $4(a7), d0
008d5c: e588         lsl.l      #$2, d0
008d5e: 41ee9462     lea.l      -$6b9e(a6), a0
008d62: 4a700800     tst.w      (a0, d0.l)
008d66: 6d36         blt.b      $8d9e
008d68: 202f0004     move.l     $4(a7), d0
008d6c: e588         lsl.l      #$2, d0
008d6e: 41ee9462     lea.l      -$6b9e(a6), a0
008d72: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
008d78: 6c24         bge.b      $8d9e
008d7a: 202f0004     move.l     $4(a7), d0
008d7e: e588         lsl.l      #$2, d0
008d80: 41ee9462     lea.l      -$6b9e(a6), a0
008d84: 30700800     movea.w    (a0, d0.l), a0
008d88: 2008         move.l     a0, d0
008d8a: 61000f38     bsr.w      $9cc4
008d8e: 202f0004     move.l     $4(a7), d0
008d92: e588         lsl.l      #$2, d0
008d94: 41ee9462     lea.l      -$6b9e(a6), a0
008d98: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
008d9e: 202f0004     move.l     $4(a7), d0
008da2: e588         lsl.l      #$2, d0
008da4: 41ee9462     lea.l      -$6b9e(a6), a0
008da8: 30300802     move.w     $2(a0, d0.l), d0
008dac: 48c0         ext.l      d0
008dae: b0af0022     cmp.l      $22(a7), d0
008db2: 661e         bne.b      $8dd2
008db4: 0c12005f     cmpi.b     #$5f, (a2)
008db8: 6610         bne.b      $8dca
008dba: 6004         bra.b      $8dc0
008dbc: 4a12         tst.b      (a2)
008dbe: 672c         beq.b      $8dec
008dc0: 528a         addq.l     #$1, a2
008dc2: 0c12005f     cmpi.b     #$5f, (a2)
008dc6: 66f4         bne.b      $8dbc
008dc8: 528a         addq.l     #$1, a2
008dca: 222f002a     move.l     $2a(a7), d1
008dce: 200a         move.l     a2, d0
008dd0: 6008         bra.b      $8dda
008dd2: 222f002a     move.l     $2a(a7), d1
008dd6: 202f0026     move.l     $26(a7), d0
008dda: 242f004e     move.l     $4e(a7), d2
008dde: e58a         lsl.l      #$2, d2
008de0: 41ee941c     lea.l      -$6be4(a6), a0
008de4: 20702800     movea.l    (a0, d2.l), a0
008de8: 4e90         jsr        (a0)
008dea: 6002         bra.b      $8dee
008dec: 70ff         moveq      #$ff, d0
008dee: 4fef0026     lea.l      $26(a7), a7
008df2: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
008df8: 4e5d         unlk       a5
008dfa: 4e75         rts        
008dfc: 4e550000     link.w     a5, #$0
008e00: 48e7c080     movem.l    d0-d1/a0, -(a7)
008e04: 2f2f0018     move.l     $18(a7), -(a7)
008e08: 306f001a     movea.w    $1a(a7), a0
008e0c: 2f08         move.l     a0, -(a7)
008e0e: 222f000c     move.l     $c(a7), d1
008e12: 202f0008     move.l     $8(a7), d0
008e16: 610c         bsr.b      $8e24
008e18: 508f         addq.l     #$8, a7
008e1a: 4ced0100fffc movem.l    -$4(a5), a0
008e20: 4e5d         unlk       a5
008e22: 4e75         rts        
008e24: 4e550000     link.w     a5, #$0
008e28: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
008e2c: 4fefffda     lea.l      -$26(a7), a7
008e30: 41ef0008     lea.l      $8(a7), a0
008e34: 2208         move.l     a0, d1
008e36: 202f0026     move.l     $26(a7), d0
008e3a: 6100095a     bsr.w      $9796
008e3e: 2440         movea.l    d0, a2
008e40: 4a80         tst.l      d0
008e42: 67000112     beq.w      $8f56
008e46: 41ef0008     lea.l      $8(a7), a0
008e4a: 2008         move.l     a0, d0
008e4c: 6100098e     bsr.w      $97dc
008e50: 2f400004     move.l     d0, $4(a7)
008e54: 6d000100     blt.w      $8f56
008e58: 41ef0022     lea.l      $22(a7), a0
008e5c: 2208         move.l     a0, d1
008e5e: 200a         move.l     a2, d0
008e60: 61000a00     bsr.w      $9862
008e64: 2440         movea.l    d0, a2
008e66: 4a80         tst.l      d0
008e68: 670000ec     beq.w      $8f56
008e6c: 202f0004     move.l     $4(a7), d0
008e70: e588         lsl.l      #$2, d0
008e72: 41ee9462     lea.l      -$6b9e(a6), a0
008e76: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
008e7c: 6600009a     bne.w      $8f18
008e80: 7203         moveq      #$3, d1
008e82: 41ef0008     lea.l      $8(a7), a0
008e86: 2008         move.l     a0, d0
008e88: 61000e0a     bsr.w      $9c94
008e8c: 222f0004     move.l     $4(a7), d1
008e90: e589         lsl.l      #$2, d1
008e92: 41ee9462     lea.l      -$6b9e(a6), a0
008e96: 31801800     move.w     d0, (a0, d1.l)
008e9a: 6d0000d4     blt.w      $8f70
008e9e: 202f0004     move.l     $4(a7), d0
008ea2: e588         lsl.l      #$2, d0
008ea4: 41ee9462     lea.l      -$6b9e(a6), a0
008ea8: 2400         move.l     d0, d2
008eaa: 42a7         clr.l      -(a7)
008eac: 202f0008     move.l     $8(a7), d0
008eb0: e588         lsl.l      #$2, d0
008eb2: 43ee9462     lea.l      -$6b9e(a6), a1
008eb6: 32710800     movea.w    (a1, d0.l), a1
008eba: 2209         move.l     a1, d1
008ebc: 203c0000ff0e move.l     #$ff0e, d0
008ec2: 61000b8e     bsr.w      $9a52
008ec6: 588f         addq.l     #$4, a7
008ec8: 2240         movea.l    d0, a1
008eca: 7000         moveq      #$0, d0
008ecc: 1011         move.b     (a1), d0
008ece: 31802802     move.w     d0, $2(a0, d2.l)
008ed2: 202f0004     move.l     $4(a7), d0
008ed6: e588         lsl.l      #$2, d0
008ed8: 41ee9462     lea.l      -$6b9e(a6), a0
008edc: 4a700800     tst.w      (a0, d0.l)
008ee0: 6d36         blt.b      $8f18
008ee2: 202f0004     move.l     $4(a7), d0
008ee6: e588         lsl.l      #$2, d0
008ee8: 41ee9462     lea.l      -$6b9e(a6), a0
008eec: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
008ef2: 6c24         bge.b      $8f18
008ef4: 202f0004     move.l     $4(a7), d0
008ef8: e588         lsl.l      #$2, d0
008efa: 41ee9462     lea.l      -$6b9e(a6), a0
008efe: 30700800     movea.w    (a0, d0.l), a0
008f02: 2008         move.l     a0, d0
008f04: 61000dbe     bsr.w      $9cc4
008f08: 202f0004     move.l     $4(a7), d0
008f0c: e588         lsl.l      #$2, d0
008f0e: 41ee9462     lea.l      -$6b9e(a6), a0
008f12: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
008f18: 202f0004     move.l     $4(a7), d0
008f1c: e588         lsl.l      #$2, d0
008f1e: 41ee9462     lea.l      -$6b9e(a6), a0
008f22: 30300802     move.w     $2(a0, d0.l), d0
008f26: 48c0         ext.l      d0
008f28: b0af0022     cmp.l      $22(a7), d0
008f2c: 6628         bne.b      $8f56
008f2e: 0c12005f     cmpi.b     #$5f, (a2)
008f32: 6610         bne.b      $8f44
008f34: 6004         bra.b      $8f3a
008f36: 4a12         tst.b      (a2)
008f38: 6736         beq.b      $8f70
008f3a: 528a         addq.l     #$1, a2
008f3c: 0c12005f     cmpi.b     #$5f, (a2)
008f40: 66f4         bne.b      $8f36
008f42: 528a         addq.l     #$1, a2
008f44: 2f2f0052     move.l     $52(a7), -(a7)
008f48: 306f0054     movea.w    $54(a7), a0
008f4c: 2f08         move.l     a0, -(a7)
008f4e: 222f0032     move.l     $32(a7), d1
008f52: 200a         move.l     a2, d0
008f54: 6012         bra.b      $8f68
008f56: 2f2f0052     move.l     $52(a7), -(a7)
008f5a: 306f0054     movea.w    $54(a7), a0
008f5e: 2f08         move.l     a0, -(a7)
008f60: 222f0032     move.l     $32(a7), d1
008f64: 202f002e     move.l     $2e(a7), d0
008f68: 61000d22     bsr.w      $9c8c
008f6c: 508f         addq.l     #$8, a7
008f6e: 6002         bra.b      $8f72
008f70: 70ff         moveq      #$ff, d0
008f72: 4fef0026     lea.l      $26(a7), a7
008f76: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
008f7c: 4e5d         unlk       a5
008f7e: 4e75         rts        
008f80: 4e550000     link.w     a5, #$0
008f84: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
008f88: 4fefffc8     lea.l      -$38(a7), a7
008f8c: 2f6f00380008 move.l     $38(a7), $8(a7)
008f92: 4a2f0009     tst.b      $9(a7)
008f96: 660e         bne.b      $8fa6
008f98: 306f003e     movea.w    $3e(a7), a0
008f9c: 2208         move.l     a0, d1
008f9e: 202f0008     move.l     $8(a7), d0
008fa2: 600000c8     bra.w      $906c
008fa6: 4aae942c     tst.l      -$6bd4(a6)
008faa: 6608         bne.b      $8fb4
008fac: 61000a80     bsr.w      $9a2e
008fb0: 2d40942c     move.l     d0, -$6bd4(a6)
008fb4: 7000         moveq      #$0, d0
008fb6: 102f0008     move.b     $8(a7), d0
008fba: e588         lsl.l      #$2, d0
008fbc: 41ee9462     lea.l      -$6b9e(a6), a0
008fc0: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
008fc6: 66000080     bne.w      $9048
008fca: 7000         moveq      #$0, d0
008fcc: 102f0008     move.b     $8(a7), d0
008fd0: e588         lsl.l      #$2, d0
008fd2: 206e942c     movea.l    -$6bd4(a6), a0
008fd6: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
008fda: 41fa016e     lea.l      $914a(pc), a0
008fde: 2208         move.l     a0, d1
008fe0: 41ef001c     lea.l      $1c(a7), a0
008fe4: 2008         move.l     a0, d0
008fe6: 61000c6c     bsr.w      $9c54
008fea: 588f         addq.l     #$4, a7
008fec: 7203         moveq      #$3, d1
008fee: 41ef0018     lea.l      $18(a7), a0
008ff2: 2008         move.l     a0, d0
008ff4: 61000c9e     bsr.w      $9c94
008ff8: 7200         moveq      #$0, d1
008ffa: 122f0008     move.b     $8(a7), d1
008ffe: e589         lsl.l      #$2, d1
009000: 41ee9462     lea.l      -$6b9e(a6), a0
009004: 31801800     move.w     d0, (a0, d1.l)
009008: 6c06         bge.b      $9010
00900a: 70ff         moveq      #$ff, d0
00900c: 6000012e     bra.w      $913c
009010: 7000         moveq      #$0, d0
009012: 102f0008     move.b     $8(a7), d0
009016: e588         lsl.l      #$2, d0
009018: 41ee9462     lea.l      -$6b9e(a6), a0
00901c: 2400         move.l     d0, d2
00901e: 42a7         clr.l      -(a7)
009020: 7000         moveq      #$0, d0
009022: 102f000c     move.b     $c(a7), d0
009026: e588         lsl.l      #$2, d0
009028: 43ee9462     lea.l      -$6b9e(a6), a1
00902c: 32710800     movea.w    (a1, d0.l), a1
009030: 2209         move.l     a1, d1
009032: 203c0000ff0e move.l     #$ff0e, d0
009038: 61000a18     bsr.w      $9a52
00903c: 588f         addq.l     #$4, a7
00903e: 2240         movea.l    d0, a1
009040: 7000         moveq      #$0, d0
009042: 1011         move.b     (a1), d0
009044: 31802802     move.w     d0, $2(a0, d2.l)
009048: 7000         moveq      #$0, d0
00904a: 102f0008     move.b     $8(a7), d0
00904e: e588         lsl.l      #$2, d0
009050: 41ee9462     lea.l      -$6b9e(a6), a0
009054: 7200         moveq      #$0, d1
009056: 122f0009     move.b     $9(a7), d1
00905a: b2700802     cmp.w      $2(a0, d0.l), d1
00905e: 6614         bne.b      $9074
009060: 306f003e     movea.w    $3e(a7), a0
009064: 2208         move.l     a0, d1
009066: 7000         moveq      #$0, d0
009068: 302f000a     move.w     $a(a7), d0
00906c: 6100162e     bsr.w      $a69c
009070: 600000ca     bra.w      $913c
009074: 4aae9428     tst.l      -$6bd8(a6)
009078: 661a         bne.b      $9094
00907a: 610016de     bsr.w      $a75a
00907e: 2d409428     move.l     d0, -$6bd8(a6)
009082: 2d7c000100008e96 move.l     #$10000, -$716a(a6)
00908a: 2d6e94288e9a move.l     -$6bd8(a6), -$7166(a6)
009090: 42ae8e92     clr.l      -$716e(a6)
009094: 7001         moveq      #$1, d0
009096: 2d408eb2     move.l     d0, -$714e(a6)
00909a: 7008         moveq      #$8, d0
00909c: 2d408eb6     move.l     d0, -$714a(a6)
0090a0: 41d7         lea.l      (a7), a0
0090a2: 2d488eba     move.l     a0, -$7146(a6)
0090a6: 41ee8e8e     lea.l      -$7172(a6), a0
0090aa: 2d488ec2     move.l     a0, -$713e(a6)
0090ae: 7018         moveq      #$18, d0
0090b0: 2d408ebe     move.l     d0, -$7142(a6)
0090b4: 7000         moveq      #$0, d0
0090b6: 302f000a     move.w     $a(a7), d0
0090ba: 2d408e9e     move.l     d0, -$7162(a6)
0090be: 306f003e     movea.w    $3e(a7), a0
0090c2: 2d488ea2     move.l     a0, -$715e(a6)
0090c6: 1d6f00098e91 move.b     $9(a7), -$716f(a6)
0090cc: 422e8e92     clr.b      -$716e(a6)
0090d0: 486e8eb2     pea.l      -$714e(a6)
0090d4: 7000         moveq      #$0, d0
0090d6: 102f000c     move.b     $c(a7), d0
0090da: e588         lsl.l      #$2, d0
0090dc: 41ee9462     lea.l      -$6b9e(a6), a0
0090e0: 30700800     movea.w    (a0, d0.l), a0
0090e4: 2208         move.l     a0, d1
0090e6: 203c0000ff05 move.l     #$ff05, d0
0090ec: 610009c8     bsr.w      $9ab6
0090f0: 588f         addq.l     #$4, a7
0090f2: 2f400010     move.l     d0, $10(a7)
0090f6: 6c08         bge.b      $9100
0090f8: 70ff         moveq      #$ff, d0
0090fa: 2f40000c     move.l     d0, $c(a7)
0090fe: 6038         bra.b      $9138
009100: 2f2f0010     move.l     $10(a7), -(a7)
009104: 7000         moveq      #$0, d0
009106: 102f000c     move.b     $c(a7), d0
00910a: e588         lsl.l      #$2, d0
00910c: 41ee9462     lea.l      -$6b9e(a6), a0
009110: 30700800     movea.w    (a0, d0.l), a0
009114: 2208         move.l     a0, d1
009116: 203c0000ff06 move.l     #$ff06, d0
00911c: 61000998     bsr.w      $9ab6
009120: 588f         addq.l     #$4, a7
009122: 2f40000c     move.l     d0, $c(a7)
009126: 6dd0         blt.b      $90f8
009128: 2f6f0004000c move.l     $4(a7), $c(a7)
00912e: 4aaf0004     tst.l      $4(a7)
009132: 6c04         bge.b      $9138
009134: 2d57800c     move.l     (a7), -$7ff4(a6)
009138: 202f000c     move.l     $c(a7), d0
00913c: 4fef0038     lea.l      $38(a7), a7
009140: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
009146: 4e5d         unlk       a5
009148: 4e75         rts        
00914a: 2f25         move.l     -(a5), -(a7)
00914c: 7300         .dc.w      $7300
00914e: 4e550000     link.w     a5, #$0
009152: 48e7c080     movem.l    d0-d1/a0, -(a7)
009156: 7002         moveq      #$2, d0
009158: b0ae9430     cmp.l      -$6bd0(a6), d0
00915c: 6c0c         bge.b      $916a
00915e: 2217         move.l     (a7), d1
009160: 41fa052c     lea.l      $968e(pc), a0
009164: 2008         move.l     a0, d0
009166: 61000ae4     bsr.w      $9c4c
00916a: 0c9700000106 cmpi.l     #$106, (a7)
009170: 6608         bne.b      $917a
009172: 7001         moveq      #$1, d0
009174: 2d408ece     move.l     d0, -$7132(a6)
009178: 600e         bra.b      $9188
00917a: 4aae8ed2     tst.l      -$712e(a6)
00917e: 6708         beq.b      $9188
009180: 2017         move.l     (a7), d0
009182: 206e8ed2     movea.l    -$712e(a6), a0
009186: 4e90         jsr        (a0)
009188: 7000         moveq      #$0, d0
00918a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
009190: 4e5d         unlk       a5
009192: 4e75         rts        
009194: 4e550000     link.w     a5, #$0
009198: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
00919c: 4fefff58     lea.l      -$a8(a7), a7
0091a0: 6010         bra.b      $91b2
0091a2: 08ef000600de bset.b     #$6, $de(a7)
0091a8: 601c         bra.b      $91c6
0091aa: 08ef000700de bset.b     #$7, $de(a7)
0091b0: 6014         bra.b      $91c6
0091b2: 202f00e0     move.l     $e0(a7), d0
0091b6: 0c80a95acd81 cmpi.l     #$a95acd81, d0
0091bc: 67e4         beq.b      $91a2
0091be: 0c80a95acd82 cmpi.l     #$a95acd82, d0
0091c4: 67e4         beq.b      $91aa
0091c6: 41ef0094     lea.l      $94(a7), a0
0091ca: 2208         move.l     a0, d1
0091cc: 202f00ac     move.l     $ac(a7), d0
0091d0: 610005c4     bsr.w      $9796
0091d4: 2f400028     move.l     d0, $28(a7)
0091d8: 6700015c     beq.w      $9336
0091dc: 206f0028     movea.l    $28(a7), a0
0091e0: 0c10005f     cmpi.b     #$5f, (a0)
0091e4: 66000150     bne.w      $9336
0091e8: 2f6f002800ac move.l     $28(a7), $ac(a7)
0091ee: 2d6f00ac944c move.l     $ac(a7), -$6bb4(a6)
0091f4: 41ef0094     lea.l      $94(a7), a0
0091f8: 2d489440     move.l     a0, -$6bc0(a6)
0091fc: 41ef0094     lea.l      $94(a7), a0
009200: 2008         move.l     a0, d0
009202: 610005d8     bsr.w      $97dc
009206: 3f40002c     move.w     d0, $2c(a7)
00920a: 6c0c         bge.b      $9218
00920c: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
009214: 60000242     bra.w      $9458
009218: 422f0052     clr.b      $52(a7)
00921c: 41ef0046     lea.l      $46(a7), a0
009220: 2208         move.l     a0, d1
009222: 202f00ac     move.l     $ac(a7), d0
009226: 6100063a     bsr.w      $9862
00922a: 2f400028     move.l     d0, $28(a7)
00922e: 67000106     beq.w      $9336
009232: 1f6f00490051 move.b     $49(a7), $51(a7)
009238: 2f6f002800ac move.l     $28(a7), $ac(a7)
00923e: 302f002c     move.w     $2c(a7), d0
009242: 48c0         ext.l      d0
009244: e588         lsl.l      #$2, d0
009246: 41ee9462     lea.l      -$6b9e(a6), a0
00924a: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
009250: 660000b6     bne.w      $9308
009254: 486f0094     pea.l      $94(a7)
009258: 41fa0464     lea.l      $96be(pc), a0
00925c: 2208         move.l     a0, d1
00925e: 41ef0078     lea.l      $78(a7), a0
009262: 2008         move.l     a0, d0
009264: 610009ee     bsr.w      $9c54
009268: 588f         addq.l     #$4, a7
00926a: 7001         moveq      #$1, d0
00926c: b0ae9430     cmp.l      -$6bd0(a6), d0
009270: 6c10         bge.b      $9282
009272: 41ef0074     lea.l      $74(a7), a0
009276: 2208         move.l     a0, d1
009278: 41fa0447     lea.l      $96c1(pc), a0
00927c: 2008         move.l     a0, d0
00927e: 610009cc     bsr.w      $9c4c
009282: 7203         moveq      #$3, d1
009284: 41ef0074     lea.l      $74(a7), a0
009288: 2008         move.l     a0, d0
00928a: 61000a08     bsr.w      $9c94
00928e: 322f002c     move.w     $2c(a7), d1
009292: 48c1         ext.l      d1
009294: e589         lsl.l      #$2, d1
009296: 41ee9462     lea.l      -$6b9e(a6), a0
00929a: 31801800     move.w     d0, (a0, d1.l)
00929e: 6c30         bge.b      $92d0
0092a0: 7001         moveq      #$1, d0
0092a2: b0ae9430     cmp.l      -$6bd0(a6), d0
0092a6: 6c0001b0     bge.w      $9458
0092aa: 302f002c     move.w     $2c(a7), d0
0092ae: 48c0         ext.l      d0
0092b0: e588         lsl.l      #$2, d0
0092b2: 41ee9462     lea.l      -$6b9e(a6), a0
0092b6: 30700800     movea.w    (a0, d0.l), a0
0092ba: 2f08         move.l     a0, -(a7)
0092bc: 222f004a     move.l     $4a(a7), d1
0092c0: 41fa0418     lea.l      $96da(pc), a0
0092c4: 2008         move.l     a0, d0
0092c6: 61000984     bsr.w      $9c4c
0092ca: 588f         addq.l     #$4, a7
0092cc: 6000018a     bra.w      $9458
0092d0: 302f002c     move.w     $2c(a7), d0
0092d4: 48c0         ext.l      d0
0092d6: e588         lsl.l      #$2, d0
0092d8: 41ee9462     lea.l      -$6b9e(a6), a0
0092dc: 2400         move.l     d0, d2
0092de: 42a7         clr.l      -(a7)
0092e0: 302f0030     move.w     $30(a7), d0
0092e4: 48c0         ext.l      d0
0092e6: e588         lsl.l      #$2, d0
0092e8: 43ee9462     lea.l      -$6b9e(a6), a1
0092ec: 32710800     movea.w    (a1, d0.l), a1
0092f0: 2209         move.l     a1, d1
0092f2: 203c0000ff0e move.l     #$ff0e, d0
0092f8: 61000758     bsr.w      $9a52
0092fc: 588f         addq.l     #$4, a7
0092fe: 2240         movea.l    d0, a1
009300: 7000         moveq      #$0, d0
009302: 1011         move.b     (a1), d0
009304: 31802802     move.w     d0, $2(a0, d2.l)
009308: 302f002c     move.w     $2c(a7), d0
00930c: 48c0         ext.l      d0
00930e: e588         lsl.l      #$2, d0
009310: 41ee9462     lea.l      -$6b9e(a6), a0
009314: 30300802     move.w     $2(a0, d0.l), d0
009318: 48c0         ext.l      d0
00931a: b0af0046     cmp.l      $46(a7), d0
00931e: 6642         bne.b      $9362
009320: 7001         moveq      #$1, d0
009322: b0ae9430     cmp.l      -$6bd0(a6), d0
009326: 6c0e         bge.b      $9336
009328: 222f00ac     move.l     $ac(a7), d1
00932c: 41fa03bf     lea.l      $96ed(pc), a0
009330: 2008         move.l     a0, d0
009332: 61000918     bsr.w      $9c4c
009336: 306f00de     movea.w    $de(a7), a0
00933a: 2f08         move.l     a0, -(a7)
00933c: 306f00de     movea.w    $de(a7), a0
009340: 2f08         move.l     a0, -(a7)
009342: 2f2f00dc     move.l     $dc(a7), -(a7)
009346: 2f2f00dc     move.l     $dc(a7), -(a7)
00934a: 2f2f00dc     move.l     $dc(a7), -(a7)
00934e: 222f00c0     move.l     $c0(a7), d1
009352: 202f00bc     move.l     $bc(a7), d0
009356: 6100098c     bsr.w      $9ce4
00935a: 4fef0014     lea.l      $14(a7), a7
00935e: 6000030a     bra.w      $966a
009362: 4a6e9454     tst.w      -$6bac(a6)
009366: 6608         bne.b      $9370
009368: 610013f0     bsr.w      $a75a
00936c: 3d409454     move.w     d0, -$6bac(a6)
009370: 42ae8ed2     clr.l      -$712e(a6)
009374: 306e9454     movea.w    -$6bac(a6), a0
009378: 2008         move.l     a0, d0
00937a: 6100068c     bsr.w      $9a08
00937e: 2d408ed2     move.l     d0, -$712e(a6)
009382: 7001         moveq      #$1, d0
009384: b0ae9430     cmp.l      -$6bd0(a6), d0
009388: 6c0e         bge.b      $9398
00938a: 222e8ed2     move.l     -$712e(a6), d1
00938e: 41fa0384     lea.l      $9714(pc), a0
009392: 2008         move.l     a0, d0
009394: 610008b6     bsr.w      $9c4c
009398: 41fafdb4     lea.l      $914e(pc), a0
00939c: 2008         move.l     a0, d0
00939e: 610002d8     bsr.w      $9678
0093a2: 306f00de     movea.w    $de(a7), a0
0093a6: 2f08         move.l     a0, -(a7)
0093a8: 42a7         clr.l      -(a7)
0093aa: 42a7         clr.l      -(a7)
0093ac: 2f2f00dc     move.l     $dc(a7), -(a7)
0093b0: 486e9434     pea.l      -$6bcc(a6)
0093b4: 41fa0374     lea.l      $972a(pc), a0
0093b8: 2208         move.l     a0, d1
0093ba: 41fa1342     lea.l      $a6fe(pc), a0
0093be: 2008         move.l     a0, d0
0093c0: 61000922     bsr.w      $9ce4
0093c4: 4fef0014     lea.l      $14(a7), a7
0093c8: 2f40005e     move.l     d0, $5e(a7)
0093cc: 6f00008a     ble.w      $9458
0093d0: 2f7c000200000056 move.l     #$20000, $56(a7)
0093d8: 42af005a     clr.l      $5a(a7)
0093dc: 2f6f00d40062 move.l     $d4(a7), $62(a7)
0093e2: 3f6f00da0066 move.w     $da(a7), $66(a7)
0093e8: 3f6f00de0068 move.w     $de(a7), $68(a7)
0093ee: 3f6f002c006c move.w     $2c(a7), $6c(a7)
0093f4: 3f6e9454006a move.w     -$6bac(a6), $6a(a7)
0093fa: 7001         moveq      #$1, d0
0093fc: 2f40004a     move.l     d0, $4a(a7)
009400: 42af0042     clr.l      $42(a7)
009404: 6004         bra.b      $940a
009406: 52af004a     addq.l     #$1, $4a(a7)
00940a: 202f0042     move.l     $42(a7), d0
00940e: 52af0042     addq.l     #$1, $42(a7)
009412: e588         lsl.l      #$2, d0
009414: 206f00cc     movea.l    $cc(a7), a0
009418: 4ab00800     tst.l      (a0, d0.l)
00941c: 66e8         bne.b      $9406
00941e: 52af004a     addq.l     #$1, $4a(a7)
009422: 42af0042     clr.l      $42(a7)
009426: 6004         bra.b      $942c
009428: 52af004a     addq.l     #$1, $4a(a7)
00942c: 202f0042     move.l     $42(a7), d0
009430: 52af0042     addq.l     #$1, $42(a7)
009434: e588         lsl.l      #$2, d0
009436: 206f00d0     movea.l    $d0(a7), a0
00943a: 4ab00800     tst.l      (a0, d0.l)
00943e: 66e8         bne.b      $9428
009440: 52af004a     addq.l     #$1, $4a(a7)
009444: 202f004a     move.l     $4a(a7), d0
009448: e788         lsl.l      #$3, d0
00944a: 7214         moveq      #$14, d1
00944c: d081         add.l      d1, d0
00944e: 610008b8     bsr.w      $9d08
009452: 2440         movea.l    d0, a2
009454: 4a80         tst.l      d0
009456: 6606         bne.b      $945e
009458: 70ff         moveq      #$ff, d0
00945a: 6000020e     bra.w      $966a
00945e: 202f004a     move.l     $4a(a7), d0
009462: 5280         addq.l     #$1, d0
009464: 2480         move.l     d0, (a2)
009466: 257c000000080004 move.l     #$8, $4(a2)
00946e: 41ef0020     lea.l      $20(a7), a0
009472: 25480008     move.l     a0, $8(a2)
009476: 700c         moveq      #$c, d0
009478: d08a         add.l      a2, d0
00947a: 2640         movea.l    d0, a3
00947c: 41ef004e     lea.l      $4e(a7), a0
009480: 27480004     move.l     a0, $4(a3)
009484: 26bc00000020 move.l     #$20, (a3)
00948a: 508b         addq.l     #$8, a3
00948c: 276f00ac0004 move.l     $ac(a7), $4(a3)
009492: 202f00ac     move.l     $ac(a7), d0
009496: 6100099e     bsr.w      $9e36
00949a: 5280         addq.l     #$1, d0
00949c: 2680         move.l     d0, (a3)
00949e: 508b         addq.l     #$8, a3
0094a0: 42af0042     clr.l      $42(a7)
0094a4: 605a         bra.b      $9500
0094a6: 7001         moveq      #$1, d0
0094a8: b0ae9430     cmp.l      -$6bd0(a6), d0
0094ac: 6c26         bge.b      $94d4
0094ae: 222f0042     move.l     $42(a7), d1
0094b2: 41fa027d     lea.l      $9731(pc), a0
0094b6: 2008         move.l     a0, d0
0094b8: 61000792     bsr.w      $9c4c
0094bc: 202f0042     move.l     $42(a7), d0
0094c0: e588         lsl.l      #$2, d0
0094c2: 206f00cc     movea.l    $cc(a7), a0
0094c6: 22300800     move.l     (a0, d0.l), d1
0094ca: 41fa0285     lea.l      $9751(pc), a0
0094ce: 2008         move.l     a0, d0
0094d0: 6100077a     bsr.w      $9c4c
0094d4: 202f0042     move.l     $42(a7), d0
0094d8: e588         lsl.l      #$2, d0
0094da: 206f00cc     movea.l    $cc(a7), a0
0094de: 277008000004 move.l     (a0, d0.l), $4(a3)
0094e4: 202f0042     move.l     $42(a7), d0
0094e8: 52af0042     addq.l     #$1, $42(a7)
0094ec: e588         lsl.l      #$2, d0
0094ee: 206f00cc     movea.l    $cc(a7), a0
0094f2: 20300800     move.l     (a0, d0.l), d0
0094f6: 6100093e     bsr.w      $9e36
0094fa: 5280         addq.l     #$1, d0
0094fc: 2680         move.l     d0, (a3)
0094fe: 508b         addq.l     #$8, a3
009500: 202f0042     move.l     $42(a7), d0
009504: e588         lsl.l      #$2, d0
009506: 206f00cc     movea.l    $cc(a7), a0
00950a: 4ab00800     tst.l      (a0, d0.l)
00950e: 6696         bne.b      $94a6
009510: 41fa024e     lea.l      $9760(pc), a0
009514: 27480004     move.l     a0, $4(a3)
009518: 26bc00000001 move.l     #$1, (a3)
00951e: 508b         addq.l     #$8, a3
009520: 42af0042     clr.l      $42(a7)
009524: 604c         bra.b      $9572
009526: 7001         moveq      #$1, d0
009528: b0ae9430     cmp.l      -$6bd0(a6), d0
00952c: 6c18         bge.b      $9546
00952e: 202f0042     move.l     $42(a7), d0
009532: e588         lsl.l      #$2, d0
009534: 206f00d0     movea.l    $d0(a7), a0
009538: 22300800     move.l     (a0, d0.l), d1
00953c: 41fa0223     lea.l      $9761(pc), a0
009540: 2008         move.l     a0, d0
009542: 61000708     bsr.w      $9c4c
009546: 202f0042     move.l     $42(a7), d0
00954a: e588         lsl.l      #$2, d0
00954c: 206f00d0     movea.l    $d0(a7), a0
009550: 277008000004 move.l     (a0, d0.l), $4(a3)
009556: 202f0042     move.l     $42(a7), d0
00955a: 52af0042     addq.l     #$1, $42(a7)
00955e: e588         lsl.l      #$2, d0
009560: 206f00d0     movea.l    $d0(a7), a0
009564: 20300800     move.l     (a0, d0.l), d0
009568: 610008cc     bsr.w      $9e36
00956c: 5280         addq.l     #$1, d0
00956e: 2680         move.l     d0, (a3)
009570: 508b         addq.l     #$8, a3
009572: 202f0042     move.l     $42(a7), d0
009576: e588         lsl.l      #$2, d0
009578: 206f00d0     movea.l    $d0(a7), a0
00957c: 4ab00800     tst.l      (a0, d0.l)
009580: 66a4         bne.b      $9526
009582: 41fa01ec     lea.l      $9770(pc), a0
009586: 27480004     move.l     a0, $4(a3)
00958a: 26bc00000001 move.l     #$1, (a3)
009590: 508b         addq.l     #$8, a3
009592: 7001         moveq      #$1, d0
009594: 61000e06     bsr.w      $a39c
009598: 42ae8eca     clr.l      -$7136(a6)
00959c: 600a         bra.b      $95a8
00959e: 52ae8eca     addq.l     #$1, -$7136(a6)
0095a2: 7001         moveq      #$1, d0
0095a4: 61000df6     bsr.w      $a39c
0095a8: 4aae8ece     tst.l      -$7132(a6)
0095ac: 67f0         beq.b      $959e
0095ae: 7064         moveq      #$64, d0
0095b0: b0ae8eca     cmp.l      -$7136(a6), d0
0095b4: 6e0e         bgt.b      $95c4
0095b6: 222e8eca     move.l     -$7136(a6), d1
0095ba: 41fa01b5     lea.l      $9771(pc), a0
0095be: 2008         move.l     a0, d0
0095c0: 6100068a     bsr.w      $9c4c
0095c4: 4aae8ed2     tst.l      -$712e(a6)
0095c8: 6708         beq.b      $95d2
0095ca: 202e8ed2     move.l     -$712e(a6), d0
0095ce: 610000a8     bsr.w      $9678
0095d2: 4852         pea.l      (a2)
0095d4: 302f0030     move.w     $30(a7), d0
0095d8: 48c0         ext.l      d0
0095da: e588         lsl.l      #$2, d0
0095dc: 41ee9462     lea.l      -$6b9e(a6), a0
0095e0: 30700800     movea.w    (a0, d0.l), a0
0095e4: 2208         move.l     a0, d1
0095e6: 203c0000ff05 move.l     #$ff05, d0
0095ec: 610004c8     bsr.w      $9ab6
0095f0: 588f         addq.l     #$4, a7
0095f2: 2f40003a     move.l     d0, $3a(a7)
0095f6: 6c08         bge.b      $9600
0095f8: 70ff         moveq      #$ff, d0
0095fa: 2f40002e     move.l     d0, $2e(a7)
0095fe: 6060         bra.b      $9660
009600: 2f2f003a     move.l     $3a(a7), -(a7)
009604: 302f0030     move.w     $30(a7), d0
009608: 48c0         ext.l      d0
00960a: e588         lsl.l      #$2, d0
00960c: 41ee9462     lea.l      -$6b9e(a6), a0
009610: 30700800     movea.w    (a0, d0.l), a0
009614: 2208         move.l     a0, d1
009616: 203c0000ff06 move.l     #$ff06, d0
00961c: 61000498     bsr.w      $9ab6
009620: 588f         addq.l     #$4, a7
009622: 2f40002e     move.l     d0, $2e(a7)
009626: 6c10         bge.b      $9638
009628: 70ff         moveq      #$ff, d0
00962a: 2f40002e     move.l     d0, $2e(a7)
00962e: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
009636: 6028         bra.b      $9660
009638: 2f6f0024002e move.l     $24(a7), $2e(a7)
00963e: 4aaf002e     tst.l      $2e(a7)
009642: 6c16         bge.b      $965a
009644: 223c00008000 move.l     #$8000, d1
00964a: 202f005e     move.l     $5e(a7), d0
00964e: 6100104c     bsr.w      $a69c
009652: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
009658: 6006         bra.b      $9660
00965a: 1f6f002d002e move.b     $2d(a7), $2e(a7)
009660: 200a         move.l     a2, d0
009662: 610006b0     bsr.w      $9d14
009666: 202f002e     move.l     $2e(a7), d0
00966a: 4fef00a8     lea.l      $a8(a7), a7
00966e: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
009674: 4e5d         unlk       a5
009676: 4e75         rts        
009678: 4e550000     link.w     a5, #$0
00967c: 48e78000     movem.l    d0, -(a7)
009680: 2d579472     move.l     (a7), -$6b8e(a6)
009684: 2017         move.l     (a7), d0
009686: 6100110a     bsr.w      $a792
00968a: 4e5d         unlk       a5
00968c: 4e75         rts        
00968e: 5369676e     subq.w     #$1, $676e(a1)
009692: 616c         bsr.b      $9700
009694: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
00969e: 2063         movea.l    -(a3), a0
0096a0: 6f64         ble.b      $9706
0096a2: 653d         bcs.b      $96e1
0096a4: 2025         move.l     -(a5), d0
0096a6: 780d         moveq      #$d, d4
0096a8: 007365727665 ori.w      #$6572, $65(a3, d7.w)
0096ae: 7200         moveq      #$0, d1
0096b0: 3200         move.w     d0, d1
0096b2: 3000         move.w     d0, d0
0096b4: 2f633000     move.l     -(a3), $3000(a7)
0096b8: 3000         move.w     d0, d0
0096ba: 3000         move.w     d0, d0
0096bc: 3000         move.w     d0, d0
0096be: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
0096c4: 6e20         bgt.b      $96e6
0096c6: 6361         bls.b      $9729
0096c8: 726f         moveq      #$6f, d1
0096ca: 7370         .dc.w      $7370
0096cc: 6174         bsr.b      $9742
0096ce: 6820         bvc.b      $96f0
0096d0: 6e61         bgt.b      $9733
0096d2: 6d65         blt.b      $9739
0096d4: 6420         bcc.b      $96f6
0096d6: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
0096dc: 7468         moveq      #$68, d2
0096de: 6964         bvs.b      $9744
0096e0: 5b25         subq.b     #$5, -(a5)
0096e2: 645d         bcc.b      $9741
0096e4: 206d6772     movea.l    $6772(a5), a0
0096e8: 3d25         move.w     -(a5), -(a6)
0096ea: 640d         bcc.b      $96f9
0096ec: 00666f72     ori.w      #$6f72, -(a6)
0096f0: 6b69         bmi.b      $975b
0096f2: 6e67         bgt.b      $975b
0096f4: 2070726f     movea.l    $6f(a0, d7.w), a0
0096f8: 6365         bls.b      $975f
0096fa: 7373         .dc.w      $7373
0096fc: 206c6f63     movea.l    $6f63(a4), a0
009700: 616c         bsr.b      $976e
009702: 6c79         bge.b      $977d
009704: 2c20         move.l     -(a0), d6
009706: 6d6f         blt.b      $9777
009708: 646e         bcc.b      $9778
00970a: 616d         bsr.b      $9779
00970c: 6520         bcs.b      $972e
00970e: 3d20         move.w     -(a0), -(a6)
009710: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
009716: 6420         bcc.b      $9738
009718: 6963         bvs.b      $977d
00971a: 7074         moveq      #$74, d0
00971c: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
009726: 25780d007365 move.l     $d00.w, $7365(a2)
00972c: 7276         moveq      #$76, d1
00972e: 6572         bcs.b      $97a2
009730: 00656e74     ori.w      #$6e74, -(a5)
009734: 6572         bcs.b      $97a8
009736: 6564         bcs.b      $979c
009738: 2061         movea.l    -(a1), a0
00973a: 7267         moveq      #$67, d1
00973c: 6c69         bge.b      $97a7
00973e: 7374         .dc.w      $7374
009740: 206c6f6f     movea.l    $6f6f(a4), a0
009744: 702c         moveq      #$2c, d0
009746: 20696e64     movea.l    $6e64(a1), a0
00974a: 6578         bcs.b      $97c4
00974c: 3d25         move.w     -(a5), -(a6)
00974e: 640d         bcc.b      $975d
009750: 00415247     ori.w      #$5247, d1
009754: 4c49         .dc.w      $4c49
009756: 5354         subq.w     #$1, (a4)
009758: 5b695d3d     subq.w     #$5, $5d3d(a1)
00975c: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
009762: 4e564c49     link.w     a6, #$4c49
009766: 5354         subq.w     #$1, (a4)
009768: 5b695d3d     subq.w     #$5, $5d3d(a1)
00976c: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
009772: 796e         .dc.w      $796e
009774: 6368         bls.b      $97de
009776: 726f         moveq      #$6f, d1
009778: 6e69         bgt.b      $97e3
00977a: 7369         .dc.w      $7369
00977c: 6e67         bgt.b      $97e5
00977e: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
009788: 6f6b         ble.b      $97f5
00978a: 2025         move.l     -(a5), d0
00978c: 6420         bcc.b      $97ae
00978e: 7469         moveq      #$69, d2
009790: 636b         bls.b      $97fd
009792: 730d         .dc.w      $730d
009794: 00004e55     ori.b      #$55, d0
009798: 000048e7     ori.b      #$e7, d0
00979c: c8302440     and.b      $40(a0, d2.w), d4
0097a0: 2641         movea.l    d1, a3
0097a2: 558f         subq.l     #$2, a7
0097a4: 1012         move.b     (a2), d0
0097a6: 1680         move.b     d0, (a3)
0097a8: 0c00002f     cmpi.b     #$2f, d0
0097ac: 6704         beq.b      $97b2
0097ae: 7000         moveq      #$0, d0
0097b0: 601e         bra.b      $97d0
0097b2: 528a         addq.l     #$1, a2
0097b4: 528b         addq.l     #$1, a3
0097b6: 1012         move.b     (a2), d0
0097b8: 1680         move.b     d0, (a3)
0097ba: 1f400001     move.b     d0, $1(a7)
0097be: 0c00002f     cmpi.b     #$2f, d0
0097c2: 6706         beq.b      $97ca
0097c4: 4a2f0001     tst.b      $1(a7)
0097c8: 66e8         bne.b      $97b2
0097ca: 4213         clr.b      (a3)
0097cc: 528a         addq.l     #$1, a2
0097ce: 200a         move.l     a2, d0
0097d0: 548f         addq.l     #$2, a7
0097d2: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0097d8: 4e5d         unlk       a5
0097da: 4e75         rts        
0097dc: 4e550000     link.w     a5, #$0
0097e0: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0097e4: 2440         movea.l    d0, a2
0097e6: 4aae9456     tst.l      -$6baa(a6)
0097ea: 6608         bne.b      $97f4
0097ec: 61000240     bsr.w      $9a2e
0097f0: 2d409456     move.l     d0, -$6baa(a6)
0097f4: 7800         moveq      #$0, d4
0097f6: 601a         bra.b      $9812
0097f8: 2004         move.l     d4, d0
0097fa: e588         lsl.l      #$2, d0
0097fc: 206e9456     movea.l    -$6baa(a6), a0
009800: 2230081a     move.l     $1a(a0, d0.l), d1
009804: 200a         move.l     a2, d0
009806: 5280         addq.l     #$1, d0
009808: 610005b8     bsr.w      $9dc2
00980c: 4a80         tst.l      d0
00980e: 6710         beq.b      $9820
009810: 5284         addq.l     #$1, d4
009812: 206e9456     movea.l    -$6baa(a6), a0
009816: 30280010     move.w     $10(a0), d0
00981a: 48c0         ext.l      d0
00981c: b084         cmp.l      d4, d0
00981e: 6ed8         bgt.b      $97f8
009820: 206e9456     movea.l    -$6baa(a6), a0
009824: 30280010     move.w     $10(a0), d0
009828: 48c0         ext.l      d0
00982a: b084         cmp.l      d4, d0
00982c: 6e04         bgt.b      $9832
00982e: 70ff         moveq      #$ff, d0
009830: 6002         bra.b      $9834
009832: 2004         move.l     d4, d0
009834: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
00983a: 4e5d         unlk       a5
00983c: 4e75         rts        
00983e: 4e550000     link.w     a5, #$0
009842: 48e7c080     movem.l    d0-d1/a0, -(a7)
009846: 202f0004     move.l     $4(a7), d0
00984a: e588         lsl.l      #$2, d0
00984c: 2057         movea.l    (a7), a0
00984e: 2070082a     movea.l    $2a(a0, d0.l), a0
009852: 7000         moveq      #$0, d0
009854: 10280012     move.b     $12(a0), d0
009858: 4ced0100fffc movem.l    -$4(a5), a0
00985e: 4e5d         unlk       a5
009860: 4e75         rts        
009862: 4e550000     link.w     a5, #$0
009866: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00986a: 2440         movea.l    d0, a2
00986c: 4fefffda     lea.l      -$26(a7), a7
009870: 200a         move.l     a2, d0
009872: 61000110     bsr.w      $9984
009876: 2440         movea.l    d0, a2
009878: 0c12005f     cmpi.b     #$5f, (a2)
00987c: 660000f6     bne.w      $9974
009880: 102a0001     move.b     $1(a2), d0
009884: 1f400005     move.b     d0, $5(a7)
009888: 0c000041     cmpi.b     #$41, d0
00988c: 6d0000a4     blt.w      $9932
009890: 4aae945a     tst.l      -$6ba6(a6)
009894: 6626         bne.b      $98bc
009896: 7200         moveq      #$0, d1
009898: 41fa017e     lea.l      $9a18(pc), a0
00989c: 2008         move.l     a0, d0
00989e: 61000d9c     bsr.w      $a63c
0098a2: 2f400022     move.l     d0, $22(a7)
0098a6: 72ff         moveq      #$ff, d1
0098a8: b280         cmp.l      d0, d1
0098aa: 6606         bne.b      $98b2
0098ac: 70ff         moveq      #$ff, d0
0098ae: 600000c6     bra.w      $9976
0098b2: 7030         moveq      #$30, d0
0098b4: d0af0022     add.l      $22(a7), d0
0098b8: 2d40945a     move.l     d0, -$6ba6(a6)
0098bc: 41ef000a     lea.l      $a(a7), a0
0098c0: 2f480006     move.l     a0, $6(a7)
0098c4: 600c         bra.b      $98d2
0098c6: 206f0006     movea.l    $6(a7), a0
0098ca: 52af0006     addq.l     #$1, $6(a7)
0098ce: 10af0005     move.b     $5(a7), (a0)
0098d2: 528a         addq.l     #$1, a2
0098d4: 1012         move.b     (a2), d0
0098d6: 1f400005     move.b     d0, $5(a7)
0098da: 0c00005f     cmpi.b     #$5f, d0
0098de: 66e6         bne.b      $98c6
0098e0: 206f0006     movea.l    $6(a7), a0
0098e4: 4210         clr.b      (a0)
0098e6: 202e945a     move.l     -$6ba6(a6), d0
0098ea: 5480         addq.l     #$2, d0
0098ec: 2f40001e     move.l     d0, $1e(a7)
0098f0: 7800         moveq      #$0, d4
0098f2: 6030         bra.b      $9924
0098f4: 41ef000a     lea.l      $a(a7), a0
0098f8: 2208         move.l     a0, d1
0098fa: 202f001e     move.l     $1e(a7), d0
0098fe: 610004c2     bsr.w      $9dc2
009902: 4a80         tst.l      d0
009904: 6614         bne.b      $991a
009906: 206f001e     movea.l    $1e(a7), a0
00990a: 7000         moveq      #$0, d0
00990c: 10280013     move.b     $13(a0), d0
009910: 206f002a     movea.l    $2a(a7), a0
009914: 2080         move.l     d0, (a0)
009916: 528a         addq.l     #$1, a2
009918: 6056         bra.b      $9970
00991a: 06af00000014001e addi.l     #$14, $1e(a7)
009922: 5284         addq.l     #$1, d4
009924: 206e945a     movea.l    -$6ba6(a6), a0
009928: 3010         move.w     (a0), d0
00992a: 48c0         ext.l      d0
00992c: b084         cmp.l      d4, d0
00992e: 6ec4         bgt.b      $98f4
009930: 6042         bra.b      $9974
009932: 4297         clr.l      (a7)
009934: 6018         bra.b      $994e
009936: 2017         move.l     (a7), d0
009938: 720a         moveq      #$a, d1
00993a: 610006d6     bsr.w      $a012
00993e: 122f0005     move.b     $5(a7), d1
009942: 4881         ext.w      d1
009944: 48c1         ext.l      d1
009946: d081         add.l      d1, d0
009948: 7230         moveq      #$30, d1
00994a: 9081         sub.l      d1, d0
00994c: 2e80         move.l     d0, (a7)
00994e: 528a         addq.l     #$1, a2
009950: 1012         move.b     (a2), d0
009952: 1f400005     move.b     d0, $5(a7)
009956: 0c000030     cmpi.b     #$30, d0
00995a: 6d08         blt.b      $9964
00995c: 0c2f00390005 cmpi.b     #$39, $5(a7)
009962: 6fd2         ble.b      $9936
009964: 0c1a005f     cmpi.b     #$5f, (a2)+
009968: 660a         bne.b      $9974
00996a: 206f002a     movea.l    $2a(a7), a0
00996e: 2097         move.l     (a7), (a0)
009970: 200a         move.l     a2, d0
009972: 6002         bra.b      $9976
009974: 7000         moveq      #$0, d0
009976: 4fef0026     lea.l      $26(a7), a7
00997a: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
009980: 4e5d         unlk       a5
009982: 4e75         rts        
009984: 4e550000     link.w     a5, #$0
009988: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00998c: 2440         movea.l    d0, a2
00998e: 518f         subq.l     #$8, a7
009990: 0c12005f     cmpi.b     #$5f, (a2)
009994: 6764         beq.b      $99fa
009996: 0c120040     cmpi.b     #$40, (a2)
00999a: 675e         beq.b      $99fa
00999c: 0c120041     cmpi.b     #$41, (a2)
0099a0: 6d58         blt.b      $99fa
0099a2: 4aae945e     tst.l      -$6ba2(a6)
0099a6: 6620         bne.b      $99c8
0099a8: 7200         moveq      #$0, d1
0099aa: 41fa0076     lea.l      $9a22(pc), a0
0099ae: 2008         move.l     a0, d0
0099b0: 61000c8a     bsr.w      $a63c
0099b4: 2f400004     move.l     d0, $4(a7)
0099b8: 72ff         moveq      #$ff, d1
0099ba: b280         cmp.l      d0, d1
0099bc: 673c         beq.b      $99fa
0099be: 7030         moveq      #$30, d0
0099c0: d0af0004     add.l      $4(a7), d0
0099c4: 2d40945e     move.l     d0, -$6ba2(a6)
0099c8: 202e945e     move.l     -$6ba2(a6), d0
0099cc: 5480         addq.l     #$2, d0
0099ce: 2e80         move.l     d0, (a7)
0099d0: 7800         moveq      #$0, d4
0099d2: 601a         bra.b      $99ee
0099d4: 220a         move.l     a2, d1
0099d6: 2017         move.l     (a7), d0
0099d8: 610003e8     bsr.w      $9dc2
0099dc: 4a80         tst.l      d0
0099de: 6606         bne.b      $99e6
0099e0: 7014         moveq      #$14, d0
0099e2: d097         add.l      (a7), d0
0099e4: 6016         bra.b      $99fc
0099e6: 069700000032 addi.l     #$32, (a7)
0099ec: 5284         addq.l     #$1, d4
0099ee: 206e945e     movea.l    -$6ba2(a6), a0
0099f2: 3010         move.w     (a0), d0
0099f4: 48c0         ext.l      d0
0099f6: b084         cmp.l      d4, d0
0099f8: 6eda         bgt.b      $99d4
0099fa: 200a         move.l     a2, d0
0099fc: 508f         addq.l     #$8, a7
0099fe: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
009a04: 4e5d         unlk       a5
009a06: 4e75         rts        
009a08: 4e550000     link.w     a5, #$0
009a0c: 48e78000     movem.l    d0, -(a7)
009a10: 202e9472     move.l     -$6b8e(a6), d0
009a14: 4e5d         unlk       a5
009a16: 4e75         rts        
009a18: 6361         bls.b      $9a7b
009a1a: 725f         moveq      #$5f, d1
009a1c: 6e65         bgt.b      $9a83
009a1e: 7464         moveq      #$64, d2
009a20: 62006361     bhi.w      $fd83
009a24: 725f         moveq      #$5f, d1
009a26: 6465         bcc.b      $9a8d
009a28: 7669         moveq      #$69, d3
009a2a: 6365         bls.b      $9a91
009a2c: 00002f08     ori.b      #$8, d0
009a30: 207900000000 movea.l    $0.l, a0
009a36: 41e80814     lea.l      $814(a0), a0
009a3a: 2010         move.l     (a0), d0
009a3c: 205f         movea.l    (a7)+, a0
009a3e: 4e75         rts        
009a40: 2f08         move.l     a0, -(a7)
009a42: 207900000000 movea.l    $0.l, a0
009a48: 41e80814     lea.l      $814(a0), a0
009a4c: 2008         move.l     a0, d0
009a4e: 205f         movea.l    (a7)+, a0
009a50: 4e75         rts        
009a52: 48e76080     movem.l    d1-d2/a0, -(a7)
009a56: c141         exg.l      d0, d1
009a58: 0c8100000002 cmpi.l     #$2, d1
009a5e: 6716         beq.b      $9a76
009a60: 0c8100000005 cmpi.l     #$5, d1
009a66: 670e         beq.b      $9a76
009a68: 206f0010     movea.l    $10(a7), a0
009a6c: 2408         move.l     a0, d2
009a6e: 4e40         trap       #$0
009a70: 008d         .dc.w      $008d
009a72: 60000056     bra.w      $9aca
009a76: 206f0010     movea.l    $10(a7), a0
009a7a: 2408         move.l     a0, d2
009a7c: 4e40         trap       #$0
009a7e: 008d         .dc.w      $008d
009a80: 2202         move.l     d2, d1
009a82: 60000046     bra.w      $9aca
009a86: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
009a8a: c141         exg.l      d0, d1
009a8c: 206f0018     movea.l    $18(a7), a0
009a90: 242f001c     move.l     $1c(a7), d2
009a94: 262f0020     move.l     $20(a7), d3
009a98: 4e40         trap       #$0
009a9a: 008d         .dc.w      $008d
009a9c: 60000068     bra.w      $9b06
009aa0: 48e76080     movem.l    d1-d2/a0, -(a7)
009aa4: c141         exg.l      d0, d1
009aa6: 206f0010     movea.l    $10(a7), a0
009aaa: 242f0014     move.l     $14(a7), d2
009aae: 4e40         trap       #$0
009ab0: 008e         .dc.w      $008e
009ab2: 60000016     bra.w      $9aca
009ab6: 48e76080     movem.l    d1-d2/a0, -(a7)
009aba: c141         exg.l      d0, d1
009abc: 206f0010     movea.l    $10(a7), a0
009ac0: 2408         move.l     a0, d2
009ac2: 4e40         trap       #$0
009ac4: 008e         .dc.w      $008e
009ac6: 60000002     bra.w      $9aca
009aca: 6408         bcc.b      $9ad4
009acc: 2d41800c     move.l     d1, -$7ff4(a6)
009ad0: 70ff         moveq      #$ff, d0
009ad2: 6002         bra.b      $9ad6
009ad4: 2001         move.l     d1, d0
009ad6: 4cdf0106     movem.l    (a7)+, d1-d2/a0
009ada: 4e75         rts        
009adc: 6406         bcc.b      $9ae4
009ade: 2d41800c     move.l     d1, -$7ff4(a6)
009ae2: 70ff         moveq      #$ff, d0
009ae4: 4cdf043e     movem.l    (a7)+, d1-d5/a2
009ae8: 4e75         rts        
009aea: 6406         bcc.b      $9af2
009aec: 2d41800c     move.l     d1, -$7ff4(a6)
009af0: 70ff         moveq      #$ff, d0
009af2: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
009af6: 4e75         rts        
009af8: 6406         bcc.b      $9b00
009afa: 2d41800c     move.l     d1, -$7ff4(a6)
009afe: 70ff         moveq      #$ff, d0
009b00: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
009b04: 4e75         rts        
009b06: 6408         bcc.b      $9b10
009b08: 2d41800c     move.l     d1, -$7ff4(a6)
009b0c: 70ff         moveq      #$ff, d0
009b0e: 6002         bra.b      $9b12
009b10: 2001         move.l     d1, d0
009b12: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
009b16: 4e75         rts        
009b18: 48e74000     movem.l    d1, -(a7)
009b1c: c141         exg.l      d0, d1
009b1e: 4e40         trap       #$0
009b20: 005c6406     ori.w      #$6406, (a4)+
009b24: 2d41800c     move.l     d1, -$7ff4(a6)
009b28: 70ff         moveq      #$ff, d0
009b2a: 4cdf0002     movem.l    (a7)+, d1
009b2e: 4e75         rts        
009b30: 48e740e0     movem.l    d1/a0-a2, -(a7)
009b34: e340         asl.w      #$1, d0
009b36: 207900000000 movea.l    $0.l, a0
009b3c: 2268004c     movea.l    $4c(a0), a1
009b40: 45e90168     lea.l      $168(a1), a2
009b44: 30320000     move.w     (a2, d0.w), d0
009b48: 660a         bne.b      $9b54
009b4a: 4cdf0702     movem.l    (a7)+, d1/a0-a2
009b4e: 303cffff     move.w     #$ffff, d0
009b52: 4e75         rts        
009b54: 22680048     movea.l    $48(a0), a1
009b58: b051         cmp.w      (a1), d0
009b5a: 62f2         bhi.b      $9b4e
009b5c: e540         asl.w      #$2, d0
009b5e: d2c0         adda.w     d0, a1
009b60: e448         lsr.w      #$2, d0
009b62: 4a91         tst.l      (a1)
009b64: 67e8         beq.b      $9b4e
009b66: 2251         movea.l    (a1), a1
009b68: b051         cmp.w      (a1), d0
009b6a: 66e2         bne.b      $9b4e
009b6c: 22690004     movea.l    $4(a1), a1
009b70: 20290008     move.l     $8(a1), d0
009b74: 4cdf0702     movem.l    (a7)+, d1/a0-a2
009b78: 4e75         rts        
009b7a: 4e550000     link.w     a5, #$0
009b7e: 48e78038     movem.l    d0/a2-a4, -(a7)
009b82: 7000         moveq      #$0, d0
009b84: 2840         movea.l    d0, a4
009b86: 2640         movea.l    d0, a3
009b88: 2440         movea.l    d0, a2
009b8a: 700d         moveq      #$d, d0
009b8c: 7200         moveq      #$0, d1
009b8e: 41fa0064     lea.l      $9bf4(pc), a0
009b92: 47ee800c     lea.l      -$7ff4(a6), a3
009b96: 7609         moveq      #$9, d3
009b98: 2683         move.l     d3, (a3)
009b9a: 262e925e     move.l     -$6da2(a6), d3
009b9e: 242e925a     move.l     -$6da6(a6), d2
009ba2: 286e9476     movea.l    -$6b8a(a6), a4
009ba6: 4e40         trap       #$0
009ba8: 0021653e     ori.b      #$3e, -(a1)
009bac: 4a93         tst.l      (a3)
009bae: 6718         beq.b      $9bc8
009bb0: 41fa0046     lea.l      $9bf8(pc), a0
009bb4: 7264         moveq      #$64, d1
009bb6: 7002         moveq      #$2, d0
009bb8: 4e40         trap       #$0
009bba: 008c         .dc.w      $008c
009bbc: 41fa0036     lea.l      $9bf4(pc), a0
009bc0: 72dd         moveq      #$dd, d1
009bc2: 003c0001     ori.b      #$1, ccr
009bc6: 6022         bra.b      $9bea
009bc8: 3d7c00418ee2 move.w     #$41, -$711e(a6)
009bce: 426e8ee4     clr.w      -$711c(a6)
009bd2: 3d7c00028efe move.w     #$2, -$7102(a6)
009bd8: 3d7c00018f00 move.w     #$1, -$7100(a6)
009bde: 3d7c00028f1a move.w     #$2, -$70e6(a6)
009be4: 3d7c00028f1c move.w     #$2, -$70e4(a6)
009bea: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
009bf0: 4e5d         unlk       a5
009bf2: 4e75         rts        
009bf4: 6369         bls.b      $9c5f
009bf6: 6f002a2a     ble.w      $c622
009bfa: 2a2a2063     move.l     $2063(a2), d5
009bfe: 696f         bvs.b      $9c6f
009c00: 20747261     movea.l    $61(a4, d7.w), a0
009c04: 7068         moveq      #$68, d0
009c06: 616e         bsr.b      $9c76
009c08: 646c         bcc.b      $9c76
009c0a: 6572         bcs.b      $9c7e
009c0c: 206d6973     movea.l    $6973(a5), a0
009c10: 6d61         blt.b      $9c73
009c12: 7463         moveq      #$63, d2
009c14: 6820         bvc.b      $9c36
009c16: 2a2a2a2a     move.l     $2a2a(a2), d5
009c1a: 0d00         btst.l     d6, d0
009c1c: 4e4d         trap       #$d
009c1e: 00004e4d     ori.b      #$4d, d0
009c22: 00014e4d     ori.b      #$4d, d1
009c26: 00024e4d     ori.b      #$4d, d2
009c2a: 00034e4d     ori.b      #$4d, d3
009c2e: 00044e4d     ori.b      #$4d, d4
009c32: 00054e4d     ori.b      #$4d, d5
009c36: 00064e4d     ori.b      #$4d, d6
009c3a: 00074e4d     ori.b      #$4d, d7
009c3e: 0008         .dc.w      $0008
009c40: 4e4d         trap       #$d
009c42: 0009         .dc.w      $0009
009c44: 4e4d         trap       #$d
009c46: 000a         .dc.w      $000a
009c48: 4e4d         trap       #$d
009c4a: 000b         .dc.w      $000b
009c4c: 4e4d         trap       #$d
009c4e: 000c         .dc.w      $000c
009c50: 4e4d         trap       #$d
009c52: 000d         .dc.w      $000d
009c54: 4e4d         trap       #$d
009c56: 000e         .dc.w      $000e
009c58: 4e4d         trap       #$d
009c5a: 000f         .dc.w      $000f
009c5c: 4e4d         trap       #$d
009c5e: 00104e4d     ori.b      #$4d, (a0)
009c62: 00114e4d     ori.b      #$4d, (a1)
009c66: 00124e4d     ori.b      #$4d, (a2)
009c6a: 00134e4d     ori.b      #$4d, (a3)
009c6e: 00144e4d     ori.b      #$4d, (a4)
009c72: 00154e4d     ori.b      #$4d, (a5)
009c76: 00164e4d     ori.b      #$4d, (a6)
009c7a: 00174e4d     ori.b      #$4d, (a7)
009c7e: 00184e4d     ori.b      #$4d, (a0)+
009c82: 00194e4d     ori.b      #$4d, (a1)+
009c86: 001a4e4d     ori.b      #$4d, (a2)+
009c8a: 001b4e4d     ori.b      #$4d, (a3)+
009c8e: 001c4e4d     ori.b      #$4d, (a4)+
009c92: 001d4e4d     ori.b      #$4d, (a5)+
009c96: 001e4e4d     ori.b      #$4d, (a6)+
009c9a: 001f4e4d     ori.b      #$4d, (a7)+
009c9e: 00204e4d     ori.b      #$4d, -(a0)
009ca2: 00214e4d     ori.b      #$4d, -(a1)
009ca6: 00224e4d     ori.b      #$4d, -(a2)
009caa: 00234e4d     ori.b      #$4d, -(a3)
009cae: 00244e4d     ori.b      #$4d, -(a4)
009cb2: 00254e4d     ori.b      #$4d, -(a5)
009cb6: 00264e4d     ori.b      #$4d, -(a6)
009cba: 00274e4d     ori.b      #$4d, -(a7)
009cbe: 00284e4d0029 ori.b      #$4d, $29(a0)
009cc4: 4e4d         trap       #$d
009cc6: 002a4e4d002b ori.b      #$4d, $2b(a2)
009ccc: 4e4d         trap       #$d
009cce: 002c4e4d002d ori.b      #$4d, $2d(a4)
009cd4: 4e4d         trap       #$d
009cd6: 002e4e4d002f ori.b      #$4d, $2f(a6)
009cdc: 4e4d         trap       #$d
009cde: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
009ce4: 4e4d         trap       #$d
009ce6: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
009cec: 4e4d         trap       #$d
009cee: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
009cf4: 4e4d         trap       #$d
009cf6: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
009cfc: 4e4d         trap       #$d
009cfe: 00384e4d0039 ori.b      #$4d, $39.w
009d04: 4e4d         trap       #$d
009d06: 003a         .dc.w      $003a
009d08: 4e4d         trap       #$d
009d0a: 003b         .dc.w      $003b
009d0c: 4e4d         trap       #$d
009d0e: 003c         .dc.w      $003c
009d10: 4e4d         trap       #$d
009d12: 003d         .dc.w      $003d
009d14: 4e4d         trap       #$d
009d16: 003e         .dc.w      $003e
009d18: 4e4d         trap       #$d
009d1a: 003f         .dc.w      $003f
009d1c: 4e4d         trap       #$d
009d1e: 00414e4d     ori.w      #$4e4d, d1
009d22: 00424e4d     ori.w      #$4e4d, d2
009d26: 00434e4d     ori.w      #$4e4d, d3
009d2a: 00444e4d     ori.w      #$4e4d, d4
009d2e: 00454e4d     ori.w      #$4e4d, d5
009d32: 00404e55     ori.w      #$4e55, d0
009d36: 000048e7     ori.b      #$e7, d0
009d3a: cc302440     and.b      $40(a0, d2.w), d6
009d3e: 61ff00000a1a bsr.l      $a75a
009d44: 2a00         move.l     d0, d5
009d46: 264a         movea.l    a2, a3
009d48: 4a1a         tst.b      (a2)+
009d4a: 66fffffffffc bne.l      $9d48
009d50: 538a         subq.l     #$1, a2
009d52: 60ff0000001c bra.l      $9d70
009d58: 2005         move.l     d5, d0
009d5a: 4c7c08010000000a divs.l     #$a, d0
009d62: 06010030     addi.b     #$30, d1
009d66: 1481         move.b     d1, (a2)
009d68: 4c7c58050000000a divs.l     #$a, d5
009d70: 0c220058     cmpi.b     #$58, -(a2)
009d74: 67ffffffffe2 beq.l      $9d58
009d7a: 528a         addq.l     #$1, a2
009d7c: 7861         moveq      #$61, d4
009d7e: 60ff0000001a bra.l      $9d9a
009d84: 707a         moveq      #$7a, d0
009d86: b084         cmp.l      d4, d0
009d88: 66ff0000000c bne.l      $9d96
009d8e: 7000         moveq      #$0, d0
009d90: 60ff00000026 bra.l      $9db8
009d96: 1484         move.b     d4, (a2)
009d98: 5284         addq.l     #$1, d4
009d9a: 7200         moveq      #$0, d1
009d9c: 200b         move.l     a3, d0
009d9e: 61fffffffee8 bsr.l      $9c88
009da4: 72ff         moveq      #$ff, d1
009da6: b280         cmp.l      d0, d1
009da8: 66ffffffffda bne.l      $9d84
009dae: 200b         move.l     a3, d0
009db0: 60ff00000006 bra.l      $9db8
009db6: 4e71         nop        
009db8: 4ced0c32ffec movem.l    -$14(a5), d1/d4-d5/a2-a3
009dbe: 4e5d         unlk       a5
009dc0: 4e75         rts        
009dc2: 2f08         move.l     a0, -(a7)
009dc4: 2040         movea.l    d0, a0
009dc6: b300         eor.b      d1, d0
009dc8: 08000000     btst.b     #$0, d0
009dcc: 6652         bne.b      $9e20
009dce: 08010000     btst.b     #$0, d1
009dd2: c389         exg.l      d1, a1
009dd4: 6718         beq.b      $9dee
009dd6: b109         cmpm.b     (a1)+, (a0)+
009dd8: 6530         bcs.b      $9e0a
009dda: 6220         bhi.b      $9dfc
009ddc: 4a28ffff     tst.b      -$1(a0)
009de0: 660c         bne.b      $9dee
009de2: 6034         bra.b      $9e18
009de4: 4a00         tst.b      d0
009de6: 6730         beq.b      $9e18
009de8: 0c4000ff     cmpi.w     #$ff, d0
009dec: 632a         bls.b      $9e18
009dee: 3018         move.w     (a0)+, d0
009df0: b059         cmp.w      (a1)+, d0
009df2: 67f0         beq.b      $9de4
009df4: 650e         bcs.b      $9e04
009df6: 0c4000ff     cmpi.w     #$ff, d0
009dfa: 6316         bls.b      $9e12
009dfc: 7001         moveq      #$1, d0
009dfe: 205f         movea.l    (a7)+, a0
009e00: c389         exg.l      d1, a1
009e02: 4e75         rts        
009e04: 0c4000ff     cmpi.w     #$ff, d0
009e08: 6308         bls.b      $9e12
009e0a: 70ff         moveq      #$ff, d0
009e0c: 205f         movea.l    (a7)+, a0
009e0e: c389         exg.l      d1, a1
009e10: 4e75         rts        
009e12: 4a29fffe     tst.b      -$2(a1)
009e16: 66f2         bne.b      $9e0a
009e18: 7000         moveq      #$0, d0
009e1a: 205f         movea.l    (a7)+, a0
009e1c: c389         exg.l      d1, a1
009e1e: 4e75         rts        
009e20: c389         exg.l      d1, a1
009e22: 7000         moveq      #$0, d0
009e24: 1018         move.b     (a0)+, d0
009e26: b019         cmp.b      (a1)+, d0
009e28: 56c8fffa     dbne       d0, $9e24
009e2c: 65dc         bcs.b      $9e0a
009e2e: 5240         addq.w     #$1, d0
009e30: 205f         movea.l    (a7)+, a0
009e32: c389         exg.l      d1, a1
009e34: 4e75         rts        
009e36: 2f08         move.l     a0, -(a7)
009e38: 2040         movea.l    d0, a0
009e3a: 4a18         tst.b      (a0)+
009e3c: 670c         beq.b      $9e4a
009e3e: 4a18         tst.b      (a0)+
009e40: 6708         beq.b      $9e4a
009e42: 4a18         tst.b      (a0)+
009e44: 6704         beq.b      $9e4a
009e46: 4a18         tst.b      (a0)+
009e48: 66f0         bne.b      $9e3a
009e4a: 91c0         suba.l     d0, a0
009e4c: 2008         move.l     a0, d0
009e4e: 5380         subq.l     #$1, d0
009e50: 205f         movea.l    (a7)+, a0
009e52: 4e75         rts        
009e54: 2f08         move.l     a0, -(a7)
009e56: 2040         movea.l    d0, a0
009e58: c389         exg.l      d1, a1
009e5a: 10d9         move.b     (a1)+, (a0)+
009e5c: 670c         beq.b      $9e6a
009e5e: 10d9         move.b     (a1)+, (a0)+
009e60: 6708         beq.b      $9e6a
009e62: 10d9         move.b     (a1)+, (a0)+
009e64: 6704         beq.b      $9e6a
009e66: 10d9         move.b     (a1)+, (a0)+
009e68: 66f0         bne.b      $9e5a
009e6a: 205f         movea.l    (a7)+, a0
009e6c: c389         exg.l      d1, a1
009e6e: 4e75         rts        
009e70: 2f08         move.l     a0, -(a7)
009e72: 2040         movea.l    d0, a0
009e74: c389         exg.l      d1, a1
009e76: 4a18         tst.b      (a0)+
009e78: 670c         beq.b      $9e86
009e7a: 4a18         tst.b      (a0)+
009e7c: 6708         beq.b      $9e86
009e7e: 4a18         tst.b      (a0)+
009e80: 6704         beq.b      $9e86
009e82: 4a18         tst.b      (a0)+
009e84: 66f0         bne.b      $9e76
009e86: 1159ffff     move.b     (a1)+, -$1(a0)
009e8a: 66ce         bne.b      $9e5a
009e8c: 60dc         bra.b      $9e6a
009e8e: 2f08         move.l     a0, -(a7)
009e90: 2040         movea.l    d0, a0
009e92: c389         exg.l      d1, a1
009e94: 10d9         move.b     (a1)+, (a0)+
009e96: 6afc         bpl.b      $9e94
009e98: 4210         clr.b      (a0)
009e9a: 0220007f     andi.b     #$7f, -(a0)
009e9e: 205f         movea.l    (a7)+, a0
009ea0: c389         exg.l      d1, a1
009ea2: 4e75         rts        
009ea4: 4e550000     link.w     a5, #$0
009ea8: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
009eac: 2040         movea.l    d0, a0
009eae: 2441         movea.l    d1, a2
009eb0: 242d0008     move.l     $8(a5), d2
009eb4: 6702         beq.b      $9eb8
009eb6: 610a         bsr.b      $9ec2
009eb8: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
009ebe: 4e5d         unlk       a5
009ec0: 4e75         rts        
009ec2: 4a82         tst.l      d2
009ec4: 674a         beq.b      $9f10
009ec6: b1ca         cmpa.l     a2, a0
009ec8: 6248         bhi.b      $9f12
009eca: 6744         beq.b      $9f10
009ecc: 300a         move.w     a2, d0
009ece: 08000000     btst.b     #$0, d0
009ed2: 6704         beq.b      $9ed8
009ed4: 10da         move.b     (a2)+, (a0)+
009ed6: 5382         subq.l     #$1, d2
009ed8: 3008         move.w     a0, d0
009eda: 08000000     btst.b     #$0, d0
009ede: 6624         bne.b      $9f04
009ee0: e28a         lsr.l      #$1, d2
009ee2: 6406         bcc.b      $9eea
009ee4: 6104         bsr.b      $9eea
009ee6: 10da         move.b     (a2)+, (a0)+
009ee8: 4e75         rts        
009eea: e28a         lsr.l      #$1, d2
009eec: 6406         bcc.b      $9ef4
009eee: 30da         move.w     (a2)+, (a0)+
009ef0: 6002         bra.b      $9ef4
009ef2: 20da         move.l     (a2)+, (a0)+
009ef4: 51cafffc     dbra       d2, $9ef2
009ef8: 5242         addq.w     #$1, d2
009efa: 5382         subq.l     #$1, d2
009efc: 64f4         bcc.b      $9ef2
009efe: 7400         moveq      #$0, d2
009f00: 4e75         rts        
009f02: 10da         move.b     (a2)+, (a0)+
009f04: 51cafffc     dbra       d2, $9f02
009f08: 5242         addq.w     #$1, d2
009f0a: 5382         subq.l     #$1, d2
009f0c: 64f4         bcc.b      $9f02
009f0e: 7400         moveq      #$0, d2
009f10: 4e75         rts        
009f12: d5c2         adda.l     d2, a2
009f14: d1c2         adda.l     d2, a0
009f16: 300a         move.w     a2, d0
009f18: 08000000     btst.b     #$0, d0
009f1c: 6704         beq.b      $9f22
009f1e: 1122         move.b     -(a2), -(a0)
009f20: 5382         subq.l     #$1, d2
009f22: 3008         move.w     a0, d0
009f24: 08000000     btst.b     #$0, d0
009f28: 6624         bne.b      $9f4e
009f2a: e28a         lsr.l      #$1, d2
009f2c: 6406         bcc.b      $9f34
009f2e: 6104         bsr.b      $9f34
009f30: 1122         move.b     -(a2), -(a0)
009f32: 4e75         rts        
009f34: e28a         lsr.l      #$1, d2
009f36: 6406         bcc.b      $9f3e
009f38: 3122         move.w     -(a2), -(a0)
009f3a: 6002         bra.b      $9f3e
009f3c: 2122         move.l     -(a2), -(a0)
009f3e: 51cafffc     dbra       d2, $9f3c
009f42: 5242         addq.w     #$1, d2
009f44: 5382         subq.l     #$1, d2
009f46: 64f4         bcc.b      $9f3c
009f48: 7400         moveq      #$0, d2
009f4a: 4e75         rts        
009f4c: 1122         move.b     -(a2), -(a0)
009f4e: 51cafffc     dbra       d2, $9f4c
009f52: 5242         addq.w     #$1, d2
009f54: 5382         subq.l     #$1, d2
009f56: 64f4         bcc.b      $9f4c
009f58: 7400         moveq      #$0, d2
009f5a: 4e75         rts        
009f5c: 4e550000     link.w     a5, #$0
009f60: 48e7a080     movem.l    d0/d2/a0, -(a7)
009f64: 2040         movea.l    d0, a0
009f66: 242d0008     move.l     $8(a5), d2
009f6a: 0c820000000c cmpi.l     #$c, d2
009f70: 6410         bcc.b      $9f82
009f72: 5342         subq.w     #$1, d2
009f74: 65000092     bcs.w      $a008
009f78: 10c1         move.b     d1, (a0)+
009f7a: 51cafffc     dbra       d2, $9f78
009f7e: 60000088     bra.w      $a008
009f82: 2f01         move.l     d1, -(a7)
009f84: e141         asl.w      #$8, d1
009f86: 122f0003     move.b     $3(a7), d1
009f8a: 588f         addq.l     #$4, a7
009f8c: 08000000     btst.b     #$0, d0
009f90: 6706         beq.b      $9f98
009f92: 10c1         move.b     d1, (a0)+
009f94: 5382         subq.l     #$1, d2
009f96: 2008         move.l     a0, d0
009f98: 08000001     btst.b     #$1, d0
009f9c: 6704         beq.b      $9fa2
009f9e: 30c1         move.w     d1, (a0)+
009fa0: 5582         subq.l     #$2, d2
009fa2: 3001         move.w     d1, d0
009fa4: 4841         swap       d1
009fa6: 3200         move.w     d0, d1
009fa8: 7060         moveq      #$60, d0
009faa: b480         cmp.l      d0, d2
009fac: 653e         bcs.b      $9fec
009fae: 2002         move.l     d2, d0
009fb0: c47c001f     and.w      #$1f, d2
009fb4: b540         eor.w      d2, d0
009fb6: 41f00800     lea.l      (a0, d0.l), a0
009fba: 48e71fe0     movem.l    d3-d7/a0-a2, -(a7)
009fbe: 2601         move.l     d1, d3
009fc0: 2801         move.l     d1, d4
009fc2: 2a01         move.l     d1, d5
009fc4: 2c01         move.l     d1, d6
009fc6: 2e01         move.l     d1, d7
009fc8: 2241         movea.l    d1, a1
009fca: 2441         movea.l    d1, a2
009fcc: ea88         lsr.l      #$5, d0
009fce: 5380         subq.l     #$1, d0
009fd0: 48e05f60     movem.l    d1/d3-d7/a1-a2, -(a0)
009fd4: 51c8fffa     dbra       d0, $9fd0
009fd8: 5240         addq.w     #$1, d0
009fda: 5380         subq.l     #$1, d0
009fdc: 64f2         bcc.b      $9fd0
009fde: 4cdf07f8     movem.l    (a7)+, d3-d7/a0-a2
009fe2: 3002         move.w     d2, d0
009fe4: 6722         beq.b      $a008
009fe6: e448         lsr.w      #$2, d0
009fe8: 6606         bne.b      $9ff0
009fea: 600c         bra.b      $9ff8
009fec: 3002         move.w     d2, d0
009fee: e448         lsr.w      #$2, d0
009ff0: 5340         subq.w     #$1, d0
009ff2: 20c1         move.l     d1, (a0)+
009ff4: 51c8fffc     dbra       d0, $9ff2
009ff8: 08020001     btst.b     #$1, d2
009ffc: 6702         beq.b      $a000
009ffe: 30c1         move.w     d1, (a0)+
00a000: 08020000     btst.b     #$0, d2
00a004: 6702         beq.b      $a008
00a006: 1081         move.b     d1, (a0)
00a008: 4ced0105fff4 movem.l    -$c(a5), d0/d2/a0
00a00e: 4e5d         unlk       a5
00a010: 4e75         rts        
00a012: 48e73800     movem.l    d2-d4, -(a7)
00a016: 2400         move.l     d0, d2
00a018: 2600         move.l     d0, d3
00a01a: 4843         swap       d3
00a01c: 2801         move.l     d1, d4
00a01e: 4844         swap       d4
00a020: c0c1         mulu.w     d1, d0
00a022: c2c3         mulu.w     d3, d1
00a024: c4c4         mulu.w     d4, d2
00a026: c6c4         mulu.w     d4, d3
00a028: 4840         swap       d0
00a02a: d041         add.w      d1, d0
00a02c: 7800         moveq      #$0, d4
00a02e: d784         addx.l     d4, d3
00a030: d042         add.w      d2, d0
00a032: d784         addx.l     d4, d3
00a034: 4840         swap       d0
00a036: 4241         clr.w      d1
00a038: 4841         swap       d1
00a03a: 4242         clr.w      d2
00a03c: 4842         swap       d2
00a03e: d282         add.l      d2, d1
00a040: d283         add.l      d3, d1
00a042: 4a80         tst.l      d0
00a044: 4cdf001c     movem.l    (a7)+, d2-d4
00a048: 4e75         rts        
00a04a: 2f02         move.l     d2, -(a7)
00a04c: 7400         moveq      #$0, d2
00a04e: 4a80         tst.l      d0
00a050: 6a04         bpl.b      $a056
00a052: 4480         neg.l      d0
00a054: 7403         moveq      #$3, d2
00a056: 4a81         tst.l      d1
00a058: 6a06         bpl.b      $a060
00a05a: 4481         neg.l      d1
00a05c: 0a020001     eori.b     #$1, d2
00a060: 6122         bsr.b      $a084
00a062: e20a         lsr.b      #$1, d2
00a064: 6402         bcc.b      $a068
00a066: 4480         neg.l      d0
00a068: e20a         lsr.b      #$1, d2
00a06a: 6402         bcc.b      $a06e
00a06c: 4481         neg.l      d1
00a06e: 241f         move.l     (a7)+, d2
00a070: 4a80         tst.l      d0
00a072: 4e75         rts        
00a074: 61d4         bsr.b      $a04a
00a076: c141         exg.l      d0, d1
00a078: 4a80         tst.l      d0
00a07a: 4e75         rts        
00a07c: 6106         bsr.b      $a084
00a07e: c141         exg.l      d0, d1
00a080: 4a80         tst.l      d0
00a082: 4e75         rts        
00a084: 48e73800     movem.l    d2-d4, -(a7)
00a088: 2401         move.l     d1, d2
00a08a: 6606         bne.b      $a092
00a08c: 81fc0000     divs.w     #$0, d0
00a090: 606e         bra.b      $a100
00a092: 5381         subq.l     #$1, d1
00a094: 676a         beq.b      $a100
00a096: 2801         move.l     d1, d4
00a098: 2200         move.l     d0, d1
00a09a: b481         cmp.l      d1, d2
00a09c: 650c         bcs.b      $a0aa
00a09e: 6704         beq.b      $a0a4
00a0a0: 7000         moveq      #$0, d0
00a0a2: 605c         bra.b      $a100
00a0a4: 7001         moveq      #$1, d0
00a0a6: 9282         sub.l      d2, d1
00a0a8: 6056         bra.b      $a100
00a0aa: 2602         move.l     d2, d3
00a0ac: 6bf6         bmi.b      $a0a4
00a0ae: c684         and.l      d4, d3
00a0b0: 6612         bne.b      $a0c4
00a0b2: e28a         lsr.l      #$1, d2
00a0b4: 76ff         moveq      #$ff, d3
00a0b6: e28a         lsr.l      #$1, d2
00a0b8: 55cbfffc     dbcs       d3, $a0b6
00a0bc: 4483         neg.l      d3
00a0be: e6a8         lsr.l      d3, d0
00a0c0: c284         and.l      d4, d1
00a0c2: 603c         bra.b      $a100
00a0c4: 7000         moveq      #$0, d0
00a0c6: 76ff         moveq      #$ff, d3
00a0c8: e382         asl.l      #$1, d2
00a0ca: 6a06         bpl.b      $a0d2
00a0cc: b481         cmp.l      d1, d2
00a0ce: 620a         bhi.b      $a0da
00a0d0: 600c         bra.b      $a0de
00a0d2: b481         cmp.l      d1, d2
00a0d4: 54cbfff2     dbcc       d3, $a0c8
00a0d8: 6704         beq.b      $a0de
00a0da: 5283         addq.l     #$1, d3
00a0dc: e28a         lsr.l      #$1, d2
00a0de: 4483         neg.l      d3
00a0e0: 6004         bra.b      $a0e6
00a0e2: e380         asl.l      #$1, d0
00a0e4: e28a         lsr.l      #$1, d2
00a0e6: 9282         sub.l      d2, d1
00a0e8: 6510         bcs.b      $a0fa
00a0ea: 5280         addq.l     #$1, d0
00a0ec: 51cbfff4     dbra       d3, $a0e2
00a0f0: 600e         bra.b      $a100
00a0f2: e380         asl.l      #$1, d0
00a0f4: e28a         lsr.l      #$1, d2
00a0f6: d282         add.l      d2, d1
00a0f8: 65f0         bcs.b      $a0ea
00a0fa: 51cbfff6     dbra       d3, $a0f2
00a0fe: d282         add.l      d2, d1
00a100: 4cdf001c     movem.l    (a7)+, d2-d4
00a104: 4a80         tst.l      d0
00a106: 4e75         rts        
00a108: 2a5f         movea.l    (a7)+, a5
00a10a: 5385         subq.l     #$1, d5
00a10c: 6562         bcs.b      $a170
00a10e: 1018         move.b     (a0)+, d0
00a110: 67f8         beq.b      $a10a
00a112: 0c00000d     cmpi.b     #$d, d0
00a116: 6758         beq.b      $a170
00a118: 0c000020     cmpi.b     #$20, d0
00a11c: 67ec         beq.b      $a10a
00a11e: 0c000009     cmpi.b     #$9, d0
00a122: 67e6         beq.b      $a10a
00a124: 0c00002c     cmpi.b     #$2c, d0
00a128: 67e0         beq.b      $a10a
00a12a: 5282         addq.l     #$1, d2
00a12c: 0c000022     cmpi.b     #$22, d0
00a130: 6730         beq.b      $a162
00a132: 0c000027     cmpi.b     #$27, d0
00a136: 672a         beq.b      $a162
00a138: 4868ffff     pea.l      -$1(a0)
00a13c: 5385         subq.l     #$1, d5
00a13e: 6530         bcs.b      $a170
00a140: 1018         move.b     (a0)+, d0
00a142: 67c6         beq.b      $a10a
00a144: 0c00000d     cmpi.b     #$d, d0
00a148: 6712         beq.b      $a15c
00a14a: 0c000020     cmpi.b     #$20, d0
00a14e: 670c         beq.b      $a15c
00a150: 0c000009     cmpi.b     #$9, d0
00a154: 6706         beq.b      $a15c
00a156: 0c00002c     cmpi.b     #$2c, d0
00a15a: 66e0         bne.b      $a13c
00a15c: 4228ffff     clr.b      -$1(a0)
00a160: 60a8         bra.b      $a10a
00a162: 4850         pea.l      (a0)
00a164: 5385         subq.l     #$1, d5
00a166: 6508         bcs.b      $a170
00a168: 1218         move.b     (a0)+, d1
00a16a: b001         cmp.b      d1, d0
00a16c: 66f6         bne.b      $a164
00a16e: 60ec         bra.b      $a15c
00a170: 204f         movea.l    a7, a0
00a172: 4857         pea.l      (a7)
00a174: 2f02         move.l     d2, -(a7)
00a176: 5382         subq.l     #$1, d2
00a178: 6710         beq.b      $a18a
00a17a: e582         asl.l      #$2, d2
00a17c: 20302800     move.l     (a0, d2.l), d0
00a180: 21902800     move.l     (a0), (a0, d2.l)
00a184: 20c0         move.l     d0, (a0)+
00a186: 5182         subq.l     #$8, d2
00a188: 62f2         bhi.b      $a17c
00a18a: 4ed5         jmp        (a5)
00a18c: 4e550000     link.w     a5, #$0
00a190: 48e76080     movem.l    d1-d2/a0, -(a7)
00a194: 2041         movea.l    d1, a0
00a196: 323c0000     move.w     #$0, d1
00a19a: 4e40         trap       #$0
00a19c: 008d         .dc.w      $008d
00a19e: 6000061a     bra.w      $a7ba
00a1a2: 4e550000     link.w     a5, #$0
00a1a6: 48e76080     movem.l    d1-d2/a0, -(a7)
00a1aa: 323c0001     move.w     #$1, d1
00a1ae: 4e40         trap       #$0
00a1b0: 008d         .dc.w      $008d
00a1b2: 65000608     bcs.w      $a7bc
00a1b6: 2001         move.l     d1, d0
00a1b8: 60000600     bra.w      $a7ba
00a1bc: 4e550000     link.w     a5, #$0
00a1c0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a1c4: 323c0006     move.w     #$6, d1
00a1c8: 4e40         trap       #$0
00a1ca: 008d         .dc.w      $008d
00a1cc: 640005f6     bcc.w      $a7c4
00a1d0: 0c4100d3     cmpi.w     #$d3, d1
00a1d4: 660005e6     bne.w      $a7bc
00a1d8: 7001         moveq      #$1, d0
00a1da: 600005de     bra.w      $a7ba
00a1de: 4e550000     link.w     a5, #$0
00a1e2: 48e76080     movem.l    d1-d2/a0, -(a7)
00a1e6: 2041         movea.l    d1, a0
00a1e8: 323c000f     move.w     #$f, d1
00a1ec: 242d0008     move.l     $8(a5), d2
00a1f0: 60a8         bra.b      $a19a
00a1f2: 4e550000     link.w     a5, #$0
00a1f6: 48e76080     movem.l    d1-d2/a0, -(a7)
00a1fa: 2041         movea.l    d1, a0
00a1fc: 323c000e     move.w     #$e, d1
00a200: 6098         bra.b      $a19a
00a202: 4e550000     link.w     a5, #$0
00a206: 48e76080     movem.l    d1-d2/a0, -(a7)
00a20a: 323c0002     move.w     #$2, d1
00a20e: 4e40         trap       #$0
00a210: 008d         .dc.w      $008d
00a212: 650005a8     bcs.w      $a7bc
00a216: 2002         move.l     d2, d0
00a218: 600005a0     bra.w      $a7ba
00a21c: 4e550000     link.w     a5, #$0
00a220: 48e76080     movem.l    d1-d2/a0, -(a7)
00a224: 323c0005     move.w     #$5, d1
00a228: 60e4         bra.b      $a20e
00a22a: 4e550000     link.w     a5, #$0
00a22e: 48e76080     movem.l    d1-d2/a0, -(a7)
00a232: 2041         movea.l    d1, a0
00a234: 323c0000     move.w     #$0, d1
00a238: 4e40         trap       #$0
00a23a: 008e         .dc.w      $008e
00a23c: 6000057c     bra.w      $a7ba
00a240: 4e550000     link.w     a5, #$0
00a244: 48e76080     movem.l    d1-d2/a0, -(a7)
00a248: 323c0003     move.w     #$3, d1
00a24c: 60ea         bra.b      $a238
00a24e: 4e550000     link.w     a5, #$0
00a252: 48e76080     movem.l    d1-d2/a0, -(a7)
00a256: 2401         move.l     d1, d2
00a258: 323c0002     move.w     #$2, d1
00a25c: 60da         bra.b      $a238
00a25e: 4e550000     link.w     a5, #$0
00a262: 48e76080     movem.l    d1-d2/a0, -(a7)
00a266: 2041         movea.l    d1, a0
00a268: 323c000f     move.w     #$f, d1
00a26c: 60ca         bra.b      $a238
00a26e: 4e550000     link.w     a5, #$0
00a272: 48e76080     movem.l    d1-d2/a0, -(a7)
00a276: 2401         move.l     d1, d2
00a278: 323c0010     move.w     #$10, d1
00a27c: 60ba         bra.b      $a238
00a27e: 4e550000     link.w     a5, #$0
00a282: 48e76080     movem.l    d1-d2/a0, -(a7)
00a286: 2401         move.l     d1, d2
00a288: 323c0011     move.w     #$11, d1
00a28c: 60aa         bra.b      $a238
00a28e: 4e550000     link.w     a5, #$0
00a292: 48e76080     movem.l    d1-d2/a0, -(a7)
00a296: 2401         move.l     d1, d2
00a298: 323c001a     move.w     #$1a, d1
00a29c: 609a         bra.b      $a238
00a29e: 4e550000     link.w     a5, #$0
00a2a2: 48e76080     movem.l    d1-d2/a0, -(a7)
00a2a6: 323c001b     move.w     #$1b, d1
00a2aa: 60f0         bra.b      $a29c
00a2ac: 4e550000     link.w     a5, #$0
00a2b0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a2b4: 48e71840     movem.l    d3-d4/a1, -(a7)
00a2b8: 2401         move.l     d1, d2
00a2ba: 7204         moveq      #$4, d1
00a2bc: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
00a2c2: 4e40         trap       #$0
00a2c4: 008e         .dc.w      $008e
00a2c6: 4cdf0218     movem.l    (a7)+, d3-d4/a1
00a2ca: 600004ee     bra.w      $a7ba
00a2ce: 4e550000     link.w     a5, #$0
00a2d2: 48e76080     movem.l    d1-d2/a0, -(a7)
00a2d6: 2401         move.l     d1, d2
00a2d8: 323c001c     move.w     #$1c, d1
00a2dc: 60be         bra.b      $a29c
00a2de: 4e550000     link.w     a5, #$0
00a2e2: 48e76080     movem.l    d1-d2/a0, -(a7)
00a2e6: 323c0024     move.w     #$24, d1
00a2ea: 60b0         bra.b      $a29c
00a2ec: 4e550000     link.w     a5, #$0
00a2f0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a2f4: 323c0025     move.w     #$25, d1
00a2f8: 60a2         bra.b      $a29c
00a2fa: 4e550000     link.w     a5, #$0
00a2fe: 48e76080     movem.l    d1-d2/a0, -(a7)
00a302: 3401         move.w     d1, d2
00a304: 323c0026     move.w     #$26, d1
00a308: 6092         bra.b      $a29c
00a30a: 4e550000     link.w     a5, #$0
00a30e: 48e76080     movem.l    d1-d2/a0, -(a7)
00a312: 3401         move.w     d1, d2
00a314: 323c0027     move.w     #$27, d1
00a318: 6082         bra.b      $a29c
00a31a: 4e550000     link.w     a5, #$0
00a31e: 48e76080     movem.l    d1-d2/a0, -(a7)
00a322: 2040         movea.l    d0, a0
00a324: 2001         move.l     d1, d0
00a326: 2f0a         move.l     a2, -(a7)
00a328: 4e40         trap       #$0
00a32a: 0080204a245f ori.l      #$204a245f, d0
00a330: 6500048a     bcs.w      $a7bc
00a334: 2008         move.l     a0, d0
00a336: 60000482     bra.w      $a7ba
00a33a: 4e550000     link.w     a5, #$0
00a33e: 48e76080     movem.l    d1-d2/a0, -(a7)
00a342: 204a         movea.l    a2, a0
00a344: 2440         movea.l    d0, a2
00a346: 4e40         trap       #$0
00a348: 008124486000 ori.l      #$24486000, d1
00a34e: 046c4e550000 subi.w     #$4e55, $0(a4)
00a354: 48e76080     movem.l    d1-d2/a0, -(a7)
00a358: 7000         moveq      #$0, d0
00a35a: 4e40         trap       #$0
00a35c: 000a         .dc.w      $000a
00a35e: 6000045a     bra.w      $a7ba
00a362: 4e550000     link.w     a5, #$0
00a366: 48e76080     movem.l    d1-d2/a0, -(a7)
00a36a: 206d0008     movea.l    $8(a5), a0
00a36e: 2210         move.l     (a0), d1
00a370: 2040         movea.l    d0, a0
00a372: 2017         move.l     (a7), d0
00a374: 4e40         trap       #$0
00a376: 00176500     ori.b      #$0, (a7)
00a37a: 0442206d     subi.w     #$206d, d2
00a37e: 0008         .dc.w      $0008
00a380: 2081         move.l     d1, (a0)
00a382: 60000440     bra.w      $a7c4
00a386: 4e550000     link.w     a5, #$0
00a38a: 48e76080     movem.l    d1-d2/a0, -(a7)
00a38e: 4e40         trap       #$0
00a390: 000f         .dc.w      $000f
00a392: 60000426     bra.w      $a7ba
00a396: e188         lsl.l      #$8, d0
00a398: 08c0001f     bset.b     #$1f, d0
00a39c: 4e550000     link.w     a5, #$0
00a3a0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a3a4: 4e40         trap       #$0
00a3a6: 000a         .dc.w      $000a
00a3a8: 60000410     bra.w      $a7ba
00a3ac: 4e550000     link.w     a5, #$0
00a3b0: 48e700c0     movem.l    a0-a1, -(a7)
00a3b4: 2041         movea.l    d1, a0
00a3b6: 2240         movea.l    d0, a1
00a3b8: 222d0008     move.l     $8(a5), d1
00a3bc: 4e40         trap       #$0
00a3be: 00116560     ori.b      #$60, (a1)
00a3c2: 7000         moveq      #$0, d0
00a3c4: 6068         bra.b      $a42e
00a3c6: 4e550000     link.w     a5, #$0
00a3ca: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00a3ce: 2040         movea.l    d0, a0
00a3d0: 4e40         trap       #$0
00a3d2: 00106454     ori.b      #$54, (a0)
00a3d6: 604a         bra.b      $a422
00a3d8: 4e550000     link.w     a5, #$0
00a3dc: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00a3e0: 2040         movea.l    d0, a0
00a3e2: 2248         movea.l    a0, a1
00a3e4: 1019         move.b     (a1)+, d0
00a3e6: 0c00002f     cmpi.b     #$2f, d0
00a3ea: 671a         beq.b      $a406
00a3ec: 0c00002e     cmpi.b     #$2e, d0
00a3f0: 6622         bne.b      $a414
00a3f2: 0c19002e     cmpi.b     #$2e, (a1)+
00a3f6: 67fa         beq.b      $a3f2
00a3f8: 1021         move.b     -(a1), d0
00a3fa: 672e         beq.b      $a42a
00a3fc: 0c00002f     cmpi.b     #$2f, d0
00a400: 6612         bne.b      $a414
00a402: 2049         movea.l    a1, a0
00a404: 60de         bra.b      $a3e4
00a406: 1019         move.b     (a1)+, d0
00a408: 0c00002f     cmpi.b     #$2f, d0
00a40c: 6706         beq.b      $a414
00a40e: 0c00002e     cmpi.b     #$2e, d0
00a412: 67de         beq.b      $a3f2
00a414: 4e40         trap       #$0
00a416: 00106508     ori.b      #$8, (a0)
00a41a: 4a00         tst.b      d0
00a41c: 670c         beq.b      $a42a
00a41e: 2049         movea.l    a1, a0
00a420: 60c2         bra.b      $a3e4
00a422: 2d41800c     move.l     d1, -$7ff4(a6)
00a426: 70ff         moveq      #$ff, d0
00a428: 6004         bra.b      $a42e
00a42a: 2009         move.l     a1, d0
00a42c: 9097         sub.l      (a7), d0
00a42e: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
00a434: 4e5d         unlk       a5
00a436: 4e75         rts        
00a438: 4e550000     link.w     a5, #$0
00a43c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a440: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
00a444: 242d000c     move.l     $c(a5), d2
00a448: 0802000f     btst.b     #$f, d2
00a44c: 6708         beq.b      $a456
00a44e: 262d0010     move.l     $10(a5), d3
00a452: 282d0014     move.l     $14(a5), d4
00a456: 2040         movea.l    d0, a0
00a458: 2001         move.l     d1, d0
00a45a: 222d0008     move.l     $8(a5), d1
00a45e: 4e40         trap       #$0
00a460: 00256502     ori.b      #$2, -(a5)
00a464: 200a         move.l     a2, d0
00a466: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
00a46a: 6000034e     bra.w      $a7ba
00a46e: 4e550000     link.w     a5, #$0
00a472: 48e76080     movem.l    d1-d2/a0, -(a7)
00a476: 2040         movea.l    d0, a0
00a478: 4e40         trap       #$0
00a47a: 001a6500     ori.b      #$0, (a2)+
00a47e: 033e         .dc.w      $033e
00a480: 2001         move.l     d1, d0
00a482: 60000336     bra.w      $a7ba
00a486: 4e550000     link.w     a5, #$0
00a48a: 48e76080     movem.l    d1-d2/a0, -(a7)
00a48e: 2040         movea.l    d0, a0
00a490: 4e40         trap       #$0
00a492: 001f6500     ori.b      #$0, (a7)+
00a496: 0326         btst.l     d1, -(a6)
00a498: 2001         move.l     d1, d0
00a49a: 6000031e     bra.w      $a7ba
00a49e: 4e550000     link.w     a5, #$0
00a4a2: 48e76080     movem.l    d1-d2/a0, -(a7)
00a4a6: 206d0008     movea.l    $8(a5), a0
00a4aa: 4e40         trap       #$0
00a4ac: 00186000     ori.b      #$0, (a0)+
00a4b0: 030a4e55     movep.w    $4e55(a2), d1
00a4b4: 000048e7     ori.b      #$e7, d0
00a4b8: 6080         bra.b      $a43a
00a4ba: 2040         movea.l    d0, a0
00a4bc: 4e40         trap       #$0
00a4be: 00266000     ori.b      #$0, -(a6)
00a4c2: 02f8         .dc.w      $02f8
00a4c4: 4e550000     link.w     a5, #$0
00a4c8: 48e76080     movem.l    d1-d2/a0, -(a7)
00a4cc: 08c1001f     bset.b     #$1f, d1
00a4d0: 600c         bra.b      $a4de
00a4d2: 4e550000     link.w     a5, #$0
00a4d6: 48e76080     movem.l    d1-d2/a0, -(a7)
00a4da: 242d0008     move.l     $8(a5), d2
00a4de: 4e40         trap       #$0
00a4e0: 00276500     ori.b      #$0, -(a7)
00a4e4: 02d8         .dc.w      $02d8
00a4e6: 2002         move.l     d2, d0
00a4e8: 600002d0     bra.w      $a7ba
00a4ec: 4e550000     link.w     a5, #$0
00a4f0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a4f4: 4e40         trap       #$0
00a4f6: 000b         .dc.w      $000b
00a4f8: 600002c0     bra.w      $a7ba
00a4fc: 4e550000     link.w     a5, #$0
00a500: 4e40         trap       #$0
00a502: 00524e5d     ori.w      #$4e5d, (a2)
00a506: 4e75         rts        
00a508: 4e550000     link.w     a5, #$0
00a50c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a510: 2f09         move.l     a1, -(a7)
00a512: 206d0008     movea.l    $8(a5), a0
00a516: 226d000c     movea.l    $c(a5), a1
00a51a: 4e40         trap       #$0
00a51c: 001b225f     ori.b      #$5f, (a3)+
00a520: 60000298     bra.w      $a7ba
00a524: 4e550000     link.w     a5, #$0
00a528: 48e73080     movem.l    d2-d3/a0, -(a7)
00a52c: 2401         move.l     d1, d2
00a52e: 262f0014     move.l     $14(a7), d3
00a532: 206f0018     movea.l    $18(a7), a0
00a536: 7202         moveq      #$2, d1
00a538: 4e40         trap       #$0
00a53a: 00536406     ori.w      #$6406, (a3)
00a53e: 2d41800c     move.l     d1, -$7ff4(a6)
00a542: 70ff         moveq      #$ff, d0
00a544: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
00a54a: 4e5d         unlk       a5
00a54c: 4e75         rts        
00a54e: 4e550000     link.w     a5, #$0
00a552: 48e77080     movem.l    d1-d3/a0, -(a7)
00a556: 2040         movea.l    d0, a0
00a558: 7200         moveq      #$0, d1
00a55a: 4e40         trap       #$0
00a55c: 00536406     ori.w      #$6406, (a3)
00a560: 2d41800c     move.l     d1, -$7ff4(a6)
00a564: 70ff         moveq      #$ff, d0
00a566: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
00a56c: 4e5d         unlk       a5
00a56e: 4e75         rts        
00a570: 4e550000     link.w     a5, #$0
00a574: 48e77080     movem.l    d1-d3/a0, -(a7)
00a578: 7201         moveq      #$1, d1
00a57a: 60de         bra.b      $a55a
00a57c: 4e550000     link.w     a5, #$0
00a580: 48e77080     movem.l    d1-d3/a0, -(a7)
00a584: 2040         movea.l    d0, a0
00a586: 7203         moveq      #$3, d1
00a588: 60d0         bra.b      $a55a
00a58a: 4e550000     link.w     a5, #$0
00a58e: 48e73080     movem.l    d2-d3/a0, -(a7)
00a592: 2041         movea.l    d1, a0
00a594: 7207         moveq      #$7, d1
00a596: 60a0         bra.b      $a538
00a598: 4e550000     link.w     a5, #$0
00a59c: 827c0008     or.w       #$8, d1
00a5a0: 4e40         trap       #$0
00a5a2: 00536406     ori.w      #$6406, (a3)
00a5a6: 2d41800c     move.l     d1, -$7ff4(a6)
00a5aa: 72ff         moveq      #$ff, d1
00a5ac: 2001         move.l     d1, d0
00a5ae: 4e5d         unlk       a5
00a5b0: 4e75         rts        
00a5b2: 4e550000     link.w     a5, #$0
00a5b6: 2f01         move.l     d1, -(a7)
00a5b8: 7206         moveq      #$6, d1
00a5ba: 4e40         trap       #$0
00a5bc: 00536406     ori.w      #$6406, (a3)
00a5c0: 2d41800c     move.l     d1, -$7ff4(a6)
00a5c4: 72ff         moveq      #$ff, d1
00a5c6: 2001         move.l     d1, d0
00a5c8: 222dfffc     move.l     -$4(a5), d1
00a5cc: 4e5d         unlk       a5
00a5ce: 4e75         rts        
00a5d0: 4e550000     link.w     a5, #$0
00a5d4: 2f02         move.l     d2, -(a7)
00a5d6: 7409         moveq      #$9, d2
00a5d8: 6012         bra.b      $a5ec
00a5da: 4e550000     link.w     a5, #$0
00a5de: 2f02         move.l     d2, -(a7)
00a5e0: 740a         moveq      #$a, d2
00a5e2: 6008         bra.b      $a5ec
00a5e4: 4e550000     link.w     a5, #$0
00a5e8: 2f02         move.l     d2, -(a7)
00a5ea: 740b         moveq      #$b, d2
00a5ec: c342         exg.l      d1, d2
00a5ee: 826f000e     or.w       $e(a7), d1
00a5f2: 4e40         trap       #$0
00a5f4: 00536406     ori.w      #$6406, (a3)
00a5f8: 2d41800c     move.l     d1, -$7ff4(a6)
00a5fc: 72ff         moveq      #$ff, d1
00a5fe: 2001         move.l     d1, d0
00a600: 242dfffc     move.l     -$4(a5), d2
00a604: 4e5d         unlk       a5
00a606: 4e75         rts        
00a608: 4e550000     link.w     a5, #$0
00a60c: 48e73000     movem.l    d2-d3, -(a7)
00a610: 7404         moveq      #$4, d2
00a612: c342         exg.l      d1, d2
00a614: 262f0010     move.l     $10(a7), d3
00a618: 4e40         trap       #$0
00a61a: 00536406     ori.w      #$6406, (a3)
00a61e: 2d41800c     move.l     d1, -$7ff4(a6)
00a622: 72ff         moveq      #$ff, d1
00a624: 2001         move.l     d1, d0
00a626: 4ced000cfff8 movem.l    -$8(a5), d2-d3
00a62c: 4e5d         unlk       a5
00a62e: 4e75         rts        
00a630: 4e550000     link.w     a5, #$0
00a634: 48e73000     movem.l    d2-d3, -(a7)
00a638: 7405         moveq      #$5, d2
00a63a: 60d6         bra.b      $a612
00a63c: 4e550000     link.w     a5, #$0
00a640: 48e76080     movem.l    d1-d2/a0, -(a7)
00a644: 2040         movea.l    d0, a0
00a646: 3001         move.w     d1, d0
00a648: 48e70060     movem.l    a1-a2, -(a7)
00a64c: 4e40         trap       #$0
00a64e: 00006502     ori.b      #$2, d0
00a652: 200a         move.l     a2, d0
00a654: 4cdf0600     movem.l    (a7)+, a1-a2
00a658: 60000160     bra.w      $a7ba
00a65c: 4e550000     link.w     a5, #$0
00a660: 48e76080     movem.l    d1-d2/a0, -(a7)
00a664: 2040         movea.l    d0, a0
00a666: 3001         move.w     d1, d0
00a668: 48e70060     movem.l    a1-a2, -(a7)
00a66c: 4e40         trap       #$0
00a66e: 000160de     ori.b      #$de, d1
00a672: 4e550000     link.w     a5, #$0
00a676: 48e76080     movem.l    d1-d2/a0, -(a7)
00a67a: 2f0a         move.l     a2, -(a7)
00a67c: 2440         movea.l    d0, a2
00a67e: 4e40         trap       #$0
00a680: 0002245f     ori.b      #$5f, d2
00a684: 60000134     bra.w      $a7ba
00a688: 4e550000     link.w     a5, #$0
00a68c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a690: 2040         movea.l    d0, a0
00a692: 3001         move.w     d1, d0
00a694: 4e40         trap       #$0
00a696: 001d6000     ori.b      #$0, (a5)+
00a69a: 0120         btst.l     d0, -(a0)
00a69c: 4e550000     link.w     a5, #$0
00a6a0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6a4: 4e40         trap       #$0
00a6a6: 0008         .dc.w      $0008
00a6a8: 60000110     bra.w      $a7ba
00a6ac: 4e550000     link.w     a5, #$0
00a6b0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6b4: 2040         movea.l    d0, a0
00a6b6: 7000         moveq      #$0, d0
00a6b8: 4e40         trap       #$0
00a6ba: 00046500     ori.b      #$0, d4
00a6be: 00fe         .dc.w      $00fe
00a6c0: 2408         move.l     a0, d2
00a6c2: 670000f6     beq.w      $a7ba
00a6c6: 4258         clr.w      (a0)+
00a6c8: 3081         move.w     d1, (a0)
00a6ca: 600000ee     bra.w      $a7ba
00a6ce: 4e550000     link.w     a5, #$0
00a6d2: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6d6: 4e40         trap       #$0
00a6d8: 000d         .dc.w      $000d
00a6da: 600000de     bra.w      $a7ba
00a6de: 4e550000     link.w     a5, #$0
00a6e2: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6e6: 48e71c40     movem.l    d3-d5/a1, -(a7)
00a6ea: 7a03         moveq      #$3, d5
00a6ec: 602e         bra.b      $a71c
00a6ee: 4e550000     link.w     a5, #$0
00a6f2: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6f6: 48e71c40     movem.l    d3-d5/a1, -(a7)
00a6fa: 7a01         moveq      #$1, d5
00a6fc: 601e         bra.b      $a71c
00a6fe: 4e550000     link.w     a5, #$0
00a702: 48e76080     movem.l    d1-d2/a0, -(a7)
00a706: 48e71c40     movem.l    d3-d5/a1, -(a7)
00a70a: 7a02         moveq      #$2, d5
00a70c: 600e         bra.b      $a71c
00a70e: 4e550000     link.w     a5, #$0
00a712: 48e76080     movem.l    d1-d2/a0, -(a7)
00a716: 48e71c40     movem.l    d3-d5/a1, -(a7)
00a71a: 7a00         moveq      #$0, d5
00a71c: 2040         movea.l    d0, a0
00a71e: 2401         move.l     d1, d2
00a720: 226d0008     movea.l    $8(a5), a1
00a724: 302d0012     move.w     $12(a5), d0
00a728: 4840         swap       d0
00a72a: 302d000e     move.w     $e(a5), d0
00a72e: 222d0014     move.l     $14(a5), d1
00a732: 7603         moveq      #$3, d3
00a734: 08050001     btst.b     #$1, d5
00a738: 6704         beq.b      $a73e
00a73a: 262d001c     move.l     $1c(a5), d3
00a73e: 282d0018     move.l     $18(a5), d4
00a742: 08050000     btst.b     #$0, d5
00a746: 6606         bne.b      $a74e
00a748: 4e40         trap       #$0
00a74a: 00036004     ori.b      #$4, d3
00a74e: 4e40         trap       #$0
00a750: 00054cdf     ori.b      #$df, d5
00a754: 023860000062 andi.b     #$0, $62.w
00a75a: 4e550000     link.w     a5, #$0
00a75e: 48e76080     movem.l    d1-d2/a0, -(a7)
00a762: 4e40         trap       #$0
00a764: 000c         .dc.w      $000c
00a766: 60000052     bra.w      $a7ba
00a76a: 4e550000     link.w     a5, #$0
00a76e: 48e76080     movem.l    d1-d2/a0, -(a7)
00a772: 4e40         trap       #$0
00a774: 000c         .dc.w      $000c
00a776: 65000044     bcs.w      $a7bc
00a77a: 2001         move.l     d1, d0
00a77c: 6000003c     bra.w      $a7ba
00a780: 4e550000     link.w     a5, #$0
00a784: 48e76080     movem.l    d1-d2/a0, -(a7)
00a788: 2200         move.l     d0, d1
00a78a: 4e40         trap       #$0
00a78c: 001c6000     ori.b      #$0, (a4)+
00a790: 002a4e550000 ori.b      #$55, $0(a2)
00a796: 48e76080     movem.l    d1-d2/a0, -(a7)
00a79a: 41fa0012     lea.l      $a7ae(pc), a0
00a79e: 2d409256     move.l     d0, -$6daa(a6)
00a7a2: 6602         bne.b      $a7a6
00a7a4: 2040         movea.l    d0, a0
00a7a6: 4e40         trap       #$0
00a7a8: 0009         .dc.w      $0009
00a7aa: 6000000e     bra.w      $a7ba
00a7ae: 2001         move.l     d1, d0
00a7b0: 206e9256     movea.l    -$6daa(a6), a0
00a7b4: 4e90         jsr        (a0)
00a7b6: 4e40         trap       #$0
00a7b8: 001e640c     ori.b      #$c, (a6)+
00a7bc: 2d41800c     move.l     d1, -$7ff4(a6)
00a7c0: 70ff         moveq      #$ff, d0
00a7c2: 6004         bra.b      $a7c8
00a7c4: 65f6         bcs.b      $a7bc
00a7c6: 7000         moveq      #$0, d0
00a7c8: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
00a7ce: 4e5d         unlk       a5
00a7d0: 4e75         rts        
00a7d2: 4e550000     link.w     a5, #$0
00a7d6: 2200         move.l     d0, d1
00a7d8: 6100001e     bsr.w      $a7f8
00a7dc: 6100f4ea     bsr.w      $9cc8
00a7e0: 6008         bra.b      $a7ea
00a7e2: 4e550000     link.w     a5, #$0
00a7e6: 4afc         illegal    #$4afc
00a7e8: 2200         move.l     d0, d1
00a7ea: 4e40         trap       #$0
00a7ec: 0006dead     ori.b      #$ad, d6
00a7f0: dead003c     add.l      $3c(a5), d7
00a7f4: 00014e75     ori.b      #$75, d1
00a7f8: 4e75         rts        
