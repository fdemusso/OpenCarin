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
0000a0: 203c0000a41a move.l     #$a41a, d0
0000a6: 4ebb0800     jsr        $a8(pc,d0.l)
0000aa: 6076         bra.b      $122
0000ac: 43e80004     lea.l      $4(a0), a1
0000b0: 2d4991e8     move.l     a1, -$6e18(a6)
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
000122: 207c00009954 movea.l    #$9954, a0
000128: 4ebb8800     jsr        $12a(pc,a0.l)
00012c: 6500011c     bcs.w      $24a
000130: 6120         bsr.b      $152
000132: 4cdf0003     movem.l    (a7)+, d0-d1
000136: 9bcd         suba.l     a5, a5
000138: 2f2e91e8     move.l     -$6e18(a6), -(a7)
00013c: 207c00000274 movea.l    #$274, a0
000142: 4ebb8800     jsr        $144(pc,a0.l)
000146: 7000         moveq      #$0, d0
000148: 207c0000ab1c movea.l    #$ab1c, a0
00014e: 4ebb8800     jsr        $150(pc,a0.l)
000152: 207cffff9b94 movea.l    #$ffff9b94, a0
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
00018e: 207c0000aaec movea.l    #$aaec, a0
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
0001da: 227c0000aaaa movea.l    #$aaaa, a1
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
000254: 227cffff8e60 movea.l    #$ffff8e60, a1
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
000276: 207cffff8e60 movea.l    #$ffff8e60, a0
00027c: d1ce         adda.l     a6, a0
00027e: 6100ff18     bsr.w      $198
000282: 4e40         trap       #$0
000284: 00064e40     ori.b      #$40, d6
000288: 000612d8     ori.b      #$d8, d6
00028c: 66fc         bne.b      $28a
00028e: 4e75         rts        
000290: 4e550000     link.w     a5, #$0
000294: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
000298: 2f3ca95acd82 move.l     #$a95acd82, -(a7)
00029e: 48780003     pea.l      $3.w
0002a2: 48780080     pea.l      $80.w
0002a6: 42a7         clr.l      -(a7)
0002a8: 2f2e91e8     move.l     -$6e18(a6), -(a7)
0002ac: 2f2f0018     move.l     $18(a7), -(a7)
0002b0: 222f0018     move.l     $18(a7), d1
0002b4: 41fb01700000a8e2 lea.l      $a8e2(a16, invalid.w), a0
0002bc: 2008         move.l     a0, d0
0002be: 4eae9a94     jsr        -$656c(a6)
0002c2: 4fef0018     lea.l      $18(a7), a7
0002c6: 2800         move.l     d0, d4
0002c8: 2004         move.l     d4, d0
0002ca: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0002d0: 4e5d         unlk       a5
0002d2: 4e75         rts        
0002d4: 4e550000     link.w     a5, #$0
0002d8: 48e78000     movem.l    d0, -(a7)
0002dc: 4e5d         unlk       a5
0002de: 4e75         rts        
0002e0: 4e550000     link.w     a5, #$0
0002e4: 48e78080     movem.l    d0/a0, -(a7)
0002e8: 4fefffee     lea.l      -$12(a7), a7
0002ec: 41ee91ec     lea.l      -$6e14(a6), a0
0002f0: 2f48000e     move.l     a0, $e(a7)
0002f4: 422f0005     clr.b      $5(a7)
0002f8: 422f0004     clr.b      $4(a7)
0002fc: 61007b30     bsr.w      $7e2e
000300: 2e80         move.l     d0, (a7)
000302: 0c9700002327 cmpi.l     #$2327, (a7)
000308: 6606         bne.b      $310
00030a: 1f7c00010004 move.b     #$1, $4(a7)
000310: 0c9700002307 cmpi.l     #$2307, (a7)
000316: 6612         bne.b      $32a
000318: 422e802c     clr.b      -$7fd4(a6)
00031c: 422e802d     clr.b      -$7fd3(a6)
000320: 422e802e     clr.b      -$7fd2(a6)
000324: 2ebc00002333 move.l     #$2333, (a7)
00032a: 42af000a     clr.l      $a(a7)
00032e: 705a         moveq      #$5a, d0
000330: 2f400006     move.l     d0, $6(a7)
000334: 6040         bra.b      $376
000336: 206f000e     movea.l    $e(a7), a0
00033a: 2017         move.l     (a7), d0
00033c: b090         cmp.l      (a0), d0
00033e: 662a         bne.b      $36a
000340: 206f000e     movea.l    $e(a7), a0
000344: 302e801e     move.w     -$7fe2(a6), d0
000348: b0680004     cmp.w      $4(a0), d0
00034c: 661c         bne.b      $36a
00034e: 1f7c00010005 move.b     #$1, $5(a7)
000354: 206f000e     movea.l    $e(a7), a0
000358: 20680008     movea.l    $8(a0), a0
00035c: 4e90         jsr        (a0)
00035e: 206f000e     movea.l    $e(a7), a0
000362: 3d680006801e move.w     $6(a0), -$7fe2(a6)
000368: 600c         bra.b      $376
00036a: 06af0000000c000e addi.l     #$c, $e(a7)
000372: 52af000a     addq.l     #$1, $a(a7)
000376: 4a2f0005     tst.b      $5(a7)
00037a: 660a         bne.b      $386
00037c: 202f000a     move.l     $a(a7), d0
000380: b0af0006     cmp.l      $6(a7), d0
000384: 6db0         blt.b      $336
000386: 102f0004     move.b     $4(a7), d0
00038a: 4fef0012     lea.l      $12(a7), a7
00038e: 4ced0100fffc movem.l    -$4(a5), a0
000394: 4e5d         unlk       a5
000396: 4e75         rts        
000398: 4e550000     link.w     a5, #$0
00039c: 48e78000     movem.l    d0, -(a7)
0003a0: 2017         move.l     (a7), d0
0003a2: b0ae8020     cmp.l      -$7fe0(a6), d0
0003a6: 6606         bne.b      $3ae
0003a8: 2ebc0000230a move.l     #$230a, (a7)
0003ae: 2017         move.l     (a7), d0
0003b0: 610079c2     bsr.w      $7d74
0003b4: 4e5d         unlk       a5
0003b6: 4e75         rts        
0003b8: 4e550000     link.w     a5, #$0
0003bc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0003c0: 558f         subq.l     #$2, a7
0003c2: 41fb017000007f62 lea.l      $7f62(a16, invalid.w), a0
0003ca: 2008         move.l     a0, d0
0003cc: 61007f3c     bsr.w      $830a
0003d0: 41fb0170ffffffc6 lea.l      $ffffffc6(a16, invalid.w), a0
0003d8: 2008         move.l     a0, d0
0003da: 61007a30     bsr.w      $7e0c
0003de: 4a80         tst.l      d0
0003e0: 6626         bne.b      $408
0003e2: 223c00002302 move.l     #$2302, d1
0003e8: 4eae9a8e     jsr        -$6572(a6)
0003ec: 4eae9a9a     jsr        -$6566(a6)
0003f0: 4eae9aa0     jsr        -$6560(a6)
0003f4: 42a7         clr.l      -(a7)
0003f6: 7205         moveq      #$5, d1
0003f8: 203c00000099 move.l     #$99, d0
0003fe: 4eae9a82     jsr        -$657e(a6)
000402: 588f         addq.l     #$4, a7
000404: 4eae9a88     jsr        -$6578(a6)
000408: 41ee9628     lea.l      -$69d8(a6), a0
00040c: 2208         move.l     a0, d1
00040e: 41fa00af     lea.l      $4bf(pc), a0
000412: 2008         move.l     a0, d0
000414: 6100fe7a     bsr.w      $290
000418: 2d409624     move.l     d0, -$69dc(a6)
00041c: 6e26         bgt.b      $444
00041e: 223c00002302 move.l     #$2302, d1
000424: 4eae9a8e     jsr        -$6572(a6)
000428: 4eae9a9a     jsr        -$6566(a6)
00042c: 4eae9aa0     jsr        -$6560(a6)
000430: 42a7         clr.l      -(a7)
000432: 7205         moveq      #$5, d1
000434: 203c00000099 move.l     #$99, d0
00043a: 4eae9a82     jsr        -$657e(a6)
00043e: 588f         addq.l     #$4, a7
000440: 4eae9a88     jsr        -$6578(a6)
000444: 61000156     bsr.w      $59c
000448: 4a00         tst.b      d0
00044a: 6626         bne.b      $472
00044c: 223c00002302 move.l     #$2302, d1
000452: 4eae9a8e     jsr        -$6572(a6)
000456: 4eae9a9a     jsr        -$6566(a6)
00045a: 4eae9aa0     jsr        -$6560(a6)
00045e: 42a7         clr.l      -(a7)
000460: 7205         moveq      #$5, d1
000462: 203c00000099 move.l     #$99, d0
000468: 4eae9a82     jsr        -$657e(a6)
00046c: 588f         addq.l     #$4, a7
00046e: 4eae9a88     jsr        -$6578(a6)
000472: 3d7c0001801e move.w     #$1, -$7fe2(a6)
000478: 223c00002301 move.l     #$2301, d1
00047e: 4eae9a8e     jsr        -$6572(a6)
000482: 4eae9a9a     jsr        -$6566(a6)
000486: 4eae9aa0     jsr        -$6560(a6)
00048a: 223c0000230f move.l     #$230f, d1
000490: 4eae9a8e     jsr        -$6572(a6)
000494: 4eae9aa0     jsr        -$6560(a6)
000498: 422f0001     clr.b      $1(a7)
00049c: 6008         bra.b      $4a6
00049e: 6100fe40     bsr.w      $2e0
0004a2: 1f400001     move.b     d0, $1(a7)
0004a6: 4a2f0001     tst.b      $1(a7)
0004aa: 67f2         beq.b      $49e
0004ac: 548f         addq.l     #$2, a7
0004ae: 4ced0100fffc movem.l    -$4(a5), a0
0004b4: 4e5d         unlk       a5
0004b6: 4e75         rts        
0004b8: 6764         beq.b      $51e
0004ba: 5f62         subq.w     #$7, -(a2)
0004bc: 6a6c         bpl.b      $52a
0004be: 0067645f     ori.w      #$645f, -(a7)
0004c2: 626a         bhi.b      $52e
0004c4: 6c004e55     bge.w      $531b
0004c8: 000048e7     ori.b      #$e7, d0
0004cc: c080         and.l      d0, d0
0004ce: 202e8526     move.l     -$7ada(a6), d0
0004d2: 61005716     bsr.w      $5bea
0004d6: 0c2e000b8558 cmpi.b     #$b, -$7aa8(a6)
0004dc: 661a         bne.b      $4f8
0004de: 7070         moveq      #$70, d0
0004e0: d0ae851e     add.l      -$7ae2(a6), d0
0004e4: 2200         move.l     d0, d1
0004e6: 41ee8116     lea.l      -$7eea(a6), a0
0004ea: 2008         move.l     a0, d0
0004ec: 4eae9ab2     jsr        -$654e(a6)
0004f0: 1d7c00168558 move.b     #$16, -$7aa8(a6)
0004f6: 6018         bra.b      $510
0004f8: 41ee8116     lea.l      -$7eea(a6), a0
0004fc: 2208         move.l     a0, d1
0004fe: 7070         moveq      #$70, d0
000500: d0ae851e     add.l      -$7ae2(a6), d0
000504: 4eae9aac     jsr        -$6554(a6)
000508: 4a80         tst.l      d0
00050a: 6704         beq.b      $510
00050c: 610018bc     bsr.w      $1dca
000510: 202e8526     move.l     -$7ada(a6), d0
000514: 610056e6     bsr.w      $5bfc
000518: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00051e: 4e5d         unlk       a5
000520: 4e75         rts        
000522: 4e550000     link.w     a5, #$0
000526: 48e7c000     movem.l    d0-d1, -(a7)
00052a: 223c00002326 move.l     #$2326, d1
000530: 202e9624     move.l     -$69dc(a6), d0
000534: 4eae9aa0     jsr        -$6560(a6)
000538: 4ced0002fffc movem.l    -$4(a5), d1
00053e: 4e5d         unlk       a5
000540: 4e75         rts        
000542: 4e550000     link.w     a5, #$0
000546: 48e7c080     movem.l    d0-d1/a0, -(a7)
00054a: 41fa34aa     lea.l      $39f6(pc), a0
00054e: 2008         move.l     a0, d0
000550: 61004e70     bsr.w      $53c2
000554: 41fa34c1     lea.l      $3a17(pc), a0
000558: 2008         move.l     a0, d0
00055a: 61004e66     bsr.w      $53c2
00055e: 2f2e8526     move.l     -$7ada(a6), -(a7)
000562: 486e96dc     pea.l      -$6924(a6)
000566: 2f2e8522     move.l     -$7ade(a6), -(a7)
00056a: 4878000b     pea.l      $b.w
00056e: 7202         moveq      #$2, d1
000570: 202e851e     move.l     -$7ae2(a6), d0
000574: 61005474     bsr.w      $59ea
000578: 4fef0010     lea.l      $10(a7), a7
00057c: 61005702     bsr.w      $5c80
000580: 223c00002302 move.l     #$2302, d1
000586: 4eae9a8e     jsr        -$6572(a6)
00058a: 4eae9a9a     jsr        -$6566(a6)
00058e: 4eae9aa0     jsr        -$6560(a6)
000592: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000598: 4e5d         unlk       a5
00059a: 4e75         rts        
00059c: 4e550000     link.w     a5, #$0
0005a0: 48e7c000     movem.l    d0-d1, -(a7)
0005a4: 486e8526     pea.l      -$7ada(a6)
0005a8: 486e96dc     pea.l      -$6924(a6)
0005ac: 486e8522     pea.l      -$7ade(a6)
0005b0: 4878000b     pea.l      $b.w
0005b4: 7202         moveq      #$2, d1
0005b6: 203c0000cba8 move.l     #$cba8, d0
0005bc: 61005332     bsr.w      $58f0
0005c0: 4fef0010     lea.l      $10(a7), a7
0005c4: 2d40851e     move.l     d0, -$7ae2(a6)
0005c8: 4aae851e     tst.l      -$7ae2(a6)
0005cc: 6604         bne.b      $5d2
0005ce: 7000         moveq      #$0, d0
0005d0: 600a         bra.b      $5dc
0005d2: 1d7c00018559 move.b     #$1, -$7aa7(a6)
0005d8: 61001c36     bsr.w      $2210
0005dc: 4ced0002fffc movem.l    -$4(a5), d1
0005e2: 4e5d         unlk       a5
0005e4: 4e75         rts        
0005e6: 4e550000     link.w     a5, #$0
0005ea: 48e780c0     movem.l    d0/a0-a1, -(a7)
0005ee: 202e8526     move.l     -$7ada(a6), d0
0005f2: 610055f6     bsr.w      $5bea
0005f6: 41ee84a8     lea.l      -$7b58(a6), a0
0005fa: 2008         move.l     a0, d0
0005fc: 610072c8     bsr.w      $78c6
000600: 4a80         tst.l      d0
000602: 6d0000b0     blt.w      $6b4
000606: 0c6e000184c6 cmpi.w     #$1, -$7b3a(a6)
00060c: 670000a2     beq.w      $6b0
000610: 0c2e000184e0 cmpi.b     #$1, -$7b20(a6)
000616: 660c         bne.b      $624
000618: 61000b48     bsr.w      $1162
00061c: 0c000001     cmpi.b     #$1, d0
000620: 6700008e     beq.w      $6b0
000624: 4a6e84c6     tst.w      -$7b3a(a6)
000628: 670a         beq.b      $634
00062a: 0c6e000384c6 cmpi.w     #$3, -$7b3a(a6)
000630: 66000082     bne.w      $6b4
000634: 0c2e000184e0 cmpi.b     #$1, -$7b20(a6)
00063a: 6604         bne.b      $640
00063c: 61002c52     bsr.w      $3290
000640: 61002182     bsr.w      $27c4
000644: 4a00         tst.b      d0
000646: 6728         beq.b      $670
000648: 6100216a     bsr.w      $27b4
00064c: 61001a9e     bsr.w      $20ec
000650: 2d6e85508554 move.l     -$7ab0(a6), -$7aac(a6)
000656: 41ee84a8     lea.l      -$7b58(a6), a0
00065a: 43ee84e2     lea.l      -$7b1e(a6), a1
00065e: 700d         moveq      #$d, d0
000660: 22d8         move.l     (a0)+, (a1)+
000662: 51c8fffc     dbra       d0, $660
000666: 32d8         move.w     (a0)+, (a1)+
000668: 1d7c0001851c move.b     #$1, -$7ae4(a6)
00066e: 6044         bra.b      $6b4
000670: 202e8024     move.l     -$7fdc(a6), d0
000674: 61000bd8     bsr.w      $124e
000678: 4a00         tst.b      d0
00067a: 6734         beq.b      $6b0
00067c: 61000932     bsr.w      $fb0
000680: 4a00         tst.b      d0
000682: 672c         beq.b      $6b0
000684: 0c6e00028030 cmpi.w     #$2, -$7fd0(a6)
00068a: 6708         beq.b      $694
00068c: 0c6e00148030 cmpi.w     #$14, -$7fd0(a6)
000692: 6616         bne.b      $6aa
000694: 4feffff8     lea.l      -$8(a7), a7
000698: 2eae84b0     move.l     -$7b50(a6), (a7)
00069c: 2f6e84b40004 move.l     -$7b4c(a6), $4(a7)
0006a2: 610021b6     bsr.w      $285a
0006a6: 508f         addq.l     #$8, a7
0006a8: 600a         bra.b      $6b4
0006aa: 6100171e     bsr.w      $1dca
0006ae: 6004         bra.b      $6b4
0006b0: 61000bea     bsr.w      $129c
0006b4: 610072f0     bsr.w      $79a6
0006b8: 202e8526     move.l     -$7ada(a6), d0
0006bc: 6100553e     bsr.w      $5bfc
0006c0: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0006c6: 4e5d         unlk       a5
0006c8: 4e75         rts        
0006ca: 4e550000     link.w     a5, #$0
0006ce: 48e7c080     movem.l    d0-d1/a0, -(a7)
0006d2: 4a2e802c     tst.b      -$7fd4(a6)
0006d6: 6754         beq.b      $72c
0006d8: 7000         moveq      #$0, d0
0006da: 102e9832     move.b     -$67ce(a6), d0
0006de: 610029be     bsr.w      $309e
0006e2: 4a00         tst.b      d0
0006e4: 6746         beq.b      $72c
0006e6: 41ee84a8     lea.l      -$7b58(a6), a0
0006ea: 2008         move.l     a0, d0
0006ec: 610071d8     bsr.w      $78c6
0006f0: 4a80         tst.l      d0
0006f2: 6d34         blt.b      $728
0006f4: 0c6e000184c6 cmpi.w     #$1, -$7b3a(a6)
0006fa: 6708         beq.b      $704
0006fc: 0c6e000284c6 cmpi.w     #$2, -$7b3a(a6)
000702: 6620         bne.b      $724
000704: 202e96a0     move.l     -$6960(a6), d0
000708: 52ae96a0     addq.l     #$1, -$6960(a6)
00070c: 720a         moveq      #$a, d1
00070e: b280         cmp.l      d0, d1
000710: 6e16         bgt.b      $728
000712: 610032cc     bsr.w      $39e0
000716: 422e802c     clr.b      -$7fd4(a6)
00071a: 422e802d     clr.b      -$7fd3(a6)
00071e: 42ae96a0     clr.l      -$6960(a6)
000722: 6008         bra.b      $72c
000724: 42ae96a0     clr.l      -$6960(a6)
000728: 6100727c     bsr.w      $79a6
00072c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000732: 4e5d         unlk       a5
000734: 4e75         rts        
000736: 4e550000     link.w     a5, #$0
00073a: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00073e: 4fefffb2     lea.l      -$4e(a7), a7
000742: 1f7c00010001 move.b     #$1, $1(a7)
000748: 41fa32e8     lea.l      $3a32(pc), a0
00074c: 2008         move.l     a0, d0
00074e: 61004cd6     bsr.w      $5426
000752: 2440         movea.l    d0, a2
000754: 4a80         tst.l      d0
000756: 6700009c     beq.w      $7f4
00075a: 0c12000b     cmpi.b     #$b, (a2)
00075e: 66000068     bne.w      $7c8
000762: 0c2a000b0001 cmpi.b     #$b, $1(a2)
000768: 6608         bne.b      $772
00076a: 7000         moveq      #$0, d0
00076c: 102e9832     move.b     -$67ce(a6), d0
000770: 2800         move.l     d0, d4
000772: 200a         move.l     a2, d0
000774: 5480         addq.l     #$2, d0
000776: 2200         move.l     d0, d1
000778: 7000         moveq      #$0, d0
00077a: 102a0001     move.b     $1(a2), d0
00077e: 61004638     bsr.w      $4db8
000782: 1f400001     move.b     d0, $1(a7)
000786: 0c2a00420001 cmpi.b     #$42, $1(a2)
00078c: 660c         bne.b      $79a
00078e: 7000         moveq      #$0, d0
000790: 102e984c     move.b     -$67b4(a6), d0
000794: 610019ea     bsr.w      $2180
000798: 6054         bra.b      $7ee
00079a: 0c2a004d0001 cmpi.b     #$4d, $1(a2)
0007a0: 660c         bne.b      $7ae
0007a2: 7000         moveq      #$0, d0
0007a4: 102e9853     move.b     -$67ad(a6), d0
0007a8: 61001a0c     bsr.w      $21b6
0007ac: 6040         bra.b      $7ee
0007ae: 0c2a000b0001 cmpi.b     #$b, $1(a2)
0007b4: 6638         bne.b      $7ee
0007b6: 7000         moveq      #$0, d0
0007b8: 102e9832     move.b     -$67ce(a6), d0
0007bc: b084         cmp.l      d4, d0
0007be: 672e         beq.b      $7ee
0007c0: 2004         move.l     d4, d0
0007c2: 61000a0e     bsr.w      $11d2
0007c6: 6026         bra.b      $7ee
0007c8: 0c120016     cmpi.b     #$16, (a2)
0007cc: 6612         bne.b      $7e0
0007ce: 41ef0002     lea.l      $2(a7), a0
0007d2: 2208         move.l     a0, d1
0007d4: 7000         moveq      #$0, d0
0007d6: 102a0001     move.b     $1(a2), d0
0007da: 61004440     bsr.w      $4c1c
0007de: 600a         bra.b      $7ea
0007e0: 0c120021     cmpi.b     #$21, (a2)
0007e4: 6608         bne.b      $7ee
0007e6: 610007a2     bsr.w      $f8a
0007ea: 1f400001     move.b     d0, $1(a7)
0007ee: 200a         move.l     a2, d0
0007f0: 4eae9aa6     jsr        -$655a(a6)
0007f4: 487a3257     pea.l      $3a4d(pc)
0007f8: 724d         moveq      #$4d, d1
0007fa: 41ef0005     lea.l      $5(a7), a0
0007fe: 2008         move.l     a0, d0
000800: 61004d38     bsr.w      $553a
000804: 588f         addq.l     #$4, a7
000806: 223c0000230b move.l     #$230b, d1
00080c: 41fa325a     lea.l      $3a68(pc), a0
000810: 2008         move.l     a0, d0
000812: 61004be0     bsr.w      $53f4
000816: 4a00         tst.b      d0
000818: 4fef004e     lea.l      $4e(a7), a7
00081c: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
000822: 4e5d         unlk       a5
000824: 4e75         rts        
000826: 4e550000     link.w     a5, #$0
00082a: 48e78000     movem.l    d0, -(a7)
00082e: 6104         bsr.b      $834
000830: 4e5d         unlk       a5
000832: 4e75         rts        
000834: 4e550000     link.w     a5, #$0
000838: 48e7c080     movem.l    d0-d1/a0, -(a7)
00083c: 5d8f         subq.l     #$6, a7
00083e: 1f7c00010001 move.b     #$1, $1(a7)
000844: 4a2e8539     tst.b      -$7ac7(a6)
000848: 671e         beq.b      $868
00084a: 1d7c0001855a move.b     #$1, -$7aa6(a6)
000850: 1d7c0001802f move.b     #$1, -$7fd1(a6)
000856: 223c0000230a move.l     #$230a, d1
00085c: 4eae9a8e     jsr        -$6572(a6)
000860: 4eae9aa0     jsr        -$6560(a6)
000864: 6000011a     bra.w      $980
000868: 700a         moveq      #$a, d0
00086a: b0ae9704     cmp.l      -$68fc(a6), d0
00086e: 6f000110     ble.w      $980
000872: 202e8526     move.l     -$7ada(a6), d0
000876: 61005372     bsr.w      $5bea
00087a: 4aae8024     tst.l      -$7fdc(a6)
00087e: 670000f4     beq.w      $974
000882: 206e8024     movea.l    -$7fdc(a6), a0
000886: 202e852e     move.l     -$7ad2(a6), d0
00088a: b0a80046     cmp.l      $46(a0), d0
00088e: 66000086     bne.w      $916
000892: 206e8024     movea.l    -$7fdc(a6), a0
000896: 2028003c     move.l     $3c(a0), d0
00089a: 2f400002     move.l     d0, $2(a7)
00089e: 7201         moveq      #$1, d1
0008a0: b280         cmp.l      d0, d1
0008a2: 6c000072     bge.w      $916
0008a6: 41ee84a8     lea.l      -$7b58(a6), a0
0008aa: 2008         move.l     a0, d0
0008ac: 61007018     bsr.w      $78c6
0008b0: 4a80         tst.l      d0
0008b2: 6d62         blt.b      $916
0008b4: 0c6e000184c6 cmpi.w     #$1, -$7b3a(a6)
0008ba: 675a         beq.b      $916
0008bc: 61001f06     bsr.w      $27c4
0008c0: 4a00         tst.b      d0
0008c2: 6752         beq.b      $916
0008c4: 202e854c     move.l     -$7ab4(a6), d0
0008c8: 61001306     bsr.w      $1bd0
0008cc: 2f00         move.l     d0, -(a7)
0008ce: 2f2e854c     move.l     -$7ab4(a6), -(a7)
0008d2: 222e8024     move.l     -$7fdc(a6), d1
0008d6: 206e851e     movea.l    -$7ae2(a6), a0
0008da: 202800bc     move.l     $bc(a0), d0
0008de: 6100322e     bsr.w      $3b0e
0008e2: 508f         addq.l     #$8, a7
0008e4: 206e8024     movea.l    -$7fdc(a6), a0
0008e8: 202f0002     move.l     $2(a7), d0
0008ec: b0a8003c     cmp.l      $3c(a0), d0
0008f0: 6724         beq.b      $916
0008f2: 1d7c0001855a move.b     #$1, -$7aa6(a6)
0008f8: 1d7c0001802f move.b     #$1, -$7fd1(a6)
0008fe: 70ff         moveq      #$ff, d0
000900: 2d40852a     move.l     d0, -$7ad6(a6)
000904: 223c0000230a move.l     #$230a, d1
00090a: 4eae9a8e     jsr        -$6572(a6)
00090e: 4eae9aa0     jsr        -$6560(a6)
000912: 422f0001     clr.b      $1(a7)
000916: 0c2f00010001 cmpi.b     #$1, $1(a7)
00091c: 665a         bne.b      $978
00091e: 1d7c0001802f move.b     #$1, -$7fd1(a6)
000924: 4aae854c     tst.l      -$7ab4(a6)
000928: 6744         beq.b      $96e
00092a: 4aae8540     tst.l      -$7ac0(a6)
00092e: 663e         bne.b      $96e
000930: 4a2e8532     tst.b      -$7ace(a6)
000934: 670c         beq.b      $942
000936: 222e8024     move.l     -$7fdc(a6), d1
00093a: 7003         moveq      #$3, d0
00093c: 61002028     bsr.w      $2966
000940: 602c         bra.b      $96e
000942: 7007         moveq      #$7, d0
000944: b0ae855c     cmp.l      -$7aa4(a6), d0
000948: 6724         beq.b      $96e
00094a: 4a2e8534     tst.b      -$7acc(a6)
00094e: 6606         bne.b      $956
000950: 4a2e8533     tst.b      -$7acd(a6)
000954: 670c         beq.b      $962
000956: 222e8024     move.l     -$7fdc(a6), d1
00095a: 7002         moveq      #$2, d0
00095c: 61002008     bsr.w      $2966
000960: 6008         bra.b      $96a
000962: 7201         moveq      #$1, d1
000964: 7004         moveq      #$4, d0
000966: 61001b36     bsr.w      $249e
00096a: 61004060     bsr.w      $49cc
00096e: 422e802f     clr.b      -$7fd1(a6)
000972: 6004         bra.b      $978
000974: 61002138     bsr.w      $2aae
000978: 202e8526     move.l     -$7ada(a6), d0
00097c: 6100527e     bsr.w      $5bfc
000980: 5c8f         addq.l     #$6, a7
000982: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000988: 4e5d         unlk       a5
00098a: 4e75         rts        
00098c: 4e550000     link.w     a5, #$0
000990: 48e7c080     movem.l    d0-d1/a0, -(a7)
000994: 422e8532     clr.b      -$7ace(a6)
000998: 42ae8024     clr.l      -$7fdc(a6)
00099c: 42ae853c     clr.l      -$7ac4(a6)
0009a0: 70ff         moveq      #$ff, d0
0009a2: 2d40852a     move.l     d0, -$7ad6(a6)
0009a6: 70f7         moveq      #$f7, d0
0009a8: 2d40852e     move.l     d0, -$7ad2(a6)
0009ac: 42ae8540     clr.l      -$7ac0(a6)
0009b0: 42ae8550     clr.l      -$7ab0(a6)
0009b4: 42ae854c     clr.l      -$7ab4(a6)
0009b8: 422e8538     clr.b      -$7ac8(a6)
0009bc: 422e8539     clr.b      -$7ac7(a6)
0009c0: 426e8252     clr.w      -$7dae(a6)
0009c4: 422e8536     clr.b      -$7aca(a6)
0009c8: 422e855a     clr.b      -$7aa6(a6)
0009cc: 42ae8554     clr.l      -$7aac(a6)
0009d0: 422e8537     clr.b      -$7ac9(a6)
0009d4: 422e8535     clr.b      -$7acb(a6)
0009d8: 422e8533     clr.b      -$7acd(a6)
0009dc: 422e8534     clr.b      -$7acc(a6)
0009e0: 422e8568     clr.b      -$7a98(a6)
0009e4: 422e8569     clr.b      -$7a97(a6)
0009e8: 70ff         moveq      #$ff, d0
0009ea: 2d40856c     move.l     d0, -$7a94(a6)
0009ee: 486e8544     pea.l      -$7abc(a6)
0009f2: 7200         moveq      #$0, d1
0009f4: 7000         moveq      #$0, d0
0009f6: 206e8c3c     movea.l    -$73c4(a6), a0
0009fa: 4e90         jsr        (a0)
0009fc: 588f         addq.l     #$4, a7
0009fe: 422e853a     clr.b      -$7ac6(a6)
000a02: 422e851c     clr.b      -$7ae4(a6)
000a06: 70ff         moveq      #$ff, d0
000a08: 2d408560     move.l     d0, -$7aa0(a6)
000a0c: 1d7c0001856a move.b     #$1, -$7a96(a6)
000a12: 6100168a     bsr.w      $209e
000a16: 4a00         tst.b      d0
000a18: 6610         bne.b      $a2a
000a1a: 223c00002303 move.l     #$2303, d1
000a20: 4eae9a8e     jsr        -$6572(a6)
000a24: 61007cb0     bsr.w      $86d6
000a28: 600a         bra.b      $a34
000a2a: 223c00002320 move.l     #$2320, d1
000a30: 202e9624     move.l     -$69dc(a6), d0
000a34: 4eae9aa0     jsr        -$6560(a6)
000a38: 4a2e8559     tst.b      -$7aa7(a6)
000a3c: 6706         beq.b      $a44
000a3e: 422e8559     clr.b      -$7aa7(a6)
000a42: 6018         bra.b      $a5c
000a44: 7000         moveq      #$0, d0
000a46: 102e9832     move.b     -$67ce(a6), d0
000a4a: 61002652     bsr.w      $309e
000a4e: 4a00         tst.b      d0
000a50: 670a         beq.b      $a5c
000a52: 4a2e802c     tst.b      -$7fd4(a6)
000a56: 6604         bne.b      $a5c
000a58: 61002f60     bsr.w      $39ba
000a5c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000a62: 4e5d         unlk       a5
000a64: 4e75         rts        
000a66: 4e550000     link.w     a5, #$0
000a6a: 48e78000     movem.l    d0, -(a7)
000a6e: 610009e8     bsr.w      $1458
000a72: 4e5d         unlk       a5
000a74: 4e75         rts        
000a76: 4e550000     link.w     a5, #$0
000a7a: 48e7c000     movem.l    d0-d1, -(a7)
000a7e: 4a2e802c     tst.b      -$7fd4(a6)
000a82: 6710         beq.b      $a94
000a84: 0c6e000184c6 cmpi.w     #$1, -$7b3a(a6)
000a8a: 6708         beq.b      $a94
000a8c: 0c6e000284c6 cmpi.w     #$2, -$7b3a(a6)
000a92: 6604         bne.b      $a98
000a94: 61002f24     bsr.w      $39ba
000a98: 7000         moveq      #$0, d0
000a9a: 102e9832     move.b     -$67ce(a6), d0
000a9e: 610025dc     bsr.w      $307c
000aa2: 4a00         tst.b      d0
000aa4: 6706         beq.b      $aac
000aa6: 7016         moveq      #$16, d0
000aa8: 61005d54     bsr.w      $67fe
000aac: 223c00002321 move.l     #$2321, d1
000ab2: 202e9624     move.l     -$69dc(a6), d0
000ab6: 4eae9aa0     jsr        -$6560(a6)
000aba: 61002900     bsr.w      $33bc
000abe: 61002ea8     bsr.w      $3968
000ac2: 4ced0002fffc movem.l    -$4(a5), d1
000ac8: 4e5d         unlk       a5
000aca: 4e75         rts        
000acc: 4e550000     link.w     a5, #$0
000ad0: 48e78000     movem.l    d0, -(a7)
000ad4: 7021         moveq      #$21, d0
000ad6: 2d408578     move.l     d0, -$7a88(a6)
000ada: 4e5d         unlk       a5
000adc: 4e75         rts        
000ade: 4e550000     link.w     a5, #$0
000ae2: 48e78000     movem.l    d0, -(a7)
000ae6: 702c         moveq      #$2c, d0
000ae8: 2d408578     move.l     d0, -$7a88(a6)
000aec: 4e5d         unlk       a5
000aee: 4e75         rts        
000af0: 4e550000     link.w     a5, #$0
000af4: 48e78000     movem.l    d0, -(a7)
000af8: 610047c8     bsr.w      $52c2
000afc: 4a00         tst.b      d0
000afe: 4e5d         unlk       a5
000b00: 4e75         rts        
000b02: 4e550000     link.w     a5, #$0
000b06: 48e7fc80     movem.l    d0-d5/a0, -(a7)
000b0a: 4fefffa2     lea.l      -$5e(a7), a7
000b0e: 206f0082     movea.l    $82(a7), a0
000b12: 2f6800180002 move.l     $18(a0), $2(a7)
000b18: 206f0002     movea.l    $2(a7), a0
000b1c: 4a280057     tst.b      $57(a0)
000b20: 6606         bne.b      $b28
000b22: 422f0001     clr.b      $1(a7)
000b26: 600a         bra.b      $b32
000b28: 206f0002     movea.l    $2(a7), a0
000b2c: 1f68005a0001 move.b     $5a(a0), $1(a7)
000b32: 206f0002     movea.l    $2(a7), a0
000b36: 1ea8005c     move.b     $5c(a0), (a7)
000b3a: 202f0062     move.l     $62(a7), d0
000b3e: 4e4f         trap       #$f
000b40: 002048ef     ori.b      #$ef, -(a0)
000b44: 00030056     ori.b      #$56, d3
000b48: 0c170008     cmpi.b     #$8, (a7)
000b4c: 6624         bne.b      $b72
000b4e: 7000         moveq      #$0, d0
000b50: 102f0001     move.b     $1(a7), d0
000b54: 41ee9684     lea.l      -$697c(a6), a0
000b58: 20300c00     move.l     (a0, d0.l * 4), d0
000b5c: 4e4f         trap       #$f
000b5e: 002048ef     ori.b      #$ef, -(a0)
000b62: 0003004e     ori.b      #$4e, d3
000b66: 7000         moveq      #$0, d0
000b68: 102f0001     move.b     $1(a7), d0
000b6c: 41ee9668     lea.l      -$6998(a6), a0
000b70: 6022         bra.b      $b94
000b72: 7000         moveq      #$0, d0
000b74: 102f0001     move.b     $1(a7), d0
000b78: 41ee964c     lea.l      -$69b4(a6), a0
000b7c: 20300c00     move.l     (a0, d0.l * 4), d0
000b80: 4e4f         trap       #$f
000b82: 002048ef     ori.b      #$ef, -(a0)
000b86: 0003004e     ori.b      #$4e, d3
000b8a: 7000         moveq      #$0, d0
000b8c: 102f0001     move.b     $1(a7), d0
000b90: 41ee9630     lea.l      -$69d0(a6), a0
000b94: 20300c00     move.l     (a0, d0.l * 4), d0
000b98: 4e4f         trap       #$f
000b9a: 002048ef     ori.b      #$ef, -(a0)
000b9e: 00030046     ori.b      #$46, d3
000ba2: 206e8024     movea.l    -$7fdc(a6), a0
000ba6: 7001         moveq      #$1, d0
000ba8: b0a8003c     cmp.l      $3c(a0), d0
000bac: 6c12         bge.b      $bc0
000bae: 2f7ccccccccd0042 move.l     #$cccccccd, $42(a7)
000bb6: 2f7c3feccccc003e move.l     #$3feccccc, $3e(a7)
000bbe: 6022         bra.b      $be2
000bc0: 4a2f0089     tst.b      $89(a7)
000bc4: 670e         beq.b      $bd4
000bc6: 223ccccccccd move.l     #$cccccccd, d1
000bcc: 203c3feccccc move.l     #$3feccccc, d0
000bd2: 6008         bra.b      $bdc
000bd4: 7200         moveq      #$0, d1
000bd6: 203c40080000 move.l     #$40080000, d0
000bdc: 48ef0003003e movem.l    d0-d1, $3e(a7)
000be2: 6100057e     bsr.w      $1162
000be6: 4a00         tst.b      d0
000be8: 660c         bne.b      $bf6
000bea: 42af003a     clr.l      $3a(a7)
000bee: 42af0036     clr.l      $36(a7)
000bf2: 600000a0     bra.w      $c94
000bf6: 4cef00030056 movem.l    $56(a7), d0-d1
000bfc: 4cef000c004e movem.l    $4e(a7), d2-d3
000c02: 4e4f         trap       #$f
000c04: 00146e22     ori.b      #$22, (a4)
000c08: 4cef000c003e movem.l    $3e(a7), d2-d3
000c0e: 4cef0003004e movem.l    $4e(a7), d0-d1
000c14: 4e4f         trap       #$f
000c16: 0012263c     ori.b      #$3c, (a2)
000c1a: cccc         .dc.w      $cccc
000c1c: cccd         .dc.w      $cccd
000c1e: 243c400ccccc move.l     #$400ccccc, d2
000c24: 4e4f         trap       #$f
000c26: 00136064     ori.b      #$64, (a3)
000c2a: 4cef000c004e movem.l    $4e(a7), d2-d3
000c30: 4cef0003004e movem.l    $4e(a7), d0-d1
000c36: 4e4f         trap       #$f
000c38: 00122a01     ori.b      #$1, (a2)
000c3c: 2800         move.l     d0, d4
000c3e: 4cef000c0056 movem.l    $56(a7), d2-d3
000c44: 4cef00030056 movem.l    $56(a7), d0-d1
000c4a: 4e4f         trap       #$f
000c4c: 00122605     ori.b      #$5, (a2)
000c50: 2404         move.l     d4, d2
000c52: 4e4f         trap       #$f
000c54: 00107600     ori.b      #$0, (a0)
000c58: 243c404a0000 move.l     #$404a0000, d2
000c5e: 4e4f         trap       #$f
000c60: 00132a01     ori.b      #$1, (a3)
000c64: 2800         move.l     d0, d4
000c66: 4cef000c003e movem.l    $3e(a7), d2-d3
000c6c: 4cef00030056 movem.l    $56(a7), d0-d1
000c72: 4e4f         trap       #$f
000c74: 0012263c     ori.b      #$3c, (a2)
000c78: cccc         .dc.w      $cccc
000c7a: cccd         .dc.w      $cccd
000c7c: 243c400ccccc move.l     #$400ccccc, d2
000c82: 4e4f         trap       #$f
000c84: 00132605     ori.b      #$5, (a3)
000c88: 2404         move.l     d4, d2
000c8a: 4e4f         trap       #$f
000c8c: 000e         .dc.w      $000e
000c8e: 48ef00030036 movem.l    d0-d1, $36(a7)
000c94: 4cef00030056 movem.l    $56(a7), d0-d1
000c9a: 4cef000c004e movem.l    $4e(a7), d2-d3
000ca0: 4e4f         trap       #$f
000ca2: 00146e10     ori.b      #$10, (a4)
000ca6: 7600         moveq      #$0, d3
000ca8: 243c40240000 move.l     #$40240000, d2
000cae: 4cef0003004e movem.l    $4e(a7), d0-d1
000cb4: 600e         bra.b      $cc4
000cb6: 7600         moveq      #$0, d3
000cb8: 243c40240000 move.l     #$40240000, d2
000cbe: 4cef00030056 movem.l    $56(a7), d0-d1
000cc4: 4e4f         trap       #$f
000cc6: 0012263c     ori.b      #$3c, (a2)
000cca: cccc         .dc.w      $cccc
000ccc: cccd         .dc.w      $cccd
000cce: 243c400ccccc move.l     #$400ccccc, d2
000cd4: 4e4f         trap       #$f
000cd6: 00132a01     ori.b      #$1, (a3)
000cda: 2800         move.l     d0, d4
000cdc: 202f008a     move.l     $8a(a7), d0
000ce0: 4e4f         trap       #$f
000ce2: 00204cef     ori.b      #$ef, -(a0)
000ce6: 000c         .dc.w      $000c
000ce8: 00364e4f000e ori.b      #$4f, $e(a6, d0.w)
000cee: 2605         move.l     d5, d3
000cf0: 2404         move.l     d4, d2
000cf2: 4e4f         trap       #$f
000cf4: 000e         .dc.w      $000e
000cf6: 48ef0003002e movem.l    d0-d1, $2e(a7)
000cfc: 0c2f00040001 cmpi.b     #$4, $1(a7)
000d02: 6256         bhi.b      $d5a
000d04: 202f0002     move.l     $2(a7), d0
000d08: 61002f9a     bsr.w      $3ca4
000d0c: 0c000001     cmpi.b     #$1, d0
000d10: 6648         bne.b      $d5a
000d12: 0c170008     cmpi.b     #$8, (a7)
000d16: 660c         bne.b      $d24
000d18: 7000         moveq      #$0, d0
000d1a: 102f0001     move.b     $1(a7), d0
000d1e: 41ee96a4     lea.l      -$695c(a6), a0
000d22: 600a         bra.b      $d2e
000d24: 7000         moveq      #$0, d0
000d26: 102f0001     move.b     $1(a7), d0
000d2a: 41ee96c0     lea.l      -$6940(a6), a0
000d2e: 20300c00     move.l     (a0, d0.l * 4), d0
000d32: 4e4f         trap       #$f
000d34: 002048ef     ori.b      #$ef, -(a0)
000d38: 00030006     ori.b      #$6, d3
000d3c: 4cef0003002e movem.l    $2e(a7), d0-d1
000d42: 4cef000c0006 movem.l    $6(a7), d2-d3
000d48: 4e4f         trap       #$f
000d4a: 00146c0c     ori.b      #$c, (a4)
000d4e: 2f6f000a0032 move.l     $a(a7), $32(a7)
000d54: 2f6f0006002e move.l     $6(a7), $2e(a7)
000d5a: 202f008e     move.l     $8e(a7), d0
000d5e: 4e4f         trap       #$f
000d60: 00204cef     ori.b      #$ef, -(a0)
000d64: 000c         .dc.w      $000c
000d66: 00364e4f000e ori.b      #$4f, $e(a6, d0.w)
000d6c: 48ef00030036 movem.l    d0-d1, $36(a7)
000d72: 4cef00030056 movem.l    $56(a7), d0-d1
000d78: 4cef000c004e movem.l    $4e(a7), d2-d3
000d7e: 4e4f         trap       #$f
000d80: 00146e08     ori.b      #$8, (a4)
000d84: 4cef0003004e movem.l    $4e(a7), d0-d1
000d8a: 6006         bra.b      $d92
000d8c: 4cef00030056 movem.l    $56(a7), d0-d1
000d92: 7600         moveq      #$0, d3
000d94: 243c40240000 move.l     #$40240000, d2
000d9a: 4e4f         trap       #$f
000d9c: 0012263c     ori.b      #$3c, (a2)
000da0: cccc         .dc.w      $cccc
000da2: cccd         .dc.w      $cccd
000da4: 243c400ccccc move.l     #$400ccccc, d2
000daa: 4e4f         trap       #$f
000dac: 00134cef     ori.b      #$ef, (a3)
000db0: 000c         .dc.w      $000c
000db2: 002e4e4f000e ori.b      #$4f, $e(a6)
000db8: 48ef00030026 movem.l    d0-d1, $26(a7)
000dbe: 206f0002     movea.l    $2(a7), a0
000dc2: 4a280057     tst.b      $57(a0)
000dc6: 664e         bne.b      $e16
000dc8: 41fa2cb9     lea.l      $3a83(pc), a0
000dcc: 2208         move.l     a0, d1
000dce: 202e851e     move.l     -$7ae2(a6), d0
000dd2: 4eae9aac     jsr        -$6554(a6)
000dd6: 4a80         tst.l      d0
000dd8: 6712         beq.b      $dec
000dda: 41fa2cb5     lea.l      $3a91(pc), a0
000dde: 2208         move.l     a0, d1
000de0: 202e851e     move.l     -$7ae2(a6), d0
000de4: 4eae9aac     jsr        -$6554(a6)
000de8: 4a80         tst.l      d0
000dea: 662a         bne.b      $e16
000dec: 4cef00030056 movem.l    $56(a7), d0-d1
000df2: 4cef000c004e movem.l    $4e(a7), d2-d3
000df8: 4e4f         trap       #$f
000dfa: 00146e08     ori.b      #$8, (a4)
000dfe: 4cef0003004e movem.l    $4e(a7), d0-d1
000e04: 6006         bra.b      $e0c
000e06: 4cef00030056 movem.l    $56(a7), d0-d1
000e0c: 7600         moveq      #$0, d3
000e0e: 243c404e0000 move.l     #$404e0000, d2
000e14: 6028         bra.b      $e3e
000e16: 4cef00030056 movem.l    $56(a7), d0-d1
000e1c: 4cef000c004e movem.l    $4e(a7), d2-d3
000e22: 4e4f         trap       #$f
000e24: 00146e08     ori.b      #$8, (a4)
000e28: 4cef0003004e movem.l    $4e(a7), d0-d1
000e2e: 6006         bra.b      $e36
000e30: 4cef00030056 movem.l    $56(a7), d0-d1
000e36: 7600         moveq      #$0, d3
000e38: 243c40240000 move.l     #$40240000, d2
000e3e: 4e4f         trap       #$f
000e40: 0012263c     ori.b      #$3c, (a2)
000e44: cccc         .dc.w      $cccc
000e46: cccd         .dc.w      $cccd
000e48: 243c400ccccc move.l     #$400ccccc, d2
000e4e: 4e4f         trap       #$f
000e50: 00134cef     ori.b      #$ef, (a3)
000e54: 000c         .dc.w      $000c
000e56: 00264e4f     ori.b      #$4f, -(a6)
000e5a: 000e         .dc.w      $000e
000e5c: 48ef0003001e movem.l    d0-d1, $1e(a7)
000e62: 4cef00030056 movem.l    $56(a7), d0-d1
000e68: 4cef000c004e movem.l    $4e(a7), d2-d3
000e6e: 4e4f         trap       #$f
000e70: 00146e08     ori.b      #$8, (a4)
000e74: 4cef0003004e movem.l    $4e(a7), d0-d1
000e7a: 6006         bra.b      $e82
000e7c: 4cef00030056 movem.l    $56(a7), d0-d1
000e82: 7600         moveq      #$0, d3
000e84: 243c40240000 move.l     #$40240000, d2
000e8a: 4e4f         trap       #$f
000e8c: 0012263c     ori.b      #$3c, (a2)
000e90: cccc         .dc.w      $cccc
000e92: cccd         .dc.w      $cccd
000e94: 243c400ccccc move.l     #$400ccccc, d2
000e9a: 4e4f         trap       #$f
000e9c: 00134cef     ori.b      #$ef, (a3)
000ea0: 000c         .dc.w      $000c
000ea2: 001e4e4f     ori.b      #$4f, (a6)+
000ea6: 000e         .dc.w      $000e
000ea8: 48ef00030016 movem.l    d0-d1, $16(a7)
000eae: 7600         moveq      #$0, d3
000eb0: 243c412e847e move.l     #$412e847e, d2
000eb6: 4cef00030016 movem.l    $16(a7), d0-d1
000ebc: 4e4f         trap       #$f
000ebe: 000e         .dc.w      $000e
000ec0: 48ef0003000e movem.l    d0-d1, $e(a7)
000ec6: 4cef00030036 movem.l    $36(a7), d0-d1
000ecc: 4e4f         trap       #$f
000ece: 0024206f     ori.b      #$6f, -(a4)
000ed2: 005e2080     ori.w      #$2080, (a6)+
000ed6: 4cef0003002e movem.l    $2e(a7), d0-d1
000edc: 4e4f         trap       #$f
000ede: 0024206f     ori.b      #$6f, -(a4)
000ee2: 005e2140     ori.w      #$2140, (a6)+
000ee6: 00044cef     ori.b      #$ef, d4
000eea: 00030026     ori.b      #$26, d3
000eee: 4e4f         trap       #$f
000ef0: 0024206f     ori.b      #$6f, -(a4)
000ef4: 005e2140     ori.w      #$2140, (a6)+
000ef8: 0008         .dc.w      $0008
000efa: 4cef0003001e movem.l    $1e(a7), d0-d1
000f00: 4e4f         trap       #$f
000f02: 0024206f     ori.b      #$6f, -(a4)
000f06: 005e2140     ori.w      #$2140, (a6)+
000f0a: 000c         .dc.w      $000c
000f0c: 4cef00030016 movem.l    $16(a7), d0-d1
000f12: 4e4f         trap       #$f
000f14: 0024206f     ori.b      #$6f, -(a4)
000f18: 005e2140     ori.w      #$2140, (a6)+
000f1c: 00104cef     ori.b      #$ef, (a0)
000f20: 0003000e     ori.b      #$e, d3
000f24: 4e4f         trap       #$f
000f26: 0024206f     ori.b      #$6f, -(a4)
000f2a: 005e2140     ori.w      #$2140, (a6)+
000f2e: 00144cef     ori.b      #$ef, (a4)
000f32: 00030016     ori.b      #$16, d3
000f36: 4e4f         trap       #$f
000f38: 0024206f     ori.b      #$6f, -(a4)
000f3c: 005e2140     ori.w      #$2140, (a6)+
000f40: 00184cef     ori.b      #$ef, (a0)+
000f44: 0003000e     ori.b      #$e, d3
000f48: 4e4f         trap       #$f
000f4a: 0024206f     ori.b      #$6f, -(a4)
000f4e: 005e2140     ori.w      #$2140, (a6)+
000f52: 001c7003     ori.b      #$3, (a4)+
000f56: 4c2f00000062 mulu.l     $62(a7), d0
000f5c: 4e4f         trap       #$f
000f5e: 0020263c     ori.b      #$3c, -(a0)
000f62: cccc         .dc.w      $cccc
000f64: cccd         .dc.w      $cccd
000f66: 243c400ccccc move.l     #$400ccccc, d2
000f6c: 4e4f         trap       #$f
000f6e: 00134e4f     ori.b      #$4f, (a3)
000f72: 0024206f     ori.b      #$6f, -(a4)
000f76: 005e2140     ori.w      #$2140, (a6)+
000f7a: 00204fef     ori.b      #$ef, -(a0)
000f7e: 005e4ced     ori.w      #$4ced, (a6)+
000f82: 013cffec4e5d btst.l     d0, #$ffec4e5d
000f88: 4e75         rts        
000f8a: 4e550000     link.w     a5, #$0
000f8e: 48e78080     movem.l    d0/a0, -(a7)
000f92: 41fa2b01     lea.l      $3a95(pc), a0
000f96: 2008         move.l     a0, d0
000f98: 61004428     bsr.w      $53c2
000f9c: 610057c8     bsr.w      $6766
000fa0: 61004cde     bsr.w      $5c80
000fa4: 7001         moveq      #$1, d0
000fa6: 4ced0100fffc movem.l    -$4(a5), a0
000fac: 4e5d         unlk       a5
000fae: 4e75         rts        
000fb0: 4e550000     link.w     a5, #$0
000fb4: 48e78080     movem.l    d0/a0, -(a7)
000fb8: 4aae8024     tst.l      -$7fdc(a6)
000fbc: 670e         beq.b      $fcc
000fbe: 206e8024     movea.l    -$7fdc(a6), a0
000fc2: 202e852e     move.l     -$7ad2(a6), d0
000fc6: b0a80046     cmp.l      $46(a0), d0
000fca: 6706         beq.b      $fd2
000fcc: 4a2e8532     tst.b      -$7ace(a6)
000fd0: 6704         beq.b      $fd6
000fd2: 7001         moveq      #$1, d0
000fd4: 6002         bra.b      $fd8
000fd6: 7000         moveq      #$0, d0
000fd8: 4ced0100fffc movem.l    -$4(a5), a0
000fde: 4e5d         unlk       a5
000fe0: 4e75         rts        
000fe2: 4e550000     link.w     a5, #$0
000fe6: 48e78880     movem.l    d0/d4/a0, -(a7)
000fea: 2057         movea.l    (a7), a0
000fec: 18280010     move.b     $10(a0), d4
000ff0: 0c04000f     cmpi.b     #$f, d4
000ff4: 6710         beq.b      $1006
000ff6: 0c040010     cmpi.b     #$10, d4
000ffa: 670a         beq.b      $1006
000ffc: 2017         move.l     (a7), d0
000ffe: 61001304     bsr.w      $2304
001002: 4a00         tst.b      d0
001004: 6704         beq.b      $100a
001006: 7001         moveq      #$1, d0
001008: 6002         bra.b      $100c
00100a: 7000         moveq      #$0, d0
00100c: 4ced0110fff8 movem.l    -$8(a5), d4/a0
001012: 4e5d         unlk       a5
001014: 4e75         rts        
001016: 4e550000     link.w     a5, #$0
00101a: 48e78c80     movem.l    d0/d4-d5/a0, -(a7)
00101e: 2057         movea.l    (a7), a0
001020: 1a280010     move.b     $10(a0), d5
001024: 0c050012     cmpi.b     #$12, d5
001028: 670c         beq.b      $1036
00102a: 0c050003     cmpi.b     #$3, d5
00102e: 6706         beq.b      $1036
001030: 0c050002     cmpi.b     #$2, d5
001034: 6652         bne.b      $1088
001036: 283c0000233f move.l     #$233f, d4
00103c: 60000078     bra.w      $10b6
001040: 0c05000f     cmpi.b     #$f, d5
001044: 670a         beq.b      $1050
001046: 2017         move.l     (a7), d0
001048: 610012ba     bsr.w      $2304
00104c: 4a00         tst.b      d0
00104e: 6708         beq.b      $1058
001050: 283c00002341 move.l     #$2341, d4
001056: 605e         bra.b      $10b6
001058: 283c0000233d move.l     #$233d, d4
00105e: 6056         bra.b      $10b6
001060: 0c05000f     cmpi.b     #$f, d5
001064: 670a         beq.b      $1070
001066: 2017         move.l     (a7), d0
001068: 6100129a     bsr.w      $2304
00106c: 4a00         tst.b      d0
00106e: 6708         beq.b      $1078
001070: 283c00002342 move.l     #$2342, d4
001076: 603e         bra.b      $10b6
001078: 283c0000233e move.l     #$233e, d4
00107e: 6036         bra.b      $10b6
001080: 283c00002340 move.l     #$2340, d4
001086: 602e         bra.b      $10b6
001088: 2057         movea.l    (a7), a0
00108a: 7000         moveq      #$0, d0
00108c: 10280044     move.b     $44(a0), d0
001090: 0c8000000037 cmpi.l     #$37, d0
001096: 67e8         beq.b      $1080
001098: 6212         bhi.b      $10ac
00109a: 0c000016     cmpi.b     #$16, d0
00109e: 67c0         beq.b      $1060
0010a0: 6214         bhi.b      $10b6
0010a2: 0c00000b     cmpi.b     #$b, d0
0010a6: 6700ff98     beq.w      $1040
0010aa: 600a         bra.b      $10b6
0010ac: 0c8000000042 cmpi.l     #$42, d0
0010b2: 6700ff82     beq.w      $1036
0010b6: 2004         move.l     d4, d0
0010b8: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
0010be: 4e5d         unlk       a5
0010c0: 4e75         rts        
0010c2: 4e550000     link.w     a5, #$0
0010c6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0010ca: 206f0004     movea.l    $4(a7), a0
0010ce: 2257         movea.l    (a7), a1
0010d0: 30290004     move.w     $4(a1), d0
0010d4: b0680004     cmp.w      $4(a0), d0
0010d8: 6620         bne.b      $10fa
0010da: 206f0004     movea.l    $4(a7), a0
0010de: 2257         movea.l    (a7), a1
0010e0: 2011         move.l     (a1), d0
0010e2: b090         cmp.l      (a0), d0
0010e4: 6614         bne.b      $10fa
0010e6: 206f0004     movea.l    $4(a7), a0
0010ea: 2257         movea.l    (a7), a1
0010ec: 30290006     move.w     $6(a1), d0
0010f0: b0680006     cmp.w      $6(a0), d0
0010f4: 6604         bne.b      $10fa
0010f6: 7001         moveq      #$1, d0
0010f8: 6002         bra.b      $10fc
0010fa: 7000         moveq      #$0, d0
0010fc: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001102: 4e5d         unlk       a5
001104: 4e75         rts        
001106: 4e550000     link.w     a5, #$0
00110a: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
00110e: 4feffff0     lea.l      -$10(a7), a7
001112: 7801         moveq      #$1, d4
001114: 246f0010     movea.l    $10(a7), a2
001118: 602e         bra.b      $1148
00111a: 4857         pea.l      (a7)
00111c: 200b         move.l     a3, d0
00111e: 5880         addq.l     #$4, d0
001120: 2200         move.l     d0, d1
001122: 200a         move.l     a2, d0
001124: 5880         addq.l     #$4, d0
001126: 206e8c7c     movea.l    -$7384(a6), a0
00112a: 4e90         jsr        (a0)
00112c: 588f         addq.l     #$4, a7
00112e: 222f0014     move.l     $14(a7), d1
001132: 41d7         lea.l      (a7), a0
001134: 2008         move.l     a0, d0
001136: 206e8d30     movea.l    -$72d0(a6), a0
00113a: 4e90         jsr        (a0)
00113c: 4880         ext.w      d0
00113e: 02400003     andi.w     #$3, d0
001142: 660e         bne.b      $1152
001144: 5284         addq.l     #$1, d4
001146: 244b         movea.l    a3, a2
001148: 200a         move.l     a2, d0
00114a: 6706         beq.b      $1152
00114c: 2652         movea.l    (a2), a3
00114e: 200b         move.l     a3, d0
001150: 66c8         bne.b      $111a
001152: 2004         move.l     d4, d0
001154: 4fef0010     lea.l      $10(a7), a7
001158: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
00115e: 4e5d         unlk       a5
001160: 4e75         rts        
001162: 4e550000     link.w     a5, #$0
001166: 48e78080     movem.l    d0/a0, -(a7)
00116a: 598f         subq.l     #$4, a7
00116c: 41d7         lea.l      (a7), a0
00116e: 2008         move.l     a0, d0
001170: 610068e6     bsr.w      $7a58
001174: 4a80         tst.l      d0
001176: 6d0a         blt.b      $1182
001178: 7001         moveq      #$1, d0
00117a: b097         cmp.l      (a7), d0
00117c: 6604         bne.b      $1182
00117e: 7001         moveq      #$1, d0
001180: 6002         bra.b      $1184
001182: 7000         moveq      #$0, d0
001184: 588f         addq.l     #$4, a7
001186: 4ced0100fffc movem.l    -$4(a5), a0
00118c: 4e5d         unlk       a5
00118e: 4e75         rts        
001190: 4e550000     link.w     a5, #$0
001194: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001198: 4a97         tst.l      (a7)
00119a: 672a         beq.b      $11c6
00119c: 704c         moveq      #$4c, d0
00119e: d097         add.l      (a7), d0
0011a0: 2200         move.l     d0, d1
0011a2: 202f0004     move.l     $4(a7), d0
0011a6: 5080         addq.l     #$8, d0
0011a8: 61002b72     bsr.w      $3d1c
0011ac: 4a00         tst.b      d0
0011ae: 6716         beq.b      $11c6
0011b0: 2057         movea.l    (a7), a0
0011b2: 226f0004     movea.l    $4(a7), a1
0011b6: 7000         moveq      #$0, d0
0011b8: 1029001c     move.b     $1c(a1), d0
0011bc: b0a80018     cmp.l      $18(a0), d0
0011c0: 6604         bne.b      $11c6
0011c2: 7001         moveq      #$1, d0
0011c4: 6002         bra.b      $11c8
0011c6: 7000         moveq      #$0, d0
0011c8: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0011ce: 4e5d         unlk       a5
0011d0: 4e75         rts        
0011d2: 4e550000     link.w     a5, #$0
0011d6: 48e7c000     movem.l    d0-d1, -(a7)
0011da: 70ff         moveq      #$ff, d0
0011dc: 2d408560     move.l     d0, -$7aa0(a6)
0011e0: 70ff         moveq      #$ff, d0
0011e2: 2d40856c     move.l     d0, -$7a94(a6)
0011e6: 7000         moveq      #$0, d0
0011e8: 102e9832     move.b     -$67ce(a6), d0
0011ec: 61001eb0     bsr.w      $309e
0011f0: 4a00         tst.b      d0
0011f2: 6726         beq.b      $121a
0011f4: 1d7c0001855a move.b     #$1, -$7aa6(a6)
0011fa: 610010a8     bsr.w      $22a4
0011fe: 610027ba     bsr.w      $39ba
001202: 70ff         moveq      #$ff, d0
001204: 2d40852a     move.l     d0, -$7ad6(a6)
001208: 70f7         moveq      #$f7, d0
00120a: 2d40852e     move.l     d0, -$7ad2(a6)
00120e: 422e8569     clr.b      -$7a97(a6)
001212: 422e802c     clr.b      -$7fd4(a6)
001216: 422e802d     clr.b      -$7fd3(a6)
00121a: 2017         move.l     (a7), d0
00121c: 61001e5e     bsr.w      $307c
001220: 4a00         tst.b      d0
001222: 6612         bne.b      $1236
001224: 7000         moveq      #$0, d0
001226: 102e9832     move.b     -$67ce(a6), d0
00122a: 61001e50     bsr.w      $307c
00122e: 4a00         tst.b      d0
001230: 6704         beq.b      $1236
001232: 6100105c     bsr.w      $2290
001236: 223c0000230a move.l     #$230a, d1
00123c: 4eae9a8e     jsr        -$6572(a6)
001240: 61007b7a     bsr.w      $8dbc
001244: 4ced0002fffc movem.l    -$4(a5), d1
00124a: 4e5d         unlk       a5
00124c: 4e75         rts        
00124e: 4e550000     link.w     a5, #$0
001252: 48e78080     movem.l    d0/a0, -(a7)
001256: 4a97         tst.l      (a7)
001258: 6736         beq.b      $1290
00125a: 2057         movea.l    (a7), a0
00125c: 0c2800110010 cmpi.b     #$11, $10(a0)
001262: 6728         beq.b      $128c
001264: 2057         movea.l    (a7), a0
001266: 0c2800120010 cmpi.b     #$12, $10(a0)
00126c: 671e         beq.b      $128c
00126e: 2057         movea.l    (a7), a0
001270: 0c2800160010 cmpi.b     #$16, $10(a0)
001276: 6714         beq.b      $128c
001278: 2057         movea.l    (a7), a0
00127a: 0c2800170010 cmpi.b     #$17, $10(a0)
001280: 670a         beq.b      $128c
001282: 2057         movea.l    (a7), a0
001284: 0c2800180010 cmpi.b     #$18, $10(a0)
00128a: 6604         bne.b      $1290
00128c: 7001         moveq      #$1, d0
00128e: 6002         bra.b      $1292
001290: 7000         moveq      #$0, d0
001292: 4ced0100fffc movem.l    -$4(a5), a0
001298: 4e5d         unlk       a5
00129a: 4e75         rts        
00129c: 4e550000     link.w     a5, #$0
0012a0: 48e78fc0     movem.l    d0/d4-d7/a0-a1, -(a7)
0012a4: 558f         subq.l     #$2, a7
0012a6: 7800         moveq      #$0, d4
0012a8: 0c6e000184c6 cmpi.w     #$1, -$7b3a(a6)
0012ae: 6714         beq.b      $12c4
0012b0: 202e8024     move.l     -$7fdc(a6), d0
0012b4: 6198         bsr.b      $124e
0012b6: 4a00         tst.b      d0
0012b8: 670a         beq.b      $12c4
0012ba: 6100fcf4     bsr.w      $fb0
0012be: 4a00         tst.b      d0
0012c0: 6600012a     bne.w      $13ec
0012c4: 4a6e84c6     tst.w      -$7b3a(a6)
0012c8: 660a         bne.b      $12d4
0012ca: 6100012c     bsr.w      $13f8
0012ce: 4a00         tst.b      d0
0012d0: 6600011a     bne.w      $13ec
0012d4: 4a2e851c     tst.b      -$7ae4(a6)
0012d8: 6714         beq.b      $12ee
0012da: 202e84c0     move.l     -$7b40(a6), d0
0012de: 90ae84fa     sub.l      -$7b06(a6), d0
0012e2: 4c7c000000000064 divu.l     #$64, d0
0012ea: 2800         move.l     d0, d4
0012ec: 6018         bra.b      $1306
0012ee: 41ee84a8     lea.l      -$7b58(a6), a0
0012f2: 43ee84e2     lea.l      -$7b1e(a6), a1
0012f6: 700d         moveq      #$d, d0
0012f8: 22d8         move.l     (a0)+, (a1)+
0012fa: 51c8fffc     dbra       d0, $12f8
0012fe: 32d8         move.w     (a0)+, (a1)+
001300: 1d7c0001851c move.b     #$1, -$7ae4(a6)
001306: 70ff         moveq      #$ff, d0
001308: 2d40856c     move.l     d0, -$7a94(a6)
00130c: 52ae9704     addq.l     #$1, -$68fc(a6)
001310: 202e9704     move.l     -$68fc(a6), d0
001314: b0ae985a     cmp.l      -$67a6(a6), d0
001318: 6f0000d2     ble.w      $13ec
00131c: 0c6e000184c6 cmpi.w     #$1, -$7b3a(a6)
001322: 6604         bne.b      $1328
001324: 7001         moveq      #$1, d0
001326: 6002         bra.b      $132a
001328: 7000         moveq      #$0, d0
00132a: 1e80         move.b     d0, (a7)
00132c: 4aae8554     tst.l      -$7aac(a6)
001330: 660c         bne.b      $133e
001332: 7e0c         moveq      #$c, d7
001334: 1f7c00010001 move.b     #$1, $1(a7)
00133a: 7c04         moveq      #$4, d6
00133c: 6026         bra.b      $1364
00133e: 206e8554     movea.l    -$7aac(a6), a0
001342: 1e280057     move.b     $57(a0), d7
001346: 206e8554     movea.l    -$7aac(a6), a0
00134a: 0c280008005c cmpi.b     #$8, $5c(a0)
001350: 6604         bne.b      $1356
001352: 7001         moveq      #$1, d0
001354: 6002         bra.b      $1358
001356: 7000         moveq      #$0, d0
001358: 1f400001     move.b     d0, $1(a7)
00135c: 206e8554     movea.l    -$7aac(a6), a0
001360: 1c28005a     move.b     $5a(a0), d6
001364: 4a17         tst.b      (a7)
001366: 672c         beq.b      $1394
001368: 4a2f0001     tst.b      $1(a7)
00136c: 671a         beq.b      $1388
00136e: 4a07         tst.b      d7
001370: 6716         beq.b      $1388
001372: 0c070002     cmpi.b     #$2, d7
001376: 6710         beq.b      $1388
001378: 0c070001     cmpi.b     #$1, d7
00137c: 670a         beq.b      $1388
00137e: 0c070003     cmpi.b     #$3, d7
001382: 6704         beq.b      $1388
001384: 7003         moveq      #$3, d0
001386: 6002         bra.b      $138a
001388: 7005         moveq      #$5, d0
00138a: 4c2e0000985e mulu.l     -$67a2(a6), d0
001390: 2a00         move.l     d0, d5
001392: 604c         bra.b      $13e0
001394: 4a07         tst.b      d7
001396: 67f0         beq.b      $1388
001398: 0c070002     cmpi.b     #$2, d7
00139c: 67ea         beq.b      $1388
00139e: 0c070001     cmpi.b     #$1, d7
0013a2: 67e4         beq.b      $1388
0013a4: 0c070003     cmpi.b     #$3, d7
0013a8: 67de         beq.b      $1388
0013aa: 0c070004     cmpi.b     #$4, d7
0013ae: 6718         beq.b      $13c8
0013b0: 0c070005     cmpi.b     #$5, d7
0013b4: 6712         beq.b      $13c8
0013b6: 0c070009     cmpi.b     #$9, d7
0013ba: 670c         beq.b      $13c8
0013bc: 0c070008     cmpi.b     #$8, d7
0013c0: 6706         beq.b      $13c8
0013c2: 0c07000a     cmpi.b     #$a, d7
0013c6: 6614         bne.b      $13dc
0013c8: 4a06         tst.b      d6
0013ca: 670c         beq.b      $13d8
0013cc: 0c060001     cmpi.b     #$1, d6
0013d0: 660a         bne.b      $13dc
0013d2: 4a2f0001     tst.b      $1(a7)
0013d6: 6604         bne.b      $13dc
0013d8: 7003         moveq      #$3, d0
0013da: 60ae         bra.b      $138a
0013dc: 2a2e985e     move.l     -$67a2(a6), d5
0013e0: b885         cmp.l      d5, d4
0013e2: 6508         bcs.b      $13ec
0013e4: 1d7c0001802d move.b     #$1, -$7fd3(a6)
0013ea: 616c         bsr.b      $1458
0013ec: 548f         addq.l     #$2, a7
0013ee: 4ced03f0ffe8 movem.l    -$18(a5), d4-d7/a0-a1
0013f4: 4e5d         unlk       a5
0013f6: 4e75         rts        
0013f8: 4e550000     link.w     a5, #$0
0013fc: 48e7c080     movem.l    d0-d1/a0, -(a7)
001400: 5d8f         subq.l     #$6, a7
001402: 422f0001     clr.b      $1(a7)
001406: 4aae8024     tst.l      -$7fdc(a6)
00140a: 673c         beq.b      $1448
00140c: 206e8024     movea.l    -$7fdc(a6), a0
001410: 2f6800200002 move.l     $20(a0), $2(a7)
001416: 602a         bra.b      $1442
001418: 41ee84a8     lea.l      -$7b58(a6), a0
00141c: 2208         move.l     a0, d1
00141e: 202f0002     move.l     $2(a7), d0
001422: 6100fd6c     bsr.w      $1190
001426: 4a00         tst.b      d0
001428: 6710         beq.b      $143a
00142a: 206f0002     movea.l    $2(a7), a0
00142e: 4a28001e     tst.b      $1e(a0)
001432: 6706         beq.b      $143a
001434: 1f7c00010001 move.b     #$1, $1(a7)
00143a: 206f0002     movea.l    $2(a7), a0
00143e: 2f500002     move.l     (a0), $2(a7)
001442: 4aaf0002     tst.l      $2(a7)
001446: 66d0         bne.b      $1418
001448: 102f0001     move.b     $1(a7), d0
00144c: 5c8f         addq.l     #$6, a7
00144e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001454: 4e5d         unlk       a5
001456: 4e75         rts        
001458: 4e550000     link.w     a5, #$0
00145c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001460: 4feffff6     lea.l      -$a(a7), a7
001464: 4a2e851c     tst.b      -$7ae4(a6)
001468: 6718         beq.b      $1482
00146a: 2eae84ea     move.l     -$7b16(a6), (a7)
00146e: 2f6e84ee0004 move.l     -$7b12(a6), $4(a7)
001474: 1f6e84fe0008 move.b     -$7b02(a6), $8(a7)
00147a: 41d7         lea.l      (a7), a0
00147c: 2008         move.l     a0, d0
00147e: 610067c0     bsr.w      $7c40
001482: 223c00002303 move.l     #$2303, d1
001488: 4eae9a8e     jsr        -$6572(a6)
00148c: 61007248     bsr.w      $86d6
001490: 6100792a     bsr.w      $8dbc
001494: 223c00002333 move.l     #$2333, d1
00149a: 4eae9a8e     jsr        -$6572(a6)
00149e: 6100791c     bsr.w      $8dbc
0014a2: 4fef000a     lea.l      $a(a7), a7
0014a6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0014ac: 4e5d         unlk       a5
0014ae: 4e75         rts        
0014b0: 4e550000     link.w     a5, #$0
0014b4: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
0014b8: 4aae8024     tst.l      -$7fdc(a6)
0014bc: 6608         bne.b      $14c6
0014be: 61001efc     bsr.w      $33bc
0014c2: 6000008c     bra.w      $1550
0014c6: 202e8024     move.l     -$7fdc(a6), d0
0014ca: 6100fd82     bsr.w      $124e
0014ce: 4a00         tst.b      d0
0014d0: 6708         beq.b      $14da
0014d2: 6100fadc     bsr.w      $fb0
0014d6: 4a00         tst.b      d0
0014d8: 66e4         bne.b      $14be
0014da: 7007         moveq      #$7, d0
0014dc: b0ae855c     cmp.l      -$7aa4(a6), d0
0014e0: 6608         bne.b      $14ea
0014e2: 6100facc     bsr.w      $fb0
0014e6: 4a00         tst.b      d0
0014e8: 67d4         beq.b      $14be
0014ea: 202e8024     move.l     -$7fdc(a6), d0
0014ee: 61000480     bsr.w      $1970
0014f2: 4a00         tst.b      d0
0014f4: 66c8         bne.b      $14be
0014f6: 206e8550     movea.l    -$7ab0(a6), a0
0014fa: 4a28001e     tst.b      $1e(a0)
0014fe: 6732         beq.b      $1532
001500: 206e854c     movea.l    -$7ab4(a6), a0
001504: 4a280030     tst.b      $30(a0)
001508: 6628         bne.b      $1532
00150a: 60b2         bra.b      $14be
00150c: 6100faa2     bsr.w      $fb0
001510: 4a00         tst.b      d0
001512: 67aa         beq.b      $14be
001514: 6144         bsr.b      $155a
001516: 2800         move.l     d0, d4
001518: 222e856c     move.l     -$7a94(a6), d1
00151c: 2004         move.l     d4, d0
00151e: 6100008a     bsr.w      $15aa
001522: 4a00         tst.b      d0
001524: 672a         beq.b      $1550
001526: 2004         move.l     d4, d0
001528: 61001df2     bsr.w      $331c
00152c: 2d44856c     move.l     d4, -$7a94(a6)
001530: 601e         bra.b      $1550
001532: 7000         moveq      #$0, d0
001534: 102e9833     move.b     -$67cd(a6), d0
001538: 0c4000ff     cmpi.w     #$ff, d0
00153c: 6212         bhi.b      $1550
00153e: 4a00         tst.b      d0
001540: 6700ff7c     beq.w      $14be
001544: 0c000001     cmpi.b     #$1, d0
001548: 67ca         beq.b      $1514
00154a: 0c000002     cmpi.b     #$2, d0
00154e: 67bc         beq.b      $150c
001550: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
001556: 4e5d         unlk       a5
001558: 4e75         rts        
00155a: 4e550000     link.w     a5, #$0
00155e: 48e78880     movem.l    d0/d4/a0, -(a7)
001562: 4aae854c     tst.l      -$7ab4(a6)
001566: 671e         beq.b      $1586
001568: 202e854c     move.l     -$7ab4(a6), d0
00156c: b0ae8024     cmp.l      -$7fdc(a6), d0
001570: 6614         bne.b      $1586
001572: 4aae8550     tst.l      -$7ab0(a6)
001576: 670e         beq.b      $1586
001578: 206e8550     movea.l    -$7ab0(a6), a0
00157c: 4a28001e     tst.b      $1e(a0)
001580: 6704         beq.b      $1586
001582: 7800         moveq      #$0, d4
001584: 6018         bra.b      $159e
001586: 202e8028     move.l     -$7fd8(a6), d0
00158a: b0ae8564     cmp.l      -$7a9c(a6), d0
00158e: 6f0a         ble.b      $159a
001590: 202e8028     move.l     -$7fd8(a6), d0
001594: 90ae8564     sub.l      -$7a9c(a6), d0
001598: 6002         bra.b      $159c
00159a: 7000         moveq      #$0, d0
00159c: 2800         move.l     d0, d4
00159e: 2004         move.l     d4, d0
0015a0: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0015a6: 4e5d         unlk       a5
0015a8: 4e75         rts        
0015aa: 4e550000     link.w     a5, #$0
0015ae: 48e7cc00     movem.l    d0-d1/d4-d5, -(a7)
0015b2: 7800         moveq      #$0, d4
0015b4: 202f0004     move.l     $4(a7), d0
0015b8: b097         cmp.l      (a7), d0
0015ba: 6308         bls.b      $15c4
0015bc: 202f0004     move.l     $4(a7), d0
0015c0: 9097         sub.l      (a7), d0
0015c2: 6006         bra.b      $15ca
0015c4: 2017         move.l     (a7), d0
0015c6: 90af0004     sub.l      $4(a7), d0
0015ca: 2a00         move.l     d0, d5
0015cc: 2017         move.l     (a7), d0
0015ce: b0ae986c     cmp.l      -$6794(a6), d0
0015d2: 6506         bcs.b      $15da
0015d4: baae9878     cmp.l      -$6788(a6), d5
0015d8: 6020         bra.b      $15fa
0015da: 2017         move.l     (a7), d0
0015dc: b0ae9870     cmp.l      -$6790(a6), d0
0015e0: 6506         bcs.b      $15e8
0015e2: baae987c     cmp.l      -$6784(a6), d5
0015e6: 6012         bra.b      $15fa
0015e8: 2017         move.l     (a7), d0
0015ea: b0ae9874     cmp.l      -$678c(a6), d0
0015ee: 6506         bcs.b      $15f6
0015f0: baae9880     cmp.l      -$6780(a6), d5
0015f4: 6004         bra.b      $15fa
0015f6: baae9884     cmp.l      -$677c(a6), d5
0015fa: 6502         bcs.b      $15fe
0015fc: 7801         moveq      #$1, d4
0015fe: 1004         move.b     d4, d0
001600: 4ced0030fff8 movem.l    -$8(a5), d4-d5
001606: 4e5d         unlk       a5
001608: 4e75         rts        
00160a: 4e550000     link.w     a5, #$0
00160e: 48e78080     movem.l    d0/a0, -(a7)
001612: 4a2e84c4     tst.b      -$7b3c(a6)
001616: 660c         bne.b      $1624
001618: 206e8550     movea.l    -$7ab0(a6), a0
00161c: 0c2800020055 cmpi.b     #$2, $55(a0)
001622: 6714         beq.b      $1638
001624: 0c2e000184c4 cmpi.b     #$1, -$7b3c(a6)
00162a: 662a         bne.b      $1656
00162c: 206e8550     movea.l    -$7ab0(a6), a0
001630: 0c2800010055 cmpi.b     #$1, $55(a0)
001636: 661e         bne.b      $1656
001638: 202e8024     move.l     -$7fdc(a6), d0
00163c: 6100fc10     bsr.w      $124e
001640: 4a00         tst.b      d0
001642: 670a         beq.b      $164e
001644: 202e8024     move.l     -$7fdc(a6), d0
001648: 61000700     bsr.w      $1d4a
00164c: 6004         bra.b      $1652
00164e: 61000728     bsr.w      $1d78
001652: 7001         moveq      #$1, d0
001654: 6002         bra.b      $1658
001656: 7000         moveq      #$0, d0
001658: 4ced0100fffc movem.l    -$4(a5), a0
00165e: 4e5d         unlk       a5
001660: 4e75         rts        
001662: 4e550000     link.w     a5, #$0
001666: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
00166a: 598f         subq.l     #$4, a7
00166c: 206f0004     movea.l    $4(a7), a0
001670: 2828006a     move.l     $6a(a0), d4
001674: 4aae8540     tst.l      -$7ac0(a6)
001678: 664c         bne.b      $16c6
00167a: 222f0004     move.l     $4(a7), d1
00167e: 206e851e     movea.l    -$7ae2(a6), a0
001682: 202800bc     move.l     $bc(a0), d0
001686: 61004192     bsr.w      $581a
00168a: 2e80         move.l     d0, (a7)
00168c: 601a         bra.b      $16a8
00168e: 2057         movea.l    (a7), a0
001690: d8a8006a     add.l      $6a(a0), d4
001694: 2217         move.l     (a7), d1
001696: 206e851e     movea.l    -$7ae2(a6), a0
00169a: 202800bc     move.l     $bc(a0), d0
00169e: 6100417a     bsr.w      $581a
0016a2: 2e80         move.l     d0, (a7)
0016a4: 4a84         tst.l      d4
0016a6: 6c04         bge.b      $16ac
0016a8: 4a97         tst.l      (a7)
0016aa: 66e2         bne.b      $168e
0016ac: 4a97         tst.l      (a7)
0016ae: 6716         beq.b      $16c6
0016b0: 206e851e     movea.l    -$7ae2(a6), a0
0016b4: 215700c0     move.l     (a7), $c0(a0)
0016b8: 223c00002322 move.l     #$2322, d1
0016be: 202e9624     move.l     -$69dc(a6), d0
0016c2: 610076f8     bsr.w      $8dbc
0016c6: 588f         addq.l     #$4, a7
0016c8: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
0016ce: 4e5d         unlk       a5
0016d0: 4e75         rts        
0016d2: 4e550000     link.w     a5, #$0
0016d6: 48e78f80     movem.l    d0/d4-d7/a0, -(a7)
0016da: 558f         subq.l     #$2, a7
0016dc: 206e854c     movea.l    -$7ab4(a6), a0
0016e0: 0c28000b0010 cmpi.b     #$b, $10(a0)
0016e6: 6724         beq.b      $170c
0016e8: 0c2e0001802f cmpi.b     #$1, -$7fd1(a6)
0016ee: 671c         beq.b      $170c
0016f0: 206e854c     movea.l    -$7ab4(a6), a0
0016f4: 4a280030     tst.b      $30(a0)
0016f8: 6616         bne.b      $1710
0016fa: 202e854c     move.l     -$7ab4(a6), d0
0016fe: b0ae8024     cmp.l      -$7fdc(a6), d0
001702: 670c         beq.b      $1710
001704: 6100fa5c     bsr.w      $1162
001708: 4a00         tst.b      d0
00170a: 6604         bne.b      $1710
00170c: 7001         moveq      #$1, d0
00170e: 6002         bra.b      $1712
001710: 7000         moveq      #$0, d0
001712: 1a00         move.b     d0, d5
001714: 206e8550     movea.l    -$7ab0(a6), a0
001718: 4a28001e     tst.b      $1e(a0)
00171c: 670e         beq.b      $172c
00171e: 206e8550     movea.l    -$7ab0(a6), a0
001722: 4a28001e     tst.b      $1e(a0)
001726: 6708         beq.b      $1730
001728: 4a05         tst.b      d5
00172a: 6704         beq.b      $1730
00172c: 7001         moveq      #$1, d0
00172e: 6002         bra.b      $1732
001730: 7000         moveq      #$0, d0
001732: 1800         move.b     d0, d4
001734: 202e8560     move.l     -$7aa0(a6), d0
001738: b0ae855c     cmp.l      -$7aa4(a6), d0
00173c: 6f20         ble.b      $175e
00173e: 6100f870     bsr.w      $fb0
001742: 4a00         tst.b      d0
001744: 6618         bne.b      $175e
001746: 61000c92     bsr.w      $23da
00174a: 4a00         tst.b      d0
00174c: 6610         bne.b      $175e
00174e: 4a2e8536     tst.b      -$7aca(a6)
001752: 660a         bne.b      $175e
001754: 4a2e8537     tst.b      -$7ac9(a6)
001758: 6604         bne.b      $175e
00175a: 7001         moveq      #$1, d0
00175c: 6002         bra.b      $1760
00175e: 7000         moveq      #$0, d0
001760: 1c00         move.b     d0, d6
001762: 202e8560     move.l     -$7aa0(a6), d0
001766: b0ae855c     cmp.l      -$7aa4(a6), d0
00176a: 6624         bne.b      $1790
00176c: 7007         moveq      #$7, d0
00176e: b0ae855c     cmp.l      -$7aa4(a6), d0
001772: 671c         beq.b      $1790
001774: 4a2e8536     tst.b      -$7aca(a6)
001778: 6606         bne.b      $1780
00177a: 4a2e8537     tst.b      -$7ac9(a6)
00177e: 6726         beq.b      $17a6
001780: 7006         moveq      #$6, d0
001782: b0ae855c     cmp.l      -$7aa4(a6), d0
001786: 6608         bne.b      $1790
001788: 70f7         moveq      #$f7, d0
00178a: b0ae852e     cmp.l      -$7ad2(a6), d0
00178e: 6716         beq.b      $17a6
001790: 4a2e8533     tst.b      -$7acd(a6)
001794: 6614         bne.b      $17aa
001796: 4a2e8535     tst.b      -$7acb(a6)
00179a: 670e         beq.b      $17aa
00179c: 6100f812     bsr.w      $fb0
0017a0: 0c000001     cmpi.b     #$1, d0
0017a4: 6704         beq.b      $17aa
0017a6: 7001         moveq      #$1, d0
0017a8: 6002         bra.b      $17ac
0017aa: 7000         moveq      #$0, d0
0017ac: 1e00         move.b     d0, d7
0017ae: 4a2e802f     tst.b      -$7fd1(a6)
0017b2: 6714         beq.b      $17c8
0017b4: 6100f7fa     bsr.w      $fb0
0017b8: 4a00         tst.b      d0
0017ba: 6608         bne.b      $17c4
0017bc: 61000c1c     bsr.w      $23da
0017c0: 4a00         tst.b      d0
0017c2: 6704         beq.b      $17c8
0017c4: 7001         moveq      #$1, d0
0017c6: 6002         bra.b      $17ca
0017c8: 7000         moveq      #$0, d0
0017ca: 1f400001     move.b     d0, $1(a7)
0017ce: 4a04         tst.b      d4
0017d0: 671c         beq.b      $17ee
0017d2: 4a06         tst.b      d6
0017d4: 6614         bne.b      $17ea
0017d6: 4a07         tst.b      d7
0017d8: 6610         bne.b      $17ea
0017da: 4a2f0001     tst.b      $1(a7)
0017de: 660a         bne.b      $17ea
0017e0: 202e8560     move.l     -$7aa0(a6), d0
0017e4: b0ae855c     cmp.l      -$7aa4(a6), d0
0017e8: 6c04         bge.b      $17ee
0017ea: 7001         moveq      #$1, d0
0017ec: 6002         bra.b      $17f0
0017ee: 7000         moveq      #$0, d0
0017f0: 548f         addq.l     #$2, a7
0017f2: 4ced01f0ffec movem.l    -$14(a5), d4-d7/a0
0017f8: 4e5d         unlk       a5
0017fa: 4e75         rts        
0017fc: 4e550000     link.w     a5, #$0
001800: 48e7c080     movem.l    d0-d1/a0, -(a7)
001804: 598f         subq.l     #$4, a7
001806: 4aae8024     tst.l      -$7fdc(a6)
00180a: 67000078     beq.w      $1884
00180e: 4a2e8539     tst.b      -$7ac7(a6)
001812: 67000070     beq.w      $1884
001816: 6100311c     bsr.w      $4934
00181a: 7201         moveq      #$1, d1
00181c: b280         cmp.l      d0, d1
00181e: 6628         bne.b      $1848
001820: 70ff         moveq      #$ff, d0
001822: 2d40852a     move.l     d0, -$7ad6(a6)
001826: 202e854c     move.l     -$7ab4(a6), d0
00182a: 610003a4     bsr.w      $1bd0
00182e: 2f00         move.l     d0, -(a7)
001830: 2f2e854c     move.l     -$7ab4(a6), -(a7)
001834: 222e8024     move.l     -$7fdc(a6), d1
001838: 206e851e     movea.l    -$7ae2(a6), a0
00183c: 202800bc     move.l     $bc(a0), d0
001840: 610022cc     bsr.w      $3b0e
001844: 508f         addq.l     #$8, a7
001846: 603c         bra.b      $1884
001848: 206e8024     movea.l    -$7fdc(a6), a0
00184c: 202e852a     move.l     -$7ad6(a6), d0
001850: b0a80046     cmp.l      $46(a0), d0
001854: 672e         beq.b      $1884
001856: 61001868     bsr.w      $30c0
00185a: 4a00         tst.b      d0
00185c: 6608         bne.b      $1866
00185e: 6100188e     bsr.w      $30ee
001862: 4a00         tst.b      d0
001864: 671e         beq.b      $1884
001866: 202e8024     move.l     -$7fdc(a6), d0
00186a: 61000bce     bsr.w      $243a
00186e: 2eae852e     move.l     -$7ad2(a6), (a7)
001872: 202e8024     move.l     -$7fdc(a6), d0
001876: 61001012     bsr.w      $288a
00187a: 2d57852e     move.l     (a7), -$7ad2(a6)
00187e: 1d7c00018539 move.b     #$1, -$7ac7(a6)
001884: 588f         addq.l     #$4, a7
001886: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00188c: 4e5d         unlk       a5
00188e: 4e75         rts        
001890: 4e550000     link.w     a5, #$0
001894: 48e78c80     movem.l    d0/d4-d5/a0, -(a7)
001898: 7800         moveq      #$0, d4
00189a: 7a00         moveq      #$0, d5
00189c: 4aae8024     tst.l      -$7fdc(a6)
0018a0: 670000c4     beq.w      $1966
0018a4: 202e8024     move.l     -$7fdc(a6), d0
0018a8: 6100f9a4     bsr.w      $124e
0018ac: 4a00         tst.b      d0
0018ae: 660000b6     bne.w      $1966
0018b2: 206e854c     movea.l    -$7ab4(a6), a0
0018b6: 0c28000b0010 cmpi.b     #$b, $10(a0)
0018bc: 6604         bne.b      $18c2
0018be: 7001         moveq      #$1, d0
0018c0: 6002         bra.b      $18c4
0018c2: 7000         moveq      #$0, d0
0018c4: 1a00         move.b     d0, d5
0018c6: 4a2e984c     tst.b      -$67b4(a6)
0018ca: 6600008a     bne.w      $1956
0018ce: 4aae8550     tst.l      -$7ab0(a6)
0018d2: 67000082     beq.w      $1956
0018d6: 206e8550     movea.l    -$7ab0(a6), a0
0018da: 0c280006005a cmpi.b     #$6, $5a(a0)
0018e0: 66000074     bne.w      $1956
0018e4: 206e8550     movea.l    -$7ab0(a6), a0
0018e8: 0c2800020059 cmpi.b     #$2, $59(a0)
0018ee: 6718         beq.b      $1908
0018f0: 206e8550     movea.l    -$7ab0(a6), a0
0018f4: 0c2800040059 cmpi.b     #$4, $59(a0)
0018fa: 670c         beq.b      $1908
0018fc: 206e8550     movea.l    -$7ab0(a6), a0
001900: 0c2800060059 cmpi.b     #$6, $59(a0)
001906: 664e         bne.b      $1956
001908: 206e8024     movea.l    -$7fdc(a6), a0
00190c: 4aa8001c     tst.l      $1c(a0)
001910: 6744         beq.b      $1956
001912: 206e8024     movea.l    -$7fdc(a6), a0
001916: 2068001c     movea.l    $1c(a0), a0
00191a: 0c280006005a cmpi.b     #$6, $5a(a0)
001920: 6634         bne.b      $1956
001922: 206e8024     movea.l    -$7fdc(a6), a0
001926: 2068001c     movea.l    $1c(a0), a0
00192a: 0c2800020059 cmpi.b     #$2, $59(a0)
001930: 6720         beq.b      $1952
001932: 206e8024     movea.l    -$7fdc(a6), a0
001936: 2068001c     movea.l    $1c(a0), a0
00193a: 0c2800040059 cmpi.b     #$4, $59(a0)
001940: 6710         beq.b      $1952
001942: 206e8024     movea.l    -$7fdc(a6), a0
001946: 2068001c     movea.l    $1c(a0), a0
00194a: 0c2800060059 cmpi.b     #$6, $59(a0)
001950: 6604         bne.b      $1956
001952: 7001         moveq      #$1, d0
001954: 6002         bra.b      $1958
001956: 7000         moveq      #$0, d0
001958: 1800         move.b     d0, d4
00195a: 4a04         tst.b      d4
00195c: 6604         bne.b      $1962
00195e: 4a05         tst.b      d5
001960: 6704         beq.b      $1966
001962: 42ae8024     clr.l      -$7fdc(a6)
001966: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
00196c: 4e5d         unlk       a5
00196e: 4e75         rts        
001970: 4e550000     link.w     a5, #$0
001974: 48e78080     movem.l    d0/a0, -(a7)
001978: 558f         subq.l     #$2, a7
00197a: 422f0001     clr.b      $1(a7)
00197e: 4aaf0002     tst.l      $2(a7)
001982: 6750         beq.b      $19d4
001984: 206f0002     movea.l    $2(a7), a0
001988: 0c2800370044 cmpi.b     #$37, $44(a0)
00198e: 6644         bne.b      $19d4
001990: 206f0002     movea.l    $2(a7), a0
001994: 20680018     movea.l    $18(a0), a0
001998: 4a280026     tst.b      $26(a0)
00199c: 6636         bne.b      $19d4
00199e: 206f0002     movea.l    $2(a7), a0
0019a2: 0c2800030010 cmpi.b     #$3, $10(a0)
0019a8: 672a         beq.b      $19d4
0019aa: 206f0002     movea.l    $2(a7), a0
0019ae: 0c2800020010 cmpi.b     #$2, $10(a0)
0019b4: 671e         beq.b      $19d4
0019b6: 206f0002     movea.l    $2(a7), a0
0019ba: 0c28000a0010 cmpi.b     #$a, $10(a0)
0019c0: 6712         beq.b      $19d4
0019c2: 206f0002     movea.l    $2(a7), a0
0019c6: 0c28000c0010 cmpi.b     #$c, $10(a0)
0019cc: 6706         beq.b      $19d4
0019ce: 1f7c00010001 move.b     #$1, $1(a7)
0019d4: 102f0001     move.b     $1(a7), d0
0019d8: 548f         addq.l     #$2, a7
0019da: 4ced0100fffc movem.l    -$4(a5), a0
0019e0: 4e5d         unlk       a5
0019e2: 4e75         rts        
0019e4: 4e550000     link.w     a5, #$0
0019e8: 48e78000     movem.l    d0, -(a7)
0019ec: 7021         moveq      #$21, d0
0019ee: b0ae8578     cmp.l      -$7a88(a6), d0
0019f2: 661c         bne.b      $1a10
0019f4: 2017         move.l     (a7), d0
0019f6: 610042a4     bsr.w      $5c9c
0019fa: 0c000001     cmpi.b     #$1, d0
0019fe: 0c9700002337 cmpi.l     #$2337, (a7)
001a04: 6704         beq.b      $1a0a
001a06: 7001         moveq      #$1, d0
001a08: 6002         bra.b      $1a0c
001a0a: 7000         moveq      #$0, d0
001a0c: 1d40802e     move.b     d0, -$7fd2(a6)
001a10: 4e5d         unlk       a5
001a12: 4e75         rts        
001a14: 4e550000     link.w     a5, #$0
001a18: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
001a1c: 7a00         moveq      #$0, d5
001a1e: 206f0004     movea.l    $4(a7), a0
001a22: 20680018     movea.l    $18(a0), a0
001a26: 24680030     movea.l    $30(a0), a2
001a2a: 222f0020     move.l     $20(a7), d1
001a2e: 200a         move.l     a2, d0
001a30: 6100f6d4     bsr.w      $1106
001a34: 2800         move.l     d0, d4
001a36: 2f2f0020     move.l     $20(a7), -(a7)
001a3a: 2204         move.l     d4, d1
001a3c: 200a         move.l     a2, d0
001a3e: 6100012a     bsr.w      $1b6a
001a42: 588f         addq.l     #$4, a7
001a44: 2a00         move.l     d0, d5
001a46: 206f0004     movea.l    $4(a7), a0
001a4a: 20680018     movea.l    $18(a0), a0
001a4e: 7001         moveq      #$1, d0
001a50: b0a80018     cmp.l      $18(a0), d0
001a54: 6606         bne.b      $1a5c
001a56: 2057         movea.l    (a7), a0
001a58: 2085         move.l     d5, (a0)
001a5a: 6012         bra.b      $1a6e
001a5c: 206f0004     movea.l    $4(a7), a0
001a60: 20680018     movea.l    $18(a0), a0
001a64: 20280014     move.l     $14(a0), d0
001a68: 9085         sub.l      d5, d0
001a6a: 2057         movea.l    (a7), a0
001a6c: 2080         move.l     d0, (a0)
001a6e: 2057         movea.l    (a7), a0
001a70: 7032         moveq      #$32, d0
001a72: d090         add.l      (a0), d0
001a74: 2057         movea.l    (a7), a0
001a76: 21400004     move.l     d0, $4(a0)
001a7a: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
001a80: 4e5d         unlk       a5
001a82: 4e75         rts        
001a84: 4e550000     link.w     a5, #$0
001a88: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001a8c: 206e8024     movea.l    -$7fdc(a6), a0
001a90: 20680018     movea.l    $18(a0), a0
001a94: 28280014     move.l     $14(a0), d4
001a98: 206e8024     movea.l    -$7fdc(a6), a0
001a9c: 0c2800120010 cmpi.b     #$12, $10(a0)
001aa2: 6620         bne.b      $1ac4
001aa4: 206e8024     movea.l    -$7fdc(a6), a0
001aa8: 2468000c     movea.l    $c(a0), a2
001aac: 4852         pea.l      (a2)
001aae: 222e8024     move.l     -$7fdc(a6), d1
001ab2: 202f0004     move.l     $4(a7), d0
001ab6: 6100ff5c     bsr.w      $1a14
001aba: 588f         addq.l     #$4, a7
001abc: 2057         movea.l    (a7), a0
001abe: 2d508564     move.l     (a0), -$7a9c(a6)
001ac2: 6022         bra.b      $1ae6
001ac4: 206e851e     movea.l    -$7ae2(a6), a0
001ac8: 4a28005e     tst.b      $5e(a0)
001acc: 660a         bne.b      $1ad8
001ace: 206e851e     movea.l    -$7ae2(a6), a0
001ad2: 48680060     pea.l      $60(a0)
001ad6: 60d6         bra.b      $1aae
001ad8: 2057         movea.l    (a7), a0
001ada: 4290         clr.l      (a0)
001adc: 2057         movea.l    (a7), a0
001ade: 21440004     move.l     d4, $4(a0)
001ae2: 2d448564     move.l     d4, -$7a9c(a6)
001ae6: 2057         movea.l    (a7), a0
001ae8: 2004         move.l     d4, d0
001aea: 9090         sub.l      (a0), d0
001aec: 7232         moveq      #$32, d1
001aee: b280         cmp.l      d0, d1
001af0: 6f12         ble.b      $1b04
001af2: 70ce         moveq      #$ce, d0
001af4: d084         add.l      d4, d0
001af6: 6f06         ble.b      $1afe
001af8: 70ce         moveq      #$ce, d0
001afa: d084         add.l      d4, d0
001afc: 6002         bra.b      $1b00
001afe: 7000         moveq      #$0, d0
001b00: 2057         movea.l    (a7), a0
001b02: 2080         move.l     d0, (a0)
001b04: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
001b0a: 4e5d         unlk       a5
001b0c: 4e75         rts        
001b0e: 4e550000     link.w     a5, #$0
001b12: 48e78000     movem.l    d0, -(a7)
001b16: 4aae8024     tst.l      -$7fdc(a6)
001b1a: 670a         beq.b      $1b26
001b1c: 202e8024     move.l     -$7fdc(a6), d0
001b20: 6108         bsr.b      $1b2a
001b22: 2d408028     move.l     d0, -$7fd8(a6)
001b26: 4e5d         unlk       a5
001b28: 4e75         rts        
001b2a: 4e550000     link.w     a5, #$0
001b2e: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
001b32: 7800         moveq      #$0, d4
001b34: 4a97         tst.l      (a7)
001b36: 6726         beq.b      $1b5e
001b38: 2017         move.l     (a7), d0
001b3a: 61000094     bsr.w      $1bd0
001b3e: 2800         move.l     d0, d4
001b40: 202e854c     move.l     -$7ab4(a6), d0
001b44: b097         cmp.l      (a7), d0
001b46: 6716         beq.b      $1b5e
001b48: 2f17         move.l     (a7), -(a7)
001b4a: 222e854c     move.l     -$7ab4(a6), d1
001b4e: 206e851e     movea.l    -$7ae2(a6), a0
001b52: 202800bc     move.l     $bc(a0), d0
001b56: 6100306c     bsr.w      $4bc4
001b5a: 588f         addq.l     #$4, a7
001b5c: d880         add.l      d0, d4
001b5e: 2004         move.l     d4, d0
001b60: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
001b66: 4e5d         unlk       a5
001b68: 4e75         rts        
001b6a: 4e550000     link.w     a5, #$0
001b6e: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
001b72: 7800         moveq      #$0, d4
001b74: 7a01         moveq      #$1, d5
001b76: 2457         movea.l    (a7), a2
001b78: 6040         bra.b      $1bba
001b7a: 2005         move.l     d5, d0
001b7c: 5285         addq.l     #$1, d5
001b7e: b0af0004     cmp.l      $4(a7), d0
001b82: 661a         bne.b      $1b9e
001b84: 222f0024     move.l     $24(a7), d1
001b88: 200a         move.l     a2, d0
001b8a: 5880         addq.l     #$4, d0
001b8c: 206e8c6c     movea.l    -$7394(a6), a0
001b90: 4e90         jsr        (a0)
001b92: 4c7c000000000064 divu.l     #$64, d0
001b9a: d880         add.l      d0, d4
001b9c: 6026         bra.b      $1bc4
001b9e: 200b         move.l     a3, d0
001ba0: 5880         addq.l     #$4, d0
001ba2: 2200         move.l     d0, d1
001ba4: 200a         move.l     a2, d0
001ba6: 5880         addq.l     #$4, d0
001ba8: 206e8c6c     movea.l    -$7394(a6), a0
001bac: 4e90         jsr        (a0)
001bae: 4c7c000000000064 divu.l     #$64, d0
001bb6: d880         add.l      d0, d4
001bb8: 244b         movea.l    a3, a2
001bba: 200a         move.l     a2, d0
001bbc: 6706         beq.b      $1bc4
001bbe: 2652         movea.l    (a2), a3
001bc0: 200b         move.l     a3, d0
001bc2: 66b6         bne.b      $1b7a
001bc4: 2004         move.l     d4, d0
001bc6: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
001bcc: 4e5d         unlk       a5
001bce: 4e75         rts        
001bd0: 4e550000     link.w     a5, #$0
001bd4: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
001bd8: 4aae8550     tst.l      -$7ab0(a6)
001bdc: 6606         bne.b      $1be4
001bde: 7000         moveq      #$0, d0
001be0: 600000c0     bra.w      $1ca2
001be4: 486e84a8     pea.l      -$7b58(a6)
001be8: 7000         moveq      #$0, d0
001bea: 302e84b8     move.w     -$7b48(a6), d0
001bee: 2200         move.l     d0, d1
001bf0: 206e8550     movea.l    -$7ab0(a6), a0
001bf4: 20280030     move.l     $30(a0), d0
001bf8: 6100ff70     bsr.w      $1b6a
001bfc: 588f         addq.l     #$4, a7
001bfe: 2800         move.l     d0, d4
001c00: 202e854c     move.l     -$7ab4(a6), d0
001c04: b097         cmp.l      (a7), d0
001c06: 662c         bne.b      $1c34
001c08: 7a00         moveq      #$0, d5
001c0a: 206e8550     movea.l    -$7ab0(a6), a0
001c0e: 4a28001e     tst.b      $1e(a0)
001c12: 6600008c     bne.w      $1ca0
001c16: 0c2e000184c4 cmpi.b     #$1, -$7b3c(a6)
001c1c: 6606         bne.b      $1c24
001c1e: 2a04         move.l     d4, d5
001c20: 6000007e     bra.w      $1ca0
001c24: 206e8550     movea.l    -$7ab0(a6), a0
001c28: 20280014     move.l     $14(a0), d0
001c2c: 9084         sub.l      d4, d0
001c2e: 2a00         move.l     d0, d5
001c30: 6000006e     bra.w      $1ca0
001c34: 206e8550     movea.l    -$7ab0(a6), a0
001c38: 4a28001e     tst.b      $1e(a0)
001c3c: 6622         bne.b      $1c60
001c3e: 206e854c     movea.l    -$7ab4(a6), a0
001c42: 2a28006a     move.l     $6a(a0), d5
001c46: 0c2e000184c4 cmpi.b     #$1, -$7b3c(a6)
001c4c: 660e         bne.b      $1c5c
001c4e: 206e8550     movea.l    -$7ab0(a6), a0
001c52: 2004         move.l     d4, d0
001c54: 90a80014     sub.l      $14(a0), d0
001c58: da80         add.l      d0, d5
001c5a: 6044         bra.b      $1ca0
001c5c: 9a84         sub.l      d4, d5
001c5e: 6040         bra.b      $1ca0
001c60: 0c2e000184c4 cmpi.b     #$1, -$7b3c(a6)
001c66: 6604         bne.b      $1c6c
001c68: 2a04         move.l     d4, d5
001c6a: 600c         bra.b      $1c78
001c6c: 206e8550     movea.l    -$7ab0(a6), a0
001c70: 20280014     move.l     $14(a0), d0
001c74: 9084         sub.l      d4, d0
001c76: 2a00         move.l     d0, d5
001c78: 206e854c     movea.l    -$7ab4(a6), a0
001c7c: 24680020     movea.l    $20(a0), a2
001c80: 601a         bra.b      $1c9c
001c82: 206e8550     movea.l    -$7ab0(a6), a0
001c86: 202a0010     move.l     $10(a2), d0
001c8a: b0a80010     cmp.l      $10(a0), d0
001c8e: 6f0a         ble.b      $1c9a
001c90: 4a2a001e     tst.b      $1e(a2)
001c94: 6704         beq.b      $1c9a
001c96: daaa0014     add.l      $14(a2), d5
001c9a: 2452         movea.l    (a2), a2
001c9c: 200a         move.l     a2, d0
001c9e: 66e2         bne.b      $1c82
001ca0: 2005         move.l     d5, d0
001ca2: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
001ca8: 4e5d         unlk       a5
001caa: 4e75         rts        
001cac: 4e550000     link.w     a5, #$0
001cb0: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
001cb4: 7a00         moveq      #$0, d5
001cb6: 4aae8540     tst.l      -$7ac0(a6)
001cba: 6736         beq.b      $1cf2
001cbc: 41ee84a8     lea.l      -$7b58(a6), a0
001cc0: 2208         move.l     a0, d1
001cc2: 41ee8544     lea.l      -$7abc(a6), a0
001cc6: 2008         move.l     a0, d0
001cc8: 206e8c6c     movea.l    -$7394(a6), a0
001ccc: 4e90         jsr        (a0)
001cce: 4c7c000000000064 divu.l     #$64, d0
001cd6: 2800         move.l     d0, d4
001cd8: 202e8540     move.l     -$7ac0(a6), d0
001cdc: 6120         bsr.b      $1cfe
001cde: b084         cmp.l      d4, d0
001ce0: 6504         bcs.b      $1ce6
001ce2: 7a01         moveq      #$1, d5
001ce4: 600c         bra.b      $1cf2
001ce6: 42ae8540     clr.l      -$7ac0(a6)
001cea: 610005d4     bsr.w      $22c0
001cee: 61001cf0     bsr.w      $39e0
001cf2: 1005         move.b     d5, d0
001cf4: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
001cfa: 4e5d         unlk       a5
001cfc: 4e75         rts        
001cfe: 4e550000     link.w     a5, #$0
001d02: 48e78e80     movem.l    d0/d4-d6/a0, -(a7)
001d06: 7c00         moveq      #$0, d6
001d08: 4a97         tst.l      (a7)
001d0a: 6732         beq.b      $1d3e
001d0c: 2057         movea.l    (a7), a0
001d0e: 18280010     move.b     $10(a0), d4
001d12: 2057         movea.l    (a7), a0
001d14: 20680018     movea.l    $18(a0), a0
001d18: 1a280057     move.b     $57(a0), d5
001d1c: 0c04000f     cmpi.b     #$f, d4
001d20: 6710         beq.b      $1d32
001d22: 0c040010     cmpi.b     #$10, d4
001d26: 670a         beq.b      $1d32
001d28: 2017         move.l     (a7), d0
001d2a: 610005d8     bsr.w      $2304
001d2e: 4a00         tst.b      d0
001d30: 670c         beq.b      $1d3e
001d32: 4a05         tst.b      d5
001d34: 6604         bne.b      $1d3a
001d36: 7032         moveq      #$32, d0
001d38: 6002         bra.b      $1d3c
001d3a: 701e         moveq      #$1e, d0
001d3c: 2c00         move.l     d0, d6
001d3e: 2006         move.l     d6, d0
001d40: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
001d46: 4e5d         unlk       a5
001d48: 4e75         rts        
001d4a: 4e550000     link.w     a5, #$0
001d4e: 48e78000     movem.l    d0, -(a7)
001d52: 202e852e     move.l     -$7ad2(a6), d0
001d56: b0ae852a     cmp.l      -$7ad6(a6), d0
001d5a: 670c         beq.b      $1d68
001d5c: 2017         move.l     (a7), d0
001d5e: 610006da     bsr.w      $243a
001d62: 2017         move.l     (a7), d0
001d64: 61000b24     bsr.w      $288a
001d68: 4a2e8532     tst.b      -$7ace(a6)
001d6c: 6606         bne.b      $1d74
001d6e: 2017         move.l     (a7), d0
001d70: 61000b88     bsr.w      $28fa
001d74: 4e5d         unlk       a5
001d76: 4e75         rts        
001d78: 4e550000     link.w     a5, #$0
001d7c: 48e78080     movem.l    d0/a0, -(a7)
001d80: 6100f22e     bsr.w      $fb0
001d84: 4a00         tst.b      d0
001d86: 6638         bne.b      $1dc0
001d88: 206e854c     movea.l    -$7ab4(a6), a0
001d8c: 20680018     movea.l    $18(a0), a0
001d90: 42280026     clr.b      $26(a0)
001d94: 206e854c     movea.l    -$7ab4(a6), a0
001d98: 117c00370044 move.b     #$37, $44(a0)
001d9e: 206e854c     movea.l    -$7ab4(a6), a0
001da2: 216e854c0008 move.l     -$7ab4(a6), $8(a0)
001da8: 202e854c     move.l     -$7ab4(a6), d0
001dac: 6100068c     bsr.w      $243a
001db0: 202e854c     move.l     -$7ab4(a6), d0
001db4: 61000ad4     bsr.w      $288a
001db8: 202e854c     move.l     -$7ab4(a6), d0
001dbc: 61000b3c     bsr.w      $28fa
001dc0: 4ced0100fffc movem.l    -$4(a5), a0
001dc6: 4e5d         unlk       a5
001dc8: 4e75         rts        
001dca: 4e550000     link.w     a5, #$0
001dce: 48e7c000     movem.l    d0-d1, -(a7)
001dd2: 610004ec     bsr.w      $22c0
001dd6: 61001c08     bsr.w      $39e0
001dda: 223c00002305 move.l     #$2305, d1
001de0: 4eae9a8e     jsr        -$6572(a6)
001de4: 610068f0     bsr.w      $86d6
001de8: 61006fd2     bsr.w      $8dbc
001dec: 223c00002333 move.l     #$2333, d1
001df2: 4eae9a8e     jsr        -$6572(a6)
001df6: 61006fc4     bsr.w      $8dbc
001dfa: 1d7c00018568 move.b     #$1, -$7a98(a6)
001e00: 4ced0002fffc movem.l    -$4(a5), d1
001e06: 4e5d         unlk       a5
001e08: 4e75         rts        
001e0a: 4e550000     link.w     a5, #$0
001e0e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001e12: 2057         movea.l    (a7), a0
001e14: 0c28004d0044 cmpi.b     #$4d, $44(a0)
001e1a: 6704         beq.b      $1e20
001e1c: 2457         movea.l    (a7), a2
001e1e: 6008         bra.b      $1e28
001e20: 2017         move.l     (a7), d0
001e22: 610000a4     bsr.w      $1ec8
001e26: 2440         movea.l    d0, a2
001e28: 223c0000017c move.l     #$17c, d1
001e2e: 200a         move.l     a2, d0
001e30: 6112         bsr.b      $1e44
001e32: 4a00         tst.b      d0
001e34: 6602         bne.b      $1e38
001e36: 95ca         suba.l     a2, a2
001e38: 200a         move.l     a2, d0
001e3a: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
001e40: 4e5d         unlk       a5
001e42: 4e75         rts        
001e44: 4e550000     link.w     a5, #$0
001e48: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
001e4c: 2801         move.l     d1, d4
001e4e: 5d8f         subq.l     #$6, a7
001e50: 7a00         moveq      #$0, d5
001e52: 422f0001     clr.b      $1(a7)
001e56: 2f6f00060002 move.l     $6(a7), $2(a7)
001e5c: 604e         bra.b      $1eac
001e5e: ba84         cmp.l      d4, d5
001e60: 6e30         bgt.b      $1e92
001e62: 206f0002     movea.l    $2(a7), a0
001e66: 0c2800370044 cmpi.b     #$37, $44(a0)
001e6c: 6724         beq.b      $1e92
001e6e: 202f0002     move.l     $2(a7), d0
001e72: 6100f3da     bsr.w      $124e
001e76: 0c000001     cmpi.b     #$1, d0
001e7a: 6716         beq.b      $1e92
001e7c: 206f0002     movea.l    $2(a7), a0
001e80: 4a90         tst.l      (a0)
001e82: 6716         beq.b      $1e9a
001e84: 206f0002     movea.l    $2(a7), a0
001e88: 2050         movea.l    (a0), a0
001e8a: 0c28004d0044 cmpi.b     #$4d, $44(a0)
001e90: 6708         beq.b      $1e9a
001e92: 1f7c00010001 move.b     #$1, $1(a7)
001e98: 6012         bra.b      $1eac
001e9a: 206f0002     movea.l    $2(a7), a0
001e9e: 2f500002     move.l     (a0), $2(a7)
001ea2: 6708         beq.b      $1eac
001ea4: 206f0002     movea.l    $2(a7), a0
001ea8: daa8006a     add.l      $6a(a0), d5
001eac: 4aaf0002     tst.l      $2(a7)
001eb0: 6706         beq.b      $1eb8
001eb2: 4a2f0001     tst.b      $1(a7)
001eb6: 67a6         beq.b      $1e5e
001eb8: 102f0001     move.b     $1(a7), d0
001ebc: 5c8f         addq.l     #$6, a7
001ebe: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
001ec4: 4e5d         unlk       a5
001ec6: 4e75         rts        
001ec8: 4e550000     link.w     a5, #$0
001ecc: 48e780a0     movem.l    d0/a0/a2, -(a7)
001ed0: 4a97         tst.l      (a7)
001ed2: 6718         beq.b      $1eec
001ed4: 2057         movea.l    (a7), a0
001ed6: 2450         movea.l    (a0), a2
001ed8: 600e         bra.b      $1ee8
001eda: 0c2a004d0044 cmpi.b     #$4d, $44(a2)
001ee0: 6704         beq.b      $1ee6
001ee2: 200a         move.l     a2, d0
001ee4: 6008         bra.b      $1eee
001ee6: 2452         movea.l    (a2), a2
001ee8: 200a         move.l     a2, d0
001eea: 66ee         bne.b      $1eda
001eec: 7000         moveq      #$0, d0
001eee: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001ef4: 4e5d         unlk       a5
001ef6: 4e75         rts        
001ef8: 4e550000     link.w     a5, #$0
001efc: 48e7c080     movem.l    d0-d1/a0, -(a7)
001f00: 4aae8024     tst.l      -$7fdc(a6)
001f04: 6610         bne.b      $1f16
001f06: 4aae8024     tst.l      -$7fdc(a6)
001f0a: 6600011a     bne.w      $2026
001f0e: 4aae853c     tst.l      -$7ac4(a6)
001f12: 67000112     beq.w      $2026
001f16: 202e8024     move.l     -$7fdc(a6), d0
001f1a: b0ae853c     cmp.l      -$7ac4(a6), d0
001f1e: 67000106     beq.w      $2026
001f22: 1d6e8539853a move.b     -$7ac7(a6), -$7ac6(a6)
001f28: 4aae8024     tst.l      -$7fdc(a6)
001f2c: 6736         beq.b      $1f64
001f2e: 202e854c     move.l     -$7ab4(a6), d0
001f32: 6100fc9c     bsr.w      $1bd0
001f36: 2f00         move.l     d0, -(a7)
001f38: 2f2e854c     move.l     -$7ab4(a6), -(a7)
001f3c: 222e8024     move.l     -$7fdc(a6), d1
001f40: 206e851e     movea.l    -$7ae2(a6), a0
001f44: 202800bc     move.l     $bc(a0), d0
001f48: 61001bc4     bsr.w      $3b0e
001f4c: 508f         addq.l     #$8, a7
001f4e: 206e8024     movea.l    -$7fdc(a6), a0
001f52: 1d68002d8539 move.b     $2d(a0), -$7ac7(a6)
001f58: 206e8024     movea.l    -$7fdc(a6), a0
001f5c: 1d68002c8538 move.b     $2c(a0), -$7ac8(a6)
001f62: 6008         bra.b      $1f6c
001f64: 422e8539     clr.b      -$7ac7(a6)
001f68: 422e8538     clr.b      -$7ac8(a6)
001f6c: 4aae853c     tst.l      -$7ac4(a6)
001f70: 673c         beq.b      $1fae
001f72: 206e853c     movea.l    -$7ac4(a6), a0
001f76: 4aa8001c     tst.l      $1c(a0)
001f7a: 6732         beq.b      $1fae
001f7c: 206e853c     movea.l    -$7ac4(a6), a0
001f80: 2068001c     movea.l    $1c(a0), a0
001f84: 2d6800448544 move.l     $44(a0), -$7abc(a6)
001f8a: 2d6800488548 move.l     $48(a0), -$7ab8(a6)
001f90: 4a2e8539     tst.b      -$7ac7(a6)
001f94: 6614         bne.b      $1faa
001f96: 202e853c     move.l     -$7ac4(a6), d0
001f9a: 6100f046     bsr.w      $fe2
001f9e: 4a00         tst.b      d0
001fa0: 6708         beq.b      $1faa
001fa2: 2d6e853c8540 move.l     -$7ac4(a6), -$7ac0(a6)
001fa8: 6004         bra.b      $1fae
001faa: 42ae8540     clr.l      -$7ac0(a6)
001fae: 4aae8540     tst.l      -$7ac0(a6)
001fb2: 6638         bne.b      $1fec
001fb4: 6100030a     bsr.w      $22c0
001fb8: 4a2e8539     tst.b      -$7ac7(a6)
001fbc: 6710         beq.b      $1fce
001fbe: 610013fc     bsr.w      $33bc
001fc2: 610019a4     bsr.w      $3968
001fc6: 202e8024     move.l     -$7fdc(a6), d0
001fca: 6100170e     bsr.w      $36da
001fce: 7001         moveq      #$1, d0
001fd0: b0ae855c     cmp.l      -$7aa4(a6), d0
001fd4: 6716         beq.b      $1fec
001fd6: 4a2e8539     tst.b      -$7ac7(a6)
001fda: 6610         bne.b      $1fec
001fdc: 4a2e802c     tst.b      -$7fd4(a6)
001fe0: 6706         beq.b      $1fe8
001fe2: 4a2e802d     tst.b      -$7fd3(a6)
001fe6: 6604         bne.b      $1fec
001fe8: 610019f6     bsr.w      $39e0
001fec: 4aae8024     tst.l      -$7fdc(a6)
001ff0: 672e         beq.b      $2020
001ff2: 206e8024     movea.l    -$7fdc(a6), a0
001ff6: 0c2800120010 cmpi.b     #$12, $10(a0)
001ffc: 6622         bne.b      $2020
001ffe: 1d7c000b8558 move.b     #$b, -$7aa8(a6)
002004: 206e8024     movea.l    -$7fdc(a6), a0
002008: 20680018     movea.l    $18(a0), a0
00200c: 4feffff8     lea.l      -$8(a7), a7
002010: 2ea8004c     move.l     $4c(a0), (a7)
002014: 2f6800500004 move.l     $50(a0), $4(a7)
00201a: 6100083e     bsr.w      $285a
00201e: 508f         addq.l     #$8, a7
002020: 2d6e8024853c move.l     -$7fdc(a6), -$7ac4(a6)
002026: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00202c: 4e5d         unlk       a5
00202e: 4e75         rts        
002030: 4e550000     link.w     a5, #$0
002034: 48e7c080     movem.l    d0-d1/a0, -(a7)
002038: 558f         subq.l     #$2, a7
00203a: 41ee84e2     lea.l      -$7b1e(a6), a0
00203e: 2208         move.l     a0, d1
002040: 41ee84a8     lea.l      -$7b58(a6), a0
002044: 2008         move.l     a0, d0
002046: 610003b0     bsr.w      $23f8
00204a: 4a00         tst.b      d0
00204c: 6604         bne.b      $2052
00204e: 7001         moveq      #$1, d0
002050: 6002         bra.b      $2054
002052: 7000         moveq      #$0, d0
002054: 1f400001     move.b     d0, $1(a7)
002058: 4aae8024     tst.l      -$7fdc(a6)
00205c: 6706         beq.b      $2064
00205e: 4a2f0001     tst.b      $1(a7)
002062: 672e         beq.b      $2092
002064: 4a2f0001     tst.b      $1(a7)
002068: 6708         beq.b      $2072
00206a: 202e854c     move.l     -$7ab4(a6), d0
00206e: 6100f5f2     bsr.w      $1662
002072: 202e854c     move.l     -$7ab4(a6), d0
002076: 6100fd92     bsr.w      $1e0a
00207a: 2d408024     move.l     d0, -$7fdc(a6)
00207e: 660a         bne.b      $208a
002080: 4aae853c     tst.l      -$7ac4(a6)
002084: 6704         beq.b      $208a
002086: 61000238     bsr.w      $22c0
00208a: 6100f804     bsr.w      $1890
00208e: 6100fe68     bsr.w      $1ef8
002092: 548f         addq.l     #$2, a7
002094: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00209a: 4e5d         unlk       a5
00209c: 4e75         rts        
00209e: 4e550000     link.w     a5, #$0
0020a2: 48e78080     movem.l    d0/a0, -(a7)
0020a6: 4a6e8252     tst.w      -$7dae(a6)
0020aa: 6634         bne.b      $20e0
0020ac: 41ee8030     lea.l      -$7fd0(a6), a0
0020b0: 2008         move.l     a0, d0
0020b2: 61005672     bsr.w      $7726
0020b6: 4a80         tst.l      d0
0020b8: 6c04         bge.b      $20be
0020ba: 7000         moveq      #$0, d0
0020bc: 6024         bra.b      $20e2
0020be: 0c6e00018252 cmpi.w     #$1, -$7dae(a6)
0020c4: 661a         bne.b      $20e0
0020c6: 1d7c000b8558 move.b     #$b, -$7aa8(a6)
0020cc: 4feffff8     lea.l      -$8(a7), a7
0020d0: 2eae8254     move.l     -$7dac(a6), (a7)
0020d4: 2f6e82580004 move.l     -$7da8(a6), $4(a7)
0020da: 6100077e     bsr.w      $285a
0020de: 508f         addq.l     #$8, a7
0020e0: 7001         moveq      #$1, d0
0020e2: 4ced0100fffc movem.l    -$4(a5), a0
0020e8: 4e5d         unlk       a5
0020ea: 4e75         rts        
0020ec: 4e550000     link.w     a5, #$0
0020f0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0020f4: 558f         subq.l     #$2, a7
0020f6: 6100ff38     bsr.w      $2030
0020fa: 4a2e8568     tst.b      -$7a98(a6)
0020fe: 66000074     bne.w      $2174
002102: 4a2e8569     tst.b      -$7a97(a6)
002106: 6600006c     bne.w      $2174
00210a: 6100fba0     bsr.w      $1cac
00210e: 4a00         tst.b      d0
002110: 6662         bne.b      $2174
002112: 6100f4f6     bsr.w      $160a
002116: 4a00         tst.b      d0
002118: 665a         bne.b      $2174
00211a: 6100f9f2     bsr.w      $1b0e
00211e: 6100f6dc     bsr.w      $17fc
002122: 41ef0001     lea.l      $1(a7), a0
002126: 2008         move.l     a0, d0
002128: 610009b0     bsr.w      $2ada
00212c: 6100f382     bsr.w      $14b0
002130: 6100f5a0     bsr.w      $16d2
002134: 4a00         tst.b      d0
002136: 673c         beq.b      $2174
002138: 7000         moveq      #$0, d0
00213a: 102f0001     move.b     $1(a7), d0
00213e: 2200         move.l     d0, d1
002140: 202e855c     move.l     -$7aa4(a6), d0
002144: 61000358     bsr.w      $249e
002148: 41ee8030     lea.l      -$7fd0(a6), a0
00214c: 43ee826c     lea.l      -$7d94(a6), a1
002150: 203c0000008e move.l     #$8e, d0
002156: 22d8         move.l     (a0)+, (a1)+
002158: 51c8fffc     dbra       d0, $2156
00215c: 422e856a     clr.b      -$7a96(a6)
002160: 2d6e855c8560 move.l     -$7aa4(a6), -$7aa0(a6)
002166: 4a2e8569     tst.b      -$7a97(a6)
00216a: 6708         beq.b      $2174
00216c: 6100124e     bsr.w      $33bc
002170: 610017f6     bsr.w      $3968
002174: 548f         addq.l     #$2, a7
002176: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
00217c: 4e5d         unlk       a5
00217e: 4e75         rts        
002180: 4e550000     link.w     a5, #$0
002184: 48e7c000     movem.l    d0-d1, -(a7)
002188: 4a2f0003     tst.b      $3(a7)
00218c: 6608         bne.b      $2196
00218e: 223c00002328 move.l     #$2328, d1
002194: 600e         bra.b      $21a4
002196: 0c2f00010003 cmpi.b     #$1, $3(a7)
00219c: 660e         bne.b      $21ac
00219e: 223c00002329 move.l     #$2329, d1
0021a4: 202e9624     move.l     -$69dc(a6), d0
0021a8: 61006c12     bsr.w      $8dbc
0021ac: 4ced0002fffc movem.l    -$4(a5), d1
0021b2: 4e5d         unlk       a5
0021b4: 4e75         rts        
0021b6: 4e550000     link.w     a5, #$0
0021ba: 48e7c000     movem.l    d0-d1, -(a7)
0021be: 4a2f0003     tst.b      $3(a7)
0021c2: 6608         bne.b      $21cc
0021c4: 223c0000232c move.l     #$232c, d1
0021ca: 600e         bra.b      $21da
0021cc: 0c2f00010003 cmpi.b     #$1, $3(a7)
0021d2: 660e         bne.b      $21e2
0021d4: 223c0000232d move.l     #$232d, d1
0021da: 202e9624     move.l     -$69dc(a6), d0
0021de: 61006bdc     bsr.w      $8dbc
0021e2: 4ced0002fffc movem.l    -$4(a5), d1
0021e8: 4e5d         unlk       a5
0021ea: 4e75         rts        
0021ec: 4e550000     link.w     a5, #$0
0021f0: 48e78000     movem.l    d0, -(a7)
0021f4: 6100304c     bsr.w      $5242
0021f8: 4a00         tst.b      d0
0021fa: 7000         moveq      #$0, d0
0021fc: 102e984c     move.b     -$67b4(a6), d0
002200: 6100ff7e     bsr.w      $2180
002204: 7000         moveq      #$0, d0
002206: 102e9853     move.b     -$67ad(a6), d0
00220a: 61aa         bsr.b      $21b6
00220c: 4e5d         unlk       a5
00220e: 4e75         rts        
002210: 4e550000     link.w     a5, #$0
002214: 48e7c080     movem.l    d0-d1/a0, -(a7)
002218: 61003028     bsr.w      $5242
00221c: 4a00         tst.b      d0
00221e: 7000         moveq      #$0, d0
002220: 102e984c     move.b     -$67b4(a6), d0
002224: 6100ff5a     bsr.w      $2180
002228: 7000         moveq      #$0, d0
00222a: 102e9853     move.b     -$67ad(a6), d0
00222e: 6100ff86     bsr.w      $21b6
002232: 610065e6     bsr.w      $881a
002236: 4a00         tst.b      d0
002238: 6736         beq.b      $2270
00223a: 6100578e     bsr.w      $79ca
00223e: 2d408020     move.l     d0, -$7fe0(a6)
002242: 6d2c         blt.b      $2270
002244: 610044d2     bsr.w      $6718
002248: 0c000001     cmpi.b     #$1, d0
00224c: 6722         beq.b      $2270
00224e: 41fa1866     lea.l      $3ab6(pc), a0
002252: 2008         move.l     a0, d0
002254: 61003132     bsr.w      $5388
002258: 4a00         tst.b      d0
00225a: 6714         beq.b      $2270
00225c: 223c0000230b move.l     #$230b, d1
002262: 41fa186d     lea.l      $3ad1(pc), a0
002266: 2008         move.l     a0, d0
002268: 6100318a     bsr.w      $53f4
00226c: 4a00         tst.b      d0
00226e: 6604         bne.b      $2274
002270: 7000         moveq      #$0, d0
002272: 6012         bra.b      $2286
002274: 6100053e     bsr.w      $27b4
002278: 422e802c     clr.b      -$7fd4(a6)
00227c: 422e802d     clr.b      -$7fd3(a6)
002280: 422e802f     clr.b      -$7fd1(a6)
002284: 7001         moveq      #$1, d0
002286: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00228c: 4e5d         unlk       a5
00228e: 4e75         rts        
002290: 4e550000     link.w     a5, #$0
002294: 48e78000     movem.l    d0, -(a7)
002298: 422e8534     clr.b      -$7acc(a6)
00229c: 422e8532     clr.b      -$7ace(a6)
0022a0: 4e5d         unlk       a5
0022a2: 4e75         rts        
0022a4: 4e550000     link.w     a5, #$0
0022a8: 48e78000     movem.l    d0, -(a7)
0022ac: 422e8537     clr.b      -$7ac9(a6)
0022b0: 422e8536     clr.b      -$7aca(a6)
0022b4: 422e8533     clr.b      -$7acd(a6)
0022b8: 422e8535     clr.b      -$7acb(a6)
0022bc: 4e5d         unlk       a5
0022be: 4e75         rts        
0022c0: 4e550000     link.w     a5, #$0
0022c4: 48e78080     movem.l    d0/a0, -(a7)
0022c8: 61da         bsr.b      $22a4
0022ca: 61c4         bsr.b      $2290
0022cc: 6100275a     bsr.w      $4a28
0022d0: 70ff         moveq      #$ff, d0
0022d2: 2d408560     move.l     d0, -$7aa0(a6)
0022d6: 70ff         moveq      #$ff, d0
0022d8: 2d40856c     move.l     d0, -$7a94(a6)
0022dc: 422e855a     clr.b      -$7aa6(a6)
0022e0: 4aae8024     tst.l      -$7fdc(a6)
0022e4: 670c         beq.b      $22f2
0022e6: 206e8024     movea.l    -$7fdc(a6), a0
0022ea: 0c2800370044 cmpi.b     #$37, $44(a0)
0022f0: 6708         beq.b      $22fa
0022f2: 422e802c     clr.b      -$7fd4(a6)
0022f6: 422e802d     clr.b      -$7fd3(a6)
0022fa: 4ced0100fffc movem.l    -$4(a5), a0
002300: 4e5d         unlk       a5
002302: 4e75         rts        
002304: 4e550000     link.w     a5, #$0
002308: 48e78880     movem.l    d0/d4/a0, -(a7)
00230c: 4a97         tst.l      (a7)
00230e: 6722         beq.b      $2332
002310: 2057         movea.l    (a7), a0
002312: 18280010     move.b     $10(a0), d4
002316: 0c040006     cmpi.b     #$6, d4
00231a: 6712         beq.b      $232e
00231c: 0c040007     cmpi.b     #$7, d4
002320: 670c         beq.b      $232e
002322: 0c040008     cmpi.b     #$8, d4
002326: 6706         beq.b      $232e
002328: 0c040009     cmpi.b     #$9, d4
00232c: 6604         bne.b      $2332
00232e: 7001         moveq      #$1, d0
002330: 6002         bra.b      $2334
002332: 7000         moveq      #$0, d0
002334: 4ced0110fff8 movem.l    -$8(a5), d4/a0
00233a: 4e5d         unlk       a5
00233c: 4e75         rts        
00233e: 4e550000     link.w     a5, #$0
002342: 48e7c080     movem.l    d0-d1/a0, -(a7)
002346: 4a2e8537     tst.b      -$7ac9(a6)
00234a: 661e         bne.b      $236a
00234c: 41ee84a8     lea.l      -$7b58(a6), a0
002350: 2208         move.l     a0, d1
002352: 41ee8544     lea.l      -$7abc(a6), a0
002356: 2008         move.l     a0, d0
002358: 206e8c6c     movea.l    -$7394(a6), a0
00235c: 4e90         jsr        (a0)
00235e: 7264         moveq      #$64, d1
002360: 4c2e10019856 mulu.l     -$67aa(a6), d1
002366: b081         cmp.l      d1, d0
002368: 6204         bhi.b      $236e
00236a: 7001         moveq      #$1, d0
00236c: 6002         bra.b      $2370
00236e: 7000         moveq      #$0, d0
002370: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002376: 4e5d         unlk       a5
002378: 4e75         rts        
00237a: 4e550000     link.w     a5, #$0
00237e: 48e78080     movem.l    d0/a0, -(a7)
002382: 558f         subq.l     #$2, a7
002384: 1f7c00010001 move.b     #$1, $1(a7)
00238a: 206f0002     movea.l    $2(a7), a0
00238e: 0c2800420044 cmpi.b     #$42, $44(a0)
002394: 6618         bne.b      $23ae
002396: 206f0002     movea.l    $2(a7), a0
00239a: 0c2800150010 cmpi.b     #$15, $10(a0)
0023a0: 6724         beq.b      $23c6
0023a2: 206f0002     movea.l    $2(a7), a0
0023a6: 0c2800140010 cmpi.b     #$14, $10(a0)
0023ac: 6718         beq.b      $23c6
0023ae: 206f0002     movea.l    $2(a7), a0
0023b2: 0c28000d0010 cmpi.b     #$d, $10(a0)
0023b8: 670c         beq.b      $23c6
0023ba: 206f0002     movea.l    $2(a7), a0
0023be: 0c28000e0010 cmpi.b     #$e, $10(a0)
0023c4: 6604         bne.b      $23ca
0023c6: 422f0001     clr.b      $1(a7)
0023ca: 102f0001     move.b     $1(a7), d0
0023ce: 548f         addq.l     #$2, a7
0023d0: 4ced0100fffc movem.l    -$4(a5), a0
0023d6: 4e5d         unlk       a5
0023d8: 4e75         rts        
0023da: 4e550000     link.w     a5, #$0
0023de: 48e78000     movem.l    d0, -(a7)
0023e2: 4a2e8533     tst.b      -$7acd(a6)
0023e6: 670a         beq.b      $23f2
0023e8: 4a2e8534     tst.b      -$7acc(a6)
0023ec: 6704         beq.b      $23f2
0023ee: 7001         moveq      #$1, d0
0023f0: 6002         bra.b      $23f4
0023f2: 7000         moveq      #$0, d0
0023f4: 4e5d         unlk       a5
0023f6: 4e75         rts        
0023f8: 4e550000     link.w     a5, #$0
0023fc: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002400: 4a2e851c     tst.b      -$7ae4(a6)
002404: 6728         beq.b      $242e
002406: 202f0004     move.l     $4(a7), d0
00240a: 5080         addq.l     #$8, d0
00240c: 2200         move.l     d0, d1
00240e: 2017         move.l     (a7), d0
002410: 5080         addq.l     #$8, d0
002412: 61001908     bsr.w      $3d1c
002416: 4a00         tst.b      d0
002418: 6714         beq.b      $242e
00241a: 206f0004     movea.l    $4(a7), a0
00241e: 2257         movea.l    (a7), a1
002420: 1029001c     move.b     $1c(a1), d0
002424: b028001c     cmp.b      $1c(a0), d0
002428: 6604         bne.b      $242e
00242a: 7001         moveq      #$1, d0
00242c: 6002         bra.b      $2430
00242e: 7000         moveq      #$0, d0
002430: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002436: 4e5d         unlk       a5
002438: 4e75         rts        
00243a: 4e550000     link.w     a5, #$0
00243e: 48e7c080     movem.l    d0-d1/a0, -(a7)
002442: 4feffff0     lea.l      -$10(a7), a7
002446: 7000         moveq      #$0, d0
002448: 102e9832     move.b     -$67ce(a6), d0
00244c: 61000c50     bsr.w      $309e
002450: 0c000001     cmpi.b     #$1, d0
002454: 663a         bne.b      $2490
002456: 4aaf0010     tst.l      $10(a7)
00245a: 6734         beq.b      $2490
00245c: 7021         moveq      #$21, d0
00245e: b0ae8578     cmp.l      -$7a88(a6), d0
002462: 662c         bne.b      $2490
002464: 41d7         lea.l      (a7), a0
002466: 2208         move.l     a0, d1
002468: 202f0010     move.l     $10(a7), d0
00246c: 61000cae     bsr.w      $311c
002470: 41d7         lea.l      (a7), a0
002472: 2008         move.l     a0, d0
002474: 61003888     bsr.w      $5cfe
002478: 0c000001     cmpi.b     #$1, d0
00247c: 6608         bne.b      $2486
00247e: 70ff         moveq      #$ff, d0
002480: 2d40852a     move.l     d0, -$7ad6(a6)
002484: 600a         bra.b      $2490
002486: 206f0010     movea.l    $10(a7), a0
00248a: 2d680046852a move.l     $46(a0), -$7ad6(a6)
002490: 4fef0010     lea.l      $10(a7), a7
002494: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00249a: 4e5d         unlk       a5
00249c: 4e75         rts        
00249e: 4e550000     link.w     a5, #$0
0024a2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0024a6: 598f         subq.l     #$4, a7
0024a8: 600002d2     bra.w      $277c
0024ac: 0c2e00019852 cmpi.b     #$1, -$67ae(a6)
0024b2: 6600017a     bne.w      $262e
0024b6: 6100fe86     bsr.w      $233e
0024ba: 4a00         tst.b      d0
0024bc: 66000170     bne.w      $262e
0024c0: 60000166     bra.w      $2628
0024c4: 4aae8024     tst.l      -$7fdc(a6)
0024c8: 6716         beq.b      $24e0
0024ca: 206e8024     movea.l    -$7fdc(a6), a0
0024ce: 202e852a     move.l     -$7ad6(a6), d0
0024d2: b0a80046     cmp.l      $46(a0), d0
0024d6: 6708         beq.b      $24e0
0024d8: 202e8024     move.l     -$7fdc(a6), d0
0024dc: 6100ff5c     bsr.w      $243a
0024e0: 4a2e8533     tst.b      -$7acd(a6)
0024e4: 660002ba     bne.w      $27a0
0024e8: 0c2e00018535 cmpi.b     #$1, -$7acb(a6)
0024ee: 673e         beq.b      $252e
0024f0: 4a2e8537     tst.b      -$7ac9(a6)
0024f4: 660002aa     bne.w      $27a0
0024f8: 4a2e8536     tst.b      -$7aca(a6)
0024fc: 660002a2     bne.w      $27a0
002500: 7001         moveq      #$1, d0
002502: 602c         bra.b      $2530
002504: 4aae8024     tst.l      -$7fdc(a6)
002508: 6716         beq.b      $2520
00250a: 206e8024     movea.l    -$7fdc(a6), a0
00250e: 202e852a     move.l     -$7ad6(a6), d0
002512: b0a80046     cmp.l      $46(a0), d0
002516: 6708         beq.b      $2520
002518: 202e8024     move.l     -$7fdc(a6), d0
00251c: 6100ff1c     bsr.w      $243a
002520: 4a2e8533     tst.b      -$7acd(a6)
002524: 6612         bne.b      $2538
002526: 0c2e00018535 cmpi.b     #$1, -$7acb(a6)
00252c: 660a         bne.b      $2538
00252e: 7002         moveq      #$2, d0
002530: 61000470     bsr.w      $29a2
002534: 6000026a     bra.w      $27a0
002538: 4a2e856a     tst.b      -$7a96(a6)
00253c: 660000ea     bne.w      $2628
002540: 4a2e8533     tst.b      -$7acd(a6)
002544: 6600025a     bne.w      $27a0
002548: 4a2e8536     tst.b      -$7aca(a6)
00254c: 66000252     bne.w      $27a0
002550: 6100fdec     bsr.w      $233e
002554: 4a00         tst.b      d0
002556: 66000248     bne.w      $27a0
00255a: 4a2f000b     tst.b      $b(a7)
00255e: 67000240     beq.w      $27a0
002562: 600000c4     bra.w      $2628
002566: 6100fe72     bsr.w      $23da
00256a: 4a00         tst.b      d0
00256c: 670a         beq.b      $2578
00256e: 0c2e0001802f cmpi.b     #$1, -$7fd1(a6)
002574: 6600022a     bne.w      $27a0
002578: 4aae8024     tst.l      -$7fdc(a6)
00257c: 6716         beq.b      $2594
00257e: 206e8024     movea.l    -$7fdc(a6), a0
002582: 202e852a     move.l     -$7ad6(a6), d0
002586: b0a80046     cmp.l      $46(a0), d0
00258a: 6708         beq.b      $2594
00258c: 202e8024     move.l     -$7fdc(a6), d0
002590: 6100fea8     bsr.w      $243a
002594: 4a2e8533     tst.b      -$7acd(a6)
002598: 6708         beq.b      $25a2
00259a: 0c2e0001802f cmpi.b     #$1, -$7fd1(a6)
0025a0: 6606         bne.b      $25a8
0025a2: 7002         moveq      #$2, d0
0025a4: 610003fc     bsr.w      $29a2
0025a8: 4a2e8534     tst.b      -$7acc(a6)
0025ac: 660a         bne.b      $25b8
0025ae: 61002488     bsr.w      $4a38
0025b2: 722d         moveq      #$2d, d1
0025b4: b280         cmp.l      d0, d1
0025b6: 6d08         blt.b      $25c0
0025b8: 0c2e0001802f cmpi.b     #$1, -$7fd1(a6)
0025be: 660a         bne.b      $25ca
0025c0: 222e8024     move.l     -$7fdc(a6), d1
0025c4: 7002         moveq      #$2, d0
0025c6: 6100039e     bsr.w      $2966
0025ca: 4a2e802f     tst.b      -$7fd1(a6)
0025ce: 660001d0     bne.w      $27a0
0025d2: 1d7c00018534 move.b     #$1, -$7acc(a6)
0025d8: 600001c6     bra.w      $27a0
0025dc: 4aae8024     tst.l      -$7fdc(a6)
0025e0: 6716         beq.b      $25f8
0025e2: 206e8024     movea.l    -$7fdc(a6), a0
0025e6: 202e852a     move.l     -$7ad6(a6), d0
0025ea: b0a80046     cmp.l      $46(a0), d0
0025ee: 6708         beq.b      $25f8
0025f0: 202e8024     move.l     -$7fdc(a6), d0
0025f4: 6100fe44     bsr.w      $243a
0025f8: 4a2e8533     tst.b      -$7acd(a6)
0025fc: 660a         bne.b      $2608
0025fe: 0c2e00018535 cmpi.b     #$1, -$7acb(a6)
002604: 6700ff28     beq.w      $252e
002608: 4a2e856a     tst.b      -$7a96(a6)
00260c: 661a         bne.b      $2628
00260e: 4a2e8533     tst.b      -$7acd(a6)
002612: 6600018c     bne.w      $27a0
002616: 4a2f000b     tst.b      $b(a7)
00261a: 67000184     beq.w      $27a0
00261e: 6100fd1e     bsr.w      $233e
002622: 4a00         tst.b      d0
002624: 6600017a     bne.w      $27a0
002628: 7000         moveq      #$0, d0
00262a: 61000376     bsr.w      $29a2
00262e: 610003fc     bsr.w      $2a2c
002632: 6000016c     bra.w      $27a0
002636: 4aae8024     tst.l      -$7fdc(a6)
00263a: 67000164     beq.w      $27a0
00263e: 206e8024     movea.l    -$7fdc(a6), a0
002642: 202e852e     move.l     -$7ad2(a6), d0
002646: b0a80046     cmp.l      $46(a0), d0
00264a: 670e         beq.b      $265a
00264c: 206e8024     movea.l    -$7fdc(a6), a0
002650: 202e852a     move.l     -$7ad6(a6), d0
002654: b0a80046     cmp.l      $46(a0), d0
002658: 6606         bne.b      $2660
00265a: 4a2e802f     tst.b      -$7fd1(a6)
00265e: 673e         beq.b      $269e
002660: 202e8024     move.l     -$7fdc(a6), d0
002664: 6100fdd4     bsr.w      $243a
002668: 6100eaf8     bsr.w      $1162
00266c: 0c000001     cmpi.b     #$1, d0
002670: 662c         bne.b      $269e
002672: 4a2e802f     tst.b      -$7fd1(a6)
002676: 6626         bne.b      $269e
002678: 4a2e856a     tst.b      -$7a96(a6)
00267c: 6620         bne.b      $269e
00267e: 7000         moveq      #$0, d0
002680: 102e9832     move.b     -$67ce(a6), d0
002684: 61000a18     bsr.w      $309e
002688: 0c000001     cmpi.b     #$1, d0
00268c: 6610         bne.b      $269e
00268e: 4a2e8539     tst.b      -$7ac7(a6)
002692: 660a         bne.b      $269e
002694: 70f7         moveq      #$f7, d0
002696: 2d40852e     move.l     d0, -$7ad2(a6)
00269a: 60000104     bra.w      $27a0
00269e: 206e8024     movea.l    -$7fdc(a6), a0
0026a2: 202e852a     move.l     -$7ad6(a6), d0
0026a6: b0a80046     cmp.l      $46(a0), d0
0026aa: 6618         bne.b      $26c4
0026ac: 202e852e     move.l     -$7ad2(a6), d0
0026b0: b0ae852a     cmp.l      -$7ad6(a6), d0
0026b4: 6606         bne.b      $26bc
0026b6: 4a2e802f     tst.b      -$7fd1(a6)
0026ba: 6708         beq.b      $26c4
0026bc: 202e8024     move.l     -$7fdc(a6), d0
0026c0: 610001c8     bsr.w      $288a
0026c4: 4a2e8532     tst.b      -$7ace(a6)
0026c8: 6706         beq.b      $26d0
0026ca: 4a2e802f     tst.b      -$7fd1(a6)
0026ce: 6708         beq.b      $26d8
0026d0: 202e8024     move.l     -$7fdc(a6), d0
0026d4: 61000224     bsr.w      $28fa
0026d8: 202e852a     move.l     -$7ad6(a6), d0
0026dc: b0ae852e     cmp.l      -$7ad2(a6), d0
0026e0: 660000be     bne.w      $27a0
0026e4: 202e8024     move.l     -$7fdc(a6), d0
0026e8: 6100f7de     bsr.w      $1ec8
0026ec: 2e80         move.l     d0, (a7)
0026ee: 6058         bra.b      $2748
0026f0: 4aae8024     tst.l      -$7fdc(a6)
0026f4: 670000aa     beq.w      $27a0
0026f8: 206e8024     movea.l    -$7fdc(a6), a0
0026fc: 202e852e     move.l     -$7ad2(a6), d0
002700: b0a80046     cmp.l      $46(a0), d0
002704: 6716         beq.b      $271c
002706: 4a2e8539     tst.b      -$7ac7(a6)
00270a: 6710         beq.b      $271c
00270c: 4a2e856a     tst.b      -$7a96(a6)
002710: 670a         beq.b      $271c
002712: 7000         moveq      #$0, d0
002714: 6100028c     bsr.w      $29a2
002718: 61000312     bsr.w      $2a2c
00271c: 206e8024     movea.l    -$7fdc(a6), a0
002720: 202e852e     move.l     -$7ad2(a6), d0
002724: b0a80046     cmp.l      $46(a0), d0
002728: 6708         beq.b      $2732
00272a: 4a2e8539     tst.b      -$7ac7(a6)
00272e: 67000070     beq.w      $27a0
002732: 202e8024     move.l     -$7fdc(a6), d0
002736: 6100f790     bsr.w      $1ec8
00273a: 2e80         move.l     d0, (a7)
00273c: 6762         beq.b      $27a0
00273e: 2057         movea.l    (a7), a0
002740: 202e852a     move.l     -$7ad6(a6), d0
002744: b0a80046     cmp.l      $46(a0), d0
002748: 6756         beq.b      $27a0
00274a: 223c0000017c move.l     #$17c, d1
002750: 2017         move.l     (a7), d0
002752: 6100f6f0     bsr.w      $1e44
002756: 4a00         tst.b      d0
002758: 6746         beq.b      $27a0
00275a: 42a7         clr.l      -(a7)
00275c: 206e8024     movea.l    -$7fdc(a6), a0
002760: 2f10         move.l     (a0), -(a7)
002762: 222f0008     move.l     $8(a7), d1
002766: 206e851e     movea.l    -$7ae2(a6), a0
00276a: 202800bc     move.l     $bc(a0), d0
00276e: 6100139e     bsr.w      $3b0e
002772: 508f         addq.l     #$8, a7
002774: 2017         move.l     (a7), d0
002776: 6100fcc2     bsr.w      $243a
00277a: 6024         bra.b      $27a0
00277c: 202f0004     move.l     $4(a7), d0
002780: 5380         subq.l     #$1, d0
002782: 0c8000000006 cmpi.l     #$6, d0
002788: 6216         bhi.b      $27a0
00278a: 303b0206     move.w     $2792(pc, d0.w), d0
00278e: 4efb0002     jmp        $2792(pc, d0.w)
002792: fd1a         dc.w       $fd1a
002794: fd32fd72fdd4fe4afea4 fsave      ([$fdd4fe4a, a2], $fea4)
00279e: ff5e         frestore   (a6)+
0027a0: 422e802f     clr.b      -$7fd1(a6)
0027a4: 422e855a     clr.b      -$7aa6(a6)
0027a8: 588f         addq.l     #$4, a7
0027aa: 4ced0100fffc movem.l    -$4(a5), a0
0027b0: 4e5d         unlk       a5
0027b2: 4e75         rts        
0027b4: 4e550000     link.w     a5, #$0
0027b8: 48e78000     movem.l    d0, -(a7)
0027bc: 42ae9704     clr.l      -$68fc(a6)
0027c0: 4e5d         unlk       a5
0027c2: 4e75         rts        
0027c4: 4e550000     link.w     a5, #$0
0027c8: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0027cc: 206e851e     movea.l    -$7ae2(a6), a0
0027d0: 2d6800bc854c move.l     $bc(a0), -$7ab4(a6)
0027d6: 42ae8550     clr.l      -$7ab0(a6)
0027da: 606a         bra.b      $2846
0027dc: 206e854c     movea.l    -$7ab4(a6), a0
0027e0: 2d6800208550 move.l     $20(a0), -$7ab0(a6)
0027e6: 6050         bra.b      $2838
0027e8: 206e8550     movea.l    -$7ab0(a6), a0
0027ec: 4aa80010     tst.l      $10(a0)
0027f0: 6f3e         ble.b      $2830
0027f2: 41ee84a8     lea.l      -$7b58(a6), a0
0027f6: 2208         move.l     a0, d1
0027f8: 202e8550     move.l     -$7ab0(a6), d0
0027fc: 6100e992     bsr.w      $1190
002800: 4a00         tst.b      d0
002802: 672c         beq.b      $2830
002804: 41ee84a8     lea.l      -$7b58(a6), a0
002808: 2208         move.l     a0, d1
00280a: 206e854c     movea.l    -$7ab4(a6), a0
00280e: 2028001c     move.l     $1c(a0), d0
002812: 6100e97c     bsr.w      $1190
002816: 4a00         tst.b      d0
002818: 6712         beq.b      $282c
00281a: 206e854c     movea.l    -$7ab4(a6), a0
00281e: 226e854c     movea.l    -$7ab4(a6), a1
002822: 20290018     move.l     $18(a1), d0
002826: b0a8001c     cmp.l      $1c(a0), d0
00282a: 6604         bne.b      $2830
00282c: 7001         moveq      #$1, d0
00282e: 6020         bra.b      $2850
002830: 206e8550     movea.l    -$7ab0(a6), a0
002834: 2d508550     move.l     (a0), -$7ab0(a6)
002838: 4aae8550     tst.l      -$7ab0(a6)
00283c: 66aa         bne.b      $27e8
00283e: 206e854c     movea.l    -$7ab4(a6), a0
002842: 2d50854c     move.l     (a0), -$7ab4(a6)
002846: 4aae854c     tst.l      -$7ab4(a6)
00284a: 6600ff90     bne.w      $27dc
00284e: 7000         moveq      #$0, d0
002850: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
002856: 4e5d         unlk       a5
002858: 4e75         rts        
00285a: 4e550000     link.w     a5, #$0
00285e: 48e7c080     movem.l    d0-d1/a0, -(a7)
002862: 206e851e     movea.l    -$7ae2(a6), a0
002866: 216f00140068 move.l     $14(a7), $68(a0)
00286c: 216f0018006c move.l     $18(a7), $6c(a0)
002872: 223c0000232a move.l     #$232a, d1
002878: 202e9624     move.l     -$69dc(a6), d0
00287c: 6100653e     bsr.w      $8dbc
002880: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002886: 4e5d         unlk       a5
002888: 4e75         rts        
00288a: 4e550000     link.w     a5, #$0
00288e: 48e7c000     movem.l    d0-d1, -(a7)
002892: 7000         moveq      #$0, d0
002894: 102e9832     move.b     -$67ce(a6), d0
002898: 61000804     bsr.w      $309e
00289c: 4a00         tst.b      d0
00289e: 6728         beq.b      $28c8
0028a0: 4a2e802c     tst.b      -$7fd4(a6)
0028a4: 6706         beq.b      $28ac
0028a6: 4a2e802d     tst.b      -$7fd3(a6)
0028aa: 6612         bne.b      $28be
0028ac: 4a2e8533     tst.b      -$7acd(a6)
0028b0: 6608         bne.b      $28ba
0028b2: 202e8024     move.l     -$7fdc(a6), d0
0028b6: 61000e22     bsr.w      $36da
0028ba: 610010e8     bsr.w      $39a4
0028be: 2d6e852a852e move.l     -$7ad6(a6), -$7ad2(a6)
0028c4: 422e8539     clr.b      -$7ac7(a6)
0028c8: 4a2e8569     tst.b      -$7a97(a6)
0028cc: 6622         bne.b      $28f0
0028ce: 2017         move.l     (a7), d0
0028d0: 6100e97c     bsr.w      $124e
0028d4: 4a00         tst.b      d0
0028d6: 6718         beq.b      $28f0
0028d8: 223c00002304 move.l     #$2304, d1
0028de: 4eae9a8e     jsr        -$6572(a6)
0028e2: 61005df2     bsr.w      $86d6
0028e6: 610064d4     bsr.w      $8dbc
0028ea: 1d7c00018569 move.b     #$1, -$7a97(a6)
0028f0: 4ced0002fffc movem.l    -$4(a5), d1
0028f6: 4e5d         unlk       a5
0028f8: 4e75         rts        
0028fa: 4e550000     link.w     a5, #$0
0028fe: 48e7c080     movem.l    d0-d1/a0, -(a7)
002902: 4a2e802c     tst.b      -$7fd4(a6)
002906: 6706         beq.b      $290e
002908: 4a2e802d     tst.b      -$7fd3(a6)
00290c: 6606         bne.b      $2914
00290e: 2217         move.l     (a7), d1
002910: 7003         moveq      #$3, d0
002912: 6152         bsr.b      $2966
002914: 1d7c00018532 move.b     #$1, -$7ace(a6)
00291a: 4a2e8569     tst.b      -$7a97(a6)
00291e: 6622         bne.b      $2942
002920: 2017         move.l     (a7), d0
002922: 6100e92a     bsr.w      $124e
002926: 4a00         tst.b      d0
002928: 6718         beq.b      $2942
00292a: 223c00002304 move.l     #$2304, d1
002930: 4eae9a8e     jsr        -$6572(a6)
002934: 61005da0     bsr.w      $86d6
002938: 61006482     bsr.w      $8dbc
00293c: 1d7c00018569 move.b     #$1, -$7a97(a6)
002942: 2057         movea.l    (a7), a0
002944: 0c2800370044 cmpi.b     #$37, $44(a0)
00294a: 6608         bne.b      $2954
00294c: 1d7c0001802c move.b     #$1, -$7fd4(a6)
002952: 6008         bra.b      $295c
002954: 422e802c     clr.b      -$7fd4(a6)
002958: 422e802d     clr.b      -$7fd3(a6)
00295c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002962: 4e5d         unlk       a5
002964: 4e75         rts        
002966: 4e550000     link.w     a5, #$0
00296a: 48e7c000     movem.l    d0-d1, -(a7)
00296e: 7000         moveq      #$0, d0
002970: 102e9832     move.b     -$67ce(a6), d0
002974: 61000706     bsr.w      $307c
002978: 4a00         tst.b      d0
00297a: 6722         beq.b      $299e
00297c: 7016         moveq      #$16, d0
00297e: 61003e7e     bsr.w      $67fe
002982: 2f17         move.l     (a7), -(a7)
002984: 202f0008     move.l     $8(a7), d0
002988: 6100f53e     bsr.w      $1ec8
00298c: 2200         move.l     d0, d1
00298e: 202f0008     move.l     $8(a7), d0
002992: 61003df4     bsr.w      $6788
002996: 588f         addq.l     #$4, a7
002998: 700b         moveq      #$b, d0
00299a: 61003e62     bsr.w      $67fe
00299e: 4e5d         unlk       a5
0029a0: 4e75         rts        
0029a2: 4e550000     link.w     a5, #$0
0029a6: 48e78800     movem.l    d0/d4, -(a7)
0029aa: 7000         moveq      #$0, d0
0029ac: 102e9832     move.b     -$67ce(a6), d0
0029b0: 610006ec     bsr.w      $309e
0029b4: 4a00         tst.b      d0
0029b6: 6700006a     beq.w      $2a22
0029ba: 7021         moveq      #$21, d0
0029bc: b0ae8578     cmp.l      -$7a88(a6), d0
0029c0: 6660         bne.b      $2a22
0029c2: 6036         bra.b      $29fa
0029c4: 202e8024     move.l     -$7fdc(a6), d0
0029c8: 61000d10     bsr.w      $36da
0029cc: 202e8024     move.l     -$7fdc(a6), d0
0029d0: 6100e644     bsr.w      $1016
0029d4: 2800         move.l     d0, d4
0029d6: 1d7c00018533 move.b     #$1, -$7acd(a6)
0029dc: 6036         bra.b      $2a14
0029de: 283c0000233c move.l     #$233c, d4
0029e4: 1d7c00018536 move.b     #$1, -$7aca(a6)
0029ea: 6028         bra.b      $2a14
0029ec: 283c0000233c move.l     #$233c, d4
0029f2: 1d7c00018537 move.b     #$1, -$7ac9(a6)
0029f8: 601a         bra.b      $2a14
0029fa: 2017         move.l     (a7), d0
0029fc: 0c80000000ff cmpi.l     #$ff, d0
002a02: 6210         bhi.b      $2a14
002a04: 4a00         tst.b      d0
002a06: 67e4         beq.b      $29ec
002a08: 0c000001     cmpi.b     #$1, d0
002a0c: 67d0         beq.b      $29de
002a0e: 0c000002     cmpi.b     #$2, d0
002a12: 67b0         beq.b      $29c4
002a14: 422e802c     clr.b      -$7fd4(a6)
002a18: 422e802d     clr.b      -$7fd3(a6)
002a1c: 2004         move.l     d4, d0
002a1e: 6100efc4     bsr.w      $19e4
002a22: 4ced0010fffc movem.l    -$4(a5), d4
002a28: 4e5d         unlk       a5
002a2a: 4e75         rts        
002a2c: 4e550000     link.w     a5, #$0
002a30: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002a34: 7000         moveq      #$0, d0
002a36: 102e9832     move.b     -$67ce(a6), d0
002a3a: 61000640     bsr.w      $307c
002a3e: 4a00         tst.b      d0
002a40: 6762         beq.b      $2aa4
002a42: 4878023c     pea.l      $23c.w
002a46: 41ee826c     lea.l      -$7d94(a6), a0
002a4a: 2208         move.l     a0, d1
002a4c: 41ee8030     lea.l      -$7fd0(a6), a0
002a50: 2008         move.l     a0, d0
002a52: 610072f2     bsr.w      $9d46
002a56: 588f         addq.l     #$4, a7
002a58: 4a80         tst.l      d0
002a5a: 6748         beq.b      $2aa4
002a5c: 0c2e00019854 cmpi.b     #$1, -$67ac(a6)
002a62: 6640         bne.b      $2aa4
002a64: 6100e6fc     bsr.w      $1162
002a68: 4a00         tst.b      d0
002a6a: 6638         bne.b      $2aa4
002a6c: 7016         moveq      #$16, d0
002a6e: 61003d8e     bsr.w      $67fe
002a72: 7045         moveq      #$45, d0
002a74: 61003d52     bsr.w      $67c8
002a78: 206e854c     movea.l    -$7ab4(a6), a0
002a7c: 0c28000b0010 cmpi.b     #$b, $10(a0)
002a82: 6606         bne.b      $2a8a
002a84: 7041         moveq      #$41, d0
002a86: 61003d40     bsr.w      $67c8
002a8a: 700b         moveq      #$b, d0
002a8c: 61003d70     bsr.w      $67fe
002a90: 41ee8030     lea.l      -$7fd0(a6), a0
002a94: 43ee826c     lea.l      -$7d94(a6), a1
002a98: 203c0000008e move.l     #$8e, d0
002a9e: 22d8         move.l     (a0)+, (a1)+
002aa0: 51c8fffc     dbra       d0, $2a9e
002aa4: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
002aaa: 4e5d         unlk       a5
002aac: 4e75         rts        
002aae: 4e550000     link.w     a5, #$0
002ab2: 48e78000     movem.l    d0, -(a7)
002ab6: 7000         moveq      #$0, d0
002ab8: 102e9832     move.b     -$67ce(a6), d0
002abc: 610005be     bsr.w      $307c
002ac0: 4a00         tst.b      d0
002ac2: 6712         beq.b      $2ad6
002ac4: 7016         moveq      #$16, d0
002ac6: 61003d36     bsr.w      $67fe
002aca: 700f         moveq      #$f, d0
002acc: 61003cfa     bsr.w      $67c8
002ad0: 700b         moveq      #$b, d0
002ad2: 61003d2a     bsr.w      $67fe
002ad6: 4e5d         unlk       a5
002ad8: 4e75         rts        
002ada: 4e550000     link.w     a5, #$0
002ade: 48e7ff80     movem.l    d0-d7/a0, -(a7)
002ae2: 4fefffc8     lea.l      -$38(a7), a7
002ae6: 422f0007     clr.b      $7(a7)
002aea: 206f0038     movea.l    $38(a7), a0
002aee: 4210         clr.b      (a0)
002af0: 4aae8024     tst.l      -$7fdc(a6)
002af4: 660a         bne.b      $2b00
002af6: 7001         moveq      #$1, d0
002af8: 2f400010     move.l     d0, $10(a7)
002afc: 600002ae     bra.w      $2dac
002b00: 202e855c     move.l     -$7aa4(a6), d0
002b04: 610004e4     bsr.w      $2fea
002b08: 2f400010     move.l     d0, $10(a7)
002b0c: 72ff         moveq      #$ff, d1
002b0e: b280         cmp.l      d0, d1
002b10: 6600029a     bne.w      $2dac
002b14: 282e8028     move.l     -$7fd8(a6), d4
002b18: 7200         moveq      #$0, d1
002b1a: 202e8024     move.l     -$7fdc(a6), d0
002b1e: 610016dc     bsr.w      $41fc
002b22: 2f400008     move.l     d0, $8(a7)
002b26: 7200         moveq      #$0, d1
002b28: 202e8024     move.l     -$7fdc(a6), d0
002b2c: 61001838     bsr.w      $4366
002b30: 2c00         move.l     d0, d6
002b32: 4aae984e     tst.l      -$67b2(a6)
002b36: 6714         beq.b      $2b4c
002b38: 202e84bc     move.l     -$7b44(a6), d0
002b3c: 4c2e0000984e mulu.l     -$67b2(a6), d0
002b42: 4c7c080000002710 divs.l     #$2710, d0
002b4a: dc80         add.l      d0, d6
002b4c: 202e84bc     move.l     -$7b44(a6), d0
002b50: 4e4f         trap       #$f
002b52: 0020263c     ori.b      #$3c, -(a0)
002b56: 8d4fdf3b     pack       -(a7), -(a6), #$df3b
002b5a: 243c3fa26e97 move.l     #$3fa26e97, d2
002b60: 4e4f         trap       #$f
002b62: 00124e4f     ori.b      #$4f, (a2)
002b66: 00242f40     ori.b      #$40, -(a4)
002b6a: 000c         .dc.w      $000c
002b6c: 2f2f0008     move.l     $8(a7), -(a7)
002b70: 2f06         move.l     d6, -(a7)
002b72: 206e8024     movea.l    -$7fdc(a6), a0
002b76: 7000         moveq      #$0, d0
002b78: 10280032     move.b     $32(a0), d0
002b7c: 2f00         move.l     d0, -(a7)
002b7e: 2f2e8024     move.l     -$7fdc(a6), -(a7)
002b82: 222f001c     move.l     $1c(a7), d1
002b86: 41ef0024     lea.l      $24(a7), a0
002b8a: 2008         move.l     a0, d0
002b8c: 6100df74     bsr.w      $b02
002b90: 4fef0010     lea.l      $10(a7), a7
002b94: 41ef0014     lea.l      $14(a7), a0
002b98: 2008         move.l     a0, d0
002b9a: 61000224     bsr.w      $2dc0
002b9e: 1f400007     move.b     d0, $7(a7)
002ba2: b8af0014     cmp.l      $14(a7), d4
002ba6: 6e28         bgt.b      $2bd0
002ba8: 4a2e855a     tst.b      -$7aa6(a6)
002bac: 670e         beq.b      $2bbc
002bae: 7006         moveq      #$6, d0
002bb0: 2f400010     move.l     d0, $10(a7)
002bb4: 422e855a     clr.b      -$7aa6(a6)
002bb8: 600000e8     bra.w      $2ca2
002bbc: 6100e5a4     bsr.w      $1162
002bc0: 4a00         tst.b      d0
002bc2: 6606         bne.b      $2bca
002bc4: 7006         moveq      #$6, d0
002bc6: 6000006e     bra.w      $2c36
002bca: 7007         moveq      #$7, d0
002bcc: 60000068     bra.w      $2c36
002bd0: b8af0018     cmp.l      $18(a7), d4
002bd4: 6c04         bge.b      $2bda
002bd6: 7006         moveq      #$6, d0
002bd8: 605c         bra.b      $2c36
002bda: b8af001c     cmp.l      $1c(a7), d4
002bde: 6e40         bgt.b      $2c20
002be0: 4a2e855a     tst.b      -$7aa6(a6)
002be4: 6712         beq.b      $2bf8
002be6: 202e8024     move.l     -$7fdc(a6), d0
002bea: 6100f78e     bsr.w      $237a
002bee: 0c000001     cmpi.b     #$1, d0
002bf2: 6604         bne.b      $2bf8
002bf4: 7004         moveq      #$4, d0
002bf6: 60b8         bra.b      $2bb0
002bf8: 202f0018     move.l     $18(a7), d0
002bfc: d0af0034     add.l      $34(a7), d0
002c00: d0ae9856     add.l      -$67aa(a6), d0
002c04: 2a00         move.l     d0, d5
002c06: b885         cmp.l      d5, d4
002c08: 6f06         ble.b      $2c10
002c0a: 7005         moveq      #$5, d0
002c0c: 60000088     bra.w      $2c96
002c10: 0c2f00010007 cmpi.b     #$1, $7(a7)
002c16: 6604         bne.b      $2c1c
002c18: 7006         moveq      #$6, d0
002c1a: 601a         bra.b      $2c36
002c1c: 7005         moveq      #$5, d0
002c1e: 6016         bra.b      $2c36
002c20: b8af0020     cmp.l      $20(a7), d4
002c24: 6c16         bge.b      $2c3c
002c26: 202e8024     move.l     -$7fdc(a6), d0
002c2a: 6100f74e     bsr.w      $237a
002c2e: 0c000001     cmpi.b     #$1, d0
002c32: 66d6         bne.b      $2c0a
002c34: 7004         moveq      #$4, d0
002c36: 2f400010     move.l     d0, $10(a7)
002c3a: 6066         bra.b      $2ca2
002c3c: b8af0024     cmp.l      $24(a7), d4
002c40: 6e46         bgt.b      $2c88
002c42: 4a2e855a     tst.b      -$7aa6(a6)
002c46: 6712         beq.b      $2c5a
002c48: 202e8024     move.l     -$7fdc(a6), d0
002c4c: 6100f72c     bsr.w      $237a
002c50: 4a00         tst.b      d0
002c52: 6706         beq.b      $2c5a
002c54: 7004         moveq      #$4, d0
002c56: 6000ff58     bra.w      $2bb0
002c5a: 202f0020     move.l     $20(a7), d0
002c5e: d0af0034     add.l      $34(a7), d0
002c62: d0ae9856     add.l      -$67aa(a6), d0
002c66: 2a00         move.l     d0, d5
002c68: b885         cmp.l      d5, d4
002c6a: 6f0a         ble.b      $2c76
002c6c: 206f0038     movea.l    $38(a7), a0
002c70: 10bc0001     move.b     #$1, (a0)
002c74: 600e         bra.b      $2c84
002c76: 202e8024     move.l     -$7fdc(a6), d0
002c7a: 6100f6fe     bsr.w      $237a
002c7e: 0c000001     cmpi.b     #$1, d0
002c82: 67b0         beq.b      $2c34
002c84: 7003         moveq      #$3, d0
002c86: 60ae         bra.b      $2c36
002c88: 0c2e00019852 cmpi.b     #$1, -$67ae(a6)
002c8e: 6604         bne.b      $2c94
002c90: 7002         moveq      #$2, d0
002c92: 60a2         bra.b      $2c36
002c94: 7003         moveq      #$3, d0
002c96: 2f400010     move.l     d0, $10(a7)
002c9a: 206f0038     movea.l    $38(a7), a0
002c9e: 10bc0001     move.b     #$1, (a0)
002ca2: 4a2e988a     tst.b      -$6776(a6)
002ca6: 6652         bne.b      $2cfa
002ca8: 7004         moveq      #$4, d0
002caa: b0af0010     cmp.l      $10(a7), d0
002cae: 664a         bne.b      $2cfa
002cb0: 206e8024     movea.l    -$7fdc(a6), a0
002cb4: 0c2800030010 cmpi.b     #$3, $10(a0)
002cba: 670c         beq.b      $2cc8
002cbc: 206e8024     movea.l    -$7fdc(a6), a0
002cc0: 0c2800020010 cmpi.b     #$2, $10(a0)
002cc6: 6632         bne.b      $2cfa
002cc8: 0c84000001f4 cmpi.l     #$1f4, d4
002cce: 6e0c         bgt.b      $2cdc
002cd0: 206e8550     movea.l    -$7ab0(a6), a0
002cd4: 0c280003005a cmpi.b     #$3, $5a(a0)
002cda: 6514         bcs.b      $2cf0
002cdc: 0c84000000fa cmpi.l     #$fa, d4
002ce2: 6e10         bgt.b      $2cf4
002ce4: 206e8550     movea.l    -$7ab0(a6), a0
002ce8: 0c280003005a cmpi.b     #$3, $5a(a0)
002cee: 6504         bcs.b      $2cf4
002cf0: 7006         moveq      #$6, d0
002cf2: 6002         bra.b      $2cf6
002cf4: 7002         moveq      #$2, d0
002cf6: 2f400010     move.l     d0, $10(a7)
002cfa: 7004         moveq      #$4, d0
002cfc: b0af0010     cmp.l      $10(a7), d0
002d00: 66000072     bne.w      $2d74
002d04: 202e8024     move.l     -$7fdc(a6), d0
002d08: 6100e544     bsr.w      $124e
002d0c: 4a00         tst.b      d0
002d0e: 6664         bne.b      $2d74
002d10: 206e8024     movea.l    -$7fdc(a6), a0
002d14: 20680018     movea.l    $18(a0), a0
002d18: 7000         moveq      #$0, d0
002d1a: 1028005a     move.b     $5a(a0), d0
002d1e: 2f400002     move.l     d0, $2(a7)
002d22: 206e8024     movea.l    -$7fdc(a6), a0
002d26: 20280018     move.l     $18(a0), d0
002d2a: 61000f78     bsr.w      $3ca4
002d2e: 1f400001     move.b     d0, $1(a7)
002d32: 0c2f00010001 cmpi.b     #$1, $1(a7)
002d38: 660c         bne.b      $2d46
002d3a: 7000         moveq      #$0, d0
002d3c: 102e9862     move.b     -$679e(a6), d0
002d40: b0af0002     cmp.l      $2(a7), d0
002d44: 6f14         ble.b      $2d5a
002d46: 0c2f00010001 cmpi.b     #$1, $1(a7)
002d4c: 6726         beq.b      $2d74
002d4e: 7000         moveq      #$0, d0
002d50: 102e9863     move.b     -$679d(a6), d0
002d54: b0af0002     cmp.l      $2(a7), d0
002d58: 6e1a         bgt.b      $2d74
002d5a: 206e8024     movea.l    -$7fdc(a6), a0
002d5e: 7001         moveq      #$1, d0
002d60: b0a8003c     cmp.l      $3c(a0), d0
002d64: 660e         bne.b      $2d74
002d66: 7005         moveq      #$5, d0
002d68: 2f400010     move.l     d0, $10(a7)
002d6c: 206f0038     movea.l    $38(a7), a0
002d70: 10bc0001     move.b     #$1, (a0)
002d74: 4a2e8533     tst.b      -$7acd(a6)
002d78: 6632         bne.b      $2dac
002d7a: 7002         moveq      #$2, d0
002d7c: b0af0010     cmp.l      $10(a7), d0
002d80: 6710         beq.b      $2d92
002d82: 7003         moveq      #$3, d0
002d84: b0af0010     cmp.l      $10(a7), d0
002d88: 6708         beq.b      $2d92
002d8a: 7005         moveq      #$5, d0
002d8c: b0af0010     cmp.l      $10(a7), d0
002d90: 661a         bne.b      $2dac
002d92: 0c8400003f2a cmpi.l     #$3f2a, d4
002d98: 6e12         bgt.b      $2dac
002d9a: 202e8024     move.l     -$7fdc(a6), d0
002d9e: 6100f5da     bsr.w      $237a
002da2: 4a00         tst.b      d0
002da4: 6706         beq.b      $2dac
002da6: 1d7c00018535 move.b     #$1, -$7acb(a6)
002dac: 2d6f0010855c move.l     $10(a7), -$7aa4(a6)
002db2: 4fef0038     lea.l      $38(a7), a7
002db6: 4ced01feffe0 movem.l    -$20(a5), d1-d7/a0
002dbc: 4e5d         unlk       a5
002dbe: 4e75         rts        
002dc0: 4e550000     link.w     a5, #$0
002dc4: 48e7fe80     movem.l    d0-d6/a0, -(a7)
002dc8: 5d8f         subq.l     #$6, a7
002dca: 1f7c00010005 move.b     #$1, $5(a7)
002dd0: 202e8024     move.l     -$7fdc(a6), d0
002dd4: 6100e478     bsr.w      $124e
002dd8: 4a00         tst.b      d0
002dda: 670c         beq.b      $2de8
002ddc: 202f0006     move.l     $6(a7), d0
002de0: 6100eca2     bsr.w      $1a84
002de4: 600001f0     bra.w      $2fd6
002de8: 42ae8564     clr.l      -$7a9c(a6)
002dec: 202e8024     move.l     -$7fdc(a6), d0
002df0: 6100f512     bsr.w      $2304
002df4: 4a00         tst.b      d0
002df6: 67000086     beq.w      $2e7e
002dfa: 2f2e8024     move.l     -$7fdc(a6), -(a7)
002dfe: 222e854c     move.l     -$7ab4(a6), d1
002e02: 206e851e     movea.l    -$7ae2(a6), a0
002e06: 202800bc     move.l     $bc(a0), d0
002e0a: 61000f54     bsr.w      $3d60
002e0e: 588f         addq.l     #$4, a7
002e10: 2e80         move.l     d0, (a7)
002e12: 6700016e     beq.w      $2f82
002e16: 2f2e8024     move.l     -$7fdc(a6), -(a7)
002e1a: 222f0004     move.l     $4(a7), d1
002e1e: 206e851e     movea.l    -$7ae2(a6), a0
002e22: 202800bc     move.l     $bc(a0), d0
002e26: 61001d9c     bsr.w      $4bc4
002e2a: 588f         addq.l     #$4, a7
002e2c: 2a00         move.l     d0, d5
002e2e: 206f0006     movea.l    $6(a7), a0
002e32: baa80004     cmp.l      $4(a0), d5
002e36: 6c00014a     bge.w      $2f82
002e3a: 206f0006     movea.l    $6(a7), a0
002e3e: 2010         move.l     (a0), d0
002e40: 4e4f         trap       #$f
002e42: 0020263c     ori.b      #$3c, -(a0)
002e46: 33333333243c3ff333334e4f move.w     ([$243c3ff3, a3, d3.w * 2], $33334e4f), -(a1)
002e52: 00122601     ori.b      #$1, (a2)
002e56: 2400         move.l     d0, d2
002e58: 2005         move.l     d5, d0
002e5a: 4e4f         trap       #$f
002e5c: 00204e4f     ori.b      #$4f, -(a0)
002e60: 00146d00     ori.b      #$0, (a4)
002e64: 011e         btst.l     d0, (a6)+
002e66: 7078         moveq      #$78, d0
002e68: b085         cmp.l      d5, d0
002e6a: 6e000116     bgt.w      $2f82
002e6e: 422f0005     clr.b      $5(a7)
002e72: 206f0006     movea.l    $6(a7), a0
002e76: 21450004     move.l     d5, $4(a0)
002e7a: 60000106     bra.w      $2f82
002e7e: 206e8024     movea.l    -$7fdc(a6), a0
002e82: 7001         moveq      #$1, d0
002e84: b0a8003c     cmp.l      $3c(a0), d0
002e88: 6c6c         bge.b      $2ef6
002e8a: 2f2e8024     move.l     -$7fdc(a6), -(a7)
002e8e: 206e8024     movea.l    -$7fdc(a6), a0
002e92: 22280008     move.l     $8(a0), d1
002e96: 206e851e     movea.l    -$7ae2(a6), a0
002e9a: 202800bc     move.l     $bc(a0), d0
002e9e: 61001cba     bsr.w      $4b5a
002ea2: 588f         addq.l     #$4, a7
002ea4: 2800         move.l     d0, d4
002ea6: 206f0006     movea.l    $6(a7), a0
002eaa: b890         cmp.l      (a0), d4
002eac: 6f48         ble.b      $2ef6
002eae: 206f0006     movea.l    $6(a7), a0
002eb2: 2004         move.l     d4, d0
002eb4: 9090         sub.l      (a0), d0
002eb6: 2c00         move.l     d0, d6
002eb8: 206f0006     movea.l    $6(a7), a0
002ebc: 2084         move.l     d4, (a0)
002ebe: 206f0006     movea.l    $6(a7), a0
002ec2: dda80004     add.l      d6, $4(a0)
002ec6: 206f0006     movea.l    $6(a7), a0
002eca: dda80008     add.l      d6, $8(a0)
002ece: 206f0006     movea.l    $6(a7), a0
002ed2: dda8000c     add.l      d6, $c(a0)
002ed6: 206f0006     movea.l    $6(a7), a0
002eda: dda80010     add.l      d6, $10(a0)
002ede: 206f0006     movea.l    $6(a7), a0
002ee2: dda80014     add.l      d6, $14(a0)
002ee6: 206f0006     movea.l    $6(a7), a0
002eea: dda80018     add.l      d6, $18(a0)
002eee: 206f0006     movea.l    $6(a7), a0
002ef2: dda8001c     add.l      d6, $1c(a0)
002ef6: 206e8024     movea.l    -$7fdc(a6), a0
002efa: 4aa80004     tst.l      $4(a0)
002efe: 67000082     beq.w      $2f82
002f02: 2f2e8024     move.l     -$7fdc(a6), -(a7)
002f06: 206e8024     movea.l    -$7fdc(a6), a0
002f0a: 22280004     move.l     $4(a0), d1
002f0e: 206e851e     movea.l    -$7ae2(a6), a0
002f12: 202800bc     move.l     $bc(a0), d0
002f16: 61001cac     bsr.w      $4bc4
002f1a: 588f         addq.l     #$4, a7
002f1c: 2200         move.l     d0, d1
002f1e: 206e8024     movea.l    -$7fdc(a6), a0
002f22: 20280004     move.l     $4(a0), d0
002f26: 6100edd6     bsr.w      $1cfe
002f2a: 9280         sub.l      d0, d1
002f2c: 2a01         move.l     d1, d5
002f2e: 4a85         tst.l      d5
002f30: 6f04         ble.b      $2f36
002f32: 2005         move.l     d5, d0
002f34: 6002         bra.b      $2f38
002f36: 7000         moveq      #$0, d0
002f38: 2a00         move.l     d0, d5
002f3a: 206f0006     movea.l    $6(a7), a0
002f3e: baa80004     cmp.l      $4(a0), d5
002f42: 6c3e         bge.b      $2f82
002f44: 422f0005     clr.b      $5(a7)
002f48: 206f0006     movea.l    $6(a7), a0
002f4c: 20280004     move.l     $4(a0), d0
002f50: 9085         sub.l      d5, d0
002f52: 206f0006     movea.l    $6(a7), a0
002f56: 91a80008     sub.l      d0, $8(a0)
002f5a: 206f0006     movea.l    $6(a7), a0
002f5e: 21450004     move.l     d5, $4(a0)
002f62: 206f0006     movea.l    $6(a7), a0
002f66: 7014         moveq      #$14, d0
002f68: d090         add.l      (a0), d0
002f6a: b085         cmp.l      d5, d0
002f6c: 6f14         ble.b      $2f82
002f6e: 70ec         moveq      #$ec, d0
002f70: d085         add.l      d5, d0
002f72: 6f06         ble.b      $2f7a
002f74: 70ec         moveq      #$ec, d0
002f76: d085         add.l      d5, d0
002f78: 6002         bra.b      $2f7c
002f7a: 7000         moveq      #$0, d0
002f7c: 206f0006     movea.l    $6(a7), a0
002f80: 2080         move.l     d0, (a0)
002f82: 70ff         moveq      #$ff, d0
002f84: b0ae8560     cmp.l      -$7aa0(a6), d0
002f88: 664c         bne.b      $2fd6
002f8a: 4a2e855a     tst.b      -$7aa6(a6)
002f8e: 6646         bne.b      $2fd6
002f90: 2f2e8024     move.l     -$7fdc(a6), -(a7)
002f94: 206e8024     movea.l    -$7fdc(a6), a0
002f98: 22280004     move.l     $4(a0), d1
002f9c: 206e851e     movea.l    -$7ae2(a6), a0
002fa0: 202800bc     move.l     $bc(a0), d0
002fa4: 61001c1e     bsr.w      $4bc4
002fa8: 588f         addq.l     #$4, a7
002faa: 2a00         move.l     d0, d5
002fac: 206f0006     movea.l    $6(a7), a0
002fb0: baa80004     cmp.l      $4(a0), d5
002fb4: 6f20         ble.b      $2fd6
002fb6: 206f0006     movea.l    $6(a7), a0
002fba: baa80008     cmp.l      $8(a0), d5
002fbe: 6c04         bge.b      $2fc4
002fc0: 2005         move.l     d5, d0
002fc2: 6008         bra.b      $2fcc
002fc4: 206f0006     movea.l    $6(a7), a0
002fc8: 20280008     move.l     $8(a0), d0
002fcc: 2a00         move.l     d0, d5
002fce: 206f0006     movea.l    $6(a7), a0
002fd2: 21450004     move.l     d5, $4(a0)
002fd6: 422f0005     clr.b      $5(a7)
002fda: 102f0005     move.b     $5(a7), d0
002fde: 5c8f         addq.l     #$6, a7
002fe0: 4ced017effe4 movem.l    -$1c(a5), d1-d6/a0
002fe6: 4e5d         unlk       a5
002fe8: 4e75         rts        
002fea: 4e550000     link.w     a5, #$0
002fee: 48e78000     movem.l    d0, -(a7)
002ff2: 598f         subq.l     #$4, a7
002ff4: 70ff         moveq      #$ff, d0
002ff6: 2e80         move.l     d0, (a7)
002ff8: 4a2e855a     tst.b      -$7aa6(a6)
002ffc: 6722         beq.b      $3020
002ffe: 6100dfb0     bsr.w      $fb0
003002: 4a00         tst.b      d0
003004: 6704         beq.b      $300a
003006: 7006         moveq      #$6, d0
003008: 600e         bra.b      $3018
00300a: 4a2e8533     tst.b      -$7acd(a6)
00300e: 6606         bne.b      $3016
003010: 4a2e8534     tst.b      -$7acc(a6)
003014: 675e         beq.b      $3074
003016: 7004         moveq      #$4, d0
003018: 2e80         move.l     d0, (a7)
00301a: 422e855a     clr.b      -$7aa6(a6)
00301e: 6054         bra.b      $3074
003020: 4a2e802f     tst.b      -$7fd1(a6)
003024: 670c         beq.b      $3032
003026: 7007         moveq      #$7, d0
003028: b0af0004     cmp.l      $4(a7), d0
00302c: 6646         bne.b      $3074
00302e: 7006         moveq      #$6, d0
003030: 6040         bra.b      $3072
003032: 202e8024     move.l     -$7fdc(a6), d0
003036: 6100e938     bsr.w      $1970
00303a: 4a00         tst.b      d0
00303c: 6612         bne.b      $3050
00303e: 4a2e8539     tst.b      -$7ac7(a6)
003042: 6712         beq.b      $3056
003044: 4a2e855a     tst.b      -$7aa6(a6)
003048: 6606         bne.b      $3050
00304a: 4a2e853a     tst.b      -$7ac6(a6)
00304e: 6706         beq.b      $3056
003050: 422e855a     clr.b      -$7aa6(a6)
003054: 60d8         bra.b      $302e
003056: 4a2e8539     tst.b      -$7ac7(a6)
00305a: 6718         beq.b      $3074
00305c: 202e8024     move.l     -$7fdc(a6), d0
003060: 6100e1ec     bsr.w      $124e
003064: 4a00         tst.b      d0
003066: 660c         bne.b      $3074
003068: 610018ca     bsr.w      $4934
00306c: 4a80         tst.l      d0
00306e: 6604         bne.b      $3074
003070: 7007         moveq      #$7, d0
003072: 2e80         move.l     d0, (a7)
003074: 2017         move.l     (a7), d0
003076: 588f         addq.l     #$4, a7
003078: 4e5d         unlk       a5
00307a: 4e75         rts        
00307c: 4e550000     link.w     a5, #$0
003080: 48e7c000     movem.l    d0-d1, -(a7)
003084: 7001         moveq      #$1, d0
003086: c097         and.l      (a7), d0
003088: 7201         moveq      #$1, d1
00308a: b280         cmp.l      d0, d1
00308c: 6604         bne.b      $3092
00308e: 7001         moveq      #$1, d0
003090: 6002         bra.b      $3094
003092: 7000         moveq      #$0, d0
003094: 4ced0002fffc movem.l    -$4(a5), d1
00309a: 4e5d         unlk       a5
00309c: 4e75         rts        
00309e: 4e550000     link.w     a5, #$0
0030a2: 48e7c000     movem.l    d0-d1, -(a7)
0030a6: 7002         moveq      #$2, d0
0030a8: c097         and.l      (a7), d0
0030aa: 7202         moveq      #$2, d1
0030ac: b280         cmp.l      d0, d1
0030ae: 6604         bne.b      $30b4
0030b0: 7001         moveq      #$1, d0
0030b2: 6002         bra.b      $30b6
0030b4: 7000         moveq      #$0, d0
0030b6: 4ced0002fffc movem.l    -$4(a5), d1
0030bc: 4e5d         unlk       a5
0030be: 4e75         rts        
0030c0: 4e550000     link.w     a5, #$0
0030c4: 48e7c000     movem.l    d0-d1, -(a7)
0030c8: 598f         subq.l     #$4, a7
0030ca: 7000         moveq      #$0, d0
0030cc: 102e9832     move.b     -$67ce(a6), d0
0030d0: 2e80         move.l     d0, (a7)
0030d2: 7008         moveq      #$8, d0
0030d4: c097         and.l      (a7), d0
0030d6: 7208         moveq      #$8, d1
0030d8: b280         cmp.l      d0, d1
0030da: 6604         bne.b      $30e0
0030dc: 7001         moveq      #$1, d0
0030de: 6002         bra.b      $30e2
0030e0: 7000         moveq      #$0, d0
0030e2: 588f         addq.l     #$4, a7
0030e4: 4ced0002fffc movem.l    -$4(a5), d1
0030ea: 4e5d         unlk       a5
0030ec: 4e75         rts        
0030ee: 4e550000     link.w     a5, #$0
0030f2: 48e7c000     movem.l    d0-d1, -(a7)
0030f6: 598f         subq.l     #$4, a7
0030f8: 7000         moveq      #$0, d0
0030fa: 102e9832     move.b     -$67ce(a6), d0
0030fe: 2e80         move.l     d0, (a7)
003100: 7004         moveq      #$4, d0
003102: c097         and.l      (a7), d0
003104: 7204         moveq      #$4, d1
003106: b280         cmp.l      d0, d1
003108: 6604         bne.b      $310e
00310a: 7001         moveq      #$1, d0
00310c: 6002         bra.b      $3110
00310e: 7000         moveq      #$0, d0
003110: 588f         addq.l     #$4, a7
003112: 4ced0002fffc movem.l    -$4(a5), d1
003118: 4e5d         unlk       a5
00311a: 4e75         rts        
00311c: 4e550000     link.w     a5, #$0
003120: 48e7c080     movem.l    d0-d1/a0, -(a7)
003124: 598f         subq.l     #$4, a7
003126: 206f0004     movea.l    $4(a7), a0
00312a: 0c2800110010 cmpi.b     #$11, $10(a0)
003130: 6732         beq.b      $3164
003132: 206f0004     movea.l    $4(a7), a0
003136: 0c2800120010 cmpi.b     #$12, $10(a0)
00313c: 6726         beq.b      $3164
00313e: 206f0004     movea.l    $4(a7), a0
003142: 0c2800160010 cmpi.b     #$16, $10(a0)
003148: 671a         beq.b      $3164
00314a: 206f0004     movea.l    $4(a7), a0
00314e: 0c2800170010 cmpi.b     #$17, $10(a0)
003154: 670e         beq.b      $3164
003156: 206f0004     movea.l    $4(a7), a0
00315a: 0c2800180010 cmpi.b     #$18, $10(a0)
003160: 660000a4     bne.w      $3206
003164: 206f0008     movea.l    $8(a7), a0
003168: 10bc000b     move.b     #$b, (a0)
00316c: 206f0008     movea.l    $8(a7), a0
003170: 42280002     clr.b      $2(a0)
003174: 206f0008     movea.l    $8(a7), a0
003178: 42a80004     clr.l      $4(a0)
00317c: 206f0008     movea.l    $8(a7), a0
003180: 42a80008     clr.l      $8(a0)
003184: 206f0008     movea.l    $8(a7), a0
003188: 42a8000c     clr.l      $c(a0)
00318c: 6046         bra.b      $31d4
00318e: 206f0008     movea.l    $8(a7), a0
003192: 117c00160001 move.b     #$16, $1(a0)
003198: 600000ea     bra.w      $3284
00319c: 206f0008     movea.l    $8(a7), a0
0031a0: 117c00210001 move.b     #$21, $1(a0)
0031a6: 600000dc     bra.w      $3284
0031aa: 206f0008     movea.l    $8(a7), a0
0031ae: 117c00220001 move.b     #$22, $1(a0)
0031b4: 600000ce     bra.w      $3284
0031b8: 206f0008     movea.l    $8(a7), a0
0031bc: 117c00230001 move.b     #$23, $1(a0)
0031c2: 600000c0     bra.w      $3284
0031c6: 206f0008     movea.l    $8(a7), a0
0031ca: 117c00240001 move.b     #$24, $1(a0)
0031d0: 600000b2     bra.w      $3284
0031d4: 206f0004     movea.l    $4(a7), a0
0031d8: 7000         moveq      #$0, d0
0031da: 10280010     move.b     $10(a0), d0
0031de: 04400011     subi.w     #$11, d0
0031e2: 0c400007     cmpi.w     #$7, d0
0031e6: 6200009c     bhi.w      $3284
0031ea: 303b0206     move.w     $31f2(pc, d0.w), d0
0031ee: 4efb0002     jmp        $31f2(pc, d0.w)
0031f2: ff9c         dc.w       $ff9c
0031f4: ffaa         dc.w       $ffaa
0031f6: 009200920092 ori.l      #$920092, (a2)
0031fc: ffb8         dc.w       $ffb8
0031fe: ffc6         dc.w       $ffc6
003200: ffd4         dc.w       $ffd4
003202: 60000080     bra.w      $3284
003206: 206f0008     movea.l    $8(a7), a0
00320a: 10bc0021     move.b     #$21, (a0)
00320e: 206f0008     movea.l    $8(a7), a0
003212: 117c00420001 move.b     #$42, $1(a0)
003218: 206f0008     movea.l    $8(a7), a0
00321c: 117c00010002 move.b     #$1, $2(a0)
003222: 206f0008     movea.l    $8(a7), a0
003226: 217c000000010004 move.l     #$1, $4(a0)
00322e: 206f0008     movea.l    $8(a7), a0
003232: 216f00040008 move.l     $4(a7), $8(a0)
003238: 206f0004     movea.l    $4(a7), a0
00323c: 4a28002c     tst.b      $2c(a0)
003240: 6710         beq.b      $3252
003242: 6100fe7c     bsr.w      $30c0
003246: 4a00         tst.b      d0
003248: 6608         bne.b      $3252
00324a: 6100fea2     bsr.w      $30ee
00324e: 4a00         tst.b      d0
003250: 670a         beq.b      $325c
003252: 206f0008     movea.l    $8(a7), a0
003256: 42a8000c     clr.l      $c(a0)
00325a: 6028         bra.b      $3284
00325c: 202f0004     move.l     $4(a7), d0
003260: 6100ec66     bsr.w      $1ec8
003264: 2e80         move.l     d0, (a7)
003266: 2017         move.l     (a7), d0
003268: 6100dfe4     bsr.w      $124e
00326c: 4a00         tst.b      d0
00326e: 66e2         bne.b      $3252
003270: 206f0008     movea.l    $8(a7), a0
003274: 2157000c     move.l     (a7), $c(a0)
003278: 206f0008     movea.l    $8(a7), a0
00327c: 217c000000020004 move.l     #$2, $4(a0)
003284: 588f         addq.l     #$4, a7
003286: 4ced0100fffc movem.l    -$4(a5), a0
00328c: 4e5d         unlk       a5
00328e: 4e75         rts        
003290: 4e550000     link.w     a5, #$0
003294: 48e78000     movem.l    d0, -(a7)
003298: 4a2e84c4     tst.b      -$7b3c(a6)
00329c: 6608         bne.b      $32a6
00329e: 1d7c000184c4 move.b     #$1, -$7b3c(a6)
0032a4: 6004         bra.b      $32aa
0032a6: 422e84c4     clr.b      -$7b3c(a6)
0032aa: 4e5d         unlk       a5
0032ac: 4e75         rts        
0032ae: 4e550000     link.w     a5, #$0
0032b2: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0032b6: 598f         subq.l     #$4, a7
0032b8: 4297         clr.l      (a7)
0032ba: 4aaf0004     tst.l      $4(a7)
0032be: 6730         beq.b      $32f0
0032c0: 4aaf0008     tst.l      $8(a7)
0032c4: 6f2a         ble.b      $32f0
0032c6: 206f0004     movea.l    $4(a7), a0
0032ca: 24680028     movea.l    $28(a0), a2
0032ce: 7801         moveq      #$1, d4
0032d0: 6004         bra.b      $32d6
0032d2: 2452         movea.l    (a2), a2
0032d4: 5284         addq.l     #$1, d4
0032d6: 200a         move.l     a2, d0
0032d8: 6706         beq.b      $32e0
0032da: b8af0008     cmp.l      $8(a7), d4
0032de: 6df2         blt.b      $32d2
0032e0: 200a         move.l     a2, d0
0032e2: 670c         beq.b      $32f0
0032e4: 4a2a0004     tst.b      $4(a2)
0032e8: 6706         beq.b      $32f0
0032ea: 200a         move.l     a2, d0
0032ec: 5880         addq.l     #$4, d0
0032ee: 2e80         move.l     d0, (a7)
0032f0: 2017         move.l     (a7), d0
0032f2: 588f         addq.l     #$4, a7
0032f4: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0032fa: 4e5d         unlk       a5
0032fc: 4e75         rts        
0032fe: 4e550000     link.w     a5, #$0
003302: 48e7c000     movem.l    d0-d1, -(a7)
003306: 487a07e4     pea.l      $3aec(pc)
00330a: 222f0008     move.l     $8(a7), d1
00330e: 202f0004     move.l     $4(a7), d0
003312: 610021be     bsr.w      $54d2
003316: 588f         addq.l     #$4, a7
003318: 4e5d         unlk       a5
00331a: 4e75         rts        
00331c: 4e550000     link.w     a5, #$0
003320: 48e7c080     movem.l    d0-d1/a0, -(a7)
003324: 4fefffee     lea.l      -$12(a7), a7
003328: 700a         moveq      #$a, d0
00332a: 2f40000e     move.l     d0, $e(a7)
00332e: 202f000e     move.l     $e(a7), d0
003332: 610068d8     bsr.w      $9c0c
003336: 2f40000a     move.l     d0, $a(a7)
00333a: 4aaf000a     tst.l      $a(a7)
00333e: 6614         bne.b      $3354
003340: 42a7         clr.l      -(a7)
003342: 7205         moveq      #$5, d1
003344: 203c00000099 move.l     #$99, d0
00334a: 610055c0     bsr.w      $890c
00334e: 588f         addq.l     #$4, a7
003350: 610055e0     bsr.w      $8932
003354: 3f7c00040004 move.w     #$4, $4(a7)
00335a: 3f7c00010006 move.w     #$1, $6(a7)
003360: 3f7c00010008 move.w     #$1, $8(a7)
003366: 2eaf0012     move.l     $12(a7), (a7)
00336a: 48780006     pea.l      $6.w
00336e: 41ef0008     lea.l      $8(a7), a0
003372: 2208         move.l     a0, d1
003374: 202f000e     move.l     $e(a7), d0
003378: 61006d40     bsr.w      $a0ba
00337c: 588f         addq.l     #$4, a7
00337e: 48780004     pea.l      $4.w
003382: 41ef0004     lea.l      $4(a7), a0
003386: 2208         move.l     a0, d1
003388: 202f000e     move.l     $e(a7), d0
00338c: 5c80         addq.l     #$6, d0
00338e: 61006d2a     bsr.w      $a0ba
003392: 588f         addq.l     #$4, a7
003394: 222f000e     move.l     $e(a7), d1
003398: 202f000a     move.l     $a(a7), d0
00339c: 6100ff60     bsr.w      $32fe
0033a0: 2d6f00129700 move.l     $12(a7), -$6900(a6)
0033a6: 202f000a     move.l     $a(a7), d0
0033aa: 6100686c     bsr.w      $9c18
0033ae: 4fef0012     lea.l      $12(a7), a7
0033b2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0033b8: 4e5d         unlk       a5
0033ba: 4e75         rts        
0033bc: 4e550000     link.w     a5, #$0
0033c0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0033c4: 5d8f         subq.l     #$6, a7
0033c6: 4257         clr.w      (a7)
0033c8: 3f7c00010002 move.w     #$1, $2(a7)
0033ce: 426f0004     clr.w      $4(a7)
0033d2: 7206         moveq      #$6, d1
0033d4: 41d7         lea.l      (a7), a0
0033d6: 2008         move.l     a0, d0
0033d8: 6100ff24     bsr.w      $32fe
0033dc: 70ff         moveq      #$ff, d0
0033de: 2d409700     move.l     d0, -$6900(a6)
0033e2: 5c8f         addq.l     #$6, a7
0033e4: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0033ea: 4e5d         unlk       a5
0033ec: 4e75         rts        
0033ee: 4e550000     link.w     a5, #$0
0033f2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0033f6: 598f         subq.l     #$4, a7
0033f8: 3eaf000a     move.w     $a(a7), (a7)
0033fc: 202f0018     move.l     $18(a7), d0
003400: 610068aa     bsr.w      $9cac
003404: 3f400002     move.w     d0, $2(a7)
003408: 48780004     pea.l      $4.w
00340c: 41ef0004     lea.l      $4(a7), a0
003410: 2208         move.l     a0, d1
003412: 202f0008     move.l     $8(a7), d0
003416: 61006ca2     bsr.w      $a0ba
00341a: 588f         addq.l     #$4, a7
00341c: 58af0004     addq.l     #$4, $4(a7)
003420: 306f0002     movea.w    $2(a7), a0
003424: 2f08         move.l     a0, -(a7)
003426: 222f001c     move.l     $1c(a7), d1
00342a: 202f0008     move.l     $8(a7), d0
00342e: 61006c8a     bsr.w      $a0ba
003432: 588f         addq.l     #$4, a7
003434: 302f0002     move.w     $2(a7), d0
003438: 48c0         ext.l      d0
00343a: d1af0004     add.l      d0, $4(a7)
00343e: 202f0004     move.l     $4(a7), d0
003442: 588f         addq.l     #$4, a7
003444: 4ced0100fffc movem.l    -$4(a5), a0
00344a: 4e5d         unlk       a5
00344c: 4e75         rts        
00344e: 4e550000     link.w     a5, #$0
003452: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003456: 4fefffdc     lea.l      -$24(a7), a7
00345a: 48780040     pea.l      $40.w
00345e: 7200         moveq      #$0, d1
003460: 202f0028     move.l     $28(a7), d0
003464: 61006d0c     bsr.w      $a172
003468: 588f         addq.l     #$4, a7
00346a: 4aaf0028     tst.l      $28(a7)
00346e: 6700025c     beq.w      $36cc
003472: 206f0028     movea.l    $28(a7), a0
003476: 4aa80070     tst.l      $70(a0)
00347a: 67000250     beq.w      $36cc
00347e: 206f0028     movea.l    $28(a7), a0
003482: 2f680070001c move.l     $70(a0), $1c(a7)
003488: 206f0028     movea.l    $28(a7), a0
00348c: 2f500020     move.l     (a0), $20(a7)
003490: 2f2f0020     move.l     $20(a7), -(a7)
003494: 222f002c     move.l     $2c(a7), d1
003498: 206e851e     movea.l    -$7ae2(a6), a0
00349c: 202800bc     move.l     $bc(a0), d0
0034a0: 610016b8     bsr.w      $4b5a
0034a4: 588f         addq.l     #$4, a7
0034a6: 2e80         move.l     d0, (a7)
0034a8: 6022         bra.b      $34cc
0034aa: 206f0020     movea.l    $20(a7), a0
0034ae: 2f10         move.l     (a0), -(a7)
0034b0: 222f0024     move.l     $24(a7), d1
0034b4: 206e851e     movea.l    -$7ae2(a6), a0
0034b8: 202800bc     move.l     $bc(a0), d0
0034bc: 6100169c     bsr.w      $4b5a
0034c0: 588f         addq.l     #$4, a7
0034c2: d197         add.l      d0, (a7)
0034c4: 206f0020     movea.l    $20(a7), a0
0034c8: 2f500020     move.l     (a0), $20(a7)
0034cc: 4aaf0020     tst.l      $20(a7)
0034d0: 671e         beq.b      $34f0
0034d2: 206f0020     movea.l    $20(a7), a0
0034d6: 0c28004d0044 cmpi.b     #$4d, $44(a0)
0034dc: 6612         bne.b      $34f0
0034de: 206f0020     movea.l    $20(a7), a0
0034e2: 4aa80070     tst.l      $70(a0)
0034e6: 6608         bne.b      $34f0
0034e8: 0c97000007d0 cmpi.l     #$7d0, (a7)
0034ee: 6dba         blt.b      $34aa
0034f0: 4aaf0020     tst.l      $20(a7)
0034f4: 670001c6     beq.w      $36bc
0034f8: 206f0020     movea.l    $20(a7), a0
0034fc: 4aa80070     tst.l      $70(a0)
003500: 670001ba     beq.w      $36bc
003504: 206f0020     movea.l    $20(a7), a0
003508: 2f6800700018 move.l     $70(a0), $18(a7)
00350e: 42af0014     clr.l      $14(a7)
003512: 601a         bra.b      $352e
003514: 206f001c     movea.l    $1c(a7), a0
003518: 202f0014     move.l     $14(a7), d0
00351c: 226f0024     movea.l    $24(a7), a1
003520: 222f0014     move.l     $14(a7), d1
003524: 23b00c041c04 move.l     $4(a0, d0.l), $4(a1, d1.l)
00352a: 52af0014     addq.l     #$1, $14(a7)
00352e: 7005         moveq      #$5, d0
003530: b0af0014     cmp.l      $14(a7), d0
003534: 6ede         bgt.b      $3514
003536: 42af0014     clr.l      $14(a7)
00353a: 42af000c     clr.l      $c(a7)
00353e: 60000080     bra.w      $35c0
003542: 206f0018     movea.l    $18(a7), a0
003546: 202f000c     move.l     $c(a7), d0
00354a: 22300c18     move.l     $18(a0, d0.l), d1
00354e: 202f0020     move.l     $20(a7), d0
003552: 6100fd5a     bsr.w      $32ae
003556: 2f400004     move.l     d0, $4(a7)
00355a: 42af0010     clr.l      $10(a7)
00355e: 6054         bra.b      $35b4
003560: 206f001c     movea.l    $1c(a7), a0
003564: 202f0010     move.l     $10(a7), d0
003568: 22300c18     move.l     $18(a0, d0.l), d1
00356c: 202f0028     move.l     $28(a7), d0
003570: 6100fd3c     bsr.w      $32ae
003574: 2f400008     move.l     d0, $8(a7)
003578: 4aaf0008     tst.l      $8(a7)
00357c: 6732         beq.b      $35b0
00357e: 4aaf0004     tst.l      $4(a7)
003582: 672c         beq.b      $35b0
003584: 222f0004     move.l     $4(a7), d1
003588: 202f0008     move.l     $8(a7), d0
00358c: 610066aa     bsr.w      $9c38
003590: 4a80         tst.l      d0
003592: 661c         bne.b      $35b0
003594: 206f001c     movea.l    $1c(a7), a0
003598: 202f0010     move.l     $10(a7), d0
00359c: 226f0024     movea.l    $24(a7), a1
0035a0: 222f0014     move.l     $14(a7), d1
0035a4: 23b00c181c18 move.l     $18(a0, d0.l), $18(a1, d1.l)
0035aa: 52af0014     addq.l     #$1, $14(a7)
0035ae: 600c         bra.b      $35bc
0035b0: 52af0010     addq.l     #$1, $10(a7)
0035b4: 7005         moveq      #$5, d0
0035b6: b0af0010     cmp.l      $10(a7), d0
0035ba: 6ea4         bgt.b      $3560
0035bc: 52af000c     addq.l     #$1, $c(a7)
0035c0: 7005         moveq      #$5, d0
0035c2: b0af000c     cmp.l      $c(a7), d0
0035c6: 6e00ff7a     bgt.w      $3542
0035ca: 4aaf0014     tst.l      $14(a7)
0035ce: 6628         bne.b      $35f8
0035d0: 42af0014     clr.l      $14(a7)
0035d4: 601a         bra.b      $35f0
0035d6: 206f001c     movea.l    $1c(a7), a0
0035da: 202f0014     move.l     $14(a7), d0
0035de: 226f0024     movea.l    $24(a7), a1
0035e2: 222f0014     move.l     $14(a7), d1
0035e6: 23b00c181c18 move.l     $18(a0, d0.l), $18(a1, d1.l)
0035ec: 52af0014     addq.l     #$1, $14(a7)
0035f0: 7005         moveq      #$5, d0
0035f2: b0af0014     cmp.l      $14(a7), d0
0035f6: 6ede         bgt.b      $35d6
0035f8: 42af0014     clr.l      $14(a7)
0035fc: 42af000c     clr.l      $c(a7)
003600: 60000080     bra.w      $3682
003604: 206f0018     movea.l    $18(a7), a0
003608: 202f000c     move.l     $c(a7), d0
00360c: 22300c2c     move.l     $2c(a0, d0.l), d1
003610: 202f0020     move.l     $20(a7), d0
003614: 6100fc98     bsr.w      $32ae
003618: 2f400004     move.l     d0, $4(a7)
00361c: 42af0010     clr.l      $10(a7)
003620: 6054         bra.b      $3676
003622: 206f001c     movea.l    $1c(a7), a0
003626: 202f0010     move.l     $10(a7), d0
00362a: 22300c2c     move.l     $2c(a0, d0.l), d1
00362e: 202f0028     move.l     $28(a7), d0
003632: 6100fc7a     bsr.w      $32ae
003636: 2f400008     move.l     d0, $8(a7)
00363a: 4aaf0008     tst.l      $8(a7)
00363e: 6732         beq.b      $3672
003640: 4aaf0004     tst.l      $4(a7)
003644: 672c         beq.b      $3672
003646: 222f0004     move.l     $4(a7), d1
00364a: 202f0008     move.l     $8(a7), d0
00364e: 610065e8     bsr.w      $9c38
003652: 4a80         tst.l      d0
003654: 661c         bne.b      $3672
003656: 206f001c     movea.l    $1c(a7), a0
00365a: 202f0010     move.l     $10(a7), d0
00365e: 226f0024     movea.l    $24(a7), a1
003662: 222f0014     move.l     $14(a7), d1
003666: 23b00c2c1c2c move.l     $2c(a0, d0.l), $2c(a1, d1.l)
00366c: 52af0014     addq.l     #$1, $14(a7)
003670: 600c         bra.b      $367e
003672: 52af0010     addq.l     #$1, $10(a7)
003676: 7005         moveq      #$5, d0
003678: b0af0010     cmp.l      $10(a7), d0
00367c: 6ea4         bgt.b      $3622
00367e: 52af000c     addq.l     #$1, $c(a7)
003682: 7005         moveq      #$5, d0
003684: b0af000c     cmp.l      $c(a7), d0
003688: 6e00ff7a     bgt.w      $3604
00368c: 4aaf0014     tst.l      $14(a7)
003690: 663a         bne.b      $36cc
003692: 42af0014     clr.l      $14(a7)
003696: 601a         bra.b      $36b2
003698: 206f001c     movea.l    $1c(a7), a0
00369c: 202f0014     move.l     $14(a7), d0
0036a0: 226f0024     movea.l    $24(a7), a1
0036a4: 222f0014     move.l     $14(a7), d1
0036a8: 23b00c2c1c2c move.l     $2c(a0, d0.l), $2c(a1, d1.l)
0036ae: 52af0014     addq.l     #$1, $14(a7)
0036b2: 7005         moveq      #$5, d0
0036b4: b0af0014     cmp.l      $14(a7), d0
0036b8: 6ede         bgt.b      $3698
0036ba: 6010         bra.b      $36cc
0036bc: 206f0024     movea.l    $24(a7), a0
0036c0: 226f001c     movea.l    $1c(a7), a1
0036c4: 700f         moveq      #$f, d0
0036c6: 20d9         move.l     (a1)+, (a0)+
0036c8: 51c8fffc     dbra       d0, $36c6
0036cc: 4fef0024     lea.l      $24(a7), a7
0036d0: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0036d6: 4e5d         unlk       a5
0036d8: 4e75         rts        
0036da: 4e550000     link.w     a5, #$0
0036de: 48e7c080     movem.l    d0-d1/a0, -(a7)
0036e2: 4fefff9a     lea.l      -$66(a7), a7
0036e6: 42af0010     clr.l      $10(a7)
0036ea: 206f0066     movea.l    $66(a7), a0
0036ee: 2f68001c000c move.l     $1c(a0), $c(a7)
0036f4: 7006         moveq      #$6, d0
0036f6: 2f400004     move.l     d0, $4(a7)
0036fa: 4297         clr.l      (a7)
0036fc: 202e96fc     move.l     -$6904(a6), d0
003700: b0af0066     cmp.l      $66(a7), d0
003704: 67000254     beq.w      $395a
003708: 4aae96fc     tst.l      -$6904(a6)
00370c: 6704         beq.b      $3712
00370e: 61000258     bsr.w      $3968
003712: 4aaf000c     tst.l      $c(a7)
003716: 672c         beq.b      $3744
003718: 206f000c     movea.l    $c(a7), a0
00371c: 2228000c     move.l     $c(a0), d1
003720: 202f0066     move.l     $66(a7), d0
003724: 6100fb88     bsr.w      $32ae
003728: 2f400010     move.l     d0, $10(a7)
00372c: 4aaf0010     tst.l      $10(a7)
003730: 6712         beq.b      $3744
003732: 5297         addq.l     #$1, (a7)
003734: 58af0004     addq.l     #$4, $4(a7)
003738: 202f0010     move.l     $10(a7), d0
00373c: 6100656e     bsr.w      $9cac
003740: d1af0004     add.l      d0, $4(a7)
003744: 206f0066     movea.l    $66(a7), a0
003748: 4aa80070     tst.l      $70(a0)
00374c: 670000b6     beq.w      $3804
003750: 222f0066     move.l     $66(a7), d1
003754: 41ef001c     lea.l      $1c(a7), a0
003758: 2008         move.l     a0, d0
00375a: 6100fcf2     bsr.w      $344e
00375e: 42af0008     clr.l      $8(a7)
003762: 60000096     bra.w      $37fa
003766: 202f0008     move.l     $8(a7), d0
00376a: 41ef0020     lea.l      $20(a7), a0
00376e: 4ab00c00     tst.l      (a0, d0.l * 4)
003772: 6f22         ble.b      $3796
003774: 5297         addq.l     #$1, (a7)
003776: 58af0004     addq.l     #$4, $4(a7)
00377a: 202f0008     move.l     $8(a7), d0
00377e: 41ef0020     lea.l      $20(a7), a0
003782: 22300c00     move.l     (a0, d0.l * 4), d1
003786: 202f0066     move.l     $66(a7), d0
00378a: 6100fb22     bsr.w      $32ae
00378e: 6100651c     bsr.w      $9cac
003792: d1af0004     add.l      d0, $4(a7)
003796: 202f0008     move.l     $8(a7), d0
00379a: 41ef0034     lea.l      $34(a7), a0
00379e: 4ab00c00     tst.l      (a0, d0.l * 4)
0037a2: 6f22         ble.b      $37c6
0037a4: 5297         addq.l     #$1, (a7)
0037a6: 58af0004     addq.l     #$4, $4(a7)
0037aa: 202f0008     move.l     $8(a7), d0
0037ae: 41ef0034     lea.l      $34(a7), a0
0037b2: 22300c00     move.l     (a0, d0.l * 4), d1
0037b6: 202f0066     move.l     $66(a7), d0
0037ba: 6100faf2     bsr.w      $32ae
0037be: 610064ec     bsr.w      $9cac
0037c2: d1af0004     add.l      d0, $4(a7)
0037c6: 202f0008     move.l     $8(a7), d0
0037ca: 41ef0048     lea.l      $48(a7), a0
0037ce: 4ab00c00     tst.l      (a0, d0.l * 4)
0037d2: 6f22         ble.b      $37f6
0037d4: 5297         addq.l     #$1, (a7)
0037d6: 58af0004     addq.l     #$4, $4(a7)
0037da: 202f0008     move.l     $8(a7), d0
0037de: 41ef0048     lea.l      $48(a7), a0
0037e2: 22300c00     move.l     (a0, d0.l * 4), d1
0037e6: 202f0066     move.l     $66(a7), d0
0037ea: 6100fac2     bsr.w      $32ae
0037ee: 610064bc     bsr.w      $9cac
0037f2: d1af0004     add.l      d0, $4(a7)
0037f6: 52af0008     addq.l     #$1, $8(a7)
0037fa: 7005         moveq      #$5, d0
0037fc: b0af0008     cmp.l      $8(a7), d0
003800: 6e00ff64     bgt.w      $3766
003804: 4a97         tst.l      (a7)
003806: 6f000152     ble.w      $395a
00380a: 202f0004     move.l     $4(a7), d0
00380e: 610063fc     bsr.w      $9c0c
003812: 2f400018     move.l     d0, $18(a7)
003816: 4aaf0018     tst.l      $18(a7)
00381a: 6700012a     beq.w      $3946
00381e: 2f6f00180014 move.l     $18(a7), $14(a7)
003824: 302f0006     move.w     $6(a7), d0
003828: 5d40         subq.w     #$6, d0
00382a: 3f400060     move.w     d0, $60(a7)
00382e: 3f7c00020062 move.w     #$2, $62(a7)
003834: 3f7c00010064 move.w     #$1, $64(a7)
00383a: 48780006     pea.l      $6.w
00383e: 41ef0064     lea.l      $64(a7), a0
003842: 2208         move.l     a0, d1
003844: 202f0018     move.l     $18(a7), d0
003848: 61006870     bsr.w      $a0ba
00384c: 588f         addq.l     #$4, a7
00384e: 5caf0014     addq.l     #$6, $14(a7)
003852: 4aaf0010     tst.l      $10(a7)
003856: 6714         beq.b      $386c
003858: 2f2f0010     move.l     $10(a7), -(a7)
00385c: 7201         moveq      #$1, d1
00385e: 202f0018     move.l     $18(a7), d0
003862: 6100fb8a     bsr.w      $33ee
003866: 588f         addq.l     #$4, a7
003868: 2f400014     move.l     d0, $14(a7)
00386c: 206f0066     movea.l    $66(a7), a0
003870: 4aa80070     tst.l      $70(a0)
003874: 670000b4     beq.w      $392a
003878: 42af0008     clr.l      $8(a7)
00387c: 600000a2     bra.w      $3920
003880: 202f0008     move.l     $8(a7), d0
003884: 41ef0020     lea.l      $20(a7), a0
003888: 4ab00c00     tst.l      (a0, d0.l * 4)
00388c: 6f26         ble.b      $38b4
00388e: 202f0008     move.l     $8(a7), d0
003892: 41ef0020     lea.l      $20(a7), a0
003896: 22300c00     move.l     (a0, d0.l * 4), d1
00389a: 202f0066     move.l     $66(a7), d0
00389e: 6100fa0e     bsr.w      $32ae
0038a2: 2f00         move.l     d0, -(a7)
0038a4: 7202         moveq      #$2, d1
0038a6: 202f0018     move.l     $18(a7), d0
0038aa: 6100fb42     bsr.w      $33ee
0038ae: 588f         addq.l     #$4, a7
0038b0: 2f400014     move.l     d0, $14(a7)
0038b4: 202f0008     move.l     $8(a7), d0
0038b8: 41ef0034     lea.l      $34(a7), a0
0038bc: 4ab00c00     tst.l      (a0, d0.l * 4)
0038c0: 6f26         ble.b      $38e8
0038c2: 202f0008     move.l     $8(a7), d0
0038c6: 41ef0034     lea.l      $34(a7), a0
0038ca: 22300c00     move.l     (a0, d0.l * 4), d1
0038ce: 202f0066     move.l     $66(a7), d0
0038d2: 6100f9da     bsr.w      $32ae
0038d6: 2f00         move.l     d0, -(a7)
0038d8: 7203         moveq      #$3, d1
0038da: 202f0018     move.l     $18(a7), d0
0038de: 6100fb0e     bsr.w      $33ee
0038e2: 588f         addq.l     #$4, a7
0038e4: 2f400014     move.l     d0, $14(a7)
0038e8: 202f0008     move.l     $8(a7), d0
0038ec: 41ef0048     lea.l      $48(a7), a0
0038f0: 4ab00c00     tst.l      (a0, d0.l * 4)
0038f4: 6f26         ble.b      $391c
0038f6: 202f0008     move.l     $8(a7), d0
0038fa: 41ef0048     lea.l      $48(a7), a0
0038fe: 22300c00     move.l     (a0, d0.l * 4), d1
003902: 202f0066     move.l     $66(a7), d0
003906: 6100f9a6     bsr.w      $32ae
00390a: 2f00         move.l     d0, -(a7)
00390c: 7204         moveq      #$4, d1
00390e: 202f0018     move.l     $18(a7), d0
003912: 6100fada     bsr.w      $33ee
003916: 588f         addq.l     #$4, a7
003918: 2f400014     move.l     d0, $14(a7)
00391c: 52af0008     addq.l     #$1, $8(a7)
003920: 7005         moveq      #$5, d0
003922: b0af0008     cmp.l      $8(a7), d0
003926: 6e00ff58     bgt.w      $3880
00392a: 222f0004     move.l     $4(a7), d1
00392e: 202f0018     move.l     $18(a7), d0
003932: 6100f9ca     bsr.w      $32fe
003936: 2d6f006696fc move.l     $66(a7), -$6904(a6)
00393c: 202f0018     move.l     $18(a7), d0
003940: 610062d6     bsr.w      $9c18
003944: 6014         bra.b      $395a
003946: 42a7         clr.l      -(a7)
003948: 7205         moveq      #$5, d1
00394a: 203c00000099 move.l     #$99, d0
003950: 61004fba     bsr.w      $890c
003954: 588f         addq.l     #$4, a7
003956: 61004fda     bsr.w      $8932
00395a: 4fef0066     lea.l      $66(a7), a7
00395e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003964: 4e5d         unlk       a5
003966: 4e75         rts        
003968: 4e550000     link.w     a5, #$0
00396c: 48e7c080     movem.l    d0-d1/a0, -(a7)
003970: 5d8f         subq.l     #$6, a7
003972: 4257         clr.w      (a7)
003974: 3f7c00020002 move.w     #$2, $2(a7)
00397a: 426f0004     clr.w      $4(a7)
00397e: 7206         moveq      #$6, d1
003980: 41d7         lea.l      (a7), a0
003982: 2008         move.l     a0, d0
003984: 6100f978     bsr.w      $32fe
003988: 42ae96fc     clr.l      -$6904(a6)
00398c: 5c8f         addq.l     #$6, a7
00398e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003994: 4e5d         unlk       a5
003996: 4e75         rts        
003998: 4e550000     link.w     a5, #$0
00399c: 48e78000     movem.l    d0, -(a7)
0039a0: 4e5d         unlk       a5
0039a2: 4e75         rts        
0039a4: 4e550000     link.w     a5, #$0
0039a8: 48e78000     movem.l    d0, -(a7)
0039ac: 203c00002335 move.l     #$2335, d0
0039b2: 6100e030     bsr.w      $19e4
0039b6: 4e5d         unlk       a5
0039b8: 4e75         rts        
0039ba: 4e550000     link.w     a5, #$0
0039be: 48e78000     movem.l    d0, -(a7)
0039c2: 203c00002337 move.l     #$2337, d0
0039c8: 6100e01a     bsr.w      $19e4
0039cc: 70ff         moveq      #$ff, d0
0039ce: 2d40852a     move.l     d0, -$7ad6(a6)
0039d2: 70f7         moveq      #$f7, d0
0039d4: 2d40852e     move.l     d0, -$7ad2(a6)
0039d8: 422e8533     clr.b      -$7acd(a6)
0039dc: 4e5d         unlk       a5
0039de: 4e75         rts        
0039e0: 4e550000     link.w     a5, #$0
0039e4: 48e78000     movem.l    d0, -(a7)
0039e8: 6100f9d2     bsr.w      $33bc
0039ec: 6100ff7a     bsr.w      $3968
0039f0: 61c8         bsr.b      $39ba
0039f2: 4e5d         unlk       a5
0039f4: 4e75         rts        
0039f6: 2f63302f     move.l     -(a3), $302f(a7)
0039fa: 5f313238     subq.b     #$7, $38(a1, d3.w)
0039fe: 5f2f7069     subq.b     #$7, $7069(a7)
003a02: 7065         moveq      #$65, d0
003a04: 2f67645f     move.l     -(a7), $645f(a7)
003a08: 746f         moveq      #$6f, d2
003a0a: 5f7573775f636861 subq.w     #$7, ([$5f636861, a5])
003a12: 6e6e         bgt.b      $3a82
003a14: 656c         bcs.b      $3a82
003a16: 002f70697065 ori.b      #$69, $7065(a7)
003a1c: 2f627363     move.l     -(a2), $7363(a7)
003a20: 5f746f5f     subq.w     #$7, ([a4])
003a24: 6764         beq.b      $3a8a
003a26: 6d61         blt.b      $3a89
003a28: 6e5f         bgt.b      $3a89
003a2a: 6368         bls.b      $3a94
003a2c: 616e         bsr.b      $3a9c
003a2e: 6e65         bgt.b      $3a95
003a30: 6c002f70     bge.w      $69a2
003a34: 6970         bvs.b      $3aa6
003a36: 652f         bcs.b      $3a67
003a38: 6273         bhi.b      $3aad
003a3a: 635f         bls.b      $3a9b
003a3c: 746f         moveq      #$6f, d2
003a3e: 5f67         subq.w     #$7, -(a7)
003a40: 646d         bcc.b      $3aaf
003a42: 616e         bsr.b      $3ab2
003a44: 5f63         subq.w     #$7, -(a3)
003a46: 6861         bvc.b      $3aa9
003a48: 6e6e         bgt.b      $3ab8
003a4a: 656c         bcs.b      $3ab8
003a4c: 002f70697065 ori.b      #$69, $7065(a7)
003a52: 2f67646d     move.l     -(a7), $646d(a7)
003a56: 616e         bsr.b      $3ac6
003a58: 5f746f5f     subq.w     #$7, ([a4])
003a5c: 6273         bhi.b      $3ad1
003a5e: 635f         bls.b      $3abf
003a60: 6368         bls.b      $3aca
003a62: 616e         bsr.b      $3ad2
003a64: 6e65         bgt.b      $3acb
003a66: 6c002f70     bge.w      $69d8
003a6a: 6970         bvs.b      $3adc
003a6c: 652f         bcs.b      $3a9d
003a6e: 6273         bhi.b      $3ae3
003a70: 635f         bls.b      $3ad1
003a72: 746f         moveq      #$6f, d2
003a74: 5f67         subq.w     #$7, -(a7)
003a76: 646d         bcc.b      $3ae5
003a78: 616e         bsr.b      $3ae8
003a7a: 5f63         subq.w     #$7, -(a3)
003a7c: 6861         bvc.b      $3adf
003a7e: 6e6e         bgt.b      $3aee
003a80: 656c         bcs.b      $3aee
003a82: 00756e697465 ori.w      #$6e69, $65(a5, d7.w)
003a88: 6420         bcc.b      $3aaa
003a8a: 7374         .dc.w      $7374
003a8c: 6174         bsr.b      $3b02
003a8e: 6573         bcs.b      $3b03
003a90: 00757361002f ori.w      #$7361, $2f(a5, d0.w)
003a96: 6330         bls.b      $3ac8
003a98: 2f5f3132     move.l     (a7)+, $3132(a7)
003a9c: 385f         movea.w    (a7)+, a4
003a9e: 2f706970652f67645f74 move.l     $652f6764(a0, invalid.w), $5f74(a7)
003aa8: 6f5f         ble.b      $3b09
003aaa: 7573         .dc.w      $7573
003aac: 775f         .dc.w      $775f
003aae: 6368         bls.b      $3b18
003ab0: 616e         bsr.b      $3b20
003ab2: 6e65         bgt.b      $3b19
003ab4: 6c002f70     bge.w      $6a26
003ab8: 6970         bvs.b      $3b2a
003aba: 652f         bcs.b      $3aeb
003abc: 6273         bhi.b      $3b31
003abe: 635f         bls.b      $3b1f
003ac0: 746f         moveq      #$6f, d2
003ac2: 5f67         subq.w     #$7, -(a7)
003ac4: 646d         bcc.b      $3b33
003ac6: 616e         bsr.b      $3b36
003ac8: 5f63         subq.w     #$7, -(a3)
003aca: 6861         bvc.b      $3b2d
003acc: 6e6e         bgt.b      $3b3c
003ace: 656c         bcs.b      $3b3c
003ad0: 002f70697065 ori.b      #$69, $7065(a7)
003ad6: 2f627363     move.l     -(a2), $7363(a7)
003ada: 5f746f5f     subq.w     #$7, ([a4])
003ade: 6764         beq.b      $3b44
003ae0: 6d61         blt.b      $3b43
003ae2: 6e5f         bgt.b      $3b43
003ae4: 6368         bls.b      $3b4e
003ae6: 616e         bsr.b      $3b56
003ae8: 6e65         bgt.b      $3b4f
003aea: 6c002f63     bge.w      $6a4f
003aee: 302f5f31     move.w     $5f31(a7), d0
003af2: 32385f2f     move.w     $5f2f.w, d1
003af6: 7069         moveq      #$69, d0
003af8: 7065         moveq      #$65, d0
003afa: 2f67645f     move.l     -(a7), $645f(a7)
003afe: 746f         moveq      #$6f, d2
003b00: 5f7573775f636861 subq.w     #$7, ([$5f636861, a5])
003b08: 6e6e         bgt.b      $3b78
003b0a: 656c         bcs.b      $3b78
003b0c: 00004e55     ori.b      #$55, d0
003b10: 000048e7     ori.b      #$e7, d0
003b14: e080         asr.l      #$8, d0
003b16: 4feffff0     lea.l      -$10(a7), a7
003b1a: 2d6f00108570 move.l     $10(a7), -$7a90(a6)
003b20: 206f0014     movea.l    $14(a7), a0
003b24: 0c2800110010 cmpi.b     #$11, $10(a0)
003b2a: 6730         beq.b      $3b5c
003b2c: 206f0014     movea.l    $14(a7), a0
003b30: 0c2800120010 cmpi.b     #$12, $10(a0)
003b36: 6724         beq.b      $3b5c
003b38: 206f0014     movea.l    $14(a7), a0
003b3c: 0c2800160010 cmpi.b     #$16, $10(a0)
003b42: 6718         beq.b      $3b5c
003b44: 206f0014     movea.l    $14(a7), a0
003b48: 0c2800170010 cmpi.b     #$17, $10(a0)
003b4e: 670c         beq.b      $3b5c
003b50: 206f0014     movea.l    $14(a7), a0
003b54: 0c2800180010 cmpi.b     #$18, $10(a0)
003b5a: 6630         bne.b      $3b8c
003b5c: 222f0014     move.l     $14(a7), d1
003b60: 202e8570     move.l     -$7a90(a6), d0
003b64: 61001cb4     bsr.w      $581a
003b68: 2f40000c     move.l     d0, $c(a7)
003b6c: 206f0014     movea.l    $14(a7), a0
003b70: 117c00010031 move.b     #$1, $31(a0)
003b76: 2f2f0014     move.l     $14(a7), -(a7)
003b7a: 222f0010     move.l     $10(a7), d1
003b7e: 202f0018     move.l     $18(a7), d0
003b82: 61000c7e     bsr.w      $4802
003b86: 588f         addq.l     #$4, a7
003b88: 6000010c     bra.w      $3c96
003b8c: 4878004a     pea.l      $4a.w
003b90: 2f2f0030     move.l     $30(a7), -(a7)
003b94: 222f001c     move.l     $1c(a7), d1
003b98: 2401         move.l     d1, d2
003b9a: 222f0030     move.l     $30(a7), d1
003b9e: 202e8570     move.l     -$7a90(a6), d0
003ba2: 61001c76     bsr.w      $581a
003ba6: 2202         move.l     d2, d1
003ba8: 61000206     bsr.w      $3db0
003bac: 508f         addq.l     #$8, a7
003bae: 202f0014     move.l     $14(a7), d0
003bb2: 61000bfe     bsr.w      $47b2
003bb6: 0c000001     cmpi.b     #$1, d0
003bba: 660000da     bne.w      $3c96
003bbe: 202f0014     move.l     $14(a7), d0
003bc2: 61000ba6     bsr.w      $476a
003bc6: 2f400008     move.l     d0, $8(a7)
003bca: 670000ca     beq.w      $3c96
003bce: 206f0008     movea.l    $8(a7), a0
003bd2: 0c2800110010 cmpi.b     #$11, $10(a0)
003bd8: 6730         beq.b      $3c0a
003bda: 206f0008     movea.l    $8(a7), a0
003bde: 0c2800120010 cmpi.b     #$12, $10(a0)
003be4: 6724         beq.b      $3c0a
003be6: 206f0008     movea.l    $8(a7), a0
003bea: 0c2800160010 cmpi.b     #$16, $10(a0)
003bf0: 6718         beq.b      $3c0a
003bf2: 206f0008     movea.l    $8(a7), a0
003bf6: 0c2800170010 cmpi.b     #$17, $10(a0)
003bfc: 670c         beq.b      $3c0a
003bfe: 206f0008     movea.l    $8(a7), a0
003c02: 0c2800180010 cmpi.b     #$18, $10(a0)
003c08: 665c         bne.b      $3c66
003c0a: 206f0008     movea.l    $8(a7), a0
003c0e: 22280018     move.l     $18(a0), d1
003c12: 206f0014     movea.l    $14(a7), a0
003c16: 2028001c     move.l     $1c(a0), d0
003c1a: 610000e6     bsr.w      $3d02
003c1e: 4a00         tst.b      d0
003c20: 67000074     beq.w      $3c96
003c24: 206e851e     movea.l    -$7ae2(a6), a0
003c28: 4a28005e     tst.b      $5e(a0)
003c2c: 662a         bne.b      $3c58
003c2e: 206e851e     movea.l    -$7ae2(a6), a0
003c32: 48680060     pea.l      $60(a0)
003c36: 222f000c     move.l     $c(a7), d1
003c3a: 41ef0004     lea.l      $4(a7), a0
003c3e: 2008         move.l     a0, d0
003c40: 6100ddd2     bsr.w      $1a14
003c44: 588f         addq.l     #$4, a7
003c46: 206f0008     movea.l    $8(a7), a0
003c4a: 20680018     movea.l    $18(a0), a0
003c4e: 202f0004     move.l     $4(a7), d0
003c52: b0a80014     cmp.l      $14(a0), d0
003c56: 6f3e         ble.b      $3c96
003c58: 222f0008     move.l     $8(a7), d1
003c5c: 202f0014     move.l     $14(a7), d0
003c60: 61000954     bsr.w      $45b6
003c64: 6030         bra.b      $3c96
003c66: 222f0008     move.l     $8(a7), d1
003c6a: 202f0014     move.l     $14(a7), d0
003c6e: 610007a4     bsr.w      $4414
003c72: 4a00         tst.b      d0
003c74: 6720         beq.b      $3c96
003c76: 222f0008     move.l     $8(a7), d1
003c7a: 202f0014     move.l     $14(a7), d0
003c7e: 61000936     bsr.w      $45b6
003c82: 4878002f     pea.l      $2f.w
003c86: 42a7         clr.l      -(a7)
003c88: 222f0010     move.l     $10(a7), d1
003c8c: 202f001c     move.l     $1c(a7), d0
003c90: 6100011e     bsr.w      $3db0
003c94: 508f         addq.l     #$8, a7
003c96: 4fef0010     lea.l      $10(a7), a7
003c9a: 4ced0104fff8 movem.l    -$8(a5), d2/a0
003ca0: 4e5d         unlk       a5
003ca2: 4e75         rts        
003ca4: 4e550000     link.w     a5, #$0
003ca8: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
003cac: 41fa0c74     lea.l      $4922(pc), a0
003cb0: 2208         move.l     a0, d1
003cb2: 202e851e     move.l     -$7ae2(a6), d0
003cb6: 61005f80     bsr.w      $9c38
003cba: 4a80         tst.l      d0
003cbc: 6712         beq.b      $3cd0
003cbe: 41fa0c70     lea.l      $4930(pc), a0
003cc2: 2208         move.l     a0, d1
003cc4: 202e851e     move.l     -$7ae2(a6), d0
003cc8: 61005f6e     bsr.w      $9c38
003ccc: 4a80         tst.l      d0
003cce: 6604         bne.b      $3cd4
003cd0: 7a01         moveq      #$1, d5
003cd2: 6022         bra.b      $3cf6
003cd4: 2057         movea.l    (a7), a0
003cd6: 7000         moveq      #$0, d0
003cd8: 1028005d     move.b     $5d(a0), d0
003cdc: 2800         move.l     d0, d4
003cde: 2057         movea.l    (a7), a0
003ce0: 4a280055     tst.b      $55(a0)
003ce4: 6608         bne.b      $3cee
003ce6: 4a84         tst.l      d4
003ce8: 6c02         bge.b      $3cec
003cea: 5284         addq.l     #$1, d4
003cec: e284         asr.l      #$1, d4
003cee: 7002         moveq      #$2, d0
003cf0: b084         cmp.l      d4, d0
003cf2: 6fdc         ble.b      $3cd0
003cf4: 7a00         moveq      #$0, d5
003cf6: 1005         move.b     d5, d0
003cf8: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
003cfe: 4e5d         unlk       a5
003d00: 4e75         rts        
003d02: 4e550000     link.w     a5, #$0
003d06: 48e7c000     movem.l    d0-d1, -(a7)
003d0a: 704c         moveq      #$4c, d0
003d0c: d0af0004     add.l      $4(a7), d0
003d10: 2200         move.l     d0, d1
003d12: 704c         moveq      #$4c, d0
003d14: d097         add.l      (a7), d0
003d16: 6104         bsr.b      $3d1c
003d18: 4e5d         unlk       a5
003d1a: 4e75         rts        
003d1c: 4e550000     link.w     a5, #$0
003d20: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003d24: 206f0004     movea.l    $4(a7), a0
003d28: 2257         movea.l    (a7), a1
003d2a: 30290004     move.w     $4(a1), d0
003d2e: b0680004     cmp.w      $4(a0), d0
003d32: 6620         bne.b      $3d54
003d34: 206f0004     movea.l    $4(a7), a0
003d38: 2257         movea.l    (a7), a1
003d3a: 2011         move.l     (a1), d0
003d3c: b090         cmp.l      (a0), d0
003d3e: 6614         bne.b      $3d54
003d40: 206f0004     movea.l    $4(a7), a0
003d44: 2257         movea.l    (a7), a1
003d46: 30290006     move.w     $6(a1), d0
003d4a: b0680006     cmp.w      $6(a0), d0
003d4e: 6604         bne.b      $3d54
003d50: 7001         moveq      #$1, d0
003d52: 6002         bra.b      $3d56
003d54: 7000         moveq      #$0, d0
003d56: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003d5c: 4e5d         unlk       a5
003d5e: 4e75         rts        
003d60: 4e550000     link.w     a5, #$0
003d64: 48e7c000     movem.l    d0-d1, -(a7)
003d68: 598f         subq.l     #$4, a7
003d6a: 202f0008     move.l     $8(a7), d0
003d6e: b0af0014     cmp.l      $14(a7), d0
003d72: 6734         beq.b      $3da8
003d74: 2eaf0014     move.l     $14(a7), (a7)
003d78: 6020         bra.b      $3d9a
003d7a: 42a7         clr.l      -(a7)
003d7c: 222f0004     move.l     $4(a7), d1
003d80: 202f0018     move.l     $18(a7), d0
003d84: 61000a9e     bsr.w      $4824
003d88: 588f         addq.l     #$4, a7
003d8a: 4a00         tst.b      d0
003d8c: 6704         beq.b      $3d92
003d8e: 2017         move.l     (a7), d0
003d90: 6018         bra.b      $3daa
003d92: 2017         move.l     (a7), d0
003d94: b0af0008     cmp.l      $8(a7), d0
003d98: 670e         beq.b      $3da8
003d9a: 2217         move.l     (a7), d1
003d9c: 202f0004     move.l     $4(a7), d0
003da0: 61001a78     bsr.w      $581a
003da4: 2e80         move.l     d0, (a7)
003da6: 66d2         bne.b      $3d7a
003da8: 7000         moveq      #$0, d0
003daa: 588f         addq.l     #$4, a7
003dac: 4e5d         unlk       a5
003dae: 4e75         rts        
003db0: 4e550000     link.w     a5, #$0
003db4: 48e7c080     movem.l    d0-d1/a0, -(a7)
003db8: 4fefffa2     lea.l      -$5e(a7), a7
003dbc: 2f6f00620012 move.l     $62(a7), $12(a7)
003dc2: 422f0001     clr.b      $1(a7)
003dc6: 2f6f0062004a move.l     $62(a7), $4a(a7)
003dcc: 2f6f00620046 move.l     $62(a7), $46(a7)
003dd2: 42af0032     clr.l      $32(a7)
003dd6: 42af002e     clr.l      $2e(a7)
003dda: 42af002a     clr.l      $2a(a7)
003dde: 7001         moveq      #$1, d0
003de0: 2f400026     move.l     d0, $26(a7)
003de4: 202f0062     move.l     $62(a7), d0
003de8: 61000880     bsr.w      $466a
003dec: 4a00         tst.b      d0
003dee: 67000084     beq.w      $3e74
003df2: 6060         bra.b      $3e54
003df4: 48780001     pea.l      $1.w
003df8: 222f0046     move.l     $46(a7), d1
003dfc: 202f0066     move.l     $66(a7), d0
003e00: 61000a22     bsr.w      $4824
003e04: 588f         addq.l     #$4, a7
003e06: 4a00         tst.b      d0
003e08: 6744         beq.b      $3e4e
003e0a: 52af002e     addq.l     #$1, $2e(a7)
003e0e: 202f002e     move.l     $2e(a7), d0
003e12: 41ef004a     lea.l      $4a(a7), a0
003e16: 21af00420c00 move.l     $42(a7), (a0, d0.l * 4)
003e1c: 202f002e     move.l     $2e(a7), d0
003e20: 5380         subq.l     #$1, d0
003e22: 41ef004a     lea.l      $4a(a7), a0
003e26: 2f300c00     move.l     (a0, d0.l * 4), -(a7)
003e2a: 202f0032     move.l     $32(a7), d0
003e2e: 41ef004e     lea.l      $4e(a7), a0
003e32: 22300c00     move.l     (a0, d0.l * 4), d1
003e36: 202e8570     move.l     -$7a90(a6), d0
003e3a: 61000d88     bsr.w      $4bc4
003e3e: 588f         addq.l     #$4, a7
003e40: 222f002e     move.l     $2e(a7), d1
003e44: 5381         subq.l     #$1, d1
003e46: 41ef0032     lea.l      $32(a7), a0
003e4a: 21801c00     move.l     d0, (a0, d1.l * 4)
003e4e: 2f6f00420046 move.l     $42(a7), $46(a7)
003e54: 222f0046     move.l     $46(a7), d1
003e58: 202e8570     move.l     -$7a90(a6), d0
003e5c: 610019bc     bsr.w      $581a
003e60: 2f400042     move.l     d0, $42(a7)
003e64: b0af005e     cmp.l      $5e(a7), d0
003e68: 670a         beq.b      $3e74
003e6a: 7003         moveq      #$3, d0
003e6c: b0af002e     cmp.l      $2e(a7), d0
003e70: 6e00ff82     bgt.w      $3df4
003e74: 202f002e     move.l     $2e(a7), d0
003e78: 41ef004a     lea.l      $4a(a7), a0
003e7c: 2f300c00     move.l     (a0, d0.l * 4), -(a7)
003e80: 222f0062     move.l     $62(a7), d1
003e84: 202e8570     move.l     -$7a90(a6), d0
003e88: 61000cd0     bsr.w      $4b5a
003e8c: 588f         addq.l     #$4, a7
003e8e: 90af0072     sub.l      $72(a7), d0
003e92: 222f002e     move.l     $2e(a7), d1
003e96: 41ef0032     lea.l      $32(a7), a0
003e9a: 21801c00     move.l     d0, (a0, d1.l * 4)
003e9e: 202f002e     move.l     $2e(a7), d0
003ea2: 41ef0032     lea.l      $32(a7), a0
003ea6: 4ab00c00     tst.l      (a0, d0.l * 4)
003eaa: 6c04         bge.b      $3eb0
003eac: 7000         moveq      #$0, d0
003eae: 600c         bra.b      $3ebc
003eb0: 202f002e     move.l     $2e(a7), d0
003eb4: 41ef0032     lea.l      $32(a7), a0
003eb8: 20300c00     move.l     (a0, d0.l * 4), d0
003ebc: 222f002e     move.l     $2e(a7), d1
003ec0: 41ef0032     lea.l      $32(a7), a0
003ec4: 21801c00     move.l     d0, (a0, d1.l * 4)
003ec8: 202f002e     move.l     $2e(a7), d0
003ecc: 5280         addq.l     #$1, d0
003ece: 41ef004a     lea.l      $4a(a7), a0
003ed2: 21af005e0c00 move.l     $5e(a7), (a0, d0.l * 4)
003ed8: 206f0062     movea.l    $62(a7), a0
003edc: 0c2800010033 cmpi.b     #$1, $33(a0)
003ee2: 6600011c     bne.w      $4000
003ee6: 4aaf002e     tst.l      $2e(a7)
003eea: 670000ec     beq.w      $3fd8
003eee: 0c2f002f0079 cmpi.b     #$2f, $79(a7)
003ef4: 670000e2     beq.w      $3fd8
003ef8: 42af0022     clr.l      $22(a7)
003efc: 206f0062     movea.l    $62(a7), a0
003f00: 20680018     movea.l    $18(a0), a0
003f04: 4a280057     tst.b      $57(a0)
003f08: 6606         bne.b      $3f10
003f0a: 42af000a     clr.l      $a(a7)
003f0e: 6012         bra.b      $3f22
003f10: 206f0062     movea.l    $62(a7), a0
003f14: 20680018     movea.l    $18(a0), a0
003f18: 7000         moveq      #$0, d0
003f1a: 1028005a     move.b     $5a(a0), d0
003f1e: 2f40000a     move.l     d0, $a(a7)
003f22: 206f0062     movea.l    $62(a7), a0
003f26: 20280018     move.l     $18(a0), d0
003f2a: 610006ae     bsr.w      $45da
003f2e: 4a00         tst.b      d0
003f30: 6704         beq.b      $3f36
003f32: 7000         moveq      #$0, d0
003f34: 6002         bra.b      $3f38
003f36: 7001         moveq      #$1, d0
003f38: 2f40000e     move.l     d0, $e(a7)
003f3c: 206f0062     movea.l    $62(a7), a0
003f40: 20280018     move.l     $18(a0), d0
003f44: 6100fd5e     bsr.w      $3ca4
003f48: 4a00         tst.b      d0
003f4a: 660c         bne.b      $3f58
003f4c: 202f0062     move.l     $62(a7), d0
003f50: 610006aa     bsr.w      $45fc
003f54: 4a00         tst.b      d0
003f56: 6706         beq.b      $3f5e
003f58: 42af0006     clr.l      $6(a7)
003f5c: 6006         bra.b      $3f64
003f5e: 7001         moveq      #$1, d0
003f60: 2f400006     move.l     d0, $6(a7)
003f64: 7038         moveq      #$38, d0
003f66: 4c2f0000000e mulu.l     $e(a7), d0
003f6c: 41ee9778     lea.l      -$6888(a6), a0
003f70: 721c         moveq      #$1c, d1
003f72: 4c2f10010006 mulu.l     $6(a7), d1
003f78: d081         add.l      d1, d0
003f7a: 222f000a     move.l     $a(a7), d1
003f7e: d1c0         adda.l     d0, a0
003f80: 2f701c000002 move.l     (a0, d1.l * 4), $2(a7)
003f86: 6014         bra.b      $3f9c
003f88: 202f002a     move.l     $2a(a7), d0
003f8c: 41ef0032     lea.l      $32(a7), a0
003f90: 20300c00     move.l     (a0, d0.l * 4), d0
003f94: d1af0022     add.l      d0, $22(a7)
003f98: 52af002a     addq.l     #$1, $2a(a7)
003f9c: 202f002a     move.l     $2a(a7), d0
003fa0: 41ee97e8     lea.l      -$6818(a6), a0
003fa4: 20300c00     move.l     (a0, d0.l * 4), d0
003fa8: 4c2f00000002 mulu.l     $2(a7), d0
003fae: 4c7c080000000064 divs.l     #$64, d0
003fb6: b0af0022     cmp.l      $22(a7), d0
003fba: 6f0a         ble.b      $3fc6
003fbc: 202f002a     move.l     $2a(a7), d0
003fc0: b0af002e     cmp.l      $2e(a7), d0
003fc4: 6fc2         ble.b      $3f88
003fc6: 2f2f0062     move.l     $62(a7), -(a7)
003fca: 202f002e     move.l     $2e(a7), d0
003fce: 41ef004e     lea.l      $4e(a7), a0
003fd2: 22300c00     move.l     (a0, d0.l * 4), d1
003fd6: 6008         bra.b      $3fe0
003fd8: 2f2f0062     move.l     $62(a7), -(a7)
003fdc: 222f0062     move.l     $62(a7), d1
003fe0: 202f0066     move.l     $66(a7), d0
003fe4: 6100081c     bsr.w      $4802
003fe8: 588f         addq.l     #$4, a7
003fea: 206f0062     movea.l    $62(a7), a0
003fee: 217c00000001003c move.l     #$1, $3c(a0)
003ff6: 2f6f00620012 move.l     $62(a7), $12(a7)
003ffc: 600001e4     bra.w      $41e2
004000: 4aaf002e     tst.l      $2e(a7)
004004: 670001ae     beq.w      $41b4
004008: 0c2f002f0079 cmpi.b     #$2f, $79(a7)
00400e: 66000120     bne.w      $4130
004012: 202f002e     move.l     $2e(a7), d0
004016: 5280         addq.l     #$1, d0
004018: 2f400026     move.l     d0, $26(a7)
00401c: 202f002e     move.l     $2e(a7), d0
004020: 41ef004a     lea.l      $4a(a7), a0
004024: 2f700c000012 move.l     (a0, d0.l * 4), $12(a7)
00402a: 60000188     bra.w      $41b4
00402e: 202f002a     move.l     $2a(a7), d0
004032: 41ef004a     lea.l      $4a(a7), a0
004036: 20700c00     movea.l    (a0, d0.l * 4), a0
00403a: 20680018     movea.l    $18(a0), a0
00403e: 4a280057     tst.b      $57(a0)
004042: 6606         bne.b      $404a
004044: 42af000a     clr.l      $a(a7)
004048: 601a         bra.b      $4064
00404a: 202f002a     move.l     $2a(a7), d0
00404e: 41ef004a     lea.l      $4a(a7), a0
004052: 20700c00     movea.l    (a0, d0.l * 4), a0
004056: 20680018     movea.l    $18(a0), a0
00405a: 7000         moveq      #$0, d0
00405c: 1028005a     move.b     $5a(a0), d0
004060: 2f40000a     move.l     d0, $a(a7)
004064: 202f002a     move.l     $2a(a7), d0
004068: 41ef004a     lea.l      $4a(a7), a0
00406c: 20700c00     movea.l    (a0, d0.l * 4), a0
004070: 20280018     move.l     $18(a0), d0
004074: 61000564     bsr.w      $45da
004078: 4a00         tst.b      d0
00407a: 6704         beq.b      $4080
00407c: 7000         moveq      #$0, d0
00407e: 6002         bra.b      $4082
004080: 7001         moveq      #$1, d0
004082: 2f40000e     move.l     d0, $e(a7)
004086: 202f002a     move.l     $2a(a7), d0
00408a: 41ef004a     lea.l      $4a(a7), a0
00408e: 20700c00     movea.l    (a0, d0.l * 4), a0
004092: 20280018     move.l     $18(a0), d0
004096: 6100fc0c     bsr.w      $3ca4
00409a: 4a00         tst.b      d0
00409c: 6614         bne.b      $40b2
00409e: 202f002a     move.l     $2a(a7), d0
0040a2: 41ef004a     lea.l      $4a(a7), a0
0040a6: 20300c00     move.l     (a0, d0.l * 4), d0
0040aa: 61000550     bsr.w      $45fc
0040ae: 4a00         tst.b      d0
0040b0: 6706         beq.b      $40b8
0040b2: 42af0006     clr.l      $6(a7)
0040b6: 6006         bra.b      $40be
0040b8: 7001         moveq      #$1, d0
0040ba: 2f400006     move.l     d0, $6(a7)
0040be: 7038         moveq      #$38, d0
0040c0: 4c2f0000000e mulu.l     $e(a7), d0
0040c6: 41ee9778     lea.l      -$6888(a6), a0
0040ca: 721c         moveq      #$1c, d1
0040cc: 4c2f10010006 mulu.l     $6(a7), d1
0040d2: d081         add.l      d1, d0
0040d4: 222f000a     move.l     $a(a7), d1
0040d8: d1c0         adda.l     d0, a0
0040da: 2f701c000002 move.l     (a0, d1.l * 4), $2(a7)
0040e0: 7200         moveq      #$0, d1
0040e2: 202f002a     move.l     $2a(a7), d0
0040e6: 41ef004a     lea.l      $4a(a7), a0
0040ea: 20300c00     move.l     (a0, d0.l * 4), d0
0040ee: 61000276     bsr.w      $4366
0040f2: 222f002a     move.l     $2a(a7), d1
0040f6: 41ee97e8     lea.l      -$6818(a6), a0
0040fa: 22301c00     move.l     (a0, d1.l * 4), d1
0040fe: 4c2f10010002 mulu.l     $2(a7), d1
004104: 4c7c180100000064 divs.l     #$64, d1
00410c: d081         add.l      d1, d0
00410e: 222f002a     move.l     $2a(a7), d1
004112: 41ef0032     lea.l      $32(a7), a0
004116: b0b01c00     cmp.l      (a0, d1.l * 4), d0
00411a: 6e04         bgt.b      $4120
00411c: 7001         moveq      #$1, d0
00411e: 6002         bra.b      $4122
004120: 7000         moveq      #$0, d0
004122: 1f400001     move.b     d0, $1(a7)
004126: 4a2f0001     tst.b      $1(a7)
00412a: 6604         bne.b      $4130
00412c: 52af002a     addq.l     #$1, $2a(a7)
004130: 202f002a     move.l     $2a(a7), d0
004134: b0af002e     cmp.l      $2e(a7), d0
004138: 6c08         bge.b      $4142
00413a: 4a2f0001     tst.b      $1(a7)
00413e: 6700feee     beq.w      $402e
004142: 7001         moveq      #$1, d0
004144: b0af002a     cmp.l      $2a(a7), d0
004148: 6c52         bge.b      $419c
00414a: 42af001e     clr.l      $1e(a7)
00414e: 202f001e     move.l     $1e(a7), d0
004152: 41ef0032     lea.l      $32(a7), a0
004156: 2f700c00001a move.l     (a0, d0.l * 4), $1a(a7)
00415c: 7001         moveq      #$1, d0
00415e: 2f400016     move.l     d0, $16(a7)
004162: 602a         bra.b      $418e
004164: 202f0016     move.l     $16(a7), d0
004168: 41ef0032     lea.l      $32(a7), a0
00416c: 222f001a     move.l     $1a(a7), d1
004170: b2b00c00     cmp.l      (a0, d0.l * 4), d1
004174: 6e14         bgt.b      $418a
004176: 2f6f0016001e move.l     $16(a7), $1e(a7)
00417c: 202f001e     move.l     $1e(a7), d0
004180: 41ef0032     lea.l      $32(a7), a0
004184: 2f700c00001a move.l     (a0, d0.l * 4), $1a(a7)
00418a: 52af0016     addq.l     #$1, $16(a7)
00418e: 7002         moveq      #$2, d0
004190: b0af0016     cmp.l      $16(a7), d0
004194: 6ece         bgt.b      $4164
004196: 2f6f001e002a move.l     $1e(a7), $2a(a7)
00419c: 202f002a     move.l     $2a(a7), d0
0041a0: 41ef004a     lea.l      $4a(a7), a0
0041a4: 2f700c000012 move.l     (a0, d0.l * 4), $12(a7)
0041aa: 202f002a     move.l     $2a(a7), d0
0041ae: 5280         addq.l     #$1, d0
0041b0: 2f400026     move.l     d0, $26(a7)
0041b4: 206f0062     movea.l    $62(a7), a0
0041b8: 216f0026003c move.l     $26(a7), $3c(a0)
0041be: 202f0026     move.l     $26(a7), d0
0041c2: 5380         subq.l     #$1, d0
0041c4: 41ef004a     lea.l      $4a(a7), a0
0041c8: 2f300c00     move.l     (a0, d0.l * 4), -(a7)
0041cc: 202f002a     move.l     $2a(a7), d0
0041d0: 41ef004e     lea.l      $4e(a7), a0
0041d4: 22300c00     move.l     (a0, d0.l * 4), d1
0041d8: 202f0066     move.l     $66(a7), d0
0041dc: 61000624     bsr.w      $4802
0041e0: 588f         addq.l     #$4, a7
0041e2: 202f0062     move.l     $62(a7), d0
0041e6: 610006d0     bsr.w      $48b8
0041ea: 202f0012     move.l     $12(a7), d0
0041ee: 4fef005e     lea.l      $5e(a7), a7
0041f2: 4ced0100fffc movem.l    -$4(a5), a0
0041f8: 4e5d         unlk       a5
0041fa: 4e75         rts        
0041fc: 4e550000     link.w     a5, #$0
004200: 48e7c080     movem.l    d0-d1/a0, -(a7)
004204: 598f         subq.l     #$4, a7
004206: 4297         clr.l      (a7)
004208: 206f0004     movea.l    $4(a7), a0
00420c: 0c28000f0010 cmpi.b     #$f, $10(a0)
004212: 6728         beq.b      $423c
004214: 202f0004     move.l     $4(a7), d0
004218: 6100e0ea     bsr.w      $2304
00421c: 4a00         tst.b      d0
00421e: 675a         beq.b      $427a
004220: 206f0004     movea.l    $4(a7), a0
004224: 20680018     movea.l    $18(a0), a0
004228: 4a280057     tst.b      $57(a0)
00422c: 670e         beq.b      $423c
00422e: 206f0004     movea.l    $4(a7), a0
004232: 20680018     movea.l    $18(a0), a0
004236: 4a28005a     tst.b      $5a(a0)
00423a: 663e         bne.b      $427a
00423c: 2ebc000000c8 move.l     #$c8, (a7)
004242: 202f0004     move.l     $4(a7), d0
004246: 610000d8     bsr.w      $4320
00424a: 0c000001     cmpi.b     #$1, d0
00424e: 6722         beq.b      $4272
004250: 206f0004     movea.l    $4(a7), a0
004254: 20680018     movea.l    $18(a0), a0
004258: 0c28000b0057 cmpi.b     #$b, $57(a0)
00425e: 6712         beq.b      $4272
004260: 206f0004     movea.l    $4(a7), a0
004264: 20680018     movea.l    $18(a0), a0
004268: 0c28000c0057 cmpi.b     #$c, $57(a0)
00426e: 660000a2     bne.w      $4312
004272: 7032         moveq      #$32, d0
004274: 9197         sub.l      d0, (a7)
004276: 6000009a     bra.w      $4312
00427a: 206f0004     movea.l    $4(a7), a0
00427e: 0c2800100010 cmpi.b     #$10, $10(a0)
004284: 671c         beq.b      $42a2
004286: 206f0004     movea.l    $4(a7), a0
00428a: 20680018     movea.l    $18(a0), a0
00428e: 0c280001005a cmpi.b     #$1, $5a(a0)
004294: 6642         bne.b      $42d8
004296: 202f0004     move.l     $4(a7), d0
00429a: 6100e068     bsr.w      $2304
00429e: 4a00         tst.b      d0
0042a0: 6736         beq.b      $42d8
0042a2: 7064         moveq      #$64, d0
0042a4: 2e80         move.l     d0, (a7)
0042a6: 202f0004     move.l     $4(a7), d0
0042aa: 61000074     bsr.w      $4320
0042ae: 0c000001     cmpi.b     #$1, d0
0042b2: 6720         beq.b      $42d4
0042b4: 206f0004     movea.l    $4(a7), a0
0042b8: 20680018     movea.l    $18(a0), a0
0042bc: 0c28000b0057 cmpi.b     #$b, $57(a0)
0042c2: 6710         beq.b      $42d4
0042c4: 206f0004     movea.l    $4(a7), a0
0042c8: 20680018     movea.l    $18(a0), a0
0042cc: 0c28000c0057 cmpi.b     #$c, $57(a0)
0042d2: 663e         bne.b      $4312
0042d4: 7019         moveq      #$19, d0
0042d6: 609c         bra.b      $4274
0042d8: 206f0004     movea.l    $4(a7), a0
0042dc: 0c2800020010 cmpi.b     #$2, $10(a0)
0042e2: 670c         beq.b      $42f0
0042e4: 206f0004     movea.l    $4(a7), a0
0042e8: 0c2800030010 cmpi.b     #$3, $10(a0)
0042ee: 6622         bne.b      $4312
0042f0: 4aaf0008     tst.l      $8(a7)
0042f4: 671c         beq.b      $4312
0042f6: 202f0008     move.l     $8(a7), d0
0042fa: 6100028e     bsr.w      $458a
0042fe: 4a00         tst.b      d0
004300: 660c         bne.b      $430e
004302: 202f0008     move.l     $8(a7), d0
004306: 6100dffc     bsr.w      $2304
00430a: 4a00         tst.b      d0
00430c: 6704         beq.b      $4312
00430e: 7032         moveq      #$32, d0
004310: 2e80         move.l     d0, (a7)
004312: 2017         move.l     (a7), d0
004314: 588f         addq.l     #$4, a7
004316: 4ced0100fffc movem.l    -$4(a5), a0
00431c: 4e5d         unlk       a5
00431e: 4e75         rts        
004320: 4e550000     link.w     a5, #$0
004324: 48e78880     movem.l    d0/d4/a0, -(a7)
004328: 2057         movea.l    (a7), a0
00432a: 20680018     movea.l    $18(a0), a0
00432e: 18280057     move.b     $57(a0), d4
004332: 0c040002     cmpi.b     #$2, d4
004336: 671e         beq.b      $4356
004338: 0c040001     cmpi.b     #$1, d4
00433c: 6718         beq.b      $4356
00433e: 0c040003     cmpi.b     #$3, d4
004342: 6712         beq.b      $4356
004344: 0c040009     cmpi.b     #$9, d4
004348: 670c         beq.b      $4356
00434a: 0c040008     cmpi.b     #$8, d4
00434e: 6706         beq.b      $4356
004350: 0c04000a     cmpi.b     #$a, d4
004354: 6604         bne.b      $435a
004356: 7001         moveq      #$1, d0
004358: 6002         bra.b      $435c
00435a: 7000         moveq      #$0, d0
00435c: 4ced0110fff8 movem.l    -$8(a5), d4/a0
004362: 4e5d         unlk       a5
004364: 4e75         rts        
004366: 4e550000     link.w     a5, #$0
00436a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00436e: 598f         subq.l     #$4, a7
004370: 4297         clr.l      (a7)
004372: 206f0004     movea.l    $4(a7), a0
004376: 0c28000f0010 cmpi.b     #$f, $10(a0)
00437c: 6728         beq.b      $43a6
00437e: 202f0004     move.l     $4(a7), d0
004382: 6100df80     bsr.w      $2304
004386: 4a00         tst.b      d0
004388: 672e         beq.b      $43b8
00438a: 206f0004     movea.l    $4(a7), a0
00438e: 20680018     movea.l    $18(a0), a0
004392: 4a280057     tst.b      $57(a0)
004396: 670e         beq.b      $43a6
004398: 206f0004     movea.l    $4(a7), a0
00439c: 20680018     movea.l    $18(a0), a0
0043a0: 4a28005a     tst.b      $5a(a0)
0043a4: 6612         bne.b      $43b8
0043a6: 206e851e     movea.l    -$7ae2(a6), a0
0043aa: 2028004c     move.l     $4c(a0), d0
0043ae: 4c7c000000000064 divu.l     #$64, d0
0043b6: 604c         bra.b      $4404
0043b8: 206f0004     movea.l    $4(a7), a0
0043bc: 0c2800100010 cmpi.b     #$10, $10(a0)
0043c2: 671c         beq.b      $43e0
0043c4: 206f0004     movea.l    $4(a7), a0
0043c8: 20680018     movea.l    $18(a0), a0
0043cc: 0c280001005a cmpi.b     #$1, $5a(a0)
0043d2: 6616         bne.b      $43ea
0043d4: 202f0004     move.l     $4(a7), d0
0043d8: 6100df2a     bsr.w      $2304
0043dc: 4a00         tst.b      d0
0043de: 670a         beq.b      $43ea
0043e0: 206e851e     movea.l    -$7ae2(a6), a0
0043e4: 20280050     move.l     $50(a0), d0
0043e8: 60c4         bra.b      $43ae
0043ea: 206f0004     movea.l    $4(a7), a0
0043ee: 0c2800020010 cmpi.b     #$2, $10(a0)
0043f4: 670c         beq.b      $4402
0043f6: 206f0004     movea.l    $4(a7), a0
0043fa: 0c2800030010 cmpi.b     #$3, $10(a0)
004400: 6604         bne.b      $4406
004402: 7064         moveq      #$64, d0
004404: 2e80         move.l     d0, (a7)
004406: 2017         move.l     (a7), d0
004408: 588f         addq.l     #$4, a7
00440a: 4ced0100fffc movem.l    -$4(a5), a0
004410: 4e5d         unlk       a5
004412: 4e75         rts        
004414: 4e550000     link.w     a5, #$0
004418: 48e7e080     movem.l    d0-d2/a0, -(a7)
00441c: 4fefffee     lea.l      -$12(a7), a7
004420: 422f0011     clr.b      $11(a7)
004424: 4297         clr.l      (a7)
004426: 4aaf0012     tst.l      $12(a7)
00442a: 6700014c     beq.w      $4578
00442e: 4aaf0016     tst.l      $16(a7)
004432: 67000144     beq.w      $4578
004436: 206f0016     movea.l    $16(a7), a0
00443a: 20280018     move.l     $18(a0), d0
00443e: 6100019a     bsr.w      $45da
004442: 4a00         tst.b      d0
004444: 6704         beq.b      $444a
004446: 7000         moveq      #$0, d0
004448: 6002         bra.b      $444c
00444a: 7001         moveq      #$1, d0
00444c: 2f400008     move.l     d0, $8(a7)
004450: 206f0012     movea.l    $12(a7), a0
004454: 20680018     movea.l    $18(a0), a0
004458: 4a28005a     tst.b      $5a(a0)
00445c: 671e         beq.b      $447c
00445e: 206f0012     movea.l    $12(a7), a0
004462: 20680018     movea.l    $18(a0), a0
004466: 0c280001005a cmpi.b     #$1, $5a(a0)
00446c: 6614         bne.b      $4482
00446e: 206f0012     movea.l    $12(a7), a0
004472: 20680018     movea.l    $18(a0), a0
004476: 4a280057     tst.b      $57(a0)
00447a: 6606         bne.b      $4482
00447c: 42af000c     clr.l      $c(a7)
004480: 6042         bra.b      $44c4
004482: 206f0012     movea.l    $12(a7), a0
004486: 20680018     movea.l    $18(a0), a0
00448a: 0c280001005a cmpi.b     #$1, $5a(a0)
004490: 6620         bne.b      $44b2
004492: 202f0012     move.l     $12(a7), d0
004496: 6100de6c     bsr.w      $2304
00449a: 0c000001     cmpi.b     #$1, d0
00449e: 670e         beq.b      $44ae
0044a0: 202f0012     move.l     $12(a7), d0
0044a4: 610000e4     bsr.w      $458a
0044a8: 0c000001     cmpi.b     #$1, d0
0044ac: 6604         bne.b      $44b2
0044ae: 7001         moveq      #$1, d0
0044b0: 600e         bra.b      $44c0
0044b2: 206f0016     movea.l    $16(a7), a0
0044b6: 20680018     movea.l    $18(a0), a0
0044ba: 7000         moveq      #$0, d0
0044bc: 1028005a     move.b     $5a(a0), d0
0044c0: 2f40000c     move.l     d0, $c(a7)
0044c4: 202f0016     move.l     $16(a7), d0
0044c8: 61000132     bsr.w      $45fc
0044cc: 4a00         tst.b      d0
0044ce: 6704         beq.b      $44d4
0044d0: 7000         moveq      #$0, d0
0044d2: 6002         bra.b      $44d6
0044d4: 7001         moveq      #$1, d0
0044d6: 2f400004     move.l     d0, $4(a7)
0044da: 222f0012     move.l     $12(a7), d1
0044de: 202f0016     move.l     $16(a7), d0
0044e2: 6100fd18     bsr.w      $41fc
0044e6: d197         add.l      d0, (a7)
0044e8: 206f0012     movea.l    $12(a7), a0
0044ec: 20680018     movea.l    $18(a0), a0
0044f0: 4a280057     tst.b      $57(a0)
0044f4: 6638         bne.b      $452e
0044f6: 206f0016     movea.l    $16(a7), a0
0044fa: 20680018     movea.l    $18(a0), a0
0044fe: 4a280057     tst.b      $57(a0)
004502: 662a         bne.b      $452e
004504: 202f0012     move.l     $12(a7), d0
004508: 6100ddfa     bsr.w      $2304
00450c: 4a00         tst.b      d0
00450e: 671e         beq.b      $452e
004510: 202f0016     move.l     $16(a7), d0
004514: 6100ddee     bsr.w      $2304
004518: 4a00         tst.b      d0
00451a: 660c         bne.b      $4528
00451c: 206f0016     movea.l    $16(a7), a0
004520: 0c28000f0010 cmpi.b     #$f, $10(a0)
004526: 6606         bne.b      $452e
004528: 2017         move.l     (a7), d0
00452a: e388         lsl.l      #$1, d0
00452c: 2e80         move.l     d0, (a7)
00452e: 202f0012     move.l     $12(a7), d0
004532: 6100d7ca     bsr.w      $1cfe
004536: d197         add.l      d0, (a7)
004538: 7038         moveq      #$38, d0
00453a: 4c2f00000008 mulu.l     $8(a7), d0
004540: 41ee9708     lea.l      -$68f8(a6), a0
004544: 721c         moveq      #$1c, d1
004546: 4c2f10010004 mulu.l     $4(a7), d1
00454c: d081         add.l      d1, d0
00454e: 222f000c     move.l     $c(a7), d1
004552: d1c0         adda.l     d0, a0
004554: 20301c00     move.l     (a0, d1.l * 4), d0
004558: d097         add.l      (a7), d0
00455a: 2400         move.l     d0, d2
00455c: 2f2f0016     move.l     $16(a7), -(a7)
004560: 222f0016     move.l     $16(a7), d1
004564: 202e8570     move.l     -$7a90(a6), d0
004568: 6100065a     bsr.w      $4bc4
00456c: 588f         addq.l     #$4, a7
00456e: b480         cmp.l      d0, d2
004570: 6f06         ble.b      $4578
004572: 1f7c00010011 move.b     #$1, $11(a7)
004578: 102f0011     move.b     $11(a7), d0
00457c: 4fef0012     lea.l      $12(a7), a7
004580: 4ced0104fff8 movem.l    -$8(a5), d2/a0
004586: 4e5d         unlk       a5
004588: 4e75         rts        
00458a: 4e550000     link.w     a5, #$0
00458e: 48e78080     movem.l    d0/a0, -(a7)
004592: 2057         movea.l    (a7), a0
004594: 0c28000f0010 cmpi.b     #$f, $10(a0)
00459a: 670a         beq.b      $45a6
00459c: 2057         movea.l    (a7), a0
00459e: 0c2800100010 cmpi.b     #$10, $10(a0)
0045a4: 6604         bne.b      $45aa
0045a6: 7001         moveq      #$1, d0
0045a8: 6002         bra.b      $45ac
0045aa: 7000         moveq      #$0, d0
0045ac: 4ced0100fffc movem.l    -$4(a5), a0
0045b2: 4e5d         unlk       a5
0045b4: 4e75         rts        
0045b6: 4e550000     link.w     a5, #$0
0045ba: 48e7c080     movem.l    d0-d1/a0, -(a7)
0045be: 2057         movea.l    (a7), a0
0045c0: 117c0001002c move.b     #$1, $2c(a0)
0045c6: 206f0004     movea.l    $4(a7), a0
0045ca: 117c0001002d move.b     #$1, $2d(a0)
0045d0: 4ced0100fffc movem.l    -$4(a5), a0
0045d6: 4e5d         unlk       a5
0045d8: 4e75         rts        
0045da: 4e550000     link.w     a5, #$0
0045de: 48e78080     movem.l    d0/a0, -(a7)
0045e2: 2057         movea.l    (a7), a0
0045e4: 0c280008005c cmpi.b     #$8, $5c(a0)
0045ea: 6604         bne.b      $45f0
0045ec: 7001         moveq      #$1, d0
0045ee: 6002         bra.b      $45f2
0045f0: 7000         moveq      #$0, d0
0045f2: 4ced0100fffc movem.l    -$4(a5), a0
0045f8: 4e5d         unlk       a5
0045fa: 4e75         rts        
0045fc: 4e550000     link.w     a5, #$0
004600: 48e78080     movem.l    d0/a0, -(a7)
004604: 558f         subq.l     #$2, a7
004606: 206f0002     movea.l    $2(a7), a0
00460a: 1f6800100001 move.b     $10(a0), $1(a7)
004610: 0c2f00150001 cmpi.b     #$15, $1(a7)
004616: 6744         beq.b      $465c
004618: 0c2f000b0001 cmpi.b     #$b, $1(a7)
00461e: 673c         beq.b      $465c
004620: 0c2f00110001 cmpi.b     #$11, $1(a7)
004626: 6734         beq.b      $465c
004628: 0c2f00120001 cmpi.b     #$12, $1(a7)
00462e: 672c         beq.b      $465c
004630: 0c2f00160001 cmpi.b     #$16, $1(a7)
004636: 6724         beq.b      $465c
004638: 0c2f00170001 cmpi.b     #$17, $1(a7)
00463e: 671c         beq.b      $465c
004640: 0c2f00180001 cmpi.b     #$18, $1(a7)
004646: 6714         beq.b      $465c
004648: 0c2f00050001 cmpi.b     #$5, $1(a7)
00464e: 670c         beq.b      $465c
004650: 0c2f00040001 cmpi.b     #$4, $1(a7)
004656: 6704         beq.b      $465c
004658: 7001         moveq      #$1, d0
00465a: 6002         bra.b      $465e
00465c: 7000         moveq      #$0, d0
00465e: 548f         addq.l     #$2, a7
004660: 4ced0100fffc movem.l    -$4(a5), a0
004666: 4e5d         unlk       a5
004668: 4e75         rts        
00466a: 4e550000     link.w     a5, #$0
00466e: 48e78080     movem.l    d0/a0, -(a7)
004672: 558f         subq.l     #$2, a7
004674: 206f0002     movea.l    $2(a7), a0
004678: 1f6800100001 move.b     $10(a0), $1(a7)
00467e: 206f0002     movea.l    $2(a7), a0
004682: 0c2800370044 cmpi.b     #$37, $44(a0)
004688: 6700009c     beq.w      $4726
00468c: 206f0002     movea.l    $2(a7), a0
004690: 0c2800420044 cmpi.b     #$42, $44(a0)
004696: 6700008e     beq.w      $4726
00469a: 0c2f00110001 cmpi.b     #$11, $1(a7)
0046a0: 67000084     beq.w      $4726
0046a4: 0c2f00120001 cmpi.b     #$12, $1(a7)
0046aa: 6700007a     beq.w      $4726
0046ae: 0c2f00160001 cmpi.b     #$16, $1(a7)
0046b4: 67000070     beq.w      $4726
0046b8: 0c2f00170001 cmpi.b     #$17, $1(a7)
0046be: 67000066     beq.w      $4726
0046c2: 0c2f00180001 cmpi.b     #$18, $1(a7)
0046c8: 675c         beq.b      $4726
0046ca: 0c2f00050001 cmpi.b     #$5, $1(a7)
0046d0: 6754         beq.b      $4726
0046d2: 0c2f00020001 cmpi.b     #$2, $1(a7)
0046d8: 674c         beq.b      $4726
0046da: 0c2f00030001 cmpi.b     #$3, $1(a7)
0046e0: 6744         beq.b      $4726
0046e2: 0c2f000a0001 cmpi.b     #$a, $1(a7)
0046e8: 673c         beq.b      $4726
0046ea: 0c2f00060001 cmpi.b     #$6, $1(a7)
0046f0: 6734         beq.b      $4726
0046f2: 0c2f00070001 cmpi.b     #$7, $1(a7)
0046f8: 672c         beq.b      $4726
0046fa: 0c2f00080001 cmpi.b     #$8, $1(a7)
004700: 6724         beq.b      $4726
004702: 0c2f00090001 cmpi.b     #$9, $1(a7)
004708: 671c         beq.b      $4726
00470a: 0c2f000d0001 cmpi.b     #$d, $1(a7)
004710: 6714         beq.b      $4726
004712: 0c2f000e0001 cmpi.b     #$e, $1(a7)
004718: 670c         beq.b      $4726
00471a: 0c2f00040001 cmpi.b     #$4, $1(a7)
004720: 6704         beq.b      $4726
004722: 7001         moveq      #$1, d0
004724: 6002         bra.b      $4728
004726: 7000         moveq      #$0, d0
004728: 548f         addq.l     #$2, a7
00472a: 4ced0100fffc movem.l    -$4(a5), a0
004730: 4e5d         unlk       a5
004732: 4e75         rts        
004734: 4e550000     link.w     a5, #$0
004738: 48e7c000     movem.l    d0-d1, -(a7)
00473c: 598f         subq.l     #$4, a7
00473e: 222f0004     move.l     $4(a7), d1
004742: 6002         bra.b      $4746
004744: 2217         move.l     (a7), d1
004746: 202e8570     move.l     -$7a90(a6), d0
00474a: 610010ce     bsr.w      $581a
00474e: 2e80         move.l     d0, (a7)
004750: 4a97         tst.l      (a7)
004752: 6708         beq.b      $475c
004754: 2017         move.l     (a7), d0
004756: 615a         bsr.b      $47b2
004758: 4a00         tst.b      d0
00475a: 67e8         beq.b      $4744
00475c: 2017         move.l     (a7), d0
00475e: 588f         addq.l     #$4, a7
004760: 4ced0002fffc movem.l    -$4(a5), d1
004766: 4e5d         unlk       a5
004768: 4e75         rts        
00476a: 4e550000     link.w     a5, #$0
00476e: 48e78080     movem.l    d0/a0, -(a7)
004772: 598f         subq.l     #$4, a7
004774: 206f0004     movea.l    $4(a7), a0
004778: 6002         bra.b      $477c
00477a: 2057         movea.l    (a7), a0
00477c: 2e90         move.l     (a0), (a7)
00477e: 4a97         tst.l      (a7)
004780: 6712         beq.b      $4794
004782: 2057         movea.l    (a7), a0
004784: 4a280030     tst.b      $30(a0)
004788: 670a         beq.b      $4794
00478a: 2057         movea.l    (a7), a0
00478c: 0c28004d0044 cmpi.b     #$4d, $44(a0)
004792: 67e6         beq.b      $477a
004794: 4a97         tst.l      (a7)
004796: 670c         beq.b      $47a4
004798: 2057         movea.l    (a7), a0
00479a: 0c2800370044 cmpi.b     #$37, $44(a0)
0047a0: 6602         bne.b      $47a4
0047a2: 4297         clr.l      (a7)
0047a4: 2017         move.l     (a7), d0
0047a6: 588f         addq.l     #$4, a7
0047a8: 4ced0100fffc movem.l    -$4(a5), a0
0047ae: 4e5d         unlk       a5
0047b0: 4e75         rts        
0047b2: 4e550000     link.w     a5, #$0
0047b6: 48e78080     movem.l    d0/a0, -(a7)
0047ba: 558f         subq.l     #$2, a7
0047bc: 422f0001     clr.b      $1(a7)
0047c0: 4aaf0002     tst.l      $2(a7)
0047c4: 672c         beq.b      $47f2
0047c6: 206f0002     movea.l    $2(a7), a0
0047ca: 4a280030     tst.b      $30(a0)
0047ce: 671c         beq.b      $47ec
0047d0: 206f0002     movea.l    $2(a7), a0
0047d4: 0c28004d0044 cmpi.b     #$4d, $44(a0)
0047da: 6710         beq.b      $47ec
0047dc: 206f0002     movea.l    $2(a7), a0
0047e0: 0c2800370044 cmpi.b     #$37, $44(a0)
0047e6: 6704         beq.b      $47ec
0047e8: 7001         moveq      #$1, d0
0047ea: 6002         bra.b      $47ee
0047ec: 7000         moveq      #$0, d0
0047ee: 1f400001     move.b     d0, $1(a7)
0047f2: 102f0001     move.b     $1(a7), d0
0047f6: 548f         addq.l     #$2, a7
0047f8: 4ced0100fffc movem.l    -$4(a5), a0
0047fe: 4e5d         unlk       a5
004800: 4e75         rts        
004802: 4e550000     link.w     a5, #$0
004806: 48e7c080     movem.l    d0-d1/a0, -(a7)
00480a: 2057         movea.l    (a7), a0
00480c: 216f00040004 move.l     $4(a7), $4(a0)
004812: 2057         movea.l    (a7), a0
004814: 216f00140008 move.l     $14(a7), $8(a0)
00481a: 4ced0100fffc movem.l    -$4(a5), a0
004820: 4e5d         unlk       a5
004822: 4e75         rts        
004824: 4e550000     link.w     a5, #$0
004828: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
00482c: 7800         moveq      #$0, d4
00482e: 0c2f0001001b cmpi.b     #$1, $1b(a7)
004834: 6650         bne.b      $4886
004836: 2017         move.l     (a7), d0
004838: 6100fd50     bsr.w      $458a
00483c: 0c000001     cmpi.b     #$1, d0
004840: 6644         bne.b      $4886
004842: 202f0004     move.l     $4(a7), d0
004846: 6100fd42     bsr.w      $458a
00484a: 4a00         tst.b      d0
00484c: 6638         bne.b      $4886
00484e: 7000         moveq      #$0, d0
004850: 605c         bra.b      $48ae
004852: 206f0004     movea.l    $4(a7), a0
004856: 082800040017 btst.b     #$4, $17(a0)
00485c: 6022         bra.b      $4880
00485e: 206f0004     movea.l    $4(a7), a0
004862: 082800030017 btst.b     #$3, $17(a0)
004868: 6016         bra.b      $4880
00486a: 206f0004     movea.l    $4(a7), a0
00486e: 082800020017 btst.b     #$2, $17(a0)
004874: 600a         bra.b      $4880
004876: 206f0004     movea.l    $4(a7), a0
00487a: 082800010017 btst.b     #$1, $17(a0)
004880: 672a         beq.b      $48ac
004882: 7801         moveq      #$1, d4
004884: 6026         bra.b      $48ac
004886: 2057         movea.l    (a7), a0
004888: 7000         moveq      #$0, d0
00488a: 10280044     move.b     $44(a0), d0
00488e: 0c400037     cmpi.w     #$37, d0
004892: 67be         beq.b      $4852
004894: 6210         bhi.b      $48a6
004896: 0c000016     cmpi.b     #$16, d0
00489a: 67da         beq.b      $4876
00489c: 620e         bhi.b      $48ac
00489e: 0c00000b     cmpi.b     #$b, d0
0048a2: 67c6         beq.b      $486a
0048a4: 6006         bra.b      $48ac
0048a6: 0c400042     cmpi.w     #$42, d0
0048aa: 67b2         beq.b      $485e
0048ac: 1004         move.b     d4, d0
0048ae: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0048b4: 4e5d         unlk       a5
0048b6: 4e75         rts        
0048b8: 4e550000     link.w     a5, #$0
0048bc: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0048c0: 2057         movea.l    (a7), a0
0048c2: 24680008     movea.l    $8(a0), a2
0048c6: 604c         bra.b      $4914
0048c8: 48780001     pea.l      $1.w
0048cc: 220a         move.l     a2, d1
0048ce: 202f0004     move.l     $4(a7), d0
0048d2: 6100ff50     bsr.w      $4824
0048d6: 588f         addq.l     #$4, a7
0048d8: 4a00         tst.b      d0
0048da: 6736         beq.b      $4912
0048dc: 157c00010031 move.b     #$1, $31(a2)
0048e2: 601a         bra.b      $48fe
0048e4: 7001         moveq      #$1, d0
0048e6: b0aa0056     cmp.l      $56(a2), d0
0048ea: 6006         bra.b      $48f2
0048ec: 7001         moveq      #$1, d0
0048ee: b0aa005a     cmp.l      $5a(a2), d0
0048f2: 6c1e         bge.b      $4912
0048f4: 2057         movea.l    (a7), a0
0048f6: 117c00020012 move.b     #$2, $12(a0)
0048fc: 6014         bra.b      $4912
0048fe: 2057         movea.l    (a7), a0
004900: 7000         moveq      #$0, d0
004902: 10280044     move.b     $44(a0), d0
004906: 0c40000b     cmpi.w     #$b, d0
00490a: 67d8         beq.b      $48e4
00490c: 0c400016     cmpi.w     #$16, d0
004910: 67da         beq.b      $48ec
004912: 2452         movea.l    (a2), a2
004914: b5d7         cmpa.l     (a7), a2
004916: 66b0         bne.b      $48c8
004918: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
00491e: 4e5d         unlk       a5
004920: 4e75         rts        
004922: 756e         .dc.w      $756e
004924: 6974         bvs.b      $499a
004926: 6564         bcs.b      $498c
004928: 20737461     movea.l    $61(a3, d7.w), a0
00492c: 7465         moveq      #$65, d2
00492e: 7300         .dc.w      $7300
004930: 7573         .dc.w      $7573
004932: 61004e55     bsr.w      $9789
004936: 000048e7     ori.b      #$e7, d0
00493a: 8080         or.l       d0, d0
00493c: 5d8f         subq.l     #$6, a7
00493e: 422f0001     clr.b      $1(a7)
004942: 6100006e     bsr.w      $49b2
004946: 4a00         tst.b      d0
004948: 663c         bne.b      $4986
00494a: 2f6e80240002 move.l     -$7fdc(a6), $2(a7)
004950: 6750         beq.b      $49a2
004952: 206f0002     movea.l    $2(a7), a0
004956: 4a28002f     tst.b      $2f(a0)
00495a: 6646         bne.b      $49a2
00495c: 206f0002     movea.l    $2(a7), a0
004960: 4a28002e     tst.b      $2e(a0)
004964: 6734         beq.b      $499a
004966: 6100011e     bsr.w      $4a86
00496a: 4a00         tst.b      d0
00496c: 6720         beq.b      $498e
00496e: 202f0002     move.l     $2(a7), d0
004972: 61000162     bsr.w      $4ad6
004976: 4a00         tst.b      d0
004978: 670c         beq.b      $4986
00497a: 206f0002     movea.l    $2(a7), a0
00497e: 117c0001002f move.b     #$1, $2f(a0)
004984: 601c         bra.b      $49a2
004986: 1f7c00010001 move.b     #$1, $1(a7)
00498c: 6014         bra.b      $49a2
00498e: 202f0002     move.l     $2(a7), d0
004992: 610001b0     bsr.w      $4b44
004996: 4a00         tst.b      d0
004998: 6708         beq.b      $49a2
00499a: 202f0002     move.l     $2(a7), d0
00499e: 61000112     bsr.w      $4ab2
0049a2: 102f0001     move.b     $1(a7), d0
0049a6: 5c8f         addq.l     #$6, a7
0049a8: 4ced0100fffc movem.l    -$4(a5), a0
0049ae: 4e5d         unlk       a5
0049b0: 4e75         rts        
0049b2: 4e550000     link.w     a5, #$0
0049b6: 48e78000     movem.l    d0, -(a7)
0049ba: 558f         subq.l     #$2, a7
0049bc: 1f6e802f0001 move.b     -$7fd1(a6), $1(a7)
0049c2: 102f0001     move.b     $1(a7), d0
0049c6: 548f         addq.l     #$2, a7
0049c8: 4e5d         unlk       a5
0049ca: 4e75         rts        
0049cc: 4e550000     link.w     a5, #$0
0049d0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0049d4: 5d8f         subq.l     #$6, a7
0049d6: 1f7c00010001 move.b     #$1, $1(a7)
0049dc: 1d7c000197f9 move.b     #$1, -$6807(a6)
0049e2: 4a2e97f8     tst.b      -$6808(a6)
0049e6: 661c         bne.b      $4a04
0049e8: 41ef0002     lea.l      $2(a7), a0
0049ec: 2008         move.l     a0, d0
0049ee: 61003516     bsr.w      $7f06
0049f2: 7201         moveq      #$1, d1
0049f4: b280         cmp.l      d0, d1
0049f6: 6608         bne.b      $4a00
0049f8: 1d7c000197f8 move.b     #$1, -$6808(a6)
0049fe: 6004         bra.b      $4a04
004a00: 422f0001     clr.b      $1(a7)
004a04: 0c2f00010001 cmpi.b     #$1, $1(a7)
004a0a: 660c         bne.b      $4a18
004a0c: 6100358a     bsr.w      $7f98
004a10: 4a80         tst.l      d0
004a12: 6604         bne.b      $4a18
004a14: 422f0001     clr.b      $1(a7)
004a18: 102f0001     move.b     $1(a7), d0
004a1c: 5c8f         addq.l     #$6, a7
004a1e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004a24: 4e5d         unlk       a5
004a26: 4e75         rts        
004a28: 4e550000     link.w     a5, #$0
004a2c: 48e78000     movem.l    d0, -(a7)
004a30: 422e97f9     clr.b      -$6807(a6)
004a34: 4e5d         unlk       a5
004a36: 4e75         rts        
004a38: 4e550000     link.w     a5, #$0
004a3c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004a40: 4feffff4     lea.l      -$c(a7), a7
004a44: 4a2e97f9     tst.b      -$6807(a6)
004a48: 6726         beq.b      $4a70
004a4a: 486f0008     pea.l      $8(a7)
004a4e: 486f000c     pea.l      $c(a7)
004a52: 41ef0010     lea.l      $10(a7), a0
004a56: 2208         move.l     a0, d1
004a58: 41ef000c     lea.l      $c(a7), a0
004a5c: 2008         move.l     a0, d0
004a5e: 61003568     bsr.w      $7fc8
004a62: 508f         addq.l     #$8, a7
004a64: 7201         moveq      #$1, d1
004a66: b280         cmp.l      d0, d1
004a68: 6606         bne.b      $4a70
004a6a: 2eaf0004     move.l     $4(a7), (a7)
004a6e: 6006         bra.b      $4a76
004a70: 2ebc7fffffff move.l     #$7fffffff, (a7)
004a76: 2017         move.l     (a7), d0
004a78: 4fef000c     lea.l      $c(a7), a7
004a7c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
004a82: 4e5d         unlk       a5
004a84: 4e75         rts        
004a86: 4e550000     link.w     a5, #$0
004a8a: 48e7c000     movem.l    d0-d1, -(a7)
004a8e: 558f         subq.l     #$2, a7
004a90: 422f0001     clr.b      $1(a7)
004a94: 61a2         bsr.b      $4a38
004a96: 7201         moveq      #$1, d1
004a98: b280         cmp.l      d0, d1
004a9a: 6e06         bgt.b      $4aa2
004a9c: 1f7c00010001 move.b     #$1, $1(a7)
004aa2: 102f0001     move.b     $1(a7), d0
004aa6: 548f         addq.l     #$2, a7
004aa8: 4ced0002fffc movem.l    -$4(a5), d1
004aae: 4e5d         unlk       a5
004ab0: 4e75         rts        
004ab2: 4e550000     link.w     a5, #$0
004ab6: 48e78080     movem.l    d0/a0, -(a7)
004aba: 6100ff10     bsr.w      $49cc
004abe: 0c000001     cmpi.b     #$1, d0
004ac2: 6608         bne.b      $4acc
004ac4: 2057         movea.l    (a7), a0
004ac6: 117c0001002e move.b     #$1, $2e(a0)
004acc: 4ced0100fffc movem.l    -$4(a5), a0
004ad2: 4e5d         unlk       a5
004ad4: 4e75         rts        
004ad6: 4e550000     link.w     a5, #$0
004ada: 48e7f080     movem.l    d0-d3/a0, -(a7)
004ade: 4fefffd6     lea.l      -$2a(a7), a7
004ae2: 422f0001     clr.b      $1(a7)
004ae6: 202e84bc     move.l     -$7b44(a6), d0
004aea: 4e4f         trap       #$f
004aec: 0020263c     ori.b      #$3c, -(a0)
004af0: 8d4fdf3b     pack       -(a7), -(a6), #$df3b
004af4: 243c3fa26e97 move.l     #$3fa26e97, d2
004afa: 4e4f         trap       #$f
004afc: 00124e4f     ori.b      #$4f, (a2)
004b00: 00242f40     ori.b      #$40, -(a4)
004b04: 002642a7     ori.b      #$a7, -(a6)
004b08: 42a7         clr.l      -(a7)
004b0a: 42a7         clr.l      -(a7)
004b0c: 2f2f0036     move.l     $36(a7), -(a7)
004b10: 222f0036     move.l     $36(a7), d1
004b14: 41ef0012     lea.l      $12(a7), a0
004b18: 2008         move.l     a0, d0
004b1a: 6100bfe6     bsr.w      $b02
004b1e: 4fef0010     lea.l      $10(a7), a7
004b22: 202e8028     move.l     -$7fd8(a6), d0
004b26: b0af0002     cmp.l      $2(a7), d0
004b2a: 6c06         bge.b      $4b32
004b2c: 1f7c00010001 move.b     #$1, $1(a7)
004b32: 102f0001     move.b     $1(a7), d0
004b36: 4fef002a     lea.l      $2a(a7), a7
004b3a: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
004b40: 4e5d         unlk       a5
004b42: 4e75         rts        
004b44: 4e550000     link.w     a5, #$0
004b48: 48e78000     movem.l    d0, -(a7)
004b4c: 4feffff0     lea.l      -$10(a7), a7
004b50: 7000         moveq      #$0, d0
004b52: 4fef0010     lea.l      $10(a7), a7
004b56: 4e5d         unlk       a5
004b58: 4e75         rts        
004b5a: 4e550000     link.w     a5, #$0
004b5e: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
004b62: 7800         moveq      #$0, d4
004b64: 202f0004     move.l     $4(a7), d0
004b68: b0af001c     cmp.l      $1c(a7), d0
004b6c: 674a         beq.b      $4bb8
004b6e: 4aaf001c     tst.l      $1c(a7)
004b72: 670c         beq.b      $4b80
004b74: 206f001c     movea.l    $1c(a7), a0
004b78: 20680018     movea.l    $18(a0), a0
004b7c: 28280014     move.l     $14(a0), d4
004b80: 4aaf0004     tst.l      $4(a7)
004b84: 6604         bne.b      $4b8a
004b86: 2457         movea.l    (a7), a2
004b88: 6004         bra.b      $4b8e
004b8a: 246f0004     movea.l    $4(a7), a2
004b8e: 200a         move.l     a2, d0
004b90: 671c         beq.b      $4bae
004b92: b5ef001c     cmpa.l     $1c(a7), a2
004b96: 6716         beq.b      $4bae
004b98: 4aaa0018     tst.l      $18(a2)
004b9c: 6710         beq.b      $4bae
004b9e: 206a0018     movea.l    $18(a2), a0
004ba2: 98a80014     sub.l      $14(a0), d4
004ba6: 6006         bra.b      $4bae
004ba8: d8aa006a     add.l      $6a(a2), d4
004bac: 2452         movea.l    (a2), a2
004bae: 200a         move.l     a2, d0
004bb0: 6706         beq.b      $4bb8
004bb2: b5ef001c     cmpa.l     $1c(a7), a2
004bb6: 66f0         bne.b      $4ba8
004bb8: 2004         move.l     d4, d0
004bba: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
004bc0: 4e5d         unlk       a5
004bc2: 4e75         rts        
004bc4: 4e550000     link.w     a5, #$0
004bc8: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
004bcc: 7800         moveq      #$0, d4
004bce: 202f0004     move.l     $4(a7), d0
004bd2: b0af001c     cmp.l      $1c(a7), d0
004bd6: 6604         bne.b      $4bdc
004bd8: 7000         moveq      #$0, d0
004bda: 6036         bra.b      $4c12
004bdc: 4aaf0004     tst.l      $4(a7)
004be0: 6604         bne.b      $4be6
004be2: 2057         movea.l    (a7), a0
004be4: 6004         bra.b      $4bea
004be6: 206f0004     movea.l    $4(a7), a0
004bea: 2450         movea.l    (a0), a2
004bec: 6006         bra.b      $4bf4
004bee: d8aa006a     add.l      $6a(a2), d4
004bf2: 2452         movea.l    (a2), a2
004bf4: 200a         move.l     a2, d0
004bf6: 6706         beq.b      $4bfe
004bf8: b5ef001c     cmpa.l     $1c(a7), a2
004bfc: 66f0         bne.b      $4bee
004bfe: 4aaf001c     tst.l      $1c(a7)
004c02: 670c         beq.b      $4c10
004c04: 206f001c     movea.l    $1c(a7), a0
004c08: 20680018     movea.l    $18(a0), a0
004c0c: d8a80014     add.l      $14(a0), d4
004c10: 2004         move.l     d4, d0
004c12: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
004c18: 4e5d         unlk       a5
004c1a: 4e75         rts        
004c1c: 4e550000     link.w     a5, #$0
004c20: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
004c24: 7800         moveq      #$0, d4
004c26: 2a3cfff0bdc1 move.l     #$fff0bdc1, d5
004c2c: 600000b8     bra.w      $4ce6
004c30: 2f2e9878     move.l     -$6788(a6), -(a7)
004c34: 2f2e986c     move.l     -$6794(a6), -(a7)
004c38: 2f2e987c     move.l     -$6784(a6), -(a7)
004c3c: 2f2e9870     move.l     -$6790(a6), -(a7)
004c40: 2f2e9880     move.l     -$6780(a6), -(a7)
004c44: 2f2e9874     move.l     -$678c(a6), -(a7)
004c48: 2f2e9884     move.l     -$677c(a6), -(a7)
004c4c: 41fa06c4     lea.l      $5312(pc), a0
004c50: 2208         move.l     a0, d1
004c52: 202f0020     move.l     $20(a7), d0
004c56: 61004f00     bsr.w      $9b58
004c5a: 4fef001c     lea.l      $1c(a7), a7
004c5e: 60000132     bra.w      $4d92
004c62: 7000         moveq      #$0, d0
004c64: 102e9832     move.b     -$67ce(a6), d0
004c68: 60000070     bra.w      $4cda
004c6c: 7000         moveq      #$0, d0
004c6e: 102e9833     move.b     -$67cd(a6), d0
004c72: 6066         bra.b      $4cda
004c74: 2a2e984e     move.l     -$67b2(a6), d5
004c78: 60000118     bra.w      $4d92
004c7c: 7000         moveq      #$0, d0
004c7e: 102e9852     move.b     -$67ae(a6), d0
004c82: 6056         bra.b      $4cda
004c84: 7000         moveq      #$0, d0
004c86: 102e984c     move.b     -$67b4(a6), d0
004c8a: 604e         bra.b      $4cda
004c8c: 7000         moveq      #$0, d0
004c8e: 102e9853     move.b     -$67ad(a6), d0
004c92: 6046         bra.b      $4cda
004c94: 7000         moveq      #$0, d0
004c96: 102e9854     move.b     -$67ac(a6), d0
004c9a: 603e         bra.b      $4cda
004c9c: 2a2e9856     move.l     -$67aa(a6), d5
004ca0: 600000f0     bra.w      $4d92
004ca4: 2a2e985e     move.l     -$67a2(a6), d5
004ca8: 600000e8     bra.w      $4d92
004cac: 2a2e985a     move.l     -$67a6(a6), d5
004cb0: 600000e0     bra.w      $4d92
004cb4: 7000         moveq      #$0, d0
004cb6: 102e9862     move.b     -$679e(a6), d0
004cba: 601e         bra.b      $4cda
004cbc: 7000         moveq      #$0, d0
004cbe: 102e9863     move.b     -$679d(a6), d0
004cc2: 6016         bra.b      $4cda
004cc4: 7000         moveq      #$0, d0
004cc6: 102e988a     move.b     -$6776(a6), d0
004cca: 600e         bra.b      $4cda
004ccc: 7000         moveq      #$0, d0
004cce: 102e9888     move.b     -$6778(a6), d0
004cd2: 6006         bra.b      $4cda
004cd4: 7000         moveq      #$0, d0
004cd6: 102e9889     move.b     -$6777(a6), d0
004cda: 2a00         move.l     d0, d5
004cdc: 600000b4     bra.w      $4d92
004ce0: 7801         moveq      #$1, d4
004ce2: 600000ae     bra.w      $4d92
004ce6: 7000         moveq      #$0, d0
004ce8: 102f0003     move.b     $3(a7), d0
004cec: 0c400063     cmpi.w     #$63, d0
004cf0: 67aa         beq.b      $4c9c
004cf2: 6250         bhi.b      $4d44
004cf4: 0c000037     cmpi.b     #$37, d0
004cf8: 6700ff82     beq.w      $4c7c
004cfc: 6228         bhi.b      $4d26
004cfe: 0c000021     cmpi.b     #$21, d0
004d02: 6700ff2c     beq.w      $4c30
004d06: 6214         bhi.b      $4d1c
004d08: 0c000016     cmpi.b     #$16, d0
004d0c: 6700ff5e     beq.w      $4c6c
004d10: 62ce         bhi.b      $4ce0
004d12: 0c00000b     cmpi.b     #$b, d0
004d16: 6700ff4a     beq.w      $4c62
004d1a: 60c4         bra.b      $4ce0
004d1c: 0c00002c     cmpi.b     #$2c, d0
004d20: 6700ff52     beq.w      $4c74
004d24: 60ba         bra.b      $4ce0
004d26: 0c00004d     cmpi.b     #$4d, d0
004d2a: 6700ff60     beq.w      $4c8c
004d2e: 620a         bhi.b      $4d3a
004d30: 0c000042     cmpi.b     #$42, d0
004d34: 6700ff4e     beq.w      $4c84
004d38: 60a6         bra.b      $4ce0
004d3a: 0c000058     cmpi.b     #$58, d0
004d3e: 6700ff54     beq.w      $4c94
004d42: 609c         bra.b      $4ce0
004d44: 0c40006e     cmpi.w     #$6e, d0
004d48: 6700ff8a     beq.w      $4cd4
004d4c: 6222         bhi.b      $4d70
004d4e: 0c00006a     cmpi.b     #$6a, d0
004d52: 6700ff58     beq.w      $4cac
004d56: 620c         bhi.b      $4d64
004d58: 0c000064     cmpi.b     #$64, d0
004d5c: 6700ff6e     beq.w      $4ccc
004d60: 6000ff7e     bra.w      $4ce0
004d64: 0c00006b     cmpi.b     #$6b, d0
004d68: 6700ff3a     beq.w      $4ca4
004d6c: 6000ff72     bra.w      $4ce0
004d70: 0c400082     cmpi.w     #$82, d0
004d74: 6700ff46     beq.w      $4cbc
004d78: 620c         bhi.b      $4d86
004d7a: 0c000078     cmpi.b     #$78, d0
004d7e: 6700ff34     beq.w      $4cb4
004d82: 6000ff5c     bra.w      $4ce0
004d86: 0c40008c     cmpi.w     #$8c, d0
004d8a: 6700ff38     beq.w      $4cc4
004d8e: 6000ff50     bra.w      $4ce0
004d92: 0c85fff0bdc1 cmpi.l     #$fff0bdc1, d5
004d98: 6712         beq.b      $4dac
004d9a: 2f05         move.l     d5, -(a7)
004d9c: 41fa0589     lea.l      $5327(pc), a0
004da0: 2208         move.l     a0, d1
004da2: 202f0008     move.l     $8(a7), d0
004da6: 61004db0     bsr.w      $9b58
004daa: 588f         addq.l     #$4, a7
004dac: 1004         move.b     d4, d0
004dae: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
004db4: 4e5d         unlk       a5
004db6: 4e75         rts        
004db8: 4e550000     link.w     a5, #$0
004dbc: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
004dc0: 4fefffe2     lea.l      -$1e(a7), a7
004dc4: 7800         moveq      #$0, d4
004dc6: 600003b4     bra.w      $517c
004dca: 486f001d     pea.l      $1d(a7)
004dce: 41fa055a     lea.l      $532a(pc), a0
004dd2: 2208         move.l     a0, d1
004dd4: 202f0026     move.l     $26(a7), d0
004dd8: 61004dae     bsr.w      $9b88
004ddc: 588f         addq.l     #$4, a7
004dde: 6042         bra.b      $4e22
004de0: 41ef001d     lea.l      $1d(a7), a0
004de4: 2008         move.l     a0, d0
004de6: 61004f32     bsr.w      $9d1a
004dea: 1d409832     move.b     d0, -$67ce(a6)
004dee: 605e         bra.b      $4e4e
004df0: 7000         moveq      #$0, d0
004df2: 102e9832     move.b     -$67ce(a6), d0
004df6: 2f400018     move.l     d0, $18(a7)
004dfa: 7001         moveq      #$1, d0
004dfc: c1af0018     and.l      d0, $18(a7)
004e00: 08ef0001001b bset.b     #$1, $1b(a7)
004e06: 102f001b     move.b     $1b(a7), d0
004e0a: 1200         move.b     d0, d1
004e0c: 41ef001d     lea.l      $1d(a7), a0
004e10: 2008         move.l     a0, d0
004e12: 61004f06     bsr.w      $9d1a
004e16: d200         add.b      d0, d1
004e18: 1d419832     move.b     d1, -$67ce(a6)
004e1c: 6030         bra.b      $4e4e
004e1e: 7801         moveq      #$1, d4
004e20: 602c         bra.b      $4e4e
004e22: 41ef001d     lea.l      $1d(a7), a0
004e26: 2008         move.l     a0, d0
004e28: 61004ef0     bsr.w      $9d1a
004e2c: 0c8000000008 cmpi.l     #$8, d0
004e32: 62ea         bhi.b      $4e1e
004e34: 303b0206     move.w     $4e3c(pc, d0.w), d0
004e38: 4efb0002     jmp        $4e3c(pc, d0.w)
004e3c: ffa4         dc.w       $ffa4
004e3e: ffa4         dc.w       $ffa4
004e40: ffa4         dc.w       $ffa4
004e42: ffa4         dc.w       $ffa4
004e44: ffb4         dc.w       $ffb4
004e46: ffe2         dc.w       $ffe2
004e48: ffe2         dc.w       $ffe2
004e4a: ffe2         dc.w       $ffe2
004e4c: ffb4         dc.w       $ffb4
004e4e: 600003da     bra.w      $522a
004e52: 486f001d     pea.l      $1d(a7)
004e56: 41fa04d5     lea.l      $532d(pc), a0
004e5a: 2208         move.l     a0, d1
004e5c: 202f0026     move.l     $26(a7), d0
004e60: 61004d26     bsr.w      $9b88
004e64: 588f         addq.l     #$4, a7
004e66: 6018         bra.b      $4e80
004e68: 41ef001d     lea.l      $1d(a7), a0
004e6c: 2008         move.l     a0, d0
004e6e: 61004eaa     bsr.w      $9d1a
004e72: 1d409833     move.b     d0, -$67cd(a6)
004e76: 600003b2     bra.w      $522a
004e7a: 7801         moveq      #$1, d4
004e7c: 600003ac     bra.w      $522a
004e80: 41ef001d     lea.l      $1d(a7), a0
004e84: 2008         move.l     a0, d0
004e86: 61004e92     bsr.w      $9d1a
004e8a: 0c80000000ff cmpi.l     #$ff, d0
004e90: 62e8         bhi.b      $4e7a
004e92: 4a00         tst.b      d0
004e94: 67d2         beq.b      $4e68
004e96: 0c000001     cmpi.b     #$1, d0
004e9a: 67cc         beq.b      $4e68
004e9c: 0c000002     cmpi.b     #$2, d0
004ea0: 67c6         beq.b      $4e68
004ea2: 60d6         bra.b      $4e7a
004ea4: 4857         pea.l      (a7)
004ea6: 486f0008     pea.l      $8(a7)
004eaa: 486f0010     pea.l      $10(a7)
004eae: 486f0018     pea.l      $18(a7)
004eb2: 486f0020     pea.l      $20(a7)
004eb6: 486f0028     pea.l      $28(a7)
004eba: 486f0030     pea.l      $30(a7)
004ebe: 41fa0470     lea.l      $5330(pc), a0
004ec2: 2208         move.l     a0, d1
004ec4: 202f003e     move.l     $3e(a7), d0
004ec8: 61004cbe     bsr.w      $9b88
004ecc: 4fef001c     lea.l      $1c(a7), a7
004ed0: 4aaf0018     tst.l      $18(a7)
004ed4: 6d22         blt.b      $4ef8
004ed6: 4aaf0014     tst.l      $14(a7)
004eda: 6d1c         blt.b      $4ef8
004edc: 4aaf0010     tst.l      $10(a7)
004ee0: 6d16         blt.b      $4ef8
004ee2: 4aaf000c     tst.l      $c(a7)
004ee6: 6d10         blt.b      $4ef8
004ee8: 4aaf0008     tst.l      $8(a7)
004eec: 6d0a         blt.b      $4ef8
004eee: 4aaf0004     tst.l      $4(a7)
004ef2: 6d04         blt.b      $4ef8
004ef4: 4a97         tst.l      (a7)
004ef6: 6c06         bge.b      $4efe
004ef8: 7801         moveq      #$1, d4
004efa: 6000032e     bra.w      $522a
004efe: 2d6f00189884 move.l     $18(a7), -$677c(a6)
004f04: 2d6f00149874 move.l     $14(a7), -$678c(a6)
004f0a: 2d6f00109880 move.l     $10(a7), -$6780(a6)
004f10: 2d6f000c9870 move.l     $c(a7), -$6790(a6)
004f16: 2d6f0008987c move.l     $8(a7), -$6784(a6)
004f1c: 2d6f0004986c move.l     $4(a7), -$6794(a6)
004f22: 2d579878     move.l     (a7), -$6788(a6)
004f26: 60000302     bra.w      $522a
004f2a: 486f0014     pea.l      $14(a7)
004f2e: 41fa0415     lea.l      $5345(pc), a0
004f32: 2208         move.l     a0, d1
004f34: 202f0026     move.l     $26(a7), d0
004f38: 61004c4e     bsr.w      $9b88
004f3c: 588f         addq.l     #$4, a7
004f3e: 4aaf0014     tst.l      $14(a7)
004f42: 6c06         bge.b      $4f4a
004f44: 7801         moveq      #$1, d4
004f46: 600002e2     bra.w      $522a
004f4a: 2d6f0014984e move.l     $14(a7), -$67b2(a6)
004f50: 600002d8     bra.w      $522a
004f54: 486f001d     pea.l      $1d(a7)
004f58: 41fa03ee     lea.l      $5348(pc), a0
004f5c: 2208         move.l     a0, d1
004f5e: 202f0026     move.l     $26(a7), d0
004f62: 61004c24     bsr.w      $9b88
004f66: 588f         addq.l     #$4, a7
004f68: 6018         bra.b      $4f82
004f6a: 41ef001d     lea.l      $1d(a7), a0
004f6e: 2008         move.l     a0, d0
004f70: 61004da8     bsr.w      $9d1a
004f74: 1d409852     move.b     d0, -$67ae(a6)
004f78: 600002b0     bra.w      $522a
004f7c: 7801         moveq      #$1, d4
004f7e: 600002aa     bra.w      $522a
004f82: 41ef001d     lea.l      $1d(a7), a0
004f86: 2008         move.l     a0, d0
004f88: 61004d90     bsr.w      $9d1a
004f8c: 4a80         tst.l      d0
004f8e: 67da         beq.b      $4f6a
004f90: 0c8000000001 cmpi.l     #$1, d0
004f96: 67d2         beq.b      $4f6a
004f98: 60e2         bra.b      $4f7c
004f9a: 486f001d     pea.l      $1d(a7)
004f9e: 41fa03ab     lea.l      $534b(pc), a0
004fa2: 2208         move.l     a0, d1
004fa4: 202f0026     move.l     $26(a7), d0
004fa8: 61004bde     bsr.w      $9b88
004fac: 588f         addq.l     #$4, a7
004fae: 6018         bra.b      $4fc8
004fb0: 41ef001d     lea.l      $1d(a7), a0
004fb4: 2008         move.l     a0, d0
004fb6: 61004d62     bsr.w      $9d1a
004fba: 1d40984c     move.b     d0, -$67b4(a6)
004fbe: 6000026a     bra.w      $522a
004fc2: 7801         moveq      #$1, d4
004fc4: 60000264     bra.w      $522a
004fc8: 41ef001d     lea.l      $1d(a7), a0
004fcc: 2008         move.l     a0, d0
004fce: 61004d4a     bsr.w      $9d1a
004fd2: 4a80         tst.l      d0
004fd4: 67da         beq.b      $4fb0
004fd6: 0c8000000001 cmpi.l     #$1, d0
004fdc: 67d2         beq.b      $4fb0
004fde: 60e2         bra.b      $4fc2
004fe0: 486f001d     pea.l      $1d(a7)
004fe4: 41fa0368     lea.l      $534e(pc), a0
004fe8: 2208         move.l     a0, d1
004fea: 202f0026     move.l     $26(a7), d0
004fee: 61004b98     bsr.w      $9b88
004ff2: 588f         addq.l     #$4, a7
004ff4: 6018         bra.b      $500e
004ff6: 41ef001d     lea.l      $1d(a7), a0
004ffa: 2008         move.l     a0, d0
004ffc: 61004d1c     bsr.w      $9d1a
005000: 1d409853     move.b     d0, -$67ad(a6)
005004: 60000224     bra.w      $522a
005008: 7801         moveq      #$1, d4
00500a: 6000021e     bra.w      $522a
00500e: 41ef001d     lea.l      $1d(a7), a0
005012: 2008         move.l     a0, d0
005014: 61004d04     bsr.w      $9d1a
005018: 4a80         tst.l      d0
00501a: 67da         beq.b      $4ff6
00501c: 0c8000000001 cmpi.l     #$1, d0
005022: 67d2         beq.b      $4ff6
005024: 60e2         bra.b      $5008
005026: 486f001d     pea.l      $1d(a7)
00502a: 41fa0325     lea.l      $5351(pc), a0
00502e: 2208         move.l     a0, d1
005030: 202f0026     move.l     $26(a7), d0
005034: 61004b52     bsr.w      $9b88
005038: 588f         addq.l     #$4, a7
00503a: 6018         bra.b      $5054
00503c: 41ef001d     lea.l      $1d(a7), a0
005040: 2008         move.l     a0, d0
005042: 61004cd6     bsr.w      $9d1a
005046: 1d409854     move.b     d0, -$67ac(a6)
00504a: 600001de     bra.w      $522a
00504e: 7801         moveq      #$1, d4
005050: 600001d8     bra.w      $522a
005054: 41ef001d     lea.l      $1d(a7), a0
005058: 2008         move.l     a0, d0
00505a: 61004cbe     bsr.w      $9d1a
00505e: 4a80         tst.l      d0
005060: 67da         beq.b      $503c
005062: 0c8000000001 cmpi.l     #$1, d0
005068: 67d2         beq.b      $503c
00506a: 60e2         bra.b      $504e
00506c: 486f0014     pea.l      $14(a7)
005070: 41fa02e2     lea.l      $5354(pc), a0
005074: 2208         move.l     a0, d1
005076: 202f0026     move.l     $26(a7), d0
00507a: 61004b0c     bsr.w      $9b88
00507e: 588f         addq.l     #$4, a7
005080: 4aaf0014     tst.l      $14(a7)
005084: 6c06         bge.b      $508c
005086: 7801         moveq      #$1, d4
005088: 600001a0     bra.w      $522a
00508c: 2d6f00149856 move.l     $14(a7), -$67aa(a6)
005092: 60000196     bra.w      $522a
005096: 486e985e     pea.l      -$67a2(a6)
00509a: 41fa02bb     lea.l      $5357(pc), a0
00509e: 6008         bra.b      $50a8
0050a0: 486e985a     pea.l      -$67a6(a6)
0050a4: 41fa02b4     lea.l      $535a(pc), a0
0050a8: 2208         move.l     a0, d1
0050aa: 202f0026     move.l     $26(a7), d0
0050ae: 61004ad8     bsr.w      $9b88
0050b2: 588f         addq.l     #$4, a7
0050b4: 60000174     bra.w      $522a
0050b8: 486f0018     pea.l      $18(a7)
0050bc: 41fa029f     lea.l      $535d(pc), a0
0050c0: 2208         move.l     a0, d1
0050c2: 202f0026     move.l     $26(a7), d0
0050c6: 61004ac0     bsr.w      $9b88
0050ca: 588f         addq.l     #$4, a7
0050cc: 1d6f001b9888 move.b     $1b(a7), -$6778(a6)
0050d2: 60000156     bra.w      $522a
0050d6: 486f0018     pea.l      $18(a7)
0050da: 41fa0284     lea.l      $5360(pc), a0
0050de: 2208         move.l     a0, d1
0050e0: 202f0026     move.l     $26(a7), d0
0050e4: 61004aa2     bsr.w      $9b88
0050e8: 588f         addq.l     #$4, a7
0050ea: 1d6f001b9889 move.b     $1b(a7), -$6777(a6)
0050f0: 60000138     bra.w      $522a
0050f4: 486f0014     pea.l      $14(a7)
0050f8: 41fa0269     lea.l      $5363(pc), a0
0050fc: 2208         move.l     a0, d1
0050fe: 202f0026     move.l     $26(a7), d0
005102: 61004a84     bsr.w      $9b88
005106: 588f         addq.l     #$4, a7
005108: 4aaf0014     tst.l      $14(a7)
00510c: 6d08         blt.b      $5116
00510e: 7006         moveq      #$6, d0
005110: b0af0014     cmp.l      $14(a7), d0
005114: 6c06         bge.b      $511c
005116: 7801         moveq      #$1, d4
005118: 60000110     bra.w      $522a
00511c: 1d6f00179862 move.b     $17(a7), -$679e(a6)
005122: 60000106     bra.w      $522a
005126: 486f0014     pea.l      $14(a7)
00512a: 41fa023a     lea.l      $5366(pc), a0
00512e: 2208         move.l     a0, d1
005130: 202f0026     move.l     $26(a7), d0
005134: 61004a52     bsr.w      $9b88
005138: 588f         addq.l     #$4, a7
00513a: 4aaf0014     tst.l      $14(a7)
00513e: 6d08         blt.b      $5148
005140: 7006         moveq      #$6, d0
005142: b0af0014     cmp.l      $14(a7), d0
005146: 6c06         bge.b      $514e
005148: 7801         moveq      #$1, d4
00514a: 600000de     bra.w      $522a
00514e: 1d6f00179863 move.b     $17(a7), -$679d(a6)
005154: 600000d4     bra.w      $522a
005158: 486f0018     pea.l      $18(a7)
00515c: 41fa020b     lea.l      $5369(pc), a0
005160: 2208         move.l     a0, d1
005162: 202f0026     move.l     $26(a7), d0
005166: 61004a20     bsr.w      $9b88
00516a: 588f         addq.l     #$4, a7
00516c: 1d6f001b988a move.b     $1b(a7), -$6776(a6)
005172: 600000b6     bra.w      $522a
005176: 7801         moveq      #$1, d4
005178: 600000b0     bra.w      $522a
00517c: 7000         moveq      #$0, d0
00517e: 102f0021     move.b     $21(a7), d0
005182: 0c400063     cmpi.w     #$63, d0
005186: 6700fee4     beq.w      $506c
00518a: 6250         bhi.b      $51dc
00518c: 0c000037     cmpi.b     #$37, d0
005190: 6700fdc2     beq.w      $4f54
005194: 6228         bhi.b      $51be
005196: 0c000021     cmpi.b     #$21, d0
00519a: 6700fd08     beq.w      $4ea4
00519e: 6214         bhi.b      $51b4
0051a0: 0c000016     cmpi.b     #$16, d0
0051a4: 6700fcac     beq.w      $4e52
0051a8: 62cc         bhi.b      $5176
0051aa: 0c00000b     cmpi.b     #$b, d0
0051ae: 6700fc1a     beq.w      $4dca
0051b2: 60c2         bra.b      $5176
0051b4: 0c00002c     cmpi.b     #$2c, d0
0051b8: 6700fd70     beq.w      $4f2a
0051bc: 60b8         bra.b      $5176
0051be: 0c00004d     cmpi.b     #$4d, d0
0051c2: 6700fe1c     beq.w      $4fe0
0051c6: 620a         bhi.b      $51d2
0051c8: 0c000042     cmpi.b     #$42, d0
0051cc: 6700fdcc     beq.w      $4f9a
0051d0: 60a4         bra.b      $5176
0051d2: 0c000058     cmpi.b     #$58, d0
0051d6: 6700fe4e     beq.w      $5026
0051da: 609a         bra.b      $5176
0051dc: 0c40006e     cmpi.w     #$6e, d0
0051e0: 6700fef4     beq.w      $50d6
0051e4: 6222         bhi.b      $5208
0051e6: 0c00006a     cmpi.b     #$6a, d0
0051ea: 6700feb4     beq.w      $50a0
0051ee: 620c         bhi.b      $51fc
0051f0: 0c000064     cmpi.b     #$64, d0
0051f4: 6700fec2     beq.w      $50b8
0051f8: 6000ff7c     bra.w      $5176
0051fc: 0c00006b     cmpi.b     #$6b, d0
005200: 6700fe94     beq.w      $5096
005204: 6000ff70     bra.w      $5176
005208: 0c400082     cmpi.w     #$82, d0
00520c: 6700ff18     beq.w      $5126
005210: 620c         bhi.b      $521e
005212: 0c000078     cmpi.b     #$78, d0
005216: 6700fedc     beq.w      $50f4
00521a: 6000ff5a     bra.w      $5176
00521e: 0c40008c     cmpi.w     #$8c, d0
005222: 6700ff34     beq.w      $5158
005226: 6000ff4e     bra.w      $5176
00522a: 4a04         tst.b      d4
00522c: 6604         bne.b      $5232
00522e: 61000092     bsr.w      $52c2
005232: 1004         move.b     d4, d0
005234: 4fef001e     lea.l      $1e(a7), a7
005238: 4ced0110fff8 movem.l    -$8(a5), d4/a0
00523e: 4e5d         unlk       a5
005240: 4e75         rts        
005242: 4e550000     link.w     a5, #$0
005246: 48e7c8c0     movem.l    d0-d1/d4/a0-a1, -(a7)
00524a: 4fefff56     lea.l      -$aa(a7), a7
00524e: 7801         moveq      #$1, d4
005250: 41fa011a     lea.l      $536c(pc), a0
005254: 2208         move.l     a0, d1
005256: 41fa0117     lea.l      $536f(pc), a0
00525a: 2008         move.l     a0, d0
00525c: 610048c2     bsr.w      $9b20
005260: 2f4000a6     move.l     d0, $a6(a7)
005264: 4aaf00a6     tst.l      $a6(a7)
005268: 6748         beq.b      $52b2
00526a: 2f2f00a6     move.l     $a6(a7), -(a7)
00526e: 48780001     pea.l      $1.w
005272: 725a         moveq      #$5a, d1
005274: 41ef0008     lea.l      $8(a7), a0
005278: 2008         move.l     a0, d0
00527a: 610048bc     bsr.w      $9b38
00527e: 508f         addq.l     #$8, a7
005280: 4a80         tst.l      d0
005282: 6d26         blt.b      $52aa
005284: 0caf123456780032 cmpi.l     #$12345678, $32(a7)
00528c: 661c         bne.b      $52aa
00528e: 0caf013093840036 cmpi.l     #$1309384, $36(a7)
005296: 6612         bne.b      $52aa
005298: 41d7         lea.l      (a7), a0
00529a: 43ee9832     lea.l      -$67ce(a6), a1
00529e: 7015         moveq      #$15, d0
0052a0: 22d8         move.l     (a0)+, (a1)+
0052a2: 51c8fffc     dbra       d0, $52a0
0052a6: 32d8         move.w     (a0)+, (a1)+
0052a8: 7800         moveq      #$0, d4
0052aa: 202f00a6     move.l     $a6(a7), d0
0052ae: 610048c4     bsr.w      $9b74
0052b2: 1004         move.b     d4, d0
0052b4: 4fef00aa     lea.l      $aa(a7), a7
0052b8: 4ced0312fff0 movem.l    -$10(a5), d1/d4/a0-a1
0052be: 4e5d         unlk       a5
0052c0: 4e75         rts        
0052c2: 4e550000     link.w     a5, #$0
0052c6: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
0052ca: 598f         subq.l     #$4, a7
0052cc: 7801         moveq      #$1, d4
0052ce: 41fa00aa     lea.l      $537a(pc), a0
0052d2: 2208         move.l     a0, d1
0052d4: 41fa00a7     lea.l      $537d(pc), a0
0052d8: 2008         move.l     a0, d0
0052da: 61004844     bsr.w      $9b20
0052de: 2e80         move.l     d0, (a7)
0052e0: 4a97         tst.l      (a7)
0052e2: 6720         beq.b      $5304
0052e4: 2f17         move.l     (a7), -(a7)
0052e6: 48780001     pea.l      $1.w
0052ea: 725a         moveq      #$5a, d1
0052ec: 41ee9832     lea.l      -$67ce(a6), a0
0052f0: 2008         move.l     a0, d0
0052f2: 61004868     bsr.w      $9b5c
0052f6: 508f         addq.l     #$8, a7
0052f8: 4a80         tst.l      d0
0052fa: 6d02         blt.b      $52fe
0052fc: 7800         moveq      #$0, d4
0052fe: 2017         move.l     (a7), d0
005300: 61004872     bsr.w      $9b74
005304: 1004         move.b     d4, d0
005306: 588f         addq.l     #$4, a7
005308: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
00530e: 4e5d         unlk       a5
005310: 4e75         rts        
005312: 25642025     move.l     -(a4), $2025(a2)
005316: 6420         bcc.b      $5338
005318: 25642025     move.l     -(a4), $2025(a2)
00531c: 6420         bcc.b      $533e
00531e: 25642025     move.l     -(a4), $2025(a2)
005322: 6420         bcc.b      $5344
005324: 25640025     move.l     -(a4), $25(a2)
005328: 64002573     bcc.w      $789d
00532c: 00257300     ori.b      #$0, -(a5)
005330: 25642025     move.l     -(a4), $2025(a2)
005334: 6420         bcc.b      $5356
005336: 25642025     move.l     -(a4), $2025(a2)
00533a: 6420         bcc.b      $535c
00533c: 25642025     move.l     -(a4), $2025(a2)
005340: 6420         bcc.b      $5362
005342: 25640025     move.l     -(a4), $25(a2)
005346: 64002573     bcc.w      $78bb
00534a: 00257300     ori.b      #$0, -(a5)
00534e: 257300257300 move.l     $25(a3, d0.w), $7300(a2)
005354: 25640025     move.l     -(a4), $25(a2)
005358: 64002564     bcc.w      $78be
00535c: 00256400     ori.b      #$0, -(a5)
005360: 25640025     move.l     -(a4), $25(a2)
005364: 64002564     bcc.w      $78ca
005368: 00256400     ori.b      #$0, -(a5)
00536c: 722b         moveq      #$2b, d1
00536e: 002f6e76722f ori.b      #$76, $722f(a7)
005374: 6e76         bgt.b      $53ec
005376: 5f67         subq.w     #$7, -(a7)
005378: 6400772b     bcc.w      $caa5
00537c: 002f6e76722f ori.b      #$76, $722f(a7)
005382: 6e76         bgt.b      $53fa
005384: 5f67         subq.w     #$7, -(a7)
005386: 64004e55     bcc.w      $a1dd
00538a: 000048e7     ori.b      #$e7, d0
00538e: c000         and.b      d0, d0
005390: 558f         subq.l     #$2, a7
005392: 1f7c00010001 move.b     #$1, $1(a7)
005398: 202f0002     move.l     $2(a7), d0
00539c: 6100021c     bsr.w      $55ba
0053a0: 4a80         tst.l      d0
0053a2: 6c0e         bge.b      $53b2
0053a4: 7223         moveq      #$23, d1
0053a6: 202f0002     move.l     $2(a7), d0
0053aa: 6100026c     bsr.w      $5618
0053ae: 1f400001     move.b     d0, $1(a7)
0053b2: 102f0001     move.b     $1(a7), d0
0053b6: 548f         addq.l     #$2, a7
0053b8: 4ced0002fffc movem.l    -$4(a5), d1
0053be: 4e5d         unlk       a5
0053c0: 4e75         rts        
0053c2: 4e550000     link.w     a5, #$0
0053c6: 48e78800     movem.l    d0/d4, -(a7)
0053ca: 2017         move.l     (a7), d0
0053cc: 610001ec     bsr.w      $55ba
0053d0: 2800         move.l     d0, d4
0053d2: 70ff         moveq      #$ff, d0
0053d4: b084         cmp.l      d4, d0
0053d6: 6712         beq.b      $53ea
0053d8: 2017         move.l     (a7), d0
0053da: 6100030c     bsr.w      $56e8
0053de: 2004         move.l     d4, d0
0053e0: 61001d36     bsr.w      $7118
0053e4: 2017         move.l     (a7), d0
0053e6: 610047b8     bsr.w      $9ba0
0053ea: 4ced0010fffc movem.l    -$4(a5), d4
0053f0: 4e5d         unlk       a5
0053f2: 4e75         rts        
0053f4: 4e550000     link.w     a5, #$0
0053f8: 48e7cc00     movem.l    d0-d1/d4-d5, -(a7)
0053fc: 7a01         moveq      #$1, d5
0053fe: 2017         move.l     (a7), d0
005400: 610001b8     bsr.w      $55ba
005404: 2800         move.l     d0, d4
005406: 4a84         tst.l      d4
005408: 6d0e         blt.b      $5418
00540a: 222f0004     move.l     $4(a7), d1
00540e: 2004         move.l     d4, d0
005410: 61005236     bsr.w      $a648
005414: 4a80         tst.l      d0
005416: 6c02         bge.b      $541a
005418: 7a00         moveq      #$0, d5
00541a: 1005         move.b     d5, d0
00541c: 4ced0030fff8 movem.l    -$8(a5), d4-d5
005422: 4e5d         unlk       a5
005424: 4e75         rts        
005426: 4e550000     link.w     a5, #$0
00542a: 48e7cea0     movem.l    d0-d1/d4-d6/a0/a2, -(a7)
00542e: 4fefff54     lea.l      -$ac(a7), a7
005432: 2a3c000000ac move.l     #$ac, d5
005438: 95ca         suba.l     a2, a2
00543a: 202f00ac     move.l     $ac(a7), d0
00543e: 6100017a     bsr.w      $55ba
005442: 2800         move.l     d0, d4
005444: 4a84         tst.l      d4
005446: 6d00007a     blt.w      $54c2
00544a: 2f05         move.l     d5, -(a7)
00544c: 41ef0004     lea.l      $4(a7), a0
005450: 2208         move.l     a0, d1
005452: 2004         move.l     d4, d0
005454: 6100034a     bsr.w      $57a0
005458: 588f         addq.l     #$4, a7
00545a: 2c00         move.l     d0, d6
00545c: 70ff         moveq      #$ff, d0
00545e: b086         cmp.l      d6, d0
005460: 6760         beq.b      $54c2
005462: bc85         cmp.l      d5, d6
005464: 665c         bne.b      $54c2
005466: 4aaf00a8     tst.l      $a8(a7)
00546a: 6f3e         ble.b      $54aa
00546c: 202f00a8     move.l     $a8(a7), d0
005470: 6100479a     bsr.w      $9c0c
005474: 2440         movea.l    d0, a2
005476: 200a         move.l     a2, d0
005478: 6614         bne.b      $548e
00547a: 42a7         clr.l      -(a7)
00547c: 7205         moveq      #$5, d1
00547e: 203c00000099 move.l     #$99, d0
005484: 61003486     bsr.w      $890c
005488: 588f         addq.l     #$4, a7
00548a: 610034a6     bsr.w      $8932
00548e: 2f2f00a8     move.l     $a8(a7), -(a7)
005492: 220a         move.l     a2, d1
005494: 2004         move.l     d4, d0
005496: 61000308     bsr.w      $57a0
00549a: 588f         addq.l     #$4, a7
00549c: b0af00a8     cmp.l      $a8(a7), d0
0054a0: 6708         beq.b      $54aa
0054a2: 200a         move.l     a2, d0
0054a4: 61004772     bsr.w      $9c18
0054a8: 95ca         suba.l     a2, a2
0054aa: 7021         moveq      #$21, d0
0054ac: b0af0004     cmp.l      $4(a7), d0
0054b0: 6610         bne.b      $54c2
0054b2: 486f0058     pea.l      $58(a7)
0054b6: 7200         moveq      #$0, d1
0054b8: 7000         moveq      #$0, d0
0054ba: 6100007e     bsr.w      $553a
0054be: 588f         addq.l     #$4, a7
0054c0: 4a00         tst.b      d0
0054c2: 200a         move.l     a2, d0
0054c4: 4fef00ac     lea.l      $ac(a7), a7
0054c8: 4ced0572ffe8 movem.l    -$18(a5), d1/d4-d6/a0/a2
0054ce: 4e5d         unlk       a5
0054d0: 4e75         rts        
0054d2: 4e550000     link.w     a5, #$0
0054d6: 48e7ce00     movem.l    d0-d1/d4-d6, -(a7)
0054da: 7c01         moveq      #$1, d6
0054dc: 202f001c     move.l     $1c(a7), d0
0054e0: 610000d8     bsr.w      $55ba
0054e4: 2800         move.l     d0, d4
0054e6: 4a84         tst.l      d4
0054e8: 6c1a         bge.b      $5504
0054ea: 7203         moveq      #$3, d1
0054ec: 202f001c     move.l     $1c(a7), d0
0054f0: 61000190     bsr.w      $5682
0054f4: 202f001c     move.l     $1c(a7), d0
0054f8: 610000c0     bsr.w      $55ba
0054fc: 2800         move.l     d0, d4
0054fe: 4a84         tst.l      d4
005500: 6c02         bge.b      $5504
005502: 7c00         moveq      #$0, d6
005504: 4a06         tst.b      d6
005506: 6726         beq.b      $552e
005508: 48780014     pea.l      $14.w
00550c: 2f2f0008     move.l     $8(a7), -(a7)
005510: 222f0008     move.l     $8(a7), d1
005514: 2004         move.l     d4, d0
005516: 6100204e     bsr.w      $7566
00551a: 508f         addq.l     #$8, a7
00551c: 2a00         move.l     d0, d5
00551e: baaf0004     cmp.l      $4(a7), d5
005522: 6c0a         bge.b      $552e
005524: 202f001c     move.l     $1c(a7), d0
005528: 6100fe98     bsr.w      $53c2
00552c: 7c00         moveq      #$0, d6
00552e: 1006         move.b     d6, d0
005530: 4ced0070fff4 movem.l    -$c(a5), d4-d6
005536: 4e5d         unlk       a5
005538: 4e75         rts        
00553a: 4e550000     link.w     a5, #$0
00553e: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
005542: 203c000000ac move.l     #$ac, d0
005548: d0af0004     add.l      $4(a7), d0
00554c: 2800         move.l     d0, d4
00554e: 2004         move.l     d4, d0
005550: 610046ba     bsr.w      $9c0c
005554: 2440         movea.l    d0, a2
005556: 200a         move.l     a2, d0
005558: 6614         bne.b      $556e
00555a: 42a7         clr.l      -(a7)
00555c: 7205         moveq      #$5, d1
00555e: 203c00000099 move.l     #$99, d0
005564: 610033a6     bsr.w      $890c
005568: 588f         addq.l     #$4, a7
00556a: 610033c6     bsr.w      $8932
00556e: 2484         move.l     d4, (a2)
005570: 257c0000002c0004 move.l     #$2c, $4(a2)
005578: 222f0018     move.l     $18(a7), d1
00557c: 200a         move.l     a2, d0
00557e: 5080         addq.l     #$8, d0
005580: 61004748     bsr.w      $9cca
005584: 4aaf0004     tst.l      $4(a7)
005588: 6716         beq.b      $55a0
00558a: 2f2f0004     move.l     $4(a7), -(a7)
00558e: 222f0004     move.l     $4(a7), d1
005592: 203c000000ac move.l     #$ac, d0
005598: d08a         add.l      a2, d0
00559a: 61004b1e     bsr.w      $a0ba
00559e: 588f         addq.l     #$4, a7
0055a0: 256f000400a8 move.l     $4(a7), $a8(a2)
0055a6: 222f0018     move.l     $18(a7), d1
0055aa: 200a         move.l     a2, d0
0055ac: 6100017c     bsr.w      $572a
0055b0: 4ced0410fff8 movem.l    -$8(a5), d4/a2
0055b6: 4e5d         unlk       a5
0055b8: 4e75         rts        
0055ba: 4e550000     link.w     a5, #$0
0055be: 48e7c080     movem.l    d0-d1/a0, -(a7)
0055c2: 518f         subq.l     #$8, a7
0055c4: 70ff         moveq      #$ff, d0
0055c6: 2e80         move.l     d0, (a7)
0055c8: 4a2e988c     tst.b      -$6774(a6)
0055cc: 670a         beq.b      $55d8
0055ce: 42ae857e     clr.l      -$7a82(a6)
0055d2: 422e988c     clr.b      -$6774(a6)
0055d6: 6032         bra.b      $560a
0055d8: 2f6e857e0004 move.l     -$7a82(a6), $4(a7)
0055de: 6024         bra.b      $5604
0055e0: 222f0008     move.l     $8(a7), d1
0055e4: 202f0004     move.l     $4(a7), d0
0055e8: 5880         addq.l     #$4, d0
0055ea: 6100464c     bsr.w      $9c38
0055ee: 4a80         tst.l      d0
0055f0: 660a         bne.b      $55fc
0055f2: 206f0004     movea.l    $4(a7), a0
0055f6: 2ea80054     move.l     $54(a0), (a7)
0055fa: 600e         bra.b      $560a
0055fc: 206f0004     movea.l    $4(a7), a0
005600: 2f500004     move.l     (a0), $4(a7)
005604: 4aaf0004     tst.l      $4(a7)
005608: 66d6         bne.b      $55e0
00560a: 2017         move.l     (a7), d0
00560c: 508f         addq.l     #$8, a7
00560e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
005614: 4e5d         unlk       a5
005616: 4e75         rts        
005618: 4e550000     link.w     a5, #$0
00561c: 48e7c800     movem.l    d0-d1/d4, -(a7)
005620: 558f         subq.l     #$2, a7
005622: 1f7c00010001 move.b     #$1, $1(a7)
005628: 7203         moveq      #$3, d1
00562a: 202f0002     move.l     $2(a7), d0
00562e: 6100455c     bsr.w      $9b8c
005632: 4a80         tst.l      d0
005634: 6c34         bge.b      $566a
005636: 487804ac     pea.l      $4ac.w
00563a: 48780003     pea.l      $3.w
00563e: 222f000e     move.l     $e(a7), d1
005642: 202f000a     move.l     $a(a7), d0
005646: 610035f0     bsr.w      $8c38
00564a: 508f         addq.l     #$8, a7
00564c: 4a80         tst.l      d0
00564e: 6c1a         bge.b      $566a
005650: 7203         moveq      #$3, d1
005652: 202f0002     move.l     $2(a7), d0
005656: 612a         bsr.b      $5682
005658: 202f0002     move.l     $2(a7), d0
00565c: 6100ff5c     bsr.w      $55ba
005660: 2800         move.l     d0, d4
005662: 4a84         tst.l      d4
005664: 6c04         bge.b      $566a
005666: 422f0001     clr.b      $1(a7)
00566a: 7203         moveq      #$3, d1
00566c: 202f0002     move.l     $2(a7), d0
005670: 6110         bsr.b      $5682
005672: 102f0001     move.b     $1(a7), d0
005676: 548f         addq.l     #$2, a7
005678: 4ced0010fffc movem.l    -$4(a5), d4
00567e: 4e5d         unlk       a5
005680: 4e75         rts        
005682: 4e550000     link.w     a5, #$0
005686: 48e7c800     movem.l    d0-d1/d4, -(a7)
00568a: 222f0004     move.l     $4(a7), d1
00568e: 2017         move.l     (a7), d0
005690: 61003402     bsr.w      $8a94
005694: 2800         move.l     d0, d4
005696: 4a84         tst.l      d4
005698: 6d06         blt.b      $56a0
00569a: 2204         move.l     d4, d1
00569c: 2017         move.l     (a7), d0
00569e: 610a         bsr.b      $56aa
0056a0: 4ced0010fffc movem.l    -$4(a5), d4
0056a6: 4e5d         unlk       a5
0056a8: 4e75         rts        
0056aa: 4e550000     link.w     a5, #$0
0056ae: 48e7c020     movem.l    d0-d1/a2, -(a7)
0056b2: 7058         moveq      #$58, d0
0056b4: 61004556     bsr.w      $9c0c
0056b8: 2440         movea.l    d0, a2
0056ba: 200a         move.l     a2, d0
0056bc: 6720         beq.b      $56de
0056be: 4292         clr.l      (a2)
0056c0: 2217         move.l     (a7), d1
0056c2: 200a         move.l     a2, d0
0056c4: 5880         addq.l     #$4, d0
0056c6: 61004602     bsr.w      $9cca
0056ca: 256f00040054 move.l     $4(a7), $54(a2)
0056d0: 220a         move.l     a2, d1
0056d2: 202e857e     move.l     -$7a82(a6), d0
0056d6: 610000fc     bsr.w      $57d4
0056da: 2d40857e     move.l     d0, -$7a82(a6)
0056de: 4ced0400fffc movem.l    -$4(a5), a2
0056e4: 4e5d         unlk       a5
0056e6: 4e75         rts        
0056e8: 4e550000     link.w     a5, #$0
0056ec: 48e7c020     movem.l    d0-d1/a2, -(a7)
0056f0: 246e857e     movea.l    -$7a82(a6), a2
0056f4: 6026         bra.b      $571c
0056f6: 2217         move.l     (a7), d1
0056f8: 200a         move.l     a2, d0
0056fa: 5880         addq.l     #$4, d0
0056fc: 6100453a     bsr.w      $9c38
005700: 4a80         tst.l      d0
005702: 6616         bne.b      $571a
005704: 220a         move.l     a2, d1
005706: 202e857e     move.l     -$7a82(a6), d0
00570a: 61000156     bsr.w      $5862
00570e: 2d40857e     move.l     d0, -$7a82(a6)
005712: 200a         move.l     a2, d0
005714: 61004502     bsr.w      $9c18
005718: 6006         bra.b      $5720
00571a: 2452         movea.l    (a2), a2
00571c: 200a         move.l     a2, d0
00571e: 66d6         bne.b      $56f6
005720: 4ced0402fff8 movem.l    -$8(a5), d1/a2
005726: 4e5d         unlk       a5
005728: 4e75         rts        
00572a: 4e550000     link.w     a5, #$0
00572e: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
005732: 7c01         moveq      #$1, d6
005734: 202f0004     move.l     $4(a7), d0
005738: 6100fe80     bsr.w      $55ba
00573c: 2800         move.l     d0, d4
00573e: 4a84         tst.l      d4
005740: 6c20         bge.b      $5762
005742: 7203         moveq      #$3, d1
005744: 202f0004     move.l     $4(a7), d0
005748: 6100ff38     bsr.w      $5682
00574c: 202f0004     move.l     $4(a7), d0
005750: 6100fe68     bsr.w      $55ba
005754: 2800         move.l     d0, d4
005756: 4a84         tst.l      d4
005758: 6c08         bge.b      $5762
00575a: 2017         move.l     (a7), d0
00575c: 610044ba     bsr.w      $9c18
005760: 7c00         moveq      #$0, d6
005762: 4a06         tst.b      d6
005764: 672e         beq.b      $5794
005766: 48780014     pea.l      $14.w
00576a: 206f0004     movea.l    $4(a7), a0
00576e: 2f10         move.l     (a0), -(a7)
005770: 222f0008     move.l     $8(a7), d1
005774: 2004         move.l     d4, d0
005776: 61001dee     bsr.w      $7566
00577a: 508f         addq.l     #$8, a7
00577c: 2a00         move.l     d0, d5
00577e: 2057         movea.l    (a7), a0
005780: ba90         cmp.l      (a0), d5
005782: 6c0a         bge.b      $578e
005784: 202f0004     move.l     $4(a7), d0
005788: 6100fc38     bsr.w      $53c2
00578c: 7c00         moveq      #$0, d6
00578e: 2017         move.l     (a7), d0
005790: 61004486     bsr.w      $9c18
005794: 1006         move.b     d6, d0
005796: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
00579c: 4e5d         unlk       a5
00579e: 4e75         rts        
0057a0: 4e550000     link.w     a5, #$0
0057a4: 48e7c800     movem.l    d0-d1/d4, -(a7)
0057a8: 7800         moveq      #$0, d4
0057aa: 4aaf0014     tst.l      $14(a7)
0057ae: 6f18         ble.b      $57c8
0057b0: 48780014     pea.l      $14.w
0057b4: 2f2f0018     move.l     $18(a7), -(a7)
0057b8: 222f000c     move.l     $c(a7), d1
0057bc: 202f0008     move.l     $8(a7), d0
0057c0: 61001d10     bsr.w      $74d2
0057c4: 508f         addq.l     #$8, a7
0057c6: 2800         move.l     d0, d4
0057c8: 2004         move.l     d4, d0
0057ca: 4ced0010fffc movem.l    -$4(a5), d4
0057d0: 4e5d         unlk       a5
0057d2: 4e75         rts        
0057d4: 4e550000     link.w     a5, #$0
0057d8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0057dc: 206f0004     movea.l    $4(a7), a0
0057e0: 2097         move.l     (a7), (a0)
0057e2: 2eaf0004     move.l     $4(a7), (a7)
0057e6: 2017         move.l     (a7), d0
0057e8: 4ced0100fffc movem.l    -$4(a5), a0
0057ee: 4e5d         unlk       a5
0057f0: 4e75         rts        
0057f2: 4e550000     link.w     a5, #$0
0057f6: 48e7c020     movem.l    d0-d1/a2, -(a7)
0057fa: 2017         move.l     (a7), d0
0057fc: 6142         bsr.b      $5840
0057fe: 2440         movea.l    d0, a2
005800: 200a         move.l     a2, d0
005802: 6606         bne.b      $580a
005804: 2eaf0004     move.l     $4(a7), (a7)
005808: 6004         bra.b      $580e
00580a: 24af0004     move.l     $4(a7), (a2)
00580e: 2017         move.l     (a7), d0
005810: 4ced0400fffc movem.l    -$4(a5), a2
005816: 4e5d         unlk       a5
005818: 4e75         rts        
00581a: 4e550000     link.w     a5, #$0
00581e: 48e7c020     movem.l    d0-d1/a2, -(a7)
005822: 2457         movea.l    (a7), a2
005824: 600a         bra.b      $5830
005826: 202f0004     move.l     $4(a7), d0
00582a: b092         cmp.l      (a2), d0
00582c: 6706         beq.b      $5834
00582e: 2452         movea.l    (a2), a2
005830: 200a         move.l     a2, d0
005832: 66f2         bne.b      $5826
005834: 200a         move.l     a2, d0
005836: 4ced0400fffc movem.l    -$4(a5), a2
00583c: 4e5d         unlk       a5
00583e: 4e75         rts        
005840: 4e550000     link.w     a5, #$0
005844: 48e78020     movem.l    d0/a2, -(a7)
005848: 2457         movea.l    (a7), a2
00584a: 6002         bra.b      $584e
00584c: 2452         movea.l    (a2), a2
00584e: 200a         move.l     a2, d0
005850: 6704         beq.b      $5856
005852: 4a92         tst.l      (a2)
005854: 66f6         bne.b      $584c
005856: 200a         move.l     a2, d0
005858: 4ced0400fffc movem.l    -$4(a5), a2
00585e: 4e5d         unlk       a5
005860: 4e75         rts        
005862: 4e550000     link.w     a5, #$0
005866: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00586a: 222f0004     move.l     $4(a7), d1
00586e: 2017         move.l     (a7), d0
005870: 61a8         bsr.b      $581a
005872: 2440         movea.l    d0, a2
005874: 2657         movea.l    (a7), a3
005876: 200a         move.l     a2, d0
005878: 6608         bne.b      $5882
00587a: 206f0004     movea.l    $4(a7), a0
00587e: 2650         movea.l    (a0), a3
005880: 6006         bra.b      $5888
005882: 206f0004     movea.l    $4(a7), a0
005886: 2490         move.l     (a0), (a2)
005888: 206f0004     movea.l    $4(a7), a0
00588c: 4290         clr.l      (a0)
00588e: 200b         move.l     a3, d0
005890: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
005896: 4e5d         unlk       a5
005898: 4e75         rts        
00589a: 4e550000     link.w     a5, #$0
00589e: 48e78020     movem.l    d0/a2, -(a7)
0058a2: 598f         subq.l     #$4, a7
0058a4: 246f0004     movea.l    $4(a7), a2
0058a8: 4297         clr.l      (a7)
0058aa: 6004         bra.b      $58b0
0058ac: 5297         addq.l     #$1, (a7)
0058ae: 2452         movea.l    (a2), a2
0058b0: 200a         move.l     a2, d0
0058b2: 66f8         bne.b      $58ac
0058b4: 2017         move.l     (a7), d0
0058b6: 588f         addq.l     #$4, a7
0058b8: 4ced0400fffc movem.l    -$4(a5), a2
0058be: 4e5d         unlk       a5
0058c0: 4e75         rts        
0058c2: 4e550000     link.w     a5, #$0
0058c6: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
0058ca: 95ca         suba.l     a2, a2
0058cc: 2657         movea.l    (a7), a3
0058ce: 6010         bra.b      $58e0
0058d0: 284b         movea.l    a3, a4
0058d2: 2653         movea.l    (a3), a3
0058d4: 4294         clr.l      (a4)
0058d6: 220c         move.l     a4, d1
0058d8: 200a         move.l     a2, d0
0058da: 6100fef8     bsr.w      $57d4
0058de: 2440         movea.l    d0, a2
0058e0: 200b         move.l     a3, d0
0058e2: 66ec         bne.b      $58d0
0058e4: 200a         move.l     a2, d0
0058e6: 4ced1c02fff0 movem.l    -$10(a5), d1/a2-a4
0058ec: 4e5d         unlk       a5
0058ee: 4e75         rts        
0058f0: 4e550000     link.w     a5, #$0
0058f4: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
0058f8: 598f         subq.l     #$4, a7
0058fa: 600000d4     bra.w      $59d0
0058fe: 4857         pea.l      (a7)
005900: 222f0024     move.l     $24(a7), d1
005904: 7014         moveq      #$14, d0
005906: d0af0008     add.l      $8(a7), d0
00590a: 610028b0     bsr.w      $81bc
00590e: 588f         addq.l     #$4, a7
005910: 4a80         tst.l      d0
005912: 670000a0     beq.w      $59b4
005916: 222f0028     move.l     $28(a7), d1
00591a: 202f0024     move.l     $24(a7), d0
00591e: 61002766     bsr.w      $8086
005922: 4a80         tst.l      d0
005924: 6610         bne.b      $5936
005926: 2217         move.l     (a7), d1
005928: 206f0020     movea.l    $20(a7), a0
00592c: 2010         move.l     (a0), d0
00592e: 610028f2     bsr.w      $8222
005932: 60000080     bra.w      $59b4
005936: 206f0028     movea.l    $28(a7), a0
00593a: 2f10         move.l     (a0), -(a7)
00593c: 222f0028     move.l     $28(a7), d1
005940: 206f0024     movea.l    $24(a7), a0
005944: 2010         move.l     (a0), d0
005946: 6100010c     bsr.w      $5a54
00594a: 588f         addq.l     #$4, a7
00594c: 4a00         tst.b      d0
00594e: 6600008c     bne.w      $59dc
005952: 2217         move.l     (a7), d1
005954: 206f0020     movea.l    $20(a7), a0
005958: 2010         move.l     (a0), d0
00595a: 610028c6     bsr.w      $8222
00595e: 222f0024     move.l     $24(a7), d1
005962: 206f0028     movea.l    $28(a7), a0
005966: 2010         move.l     (a0), d0
005968: 610027d4     bsr.w      $813e
00596c: 6046         bra.b      $59b4
00596e: 2f2f0028     move.l     $28(a7), -(a7)
005972: 222f0028     move.l     $28(a7), d1
005976: 202f0024     move.l     $24(a7), d0
00597a: 610001b2     bsr.w      $5b2e
00597e: 588f         addq.l     #$4, a7
005980: 4a00         tst.b      d0
005982: 6730         beq.b      $59b4
005984: 41d7         lea.l      (a7), a0
005986: 2208         move.l     a0, d1
005988: 206f0020     movea.l    $20(a7), a0
00598c: 2010         move.l     (a0), d0
00598e: 6100286a     bsr.w      $81fa
005992: 2800         move.l     d0, d4
005994: 4a84         tst.l      d4
005996: 671c         beq.b      $59b4
005998: 222f0028     move.l     $28(a7), d1
00599c: 202f0024     move.l     $24(a7), d0
0059a0: 61002772     bsr.w      $8114
0059a4: 4a80         tst.l      d0
0059a6: 6634         bne.b      $59dc
0059a8: 2217         move.l     (a7), d1
0059aa: 206f0020     movea.l    $20(a7), a0
0059ae: 2010         move.l     (a0), d0
0059b0: 6100283a     bsr.w      $81ec
0059b4: 7000         moveq      #$0, d0
0059b6: 6026         bra.b      $59de
0059b8: 202f001c     move.l     $1c(a7), d0
0059bc: 0c800000000b cmpi.l     #$b, d0
0059c2: 6700ff3a     beq.w      $58fe
0059c6: 0c800000000c cmpi.l     #$c, d0
0059cc: 67a0         beq.b      $596e
0059ce: 600c         bra.b      $59dc
0059d0: 202f0008     move.l     $8(a7), d0
0059d4: 0c8000000002 cmpi.l     #$2, d0
0059da: 67dc         beq.b      $59b8
0059dc: 2017         move.l     (a7), d0
0059de: 588f         addq.l     #$4, a7
0059e0: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0059e6: 4e5d         unlk       a5
0059e8: 4e75         rts        
0059ea: 4e550000     link.w     a5, #$0
0059ee: 48e7c800     movem.l    d0-d1/d4, -(a7)
0059f2: 604a         bra.b      $5a3e
0059f4: 222f001c     move.l     $1c(a7), d1
0059f8: 202f0020     move.l     $20(a7), d0
0059fc: 61002740     bsr.w      $813e
005a00: 2217         move.l     (a7), d1
005a02: 202f0018     move.l     $18(a7), d0
005a06: 6100281a     bsr.w      $8222
005a0a: 6012         bra.b      $5a1e
005a0c: 202f0020     move.l     $20(a7), d0
005a10: 610026de     bsr.w      $80f0
005a14: 2217         move.l     (a7), d1
005a16: 202f0018     move.l     $18(a7), d0
005a1a: 610027d0     bsr.w      $81ec
005a1e: 2800         move.l     d0, d4
005a20: 7001         moveq      #$1, d0
005a22: b084         cmp.l      d4, d0
005a24: 6724         beq.b      $5a4a
005a26: 6022         bra.b      $5a4a
005a28: 202f0014     move.l     $14(a7), d0
005a2c: 0c800000000b cmpi.l     #$b, d0
005a32: 67c0         beq.b      $59f4
005a34: 0c800000000c cmpi.l     #$c, d0
005a3a: 67d0         beq.b      $5a0c
005a3c: 600c         bra.b      $5a4a
005a3e: 202f0004     move.l     $4(a7), d0
005a42: 0c8000000002 cmpi.l     #$2, d0
005a48: 67de         beq.b      $5a28
005a4a: 4ced0010fffc movem.l    -$4(a5), d4
005a50: 4e5d         unlk       a5
005a52: 4e75         rts        
005a54: 4e550000     link.w     a5, #$0
005a58: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
005a5c: 4fefffd4     lea.l      -$2c(a7), a7
005a60: 7203         moveq      #$3, d1
005a62: 41fa01aa     lea.l      $5c0e(pc), a0
005a66: 2008         move.l     a0, d0
005a68: 61003044     bsr.w      $8aae
005a6c: 2800         move.l     d0, d4
005a6e: 6d00009e     blt.w      $5b0e
005a72: 7203         moveq      #$3, d1
005a74: 41fa01ab     lea.l      $5c21(pc), a0
005a78: 2008         move.l     a0, d0
005a7a: 61003032     bsr.w      $8aae
005a7e: 2a00         move.l     d0, d5
005a80: 6d00008c     blt.w      $5b0e
005a84: 7c00         moveq      #$0, d6
005a86: 7202         moveq      #$2, d1
005a88: 41fa01aa     lea.l      $5c34(pc), a0
005a8c: 2008         move.l     a0, d0
005a8e: 61003004     bsr.w      $8a94
005a92: 2800         move.l     d0, d4
005a94: 6c0c         bge.b      $5aa2
005a96: 2006         move.l     d6, d0
005a98: 5286         addq.l     #$1, d6
005a9a: 0c80000005dc cmpi.l     #$5dc, d0
005aa0: 6de4         blt.b      $5a86
005aa2: 4a84         tst.l      d4
005aa4: 6d68         blt.b      $5b0e
005aa6: 7c00         moveq      #$0, d6
005aa8: 7201         moveq      #$1, d1
005aaa: 41fa019b     lea.l      $5c47(pc), a0
005aae: 2008         move.l     a0, d0
005ab0: 61002fe2     bsr.w      $8a94
005ab4: 2a00         move.l     d0, d5
005ab6: 6c0c         bge.b      $5ac4
005ab8: 2006         move.l     d6, d0
005aba: 5286         addq.l     #$1, d6
005abc: 0c80000005dc cmpi.l     #$5dc, d0
005ac2: 6de4         blt.b      $5aa8
005ac4: 4a85         tst.l      d5
005ac6: 6d46         blt.b      $5b0e
005ac8: 2eaf002c     move.l     $2c(a7), (a7)
005acc: 222f0030     move.l     $30(a7), d1
005ad0: 41ef0004     lea.l      $4(a7), a0
005ad4: 2008         move.l     a0, d0
005ad6: 610041f2     bsr.w      $9cca
005ada: 2f6f004c0024 move.l     $4c(a7), $24(a7)
005ae0: 48780028     pea.l      $28.w
005ae4: 41ef0004     lea.l      $4(a7), a0
005ae8: 2208         move.l     a0, d1
005aea: 2004         move.l     d4, d0
005aec: 610040c6     bsr.w      $9bb4
005af0: 588f         addq.l     #$4, a7
005af2: 4a80         tst.l      d0
005af4: 6d18         blt.b      $5b0e
005af6: 48780004     pea.l      $4.w
005afa: 41ef002c     lea.l      $2c(a7), a0
005afe: 2208         move.l     a0, d1
005b00: 2005         move.l     d5, d0
005b02: 610040a8     bsr.w      $9bac
005b06: 588f         addq.l     #$4, a7
005b08: 7204         moveq      #$4, d1
005b0a: b280         cmp.l      d0, d1
005b0c: 6704         beq.b      $5b12
005b0e: 7000         moveq      #$0, d0
005b10: 600e         bra.b      $5b20
005b12: 2004         move.l     d4, d0
005b14: 610040b2     bsr.w      $9bc8
005b18: 2005         move.l     d5, d0
005b1a: 610040ac     bsr.w      $9bc8
005b1e: 7001         moveq      #$1, d0
005b20: 4fef002c     lea.l      $2c(a7), a7
005b24: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
005b2a: 4e5d         unlk       a5
005b2c: 4e75         rts        
005b2e: 4e550000     link.w     a5, #$0
005b32: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
005b36: 4fefffd4     lea.l      -$2c(a7), a7
005b3a: 7c00         moveq      #$0, d6
005b3c: 7201         moveq      #$1, d1
005b3e: 41fa011a     lea.l      $5c5a(pc), a0
005b42: 2008         move.l     a0, d0
005b44: 61002f4e     bsr.w      $8a94
005b48: 2800         move.l     d0, d4
005b4a: 6c0c         bge.b      $5b58
005b4c: 2006         move.l     d6, d0
005b4e: 5286         addq.l     #$1, d6
005b50: 0c80000005dc cmpi.l     #$5dc, d0
005b56: 6de4         blt.b      $5b3c
005b58: 4a84         tst.l      d4
005b5a: 6d00006e     blt.w      $5bca
005b5e: 7c00         moveq      #$0, d6
005b60: 7202         moveq      #$2, d1
005b62: 41fa0109     lea.l      $5c6d(pc), a0
005b66: 2008         move.l     a0, d0
005b68: 61002f2a     bsr.w      $8a94
005b6c: 2a00         move.l     d0, d5
005b6e: 6c0c         bge.b      $5b7c
005b70: 2006         move.l     d6, d0
005b72: 5286         addq.l     #$1, d6
005b74: 0c80000005dc cmpi.l     #$5dc, d0
005b7a: 6de4         blt.b      $5b60
005b7c: 4a85         tst.l      d5
005b7e: 6d4a         blt.b      $5bca
005b80: 48780028     pea.l      $28.w
005b84: 41ef0004     lea.l      $4(a7), a0
005b88: 2208         move.l     a0, d1
005b8a: 2004         move.l     d4, d0
005b8c: 6100401e     bsr.w      $9bac
005b90: 588f         addq.l     #$4, a7
005b92: 7228         moveq      #$28, d1
005b94: b280         cmp.l      d0, d1
005b96: 6632         bne.b      $5bca
005b98: 206f002c     movea.l    $2c(a7), a0
005b9c: 2097         move.l     (a7), (a0)
005b9e: 41ef0004     lea.l      $4(a7), a0
005ba2: 2208         move.l     a0, d1
005ba4: 202f0030     move.l     $30(a7), d0
005ba8: 61004120     bsr.w      $9cca
005bac: 206f004c     movea.l    $4c(a7), a0
005bb0: 20af0024     move.l     $24(a7), (a0)
005bb4: 48780004     pea.l      $4.w
005bb8: 41ef002c     lea.l      $2c(a7), a0
005bbc: 2208         move.l     a0, d1
005bbe: 2005         move.l     d5, d0
005bc0: 61003ff2     bsr.w      $9bb4
005bc4: 588f         addq.l     #$4, a7
005bc6: 4a80         tst.l      d0
005bc8: 6c04         bge.b      $5bce
005bca: 7000         moveq      #$0, d0
005bcc: 600e         bra.b      $5bdc
005bce: 2004         move.l     d4, d0
005bd0: 61003ff6     bsr.w      $9bc8
005bd4: 2005         move.l     d5, d0
005bd6: 61003ff0     bsr.w      $9bc8
005bda: 7001         moveq      #$1, d0
005bdc: 4fef002c     lea.l      $2c(a7), a7
005be0: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
005be6: 4e5d         unlk       a5
005be8: 4e75         rts        
005bea: 4e550000     link.w     a5, #$0
005bee: 48e78000     movem.l    d0, -(a7)
005bf2: 2017         move.l     (a7), d0
005bf4: 61002570     bsr.w      $8166
005bf8: 4e5d         unlk       a5
005bfa: 4e75         rts        
005bfc: 4e550000     link.w     a5, #$0
005c00: 48e78000     movem.l    d0, -(a7)
005c04: 2017         move.l     (a7), d0
005c06: 6100258e     bsr.w      $8196
005c0a: 4e5d         unlk       a5
005c0c: 4e75         rts        
005c0e: 2f706970652f6c6f635f move.l     $652f6c6f(a0, invalid.w), $635f(a7)
005c18: 6461         bcc.b      $5c7b
005c1a: 745f         moveq      #$5f, d2
005c1c: 7069         moveq      #$69, d0
005c1e: 7065         moveq      #$65, d0
005c20: 002f70697065 ori.b      #$69, $7065(a7)
005c26: 2f6c6f635f61 move.l     $6f63(a4), $5f61(a7)
005c2c: 636b         bls.b      $5c99
005c2e: 5f70697065002f70 subq.w     #$7, $65002f70(a0, invalid.w)
005c36: 6970         bvs.b      $5ca8
005c38: 652f         bcs.b      $5c69
005c3a: 6c6f         bge.b      $5cab
005c3c: 635f         bls.b      $5c9d
005c3e: 6461         bcc.b      $5ca1
005c40: 745f         moveq      #$5f, d2
005c42: 7069         moveq      #$69, d0
005c44: 7065         moveq      #$65, d0
005c46: 002f70697065 ori.b      #$69, $7065(a7)
005c4c: 2f6c6f635f61 move.l     $6f63(a4), $5f61(a7)
005c52: 636b         bls.b      $5cbf
005c54: 5f70697065002f70 subq.w     #$7, $65002f70(a0, invalid.w)
005c5c: 6970         bvs.b      $5cce
005c5e: 652f         bcs.b      $5c8f
005c60: 6c6f         bge.b      $5cd1
005c62: 635f         bls.b      $5cc3
005c64: 6461         bcc.b      $5cc7
005c66: 745f         moveq      #$5f, d2
005c68: 7069         moveq      #$69, d0
005c6a: 7065         moveq      #$65, d0
005c6c: 002f70697065 ori.b      #$69, $7065(a7)
005c72: 2f6c6f635f61 move.l     $6f63(a4), $5f61(a7)
005c78: 636b         bls.b      $5ce5
005c7a: 5f70697065004e55 subq.w     #$7, $65004e55(a0, invalid.w)
005c82: 000048e7     ori.b      #$e7, d0
005c86: 8080         or.l       d0, d0
005c88: 41fa0992     lea.l      $661c(pc), a0
005c8c: 2008         move.l     a0, d0
005c8e: 6100f732     bsr.w      $53c2
005c92: 4ced0100fffc movem.l    -$4(a5), a0
005c98: 4e5d         unlk       a5
005c9a: 4e75         rts        
005c9c: 4e550000     link.w     a5, #$0
005ca0: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
005ca4: 598f         subq.l     #$4, a7
005ca6: 7801         moveq      #$1, d4
005ca8: 2eaf0004     move.l     $4(a7), (a7)
005cac: 41fa098f     lea.l      $663d(pc), a0
005cb0: 2008         move.l     a0, d0
005cb2: 6100f6d4     bsr.w      $5388
005cb6: 0c000001     cmpi.b     #$1, d0
005cba: 6634         bne.b      $5cf0
005cbc: 487a09a0     pea.l      $665e(pc)
005cc0: 7204         moveq      #$4, d1
005cc2: 41ef0004     lea.l      $4(a7), a0
005cc6: 2008         move.l     a0, d0
005cc8: 6100f870     bsr.w      $553a
005ccc: 588f         addq.l     #$4, a7
005cce: 0c000001     cmpi.b     #$1, d0
005cd2: 661c         bne.b      $5cf0
005cd4: 41fa09af     lea.l      $6685(pc), a0
005cd8: 2008         move.l     a0, d0
005cda: 6100f74a     bsr.w      $5426
005cde: 2440         movea.l    d0, a2
005ce0: 4a80         tst.l      d0
005ce2: 670c         beq.b      $5cf0
005ce4: 4a12         tst.b      (a2)
005ce6: 6602         bne.b      $5cea
005ce8: 7800         moveq      #$0, d4
005cea: 200a         move.l     a2, d0
005cec: 61003f2a     bsr.w      $9c18
005cf0: 1004         move.b     d4, d0
005cf2: 588f         addq.l     #$4, a7
005cf4: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
005cfa: 4e5d         unlk       a5
005cfc: 4e75         rts        
005cfe: 4e550000     link.w     a5, #$0
005d02: 48e78000     movem.l    d0, -(a7)
005d06: 4a97         tst.l      (a7)
005d08: 6604         bne.b      $5d0e
005d0a: 7001         moveq      #$1, d0
005d0c: 602e         bra.b      $5d3c
005d0e: 422e8582     clr.b      -$7a7e(a6)
005d12: 2d7cac6a805b9892 move.l     #$ac6a805b, -$676e(a6)
005d1a: 2d7c381723a2988e move.l     #$381723a2, -$6772(a6)
005d22: 610007b2     bsr.w      $64d6
005d26: 2017         move.l     (a7), d0
005d28: 6116         bsr.b      $5d40
005d2a: 2017         move.l     (a7), d0
005d2c: 6134         bsr.b      $5d62
005d2e: 2017         move.l     (a7), d0
005d30: 61000090     bsr.w      $5dc2
005d34: 610007b0     bsr.w      $64e6
005d38: 102e8582     move.b     -$7a7e(a6), d0
005d3c: 4e5d         unlk       a5
005d3e: 4e75         rts        
005d40: 4e550000     link.w     a5, #$0
005d44: 48e7c000     movem.l    d0-d1, -(a7)
005d48: 7201         moveq      #$1, d1
005d4a: 7011         moveq      #$11, d0
005d4c: 610006e0     bsr.w      $642e
005d50: 7201         moveq      #$1, d1
005d52: 2017         move.l     (a7), d0
005d54: 6100074e     bsr.w      $64a4
005d58: 4ced0002fffc movem.l    -$4(a5), d1
005d5e: 4e5d         unlk       a5
005d60: 4e75         rts        
005d62: 4e550000     link.w     a5, #$0
005d66: 48e7c000     movem.l    d0-d1, -(a7)
005d6a: 7201         moveq      #$1, d1
005d6c: 7012         moveq      #$12, d0
005d6e: 610006be     bsr.w      $642e
005d72: 7201         moveq      #$1, d1
005d74: 2017         move.l     (a7), d0
005d76: 5280         addq.l     #$1, d0
005d78: 6100072a     bsr.w      $64a4
005d7c: 4ced0002fffc movem.l    -$4(a5), d1
005d82: 4e5d         unlk       a5
005d84: 4e75         rts        
005d86: 4e550000     link.w     a5, #$0
005d8a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
005d8e: 0c2f00010007 cmpi.b     #$1, $7(a7)
005d94: 661c         bne.b      $5db2
005d96: 2057         movea.l    (a7), a0
005d98: 24680008     movea.l    $8(a0), a2
005d9c: 6010         bra.b      $5dae
005d9e: 0c2a00010031 cmpi.b     #$1, $31(a2)
005da4: 6606         bne.b      $5dac
005da6: 200a         move.l     a2, d0
005da8: 6100027c     bsr.w      $6026
005dac: 2452         movea.l    (a2), a2
005dae: b5d7         cmpa.l     (a7), a2
005db0: 66ec         bne.b      $5d9e
005db2: 2017         move.l     (a7), d0
005db4: 61000270     bsr.w      $6026
005db8: 4ced0500fff8 movem.l    -$8(a5), a0/a2
005dbe: 4e5d         unlk       a5
005dc0: 4e75         rts        
005dc2: 4e550000     link.w     a5, #$0
005dc6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005dca: 422e8988     clr.b      -$7678(a6)
005dce: 2057         movea.l    (a7), a0
005dd0: 4aa80004     tst.l      $4(a0)
005dd4: 6f4c         ble.b      $5e22
005dd6: 2057         movea.l    (a7), a0
005dd8: 7000         moveq      #$0, d0
005dda: 10280002     move.b     $2(a0), d0
005dde: 2200         move.l     d0, d1
005de0: 2057         movea.l    (a7), a0
005de2: 20280008     move.l     $8(a0), d0
005de6: 619e         bsr.b      $5d86
005de8: 2057         movea.l    (a7), a0
005dea: 4aa8000c     tst.l      $c(a0)
005dee: 6732         beq.b      $5e22
005df0: 2057         movea.l    (a7), a0
005df2: 2068000c     movea.l    $c(a0), a0
005df6: 2257         movea.l    (a7), a1
005df8: 20290008     move.l     $8(a1), d0
005dfc: b0a80008     cmp.l      $8(a0), d0
005e00: 660c         bne.b      $5e0e
005e02: 2057         movea.l    (a7), a0
005e04: 2028000c     move.l     $c(a0), d0
005e08: 6100021c     bsr.w      $6026
005e0c: 6014         bra.b      $5e22
005e0e: 2057         movea.l    (a7), a0
005e10: 7000         moveq      #$0, d0
005e12: 10280002     move.b     $2(a0), d0
005e16: 2200         move.l     d0, d1
005e18: 2057         movea.l    (a7), a0
005e1a: 2028000c     move.l     $c(a0), d0
005e1e: 6100ff66     bsr.w      $5d86
005e22: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
005e28: 4e5d         unlk       a5
005e2a: 4e75         rts        
005e2c: 4e550000     link.w     a5, #$0
005e30: 48e7fcb0     movem.l    d0-d5/a0/a2-a3, -(a7)
005e34: 2057         movea.l    (a7), a0
005e36: 26680018     movea.l    $18(a0), a3
005e3a: 200b         move.l     a3, d0
005e3c: 6606         bne.b      $5e44
005e3e: 7000         moveq      #$0, d0
005e40: 600001da     bra.w      $601c
005e44: 7034         moveq      #$34, d0
005e46: d08b         add.l      a3, d0
005e48: 2200         move.l     d0, d1
005e4a: 7044         moveq      #$44, d0
005e4c: d08b         add.l      a3, d0
005e4e: 206e8c70     movea.l    -$7390(a6), a0
005e52: 4e90         jsr        (a0)
005e54: 4a00         tst.b      d0
005e56: 6706         beq.b      $5e5e
005e58: 382b0028     move.w     $28(a3), d4
005e5c: 6004         bra.b      $5e62
005e5e: 382b002a     move.w     $2a(a3), d4
005e62: 0c4400b4     cmpi.w     #$b4, d4
005e66: 6f04         ble.b      $5e6c
005e68: 04440168     subi.w     #$168, d4
005e6c: 246b0008     movea.l    $8(a3), a2
005e70: 200a         move.l     a2, d0
005e72: 67000198     beq.w      $600c
005e76: 7034         moveq      #$34, d0
005e78: d08a         add.l      a2, d0
005e7a: 2200         move.l     d0, d1
005e7c: 7044         moveq      #$44, d0
005e7e: d08a         add.l      a2, d0
005e80: 206e8c70     movea.l    -$7390(a6), a0
005e84: 4e90         jsr        (a0)
005e86: 4a00         tst.b      d0
005e88: 6706         beq.b      $5e90
005e8a: 3a2a0028     move.w     $28(a2), d5
005e8e: 6004         bra.b      $5e94
005e90: 3a2a002a     move.w     $2a(a2), d5
005e94: 0c4500b4     cmpi.w     #$b4, d5
005e98: 6f04         ble.b      $5e9e
005e9a: 04450168     subi.w     #$168, d5
005e9e: 4a44         tst.w      d4
005ea0: 6d04         blt.b      $5ea6
005ea2: 4a45         tst.w      d5
005ea4: 6c08         bge.b      $5eae
005ea6: 4a44         tst.w      d4
005ea8: 6e4e         bgt.b      $5ef8
005eaa: 4a45         tst.w      d5
005eac: 6e4a         bgt.b      $5ef8
005eae: 3004         move.w     d4, d0
005eb0: 48c0         ext.l      d0
005eb2: 3205         move.w     d5, d1
005eb4: 48c1         ext.l      d1
005eb6: d081         add.l      d1, d0
005eb8: 4e4f         trap       #$f
005eba: 00207600     ori.b      #$0, -(a0)
005ebe: 243c40000000 move.l     #$40000000, d2
005ec4: 4e4f         trap       #$f
005ec6: 00134a80     ori.b      #$80, (a3)
005eca: 6f000114     ble.w      $5fe0
005ece: 3004         move.w     d4, d0
005ed0: 48c0         ext.l      d0
005ed2: 3205         move.w     d5, d1
005ed4: 48c1         ext.l      d1
005ed6: d081         add.l      d1, d0
005ed8: 4e4f         trap       #$f
005eda: 00207600     ori.b      #$0, -(a0)
005ede: 243c40000000 move.l     #$40000000, d2
005ee4: 4e4f         trap       #$f
005ee6: 00137600     ori.b      #$0, (a3)
005eea: 243c3fe00000 move.l     #$3fe00000, d2
005ef0: 4e4f         trap       #$f
005ef2: 000e         .dc.w      $000e
005ef4: 60000110     bra.w      $6006
005ef8: 3005         move.w     d5, d0
005efa: 48c0         ext.l      d0
005efc: 3204         move.w     d4, d1
005efe: 48c1         ext.l      d1
005f00: 9280         sub.l      d0, d1
005f02: 6c0e         bge.b      $5f12
005f04: 3005         move.w     d5, d0
005f06: 48c0         ext.l      d0
005f08: 3204         move.w     d4, d1
005f0a: 48c1         ext.l      d1
005f0c: 9280         sub.l      d0, d1
005f0e: 4481         neg.l      d1
005f10: 600a         bra.b      $5f1c
005f12: 3005         move.w     d5, d0
005f14: 48c0         ext.l      d0
005f16: 3204         move.w     d4, d1
005f18: 48c1         ext.l      d1
005f1a: 9280         sub.l      d0, d1
005f1c: 0c81000000b4 cmpi.l     #$b4, d1
005f22: 6f76         ble.b      $5f9a
005f24: 3004         move.w     d4, d0
005f26: 48c0         ext.l      d0
005f28: 3205         move.w     d5, d1
005f2a: 48c1         ext.l      d1
005f2c: d081         add.l      d1, d0
005f2e: 4e4f         trap       #$f
005f30: 00207600     ori.b      #$0, -(a0)
005f34: 243c40000000 move.l     #$40000000, d2
005f3a: 4e4f         trap       #$f
005f3c: 00134a80     ori.b      #$80, (a3)
005f40: 6f28         ble.b      $5f6a
005f42: 3004         move.w     d4, d0
005f44: 48c0         ext.l      d0
005f46: 3205         move.w     d5, d1
005f48: 48c1         ext.l      d1
005f4a: d081         add.l      d1, d0
005f4c: 4e4f         trap       #$f
005f4e: 00207600     ori.b      #$0, -(a0)
005f52: 243c40000000 move.l     #$40000000, d2
005f58: 4e4f         trap       #$f
005f5a: 00137600     ori.b      #$0, (a3)
005f5e: 243c3fe00000 move.l     #$3fe00000, d2
005f64: 4e4f         trap       #$f
005f66: 000e         .dc.w      $000e
005f68: 6026         bra.b      $5f90
005f6a: 3004         move.w     d4, d0
005f6c: 48c0         ext.l      d0
005f6e: 3205         move.w     d5, d1
005f70: 48c1         ext.l      d1
005f72: d081         add.l      d1, d0
005f74: 4e4f         trap       #$f
005f76: 00207600     ori.b      #$0, -(a0)
005f7a: 243c40000000 move.l     #$40000000, d2
005f80: 4e4f         trap       #$f
005f82: 00137600     ori.b      #$0, (a3)
005f86: 243c3fe00000 move.l     #$3fe00000, d2
005f8c: 4e4f         trap       #$f
005f8e: 00104e4f     ori.b      #$4f, (a0)
005f92: 00240440     ori.b      #$40, -(a4)
005f96: 00b46070300448c0 ori.l      #$60703004, -$40(a4, d4.l)
005f9e: 3205         move.w     d5, d1
005fa0: 48c1         ext.l      d1
005fa2: d081         add.l      d1, d0
005fa4: 4e4f         trap       #$f
005fa6: 00207600     ori.b      #$0, -(a0)
005faa: 243c40000000 move.l     #$40000000, d2
005fb0: 4e4f         trap       #$f
005fb2: 00134a80     ori.b      #$80, (a3)
005fb6: 6f28         ble.b      $5fe0
005fb8: 3004         move.w     d4, d0
005fba: 48c0         ext.l      d0
005fbc: 3205         move.w     d5, d1
005fbe: 48c1         ext.l      d1
005fc0: d081         add.l      d1, d0
005fc2: 4e4f         trap       #$f
005fc4: 00207600     ori.b      #$0, -(a0)
005fc8: 243c40000000 move.l     #$40000000, d2
005fce: 4e4f         trap       #$f
005fd0: 00137600     ori.b      #$0, (a3)
005fd4: 243c3fe00000 move.l     #$3fe00000, d2
005fda: 4e4f         trap       #$f
005fdc: 000e         .dc.w      $000e
005fde: 6026         bra.b      $6006
005fe0: 3004         move.w     d4, d0
005fe2: 48c0         ext.l      d0
005fe4: 3205         move.w     d5, d1
005fe6: 48c1         ext.l      d1
005fe8: d081         add.l      d1, d0
005fea: 4e4f         trap       #$f
005fec: 00207600     ori.b      #$0, -(a0)
005ff0: 243c40000000 move.l     #$40000000, d2
005ff6: 4e4f         trap       #$f
005ff8: 00137600     ori.b      #$0, (a3)
005ffc: 243c3fe00000 move.l     #$3fe00000, d2
006002: 4e4f         trap       #$f
006004: 00104e4f     ori.b      #$4f, (a0)
006008: 00243800     ori.b      #$0, -(a4)
00600c: 0c44ff4c     cmpi.w     #$ff4c, d4
006010: 6c04         bge.b      $6016
006012: 06440168     addi.w     #$168, d4
006016: 044400b4     subi.w     #$b4, d4
00601a: 3004         move.w     d4, d0
00601c: 4ced0d3effe0 movem.l    -$20(a5), d1-d5/a0/a2-a3
006022: 4e5d         unlk       a5
006024: 4e75         rts        
006026: 4e550000     link.w     a5, #$0
00602a: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
00602e: 4fefffe4     lea.l      -$1c(a7), a7
006032: 206f001c     movea.l    $1c(a7), a0
006036: 1828002c     move.b     $2c(a0), d4
00603a: 0c040001     cmpi.b     #$1, d4
00603e: 6610         bne.b      $6050
006040: 4a2e8988     tst.b      -$7678(a6)
006044: 6608         bne.b      $604e
006046: 1d7c00018988 move.b     #$1, -$7678(a6)
00604c: 6002         bra.b      $6050
00604e: 7800         moveq      #$0, d4
006050: 721c         moveq      #$1c, d1
006052: 7010         moveq      #$10, d0
006054: 610003d8     bsr.w      $642e
006058: 202f001c     move.l     $1c(a7), d0
00605c: 61000522     bsr.w      $6580
006060: 4a00         tst.b      d0
006062: 6714         beq.b      $6078
006064: 206f001c     movea.l    $1c(a7), a0
006068: 0c2800140010 cmpi.b     #$14, $10(a0)
00606e: 6608         bne.b      $6078
006070: 1f7c00150004 move.b     #$15, $4(a7)
006076: 600a         bra.b      $6082
006078: 206f001c     movea.l    $1c(a7), a0
00607c: 1f6800100004 move.b     $10(a0), $4(a7)
006082: 206f001c     movea.l    $1c(a7), a0
006086: 1f68006e0005 move.b     $6e(a0), $5(a7)
00608c: 206f001c     movea.l    $1c(a7), a0
006090: 1f68006f0006 move.b     $6f(a0), $6(a7)
006096: 206f001c     movea.l    $1c(a7), a0
00609a: 1f6800440007 move.b     $44(a0), $7(a7)
0060a0: 206f001c     movea.l    $1c(a7), a0
0060a4: 22280018     move.l     $18(a0), d1
0060a8: 202f001c     move.l     $1c(a7), d0
0060ac: 614e         bsr.b      $60fc
0060ae: 2f400008     move.l     d0, $8(a7)
0060b2: 206f001c     movea.l    $1c(a7), a0
0060b6: 2228001c     move.l     $1c(a0), d1
0060ba: 202f001c     move.l     $1c(a7), d0
0060be: 613c         bsr.b      $60fc
0060c0: 2f40000c     move.l     d0, $c(a7)
0060c4: 1f440014     move.b     d4, $14(a7)
0060c8: 42af0010     clr.l      $10(a7)
0060cc: 42af0018     clr.l      $18(a7)
0060d0: 202f001c     move.l     $1c(a7), d0
0060d4: 6100fd56     bsr.w      $5e2c
0060d8: 3f400016     move.w     d0, $16(a7)
0060dc: 721c         moveq      #$1c, d1
0060de: 41d7         lea.l      (a7), a0
0060e0: 2008         move.l     a0, d0
0060e2: 610003c0     bsr.w      $64a4
0060e6: 202f001c     move.l     $1c(a7), d0
0060ea: 6100008a     bsr.w      $6176
0060ee: 4fef001c     lea.l      $1c(a7), a7
0060f2: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
0060f8: 4e5d         unlk       a5
0060fa: 4e75         rts        
0060fc: 4e550000     link.w     a5, #$0
006100: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
006104: 598f         subq.l     #$4, a7
006106: 206f0004     movea.l    $4(a7), a0
00610a: 26680018     movea.l    $18(a0), a3
00610e: 7001         moveq      #$1, d0
006110: 2e80         move.l     d0, (a7)
006112: 206f0004     movea.l    $4(a7), a0
006116: 24680020     movea.l    $20(a0), a2
00611a: 6002         bra.b      $611e
00611c: 2452         movea.l    (a2), a2
00611e: 200a         move.l     a2, d0
006120: 6716         beq.b      $6138
006122: 4a2a001e     tst.b      $1e(a2)
006126: 67f4         beq.b      $611c
006128: 600e         bra.b      $6138
00612a: 200a         move.l     a2, d0
00612c: 610004c4     bsr.w      $65f2
006130: 4a00         tst.b      d0
006132: 6602         bne.b      $6136
006134: 5297         addq.l     #$1, (a7)
006136: 2452         movea.l    (a2), a2
006138: 200a         move.l     a2, d0
00613a: 6706         beq.b      $6142
00613c: b5ef0008     cmpa.l     $8(a7), a2
006140: 66e8         bne.b      $612a
006142: b5ef0008     cmpa.l     $8(a7), a2
006146: 6720         beq.b      $6168
006148: 246b0004     movea.l    $4(a3), a2
00614c: 6010         bra.b      $615e
00614e: 200a         move.l     a2, d0
006150: 610004a0     bsr.w      $65f2
006154: 4a00         tst.b      d0
006156: 6602         bne.b      $615a
006158: 5297         addq.l     #$1, (a7)
00615a: 246a0004     movea.l    $4(a2), a2
00615e: 200a         move.l     a2, d0
006160: 6706         beq.b      $6168
006162: b5ef0008     cmpa.l     $8(a7), a2
006166: 66e6         bne.b      $614e
006168: 2017         move.l     (a7), d0
00616a: 588f         addq.l     #$4, a7
00616c: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
006172: 4e5d         unlk       a5
006174: 4e75         rts        
006176: 4e550000     link.w     a5, #$0
00617a: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00617e: 2057         movea.l    (a7), a0
006180: 24680018     movea.l    $18(a0), a2
006184: 2057         movea.l    (a7), a0
006186: 26680020     movea.l    $20(a0), a3
00618a: 6002         bra.b      $618e
00618c: 2653         movea.l    (a3), a3
00618e: 200b         move.l     a3, d0
006190: 6710         beq.b      $61a2
006192: 4a2b001e     tst.b      $1e(a3)
006196: 67f4         beq.b      $618c
006198: 6008         bra.b      $61a2
00619a: 220b         move.l     a3, d1
00619c: 2017         move.l     (a7), d0
00619e: 6128         bsr.b      $61c8
0061a0: 2653         movea.l    (a3), a3
0061a2: 200b         move.l     a3, d0
0061a4: 66f4         bne.b      $619a
0061a6: 266a0004     movea.l    $4(a2), a3
0061aa: 600e         bra.b      $61ba
0061ac: 220b         move.l     a3, d1
0061ae: 2017         move.l     (a7), d0
0061b0: 6116         bsr.b      $61c8
0061b2: b7ca         cmpa.l     a2, a3
0061b4: 6708         beq.b      $61be
0061b6: 266b0004     movea.l    $4(a3), a3
0061ba: 200b         move.l     a3, d0
0061bc: 66ee         bne.b      $61ac
0061be: 4ced0d02fff0 movem.l    -$10(a5), d1/a0/a2-a3
0061c4: 4e5d         unlk       a5
0061c6: 4e75         rts        
0061c8: 4e550000     link.w     a5, #$0
0061cc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0061d0: 4fefffe6     lea.l      -$1a(a7), a7
0061d4: 202f001e     move.l     $1e(a7), d0
0061d8: 61000418     bsr.w      $65f2
0061dc: 4a00         tst.b      d0
0061de: 660000ec     bne.w      $62cc
0061e2: 721a         moveq      #$1a, d1
0061e4: 700f         moveq      #$f, d0
0061e6: 61000246     bsr.w      $642e
0061ea: 206f001e     movea.l    $1e(a7), a0
0061ee: 4a28001e     tst.b      $1e(a0)
0061f2: 6704         beq.b      $61f8
0061f4: 7001         moveq      #$1, d0
0061f6: 6002         bra.b      $61fa
0061f8: 7000         moveq      #$0, d0
0061fa: 1f400004     move.b     d0, $4(a7)
0061fe: 206f001e     movea.l    $1e(a7), a0
006202: 4aa80010     tst.l      $10(a0)
006206: 6f08         ble.b      $6210
006208: 1f7c00010005 move.b     #$1, $5(a7)
00620e: 6004         bra.b      $6214
006210: 422f0005     clr.b      $5(a7)
006214: 222f001e     move.l     $1e(a7), d1
006218: 202f001a     move.l     $1a(a7), d0
00621c: 610000bc     bsr.w      $62da
006220: 2f400008     move.l     d0, $8(a7)
006224: 206f001e     movea.l    $1e(a7), a0
006228: 0c2800030026 cmpi.b     #$3, $26(a0)
00622e: 670c         beq.b      $623c
006230: 206f001e     movea.l    $1e(a7), a0
006234: 0c2800020026 cmpi.b     #$2, $26(a0)
00623a: 660c         bne.b      $6248
00623c: 4aaf0008     tst.l      $8(a7)
006240: 6606         bne.b      $6248
006242: 422f0006     clr.b      $6(a7)
006246: 600a         bra.b      $6252
006248: 206f001e     movea.l    $1e(a7), a0
00624c: 1f6800260006 move.b     $26(a0), $6(a7)
006252: 206f001e     movea.l    $1e(a7), a0
006256: 1f68002e0014 move.b     $2e(a0), $14(a7)
00625c: 206f001e     movea.l    $1e(a7), a0
006260: 3f68002c000e move.w     $2c(a0), $e(a7)
006266: 42af0010     clr.l      $10(a7)
00626a: 42af0016     clr.l      $16(a7)
00626e: 206f001e     movea.l    $1e(a7), a0
006272: 0c2800070057 cmpi.b     #$7, $57(a0)
006278: 6632         bne.b      $62ac
00627a: 202f001e     move.l     $1e(a7), d0
00627e: b0ae898a     cmp.l      -$7676(a6), d0
006282: 661a         bne.b      $629e
006284: 206f001a     movea.l    $1a(a7), a0
006288: 202f001e     move.l     $1e(a7), d0
00628c: b0a80018     cmp.l      $18(a0), d0
006290: 6708         beq.b      $629a
006292: 1f7c00010006 move.b     #$1, $6(a7)
006298: 6004         bra.b      $629e
00629a: 422f0006     clr.b      $6(a7)
00629e: 202f001e     move.l     $1e(a7), d0
0062a2: b0ae898e     cmp.l      -$7672(a6), d0
0062a6: 6604         bne.b      $62ac
0062a8: 422f0006     clr.b      $6(a7)
0062ac: 721a         moveq      #$1a, d1
0062ae: 41d7         lea.l      (a7), a0
0062b0: 2008         move.l     a0, d0
0062b2: 610001f0     bsr.w      $64a4
0062b6: 4a2f0004     tst.b      $4(a7)
0062ba: 660a         bne.b      $62c6
0062bc: 7044         moveq      #$44, d0
0062be: d0af001e     add.l      $1e(a7), d0
0062c2: 61000132     bsr.w      $63f6
0062c6: 202f001e     move.l     $1e(a7), d0
0062ca: 6144         bsr.b      $6310
0062cc: 4fef001a     lea.l      $1a(a7), a7
0062d0: 4ced0100fffc movem.l    -$4(a5), a0
0062d6: 4e5d         unlk       a5
0062d8: 4e75         rts        
0062da: 4e550000     link.w     a5, #$0
0062de: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
0062e2: 95ca         suba.l     a2, a2
0062e4: 206f0004     movea.l    $4(a7), a0
0062e8: 26680008     movea.l    $8(a0), a3
0062ec: 200b         move.l     a3, d0
0062ee: 6714         beq.b      $6304
0062f0: 200b         move.l     a3, d0
0062f2: 610002fe     bsr.w      $65f2
0062f6: 4a00         tst.b      d0
0062f8: 660a         bne.b      $6304
0062fa: 220b         move.l     a3, d1
0062fc: 2017         move.l     (a7), d0
0062fe: 6100fdfc     bsr.w      $60fc
006302: 2440         movea.l    d0, a2
006304: 200a         move.l     a2, d0
006306: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00630c: 4e5d         unlk       a5
00630e: 4e75         rts        
006310: 4e550000     link.w     a5, #$0
006314: 48e780a0     movem.l    d0/a0/a2, -(a7)
006318: 2057         movea.l    (a7), a0
00631a: 24680030     movea.l    $30(a0), a2
00631e: 6008         bra.b      $6328
006320: 200a         move.l     a2, d0
006322: 61000098     bsr.w      $63bc
006326: 2452         movea.l    (a2), a2
006328: 200a         move.l     a2, d0
00632a: 66f4         bne.b      $6320
00632c: 4ced0500fff8 movem.l    -$8(a5), a0/a2
006332: 4e5d         unlk       a5
006334: 4e75         rts        
006336: 4e550000     link.w     a5, #$0
00633a: 48e7f080     movem.l    d0-d3/a0, -(a7)
00633e: 4feffff0     lea.l      -$10(a7), a7
006342: 4cee0003988e movem.l    -$6772(a6), d0-d1
006348: 263cac6a805b move.l     #$ac6a805b, d3
00634e: 243c381723a2 move.l     #$381723a2, d2
006354: 4e4f         trap       #$f
006356: 0014661e     ori.b      #$1e, (a4)
00635a: 41d7         lea.l      (a7), a0
00635c: 2208         move.l     a0, d1
00635e: 202f0010     move.l     $10(a7), d0
006362: 206e8c58     movea.l    -$73a8(a6), a0
006366: 4e90         jsr        (a0)
006368: 4cef00030008 movem.l    $8(a7), d0-d1
00636e: 61003fd2     bsr.w      $a342
006372: 48ee0003988e movem.l    d0-d1, -$6772(a6)
006378: 202f0010     move.l     $10(a7), d0
00637c: 206e8c4c     movea.l    -$73b4(a6), a0
006380: 4e90         jsr        (a0)
006382: 4e4f         trap       #$f
006384: 00204cee     ori.b      #$ee, -(a0)
006388: 000c         .dc.w      $000c
00638a: 988e         sub.l      a6, d4
00638c: 4e4f         trap       #$f
00638e: 00124e4f     ori.b      #$4f, (a2)
006392: 0024206f     ori.b      #$6f, -(a4)
006396: 00142140     ori.b      #$40, (a4)
00639a: 0004202f     ori.b      #$2f, d4
00639e: 0010206e     ori.b      #$6e, (a0)
0063a2: 8c54         or.w       (a4), d6
0063a4: 4e90         jsr        (a0)
0063a6: 206f0014     movea.l    $14(a7), a0
0063aa: 21400008     move.l     d0, $8(a0)
0063ae: 4fef0010     lea.l      $10(a7), a7
0063b2: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
0063b8: 4e5d         unlk       a5
0063ba: 4e75         rts        
0063bc: 4e550000     link.w     a5, #$0
0063c0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0063c4: 4feffff4     lea.l      -$c(a7), a7
0063c8: 4297         clr.l      (a7)
0063ca: 41d7         lea.l      (a7), a0
0063cc: 2208         move.l     a0, d1
0063ce: 202f000c     move.l     $c(a7), d0
0063d2: 5880         addq.l     #$4, d0
0063d4: 6100ff60     bsr.w      $6336
0063d8: 720c         moveq      #$c, d1
0063da: 700e         moveq      #$e, d0
0063dc: 6150         bsr.b      $642e
0063de: 720c         moveq      #$c, d1
0063e0: 41d7         lea.l      (a7), a0
0063e2: 2008         move.l     a0, d0
0063e4: 610000be     bsr.w      $64a4
0063e8: 4fef000c     lea.l      $c(a7), a7
0063ec: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0063f2: 4e5d         unlk       a5
0063f4: 4e75         rts        
0063f6: 4e550000     link.w     a5, #$0
0063fa: 48e7c080     movem.l    d0-d1/a0, -(a7)
0063fe: 4feffff4     lea.l      -$c(a7), a7
006402: 4297         clr.l      (a7)
006404: 41d7         lea.l      (a7), a0
006406: 2208         move.l     a0, d1
006408: 202f000c     move.l     $c(a7), d0
00640c: 6100ff28     bsr.w      $6336
006410: 720c         moveq      #$c, d1
006412: 700d         moveq      #$d, d0
006414: 6118         bsr.b      $642e
006416: 720c         moveq      #$c, d1
006418: 41d7         lea.l      (a7), a0
00641a: 2008         move.l     a0, d0
00641c: 61000086     bsr.w      $64a4
006420: 4fef000c     lea.l      $c(a7), a7
006424: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00642a: 4e5d         unlk       a5
00642c: 4e75         rts        
00642e: 4e550000     link.w     a5, #$0
006432: 48e7c080     movem.l    d0-d1/a0, -(a7)
006436: 202e8984     move.l     -$767c(a6), d0
00643a: d0af0004     add.l      $4(a7), d0
00643e: 5480         addq.l     #$2, d0
006440: 0c8000000400 cmpi.l     #$400, d0
006446: 6f40         ble.b      $6488
006448: 202e8984     move.l     -$767c(a6), d0
00644c: 41ee8583     lea.l      -$7a7d(a6), a0
006450: 11bc000c0800 move.b     #$c, (a0, d0.l)
006456: 4a2e8582     tst.b      -$7a7e(a6)
00645a: 662c         bne.b      $6488
00645c: 487a0248     pea.l      $66a6(pc)
006460: 223c00000400 move.l     #$400, d1
006466: 41ee8583     lea.l      -$7a7d(a6), a0
00646a: 2008         move.l     a0, d0
00646c: 6100f0cc     bsr.w      $553a
006470: 588f         addq.l     #$4, a7
006472: 0c000001     cmpi.b     #$1, d0
006476: 6606         bne.b      $647e
006478: 422e8582     clr.b      -$7a7e(a6)
00647c: 6006         bra.b      $6484
00647e: 1d7c00018582 move.b     #$1, -$7a7e(a6)
006484: 42ae8984     clr.l      -$767c(a6)
006488: 202e8984     move.l     -$767c(a6), d0
00648c: 41ee8583     lea.l      -$7a7d(a6), a0
006490: 11af00030800 move.b     $3(a7), (a0, d0.l)
006496: 52ae8984     addq.l     #$1, -$767c(a6)
00649a: 4ced0100fffc movem.l    -$4(a5), a0
0064a0: 4e5d         unlk       a5
0064a2: 4e75         rts        
0064a4: 4e550000     link.w     a5, #$0
0064a8: 48e7c8c0     movem.l    d0-d1/d4/a0-a1, -(a7)
0064ac: 7800         moveq      #$0, d4
0064ae: 6016         bra.b      $64c6
0064b0: 202e8984     move.l     -$767c(a6), d0
0064b4: 52ae8984     addq.l     #$1, -$767c(a6)
0064b8: 41ee8583     lea.l      -$7a7d(a6), a0
0064bc: 2257         movea.l    (a7), a1
0064be: 11b148000800 move.b     (a1, d4.l), (a0, d0.l)
0064c4: 5284         addq.l     #$1, d4
0064c6: b8af0004     cmp.l      $4(a7), d4
0064ca: 6de4         blt.b      $64b0
0064cc: 4ced0310fff4 movem.l    -$c(a5), d4/a0-a1
0064d2: 4e5d         unlk       a5
0064d4: 4e75         rts        
0064d6: 4e550000     link.w     a5, #$0
0064da: 48e78000     movem.l    d0, -(a7)
0064de: 42ae8984     clr.l      -$767c(a6)
0064e2: 4e5d         unlk       a5
0064e4: 4e75         rts        
0064e6: 4e550000     link.w     a5, #$0
0064ea: 48e7c080     movem.l    d0-d1/a0, -(a7)
0064ee: 202e8984     move.l     -$767c(a6), d0
0064f2: 5480         addq.l     #$2, d0
0064f4: 0c8000000400 cmpi.l     #$400, d0
0064fa: 6f40         ble.b      $653c
0064fc: 202e8984     move.l     -$767c(a6), d0
006500: 41ee8583     lea.l      -$7a7d(a6), a0
006504: 11bc000c0800 move.b     #$c, (a0, d0.l)
00650a: 4a2e8582     tst.b      -$7a7e(a6)
00650e: 662c         bne.b      $653c
006510: 487a01ba     pea.l      $66cc(pc)
006514: 223c00000400 move.l     #$400, d1
00651a: 41ee8583     lea.l      -$7a7d(a6), a0
00651e: 2008         move.l     a0, d0
006520: 6100f018     bsr.w      $553a
006524: 588f         addq.l     #$4, a7
006526: 0c000001     cmpi.b     #$1, d0
00652a: 6606         bne.b      $6532
00652c: 422e8582     clr.b      -$7a7e(a6)
006530: 6006         bra.b      $6538
006532: 1d7c00018582 move.b     #$1, -$7a7e(a6)
006538: 42ae8984     clr.l      -$767c(a6)
00653c: 202e8984     move.l     -$767c(a6), d0
006540: 41ee8583     lea.l      -$7a7d(a6), a0
006544: 11bc000b0800 move.b     #$b, (a0, d0.l)
00654a: 487a01a6     pea.l      $66f2(pc)
00654e: 223c00000400 move.l     #$400, d1
006554: 41ee8583     lea.l      -$7a7d(a6), a0
006558: 2008         move.l     a0, d0
00655a: 6100efde     bsr.w      $553a
00655e: 588f         addq.l     #$4, a7
006560: 0c000001     cmpi.b     #$1, d0
006564: 6606         bne.b      $656c
006566: 422e8582     clr.b      -$7a7e(a6)
00656a: 6006         bra.b      $6572
00656c: 1d7c00018582 move.b     #$1, -$7a7e(a6)
006572: 42ae8984     clr.l      -$767c(a6)
006576: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00657c: 4e5d         unlk       a5
00657e: 4e75         rts        
006580: 4e550000     link.w     a5, #$0
006584: 48e788a0     movem.l    d0/d4/a0/a2, -(a7)
006588: 558f         subq.l     #$2, a7
00658a: 7800         moveq      #$0, d4
00658c: 422f0001     clr.b      $1(a7)
006590: 42ae898a     clr.l      -$7676(a6)
006594: 42ae898e     clr.l      -$7672(a6)
006598: 206f0002     movea.l    $2(a7), a0
00659c: 24680018     movea.l    $18(a0), a2
0065a0: 601c         bra.b      $65be
0065a2: 246a0004     movea.l    $4(a2), a2
0065a6: 0c2a0002001f cmpi.b     #$2, $1f(a2)
0065ac: 6606         bne.b      $65b4
0065ae: 2d4a898a     move.l     a2, -$7676(a6)
0065b2: 600a         bra.b      $65be
0065b4: 4aae898a     tst.l      -$7676(a6)
0065b8: 6604         bne.b      $65be
0065ba: 2d4a898e     move.l     a2, -$7672(a6)
0065be: 206f0002     movea.l    $2(a7), a0
0065c2: 2004         move.l     d4, d0
0065c4: 5284         addq.l     #$1, d4
0065c6: b0a8004e     cmp.l      $4e(a0), d0
0065ca: 6dd6         blt.b      $65a2
0065cc: 4aae898a     tst.l      -$7676(a6)
0065d0: 6604         bne.b      $65d6
0065d2: 42ae898e     clr.l      -$7672(a6)
0065d6: 4aae898a     tst.l      -$7676(a6)
0065da: 6706         beq.b      $65e2
0065dc: 1f7c00010001 move.b     #$1, $1(a7)
0065e2: 102f0001     move.b     $1(a7), d0
0065e6: 548f         addq.l     #$2, a7
0065e8: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0065ee: 4e5d         unlk       a5
0065f0: 4e75         rts        
0065f2: 4e550000     link.w     a5, #$0
0065f6: 48e78080     movem.l    d0/a0, -(a7)
0065fa: 2057         movea.l    (a7), a0
0065fc: 0c280002001f cmpi.b     #$2, $1f(a0)
006602: 660c         bne.b      $6610
006604: 2017         move.l     (a7), d0
006606: b0ae898a     cmp.l      -$7676(a6), d0
00660a: 6704         beq.b      $6610
00660c: 7001         moveq      #$1, d0
00660e: 6002         bra.b      $6612
006610: 7000         moveq      #$0, d0
006612: 4ced0100fffc movem.l    -$4(a5), a0
006618: 4e5d         unlk       a5
00661a: 4e75         rts        
00661c: 2f63302f     move.l     -(a3), $302f(a7)
006620: 5f313239     subq.b     #$7, $39(a1, d3.w)
006624: 5f2f7069     subq.b     #$7, $7069(a7)
006628: 7065         moveq      #$65, d0
00662a: 2f67646d     move.l     -(a7), $646d(a7)
00662e: 616e         bsr.b      $669e
006630: 5f61         subq.w     #$7, -(a1)
006632: 636b         bls.b      $669f
006634: 5f63         subq.w     #$7, -(a3)
006636: 6861         bvc.b      $6699
006638: 6e6e         bgt.b      $66a8
00663a: 656c         bcs.b      $66a8
00663c: 002f63302f5f ori.b      #$30, $2f5f(a7)
006642: 3132395f     move.w     ([a2]), -(a0)
006646: 2f706970652f67646d61 move.l     $652f6764(a0, invalid.w), $6d61(a7)
006650: 6e5f         bgt.b      $66b1
006652: 6163         bsr.b      $66b7
006654: 6b5f         bmi.b      $66b5
006656: 6368         bls.b      $66c0
006658: 616e         bsr.b      $66c8
00665a: 6e65         bgt.b      $66c1
00665c: 6c002f63     bge.w      $95c1
006660: 302f5f31     move.w     $5f31(a7), d0
006664: 32385f2f     move.w     $5f2f.w, d1
006668: 7069         moveq      #$69, d0
00666a: 7065         moveq      #$65, d0
00666c: 2f7369676e616c5f move.l     ([$6e61, a3]), $6c5f(a7)
006674: 746f         moveq      #$6f, d2
006676: 5f76706d     subq.w     #$7, $6d(a6, d7.w)
00667a: 616e         bsr.b      $66ea
00667c: 5f63         subq.w     #$7, -(a3)
00667e: 6861         bvc.b      $66e1
006680: 6e6e         bgt.b      $66f0
006682: 656c         bcs.b      $66f0
006684: 002f63302f5f ori.b      #$30, $2f5f(a7)
00668a: 3132395f     move.w     ([a2]), -(a0)
00668e: 2f706970652f67646d61 move.l     $652f6764(a0, invalid.w), $6d61(a7)
006698: 6e5f         bgt.b      $66f9
00669a: 6163         bsr.b      $66ff
00669c: 6b5f         bmi.b      $66fd
00669e: 6368         bls.b      $6708
0066a0: 616e         bsr.b      $6710
0066a2: 6e65         bgt.b      $6709
0066a4: 6c002f63     bge.w      $9609
0066a8: 302f5f31     move.w     $5f31(a7), d0
0066ac: 32385f2f     move.w     $5f2f.w, d1
0066b0: 7069         moveq      #$69, d0
0066b2: 7065         moveq      #$65, d0
0066b4: 2f67646d     move.l     -(a7), $646d(a7)
0066b8: 616e         bsr.b      $6728
0066ba: 5f746f5f     subq.w     #$7, ([a4])
0066be: 7670         moveq      #$70, d3
0066c0: 6d61         blt.b      $6723
0066c2: 6e5f         bgt.b      $6723
0066c4: 6368         bls.b      $672e
0066c6: 616e         bsr.b      $6736
0066c8: 6e65         bgt.b      $672f
0066ca: 6c002f63     bge.w      $962f
0066ce: 302f5f31     move.w     $5f31(a7), d0
0066d2: 32385f2f     move.w     $5f2f.w, d1
0066d6: 7069         moveq      #$69, d0
0066d8: 7065         moveq      #$65, d0
0066da: 2f67646d     move.l     -(a7), $646d(a7)
0066de: 616e         bsr.b      $674e
0066e0: 5f746f5f     subq.w     #$7, ([a4])
0066e4: 7670         moveq      #$70, d3
0066e6: 6d61         blt.b      $6749
0066e8: 6e5f         bgt.b      $6749
0066ea: 6368         bls.b      $6754
0066ec: 616e         bsr.b      $675c
0066ee: 6e65         bgt.b      $6755
0066f0: 6c002f63     bge.w      $9655
0066f4: 302f5f31     move.w     $5f31(a7), d0
0066f8: 32385f2f     move.w     $5f2f.w, d1
0066fc: 7069         moveq      #$69, d0
0066fe: 7065         moveq      #$65, d0
006700: 2f67646d     move.l     -(a7), $646d(a7)
006704: 616e         bsr.b      $6774
006706: 5f746f5f     subq.w     #$7, ([a4])
00670a: 7670         moveq      #$70, d3
00670c: 6d61         blt.b      $676f
00670e: 6e5f         bgt.b      $676f
006710: 6368         bls.b      $677a
006712: 616e         bsr.b      $6782
006714: 6e65         bgt.b      $677b
006716: 6c004e55     bge.w      $b56d
00671a: 000048e7     ori.b      #$e7, d0
00671e: 8080         or.l       d0, d0
006720: 41ee899a     lea.l      -$7666(a6), a0
006724: 2d488996     move.l     a0, -$766a(a6)
006728: 206e8996     movea.l    -$766a(a6), a0
00672c: 20ae9896     move.l     -$676a(a6), (a0)
006730: 7000         moveq      #$0, d0
006732: 4ced0100fffc movem.l    -$4(a5), a0
006738: 4e5d         unlk       a5
00673a: 4e75         rts        
00673c: 4e550000     link.w     a5, #$0
006740: 48e78000     movem.l    d0, -(a7)
006744: 558f         subq.l     #$2, a7
006746: 422f0001     clr.b      $1(a7)
00674a: 7006         moveq      #$6, d0
00674c: 61000916     bsr.w      $7064
006750: 2d40989a     move.l     d0, -$6766(a6)
006754: 6c06         bge.b      $675c
006756: 1f7c00010001 move.b     #$1, $1(a7)
00675c: 102f0001     move.b     $1(a7), d0
006760: 548f         addq.l     #$2, a7
006762: 4e5d         unlk       a5
006764: 4e75         rts        
006766: 4e550000     link.w     a5, #$0
00676a: 48e78000     movem.l    d0, -(a7)
00676e: 70ff         moveq      #$ff, d0
006770: b0ae989a     cmp.l      -$6766(a6), d0
006774: 670e         beq.b      $6784
006776: 202e989a     move.l     -$6766(a6), d0
00677a: 6100099c     bsr.w      $7118
00677e: 70ff         moveq      #$ff, d0
006780: 2d40989a     move.l     d0, -$6766(a6)
006784: 4e5d         unlk       a5
006786: 4e75         rts        
006788: 4e550000     link.w     a5, #$0
00678c: 48e7c080     movem.l    d0-d1/a0, -(a7)
006790: 7003         moveq      #$3, d0
006792: b0af0014     cmp.l      $14(a7), d0
006796: 6620         bne.b      $67b8
006798: 7200         moveq      #$0, d1
00679a: 2017         move.l     (a7), d0
00679c: 610002aa     bsr.w      $6a48
0067a0: 2057         movea.l    (a7), a0
0067a2: 4a28002c     tst.b      $2c(a0)
0067a6: 6716         beq.b      $67be
0067a8: 7055         moveq      #$55, d0
0067aa: 611c         bsr.b      $67c8
0067ac: 7201         moveq      #$1, d1
0067ae: 202f0004     move.l     $4(a7), d0
0067b2: 61000294     bsr.w      $6a48
0067b6: 6006         bra.b      $67be
0067b8: 2017         move.l     (a7), d0
0067ba: 6100013a     bsr.w      $68f6
0067be: 4ced0100fffc movem.l    -$4(a5), a0
0067c4: 4e5d         unlk       a5
0067c6: 4e75         rts        
0067c8: 4e550000     link.w     a5, #$0
0067cc: 48e78080     movem.l    d0/a0, -(a7)
0067d0: 0c6f00010002 cmpi.w     #$1, $2(a7)
0067d6: 6d1a         blt.b      $67f2
0067d8: 0c6f00550002 cmpi.w     #$55, $2(a7)
0067de: 6e12         bgt.b      $67f2
0067e0: 202e8992     move.l     -$766e(a6), d0
0067e4: 52ae8992     addq.l     #$1, -$766e(a6)
0067e8: 206e8996     movea.l    -$766a(a6), a0
0067ec: 31af00020a06 move.w     $2(a7), $6(a0, d0.l)
0067f2: 7000         moveq      #$0, d0
0067f4: 4ced0100fffc movem.l    -$4(a5), a0
0067fa: 4e5d         unlk       a5
0067fc: 4e75         rts        
0067fe: 4e550000     link.w     a5, #$0
006802: 48e7c080     movem.l    d0-d1/a0, -(a7)
006806: 4feffff6     lea.l      -$a(a7), a7
00680a: 422f0009     clr.b      $9(a7)
00680e: 60000076     bra.w      $6886
006812: 4aae8992     tst.l      -$766e(a6)
006816: 6f000082     ble.w      $689a
00681a: 206e8996     movea.l    -$766a(a6), a0
00681e: 316e89940004 move.w     -$766c(a6), $4(a0)
006824: 7202         moveq      #$2, d1
006826: 7028         moveq      #$28, d0
006828: 61004054     bsr.w      $a87e
00682c: 4c2e0000984e mulu.l     -$67b2(a6), d0
006832: 4c7c000000000064 divu.l     #$64, d0
00683a: 2e80         move.l     d0, (a7)
00683c: 4a97         tst.l      (a7)
00683e: 6706         beq.b      $6846
006840: 2017         move.l     (a7), d0
006842: 61003f12     bsr.w      $a756
006846: 70ff         moveq      #$ff, d0
006848: b0ae989a     cmp.l      -$6766(a6), d0
00684c: 6604         bne.b      $6852
00684e: 6100feec     bsr.w      $673c
006852: 70ff         moveq      #$ff, d0
006854: b0ae989a     cmp.l      -$6766(a6), d0
006858: 6740         beq.b      $689a
00685a: 48780005     pea.l      $5.w
00685e: 4878001e     pea.l      $1e.w
006862: 222e8996     move.l     -$766a(a6), d1
006866: 202e989a     move.l     -$6766(a6), d0
00686a: 61000e58     bsr.w      $76c4
00686e: 508f         addq.l     #$8, a7
006870: 4a80         tst.l      d0
006872: 6c26         bge.b      $689a
006874: 6100fef0     bsr.w      $6766
006878: 1f7c00010009 move.b     #$1, $9(a7)
00687e: 601a         bra.b      $689a
006880: 42ae8992     clr.l      -$766e(a6)
006884: 6014         bra.b      $689a
006886: 7000         moveq      #$0, d0
006888: 102f000d     move.b     $d(a7), d0
00688c: 0c40000b     cmpi.w     #$b, d0
006890: 6700ff80     beq.w      $6812
006894: 0c400016     cmpi.w     #$16, d0
006898: 67e6         beq.b      $6880
00689a: 102f0009     move.b     $9(a7), d0
00689e: 4fef000a     lea.l      $a(a7), a7
0068a2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0068a8: 4e5d         unlk       a5
0068aa: 4e75         rts        
0068ac: 4e550000     link.w     a5, #$0
0068b0: 48e78080     movem.l    d0/a0, -(a7)
0068b4: 2057         movea.l    (a7), a0
0068b6: 0c2800110010 cmpi.b     #$11, $10(a0)
0068bc: 6728         beq.b      $68e6
0068be: 2057         movea.l    (a7), a0
0068c0: 0c2800120010 cmpi.b     #$12, $10(a0)
0068c6: 671e         beq.b      $68e6
0068c8: 2057         movea.l    (a7), a0
0068ca: 0c2800170010 cmpi.b     #$17, $10(a0)
0068d0: 6714         beq.b      $68e6
0068d2: 2057         movea.l    (a7), a0
0068d4: 0c2800180010 cmpi.b     #$18, $10(a0)
0068da: 670a         beq.b      $68e6
0068dc: 2057         movea.l    (a7), a0
0068de: 0c2800160010 cmpi.b     #$16, $10(a0)
0068e4: 6604         bne.b      $68ea
0068e6: 7001         moveq      #$1, d0
0068e8: 6002         bra.b      $68ec
0068ea: 7000         moveq      #$0, d0
0068ec: 4ced0100fffc movem.l    -$4(a5), a0
0068f2: 4e5d         unlk       a5
0068f4: 4e75         rts        
0068f6: 4e550000     link.w     a5, #$0
0068fa: 48e78c80     movem.l    d0/d4-d5/a0, -(a7)
0068fe: 2057         movea.l    (a7), a0
006900: 18280010     move.b     $10(a0), d4
006904: 2057         movea.l    (a7), a0
006906: 1a280044     move.b     $44(a0), d5
00690a: 2057         movea.l    (a7), a0
00690c: 0c28000d0013 cmpi.b     #$d, $13(a0)
006912: 6606         bne.b      $691a
006914: 7046         moveq      #$46, d0
006916: 600000e2     bra.w      $69fa
00691a: 2017         move.l     (a7), d0
00691c: 618e         bsr.b      $68ac
00691e: 0c000001     cmpi.b     #$1, d0
006922: 6606         bne.b      $692a
006924: 7051         moveq      #$51, d0
006926: 600000d2     bra.w      $69fa
00692a: 0c040003     cmpi.b     #$3, d4
00692e: 6706         beq.b      $6936
006930: 0c040002     cmpi.b     #$2, d4
006934: 6606         bne.b      $693c
006936: 7048         moveq      #$48, d0
006938: 600000c0     bra.w      $69fa
00693c: 0c050037     cmpi.b     #$37, d5
006940: 660000d2     bne.w      $6a14
006944: 7050         moveq      #$50, d0
006946: 600000b2     bra.w      $69fa
00694a: 704b         moveq      #$4b, d0
00694c: 600000ac     bra.w      $69fa
006950: 704c         moveq      #$4c, d0
006952: 600000a6     bra.w      $69fa
006956: 0c05000b     cmpi.b     #$b, d5
00695a: 67ee         beq.b      $694a
00695c: 0c050016     cmpi.b     #$16, d5
006960: 67ee         beq.b      $6950
006962: 600000da     bra.w      $6a3e
006966: 704f         moveq      #$4f, d0
006968: 60000090     bra.w      $69fa
00696c: 2057         movea.l    (a7), a0
00696e: 0c280001006e cmpi.b     #$1, $6e(a0)
006974: 6716         beq.b      $698c
006976: 7049         moveq      #$49, d0
006978: 60000080     bra.w      $69fa
00697c: 2057         movea.l    (a7), a0
00697e: 0c280001006e cmpi.b     #$1, $6e(a0)
006984: 6606         bne.b      $698c
006986: 704a         moveq      #$4a, d0
006988: 60000070     bra.w      $69fa
00698c: 7047         moveq      #$47, d0
00698e: 6000006a     bra.w      $69fa
006992: 0c05000b     cmpi.b     #$b, d5
006996: 67d4         beq.b      $696c
006998: 0c050016     cmpi.b     #$16, d5
00699c: 67de         beq.b      $697c
00699e: 0c050042     cmpi.b     #$42, d5
0069a2: 67c2         beq.b      $6966
0069a4: 60000098     bra.w      $6a3e
0069a8: 704f         moveq      #$4f, d0
0069aa: 604e         bra.b      $69fa
0069ac: 0c05000b     cmpi.b     #$b, d5
0069b0: 6742         beq.b      $69f4
0069b2: 0c050016     cmpi.b     #$16, d5
0069b6: 6740         beq.b      $69f8
0069b8: 0c050042     cmpi.b     #$42, d5
0069bc: 67ea         beq.b      $69a8
0069be: 6000007e     bra.w      $6a3e
0069c2: 2057         movea.l    (a7), a0
0069c4: 0c280001006e cmpi.b     #$1, $6e(a0)
0069ca: 6712         beq.b      $69de
0069cc: 7049         moveq      #$49, d0
0069ce: 602a         bra.b      $69fa
0069d0: 2057         movea.l    (a7), a0
0069d2: 0c280001006e cmpi.b     #$1, $6e(a0)
0069d8: 6604         bne.b      $69de
0069da: 704a         moveq      #$4a, d0
0069dc: 601c         bra.b      $69fa
0069de: 7047         moveq      #$47, d0
0069e0: 6018         bra.b      $69fa
0069e2: 0c05000b     cmpi.b     #$b, d5
0069e6: 67da         beq.b      $69c2
0069e8: 0c050016     cmpi.b     #$16, d5
0069ec: 67e2         beq.b      $69d0
0069ee: 604e         bra.b      $6a3e
0069f0: 704f         moveq      #$4f, d0
0069f2: 6006         bra.b      $69fa
0069f4: 704d         moveq      #$4d, d0
0069f6: 6002         bra.b      $69fa
0069f8: 704e         moveq      #$4e, d0
0069fa: 6100fdcc     bsr.w      $67c8
0069fe: 603e         bra.b      $6a3e
006a00: 0c05000b     cmpi.b     #$b, d5
006a04: 67ee         beq.b      $69f4
006a06: 0c050016     cmpi.b     #$16, d5
006a0a: 67ec         beq.b      $69f8
006a0c: 0c050042     cmpi.b     #$42, d5
006a10: 67de         beq.b      $69f0
006a12: 602a         bra.b      $6a3e
006a14: 7000         moveq      #$0, d0
006a16: 1004         move.b     d4, d0
006a18: 5d40         subq.w     #$6, d0
006a1a: 0c40000a     cmpi.w     #$a, d0
006a1e: 62e0         bhi.b      $6a00
006a20: 303b0206     move.w     $6a28(pc, d0.w), d0
006a24: 4efb0002     jmp        $6a28(pc, d0.w)
006a28: ff2eff2e     fsave      -$d2(a6)
006a2c: ff2eff2e     fsave      -$d2(a6)
006a30: ffd8         dc.w       $ffd8
006a32: ffd8         dc.w       $ffd8
006a34: ffd8         dc.w       $ffd8
006a36: ff84         dc.w       $ff84
006a38: ffba         dc.w       $ffba
006a3a: ff6aff6a     frestore   -$96(a2)
006a3e: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
006a44: 4e5d         unlk       a5
006a46: 4e75         rts        
006a48: 4e550000     link.w     a5, #$0
006a4c: 48e7c000     movem.l    d0-d1, -(a7)
006a50: 7000         moveq      #$0, d0
006a52: 102f0007     move.b     $7(a7), d0
006a56: 2200         move.l     d0, d1
006a58: 2017         move.l     (a7), d0
006a5a: 6100036a     bsr.w      $6dc6
006a5e: 2017         move.l     (a7), d0
006a60: 610004fe     bsr.w      $6f60
006a64: 4e5d         unlk       a5
006a66: 4e75         rts        
006a68: 4e550000     link.w     a5, #$0
006a6c: 48e78080     movem.l    d0/a0, -(a7)
006a70: 6010         bra.b      $6a82
006a72: 7012         moveq      #$12, d0
006a74: 6006         bra.b      $6a7c
006a76: 7013         moveq      #$13, d0
006a78: 6002         bra.b      $6a7c
006a7a: 700f         moveq      #$f, d0
006a7c: 6100fd4a     bsr.w      $67c8
006a80: 6020         bra.b      $6aa2
006a82: 2057         movea.l    (a7), a0
006a84: 7000         moveq      #$0, d0
006a86: 10280044     move.b     $44(a0), d0
006a8a: 0c4000ff     cmpi.w     #$ff, d0
006a8e: 6212         bhi.b      $6aa2
006a90: 0c00000b     cmpi.b     #$b, d0
006a94: 67dc         beq.b      $6a72
006a96: 0c000016     cmpi.b     #$16, d0
006a9a: 67da         beq.b      $6a76
006a9c: 0c000042     cmpi.b     #$42, d0
006aa0: 67d8         beq.b      $6a7a
006aa2: 4ced0100fffc movem.l    -$4(a5), a0
006aa8: 4e5d         unlk       a5
006aaa: 4e75         rts        
006aac: 4e550000     link.w     a5, #$0
006ab0: 48e78080     movem.l    d0/a0, -(a7)
006ab4: 2057         movea.l    (a7), a0
006ab6: 0c2800010011 cmpi.b     #$1, $11(a0)
006abc: 6618         bne.b      $6ad6
006abe: 2057         movea.l    (a7), a0
006ac0: 0c2800010012 cmpi.b     #$1, $12(a0)
006ac6: 6606         bne.b      $6ace
006ac8: 2017         move.l     (a7), d0
006aca: 614a         bsr.b      $6b16
006acc: 600c         bra.b      $6ada
006ace: 2017         move.l     (a7), d0
006ad0: 610000b4     bsr.w      $6b86
006ad4: 6004         bra.b      $6ada
006ad6: 2017         move.l     (a7), d0
006ad8: 610a         bsr.b      $6ae4
006ada: 4ced0100fffc movem.l    -$4(a5), a0
006ae0: 4e5d         unlk       a5
006ae2: 4e75         rts        
006ae4: 4e550000     link.w     a5, #$0
006ae8: 48e78080     movem.l    d0/a0, -(a7)
006aec: 2057         movea.l    (a7), a0
006aee: 7001         moveq      #$1, d0
006af0: b0a8003c     cmp.l      $3c(a0), d0
006af4: 6e16         bgt.b      $6b0c
006af6: 2057         movea.l    (a7), a0
006af8: 7004         moveq      #$4, d0
006afa: b0a8003c     cmp.l      $3c(a0), d0
006afe: 6d0c         blt.b      $6b0c
006b00: 2017         move.l     (a7), d0
006b02: 610001a0     bsr.w      $6ca4
006b06: 2017         move.l     (a7), d0
006b08: 610001c0     bsr.w      $6cca
006b0c: 4ced0100fffc movem.l    -$4(a5), a0
006b12: 4e5d         unlk       a5
006b14: 4e75         rts        
006b16: 4e550000     link.w     a5, #$0
006b1a: 48e78080     movem.l    d0/a0, -(a7)
006b1e: 2057         movea.l    (a7), a0
006b20: 7001         moveq      #$1, d0
006b22: b0a8003c     cmp.l      $3c(a0), d0
006b26: 6e54         bgt.b      $6b7c
006b28: 2057         movea.l    (a7), a0
006b2a: 7004         moveq      #$4, d0
006b2c: b0a8003c     cmp.l      $3c(a0), d0
006b30: 6d4a         blt.b      $6b7c
006b32: 6028         bra.b      $6b5c
006b34: 2057         movea.l    (a7), a0
006b36: 2028003c     move.l     $3c(a0), d0
006b3a: 5380         subq.l     #$1, d0
006b3c: 41ee989e     lea.l      -$6762(a6), a0
006b40: 600c         bra.b      $6b4e
006b42: 2057         movea.l    (a7), a0
006b44: 2028003c     move.l     $3c(a0), d0
006b48: 5380         subq.l     #$1, d0
006b4a: 41ee98ae     lea.l      -$6752(a6), a0
006b4e: 20300c00     move.l     (a0, d0.l * 4), d0
006b52: 6002         bra.b      $6b56
006b54: 700f         moveq      #$f, d0
006b56: 6100fc70     bsr.w      $67c8
006b5a: 6020         bra.b      $6b7c
006b5c: 2057         movea.l    (a7), a0
006b5e: 7000         moveq      #$0, d0
006b60: 10280044     move.b     $44(a0), d0
006b64: 0c4000ff     cmpi.w     #$ff, d0
006b68: 6212         bhi.b      $6b7c
006b6a: 0c00000b     cmpi.b     #$b, d0
006b6e: 67c4         beq.b      $6b34
006b70: 0c000016     cmpi.b     #$16, d0
006b74: 67cc         beq.b      $6b42
006b76: 0c000042     cmpi.b     #$42, d0
006b7a: 67d8         beq.b      $6b54
006b7c: 4ced0100fffc movem.l    -$4(a5), a0
006b82: 4e5d         unlk       a5
006b84: 4e75         rts        
006b86: 4e550000     link.w     a5, #$0
006b8a: 48e78080     movem.l    d0/a0, -(a7)
006b8e: 2057         movea.l    (a7), a0
006b90: 7001         moveq      #$1, d0
006b92: b0a8003c     cmp.l      $3c(a0), d0
006b96: 6e38         bgt.b      $6bd0
006b98: 2057         movea.l    (a7), a0
006b9a: 7004         moveq      #$4, d0
006b9c: b0a8003c     cmp.l      $3c(a0), d0
006ba0: 6d2e         blt.b      $6bd0
006ba2: 6018         bra.b      $6bbc
006ba4: 2017         move.l     (a7), d0
006ba6: 610000fc     bsr.w      $6ca4
006baa: 7015         moveq      #$15, d0
006bac: 6008         bra.b      $6bb6
006bae: 2017         move.l     (a7), d0
006bb0: 610000f2     bsr.w      $6ca4
006bb4: 701a         moveq      #$1a, d0
006bb6: 6100fc10     bsr.w      $67c8
006bba: 6014         bra.b      $6bd0
006bbc: 2057         movea.l    (a7), a0
006bbe: 7000         moveq      #$0, d0
006bc0: 10280044     move.b     $44(a0), d0
006bc4: 0c40000b     cmpi.w     #$b, d0
006bc8: 67da         beq.b      $6ba4
006bca: 0c400016     cmpi.w     #$16, d0
006bce: 67de         beq.b      $6bae
006bd0: 4ced0100fffc movem.l    -$4(a5), a0
006bd6: 4e5d         unlk       a5
006bd8: 4e75         rts        
006bda: 4e550000     link.w     a5, #$0
006bde: 48e78080     movem.l    d0/a0, -(a7)
006be2: 2057         movea.l    (a7), a0
006be4: 0c28000b0044 cmpi.b     #$b, $44(a0)
006bea: 6610         bne.b      $6bfc
006bec: 2057         movea.l    (a7), a0
006bee: 0c280002006e cmpi.b     #$2, $6e(a0)
006bf4: 6606         bne.b      $6bfc
006bf6: 7043         moveq      #$43, d0
006bf8: 6100fbce     bsr.w      $67c8
006bfc: 2057         movea.l    (a7), a0
006bfe: 0c2800160044 cmpi.b     #$16, $44(a0)
006c04: 6610         bne.b      $6c16
006c06: 2057         movea.l    (a7), a0
006c08: 0c280001006e cmpi.b     #$1, $6e(a0)
006c0e: 6606         bne.b      $6c16
006c10: 7044         moveq      #$44, d0
006c12: 6100fbb4     bsr.w      $67c8
006c16: 4ced0100fffc movem.l    -$4(a5), a0
006c1c: 4e5d         unlk       a5
006c1e: 4e75         rts        
006c20: 4e550000     link.w     a5, #$0
006c24: 48e78080     movem.l    d0/a0, -(a7)
006c28: 2057         movea.l    (a7), a0
006c2a: 0c2800420044 cmpi.b     #$42, $44(a0)
006c30: 6622         bne.b      $6c54
006c32: 700f         moveq      #$f, d0
006c34: 6100fb92     bsr.w      $67c8
006c38: 603a         bra.b      $6c74
006c3a: 701f         moveq      #$1f, d0
006c3c: 600a         bra.b      $6c48
006c3e: 7021         moveq      #$21, d0
006c40: 6006         bra.b      $6c48
006c42: 7022         moveq      #$22, d0
006c44: 6002         bra.b      $6c48
006c46: 7023         moveq      #$23, d0
006c48: 6100fb7e     bsr.w      $67c8
006c4c: 2017         move.l     (a7), d0
006c4e: 6100ff8a     bsr.w      $6bda
006c52: 6020         bra.b      $6c74
006c54: 2057         movea.l    (a7), a0
006c56: 2028003c     move.l     $3c(a0), d0
006c5a: 5380         subq.l     #$1, d0
006c5c: 0c8000000003 cmpi.l     #$3, d0
006c62: 6210         bhi.b      $6c74
006c64: 303b0206     move.w     $6c6c(pc, d0.w), d0
006c68: 4efb0002     jmp        $6c6c(pc, d0.w)
006c6c: ffce         dc.w       $ffce
006c6e: ffd2         dc.w       $ffd2
006c70: ffd6         dc.w       $ffd6
006c72: ffda         dc.w       $ffda
006c74: 4ced0100fffc movem.l    -$4(a5), a0
006c7a: 4e5d         unlk       a5
006c7c: 4e75         rts        
006c7e: 4e550000     link.w     a5, #$0
006c82: 48e78080     movem.l    d0/a0, -(a7)
006c86: 2057         movea.l    (a7), a0
006c88: 20280040     move.l     $40(a0), d0
006c8c: 5380         subq.l     #$1, d0
006c8e: 41ee98be     lea.l      -$6742(a6), a0
006c92: 20300c00     move.l     (a0, d0.l * 4), d0
006c96: 6100fb30     bsr.w      $67c8
006c9a: 4ced0100fffc movem.l    -$4(a5), a0
006ca0: 4e5d         unlk       a5
006ca2: 4e75         rts        
006ca4: 4e550000     link.w     a5, #$0
006ca8: 48e78080     movem.l    d0/a0, -(a7)
006cac: 2057         movea.l    (a7), a0
006cae: 2028003c     move.l     $3c(a0), d0
006cb2: 5380         subq.l     #$1, d0
006cb4: 41ee98ee     lea.l      -$6712(a6), a0
006cb8: 20300c00     move.l     (a0, d0.l * 4), d0
006cbc: 6100fb0a     bsr.w      $67c8
006cc0: 4ced0100fffc movem.l    -$4(a5), a0
006cc6: 4e5d         unlk       a5
006cc8: 4e75         rts        
006cca: 4e550000     link.w     a5, #$0
006cce: 48e78080     movem.l    d0/a0, -(a7)
006cd2: 6024         bra.b      $6cf8
006cd4: 2057         movea.l    (a7), a0
006cd6: 20280040     move.l     $40(a0), d0
006cda: 5380         subq.l     #$1, d0
006cdc: 41ee98fe     lea.l      -$6702(a6), a0
006ce0: 600c         bra.b      $6cee
006ce2: 2057         movea.l    (a7), a0
006ce4: 20280040     move.l     $40(a0), d0
006ce8: 5380         subq.l     #$1, d0
006cea: 41ee990e     lea.l      -$66f2(a6), a0
006cee: 20300c00     move.l     (a0, d0.l * 4), d0
006cf2: 6100fad4     bsr.w      $67c8
006cf6: 6014         bra.b      $6d0c
006cf8: 2057         movea.l    (a7), a0
006cfa: 7000         moveq      #$0, d0
006cfc: 10280044     move.b     $44(a0), d0
006d00: 0c40000b     cmpi.w     #$b, d0
006d04: 67ce         beq.b      $6cd4
006d06: 0c400016     cmpi.w     #$16, d0
006d0a: 67d6         beq.b      $6ce2
006d0c: 4ced0100fffc movem.l    -$4(a5), a0
006d12: 4e5d         unlk       a5
006d14: 4e75         rts        
006d16: 4e550000     link.w     a5, #$0
006d1a: 48e78080     movem.l    d0/a0, -(a7)
006d1e: 2057         movea.l    (a7), a0
006d20: 0c2800020010 cmpi.b     #$2, $10(a0)
006d26: 660c         bne.b      $6d34
006d28: 7005         moveq      #$5, d0
006d2a: 6100fa9c     bsr.w      $67c8
006d2e: 2017         move.l     (a7), d0
006d30: 6100018c     bsr.w      $6ebe
006d34: 2057         movea.l    (a7), a0
006d36: 0c2800030010 cmpi.b     #$3, $10(a0)
006d3c: 6612         bne.b      $6d50
006d3e: 7005         moveq      #$5, d0
006d40: 6100fa86     bsr.w      $67c8
006d44: 2017         move.l     (a7), d0
006d46: 6100ff36     bsr.w      $6c7e
006d4a: 2017         move.l     (a7), d0
006d4c: 6100fe8c     bsr.w      $6bda
006d50: 4ced0100fffc movem.l    -$4(a5), a0
006d56: 4e5d         unlk       a5
006d58: 4e75         rts        
006d5a: 4e550000     link.w     a5, #$0
006d5e: 48e7c080     movem.l    d0-d1/a0, -(a7)
006d62: 4a2f0007     tst.b      $7(a7)
006d66: 672a         beq.b      $6d92
006d68: 7052         moveq      #$52, d0
006d6a: 6100fa5c     bsr.w      $67c8
006d6e: 604c         bra.b      $6dbc
006d70: 7054         moveq      #$54, d0
006d72: 60f6         bra.b      $6d6a
006d74: 7053         moveq      #$53, d0
006d76: 6100fa50     bsr.w      $67c8
006d7a: 7043         moveq      #$43, d0
006d7c: 60ec         bra.b      $6d6a
006d7e: 7053         moveq      #$53, d0
006d80: 6100fa46     bsr.w      $67c8
006d84: 7044         moveq      #$44, d0
006d86: 60e2         bra.b      $6d6a
006d88: 7053         moveq      #$53, d0
006d8a: 6100fa3c     bsr.w      $67c8
006d8e: 7042         moveq      #$42, d0
006d90: 60d8         bra.b      $6d6a
006d92: 2057         movea.l    (a7), a0
006d94: 7000         moveq      #$0, d0
006d96: 10280010     move.b     $10(a0), d0
006d9a: 04400011     subi.w     #$11, d0
006d9e: 0c400007     cmpi.w     #$7, d0
006da2: 6218         bhi.b      $6dbc
006da4: 303b0206     move.w     $6dac(pc, d0.w), d0
006da8: 4efb0002     jmp        $6dac(pc, d0.w)
006dac: ffbc         dc.w       $ffbc
006dae: ffc4         dc.w       $ffc4
006db0: 00100010     ori.b      #$10, (a0)
006db4: 0010ffdc     ori.b      #$dc, (a0)
006db8: ffc8         dc.w       $ffc8
006dba: ffd2         dc.w       $ffd2
006dbc: 4ced0100fffc movem.l    -$4(a5), a0
006dc2: 4e5d         unlk       a5
006dc4: 4e75         rts        
006dc6: 4e550000     link.w     a5, #$0
006dca: 48e7c080     movem.l    d0-d1/a0, -(a7)
006dce: 2017         move.l     (a7), d0
006dd0: 6100fada     bsr.w      $68ac
006dd4: 4a00         tst.b      d0
006dd6: 6712         beq.b      $6dea
006dd8: 7000         moveq      #$0, d0
006dda: 102f0007     move.b     $7(a7), d0
006dde: 2200         move.l     d0, d1
006de0: 2017         move.l     (a7), d0
006de2: 6100ff76     bsr.w      $6d5a
006de6: 600000cc     bra.w      $6eb4
006dea: 2057         movea.l    (a7), a0
006dec: 0c2800370044 cmpi.b     #$37, $44(a0)
006df2: 66000080     bne.w      $6e74
006df6: 600c         bra.b      $6e04
006df8: 7005         moveq      #$5, d0
006dfa: 6002         bra.b      $6dfe
006dfc: 7006         moveq      #$6, d0
006dfe: 6100f9c8     bsr.w      $67c8
006e02: 6020         bra.b      $6e24
006e04: 2057         movea.l    (a7), a0
006e06: 7000         moveq      #$0, d0
006e08: 10280010     move.b     $10(a0), d0
006e0c: 0c4000ff     cmpi.w     #$ff, d0
006e10: 6212         bhi.b      $6e24
006e12: 0c000002     cmpi.b     #$2, d0
006e16: 67e0         beq.b      $6df8
006e18: 0c000003     cmpi.b     #$3, d0
006e1c: 67da         beq.b      $6df8
006e1e: 0c00000a     cmpi.b     #$a, d0
006e22: 67d8         beq.b      $6dfc
006e24: 7014         moveq      #$14, d0
006e26: 6100f9a0     bsr.w      $67c8
006e2a: 60000088     bra.w      $6eb4
006e2e: 2017         move.l     (a7), d0
006e30: 6100fdee     bsr.w      $6c20
006e34: 6000007e     bra.w      $6eb4
006e38: 2017         move.l     (a7), d0
006e3a: 61000160     bsr.w      $6f9c
006e3e: 60000074     bra.w      $6eb4
006e42: 2017         move.l     (a7), d0
006e44: 6100016e     bsr.w      $6fb4
006e48: 6000006a     bra.w      $6eb4
006e4c: 2017         move.l     (a7), d0
006e4e: 6100fc18     bsr.w      $6a68
006e52: 6060         bra.b      $6eb4
006e54: 2017         move.l     (a7), d0
006e56: 6100febe     bsr.w      $6d16
006e5a: 6058         bra.b      $6eb4
006e5c: 2017         move.l     (a7), d0
006e5e: 610000d0     bsr.w      $6f30
006e62: 6050         bra.b      $6eb4
006e64: 2017         move.l     (a7), d0
006e66: 6100009a     bsr.w      $6f02
006e6a: 6048         bra.b      $6eb4
006e6c: 2017         move.l     (a7), d0
006e6e: 6100fc3c     bsr.w      $6aac
006e72: 6040         bra.b      $6eb4
006e74: 2057         movea.l    (a7), a0
006e76: 7000         moveq      #$0, d0
006e78: 10280010     move.b     $10(a0), d0
006e7c: 5540         subq.w     #$2, d0
006e7e: 0c400013     cmpi.w     #$13, d0
006e82: 6230         bhi.b      $6eb4
006e84: 303b0206     move.w     $6e8c(pc, d0.w), d0
006e88: 4efb0002     jmp        $6e8c(pc, d0.w)
006e8c: ffc8         dc.w       $ffc8
006e8e: ffc8         dc.w       $ffc8
006e90: ffb6         dc.w       $ffb6
006e92: ffac         dc.w       $ffac
006e94: ffc0         dc.w       $ffc0
006e96: ffc0         dc.w       $ffc0
006e98: ffc0         dc.w       $ffc0
006e9a: ffc0         dc.w       $ffc0
006e9c: ffd8         dc.w       $ffd8
006e9e: 00280028ffd0 ori.b      #$28, -$30(a0)
006ea4: ffd0         dc.w       $ffd0
006ea6: ffa2         dc.w       $ffa2
006ea8: ffa2         dc.w       $ffa2
006eaa: 00280028ffe0 ori.b      #$28, -$20(a0)
006eb0: ffe0         dc.w       $ffe0
006eb2: ffe0         dc.w       $ffe0
006eb4: 4ced0100fffc movem.l    -$4(a5), a0
006eba: 4e5d         unlk       a5
006ebc: 4e75         rts        
006ebe: 4e550000     link.w     a5, #$0
006ec2: 48e78080     movem.l    d0/a0, -(a7)
006ec6: 6010         bra.b      $6ed8
006ec8: 7015         moveq      #$15, d0
006eca: 6006         bra.b      $6ed2
006ecc: 701a         moveq      #$1a, d0
006ece: 6002         bra.b      $6ed2
006ed0: 700f         moveq      #$f, d0
006ed2: 6100f8f4     bsr.w      $67c8
006ed6: 6020         bra.b      $6ef8
006ed8: 2057         movea.l    (a7), a0
006eda: 7000         moveq      #$0, d0
006edc: 10280044     move.b     $44(a0), d0
006ee0: 0c4000ff     cmpi.w     #$ff, d0
006ee4: 6212         bhi.b      $6ef8
006ee6: 0c00000b     cmpi.b     #$b, d0
006eea: 67dc         beq.b      $6ec8
006eec: 0c000016     cmpi.b     #$16, d0
006ef0: 67da         beq.b      $6ecc
006ef2: 0c000042     cmpi.b     #$42, d0
006ef6: 67d8         beq.b      $6ed0
006ef8: 4ced0100fffc movem.l    -$4(a5), a0
006efe: 4e5d         unlk       a5
006f00: 4e75         rts        
006f02: 4e550000     link.w     a5, #$0
006f06: 48e78080     movem.l    d0/a0, -(a7)
006f0a: 7006         moveq      #$6, d0
006f0c: 6100f8ba     bsr.w      $67c8
006f10: 2057         movea.l    (a7), a0
006f12: 0c2800010011 cmpi.b     #$1, $11(a0)
006f18: 6606         bne.b      $6f20
006f1a: 2017         move.l     (a7), d0
006f1c: 61a0         bsr.b      $6ebe
006f1e: 6006         bra.b      $6f26
006f20: 2017         move.l     (a7), d0
006f22: 6100fda6     bsr.w      $6cca
006f26: 4ced0100fffc movem.l    -$4(a5), a0
006f2c: 4e5d         unlk       a5
006f2e: 4e75         rts        
006f30: 4e550000     link.w     a5, #$0
006f34: 48e78080     movem.l    d0/a0, -(a7)
006f38: 2057         movea.l    (a7), a0
006f3a: 0c28000d0010 cmpi.b     #$d, $10(a0)
006f40: 6608         bne.b      $6f4a
006f42: 2017         move.l     (a7), d0
006f44: 6100ff78     bsr.w      $6ebe
006f48: 600c         bra.b      $6f56
006f4a: 2017         move.l     (a7), d0
006f4c: 6100fd30     bsr.w      $6c7e
006f50: 2017         move.l     (a7), d0
006f52: 6100fc86     bsr.w      $6bda
006f56: 4ced0100fffc movem.l    -$4(a5), a0
006f5c: 4e5d         unlk       a5
006f5e: 4e75         rts        
006f60: 4e550000     link.w     a5, #$0
006f64: 48e78080     movem.l    d0/a0, -(a7)
006f68: 598f         subq.l     #$4, a7
006f6a: 206f0004     movea.l    $4(a7), a0
006f6e: 4a280013     tst.b      $13(a0)
006f72: 671c         beq.b      $6f90
006f74: 206f0004     movea.l    $4(a7), a0
006f78: 7000         moveq      #$0, d0
006f7a: 10280013     move.b     $13(a0), d0
006f7e: 5380         subq.l     #$1, d0
006f80: 2e80         move.l     d0, (a7)
006f82: 2017         move.l     (a7), d0
006f84: 41ee991e     lea.l      -$66e2(a6), a0
006f88: 20300c00     move.l     (a0, d0.l * 4), d0
006f8c: 6100f83a     bsr.w      $67c8
006f90: 588f         addq.l     #$4, a7
006f92: 4ced0100fffc movem.l    -$4(a5), a0
006f98: 4e5d         unlk       a5
006f9a: 4e75         rts        
006f9c: 4e550000     link.w     a5, #$0
006fa0: 48e78000     movem.l    d0, -(a7)
006fa4: 7007         moveq      #$7, d0
006fa6: 6100f820     bsr.w      $67c8
006faa: 2017         move.l     (a7), d0
006fac: 6100ff10     bsr.w      $6ebe
006fb0: 4e5d         unlk       a5
006fb2: 4e75         rts        
006fb4: 4e550000     link.w     a5, #$0
006fb8: 48e78080     movem.l    d0/a0, -(a7)
006fbc: 600c         bra.b      $6fca
006fbe: 7010         moveq      #$10, d0
006fc0: 6002         bra.b      $6fc4
006fc2: 7011         moveq      #$11, d0
006fc4: 6100f802     bsr.w      $67c8
006fc8: 6014         bra.b      $6fde
006fca: 2057         movea.l    (a7), a0
006fcc: 7000         moveq      #$0, d0
006fce: 10280044     move.b     $44(a0), d0
006fd2: 0c40000b     cmpi.w     #$b, d0
006fd6: 67e6         beq.b      $6fbe
006fd8: 0c400016     cmpi.w     #$16, d0
006fdc: 67e4         beq.b      $6fc2
006fde: 4ced0100fffc movem.l    -$4(a5), a0
006fe4: 4e5d         unlk       a5
006fe6: 4e75         rts        
006fe8: 4e550000     link.w     a5, #$0
006fec: 48e7c080     movem.l    d0-d1/a0, -(a7)
006ff0: 518f         subq.l     #$8, a7
006ff2: 42af0004     clr.l      $4(a7)
006ff6: 41d7         lea.l      (a7), a0
006ff8: 2008         move.l     a0, d0
006ffa: 610003e6     bsr.w      $73e2
006ffe: 72ff         moveq      #$ff, d1
007000: b280         cmp.l      d0, d1
007002: 6704         beq.b      $7008
007004: 2f570004     move.l     (a7), $4(a7)
007008: 202f0004     move.l     $4(a7), d0
00700c: 508f         addq.l     #$8, a7
00700e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007014: 4e5d         unlk       a5
007016: 4e75         rts        
007018: 4e550000     link.w     a5, #$0
00701c: 48e7e080     movem.l    d0-d2/a0, -(a7)
007020: 598f         subq.l     #$4, a7
007022: 61c4         bsr.b      $6fe8
007024: 2e80         move.l     d0, (a7)
007026: 700c         moveq      #$c, d0
007028: 4c2f00000004 mulu.l     $4(a7), d0
00702e: 41ee9962     lea.l      -$669e(a6), a0
007032: 2f300808     move.l     $8(a0, d0.l), -(a7)
007036: 48780003     pea.l      $3.w
00703a: 7223         moveq      #$23, d1
00703c: 700c         moveq      #$c, d0
00703e: 4c2f0000000c mulu.l     $c(a7), d0
007044: 41ee9962     lea.l      -$669e(a6), a0
007048: 242f0008     move.l     $8(a7), d2
00704c: d1c0         adda.l     d0, a0
00704e: 20302c00     move.l     (a0, d2.l * 4), d0
007052: 61001be4     bsr.w      $8c38
007056: 508f         addq.l     #$8, a7
007058: 588f         addq.l     #$4, a7
00705a: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
007060: 4e5d         unlk       a5
007062: 4e75         rts        
007064: 4e550000     link.w     a5, #$0
007068: 48e7e080     movem.l    d0-d2/a0, -(a7)
00706c: 4feffff0     lea.l      -$10(a7), a7
007070: 6100ff76     bsr.w      $6fe8
007074: 2e80         move.l     d0, (a7)
007076: 70fe         moveq      #$fe, d0
007078: b0ae99ce     cmp.l      -$6632(a6), d0
00707c: 661c         bne.b      $709a
00707e: 7200         moveq      #$0, d1
007080: 203c00007fb1 move.l     #$7fb1, d0
007086: 61002988     bsr.w      $9a10
00708a: 2d4099ce     move.l     d0, -$6632(a6)
00708e: 4aae99ce     tst.l      -$6632(a6)
007092: 6c06         bge.b      $709a
007094: 7001         moveq      #$1, d0
007096: 2d4099ce     move.l     d0, -$6632(a6)
00709a: 4aae99ce     tst.l      -$6632(a6)
00709e: 672a         beq.b      $70ca
0070a0: 6006         bra.b      $70a8
0070a2: 7001         moveq      #$1, d0
0070a4: 610036aa     bsr.w      $a750
0070a8: 203c00000300 move.l     #$300, d0
0070ae: 4c2e000099ce mulu.l     -$6632(a6), d0
0070b4: 08c0001f     bset.b     #$1f, d0
0070b8: 2200         move.l     d0, d1
0070ba: 7006         moveq      #$6, d0
0070bc: 6100174a     bsr.w      $8808
0070c0: 2f40000c     move.l     d0, $c(a7)
0070c4: 72ff         moveq      #$ff, d1
0070c6: b280         cmp.l      d0, d1
0070c8: 67d8         beq.b      $70a2
0070ca: 7203         moveq      #$3, d1
0070cc: 700c         moveq      #$c, d0
0070ce: 4c2f00000010 mulu.l     $10(a7), d0
0070d4: 41ee9962     lea.l      -$669e(a6), a0
0070d8: 2417         move.l     (a7), d2
0070da: d1c0         adda.l     d0, a0
0070dc: 20302c00     move.l     (a0, d2.l * 4), d0
0070e0: 610019b2     bsr.w      $8a94
0070e4: 2f400004     move.l     d0, $4(a7)
0070e8: 4aae99ce     tst.l      -$6632(a6)
0070ec: 6718         beq.b      $7106
0070ee: 202f000c     move.l     $c(a7), d0
0070f2: 61001708     bsr.w      $87fc
0070f6: 2f400008     move.l     d0, $8(a7)
0070fa: 72ff         moveq      #$ff, d1
0070fc: b280         cmp.l      d0, d1
0070fe: 6606         bne.b      $7106
007100: 70ff         moveq      #$ff, d0
007102: 2f400004     move.l     d0, $4(a7)
007106: 202f0004     move.l     $4(a7), d0
00710a: 4fef0010     lea.l      $10(a7), a7
00710e: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
007114: 4e5d         unlk       a5
007116: 4e75         rts        
007118: 4e550000     link.w     a5, #$0
00711c: 48e7c000     movem.l    d0-d1, -(a7)
007120: 4feffff4     lea.l      -$c(a7), a7
007124: 70fe         moveq      #$fe, d0
007126: b0ae99d2     cmp.l      -$662e(a6), d0
00712a: 661c         bne.b      $7148
00712c: 7200         moveq      #$0, d1
00712e: 203c00007fb1 move.l     #$7fb1, d0
007134: 610028da     bsr.w      $9a10
007138: 2d4099d2     move.l     d0, -$662e(a6)
00713c: 4aae99d2     tst.l      -$662e(a6)
007140: 6c06         bge.b      $7148
007142: 7001         moveq      #$1, d0
007144: 2d4099d2     move.l     d0, -$662e(a6)
007148: 4aae99d2     tst.l      -$662e(a6)
00714c: 672a         beq.b      $7178
00714e: 6006         bra.b      $7156
007150: 7001         moveq      #$1, d0
007152: 610035fc     bsr.w      $a750
007156: 203c00000300 move.l     #$300, d0
00715c: 4c2e000099d2 mulu.l     -$662e(a6), d0
007162: 08c0001f     bset.b     #$1f, d0
007166: 2200         move.l     d0, d1
007168: 7006         moveq      #$6, d0
00716a: 6100169c     bsr.w      $8808
00716e: 2f400008     move.l     d0, $8(a7)
007172: 72ff         moveq      #$ff, d1
007174: b280         cmp.l      d0, d1
007176: 67d8         beq.b      $7150
007178: 202f000c     move.l     $c(a7), d0
00717c: 61002a4a     bsr.w      $9bc8
007180: 2e80         move.l     d0, (a7)
007182: 4aae99d2     tst.l      -$662e(a6)
007186: 6710         beq.b      $7198
007188: 202f0008     move.l     $8(a7), d0
00718c: 6100166e     bsr.w      $87fc
007190: 2f400004     move.l     d0, $4(a7)
007194: 72ff         moveq      #$ff, d1
007196: b280         cmp.l      d0, d1
007198: 2017         move.l     (a7), d0
00719a: 4fef000c     lea.l      $c(a7), a7
00719e: 4ced0002fffc movem.l    -$4(a5), d1
0071a4: 4e5d         unlk       a5
0071a6: 4e75         rts        
0071a8: 2f63302f     move.l     -(a3), $302f(a7)
0071ac: 5f313239     subq.b     #$7, $39(a1, d3.w)
0071b0: 5f2f7069     subq.b     #$7, $7069(a7)
0071b4: 7065         moveq      #$65, d0
0071b6: 2f627369     move.l     -(a2), $7369(a7)
0071ba: 5f63         subq.w     #$7, -(a3)
0071bc: 7472         moveq      #$72, d2
0071be: 6c5f         bge.b      $721f
0071c0: 636d         bls.b      $722f
0071c2: 64002f63     bcc.w      $a127
0071c6: 302f5f31     move.w     $5f31(a7), d0
0071ca: 32395f2f7069 move.w     $5f2f7069.l, d1
0071d0: 7065         moveq      #$65, d0
0071d2: 2f627369     move.l     -(a2), $7369(a7)
0071d6: 5f746573745f6374726c5f63 subq.w     #$7, ([$745f6374, a4], $726c5f63)
0071e2: 6d64         blt.b      $7248
0071e4: 002f63302f5f ori.b      #$30, $2f5f(a7)
0071ea: 3132385f     move.w     $5f(a2, d3.l), -(a0)
0071ee: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
0071f8: 6374         bls.b      $726e
0071fa: 726c         moveq      #$6c, d1
0071fc: 5f63         subq.w     #$7, -(a3)
0071fe: 6f6e         ble.b      $726e
007200: 66002f63     bne.w      $a165
007204: 302f5f31     move.w     $5f31(a7), d0
007208: 32385f2f     move.w     $5f2f.w, d1
00720c: 7069         moveq      #$69, d0
00720e: 7065         moveq      #$65, d0
007210: 2f627369     move.l     -(a2), $7369(a7)
007214: 5f746573745f6374726c5f63 subq.w     #$7, ([$745f6374, a4], $726c5f63)
007220: 6f6e         ble.b      $7290
007222: 66002f63     bne.w      $a187
007226: 302f5f31     move.w     $5f31(a7), d0
00722a: 32395f2f7069 move.w     $5f2f7069.l, d1
007230: 7065         moveq      #$65, d0
007232: 2f627369     move.l     -(a2), $7369(a7)
007236: 5f6e6176     subq.w     #$7, $6176(a6)
00723a: 5f726571002f6330 subq.w     #$7, ([$2f6330, a2])
007242: 2f5f3132     move.l     (a7)+, $3132(a7)
007246: 395f2f70     move.w     (a7)+, $2f70(a4)
00724a: 6970         bvs.b      $72bc
00724c: 652f         bcs.b      $727d
00724e: 6273         bhi.b      $72c3
007250: 695f         bvs.b      $72b1
007252: 7465         moveq      #$65, d2
007254: 7374         .dc.w      $7374
007256: 5f6e6176     subq.w     #$7, $6176(a6)
00725a: 5f726571002f6330 subq.w     #$7, ([$2f6330, a2])
007262: 2f5f3132     move.l     (a7)+, $3132(a7)
007266: 385f         movea.w    (a7)+, a4
007268: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
007272: 6e61         bgt.b      $72d5
007274: 765f         moveq      #$5f, d3
007276: 696e         bvs.b      $72e6
007278: 666f         bne.b      $72e9
00727a: 002f63302f5f ori.b      #$30, $2f5f(a7)
007280: 3132385f     move.w     $5f(a2, d3.l), -(a0)
007284: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
00728e: 7465         moveq      #$65, d2
007290: 7374         .dc.w      $7374
007292: 5f6e6176     subq.w     #$7, $6176(a6)
007296: 5f696e66     subq.w     #$7, $6e66(a1)
00729a: 6f002f63     ble.w      $a1ff
00729e: 302f5f31     move.w     $5f31(a7), d0
0072a2: 32395f2f7069 move.w     $5f2f7069.l, d1
0072a8: 7065         moveq      #$65, d0
0072aa: 2f627369     move.l     -(a2), $7369(a7)
0072ae: 5f6d715f     subq.w     #$7, $715f(a5)
0072b2: 7265         moveq      #$65, d1
0072b4: 7175         .dc.w      $7175
0072b6: 6573         bcs.b      $732b
0072b8: 7400         moveq      #$0, d2
0072ba: 2f63302f     move.l     -(a3), $302f(a7)
0072be: 5f313239     subq.b     #$7, $39(a1, d3.w)
0072c2: 5f2f7069     subq.b     #$7, $7069(a7)
0072c6: 7065         moveq      #$65, d0
0072c8: 2f627369     move.l     -(a2), $7369(a7)
0072cc: 5f746573745f6d715f726571 subq.w     #$7, ([$745f6d71, a4], $5f726571)
0072d8: 7565         .dc.w      $7565
0072da: 7374         .dc.w      $7374
0072dc: 002f63302f5f ori.b      #$30, $2f5f(a7)
0072e2: 3132385f     move.w     $5f(a2, d3.l), -(a0)
0072e6: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
0072f0: 6d71         blt.b      $7363
0072f2: 5f61         subq.w     #$7, -(a1)
0072f4: 6e73         bgt.b      $7369
0072f6: 7765         .dc.w      $7765
0072f8: 7200         moveq      #$0, d1
0072fa: 2f63302f     move.l     -(a3), $302f(a7)
0072fe: 5f313238     subq.b     #$7, $38(a1, d3.w)
007302: 5f2f7069     subq.b     #$7, $7069(a7)
007306: 7065         moveq      #$65, d0
007308: 2f627369     move.l     -(a2), $7369(a7)
00730c: 5f746573745f6d715f616e73 subq.w     #$7, ([$745f6d71, a4], $5f616e73)
007318: 7765         .dc.w      $7765
00731a: 7200         moveq      #$0, d1
00731c: 2f63302f     move.l     -(a3), $302f(a7)
007320: 5f313238     subq.b     #$7, $38(a1, d3.w)
007324: 5f2f7069     subq.b     #$7, $7069(a7)
007328: 7065         moveq      #$65, d0
00732a: 2f627369     move.l     -(a2), $7369(a7)
00732e: 5f766f696365 subq.w     #$7, ([$6365, a6])
007334: 5f6d7367     subq.w     #$7, $7367(a5)
007338: 002f63302f5f ori.b      #$30, $2f5f(a7)
00733e: 3132385f     move.w     $5f(a2, d3.l), -(a0)
007342: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
00734c: 7465         moveq      #$65, d2
00734e: 7374         .dc.w      $7374
007350: 5f766f696365 subq.w     #$7, ([$6365, a6])
007356: 5f6d7367     subq.w     #$7, $7367(a5)
00735a: 002f63302f5f ori.b      #$30, $2f5f(a7)
007360: 3132385f     move.w     $5f(a2, d3.l), -(a0)
007364: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
00736e: 7374         .dc.w      $7374
007370: 6174         bsr.b      $73e6
007372: 7573         .dc.w      $7573
007374: 5f726570002f6330 subq.w     #$7, $2f6330(a2, invalid.w)
00737c: 2f5f3132     move.l     (a7)+, $3132(a7)
007380: 385f         movea.w    (a7)+, a4
007382: 2f706970652f6273695f move.l     $652f6273(a0, invalid.w), $695f(a7)
00738c: 7465         moveq      #$65, d2
00738e: 7374         .dc.w      $7374
007390: 5f737461     subq.w     #$7, $61(a3, d7.w)
007394: 7475         moveq      #$75, d2
007396: 735f         .dc.w      $735f
007398: 7265         moveq      #$65, d1
00739a: 7000         moveq      #$0, d0
00739c: 2f63302f     move.l     -(a3), $302f(a7)
0073a0: 5f313238     subq.b     #$7, $38(a1, d3.w)
0073a4: 5f2f7069     subq.b     #$7, $7069(a7)
0073a8: 7065         moveq      #$65, d0
0073aa: 2f627369     move.l     -(a2), $7369(a7)
0073ae: 5f63         subq.w     #$7, -(a3)
0073b0: 6172         bsr.b      $7424
0073b2: 5f6c6f63     subq.w     #$7, $6f63(a4)
0073b6: 6174         bsr.b      $742c
0073b8: 696f         bvs.b      $7429
0073ba: 6e002f63     bgt.w      $a31f
0073be: 302f5f31     move.w     $5f31(a7), d0
0073c2: 32385f2f     move.w     $5f2f.w, d1
0073c6: 7069         moveq      #$69, d0
0073c8: 7065         moveq      #$65, d0
0073ca: 2f627369     move.l     -(a2), $7369(a7)
0073ce: 5f746573745f6361725f6c6f subq.w     #$7, ([$745f6361, a4], $725f6c6f)
0073da: 6361         bls.b      $743d
0073dc: 7469         moveq      #$69, d2
0073de: 6f6e         ble.b      $744e
0073e0: 00004e55     ori.b      #$55, d0
0073e4: 000048e7     ori.b      #$e7, d0
0073e8: c080         and.l      d0, d0
0073ea: 518f         subq.l     #$8, a7
0073ec: 70ff         moveq      #$ff, d0
0073ee: 2e80         move.l     d0, (a7)
0073f0: 7201         moveq      #$1, d1
0073f2: 41fa00aa     lea.l      $749e(pc), a0
0073f6: 2008         move.l     a0, d0
0073f8: 6100169a     bsr.w      $8a94
0073fc: 2f400004     move.l     d0, $4(a7)
007400: 72ff         moveq      #$ff, d1
007402: b280         cmp.l      d0, d1
007404: 6604         bne.b      $740a
007406: 70ff         moveq      #$ff, d0
007408: 602a         bra.b      $7434
00740a: 48780004     pea.l      $4.w
00740e: 222f000c     move.l     $c(a7), d1
007412: 202f0008     move.l     $8(a7), d0
007416: 61002794     bsr.w      $9bac
00741a: 588f         addq.l     #$4, a7
00741c: 7204         moveq      #$4, d1
00741e: b280         cmp.l      d0, d1
007420: 6604         bne.b      $7426
007422: 7000         moveq      #$0, d0
007424: 6002         bra.b      $7428
007426: 70ff         moveq      #$ff, d0
007428: 2e80         move.l     d0, (a7)
00742a: 202f0004     move.l     $4(a7), d0
00742e: 61002798     bsr.w      $9bc8
007432: 2017         move.l     (a7), d0
007434: 508f         addq.l     #$8, a7
007436: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00743c: 4e5d         unlk       a5
00743e: 4e75         rts        
007440: 4e550000     link.w     a5, #$0
007444: 48e7c080     movem.l    d0-d1/a0, -(a7)
007448: 518f         subq.l     #$8, a7
00744a: 70ff         moveq      #$ff, d0
00744c: 2e80         move.l     d0, (a7)
00744e: 7202         moveq      #$2, d1
007450: 41fa0066     lea.l      $74b8(pc), a0
007454: 2008         move.l     a0, d0
007456: 6100163c     bsr.w      $8a94
00745a: 2f400004     move.l     d0, $4(a7)
00745e: 72ff         moveq      #$ff, d1
007460: b280         cmp.l      d0, d1
007462: 6604         bne.b      $7468
007464: 70ff         moveq      #$ff, d0
007466: 602a         bra.b      $7492
007468: 48780004     pea.l      $4.w
00746c: 222f000c     move.l     $c(a7), d1
007470: 202f0008     move.l     $8(a7), d0
007474: 6100273e     bsr.w      $9bb4
007478: 588f         addq.l     #$4, a7
00747a: 7204         moveq      #$4, d1
00747c: b280         cmp.l      d0, d1
00747e: 6604         bne.b      $7484
007480: 7000         moveq      #$0, d0
007482: 6002         bra.b      $7486
007484: 70ff         moveq      #$ff, d0
007486: 2e80         move.l     d0, (a7)
007488: 202f0004     move.l     $4(a7), d0
00748c: 6100273a     bsr.w      $9bc8
007490: 2017         move.l     (a7), d0
007492: 508f         addq.l     #$8, a7
007494: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00749a: 4e5d         unlk       a5
00749c: 4e75         rts        
00749e: 2f63302f     move.l     -(a3), $302f(a7)
0074a2: 5f313239     subq.b     #$7, $39(a1, d3.w)
0074a6: 5f2f7061     subq.b     #$7, $7061(a7)
0074aa: 636b         bls.b      $7517
0074ac: 2f627377     move.l     -(a2), $7377(a7)
0074b0: 5f63         subq.w     #$7, -(a3)
0074b2: 6f6e         ble.b      $7522
0074b4: 6669         bne.b      $751f
0074b6: 67002f63     beq.w      $a41b
0074ba: 302f5f31     move.w     $5f31(a7), d0
0074be: 32395f2f7061 move.w     $5f2f7061.l, d1
0074c4: 636b         bls.b      $7531
0074c6: 2f627377     move.l     -(a2), $7377(a7)
0074ca: 5f63         subq.w     #$7, -(a3)
0074cc: 6f6e         ble.b      $753c
0074ce: 6669         bne.b      $7539
0074d0: 67004e55     beq.w      $c327
0074d4: 000048e7     ori.b      #$e7, d0
0074d8: c000         and.b      d0, d0
0074da: 4feffff4     lea.l      -$c(a7), a7
0074de: 70fe         moveq      #$fe, d0
0074e0: b0ae99d6     cmp.l      -$662a(a6), d0
0074e4: 661c         bne.b      $7502
0074e6: 7200         moveq      #$0, d1
0074e8: 203c00007fb1 move.l     #$7fb1, d0
0074ee: 61002520     bsr.w      $9a10
0074f2: 2d4099d6     move.l     d0, -$662a(a6)
0074f6: 4aae99d6     tst.l      -$662a(a6)
0074fa: 6c06         bge.b      $7502
0074fc: 7001         moveq      #$1, d0
0074fe: 2d4099d6     move.l     d0, -$662a(a6)
007502: 4aae99d6     tst.l      -$662a(a6)
007506: 672a         beq.b      $7532
007508: 6006         bra.b      $7510
00750a: 7001         moveq      #$1, d0
00750c: 61003242     bsr.w      $a750
007510: 202f0020     move.l     $20(a7), d0
007514: e188         lsl.l      #$8, d0
007516: 4c2e000099d6 mulu.l     -$662a(a6), d0
00751c: 08c0001f     bset.b     #$1f, d0
007520: 2200         move.l     d0, d1
007522: 7006         moveq      #$6, d0
007524: 610012e2     bsr.w      $8808
007528: 2f400008     move.l     d0, $8(a7)
00752c: 72ff         moveq      #$ff, d1
00752e: b280         cmp.l      d0, d1
007530: 67d8         beq.b      $750a
007532: 2f2f001c     move.l     $1c(a7), -(a7)
007536: 222f0014     move.l     $14(a7), d1
00753a: 202f0010     move.l     $10(a7), d0
00753e: 6100266c     bsr.w      $9bac
007542: 588f         addq.l     #$4, a7
007544: 2e80         move.l     d0, (a7)
007546: 4aae99d6     tst.l      -$662a(a6)
00754a: 6710         beq.b      $755c
00754c: 202f0008     move.l     $8(a7), d0
007550: 610012aa     bsr.w      $87fc
007554: 2f400004     move.l     d0, $4(a7)
007558: 72ff         moveq      #$ff, d1
00755a: b280         cmp.l      d0, d1
00755c: 2017         move.l     (a7), d0
00755e: 4fef000c     lea.l      $c(a7), a7
007562: 4e5d         unlk       a5
007564: 4e75         rts        
007566: 4e550000     link.w     a5, #$0
00756a: 48e7c000     movem.l    d0-d1, -(a7)
00756e: 4feffff4     lea.l      -$c(a7), a7
007572: 70fe         moveq      #$fe, d0
007574: b0ae99da     cmp.l      -$6626(a6), d0
007578: 661c         bne.b      $7596
00757a: 7200         moveq      #$0, d1
00757c: 203c00007fb1 move.l     #$7fb1, d0
007582: 6100248c     bsr.w      $9a10
007586: 2d4099da     move.l     d0, -$6626(a6)
00758a: 4aae99da     tst.l      -$6626(a6)
00758e: 6c06         bge.b      $7596
007590: 7001         moveq      #$1, d0
007592: 2d4099da     move.l     d0, -$6626(a6)
007596: 4aae99da     tst.l      -$6626(a6)
00759a: 672a         beq.b      $75c6
00759c: 6006         bra.b      $75a4
00759e: 7001         moveq      #$1, d0
0075a0: 610031ae     bsr.w      $a750
0075a4: 202f0020     move.l     $20(a7), d0
0075a8: e188         lsl.l      #$8, d0
0075aa: 4c2e000099da mulu.l     -$6626(a6), d0
0075b0: 08c0001f     bset.b     #$1f, d0
0075b4: 2200         move.l     d0, d1
0075b6: 7006         moveq      #$6, d0
0075b8: 6100124e     bsr.w      $8808
0075bc: 2f400008     move.l     d0, $8(a7)
0075c0: 72ff         moveq      #$ff, d1
0075c2: b280         cmp.l      d0, d1
0075c4: 67d8         beq.b      $759e
0075c6: 2f2f001c     move.l     $1c(a7), -(a7)
0075ca: 222f0014     move.l     $14(a7), d1
0075ce: 202f0010     move.l     $10(a7), d0
0075d2: 610025e0     bsr.w      $9bb4
0075d6: 588f         addq.l     #$4, a7
0075d8: 2e80         move.l     d0, (a7)
0075da: 4aae99da     tst.l      -$6626(a6)
0075de: 6710         beq.b      $75f0
0075e0: 202f0008     move.l     $8(a7), d0
0075e4: 61001216     bsr.w      $87fc
0075e8: 2f400004     move.l     d0, $4(a7)
0075ec: 72ff         moveq      #$ff, d1
0075ee: b280         cmp.l      d0, d1
0075f0: 2017         move.l     (a7), d0
0075f2: 4fef000c     lea.l      $c(a7), a7
0075f6: 4e5d         unlk       a5
0075f8: 4e75         rts        
0075fa: 4e550000     link.w     a5, #$0
0075fe: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
007602: 5d8f         subq.l     #$6, a7
007604: 70ff         moveq      #$ff, d0
007606: 2f400002     move.l     d0, $2(a7)
00760a: 2f2f0022     move.l     $22(a7), -(a7)
00760e: 48780002     pea.l      $2.w
007612: 41ef0008     lea.l      $8(a7), a0
007616: 2208         move.l     a0, d1
007618: 202f000e     move.l     $e(a7), d0
00761c: 6100feb4     bsr.w      $74d2
007620: 508f         addq.l     #$8, a7
007622: 7202         moveq      #$2, d1
007624: b280         cmp.l      d0, d1
007626: 6600008c     bne.w      $76b4
00762a: 3057         movea.w    (a7), a0
00762c: 226f001e     movea.l    $1e(a7), a1
007630: 2288         move.l     a0, (a1)
007632: 206f001e     movea.l    $1e(a7), a0
007636: 2010         move.l     (a0), d0
007638: 610025d2     bsr.w      $9c0c
00763c: 206f000a     movea.l    $a(a7), a0
007640: 2080         move.l     d0, (a0)
007642: 6740         beq.b      $7684
007644: 2f2f0022     move.l     $22(a7), -(a7)
007648: 206f0022     movea.l    $22(a7), a0
00764c: 2f10         move.l     (a0), -(a7)
00764e: 206f0012     movea.l    $12(a7), a0
007652: 2210         move.l     (a0), d1
007654: 202f000e     move.l     $e(a7), d0
007658: 6100fe78     bsr.w      $74d2
00765c: 508f         addq.l     #$8, a7
00765e: 206f001e     movea.l    $1e(a7), a0
007662: b090         cmp.l      (a0), d0
007664: 6606         bne.b      $766c
007666: 42af0002     clr.l      $2(a7)
00766a: 6048         bra.b      $76b4
00766c: 206f001e     movea.l    $1e(a7), a0
007670: 4290         clr.l      (a0)
007672: 206f000a     movea.l    $a(a7), a0
007676: 2010         move.l     (a0), d0
007678: 6100259e     bsr.w      $9c18
00767c: 206f000a     movea.l    $a(a7), a0
007680: 4290         clr.l      (a0)
007682: 6030         bra.b      $76b4
007684: 558f         subq.l     #$2, a7
007686: 6018         bra.b      $76a0
007688: 2f2f0024     move.l     $24(a7), -(a7)
00768c: 48780001     pea.l      $1.w
007690: 41ef0009     lea.l      $9(a7), a0
007694: 2208         move.l     a0, d1
007696: 202f0010     move.l     $10(a7), d0
00769a: 6100fe36     bsr.w      $74d2
00769e: 508f         addq.l     #$8, a7
0076a0: 206f0020     movea.l    $20(a7), a0
0076a4: 2010         move.l     (a0), d0
0076a6: 5390         subq.l     #$1, (a0)
0076a8: 4a80         tst.l      d0
0076aa: 66dc         bne.b      $7688
0076ac: 206f0020     movea.l    $20(a7), a0
0076b0: 4290         clr.l      (a0)
0076b2: 548f         addq.l     #$2, a7
0076b4: 202f0002     move.l     $2(a7), d0
0076b8: 5c8f         addq.l     #$6, a7
0076ba: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0076c0: 4e5d         unlk       a5
0076c2: 4e75         rts        
0076c4: 4e550000     link.w     a5, #$0
0076c8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0076cc: 5d8f         subq.l     #$6, a7
0076ce: 70ff         moveq      #$ff, d0
0076d0: 2f400002     move.l     d0, $2(a7)
0076d4: 3eaf001c     move.w     $1c(a7), (a7)
0076d8: 2f2f001e     move.l     $1e(a7), -(a7)
0076dc: 48780002     pea.l      $2.w
0076e0: 41ef0008     lea.l      $8(a7), a0
0076e4: 2208         move.l     a0, d1
0076e6: 202f000e     move.l     $e(a7), d0
0076ea: 6100fe7a     bsr.w      $7566
0076ee: 508f         addq.l     #$8, a7
0076f0: 7202         moveq      #$2, d1
0076f2: b280         cmp.l      d0, d1
0076f4: 6620         bne.b      $7716
0076f6: 2f2f001e     move.l     $1e(a7), -(a7)
0076fa: 2f2f001e     move.l     $1e(a7), -(a7)
0076fe: 222f0012     move.l     $12(a7), d1
007702: 202f000e     move.l     $e(a7), d0
007706: 6100fe5e     bsr.w      $7566
00770a: 508f         addq.l     #$8, a7
00770c: b0af001a     cmp.l      $1a(a7), d0
007710: 6604         bne.b      $7716
007712: 42af0002     clr.l      $2(a7)
007716: 202f0002     move.l     $2(a7), d0
00771a: 5c8f         addq.l     #$6, a7
00771c: 4ced0100fffc movem.l    -$4(a5), a0
007722: 4e5d         unlk       a5
007724: 4e75         rts        
007726: 4e550000     link.w     a5, #$0
00772a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00772e: 70ff         moveq      #$ff, d0
007730: b0ae99de     cmp.l      -$6622(a6), d0
007734: 6616         bne.b      $774c
007736: 7203         moveq      #$3, d1
007738: 41fa013a     lea.l      $7874(pc), a0
00773c: 2008         move.l     a0, d0
00773e: 61001354     bsr.w      $8a94
007742: 2d4099de     move.l     d0, -$6622(a6)
007746: 72ff         moveq      #$ff, d1
007748: b280         cmp.l      d0, d1
00774a: 672c         beq.b      $7778
00774c: 42a7         clr.l      -(a7)
00774e: 7200         moveq      #$0, d1
007750: 202e99de     move.l     -$6622(a6), d0
007754: 61002466     bsr.w      $9bbc
007758: 588f         addq.l     #$4, a7
00775a: 4878023c     pea.l      $23c.w
00775e: 222f0004     move.l     $4(a7), d1
007762: 202e99de     move.l     -$6622(a6), d0
007766: 61002444     bsr.w      $9bac
00776a: 588f         addq.l     #$4, a7
00776c: 0c800000023c cmpi.l     #$23c, d0
007772: 6604         bne.b      $7778
007774: 7000         moveq      #$0, d0
007776: 6002         bra.b      $777a
007778: 70ff         moveq      #$ff, d0
00777a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007780: 4e5d         unlk       a5
007782: 4e75         rts        
007784: 4e550000     link.w     a5, #$0
007788: 48e7c080     movem.l    d0-d1/a0, -(a7)
00778c: 70ff         moveq      #$ff, d0
00778e: b0ae99de     cmp.l      -$6622(a6), d0
007792: 6616         bne.b      $77aa
007794: 7203         moveq      #$3, d1
007796: 41fa00f7     lea.l      $788f(pc), a0
00779a: 2008         move.l     a0, d0
00779c: 610012f6     bsr.w      $8a94
0077a0: 2d4099de     move.l     d0, -$6622(a6)
0077a4: 72ff         moveq      #$ff, d1
0077a6: b280         cmp.l      d0, d1
0077a8: 672c         beq.b      $77d6
0077aa: 42a7         clr.l      -(a7)
0077ac: 7200         moveq      #$0, d1
0077ae: 202e99de     move.l     -$6622(a6), d0
0077b2: 61002408     bsr.w      $9bbc
0077b6: 588f         addq.l     #$4, a7
0077b8: 4878023c     pea.l      $23c.w
0077bc: 222f0004     move.l     $4(a7), d1
0077c0: 202e99de     move.l     -$6622(a6), d0
0077c4: 610023ee     bsr.w      $9bb4
0077c8: 588f         addq.l     #$4, a7
0077ca: 0c800000023c cmpi.l     #$23c, d0
0077d0: 6604         bne.b      $77d6
0077d2: 7000         moveq      #$0, d0
0077d4: 6002         bra.b      $77d8
0077d6: 70ff         moveq      #$ff, d0
0077d8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0077de: 4e5d         unlk       a5
0077e0: 4e75         rts        
0077e2: 4e550000     link.w     a5, #$0
0077e6: 48e78000     movem.l    d0, -(a7)
0077ea: 70ff         moveq      #$ff, d0
0077ec: b0ae99de     cmp.l      -$6622(a6), d0
0077f0: 6604         bne.b      $77f6
0077f2: 70ff         moveq      #$ff, d0
0077f4: 6010         bra.b      $7806
0077f6: 202e99de     move.l     -$6622(a6), d0
0077fa: 610023cc     bsr.w      $9bc8
0077fe: 70ff         moveq      #$ff, d0
007800: 2d4099de     move.l     d0, -$6622(a6)
007804: 7000         moveq      #$0, d0
007806: 4e5d         unlk       a5
007808: 4e75         rts        
00780a: 4e550000     link.w     a5, #$0
00780e: 48e7c000     movem.l    d0-d1, -(a7)
007812: 42a7         clr.l      -(a7)
007814: 222e99de     move.l     -$6622(a6), d1
007818: 203c00000200 move.l     #$200, d0
00781e: 610020d2     bsr.w      $98f2
007822: 588f         addq.l     #$4, a7
007824: 4ced0002fffc movem.l    -$4(a5), d1
00782a: 4e5d         unlk       a5
00782c: 4e75         rts        
00782e: 4e550000     link.w     a5, #$0
007832: 48e7c080     movem.l    d0-d1/a0, -(a7)
007836: 70ff         moveq      #$ff, d0
007838: b0ae99de     cmp.l      -$6622(a6), d0
00783c: 661a         bne.b      $7858
00783e: 7203         moveq      #$3, d1
007840: 41fa0068     lea.l      $78aa(pc), a0
007844: 2008         move.l     a0, d0
007846: 6100124c     bsr.w      $8a94
00784a: 2d4099de     move.l     d0, -$6622(a6)
00784e: 72ff         moveq      #$ff, d1
007850: b280         cmp.l      d0, d1
007852: 6604         bne.b      $7858
007854: 70ff         moveq      #$ff, d0
007856: 6012         bra.b      $786a
007858: 42a7         clr.l      -(a7)
00785a: 222e99de     move.l     -$6622(a6), d1
00785e: 203c00000900 move.l     #$900, d0
007864: 61002028     bsr.w      $988e
007868: 588f         addq.l     #$4, a7
00786a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007870: 4e5d         unlk       a5
007872: 4e75         rts        
007874: 2f63302f     move.l     -(a3), $302f(a7)
007878: 5f313239     subq.b     #$7, $39(a1, d3.w)
00787c: 5f2f7061     subq.b     #$7, $7061(a7)
007880: 636b         bls.b      $78ed
007882: 2f646573     move.l     -(a4), $6573(a7)
007886: 7469         moveq      #$69, d2
007888: 6e61         bgt.b      $78eb
00788a: 7469         moveq      #$69, d2
00788c: 6f6e         ble.b      $78fc
00788e: 002f63302f5f ori.b      #$30, $2f5f(a7)
007894: 3132395f     move.w     ([a2]), -(a0)
007898: 2f7061636b2f64657374696e move.l     ([$6b2f, a0], $64657374), $696e(a7)
0078a4: 6174         bsr.b      $791a
0078a6: 696f         bvs.b      $7917
0078a8: 6e002f63     bgt.w      $a80d
0078ac: 302f5f31     move.w     $5f31(a7), d0
0078b0: 32395f2f7061 move.w     $5f2f7061.l, d1
0078b6: 636b         bls.b      $7923
0078b8: 2f646573     move.l     -(a4), $6573(a7)
0078bc: 7469         moveq      #$69, d2
0078be: 6e61         bgt.b      $7921
0078c0: 7469         moveq      #$69, d2
0078c2: 6f6e         ble.b      $7932
0078c4: 00004e55     ori.b      #$55, d0
0078c8: 000048e7     ori.b      #$e7, d0
0078cc: c080         and.l      d0, d0
0078ce: 70ff         moveq      #$ff, d0
0078d0: b0ae99e2     cmp.l      -$661e(a6), d0
0078d4: 6616         bne.b      $78ec
0078d6: 7203         moveq      #$3, d1
0078d8: 41fa0136     lea.l      $7a10(pc), a0
0078dc: 2008         move.l     a0, d0
0078de: 610011b4     bsr.w      $8a94
0078e2: 2d4099e2     move.l     d0, -$661e(a6)
0078e6: 72ff         moveq      #$ff, d1
0078e8: b280         cmp.l      d0, d1
0078ea: 672a         beq.b      $7916
0078ec: 42a7         clr.l      -(a7)
0078ee: 7200         moveq      #$0, d1
0078f0: 202e99e2     move.l     -$661e(a6), d0
0078f4: 610022c6     bsr.w      $9bbc
0078f8: 588f         addq.l     #$4, a7
0078fa: 4878003a     pea.l      $3a.w
0078fe: 222f0004     move.l     $4(a7), d1
007902: 202e99e2     move.l     -$661e(a6), d0
007906: 610022a4     bsr.w      $9bac
00790a: 588f         addq.l     #$4, a7
00790c: 723a         moveq      #$3a, d1
00790e: b280         cmp.l      d0, d1
007910: 6604         bne.b      $7916
007912: 7000         moveq      #$0, d0
007914: 6002         bra.b      $7918
007916: 70ff         moveq      #$ff, d0
007918: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00791e: 4e5d         unlk       a5
007920: 4e75         rts        
007922: 4e550000     link.w     a5, #$0
007926: 48e7c080     movem.l    d0-d1/a0, -(a7)
00792a: 70ff         moveq      #$ff, d0
00792c: b0ae99e2     cmp.l      -$661e(a6), d0
007930: 6616         bne.b      $7948
007932: 7203         moveq      #$3, d1
007934: 41fa00f2     lea.l      $7a28(pc), a0
007938: 2008         move.l     a0, d0
00793a: 61001158     bsr.w      $8a94
00793e: 2d4099e2     move.l     d0, -$661e(a6)
007942: 72ff         moveq      #$ff, d1
007944: b280         cmp.l      d0, d1
007946: 672a         beq.b      $7972
007948: 42a7         clr.l      -(a7)
00794a: 7200         moveq      #$0, d1
00794c: 202e99e2     move.l     -$661e(a6), d0
007950: 6100226a     bsr.w      $9bbc
007954: 588f         addq.l     #$4, a7
007956: 4878003a     pea.l      $3a.w
00795a: 222f0004     move.l     $4(a7), d1
00795e: 202e99e2     move.l     -$661e(a6), d0
007962: 61002250     bsr.w      $9bb4
007966: 588f         addq.l     #$4, a7
007968: 723a         moveq      #$3a, d1
00796a: b280         cmp.l      d0, d1
00796c: 6604         bne.b      $7972
00796e: 7000         moveq      #$0, d0
007970: 6002         bra.b      $7974
007972: 70ff         moveq      #$ff, d0
007974: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00797a: 4e5d         unlk       a5
00797c: 4e75         rts        
00797e: 4e550000     link.w     a5, #$0
007982: 48e78000     movem.l    d0, -(a7)
007986: 70ff         moveq      #$ff, d0
007988: b0ae99e2     cmp.l      -$661e(a6), d0
00798c: 6604         bne.b      $7992
00798e: 70ff         moveq      #$ff, d0
007990: 6010         bra.b      $79a2
007992: 202e99e2     move.l     -$661e(a6), d0
007996: 61002230     bsr.w      $9bc8
00799a: 70ff         moveq      #$ff, d0
00799c: 2d4099e2     move.l     d0, -$661e(a6)
0079a0: 7000         moveq      #$0, d0
0079a2: 4e5d         unlk       a5
0079a4: 4e75         rts        
0079a6: 4e550000     link.w     a5, #$0
0079aa: 48e7c000     movem.l    d0-d1, -(a7)
0079ae: 42a7         clr.l      -(a7)
0079b0: 222e99e2     move.l     -$661e(a6), d1
0079b4: 203c00000200 move.l     #$200, d0
0079ba: 61001f36     bsr.w      $98f2
0079be: 588f         addq.l     #$4, a7
0079c0: 4ced0002fffc movem.l    -$4(a5), d1
0079c6: 4e5d         unlk       a5
0079c8: 4e75         rts        
0079ca: 4e550000     link.w     a5, #$0
0079ce: 48e7c080     movem.l    d0-d1/a0, -(a7)
0079d2: 70ff         moveq      #$ff, d0
0079d4: b0ae99e2     cmp.l      -$661e(a6), d0
0079d8: 661a         bne.b      $79f4
0079da: 7203         moveq      #$3, d1
0079dc: 41fa0062     lea.l      $7a40(pc), a0
0079e0: 2008         move.l     a0, d0
0079e2: 610010b0     bsr.w      $8a94
0079e6: 2d4099e2     move.l     d0, -$661e(a6)
0079ea: 72ff         moveq      #$ff, d1
0079ec: b280         cmp.l      d0, d1
0079ee: 6604         bne.b      $79f4
0079f0: 70ff         moveq      #$ff, d0
0079f2: 6012         bra.b      $7a06
0079f4: 42a7         clr.l      -(a7)
0079f6: 222e99e2     move.l     -$661e(a6), d1
0079fa: 203c00000900 move.l     #$900, d0
007a00: 61001e8c     bsr.w      $988e
007a04: 588f         addq.l     #$4, a7
007a06: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007a0c: 4e5d         unlk       a5
007a0e: 4e75         rts        
007a10: 2f63302f     move.l     -(a3), $302f(a7)
007a14: 5f313239     subq.b     #$7, $39(a1, d3.w)
007a18: 5f2f7061     subq.b     #$7, $7061(a7)
007a1c: 636b         bls.b      $7a89
007a1e: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
007a2c: 5f313239     subq.b     #$7, $39(a1, d3.w)
007a30: 5f2f7061     subq.b     #$7, $7061(a7)
007a34: 636b         bls.b      $7aa1
007a36: 2f706f736974696f6e002f63302f move.l     ([$6974696f, a0], $6e002f63), $302f(a7)
007a44: 5f313239     subq.b     #$7, $39(a1, d3.w)
007a48: 5f2f7061     subq.b     #$7, $7061(a7)
007a4c: 636b         bls.b      $7ab9
007a4e: 2f706f736974696f6e004e550000 move.l     ([$6974696f, a0], $6e004e55), $0(a7)
007a5c: 48e7c080     movem.l    d0-d1/a0, -(a7)
007a60: 70ff         moveq      #$ff, d0
007a62: b0ae99e6     cmp.l      -$661a(a6), d0
007a66: 6616         bne.b      $7a7e
007a68: 7203         moveq      #$3, d1
007a6a: 41fa0136     lea.l      $7ba2(pc), a0
007a6e: 2008         move.l     a0, d0
007a70: 61001022     bsr.w      $8a94
007a74: 2d4099e6     move.l     d0, -$661a(a6)
007a78: 72ff         moveq      #$ff, d1
007a7a: b280         cmp.l      d0, d1
007a7c: 672a         beq.b      $7aa8
007a7e: 42a7         clr.l      -(a7)
007a80: 7200         moveq      #$0, d1
007a82: 202e99e6     move.l     -$661a(a6), d0
007a86: 61002134     bsr.w      $9bbc
007a8a: 588f         addq.l     #$4, a7
007a8c: 48780004     pea.l      $4.w
007a90: 222f0004     move.l     $4(a7), d1
007a94: 202e99e6     move.l     -$661a(a6), d0
007a98: 61002112     bsr.w      $9bac
007a9c: 588f         addq.l     #$4, a7
007a9e: 7204         moveq      #$4, d1
007aa0: b280         cmp.l      d0, d1
007aa2: 6604         bne.b      $7aa8
007aa4: 7000         moveq      #$0, d0
007aa6: 6002         bra.b      $7aaa
007aa8: 70ff         moveq      #$ff, d0
007aaa: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007ab0: 4e5d         unlk       a5
007ab2: 4e75         rts        
007ab4: 4e550000     link.w     a5, #$0
007ab8: 48e7c080     movem.l    d0-d1/a0, -(a7)
007abc: 70ff         moveq      #$ff, d0
007abe: b0ae99e6     cmp.l      -$661a(a6), d0
007ac2: 6616         bne.b      $7ada
007ac4: 7203         moveq      #$3, d1
007ac6: 41fa00f0     lea.l      $7bb8(pc), a0
007aca: 2008         move.l     a0, d0
007acc: 61000fc6     bsr.w      $8a94
007ad0: 2d4099e6     move.l     d0, -$661a(a6)
007ad4: 72ff         moveq      #$ff, d1
007ad6: b280         cmp.l      d0, d1
007ad8: 672a         beq.b      $7b04
007ada: 42a7         clr.l      -(a7)
007adc: 7200         moveq      #$0, d1
007ade: 202e99e6     move.l     -$661a(a6), d0
007ae2: 610020d8     bsr.w      $9bbc
007ae6: 588f         addq.l     #$4, a7
007ae8: 48780004     pea.l      $4.w
007aec: 222f0004     move.l     $4(a7), d1
007af0: 202e99e6     move.l     -$661a(a6), d0
007af4: 610020be     bsr.w      $9bb4
007af8: 588f         addq.l     #$4, a7
007afa: 7204         moveq      #$4, d1
007afc: b280         cmp.l      d0, d1
007afe: 6604         bne.b      $7b04
007b00: 7000         moveq      #$0, d0
007b02: 6002         bra.b      $7b06
007b04: 70ff         moveq      #$ff, d0
007b06: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007b0c: 4e5d         unlk       a5
007b0e: 4e75         rts        
007b10: 4e550000     link.w     a5, #$0
007b14: 48e78000     movem.l    d0, -(a7)
007b18: 70ff         moveq      #$ff, d0
007b1a: b0ae99e6     cmp.l      -$661a(a6), d0
007b1e: 6604         bne.b      $7b24
007b20: 70ff         moveq      #$ff, d0
007b22: 6010         bra.b      $7b34
007b24: 202e99e6     move.l     -$661a(a6), d0
007b28: 6100209e     bsr.w      $9bc8
007b2c: 70ff         moveq      #$ff, d0
007b2e: 2d4099e6     move.l     d0, -$661a(a6)
007b32: 7000         moveq      #$0, d0
007b34: 4e5d         unlk       a5
007b36: 4e75         rts        
007b38: 4e550000     link.w     a5, #$0
007b3c: 48e7c000     movem.l    d0-d1, -(a7)
007b40: 42a7         clr.l      -(a7)
007b42: 222e99e6     move.l     -$661a(a6), d1
007b46: 203c00000200 move.l     #$200, d0
007b4c: 61001da4     bsr.w      $98f2
007b50: 588f         addq.l     #$4, a7
007b52: 4ced0002fffc movem.l    -$4(a5), d1
007b58: 4e5d         unlk       a5
007b5a: 4e75         rts        
007b5c: 4e550000     link.w     a5, #$0
007b60: 48e7c080     movem.l    d0-d1/a0, -(a7)
007b64: 70ff         moveq      #$ff, d0
007b66: b0ae99e6     cmp.l      -$661a(a6), d0
007b6a: 661a         bne.b      $7b86
007b6c: 7203         moveq      #$3, d1
007b6e: 41fa005e     lea.l      $7bce(pc), a0
007b72: 2008         move.l     a0, d0
007b74: 61000f1e     bsr.w      $8a94
007b78: 2d4099e6     move.l     d0, -$661a(a6)
007b7c: 72ff         moveq      #$ff, d1
007b7e: b280         cmp.l      d0, d1
007b80: 6604         bne.b      $7b86
007b82: 70ff         moveq      #$ff, d0
007b84: 6012         bra.b      $7b98
007b86: 42a7         clr.l      -(a7)
007b88: 222e99e6     move.l     -$661a(a6), d1
007b8c: 203c00000900 move.l     #$900, d0
007b92: 61001cfa     bsr.w      $988e
007b96: 588f         addq.l     #$4, a7
007b98: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007b9e: 4e5d         unlk       a5
007ba0: 4e75         rts        
007ba2: 2f63302f     move.l     -(a3), $302f(a7)
007ba6: 5f313239     subq.b     #$7, $39(a1, d3.w)
007baa: 5f2f7061     subq.b     #$7, $7061(a7)
007bae: 636b         bls.b      $7c1b
007bb0: 2f6d6f74696f move.l     $6f74(a5), $696f(a7)
007bb6: 6e002f63     bgt.w      $ab1b
007bba: 302f5f31     move.w     $5f31(a7), d0
007bbe: 32395f2f7061 move.w     $5f2f7061.l, d1
007bc4: 636b         bls.b      $7c31
007bc6: 2f6d6f74696f move.l     $6f74(a5), $696f(a7)
007bcc: 6e002f63     bgt.w      $ab31
007bd0: 302f5f31     move.w     $5f31(a7), d0
007bd4: 32395f2f7061 move.w     $5f2f7061.l, d1
007bda: 636b         bls.b      $7c47
007bdc: 2f6d6f74696f move.l     $6f74(a5), $696f(a7)
007be2: 6e004e55     bgt.w      $ca39
007be6: 000048e7     ori.b      #$e7, d0
007bea: c080         and.l      d0, d0
007bec: 70ff         moveq      #$ff, d0
007bee: b0ae99ea     cmp.l      -$6616(a6), d0
007bf2: 6616         bne.b      $7c0a
007bf4: 7203         moveq      #$3, d1
007bf6: 41fa0136     lea.l      $7d2e(pc), a0
007bfa: 2008         move.l     a0, d0
007bfc: 61000e96     bsr.w      $8a94
007c00: 2d4099ea     move.l     d0, -$6616(a6)
007c04: 72ff         moveq      #$ff, d1
007c06: b280         cmp.l      d0, d1
007c08: 672a         beq.b      $7c34
007c0a: 42a7         clr.l      -(a7)
007c0c: 7200         moveq      #$0, d1
007c0e: 202e99ea     move.l     -$6616(a6), d0
007c12: 61001fa8     bsr.w      $9bbc
007c16: 588f         addq.l     #$4, a7
007c18: 4878000a     pea.l      $a.w
007c1c: 222f0004     move.l     $4(a7), d1
007c20: 202e99ea     move.l     -$6616(a6), d0
007c24: 61001f86     bsr.w      $9bac
007c28: 588f         addq.l     #$4, a7
007c2a: 720a         moveq      #$a, d1
007c2c: b280         cmp.l      d0, d1
007c2e: 6604         bne.b      $7c34
007c30: 7000         moveq      #$0, d0
007c32: 6002         bra.b      $7c36
007c34: 70ff         moveq      #$ff, d0
007c36: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007c3c: 4e5d         unlk       a5
007c3e: 4e75         rts        
007c40: 4e550000     link.w     a5, #$0
007c44: 48e7c080     movem.l    d0-d1/a0, -(a7)
007c48: 70ff         moveq      #$ff, d0
007c4a: b0ae99ea     cmp.l      -$6616(a6), d0
007c4e: 6616         bne.b      $7c66
007c50: 7203         moveq      #$3, d1
007c52: 41fa00f1     lea.l      $7d45(pc), a0
007c56: 2008         move.l     a0, d0
007c58: 61000e3a     bsr.w      $8a94
007c5c: 2d4099ea     move.l     d0, -$6616(a6)
007c60: 72ff         moveq      #$ff, d1
007c62: b280         cmp.l      d0, d1
007c64: 672a         beq.b      $7c90
007c66: 42a7         clr.l      -(a7)
007c68: 7200         moveq      #$0, d1
007c6a: 202e99ea     move.l     -$6616(a6), d0
007c6e: 61001f4c     bsr.w      $9bbc
007c72: 588f         addq.l     #$4, a7
007c74: 4878000a     pea.l      $a.w
007c78: 222f0004     move.l     $4(a7), d1
007c7c: 202e99ea     move.l     -$6616(a6), d0
007c80: 61001f32     bsr.w      $9bb4
007c84: 588f         addq.l     #$4, a7
007c86: 720a         moveq      #$a, d1
007c88: b280         cmp.l      d0, d1
007c8a: 6604         bne.b      $7c90
007c8c: 7000         moveq      #$0, d0
007c8e: 6002         bra.b      $7c92
007c90: 70ff         moveq      #$ff, d0
007c92: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007c98: 4e5d         unlk       a5
007c9a: 4e75         rts        
007c9c: 4e550000     link.w     a5, #$0
007ca0: 48e78000     movem.l    d0, -(a7)
007ca4: 70ff         moveq      #$ff, d0
007ca6: b0ae99ea     cmp.l      -$6616(a6), d0
007caa: 6604         bne.b      $7cb0
007cac: 70ff         moveq      #$ff, d0
007cae: 6010         bra.b      $7cc0
007cb0: 202e99ea     move.l     -$6616(a6), d0
007cb4: 61001f12     bsr.w      $9bc8
007cb8: 70ff         moveq      #$ff, d0
007cba: 2d4099ea     move.l     d0, -$6616(a6)
007cbe: 7000         moveq      #$0, d0
007cc0: 4e5d         unlk       a5
007cc2: 4e75         rts        
007cc4: 4e550000     link.w     a5, #$0
007cc8: 48e7c000     movem.l    d0-d1, -(a7)
007ccc: 42a7         clr.l      -(a7)
007cce: 222e99ea     move.l     -$6616(a6), d1
007cd2: 203c00000200 move.l     #$200, d0
007cd8: 61001c18     bsr.w      $98f2
007cdc: 588f         addq.l     #$4, a7
007cde: 4ced0002fffc movem.l    -$4(a5), d1
007ce4: 4e5d         unlk       a5
007ce6: 4e75         rts        
007ce8: 4e550000     link.w     a5, #$0
007cec: 48e7c080     movem.l    d0-d1/a0, -(a7)
007cf0: 70ff         moveq      #$ff, d0
007cf2: b0ae99ea     cmp.l      -$6616(a6), d0
007cf6: 661a         bne.b      $7d12
007cf8: 7203         moveq      #$3, d1
007cfa: 41fa0060     lea.l      $7d5c(pc), a0
007cfe: 2008         move.l     a0, d0
007d00: 61000d92     bsr.w      $8a94
007d04: 2d4099ea     move.l     d0, -$6616(a6)
007d08: 72ff         moveq      #$ff, d1
007d0a: b280         cmp.l      d0, d1
007d0c: 6604         bne.b      $7d12
007d0e: 70ff         moveq      #$ff, d0
007d10: 6012         bra.b      $7d24
007d12: 42a7         clr.l      -(a7)
007d14: 222e99ea     move.l     -$6616(a6), d1
007d18: 203c00000900 move.l     #$900, d0
007d1e: 61001b6e     bsr.w      $988e
007d22: 588f         addq.l     #$4, a7
007d24: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007d2a: 4e5d         unlk       a5
007d2c: 4e75         rts        
007d2e: 2f63302f     move.l     -(a3), $302f(a7)
007d32: 5f313239     subq.b     #$7, $39(a1, d3.w)
007d36: 5f2f7061     subq.b     #$7, $7061(a7)
007d3a: 636b         bls.b      $7da7
007d3c: 2f67645f     move.l     -(a7), $645f(a7)
007d40: 696e         bvs.b      $7db0
007d42: 666f         bne.b      $7db3
007d44: 002f63302f5f ori.b      #$30, $2f5f(a7)
007d4a: 3132395f     move.w     ([a2]), -(a0)
007d4e: 2f7061636b2f67645f696e66 move.l     ([$6b2f, a0], $67645f69), $6e66(a7)
007d5a: 6f002f63     ble.w      $acbf
007d5e: 302f5f31     move.w     $5f31(a7), d0
007d62: 32395f2f7061 move.w     $5f2f7061.l, d1
007d68: 636b         bls.b      $7dd5
007d6a: 2f67645f     move.l     -(a7), $645f(a7)
007d6e: 696e         bvs.b      $7dde
007d70: 666f         bne.b      $7de1
007d72: 00004e55     ori.b      #$55, d0
007d76: 000048e7     ori.b      #$e7, d0
007d7a: 8080         or.l       d0, d0
007d7c: 202e99f2     move.l     -$660e(a6), d0
007d80: 52ae99f2     addq.l     #$1, -$660e(a6)
007d84: 41ee89b8     lea.l      -$7648(a6), a0
007d88: 21970c00     move.l     (a7), (a0, d0.l * 4)
007d8c: 703f         moveq      #$3f, d0
007d8e: b0ae99f2     cmp.l      -$660e(a6), d0
007d92: 6c04         bge.b      $7d98
007d94: 42ae99f2     clr.l      -$660e(a6)
007d98: 4ced0100fffc movem.l    -$4(a5), a0
007d9e: 4e5d         unlk       a5
007da0: 4e75         rts        
007da2: 4e550000     link.w     a5, #$0
007da6: 48e78080     movem.l    d0/a0, -(a7)
007daa: 598f         subq.l     #$4, a7
007dac: 202e99ee     move.l     -$6612(a6), d0
007db0: b0ae99f2     cmp.l      -$660e(a6), d0
007db4: 6604         bne.b      $7dba
007db6: 70ff         moveq      #$ff, d0
007db8: 601e         bra.b      $7dd8
007dba: 202e99ee     move.l     -$6612(a6), d0
007dbe: 52ae99ee     addq.l     #$1, -$6612(a6)
007dc2: 41ee89b8     lea.l      -$7648(a6), a0
007dc6: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
007dca: 703f         moveq      #$3f, d0
007dcc: b0ae99ee     cmp.l      -$6612(a6), d0
007dd0: 6c04         bge.b      $7dd6
007dd2: 42ae99ee     clr.l      -$6612(a6)
007dd6: 2017         move.l     (a7), d0
007dd8: 588f         addq.l     #$4, a7
007dda: 4ced0100fffc movem.l    -$4(a5), a0
007de0: 4e5d         unlk       a5
007de2: 4e75         rts        
007de4: 4e550000     link.w     a5, #$0
007de8: 48e78000     movem.l    d0, -(a7)
007dec: 4e5d         unlk       a5
007dee: 4e75         rts        
007df0: 4e550000     link.w     a5, #$0
007df4: 48e78000     movem.l    d0, -(a7)
007df8: 202e99ee     move.l     -$6612(a6), d0
007dfc: b0ae99f2     cmp.l      -$660e(a6), d0
007e00: 6604         bne.b      $7e06
007e02: 7001         moveq      #$1, d0
007e04: 6002         bra.b      $7e08
007e06: 7000         moveq      #$0, d0
007e08: 4e5d         unlk       a5
007e0a: 4e75         rts        
007e0c: 4e550000     link.w     a5, #$0
007e10: 48e78000     movem.l    d0, -(a7)
007e14: 2017         move.l     (a7), d0
007e16: 6100169c     bsr.w      $94b4
007e1a: 7001         moveq      #$1, d0
007e1c: 4e5d         unlk       a5
007e1e: 4e75         rts        
007e20: 4e550000     link.w     a5, #$0
007e24: 48e78000     movem.l    d0, -(a7)
007e28: 7001         moveq      #$1, d0
007e2a: 4e5d         unlk       a5
007e2c: 4e75         rts        
007e2e: 4e550000     link.w     a5, #$0
007e32: 48e78800     movem.l    d0/d4, -(a7)
007e36: 610008e2     bsr.w      $871a
007e3a: 6100ff66     bsr.w      $7da2
007e3e: 2800         move.l     d0, d4
007e40: 6c0c         bge.b      $7e4e
007e42: 7000         moveq      #$0, d0
007e44: 6100290a     bsr.w      $a750
007e48: 6100ff58     bsr.w      $7da2
007e4c: 2800         move.l     d0, d4
007e4e: 610008f6     bsr.w      $8746
007e52: 2004         move.l     d4, d0
007e54: 4ced0010fffc movem.l    -$4(a5), d4
007e5a: 4e5d         unlk       a5
007e5c: 4e75         rts        
007e5e: 4e550000     link.w     a5, #$0
007e62: 48e7c080     movem.l    d0-d1/a0, -(a7)
007e66: 4feffff6     lea.l      -$a(a7), a7
007e6a: 486f0002     pea.l      $2(a7)
007e6e: 486f0004     pea.l      $4(a7)
007e72: 486f000e     pea.l      $e(a7)
007e76: 222f0016     move.l     $16(a7), d1
007e7a: 7003         moveq      #$3, d0
007e7c: 61002c5c     bsr.w      $aada
007e80: 4fef000c     lea.l      $c(a7), a7
007e84: 72ff         moveq      #$ff, d1
007e86: b280         cmp.l      d0, d1
007e88: 6616         bne.b      $7ea0
007e8a: 2f2e800c     move.l     -$7ff4(a6), -(a7)
007e8e: 41fa01ce     lea.l      $805e(pc), a0
007e92: 2208         move.l     a0, d1
007e94: 7000         moveq      #$0, d0
007e96: 61001ce4     bsr.w      $9b7c
007e9a: 588f         addq.l     #$4, a7
007e9c: 7000         moveq      #$0, d0
007e9e: 6012         bra.b      $7eb2
007ea0: 203c0000ffff move.l     #$ffff, d0
007ea6: c0af0002     and.l      $2(a7), d0
007eaa: 206f000e     movea.l    $e(a7), a0
007eae: 2080         move.l     d0, (a0)
007eb0: 7001         moveq      #$1, d0
007eb2: 4fef000a     lea.l      $a(a7), a7
007eb6: 4ced0100fffc movem.l    -$4(a5), a0
007ebc: 4e5d         unlk       a5
007ebe: 4e75         rts        
007ec0: 4e550000     link.w     a5, #$0
007ec4: 48e7c080     movem.l    d0-d1/a0, -(a7)
007ec8: 4feffff4     lea.l      -$c(a7), a7
007ecc: 41d7         lea.l      (a7), a0
007ece: 2208         move.l     a0, d1
007ed0: 41ef0004     lea.l      $4(a7), a0
007ed4: 2008         move.l     a0, d0
007ed6: 6100ff86     bsr.w      $7e5e
007eda: 2f400008     move.l     d0, $8(a7)
007ede: 202f0004     move.l     $4(a7), d0
007ee2: 90ae99f6     sub.l      -$660a(a6), d0
007ee6: 4c2e00008ab8 mulu.l     -$7548(a6), d0
007eec: d097         add.l      (a7), d0
007eee: 206f000c     movea.l    $c(a7), a0
007ef2: 2080         move.l     d0, (a0)
007ef4: 202f0008     move.l     $8(a7), d0
007ef8: 4fef000c     lea.l      $c(a7), a7
007efc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007f02: 4e5d         unlk       a5
007f04: 4e75         rts        
007f06: 4e550000     link.w     a5, #$0
007f0a: 48e7c080     movem.l    d0-d1/a0, -(a7)
007f0e: 4fefffee     lea.l      -$12(a7), a7
007f12: 70ff         moveq      #$ff, d0
007f14: b0ae99f6     cmp.l      -$660a(a6), d0
007f18: 670c         beq.b      $7f26
007f1a: 206f0012     movea.l    $12(a7), a0
007f1e: 20ae99f6     move.l     -$660a(a6), (a0)
007f22: 7001         moveq      #$1, d0
007f24: 6064         bra.b      $7f8a
007f26: 486f0002     pea.l      $2(a7)
007f2a: 486f0004     pea.l      $4(a7)
007f2e: 486f0012     pea.l      $12(a7)
007f32: 41ef0012     lea.l      $12(a7), a0
007f36: 2208         move.l     a0, d1
007f38: 7003         moveq      #$3, d0
007f3a: 61002b9e     bsr.w      $aada
007f3e: 4fef000c     lea.l      $c(a7), a7
007f42: 72ff         moveq      #$ff, d1
007f44: b280         cmp.l      d0, d1
007f46: 6616         bne.b      $7f5e
007f48: 2f2e800c     move.l     -$7ff4(a6), -(a7)
007f4c: 41fa0124     lea.l      $8072(pc), a0
007f50: 2208         move.l     a0, d1
007f52: 7000         moveq      #$0, d0
007f54: 61001c26     bsr.w      $9b7c
007f58: 588f         addq.l     #$4, a7
007f5a: 7000         moveq      #$0, d0
007f5c: 602c         bra.b      $7f8a
007f5e: 7010         moveq      #$10, d0
007f60: 222f0002     move.l     $2(a7), d1
007f64: e0a1         asr.l      d0, d1
007f66: 2d418ab8     move.l     d1, -$7548(a6)
007f6a: 41ef0002     lea.l      $2(a7), a0
007f6e: 2208         move.l     a0, d1
007f70: 41ee99f6     lea.l      -$660a(a6), a0
007f74: 2008         move.l     a0, d0
007f76: 6100fee6     bsr.w      $7e5e
007f7a: 2f40000e     move.l     d0, $e(a7)
007f7e: 206f0012     movea.l    $12(a7), a0
007f82: 20ae99f6     move.l     -$660a(a6), (a0)
007f86: 202f000e     move.l     $e(a7), d0
007f8a: 4fef0012     lea.l      $12(a7), a7
007f8e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
007f94: 4e5d         unlk       a5
007f96: 4e75         rts        
007f98: 4e550000     link.w     a5, #$0
007f9c: 48e78080     movem.l    d0/a0, -(a7)
007fa0: 598f         subq.l     #$4, a7
007fa2: 70ff         moveq      #$ff, d0
007fa4: b0ae99f6     cmp.l      -$660a(a6), d0
007fa8: 6604         bne.b      $7fae
007faa: 7000         moveq      #$0, d0
007fac: 600e         bra.b      $7fbc
007fae: 41ee99fa     lea.l      -$6606(a6), a0
007fb2: 2008         move.l     a0, d0
007fb4: 6100ff0a     bsr.w      $7ec0
007fb8: 2e80         move.l     d0, (a7)
007fba: 2017         move.l     (a7), d0
007fbc: 588f         addq.l     #$4, a7
007fbe: 4ced0100fffc movem.l    -$4(a5), a0
007fc4: 4e5d         unlk       a5
007fc6: 4e75         rts        
007fc8: 4e550000     link.w     a5, #$0
007fcc: 48e7c080     movem.l    d0-d1/a0, -(a7)
007fd0: 4feffff4     lea.l      -$c(a7), a7
007fd4: 70ff         moveq      #$ff, d0
007fd6: b0ae99fa     cmp.l      -$6606(a6), d0
007fda: 6604         bne.b      $7fe0
007fdc: 7000         moveq      #$0, d0
007fde: 6070         bra.b      $8050
007fe0: 41ef0004     lea.l      $4(a7), a0
007fe4: 2008         move.l     a0, d0
007fe6: 6100fed8     bsr.w      $7ec0
007fea: 2f400008     move.l     d0, $8(a7)
007fee: 202f0004     move.l     $4(a7), d0
007ff2: 90ae99fa     sub.l      -$6606(a6), d0
007ff6: 2e80         move.l     d0, (a7)
007ff8: 2017         move.l     (a7), d0
007ffa: 4c6e08008ab8 divs.l     -$7548(a6), d0
008000: 206f000c     movea.l    $c(a7), a0
008004: 2080         move.l     d0, (a0)
008006: 2017         move.l     (a7), d0
008008: 4c6e08018ab8 divs.l     -$7548(a6), d0
00800e: 7064         moveq      #$64, d0
008010: 4c001001     mulu.l     d0, d1
008014: 4c6e18018ab8 divs.l     -$7548(a6), d1
00801a: 206f0010     movea.l    $10(a7), a0
00801e: 2081         move.l     d1, (a0)
008020: 202f0004     move.l     $4(a7), d0
008024: 4c6e08008ab8 divs.l     -$7548(a6), d0
00802a: 206f0020     movea.l    $20(a7), a0
00802e: 2080         move.l     d0, (a0)
008030: 202f0004     move.l     $4(a7), d0
008034: 4c6e08018ab8 divs.l     -$7548(a6), d0
00803a: 7064         moveq      #$64, d0
00803c: 4c001001     mulu.l     d0, d1
008040: 4c6e18018ab8 divs.l     -$7548(a6), d1
008046: 206f0024     movea.l    $24(a7), a0
00804a: 2081         move.l     d1, (a0)
00804c: 202f0008     move.l     $8(a7), d0
008050: 4fef000c     lea.l      $c(a7), a7
008054: 4ced0100fffc movem.l    -$4(a5), a0
00805a: 4e5d         unlk       a5
00805c: 4e75         rts        
00805e: 5f7379736461746520657272 subq.w     #$7, ([$64617465, a3], $20657272)
00806a: 6e6f         bgt.b      $80db
00806c: 3d25         move.w     -(a5), -(a6)
00806e: 642e         bcc.b      $809e
008070: 0d00         btst.l     d6, d0
008072: 5f7379736461746520657272 subq.w     #$7, ([$64617465, a3], $20657272)
00807e: 6e6f         bgt.b      $80ef
008080: 3d25         move.w     -(a5), -(a6)
008082: 642e         bcc.b      $80b2
008084: 0d00         btst.l     d6, d0
008086: 4e550000     link.w     a5, #$0
00808a: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
00808e: 7800         moveq      #$0, d4
008090: 7a00         moveq      #$0, d5
008092: 6042         bra.b      $80d6
008094: 2f04         move.l     d4, -(a7)
008096: 41fa011c     lea.l      $81b4(pc), a0
00809a: 2208         move.l     a0, d1
00809c: 202f0004     move.l     $4(a7), d0
0080a0: 61001ab6     bsr.w      $9b58
0080a4: 588f         addq.l     #$4, a7
0080a6: 2f17         move.l     (a7), -(a7)
0080a8: 48780001     pea.l      $1.w
0080ac: 72ff         moveq      #$ff, d1
0080ae: 7000         moveq      #$0, d0
0080b0: 6100282c     bsr.w      $a8de
0080b4: 508f         addq.l     #$8, a7
0080b6: 206f0004     movea.l    $4(a7), a0
0080ba: 2080         move.l     d0, (a0)
0080bc: 72ff         moveq      #$ff, d1
0080be: b280         cmp.l      d0, d1
0080c0: 6612         bne.b      $80d4
0080c2: 0cae000000a9800c cmpi.l     #$a9, -$7ff4(a6)
0080ca: 6604         bne.b      $80d0
0080cc: 5284         addq.l     #$1, d4
0080ce: 6006         bra.b      $80d6
0080d0: 7000         moveq      #$0, d0
0080d2: 6012         bra.b      $80e6
0080d4: 7a01         moveq      #$1, d5
0080d6: 4a85         tst.l      d5
0080d8: 67ba         beq.b      $8094
0080da: 206f0004     movea.l    $4(a7), a0
0080de: 2010         move.l     (a0), d0
0080e0: 610000b4     bsr.w      $8196
0080e4: 7001         moveq      #$1, d0
0080e6: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
0080ec: 4e5d         unlk       a5
0080ee: 4e75         rts        
0080f0: 4e550000     link.w     a5, #$0
0080f4: 48e7c000     movem.l    d0-d1, -(a7)
0080f8: 2017         move.l     (a7), d0
0080fa: 6100282e     bsr.w      $a92a
0080fe: 72ff         moveq      #$ff, d1
008100: b280         cmp.l      d0, d1
008102: 6604         bne.b      $8108
008104: 7000         moveq      #$0, d0
008106: 6002         bra.b      $810a
008108: 7001         moveq      #$1, d0
00810a: 4ced0002fffc movem.l    -$4(a5), d1
008110: 4e5d         unlk       a5
008112: 4e75         rts        
008114: 4e550000     link.w     a5, #$0
008118: 48e7c080     movem.l    d0-d1/a0, -(a7)
00811c: 2017         move.l     (a7), d0
00811e: 610027e8     bsr.w      $a908
008122: 206f0004     movea.l    $4(a7), a0
008126: 2080         move.l     d0, (a0)
008128: 72ff         moveq      #$ff, d1
00812a: b280         cmp.l      d0, d1
00812c: 6604         bne.b      $8132
00812e: 7000         moveq      #$0, d0
008130: 6002         bra.b      $8134
008132: 7001         moveq      #$1, d0
008134: 4ced0100fffc movem.l    -$4(a5), a0
00813a: 4e5d         unlk       a5
00813c: 4e75         rts        
00813e: 4e550000     link.w     a5, #$0
008142: 48e7c000     movem.l    d0-d1, -(a7)
008146: 2017         move.l     (a7), d0
008148: 61a6         bsr.b      $80f0
00814a: 4a80         tst.l      d0
00814c: 670e         beq.b      $815c
00814e: 202f0004     move.l     $4(a7), d0
008152: 610027e2     bsr.w      $a936
008156: 72ff         moveq      #$ff, d1
008158: b280         cmp.l      d0, d1
00815a: 6604         bne.b      $8160
00815c: 7000         moveq      #$0, d0
00815e: 6002         bra.b      $8162
008160: 7001         moveq      #$1, d0
008162: 4e5d         unlk       a5
008164: 4e75         rts        
008166: 4e550000     link.w     a5, #$0
00816a: 48e7c800     movem.l    d0-d1/d4, -(a7)
00816e: 6004         bra.b      $8174
008170: 70ff         moveq      #$ff, d0
008172: b084         cmp.l      d4, d0
008174: 48780001     pea.l      $1.w
008178: 7201         moveq      #$1, d1
00817a: 202f0004     move.l     $4(a7), d0
00817e: 61002842     bsr.w      $a9c2
008182: 588f         addq.l     #$4, a7
008184: 2800         move.l     d0, d4
008186: 7201         moveq      #$1, d1
008188: b280         cmp.l      d0, d1
00818a: 66e4         bne.b      $8170
00818c: 4ced0012fff8 movem.l    -$8(a5), d1/d4
008192: 4e5d         unlk       a5
008194: 4e75         rts        
008196: 4e550000     link.w     a5, #$0
00819a: 48e7c000     movem.l    d0-d1, -(a7)
00819e: 7200         moveq      #$0, d1
0081a0: 2017         move.l     (a7), d0
0081a2: 610027ae     bsr.w      $a952
0081a6: 72ff         moveq      #$ff, d1
0081a8: b280         cmp.l      d0, d1
0081aa: 4ced0002fffc movem.l    -$4(a5), d1
0081b0: 4e5d         unlk       a5
0081b2: 4e75         rts        
0081b4: 7365         .dc.w      $7365
0081b6: 6d25         blt.b      $81dd
0081b8: 30366400     move.w     (a6, d6.w * 4), d0
0081bc: 4e550000     link.w     a5, #$0
0081c0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0081c4: 2017         move.l     (a7), d0
0081c6: 61001a44     bsr.w      $9c0c
0081ca: 206f0018     movea.l    $18(a7), a0
0081ce: 2080         move.l     d0, (a0)
0081d0: 6604         bne.b      $81d6
0081d2: 7000         moveq      #$0, d0
0081d4: 600c         bra.b      $81e2
0081d6: 206f0018     movea.l    $18(a7), a0
0081da: 226f0004     movea.l    $4(a7), a1
0081de: 2290         move.l     (a0), (a1)
0081e0: 7001         moveq      #$1, d0
0081e2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0081e8: 4e5d         unlk       a5
0081ea: 4e75         rts        
0081ec: 4e550000     link.w     a5, #$0
0081f0: 48e7c000     movem.l    d0-d1, -(a7)
0081f4: 7001         moveq      #$1, d0
0081f6: 4e5d         unlk       a5
0081f8: 4e75         rts        
0081fa: 4e550000     link.w     a5, #$0
0081fe: 48e7c080     movem.l    d0-d1/a0, -(a7)
008202: 4a97         tst.l      (a7)
008204: 660a         bne.b      $8210
008206: 206f0004     movea.l    $4(a7), a0
00820a: 4290         clr.l      (a0)
00820c: 7000         moveq      #$0, d0
00820e: 6008         bra.b      $8218
008210: 206f0004     movea.l    $4(a7), a0
008214: 2097         move.l     (a7), (a0)
008216: 7001         moveq      #$1, d0
008218: 4ced0100fffc movem.l    -$4(a5), a0
00821e: 4e5d         unlk       a5
008220: 4e75         rts        
008222: 4e550000     link.w     a5, #$0
008226: 48e7c000     movem.l    d0-d1, -(a7)
00822a: 4aaf0004     tst.l      $4(a7)
00822e: 6604         bne.b      $8234
008230: 7000         moveq      #$0, d0
008232: 600a         bra.b      $823e
008234: 202f0004     move.l     $4(a7), d0
008238: 610019de     bsr.w      $9c18
00823c: 7001         moveq      #$1, d0
00823e: 4e5d         unlk       a5
008240: 4e75         rts        
008242: 0008         .dc.w      $0008
008244: 006e000c006a ori.w      #$c, $6a(a6)
00824a: 00100066     ori.b      #$66, (a0)
00824e: 00140062     ori.b      #$62, (a4)
008252: 0018005e     ori.b      #$5e, (a0)+
008256: 001c005a     ori.b      #$5a, (a4)+
00825a: 00200056     ori.b      #$56, -(a0)
00825e: 002c00520028 ori.b      #$52, $28(a4)
008264: 004e         .dc.w      $004e
008266: ffff         dc.w       $ffff
008268: 0008         .dc.w      $0008
00826a: 0000000c     ori.b      #$c, d0
00826e: 00000010     ori.b      #$10, d0
008272: 00000014     ori.b      #$14, d0
008276: 00000018     ori.b      #$18, d0
00827a: 0000001c     ori.b      #$1c, d0
00827e: 00000020     ori.b      #$20, d0
008282: 0000002c     ori.b      #$2c, d0
008286: 00000028     ori.b      #$28, d0
00828a: 0000ffff     ori.b      #$ff, d0
00828e: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
008292: 43faffae     lea.l      $8242(pc), a1
008296: 6008         bra.b      $82a0
008298: 48e760c0     movem.l    d1-d2/a0-a1, -(a7)
00829c: 43faffca     lea.l      $8268(pc), a1
0082a0: 91c8         suba.l     a0, a0
0082a2: 4e40         trap       #$0
0082a4: 000e         .dc.w      $000e
0082a6: 6406         bcc.b      $82ae
0082a8: 2d41800c     move.l     d1, -$7ff4(a6)
0082ac: 70ff         moveq      #$ff, d0
0082ae: 4cdf0306     movem.l    (a7)+, d1-d2/a0-a1
0082b2: 4e75         rts        
0082b4: 48e70004     movem.l    a5, -(a7)
0082b8: 91ee9a0e     suba.l     -$65f2(a6), a0
0082bc: 2d489a06     move.l     a0, -$65fa(a6)
0082c0: 41ee8abc     lea.l      -$7544(a6), a0
0082c4: 202e9a02     move.l     -$65fe(a6), d0
0082c8: e248         lsr.w      #$1, d0
0082ca: 5340         subq.w     #$1, d0
0082cc: 30dd         move.w     (a5)+, (a0)+
0082ce: 51c8fffc     dbra       d0, $82cc
0082d2: 4cdf2000     movem.l    (a7)+, a5
0082d6: e44f         lsr.w      #$2, d7
0082d8: 3d479a0a     move.w     d7, -$65f6(a6)
0082dc: 206e8b04     movea.l    -$74fc(a6), a0
0082e0: 4e90         jsr        (a0)
0082e2: 4a80         tst.l      d0
0082e4: 6708         beq.b      $82ee
0082e6: 7264         moveq      #$64, d1
0082e8: d247         add.w      d7, d1
0082ea: 4e40         trap       #$0
0082ec: 00064cdf     ori.b      #$df, d6
0082f0: 7fff         .dc.w      $7fff
0082f2: 588f         addq.l     #$4, a7
0082f4: 44df         move.w     (a7)+, ccr
0082f6: 4e75         rts        
0082f8: 4e550000     link.w     a5, #$0
0082fc: 48e78000     movem.l    d0, -(a7)
008300: 1d7c00019a0c move.b     #$1, -$65f4(a6)
008306: 4e5d         unlk       a5
008308: 4e75         rts        
00830a: 4e550000     link.w     a5, #$0
00830e: 48e78000     movem.l    d0, -(a7)
008312: 2d578b04     move.l     (a7), -$74fc(a6)
008316: 6606         bne.b      $831e
008318: 6100ff7e     bsr.w      $8298
00831c: 6004         bra.b      $8322
00831e: 6100ff6e     bsr.w      $828e
008322: 4e5d         unlk       a5
008324: 4e75         rts        
008326: 4e550000     link.w     a5, #$0
00832a: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
00832e: 4fefffd4     lea.l      -$2c(a7), a7
008332: 604a         bra.b      $837e
008334: 2ebc000000b5 move.l     #$b5, (a7)
00833a: 60000076     bra.w      $83b2
00833e: 2ebc000000b6 move.l     #$b6, (a7)
008344: 606c         bra.b      $83b2
008346: 2ebc000000b7 move.l     #$b7, (a7)
00834c: 6064         bra.b      $83b2
00834e: 2ebc000000b8 move.l     #$b8, (a7)
008354: 605c         bra.b      $83b2
008356: 2ebc000000b9 move.l     #$b9, (a7)
00835c: 6054         bra.b      $83b2
00835e: 2ebc000000ba move.l     #$ba, (a7)
008364: 604c         bra.b      $83b2
008366: 2ebc000000b2 move.l     #$b2, (a7)
00836c: 6044         bra.b      $83b2
00836e: 2ebc000000c0 move.l     #$c0, (a7)
008374: 603c         bra.b      $83b2
008376: 2ebc000000b3 move.l     #$b3, (a7)
00837c: 6034         bra.b      $83b2
00837e: 302e9a0a     move.w     -$65f6(a6), d0
008382: 48c0         ext.l      d0
008384: 7264         moveq      #$64, d1
008386: d081         add.l      d1, d0
008388: 048000000066 subi.l     #$66, d0
00838e: 0c8000000009 cmpi.l     #$9, d0
008394: 62e0         bhi.b      $8376
008396: 303b0206     move.w     $839e(pc, d0.w), d0
00839a: 4efb0002     jmp        $839e(pc, d0.w)
00839e: ff96         dc.w       $ff96
0083a0: ffa0         dc.w       $ffa0
0083a2: ffa8         dc.w       $ffa8
0083a4: ffb0         dc.w       $ffb0
0083a6: ffb8         dc.w       $ffb8
0083a8: ffc0         dc.w       $ffc0
0083aa: ffc8         dc.w       $ffc8
0083ac: ffd8         dc.w       $ffd8
0083ae: ffd0         dc.w       $ffd0
0083b0: ffd0         dc.w       $ffd0
0083b2: 0c97000000ba cmpi.l     #$ba, (a7)
0083b8: 660c         bne.b      $83c6
0083ba: 4a2e9a0c     tst.b      -$65f4(a6)
0083be: 6706         beq.b      $83c6
0083c0: 7000         moveq      #$0, d0
0083c2: 600001ec     bra.w      $85b0
0083c6: 2f2e9a06     move.l     -$65fa(a6), -(a7)
0083ca: 306e9a0a     movea.w    -$65f6(a6), a0
0083ce: 2f08         move.l     a0, -(a7)
0083d0: 6100181a     bsr.w      $9bec
0083d4: 2200         move.l     d0, d1
0083d6: 41fa01f0     lea.l      $85c8(pc), a0
0083da: 2008         move.l     a0, d0
0083dc: 61001772     bsr.w      $9b50
0083e0: 508f         addq.l     #$8, a7
0083e2: 61002810     bsr.w      $abf4
0083e6: 2f00         move.l     d0, -(a7)
0083e8: 61001802     bsr.w      $9bec
0083ec: 2f00         move.l     d0, -(a7)
0083ee: 2f2e99fe     move.l     -$6602(a6), -(a7)
0083f2: 41fa01fb     lea.l      $85ef(pc), a0
0083f6: 2208         move.l     a0, d1
0083f8: 41ef0010     lea.l      $10(a7), a0
0083fc: 2008         move.l     a0, d0
0083fe: 61001758     bsr.w      $9b58
008402: 4fef000c     lea.l      $c(a7), a7
008406: 41fa01ef     lea.l      $85f7(pc), a0
00840a: 2208         move.l     a0, d1
00840c: 41ef0004     lea.l      $4(a7), a0
008410: 2008         move.l     a0, d0
008412: 6100170c     bsr.w      $9b20
008416: 2440         movea.l    d0, a2
008418: 4a80         tst.l      d0
00841a: 6604         bne.b      $8420
00841c: 45ee8e7c     lea.l      -$7184(a6), a2
008420: 2f2e9a06     move.l     -$65fa(a6), -(a7)
008424: 306e9a0a     movea.w    -$65f6(a6), a0
008428: 2f08         move.l     a0, -(a7)
00842a: 610017c0     bsr.w      $9bec
00842e: 2f00         move.l     d0, -(a7)
008430: 41fa01c7     lea.l      $85f9(pc), a0
008434: 2208         move.l     a0, d1
008436: 200a         move.l     a2, d0
008438: 6100171a     bsr.w      $9b54
00843c: 4fef000c     lea.l      $c(a7), a7
008440: 7800         moveq      #$0, d4
008442: 6018         bra.b      $845c
008444: 41ee8abc     lea.l      -$7544(a6), a0
008448: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
00844c: 41fa01d6     lea.l      $8624(pc), a0
008450: 2208         move.l     a0, d1
008452: 200a         move.l     a2, d0
008454: 610016fe     bsr.w      $9b54
008458: 588f         addq.l     #$4, a7
00845a: 5284         addq.l     #$1, d4
00845c: 7008         moveq      #$8, d0
00845e: b084         cmp.l      d4, d0
008460: 6ee2         bgt.b      $8444
008462: 41fa01c7     lea.l      $862b(pc), a0
008466: 2208         move.l     a0, d1
008468: 200a         move.l     a2, d0
00846a: 610016e8     bsr.w      $9b54
00846e: 6018         bra.b      $8488
008470: 41ee8abc     lea.l      -$7544(a6), a0
008474: 2f304c00     move.l     (a0, d4.l * 4), -(a7)
008478: 41fa01b7     lea.l      $8631(pc), a0
00847c: 2208         move.l     a0, d1
00847e: 200a         move.l     a2, d0
008480: 610016d2     bsr.w      $9b54
008484: 588f         addq.l     #$4, a7
008486: 5284         addq.l     #$1, d4
008488: 7010         moveq      #$10, d0
00848a: b084         cmp.l      d4, d0
00848c: 6ee2         bgt.b      $8470
00848e: 41fa01a8     lea.l      $8638(pc), a0
008492: 2208         move.l     a0, d1
008494: 200a         move.l     a2, d0
008496: 610016bc     bsr.w      $9b54
00849a: 266e8af0     movea.l    -$7510(a6), a3
00849e: 7800         moveq      #$0, d4
0084a0: 6014         bra.b      $84b6
0084a2: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0084a6: 41fa01ac     lea.l      $8654(pc), a0
0084aa: 2208         move.l     a0, d1
0084ac: 200a         move.l     a2, d0
0084ae: 610016a4     bsr.w      $9b54
0084b2: 588f         addq.l     #$4, a7
0084b4: 5284         addq.l     #$1, d4
0084b6: 7008         moveq      #$8, d0
0084b8: b084         cmp.l      d4, d0
0084ba: 6ee6         bgt.b      $84a2
0084bc: 41fa019d     lea.l      $865b(pc), a0
0084c0: 2208         move.l     a0, d1
0084c2: 200a         move.l     a2, d0
0084c4: 6100168e     bsr.w      $9b54
0084c8: 266e8af8     movea.l    -$7508(a6), a3
0084cc: 7800         moveq      #$0, d4
0084ce: 6014         bra.b      $84e4
0084d0: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
0084d4: 41fa01a0     lea.l      $8676(pc), a0
0084d8: 2208         move.l     a0, d1
0084da: 200a         move.l     a2, d0
0084dc: 61001676     bsr.w      $9b54
0084e0: 588f         addq.l     #$4, a7
0084e2: 5284         addq.l     #$1, d4
0084e4: 7008         moveq      #$8, d0
0084e6: b084         cmp.l      d4, d0
0084e8: 6ee6         bgt.b      $84d0
0084ea: 41fa0191     lea.l      $867d(pc), a0
0084ee: 2208         move.l     a0, d1
0084f0: 200a         move.l     a2, d0
0084f2: 61001660     bsr.w      $9b54
0084f6: 266e8af0     movea.l    -$7510(a6), a3
0084fa: 2653         movea.l    (a3), a3
0084fc: 7800         moveq      #$0, d4
0084fe: 6014         bra.b      $8514
008500: 2f334c00     move.l     (a3, d4.l * 4), -(a7)
008504: 41fa01a5     lea.l      $86ab(pc), a0
008508: 2208         move.l     a0, d1
00850a: 200a         move.l     a2, d0
00850c: 61001646     bsr.w      $9b54
008510: 588f         addq.l     #$4, a7
008512: 5284         addq.l     #$1, d4
008514: 7008         moveq      #$8, d0
008516: b084         cmp.l      d4, d0
008518: 6ee6         bgt.b      $8500
00851a: 082e00008afd btst.b     #$0, -$7503(a6)
008520: 6704         beq.b      $8526
008522: 7043         moveq      #$43, d0
008524: 6002         bra.b      $8528
008526: 702d         moveq      #$2d, d0
008528: 2f00         move.l     d0, -(a7)
00852a: 082e00018afd btst.b     #$1, -$7503(a6)
008530: 6704         beq.b      $8536
008532: 7056         moveq      #$56, d0
008534: 6002         bra.b      $8538
008536: 702d         moveq      #$2d, d0
008538: 2f00         move.l     d0, -(a7)
00853a: 082e00028afd btst.b     #$2, -$7503(a6)
008540: 6704         beq.b      $8546
008542: 705a         moveq      #$5a, d0
008544: 6002         bra.b      $8548
008546: 702d         moveq      #$2d, d0
008548: 2f00         move.l     d0, -(a7)
00854a: 082e00038afd btst.b     #$3, -$7503(a6)
008550: 6704         beq.b      $8556
008552: 704e         moveq      #$4e, d0
008554: 6002         bra.b      $8558
008556: 702d         moveq      #$2d, d0
008558: 2f00         move.l     d0, -(a7)
00855a: 082e00048afd btst.b     #$4, -$7503(a6)
008560: 6704         beq.b      $8566
008562: 7058         moveq      #$58, d0
008564: 6002         bra.b      $8568
008566: 702d         moveq      #$2d, d0
008568: 2f00         move.l     d0, -(a7)
00856a: 303c00ff     move.w     #$ff, d0
00856e: c06e8afc     and.w      -$7504(a6), d0
008572: 7200         moveq      #$0, d1
008574: 3200         move.w     d0, d1
008576: 2f01         move.l     d1, -(a7)
008578: 2f2e8afe     move.l     -$7502(a6), -(a7)
00857c: 41fa0134     lea.l      $86b2(pc), a0
008580: 2208         move.l     a0, d1
008582: 200a         move.l     a2, d0
008584: 610015ce     bsr.w      $9b54
008588: 4fef001c     lea.l      $1c(a7), a7
00858c: 41ee8e7c     lea.l      -$7184(a6), a0
008590: b1ca         cmpa.l     a2, a0
008592: 6706         beq.b      $859a
008594: 200a         move.l     a2, d0
008596: 610015dc     bsr.w      $9b74
00859a: 2f2e9a06     move.l     -$65fa(a6), -(a7)
00859e: 61002654     bsr.w      $abf4
0085a2: 2200         move.l     d0, d1
0085a4: 202f0004     move.l     $4(a7), d0
0085a8: 61000362     bsr.w      $890c
0085ac: 588f         addq.l     #$4, a7
0085ae: 70ff         moveq      #$ff, d0
0085b0: 4fef002c     lea.l      $2c(a7), a7
0085b4: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
0085ba: 4e5d         unlk       a5
0085bc: 4e75         rts        
0085be: 2f72302f7472 move.l     $2f(a2, d3.w), $7472(a7)
0085c4: 6170         bsr.b      $8636
0085c6: 5f00         subq.b     #$7, d0
0085c8: 25733a205472 move.l     $20(a3, d3.l), $5472(a2)
0085ce: 6170         bsr.b      $8640
0085d0: 2023         move.l     -(a3), d0
0085d2: 2564206f     move.l     -(a4), $206f(a2)
0085d6: 6363         bls.b      $863b
0085d8: 7572         .dc.w      $7572
0085da: 7265         moveq      #$65, d1
0085dc: 6420         bcc.b      $85fe
0085de: 6174         bsr.b      $8654
0085e0: 206f6666     movea.l    $6666(a7), a0
0085e4: 7365         .dc.w      $7365
0085e6: 743a         moveq      #$3a, d2
0085e8: 20307825     move.l     $25(a0, d7.l), d0
0085ec: 780d         moveq      #$d, d4
0085ee: 00257325     ori.b      #$25, -(a5)
0085f2: 735f         .dc.w      $735f
0085f4: 25640077     move.l     -(a4), $77(a2)
0085f8: 0025733a     ori.b      #$3a, -(a5)
0085fc: 2054         movea.l    (a4), a0
0085fe: 7261         moveq      #$61, d1
008600: 7020         moveq      #$20, d0
008602: 2325         move.l     -(a5), -(a1)
008604: 6420         bcc.b      $8626
008606: 6f63         ble.b      $866b
008608: 6375         bls.b      $867f
00860a: 7272         moveq      #$72, d1
00860c: 6564         bcs.b      $8672
00860e: 2061         movea.l    -(a1), a0
008610: 7420         moveq      #$20, d2
008612: 6f66         ble.b      $867a
008614: 6673         bne.b      $8689
008616: 6574         bcs.b      $868c
008618: 3a20         move.w     -(a0), d5
00861a: 30782578     movea.w    $2578.w, a0
00861e: 0d0d446e     movep.w    $446e(a5), d6
008622: 3a00         move.w     d0, d5
008624: 2025         move.l     -(a5), d0
008626: 30386c58     move.w     $6c58.w, d0
00862a: 000d         .dc.w      $000d
00862c: 0d41         bchg.b     d6, d1
00862e: 6e3a         bgt.b      $866a
008630: 00202530     ori.b      #$30, -(a0)
008634: 386c5800     movea.w    $5800(a4), a4
008638: 0d0d4d65     movep.w    $4d65(a5), d6
00863c: 6d20         blt.b      $865e
00863e: 706f         moveq      #$6f, d0
008640: 696e         bvs.b      $86b0
008642: 7465         moveq      #$65, d2
008644: 6420         bcc.b      $8666
008646: 746f         moveq      #$6f, d2
008648: 2062         movea.l    -(a2), a0
00864a: 7920         .dc.w      $7920
00864c: 41353a0d     chk.l      $d(a5, d3.l), d0
008650: 53353a00     subq.b     #$1, (a5, d3.l * 2)
008654: 2025         move.l     -(a5), d0
008656: 30386c58     move.w     $6c58.w, d0
00865a: 000d         .dc.w      $000d
00865c: 0d4d656d     movep.l    $656d(a5), d6
008660: 20706f696e74 movea.l    ([$6e74, a0]), a0
008666: 6564         bcs.b      $86cc
008668: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
00866e: 2041         movea.l    d1, a0
008670: 373a0d53     move.w     $93c5(pc), -(a3)
008674: 3700         move.w     d0, -(a3)
008676: 2025         move.l     -(a5), d0
008678: 30386c58     move.w     $6c58.w, d0
00867c: 000d         .dc.w      $000d
00867e: 0d4d656d     movep.l    $656d(a5), d6
008682: 20706f696e74 movea.l    ([$6e74, a0]), a0
008688: 6564         bcs.b      $86ee
00868a: 20746f206279 movea.l    $6279(a4, d6.l * 8), a0
008690: 20284135     move.l     $4135(a0), d0
008694: 292c2069     move.l     $2069(a4), -(a4)
008698: 652e         bcs.b      $86c8
00869a: 2063         movea.l    -(a3), a0
00869c: 6f6e         ble.b      $870c
00869e: 7420         moveq      #$20, d2
0086a0: 6f66         ble.b      $8708
0086a2: 2041         movea.l    d1, a0
0086a4: 353a0d4d     move.w     $93f3(pc), -(a2)
0086a8: 353a0020     move.w     $86ca(pc), -(a2)
0086ac: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0086b0: 5800         addq.b     #$4, d0
0086b2: 0d0d5043     movep.w    $5043(a5), d6
0086b6: 3a20         move.w     -(a0), d5
0086b8: 2530386c     move.l     $6c(a0, d3.l), -(a2)
0086bc: 5820         addq.b     #$4, -(a0)
0086be: 2043         movea.l    d3, a0
0086c0: 433a2025     chk.l      $a6e7(pc), d1
0086c4: 30325820     move.w     $20(a2, d5.l), d0
0086c8: 2825         move.l     -(a5), d4
0086ca: 6325         bls.b      $86f1
0086cc: 6325         bls.b      $86f3
0086ce: 6325         bls.b      $86f5
0086d0: 6325         bls.b      $86f7
0086d2: 6329         bls.b      $86fd
0086d4: 0d00         btst.l     d6, d0
0086d6: 4e550000     link.w     a5, #$0
0086da: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
0086de: 2800         move.l     d0, d4
0086e0: 7204         moveq      #$4, d1
0086e2: 7044         moveq      #$44, d0
0086e4: 61002198     bsr.w      $a87e
0086e8: 2440         movea.l    d0, a2
0086ea: 3a12         move.w     (a2), d5
0086ec: 601c         bra.b      $870a
0086ee: 4a92         tst.l      (a2)
0086f0: 6718         beq.b      $870a
0086f2: 2052         movea.l    (a2), a0
0086f4: 7000         moveq      #$0, d0
0086f6: 3010         move.w     (a0), d0
0086f8: 3204         move.w     d4, d1
0086fa: 48c1         ext.l      d1
0086fc: b081         cmp.l      d1, d0
0086fe: 660a         bne.b      $870a
008700: 2052         movea.l    (a2), a0
008702: 7000         moveq      #$0, d0
008704: 30280002     move.w     $2(a0), d0
008708: 6006         bra.b      $8710
00870a: 588a         addq.l     #$4, a2
00870c: 5345         subq.w     #$1, d5
00870e: 6cde         bge.b      $86ee
008710: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
008716: 4e5d         unlk       a5
008718: 4e75         rts        
00871a: 48e74000     movem.l    d1, -(a7)
00871e: 203c00000000 move.l     #$0, d0
008724: 223c00000001 move.l     #$1, d1
00872a: 4e40         trap       #$0
00872c: 0057640c     ori.w      #$640c, (a7)
008730: 2d41800c     move.l     d1, -$7ff4(a6)
008734: 70ff         moveq      #$ff, d0
008736: 4cdf0002     movem.l    (a7)+, d1
00873a: 4e75         rts        
00873c: 4280         clr.l      d0
00873e: 3001         move.w     d1, d0
008740: 4cdf0002     movem.l    (a7)+, d1
008744: 4e75         rts        
008746: 48e74000     movem.l    d1, -(a7)
00874a: 203c00000000 move.l     #$0, d0
008750: 223c00000000 move.l     #$0, d1
008756: 4e40         trap       #$0
008758: 005764e0     ori.w      #$64e0, (a7)
00875c: 60d2         bra.b      $8730
00875e: 48e740e0     movem.l    d1/a0-a2, -(a7)
008762: 207900000000 movea.l    $0.l, a0
008768: 2268004c     movea.l    $4c(a0), a1
00876c: 4280         clr.l      d0
00876e: 10290370     move.b     $370(a1), d0
008772: 4cdf0702     movem.l    (a7)+, d1/a0-a2
008776: 4e75         rts        
008778: 48e740e0     movem.l    d1/a0-a2, -(a7)
00877c: 207900000000 movea.l    $0.l, a0
008782: 2268004c     movea.l    $4c(a0), a1
008786: 81a90374     or.l       d0, $374(a1)
00878a: 4cdf0702     movem.l    (a7)+, d1/a0-a2
00878e: 4e75         rts        
008790: 48e740e0     movem.l    d1/a0-a2, -(a7)
008794: 207900000000 movea.l    $0.l, a0
00879a: 2268004c     movea.l    $4c(a0), a1
00879e: 4480         neg.l      d0
0087a0: c1a90374     and.l      d0, $374(a1)
0087a4: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0087a8: 4e75         rts        
0087aa: 640c         bcc.b      $87b8
0087ac: 3d41800c     move.w     d1, -$7ff4(a6)
0087b0: 70ff         moveq      #$ff, d0
0087b2: 6004         bra.b      $87b8
0087b4: 65f6         bcs.b      $87ac
0087b6: 7000         moveq      #$0, d0
0087b8: 4cdf001e     movem.l    (a7)+, d1-d4
0087bc: 4e75         rts        
0087be: 48e77800     movem.l    d1-d4, -(a7)
0087c2: 282f0014     move.l     $14(a7), d4
0087c6: 2601         move.l     d1, d3
0087c8: 2400         move.l     d0, d2
0087ca: 7203         moveq      #$3, d1
0087cc: 7000         moveq      #$0, d0
0087ce: 4e40         trap       #$0
0087d0: 005660d6     ori.w      #$60d6, (a6)
0087d4: 48e77800     movem.l    d1-d4, -(a7)
0087d8: 282f0014     move.l     $14(a7), d4
0087dc: 2601         move.l     d1, d3
0087de: 2400         move.l     d0, d2
0087e0: 7204         moveq      #$4, d1
0087e2: 7000         moveq      #$0, d0
0087e4: 4e40         trap       #$0
0087e6: 005660c0     ori.w      #$60c0, (a6)
0087ea: 48e77800     movem.l    d1-d4, -(a7)
0087ee: 2601         move.l     d1, d3
0087f0: 2400         move.l     d0, d2
0087f2: 7202         moveq      #$2, d1
0087f4: 7000         moveq      #$0, d0
0087f6: 4e40         trap       #$0
0087f8: 005660ae     ori.w      #$60ae, (a6)
0087fc: 48e77800     movem.l    d1-d4, -(a7)
008800: 7200         moveq      #$0, d1
008802: 4e40         trap       #$0
008804: 005660ac     ori.w      #$60ac, (a6)
008808: 48e77800     movem.l    d1-d4, -(a7)
00880c: 2601         move.l     d1, d3
00880e: 2400         move.l     d0, d2
008810: 7201         moveq      #$1, d1
008812: 7000         moveq      #$0, d0
008814: 4e40         trap       #$0
008816: 00566090     ori.w      #$6090, (a6)
00881a: 4e550000     link.w     a5, #$0
00881e: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
008822: 7200         moveq      #$0, d1
008824: 41ee9a12     lea.l      -$65ee(a6), a0
008828: 2008         move.l     a0, d0
00882a: 610021ca     bsr.w      $a9f6
00882e: 2440         movea.l    d0, a2
008830: 70ff         moveq      #$ff, d0
008832: b08a         cmp.l      a2, d0
008834: 6614         bne.b      $884a
008836: 41ee9a12     lea.l      -$65ee(a6), a0
00883a: 2208         move.l     a0, d1
00883c: 41fa0072     lea.l      $88b0(pc), a0
008840: 2008         move.l     a0, d0
008842: 6100130c     bsr.w      $9b50
008846: 7000         moveq      #$0, d0
008848: 6016         bra.b      $8860
00884a: 202a0030     move.l     $30(a2), d0
00884e: d08a         add.l      a2, d0
008850: 2800         move.l     d0, d4
008852: 2204         move.l     d4, d1
008854: 200a         move.l     a2, d0
008856: 6112         bsr.b      $886a
008858: 200a         move.l     a2, d0
00885a: 610021d0     bsr.w      $aa2c
00885e: 7001         moveq      #$1, d0
008860: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
008866: 4e5d         unlk       a5
008868: 4e75         rts        
00886a: 4e550000     link.w     a5, #$0
00886e: 48e7c080     movem.l    d0-d1/a0, -(a7)
008872: 518f         subq.l     #$8, a7
008874: 41ee8b08     lea.l      -$74f8(a6), a0
008878: 2f480004     move.l     a0, $4(a7)
00887c: 4297         clr.l      (a7)
00887e: 601c         bra.b      $889c
008880: 206f000c     movea.l    $c(a7), a0
008884: 2017         move.l     (a7), d0
008886: 7200         moveq      #$0, d1
008888: 32300a00     move.w     (a0, d0.l * 2), d1
00888c: d2af0008     add.l      $8(a7), d1
008890: 206f0004     movea.l    $4(a7), a0
008894: 2017         move.l     (a7), d0
008896: 21810c00     move.l     d1, (a0, d0.l * 4)
00889a: 5297         addq.l     #$1, (a7)
00889c: 0c97000000c4 cmpi.l     #$c4, (a7)
0088a2: 6ddc         blt.b      $8880
0088a4: 508f         addq.l     #$8, a7
0088a6: 4ced0100fffc movem.l    -$4(a5), a0
0088ac: 4e5d         unlk       a5
0088ae: 4e75         rts        
0088b0: 434f         .dc.w      $434f
0088b2: 4f52         .dc.w      $4f52
0088b4: 445f         neg.w      (a7)+
0088b6: 696e         bvs.b      $8926
0088b8: 6974         bvs.b      $892e
0088ba: 3a20         move.w     -(a0), d5
0088bc: 4e6f         move       usp, a7
0088be: 2027         move.l     -(a7), d0
0088c0: 25732720210d0000 move.l     $210d(a3, d2.w * 8), $0(a2)
0088c8: 4e550000     link.w     a5, #$0
0088cc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0088d0: 518f         subq.l     #$8, a7
0088d2: 203c00000100 move.l     #$100, d0
0088d8: d0af0008     add.l      $8(a7), d0
0088dc: 2e80         move.l     d0, (a7)
0088de: 1f6f000f0004 move.b     $f(a7), $4(a7)
0088e4: 202f001c     move.l     $1c(a7), d0
0088e8: e080         asr.l      #$8, d0
0088ea: 1f400005     move.b     d0, $5(a7)
0088ee: 1f6f001f0006 move.b     $1f(a7), $6(a7)
0088f4: 1f7c00ff0007 move.b     #$ff, $7(a7)
0088fa: 41d7         lea.l      (a7), a0
0088fc: 2008         move.l     a0, d0
0088fe: 6146         bsr.b      $8946
008900: 508f         addq.l     #$8, a7
008902: 4ced0100fffc movem.l    -$4(a5), a0
008908: 4e5d         unlk       a5
00890a: 4e75         rts        
00890c: 4e550000     link.w     a5, #$0
008910: 48e7c000     movem.l    d0-d1, -(a7)
008914: 2f2f0010     move.l     $10(a7), -(a7)
008918: 222f0008     move.l     $8(a7), d1
00891c: 202f0004     move.l     $4(a7), d0
008920: 61a6         bsr.b      $88c8
008922: 588f         addq.l     #$4, a7
008924: 203c00002410 move.l     #$2410, d0
00892a: 610000bc     bsr.w      $89e8
00892e: 4e5d         unlk       a5
008930: 4e75         rts        
008932: 4e550000     link.w     a5, #$0
008936: 48e78000     movem.l    d0, -(a7)
00893a: 7000         moveq      #$0, d0
00893c: 61001e12     bsr.w      $a750
008940: 60f8         bra.b      $893a
008942: 4e5d         unlk       a5
008944: 4e75         rts        
008946: 4e550000     link.w     a5, #$0
00894a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00894e: 4aae9a20     tst.l      -$65e0(a6)
008952: 6c16         bge.b      $896a
008954: 7203         moveq      #$3, d1
008956: 41fa002e     lea.l      $8986(pc), a0
00895a: 2008         move.l     a0, d0
00895c: 61000136     bsr.w      $8a94
008960: 2d409a20     move.l     d0, -$65e0(a6)
008964: 6c04         bge.b      $896a
008966: 70ff         moveq      #$ff, d0
008968: 6012         bra.b      $897c
00896a: 2f17         move.l     (a7), -(a7)
00896c: 222e9a20     move.l     -$65e0(a6), d1
008970: 203c00007f23 move.l     #$7f23, d0
008976: 61000f7a     bsr.w      $98f2
00897a: 588f         addq.l     #$4, a7
00897c: 4ced0102fff8 movem.l    -$8(a5), d1/a0
008982: 4e5d         unlk       a5
008984: 4e75         rts        
008986: 2f636339     move.l     -(a3), $6339(a7)
00898a: 3300         move.w     d0, -(a1)
00898c: 4e550000     link.w     a5, #$0
008990: 48e7c080     movem.l    d0-d1/a0, -(a7)
008994: 518f         subq.l     #$8, a7
008996: 7201         moveq      #$1, d1
008998: 41fa00ce     lea.l      $8a68(pc), a0
00899c: 2008         move.l     a0, d0
00899e: 610000f4     bsr.w      $8a94
0089a2: 2f400004     move.l     d0, $4(a7)
0089a6: 72ff         moveq      #$ff, d1
0089a8: b280         cmp.l      d0, d1
0089aa: 6722         beq.b      $89ce
0089ac: 48780004     pea.l      $4.w
0089b0: 41ef0004     lea.l      $4(a7), a0
0089b4: 2208         move.l     a0, d1
0089b6: 202f0008     move.l     $8(a7), d0
0089ba: 610011f0     bsr.w      $9bac
0089be: 588f         addq.l     #$4, a7
0089c0: 7204         moveq      #$4, d1
0089c2: b280         cmp.l      d0, d1
0089c4: 670c         beq.b      $89d2
0089c6: 202f0004     move.l     $4(a7), d0
0089ca: 610011fc     bsr.w      $9bc8
0089ce: 70ff         moveq      #$ff, d0
0089d0: 600a         bra.b      $89dc
0089d2: 202f0004     move.l     $4(a7), d0
0089d6: 610011f0     bsr.w      $9bc8
0089da: 2017         move.l     (a7), d0
0089dc: 508f         addq.l     #$8, a7
0089de: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0089e4: 4e5d         unlk       a5
0089e6: 4e75         rts        
0089e8: 4e550000     link.w     a5, #$0
0089ec: 48e7c000     movem.l    d0-d1, -(a7)
0089f0: 2217         move.l     (a7), d1
0089f2: 6198         bsr.b      $898c
0089f4: 610003c6     bsr.w      $8dbc
0089f8: 72ff         moveq      #$ff, d1
0089fa: b280         cmp.l      d0, d1
0089fc: 4ced0002fffc movem.l    -$4(a5), d1
008a02: 4e5d         unlk       a5
008a04: 4e75         rts        
008a06: 4e550000     link.w     a5, #$0
008a0a: 48e7c080     movem.l    d0-d1/a0, -(a7)
008a0e: 518f         subq.l     #$8, a7
008a10: 7202         moveq      #$2, d1
008a12: 41fa006a     lea.l      $8a7e(pc), a0
008a16: 2008         move.l     a0, d0
008a18: 6100007a     bsr.w      $8a94
008a1c: 2f400004     move.l     d0, $4(a7)
008a20: 72ff         moveq      #$ff, d1
008a22: b280         cmp.l      d0, d1
008a24: 6728         beq.b      $8a4e
008a26: 610021cc     bsr.w      $abf4
008a2a: 2e80         move.l     d0, (a7)
008a2c: 48780004     pea.l      $4.w
008a30: 41ef0004     lea.l      $4(a7), a0
008a34: 2208         move.l     a0, d1
008a36: 202f0008     move.l     $8(a7), d0
008a3a: 61001178     bsr.w      $9bb4
008a3e: 588f         addq.l     #$4, a7
008a40: 7204         moveq      #$4, d1
008a42: b280         cmp.l      d0, d1
008a44: 670c         beq.b      $8a52
008a46: 202f0004     move.l     $4(a7), d0
008a4a: 6100117c     bsr.w      $9bc8
008a4e: 70ff         moveq      #$ff, d0
008a50: 600a         bra.b      $8a5c
008a52: 202f0004     move.l     $4(a7), d0
008a56: 61001170     bsr.w      $9bc8
008a5a: 7000         moveq      #$0, d0
008a5c: 508f         addq.l     #$8, a7
008a5e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
008a64: 4e5d         unlk       a5
008a66: 4e75         rts        
008a68: 2f63302f     move.l     -(a3), $302f(a7)
008a6c: 5f313239     subq.b     #$7, $39(a1, d3.w)
008a70: 5f2f7061     subq.b     #$7, $7061(a7)
008a74: 636b         bls.b      $8ae1
008a76: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
008a7c: 64002f63     bcc.w      $b9e1
008a80: 302f5f31     move.w     $5f31(a7), d0
008a84: 32395f2f7061 move.w     $5f2f7061.l, d1
008a8a: 636b         bls.b      $8af7
008a8c: 2f73765f7069 move.l     $5f(a3, d7.w), $7069(a7)
008a92: 64004e55     bcc.w      $d8e9
008a96: 000048e7     ori.b      #$e7, d0
008a9a: c000         and.b      d0, d0
008a9c: 42a7         clr.l      -(a7)
008a9e: 222f0008     move.l     $8(a7), d1
008aa2: 202f0004     move.l     $4(a7), d0
008aa6: 613e         bsr.b      $8ae6
008aa8: 588f         addq.l     #$4, a7
008aaa: 4e5d         unlk       a5
008aac: 4e75         rts        
008aae: 4e550000     link.w     a5, #$0
008ab2: 48e7c000     movem.l    d0-d1, -(a7)
008ab6: 48780001     pea.l      $1.w
008aba: 222f0008     move.l     $8(a7), d1
008abe: 202f0004     move.l     $4(a7), d0
008ac2: 6122         bsr.b      $8ae6
008ac4: 588f         addq.l     #$4, a7
008ac6: 4e5d         unlk       a5
008ac8: 4e75         rts        
008aca: 4e550000     link.w     a5, #$0
008ace: 48e7c000     movem.l    d0-d1, -(a7)
008ad2: 48780002     pea.l      $2.w
008ad6: 222f0008     move.l     $8(a7), d1
008ada: 202f0004     move.l     $4(a7), d0
008ade: 6106         bsr.b      $8ae6
008ae0: 588f         addq.l     #$4, a7
008ae2: 4e5d         unlk       a5
008ae4: 4e75         rts        
008ae6: 4e550000     link.w     a5, #$0
008aea: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
008aee: 4fefffda     lea.l      -$26(a7), a7
008af2: 41ef0008     lea.l      $8(a7), a0
008af6: 2208         move.l     a0, d1
008af8: 202f0026     move.l     $26(a7), d0
008afc: 61000ad4     bsr.w      $95d2
008b00: 2440         movea.l    d0, a2
008b02: 4a80         tst.l      d0
008b04: 67000108     beq.w      $8c0e
008b08: 41ef0008     lea.l      $8(a7), a0
008b0c: 2008         move.l     a0, d0
008b0e: 61000b08     bsr.w      $9618
008b12: 2f400004     move.l     d0, $4(a7)
008b16: 6d0000f6     blt.w      $8c0e
008b1a: 41ef0022     lea.l      $22(a7), a0
008b1e: 2208         move.l     a0, d1
008b20: 200a         move.l     a2, d0
008b22: 61000b7a     bsr.w      $969e
008b26: 2440         movea.l    d0, a2
008b28: 4a80         tst.l      d0
008b2a: 670000e2     beq.w      $8c0e
008b2e: 202f0004     move.l     $4(a7), d0
008b32: e588         lsl.l      #$2, d0
008b34: 41ee9a6a     lea.l      -$6596(a6), a0
008b38: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
008b3e: 6600009a     bne.w      $8bda
008b42: 7203         moveq      #$3, d1
008b44: 41ef0008     lea.l      $8(a7), a0
008b48: 2008         move.l     a0, d0
008b4a: 6100104c     bsr.w      $9b98
008b4e: 222f0004     move.l     $4(a7), d1
008b52: e589         lsl.l      #$2, d1
008b54: 41ee9a6a     lea.l      -$6596(a6), a0
008b58: 31801800     move.w     d0, (a0, d1.l)
008b5c: 6d0000ca     blt.w      $8c28
008b60: 202f0004     move.l     $4(a7), d0
008b64: e588         lsl.l      #$2, d0
008b66: 41ee9a6a     lea.l      -$6596(a6), a0
008b6a: 2400         move.l     d0, d2
008b6c: 42a7         clr.l      -(a7)
008b6e: 202f0008     move.l     $8(a7), d0
008b72: e588         lsl.l      #$2, d0
008b74: 43ee9a6a     lea.l      -$6596(a6), a1
008b78: 32710800     movea.w    (a1, d0.l), a1
008b7c: 2209         move.l     a1, d1
008b7e: 203c0000ff0e move.l     #$ff0e, d0
008b84: 61000d08     bsr.w      $988e
008b88: 588f         addq.l     #$4, a7
008b8a: 2240         movea.l    d0, a1
008b8c: 7000         moveq      #$0, d0
008b8e: 1011         move.b     (a1), d0
008b90: 31802802     move.w     d0, $2(a0, d2.l)
008b94: 202f0004     move.l     $4(a7), d0
008b98: e588         lsl.l      #$2, d0
008b9a: 41ee9a6a     lea.l      -$6596(a6), a0
008b9e: 4a700800     tst.w      (a0, d0.l)
008ba2: 6d36         blt.b      $8bda
008ba4: 202f0004     move.l     $4(a7), d0
008ba8: e588         lsl.l      #$2, d0
008baa: 41ee9a6a     lea.l      -$6596(a6), a0
008bae: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
008bb4: 6c24         bge.b      $8bda
008bb6: 202f0004     move.l     $4(a7), d0
008bba: e588         lsl.l      #$2, d0
008bbc: 41ee9a6a     lea.l      -$6596(a6), a0
008bc0: 30700800     movea.w    (a0, d0.l), a0
008bc4: 2008         move.l     a0, d0
008bc6: 61001000     bsr.w      $9bc8
008bca: 202f0004     move.l     $4(a7), d0
008bce: e588         lsl.l      #$2, d0
008bd0: 41ee9a6a     lea.l      -$6596(a6), a0
008bd4: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
008bda: 202f0004     move.l     $4(a7), d0
008bde: e588         lsl.l      #$2, d0
008be0: 41ee9a6a     lea.l      -$6596(a6), a0
008be4: 30300802     move.w     $2(a0, d0.l), d0
008be8: 48c0         ext.l      d0
008bea: b0af0022     cmp.l      $22(a7), d0
008bee: 661e         bne.b      $8c0e
008bf0: 0c12005f     cmpi.b     #$5f, (a2)
008bf4: 6610         bne.b      $8c06
008bf6: 6004         bra.b      $8bfc
008bf8: 4a12         tst.b      (a2)
008bfa: 672c         beq.b      $8c28
008bfc: 528a         addq.l     #$1, a2
008bfe: 0c12005f     cmpi.b     #$5f, (a2)
008c02: 66f4         bne.b      $8bf8
008c04: 528a         addq.l     #$1, a2
008c06: 222f002a     move.l     $2a(a7), d1
008c0a: 200a         move.l     a2, d0
008c0c: 6008         bra.b      $8c16
008c0e: 222f002a     move.l     $2a(a7), d1
008c12: 202f0026     move.l     $26(a7), d0
008c16: 242f004e     move.l     $4e(a7), d2
008c1a: e58a         lsl.l      #$2, d2
008c1c: 41ee9a24     lea.l      -$65dc(a6), a0
008c20: 20702800     movea.l    (a0, d2.l), a0
008c24: 4e90         jsr        (a0)
008c26: 6002         bra.b      $8c2a
008c28: 70ff         moveq      #$ff, d0
008c2a: 4fef0026     lea.l      $26(a7), a7
008c2e: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
008c34: 4e5d         unlk       a5
008c36: 4e75         rts        
008c38: 4e550000     link.w     a5, #$0
008c3c: 48e7c080     movem.l    d0-d1/a0, -(a7)
008c40: 2f2f0018     move.l     $18(a7), -(a7)
008c44: 306f001a     movea.w    $1a(a7), a0
008c48: 2f08         move.l     a0, -(a7)
008c4a: 222f000c     move.l     $c(a7), d1
008c4e: 202f0008     move.l     $8(a7), d0
008c52: 610c         bsr.b      $8c60
008c54: 508f         addq.l     #$8, a7
008c56: 4ced0100fffc movem.l    -$4(a5), a0
008c5c: 4e5d         unlk       a5
008c5e: 4e75         rts        
008c60: 4e550000     link.w     a5, #$0
008c64: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
008c68: 4fefffda     lea.l      -$26(a7), a7
008c6c: 41ef0008     lea.l      $8(a7), a0
008c70: 2208         move.l     a0, d1
008c72: 202f0026     move.l     $26(a7), d0
008c76: 6100095a     bsr.w      $95d2
008c7a: 2440         movea.l    d0, a2
008c7c: 4a80         tst.l      d0
008c7e: 67000112     beq.w      $8d92
008c82: 41ef0008     lea.l      $8(a7), a0
008c86: 2008         move.l     a0, d0
008c88: 6100098e     bsr.w      $9618
008c8c: 2f400004     move.l     d0, $4(a7)
008c90: 6d000100     blt.w      $8d92
008c94: 41ef0022     lea.l      $22(a7), a0
008c98: 2208         move.l     a0, d1
008c9a: 200a         move.l     a2, d0
008c9c: 61000a00     bsr.w      $969e
008ca0: 2440         movea.l    d0, a2
008ca2: 4a80         tst.l      d0
008ca4: 670000ec     beq.w      $8d92
008ca8: 202f0004     move.l     $4(a7), d0
008cac: e588         lsl.l      #$2, d0
008cae: 41ee9a6a     lea.l      -$6596(a6), a0
008cb2: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
008cb8: 6600009a     bne.w      $8d54
008cbc: 7203         moveq      #$3, d1
008cbe: 41ef0008     lea.l      $8(a7), a0
008cc2: 2008         move.l     a0, d0
008cc4: 61000ed2     bsr.w      $9b98
008cc8: 222f0004     move.l     $4(a7), d1
008ccc: e589         lsl.l      #$2, d1
008cce: 41ee9a6a     lea.l      -$6596(a6), a0
008cd2: 31801800     move.w     d0, (a0, d1.l)
008cd6: 6d0000d4     blt.w      $8dac
008cda: 202f0004     move.l     $4(a7), d0
008cde: e588         lsl.l      #$2, d0
008ce0: 41ee9a6a     lea.l      -$6596(a6), a0
008ce4: 2400         move.l     d0, d2
008ce6: 42a7         clr.l      -(a7)
008ce8: 202f0008     move.l     $8(a7), d0
008cec: e588         lsl.l      #$2, d0
008cee: 43ee9a6a     lea.l      -$6596(a6), a1
008cf2: 32710800     movea.w    (a1, d0.l), a1
008cf6: 2209         move.l     a1, d1
008cf8: 203c0000ff0e move.l     #$ff0e, d0
008cfe: 61000b8e     bsr.w      $988e
008d02: 588f         addq.l     #$4, a7
008d04: 2240         movea.l    d0, a1
008d06: 7000         moveq      #$0, d0
008d08: 1011         move.b     (a1), d0
008d0a: 31802802     move.w     d0, $2(a0, d2.l)
008d0e: 202f0004     move.l     $4(a7), d0
008d12: e588         lsl.l      #$2, d0
008d14: 41ee9a6a     lea.l      -$6596(a6), a0
008d18: 4a700800     tst.w      (a0, d0.l)
008d1c: 6d36         blt.b      $8d54
008d1e: 202f0004     move.l     $4(a7), d0
008d22: e588         lsl.l      #$2, d0
008d24: 41ee9a6a     lea.l      -$6596(a6), a0
008d28: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
008d2e: 6c24         bge.b      $8d54
008d30: 202f0004     move.l     $4(a7), d0
008d34: e588         lsl.l      #$2, d0
008d36: 41ee9a6a     lea.l      -$6596(a6), a0
008d3a: 30700800     movea.w    (a0, d0.l), a0
008d3e: 2008         move.l     a0, d0
008d40: 61000e86     bsr.w      $9bc8
008d44: 202f0004     move.l     $4(a7), d0
008d48: e588         lsl.l      #$2, d0
008d4a: 41ee9a6a     lea.l      -$6596(a6), a0
008d4e: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
008d54: 202f0004     move.l     $4(a7), d0
008d58: e588         lsl.l      #$2, d0
008d5a: 41ee9a6a     lea.l      -$6596(a6), a0
008d5e: 30300802     move.w     $2(a0, d0.l), d0
008d62: 48c0         ext.l      d0
008d64: b0af0022     cmp.l      $22(a7), d0
008d68: 6628         bne.b      $8d92
008d6a: 0c12005f     cmpi.b     #$5f, (a2)
008d6e: 6610         bne.b      $8d80
008d70: 6004         bra.b      $8d76
008d72: 4a12         tst.b      (a2)
008d74: 6736         beq.b      $8dac
008d76: 528a         addq.l     #$1, a2
008d78: 0c12005f     cmpi.b     #$5f, (a2)
008d7c: 66f4         bne.b      $8d72
008d7e: 528a         addq.l     #$1, a2
008d80: 2f2f0052     move.l     $52(a7), -(a7)
008d84: 306f0054     movea.w    $54(a7), a0
008d88: 2f08         move.l     a0, -(a7)
008d8a: 222f0032     move.l     $32(a7), d1
008d8e: 200a         move.l     a2, d0
008d90: 6012         bra.b      $8da4
008d92: 2f2f0052     move.l     $52(a7), -(a7)
008d96: 306f0054     movea.w    $54(a7), a0
008d9a: 2f08         move.l     a0, -(a7)
008d9c: 222f0032     move.l     $32(a7), d1
008da0: 202f002e     move.l     $2e(a7), d0
008da4: 61000dea     bsr.w      $9b90
008da8: 508f         addq.l     #$8, a7
008daa: 6002         bra.b      $8dae
008dac: 70ff         moveq      #$ff, d0
008dae: 4fef0026     lea.l      $26(a7), a7
008db2: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
008db8: 4e5d         unlk       a5
008dba: 4e75         rts        
008dbc: 4e550000     link.w     a5, #$0
008dc0: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
008dc4: 4fefffc8     lea.l      -$38(a7), a7
008dc8: 2f6f00380008 move.l     $38(a7), $8(a7)
008dce: 4a2f0009     tst.b      $9(a7)
008dd2: 660e         bne.b      $8de2
008dd4: 306f003e     movea.w    $3e(a7), a0
008dd8: 2208         move.l     a0, d1
008dda: 202f0008     move.l     $8(a7), d0
008dde: 600000c8     bra.w      $8ea8
008de2: 4aae9a34     tst.l      -$65cc(a6)
008de6: 6608         bne.b      $8df0
008de8: 61000a80     bsr.w      $986a
008dec: 2d409a34     move.l     d0, -$65cc(a6)
008df0: 7000         moveq      #$0, d0
008df2: 102f0008     move.b     $8(a7), d0
008df6: e588         lsl.l      #$2, d0
008df8: 41ee9a6a     lea.l      -$6596(a6), a0
008dfc: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
008e02: 66000080     bne.w      $8e84
008e06: 7000         moveq      #$0, d0
008e08: 102f0008     move.b     $8(a7), d0
008e0c: e588         lsl.l      #$2, d0
008e0e: 206e9a34     movea.l    -$65cc(a6), a0
008e12: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
008e16: 41fa016e     lea.l      $8f86(pc), a0
008e1a: 2208         move.l     a0, d1
008e1c: 41ef001c     lea.l      $1c(a7), a0
008e20: 2008         move.l     a0, d0
008e22: 61000d34     bsr.w      $9b58
008e26: 588f         addq.l     #$4, a7
008e28: 7203         moveq      #$3, d1
008e2a: 41ef0018     lea.l      $18(a7), a0
008e2e: 2008         move.l     a0, d0
008e30: 61000d66     bsr.w      $9b98
008e34: 7200         moveq      #$0, d1
008e36: 122f0008     move.b     $8(a7), d1
008e3a: e589         lsl.l      #$2, d1
008e3c: 41ee9a6a     lea.l      -$6596(a6), a0
008e40: 31801800     move.w     d0, (a0, d1.l)
008e44: 6c06         bge.b      $8e4c
008e46: 70ff         moveq      #$ff, d0
008e48: 6000012e     bra.w      $8f78
008e4c: 7000         moveq      #$0, d0
008e4e: 102f0008     move.b     $8(a7), d0
008e52: e588         lsl.l      #$2, d0
008e54: 41ee9a6a     lea.l      -$6596(a6), a0
008e58: 2400         move.l     d0, d2
008e5a: 42a7         clr.l      -(a7)
008e5c: 7000         moveq      #$0, d0
008e5e: 102f000c     move.b     $c(a7), d0
008e62: e588         lsl.l      #$2, d0
008e64: 43ee9a6a     lea.l      -$6596(a6), a1
008e68: 32710800     movea.w    (a1, d0.l), a1
008e6c: 2209         move.l     a1, d1
008e6e: 203c0000ff0e move.l     #$ff0e, d0
008e74: 61000a18     bsr.w      $988e
008e78: 588f         addq.l     #$4, a7
008e7a: 2240         movea.l    d0, a1
008e7c: 7000         moveq      #$0, d0
008e7e: 1011         move.b     (a1), d0
008e80: 31802802     move.w     d0, $2(a0, d2.l)
008e84: 7000         moveq      #$0, d0
008e86: 102f0008     move.b     $8(a7), d0
008e8a: e588         lsl.l      #$2, d0
008e8c: 41ee9a6a     lea.l      -$6596(a6), a0
008e90: 7200         moveq      #$0, d1
008e92: 122f0009     move.b     $9(a7), d1
008e96: b2700802     cmp.w      $2(a0, d0.l), d1
008e9a: 6614         bne.b      $8eb0
008e9c: 306f003e     movea.w    $3e(a7), a0
008ea0: 2208         move.l     a0, d1
008ea2: 7000         moveq      #$0, d0
008ea4: 302f000a     move.w     $a(a7), d0
008ea8: 61001c8c     bsr.w      $ab36
008eac: 600000ca     bra.w      $8f78
008eb0: 4aae9a30     tst.l      -$65d0(a6)
008eb4: 661a         bne.b      $8ed0
008eb6: 61001d3c     bsr.w      $abf4
008eba: 2d409a30     move.l     d0, -$65d0(a6)
008ebe: 2d7c000100008e20 move.l     #$10000, -$71e0(a6)
008ec6: 2d6e9a308e24 move.l     -$65d0(a6), -$71dc(a6)
008ecc: 42ae8e1c     clr.l      -$71e4(a6)
008ed0: 7001         moveq      #$1, d0
008ed2: 2d408e3c     move.l     d0, -$71c4(a6)
008ed6: 7008         moveq      #$8, d0
008ed8: 2d408e40     move.l     d0, -$71c0(a6)
008edc: 41d7         lea.l      (a7), a0
008ede: 2d488e44     move.l     a0, -$71bc(a6)
008ee2: 41ee8e18     lea.l      -$71e8(a6), a0
008ee6: 2d488e4c     move.l     a0, -$71b4(a6)
008eea: 7018         moveq      #$18, d0
008eec: 2d408e48     move.l     d0, -$71b8(a6)
008ef0: 7000         moveq      #$0, d0
008ef2: 302f000a     move.w     $a(a7), d0
008ef6: 2d408e28     move.l     d0, -$71d8(a6)
008efa: 306f003e     movea.w    $3e(a7), a0
008efe: 2d488e2c     move.l     a0, -$71d4(a6)
008f02: 1d6f00098e1b move.b     $9(a7), -$71e5(a6)
008f08: 422e8e1c     clr.b      -$71e4(a6)
008f0c: 486e8e3c     pea.l      -$71c4(a6)
008f10: 7000         moveq      #$0, d0
008f12: 102f000c     move.b     $c(a7), d0
008f16: e588         lsl.l      #$2, d0
008f18: 41ee9a6a     lea.l      -$6596(a6), a0
008f1c: 30700800     movea.w    (a0, d0.l), a0
008f20: 2208         move.l     a0, d1
008f22: 203c0000ff05 move.l     #$ff05, d0
008f28: 610009c8     bsr.w      $98f2
008f2c: 588f         addq.l     #$4, a7
008f2e: 2f400010     move.l     d0, $10(a7)
008f32: 6c08         bge.b      $8f3c
008f34: 70ff         moveq      #$ff, d0
008f36: 2f40000c     move.l     d0, $c(a7)
008f3a: 6038         bra.b      $8f74
008f3c: 2f2f0010     move.l     $10(a7), -(a7)
008f40: 7000         moveq      #$0, d0
008f42: 102f000c     move.b     $c(a7), d0
008f46: e588         lsl.l      #$2, d0
008f48: 41ee9a6a     lea.l      -$6596(a6), a0
008f4c: 30700800     movea.w    (a0, d0.l), a0
008f50: 2208         move.l     a0, d1
008f52: 203c0000ff06 move.l     #$ff06, d0
008f58: 61000998     bsr.w      $98f2
008f5c: 588f         addq.l     #$4, a7
008f5e: 2f40000c     move.l     d0, $c(a7)
008f62: 6dd0         blt.b      $8f34
008f64: 2f6f0004000c move.l     $4(a7), $c(a7)
008f6a: 4aaf0004     tst.l      $4(a7)
008f6e: 6c04         bge.b      $8f74
008f70: 2d57800c     move.l     (a7), -$7ff4(a6)
008f74: 202f000c     move.l     $c(a7), d0
008f78: 4fef0038     lea.l      $38(a7), a7
008f7c: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
008f82: 4e5d         unlk       a5
008f84: 4e75         rts        
008f86: 2f25         move.l     -(a5), -(a7)
008f88: 7300         .dc.w      $7300
008f8a: 4e550000     link.w     a5, #$0
008f8e: 48e7c080     movem.l    d0-d1/a0, -(a7)
008f92: 7002         moveq      #$2, d0
008f94: b0ae9a38     cmp.l      -$65c8(a6), d0
008f98: 6c0c         bge.b      $8fa6
008f9a: 2217         move.l     (a7), d1
008f9c: 41fa052c     lea.l      $94ca(pc), a0
008fa0: 2008         move.l     a0, d0
008fa2: 61000bac     bsr.w      $9b50
008fa6: 0c9700000106 cmpi.l     #$106, (a7)
008fac: 6608         bne.b      $8fb6
008fae: 7001         moveq      #$1, d0
008fb0: 2d408e58     move.l     d0, -$71a8(a6)
008fb4: 600e         bra.b      $8fc4
008fb6: 4aae8e5c     tst.l      -$71a4(a6)
008fba: 6708         beq.b      $8fc4
008fbc: 2017         move.l     (a7), d0
008fbe: 206e8e5c     movea.l    -$71a4(a6), a0
008fc2: 4e90         jsr        (a0)
008fc4: 7000         moveq      #$0, d0
008fc6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
008fcc: 4e5d         unlk       a5
008fce: 4e75         rts        
008fd0: 4e550000     link.w     a5, #$0
008fd4: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
008fd8: 4fefff58     lea.l      -$a8(a7), a7
008fdc: 6010         bra.b      $8fee
008fde: 08ef000600de bset.b     #$6, $de(a7)
008fe4: 601c         bra.b      $9002
008fe6: 08ef000700de bset.b     #$7, $de(a7)
008fec: 6014         bra.b      $9002
008fee: 202f00e0     move.l     $e0(a7), d0
008ff2: 0c80a95acd81 cmpi.l     #$a95acd81, d0
008ff8: 67e4         beq.b      $8fde
008ffa: 0c80a95acd82 cmpi.l     #$a95acd82, d0
009000: 67e4         beq.b      $8fe6
009002: 41ef0094     lea.l      $94(a7), a0
009006: 2208         move.l     a0, d1
009008: 202f00ac     move.l     $ac(a7), d0
00900c: 610005c4     bsr.w      $95d2
009010: 2f400028     move.l     d0, $28(a7)
009014: 6700015c     beq.w      $9172
009018: 206f0028     movea.l    $28(a7), a0
00901c: 0c10005f     cmpi.b     #$5f, (a0)
009020: 66000150     bne.w      $9172
009024: 2f6f002800ac move.l     $28(a7), $ac(a7)
00902a: 2d6f00ac9a54 move.l     $ac(a7), -$65ac(a6)
009030: 41ef0094     lea.l      $94(a7), a0
009034: 2d489a48     move.l     a0, -$65b8(a6)
009038: 41ef0094     lea.l      $94(a7), a0
00903c: 2008         move.l     a0, d0
00903e: 610005d8     bsr.w      $9618
009042: 3f40002c     move.w     d0, $2c(a7)
009046: 6c0c         bge.b      $9054
009048: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
009050: 60000242     bra.w      $9294
009054: 422f0052     clr.b      $52(a7)
009058: 41ef0046     lea.l      $46(a7), a0
00905c: 2208         move.l     a0, d1
00905e: 202f00ac     move.l     $ac(a7), d0
009062: 6100063a     bsr.w      $969e
009066: 2f400028     move.l     d0, $28(a7)
00906a: 67000106     beq.w      $9172
00906e: 1f6f00490051 move.b     $49(a7), $51(a7)
009074: 2f6f002800ac move.l     $28(a7), $ac(a7)
00907a: 302f002c     move.w     $2c(a7), d0
00907e: 48c0         ext.l      d0
009080: e588         lsl.l      #$2, d0
009082: 41ee9a6a     lea.l      -$6596(a6), a0
009086: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
00908c: 660000b6     bne.w      $9144
009090: 486f0094     pea.l      $94(a7)
009094: 41fa0464     lea.l      $94fa(pc), a0
009098: 2208         move.l     a0, d1
00909a: 41ef0078     lea.l      $78(a7), a0
00909e: 2008         move.l     a0, d0
0090a0: 61000ab6     bsr.w      $9b58
0090a4: 588f         addq.l     #$4, a7
0090a6: 7001         moveq      #$1, d0
0090a8: b0ae9a38     cmp.l      -$65c8(a6), d0
0090ac: 6c10         bge.b      $90be
0090ae: 41ef0074     lea.l      $74(a7), a0
0090b2: 2208         move.l     a0, d1
0090b4: 41fa0447     lea.l      $94fd(pc), a0
0090b8: 2008         move.l     a0, d0
0090ba: 61000a94     bsr.w      $9b50
0090be: 7203         moveq      #$3, d1
0090c0: 41ef0074     lea.l      $74(a7), a0
0090c4: 2008         move.l     a0, d0
0090c6: 61000ad0     bsr.w      $9b98
0090ca: 322f002c     move.w     $2c(a7), d1
0090ce: 48c1         ext.l      d1
0090d0: e589         lsl.l      #$2, d1
0090d2: 41ee9a6a     lea.l      -$6596(a6), a0
0090d6: 31801800     move.w     d0, (a0, d1.l)
0090da: 6c30         bge.b      $910c
0090dc: 7001         moveq      #$1, d0
0090de: b0ae9a38     cmp.l      -$65c8(a6), d0
0090e2: 6c0001b0     bge.w      $9294
0090e6: 302f002c     move.w     $2c(a7), d0
0090ea: 48c0         ext.l      d0
0090ec: e588         lsl.l      #$2, d0
0090ee: 41ee9a6a     lea.l      -$6596(a6), a0
0090f2: 30700800     movea.w    (a0, d0.l), a0
0090f6: 2f08         move.l     a0, -(a7)
0090f8: 222f004a     move.l     $4a(a7), d1
0090fc: 41fa0418     lea.l      $9516(pc), a0
009100: 2008         move.l     a0, d0
009102: 61000a4c     bsr.w      $9b50
009106: 588f         addq.l     #$4, a7
009108: 6000018a     bra.w      $9294
00910c: 302f002c     move.w     $2c(a7), d0
009110: 48c0         ext.l      d0
009112: e588         lsl.l      #$2, d0
009114: 41ee9a6a     lea.l      -$6596(a6), a0
009118: 2400         move.l     d0, d2
00911a: 42a7         clr.l      -(a7)
00911c: 302f0030     move.w     $30(a7), d0
009120: 48c0         ext.l      d0
009122: e588         lsl.l      #$2, d0
009124: 43ee9a6a     lea.l      -$6596(a6), a1
009128: 32710800     movea.w    (a1, d0.l), a1
00912c: 2209         move.l     a1, d1
00912e: 203c0000ff0e move.l     #$ff0e, d0
009134: 61000758     bsr.w      $988e
009138: 588f         addq.l     #$4, a7
00913a: 2240         movea.l    d0, a1
00913c: 7000         moveq      #$0, d0
00913e: 1011         move.b     (a1), d0
009140: 31802802     move.w     d0, $2(a0, d2.l)
009144: 302f002c     move.w     $2c(a7), d0
009148: 48c0         ext.l      d0
00914a: e588         lsl.l      #$2, d0
00914c: 41ee9a6a     lea.l      -$6596(a6), a0
009150: 30300802     move.w     $2(a0, d0.l), d0
009154: 48c0         ext.l      d0
009156: b0af0046     cmp.l      $46(a7), d0
00915a: 6642         bne.b      $919e
00915c: 7001         moveq      #$1, d0
00915e: b0ae9a38     cmp.l      -$65c8(a6), d0
009162: 6c0e         bge.b      $9172
009164: 222f00ac     move.l     $ac(a7), d1
009168: 41fa03bf     lea.l      $9529(pc), a0
00916c: 2008         move.l     a0, d0
00916e: 610009e0     bsr.w      $9b50
009172: 306f00de     movea.w    $de(a7), a0
009176: 2f08         move.l     a0, -(a7)
009178: 306f00de     movea.w    $de(a7), a0
00917c: 2f08         move.l     a0, -(a7)
00917e: 2f2f00dc     move.l     $dc(a7), -(a7)
009182: 2f2f00dc     move.l     $dc(a7), -(a7)
009186: 2f2f00dc     move.l     $dc(a7), -(a7)
00918a: 222f00c0     move.l     $c0(a7), d1
00918e: 202f00bc     move.l     $bc(a7), d0
009192: 61000a54     bsr.w      $9be8
009196: 4fef0014     lea.l      $14(a7), a7
00919a: 6000030a     bra.w      $94a6
00919e: 4a6e9a5c     tst.w      -$65a4(a6)
0091a2: 6608         bne.b      $91ac
0091a4: 61001a4e     bsr.w      $abf4
0091a8: 3d409a5c     move.w     d0, -$65a4(a6)
0091ac: 42ae8e5c     clr.l      -$71a4(a6)
0091b0: 306e9a5c     movea.w    -$65a4(a6), a0
0091b4: 2008         move.l     a0, d0
0091b6: 6100068c     bsr.w      $9844
0091ba: 2d408e5c     move.l     d0, -$71a4(a6)
0091be: 7001         moveq      #$1, d0
0091c0: b0ae9a38     cmp.l      -$65c8(a6), d0
0091c4: 6c0e         bge.b      $91d4
0091c6: 222e8e5c     move.l     -$71a4(a6), d1
0091ca: 41fa0384     lea.l      $9550(pc), a0
0091ce: 2008         move.l     a0, d0
0091d0: 6100097e     bsr.w      $9b50
0091d4: 41fafdb4     lea.l      $8f8a(pc), a0
0091d8: 2008         move.l     a0, d0
0091da: 610002d8     bsr.w      $94b4
0091de: 306f00de     movea.w    $de(a7), a0
0091e2: 2f08         move.l     a0, -(a7)
0091e4: 42a7         clr.l      -(a7)
0091e6: 42a7         clr.l      -(a7)
0091e8: 2f2f00dc     move.l     $dc(a7), -(a7)
0091ec: 486e9a3c     pea.l      -$65c4(a6)
0091f0: 41fa0374     lea.l      $9566(pc), a0
0091f4: 2208         move.l     a0, d1
0091f6: 41fa19a0     lea.l      $ab98(pc), a0
0091fa: 2008         move.l     a0, d0
0091fc: 610009ea     bsr.w      $9be8
009200: 4fef0014     lea.l      $14(a7), a7
009204: 2f40005e     move.l     d0, $5e(a7)
009208: 6f00008a     ble.w      $9294
00920c: 2f7c000200000056 move.l     #$20000, $56(a7)
009214: 42af005a     clr.l      $5a(a7)
009218: 2f6f00d40062 move.l     $d4(a7), $62(a7)
00921e: 3f6f00da0066 move.w     $da(a7), $66(a7)
009224: 3f6f00de0068 move.w     $de(a7), $68(a7)
00922a: 3f6f002c006c move.w     $2c(a7), $6c(a7)
009230: 3f6e9a5c006a move.w     -$65a4(a6), $6a(a7)
009236: 7001         moveq      #$1, d0
009238: 2f40004a     move.l     d0, $4a(a7)
00923c: 42af0042     clr.l      $42(a7)
009240: 6004         bra.b      $9246
009242: 52af004a     addq.l     #$1, $4a(a7)
009246: 202f0042     move.l     $42(a7), d0
00924a: 52af0042     addq.l     #$1, $42(a7)
00924e: e588         lsl.l      #$2, d0
009250: 206f00cc     movea.l    $cc(a7), a0
009254: 4ab00800     tst.l      (a0, d0.l)
009258: 66e8         bne.b      $9242
00925a: 52af004a     addq.l     #$1, $4a(a7)
00925e: 42af0042     clr.l      $42(a7)
009262: 6004         bra.b      $9268
009264: 52af004a     addq.l     #$1, $4a(a7)
009268: 202f0042     move.l     $42(a7), d0
00926c: 52af0042     addq.l     #$1, $42(a7)
009270: e588         lsl.l      #$2, d0
009272: 206f00d0     movea.l    $d0(a7), a0
009276: 4ab00800     tst.l      (a0, d0.l)
00927a: 66e8         bne.b      $9264
00927c: 52af004a     addq.l     #$1, $4a(a7)
009280: 202f004a     move.l     $4a(a7), d0
009284: e788         lsl.l      #$3, d0
009286: 7214         moveq      #$14, d1
009288: d081         add.l      d1, d0
00928a: 61000980     bsr.w      $9c0c
00928e: 2440         movea.l    d0, a2
009290: 4a80         tst.l      d0
009292: 6606         bne.b      $929a
009294: 70ff         moveq      #$ff, d0
009296: 6000020e     bra.w      $94a6
00929a: 202f004a     move.l     $4a(a7), d0
00929e: 5280         addq.l     #$1, d0
0092a0: 2480         move.l     d0, (a2)
0092a2: 257c000000080004 move.l     #$8, $4(a2)
0092aa: 41ef0020     lea.l      $20(a7), a0
0092ae: 25480008     move.l     a0, $8(a2)
0092b2: 700c         moveq      #$c, d0
0092b4: d08a         add.l      a2, d0
0092b6: 2640         movea.l    d0, a3
0092b8: 41ef004e     lea.l      $4e(a7), a0
0092bc: 27480004     move.l     a0, $4(a3)
0092c0: 26bc00000020 move.l     #$20, (a3)
0092c6: 508b         addq.l     #$8, a3
0092c8: 276f00ac0004 move.l     $ac(a7), $4(a3)
0092ce: 202f00ac     move.l     $ac(a7), d0
0092d2: 610009d8     bsr.w      $9cac
0092d6: 5280         addq.l     #$1, d0
0092d8: 2680         move.l     d0, (a3)
0092da: 508b         addq.l     #$8, a3
0092dc: 42af0042     clr.l      $42(a7)
0092e0: 605a         bra.b      $933c
0092e2: 7001         moveq      #$1, d0
0092e4: b0ae9a38     cmp.l      -$65c8(a6), d0
0092e8: 6c26         bge.b      $9310
0092ea: 222f0042     move.l     $42(a7), d1
0092ee: 41fa027d     lea.l      $956d(pc), a0
0092f2: 2008         move.l     a0, d0
0092f4: 6100085a     bsr.w      $9b50
0092f8: 202f0042     move.l     $42(a7), d0
0092fc: e588         lsl.l      #$2, d0
0092fe: 206f00cc     movea.l    $cc(a7), a0
009302: 22300800     move.l     (a0, d0.l), d1
009306: 41fa0285     lea.l      $958d(pc), a0
00930a: 2008         move.l     a0, d0
00930c: 61000842     bsr.w      $9b50
009310: 202f0042     move.l     $42(a7), d0
009314: e588         lsl.l      #$2, d0
009316: 206f00cc     movea.l    $cc(a7), a0
00931a: 277008000004 move.l     (a0, d0.l), $4(a3)
009320: 202f0042     move.l     $42(a7), d0
009324: 52af0042     addq.l     #$1, $42(a7)
009328: e588         lsl.l      #$2, d0
00932a: 206f00cc     movea.l    $cc(a7), a0
00932e: 20300800     move.l     (a0, d0.l), d0
009332: 61000978     bsr.w      $9cac
009336: 5280         addq.l     #$1, d0
009338: 2680         move.l     d0, (a3)
00933a: 508b         addq.l     #$8, a3
00933c: 202f0042     move.l     $42(a7), d0
009340: e588         lsl.l      #$2, d0
009342: 206f00cc     movea.l    $cc(a7), a0
009346: 4ab00800     tst.l      (a0, d0.l)
00934a: 6696         bne.b      $92e2
00934c: 41fa024e     lea.l      $959c(pc), a0
009350: 27480004     move.l     a0, $4(a3)
009354: 26bc00000001 move.l     #$1, (a3)
00935a: 508b         addq.l     #$8, a3
00935c: 42af0042     clr.l      $42(a7)
009360: 604c         bra.b      $93ae
009362: 7001         moveq      #$1, d0
009364: b0ae9a38     cmp.l      -$65c8(a6), d0
009368: 6c18         bge.b      $9382
00936a: 202f0042     move.l     $42(a7), d0
00936e: e588         lsl.l      #$2, d0
009370: 206f00d0     movea.l    $d0(a7), a0
009374: 22300800     move.l     (a0, d0.l), d1
009378: 41fa0223     lea.l      $959d(pc), a0
00937c: 2008         move.l     a0, d0
00937e: 610007d0     bsr.w      $9b50
009382: 202f0042     move.l     $42(a7), d0
009386: e588         lsl.l      #$2, d0
009388: 206f00d0     movea.l    $d0(a7), a0
00938c: 277008000004 move.l     (a0, d0.l), $4(a3)
009392: 202f0042     move.l     $42(a7), d0
009396: 52af0042     addq.l     #$1, $42(a7)
00939a: e588         lsl.l      #$2, d0
00939c: 206f00d0     movea.l    $d0(a7), a0
0093a0: 20300800     move.l     (a0, d0.l), d0
0093a4: 61000906     bsr.w      $9cac
0093a8: 5280         addq.l     #$1, d0
0093aa: 2680         move.l     d0, (a3)
0093ac: 508b         addq.l     #$8, a3
0093ae: 202f0042     move.l     $42(a7), d0
0093b2: e588         lsl.l      #$2, d0
0093b4: 206f00d0     movea.l    $d0(a7), a0
0093b8: 4ab00800     tst.l      (a0, d0.l)
0093bc: 66a4         bne.b      $9362
0093be: 41fa01ec     lea.l      $95ac(pc), a0
0093c2: 27480004     move.l     a0, $4(a3)
0093c6: 26bc00000001 move.l     #$1, (a3)
0093cc: 508b         addq.l     #$8, a3
0093ce: 7001         moveq      #$1, d0
0093d0: 61001384     bsr.w      $a756
0093d4: 42ae8e54     clr.l      -$71ac(a6)
0093d8: 600a         bra.b      $93e4
0093da: 52ae8e54     addq.l     #$1, -$71ac(a6)
0093de: 7001         moveq      #$1, d0
0093e0: 61001374     bsr.w      $a756
0093e4: 4aae8e58     tst.l      -$71a8(a6)
0093e8: 67f0         beq.b      $93da
0093ea: 7064         moveq      #$64, d0
0093ec: b0ae8e54     cmp.l      -$71ac(a6), d0
0093f0: 6e0e         bgt.b      $9400
0093f2: 222e8e54     move.l     -$71ac(a6), d1
0093f6: 41fa01b5     lea.l      $95ad(pc), a0
0093fa: 2008         move.l     a0, d0
0093fc: 61000752     bsr.w      $9b50
009400: 4aae8e5c     tst.l      -$71a4(a6)
009404: 6708         beq.b      $940e
009406: 202e8e5c     move.l     -$71a4(a6), d0
00940a: 610000a8     bsr.w      $94b4
00940e: 4852         pea.l      (a2)
009410: 302f0030     move.w     $30(a7), d0
009414: 48c0         ext.l      d0
009416: e588         lsl.l      #$2, d0
009418: 41ee9a6a     lea.l      -$6596(a6), a0
00941c: 30700800     movea.w    (a0, d0.l), a0
009420: 2208         move.l     a0, d1
009422: 203c0000ff05 move.l     #$ff05, d0
009428: 610004c8     bsr.w      $98f2
00942c: 588f         addq.l     #$4, a7
00942e: 2f40003a     move.l     d0, $3a(a7)
009432: 6c08         bge.b      $943c
009434: 70ff         moveq      #$ff, d0
009436: 2f40002e     move.l     d0, $2e(a7)
00943a: 6060         bra.b      $949c
00943c: 2f2f003a     move.l     $3a(a7), -(a7)
009440: 302f0030     move.w     $30(a7), d0
009444: 48c0         ext.l      d0
009446: e588         lsl.l      #$2, d0
009448: 41ee9a6a     lea.l      -$6596(a6), a0
00944c: 30700800     movea.w    (a0, d0.l), a0
009450: 2208         move.l     a0, d1
009452: 203c0000ff06 move.l     #$ff06, d0
009458: 61000498     bsr.w      $98f2
00945c: 588f         addq.l     #$4, a7
00945e: 2f40002e     move.l     d0, $2e(a7)
009462: 6c10         bge.b      $9474
009464: 70ff         moveq      #$ff, d0
009466: 2f40002e     move.l     d0, $2e(a7)
00946a: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
009472: 6028         bra.b      $949c
009474: 2f6f0024002e move.l     $24(a7), $2e(a7)
00947a: 4aaf002e     tst.l      $2e(a7)
00947e: 6c16         bge.b      $9496
009480: 223c00008000 move.l     #$8000, d1
009486: 202f005e     move.l     $5e(a7), d0
00948a: 610016aa     bsr.w      $ab36
00948e: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
009494: 6006         bra.b      $949c
009496: 1f6f002d002e move.b     $2d(a7), $2e(a7)
00949c: 200a         move.l     a2, d0
00949e: 61000778     bsr.w      $9c18
0094a2: 202f002e     move.l     $2e(a7), d0
0094a6: 4fef00a8     lea.l      $a8(a7), a7
0094aa: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
0094b0: 4e5d         unlk       a5
0094b2: 4e75         rts        
0094b4: 4e550000     link.w     a5, #$0
0094b8: 48e78000     movem.l    d0, -(a7)
0094bc: 2d579a7a     move.l     (a7), -$6586(a6)
0094c0: 2017         move.l     (a7), d0
0094c2: 61001768     bsr.w      $ac2c
0094c6: 4e5d         unlk       a5
0094c8: 4e75         rts        
0094ca: 5369676e     subq.w     #$1, $676e(a1)
0094ce: 616c         bsr.b      $953c
0094d0: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
0094da: 2063         movea.l    -(a3), a0
0094dc: 6f64         ble.b      $9542
0094de: 653d         bcs.b      $951d
0094e0: 2025         move.l     -(a5), d0
0094e2: 780d         moveq      #$d, d4
0094e4: 007365727665 ori.w      #$6572, $65(a3, d7.w)
0094ea: 7200         moveq      #$0, d1
0094ec: 3200         move.w     d0, d1
0094ee: 3000         move.w     d0, d0
0094f0: 2f633000     move.l     -(a3), $3000(a7)
0094f4: 3000         move.w     d0, d0
0094f6: 3000         move.w     d0, d0
0094f8: 3000         move.w     d0, d0
0094fa: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
009500: 6e20         bgt.b      $9522
009502: 6361         bls.b      $9565
009504: 726f         moveq      #$6f, d1
009506: 7370         .dc.w      $7370
009508: 6174         bsr.b      $957e
00950a: 6820         bvc.b      $952c
00950c: 6e61         bgt.b      $956f
00950e: 6d65         blt.b      $9575
009510: 6420         bcc.b      $9532
009512: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
009518: 7468         moveq      #$68, d2
00951a: 6964         bvs.b      $9580
00951c: 5b25         subq.b     #$5, -(a5)
00951e: 645d         bcc.b      $957d
009520: 206d6772     movea.l    $6772(a5), a0
009524: 3d25         move.w     -(a5), -(a6)
009526: 640d         bcc.b      $9535
009528: 00666f72     ori.w      #$6f72, -(a6)
00952c: 6b69         bmi.b      $9597
00952e: 6e67         bgt.b      $9597
009530: 2070726f     movea.l    $6f(a0, d7.w), a0
009534: 6365         bls.b      $959b
009536: 7373         .dc.w      $7373
009538: 206c6f63     movea.l    $6f63(a4), a0
00953c: 616c         bsr.b      $95aa
00953e: 6c79         bge.b      $95b9
009540: 2c20         move.l     -(a0), d6
009542: 6d6f         blt.b      $95b3
009544: 646e         bcc.b      $95b4
009546: 616d         bsr.b      $95b5
009548: 6520         bcs.b      $956a
00954a: 3d20         move.w     -(a0), -(a6)
00954c: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
009552: 6420         bcc.b      $9574
009554: 6963         bvs.b      $95b9
009556: 7074         moveq      #$74, d0
009558: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
009562: 25780d007365 move.l     $d00.w, $7365(a2)
009568: 7276         moveq      #$76, d1
00956a: 6572         bcs.b      $95de
00956c: 00656e74     ori.w      #$6e74, -(a5)
009570: 6572         bcs.b      $95e4
009572: 6564         bcs.b      $95d8
009574: 2061         movea.l    -(a1), a0
009576: 7267         moveq      #$67, d1
009578: 6c69         bge.b      $95e3
00957a: 7374         .dc.w      $7374
00957c: 206c6f6f     movea.l    $6f6f(a4), a0
009580: 702c         moveq      #$2c, d0
009582: 20696e64     movea.l    $6e64(a1), a0
009586: 6578         bcs.b      $9600
009588: 3d25         move.w     -(a5), -(a6)
00958a: 640d         bcc.b      $9599
00958c: 00415247     ori.w      #$5247, d1
009590: 4c49         .dc.w      $4c49
009592: 5354         subq.w     #$1, (a4)
009594: 5b695d3d     subq.w     #$5, $5d3d(a1)
009598: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
00959e: 4e564c49     link.w     a6, #$4c49
0095a2: 5354         subq.w     #$1, (a4)
0095a4: 5b695d3d     subq.w     #$5, $5d3d(a1)
0095a8: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
0095ae: 796e         .dc.w      $796e
0095b0: 6368         bls.b      $961a
0095b2: 726f         moveq      #$6f, d1
0095b4: 6e69         bgt.b      $961f
0095b6: 7369         .dc.w      $7369
0095b8: 6e67         bgt.b      $9621
0095ba: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
0095c4: 6f6b         ble.b      $9631
0095c6: 2025         move.l     -(a5), d0
0095c8: 6420         bcc.b      $95ea
0095ca: 7469         moveq      #$69, d2
0095cc: 636b         bls.b      $9639
0095ce: 730d         .dc.w      $730d
0095d0: 00004e55     ori.b      #$55, d0
0095d4: 000048e7     ori.b      #$e7, d0
0095d8: c8302440     and.b      $40(a0, d2.w), d4
0095dc: 2641         movea.l    d1, a3
0095de: 558f         subq.l     #$2, a7
0095e0: 1012         move.b     (a2), d0
0095e2: 1680         move.b     d0, (a3)
0095e4: 0c00002f     cmpi.b     #$2f, d0
0095e8: 6704         beq.b      $95ee
0095ea: 7000         moveq      #$0, d0
0095ec: 601e         bra.b      $960c
0095ee: 528a         addq.l     #$1, a2
0095f0: 528b         addq.l     #$1, a3
0095f2: 1012         move.b     (a2), d0
0095f4: 1680         move.b     d0, (a3)
0095f6: 1f400001     move.b     d0, $1(a7)
0095fa: 0c00002f     cmpi.b     #$2f, d0
0095fe: 6706         beq.b      $9606
009600: 4a2f0001     tst.b      $1(a7)
009604: 66e8         bne.b      $95ee
009606: 4213         clr.b      (a3)
009608: 528a         addq.l     #$1, a2
00960a: 200a         move.l     a2, d0
00960c: 548f         addq.l     #$2, a7
00960e: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
009614: 4e5d         unlk       a5
009616: 4e75         rts        
009618: 4e550000     link.w     a5, #$0
00961c: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
009620: 2440         movea.l    d0, a2
009622: 4aae9a5e     tst.l      -$65a2(a6)
009626: 6608         bne.b      $9630
009628: 61000240     bsr.w      $986a
00962c: 2d409a5e     move.l     d0, -$65a2(a6)
009630: 7800         moveq      #$0, d4
009632: 601a         bra.b      $964e
009634: 2004         move.l     d4, d0
009636: e588         lsl.l      #$2, d0
009638: 206e9a5e     movea.l    -$65a2(a6), a0
00963c: 2230081a     move.l     $1a(a0, d0.l), d1
009640: 200a         move.l     a2, d0
009642: 5280         addq.l     #$1, d0
009644: 610005f2     bsr.w      $9c38
009648: 4a80         tst.l      d0
00964a: 6710         beq.b      $965c
00964c: 5284         addq.l     #$1, d4
00964e: 206e9a5e     movea.l    -$65a2(a6), a0
009652: 30280010     move.w     $10(a0), d0
009656: 48c0         ext.l      d0
009658: b084         cmp.l      d4, d0
00965a: 6ed8         bgt.b      $9634
00965c: 206e9a5e     movea.l    -$65a2(a6), a0
009660: 30280010     move.w     $10(a0), d0
009664: 48c0         ext.l      d0
009666: b084         cmp.l      d4, d0
009668: 6e04         bgt.b      $966e
00966a: 70ff         moveq      #$ff, d0
00966c: 6002         bra.b      $9670
00966e: 2004         move.l     d4, d0
009670: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
009676: 4e5d         unlk       a5
009678: 4e75         rts        
00967a: 4e550000     link.w     a5, #$0
00967e: 48e7c080     movem.l    d0-d1/a0, -(a7)
009682: 202f0004     move.l     $4(a7), d0
009686: e588         lsl.l      #$2, d0
009688: 2057         movea.l    (a7), a0
00968a: 2070082a     movea.l    $2a(a0, d0.l), a0
00968e: 7000         moveq      #$0, d0
009690: 10280012     move.b     $12(a0), d0
009694: 4ced0100fffc movem.l    -$4(a5), a0
00969a: 4e5d         unlk       a5
00969c: 4e75         rts        
00969e: 4e550000     link.w     a5, #$0
0096a2: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0096a6: 2440         movea.l    d0, a2
0096a8: 4fefffda     lea.l      -$26(a7), a7
0096ac: 200a         move.l     a2, d0
0096ae: 61000110     bsr.w      $97c0
0096b2: 2440         movea.l    d0, a2
0096b4: 0c12005f     cmpi.b     #$5f, (a2)
0096b8: 660000f6     bne.w      $97b0
0096bc: 102a0001     move.b     $1(a2), d0
0096c0: 1f400005     move.b     d0, $5(a7)
0096c4: 0c000041     cmpi.b     #$41, d0
0096c8: 6d0000a4     blt.w      $976e
0096cc: 4aae9a62     tst.l      -$659e(a6)
0096d0: 6626         bne.b      $96f8
0096d2: 7200         moveq      #$0, d1
0096d4: 41fa017e     lea.l      $9854(pc), a0
0096d8: 2008         move.l     a0, d0
0096da: 6100131a     bsr.w      $a9f6
0096de: 2f400022     move.l     d0, $22(a7)
0096e2: 72ff         moveq      #$ff, d1
0096e4: b280         cmp.l      d0, d1
0096e6: 6606         bne.b      $96ee
0096e8: 70ff         moveq      #$ff, d0
0096ea: 600000c6     bra.w      $97b2
0096ee: 7030         moveq      #$30, d0
0096f0: d0af0022     add.l      $22(a7), d0
0096f4: 2d409a62     move.l     d0, -$659e(a6)
0096f8: 41ef000a     lea.l      $a(a7), a0
0096fc: 2f480006     move.l     a0, $6(a7)
009700: 600c         bra.b      $970e
009702: 206f0006     movea.l    $6(a7), a0
009706: 52af0006     addq.l     #$1, $6(a7)
00970a: 10af0005     move.b     $5(a7), (a0)
00970e: 528a         addq.l     #$1, a2
009710: 1012         move.b     (a2), d0
009712: 1f400005     move.b     d0, $5(a7)
009716: 0c00005f     cmpi.b     #$5f, d0
00971a: 66e6         bne.b      $9702
00971c: 206f0006     movea.l    $6(a7), a0
009720: 4210         clr.b      (a0)
009722: 202e9a62     move.l     -$659e(a6), d0
009726: 5480         addq.l     #$2, d0
009728: 2f40001e     move.l     d0, $1e(a7)
00972c: 7800         moveq      #$0, d4
00972e: 6030         bra.b      $9760
009730: 41ef000a     lea.l      $a(a7), a0
009734: 2208         move.l     a0, d1
009736: 202f001e     move.l     $1e(a7), d0
00973a: 610004fc     bsr.w      $9c38
00973e: 4a80         tst.l      d0
009740: 6614         bne.b      $9756
009742: 206f001e     movea.l    $1e(a7), a0
009746: 7000         moveq      #$0, d0
009748: 10280013     move.b     $13(a0), d0
00974c: 206f002a     movea.l    $2a(a7), a0
009750: 2080         move.l     d0, (a0)
009752: 528a         addq.l     #$1, a2
009754: 6056         bra.b      $97ac
009756: 06af00000014001e addi.l     #$14, $1e(a7)
00975e: 5284         addq.l     #$1, d4
009760: 206e9a62     movea.l    -$659e(a6), a0
009764: 3010         move.w     (a0), d0
009766: 48c0         ext.l      d0
009768: b084         cmp.l      d4, d0
00976a: 6ec4         bgt.b      $9730
00976c: 6042         bra.b      $97b0
00976e: 4297         clr.l      (a7)
009770: 6018         bra.b      $978a
009772: 2017         move.l     (a7), d0
009774: 720a         moveq      #$a, d1
009776: 61000ab0     bsr.w      $a228
00977a: 122f0005     move.b     $5(a7), d1
00977e: 4881         ext.w      d1
009780: 48c1         ext.l      d1
009782: d081         add.l      d1, d0
009784: 7230         moveq      #$30, d1
009786: 9081         sub.l      d1, d0
009788: 2e80         move.l     d0, (a7)
00978a: 528a         addq.l     #$1, a2
00978c: 1012         move.b     (a2), d0
00978e: 1f400005     move.b     d0, $5(a7)
009792: 0c000030     cmpi.b     #$30, d0
009796: 6d08         blt.b      $97a0
009798: 0c2f00390005 cmpi.b     #$39, $5(a7)
00979e: 6fd2         ble.b      $9772
0097a0: 0c1a005f     cmpi.b     #$5f, (a2)+
0097a4: 660a         bne.b      $97b0
0097a6: 206f002a     movea.l    $2a(a7), a0
0097aa: 2097         move.l     (a7), (a0)
0097ac: 200a         move.l     a2, d0
0097ae: 6002         bra.b      $97b2
0097b0: 7000         moveq      #$0, d0
0097b2: 4fef0026     lea.l      $26(a7), a7
0097b6: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
0097bc: 4e5d         unlk       a5
0097be: 4e75         rts        
0097c0: 4e550000     link.w     a5, #$0
0097c4: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0097c8: 2440         movea.l    d0, a2
0097ca: 518f         subq.l     #$8, a7
0097cc: 0c12005f     cmpi.b     #$5f, (a2)
0097d0: 6764         beq.b      $9836
0097d2: 0c120040     cmpi.b     #$40, (a2)
0097d6: 675e         beq.b      $9836
0097d8: 0c120041     cmpi.b     #$41, (a2)
0097dc: 6d58         blt.b      $9836
0097de: 4aae9a66     tst.l      -$659a(a6)
0097e2: 6620         bne.b      $9804
0097e4: 7200         moveq      #$0, d1
0097e6: 41fa0076     lea.l      $985e(pc), a0
0097ea: 2008         move.l     a0, d0
0097ec: 61001208     bsr.w      $a9f6
0097f0: 2f400004     move.l     d0, $4(a7)
0097f4: 72ff         moveq      #$ff, d1
0097f6: b280         cmp.l      d0, d1
0097f8: 673c         beq.b      $9836
0097fa: 7030         moveq      #$30, d0
0097fc: d0af0004     add.l      $4(a7), d0
009800: 2d409a66     move.l     d0, -$659a(a6)
009804: 202e9a66     move.l     -$659a(a6), d0
009808: 5480         addq.l     #$2, d0
00980a: 2e80         move.l     d0, (a7)
00980c: 7800         moveq      #$0, d4
00980e: 601a         bra.b      $982a
009810: 220a         move.l     a2, d1
009812: 2017         move.l     (a7), d0
009814: 61000422     bsr.w      $9c38
009818: 4a80         tst.l      d0
00981a: 6606         bne.b      $9822
00981c: 7014         moveq      #$14, d0
00981e: d097         add.l      (a7), d0
009820: 6016         bra.b      $9838
009822: 069700000032 addi.l     #$32, (a7)
009828: 5284         addq.l     #$1, d4
00982a: 206e9a66     movea.l    -$659a(a6), a0
00982e: 3010         move.w     (a0), d0
009830: 48c0         ext.l      d0
009832: b084         cmp.l      d4, d0
009834: 6eda         bgt.b      $9810
009836: 200a         move.l     a2, d0
009838: 508f         addq.l     #$8, a7
00983a: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
009840: 4e5d         unlk       a5
009842: 4e75         rts        
009844: 4e550000     link.w     a5, #$0
009848: 48e78000     movem.l    d0, -(a7)
00984c: 202e9a7a     move.l     -$6586(a6), d0
009850: 4e5d         unlk       a5
009852: 4e75         rts        
009854: 6361         bls.b      $98b7
009856: 725f         moveq      #$5f, d1
009858: 6e65         bgt.b      $98bf
00985a: 7464         moveq      #$64, d2
00985c: 62006361     bhi.w      $fbbf
009860: 725f         moveq      #$5f, d1
009862: 6465         bcc.b      $98c9
009864: 7669         moveq      #$69, d3
009866: 6365         bls.b      $98cd
009868: 00002f08     ori.b      #$8, d0
00986c: 207900000000 movea.l    $0.l, a0
009872: 41e80814     lea.l      $814(a0), a0
009876: 2010         move.l     (a0), d0
009878: 205f         movea.l    (a7)+, a0
00987a: 4e75         rts        
00987c: 2f08         move.l     a0, -(a7)
00987e: 207900000000 movea.l    $0.l, a0
009884: 41e80814     lea.l      $814(a0), a0
009888: 2008         move.l     a0, d0
00988a: 205f         movea.l    (a7)+, a0
00988c: 4e75         rts        
00988e: 48e76080     movem.l    d1-d2/a0, -(a7)
009892: c141         exg.l      d0, d1
009894: 0c8100000002 cmpi.l     #$2, d1
00989a: 6716         beq.b      $98b2
00989c: 0c8100000005 cmpi.l     #$5, d1
0098a2: 670e         beq.b      $98b2
0098a4: 206f0010     movea.l    $10(a7), a0
0098a8: 2408         move.l     a0, d2
0098aa: 4e40         trap       #$0
0098ac: 008d         .dc.w      $008d
0098ae: 60000056     bra.w      $9906
0098b2: 206f0010     movea.l    $10(a7), a0
0098b6: 2408         move.l     a0, d2
0098b8: 4e40         trap       #$0
0098ba: 008d         .dc.w      $008d
0098bc: 2202         move.l     d2, d1
0098be: 60000046     bra.w      $9906
0098c2: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
0098c6: c141         exg.l      d0, d1
0098c8: 206f0018     movea.l    $18(a7), a0
0098cc: 242f001c     move.l     $1c(a7), d2
0098d0: 262f0020     move.l     $20(a7), d3
0098d4: 4e40         trap       #$0
0098d6: 008d         .dc.w      $008d
0098d8: 60000068     bra.w      $9942
0098dc: 48e76080     movem.l    d1-d2/a0, -(a7)
0098e0: c141         exg.l      d0, d1
0098e2: 206f0010     movea.l    $10(a7), a0
0098e6: 242f0014     move.l     $14(a7), d2
0098ea: 4e40         trap       #$0
0098ec: 008e         .dc.w      $008e
0098ee: 60000016     bra.w      $9906
0098f2: 48e76080     movem.l    d1-d2/a0, -(a7)
0098f6: c141         exg.l      d0, d1
0098f8: 206f0010     movea.l    $10(a7), a0
0098fc: 2408         move.l     a0, d2
0098fe: 4e40         trap       #$0
009900: 008e         .dc.w      $008e
009902: 60000002     bra.w      $9906
009906: 6408         bcc.b      $9910
009908: 2d41800c     move.l     d1, -$7ff4(a6)
00990c: 70ff         moveq      #$ff, d0
00990e: 6002         bra.b      $9912
009910: 2001         move.l     d1, d0
009912: 4cdf0106     movem.l    (a7)+, d1-d2/a0
009916: 4e75         rts        
009918: 6406         bcc.b      $9920
00991a: 2d41800c     move.l     d1, -$7ff4(a6)
00991e: 70ff         moveq      #$ff, d0
009920: 4cdf043e     movem.l    (a7)+, d1-d5/a2
009924: 4e75         rts        
009926: 6406         bcc.b      $992e
009928: 2d41800c     move.l     d1, -$7ff4(a6)
00992c: 70ff         moveq      #$ff, d0
00992e: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
009932: 4e75         rts        
009934: 6406         bcc.b      $993c
009936: 2d41800c     move.l     d1, -$7ff4(a6)
00993a: 70ff         moveq      #$ff, d0
00993c: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
009940: 4e75         rts        
009942: 6408         bcc.b      $994c
009944: 2d41800c     move.l     d1, -$7ff4(a6)
009948: 70ff         moveq      #$ff, d0
00994a: 6002         bra.b      $994e
00994c: 2001         move.l     d1, d0
00994e: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
009952: 4e75         rts        
009954: 48e74000     movem.l    d1, -(a7)
009958: c141         exg.l      d0, d1
00995a: 4e40         trap       #$0
00995c: 005c6406     ori.w      #$6406, (a4)+
009960: 2d41800c     move.l     d1, -$7ff4(a6)
009964: 70ff         moveq      #$ff, d0
009966: 4cdf0002     movem.l    (a7)+, d1
00996a: 4e75         rts        
00996c: 48e740e0     movem.l    d1/a0-a2, -(a7)
009970: e340         asl.w      #$1, d0
009972: 207900000000 movea.l    $0.l, a0
009978: 2268004c     movea.l    $4c(a0), a1
00997c: 45e90168     lea.l      $168(a1), a2
009980: 30320000     move.w     (a2, d0.w), d0
009984: 660a         bne.b      $9990
009986: 4cdf0702     movem.l    (a7)+, d1/a0-a2
00998a: 303cffff     move.w     #$ffff, d0
00998e: 4e75         rts        
009990: 22680048     movea.l    $48(a0), a1
009994: b051         cmp.w      (a1), d0
009996: 62f2         bhi.b      $998a
009998: e540         asl.w      #$2, d0
00999a: d2c0         adda.w     d0, a1
00999c: e448         lsr.w      #$2, d0
00999e: 4a91         tst.l      (a1)
0099a0: 67e8         beq.b      $998a
0099a2: 2251         movea.l    (a1), a1
0099a4: b051         cmp.w      (a1), d0
0099a6: 66e2         bne.b      $998a
0099a8: 22690004     movea.l    $4(a1), a1
0099ac: 20290008     move.l     $8(a1), d0
0099b0: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0099b4: 4e75         rts        
0099b6: 4e550000     link.w     a5, #$0
0099ba: 48e7c080     movem.l    d0-d1/a0, -(a7)
0099be: 518f         subq.l     #$8, a7
0099c0: 7203         moveq      #$3, d1
0099c2: 41fa00aa     lea.l      $9a6e(pc), a0
0099c6: 2008         move.l     a0, d0
0099c8: 610001ce     bsr.w      $9b98
0099cc: 2f400004     move.l     d0, $4(a7)
0099d0: 72ff         moveq      #$ff, d1
0099d2: b280         cmp.l      d0, d1
0099d4: 6600000a     bne.w      $99e0
0099d8: 70ff         moveq      #$ff, d0
0099da: 2e80         move.l     d0, (a7)
0099dc: 6000001e     bra.w      $99fc
0099e0: 2f2f000c     move.l     $c(a7), -(a7)
0099e4: 222f0008     move.l     $8(a7), d1
0099e8: 202f000c     move.l     $c(a7), d0
0099ec: 6100ff04     bsr.w      $98f2
0099f0: 588f         addq.l     #$4, a7
0099f2: 2e80         move.l     d0, (a7)
0099f4: 202f0004     move.l     $4(a7), d0
0099f8: 610001ce     bsr.w      $9bc8
0099fc: 2017         move.l     (a7), d0
0099fe: 508f         addq.l     #$8, a7
009a00: 60000004     bra.w      $9a06
009a04: 4e71         nop        
009a06: 4ced0100fffc movem.l    -$4(a5), a0
009a0c: 4e5d         unlk       a5
009a0e: 4e75         rts        
009a10: 4e550000     link.w     a5, #$0
009a14: 48e7c080     movem.l    d0-d1/a0, -(a7)
009a18: 518f         subq.l     #$8, a7
009a1a: 7203         moveq      #$3, d1
009a1c: 41fa0058     lea.l      $9a76(pc), a0
009a20: 2008         move.l     a0, d0
009a22: 61000174     bsr.w      $9b98
009a26: 2f400004     move.l     d0, $4(a7)
009a2a: 72ff         moveq      #$ff, d1
009a2c: b280         cmp.l      d0, d1
009a2e: 6600000a     bne.w      $9a3a
009a32: 70ff         moveq      #$ff, d0
009a34: 2e80         move.l     d0, (a7)
009a36: 6000001e     bra.w      $9a56
009a3a: 2f2f000c     move.l     $c(a7), -(a7)
009a3e: 222f0008     move.l     $8(a7), d1
009a42: 202f000c     move.l     $c(a7), d0
009a46: 6100fe46     bsr.w      $988e
009a4a: 588f         addq.l     #$4, a7
009a4c: 2e80         move.l     d0, (a7)
009a4e: 202f0004     move.l     $4(a7), d0
009a52: 61000174     bsr.w      $9bc8
009a56: 2017         move.l     (a7), d0
009a58: 508f         addq.l     #$8, a7
009a5a: 60000004     bra.w      $9a60
009a5e: 4e71         nop        
009a60: 4ced0100fffc movem.l    -$4(a5), a0
009a66: 4e5d         unlk       a5
009a68: 4e75         rts        
009a6a: 4afb         .dc.w      $4afb
009a6c: 00102f73     ori.b      #$73, (a0)
009a70: 7973         .dc.w      $7973
009a72: 636f         bls.b      $9ae3
009a74: 6e002f73     bgt.w      $c9e9
009a78: 7973         .dc.w      $7973
009a7a: 636f         bls.b      $9aeb
009a7c: 6e004e55     bgt.w      $e8d3
009a80: 000048e7     ori.b      #$e7, d0
009a84: 80387000     or.b       $7000.w, d0
009a88: 2840         movea.l    d0, a4
009a8a: 2640         movea.l    d0, a3
009a8c: 2440         movea.l    d0, a2
009a8e: 700d         moveq      #$d, d0
009a90: 7200         moveq      #$0, d1
009a92: 41fa0064     lea.l      $9af8(pc), a0
009a96: 47ee800c     lea.l      -$7ff4(a6), a3
009a9a: 7609         moveq      #$9, d3
009a9c: 2683         move.l     d3, (a3)
009a9e: 262e91e8     move.l     -$6e18(a6), d3
009aa2: 242e91e4     move.l     -$6e1c(a6), d2
009aa6: 286e9a7e     movea.l    -$6582(a6), a4
009aaa: 4e40         trap       #$0
009aac: 0021653e     ori.b      #$3e, -(a1)
009ab0: 4a93         tst.l      (a3)
009ab2: 6718         beq.b      $9acc
009ab4: 41fa0046     lea.l      $9afc(pc), a0
009ab8: 7264         moveq      #$64, d1
009aba: 7002         moveq      #$2, d0
009abc: 4e40         trap       #$0
009abe: 008c         .dc.w      $008c
009ac0: 41fa0036     lea.l      $9af8(pc), a0
009ac4: 72dd         moveq      #$dd, d1
009ac6: 003c0001     ori.b      #$1, ccr
009aca: 6022         bra.b      $9aee
009acc: 3d7c00418e6c move.w     #$41, -$7194(a6)
009ad2: 426e8e6e     clr.w      -$7192(a6)
009ad6: 3d7c00028e88 move.w     #$2, -$7178(a6)
009adc: 3d7c00018e8a move.w     #$1, -$7176(a6)
009ae2: 3d7c00028ea4 move.w     #$2, -$715c(a6)
009ae8: 3d7c00028ea6 move.w     #$2, -$715a(a6)
009aee: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
009af4: 4e5d         unlk       a5
009af6: 4e75         rts        
009af8: 6369         bls.b      $9b63
009afa: 6f002a2a     ble.w      $c526
009afe: 2a2a2063     move.l     $2063(a2), d5
009b02: 696f         bvs.b      $9b73
009b04: 20747261     movea.l    $61(a4, d7.w), a0
009b08: 7068         moveq      #$68, d0
009b0a: 616e         bsr.b      $9b7a
009b0c: 646c         bcc.b      $9b7a
009b0e: 6572         bcs.b      $9b82
009b10: 206d6973     movea.l    $6973(a5), a0
009b14: 6d61         blt.b      $9b77
009b16: 7463         moveq      #$63, d2
009b18: 6820         bvc.b      $9b3a
009b1a: 2a2a2a2a     move.l     $2a2a(a2), d5
009b1e: 0d00         btst.l     d6, d0
009b20: 4e4d         trap       #$d
009b22: 00004e4d     ori.b      #$4d, d0
009b26: 00014e4d     ori.b      #$4d, d1
009b2a: 00024e4d     ori.b      #$4d, d2
009b2e: 00034e4d     ori.b      #$4d, d3
009b32: 00044e4d     ori.b      #$4d, d4
009b36: 00054e4d     ori.b      #$4d, d5
009b3a: 00064e4d     ori.b      #$4d, d6
009b3e: 00074e4d     ori.b      #$4d, d7
009b42: 0008         .dc.w      $0008
009b44: 4e4d         trap       #$d
009b46: 0009         .dc.w      $0009
009b48: 4e4d         trap       #$d
009b4a: 000a         .dc.w      $000a
009b4c: 4e4d         trap       #$d
009b4e: 000b         .dc.w      $000b
009b50: 4e4d         trap       #$d
009b52: 000c         .dc.w      $000c
009b54: 4e4d         trap       #$d
009b56: 000d         .dc.w      $000d
009b58: 4e4d         trap       #$d
009b5a: 000e         .dc.w      $000e
009b5c: 4e4d         trap       #$d
009b5e: 000f         .dc.w      $000f
009b60: 4e4d         trap       #$d
009b62: 00104e4d     ori.b      #$4d, (a0)
009b66: 00114e4d     ori.b      #$4d, (a1)
009b6a: 00124e4d     ori.b      #$4d, (a2)
009b6e: 00134e4d     ori.b      #$4d, (a3)
009b72: 00144e4d     ori.b      #$4d, (a4)
009b76: 00154e4d     ori.b      #$4d, (a5)
009b7a: 00164e4d     ori.b      #$4d, (a6)
009b7e: 00174e4d     ori.b      #$4d, (a7)
009b82: 00184e4d     ori.b      #$4d, (a0)+
009b86: 00194e4d     ori.b      #$4d, (a1)+
009b8a: 001a4e4d     ori.b      #$4d, (a2)+
009b8e: 001b4e4d     ori.b      #$4d, (a3)+
009b92: 001c4e4d     ori.b      #$4d, (a4)+
009b96: 001d4e4d     ori.b      #$4d, (a5)+
009b9a: 001e4e4d     ori.b      #$4d, (a6)+
009b9e: 001f4e4d     ori.b      #$4d, (a7)+
009ba2: 00204e4d     ori.b      #$4d, -(a0)
009ba6: 00214e4d     ori.b      #$4d, -(a1)
009baa: 00224e4d     ori.b      #$4d, -(a2)
009bae: 00234e4d     ori.b      #$4d, -(a3)
009bb2: 00244e4d     ori.b      #$4d, -(a4)
009bb6: 00254e4d     ori.b      #$4d, -(a5)
009bba: 00264e4d     ori.b      #$4d, -(a6)
009bbe: 00274e4d     ori.b      #$4d, -(a7)
009bc2: 00284e4d0029 ori.b      #$4d, $29(a0)
009bc8: 4e4d         trap       #$d
009bca: 002a4e4d002b ori.b      #$4d, $2b(a2)
009bd0: 4e4d         trap       #$d
009bd2: 002c4e4d002d ori.b      #$4d, $2d(a4)
009bd8: 4e4d         trap       #$d
009bda: 002e4e4d002f ori.b      #$4d, $2f(a6)
009be0: 4e4d         trap       #$d
009be2: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
009be8: 4e4d         trap       #$d
009bea: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
009bf0: 4e4d         trap       #$d
009bf2: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
009bf8: 4e4d         trap       #$d
009bfa: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
009c00: 4e4d         trap       #$d
009c02: 00384e4d0039 ori.b      #$4d, $39.w
009c08: 4e4d         trap       #$d
009c0a: 003a         .dc.w      $003a
009c0c: 4e4d         trap       #$d
009c0e: 003b         .dc.w      $003b
009c10: 4e4d         trap       #$d
009c12: 003c         .dc.w      $003c
009c14: 4e4d         trap       #$d
009c16: 003d         .dc.w      $003d
009c18: 4e4d         trap       #$d
009c1a: 003e         .dc.w      $003e
009c1c: 4e4d         trap       #$d
009c1e: 003f         .dc.w      $003f
009c20: 4e4d         trap       #$d
009c22: 00414e4d     ori.w      #$4e4d, d1
009c26: 00424e4d     ori.w      #$4e4d, d2
009c2a: 00434e4d     ori.w      #$4e4d, d3
009c2e: 00444e4d     ori.w      #$4e4d, d4
009c32: 00454e4d     ori.w      #$4e4d, d5
009c36: 00402f08     ori.w      #$2f08, d0
009c3a: 2040         movea.l    d0, a0
009c3c: b300         eor.b      d1, d0
009c3e: 08000000     btst.b     #$0, d0
009c42: 6652         bne.b      $9c96
009c44: 08010000     btst.b     #$0, d1
009c48: c389         exg.l      d1, a1
009c4a: 6718         beq.b      $9c64
009c4c: b109         cmpm.b     (a1)+, (a0)+
009c4e: 6530         bcs.b      $9c80
009c50: 6220         bhi.b      $9c72
009c52: 4a28ffff     tst.b      -$1(a0)
009c56: 660c         bne.b      $9c64
009c58: 6034         bra.b      $9c8e
009c5a: 4a00         tst.b      d0
009c5c: 6730         beq.b      $9c8e
009c5e: 0c4000ff     cmpi.w     #$ff, d0
009c62: 632a         bls.b      $9c8e
009c64: 3018         move.w     (a0)+, d0
009c66: b059         cmp.w      (a1)+, d0
009c68: 67f0         beq.b      $9c5a
009c6a: 650e         bcs.b      $9c7a
009c6c: 0c4000ff     cmpi.w     #$ff, d0
009c70: 6316         bls.b      $9c88
009c72: 7001         moveq      #$1, d0
009c74: 205f         movea.l    (a7)+, a0
009c76: c389         exg.l      d1, a1
009c78: 4e75         rts        
009c7a: 0c4000ff     cmpi.w     #$ff, d0
009c7e: 6308         bls.b      $9c88
009c80: 70ff         moveq      #$ff, d0
009c82: 205f         movea.l    (a7)+, a0
009c84: c389         exg.l      d1, a1
009c86: 4e75         rts        
009c88: 4a29fffe     tst.b      -$2(a1)
009c8c: 66f2         bne.b      $9c80
009c8e: 7000         moveq      #$0, d0
009c90: 205f         movea.l    (a7)+, a0
009c92: c389         exg.l      d1, a1
009c94: 4e75         rts        
009c96: c389         exg.l      d1, a1
009c98: 7000         moveq      #$0, d0
009c9a: 1018         move.b     (a0)+, d0
009c9c: b019         cmp.b      (a1)+, d0
009c9e: 56c8fffa     dbne       d0, $9c9a
009ca2: 65dc         bcs.b      $9c80
009ca4: 5240         addq.w     #$1, d0
009ca6: 205f         movea.l    (a7)+, a0
009ca8: c389         exg.l      d1, a1
009caa: 4e75         rts        
009cac: 2f08         move.l     a0, -(a7)
009cae: 2040         movea.l    d0, a0
009cb0: 4a18         tst.b      (a0)+
009cb2: 670c         beq.b      $9cc0
009cb4: 4a18         tst.b      (a0)+
009cb6: 6708         beq.b      $9cc0
009cb8: 4a18         tst.b      (a0)+
009cba: 6704         beq.b      $9cc0
009cbc: 4a18         tst.b      (a0)+
009cbe: 66f0         bne.b      $9cb0
009cc0: 91c0         suba.l     d0, a0
009cc2: 2008         move.l     a0, d0
009cc4: 5380         subq.l     #$1, d0
009cc6: 205f         movea.l    (a7)+, a0
009cc8: 4e75         rts        
009cca: 2f08         move.l     a0, -(a7)
009ccc: 2040         movea.l    d0, a0
009cce: c389         exg.l      d1, a1
009cd0: 10d9         move.b     (a1)+, (a0)+
009cd2: 670c         beq.b      $9ce0
009cd4: 10d9         move.b     (a1)+, (a0)+
009cd6: 6708         beq.b      $9ce0
009cd8: 10d9         move.b     (a1)+, (a0)+
009cda: 6704         beq.b      $9ce0
009cdc: 10d9         move.b     (a1)+, (a0)+
009cde: 66f0         bne.b      $9cd0
009ce0: 205f         movea.l    (a7)+, a0
009ce2: c389         exg.l      d1, a1
009ce4: 4e75         rts        
009ce6: 2f08         move.l     a0, -(a7)
009ce8: 2040         movea.l    d0, a0
009cea: c389         exg.l      d1, a1
009cec: 4a18         tst.b      (a0)+
009cee: 670c         beq.b      $9cfc
009cf0: 4a18         tst.b      (a0)+
009cf2: 6708         beq.b      $9cfc
009cf4: 4a18         tst.b      (a0)+
009cf6: 6704         beq.b      $9cfc
009cf8: 4a18         tst.b      (a0)+
009cfa: 66f0         bne.b      $9cec
009cfc: 1159ffff     move.b     (a1)+, -$1(a0)
009d00: 66ce         bne.b      $9cd0
009d02: 60dc         bra.b      $9ce0
009d04: 2f08         move.l     a0, -(a7)
009d06: 2040         movea.l    d0, a0
009d08: c389         exg.l      d1, a1
009d0a: 10d9         move.b     (a1)+, (a0)+
009d0c: 6afc         bpl.b      $9d0a
009d0e: 4210         clr.b      (a0)
009d10: 0220007f     andi.b     #$7f, -(a0)
009d14: 205f         movea.l    (a7)+, a0
009d16: c389         exg.l      d1, a1
009d18: 4e75         rts        
009d1a: 4e550000     link.w     a5, #$0
009d1e: 48e7c020     movem.l    d0-d1/a2, -(a7)
009d22: 2440         movea.l    d0, a2
009d24: 4878000a     pea.l      $a.w
009d28: 7200         moveq      #$0, d1
009d2a: 200a         move.l     a2, d0
009d2c: 61ff00000070 bsr.l      $9d9e
009d32: 588f         addq.l     #$4, a7
009d34: 60ff00000006 bra.l      $9d3c
009d3a: 4e71         nop        
009d3c: 4ced0402fff8 movem.l    -$8(a5), d1/a2
009d42: 4e5d         unlk       a5
009d44: 4e75         rts        
009d46: 4e550000     link.w     a5, #$0
009d4a: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
009d4e: 2440         movea.l    d0, a2
009d50: 2641         movea.l    d1, a3
009d52: 282f001c     move.l     $1c(a7), d4
009d56: 60ff00000026 bra.l      $9d7e
009d5c: 1012         move.b     (a2), d0
009d5e: b013         cmp.b      (a3), d0
009d60: 67ff00000018 beq.l      $9d7a
009d66: 1013         move.b     (a3), d0
009d68: 4880         ext.w      d0
009d6a: 1212         move.b     (a2), d1
009d6c: 4881         ext.w      d1
009d6e: 9240         sub.w      d0, d1
009d70: 48c1         ext.l      d1
009d72: 2001         move.l     d1, d0
009d74: 60ff0000001e bra.l      $9d94
009d7a: 528a         addq.l     #$1, a2
009d7c: 528b         addq.l     #$1, a3
009d7e: 2004         move.l     d4, d0
009d80: 5384         subq.l     #$1, d4
009d82: 4a80         tst.l      d0
009d84: 66ffffffffd6 bne.l      $9d5c
009d8a: 7000         moveq      #$0, d0
009d8c: 60ff00000006 bra.l      $9d94
009d92: 4e71         nop        
009d94: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
009d9a: 4e5d         unlk       a5
009d9c: 4e75         rts        
009d9e: 4e550000     link.w     a5, #$0
009da2: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
009da6: 2440         movea.l    d0, a2
009da8: 2641         movea.l    d1, a3
009daa: 282f0028     move.l     $28(a7), d4
009dae: 7a00         moveq      #$0, d5
009db0: 7c00         moveq      #$0, d6
009db2: 101a         move.b     (a2)+, d0
009db4: 49c0         extb.l     d0
009db6: 41f60170ffff9b13 lea.l      $ffff9b13(a6, invalid.w), a0
009dbe: 10300800     move.b     (a0, d0.l), d0
009dc2: 4880         ext.w      d0
009dc4: 08000004     btst.b     #$4, d0
009dc8: 66ffffffffe8 bne.l      $9db2
009dce: 60ff0000000e bra.l      $9dde
009dd4: 5285         addq.l     #$1, d5
009dd6: 528a         addq.l     #$1, a2
009dd8: 60ff0000001c bra.l      $9df6
009dde: 1022         move.b     -(a2), d0
009de0: 4880         ext.w      d0
009de2: 0c40002b     cmpi.w     #$2b, d0
009de6: 67ffffffffee beq.l      $9dd6
009dec: 0c40002d     cmpi.w     #$2d, d0
009df0: 67ffffffffe2 beq.l      $9dd4
009df6: 42b60170ffff800c clr.l      $ffff800c(a6, invalid.w)
009dfe: 2f04         move.l     d4, -(a7)
009e00: 220b         move.l     a3, d1
009e02: 200a         move.l     a2, d0
009e04: 61ff00000086 bsr.l      $9e8c
009e0a: 588f         addq.l     #$4, a7
009e0c: 2c00         move.l     d0, d6
009e0e: 0cb6000001000170ffff800c cmpi.l     #$100, $ffff800c(a6, invalid.w)
009e1a: 67ff00000024 beq.l      $9e40
009e20: 4a85         tst.l      d5
009e22: 67ff00000010 beq.l      $9e34
009e28: 0c8680000000 cmpi.l     #$80000000, d6
009e2e: 62ff00000010 bhi.l      $9e40
009e34: 0c867fffffff cmpi.l     #$7fffffff, d6
009e3a: 63ff0000002e bls.l      $9e6a
009e40: 4a85         tst.l      d5
009e42: 67ff0000000c beq.l      $9e50
009e48: 203c80000000 move.l     #$80000000, d0
009e4e: 6006         bra.b      $9e56
009e50: 203c7fffffff move.l     #$7fffffff, d0
009e56: 2c00         move.l     d0, d6
009e58: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
009e64: 60ff00000012 bra.l      $9e78
009e6a: 4a85         tst.l      d5
009e6c: 67ff0000000a beq.l      $9e78
009e72: 2006         move.l     d6, d0
009e74: 4480         neg.l      d0
009e76: 2c00         move.l     d0, d6
009e78: 2006         move.l     d6, d0
009e7a: 60ff00000006 bra.l      $9e82
009e80: 4e71         nop        
009e82: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
009e88: 4e5d         unlk       a5
009e8a: 4e75         rts        
009e8c: 4e550000     link.w     a5, #$0
009e90: 48e7cfb0     movem.l    d0-d1/d4-d7/a0/a2-a3, -(a7)
009e94: 2440         movea.l    d0, a2
009e96: 2641         movea.l    d1, a3
009e98: 282f002c     move.l     $2c(a7), d4
009e9c: 7a00         moveq      #$0, d5
009e9e: 7c00         moveq      #$0, d6
009ea0: 101a         move.b     (a2)+, d0
009ea2: 49c0         extb.l     d0
009ea4: 41f60170ffff9b13 lea.l      $ffff9b13(a6, invalid.w), a0
009eac: 10300800     move.b     (a0, d0.l), d0
009eb0: 4880         ext.w      d0
009eb2: 08000004     btst.b     #$4, d0
009eb6: 66ffffffffe8 bne.l      $9ea0
009ebc: 538a         subq.l     #$1, a2
009ebe: 200b         move.l     a3, d0
009ec0: 67ff00000006 beq.l      $9ec8
009ec6: 268a         move.l     a2, (a3)
009ec8: 7002         moveq      #$2, d0
009eca: b084         cmp.l      d4, d0
009ecc: 63ff0000000c bls.l      $9eda
009ed2: 4a84         tst.l      d4
009ed4: 66ff0000000e bne.l      $9ee4
009eda: 7023         moveq      #$23, d0
009edc: b084         cmp.l      d4, d0
009ede: 64ff0000000c bcc.l      $9eec
009ee4: 7000         moveq      #$0, d0
009ee6: 60ff000001c8 bra.l      $a0b0
009eec: 60ff0000005c bra.l      $9f4a
009ef2: 5285         addq.l     #$1, d5
009ef4: 528a         addq.l     #$1, a2
009ef6: 0c2a00780001 cmpi.b     #$78, $1(a2)
009efc: 67ff00000010 beq.l      $9f0e
009f02: 0c2a00580001 cmpi.b     #$58, $1(a2)
009f08: 66ff0000002e bne.l      $9f38
009f0e: 4a84         tst.l      d4
009f10: 66ff0000000c bne.l      $9f1e
009f16: 7810         moveq      #$10, d4
009f18: 60ff00000016 bra.l      $9f30
009f1e: 7010         moveq      #$10, d0
009f20: b084         cmp.l      d4, d0
009f22: 67ff0000000c beq.l      $9f30
009f28: 7000         moveq      #$0, d0
009f2a: 60ff00000184 bra.l      $a0b0
009f30: 548a         addq.l     #$2, a2
009f32: 60ff00000010 bra.l      $9f44
009f38: 4a84         tst.l      d4
009f3a: 66ff00000008 bne.l      $9f44
009f40: 7808         moveq      #$8, d4
009f42: 528a         addq.l     #$1, a2
009f44: 60ff00000030 bra.l      $9f76
009f4a: 1012         move.b     (a2), d0
009f4c: 4880         ext.w      d0
009f4e: 0c4000ff     cmpi.w     #$ff, d0
009f52: 62ff00000022 bhi.l      $9f76
009f58: 0c00002b     cmpi.b     #$2b, d0
009f5c: 67ffffffff96 beq.l      $9ef4
009f62: 0c00002d     cmpi.b     #$2d, d0
009f66: 67ffffffff8a beq.l      $9ef2
009f6c: 0c000030     cmpi.b     #$30, d0
009f70: 67ffffffff84 beq.l      $9ef6
009f76: 4a84         tst.l      d4
009f78: 66ff00000006 bne.l      $9f80
009f7e: 780a         moveq      #$a, d4
009f80: 700a         moveq      #$a, d0
009f82: b084         cmp.l      d4, d0
009f84: 65ff00000070 bcs.l      $9ff6
009f8a: 60ff00000034 bra.l      $9fc0
009f90: 70ff         moveq      #$ff, d0
009f92: 9087         sub.l      d7, d0
009f94: 4c440000     divu.l     d4, d0
009f98: b086         cmp.l      d6, d0
009f9a: 65ff00000014 bcs.l      $9fb0
009fa0: 2006         move.l     d6, d0
009fa2: 4c040000     mulu.l     d4, d0
009fa6: d087         add.l      d7, d0
009fa8: 2c00         move.l     d0, d6
009faa: 60ff00000012 bra.l      $9fbe
009fb0: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
009fbc: 7cff         moveq      #$ff, d6
009fbe: 528a         addq.l     #$1, a2
009fc0: 1012         move.b     (a2), d0
009fc2: 49c0         extb.l     d0
009fc4: 41f60170ffff9b13 lea.l      $ffff9b13(a6, invalid.w), a0
009fcc: 10300800     move.b     (a0, d0.l), d0
009fd0: 4880         ext.w      d0
009fd2: 08000003     btst.b     #$3, d0
009fd6: 67ff00000018 beq.l      $9ff0
009fdc: 1012         move.b     (a2), d0
009fde: 4880         ext.w      d0
009fe0: 04400030     subi.w     #$30, d0
009fe4: 48c0         ext.l      d0
009fe6: 2e00         move.l     d0, d7
009fe8: b084         cmp.l      d4, d0
009fea: 65ffffffffa4 bcs.l      $9f90
009ff0: 60ff0000009c bra.l      $a08e
009ff6: 60ff00000034 bra.l      $a02c
009ffc: 70ff         moveq      #$ff, d0
009ffe: 9087         sub.l      d7, d0
00a000: 4c440000     divu.l     d4, d0
00a004: b086         cmp.l      d6, d0
00a006: 65ff00000014 bcs.l      $a01c
00a00c: 2006         move.l     d6, d0
00a00e: 4c040000     mulu.l     d4, d0
00a012: d087         add.l      d7, d0
00a014: 2c00         move.l     d0, d6
00a016: 60ff00000012 bra.l      $a02a
00a01c: 2dbc000001000170ffff800c move.l     #$100, $ffff800c(a6, invalid.w)
00a028: 7cff         moveq      #$ff, d6
00a02a: 528a         addq.l     #$1, a2
00a02c: 1012         move.b     (a2), d0
00a02e: 49c0         extb.l     d0
00a030: 41f60170ffff9b13 lea.l      $ffff9b13(a6, invalid.w), a0
00a038: 10300800     move.b     (a0, d0.l), d0
00a03c: 4880         ext.w      d0
00a03e: 08000003     btst.b     #$3, d0
00a042: 67ff00000016 beq.l      $a05a
00a048: 1012         move.b     (a2), d0
00a04a: 4880         ext.w      d0
00a04c: 04400030     subi.w     #$30, d0
00a050: 48c0         ext.l      d0
00a052: 2e00         move.l     d0, d7
00a054: 60ffffffffa6 bra.l      $9ffc
00a05a: 1012         move.b     (a2), d0
00a05c: 49c0         extb.l     d0
00a05e: 41f60170ffff9b13 lea.l      $ffff9b13(a6, invalid.w), a0
00a066: 10300800     move.b     (a0, d0.l), d0
00a06a: 4880         ext.w      d0
00a06c: 02400006     andi.w     #$6, d0
00a070: 67ff0000001c beq.l      $a08e
00a076: 1012         move.b     (a2), d0
00a078: 4880         ext.w      d0
00a07a: 024000df     andi.w     #$df, d0
00a07e: 48c0         ext.l      d0
00a080: 7237         moveq      #$37, d1
00a082: 9081         sub.l      d1, d0
00a084: 2e00         move.l     d0, d7
00a086: b084         cmp.l      d4, d0
00a088: 65ffffffff72 bcs.l      $9ffc
00a08e: 200b         move.l     a3, d0
00a090: 67ff00000006 beq.l      $a098
00a096: 268a         move.l     a2, (a3)
00a098: 4a85         tst.l      d5
00a09a: 67ff0000000a beq.l      $a0a6
00a0a0: 2006         move.l     d6, d0
00a0a2: 4480         neg.l      d0
00a0a4: 2c00         move.l     d0, d6
00a0a6: 2006         move.l     d6, d0
00a0a8: 60ff00000006 bra.l      $a0b0
00a0ae: 4e71         nop        
00a0b0: 4ced0df0ffe4 movem.l    -$1c(a5), d4-d7/a0/a2-a3
00a0b6: 4e5d         unlk       a5
00a0b8: 4e75         rts        
00a0ba: 4e550000     link.w     a5, #$0
00a0be: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
00a0c2: 2040         movea.l    d0, a0
00a0c4: 2441         movea.l    d1, a2
00a0c6: 242d0008     move.l     $8(a5), d2
00a0ca: 6702         beq.b      $a0ce
00a0cc: 610a         bsr.b      $a0d8
00a0ce: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
00a0d4: 4e5d         unlk       a5
00a0d6: 4e75         rts        
00a0d8: 4a82         tst.l      d2
00a0da: 674a         beq.b      $a126
00a0dc: b1ca         cmpa.l     a2, a0
00a0de: 6248         bhi.b      $a128
00a0e0: 6744         beq.b      $a126
00a0e2: 300a         move.w     a2, d0
00a0e4: 08000000     btst.b     #$0, d0
00a0e8: 6704         beq.b      $a0ee
00a0ea: 10da         move.b     (a2)+, (a0)+
00a0ec: 5382         subq.l     #$1, d2
00a0ee: 3008         move.w     a0, d0
00a0f0: 08000000     btst.b     #$0, d0
00a0f4: 6624         bne.b      $a11a
00a0f6: e28a         lsr.l      #$1, d2
00a0f8: 6406         bcc.b      $a100
00a0fa: 6104         bsr.b      $a100
00a0fc: 10da         move.b     (a2)+, (a0)+
00a0fe: 4e75         rts        
00a100: e28a         lsr.l      #$1, d2
00a102: 6406         bcc.b      $a10a
00a104: 30da         move.w     (a2)+, (a0)+
00a106: 6002         bra.b      $a10a
00a108: 20da         move.l     (a2)+, (a0)+
00a10a: 51cafffc     dbra       d2, $a108
00a10e: 5242         addq.w     #$1, d2
00a110: 5382         subq.l     #$1, d2
00a112: 64f4         bcc.b      $a108
00a114: 7400         moveq      #$0, d2
00a116: 4e75         rts        
00a118: 10da         move.b     (a2)+, (a0)+
00a11a: 51cafffc     dbra       d2, $a118
00a11e: 5242         addq.w     #$1, d2
00a120: 5382         subq.l     #$1, d2
00a122: 64f4         bcc.b      $a118
00a124: 7400         moveq      #$0, d2
00a126: 4e75         rts        
00a128: d5c2         adda.l     d2, a2
00a12a: d1c2         adda.l     d2, a0
00a12c: 300a         move.w     a2, d0
00a12e: 08000000     btst.b     #$0, d0
00a132: 6704         beq.b      $a138
00a134: 1122         move.b     -(a2), -(a0)
00a136: 5382         subq.l     #$1, d2
00a138: 3008         move.w     a0, d0
00a13a: 08000000     btst.b     #$0, d0
00a13e: 6624         bne.b      $a164
00a140: e28a         lsr.l      #$1, d2
00a142: 6406         bcc.b      $a14a
00a144: 6104         bsr.b      $a14a
00a146: 1122         move.b     -(a2), -(a0)
00a148: 4e75         rts        
00a14a: e28a         lsr.l      #$1, d2
00a14c: 6406         bcc.b      $a154
00a14e: 3122         move.w     -(a2), -(a0)
00a150: 6002         bra.b      $a154
00a152: 2122         move.l     -(a2), -(a0)
00a154: 51cafffc     dbra       d2, $a152
00a158: 5242         addq.w     #$1, d2
00a15a: 5382         subq.l     #$1, d2
00a15c: 64f4         bcc.b      $a152
00a15e: 7400         moveq      #$0, d2
00a160: 4e75         rts        
00a162: 1122         move.b     -(a2), -(a0)
00a164: 51cafffc     dbra       d2, $a162
00a168: 5242         addq.w     #$1, d2
00a16a: 5382         subq.l     #$1, d2
00a16c: 64f4         bcc.b      $a162
00a16e: 7400         moveq      #$0, d2
00a170: 4e75         rts        
00a172: 4e550000     link.w     a5, #$0
00a176: 48e7a080     movem.l    d0/d2/a0, -(a7)
00a17a: 2040         movea.l    d0, a0
00a17c: 242d0008     move.l     $8(a5), d2
00a180: 0c820000000c cmpi.l     #$c, d2
00a186: 6410         bcc.b      $a198
00a188: 5342         subq.w     #$1, d2
00a18a: 65000092     bcs.w      $a21e
00a18e: 10c1         move.b     d1, (a0)+
00a190: 51cafffc     dbra       d2, $a18e
00a194: 60000088     bra.w      $a21e
00a198: 2f01         move.l     d1, -(a7)
00a19a: e141         asl.w      #$8, d1
00a19c: 122f0003     move.b     $3(a7), d1
00a1a0: 588f         addq.l     #$4, a7
00a1a2: 08000000     btst.b     #$0, d0
00a1a6: 6706         beq.b      $a1ae
00a1a8: 10c1         move.b     d1, (a0)+
00a1aa: 5382         subq.l     #$1, d2
00a1ac: 2008         move.l     a0, d0
00a1ae: 08000001     btst.b     #$1, d0
00a1b2: 6704         beq.b      $a1b8
00a1b4: 30c1         move.w     d1, (a0)+
00a1b6: 5582         subq.l     #$2, d2
00a1b8: 3001         move.w     d1, d0
00a1ba: 4841         swap       d1
00a1bc: 3200         move.w     d0, d1
00a1be: 7060         moveq      #$60, d0
00a1c0: b480         cmp.l      d0, d2
00a1c2: 653e         bcs.b      $a202
00a1c4: 2002         move.l     d2, d0
00a1c6: c47c001f     and.w      #$1f, d2
00a1ca: b540         eor.w      d2, d0
00a1cc: 41f00800     lea.l      (a0, d0.l), a0
00a1d0: 48e71fe0     movem.l    d3-d7/a0-a2, -(a7)
00a1d4: 2601         move.l     d1, d3
00a1d6: 2801         move.l     d1, d4
00a1d8: 2a01         move.l     d1, d5
00a1da: 2c01         move.l     d1, d6
00a1dc: 2e01         move.l     d1, d7
00a1de: 2241         movea.l    d1, a1
00a1e0: 2441         movea.l    d1, a2
00a1e2: ea88         lsr.l      #$5, d0
00a1e4: 5380         subq.l     #$1, d0
00a1e6: 48e05f60     movem.l    d1/d3-d7/a1-a2, -(a0)
00a1ea: 51c8fffa     dbra       d0, $a1e6
00a1ee: 5240         addq.w     #$1, d0
00a1f0: 5380         subq.l     #$1, d0
00a1f2: 64f2         bcc.b      $a1e6
00a1f4: 4cdf07f8     movem.l    (a7)+, d3-d7/a0-a2
00a1f8: 3002         move.w     d2, d0
00a1fa: 6722         beq.b      $a21e
00a1fc: e448         lsr.w      #$2, d0
00a1fe: 6606         bne.b      $a206
00a200: 600c         bra.b      $a20e
00a202: 3002         move.w     d2, d0
00a204: e448         lsr.w      #$2, d0
00a206: 5340         subq.w     #$1, d0
00a208: 20c1         move.l     d1, (a0)+
00a20a: 51c8fffc     dbra       d0, $a208
00a20e: 08020001     btst.b     #$1, d2
00a212: 6702         beq.b      $a216
00a214: 30c1         move.w     d1, (a0)+
00a216: 08020000     btst.b     #$0, d2
00a21a: 6702         beq.b      $a21e
00a21c: 1081         move.b     d1, (a0)
00a21e: 4ced0105fff4 movem.l    -$c(a5), d0/d2/a0
00a224: 4e5d         unlk       a5
00a226: 4e75         rts        
00a228: 48e73800     movem.l    d2-d4, -(a7)
00a22c: 2400         move.l     d0, d2
00a22e: 2600         move.l     d0, d3
00a230: 4843         swap       d3
00a232: 2801         move.l     d1, d4
00a234: 4844         swap       d4
00a236: c0c1         mulu.w     d1, d0
00a238: c2c3         mulu.w     d3, d1
00a23a: c4c4         mulu.w     d4, d2
00a23c: c6c4         mulu.w     d4, d3
00a23e: 4840         swap       d0
00a240: d041         add.w      d1, d0
00a242: 7800         moveq      #$0, d4
00a244: d784         addx.l     d4, d3
00a246: d042         add.w      d2, d0
00a248: d784         addx.l     d4, d3
00a24a: 4840         swap       d0
00a24c: 4241         clr.w      d1
00a24e: 4841         swap       d1
00a250: 4242         clr.w      d2
00a252: 4842         swap       d2
00a254: d282         add.l      d2, d1
00a256: d283         add.l      d3, d1
00a258: 4a80         tst.l      d0
00a25a: 4cdf001c     movem.l    (a7)+, d2-d4
00a25e: 4e75         rts        
00a260: 2f02         move.l     d2, -(a7)
00a262: 7400         moveq      #$0, d2
00a264: 4a80         tst.l      d0
00a266: 6a04         bpl.b      $a26c
00a268: 4480         neg.l      d0
00a26a: 7403         moveq      #$3, d2
00a26c: 4a81         tst.l      d1
00a26e: 6a06         bpl.b      $a276
00a270: 4481         neg.l      d1
00a272: 0a020001     eori.b     #$1, d2
00a276: 6122         bsr.b      $a29a
00a278: e20a         lsr.b      #$1, d2
00a27a: 6402         bcc.b      $a27e
00a27c: 4480         neg.l      d0
00a27e: e20a         lsr.b      #$1, d2
00a280: 6402         bcc.b      $a284
00a282: 4481         neg.l      d1
00a284: 241f         move.l     (a7)+, d2
00a286: 4a80         tst.l      d0
00a288: 4e75         rts        
00a28a: 61d4         bsr.b      $a260
00a28c: c141         exg.l      d0, d1
00a28e: 4a80         tst.l      d0
00a290: 4e75         rts        
00a292: 6106         bsr.b      $a29a
00a294: c141         exg.l      d0, d1
00a296: 4a80         tst.l      d0
00a298: 4e75         rts        
00a29a: 48e73800     movem.l    d2-d4, -(a7)
00a29e: 2401         move.l     d1, d2
00a2a0: 6606         bne.b      $a2a8
00a2a2: 81fc0000     divs.w     #$0, d0
00a2a6: 606e         bra.b      $a316
00a2a8: 5381         subq.l     #$1, d1
00a2aa: 676a         beq.b      $a316
00a2ac: 2801         move.l     d1, d4
00a2ae: 2200         move.l     d0, d1
00a2b0: b481         cmp.l      d1, d2
00a2b2: 650c         bcs.b      $a2c0
00a2b4: 6704         beq.b      $a2ba
00a2b6: 7000         moveq      #$0, d0
00a2b8: 605c         bra.b      $a316
00a2ba: 7001         moveq      #$1, d0
00a2bc: 9282         sub.l      d2, d1
00a2be: 6056         bra.b      $a316
00a2c0: 2602         move.l     d2, d3
00a2c2: 6bf6         bmi.b      $a2ba
00a2c4: c684         and.l      d4, d3
00a2c6: 6612         bne.b      $a2da
00a2c8: e28a         lsr.l      #$1, d2
00a2ca: 76ff         moveq      #$ff, d3
00a2cc: e28a         lsr.l      #$1, d2
00a2ce: 55cbfffc     dbcs       d3, $a2cc
00a2d2: 4483         neg.l      d3
00a2d4: e6a8         lsr.l      d3, d0
00a2d6: c284         and.l      d4, d1
00a2d8: 603c         bra.b      $a316
00a2da: 7000         moveq      #$0, d0
00a2dc: 76ff         moveq      #$ff, d3
00a2de: e382         asl.l      #$1, d2
00a2e0: 6a06         bpl.b      $a2e8
00a2e2: b481         cmp.l      d1, d2
00a2e4: 620a         bhi.b      $a2f0
00a2e6: 600c         bra.b      $a2f4
00a2e8: b481         cmp.l      d1, d2
00a2ea: 54cbfff2     dbcc       d3, $a2de
00a2ee: 6704         beq.b      $a2f4
00a2f0: 5283         addq.l     #$1, d3
00a2f2: e28a         lsr.l      #$1, d2
00a2f4: 4483         neg.l      d3
00a2f6: 6004         bra.b      $a2fc
00a2f8: e380         asl.l      #$1, d0
00a2fa: e28a         lsr.l      #$1, d2
00a2fc: 9282         sub.l      d2, d1
00a2fe: 6510         bcs.b      $a310
00a300: 5280         addq.l     #$1, d0
00a302: 51cbfff4     dbra       d3, $a2f8
00a306: 600e         bra.b      $a316
00a308: e380         asl.l      #$1, d0
00a30a: e28a         lsr.l      #$1, d2
00a30c: d282         add.l      d2, d1
00a30e: 65f0         bcs.b      $a300
00a310: 51cbfff6     dbra       d3, $a308
00a314: d282         add.l      d2, d1
00a316: 4cdf001c     movem.l    (a7)+, d2-d4
00a31a: 4a80         tst.l      d0
00a31c: 4e75         rts        
00a31e: 3d06         move.w     d6, -(a6)
00a320: 849b         or.l       (a3)+, d2
00a322: 86a1         or.l       -(a1), d3
00a324: 2b9c3fe00000 move.l     (a4)+, (invalid.w)
00a32a: 00000000     ori.b      #$0, d0
00a32e: 48e73000     movem.l    d2-d3, -(a7)
00a332: 4cfa000cffe8 movem.l    $a31c(pc), d2-d3
00a338: 4e4f         trap       #$f
00a33a: 002e4cdf000c ori.b      #$df, $c(a6)
00a340: 4e75         rts        
00a342: 48e73000     movem.l    d2-d3, -(a7)
00a346: 4cfa000cffd4 movem.l    $a31c(pc), d2-d3
00a34c: 4e4f         trap       #$f
00a34e: 002f4cdf000c ori.b      #$df, $c(a7)
00a354: 4e75         rts        
00a356: 48e73000     movem.l    d2-d3, -(a7)
00a35a: 4cfa000cffc0 movem.l    $a31c(pc), d2-d3
00a360: 4e4f         trap       #$f
00a362: 00304cdf000c ori.b      #$df, $c(a0, d0.w)
00a368: 4e75         rts        
00a36a: 48e73000     movem.l    d2-d3, -(a7)
00a36e: 4cfa000cffac movem.l    $a31c(pc), d2-d3
00a374: 4e4f         trap       #$f
00a376: 00314cdf000c ori.b      #$df, $c(a1, d0.w)
00a37c: 4e75         rts        
00a37e: 48e73000     movem.l    d2-d3, -(a7)
00a382: 4cfa000cff98 movem.l    $a31c(pc), d2-d3
00a388: 4e4f         trap       #$f
00a38a: 00324cdf000c ori.b      #$df, $c(a2, d0.w)
00a390: 4e75         rts        
00a392: 48e73000     movem.l    d2-d3, -(a7)
00a396: 4cfa000cff84 movem.l    $a31c(pc), d2-d3
00a39c: 4e4f         trap       #$f
00a39e: 00334cdf000c ori.b      #$df, $c(a3, d0.w)
00a3a4: 4e75         rts        
00a3a6: 48e73000     movem.l    d2-d3, -(a7)
00a3aa: 4cfa000cff70 movem.l    $a31c(pc), d2-d3
00a3b0: 4e4f         trap       #$f
00a3b2: 00374cdf000c ori.b      #$df, $c(a7, d0.w)
00a3b8: 4e75         rts        
00a3ba: 48e73000     movem.l    d2-d3, -(a7)
00a3be: 4cfa000cff5c movem.l    $a31c(pc), d2-d3
00a3c4: 4e4f         trap       #$f
00a3c6: 00344cdf000c ori.b      #$df, $c(a4, d0.w)
00a3cc: 4e75         rts        
00a3ce: 48e73000     movem.l    d2-d3, -(a7)
00a3d2: 4cfa000cff48 movem.l    $a31c(pc), d2-d3
00a3d8: 4e4f         trap       #$f
00a3da: 00354cdf000c ori.b      #$df, $c(a5, d0.w)
00a3e0: 4e75         rts        
00a3e2: 48e73c00     movem.l    d2-d5, -(a7)
00a3e6: 4cef000c0014 movem.l    $14(a7), d2-d3
00a3ec: 4cfa0030ff2e movem.l    $a31c(pc), d4-d5
00a3f2: 4e4f         trap       #$f
00a3f4: 00384cdf003c ori.b      #$df, $3c.w
00a3fa: 4e75         rts        
00a3fc: 48e73000     movem.l    d2-d3, -(a7)
00a400: 4cfa000cff1a movem.l    $a31c(pc), d2-d3
00a406: 4e4f         trap       #$f
00a408: 00364cdf000c ori.b      #$df, $c(a6, d0.w)
00a40e: 4e75         rts        
00a410: 48e73000     movem.l    d2-d3, -(a7)
00a414: 4a80         tst.l      d0
00a416: 6c0e         bge.b      $a426
00a418: 4e4f         trap       #$f
00a41a: 002a4a82670a ori.b      #$82, $670a(a2)
00a420: 4e4f         trap       #$f
00a422: 00116004     ori.b      #$4, (a1)
00a426: 4e4f         trap       #$f
00a428: 002a4cdf000c ori.b      #$df, $c(a2)
00a42e: 4e75         rts        
00a430: 48e73000     movem.l    d2-d3, -(a7)
00a434: 4a80         tst.l      d0
00a436: 670e         beq.b      $a446
00a438: 0840001f     bchg.b     #$1f, d0
00a43c: 61d2         bsr.b      $a410
00a43e: 4a80         tst.l      d0
00a440: 6704         beq.b      $a446
00a442: 0840001f     bchg.b     #$1f, d0
00a446: 4cdf000c     movem.l    (a7)+, d2-d3
00a44a: 4e75         rts        
00a44c: 0880001f     bclr.b     #$1f, d0
00a450: 4e75         rts        
00a452: 48e73080     movem.l    d2-d3/a0, -(a7)
00a456: 4e4f         trap       #$f
00a458: 002a206f0010 ori.b      #$6f, $10(a2)
00a45e: 48d00003     movem.l    d0-d1, (a0)
00a462: 2002         move.l     d2, d0
00a464: 2203         move.l     d3, d1
00a466: 4cdf010c     movem.l    (a7)+, d2-d3/a0
00a46a: 4e75         rts        
00a46c: 48e73c00     movem.l    d2-d5, -(a7)
00a470: 4cef000c0014 movem.l    $14(a7), d2-d3
00a476: 0880001f     bclr.b     #$1f, d0
00a47a: 0882001f     bclr.b     #$1f, d2
00a47e: 4e4f         trap       #$f
00a480: 00146b04     ori.b      #$4, (a4)
00a484: c142         exg.l      d0, d2
00a486: c343         exg.l      d1, d3
00a488: 48ef000c0014 movem.l    d2-d3, $14(a7)
00a48e: 4a82         tst.l      d2
00a490: 6606         bne.b      $a498
00a492: 2002         move.l     d2, d0
00a494: 2203         move.l     d3, d1
00a496: 6024         bra.b      $a4bc
00a498: 4e4f         trap       #$f
00a49a: 00132400     ori.b      #$0, (a3)
00a49e: 2601         move.l     d1, d3
00a4a0: 4e4f         trap       #$f
00a4a2: 00124e4f     ori.b      #$4f, (a2)
00a4a6: 000f         .dc.w      $000f
00a4a8: 4cfa000cfe72 movem.l    $a31c(pc), d2-d3
00a4ae: 4e4f         trap       #$f
00a4b0: 00364cef000c ori.b      #$ef, $c(a6, d0.w)
00a4b6: 00144e4f     ori.b      #$4f, (a4)
00a4ba: 00124cdf     ori.b      #$df, (a2)
00a4be: 003c         .dc.w      $003c
00a4c0: 4e75         rts        
00a4c2: 2a5f         movea.l    (a7)+, a5
00a4c4: 5385         subq.l     #$1, d5
00a4c6: 6562         bcs.b      $a52a
00a4c8: 1018         move.b     (a0)+, d0
00a4ca: 67f8         beq.b      $a4c4
00a4cc: 0c00000d     cmpi.b     #$d, d0
00a4d0: 6758         beq.b      $a52a
00a4d2: 0c000020     cmpi.b     #$20, d0
00a4d6: 67ec         beq.b      $a4c4
00a4d8: 0c000009     cmpi.b     #$9, d0
00a4dc: 67e6         beq.b      $a4c4
00a4de: 0c00002c     cmpi.b     #$2c, d0
00a4e2: 67e0         beq.b      $a4c4
00a4e4: 5282         addq.l     #$1, d2
00a4e6: 0c000022     cmpi.b     #$22, d0
00a4ea: 6730         beq.b      $a51c
00a4ec: 0c000027     cmpi.b     #$27, d0
00a4f0: 672a         beq.b      $a51c
00a4f2: 4868ffff     pea.l      -$1(a0)
00a4f6: 5385         subq.l     #$1, d5
00a4f8: 6530         bcs.b      $a52a
00a4fa: 1018         move.b     (a0)+, d0
00a4fc: 67c6         beq.b      $a4c4
00a4fe: 0c00000d     cmpi.b     #$d, d0
00a502: 6712         beq.b      $a516
00a504: 0c000020     cmpi.b     #$20, d0
00a508: 670c         beq.b      $a516
00a50a: 0c000009     cmpi.b     #$9, d0
00a50e: 6706         beq.b      $a516
00a510: 0c00002c     cmpi.b     #$2c, d0
00a514: 66e0         bne.b      $a4f6
00a516: 4228ffff     clr.b      -$1(a0)
00a51a: 60a8         bra.b      $a4c4
00a51c: 4850         pea.l      (a0)
00a51e: 5385         subq.l     #$1, d5
00a520: 6508         bcs.b      $a52a
00a522: 1218         move.b     (a0)+, d1
00a524: b001         cmp.b      d1, d0
00a526: 66f6         bne.b      $a51e
00a528: 60ec         bra.b      $a516
00a52a: 204f         movea.l    a7, a0
00a52c: 4857         pea.l      (a7)
00a52e: 2f02         move.l     d2, -(a7)
00a530: 5382         subq.l     #$1, d2
00a532: 6710         beq.b      $a544
00a534: e582         asl.l      #$2, d2
00a536: 20302800     move.l     (a0, d2.l), d0
00a53a: 21902800     move.l     (a0), (a0, d2.l)
00a53e: 20c0         move.l     d0, (a0)+
00a540: 5182         subq.l     #$8, d2
00a542: 62f2         bhi.b      $a536
00a544: 4ed5         jmp        (a5)
00a546: 4e550000     link.w     a5, #$0
00a54a: 48e76080     movem.l    d1-d2/a0, -(a7)
00a54e: 2041         movea.l    d1, a0
00a550: 323c0000     move.w     #$0, d1
00a554: 4e40         trap       #$0
00a556: 008d         .dc.w      $008d
00a558: 600006fa     bra.w      $ac54
00a55c: 4e550000     link.w     a5, #$0
00a560: 48e76080     movem.l    d1-d2/a0, -(a7)
00a564: 323c0001     move.w     #$1, d1
00a568: 4e40         trap       #$0
00a56a: 008d         .dc.w      $008d
00a56c: 650006e8     bcs.w      $ac56
00a570: 2001         move.l     d1, d0
00a572: 600006e0     bra.w      $ac54
00a576: 4e550000     link.w     a5, #$0
00a57a: 48e76080     movem.l    d1-d2/a0, -(a7)
00a57e: 323c0006     move.w     #$6, d1
00a582: 4e40         trap       #$0
00a584: 008d         .dc.w      $008d
00a586: 640006d6     bcc.w      $ac5e
00a58a: 0c4100d3     cmpi.w     #$d3, d1
00a58e: 660006c6     bne.w      $ac56
00a592: 7001         moveq      #$1, d0
00a594: 600006be     bra.w      $ac54
00a598: 4e550000     link.w     a5, #$0
00a59c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a5a0: 2041         movea.l    d1, a0
00a5a2: 323c000f     move.w     #$f, d1
00a5a6: 242d0008     move.l     $8(a5), d2
00a5aa: 60a8         bra.b      $a554
00a5ac: 4e550000     link.w     a5, #$0
00a5b0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a5b4: 2041         movea.l    d1, a0
00a5b6: 323c000e     move.w     #$e, d1
00a5ba: 6098         bra.b      $a554
00a5bc: 4e550000     link.w     a5, #$0
00a5c0: 48e76080     movem.l    d1-d2/a0, -(a7)
00a5c4: 323c0002     move.w     #$2, d1
00a5c8: 4e40         trap       #$0
00a5ca: 008d         .dc.w      $008d
00a5cc: 65000688     bcs.w      $ac56
00a5d0: 2002         move.l     d2, d0
00a5d2: 60000680     bra.w      $ac54
00a5d6: 4e550000     link.w     a5, #$0
00a5da: 48e76080     movem.l    d1-d2/a0, -(a7)
00a5de: 323c0005     move.w     #$5, d1
00a5e2: 60e4         bra.b      $a5c8
00a5e4: 4e550000     link.w     a5, #$0
00a5e8: 48e76080     movem.l    d1-d2/a0, -(a7)
00a5ec: 2041         movea.l    d1, a0
00a5ee: 323c0000     move.w     #$0, d1
00a5f2: 4e40         trap       #$0
00a5f4: 008e         .dc.w      $008e
00a5f6: 6000065c     bra.w      $ac54
00a5fa: 4e550000     link.w     a5, #$0
00a5fe: 48e76080     movem.l    d1-d2/a0, -(a7)
00a602: 323c0003     move.w     #$3, d1
00a606: 60ea         bra.b      $a5f2
00a608: 4e550000     link.w     a5, #$0
00a60c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a610: 2401         move.l     d1, d2
00a612: 323c0002     move.w     #$2, d1
00a616: 60da         bra.b      $a5f2
00a618: 4e550000     link.w     a5, #$0
00a61c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a620: 2041         movea.l    d1, a0
00a622: 323c000f     move.w     #$f, d1
00a626: 60ca         bra.b      $a5f2
00a628: 4e550000     link.w     a5, #$0
00a62c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a630: 2401         move.l     d1, d2
00a632: 323c0010     move.w     #$10, d1
00a636: 60ba         bra.b      $a5f2
00a638: 4e550000     link.w     a5, #$0
00a63c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a640: 2401         move.l     d1, d2
00a642: 323c0011     move.w     #$11, d1
00a646: 60aa         bra.b      $a5f2
00a648: 4e550000     link.w     a5, #$0
00a64c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a650: 2401         move.l     d1, d2
00a652: 323c001a     move.w     #$1a, d1
00a656: 609a         bra.b      $a5f2
00a658: 4e550000     link.w     a5, #$0
00a65c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a660: 323c001b     move.w     #$1b, d1
00a664: 60f0         bra.b      $a656
00a666: 4e550000     link.w     a5, #$0
00a66a: 48e76080     movem.l    d1-d2/a0, -(a7)
00a66e: 48e71840     movem.l    d3-d4/a1, -(a7)
00a672: 2401         move.l     d1, d2
00a674: 7204         moveq      #$4, d1
00a676: 4ced03180008 movem.l    $8(a5), d3-d4/a0-a1
00a67c: 4e40         trap       #$0
00a67e: 008e         .dc.w      $008e
00a680: 4cdf0218     movem.l    (a7)+, d3-d4/a1
00a684: 600005ce     bra.w      $ac54
00a688: 4e550000     link.w     a5, #$0
00a68c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a690: 2401         move.l     d1, d2
00a692: 323c001c     move.w     #$1c, d1
00a696: 60be         bra.b      $a656
00a698: 4e550000     link.w     a5, #$0
00a69c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6a0: 323c0024     move.w     #$24, d1
00a6a4: 60b0         bra.b      $a656
00a6a6: 4e550000     link.w     a5, #$0
00a6aa: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6ae: 323c0025     move.w     #$25, d1
00a6b2: 60a2         bra.b      $a656
00a6b4: 4e550000     link.w     a5, #$0
00a6b8: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6bc: 3401         move.w     d1, d2
00a6be: 323c0026     move.w     #$26, d1
00a6c2: 6092         bra.b      $a656
00a6c4: 4e550000     link.w     a5, #$0
00a6c8: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6cc: 3401         move.w     d1, d2
00a6ce: 323c0027     move.w     #$27, d1
00a6d2: 6082         bra.b      $a656
00a6d4: 4e550000     link.w     a5, #$0
00a6d8: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6dc: 2040         movea.l    d0, a0
00a6de: 2001         move.l     d1, d0
00a6e0: 2f0a         move.l     a2, -(a7)
00a6e2: 4e40         trap       #$0
00a6e4: 0080204a245f ori.l      #$204a245f, d0
00a6ea: 6500056a     bcs.w      $ac56
00a6ee: 2008         move.l     a0, d0
00a6f0: 60000562     bra.w      $ac54
00a6f4: 4e550000     link.w     a5, #$0
00a6f8: 48e76080     movem.l    d1-d2/a0, -(a7)
00a6fc: 204a         movea.l    a2, a0
00a6fe: 2440         movea.l    d0, a2
00a700: 4e40         trap       #$0
00a702: 008124486000 ori.l      #$24486000, d1
00a708: 054c4e55     movep.l    $4e55(a4), d2
00a70c: 000048e7     ori.b      #$e7, d0
00a710: 6080         bra.b      $a692
00a712: 7000         moveq      #$0, d0
00a714: 4e40         trap       #$0
00a716: 000a         .dc.w      $000a
00a718: 6000053a     bra.w      $ac54
00a71c: 4e550000     link.w     a5, #$0
00a720: 48e76080     movem.l    d1-d2/a0, -(a7)
00a724: 206d0008     movea.l    $8(a5), a0
00a728: 2210         move.l     (a0), d1
00a72a: 2040         movea.l    d0, a0
00a72c: 2017         move.l     (a7), d0
00a72e: 4e40         trap       #$0
00a730: 00176500     ori.b      #$0, (a7)
00a734: 0522         btst.l     d2, -(a2)
00a736: 206d0008     movea.l    $8(a5), a0
00a73a: 2081         move.l     d1, (a0)
00a73c: 60000520     bra.w      $ac5e
00a740: 4e550000     link.w     a5, #$0
00a744: 48e76080     movem.l    d1-d2/a0, -(a7)
00a748: 4e40         trap       #$0
00a74a: 000f         .dc.w      $000f
00a74c: 60000506     bra.w      $ac54
00a750: e188         lsl.l      #$8, d0
00a752: 08c0001f     bset.b     #$1f, d0
00a756: 4e550000     link.w     a5, #$0
00a75a: 48e76080     movem.l    d1-d2/a0, -(a7)
00a75e: 4e40         trap       #$0
00a760: 000a         .dc.w      $000a
00a762: 600004f0     bra.w      $ac54
00a766: 4e550000     link.w     a5, #$0
00a76a: 48e700c0     movem.l    a0-a1, -(a7)
00a76e: 2041         movea.l    d1, a0
00a770: 2240         movea.l    d0, a1
00a772: 222d0008     move.l     $8(a5), d1
00a776: 4e40         trap       #$0
00a778: 00116560     ori.b      #$60, (a1)
00a77c: 7000         moveq      #$0, d0
00a77e: 6068         bra.b      $a7e8
00a780: 4e550000     link.w     a5, #$0
00a784: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00a788: 2040         movea.l    d0, a0
00a78a: 4e40         trap       #$0
00a78c: 00106454     ori.b      #$54, (a0)
00a790: 604a         bra.b      $a7dc
00a792: 4e550000     link.w     a5, #$0
00a796: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00a79a: 2040         movea.l    d0, a0
00a79c: 2248         movea.l    a0, a1
00a79e: 1019         move.b     (a1)+, d0
00a7a0: 0c00002f     cmpi.b     #$2f, d0
00a7a4: 671a         beq.b      $a7c0
00a7a6: 0c00002e     cmpi.b     #$2e, d0
00a7aa: 6622         bne.b      $a7ce
00a7ac: 0c19002e     cmpi.b     #$2e, (a1)+
00a7b0: 67fa         beq.b      $a7ac
00a7b2: 1021         move.b     -(a1), d0
00a7b4: 672e         beq.b      $a7e4
00a7b6: 0c00002f     cmpi.b     #$2f, d0
00a7ba: 6612         bne.b      $a7ce
00a7bc: 2049         movea.l    a1, a0
00a7be: 60de         bra.b      $a79e
00a7c0: 1019         move.b     (a1)+, d0
00a7c2: 0c00002f     cmpi.b     #$2f, d0
00a7c6: 6706         beq.b      $a7ce
00a7c8: 0c00002e     cmpi.b     #$2e, d0
00a7cc: 67de         beq.b      $a7ac
00a7ce: 4e40         trap       #$0
00a7d0: 00106508     ori.b      #$8, (a0)
00a7d4: 4a00         tst.b      d0
00a7d6: 670c         beq.b      $a7e4
00a7d8: 2049         movea.l    a1, a0
00a7da: 60c2         bra.b      $a79e
00a7dc: 2d41800c     move.l     d1, -$7ff4(a6)
00a7e0: 70ff         moveq      #$ff, d0
00a7e2: 6004         bra.b      $a7e8
00a7e4: 2009         move.l     a1, d0
00a7e6: 9097         sub.l      (a7), d0
00a7e8: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
00a7ee: 4e5d         unlk       a5
00a7f0: 4e75         rts        
00a7f2: 4e550000     link.w     a5, #$0
00a7f6: 48e76080     movem.l    d1-d2/a0, -(a7)
00a7fa: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
00a7fe: 242d000c     move.l     $c(a5), d2
00a802: 0802000f     btst.b     #$f, d2
00a806: 6708         beq.b      $a810
00a808: 262d0010     move.l     $10(a5), d3
00a80c: 282d0014     move.l     $14(a5), d4
00a810: 2040         movea.l    d0, a0
00a812: 2001         move.l     d1, d0
00a814: 222d0008     move.l     $8(a5), d1
00a818: 4e40         trap       #$0
00a81a: 00256502     ori.b      #$2, -(a5)
00a81e: 200a         move.l     a2, d0
00a820: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
00a824: 6000042e     bra.w      $ac54
00a828: 4e550000     link.w     a5, #$0
00a82c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a830: 2040         movea.l    d0, a0
00a832: 4e40         trap       #$0
00a834: 001a6500     ori.b      #$0, (a2)+
00a838: 041e2001     subi.b     #$1, (a6)+
00a83c: 60000416     bra.w      $ac54
00a840: 4e550000     link.w     a5, #$0
00a844: 48e76080     movem.l    d1-d2/a0, -(a7)
00a848: 2040         movea.l    d0, a0
00a84a: 4e40         trap       #$0
00a84c: 001f6500     ori.b      #$0, (a7)+
00a850: 04062001     subi.b     #$1, d6
00a854: 600003fe     bra.w      $ac54
00a858: 4e550000     link.w     a5, #$0
00a85c: 48e76080     movem.l    d1-d2/a0, -(a7)
00a860: 206d0008     movea.l    $8(a5), a0
00a864: 4e40         trap       #$0
00a866: 00186000     ori.b      #$0, (a0)+
00a86a: 03ea4e55     bset.b     d1, $4e55(a2)
00a86e: 000048e7     ori.b      #$e7, d0
00a872: 6080         bra.b      $a7f4
00a874: 2040         movea.l    d0, a0
00a876: 4e40         trap       #$0
00a878: 00266000     ori.b      #$0, -(a6)
00a87c: 03d8         bset.b     d1, (a0)+
00a87e: 4e550000     link.w     a5, #$0
00a882: 48e76080     movem.l    d1-d2/a0, -(a7)
00a886: 08c1001f     bset.b     #$1f, d1
00a88a: 600c         bra.b      $a898
00a88c: 4e550000     link.w     a5, #$0
00a890: 48e76080     movem.l    d1-d2/a0, -(a7)
00a894: 242d0008     move.l     $8(a5), d2
00a898: 4e40         trap       #$0
00a89a: 00276500     ori.b      #$0, -(a7)
00a89e: 03b82002     bclr.b     d1, $2002.w
00a8a2: 600003b0     bra.w      $ac54
00a8a6: 4e550000     link.w     a5, #$0
00a8aa: 48e76080     movem.l    d1-d2/a0, -(a7)
00a8ae: 4e40         trap       #$0
00a8b0: 000b         .dc.w      $000b
00a8b2: 600003a0     bra.w      $ac54
00a8b6: 4e550000     link.w     a5, #$0
00a8ba: 4e40         trap       #$0
00a8bc: 00524e5d     ori.w      #$4e5d, (a2)
00a8c0: 4e75         rts        
00a8c2: 4e550000     link.w     a5, #$0
00a8c6: 48e76080     movem.l    d1-d2/a0, -(a7)
00a8ca: 2f09         move.l     a1, -(a7)
00a8cc: 206d0008     movea.l    $8(a5), a0
00a8d0: 226d000c     movea.l    $c(a5), a1
00a8d4: 4e40         trap       #$0
00a8d6: 001b225f     ori.b      #$5f, (a3)+
00a8da: 60000378     bra.w      $ac54
00a8de: 4e550000     link.w     a5, #$0
00a8e2: 48e73080     movem.l    d2-d3/a0, -(a7)
00a8e6: 2401         move.l     d1, d2
00a8e8: 262f0014     move.l     $14(a7), d3
00a8ec: 206f0018     movea.l    $18(a7), a0
00a8f0: 7202         moveq      #$2, d1
00a8f2: 4e40         trap       #$0
00a8f4: 00536406     ori.w      #$6406, (a3)
00a8f8: 2d41800c     move.l     d1, -$7ff4(a6)
00a8fc: 70ff         moveq      #$ff, d0
00a8fe: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
00a904: 4e5d         unlk       a5
00a906: 4e75         rts        
00a908: 4e550000     link.w     a5, #$0
00a90c: 48e77080     movem.l    d1-d3/a0, -(a7)
00a910: 2040         movea.l    d0, a0
00a912: 7200         moveq      #$0, d1
00a914: 4e40         trap       #$0
00a916: 00536406     ori.w      #$6406, (a3)
00a91a: 2d41800c     move.l     d1, -$7ff4(a6)
00a91e: 70ff         moveq      #$ff, d0
00a920: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
00a926: 4e5d         unlk       a5
00a928: 4e75         rts        
00a92a: 4e550000     link.w     a5, #$0
00a92e: 48e77080     movem.l    d1-d3/a0, -(a7)
00a932: 7201         moveq      #$1, d1
00a934: 60de         bra.b      $a914
00a936: 4e550000     link.w     a5, #$0
00a93a: 48e77080     movem.l    d1-d3/a0, -(a7)
00a93e: 2040         movea.l    d0, a0
00a940: 7203         moveq      #$3, d1
00a942: 60d0         bra.b      $a914
00a944: 4e550000     link.w     a5, #$0
00a948: 48e73080     movem.l    d2-d3/a0, -(a7)
00a94c: 2041         movea.l    d1, a0
00a94e: 7207         moveq      #$7, d1
00a950: 60a0         bra.b      $a8f2
00a952: 4e550000     link.w     a5, #$0
00a956: 827c0008     or.w       #$8, d1
00a95a: 4e40         trap       #$0
00a95c: 00536406     ori.w      #$6406, (a3)
00a960: 2d41800c     move.l     d1, -$7ff4(a6)
00a964: 72ff         moveq      #$ff, d1
00a966: 2001         move.l     d1, d0
00a968: 4e5d         unlk       a5
00a96a: 4e75         rts        
00a96c: 4e550000     link.w     a5, #$0
00a970: 2f01         move.l     d1, -(a7)
00a972: 7206         moveq      #$6, d1
00a974: 4e40         trap       #$0
00a976: 00536406     ori.w      #$6406, (a3)
00a97a: 2d41800c     move.l     d1, -$7ff4(a6)
00a97e: 72ff         moveq      #$ff, d1
00a980: 2001         move.l     d1, d0
00a982: 222dfffc     move.l     -$4(a5), d1
00a986: 4e5d         unlk       a5
00a988: 4e75         rts        
00a98a: 4e550000     link.w     a5, #$0
00a98e: 2f02         move.l     d2, -(a7)
00a990: 7409         moveq      #$9, d2
00a992: 6012         bra.b      $a9a6
00a994: 4e550000     link.w     a5, #$0
00a998: 2f02         move.l     d2, -(a7)
00a99a: 740a         moveq      #$a, d2
00a99c: 6008         bra.b      $a9a6
00a99e: 4e550000     link.w     a5, #$0
00a9a2: 2f02         move.l     d2, -(a7)
00a9a4: 740b         moveq      #$b, d2
00a9a6: c342         exg.l      d1, d2
00a9a8: 826f000e     or.w       $e(a7), d1
00a9ac: 4e40         trap       #$0
00a9ae: 00536406     ori.w      #$6406, (a3)
00a9b2: 2d41800c     move.l     d1, -$7ff4(a6)
00a9b6: 72ff         moveq      #$ff, d1
00a9b8: 2001         move.l     d1, d0
00a9ba: 242dfffc     move.l     -$4(a5), d2
00a9be: 4e5d         unlk       a5
00a9c0: 4e75         rts        
00a9c2: 4e550000     link.w     a5, #$0
00a9c6: 48e73000     movem.l    d2-d3, -(a7)
00a9ca: 7404         moveq      #$4, d2
00a9cc: c342         exg.l      d1, d2
00a9ce: 262f0010     move.l     $10(a7), d3
00a9d2: 4e40         trap       #$0
00a9d4: 00536406     ori.w      #$6406, (a3)
00a9d8: 2d41800c     move.l     d1, -$7ff4(a6)
00a9dc: 72ff         moveq      #$ff, d1
00a9de: 2001         move.l     d1, d0
00a9e0: 4ced000cfff8 movem.l    -$8(a5), d2-d3
00a9e6: 4e5d         unlk       a5
00a9e8: 4e75         rts        
00a9ea: 4e550000     link.w     a5, #$0
00a9ee: 48e73000     movem.l    d2-d3, -(a7)
00a9f2: 7405         moveq      #$5, d2
00a9f4: 60d6         bra.b      $a9cc
00a9f6: 4e550000     link.w     a5, #$0
00a9fa: 48e76080     movem.l    d1-d2/a0, -(a7)
00a9fe: 2040         movea.l    d0, a0
00aa00: 3001         move.w     d1, d0
00aa02: 48e70060     movem.l    a1-a2, -(a7)
00aa06: 4e40         trap       #$0
00aa08: 00006502     ori.b      #$2, d0
00aa0c: 200a         move.l     a2, d0
00aa0e: 4cdf0600     movem.l    (a7)+, a1-a2
00aa12: 60000240     bra.w      $ac54
00aa16: 4e550000     link.w     a5, #$0
00aa1a: 48e76080     movem.l    d1-d2/a0, -(a7)
00aa1e: 2040         movea.l    d0, a0
00aa20: 3001         move.w     d1, d0
00aa22: 48e70060     movem.l    a1-a2, -(a7)
00aa26: 4e40         trap       #$0
00aa28: 000160de     ori.b      #$de, d1
00aa2c: 4e550000     link.w     a5, #$0
00aa30: 48e76080     movem.l    d1-d2/a0, -(a7)
00aa34: 2f0a         move.l     a2, -(a7)
00aa36: 2440         movea.l    d0, a2
00aa38: 4e40         trap       #$0
00aa3a: 0002245f     ori.b      #$5f, d2
00aa3e: 60000214     bra.w      $ac54
00aa42: 4e550000     link.w     a5, #$0
00aa46: 48e76080     movem.l    d1-d2/a0, -(a7)
00aa4a: 2040         movea.l    d0, a0
00aa4c: 3001         move.w     d1, d0
00aa4e: 4e40         trap       #$0
00aa50: 001d6000     ori.b      #$0, (a5)+
00aa54: 02004e55     andi.b     #$55, d0
00aa58: 000048e7     ori.b      #$e7, d0
00aa5c: 6080         bra.b      $a9de
00aa5e: 2040         movea.l    d0, a0
00aa60: 7200         moveq      #$0, d1
00aa62: 1210         move.b     (a0), d1
00aa64: d27c076c     add.w      #$76c, d1
00aa68: 4841         swap       d1
00aa6a: 12280001     move.b     $1(a0), d1
00aa6e: e141         asl.w      #$8, d1
00aa70: 12280002     move.b     $2(a0), d1
00aa74: 7000         moveq      #$0, d0
00aa76: 10280003     move.b     $3(a0), d0
00aa7a: 4840         swap       d0
00aa7c: 10280004     move.b     $4(a0), d0
00aa80: e140         asl.w      #$8, d0
00aa82: 10280005     move.b     $5(a0), d0
00aa86: 4e40         trap       #$0
00aa88: 00166500     ori.b      #$0, (a6)
00aa8c: 01ca2008     movep.l    d0, $2008(a2)
00aa90: 600001c2     bra.w      $ac54
00aa94: 4e550000     link.w     a5, #$0
00aa98: 48e77080     movem.l    d1-d3/a0, -(a7)
00aa9c: 2040         movea.l    d0, a0
00aa9e: 7000         moveq      #$0, d0
00aaa0: 4e40         trap       #$0
00aaa2: 0015652c     ori.b      #$2c, (a5)
00aaa6: 2408         move.l     a0, d2
00aaa8: 4841         swap       d1
00aaaa: 927c076c     sub.w      #$76c, d1
00aaae: 10c1         move.b     d1, (a0)+
00aab0: 4841         swap       d1
00aab2: e159         rol.w      #$8, d1
00aab4: 10c1         move.b     d1, (a0)+
00aab6: e159         rol.w      #$8, d1
00aab8: 10c1         move.b     d1, (a0)+
00aaba: 4840         swap       d0
00aabc: 10c0         move.b     d0, (a0)+
00aabe: 4840         swap       d0
00aac0: e158         rol.w      #$8, d0
00aac2: 10c0         move.b     d0, (a0)+
00aac4: e158         rol.w      #$8, d0
00aac6: 10c0         move.b     d0, (a0)+
00aac8: 2002         move.l     d2, d0
00aaca: 4cdf010e     movem.l    (a7)+, d1-d3/a0
00aace: 4e5d         unlk       a5
00aad0: 4e75         rts        
00aad2: 70ff         moveq      #$ff, d0
00aad4: 2d41800c     move.l     d1, -$7ff4(a6)
00aad8: 60f0         bra.b      $aaca
00aada: 4e550000     link.w     a5, #$0
00aade: 48e770c0     movem.l    d1-d3/a0-a1, -(a7)
00aae2: 7400         moveq      #$0, d2
00aae4: 4e40         trap       #$0
00aae6: 00156520     ori.b      #$20, (a5)
00aaea: 206dffec     movea.l    -$14(a5), a0
00aaee: 2080         move.l     d0, (a0)
00aaf0: 41ed0008     lea.l      $8(a5), a0
00aaf4: 2258         movea.l    (a0)+, a1
00aaf6: 2281         move.l     d1, (a1)
00aaf8: 2258         movea.l    (a0)+, a1
00aafa: 3282         move.w     d2, (a1)
00aafc: 2250         movea.l    (a0), a1
00aafe: 2283         move.l     d3, (a1)
00ab00: 7000         moveq      #$0, d0
00ab02: 4cdf030e     movem.l    (a7)+, d1-d3/a0-a1
00ab06: 4e5d         unlk       a5
00ab08: 4e75         rts        
00ab0a: 70ff         moveq      #$ff, d0
00ab0c: 2d41800c     move.l     d1, -$7ff4(a6)
00ab10: 60ee         bra.b      $ab00
00ab12: 4e550000     link.w     a5, #$0
00ab16: 48e76080     movem.l    d1-d2/a0, -(a7)
00ab1a: 2f09         move.l     a1, -(a7)
00ab1c: 2040         movea.l    d0, a0
00ab1e: 2241         movea.l    d1, a1
00ab20: 2010         move.l     (a0), d0
00ab22: 2211         move.l     (a1), d1
00ab24: 4e40         trap       #$0
00ab26: 00206500     ori.b      #$0, -(a0)
00ab2a: 00062080     ori.b      #$80, d6
00ab2e: 2281         move.l     d1, (a1)
00ab30: 225f         movea.l    (a7)+, a1
00ab32: 60000120     bra.w      $ac54
00ab36: 4e550000     link.w     a5, #$0
00ab3a: 48e76080     movem.l    d1-d2/a0, -(a7)
00ab3e: 4e40         trap       #$0
00ab40: 0008         .dc.w      $0008
00ab42: 60000110     bra.w      $ac54
00ab46: 4e550000     link.w     a5, #$0
00ab4a: 48e76080     movem.l    d1-d2/a0, -(a7)
00ab4e: 2040         movea.l    d0, a0
00ab50: 7000         moveq      #$0, d0
00ab52: 4e40         trap       #$0
00ab54: 00046500     ori.b      #$0, d4
00ab58: 00fe         .dc.w      $00fe
00ab5a: 2408         move.l     a0, d2
00ab5c: 670000f6     beq.w      $ac54
00ab60: 4258         clr.w      (a0)+
00ab62: 3081         move.w     d1, (a0)
00ab64: 600000ee     bra.w      $ac54
00ab68: 4e550000     link.w     a5, #$0
00ab6c: 48e76080     movem.l    d1-d2/a0, -(a7)
00ab70: 4e40         trap       #$0
00ab72: 000d         .dc.w      $000d
00ab74: 600000de     bra.w      $ac54
00ab78: 4e550000     link.w     a5, #$0
00ab7c: 48e76080     movem.l    d1-d2/a0, -(a7)
00ab80: 48e71c40     movem.l    d3-d5/a1, -(a7)
00ab84: 7a03         moveq      #$3, d5
00ab86: 602e         bra.b      $abb6
00ab88: 4e550000     link.w     a5, #$0
00ab8c: 48e76080     movem.l    d1-d2/a0, -(a7)
00ab90: 48e71c40     movem.l    d3-d5/a1, -(a7)
00ab94: 7a01         moveq      #$1, d5
00ab96: 601e         bra.b      $abb6
00ab98: 4e550000     link.w     a5, #$0
00ab9c: 48e76080     movem.l    d1-d2/a0, -(a7)
00aba0: 48e71c40     movem.l    d3-d5/a1, -(a7)
00aba4: 7a02         moveq      #$2, d5
00aba6: 600e         bra.b      $abb6
00aba8: 4e550000     link.w     a5, #$0
00abac: 48e76080     movem.l    d1-d2/a0, -(a7)
00abb0: 48e71c40     movem.l    d3-d5/a1, -(a7)
00abb4: 7a00         moveq      #$0, d5
00abb6: 2040         movea.l    d0, a0
00abb8: 2401         move.l     d1, d2
00abba: 226d0008     movea.l    $8(a5), a1
00abbe: 302d0012     move.w     $12(a5), d0
00abc2: 4840         swap       d0
00abc4: 302d000e     move.w     $e(a5), d0
00abc8: 222d0014     move.l     $14(a5), d1
00abcc: 7603         moveq      #$3, d3
00abce: 08050001     btst.b     #$1, d5
00abd2: 6704         beq.b      $abd8
00abd4: 262d001c     move.l     $1c(a5), d3
00abd8: 282d0018     move.l     $18(a5), d4
00abdc: 08050000     btst.b     #$0, d5
00abe0: 6606         bne.b      $abe8
00abe2: 4e40         trap       #$0
00abe4: 00036004     ori.b      #$4, d3
00abe8: 4e40         trap       #$0
00abea: 00054cdf     ori.b      #$df, d5
00abee: 023860000062 andi.b     #$0, $62.w
00abf4: 4e550000     link.w     a5, #$0
00abf8: 48e76080     movem.l    d1-d2/a0, -(a7)
00abfc: 4e40         trap       #$0
00abfe: 000c         .dc.w      $000c
00ac00: 60000052     bra.w      $ac54
00ac04: 4e550000     link.w     a5, #$0
00ac08: 48e76080     movem.l    d1-d2/a0, -(a7)
00ac0c: 4e40         trap       #$0
00ac0e: 000c         .dc.w      $000c
00ac10: 65000044     bcs.w      $ac56
00ac14: 2001         move.l     d1, d0
00ac16: 6000003c     bra.w      $ac54
00ac1a: 4e550000     link.w     a5, #$0
00ac1e: 48e76080     movem.l    d1-d2/a0, -(a7)
00ac22: 2200         move.l     d0, d1
00ac24: 4e40         trap       #$0
00ac26: 001c6000     ori.b      #$0, (a4)+
00ac2a: 002a4e550000 ori.b      #$55, $0(a2)
00ac30: 48e76080     movem.l    d1-d2/a0, -(a7)
00ac34: 41fa0012     lea.l      $ac48(pc), a0
00ac38: 2d4091e0     move.l     d0, -$6e20(a6)
00ac3c: 6602         bne.b      $ac40
00ac3e: 2040         movea.l    d0, a0
00ac40: 4e40         trap       #$0
00ac42: 0009         .dc.w      $0009
00ac44: 6000000e     bra.w      $ac54
00ac48: 2001         move.l     d1, d0
00ac4a: 206e91e0     movea.l    -$6e20(a6), a0
00ac4e: 4e90         jsr        (a0)
00ac50: 4e40         trap       #$0
00ac52: 001e640c     ori.b      #$c, (a6)+
00ac56: 2d41800c     move.l     d1, -$7ff4(a6)
00ac5a: 70ff         moveq      #$ff, d0
00ac5c: 6004         bra.b      $ac62
00ac5e: 65f6         bcs.b      $ac56
00ac60: 7000         moveq      #$0, d0
00ac62: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
00ac68: 4e5d         unlk       a5
00ac6a: 4e75         rts        
00ac6c: 4e550000     link.w     a5, #$0
00ac70: 2200         move.l     d0, d1
00ac72: 6100001e     bsr.w      $ac92
00ac76: 6100ef54     bsr.w      $9bcc
00ac7a: 6008         bra.b      $ac84
00ac7c: 4e550000     link.w     a5, #$0
00ac80: 4afc         illegal    #$4afc
00ac82: 2200         move.l     d0, d1
00ac84: 4e40         trap       #$0
00ac86: 0006dead     ori.b      #$ad, d6
00ac8a: dead003c     add.l      $3c(a5), d7
00ac8e: 00014e75     ori.b      #$75, d1
00ac92: 4e75         rts        
