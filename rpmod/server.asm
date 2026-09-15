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
0000a0: 203c000041e2 move.l     #$41e2, d0
0000a6: 4ebb0800     jsr        $a8(pc,d0.l)
0000aa: 6076         bra.b      $122
0000ac: 43e80004     lea.l      $4(a0), a1
0000b0: 2d498512     move.l     a1, -$7aee(a6)
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
000122: 207c00003ac2 movea.l    #$3ac2, a0
000128: 4ebb8800     jsr        $12a(pc,a0.l)
00012c: 6500011c     bcs.w      $24a
000130: 6120         bsr.b      $152
000132: 4cdf0003     movem.l    (a7)+, d0-d1
000136: 9bcd         suba.l     a5, a5
000138: 2f2e8512     move.l     -$7aee(a6), -(a7)
00013c: 207c0000033e movea.l    #$33e, a0
000142: 4ebb8800     jsr        $144(pc,a0.l)
000146: 7000         moveq      #$0, d0
000148: 207c0000467e movea.l    #$467e, a0
00014e: 4ebb8800     jsr        $150(pc,a0.l)
000152: 207cffff8728 movea.l    #$ffff8728, a0
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
00018e: 207c0000464e movea.l    #$464e, a0
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
0001da: 227c0000460c movea.l    #$460c, a1
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
000254: 227cffff817e movea.l    #$ffff817e, a1
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
000276: 207cffff817e movea.l    #$ffff817e, a0
00027c: d1ce         adda.l     a6, a0
00027e: 6100ff18     bsr.w      $198
000282: 4e40         trap       #$0
000284: 00064e40     ori.b      #$40, d6
000288: 000612d8     ori.b      #$d8, d6
00028c: 66fc         bne.b      $28a
00028e: 4e75         rts        
000290: 4e550000     link.w     a5, #$0
000294: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000298: 4feffff4     lea.l      -$c(a7), a7
00029c: 0c6f001f000e cmpi.w     #$1f, $e(a7)
0002a2: 6618         bne.b      $2bc
0002a4: 4aae855c     tst.l      -$7aa4(a6)
0002a8: 6712         beq.b      $2bc
0002aa: 08ee00068578 bset.b     #$6, -$7a88(a6)
0002b0: 3d7c001f854a move.w     #$1f, -$7ab6(a6)
0002b6: 7000         moveq      #$0, d0
0002b8: 600001ba     bra.w      $474
0002bc: 082e00068034 btst.b     #$6, -$7fcc(a6)
0002c2: 670000ca     beq.w      $38e
0002c6: 4a6e854a     tst.w      -$7ab6(a6)
0002ca: 6606         bne.b      $2d2
0002cc: 3d6f000e854a move.w     $e(a7), -$7ab6(a6)
0002d2: 302f000e     move.w     $e(a7), d0
0002d6: 48c0         ext.l      d0
0002d8: 0800000f     btst.b     #$f, d0
0002dc: 6764         beq.b      $342
0002de: 302f000e     move.w     $e(a7), d0
0002e2: 48c0         ext.l      d0
0002e4: 02800000ffff andi.l     #$ffff, d0
0002ea: 0c8000008000 cmpi.l     #$8000, d0
0002f0: 671a         beq.b      $30c
0002f2: 306e8022     movea.w    -$7fde(a6), a0
0002f6: 2008         move.l     a0, d0
0002f8: 61003394     bsr.w      $368e
0002fc: 2e80         move.l     d0, (a7)
0002fe: 670c         beq.b      $30c
000300: 306f000e     movea.w    $e(a7), a0
000304: 2208         move.l     a0, d1
000306: 2017         move.l     (a7), d0
000308: 61002b6e     bsr.w      $2e78
00030c: 302e8022     move.w     -$7fde(a6), d0
000310: 48c0         ext.l      d0
000312: e588         lsl.l      #$2, d0
000314: 206e855c     movea.l    -$7aa4(a6), a0
000318: 2068000c     movea.l    $c(a0), a0
00031c: 20300800     move.l     (a0, d0.l), d0
000320: 61002112     bsr.w      $2434
000324: 302e8022     move.w     -$7fde(a6), d0
000328: 48c0         ext.l      d0
00032a: e588         lsl.l      #$2, d0
00032c: 206e855c     movea.l    -$7aa4(a6), a0
000330: 2068000c     movea.l    $c(a0), a0
000334: 42b00800     clr.l      (a0, d0.l)
000338: 203c0000ffff move.l     #$ffff, d0
00033e: 6100448e     bsr.w      $47ce
000342: 0c6f0104000e cmpi.w     #$104, $e(a7)
000348: 6700012a     beq.w      $474
00034c: 0c6f0105000e cmpi.w     #$105, $e(a7)
000352: 67000120     beq.w      $474
000356: 4a2e8025     tst.b      -$7fdb(a6)
00035a: 6712         beq.b      $36e
00035c: 4a6e8026     tst.w      -$7fda(a6)
000360: 670c         beq.b      $36e
000362: 306f000e     movea.w    $e(a7), a0
000366: 2208         move.l     a0, d1
000368: 202e8024     move.l     -$7fdc(a6), d0
00036c: 6018         bra.b      $386
00036e: 306e8022     movea.w    -$7fde(a6), a0
000372: 2008         move.l     a0, d0
000374: 61003318     bsr.w      $368e
000378: 2e80         move.l     d0, (a7)
00037a: 670000f8     beq.w      $474
00037e: 306f000e     movea.w    $e(a7), a0
000382: 2208         move.l     a0, d1
000384: 2017         move.l     (a7), d0
000386: 61002af0     bsr.w      $2e78
00038a: 600000e8     bra.w      $474
00038e: 4a6e854a     tst.w      -$7ab6(a6)
000392: 6606         bne.b      $39a
000394: 3d6f000e854a move.w     $e(a7), -$7ab6(a6)
00039a: 302f000e     move.w     $e(a7), d0
00039e: 48c0         ext.l      d0
0003a0: 0800000f     btst.b     #$f, d0
0003a4: 67000098     beq.w      $43e
0003a8: 2f6e80300008 move.l     -$7fd0(a6), $8(a7)
0003ae: 6008         bra.b      $3b8
0003b0: 206f0008     movea.l    $8(a7), a0
0003b4: 2f500008     move.l     (a0), $8(a7)
0003b8: 4aaf0008     tst.l      $8(a7)
0003bc: 6716         beq.b      $3d4
0003be: 707f         moveq      #$7f, d0
0003c0: c06f000e     and.w      $e(a7), d0
0003c4: 48c0         ext.l      d0
0003c6: 206f0008     movea.l    $8(a7), a0
0003ca: 7200         moveq      #$0, d1
0003cc: 3228000e     move.w     $e(a0), d1
0003d0: b081         cmp.l      d1, d0
0003d2: 66dc         bne.b      $3b0
0003d4: 4aaf0008     tst.l      $8(a7)
0003d8: 674e         beq.b      $428
0003da: 206f0008     movea.l    $8(a7), a0
0003de: 4a28000c     tst.b      $c(a0)
0003e2: 6744         beq.b      $428
0003e4: 206f0008     movea.l    $8(a7), a0
0003e8: 226f0008     movea.l    $8(a7), a1
0003ec: 7000         moveq      #$0, d0
0003ee: 1029000c     move.b     $c(a1), d0
0003f2: 3140000e     move.w     d0, $e(a0)
0003f6: 206f0008     movea.l    $8(a7), a0
0003fa: 4228000c     clr.b      $c(a0)
0003fe: 302f000e     move.w     $e(a7), d0
000402: 48c0         ext.l      d0
000404: 206e855c     movea.l    -$7aa4(a6), a0
000408: 7200         moveq      #$0, d1
00040a: 1210         move.b     (a0), d1
00040c: e189         lsl.l      #$8, d1
00040e: 8081         or.l       d1, d0
000410: 2200         move.l     d0, d1
000412: 206f0008     movea.l    $8(a7), a0
000416: 2028000c     move.l     $c(a0), d0
00041a: 61000f62     bsr.w      $137e
00041e: 202f0008     move.l     $8(a7), d0
000422: 61000cfe     bsr.w      $1122
000426: 604c         bra.b      $474
000428: 082e00078034 btst.b     #$7, -$7fcc(a6)
00042e: 6744         beq.b      $474
000430: 303c00ff     move.w     #$ff, d0
000434: c06f000e     and.w      $e(a7), d0
000438: 816e8578     or.w       d0, -$7a88(a6)
00043c: 6036         bra.b      $474
00043e: 0c6f0104000e cmpi.w     #$104, $e(a7)
000444: 672e         beq.b      $474
000446: 0c6f0105000e cmpi.w     #$105, $e(a7)
00044c: 6726         beq.b      $474
00044e: 082e00078034 btst.b     #$7, -$7fcc(a6)
000454: 661e         bne.b      $474
000456: 4a2e8025     tst.b      -$7fdb(a6)
00045a: 6718         beq.b      $474
00045c: 4a6e8026     tst.w      -$7fda(a6)
000460: 6712         beq.b      $474
000462: 422e8024     clr.b      -$7fdc(a6)
000466: 306f000e     movea.w    $e(a7), a0
00046a: 2208         move.l     a0, d1
00046c: 202e8024     move.l     -$7fdc(a6), d0
000470: 61000f0c     bsr.w      $137e
000474: 4fef000c     lea.l      $c(a7), a7
000478: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
00047e: 4e5d         unlk       a5
000480: 4e75         rts        
000482: 4e550000     link.w     a5, #$0
000486: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00048a: 4feffff0     lea.l      -$10(a7), a7
00048e: 41fafe00     lea.l      $290(pc), a0
000492: 2008         move.l     a0, d0
000494: 610030da     bsr.w      $3570
000498: 41ee8568     lea.l      -$7a98(a6), a0
00049c: 2d488030     move.l     a0, -$7fd0(a6)
0004a0: 206e8030     movea.l    -$7fd0(a6), a0
0004a4: 42a8000c     clr.l      $c(a0)
0004a8: 42af000c     clr.l      $c(a7)
0004ac: 6012         bra.b      $4c0
0004ae: 202f000c     move.l     $c(a7), d0
0004b2: e588         lsl.l      #$2, d0
0004b4: 41ee804e     lea.l      -$7fb2(a6), a0
0004b8: 42b00800     clr.l      (a0, d0.l)
0004bc: 52af000c     addq.l     #$1, $c(a7)
0004c0: 7028         moveq      #$28, d0
0004c2: b0af000c     cmp.l      $c(a7), d0
0004c6: 6ee6         bgt.b      $4ae
0004c8: 7003         moveq      #$3, d0
0004ca: b0af0010     cmp.l      $10(a7), d0
0004ce: 6c0a         bge.b      $4da
0004d0: 206f0014     movea.l    $14(a7), a0
0004d4: 2d68000c8546 move.l     $c(a0), -$7aba(a6)
0004da: 7005         moveq      #$5, d0
0004dc: b0af0010     cmp.l      $10(a7), d0
0004e0: 6c10         bge.b      $4f2
0004e2: 206f0014     movea.l    $14(a7), a0
0004e6: 20280014     move.l     $14(a0), d0
0004ea: 2d40853e     move.l     d0, -$7ac2(a6)
0004ee: 2d40853a     move.l     d0, -$7ac6(a6)
0004f2: 7203         moveq      #$3, d1
0004f4: 202e8546     move.l     -$7aba(a6), d0
0004f8: 61002656     bsr.w      $2b50
0004fc: 2d4080f2     move.l     d0, -$7f0e(a6)
000500: 6c06         bge.b      $508
000502: 7000         moveq      #$0, d0
000504: 610042c8     bsr.w      $47ce
000508: 42a7         clr.l      -(a7)
00050a: 222e80f2     move.l     -$7f0e(a6), d1
00050e: 203c0000ff0e move.l     #$ff0e, d0
000514: 6100351e     bsr.w      $3a34
000518: 588f         addq.l     #$4, a7
00051a: 2d40855c     move.l     d0, -$7aa4(a6)
00051e: 42a7         clr.l      -(a7)
000520: 222e80f2     move.l     -$7f0e(a6), d1
000524: 203c0000ff27 move.l     #$ff27, d0
00052a: 61003508     bsr.w      $3a34
00052e: 588f         addq.l     #$4, a7
000530: 2d408560     move.l     d0, -$7aa0(a6)
000534: 61004220     bsr.w      $4756
000538: 3d408022     move.w     d0, -$7fde(a6)
00053c: 7001         moveq      #$1, d0
00053e: b0af0010     cmp.l      $10(a7), d0
000542: 6c62         bge.b      $5a6
000544: 206f0014     movea.l    $14(a7), a0
000548: 20280004     move.l     $4(a0), d0
00054c: 6100393a     bsr.w      $3e88
000550: 7201         moveq      #$1, d1
000552: b280         cmp.l      d0, d1
000554: 6650         bne.b      $5a6
000556: 7001         moveq      #$1, d0
000558: 2f40000c     move.l     d0, $c(a7)
00055c: 6016         bra.b      $574
00055e: 202f000c     move.l     $c(a7), d0
000562: e588         lsl.l      #$2, d0
000564: 206e855c     movea.l    -$7aa4(a6), a0
000568: 2068000c     movea.l    $c(a0), a0
00056c: 42b00800     clr.l      (a0, d0.l)
000570: 52af000c     addq.l     #$1, $c(a7)
000574: 0caf00000100000c cmpi.l     #$100, $c(a7)
00057c: 6de0         blt.b      $55e
00057e: 206e855c     movea.l    -$7aa4(a6), a0
000582: 316e80220002 move.w     -$7fde(a6), $2(a0)
000588: 302e8022     move.w     -$7fde(a6), d0
00058c: 48c0         ext.l      d0
00058e: e588         lsl.l      #$2, d0
000590: 206e855c     movea.l    -$7aa4(a6), a0
000594: 2068000c     movea.l    $c(a0), a0
000598: 226e855c     movea.l    -$7aa4(a6), a1
00059c: 2269000c     movea.l    $c(a1), a1
0005a0: 21910800     move.l     (a1), (a0, d0.l)
0005a4: 6024         bra.b      $5ca
0005a6: 302e8022     move.w     -$7fde(a6), d0
0005aa: 48c0         ext.l      d0
0005ac: e588         lsl.l      #$2, d0
0005ae: 206e855c     movea.l    -$7aa4(a6), a0
0005b2: 2068000c     movea.l    $c(a0), a0
0005b6: 2200         move.l     d0, d1
0005b8: 700a         moveq      #$a, d0
0005ba: 61001d18     bsr.w      $22d4
0005be: 21801800     move.l     d0, (a0, d1.l)
0005c2: 6606         bne.b      $5ca
0005c4: 7000         moveq      #$0, d0
0005c6: 61004206     bsr.w      $47ce
0005ca: 42a7         clr.l      -(a7)
0005cc: 222e80f2     move.l     -$7f0e(a6), d1
0005d0: 203c0000ff0d move.l     #$ff0d, d0
0005d6: 610034c0     bsr.w      $3a98
0005da: 588f         addq.l     #$4, a7
0005dc: 60000160     bra.w      $73e
0005e0: 202e8546     move.l     -$7aba(a6), d0
0005e4: 610031d8     bsr.w      $37be
0005e8: 2d408028     move.l     d0, -$7fd8(a6)
0005ec: 206f0014     movea.l    $14(a7), a0
0005f0: 20280008     move.l     $8(a0), d0
0005f4: 61003892     bsr.w      $3e88
0005f8: 2d40802c     move.l     d0, -$7fd4(a6)
0005fc: 206e802c     movea.l    -$7fd4(a6), a0
000600: 4228000a     clr.b      $a(a0)
000604: 08ae00078034 bclr.b     #$7, -$7fcc(a6)
00060a: 606a         bra.b      $676
00060c: 206e8546     movea.l    -$7aba(a6), a0
000610: 48680001     pea.l      $1(a0)
000614: 222e80f2     move.l     -$7f0e(a6), d1
000618: 203c0000ff22 move.l     #$ff22, d0
00061e: 61003478     bsr.w      $3a98
000622: 588f         addq.l     #$4, a7
000624: 2d408028     move.l     d0, -$7fd8(a6)
000628: 700c         moveq      #$c, d0
00062a: 61002476     bsr.w      $2aa2
00062e: 2d40802c     move.l     d0, -$7fd4(a6)
000632: 6606         bne.b      $63a
000634: 7003         moveq      #$3, d0
000636: 61004196     bsr.w      $47ce
00063a: 206e802c     movea.l    -$7fd4(a6), a0
00063e: 4290         clr.l      (a0)
000640: 206e802c     movea.l    -$7fd4(a6), a0
000644: 117c0028000a move.b     #$28, $a(a0)
00064a: 206e802c     movea.l    -$7fd4(a6), a0
00064e: 316e80220008 move.w     -$7fde(a6), $8(a0)
000654: 206e802c     movea.l    -$7fd4(a6), a0
000658: 42a80004     clr.l      $4(a0)
00065c: 206e855c     movea.l    -$7aa4(a6), a0
000660: 216e802c0010 move.l     -$7fd4(a6), $10(a0)
000666: 206e855c     movea.l    -$7aa4(a6), a0
00066a: 216e80300014 move.l     -$7fd0(a6), $14(a0)
000670: 08ee00078034 bset.b     #$7, -$7fcc(a6)
000676: 08ae00068034 bclr.b     #$6, -$7fcc(a6)
00067c: 600000ea     bra.w      $768
000680: 202e8546     move.l     -$7aba(a6), d0
000684: 61003138     bsr.w      $37be
000688: 2d408028     move.l     d0, -$7fd8(a6)
00068c: 700c         moveq      #$c, d0
00068e: 61002412     bsr.w      $2aa2
000692: 2d40802c     move.l     d0, -$7fd4(a6)
000696: 6606         bne.b      $69e
000698: 7003         moveq      #$3, d0
00069a: 61004132     bsr.w      $47ce
00069e: 206e802c     movea.l    -$7fd4(a6), a0
0006a2: 4290         clr.l      (a0)
0006a4: 206e802c     movea.l    -$7fd4(a6), a0
0006a8: 4228000a     clr.b      $a(a0)
0006ac: 206e802c     movea.l    -$7fd4(a6), a0
0006b0: 316e80220008 move.w     -$7fde(a6), $8(a0)
0006b6: 206e802c     movea.l    -$7fd4(a6), a0
0006ba: 42a80004     clr.l      $4(a0)
0006be: 7006         moveq      #$6, d0
0006c0: b0af0010     cmp.l      $10(a7), d0
0006c4: 6c20         bge.b      $6e6
0006c6: 41ef0004     lea.l      $4(a7), a0
0006ca: 2208         move.l     a0, d1
0006cc: 206f0014     movea.l    $14(a7), a0
0006d0: 20280018     move.l     $18(a0), d0
0006d4: 6100316e     bsr.w      $3844
0006d8: 4a80         tst.l      d0
0006da: 670a         beq.b      $6e6
0006dc: 206e802c     movea.l    -$7fd4(a6), a0
0006e0: 116f00070005 move.b     $7(a7), $5(a0)
0006e6: 08ae00078034 bclr.b     #$7, -$7fcc(a6)
0006ec: 08ee00068034 bset.b     #$6, -$7fcc(a6)
0006f2: 7000         moveq      #$0, d0
0006f4: 61003620     bsr.w      $3d16
0006f8: 2e80         move.l     d0, (a7)
0006fa: 72ff         moveq      #$ff, d1
0006fc: b280         cmp.l      d0, d1
0006fe: 6728         beq.b      $728
000700: 42af000c     clr.l      $c(a7)
000704: 6014         bra.b      $71a
000706: 202f000c     move.l     $c(a7), d0
00070a: e588         lsl.l      #$2, d0
00070c: 41ee804e     lea.l      -$7fb2(a6), a0
000710: 21af000c0800 move.l     $c(a7), (a0, d0.l)
000716: 52af000c     addq.l     #$1, $c(a7)
00071a: 202f000c     move.l     $c(a7), d0
00071e: b097         cmp.l      (a7), d0
000720: 6de4         blt.b      $706
000722: 2017         move.l     (a7), d0
000724: 61003610     bsr.w      $3d36
000728: 223c00000106 move.l     #$106, d1
00072e: 306e8022     movea.w    -$7fde(a6), a0
000732: 2008         move.l     a0, d0
000734: 61002f58     bsr.w      $368e
000738: 6100273e     bsr.w      $2e78
00073c: 602a         bra.b      $768
00073e: 206f0014     movea.l    $14(a7), a0
000742: 20280004     move.l     $4(a0), d0
000746: 61003740     bsr.w      $3e88
00074a: 0c80000000ff cmpi.l     #$ff, d0
000750: 6216         bhi.b      $768
000752: 4a00         tst.b      d0
000754: 6700fe8a     beq.w      $5e0
000758: 0c000001     cmpi.b     #$1, d0
00075c: 6700feae     beq.w      $60c
000760: 0c000002     cmpi.b     #$2, d0
000764: 6700ff1a     beq.w      $680
000768: 206e802c     movea.l    -$7fd4(a6), a0
00076c: 08a80007000b bclr.b     #$7, $b(a0)
000772: 206e802c     movea.l    -$7fd4(a6), a0
000776: 2d6800048024 move.l     $4(a0), -$7fdc(a6)
00077c: 202f0014     move.l     $14(a7), d0
000780: 610e         bsr.b      $790
000782: 4fef0010     lea.l      $10(a7), a7
000786: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00078c: 4e5d         unlk       a5
00078e: 4e75         rts        
000790: 4e550000     link.w     a5, #$0
000794: 48e7e080     movem.l    d0-d2/a0, -(a7)
000798: 4fefffa4     lea.l      -$5c(a7), a7
00079c: 4297         clr.l      (a7)
00079e: 41d7         lea.l      (a7), a0
0007a0: 2d48801e     move.l     a0, -$7fe2(a6)
0007a4: 610033b6     bsr.w      $3b5c
0007a8: 4a6e854a     tst.w      -$7ab6(a6)
0007ac: 6624         bne.b      $7d2
0007ae: 70ff         moveq      #$ff, d0
0007b0: b097         cmp.l      (a7), d0
0007b2: 661e         bne.b      $7d2
0007b4: 4aae8564     tst.l      -$7a9c(a6)
0007b8: 6608         bne.b      $7c2
0007ba: 7000         moveq      #$0, d0
0007bc: 61003bcc     bsr.w      $438a
0007c0: 6010         bra.b      $7d2
0007c2: 7000         moveq      #$0, d0
0007c4: 61003ee2     bsr.w      $46a8
0007c8: 72ff         moveq      #$ff, d1
0007ca: b280         cmp.l      d0, d1
0007cc: 6604         bne.b      $7d2
0007ce: 42ae8564     clr.l      -$7a9c(a6)
0007d2: 426e854a     clr.w      -$7ab6(a6)
0007d6: 102e8034     move.b     -$7fcc(a6), d0
0007da: ee08         lsr.b      #$7, d0
0007dc: 7200         moveq      #$0, d1
0007de: 1200         move.b     d0, d1
0007e0: 0c410001     cmpi.w     #$1, d1
0007e4: 6604         bne.b      $7ea
0007e6: 61000836     bsr.w      $101e
0007ea: 206e855c     movea.l    -$7aa4(a6), a0
0007ee: 4a680018     tst.w      $18(a0)
0007f2: 6606         bne.b      $7fa
0007f4: 4a6e8578     tst.w      -$7a88(a6)
0007f8: 6768         beq.b      $862
0007fa: 303c00ff     move.w     #$ff, d0
0007fe: c06e8578     and.w      -$7a88(a6), d0
000802: 6718         beq.b      $81c
000804: 303c00ff     move.w     #$ff, d0
000808: c06e8578     and.w      -$7a88(a6), d0
00080c: 7200         moveq      #$0, d1
00080e: 3200         move.w     d0, d1
000810: 2001         move.l     d1, d0
000812: 6100079a     bsr.w      $fae
000816: 026eff008578 andi.w     #$ff00, -$7a88(a6)
00081c: 082e00068578 btst.b     #$6, -$7a88(a6)
000822: 6734         beq.b      $858
000824: 026ebfff8578 andi.w     #$bfff, -$7a88(a6)
00082a: 61000920     bsr.w      $114c
00082e: 082e00078034 btst.b     #$7, -$7fcc(a6)
000834: 6722         beq.b      $858
000836: 206e855c     movea.l    -$7aa4(a6), a0
00083a: 42680018     clr.w      $18(a0)
00083e: 42a7         clr.l      -(a7)
000840: 222e80f2     move.l     -$7f0e(a6), d1
000844: 203c0000ff14 move.l     #$ff14, d0
00084a: 6100324c     bsr.w      $3a98
00084e: 588f         addq.l     #$4, a7
000850: 6006         bra.b      $858
000852: 7001         moveq      #$1, d0
000854: 61003b3a     bsr.w      $4390
000858: 206e855c     movea.l    -$7aa4(a6), a0
00085c: 4a680018     tst.w      $18(a0)
000860: 66f0         bne.b      $852
000862: 4a2e857b     tst.b      -$7a85(a6)
000866: 6712         beq.b      $87a
000868: 61000aea     bsr.w      $1354
00086c: 4a97         tst.l      (a7)
00086e: 6706         beq.b      $876
000870: 2017         move.l     (a7), d0
000872: 61002272     bsr.w      $2ae6
000876: 422e857b     clr.b      -$7a85(a6)
00087a: 102e8034     move.b     -$7fcc(a6), d0
00087e: ee08         lsr.b      #$7, d0
000880: 7200         moveq      #$0, d1
000882: 1200         move.b     d0, d1
000884: 0c410001     cmpi.w     #$1, d1
000888: 6616         bne.b      $8a0
00088a: 4878000a     pea.l      $a.w
00088e: 41ef003c     lea.l      $3c(a7), a0
000892: 2208         move.l     a0, d1
000894: 206e855c     movea.l    -$7aa4(a6), a0
000898: 2068000c     movea.l    $c(a0), a0
00089c: 2010         move.l     (a0), d0
00089e: 601e         bra.b      $8be
0008a0: 4878000a     pea.l      $a.w
0008a4: 41ef003c     lea.l      $3c(a7), a0
0008a8: 2208         move.l     a0, d1
0008aa: 302e8022     move.w     -$7fde(a6), d0
0008ae: 48c0         ext.l      d0
0008b0: e588         lsl.l      #$2, d0
0008b2: 206e855c     movea.l    -$7aa4(a6), a0
0008b6: 2068000c     movea.l    $c(a0), a0
0008ba: 20300800     move.l     (a0, d0.l), d0
0008be: 61001dca     bsr.w      $268a
0008c2: 588f         addq.l     #$4, a7
0008c4: 2e80         move.l     d0, (a7)
0008c6: 70ff         moveq      #$ff, d0
0008c8: b097         cmp.l      (a7), d0
0008ca: 6700fed8     beq.w      $7a4
0008ce: 7000         moveq      #$0, d0
0008d0: 102f0040     move.b     $40(a7), d0
0008d4: 3d408026     move.w     d0, -$7fda(a6)
0008d8: 02af00ffffff0040 andi.l     #$ffffff, $40(a7)
0008e0: 7010         moveq      #$10, d0
0008e2: 222f0040     move.l     $40(a7), d1
0008e6: e0a1         asr.l      d0, d1
0008e8: 701c         moveq      #$1c, d0
0008ea: b081         cmp.l      d1, d0
0008ec: 6d30         blt.b      $91e
0008ee: 082e00078034 btst.b     #$7, -$7fcc(a6)
0008f4: 67000182     beq.w      $a78
0008f8: 4a2f003c     tst.b      $3c(a7)
0008fc: 6700017a     beq.w      $a78
000900: 7000         moveq      #$0, d0
000902: 102f003c     move.b     $3c(a7), d0
000906: b06e8022     cmp.w      -$7fde(a6), d0
00090a: 6700016c     beq.w      $a78
00090e: 41ef0038     lea.l      $38(a7), a0
000912: 2008         move.l     a0, d0
000914: 61000b46     bsr.w      $145c
000918: 4a80         tst.l      d0
00091a: 6600015c     bne.w      $a78
00091e: 41ef0038     lea.l      $38(a7), a0
000922: 2008         move.l     a0, d0
000924: 61000616     bsr.w      $f3c
000928: 6000019c     bra.w      $ac6
00092c: 022f001f0010 andi.b     #$1f, $10(a7)
000932: 002f00200010 ori.b      #$20, $10(a7)
000938: 022fffe70010 andi.b     #$e7, $10(a7)
00093e: 02aff80000000010 andi.l     #$f8000000, $10(a7)
000946: 2f6e854c0018 move.l     -$7ab4(a6), $18(a7)
00094c: 2f6e800c0014 move.l     -$7ff4(a6), $14(a7)
000952: 6026         bra.b      $97a
000954: 022f001f0010 andi.b     #$1f, $10(a7)
00095a: 002f00200010 ori.b      #$20, $10(a7)
000960: 022fffe70010 andi.b     #$e7, $10(a7)
000966: 02aff80000000010 andi.l     #$f8000000, $10(a7)
00096e: 70ff         moveq      #$ff, d0
000970: 2f400018     move.l     d0, $18(a7)
000974: 2f6e854c0014 move.l     -$7ab4(a6), $14(a7)
00097a: 2f6f0038000c move.l     $38(a7), $c(a7)
000980: 7001         moveq      #$1, d0
000982: 2f400024     move.l     d0, $24(a7)
000986: 41ef000c     lea.l      $c(a7), a0
00098a: 2f480034     move.l     a0, $34(a7)
00098e: 7010         moveq      #$10, d0
000990: 2f400030     move.l     d0, $30(a7)
000994: 486f0024     pea.l      $24(a7)
000998: 222e80f2     move.l     -$7f0e(a6), d1
00099c: 203c0000ff08 move.l     #$ff08, d0
0009a2: 610030f4     bsr.w      $3a98
0009a6: 588f         addq.l     #$4, a7
0009a8: 4a80         tst.l      d0
0009aa: 6c00011a     bge.w      $ac6
0009ae: 41ef0024     lea.l      $24(a7), a0
0009b2: 2208         move.l     a0, d1
0009b4: 203c0000ff08 move.l     #$ff08, d0
0009ba: 6044         bra.b      $a00
0009bc: 2f6f0038001c move.l     $38(a7), $1c(a7)
0009c2: 42af0020     clr.l      $20(a7)
0009c6: 08ef00050020 bset.b     #$5, $20(a7)
0009cc: 41ef001c     lea.l      $1c(a7), a0
0009d0: 2f480034     move.l     a0, $34(a7)
0009d4: 7008         moveq      #$8, d0
0009d6: 2f400030     move.l     d0, $30(a7)
0009da: 486f0024     pea.l      $24(a7)
0009de: 222e80f2     move.l     -$7f0e(a6), d1
0009e2: 203c0000ff0c move.l     #$ff0c, d0
0009e8: 610030ae     bsr.w      $3a98
0009ec: 588f         addq.l     #$4, a7
0009ee: 4a80         tst.l      d0
0009f0: 6c0000d4     bge.w      $ac6
0009f4: 41ef0024     lea.l      $24(a7), a0
0009f8: 2208         move.l     a0, d1
0009fa: 203c0000ff0c move.l     #$ff0c, d0
000a00: 610008f8     bsr.w      $12fa
000a04: 600000c0     bra.w      $ac6
000a08: 022f001f0010 andi.b     #$1f, $10(a7)
000a0e: 002f00200010 ori.b      #$20, $10(a7)
000a14: 022fffe70010 andi.b     #$e7, $10(a7)
000a1a: 02aff80000000010 andi.l     #$f8000000, $10(a7)
000a22: 2f6e854c0018 move.l     -$7ab4(a6), $18(a7)
000a28: 2f6e800c0014 move.l     -$7ff4(a6), $14(a7)
000a2e: 2f6f0038000c move.l     $38(a7), $c(a7)
000a34: 7001         moveq      #$1, d0
000a36: 2f400024     move.l     d0, $24(a7)
000a3a: 41ef000c     lea.l      $c(a7), a0
000a3e: 2f480034     move.l     a0, $34(a7)
000a42: 7010         moveq      #$10, d0
000a44: 2f400030     move.l     d0, $30(a7)
000a48: 486f0024     pea.l      $24(a7)
000a4c: 222e80f2     move.l     -$7f0e(a6), d1
000a50: 203c0000ff08 move.l     #$ff08, d0
000a56: 61003040     bsr.w      $3a98
000a5a: 588f         addq.l     #$4, a7
000a5c: 4a80         tst.l      d0
000a5e: 6c10         bge.b      $a70
000a60: 41ef0024     lea.l      $24(a7), a0
000a64: 2208         move.l     a0, d1
000a66: 203c0000ff08 move.l     #$ff08, d0
000a6c: 6100088c     bsr.w      $12fa
000a70: 7000         moveq      #$0, d0
000a72: 61003d5a     bsr.w      $47ce
000a76: 604e         bra.b      $ac6
000a78: 2217         move.l     (a7), d1
000a7a: 41ef0038     lea.l      $38(a7), a0
000a7e: 2008         move.l     a0, d0
000a80: 7400         moveq      #$0, d2
000a82: 142f0041     move.b     $41(a7), d2
000a86: e58a         lsl.l      #$2, d2
000a88: 41ee857c     lea.l      -$7a84(a6), a0
000a8c: 20702800     movea.l    (a0, d2.l), a0
000a90: 4e90         jsr        (a0)
000a92: 0c80fffffffd cmpi.l     #$fffffffd, d0
000a98: 6700ff6e     beq.w      $a08
000a9c: 6212         bhi.b      $ab0
000a9e: 0c8000000001 cmpi.l     #$1, d0
000aa4: 6700fe86     beq.w      $92c
000aa8: 621c         bhi.b      $ac6
000aaa: 4a80         tst.l      d0
000aac: 6718         beq.b      $ac6
000aae: 6016         bra.b      $ac6
000ab0: 0c80ffffffff cmpi.l     #$ffffffff, d0
000ab6: 6700fe9c     beq.w      $954
000aba: 620a         bhi.b      $ac6
000abc: 0c80fffffffe cmpi.l     #$fffffffe, d0
000ac2: 6700fef8     beq.w      $9bc
000ac6: 206e802c     movea.l    -$7fd4(a6), a0
000aca: 7000         moveq      #$0, d0
000acc: 1028000a     move.b     $a(a0), d0
000ad0: 661a         bne.b      $aec
000ad2: 206e802c     movea.l    -$7fd4(a6), a0
000ad6: 08e80007000b bset.b     #$7, $b(a0)
000adc: 7201         moveq      #$1, d1
000ade: 206e855c     movea.l    -$7aa4(a6), a0
000ae2: 30680002     movea.w    $2(a0), a0
000ae6: 2008         move.l     a0, d0
000ae8: 6100238e     bsr.w      $2e78
000aec: 4a2e857b     tst.b      -$7a85(a6)
000af0: 6600fcb2     bne.w      $7a4
000af4: 0cae000020008554 cmpi.l     #$2000, -$7aac(a6)
000afc: 6f14         ble.b      $b12
000afe: 222e8558     move.l     -$7aa8(a6), d1
000b02: 202e8554     move.l     -$7aac(a6), d0
000b06: 61003b7a     bsr.w      $4682
000b0a: 42ae8554     clr.l      -$7aac(a6)
000b0e: 42ae8558     clr.l      -$7aa8(a6)
000b12: 4a97         tst.l      (a7)
000b14: 6700fc8e     beq.w      $7a4
000b18: 2017         move.l     (a7), d0
000b1a: 61001fca     bsr.w      $2ae6
000b1e: 6000fc84     bra.w      $7a4
000b22: 4fef005c     lea.l      $5c(a7), a7
000b26: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
000b2c: 4e5d         unlk       a5
000b2e: 4e75         rts        
000b30: 4e550000     link.w     a5, #$0
000b34: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000b38: 6008         bra.b      $b42
000b3a: 206f0004     movea.l    $4(a7), a0
000b3e: 2f500004     move.l     (a0), $4(a7)
000b42: 4aaf0004     tst.l      $4(a7)
000b46: 6710         beq.b      $b58
000b48: 2057         movea.l    (a7), a0
000b4a: 226f0004     movea.l    $4(a7), a1
000b4e: 20290004     move.l     $4(a1), d0
000b52: b0a8000c     cmp.l      $c(a0), d0
000b56: 66e2         bne.b      $b3a
000b58: 202f0004     move.l     $4(a7), d0
000b5c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000b62: 4e5d         unlk       a5
000b64: 4e75         rts        
000b66: 4e550000     link.w     a5, #$0
000b6a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000b6e: 6008         bra.b      $b78
000b70: 206f0004     movea.l    $4(a7), a0
000b74: 2f500004     move.l     (a0), $4(a7)
000b78: 4aaf0004     tst.l      $4(a7)
000b7c: 6710         beq.b      $b8e
000b7e: 2057         movea.l    (a7), a0
000b80: 226f0004     movea.l    $4(a7), a1
000b84: 10290004     move.b     $4(a1), d0
000b88: b028000c     cmp.b      $c(a0), d0
000b8c: 66e2         bne.b      $b70
000b8e: 202f0004     move.l     $4(a7), d0
000b92: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000b98: 4e5d         unlk       a5
000b9a: 4e75         rts        
000b9c: 4e550000     link.w     a5, #$0
000ba0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000ba4: 6008         bra.b      $bae
000ba6: 206f0004     movea.l    $4(a7), a0
000baa: 2f500004     move.l     (a0), $4(a7)
000bae: 4aaf0004     tst.l      $4(a7)
000bb2: 6720         beq.b      $bd4
000bb4: 2057         movea.l    (a7), a0
000bb6: 226f0004     movea.l    $4(a7), a1
000bba: 30290006     move.w     $6(a1), d0
000bbe: b068000e     cmp.w      $e(a0), d0
000bc2: 66e2         bne.b      $ba6
000bc4: 2057         movea.l    (a7), a0
000bc6: 226f0004     movea.l    $4(a7), a1
000bca: 10290005     move.b     $5(a1), d0
000bce: b028000d     cmp.b      $d(a0), d0
000bd2: 66d2         bne.b      $ba6
000bd4: 202f0004     move.l     $4(a7), d0
000bd8: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000bde: 4e5d         unlk       a5
000be0: 4e75         rts        
000be2: 4e550000     link.w     a5, #$0
000be6: 48e7c080     movem.l    d0-d1/a0, -(a7)
000bea: 6008         bra.b      $bf4
000bec: 206f0004     movea.l    $4(a7), a0
000bf0: 2f500004     move.l     (a0), $4(a7)
000bf4: 4aaf0004     tst.l      $4(a7)
000bf8: 670c         beq.b      $c06
000bfa: 206f0004     movea.l    $4(a7), a0
000bfe: 7000         moveq      #$0, d0
000c00: 10280004     move.b     $4(a0), d0
000c04: 66e6         bne.b      $bec
000c06: 202f0004     move.l     $4(a7), d0
000c0a: 4ced0100fffc movem.l    -$4(a5), a0
000c10: 4e5d         unlk       a5
000c12: 4e75         rts        
000c14: 4e550000     link.w     a5, #$0
000c18: 48e7c080     movem.l    d0-d1/a0, -(a7)
000c1c: 598f         subq.l     #$4, a7
000c1e: 600c         bra.b      $c2c
000c20: 2eaf0008     move.l     $8(a7), (a7)
000c24: 206f0008     movea.l    $8(a7), a0
000c28: 2f500008     move.l     (a0), $8(a7)
000c2c: 4aaf0008     tst.l      $8(a7)
000c30: 66ee         bne.b      $c20
000c32: 2017         move.l     (a7), d0
000c34: 588f         addq.l     #$4, a7
000c36: 4ced0100fffc movem.l    -$4(a5), a0
000c3c: 4e5d         unlk       a5
000c3e: 4e75         rts        
000c40: 4e550000     link.w     a5, #$0
000c44: 48e7c080     movem.l    d0-d1/a0, -(a7)
000c48: 206f0004     movea.l    $4(a7), a0
000c4c: 302e8022     move.w     -$7fde(a6), d0
000c50: b0680008     cmp.w      $8(a0), d0
000c54: 6744         beq.b      $c9a
000c56: 2f2f0014     move.l     $14(a7), -(a7)
000c5a: 222f0004     move.l     $4(a7), d1
000c5e: 206f0008     movea.l    $8(a7), a0
000c62: 30280008     move.w     $8(a0), d0
000c66: 48c0         ext.l      d0
000c68: e588         lsl.l      #$2, d0
000c6a: 206e855c     movea.l    -$7aa4(a6), a0
000c6e: 2068000c     movea.l    $c(a0), a0
000c72: 20300800     move.l     (a0, d0.l), d0
000c76: 610015cc     bsr.w      $2244
000c7a: 588f         addq.l     #$4, a7
000c7c: 4a80         tst.l      d0
000c7e: 661e         bne.b      $c9e
000c80: 223c00000104 move.l     #$104, d1
000c86: 206f0004     movea.l    $4(a7), a0
000c8a: 30680008     movea.w    $8(a0), a0
000c8e: 2008         move.l     a0, d0
000c90: 610021e6     bsr.w      $2e78
000c94: 206e801e     movea.l    -$7fe2(a6), a0
000c98: 4290         clr.l      (a0)
000c9a: 7001         moveq      #$1, d0
000c9c: 6002         bra.b      $ca0
000c9e: 7000         moveq      #$0, d0
000ca0: 4ced0100fffc movem.l    -$4(a5), a0
000ca6: 4e5d         unlk       a5
000ca8: 4e75         rts        
000caa: 4e550000     link.w     a5, #$0
000cae: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000cb2: 4fefffd4     lea.l      -$2c(a7), a7
000cb6: 42af0014     clr.l      $14(a7)
000cba: 206f002c     movea.l    $2c(a7), a0
000cbe: 226e802c     movea.l    -$7fd4(a6), a1
000cc2: 20290004     move.l     $4(a1), d0
000cc6: b0a8000c     cmp.l      $c(a0), d0
000cca: 67000232     beq.w      $efe
000cce: 206e855c     movea.l    -$7aa4(a6), a0
000cd2: 22280010     move.l     $10(a0), d1
000cd6: 202f002c     move.l     $2c(a7), d0
000cda: 6100fe54     bsr.w      $b30
000cde: 2f400028     move.l     d0, $28(a7)
000ce2: 670c         beq.b      $cf0
000ce4: 2f2f0030     move.l     $30(a7), -(a7)
000ce8: 222f002c     move.l     $2c(a7), d1
000cec: 60000204     bra.w      $ef2
000cf0: 206f002c     movea.l    $2c(a7), a0
000cf4: 226e802c     movea.l    -$7fd4(a6), a1
000cf8: 30290006     move.w     $6(a1), d0
000cfc: b068000e     cmp.w      $e(a0), d0
000d00: 661a         bne.b      $d1c
000d02: 206f002c     movea.l    $2c(a7), a0
000d06: 226e802c     movea.l    -$7fd4(a6), a1
000d0a: 10290005     move.b     $5(a1), d0
000d0e: b028000d     cmp.b      $d(a0), d0
000d12: 6608         bne.b      $d1c
000d14: 08ef00000017 bset.b     #$0, $17(a7)
000d1a: 601c         bra.b      $d38
000d1c: 206e855c     movea.l    -$7aa4(a6), a0
000d20: 22280010     move.l     $10(a0), d1
000d24: 202f002c     move.l     $2c(a7), d0
000d28: 6100fe72     bsr.w      $b9c
000d2c: 2f400020     move.l     d0, $20(a7)
000d30: 6706         beq.b      $d38
000d32: 08ef00010017 bset.b     #$1, $17(a7)
000d38: 206f002c     movea.l    $2c(a7), a0
000d3c: 226e802c     movea.l    -$7fd4(a6), a1
000d40: 10290004     move.b     $4(a1), d0
000d44: b028000c     cmp.b      $c(a0), d0
000d48: 660a         bne.b      $d54
000d4a: 08ef00020017 bset.b     #$2, $17(a7)
000d50: 600001b0     bra.w      $f02
000d54: 206e855c     movea.l    -$7aa4(a6), a0
000d58: 22280010     move.l     $10(a0), d1
000d5c: 202f002c     move.l     $2c(a7), d0
000d60: 6100fe04     bsr.w      $b66
000d64: 2f400024     move.l     d0, $24(a7)
000d68: 67000198     beq.w      $f02
000d6c: 08ef00030017 bset.b     #$3, $17(a7)
000d72: 6000018e     bra.w      $f02
000d76: 206f0024     movea.l    $24(a7), a0
000d7a: 4a280004     tst.b      $4(a0)
000d7e: 6700017e     beq.w      $efe
000d82: 206f0024     movea.l    $24(a7), a0
000d86: 3f680008001e move.w     $8(a0), $1e(a7)
000d8c: 206e802c     movea.l    -$7fd4(a6), a0
000d90: 3f680008001c move.w     $8(a0), $1c(a7)
000d96: 2f2f001c     move.l     $1c(a7), -(a7)
000d9a: 222e80f2     move.l     -$7f0e(a6), d1
000d9e: 203c0000ff10 move.l     #$ff10, d0
000da4: 61002cf2     bsr.w      $3a98
000da8: 588f         addq.l     #$4, a7
000daa: 60000152     bra.w      $efe
000dae: 2f2f0030     move.l     $30(a7), -(a7)
000db2: 222f0024     move.l     $24(a7), d1
000db6: 6000013a     bra.w      $ef2
000dba: 082e00078034 btst.b     #$7, -$7fcc(a6)
000dc0: 670e         beq.b      $dd0
000dc2: 206f002c     movea.l    $2c(a7), a0
000dc6: 7000         moveq      #$0, d0
000dc8: 10280002     move.b     $2(a0), d0
000dcc: 610006fa     bsr.w      $14c8
000dd0: 206e855c     movea.l    -$7aa4(a6), a0
000dd4: 22280010     move.l     $10(a0), d1
000dd8: 202f002c     move.l     $2c(a7), d0
000ddc: 6100fe36     bsr.w      $c14
000de0: 2f400028     move.l     d0, $28(a7)
000de4: 700c         moveq      #$c, d0
000de6: 61001cba     bsr.w      $2aa2
000dea: 206f0028     movea.l    $28(a7), a0
000dee: 2080         move.l     d0, (a0)
000df0: 6700010c     beq.w      $efe
000df4: 206f0028     movea.l    $28(a7), a0
000df8: 2f10         move.l     (a0), -(a7)
000dfa: 41fa0729     lea.l      $1525(pc), a0
000dfe: 2208         move.l     a0, d1
000e00: 41ef0004     lea.l      $4(a7), a0
000e04: 2008         move.l     a0, d0
000e06: 61002ebe     bsr.w      $3cc6
000e0a: 588f         addq.l     #$4, a7
000e0c: 41d7         lea.l      (a7), a0
000e0e: 2d488532     move.l     a0, -$7ace(a6)
000e12: 2d6e85468536 move.l     -$7aba(a6), -$7aca(a6)
000e18: 206f0028     movea.l    $28(a7), a0
000e1c: 2050         movea.l    (a0), a0
000e1e: 4290         clr.l      (a0)
000e20: 206f002c     movea.l    $2c(a7), a0
000e24: 226f0028     movea.l    $28(a7), a1
000e28: 2251         movea.l    (a1), a1
000e2a: 2368000c0004 move.l     $c(a0), $4(a1)
000e30: 2f3c00008003 move.l     #$8003, -(a7)
000e36: 42a7         clr.l      -(a7)
000e38: 42a7         clr.l      -(a7)
000e3a: 2f2e8512     move.l     -$7aee(a6), -(a7)
000e3e: 486e852a     pea.l      -$7ad6(a6)
000e42: 222e852a     move.l     -$7ad6(a6), d1
000e46: 41fa38b2     lea.l      $46fa(pc), a0
000e4a: 2008         move.l     a0, d0
000e4c: 6100223e     bsr.w      $308c
000e50: 4fef0014     lea.l      $14(a7), a7
000e54: 206f0028     movea.l    $28(a7), a0
000e58: 2050         movea.l    (a0), a0
000e5a: 31400008     move.w     d0, $8(a0)
000e5e: 0c40ffff     cmpi.w     #$ffff, d0
000e62: 6742         beq.b      $ea6
000e64: 7001         moveq      #$1, d0
000e66: 2d408564     move.l     d0, -$7a9c(a6)
000e6a: 42af0018     clr.l      $18(a7)
000e6e: 6026         bra.b      $e96
000e70: 7001         moveq      #$1, d0
000e72: 6100351c     bsr.w      $4390
000e76: 206f0028     movea.l    $28(a7), a0
000e7a: 2050         movea.l    (a0), a0
000e7c: 30280008     move.w     $8(a0), d0
000e80: 48c0         ext.l      d0
000e82: e588         lsl.l      #$2, d0
000e84: 206e855c     movea.l    -$7aa4(a6), a0
000e88: 2068000c     movea.l    $c(a0), a0
000e8c: 4ab00800     tst.l      (a0, d0.l)
000e90: 660c         bne.b      $e9e
000e92: 52af0018     addq.l     #$1, $18(a7)
000e96: 701e         moveq      #$1e, d0
000e98: b0af0018     cmp.l      $18(a7), d0
000e9c: 6ed2         bgt.b      $e70
000e9e: 701e         moveq      #$1e, d0
000ea0: b0af0018     cmp.l      $18(a7), d0
000ea4: 6612         bne.b      $eb8
000ea6: 206f0028     movea.l    $28(a7), a0
000eaa: 2010         move.l     (a0), d0
000eac: 61001c38     bsr.w      $2ae6
000eb0: 206f0028     movea.l    $28(a7), a0
000eb4: 4290         clr.l      (a0)
000eb6: 6046         bra.b      $efe
000eb8: 3f6e8022001e move.w     -$7fde(a6), $1e(a7)
000ebe: 206f0028     movea.l    $28(a7), a0
000ec2: 2050         movea.l    (a0), a0
000ec4: 3f680008001c move.w     $8(a0), $1c(a7)
000eca: 2f2f001c     move.l     $1c(a7), -(a7)
000ece: 222e80f2     move.l     -$7f0e(a6), d1
000ed2: 203c0000ff10 move.l     #$ff10, d0
000ed8: 61002bbe     bsr.w      $3a98
000edc: 588f         addq.l     #$4, a7
000ede: 2f2f0030     move.l     $30(a7), -(a7)
000ee2: 206f002c     movea.l    $2c(a7), a0
000ee6: 2210         move.l     (a0), d1
000ee8: 6008         bra.b      $ef2
000eea: 2f2f0030     move.l     $30(a7), -(a7)
000eee: 222f0028     move.l     $28(a7), d1
000ef2: 202f0030     move.l     $30(a7), d0
000ef6: 6100fd48     bsr.w      $c40
000efa: 588f         addq.l     #$4, a7
000efc: 6030         bra.b      $f2e
000efe: 7000         moveq      #$0, d0
000f00: 602c         bra.b      $f2e
000f02: 202f0014     move.l     $14(a7), d0
000f06: 5380         subq.l     #$1, d0
000f08: 0c8000000009 cmpi.l     #$9, d0
000f0e: 62ee         bhi.b      $efe
000f10: d040         add.w      d0, d0
000f12: 303b0006     move.w     $f1a(pc, d0.w), d0
000f16: 4efb0002     jmp        $f1a(pc, d0.w)
000f1a: fe5cfe94     fsolt.b    (a4)+
000f1e: ffe4         dc.w       $ffe4
000f20: fea0ffe4     fbf.w      $f06
000f24: fe94ffe4     fbf.w      $f0a
000f28: ffd0         dc.w       $ffd0
000f2a: fe5cfe94     fsolt.b    (a4)+
000f2e: 4fef002c     lea.l      $2c(a7), a7
000f32: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000f38: 4e5d         unlk       a5
000f3a: 4e75         rts        
000f3c: 4e550000     link.w     a5, #$0
000f40: 48e7c080     movem.l    d0-d1/a0, -(a7)
000f44: 4fefffe4     lea.l      -$1c(a7), a7
000f48: 206f001c     movea.l    $1c(a7), a0
000f4c: 2e90         move.l     (a0), (a7)
000f4e: 42af0004     clr.l      $4(a7)
000f52: 08ef00050004 bset.b     #$5, $4(a7)
000f58: 41d7         lea.l      (a7), a0
000f5a: 2f480018     move.l     a0, $18(a7)
000f5e: 7008         moveq      #$8, d0
000f60: 2f400014     move.l     d0, $14(a7)
000f64: 486f0008     pea.l      $8(a7)
000f68: 222e80f2     move.l     -$7f0e(a6), d1
000f6c: 203c0000ff0c move.l     #$ff0c, d0
000f72: 61002b24     bsr.w      $3a98
000f76: 588f         addq.l     #$4, a7
000f78: 4a80         tst.l      d0
000f7a: 6c10         bge.b      $f8c
000f7c: 41ef0008     lea.l      $8(a7), a0
000f80: 2208         move.l     a0, d1
000f82: 203c0000ff0c move.l     #$ff0c, d0
000f88: 61000370     bsr.w      $12fa
000f8c: 7000         moveq      #$0, d0
000f8e: 4fef001c     lea.l      $1c(a7), a7
000f92: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000f98: 4e5d         unlk       a5
000f9a: 4e75         rts        
000f9c: 4e550000     link.w     a5, #$0
000fa0: 48e78000     movem.l    d0, -(a7)
000fa4: 70ff         moveq      #$ff, d0
000fa6: 2d40854c     move.l     d0, -$7ab4(a6)
000faa: 4e5d         unlk       a5
000fac: 4e75         rts        
000fae: 4e550000     link.w     a5, #$0
000fb2: 48e780c0     movem.l    d0/a0-a1, -(a7)
000fb6: 518f         subq.l     #$8, a7
000fb8: 206e855c     movea.l    -$7aa4(a6), a0
000fbc: 20280010     move.l     $10(a0), d0
000fc0: 2f400004     move.l     d0, $4(a7)
000fc4: 2e80         move.l     d0, (a7)
000fc6: 600c         bra.b      $fd4
000fc8: 2eaf0004     move.l     $4(a7), (a7)
000fcc: 206f0004     movea.l    $4(a7), a0
000fd0: 2f500004     move.l     (a0), $4(a7)
000fd4: 206f0004     movea.l    $4(a7), a0
000fd8: 30280008     move.w     $8(a0), d0
000fdc: 48c0         ext.l      d0
000fde: b0af0008     cmp.l      $8(a7), d0
000fe2: 6708         beq.b      $fec
000fe4: 206f0004     movea.l    $4(a7), a0
000fe8: 4a90         tst.l      (a0)
000fea: 66dc         bne.b      $fc8
000fec: 206f0004     movea.l    $4(a7), a0
000ff0: 30280008     move.w     $8(a0), d0
000ff4: 48c0         ext.l      d0
000ff6: b0af0008     cmp.l      $8(a7), d0
000ffa: 6614         bne.b      $1010
000ffc: 206f0004     movea.l    $4(a7), a0
001000: 2257         movea.l    (a7), a1
001002: 2290         move.l     (a0), (a1)
001004: 202f0004     move.l     $4(a7), d0
001008: 61001adc     bsr.w      $2ae6
00100c: 7000         moveq      #$0, d0
00100e: 6002         bra.b      $1012
001010: 7001         moveq      #$1, d0
001012: 508f         addq.l     #$8, a7
001014: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00101a: 4e5d         unlk       a5
00101c: 4e75         rts        
00101e: 4e550000     link.w     a5, #$0
001022: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001026: 206e802c     movea.l    -$7fd4(a6), a0
00102a: 2450         movea.l    (a0), a2
00102c: 6000008e     bra.w      $10bc
001030: 082a0007000b btst.b     #$7, $b(a2)
001036: 67000082     beq.w      $10ba
00103a: 302a0008     move.w     $8(a2), d0
00103e: 48c0         ext.l      d0
001040: e588         lsl.l      #$2, d0
001042: 206e855c     movea.l    -$7aa4(a6), a0
001046: 2068000c     movea.l    $c(a0), a0
00104a: 20700800     movea.l    (a0, d0.l), a0
00104e: 4aa8002c     tst.l      $2c(a0)
001052: 6666         bne.b      $10ba
001054: 382a0008     move.w     $8(a2), d4
001058: 3004         move.w     d4, d0
00105a: 48c0         ext.l      d0
00105c: e588         lsl.l      #$2, d0
00105e: 206e855c     movea.l    -$7aa4(a6), a0
001062: 2068000c     movea.l    $c(a0), a0
001066: 26700800     movea.l    (a0, d0.l), a3
00106a: 3004         move.w     d4, d0
00106c: 48c0         ext.l      d0
00106e: e588         lsl.l      #$2, d0
001070: 206e855c     movea.l    -$7aa4(a6), a0
001074: 2068000c     movea.l    $c(a0), a0
001078: 42b00800     clr.l      (a0, d0.l)
00107c: 4aab002c     tst.l      $2c(a3)
001080: 6620         bne.b      $10a2
001082: 2452         movea.l    (a2), a2
001084: 200b         move.l     a3, d0
001086: 610013ac     bsr.w      $2434
00108a: 7200         moveq      #$0, d1
00108c: 48c4         ext.l      d4
00108e: 2004         move.l     d4, d0
001090: 61001de6     bsr.w      $2e78
001094: 48c4         ext.l      d4
001096: 2004         move.l     d4, d0
001098: 6100ff14     bsr.w      $fae
00109c: 200a         move.l     a2, d0
00109e: 661a         bne.b      $10ba
0010a0: 6020         bra.b      $10c2
0010a2: 3004         move.w     d4, d0
0010a4: 48c0         ext.l      d0
0010a6: e588         lsl.l      #$2, d0
0010a8: 206e855c     movea.l    -$7aa4(a6), a0
0010ac: 2068000c     movea.l    $c(a0), a0
0010b0: 218b0800     move.l     a3, (a0, d0.l)
0010b4: 08aa0007000b bclr.b     #$7, $b(a2)
0010ba: 2452         movea.l    (a2), a2
0010bc: 200a         move.l     a2, d0
0010be: 6600ff70     bne.w      $1030
0010c2: 7000         moveq      #$0, d0
0010c4: 4ced0d12ffec movem.l    -$14(a5), d1/d4/a0/a2-a3
0010ca: 4e5d         unlk       a5
0010cc: 4e75         rts        
0010ce: 4e550000     link.w     a5, #$0
0010d2: 48e7c000     movem.l    d0-d1, -(a7)
0010d6: 2017         move.l     (a7), d0
0010d8: b0ae8554     cmp.l      -$7aac(a6), d0
0010dc: 6338         bls.b      $1116
0010de: 4aae8558     tst.l      -$7aa8(a6)
0010e2: 670c         beq.b      $10f0
0010e4: 222e8558     move.l     -$7aa8(a6), d1
0010e8: 202e8554     move.l     -$7aac(a6), d0
0010ec: 61003594     bsr.w      $4682
0010f0: 2017         move.l     (a7), d0
0010f2: 5880         addq.l     #$4, d0
0010f4: 61003572     bsr.w      $4668
0010f8: 2d408558     move.l     d0, -$7aa8(a6)
0010fc: 72ff         moveq      #$ff, d1
0010fe: b280         cmp.l      d0, d1
001100: 660c         bne.b      $110e
001102: 42ae8554     clr.l      -$7aac(a6)
001106: 42ae8558     clr.l      -$7aa8(a6)
00110a: 70ff         moveq      #$ff, d0
00110c: 600a         bra.b      $1118
00110e: 2017         move.l     (a7), d0
001110: 5880         addq.l     #$4, d0
001112: 2d408554     move.l     d0, -$7aac(a6)
001116: 7000         moveq      #$0, d0
001118: 4ced0002fffc movem.l    -$4(a5), d1
00111e: 4e5d         unlk       a5
001120: 4e75         rts        
001122: 4e550000     link.w     a5, #$0
001126: 48e78080     movem.l    d0/a0, -(a7)
00112a: 2057         movea.l    (a7), a0
00112c: 42a8000c     clr.l      $c(a0)
001130: 2057         movea.l    (a7), a0
001132: 20280004     move.l     $4(a0), d0
001136: 610019ae     bsr.w      $2ae6
00113a: 2057         movea.l    (a7), a0
00113c: 42a80004     clr.l      $4(a0)
001140: 7000         moveq      #$0, d0
001142: 4ced0100fffc movem.l    -$4(a5), a0
001148: 4e5d         unlk       a5
00114a: 4e75         rts        
00114c: 4e550000     link.w     a5, #$0
001150: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001154: 4fefffea     lea.l      -$16(a7), a7
001158: 206e855c     movea.l    -$7aa4(a6), a0
00115c: 1f6800190009 move.b     $19(a0), $9(a7)
001162: 4297         clr.l      (a7)
001164: 082e00078034 btst.b     #$7, -$7fcc(a6)
00116a: 670000fc     beq.w      $1268
00116e: 2f6e802c000e move.l     -$7fd4(a6), $e(a7)
001174: 206e802c     movea.l    -$7fd4(a6), a0
001178: 6000009c     bra.w      $1216
00117c: 206f0012     movea.l    $12(a7), a0
001180: 102f0009     move.b     $9(a7), d0
001184: b0280005     cmp.b      $5(a0), d0
001188: 66000082     bne.w      $120c
00118c: 206f0012     movea.l    $12(a7), a0
001190: 30280008     move.w     $8(a0), d0
001194: 48c0         ext.l      d0
001196: e588         lsl.l      #$2, d0
001198: 206e855c     movea.l    -$7aa4(a6), a0
00119c: 2068000c     movea.l    $c(a0), a0
0011a0: 4ab00800     tst.l      (a0, d0.l)
0011a4: 674e         beq.b      $11f4
0011a6: 721f         moveq      #$1f, d1
0011a8: 206f0012     movea.l    $12(a7), a0
0011ac: 30680008     movea.w    $8(a0), a0
0011b0: 2008         move.l     a0, d0
0011b2: 61001cc4     bsr.w      $2e78
0011b6: 42af0004     clr.l      $4(a7)
0011ba: 6024         bra.b      $11e0
0011bc: 206f0012     movea.l    $12(a7), a0
0011c0: 30280008     move.w     $8(a0), d0
0011c4: 48c0         ext.l      d0
0011c6: e588         lsl.l      #$2, d0
0011c8: 206e855c     movea.l    -$7aa4(a6), a0
0011cc: 2068000c     movea.l    $c(a0), a0
0011d0: 4ab00800     tst.l      (a0, d0.l)
0011d4: 6712         beq.b      $11e8
0011d6: 7004         moveq      #$4, d0
0011d8: 610031b6     bsr.w      $4390
0011dc: 52af0004     addq.l     #$1, $4(a7)
0011e0: 701e         moveq      #$1e, d0
0011e2: b0af0004     cmp.l      $4(a7), d0
0011e6: 6ed4         bgt.b      $11bc
0011e8: 701e         moveq      #$1e, d0
0011ea: b0af0004     cmp.l      $4(a7), d0
0011ee: 6604         bne.b      $11f4
0011f0: 70ff         moveq      #$ff, d0
0011f2: 2e80         move.l     d0, (a7)
0011f4: 206f0012     movea.l    $12(a7), a0
0011f8: 226f000e     movea.l    $e(a7), a1
0011fc: 2290         move.l     (a0), (a1)
0011fe: 202f0012     move.l     $12(a7), d0
001202: 610018e2     bsr.w      $2ae6
001206: 206f000e     movea.l    $e(a7), a0
00120a: 600a         bra.b      $1216
00120c: 2f6f0012000e move.l     $12(a7), $e(a7)
001212: 206f0012     movea.l    $12(a7), a0
001216: 2f500012     move.l     (a0), $12(a7)
00121a: 4aaf0012     tst.l      $12(a7)
00121e: 6600ff5c     bne.w      $117c
001222: 2f6e8030000a move.l     -$7fd0(a6), $a(a7)
001228: 601e         bra.b      $1248
00122a: 206f000a     movea.l    $a(a7), a0
00122e: 102f0009     move.b     $9(a7), d0
001232: b028000d     cmp.b      $d(a0), d0
001236: 6608         bne.b      $1240
001238: 202f000a     move.l     $a(a7), d0
00123c: 6100fee4     bsr.w      $1122
001240: 206f000a     movea.l    $a(a7), a0
001244: 2f50000a     move.l     (a0), $a(a7)
001248: 4aaf000a     tst.l      $a(a7)
00124c: 66dc         bne.b      $122a
00124e: 7000         moveq      #$0, d0
001250: 102f0009     move.b     $9(a7), d0
001254: 2200         move.l     d0, d1
001256: 206e855c     movea.l    -$7aa4(a6), a0
00125a: 2068000c     movea.l    $c(a0), a0
00125e: 2010         move.l     (a0), d0
001260: 610012be     bsr.w      $2520
001264: 60000084     bra.w      $12ea
001268: 206e802c     movea.l    -$7fd4(a6), a0
00126c: 102f0009     move.b     $9(a7), d0
001270: b0280005     cmp.b      $5(a0), d0
001274: 6674         bne.b      $12ea
001276: 7001         moveq      #$1, d0
001278: 61003116     bsr.w      $4390
00127c: 42af0004     clr.l      $4(a7)
001280: 6026         bra.b      $12a8
001282: 202f0004     move.l     $4(a7), d0
001286: e588         lsl.l      #$2, d0
001288: 41ee804e     lea.l      -$7fb2(a6), a0
00128c: 4ab00800     tst.l      (a0, d0.l)
001290: 6f12         ble.b      $12a4
001292: 202f0004     move.l     $4(a7), d0
001296: e588         lsl.l      #$2, d0
001298: 41ee804e     lea.l      -$7fb2(a6), a0
00129c: 20300800     move.l     (a0, d0.l), d0
0012a0: 61002a94     bsr.w      $3d36
0012a4: 52af0004     addq.l     #$1, $4(a7)
0012a8: 7028         moveq      #$28, d0
0012aa: b0af0004     cmp.l      $4(a7), d0
0012ae: 6ed2         bgt.b      $1282
0012b0: 202e80f2     move.l     -$7f0e(a6), d0
0012b4: 61002a80     bsr.w      $3d36
0012b8: 302e8022     move.w     -$7fde(a6), d0
0012bc: 48c0         ext.l      d0
0012be: e588         lsl.l      #$2, d0
0012c0: 206e855c     movea.l    -$7aa4(a6), a0
0012c4: 2068000c     movea.l    $c(a0), a0
0012c8: 20300800     move.l     (a0, d0.l), d0
0012cc: 61001166     bsr.w      $2434
0012d0: 302e8022     move.w     -$7fde(a6), d0
0012d4: 48c0         ext.l      d0
0012d6: e588         lsl.l      #$2, d0
0012d8: 206e855c     movea.l    -$7aa4(a6), a0
0012dc: 2068000c     movea.l    $c(a0), a0
0012e0: 42b00800     clr.l      (a0, d0.l)
0012e4: 7000         moveq      #$0, d0
0012e6: 610034e6     bsr.w      $47ce
0012ea: 2017         move.l     (a7), d0
0012ec: 4fef0016     lea.l      $16(a7), a7
0012f0: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
0012f6: 4e5d         unlk       a5
0012f8: 4e75         rts        
0012fa: 4e550000     link.w     a5, #$0
0012fe: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001302: 701f         moveq      #$1f, d0
001304: b0ae800c     cmp.l      -$7ff4(a6), d0
001308: 6640         bne.b      $134a
00130a: 206e855c     movea.l    -$7aa4(a6), a0
00130e: 226f0004     movea.l    $4(a7), a1
001312: 22690010     movea.l    $10(a1), a1
001316: 10290002     move.b     $2(a1), d0
00131a: b0280019     cmp.b      $19(a0), d0
00131e: 672a         beq.b      $134a
001320: 2d578036     move.l     (a7), -$7fca(a6)
001324: 206f0004     movea.l    $4(a7), a0
001328: 2d50803a     move.l     (a0), -$7fc6(a6)
00132c: 2d680004803e move.l     $4(a0), -$7fc2(a6)
001332: 2d6800088042 move.l     $8(a0), -$7fbe(a6)
001338: 2d68000c8046 move.l     $c(a0), -$7fba(a6)
00133e: 2d680010804a move.l     $10(a0), -$7fb6(a6)
001344: 1d7c0001857b move.b     #$1, -$7a85(a6)
00134a: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001350: 4e5d         unlk       a5
001352: 4e75         rts        
001354: 4e550000     link.w     a5, #$0
001358: 48e7c000     movem.l    d0-d1, -(a7)
00135c: 4a2e857b     tst.b      -$7a85(a6)
001360: 6712         beq.b      $1374
001362: 486e803a     pea.l      -$7fc6(a6)
001366: 222e80f2     move.l     -$7f0e(a6), d1
00136a: 202e8036     move.l     -$7fca(a6), d0
00136e: 61002728     bsr.w      $3a98
001372: 588f         addq.l     #$4, a7
001374: 4ced0002fffc movem.l    -$4(a5), d1
00137a: 4e5d         unlk       a5
00137c: 4e75         rts        
00137e: 4e550000     link.w     a5, #$0
001382: 48e7c080     movem.l    d0-d1/a0, -(a7)
001386: 4fefffcc     lea.l      -$34(a7), a7
00138a: 2f6f00340008 move.l     $34(a7), $8(a7)
001390: 4a2f0009     tst.b      $9(a7)
001394: 6612         bne.b      $13a8
001396: 306f003a     movea.w    $3a(a7), a0
00139a: 2208         move.l     a0, d1
00139c: 202f0008     move.l     $8(a7), d0
0013a0: 61001ad6     bsr.w      $2e78
0013a4: 600000a8     bra.w      $144e
0013a8: 1d6f00098101 move.b     $9(a7), -$7eff(a6)
0013ae: 1d6f00088102 move.b     $8(a7), -$7efe(a6)
0013b4: 02aeff0000008102 andi.l     #$ff000000, -$7efe(a6)
0013bc: 2d7c000100008106 move.l     #$10000, -$7efa(a6)
0013c4: 7001         moveq      #$1, d0
0013c6: 2d408122     move.l     d0, -$7ede(a6)
0013ca: 7008         moveq      #$8, d0
0013cc: 2d408126     move.l     d0, -$7eda(a6)
0013d0: 41d7         lea.l      (a7), a0
0013d2: 2d48812a     move.l     a0, -$7ed6(a6)
0013d6: 41ee80fe     lea.l      -$7f02(a6), a0
0013da: 2d488132     move.l     a0, -$7ece(a6)
0013de: 7018         moveq      #$18, d0
0013e0: 2d40812e     move.l     d0, -$7ed2(a6)
0013e4: 306e8022     movea.w    -$7fde(a6), a0
0013e8: 2d48810a     move.l     a0, -$7ef6(a6)
0013ec: 7000         moveq      #$0, d0
0013ee: 302f000a     move.w     $a(a7), d0
0013f2: 2d40810e     move.l     d0, -$7ef2(a6)
0013f6: 306f003a     movea.w    $3a(a7), a0
0013fa: 2d488112     move.l     a0, -$7eee(a6)
0013fe: 486e8122     pea.l      -$7ede(a6)
001402: 222e80f2     move.l     -$7f0e(a6), d1
001406: 203c0000ff05 move.l     #$ff05, d0
00140c: 6100268a     bsr.w      $3a98
001410: 588f         addq.l     #$4, a7
001412: 2f400010     move.l     d0, $10(a7)
001416: 6c08         bge.b      $1420
001418: 70ff         moveq      #$ff, d0
00141a: 2f40000c     move.l     d0, $c(a7)
00141e: 602a         bra.b      $144a
001420: 2f2f0010     move.l     $10(a7), -(a7)
001424: 222e80f2     move.l     -$7f0e(a6), d1
001428: 203c0000ff06 move.l     #$ff06, d0
00142e: 61002668     bsr.w      $3a98
001432: 588f         addq.l     #$4, a7
001434: 2f40000c     move.l     d0, $c(a7)
001438: 6dde         blt.b      $1418
00143a: 2f6f0004000c move.l     $4(a7), $c(a7)
001440: 4aaf0004     tst.l      $4(a7)
001444: 6c04         bge.b      $144a
001446: 2d57800c     move.l     (a7), -$7ff4(a6)
00144a: 202f000c     move.l     $c(a7), d0
00144e: 4fef0034     lea.l      $34(a7), a7
001452: 4ced0100fffc movem.l    -$4(a5), a0
001458: 4e5d         unlk       a5
00145a: 4e75         rts        
00145c: 4e550000     link.w     a5, #$0
001460: 48e78080     movem.l    d0/a0, -(a7)
001464: 6008         bra.b      $146e
001466: 7001         moveq      #$1, d0
001468: 6054         bra.b      $14be
00146a: 7000         moveq      #$0, d0
00146c: 6050         bra.b      $14be
00146e: 2057         movea.l    (a7), a0
001470: 7000         moveq      #$0, d0
001472: 10280009     move.b     $9(a0), d0
001476: 5340         subq.w     #$1, d0
001478: 0c40001a     cmpi.w     #$1a, d0
00147c: 62ec         bhi.b      $146a
00147e: d040         add.w      d0, d0
001480: 303b0006     move.w     $1488(pc, d0.w), d0
001484: 4efb0002     jmp        $1488(pc, d0.w)
001488: ffde         dc.w       $ffde
00148a: ffde         dc.w       $ffde
00148c: ffde         dc.w       $ffde
00148e: ffe2         dc.w       $ffe2
001490: ffe2         dc.w       $ffe2
001492: ffe2         dc.w       $ffe2
001494: ffe2         dc.w       $ffe2
001496: ffe2         dc.w       $ffe2
001498: ffe2         dc.w       $ffe2
00149a: ffe2         dc.w       $ffe2
00149c: ffde         dc.w       $ffde
00149e: ffe2         dc.w       $ffe2
0014a0: ffde         dc.w       $ffde
0014a2: ffe2         dc.w       $ffe2
0014a4: ffe2         dc.w       $ffe2
0014a6: ffe2         dc.w       $ffe2
0014a8: ffe2         dc.w       $ffe2
0014aa: ffe2         dc.w       $ffe2
0014ac: ffde         dc.w       $ffde
0014ae: ffde         dc.w       $ffde
0014b0: ffde         dc.w       $ffde
0014b2: ffe2         dc.w       $ffe2
0014b4: ffe2         dc.w       $ffe2
0014b6: ffe2         dc.w       $ffe2
0014b8: ffe2         dc.w       $ffe2
0014ba: ffde         dc.w       $ffde
0014bc: ffde         dc.w       $ffde
0014be: 4ced0100fffc movem.l    -$4(a5), a0
0014c4: 4e5d         unlk       a5
0014c6: 4e75         rts        
0014c8: 4e550000     link.w     a5, #$0
0014cc: 48e7c000     movem.l    d0-d1, -(a7)
0014d0: 7000         moveq      #$0, d0
0014d2: 102f0003     move.b     $3(a7), d0
0014d6: 2f00         move.l     d0, -(a7)
0014d8: 222e80f2     move.l     -$7f0e(a6), d1
0014dc: 203c0000ff4a move.l     #$ff4a, d0
0014e2: 610025b4     bsr.w      $3a98
0014e6: 588f         addq.l     #$4, a7
0014e8: 4ced0002fffc movem.l    -$4(a5), d1
0014ee: 4e5d         unlk       a5
0014f0: 4e75         rts        
0014f2: 756e         .dc.w      $756e
0014f4: 6465         bcc.b      $155b
0014f6: 7220         moveq      #$20, d1
0014f8: 6465         bcc.b      $155f
0014fa: 7665         moveq      #$65, d3
0014fc: 6c6f         bge.b      $156d
0014fe: 706d         moveq      #$6d, d0
001500: 656e         bcs.b      $1570
001502: 7420         moveq      #$20, d2
001504: 6a61         bpl.b      $1567
001506: 6e20         bgt.b      $1528
001508: 32322031     move.w     $31(a2, d2.w), d1
00150c: 393930007365 move.w     $30007365.l, -(a4)
001512: 7276         moveq      #$76, d1
001514: 6572         bcs.b      $1588
001516: 0030002f633000300030 ori.b      #$2f, $300030(a0, d6.w * 2)
001520: 002f63300025 ori.b      #$30, $25(a7)
001526: 64004e55     bcc.w      $637d
00152a: 000048e7     ori.b      #$e7, d0
00152e: 8000         or.b       d0, d0
001530: 7000         moveq      #$0, d0
001532: 4e5d         unlk       a5
001534: 4e75         rts        
001536: 4e550000     link.w     a5, #$0
00153a: 48e7e080     movem.l    d0-d2/a0, -(a7)
00153e: 2057         movea.l    (a7), a0
001540: 22280014     move.l     $14(a0), d1
001544: 2057         movea.l    (a7), a0
001546: 20280010     move.l     $10(a0), d0
00154a: 2057         movea.l    (a7), a0
00154c: 7400         moveq      #$0, d2
00154e: 3428000a     move.w     $a(a0), d2
001552: e58a         lsl.l      #$2, d2
001554: 41ee85ec     lea.l      -$7a14(a6), a0
001558: 20702800     movea.l    (a0, d2.l), a0
00155c: 4e90         jsr        (a0)
00155e: 2d40854c     move.l     d0, -$7ab4(a6)
001562: 7001         moveq      #$1, d0
001564: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
00156a: 4e5d         unlk       a5
00156c: 4e75         rts        
00156e: 4e550000     link.w     a5, #$0
001572: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001576: 4feffed8     lea.l      -$128(a7), a7
00157a: 7000         moveq      #$0, d0
00157c: 61002798     bsr.w      $3d16
001580: 2f40011c     move.l     d0, $11c(a7)
001584: 202f011c     move.l     $11c(a7), d0
001588: 610027ac     bsr.w      $3d36
00158c: 206f0128     movea.l    $128(a7), a0
001590: 2f280010     move.l     $10(a0), -(a7)
001594: 206f012c     movea.l    $12c(a7), a0
001598: 7000         moveq      #$0, d0
00159a: 10280002     move.b     $2(a0), d0
00159e: 2f00         move.l     d0, -(a7)
0015a0: 2f2e8546     move.l     -$7aba(a6), -(a7)
0015a4: 41fa0c8e     lea.l      $2234(pc), a0
0015a8: 2208         move.l     a0, d1
0015aa: 41ef0010     lea.l      $10(a7), a0
0015ae: 2008         move.l     a0, d0
0015b0: 61002714     bsr.w      $3cc6
0015b4: 4fef000c     lea.l      $c(a7), a7
0015b8: 206f0128     movea.l    $128(a7), a0
0015bc: 303c00ff     move.w     #$ff, d0
0015c0: c068001a     and.w      $1a(a0), d0
0015c4: 48c0         ext.l      d0
0015c6: 2f400118     move.l     d0, $118(a7)
0015ca: 70ff         moveq      #$ff, d0
0015cc: 2f400124     move.l     d0, $124(a7)
0015d0: 70ff         moveq      #$ff, d0
0015d2: 2f400120     move.l     d0, $120(a7)
0015d6: 60000074     bra.w      $164c
0015da: 52af0124     addq.l     #$1, $124(a7)
0015de: 4aaf0120     tst.l      $120(a7)
0015e2: 6d3a         blt.b      $161e
0015e4: 4aaf0120     tst.l      $120(a7)
0015e8: 6634         bne.b      $161e
0015ea: 202f0124     move.l     $124(a7), d0
0015ee: 52af0124     addq.l     #$1, $124(a7)
0015f2: 206f012c     movea.l    $12c(a7), a0
0015f6: 0c30005f0800 cmpi.b     #$5f, (a0, d0.l)
0015fc: 661c         bne.b      $161a
0015fe: 6004         bra.b      $1604
001600: 52af0124     addq.l     #$1, $124(a7)
001604: 206f012c     movea.l    $12c(a7), a0
001608: 202f0124     move.l     $124(a7), d0
00160c: 0c30005f0800 cmpi.b     #$5f, (a0, d0.l)
001612: 66ec         bne.b      $1600
001614: 52af0124     addq.l     #$1, $124(a7)
001618: 6004         bra.b      $161e
00161a: 53af0124     subq.l     #$1, $124(a7)
00161e: 202f0120     move.l     $120(a7), d0
001622: e588         lsl.l      #$2, d0
001624: 41ef00c4     lea.l      $c4(a7), a0
001628: 222f012c     move.l     $12c(a7), d1
00162c: d2af0124     add.l      $124(a7), d1
001630: 21810800     move.l     d1, (a0, d0.l)
001634: 6004         bra.b      $163a
001636: 52af0124     addq.l     #$1, $124(a7)
00163a: 206f012c     movea.l    $12c(a7), a0
00163e: 202f0124     move.l     $124(a7), d0
001642: 4a300800     tst.b      (a0, d0.l)
001646: 66ee         bne.b      $1636
001648: 52af0120     addq.l     #$1, $120(a7)
00164c: 206f012c     movea.l    $12c(a7), a0
001650: 202f0124     move.l     $124(a7), d0
001654: 4a300800     tst.b      (a0, d0.l)
001658: 6600ff80     bne.w      $15da
00165c: 202f0124     move.l     $124(a7), d0
001660: 5280         addq.l     #$1, d0
001662: 206f012c     movea.l    $12c(a7), a0
001666: 4a300800     tst.b      (a0, d0.l)
00166a: 6600ff6e     bne.w      $15da
00166e: 202f0120     move.l     $120(a7), d0
001672: e588         lsl.l      #$2, d0
001674: 41ef00c4     lea.l      $c4(a7), a0
001678: 42b00800     clr.l      (a0, d0.l)
00167c: 52af0124     addq.l     #$1, $124(a7)
001680: 42af0120     clr.l      $120(a7)
001684: 6032         bra.b      $16b8
001686: 202f0120     move.l     $120(a7), d0
00168a: e588         lsl.l      #$2, d0
00168c: 41ef0074     lea.l      $74(a7), a0
001690: 52af0124     addq.l     #$1, $124(a7)
001694: 222f0124     move.l     $124(a7), d1
001698: d2af012c     add.l      $12c(a7), d1
00169c: 21810800     move.l     d1, (a0, d0.l)
0016a0: 6004         bra.b      $16a6
0016a2: 52af0124     addq.l     #$1, $124(a7)
0016a6: 206f012c     movea.l    $12c(a7), a0
0016aa: 202f0124     move.l     $124(a7), d0
0016ae: 4a300800     tst.b      (a0, d0.l)
0016b2: 66ee         bne.b      $16a2
0016b4: 52af0120     addq.l     #$1, $120(a7)
0016b8: 206f012c     movea.l    $12c(a7), a0
0016bc: 202f0124     move.l     $124(a7), d0
0016c0: 4a300800     tst.b      (a0, d0.l)
0016c4: 66c0         bne.b      $1686
0016c6: 202f0124     move.l     $124(a7), d0
0016ca: 5280         addq.l     #$1, d0
0016cc: 206f012c     movea.l    $12c(a7), a0
0016d0: 4a300800     tst.b      (a0, d0.l)
0016d4: 66b0         bne.b      $1686
0016d6: 202f0120     move.l     $120(a7), d0
0016da: e588         lsl.l      #$2, d0
0016dc: 41ef0074     lea.l      $74(a7), a0
0016e0: 42b00800     clr.l      (a0, d0.l)
0016e4: 202f0118     move.l     $118(a7), d0
0016e8: b0af011c     cmp.l      $11c(a7), d0
0016ec: 6f1e         ble.b      $170c
0016ee: 42af0124     clr.l      $124(a7)
0016f2: 600a         bra.b      $16fe
0016f4: 7000         moveq      #$0, d0
0016f6: 6100261e     bsr.w      $3d16
0016fa: 52af0124     addq.l     #$1, $124(a7)
0016fe: 202f0118     move.l     $118(a7), d0
001702: 90af011c     sub.l      $11c(a7), d0
001706: b0af0124     cmp.l      $124(a7), d0
00170a: 6ee8         bgt.b      $16f4
00170c: 42af0124     clr.l      $124(a7)
001710: 600c         bra.b      $171e
001712: 202f0124     move.l     $124(a7), d0
001716: 610025fe     bsr.w      $3d16
00171a: 52af0124     addq.l     #$1, $124(a7)
00171e: 202f0124     move.l     $124(a7), d0
001722: b0af0118     cmp.l      $118(a7), d0
001726: 6dea         blt.b      $1712
001728: 42af0124     clr.l      $124(a7)
00172c: 6032         bra.b      $1760
00172e: 202f0124     move.l     $124(a7), d0
001732: 61002602     bsr.w      $3d36
001736: 2f2f0124     move.l     $124(a7), -(a7)
00173a: 486f0008     pea.l      $8(a7)
00173e: 41fa0aff     lea.l      $223f(pc), a0
001742: 2208         move.l     a0, d1
001744: 41ef002c     lea.l      $2c(a7), a0
001748: 2008         move.l     a0, d0
00174a: 6100257a     bsr.w      $3cc6
00174e: 508f         addq.l     #$8, a7
001750: 7203         moveq      #$3, d1
001752: 41ef0024     lea.l      $24(a7), a0
001756: 2008         move.l     a0, d0
001758: 610013f6     bsr.w      $2b50
00175c: 52af0124     addq.l     #$1, $124(a7)
001760: 202f0124     move.l     $124(a7), d0
001764: b0af0118     cmp.l      $118(a7), d0
001768: 6dc4         blt.b      $172e
00176a: 2f3ca95acd82 move.l     #$a95acd82, -(a7)
001770: 206f012c     movea.l    $12c(a7), a0
001774: 3068001a     movea.w    $1a(a0), a0
001778: 2f08         move.l     a0, -(a7)
00177a: 206f0130     movea.l    $130(a7), a0
00177e: 30680018     movea.w    $18(a0), a0
001782: 2f08         move.l     a0, -(a7)
001784: 206f0134     movea.l    $134(a7), a0
001788: 2f280014     move.l     $14(a0), -(a7)
00178c: 486f0084     pea.l      $84(a7)
001790: 486f00d8     pea.l      $d8(a7)
001794: 222f0144     move.l     $144(a7), d1
001798: 206f0140     movea.l    $140(a7), a0
00179c: 2028000c     move.l     $c(a0), d0
0017a0: e588         lsl.l      #$2, d0
0017a2: 41ee851a     lea.l      -$7ae6(a6), a0
0017a6: 20300800     move.l     (a0, d0.l), d0
0017aa: 610018e0     bsr.w      $308c
0017ae: 4fef0018     lea.l      $18(a7), a7
0017b2: 2d40854c     move.l     d0, -$7ab4(a6)
0017b6: 70ff         moveq      #$ff, d0
0017b8: b0ae854c     cmp.l      -$7ab4(a6), d0
0017bc: 670000c0     beq.w      $187e
0017c0: 206f0128     movea.l    $128(a7), a0
0017c4: 1d680004854c move.b     $4(a0), -$7ab4(a6)
0017ca: 206f0128     movea.l    $128(a7), a0
0017ce: 1d680003854d move.b     $3(a0), -$7ab3(a6)
0017d4: 2eae8030     move.l     -$7fd0(a6), (a7)
0017d8: 6004         bra.b      $17de
0017da: 2057         movea.l    (a7), a0
0017dc: 2e90         move.l     (a0), (a7)
0017de: 2057         movea.l    (a7), a0
0017e0: 4a90         tst.l      (a0)
0017e2: 6708         beq.b      $17ec
0017e4: 2057         movea.l    (a7), a0
0017e6: 4a68000e     tst.w      $e(a0)
0017ea: 66ee         bne.b      $17da
0017ec: 2057         movea.l    (a7), a0
0017ee: 4a68000e     tst.w      $e(a0)
0017f2: 672a         beq.b      $181e
0017f4: 7010         moveq      #$10, d0
0017f6: 61002582     bsr.w      $3d7a
0017fa: 2057         movea.l    (a7), a0
0017fc: 2080         move.l     d0, (a0)
0017fe: 6616         bne.b      $1816
001800: 223c00001001 move.l     #$1001, d1
001806: 306e8022     movea.w    -$7fde(a6), a0
00180a: 2008         move.l     a0, d0
00180c: 61001e80     bsr.w      $368e
001810: 61001666     bsr.w      $2e78
001814: 6008         bra.b      $181e
001816: 2057         movea.l    (a7), a0
001818: 2e90         move.l     (a0), (a7)
00181a: 2057         movea.l    (a7), a0
00181c: 4290         clr.l      (a0)
00181e: 2057         movea.l    (a7), a0
001820: 316e854e000e move.w     -$7ab2(a6), $e(a0)
001826: 206f0128     movea.l    $128(a7), a0
00182a: 2257         movea.l    (a7), a1
00182c: 13680013000c move.b     $13(a0), $c(a1)
001832: 206f0128     movea.l    $128(a7), a0
001836: 2257         movea.l    (a7), a1
001838: 3368001c000a move.w     $1c(a0), $a(a1)
00183e: 206f0128     movea.l    $128(a7), a0
001842: 2257         movea.l    (a7), a1
001844: 1368001f0008 move.b     $1f(a0), $8(a1)
00184a: 2057         movea.l    (a7), a0
00184c: 216f012c0004 move.l     $12c(a7), $4(a0)
001852: 42af012c     clr.l      $12c(a7)
001856: 206f0128     movea.l    $128(a7), a0
00185a: 4a280002     tst.b      $2(a0)
00185e: 6716         beq.b      $1876
001860: 206f0128     movea.l    $128(a7), a0
001864: 2257         movea.l    (a7), a1
001866: 10280002     move.b     $2(a0), d0
00186a: 13400009     move.b     d0, $9(a1)
00186e: 2057         movea.l    (a7), a0
001870: 1140000d     move.b     d0, $d(a0)
001874: 6008         bra.b      $187e
001876: 2057         movea.l    (a7), a0
001878: 117c00a5000d move.b     #$a5, $d(a0)
00187e: 42af0124     clr.l      $124(a7)
001882: 600c         bra.b      $1890
001884: 202f0124     move.l     $124(a7), d0
001888: 610024ac     bsr.w      $3d36
00188c: 52af0124     addq.l     #$1, $124(a7)
001890: 202f0124     move.l     $124(a7), d0
001894: b0af0118     cmp.l      $118(a7), d0
001898: 6dea         blt.b      $1884
00189a: 202f0118     move.l     $118(a7), d0
00189e: b0af011c     cmp.l      $11c(a7), d0
0018a2: 6f06         ble.b      $18aa
0018a4: 202f0118     move.l     $118(a7), d0
0018a8: 6004         bra.b      $18ae
0018aa: 202f011c     move.l     $11c(a7), d0
0018ae: 2f400114     move.l     d0, $114(a7)
0018b2: 2f6f01140124 move.l     $114(a7), $124(a7)
0018b8: 6014         bra.b      $18ce
0018ba: 202f0124     move.l     $124(a7), d0
0018be: 61002456     bsr.w      $3d16
0018c2: 202f0124     move.l     $124(a7), d0
0018c6: 6100246e     bsr.w      $3d36
0018ca: 52af0124     addq.l     #$1, $124(a7)
0018ce: 202f011c     move.l     $11c(a7), d0
0018d2: d0af0118     add.l      $118(a7), d0
0018d6: b0af0124     cmp.l      $124(a7), d0
0018da: 6ede         bgt.b      $18ba
0018dc: 7001         moveq      #$1, d0
0018de: 4fef0128     lea.l      $128(a7), a7
0018e2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0018e8: 4e5d         unlk       a5
0018ea: 4e75         rts        
0018ec: 4e550000     link.w     a5, #$0
0018f0: 48e7e080     movem.l    d0-d2/a0, -(a7)
0018f4: 518f         subq.l     #$8, a7
0018f6: 7012         moveq      #$12, d0
0018f8: d0af0008     add.l      $8(a7), d0
0018fc: 6100251c     bsr.w      $3e1a
001900: 4a80         tst.l      d0
001902: 6606         bne.b      $190a
001904: 4aaf000c     tst.l      $c(a7)
001908: 6716         beq.b      $1920
00190a: 222f000c     move.l     $c(a7), d1
00190e: 202f0008     move.l     $8(a7), d0
001912: 6100f396     bsr.w      $caa
001916: 4a80         tst.l      d0
001918: 6706         beq.b      $1920
00191a: 7000         moveq      #$0, d0
00191c: 60000116     bra.w      $1a34
001920: 206e802c     movea.l    -$7fd4(a6), a0
001924: 5228000a     addq.b     #$1, $a(a0)
001928: 42af0004     clr.l      $4(a7)
00192c: 6004         bra.b      $1932
00192e: 52af0004     addq.l     #$1, $4(a7)
001932: 7028         moveq      #$28, d0
001934: b0af0004     cmp.l      $4(a7), d0
001938: 6f10         ble.b      $194a
00193a: 202f0004     move.l     $4(a7), d0
00193e: e588         lsl.l      #$2, d0
001940: 41ee804e     lea.l      -$7fb2(a6), a0
001944: 4ab00800     tst.l      (a0, d0.l)
001948: 66e4         bne.b      $192e
00194a: 7028         moveq      #$28, d0
00194c: b0af0004     cmp.l      $4(a7), d0
001950: 6e18         bgt.b      $196a
001952: 206e802c     movea.l    -$7fd4(a6), a0
001956: 5328000a     subq.b     #$1, $a(a0)
00195a: 70ff         moveq      #$ff, d0
00195c: 2e80         move.l     d0, (a7)
00195e: 2d7c000000c8800c move.l     #$c8, -$7ff4(a6)
001966: 600000ca     bra.w      $1a32
00196a: 7012         moveq      #$12, d0
00196c: d0af0008     add.l      $8(a7), d0
001970: 610024a8     bsr.w      $3e1a
001974: 4a80         tst.l      d0
001976: 6606         bne.b      $197e
001978: 4aaf000c     tst.l      $c(a7)
00197c: 6746         beq.b      $19c4
00197e: 206f0008     movea.l    $8(a7), a0
001982: 30680010     movea.w    $10(a0), a0
001986: 2208         move.l     a0, d1
001988: 4aaf000c     tst.l      $c(a7)
00198c: 6706         beq.b      $1994
00198e: 206f000c     movea.l    $c(a7), a0
001992: 6008         bra.b      $199c
001994: 206f0008     movea.l    $8(a7), a0
001998: 41e80012     lea.l      $12(a0), a0
00199c: 2008         move.l     a0, d0
00199e: 206f0008     movea.l    $8(a7), a0
0019a2: 7400         moveq      #$0, d2
0019a4: 3428000a     move.w     $a(a0), d2
0019a8: e58a         lsl.l      #$2, d2
0019aa: 41ee85f0     lea.l      -$7a10(a6), a0
0019ae: 20702800     movea.l    (a0, d2.l), a0
0019b2: 4e90         jsr        (a0)
0019b4: 222f0004     move.l     $4(a7), d1
0019b8: e589         lsl.l      #$2, d1
0019ba: 41ee804e     lea.l      -$7fb2(a6), a0
0019be: 21801800     move.l     d0, (a0, d1.l)
0019c2: 6012         bra.b      $19d6
0019c4: 202f0004     move.l     $4(a7), d0
0019c8: e588         lsl.l      #$2, d0
0019ca: 41ee804e     lea.l      -$7fb2(a6), a0
0019ce: 21bc000007ff0800 move.l     #$7ff, (a0, d0.l)
0019d6: 202f0004     move.l     $4(a7), d0
0019da: e588         lsl.l      #$2, d0
0019dc: 41ee804e     lea.l      -$7fb2(a6), a0
0019e0: 72ff         moveq      #$ff, d1
0019e2: b2b00800     cmp.l      (a0, d0.l), d1
0019e6: 661c         bne.b      $1a04
0019e8: 202f0004     move.l     $4(a7), d0
0019ec: e588         lsl.l      #$2, d0
0019ee: 41ee804e     lea.l      -$7fb2(a6), a0
0019f2: 42b00800     clr.l      (a0, d0.l)
0019f6: 206e802c     movea.l    -$7fd4(a6), a0
0019fa: 5328000a     subq.b     #$1, $a(a0)
0019fe: 70ff         moveq      #$ff, d0
001a00: 2e80         move.l     d0, (a7)
001a02: 6014         bra.b      $1a18
001a04: 3f6f00060002 move.w     $6(a7), $2(a7)
001a0a: 1eae8023     move.b     -$7fdd(a6), (a7)
001a0e: 206f0008     movea.l    $8(a7), a0
001a12: 1f6800030001 move.b     $3(a0), $1(a7)
001a18: 206f0008     movea.l    $8(a7), a0
001a1c: 0ca8000300020008 cmpi.l     #$30002, $8(a0)
001a24: 6608         bne.b      $1a2e
001a26: 206e802c     movea.l    -$7fd4(a6), a0
001a2a: 42a80004     clr.l      $4(a0)
001a2e: 2d57854c     move.l     (a7), -$7ab4(a6)
001a32: 7001         moveq      #$1, d0
001a34: 508f         addq.l     #$8, a7
001a36: 4ced0104fff8 movem.l    -$8(a5), d2/a0
001a3c: 4e5d         unlk       a5
001a3e: 4e75         rts        
001a40: 4e550000     link.w     a5, #$0
001a44: 48e7e8c0     movem.l    d0-d2/d4/a0-a1, -(a7)
001a48: 4fefffe0     lea.l      -$20(a7), a7
001a4c: 206f0020     movea.l    $20(a7), a0
001a50: 20280010     move.l     $10(a0), d0
001a54: 5080         addq.l     #$8, d0
001a56: 6100f676     bsr.w      $10ce
001a5a: 4a80         tst.l      d0
001a5c: 6706         beq.b      $1a64
001a5e: 70fe         moveq      #$fe, d0
001a60: 600000ca     bra.w      $1b2c
001a64: 206f0020     movea.l    $20(a7), a0
001a68: 226e8558     movea.l    -$7aa8(a6), a1
001a6c: 2290         move.l     (a0), (a1)
001a6e: 7001         moveq      #$1, d0
001a70: 2f40000c     move.l     d0, $c(a7)
001a74: 2f6e8558001c move.l     -$7aa8(a6), $1c(a7)
001a7a: 206f0020     movea.l    $20(a7), a0
001a7e: 2f280010     move.l     $10(a0), -(a7)
001a82: 202e8558     move.l     -$7aa8(a6), d0
001a86: 5080         addq.l     #$8, d0
001a88: 2200         move.l     d0, d1
001a8a: 206f0024     movea.l    $24(a7), a0
001a8e: 7000         moveq      #$0, d0
001a90: 3028000e     move.w     $e(a0), d0
001a94: e588         lsl.l      #$2, d0
001a96: 41ee804e     lea.l      -$7fb2(a6), a0
001a9a: 20300800     move.l     (a0, d0.l), d0
001a9e: 206f0024     movea.l    $24(a7), a0
001aa2: 7400         moveq      #$0, d2
001aa4: 3428000a     move.w     $a(a0), d2
001aa8: e58a         lsl.l      #$2, d2
001aaa: 41ee85fc     lea.l      -$7a04(a6), a0
001aae: 20702800     movea.l    (a0, d2.l), a0
001ab2: 4e90         jsr        (a0)
001ab4: 588f         addq.l     #$4, a7
001ab6: 2800         move.l     d0, d4
001ab8: 4a84         tst.l      d4
001aba: 6e3e         bgt.b      $1afa
001abc: 206e8558     movea.l    -$7aa8(a6), a0
001ac0: 42a80004     clr.l      $4(a0)
001ac4: 206e8558     movea.l    -$7aa8(a6), a0
001ac8: 08e800040004 bset.b     #$4, $4(a0)
001ace: 7008         moveq      #$8, d0
001ad0: 2f400018     move.l     d0, $18(a7)
001ad4: 486f000c     pea.l      $c(a7)
001ad8: 222e80f2     move.l     -$7f0e(a6), d1
001adc: 203c0000ff0c move.l     #$ff0c, d0
001ae2: 61001fb4     bsr.w      $3a98
001ae6: 588f         addq.l     #$4, a7
001ae8: 4a80         tst.l      d0
001aea: 6c3e         bge.b      $1b2a
001aec: 41ef000c     lea.l      $c(a7), a0
001af0: 2208         move.l     a0, d1
001af2: 203c0000ff0c move.l     #$ff0c, d0
001af8: 602c         bra.b      $1b26
001afa: 2004         move.l     d4, d0
001afc: 5080         addq.l     #$8, d0
001afe: 2f400018     move.l     d0, $18(a7)
001b02: 486f000c     pea.l      $c(a7)
001b06: 222e80f2     move.l     -$7f0e(a6), d1
001b0a: 203c0000ff08 move.l     #$ff08, d0
001b10: 61001f86     bsr.w      $3a98
001b14: 588f         addq.l     #$4, a7
001b16: 4a80         tst.l      d0
001b18: 6c10         bge.b      $1b2a
001b1a: 41ef000c     lea.l      $c(a7), a0
001b1e: 2208         move.l     a0, d1
001b20: 203c0000ff08 move.l     #$ff08, d0
001b26: 6100f7d2     bsr.w      $12fa
001b2a: 7000         moveq      #$0, d0
001b2c: 4fef0020     lea.l      $20(a7), a7
001b30: 4ced0316ffec movem.l    -$14(a5), d1-d2/d4/a0-a1
001b36: 4e5d         unlk       a5
001b38: 4e75         rts        
001b3a: 4e550000     link.w     a5, #$0
001b3e: 48e7e880     movem.l    d0-d2/d4/a0, -(a7)
001b42: 4fefffe4     lea.l      -$1c(a7), a7
001b46: 206f001c     movea.l    $1c(a7), a0
001b4a: 2f280010     move.l     $10(a0), -(a7)
001b4e: 4aaf0024     tst.l      $24(a7)
001b52: 6706         beq.b      $1b5a
001b54: 206f0024     movea.l    $24(a7), a0
001b58: 6008         bra.b      $1b62
001b5a: 206f0020     movea.l    $20(a7), a0
001b5e: 41e80014     lea.l      $14(a0), a0
001b62: 2208         move.l     a0, d1
001b64: 206f0020     movea.l    $20(a7), a0
001b68: 7000         moveq      #$0, d0
001b6a: 3028000e     move.w     $e(a0), d0
001b6e: e588         lsl.l      #$2, d0
001b70: 41ee804e     lea.l      -$7fb2(a6), a0
001b74: 20300800     move.l     (a0, d0.l), d0
001b78: 206f0020     movea.l    $20(a7), a0
001b7c: 7400         moveq      #$0, d2
001b7e: 3428000a     move.w     $a(a0), d2
001b82: e58a         lsl.l      #$2, d2
001b84: 41ee8604     lea.l      -$79fc(a6), a0
001b88: 20702800     movea.l    (a0, d2.l), a0
001b8c: 4e90         jsr        (a0)
001b8e: 588f         addq.l     #$4, a7
001b90: 2d40854c     move.l     d0, -$7ab4(a6)
001b94: 7001         moveq      #$1, d0
001b96: 4fef001c     lea.l      $1c(a7), a7
001b9a: 4ced0114fff4 movem.l    -$c(a5), d2/d4/a0
001ba0: 4e5d         unlk       a5
001ba2: 4e75         rts        
001ba4: 4e550000     link.w     a5, #$0
001ba8: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
001bac: 206e802c     movea.l    -$7fd4(a6), a0
001bb0: 4a28000a     tst.b      $a(a0)
001bb4: 6700007a     beq.w      $1c30
001bb8: 2057         movea.l    (a7), a0
001bba: 7000         moveq      #$0, d0
001bbc: 3028000e     move.w     $e(a0), d0
001bc0: 2a00         move.l     d0, d5
001bc2: e588         lsl.l      #$2, d0
001bc4: 41ee804e     lea.l      -$7fb2(a6), a0
001bc8: 4ab00800     tst.l      (a0, d0.l)
001bcc: 6762         beq.b      $1c30
001bce: 2005         move.l     d5, d0
001bd0: e588         lsl.l      #$2, d0
001bd2: 41ee804e     lea.l      -$7fb2(a6), a0
001bd6: 0cb0000007ff0800 cmpi.l     #$7ff, (a0, d0.l)
001bde: 6614         bne.b      $1bf4
001be0: 2005         move.l     d5, d0
001be2: e588         lsl.l      #$2, d0
001be4: 41ee804e     lea.l      -$7fb2(a6), a0
001be8: 7200         moveq      #$0, d1
001bea: 21810800     move.l     d1, (a0, d0.l)
001bee: 2d41854c     move.l     d1, -$7ab4(a6)
001bf2: 6030         bra.b      $1c24
001bf4: 2005         move.l     d5, d0
001bf6: e588         lsl.l      #$2, d0
001bf8: 41ee804e     lea.l      -$7fb2(a6), a0
001bfc: 20300800     move.l     (a0, d0.l), d0
001c00: 2057         movea.l    (a7), a0
001c02: 7200         moveq      #$0, d1
001c04: 3228000a     move.w     $a(a0), d1
001c08: e589         lsl.l      #$2, d1
001c0a: 41ee860c     lea.l      -$79f4(a6), a0
001c0e: 20701800     movea.l    (a0, d1.l), a0
001c12: 4e90         jsr        (a0)
001c14: 2d40854c     move.l     d0, -$7ab4(a6)
001c18: 2005         move.l     d5, d0
001c1a: e588         lsl.l      #$2, d0
001c1c: 41ee804e     lea.l      -$7fb2(a6), a0
001c20: 42b00800     clr.l      (a0, d0.l)
001c24: 206e802c     movea.l    -$7fd4(a6), a0
001c28: 5328000a     subq.b     #$1, $a(a0)
001c2c: 7001         moveq      #$1, d0
001c2e: 600a         bra.b      $1c3a
001c30: 2d7c000000c9854c move.l     #$c9, -$7ab4(a6)
001c38: 70ff         moveq      #$ff, d0
001c3a: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
001c40: 4e5d         unlk       a5
001c42: 4e75         rts        
001c44: 4e550000     link.w     a5, #$0
001c48: 48e7e080     movem.l    d0-d2/a0, -(a7)
001c4c: 2057         movea.l    (a7), a0
001c4e: 2f280014     move.l     $14(a0), -(a7)
001c52: 206f0004     movea.l    $4(a7), a0
001c56: 7000         moveq      #$0, d0
001c58: 30280012     move.w     $12(a0), d0
001c5c: e588         lsl.l      #$2, d0
001c5e: 41ee804e     lea.l      -$7fb2(a6), a0
001c62: 22300800     move.l     (a0, d0.l), d1
001c66: 206f0004     movea.l    $4(a7), a0
001c6a: 2028000c     move.l     $c(a0), d0
001c6e: 206f0004     movea.l    $4(a7), a0
001c72: 7400         moveq      #$0, d2
001c74: 3428000a     move.w     $a(a0), d2
001c78: e58a         lsl.l      #$2, d2
001c7a: 41ee8618     lea.l      -$79e8(a6), a0
001c7e: 20702800     movea.l    (a0, d2.l), a0
001c82: 4e90         jsr        (a0)
001c84: 588f         addq.l     #$4, a7
001c86: 2d40854c     move.l     d0, -$7ab4(a6)
001c8a: 7001         moveq      #$1, d0
001c8c: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
001c92: 4e5d         unlk       a5
001c94: 4e75         rts        
001c96: 4e550000     link.w     a5, #$0
001c9a: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
001c9e: 4fefffe4     lea.l      -$1c(a7), a7
001ca2: 206f001c     movea.l    $1c(a7), a0
001ca6: 20280014     move.l     $14(a0), d0
001caa: 5080         addq.l     #$8, d0
001cac: 6100f420     bsr.w      $10ce
001cb0: 4a80         tst.l      d0
001cb2: 6662         bne.b      $1d16
001cb4: 206f001c     movea.l    $1c(a7), a0
001cb8: 226e8558     movea.l    -$7aa8(a6), a1
001cbc: 2290         move.l     (a0), (a1)
001cbe: 206f001c     movea.l    $1c(a7), a0
001cc2: 2f280018     move.l     $18(a0), -(a7)
001cc6: 206f0020     movea.l    $20(a7), a0
001cca: 2f280014     move.l     $14(a0), -(a7)
001cce: 202e8558     move.l     -$7aa8(a6), d0
001cd2: 5080         addq.l     #$8, d0
001cd4: 2f00         move.l     d0, -(a7)
001cd6: 206f0028     movea.l    $28(a7), a0
001cda: 7000         moveq      #$0, d0
001cdc: 30280012     move.w     $12(a0), d0
001ce0: e588         lsl.l      #$2, d0
001ce2: 41ee804e     lea.l      -$7fb2(a6), a0
001ce6: 22300800     move.l     (a0, d0.l), d1
001cea: 206f0028     movea.l    $28(a7), a0
001cee: 2028000c     move.l     $c(a0), d0
001cf2: 206f0028     movea.l    $28(a7), a0
001cf6: 7400         moveq      #$0, d2
001cf8: 3428000a     move.w     $a(a0), d2
001cfc: e58a         lsl.l      #$2, d2
001cfe: 41ee8620     lea.l      -$79e0(a6), a0
001d02: 20702800     movea.l    (a0, d2.l), a0
001d06: 4e90         jsr        (a0)
001d08: 4fef000c     lea.l      $c(a7), a7
001d0c: 2d40854c     move.l     d0, -$7ab4(a6)
001d10: 72ff         moveq      #$ff, d1
001d12: b280         cmp.l      d0, d1
001d14: 6604         bne.b      $1d1a
001d16: 70fe         moveq      #$fe, d0
001d18: 6044         bra.b      $1d5e
001d1a: 7001         moveq      #$1, d0
001d1c: 2f400008     move.l     d0, $8(a7)
001d20: 2f6e85580018 move.l     -$7aa8(a6), $18(a7)
001d26: 206f001c     movea.l    $1c(a7), a0
001d2a: 20280014     move.l     $14(a0), d0
001d2e: 5080         addq.l     #$8, d0
001d30: 2f400014     move.l     d0, $14(a7)
001d34: 486f0008     pea.l      $8(a7)
001d38: 222e80f2     move.l     -$7f0e(a6), d1
001d3c: 203c0000ff08 move.l     #$ff08, d0
001d42: 61001d54     bsr.w      $3a98
001d46: 588f         addq.l     #$4, a7
001d48: 4a80         tst.l      d0
001d4a: 6c10         bge.b      $1d5c
001d4c: 41ef0008     lea.l      $8(a7), a0
001d50: 2208         move.l     a0, d1
001d52: 203c0000ff08 move.l     #$ff08, d0
001d58: 6100f5a0     bsr.w      $12fa
001d5c: 7000         moveq      #$0, d0
001d5e: 4fef001c     lea.l      $1c(a7), a7
001d62: 4ced0306fff0 movem.l    -$10(a5), d1-d2/a0-a1
001d68: 4e5d         unlk       a5
001d6a: 4e75         rts        
001d6c: 4e550000     link.w     a5, #$0
001d70: 48e7e880     movem.l    d0-d2/d4/a0, -(a7)
001d74: 4fefffe4     lea.l      -$1c(a7), a7
001d78: 206f001c     movea.l    $1c(a7), a0
001d7c: 2f280014     move.l     $14(a0), -(a7)
001d80: 4aaf0024     tst.l      $24(a7)
001d84: 6706         beq.b      $1d8c
001d86: 206f0024     movea.l    $24(a7), a0
001d8a: 6008         bra.b      $1d94
001d8c: 206f0020     movea.l    $20(a7), a0
001d90: 41e80018     lea.l      $18(a0), a0
001d94: 4850         pea.l      (a0)
001d96: 206f0024     movea.l    $24(a7), a0
001d9a: 7000         moveq      #$0, d0
001d9c: 30280012     move.w     $12(a0), d0
001da0: e588         lsl.l      #$2, d0
001da2: 41ee804e     lea.l      -$7fb2(a6), a0
001da6: 22300800     move.l     (a0, d0.l), d1
001daa: 206f0024     movea.l    $24(a7), a0
001dae: 2028000c     move.l     $c(a0), d0
001db2: 206f0024     movea.l    $24(a7), a0
001db6: 7400         moveq      #$0, d2
001db8: 3428000a     move.w     $a(a0), d2
001dbc: e58a         lsl.l      #$2, d2
001dbe: 41ee8624     lea.l      -$79dc(a6), a0
001dc2: 20702800     movea.l    (a0, d2.l), a0
001dc6: 4e90         jsr        (a0)
001dc8: 508f         addq.l     #$8, a7
001dca: 2d40854c     move.l     d0, -$7ab4(a6)
001dce: 7001         moveq      #$1, d0
001dd0: 4fef001c     lea.l      $1c(a7), a7
001dd4: 4ced0114fff4 movem.l    -$c(a5), d2/d4/a0
001dda: 4e5d         unlk       a5
001ddc: 4e75         rts        
001dde: 4e550000     link.w     a5, #$0
001de2: 48e78080     movem.l    d0/a0, -(a7)
001de6: 6008         bra.b      $1df0
001de8: 70ff         moveq      #$ff, d0
001dea: 2d40854c     move.l     d0, -$7ab4(a6)
001dee: 6010         bra.b      $1e00
001df0: 2057         movea.l    (a7), a0
001df2: 20280008     move.l     $8(a0), d0
001df6: 0c80000a0000 cmpi.l     #$a0000, d0
001dfc: 67ea         beq.b      $1de8
001dfe: 60e8         bra.b      $1de8
001e00: 7001         moveq      #$1, d0
001e02: 4ced0100fffc movem.l    -$4(a5), a0
001e08: 4e5d         unlk       a5
001e0a: 4e75         rts        
001e0c: 4e550000     link.w     a5, #$0
001e10: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
001e14: 4fefffbc     lea.l      -$44(a7), a7
001e18: 222f0048     move.l     $48(a7), d1
001e1c: 202f0044     move.l     $44(a7), d0
001e20: 6100ee88     bsr.w      $caa
001e24: 4a80         tst.l      d0
001e26: 6706         beq.b      $1e2e
001e28: 7000         moveq      #$0, d0
001e2a: 600000b8     bra.w      $1ee4
001e2e: 4aaf0048     tst.l      $48(a7)
001e32: 6706         beq.b      $1e3a
001e34: 206f0048     movea.l    $48(a7), a0
001e38: 6008         bra.b      $1e42
001e3a: 206f0044     movea.l    $44(a7), a0
001e3e: 41e80012     lea.l      $12(a0), a0
001e42: 2008         move.l     a0, d0
001e44: 206f0044     movea.l    $44(a7), a0
001e48: 7200         moveq      #$0, d1
001e4a: 3228000a     move.w     $a(a0), d1
001e4e: e389         lsl.l      #$1, d1
001e50: 206f0044     movea.l    $44(a7), a0
001e54: 7404         moveq      #$4, d2
001e56: c4680010     and.w      $10(a0), d2
001e5a: 48c2         ext.l      d2
001e5c: e482         asr.l      #$2, d2
001e5e: 8282         or.l       d2, d1
001e60: e589         lsl.l      #$2, d1
001e62: 41ee8628     lea.l      -$79d8(a6), a0
001e66: 20701800     movea.l    (a0, d1.l), a0
001e6a: 4e90         jsr        (a0)
001e6c: 2d40854c     move.l     d0, -$7ab4(a6)
001e70: 206f0044     movea.l    $44(a7), a0
001e74: 0ca8000b00000008 cmpi.l     #$b0000, $8(a0)
001e7c: 6664         bne.b      $1ee2
001e7e: 206e802c     movea.l    -$7fd4(a6), a0
001e82: 226f0044     movea.l    $44(a7), a1
001e86: 13680004000c move.b     $4(a0), $c(a1)
001e8c: 601a         bra.b      $1ea8
001e8e: 206f0024     movea.l    $24(a7), a0
001e92: 7000         moveq      #$0, d0
001e94: 10280004     move.b     $4(a0), d0
001e98: 0c4000ff     cmpi.w     #$ff, d0
001e9c: 671c         beq.b      $1eba
001e9e: 206f0024     movea.l    $24(a7), a0
001ea2: 117c00ff0004 move.b     #$ff, $4(a0)
001ea8: 222e802c     move.l     -$7fd4(a6), d1
001eac: 202f0044     move.l     $44(a7), d0
001eb0: 6100ecb4     bsr.w      $b66
001eb4: 2f400024     move.l     d0, $24(a7)
001eb8: 66d4         bne.b      $1e8e
001eba: 4aae854c     tst.l      -$7ab4(a6)
001ebe: 661a         bne.b      $1eda
001ec0: 206e802c     movea.l    -$7fd4(a6), a0
001ec4: 116e80230004 move.b     -$7fdd(a6), $4(a0)
001eca: 426e854c     clr.w      -$7ab4(a6)
001ece: 1d6e8023854f move.b     -$7fdd(a6), -$7ab1(a6)
001ed4: 1d6e8023854e move.b     -$7fdd(a6), -$7ab2(a6)
001eda: 206e802c     movea.l    -$7fd4(a6), a0
001ede: 5228000a     addq.b     #$1, $a(a0)
001ee2: 7001         moveq      #$1, d0
001ee4: 4fef0044     lea.l      $44(a7), a7
001ee8: 4ced0704fff0 movem.l    -$10(a5), d2/a0-a2
001eee: 4e5d         unlk       a5
001ef0: 4e75         rts        
001ef2: 4e550000     link.w     a5, #$0
001ef6: 48e7c080     movem.l    d0-d1/a0, -(a7)
001efa: 42a7         clr.l      -(a7)
001efc: 206f0004     movea.l    $4(a7), a0
001f00: 22280010     move.l     $10(a0), d1
001f04: 206f0004     movea.l    $4(a7), a0
001f08: 7000         moveq      #$0, d0
001f0a: 3028000e     move.w     $e(a0), d0
001f0e: e588         lsl.l      #$2, d0
001f10: 41ee804e     lea.l      -$7fb2(a6), a0
001f14: 20300800     move.l     (a0, d0.l), d0
001f18: 61001e10     bsr.w      $3d2a
001f1c: 588f         addq.l     #$4, a7
001f1e: 2d40854c     move.l     d0, -$7ab4(a6)
001f22: 7001         moveq      #$1, d0
001f24: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001f2a: 4e5d         unlk       a5
001f2c: 4e75         rts        
001f2e: 4e550000     link.w     a5, #$0
001f32: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001f36: 222f0004     move.l     $4(a7), d1
001f3a: 2017         move.l     (a7), d0
001f3c: 6100ed6c     bsr.w      $caa
001f40: 4a80         tst.l      d0
001f42: 6704         beq.b      $1f48
001f44: 7000         moveq      #$0, d0
001f46: 6058         bra.b      $1fa0
001f48: 7018         moveq      #$18, d0
001f4a: d097         add.l      (a7), d0
001f4c: 61001ecc     bsr.w      $3e1a
001f50: 4a80         tst.l      d0
001f52: 6708         beq.b      $1f5c
001f54: 7018         moveq      #$18, d0
001f56: d097         add.l      (a7), d0
001f58: 2440         movea.l    d0, a2
001f5a: 6032         bra.b      $1f8e
001f5c: 246f0004     movea.l    $4(a7), a2
001f60: 602c         bra.b      $1f8e
001f62: 2057         movea.l    (a7), a0
001f64: 2f280014     move.l     $14(a0), -(a7)
001f68: 206f0004     movea.l    $4(a7), a0
001f6c: 30680012     movea.w    $12(a0), a0
001f70: 2f08         move.l     a0, -(a7)
001f72: 206f0008     movea.l    $8(a7), a0
001f76: 30680010     movea.w    $10(a0), a0
001f7a: 2208         move.l     a0, d1
001f7c: 200a         move.l     a2, d0
001f7e: 61001e22     bsr.w      $3da2
001f82: 508f         addq.l     #$8, a7
001f84: 6002         bra.b      $1f88
001f86: 70ff         moveq      #$ff, d0
001f88: 2d40854c     move.l     d0, -$7ab4(a6)
001f8c: 6010         bra.b      $1f9e
001f8e: 2057         movea.l    (a7), a0
001f90: 20280008     move.l     $8(a0), d0
001f94: 0c80000d0000 cmpi.l     #$d0000, d0
001f9a: 67c6         beq.b      $1f62
001f9c: 60e8         bra.b      $1f86
001f9e: 7001         moveq      #$1, d0
001fa0: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001fa6: 4e5d         unlk       a5
001fa8: 4e75         rts        
001faa: 4e550000     link.w     a5, #$0
001fae: 48e7c080     movem.l    d0-d1/a0, -(a7)
001fb2: 518f         subq.l     #$8, a7
001fb4: 7018         moveq      #$18, d0
001fb6: d0af0008     add.l      $8(a7), d0
001fba: 61001e5e     bsr.w      $3e1a
001fbe: 4a80         tst.l      d0
001fc0: 6606         bne.b      $1fc8
001fc2: 4aaf000c     tst.l      $c(a7)
001fc6: 6716         beq.b      $1fde
001fc8: 222f000c     move.l     $c(a7), d1
001fcc: 202f0008     move.l     $8(a7), d0
001fd0: 6100ecd8     bsr.w      $caa
001fd4: 4a80         tst.l      d0
001fd6: 6706         beq.b      $1fde
001fd8: 7000         moveq      #$0, d0
001fda: 60000104     bra.w      $20e0
001fde: 206e802c     movea.l    -$7fd4(a6), a0
001fe2: 5228000a     addq.b     #$1, $a(a0)
001fe6: 42af0004     clr.l      $4(a7)
001fea: 6004         bra.b      $1ff0
001fec: 52af0004     addq.l     #$1, $4(a7)
001ff0: 7028         moveq      #$28, d0
001ff2: b0af0004     cmp.l      $4(a7), d0
001ff6: 6f10         ble.b      $2008
001ff8: 202f0004     move.l     $4(a7), d0
001ffc: e588         lsl.l      #$2, d0
001ffe: 41ee804e     lea.l      -$7fb2(a6), a0
002002: 4ab00800     tst.l      (a0, d0.l)
002006: 66e4         bne.b      $1fec
002008: 7028         moveq      #$28, d0
00200a: b0af0004     cmp.l      $4(a7), d0
00200e: 6618         bne.b      $2028
002010: 206e802c     movea.l    -$7fd4(a6), a0
002014: 5328000a     subq.b     #$1, $a(a0)
002018: 70ff         moveq      #$ff, d0
00201a: 2e80         move.l     d0, (a7)
00201c: 2d7c000000c8800c move.l     #$c8, -$7ff4(a6)
002024: 600000b8     bra.w      $20de
002028: 7018         moveq      #$18, d0
00202a: d0af0008     add.l      $8(a7), d0
00202e: 61001dea     bsr.w      $3e1a
002032: 4a80         tst.l      d0
002034: 6606         bne.b      $203c
002036: 4aaf000c     tst.l      $c(a7)
00203a: 674a         beq.b      $2086
00203c: 206f0008     movea.l    $8(a7), a0
002040: 2f280014     move.l     $14(a0), -(a7)
002044: 206f000c     movea.l    $c(a7), a0
002048: 30680012     movea.w    $12(a0), a0
00204c: 2f08         move.l     a0, -(a7)
00204e: 206f0010     movea.l    $10(a7), a0
002052: 30680010     movea.w    $10(a0), a0
002056: 2208         move.l     a0, d1
002058: 4aaf0014     tst.l      $14(a7)
00205c: 6706         beq.b      $2064
00205e: 206f0014     movea.l    $14(a7), a0
002062: 6008         bra.b      $206c
002064: 206f0010     movea.l    $10(a7), a0
002068: 41e80018     lea.l      $18(a0), a0
00206c: 2008         move.l     a0, d0
00206e: 206e8638     movea.l    -$79c8(a6), a0
002072: 4e90         jsr        (a0)
002074: 508f         addq.l     #$8, a7
002076: 222f0004     move.l     $4(a7), d1
00207a: e589         lsl.l      #$2, d1
00207c: 41ee804e     lea.l      -$7fb2(a6), a0
002080: 21801800     move.l     d0, (a0, d1.l)
002084: 6012         bra.b      $2098
002086: 202f0004     move.l     $4(a7), d0
00208a: e588         lsl.l      #$2, d0
00208c: 41ee804e     lea.l      -$7fb2(a6), a0
002090: 21bc000007ff0800 move.l     #$7ff, (a0, d0.l)
002098: 202f0004     move.l     $4(a7), d0
00209c: e588         lsl.l      #$2, d0
00209e: 41ee804e     lea.l      -$7fb2(a6), a0
0020a2: 72ff         moveq      #$ff, d1
0020a4: b2b00800     cmp.l      (a0, d0.l), d1
0020a8: 661c         bne.b      $20c6
0020aa: 202f0004     move.l     $4(a7), d0
0020ae: e588         lsl.l      #$2, d0
0020b0: 41ee804e     lea.l      -$7fb2(a6), a0
0020b4: 42b00800     clr.l      (a0, d0.l)
0020b8: 206e802c     movea.l    -$7fd4(a6), a0
0020bc: 5328000a     subq.b     #$1, $a(a0)
0020c0: 70ff         moveq      #$ff, d0
0020c2: 2e80         move.l     d0, (a7)
0020c4: 6014         bra.b      $20da
0020c6: 3f6f00060002 move.w     $6(a7), $2(a7)
0020cc: 1eae8023     move.b     -$7fdd(a6), (a7)
0020d0: 206f0008     movea.l    $8(a7), a0
0020d4: 1f6800030001 move.b     $3(a0), $1(a7)
0020da: 2d57854c     move.l     (a7), -$7ab4(a6)
0020de: 7001         moveq      #$1, d0
0020e0: 508f         addq.l     #$8, a7
0020e2: 4ced0100fffc movem.l    -$4(a5), a0
0020e8: 4e5d         unlk       a5
0020ea: 4e75         rts        
0020ec: 4e550000     link.w     a5, #$0
0020f0: 48e7e8c0     movem.l    d0-d2/d4/a0-a1, -(a7)
0020f4: 4fefffd8     lea.l      -$28(a7), a7
0020f8: 206f0028     movea.l    $28(a7), a0
0020fc: 20280010     move.l     $10(a0), d0
002100: e188         lsl.l      #$8, d0
002102: 5080         addq.l     #$8, d0
002104: 6100efc8     bsr.w      $10ce
002108: 4a80         tst.l      d0
00210a: 6670         bne.b      $217c
00210c: 206f0028     movea.l    $28(a7), a0
002110: 226e8558     movea.l    -$7aa8(a6), a1
002114: 2290         move.l     (a0), (a1)
002116: 7001         moveq      #$1, d0
002118: 2f400014     move.l     d0, $14(a7)
00211c: 2f6e85580024 move.l     -$7aa8(a6), $24(a7)
002122: 202e8558     move.l     -$7aa8(a6), d0
002126: 5080         addq.l     #$8, d0
002128: 2e80         move.l     d0, (a7)
00212a: 206f0028     movea.l    $28(a7), a0
00212e: 2f6800140008 move.l     $14(a0), $8(a7)
002134: 206f0028     movea.l    $28(a7), a0
002138: 2f6800100004 move.l     $10(a0), $4(a7)
00213e: 4857         pea.l      (a7)
002140: 206f002c     movea.l    $2c(a7), a0
002144: 7000         moveq      #$0, d0
002146: 3028000e     move.w     $e(a0), d0
00214a: e588         lsl.l      #$2, d0
00214c: 41ee804e     lea.l      -$7fb2(a6), a0
002150: 22300800     move.l     (a0, d0.l), d1
002154: 203c0000ff21 move.l     #$ff21, d0
00215a: 206f002c     movea.l    $2c(a7), a0
00215e: 7400         moveq      #$0, d2
002160: 3428000a     move.w     $a(a0), d2
002164: e58a         lsl.l      #$2, d2
002166: 41ee863c     lea.l      -$79c4(a6), a0
00216a: 20702800     movea.l    (a0, d2.l), a0
00216e: 4e90         jsr        (a0)
002170: 588f         addq.l     #$4, a7
002172: 2d40854c     move.l     d0, -$7ab4(a6)
002176: 4aae854c     tst.l      -$7ab4(a6)
00217a: 6c04         bge.b      $2180
00217c: 70fe         moveq      #$fe, d0
00217e: 603a         bra.b      $21ba
002180: 206f0028     movea.l    $28(a7), a0
002184: 20280010     move.l     $10(a0), d0
002188: e188         lsl.l      #$8, d0
00218a: 5080         addq.l     #$8, d0
00218c: 2f400020     move.l     d0, $20(a7)
002190: 486f0014     pea.l      $14(a7)
002194: 222e80f2     move.l     -$7f0e(a6), d1
002198: 203c0000ff08 move.l     #$ff08, d0
00219e: 610018f8     bsr.w      $3a98
0021a2: 588f         addq.l     #$4, a7
0021a4: 4a80         tst.l      d0
0021a6: 6c10         bge.b      $21b8
0021a8: 41ef0014     lea.l      $14(a7), a0
0021ac: 2208         move.l     a0, d1
0021ae: 203c0000ff08 move.l     #$ff08, d0
0021b4: 6100f144     bsr.w      $12fa
0021b8: 7000         moveq      #$0, d0
0021ba: 4fef0028     lea.l      $28(a7), a7
0021be: 4ced0316ffec movem.l    -$14(a5), d1-d2/d4/a0-a1
0021c4: 4e5d         unlk       a5
0021c6: 4e75         rts        
0021c8: 4e550000     link.w     a5, #$0
0021cc: 48e7e080     movem.l    d0-d2/a0, -(a7)
0021d0: 4feffff4     lea.l      -$c(a7), a7
0021d4: 2eaf0010     move.l     $10(a7), (a7)
0021d8: 206f000c     movea.l    $c(a7), a0
0021dc: 2f6800100004 move.l     $10(a0), $4(a7)
0021e2: 206f000c     movea.l    $c(a7), a0
0021e6: 2f6800140008 move.l     $14(a0), $8(a7)
0021ec: 4857         pea.l      (a7)
0021ee: 206f0010     movea.l    $10(a7), a0
0021f2: 7000         moveq      #$0, d0
0021f4: 3028000e     move.w     $e(a0), d0
0021f8: e588         lsl.l      #$2, d0
0021fa: 41ee804e     lea.l      -$7fb2(a6), a0
0021fe: 22300800     move.l     (a0, d0.l), d1
002202: 203c0000ff21 move.l     #$ff21, d0
002208: 206f0010     movea.l    $10(a7), a0
00220c: 7400         moveq      #$0, d2
00220e: 3428000a     move.w     $a(a0), d2
002212: e58a         lsl.l      #$2, d2
002214: 41ee8640     lea.l      -$79c0(a6), a0
002218: 20702800     movea.l    (a0, d2.l), a0
00221c: 4e90         jsr        (a0)
00221e: 588f         addq.l     #$4, a7
002220: 2d40854c     move.l     d0, -$7ab4(a6)
002224: 7001         moveq      #$1, d0
002226: 4fef000c     lea.l      $c(a7), a7
00222a: 4ced0104fff8 movem.l    -$8(a5), d2/a0
002230: 4e5d         unlk       a5
002232: 4e75         rts        
002234: 25732f402564 move.l     (a3, invalid.w), $2564(a2)
00223a: 2c25         move.l     -(a5), d6
00223c: 642c         bcc.b      $226a
00223e: 00257325     ori.b      #$25, -(a5)
002242: 64004e55     bcc.w      $7099
002246: 000048e7     ori.b      #$e7, d0
00224a: c0c0         mulu.w     d0, d0
00224c: 4fefffec     lea.l      -$14(a7), a7
002250: 206f0014     movea.l    $14(a7), a0
002254: 7005         moveq      #$5, d0
002256: b0a80028     cmp.l      $28(a0), d0
00225a: 6f0a         ble.b      $2266
00225c: 206f0014     movea.l    $14(a7), a0
002260: 08e800070034 bset.b     #$7, $34(a0)
002266: 206f0014     movea.l    $14(a7), a0
00226a: 20280028     move.l     $28(a0), d0
00226e: 5380         subq.l     #$1, d0
002270: 6604         bne.b      $2276
002272: 70ff         moveq      #$ff, d0
002274: 6050         bra.b      $22c6
002276: 206f0014     movea.l    $14(a7), a0
00227a: 53a80028     subq.l     #$1, $28(a0)
00227e: 206f0014     movea.l    $14(a7), a0
002282: 2f680008000c move.l     $8(a0), $c(a7)
002288: 206f0014     movea.l    $14(a7), a0
00228c: 20680008     movea.l    $8(a0), a0
002290: 226f0014     movea.l    $14(a7), a1
002294: 2368000c0008 move.l     $c(a0), $8(a1)
00229a: 48780024     pea.l      $24.w
00229e: 222f001c     move.l     $1c(a7), d1
0022a2: 7010         moveq      #$10, d0
0022a4: d0af0010     add.l      $10(a7), d0
0022a8: 61001e32     bsr.w      $40dc
0022ac: 588f         addq.l     #$4, a7
0022ae: 206f0014     movea.l    $14(a7), a0
0022b2: 52a8002c     addq.l     #$1, $2c(a0)
0022b6: 4aaf002c     tst.l      $2c(a7)
0022ba: 6708         beq.b      $22c4
0022bc: 206f000c     movea.l    $c(a7), a0
0022c0: 20af002c     move.l     $2c(a7), (a0)
0022c4: 7000         moveq      #$0, d0
0022c6: 4fef0014     lea.l      $14(a7), a7
0022ca: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0022d0: 4e5d         unlk       a5
0022d2: 4e75         rts        
0022d4: 4e550000     link.w     a5, #$0
0022d8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0022dc: 4fefffe4     lea.l      -$1c(a7), a7
0022e0: 202f001c     move.l     $1c(a7), d0
0022e4: 7234         moveq      #$34, d1
0022e6: 61001eac     bsr.w      $4194
0022ea: 5880         addq.l     #$4, d0
0022ec: 2f400018     move.l     d0, $18(a7)
0022f0: 202f001c     move.l     $1c(a7), d0
0022f4: e788         lsl.l      #$3, d0
0022f6: 5080         addq.l     #$8, d0
0022f8: 2f400014     move.l     d0, $14(a7)
0022fc: 7036         moveq      #$36, d0
0022fe: 61001a7a     bsr.w      $3d7a
002302: 2f400008     move.l     d0, $8(a7)
002306: 673a         beq.b      $2342
002308: 202f0018     move.l     $18(a7), d0
00230c: 61001a6c     bsr.w      $3d7a
002310: 206f0008     movea.l    $8(a7), a0
002314: 2080         move.l     d0, (a0)
002316: 6722         beq.b      $233a
002318: 202f0014     move.l     $14(a7), d0
00231c: 61001a5c     bsr.w      $3d7a
002320: 206f0008     movea.l    $8(a7), a0
002324: 21400018     move.l     d0, $18(a0)
002328: 206f0008     movea.l    $8(a7), a0
00232c: 21400014     move.l     d0, $14(a0)
002330: 206f0008     movea.l    $8(a7), a0
002334: 21400010     move.l     d0, $10(a0)
002338: 660e         bne.b      $2348
00233a: 202f0008     move.l     $8(a7), d0
00233e: 61001a46     bsr.w      $3d86
002342: 7000         moveq      #$0, d0
002344: 600000e0     bra.w      $2426
002348: 206f0008     movea.l    $8(a7), a0
00234c: 2050         movea.l    (a0), a0
00234e: 4290         clr.l      (a0)
002350: 206f0008     movea.l    $8(a7), a0
002354: 2010         move.l     (a0), d0
002356: 5880         addq.l     #$4, d0
002358: 2e80         move.l     d0, (a7)
00235a: 2f400004     move.l     d0, $4(a7)
00235e: 7001         moveq      #$1, d0
002360: 2f40000c     move.l     d0, $c(a7)
002364: 6018         bra.b      $237e
002366: 2057         movea.l    (a7), a0
002368: 4290         clr.l      (a0)
00236a: 7034         moveq      #$34, d0
00236c: d097         add.l      (a7), d0
00236e: 2057         movea.l    (a7), a0
002370: 2140000c     move.l     d0, $c(a0)
002374: 069700000034 addi.l     #$34, (a7)
00237a: 52af000c     addq.l     #$1, $c(a7)
00237e: 202f000c     move.l     $c(a7), d0
002382: b0af001c     cmp.l      $1c(a7), d0
002386: 6dde         blt.b      $2366
002388: 2057         movea.l    (a7), a0
00238a: 4290         clr.l      (a0)
00238c: 2057         movea.l    (a7), a0
00238e: 42a8000c     clr.l      $c(a0)
002392: 206f0008     movea.l    $8(a7), a0
002396: 216f00040004 move.l     $4(a7), $4(a0)
00239c: 206f0008     movea.l    $8(a7), a0
0023a0: 216f00040008 move.l     $4(a7), $8(a0)
0023a6: 206f0008     movea.l    $8(a7), a0
0023aa: 2157000c     move.l     (a7), $c(a0)
0023ae: 206f0008     movea.l    $8(a7), a0
0023b2: 20280010     move.l     $10(a0), d0
0023b6: 5080         addq.l     #$8, d0
0023b8: 206f0008     movea.l    $8(a7), a0
0023bc: 2140001c     move.l     d0, $1c(a0)
0023c0: 206f0008     movea.l    $8(a7), a0
0023c4: 20280010     move.l     $10(a0), d0
0023c8: 5080         addq.l     #$8, d0
0023ca: 206f0008     movea.l    $8(a7), a0
0023ce: 21400020     move.l     d0, $20(a0)
0023d2: 206f0008     movea.l    $8(a7), a0
0023d6: 216f001c0024 move.l     $1c(a7), $24(a0)
0023dc: 206f0008     movea.l    $8(a7), a0
0023e0: 20680010     movea.l    $10(a0), a0
0023e4: 4290         clr.l      (a0)
0023e6: 206f0008     movea.l    $8(a7), a0
0023ea: 20280010     move.l     $10(a0), d0
0023ee: 5080         addq.l     #$8, d0
0023f0: 222f001c     move.l     $1c(a7), d1
0023f4: 5381         subq.l     #$1, d1
0023f6: e789         lsl.l      #$3, d1
0023f8: d081         add.l      d1, d0
0023fa: 206f0008     movea.l    $8(a7), a0
0023fe: 20680010     movea.l    $10(a0), a0
002402: 21400004     move.l     d0, $4(a0)
002406: 206f0008     movea.l    $8(a7), a0
00240a: 216f001c0028 move.l     $1c(a7), $28(a0)
002410: 206f0008     movea.l    $8(a7), a0
002414: 42a8002c     clr.l      $2c(a0)
002418: 206f0008     movea.l    $8(a7), a0
00241c: 216f001c0030 move.l     $1c(a7), $30(a0)
002422: 202f0008     move.l     $8(a7), d0
002426: 4fef001c     lea.l      $1c(a7), a7
00242a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002430: 4e5d         unlk       a5
002432: 4e75         rts        
002434: 4e550000     link.w     a5, #$0
002438: 48e7c080     movem.l    d0-d1/a0, -(a7)
00243c: 4fefffe4     lea.l      -$1c(a7), a7
002440: 4297         clr.l      (a7)
002442: 206f001c     movea.l    $1c(a7), a0
002446: 2f6800100010 move.l     $10(a0), $10(a7)
00244c: 6010         bra.b      $245e
00244e: 206f0010     movea.l    $10(a7), a0
002452: 2f500010     move.l     (a0), $10(a7)
002456: 202f000c     move.l     $c(a7), d0
00245a: 6100192a     bsr.w      $3d86
00245e: 2f6f0010000c move.l     $10(a7), $c(a7)
002464: 66e8         bne.b      $244e
002466: 206f001c     movea.l    $1c(a7), a0
00246a: 2f6800040008 move.l     $4(a0), $8(a7)
002470: 6022         bra.b      $2494
002472: 206f0008     movea.l    $8(a7), a0
002476: 4a90         tst.l      (a0)
002478: 6710         beq.b      $248a
00247a: 206f0008     movea.l    $8(a7), a0
00247e: 2010         move.l     (a0), d0
002480: 61000664     bsr.w      $2ae6
002484: 206f0008     movea.l    $8(a7), a0
002488: 4290         clr.l      (a0)
00248a: 206f0008     movea.l    $8(a7), a0
00248e: 2f68000c0008 move.l     $c(a0), $8(a7)
002494: 4aaf0008     tst.l      $8(a7)
002498: 670e         beq.b      $24a8
00249a: 206f001c     movea.l    $1c(a7), a0
00249e: 202f0008     move.l     $8(a7), d0
0024a2: b0a80008     cmp.l      $8(a0), d0
0024a6: 66ca         bne.b      $2472
0024a8: 206f001c     movea.l    $1c(a7), a0
0024ac: 2f500018     move.l     (a0), $18(a7)
0024b0: 604e         bra.b      $2500
0024b2: 58af0018     addq.l     #$4, $18(a7)
0024b6: 2f6f00180004 move.l     $18(a7), $4(a7)
0024bc: 2f6f00040008 move.l     $4(a7), $8(a7)
0024c2: 6014         bra.b      $24d8
0024c4: 206f0008     movea.l    $8(a7), a0
0024c8: 4a90         tst.l      (a0)
0024ca: 6704         beq.b      $24d0
0024cc: 70ff         moveq      #$ff, d0
0024ce: 2e80         move.l     d0, (a7)
0024d0: 06af000000340008 addi.l     #$34, $8(a7)
0024d8: 206f001c     movea.l    $1c(a7), a0
0024dc: 20280030     move.l     $30(a0), d0
0024e0: 7234         moveq      #$34, d1
0024e2: 61001cb0     bsr.w      $4194
0024e6: d0af0004     add.l      $4(a7), d0
0024ea: b0af0008     cmp.l      $8(a7), d0
0024ee: 62d4         bhi.b      $24c4
0024f0: 206f0018     movea.l    $18(a7), a0
0024f4: 2f500018     move.l     (a0), $18(a7)
0024f8: 202f0014     move.l     $14(a7), d0
0024fc: 61001888     bsr.w      $3d86
002500: 2f6f00180014 move.l     $18(a7), $14(a7)
002506: 66aa         bne.b      $24b2
002508: 202f001c     move.l     $1c(a7), d0
00250c: 61001878     bsr.w      $3d86
002510: 2017         move.l     (a7), d0
002512: 4fef001c     lea.l      $1c(a7), a7
002516: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00251c: 4e5d         unlk       a5
00251e: 4e75         rts        
002520: 4e550000     link.w     a5, #$0
002524: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002528: 4feffff4     lea.l      -$c(a7), a7
00252c: 42af0008     clr.l      $8(a7)
002530: 206f000c     movea.l    $c(a7), a0
002534: 4aa8002c     tst.l      $2c(a0)
002538: 670000c6     beq.w      $2600
00253c: 206f000c     movea.l    $c(a7), a0
002540: 20280004     move.l     $4(a0), d0
002544: 2f400004     move.l     d0, $4(a7)
002548: 2e80         move.l     d0, (a7)
00254a: 6000009e     bra.w      $25ea
00254e: 206f0004     movea.l    $4(a7), a0
002552: 102f0013     move.b     $13(a7), d0
002556: b0280012     cmp.b      $12(a0), d0
00255a: 66000080     bne.w      $25dc
00255e: 206f0004     movea.l    $4(a7), a0
002562: 4a90         tst.l      (a0)
002564: 671c         beq.b      $2582
002566: 206f0004     movea.l    $4(a7), a0
00256a: 2010         move.l     (a0), d0
00256c: 61000578     bsr.w      $2ae6
002570: 206f0004     movea.l    $4(a7), a0
002574: 4290         clr.l      (a0)
002576: 222f0004     move.l     $4(a7), d1
00257a: 202f000c     move.l     $c(a7), d0
00257e: 61000092     bsr.w      $2612
002582: 206f000c     movea.l    $c(a7), a0
002586: 202f0004     move.l     $4(a7), d0
00258a: b0a80004     cmp.l      $4(a0), d0
00258e: 6614         bne.b      $25a4
002590: 206f000c     movea.l    $c(a7), a0
002594: 20680004     movea.l    $4(a0), a0
002598: 226f000c     movea.l    $c(a7), a1
00259c: 2368000c0004 move.l     $c(a0), $4(a1)
0025a2: 600c         bra.b      $25b0
0025a4: 206f0004     movea.l    $4(a7), a0
0025a8: 2257         movea.l    (a7), a1
0025aa: 2368000c000c move.l     $c(a0), $c(a1)
0025b0: 206f000c     movea.l    $c(a7), a0
0025b4: 2068000c     movea.l    $c(a0), a0
0025b8: 202f0004     move.l     $4(a7), d0
0025bc: 2140000c     move.l     d0, $c(a0)
0025c0: 206f000c     movea.l    $c(a7), a0
0025c4: 2140000c     move.l     d0, $c(a0)
0025c8: 206f000c     movea.l    $c(a7), a0
0025cc: 53a8002c     subq.l     #$1, $2c(a0)
0025d0: 206f000c     movea.l    $c(a7), a0
0025d4: 52a80028     addq.l     #$1, $28(a0)
0025d8: 52af0008     addq.l     #$1, $8(a7)
0025dc: 2eaf0004     move.l     $4(a7), (a7)
0025e0: 206f0004     movea.l    $4(a7), a0
0025e4: 2f68000c0004 move.l     $c(a0), $4(a7)
0025ea: 4aaf0004     tst.l      $4(a7)
0025ee: 6710         beq.b      $2600
0025f0: 206f000c     movea.l    $c(a7), a0
0025f4: 202f0004     move.l     $4(a7), d0
0025f8: b0a80008     cmp.l      $8(a0), d0
0025fc: 6600ff50     bne.w      $254e
002600: 202f0008     move.l     $8(a7), d0
002604: 4fef000c     lea.l      $c(a7), a7
002608: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00260e: 4e5d         unlk       a5
002610: 4e75         rts        
002612: 4e550000     link.w     a5, #$0
002616: 48e7c080     movem.l    d0-d1/a0, -(a7)
00261a: 518f         subq.l     #$8, a7
00261c: 206f0008     movea.l    $8(a7), a0
002620: 2f68001c0004 move.l     $1c(a0), $4(a7)
002626: 206f0008     movea.l    $8(a7), a0
00262a: 2ea80014     move.l     $14(a0), (a7)
00262e: 6040         bra.b      $2670
002630: 206f0004     movea.l    $4(a7), a0
002634: 202f000c     move.l     $c(a7), d0
002638: b0a80004     cmp.l      $4(a0), d0
00263c: 6608         bne.b      $2646
00263e: 206f0004     movea.l    $4(a7), a0
002642: 42a80004     clr.l      $4(a0)
002646: 2057         movea.l    (a7), a0
002648: 50af0004     addq.l     #$8, $4(a7)
00264c: 202f0004     move.l     $4(a7), d0
002650: b0a80004     cmp.l      $4(a0), d0
002654: 631a         bls.b      $2670
002656: 2057         movea.l    (a7), a0
002658: 4a90         tst.l      (a0)
00265a: 6706         beq.b      $2662
00265c: 2057         movea.l    (a7), a0
00265e: 2e90         move.l     (a0), (a7)
002660: 6008         bra.b      $266a
002662: 206f0008     movea.l    $8(a7), a0
002666: 2ea80014     move.l     $14(a0), (a7)
00266a: 2f570004     move.l     (a7), $4(a7)
00266e: 5097         addq.l     #$8, (a7)
002670: 206f0008     movea.l    $8(a7), a0
002674: 202f0004     move.l     $4(a7), d0
002678: b0a80020     cmp.l      $20(a0), d0
00267c: 66b2         bne.b      $2630
00267e: 508f         addq.l     #$8, a7
002680: 4ced0100fffc movem.l    -$4(a5), a0
002686: 4e5d         unlk       a5
002688: 4e75         rts        
00268a: 4e550000     link.w     a5, #$0
00268e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002692: 4fefffe8     lea.l      -$18(a7), a7
002696: 206f0018     movea.l    $18(a7), a0
00269a: 082800070034 btst.b     #$7, $34(a0)
0026a0: 6708         beq.b      $26aa
0026a2: 202f0018     move.l     $18(a7), d0
0026a6: 61000256     bsr.w      $28fe
0026aa: 206f0018     movea.l    $18(a7), a0
0026ae: 226f0018     movea.l    $18(a7), a1
0026b2: 20290024     move.l     $24(a1), d0
0026b6: b0a80030     cmp.l      $30(a0), d0
0026ba: 6c000122     bge.w      $27de
0026be: 206f0018     movea.l    $18(a7), a0
0026c2: 2f6800100014 move.l     $10(a0), $14(a7)
0026c8: 6008         bra.b      $26d2
0026ca: 206f0014     movea.l    $14(a7), a0
0026ce: 2f500014     move.l     (a0), $14(a7)
0026d2: 206f0014     movea.l    $14(a7), a0
0026d6: 4a90         tst.l      (a0)
0026d8: 66f0         bne.b      $26ca
0026da: 206f0018     movea.l    $18(a7), a0
0026de: 20280030     move.l     $30(a0), d0
0026e2: e788         lsl.l      #$3, d0
0026e4: 5080         addq.l     #$8, d0
0026e6: 2f400004     move.l     d0, $4(a7)
0026ea: 202f0004     move.l     $4(a7), d0
0026ee: 6100168a     bsr.w      $3d7a
0026f2: 206f0014     movea.l    $14(a7), a0
0026f6: 2080         move.l     d0, (a0)
0026f8: 670000e4     beq.w      $27de
0026fc: 206f0014     movea.l    $14(a7), a0
002700: 2050         movea.l    (a0), a0
002702: 4290         clr.l      (a0)
002704: 206f0014     movea.l    $14(a7), a0
002708: 2010         move.l     (a0), d0
00270a: 5080         addq.l     #$8, d0
00270c: 206f0018     movea.l    $18(a7), a0
002710: 22280030     move.l     $30(a0), d1
002714: 5381         subq.l     #$1, d1
002716: e789         lsl.l      #$3, d1
002718: d081         add.l      d1, d0
00271a: 206f0014     movea.l    $14(a7), a0
00271e: 2050         movea.l    (a0), a0
002720: 21400004     move.l     d0, $4(a0)
002724: 206f0018     movea.l    $18(a7), a0
002728: 20280030     move.l     $30(a0), d0
00272c: 206f0018     movea.l    $18(a7), a0
002730: d1a80024     add.l      d0, $24(a0)
002734: 600000a8     bra.w      $27de
002738: 206f0018     movea.l    $18(a7), a0
00273c: 2068001c     movea.l    $1c(a0), a0
002740: 22280004     move.l     $4(a0), d1
002744: 202f0018     move.l     $18(a7), d0
002748: 61000286     bsr.w      $29d0
00274c: 206f0018     movea.l    $18(a7), a0
002750: 50a8001c     addq.l     #$8, $1c(a0)
002754: 206f0018     movea.l    $18(a7), a0
002758: 20680014     movea.l    $14(a0), a0
00275c: 226f0018     movea.l    $18(a7), a1
002760: 2029001c     move.l     $1c(a1), d0
002764: b0a80004     cmp.l      $4(a0), d0
002768: 6374         bls.b      $27de
00276a: 206f0018     movea.l    $18(a7), a0
00276e: 20680014     movea.l    $14(a0), a0
002772: 4a90         tst.l      (a0)
002774: 6756         beq.b      $27cc
002776: 206f0018     movea.l    $18(a7), a0
00277a: 2f6800140014 move.l     $14(a0), $14(a7)
002780: 6008         bra.b      $278a
002782: 206f0014     movea.l    $14(a7), a0
002786: 2f500014     move.l     (a0), $14(a7)
00278a: 206f0014     movea.l    $14(a7), a0
00278e: 4a90         tst.l      (a0)
002790: 66f0         bne.b      $2782
002792: 206f0018     movea.l    $18(a7), a0
002796: 226f0014     movea.l    $14(a7), a1
00279a: 22a80014     move.l     $14(a0), (a1)
00279e: 206f0018     movea.l    $18(a7), a0
0027a2: 20680014     movea.l    $14(a0), a0
0027a6: 226f0018     movea.l    $18(a7), a1
0027aa: 23500014     move.l     (a0), $14(a1)
0027ae: 206f0014     movea.l    $14(a7), a0
0027b2: 2050         movea.l    (a0), a0
0027b4: 4290         clr.l      (a0)
0027b6: 206f0018     movea.l    $18(a7), a0
0027ba: 20280014     move.l     $14(a0), d0
0027be: 5080         addq.l     #$8, d0
0027c0: 206f0018     movea.l    $18(a7), a0
0027c4: 2140001c     move.l     d0, $1c(a0)
0027c8: 6000ff5a     bra.w      $2724
0027cc: 206f0018     movea.l    $18(a7), a0
0027d0: 20280014     move.l     $14(a0), d0
0027d4: 5080         addq.l     #$8, d0
0027d6: 206f0018     movea.l    $18(a7), a0
0027da: 2140001c     move.l     d0, $1c(a0)
0027de: 206f0018     movea.l    $18(a7), a0
0027e2: 226f0018     movea.l    $18(a7), a1
0027e6: 2029001c     move.l     $1c(a1), d0
0027ea: b0a80020     cmp.l      $20(a0), d0
0027ee: 6600ff48     bne.w      $2738
0027f2: 42af0008     clr.l      $8(a7)
0027f6: 206f0018     movea.l    $18(a7), a0
0027fa: 4aa8002c     tst.l      $2c(a0)
0027fe: 670000ee     beq.w      $28ee
002802: 206f0018     movea.l    $18(a7), a0
002806: 20280004     move.l     $4(a0), d0
00280a: 2f40000c     move.l     d0, $c(a7)
00280e: 2f400010     move.l     d0, $10(a7)
002812: 6052         bra.b      $2866
002814: 206f000c     movea.l    $c(a7), a0
002818: 082800050010 btst.b     #$5, $10(a0)
00281e: 6724         beq.b      $2844
002820: 48780024     pea.l      $24.w
002824: 7010         moveq      #$10, d0
002826: d0af0010     add.l      $10(a7), d0
00282a: 2200         move.l     d0, d1
00282c: 202f0020     move.l     $20(a7), d0
002830: 610018aa     bsr.w      $40dc
002834: 588f         addq.l     #$4, a7
002836: 70ff         moveq      #$ff, d0
002838: 2f400008     move.l     d0, $8(a7)
00283c: 206f000c     movea.l    $c(a7), a0
002840: 2e90         move.l     (a0), (a7)
002842: 6022         bra.b      $2866
002844: 2f6f000c0010 move.l     $c(a7), $10(a7)
00284a: 206f000c     movea.l    $c(a7), a0
00284e: 2f68000c000c move.l     $c(a0), $c(a7)
002854: 206f0018     movea.l    $18(a7), a0
002858: 202f000c     move.l     $c(a7), d0
00285c: b0a80008     cmp.l      $8(a0), d0
002860: 6604         bne.b      $2866
002862: 42af0030     clr.l      $30(a7)
002866: 4aaf0008     tst.l      $8(a7)
00286a: 6612         bne.b      $287e
00286c: 202f0030     move.l     $30(a7), d0
002870: 53af0030     subq.l     #$1, $30(a7)
002874: 4a80         tst.l      d0
002876: 6706         beq.b      $287e
002878: 4aaf000c     tst.l      $c(a7)
00287c: 6696         bne.b      $2814
00287e: 4aaf0008     tst.l      $8(a7)
002882: 676a         beq.b      $28ee
002884: 206f000c     movea.l    $c(a7), a0
002888: 4290         clr.l      (a0)
00288a: 206f0018     movea.l    $18(a7), a0
00288e: 2068000c     movea.l    $c(a0), a0
002892: 202f000c     move.l     $c(a7), d0
002896: 2140000c     move.l     d0, $c(a0)
00289a: 206f0018     movea.l    $18(a7), a0
00289e: 2140000c     move.l     d0, $c(a0)
0028a2: 202f0010     move.l     $10(a7), d0
0028a6: b0af000c     cmp.l      $c(a7), d0
0028aa: 6614         bne.b      $28c0
0028ac: 206f0018     movea.l    $18(a7), a0
0028b0: 20680004     movea.l    $4(a0), a0
0028b4: 226f0018     movea.l    $18(a7), a1
0028b8: 2368000c0004 move.l     $c(a0), $4(a1)
0028be: 600e         bra.b      $28ce
0028c0: 206f000c     movea.l    $c(a7), a0
0028c4: 226f0010     movea.l    $10(a7), a1
0028c8: 2368000c000c move.l     $c(a0), $c(a1)
0028ce: 206f0018     movea.l    $18(a7), a0
0028d2: 2068000c     movea.l    $c(a0), a0
0028d6: 42a8000c     clr.l      $c(a0)
0028da: 206f0018     movea.l    $18(a7), a0
0028de: 53a8002c     subq.l     #$1, $2c(a0)
0028e2: 206f0018     movea.l    $18(a7), a0
0028e6: 52a80028     addq.l     #$1, $28(a0)
0028ea: 2017         move.l     (a7), d0
0028ec: 6002         bra.b      $28f0
0028ee: 70ff         moveq      #$ff, d0
0028f0: 4fef0018     lea.l      $18(a7), a7
0028f4: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0028fa: 4e5d         unlk       a5
0028fc: 4e75         rts        
0028fe: 4e550000     link.w     a5, #$0
002902: 48e7c080     movem.l    d0-d1/a0, -(a7)
002906: 4feffff0     lea.l      -$10(a7), a7
00290a: 206f0010     movea.l    $10(a7), a0
00290e: 20280030     move.l     $30(a0), d0
002912: 7234         moveq      #$34, d1
002914: 6100187e     bsr.w      $4194
002918: 5880         addq.l     #$4, d0
00291a: 2f40000c     move.l     d0, $c(a7)
00291e: 206f0010     movea.l    $10(a7), a0
002922: 6004         bra.b      $2928
002924: 206f0004     movea.l    $4(a7), a0
002928: 2f500004     move.l     (a0), $4(a7)
00292c: 206f0004     movea.l    $4(a7), a0
002930: 4a90         tst.l      (a0)
002932: 66f0         bne.b      $2924
002934: 202f000c     move.l     $c(a7), d0
002938: 61001440     bsr.w      $3d7a
00293c: 206f0004     movea.l    $4(a7), a0
002940: 2080         move.l     d0, (a0)
002942: 6700007e     beq.w      $29c2
002946: 206f0004     movea.l    $4(a7), a0
00294a: 2f500004     move.l     (a0), $4(a7)
00294e: 206f0004     movea.l    $4(a7), a0
002952: 4290         clr.l      (a0)
002954: 2eaf0004     move.l     $4(a7), (a7)
002958: 58af0004     addq.l     #$4, $4(a7)
00295c: 206f0010     movea.l    $10(a7), a0
002960: 2068000c     movea.l    $c(a0), a0
002964: 2157000c     move.l     (a7), $c(a0)
002968: 7001         moveq      #$1, d0
00296a: 2f400008     move.l     d0, $8(a7)
00296e: 6018         bra.b      $2988
002970: 2057         movea.l    (a7), a0
002972: 4290         clr.l      (a0)
002974: 7034         moveq      #$34, d0
002976: d097         add.l      (a7), d0
002978: 2057         movea.l    (a7), a0
00297a: 2140000c     move.l     d0, $c(a0)
00297e: 069700000034 addi.l     #$34, (a7)
002984: 52af0008     addq.l     #$1, $8(a7)
002988: 206f0010     movea.l    $10(a7), a0
00298c: 202f0008     move.l     $8(a7), d0
002990: b0a80030     cmp.l      $30(a0), d0
002994: 6dda         blt.b      $2970
002996: 2057         movea.l    (a7), a0
002998: 42a8000c     clr.l      $c(a0)
00299c: 2057         movea.l    (a7), a0
00299e: 4290         clr.l      (a0)
0029a0: 206f0010     movea.l    $10(a7), a0
0029a4: 2157000c     move.l     (a7), $c(a0)
0029a8: 206f0010     movea.l    $10(a7), a0
0029ac: 20280030     move.l     $30(a0), d0
0029b0: 206f0010     movea.l    $10(a7), a0
0029b4: d1a80028     add.l      d0, $28(a0)
0029b8: 206f0010     movea.l    $10(a7), a0
0029bc: 08a800070034 bclr.b     #$7, $34(a0)
0029c2: 4fef0010     lea.l      $10(a7), a7
0029c6: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0029cc: 4e5d         unlk       a5
0029ce: 4e75         rts        
0029d0: 4e550000     link.w     a5, #$0
0029d4: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
0029d8: 2440         movea.l    d0, a2
0029da: 2641         movea.l    d1, a3
0029dc: 4fefffe0     lea.l      -$20(a7), a7
0029e0: 200b         move.l     a3, d0
0029e2: 670000ae     beq.w      $2a92
0029e6: 2f6b00100004 move.l     $10(a3), $4(a7)
0029ec: 42af0008     clr.l      $8(a7)
0029f0: 41ef0004     lea.l      $4(a7), a0
0029f4: 2f48001c     move.l     a0, $1c(a7)
0029f8: 7008         moveq      #$8, d0
0029fa: 2f400018     move.l     d0, $18(a7)
0029fe: 202b0014     move.l     $14(a3), d0
002a02: 028000ffffff andi.l     #$ffffff, d0
002a08: 61000098     bsr.w      $2aa2
002a0c: 27400004     move.l     d0, $4(a3)
002a10: 2680         move.l     d0, (a3)
002a12: 6e58         bgt.b      $2a6c
002a14: 08ef00050008 bset.b     #$5, $8(a7)
002a1a: 41fa0112     lea.l      $2b2e(pc), a0
002a1e: 2008         move.l     a0, d0
002a20: 6100129c     bsr.w      $3cbe
002a24: 206a000c     movea.l    $c(a2), a0
002a28: 214b000c     move.l     a3, $c(a0)
002a2c: 254b000c     move.l     a3, $c(a2)
002a30: b7ea0004     cmpa.l     $4(a2), a3
002a34: 660c         bne.b      $2a42
002a36: 206a0004     movea.l    $4(a2), a0
002a3a: 2568000c0004 move.l     $c(a0), $4(a2)
002a40: 601c         bra.b      $2a5e
002a42: 2eaa0004     move.l     $4(a2), (a7)
002a46: 6006         bra.b      $2a4e
002a48: 2057         movea.l    (a7), a0
002a4a: 2ea8000c     move.l     $c(a0), (a7)
002a4e: 2057         movea.l    (a7), a0
002a50: b7e8000c     cmpa.l     $c(a0), a3
002a54: 66f2         bne.b      $2a48
002a56: 2057         movea.l    (a7), a0
002a58: 216b000c000c move.l     $c(a3), $c(a0)
002a5e: 42ab000c     clr.l      $c(a3)
002a62: 53aa002c     subq.l     #$1, $2c(a2)
002a66: 52aa0028     addq.l     #$1, $28(a2)
002a6a: 600a         bra.b      $2a76
002a6c: 42ab0008     clr.l      $8(a3)
002a70: 08ef00070008 bset.b     #$7, $8(a7)
002a76: 486f000c     pea.l      $c(a7)
002a7a: 222e80f2     move.l     -$7f0e(a6), d1
002a7e: 203c0000ff0c move.l     #$ff0c, d0
002a84: 61001012     bsr.w      $3a98
002a88: 588f         addq.l     #$4, a7
002a8a: 4a80         tst.l      d0
002a8c: 6c04         bge.b      $2a92
002a8e: 70ff         moveq      #$ff, d0
002a90: 6002         bra.b      $2a94
002a92: 7000         moveq      #$0, d0
002a94: 4fef0020     lea.l      $20(a7), a7
002a98: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
002a9e: 4e5d         unlk       a5
002aa0: 4e75         rts        
002aa2: 4e550000     link.w     a5, #$0
002aa6: 48e7c080     movem.l    d0-d1/a0, -(a7)
002aaa: 598f         subq.l     #$4, a7
002aac: 58af0004     addq.l     #$4, $4(a7)
002ab0: 2f2f0004     move.l     $4(a7), -(a7)
002ab4: 222e80f2     move.l     -$7f0e(a6), d1
002ab8: 203c0000ff0a move.l     #$ff0a, d0
002abe: 61000fd8     bsr.w      $3a98
002ac2: 588f         addq.l     #$4, a7
002ac4: 2e80         move.l     d0, (a7)
002ac6: 72ff         moveq      #$ff, d1
002ac8: b280         cmp.l      d0, d1
002aca: 6604         bne.b      $2ad0
002acc: 7000         moveq      #$0, d0
002ace: 600a         bra.b      $2ada
002ad0: 2057         movea.l    (a7), a0
002ad2: 20af0004     move.l     $4(a7), (a0)
002ad6: 2017         move.l     (a7), d0
002ad8: 5880         addq.l     #$4, d0
002ada: 588f         addq.l     #$4, a7
002adc: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002ae2: 4e5d         unlk       a5
002ae4: 4e75         rts        
002ae6: 4e550000     link.w     a5, #$0
002aea: 48e7c080     movem.l    d0-d1/a0, -(a7)
002aee: 518f         subq.l     #$8, a7
002af0: 4aaf0008     tst.l      $8(a7)
002af4: 6604         bne.b      $2afa
002af6: 70ff         moveq      #$ff, d0
002af8: 6020         bra.b      $2b1a
002afa: 202f0008     move.l     $8(a7), d0
002afe: 5980         subq.l     #$4, d0
002b00: 2e80         move.l     d0, (a7)
002b02: 2057         movea.l    (a7), a0
002b04: 2f10         move.l     (a0), -(a7)
002b06: 2f2f0004     move.l     $4(a7), -(a7)
002b0a: 222e80f2     move.l     -$7f0e(a6), d1
002b0e: 203c0000ff0b move.l     #$ff0b, d0
002b14: 61000f6c     bsr.w      $3a82
002b18: 508f         addq.l     #$8, a7
002b1a: 2f400004     move.l     d0, $4(a7)
002b1e: 202f0004     move.l     $4(a7), d0
002b22: 508f         addq.l     #$8, a7
002b24: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002b2a: 4e5d         unlk       a5
002b2c: 4e75         rts        
002b2e: 6372         bls.b      $2ba2
002b30: 6561         bcs.b      $2b93
002b32: 7465         moveq      #$65, d2
002b34: 5f7375626672616d subq.w     #$7, ([$6672, a3], $616d)
002b3c: 6520         bcs.b      $2b5e
002b3e: 3a20         move.w     -(a0), d5
002b40: 7365         .dc.w      $7365
002b42: 6e64         bgt.b      $2ba8
002b44: 696e         bvs.b      $2bb4
002b46: 6720         beq.b      $2b68
002b48: 6162         bsr.b      $2bac
002b4a: 6f72         ble.b      $2bbe
002b4c: 740d         moveq      #$d, d2
002b4e: 00004e55     ori.b      #$55, d0
002b52: 000048e7     ori.b      #$e7, d0
002b56: c000         and.b      d0, d0
002b58: 42a7         clr.l      -(a7)
002b5a: 222f0008     move.l     $8(a7), d1
002b5e: 202f0004     move.l     $4(a7), d0
002b62: 613e         bsr.b      $2ba2
002b64: 588f         addq.l     #$4, a7
002b66: 4e5d         unlk       a5
002b68: 4e75         rts        
002b6a: 4e550000     link.w     a5, #$0
002b6e: 48e7c000     movem.l    d0-d1, -(a7)
002b72: 48780001     pea.l      $1.w
002b76: 222f0008     move.l     $8(a7), d1
002b7a: 202f0004     move.l     $4(a7), d0
002b7e: 6122         bsr.b      $2ba2
002b80: 588f         addq.l     #$4, a7
002b82: 4e5d         unlk       a5
002b84: 4e75         rts        
002b86: 4e550000     link.w     a5, #$0
002b8a: 48e7c000     movem.l    d0-d1, -(a7)
002b8e: 48780002     pea.l      $2.w
002b92: 222f0008     move.l     $8(a7), d1
002b96: 202f0004     move.l     $4(a7), d0
002b9a: 6106         bsr.b      $2ba2
002b9c: 588f         addq.l     #$4, a7
002b9e: 4e5d         unlk       a5
002ba0: 4e75         rts        
002ba2: 4e550000     link.w     a5, #$0
002ba6: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
002baa: 4fefffda     lea.l      -$26(a7), a7
002bae: 41ef0008     lea.l      $8(a7), a0
002bb2: 2208         move.l     a0, d1
002bb4: 202f0026     move.l     $26(a7), d0
002bb8: 61000bbe     bsr.w      $3778
002bbc: 2440         movea.l    d0, a2
002bbe: 4a80         tst.l      d0
002bc0: 67000108     beq.w      $2cca
002bc4: 41ef0008     lea.l      $8(a7), a0
002bc8: 2008         move.l     a0, d0
002bca: 61000bf2     bsr.w      $37be
002bce: 2f400004     move.l     d0, $4(a7)
002bd2: 6d0000f6     blt.w      $2cca
002bd6: 41ef0022     lea.l      $22(a7), a0
002bda: 2208         move.l     a0, d1
002bdc: 200a         move.l     a2, d0
002bde: 61000c64     bsr.w      $3844
002be2: 2440         movea.l    d0, a2
002be4: 4a80         tst.l      d0
002be6: 670000e2     beq.w      $2cca
002bea: 202f0004     move.l     $4(a7), d0
002bee: e588         lsl.l      #$2, d0
002bf0: 41ee868a     lea.l      -$7976(a6), a0
002bf4: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
002bfa: 6600009a     bne.w      $2c96
002bfe: 7203         moveq      #$3, d1
002c00: 41ef0008     lea.l      $8(a7), a0
002c04: 2008         move.l     a0, d0
002c06: 610010fe     bsr.w      $3d06
002c0a: 222f0004     move.l     $4(a7), d1
002c0e: e589         lsl.l      #$2, d1
002c10: 41ee868a     lea.l      -$7976(a6), a0
002c14: 31801800     move.w     d0, (a0, d1.l)
002c18: 6d0000ca     blt.w      $2ce4
002c1c: 202f0004     move.l     $4(a7), d0
002c20: e588         lsl.l      #$2, d0
002c22: 41ee868a     lea.l      -$7976(a6), a0
002c26: 2400         move.l     d0, d2
002c28: 42a7         clr.l      -(a7)
002c2a: 202f0008     move.l     $8(a7), d0
002c2e: e588         lsl.l      #$2, d0
002c30: 43ee868a     lea.l      -$7976(a6), a1
002c34: 32710800     movea.w    (a1, d0.l), a1
002c38: 2209         move.l     a1, d1
002c3a: 203c0000ff0e move.l     #$ff0e, d0
002c40: 61000df2     bsr.w      $3a34
002c44: 588f         addq.l     #$4, a7
002c46: 2240         movea.l    d0, a1
002c48: 7000         moveq      #$0, d0
002c4a: 1011         move.b     (a1), d0
002c4c: 31802802     move.w     d0, $2(a0, d2.l)
002c50: 202f0004     move.l     $4(a7), d0
002c54: e588         lsl.l      #$2, d0
002c56: 41ee868a     lea.l      -$7976(a6), a0
002c5a: 4a700800     tst.w      (a0, d0.l)
002c5e: 6d36         blt.b      $2c96
002c60: 202f0004     move.l     $4(a7), d0
002c64: e588         lsl.l      #$2, d0
002c66: 41ee868a     lea.l      -$7976(a6), a0
002c6a: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
002c70: 6c24         bge.b      $2c96
002c72: 202f0004     move.l     $4(a7), d0
002c76: e588         lsl.l      #$2, d0
002c78: 41ee868a     lea.l      -$7976(a6), a0
002c7c: 30700800     movea.w    (a0, d0.l), a0
002c80: 2008         move.l     a0, d0
002c82: 610010b2     bsr.w      $3d36
002c86: 202f0004     move.l     $4(a7), d0
002c8a: e588         lsl.l      #$2, d0
002c8c: 41ee868a     lea.l      -$7976(a6), a0
002c90: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
002c96: 202f0004     move.l     $4(a7), d0
002c9a: e588         lsl.l      #$2, d0
002c9c: 41ee868a     lea.l      -$7976(a6), a0
002ca0: 30300802     move.w     $2(a0, d0.l), d0
002ca4: 48c0         ext.l      d0
002ca6: b0af0022     cmp.l      $22(a7), d0
002caa: 661e         bne.b      $2cca
002cac: 0c12005f     cmpi.b     #$5f, (a2)
002cb0: 6610         bne.b      $2cc2
002cb2: 6004         bra.b      $2cb8
002cb4: 4a12         tst.b      (a2)
002cb6: 672c         beq.b      $2ce4
002cb8: 528a         addq.l     #$1, a2
002cba: 0c12005f     cmpi.b     #$5f, (a2)
002cbe: 66f4         bne.b      $2cb4
002cc0: 528a         addq.l     #$1, a2
002cc2: 222f002a     move.l     $2a(a7), d1
002cc6: 200a         move.l     a2, d0
002cc8: 6008         bra.b      $2cd2
002cca: 222f002a     move.l     $2a(a7), d1
002cce: 202f0026     move.l     $26(a7), d0
002cd2: 242f004e     move.l     $4e(a7), d2
002cd6: e58a         lsl.l      #$2, d2
002cd8: 41ee8644     lea.l      -$79bc(a6), a0
002cdc: 20702800     movea.l    (a0, d2.l), a0
002ce0: 4e90         jsr        (a0)
002ce2: 6002         bra.b      $2ce6
002ce4: 70ff         moveq      #$ff, d0
002ce6: 4fef0026     lea.l      $26(a7), a7
002cea: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
002cf0: 4e5d         unlk       a5
002cf2: 4e75         rts        
002cf4: 4e550000     link.w     a5, #$0
002cf8: 48e7c080     movem.l    d0-d1/a0, -(a7)
002cfc: 2f2f0018     move.l     $18(a7), -(a7)
002d00: 306f001a     movea.w    $1a(a7), a0
002d04: 2f08         move.l     a0, -(a7)
002d06: 222f000c     move.l     $c(a7), d1
002d0a: 202f0008     move.l     $8(a7), d0
002d0e: 610c         bsr.b      $2d1c
002d10: 508f         addq.l     #$8, a7
002d12: 4ced0100fffc movem.l    -$4(a5), a0
002d18: 4e5d         unlk       a5
002d1a: 4e75         rts        
002d1c: 4e550000     link.w     a5, #$0
002d20: 48e7ece0     movem.l    d0-d2/d4-d5/a0-a2, -(a7)
002d24: 4fefffda     lea.l      -$26(a7), a7
002d28: 41ef0008     lea.l      $8(a7), a0
002d2c: 2208         move.l     a0, d1
002d2e: 202f0026     move.l     $26(a7), d0
002d32: 61000a44     bsr.w      $3778
002d36: 2440         movea.l    d0, a2
002d38: 4a80         tst.l      d0
002d3a: 67000112     beq.w      $2e4e
002d3e: 41ef0008     lea.l      $8(a7), a0
002d42: 2008         move.l     a0, d0
002d44: 61000a78     bsr.w      $37be
002d48: 2f400004     move.l     d0, $4(a7)
002d4c: 6d000100     blt.w      $2e4e
002d50: 41ef0022     lea.l      $22(a7), a0
002d54: 2208         move.l     a0, d1
002d56: 200a         move.l     a2, d0
002d58: 61000aea     bsr.w      $3844
002d5c: 2440         movea.l    d0, a2
002d5e: 4a80         tst.l      d0
002d60: 670000ec     beq.w      $2e4e
002d64: 202f0004     move.l     $4(a7), d0
002d68: e588         lsl.l      #$2, d0
002d6a: 41ee868a     lea.l      -$7976(a6), a0
002d6e: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
002d74: 6600009a     bne.w      $2e10
002d78: 7203         moveq      #$3, d1
002d7a: 41ef0008     lea.l      $8(a7), a0
002d7e: 2008         move.l     a0, d0
002d80: 61000f84     bsr.w      $3d06
002d84: 222f0004     move.l     $4(a7), d1
002d88: e589         lsl.l      #$2, d1
002d8a: 41ee868a     lea.l      -$7976(a6), a0
002d8e: 31801800     move.w     d0, (a0, d1.l)
002d92: 6d0000d4     blt.w      $2e68
002d96: 202f0004     move.l     $4(a7), d0
002d9a: e588         lsl.l      #$2, d0
002d9c: 41ee868a     lea.l      -$7976(a6), a0
002da0: 2400         move.l     d0, d2
002da2: 42a7         clr.l      -(a7)
002da4: 202f0008     move.l     $8(a7), d0
002da8: e588         lsl.l      #$2, d0
002daa: 43ee868a     lea.l      -$7976(a6), a1
002dae: 32710800     movea.w    (a1, d0.l), a1
002db2: 2209         move.l     a1, d1
002db4: 203c0000ff0e move.l     #$ff0e, d0
002dba: 61000c78     bsr.w      $3a34
002dbe: 588f         addq.l     #$4, a7
002dc0: 2240         movea.l    d0, a1
002dc2: 7000         moveq      #$0, d0
002dc4: 1011         move.b     (a1), d0
002dc6: 31802802     move.w     d0, $2(a0, d2.l)
002dca: 202f0004     move.l     $4(a7), d0
002dce: e588         lsl.l      #$2, d0
002dd0: 41ee868a     lea.l      -$7976(a6), a0
002dd4: 4a700800     tst.w      (a0, d0.l)
002dd8: 6d36         blt.b      $2e10
002dda: 202f0004     move.l     $4(a7), d0
002dde: e588         lsl.l      #$2, d0
002de0: 41ee868a     lea.l      -$7976(a6), a0
002de4: 0c7000030800 cmpi.w     #$3, (a0, d0.l)
002dea: 6c24         bge.b      $2e10
002dec: 202f0004     move.l     $4(a7), d0
002df0: e588         lsl.l      #$2, d0
002df2: 41ee868a     lea.l      -$7976(a6), a0
002df6: 30700800     movea.w    (a0, d0.l), a0
002dfa: 2008         move.l     a0, d0
002dfc: 61000f38     bsr.w      $3d36
002e00: 202f0004     move.l     $4(a7), d0
002e04: e588         lsl.l      #$2, d0
002e06: 41ee868a     lea.l      -$7976(a6), a0
002e0a: 31bcffff0800 move.w     #$ffff, (a0, d0.l)
002e10: 202f0004     move.l     $4(a7), d0
002e14: e588         lsl.l      #$2, d0
002e16: 41ee868a     lea.l      -$7976(a6), a0
002e1a: 30300802     move.w     $2(a0, d0.l), d0
002e1e: 48c0         ext.l      d0
002e20: b0af0022     cmp.l      $22(a7), d0
002e24: 6628         bne.b      $2e4e
002e26: 0c12005f     cmpi.b     #$5f, (a2)
002e2a: 6610         bne.b      $2e3c
002e2c: 6004         bra.b      $2e32
002e2e: 4a12         tst.b      (a2)
002e30: 6736         beq.b      $2e68
002e32: 528a         addq.l     #$1, a2
002e34: 0c12005f     cmpi.b     #$5f, (a2)
002e38: 66f4         bne.b      $2e2e
002e3a: 528a         addq.l     #$1, a2
002e3c: 2f2f0052     move.l     $52(a7), -(a7)
002e40: 306f0054     movea.w    $54(a7), a0
002e44: 2f08         move.l     a0, -(a7)
002e46: 222f0032     move.l     $32(a7), d1
002e4a: 200a         move.l     a2, d0
002e4c: 6012         bra.b      $2e60
002e4e: 2f2f0052     move.l     $52(a7), -(a7)
002e52: 306f0054     movea.w    $54(a7), a0
002e56: 2f08         move.l     a0, -(a7)
002e58: 222f0032     move.l     $32(a7), d1
002e5c: 202f002e     move.l     $2e(a7), d0
002e60: 61000e9c     bsr.w      $3cfe
002e64: 508f         addq.l     #$8, a7
002e66: 6002         bra.b      $2e6a
002e68: 70ff         moveq      #$ff, d0
002e6a: 4fef0026     lea.l      $26(a7), a7
002e6e: 4ced0734ffe8 movem.l    -$18(a5), d2/d4-d5/a0-a2
002e74: 4e5d         unlk       a5
002e76: 4e75         rts        
002e78: 4e550000     link.w     a5, #$0
002e7c: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
002e80: 4fefffc8     lea.l      -$38(a7), a7
002e84: 2f6f00380008 move.l     $38(a7), $8(a7)
002e8a: 4a2f0009     tst.b      $9(a7)
002e8e: 660e         bne.b      $2e9e
002e90: 306f003e     movea.w    $3e(a7), a0
002e94: 2208         move.l     a0, d1
002e96: 202f0008     move.l     $8(a7), d0
002e9a: 600000c8     bra.w      $2f64
002e9e: 4aae8654     tst.l      -$79ac(a6)
002ea2: 6608         bne.b      $2eac
002ea4: 61000b6a     bsr.w      $3a10
002ea8: 2d408654     move.l     d0, -$79ac(a6)
002eac: 7000         moveq      #$0, d0
002eae: 102f0008     move.b     $8(a7), d0
002eb2: e588         lsl.l      #$2, d0
002eb4: 41ee868a     lea.l      -$7976(a6), a0
002eb8: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
002ebe: 66000080     bne.w      $2f40
002ec2: 7000         moveq      #$0, d0
002ec4: 102f0008     move.b     $8(a7), d0
002ec8: e588         lsl.l      #$2, d0
002eca: 206e8654     movea.l    -$79ac(a6), a0
002ece: 2f30081a     move.l     $1a(a0, d0.l), -(a7)
002ed2: 41fa016e     lea.l      $3042(pc), a0
002ed6: 2208         move.l     a0, d1
002ed8: 41ef001c     lea.l      $1c(a7), a0
002edc: 2008         move.l     a0, d0
002ede: 61000de6     bsr.w      $3cc6
002ee2: 588f         addq.l     #$4, a7
002ee4: 7203         moveq      #$3, d1
002ee6: 41ef0018     lea.l      $18(a7), a0
002eea: 2008         move.l     a0, d0
002eec: 61000e18     bsr.w      $3d06
002ef0: 7200         moveq      #$0, d1
002ef2: 122f0008     move.b     $8(a7), d1
002ef6: e589         lsl.l      #$2, d1
002ef8: 41ee868a     lea.l      -$7976(a6), a0
002efc: 31801800     move.w     d0, (a0, d1.l)
002f00: 6c06         bge.b      $2f08
002f02: 70ff         moveq      #$ff, d0
002f04: 6000012e     bra.w      $3034
002f08: 7000         moveq      #$0, d0
002f0a: 102f0008     move.b     $8(a7), d0
002f0e: e588         lsl.l      #$2, d0
002f10: 41ee868a     lea.l      -$7976(a6), a0
002f14: 2400         move.l     d0, d2
002f16: 42a7         clr.l      -(a7)
002f18: 7000         moveq      #$0, d0
002f1a: 102f000c     move.b     $c(a7), d0
002f1e: e588         lsl.l      #$2, d0
002f20: 43ee868a     lea.l      -$7976(a6), a1
002f24: 32710800     movea.w    (a1, d0.l), a1
002f28: 2209         move.l     a1, d1
002f2a: 203c0000ff0e move.l     #$ff0e, d0
002f30: 61000b02     bsr.w      $3a34
002f34: 588f         addq.l     #$4, a7
002f36: 2240         movea.l    d0, a1
002f38: 7000         moveq      #$0, d0
002f3a: 1011         move.b     (a1), d0
002f3c: 31802802     move.w     d0, $2(a0, d2.l)
002f40: 7000         moveq      #$0, d0
002f42: 102f0008     move.b     $8(a7), d0
002f46: e588         lsl.l      #$2, d0
002f48: 41ee868a     lea.l      -$7976(a6), a0
002f4c: 7200         moveq      #$0, d1
002f4e: 122f0009     move.b     $9(a7), d1
002f52: b2700802     cmp.w      $2(a0, d0.l), d1
002f56: 6614         bne.b      $2f6c
002f58: 306f003e     movea.w    $3e(a7), a0
002f5c: 2208         move.l     a0, d1
002f5e: 7000         moveq      #$0, d0
002f60: 302f000a     move.w     $a(a7), d0
002f64: 61001732     bsr.w      $4698
002f68: 600000ca     bra.w      $3034
002f6c: 4aae8650     tst.l      -$79b0(a6)
002f70: 661a         bne.b      $2f8c
002f72: 610017e2     bsr.w      $4756
002f76: 2d408650     move.l     d0, -$79b0(a6)
002f7a: 2d7c00010000813e move.l     #$10000, -$7ec2(a6)
002f82: 2d6e86508142 move.l     -$79b0(a6), -$7ebe(a6)
002f88: 42ae813a     clr.l      -$7ec6(a6)
002f8c: 7001         moveq      #$1, d0
002f8e: 2d40815a     move.l     d0, -$7ea6(a6)
002f92: 7008         moveq      #$8, d0
002f94: 2d40815e     move.l     d0, -$7ea2(a6)
002f98: 41d7         lea.l      (a7), a0
002f9a: 2d488162     move.l     a0, -$7e9e(a6)
002f9e: 41ee8136     lea.l      -$7eca(a6), a0
002fa2: 2d48816a     move.l     a0, -$7e96(a6)
002fa6: 7018         moveq      #$18, d0
002fa8: 2d408166     move.l     d0, -$7e9a(a6)
002fac: 7000         moveq      #$0, d0
002fae: 302f000a     move.w     $a(a7), d0
002fb2: 2d408146     move.l     d0, -$7eba(a6)
002fb6: 306f003e     movea.w    $3e(a7), a0
002fba: 2d48814a     move.l     a0, -$7eb6(a6)
002fbe: 1d6f00098139 move.b     $9(a7), -$7ec7(a6)
002fc4: 422e813a     clr.b      -$7ec6(a6)
002fc8: 486e815a     pea.l      -$7ea6(a6)
002fcc: 7000         moveq      #$0, d0
002fce: 102f000c     move.b     $c(a7), d0
002fd2: e588         lsl.l      #$2, d0
002fd4: 41ee868a     lea.l      -$7976(a6), a0
002fd8: 30700800     movea.w    (a0, d0.l), a0
002fdc: 2208         move.l     a0, d1
002fde: 203c0000ff05 move.l     #$ff05, d0
002fe4: 61000ab2     bsr.w      $3a98
002fe8: 588f         addq.l     #$4, a7
002fea: 2f400010     move.l     d0, $10(a7)
002fee: 6c08         bge.b      $2ff8
002ff0: 70ff         moveq      #$ff, d0
002ff2: 2f40000c     move.l     d0, $c(a7)
002ff6: 6038         bra.b      $3030
002ff8: 2f2f0010     move.l     $10(a7), -(a7)
002ffc: 7000         moveq      #$0, d0
002ffe: 102f000c     move.b     $c(a7), d0
003002: e588         lsl.l      #$2, d0
003004: 41ee868a     lea.l      -$7976(a6), a0
003008: 30700800     movea.w    (a0, d0.l), a0
00300c: 2208         move.l     a0, d1
00300e: 203c0000ff06 move.l     #$ff06, d0
003014: 61000a82     bsr.w      $3a98
003018: 588f         addq.l     #$4, a7
00301a: 2f40000c     move.l     d0, $c(a7)
00301e: 6dd0         blt.b      $2ff0
003020: 2f6f0004000c move.l     $4(a7), $c(a7)
003026: 4aaf0004     tst.l      $4(a7)
00302a: 6c04         bge.b      $3030
00302c: 2d57800c     move.l     (a7), -$7ff4(a6)
003030: 202f000c     move.l     $c(a7), d0
003034: 4fef0038     lea.l      $38(a7), a7
003038: 4ced0304fff4 movem.l    -$c(a5), d2/a0-a1
00303e: 4e5d         unlk       a5
003040: 4e75         rts        
003042: 2f25         move.l     -(a5), -(a7)
003044: 7300         .dc.w      $7300
003046: 4e550000     link.w     a5, #$0
00304a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00304e: 7002         moveq      #$2, d0
003050: b0ae8658     cmp.l      -$79a8(a6), d0
003054: 6c0c         bge.b      $3062
003056: 2217         move.l     (a7), d1
003058: 41fa052c     lea.l      $3586(pc), a0
00305c: 2008         move.l     a0, d0
00305e: 61000c5e     bsr.w      $3cbe
003062: 0c9700000106 cmpi.l     #$106, (a7)
003068: 6608         bne.b      $3072
00306a: 7001         moveq      #$1, d0
00306c: 2d408176     move.l     d0, -$7e8a(a6)
003070: 600e         bra.b      $3080
003072: 4aae817a     tst.l      -$7e86(a6)
003076: 6708         beq.b      $3080
003078: 2017         move.l     (a7), d0
00307a: 206e817a     movea.l    -$7e86(a6), a0
00307e: 4e90         jsr        (a0)
003080: 7000         moveq      #$0, d0
003082: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003088: 4e5d         unlk       a5
00308a: 4e75         rts        
00308c: 4e550000     link.w     a5, #$0
003090: 48e7e0f0     movem.l    d0-d2/a0-a3, -(a7)
003094: 4fefff58     lea.l      -$a8(a7), a7
003098: 6010         bra.b      $30aa
00309a: 08ef000600de bset.b     #$6, $de(a7)
0030a0: 601c         bra.b      $30be
0030a2: 08ef000700de bset.b     #$7, $de(a7)
0030a8: 6014         bra.b      $30be
0030aa: 202f00e0     move.l     $e0(a7), d0
0030ae: 0c80a95acd81 cmpi.l     #$a95acd81, d0
0030b4: 67e4         beq.b      $309a
0030b6: 0c80a95acd82 cmpi.l     #$a95acd82, d0
0030bc: 67e4         beq.b      $30a2
0030be: 41ef0094     lea.l      $94(a7), a0
0030c2: 2208         move.l     a0, d1
0030c4: 202f00ac     move.l     $ac(a7), d0
0030c8: 610006ae     bsr.w      $3778
0030cc: 2f400028     move.l     d0, $28(a7)
0030d0: 6700015c     beq.w      $322e
0030d4: 206f0028     movea.l    $28(a7), a0
0030d8: 0c10005f     cmpi.b     #$5f, (a0)
0030dc: 66000150     bne.w      $322e
0030e0: 2f6f002800ac move.l     $28(a7), $ac(a7)
0030e6: 2d6f00ac8674 move.l     $ac(a7), -$798c(a6)
0030ec: 41ef0094     lea.l      $94(a7), a0
0030f0: 2d488668     move.l     a0, -$7998(a6)
0030f4: 41ef0094     lea.l      $94(a7), a0
0030f8: 2008         move.l     a0, d0
0030fa: 610006c2     bsr.w      $37be
0030fe: 3f40002c     move.w     d0, $2c(a7)
003102: 6c0c         bge.b      $3110
003104: 2d7c00000200800c move.l     #$200, -$7ff4(a6)
00310c: 60000242     bra.w      $3350
003110: 422f0052     clr.b      $52(a7)
003114: 41ef0046     lea.l      $46(a7), a0
003118: 2208         move.l     a0, d1
00311a: 202f00ac     move.l     $ac(a7), d0
00311e: 61000724     bsr.w      $3844
003122: 2f400028     move.l     d0, $28(a7)
003126: 67000106     beq.w      $322e
00312a: 1f6f00490051 move.b     $49(a7), $51(a7)
003130: 2f6f002800ac move.l     $28(a7), $ac(a7)
003136: 302f002c     move.w     $2c(a7), d0
00313a: 48c0         ext.l      d0
00313c: e588         lsl.l      #$2, d0
00313e: 41ee868a     lea.l      -$7976(a6), a0
003142: 0c70ffff0800 cmpi.w     #$ffff, (a0, d0.l)
003148: 660000b6     bne.w      $3200
00314c: 486f0094     pea.l      $94(a7)
003150: 41fa0464     lea.l      $35b6(pc), a0
003154: 2208         move.l     a0, d1
003156: 41ef0078     lea.l      $78(a7), a0
00315a: 2008         move.l     a0, d0
00315c: 61000b68     bsr.w      $3cc6
003160: 588f         addq.l     #$4, a7
003162: 7001         moveq      #$1, d0
003164: b0ae8658     cmp.l      -$79a8(a6), d0
003168: 6c10         bge.b      $317a
00316a: 41ef0074     lea.l      $74(a7), a0
00316e: 2208         move.l     a0, d1
003170: 41fa0447     lea.l      $35b9(pc), a0
003174: 2008         move.l     a0, d0
003176: 61000b46     bsr.w      $3cbe
00317a: 7203         moveq      #$3, d1
00317c: 41ef0074     lea.l      $74(a7), a0
003180: 2008         move.l     a0, d0
003182: 61000b82     bsr.w      $3d06
003186: 322f002c     move.w     $2c(a7), d1
00318a: 48c1         ext.l      d1
00318c: e589         lsl.l      #$2, d1
00318e: 41ee868a     lea.l      -$7976(a6), a0
003192: 31801800     move.w     d0, (a0, d1.l)
003196: 6c30         bge.b      $31c8
003198: 7001         moveq      #$1, d0
00319a: b0ae8658     cmp.l      -$79a8(a6), d0
00319e: 6c0001b0     bge.w      $3350
0031a2: 302f002c     move.w     $2c(a7), d0
0031a6: 48c0         ext.l      d0
0031a8: e588         lsl.l      #$2, d0
0031aa: 41ee868a     lea.l      -$7976(a6), a0
0031ae: 30700800     movea.w    (a0, d0.l), a0
0031b2: 2f08         move.l     a0, -(a7)
0031b4: 222f004a     move.l     $4a(a7), d1
0031b8: 41fa0418     lea.l      $35d2(pc), a0
0031bc: 2008         move.l     a0, d0
0031be: 61000afe     bsr.w      $3cbe
0031c2: 588f         addq.l     #$4, a7
0031c4: 6000018a     bra.w      $3350
0031c8: 302f002c     move.w     $2c(a7), d0
0031cc: 48c0         ext.l      d0
0031ce: e588         lsl.l      #$2, d0
0031d0: 41ee868a     lea.l      -$7976(a6), a0
0031d4: 2400         move.l     d0, d2
0031d6: 42a7         clr.l      -(a7)
0031d8: 302f0030     move.w     $30(a7), d0
0031dc: 48c0         ext.l      d0
0031de: e588         lsl.l      #$2, d0
0031e0: 43ee868a     lea.l      -$7976(a6), a1
0031e4: 32710800     movea.w    (a1, d0.l), a1
0031e8: 2209         move.l     a1, d1
0031ea: 203c0000ff0e move.l     #$ff0e, d0
0031f0: 61000842     bsr.w      $3a34
0031f4: 588f         addq.l     #$4, a7
0031f6: 2240         movea.l    d0, a1
0031f8: 7000         moveq      #$0, d0
0031fa: 1011         move.b     (a1), d0
0031fc: 31802802     move.w     d0, $2(a0, d2.l)
003200: 302f002c     move.w     $2c(a7), d0
003204: 48c0         ext.l      d0
003206: e588         lsl.l      #$2, d0
003208: 41ee868a     lea.l      -$7976(a6), a0
00320c: 30300802     move.w     $2(a0, d0.l), d0
003210: 48c0         ext.l      d0
003212: b0af0046     cmp.l      $46(a7), d0
003216: 6642         bne.b      $325a
003218: 7001         moveq      #$1, d0
00321a: b0ae8658     cmp.l      -$79a8(a6), d0
00321e: 6c0e         bge.b      $322e
003220: 222f00ac     move.l     $ac(a7), d1
003224: 41fa03bf     lea.l      $35e5(pc), a0
003228: 2008         move.l     a0, d0
00322a: 61000a92     bsr.w      $3cbe
00322e: 306f00de     movea.w    $de(a7), a0
003232: 2f08         move.l     a0, -(a7)
003234: 306f00de     movea.w    $de(a7), a0
003238: 2f08         move.l     a0, -(a7)
00323a: 2f2f00dc     move.l     $dc(a7), -(a7)
00323e: 2f2f00dc     move.l     $dc(a7), -(a7)
003242: 2f2f00dc     move.l     $dc(a7), -(a7)
003246: 222f00c0     move.l     $c0(a7), d1
00324a: 202f00bc     move.l     $bc(a7), d0
00324e: 61000b06     bsr.w      $3d56
003252: 4fef0014     lea.l      $14(a7), a7
003256: 6000030a     bra.w      $3562
00325a: 4a6e867c     tst.w      -$7984(a6)
00325e: 6608         bne.b      $3268
003260: 610014f4     bsr.w      $4756
003264: 3d40867c     move.w     d0, -$7984(a6)
003268: 42ae817a     clr.l      -$7e86(a6)
00326c: 306e867c     movea.w    -$7984(a6), a0
003270: 2008         move.l     a0, d0
003272: 61000776     bsr.w      $39ea
003276: 2d40817a     move.l     d0, -$7e86(a6)
00327a: 7001         moveq      #$1, d0
00327c: b0ae8658     cmp.l      -$79a8(a6), d0
003280: 6c0e         bge.b      $3290
003282: 222e817a     move.l     -$7e86(a6), d1
003286: 41fa0384     lea.l      $360c(pc), a0
00328a: 2008         move.l     a0, d0
00328c: 61000a30     bsr.w      $3cbe
003290: 41fafdb4     lea.l      $3046(pc), a0
003294: 2008         move.l     a0, d0
003296: 610002d8     bsr.w      $3570
00329a: 306f00de     movea.w    $de(a7), a0
00329e: 2f08         move.l     a0, -(a7)
0032a0: 42a7         clr.l      -(a7)
0032a2: 42a7         clr.l      -(a7)
0032a4: 2f2f00dc     move.l     $dc(a7), -(a7)
0032a8: 486e865c     pea.l      -$79a4(a6)
0032ac: 41fa0374     lea.l      $3622(pc), a0
0032b0: 2208         move.l     a0, d1
0032b2: 41fa1446     lea.l      $46fa(pc), a0
0032b6: 2008         move.l     a0, d0
0032b8: 61000a9c     bsr.w      $3d56
0032bc: 4fef0014     lea.l      $14(a7), a7
0032c0: 2f40005e     move.l     d0, $5e(a7)
0032c4: 6f00008a     ble.w      $3350
0032c8: 2f7c000200000056 move.l     #$20000, $56(a7)
0032d0: 42af005a     clr.l      $5a(a7)
0032d4: 2f6f00d40062 move.l     $d4(a7), $62(a7)
0032da: 3f6f00da0066 move.w     $da(a7), $66(a7)
0032e0: 3f6f00de0068 move.w     $de(a7), $68(a7)
0032e6: 3f6f002c006c move.w     $2c(a7), $6c(a7)
0032ec: 3f6e867c006a move.w     -$7984(a6), $6a(a7)
0032f2: 7001         moveq      #$1, d0
0032f4: 2f40004a     move.l     d0, $4a(a7)
0032f8: 42af0042     clr.l      $42(a7)
0032fc: 6004         bra.b      $3302
0032fe: 52af004a     addq.l     #$1, $4a(a7)
003302: 202f0042     move.l     $42(a7), d0
003306: 52af0042     addq.l     #$1, $42(a7)
00330a: e588         lsl.l      #$2, d0
00330c: 206f00cc     movea.l    $cc(a7), a0
003310: 4ab00800     tst.l      (a0, d0.l)
003314: 66e8         bne.b      $32fe
003316: 52af004a     addq.l     #$1, $4a(a7)
00331a: 42af0042     clr.l      $42(a7)
00331e: 6004         bra.b      $3324
003320: 52af004a     addq.l     #$1, $4a(a7)
003324: 202f0042     move.l     $42(a7), d0
003328: 52af0042     addq.l     #$1, $42(a7)
00332c: e588         lsl.l      #$2, d0
00332e: 206f00d0     movea.l    $d0(a7), a0
003332: 4ab00800     tst.l      (a0, d0.l)
003336: 66e8         bne.b      $3320
003338: 52af004a     addq.l     #$1, $4a(a7)
00333c: 202f004a     move.l     $4a(a7), d0
003340: e788         lsl.l      #$3, d0
003342: 7214         moveq      #$14, d1
003344: d081         add.l      d1, d0
003346: 61000a32     bsr.w      $3d7a
00334a: 2440         movea.l    d0, a2
00334c: 4a80         tst.l      d0
00334e: 6606         bne.b      $3356
003350: 70ff         moveq      #$ff, d0
003352: 6000020e     bra.w      $3562
003356: 202f004a     move.l     $4a(a7), d0
00335a: 5280         addq.l     #$1, d0
00335c: 2480         move.l     d0, (a2)
00335e: 257c000000080004 move.l     #$8, $4(a2)
003366: 41ef0020     lea.l      $20(a7), a0
00336a: 25480008     move.l     a0, $8(a2)
00336e: 700c         moveq      #$c, d0
003370: d08a         add.l      a2, d0
003372: 2640         movea.l    d0, a3
003374: 41ef004e     lea.l      $4e(a7), a0
003378: 27480004     move.l     a0, $4(a3)
00337c: 26bc00000020 move.l     #$20, (a3)
003382: 508b         addq.l     #$8, a3
003384: 276f00ac0004 move.l     $ac(a7), $4(a3)
00338a: 202f00ac     move.l     $ac(a7), d0
00338e: 61000a8a     bsr.w      $3e1a
003392: 5280         addq.l     #$1, d0
003394: 2680         move.l     d0, (a3)
003396: 508b         addq.l     #$8, a3
003398: 42af0042     clr.l      $42(a7)
00339c: 605a         bra.b      $33f8
00339e: 7001         moveq      #$1, d0
0033a0: b0ae8658     cmp.l      -$79a8(a6), d0
0033a4: 6c26         bge.b      $33cc
0033a6: 222f0042     move.l     $42(a7), d1
0033aa: 41fa027d     lea.l      $3629(pc), a0
0033ae: 2008         move.l     a0, d0
0033b0: 6100090c     bsr.w      $3cbe
0033b4: 202f0042     move.l     $42(a7), d0
0033b8: e588         lsl.l      #$2, d0
0033ba: 206f00cc     movea.l    $cc(a7), a0
0033be: 22300800     move.l     (a0, d0.l), d1
0033c2: 41fa0285     lea.l      $3649(pc), a0
0033c6: 2008         move.l     a0, d0
0033c8: 610008f4     bsr.w      $3cbe
0033cc: 202f0042     move.l     $42(a7), d0
0033d0: e588         lsl.l      #$2, d0
0033d2: 206f00cc     movea.l    $cc(a7), a0
0033d6: 277008000004 move.l     (a0, d0.l), $4(a3)
0033dc: 202f0042     move.l     $42(a7), d0
0033e0: 52af0042     addq.l     #$1, $42(a7)
0033e4: e588         lsl.l      #$2, d0
0033e6: 206f00cc     movea.l    $cc(a7), a0
0033ea: 20300800     move.l     (a0, d0.l), d0
0033ee: 61000a2a     bsr.w      $3e1a
0033f2: 5280         addq.l     #$1, d0
0033f4: 2680         move.l     d0, (a3)
0033f6: 508b         addq.l     #$8, a3
0033f8: 202f0042     move.l     $42(a7), d0
0033fc: e588         lsl.l      #$2, d0
0033fe: 206f00cc     movea.l    $cc(a7), a0
003402: 4ab00800     tst.l      (a0, d0.l)
003406: 6696         bne.b      $339e
003408: 41fa024e     lea.l      $3658(pc), a0
00340c: 27480004     move.l     a0, $4(a3)
003410: 26bc00000001 move.l     #$1, (a3)
003416: 508b         addq.l     #$8, a3
003418: 42af0042     clr.l      $42(a7)
00341c: 604c         bra.b      $346a
00341e: 7001         moveq      #$1, d0
003420: b0ae8658     cmp.l      -$79a8(a6), d0
003424: 6c18         bge.b      $343e
003426: 202f0042     move.l     $42(a7), d0
00342a: e588         lsl.l      #$2, d0
00342c: 206f00d0     movea.l    $d0(a7), a0
003430: 22300800     move.l     (a0, d0.l), d1
003434: 41fa0223     lea.l      $3659(pc), a0
003438: 2008         move.l     a0, d0
00343a: 61000882     bsr.w      $3cbe
00343e: 202f0042     move.l     $42(a7), d0
003442: e588         lsl.l      #$2, d0
003444: 206f00d0     movea.l    $d0(a7), a0
003448: 277008000004 move.l     (a0, d0.l), $4(a3)
00344e: 202f0042     move.l     $42(a7), d0
003452: 52af0042     addq.l     #$1, $42(a7)
003456: e588         lsl.l      #$2, d0
003458: 206f00d0     movea.l    $d0(a7), a0
00345c: 20300800     move.l     (a0, d0.l), d0
003460: 610009b8     bsr.w      $3e1a
003464: 5280         addq.l     #$1, d0
003466: 2680         move.l     d0, (a3)
003468: 508b         addq.l     #$8, a3
00346a: 202f0042     move.l     $42(a7), d0
00346e: e588         lsl.l      #$2, d0
003470: 206f00d0     movea.l    $d0(a7), a0
003474: 4ab00800     tst.l      (a0, d0.l)
003478: 66a4         bne.b      $341e
00347a: 41fa01ec     lea.l      $3668(pc), a0
00347e: 27480004     move.l     a0, $4(a3)
003482: 26bc00000001 move.l     #$1, (a3)
003488: 508b         addq.l     #$8, a3
00348a: 7001         moveq      #$1, d0
00348c: 61000f02     bsr.w      $4390
003490: 42ae8172     clr.l      -$7e8e(a6)
003494: 600a         bra.b      $34a0
003496: 52ae8172     addq.l     #$1, -$7e8e(a6)
00349a: 7001         moveq      #$1, d0
00349c: 61000ef2     bsr.w      $4390
0034a0: 4aae8176     tst.l      -$7e8a(a6)
0034a4: 67f0         beq.b      $3496
0034a6: 7064         moveq      #$64, d0
0034a8: b0ae8172     cmp.l      -$7e8e(a6), d0
0034ac: 6e0e         bgt.b      $34bc
0034ae: 222e8172     move.l     -$7e8e(a6), d1
0034b2: 41fa01b5     lea.l      $3669(pc), a0
0034b6: 2008         move.l     a0, d0
0034b8: 61000804     bsr.w      $3cbe
0034bc: 4aae817a     tst.l      -$7e86(a6)
0034c0: 6708         beq.b      $34ca
0034c2: 202e817a     move.l     -$7e86(a6), d0
0034c6: 610000a8     bsr.w      $3570
0034ca: 4852         pea.l      (a2)
0034cc: 302f0030     move.w     $30(a7), d0
0034d0: 48c0         ext.l      d0
0034d2: e588         lsl.l      #$2, d0
0034d4: 41ee868a     lea.l      -$7976(a6), a0
0034d8: 30700800     movea.w    (a0, d0.l), a0
0034dc: 2208         move.l     a0, d1
0034de: 203c0000ff05 move.l     #$ff05, d0
0034e4: 610005b2     bsr.w      $3a98
0034e8: 588f         addq.l     #$4, a7
0034ea: 2f40003a     move.l     d0, $3a(a7)
0034ee: 6c08         bge.b      $34f8
0034f0: 70ff         moveq      #$ff, d0
0034f2: 2f40002e     move.l     d0, $2e(a7)
0034f6: 6060         bra.b      $3558
0034f8: 2f2f003a     move.l     $3a(a7), -(a7)
0034fc: 302f0030     move.w     $30(a7), d0
003500: 48c0         ext.l      d0
003502: e588         lsl.l      #$2, d0
003504: 41ee868a     lea.l      -$7976(a6), a0
003508: 30700800     movea.w    (a0, d0.l), a0
00350c: 2208         move.l     a0, d1
00350e: 203c0000ff06 move.l     #$ff06, d0
003514: 61000582     bsr.w      $3a98
003518: 588f         addq.l     #$4, a7
00351a: 2f40002e     move.l     d0, $2e(a7)
00351e: 6c10         bge.b      $3530
003520: 70ff         moveq      #$ff, d0
003522: 2f40002e     move.l     d0, $2e(a7)
003526: 2d7c00000080800c move.l     #$80, -$7ff4(a6)
00352e: 6028         bra.b      $3558
003530: 2f6f0024002e move.l     $24(a7), $2e(a7)
003536: 4aaf002e     tst.l      $2e(a7)
00353a: 6c16         bge.b      $3552
00353c: 223c00008000 move.l     #$8000, d1
003542: 202f005e     move.l     $5e(a7), d0
003546: 61001150     bsr.w      $4698
00354a: 2d6f0020800c move.l     $20(a7), -$7ff4(a6)
003550: 6006         bra.b      $3558
003552: 1f6f002d002e move.b     $2d(a7), $2e(a7)
003558: 200a         move.l     a2, d0
00355a: 6100082a     bsr.w      $3d86
00355e: 202f002e     move.l     $2e(a7), d0
003562: 4fef00a8     lea.l      $a8(a7), a7
003566: 4ced0f04ffec movem.l    -$14(a5), d2/a0-a3
00356c: 4e5d         unlk       a5
00356e: 4e75         rts        
003570: 4e550000     link.w     a5, #$0
003574: 48e78000     movem.l    d0, -(a7)
003578: 2d57869a     move.l     (a7), -$7966(a6)
00357c: 2017         move.l     (a7), d0
00357e: 6100120e     bsr.w      $478e
003582: 4e5d         unlk       a5
003584: 4e75         rts        
003586: 5369676e     subq.w     #$1, $676e(a1)
00358a: 616c         bsr.b      $35f8
00358c: 2072656365697665642c movea.l    ([$6569, a2], $7665642c), a0
003596: 2063         movea.l    -(a3), a0
003598: 6f64         ble.b      $35fe
00359a: 653d         bcs.b      $35d9
00359c: 2025         move.l     -(a5), d0
00359e: 780d         moveq      #$d, d4
0035a0: 007365727665 ori.w      #$6572, $65(a3, d7.w)
0035a6: 7200         moveq      #$0, d1
0035a8: 3200         move.w     d0, d1
0035aa: 3000         move.w     d0, d0
0035ac: 2f633000     move.l     -(a3), $3000(a7)
0035b0: 3000         move.w     d0, d0
0035b2: 3000         move.w     d0, d0
0035b4: 3000         move.w     d0, d0
0035b6: 2573004f7065 move.l     $4f(a3, d0.w), $7065(a2)
0035bc: 6e20         bgt.b      $35de
0035be: 6361         bls.b      $3621
0035c0: 726f         moveq      #$6f, d1
0035c2: 7370         .dc.w      $7370
0035c4: 6174         bsr.b      $363a
0035c6: 6820         bvc.b      $35e8
0035c8: 6e61         bgt.b      $362b
0035ca: 6d65         blt.b      $3631
0035cc: 6420         bcc.b      $35ee
0035ce: 25730d007061 move.l     (a3, d0.l * 4), $7061(a2)
0035d4: 7468         moveq      #$68, d2
0035d6: 6964         bvs.b      $363c
0035d8: 5b25         subq.b     #$5, -(a5)
0035da: 645d         bcc.b      $3639
0035dc: 206d6772     movea.l    $6772(a5), a0
0035e0: 3d25         move.w     -(a5), -(a6)
0035e2: 640d         bcc.b      $35f1
0035e4: 00666f72     ori.w      #$6f72, -(a6)
0035e8: 6b69         bmi.b      $3653
0035ea: 6e67         bgt.b      $3653
0035ec: 2070726f     movea.l    $6f(a0, d7.w), a0
0035f0: 6365         bls.b      $3657
0035f2: 7373         .dc.w      $7373
0035f4: 206c6f63     movea.l    $6f63(a4), a0
0035f8: 616c         bsr.b      $3666
0035fa: 6c79         bge.b      $3675
0035fc: 2c20         move.l     -(a0), d6
0035fe: 6d6f         blt.b      $366f
003600: 646e         bcc.b      $3670
003602: 616d         bsr.b      $3671
003604: 6520         bcs.b      $3626
003606: 3d20         move.w     -(a0), -(a6)
003608: 25730d006f6c move.l     (a3, d0.l * 4), $6f6c(a2)
00360e: 6420         bcc.b      $3630
003610: 6963         bvs.b      $3675
003612: 7074         moveq      #$74, d0
003614: 20766563746f72203d20 movea.l    ([$746f, a6], $72203d20), a0
00361e: 25780d007365 move.l     $d00.w, $7365(a2)
003624: 7276         moveq      #$76, d1
003626: 6572         bcs.b      $369a
003628: 00656e74     ori.w      #$6e74, -(a5)
00362c: 6572         bcs.b      $36a0
00362e: 6564         bcs.b      $3694
003630: 2061         movea.l    -(a1), a0
003632: 7267         moveq      #$67, d1
003634: 6c69         bge.b      $369f
003636: 7374         .dc.w      $7374
003638: 206c6f6f     movea.l    $6f6f(a4), a0
00363c: 702c         moveq      #$2c, d0
00363e: 20696e64     movea.l    $6e64(a1), a0
003642: 6578         bcs.b      $36bc
003644: 3d25         move.w     -(a5), -(a6)
003646: 640d         bcc.b      $3655
003648: 00415247     ori.w      #$5247, d1
00364c: 4c49         .dc.w      $4c49
00364e: 5354         subq.w     #$1, (a4)
003650: 5b695d3d     subq.w     #$5, $5d3d(a1)
003654: 25730d000045 move.l     (a3, d0.l * 4), $45(a2)
00365a: 4e564c49     link.w     a6, #$4c49
00365e: 5354         subq.w     #$1, (a4)
003660: 5b695d3d     subq.w     #$5, $5d3d(a1)
003664: 25730d000073 move.l     (a3, d0.l * 4), $73(a2)
00366a: 796e         .dc.w      $796e
00366c: 6368         bls.b      $36d6
00366e: 726f         moveq      #$6f, d1
003670: 6e69         bgt.b      $36db
003672: 7369         .dc.w      $7369
003674: 6e67         bgt.b      $36dd
003676: 2073657276657220746f movea.l    ([$76657220, a3], $746f), a0
003680: 6f6b         ble.b      $36ed
003682: 2025         move.l     -(a5), d0
003684: 6420         bcc.b      $36a6
003686: 7469         moveq      #$69, d2
003688: 636b         bls.b      $36f5
00368a: 730d         .dc.w      $730d
00368c: 00004e55     ori.b      #$55, d0
003690: 000048e7     ori.b      #$e7, d0
003694: c080         and.l      d0, d0
003696: 4fefffdc     lea.l      -$24(a7), a7
00369a: 61000374     bsr.w      $3a10
00369e: 2f400014     move.l     d0, $14(a7)
0036a2: 206f0014     movea.l    $14(a7), a0
0036a6: 2f28001a     move.l     $1a(a0), -(a7)
0036aa: 41fa00c8     lea.l      $3774(pc), a0
0036ae: 2208         move.l     a0, d1
0036b0: 41ef0004     lea.l      $4(a7), a0
0036b4: 2008         move.l     a0, d0
0036b6: 6100060e     bsr.w      $3cc6
0036ba: 588f         addq.l     #$4, a7
0036bc: 7203         moveq      #$3, d1
0036be: 41d7         lea.l      (a7), a0
0036c0: 2008         move.l     a0, d0
0036c2: 61000642     bsr.w      $3d06
0036c6: 2f400020     move.l     d0, $20(a7)
0036ca: 6c000016     bge.w      $36e2
0036ce: 202f0024     move.l     $24(a7), d0
0036d2: 61000048     bsr.w      $371c
0036d6: 4fef0024     lea.l      $24(a7), a7
0036da: 60000036     bra.w      $3712
0036de: 6000002e     bra.w      $370e
0036e2: 2f2f0024     move.l     $24(a7), -(a7)
0036e6: 222f0024     move.l     $24(a7), d1
0036ea: 203c0000ff20 move.l     #$ff20, d0
0036f0: 61000342     bsr.w      $3a34
0036f4: 588f         addq.l     #$4, a7
0036f6: 2f40001c     move.l     d0, $1c(a7)
0036fa: 202f0020     move.l     $20(a7), d0
0036fe: 61000636     bsr.w      $3d36
003702: 202f001c     move.l     $1c(a7), d0
003706: 4fef0024     lea.l      $24(a7), a7
00370a: 60000006     bra.w      $3712
00370e: 4fef0024     lea.l      $24(a7), a7
003712: 4ced0102fff8 movem.l    -$8(a5), d1/a0
003718: 4e5d         unlk       a5
00371a: 4e75         rts        
00371c: 4e550000     link.w     a5, #$0
003720: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
003724: 2800         move.l     d0, d4
003726: 7204         moveq      #$4, d1
003728: 7044         moveq      #$44, d0
00372a: 61000d8c     bsr.w      $44b8
00372e: 2440         movea.l    d0, a2
003730: 3a1a         move.w     (a2)+, d5
003732: 548a         addq.l     #$2, a2
003734: 6000002a     bra.w      $3760
003738: 4a92         tst.l      (a2)
00373a: 66000006     bne.w      $3742
00373e: 6000001e     bra.w      $375e
003742: 2052         movea.l    (a2), a0
003744: 7000         moveq      #$0, d0
003746: 3010         move.w     (a0), d0
003748: 3204         move.w     d4, d1
00374a: 48c1         ext.l      d1
00374c: b081         cmp.l      d1, d0
00374e: 6600000e     bne.w      $375e
003752: 2052         movea.l    (a2), a0
003754: 7000         moveq      #$0, d0
003756: 30280002     move.w     $2(a0), d0
00375a: 6000000a     bra.w      $3766
00375e: 588a         addq.l     #$4, a2
003760: 5345         subq.w     #$1, d5
003762: 6c00ffd4     bge.w      $3738
003766: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
00376c: 4e5d         unlk       a5
00376e: 4e75         rts        
003770: 4afb         .dc.w      $4afb
003772: 00042f25     ori.b      #$25, d4
003776: 7300         .dc.w      $7300
003778: 4e550000     link.w     a5, #$0
00377c: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
003780: 2440         movea.l    d0, a2
003782: 2641         movea.l    d1, a3
003784: 558f         subq.l     #$2, a7
003786: 1012         move.b     (a2), d0
003788: 1680         move.b     d0, (a3)
00378a: 0c00002f     cmpi.b     #$2f, d0
00378e: 6704         beq.b      $3794
003790: 7000         moveq      #$0, d0
003792: 601e         bra.b      $37b2
003794: 528a         addq.l     #$1, a2
003796: 528b         addq.l     #$1, a3
003798: 1012         move.b     (a2), d0
00379a: 1680         move.b     d0, (a3)
00379c: 1f400001     move.b     d0, $1(a7)
0037a0: 0c00002f     cmpi.b     #$2f, d0
0037a4: 6706         beq.b      $37ac
0037a6: 4a2f0001     tst.b      $1(a7)
0037aa: 66e8         bne.b      $3794
0037ac: 4213         clr.b      (a3)
0037ae: 528a         addq.l     #$1, a2
0037b0: 200a         move.l     a2, d0
0037b2: 548f         addq.l     #$2, a7
0037b4: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0037ba: 4e5d         unlk       a5
0037bc: 4e75         rts        
0037be: 4e550000     link.w     a5, #$0
0037c2: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0037c6: 2440         movea.l    d0, a2
0037c8: 4aae867e     tst.l      -$7982(a6)
0037cc: 6608         bne.b      $37d6
0037ce: 61000240     bsr.w      $3a10
0037d2: 2d40867e     move.l     d0, -$7982(a6)
0037d6: 7800         moveq      #$0, d4
0037d8: 601a         bra.b      $37f4
0037da: 2004         move.l     d4, d0
0037dc: e588         lsl.l      #$2, d0
0037de: 206e867e     movea.l    -$7982(a6), a0
0037e2: 2230081a     move.l     $1a(a0, d0.l), d1
0037e6: 200a         move.l     a2, d0
0037e8: 5280         addq.l     #$1, d0
0037ea: 610005ba     bsr.w      $3da6
0037ee: 4a80         tst.l      d0
0037f0: 6710         beq.b      $3802
0037f2: 5284         addq.l     #$1, d4
0037f4: 206e867e     movea.l    -$7982(a6), a0
0037f8: 30280010     move.w     $10(a0), d0
0037fc: 48c0         ext.l      d0
0037fe: b084         cmp.l      d4, d0
003800: 6ed8         bgt.b      $37da
003802: 206e867e     movea.l    -$7982(a6), a0
003806: 30280010     move.w     $10(a0), d0
00380a: 48c0         ext.l      d0
00380c: b084         cmp.l      d4, d0
00380e: 6e04         bgt.b      $3814
003810: 70ff         moveq      #$ff, d0
003812: 6002         bra.b      $3816
003814: 2004         move.l     d4, d0
003816: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
00381c: 4e5d         unlk       a5
00381e: 4e75         rts        
003820: 4e550000     link.w     a5, #$0
003824: 48e7c080     movem.l    d0-d1/a0, -(a7)
003828: 202f0004     move.l     $4(a7), d0
00382c: e588         lsl.l      #$2, d0
00382e: 2057         movea.l    (a7), a0
003830: 2070082a     movea.l    $2a(a0, d0.l), a0
003834: 7000         moveq      #$0, d0
003836: 10280012     move.b     $12(a0), d0
00383a: 4ced0100fffc movem.l    -$4(a5), a0
003840: 4e5d         unlk       a5
003842: 4e75         rts        
003844: 4e550000     link.w     a5, #$0
003848: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00384c: 2440         movea.l    d0, a2
00384e: 4fefffda     lea.l      -$26(a7), a7
003852: 200a         move.l     a2, d0
003854: 61000110     bsr.w      $3966
003858: 2440         movea.l    d0, a2
00385a: 0c12005f     cmpi.b     #$5f, (a2)
00385e: 660000f6     bne.w      $3956
003862: 102a0001     move.b     $1(a2), d0
003866: 1f400005     move.b     d0, $5(a7)
00386a: 0c000041     cmpi.b     #$41, d0
00386e: 6d0000a4     blt.w      $3914
003872: 4aae8682     tst.l      -$797e(a6)
003876: 6626         bne.b      $389e
003878: 7200         moveq      #$0, d1
00387a: 41fa017e     lea.l      $39fa(pc), a0
00387e: 2008         move.l     a0, d0
003880: 61000c96     bsr.w      $4518
003884: 2f400022     move.l     d0, $22(a7)
003888: 72ff         moveq      #$ff, d1
00388a: b280         cmp.l      d0, d1
00388c: 6606         bne.b      $3894
00388e: 70ff         moveq      #$ff, d0
003890: 600000c6     bra.w      $3958
003894: 7030         moveq      #$30, d0
003896: d0af0022     add.l      $22(a7), d0
00389a: 2d408682     move.l     d0, -$797e(a6)
00389e: 41ef000a     lea.l      $a(a7), a0
0038a2: 2f480006     move.l     a0, $6(a7)
0038a6: 600c         bra.b      $38b4
0038a8: 206f0006     movea.l    $6(a7), a0
0038ac: 52af0006     addq.l     #$1, $6(a7)
0038b0: 10af0005     move.b     $5(a7), (a0)
0038b4: 528a         addq.l     #$1, a2
0038b6: 1012         move.b     (a2), d0
0038b8: 1f400005     move.b     d0, $5(a7)
0038bc: 0c00005f     cmpi.b     #$5f, d0
0038c0: 66e6         bne.b      $38a8
0038c2: 206f0006     movea.l    $6(a7), a0
0038c6: 4210         clr.b      (a0)
0038c8: 202e8682     move.l     -$797e(a6), d0
0038cc: 5480         addq.l     #$2, d0
0038ce: 2f40001e     move.l     d0, $1e(a7)
0038d2: 7800         moveq      #$0, d4
0038d4: 6030         bra.b      $3906
0038d6: 41ef000a     lea.l      $a(a7), a0
0038da: 2208         move.l     a0, d1
0038dc: 202f001e     move.l     $1e(a7), d0
0038e0: 610004c4     bsr.w      $3da6
0038e4: 4a80         tst.l      d0
0038e6: 6614         bne.b      $38fc
0038e8: 206f001e     movea.l    $1e(a7), a0
0038ec: 7000         moveq      #$0, d0
0038ee: 10280013     move.b     $13(a0), d0
0038f2: 206f002a     movea.l    $2a(a7), a0
0038f6: 2080         move.l     d0, (a0)
0038f8: 528a         addq.l     #$1, a2
0038fa: 6056         bra.b      $3952
0038fc: 06af00000014001e addi.l     #$14, $1e(a7)
003904: 5284         addq.l     #$1, d4
003906: 206e8682     movea.l    -$797e(a6), a0
00390a: 3010         move.w     (a0), d0
00390c: 48c0         ext.l      d0
00390e: b084         cmp.l      d4, d0
003910: 6ec4         bgt.b      $38d6
003912: 6042         bra.b      $3956
003914: 4297         clr.l      (a7)
003916: 6018         bra.b      $3930
003918: 2017         move.l     (a7), d0
00391a: 720a         moveq      #$a, d1
00391c: 61000876     bsr.w      $4194
003920: 122f0005     move.b     $5(a7), d1
003924: 4881         ext.w      d1
003926: 48c1         ext.l      d1
003928: d081         add.l      d1, d0
00392a: 7230         moveq      #$30, d1
00392c: 9081         sub.l      d1, d0
00392e: 2e80         move.l     d0, (a7)
003930: 528a         addq.l     #$1, a2
003932: 1012         move.b     (a2), d0
003934: 1f400005     move.b     d0, $5(a7)
003938: 0c000030     cmpi.b     #$30, d0
00393c: 6d08         blt.b      $3946
00393e: 0c2f00390005 cmpi.b     #$39, $5(a7)
003944: 6fd2         ble.b      $3918
003946: 0c1a005f     cmpi.b     #$5f, (a2)+
00394a: 660a         bne.b      $3956
00394c: 206f002a     movea.l    $2a(a7), a0
003950: 2097         move.l     (a7), (a0)
003952: 200a         move.l     a2, d0
003954: 6002         bra.b      $3958
003956: 7000         moveq      #$0, d0
003958: 4fef0026     lea.l      $26(a7), a7
00395c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
003962: 4e5d         unlk       a5
003964: 4e75         rts        
003966: 4e550000     link.w     a5, #$0
00396a: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00396e: 2440         movea.l    d0, a2
003970: 518f         subq.l     #$8, a7
003972: 0c12005f     cmpi.b     #$5f, (a2)
003976: 6764         beq.b      $39dc
003978: 0c120040     cmpi.b     #$40, (a2)
00397c: 675e         beq.b      $39dc
00397e: 0c120041     cmpi.b     #$41, (a2)
003982: 6d58         blt.b      $39dc
003984: 4aae8686     tst.l      -$797a(a6)
003988: 6620         bne.b      $39aa
00398a: 7200         moveq      #$0, d1
00398c: 41fa0076     lea.l      $3a04(pc), a0
003990: 2008         move.l     a0, d0
003992: 61000b84     bsr.w      $4518
003996: 2f400004     move.l     d0, $4(a7)
00399a: 72ff         moveq      #$ff, d1
00399c: b280         cmp.l      d0, d1
00399e: 673c         beq.b      $39dc
0039a0: 7030         moveq      #$30, d0
0039a2: d0af0004     add.l      $4(a7), d0
0039a6: 2d408686     move.l     d0, -$797a(a6)
0039aa: 202e8686     move.l     -$797a(a6), d0
0039ae: 5480         addq.l     #$2, d0
0039b0: 2e80         move.l     d0, (a7)
0039b2: 7800         moveq      #$0, d4
0039b4: 601a         bra.b      $39d0
0039b6: 220a         move.l     a2, d1
0039b8: 2017         move.l     (a7), d0
0039ba: 610003ea     bsr.w      $3da6
0039be: 4a80         tst.l      d0
0039c0: 6606         bne.b      $39c8
0039c2: 7014         moveq      #$14, d0
0039c4: d097         add.l      (a7), d0
0039c6: 6016         bra.b      $39de
0039c8: 069700000032 addi.l     #$32, (a7)
0039ce: 5284         addq.l     #$1, d4
0039d0: 206e8686     movea.l    -$797a(a6), a0
0039d4: 3010         move.w     (a0), d0
0039d6: 48c0         ext.l      d0
0039d8: b084         cmp.l      d4, d0
0039da: 6eda         bgt.b      $39b6
0039dc: 200a         move.l     a2, d0
0039de: 508f         addq.l     #$8, a7
0039e0: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0039e6: 4e5d         unlk       a5
0039e8: 4e75         rts        
0039ea: 4e550000     link.w     a5, #$0
0039ee: 48e78000     movem.l    d0, -(a7)
0039f2: 202e869a     move.l     -$7966(a6), d0
0039f6: 4e5d         unlk       a5
0039f8: 4e75         rts        
0039fa: 6361         bls.b      $3a5d
0039fc: 725f         moveq      #$5f, d1
0039fe: 6e65         bgt.b      $3a65
003a00: 7464         moveq      #$64, d2
003a02: 62006361     bhi.w      $9d65
003a06: 725f         moveq      #$5f, d1
003a08: 6465         bcc.b      $3a6f
003a0a: 7669         moveq      #$69, d3
003a0c: 6365         bls.b      $3a73
003a0e: 00002f08     ori.b      #$8, d0
003a12: 207900000000 movea.l    $0.l, a0
003a18: 41e80814     lea.l      $814(a0), a0
003a1c: 2010         move.l     (a0), d0
003a1e: 205f         movea.l    (a7)+, a0
003a20: 4e75         rts        
003a22: 2f08         move.l     a0, -(a7)
003a24: 207900000000 movea.l    $0.l, a0
003a2a: 41e80814     lea.l      $814(a0), a0
003a2e: 2008         move.l     a0, d0
003a30: 205f         movea.l    (a7)+, a0
003a32: 4e75         rts        
003a34: 48e76080     movem.l    d1-d2/a0, -(a7)
003a38: c141         exg.l      d0, d1
003a3a: 0c8100000002 cmpi.l     #$2, d1
003a40: 6716         beq.b      $3a58
003a42: 0c8100000005 cmpi.l     #$5, d1
003a48: 670e         beq.b      $3a58
003a4a: 206f0010     movea.l    $10(a7), a0
003a4e: 2408         move.l     a0, d2
003a50: 4e40         trap       #$0
003a52: 008d         .dc.w      $008d
003a54: 60000056     bra.w      $3aac
003a58: 206f0010     movea.l    $10(a7), a0
003a5c: 2408         move.l     a0, d2
003a5e: 4e40         trap       #$0
003a60: 008d         .dc.w      $008d
003a62: 2202         move.l     d2, d1
003a64: 60000046     bra.w      $3aac
003a68: 48e770a0     movem.l    d1-d3/a0/a2, -(a7)
003a6c: c141         exg.l      d0, d1
003a6e: 206f0018     movea.l    $18(a7), a0
003a72: 242f001c     move.l     $1c(a7), d2
003a76: 262f0020     move.l     $20(a7), d3
003a7a: 4e40         trap       #$0
003a7c: 008d         .dc.w      $008d
003a7e: 60000068     bra.w      $3ae8
003a82: 48e76080     movem.l    d1-d2/a0, -(a7)
003a86: c141         exg.l      d0, d1
003a88: 206f0010     movea.l    $10(a7), a0
003a8c: 242f0014     move.l     $14(a7), d2
003a90: 4e40         trap       #$0
003a92: 008e         .dc.w      $008e
003a94: 60000016     bra.w      $3aac
003a98: 48e76080     movem.l    d1-d2/a0, -(a7)
003a9c: c141         exg.l      d0, d1
003a9e: 206f0010     movea.l    $10(a7), a0
003aa2: 2408         move.l     a0, d2
003aa4: 4e40         trap       #$0
003aa6: 008e         .dc.w      $008e
003aa8: 60000002     bra.w      $3aac
003aac: 6408         bcc.b      $3ab6
003aae: 2d41800c     move.l     d1, -$7ff4(a6)
003ab2: 70ff         moveq      #$ff, d0
003ab4: 6002         bra.b      $3ab8
003ab6: 2001         move.l     d1, d0
003ab8: 4cdf0106     movem.l    (a7)+, d1-d2/a0
003abc: 4e75         rts        
003abe: 6406         bcc.b      $3ac6
003ac0: 2d41800c     move.l     d1, -$7ff4(a6)
003ac4: 70ff         moveq      #$ff, d0
003ac6: 4cdf043e     movem.l    (a7)+, d1-d5/a2
003aca: 4e75         rts        
003acc: 6406         bcc.b      $3ad4
003ace: 2d41800c     move.l     d1, -$7ff4(a6)
003ad2: 70ff         moveq      #$ff, d0
003ad4: 4cdf04fe     movem.l    (a7)+, d1-d7/a2
003ad8: 4e75         rts        
003ada: 6406         bcc.b      $3ae2
003adc: 2d41800c     move.l     d1, -$7ff4(a6)
003ae0: 70ff         moveq      #$ff, d0
003ae2: 4cdf0dfe     movem.l    (a7)+, d1-d7/a0/a2-a3
003ae6: 4e75         rts        
003ae8: 6408         bcc.b      $3af2
003aea: 2d41800c     move.l     d1, -$7ff4(a6)
003aee: 70ff         moveq      #$ff, d0
003af0: 6002         bra.b      $3af4
003af2: 2001         move.l     d1, d0
003af4: 4cdf050e     movem.l    (a7)+, d1-d3/a0/a2
003af8: 4e75         rts        
003afa: 48e74000     movem.l    d1, -(a7)
003afe: c141         exg.l      d0, d1
003b00: 4e40         trap       #$0
003b02: 005c6406     ori.w      #$6406, (a4)+
003b06: 2d41800c     move.l     d1, -$7ff4(a6)
003b0a: 70ff         moveq      #$ff, d0
003b0c: 4cdf0002     movem.l    (a7)+, d1
003b10: 4e75         rts        
003b12: 48e740e0     movem.l    d1/a0-a2, -(a7)
003b16: e340         asl.w      #$1, d0
003b18: 207900000000 movea.l    $0.l, a0
003b1e: 2268004c     movea.l    $4c(a0), a1
003b22: 45e90168     lea.l      $168(a1), a2
003b26: 30320000     move.w     (a2, d0.w), d0
003b2a: 660a         bne.b      $3b36
003b2c: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003b30: 303cffff     move.w     #$ffff, d0
003b34: 4e75         rts        
003b36: 22680048     movea.l    $48(a0), a1
003b3a: b051         cmp.w      (a1), d0
003b3c: 62f2         bhi.b      $3b30
003b3e: e540         asl.w      #$2, d0
003b40: d2c0         adda.w     d0, a1
003b42: e448         lsr.w      #$2, d0
003b44: 4a91         tst.l      (a1)
003b46: 67e8         beq.b      $3b30
003b48: 2251         movea.l    (a1), a1
003b4a: b051         cmp.w      (a1), d0
003b4c: 66e2         bne.b      $3b30
003b4e: 22690004     movea.l    $4(a1), a1
003b52: 20290008     move.l     $8(a1), d0
003b56: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003b5a: 4e75         rts        
003b5c: 48e74000     movem.l    d1, -(a7)
003b60: 203c00000000 move.l     #$0, d0
003b66: 223c00000001 move.l     #$1, d1
003b6c: 4e40         trap       #$0
003b6e: 0057640c     ori.w      #$640c, (a7)
003b72: 2d41800c     move.l     d1, -$7ff4(a6)
003b76: 70ff         moveq      #$ff, d0
003b78: 4cdf0002     movem.l    (a7)+, d1
003b7c: 4e75         rts        
003b7e: 4280         clr.l      d0
003b80: 3001         move.w     d1, d0
003b82: 4cdf0002     movem.l    (a7)+, d1
003b86: 4e75         rts        
003b88: 48e74000     movem.l    d1, -(a7)
003b8c: 203c00000000 move.l     #$0, d0
003b92: 223c00000000 move.l     #$0, d1
003b98: 4e40         trap       #$0
003b9a: 005764e0     ori.w      #$64e0, (a7)
003b9e: 60d2         bra.b      $3b72
003ba0: 48e740e0     movem.l    d1/a0-a2, -(a7)
003ba4: 207900000000 movea.l    $0.l, a0
003baa: 2268004c     movea.l    $4c(a0), a1
003bae: 4280         clr.l      d0
003bb0: 10290370     move.b     $370(a1), d0
003bb4: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003bb8: 4e75         rts        
003bba: 48e740e0     movem.l    d1/a0-a2, -(a7)
003bbe: 207900000000 movea.l    $0.l, a0
003bc4: 2268004c     movea.l    $4c(a0), a1
003bc8: 81a90374     or.l       d0, $374(a1)
003bcc: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003bd0: 4e75         rts        
003bd2: 48e740e0     movem.l    d1/a0-a2, -(a7)
003bd6: 207900000000 movea.l    $0.l, a0
003bdc: 2268004c     movea.l    $4c(a0), a1
003be0: 4480         neg.l      d0
003be2: c1a90374     and.l      d0, $374(a1)
003be6: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003bea: 4e75         rts        
003bec: 4e550000     link.w     a5, #$0
003bf0: 48e78038     movem.l    d0/a2-a4, -(a7)
003bf4: 7000         moveq      #$0, d0
003bf6: 2840         movea.l    d0, a4
003bf8: 2640         movea.l    d0, a3
003bfa: 2440         movea.l    d0, a2
003bfc: 700d         moveq      #$d, d0
003bfe: 7200         moveq      #$0, d1
003c00: 41fa0064     lea.l      $3c66(pc), a0
003c04: 47ee800c     lea.l      -$7ff4(a6), a3
003c08: 7609         moveq      #$9, d3
003c0a: 2683         move.l     d3, (a3)
003c0c: 262e8512     move.l     -$7aee(a6), d3
003c10: 242e850e     move.l     -$7af2(a6), d2
003c14: 286e869e     movea.l    -$7962(a6), a4
003c18: 4e40         trap       #$0
003c1a: 0021653e     ori.b      #$3e, -(a1)
003c1e: 4a93         tst.l      (a3)
003c20: 6718         beq.b      $3c3a
003c22: 41fa0046     lea.l      $3c6a(pc), a0
003c26: 7264         moveq      #$64, d1
003c28: 7002         moveq      #$2, d0
003c2a: 4e40         trap       #$0
003c2c: 008c         .dc.w      $008c
003c2e: 41fa0036     lea.l      $3c66(pc), a0
003c32: 72dd         moveq      #$dd, d1
003c34: 003c0001     ori.b      #$1, ccr
003c38: 6022         bra.b      $3c5c
003c3a: 3d7c0041818a move.w     #$41, -$7e76(a6)
003c40: 426e818c     clr.w      -$7e74(a6)
003c44: 3d7c000281a6 move.w     #$2, -$7e5a(a6)
003c4a: 3d7c000181a8 move.w     #$1, -$7e58(a6)
003c50: 3d7c000281c2 move.w     #$2, -$7e3e(a6)
003c56: 3d7c000281c4 move.w     #$2, -$7e3c(a6)
003c5c: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
003c62: 4e5d         unlk       a5
003c64: 4e75         rts        
003c66: 6369         bls.b      $3cd1
003c68: 6f002a2a     ble.w      $6694
003c6c: 2a2a2063     move.l     $2063(a2), d5
003c70: 696f         bvs.b      $3ce1
003c72: 20747261     movea.l    $61(a4, d7.w), a0
003c76: 7068         moveq      #$68, d0
003c78: 616e         bsr.b      $3ce8
003c7a: 646c         bcc.b      $3ce8
003c7c: 6572         bcs.b      $3cf0
003c7e: 206d6973     movea.l    $6973(a5), a0
003c82: 6d61         blt.b      $3ce5
003c84: 7463         moveq      #$63, d2
003c86: 6820         bvc.b      $3ca8
003c88: 2a2a2a2a     move.l     $2a2a(a2), d5
003c8c: 0d00         btst.l     d6, d0
003c8e: 4e4d         trap       #$d
003c90: 00004e4d     ori.b      #$4d, d0
003c94: 00014e4d     ori.b      #$4d, d1
003c98: 00024e4d     ori.b      #$4d, d2
003c9c: 00034e4d     ori.b      #$4d, d3
003ca0: 00044e4d     ori.b      #$4d, d4
003ca4: 00054e4d     ori.b      #$4d, d5
003ca8: 00064e4d     ori.b      #$4d, d6
003cac: 00074e4d     ori.b      #$4d, d7
003cb0: 0008         .dc.w      $0008
003cb2: 4e4d         trap       #$d
003cb4: 0009         .dc.w      $0009
003cb6: 4e4d         trap       #$d
003cb8: 000a         .dc.w      $000a
003cba: 4e4d         trap       #$d
003cbc: 000b         .dc.w      $000b
003cbe: 4e4d         trap       #$d
003cc0: 000c         .dc.w      $000c
003cc2: 4e4d         trap       #$d
003cc4: 000d         .dc.w      $000d
003cc6: 4e4d         trap       #$d
003cc8: 000e         .dc.w      $000e
003cca: 4e4d         trap       #$d
003ccc: 000f         .dc.w      $000f
003cce: 4e4d         trap       #$d
003cd0: 00104e4d     ori.b      #$4d, (a0)
003cd4: 00114e4d     ori.b      #$4d, (a1)
003cd8: 00124e4d     ori.b      #$4d, (a2)
003cdc: 00134e4d     ori.b      #$4d, (a3)
003ce0: 00144e4d     ori.b      #$4d, (a4)
003ce4: 00154e4d     ori.b      #$4d, (a5)
003ce8: 00164e4d     ori.b      #$4d, (a6)
003cec: 00174e4d     ori.b      #$4d, (a7)
003cf0: 00184e4d     ori.b      #$4d, (a0)+
003cf4: 00194e4d     ori.b      #$4d, (a1)+
003cf8: 001a4e4d     ori.b      #$4d, (a2)+
003cfc: 001b4e4d     ori.b      #$4d, (a3)+
003d00: 001c4e4d     ori.b      #$4d, (a4)+
003d04: 001d4e4d     ori.b      #$4d, (a5)+
003d08: 001e4e4d     ori.b      #$4d, (a6)+
003d0c: 001f4e4d     ori.b      #$4d, (a7)+
003d10: 00204e4d     ori.b      #$4d, -(a0)
003d14: 00214e4d     ori.b      #$4d, -(a1)
003d18: 00224e4d     ori.b      #$4d, -(a2)
003d1c: 00234e4d     ori.b      #$4d, -(a3)
003d20: 00244e4d     ori.b      #$4d, -(a4)
003d24: 00254e4d     ori.b      #$4d, -(a5)
003d28: 00264e4d     ori.b      #$4d, -(a6)
003d2c: 00274e4d     ori.b      #$4d, -(a7)
003d30: 00284e4d0029 ori.b      #$4d, $29(a0)
003d36: 4e4d         trap       #$d
003d38: 002a4e4d002b ori.b      #$4d, $2b(a2)
003d3e: 4e4d         trap       #$d
003d40: 002c4e4d002d ori.b      #$4d, $2d(a4)
003d46: 4e4d         trap       #$d
003d48: 002e4e4d002f ori.b      #$4d, $2f(a6)
003d4e: 4e4d         trap       #$d
003d50: 00304e4d0031 ori.b      #$4d, $31(a0, d0.w)
003d56: 4e4d         trap       #$d
003d58: 00324e4d0033 ori.b      #$4d, $33(a2, d0.w)
003d5e: 4e4d         trap       #$d
003d60: 00344e4d0035 ori.b      #$4d, $35(a4, d0.w)
003d66: 4e4d         trap       #$d
003d68: 00364e4d0037 ori.b      #$4d, $37(a6, d0.w)
003d6e: 4e4d         trap       #$d
003d70: 00384e4d0039 ori.b      #$4d, $39.w
003d76: 4e4d         trap       #$d
003d78: 003a         .dc.w      $003a
003d7a: 4e4d         trap       #$d
003d7c: 003b         .dc.w      $003b
003d7e: 4e4d         trap       #$d
003d80: 003c         .dc.w      $003c
003d82: 4e4d         trap       #$d
003d84: 003d         .dc.w      $003d
003d86: 4e4d         trap       #$d
003d88: 003e         .dc.w      $003e
003d8a: 4e4d         trap       #$d
003d8c: 003f         .dc.w      $003f
003d8e: 4e4d         trap       #$d
003d90: 00414e4d     ori.w      #$4e4d, d1
003d94: 00424e4d     ori.w      #$4e4d, d2
003d98: 00434e4d     ori.w      #$4e4d, d3
003d9c: 00444e4d     ori.w      #$4e4d, d4
003da0: 00454e4d     ori.w      #$4e4d, d5
003da4: 00402f08     ori.w      #$2f08, d0
003da8: 2040         movea.l    d0, a0
003daa: b300         eor.b      d1, d0
003dac: 08000000     btst.b     #$0, d0
003db0: 6652         bne.b      $3e04
003db2: 08010000     btst.b     #$0, d1
003db6: c389         exg.l      d1, a1
003db8: 6718         beq.b      $3dd2
003dba: b109         cmpm.b     (a1)+, (a0)+
003dbc: 6530         bcs.b      $3dee
003dbe: 6220         bhi.b      $3de0
003dc0: 4a28ffff     tst.b      -$1(a0)
003dc4: 660c         bne.b      $3dd2
003dc6: 6034         bra.b      $3dfc
003dc8: 4a00         tst.b      d0
003dca: 6730         beq.b      $3dfc
003dcc: 0c4000ff     cmpi.w     #$ff, d0
003dd0: 632a         bls.b      $3dfc
003dd2: 3018         move.w     (a0)+, d0
003dd4: b059         cmp.w      (a1)+, d0
003dd6: 67f0         beq.b      $3dc8
003dd8: 650e         bcs.b      $3de8
003dda: 0c4000ff     cmpi.w     #$ff, d0
003dde: 6316         bls.b      $3df6
003de0: 7001         moveq      #$1, d0
003de2: 205f         movea.l    (a7)+, a0
003de4: c389         exg.l      d1, a1
003de6: 4e75         rts        
003de8: 0c4000ff     cmpi.w     #$ff, d0
003dec: 6308         bls.b      $3df6
003dee: 70ff         moveq      #$ff, d0
003df0: 205f         movea.l    (a7)+, a0
003df2: c389         exg.l      d1, a1
003df4: 4e75         rts        
003df6: 4a29fffe     tst.b      -$2(a1)
003dfa: 66f2         bne.b      $3dee
003dfc: 7000         moveq      #$0, d0
003dfe: 205f         movea.l    (a7)+, a0
003e00: c389         exg.l      d1, a1
003e02: 4e75         rts        
003e04: c389         exg.l      d1, a1
003e06: 7000         moveq      #$0, d0
003e08: 1018         move.b     (a0)+, d0
003e0a: b019         cmp.b      (a1)+, d0
003e0c: 56c8fffa     dbne       d0, $3e08
003e10: 65dc         bcs.b      $3dee
003e12: 5240         addq.w     #$1, d0
003e14: 205f         movea.l    (a7)+, a0
003e16: c389         exg.l      d1, a1
003e18: 4e75         rts        
003e1a: 2f08         move.l     a0, -(a7)
003e1c: 2040         movea.l    d0, a0
003e1e: 4a18         tst.b      (a0)+
003e20: 670c         beq.b      $3e2e
003e22: 4a18         tst.b      (a0)+
003e24: 6708         beq.b      $3e2e
003e26: 4a18         tst.b      (a0)+
003e28: 6704         beq.b      $3e2e
003e2a: 4a18         tst.b      (a0)+
003e2c: 66f0         bne.b      $3e1e
003e2e: 91c0         suba.l     d0, a0
003e30: 2008         move.l     a0, d0
003e32: 5380         subq.l     #$1, d0
003e34: 205f         movea.l    (a7)+, a0
003e36: 4e75         rts        
003e38: 2f08         move.l     a0, -(a7)
003e3a: 2040         movea.l    d0, a0
003e3c: c389         exg.l      d1, a1
003e3e: 10d9         move.b     (a1)+, (a0)+
003e40: 670c         beq.b      $3e4e
003e42: 10d9         move.b     (a1)+, (a0)+
003e44: 6708         beq.b      $3e4e
003e46: 10d9         move.b     (a1)+, (a0)+
003e48: 6704         beq.b      $3e4e
003e4a: 10d9         move.b     (a1)+, (a0)+
003e4c: 66f0         bne.b      $3e3e
003e4e: 205f         movea.l    (a7)+, a0
003e50: c389         exg.l      d1, a1
003e52: 4e75         rts        
003e54: 2f08         move.l     a0, -(a7)
003e56: 2040         movea.l    d0, a0
003e58: c389         exg.l      d1, a1
003e5a: 4a18         tst.b      (a0)+
003e5c: 670c         beq.b      $3e6a
003e5e: 4a18         tst.b      (a0)+
003e60: 6708         beq.b      $3e6a
003e62: 4a18         tst.b      (a0)+
003e64: 6704         beq.b      $3e6a
003e66: 4a18         tst.b      (a0)+
003e68: 66f0         bne.b      $3e5a
003e6a: 1159ffff     move.b     (a1)+, -$1(a0)
003e6e: 66ce         bne.b      $3e3e
003e70: 60dc         bra.b      $3e4e
003e72: 2f08         move.l     a0, -(a7)
003e74: 2040         movea.l    d0, a0
003e76: c389         exg.l      d1, a1
003e78: 10d9         move.b     (a1)+, (a0)+
003e7a: 6afc         bpl.b      $3e78
003e7c: 4210         clr.b      (a0)
003e7e: 0220007f     andi.b     #$7f, -(a0)
003e82: 205f         movea.l    (a7)+, a0
003e84: c389         exg.l      d1, a1
003e86: 4e75         rts        
003e88: 4e550000     link.w     a5, #$0
003e8c: 48e7c020     movem.l    d0-d1/a2, -(a7)
003e90: 2440         movea.l    d0, a2
003e92: 4878000a     pea.l      $a.w
003e96: 7200         moveq      #$0, d1
003e98: 200a         move.l     a2, d0
003e9a: 6100000e     bsr.w      $3eaa
003e9e: 588f         addq.l     #$4, a7
003ea0: 4ced0402fff8 movem.l    -$8(a5), d1/a2
003ea6: 4e5d         unlk       a5
003ea8: 4e75         rts        
003eaa: 4e550000     link.w     a5, #$0
003eae: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
003eb2: 2440         movea.l    d0, a2
003eb4: 2641         movea.l    d1, a3
003eb6: 282f0028     move.l     $28(a7), d4
003eba: 7a00         moveq      #$0, d5
003ebc: 7c00         moveq      #$0, d6
003ebe: 101a         move.b     (a2)+, d0
003ec0: 4880         ext.w      d0
003ec2: 48c0         ext.l      d0
003ec4: 41ee86a3     lea.l      -$795d(a6), a0
003ec8: 10300800     move.b     (a0, d0.l), d0
003ecc: 4880         ext.w      d0
003ece: 08000004     btst.b     #$4, d0
003ed2: 66ea         bne.b      $3ebe
003ed4: 6006         bra.b      $3edc
003ed6: 5285         addq.l     #$1, d5
003ed8: 528a         addq.l     #$1, a2
003eda: 6010         bra.b      $3eec
003edc: 1022         move.b     -(a2), d0
003ede: 4880         ext.w      d0
003ee0: 0c40002b     cmpi.w     #$2b, d0
003ee4: 67f2         beq.b      $3ed8
003ee6: 0c40002d     cmpi.w     #$2d, d0
003eea: 67ea         beq.b      $3ed6
003eec: 42ae800c     clr.l      -$7ff4(a6)
003ef0: 2f04         move.l     d4, -(a7)
003ef2: 220b         move.l     a3, d1
003ef4: 200a         move.l     a2, d0
003ef6: 61000058     bsr.w      $3f50
003efa: 588f         addq.l     #$4, a7
003efc: 2c00         move.l     d0, d6
003efe: 0cae00000100800c cmpi.l     #$100, -$7ff4(a6)
003f06: 6714         beq.b      $3f1c
003f08: 4a85         tst.l      d5
003f0a: 6708         beq.b      $3f14
003f0c: 0c8680000000 cmpi.l     #$80000000, d6
003f12: 6208         bhi.b      $3f1c
003f14: 0c867fffffff cmpi.l     #$7fffffff, d6
003f1a: 631e         bls.b      $3f3a
003f1c: 4a85         tst.l      d5
003f1e: 6708         beq.b      $3f28
003f20: 203c80000000 move.l     #$80000000, d0
003f26: 6006         bra.b      $3f2e
003f28: 203c7fffffff move.l     #$7fffffff, d0
003f2e: 2c00         move.l     d0, d6
003f30: 2d7c00000100800c move.l     #$100, -$7ff4(a6)
003f38: 600a         bra.b      $3f44
003f3a: 4a85         tst.l      d5
003f3c: 6706         beq.b      $3f44
003f3e: 2006         move.l     d6, d0
003f40: 4480         neg.l      d0
003f42: 2c00         move.l     d0, d6
003f44: 2006         move.l     d6, d0
003f46: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
003f4c: 4e5d         unlk       a5
003f4e: 4e75         rts        
003f50: 4e550000     link.w     a5, #$0
003f54: 48e7cfb0     movem.l    d0-d1/d4-d7/a0/a2-a3, -(a7)
003f58: 2440         movea.l    d0, a2
003f5a: 2641         movea.l    d1, a3
003f5c: 282f002c     move.l     $2c(a7), d4
003f60: 7a00         moveq      #$0, d5
003f62: 7c00         moveq      #$0, d6
003f64: 101a         move.b     (a2)+, d0
003f66: 4880         ext.w      d0
003f68: 48c0         ext.l      d0
003f6a: 41ee86a3     lea.l      -$795d(a6), a0
003f6e: 10300800     move.b     (a0, d0.l), d0
003f72: 4880         ext.w      d0
003f74: 08000004     btst.b     #$4, d0
003f78: 66ea         bne.b      $3f64
003f7a: 538a         subq.l     #$1, a2
003f7c: 200b         move.l     a3, d0
003f7e: 6702         beq.b      $3f82
003f80: 268a         move.l     a2, (a3)
003f82: 7002         moveq      #$2, d0
003f84: b084         cmp.l      d4, d0
003f86: 6304         bls.b      $3f8c
003f88: 4a84         tst.l      d4
003f8a: 662a         bne.b      $3fb6
003f8c: 7023         moveq      #$23, d0
003f8e: b084         cmp.l      d4, d0
003f90: 6524         bcs.b      $3fb6
003f92: 6036         bra.b      $3fca
003f94: 5285         addq.l     #$1, d5
003f96: 528a         addq.l     #$1, a2
003f98: 0c2a00780001 cmpi.b     #$78, $1(a2)
003f9e: 6708         beq.b      $3fa8
003fa0: 0c2a00580001 cmpi.b     #$58, $1(a2)
003fa6: 6618         bne.b      $3fc0
003fa8: 4a84         tst.l      d4
003faa: 6604         bne.b      $3fb0
003fac: 7810         moveq      #$10, d4
003fae: 600c         bra.b      $3fbc
003fb0: 7010         moveq      #$10, d0
003fb2: b084         cmp.l      d4, d0
003fb4: 6706         beq.b      $3fbc
003fb6: 7000         moveq      #$0, d0
003fb8: 60000118     bra.w      $40d2
003fbc: 548a         addq.l     #$2, a2
003fbe: 6026         bra.b      $3fe6
003fc0: 4a84         tst.l      d4
003fc2: 6622         bne.b      $3fe6
003fc4: 7808         moveq      #$8, d4
003fc6: 528a         addq.l     #$1, a2
003fc8: 601c         bra.b      $3fe6
003fca: 1012         move.b     (a2), d0
003fcc: 4880         ext.w      d0
003fce: 0c4000ff     cmpi.w     #$ff, d0
003fd2: 6212         bhi.b      $3fe6
003fd4: 0c00002b     cmpi.b     #$2b, d0
003fd8: 67bc         beq.b      $3f96
003fda: 0c00002d     cmpi.b     #$2d, d0
003fde: 67b4         beq.b      $3f94
003fe0: 0c000030     cmpi.b     #$30, d0
003fe4: 67b2         beq.b      $3f98
003fe6: 4a84         tst.l      d4
003fe8: 6602         bne.b      $3fec
003fea: 780a         moveq      #$a, d4
003fec: 700a         moveq      #$a, d0
003fee: b084         cmp.l      d4, d0
003ff0: 65000080     bcs.w      $4072
003ff4: 6028         bra.b      $401e
003ff6: 70ff         moveq      #$ff, d0
003ff8: 9087         sub.l      d7, d0
003ffa: 2204         move.l     d4, d1
003ffc: 61000208     bsr.w      $4206
004000: b086         cmp.l      d6, d0
004002: 650e         bcs.b      $4012
004004: 2006         move.l     d6, d0
004006: 2204         move.l     d4, d1
004008: 6100018a     bsr.w      $4194
00400c: d087         add.l      d7, d0
00400e: 2c00         move.l     d0, d6
004010: 600a         bra.b      $401c
004012: 2d7c00000100800c move.l     #$100, -$7ff4(a6)
00401a: 7cff         moveq      #$ff, d6
00401c: 528a         addq.l     #$1, a2
00401e: 1012         move.b     (a2), d0
004020: 4880         ext.w      d0
004022: 48c0         ext.l      d0
004024: 41ee86a3     lea.l      -$795d(a6), a0
004028: 10300800     move.b     (a0, d0.l), d0
00402c: 4880         ext.w      d0
00402e: 08000003     btst.b     #$3, d0
004032: 6700008c     beq.w      $40c0
004036: 1012         move.b     (a2), d0
004038: 4880         ext.w      d0
00403a: 04400030     subi.w     #$30, d0
00403e: 48c0         ext.l      d0
004040: 2e00         move.l     d0, d7
004042: b084         cmp.l      d4, d0
004044: 65b0         bcs.b      $3ff6
004046: 60000078     bra.w      $40c0
00404a: 70ff         moveq      #$ff, d0
00404c: 9087         sub.l      d7, d0
00404e: 2204         move.l     d4, d1
004050: 610001b4     bsr.w      $4206
004054: b086         cmp.l      d6, d0
004056: 650e         bcs.b      $4066
004058: 2006         move.l     d6, d0
00405a: 2204         move.l     d4, d1
00405c: 61000136     bsr.w      $4194
004060: d087         add.l      d7, d0
004062: 2c00         move.l     d0, d6
004064: 600a         bra.b      $4070
004066: 2d7c00000100800c move.l     #$100, -$7ff4(a6)
00406e: 7cff         moveq      #$ff, d6
004070: 528a         addq.l     #$1, a2
004072: 1012         move.b     (a2), d0
004074: 4880         ext.w      d0
004076: 48c0         ext.l      d0
004078: 41ee86a3     lea.l      -$795d(a6), a0
00407c: 10300800     move.b     (a0, d0.l), d0
004080: 4880         ext.w      d0
004082: 08000003     btst.b     #$3, d0
004086: 670e         beq.b      $4096
004088: 1012         move.b     (a2), d0
00408a: 4880         ext.w      d0
00408c: 04400030     subi.w     #$30, d0
004090: 48c0         ext.l      d0
004092: 2e00         move.l     d0, d7
004094: 60b4         bra.b      $404a
004096: 1012         move.b     (a2), d0
004098: 4880         ext.w      d0
00409a: 48c0         ext.l      d0
00409c: 41ee86a3     lea.l      -$795d(a6), a0
0040a0: 10300800     move.b     (a0, d0.l), d0
0040a4: 4880         ext.w      d0
0040a6: 02400006     andi.w     #$6, d0
0040aa: 6714         beq.b      $40c0
0040ac: 1012         move.b     (a2), d0
0040ae: 4880         ext.w      d0
0040b0: 024000df     andi.w     #$df, d0
0040b4: 48c0         ext.l      d0
0040b6: 7237         moveq      #$37, d1
0040b8: 9081         sub.l      d1, d0
0040ba: 2e00         move.l     d0, d7
0040bc: b084         cmp.l      d4, d0
0040be: 658a         bcs.b      $404a
0040c0: 200b         move.l     a3, d0
0040c2: 6702         beq.b      $40c6
0040c4: 268a         move.l     a2, (a3)
0040c6: 4a85         tst.l      d5
0040c8: 6706         beq.b      $40d0
0040ca: 2006         move.l     d6, d0
0040cc: 4480         neg.l      d0
0040ce: 2c00         move.l     d0, d6
0040d0: 2006         move.l     d6, d0
0040d2: 4ced0df0ffe4 movem.l    -$1c(a5), d4-d7/a0/a2-a3
0040d8: 4e5d         unlk       a5
0040da: 4e75         rts        
0040dc: 4e550000     link.w     a5, #$0
0040e0: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
0040e4: 2040         movea.l    d0, a0
0040e6: 2441         movea.l    d1, a2
0040e8: 242d0008     move.l     $8(a5), d2
0040ec: 6702         beq.b      $40f0
0040ee: 610a         bsr.b      $40fa
0040f0: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
0040f6: 4e5d         unlk       a5
0040f8: 4e75         rts        
0040fa: 4a82         tst.l      d2
0040fc: 674a         beq.b      $4148
0040fe: b1ca         cmpa.l     a2, a0
004100: 6248         bhi.b      $414a
004102: 6744         beq.b      $4148
004104: 300a         move.w     a2, d0
004106: 08000000     btst.b     #$0, d0
00410a: 6704         beq.b      $4110
00410c: 10da         move.b     (a2)+, (a0)+
00410e: 5382         subq.l     #$1, d2
004110: 3008         move.w     a0, d0
004112: 08000000     btst.b     #$0, d0
004116: 6624         bne.b      $413c
004118: e28a         lsr.l      #$1, d2
00411a: 6406         bcc.b      $4122
00411c: 6104         bsr.b      $4122
00411e: 10da         move.b     (a2)+, (a0)+
004120: 4e75         rts        
004122: e28a         lsr.l      #$1, d2
004124: 6406         bcc.b      $412c
004126: 30da         move.w     (a2)+, (a0)+
004128: 6002         bra.b      $412c
00412a: 20da         move.l     (a2)+, (a0)+
00412c: 51cafffc     dbra       d2, $412a
004130: 5242         addq.w     #$1, d2
004132: 5382         subq.l     #$1, d2
004134: 64f4         bcc.b      $412a
004136: 7400         moveq      #$0, d2
004138: 4e75         rts        
00413a: 10da         move.b     (a2)+, (a0)+
00413c: 51cafffc     dbra       d2, $413a
004140: 5242         addq.w     #$1, d2
004142: 5382         subq.l     #$1, d2
004144: 64f4         bcc.b      $413a
004146: 7400         moveq      #$0, d2
004148: 4e75         rts        
00414a: d5c2         adda.l     d2, a2
00414c: d1c2         adda.l     d2, a0
00414e: 300a         move.w     a2, d0
004150: 08000000     btst.b     #$0, d0
004154: 6704         beq.b      $415a
004156: 1122         move.b     -(a2), -(a0)
004158: 5382         subq.l     #$1, d2
00415a: 3008         move.w     a0, d0
00415c: 08000000     btst.b     #$0, d0
004160: 6624         bne.b      $4186
004162: e28a         lsr.l      #$1, d2
004164: 6406         bcc.b      $416c
004166: 6104         bsr.b      $416c
004168: 1122         move.b     -(a2), -(a0)
00416a: 4e75         rts        
00416c: e28a         lsr.l      #$1, d2
00416e: 6406         bcc.b      $4176
004170: 3122         move.w     -(a2), -(a0)
004172: 6002         bra.b      $4176
004174: 2122         move.l     -(a2), -(a0)
004176: 51cafffc     dbra       d2, $4174
00417a: 5242         addq.w     #$1, d2
00417c: 5382         subq.l     #$1, d2
00417e: 64f4         bcc.b      $4174
004180: 7400         moveq      #$0, d2
004182: 4e75         rts        
004184: 1122         move.b     -(a2), -(a0)
004186: 51cafffc     dbra       d2, $4184
00418a: 5242         addq.w     #$1, d2
00418c: 5382         subq.l     #$1, d2
00418e: 64f4         bcc.b      $4184
004190: 7400         moveq      #$0, d2
004192: 4e75         rts        
004194: 48e73800     movem.l    d2-d4, -(a7)
004198: 2400         move.l     d0, d2
00419a: 2600         move.l     d0, d3
00419c: 4843         swap       d3
00419e: 2801         move.l     d1, d4
0041a0: 4844         swap       d4
0041a2: c0c1         mulu.w     d1, d0
0041a4: c2c3         mulu.w     d3, d1
0041a6: c4c4         mulu.w     d4, d2
0041a8: c6c4         mulu.w     d4, d3
0041aa: 4840         swap       d0
0041ac: d041         add.w      d1, d0
0041ae: 7800         moveq      #$0, d4
0041b0: d784         addx.l     d4, d3
0041b2: d042         add.w      d2, d0
0041b4: d784         addx.l     d4, d3
0041b6: 4840         swap       d0
0041b8: 4241         clr.w      d1
0041ba: 4841         swap       d1
0041bc: 4242         clr.w      d2
0041be: 4842         swap       d2
0041c0: d282         add.l      d2, d1
0041c2: d283         add.l      d3, d1
0041c4: 4a80         tst.l      d0
0041c6: 4cdf001c     movem.l    (a7)+, d2-d4
0041ca: 4e75         rts        
0041cc: 2f02         move.l     d2, -(a7)
0041ce: 7400         moveq      #$0, d2
0041d0: 4a80         tst.l      d0
0041d2: 6a04         bpl.b      $41d8
0041d4: 4480         neg.l      d0
0041d6: 7403         moveq      #$3, d2
0041d8: 4a81         tst.l      d1
0041da: 6a06         bpl.b      $41e2
0041dc: 4481         neg.l      d1
0041de: 0a020001     eori.b     #$1, d2
0041e2: 6122         bsr.b      $4206
0041e4: e20a         lsr.b      #$1, d2
0041e6: 6402         bcc.b      $41ea
0041e8: 4480         neg.l      d0
0041ea: e20a         lsr.b      #$1, d2
0041ec: 6402         bcc.b      $41f0
0041ee: 4481         neg.l      d1
0041f0: 241f         move.l     (a7)+, d2
0041f2: 4a80         tst.l      d0
0041f4: 4e75         rts        
0041f6: 61d4         bsr.b      $41cc
0041f8: c141         exg.l      d0, d1
0041fa: 4a80         tst.l      d0
0041fc: 4e75         rts        
0041fe: 6106         bsr.b      $4206
004200: c141         exg.l      d0, d1
004202: 4a80         tst.l      d0
004204: 4e75         rts        
004206: 48e73800     movem.l    d2-d4, -(a7)
00420a: 2401         move.l     d1, d2
00420c: 6606         bne.b      $4214
00420e: 81fc0000     divs.w     #$0, d0
004212: 606e         bra.b      $4282
004214: 5381         subq.l     #$1, d1
004216: 676a         beq.b      $4282
004218: 2801         move.l     d1, d4
00421a: 2200         move.l     d0, d1
00421c: b481         cmp.l      d1, d2
00421e: 650c         bcs.b      $422c
004220: 6704         beq.b      $4226
004222: 7000         moveq      #$0, d0
004224: 605c         bra.b      $4282
004226: 7001         moveq      #$1, d0
004228: 9282         sub.l      d2, d1
00422a: 6056         bra.b      $4282
00422c: 2602         move.l     d2, d3
00422e: 6bf6         bmi.b      $4226
004230: c684         and.l      d4, d3
004232: 6612         bne.b      $4246
004234: e28a         lsr.l      #$1, d2
004236: 76ff         moveq      #$ff, d3
004238: e28a         lsr.l      #$1, d2
00423a: 55cbfffc     dbcs       d3, $4238
00423e: 4483         neg.l      d3
004240: e6a8         lsr.l      d3, d0
004242: c284         and.l      d4, d1
004244: 603c         bra.b      $4282
004246: 7000         moveq      #$0, d0
004248: 76ff         moveq      #$ff, d3
00424a: e382         asl.l      #$1, d2
00424c: 6a06         bpl.b      $4254
00424e: b481         cmp.l      d1, d2
004250: 620a         bhi.b      $425c
004252: 600c         bra.b      $4260
004254: b481         cmp.l      d1, d2
004256: 54cbfff2     dbcc       d3, $424a
00425a: 6704         beq.b      $4260
00425c: 5283         addq.l     #$1, d3
00425e: e28a         lsr.l      #$1, d2
004260: 4483         neg.l      d3
004262: 6004         bra.b      $4268
004264: e380         asl.l      #$1, d0
004266: e28a         lsr.l      #$1, d2
004268: 9282         sub.l      d2, d1
00426a: 6510         bcs.b      $427c
00426c: 5280         addq.l     #$1, d0
00426e: 51cbfff4     dbra       d3, $4264
004272: 600e         bra.b      $4282
004274: e380         asl.l      #$1, d0
004276: e28a         lsr.l      #$1, d2
004278: d282         add.l      d2, d1
00427a: 65f0         bcs.b      $426c
00427c: 51cbfff6     dbra       d3, $4274
004280: d282         add.l      d2, d1
004282: 4cdf001c     movem.l    (a7)+, d2-d4
004286: 4a80         tst.l      d0
004288: 4e75         rts        
00428a: 2a5f         movea.l    (a7)+, a5
00428c: 5385         subq.l     #$1, d5
00428e: 6562         bcs.b      $42f2
004290: 1018         move.b     (a0)+, d0
004292: 67f8         beq.b      $428c
004294: 0c00000d     cmpi.b     #$d, d0
004298: 6758         beq.b      $42f2
00429a: 0c000020     cmpi.b     #$20, d0
00429e: 67ec         beq.b      $428c
0042a0: 0c000009     cmpi.b     #$9, d0
0042a4: 67e6         beq.b      $428c
0042a6: 0c00002c     cmpi.b     #$2c, d0
0042aa: 67e0         beq.b      $428c
0042ac: 5282         addq.l     #$1, d2
0042ae: 0c000022     cmpi.b     #$22, d0
0042b2: 6730         beq.b      $42e4
0042b4: 0c000027     cmpi.b     #$27, d0
0042b8: 672a         beq.b      $42e4
0042ba: 4868ffff     pea.l      -$1(a0)
0042be: 5385         subq.l     #$1, d5
0042c0: 6530         bcs.b      $42f2
0042c2: 1018         move.b     (a0)+, d0
0042c4: 67c6         beq.b      $428c
0042c6: 0c00000d     cmpi.b     #$d, d0
0042ca: 6712         beq.b      $42de
0042cc: 0c000020     cmpi.b     #$20, d0
0042d0: 670c         beq.b      $42de
0042d2: 0c000009     cmpi.b     #$9, d0
0042d6: 6706         beq.b      $42de
0042d8: 0c00002c     cmpi.b     #$2c, d0
0042dc: 66e0         bne.b      $42be
0042de: 4228ffff     clr.b      -$1(a0)
0042e2: 60a8         bra.b      $428c
0042e4: 4850         pea.l      (a0)
0042e6: 5385         subq.l     #$1, d5
0042e8: 6508         bcs.b      $42f2
0042ea: 1218         move.b     (a0)+, d1
0042ec: b001         cmp.b      d1, d0
0042ee: 66f6         bne.b      $42e6
0042f0: 60ec         bra.b      $42de
0042f2: 204f         movea.l    a7, a0
0042f4: 4857         pea.l      (a7)
0042f6: 2f02         move.l     d2, -(a7)
0042f8: 5382         subq.l     #$1, d2
0042fa: 6710         beq.b      $430c
0042fc: e582         asl.l      #$2, d2
0042fe: 20302800     move.l     (a0, d2.l), d0
004302: 21902800     move.l     (a0), (a0, d2.l)
004306: 20c0         move.l     d0, (a0)+
004308: 5182         subq.l     #$8, d2
00430a: 62f2         bhi.b      $42fe
00430c: 4ed5         jmp        (a5)
00430e: 4e550000     link.w     a5, #$0
004312: 48e76080     movem.l    d1-d2/a0, -(a7)
004316: 2040         movea.l    d0, a0
004318: 2001         move.l     d1, d0
00431a: 2f0a         move.l     a2, -(a7)
00431c: 4e40         trap       #$0
00431e: 0080204a245f ori.l      #$204a245f, d0
004324: 65000492     bcs.w      $47b8
004328: 2008         move.l     a0, d0
00432a: 6000048a     bra.w      $47b6
00432e: 4e550000     link.w     a5, #$0
004332: 48e76080     movem.l    d1-d2/a0, -(a7)
004336: 204a         movea.l    a2, a0
004338: 2440         movea.l    d0, a2
00433a: 4e40         trap       #$0
00433c: 008124486000 ori.l      #$24486000, d1
004342: 04744e550000 subi.w     #$4e55, (a4, d0.w)
004348: 48e76080     movem.l    d1-d2/a0, -(a7)
00434c: 7000         moveq      #$0, d0
00434e: 4e40         trap       #$0
004350: 000a         .dc.w      $000a
004352: 60000462     bra.w      $47b6
004356: 4e550000     link.w     a5, #$0
00435a: 48e76080     movem.l    d1-d2/a0, -(a7)
00435e: 206d0008     movea.l    $8(a5), a0
004362: 2210         move.l     (a0), d1
004364: 2040         movea.l    d0, a0
004366: 2017         move.l     (a7), d0
004368: 4e40         trap       #$0
00436a: 00176500     ori.b      #$0, (a7)
00436e: 044a         .dc.w      $044a
004370: 206d0008     movea.l    $8(a5), a0
004374: 2081         move.l     d1, (a0)
004376: 60000448     bra.w      $47c0
00437a: 4e550000     link.w     a5, #$0
00437e: 48e76080     movem.l    d1-d2/a0, -(a7)
004382: 4e40         trap       #$0
004384: 000f         .dc.w      $000f
004386: 6000042e     bra.w      $47b6
00438a: e188         lsl.l      #$8, d0
00438c: 08c0001f     bset.b     #$1f, d0
004390: 4e550000     link.w     a5, #$0
004394: 48e76080     movem.l    d1-d2/a0, -(a7)
004398: 4e40         trap       #$0
00439a: 000a         .dc.w      $000a
00439c: 60000418     bra.w      $47b6
0043a0: 4e550000     link.w     a5, #$0
0043a4: 48e700c0     movem.l    a0-a1, -(a7)
0043a8: 2041         movea.l    d1, a0
0043aa: 2240         movea.l    d0, a1
0043ac: 222d0008     move.l     $8(a5), d1
0043b0: 4e40         trap       #$0
0043b2: 00116560     ori.b      #$60, (a1)
0043b6: 7000         moveq      #$0, d0
0043b8: 6068         bra.b      $4422
0043ba: 4e550000     link.w     a5, #$0
0043be: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0043c2: 2040         movea.l    d0, a0
0043c4: 4e40         trap       #$0
0043c6: 00106454     ori.b      #$54, (a0)
0043ca: 604a         bra.b      $4416
0043cc: 4e550000     link.w     a5, #$0
0043d0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0043d4: 2040         movea.l    d0, a0
0043d6: 2248         movea.l    a0, a1
0043d8: 1019         move.b     (a1)+, d0
0043da: 0c00002f     cmpi.b     #$2f, d0
0043de: 671a         beq.b      $43fa
0043e0: 0c00002e     cmpi.b     #$2e, d0
0043e4: 6622         bne.b      $4408
0043e6: 0c19002e     cmpi.b     #$2e, (a1)+
0043ea: 67fa         beq.b      $43e6
0043ec: 1021         move.b     -(a1), d0
0043ee: 672e         beq.b      $441e
0043f0: 0c00002f     cmpi.b     #$2f, d0
0043f4: 6612         bne.b      $4408
0043f6: 2049         movea.l    a1, a0
0043f8: 60de         bra.b      $43d8
0043fa: 1019         move.b     (a1)+, d0
0043fc: 0c00002f     cmpi.b     #$2f, d0
004400: 6706         beq.b      $4408
004402: 0c00002e     cmpi.b     #$2e, d0
004406: 67de         beq.b      $43e6
004408: 4e40         trap       #$0
00440a: 00106508     ori.b      #$8, (a0)
00440e: 4a00         tst.b      d0
004410: 670c         beq.b      $441e
004412: 2049         movea.l    a1, a0
004414: 60c2         bra.b      $43d8
004416: 2d41800c     move.l     d1, -$7ff4(a6)
00441a: 70ff         moveq      #$ff, d0
00441c: 6004         bra.b      $4422
00441e: 2009         move.l     a1, d0
004420: 9097         sub.l      (a7), d0
004422: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
004428: 4e5d         unlk       a5
00442a: 4e75         rts        
00442c: 4e550000     link.w     a5, #$0
004430: 48e76080     movem.l    d1-d2/a0, -(a7)
004434: 48e71860     movem.l    d3-d4/a1-a2, -(a7)
004438: 242d000c     move.l     $c(a5), d2
00443c: 0802000f     btst.b     #$f, d2
004440: 6708         beq.b      $444a
004442: 262d0010     move.l     $10(a5), d3
004446: 282d0014     move.l     $14(a5), d4
00444a: 2040         movea.l    d0, a0
00444c: 2001         move.l     d1, d0
00444e: 222d0008     move.l     $8(a5), d1
004452: 4e40         trap       #$0
004454: 00256502     ori.b      #$2, -(a5)
004458: 200a         move.l     a2, d0
00445a: 4cdf0618     movem.l    (a7)+, d3-d4/a1-a2
00445e: 60000356     bra.w      $47b6
004462: 4e550000     link.w     a5, #$0
004466: 48e76080     movem.l    d1-d2/a0, -(a7)
00446a: 2040         movea.l    d0, a0
00446c: 4e40         trap       #$0
00446e: 001a6500     ori.b      #$0, (a2)+
004472: 0346         bchg.b     d1, d6
004474: 2001         move.l     d1, d0
004476: 6000033e     bra.w      $47b6
00447a: 4e550000     link.w     a5, #$0
00447e: 48e76080     movem.l    d1-d2/a0, -(a7)
004482: 2040         movea.l    d0, a0
004484: 4e40         trap       #$0
004486: 001f6500     ori.b      #$0, (a7)+
00448a: 032e2001     btst.l     d1, $2001(a6)
00448e: 60000326     bra.w      $47b6
004492: 4e550000     link.w     a5, #$0
004496: 48e76080     movem.l    d1-d2/a0, -(a7)
00449a: 206d0008     movea.l    $8(a5), a0
00449e: 4e40         trap       #$0
0044a0: 00186000     ori.b      #$0, (a0)+
0044a4: 0312         btst.l     d1, (a2)
0044a6: 4e550000     link.w     a5, #$0
0044aa: 48e76080     movem.l    d1-d2/a0, -(a7)
0044ae: 2040         movea.l    d0, a0
0044b0: 4e40         trap       #$0
0044b2: 00266000     ori.b      #$0, -(a6)
0044b6: 0300         btst.l     d1, d0
0044b8: 4e550000     link.w     a5, #$0
0044bc: 48e76080     movem.l    d1-d2/a0, -(a7)
0044c0: 08c1001f     bset.b     #$1f, d1
0044c4: 600c         bra.b      $44d2
0044c6: 4e550000     link.w     a5, #$0
0044ca: 48e76080     movem.l    d1-d2/a0, -(a7)
0044ce: 242d0008     move.l     $8(a5), d2
0044d2: 4e40         trap       #$0
0044d4: 00276500     ori.b      #$0, -(a7)
0044d8: 02e0         .dc.w      $02e0
0044da: 2002         move.l     d2, d0
0044dc: 600002d8     bra.w      $47b6
0044e0: 4e550000     link.w     a5, #$0
0044e4: 48e76080     movem.l    d1-d2/a0, -(a7)
0044e8: 4e40         trap       #$0
0044ea: 000b         .dc.w      $000b
0044ec: 600002c8     bra.w      $47b6
0044f0: 4e550000     link.w     a5, #$0
0044f4: 4e40         trap       #$0
0044f6: 00524e5d     ori.w      #$4e5d, (a2)
0044fa: 4e75         rts        
0044fc: 4e550000     link.w     a5, #$0
004500: 48e76080     movem.l    d1-d2/a0, -(a7)
004504: 2f09         move.l     a1, -(a7)
004506: 206d0008     movea.l    $8(a5), a0
00450a: 226d000c     movea.l    $c(a5), a1
00450e: 4e40         trap       #$0
004510: 001b225f     ori.b      #$5f, (a3)+
004514: 600002a0     bra.w      $47b6
004518: 4e550000     link.w     a5, #$0
00451c: 48e76080     movem.l    d1-d2/a0, -(a7)
004520: 2040         movea.l    d0, a0
004522: 3001         move.w     d1, d0
004524: 48e70060     movem.l    a1-a2, -(a7)
004528: 4e40         trap       #$0
00452a: 00006502     ori.b      #$2, d0
00452e: 200a         move.l     a2, d0
004530: 4cdf0600     movem.l    (a7)+, a1-a2
004534: 60000280     bra.w      $47b6
004538: 4e550000     link.w     a5, #$0
00453c: 48e76080     movem.l    d1-d2/a0, -(a7)
004540: 2040         movea.l    d0, a0
004542: 3001         move.w     d1, d0
004544: 48e70060     movem.l    a1-a2, -(a7)
004548: 4e40         trap       #$0
00454a: 000160de     ori.b      #$de, d1
00454e: 4e550000     link.w     a5, #$0
004552: 48e76080     movem.l    d1-d2/a0, -(a7)
004556: 2f0a         move.l     a2, -(a7)
004558: 2440         movea.l    d0, a2
00455a: 4e40         trap       #$0
00455c: 0002245f     ori.b      #$5f, d2
004560: 60000254     bra.w      $47b6
004564: 4e550000     link.w     a5, #$0
004568: 48e76080     movem.l    d1-d2/a0, -(a7)
00456c: 2040         movea.l    d0, a0
00456e: 3001         move.w     d1, d0
004570: 4e40         trap       #$0
004572: 001d6000     ori.b      #$0, (a5)+
004576: 02404e55     andi.w     #$4e55, d0
00457a: 000048e7     ori.b      #$e7, d0
00457e: 6080         bra.b      $4500
004580: 7203         moveq      #$3, d1
004582: 2040         movea.l    d0, a0
004584: c141         exg.l      d0, d1
004586: 4e40         trap       #$0
004588: 008660000234 ori.l      #$60000234, d6
00458e: 4e550000     link.w     a5, #$0
004592: 48e76080     movem.l    d1-d2/a0, -(a7)
004596: 7204         moveq      #$4, d1
004598: 60e8         bra.b      $4582
00459a: 4e550000     link.w     a5, #$0
00459e: 48e76080     movem.l    d1-d2/a0, -(a7)
0045a2: 2200         move.l     d0, d1
0045a4: 6606         bne.b      $45ac
0045a6: 72cb         moveq      #$cb, d1
0045a8: 6000020e     bra.w      $47b8
0045ac: 5281         addq.l     #$1, d1
0045ae: c23c00fe     and.b      #$fe, d1
0045b2: 242e8502     move.l     -$7afe(a6), d2
0045b6: 9481         sub.l      d1, d2
0045b8: 6510         bcs.b      $45ca
0045ba: 202e84fe     move.l     -$7b02(a6), d0
0045be: d3ae84fe     add.l      d1, -$7b02(a6)
0045c2: 93ae8502     sub.l      d1, -$7afe(a6)
0045c6: 60000082     bra.w      $464a
0045ca: 202e8724     move.l     -$78dc(a6), d0
0045ce: b081         cmp.l      d1, d0
0045d0: 6202         bhi.b      $45d4
0045d2: 2001         move.l     d1, d0
0045d4: 204a         movea.l    a2, a0
0045d6: 4e40         trap       #$0
0045d8: 0028c5486500 ori.b      #$48, $6500(a0)
0045de: 01da         bset.b     d0, (a2)+
0045e0: 2d4884fe     move.l     a0, -$7b02(a6)
0045e4: 2d408502     move.l     d0, -$7afe(a6)
0045e8: d1ae8010     add.l      d0, -$7ff0(a6)
0045ec: 60be         bra.b      $45ac
0045ee: 4e550000     link.w     a5, #$0
0045f2: 48e76080     movem.l    d1-d2/a0, -(a7)
0045f6: 2200         move.l     d0, d1
0045f8: 5281         addq.l     #$1, d1
0045fa: c23c00fe     and.b      #$fe, d1
0045fe: 2401         move.l     d1, d2
004600: d2ae8004     add.l      -$7ffc(a6), d1
004604: 6512         bcs.b      $4618
004606: b2ae8008     cmp.l      -$7ff8(a6), d1
00460a: 640c         bcc.b      $4618
00460c: 202e8004     move.l     -$7ffc(a6), d0
004610: 2d418004     move.l     d1, -$7ffc(a6)
004614: 2202         move.l     d2, d1
004616: 6032         bra.b      $464a
004618: 72cf         moveq      #$cf, d1
00461a: 6000019c     bra.w      $47b8
00461e: 4e550000     link.w     a5, #$0
004622: 48e76080     movem.l    d1-d2/a0, -(a7)
004626: 5280         addq.l     #$1, d0
004628: c03c00fe     and.b      #$fe, d0
00462c: 2200         move.l     d0, d1
00462e: d0ae8014     add.l      -$7fec(a6), d0
004632: 2049         movea.l    a1, a0
004634: 4e40         trap       #$0
004636: 0007c348     ori.b      #$48, d7
00463a: 6500017c     bcs.w      $47b8
00463e: 2d408014     move.l     d0, -$7fec(a6)
004642: d3ae8010     add.l      d1, -$7ff0(a6)
004646: 2008         move.l     a0, d0
004648: 9081         sub.l      d1, d0
00464a: 2040         movea.l    d0, a0
00464c: 7400         moveq      #$0, d2
00464e: e489         lsr.l      #$2, d1
004650: 6406         bcc.b      $4658
004652: 30c2         move.w     d2, (a0)+
004654: 6002         bra.b      $4658
004656: 20c2         move.l     d2, (a0)+
004658: 51c9fffc     dbra       d1, $4656
00465c: 5241         addq.w     #$1, d1
00465e: 5381         subq.l     #$1, d1
004660: 64f4         bcc.b      $4656
004662: 2000         move.l     d0, d0
004664: 60000150     bra.w      $47b6
004668: 4e55fffc     link.w     a5, #$fffc
00466c: 2e8a         move.l     a2, (a7)
00466e: 4e40         trap       #$0
004670: 0028651c2d40 ori.b      #$1c, $2d40(a0)
004676: 8506         sbcd.b     d6, d2
004678: 200a         move.l     a2, d0
00467a: 246dfffc     movea.l    -$4(a5), a2
00467e: 4e5d         unlk       a5
004680: 4e75         rts        
004682: 4e55fffc     link.w     a5, #$fffc
004686: 2e8a         move.l     a2, (a7)
004688: 2441         movea.l    d1, a2
00468a: 4e40         trap       #$0
00468c: 002964ea70ff ori.b      #$ea, $70ff(a1)
004692: 2d41800c     move.l     d1, -$7ff4(a6)
004696: 60e2         bra.b      $467a
004698: 4e550000     link.w     a5, #$0
00469c: 48e76080     movem.l    d1-d2/a0, -(a7)
0046a0: 4e40         trap       #$0
0046a2: 0008         .dc.w      $0008
0046a4: 60000110     bra.w      $47b6
0046a8: 4e550000     link.w     a5, #$0
0046ac: 48e76080     movem.l    d1-d2/a0, -(a7)
0046b0: 2040         movea.l    d0, a0
0046b2: 7000         moveq      #$0, d0
0046b4: 4e40         trap       #$0
0046b6: 00046500     ori.b      #$0, d4
0046ba: 00fe         .dc.w      $00fe
0046bc: 2408         move.l     a0, d2
0046be: 670000f6     beq.w      $47b6
0046c2: 4258         clr.w      (a0)+
0046c4: 3081         move.w     d1, (a0)
0046c6: 600000ee     bra.w      $47b6
0046ca: 4e550000     link.w     a5, #$0
0046ce: 48e76080     movem.l    d1-d2/a0, -(a7)
0046d2: 4e40         trap       #$0
0046d4: 000d         .dc.w      $000d
0046d6: 600000de     bra.w      $47b6
0046da: 4e550000     link.w     a5, #$0
0046de: 48e76080     movem.l    d1-d2/a0, -(a7)
0046e2: 48e71c40     movem.l    d3-d5/a1, -(a7)
0046e6: 7a03         moveq      #$3, d5
0046e8: 602e         bra.b      $4718
0046ea: 4e550000     link.w     a5, #$0
0046ee: 48e76080     movem.l    d1-d2/a0, -(a7)
0046f2: 48e71c40     movem.l    d3-d5/a1, -(a7)
0046f6: 7a01         moveq      #$1, d5
0046f8: 601e         bra.b      $4718
0046fa: 4e550000     link.w     a5, #$0
0046fe: 48e76080     movem.l    d1-d2/a0, -(a7)
004702: 48e71c40     movem.l    d3-d5/a1, -(a7)
004706: 7a02         moveq      #$2, d5
004708: 600e         bra.b      $4718
00470a: 4e550000     link.w     a5, #$0
00470e: 48e76080     movem.l    d1-d2/a0, -(a7)
004712: 48e71c40     movem.l    d3-d5/a1, -(a7)
004716: 7a00         moveq      #$0, d5
004718: 2040         movea.l    d0, a0
00471a: 2401         move.l     d1, d2
00471c: 226d0008     movea.l    $8(a5), a1
004720: 302d0012     move.w     $12(a5), d0
004724: 4840         swap       d0
004726: 302d000e     move.w     $e(a5), d0
00472a: 222d0014     move.l     $14(a5), d1
00472e: 7603         moveq      #$3, d3
004730: 08050001     btst.b     #$1, d5
004734: 6704         beq.b      $473a
004736: 262d001c     move.l     $1c(a5), d3
00473a: 282d0018     move.l     $18(a5), d4
00473e: 08050000     btst.b     #$0, d5
004742: 6606         bne.b      $474a
004744: 4e40         trap       #$0
004746: 00036004     ori.b      #$4, d3
00474a: 4e40         trap       #$0
00474c: 00054cdf     ori.b      #$df, d5
004750: 023860000062 andi.b     #$0, $62.w
004756: 4e550000     link.w     a5, #$0
00475a: 48e76080     movem.l    d1-d2/a0, -(a7)
00475e: 4e40         trap       #$0
004760: 000c         .dc.w      $000c
004762: 60000052     bra.w      $47b6
004766: 4e550000     link.w     a5, #$0
00476a: 48e76080     movem.l    d1-d2/a0, -(a7)
00476e: 4e40         trap       #$0
004770: 000c         .dc.w      $000c
004772: 65000044     bcs.w      $47b8
004776: 2001         move.l     d1, d0
004778: 6000003c     bra.w      $47b6
00477c: 4e550000     link.w     a5, #$0
004780: 48e76080     movem.l    d1-d2/a0, -(a7)
004784: 2200         move.l     d0, d1
004786: 4e40         trap       #$0
004788: 001c6000     ori.b      #$0, (a4)+
00478c: 002a4e550000 ori.b      #$55, $0(a2)
004792: 48e76080     movem.l    d1-d2/a0, -(a7)
004796: 41fa0012     lea.l      $47aa(pc), a0
00479a: 2d40850a     move.l     d0, -$7af6(a6)
00479e: 6602         bne.b      $47a2
0047a0: 2040         movea.l    d0, a0
0047a2: 4e40         trap       #$0
0047a4: 0009         .dc.w      $0009
0047a6: 6000000e     bra.w      $47b6
0047aa: 2001         move.l     d1, d0
0047ac: 206e850a     movea.l    -$7af6(a6), a0
0047b0: 4e90         jsr        (a0)
0047b2: 4e40         trap       #$0
0047b4: 001e640c     ori.b      #$c, (a6)+
0047b8: 2d41800c     move.l     d1, -$7ff4(a6)
0047bc: 70ff         moveq      #$ff, d0
0047be: 6004         bra.b      $47c4
0047c0: 65f6         bcs.b      $47b8
0047c2: 7000         moveq      #$0, d0
0047c4: 4ced0106fff4 movem.l    -$c(a5), d1-d2/a0
0047ca: 4e5d         unlk       a5
0047cc: 4e75         rts        
0047ce: 4e550000     link.w     a5, #$0
0047d2: 2200         move.l     d0, d1
0047d4: 6100001e     bsr.w      $47f4
0047d8: 6100f560     bsr.w      $3d3a
0047dc: 6008         bra.b      $47e6
0047de: 4e550000     link.w     a5, #$0
0047e2: 4afc         illegal    #$4afc
0047e4: 2200         move.l     d0, d1
0047e6: 4e40         trap       #$0
0047e8: 0006dead     ori.b      #$ad, d6
0047ec: dead003c     add.l      $3c(a5), d7
0047f0: 00014e75     ori.b      #$75, d1
0047f4: 4e75         rts        
