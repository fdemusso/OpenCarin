000080: 00b4026e027a02b2 ori.l      #$26e027a, -$4e(a4, d0.w)
000088: 02b202bc02ac0000 andi.l     #$2bc02ac, (a2, d0.w)
000090: 00000036     ori.b      #$36, d0
000094: 0906         btst.l     d4, d6
000096: 07325261     btst.l     d3, $61(a2, d5.w)
00009a: 6d20         blt.b      $bc
00009c: 4469736b     neg.w      $736b(a1)
0000a0: 20284361     move.l     $4361(a0), d0
0000a4: 7574         .dc.w      $7574
0000a6: 696f         bvs.b      $117
0000a8: 6e3a         bgt.b      $e4
0000aa: 2056         movea.l    (a6), a0
0000ac: 6f6c         ble.b      $11a
0000ae: 6174         bsr.b      $124
0000b0: 696c         bvs.b      $11e
0000b2: 65a9         bcs.b      $5d
0000b4: 41ea0036     lea.l      $36(a2), a0
0000b8: 157c0001002e move.b     #$1, $2e(a2)
0000be: 7400         moveq      #$0, d2
0000c0: 34290052     move.w     $52(a1), d2
0000c4: d4690054     add.w      $54(a1), d2
0000c8: 3202         move.w     d2, d1
0000ca: e049         lsr.w      #$8, d1
0000cc: 15410037     move.b     d1, $37(a2)
0000d0: 15420038     move.b     d2, $38(a2)
0000d4: e64a         lsr.w      #$3, d2
0000d6: 3542003a     move.w     d2, $3a(a2)
0000da: 157c0001003d move.b     #$1, $3d(a2)
0000e0: 157c00bf0043 move.b     #$bf, $43(a2)
0000e6: 2602         move.l     d2, d3
0000e8: d67c01ff     add.w      #$1ff, d3
0000ec: e04b         lsr.w      #$8, d3
0000ee: 15430040     move.b     d3, $40(a2)
0000f2: 202a0036     move.l     $36(a2), d0
0000f6: 4200         clr.b      d0
0000f8: 264a         movea.l    a2, a3
0000fa: 282a0000     move.l     $0(a2), d4
0000fe: 0c8400000400 cmpi.l     #$400, d4
000104: 6534         bcs.b      $13a
000106: 2444         movea.l    d4, a2
000108: 2744008e     move.l     d4, $8e(a3)
00010c: 2740008a     move.l     d0, $8a(a3)
000110: 08290000005f btst.b     #$0, $5f(a1)
000116: 6732         beq.b      $14a
000118: 0caa4372757a0060 cmpi.l     #$4372757a, $60(a2)
000120: 6712         beq.b      $134
000122: 0caaaa55aa550040 cmpi.l     #$aa55aa55, $40(a2)
00012a: 661e         bne.b      $14a
00012c: 257c000000000040 move.l     #$0, $40(a2)
000134: 204a         movea.l    a2, a0
000136: 600000da     bra.w      $212
00013a: 4e40         trap       #$0
00013c: 0028650000d0 ori.b      #$0, $d0(a0)
000142: 2740008a     move.l     d0, $8a(a3)
000146: 274a008e     move.l     a2, $8e(a3)
00014a: 7200         moveq      #$0, d1
00014c: e488         lsr.l      #$2, d0
00014e: 5380         subq.l     #$1, d0
000150: 24c1         move.l     d1, (a2)+
000152: 51c8fffc     dbra       d0, $150
000156: 5240         addq.w     #$1, d0
000158: 5380         subq.l     #$1, d0
00015a: 64f4         bcc.b      $150
00015c: 246b008e     movea.l    $8e(a3), a2
000160: 7415         moveq      #$15, d2
000162: 610000ea     bsr.w      $24e
000166: 41faff26     lea.l      $8e(pc), a0
00016a: d4c2         adda.w     d2, a2
00016c: 7426         moveq      #$26, d2
00016e: 610000de     bsr.w      $24e
000172: 244b         movea.l    a3, a2
000174: 206a008e     movea.l    $8e(a2), a0
000178: 7000         moveq      #$0, d0
00017a: 4e40         trap       #$0
00017c: 00156522     ori.b      #$22, (a5)
000180: e088         lsr.l      #$8, d0
000182: 1140001e     move.b     d0, $1e(a0)
000186: e048         lsr.w      #$8, d0
000188: 1140001d     move.b     d0, $1d(a0)
00018c: 1141001c     move.b     d1, $1c(a0)
000190: e089         lsr.l      #$8, d1
000192: 1141001b     move.b     d1, $1b(a0)
000196: e089         lsr.l      #$8, d1
000198: 82fc0064     divu.w     #$64, d1
00019c: 4841         swap       d1
00019e: 1141001a     move.b     d1, $1a(a0)
0001a2: 616e         bsr.b      $212
0001a4: 656a         bcs.b      $210
0001a6: 41e80100     lea.l      $100(a0), a0
0001aa: 7000         moveq      #$0, d0
0001ac: 2203         move.l     d3, d1
0001ae: 5441         addq.w     #$2, d1
0001b0: 4e40         trap       #$0
0001b2: 0013202a     ori.b      #$2a, (a3)
0001b6: 0036e0883200 ori.b      #$88, (a6, d3.w * 2)
0001bc: c27c07ff     and.w      #$7ff, d1
0001c0: 670a         beq.b      $1cc
0001c2: 4441         neg.w      d1
0001c4: d27c0800     add.w      #$800, d1
0001c8: 4e40         trap       #$0
0001ca: 00132003     ori.b      #$3, (a3)
0001ce: 5380         subq.l     #$1, d0
0001d0: e180         asl.l      #$8, d0
0001d2: d1c0         adda.l     d0, a0
0001d4: 116a00430000 move.b     $43(a2), $0(a0)
0001da: 08a800060000 bclr.b     #$6, $0(a0)
0001e0: 117c00010008 move.b     #$1, $8(a0)
0001e6: 117c0040000c move.b     #$40, $c(a0)
0001ec: 3003         move.w     d3, d0
0001ee: 5240         addq.w     #$1, d0
0001f0: 11400012     move.b     d0, $12(a0)
0001f4: 117c00010014 move.b     #$1, $14(a0)
0001fa: 41e80100     lea.l      $100(a0), a0
0001fe: 30bc2eae     move.w     #$2eae, (a0)
000202: 117c00ae0020 move.b     #$ae, $20(a0)
000208: 2143001c     move.l     d3, $1c(a0)
00020c: 2143003c     move.l     d3, $3c(a0)
000210: 4e75         rts        
000212: 0ca84372757a0060 cmpi.l     #$4372757a, $60(a0)
00021a: 6708         beq.b      $224
00021c: 217c4372757a0060 move.l     #$4372757a, $60(a0)
000224: 4aa80064     tst.l      $64(a0)
000228: 6608         bne.b      $232
00022a: 217c000000010064 move.l     #$1, $64(a0)
000232: 0c6801000068 cmpi.w     #$100, $68(a0)
000238: 6706         beq.b      $240
00023a: 317c01000068 move.w     #$100, $68(a0)
000240: 4a68006a     tst.w      $6a(a0)
000244: 6606         bne.b      $24c
000246: 317c0001006a move.w     #$1, $6a(a0)
00024c: 4e75         rts        
00024e: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
000252: 2f0b         move.l     a3, -(a7)
000254: 266e03a4     movea.l    $3a4(a6), a3
000258: 487a000c     pea.l      $266(pc)
00025c: 2f2b00e0     move.l     $e0(a3), -(a7)
000260: 266b04e0     movea.l    $4e0(a3), a3
000264: 4e75         rts        
000266: 265f         movea.l    (a7)+, a3
000268: 4cdf0707     movem.l    (a7)+, d0-d2/a0-a2
00026c: 4e75         rts        
00026e: 6118         bsr.b      $288
000270: 6532         bcs.b      $2a4
000272: 204a         movea.l    a2, a0
000274: 2469000e     movea.l    $e(a1), a2
000278: 6008         bra.b      $282
00027a: 610c         bsr.b      $288
00027c: 6526         bcs.b      $2a4
00027e: 2069000e     movea.l    $e(a1), a0
000282: e180         asl.l      #$8, d0
000284: 2400         move.l     d0, d2
000286: 60c6         bra.b      $24e
000288: 2f00         move.l     d0, -(a7)
00028a: e182         asl.l      #$8, d2
00028c: b4aa0036     cmp.l      $36(a2), d2
000290: 6414         bcc.b      $2a6
000292: e180         asl.l      #$8, d0
000294: d082         add.l      d2, d0
000296: b0aa0036     cmp.l      $36(a2), d0
00029a: 620a         bhi.b      $2a6
00029c: 246a008e     movea.l    $8e(a2), a2
0002a0: d5c2         adda.l     d2, a2
0002a2: 201f         move.l     (a7)+, d0
0002a4: 4e75         rts        
0002a6: 323c00f1     move.w     #$f1, d1
0002aa: 201f         move.l     (a7)+, d0
0002ac: 003c0001     ori.b      #$1, ccr
0002b0: 4e75         rts        
0002b2: 323c00d0     move.w     #$d0, d1
0002b6: 003c0001     ori.b      #$1, ccr
0002ba: 4e75         rts        
0002bc: 0caa000004000000 cmpi.l     #$400, $0(a2)
0002c4: 6412         bcc.b      $2d8
0002c6: 202a008a     move.l     $8a(a2), d0
0002ca: 670c         beq.b      $2d8
0002cc: 42aa008a     clr.l      $8a(a2)
0002d0: 246a008e     movea.l    $8e(a2), a2
0002d4: 4e40         trap       #$0
0002d6: 002972004e75 ori.b      #$0, $4e75(a1)
0002dc: 7261         moveq      #$61, d1
0002de: 6d0000bc     blt.w      $39c
0002e2: 6e41         bgt.b      $325
