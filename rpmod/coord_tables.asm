000048: 4c04         .dc.w      $4c04
00004a: 4c22         .dc.w      $4c22
00004c: 4c9c4cfc     movem.w    (a4)+, d2-d7/a2-a3/a6
000050: 4e00         .dc.w      $4e00
000052: 4e86         .dc.w      $4e86
000054: 4f3c51a65204 chk.l      #$51a65204, d7
00005a: 521a         addq.b     #$1, (a2)+
00005c: 523e         .dc.w      $523e
00005e: 5256         addq.w     #$1, (a6)
000060: 52c2         shi.b      d2
000062: 52e2         shi.b      -(a2)
000064: 5316         subq.b     #$1, (a6)
000066: 5350         subq.w     #$1, (a0)
000068: 537054dc     subq.w     #$1, -$24(a0, d5.w)
00006c: 5586         subq.l     #$2, d6
00006e: 55bc         .dc.w      $55bc
000070: 5606         addq.b     #$3, d6
000072: 5688         addq.l     #$3, a0
000074: 56c0         sne.b      d0
000076: 574a         subq.w     #$3, a2
000078: 57e2         seq.b      -(a2)
00007a: 5856         addq.w     #$4, (a6)
00007c: 5898         addq.l     #$4, (a0)+
00007e: 58cc590c     dbvc       d4, $598c
000082: 5988         subq.l     #$4, a0
000084: 59ba         .dc.w      $59ba
000086: 5a26         addq.b     #$5, -(a6)
000088: 5a7a         .dc.w      $5a7a
00008a: 5ab25ae2     addq.l     #$5, -$1e(a2, d5.l)
00008e: 5c3c         .dc.w      $5c3c
000090: 5ce0         sge.b      -(a0)
000092: 5e14         addq.b     #$7, (a4)
000094: 5ea86022     addq.l     #$7, $6022(a0)
000098: 60ca         bra.b      $64
00009a: 6270         bhi.b      $10c
00009c: 63f6         bls.b      $94
00009e: 6520         bcs.b      $c0
0000a0: 65c0         bcs.b      $62
0000a2: 6690         bne.b      $34
0000a4: 6732         beq.b      $d8
0000a6: 6828         bvc.b      $d0
0000a8: 6932         bvs.b      $dc
0000aa: 69ac         bvs.b      $58
0000ac: 6ac8         bpl.b      $76
0000ae: 6ba0         bmi.b      $50
0000b0: 6bf8         bmi.b      $aa
0000b2: 6cfe         bge.b      $b2
0000b4: 6dd4         blt.b      $8a
0000b6: 6e4e         bgt.b      $106
0000b8: 6e9e         bgt.b      $58
0000ba: 6ecc         bgt.b      $88
0000bc: 706e         moveq      #$6e, d0
0000be: 716a         .dc.w      $716a
0000c0: 73bc         .dc.w      $73bc
0000c2: 7658         moveq      #$58, d3
0000c4: 7aa4         moveq      #$a4, d5
0000c6: 7b68         .dc.w      $7b68
0000c8: 7d84         .dc.w      $7d84
0000ca: 7df8         .dc.w      $7df8
0000cc: 7ff4         .dc.w      $7ff4
0000ce: 80bc35b035ce or.l       #$35b035ce, d0
0000d4: 36323648     move.w     $48(a2, d3.w), d3
0000d8: 365e         movea.w    (a6)+, a3
0000da: 36f23710     move.w     (a2, d3.w * 8), (a3)+
0000de: 372e3744     move.w     $3744(a6), -(a3)
0000e2: 37a637c8     move.w     -(a6), (invalid.w)
0000e6: 37ea         .dc.w      $37ea
0000e8: 382e386e     move.w     $386e(a6), d4
0000ec: 3884         move.w     d4, (a4)
0000ee: 38a838c0     move.w     $38c0(a0), (a4)
0000f2: 394a3960     move.w     a2, $3960(a4)
0000f6: 39c8         .dc.w      $39c8
0000f8: 39ea         .dc.w      $39ea
0000fa: 3a00         move.w     d0, d5
0000fc: 3a2e3a62     move.w     $3a62(a6), d5
000100: 3a783a96     movea.w    $3a96.w, a5
000104: 3ac8         move.w     a0, (a5)+
000106: 3b16         move.w     (a6), -(a5)
000108: 3b563b74     move.w     (a6), $3b74(a5)
00010c: 3ba23bca3be0 move.w     -(a2), ([], $3be0)
000112: 3c323c84     move.w     -$7c(a2, d3.l), d6
000116: 3cf43d46     move.w     ([a4]), (a6)+
00011a: 3db63dd43df23e103e463e7c move.w     (invalid.w), ([$3e103e46], $3e7c)
000126: 3ed2         move.w     (a2), (a7)+
000128: 3f08         move.w     a0, -(a7)
00012a: 3f5e3fd4     move.w     (a6)+, $3fd4(a7)
00012e: 405c         negx.w     (a4)+
000130: 407240d6     negx.w     -$2a(a2, d4.w)
000134: 418c         .dc.w      $418c
000136: 41aa41d8     chk.w      $41d8(a2), d0
00013a: 42da         move.w     ccr, (a2)+
00013c: 4308         .dc.w      $4308
00013e: 4334438243d6 chk.l      ([, d4.w * 2], $43d6), d1
000144: 4416         neg.b      (a6)
000146: 4444         neg.w      d4
000148: 4578         .dc.w      $4578
00014a: 45a6         chk.w      -(a6), d2
00014c: 45e6         .dc.w      $45e6
00014e: 4614         not.b      (a4)
000150: 4640         not.w      d0
000152: 466c46ae     not.w      $46ae(a4)
000156: 4736476e47a6 chk.l      ([$47a6, a6]), d3
00015c: 47bc47d2     chk.w      #$47d2, d3
000160: 47e847fe     lea.l      $47fe(a0), a3
000164: 4900         chk.l      d0, d4
000166: 4916         chk.l      (a6), d4
000168: 49a84a1a     chk.w      $4a1a(a0), d4
00016c: 4a304a54     tst.b      $54(a0, d4.l)
000170: 4a6c4a90     tst.w      $4a90(a4)
000174: 4aae4ad0     tst.l      $4ad0(a6)
000178: 4aee4b0c     tas.b      $4b0c(a6)
00017c: 862c86b6     or.b       -$794a(a4), d3
000180: 87428858     pack       d2, d3, #$8858
000184: 886a8890     or.w       -$7770(a2), d4
000188: 89d2         divs.w     (a2), d4
00018a: 8a00         or.b       d0, d5
00018c: 8c5c         or.w       (a4)+, d6
00018e: 8c7c8cb0     or.w       #$8cb0, d6
000192: 8cce         .dc.w      $8cce
000194: 8d088d22     sbcd       -(a0), -(a6), #$8d22
000198: 8d3c         .dc.w      $8d3c
00019a: 8d728db68e208e648ec8 or.w       d6, ([$8e208e64], a0.l * 4, $8ec8)
0001a4: 8f02         sbcd.b     d2, d7
0001a6: 8f468fc8     pack       d6, d7, #$8fc8
0001aa: 929e         sub.l      (a6)+, d1
0001ac: 955e         sub.w      d2, (a6)+
0001ae: 9588         subx.l     -(a0), -(a2)
0001b0: 95aa95de     sub.l      d2, -$6a22(a2)
0001b4: 9602         sub.b      d2, d3
0001b6: 9642         sub.w      d2, d3
0001b8: 967496ac     sub.w      -$54(a4, a1.w), d3
0001bc: 96de         suba.w     (a6)+, a3
0001be: 9710         sub.b      d3, (a0)
0001c0: 9742         subx.w     d2, d3
0001c2: 976a97ac     sub.w      d3, -$6854(a2)
0001c6: 97e4         suba.l     -(a4), a3
0001c8: 9804         sub.b      d4, d4
0001ca: 982c985a     sub.b      -$67a6(a4), d4
0001ce: 9882         sub.l      d2, d4
0001d0: 25c3         .dc.w      $25c3
0001d2: 1cfc25c3     move.b     #$c3, (a6)+
0001d6: 1d0c         .dc.w      $1d0c
0001d8: 25c3         .dc.w      $25c3
0001da: 1d3b25c31d8a25c3 move.b     ([$1dc], $1d8a25c3), -(a6)
0001e2: 1df7         .dc.w      $1df7
0001e4: 25c3         .dc.w      $25c3
0001e6: 1e85         move.b     d5, (a7)
0001e8: 25c3         .dc.w      $25c3
0001ea: 1f3125c31ffd25c3 move.b     ([], $1ffd25c3), -(a7)
0001f2: 20e925c3     move.l     $25c3(a1), (a0)+
0001f6: 21f425c3231e25c32467 move.l     ([], $231e25c3), $2467.w
000200: 25c3         .dc.w      $25c3
000202: 25d0         .dc.w      $25d0
000204: 25c3         .dc.w      $25c3
000206: 275925c3     move.l     (a1)+, $25c3(a3)
00020a: 2900         move.l     d0, -(a4)
00020c: 25c3         .dc.w      $25c3
00020e: 2ac7         move.l     d7, (a5)+
000210: 25c3         .dc.w      $25c3
000212: 2cae25c3     move.l     $25c3(a6), (a6)
000216: 2eb425c330d925c3 move.l     ([], $30d925c3), (a7)
00021e: 331d         move.w     (a5)+, -(a1)
000220: 25c3         .dc.w      $25c3
000222: 358125c3380425c3 move.w     d1, ([], $380425c3)
00022a: 3aa7         move.w     -(a7), (a5)
00022c: 25c3         .dc.w      $25c3
00022e: 3d6825c3404a move.w     $25c3(a0), $404a(a6)
000234: 25c3         .dc.w      $25c3
000236: 434a         .dc.w      $434a
000238: 25c3         .dc.w      $25c3
00023a: 466a25c3     not.w      $25c3(a2)
00023e: 49a925c3     chk.w      $25c3(a1), d4
000242: 4d07         chk.l      d7, d6
000244: 25c3         .dc.w      $25c3
000246: 5085         addq.l     #$8, d5
000248: 25c3         .dc.w      $25c3
00024a: 5421         addq.b     #$2, -(a1)
00024c: 25c3         .dc.w      $25c3
00024e: 57dd         seq.b      (a5)+
000250: 25c3         .dc.w      $25c3
000252: 5bb925c35fb3 subq.l     #$5, $25c35fb3.l
000258: 25c3         .dc.w      $25c3
00025a: 63cd         bls.b      $229
00025c: 25c3         .dc.w      $25c3
00025e: 6806         bvc.b      $266
000260: 25c3         .dc.w      $25c3
000262: 6c5e         bge.b      $2c2
000264: 25c3         .dc.w      $25c3
000266: 70d6         moveq      #$d6, d0
000268: 25c3         .dc.w      $25c3
00026a: 756d         .dc.w      $756d
00026c: 25c3         .dc.w      $25c3
00026e: 7a22         moveq      #$22, d5
000270: 25c3         .dc.w      $25c3
000272: 7ef7         moveq      #$f7, d7
000274: 25c3         .dc.w      $25c3
000276: 83eb25c3     divs.w     $25c3(a3), d1
00027a: 88ff         .dc.w      $88ff
00027c: 25c3         .dc.w      $25c3
00027e: 8e3125c3938325c3 or.b       ([], $938325c3), d7
000286: 98f325c39e8325c3 suba.w     ([], $9e8325c3), a4
00028e: a432         dc.w       $a432
000290: 25c3         .dc.w      $25c3
000292: a9ff         dc.w       $a9ff
000294: 25c3         .dc.w      $25c3
000296: afec         dc.w       $afec
000298: 25c3         .dc.w      $25c3
00029a: b5f825c3     cmpa.l     $25c3.w, a2
00029e: bc23         cmp.b      -(a3), d6
0002a0: 25c3         .dc.w      $25c3
0002a2: c26d25c3     and.w      $25c3(a5), d1
0002a6: c8d6         mulu.w     (a6), d4
0002a8: 25c3         .dc.w      $25c3
0002aa: cf5e         and.w      d7, (a6)+
0002ac: 25c3         .dc.w      $25c3
0002ae: d605         add.b      d5, d3
0002b0: 25c3         .dc.w      $25c3
0002b2: dccb         adda.w     a3, a6
0002b4: 25c3         .dc.w      $25c3
0002b6: e3af         lsl.l      d1, d7
0002b8: 25c3         .dc.w      $25c3
0002ba: eab3         roxr.l     d5, d3
0002bc: 25c3         .dc.w      $25c3
0002be: f1d5         dc.w       $f1d5
0002c0: 25c3         .dc.w      $25c3
0002c2: f917         fsave      (a7)
0002c4: 25c4         .dc.w      $25c4
0002c6: 007725c407f625c40f94 ori.w      #$25c4, ([$25c40f94])
0002d0: 25c4         .dc.w      $25c4
0002d2: 175025c4     move.b     (a0), $25c4(a3)
0002d6: 1f2c25c4     move.b     $25c4(a4), -(a7)
0002da: 2726         move.l     -(a6), -(a3)
0002dc: 25c4         .dc.w      $25c4
0002de: 2f3f         .dc.w      $2f3f
0002e0: 25c4         .dc.w      $25c4
0002e2: 377725c43fcd move.w     (invalid.w), $3fcd(a3)
0002e8: 25c4         .dc.w      $25c4
0002ea: 4842         swap       d2
0002ec: 25c4         .dc.w      $25c4
0002ee: 50d6         st.b       (a6)
0002f0: 25c4         .dc.w      $25c4
0002f2: 5988         subq.l     #$4, a0
0002f4: 25c4         .dc.w      $25c4
0002f6: 6259         bhi.b      $351
0002f8: 25c4         .dc.w      $25c4
0002fa: 6b48         bmi.b      $344
0002fc: 25c4         .dc.w      $25c4
0002fe: 7457         moveq      #$57, d2
000300: 25c4         .dc.w      $25c4
000302: 7d83         .dc.w      $7d83
000304: 25c4         .dc.w      $25c4
000306: 86ce         .dc.w      $86ce
000308: 25c4         .dc.w      $25c4
00030a: 903825c4     sub.b      $25c4.w, d0
00030e: 99c0         suba.l     d0, a4
000310: 25c4         .dc.w      $25c4
000312: a367         dc.w       $a367
000314: 25c4         .dc.w      $25c4
000316: ad2c         dc.w       $ad2c
000318: 25c4         .dc.w      $25c4
00031a: b70f         cmpm.b     (a7)+, (a3)+
00031c: 25c4         .dc.w      $25c4
00031e: c111         and.b      d0, (a1)
000320: 25c4         .dc.w      $25c4
000322: cb3125c4     and.b      d5, (invalid.w)
000326: d57025c4     add.w      d2, (invalid.w)
00032a: dfcd         adda.l     a5, a7
00032c: 25c4         .dc.w      $25c4
00032e: ea48         lsr.w      #$5, d0
000330: 25c4         .dc.w      $25c4
000332: f4e1         dc.w       $f4e1
000334: 25c4         .dc.w      $25c4
000336: ff99         dc.w       $ff99
000338: 25c5         .dc.w      $25c5
00033a: 0a6f25c51563 eori.w     #$25c5, $1563(a7)
000340: 25c5         .dc.w      $25c5
000342: 207525c5     movea.l    ([]), a0
000346: 2ba525c5     move.l     -(a5), ([])
00034a: 36f325c5     move.w     ([]), (a3)+
00034e: 4260         clr.w      -(a0)
000350: 25c5         .dc.w      $25c5
000352: 4dea25c5     lea.l      $25c5(a2), a6
000356: 5993         subq.l     #$4, (a3)
000358: 25c5         .dc.w      $25c5
00035a: 6559         bcs.b      $3b5
00035c: 25c5         .dc.w      $25c5
00035e: 713e         .dc.w      $713e
000360: 25c5         .dc.w      $25c5
000362: 7d40         .dc.w      $7d40
000364: 25c5         .dc.w      $25c5
000366: 8960         or.w       d4, -(a0)
000368: 25c5         .dc.w      $25c5
00036a: 959e         sub.l      d2, (a6)+
00036c: 25c5         .dc.w      $25c5
00036e: a1fa         dc.w       $a1fa
000370: 25c5         .dc.w      $25c5
000372: ae74         dc.w       $ae74
000374: 25c5         .dc.w      $25c5
000376: bb0b         cmpm.b     (a3)+, (a5)+
000378: 25c5         .dc.w      $25c5
00037a: c7c1         muls.w     d1, d3
00037c: 25c5         .dc.w      $25c5
00037e: d494         add.l      (a4), d2
000380: 25c5         .dc.w      $25c5
000382: e184         asl.l      #$8, d4
000384: 25c5         .dc.w      $25c5
000386: ee92         roxr.l     #$7, d2
000388: 25c5         .dc.w      $25c5
00038a: fbbe         dc.w       $fbbe
00038c: 25c6         .dc.w      $25c6
00038e: 090825c6     movep.w    $25c6(a0), d4
000392: 166f         .dc.w      $166f
000394: 25c6         .dc.w      $25c6
000396: 23f325c6319625c6 move.l     ([]), $319625c6.l
00039e: 3f5525c6     move.w     (a5), $25c6(a7)
0003a2: 4d3225c6     chk.l      ([]), d6
0003a6: 5b2c25c6     subq.b     #$5, $25c6(a4)
0003aa: 6944         bvs.b      $3f0
0003ac: 25c6         .dc.w      $25c6
0003ae: 7779         .dc.w      $7779
0003b0: 25c6         .dc.w      $25c6
0003b2: 85cb         .dc.w      $85cb
0003b4: 25c6         .dc.w      $25c6
0003b6: 943a25c6     sub.b      $297e(pc), d2
0003ba: a2c7         dc.w       $a2c7
0003bc: 25c6         .dc.w      $25c6
0003be: b17125c6     eor.w      d0, ([])
0003c2: c03825c6     and.b      $25c6.w, d0
0003c6: cf1c         and.b      d7, (a4)+
0003c8: 25c6         .dc.w      $25c6
0003ca: de1d         add.b      (a5)+, d7
0003cc: 25c6         .dc.w      $25c6
0003ce: ed3b         rol.b      d6, d3
0003d0: 25c6         .dc.w      $25c6
0003d2: fc7625c70bcf fsor.b     ([])
0003d8: 25c7         .dc.w      $25c7
0003da: 1b4425c7     move.b     d4, $25c7(a5)
0003de: 2ad5         move.l     (a5), (a5)+
0003e0: 25c7         .dc.w      $25c7
0003e2: 3a84         move.w     d4, (a5)
0003e4: 25c7         .dc.w      $25c7
0003e6: 4a50         tst.w      (a0)
0003e8: 25c7         .dc.w      $25c7
0003ea: 5a3825c7     addq.b     #$5, $25c7.w
0003ee: 6a3d         bpl.b      $42d
0003f0: 25c7         .dc.w      $25c7
0003f2: 7a5f         moveq      #$5f, d5
0003f4: 25c7         .dc.w      $25c7
0003f6: 8a9d         or.l       (a5)+, d5
0003f8: 25c7         .dc.w      $25c7
0003fa: 9af825c7     suba.w     $25c7.w, a5
0003fe: ab6f         dc.w       $ab6f
000400: 25c7         .dc.w      $25c7
000402: bc03         cmp.b      d3, d6
000404: 25c7         .dc.w      $25c7
000406: ccb425c7     and.l      ([]), d6
00040a: dd81         addx.l     d1, d6
00040c: 25c7         .dc.w      $25c7
00040e: ee6a         lsr.w      d7, d2
000410: 25c7         .dc.w      $25c7
000412: ff7025c8     frestore   (invalid.w)
000416: 1092         move.b     (a2), (a0)
000418: 25c8         .dc.w      $25c8
00041a: 21d025c8     move.l     (a0), $25c8.w
00041e: 332a25c8     move.w     $25c8(a2), -(a1)
000422: 44a1         neg.l      -(a1)
000424: 25c8         .dc.w      $25c8
000426: 563425c8     addq.b     #$3, (invalid.w)
00042a: 67e2         beq.b      $40e
00042c: 25c8         .dc.w      $25c8
00042e: 79ad         .dc.w      $79ad
000430: 25c8         .dc.w      $25c8
000432: 8b94         or.l       d5, (a4)
000434: 25c8         .dc.w      $25c8
000436: 9d97         sub.l      d6, (a7)
000438: 25c8         .dc.w      $25c8
00043a: afb6         dc.w       $afb6
00043c: 25c8         .dc.w      $25c8
00043e: c1f125c8     muls.w     (invalid.w), d0
000442: d447         add.w      d7, d2
000444: 25c8         .dc.w      $25c8
000446: e6b9         ror.l      d3, d1
000448: 25c8         .dc.w      $25c8
00044a: f947         dc.w       $f947
00044c: 25c9         .dc.w      $25c9
00044e: 0bf125c9     bset.b     d5, ([])
000452: 1eb725c9     move.b     ([]), (a7)
000456: 319825c9     move.w     (a0)+, ([])
00045a: 4494         neg.l      (a4)
00045c: 25c9         .dc.w      $25c9
00045e: 57ac25c9     subq.l     #$3, $25c9(a4)
000462: 6ae0         bpl.b      $444
000464: 25c9         .dc.w      $25c9
000466: 7e2e         moveq      #$2e, d7
000468: 25c9         .dc.w      $25c9
00046a: 9199         sub.l      d0, (a1)+
00046c: 25c9         .dc.w      $25c9
00046e: a51e         dc.w       $a51e
000470: 25c9         .dc.w      $25c9
000472: b8bf         .dc.w      $b8bf
000474: 25c9         .dc.w      $25c9
000476: cc7b25c9     and.w      ([$478]), d6
00047a: e052         roxr.w     #$8, d2
00047c: 25c9         .dc.w      $25c9
00047e: f445         dc.w       $f445
000480: 25ca         .dc.w      $25ca
000482: 0852         .dc.w      $0852
000484: 25ca         .dc.w      $25ca
000486: 1c7b         .dc.w      $1c7b
000488: 25ca         .dc.w      $25ca
00048a: 30be         .dc.w      $30be
00048c: 25ca         .dc.w      $25ca
00048e: 451d         chk.l      (a5)+, d2
000490: 25ca         .dc.w      $25ca
000492: 5996         subq.l     #$4, (a6)
000494: 25ca         .dc.w      $25ca
000496: 6e2a         bgt.b      $4c2
000498: 25ca         .dc.w      $25ca
00049a: 82d9         divu.w     (a1)+, d1
00049c: 25ca         .dc.w      $25ca
00049e: 97a2         sub.l      d3, -(a2)
0004a0: 25ca         .dc.w      $25ca
0004a2: ac86         dc.w       $ac86
0004a4: 25ca         .dc.w      $25ca
0004a6: c185         .dc.w      $c185
0004a8: 25ca         .dc.w      $25ca
0004aa: d69f         add.l      (a7)+, d3
0004ac: 25ca         .dc.w      $25ca
0004ae: ebd225cb     bfexts     (a2){23:11}, d2
0004b2: 0121         btst.l     d0, -(a1)
0004b4: 25cb         .dc.w      $25cb
0004b6: 168a         .dc.w      $168a
0004b8: 25cb         .dc.w      $25cb
0004ba: 2c0d         move.l     a5, d6
0004bc: 25cb         .dc.w      $25cb
0004be: 41aa25cb     chk.w      $25cb(a2), d0
0004c2: 5762         subq.w     #$3, -(a2)
0004c4: 25cb         .dc.w      $25cb
0004c6: 6d34         blt.b      $4fc
0004c8: 25cb         .dc.w      $25cb
0004ca: 8320         or.b       d1, -(a0)
0004cc: 25cb         .dc.w      $25cb
0004ce: 9926         sub.b      d4, -(a6)
0004d0: 25cb         .dc.w      $25cb
0004d2: af46         dc.w       $af46
0004d4: 25cb         .dc.w      $25cb
0004d6: c580         .dc.w      $c580
0004d8: 25cb         .dc.w      $25cb
0004da: dbd4         adda.l     (a4), a5
0004dc: 25cb         .dc.w      $25cb
0004de: f24225cc     fsult.b    d2
0004e2: 08ca         .dc.w      $08ca
0004e4: 25cc         .dc.w      $25cc
0004e6: 1f6b25cc3626 move.b     $25cc(a3), $3626(a7)
0004ec: 25cc         .dc.w      $25cc
0004ee: 4cfb25cc63ea25cc7af1 movem.l    ([$2abc], $7af1), d2-d3/d6-d7/a0/a2/a5
0004f8: 25cc         .dc.w      $25cc
0004fa: 9213         sub.b      (a3), d1
0004fc: 25cc         .dc.w      $25cc
0004fe: a94e         dc.w       $a94e
000500: 25cc         .dc.w      $25cc
000502: c0a2         and.l      -(a2), d0
000504: 25cc         .dc.w      $25cc
000506: d80f         .dc.w      $d80f
000508: 25cc         .dc.w      $25cc
00050a: ef96         roxl.l     #$7, d6
00050c: 25cd         .dc.w      $25cd
00050e: 073625cd     btst.l     d3, ([])
000512: 1eef25cd     move.b     $25cd(a7), (a7)+
000516: 36c1         move.w     d1, (a3)+
000518: 25cd         .dc.w      $25cd
00051a: 4eac25cd     jsr        $25cd(a4)
00051e: 66b0         bne.b      $4d0
000520: 25cd         .dc.w      $25cd
000522: 7ecd         moveq      #$cd, d7
000524: 25cd         .dc.w      $25cd
000526: 9703         subx.b     d3, d3
000528: 25cd         .dc.w      $25cd
00052a: af51         dc.w       $af51
00052c: 25cd         .dc.w      $25cd
00052e: c7b925cde039 and.l      d3, $25cde039.l
000534: 25cd         .dc.w      $25cd
000536: f8d125ce1182 fbf.l      $25ce16ba
00053c: 25ce         .dc.w      $25ce
00053e: 2a4c         movea.l    a4, a5
000540: 25ce         .dc.w      $25ce
000542: 432d25ce     chk.l      $25ce(a5), d1
000546: 5c2825ce     addq.b     #$6, $25ce(a0)
00054a: 753a         .dc.w      $753a
00054c: 25ce         .dc.w      $25ce
00054e: 8e65         or.w       -(a5), d7
000550: 25ce         .dc.w      $25ce
000552: a7a8         dc.w       $a7a8
000554: 25ce         .dc.w      $25ce
000556: c103         abcd.b     d3, d0
000558: 25ce         .dc.w      $25ce
00055a: da7625ce     add.w      ([]), d5
00055e: f401         dc.w       $f401
000560: 25cf         .dc.w      $25cf
000562: 0da4         bclr.b     d6, -(a4)
000564: 25cf         .dc.w      $25cf
000566: 275e25cf     move.l     (a6)+, $25cf(a3)
00056a: 413125cf     chk.l      ([]), d0
00056e: 5b1b         subq.b     #$5, (a3)+
000570: 25cf         .dc.w      $25cf
000572: 751d         .dc.w      $751d
000574: 25cf         .dc.w      $25cf
000576: 8f3625cf     or.b       d7, ([])
00057a: a967         dc.w       $a967
00057c: 25cf         .dc.w      $25cf
00057e: c3b025cf     and.l      d1, ([])
000582: de0f         .dc.w      $de0f
000584: 25cf         .dc.w      $25cf
000586: f88725d0     fbf.w      $2b58
00058a: 1315         move.b     (a5), -(a1)
00058c: 25d0         .dc.w      $25d0
00058e: 2dbb25d04877 move.l     (invalid.w), $77(a6, d4.l)
000594: 25d0         .dc.w      $25d0
000596: 634b         bls.b      $5e3
000598: 25d0         .dc.w      $25d0
00059a: 7e36         moveq      #$36, d7
00059c: 25d0         .dc.w      $25d0
00059e: 993825d0     sub.b      d4, $25d0.w
0005a2: b450         cmp.w      (a0), d2
0005a4: 25d0         .dc.w      $25d0
0005a6: cf7f         .dc.w      $cf7f
0005a8: 25d0         .dc.w      $25d0
0005aa: eac6         .dc.w      $eac6
0005ac: 25d1         .dc.w      $25d1
0005ae: 062225d1     addi.b     #$d1, -(a2)
0005b2: 219625d1     move.l     (a6), ([])
0005b6: 3d1f         move.w     (a7)+, -(a6)
0005b8: 25d1         .dc.w      $25d1
0005ba: 58c0         svc.b      d0
0005bc: 25d1         .dc.w      $25d1
0005be: 7476         moveq      #$76, d2
0005c0: 25d1         .dc.w      $25d1
0005c2: 9043         sub.w      d3, d0
0005c4: 25d1         .dc.w      $25d1
0005c6: ac27         dc.w       $ac27
0005c8: 25d1         .dc.w      $25d1
0005ca: c820         and.b      -(a0), d4
0005cc: 25d1         .dc.w      $25d1
0005ce: e430         roxr.l     #$2, d0
0005d0: 25d2         .dc.w      $25d2
0005d2: 005525d2     ori.w      #$25d2, (a5)
0005d6: 1c91         move.b     (a1), (a6)
0005d8: 25d2         .dc.w      $25d2
0005da: 38e2         move.w     -(a2), (a4)+
0005dc: 25d2         .dc.w      $25d2
0005de: 5549         subq.w     #$2, a1
0005e0: 25d2         .dc.w      $25d2
0005e2: 71c7         .dc.w      $71c7
0005e4: 25d2         .dc.w      $25d2
0005e6: 8e59         or.w       (a1)+, d7
0005e8: 25d2         .dc.w      $25d2
0005ea: ab02         dc.w       $ab02
0005ec: 25d2         .dc.w      $25d2
0005ee: c7bf         .dc.w      $c7bf
0005f0: 25d2         .dc.w      $25d2
0005f2: e493         roxr.l     #$2, d3
0005f4: 25d3         .dc.w      $25d3
0005f6: 017c         .dc.w      $017c
0005f8: 25d3         .dc.w      $25d3
0005fa: 1e7a         .dc.w      $1e7a
0005fc: 25d3         .dc.w      $25d3
0005fe: 3b8d25d358b625d3 move.w     a5, ([], $58b625d3)
000606: 75f3         .dc.w      $75f3
000608: 25d3         .dc.w      $25d3
00060a: 9346         subx.w     d6, d1
00060c: 25d3         .dc.w      $25d3
00060e: b0ae25d3     cmp.l      $25d3(a6), d0
000612: ce2a25d3     and.b      $25d3(a2), d7
000616: ebbb         rol.l      d5, d3
000618: 25d4         .dc.w      $25d4
00061a: 0962         bchg.b     d4, -(a2)
00061c: 25d4         .dc.w      $25d4
00061e: 271c         move.l     (a4)+, -(a3)
000620: 25d4         .dc.w      $25d4
000622: 44ec25d4     move.w     $25d4(a4), ccr
000626: 62d0         bhi.b      $5f8
000628: 25d4         .dc.w      $25d4
00062a: 80c8         .dc.w      $80c8
00062c: 25d4         .dc.w      $25d4
00062e: 9ed5         suba.w     (a5), a7
000630: 25d4         .dc.w      $25d4
000632: bcf625d4     cmpa.w     (invalid.w), a6
000636: db2b25d4     add.b      d5, $25d4(a3)
00063a: f97525d5     frestore   ([])
00063e: 17d2         .dc.w      $17d2
000640: 25d5         .dc.w      $25d5
000642: 3644         movea.w    d4, a3
000644: 25d5         .dc.w      $25d5
000646: 54c925d5     dbcc       d1, $2c1d
00064a: 7362         .dc.w      $7362
00064c: 25d5         .dc.w      $25d5
00064e: 9210         sub.b      (a0), d1
000650: 25d5         .dc.w      $25d5
000652: b0d0         cmpa.w     (a0), a0
000654: 25d5         .dc.w      $25d5
000656: cfa5         and.l      d7, -(a5)
000658: 25d5         .dc.w      $25d5
00065a: ee8d         lsr.l      #$7, d5
00065c: 25d6         .dc.w      $25d6
00065e: 0d8825d6     movep.w    d6, $25d6(a0)
000662: 2c97         move.l     (a7), (a6)
000664: 25d6         .dc.w      $25d6
000666: 4bb925d66aee chk.w      $25d66aee.l, d5
00066c: 25d6         .dc.w      $25d6
00066e: 8a3725d6     or.b       ([]), d5
000672: a993         dc.w       $a993
000674: 25d6         .dc.w      $25d6
000676: c901         abcd.b     d1, d4
000678: 25d6         .dc.w      $25d6
00067a: e883         asr.l      #$4, d3
00067c: 25d7         .dc.w      $25d7
00067e: 0817         .dc.w      $0817
000680: 25d7         .dc.w      $25d7
000682: 27be         .dc.w      $27be
000684: 25d7         .dc.w      $25d7
000686: 4778         .dc.w      $4778
000688: 25d7         .dc.w      $25d7
00068a: 6744         beq.b      $6d0
00068c: 25d7         .dc.w      $25d7
00068e: 8723         or.b       d3, -(a3)
000690: 25d7         .dc.w      $25d7
000692: a715         dc.w       $a715
000694: 25d7         .dc.w      $25d7
000696: c719         and.b      d3, (a1)+
000698: 25d7         .dc.w      $25d7
00069a: e72f         lsl.b      d3, d7
00069c: 25d8         .dc.w      $25d8
00069e: 0757         bchg.b     d3, (a7)
0006a0: 25d8         .dc.w      $25d8
0006a2: 279225d8     move.l     (a2), (invalid.w)
0006a6: 47de         .dc.w      $47de
0006a8: 25d8         .dc.w      $25d8
0006aa: 683d         bvc.b      $6e9
0006ac: 25d8         .dc.w      $25d8
0006ae: 88ad25d8     or.l       $25d8(a5), d4
0006b2: a92f         dc.w       $a92f
0006b4: 25d8         .dc.w      $25d8
0006b6: c9c3         muls.w     d3, d4
0006b8: 25d8         .dc.w      $25d8
0006ba: ea68         lsr.w      d5, d0
0006bc: 25d9         .dc.w      $25d9
0006be: 0b20         btst.l     d5, -(a0)
0006c0: 25d9         .dc.w      $25d9
0006c2: 2be8         .dc.w      $2be8
0006c4: 25d9         .dc.w      $25d9
0006c6: 4cc2         .dc.w      $4cc2
0006c8: 25d9         .dc.w      $25d9
0006ca: 6dae         blt.b      $67a
0006cc: 25d9         .dc.w      $25d9
0006ce: 8eaa25d9     or.l       $25d9(a2), d7
0006d2: afb8         dc.w       $afb8
0006d4: 25d9         .dc.w      $25d9
0006d6: d0d7         adda.w     (a7), a0
0006d8: 25d9         .dc.w      $25d9
0006da: f20625da     fsneg      fp1, fp3
0006de: 134725da     move.b     d7, $25da(a1)
0006e2: 3499         move.w     (a1)+, (a2)
0006e4: 25da         .dc.w      $25da
0006e6: 55fb25da776e trapcs.l   #$25da776e
0006ec: 25da         .dc.w      $25da
0006ee: 98f125daba85 suba.w     ([], $ba85), a4
0006f4: 25da         .dc.w      $25da
0006f6: dc2a25da     add.b      $25da(a2), d6
0006fa: fddf         dc.w       $fddf
0006fc: 25db         .dc.w      $25db
0006fe: 1fa425db417925db move.b     -(a4), ([], $417925db)
000706: 635e         bls.b      $766
000708: 25db         .dc.w      $25db
00070a: 8553         or.w       d2, (a3)
00070c: 25db         .dc.w      $25db
00070e: a758         dc.w       $a758
000710: 25db         .dc.w      $25db
000712: c96d25db     and.w      d4, $25db(a5)
000716: eb92         roxl.l     #$5, d2
000718: 25dc         .dc.w      $25dc
00071a: 0dc6         bset.b     d6, d6
00071c: 25dc         .dc.w      $25dc
00071e: 300a         move.w     a2, d0
000720: 25dc         .dc.w      $25dc
000722: 525d         addq.w     #$1, (a5)+
000724: 25dc         .dc.w      $25dc
000726: 74c0         moveq      #$c0, d2
000728: 25dc         .dc.w      $25dc
00072a: 973225dc     sub.b      d3, (invalid.w)
00072e: b9b325dc     eor.l      d4, (invalid.w)
000732: dc44         add.w      d4, d6
000734: 25dc         .dc.w      $25dc
000736: fee325dd2192 fbf.l      $25dd28ca
00073c: 25dd         .dc.w      $25dd
00073e: 444f         .dc.w      $444f
000740: 25dd         .dc.w      $25dd
000742: 671b         beq.b      $75f
000744: 25dd         .dc.w      $25dd
000746: 89f625dd     divs.w     ([]), d4
00074a: acdf         dc.w       $acdf
00074c: 25dd         .dc.w      $25dd
00074e: cfd7         muls.w     (a7), d7
000750: 25dd         .dc.w      $25dd
000752: f2de25de15f2 fbf.l      $25de1d46
000758: 25de         .dc.w      $25de
00075a: 3915         move.w     (a5), -(a4)
00075c: 25de         .dc.w      $25de
00075e: 5c47         addq.w     #$6, d7
000760: 25de         .dc.w      $25de
000762: 7f86         .dc.w      $7f86
000764: 25de         .dc.w      $25de
000766: a2d3         dc.w       $a2d3
000768: 25de         .dc.w      $25de
00076a: c62e25de     and.b      $25de(a6), d3
00076e: e997         roxl.l     #$4, d7
000770: 25df         .dc.w      $25df
000772: 0d0e25df     movep.w    $25df(a6), d6
000776: 3092         move.w     (a2), (a0)
000778: 25df         .dc.w      $25df
00077a: 5424         addq.b     #$2, -(a4)
00077c: 25df         .dc.w      $25df
00077e: 77c4         .dc.w      $77c4
000780: 25df         .dc.w      $25df
000782: 9b7125df     sub.w      d5, ([])
000786: bf2b25df     eor.b      d7, $25df(a3)
00078a: e2f225e006c6 lsr.w      $6c6(invalid.w)
000790: 25e0         .dc.w      $25e0
000792: 2aa825e0     move.l     $25e0(a0), (a5)
000796: 4e96         jsr        (a6)
000798: 25e0         .dc.w      $25e0
00079a: 7291         moveq      #$91, d1
00079c: 25e0         .dc.w      $25e0
00079e: 9699         sub.l      (a1)+, d3
0007a0: 25e0         .dc.w      $25e0
0007a2: baae25e0     cmp.l      $25e0(a6), d5
0007a6: decf         adda.w     a7, a7
0007a8: 25e1         .dc.w      $25e1
0007aa: 02fd         .dc.w      $02fd
0007ac: 25e1         .dc.w      $25e1
0007ae: 273725e14b7d move.l     ([$4b7d]), -(a3)
0007b4: 25e1         .dc.w      $25e1
0007b6: 6fd0         ble.b      $788
0007b8: 25e1         .dc.w      $25e1
0007ba: 942f25e1     sub.b      $25e1(a7), d2
0007be: b899         cmp.l      (a1)+, d4
0007c0: 25e1         .dc.w      $25e1
0007c2: dd10         add.b      d6, (a0)
0007c4: 25e2         .dc.w      $25e2
0007c6: 0193         bclr.b     d0, (a3)
0007c8: 25e2         .dc.w      $25e2
0007ca: 2621         move.l     -(a1), d3
0007cc: 25e2         .dc.w      $25e2
0007ce: 4abb25e26f6025e2 tst.l      ([$7730], $25e2)
0007d6: 9411         sub.b      (a1), d2
0007d8: 25e2         .dc.w      $25e2
0007da: b8ce         cmpa.w     a6, a4
0007dc: 25e2         .dc.w      $25e2
0007de: dd95         add.l      d6, (a5)
0007e0: 25e3         .dc.w      $25e3
0007e2: 026825e32746 andi.w     #$25e3, $2746(a0)
0007e8: 25e3         .dc.w      $25e3
0007ea: 4c2f         .dc.w      $4c2f
0007ec: 25e3         .dc.w      $25e3
0007ee: 7123         .dc.w      $7123
0007f0: 25e3         .dc.w      $25e3
0007f2: 9622         sub.b      -(a2), d3
0007f4: 25e3         .dc.w      $25e3
0007f6: bb2c25e3     eor.b      d5, $25e3(a4)
0007fa: e040         asr.w      #$8, d0
0007fc: 25e4         .dc.w      $25e4
0007fe: 055f         bchg.b     d2, (a7)+
000800: 25e4         .dc.w      $25e4
000802: 2a88         move.l     a0, (a5)
000804: 25e4         .dc.w      $25e4
000806: 4fbb25e474f9 chk.w      $74f9(invalid.w), d7
00080c: 25e4         .dc.w      $25e4
00080e: 9a41         sub.w      d1, d5
000810: 25e4         .dc.w      $25e4
000812: bf93         eor.l      d7, (a3)
000814: 25e4         .dc.w      $25e4
000816: e4ef25e5     roxr.w     $25e5(a7)
00081a: 0a5525e5     eori.w     #$25e5, (a5)
00081e: 2fc5         .dc.w      $2fc5
000820: 25e5         .dc.w      $25e5
000822: 553f         .dc.w      $553f
000824: 25e5         .dc.w      $25e5
000826: 7ac2         moveq      #$c2, d5
000828: 25e5         .dc.w      $25e5
00082a: a04f         dc.w       $a04f
00082c: 25e5         .dc.w      $25e5
00082e: c5e5         muls.w     -(a5), d2
000830: 25e5         .dc.w      $25e5
000832: eb84         asl.l      #$5, d4
000834: 25e6         .dc.w      $25e6
000836: 112d25e6     move.b     $25e6(a5), -(a0)
00083a: 36df         move.w     (a7)+, (a3)+
00083c: 25e6         .dc.w      $25e6
00083e: 5c9a         addq.l     #$6, (a2)+
000840: 25e6         .dc.w      $25e6
000842: 825e         or.w       (a6)+, d1
000844: 25e6         .dc.w      $25e6
000846: a82a         dc.w       $a82a
000848: 25e6         .dc.w      $25e6
00084a: ce00         and.b      d0, d7
00084c: 25e6         .dc.w      $25e6
00084e: f3de         dc.w       $f3de
000850: 25e7         .dc.w      $25e7
000852: 19c5         .dc.w      $19c5
000854: 25e7         .dc.w      $25e7
000856: 3fb425e765ac25e78bac move.w     ([$65ac]), ([$8bac])
000860: 25e7         .dc.w      $25e7
000862: b1b425e7d7c4 eor.l      d0, ([$d7c4])
000868: 25e7         .dc.w      $25e7
00086a: fddc         dc.w       $fddc
00086c: 25e8         .dc.w      $25e8
00086e: 23fd         .dc.w      $23fd
000870: 25e8         .dc.w      $25e8
000872: 4a25         tst.b      -(a5)
000874: 25e8         .dc.w      $25e8
000876: 7054         moveq      #$54, d0
000878: 25e8         .dc.w      $25e8
00087a: 968c         sub.l      a4, d3
00087c: 25e8         .dc.w      $25e8
00087e: bccb         cmpa.w     a3, a6
000880: 25e8         .dc.w      $25e8
000882: e311         roxl.b     #$1, d1
000884: 25e9         .dc.w      $25e9
000886: 095f         bchg.b     d4, (a7)+
000888: 25e9         .dc.w      $25e9
00088a: 2fb325e9561025e97c73 move.l     ([$5610]), ([$7c73])
000894: 25e9         .dc.w      $25e9
000896: a2dd         dc.w       $a2dd
000898: 25e9         .dc.w      $25e9
00089a: c94e         exg.l      a4, a6
00089c: 25e9         .dc.w      $25e9
00089e: efc525ea     bfins      d2, d5{23:2}
0008a2: 1644         .dc.w      $1644
0008a4: 25ea         .dc.w      $25ea
0008a6: 3cc8         move.w     a0, (a6)+
0008a8: 25ea         .dc.w      $25ea
0008aa: 6354         bls.b      $900
0008ac: 25ea         .dc.w      $25ea
0008ae: 89e6         divs.w     -(a6), d4
0008b0: 25ea         .dc.w      $25ea
0008b2: b07e         .dc.w      $b07e
0008b4: 25ea         .dc.w      $25ea
0008b6: d71c         add.b      d3, (a4)+
0008b8: 25ea         .dc.w      $25ea
0008ba: fdc0         dc.w       $fdc0
0008bc: 25eb         .dc.w      $25eb
0008be: 246a25eb     movea.l    $25eb(a2), a2
0008c2: 4b1a         chk.l      (a2)+, d5
0008c4: 25eb         .dc.w      $25eb
0008c6: 71d0         .dc.w      $71d0
0008c8: 25eb         .dc.w      $25eb
0008ca: 988c         sub.l      a4, d4
0008cc: 25eb         .dc.w      $25eb
0008ce: bf4d         cmpm.w     (a5)+, (a7)+
0008d0: 25eb         .dc.w      $25eb
0008d2: e614         roxr.b     #$3, d4
0008d4: 25ec         .dc.w      $25ec
0008d6: 0ce0         .dc.w      $0ce0
0008d8: 25ec         .dc.w      $25ec
0008da: 33b125ec5a8825ec8164 move.w     $5a88(invalid.w), $8164(invalid.w)
0008e4: 25ec         .dc.w      $25ec
0008e6: a845         dc.w       $a845
0008e8: 25ec         .dc.w      $25ec
0008ea: cf2a25ec     and.b      d7, $25ec(a2)
0008ee: f61525ed1d04 move16     a5, $25ed1d04.l
0008f4: 25ed         .dc.w      $25ed
0008f6: 43f825ed     lea.l      $25ed.w, a1
0008fa: 6af0         bpl.b      $8ec
0008fc: 25ed         .dc.w      $25ed
0008fe: 91ed25ed     suba.l     $25ed(a5), a0
000902: b8ee25ed     cmpa.w     $25ed(a6), a4
000906: dff325ee06fd adda.l     ([$6fd]), a7
00090c: 25ee         .dc.w      $25ee
00090e: 2e0a         move.l     a2, d7
000910: 25ee         .dc.w      $25ee
000912: 551b         subq.b     #$2, (a3)+
000914: 25ee         .dc.w      $25ee
000916: 7c31         moveq      #$31, d6
000918: 25ee         .dc.w      $25ee
00091a: a349         dc.w       $a349
00091c: 25ee         .dc.w      $25ee
00091e: ca66         and.w      -(a6), d5
000920: 25ee         .dc.w      $25ee
000922: f186         dc.w       $f186
000924: 25ef         .dc.w      $25ef
000926: 18aa25ef     move.b     $25ef(a2), (a4)
00092a: 3fd1         .dc.w      $3fd1
00092c: 25ef         .dc.w      $25ef
00092e: 66fb         bne.b      $92b
000930: 25ef         .dc.w      $25ef
000932: 8e2825ef     or.b       $25ef(a0), d7
000936: b558         eor.w      d2, (a0)+
000938: 25ef         .dc.w      $25ef
00093a: dc8c         add.l      a4, d6
00093c: 25f0         .dc.w      $25f0
00093e: 03c2         bset.b     d1, d2
000940: 25f0         .dc.w      $25f0
000942: 2afb25f0523625f0 move.l     $523625f0(invalid.w), (a5)+
00094a: 7974         .dc.w      $7974
00094c: 25f0         .dc.w      $25f0
00094e: a0b5         dc.w       $a0b5
000950: 25f0         .dc.w      $25f0
000952: c7f725f0ef3c25f1 muls.w     $ef3c25f1(invalid.w), d3
00095a: 1684         move.b     d4, (a3)
00095c: 25f1         .dc.w      $25f1
00095e: 3dcd         .dc.w      $3dcd
000960: 25f1         .dc.w      $25f1
000962: 6518         bcs.b      $97c
000964: 25f1         .dc.w      $25f1
000966: 8c65         or.w       -(a5), d6
000968: 25f1         .dc.w      $25f1
00096a: b3b425f1db0525f2 eor.l      d1, ([$db0525f2])
000972: 025725f2     andi.w     #$25f2, (a7)
000976: 29aa25f250ff move.l     $25f2(a2), -$1(a4, d5.w)
00097c: 25f2         .dc.w      $25f2
00097e: 7855         moveq      #$55, d4
000980: 25f2         .dc.w      $25f2
000982: 9fad25f2     sub.l      d7, $25f2(a5)
000986: c705         abcd.b     d5, d3
000988: 25f2         .dc.w      $25f2
00098a: ee5e         ror.w      #$7, d6
00098c: 25f3         .dc.w      $25f3
00098e: 15b925f33d1425f3646f25f38bcb25f3 move.b     $25f33d14.l, ([$646f25f3], $8bcb25f3)
00099e: b32825f3     eor.b      d1, $25f3(a0)
0009a2: da85         add.l      d5, d5
0009a4: 25f4         .dc.w      $25f4
0009a6: 01e2         bset.b     d0, -(a2)
0009a8: 25f4         .dc.w      $25f4
0009aa: 294025f4     move.l     d0, $25f4(a4)
0009ae: 509d         addq.l     #$8, (a5)+
0009b0: 25f4         .dc.w      $25f4
0009b2: 77fb         .dc.w      $77fb
0009b4: 25f4         .dc.w      $25f4
0009b6: 9f58         sub.w      d7, (a0)+
0009b8: 25f4         .dc.w      $25f4
0009ba: c6b525f4ee1225f5 and.l      $ee1225f5(invalid.w), d3
0009c2: 156e25f53cca move.b     $25f5(a6), $3cca(a2)
0009c8: 25f5         .dc.w      $25f5
0009ca: 6425         bcc.b      $9f1
0009cc: 25f5         .dc.w      $25f5
0009ce: 8b8025f5     unpk       d0, d5, #$25f5
0009d2: b2da         cmpa.w     (a2)+, a1
0009d4: 25f5         .dc.w      $25f5
0009d6: da3225f6018a25f6 add.b      ([$18a25f6]), d5
0009de: 28e1         move.l     -(a1), (a4)+
0009e0: 25f6         .dc.w      $25f6
0009e2: 503625f6778a25f6 addq.b     #$8, ([$778a25f6])
0009ea: 9edc         suba.w     (a4)+, a7
0009ec: 25f6         .dc.w      $25f6
0009ee: c62e25f6     and.b      $25f6(a6), d3
0009f2: ed7d         rol.w      d6, d5
0009f4: 25f7         .dc.w      $25f7
0009f6: 14cb         .dc.w      $14cb
0009f8: 25f7         .dc.w      $25f7
0009fa: 3c17         move.w     (a7), d6
0009fc: 25f7         .dc.w      $25f7
0009fe: 6360         bls.b      $a60
000a00: 25f7         .dc.w      $25f7
000a02: 8aa825f7     or.l       $25f7(a0), d5
000a06: b1ee25f7     cmpa.l     $25f7(a6), a0
000a0a: d93225f8007325f8 add.b      d4, $7325f8(invalid.w)
000a12: 27b225f84eee25f87628 move.l     $4eee25f8(invalid.w), $28(a3, d7.w)
000a1c: 25f8         .dc.w      $25f8
000a1e: 9d5f         sub.w      d6, (a7)+
000a20: 25f8         .dc.w      $25f8
000a22: c493         and.l      (a3), d2
000a24: 25f8         .dc.w      $25f8
000a26: ebc425f9     bfexts     d4{23:1}, d2
000a2a: 12f325f93a1e25f9 move.b     ([$3a1e25f9]), (a1)+
000a32: 6146         bsr.b      $a7a
000a34: 25f9         .dc.w      $25f9
000a36: 886a25f9     or.w       $25f9(a2), d4
000a3a: af8c         dc.w       $af8c
000a3c: 25f9         .dc.w      $25f9
000a3e: d6a925f9     add.l      $25f9(a1), d3
000a42: fdc3         dc.w       $fdc3
000a44: 25fa         .dc.w      $25fa
000a46: 24da         move.l     (a2)+, (a2)+
000a48: 25fa         .dc.w      $25fa
000a4a: 4bec25fa     lea.l      $25fa(a4), a5
000a4e: 72fb         moveq      #$fb, d1
000a50: 25fa         .dc.w      $25fa
000a52: 9a06         sub.b      d6, d5
000a54: 25fa         .dc.w      $25fa
000a56: c10c         abcd.b     -(a4), -(a0)
000a58: 25fa         .dc.w      $25fa
000a5a: e80e         lsr.b      #$4, d6
000a5c: 25fb         .dc.w      $25fb
000a5e: 0f0c25fb     movep.w    $25fb(a4), d7
000a62: 3606         move.w     d6, d3
000a64: 25fb         .dc.w      $25fb
000a66: 5cfb25fb83ec trapge.l   #$25fb83ec
000a6c: 25fb         .dc.w      $25fb
000a6e: aad8         dc.w       $aad8
000a70: 25fb         .dc.w      $25fb
000a72: d1bf         .dc.w      $d1bf
000a74: 25fb         .dc.w      $25fb
000a76: f8a125fc     fbf.w      $3074
000a7a: 1f7e         .dc.w      $1f7e
000a7c: 25fc         .dc.w      $25fc
000a7e: 4656         not.w      (a6)
000a80: 25fc         .dc.w      $25fc
000a82: 6d29         blt.b      $aad
000a84: 25fc         .dc.w      $25fc
000a86: 93f625fcbabe25fc suba.l     $babe25fc(invalid.w), a1
000a8e: e181         asl.l      #$8, d1
000a90: 25fd         .dc.w      $25fd
000a92: 083e         .dc.w      $083e
000a94: 25fd         .dc.w      $25fd
000a96: 2ef625fd55a725fd move.l     ([$55a725fd]), (a7)+
000a9e: 7c53         moveq      #$53, d6
000aa0: 25fd         .dc.w      $25fd
000aa2: a2f9         dc.w       $a2f9
000aa4: 25fd         .dc.w      $25fd
000aa6: c998         and.l      d4, (a0)+
000aa8: 25fd         .dc.w      $25fd
000aaa: f03225fe     halt       fp1, fp3
000aae: 16c5         move.b     d5, (a3)+
000ab0: 25fe         .dc.w      $25fe
000ab2: 3d5225fe     move.w     (a2), $25fe(a6)
000ab6: 63d8         bls.b      $a90
000ab8: 25fe         .dc.w      $25fe
000aba: 8a58         or.w       (a0)+, d5
000abc: 25fe         .dc.w      $25fe
000abe: b0d1         cmpa.w     (a1), a0
000ac0: 25fe         .dc.w      $25fe
000ac2: d744         addx.w     d4, d3
000ac4: 25fe         .dc.w      $25fe
000ac6: fdaf         dc.w       $fdaf
000ac8: 25ff         .dc.w      $25ff
000aca: 2414         move.l     (a4), d2
000acc: 25ff         .dc.w      $25ff
000ace: 4a7125ff70c825ff tst.w      ([$70c825ff])
000ad6: 9717         sub.b      d3, (a7)
000ad8: 25ff         .dc.w      $25ff
000ada: bd5f         eor.w      d6, (a7)+
000adc: 25ff         .dc.w      $25ff
000ade: e39f         rol.l      #$1, d7
000ae0: 2600         move.l     d0, d3
000ae2: 09d8         bset.b     d4, (a0)+
000ae4: 2600         move.l     d0, d3
000ae6: 3009         move.w     a1, d0
000ae8: 2600         move.l     d0, d3
000aea: 56322600     addq.b     #$3, (a2, d2.w * 8)
000aee: 7c54         moveq      #$54, d6
000af0: 2600         move.l     d0, d3
000af2: a26e         dc.w       $a26e
000af4: 2600         move.l     d0, d3
000af6: c87f         .dc.w      $c87f
000af8: 2600         move.l     d0, d3
000afa: ee89         lsr.l      #$7, d1
000afc: 2601         move.l     d1, d3
000afe: 148a         .dc.w      $148a
000b00: 2601         move.l     d1, d3
000b02: 3a83         move.w     d3, (a5)
000b04: 2601         move.l     d1, d3
000b06: 6074         bra.b      $b7c
000b08: 2601         move.l     d1, d3
000b0a: 865c         or.w       (a4)+, d3
000b0c: 2601         move.l     d1, d3
000b0e: ac3b         dc.w       $ac3b
000b10: 2601         move.l     d1, d3
000b12: d212         add.b      (a2), d1
000b14: 2601         move.l     d1, d3
000b16: f7e0         dc.w       $f7e0
000b18: 2602         move.l     d2, d3
000b1a: 1da52602     move.b     -(a5), $2(a6, d2.w)
000b1e: 4361         .dc.w      $4361
000b20: 2602         move.l     d2, d3
000b22: 6914         bvs.b      $b38
000b24: 2602         move.l     d2, d3
000b26: 8ebd         .dc.w      $8ebd
000b28: 2602         move.l     d2, d3
000b2a: b45e         cmp.w      (a6)+, d2
000b2c: 2602         move.l     d2, d3
000b2e: d9f52602     adda.l     $2(a5, d2.w), a4
000b32: ff83         dc.w       $ff83
000b34: 2603         move.l     d3, d3
000b36: 2507         move.l     d7, -(a2)
000b38: 2603         move.l     d3, d3
000b3a: 4a81         tst.l      d1
000b3c: 2603         move.l     d3, d3
000b3e: 6ff2         ble.b      $b32
000b40: 2603         move.l     d3, d3
000b42: 9559         sub.w      d2, (a1)+
000b44: 2603         move.l     d3, d3
000b46: bab52603     cmp.l      $3(a5, d2.w), d5
000b4a: e008         lsr.b      #$8, d0
000b4c: 2604         move.l     d4, d3
000b4e: 0551         bchg.b     d2, (a1)
000b50: 2604         move.l     d4, d3
000b52: 2a8f         move.l     a7, (a5)
000b54: 2604         move.l     d4, d3
000b56: 4fc3         .dc.w      $4fc3
000b58: 2604         move.l     d4, d3
000b5a: 74ed         moveq      #$ed, d2
000b5c: 2604         move.l     d4, d3
000b5e: 9a0c         .dc.w      $9a0c
000b60: 2604         move.l     d4, d3
000b62: bf21         eor.b      d7, -(a1)
000b64: 2604         move.l     d4, d3
000b66: e42b         lsr.b      d2, d3
000b68: 2605         move.l     d5, d3
000b6a: 092a2605     btst.l     d4, $2605(a2)
000b6e: 2e1e         move.l     (a6)+, d7
000b70: 2605         move.l     d5, d3
000b72: 5307         subq.b     #$1, d7
000b74: 2605         move.l     d5, d3
000b76: 77e5         .dc.w      $77e5
000b78: 2605         move.l     d5, d3
000b7a: 9cb82605     sub.l      $2605.w, d6
000b7e: c17f         .dc.w      $c17f
000b80: 2605         move.l     d5, d3
000b82: e63c         ror.b      d3, d4
000b84: 2606         move.l     d6, d3
000b86: 0aed         .dc.w      $0aed
000b88: 2606         move.l     d6, d3
000b8a: 2f922606     move.l     (a2), $6(a7, d2.w)
000b8e: 542b2606     addq.b     #$2, $2606(a3)
000b92: 78b9         moveq      #$b9, d4
000b94: 2606         move.l     d6, d3
000b96: 9d3b         .dc.w      $9d3b
000b98: 2606         move.l     d6, d3
000b9a: c1b12606     and.l      d0, $6(a1, d2.w)
000b9e: e61b         ror.b      #$3, d3
000ba0: 2607         move.l     d7, d3
000ba2: 0a7926072ecb2607 eori.w     #$2607, $2ecb2607.l
000baa: 5311         subq.b     #$1, (a1)
000bac: 2607         move.l     d7, d3
000bae: 774a         .dc.w      $774a
000bb0: 2607         move.l     d7, d3
000bb2: 9b762607     sub.w      d5, $7(a6, d2.w)
000bb6: bf96         eor.l      d7, (a6)
000bb8: 2607         move.l     d7, d3
000bba: e3aa         lsl.l      d1, d2
000bbc: 2608         move.l     a0, d3
000bbe: 07b02608     bclr.b     d3, $8(a0, d2.w)
000bc2: 2baa26084f9726087376 move.l     $2608(a2), ([], d4.l * 8, $26087376)
000bcc: 2608         move.l     a0, d3
000bce: 9749         subx.w     -(a1), -(a3)
000bd0: 2608         move.l     a0, d3
000bd2: bb0e         cmpm.b     (a6)+, (a5)+
000bd4: 2608         move.l     a0, d3
000bd6: dec7         adda.w     d7, a7
000bd8: 2609         move.l     a1, d3
000bda: 02712609260e andi.w     #$2609, $e(a1, d2.w)
000be0: 2609         move.l     a1, d3
000be2: 499e         chk.w      (a6)+, d4
000be4: 2609         move.l     a1, d3
000be6: 6d20         blt.b      $c08
000be8: 2609         move.l     a1, d3
000bea: 9094         sub.l      (a4), d0
000bec: 2609         move.l     a1, d3
000bee: b3fb2609     cmpa.l     $bf9(pc, d2.w), a1
000bf2: d753         add.w      d3, (a3)
000bf4: 2609         move.l     a1, d3
000bf6: fa9d260a     fbf.w      $3202
000bfa: 1dda         .dc.w      $1dda
000bfc: 260a         move.l     a2, d3
000bfe: 4108         .dc.w      $4108
000c00: 260a         move.l     a2, d3
000c02: 6427         bcc.b      $c2b
000c04: 260a         move.l     a2, d3
000c06: 8739260aaa3b or.b       d3, $260aaa3b.l
000c0c: 260a         move.l     a2, d3
000c0e: cd30260a     and.b      d6, $a(a0, d2.w)
000c12: f015260b     dc.w       $12
000c16: 12ec260b     move.b     $260b(a4), (a1)+
000c1a: 35b4260b586d move.w     $b(a4, d2.w), $6d(a2, d5.l)
000c20: 260b         move.l     a3, d3
000c22: 7b17         .dc.w      $7b17
000c24: 260b         move.l     a3, d3
000c26: 9db2260b     sub.l      d6, $b(a2, d2.w)
000c2a: c03e         .dc.w      $c03e
000c2c: 260b         move.l     a3, d3
000c2e: e2ba         ror.l      d1, d2
000c30: 260c         move.l     a4, d3
000c32: 0527         btst.l     d2, -(a7)
000c34: 260c         move.l     a4, d3
000c36: 2785260c     move.l     d5, $c(a3, d2.w)
000c3a: 49d3         lea.l      (a3), a4
000c3c: 260c         move.l     a4, d3
000c3e: 6c12         bge.b      $c52
000c40: 260c         move.l     a4, d3
000c42: 8e40         or.w       d0, d7
000c44: 260c         move.l     a4, d3
000c46: b05f         cmp.w      (a7)+, d0
000c48: 260c         move.l     a4, d3
000c4a: d26e260c     add.w      $260c(a6), d1
000c4e: f46d         cpushl     #$1, a5
000c50: 260d         move.l     a5, d3
000c52: 165c         .dc.w      $165c
000c54: 260d         move.l     a5, d3
000c56: 383b260d     move.w     $c65(pc, d2.w), d4
000c5a: 5a0a         .dc.w      $5a0a
000c5c: 260d         move.l     a5, d3
000c5e: 7bc8         .dc.w      $7bc8
000c60: 260d         move.l     a5, d3
000c62: 9d76260d     sub.w      d6, $d(a6, d2.w)
000c66: bf13         eor.b      d7, (a3)
000c68: 260d         move.l     a5, d3
000c6a: e09f         ror.l      #$8, d7
000c6c: 260e         move.l     a6, d3
000c6e: 021b260e     andi.b     #$e, (a3)+
000c72: 2387260e     move.l     d7, $e(a1, d2.w)
000c76: 44e1         move.w     -(a1), ccr
000c78: 260e         move.l     a6, d3
000c7a: 662b         bne.b      $ca7
000c7c: 260e         move.l     a6, d3
000c7e: 8763         or.w       d3, -(a3)
000c80: 260e         move.l     a6, d3
000c82: a88a         dc.w       $a88a
000c84: 260e         move.l     a6, d3
000c86: c9a1         and.l      d4, -(a1)
000c88: 260e         move.l     a6, d3
000c8a: eaa5         asr.l      d5, d5
000c8c: 260f         move.l     a7, d3
000c8e: 0b99         bclr.b     d5, (a1)+
000c90: 260f         move.l     a7, d3
000c92: 2c7b260f     movea.l    $ca3(pc, d2.w), a6
000c96: 4d4b         .dc.w      $4d4b
000c98: 260f         move.l     a7, d3
000c9a: 6e0a         bgt.b      $ca6
000c9c: 260f         move.l     a7, d3
000c9e: 8eb8260f     or.l       $260f.w, d7
000ca2: af53         dc.w       $af53
000ca4: 260f         move.l     a7, d3
000ca6: cfdd         muls.w     (a5)+, d7
000ca8: 260f         move.l     a7, d3
000caa: f0542610     fsf.b      (a4)
000cae: 10ba2610     move.b     $32c0(pc), (a0)
000cb2: 310d         move.w     a5, -(a0)
000cb4: 2610         move.l     (a0), d3
000cb6: 514f         subq.w     #$8, a7
000cb8: 2610         move.l     (a0), d3
000cba: 717e         .dc.w      $717e
000cbc: 2610         move.l     (a0), d3
000cbe: 919a         sub.l      d0, (a2)+
000cc0: 2610         move.l     (a0), d3
000cc2: b1a5         eor.l      d0, -(a5)
000cc4: 2610         move.l     (a0), d3
000cc6: d19c         add.l      d0, (a4)+
000cc8: 2610         move.l     (a0), d3
000cca: f181         dc.w       $f181
000ccc: 2611         move.l     (a1), d3
000cce: 11542611     move.b     (a4), $2611(a0)
000cd2: 3113         move.w     (a3), -(a0)
000cd4: 2611         move.l     (a1), d3
000cd6: 50c0         st.b       d0
000cd8: 2611         move.l     (a1), d3
000cda: 705a         moveq      #$5a, d0
000cdc: 2611         move.l     (a1), d3
000cde: 8fe1         divs.w     -(a1), d7
000ce0: 2611         move.l     (a1), d3
000ce2: af55         dc.w       $af55
000ce4: 2611         move.l     (a1), d3
000ce6: ceb52611     and.l      $11(a5, d2.w), d7
000cea: ee03         asr.b      #$7, d3
000cec: 2612         move.l     (a2), d3
000cee: 0d3c26122c63 btst.l     d6, #$26122c63
000cf4: 2612         move.l     (a2), d3
000cf6: 4b76         .dc.w      $4b76
000cf8: 2612         move.l     (a2), d3
000cfa: 6a76         bpl.b      $d72
000cfc: 2612         move.l     (a2), d3
000cfe: 8961         or.w       d4, -(a1)
000d00: 2612         move.l     (a2), d3
000d02: a839         dc.w       $a839
000d04: 2612         move.l     (a2), d3
000d06: c6fe         .dc.w      $c6fe
000d08: 2612         move.l     (a2), d3
000d0a: e5ae         lsl.l      d2, d6
000d0c: 2613         move.l     (a3), d3
000d0e: 044b         .dc.w      $044b
000d10: 2613         move.l     (a3), d3
000d12: 22d3         move.l     (a3), (a1)+
000d14: 2613         move.l     (a3), d3
000d16: 4147         .dc.w      $4147
000d18: 2613         move.l     (a3), d3
000d1a: 5fa7         subq.l     #$7, -(a7)
000d1c: 2613         move.l     (a3), d3
000d1e: 7df3         .dc.w      $7df3
000d20: 2613         move.l     (a3), d3
000d22: 9c2a2613     sub.b      $2613(a2), d6
000d26: ba4d         cmp.w      a5, d5
000d28: 2613         move.l     (a3), d3
000d2a: d85c         add.w      (a4)+, d4
000d2c: 2613         move.l     (a3), d3
000d2e: f6552614     fsolt.b    (a5)
000d32: 143b2614     move.b     $d48(pc, d2.w), d2
000d36: 320b         move.w     a3, d1
000d38: 2614         move.l     (a4), d3
000d3a: 4fc6         .dc.w      $4fc6
000d3c: 2614         move.l     (a4), d3
000d3e: 6d6d         blt.b      $dad
000d40: 2614         move.l     (a4), d3
000d42: 8aff         .dc.w      $8aff
000d44: 2614         move.l     (a4), d3
000d46: a87b         dc.w       $a87b
000d48: 2614         move.l     (a4), d3
000d4a: c5e3         muls.w     -(a3), d2
000d4c: 2614         move.l     (a4), d3
000d4e: e335         roxl.b     d1, d5
000d50: 2615         move.l     (a5), d3
000d52: 007226151d9a2615 ori.w      #$2615, ([, d1.l * 4], $2615)
000d5a: 3aac2615     move.w     $2615(a4), (a5)
000d5e: 57a92615     subq.l     #$3, $2615(a1)
000d62: 7490         moveq      #$90, d2
000d64: 2615         move.l     (a5), d3
000d66: 9162         sub.w      d0, -(a2)
000d68: 2615         move.l     (a5), d3
000d6a: ae1d         dc.w       $ae1d
000d6c: 2615         move.l     (a5), d3
000d6e: cac3         mulu.w     d3, d5
000d70: 2615         move.l     (a5), d3
000d72: e753         roxl.w     #$3, d3
000d74: 2616         move.l     (a6), d3
000d76: 03cd2616     movep.l    d1, $2616(a5)
000d7a: 20322616     move.l     $16(a2, d2.w), d0
000d7e: 3c80         move.w     d0, (a6)
000d80: 2616         move.l     (a6), d3
000d82: 58b72616     addq.l     #$4, $16(a7, d2.w)
000d86: 74d9         moveq      #$d9, d2
000d88: 2616         move.l     (a6), d3
000d8a: 90e4         suba.w     -(a4), a0
000d8c: 2616         move.l     (a6), d3
000d8e: acd9         dc.w       $acd9
000d90: 2616         move.l     (a6), d3
000d92: c8b82616     and.l      $2616.w, d4
000d96: e480         asr.l      #$2, d0
000d98: 2617         move.l     (a7), d3
000d9a: 003126171bcc ori.b      #$17, (invalid.w)
000da0: 2617         move.l     (a7), d3
000da2: 37502617     move.w     (a0), $2617(a3)
000da6: 52bd         .dc.w      $52bd
000da8: 2617         move.l     (a7), d3
000daa: 6e13         bgt.b      $dbf
000dac: 2617         move.l     (a7), d3
000dae: 8952         or.w       d4, (a2)
000db0: 2617         move.l     (a7), d3
000db2: a47a         dc.w       $a47a
000db4: 2617         move.l     (a7), d3
000db6: bf8b         cmpm.l     (a3)+, (a7)+
000db8: 2617         move.l     (a7), d3
000dba: da85         add.l      d5, d5
000dbc: 2617         move.l     (a7), d3
000dbe: f5682618     frestore   $2618(a0)
000dc2: 10342618     move.b     $18(a4, d2.w), d0
000dc6: 2ae82618     move.l     $2618(a0), (a5)+
000dca: 4584         chk.w      d4, d2
000dcc: 2618         move.l     (a0)+, d3
000dce: 6009         bra.b      $dd9
000dd0: 2618         move.l     (a0)+, d3
000dd2: 7a77         moveq      #$77, d5
000dd4: 2618         move.l     (a0)+, d3
000dd6: 94cd         suba.w     a5, a2
000dd8: 2618         move.l     (a0)+, d3
000dda: af0b         dc.w       $af0b
000ddc: 2618         move.l     (a0)+, d3
000dde: c9322618     and.b      d4, $18(a2, d2.w)
000de2: e340         asl.w      #$1, d0
000de4: 2618         move.l     (a0)+, d3
000de6: fd372619     fsave      $19(a7, d2.w)
000dea: 1715         move.b     (a5), -(a3)
000dec: 2619         move.l     (a1)+, d3
000dee: 30dc         move.w     (a4)+, (a0)+
000df0: 2619         move.l     (a1)+, d3
000df2: 4a8a         tst.l      a2
000df4: 2619         move.l     (a1)+, d3
000df6: 6421         bcc.b      $e19
000df8: 2619         move.l     (a1)+, d3
000dfa: 7d9f         .dc.w      $7d9f
000dfc: 2619         move.l     (a1)+, d3
000dfe: 9705         subx.b     d5, d3
000e00: 2619         move.l     (a1)+, d3
000e02: b052         cmp.w      (a2), d0
000e04: 2619         move.l     (a1)+, d3
000e06: c987         .dc.w      $c987
000e08: 2619         move.l     (a1)+, d3
000e0a: e2a3         asr.l      d1, d3
000e0c: 2619         move.l     (a1)+, d3
000e0e: fba7         dc.w       $fba7
000e10: 261a         move.l     (a2)+, d3
000e12: 1492         move.b     (a2), (a2)
000e14: 261a         move.l     (a2)+, d3
000e16: 2d65261a     move.l     -(a5), $261a(a6)
000e1a: 461f         not.b      (a7)+
000e1c: 261a         move.l     (a2)+, d3
000e1e: 5ec0         sgt.b      d0
000e20: 261a         move.l     (a2)+, d3
000e22: 7748         .dc.w      $7748
000e24: 261a         move.l     (a2)+, d3
000e26: 8fb7261a     or.l       d7, $1a(a7, d2.w)
000e2a: a80d         dc.w       $a80d
000e2c: 261a         move.l     (a2)+, d3
000e2e: c04a         .dc.w      $c04a
000e30: 261a         move.l     (a2)+, d3
000e32: d86e261a     add.w      $261a(a6), d4
000e36: f078261b086a fsuge.b    $86a.w
000e3c: 261b         move.l     (a3)+, d3
000e3e: 2042         movea.l    d2, a0
000e40: 261b         move.l     (a3)+, d3
000e42: 3800         move.w     d0, d4
000e44: 261b         move.l     (a3)+, d3
000e46: 4fa6         chk.w      -(a6), d7
000e48: 261b         move.l     (a3)+, d3
000e4a: 6731         beq.b      $e7d
000e4c: 261b         move.l     (a3)+, d3
000e4e: 7ea3         moveq      #$a3, d7
000e50: 261b         move.l     (a3)+, d3
000e52: 95fc261bad3b suba.l     #$261bad3b, a2
000e58: 261b         move.l     (a3)+, d3
000e5a: c460         and.w      -(a0), d2
000e5c: 261b         move.l     (a3)+, d3
000e5e: db6b261b     add.w      d5, $261b(a3)
000e62: f25c261c     fsult.b    (a4)+
000e66: 0934261c     btst.l     d4, $1c(a4, d2.w)
000e6a: 1ff1         .dc.w      $1ff1
000e6c: 261c         move.l     (a4)+, d3
000e6e: 3694         move.w     (a4), (a3)
000e70: 261c         move.l     (a4)+, d3
000e72: 4d1e         chk.l      (a6)+, d6
000e74: 261c         move.l     (a4)+, d3
000e76: 638d         bls.b      $e05
000e78: 261c         move.l     (a4)+, d3
000e7a: 79e2         .dc.w      $79e2
000e7c: 261c         move.l     (a4)+, d3
000e7e: 901c         sub.b      (a4)+, d0
000e80: 261c         move.l     (a4)+, d3
000e82: a63c         dc.w       $a63c
000e84: 261c         move.l     (a4)+, d3
000e86: bc42         cmp.w      d2, d6
000e88: 261c         move.l     (a4)+, d3
000e8a: d22e261c     add.b      $261c(a6), d1
000e8e: e7ff         .dc.w      $e7ff
000e90: 261c         move.l     (a4)+, d3
000e92: fdb5         dc.w       $fdb5
000e94: 261d         move.l     (a5)+, d3
000e96: 1351261d     move.b     (a1), $261d(a1)
000e9a: 28d2         move.l     (a2), (a4)+
000e9c: 261d         move.l     (a5)+, d3
000e9e: 3e38261d     move.w     $261d.w, d7
000ea2: 5383         subq.l     #$1, d3
000ea4: 261d         move.l     (a5)+, d3
000ea6: 68b4         bvc.b      $e5c
000ea8: 261d         move.l     (a5)+, d3
000eaa: 7dca         .dc.w      $7dca
000eac: 261d         move.l     (a5)+, d3
000eae: 92c5         suba.w     d5, a1
000eb0: 261d         move.l     (a5)+, d3
000eb2: a7a4         dc.w       $a7a4
000eb4: 261d         move.l     (a5)+, d3
000eb6: bc69261d     cmp.w      $261d(a1), d6
000eba: d113         add.b      d0, (a3)
000ebc: 261d         move.l     (a5)+, d3
000ebe: e5a1         asl.l      d2, d1
000ec0: 261d         move.l     (a5)+, d3
000ec2: fa14261e     fgetexp    fp1, fp4
000ec6: 0e6c         .dc.w      $0e6c
000ec8: 261e         move.l     (a6)+, d3
000eca: 22a9261e     move.l     $261e(a1), (a1)
000ece: 36ca         move.w     a2, (a3)+
000ed0: 261e         move.l     (a6)+, d3
000ed2: 4ad0         tas.b      (a0)
000ed4: 261e         move.l     (a6)+, d3
000ed6: 5eba         .dc.w      $5eba
000ed8: 261e         move.l     (a6)+, d3
000eda: 7289         moveq      #$89, d1
000edc: 261e         move.l     (a6)+, d3
000ede: 863c261e     or.b       #$1e, d3
000ee2: 99d4         suba.l     (a4), a4
000ee4: 261e         move.l     (a6)+, d3
000ee6: ad50         dc.w       $ad50
000ee8: 261e         move.l     (a6)+, d3
000eea: c0b0261e     and.l      $1e(a0, d2.w), d0
000eee: d3f5261e     adda.l     $1e(a5, d2.w), a1
000ef2: e71d         rol.b      #$3, d5
000ef4: 261e         move.l     (a6)+, d3
000ef6: fa2a261f     fgetman    fp1, fp4
000efa: 0d1a         btst.l     d6, (a2)+
000efc: 261f         move.l     (a7)+, d3
000efe: 1fef         .dc.w      $1fef
000f00: 261f         move.l     (a7)+, d3
000f02: 32a8261f     move.w     $261f(a0), (a1)
000f06: 4545         .dc.w      $4545
000f08: 261f         move.l     (a7)+, d3
000f0a: 57c5         seq.b      d5
000f0c: 261f         move.l     (a7)+, d3
000f0e: 6a29         bpl.b      $f39
000f10: 261f         move.l     (a7)+, d3
000f12: 7c72         moveq      #$72, d6
000f14: 261f         move.l     (a7)+, d3
000f16: 8e9d         or.l       (a5)+, d7
000f18: 261f         move.l     (a7)+, d3
000f1a: a0ad         dc.w       $a0ad
000f1c: 261f         move.l     (a7)+, d3
000f1e: b2a0         cmp.l      -(a0), d1
000f20: 261f         move.l     (a7)+, d3
000f22: c477261f     and.w      $1f(a7, d2.w), d2
000f26: d631261f     add.b      $1f(a1, d2.w), d3
000f2a: e7cf         .dc.w      $e7cf
000f2c: 261f         move.l     (a7)+, d3
000f2e: f950         frestore   (a0)
000f30: 2620         move.l     -(a0), d3
000f32: 0ab526201bfd2620 eori.l     #$26201bfd, $20(a5, d2.w)
000f3a: 2d282620     move.l     $2620(a0), -(a6)
000f3e: 3e372620     move.w     $20(a7, d2.w), d7
000f42: 4f282620     chk.l      $2620(a0), d7
000f46: 5ffd         .dc.w      $5ffd
000f48: 2620         move.l     -(a0), d3
000f4a: 70b6         moveq      #$b6, d0
000f4c: 2620         move.l     -(a0), d3
000f4e: 8151         or.w       d0, (a1)
000f50: 2620         move.l     -(a0), d3
000f52: 91cf         suba.l     a7, a0
000f54: 2620         move.l     -(a0), d3
000f56: a230         dc.w       $a230
000f58: 2620         move.l     -(a0), d3
000f5a: b2752620     cmp.w      $20(a5, d2.w), d1
000f5e: c29c         and.l      (a4)+, d1
000f60: 2620         move.l     -(a0), d3
000f62: d2a6         add.l      -(a6), d1
000f64: 2620         move.l     -(a0), d3
000f66: e293         roxr.l     #$1, d3
000f68: 2620         move.l     -(a0), d3
000f6a: f2632621     fssub.b    -(a3)
000f6e: 02152621     andi.b     #$21, (a5)
000f72: 11aa262121222621307d move.b     $2621(a2), ([$2621, a0, d2.w], $307d)
000f7c: 2621         move.l     -(a1), d3
000f7e: 3fba26214eda move.w     $35a1(pc), -$26(a7, d4.l)
000f84: 2621         move.l     -(a1), d3
000f86: 5ddc         slt.b      (a4)+
000f88: 2621         move.l     -(a1), d3
000f8a: 6cc1         bge.b      $f4d
000f8c: 2621         move.l     -(a1), d3
000f8e: 7b88         .dc.w      $7b88
000f90: 2621         move.l     -(a1), d3
000f92: 8a322621     or.b       $21(a2, d2.w), d5
000f96: 98bd         .dc.w      $98bd
000f98: 2621         move.l     -(a1), d3
000f9a: a72c         dc.w       $a72c
000f9c: 2621         move.l     -(a1), d3
000f9e: b57c         .dc.w      $b57c
000fa0: 2621         move.l     -(a1), d3
000fa2: c3af2621     and.l      d1, $2621(a7)
000fa6: d1c4         adda.l     d4, a0
000fa8: 2621         move.l     -(a1), d3
000faa: dfbb         .dc.w      $dfbb
000fac: 2621         move.l     -(a1), d3
000fae: ed95         roxl.l     #$6, d5
000fb0: 2621         move.l     -(a1), d3
000fb2: fb50         frestore   (a0)
000fb4: 2622         move.l     -(a2), d3
000fb6: 08ee         .dc.w      $08ee
000fb8: 2622         move.l     -(a2), d3
000fba: 166e         .dc.w      $166e
000fbc: 2622         move.l     -(a2), d3
000fbe: 23cf26223113 move.l     a7, $26223113.l
000fc4: 2622         move.l     -(a2), d3
000fc6: 3e382622     move.w     $2622.w, d7
000fca: 4b40         .dc.w      $4b40
000fcc: 2622         move.l     -(a2), d3
000fce: 58292622     addq.b     #$4, $2622(a1)
000fd2: 64f4         bcc.b      $fc8
000fd4: 2622         move.l     -(a2), d3
000fd6: 71a1         .dc.w      $71a1
000fd8: 2622         move.l     -(a2), d3
000fda: 7e30         moveq      #$30, d7
000fdc: 2622         move.l     -(a2), d3
000fde: 8aa0         or.l       -(a0), d5
000fe0: 2622         move.l     -(a2), d3
000fe2: 96f32622     suba.w     $22(a3, d2.w), a3
000fe6: a326         dc.w       $a326
000fe8: 2622         move.l     -(a2), d3
000fea: af3c         dc.w       $af3c
000fec: 2622         move.l     -(a2), d3
000fee: bb332622     eor.b      d5, $22(a3, d2.w)
000ff2: c70c         abcd.b     -(a4), -(a3)
000ff4: 2622         move.l     -(a2), d3
000ff6: d2c6         adda.w     d6, a1
000ff8: 2622         move.l     -(a2), d3
000ffa: de62         add.w      -(a2), d7
000ffc: 2622         move.l     -(a2), d3
000ffe: e9df         .dc.w      $e9df
001000: 2622         move.l     -(a2), d3
001002: f53e         dc.w       $f53e
001004: 2623         move.l     -(a3), d3
001006: 007e         .dc.w      $007e
001008: 2623         move.l     -(a3), d3
00100a: 0b9f         bclr.b     d5, (a7)+
00100c: 2623         move.l     -(a3), d3
00100e: 16a2         move.b     -(a2), (a3)
001010: 2623         move.l     -(a3), d3
001012: 21872623     move.l     d7, $23(a0, d2.w)
001016: 2c4c         movea.l    a4, a6
001018: 2623         move.l     -(a3), d3
00101a: 36f32623     move.w     $23(a3, d2.w), (a3)+
00101e: 417b         .dc.w      $417b
001020: 2623         move.l     -(a3), d3
001022: 4be5         .dc.w      $4be5
001024: 2623         move.l     -(a3), d3
001026: 562f2623     addq.b     #$3, $2623(a7)
00102a: 605b         bra.b      $1087
00102c: 2623         move.l     -(a3), d3
00102e: 6a68         bpl.b      $1098
001030: 2623         move.l     -(a3), d3
001032: 7456         moveq      #$56, d2
001034: 2623         move.l     -(a3), d3
001036: 7e25         moveq      #$25, d7
001038: 2623         move.l     -(a3), d3
00103a: 87d5         divs.w     (a5), d3
00103c: 2623         move.l     -(a3), d3
00103e: 9166         sub.w      d0, -(a6)
001040: 2623         move.l     -(a3), d3
001042: 9ad9         suba.w     (a1)+, a5
001044: 2623         move.l     -(a3), d3
001046: a42c         dc.w       $a42c
001048: 2623         move.l     -(a3), d3
00104a: ad60         dc.w       $ad60
00104c: 2623         move.l     -(a3), d3
00104e: b6752623     cmp.w      $23(a5, d2.w), d3
001052: bf6c2623     eor.w      d7, $2623(a4)
001056: c843         and.w      d3, d4
001058: 2623         move.l     -(a3), d3
00105a: d0fb2623     adda.w     $107f(pc, d2.w), a0
00105e: d993         add.l      d4, (a3)
001060: 2623         move.l     -(a3), d3
001062: e20d         lsr.b      #$1, d5
001064: 2623         move.l     -(a3), d3
001066: ea68         lsr.w      d5, d0
001068: 2623         move.l     -(a3), d3
00106a: f2a32623     fbf.w      $368f
00106e: fabf2624     fbf.w      $3694
001072: 02bc         .dc.w      $02bc
001074: 2624         move.l     -(a4), d3
001076: 0a9926241257 eori.l     #$26241257, (a1)+
00107c: 2624         move.l     -(a4), d3
00107e: 19f6         .dc.w      $19f6
001080: 2624         move.l     -(a4), d3
001082: 2176262428d6 move.l     $24(a6, d2.w), $28d6(a0)
001088: 2624         move.l     -(a4), d3
00108a: 3017         move.w     (a7), d0
00108c: 2624         move.l     -(a4), d3
00108e: 373926243e3b move.w     $26243e3b.l, -(a3)
001094: 2624         move.l     -(a4), d3
001096: 451d         chk.l      (a5)+, d2
001098: 2624         move.l     -(a4), d3
00109a: 4be1         .dc.w      $4be1
00109c: 2624         move.l     -(a4), d3
00109e: 5284         addq.l     #$1, d4
0010a0: 2624         move.l     -(a4), d3
0010a2: 5909         .dc.w      $5909
0010a4: 2624         move.l     -(a4), d3
0010a6: 5f6e2624     subq.w     #$7, $2624(a6)
0010aa: 65b3         bcs.b      $105f
0010ac: 2624         move.l     -(a4), d3
0010ae: 6bd9         bmi.b      $1089
0010b0: 2624         move.l     -(a4), d3
0010b2: 71df         .dc.w      $71df
0010b4: 2624         move.l     -(a4), d3
0010b6: 77c6         .dc.w      $77c6
0010b8: 2624         move.l     -(a4), d3
0010ba: 7d8d         .dc.w      $7d8d
0010bc: 2624         move.l     -(a4), d3
0010be: 83342624     or.b       d1, $24(a4, d2.w)
0010c2: 88bc26248e25 or.l       #$26248e25, d4
0010c8: 2624         move.l     -(a4), d3
0010ca: 936d2624     sub.w      d1, $2624(a5)
0010ce: 9897         sub.l      (a7), d4
0010d0: 2624         move.l     -(a4), d3
0010d2: 9da0         sub.l      d6, -(a0)
0010d4: 2624         move.l     -(a4), d3
0010d6: a28a         dc.w       $a28a
0010d8: 2624         move.l     -(a4), d3
0010da: a754         dc.w       $a754
0010dc: 2624         move.l     -(a4), d3
0010de: abfe         dc.w       $abfe
0010e0: 2624         move.l     -(a4), d3
0010e2: b089         cmp.l      a1, d0
0010e4: 2624         move.l     -(a4), d3
0010e6: b4f42624     cmpa.w     $24(a4, d2.w), a2
0010ea: b93f         .dc.w      $b93f
0010ec: 2624         move.l     -(a4), d3
0010ee: bd6a2624     eor.w      d6, $2624(a2)
0010f2: c1762624     and.w      d0, $24(a6, d2.w)
0010f6: c562         and.w      d2, -(a2)
0010f8: 2624         move.l     -(a4), d3
0010fa: c92e2624     and.b      d4, $2624(a6)
0010fe: ccdb         mulu.w     (a3)+, d6
001100: 2624         move.l     -(a4), d3
001102: d067         add.w      -(a7), d0
001104: 2624         move.l     -(a4), d3
001106: d3d4         adda.l     (a4), a1
001108: 2624         move.l     -(a4), d3
00110a: d721         add.b      d3, -(a1)
00110c: 2624         move.l     -(a4), d3
00110e: da4f         add.w      a7, d5
001110: 2624         move.l     -(a4), d3
001112: dd5c         add.w      d6, (a4)+
001114: 2624         move.l     -(a4), d3
001116: e049         lsr.w      #$8, d1
001118: 2624         move.l     -(a4), d3
00111a: e317         roxl.b     #$1, d7
00111c: 2624         move.l     -(a4), d3
00111e: e5c5         .dc.w      $e5c5
001120: 2624         move.l     -(a4), d3
001122: e853         roxr.w     #$4, d3
001124: 2624         move.l     -(a4), d3
001126: eac1         .dc.w      $eac1
001128: 2624         move.l     -(a4), d3
00112a: ed10         roxl.b     #$6, d0
00112c: 2624         move.l     -(a4), d3
00112e: ef3e         rol.b      d7, d6
001130: 2624         move.l     -(a4), d3
001132: f14c         dc.w       $f14c
001134: 2624         move.l     -(a4), d3
001136: f33b         dc.w       $f33b
001138: 2624         move.l     -(a4), d3
00113a: f50a         dc.w       $f50a
00113c: 2624         move.l     -(a4), d3
00113e: f6b92624     fbf.w      $3764
001142: f8482624f9b7 fdbf       d0, $afd
001148: 2624         move.l     -(a4), d3
00114a: fb06         dc.w       $fb06
00114c: 2624         move.l     -(a4), d3
00114e: fc352624     fsgldiv    fp1, fp4
001152: fd45         dc.w       $fd45
001154: 2624         move.l     -(a4), d3
001156: fe342624     fsgldiv    fp1, fp4
00115a: ff03         dc.w       $ff03
00115c: 2624         move.l     -(a4), d3
00115e: ffb3         dc.w       $ffb3
001160: 2625         move.l     -(a5), d3
001162: 00432625     ori.w      #$2625, d3
001166: 00b2262501022625 ori.l      #$26250102, $25(a2, d2.w)
00116e: 01322604     btst.l     d0, $4(a2, d2.w)
001172: 43c4         .dc.w      $43c4
001174: 2604         move.l     d4, d3
001176: 40b62604     negx.l     $4(a6, d2.w)
00117a: 378d2604     move.w     a5, $4(a3, d2.w)
00117e: 2849         movea.l    a1, a4
001180: 2604         move.l     d4, d3
001182: 12ea2603     move.b     $2603(a2), (a1)+
001186: f7702603     frestore   $3(a0, d2.w)
00118a: d5da         adda.l     (a2)+, a2
00118c: 2603         move.l     d3, d3
00118e: ae29         dc.w       $ae29
001190: 2603         move.l     d3, d3
001192: 805d         or.w       (a5)+, d0
001194: 2603         move.l     d3, d3
001196: 4c77         .dc.w      $4c77
001198: 2603         move.l     d3, d3
00119a: 1275         .dc.w      $1275
00119c: 2602         move.l     d2, d3
00119e: d258         add.w      (a0)+, d1
0011a0: 2602         move.l     d2, d3
0011a2: 8c20         or.b       -(a0), d6
0011a4: 2602         move.l     d2, d3
0011a6: 3fcd         .dc.w      $3fcd
0011a8: 2601         move.l     d1, d3
0011aa: ed5f         rol.w      #$6, d7
0011ac: 2601         move.l     d1, d3
0011ae: 94d6         suba.w     (a6), a2
0011b0: 2601         move.l     d1, d3
0011b2: 36332600     move.w     (a3, d2.w * 8), d3
0011b6: d1752600     add.w      d0, (a5, d2.w * 8)
0011ba: 669c         bne.b      $1158
0011bc: 25ff         .dc.w      $25ff
0011be: f5a8         dc.w       $f5a8
0011c0: 25ff         .dc.w      $25ff
0011c2: 7e9a         moveq      #$9a, d7
0011c4: 25ff         .dc.w      $25ff
0011c6: 017225fe7e2f25fd bchg.b     d0, ([$7e2f25fd])
0011ce: f4d2         cinvp      #$3, a2
0011d0: 25fd         .dc.w      $25fd
0011d2: 655a         bcs.b      $122e
0011d4: 25fc         .dc.w      $25fc
0011d6: cfc8         .dc.w      $cfc8
0011d8: 25fc         .dc.w      $25fc
0011da: 341d         move.w     (a5)+, d2
0011dc: 25fb         .dc.w      $25fb
0011de: 9257         sub.w      (a7), d1
0011e0: 25fa         .dc.w      $25fa
0011e2: ea77         roxr.w     d5, d7
0011e4: 25fa         .dc.w      $25fa
0011e6: 3c7e         .dc.w      $3c7e
0011e8: 25f9         .dc.w      $25f9
0011ea: 886b25f8     or.w       $25f8(a3), d4
0011ee: ce3e         .dc.w      $ce3e
0011f0: 25f8         .dc.w      $25f8
0011f2: 0df825f7     bset.b     d6, $25f7.w
0011f6: 4798         chk.w      (a0)+, d3
0011f8: 25f6         .dc.w      $25f6
0011fa: 7b20         .dc.w      $7b20
0011fc: 25f5         .dc.w      $25f5
0011fe: a88e         dc.w       $a88e
001200: 25f4         .dc.w      $25f4
001202: cfe3         muls.w     -(a3), d7
001204: 25f3         .dc.w      $25f3
001206: f11f         dc.w       $f11f
001208: 25f3         .dc.w      $25f3
00120a: 0c4325f2     cmpi.w     #$25f2, d3
00120e: 214e25f1     move.l     a6, $25f1(a0)
001212: 3041         movea.w    d1, a0
001214: 25f0         .dc.w      $25f0
001216: 391b         move.w     (a3)+, -(a4)
001218: 25ef         .dc.w      $25ef
00121a: 3bdd         .dc.w      $3bdd
00121c: 25ee         .dc.w      $25ee
00121e: 3887         move.w     d7, (a4)
001220: 25ed         .dc.w      $25ed
001222: 2f19         move.l     (a1)+, -(a7)
001224: 25ec         .dc.w      $25ec
001226: 1f9425eb09f725e9ee42 move.b     (a4), ([$9f7], $25e9ee42)
001230: 25e8         .dc.w      $25e8
001232: cc7725e7a494 and.w      ([$a494]), d6
001238: 25e6         .dc.w      $25e6
00123a: 769b         moveq      #$9b, d3
00123c: 25e5         .dc.w      $25e5
00123e: 428a         .dc.w      $428a
001240: 25e4         .dc.w      $25e4
001242: 0864         .dc.w      $0864
001244: 25e2         .dc.w      $25e2
001246: c827         and.b      -(a7), d4
001248: 25e1         .dc.w      $25e1
00124a: 81d4         divs.w     (a4), d0
00124c: 25e0         .dc.w      $25e0
00124e: 356b25dee2ec move.w     $25de(a3), -$1d14(a2)
001254: 25dd         .dc.w      $25dd
001256: 8a58         or.w       (a0)+, d5
001258: 25dc         .dc.w      $25dc
00125a: 2bae25dac6f0 move.l     $25da(a6), -$10(a5, a4.w)
001260: 25d9         .dc.w      $25d9
001262: 5c1c         addq.b     #$6, (a4)+
001264: 25d7         .dc.w      $25d7
001266: eb34         roxl.b     d5, d4
001268: 25d6         .dc.w      $25d6
00126a: 7437         moveq      #$37, d2
00126c: 25d4         .dc.w      $25d4
00126e: f726         fsave      -(a6)
001270: 25d3         .dc.w      $25d3
001272: 7401         moveq      #$1, d2
001274: 25d1         .dc.w      $25d1
001276: eac8         .dc.w      $eac8
001278: 25d0         .dc.w      $25d0
00127a: 5b7c         .dc.w      $5b7c
00127c: 25ce         .dc.w      $25ce
00127e: c61c         and.b      (a4)+, d3
001280: 25cd         .dc.w      $25cd
001282: 2aaa25cb     move.l     $25cb(a2), (a5)
001286: 8924         or.b       d4, -(a4)
001288: 25c9         .dc.w      $25c9
00128a: e18c         lsl.l      #$8, d4
00128c: 25c8         .dc.w      $25c8
00128e: 33e125c68025 move.w     -(a1), $25c68025.l
001294: 25c4         .dc.w      $25c4
001296: c657         and.w      (a7), d3
001298: 25c3         .dc.w      $25c3
00129a: 067725c14085 addi.w     #$25c1, -$7b(a7, d4.w)
0012a0: 25bf         .dc.w      $25bf
0012a2: 7483         moveq      #$83, d2
0012a4: 25bd         .dc.w      $25bd
0012a6: a270         dc.w       $a270
0012a8: 25bbca4d25b9ec1925b8 move.l     $12f7(pc, a4.l), ([$ec1925b8, d2.w * 4])
0012b2: 07d6         bset.b     d3, (a6)
0012b4: 25b61d8325b42d2025b236af25b03a2f move.l     ([, d1.l * 4], $25b42d20), ([$36af25b0, d2.w * 4], $3a2f)
0012c4: 25ae37a025ac2f03 move.l     $37a0(a6), $2f03(d2.w * 4)
0012cc: 25aa205925a80ba1 move.l     $2059(a2), $ba1(d2.w * 4)
0012d4: 25a5f0db     move.l     -(a5), -$25(a2, a7.w)
0012d8: 25a3d009     move.l     -(a3), $9(a2, a5.w)
0012dc: 25a1a92b259f7c40259d move.l     -(a1), ([$259f, a2, a2.l], $7c40259d)
0012e6: 4949         .dc.w      $4949
0012e8: 259b1047     move.l     (a3)+, $47(a2, d1.w)
0012ec: 2598d13925968c21 move.l     (a0)+, ([$25968c21, a2, a5.w])
0012f4: 259440fe     move.l     (a4), -$2(a2, d4.w)
0012f8: 2591efd1     move.l     (a1), ([])
0012fc: 258f989a     move.l     a7, -$66(a2, a1.l)
001300: 258d3b5a258a move.l     a5, ([a2], $258a)
001306: d811         add.b      (a1), d4
001308: 25886ebe     move.l     a0, -$42(a2, d6.l)
00130c: 2585ff642583 move.l     d5, $2583(a2, invalid.w)
001312: 8a01         or.b       d1, d5
001314: 25810e97     move.l     d1, -$69(a2, d0.l)
001318: 257e         .dc.w      $257e
00131a: 8d26         or.b       d6, -(a6)
00131c: 257c05ae2579782f move.l     #$5ae2579, $782f(a2)
001324: 2576e4aa2574 move.l     -$56(a6, a6.w), $2574(a2)
00132a: 4b20         chk.l      -(a0), d5
00132c: 2571ab90256f move.l     (a2.l * 2), $256f(a2)
001332: 05fb         .dc.w      $05fb
001334: 256c5a622569 move.l     $5a62(a4), $2569(a2)
00133a: a8c5         dc.w       $a8c5
00133c: 2566f124     move.l     -(a6), -$edc(a2)
001340: 2564337f     move.l     -(a4), $337f(a2)
001344: 25616fd8     move.l     -(a1), $6fd8(a2)
001348: 255ea62f     move.l     (a6)+, -$59d1(a2)
00134c: 255bd683     move.l     (a3)+, -$297d(a2)
001350: 255900d6     move.l     (a1)+, $d6(a2)
001354: 25562528     move.l     (a6), $2528(a2)
001358: 25534379     move.l     (a3), $4379(a2)
00135c: 25505bca     move.l     (a0), $5bca(a2)
001360: 254d6e1b     move.l     a5, $6e1b(a2)
001364: 254a7a6c     move.l     a2, $7a6c(a2)
001368: 254780bf     move.l     d7, -$7f41(a2)
00136c: 25448113     move.l     d4, -$7eed(a2)
001370: 25417b69     move.l     d1, $7b69(a2)
001374: 253e         .dc.w      $253e
001376: 6fc2         ble.b      $133a
001378: 253b5e1d     move.l     $1397(pc, d5.l), -(a2)
00137c: 2538467c     move.l     $467c.w, -(a2)
001380: 253528df     move.l     -$21(a5, d2.l), -(a2)
001384: 25320546     move.l     ([a2]), -(a2)
001388: 252edbb2     move.l     -$244e(a6), -(a2)
00138c: 252bac23     move.l     -$53dd(a3), -(a2)
001390: 2528769a     move.l     $769a(a0), -(a2)
001394: 2525         move.l     -(a5), -(a2)
001396: 3b17         move.w     (a7), -(a5)
001398: 2521         move.l     -(a1), -(a2)
00139a: f99b         dc.w       $f99b
00139c: 251e         move.l     (a6)+, -(a2)
00139e: b226         cmp.b      -(a6), d1
0013a0: 251b         move.l     (a3)+, -(a2)
0013a2: 64b9         bcc.b      $135d
0013a4: 2518         move.l     (a0)+, -(a2)
0013a6: 11542514     move.b     (a4), $2514(a0)
0013aa: b7f82511     cmpa.l     $2511.w, a3
0013ae: 58a5         addq.l     #$4, -(a5)
0013b0: 250d         move.l     a5, -(a2)
0013b2: f35c         frestore   (a4)+
0013b4: 250a         move.l     a2, -(a2)
0013b6: 881d         or.b       (a5)+, d4
0013b8: 2507         move.l     d7, -(a2)
0013ba: 16ea2503     move.b     $2503(a2), (a3)+
0013be: 9fc1         suba.l     d1, a7
0013c0: 2500         move.l     d0, -(a2)
0013c2: 22a4         move.l     -(a4), (a1)
0013c4: 24fc9f9424f9 move.l     #$9f9424f9, (a2)+
0013ca: 1691         move.b     (a1), (a3)
0013cc: 24f5879b24f1f2b3 move.l     ([, a0.w * 8], $24f1f2b3), (a2)+
0013d4: 24ee57da     move.l     $57da(a6), (a2)+
0013d8: 24eab710     move.l     -$48f0(a2), (a2)+
0013dc: 24e7         move.l     -(a7), (a2)+
0013de: 1055         .dc.w      $1055
0013e0: 24e3         move.l     -(a3), (a2)+
0013e2: 63ab         bls.b      $138f
0013e4: 24df         move.l     (a7)+, (a2)+
0013e6: b112         eor.b      d0, (a2)
0013e8: 24db         move.l     (a3)+, (a2)+
0013ea: f88a24d8     fbf.w      $38c4
0013ee: 3a14         move.w     (a4), d5
0013f0: 24d4         move.l     (a4), (a2)+
0013f2: 75b0         .dc.w      $75b0
0013f4: 24d0         move.l     (a0), (a2)+
0013f6: ab60         dc.w       $ab60
0013f8: 24cc         move.l     a4, (a2)+
0013fa: db23         add.b      d5, -(a3)
0013fc: 24c9         move.l     a1, (a2)+
0013fe: 04fa         .dc.w      $04fa
001400: 24c5         move.l     d5, (a2)+
001402: 28e7         move.l     -(a7), (a4)+
001404: 24c1         move.l     d1, (a2)+
001406: 46e824bd     move.w     $24bd(a0), sr
00140a: 5f00         subq.b     #$7, d0
00140c: 24b9712e24b5 move.l     $712e24b5.l, (a2)
001412: 7d74         .dc.w      $7d74
001414: 24b183d1     move.l     ([]), (a2)
001418: 24ad8447     move.l     -$7bb9(a5), (a2)
00141c: 24a97ed6     move.l     $7ed6(a1), (a2)
001420: 24a5         move.l     -(a5), (a2)
001422: 737e         .dc.w      $737e
001424: 24a1         move.l     -(a1), (a2)
001426: 6241         bhi.b      $1469
001428: 249d         move.l     (a5)+, (a2)
00142a: 4b1e         chk.l      (a6)+, d5
00142c: 2499         move.l     (a1)+, (a2)
00142e: 2e17         move.l     (a7), d7
001430: 2495         move.l     (a5), (a2)
001432: 0b2d2490     btst.l     d5, $2490(a5)
001436: e25f         ror.w      #$1, d7
001438: 248c         move.l     a4, (a2)
00143a: b3ae2488     eor.l      d1, $2488(a6)
00143e: 7f1b         .dc.w      $7f1b
001440: 2484         move.l     d4, (a2)
001442: 44a7         neg.l      -(a7)
001444: 2480         move.l     d0, (a2)
001446: 0453247b     subi.w     #$247b, (a3)
00144a: be1e         cmp.b      (a6)+, d7
00144c: 2477720b     movea.l    $b(a7, d7.w), a2
001450: 24732018     movea.l    $18(a3, d2.w), a2
001454: 246ec847     movea.l    -$37b9(a6), a2
001458: 246a6a99     movea.l    $6a99(a2), a2
00145c: 2466         movea.l    -(a6), a2
00145e: 070f2461     movep.w    $2461(a7), d3
001462: 9da8245d     sub.l      d6, $245d(a0)
001466: 2e66         movea.l    -(a6), a7
001468: 2458         movea.l    (a0)+, a2
00146a: b949         cmpm.w     (a1)+, (a4)+
00146c: 2454         movea.l    (a4), a2
00146e: 3e52         movea.w    (a2), a7
001470: 244f         movea.l    a7, a2
001472: bd82         eor.l      d6, d2
001474: 244b         movea.l    a3, a2
001476: 36d9         move.w     (a1)+, (a3)+
001478: 2446         movea.l    d6, a2
00147a: aa59         dc.w       $aa59
00147c: 2442         movea.l    d2, a2
00147e: 1801         move.b     d1, d4
001480: 243d         .dc.w      $243d
001482: 7fd2         .dc.w      $7fd2
001484: 2438e1ce     move.l     $e1ce.w, d2
001488: 24343df5242f9447 move.l     ([$242f9447]), d2
001490: 242ae4c6     move.l     -$1b3a(a2), d2
001494: 2426         move.l     -(a6), d2
001496: 2f712421744a move.l     $21(a1, d2.w), $744a(a7)
00149c: 241c         move.l     (a4)+, d2
00149e: b352         eor.w      d1, (a2)
0014a0: 2417         move.l     (a7), d2
0014a2: ec89         lsr.l      #$6, d1
0014a4: 2413         move.l     (a3), d2
0014a6: 1ff0         .dc.w      $1ff0
0014a8: 240e         move.l     a6, d2
0014aa: 4d87         chk.w      d7, d6
0014ac: 2409         move.l     a1, d2
0014ae: 7550         .dc.w      $7550
0014b0: 2404         move.l     d4, d2
0014b2: 974b         subx.w     -(a3), -(a3)
0014b4: 23ff         .dc.w      $23ff
0014b6: b37923fac9db eor.w      d1, $23fac9db.l
0014bc: 23f5da7123f0e53c move.l     $71(a5, a5.l), $23f0e53c.l
0014c4: 23ebea3d23e6e975 move.l     -$15c3(a3), $23e6e975.l
0014cc: 23e1e2e423dc move.l     -(a1), $e2e423dc.l
0014d2: d68b         add.l      a3, d3
0014d4: 23d7c46c23d2 move.l     (a7), $c46c23d2.l
0014da: ac86         dc.w       $ac86
0014dc: 23cd8edb23c8 move.l     a5, $8edb23c8.l
0014e2: 6b6b         bmi.b      $154f
0014e4: 23c3423723be move.l     d3, $423723be.l
0014ea: 134023b8     move.b     d0, $23b8(a1)
0014ee: de86         add.l      d6, d7
0014f0: 23b3a40c23ae63d023a9 move.l     $c(a3, a2.w), ([$63d0], d2.w * 2, $23a9)
0014fa: 1dd5         .dc.w      $1dd5
0014fc: 23a3d21a     move.l     -(a3), $1a(a1, a5.w)
001500: 239e80a2     move.l     (a6)+, -$5e(a1, a0.w)
001504: 2399296b2393cc79238e move.l     (a1)+, ([$2393, a1], $cc79238e)
00150e: 69ca         bvs.b      $14da
001510: 238901612383 move.l     a1, ([$2383, a1])
001516: 933d         .dc.w      $933d
001518: 237e         .dc.w      $237e
00151a: 1f602378     move.b     -(a0), $2378(a7)
00151e: a5ca         dc.w       $a5ca
001520: 2373267d236d move.l     $7d(a3, d2.w), $236d(a1)
001526: a179         dc.w       $a179
001528: 236816bf2362 move.l     $16bf(a0), $2362(a1)
00152e: 8650         or.w       (a0), d3
001530: 235cf02d     move.l     (a4)+, -$fd3(a1)
001534: 23575457     move.l     (a7), $5457(a1)
001538: 2351b2cd     move.l     (a1), -$4d33(a1)
00153c: 234c0b93     move.l     a4, $b93(a1)
001540: 23465ea7     move.l     d6, $5ea7(a1)
001544: 2340ac0c     move.l     d0, -$53f4(a1)
001548: 233af3c1     move.l     $90b(pc), -(a1)
00154c: 233535c9     move.l     ([]), -(a1)
001550: 232f7223     move.l     $7223(a7), -(a1)
001554: 2329a8d0     move.l     -$5730(a1), -(a1)
001558: 2323         move.l     -(a3), -(a1)
00155a: d9d3         adda.l     (a3), a4
00155c: 231e         move.l     (a6)+, -(a1)
00155e: 052a2318     btst.l     d2, $2318(a2)
001562: 2ad8         move.l     (a0)+, (a5)+
001564: 2312         move.l     (a2), -(a1)
001566: 4add         tas.b      (a5)+
001568: 230c         move.l     a4, -(a1)
00156a: 653b         bcs.b      $15a7
00156c: 2306         move.l     d6, -(a1)
00156e: 79f1         .dc.w      $79f1
001570: 2300         move.l     d0, -(a1)
001572: 8901         sbcd.b     d1, d4
001574: 22fa926c     move.l     $ffffa7e2(pc), (a1)+
001578: 22f49633     move.l     $33(a4, a1.w), (a1)+
00157c: 22ee9456     move.l     -$6baa(a6), (a1)+
001580: 22e88cd7     move.l     -$7329(a0), (a1)+
001584: 22e2         move.l     -(a2), (a1)+
001586: 7fb7         .dc.w      $7fb7
001588: 22dc         move.l     (a4)+, (a1)+
00158a: 6cf6         bge.b      $1582
00158c: 22d6         move.l     (a6), (a1)+
00158e: 5495         addq.l     #$2, (a5)
001590: 22d0         move.l     (a0), (a1)+
001592: 3696         move.w     (a6), (a3)
001594: 22ca         move.l     a2, (a1)+
001596: 12f922c3e9bf move.b     $22c3e9bf.l, (a1)+
00159c: 22bd         .dc.w      $22bd
00159e: baea22b7     cmpa.w     $22b7(a2), a5
0015a2: 867922b14c6f or.w       $22b14c6f.l, d3
0015a8: 22ab0ccb     move.l     $ccb(a3), (a1)
0015ac: 22a4         move.l     -(a4), (a1)
0015ae: c790         and.l      d3, (a0)
0015b0: 229e         move.l     (a6)+, (a1)
0015b2: 7cbe         moveq      #$be, d6
0015b4: 2298         move.l     (a0)+, (a1)
0015b6: 2c55         movea.l    (a5), a6
0015b8: 2291         move.l     (a1), (a1)
0015ba: d658         add.w      (a0)+, d3
0015bc: 228b         move.l     a3, (a1)
0015be: 7ac6         moveq      #$c6, d5
0015c0: 2285         move.l     d5, (a1)
0015c2: 19a1227e     move.b     -(a1), $7e(a4, d2.w)
0015c6: b2eb2278     cmpa.w     $2278(a3), a1
0015ca: 46a3         not.l      -(a3)
0015cc: 2271d4ca     movea.l    -$36(a1, a5.w), a1
0015d0: 226b5d63     movea.l    $5d63(a3), a1
0015d4: 2264         movea.l    -(a4), a1
0015d6: e06d         lsr.w      d0, d5
0015d8: 225e         movea.l    (a6)+, a1
0015da: 5deb2257     slt.b      $2257(a3)
0015de: d5dc         adda.l     (a4)+, a2
0015e0: 2251         movea.l    (a1), a1
0015e2: 4842         swap       d2
0015e4: 224a         movea.l    a2, a1
0015e6: b51d         eor.b      d2, (a5)+
0015e8: 2244         movea.l    d4, a1
0015ea: 1c70         .dc.w      $1c70
0015ec: 223d         .dc.w      $223d
0015ee: 7e3a         moveq      #$3a, d7
0015f0: 2236da7e     move.l     $7e(a6, a5.l), d1
0015f4: 2230313b222982742222ce28 move.l     ([$22298274, a0, d3.w], $2222ce28), d1
001600: 221c         move.l     (a4)+, d1
001602: 1459         .dc.w      $1459
001604: 2215         move.l     (a5), d1
001606: 5509         .dc.w      $5509
001608: 220e         move.l     a6, d1
00160a: 90372207     sub.b      $7(a7, d2.w), d0
00160e: c5e6         muls.w     -(a6), d2
001610: 2200         move.l     d0, d1
001612: f61621fa20c8 move16     a6, $21fa20c8.l
001618: 21f345fd21ec65b721e5 move.l     ([$21ec65b7]), $21e5.w
001622: 7ff6         .dc.w      $7ff6
001624: 21de94bc     move.l     (a6)+, $94bc.w
001628: 21d7a409     move.l     (a7), $a409.w
00162c: 21d0addf     move.l     (a0), $addf.w
001630: 21c9b23f     move.l     a1, $b23f.w
001634: 21c2b129     move.l     d2, $b129.w
001638: 21bbaa9f21b49ea321ad move.l     $15d9(pc, a2.l), $9ea321ad(d2.w)
001642: 8d3421a67655219f or.b       d6, ([$7655], d2.w, $219f)
00164a: 5a05         addq.b     #$5, d5
00164c: 21983847     move.l     (a0)+, $47(a0, d3.l)
001650: 2191111c     move.l     (a1), (a0, d1.w)
001654: 2189e484     move.l     a1, -$7c(a0, a6.w)
001658: 2182b281     move.l     d2, -$7f(a0, a3.w)
00165c: 217b7b142174 move.l     (a16, d7.l * 2), $2174(a0)
001662: 3e3d         .dc.w      $3e3d
001664: 216cfbff2165 move.l     -$401(a4), $2165(a0)
00166a: b459         cmp.w      (a1)+, d2
00166c: 215e674e     move.l     (a6)+, $674e(a0)
001670: 215714df     move.l     (a7), $14df(a0)
001674: 214fbd0c     move.l     a7, -$42f4(a0)
001678: 21485fd6     move.l     a0, $5fd6(a0)
00167c: 2140fd40     move.l     d0, -$2c0(a0)
001680: 213995492132 move.l     $95492132.l, -(a0)
001686: 27f3         .dc.w      $27f3
001688: 212ab540     move.l     -$4ac0(a2), -(a0)
00168c: 2123         move.l     -(a3), -(a0)
00168e: 3d30211bbfc52114 move.w     ([a0, d2.w], $bfc52114), -(a6)
001696: 3d00         move.w     d0, -(a6)
001698: 210c         move.l     a4, -(a0)
00169a: b4e1         cmpa.w     -(a1), a2
00169c: 2105         move.l     d5, -(a0)
00169e: 276a20fd949d move.l     $20fd(a2), -$6b63(a3)
0016a4: 20f5fc7a     move.l     $7a(a5, a7.l), (a0)+
0016a8: 20ee5f03     move.l     $5f03(a6), (a0)+
0016ac: 20e6         move.l     -(a6), (a0)+
0016ae: bc3920df141c cmp.b      $20df141c.l, d6
0016b4: 20d7         move.l     (a7), (a0)+
0016b6: 66af         bne.b      $1667
0016b8: 20cf         move.l     a7, (a0)+
0016ba: b3f220c7     cmpa.l     -$39(a2, d2.w), a1
0016be: fbe6         dc.w       $fbe6
0016c0: 20c0         move.l     d0, (a0)+
0016c2: 3e8d         move.w     a5, (a7)
0016c4: 20b87be9     move.l     $7be9.w, (a0)
0016c8: 20b0b3f920a8e6c0 move.l     ([$20a8e6c0]), (a0)
0016d0: 20a1         move.l     -(a1), (a0)
0016d2: 143e         .dc.w      $143e
0016d4: 2099         move.l     (a1)+, (a0)
0016d6: 3c752091     movea.w    -$6f(a5, d2.w), a6
0016da: 5f66         subq.w     #$7, -(a6)
0016dc: 2089         move.l     a1, (a0)
0016de: 7d12         .dc.w      $7d12
0016e0: 2081         move.l     d1, (a0)
0016e2: 957b         .dc.w      $957b
0016e4: 2079a8a22071 movea.l    $a8a22071.l, a0
0016ea: b687         cmp.l      d7, d3
0016ec: 2069bf2c     movea.l    -$40d4(a1), a0
0016f0: 2061         movea.l    -(a1), a0
0016f2: c293         and.l      (a3), d1
0016f4: 2059         movea.l    (a1)+, a0
0016f6: c0bd         .dc.w      $c0bd
0016f8: 2051         movea.l    (a1), a0
0016fa: b9aa2049     eor.l      d4, $2049(a2)
0016fe: ad5c         dc.w       $ad5c
001700: 2041         movea.l    d1, a0
001702: 9bd5         suba.l     (a5), a5
001704: 203985162031 move.l     $85162031.l, d0
00170a: 691f         bvs.b      $172b
00170c: 202947f2     move.l     $47f2(a1), d0
001710: 2021         move.l     -(a1), d0
001712: 21912018     move.l     (a1), $18(a0, d2.w)
001716: f5fd         dc.w       $f5fd
001718: 2010         move.l     (a0), d0
00171a: c5362008     and.b      d2, $8(a6, d2.w)
00171e: 8f3f         .dc.w      $8f3f
001720: 2000         move.l     d0, d0
001722: 5418         addq.b     #$2, (a0)+
001724: 1ff8         .dc.w      $1ff8
001726: 13c31fefce42 move.b     d3, $1fefce42.l
00172c: 1fe7         .dc.w      $1fe7
00172e: 8394         or.l       d1, (a4)
001730: 1fdf         .dc.w      $1fdf
001732: 33bc1fd6debb move.w     #$1fd6, -$45(a1, a5.l)
001738: 1fce         .dc.w      $1fce
00173a: 8493         or.l       (a3), d2
00173c: 1fc6         .dc.w      $1fc6
00173e: 25431fbd     move.l     d3, $1fbd(a2)
001742: c0cf         .dc.w      $c0cf
001744: 1fb557371face87c1fa474a01f9bfba51f93 move.b     ([$1face87c, a5], d5.w * 8, $1fa474a0), ([, d1.l * 8], $fba51f93)
001756: 7d8a         .dc.w      $7d8a
001758: 1f8a         .dc.w      $1f8a
00175a: fa531f82     fsogt.b    (a3)
00175e: 71ff         .dc.w      $71ff
001760: 1f79e4911f71520a move.b     $e4911f71.l, $520a(a7)
001768: 1f68ba6a1f60 move.b     -$4596(a0), $1f60(a7)
00176e: 1db51f577be91f4e move.b     ([a5]), ([$1f4e])
001776: d50a         addx.b     -(a2), -(a2)
001778: 1f462919     move.b     d6, $2919(a7)
00177c: 1f3d         .dc.w      $1f3d
00177e: 7816         moveq      #$16, d4
001780: 1f34c204     move.b     $4(a4, a4.w), -(a7)
001784: 1f2c06e3     move.b     $6e3(a4), -(a7)
001788: 1f23         move.b     -(a3), -(a7)
00178a: 46b51f1a817b not.l      ([a5, d1.l * 8], $817b)
001790: 1f11         move.b     (a1), -(a7)
001792: b7361f08     eor.b      d3, (a6, d1.l * 8)
001796: e7e91f00     rol.w      $1f00(a1)
00179a: 13941ef7     move.b     (a4), -$9(a1, d1.l)
00179e: 3a391eee5bda move.w     $1eee5bda.l, d5
0017a4: 1ee5         move.b     -(a5), (a7)+
0017a6: 7876         moveq      #$76, d4
0017a8: 1edc         move.b     (a4)+, (a7)+
0017aa: 9011         sub.b      (a1), d0
0017ac: 1ed3         move.b     (a3), (a7)+
0017ae: a2ab         dc.w       $a2ab
0017b0: 1eca         .dc.w      $1eca
0017b2: b045         cmp.w      d5, d0
0017b4: 1ec1         move.b     d1, (a7)+
0017b6: b8e2         cmpa.w     -(a2), a4
0017b8: 1eb8bc82     move.b     $bc82.w, (a7)
0017bc: 1eafbb27     move.b     -$44d9(a7), (a7)
0017c0: 1ea6         move.b     -(a6), (a7)
0017c2: b4d3         cmpa.w     (a3), a2
0017c4: 1e9d         move.b     (a5)+, (a7)
0017c6: a986         dc.w       $a986
0017c8: 1e94         move.b     (a4), (a7)
0017ca: 9942         subx.w     d2, d4
0017cc: 1e8b         .dc.w      $1e8b
0017ce: 8409         .dc.w      $8409
0017d0: 1e82         move.b     d2, (a7)
0017d2: 69dc         bvs.b      $17b0
0017d4: 1e79         .dc.w      $1e79
0017d6: 4abd         .dc.w      $4abd
0017d8: 1e70         .dc.w      $1e70
0017da: 26ac1e66     move.l     $1e66(a4), (a3)
0017de: fdab         dc.w       $fdab
0017e0: 1e5d         .dc.w      $1e5d
0017e2: cfbd         .dc.w      $cfbd
0017e4: 1e54         .dc.w      $1e54
0017e6: 9ce1         suba.w     -(a1), a6
0017e8: 1e4b         .dc.w      $1e4b
0017ea: 651a         bcs.b      $1806
0017ec: 1e42         .dc.w      $1e42
0017ee: 28691e38     movea.l    $1e38(a1), a4
0017f2: e6d0         ror.w      (a0)
0017f4: 1e2fa04f     move.b     -$5fb1(a7), d7
0017f8: 1e26         move.b     -(a6), d7
0017fa: 54e91e1d     scc.b      $1e1d(a1)
0017fe: 049f1e13af72 subi.l     #$1e13af72, (a7)+
001804: 1e0a         .dc.w      $1e0a
001806: 5563         subq.w     #$2, -(a3)
001808: 1e00         move.b     d0, d7
00180a: f6751df792a9 ftrapeq.b  -$57(a5, a1.w)
001810: 1dee         .dc.w      $1dee
001812: 2a00         move.l     d0, d5
001814: 1de4         .dc.w      $1de4
001816: bc7c1ddb     cmp.w      #$1ddb, d6
00181a: 4a1d         tst.b      (a5)+
00181c: 1dd1         .dc.w      $1dd1
00181e: d2e7         adda.w     -(a7), a1
001820: 1dc8         .dc.w      $1dc8
001822: 56d9         sne.b      (a1)+
001824: 1dbe         .dc.w      $1dbe
001826: d5f61db5503f1dab adda.l     ([$503f1dab], d1.l * 4), a2
00182e: c5b61da2365c1d98 and.l      d2, ([$365c, d1.l * 4], $1d98)
001836: a232         dc.w       $a232
001838: 1d8f         .dc.w      $1d8f
00183a: 093a1d85     btst.l     d4, $35c1(pc)
00183e: 6b76         bmi.b      $18b6
001840: 1d7bc8e81d72 move.b     $182a(pc, a4.l), $1d72(a6)
001846: 218f1d68756f move.l     a7, $756f(a0, invalid.w)
00184c: 1d5ec489     move.b     (a6)+, -$3b77(a6)
001850: 1d550edd     move.b     (a5), $edd(a6)
001854: 1d4b         .dc.w      $1d4b
001856: 546f1d41     addq.w     #$2, $1d41(a7)
00185a: 953e         .dc.w      $953e
00185c: 1d37d14e     move.b     ([a7]), -(a6)
001860: 1d2e089e     move.b     $89e(a6), -(a6)
001864: 1d24         move.b     -(a4), -(a6)
001866: 3b321d1a690a move.w     ([a2, d1.l * 4], $690a), -(a5)
00186c: 1d10         move.b     (a0), -(a6)
00186e: 92281d06     sub.b      $1d06(a0), d1
001872: b68d         cmp.l      a5, d3
001874: 1cfcd63b     move.b     #$3b, (a6)+
001878: 1cf2f1341ce90779 move.b     $1ce90779(a2, a7.w), (a6)+
001880: 1cdf         move.b     (a7)+, (a6)+
001882: 190c         .dc.w      $190c
001884: 1cd5         move.b     (a5), (a6)+
001886: 25ee         .dc.w      $25ee
001888: 1ccb         .dc.w      $1ccb
00188a: 2e21         move.l     -(a1), d7
00188c: 1cc1         move.b     d1, (a6)+
00188e: 31a61cb7     move.w     -(a6), -$49(a0, d1.l)
001892: 307f         .dc.w      $307f
001894: 1cad2aae     move.b     $2aae(a5), (a6)
001898: 1ca3         move.b     -(a3), (a6)
00189a: 20341c99     move.l     -$67(a4, d1.l), d0
00189e: 1113         move.b     (a3), -(a0)
0018a0: 1c8e         .dc.w      $1c8e
0018a2: fd4b         dc.w       $fd4b
0018a4: 1c84         move.b     d4, (a6)
0018a6: e4e0         roxr.w     -(a0)
0018a8: 1c7a         .dc.w      $1c7a
0018aa: c7d2         muls.w     (a2), d3
0018ac: 1c70         .dc.w      $1c70
0018ae: a624         dc.w       $a624
0018b0: 1c66         .dc.w      $1c66
0018b2: 7fd6         .dc.w      $7fd6
0018b4: 1c5c         .dc.w      $1c5c
0018b6: 54ea1c52     scc.b      $1c52(a2)
0018ba: 25621c47     move.l     -(a2), $1c47(a2)
0018be: f13f         dc.w       $f13f
0018c0: 1c3d         .dc.w      $1c3d
0018c2: b884         cmp.l      d4, d4
0018c4: 1c337b311c293949 move.b     ([$1c293949, a3, d7.l * 2]), d6
0018cc: 1c1e         move.b     (a6)+, d6
0018ce: f2cc1c14a7bd fbf.l      $1c14c08d
0018d4: 1c0a         .dc.w      $1c0a
0018d6: 581e         addq.b     #$4, (a6)+
0018d8: 1c00         move.b     d0, d6
0018da: 03ef1bf5     bset.b     d1, $1bf5(a7)
0018de: ab32         dc.w       $ab32
0018e0: 1beb         .dc.w      $1beb
0018e2: 4dea1be0     lea.l      $1be0(a2), a6
0018e6: ec17         roxr.b     #$6, d7
0018e8: 1bd6         .dc.w      $1bd6
0018ea: 85bc         .dc.w      $85bc
0018ec: 1bcc         .dc.w      $1bcc
0018ee: 1ad9         move.b     (a1)+, (a5)+
0018f0: 1bc1         .dc.w      $1bc1
0018f2: ab72         dc.w       $ab72
0018f4: 1bb737861bacbf18 move.b     ([], d3.w * 8, $1bac), (a5, a3.l * 8)
0018fc: 1ba2422b     move.b     -(a2), $2b(a5, d4.w)
001900: 1b97c0be     move.b     (a7), -$42(a5, a4.w)
001904: 1b8d         .dc.w      $1b8d
001906: 3ad4         move.w     (a4), (a5)+
001908: 1b82b06f     move.b     d2, $6f(a5, a3.w)
00190c: 1b7821901b6d move.b     $2190.w, $1b6d(a5)
001912: 8e391b62f66b or.b       $1b62f66b.l, d7
001918: 1b585a29     move.b     (a0)+, $5a29(a5)
00191c: 1b4d         .dc.w      $1b4d
00191e: b9731b43144d1b38 eor.w      d4, ([a3], $144d1b38)
001926: 6ab6         bpl.b      $18de
001928: 1b2dbcb2     move.b     -$434e(a5), -(a5)
00192c: 1b23         move.b     -(a3), -(a5)
00192e: 0a411b18     eori.w     #$1b18, d1
001932: 5365         subq.w     #$1, -(a5)
001934: 1b0d         .dc.w      $1b0d
001936: 9821         sub.b      -(a1), d4
001938: 1b02         move.b     d2, -(a5)
00193a: d8751af8     add.w      -$8(a5, d1.l), d4
00193e: 1464         .dc.w      $1464
001940: 1aed4bef     move.b     $4bef(a5), (a5)+
001944: 1ae2         move.b     -(a2), (a5)+
001946: 7f18         .dc.w      $7f18
001948: 1ad7         move.b     (a7), (a5)+
00194a: ade1         dc.w       $ade1
00194c: 1acc         .dc.w      $1acc
00194e: d84b         add.w      a3, d4
001950: 1ac1         move.b     d1, (a5)+
001952: fe571ab7     ftrapeq.b  (a7)
001956: 2009         move.l     a1, d0
001958: 1aac3d61     move.b     $3d61(a4), (a5)
00195c: 1aa1         move.b     -(a1), (a5)
00195e: 5661         addq.w     #$3, -(a1)
001960: 1a96         move.b     (a6), (a5)
001962: 6b0c         bmi.b      $1970
001964: 1a8b         .dc.w      $1a8b
001966: 7b61         .dc.w      $7b61
001968: 1a80         move.b     d0, (a5)
00196a: 8765         or.w       d3, -(a5)
00196c: 1a75         .dc.w      $1a75
00196e: 8f17         or.b       d7, (a7)
001970: 1a6a         .dc.w      $1a6a
001972: 927a1a5f     sub.w      $33d3(pc), d1
001976: 9190         sub.l      d0, (a0)
001978: 1a54         .dc.w      $1a54
00197a: 8c5a         or.w       (a2)+, d6
00197c: 1a49         .dc.w      $1a49
00197e: 82da         divu.w     (a2)+, d1
001980: 1a3e         .dc.w      $1a3e
001982: 7512         .dc.w      $7512
001984: 1a336304     move.b     (a3, d6.w * 2), d5
001988: 1a284cb1     move.b     $4cb1(a0), d5
00198c: 1a1d         move.b     (a5)+, d5
00198e: 321b         move.w     (a3)+, d1
001990: 1a12         move.b     (a2), d5
001992: 13441a06     move.b     d4, $1a06(a1)
001996: f02e19fb     abcd       fp6, fp3
00199a: c8da         mulu.w     (a2)+, d4
00199c: 19f0         .dc.w      $19f0
00199e: 9d4a         subx.w     -(a2), -(a6)
0019a0: 19e5         .dc.w      $19e5
0019a2: 6d81         blt.b      $1925
0019a4: 19da         .dc.w      $19da
0019a6: 397f         .dc.w      $397f
0019a8: 19cf         .dc.w      $19cf
0019aa: 0146         bchg.b     d0, d6
0019ac: 19c3         .dc.w      $19c3
0019ae: c4d9         mulu.w     (a1)+, d2
0019b0: 19b8843919ad3f68 move.b     $8439.w, ([$3f68], d1.l)
0019b8: 19a1f668     move.b     -(a1), $68(a4, a7.w)
0019bc: 1996a93a198b57e01980 move.b     (a6), ([$198b57e0, a4, a2.l], $1980)
0019c6: 025c1974     andi.w     #$1974, (a4)+
0019ca: a8b1         dc.w       $a8b1
0019cc: 19694ade195d move.b     $4ade(a1), $195d(a4)
0019d2: e8e8         .dc.w      $e8e8
0019d4: 195282cf     move.b     (a2), -$7d31(a4)
0019d8: 19471894     move.b     d7, $1894(a4)
0019dc: 193baa3b     move.b     $1a19(pc, a2.l), -(a4)
0019e0: 193037c5     move.b     ([]), -(a4)
0019e4: 1924         move.b     -(a4), -(a4)
0019e6: c1331919     and.b      d0, ([a3, d1.l])
0019ea: 4687         not.l      d7
0019ec: 190d         .dc.w      $190d
0019ee: c7c4         muls.w     d4, d3
0019f0: 1902         move.b     d2, -(a4)
0019f2: 44ea18f6     move.w     $18f6(a2), ccr
0019f6: bdfd         .dc.w      $bdfd
0019f8: 18eb32fd     move.b     $32fd(a3), (a4)+
0019fc: 18df         move.b     (a7)+, (a4)+
0019fe: a3ed         dc.w       $a3ed
001a00: 18d4         move.b     (a4), (a4)+
001a02: 10cf         .dc.w      $10cf
001a04: 18c8         .dc.w      $18c8
001a06: 79a3         .dc.w      $79a3
001a08: 18bcde6d     move.b     #$6d, (a4)
001a0c: 18b13f2e18a59be7 move.b     ([$18a5, a1], d3.l * 8, $9be7), (a4)
001a14: 1899         move.b     (a1)+, (a4)
001a16: f49b         cinva      #$2
001a18: 188e         .dc.w      $188e
001a1a: 494c         .dc.w      $494c
001a1c: 1882         move.b     d2, (a4)
001a1e: 99fb1876     suba.l     $1a96(pc, d1.l), a4
001a22: e6aa         lsr.l      d3, d2
001a24: 186b         .dc.w      $186b
001a26: 2f5b185f     move.l     (a3)+, $185f(a7)
001a2a: 7411         moveq      #$11, d2
001a2c: 1853         .dc.w      $1853
001a2e: b4cc         cmpa.w     a4, a2
001a30: 1847         .dc.w      $1847
001a32: f18f         dc.w       $f18f
001a34: 183c2a5b     move.b     #$5b, d4
001a38: 18305f33182490191818bd0d move.b     ([$18249019, a0, d5.l * 8], $1818bd0d), d4
001a44: 180c         .dc.w      $180c
001a46: e613         roxr.b     #$3, d3
001a48: 1801         move.b     d1, d4
001a4a: 0b2c17f5     btst.l     d5, $17f5(a4)
001a4e: 2c5a         movea.l    (a2)+, a6
001a50: 17e9         .dc.w      $17e9
001a52: 499e         chk.w      (a6)+, d4
001a54: 17dd         .dc.w      $17dd
001a56: 62fb         bhi.b      $1a53
001a58: 17d1         .dc.w      $17d1
001a5a: 7873         moveq      #$73, d4
001a5c: 17c5         .dc.w      $17c5
001a5e: 8a08         .dc.w      $8a08
001a60: 17b997bb17ada18e17a1 move.b     $97bb17ad.l, ([], a2.w, $17a1)
001a6a: a783         dc.w       $a783
001a6c: 1795a99d     move.b     (a5), ([], a2.l)
001a70: 1789         .dc.w      $1789
001a72: a7dd         dc.w       $a7dd
001a74: 177d         .dc.w      $177d
001a76: a245         dc.w       $a245
001a78: 177198d61765 move.b     -$2a(a1, a1.l), $1765(a3)
001a7e: 8b94         or.l       d5, (a4)
001a80: 17597a7f     move.b     (a1)+, $7a7f(a3)
001a84: 174d         .dc.w      $174d
001a86: 659a         bcs.b      $1a22
001a88: 17414ce7     move.b     d1, $4ce7(a3)
001a8c: 17353067     move.b     $67(a5, d3.w), -(a3)
001a90: 1729101d     move.b     $101d(a1), -(a3)
001a94: 171c         move.b     (a4)+, -(a3)
001a96: ec0a         lsr.b      #$6, d2
001a98: 1710         move.b     (a0), -(a3)
001a9a: c4311704     and.b      (a1, d1.w * 8), d2
001a9e: 9893         sub.l      (a3), d4
001aa0: 16f86933     move.b     $6933.w, (a3)+
001aa4: 16ec3611     move.b     $3611(a4), (a3)+
001aa8: 16df         move.b     (a7)+, (a3)+
001aaa: ff3116d3     fsave      -$2d(a1, d1.w)
001aae: c494         and.l      (a4), d2
001ab0: 16c7         move.b     d7, (a3)+
001ab2: 863c16bb     or.b       #$bb, d3
001ab6: 442c16ae     neg.b      $16ae(a4)
001aba: fe6416a2     fdsub.b    -(a4)
001abe: b4e81696     cmpa.w     $1696(a0), a2
001ac2: 67b8         beq.b      $1a7c
001ac4: 168a         .dc.w      $168a
001ac6: 16d7         move.b     (a7), (a3)+
001ac8: 167d         .dc.w      $167d
001aca: c248         .dc.w      $c248
001acc: 1671         .dc.w      $1671
001ace: 6a0b         bpl.b      $1adb
001ad0: 1665         .dc.w      $1665
001ad2: 0e23         .dc.w      $0e23
001ad4: 1658         .dc.w      $1658
001ad6: ae92         dc.w       $ae92
001ad8: 164c         .dc.w      $164c
001ada: 4b5a         .dc.w      $4b5a
001adc: 163f         .dc.w      $163f
001ade: e47d         ror.w      d2, d5
001ae0: 163379fc16270bdb move.b     $16270bdb(invalid.w), d3
001ae8: 161a         move.b     (a2)+, d3
001aea: 9a1a         sub.b      (a2)+, d5
001aec: 160e         .dc.w      $160e
001aee: 24bc1601abc3 move.l     #$1601abc3, (a2)
001af4: 15f5         .dc.w      $15f5
001af6: 2f3115e8af07 move.l     $af07(invalid.w), -(a7)
001afc: 15dc         .dc.w      $15dc
001afe: 2b4915cf     move.l     a1, $15cf(a5)
001b02: a3f7         dc.w       $a3f7
001b04: 15c3         .dc.w      $15c3
001b06: 1915         move.b     (a5), -(a4)
001b08: 15b68aa315a9f8a4 move.b     -$5d(a6, a0.l), ([$f8a4, d1.w * 4])
001b10: 159d631a1590 move.b     (a5)+, ([a2, d6.w * 2], $1590)
001b16: ca07         and.b      d7, d5
001b18: 15842d6d1577 move.b     d4, ([$1577, a2])
001b1e: 8d4d156a     pack       -(a5), -(a6), #$156a
001b22: e9ab         lsl.l      d4, d3
001b24: 155e4288     move.b     (a6)+, $4288(a2)
001b28: 155197e6     move.b     (a1), -$681a(a2)
001b2c: 1544e9c8     move.b     d4, -$1638(a2)
001b30: 1538382e     move.b     $382e.w, -(a2)
001b34: 152b831c     move.b     -$7ce4(a3), -(a2)
001b38: 151e         move.b     (a6)+, -(a2)
001b3a: ca93         and.l      (a3), d5
001b3c: 1512         move.b     (a2), -(a2)
001b3e: 0e95         .dc.w      $0e95
001b40: 1505         move.b     d5, -(a2)
001b42: 4f24         chk.l      -(a4), d7
001b44: 14f88c43     move.b     $8c43.w, (a2)+
001b48: 14ebc5f4     move.b     -$3a0c(a3), (a2)+
001b4c: 14de         move.b     (a6)+, (a2)+
001b4e: fc3814d2     ftrapf     fp5, fp1
001b52: 2f11         move.l     (a1), -(a7)
001b54: 14c5         move.b     d5, (a2)+
001b56: 5e83         addq.l     #$7, d3
001b58: 14b88a8e     move.b     $8a8e.w, (a2)
001b5c: 14abb334     move.b     -$4ccc(a3), (a2)
001b60: 149e         move.b     (a6)+, (a2)
001b62: d8791491fa5d add.w      $1491fa5d.l, d4
001b68: 1485         move.b     d5, (a2)
001b6a: 18e4         move.b     -(a4), (a4)+
001b6c: 1478         .dc.w      $1478
001b6e: 340e         move.w     a6, d2
001b70: 146b         .dc.w      $146b
001b72: 4bdf         .dc.w      $4bdf
001b74: 145e         .dc.w      $145e
001b76: 6058         bra.b      $1bd0
001b78: 1451         .dc.w      $1451
001b7a: 717b         .dc.w      $717b
001b7c: 1444         .dc.w      $1444
001b7e: 7f4b         .dc.w      $7f4b
001b80: 143789c9     move.b     ([]), d2
001b84: 142a90f7     move.b     -$6f09(a2), d2
001b88: 141d         move.b     (a5)+, d2
001b8a: 94d9         suba.w     (a1)+, a2
001b8c: 1410         move.b     (a0), d2
001b8e: 956f1403     sub.w      d2, $1403(a7)
001b92: 92bc13f68cc2 sub.l      #$13f68cc2, d1
001b98: 13e9838213dc7700 move.b     -$7c7e(a1), $13dc7700.l
001ba0: 13cf         .dc.w      $13cf
001ba2: 673e         beq.b      $1be2
001ba4: 13c2543d13b5 move.b     d2, $543d13b5.l
001baa: 3dff         .dc.w      $3dff
001bac: 13a82486139b07d6138d move.b     $2486(a0), ([, d1.w * 2], $7d6138d)
001bb6: e7ef1380     rol.w      $1380(a7)
001bba: c4d4         mulu.w     (a4), d2
001bbc: 13739e881366 move.b     -$78(a3, a1.l), $1366(a1)
001bc2: 750b         .dc.w      $750b
001bc4: 13594861     move.b     (a1)+, $4861(a1)
001bc8: 134c         .dc.w      $134c
001bca: 188b         .dc.w      $188b
001bcc: 133e         .dc.w      $133e
001bce: e58c         lsl.l      #$2, d4
001bd0: 1331af661324 move.b     ([$1324, a1]), -(a1)
001bd6: 761a         moveq      #$1a, d3
001bd8: 1317         move.b     (a7), -(a1)
001bda: 39ac1309fa1c move.w     $1309(a4), $1c(a4, a7.l)
001be0: 12fcb76e     move.b     #$6e, (a1)+
001be4: 12ef71a3     move.b     $71a3(a7), (a1)+
001be8: 12e2         move.b     -(a2), (a1)+
001bea: 28be         .dc.w      $28be
001bec: 12d4         move.b     (a4), (a1)+
001bee: dcc0         adda.w     d0, a6
001bf0: 12c7         move.b     d7, (a1)+
001bf2: 8dad12ba     or.l       d6, $12ba(a5)
001bf6: 3b8512ac     move.w     d5, -$54(a5, d1.w)
001bfa: e64b         lsr.w      #$3, d3
001bfc: 129f         move.b     (a7)+, (a1)
001bfe: 8e02         or.b       d2, d7
001c00: 1292         move.b     (a2), (a1)
001c02: 32ac1284     move.w     $1284(a4), (a1)
001c06: d449         add.w      a1, d2
001c08: 1277         .dc.w      $1277
001c0a: 72de         moveq      #$de, d1
001c0c: 126a         .dc.w      $126a
001c0e: 0e6c         .dc.w      $0e6c
001c10: 125c         .dc.w      $125c
001c12: a6f5         dc.w       $a6f5
001c14: 124f         .dc.w      $124f
001c16: 3c7b1241     movea.w    $1c59(pc, d1.w), a6
001c1a: cf01         abcd.b     d1, d7
001c1c: 12345e88     move.b     -$78(a4, d5.l), d1
001c20: 1226         move.b     -(a6), d1
001c22: eb13         roxl.b     #$5, d3
001c24: 1219         move.b     (a1)+, d1
001c26: 74a4         moveq      #$a4, d2
001c28: 120b         .dc.w      $120b
001c2a: fb3d         dc.w       $fb3d
001c2c: 11fe         .dc.w      $11fe
001c2e: 7ee1         moveq      #$e1, d7
001c30: 11f0ff9111e3 move.b     ([, a7.l * 8]), $11e3.w
001c36: 7d50         .dc.w      $7d50
001c38: 11d5f820     move.b     (a5), $f820.w
001c3c: 11c8         .dc.w      $11c8
001c3e: 7003         moveq      #$3, d0
001c40: 11bae4fc11ad570c move.b     $13e(pc), ([$570c], d1.w)
001c48: 119fc635     move.b     (a7)+, $35(a0, a4.w)
001c4c: 1192327b     move.b     (a2), $7b(a0, d3.w)
001c50: 11849bdf     move.b     d4, ([])
001c54: 117702631169 move.b     $63(a7, d0.w), $1169(a0)
001c5a: 6609         bne.b      $1c65
001c5c: 115bc6d5     move.b     (a3)+, -$392b(a0)
001c60: 114e         .dc.w      $114e
001c62: 24c7         move.l     d7, (a2)+
001c64: 11407fe2     move.b     d0, $7fe2(a0)
001c68: 1132d829     move.b     $29(a2, a5.l), -(a0)
001c6c: 1125         move.b     -(a5), -(a0)
001c6e: 2d9d111780411109 move.l     (a5)+, ([a6], d1.w, $80411109)
001c76: d017         add.b      (a7), d0
001c78: 10fc1d22     move.b     #$22, (a0)+
001c7c: 10ee6763     move.b     $6763(a6), (a0)+
001c80: 10e0         move.b     -(a0), (a0)+
001c82: aedc         dc.w       $aedc
001c84: 10d2         move.b     (a2), (a0)+
001c86: f391         dc.w       $f391
001c88: 10c5         move.b     d5, (a0)+
001c8a: 358210b7     move.w     d2, -$49(a2, d1.w)
001c8e: 74b3         moveq      #$b3, d2
001c90: 10a9b126     move.b     -$4eda(a1), (a0)
001c94: 109b         move.b     (a3)+, (a0)
001c96: eadd         .dc.w      $eadd
001c98: 108e         .dc.w      $108e
001c9a: 21d91080     move.l     (a1)+, $1080.w
001c9e: 561e         addq.b     #$3, (a6)+
001ca0: 1072         .dc.w      $1072
001ca2: 87ae1064     or.l       d3, $1064(a6)
001ca6: b68a         cmp.l      a2, d3
001ca8: 1056         .dc.w      $1056
001caa: e2b5         roxr.l     d1, d5
001cac: 1049         .dc.w      $1049
001cae: 0c32103b3302102d cmpi.b     #$3b, ([a2, d3.w * 2], $102d)
001cb6: 5728101f     subq.b     #$3, $101f(a0)
001cba: 78a7         moveq      #$a7, d4
001cbc: 1011         move.b     (a1), d0
001cbe: 977f         .dc.w      $977f
001cc0: 1003         move.b     d3, d0
001cc2: b3b40ff5cd480fe7 eor.l      d1, ([$cd480fe7])
001cca: e43d         ror.b      d2, d5
001ccc: 0fd9         bset.b     d7, (a1)+
001cce: f8950fcc     fbf.w      $2c9c
001cd2: 0a530fbe     eori.w     #$fbe, (a3)
001cd6: 19790fb026090fa2 move.b     $fb02609.l, $fa2(a4)
001cde: 3006         move.w     d6, d0
001ce0: 0f94         bclr.b     d7, (a4)
001ce2: 37710f863c4d0f78 move.w     ([], d0.l * 8, $3c4d), $f78(a3)
001cea: 3e9d         move.w     (a5)+, (a7)
001cec: 0f6a3e62     bchg.b     d7, $3e62(a2)
001cf0: 0f5c         bchg.b     d7, (a4)+
001cf2: 3b9e0f4e     move.w     (a6)+, ([a5])
001cf6: 3655         movea.w    (a5), a3
001cf8: 0f40         bchg.b     d7, d0
001cfa: 2e88         move.l     a0, (a7)
001cfc: 0f32243a     btst.l     d7, $3a(a2, d2.w)
001d00: 0f24         btst.l     d7, -(a4)
001d02: 176d0f160823 move.b     $f16(a5), $823(a3)
001d08: 0f07         btst.l     d7, d7
001d0a: f65f0ef9     ftrapoge.b (a7)+
001d0e: e222         asr.b      d1, d2
001d10: 0eeb         .dc.w      $0eeb
001d12: cb700edd     and.w      d5, -$23(a0, d0.l)
001d16: b24a         cmp.w      a2, d1
001d18: 0ecf         .dc.w      $0ecf
001d1a: 96b20ec1     sub.l      -$3f(a2, d0.l), d3
001d1e: 78ac         moveq      #$ac, d4
001d20: 0eb3         .dc.w      $0eb3
001d22: 58390ea5355c addq.b     #$4, $ea5355c.l
001d28: 0e97         .dc.w      $0e97
001d2a: 1016         move.b     (a6), d0
001d2c: 0e88         .dc.w      $0e88
001d2e: e86b         lsr.w      d4, d3
001d30: 0e7a         .dc.w      $0e7a
001d32: be5c         cmp.w      (a4)+, d7
001d34: 0e6c         .dc.w      $0e6c
001d36: 91ec0e5e     suba.l     $e5e(a4), a0
001d3a: 631d         bls.b      $1d59
001d3c: 0e50         .dc.w      $0e50
001d3e: 31f20e41fe6d move.w     $41(a2, d0.l), $fe6d.w
001d44: 0e33         .dc.w      $0e33
001d46: c88f         .dc.w      $c88f
001d48: 0e25         .dc.w      $0e25
001d4a: 905c         sub.w      (a4)+, d0
001d4c: 0e17         .dc.w      $0e17
001d4e: 55d6         scs.b      (a6)
001d50: 0e09         .dc.w      $0e09
001d52: 18ff         .dc.w      $18ff
001d54: 0dfa         .dc.w      $0dfa
001d56: d9d9         adda.l     (a1)+, a4
001d58: 0dec9867     bset.b     d6, -$6799(a4)
001d5c: 0dde         bset.b     d6, (a6)+
001d5e: 54aa0dd0     addq.l     #$2, $dd0(a2)
001d62: 0ea7         .dc.w      $0ea7
001d64: 0dc1         bset.b     d6, d1
001d66: c65e         and.w      (a6)+, d3
001d68: 0db37bd1     bclr.b     d6, ([])
001d6c: 0da5         bclr.b     d6, -(a5)
001d6e: 2f05         move.l     d5, -(a7)
001d70: 0d96         bclr.b     d6, (a6)
001d72: dffa0d88     adda.l     $2afc(pc), a7
001d76: 8eb30d7a3b320d6be57a or.l       ([$3b320d6b, a3], $e57a), d7
001d80: 0d5d         bchg.b     d6, (a5)+
001d82: 8d8d0d4f     unpk       -(a5), -(a6), #$d4f
001d86: 336e0d40d71e move.w     $d40(a6), -$28e2(a1)
001d8c: 0d3278a0     btst.l     d6, -$60(a2, d7.l)
001d90: 0d24         btst.l     d6, -(a4)
001d92: 17f7         .dc.w      $17f7
001d94: 0d15         btst.l     d6, (a5)
001d96: b524         eor.b      d2, -(a4)
001d98: 0d07         btst.l     d6, d7
001d9a: 502b0cf8     addq.b     #$8, $cf8(a3)
001d9e: e90d         lsl.b      #$4, d5
001da0: 0cea         .dc.w      $0cea
001da2: 7fcd         .dc.w      $7fcd
001da4: 0cdc         .dc.w      $0cdc
001da6: 146d         .dc.w      $146d
001da8: 0ccd         .dc.w      $0ccd
001daa: a6f0         dc.w       $a6f0
001dac: 0cbf         .dc.w      $0cbf
001dae: 37570cb0     move.w     (a7), $cb0(a3)
001db2: c5a6         and.l      d2, -(a6)
001db4: 0ca251de0c93 cmpi.l     #$51de0c93, -(a2)
001dba: dc03         add.b      d3, d6
001dbc: 0c8564150c76 cmpi.l     #$64150c76, d5
001dc2: ea19         ror.b      #$5, d1
001dc4: 0c686e0f0c59 cmpi.w     #$6e0f, $c59(a0)
001dca: effb         .dc.w      $effb
001dcc: 0c4b         .dc.w      $0c4b
001dce: 6fdf         ble.b      $1daf
001dd0: 0c3c         .dc.w      $0c3c
001dd2: edbd         rol.l      d6, d5
001dd4: 0c2e69980c1f cmpi.b     #$98, $c1f(a6)
001dda: e371         roxl.w     d1, d1
001ddc: 0c115b4c     cmpi.b     #$4c, (a1)
001de0: 0c02d12b     cmpi.b     #$2b, d2
001de4: 0bf44510     bset.b     d5, (a4, d4.w * 4)
001de8: 0be5         bset.b     d5, -(a5)
001dea: b6fd         .dc.w      $b6fd
001dec: 0bd7         bset.b     d5, (a7)
001dee: 26f50bc8     move.l     (invalid.w), (a3)+
001df2: 94fa0bba     suba.w     $29ae(pc), a2
001df6: 010f0bab     movep.w    $bab(a7), d0
001dfa: 6b35         bmi.b      $1e31
001dfc: 0b9c         bclr.b     d5, (a4)+
001dfe: d3710b8e39c3 add.w      d1, ([], d0.l * 2, $39c3)
001e04: 0b7f         .dc.w      $0b7f
001e06: 9e2e0b71     sub.b      $b71(a6), d7
001e0a: 00b40b6261590b53c01e0b45 ori.l      #$b626159, ([a4], $c01e0b45)
001e16: 1d06         move.b     d6, -(a6)
001e18: 0b367813     btst.l     d5, $13(a6, d7.l)
001e1c: 0b27         btst.l     d5, -(a7)
001e1e: d147         addx.w     d7, d0
001e20: 0b19         btst.l     d5, (a1)+
001e22: 28a5         move.l     -(a5), (a4)
001e24: 0b0a7e30     movep.w    $7e30(a2), d5
001e28: 0afb         .dc.w      $0afb
001e2a: d1ea0aed     adda.l     $aed(a2), a0
001e2e: 23d40ade73f2 move.l     (a4), $ade73f2.l
001e34: 0acf         .dc.w      $0acf
001e36: c246         and.w      d6, d1
001e38: 0ac1         .dc.w      $0ac1
001e3a: 0ed3         .dc.w      $0ed3
001e3c: 0ab2599a0aa3a29f eori.l     #$599a0aa3, -$61(a2, a2.w)
001e44: 0a94e9e30a86 eori.l     #$e9e30a86, (a4)
001e4a: 2f690a777333 move.l     $a77(a1), $7333(a7)
001e50: 0a68b5450a59 eori.w     #$b545, $a59(a0)
001e56: f59f         dc.w       $f59f
001e58: 0a4b         .dc.w      $0a4b
001e5a: 3446         movea.w    d6, a2
001e5c: 0a3c         .dc.w      $0a3c
001e5e: 713a         .dc.w      $713a
001e60: 0a2dac7f0a1e eori.b     #$7f, $a1e(a5)
001e66: e617         roxr.b     #$3, d7
001e68: 0a101e04     eori.b     #$4, (a0)
001e6c: 0a01544a     eori.b     #$4a, d1
001e70: 09f288e9     bset.b     d4, -$17(a2, a0.l)
001e74: 09e3         bset.b     d4, -(a3)
001e76: bbe5         cmpa.l     -(a5), a5
001e78: 09d4         bset.b     d4, (a4)
001e7a: ed40         asl.w      #$6, d0
001e7c: 09c6         bset.b     d4, d6
001e7e: 1cfc09b7     move.b     #$b7, (a6)+
001e82: 4b1d         chk.l      (a5)+, d5
001e84: 09a877a4     bclr.b     d4, $77a4(a0)
001e88: 0999         bclr.b     d4, (a1)+
001e8a: a294         dc.w       $a294
001e8c: 098acbef     movep.w    d4, -$3411(a2)
001e90: 097b         .dc.w      $097b
001e92: f3b7         dc.w       $f3b7
001e94: 096d19f0     bchg.b     d4, $19f0(a5)
001e98: 095e         bchg.b     d4, (a6)+
001e9a: 3e9b         move.w     (a3)+, (a7)
001e9c: 094f61bb     movep.l    $61bb(a7), d4
001ea0: 0940         bchg.b     d4, d0
001ea2: 8353         or.w       d1, (a3)
001ea4: 0931a3650922 btst.l     d4, ([$922, a1])
001eaa: c1f30913deff0904 muls.w     ([a3, d0.l], $deff0904), d0
001eb2: fa8d08f6     fbf.w      $27aa
001eb6: 149f         move.b     (a7)+, (a2)
001eb8: 08e7         .dc.w      $08e7
001eba: 2d3608d8     move.l     -$28(a6, d0.l), -(a6)
001ebe: 4456         neg.w      (a6)
001ec0: 08c9         .dc.w      $08c9
001ec2: 5a02         addq.b     #$5, d2
001ec4: 08ba         .dc.w      $08ba
001ec6: 6e3a         bgt.b      $1f02
001ec8: 08ab         .dc.w      $08ab
001eca: 8103         sbcd.b     d3, d0
001ecc: 089c         .dc.w      $089c
001ece: 925d         sub.w      (a5)+, d1
001ed0: 088d         .dc.w      $088d
001ed2: a24d         dc.w       $a24d
001ed4: 087e         .dc.w      $087e
001ed6: b0d4         cmpa.w     (a4), a0
001ed8: 086f         .dc.w      $086f
001eda: bdf50860     cmpa.l     $60(a5, d0.l), a6
001ede: c9b10851     and.l      d4, $51(a1, d0.l)
001ee2: d40d         .dc.w      $d40d
001ee4: 0842         .dc.w      $0842
001ee6: dd09         addx.b     -(a1), -(a6)
001ee8: 0833         .dc.w      $0833
001eea: e4a9         lsr.l      d2, d1
001eec: 0824         .dc.w      $0824
001eee: eaef0815efde bfchg      -$1022(a7){0:21}
001ef4: 0806         .dc.w      $0806
001ef6: f37707f7f5be07e8 frestore   ([$f5be07e8])
001efe: f6b407d9     fbf.w      $26d9
001f02: f65d07ca     fsugt.b    (a5)+
001f06: f4bb         cpusha     #$2
001f08: 07bb         .dc.w      $07bb
001f0a: f1d0         dc.w       $f1d0
001f0c: 07aced9f     bclr.b     d3, -$1261(a4)
001f10: 079d         bclr.b     d3, (a5)+
001f12: e82a         lsr.b      d4, d2
001f14: 078ee173     movep.w    d3, -$1e8d(a6)
001f18: 077f         .dc.w      $077f
001f1a: d97e         .dc.w      $d97e
001f1c: 0770d04c     bchg.b     d3, $4c(a0, a5.w)
001f20: 0761         bchg.b     d3, -(a1)
001f22: c5e1         muls.w     -(a1), d2
001f24: 0752         bchg.b     d3, (a2)
001f26: ba3e         .dc.w      $ba3e
001f28: 0743         bchg.b     d3, d3
001f2a: ad66         dc.w       $ad66
001f2c: 07349f5b07259020 btst.l     d3, ([a4], $7259020)
001f34: 0716         btst.l     d3, (a6)
001f36: 7fb8         .dc.w      $7fb8
001f38: 0707         btst.l     d3, d7
001f3a: 6e25         bgt.b      $1f61
001f3c: 06f8         .dc.w      $06f8
001f3e: 5b6906e9     subq.w     #$5, $6e9(a1)
001f42: 4787         chk.w      d7, d3
001f44: 06da         .dc.w      $06da
001f46: 3282         move.w     d2, (a1)
001f48: 06cb         dc.w       $6cb
001f4a: 1c5b         .dc.w      $1c5b
001f4c: 06bc         .dc.w      $06bc
001f4e: 0516         btst.l     d2, (a6)
001f50: 06acecb4069dd339 addi.l     #$ecb4069d, -$2cc7(a4)
001f58: 068e         .dc.w      $068e
001f5a: b8a7         cmp.l      -(a7), d4
001f5c: 067f         .dc.w      $067f
001f5e: 9d00         subx.b     d0, d6
001f60: 067080460661 addi.w     #$8046, $61(a0, d0.w)
001f66: 627d         bhi.b      $1fe5
001f68: 065243a7     addi.w     #$43a7, (a2)
001f6c: 064323c6     addi.w     #$23c6, d3
001f70: 063402dc0624 addi.b     #$dc, $24(a4, d0.w)
001f76: e0ed0615     asr.w      $615(a5)
001f7a: bdfa0606     cmpa.l     $2582(pc), a6
001f7e: 9a07         sub.b      d7, d5
001f80: 05f77515     bset.b     d2, ([a7], d7.w * 4)
001f84: 05e84f28     bset.b     d2, $4f28(a0)
001f88: 05d9         bset.b     d2, (a1)+
001f8a: 2841         movea.l    d1, a4
001f8c: 05ca0064     movep.l    d2, $64(a2)
001f90: 05ba         .dc.w      $05ba
001f92: d792         add.l      d3, (a2)
001f94: 05abadce     bclr.b     d2, -$5232(a3)
001f98: 059c         bclr.b     d2, (a4)+
001f9a: 831a         or.b       d1, (a2)+
001f9c: 058d577a     movep.w    d2, $577a(a5)
001fa0: 057e         .dc.w      $057e
001fa2: 2af0056efd7e move.l     ([$fd7e, a0]), (a5)+
001fa8: 055f         bchg.b     d2, (a7)+
001faa: cf26         and.b      d7, -(a6)
001fac: 0550         bchg.b     d2, (a0)
001fae: 9fec0541     suba.l     $541(a4), a7
001fb2: 6fd1         ble.b      $1f85
001fb4: 05323ed8     btst.l     d2, -$28(a2, d3.l)
001fb8: 0523         btst.l     d2, -(a3)
001fba: 0d04         btst.l     d6, d4
001fbc: 0513         btst.l     d2, (a3)
001fbe: da58         add.w      (a0)+, d5
001fc0: 0504         btst.l     d2, d4
001fc2: a6d4         dc.w       $a6d4
001fc4: 04f5         .dc.w      $04f5
001fc6: 727d         moveq      #$7d, d1
001fc8: 04e6         .dc.w      $04e6
001fca: 3d5504d7     move.w     (a5), $4d7(a6)
001fce: 075e         bchg.b     d3, (a6)+
001fd0: 04c7         .dc.w      $04c7
001fd2: d09a         add.l      (a2)+, d0
001fd4: 04b8990d04a960b9 subi.l     #$990d04a9, $60b9.w
001fdc: 049a279f048a subi.l     #$279f048a, (a2)+
001fe2: edc3047b     bfffo      d3{17:3}, d0
001fe6: b328046c     eor.b      d1, $46c(a0)
001fea: 77cf         .dc.w      $77cf
001fec: 045d3bbc     subi.w     #$3bbc, (a5)+
001ff0: 044d         .dc.w      $044d
001ff2: fef0043ec16f fbf.l      $43ee163
001ff8: 042f833a0420 subi.b     #$3a, $420(a7)
001ffe: 4454         neg.w      (a4)
002000: 041104c1     subi.b     #$c1, (a1)
002004: 0401c482     subi.b     #$82, d1
002008: 03f28399     bset.b     d1, ([, a0.w * 2])
00200c: 03e3         bset.b     d1, -(a3)
00200e: 420a         .dc.w      $420a
002010: 03d3         bset.b     d1, (a3)
002012: ffd7         dc.w       $ffd7
002014: 03c4         bset.b     d1, d4
002016: bd02         eor.b      d6, d2
002018: 03b5798e03a6 bclr.b     d1, ([], d7.l, $3a6)
00201e: 357d         .dc.w      $357d
002020: 0396         bclr.b     d1, (a6)
002022: f0d20387ab90 fbf.l      $387cbb4
002028: 037865b9     bchg.b     d1, $65b9.w
00202c: 03691f4f     bchg.b     d1, $1f4f(a1)
002030: 0359         bchg.b     d1, (a1)+
002032: d855         add.w      (a5), d4
002034: 034a90ce     movep.l    -$6f32(a2), d1
002038: 033b48bb     btst.l     d1, $1ff5(pc, d4.l)
00203c: 032c0021     btst.l     d1, $21(a4)
002040: 031c         btst.l     d1, (a4)+
002042: b700         eor.b      d3, d0
002044: 030d6d5c     movep.w    $6d5c(a5), d1
002048: 02fe         .dc.w      $02fe
00204a: 233702ee     move.l     -$12(a7, d0.w), -(a1)
00204e: d893         add.l      (a3), d4
002050: 02df         .dc.w      $02df
002052: 8d7402d0     or.w       d6, -$30(a4, d0.w)
002056: 41dc         .dc.w      $41dc
002058: 02c0         .dc.w      $02c0
00205a: f5cc         dc.w       $f5cc
00205c: 02b1a94902a25c53 andi.l     #$a94902a2, $53(a1, d5.l)
002064: 02930eef0283 andi.l     #$eef0283, (a3)
00206a: c11d         and.b      d0, (a5)+
00206c: 027472e20265 andi.w     #$72e2, $65(a4, d0.w)
002072: 243e         .dc.w      $243e
002074: 0255d536     andi.w     #$d536, (a5)
002078: 024685cb     andi.w     #$85cb, d6
00207c: 023736000227 andi.b     #$0, $27(a7, d0.w)
002082: e5d7         roxl.w     (a7)
002084: 02189554     andi.b     #$54, (a0)+
002088: 0209         .dc.w      $0209
00208a: 447801f9     neg.w      $1f9.w
00208e: f345         dc.w       $f345
002090: 01eaa1c0     bset.b     d0, -$5e40(a2)
002094: 01db         bset.b     d0, (a3)+
002096: 4fe901cb     lea.l      $1cb(a1), a7
00209a: fdc4         dc.w       $fdc4
00209c: 01bc         .dc.w      $01bc
00209e: ab53         dc.w       $ab53
0020a0: 01ad5899     bclr.b     d0, $5899(a5)
0020a4: 019e         bclr.b     d0, (a6)+
0020a6: 0598         bclr.b     d2, (a0)+
0020a8: 018eb253     movep.w    d0, -$4dad(a6)
0020ac: 017f         .dc.w      $017f
0020ae: 5ecc0170     dbgt       d4, $2220
0020b2: 0b05         btst.l     d5, d5
0020b4: 0160         bchg.b     d0, -(a0)
0020b6: b702         eor.b      d3, d2
0020b8: 0151         bchg.b     d0, (a1)
0020ba: 62c5         bhi.b      $2081
0020bc: 0142         bchg.b     d0, d2
0020be: 0e50         .dc.w      $0e50
0020c0: 0132b9a6012364c9 btst.l     d0, ([$123], a3.l, $64c9)
0020c8: 0114         btst.l     d0, (a4)
0020ca: 0fbd         .dc.w      $0fbd
0020cc: 0104         btst.l     d0, d4
0020ce: ba82         cmp.l      d2, d5
0020d0: 00f5         .dc.w      $00f5
0020d2: 651d         bcs.b      $20f1
0020d4: 00e6         .dc.w      $00e6
0020d6: 0f8f00d6     movep.w    d7, $d6(a7)
0020da: b9dc         cmpa.l     (a4)+, a4
0020dc: 00c7         .dc.w      $00c7
0020de: 6405         bcc.b      $20e5
0020e0: 00b80e0d00a8b7f6 ori.l      #$e0d00a8, $b7f6.w
0020e8: 009961c4008a ori.l      #$61c4008a, (a1)+
0020ee: 0b78007a     bchg.b     d5, $7a.w
0020f2: b516         eor.b      d2, (a6)
0020f4: 006b5ea0005c ori.w      #$5ea0, $5c(a3)
0020fa: 0817004c     btst.b     #$4c, (a7)
0020fe: b180         eor.l      d0, d0
002100: 003d         .dc.w      $003d
002102: 5adc         spl.b      (a4)+
002104: 002e042e001e ori.b      #$2e, $1e(a6)
00210a: ad78         dc.w       $ad78
00210c: 000f         .dc.w      $000f
00210e: 56bd         .dc.w      $56bd
002110: 000f         .dc.w      $000f
002112: 5c93         addq.l     #$6, (a3)
002114: 000f         .dc.w      $000f
002116: 5c92         addq.l     #$6, (a2)
002118: 000f         .dc.w      $000f
00211a: 5c8e         addq.l     #$6, a6
00211c: 000f         .dc.w      $000f
00211e: 5c88         addq.l     #$6, a0
002120: 000f         .dc.w      $000f
002122: 5c7f         .dc.w      $5c7f
002124: 000f         .dc.w      $000f
002126: 5c74000f     addq.w     #$6, $f(a4, d0.w)
00212a: 5c66         addq.w     #$6, -(a6)
00212c: 000f         .dc.w      $000f
00212e: 5c55         addq.w     #$6, (a5)
002130: 000f         .dc.w      $000f
002132: 5c42         addq.w     #$6, d2
002134: 000f         .dc.w      $000f
002136: 5c2d000f     addq.b     #$6, $f(a5)
00213a: 5c15         addq.b     #$6, (a5)
00213c: 000f         .dc.w      $000f
00213e: 5bfb000f5bde trapmi.l   #$f5bde
002144: 000f         .dc.w      $000f
002146: 5bbe         .dc.w      $5bbe
002148: 000f         .dc.w      $000f
00214a: 5b9c         subq.l     #$5, (a4)+
00214c: 000f         .dc.w      $000f
00214e: 5b78000f     subq.w     #$5, $f.w
002152: 5b51         subq.w     #$5, (a1)
002154: 000f         .dc.w      $000f
002156: 5b27         subq.b     #$5, -(a7)
002158: 000f         .dc.w      $000f
00215a: 5afb000f5acd trappl.l   #$f5acd
002160: 000f         .dc.w      $000f
002162: 5a9c         addq.l     #$5, (a4)+
002164: 000f         .dc.w      $000f
002166: 5a68000f     addq.w     #$5, $f(a0)
00216a: 5a32000f     addq.b     #$5, $f(a2, d0.w)
00216e: 59f9000f59be svs.b      $f59be.l
002174: 000f         .dc.w      $000f
002176: 5980         subq.l     #$4, d0
002178: 000f         .dc.w      $000f
00217a: 5940         subq.w     #$4, d0
00217c: 000f         .dc.w      $000f
00217e: 58fe         .dc.w      $58fe
002180: 000f         .dc.w      $000f
002182: 58b8000f     addq.l     #$4, $f.w
002186: 5871000f     addq.w     #$4, $f(a1, d0.w)
00218a: 5826         addq.b     #$4, -(a6)
00218c: 000f         .dc.w      $000f
00218e: 57da         seq.b      (a2)+
002190: 000f         .dc.w      $000f
002192: 578a         subq.l     #$3, a2
002194: 000f         .dc.w      $000f
002196: 5739000f56e4 subq.b     #$3, $f56e4.l
00219c: 000f         .dc.w      $000f
00219e: 568e         addq.l     #$3, a6
0021a0: 000f         .dc.w      $000f
0021a2: 5634000f     addq.b     #$3, $f(a4, d0.w)
0021a6: 55d8         scs.b      (a0)+
0021a8: 000f         .dc.w      $000f
0021aa: 557a         .dc.w      $557a
0021ac: 000f         .dc.w      $000f
0021ae: 5519         subq.b     #$2, (a1)+
0021b0: 000f         .dc.w      $000f
0021b2: 54b6000f     addq.l     #$2, $f(a6, d0.w)
0021b6: 5450         addq.w     #$2, (a0)
0021b8: 000f         .dc.w      $000f
0021ba: 53e8000f     sls.b      $f(a0)
0021be: 537d         .dc.w      $537d
0021c0: 000f         .dc.w      $000f
0021c2: 530f         .dc.w      $530f
0021c4: 000f         .dc.w      $000f
0021c6: 529f         addq.l     #$1, (a7)+
0021c8: 000f         .dc.w      $000f
0021ca: 522d000f     addq.b     #$1, $f(a5)
0021ce: 51b8000f     subq.l     #$8, $f.w
0021d2: 5141         subq.w     #$8, d1
0021d4: 000f         .dc.w      $000f
0021d6: 50c7         st.b       d7
0021d8: 000f         .dc.w      $000f
0021da: 504a         addq.w     #$8, a2
0021dc: 000f         .dc.w      $000f
0021de: 4fcb         .dc.w      $4fcb
0021e0: 000f         .dc.w      $000f
0021e2: 4f4a         .dc.w      $4f4a
0021e4: 000f         .dc.w      $000f
0021e6: 4ec6         .dc.w      $4ec6
0021e8: 000f         .dc.w      $000f
0021ea: 4e3f         .dc.w      $4e3f
0021ec: 000f         .dc.w      $000f
0021ee: 4db6000f     chk.w      $f(a6, d0.w), d6
0021f2: 4d2b000f     chk.l      $f(a3), d6
0021f6: 4c9d000f     movem.w    (a5)+, d0-d3
0021fa: 4c0c         .dc.w      $4c0c
0021fc: 000f         .dc.w      $000f
0021fe: 4b79         .dc.w      $4b79
002200: 000f         .dc.w      $000f
002202: 4ae4         tas.b      -(a4)
002204: 000f         .dc.w      $000f
002206: 4a4c         tst.w      a4
002208: 000f         .dc.w      $000f
00220a: 49b1000f     chk.w      $f(a1, d0.w), d4
00220e: 4914         chk.l      (a4), d4
002210: 000f         .dc.w      $000f
002212: 4874000f     pea.l      $f(a4, d0.w)
002216: 47d2         lea.l      (a2), a3
002218: 000f         .dc.w      $000f
00221a: 472e000f     chk.l      $f(a6), d3
00221e: 4687         not.l      d7
002220: 000f         .dc.w      $000f
002222: 45dd         .dc.w      $45dd
002224: 000f         .dc.w      $000f
002226: 4531000f     chk.l      $f(a1, d0.w), d2
00222a: 4483         neg.l      d3
00222c: 000f         .dc.w      $000f
00222e: 43d2         lea.l      (a2), a1
002230: 000f         .dc.w      $000f
002232: 431e         chk.l      (a6)+, d1
002234: 000f         .dc.w      $000f
002236: 4268000f     clr.w      $f(a0)
00223a: 41af000f     chk.w      $f(a7), d0
00223e: 40f4000f     move.w     sr, $f(a4, d0.w)
002242: 4037000f     negx.b     $f(a7, d0.w)
002246: 3f77000f3eb4 move.w     $f(a7, d0.w), $3eb4(a7)
00224c: 000f         .dc.w      $000f
00224e: 3def         .dc.w      $3def
002250: 000f         .dc.w      $000f
002252: 3d28000f     move.w     $f(a0), -(a6)
002256: 3c5d         movea.w    (a5)+, a6
002258: 000f         .dc.w      $000f
00225a: 3b91000f     move.w     (a1), $f(a5, d0.w)
00225e: 3ac2         move.w     d2, (a5)+
002260: 000f         .dc.w      $000f
002262: 39f0         .dc.w      $39f0
002264: 000f         .dc.w      $000f
002266: 391c         move.w     (a4)+, -(a4)
002268: 000f         .dc.w      $000f
00226a: 3846         movea.w    d6, a4
00226c: 000f         .dc.w      $000f
00226e: 376d000f3691 move.w     $f(a5), $3691(a3)
002274: 000f         .dc.w      $000f
002276: 35b3000f34d3 move.w     $f(a3, d0.w), -$2d(a2, d3.w)
00227c: 000f         .dc.w      $000f
00227e: 33f0000f330b000f move.w     $f(a0, d0.w), $330b000f.l
002286: 3223         move.w     -(a3), d1
002288: 000f         .dc.w      $000f
00228a: 3138000f     move.w     $f.w, -(a0)
00228e: 304b         movea.w    a3, a0
002290: 000f         .dc.w      $000f
002292: 2f5c000f     move.l     (a4)+, $f(a7)
002296: 2e6a000f     movea.l    $f(a2), a7
00229a: 2d76000f2c7f move.l     $f(a6, d0.w), $2c7f(a6)
0022a0: 000f         .dc.w      $000f
0022a2: 2b85000f     move.l     d5, $f(a5, d0.w)
0022a6: 2a8a         move.l     a2, (a5)
0022a8: 000f         .dc.w      $000f
0022aa: 298b000f     move.l     a3, $f(a4, d0.w)
0022ae: 288b         move.l     a3, (a4)
0022b0: 000f         .dc.w      $000f
0022b2: 2787000f     move.l     d7, $f(a3, d0.w)
0022b6: 2682         move.l     d2, (a3)
0022b8: 000f         .dc.w      $000f
0022ba: 2579000f246f000f move.l     $f246f.l, $f(a2)
0022c2: 2361000f     move.l     -(a1), $f(a1)
0022c6: 2252         movea.l    (a2), a1
0022c8: 000f         .dc.w      $000f
0022ca: 2140000f     move.l     d0, $f(a0)
0022ce: 202b000f     move.l     $f(a3), d0
0022d2: 1f14         move.b     (a4), -(a7)
0022d4: 000f         .dc.w      $000f
0022d6: 1dfa         .dc.w      $1dfa
0022d8: 000f         .dc.w      $000f
0022da: 1cde         move.b     (a6)+, (a6)+
0022dc: 000f         .dc.w      $000f
0022de: 1bc0         .dc.w      $1bc0
0022e0: 000f         .dc.w      $000f
0022e2: 1a9f         move.b     (a7)+, (a5)
0022e4: 000f         .dc.w      $000f
0022e6: 197c000f1856 move.b     #$f, $1856(a4)
0022ec: 000f         .dc.w      $000f
0022ee: 172d000f     move.b     $f(a5), -(a3)
0022f2: 1602         move.b     d2, d3
0022f4: 000f         .dc.w      $000f
0022f6: 14d5         move.b     (a5), (a2)+
0022f8: 000f         .dc.w      $000f
0022fa: 13a5000f     move.b     -(a5), $f(a1, d0.w)
0022fe: 1273         .dc.w      $1273
002300: 000f         .dc.w      $000f
002302: 113e         .dc.w      $113e
002304: 000f         .dc.w      $000f
002306: 1007         move.b     d7, d0
002308: 000f         .dc.w      $000f
00230a: 0ece         .dc.w      $0ece
00230c: 000f         .dc.w      $000f
00230e: 0d91         bclr.b     d6, (a1)
002310: 000f         .dc.w      $000f
002312: 0c53000f     cmpi.w     #$f, (a3)
002316: 0b12         btst.l     d5, (a2)
002318: 000f         .dc.w      $000f
00231a: 09ce000f     movep.l    d4, $f(a6)
00231e: 0888         .dc.w      $0888
002320: 000f         .dc.w      $000f
002322: 0740         bchg.b     d3, d0
002324: 000f         .dc.w      $000f
002326: 05f5000f     bset.b     d2, $f(a5, d0.w)
00232a: 04a8000f0358000f subi.l     #$f0358, $f(a0)
002332: 0206000f     andi.b     #$f, d6
002336: 00b1000eff5a000e ori.l      #$eff5a, $e(a1, d0.w)
00233e: fe00000e     fsin       fp0
002342: fca4000e     fbf.w      $2352
002346: fb46         dc.w       $fb46
002348: 000e         .dc.w      $000e
00234a: f9e5         dc.w       $f9e5
00234c: 000e         .dc.w      $000e
00234e: f882000e     fbf.w      $235e
002352: f71c         dc.w       $f71c
002354: 000e         .dc.w      $000e
002356: f5b4         dc.w       $f5b4
002358: 000e         .dc.w      $000e
00235a: f449000ef2dc fdbf       d1, $163a
002360: 000e         .dc.w      $000e
002362: f16c000e     frestore   $e(a4)
002366: effa         .dc.w      $effa
002368: 000e         .dc.w      $000e
00236a: ee86         asr.l      #$7, d6
00236c: 000e         .dc.w      $000e
00236e: ed0f         lsl.b      #$6, d7
002370: 000e         .dc.w      $000e
002372: eb95         roxl.l     #$5, d5
002374: 000e         .dc.w      $000e
002376: ea19         ror.b      #$5, d1
002378: 000e         .dc.w      $000e
00237a: e89b         ror.l      #$4, d3
00237c: 000e         .dc.w      $000e
00237e: e71b         rol.b      #$3, d3
002380: 000e         .dc.w      $000e
002382: e597         roxl.l     #$2, d7
002384: 000e         .dc.w      $000e
002386: e412         roxr.b     #$2, d2
002388: 000e         .dc.w      $000e
00238a: e28a         lsr.l      #$1, d2
00238c: 000e         .dc.w      $000e
00238e: e100         asl.b      #$8, d0
002390: 000e         .dc.w      $000e
002392: df73000e     add.w      d7, $e(a3, d0.w)
002396: dde3         adda.l     -(a3), a6
002398: 000e         .dc.w      $000e
00239a: dc52         add.w      (a2), d6
00239c: 000e         .dc.w      $000e
00239e: dabe         .dc.w      $dabe
0023a0: 000e         .dc.w      $000e
0023a2: d927         add.b      d4, -(a7)
0023a4: 000e         .dc.w      $000e
0023a6: d78e         addx.l     -(a6), -(a3)
0023a8: 000e         .dc.w      $000e
0023aa: d5f3000e     adda.l     $e(a3, d0.w), a2
0023ae: d455         add.w      (a5), d2
0023b0: 000e         .dc.w      $000e
0023b2: d2b5000e     add.l      $e(a5, d0.w), d1
0023b6: d112         add.b      d0, (a2)
0023b8: 000e         .dc.w      $000e
0023ba: cf6d000e     and.w      d7, $e(a5)
0023be: cdc5         muls.w     d5, d6
0023c0: 000e         .dc.w      $000e
0023c2: cc1c         and.b      (a4)+, d6
0023c4: 000e         .dc.w      $000e
0023c6: ca6f000e     and.w      $e(a7), d5
0023ca: c8c0         mulu.w     d0, d4
0023cc: 000e         .dc.w      $000e
0023ce: c70f         abcd.b     -(a7), -(a3)
0023d0: 000e         .dc.w      $000e
0023d2: c55c         and.w      d2, (a4)+
0023d4: 000e         .dc.w      $000e
0023d6: c3a6         and.l      d1, -(a6)
0023d8: 000e         .dc.w      $000e
0023da: c1ed000e     muls.w     $e(a5), d0
0023de: c033000e     and.b      $e(a3, d0.w), d0
0023e2: be75000e     cmp.w      $e(a5, d0.w), d7
0023e6: bcb6000e     cmp.l      $e(a6, d0.w), d6
0023ea: baf4000e     cmpa.w     $e(a4, d0.w), a5
0023ee: b92f000e     eor.b      d4, $e(a7)
0023f2: b768000e     eor.w      d3, $e(a0)
0023f6: b59f         eor.l      d2, (a7)+
0023f8: 000e         .dc.w      $000e
0023fa: b3d4         cmpa.l     (a4), a1
0023fc: 000e         .dc.w      $000e
0023fe: b206         cmp.b      d6, d1
002400: 000e         .dc.w      $000e
002402: b035000e     cmp.b      $e(a5, d0.w), d0
002406: ae62         dc.w       $ae62
002408: 000e         .dc.w      $000e
00240a: ac8d         dc.w       $ac8d
00240c: 000e         .dc.w      $000e
00240e: aab6         dc.w       $aab6
002410: 000e         .dc.w      $000e
002412: a8dc         dc.w       $a8dc
002414: 000e         .dc.w      $000e
002416: a6ff         dc.w       $a6ff
002418: 000e         .dc.w      $000e
00241a: a520         dc.w       $a520
00241c: 000e         .dc.w      $000e
00241e: a33f         dc.w       $a33f
002420: 000e         .dc.w      $000e
002422: a15c         dc.w       $a15c
002424: 000e         .dc.w      $000e
002426: 9f76000e     sub.w      d7, $e(a6, d0.w)
00242a: 9d8d         subx.l     -(a5), -(a6)
00242c: 000e         .dc.w      $000e
00242e: 9ba3         sub.l      d5, -(a3)
002430: 000e         .dc.w      $000e
002432: 99b6000e     sub.l      d4, $e(a6, d0.w)
002436: 97c6         suba.l     d6, a3
002438: 000e         .dc.w      $000e
00243a: 95d4         suba.l     (a4), a2
00243c: 000e         .dc.w      $000e
00243e: 93e0         suba.l     -(a0), a1
002440: 000e         .dc.w      $000e
002442: 91e9000e     suba.l     $e(a1), a0
002446: 8ff0000e     divs.w     $e(a0, d0.w), d7
00244a: 8df5000e     divs.w     $e(a5, d0.w), d6
00244e: 8bf7000e     divs.w     $e(a7, d0.w), d5
002452: 89f7000e     divs.w     $e(a7, d0.w), d4
002456: 87f5000e     divs.w     $e(a5, d0.w), d3
00245a: 85f0000e     divs.w     $e(a0, d0.w), d2
00245e: 83e9000e     divs.w     $e(a1), d1
002462: 81df         divs.w     (a7)+, d0
002464: 000e         .dc.w      $000e
002466: 7fd3         .dc.w      $7fd3
002468: 000e         .dc.w      $000e
00246a: 7dc5         .dc.w      $7dc5
00246c: 000e         .dc.w      $000e
00246e: 7bb4         .dc.w      $7bb4
002470: 000e         .dc.w      $000e
002472: 79a1         .dc.w      $79a1
002474: 000e         .dc.w      $000e
002476: 778c         .dc.w      $778c
002478: 000e         .dc.w      $000e
00247a: 7574         .dc.w      $7574
00247c: 000e         .dc.w      $000e
00247e: 735a         .dc.w      $735a
002480: 000e         .dc.w      $000e
002482: 713e         .dc.w      $713e
002484: 000e         .dc.w      $000e
002486: 6f1f         ble.b      $24a7
002488: 000e         .dc.w      $000e
00248a: 6cfe         bge.b      $248a
00248c: 000e         .dc.w      $000e
00248e: 6ada         bpl.b      $246a
002490: 000e         .dc.w      $000e
002492: 68b4         bvc.b      $2448
002494: 000e         .dc.w      $000e
002496: 668c         bne.b      $2424
002498: 000e         .dc.w      $000e
00249a: 6462         bcc.b      $24fe
00249c: 000e         .dc.w      $000e
00249e: 6235         bhi.b      $24d5
0024a0: 000e         .dc.w      $000e
0024a2: 6006         bra.b      $24aa
0024a4: 000e         .dc.w      $000e
0024a6: 5dd4         slt.b      (a4)
0024a8: 000e         .dc.w      $000e
0024aa: 5ba0         subq.l     #$5, -(a0)
0024ac: 000e         .dc.w      $000e
0024ae: 596a000e     subq.w     #$4, $e(a2)
0024b2: 5731000e     subq.b     #$3, $e(a1, d0.w)
0024b6: 54f7000e     scc.b      $e(a7, d0.w)
0024ba: 52b9000e507a addq.l     #$1, $e507a.l
0024c0: 000e         .dc.w      $000e
0024c2: 4e38         .dc.w      $4e38
0024c4: 000e         .dc.w      $000e
0024c6: 4bf4000e     lea.l      $e(a4, d0.w), a5
0024ca: 49ad000e     chk.w      $e(a5), d4
0024ce: 4764         .dc.w      $4764
0024d0: 000e         .dc.w      $000e
0024d2: 4519         chk.l      (a1)+, d2
0024d4: 000e         .dc.w      $000e
0024d6: 42cc         .dc.w      $42cc
0024d8: 000e         .dc.w      $000e
0024da: 407c         .dc.w      $407c
0024dc: 000e         .dc.w      $000e
0024de: 3e2a000e     move.w     $e(a2), d7
0024e2: 3bd5         .dc.w      $3bd5
0024e4: 000e         .dc.w      $000e
0024e6: 397e         .dc.w      $397e
0024e8: 000e         .dc.w      $000e
0024ea: 3725         move.w     -(a5), -(a3)
0024ec: 000e         .dc.w      $000e
0024ee: 34ca         move.w     a2, (a2)+
0024f0: 000e         .dc.w      $000e
0024f2: 326c000e     movea.w    $e(a4), a1
0024f6: 300c         move.w     a4, d0
0024f8: 000e         .dc.w      $000e
0024fa: 2daa000e2b45 move.l     $e(a2), ([a6])
002500: 000e         .dc.w      $000e
002502: 28de         move.l     (a6)+, (a4)+
002504: 000e         .dc.w      $000e
002506: 2675000e     movea.l    $e(a5, d0.w), a3
00250a: 2409         move.l     a1, d2
00250c: 000e         .dc.w      $000e
00250e: 219b000e     move.l     (a3)+, $e(a0, d0.w)
002512: 1f2b000e     move.b     $e(a3), -(a7)
002516: 1cb9000e1a44 move.b     $e1a44.l, (a6)
00251c: 000e         .dc.w      $000e
00251e: 17cd         .dc.w      $17cd
002520: 000e         .dc.w      $000e
002522: 1554000e     move.b     (a4), $e(a2)
002526: 12d8         move.b     (a0)+, (a1)+
002528: 000e         .dc.w      $000e
00252a: 105a         .dc.w      $105a
00252c: 000e         .dc.w      $000e
00252e: 0dda         bset.b     d6, (a2)+
002530: 000e         .dc.w      $000e
002532: 0b58         bchg.b     d5, (a0)+
002534: 000e         .dc.w      $000e
002536: 08d3000e     bset.b     #$e, (a3)
00253a: 064c         .dc.w      $064c
00253c: 000e         .dc.w      $000e
00253e: 03c3         bset.b     d1, d3
002540: 000e         .dc.w      $000e
002542: 0137000d     btst.l     d0, $d(a7, d0.w)
002546: fea9000d     fbf.w      $2555
00254a: fc19000d     fatanh     fp0
00254e: f987         dc.w       $f987
002550: 000d         .dc.w      $000d
002552: f6f2000df45b fbf.l      $e19af
002558: 000d         .dc.w      $000d
00255a: f1c2         dc.w       $f1c2
00255c: 000d         .dc.w      $000d
00255e: ef26         asl.b      d7, d6
002560: 000d         .dc.w      $000d
002562: ec89         lsr.l      #$6, d1
002564: 000d         .dc.w      $000d
002566: e9e9000de746 bfextu     -$18ba(a1){0:13}, d0
00256c: 000d         .dc.w      $000d
00256e: e4a2         asr.l      d2, d2
002570: 000d         .dc.w      $000d
002572: e1fb         .dc.w      $e1fb
002574: 000d         .dc.w      $000d
002576: df52         add.w      d7, (a2)
002578: 000d         .dc.w      $000d
00257a: dca7         add.l      -(a7), d6
00257c: 000d         .dc.w      $000d
00257e: d9f9000dd74a adda.l     $dd74a.l, a4
002584: 000d         .dc.w      $000d
002586: d498         add.l      (a0)+, d2
002588: 000d         .dc.w      $000d
00258a: d1e3         adda.l     -(a3), a0
00258c: 000d         .dc.w      $000d
00258e: cf2d000d     and.b      d7, $d(a5)
002592: cc74000d     and.w      $d(a4, d0.w), d6
002596: c9b9000dc6fc and.l      d4, $dc6fc.l
00259c: 000d         .dc.w      $000d
00259e: c43c000d     and.b      #$d, d2
0025a2: c17b         .dc.w      $c17b
0025a4: 000d         .dc.w      $000d
0025a6: beb7000d     cmp.l      $d(a7, d0.w), d7
0025aa: bbf1000d     cmpa.l     $d(a1, d0.w), a5
0025ae: b928000d     eor.b      d4, $d(a0)
0025b2: b65e         cmp.w      (a6)+, d3
0025b4: 000d         .dc.w      $000d
0025b6: b391         eor.l      d1, (a1)
0025b8: 000d         .dc.w      $000d
0025ba: b0c2         cmpa.w     d2, a0
0025bc: 000d         .dc.w      $000d
0025be: adf1         dc.w       $adf1
0025c0: 000d         .dc.w      $000d
0025c2: ab1d         dc.w       $ab1d
0025c4: 000d         .dc.w      $000d
0025c6: a848         dc.w       $a848
0025c8: 000d         .dc.w      $000d
0025ca: a570         dc.w       $a570
0025cc: 000d         .dc.w      $000d
0025ce: a296         dc.w       $a296
0025d0: 000d         .dc.w      $000d
0025d2: 9fb9000d9cdb sub.l      d7, $d9cdb.l
0025d8: 000d         .dc.w      $000d
0025da: 99fa000d     suba.l     $25e9(pc), a4
0025de: 9717         sub.b      d3, (a7)
0025e0: 000d         .dc.w      $000d
0025e2: 9432000d     sub.b      $d(a2, d0.w), d2
0025e6: 914b         subx.w     -(a3), -(a0)
0025e8: 000d         .dc.w      $000d
0025ea: 8e61         or.w       -(a1), d7
0025ec: 000d         .dc.w      $000d
0025ee: 8b75000d     or.w       d5, $d(a5, d0.w)
0025f2: 8887         or.l       d7, d4
0025f4: 000d         .dc.w      $000d
0025f6: 8597         or.l       d2, (a7)
0025f8: 000d         .dc.w      $000d
0025fa: 82a5         or.l       -(a5), d1
0025fc: 000d         .dc.w      $000d
0025fe: 7fb1         .dc.w      $7fb1
002600: 000d         .dc.w      $000d
002602: 7cba         moveq      #$ba, d6
002604: 000d         .dc.w      $000d
002606: 79c1         .dc.w      $79c1
002608: 000d         .dc.w      $000d
00260a: 76c6         moveq      #$c6, d3
00260c: 000d         .dc.w      $000d
00260e: 73c9         .dc.w      $73c9
002610: 000d         .dc.w      $000d
002612: 70c9         moveq      #$c9, d0
002614: 000d         .dc.w      $000d
002616: 6dc8         blt.b      $25e0
002618: 000d         .dc.w      $000d
00261a: 6ac4         bpl.b      $25e0
00261c: 000d         .dc.w      $000d
00261e: 67be         beq.b      $25de
002620: 000d         .dc.w      $000d
002622: 64b6         bcc.b      $25da
002624: 000d         .dc.w      $000d
002626: 61ac         bsr.b      $25d4
002628: 000d         .dc.w      $000d
00262a: 5e9f         addq.l     #$7, (a7)+
00262c: 000d         .dc.w      $000d
00262e: 5b91         subq.l     #$5, (a1)
002630: 000d         .dc.w      $000d
002632: 5880         addq.l     #$4, d0
002634: 000d         .dc.w      $000d
002636: 556d000d     subq.w     #$2, $d(a5)
00263a: 5258         addq.w     #$1, (a0)+
00263c: 000d         .dc.w      $000d
00263e: 4f41         .dc.w      $4f41
002640: 000d         .dc.w      $000d
002642: 4c28         .dc.w      $4c28
002644: 000d         .dc.w      $000d
002646: 490c         .dc.w      $490c
002648: 000d         .dc.w      $000d
00264a: 45ee000d     lea.l      $d(a6), a2
00264e: 42cf         .dc.w      $42cf
002650: 000d         .dc.w      $000d
002652: 3fad000d3c88 move.w     $d(a5), -$78(a7, d3.l)
002658: 000d         .dc.w      $000d
00265a: 3962000d     move.w     -(a2), $d(a4)
00265e: 363a000d     move.w     $266d(pc), d3
002662: 330f         move.w     a7, -(a1)
002664: 000d         .dc.w      $000d
002666: 2fe3         .dc.w      $2fe3
002668: 000d         .dc.w      $000d
00266a: 2cb4000d     move.l     $d(a4, d0.w), (a6)
00266e: 2983000d     move.l     d3, $d(a4, d0.w)
002672: 2650         movea.l    (a0), a3
002674: 000d         .dc.w      $000d
002676: 231b         move.l     (a3)+, -(a1)
002678: 000d         .dc.w      $000d
00267a: 1fe4         .dc.w      $1fe4
00267c: 000d         .dc.w      $000d
00267e: 1caa000d     move.b     $d(a2), (a6)
002682: 196f000d1631 move.b     $d(a7), $1631(a4)
002688: 000d         .dc.w      $000d
00268a: 12f1000d     move.b     $d(a1, d0.w), (a1)+
00268e: 0faf000d     bclr.b     d7, $d(a7)
002692: 0c6b000d0925 cmpi.w     #$d, $925(a3)
002698: 000d         .dc.w      $000d
00269a: 05dd         bset.b     d2, (a5)+
00269c: 000d         .dc.w      $000d
00269e: 0293000cff47 andi.l     #$cff47, (a3)
0026a4: 000c         .dc.w      $000c
0026a6: fbf8         dc.w       $fbf8
0026a8: 000c         .dc.w      $000c
0026aa: f8a7000c     fbf.w      $26b8
0026ae: f555         frestore   (a5)
0026b0: 000c         .dc.w      $000c
0026b2: f200000c     fasin      fp0
0026b6: eea9         lsr.l      d7, d1
0026b8: 000c         .dc.w      $000c
0026ba: eb50         roxl.w     #$5, d0
0026bc: 000c         .dc.w      $000c
0026be: e7f5000c     rol.w      $c(a5, d0.w)
0026c2: e498         ror.l      #$2, d0
0026c4: 000c         .dc.w      $000c
0026c6: e139         rol.b      d0, d1
0026c8: 000c         .dc.w      $000c
0026ca: ddd8         adda.l     (a0)+, a6
0026cc: 000c         .dc.w      $000c
0026ce: da74000c     add.w      $c(a4, d0.w), d5
0026d2: d70f         addx.b     -(a7), -(a3)
0026d4: 000c         .dc.w      $000c
0026d6: d3a7         add.l      d1, -(a7)
0026d8: 000c         .dc.w      $000c
0026da: d03e         .dc.w      $d03e
0026dc: 000c         .dc.w      $000c
0026de: ccd2         mulu.w     (a2), d6
0026e0: 000c         .dc.w      $000c
0026e2: c965         and.w      d4, -(a5)
0026e4: 000c         .dc.w      $000c
0026e6: c5f5000c     muls.w     $c(a5, d0.w), d2
0026ea: c283         and.l      d3, d1
0026ec: 000c         .dc.w      $000c
0026ee: bf0f         cmpm.b     (a7)+, (a7)+
0026f0: 000c         .dc.w      $000c
0026f2: bb99         eor.l      d5, (a1)+
0026f4: 000c         .dc.w      $000c
0026f6: b821         cmp.b      -(a1), d4
0026f8: 000c         .dc.w      $000c
0026fa: b4a7         cmp.l      -(a7), d2
0026fc: 000c         .dc.w      $000c
0026fe: b12b000c     eor.b      d0, $c(a3)
002702: adad         dc.w       $adad
002704: 000c         .dc.w      $000c
002706: aa2d         dc.w       $aa2d
002708: 000c         .dc.w      $000c
00270a: a6ab         dc.w       $a6ab
00270c: 000c         .dc.w      $000c
00270e: a327         dc.w       $a327
002710: 000c         .dc.w      $000c
002712: 9fa0         sub.l      d7, -(a0)
002714: 000c         .dc.w      $000c
002716: 9c18         sub.b      (a0)+, d6
002718: 000c         .dc.w      $000c
00271a: 988e         sub.l      a6, d4
00271c: 000c         .dc.w      $000c
00271e: 9501         subx.b     d1, d2
002720: 000c         .dc.w      $000c
002722: 9173000c     sub.w      d0, $c(a3, d0.w)
002726: 8de2         divs.w     -(a2), d6
002728: 000c         .dc.w      $000c
00272a: 8a50         or.w       (a0), d5
00272c: 000c         .dc.w      $000c
00272e: 86bc000c8325 or.l       #$c8325, d3
002734: 000c         .dc.w      $000c
002736: 7f8d         .dc.w      $7f8d
002738: 000c         .dc.w      $000c
00273a: 7bf2         .dc.w      $7bf2
00273c: 000c         .dc.w      $000c
00273e: 7856         moveq      #$56, d4
002740: 000c         .dc.w      $000c
002742: 74b7         moveq      #$b7, d2
002744: 000c         .dc.w      $000c
002746: 7117         .dc.w      $7117
002748: 000c         .dc.w      $000c
00274a: 6d74         blt.b      $27c0
00274c: 000c         .dc.w      $000c
00274e: 69d0         bvs.b      $2720
002750: 000c         .dc.w      $000c
002752: 6629         bne.b      $277d
002754: 000c         .dc.w      $000c
002756: 6281         bhi.b      $26d9
002758: 000c         .dc.w      $000c
00275a: 5ed6         sgt.b      (a6)
00275c: 000c         .dc.w      $000c
00275e: 5b2a000c     subq.b     #$5, $c(a2)
002762: 577b         .dc.w      $577b
002764: 000c         .dc.w      $000c
002766: 53cb000c     dbls       d3, $2774
00276a: 5018         addq.b     #$8, (a0)+
00276c: 000c         .dc.w      $000c
00276e: 4c64         .dc.w      $4c64
002770: 000c         .dc.w      $000c
002772: 48ad000c44f5 movem.w    d2-d3, $44f5(a5)
002778: 000c         .dc.w      $000c
00277a: 413b000c     chk.l      $2788(pc, d0.w), d0
00277e: 3d7e         .dc.w      $3d7e
002780: 000c         .dc.w      $000c
002782: 39c0         .dc.w      $39c0
002784: 000c         .dc.w      $000c
002786: 3600         move.w     d0, d3
002788: 000c         .dc.w      $000c
00278a: 323e         .dc.w      $323e
00278c: 000c         .dc.w      $000c
00278e: 2e79000c2ab3 movea.l    $c2ab3.l, a7
002794: 000c         .dc.w      $000c
002796: 26eb000c     move.l     $c(a3), (a3)+
00279a: 2321         move.l     -(a1), -(a1)
00279c: 000c         .dc.w      $000c
00279e: 1f55000c     move.b     (a5), $c(a7)
0027a2: 1b87000c     move.b     d7, $c(a5, d0.w)
0027a6: 17b7000c13e6000c move.b     $c(a7, d0.w), ([$c])
0027ae: 1012         move.b     (a2), d0
0027b0: 000c         .dc.w      $000c
0027b2: 0c3c         .dc.w      $0c3c
0027b4: 000c         .dc.w      $000c
0027b6: 0865000c     bchg.b     #$c, -(a5)
0027ba: 048b         .dc.w      $048b
0027bc: 000c         .dc.w      $000c
0027be: 00af000bfcd2000b ori.l      #$bfcd2, $b(a7)
0027c6: f8f3000bf511 fbf.l      $c1cd9
0027cc: 000b         .dc.w      $000b
0027ce: f12e000b     fsave      $b(a6)
0027d2: ed49         lsl.w      #$6, d1
0027d4: 000b         .dc.w      $000b
0027d6: e962         asl.w      d4, d2
0027d8: 000b         .dc.w      $000b
0027da: e579         rol.w      d2, d1
0027dc: 000b         .dc.w      $000b
0027de: e18e         lsl.l      #$8, d6
0027e0: 000b         .dc.w      $000b
0027e2: dda2         add.l      d6, -(a2)
0027e4: 000b         .dc.w      $000b
0027e6: d9b3000b     add.l      d4, $b(a3, d0.w)
0027ea: d5c2         adda.l     d2, a2
0027ec: 000b         .dc.w      $000b
0027ee: d1d0         adda.l     (a0), a0
0027f0: 000b         .dc.w      $000b
0027f2: cddc         muls.w     (a4)+, d6
0027f4: 000b         .dc.w      $000b
0027f6: c9e5         muls.w     -(a5), d4
0027f8: 000b         .dc.w      $000b
0027fa: c5ed000b     muls.w     $b(a5), d2
0027fe: c1f3000b     muls.w     $b(a3, d0.w), d0
002802: bdf7000b     cmpa.l     $b(a7, d0.w), a6
002806: b9fa000b     cmpa.l     $2813(pc), a4
00280a: b5fa000b     cmpa.l     $2817(pc), a2
00280e: b1f9000badf5 cmpa.l     $badf5.l, a0
002814: 000b         .dc.w      $000b
002816: a9f0         dc.w       $a9f0
002818: 000b         .dc.w      $000b
00281a: a5e9         dc.w       $a5e9
00281c: 000b         .dc.w      $000b
00281e: a1e0         dc.w       $a1e0
002820: 000b         .dc.w      $000b
002822: 9dd5         suba.l     (a5), a6
002824: 000b         .dc.w      $000b
002826: 99c8         suba.l     a0, a4
002828: 000b         .dc.w      $000b
00282a: 95b9000b91a9 sub.l      d2, $b91a9.l
002830: 000b         .dc.w      $000b
002832: 8d97         or.l       d6, (a7)
002834: 000b         .dc.w      $000b
002836: 8983000b     unpk       d3, d4, #$b
00283a: 856d000b     or.w       d2, $b(a5)
00283e: 8155         or.w       d0, (a5)
002840: 000b         .dc.w      $000b
002842: 7d3b         .dc.w      $7d3b
002844: 000b         .dc.w      $000b
002846: 7920         .dc.w      $7920
002848: 000b         .dc.w      $000b
00284a: 7502         .dc.w      $7502
00284c: 000b         .dc.w      $000b
00284e: 70e3         moveq      #$e3, d0
002850: 000b         .dc.w      $000b
002852: 6cc2         bge.b      $2816
002854: 000b         .dc.w      $000b
002856: 689f         bvc.b      $27f7
002858: 000b         .dc.w      $000b
00285a: 647a         bcc.b      $28d6
00285c: 000b         .dc.w      $000b
00285e: 6054         bra.b      $28b4
002860: 000b         .dc.w      $000b
002862: 5c2c000b     addq.b     #$6, $b(a4)
002866: 5801         addq.b     #$4, d1
002868: 000b         .dc.w      $000b
00286a: 53d6         sls.b      (a6)
00286c: 000b         .dc.w      $000b
00286e: 4fa8000b     chk.w      $b(a0), d7
002872: 4b78         .dc.w      $4b78
002874: 000b         .dc.w      $000b
002876: 4747         .dc.w      $4747
002878: 000b         .dc.w      $000b
00287a: 4314         chk.l      (a4), d1
00287c: 000b         .dc.w      $000b
00287e: 3edf         move.w     (a7)+, (a7)+
002880: 000b         .dc.w      $000b
002882: 3aa8000b     move.w     $b(a0), (a5)
002886: 366f000b     movea.w    $b(a7), a3
00288a: 3235000b     move.w     $b(a5, d0.w), d1
00288e: 2df9         .dc.w      $2df9
002890: 000b         .dc.w      $000b
002892: 29bb000b257b000b213a000b1cf6 move.l     $289f(pc, d0.w), ([$b213a, a4], $b1cf6)
0028a0: 000b         .dc.w      $000b
0028a2: 18b1000b     move.b     $b(a1, d0.w), (a4)
0028a6: 146a         .dc.w      $146a
0028a8: 000b         .dc.w      $000b
0028aa: 1022         move.b     -(a2), d0
0028ac: 000b         .dc.w      $000b
0028ae: 0bd7         bset.b     d5, (a7)
0028b0: 000b         .dc.w      $000b
0028b2: 078b000b     movep.w    d3, $b(a3)
0028b6: 033d         .dc.w      $033d
0028b8: 000a         .dc.w      $000a
0028ba: feee000afa9c fbf.l      $b2358
0028c0: 000a         .dc.w      $000a
0028c2: f649000af1f4 fdbf       d1, $1aba
0028c8: 000a         .dc.w      $000a
0028ca: ed9e         rol.l      #$6, d6
0028cc: 000a         .dc.w      $000a
0028ce: e945         asl.w      #$4, d5
0028d0: 000a         .dc.w      $000a
0028d2: e4eb000a     roxr.w     $a(a3)
0028d6: e08f         lsr.l      #$8, d7
0028d8: 000a         .dc.w      $000a
0028da: dc31000a     add.b      $a(a1, d0.w), d6
0028de: d7d2         adda.l     (a2), a3
0028e0: 000a         .dc.w      $000a
0028e2: d371000a     add.w      d1, $a(a1, d0.w)
0028e6: cf0e         abcd.b     -(a6), -(a7)
0028e8: 000a         .dc.w      $000a
0028ea: caaa000a     and.l      $a(a2), d5
0028ee: c643         and.w      d3, d3
0028f0: 000a         .dc.w      $000a
0028f2: c1db         muls.w     (a3)+, d0
0028f4: 000a         .dc.w      $000a
0028f6: bd72000a     eor.w      d6, $a(a2, d0.w)
0028fa: b906         eor.b      d4, d6
0028fc: 000a         .dc.w      $000a
0028fe: b499         cmp.l      (a1)+, d2
002900: 000a         .dc.w      $000a
002902: b02a000a     cmp.b      $a(a2), d0
002906: abba         dc.w       $abba
002908: 000a         .dc.w      $000a
00290a: a748         dc.w       $a748
00290c: 000a         .dc.w      $000a
00290e: a2d4         dc.w       $a2d4
002910: 000a         .dc.w      $000a
002912: 9e5e         sub.w      (a6)+, d7
002914: 000a         .dc.w      $000a
002916: 99e7         suba.l     -(a7), a4
002918: 000a         .dc.w      $000a
00291a: 956e000a     sub.w      d2, $a(a6)
00291e: 90f3000a     suba.w     $a(a3, d0.w), a0
002922: 8c77000a     or.w       $a(a7, d0.w), d6
002926: 87f9000a8379 divs.w     $a8379.l, d3
00292c: 000a         .dc.w      $000a
00292e: 7ef8         moveq      #$f8, d7
002930: 000a         .dc.w      $000a
002932: 7a75         moveq      #$75, d5
002934: 000a         .dc.w      $000a
002936: 75f0         .dc.w      $75f0
002938: 000a         .dc.w      $000a
00293a: 7169         .dc.w      $7169
00293c: 000a         .dc.w      $000a
00293e: 6ce1         bge.b      $2921
002940: 000a         .dc.w      $000a
002942: 6858         bvc.b      $299c
002944: 000a         .dc.w      $000a
002946: 63cc         bls.b      $2914
002948: 000a         .dc.w      $000a
00294a: 5f3f         .dc.w      $5f3f
00294c: 000a         .dc.w      $000a
00294e: 5ab0000a     addq.l     #$5, $a(a0, d0.w)
002952: 5620         addq.b     #$3, -(a0)
002954: 000a         .dc.w      $000a
002956: 518e         subq.l     #$8, a6
002958: 000a         .dc.w      $000a
00295a: 4cfa000a4865 movem.l    $71c1(pc), d1/d3
002960: 000a         .dc.w      $000a
002962: 43ce         .dc.w      $43ce
002964: 000a         .dc.w      $000a
002966: 3f36000a     move.w     $a(a6, d0.w), -(a7)
00296a: 3a9c         move.w     (a4)+, (a5)
00296c: 000a         .dc.w      $000a
00296e: 3600         move.w     d0, d3
002970: 000a         .dc.w      $000a
002972: 3162000a     move.w     -(a2), $a(a0)
002976: 2cc3         move.l     d3, (a6)+
002978: 000a         .dc.w      $000a
00297a: 2823         move.l     -(a3), d4
00297c: 000a         .dc.w      $000a
00297e: 2380000a     move.l     d0, $a(a1, d0.w)
002982: 1edd         move.b     (a5)+, (a7)+
002984: 000a         .dc.w      $000a
002986: 1a37000a     move.b     $a(a7, d0.w), d5
00298a: 1590000a     move.b     (a0), $a(a2, d0.w)
00298e: 10e7         move.b     -(a7), (a0)+
002990: 000a         .dc.w      $000a
002992: 0c3d         .dc.w      $0c3d
002994: 000a         .dc.w      $000a
002996: 0791         bclr.b     d3, (a1)
002998: 000a         .dc.w      $000a
00299a: 02e4         .dc.w      $02e4
00299c: 0009         .dc.w      $0009
00299e: fe340009     fatanh     fp0
0029a2: f984         dc.w       $f984
0029a4: 0009         .dc.w      $0009
0029a6: f4d2         cinvp      #$3, a2
0029a8: 0009         .dc.w      $0009
0029aa: f01e0009     fatanh     fp0
0029ae: eb68         lsl.w      d5, d0
0029b0: 0009         .dc.w      $0009
0029b2: e6b1         roxr.l     d3, d1
0029b4: 0009         .dc.w      $0009
0029b6: e1f90009dd3f asl.w      $9dd3f.l
0029bc: 0009         .dc.w      $0009
0029be: d883         add.l      d3, d4
0029c0: 0009         .dc.w      $0009
0029c2: d3c6         adda.l     d6, a1
0029c4: 0009         .dc.w      $0009
0029c6: cf07         abcd.b     d7, d7
0029c8: 0009         .dc.w      $0009
0029ca: ca46         and.w      d6, d5
0029cc: 0009         .dc.w      $0009
0029ce: c584         .dc.w      $c584
0029d0: 0009         .dc.w      $0009
0029d2: c0c1         mulu.w     d1, d0
0029d4: 0009         .dc.w      $0009
0029d6: bbfc0009b735 cmpa.l     #$9b735, a5
0029dc: 0009         .dc.w      $0009
0029de: b26d0009     cmp.w      $9(a5), d1
0029e2: ada4         dc.w       $ada4
0029e4: 0009         .dc.w      $0009
0029e6: a8d8         dc.w       $a8d8
0029e8: 0009         .dc.w      $0009
0029ea: a40c         dc.w       $a40c
0029ec: 0009         .dc.w      $0009
0029ee: 9f3d         .dc.w      $9f3d
0029f0: 0009         .dc.w      $0009
0029f2: 9a6e0009     sub.w      $9(a6), d5
0029f6: 959c         sub.l      d2, (a4)+
0029f8: 0009         .dc.w      $0009
0029fa: 90c9         suba.w     a1, a0
0029fc: 0009         .dc.w      $0009
0029fe: 8bf50009     divs.w     $9(a5, d0.w), d5
002a02: 871f         or.b       d3, (a7)+
002a04: 0009         .dc.w      $0009
002a06: 8248         .dc.w      $8248
002a08: 0009         .dc.w      $0009
002a0a: 7d6f         .dc.w      $7d6f
002a0c: 0009         .dc.w      $0009
002a0e: 7895         moveq      #$95, d4
002a10: 0009         .dc.w      $0009
002a12: 73b9         .dc.w      $73b9
002a14: 0009         .dc.w      $0009
002a16: 6edb         bgt.b      $29f3
002a18: 0009         .dc.w      $0009
002a1a: 69fc         bvs.b      $2a18
002a1c: 0009         .dc.w      $0009
002a1e: 651c         bcs.b      $2a3c
002a20: 0009         .dc.w      $0009
002a22: 603a         bra.b      $2a5e
002a24: 0009         .dc.w      $0009
002a26: 5b57         subq.w     #$5, (a7)
002a28: 0009         .dc.w      $0009
002a2a: 56720009     addq.w     #$3, $9(a2, d0.w)
002a2e: 518c         subq.l     #$8, a4
002a30: 0009         .dc.w      $0009
002a32: 4ca4         .dc.w      $4ca4
002a34: 0009         .dc.w      $0009
002a36: 47bb0009     chk.w      $2a41(pc, d0.w), d3
002a3a: 42d0         move.w     ccr, (a0)
002a3c: 0009         .dc.w      $0009
002a3e: 3de4         .dc.w      $3de4
002a40: 0009         .dc.w      $0009
002a42: 38f60009     move.w     $9(a6, d0.w), (a4)+
002a46: 3407         move.w     d7, d2
002a48: 0009         .dc.w      $0009
002a4a: 2f17         move.l     (a7), -(a7)
002a4c: 0009         .dc.w      $0009
002a4e: 2a24         move.l     -(a4), d5
002a50: 0009         .dc.w      $0009
002a52: 25310009     move.l     $9(a1, d0.w), -(a2)
002a56: 203c00091b46 move.l     #$91b46, d0
002a5c: 0009         .dc.w      $0009
002a5e: 164e         .dc.w      $164e
002a60: 0009         .dc.w      $0009
002a62: 11550009     move.b     (a5), $9(a0)
002a66: 0c5a0009     cmpi.w     #$9, (a2)+
002a6a: 075e         bchg.b     d3, (a6)+
002a6c: 0009         .dc.w      $0009
002a6e: 02600008     andi.w     #$8, -(a0)
002a72: fd61         dc.w       $fd61
002a74: 0008         .dc.w      $0008
002a76: f8610008     fsun.b     -(a1)
002a7a: f35f         frestore   (a7)+
002a7c: 0008         .dc.w      $0008
002a7e: ee5c         ror.w      #$7, d4
002a80: 0008         .dc.w      $0008
002a82: e957         roxl.w     #$4, d7
002a84: 0008         .dc.w      $0008
002a86: e451         roxr.w     #$2, d1
002a88: 0008         .dc.w      $0008
002a8a: df4a         addx.w     -(a2), -(a7)
002a8c: 0008         .dc.w      $0008
002a8e: da41         add.w      d1, d5
002a90: 0008         .dc.w      $0008
002a92: d5370008     add.b      d2, $8(a7, d0.w)
002a96: d02b0008     add.b      $8(a3), d0
002a9a: cb1e         and.b      d5, (a6)+
002a9c: 0008         .dc.w      $0008
002a9e: c610         and.b      (a0), d3
002aa0: 0008         .dc.w      $0008
002aa2: c100         abcd.b     d0, d0
002aa4: 0008         .dc.w      $0008
002aa6: bbef0008     cmpa.l     $8(a7), a5
002aaa: b6dc         cmpa.w     (a4)+, a3
002aac: 0008         .dc.w      $0008
002aae: b1c8         cmpa.l     a0, a0
002ab0: 0008         .dc.w      $0008
002ab2: acb3         dc.w       $acb3
002ab4: 0008         .dc.w      $0008
002ab6: a79c         dc.w       $a79c
002ab8: 0008         .dc.w      $0008
002aba: a284         dc.w       $a284
002abc: 0008         .dc.w      $0008
002abe: 9d6a0008     sub.w      d6, $8(a2)
002ac2: 9850         sub.w      (a0), d4
002ac4: 0008         .dc.w      $0008
002ac6: 93340008     sub.b      d1, $8(a4, d0.w)
002aca: 8e16         or.b       (a6), d7
002acc: 0008         .dc.w      $0008
002ace: 88f70008     divu.w     $8(a7, d0.w), d4
002ad2: 83d7         divs.w     (a7), d1
002ad4: 0008         .dc.w      $0008
002ad6: 7eb5         moveq      #$b5, d7
002ad8: 0008         .dc.w      $0008
002ada: 7993         .dc.w      $7993
002adc: 0008         .dc.w      $0008
002ade: 746e         moveq      #$6e, d2
002ae0: 0008         .dc.w      $0008
002ae2: 6f49         ble.b      $2b2d
002ae4: 0008         .dc.w      $0008
002ae6: 6a22         bpl.b      $2b0a
002ae8: 0008         .dc.w      $0008
002aea: 64fa         bcc.b      $2ae6
002aec: 0008         .dc.w      $0008
002aee: 5fd0         sle.b      (a0)
002af0: 0008         .dc.w      $0008
002af2: 5aa5         addq.l     #$5, -(a5)
002af4: 0008         .dc.w      $0008
002af6: 55790008504c subq.w     #$2, $8504c.l
002afc: 0008         .dc.w      $0008
002afe: 4b1d         chk.l      (a5)+, d5
002b00: 0008         .dc.w      $0008
002b02: 45ed0008     lea.l      $8(a5), a2
002b06: 40bb         .dc.w      $40bb
002b08: 0008         .dc.w      $0008
002b0a: 3b880008     move.w     a0, $8(a5, d0.w)
002b0e: 3654         movea.w    (a4), a3
002b10: 0008         .dc.w      $0008
002b12: 311f         move.w     (a7)+, -(a0)
002b14: 0008         .dc.w      $0008
002b16: 2be8         .dc.w      $2be8
002b18: 0008         .dc.w      $0008
002b1a: 26b10008     move.l     $8(a1, d0.w), (a3)
002b1e: 217700081c3d move.l     $8(a7, d0.w), $1c3d(a0)
002b24: 0008         .dc.w      $0008
002b26: 1701         move.b     d1, -(a3)
002b28: 0008         .dc.w      $0008
002b2a: 11c40008     move.b     d4, $8.w
002b2e: 0c8600080746 cmpi.l     #$80746, d6
002b34: 0008         .dc.w      $0008
002b36: 02060007     andi.b     #$7, d6
002b3a: fcc30007f780 fbf.l      $822bc
002b40: 0007f23b     ori.b      #$3b, d7
002b44: 0007ecf6     ori.b      #$f6, d7
002b48: 0007e7af     ori.b      #$af, d7
002b4c: 0007e266     ori.b      #$66, d7
002b50: 0007dd1d     ori.b      #$1d, d7
002b54: 0007d7d2     ori.b      #$d2, d7
002b58: 0007d286     ori.b      #$86, d7
002b5c: 0007cd38     ori.b      #$38, d7
002b60: 0007c7ea     ori.b      #$ea, d7
002b64: 0007c29a     ori.b      #$9a, d7
002b68: 0007bd49     ori.b      #$49, d7
002b6c: 0007b7f7     ori.b      #$f7, d7
002b70: 0007b2a4     ori.b      #$a4, d7
002b74: 0007ad4f     ori.b      #$4f, d7
002b78: 0007a7f9     ori.b      #$f9, d7
002b7c: 0007a2a2     ori.b      #$a2, d7
002b80: 00079d4a     ori.b      #$4a, d7
002b84: 000797f0     ori.b      #$f0, d7
002b88: 00079296     ori.b      #$96, d7
002b8c: 00078d3a     ori.b      #$3a, d7
002b90: 000787dd     ori.b      #$dd, d7
002b94: 0007827f     ori.b      #$7f, d7
002b98: 00077d20     ori.b      #$20, d7
002b9c: 000777bf     ori.b      #$bf, d7
002ba0: 0007725d     ori.b      #$5d, d7
002ba4: 00076cfa     ori.b      #$fa, d7
002ba8: 00076796     ori.b      #$96, d7
002bac: 00076231     ori.b      #$31, d7
002bb0: 00075ccb     ori.b      #$cb, d7
002bb4: 00075763     ori.b      #$63, d7
002bb8: 000751fa     ori.b      #$fa, d7
002bbc: 00074c91     ori.b      #$91, d7
002bc0: 00074726     ori.b      #$26, d7
002bc4: 000741ba     ori.b      #$ba, d7
002bc8: 00073c4c     ori.b      #$4c, d7
002bcc: 000736de     ori.b      #$de, d7
002bd0: 0007316e     ori.b      #$6e, d7
002bd4: 00072bfe     ori.b      #$fe, d7
002bd8: 0007268c     ori.b      #$8c, d7
002bdc: 00072119     ori.b      #$19, d7
002be0: 00071ba5     ori.b      #$a5, d7
002be4: 00071630     ori.b      #$30, d7
002be8: 000710b9     ori.b      #$b9, d7
002bec: 00070b42     ori.b      #$42, d7
002bf0: 000705ca     ori.b      #$ca, d7
002bf4: 00070050     ori.b      #$50, d7
002bf8: 0006fad5     ori.b      #$d5, d6
002bfc: 0006f559     ori.b      #$59, d6
002c00: 0006efdd     ori.b      #$dd, d6
002c04: 0006ea5f     ori.b      #$5f, d6
002c08: 0006e4e0     ori.b      #$e0, d6
002c0c: 0006df5f     ori.b      #$5f, d6
002c10: 0006d9de     ori.b      #$de, d6
002c14: 0006d45c     ori.b      #$5c, d6
002c18: 0006ced9     ori.b      #$d9, d6
002c1c: 0006c954     ori.b      #$54, d6
002c20: 0006c3cf     ori.b      #$cf, d6
002c24: 0006be48     ori.b      #$48, d6
002c28: 0006b8c1     ori.b      #$c1, d6
002c2c: 0006b338     ori.b      #$38, d6
002c30: 0006adae     ori.b      #$ae, d6
002c34: 0006a823     ori.b      #$23, d6
002c38: 0006a298     ori.b      #$98, d6
002c3c: 00069d0b     ori.b      #$b, d6
002c40: 0006977d     ori.b      #$7d, d6
002c44: 000691ee     ori.b      #$ee, d6
002c48: 00068c5e     ori.b      #$5e, d6
002c4c: 000686cd     ori.b      #$cd, d6
002c50: 0006813b     ori.b      #$3b, d6
002c54: 00067ba8     ori.b      #$a8, d6
002c58: 00067614     ori.b      #$14, d6
002c5c: 0006707f     ori.b      #$7f, d6
002c60: 00066ae9     ori.b      #$e9, d6
002c64: 00066552     ori.b      #$52, d6
002c68: 00065fba     ori.b      #$ba, d6
002c6c: 00065a21     ori.b      #$21, d6
002c70: 00065487     ori.b      #$87, d6
002c74: 00064eec     ori.b      #$ec, d6
002c78: 00064950     ori.b      #$50, d6
002c7c: 000643b2     ori.b      #$b2, d6
002c80: 00063e14     ori.b      #$14, d6
002c84: 00063876     ori.b      #$76, d6
002c88: 000632d6     ori.b      #$d6, d6
002c8c: 00062d35     ori.b      #$35, d6
002c90: 00062793     ori.b      #$93, d6
002c94: 000621f0     ori.b      #$f0, d6
002c98: 00061c4c     ori.b      #$4c, d6
002c9c: 000616a7     ori.b      #$a7, d6
002ca0: 00061102     ori.b      #$2, d6
002ca4: 00060b5b     ori.b      #$5b, d6
002ca8: 000605b3     ori.b      #$b3, d6
002cac: 0006000b     ori.b      #$b, d6
002cb0: 0005fa61     ori.b      #$61, d5
002cb4: 0005f4b7     ori.b      #$b7, d5
002cb8: 0005ef0b     ori.b      #$b, d5
002cbc: 0005e95f     ori.b      #$5f, d5
002cc0: 0005e3b2     ori.b      #$b2, d5
002cc4: 0005de04     ori.b      #$4, d5
002cc8: 0005d855     ori.b      #$55, d5
002ccc: 0005d2a5     ori.b      #$a5, d5
002cd0: 0005ccf4     ori.b      #$f4, d5
002cd4: 0005c742     ori.b      #$42, d5
002cd8: 0005c18f     ori.b      #$8f, d5
002cdc: 0005bbdc     ori.b      #$dc, d5
002ce0: 0005b627     ori.b      #$27, d5
002ce4: 0005b072     ori.b      #$72, d5
002ce8: 0005aabb     ori.b      #$bb, d5
002cec: 0005a504     ori.b      #$4, d5
002cf0: 00059f4c     ori.b      #$4c, d5
002cf4: 00059993     ori.b      #$93, d5
002cf8: 000593da     ori.b      #$da, d5
002cfc: 00058e1f     ori.b      #$1f, d5
002d00: 00058863     ori.b      #$63, d5
002d04: 000582a7     ori.b      #$a7, d5
002d08: 00057cea     ori.b      #$ea, d5
002d0c: 0005772b     ori.b      #$2b, d5
002d10: 0005716d     ori.b      #$6d, d5
002d14: 00056bad     ori.b      #$ad, d5
002d18: 000565ec     ori.b      #$ec, d5
002d1c: 0005602a     ori.b      #$2a, d5
002d20: 00055a68     ori.b      #$68, d5
002d24: 000554a5     ori.b      #$a5, d5
002d28: 00054ee1     ori.b      #$e1, d5
002d2c: 0005491c     ori.b      #$1c, d5
002d30: 00054356     ori.b      #$56, d5
002d34: 00053d90     ori.b      #$90, d5
002d38: 000537c8     ori.b      #$c8, d5
002d3c: 00053200     ori.b      #$0, d5
002d40: 00052c37     ori.b      #$37, d5
002d44: 0005266e     ori.b      #$6e, d5
002d48: 000520a3     ori.b      #$a3, d5
002d4c: 00051ad8     ori.b      #$d8, d5
002d50: 0005150c     ori.b      #$c, d5
002d54: 00050f3f     ori.b      #$3f, d5
002d58: 00050971     ori.b      #$71, d5
002d5c: 000503a2     ori.b      #$a2, d5
002d60: 0004fdd3     ori.b      #$d3, d4
002d64: 0004f803     ori.b      #$3, d4
002d68: 0004f232     ori.b      #$32, d4
002d6c: 0004ec60     ori.b      #$60, d4
002d70: 0004e68e     ori.b      #$8e, d4
002d74: 0004e0bb     ori.b      #$bb, d4
002d78: 0004dae7     ori.b      #$e7, d4
002d7c: 0004d512     ori.b      #$12, d4
002d80: 0004cf3d     ori.b      #$3d, d4
002d84: 0004c966     ori.b      #$66, d4
002d88: 0004c38f     ori.b      #$8f, d4
002d8c: 0004bdb8     ori.b      #$b8, d4
002d90: 0004b7df     ori.b      #$df, d4
002d94: 0004b206     ori.b      #$6, d4
002d98: 0004ac2c     ori.b      #$2c, d4
002d9c: 0004a652     ori.b      #$52, d4
002da0: 0004a076     ori.b      #$76, d4
002da4: 00049a9a     ori.b      #$9a, d4
002da8: 000494bd     ori.b      #$bd, d4
002dac: 00048ee0     ori.b      #$e0, d4
002db0: 00048902     ori.b      #$2, d4
002db4: 00048323     ori.b      #$23, d4
002db8: 00047d43     ori.b      #$43, d4
002dbc: 00047763     ori.b      #$63, d4
002dc0: 00047182     ori.b      #$82, d4
002dc4: 00046ba0     ori.b      #$a0, d4
002dc8: 000465be     ori.b      #$be, d4
002dcc: 00045fdb     ori.b      #$db, d4
002dd0: 000459f7     ori.b      #$f7, d4
002dd4: 00045412     ori.b      #$12, d4
002dd8: 00044e2d     ori.b      #$2d, d4
002ddc: 00044847     ori.b      #$47, d4
002de0: 00044261     ori.b      #$61, d4
002de4: 00043c7a     ori.b      #$7a, d4
002de8: 00043692     ori.b      #$92, d4
002dec: 000430aa     ori.b      #$aa, d4
002df0: 00042ac0     ori.b      #$c0, d4
002df4: 000424d7     ori.b      #$d7, d4
002df8: 00041eec     ori.b      #$ec, d4
002dfc: 00041901     ori.b      #$1, d4
002e00: 00041316     ori.b      #$16, d4
002e04: 00040d29     ori.b      #$29, d4
002e08: 0004073c     ori.b      #$3c, d4
002e0c: 0004014f     ori.b      #$4f, d4
002e10: 0003fb61     ori.b      #$61, d3
002e14: 0003f572     ori.b      #$72, d3
002e18: 0003ef82     ori.b      #$82, d3
002e1c: 0003e992     ori.b      #$92, d3
002e20: 0003e3a2     ori.b      #$a2, d3
002e24: 0003ddb0     ori.b      #$b0, d3
002e28: 0003d7bf     ori.b      #$bf, d3
002e2c: 0003d1cc     ori.b      #$cc, d3
002e30: 0003cbd9     ori.b      #$d9, d3
002e34: 0003c5e5     ori.b      #$e5, d3
002e38: 0003bff1     ori.b      #$f1, d3
002e3c: 0003b9fc     ori.b      #$fc, d3
002e40: 0003b407     ori.b      #$7, d3
002e44: 0003ae11     ori.b      #$11, d3
002e48: 0003a81a     ori.b      #$1a, d3
002e4c: 0003a223     ori.b      #$23, d3
002e50: 00039c2c     ori.b      #$2c, d3
002e54: 00039633     ori.b      #$33, d3
002e58: 0003903b     ori.b      #$3b, d3
002e5c: 00038a41     ori.b      #$41, d3
002e60: 00038447     ori.b      #$47, d3
002e64: 00037e4d     ori.b      #$4d, d3
002e68: 00037852     ori.b      #$52, d3
002e6c: 00037256     ori.b      #$56, d3
002e70: 00036c5a     ori.b      #$5a, d3
002e74: 0003665e     ori.b      #$5e, d3
002e78: 00036061     ori.b      #$61, d3
002e7c: 00035a63     ori.b      #$63, d3
002e80: 00035465     ori.b      #$65, d3
002e84: 00034e66     ori.b      #$66, d3
002e88: 00034867     ori.b      #$67, d3
002e8c: 00034267     ori.b      #$67, d3
002e90: 00033c67     ori.b      #$67, d3
002e94: 00033666     ori.b      #$66, d3
002e98: 00033065     ori.b      #$65, d3
002e9c: 00032a63     ori.b      #$63, d3
002ea0: 00032461     ori.b      #$61, d3
002ea4: 00031e5e     ori.b      #$5e, d3
002ea8: 0003185b     ori.b      #$5b, d3
002eac: 00031257     ori.b      #$57, d3
002eb0: 00030c53     ori.b      #$53, d3
002eb4: 0003064f     ori.b      #$4f, d3
002eb8: 00030049     ori.b      #$49, d3
002ebc: 0002fa44     ori.b      #$44, d2
002ec0: 0002f43e     ori.b      #$3e, d2
002ec4: 0002ee37     ori.b      #$37, d2
002ec8: 0002e830     ori.b      #$30, d2
002ecc: 0002e229     ori.b      #$29, d2
002ed0: 0002dc21     ori.b      #$21, d2
002ed4: 0002d619     ori.b      #$19, d2
002ed8: 0002d010     ori.b      #$10, d2
002edc: 0002ca07     ori.b      #$7, d2
002ee0: 0002c3fd     ori.b      #$fd, d2
002ee4: 0002bdf3     ori.b      #$f3, d2
002ee8: 0002b7e9     ori.b      #$e9, d2
002eec: 0002b1de     ori.b      #$de, d2
002ef0: 0002abd3     ori.b      #$d3, d2
002ef4: 0002a5c7     ori.b      #$c7, d2
002ef8: 00029fbb     ori.b      #$bb, d2
002efc: 000299ae     ori.b      #$ae, d2
002f00: 000293a1     ori.b      #$a1, d2
002f04: 00028d94     ori.b      #$94, d2
002f08: 00028786     ori.b      #$86, d2
002f0c: 00028178     ori.b      #$78, d2
002f10: 00027b6a     ori.b      #$6a, d2
002f14: 0002755b     ori.b      #$5b, d2
002f18: 00026f4b     ori.b      #$4b, d2
002f1c: 0002693c     ori.b      #$3c, d2
002f20: 0002632c     ori.b      #$2c, d2
002f24: 00025d1b     ori.b      #$1b, d2
002f28: 0002570b     ori.b      #$b, d2
002f2c: 000250f9     ori.b      #$f9, d2
002f30: 00024ae8     ori.b      #$e8, d2
002f34: 000244d6     ori.b      #$d6, d2
002f38: 00023ec4     ori.b      #$c4, d2
002f3c: 000238b1     ori.b      #$b1, d2
002f40: 0002329e     ori.b      #$9e, d2
002f44: 00022c8b     ori.b      #$8b, d2
002f48: 00022678     ori.b      #$78, d2
002f4c: 00022064     ori.b      #$64, d2
002f50: 00021a4f     ori.b      #$4f, d2
002f54: 0002143b     ori.b      #$3b, d2
002f58: 00020e26     ori.b      #$26, d2
002f5c: 00020811     ori.b      #$11, d2
002f60: 000201fb     ori.b      #$fb, d2
002f64: 0001fbe5     ori.b      #$e5, d1
002f68: 0001f5cf     ori.b      #$cf, d1
002f6c: 0001efb9     ori.b      #$b9, d1
002f70: 0001e9a2     ori.b      #$a2, d1
002f74: 0001e38b     ori.b      #$8b, d1
002f78: 0001dd74     ori.b      #$74, d1
002f7c: 0001d75c     ori.b      #$5c, d1
002f80: 0001d144     ori.b      #$44, d1
002f84: 0001cb2c     ori.b      #$2c, d1
002f88: 0001c513     ori.b      #$13, d1
002f8c: 0001befb     ori.b      #$fb, d1
002f90: 0001b8e2     ori.b      #$e2, d1
002f94: 0001b2c8     ori.b      #$c8, d1
002f98: 0001acaf     ori.b      #$af, d1
002f9c: 0001a695     ori.b      #$95, d1
002fa0: 0001a07b     ori.b      #$7b, d1
002fa4: 00019a60     ori.b      #$60, d1
002fa8: 00019446     ori.b      #$46, d1
002fac: 00018e2b     ori.b      #$2b, d1
002fb0: 00018810     ori.b      #$10, d1
002fb4: 000181f5     ori.b      #$f5, d1
002fb8: 00017bd9     ori.b      #$d9, d1
002fbc: 000175bd     ori.b      #$bd, d1
002fc0: 00016fa1     ori.b      #$a1, d1
002fc4: 00016985     ori.b      #$85, d1
002fc8: 00016369     ori.b      #$69, d1
002fcc: 00015d4c     ori.b      #$4c, d1
002fd0: 0001572f     ori.b      #$2f, d1
002fd4: 00015112     ori.b      #$12, d1
002fd8: 00014af5     ori.b      #$f5, d1
002fdc: 000144d7     ori.b      #$d7, d1
002fe0: 00013eba     ori.b      #$ba, d1
002fe4: 0001389c     ori.b      #$9c, d1
002fe8: 0001327e     ori.b      #$7e, d1
002fec: 00012c60     ori.b      #$60, d1
002ff0: 00012641     ori.b      #$41, d1
002ff4: 00012023     ori.b      #$23, d1
002ff8: 00011a04     ori.b      #$4, d1
002ffc: 000113e5     ori.b      #$e5, d1
003000: 00010dc6     ori.b      #$c6, d1
003004: 000107a6     ori.b      #$a6, d1
003008: 00010187     ori.b      #$87, d1
00300c: 0000fb67     ori.b      #$67, d0
003010: 0000f548     ori.b      #$48, d0
003014: 0000ef28     ori.b      #$28, d0
003018: 0000e908     ori.b      #$8, d0
00301c: 0000e2e8     ori.b      #$e8, d0
003020: 0000dcc7     ori.b      #$c7, d0
003024: 0000d6a7     ori.b      #$a7, d0
003028: 0000d086     ori.b      #$86, d0
00302c: 0000ca66     ori.b      #$66, d0
003030: 0000c445     ori.b      #$45, d0
003034: 0000be24     ori.b      #$24, d0
003038: 0000b803     ori.b      #$3, d0
00303c: 0000b1e1     ori.b      #$e1, d0
003040: 0000abc0     ori.b      #$c0, d0
003044: 0000a59f     ori.b      #$9f, d0
003048: 00009f7d     ori.b      #$7d, d0
00304c: 0000995c     ori.b      #$5c, d0
003050: 0000933a     ori.b      #$3a, d0
003054: 00008d18     ori.b      #$18, d0
003058: 000086f6     ori.b      #$f6, d0
00305c: 000080d4     ori.b      #$d4, d0
003060: 00007ab2     ori.b      #$b2, d0
003064: 00007490     ori.b      #$90, d0
003068: 00006e6e     ori.b      #$6e, d0
00306c: 0000684c     ori.b      #$4c, d0
003070: 0000622a     ori.b      #$2a, d0
003074: 00005c07     ori.b      #$7, d0
003078: 000055e5     ori.b      #$e5, d0
00307c: 00004fc2     ori.b      #$c2, d0
003080: 000049a0     ori.b      #$a0, d0
003084: 0000437d     ori.b      #$7d, d0
003088: 00003d5b     ori.b      #$5b, d0
00308c: 00003738     ori.b      #$38, d0
003090: 00003116     ori.b      #$16, d0
003094: 00002af3     ori.b      #$f3, d0
003098: 000024d0     ori.b      #$d0, d0
00309c: 00001ead     ori.b      #$ad, d0
0030a0: 0000188b     ori.b      #$8b, d0
0030a4: 00001268     ori.b      #$68, d0
0030a8: 00000c45     ori.b      #$45, d0
0030ac: 00000622     ori.b      #$22, d0
0030b0: 4e550000     link.w     a5, #$0
0030b4: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
0030b8: 598f         subq.l     #$4, a7
0030ba: 4aaf0004     tst.l      $4(a7)
0030be: 6c0a         bge.b      $30ca
0030c0: 202f0004     move.l     $4(a7), d0
0030c4: 4480         neg.l      d0
0030c6: 2f400004     move.l     d0, $4(a7)
0030ca: 202f0004     move.l     $4(a7), d0
0030ce: 4e4f         trap       #$f
0030d0: 00207600     ori.b      #$0, -(a0)
0030d4: 243c410e8480 move.l     #$410e8480, d2
0030da: 4e4f         trap       #$f
0030dc: 000e         .dc.w      $000e
0030de: 7600         moveq      #$0, d3
0030e0: 243c411e8480 move.l     #$411e8480, d2
0030e6: 4e4f         trap       #$f
0030e8: 00134e4f     ori.b      #$4f, (a3)
0030ec: 00242e80     ori.b      #$80, -(a4)
0030f0: 2017         move.l     (a7), d0
0030f2: 41fb0170ffffd0dc lea.l      $ffffd0dc(a16, invalid.w), a0
0030fa: 226f0008     movea.l    $8(a7), a1
0030fe: 22b00c00     move.l     (a0, d0.l * 4), (a1)
003102: 2017         move.l     (a7), d0
003104: 41fb0170ffffe06a lea.l      $ffffe06a(a16, invalid.w), a0
00310c: 226f0024     movea.l    $24(a7), a1
003110: 22b00c00     move.l     (a0, d0.l * 4), (a1)
003114: 588f         addq.l     #$4, a7
003116: 4ced030cfff0 movem.l    -$10(a5), d2-d3/a0-a1
00311c: 4e5d         unlk       a5
00311e: 4e75         rts        
003120: 4e550000     link.w     a5, #$0
003124: 48e7f080     movem.l    d0-d3/a0, -(a7)
003128: 558f         subq.l     #$2, a7
00312a: 4aaf0002     tst.l      $2(a7)
00312e: 6c0a         bge.b      $313a
003130: 202f0002     move.l     $2(a7), d0
003134: 4480         neg.l      d0
003136: 2f400002     move.l     d0, $2(a7)
00313a: 202f0002     move.l     $2(a7), d0
00313e: 4e4f         trap       #$f
003140: 00207600     ori.b      #$0, -(a0)
003144: 243c410e8480 move.l     #$410e8480, d2
00314a: 4e4f         trap       #$f
00314c: 000e         .dc.w      $000e
00314e: 7600         moveq      #$0, d3
003150: 243c411e8480 move.l     #$411e8480, d2
003156: 4e4f         trap       #$f
003158: 00134e4f     ori.b      #$4f, (a3)
00315c: 00243e80     ori.b      #$80, -(a4)
003160: 3017         move.w     (a7), d0
003162: 48c0         ext.l      d0
003164: 41fb0170ffffefaa lea.l      $ffffefaa(a16, invalid.w), a0
00316c: 20300c00     move.l     (a0, d0.l * 4), d0
003170: 548f         addq.l     #$2, a7
003172: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
003178: 4e5d         unlk       a5
00317a: 4e75         rts        
00317c: 4e550000     link.w     a5, #$0
003180: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003184: 518f         subq.l     #$8, a7
003186: 4857         pea.l      (a7)
003188: 41ef0008     lea.l      $8(a7), a0
00318c: 2208         move.l     a0, d1
00318e: 206f000c     movea.l    $c(a7), a0
003192: 20280004     move.l     $4(a0), d0
003196: 6100ff18     bsr.w      $30b0
00319a: 588f         addq.l     #$4, a7
00319c: 2f3c12f905fe move.l     #$12f905fe, -(a7)
0031a2: 222f0004     move.l     $4(a7), d1
0031a6: 206f000c     movea.l    $c(a7), a0
0031aa: 226f0010     movea.l    $10(a7), a1
0031ae: 2011         move.l     (a1), d0
0031b0: 9090         sub.l      (a0), d0
0031b2: 6100644e     bsr.w      $9602
0031b6: 588f         addq.l     #$4, a7
0031b8: 206f0020     movea.l    $20(a7), a0
0031bc: 2080         move.l     d0, (a0)
0031be: 2f3c12f905fe move.l     #$12f905fe, -(a7)
0031c4: 222f0008     move.l     $8(a7), d1
0031c8: 206f000c     movea.l    $c(a7), a0
0031cc: 226f0010     movea.l    $10(a7), a1
0031d0: 20290004     move.l     $4(a1), d0
0031d4: 90a80004     sub.l      $4(a0), d0
0031d8: 61006428     bsr.w      $9602
0031dc: 588f         addq.l     #$4, a7
0031de: 206f0024     movea.l    $24(a7), a0
0031e2: 2080         move.l     d0, (a0)
0031e4: 508f         addq.l     #$8, a7
0031e6: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0031ec: 4e5d         unlk       a5
0031ee: 4e75         rts        
0031f0: 4e550000     link.w     a5, #$0
0031f4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0031f8: 518f         subq.l     #$8, a7
0031fa: 4857         pea.l      (a7)
0031fc: 41ef0008     lea.l      $8(a7), a0
003200: 2208         move.l     a0, d1
003202: 206f000c     movea.l    $c(a7), a0
003206: 20280004     move.l     $4(a0), d0
00320a: 6100fea4     bsr.w      $30b0
00320e: 588f         addq.l     #$4, a7
003210: 2f3c12f905fe move.l     #$12f905fe, -(a7)
003216: 222f0004     move.l     $4(a7), d1
00321a: 206f000c     movea.l    $c(a7), a0
00321e: 226f0010     movea.l    $10(a7), a1
003222: 2011         move.l     (a1), d0
003224: 9090         sub.l      (a0), d0
003226: 610063da     bsr.w      $9602
00322a: 588f         addq.l     #$4, a7
00322c: 206f0024     movea.l    $24(a7), a0
003230: 2080         move.l     d0, (a0)
003232: 2f3c12f905fe move.l     #$12f905fe, -(a7)
003238: 222f0008     move.l     $8(a7), d1
00323c: 206f000c     movea.l    $c(a7), a0
003240: 226f0010     movea.l    $10(a7), a1
003244: 20290004     move.l     $4(a1), d0
003248: 90a80004     sub.l      $4(a0), d0
00324c: 610063b4     bsr.w      $9602
003250: 588f         addq.l     #$4, a7
003252: 206f0024     movea.l    $24(a7), a0
003256: 21400004     move.l     d0, $4(a0)
00325a: 2f3c12f905fe move.l     #$12f905fe, -(a7)
003260: 222f0004     move.l     $4(a7), d1
003264: 206f000c     movea.l    $c(a7), a0
003268: 226f0024     movea.l    $24(a7), a1
00326c: 2011         move.l     (a1), d0
00326e: 9090         sub.l      (a0), d0
003270: 61006390     bsr.w      $9602
003274: 588f         addq.l     #$4, a7
003276: 206f0028     movea.l    $28(a7), a0
00327a: 2080         move.l     d0, (a0)
00327c: 2f3c12f905fe move.l     #$12f905fe, -(a7)
003282: 222f0008     move.l     $8(a7), d1
003286: 206f000c     movea.l    $c(a7), a0
00328a: 226f0024     movea.l    $24(a7), a1
00328e: 20290004     move.l     $4(a1), d0
003292: 90a80004     sub.l      $4(a0), d0
003296: 6100636a     bsr.w      $9602
00329a: 588f         addq.l     #$4, a7
00329c: 206f0028     movea.l    $28(a7), a0
0032a0: 21400004     move.l     d0, $4(a0)
0032a4: 508f         addq.l     #$8, a7
0032a6: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0032ac: 4e5d         unlk       a5
0032ae: 4e75         rts        
0032b0: 4e550000     link.w     a5, #$0
0032b4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0032b8: 598f         subq.l     #$4, a7
0032ba: 206f0004     movea.l    $4(a7), a0
0032be: 20280004     move.l     $4(a0), d0
0032c2: 6100fe5c     bsr.w      $3120
0032c6: 2e80         move.l     d0, (a7)
0032c8: 2f3c000f4240 move.l     #$f4240, -(a7)
0032ce: 222f0004     move.l     $4(a7), d1
0032d2: 206f0008     movea.l    $8(a7), a0
0032d6: 226f000c     movea.l    $c(a7), a1
0032da: 2011         move.l     (a1), d0
0032dc: 9090         sub.l      (a0), d0
0032de: 61006322     bsr.w      $9602
0032e2: 588f         addq.l     #$4, a7
0032e4: 206f001c     movea.l    $1c(a7), a0
0032e8: 2080         move.l     d0, (a0)
0032ea: 206f0004     movea.l    $4(a7), a0
0032ee: 226f0008     movea.l    $8(a7), a1
0032f2: 20290004     move.l     $4(a1), d0
0032f6: 90a80004     sub.l      $4(a0), d0
0032fa: 206f0020     movea.l    $20(a7), a0
0032fe: 2080         move.l     d0, (a0)
003300: 588f         addq.l     #$4, a7
003302: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003308: 4e5d         unlk       a5
00330a: 4e75         rts        
00330c: 4e550000     link.w     a5, #$0
003310: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003314: 598f         subq.l     #$4, a7
003316: 206f0004     movea.l    $4(a7), a0
00331a: 20280004     move.l     $4(a0), d0
00331e: 6100fe00     bsr.w      $3120
003322: 2e80         move.l     d0, (a7)
003324: 2f3c000f4240 move.l     #$f4240, -(a7)
00332a: 222f0004     move.l     $4(a7), d1
00332e: 206f0008     movea.l    $8(a7), a0
003332: 226f000c     movea.l    $c(a7), a1
003336: 2011         move.l     (a1), d0
003338: 9090         sub.l      (a0), d0
00333a: 610062c6     bsr.w      $9602
00333e: 588f         addq.l     #$4, a7
003340: 206f0020     movea.l    $20(a7), a0
003344: 2080         move.l     d0, (a0)
003346: 206f0004     movea.l    $4(a7), a0
00334a: 226f0008     movea.l    $8(a7), a1
00334e: 20290004     move.l     $4(a1), d0
003352: 90a80004     sub.l      $4(a0), d0
003356: 206f0020     movea.l    $20(a7), a0
00335a: 21400004     move.l     d0, $4(a0)
00335e: 2f3c000f4240 move.l     #$f4240, -(a7)
003364: 222f0004     move.l     $4(a7), d1
003368: 206f0008     movea.l    $8(a7), a0
00336c: 226f0020     movea.l    $20(a7), a1
003370: 2011         move.l     (a1), d0
003372: 9090         sub.l      (a0), d0
003374: 6100628c     bsr.w      $9602
003378: 588f         addq.l     #$4, a7
00337a: 206f0024     movea.l    $24(a7), a0
00337e: 2080         move.l     d0, (a0)
003380: 206f0004     movea.l    $4(a7), a0
003384: 226f001c     movea.l    $1c(a7), a1
003388: 20290004     move.l     $4(a1), d0
00338c: 90a80004     sub.l      $4(a0), d0
003390: 206f0024     movea.l    $24(a7), a0
003394: 21400004     move.l     d0, $4(a0)
003398: 588f         addq.l     #$4, a7
00339a: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0033a0: 4e5d         unlk       a5
0033a2: 4e75         rts        
0033a4: 4e550000     link.w     a5, #$0
0033a8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0033ac: 518f         subq.l     #$8, a7
0033ae: 4857         pea.l      (a7)
0033b0: 41ef0008     lea.l      $8(a7), a0
0033b4: 2208         move.l     a0, d1
0033b6: 202f000c     move.l     $c(a7), d0
0033ba: 6100fcf4     bsr.w      $30b0
0033be: 588f         addq.l     #$4, a7
0033c0: 2f3c12f905fe move.l     #$12f905fe, -(a7)
0033c6: 222f0004     move.l     $4(a7), d1
0033ca: 206f0010     movea.l    $10(a7), a0
0033ce: 2010         move.l     (a0), d0
0033d0: 61006230     bsr.w      $9602
0033d4: 588f         addq.l     #$4, a7
0033d6: 206f001c     movea.l    $1c(a7), a0
0033da: 2080         move.l     d0, (a0)
0033dc: 2f3c12f905fe move.l     #$12f905fe, -(a7)
0033e2: 222f0008     move.l     $8(a7), d1
0033e6: 206f0010     movea.l    $10(a7), a0
0033ea: 20280004     move.l     $4(a0), d0
0033ee: 61006212     bsr.w      $9602
0033f2: 588f         addq.l     #$4, a7
0033f4: 206f0020     movea.l    $20(a7), a0
0033f8: 2080         move.l     d0, (a0)
0033fa: 508f         addq.l     #$8, a7
0033fc: 4ced0100fffc movem.l    -$4(a5), a0
003402: 4e5d         unlk       a5
003404: 4e75         rts        
003406: 4e550000     link.w     a5, #$0
00340a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00340e: 598f         subq.l     #$4, a7
003410: 202f0004     move.l     $4(a7), d0
003414: 6100fd0a     bsr.w      $3120
003418: 2e80         move.l     d0, (a7)
00341a: 2f3c000f4240 move.l     #$f4240, -(a7)
003420: 222f0004     move.l     $4(a7), d1
003424: 206f000c     movea.l    $c(a7), a0
003428: 2010         move.l     (a0), d0
00342a: 610061d6     bsr.w      $9602
00342e: 588f         addq.l     #$4, a7
003430: 206f001c     movea.l    $1c(a7), a0
003434: 2080         move.l     d0, (a0)
003436: 206f0008     movea.l    $8(a7), a0
00343a: 226f0020     movea.l    $20(a7), a1
00343e: 22a80004     move.l     $4(a0), (a1)
003442: 588f         addq.l     #$4, a7
003444: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00344a: 4e5d         unlk       a5
00344c: 4e75         rts        
00344e: 4e550000     link.w     a5, #$0
003452: 48e7c080     movem.l    d0-d1/a0, -(a7)
003456: 518f         subq.l     #$8, a7
003458: 4857         pea.l      (a7)
00345a: 41ef0008     lea.l      $8(a7), a0
00345e: 2208         move.l     a0, d1
003460: 206f000c     movea.l    $c(a7), a0
003464: 20280004     move.l     $4(a0), d0
003468: 6100fc46     bsr.w      $30b0
00346c: 588f         addq.l     #$4, a7
00346e: 2f17         move.l     (a7), -(a7)
003470: 223c12f905fe move.l     #$12f905fe, d1
003476: 202f0010     move.l     $10(a7), d0
00347a: 61006186     bsr.w      $9602
00347e: 588f         addq.l     #$4, a7
003480: 206f0008     movea.l    $8(a7), a0
003484: d090         add.l      (a0), d0
003486: 206f0020     movea.l    $20(a7), a0
00348a: 2080         move.l     d0, (a0)
00348c: 2f2f0004     move.l     $4(a7), -(a7)
003490: 223c12f905fe move.l     #$12f905fe, d1
003496: 202f0020     move.l     $20(a7), d0
00349a: 61006166     bsr.w      $9602
00349e: 588f         addq.l     #$4, a7
0034a0: 206f0008     movea.l    $8(a7), a0
0034a4: d0a80004     add.l      $4(a0), d0
0034a8: 206f0020     movea.l    $20(a7), a0
0034ac: 21400004     move.l     d0, $4(a0)
0034b0: 508f         addq.l     #$8, a7
0034b2: 4ced0100fffc movem.l    -$4(a5), a0
0034b8: 4e5d         unlk       a5
0034ba: 4e75         rts        
0034bc: 4e550000     link.w     a5, #$0
0034c0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0034c4: 598f         subq.l     #$4, a7
0034c6: 206f0004     movea.l    $4(a7), a0
0034ca: 20280004     move.l     $4(a0), d0
0034ce: 6100fc50     bsr.w      $3120
0034d2: 2e80         move.l     d0, (a7)
0034d4: 2f17         move.l     (a7), -(a7)
0034d6: 223c000f4240 move.l     #$f4240, d1
0034dc: 202f000c     move.l     $c(a7), d0
0034e0: 61006120     bsr.w      $9602
0034e4: 588f         addq.l     #$4, a7
0034e6: 206f0004     movea.l    $4(a7), a0
0034ea: d090         add.l      (a0), d0
0034ec: 206f001c     movea.l    $1c(a7), a0
0034f0: 2080         move.l     d0, (a0)
0034f2: 206f0004     movea.l    $4(a7), a0
0034f6: 20280004     move.l     $4(a0), d0
0034fa: d0af0018     add.l      $18(a7), d0
0034fe: 206f001c     movea.l    $1c(a7), a0
003502: 21400004     move.l     d0, $4(a0)
003506: 588f         addq.l     #$4, a7
003508: 4ced0100fffc movem.l    -$4(a5), a0
00350e: 4e5d         unlk       a5
003510: 4e75         rts        
003512: 4e550000     link.w     a5, #$0
003516: 48e7c080     movem.l    d0-d1/a0, -(a7)
00351a: 518f         subq.l     #$8, a7
00351c: 4857         pea.l      (a7)
00351e: 41ef0008     lea.l      $8(a7), a0
003522: 2208         move.l     a0, d1
003524: 202f000c     move.l     $c(a7), d0
003528: 6100fb86     bsr.w      $30b0
00352c: 588f         addq.l     #$4, a7
00352e: 2f17         move.l     (a7), -(a7)
003530: 223c12f905fe move.l     #$12f905fe, d1
003536: 202f0010     move.l     $10(a7), d0
00353a: 610060c6     bsr.w      $9602
00353e: 588f         addq.l     #$4, a7
003540: 206f0020     movea.l    $20(a7), a0
003544: 2080         move.l     d0, (a0)
003546: 2f2f0004     move.l     $4(a7), -(a7)
00354a: 223c12f905fe move.l     #$12f905fe, d1
003550: 202f0020     move.l     $20(a7), d0
003554: 610060ac     bsr.w      $9602
003558: 588f         addq.l     #$4, a7
00355a: 206f0020     movea.l    $20(a7), a0
00355e: 21400004     move.l     d0, $4(a0)
003562: 508f         addq.l     #$8, a7
003564: 4ced0100fffc movem.l    -$4(a5), a0
00356a: 4e5d         unlk       a5
00356c: 4e75         rts        
00356e: 4e550000     link.w     a5, #$0
003572: 48e7c080     movem.l    d0-d1/a0, -(a7)
003576: 598f         subq.l     #$4, a7
003578: 202f0004     move.l     $4(a7), d0
00357c: 6100fba2     bsr.w      $3120
003580: 2e80         move.l     d0, (a7)
003582: 2f17         move.l     (a7), -(a7)
003584: 223c000f4240 move.l     #$f4240, d1
00358a: 202f000c     move.l     $c(a7), d0
00358e: 61006072     bsr.w      $9602
003592: 588f         addq.l     #$4, a7
003594: 206f001c     movea.l    $1c(a7), a0
003598: 2080         move.l     d0, (a0)
00359a: 206f001c     movea.l    $1c(a7), a0
00359e: 216f00180004 move.l     $18(a7), $4(a0)
0035a4: 588f         addq.l     #$4, a7
0035a6: 4ced0100fffc movem.l    -$4(a5), a0
0035ac: 4e5d         unlk       a5
0035ae: 4e75         rts        
0035b0: 4e550000     link.w     a5, #$0
0035b4: 48e78080     movem.l    d0/a0, -(a7)
0035b8: 2057         movea.l    (a7), a0
0035ba: 7000         moveq      #$0, d0
0035bc: 21400004     move.l     d0, $4(a0)
0035c0: 2057         movea.l    (a7), a0
0035c2: 2080         move.l     d0, (a0)
0035c4: 4ced0100fffc movem.l    -$4(a5), a0
0035ca: 4e5d         unlk       a5
0035cc: 4e75         rts        
0035ce: 4e550000     link.w     a5, #$0
0035d2: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0035d6: 518f         subq.l     #$8, a7
0035d8: 206f0008     movea.l    $8(a7), a0
0035dc: 226f0008     movea.l    $8(a7), a1
0035e0: 20290008     move.l     $8(a1), d0
0035e4: 9090         sub.l      (a0), d0
0035e6: 2f400004     move.l     d0, $4(a7)
0035ea: 206f0008     movea.l    $8(a7), a0
0035ee: 226f0008     movea.l    $8(a7), a1
0035f2: 2029000c     move.l     $c(a1), d0
0035f6: 90a80004     sub.l      $4(a0), d0
0035fa: 2e80         move.l     d0, (a7)
0035fc: 206f0008     movea.l    $8(a7), a0
003600: 2010         move.l     (a0), d0
003602: 222f0004     move.l     $4(a7), d1
003606: e281         asr.l      #$1, d1
003608: d081         add.l      d1, d0
00360a: 206f000c     movea.l    $c(a7), a0
00360e: 2080         move.l     d0, (a0)
003610: 206f0008     movea.l    $8(a7), a0
003614: 20280004     move.l     $4(a0), d0
003618: 2217         move.l     (a7), d1
00361a: e281         asr.l      #$1, d1
00361c: d081         add.l      d1, d0
00361e: 206f000c     movea.l    $c(a7), a0
003622: 21400004     move.l     d0, $4(a0)
003626: 508f         addq.l     #$8, a7
003628: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00362e: 4e5d         unlk       a5
003630: 4e75         rts        
003632: 4e550000     link.w     a5, #$0
003636: 48e7c000     movem.l    d0-d1, -(a7)
00363a: 222f0004     move.l     $4(a7), d1
00363e: 2017         move.l     (a7), d0
003640: 6100165a     bsr.w      $4c9c
003644: 4e5d         unlk       a5
003646: 4e75         rts        
003648: 4e550000     link.w     a5, #$0
00364c: 48e7c000     movem.l    d0-d1, -(a7)
003650: 222f0004     move.l     $4(a7), d1
003654: 2017         move.l     (a7), d0
003656: 610016a4     bsr.w      $4cfc
00365a: 4e5d         unlk       a5
00365c: 4e75         rts        
00365e: 4e550000     link.w     a5, #$0
003662: 48e7c080     movem.l    d0-d1/a0, -(a7)
003666: 4fefffd8     lea.l      -$28(a7), a7
00366a: 41ef0018     lea.l      $18(a7), a0
00366e: 2008         move.l     a0, d0
003670: 61001592     bsr.w      $4c04
003674: 206f0028     movea.l    $28(a7), a0
003678: 2e90         move.l     (a0), (a7)
00367a: 2f6800040004 move.l     $4(a0), $4(a7)
003680: 486f0024     pea.l      $24(a7)
003684: 486f0024     pea.l      $24(a7)
003688: 202f0030     move.l     $30(a7), d0
00368c: 5080         addq.l     #$8, d0
00368e: 2200         move.l     d0, d1
003690: 41ef0008     lea.l      $8(a7), a0
003694: 2008         move.l     a0, d0
003696: 6100fae4     bsr.w      $317c
00369a: 508f         addq.l     #$8, a7
00369c: 486f0008     pea.l      $8(a7)
0036a0: 222f0030     move.l     $30(a7), d1
0036a4: 41ef001c     lea.l      $1c(a7), a0
0036a8: 2008         move.l     a0, d0
0036aa: 61001afa     bsr.w      $51a6
0036ae: 588f         addq.l     #$4, a7
0036b0: 2f2f003c     move.l     $3c(a7), -(a7)
0036b4: 2f2f0010     move.l     $10(a7), -(a7)
0036b8: 222f0010     move.l     $10(a7), d1
0036bc: 41ef0008     lea.l      $8(a7), a0
0036c0: 2008         move.l     a0, d0
0036c2: 6100fd8a     bsr.w      $344e
0036c6: 508f         addq.l     #$8, a7
0036c8: 206f003c     movea.l    $3c(a7), a0
0036cc: 48680008     pea.l      $8(a0)
0036d0: 2f2f0018     move.l     $18(a7), -(a7)
0036d4: 222f0018     move.l     $18(a7), d1
0036d8: 41ef0008     lea.l      $8(a7), a0
0036dc: 2008         move.l     a0, d0
0036de: 6100fd6e     bsr.w      $344e
0036e2: 508f         addq.l     #$8, a7
0036e4: 4fef0028     lea.l      $28(a7), a7
0036e8: 4ced0100fffc movem.l    -$4(a5), a0
0036ee: 4e5d         unlk       a5
0036f0: 4e75         rts        
0036f2: 4e550000     link.w     a5, #$0
0036f6: 48e7c000     movem.l    d0-d1, -(a7)
0036fa: 2f2f0010     move.l     $10(a7), -(a7)
0036fe: 222f0008     move.l     $8(a7), d1
003702: 202f0004     move.l     $4(a7), d0
003706: 610016f8     bsr.w      $4e00
00370a: 588f         addq.l     #$4, a7
00370c: 4e5d         unlk       a5
00370e: 4e75         rts        
003710: 4e550000     link.w     a5, #$0
003714: 48e7c000     movem.l    d0-d1, -(a7)
003718: 2f2f0010     move.l     $10(a7), -(a7)
00371c: 222f0008     move.l     $8(a7), d1
003720: 202f0004     move.l     $4(a7), d0
003724: 61001760     bsr.w      $4e86
003728: 588f         addq.l     #$4, a7
00372a: 4e5d         unlk       a5
00372c: 4e75         rts        
00372e: 4e550000     link.w     a5, #$0
003732: 48e7c000     movem.l    d0-d1, -(a7)
003736: 222f0004     move.l     $4(a7), d1
00373a: 2017         move.l     (a7), d0
00373c: 610017fe     bsr.w      $4f3c
003740: 4e5d         unlk       a5
003742: 4e75         rts        
003744: 4e550000     link.w     a5, #$0
003748: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00374c: 206f0004     movea.l    $4(a7), a0
003750: 2257         movea.l    (a7), a1
003752: 2011         move.l     (a1), d0
003754: 9090         sub.l      (a0), d0
003756: 206f0018     movea.l    $18(a7), a0
00375a: 2080         move.l     d0, (a0)
00375c: 206f0004     movea.l    $4(a7), a0
003760: 2257         movea.l    (a7), a1
003762: 20290004     move.l     $4(a1), d0
003766: 90a80004     sub.l      $4(a0), d0
00376a: 206f0018     movea.l    $18(a7), a0
00376e: 21400004     move.l     d0, $4(a0)
003772: 2057         movea.l    (a7), a0
003774: 20280008     move.l     $8(a0), d0
003778: 206f0004     movea.l    $4(a7), a0
00377c: d090         add.l      (a0), d0
00377e: 206f0018     movea.l    $18(a7), a0
003782: 21400008     move.l     d0, $8(a0)
003786: 2057         movea.l    (a7), a0
003788: 2028000c     move.l     $c(a0), d0
00378c: 206f0004     movea.l    $4(a7), a0
003790: d0a80004     add.l      $4(a0), d0
003794: 206f0018     movea.l    $18(a7), a0
003798: 2140000c     move.l     d0, $c(a0)
00379c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0037a2: 4e5d         unlk       a5
0037a4: 4e75         rts        
0037a6: 4e550000     link.w     a5, #$0
0037aa: 48e7c080     movem.l    d0-d1/a0, -(a7)
0037ae: 206f0014     movea.l    $14(a7), a0
0037b2: 2097         move.l     (a7), (a0)
0037b4: 206f0014     movea.l    $14(a7), a0
0037b8: 216f00040004 move.l     $4(a7), $4(a0)
0037be: 4ced0100fffc movem.l    -$4(a5), a0
0037c4: 4e5d         unlk       a5
0037c6: 4e75         rts        
0037c8: 4e550000     link.w     a5, #$0
0037cc: 48e7c080     movem.l    d0-d1/a0, -(a7)
0037d0: 206f0014     movea.l    $14(a7), a0
0037d4: 2097         move.l     (a7), (a0)
0037d6: 206f0014     movea.l    $14(a7), a0
0037da: 216f00040004 move.l     $4(a7), $4(a0)
0037e0: 4ced0100fffc movem.l    -$4(a5), a0
0037e6: 4e5d         unlk       a5
0037e8: 4e75         rts        
0037ea: 4e550000     link.w     a5, #$0
0037ee: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0037f2: 2057         movea.l    (a7), a0
0037f4: 226f0004     movea.l    $4(a7), a1
0037f8: 2011         move.l     (a1), d0
0037fa: 9090         sub.l      (a0), d0
0037fc: 7220         moveq      #$20, d1
0037fe: d081         add.l      d1, d0
003800: ec80         asr.l      #$6, d0
003802: 206f0018     movea.l    $18(a7), a0
003806: 3080         move.w     d0, (a0)
003808: 2057         movea.l    (a7), a0
00380a: 226f0004     movea.l    $4(a7), a1
00380e: 20290004     move.l     $4(a1), d0
003812: 90a80004     sub.l      $4(a0), d0
003816: 7220         moveq      #$20, d1
003818: d081         add.l      d1, d0
00381a: ec80         asr.l      #$6, d0
00381c: 206f0018     movea.l    $18(a7), a0
003820: 31400002     move.w     d0, $2(a0)
003824: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00382a: 4e5d         unlk       a5
00382c: 4e75         rts        
00382e: 4e550000     link.w     a5, #$0
003832: 48e7c080     movem.l    d0-d1/a0, -(a7)
003836: 206f0004     movea.l    $4(a7), a0
00383a: 7000         moveq      #$0, d0
00383c: 3010         move.w     (a0), d0
00383e: ed88         lsl.l      #$6, d0
003840: 2057         movea.l    (a7), a0
003842: d090         add.l      (a0), d0
003844: 206f0014     movea.l    $14(a7), a0
003848: 2080         move.l     d0, (a0)
00384a: 206f0004     movea.l    $4(a7), a0
00384e: 7000         moveq      #$0, d0
003850: 30280002     move.w     $2(a0), d0
003854: ed88         lsl.l      #$6, d0
003856: 2057         movea.l    (a7), a0
003858: d0a80004     add.l      $4(a0), d0
00385c: 206f0014     movea.l    $14(a7), a0
003860: 21400004     move.l     d0, $4(a0)
003864: 4ced0100fffc movem.l    -$4(a5), a0
00386a: 4e5d         unlk       a5
00386c: 4e75         rts        
00386e: 4e550000     link.w     a5, #$0
003872: 48e78080     movem.l    d0/a0, -(a7)
003876: 2057         movea.l    (a7), a0
003878: 2010         move.l     (a0), d0
00387a: 4ced0100fffc movem.l    -$4(a5), a0
003880: 4e5d         unlk       a5
003882: 4e75         rts        
003884: 4e550000     link.w     a5, #$0
003888: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00388c: 2057         movea.l    (a7), a0
00388e: 226f0004     movea.l    $4(a7), a1
003892: 2290         move.l     (a0), (a1)
003894: 2057         movea.l    (a7), a0
003896: 226f0018     movea.l    $18(a7), a1
00389a: 22a80004     move.l     $4(a0), (a1)
00389e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0038a4: 4e5d         unlk       a5
0038a6: 4e75         rts        
0038a8: 4e550000     link.w     a5, #$0
0038ac: 48e78080     movem.l    d0/a0, -(a7)
0038b0: 2057         movea.l    (a7), a0
0038b2: 20280004     move.l     $4(a0), d0
0038b6: 4ced0100fffc movem.l    -$4(a5), a0
0038bc: 4e5d         unlk       a5
0038be: 4e75         rts        
0038c0: 4e550000     link.w     a5, #$0
0038c4: 48e7f080     movem.l    d0-d3/a0, -(a7)
0038c8: 2057         movea.l    (a7), a0
0038ca: 2010         move.l     (a0), d0
0038cc: 4e4f         trap       #$f
0038ce: 0020263c     ori.b      #$3c, -(a0)
0038d2: fe000000     fmove      fp0, fp0
0038d6: 243c41b2f905 move.l     #$41b2f905, d2
0038dc: 4e4f         trap       #$f
0038de: 0013263c     ori.b      #$3c, (a3)
0038e2: 37db         .dc.w      $37db
0038e4: 38a0         move.w     -(a0), (a4)
0038e6: 243c3fe0c152 move.l     #$3fe0c152, d2
0038ec: 4e4f         trap       #$f
0038ee: 0010206f     ori.b      #$6f, (a0)
0038f2: 000448d0     ori.b      #$d0, d4
0038f6: 0003206f     ori.b      #$6f, d3
0038fa: 00044a90     ori.b      #$90, d4
0038fe: 6c1c         bge.b      $391c
003900: 263c54411744 move.l     #$54411744, d3
003906: 243c401921fb move.l     #$401921fb, d2
00390c: 206f0004     movea.l    $4(a7), a0
003910: 4cd00003     movem.l    (a0), d0-d1
003914: 4e4f         trap       #$f
003916: 000e         .dc.w      $000e
003918: 48d00003     movem.l    d0-d1, (a0)
00391c: 2057         movea.l    (a7), a0
00391e: 20280004     move.l     $4(a0), d0
003922: 4e4f         trap       #$f
003924: 0020263c     ori.b      #$3c, -(a0)
003928: fe000000     fmove      fp0, fp0
00392c: 243c41b2f905 move.l     #$41b2f905, d2
003932: 4e4f         trap       #$f
003934: 0013206f     ori.b      #$6f, (a3)
003938: 000448e8     ori.b      #$e8, d4
00393c: 00030008     ori.b      #$8, d3
003940: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
003946: 4e5d         unlk       a5
003948: 4e75         rts        
00394a: 4e550000     link.w     a5, #$0
00394e: 48e7c000     movem.l    d0-d1, -(a7)
003952: 222f0004     move.l     $4(a7), d1
003956: 2017         move.l     (a7), d0
003958: 61001a16     bsr.w      $5370
00395c: 4e5d         unlk       a5
00395e: 4e75         rts        
003960: 4e550000     link.w     a5, #$0
003964: 48e7c080     movem.l    d0-d1/a0, -(a7)
003968: 4feffff0     lea.l      -$10(a7), a7
00396c: 202f0014     move.l     $14(a7), d0
003970: 4480         neg.l      d0
003972: 2e80         move.l     d0, (a7)
003974: 202f0014     move.l     $14(a7), d0
003978: 4480         neg.l      d0
00397a: 2f400004     move.l     d0, $4(a7)
00397e: 2f6f00140008 move.l     $14(a7), $8(a7)
003984: 2f6f0014000c move.l     $14(a7), $c(a7)
00398a: 2f2f0024     move.l     $24(a7), -(a7)
00398e: 2f2f0008     move.l     $8(a7), -(a7)
003992: 222f0008     move.l     $8(a7), d1
003996: 202f0018     move.l     $18(a7), d0
00399a: 6100fab2     bsr.w      $344e
00399e: 508f         addq.l     #$8, a7
0039a0: 206f0024     movea.l    $24(a7), a0
0039a4: 48680008     pea.l      $8(a0)
0039a8: 2f2f0010     move.l     $10(a7), -(a7)
0039ac: 222f0010     move.l     $10(a7), d1
0039b0: 202f0018     move.l     $18(a7), d0
0039b4: 6100fa98     bsr.w      $344e
0039b8: 508f         addq.l     #$8, a7
0039ba: 4fef0010     lea.l      $10(a7), a7
0039be: 4ced0100fffc movem.l    -$4(a5), a0
0039c4: 4e5d         unlk       a5
0039c6: 4e75         rts        
0039c8: 4e550000     link.w     a5, #$0
0039cc: 48e7c000     movem.l    d0-d1, -(a7)
0039d0: 2f2f0014     move.l     $14(a7), -(a7)
0039d4: 2f2f0014     move.l     $14(a7), -(a7)
0039d8: 222f000c     move.l     $c(a7), d1
0039dc: 202f0008     move.l     $8(a7), d0
0039e0: 61001c24     bsr.w      $5606
0039e4: 508f         addq.l     #$8, a7
0039e6: 4e5d         unlk       a5
0039e8: 4e75         rts        
0039ea: 4e550000     link.w     a5, #$0
0039ee: 48e7c000     movem.l    d0-d1, -(a7)
0039f2: 222f0004     move.l     $4(a7), d1
0039f6: 2017         move.l     (a7), d0
0039f8: 61001cc6     bsr.w      $56c0
0039fc: 4e5d         unlk       a5
0039fe: 4e75         rts        
003a00: 4e550000     link.w     a5, #$0
003a04: 48e7c000     movem.l    d0-d1, -(a7)
003a08: 518f         subq.l     #$8, a7
003a0a: 4857         pea.l      (a7)
003a0c: 486f0008     pea.l      $8(a7)
003a10: 222f0014     move.l     $14(a7), d1
003a14: 202f0010     move.l     $10(a7), d0
003a18: 6100f762     bsr.w      $317c
003a1c: 508f         addq.l     #$8, a7
003a1e: 2217         move.l     (a7), d1
003a20: 202f0004     move.l     $4(a7), d0
003a24: 61005b84     bsr.w      $95aa
003a28: 508f         addq.l     #$8, a7
003a2a: 4e5d         unlk       a5
003a2c: 4e75         rts        
003a2e: 4e550000     link.w     a5, #$0
003a32: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003a36: 206f0004     movea.l    $4(a7), a0
003a3a: 2257         movea.l    (a7), a1
003a3c: 2011         move.l     (a1), d0
003a3e: b090         cmp.l      (a0), d0
003a40: 6614         bne.b      $3a56
003a42: 206f0004     movea.l    $4(a7), a0
003a46: 2257         movea.l    (a7), a1
003a48: 20290004     move.l     $4(a1), d0
003a4c: b0a80004     cmp.l      $4(a0), d0
003a50: 6604         bne.b      $3a56
003a52: 7001         moveq      #$1, d0
003a54: 6002         bra.b      $3a58
003a56: 7000         moveq      #$0, d0
003a58: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003a5e: 4e5d         unlk       a5
003a60: 4e75         rts        
003a62: 4e550000     link.w     a5, #$0
003a66: 48e7c000     movem.l    d0-d1, -(a7)
003a6a: 222f0004     move.l     $4(a7), d1
003a6e: 2017         move.l     (a7), d0
003a70: 61001e5a     bsr.w      $58cc
003a74: 4e5d         unlk       a5
003a76: 4e75         rts        
003a78: 4e550000     link.w     a5, #$0
003a7c: 48e7c000     movem.l    d0-d1, -(a7)
003a80: 2f2f0010     move.l     $10(a7), -(a7)
003a84: 222f0008     move.l     $8(a7), d1
003a88: 202f0004     move.l     $4(a7), d0
003a8c: 61001e7e     bsr.w      $590c
003a90: 588f         addq.l     #$4, a7
003a92: 4e5d         unlk       a5
003a94: 4e75         rts        
003a96: 4e550000     link.w     a5, #$0
003a9a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003a9e: 206f0018     movea.l    $18(a7), a0
003aa2: 2257         movea.l    (a7), a1
003aa4: 2091         move.l     (a1), (a0)
003aa6: 216900040004 move.l     $4(a1), $4(a0)
003aac: 206f0018     movea.l    $18(a7), a0
003ab0: 226f0004     movea.l    $4(a7), a1
003ab4: 21510008     move.l     (a1), $8(a0)
003ab8: 21690004000c move.l     $4(a1), $c(a0)
003abe: 4ced0300fff8 movem.l    -$8(a5), a0-a1
003ac4: 4e5d         unlk       a5
003ac6: 4e75         rts        
003ac8: 4e550000     link.w     a5, #$0
003acc: 48e7c000     movem.l    d0-d1, -(a7)
003ad0: 518f         subq.l     #$8, a7
003ad2: 4857         pea.l      (a7)
003ad4: 486f0008     pea.l      $8(a7)
003ad8: 222f0014     move.l     $14(a7), d1
003adc: 202f0010     move.l     $10(a7), d0
003ae0: 6100f69a     bsr.w      $317c
003ae4: 508f         addq.l     #$8, a7
003ae6: 4aaf0004     tst.l      $4(a7)
003aea: 6c0a         bge.b      $3af6
003aec: 202f0004     move.l     $4(a7), d0
003af0: 4480         neg.l      d0
003af2: 2f400004     move.l     d0, $4(a7)
003af6: 4a97         tst.l      (a7)
003af8: 6c06         bge.b      $3b00
003afa: 2017         move.l     (a7), d0
003afc: 4480         neg.l      d0
003afe: 2e80         move.l     d0, (a7)
003b00: 202f0004     move.l     $4(a7), d0
003b04: b097         cmp.l      (a7), d0
003b06: 6f06         ble.b      $3b0e
003b08: 202f0004     move.l     $4(a7), d0
003b0c: 6002         bra.b      $3b10
003b0e: 2017         move.l     (a7), d0
003b10: 508f         addq.l     #$8, a7
003b12: 4e5d         unlk       a5
003b14: 4e75         rts        
003b16: 4e550000     link.w     a5, #$0
003b1a: 48e7c000     movem.l    d0-d1, -(a7)
003b1e: 518f         subq.l     #$8, a7
003b20: 4857         pea.l      (a7)
003b22: 486f0008     pea.l      $8(a7)
003b26: 222f0014     move.l     $14(a7), d1
003b2a: 202f0010     move.l     $10(a7), d0
003b2e: 6100f64c     bsr.w      $317c
003b32: 508f         addq.l     #$8, a7
003b34: 2f2f0018     move.l     $18(a7), -(a7)
003b38: 2f2f0004     move.l     $4(a7), -(a7)
003b3c: 2f2f0008     move.l     $8(a7), -(a7)
003b40: 222f0010     move.l     $10(a7), d1
003b44: 202f0010     move.l     $10(a7), d0
003b48: 61005af8     bsr.w      $9642
003b4c: 4fef000c     lea.l      $c(a7), a7
003b50: 508f         addq.l     #$8, a7
003b52: 4e5d         unlk       a5
003b54: 4e75         rts        
003b56: 4e550000     link.w     a5, #$0
003b5a: 48e7c000     movem.l    d0-d1, -(a7)
003b5e: 2f2f0010     move.l     $10(a7), -(a7)
003b62: 222f0008     move.l     $8(a7), d1
003b66: 202f0004     move.l     $4(a7), d0
003b6a: 61001f0e     bsr.w      $5a7a
003b6e: 588f         addq.l     #$4, a7
003b70: 4e5d         unlk       a5
003b72: 4e75         rts        
003b74: 4e550000     link.w     a5, #$0
003b78: 48e7c000     movem.l    d0-d1, -(a7)
003b7c: 518f         subq.l     #$8, a7
003b7e: 4857         pea.l      (a7)
003b80: 486f0008     pea.l      $8(a7)
003b84: 222f0014     move.l     $14(a7), d1
003b88: 202f0010     move.l     $10(a7), d0
003b8c: 6100f722     bsr.w      $32b0
003b90: 508f         addq.l     #$8, a7
003b92: 2217         move.l     (a7), d1
003b94: 202f0004     move.l     $4(a7), d0
003b98: 61005704     bsr.w      $929e
003b9c: 508f         addq.l     #$8, a7
003b9e: 4e5d         unlk       a5
003ba0: 4e75         rts        
003ba2: 4e550000     link.w     a5, #$0
003ba6: 48e7c000     movem.l    d0-d1, -(a7)
003baa: 2f2f0018     move.l     $18(a7), -(a7)
003bae: 2f2f0018     move.l     $18(a7), -(a7)
003bb2: 2f2f0018     move.l     $18(a7), -(a7)
003bb6: 222f0010     move.l     $10(a7), d1
003bba: 202f000c     move.l     $c(a7), d0
003bbe: 61001f22     bsr.w      $5ae2
003bc2: 4fef000c     lea.l      $c(a7), a7
003bc6: 4e5d         unlk       a5
003bc8: 4e75         rts        
003bca: 4e550000     link.w     a5, #$0
003bce: 48e7c000     movem.l    d0-d1, -(a7)
003bd2: 222f0004     move.l     $4(a7), d1
003bd6: 2017         move.l     (a7), d0
003bd8: 61002062     bsr.w      $5c3c
003bdc: 4e5d         unlk       a5
003bde: 4e75         rts        
003be0: 4e550000     link.w     a5, #$0
003be4: 48e7c080     movem.l    d0-d1/a0, -(a7)
003be8: 4fefffe8     lea.l      -$18(a7), a7
003bec: 41ef0008     lea.l      $8(a7), a0
003bf0: 2008         move.l     a0, d0
003bf2: 61001010     bsr.w      $4c04
003bf6: 486f0010     pea.l      $10(a7)
003bfa: 486f0004     pea.l      $4(a7)
003bfe: 206f0024     movea.l    $24(a7), a0
003c02: 48680008     pea.l      $8(a0)
003c06: 222f0024     move.l     $24(a7), d1
003c0a: 202f0028     move.l     $28(a7), d0
003c0e: 6100f5e0     bsr.w      $31f0
003c12: 4fef000c     lea.l      $c(a7), a7
003c16: 41ef0008     lea.l      $8(a7), a0
003c1a: 2208         move.l     a0, d1
003c1c: 41d7         lea.l      (a7), a0
003c1e: 2008         move.l     a0, d0
003c20: 610020be     bsr.w      $5ce0
003c24: 4fef0018     lea.l      $18(a7), a7
003c28: 4ced0100fffc movem.l    -$4(a5), a0
003c2e: 4e5d         unlk       a5
003c30: 4e75         rts        
003c32: 4e550000     link.w     a5, #$0
003c36: 48e7c080     movem.l    d0-d1/a0, -(a7)
003c3a: 4fefffe8     lea.l      -$18(a7), a7
003c3e: 41ef0008     lea.l      $8(a7), a0
003c42: 2008         move.l     a0, d0
003c44: 61000fbe     bsr.w      $4c04
003c48: 486f0010     pea.l      $10(a7)
003c4c: 486f0004     pea.l      $4(a7)
003c50: 206f0024     movea.l    $24(a7), a0
003c54: 48680008     pea.l      $8(a0)
003c58: 222f0024     move.l     $24(a7), d1
003c5c: 202f0028     move.l     $28(a7), d0
003c60: 6100f58e     bsr.w      $31f0
003c64: 4fef000c     lea.l      $c(a7), a7
003c68: 41ef0008     lea.l      $8(a7), a0
003c6c: 2208         move.l     a0, d1
003c6e: 41d7         lea.l      (a7), a0
003c70: 2008         move.l     a0, d0
003c72: 610021a0     bsr.w      $5e14
003c76: 4fef0018     lea.l      $18(a7), a7
003c7a: 4ced0100fffc movem.l    -$4(a5), a0
003c80: 4e5d         unlk       a5
003c82: 4e75         rts        
003c84: 4e550000     link.w     a5, #$0
003c88: 48e7c080     movem.l    d0-d1/a0, -(a7)
003c8c: 4fefffe0     lea.l      -$20(a7), a7
003c90: 41ef0008     lea.l      $8(a7), a0
003c94: 2008         move.l     a0, d0
003c96: 61000f6c     bsr.w      $4c04
003c9a: 486f0010     pea.l      $10(a7)
003c9e: 486f0004     pea.l      $4(a7)
003ca2: 206f002c     movea.l    $2c(a7), a0
003ca6: 48680008     pea.l      $8(a0)
003caa: 222f002c     move.l     $2c(a7), d1
003cae: 202f0030     move.l     $30(a7), d0
003cb2: 6100f658     bsr.w      $330c
003cb6: 4fef000c     lea.l      $c(a7), a7
003cba: 486f0018     pea.l      $18(a7)
003cbe: 41ef000c     lea.l      $c(a7), a0
003cc2: 2208         move.l     a0, d1
003cc4: 41ef0004     lea.l      $4(a7), a0
003cc8: 2008         move.l     a0, d0
003cca: 610021dc     bsr.w      $5ea8
003cce: 588f         addq.l     #$4, a7
003cd0: 2f2f0034     move.l     $34(a7), -(a7)
003cd4: 2f2f0020     move.l     $20(a7), -(a7)
003cd8: 222f0020     move.l     $20(a7), d1
003cdc: 202f002c     move.l     $2c(a7), d0
003ce0: 6100f7da     bsr.w      $34bc
003ce4: 508f         addq.l     #$8, a7
003ce6: 4fef0020     lea.l      $20(a7), a7
003cea: 4ced0100fffc movem.l    -$4(a5), a0
003cf0: 4e5d         unlk       a5
003cf2: 4e75         rts        
003cf4: 4e550000     link.w     a5, #$0
003cf8: 48e7c080     movem.l    d0-d1/a0, -(a7)
003cfc: 4fefffe8     lea.l      -$18(a7), a7
003d00: 41ef0008     lea.l      $8(a7), a0
003d04: 2008         move.l     a0, d0
003d06: 61000efc     bsr.w      $4c04
003d0a: 486f0010     pea.l      $10(a7)
003d0e: 486f0004     pea.l      $4(a7)
003d12: 206f0024     movea.l    $24(a7), a0
003d16: 48680008     pea.l      $8(a0)
003d1a: 222f0024     move.l     $24(a7), d1
003d1e: 202f0028     move.l     $28(a7), d0
003d22: 6100f4cc     bsr.w      $31f0
003d26: 4fef000c     lea.l      $c(a7), a7
003d2a: 41ef0008     lea.l      $8(a7), a0
003d2e: 2208         move.l     a0, d1
003d30: 41d7         lea.l      (a7), a0
003d32: 2008         move.l     a0, d0
003d34: 610022ec     bsr.w      $6022
003d38: 4fef0018     lea.l      $18(a7), a7
003d3c: 4ced0100fffc movem.l    -$4(a5), a0
003d42: 4e5d         unlk       a5
003d44: 4e75         rts        
003d46: 4e550000     link.w     a5, #$0
003d4a: 48e7c080     movem.l    d0-d1/a0, -(a7)
003d4e: 4fefffe0     lea.l      -$20(a7), a7
003d52: 41ef0008     lea.l      $8(a7), a0
003d56: 2008         move.l     a0, d0
003d58: 61000eaa     bsr.w      $4c04
003d5c: 486f0010     pea.l      $10(a7)
003d60: 486f0004     pea.l      $4(a7)
003d64: 206f002c     movea.l    $2c(a7), a0
003d68: 48680008     pea.l      $8(a0)
003d6c: 222f002c     move.l     $2c(a7), d1
003d70: 202f0030     move.l     $30(a7), d0
003d74: 6100f596     bsr.w      $330c
003d78: 4fef000c     lea.l      $c(a7), a7
003d7c: 486f0018     pea.l      $18(a7)
003d80: 41ef000c     lea.l      $c(a7), a0
003d84: 2208         move.l     a0, d1
003d86: 41ef0004     lea.l      $4(a7), a0
003d8a: 2008         move.l     a0, d0
003d8c: 6100233c     bsr.w      $60ca
003d90: 588f         addq.l     #$4, a7
003d92: 2f2f0034     move.l     $34(a7), -(a7)
003d96: 2f2f0020     move.l     $20(a7), -(a7)
003d9a: 222f0020     move.l     $20(a7), d1
003d9e: 202f002c     move.l     $2c(a7), d0
003da2: 6100f718     bsr.w      $34bc
003da6: 508f         addq.l     #$8, a7
003da8: 4fef0020     lea.l      $20(a7), a7
003dac: 4ced0100fffc movem.l    -$4(a5), a0
003db2: 4e5d         unlk       a5
003db4: 4e75         rts        
003db6: 4e550000     link.w     a5, #$0
003dba: 48e7c000     movem.l    d0-d1, -(a7)
003dbe: 2f2f0010     move.l     $10(a7), -(a7)
003dc2: 222f0008     move.l     $8(a7), d1
003dc6: 202f0004     move.l     $4(a7), d0
003dca: 610018bc     bsr.w      $5688
003dce: 588f         addq.l     #$4, a7
003dd0: 4e5d         unlk       a5
003dd2: 4e75         rts        
003dd4: 4e550000     link.w     a5, #$0
003dd8: 48e7c000     movem.l    d0-d1, -(a7)
003ddc: 2f2f0010     move.l     $10(a7), -(a7)
003de0: 222f0008     move.l     $8(a7), d1
003de4: 202f0004     move.l     $4(a7), d0
003de8: 61001960     bsr.w      $574a
003dec: 588f         addq.l     #$4, a7
003dee: 4e5d         unlk       a5
003df0: 4e75         rts        
003df2: 4e550000     link.w     a5, #$0
003df6: 48e7c000     movem.l    d0-d1, -(a7)
003dfa: 2f2f0010     move.l     $10(a7), -(a7)
003dfe: 222f0008     move.l     $8(a7), d1
003e02: 202f0004     move.l     $4(a7), d0
003e06: 61001c72     bsr.w      $5a7a
003e0a: 588f         addq.l     #$4, a7
003e0c: 4e5d         unlk       a5
003e0e: 4e75         rts        
003e10: 4e550000     link.w     a5, #$0
003e14: 48e7c080     movem.l    d0-d1/a0, -(a7)
003e18: 518f         subq.l     #$8, a7
003e1a: 4857         pea.l      (a7)
003e1c: 222f000c     move.l     $c(a7), d1
003e20: 202f0010     move.l     $10(a7), d0
003e24: 610007ee     bsr.w      $4614
003e28: 588f         addq.l     #$4, a7
003e2a: 7010         moveq      #$10, d0
003e2c: d0af000c     add.l      $c(a7), d0
003e30: 2200         move.l     d0, d1
003e32: 41d7         lea.l      (a7), a0
003e34: 2008         move.l     a0, d0
003e36: 610025be     bsr.w      $63f6
003e3a: 508f         addq.l     #$8, a7
003e3c: 4ced0100fffc movem.l    -$4(a5), a0
003e42: 4e5d         unlk       a5
003e44: 4e75         rts        
003e46: 4e550000     link.w     a5, #$0
003e4a: 48e7c080     movem.l    d0-d1/a0, -(a7)
003e4e: 518f         subq.l     #$8, a7
003e50: 4857         pea.l      (a7)
003e52: 222f000c     move.l     $c(a7), d1
003e56: 202f0010     move.l     $10(a7), d0
003e5a: 610007b8     bsr.w      $4614
003e5e: 588f         addq.l     #$4, a7
003e60: 7010         moveq      #$10, d0
003e62: d0af000c     add.l      $c(a7), d0
003e66: 2200         move.l     d0, d1
003e68: 41d7         lea.l      (a7), a0
003e6a: 2008         move.l     a0, d0
003e6c: 610026b2     bsr.w      $6520
003e70: 508f         addq.l     #$8, a7
003e72: 4ced0100fffc movem.l    -$4(a5), a0
003e78: 4e5d         unlk       a5
003e7a: 4e75         rts        
003e7c: 4e550000     link.w     a5, #$0
003e80: 48e7c080     movem.l    d0-d1/a0, -(a7)
003e84: 4feffff0     lea.l      -$10(a7), a7
003e88: 486f0008     pea.l      $8(a7)
003e8c: 222f0014     move.l     $14(a7), d1
003e90: 202f0018     move.l     $18(a7), d0
003e94: 6100077e     bsr.w      $4614
003e98: 588f         addq.l     #$4, a7
003e9a: 4857         pea.l      (a7)
003e9c: 7010         moveq      #$10, d0
003e9e: d0af0018     add.l      $18(a7), d0
003ea2: 2200         move.l     d0, d1
003ea4: 41ef000c     lea.l      $c(a7), a0
003ea8: 2008         move.l     a0, d0
003eaa: 61002714     bsr.w      $65c0
003eae: 588f         addq.l     #$4, a7
003eb0: 2f2f0024     move.l     $24(a7), -(a7)
003eb4: 41ef0004     lea.l      $4(a7), a0
003eb8: 2208         move.l     a0, d1
003eba: 202f0018     move.l     $18(a7), d0
003ebe: 610006b8     bsr.w      $4578
003ec2: 588f         addq.l     #$4, a7
003ec4: 4fef0010     lea.l      $10(a7), a7
003ec8: 4ced0100fffc movem.l    -$4(a5), a0
003ece: 4e5d         unlk       a5
003ed0: 4e75         rts        
003ed2: 4e550000     link.w     a5, #$0
003ed6: 48e7c080     movem.l    d0-d1/a0, -(a7)
003eda: 518f         subq.l     #$8, a7
003edc: 4857         pea.l      (a7)
003ede: 222f000c     move.l     $c(a7), d1
003ee2: 202f0010     move.l     $10(a7), d0
003ee6: 6100072c     bsr.w      $4614
003eea: 588f         addq.l     #$4, a7
003eec: 7010         moveq      #$10, d0
003eee: d0af000c     add.l      $c(a7), d0
003ef2: 2200         move.l     d0, d1
003ef4: 41d7         lea.l      (a7), a0
003ef6: 2008         move.l     a0, d0
003ef8: 61002796     bsr.w      $6690
003efc: 508f         addq.l     #$8, a7
003efe: 4ced0100fffc movem.l    -$4(a5), a0
003f04: 4e5d         unlk       a5
003f06: 4e75         rts        
003f08: 4e550000     link.w     a5, #$0
003f0c: 48e7c080     movem.l    d0-d1/a0, -(a7)
003f10: 4feffff0     lea.l      -$10(a7), a7
003f14: 486f0008     pea.l      $8(a7)
003f18: 222f0014     move.l     $14(a7), d1
003f1c: 202f0018     move.l     $18(a7), d0
003f20: 610006f2     bsr.w      $4614
003f24: 588f         addq.l     #$4, a7
003f26: 4857         pea.l      (a7)
003f28: 7010         moveq      #$10, d0
003f2a: d0af0018     add.l      $18(a7), d0
003f2e: 2200         move.l     d0, d1
003f30: 41ef000c     lea.l      $c(a7), a0
003f34: 2008         move.l     a0, d0
003f36: 610027fa     bsr.w      $6732
003f3a: 588f         addq.l     #$4, a7
003f3c: 2f2f0024     move.l     $24(a7), -(a7)
003f40: 41ef0004     lea.l      $4(a7), a0
003f44: 2208         move.l     a0, d1
003f46: 202f0018     move.l     $18(a7), d0
003f4a: 6100062c     bsr.w      $4578
003f4e: 588f         addq.l     #$4, a7
003f50: 4fef0010     lea.l      $10(a7), a7
003f54: 4ced0100fffc movem.l    -$4(a5), a0
003f5a: 4e5d         unlk       a5
003f5c: 4e75         rts        
003f5e: 4e550000     link.w     a5, #$0
003f62: 48e7c080     movem.l    d0-d1/a0, -(a7)
003f66: 4fefffe6     lea.l      -$1a(a7), a7
003f6a: 486f0012     pea.l      $12(a7)
003f6e: 222f001e     move.l     $1e(a7), d1
003f72: 202f0022     move.l     $22(a7), d0
003f76: 6100069c     bsr.w      $4614
003f7a: 588f         addq.l     #$4, a7
003f7c: 4857         pea.l      (a7)
003f7e: 486f0008     pea.l      $8(a7)
003f82: 486f0012     pea.l      $12(a7)
003f86: 7010         moveq      #$10, d0
003f88: d0af002a     add.l      $2a(a7), d0
003f8c: 2200         move.l     d0, d1
003f8e: 41ef001e     lea.l      $1e(a7), a0
003f92: 2008         move.l     a0, d0
003f94: 61002892     bsr.w      $6828
003f98: 4fef000c     lea.l      $c(a7), a7
003f9c: 1f400009     move.b     d0, $9(a7)
003fa0: 206f0032     movea.l    $32(a7), a0
003fa4: 20af0004     move.l     $4(a7), (a0)
003fa8: 206f0036     movea.l    $36(a7), a0
003fac: 2097         move.l     (a7), (a0)
003fae: 2f2f002e     move.l     $2e(a7), -(a7)
003fb2: 41ef000e     lea.l      $e(a7), a0
003fb6: 2208         move.l     a0, d1
003fb8: 202f0022     move.l     $22(a7), d0
003fbc: 610005ba     bsr.w      $4578
003fc0: 588f         addq.l     #$4, a7
003fc2: 102f0009     move.b     $9(a7), d0
003fc6: 4fef001a     lea.l      $1a(a7), a7
003fca: 4ced0100fffc movem.l    -$4(a5), a0
003fd0: 4e5d         unlk       a5
003fd2: 4e75         rts        
003fd4: 4e550000     link.w     a5, #$0
003fd8: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
003fdc: 518f         subq.l     #$8, a7
003fde: 206f0008     movea.l    $8(a7), a0
003fe2: 226f0008     movea.l    $8(a7), a1
003fe6: 20290010     move.l     $10(a1), d0
003fea: 9090         sub.l      (a0), d0
003fec: 2f400004     move.l     d0, $4(a7)
003ff0: 206f0008     movea.l    $8(a7), a0
003ff4: 226f0008     movea.l    $8(a7), a1
003ff8: 20290014     move.l     $14(a1), d0
003ffc: 90a80004     sub.l      $4(a0), d0
004000: 2e80         move.l     d0, (a7)
004002: 206f0008     movea.l    $8(a7), a0
004006: 2010         move.l     (a0), d0
004008: 2200         move.l     d0, d1
00400a: 4aaf0004     tst.l      $4(a7)
00400e: 6d08         blt.b      $4018
004010: 202f0004     move.l     $4(a7), d0
004014: e280         asr.l      #$1, d0
004016: 600a         bra.b      $4022
004018: 202f0004     move.l     $4(a7), d0
00401c: 4480         neg.l      d0
00401e: e280         asr.l      #$1, d0
004020: 4480         neg.l      d0
004022: d280         add.l      d0, d1
004024: 206f000c     movea.l    $c(a7), a0
004028: 2081         move.l     d1, (a0)
00402a: 206f0008     movea.l    $8(a7), a0
00402e: 20280004     move.l     $4(a0), d0
004032: 2200         move.l     d0, d1
004034: 4a97         tst.l      (a7)
004036: 6d06         blt.b      $403e
004038: 2017         move.l     (a7), d0
00403a: e280         asr.l      #$1, d0
00403c: 6008         bra.b      $4046
00403e: 2017         move.l     (a7), d0
004040: 4480         neg.l      d0
004042: e280         asr.l      #$1, d0
004044: 4480         neg.l      d0
004046: d280         add.l      d0, d1
004048: 206f000c     movea.l    $c(a7), a0
00404c: 21410004     move.l     d1, $4(a0)
004050: 508f         addq.l     #$8, a7
004052: 4ced0300fff8 movem.l    -$8(a5), a0-a1
004058: 4e5d         unlk       a5
00405a: 4e75         rts        
00405c: 4e550000     link.w     a5, #$0
004060: 48e7c000     movem.l    d0-d1, -(a7)
004064: 222f0004     move.l     $4(a7), d1
004068: 2017         move.l     (a7), d0
00406a: 61002940     bsr.w      $69ac
00406e: 4e5d         unlk       a5
004070: 4e75         rts        
004072: 4e550000     link.w     a5, #$0
004076: 48e7c080     movem.l    d0-d1/a0, -(a7)
00407a: 4fefffb8     lea.l      -$48(a7), a7
00407e: 206f0048     movea.l    $48(a7), a0
004082: 2e90         move.l     (a0), (a7)
004084: 2f6800040004 move.l     $4(a0), $4(a7)
00408a: 486f0028     pea.l      $28(a7)
00408e: 222f004c     move.l     $4c(a7), d1
004092: 41ef0004     lea.l      $4(a7), a0
004096: 2008         move.l     a0, d0
004098: 610005d2     bsr.w      $466c
00409c: 588f         addq.l     #$4, a7
00409e: 486f0008     pea.l      $8(a7)
0040a2: 222f0050     move.l     $50(a7), d1
0040a6: 41ef002c     lea.l      $2c(a7), a0
0040aa: 2008         move.l     a0, d0
0040ac: 61002c50     bsr.w      $6cfe
0040b0: 588f         addq.l     #$4, a7
0040b2: 2f2f005c     move.l     $5c(a7), -(a7)
0040b6: 41ef000c     lea.l      $c(a7), a0
0040ba: 2208         move.l     a0, d1
0040bc: 41ef0004     lea.l      $4(a7), a0
0040c0: 2008         move.l     a0, d0
0040c2: 610004e2     bsr.w      $45a6
0040c6: 588f         addq.l     #$4, a7
0040c8: 4fef0048     lea.l      $48(a7), a7
0040cc: 4ced0100fffc movem.l    -$4(a5), a0
0040d2: 4e5d         unlk       a5
0040d4: 4e75         rts        
0040d6: 4e550000     link.w     a5, #$0
0040da: 48e7c080     movem.l    d0-d1/a0, -(a7)
0040de: 4fefffb6     lea.l      -$4a(a7), a7
0040e2: 4257         clr.w      (a7)
0040e4: 6034         bra.b      $411a
0040e6: 3017         move.w     (a7), d0
0040e8: 48c0         ext.l      d0
0040ea: 41ef002a     lea.l      $2a(a7), a0
0040ee: 48700e04     pea.l      $4(a0, d0.l)
0040f2: 302f0004     move.w     $4(a7), d0
0040f6: 48c0         ext.l      d0
0040f8: 41ef002e     lea.l      $2e(a7), a0
0040fc: 48700e00     pea.l      (a0, d0.l * 8)
004100: 302f0008     move.w     $8(a7), d0
004104: 48c0         ext.l      d0
004106: e788         lsl.l      #$3, d0
004108: d0af0052     add.l      $52(a7), d0
00410c: 2200         move.l     d0, d1
00410e: 202f0056     move.l     $56(a7), d0
004112: 6100f19c     bsr.w      $32b0
004116: 508f         addq.l     #$8, a7
004118: 5257         addq.w     #$1, (a7)
00411a: 0c570004     cmpi.w     #$4, (a7)
00411e: 6dc6         blt.b      $40e6
004120: 41ef0002     lea.l      $2(a7), a0
004124: 2008         move.l     a0, d0
004126: 61000adc     bsr.w      $4c04
00412a: 486f000a     pea.l      $a(a7)
00412e: 41ef0006     lea.l      $6(a7), a0
004132: 2208         move.l     a0, d1
004134: 41ef002e     lea.l      $2e(a7), a0
004138: 2008         move.l     a0, d0
00413a: 61002abc     bsr.w      $6bf8
00413e: 588f         addq.l     #$4, a7
004140: 4257         clr.w      (a7)
004142: 6034         bra.b      $4178
004144: 3017         move.w     (a7), d0
004146: 48c0         ext.l      d0
004148: 206f005e     movea.l    $5e(a7), a0
00414c: 48700e00     pea.l      (a0, d0.l * 8)
004150: 302f0004     move.w     $4(a7), d0
004154: 48c0         ext.l      d0
004156: 41ef000e     lea.l      $e(a7), a0
00415a: 2f300e04     move.l     $4(a0, d0.l), -(a7)
00415e: 302f0008     move.w     $8(a7), d0
004162: 48c0         ext.l      d0
004164: 41ef0012     lea.l      $12(a7), a0
004168: 22300e00     move.l     (a0, d0.l * 8), d1
00416c: 202f0056     move.l     $56(a7), d0
004170: 6100f34a     bsr.w      $34bc
004174: 508f         addq.l     #$8, a7
004176: 5257         addq.w     #$1, (a7)
004178: 0c570004     cmpi.w     #$4, (a7)
00417c: 6dc6         blt.b      $4144
00417e: 4fef004a     lea.l      $4a(a7), a7
004182: 4ced0100fffc movem.l    -$4(a5), a0
004188: 4e5d         unlk       a5
00418a: 4e75         rts        
00418c: 4e550000     link.w     a5, #$0
004190: 48e7c000     movem.l    d0-d1, -(a7)
004194: 2f2f0010     move.l     $10(a7), -(a7)
004198: 222f0008     move.l     $8(a7), d1
00419c: 202f0004     move.l     $4(a7), d0
0041a0: 610029fe     bsr.w      $6ba0
0041a4: 588f         addq.l     #$4, a7
0041a6: 4e5d         unlk       a5
0041a8: 4e75         rts        
0041aa: 4e550000     link.w     a5, #$0
0041ae: 48e7c080     movem.l    d0-d1/a0, -(a7)
0041b2: 2f2f0014     move.l     $14(a7), -(a7)
0041b6: 206f0008     movea.l    $8(a7), a0
0041ba: 2f280004     move.l     $4(a0), -(a7)
0041be: 206f000c     movea.l    $c(a7), a0
0041c2: 2210         move.l     (a0), d1
0041c4: 202f0008     move.l     $8(a7), d0
0041c8: 6100f348     bsr.w      $3512
0041cc: 508f         addq.l     #$8, a7
0041ce: 4ced0100fffc movem.l    -$4(a5), a0
0041d4: 4e5d         unlk       a5
0041d6: 4e75         rts        
0041d8: 4e550000     link.w     a5, #$0
0041dc: 48e7f080     movem.l    d0-d3/a0, -(a7)
0041e0: 4fefffdc     lea.l      -$24(a7), a7
0041e4: 486f000c     pea.l      $c(a7)
0041e8: 41ef0014     lea.l      $14(a7), a0
0041ec: 2208         move.l     a0, d1
0041ee: 202f0028     move.l     $28(a7), d0
0041f2: 6100eebc     bsr.w      $30b0
0041f6: 588f         addq.l     #$4, a7
0041f8: 486f0014     pea.l      $14(a7)
0041fc: 41ef0020     lea.l      $20(a7), a0
004200: 2208         move.l     a0, d1
004202: 7000         moveq      #$0, d0
004204: 302f002e     move.w     $2e(a7), d0
004208: 610047f6     bsr.w      $8a00
00420c: 588f         addq.l     #$4, a7
00420e: 202f0040     move.l     $40(a7), d0
004212: 4e4f         trap       #$f
004214: 00204cef     ori.b      #$ef, -(a0)
004218: 000c         .dc.w      $000c
00421a: 001c4e4f     ori.b      #$4f, (a4)+
00421e: 001248d7     ori.b      #$d7, (a2)
004222: 00034a97     ori.b      #$97, d3
004226: 6f12         ble.b      $423a
004228: 7600         moveq      #$0, d3
00422a: 243c3fe00000 move.l     #$3fe00000, d2
004230: 4cd70003     movem.l    (a7), d0-d1
004234: 4e4f         trap       #$f
004236: 000e         .dc.w      $000e
004238: 6010         bra.b      $424a
00423a: 7600         moveq      #$0, d3
00423c: 243c3fe00000 move.l     #$3fe00000, d2
004242: 4cd70003     movem.l    (a7), d0-d1
004246: 4e4f         trap       #$f
004248: 00104e4f     ori.b      #$4f, (a0)
00424c: 00242f40     ori.b      #$40, -(a4)
004250: 0008         .dc.w      $0008
004252: 2f2f000c     move.l     $c(a7), -(a7)
004256: 223c12f905fe move.l     #$12f905fe, d1
00425c: 202f000c     move.l     $c(a7), d0
004260: 610053a0     bsr.w      $9602
004264: 588f         addq.l     #$4, a7
004266: 206f0044     movea.l    $44(a7), a0
00426a: 2080         move.l     d0, (a0)
00426c: 202f0040     move.l     $40(a7), d0
004270: 4e4f         trap       #$f
004272: 00204cef     ori.b      #$ef, -(a0)
004276: 000c         .dc.w      $000c
004278: 00144e4f     ori.b      #$4f, (a4)
00427c: 001248d7     ori.b      #$d7, (a2)
004280: 00034a97     ori.b      #$97, d3
004284: 6f12         ble.b      $4298
004286: 7600         moveq      #$0, d3
004288: 243c3fe00000 move.l     #$3fe00000, d2
00428e: 4cd70003     movem.l    (a7), d0-d1
004292: 4e4f         trap       #$f
004294: 000e         .dc.w      $000e
004296: 6010         bra.b      $42a8
004298: 7600         moveq      #$0, d3
00429a: 243c3fe00000 move.l     #$3fe00000, d2
0042a0: 4cd70003     movem.l    (a7), d0-d1
0042a4: 4e4f         trap       #$f
0042a6: 00104e4f     ori.b      #$4f, (a0)
0042aa: 00242f40     ori.b      #$40, -(a4)
0042ae: 0008         .dc.w      $0008
0042b0: 2f2f0010     move.l     $10(a7), -(a7)
0042b4: 223c12f905fe move.l     #$12f905fe, d1
0042ba: 202f000c     move.l     $c(a7), d0
0042be: 61005342     bsr.w      $9602
0042c2: 588f         addq.l     #$4, a7
0042c4: 206f0044     movea.l    $44(a7), a0
0042c8: 21400004     move.l     d0, $4(a0)
0042cc: 4fef0024     lea.l      $24(a7), a7
0042d0: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
0042d6: 4e5d         unlk       a5
0042d8: 4e75         rts        
0042da: 4e550000     link.w     a5, #$0
0042de: 48e7c000     movem.l    d0-d1, -(a7)
0042e2: 518f         subq.l     #$8, a7
0042e4: 4857         pea.l      (a7)
0042e6: 486f0008     pea.l      $8(a7)
0042ea: 222f0014     move.l     $14(a7), d1
0042ee: 202f0010     move.l     $10(a7), d0
0042f2: 6100f0b0     bsr.w      $33a4
0042f6: 508f         addq.l     #$8, a7
0042f8: 2217         move.l     (a7), d1
0042fa: 202f0004     move.l     $4(a7), d0
0042fe: 610052aa     bsr.w      $95aa
004302: 508f         addq.l     #$8, a7
004304: 4e5d         unlk       a5
004306: 4e75         rts        
004308: 4e550000     link.w     a5, #$0
00430c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004310: 206f0014     movea.l    $14(a7), a0
004314: 48680004     pea.l      $4(a0)
004318: 2f2f0018     move.l     $18(a7), -(a7)
00431c: 222f000c     move.l     $c(a7), d1
004320: 202f0008     move.l     $8(a7), d0
004324: 6100f07e     bsr.w      $33a4
004328: 508f         addq.l     #$8, a7
00432a: 4ced0100fffc movem.l    -$4(a5), a0
004330: 4e5d         unlk       a5
004332: 4e75         rts        
004334: 4e550000     link.w     a5, #$0
004338: 48e7c000     movem.l    d0-d1, -(a7)
00433c: 518f         subq.l     #$8, a7
00433e: 4857         pea.l      (a7)
004340: 486f0008     pea.l      $8(a7)
004344: 222f0014     move.l     $14(a7), d1
004348: 202f0010     move.l     $10(a7), d0
00434c: 6100f056     bsr.w      $33a4
004350: 508f         addq.l     #$8, a7
004352: 4aaf0004     tst.l      $4(a7)
004356: 6c0a         bge.b      $4362
004358: 202f0004     move.l     $4(a7), d0
00435c: 4480         neg.l      d0
00435e: 2f400004     move.l     d0, $4(a7)
004362: 4a97         tst.l      (a7)
004364: 6c06         bge.b      $436c
004366: 2017         move.l     (a7), d0
004368: 4480         neg.l      d0
00436a: 2e80         move.l     d0, (a7)
00436c: 202f0004     move.l     $4(a7), d0
004370: b097         cmp.l      (a7), d0
004372: 6f06         ble.b      $437a
004374: 202f0004     move.l     $4(a7), d0
004378: 6002         bra.b      $437c
00437a: 2017         move.l     (a7), d0
00437c: 508f         addq.l     #$8, a7
00437e: 4e5d         unlk       a5
004380: 4e75         rts        
004382: 4e550000     link.w     a5, #$0
004386: 48e7c080     movem.l    d0-d1/a0, -(a7)
00438a: 4feffff0     lea.l      -$10(a7), a7
00438e: 486f000c     pea.l      $c(a7)
004392: 486f000c     pea.l      $c(a7)
004396: 222f001c     move.l     $1c(a7), d1
00439a: 202f0018     move.l     $18(a7), d0
00439e: 6100f066     bsr.w      $3406
0043a2: 508f         addq.l     #$8, a7
0043a4: 41d7         lea.l      (a7), a0
0043a6: 2208         move.l     a0, d1
0043a8: 41ef0008     lea.l      $8(a7), a0
0043ac: 2008         move.l     a0, d0
0043ae: 61000f32     bsr.w      $52e2
0043b2: 2f2f0024     move.l     $24(a7), -(a7)
0043b6: 2f2f0008     move.l     $8(a7), -(a7)
0043ba: 222f0008     move.l     $8(a7), d1
0043be: 202f0018     move.l     $18(a7), d0
0043c2: 6100f1aa     bsr.w      $356e
0043c6: 508f         addq.l     #$8, a7
0043c8: 4fef0010     lea.l      $10(a7), a7
0043cc: 4ced0100fffc movem.l    -$4(a5), a0
0043d2: 4e5d         unlk       a5
0043d4: 4e75         rts        
0043d6: 4e550000     link.w     a5, #$0
0043da: 48e7c000     movem.l    d0-d1, -(a7)
0043de: 518f         subq.l     #$8, a7
0043e0: 4857         pea.l      (a7)
0043e2: 486f0008     pea.l      $8(a7)
0043e6: 222f0014     move.l     $14(a7), d1
0043ea: 202f0010     move.l     $10(a7), d0
0043ee: 6100efb4     bsr.w      $33a4
0043f2: 508f         addq.l     #$8, a7
0043f4: 2f2f0018     move.l     $18(a7), -(a7)
0043f8: 2f2f0004     move.l     $4(a7), -(a7)
0043fc: 2f2f0008     move.l     $8(a7), -(a7)
004400: 222f0010     move.l     $10(a7), d1
004404: 202f0010     move.l     $10(a7), d0
004408: 61005238     bsr.w      $9642
00440c: 4fef000c     lea.l      $c(a7), a7
004410: 508f         addq.l     #$8, a7
004412: 4e5d         unlk       a5
004414: 4e75         rts        
004416: 4e550000     link.w     a5, #$0
00441a: 48e7c000     movem.l    d0-d1, -(a7)
00441e: 518f         subq.l     #$8, a7
004420: 4857         pea.l      (a7)
004422: 486f0008     pea.l      $8(a7)
004426: 222f0014     move.l     $14(a7), d1
00442a: 202f0010     move.l     $10(a7), d0
00442e: 6100efd6     bsr.w      $3406
004432: 508f         addq.l     #$8, a7
004434: 2217         move.l     (a7), d1
004436: 202f0004     move.l     $4(a7), d0
00443a: 61004e62     bsr.w      $929e
00443e: 508f         addq.l     #$8, a7
004440: 4e5d         unlk       a5
004442: 4e75         rts        
004444: 4e550000     link.w     a5, #$0
004448: 48e7fc80     movem.l    d0-d5/a0, -(a7)
00444c: 4fefffc8     lea.l      -$38(a7), a7
004450: 486f0018     pea.l      $18(a7)
004454: 41ef0024     lea.l      $24(a7), a0
004458: 2208         move.l     a0, d1
00445a: 7000         moveq      #$0, d0
00445c: 302f0062     move.w     $62(a7), d0
004460: 6100459e     bsr.w      $8a00
004464: 588f         addq.l     #$4, a7
004466: 486f0034     pea.l      $34(a7)
00446a: 486f0034     pea.l      $34(a7)
00446e: 222f0044     move.l     $44(a7), d1
004472: 202f0040     move.l     $40(a7), d0
004476: 6100ef8e     bsr.w      $3406
00447a: 508f         addq.l     #$8, a7
00447c: 202f0030     move.l     $30(a7), d0
004480: 4e4f         trap       #$f
004482: 002048ef     ori.b      #$ef, -(a0)
004486: 00030010     ori.b      #$10, d3
00448a: 202f0034     move.l     $34(a7), d0
00448e: 4e4f         trap       #$f
004490: 002048ef     ori.b      #$ef, -(a0)
004494: 00030008     ori.b      #$8, d3
004498: 4cef000c0020 movem.l    $20(a7), d2-d3
00449e: 4cef00030008 movem.l    $8(a7), d0-d1
0044a4: 4e4f         trap       #$f
0044a6: 00122a01     ori.b      #$1, (a2)
0044aa: 2800         move.l     d0, d4
0044ac: 4cef000c0018 movem.l    $18(a7), d2-d3
0044b2: 4cef00030010 movem.l    $10(a7), d0-d1
0044b8: 4e4f         trap       #$f
0044ba: 00122605     ori.b      #$5, (a2)
0044be: 2404         move.l     d4, d2
0044c0: 4e4f         trap       #$f
0044c2: 000e         .dc.w      $000e
0044c4: 48d70003     movem.l    d0-d1, (a7)
0044c8: 4a97         tst.l      (a7)
0044ca: 6f12         ble.b      $44de
0044cc: 7600         moveq      #$0, d3
0044ce: 243c3fe00000 move.l     #$3fe00000, d2
0044d4: 4cd70003     movem.l    (a7), d0-d1
0044d8: 4e4f         trap       #$f
0044da: 000e         .dc.w      $000e
0044dc: 6010         bra.b      $44ee
0044de: 7600         moveq      #$0, d3
0044e0: 243c3fe00000 move.l     #$3fe00000, d2
0044e6: 4cd70003     movem.l    (a7), d0-d1
0044ea: 4e4f         trap       #$f
0044ec: 00104e4f     ori.b      #$4f, (a0)
0044f0: 00242f40     ori.b      #$40, -(a4)
0044f4: 00284cef000c ori.b      #$ef, $c(a0)
0044fa: 00204cef     ori.b      #$ef, -(a0)
0044fe: 00030010     ori.b      #$10, d3
004502: 4e4f         trap       #$f
004504: 00122a01     ori.b      #$1, (a2)
004508: 2800         move.l     d0, d4
00450a: 4cef000c0018 movem.l    $18(a7), d2-d3
004510: 4cef00030008 movem.l    $8(a7), d0-d1
004516: 4e4f         trap       #$f
004518: 00122605     ori.b      #$5, (a2)
00451c: 2404         move.l     d4, d2
00451e: 4e4f         trap       #$f
004520: 001048d7     ori.b      #$d7, (a0)
004524: 00034a97     ori.b      #$97, d3
004528: 6f12         ble.b      $453c
00452a: 7600         moveq      #$0, d3
00452c: 243c3fe00000 move.l     #$3fe00000, d2
004532: 4cd70003     movem.l    (a7), d0-d1
004536: 4e4f         trap       #$f
004538: 000e         .dc.w      $000e
00453a: 6010         bra.b      $454c
00453c: 7600         moveq      #$0, d3
00453e: 243c3fe00000 move.l     #$3fe00000, d2
004544: 4cd70003     movem.l    (a7), d0-d1
004548: 4e4f         trap       #$f
00454a: 00104e4f     ori.b      #$4f, (a0)
00454e: 00242f40     ori.b      #$40, -(a4)
004552: 002c2f2f0060 ori.b      #$2f, $60(a4)
004558: 2f2f0030     move.l     $30(a7), -(a7)
00455c: 222f0030     move.l     $30(a7), d1
004560: 202f0040     move.l     $40(a7), d0
004564: 6100f008     bsr.w      $356e
004568: 508f         addq.l     #$8, a7
00456a: 4fef0038     lea.l      $38(a7), a7
00456e: 4ced013cffec movem.l    -$14(a5), d2-d5/a0
004574: 4e5d         unlk       a5
004576: 4e75         rts        
004578: 4e550000     link.w     a5, #$0
00457c: 48e7c080     movem.l    d0-d1/a0, -(a7)
004580: 2f2f0014     move.l     $14(a7), -(a7)
004584: 206f0008     movea.l    $8(a7), a0
004588: 2f280004     move.l     $4(a0), -(a7)
00458c: 206f000c     movea.l    $c(a7), a0
004590: 2210         move.l     (a0), d1
004592: 202f0008     move.l     $8(a7), d0
004596: 6100eeb6     bsr.w      $344e
00459a: 508f         addq.l     #$8, a7
00459c: 4ced0100fffc movem.l    -$4(a5), a0
0045a2: 4e5d         unlk       a5
0045a4: 4e75         rts        
0045a6: 4e550000     link.w     a5, #$0
0045aa: 48e7c080     movem.l    d0-d1/a0, -(a7)
0045ae: 598f         subq.l     #$4, a7
0045b0: 4297         clr.l      (a7)
0045b2: 6020         bra.b      $45d4
0045b4: 206f0018     movea.l    $18(a7), a0
0045b8: 2017         move.l     (a7), d0
0045ba: 48700e00     pea.l      (a0, d0.l * 8)
0045be: 202f0004     move.l     $4(a7), d0
0045c2: e788         lsl.l      #$3, d0
0045c4: d0af000c     add.l      $c(a7), d0
0045c8: 2200         move.l     d0, d1
0045ca: 202f0008     move.l     $8(a7), d0
0045ce: 61a8         bsr.b      $4578
0045d0: 588f         addq.l     #$4, a7
0045d2: 5297         addq.l     #$1, (a7)
0045d4: 7004         moveq      #$4, d0
0045d6: b097         cmp.l      (a7), d0
0045d8: 6eda         bgt.b      $45b4
0045da: 588f         addq.l     #$4, a7
0045dc: 4ced0100fffc movem.l    -$4(a5), a0
0045e2: 4e5d         unlk       a5
0045e4: 4e75         rts        
0045e6: 4e550000     link.w     a5, #$0
0045ea: 48e7c080     movem.l    d0-d1/a0, -(a7)
0045ee: 2f2f0014     move.l     $14(a7), -(a7)
0045f2: 206f0008     movea.l    $8(a7), a0
0045f6: 2f280004     move.l     $4(a0), -(a7)
0045fa: 206f000c     movea.l    $c(a7), a0
0045fe: 2210         move.l     (a0), d1
004600: 202f0008     move.l     $8(a7), d0
004604: 6100eeb6     bsr.w      $34bc
004608: 508f         addq.l     #$8, a7
00460a: 4ced0100fffc movem.l    -$4(a5), a0
004610: 4e5d         unlk       a5
004612: 4e75         rts        
004614: 4e550000     link.w     a5, #$0
004618: 48e7c080     movem.l    d0-d1/a0, -(a7)
00461c: 206f0014     movea.l    $14(a7), a0
004620: 48680004     pea.l      $4(a0)
004624: 2f2f0018     move.l     $18(a7), -(a7)
004628: 222f000c     move.l     $c(a7), d1
00462c: 202f0008     move.l     $8(a7), d0
004630: 6100eb4a     bsr.w      $317c
004634: 508f         addq.l     #$8, a7
004636: 4ced0100fffc movem.l    -$4(a5), a0
00463c: 4e5d         unlk       a5
00463e: 4e75         rts        
004640: 4e550000     link.w     a5, #$0
004644: 48e7c080     movem.l    d0-d1/a0, -(a7)
004648: 206f0014     movea.l    $14(a7), a0
00464c: 48680004     pea.l      $4(a0)
004650: 2f2f0018     move.l     $18(a7), -(a7)
004654: 222f000c     move.l     $c(a7), d1
004658: 202f0008     move.l     $8(a7), d0
00465c: 6100ec52     bsr.w      $32b0
004660: 508f         addq.l     #$8, a7
004662: 4ced0100fffc movem.l    -$4(a5), a0
004668: 4e5d         unlk       a5
00466a: 4e75         rts        
00466c: 4e550000     link.w     a5, #$0
004670: 48e7c080     movem.l    d0-d1/a0, -(a7)
004674: 598f         subq.l     #$4, a7
004676: 4297         clr.l      (a7)
004678: 6022         bra.b      $469c
00467a: 206f0018     movea.l    $18(a7), a0
00467e: 2017         move.l     (a7), d0
004680: 48700e00     pea.l      (a0, d0.l * 8)
004684: 202f0004     move.l     $4(a7), d0
004688: e788         lsl.l      #$3, d0
00468a: d0af000c     add.l      $c(a7), d0
00468e: 2200         move.l     d0, d1
004690: 202f0008     move.l     $8(a7), d0
004694: 6100ff7e     bsr.w      $4614
004698: 588f         addq.l     #$4, a7
00469a: 5297         addq.l     #$1, (a7)
00469c: 7004         moveq      #$4, d0
00469e: b097         cmp.l      (a7), d0
0046a0: 6ed8         bgt.b      $467a
0046a2: 588f         addq.l     #$4, a7
0046a4: 4ced0100fffc movem.l    -$4(a5), a0
0046aa: 4e5d         unlk       a5
0046ac: 4e75         rts        
0046ae: 4e550000     link.w     a5, #$0
0046b2: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0046b6: 518f         subq.l     #$8, a7
0046b8: 206f0008     movea.l    $8(a7), a0
0046bc: 226f0008     movea.l    $8(a7), a1
0046c0: 20290008     move.l     $8(a1), d0
0046c4: 9090         sub.l      (a0), d0
0046c6: 2f400004     move.l     d0, $4(a7)
0046ca: 206f0008     movea.l    $8(a7), a0
0046ce: 226f0008     movea.l    $8(a7), a1
0046d2: 2029000c     move.l     $c(a1), d0
0046d6: 90a80004     sub.l      $4(a0), d0
0046da: 2e80         move.l     d0, (a7)
0046dc: 206f0008     movea.l    $8(a7), a0
0046e0: 2010         move.l     (a0), d0
0046e2: 2200         move.l     d0, d1
0046e4: 4aaf0004     tst.l      $4(a7)
0046e8: 6d08         blt.b      $46f2
0046ea: 202f0004     move.l     $4(a7), d0
0046ee: e280         asr.l      #$1, d0
0046f0: 600a         bra.b      $46fc
0046f2: 202f0004     move.l     $4(a7), d0
0046f6: 4480         neg.l      d0
0046f8: e280         asr.l      #$1, d0
0046fa: 4480         neg.l      d0
0046fc: d280         add.l      d0, d1
0046fe: 206f000c     movea.l    $c(a7), a0
004702: 2081         move.l     d1, (a0)
004704: 206f0008     movea.l    $8(a7), a0
004708: 20280004     move.l     $4(a0), d0
00470c: 2200         move.l     d0, d1
00470e: 4a97         tst.l      (a7)
004710: 6d06         blt.b      $4718
004712: 2017         move.l     (a7), d0
004714: e280         asr.l      #$1, d0
004716: 6008         bra.b      $4720
004718: 2017         move.l     (a7), d0
00471a: 4480         neg.l      d0
00471c: e280         asr.l      #$1, d0
00471e: 4480         neg.l      d0
004720: d280         add.l      d0, d1
004722: 206f000c     movea.l    $c(a7), a0
004726: 21410004     move.l     d1, $4(a0)
00472a: 508f         addq.l     #$8, a7
00472c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
004732: 4e5d         unlk       a5
004734: 4e75         rts        
004736: 4e550000     link.w     a5, #$0
00473a: 48e7c000     movem.l    d0-d1, -(a7)
00473e: 518f         subq.l     #$8, a7
004740: 4857         pea.l      (a7)
004742: 486f0008     pea.l      $8(a7)
004746: 202f0010     move.l     $10(a7), d0
00474a: 5080         addq.l     #$8, d0
00474c: 2200         move.l     d0, d1
00474e: 202f0010     move.l     $10(a7), d0
004752: 6100ea28     bsr.w      $317c
004756: 508f         addq.l     #$8, a7
004758: 2217         move.l     (a7), d1
00475a: 202f0004     move.l     $4(a7), d0
00475e: 61004e4a     bsr.w      $95aa
004762: 508f         addq.l     #$8, a7
004764: 4ced0002fffc movem.l    -$4(a5), d1
00476a: 4e5d         unlk       a5
00476c: 4e75         rts        
00476e: 4e550000     link.w     a5, #$0
004772: 48e7c000     movem.l    d0-d1, -(a7)
004776: 518f         subq.l     #$8, a7
004778: 4857         pea.l      (a7)
00477a: 486f0008     pea.l      $8(a7)
00477e: 202f0010     move.l     $10(a7), d0
004782: 5080         addq.l     #$8, d0
004784: 2200         move.l     d0, d1
004786: 202f0010     move.l     $10(a7), d0
00478a: 6100eb24     bsr.w      $32b0
00478e: 508f         addq.l     #$8, a7
004790: 2217         move.l     (a7), d1
004792: 202f0004     move.l     $4(a7), d0
004796: 61004b06     bsr.w      $929e
00479a: 508f         addq.l     #$8, a7
00479c: 4ced0002fffc movem.l    -$4(a5), d1
0047a2: 4e5d         unlk       a5
0047a4: 4e75         rts        
0047a6: 4e550000     link.w     a5, #$0
0047aa: 48e7c000     movem.l    d0-d1, -(a7)
0047ae: 222f0004     move.l     $4(a7), d1
0047b2: 2017         move.l     (a7), d0
0047b4: 61002716     bsr.w      $6ecc
0047b8: 4e5d         unlk       a5
0047ba: 4e75         rts        
0047bc: 4e550000     link.w     a5, #$0
0047c0: 48e7c000     movem.l    d0-d1, -(a7)
0047c4: 222f0004     move.l     $4(a7), d1
0047c8: 2017         move.l     (a7), d0
0047ca: 610028a2     bsr.w      $706e
0047ce: 4e5d         unlk       a5
0047d0: 4e75         rts        
0047d2: 4e550000     link.w     a5, #$0
0047d6: 48e7c000     movem.l    d0-d1, -(a7)
0047da: 222f0004     move.l     $4(a7), d1
0047de: 2017         move.l     (a7), d0
0047e0: 61002988     bsr.w      $716a
0047e4: 4e5d         unlk       a5
0047e6: 4e75         rts        
0047e8: 4e550000     link.w     a5, #$0
0047ec: 48e7c000     movem.l    d0-d1, -(a7)
0047f0: 222f0004     move.l     $4(a7), d1
0047f4: 2017         move.l     (a7), d0
0047f6: 61002bc4     bsr.w      $73bc
0047fa: 4e5d         unlk       a5
0047fc: 4e75         rts        
0047fe: 4e550000     link.w     a5, #$0
004802: 48e7f080     movem.l    d0-d3/a0, -(a7)
004806: 4fefffc6     lea.l      -$3a(a7), a7
00480a: 41ef0012     lea.l      $12(a7), a0
00480e: 2008         move.l     a0, d0
004810: 610003f2     bsr.w      $4c04
004814: 486f001e     pea.l      $1e(a7)
004818: 486f001e     pea.l      $1e(a7)
00481c: 202f0042     move.l     $42(a7), d0
004820: 5080         addq.l     #$8, d0
004822: 2200         move.l     d0, d1
004824: 202f0042     move.l     $42(a7), d0
004828: 6100ea86     bsr.w      $32b0
00482c: 508f         addq.l     #$8, a7
00482e: 486f000a     pea.l      $a(a7)
004832: 486f0006     pea.l      $6(a7)
004836: 206f0046     movea.l    $46(a7), a0
00483a: 48680008     pea.l      $8(a0)
00483e: 222f004a     move.l     $4a(a7), d1
004842: 202f0046     move.l     $46(a7), d0
004846: 6100eac4     bsr.w      $330c
00484a: 4fef000c     lea.l      $c(a7), a7
00484e: 486f0022     pea.l      $22(a7)
004852: 41ef0006     lea.l      $6(a7), a0
004856: 2208         move.l     a0, d1
004858: 41ef0016     lea.l      $16(a7), a0
00485c: 2008         move.l     a0, d0
00485e: 61002df8     bsr.w      $7658
004862: 588f         addq.l     #$4, a7
004864: 1f400001     move.b     d0, $1(a7)
004868: 4a2f0001     tst.b      $1(a7)
00486c: 67000080     beq.w      $48ee
004870: 4aaf0022     tst.l      $22(a7)
004874: 6f14         ble.b      $488a
004876: 7600         moveq      #$0, d3
004878: 243c3fe00000 move.l     #$3fe00000, d2
00487e: 4cef00030022 movem.l    $22(a7), d0-d1
004884: 4e4f         trap       #$f
004886: 000e         .dc.w      $000e
004888: 6012         bra.b      $489c
00488a: 7600         moveq      #$0, d3
00488c: 243c3fe00000 move.l     #$3fe00000, d2
004892: 4cef00030022 movem.l    $22(a7), d0-d1
004898: 4e4f         trap       #$f
00489a: 00104e4f     ori.b      #$4f, (a0)
00489e: 00242f40     ori.b      #$40, -(a4)
0048a2: 00324aaf002a ori.b      #$af, $2a(a2, d0.w)
0048a8: 6f14         ble.b      $48be
0048aa: 7600         moveq      #$0, d3
0048ac: 243c3fe00000 move.l     #$3fe00000, d2
0048b2: 4cef0003002a movem.l    $2a(a7), d0-d1
0048b8: 4e4f         trap       #$f
0048ba: 000e         .dc.w      $000e
0048bc: 6012         bra.b      $48d0
0048be: 7600         moveq      #$0, d3
0048c0: 243c3fe00000 move.l     #$3fe00000, d2
0048c6: 4cef0003002a movem.l    $2a(a7), d0-d1
0048cc: 4e4f         trap       #$f
0048ce: 00104e4f     ori.b      #$4f, (a0)
0048d2: 00242f40     ori.b      #$40, -(a4)
0048d6: 00362f2f0056 ori.b      #$2f, $56(a6, d0.w)
0048dc: 2f2f003a     move.l     $3a(a7), -(a7)
0048e0: 222f003a     move.l     $3a(a7), d1
0048e4: 202f0042     move.l     $42(a7), d0
0048e8: 6100ebd2     bsr.w      $34bc
0048ec: 508f         addq.l     #$8, a7
0048ee: 102f0001     move.b     $1(a7), d0
0048f2: 4fef003a     lea.l      $3a(a7), a7
0048f6: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
0048fc: 4e5d         unlk       a5
0048fe: 4e75         rts        
004900: 4e550000     link.w     a5, #$0
004904: 48e7c000     movem.l    d0-d1, -(a7)
004908: 222f0004     move.l     $4(a7), d1
00490c: 2017         move.l     (a7), d0
00490e: 61003194     bsr.w      $7aa4
004912: 4e5d         unlk       a5
004914: 4e75         rts        
004916: 4e550000     link.w     a5, #$0
00491a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00491e: 4fefffd6     lea.l      -$2a(a7), a7
004922: 41ef0012     lea.l      $12(a7), a0
004926: 2008         move.l     a0, d0
004928: 610002da     bsr.w      $4c04
00492c: 486f001e     pea.l      $1e(a7)
004930: 486f001e     pea.l      $1e(a7)
004934: 202f0032     move.l     $32(a7), d0
004938: 5080         addq.l     #$8, d0
00493a: 2200         move.l     d0, d1
00493c: 202f0032     move.l     $32(a7), d0
004940: 6100e96e     bsr.w      $32b0
004944: 508f         addq.l     #$8, a7
004946: 486f000a     pea.l      $a(a7)
00494a: 486f0006     pea.l      $6(a7)
00494e: 206f0036     movea.l    $36(a7), a0
004952: 48680008     pea.l      $8(a0)
004956: 222f003a     move.l     $3a(a7), d1
00495a: 202f0036     move.l     $36(a7), d0
00495e: 6100e9ac     bsr.w      $330c
004962: 4fef000c     lea.l      $c(a7), a7
004966: 486f0022     pea.l      $22(a7)
00496a: 41ef0006     lea.l      $6(a7), a0
00496e: 2208         move.l     a0, d1
004970: 41ef0016     lea.l      $16(a7), a0
004974: 2008         move.l     a0, d0
004976: 610031f0     bsr.w      $7b68
00497a: 588f         addq.l     #$4, a7
00497c: 1f400001     move.b     d0, $1(a7)
004980: 2f2f003e     move.l     $3e(a7), -(a7)
004984: 2f2f002a     move.l     $2a(a7), -(a7)
004988: 222f002a     move.l     $2a(a7), d1
00498c: 202f0032     move.l     $32(a7), d0
004990: 6100eb2a     bsr.w      $34bc
004994: 508f         addq.l     #$8, a7
004996: 102f0001     move.b     $1(a7), d0
00499a: 4fef002a     lea.l      $2a(a7), a7
00499e: 4ced0100fffc movem.l    -$4(a5), a0
0049a4: 4e5d         unlk       a5
0049a6: 4e75         rts        
0049a8: 4e550000     link.w     a5, #$0
0049ac: 48e7c000     movem.l    d0-d1, -(a7)
0049b0: 4feffff4     lea.l      -$c(a7), a7
0049b4: 4857         pea.l      (a7)
0049b6: 486f0008     pea.l      $8(a7)
0049ba: 202f0014     move.l     $14(a7), d0
0049be: 5080         addq.l     #$8, d0
0049c0: 2200         move.l     d0, d1
0049c2: 202f0014     move.l     $14(a7), d0
0049c6: 6100e8e8     bsr.w      $32b0
0049ca: 508f         addq.l     #$8, a7
0049cc: 2217         move.l     (a7), d1
0049ce: 202f0004     move.l     $4(a7), d0
0049d2: 610048ca     bsr.w      $929e
0049d6: 3f40000a     move.w     d0, $a(a7)
0049da: 4857         pea.l      (a7)
0049dc: 486f0008     pea.l      $8(a7)
0049e0: 202f0018     move.l     $18(a7), d0
0049e4: 5080         addq.l     #$8, d0
0049e6: 2200         move.l     d0, d1
0049e8: 202f0018     move.l     $18(a7), d0
0049ec: 6100e8c2     bsr.w      $32b0
0049f0: 508f         addq.l     #$8, a7
0049f2: 2217         move.l     (a7), d1
0049f4: 202f0004     move.l     $4(a7), d0
0049f8: 610048a4     bsr.w      $929e
0049fc: 3f400008     move.w     d0, $8(a7)
004a00: 7000         moveq      #$0, d0
004a02: 302f0008     move.w     $8(a7), d0
004a06: 2200         move.l     d0, d1
004a08: 7000         moveq      #$0, d0
004a0a: 302f000a     move.w     $a(a7), d0
004a0e: 61004454     bsr.w      $8e64
004a12: 4fef000c     lea.l      $c(a7), a7
004a16: 4e5d         unlk       a5
004a18: 4e75         rts        
004a1a: 4e550000     link.w     a5, #$0
004a1e: 48e78080     movem.l    d0/a0, -(a7)
004a22: 2057         movea.l    (a7), a0
004a24: 2010         move.l     (a0), d0
004a26: 4ced0100fffc movem.l    -$4(a5), a0
004a2c: 4e5d         unlk       a5
004a2e: 4e75         rts        
004a30: 4e550000     link.w     a5, #$0
004a34: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004a38: 2057         movea.l    (a7), a0
004a3a: 226f0004     movea.l    $4(a7), a1
004a3e: 2290         move.l     (a0), (a1)
004a40: 2057         movea.l    (a7), a0
004a42: 226f0018     movea.l    $18(a7), a1
004a46: 22a80004     move.l     $4(a0), (a1)
004a4a: 4ced0300fff8 movem.l    -$8(a5), a0-a1
004a50: 4e5d         unlk       a5
004a52: 4e75         rts        
004a54: 4e550000     link.w     a5, #$0
004a58: 48e78080     movem.l    d0/a0, -(a7)
004a5c: 2057         movea.l    (a7), a0
004a5e: 20280004     move.l     $4(a0), d0
004a62: 4ced0100fffc movem.l    -$4(a5), a0
004a68: 4e5d         unlk       a5
004a6a: 4e75         rts        
004a6c: 4e550000     link.w     a5, #$0
004a70: 48e78000     movem.l    d0, -(a7)
004a74: 2f2f0014     move.l     $14(a7), -(a7)
004a78: 2f2f0014     move.l     $14(a7), -(a7)
004a7c: 2f2f0014     move.l     $14(a7), -(a7)
004a80: 202f000c     move.l     $c(a7), d0
004a84: 61000a56     bsr.w      $54dc
004a88: 4fef000c     lea.l      $c(a7), a7
004a8c: 4e5d         unlk       a5
004a8e: 4e75         rts        
004a90: 4e550000     link.w     a5, #$0
004a94: 48e7c000     movem.l    d0-d1, -(a7)
004a98: 2f2f0010     move.l     $10(a7), -(a7)
004a9c: 222f0008     move.l     $8(a7), d1
004aa0: 202f0004     move.l     $4(a7), d0
004aa4: 61000ae0     bsr.w      $5586
004aa8: 588f         addq.l     #$4, a7
004aaa: 4e5d         unlk       a5
004aac: 4e75         rts        
004aae: 4e550000     link.w     a5, #$0
004ab2: 48e7c000     movem.l    d0-d1, -(a7)
004ab6: 2f2f0014     move.l     $14(a7), -(a7)
004aba: 2f2f0014     move.l     $14(a7), -(a7)
004abe: 222f000c     move.l     $c(a7), d1
004ac2: 202f0008     move.l     $8(a7), d0
004ac6: 61000af4     bsr.w      $55bc
004aca: 508f         addq.l     #$8, a7
004acc: 4e5d         unlk       a5
004ace: 4e75         rts        
004ad0: 4e550000     link.w     a5, #$0
004ad4: 48e7c000     movem.l    d0-d1, -(a7)
004ad8: 2f2f0010     move.l     $10(a7), -(a7)
004adc: 222f0008     move.l     $8(a7), d1
004ae0: 202f0004     move.l     $4(a7), d0
004ae4: 61000ba2     bsr.w      $5688
004ae8: 588f         addq.l     #$4, a7
004aea: 4e5d         unlk       a5
004aec: 4e75         rts        
004aee: 4e550000     link.w     a5, #$0
004af2: 48e7c000     movem.l    d0-d1, -(a7)
004af6: 2f2f0010     move.l     $10(a7), -(a7)
004afa: 222f0008     move.l     $8(a7), d1
004afe: 202f0004     move.l     $4(a7), d0
004b02: 61000f76     bsr.w      $5a7a
004b06: 588f         addq.l     #$4, a7
004b08: 4e5d         unlk       a5
004b0a: 4e75         rts        
004b0c: 4e550000     link.w     a5, #$0
004b10: 48e7f080     movem.l    d0-d3/a0, -(a7)
004b14: 518f         subq.l     #$8, a7
004b16: 206f0008     movea.l    $8(a7), a0
004b1a: 263c37db38a0 move.l     #$37db38a0, d3
004b20: 243c3fe0c152 move.l     #$3fe0c152, d2
004b26: 4cd00003     movem.l    (a0), d0-d1
004b2a: 4e4f         trap       #$f
004b2c: 000e         .dc.w      $000e
004b2e: 48d70003     movem.l    d0-d1, (a7)
004b32: 4cd70003     movem.l    (a7), d0-d1
004b36: 263c54411744 move.l     #$54411744, d3
004b3c: 243c401921fb move.l     #$401921fb, d2
004b42: 4e4f         trap       #$f
004b44: 00146f18     ori.b      #$18, (a4)
004b48: 263c54411744 move.l     #$54411744, d3
004b4e: 243c401921fb move.l     #$401921fb, d2
004b54: 4cd70003     movem.l    (a7), d0-d1
004b58: 4e4f         trap       #$f
004b5a: 001048d7     ori.b      #$d7, (a0)
004b5e: 0003263c     ori.b      #$3c, d3
004b62: fe000000     fmove      fp0, fp0
004b66: 243c41b2f905 move.l     #$41b2f905, d2
004b6c: 4cd70003     movem.l    (a7), d0-d1
004b70: 4e4f         trap       #$f
004b72: 001248d7     ori.b      #$d7, (a2)
004b76: 00034a97     ori.b      #$97, d3
004b7a: 6f12         ble.b      $4b8e
004b7c: 7600         moveq      #$0, d3
004b7e: 243c3fe00000 move.l     #$3fe00000, d2
004b84: 4cd70003     movem.l    (a7), d0-d1
004b88: 4e4f         trap       #$f
004b8a: 000e         .dc.w      $000e
004b8c: 6010         bra.b      $4b9e
004b8e: 7600         moveq      #$0, d3
004b90: 243c3fe00000 move.l     #$3fe00000, d2
004b96: 4cd70003     movem.l    (a7), d0-d1
004b9a: 4e4f         trap       #$f
004b9c: 00104e4f     ori.b      #$4f, (a0)
004ba0: 0024206f     ori.b      #$6f, -(a4)
004ba4: 000c         .dc.w      $000c
004ba6: 2080         move.l     d0, (a0)
004ba8: 206f0008     movea.l    $8(a7), a0
004bac: 263cfe000000 move.l     #$fe000000, d3
004bb2: 243c41b2f905 move.l     #$41b2f905, d2
004bb8: 4ce800030008 movem.l    $8(a0), d0-d1
004bbe: 4e4f         trap       #$f
004bc0: 001248d7     ori.b      #$d7, (a2)
004bc4: 00034a97     ori.b      #$97, d3
004bc8: 6f12         ble.b      $4bdc
004bca: 7600         moveq      #$0, d3
004bcc: 243c3fe00000 move.l     #$3fe00000, d2
004bd2: 4cd70003     movem.l    (a7), d0-d1
004bd6: 4e4f         trap       #$f
004bd8: 000e         .dc.w      $000e
004bda: 6010         bra.b      $4bec
004bdc: 7600         moveq      #$0, d3
004bde: 243c3fe00000 move.l     #$3fe00000, d2
004be4: 4cd70003     movem.l    (a7), d0-d1
004be8: 4e4f         trap       #$f
004bea: 00104e4f     ori.b      #$4f, (a0)
004bee: 0024206f     ori.b      #$6f, -(a4)
004bf2: 000c         .dc.w      $000c
004bf4: 21400004     move.l     d0, $4(a0)
004bf8: 508f         addq.l     #$8, a7
004bfa: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
004c00: 4e5d         unlk       a5
004c02: 4e75         rts        
004c04: 4e550000     link.w     a5, #$0
004c08: 48e78080     movem.l    d0/a0, -(a7)
004c0c: 2057         movea.l    (a7), a0
004c0e: 7000         moveq      #$0, d0
004c10: 21400004     move.l     d0, $4(a0)
004c14: 2057         movea.l    (a7), a0
004c16: 2080         move.l     d0, (a0)
004c18: 4ced0100fffc movem.l    -$4(a5), a0
004c1e: 4e5d         unlk       a5
004c20: 4e75         rts        
004c22: 4e550000     link.w     a5, #$0
004c26: 48e7c080     movem.l    d0-d1/a0, -(a7)
004c2a: 2057         movea.l    (a7), a0
004c2c: 2010         move.l     (a0), d0
004c2e: 2057         movea.l    (a7), a0
004c30: d0a80008     add.l      $8(a0), d0
004c34: 6d0e         blt.b      $4c44
004c36: 2057         movea.l    (a7), a0
004c38: 2010         move.l     (a0), d0
004c3a: 2057         movea.l    (a7), a0
004c3c: d0a80008     add.l      $8(a0), d0
004c40: e280         asr.l      #$1, d0
004c42: 6010         bra.b      $4c54
004c44: 2057         movea.l    (a7), a0
004c46: 2010         move.l     (a0), d0
004c48: 2057         movea.l    (a7), a0
004c4a: d0a80008     add.l      $8(a0), d0
004c4e: 4480         neg.l      d0
004c50: e280         asr.l      #$1, d0
004c52: 4480         neg.l      d0
004c54: 206f0004     movea.l    $4(a7), a0
004c58: 2080         move.l     d0, (a0)
004c5a: 2057         movea.l    (a7), a0
004c5c: 20280004     move.l     $4(a0), d0
004c60: 2057         movea.l    (a7), a0
004c62: d0a8000c     add.l      $c(a0), d0
004c66: 6d10         blt.b      $4c78
004c68: 2057         movea.l    (a7), a0
004c6a: 20280004     move.l     $4(a0), d0
004c6e: 2057         movea.l    (a7), a0
004c70: d0a8000c     add.l      $c(a0), d0
004c74: e280         asr.l      #$1, d0
004c76: 6012         bra.b      $4c8a
004c78: 2057         movea.l    (a7), a0
004c7a: 20280004     move.l     $4(a0), d0
004c7e: 2057         movea.l    (a7), a0
004c80: d0a8000c     add.l      $c(a0), d0
004c84: 4480         neg.l      d0
004c86: e280         asr.l      #$1, d0
004c88: 4480         neg.l      d0
004c8a: 206f0004     movea.l    $4(a7), a0
004c8e: 21400004     move.l     d0, $4(a0)
004c92: 4ced0100fffc movem.l    -$4(a5), a0
004c98: 4e5d         unlk       a5
004c9a: 4e75         rts        
004c9c: 4e550000     link.w     a5, #$0
004ca0: 48e7c080     movem.l    d0-d1/a0, -(a7)
004ca4: 4feffff0     lea.l      -$10(a7), a7
004ca8: 206f0010     movea.l    $10(a7), a0
004cac: 2f500008     move.l     (a0), $8(a7)
004cb0: 206f0010     movea.l    $10(a7), a0
004cb4: 2f68000c000c move.l     $c(a0), $c(a7)
004cba: 206f0010     movea.l    $10(a7), a0
004cbe: 2ea80008     move.l     $8(a0), (a7)
004cc2: 206f0010     movea.l    $10(a7), a0
004cc6: 2f6800040004 move.l     $4(a0), $4(a7)
004ccc: 2f2f0014     move.l     $14(a7), -(a7)
004cd0: 486f0004     pea.l      $4(a7)
004cd4: 206f0018     movea.l    $18(a7), a0
004cd8: 48680008     pea.l      $8(a0)
004cdc: 41ef0014     lea.l      $14(a7), a0
004ce0: 2208         move.l     a0, d1
004ce2: 202f001c     move.l     $1c(a7), d0
004ce6: 61000dfa     bsr.w      $5ae2
004cea: 4fef000c     lea.l      $c(a7), a7
004cee: 4fef0010     lea.l      $10(a7), a7
004cf2: 4ced0100fffc movem.l    -$4(a5), a0
004cf8: 4e5d         unlk       a5
004cfa: 4e75         rts        
004cfc: 4e550000     link.w     a5, #$0
004d00: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004d04: 558f         subq.l     #$2, a7
004d06: 422f0001     clr.b      $1(a7)
004d0a: 206f0006     movea.l    $6(a7), a0
004d0e: 226f0002     movea.l    $2(a7), a1
004d12: 2011         move.l     (a1), d0
004d14: b090         cmp.l      (a0), d0
004d16: 6d3c         blt.b      $4d54
004d18: 206f0006     movea.l    $6(a7), a0
004d1c: 226f0002     movea.l    $2(a7), a1
004d20: 20290004     move.l     $4(a1), d0
004d24: b0a80004     cmp.l      $4(a0), d0
004d28: 6d2a         blt.b      $4d54
004d2a: 206f0006     movea.l    $6(a7), a0
004d2e: 226f0002     movea.l    $2(a7), a1
004d32: 20290008     move.l     $8(a1), d0
004d36: b0a80008     cmp.l      $8(a0), d0
004d3a: 6e18         bgt.b      $4d54
004d3c: 206f0006     movea.l    $6(a7), a0
004d40: 226f0002     movea.l    $2(a7), a1
004d44: 2029000c     move.l     $c(a1), d0
004d48: b0a8000c     cmp.l      $c(a0), d0
004d4c: 6e06         bgt.b      $4d54
004d4e: 08ef00010001 bset.b     #$1, $1(a7)
004d54: 206f0002     movea.l    $2(a7), a0
004d58: 226f0006     movea.l    $6(a7), a1
004d5c: 2011         move.l     (a1), d0
004d5e: b090         cmp.l      (a0), d0
004d60: 6d3c         blt.b      $4d9e
004d62: 206f0002     movea.l    $2(a7), a0
004d66: 226f0006     movea.l    $6(a7), a1
004d6a: 20290004     move.l     $4(a1), d0
004d6e: b0a80004     cmp.l      $4(a0), d0
004d72: 6d2a         blt.b      $4d9e
004d74: 206f0002     movea.l    $2(a7), a0
004d78: 226f0006     movea.l    $6(a7), a1
004d7c: 20290008     move.l     $8(a1), d0
004d80: b0a80008     cmp.l      $8(a0), d0
004d84: 6e18         bgt.b      $4d9e
004d86: 206f0002     movea.l    $2(a7), a0
004d8a: 226f0006     movea.l    $6(a7), a1
004d8e: 2029000c     move.l     $c(a1), d0
004d92: b0a8000c     cmp.l      $c(a0), d0
004d96: 6e06         bgt.b      $4d9e
004d98: 08ef00000001 bset.b     #$0, $1(a7)
004d9e: 206f0002     movea.l    $2(a7), a0
004da2: 226f0006     movea.l    $6(a7), a1
004da6: 20290008     move.l     $8(a1), d0
004daa: b090         cmp.l      (a0), d0
004dac: 6d3c         blt.b      $4dea
004dae: 206f0002     movea.l    $2(a7), a0
004db2: 226f0006     movea.l    $6(a7), a1
004db6: 2011         move.l     (a1), d0
004db8: b0a80008     cmp.l      $8(a0), d0
004dbc: 6e2c         bgt.b      $4dea
004dbe: 206f0002     movea.l    $2(a7), a0
004dc2: 226f0006     movea.l    $6(a7), a1
004dc6: 2029000c     move.l     $c(a1), d0
004dca: b0a80004     cmp.l      $4(a0), d0
004dce: 6d1a         blt.b      $4dea
004dd0: 206f0002     movea.l    $2(a7), a0
004dd4: 226f0006     movea.l    $6(a7), a1
004dd8: 20290004     move.l     $4(a1), d0
004ddc: b0a8000c     cmp.l      $c(a0), d0
004de0: 6e08         bgt.b      $4dea
004de2: 08ef00020001 bset.b     #$2, $1(a7)
004de8: 6006         bra.b      $4df0
004dea: 08ef00030001 bset.b     #$3, $1(a7)
004df0: 102f0001     move.b     $1(a7), d0
004df4: 548f         addq.l     #$2, a7
004df6: 4ced0300fff8 movem.l    -$8(a5), a0-a1
004dfc: 4e5d         unlk       a5
004dfe: 4e75         rts        
004e00: 4e550000     link.w     a5, #$0
004e04: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004e08: 2057         movea.l    (a7), a0
004e0a: 226f0004     movea.l    $4(a7), a1
004e0e: 2011         move.l     (a1), d0
004e10: b090         cmp.l      (a0), d0
004e12: 6c04         bge.b      $4e18
004e14: 2057         movea.l    (a7), a0
004e16: 601e         bra.b      $4e36
004e18: 2057         movea.l    (a7), a0
004e1a: 226f0004     movea.l    $4(a7), a1
004e1e: 2011         move.l     (a1), d0
004e20: b0a80008     cmp.l      $8(a0), d0
004e24: 6f0c         ble.b      $4e32
004e26: 2057         movea.l    (a7), a0
004e28: 226f0018     movea.l    $18(a7), a1
004e2c: 22a80008     move.l     $8(a0), (a1)
004e30: 600a         bra.b      $4e3c
004e32: 206f0004     movea.l    $4(a7), a0
004e36: 226f0018     movea.l    $18(a7), a1
004e3a: 2290         move.l     (a0), (a1)
004e3c: 2057         movea.l    (a7), a0
004e3e: 226f0004     movea.l    $4(a7), a1
004e42: 20290004     move.l     $4(a1), d0
004e46: b0a80004     cmp.l      $4(a0), d0
004e4a: 6c04         bge.b      $4e50
004e4c: 2057         movea.l    (a7), a0
004e4e: 6022         bra.b      $4e72
004e50: 2057         movea.l    (a7), a0
004e52: 226f0004     movea.l    $4(a7), a1
004e56: 20290004     move.l     $4(a1), d0
004e5a: b0a8000c     cmp.l      $c(a0), d0
004e5e: 6f0e         ble.b      $4e6e
004e60: 2057         movea.l    (a7), a0
004e62: 226f0018     movea.l    $18(a7), a1
004e66: 2368000c0004 move.l     $c(a0), $4(a1)
004e6c: 600e         bra.b      $4e7c
004e6e: 206f0004     movea.l    $4(a7), a0
004e72: 226f0018     movea.l    $18(a7), a1
004e76: 236800040004 move.l     $4(a0), $4(a1)
004e7c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
004e82: 4e5d         unlk       a5
004e84: 4e75         rts        
004e86: 4e550000     link.w     a5, #$0
004e8a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004e8e: 2057         movea.l    (a7), a0
004e90: 226f0004     movea.l    $4(a7), a1
004e94: 2011         move.l     (a1), d0
004e96: b090         cmp.l      (a0), d0
004e98: 6c06         bge.b      $4ea0
004e9a: 206f0004     movea.l    $4(a7), a0
004e9e: 6026         bra.b      $4ec6
004ea0: 2057         movea.l    (a7), a0
004ea2: 226f0004     movea.l    $4(a7), a1
004ea6: 2011         move.l     (a1), d0
004ea8: b0a80008     cmp.l      $8(a0), d0
004eac: 6f16         ble.b      $4ec4
004eae: 2057         movea.l    (a7), a0
004eb0: 226f0018     movea.l    $18(a7), a1
004eb4: 2290         move.l     (a0), (a1)
004eb6: 206f0004     movea.l    $4(a7), a0
004eba: 226f0018     movea.l    $18(a7), a1
004ebe: 23500008     move.l     (a0), $8(a1)
004ec2: 6014         bra.b      $4ed8
004ec4: 2057         movea.l    (a7), a0
004ec6: 226f0018     movea.l    $18(a7), a1
004eca: 2290         move.l     (a0), (a1)
004ecc: 2057         movea.l    (a7), a0
004ece: 226f0018     movea.l    $18(a7), a1
004ed2: 236800080008 move.l     $8(a0), $8(a1)
004ed8: 2057         movea.l    (a7), a0
004eda: 226f0004     movea.l    $4(a7), a1
004ede: 20290004     move.l     $4(a1), d0
004ee2: b0a80004     cmp.l      $4(a0), d0
004ee6: 6c06         bge.b      $4eee
004ee8: 206f0004     movea.l    $4(a7), a0
004eec: 602e         bra.b      $4f1c
004eee: 2057         movea.l    (a7), a0
004ef0: 226f0004     movea.l    $4(a7), a1
004ef4: 20290004     move.l     $4(a1), d0
004ef8: b0a8000c     cmp.l      $c(a0), d0
004efc: 6f1c         ble.b      $4f1a
004efe: 2057         movea.l    (a7), a0
004f00: 226f0018     movea.l    $18(a7), a1
004f04: 236800040004 move.l     $4(a0), $4(a1)
004f0a: 206f0004     movea.l    $4(a7), a0
004f0e: 226f0018     movea.l    $18(a7), a1
004f12: 23680004000c move.l     $4(a0), $c(a1)
004f18: 6018         bra.b      $4f32
004f1a: 2057         movea.l    (a7), a0
004f1c: 226f0018     movea.l    $18(a7), a1
004f20: 236800040004 move.l     $4(a0), $4(a1)
004f26: 2057         movea.l    (a7), a0
004f28: 226f0018     movea.l    $18(a7), a1
004f2c: 2368000c000c move.l     $c(a0), $c(a1)
004f32: 4ced0300fff8 movem.l    -$8(a5), a0-a1
004f38: 4e5d         unlk       a5
004f3a: 4e75         rts        
004f3c: 4e550000     link.w     a5, #$0
004f40: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
004f44: 4fefffea     lea.l      -$16(a7), a7
004f48: 206f0016     movea.l    $16(a7), a0
004f4c: 226f001a     movea.l    $1a(a7), a1
004f50: 2011         move.l     (a1), d0
004f52: b090         cmp.l      (a0), d0
004f54: 6f38         ble.b      $4f8e
004f56: 206f0016     movea.l    $16(a7), a0
004f5a: 226f001a     movea.l    $1a(a7), a1
004f5e: 20290004     move.l     $4(a1), d0
004f62: b0a80004     cmp.l      $4(a0), d0
004f66: 6f26         ble.b      $4f8e
004f68: 206f0016     movea.l    $16(a7), a0
004f6c: 226f001a     movea.l    $1a(a7), a1
004f70: 2011         move.l     (a1), d0
004f72: b0a80008     cmp.l      $8(a0), d0
004f76: 6c16         bge.b      $4f8e
004f78: 206f0016     movea.l    $16(a7), a0
004f7c: 226f001a     movea.l    $1a(a7), a1
004f80: 20290004     move.l     $4(a1), d0
004f84: b0a8000c     cmp.l      $c(a0), d0
004f88: 6c04         bge.b      $4f8e
004f8a: 7001         moveq      #$1, d0
004f8c: 6002         bra.b      $4f90
004f8e: 7000         moveq      #$0, d0
004f90: 1f400003     move.b     d0, $3(a7)
004f94: 206f0016     movea.l    $16(a7), a0
004f98: 226f001a     movea.l    $1a(a7), a1
004f9c: 20290008     move.l     $8(a1), d0
004fa0: b090         cmp.l      (a0), d0
004fa2: 6f3a         ble.b      $4fde
004fa4: 206f0016     movea.l    $16(a7), a0
004fa8: 226f001a     movea.l    $1a(a7), a1
004fac: 2029000c     move.l     $c(a1), d0
004fb0: b0a80004     cmp.l      $4(a0), d0
004fb4: 6f28         ble.b      $4fde
004fb6: 206f0016     movea.l    $16(a7), a0
004fba: 226f001a     movea.l    $1a(a7), a1
004fbe: 20290008     move.l     $8(a1), d0
004fc2: b0a80008     cmp.l      $8(a0), d0
004fc6: 6c16         bge.b      $4fde
004fc8: 206f0016     movea.l    $16(a7), a0
004fcc: 226f001a     movea.l    $1a(a7), a1
004fd0: 2029000c     move.l     $c(a1), d0
004fd4: b0a8000c     cmp.l      $c(a0), d0
004fd8: 6c04         bge.b      $4fde
004fda: 7001         moveq      #$1, d0
004fdc: 6002         bra.b      $4fe0
004fde: 7000         moveq      #$0, d0
004fe0: 1f400002     move.b     d0, $2(a7)
004fe4: 206f0016     movea.l    $16(a7), a0
004fe8: 226f001a     movea.l    $1a(a7), a1
004fec: 20290010     move.l     $10(a1), d0
004ff0: b090         cmp.l      (a0), d0
004ff2: 6f3a         ble.b      $502e
004ff4: 206f0016     movea.l    $16(a7), a0
004ff8: 226f001a     movea.l    $1a(a7), a1
004ffc: 20290014     move.l     $14(a1), d0
005000: b0a80004     cmp.l      $4(a0), d0
005004: 6f28         ble.b      $502e
005006: 206f0016     movea.l    $16(a7), a0
00500a: 226f001a     movea.l    $1a(a7), a1
00500e: 20290010     move.l     $10(a1), d0
005012: b0a80008     cmp.l      $8(a0), d0
005016: 6c16         bge.b      $502e
005018: 206f0016     movea.l    $16(a7), a0
00501c: 226f001a     movea.l    $1a(a7), a1
005020: 20290014     move.l     $14(a1), d0
005024: b0a8000c     cmp.l      $c(a0), d0
005028: 6c04         bge.b      $502e
00502a: 7001         moveq      #$1, d0
00502c: 6002         bra.b      $5030
00502e: 7000         moveq      #$0, d0
005030: 1f400001     move.b     d0, $1(a7)
005034: 206f0016     movea.l    $16(a7), a0
005038: 226f001a     movea.l    $1a(a7), a1
00503c: 20290018     move.l     $18(a1), d0
005040: b090         cmp.l      (a0), d0
005042: 6f3a         ble.b      $507e
005044: 206f0016     movea.l    $16(a7), a0
005048: 226f001a     movea.l    $1a(a7), a1
00504c: 2029001c     move.l     $1c(a1), d0
005050: b0a80004     cmp.l      $4(a0), d0
005054: 6f28         ble.b      $507e
005056: 206f0016     movea.l    $16(a7), a0
00505a: 226f001a     movea.l    $1a(a7), a1
00505e: 20290018     move.l     $18(a1), d0
005062: b0a80008     cmp.l      $8(a0), d0
005066: 6c16         bge.b      $507e
005068: 206f0016     movea.l    $16(a7), a0
00506c: 226f001a     movea.l    $1a(a7), a1
005070: 2029001c     move.l     $1c(a1), d0
005074: b0a8000c     cmp.l      $c(a0), d0
005078: 6c04         bge.b      $507e
00507a: 7001         moveq      #$1, d0
00507c: 6002         bra.b      $5080
00507e: 7000         moveq      #$0, d0
005080: 1e80         move.b     d0, (a7)
005082: 4a2f0003     tst.b      $3(a7)
005086: 6716         beq.b      $509e
005088: 4a2f0002     tst.b      $2(a7)
00508c: 6710         beq.b      $509e
00508e: 4a2f0001     tst.b      $1(a7)
005092: 670a         beq.b      $509e
005094: 4a17         tst.b      (a7)
005096: 6706         beq.b      $509e
005098: 7005         moveq      #$5, d0
00509a: 600000fc     bra.w      $5198
00509e: 4a2f0003     tst.b      $3(a7)
0050a2: 660000ee     bne.w      $5192
0050a6: 4a2f0002     tst.b      $2(a7)
0050aa: 660000e6     bne.w      $5192
0050ae: 4a2f0001     tst.b      $1(a7)
0050b2: 660000de     bne.w      $5192
0050b6: 4a17         tst.b      (a7)
0050b8: 660000d8     bne.w      $5192
0050bc: 206f0016     movea.l    $16(a7), a0
0050c0: 2f500004     move.l     (a0), $4(a7)
0050c4: 2f6800040008 move.l     $4(a0), $8(a7)
0050ca: 206f0016     movea.l    $16(a7), a0
0050ce: 2f50000c     move.l     (a0), $c(a7)
0050d2: 206f0016     movea.l    $16(a7), a0
0050d6: 2f68000c0010 move.l     $c(a0), $10(a7)
0050dc: 222f001a     move.l     $1a(a7), d1
0050e0: 41ef0004     lea.l      $4(a7), a0
0050e4: 2008         move.l     a0, d0
0050e6: 61002082     bsr.w      $716a
0050ea: 1f400015     move.b     d0, $15(a7)
0050ee: 102f0015     move.b     $15(a7), d0
0050f2: 4880         ext.w      d0
0050f4: 08000001     btst.b     #$1, d0
0050f8: 670a         beq.b      $5104
0050fa: 0c2f000e0015 cmpi.b     #$e, $15(a7)
005100: 66000090     bne.w      $5192
005104: 206f0016     movea.l    $16(a7), a0
005108: 2f6800080004 move.l     $8(a0), $4(a7)
00510e: 206f0016     movea.l    $16(a7), a0
005112: 2f680008000c move.l     $8(a0), $c(a7)
005118: 222f001a     move.l     $1a(a7), d1
00511c: 41ef0004     lea.l      $4(a7), a0
005120: 2008         move.l     a0, d0
005122: 61002046     bsr.w      $716a
005126: 1f400014     move.b     d0, $14(a7)
00512a: 102f0014     move.b     $14(a7), d0
00512e: 4880         ext.w      d0
005130: 08000001     btst.b     #$1, d0
005134: 6708         beq.b      $513e
005136: 0c2f000e0014 cmpi.b     #$e, $14(a7)
00513c: 6654         bne.b      $5192
00513e: 0c2f000e0015 cmpi.b     #$e, $15(a7)
005144: 660c         bne.b      $5152
005146: 0c2f000e0014 cmpi.b     #$e, $14(a7)
00514c: 6604         bne.b      $5152
00514e: 7006         moveq      #$6, d0
005150: 6046         bra.b      $5198
005152: 0c2f000e0015 cmpi.b     #$e, $15(a7)
005158: 6738         beq.b      $5192
00515a: 0c2f000e0014 cmpi.b     #$e, $14(a7)
005160: 6730         beq.b      $5192
005162: 206f0016     movea.l    $16(a7), a0
005166: 2f500004     move.l     (a0), $4(a7)
00516a: 206f0016     movea.l    $16(a7), a0
00516e: 2f68000c0008 move.l     $c(a0), $8(a7)
005174: 222f001a     move.l     $1a(a7), d1
005178: 41ef0004     lea.l      $4(a7), a0
00517c: 2008         move.l     a0, d0
00517e: 61001fea     bsr.w      $716a
005182: 1f400014     move.b     d0, $14(a7)
005186: 102f0014     move.b     $14(a7), d0
00518a: 4880         ext.w      d0
00518c: 08000001     btst.b     #$1, d0
005190: 6704         beq.b      $5196
005192: 7004         moveq      #$4, d0
005194: 6002         bra.b      $5198
005196: 7008         moveq      #$8, d0
005198: 4fef0016     lea.l      $16(a7), a7
00519c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0051a2: 4e5d         unlk       a5
0051a4: 4e75         rts        
0051a6: 4e550000     link.w     a5, #$0
0051aa: 48e7c080     movem.l    d0-d1/a0, -(a7)
0051ae: 598f         subq.l     #$4, a7
0051b0: 2eaf0008     move.l     $8(a7), (a7)
0051b4: 206f0004     movea.l    $4(a7), a0
0051b8: 2010         move.l     (a0), d0
0051ba: 9097         sub.l      (a7), d0
0051bc: 206f0018     movea.l    $18(a7), a0
0051c0: 2080         move.l     d0, (a0)
0051c2: 206f0004     movea.l    $4(a7), a0
0051c6: 20280004     move.l     $4(a0), d0
0051ca: 9097         sub.l      (a7), d0
0051cc: 206f0018     movea.l    $18(a7), a0
0051d0: 21400004     move.l     d0, $4(a0)
0051d4: 206f0004     movea.l    $4(a7), a0
0051d8: 20280008     move.l     $8(a0), d0
0051dc: d097         add.l      (a7), d0
0051de: 206f0018     movea.l    $18(a7), a0
0051e2: 21400008     move.l     d0, $8(a0)
0051e6: 206f0004     movea.l    $4(a7), a0
0051ea: 2028000c     move.l     $c(a0), d0
0051ee: d097         add.l      (a7), d0
0051f0: 206f0018     movea.l    $18(a7), a0
0051f4: 2140000c     move.l     d0, $c(a0)
0051f8: 588f         addq.l     #$4, a7
0051fa: 4ced0100fffc movem.l    -$4(a5), a0
005200: 4e5d         unlk       a5
005202: 4e75         rts        
005204: 4e550000     link.w     a5, #$0
005208: 48e78080     movem.l    d0/a0, -(a7)
00520c: 2057         movea.l    (a7), a0
00520e: 2010         move.l     (a0), d0
005210: 4ced0100fffc movem.l    -$4(a5), a0
005216: 4e5d         unlk       a5
005218: 4e75         rts        
00521a: 4e550000     link.w     a5, #$0
00521e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005222: 2057         movea.l    (a7), a0
005224: 226f0004     movea.l    $4(a7), a1
005228: 2290         move.l     (a0), (a1)
00522a: 2057         movea.l    (a7), a0
00522c: 226f0018     movea.l    $18(a7), a1
005230: 22a80004     move.l     $4(a0), (a1)
005234: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00523a: 4e5d         unlk       a5
00523c: 4e75         rts        
00523e: 4e550000     link.w     a5, #$0
005242: 48e78080     movem.l    d0/a0, -(a7)
005246: 2057         movea.l    (a7), a0
005248: 20280004     move.l     $4(a0), d0
00524c: 4ced0100fffc movem.l    -$4(a5), a0
005252: 4e5d         unlk       a5
005254: 4e75         rts        
005256: 4e550000     link.w     a5, #$0
00525a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00525e: 2057         movea.l    (a7), a0
005260: 4aa80004     tst.l      $4(a0)
005264: 6c0a         bge.b      $5270
005266: 2057         movea.l    (a7), a0
005268: 20280004     move.l     $4(a0), d0
00526c: 4480         neg.l      d0
00526e: 6006         bra.b      $5276
005270: 2057         movea.l    (a7), a0
005272: 20280004     move.l     $4(a0), d0
005276: 2200         move.l     d0, d1
005278: 2057         movea.l    (a7), a0
00527a: 4a90         tst.l      (a0)
00527c: 6c08         bge.b      $5286
00527e: 2057         movea.l    (a7), a0
005280: 2010         move.l     (a0), d0
005282: 4480         neg.l      d0
005284: 6004         bra.b      $528a
005286: 2057         movea.l    (a7), a0
005288: 2010         move.l     (a0), d0
00528a: b280         cmp.l      d0, d1
00528c: 6c14         bge.b      $52a2
00528e: 2057         movea.l    (a7), a0
005290: 4a90         tst.l      (a0)
005292: 6c08         bge.b      $529c
005294: 2057         movea.l    (a7), a0
005296: 2010         move.l     (a0), d0
005298: 4480         neg.l      d0
00529a: 601c         bra.b      $52b8
00529c: 2057         movea.l    (a7), a0
00529e: 2010         move.l     (a0), d0
0052a0: 6016         bra.b      $52b8
0052a2: 2057         movea.l    (a7), a0
0052a4: 4aa80004     tst.l      $4(a0)
0052a8: 6c08         bge.b      $52b2
0052aa: 2057         movea.l    (a7), a0
0052ac: 20280004     move.l     $4(a0), d0
0052b0: 60e6         bra.b      $5298
0052b2: 2057         movea.l    (a7), a0
0052b4: 20280004     move.l     $4(a0), d0
0052b8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0052be: 4e5d         unlk       a5
0052c0: 4e75         rts        
0052c2: 4e550000     link.w     a5, #$0
0052c6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0052ca: 2057         movea.l    (a7), a0
0052cc: 22280004     move.l     $4(a0), d1
0052d0: 2057         movea.l    (a7), a0
0052d2: 2010         move.l     (a0), d0
0052d4: 610042d4     bsr.w      $95aa
0052d8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0052de: 4e5d         unlk       a5
0052e0: 4e75         rts        
0052e2: 4e550000     link.w     a5, #$0
0052e6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0052ea: 598f         subq.l     #$4, a7
0052ec: 206f0004     movea.l    $4(a7), a0
0052f0: 2e90         move.l     (a0), (a7)
0052f2: 206f0004     movea.l    $4(a7), a0
0052f6: 226f0008     movea.l    $8(a7), a1
0052fa: 22a80004     move.l     $4(a0), (a1)
0052fe: 206f0008     movea.l    $8(a7), a0
005302: 2017         move.l     (a7), d0
005304: 4480         neg.l      d0
005306: 21400004     move.l     d0, $4(a0)
00530a: 588f         addq.l     #$4, a7
00530c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005312: 4e5d         unlk       a5
005314: 4e75         rts        
005316: 4e550000     link.w     a5, #$0
00531a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00531e: 2f2f0004     move.l     $4(a7), -(a7)
005322: 206f0004     movea.l    $4(a7), a0
005326: 2f280004     move.l     $4(a0), -(a7)
00532a: 206f0008     movea.l    $8(a7), a0
00532e: 2f280004     move.l     $4(a0), -(a7)
005332: 206f000c     movea.l    $c(a7), a0
005336: 2210         move.l     (a0), d1
005338: 206f000c     movea.l    $c(a7), a0
00533c: 2010         move.l     (a0), d0
00533e: 61004302     bsr.w      $9642
005342: 4fef000c     lea.l      $c(a7), a7
005346: 4ced0100fffc movem.l    -$4(a5), a0
00534c: 4e5d         unlk       a5
00534e: 4e75         rts        
005350: 4e550000     link.w     a5, #$0
005354: 48e7c080     movem.l    d0-d1/a0, -(a7)
005358: 2057         movea.l    (a7), a0
00535a: 22280004     move.l     $4(a0), d1
00535e: 2057         movea.l    (a7), a0
005360: 2010         move.l     (a0), d0
005362: 61003f3a     bsr.w      $929e
005366: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00536c: 4e5d         unlk       a5
00536e: 4e75         rts        
005370: 4e550000     link.w     a5, #$0
005374: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005378: 558f         subq.l     #$2, a7
00537a: 422f0001     clr.b      $1(a7)
00537e: 206f0006     movea.l    $6(a7), a0
005382: 226f0002     movea.l    $2(a7), a1
005386: 2011         move.l     (a1), d0
005388: b090         cmp.l      (a0), d0
00538a: 6f3e         ble.b      $53ca
00538c: 206f0006     movea.l    $6(a7), a0
005390: 226f0002     movea.l    $2(a7), a1
005394: 20290004     move.l     $4(a1), d0
005398: b0a80004     cmp.l      $4(a0), d0
00539c: 6f2c         ble.b      $53ca
00539e: 206f0006     movea.l    $6(a7), a0
0053a2: 226f0002     movea.l    $2(a7), a1
0053a6: 2011         move.l     (a1), d0
0053a8: b0a80008     cmp.l      $8(a0), d0
0053ac: 6c1c         bge.b      $53ca
0053ae: 206f0006     movea.l    $6(a7), a0
0053b2: 226f0002     movea.l    $2(a7), a1
0053b6: 20290004     move.l     $4(a1), d0
0053ba: b0a8000c     cmp.l      $c(a0), d0
0053be: 6c0a         bge.b      $53ca
0053c0: 08ef00010001 bset.b     #$1, $1(a7)
0053c6: 600000f8     bra.w      $54c0
0053ca: 206f0006     movea.l    $6(a7), a0
0053ce: 226f0002     movea.l    $2(a7), a1
0053d2: 2011         move.l     (a1), d0
0053d4: b090         cmp.l      (a0), d0
0053d6: 6630         bne.b      $5408
0053d8: 206f0002     movea.l    $2(a7), a0
0053dc: 226f0006     movea.l    $6(a7), a1
0053e0: 20290004     move.l     $4(a1), d0
0053e4: b0a80004     cmp.l      $4(a0), d0
0053e8: 6e1e         bgt.b      $5408
0053ea: 206f0002     movea.l    $2(a7), a0
0053ee: 226f0006     movea.l    $6(a7), a1
0053f2: 2029000c     move.l     $c(a1), d0
0053f6: b0a80004     cmp.l      $4(a0), d0
0053fa: 6d0c         blt.b      $5408
0053fc: 08ef00020001 bset.b     #$2, $1(a7)
005402: 08ef00030001 bset.b     #$3, $1(a7)
005408: 206f0006     movea.l    $6(a7), a0
00540c: 226f0002     movea.l    $2(a7), a1
005410: 20290004     move.l     $4(a1), d0
005414: b0a8000c     cmp.l      $c(a0), d0
005418: 662a         bne.b      $5444
00541a: 206f0002     movea.l    $2(a7), a0
00541e: 226f0006     movea.l    $6(a7), a1
005422: 2011         move.l     (a1), d0
005424: b090         cmp.l      (a0), d0
005426: 6e1c         bgt.b      $5444
005428: 206f0002     movea.l    $2(a7), a0
00542c: 226f0006     movea.l    $6(a7), a1
005430: 20290008     move.l     $8(a1), d0
005434: b090         cmp.l      (a0), d0
005436: 6d0c         blt.b      $5444
005438: 08ef00020001 bset.b     #$2, $1(a7)
00543e: 08ef00040001 bset.b     #$4, $1(a7)
005444: 206f0006     movea.l    $6(a7), a0
005448: 226f0002     movea.l    $2(a7), a1
00544c: 2011         move.l     (a1), d0
00544e: b0a80008     cmp.l      $8(a0), d0
005452: 6630         bne.b      $5484
005454: 206f0002     movea.l    $2(a7), a0
005458: 226f0006     movea.l    $6(a7), a1
00545c: 20290004     move.l     $4(a1), d0
005460: b0a80004     cmp.l      $4(a0), d0
005464: 6e1e         bgt.b      $5484
005466: 206f0002     movea.l    $2(a7), a0
00546a: 226f0006     movea.l    $6(a7), a1
00546e: 2029000c     move.l     $c(a1), d0
005472: b0a80004     cmp.l      $4(a0), d0
005476: 6d0c         blt.b      $5484
005478: 08ef00020001 bset.b     #$2, $1(a7)
00547e: 08ef00050001 bset.b     #$5, $1(a7)
005484: 206f0006     movea.l    $6(a7), a0
005488: 226f0002     movea.l    $2(a7), a1
00548c: 20290004     move.l     $4(a1), d0
005490: b0a80004     cmp.l      $4(a0), d0
005494: 662a         bne.b      $54c0
005496: 206f0002     movea.l    $2(a7), a0
00549a: 226f0006     movea.l    $6(a7), a1
00549e: 2011         move.l     (a1), d0
0054a0: b090         cmp.l      (a0), d0
0054a2: 6e1c         bgt.b      $54c0
0054a4: 206f0002     movea.l    $2(a7), a0
0054a8: 226f0006     movea.l    $6(a7), a1
0054ac: 20290008     move.l     $8(a1), d0
0054b0: b090         cmp.l      (a0), d0
0054b2: 6d0c         blt.b      $54c0
0054b4: 08ef00020001 bset.b     #$2, $1(a7)
0054ba: 08ef00060001 bset.b     #$6, $1(a7)
0054c0: 4a2f0001     tst.b      $1(a7)
0054c4: 6606         bne.b      $54cc
0054c6: 1f7c00010001 move.b     #$1, $1(a7)
0054cc: 102f0001     move.b     $1(a7), d0
0054d0: 548f         addq.l     #$2, a7
0054d2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0054d8: 4e5d         unlk       a5
0054da: 4e75         rts        
0054dc: 4e550000     link.w     a5, #$0
0054e0: 48e7f080     movem.l    d0-d3/a0, -(a7)
0054e4: 518f         subq.l     #$8, a7
0054e6: 206f0008     movea.l    $8(a7), a0
0054ea: 2010         move.l     (a0), d0
0054ec: 4e4f         trap       #$f
0054ee: 00204cef     ori.b      #$ef, -(a0)
0054f2: 000c         .dc.w      $000c
0054f4: 00244e4f     ori.b      #$4f, -(a4)
0054f8: 001248d7     ori.b      #$d7, (a2)
0054fc: 00034a97     ori.b      #$97, d3
005500: 6f12         ble.b      $5514
005502: 7600         moveq      #$0, d3
005504: 243c3fe00000 move.l     #$3fe00000, d2
00550a: 4cd70003     movem.l    (a7), d0-d1
00550e: 4e4f         trap       #$f
005510: 000e         .dc.w      $000e
005512: 6010         bra.b      $5524
005514: 7600         moveq      #$0, d3
005516: 243c3fe00000 move.l     #$3fe00000, d2
00551c: 4cd70003     movem.l    (a7), d0-d1
005520: 4e4f         trap       #$f
005522: 00104e4f     ori.b      #$4f, (a0)
005526: 0024206f     ori.b      #$6f, -(a4)
00552a: 002c2080206f ori.b      #$80, $206f(a4)
005530: 0008         .dc.w      $0008
005532: 20280004     move.l     $4(a0), d0
005536: 4e4f         trap       #$f
005538: 00204cef     ori.b      #$ef, -(a0)
00553c: 000c         .dc.w      $000c
00553e: 00244e4f     ori.b      #$4f, -(a4)
005542: 001248d7     ori.b      #$d7, (a2)
005546: 00034a97     ori.b      #$97, d3
00554a: 6f12         ble.b      $555e
00554c: 7600         moveq      #$0, d3
00554e: 243c3fe00000 move.l     #$3fe00000, d2
005554: 4cd70003     movem.l    (a7), d0-d1
005558: 4e4f         trap       #$f
00555a: 000e         .dc.w      $000e
00555c: 6010         bra.b      $556e
00555e: 7600         moveq      #$0, d3
005560: 243c3fe00000 move.l     #$3fe00000, d2
005566: 4cd70003     movem.l    (a7), d0-d1
00556a: 4e4f         trap       #$f
00556c: 00104e4f     ori.b      #$4f, (a0)
005570: 0024206f     ori.b      #$6f, -(a4)
005574: 002c21400004 ori.b      #$40, $4(a4)
00557a: 508f         addq.l     #$8, a7
00557c: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
005582: 4e5d         unlk       a5
005584: 4e75         rts        
005586: 4e550000     link.w     a5, #$0
00558a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00558e: 2057         movea.l    (a7), a0
005590: 2010         move.l     (a0), d0
005592: 4c2f00000004 mulu.l     $4(a7), d0
005598: 206f0014     movea.l    $14(a7), a0
00559c: 2080         move.l     d0, (a0)
00559e: 2057         movea.l    (a7), a0
0055a0: 20280004     move.l     $4(a0), d0
0055a4: 4c2f00000004 mulu.l     $4(a7), d0
0055aa: 206f0014     movea.l    $14(a7), a0
0055ae: 21400004     move.l     d0, $4(a0)
0055b2: 4ced0100fffc movem.l    -$4(a5), a0
0055b8: 4e5d         unlk       a5
0055ba: 4e75         rts        
0055bc: 4e550000     link.w     a5, #$0
0055c0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0055c4: 2f2f0014     move.l     $14(a7), -(a7)
0055c8: 222f0008     move.l     $8(a7), d1
0055cc: 206f0004     movea.l    $4(a7), a0
0055d0: 2010         move.l     (a0), d0
0055d2: 6100400a     bsr.w      $95de
0055d6: 588f         addq.l     #$4, a7
0055d8: 206f0018     movea.l    $18(a7), a0
0055dc: 2080         move.l     d0, (a0)
0055de: 2f2f0014     move.l     $14(a7), -(a7)
0055e2: 222f0008     move.l     $8(a7), d1
0055e6: 206f0004     movea.l    $4(a7), a0
0055ea: 20280004     move.l     $4(a0), d0
0055ee: 61003fee     bsr.w      $95de
0055f2: 588f         addq.l     #$4, a7
0055f4: 206f0018     movea.l    $18(a7), a0
0055f8: 21400004     move.l     d0, $4(a0)
0055fc: 4ced0100fffc movem.l    -$4(a5), a0
005602: 4e5d         unlk       a5
005604: 4e75         rts        
005606: 4e550000     link.w     a5, #$0
00560a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00560e: 518f         subq.l     #$8, a7
005610: 206f000c     movea.l    $c(a7), a0
005614: 226f0008     movea.l    $8(a7), a1
005618: 2011         move.l     (a1), d0
00561a: b090         cmp.l      (a0), d0
00561c: 6d20         blt.b      $563e
00561e: 206f000c     movea.l    $c(a7), a0
005622: 226f0008     movea.l    $8(a7), a1
005626: 2011         move.l     (a1), d0
005628: b090         cmp.l      (a0), d0
00562a: 6628         bne.b      $5654
00562c: 206f000c     movea.l    $c(a7), a0
005630: 226f0008     movea.l    $8(a7), a1
005634: 20290004     move.l     $4(a1), d0
005638: b0a80004     cmp.l      $4(a0), d0
00563c: 6c16         bge.b      $5654
00563e: 206f000c     movea.l    $c(a7), a0
005642: 2e90         move.l     (a0), (a7)
005644: 2f6800040004 move.l     $4(a0), $4(a7)
00564a: 206f0020     movea.l    $20(a7), a0
00564e: 226f0008     movea.l    $8(a7), a1
005652: 6014         bra.b      $5668
005654: 206f0008     movea.l    $8(a7), a0
005658: 2e90         move.l     (a0), (a7)
00565a: 2f6800040004 move.l     $4(a0), $4(a7)
005660: 206f0020     movea.l    $20(a7), a0
005664: 226f000c     movea.l    $c(a7), a1
005668: 2091         move.l     (a1), (a0)
00566a: 216900040004 move.l     $4(a1), $4(a0)
005670: 206f0024     movea.l    $24(a7), a0
005674: 2097         move.l     (a7), (a0)
005676: 216f00040004 move.l     $4(a7), $4(a0)
00567c: 508f         addq.l     #$8, a7
00567e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005684: 4e5d         unlk       a5
005686: 4e75         rts        
005688: 4e550000     link.w     a5, #$0
00568c: 48e7c080     movem.l    d0-d1/a0, -(a7)
005690: 2057         movea.l    (a7), a0
005692: 2010         move.l     (a0), d0
005694: 206f0004     movea.l    $4(a7), a0
005698: d090         add.l      (a0), d0
00569a: 206f0014     movea.l    $14(a7), a0
00569e: 2080         move.l     d0, (a0)
0056a0: 2057         movea.l    (a7), a0
0056a2: 20280004     move.l     $4(a0), d0
0056a6: 206f0004     movea.l    $4(a7), a0
0056aa: d0a80004     add.l      $4(a0), d0
0056ae: 206f0014     movea.l    $14(a7), a0
0056b2: 21400004     move.l     d0, $4(a0)
0056b6: 4ced0100fffc movem.l    -$4(a5), a0
0056bc: 4e5d         unlk       a5
0056be: 4e75         rts        
0056c0: 4e550000     link.w     a5, #$0
0056c4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0056c8: 558f         subq.l     #$2, a7
0056ca: 422f0001     clr.b      $1(a7)
0056ce: 206f0006     movea.l    $6(a7), a0
0056d2: 226f0002     movea.l    $2(a7), a1
0056d6: 2011         move.l     (a1), d0
0056d8: b090         cmp.l      (a0), d0
0056da: 6608         bne.b      $56e4
0056dc: 08ef00000001 bset.b     #$0, $1(a7)
0056e2: 601c         bra.b      $5700
0056e4: 206f0006     movea.l    $6(a7), a0
0056e8: 226f0002     movea.l    $2(a7), a1
0056ec: 2011         move.l     (a1), d0
0056ee: b090         cmp.l      (a0), d0
0056f0: 6f08         ble.b      $56fa
0056f2: 08ef00020001 bset.b     #$2, $1(a7)
0056f8: 6006         bra.b      $5700
0056fa: 08ef00040001 bset.b     #$4, $1(a7)
005700: 206f0006     movea.l    $6(a7), a0
005704: 226f0002     movea.l    $2(a7), a1
005708: 20290004     move.l     $4(a1), d0
00570c: b0a80004     cmp.l      $4(a0), d0
005710: 6608         bne.b      $571a
005712: 08ef00010001 bset.b     #$1, $1(a7)
005718: 6020         bra.b      $573a
00571a: 206f0006     movea.l    $6(a7), a0
00571e: 226f0002     movea.l    $2(a7), a1
005722: 20290004     move.l     $4(a1), d0
005726: b0a80004     cmp.l      $4(a0), d0
00572a: 6f08         ble.b      $5734
00572c: 08ef00030001 bset.b     #$3, $1(a7)
005732: 6006         bra.b      $573a
005734: 08ef00050001 bset.b     #$5, $1(a7)
00573a: 102f0001     move.b     $1(a7), d0
00573e: 548f         addq.l     #$2, a7
005740: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005746: 4e5d         unlk       a5
005748: 4e75         rts        
00574a: 4e550000     link.w     a5, #$0
00574e: 48e7c080     movem.l    d0-d1/a0, -(a7)
005752: 518f         subq.l     #$8, a7
005754: 206f000c     movea.l    $c(a7), a0
005758: 4a90         tst.l      (a0)
00575a: 6c0a         bge.b      $5766
00575c: 206f000c     movea.l    $c(a7), a0
005760: 2010         move.l     (a0), d0
005762: 4480         neg.l      d0
005764: 6006         bra.b      $576c
005766: 206f000c     movea.l    $c(a7), a0
00576a: 2010         move.l     (a0), d0
00576c: 2f400004     move.l     d0, $4(a7)
005770: 206f000c     movea.l    $c(a7), a0
005774: 4aa80004     tst.l      $4(a0)
005778: 6c0c         bge.b      $5786
00577a: 206f000c     movea.l    $c(a7), a0
00577e: 20280004     move.l     $4(a0), d0
005782: 4480         neg.l      d0
005784: 6008         bra.b      $578e
005786: 206f000c     movea.l    $c(a7), a0
00578a: 20280004     move.l     $4(a0), d0
00578e: 2e80         move.l     d0, (a7)
005790: 206f0008     movea.l    $8(a7), a0
005794: 2010         move.l     (a0), d0
005796: 90af0004     sub.l      $4(a7), d0
00579a: 206f001c     movea.l    $1c(a7), a0
00579e: 2080         move.l     d0, (a0)
0057a0: 206f0008     movea.l    $8(a7), a0
0057a4: 20280004     move.l     $4(a0), d0
0057a8: 9097         sub.l      (a7), d0
0057aa: 206f001c     movea.l    $1c(a7), a0
0057ae: 21400004     move.l     d0, $4(a0)
0057b2: 206f0008     movea.l    $8(a7), a0
0057b6: 2010         move.l     (a0), d0
0057b8: d0af0004     add.l      $4(a7), d0
0057bc: 206f001c     movea.l    $1c(a7), a0
0057c0: 21400008     move.l     d0, $8(a0)
0057c4: 206f0008     movea.l    $8(a7), a0
0057c8: 20280004     move.l     $4(a0), d0
0057cc: d097         add.l      (a7), d0
0057ce: 206f001c     movea.l    $1c(a7), a0
0057d2: 2140000c     move.l     d0, $c(a0)
0057d6: 508f         addq.l     #$8, a7
0057d8: 4ced0100fffc movem.l    -$4(a5), a0
0057de: 4e5d         unlk       a5
0057e0: 4e75         rts        
0057e2: 4e550000     link.w     a5, #$0
0057e6: 48e7fcc0     movem.l    d0-d5/a0-a1, -(a7)
0057ea: 4feffff0     lea.l      -$10(a7), a7
0057ee: 206f0010     movea.l    $10(a7), a0
0057f2: 226f0014     movea.l    $14(a7), a1
0057f6: 2011         move.l     (a1), d0
0057f8: 9090         sub.l      (a0), d0
0057fa: 4e4f         trap       #$f
0057fc: 002048ef     ori.b      #$ef, -(a0)
005800: 00030008     ori.b      #$8, d3
005804: 206f0010     movea.l    $10(a7), a0
005808: 226f0014     movea.l    $14(a7), a1
00580c: 20290004     move.l     $4(a1), d0
005810: 90a80004     sub.l      $4(a0), d0
005814: 4e4f         trap       #$f
005816: 002048d7     ori.b      #$d7, -(a0)
00581a: 00034cd7     ori.b      #$d7, d3
00581e: 000c         .dc.w      $000c
005820: 4cd70003     movem.l    (a7), d0-d1
005824: 4e4f         trap       #$f
005826: 00122a01     ori.b      #$1, (a2)
00582a: 2800         move.l     d0, d4
00582c: 4cef000c0008 movem.l    $8(a7), d2-d3
005832: 4cef00030008 movem.l    $8(a7), d0-d1
005838: 4e4f         trap       #$f
00583a: 00122605     ori.b      #$5, (a2)
00583e: 2404         move.l     d4, d2
005840: 4e4f         trap       #$f
005842: 000e         .dc.w      $000e
005844: 610041d0     bsr.w      $9a16
005848: 4fef0010     lea.l      $10(a7), a7
00584c: 4ced033cffe8 movem.l    -$18(a5), d2-d5/a0-a1
005852: 4e5d         unlk       a5
005854: 4e75         rts        
005856: 4e550000     link.w     a5, #$0
00585a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00585e: 518f         subq.l     #$8, a7
005860: 206f0008     movea.l    $8(a7), a0
005864: 226f000c     movea.l    $c(a7), a1
005868: 2011         move.l     (a1), d0
00586a: 9090         sub.l      (a0), d0
00586c: 2f400004     move.l     d0, $4(a7)
005870: 206f0008     movea.l    $8(a7), a0
005874: 226f000c     movea.l    $c(a7), a1
005878: 20290004     move.l     $4(a1), d0
00587c: 90a80004     sub.l      $4(a0), d0
005880: 2e80         move.l     d0, (a7)
005882: 2217         move.l     (a7), d1
005884: 202f0004     move.l     $4(a7), d0
005888: 61003d20     bsr.w      $95aa
00588c: 508f         addq.l     #$8, a7
00588e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005894: 4e5d         unlk       a5
005896: 4e75         rts        
005898: 4e550000     link.w     a5, #$0
00589c: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0058a0: 206f0004     movea.l    $4(a7), a0
0058a4: 2257         movea.l    (a7), a1
0058a6: 2011         move.l     (a1), d0
0058a8: b090         cmp.l      (a0), d0
0058aa: 6614         bne.b      $58c0
0058ac: 206f0004     movea.l    $4(a7), a0
0058b0: 2257         movea.l    (a7), a1
0058b2: 20290004     move.l     $4(a1), d0
0058b6: b0a80004     cmp.l      $4(a0), d0
0058ba: 6604         bne.b      $58c0
0058bc: 7001         moveq      #$1, d0
0058be: 6002         bra.b      $58c2
0058c0: 7000         moveq      #$0, d0
0058c2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0058c8: 4e5d         unlk       a5
0058ca: 4e75         rts        
0058cc: 4e550000     link.w     a5, #$0
0058d0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0058d4: 206f0004     movea.l    $4(a7), a0
0058d8: 2257         movea.l    (a7), a1
0058da: 2011         move.l     (a1), d0
0058dc: b090         cmp.l      (a0), d0
0058de: 6d1c         blt.b      $58fc
0058e0: 206f0004     movea.l    $4(a7), a0
0058e4: 2257         movea.l    (a7), a1
0058e6: 2011         move.l     (a1), d0
0058e8: b090         cmp.l      (a0), d0
0058ea: 6614         bne.b      $5900
0058ec: 206f0004     movea.l    $4(a7), a0
0058f0: 2257         movea.l    (a7), a1
0058f2: 20290004     move.l     $4(a1), d0
0058f6: b0a80004     cmp.l      $4(a0), d0
0058fa: 6c04         bge.b      $5900
0058fc: 7001         moveq      #$1, d0
0058fe: 6002         bra.b      $5902
005900: 7000         moveq      #$0, d0
005902: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005908: 4e5d         unlk       a5
00590a: 4e75         rts        
00590c: 4e550000     link.w     a5, #$0
005910: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005914: 206f0004     movea.l    $4(a7), a0
005918: 2257         movea.l    (a7), a1
00591a: 2011         move.l     (a1), d0
00591c: b090         cmp.l      (a0), d0
00591e: 6c0e         bge.b      $592e
005920: 2057         movea.l    (a7), a0
005922: 226f0018     movea.l    $18(a7), a1
005926: 2290         move.l     (a0), (a1)
005928: 206f0004     movea.l    $4(a7), a0
00592c: 600c         bra.b      $593a
00592e: 206f0004     movea.l    $4(a7), a0
005932: 226f0018     movea.l    $18(a7), a1
005936: 2290         move.l     (a0), (a1)
005938: 2057         movea.l    (a7), a0
00593a: 226f0018     movea.l    $18(a7), a1
00593e: 23500008     move.l     (a0), $8(a1)
005942: 206f0004     movea.l    $4(a7), a0
005946: 2257         movea.l    (a7), a1
005948: 20290004     move.l     $4(a1), d0
00594c: b0a80004     cmp.l      $4(a0), d0
005950: 6c12         bge.b      $5964
005952: 2057         movea.l    (a7), a0
005954: 226f0018     movea.l    $18(a7), a1
005958: 236800040004 move.l     $4(a0), $4(a1)
00595e: 206f0004     movea.l    $4(a7), a0
005962: 6010         bra.b      $5974
005964: 206f0004     movea.l    $4(a7), a0
005968: 226f0018     movea.l    $18(a7), a1
00596c: 236800040004 move.l     $4(a0), $4(a1)
005972: 2057         movea.l    (a7), a0
005974: 226f0018     movea.l    $18(a7), a1
005978: 23680004000c move.l     $4(a0), $c(a1)
00597e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005984: 4e5d         unlk       a5
005986: 4e75         rts        
005988: 4e550000     link.w     a5, #$0
00598c: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005990: 206f0018     movea.l    $18(a7), a0
005994: 2257         movea.l    (a7), a1
005996: 2091         move.l     (a1), (a0)
005998: 216900040004 move.l     $4(a1), $4(a0)
00599e: 206f0018     movea.l    $18(a7), a0
0059a2: 226f0004     movea.l    $4(a7), a1
0059a6: 21510008     move.l     (a1), $8(a0)
0059aa: 21690004000c move.l     $4(a1), $c(a0)
0059b0: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0059b6: 4e5d         unlk       a5
0059b8: 4e75         rts        
0059ba: 4e550000     link.w     a5, #$0
0059be: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0059c2: 518f         subq.l     #$8, a7
0059c4: 206f000c     movea.l    $c(a7), a0
0059c8: 226f0008     movea.l    $8(a7), a1
0059cc: 2011         move.l     (a1), d0
0059ce: 9090         sub.l      (a0), d0
0059d0: 2f400004     move.l     d0, $4(a7)
0059d4: 206f000c     movea.l    $c(a7), a0
0059d8: 226f0008     movea.l    $8(a7), a1
0059dc: 20290004     move.l     $4(a1), d0
0059e0: 90a80004     sub.l      $4(a0), d0
0059e4: 2e80         move.l     d0, (a7)
0059e6: 4aaf0004     tst.l      $4(a7)
0059ea: 6c08         bge.b      $59f4
0059ec: 202f0004     move.l     $4(a7), d0
0059f0: 4480         neg.l      d0
0059f2: 6004         bra.b      $59f8
0059f4: 202f0004     move.l     $4(a7), d0
0059f8: 2f400004     move.l     d0, $4(a7)
0059fc: 4a97         tst.l      (a7)
0059fe: 6c06         bge.b      $5a06
005a00: 2017         move.l     (a7), d0
005a02: 4480         neg.l      d0
005a04: 6002         bra.b      $5a08
005a06: 2017         move.l     (a7), d0
005a08: 2e80         move.l     d0, (a7)
005a0a: 202f0004     move.l     $4(a7), d0
005a0e: b097         cmp.l      (a7), d0
005a10: 6f06         ble.b      $5a18
005a12: 202f0004     move.l     $4(a7), d0
005a16: 6002         bra.b      $5a1a
005a18: 2017         move.l     (a7), d0
005a1a: 508f         addq.l     #$8, a7
005a1c: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005a22: 4e5d         unlk       a5
005a24: 4e75         rts        
005a26: 4e550000     link.w     a5, #$0
005a2a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005a2e: 518f         subq.l     #$8, a7
005a30: 206f000c     movea.l    $c(a7), a0
005a34: 226f0008     movea.l    $8(a7), a1
005a38: 2011         move.l     (a1), d0
005a3a: 9090         sub.l      (a0), d0
005a3c: 2f400004     move.l     d0, $4(a7)
005a40: 206f000c     movea.l    $c(a7), a0
005a44: 226f0008     movea.l    $8(a7), a1
005a48: 20290004     move.l     $4(a1), d0
005a4c: 90a80004     sub.l      $4(a0), d0
005a50: 2e80         move.l     d0, (a7)
005a52: 2f2f0020     move.l     $20(a7), -(a7)
005a56: 2f2f0004     move.l     $4(a7), -(a7)
005a5a: 2f2f0008     move.l     $8(a7), -(a7)
005a5e: 222f0010     move.l     $10(a7), d1
005a62: 202f0010     move.l     $10(a7), d0
005a66: 61003bda     bsr.w      $9642
005a6a: 4fef000c     lea.l      $c(a7), a7
005a6e: 508f         addq.l     #$8, a7
005a70: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005a76: 4e5d         unlk       a5
005a78: 4e75         rts        
005a7a: 4e550000     link.w     a5, #$0
005a7e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005a82: 206f0004     movea.l    $4(a7), a0
005a86: 2257         movea.l    (a7), a1
005a88: 2011         move.l     (a1), d0
005a8a: 9090         sub.l      (a0), d0
005a8c: 206f0018     movea.l    $18(a7), a0
005a90: 2080         move.l     d0, (a0)
005a92: 206f0004     movea.l    $4(a7), a0
005a96: 2257         movea.l    (a7), a1
005a98: 20290004     move.l     $4(a1), d0
005a9c: 90a80004     sub.l      $4(a0), d0
005aa0: 206f0018     movea.l    $18(a7), a0
005aa4: 21400004     move.l     d0, $4(a0)
005aa8: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005aae: 4e5d         unlk       a5
005ab0: 4e75         rts        
005ab2: 4e550000     link.w     a5, #$0
005ab6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005aba: 2057         movea.l    (a7), a0
005abc: 226f0004     movea.l    $4(a7), a1
005ac0: 20290004     move.l     $4(a1), d0
005ac4: 90a80004     sub.l      $4(a0), d0
005ac8: 2200         move.l     d0, d1
005aca: 2057         movea.l    (a7), a0
005acc: 226f0004     movea.l    $4(a7), a1
005ad0: 2011         move.l     (a1), d0
005ad2: 9090         sub.l      (a0), d0
005ad4: 610037c8     bsr.w      $929e
005ad8: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005ade: 4e5d         unlk       a5
005ae0: 4e75         rts        
005ae2: 4e550000     link.w     a5, #$0
005ae6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005aea: 4fefffe8     lea.l      -$18(a7), a7
005aee: 206f0038     movea.l    $38(a7), a0
005af2: 226f0018     movea.l    $18(a7), a1
005af6: 2091         move.l     (a1), (a0)
005af8: 216900040004 move.l     $4(a1), $4(a0)
005afe: 206f0038     movea.l    $38(a7), a0
005b02: 226f001c     movea.l    $1c(a7), a1
005b06: 21510008     move.l     (a1), $8(a0)
005b0a: 21690004000c move.l     $4(a1), $c(a0)
005b10: 206f0038     movea.l    $38(a7), a0
005b14: 226f0030     movea.l    $30(a7), a1
005b18: 21510010     move.l     (a1), $10(a0)
005b1c: 216900040014 move.l     $4(a1), $14(a0)
005b22: 206f0038     movea.l    $38(a7), a0
005b26: 226f0034     movea.l    $34(a7), a1
005b2a: 21510018     move.l     (a1), $18(a0)
005b2e: 21690004001c move.l     $4(a1), $1c(a0)
005b34: 206f0038     movea.l    $38(a7), a0
005b38: 2f500004     move.l     (a0), $4(a7)
005b3c: 206f0038     movea.l    $38(a7), a0
005b40: 2ea80004     move.l     $4(a0), (a7)
005b44: 7001         moveq      #$1, d0
005b46: 2f400010     move.l     d0, $10(a7)
005b4a: 600000d8     bra.w      $5c24
005b4e: 202f0010     move.l     $10(a7), d0
005b52: 5280         addq.l     #$1, d0
005b54: 2f400014     move.l     d0, $14(a7)
005b58: 600000a2     bra.w      $5bfc
005b5c: 206f0038     movea.l    $38(a7), a0
005b60: 202f0010     move.l     $10(a7), d0
005b64: 20300e00     move.l     (a0, d0.l * 8), d0
005b68: 90af0004     sub.l      $4(a7), d0
005b6c: 2f00         move.l     d0, -(a7)
005b6e: 206f003c     movea.l    $3c(a7), a0
005b72: 202f0018     move.l     $18(a7), d0
005b76: 20300e04     move.l     $4(a0, d0.l), d0
005b7a: 90af0004     sub.l      $4(a7), d0
005b7e: 2f00         move.l     d0, -(a7)
005b80: 206f0040     movea.l    $40(a7), a0
005b84: 202f0018     move.l     $18(a7), d0
005b88: 20300e04     move.l     $4(a0, d0.l), d0
005b8c: 90af0008     sub.l      $8(a7), d0
005b90: 2200         move.l     d0, d1
005b92: 206f0040     movea.l    $40(a7), a0
005b96: 202f001c     move.l     $1c(a7), d0
005b9a: 20300e00     move.l     (a0, d0.l * 8), d0
005b9e: 90af000c     sub.l      $c(a7), d0
005ba2: 61003ad0     bsr.w      $9674
005ba6: 508f         addq.l     #$8, a7
005ba8: 4a80         tst.l      d0
005baa: 6e4c         bgt.b      $5bf8
005bac: 206f0038     movea.l    $38(a7), a0
005bb0: 202f0010     move.l     $10(a7), d0
005bb4: e788         lsl.l      #$3, d0
005bb6: d1c0         adda.l     d0, a0
005bb8: 2f500008     move.l     (a0), $8(a7)
005bbc: 2f680004000c move.l     $4(a0), $c(a7)
005bc2: 206f0038     movea.l    $38(a7), a0
005bc6: 202f0010     move.l     $10(a7), d0
005bca: 226f0038     movea.l    $38(a7), a1
005bce: 222f0014     move.l     $14(a7), d1
005bd2: e789         lsl.l      #$3, d1
005bd4: d3c1         adda.l     d1, a1
005bd6: e788         lsl.l      #$3, d0
005bd8: d1c0         adda.l     d0, a0
005bda: 2091         move.l     (a1), (a0)
005bdc: 216900040004 move.l     $4(a1), $4(a0)
005be2: 206f0038     movea.l    $38(a7), a0
005be6: 202f0014     move.l     $14(a7), d0
005bea: e788         lsl.l      #$3, d0
005bec: d1c0         adda.l     d0, a0
005bee: 20af0008     move.l     $8(a7), (a0)
005bf2: 216f000c0004 move.l     $c(a7), $4(a0)
005bf8: 52af0014     addq.l     #$1, $14(a7)
005bfc: 7004         moveq      #$4, d0
005bfe: b0af0014     cmp.l      $14(a7), d0
005c02: 6e00ff58     bgt.w      $5b5c
005c06: 206f0038     movea.l    $38(a7), a0
005c0a: 202f0010     move.l     $10(a7), d0
005c0e: 2f700e000004 move.l     (a0, d0.l * 8), $4(a7)
005c14: 206f0038     movea.l    $38(a7), a0
005c18: 202f0010     move.l     $10(a7), d0
005c1c: 2eb00e04     move.l     $4(a0, d0.l), (a7)
005c20: 52af0010     addq.l     #$1, $10(a7)
005c24: 7003         moveq      #$3, d0
005c26: b0af0010     cmp.l      $10(a7), d0
005c2a: 6e00ff22     bgt.w      $5b4e
005c2e: 4fef0018     lea.l      $18(a7), a7
005c32: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005c38: 4e5d         unlk       a5
005c3a: 4e75         rts        
005c3c: 4e550000     link.w     a5, #$0
005c40: 48e7c080     movem.l    d0-d1/a0, -(a7)
005c44: 4feffff4     lea.l      -$c(a7), a7
005c48: 206f0010     movea.l    $10(a7), a0
005c4c: 2f6800180004 move.l     $18(a0), $4(a7)
005c52: 206f0010     movea.l    $10(a7), a0
005c56: 2ea8001c     move.l     $1c(a0), (a7)
005c5a: 42af0008     clr.l      $8(a7)
005c5e: 6068         bra.b      $5cc8
005c60: 206f0010     movea.l    $10(a7), a0
005c64: 202f0008     move.l     $8(a7), d0
005c68: 20300e00     move.l     (a0, d0.l * 8), d0
005c6c: 90af0004     sub.l      $4(a7), d0
005c70: 2f00         move.l     d0, -(a7)
005c72: 206f0010     movea.l    $10(a7), a0
005c76: 20280004     move.l     $4(a0), d0
005c7a: 90af0004     sub.l      $4(a7), d0
005c7e: 2f00         move.l     d0, -(a7)
005c80: 206f0018     movea.l    $18(a7), a0
005c84: 202f0010     move.l     $10(a7), d0
005c88: 20300e04     move.l     $4(a0, d0.l), d0
005c8c: 90af0008     sub.l      $8(a7), d0
005c90: 2200         move.l     d0, d1
005c92: 206f0014     movea.l    $14(a7), a0
005c96: 2010         move.l     (a0), d0
005c98: 90af000c     sub.l      $c(a7), d0
005c9c: 610039d6     bsr.w      $9674
005ca0: 508f         addq.l     #$8, a7
005ca2: 4a80         tst.l      d0
005ca4: 6e04         bgt.b      $5caa
005ca6: 7000         moveq      #$0, d0
005ca8: 6028         bra.b      $5cd2
005caa: 206f0010     movea.l    $10(a7), a0
005cae: 202f0008     move.l     $8(a7), d0
005cb2: 2f700e000004 move.l     (a0, d0.l * 8), $4(a7)
005cb8: 206f0010     movea.l    $10(a7), a0
005cbc: 202f0008     move.l     $8(a7), d0
005cc0: 2eb00e04     move.l     $4(a0, d0.l), (a7)
005cc4: 52af0008     addq.l     #$1, $8(a7)
005cc8: 7004         moveq      #$4, d0
005cca: b0af0008     cmp.l      $8(a7), d0
005cce: 6e90         bgt.b      $5c60
005cd0: 7001         moveq      #$1, d0
005cd2: 4fef000c     lea.l      $c(a7), a7
005cd6: 4ced0100fffc movem.l    -$4(a5), a0
005cdc: 4e5d         unlk       a5
005cde: 4e75         rts        
005ce0: 4e550000     link.w     a5, #$0
005ce4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005ce8: 4fefffd8     lea.l      -$28(a7), a7
005cec: 206f002c     movea.l    $2c(a7), a0
005cf0: 226f002c     movea.l    $2c(a7), a1
005cf4: 20290008     move.l     $8(a1), d0
005cf8: 9090         sub.l      (a0), d0
005cfa: 2f400020     move.l     d0, $20(a7)
005cfe: 206f002c     movea.l    $2c(a7), a0
005d02: 226f002c     movea.l    $2c(a7), a1
005d06: 2029000c     move.l     $c(a1), d0
005d0a: 90a80004     sub.l      $4(a0), d0
005d0e: 2f40001c     move.l     d0, $1c(a7)
005d12: 206f002c     movea.l    $2c(a7), a0
005d16: 226f0028     movea.l    $28(a7), a1
005d1a: 2011         move.l     (a1), d0
005d1c: 9090         sub.l      (a0), d0
005d1e: 2f400018     move.l     d0, $18(a7)
005d22: 206f002c     movea.l    $2c(a7), a0
005d26: 226f0028     movea.l    $28(a7), a1
005d2a: 20290004     move.l     $4(a1), d0
005d2e: 90a80004     sub.l      $4(a0), d0
005d32: 2f400014     move.l     d0, $14(a7)
005d36: 486f000c     pea.l      $c(a7)
005d3a: 2f2f0020     move.l     $20(a7), -(a7)
005d3e: 2f2f001c     move.l     $1c(a7), -(a7)
005d42: 222f002c     move.l     $2c(a7), d1
005d46: 202f0024     move.l     $24(a7), d0
005d4a: 610038f6     bsr.w      $9642
005d4e: 4fef000c     lea.l      $c(a7), a7
005d52: 41ef000c     lea.l      $c(a7), a0
005d56: 2008         move.l     a0, d0
005d58: 610039e8     bsr.w      $9742
005d5c: 4a80         tst.l      d0
005d5e: 6e10         bgt.b      $5d70
005d60: 222f0014     move.l     $14(a7), d1
005d64: 202f0018     move.l     $18(a7), d0
005d68: 61003840     bsr.w      $95aa
005d6c: 60000082     bra.w      $5df0
005d70: 486f0004     pea.l      $4(a7)
005d74: 2f2f0020     move.l     $20(a7), -(a7)
005d78: 2f2f0024     move.l     $24(a7), -(a7)
005d7c: 222f002c     move.l     $2c(a7), d1
005d80: 202f002c     move.l     $2c(a7), d0
005d84: 610038bc     bsr.w      $9642
005d88: 4fef000c     lea.l      $c(a7), a7
005d8c: 41ef0004     lea.l      $4(a7), a0
005d90: 2208         move.l     a0, d1
005d92: 41ef000c     lea.l      $c(a7), a0
005d96: 2008         move.l     a0, d0
005d98: 61003a92     bsr.w      $982c
005d9c: 4a80         tst.l      d0
005d9e: 6d28         blt.b      $5dc8
005da0: 206f002c     movea.l    $2c(a7), a0
005da4: 226f0028     movea.l    $28(a7), a1
005da8: 2011         move.l     (a1), d0
005daa: 90a80008     sub.l      $8(a0), d0
005dae: 2f400018     move.l     d0, $18(a7)
005db2: 206f002c     movea.l    $2c(a7), a0
005db6: 226f0028     movea.l    $28(a7), a1
005dba: 20290004     move.l     $4(a1), d0
005dbe: 90a8000c     sub.l      $c(a0), d0
005dc2: 2f400014     move.l     d0, $14(a7)
005dc6: 6098         bra.b      $5d60
005dc8: 222f001c     move.l     $1c(a7), d1
005dcc: 202f0020     move.l     $20(a7), d0
005dd0: 610037d8     bsr.w      $95aa
005dd4: 2e80         move.l     d0, (a7)
005dd6: 2f17         move.l     (a7), -(a7)
005dd8: 2f2f0024     move.l     $24(a7), -(a7)
005ddc: 2f2f001c     move.l     $1c(a7), -(a7)
005de0: 222f0028     move.l     $28(a7), d1
005de4: 202f0024     move.l     $24(a7), d0
005de8: 61003926     bsr.w      $9710
005dec: 4fef000c     lea.l      $c(a7), a7
005df0: 2f400024     move.l     d0, $24(a7)
005df4: 4aaf0024     tst.l      $24(a7)
005df8: 6c08         bge.b      $5e02
005dfa: 202f0024     move.l     $24(a7), d0
005dfe: 4480         neg.l      d0
005e00: 6004         bra.b      $5e06
005e02: 202f0024     move.l     $24(a7), d0
005e06: 4fef0028     lea.l      $28(a7), a7
005e0a: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005e10: 4e5d         unlk       a5
005e12: 4e75         rts        
005e14: 4e550000     link.w     a5, #$0
005e18: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
005e1c: 4fefffe8     lea.l      -$18(a7), a7
005e20: 206f001c     movea.l    $1c(a7), a0
005e24: 226f001c     movea.l    $1c(a7), a1
005e28: 20290008     move.l     $8(a1), d0
005e2c: 9090         sub.l      (a0), d0
005e2e: 2f400010     move.l     d0, $10(a7)
005e32: 206f001c     movea.l    $1c(a7), a0
005e36: 226f001c     movea.l    $1c(a7), a1
005e3a: 2029000c     move.l     $c(a1), d0
005e3e: 90a80004     sub.l      $4(a0), d0
005e42: 2f40000c     move.l     d0, $c(a7)
005e46: 206f001c     movea.l    $1c(a7), a0
005e4a: 226f0018     movea.l    $18(a7), a1
005e4e: 2011         move.l     (a1), d0
005e50: 9090         sub.l      (a0), d0
005e52: 2f400008     move.l     d0, $8(a7)
005e56: 206f001c     movea.l    $1c(a7), a0
005e5a: 226f0018     movea.l    $18(a7), a1
005e5e: 20290004     move.l     $4(a1), d0
005e62: 90a80004     sub.l      $4(a0), d0
005e66: 2f400004     move.l     d0, $4(a7)
005e6a: 222f000c     move.l     $c(a7), d1
005e6e: 202f0010     move.l     $10(a7), d0
005e72: 61003736     bsr.w      $95aa
005e76: 2e80         move.l     d0, (a7)
005e78: 2f17         move.l     (a7), -(a7)
005e7a: 2f2f0014     move.l     $14(a7), -(a7)
005e7e: 2f2f000c     move.l     $c(a7), -(a7)
005e82: 222f0018     move.l     $18(a7), d1
005e86: 202f0014     move.l     $14(a7), d0
005e8a: 61003884     bsr.w      $9710
005e8e: 4fef000c     lea.l      $c(a7), a7
005e92: 2f400014     move.l     d0, $14(a7)
005e96: 202f0014     move.l     $14(a7), d0
005e9a: 4fef0018     lea.l      $18(a7), a7
005e9e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
005ea4: 4e5d         unlk       a5
005ea6: 4e75         rts        
005ea8: 4e550000     link.w     a5, #$0
005eac: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
005eb0: 4fefffd0     lea.l      -$30(a7), a7
005eb4: 206f0034     movea.l    $34(a7), a0
005eb8: 226f0034     movea.l    $34(a7), a1
005ebc: 20290008     move.l     $8(a1), d0
005ec0: 9090         sub.l      (a0), d0
005ec2: 2f40002c     move.l     d0, $2c(a7)
005ec6: 206f0034     movea.l    $34(a7), a0
005eca: 226f0034     movea.l    $34(a7), a1
005ece: 2029000c     move.l     $c(a1), d0
005ed2: 90a80004     sub.l      $4(a0), d0
005ed6: 2f400028     move.l     d0, $28(a7)
005eda: 206f0034     movea.l    $34(a7), a0
005ede: 226f0030     movea.l    $30(a7), a1
005ee2: 2011         move.l     (a1), d0
005ee4: 9090         sub.l      (a0), d0
005ee6: 2f400024     move.l     d0, $24(a7)
005eea: 206f0034     movea.l    $34(a7), a0
005eee: 226f0030     movea.l    $30(a7), a1
005ef2: 20290004     move.l     $4(a1), d0
005ef6: 90a80004     sub.l      $4(a0), d0
005efa: 2f400020     move.l     d0, $20(a7)
005efe: 4aaf002c     tst.l      $2c(a7)
005f02: 661a         bne.b      $5f1e
005f04: 4aaf0028     tst.l      $28(a7)
005f08: 6614         bne.b      $5f1e
005f0a: 206f0050     movea.l    $50(a7), a0
005f0e: 226f0034     movea.l    $34(a7), a1
005f12: 2091         move.l     (a1), (a0)
005f14: 216900040004 move.l     $4(a1), $4(a0)
005f1a: 600000f8     bra.w      $6014
005f1e: 486f0018     pea.l      $18(a7)
005f22: 2f2f002c     move.l     $2c(a7), -(a7)
005f26: 2f2f0028     move.l     $28(a7), -(a7)
005f2a: 222f0038     move.l     $38(a7), d1
005f2e: 202f0030     move.l     $30(a7), d0
005f32: 6100370e     bsr.w      $9642
005f36: 4fef000c     lea.l      $c(a7), a7
005f3a: 486f0010     pea.l      $10(a7)
005f3e: 2f2f002c     move.l     $2c(a7), -(a7)
005f42: 2f2f0030     move.l     $30(a7), -(a7)
005f46: 222f0038     move.l     $38(a7), d1
005f4a: 202f0038     move.l     $38(a7), d0
005f4e: 610036f2     bsr.w      $9642
005f52: 4fef000c     lea.l      $c(a7), a7
005f56: 41ef0010     lea.l      $10(a7), a0
005f5a: 2008         move.l     a0, d0
005f5c: 6100384e     bsr.w      $97ac
005f60: 2601         move.l     d1, d3
005f62: 2400         move.l     d0, d2
005f64: 41ef0018     lea.l      $18(a7), a0
005f68: 2008         move.l     a0, d0
005f6a: 61003840     bsr.w      $97ac
005f6e: 4e4f         trap       #$f
005f70: 001348ef     ori.b      #$ef, (a3)
005f74: 00030008     ori.b      #$8, d3
005f78: 202f002c     move.l     $2c(a7), d0
005f7c: 4e4f         trap       #$f
005f7e: 00204cef     ori.b      #$ef, -(a0)
005f82: 000c         .dc.w      $000c
005f84: 0008         .dc.w      $0008
005f86: 4e4f         trap       #$f
005f88: 001248d7     ori.b      #$d7, (a2)
005f8c: 00034a97     ori.b      #$97, d3
005f90: 6f12         ble.b      $5fa4
005f92: 7600         moveq      #$0, d3
005f94: 243c3fe00000 move.l     #$3fe00000, d2
005f9a: 4cd70003     movem.l    (a7), d0-d1
005f9e: 4e4f         trap       #$f
005fa0: 000e         .dc.w      $000e
005fa2: 6010         bra.b      $5fb4
005fa4: 7600         moveq      #$0, d3
005fa6: 243c3fe00000 move.l     #$3fe00000, d2
005fac: 4cd70003     movem.l    (a7), d0-d1
005fb0: 4e4f         trap       #$f
005fb2: 00104e4f     ori.b      #$4f, (a0)
005fb6: 0024206f     ori.b      #$6f, -(a4)
005fba: 0034d090206f ori.b      #$90, $6f(a4, d2.w)
005fc0: 00502080     ori.w      #$2080, (a0)
005fc4: 202f0028     move.l     $28(a7), d0
005fc8: 4e4f         trap       #$f
005fca: 00204cef     ori.b      #$ef, -(a0)
005fce: 000c         .dc.w      $000c
005fd0: 0008         .dc.w      $0008
005fd2: 4e4f         trap       #$f
005fd4: 001248d7     ori.b      #$d7, (a2)
005fd8: 00034a97     ori.b      #$97, d3
005fdc: 6f12         ble.b      $5ff0
005fde: 7600         moveq      #$0, d3
005fe0: 243c3fe00000 move.l     #$3fe00000, d2
005fe6: 4cd70003     movem.l    (a7), d0-d1
005fea: 4e4f         trap       #$f
005fec: 000e         .dc.w      $000e
005fee: 6010         bra.b      $6000
005ff0: 7600         moveq      #$0, d3
005ff2: 243c3fe00000 move.l     #$3fe00000, d2
005ff8: 4cd70003     movem.l    (a7), d0-d1
005ffc: 4e4f         trap       #$f
005ffe: 00104e4f     ori.b      #$4f, (a0)
006002: 0024206f     ori.b      #$6f, -(a4)
006006: 0034d0a80004 ori.b      #$a8, $4(a4, d0.w)
00600c: 206f0050     movea.l    $50(a7), a0
006010: 21400004     move.l     d0, $4(a0)
006014: 4fef0030     lea.l      $30(a7), a7
006018: 4ced030cfff0 movem.l    -$10(a5), d2-d3/a0-a1
00601e: 4e5d         unlk       a5
006020: 4e75         rts        
006022: 4e550000     link.w     a5, #$0
006026: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00602a: 4fefffe8     lea.l      -$18(a7), a7
00602e: 206f001c     movea.l    $1c(a7), a0
006032: 226f001c     movea.l    $1c(a7), a1
006036: 2011         move.l     (a1), d0
006038: 90a80008     sub.l      $8(a0), d0
00603c: 2f400010     move.l     d0, $10(a7)
006040: 206f001c     movea.l    $1c(a7), a0
006044: 226f001c     movea.l    $1c(a7), a1
006048: 20290004     move.l     $4(a1), d0
00604c: 90a8000c     sub.l      $c(a0), d0
006050: 2f40000c     move.l     d0, $c(a7)
006054: 206f001c     movea.l    $1c(a7), a0
006058: 226f0018     movea.l    $18(a7), a1
00605c: 2011         move.l     (a1), d0
00605e: 90a80008     sub.l      $8(a0), d0
006062: 2f400008     move.l     d0, $8(a7)
006066: 206f001c     movea.l    $1c(a7), a0
00606a: 226f0018     movea.l    $18(a7), a1
00606e: 20290004     move.l     $4(a1), d0
006072: 90a8000c     sub.l      $c(a0), d0
006076: 2f400004     move.l     d0, $4(a7)
00607a: 222f000c     move.l     $c(a7), d1
00607e: 202f0010     move.l     $10(a7), d0
006082: 61003526     bsr.w      $95aa
006086: 2e80         move.l     d0, (a7)
006088: 4a97         tst.l      (a7)
00608a: 660e         bne.b      $609a
00608c: 222f0004     move.l     $4(a7), d1
006090: 202f0008     move.l     $8(a7), d0
006094: 61003514     bsr.w      $95aa
006098: 601a         bra.b      $60b4
00609a: 2f17         move.l     (a7), -(a7)
00609c: 2f2f0010     move.l     $10(a7), -(a7)
0060a0: 2f2f000c     move.l     $c(a7), -(a7)
0060a4: 222f001c     move.l     $1c(a7), d1
0060a8: 202f0014     move.l     $14(a7), d0
0060ac: 61003630     bsr.w      $96de
0060b0: 4fef000c     lea.l      $c(a7), a7
0060b4: 2f400014     move.l     d0, $14(a7)
0060b8: 202f0014     move.l     $14(a7), d0
0060bc: 4fef0018     lea.l      $18(a7), a7
0060c0: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0060c6: 4e5d         unlk       a5
0060c8: 4e75         rts        
0060ca: 4e550000     link.w     a5, #$0
0060ce: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
0060d2: 4fefffd0     lea.l      -$30(a7), a7
0060d6: 206f0034     movea.l    $34(a7), a0
0060da: 226f0034     movea.l    $34(a7), a1
0060de: 20290008     move.l     $8(a1), d0
0060e2: 9090         sub.l      (a0), d0
0060e4: 2f40002c     move.l     d0, $2c(a7)
0060e8: 206f0034     movea.l    $34(a7), a0
0060ec: 226f0034     movea.l    $34(a7), a1
0060f0: 2029000c     move.l     $c(a1), d0
0060f4: 90a80004     sub.l      $4(a0), d0
0060f8: 2f400028     move.l     d0, $28(a7)
0060fc: 206f0034     movea.l    $34(a7), a0
006100: 226f0030     movea.l    $30(a7), a1
006104: 2011         move.l     (a1), d0
006106: 9090         sub.l      (a0), d0
006108: 2f400024     move.l     d0, $24(a7)
00610c: 206f0034     movea.l    $34(a7), a0
006110: 226f0030     movea.l    $30(a7), a1
006114: 20290004     move.l     $4(a1), d0
006118: 90a80004     sub.l      $4(a0), d0
00611c: 2f400020     move.l     d0, $20(a7)
006120: 486f0018     pea.l      $18(a7)
006124: 2f2f002c     move.l     $2c(a7), -(a7)
006128: 2f2f0028     move.l     $28(a7), -(a7)
00612c: 222f0038     move.l     $38(a7), d1
006130: 202f0030     move.l     $30(a7), d0
006134: 6100350c     bsr.w      $9642
006138: 4fef000c     lea.l      $c(a7), a7
00613c: 41ef0018     lea.l      $18(a7), a0
006140: 2008         move.l     a0, d0
006142: 610035fe     bsr.w      $9742
006146: 4a80         tst.l      d0
006148: 6e14         bgt.b      $615e
00614a: 206f0050     movea.l    $50(a7), a0
00614e: 226f0034     movea.l    $34(a7), a1
006152: 2091         move.l     (a1), (a0)
006154: 216900040004 move.l     $4(a1), $4(a0)
00615a: 60000106     bra.w      $6262
00615e: 486f0010     pea.l      $10(a7)
006162: 2f2f002c     move.l     $2c(a7), -(a7)
006166: 2f2f0030     move.l     $30(a7), -(a7)
00616a: 222f0038     move.l     $38(a7), d1
00616e: 202f0038     move.l     $38(a7), d0
006172: 610034ce     bsr.w      $9642
006176: 4fef000c     lea.l      $c(a7), a7
00617a: 41ef0010     lea.l      $10(a7), a0
00617e: 2208         move.l     a0, d1
006180: 41ef0018     lea.l      $18(a7), a0
006184: 2008         move.l     a0, d0
006186: 610036a4     bsr.w      $982c
00618a: 4a80         tst.l      d0
00618c: 6d16         blt.b      $61a4
00618e: 206f0050     movea.l    $50(a7), a0
006192: 226f0034     movea.l    $34(a7), a1
006196: 20a90008     move.l     $8(a1), (a0)
00619a: 2169000c0004 move.l     $c(a1), $4(a0)
0061a0: 600000c0     bra.w      $6262
0061a4: 41ef0010     lea.l      $10(a7), a0
0061a8: 2008         move.l     a0, d0
0061aa: 61003600     bsr.w      $97ac
0061ae: 2601         move.l     d1, d3
0061b0: 2400         move.l     d0, d2
0061b2: 41ef0018     lea.l      $18(a7), a0
0061b6: 2008         move.l     a0, d0
0061b8: 610035f2     bsr.w      $97ac
0061bc: 4e4f         trap       #$f
0061be: 001348ef     ori.b      #$ef, (a3)
0061c2: 00030008     ori.b      #$8, d3
0061c6: 202f002c     move.l     $2c(a7), d0
0061ca: 4e4f         trap       #$f
0061cc: 00204cef     ori.b      #$ef, -(a0)
0061d0: 000c         .dc.w      $000c
0061d2: 0008         .dc.w      $0008
0061d4: 4e4f         trap       #$f
0061d6: 001248d7     ori.b      #$d7, (a2)
0061da: 00034a97     ori.b      #$97, d3
0061de: 6f12         ble.b      $61f2
0061e0: 7600         moveq      #$0, d3
0061e2: 243c3fe00000 move.l     #$3fe00000, d2
0061e8: 4cd70003     movem.l    (a7), d0-d1
0061ec: 4e4f         trap       #$f
0061ee: 000e         .dc.w      $000e
0061f0: 6010         bra.b      $6202
0061f2: 7600         moveq      #$0, d3
0061f4: 243c3fe00000 move.l     #$3fe00000, d2
0061fa: 4cd70003     movem.l    (a7), d0-d1
0061fe: 4e4f         trap       #$f
006200: 00104e4f     ori.b      #$4f, (a0)
006204: 0024206f     ori.b      #$6f, -(a4)
006208: 0034d090206f ori.b      #$90, $6f(a4, d2.w)
00620e: 00502080     ori.w      #$2080, (a0)
006212: 202f0028     move.l     $28(a7), d0
006216: 4e4f         trap       #$f
006218: 00204cef     ori.b      #$ef, -(a0)
00621c: 000c         .dc.w      $000c
00621e: 0008         .dc.w      $0008
006220: 4e4f         trap       #$f
006222: 001248d7     ori.b      #$d7, (a2)
006226: 00034a97     ori.b      #$97, d3
00622a: 6f12         ble.b      $623e
00622c: 7600         moveq      #$0, d3
00622e: 243c3fe00000 move.l     #$3fe00000, d2
006234: 4cd70003     movem.l    (a7), d0-d1
006238: 4e4f         trap       #$f
00623a: 000e         .dc.w      $000e
00623c: 6010         bra.b      $624e
00623e: 7600         moveq      #$0, d3
006240: 243c3fe00000 move.l     #$3fe00000, d2
006246: 4cd70003     movem.l    (a7), d0-d1
00624a: 4e4f         trap       #$f
00624c: 00104e4f     ori.b      #$4f, (a0)
006250: 0024206f     ori.b      #$6f, -(a4)
006254: 0034d0a80004 ori.b      #$a8, $4(a4, d0.w)
00625a: 206f0050     movea.l    $50(a7), a0
00625e: 21400004     move.l     d0, $4(a0)
006262: 4fef0030     lea.l      $30(a7), a7
006266: 4ced030cfff0 movem.l    -$10(a5), d2-d3/a0-a1
00626c: 4e5d         unlk       a5
00626e: 4e75         rts        
006270: 4e550000     link.w     a5, #$0
006274: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
006278: 4fefffd0     lea.l      -$30(a7), a7
00627c: 206f0034     movea.l    $34(a7), a0
006280: 226f0034     movea.l    $34(a7), a1
006284: 20290008     move.l     $8(a1), d0
006288: 9090         sub.l      (a0), d0
00628a: 2f40002c     move.l     d0, $2c(a7)
00628e: 206f0034     movea.l    $34(a7), a0
006292: 226f0034     movea.l    $34(a7), a1
006296: 2029000c     move.l     $c(a1), d0
00629a: 90a80004     sub.l      $4(a0), d0
00629e: 2f400028     move.l     d0, $28(a7)
0062a2: 206f0034     movea.l    $34(a7), a0
0062a6: 226f0030     movea.l    $30(a7), a1
0062aa: 2011         move.l     (a1), d0
0062ac: 9090         sub.l      (a0), d0
0062ae: 2f400024     move.l     d0, $24(a7)
0062b2: 206f0034     movea.l    $34(a7), a0
0062b6: 226f0030     movea.l    $30(a7), a1
0062ba: 20290004     move.l     $4(a1), d0
0062be: 90a80004     sub.l      $4(a0), d0
0062c2: 2f400020     move.l     d0, $20(a7)
0062c6: 486f0008     pea.l      $8(a7)
0062ca: 2f2f002c     move.l     $2c(a7), -(a7)
0062ce: 2f2f0028     move.l     $28(a7), -(a7)
0062d2: 222f0038     move.l     $38(a7), d1
0062d6: 202f0030     move.l     $30(a7), d0
0062da: 61003366     bsr.w      $9642
0062de: 4fef000c     lea.l      $c(a7), a7
0062e2: 41ef0008     lea.l      $8(a7), a0
0062e6: 2008         move.l     a0, d0
0062e8: 61003458     bsr.w      $9742
0062ec: 4a80         tst.l      d0
0062ee: 6e22         bgt.b      $6312
0062f0: 206f0034     movea.l    $34(a7), a0
0062f4: 2010         move.l     (a0), d0
0062f6: 4e4f         trap       #$f
0062f8: 0020206f     ori.b      #$6f, -(a0)
0062fc: 005048d0     ori.w      #$48d0, (a0)
006300: 0003206f     ori.b      #$6f, d3
006304: 003420280004 ori.b      #$28, $4(a4, d0.w)
00630a: 4e4f         trap       #$f
00630c: 00206000     ori.b      #$0, -(a0)
006310: 00ce         .dc.w      $00ce
006312: 4857         pea.l      (a7)
006314: 2f2f002c     move.l     $2c(a7), -(a7)
006318: 2f2f0030     move.l     $30(a7), -(a7)
00631c: 222f0038     move.l     $38(a7), d1
006320: 202f0038     move.l     $38(a7), d0
006324: 6100331c     bsr.w      $9642
006328: 4fef000c     lea.l      $c(a7), a7
00632c: 41d7         lea.l      (a7), a0
00632e: 2208         move.l     a0, d1
006330: 41ef0008     lea.l      $8(a7), a0
006334: 2008         move.l     a0, d0
006336: 610034f4     bsr.w      $982c
00633a: 4a80         tst.l      d0
00633c: 6d1e         blt.b      $635c
00633e: 206f0034     movea.l    $34(a7), a0
006342: 20280008     move.l     $8(a0), d0
006346: 4e4f         trap       #$f
006348: 0020206f     ori.b      #$6f, -(a0)
00634c: 005048d0     ori.w      #$48d0, (a0)
006350: 0003206f     ori.b      #$6f, d3
006354: 00342028000c ori.b      #$28, $c(a4, d0.w)
00635a: 60ae         bra.b      $630a
00635c: 41d7         lea.l      (a7), a0
00635e: 2008         move.l     a0, d0
006360: 6100344a     bsr.w      $97ac
006364: 2601         move.l     d1, d3
006366: 2400         move.l     d0, d2
006368: 41ef0008     lea.l      $8(a7), a0
00636c: 2008         move.l     a0, d0
00636e: 6100343c     bsr.w      $97ac
006372: 4e4f         trap       #$f
006374: 001348ef     ori.b      #$ef, (a3)
006378: 00030018     ori.b      #$18, d3
00637c: 202f002c     move.l     $2c(a7), d0
006380: 4e4f         trap       #$f
006382: 00204cef     ori.b      #$ef, -(a0)
006386: 000c         .dc.w      $000c
006388: 00184e4f     ori.b      #$4f, (a0)+
00638c: 001248ef     ori.b      #$ef, (a2)
006390: 00030010     ori.b      #$10, d3
006394: 206f0034     movea.l    $34(a7), a0
006398: 2010         move.l     (a0), d0
00639a: 4e4f         trap       #$f
00639c: 00204cef     ori.b      #$ef, -(a0)
0063a0: 000c         .dc.w      $000c
0063a2: 00104e4f     ori.b      #$4f, (a0)
0063a6: 000e         .dc.w      $000e
0063a8: 206f0050     movea.l    $50(a7), a0
0063ac: 48d00003     movem.l    d0-d1, (a0)
0063b0: 202f0028     move.l     $28(a7), d0
0063b4: 4e4f         trap       #$f
0063b6: 00204cef     ori.b      #$ef, -(a0)
0063ba: 000c         .dc.w      $000c
0063bc: 00184e4f     ori.b      #$4f, (a0)+
0063c0: 001248ef     ori.b      #$ef, (a2)
0063c4: 00030010     ori.b      #$10, d3
0063c8: 206f0034     movea.l    $34(a7), a0
0063cc: 20280004     move.l     $4(a0), d0
0063d0: 4e4f         trap       #$f
0063d2: 00204cef     ori.b      #$ef, -(a0)
0063d6: 000c         .dc.w      $000c
0063d8: 00104e4f     ori.b      #$4f, (a0)
0063dc: 000e         .dc.w      $000e
0063de: 206f0050     movea.l    $50(a7), a0
0063e2: 48e800030008 movem.l    d0-d1, $8(a0)
0063e8: 4fef0030     lea.l      $30(a7), a7
0063ec: 4ced030cfff0 movem.l    -$10(a5), d2-d3/a0-a1
0063f2: 4e5d         unlk       a5
0063f4: 4e75         rts        
0063f6: 4e550000     link.w     a5, #$0
0063fa: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0063fe: 4fefffd8     lea.l      -$28(a7), a7
006402: 206f002c     movea.l    $2c(a7), a0
006406: 226f002c     movea.l    $2c(a7), a1
00640a: 20290008     move.l     $8(a1), d0
00640e: 9090         sub.l      (a0), d0
006410: 2f400020     move.l     d0, $20(a7)
006414: 206f002c     movea.l    $2c(a7), a0
006418: 226f002c     movea.l    $2c(a7), a1
00641c: 2029000c     move.l     $c(a1), d0
006420: 90a80004     sub.l      $4(a0), d0
006424: 2f40001c     move.l     d0, $1c(a7)
006428: 206f002c     movea.l    $2c(a7), a0
00642c: 226f0028     movea.l    $28(a7), a1
006430: 2011         move.l     (a1), d0
006432: 9090         sub.l      (a0), d0
006434: 2f400018     move.l     d0, $18(a7)
006438: 206f002c     movea.l    $2c(a7), a0
00643c: 226f0028     movea.l    $28(a7), a1
006440: 20290004     move.l     $4(a1), d0
006444: 90a80004     sub.l      $4(a0), d0
006448: 2f400014     move.l     d0, $14(a7)
00644c: 486f0008     pea.l      $8(a7)
006450: 2f2f0020     move.l     $20(a7), -(a7)
006454: 2f2f001c     move.l     $1c(a7), -(a7)
006458: 222f002c     move.l     $2c(a7), d1
00645c: 202f0024     move.l     $24(a7), d0
006460: 610031e0     bsr.w      $9642
006464: 4fef000c     lea.l      $c(a7), a7
006468: 41ef0008     lea.l      $8(a7), a0
00646c: 2008         move.l     a0, d0
00646e: 610032d2     bsr.w      $9742
006472: 4a80         tst.l      d0
006474: 6e10         bgt.b      $6486
006476: 222f0014     move.l     $14(a7), d1
00647a: 202f0018     move.l     $18(a7), d0
00647e: 6100312a     bsr.w      $95aa
006482: 60000078     bra.w      $64fc
006486: 206f002c     movea.l    $2c(a7), a0
00648a: 2f6800180010 move.l     $18(a0), $10(a7)
006490: 4857         pea.l      (a7)
006492: 222f0014     move.l     $14(a7), d1
006496: 202f0014     move.l     $14(a7), d0
00649a: 610030ec     bsr.w      $9588
00649e: 588f         addq.l     #$4, a7
0064a0: 41d7         lea.l      (a7), a0
0064a2: 2208         move.l     a0, d1
0064a4: 41ef0008     lea.l      $8(a7), a0
0064a8: 2008         move.l     a0, d0
0064aa: 61003380     bsr.w      $982c
0064ae: 4a80         tst.l      d0
0064b0: 6e06         bgt.b      $64b8
0064b2: 4aaf0010     tst.l      $10(a7)
0064b6: 6628         bne.b      $64e0
0064b8: 206f002c     movea.l    $2c(a7), a0
0064bc: 226f0028     movea.l    $28(a7), a1
0064c0: 2011         move.l     (a1), d0
0064c2: 90a80008     sub.l      $8(a0), d0
0064c6: 2f400018     move.l     d0, $18(a7)
0064ca: 206f002c     movea.l    $2c(a7), a0
0064ce: 226f0028     movea.l    $28(a7), a1
0064d2: 20290004     move.l     $4(a1), d0
0064d6: 90a8000c     sub.l      $c(a0), d0
0064da: 2f400014     move.l     d0, $14(a7)
0064de: 6096         bra.b      $6476
0064e0: 2f2f0010     move.l     $10(a7), -(a7)
0064e4: 2f2f0024     move.l     $24(a7), -(a7)
0064e8: 2f2f001c     move.l     $1c(a7), -(a7)
0064ec: 222f0028     move.l     $28(a7), d1
0064f0: 202f0024     move.l     $24(a7), d0
0064f4: 6100321a     bsr.w      $9710
0064f8: 4fef000c     lea.l      $c(a7), a7
0064fc: 2f400024     move.l     d0, $24(a7)
006500: 4aaf0024     tst.l      $24(a7)
006504: 6c08         bge.b      $650e
006506: 202f0024     move.l     $24(a7), d0
00650a: 4480         neg.l      d0
00650c: 6004         bra.b      $6512
00650e: 202f0024     move.l     $24(a7), d0
006512: 4fef0028     lea.l      $28(a7), a7
006516: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00651c: 4e5d         unlk       a5
00651e: 4e75         rts        
006520: 4e550000     link.w     a5, #$0
006524: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006528: 4fefffe8     lea.l      -$18(a7), a7
00652c: 206f001c     movea.l    $1c(a7), a0
006530: 226f001c     movea.l    $1c(a7), a1
006534: 20290008     move.l     $8(a1), d0
006538: 9090         sub.l      (a0), d0
00653a: 2f400010     move.l     d0, $10(a7)
00653e: 206f001c     movea.l    $1c(a7), a0
006542: 226f001c     movea.l    $1c(a7), a1
006546: 2029000c     move.l     $c(a1), d0
00654a: 90a80004     sub.l      $4(a0), d0
00654e: 2f40000c     move.l     d0, $c(a7)
006552: 206f001c     movea.l    $1c(a7), a0
006556: 226f0018     movea.l    $18(a7), a1
00655a: 2011         move.l     (a1), d0
00655c: 9090         sub.l      (a0), d0
00655e: 2f400008     move.l     d0, $8(a7)
006562: 206f001c     movea.l    $1c(a7), a0
006566: 226f0018     movea.l    $18(a7), a1
00656a: 20290004     move.l     $4(a1), d0
00656e: 90a80004     sub.l      $4(a0), d0
006572: 2f400004     move.l     d0, $4(a7)
006576: 206f001c     movea.l    $1c(a7), a0
00657a: 2ea80018     move.l     $18(a0), (a7)
00657e: 4a97         tst.l      (a7)
006580: 671c         beq.b      $659e
006582: 2f17         move.l     (a7), -(a7)
006584: 2f2f0014     move.l     $14(a7), -(a7)
006588: 2f2f000c     move.l     $c(a7), -(a7)
00658c: 222f0018     move.l     $18(a7), d1
006590: 202f0014     move.l     $14(a7), d0
006594: 6100317a     bsr.w      $9710
006598: 4fef000c     lea.l      $c(a7), a7
00659c: 600c         bra.b      $65aa
00659e: 222f0004     move.l     $4(a7), d1
0065a2: 202f0008     move.l     $8(a7), d0
0065a6: 61003002     bsr.w      $95aa
0065aa: 2f400014     move.l     d0, $14(a7)
0065ae: 202f0014     move.l     $14(a7), d0
0065b2: 4fef0018     lea.l      $18(a7), a7
0065b6: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0065bc: 4e5d         unlk       a5
0065be: 4e75         rts        
0065c0: 4e550000     link.w     a5, #$0
0065c4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0065c8: 4fefffe0     lea.l      -$20(a7), a7
0065cc: 206f0024     movea.l    $24(a7), a0
0065d0: 226f0024     movea.l    $24(a7), a1
0065d4: 20290008     move.l     $8(a1), d0
0065d8: 9090         sub.l      (a0), d0
0065da: 2f40001c     move.l     d0, $1c(a7)
0065de: 206f0024     movea.l    $24(a7), a0
0065e2: 226f0024     movea.l    $24(a7), a1
0065e6: 2029000c     move.l     $c(a1), d0
0065ea: 90a80004     sub.l      $4(a0), d0
0065ee: 2f400018     move.l     d0, $18(a7)
0065f2: 206f0024     movea.l    $24(a7), a0
0065f6: 226f0020     movea.l    $20(a7), a1
0065fa: 2011         move.l     (a1), d0
0065fc: 9090         sub.l      (a0), d0
0065fe: 2f400014     move.l     d0, $14(a7)
006602: 206f0024     movea.l    $24(a7), a0
006606: 226f0020     movea.l    $20(a7), a1
00660a: 20290004     move.l     $4(a1), d0
00660e: 90a80004     sub.l      $4(a0), d0
006612: 2f400010     move.l     d0, $10(a7)
006616: 206f0024     movea.l    $24(a7), a0
00661a: 2f680018000c move.l     $18(a0), $c(a7)
006620: 4aaf000c     tst.l      $c(a7)
006624: 674c         beq.b      $6672
006626: 2f2f000c     move.l     $c(a7), -(a7)
00662a: 2f2f001c     move.l     $1c(a7), -(a7)
00662e: 2f2f0018     move.l     $18(a7), -(a7)
006632: 222f0028     move.l     $28(a7), d1
006636: 202f0020     move.l     $20(a7), d0
00663a: 610030a2     bsr.w      $96de
00663e: 4fef000c     lea.l      $c(a7), a7
006642: 2f400008     move.l     d0, $8(a7)
006646: 4857         pea.l      (a7)
006648: 2f2f0010     move.l     $10(a7), -(a7)
00664c: 222f0010     move.l     $10(a7), d1
006650: 7010         moveq      #$10, d0
006652: d0af002c     add.l      $2c(a7), d0
006656: 6100ef64     bsr.w      $55bc
00665a: 508f         addq.l     #$8, a7
00665c: 2f2f0038     move.l     $38(a7), -(a7)
006660: 41ef0004     lea.l      $4(a7), a0
006664: 2208         move.l     a0, d1
006666: 202f0028     move.l     $28(a7), d0
00666a: 6100f01c     bsr.w      $5688
00666e: 588f         addq.l     #$4, a7
006670: 6010         bra.b      $6682
006672: 206f0038     movea.l    $38(a7), a0
006676: 226f0024     movea.l    $24(a7), a1
00667a: 2091         move.l     (a1), (a0)
00667c: 216900040004 move.l     $4(a1), $4(a0)
006682: 4fef0020     lea.l      $20(a7), a7
006686: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00668c: 4e5d         unlk       a5
00668e: 4e75         rts        
006690: 4e550000     link.w     a5, #$0
006694: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006698: 4fefffe8     lea.l      -$18(a7), a7
00669c: 206f001c     movea.l    $1c(a7), a0
0066a0: 226f001c     movea.l    $1c(a7), a1
0066a4: 2011         move.l     (a1), d0
0066a6: 90a80008     sub.l      $8(a0), d0
0066aa: 2f400010     move.l     d0, $10(a7)
0066ae: 206f001c     movea.l    $1c(a7), a0
0066b2: 226f001c     movea.l    $1c(a7), a1
0066b6: 20290004     move.l     $4(a1), d0
0066ba: 90a8000c     sub.l      $c(a0), d0
0066be: 2f40000c     move.l     d0, $c(a7)
0066c2: 206f001c     movea.l    $1c(a7), a0
0066c6: 226f0018     movea.l    $18(a7), a1
0066ca: 2011         move.l     (a1), d0
0066cc: 90a80008     sub.l      $8(a0), d0
0066d0: 2f400008     move.l     d0, $8(a7)
0066d4: 206f001c     movea.l    $1c(a7), a0
0066d8: 226f0018     movea.l    $18(a7), a1
0066dc: 20290004     move.l     $4(a1), d0
0066e0: 90a8000c     sub.l      $c(a0), d0
0066e4: 2f400004     move.l     d0, $4(a7)
0066e8: 206f001c     movea.l    $1c(a7), a0
0066ec: 2ea80018     move.l     $18(a0), (a7)
0066f0: 4a97         tst.l      (a7)
0066f2: 671c         beq.b      $6710
0066f4: 2f17         move.l     (a7), -(a7)
0066f6: 2f2f0010     move.l     $10(a7), -(a7)
0066fa: 2f2f000c     move.l     $c(a7), -(a7)
0066fe: 222f001c     move.l     $1c(a7), d1
006702: 202f0014     move.l     $14(a7), d0
006706: 61002fd6     bsr.w      $96de
00670a: 4fef000c     lea.l      $c(a7), a7
00670e: 600c         bra.b      $671c
006710: 222f0004     move.l     $4(a7), d1
006714: 202f0008     move.l     $8(a7), d0
006718: 61002e90     bsr.w      $95aa
00671c: 2f400014     move.l     d0, $14(a7)
006720: 202f0014     move.l     $14(a7), d0
006724: 4fef0018     lea.l      $18(a7), a7
006728: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00672e: 4e5d         unlk       a5
006730: 4e75         rts        
006732: 4e550000     link.w     a5, #$0
006736: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00673a: 4fefffe0     lea.l      -$20(a7), a7
00673e: 206f0024     movea.l    $24(a7), a0
006742: 226f0024     movea.l    $24(a7), a1
006746: 20290008     move.l     $8(a1), d0
00674a: 9090         sub.l      (a0), d0
00674c: 2f40001c     move.l     d0, $1c(a7)
006750: 206f0024     movea.l    $24(a7), a0
006754: 226f0024     movea.l    $24(a7), a1
006758: 2029000c     move.l     $c(a1), d0
00675c: 90a80004     sub.l      $4(a0), d0
006760: 2f400018     move.l     d0, $18(a7)
006764: 206f0024     movea.l    $24(a7), a0
006768: 226f0020     movea.l    $20(a7), a1
00676c: 2011         move.l     (a1), d0
00676e: 9090         sub.l      (a0), d0
006770: 2f400014     move.l     d0, $14(a7)
006774: 206f0024     movea.l    $24(a7), a0
006778: 226f0020     movea.l    $20(a7), a1
00677c: 20290004     move.l     $4(a1), d0
006780: 90a80004     sub.l      $4(a0), d0
006784: 2f400010     move.l     d0, $10(a7)
006788: 206f0024     movea.l    $24(a7), a0
00678c: 2f680018000c move.l     $18(a0), $c(a7)
006792: 4aaf000c     tst.l      $c(a7)
006796: 67000082     beq.w      $681a
00679a: 2f2f000c     move.l     $c(a7), -(a7)
00679e: 2f2f001c     move.l     $1c(a7), -(a7)
0067a2: 2f2f0018     move.l     $18(a7), -(a7)
0067a6: 222f0028     move.l     $28(a7), d1
0067aa: 202f0020     move.l     $20(a7), d0
0067ae: 61002f2e     bsr.w      $96de
0067b2: 4fef000c     lea.l      $c(a7), a7
0067b6: 2f400008     move.l     d0, $8(a7)
0067ba: 4aaf0008     tst.l      $8(a7)
0067be: 6e12         bgt.b      $67d2
0067c0: 206f0038     movea.l    $38(a7), a0
0067c4: 226f0024     movea.l    $24(a7), a1
0067c8: 2091         move.l     (a1), (a0)
0067ca: 216900040004 move.l     $4(a1), $4(a0)
0067d0: 6048         bra.b      $681a
0067d2: 202f0008     move.l     $8(a7), d0
0067d6: b0af000c     cmp.l      $c(a7), d0
0067da: 6d14         blt.b      $67f0
0067dc: 206f0038     movea.l    $38(a7), a0
0067e0: 226f0024     movea.l    $24(a7), a1
0067e4: 20a90008     move.l     $8(a1), (a0)
0067e8: 2169000c0004 move.l     $c(a1), $4(a0)
0067ee: 602a         bra.b      $681a
0067f0: 4857         pea.l      (a7)
0067f2: 2f2f0010     move.l     $10(a7), -(a7)
0067f6: 222f0010     move.l     $10(a7), d1
0067fa: 7010         moveq      #$10, d0
0067fc: d0af002c     add.l      $2c(a7), d0
006800: 6100edba     bsr.w      $55bc
006804: 508f         addq.l     #$8, a7
006806: 2f2f0038     move.l     $38(a7), -(a7)
00680a: 41ef0004     lea.l      $4(a7), a0
00680e: 2208         move.l     a0, d1
006810: 202f0028     move.l     $28(a7), d0
006814: 6100ee72     bsr.w      $5688
006818: 588f         addq.l     #$4, a7
00681a: 4fef0020     lea.l      $20(a7), a7
00681e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
006824: 4e5d         unlk       a5
006826: 4e75         rts        
006828: 4e550000     link.w     a5, #$0
00682c: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006830: 4fefffe4     lea.l      -$1c(a7), a7
006834: 206f0020     movea.l    $20(a7), a0
006838: 2f6800100018 move.l     $10(a0), $18(a7)
00683e: 206f0020     movea.l    $20(a7), a0
006842: 2f6800140014 move.l     $14(a0), $14(a7)
006848: 206f0020     movea.l    $20(a7), a0
00684c: 226f001c     movea.l    $1c(a7), a1
006850: 2011         move.l     (a1), d0
006852: 9090         sub.l      (a0), d0
006854: 2f400010     move.l     d0, $10(a7)
006858: 206f0020     movea.l    $20(a7), a0
00685c: 226f001c     movea.l    $1c(a7), a1
006860: 20290004     move.l     $4(a1), d0
006864: 90a80004     sub.l      $4(a0), d0
006868: 2f40000c     move.l     d0, $c(a7)
00686c: 206f0020     movea.l    $20(a7), a0
006870: 2f6800180008 move.l     $18(a0), $8(a7)
006876: 2f2f0008     move.l     $8(a7), -(a7)
00687a: 2f2f0018     move.l     $18(a7), -(a7)
00687e: 2f2f0014     move.l     $14(a7), -(a7)
006882: 222f0024     move.l     $24(a7), d1
006886: 202f001c     move.l     $1c(a7), d0
00688a: 61002e52     bsr.w      $96de
00688e: 4fef000c     lea.l      $c(a7), a7
006892: 206f003c     movea.l    $3c(a7), a0
006896: 2080         move.l     d0, (a0)
006898: 2f2f0008     move.l     $8(a7), -(a7)
00689c: 2f2f001c     move.l     $1c(a7), -(a7)
0068a0: 2f2f0014     move.l     $14(a7), -(a7)
0068a4: 222f0020     move.l     $20(a7), d1
0068a8: 202f001c     move.l     $1c(a7), d0
0068ac: 61002e62     bsr.w      $9710
0068b0: 4fef000c     lea.l      $c(a7), a7
0068b4: 206f0038     movea.l    $38(a7), a0
0068b8: 2080         move.l     d0, (a0)
0068ba: 206f003c     movea.l    $3c(a7), a0
0068be: 4a90         tst.l      (a0)
0068c0: 6c12         bge.b      $68d4
0068c2: 206f0034     movea.l    $34(a7), a0
0068c6: 226f0020     movea.l    $20(a7), a1
0068ca: 2091         move.l     (a1), (a0)
0068cc: 216900040004 move.l     $4(a1), $4(a0)
0068d2: 601e         bra.b      $68f2
0068d4: 206f003c     movea.l    $3c(a7), a0
0068d8: 202f0008     move.l     $8(a7), d0
0068dc: b090         cmp.l      (a0), d0
0068de: 6c16         bge.b      $68f6
0068e0: 206f0034     movea.l    $34(a7), a0
0068e4: 226f0020     movea.l    $20(a7), a1
0068e8: 20a90008     move.l     $8(a1), (a0)
0068ec: 2169000c0004 move.l     $c(a1), $4(a0)
0068f2: 7000         moveq      #$0, d0
0068f4: 602e         bra.b      $6924
0068f6: 4857         pea.l      (a7)
0068f8: 2f2f000c     move.l     $c(a7), -(a7)
0068fc: 206f0044     movea.l    $44(a7), a0
006900: 2210         move.l     (a0), d1
006902: 7010         moveq      #$10, d0
006904: d0af0028     add.l      $28(a7), d0
006908: 6100ecb2     bsr.w      $55bc
00690c: 508f         addq.l     #$8, a7
00690e: 2f2f0034     move.l     $34(a7), -(a7)
006912: 41ef0004     lea.l      $4(a7), a0
006916: 2208         move.l     a0, d1
006918: 202f0024     move.l     $24(a7), d0
00691c: 6100ed6a     bsr.w      $5688
006920: 588f         addq.l     #$4, a7
006922: 7001         moveq      #$1, d0
006924: 4fef001c     lea.l      $1c(a7), a7
006928: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00692e: 4e5d         unlk       a5
006930: 4e75         rts        
006932: 4e550000     link.w     a5, #$0
006936: 48e7c080     movem.l    d0-d1/a0, -(a7)
00693a: 2057         movea.l    (a7), a0
00693c: 2010         move.l     (a0), d0
00693e: 2057         movea.l    (a7), a0
006940: d0a80010     add.l      $10(a0), d0
006944: 6d0e         blt.b      $6954
006946: 2057         movea.l    (a7), a0
006948: 2010         move.l     (a0), d0
00694a: 2057         movea.l    (a7), a0
00694c: d0a80010     add.l      $10(a0), d0
006950: e280         asr.l      #$1, d0
006952: 6010         bra.b      $6964
006954: 2057         movea.l    (a7), a0
006956: 2010         move.l     (a0), d0
006958: 2057         movea.l    (a7), a0
00695a: d0a80010     add.l      $10(a0), d0
00695e: 4480         neg.l      d0
006960: e280         asr.l      #$1, d0
006962: 4480         neg.l      d0
006964: 206f0004     movea.l    $4(a7), a0
006968: 2080         move.l     d0, (a0)
00696a: 2057         movea.l    (a7), a0
00696c: 20280004     move.l     $4(a0), d0
006970: 2057         movea.l    (a7), a0
006972: d0a80014     add.l      $14(a0), d0
006976: 6d10         blt.b      $6988
006978: 2057         movea.l    (a7), a0
00697a: 20280004     move.l     $4(a0), d0
00697e: 2057         movea.l    (a7), a0
006980: d0a80014     add.l      $14(a0), d0
006984: e280         asr.l      #$1, d0
006986: 6012         bra.b      $699a
006988: 2057         movea.l    (a7), a0
00698a: 20280004     move.l     $4(a0), d0
00698e: 2057         movea.l    (a7), a0
006990: d0a80014     add.l      $14(a0), d0
006994: 4480         neg.l      d0
006996: e280         asr.l      #$1, d0
006998: 4480         neg.l      d0
00699a: 206f0004     movea.l    $4(a7), a0
00699e: 21400004     move.l     d0, $4(a0)
0069a2: 4ced0100fffc movem.l    -$4(a5), a0
0069a8: 4e5d         unlk       a5
0069aa: 4e75         rts        
0069ac: 4e550000     link.w     a5, #$0
0069b0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0069b4: 4fefffee     lea.l      -$12(a7), a7
0069b8: 206f0012     movea.l    $12(a7), a0
0069bc: 2010         move.l     (a0), d0
0069be: 2f400004     move.l     d0, $4(a7)
0069c2: 2f40000c     move.l     d0, $c(a7)
0069c6: 206f0012     movea.l    $12(a7), a0
0069ca: 20280004     move.l     $4(a0), d0
0069ce: 2e80         move.l     d0, (a7)
0069d0: 2f400008     move.l     d0, $8(a7)
0069d4: 3f7c00010010 move.w     #$1, $10(a7)
0069da: 600000b0     bra.w      $6a8c
0069de: 302f0010     move.w     $10(a7), d0
0069e2: 48c0         ext.l      d0
0069e4: 206f0012     movea.l    $12(a7), a0
0069e8: 222f000c     move.l     $c(a7), d1
0069ec: b2b00e00     cmp.l      (a0, d0.l * 8), d1
0069f0: 6c06         bge.b      $69f8
0069f2: 202f000c     move.l     $c(a7), d0
0069f6: 600e         bra.b      $6a06
0069f8: 302f0010     move.w     $10(a7), d0
0069fc: 48c0         ext.l      d0
0069fe: 206f0012     movea.l    $12(a7), a0
006a02: 20300e00     move.l     (a0, d0.l * 8), d0
006a06: 2f40000c     move.l     d0, $c(a7)
006a0a: 302f0010     move.w     $10(a7), d0
006a0e: 48c0         ext.l      d0
006a10: 206f0012     movea.l    $12(a7), a0
006a14: 222f0008     move.l     $8(a7), d1
006a18: b2b00e04     cmp.l      $4(a0, d0.l), d1
006a1c: 6c06         bge.b      $6a24
006a1e: 202f0008     move.l     $8(a7), d0
006a22: 600e         bra.b      $6a32
006a24: 302f0010     move.w     $10(a7), d0
006a28: 48c0         ext.l      d0
006a2a: 206f0012     movea.l    $12(a7), a0
006a2e: 20300e04     move.l     $4(a0, d0.l), d0
006a32: 2f400008     move.l     d0, $8(a7)
006a36: 302f0010     move.w     $10(a7), d0
006a3a: 48c0         ext.l      d0
006a3c: 206f0012     movea.l    $12(a7), a0
006a40: 222f0004     move.l     $4(a7), d1
006a44: b2b00e00     cmp.l      (a0, d0.l * 8), d1
006a48: 6f06         ble.b      $6a50
006a4a: 202f0004     move.l     $4(a7), d0
006a4e: 600e         bra.b      $6a5e
006a50: 302f0010     move.w     $10(a7), d0
006a54: 48c0         ext.l      d0
006a56: 206f0012     movea.l    $12(a7), a0
006a5a: 20300e00     move.l     (a0, d0.l * 8), d0
006a5e: 2f400004     move.l     d0, $4(a7)
006a62: 302f0010     move.w     $10(a7), d0
006a66: 48c0         ext.l      d0
006a68: 206f0012     movea.l    $12(a7), a0
006a6c: 2217         move.l     (a7), d1
006a6e: b2b00e04     cmp.l      $4(a0, d0.l), d1
006a72: 6f04         ble.b      $6a78
006a74: 2017         move.l     (a7), d0
006a76: 600e         bra.b      $6a86
006a78: 302f0010     move.w     $10(a7), d0
006a7c: 48c0         ext.l      d0
006a7e: 206f0012     movea.l    $12(a7), a0
006a82: 20300e04     move.l     $4(a0, d0.l), d0
006a86: 2e80         move.l     d0, (a7)
006a88: 526f0010     addq.w     #$1, $10(a7)
006a8c: 0c6f00040010 cmpi.w     #$4, $10(a7)
006a92: 6d00ff4a     blt.w      $69de
006a96: 206f0016     movea.l    $16(a7), a0
006a9a: 20af000c     move.l     $c(a7), (a0)
006a9e: 206f0016     movea.l    $16(a7), a0
006aa2: 216f00080004 move.l     $8(a7), $4(a0)
006aa8: 206f0016     movea.l    $16(a7), a0
006aac: 216f00040008 move.l     $4(a7), $8(a0)
006ab2: 206f0016     movea.l    $16(a7), a0
006ab6: 2157000c     move.l     (a7), $c(a0)
006aba: 4fef0012     lea.l      $12(a7), a7
006abe: 4ced0100fffc movem.l    -$4(a5), a0
006ac4: 4e5d         unlk       a5
006ac6: 4e75         rts        
006ac8: 4e550000     link.w     a5, #$0
006acc: 48e7f080     movem.l    d0-d3/a0, -(a7)
006ad0: 4feffff4     lea.l      -$c(a7), a7
006ad4: 42af0008     clr.l      $8(a7)
006ad8: 600000ae     bra.w      $6b88
006adc: 206f000c     movea.l    $c(a7), a0
006ae0: 202f0008     move.l     $8(a7), d0
006ae4: 20300e00     move.l     (a0, d0.l * 8), d0
006ae8: 4e4f         trap       #$f
006aea: 00204cef     ori.b      #$ef, -(a0)
006aee: 000c         .dc.w      $000c
006af0: 00284e4f0012 ori.b      #$4f, $12(a0)
006af6: 48d70003     movem.l    d0-d1, (a7)
006afa: 4a97         tst.l      (a7)
006afc: 6f12         ble.b      $6b10
006afe: 7600         moveq      #$0, d3
006b00: 243c3fe00000 move.l     #$3fe00000, d2
006b06: 4cd70003     movem.l    (a7), d0-d1
006b0a: 4e4f         trap       #$f
006b0c: 000e         .dc.w      $000e
006b0e: 6010         bra.b      $6b20
006b10: 7600         moveq      #$0, d3
006b12: 243c3fe00000 move.l     #$3fe00000, d2
006b18: 4cd70003     movem.l    (a7), d0-d1
006b1c: 4e4f         trap       #$f
006b1e: 00104e4f     ori.b      #$4f, (a0)
006b22: 0024206f     ori.b      #$6f, -(a4)
006b26: 0030222f0008 ori.b      #$2f, $8(a0, d0.w)
006b2c: 21801e00     move.l     d0, (a0, d1.l * 8)
006b30: 206f000c     movea.l    $c(a7), a0
006b34: 202f0008     move.l     $8(a7), d0
006b38: 20300e04     move.l     $4(a0, d0.l), d0
006b3c: 4e4f         trap       #$f
006b3e: 00204cef     ori.b      #$ef, -(a0)
006b42: 000c         .dc.w      $000c
006b44: 00284e4f0012 ori.b      #$4f, $12(a0)
006b4a: 48d70003     movem.l    d0-d1, (a7)
006b4e: 4a97         tst.l      (a7)
006b50: 6f12         ble.b      $6b64
006b52: 7600         moveq      #$0, d3
006b54: 243c3fe00000 move.l     #$3fe00000, d2
006b5a: 4cd70003     movem.l    (a7), d0-d1
006b5e: 4e4f         trap       #$f
006b60: 000e         .dc.w      $000e
006b62: 6010         bra.b      $6b74
006b64: 7600         moveq      #$0, d3
006b66: 243c3fe00000 move.l     #$3fe00000, d2
006b6c: 4cd70003     movem.l    (a7), d0-d1
006b70: 4e4f         trap       #$f
006b72: 00104e4f     ori.b      #$4f, (a0)
006b76: 0024206f     ori.b      #$6f, -(a4)
006b7a: 0030222f0008 ori.b      #$2f, $8(a0, d0.w)
006b80: 21801e04     move.l     d0, $4(a0, d1.l)
006b84: 52af0008     addq.l     #$1, $8(a7)
006b88: 7004         moveq      #$4, d0
006b8a: b0af0008     cmp.l      $8(a7), d0
006b8e: 6e00ff4c     bgt.w      $6adc
006b92: 4fef000c     lea.l      $c(a7), a7
006b96: 4ced010efff0 movem.l    -$10(a5), d1-d3/a0
006b9c: 4e5d         unlk       a5
006b9e: 4e75         rts        
006ba0: 4e550000     link.w     a5, #$0
006ba4: 48e7c080     movem.l    d0-d1/a0, -(a7)
006ba8: 598f         subq.l     #$4, a7
006baa: 4297         clr.l      (a7)
006bac: 6038         bra.b      $6be6
006bae: 206f0008     movea.l    $8(a7), a0
006bb2: 2010         move.l     (a0), d0
006bb4: 206f0004     movea.l    $4(a7), a0
006bb8: 2217         move.l     (a7), d1
006bba: d0b01e00     add.l      (a0, d1.l * 8), d0
006bbe: 206f0018     movea.l    $18(a7), a0
006bc2: 2217         move.l     (a7), d1
006bc4: 21801e00     move.l     d0, (a0, d1.l * 8)
006bc8: 206f0008     movea.l    $8(a7), a0
006bcc: 20280004     move.l     $4(a0), d0
006bd0: 206f0004     movea.l    $4(a7), a0
006bd4: 2217         move.l     (a7), d1
006bd6: d0b01e04     add.l      $4(a0, d1.l), d0
006bda: 206f0018     movea.l    $18(a7), a0
006bde: 2217         move.l     (a7), d1
006be0: 21801e04     move.l     d0, $4(a0, d1.l)
006be4: 5297         addq.l     #$1, (a7)
006be6: 7004         moveq      #$4, d0
006be8: b097         cmp.l      (a7), d0
006bea: 6ec2         bgt.b      $6bae
006bec: 588f         addq.l     #$4, a7
006bee: 4ced0100fffc movem.l    -$4(a5), a0
006bf4: 4e5d         unlk       a5
006bf6: 4e75         rts        
006bf8: 4e550000     link.w     a5, #$0
006bfc: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006c00: 4fefffdc     lea.l      -$24(a7), a7
006c04: 206f003c     movea.l    $3c(a7), a0
006c08: 226f0024     movea.l    $24(a7), a1
006c0c: 7007         moveq      #$7, d0
006c0e: 20d9         move.l     (a1)+, (a0)+
006c10: 51c8fffc     dbra       d0, $6c0e
006c14: 7018         moveq      #$18, d0
006c16: d0af003c     add.l      $3c(a7), d0
006c1a: 2f40001c     move.l     d0, $1c(a7)
006c1e: 42af0020     clr.l      $20(a7)
006c22: 600000c2     bra.w      $6ce6
006c26: 202f0020     move.l     $20(a7), d0
006c2a: e788         lsl.l      #$3, d0
006c2c: d0af003c     add.l      $3c(a7), d0
006c30: 2f400018     move.l     d0, $18(a7)
006c34: 206f001c     movea.l    $1c(a7), a0
006c38: 226f0018     movea.l    $18(a7), a1
006c3c: 2011         move.l     (a1), d0
006c3e: 9090         sub.l      (a0), d0
006c40: 2f00         move.l     d0, -(a7)
006c42: 206f0020     movea.l    $20(a7), a0
006c46: 226f002c     movea.l    $2c(a7), a1
006c4a: 20290004     move.l     $4(a1), d0
006c4e: 90a80004     sub.l      $4(a0), d0
006c52: 2f00         move.l     d0, -(a7)
006c54: 206f0024     movea.l    $24(a7), a0
006c58: 226f0020     movea.l    $20(a7), a1
006c5c: 20290004     move.l     $4(a1), d0
006c60: 90a80004     sub.l      $4(a0), d0
006c64: 2200         move.l     d0, d1
006c66: 206f0024     movea.l    $24(a7), a0
006c6a: 226f0030     movea.l    $30(a7), a1
006c6e: 2011         move.l     (a1), d0
006c70: 9090         sub.l      (a0), d0
006c72: 61002a00     bsr.w      $9674
006c76: 508f         addq.l     #$8, a7
006c78: 4a80         tst.l      d0
006c7a: 6c60         bge.b      $6cdc
006c7c: 4857         pea.l      (a7)
006c7e: 222f001c     move.l     $1c(a7), d1
006c82: 202f0020     move.l     $20(a7), d0
006c86: 6100ed00     bsr.w      $5988
006c8a: 588f         addq.l     #$4, a7
006c8c: 486f0010     pea.l      $10(a7)
006c90: 41ef0004     lea.l      $4(a7), a0
006c94: 2208         move.l     a0, d1
006c96: 202f002c     move.l     $2c(a7), d0
006c9a: 6100f20c     bsr.w      $5ea8
006c9e: 588f         addq.l     #$4, a7
006ca0: 486f0010     pea.l      $10(a7)
006ca4: 41ef0014     lea.l      $14(a7), a0
006ca8: 2208         move.l     a0, d1
006caa: 202f002c     move.l     $2c(a7), d0
006cae: 6100edca     bsr.w      $5a7a
006cb2: 588f         addq.l     #$4, a7
006cb4: 2f2f001c     move.l     $1c(a7), -(a7)
006cb8: 41ef0014     lea.l      $14(a7), a0
006cbc: 2208         move.l     a0, d1
006cbe: 202f0020     move.l     $20(a7), d0
006cc2: 6100e9c4     bsr.w      $5688
006cc6: 588f         addq.l     #$4, a7
006cc8: 2f2f0018     move.l     $18(a7), -(a7)
006ccc: 41ef0014     lea.l      $14(a7), a0
006cd0: 2208         move.l     a0, d1
006cd2: 202f001c     move.l     $1c(a7), d0
006cd6: 6100e9b0     bsr.w      $5688
006cda: 588f         addq.l     #$4, a7
006cdc: 2f6f0018001c move.l     $18(a7), $1c(a7)
006ce2: 52af0020     addq.l     #$1, $20(a7)
006ce6: 7004         moveq      #$4, d0
006ce8: b0af0020     cmp.l      $20(a7), d0
006cec: 6e00ff38     bgt.w      $6c26
006cf0: 4fef0024     lea.l      $24(a7), a7
006cf4: 4ced0300fff8 movem.l    -$8(a5), a0-a1
006cfa: 4e5d         unlk       a5
006cfc: 4e75         rts        
006cfe: 4e550000     link.w     a5, #$0
006d02: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006d06: 4fefffec     lea.l      -$14(a7), a7
006d0a: 206f0014     movea.l    $14(a7), a0
006d0e: 226f0014     movea.l    $14(a7), a1
006d12: 2011         move.l     (a1), d0
006d14: 90a80008     sub.l      $8(a0), d0
006d18: 2f400010     move.l     d0, $10(a7)
006d1c: 206f0014     movea.l    $14(a7), a0
006d20: 226f0014     movea.l    $14(a7), a1
006d24: 20290004     move.l     $4(a1), d0
006d28: 90a8000c     sub.l      $c(a0), d0
006d2c: 2f40000c     move.l     d0, $c(a7)
006d30: 222f000c     move.l     $c(a7), d1
006d34: 202f0010     move.l     $10(a7), d0
006d38: 61002870     bsr.w      $95aa
006d3c: 2f400008     move.l     d0, $8(a7)
006d40: 2f2f0008     move.l     $8(a7), -(a7)
006d44: 222f001c     move.l     $1c(a7), d1
006d48: 202f0014     move.l     $14(a7), d0
006d4c: 61002890     bsr.w      $95de
006d50: 588f         addq.l     #$4, a7
006d52: 2f400010     move.l     d0, $10(a7)
006d56: 2f2f0008     move.l     $8(a7), -(a7)
006d5a: 222f001c     move.l     $1c(a7), d1
006d5e: 202f0010     move.l     $10(a7), d0
006d62: 6100287a     bsr.w      $95de
006d66: 588f         addq.l     #$4, a7
006d68: 2f40000c     move.l     d0, $c(a7)
006d6c: 4297         clr.l      (a7)
006d6e: 6050         bra.b      $6dc0
006d70: 206f0014     movea.l    $14(a7), a0
006d74: 2017         move.l     (a7), d0
006d76: 20300e00     move.l     (a0, d0.l * 8), d0
006d7a: d0af0010     add.l      $10(a7), d0
006d7e: d0af000c     add.l      $c(a7), d0
006d82: 206f002c     movea.l    $2c(a7), a0
006d86: 2217         move.l     (a7), d1
006d88: 21801e00     move.l     d0, (a0, d1.l * 8)
006d8c: 206f0014     movea.l    $14(a7), a0
006d90: 2017         move.l     (a7), d0
006d92: 20300e04     move.l     $4(a0, d0.l), d0
006d96: d0af000c     add.l      $c(a7), d0
006d9a: 90af0010     sub.l      $10(a7), d0
006d9e: 206f002c     movea.l    $2c(a7), a0
006da2: 2217         move.l     (a7), d1
006da4: 21801e04     move.l     d0, $4(a0, d1.l)
006da8: 2f6f00100004 move.l     $10(a7), $4(a7)
006dae: 2f6f000c0010 move.l     $c(a7), $10(a7)
006db4: 202f0004     move.l     $4(a7), d0
006db8: 4480         neg.l      d0
006dba: 2f40000c     move.l     d0, $c(a7)
006dbe: 5297         addq.l     #$1, (a7)
006dc0: 7004         moveq      #$4, d0
006dc2: b097         cmp.l      (a7), d0
006dc4: 6eaa         bgt.b      $6d70
006dc6: 4fef0014     lea.l      $14(a7), a7
006dca: 4ced0300fff8 movem.l    -$8(a5), a0-a1
006dd0: 4e5d         unlk       a5
006dd2: 4e75         rts        
006dd4: 4e550000     link.w     a5, #$0
006dd8: 48e7c080     movem.l    d0-d1/a0, -(a7)
006ddc: 2057         movea.l    (a7), a0
006dde: 2010         move.l     (a0), d0
006de0: 2057         movea.l    (a7), a0
006de2: d0a80008     add.l      $8(a0), d0
006de6: 6d0e         blt.b      $6df6
006de8: 2057         movea.l    (a7), a0
006dea: 2010         move.l     (a0), d0
006dec: 2057         movea.l    (a7), a0
006dee: d0a80008     add.l      $8(a0), d0
006df2: e280         asr.l      #$1, d0
006df4: 6010         bra.b      $6e06
006df6: 2057         movea.l    (a7), a0
006df8: 2010         move.l     (a0), d0
006dfa: 2057         movea.l    (a7), a0
006dfc: d0a80008     add.l      $8(a0), d0
006e00: 4480         neg.l      d0
006e02: e280         asr.l      #$1, d0
006e04: 4480         neg.l      d0
006e06: 206f0004     movea.l    $4(a7), a0
006e0a: 2080         move.l     d0, (a0)
006e0c: 2057         movea.l    (a7), a0
006e0e: 20280004     move.l     $4(a0), d0
006e12: 2057         movea.l    (a7), a0
006e14: d0a8000c     add.l      $c(a0), d0
006e18: 6d10         blt.b      $6e2a
006e1a: 2057         movea.l    (a7), a0
006e1c: 20280004     move.l     $4(a0), d0
006e20: 2057         movea.l    (a7), a0
006e22: d0a8000c     add.l      $c(a0), d0
006e26: e280         asr.l      #$1, d0
006e28: 6012         bra.b      $6e3c
006e2a: 2057         movea.l    (a7), a0
006e2c: 20280004     move.l     $4(a0), d0
006e30: 2057         movea.l    (a7), a0
006e32: d0a8000c     add.l      $c(a0), d0
006e36: 4480         neg.l      d0
006e38: e280         asr.l      #$1, d0
006e3a: 4480         neg.l      d0
006e3c: 206f0004     movea.l    $4(a7), a0
006e40: 21400004     move.l     d0, $4(a0)
006e44: 4ced0100fffc movem.l    -$4(a5), a0
006e4a: 4e5d         unlk       a5
006e4c: 4e75         rts        
006e4e: 4e550000     link.w     a5, #$0
006e52: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006e56: 4feffff4     lea.l      -$c(a7), a7
006e5a: 206f000c     movea.l    $c(a7), a0
006e5e: 226f000c     movea.l    $c(a7), a1
006e62: 20290008     move.l     $8(a1), d0
006e66: 9090         sub.l      (a0), d0
006e68: 2f400008     move.l     d0, $8(a7)
006e6c: 206f000c     movea.l    $c(a7), a0
006e70: 226f000c     movea.l    $c(a7), a1
006e74: 2029000c     move.l     $c(a1), d0
006e78: 90a80004     sub.l      $4(a0), d0
006e7c: 2f400004     move.l     d0, $4(a7)
006e80: 222f0004     move.l     $4(a7), d1
006e84: 202f0008     move.l     $8(a7), d0
006e88: 61002720     bsr.w      $95aa
006e8c: 2e80         move.l     d0, (a7)
006e8e: 2017         move.l     (a7), d0
006e90: 4fef000c     lea.l      $c(a7), a7
006e94: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
006e9a: 4e5d         unlk       a5
006e9c: 4e75         rts        
006e9e: 4e550000     link.w     a5, #$0
006ea2: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006ea6: 2057         movea.l    (a7), a0
006ea8: 2257         movea.l    (a7), a1
006eaa: 2029000c     move.l     $c(a1), d0
006eae: 90a80004     sub.l      $4(a0), d0
006eb2: 2200         move.l     d0, d1
006eb4: 2057         movea.l    (a7), a0
006eb6: 2257         movea.l    (a7), a1
006eb8: 20290008     move.l     $8(a1), d0
006ebc: 9090         sub.l      (a0), d0
006ebe: 610023de     bsr.w      $929e
006ec2: 4ced0302fff4 movem.l    -$c(a5), d1/a0-a1
006ec8: 4e5d         unlk       a5
006eca: 4e75         rts        
006ecc: 4e550000     link.w     a5, #$0
006ed0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006ed4: 4fefffee     lea.l      -$12(a7), a7
006ed8: 422f0011     clr.b      $11(a7)
006edc: 206f0016     movea.l    $16(a7), a0
006ee0: 226f0012     movea.l    $12(a7), a1
006ee4: 2011         move.l     (a1), d0
006ee6: b090         cmp.l      (a0), d0
006ee8: 6f3a         ble.b      $6f24
006eea: 206f0016     movea.l    $16(a7), a0
006eee: 226f0012     movea.l    $12(a7), a1
006ef2: 20290004     move.l     $4(a1), d0
006ef6: b0a80004     cmp.l      $4(a0), d0
006efa: 6f28         ble.b      $6f24
006efc: 206f0016     movea.l    $16(a7), a0
006f00: 226f0012     movea.l    $12(a7), a1
006f04: 2011         move.l     (a1), d0
006f06: b0a80008     cmp.l      $8(a0), d0
006f0a: 6c18         bge.b      $6f24
006f0c: 206f0016     movea.l    $16(a7), a0
006f10: 226f0012     movea.l    $12(a7), a1
006f14: 20290004     move.l     $4(a1), d0
006f18: b0a8000c     cmp.l      $c(a0), d0
006f1c: 6c06         bge.b      $6f24
006f1e: 002f00060011 ori.b      #$6, $11(a7)
006f24: 206f0016     movea.l    $16(a7), a0
006f28: 226f0012     movea.l    $12(a7), a1
006f2c: 20290008     move.l     $8(a1), d0
006f30: b090         cmp.l      (a0), d0
006f32: 6f3c         ble.b      $6f70
006f34: 206f0016     movea.l    $16(a7), a0
006f38: 226f0012     movea.l    $12(a7), a1
006f3c: 2029000c     move.l     $c(a1), d0
006f40: b0a80004     cmp.l      $4(a0), d0
006f44: 6f2a         ble.b      $6f70
006f46: 206f0016     movea.l    $16(a7), a0
006f4a: 226f0012     movea.l    $12(a7), a1
006f4e: 20290008     move.l     $8(a1), d0
006f52: b0a80008     cmp.l      $8(a0), d0
006f56: 6c18         bge.b      $6f70
006f58: 206f0016     movea.l    $16(a7), a0
006f5c: 226f0012     movea.l    $12(a7), a1
006f60: 2029000c     move.l     $c(a1), d0
006f64: b0a8000c     cmp.l      $c(a0), d0
006f68: 6c06         bge.b      $6f70
006f6a: 002f000a0011 ori.b      #$a, $11(a7)
006f70: 102f0011     move.b     $11(a7), d0
006f74: 4880         ext.w      d0
006f76: 08000002     btst.b     #$2, d0
006f7a: 670e         beq.b      $6f8a
006f7c: 102f0011     move.b     $11(a7), d0
006f80: 4880         ext.w      d0
006f82: 08000003     btst.b     #$3, d0
006f86: 660000d4     bne.w      $705c
006f8a: 206f0016     movea.l    $16(a7), a0
006f8e: 2e90         move.l     (a0), (a7)
006f90: 2f6800040004 move.l     $4(a0), $4(a7)
006f96: 206f0016     movea.l    $16(a7), a0
006f9a: 2f500008     move.l     (a0), $8(a7)
006f9e: 206f0016     movea.l    $16(a7), a0
006fa2: 2f68000c000c move.l     $c(a0), $c(a7)
006fa8: 41d7         lea.l      (a7), a0
006faa: 2208         move.l     a0, d1
006fac: 202f0012     move.l     $12(a7), d0
006fb0: 6100040a     bsr.w      $73bc
006fb4: 4a00         tst.b      d0
006fb6: 6706         beq.b      $6fbe
006fb8: 002f00120011 ori.b      #$12, $11(a7)
006fbe: 2eaf0008     move.l     $8(a7), (a7)
006fc2: 2f6f000c0004 move.l     $c(a7), $4(a7)
006fc8: 206f0016     movea.l    $16(a7), a0
006fcc: 2f6800080008 move.l     $8(a0), $8(a7)
006fd2: 2f68000c000c move.l     $c(a0), $c(a7)
006fd8: 41d7         lea.l      (a7), a0
006fda: 2208         move.l     a0, d1
006fdc: 202f0012     move.l     $12(a7), d0
006fe0: 610003da     bsr.w      $73bc
006fe4: 4a00         tst.b      d0
006fe6: 6706         beq.b      $6fee
006fe8: 002f00220011 ori.b      #$22, $11(a7)
006fee: 2eaf0008     move.l     $8(a7), (a7)
006ff2: 2f6f000c0004 move.l     $c(a7), $4(a7)
006ff8: 206f0016     movea.l    $16(a7), a0
006ffc: 2f6800080008 move.l     $8(a0), $8(a7)
007002: 206f0016     movea.l    $16(a7), a0
007006: 2f680004000c move.l     $4(a0), $c(a7)
00700c: 41d7         lea.l      (a7), a0
00700e: 2208         move.l     a0, d1
007010: 202f0012     move.l     $12(a7), d0
007014: 610003a6     bsr.w      $73bc
007018: 4a00         tst.b      d0
00701a: 6706         beq.b      $7022
00701c: 002fff820011 ori.b      #$82, $11(a7)
007022: 2eaf0008     move.l     $8(a7), (a7)
007026: 2f6f000c0004 move.l     $c(a7), $4(a7)
00702c: 206f0016     movea.l    $16(a7), a0
007030: 2f500008     move.l     (a0), $8(a7)
007034: 2f680004000c move.l     $4(a0), $c(a7)
00703a: 41d7         lea.l      (a7), a0
00703c: 2208         move.l     a0, d1
00703e: 202f0012     move.l     $12(a7), d0
007042: 61000378     bsr.w      $73bc
007046: 4a00         tst.b      d0
007048: 6706         beq.b      $7050
00704a: 002f00420011 ori.b      #$42, $11(a7)
007050: 4a2f0011     tst.b      $11(a7)
007054: 6606         bne.b      $705c
007056: 1f7c00010011 move.b     #$1, $11(a7)
00705c: 102f0011     move.b     $11(a7), d0
007060: 4fef0012     lea.l      $12(a7), a7
007064: 4ced0300fff8 movem.l    -$8(a5), a0-a1
00706a: 4e5d         unlk       a5
00706c: 4e75         rts        
00706e: 4e550000     link.w     a5, #$0
007072: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
007076: 598f         subq.l     #$4, a7
007078: 206f0004     movea.l    $4(a7), a0
00707c: 226f0004     movea.l    $4(a7), a1
007080: 20290008     move.l     $8(a1), d0
007084: 9090         sub.l      (a0), d0
007086: 2f00         move.l     d0, -(a7)
007088: 206f0008     movea.l    $8(a7), a0
00708c: 226f000c     movea.l    $c(a7), a1
007090: 20290004     move.l     $4(a1), d0
007094: 90a80004     sub.l      $4(a0), d0
007098: 2f00         move.l     d0, -(a7)
00709a: 206f000c     movea.l    $c(a7), a0
00709e: 226f000c     movea.l    $c(a7), a1
0070a2: 2029000c     move.l     $c(a1), d0
0070a6: 90a80004     sub.l      $4(a0), d0
0070aa: 2200         move.l     d0, d1
0070ac: 206f000c     movea.l    $c(a7), a0
0070b0: 226f0010     movea.l    $10(a7), a1
0070b4: 2011         move.l     (a1), d0
0070b6: 9090         sub.l      (a0), d0
0070b8: 610025ba     bsr.w      $9674
0070bc: 508f         addq.l     #$8, a7
0070be: 2e80         move.l     d0, (a7)
0070c0: 4a97         tst.l      (a7)
0070c2: 6f06         ble.b      $70ca
0070c4: 7002         moveq      #$2, d0
0070c6: 60000096     bra.w      $715e
0070ca: 4a97         tst.l      (a7)
0070cc: 6c06         bge.b      $70d4
0070ce: 7001         moveq      #$1, d0
0070d0: 6000008c     bra.w      $715e
0070d4: 206f0004     movea.l    $4(a7), a0
0070d8: 226f0008     movea.l    $8(a7), a1
0070dc: 2011         move.l     (a1), d0
0070de: b090         cmp.l      (a0), d0
0070e0: 6d10         blt.b      $70f2
0070e2: 206f0004     movea.l    $4(a7), a0
0070e6: 226f0008     movea.l    $8(a7), a1
0070ea: 2011         move.l     (a1), d0
0070ec: b0a80008     cmp.l      $8(a0), d0
0070f0: 6f1e         ble.b      $7110
0070f2: 206f0004     movea.l    $4(a7), a0
0070f6: 226f0008     movea.l    $8(a7), a1
0070fa: 2011         move.l     (a1), d0
0070fc: b0a80008     cmp.l      $8(a0), d0
007100: 6d5a         blt.b      $715c
007102: 206f0004     movea.l    $4(a7), a0
007106: 226f0008     movea.l    $8(a7), a1
00710a: 2011         move.l     (a1), d0
00710c: b090         cmp.l      (a0), d0
00710e: 6e4c         bgt.b      $715c
007110: 206f0004     movea.l    $4(a7), a0
007114: 226f0008     movea.l    $8(a7), a1
007118: 20290004     move.l     $4(a1), d0
00711c: b0a80004     cmp.l      $4(a0), d0
007120: 6d12         blt.b      $7134
007122: 206f0004     movea.l    $4(a7), a0
007126: 226f0008     movea.l    $8(a7), a1
00712a: 20290004     move.l     $4(a1), d0
00712e: b0a8000c     cmp.l      $c(a0), d0
007132: 6f24         ble.b      $7158
007134: 206f0004     movea.l    $4(a7), a0
007138: 226f0008     movea.l    $8(a7), a1
00713c: 20290004     move.l     $4(a1), d0
007140: b0a8000c     cmp.l      $c(a0), d0
007144: 6d16         blt.b      $715c
007146: 206f0004     movea.l    $4(a7), a0
00714a: 226f0008     movea.l    $8(a7), a1
00714e: 20290004     move.l     $4(a1), d0
007152: b0a80004     cmp.l      $4(a0), d0
007156: 6e04         bgt.b      $715c
007158: 7003         moveq      #$3, d0
00715a: 6002         bra.b      $715e
00715c: 7004         moveq      #$4, d0
00715e: 588f         addq.l     #$4, a7
007160: 4ced0300fff8 movem.l    -$8(a5), a0-a1
007166: 4e5d         unlk       a5
007168: 4e75         rts        
00716a: 4e550000     link.w     a5, #$0
00716e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
007172: 4fefffc8     lea.l      -$38(a7), a7
007176: 206f0038     movea.l    $38(a7), a0
00717a: 2f500034     move.l     (a0), $34(a7)
00717e: 206f0038     movea.l    $38(a7), a0
007182: 2f6800040030 move.l     $4(a0), $30(a7)
007188: 206f0038     movea.l    $38(a7), a0
00718c: 2f680008002c move.l     $8(a0), $2c(a7)
007192: 206f0038     movea.l    $38(a7), a0
007196: 2f68000c0028 move.l     $c(a0), $28(a7)
00719c: 42af001a     clr.l      $1a(a7)
0071a0: 426f0022     clr.w      $22(a7)
0071a4: 42af0024     clr.l      $24(a7)
0071a8: 60000122     bra.w      $72cc
0071ac: 202f0024     move.l     $24(a7), d0
0071b0: e788         lsl.l      #$3, d0
0071b2: d0af003c     add.l      $3c(a7), d0
0071b6: 2f400002     move.l     d0, $2(a7)
0071ba: 202f002c     move.l     $2c(a7), d0
0071be: 90af0034     sub.l      $34(a7), d0
0071c2: 2f00         move.l     d0, -(a7)
0071c4: 206f0006     movea.l    $6(a7), a0
0071c8: 20280004     move.l     $4(a0), d0
0071cc: 90af0034     sub.l      $34(a7), d0
0071d0: 2f00         move.l     d0, -(a7)
0071d2: 202f0030     move.l     $30(a7), d0
0071d6: 90af0038     sub.l      $38(a7), d0
0071da: 2200         move.l     d0, d1
0071dc: 206f000a     movea.l    $a(a7), a0
0071e0: 2010         move.l     (a0), d0
0071e2: 90af003c     sub.l      $3c(a7), d0
0071e6: 6100248c     bsr.w      $9674
0071ea: 508f         addq.l     #$8, a7
0071ec: 2f40001e     move.l     d0, $1e(a7)
0071f0: 4aaf001a     tst.l      $1a(a7)
0071f4: 660a         bne.b      $7200
0071f6: 2f6f001e001a move.l     $1e(a7), $1a(a7)
0071fc: 600000c4     bra.w      $72c2
007200: 4aaf001e     tst.l      $1e(a7)
007204: 6c06         bge.b      $720c
007206: 4aaf001a     tst.l      $1a(a7)
00720a: 6e10         bgt.b      $721c
00720c: 4aaf001e     tst.l      $1e(a7)
007210: 6f0000b0     ble.w      $72c2
007214: 4aaf001a     tst.l      $1a(a7)
007218: 6c0000a8     bge.w      $72c2
00721c: 2f6f001e001a move.l     $1e(a7), $1a(a7)
007222: 526f0022     addq.w     #$1, $22(a7)
007226: 0c6f00020022 cmpi.w     #$2, $22(a7)
00722c: 670000a8     beq.w      $72d6
007230: 206f0006     movea.l    $6(a7), a0
007234: 226f0002     movea.l    $2(a7), a1
007238: 2011         move.l     (a1), d0
00723a: 9090         sub.l      (a0), d0
00723c: 2f00         move.l     d0, -(a7)
00723e: 206f000a     movea.l    $a(a7), a0
007242: 202f0034     move.l     $34(a7), d0
007246: 90a80004     sub.l      $4(a0), d0
00724a: 2f00         move.l     d0, -(a7)
00724c: 206f000e     movea.l    $e(a7), a0
007250: 226f000a     movea.l    $a(a7), a1
007254: 20290004     move.l     $4(a1), d0
007258: 90a80004     sub.l      $4(a0), d0
00725c: 2200         move.l     d0, d1
00725e: 206f000e     movea.l    $e(a7), a0
007262: 202f003c     move.l     $3c(a7), d0
007266: 9090         sub.l      (a0), d0
007268: 6100240a     bsr.w      $9674
00726c: 508f         addq.l     #$8, a7
00726e: 2f400016     move.l     d0, $16(a7)
007272: 206f0006     movea.l    $6(a7), a0
007276: 226f0002     movea.l    $2(a7), a1
00727a: 2011         move.l     (a1), d0
00727c: 9090         sub.l      (a0), d0
00727e: 2f00         move.l     d0, -(a7)
007280: 206f000a     movea.l    $a(a7), a0
007284: 202f002c     move.l     $2c(a7), d0
007288: 90a80004     sub.l      $4(a0), d0
00728c: 2f00         move.l     d0, -(a7)
00728e: 206f000e     movea.l    $e(a7), a0
007292: 226f000a     movea.l    $a(a7), a1
007296: 20290004     move.l     $4(a1), d0
00729a: 90a80004     sub.l      $4(a0), d0
00729e: 2200         move.l     d0, d1
0072a0: 206f000e     movea.l    $e(a7), a0
0072a4: 202f0034     move.l     $34(a7), d0
0072a8: 9090         sub.l      (a0), d0
0072aa: 610023c8     bsr.w      $9674
0072ae: 508f         addq.l     #$8, a7
0072b0: 2f400012     move.l     d0, $12(a7)
0072b4: 4aaf0016     tst.l      $16(a7)
0072b8: 6e08         bgt.b      $72c2
0072ba: 4aaf0012     tst.l      $12(a7)
0072be: 6f0000bc     ble.w      $737c
0072c2: 2f6f00020006 move.l     $2(a7), $6(a7)
0072c8: 52af0024     addq.l     #$1, $24(a7)
0072cc: 7004         moveq      #$4, d0
0072ce: b0af0024     cmp.l      $24(a7), d0
0072d2: 6e00fed8     bgt.w      $71ac
0072d6: 4a6f0022     tst.w      $22(a7)
0072da: 670000a0     beq.w      $737c
0072de: 0c6f00010022 cmpi.w     #$1, $22(a7)
0072e4: 6606         bne.b      $72ec
0072e6: 2f6f003c0002 move.l     $3c(a7), $2(a7)
0072ec: 206f0006     movea.l    $6(a7), a0
0072f0: 226f0002     movea.l    $2(a7), a1
0072f4: 2011         move.l     (a1), d0
0072f6: 9090         sub.l      (a0), d0
0072f8: 2f00         move.l     d0, -(a7)
0072fa: 206f000a     movea.l    $a(a7), a0
0072fe: 202f0034     move.l     $34(a7), d0
007302: 90a80004     sub.l      $4(a0), d0
007306: 2f00         move.l     d0, -(a7)
007308: 206f000e     movea.l    $e(a7), a0
00730c: 226f000a     movea.l    $a(a7), a1
007310: 20290004     move.l     $4(a1), d0
007314: 90a80004     sub.l      $4(a0), d0
007318: 2200         move.l     d0, d1
00731a: 206f000e     movea.l    $e(a7), a0
00731e: 202f003c     move.l     $3c(a7), d0
007322: 9090         sub.l      (a0), d0
007324: 6100234e     bsr.w      $9674
007328: 508f         addq.l     #$8, a7
00732a: 2f40000e     move.l     d0, $e(a7)
00732e: 206f0006     movea.l    $6(a7), a0
007332: 226f0002     movea.l    $2(a7), a1
007336: 2011         move.l     (a1), d0
007338: 9090         sub.l      (a0), d0
00733a: 2f00         move.l     d0, -(a7)
00733c: 206f000a     movea.l    $a(a7), a0
007340: 202f002c     move.l     $2c(a7), d0
007344: 90a80004     sub.l      $4(a0), d0
007348: 2f00         move.l     d0, -(a7)
00734a: 206f000e     movea.l    $e(a7), a0
00734e: 226f000a     movea.l    $a(a7), a1
007352: 20290004     move.l     $4(a1), d0
007356: 90a80004     sub.l      $4(a0), d0
00735a: 2200         move.l     d0, d1
00735c: 206f000e     movea.l    $e(a7), a0
007360: 202f0034     move.l     $34(a7), d0
007364: 9090         sub.l      (a0), d0
007366: 6100230c     bsr.w      $9674
00736a: 508f         addq.l     #$8, a7
00736c: 2f40000a     move.l     d0, $a(a7)
007370: 4aaf000e     tst.l      $e(a7)
007374: 6e0a         bgt.b      $7380
007376: 4aaf000a     tst.l      $a(a7)
00737a: 6e04         bgt.b      $7380
00737c: 7001         moveq      #$1, d0
00737e: 602e         bra.b      $73ae
007380: 1f7c00020001 move.b     #$2, $1(a7)
007386: 4aaf0016     tst.l      $16(a7)
00738a: 6f0c         ble.b      $7398
00738c: 4aaf000e     tst.l      $e(a7)
007390: 6f06         ble.b      $7398
007392: 08ef00020001 bset.b     #$2, $1(a7)
007398: 4aaf0012     tst.l      $12(a7)
00739c: 6f0c         ble.b      $73aa
00739e: 4aaf000a     tst.l      $a(a7)
0073a2: 6f06         ble.b      $73aa
0073a4: 08ef00030001 bset.b     #$3, $1(a7)
0073aa: 102f0001     move.b     $1(a7), d0
0073ae: 4fef0038     lea.l      $38(a7), a7
0073b2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0073b8: 4e5d         unlk       a5
0073ba: 4e75         rts        
0073bc: 4e550000     link.w     a5, #$0
0073c0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0073c4: 4fefff9c     lea.l      -$64(a7), a7
0073c8: 206f0068     movea.l    $68(a7), a0
0073cc: 226f0064     movea.l    $64(a7), a1
0073d0: 2011         move.l     (a1), d0
0073d2: 9090         sub.l      (a0), d0
0073d4: 2f400060     move.l     d0, $60(a7)
0073d8: 206f0068     movea.l    $68(a7), a0
0073dc: 226f0064     movea.l    $64(a7), a1
0073e0: 20290004     move.l     $4(a1), d0
0073e4: 90a80004     sub.l      $4(a0), d0
0073e8: 2f40005c     move.l     d0, $5c(a7)
0073ec: 206f0064     movea.l    $64(a7), a0
0073f0: 226f0064     movea.l    $64(a7), a1
0073f4: 20290008     move.l     $8(a1), d0
0073f8: 9090         sub.l      (a0), d0
0073fa: 2f400058     move.l     d0, $58(a7)
0073fe: 206f0064     movea.l    $64(a7), a0
007402: 226f0064     movea.l    $64(a7), a1
007406: 2029000c     move.l     $c(a1), d0
00740a: 90a80004     sub.l      $4(a0), d0
00740e: 2f400054     move.l     d0, $54(a7)
007412: 206f0068     movea.l    $68(a7), a0
007416: 226f0068     movea.l    $68(a7), a1
00741a: 20290008     move.l     $8(a1), d0
00741e: 9090         sub.l      (a0), d0
007420: 2f400050     move.l     d0, $50(a7)
007424: 206f0068     movea.l    $68(a7), a0
007428: 226f0068     movea.l    $68(a7), a1
00742c: 2029000c     move.l     $c(a1), d0
007430: 90a80004     sub.l      $4(a0), d0
007434: 2f40004c     move.l     d0, $4c(a7)
007438: 486f0044     pea.l      $44(a7)
00743c: 2f2f005c     move.l     $5c(a7), -(a7)
007440: 2f2f0054     move.l     $54(a7), -(a7)
007444: 222f0060     move.l     $60(a7), d1
007448: 202f005c     move.l     $5c(a7), d0
00744c: 6100225e     bsr.w      $96ac
007450: 4fef000c     lea.l      $c(a7), a7
007454: 486f003c     pea.l      $3c(a7)
007458: 2f2f005c     move.l     $5c(a7), -(a7)
00745c: 2f2f0064     move.l     $64(a7), -(a7)
007460: 222f0060     move.l     $60(a7), d1
007464: 202f006c     move.l     $6c(a7), d0
007468: 61002242     bsr.w      $96ac
00746c: 4fef000c     lea.l      $c(a7), a7
007470: 41ef0044     lea.l      $44(a7), a0
007474: 2008         move.l     a0, d0
007476: 610022ca     bsr.w      $9742
00747a: 2f400030     move.l     d0, $30(a7)
00747e: 41ef003c     lea.l      $3c(a7), a0
007482: 2008         move.l     a0, d0
007484: 610022bc     bsr.w      $9742
007488: 2f40002c     move.l     d0, $2c(a7)
00748c: 4aaf0030     tst.l      $30(a7)
007490: 6600011c     bne.w      $75ae
007494: 4aaf002c     tst.l      $2c(a7)
007498: 660001aa     bne.w      $7644
00749c: 206f0064     movea.l    $64(a7), a0
0074a0: 226f0064     movea.l    $64(a7), a1
0074a4: 2011         move.l     (a1), d0
0074a6: b0a80008     cmp.l      $8(a0), d0
0074aa: 6c14         bge.b      $74c0
0074ac: 206f0064     movea.l    $64(a7), a0
0074b0: 2f500018     move.l     (a0), $18(a7)
0074b4: 206f0064     movea.l    $64(a7), a0
0074b8: 2f6800080010 move.l     $8(a0), $10(a7)
0074be: 6012         bra.b      $74d2
0074c0: 206f0064     movea.l    $64(a7), a0
0074c4: 2f500010     move.l     (a0), $10(a7)
0074c8: 206f0064     movea.l    $64(a7), a0
0074cc: 2f6800080018 move.l     $8(a0), $18(a7)
0074d2: 206f0064     movea.l    $64(a7), a0
0074d6: 226f0064     movea.l    $64(a7), a1
0074da: 20290004     move.l     $4(a1), d0
0074de: b0a8000c     cmp.l      $c(a0), d0
0074e2: 6c16         bge.b      $74fa
0074e4: 206f0064     movea.l    $64(a7), a0
0074e8: 2f680004001c move.l     $4(a0), $1c(a7)
0074ee: 206f0064     movea.l    $64(a7), a0
0074f2: 2f68000c0014 move.l     $c(a0), $14(a7)
0074f8: 6014         bra.b      $750e
0074fa: 206f0064     movea.l    $64(a7), a0
0074fe: 2f6800040014 move.l     $4(a0), $14(a7)
007504: 206f0064     movea.l    $64(a7), a0
007508: 2f68000c001c move.l     $c(a0), $1c(a7)
00750e: 206f0068     movea.l    $68(a7), a0
007512: 226f0068     movea.l    $68(a7), a1
007516: 2011         move.l     (a1), d0
007518: b0a80008     cmp.l      $8(a0), d0
00751c: 6c12         bge.b      $7530
00751e: 206f0068     movea.l    $68(a7), a0
007522: 2f500008     move.l     (a0), $8(a7)
007526: 206f0068     movea.l    $68(a7), a0
00752a: 2ea80008     move.l     $8(a0), (a7)
00752e: 6010         bra.b      $7540
007530: 206f0068     movea.l    $68(a7), a0
007534: 2e90         move.l     (a0), (a7)
007536: 206f0068     movea.l    $68(a7), a0
00753a: 2f6800080008 move.l     $8(a0), $8(a7)
007540: 206f0068     movea.l    $68(a7), a0
007544: 226f0068     movea.l    $68(a7), a1
007548: 20290004     move.l     $4(a1), d0
00754c: b0a8000c     cmp.l      $c(a0), d0
007550: 6c16         bge.b      $7568
007552: 206f0068     movea.l    $68(a7), a0
007556: 2f680004000c move.l     $4(a0), $c(a7)
00755c: 206f0068     movea.l    $68(a7), a0
007560: 2f68000c0004 move.l     $c(a0), $4(a7)
007566: 6014         bra.b      $757c
007568: 206f0068     movea.l    $68(a7), a0
00756c: 2f6800040004 move.l     $4(a0), $4(a7)
007572: 206f0068     movea.l    $68(a7), a0
007576: 2f68000c000c move.l     $c(a0), $c(a7)
00757c: 202f0010     move.l     $10(a7), d0
007580: b0af0008     cmp.l      $8(a7), d0
007584: 6d0000be     blt.w      $7644
007588: 202f0018     move.l     $18(a7), d0
00758c: b097         cmp.l      (a7), d0
00758e: 6e0000b4     bgt.w      $7644
007592: 202f0014     move.l     $14(a7), d0
007596: b0af000c     cmp.l      $c(a7), d0
00759a: 6d0000a8     blt.w      $7644
00759e: 202f001c     move.l     $1c(a7), d0
0075a2: b0af0004     cmp.l      $4(a7), d0
0075a6: 6e00009c     bgt.w      $7644
0075aa: 6000009c     bra.w      $7648
0075ae: 41ef0044     lea.l      $44(a7), a0
0075b2: 2208         move.l     a0, d1
0075b4: 41ef003c     lea.l      $3c(a7), a0
0075b8: 2008         move.l     a0, d0
0075ba: 61002270     bsr.w      $982c
0075be: 2f400028     move.l     d0, $28(a7)
0075c2: 4aaf0030     tst.l      $30(a7)
0075c6: 6f12         ble.b      $75da
0075c8: 4aaf002c     tst.l      $2c(a7)
0075cc: 6d000076     blt.w      $7644
0075d0: 4aaf0028     tst.l      $28(a7)
0075d4: 6e00006e     bgt.w      $7644
0075d8: 600c         bra.b      $75e6
0075da: 4aaf002c     tst.l      $2c(a7)
0075de: 6e64         bgt.b      $7644
0075e0: 4aaf0028     tst.l      $28(a7)
0075e4: 6d5e         blt.b      $7644
0075e6: 486f0034     pea.l      $34(a7)
0075ea: 2f2f0054     move.l     $54(a7), -(a7)
0075ee: 2f2f0064     move.l     $64(a7), -(a7)
0075f2: 222f0058     move.l     $58(a7), d1
0075f6: 202f006c     move.l     $6c(a7), d0
0075fa: 610020b0     bsr.w      $96ac
0075fe: 4fef000c     lea.l      $c(a7), a7
007602: 41ef0034     lea.l      $34(a7), a0
007606: 2008         move.l     a0, d0
007608: 61002138     bsr.w      $9742
00760c: 2f400024     move.l     d0, $24(a7)
007610: 41ef0044     lea.l      $44(a7), a0
007614: 2208         move.l     a0, d1
007616: 41ef0034     lea.l      $34(a7), a0
00761a: 2008         move.l     a0, d0
00761c: 6100220e     bsr.w      $982c
007620: 2f400020     move.l     d0, $20(a7)
007624: 4aaf0030     tst.l      $30(a7)
007628: 6f0e         ble.b      $7638
00762a: 4aaf0024     tst.l      $24(a7)
00762e: 6d14         blt.b      $7644
007630: 4aaf0020     tst.l      $20(a7)
007634: 6e0e         bgt.b      $7644
007636: 6010         bra.b      $7648
007638: 4aaf0024     tst.l      $24(a7)
00763c: 6e06         bgt.b      $7644
00763e: 4aaf0020     tst.l      $20(a7)
007642: 6c04         bge.b      $7648
007644: 7000         moveq      #$0, d0
007646: 6002         bra.b      $764a
007648: 7001         moveq      #$1, d0
00764a: 4fef0064     lea.l      $64(a7), a7
00764e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
007654: 4e5d         unlk       a5
007656: 4e75         rts        
007658: 4e550000     link.w     a5, #$0
00765c: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
007660: 4fefff9c     lea.l      -$64(a7), a7
007664: 206f0068     movea.l    $68(a7), a0
007668: 226f0064     movea.l    $64(a7), a1
00766c: 2011         move.l     (a1), d0
00766e: 9090         sub.l      (a0), d0
007670: 2f400060     move.l     d0, $60(a7)
007674: 206f0068     movea.l    $68(a7), a0
007678: 226f0064     movea.l    $64(a7), a1
00767c: 20290004     move.l     $4(a1), d0
007680: 90a80004     sub.l      $4(a0), d0
007684: 2f40005c     move.l     d0, $5c(a7)
007688: 206f0064     movea.l    $64(a7), a0
00768c: 226f0064     movea.l    $64(a7), a1
007690: 20290008     move.l     $8(a1), d0
007694: 9090         sub.l      (a0), d0
007696: 2f400058     move.l     d0, $58(a7)
00769a: 206f0064     movea.l    $64(a7), a0
00769e: 226f0064     movea.l    $64(a7), a1
0076a2: 2029000c     move.l     $c(a1), d0
0076a6: 90a80004     sub.l      $4(a0), d0
0076aa: 2f400054     move.l     d0, $54(a7)
0076ae: 206f0068     movea.l    $68(a7), a0
0076b2: 226f0068     movea.l    $68(a7), a1
0076b6: 20290008     move.l     $8(a1), d0
0076ba: 9090         sub.l      (a0), d0
0076bc: 2f400050     move.l     d0, $50(a7)
0076c0: 206f0068     movea.l    $68(a7), a0
0076c4: 226f0068     movea.l    $68(a7), a1
0076c8: 2029000c     move.l     $c(a1), d0
0076cc: 90a80004     sub.l      $4(a0), d0
0076d0: 2f40004c     move.l     d0, $4c(a7)
0076d4: 486f0044     pea.l      $44(a7)
0076d8: 2f2f005c     move.l     $5c(a7), -(a7)
0076dc: 2f2f0054     move.l     $54(a7), -(a7)
0076e0: 222f0060     move.l     $60(a7), d1
0076e4: 202f005c     move.l     $5c(a7), d0
0076e8: 61001fc2     bsr.w      $96ac
0076ec: 4fef000c     lea.l      $c(a7), a7
0076f0: 486f003c     pea.l      $3c(a7)
0076f4: 2f2f005c     move.l     $5c(a7), -(a7)
0076f8: 2f2f0064     move.l     $64(a7), -(a7)
0076fc: 222f0060     move.l     $60(a7), d1
007700: 202f006c     move.l     $6c(a7), d0
007704: 61001fa6     bsr.w      $96ac
007708: 4fef000c     lea.l      $c(a7), a7
00770c: 41ef0044     lea.l      $44(a7), a0
007710: 2008         move.l     a0, d0
007712: 6100202e     bsr.w      $9742
007716: 2f400030     move.l     d0, $30(a7)
00771a: 41ef003c     lea.l      $3c(a7), a0
00771e: 2008         move.l     a0, d0
007720: 61002020     bsr.w      $9742
007724: 2f40002c     move.l     d0, $2c(a7)
007728: 4aaf0030     tst.l      $30(a7)
00772c: 66000244     bne.w      $7972
007730: 4aaf002c     tst.l      $2c(a7)
007734: 660002d2     bne.w      $7a08
007738: 206f0068     movea.l    $68(a7), a0
00773c: 226f0068     movea.l    $68(a7), a1
007740: 2011         move.l     (a1), d0
007742: b0a80008     cmp.l      $8(a0), d0
007746: 6c14         bge.b      $775c
007748: 206f0068     movea.l    $68(a7), a0
00774c: 2f500018     move.l     (a0), $18(a7)
007750: 206f0068     movea.l    $68(a7), a0
007754: 2f6800080010 move.l     $8(a0), $10(a7)
00775a: 6012         bra.b      $776e
00775c: 206f0068     movea.l    $68(a7), a0
007760: 2f500010     move.l     (a0), $10(a7)
007764: 206f0068     movea.l    $68(a7), a0
007768: 2f6800080018 move.l     $8(a0), $18(a7)
00776e: 206f0068     movea.l    $68(a7), a0
007772: 226f0068     movea.l    $68(a7), a1
007776: 20290004     move.l     $4(a1), d0
00777a: b0a8000c     cmp.l      $c(a0), d0
00777e: 6c16         bge.b      $7796
007780: 206f0068     movea.l    $68(a7), a0
007784: 2f680004001c move.l     $4(a0), $1c(a7)
00778a: 206f0068     movea.l    $68(a7), a0
00778e: 2f68000c0014 move.l     $c(a0), $14(a7)
007794: 6014         bra.b      $77aa
007796: 206f0068     movea.l    $68(a7), a0
00779a: 2f6800040014 move.l     $4(a0), $14(a7)
0077a0: 206f0068     movea.l    $68(a7), a0
0077a4: 2f68000c001c move.l     $c(a0), $1c(a7)
0077aa: 206f0064     movea.l    $64(a7), a0
0077ae: 202f0018     move.l     $18(a7), d0
0077b2: b090         cmp.l      (a0), d0
0077b4: 6e42         bgt.b      $77f8
0077b6: 206f0064     movea.l    $64(a7), a0
0077ba: 202f001c     move.l     $1c(a7), d0
0077be: b0a80004     cmp.l      $4(a0), d0
0077c2: 6e34         bgt.b      $77f8
0077c4: 206f0064     movea.l    $64(a7), a0
0077c8: 202f0010     move.l     $10(a7), d0
0077cc: b090         cmp.l      (a0), d0
0077ce: 6d28         blt.b      $77f8
0077d0: 206f0064     movea.l    $64(a7), a0
0077d4: 202f0014     move.l     $14(a7), d0
0077d8: b0a80004     cmp.l      $4(a0), d0
0077dc: 6d1a         blt.b      $77f8
0077de: 206f0064     movea.l    $64(a7), a0
0077e2: 2010         move.l     (a0), d0
0077e4: 4e4f         trap       #$f
0077e6: 0020206f     ori.b      #$6f, -(a0)
0077ea: 008448d00003 ori.l      #$48d00003, d4
0077f0: 206f0064     movea.l    $64(a7), a0
0077f4: 60000112     bra.w      $7908
0077f8: 206f0064     movea.l    $64(a7), a0
0077fc: 202f0018     move.l     $18(a7), d0
007800: b0a80008     cmp.l      $8(a0), d0
007804: 6e46         bgt.b      $784c
007806: 206f0064     movea.l    $64(a7), a0
00780a: 202f001c     move.l     $1c(a7), d0
00780e: b0a8000c     cmp.l      $c(a0), d0
007812: 6e38         bgt.b      $784c
007814: 206f0064     movea.l    $64(a7), a0
007818: 202f0010     move.l     $10(a7), d0
00781c: b0a80008     cmp.l      $8(a0), d0
007820: 6d2a         blt.b      $784c
007822: 206f0064     movea.l    $64(a7), a0
007826: 202f0014     move.l     $14(a7), d0
00782a: b0a8000c     cmp.l      $c(a0), d0
00782e: 6d1c         blt.b      $784c
007830: 206f0064     movea.l    $64(a7), a0
007834: 20280008     move.l     $8(a0), d0
007838: 4e4f         trap       #$f
00783a: 0020206f     ori.b      #$6f, -(a0)
00783e: 008448d00003 ori.l      #$48d00003, d4
007844: 206f0064     movea.l    $64(a7), a0
007848: 6000011c     bra.w      $7966
00784c: 206f0064     movea.l    $64(a7), a0
007850: 226f0064     movea.l    $64(a7), a1
007854: 2011         move.l     (a1), d0
007856: b0a80008     cmp.l      $8(a0), d0
00785a: 6c14         bge.b      $7870
00785c: 206f0064     movea.l    $64(a7), a0
007860: 2f500018     move.l     (a0), $18(a7)
007864: 206f0064     movea.l    $64(a7), a0
007868: 2f6800080010 move.l     $8(a0), $10(a7)
00786e: 6012         bra.b      $7882
007870: 206f0064     movea.l    $64(a7), a0
007874: 2f500010     move.l     (a0), $10(a7)
007878: 206f0064     movea.l    $64(a7), a0
00787c: 2f6800080018 move.l     $8(a0), $18(a7)
007882: 206f0064     movea.l    $64(a7), a0
007886: 226f0064     movea.l    $64(a7), a1
00788a: 20290004     move.l     $4(a1), d0
00788e: b0a8000c     cmp.l      $c(a0), d0
007892: 6c16         bge.b      $78aa
007894: 206f0064     movea.l    $64(a7), a0
007898: 2f680004001c move.l     $4(a0), $1c(a7)
00789e: 206f0064     movea.l    $64(a7), a0
0078a2: 2f68000c0014 move.l     $c(a0), $14(a7)
0078a8: 6014         bra.b      $78be
0078aa: 206f0064     movea.l    $64(a7), a0
0078ae: 2f6800040014 move.l     $4(a0), $14(a7)
0078b4: 206f0064     movea.l    $64(a7), a0
0078b8: 2f68000c001c move.l     $c(a0), $1c(a7)
0078be: 206f0068     movea.l    $68(a7), a0
0078c2: 202f0018     move.l     $18(a7), d0
0078c6: b090         cmp.l      (a0), d0
0078c8: 6e44         bgt.b      $790e
0078ca: 206f0068     movea.l    $68(a7), a0
0078ce: 202f001c     move.l     $1c(a7), d0
0078d2: b0a80004     cmp.l      $4(a0), d0
0078d6: 6e36         bgt.b      $790e
0078d8: 206f0068     movea.l    $68(a7), a0
0078dc: 202f0010     move.l     $10(a7), d0
0078e0: b090         cmp.l      (a0), d0
0078e2: 6d2a         blt.b      $790e
0078e4: 206f0068     movea.l    $68(a7), a0
0078e8: 202f0014     move.l     $14(a7), d0
0078ec: b0a80004     cmp.l      $4(a0), d0
0078f0: 6d1c         blt.b      $790e
0078f2: 206f0068     movea.l    $68(a7), a0
0078f6: 2010         move.l     (a0), d0
0078f8: 4e4f         trap       #$f
0078fa: 0020206f     ori.b      #$6f, -(a0)
0078fe: 008448d00003 ori.l      #$48d00003, d4
007904: 206f0068     movea.l    $68(a7), a0
007908: 20280004     move.l     $4(a0), d0
00790c: 605c         bra.b      $796a
00790e: 206f0068     movea.l    $68(a7), a0
007912: 202f0018     move.l     $18(a7), d0
007916: b0a80008     cmp.l      $8(a0), d0
00791a: 6e0000ec     bgt.w      $7a08
00791e: 206f0068     movea.l    $68(a7), a0
007922: 202f001c     move.l     $1c(a7), d0
007926: b0a8000c     cmp.l      $c(a0), d0
00792a: 6e0000dc     bgt.w      $7a08
00792e: 206f0068     movea.l    $68(a7), a0
007932: 202f0010     move.l     $10(a7), d0
007936: b0a80008     cmp.l      $8(a0), d0
00793a: 6d0000cc     blt.w      $7a08
00793e: 206f0068     movea.l    $68(a7), a0
007942: 202f0014     move.l     $14(a7), d0
007946: b0a8000c     cmp.l      $c(a0), d0
00794a: 6d0000bc     blt.w      $7a08
00794e: 206f0068     movea.l    $68(a7), a0
007952: 20280008     move.l     $8(a0), d0
007956: 4e4f         trap       #$f
007958: 0020206f     ori.b      #$6f, -(a0)
00795c: 008448d00003 ori.l      #$48d00003, d4
007962: 206f0068     movea.l    $68(a7), a0
007966: 2028000c     move.l     $c(a0), d0
00796a: 4e4f         trap       #$f
00796c: 00206000     ori.b      #$0, -(a0)
007970: 011a         btst.l     d0, (a2)+
007972: 41ef0044     lea.l      $44(a7), a0
007976: 2208         move.l     a0, d1
007978: 41ef003c     lea.l      $3c(a7), a0
00797c: 2008         move.l     a0, d0
00797e: 61001eac     bsr.w      $982c
007982: 2f400028     move.l     d0, $28(a7)
007986: 4aaf0030     tst.l      $30(a7)
00798a: 6f12         ble.b      $799e
00798c: 4aaf002c     tst.l      $2c(a7)
007990: 6d000076     blt.w      $7a08
007994: 4aaf0028     tst.l      $28(a7)
007998: 6e00006e     bgt.w      $7a08
00799c: 600c         bra.b      $79aa
00799e: 4aaf002c     tst.l      $2c(a7)
0079a2: 6e64         bgt.b      $7a08
0079a4: 4aaf0028     tst.l      $28(a7)
0079a8: 6d5e         blt.b      $7a08
0079aa: 486f0034     pea.l      $34(a7)
0079ae: 2f2f0054     move.l     $54(a7), -(a7)
0079b2: 2f2f0064     move.l     $64(a7), -(a7)
0079b6: 222f0058     move.l     $58(a7), d1
0079ba: 202f006c     move.l     $6c(a7), d0
0079be: 61001cec     bsr.w      $96ac
0079c2: 4fef000c     lea.l      $c(a7), a7
0079c6: 41ef0034     lea.l      $34(a7), a0
0079ca: 2008         move.l     a0, d0
0079cc: 61001d74     bsr.w      $9742
0079d0: 2f400024     move.l     d0, $24(a7)
0079d4: 41ef0044     lea.l      $44(a7), a0
0079d8: 2208         move.l     a0, d1
0079da: 41ef0034     lea.l      $34(a7), a0
0079de: 2008         move.l     a0, d0
0079e0: 61001e4a     bsr.w      $982c
0079e4: 2f400020     move.l     d0, $20(a7)
0079e8: 4aaf0030     tst.l      $30(a7)
0079ec: 6f0e         ble.b      $79fc
0079ee: 4aaf0024     tst.l      $24(a7)
0079f2: 6d14         blt.b      $7a08
0079f4: 4aaf0020     tst.l      $20(a7)
0079f8: 6e0e         bgt.b      $7a08
0079fa: 6012         bra.b      $7a0e
0079fc: 4aaf0024     tst.l      $24(a7)
007a00: 6e06         bgt.b      $7a08
007a02: 4aaf0020     tst.l      $20(a7)
007a06: 6c06         bge.b      $7a0e
007a08: 7000         moveq      #$0, d0
007a0a: 6000008a     bra.w      $7a96
007a0e: 41ef0044     lea.l      $44(a7), a0
007a12: 2008         move.l     a0, d0
007a14: 61001d96     bsr.w      $97ac
007a18: 2601         move.l     d1, d3
007a1a: 2400         move.l     d0, d2
007a1c: 41ef003c     lea.l      $3c(a7), a0
007a20: 2008         move.l     a0, d0
007a22: 61001d88     bsr.w      $97ac
007a26: 4e4f         trap       #$f
007a28: 001348ef     ori.b      #$ef, (a3)
007a2c: 00030008     ori.b      #$8, d3
007a30: 202f0050     move.l     $50(a7), d0
007a34: 4e4f         trap       #$f
007a36: 00204cef     ori.b      #$ef, -(a0)
007a3a: 000c         .dc.w      $000c
007a3c: 0008         .dc.w      $0008
007a3e: 4e4f         trap       #$f
007a40: 001248d7     ori.b      #$d7, (a2)
007a44: 0003206f     ori.b      #$6f, d3
007a48: 006820104e4f ori.w      #$2010, $4e4f(a0)
007a4e: 00204cd7     ori.b      #$d7, -(a0)
007a52: 000c         .dc.w      $000c
007a54: 4e4f         trap       #$f
007a56: 000e         .dc.w      $000e
007a58: 206f0084     movea.l    $84(a7), a0
007a5c: 48d00003     movem.l    d0-d1, (a0)
007a60: 202f004c     move.l     $4c(a7), d0
007a64: 4e4f         trap       #$f
007a66: 00204cef     ori.b      #$ef, -(a0)
007a6a: 000c         .dc.w      $000c
007a6c: 0008         .dc.w      $0008
007a6e: 4e4f         trap       #$f
007a70: 001248d7     ori.b      #$d7, (a2)
007a74: 0003206f     ori.b      #$6f, d3
007a78: 006820280004 ori.w      #$2028, $4(a0)
007a7e: 4e4f         trap       #$f
007a80: 00204cd7     ori.b      #$d7, -(a0)
007a84: 000c         .dc.w      $000c
007a86: 4e4f         trap       #$f
007a88: 000e         .dc.w      $000e
007a8a: 206f0084     movea.l    $84(a7), a0
007a8e: 48e800030008 movem.l    d0-d1, $8(a0)
007a94: 7001         moveq      #$1, d0
007a96: 4fef0064     lea.l      $64(a7), a7
007a9a: 4ced030cfff0 movem.l    -$10(a5), d2-d3/a0-a1
007aa0: 4e5d         unlk       a5
007aa2: 4e75         rts        
007aa4: 4e550000     link.w     a5, #$0
007aa8: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
007aac: 518f         subq.l     #$8, a7
007aae: 206f0008     movea.l    $8(a7), a0
007ab2: 226f0008     movea.l    $8(a7), a1
007ab6: 20290008     move.l     $8(a1), d0
007aba: 9090         sub.l      (a0), d0
007abc: 2f00         move.l     d0, -(a7)
007abe: 206f000c     movea.l    $c(a7), a0
007ac2: 226f0010     movea.l    $10(a7), a1
007ac6: 20290004     move.l     $4(a1), d0
007aca: 90a80004     sub.l      $4(a0), d0
007ace: 2f00         move.l     d0, -(a7)
007ad0: 206f0010     movea.l    $10(a7), a0
007ad4: 226f0010     movea.l    $10(a7), a1
007ad8: 2029000c     move.l     $c(a1), d0
007adc: 90a80004     sub.l      $4(a0), d0
007ae0: 2200         move.l     d0, d1
007ae2: 206f0010     movea.l    $10(a7), a0
007ae6: 226f0014     movea.l    $14(a7), a1
007aea: 2011         move.l     (a1), d0
007aec: 9090         sub.l      (a0), d0
007aee: 61001b84     bsr.w      $9674
007af2: 508f         addq.l     #$8, a7
007af4: 2f400004     move.l     d0, $4(a7)
007af8: 206f0008     movea.l    $8(a7), a0
007afc: 226f0008     movea.l    $8(a7), a1
007b00: 20290008     move.l     $8(a1), d0
007b04: 9090         sub.l      (a0), d0
007b06: 2f00         move.l     d0, -(a7)
007b08: 206f000c     movea.l    $c(a7), a0
007b0c: 226f0010     movea.l    $10(a7), a1
007b10: 2029000c     move.l     $c(a1), d0
007b14: 90a80004     sub.l      $4(a0), d0
007b18: 2f00         move.l     d0, -(a7)
007b1a: 206f0010     movea.l    $10(a7), a0
007b1e: 226f0010     movea.l    $10(a7), a1
007b22: 2029000c     move.l     $c(a1), d0
007b26: 90a80004     sub.l      $4(a0), d0
007b2a: 2200         move.l     d0, d1
007b2c: 206f0010     movea.l    $10(a7), a0
007b30: 226f0014     movea.l    $14(a7), a1
007b34: 20290008     move.l     $8(a1), d0
007b38: 9090         sub.l      (a0), d0
007b3a: 61001b38     bsr.w      $9674
007b3e: 508f         addq.l     #$8, a7
007b40: 2e80         move.l     d0, (a7)
007b42: 4aaf0004     tst.l      $4(a7)
007b46: 6f04         ble.b      $7b4c
007b48: 4a97         tst.l      (a7)
007b4a: 6e0a         bgt.b      $7b56
007b4c: 4aaf0004     tst.l      $4(a7)
007b50: 6c08         bge.b      $7b5a
007b52: 4a97         tst.l      (a7)
007b54: 6c04         bge.b      $7b5a
007b56: 7000         moveq      #$0, d0
007b58: 6002         bra.b      $7b5c
007b5a: 7001         moveq      #$1, d0
007b5c: 508f         addq.l     #$8, a7
007b5e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
007b64: 4e5d         unlk       a5
007b66: 4e75         rts        
007b68: 4e550000     link.w     a5, #$0
007b6c: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
007b70: 4fefffbc     lea.l      -$44(a7), a7
007b74: 206f0048     movea.l    $48(a7), a0
007b78: 226f0044     movea.l    $44(a7), a1
007b7c: 2011         move.l     (a1), d0
007b7e: 9090         sub.l      (a0), d0
007b80: 2f400040     move.l     d0, $40(a7)
007b84: 206f0048     movea.l    $48(a7), a0
007b88: 226f0044     movea.l    $44(a7), a1
007b8c: 20290004     move.l     $4(a1), d0
007b90: 90a80004     sub.l      $4(a0), d0
007b94: 2f40003c     move.l     d0, $3c(a7)
007b98: 206f0044     movea.l    $44(a7), a0
007b9c: 226f0044     movea.l    $44(a7), a1
007ba0: 20290008     move.l     $8(a1), d0
007ba4: 9090         sub.l      (a0), d0
007ba6: 2f400038     move.l     d0, $38(a7)
007baa: 206f0044     movea.l    $44(a7), a0
007bae: 226f0044     movea.l    $44(a7), a1
007bb2: 2029000c     move.l     $c(a1), d0
007bb6: 90a80004     sub.l      $4(a0), d0
007bba: 2f400034     move.l     d0, $34(a7)
007bbe: 206f0048     movea.l    $48(a7), a0
007bc2: 226f0048     movea.l    $48(a7), a1
007bc6: 20290008     move.l     $8(a1), d0
007bca: 9090         sub.l      (a0), d0
007bcc: 2f400030     move.l     d0, $30(a7)
007bd0: 206f0048     movea.l    $48(a7), a0
007bd4: 226f0048     movea.l    $48(a7), a1
007bd8: 2029000c     move.l     $c(a1), d0
007bdc: 90a80004     sub.l      $4(a0), d0
007be0: 2f40002c     move.l     d0, $2c(a7)
007be4: 486f0024     pea.l      $24(a7)
007be8: 2f2f003c     move.l     $3c(a7), -(a7)
007bec: 2f2f0034     move.l     $34(a7), -(a7)
007bf0: 222f0040     move.l     $40(a7), d1
007bf4: 202f003c     move.l     $3c(a7), d0
007bf8: 61001ab2     bsr.w      $96ac
007bfc: 4fef000c     lea.l      $c(a7), a7
007c00: 486f001c     pea.l      $1c(a7)
007c04: 2f2f003c     move.l     $3c(a7), -(a7)
007c08: 2f2f0044     move.l     $44(a7), -(a7)
007c0c: 222f0040     move.l     $40(a7), d1
007c10: 202f004c     move.l     $4c(a7), d0
007c14: 61001a96     bsr.w      $96ac
007c18: 4fef000c     lea.l      $c(a7), a7
007c1c: 41ef0024     lea.l      $24(a7), a0
007c20: 2008         move.l     a0, d0
007c22: 61001b1e     bsr.w      $9742
007c26: 2f400018     move.l     d0, $18(a7)
007c2a: 41ef001c     lea.l      $1c(a7), a0
007c2e: 2008         move.l     a0, d0
007c30: 61001b10     bsr.w      $9742
007c34: 2f400014     move.l     d0, $14(a7)
007c38: 4aaf0018     tst.l      $18(a7)
007c3c: 6608         bne.b      $7c46
007c3e: 4aaf0014     tst.l      $14(a7)
007c42: 6636         bne.b      $7c7a
007c44: 6040         bra.b      $7c86
007c46: 41ef0024     lea.l      $24(a7), a0
007c4a: 2208         move.l     a0, d1
007c4c: 41ef001c     lea.l      $1c(a7), a0
007c50: 2008         move.l     a0, d0
007c52: 61001bd8     bsr.w      $982c
007c56: 2f400010     move.l     d0, $10(a7)
007c5a: 4aaf0018     tst.l      $18(a7)
007c5e: 6f0e         ble.b      $7c6e
007c60: 4aaf0014     tst.l      $14(a7)
007c64: 6d14         blt.b      $7c7a
007c66: 4aaf0010     tst.l      $10(a7)
007c6a: 6e0e         bgt.b      $7c7a
007c6c: 6012         bra.b      $7c80
007c6e: 4aaf0014     tst.l      $14(a7)
007c72: 6e06         bgt.b      $7c7a
007c74: 4aaf0010     tst.l      $10(a7)
007c78: 6c06         bge.b      $7c80
007c7a: 7000         moveq      #$0, d0
007c7c: 600000f8     bra.w      $7d76
007c80: 4aaf0014     tst.l      $14(a7)
007c84: 6614         bne.b      $7c9a
007c86: 206f0064     movea.l    $64(a7), a0
007c8a: 226f0048     movea.l    $48(a7), a1
007c8e: 2091         move.l     (a1), (a0)
007c90: 216900040004 move.l     $4(a1), $4(a0)
007c96: 600000dc     bra.w      $7d74
007c9a: 4aaf0010     tst.l      $10(a7)
007c9e: 6616         bne.b      $7cb6
007ca0: 206f0064     movea.l    $64(a7), a0
007ca4: 226f0048     movea.l    $48(a7), a1
007ca8: 20a90008     move.l     $8(a1), (a0)
007cac: 2169000c0004 move.l     $c(a1), $4(a0)
007cb2: 600000c0     bra.w      $7d74
007cb6: 41ef0024     lea.l      $24(a7), a0
007cba: 2008         move.l     a0, d0
007cbc: 61001aee     bsr.w      $97ac
007cc0: 2601         move.l     d1, d3
007cc2: 2400         move.l     d0, d2
007cc4: 41ef001c     lea.l      $1c(a7), a0
007cc8: 2008         move.l     a0, d0
007cca: 61001ae0     bsr.w      $97ac
007cce: 4e4f         trap       #$f
007cd0: 001348ef     ori.b      #$ef, (a3)
007cd4: 00030008     ori.b      #$8, d3
007cd8: 202f0030     move.l     $30(a7), d0
007cdc: 4e4f         trap       #$f
007cde: 00204cef     ori.b      #$ef, -(a0)
007ce2: 000c         .dc.w      $000c
007ce4: 0008         .dc.w      $0008
007ce6: 4e4f         trap       #$f
007ce8: 001248d7     ori.b      #$d7, (a2)
007cec: 00034a97     ori.b      #$97, d3
007cf0: 6f12         ble.b      $7d04
007cf2: 7600         moveq      #$0, d3
007cf4: 243c3fe00000 move.l     #$3fe00000, d2
007cfa: 4cd70003     movem.l    (a7), d0-d1
007cfe: 4e4f         trap       #$f
007d00: 000e         .dc.w      $000e
007d02: 6010         bra.b      $7d14
007d04: 7600         moveq      #$0, d3
007d06: 243c3fe00000 move.l     #$3fe00000, d2
007d0c: 4cd70003     movem.l    (a7), d0-d1
007d10: 4e4f         trap       #$f
007d12: 00104e4f     ori.b      #$4f, (a0)
007d16: 0024206f     ori.b      #$6f, -(a4)
007d1a: 0048         .dc.w      $0048
007d1c: d090         add.l      (a0), d0
007d1e: 206f0064     movea.l    $64(a7), a0
007d22: 2080         move.l     d0, (a0)
007d24: 202f002c     move.l     $2c(a7), d0
007d28: 4e4f         trap       #$f
007d2a: 00204cef     ori.b      #$ef, -(a0)
007d2e: 000c         .dc.w      $000c
007d30: 0008         .dc.w      $0008
007d32: 4e4f         trap       #$f
007d34: 001248d7     ori.b      #$d7, (a2)
007d38: 00034a97     ori.b      #$97, d3
007d3c: 6f12         ble.b      $7d50
007d3e: 7600         moveq      #$0, d3
007d40: 243c3fe00000 move.l     #$3fe00000, d2
007d46: 4cd70003     movem.l    (a7), d0-d1
007d4a: 4e4f         trap       #$f
007d4c: 000e         .dc.w      $000e
007d4e: 6010         bra.b      $7d60
007d50: 7600         moveq      #$0, d3
007d52: 243c3fe00000 move.l     #$3fe00000, d2
007d58: 4cd70003     movem.l    (a7), d0-d1
007d5c: 4e4f         trap       #$f
007d5e: 00104e4f     ori.b      #$4f, (a0)
007d62: 0024206f     ori.b      #$6f, -(a4)
007d66: 0048         .dc.w      $0048
007d68: d0a80004     add.l      $4(a0), d0
007d6c: 206f0064     movea.l    $64(a7), a0
007d70: 21400004     move.l     d0, $4(a0)
007d74: 7001         moveq      #$1, d0
007d76: 4fef0044     lea.l      $44(a7), a7
007d7a: 4ced030cfff0 movem.l    -$10(a5), d2-d3/a0-a1
007d80: 4e5d         unlk       a5
007d82: 4e75         rts        
007d84: 4e550000     link.w     a5, #$0
007d88: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
007d8c: 598f         subq.l     #$4, a7
007d8e: 206f0004     movea.l    $4(a7), a0
007d92: 226f0004     movea.l    $4(a7), a1
007d96: 2029000c     move.l     $c(a1), d0
007d9a: 90a80004     sub.l      $4(a0), d0
007d9e: 2200         move.l     d0, d1
007da0: 206f0004     movea.l    $4(a7), a0
007da4: 226f0004     movea.l    $4(a7), a1
007da8: 20290008     move.l     $8(a1), d0
007dac: 9090         sub.l      (a0), d0
007dae: 610014ee     bsr.w      $929e
007db2: 3f400002     move.w     d0, $2(a7)
007db6: 206f0008     movea.l    $8(a7), a0
007dba: 226f0008     movea.l    $8(a7), a1
007dbe: 2029000c     move.l     $c(a1), d0
007dc2: 90a80004     sub.l      $4(a0), d0
007dc6: 2200         move.l     d0, d1
007dc8: 206f0008     movea.l    $8(a7), a0
007dcc: 226f0008     movea.l    $8(a7), a1
007dd0: 20290008     move.l     $8(a1), d0
007dd4: 9090         sub.l      (a0), d0
007dd6: 610014c6     bsr.w      $929e
007dda: 3e80         move.w     d0, (a7)
007ddc: 7000         moveq      #$0, d0
007dde: 3017         move.w     (a7), d0
007de0: 2200         move.l     d0, d1
007de2: 7000         moveq      #$0, d0
007de4: 302f0002     move.w     $2(a7), d0
007de8: 6100107a     bsr.w      $8e64
007dec: 588f         addq.l     #$4, a7
007dee: 4ced0300fff8 movem.l    -$8(a5), a0-a1
007df4: 4e5d         unlk       a5
007df6: 4e75         rts        
007df8: 4e550000     link.w     a5, #$0
007dfc: 48e7fc80     movem.l    d0-d5/a0, -(a7)
007e00: 4fefffd8     lea.l      -$28(a7), a7
007e04: 486f0018     pea.l      $18(a7)
007e08: 41ef0024     lea.l      $24(a7), a0
007e0c: 2208         move.l     a0, d1
007e0e: 7000         moveq      #$0, d0
007e10: 302f0032     move.w     $32(a7), d0
007e14: 61000bea     bsr.w      $8a00
007e18: 588f         addq.l     #$4, a7
007e1a: 206f0028     movea.l    $28(a7), a0
007e1e: 2010         move.l     (a0), d0
007e20: 4e4f         trap       #$f
007e22: 002048ef     ori.b      #$ef, -(a0)
007e26: 00030010     ori.b      #$10, d3
007e2a: 206f0028     movea.l    $28(a7), a0
007e2e: 20280004     move.l     $4(a0), d0
007e32: 4e4f         trap       #$f
007e34: 002048ef     ori.b      #$ef, -(a0)
007e38: 00030008     ori.b      #$8, d3
007e3c: 4cef000c0020 movem.l    $20(a7), d2-d3
007e42: 4cef00030008 movem.l    $8(a7), d0-d1
007e48: 4e4f         trap       #$f
007e4a: 00122a01     ori.b      #$1, (a2)
007e4e: 2800         move.l     d0, d4
007e50: 4cef000c0018 movem.l    $18(a7), d2-d3
007e56: 4cef00030010 movem.l    $10(a7), d0-d1
007e5c: 4e4f         trap       #$f
007e5e: 00122605     ori.b      #$5, (a2)
007e62: 2404         move.l     d4, d2
007e64: 4e4f         trap       #$f
007e66: 000e         .dc.w      $000e
007e68: 48d70003     movem.l    d0-d1, (a7)
007e6c: 4a97         tst.l      (a7)
007e6e: 6f12         ble.b      $7e82
007e70: 7600         moveq      #$0, d3
007e72: 243c3fe00000 move.l     #$3fe00000, d2
007e78: 4cd70003     movem.l    (a7), d0-d1
007e7c: 4e4f         trap       #$f
007e7e: 000e         .dc.w      $000e
007e80: 6010         bra.b      $7e92
007e82: 7600         moveq      #$0, d3
007e84: 243c3fe00000 move.l     #$3fe00000, d2
007e8a: 4cd70003     movem.l    (a7), d0-d1
007e8e: 4e4f         trap       #$f
007e90: 00104e4f     ori.b      #$4f, (a0)
007e94: 0024206f     ori.b      #$6f, -(a4)
007e98: 004c         .dc.w      $004c
007e9a: 2080         move.l     d0, (a0)
007e9c: 4cef000c0020 movem.l    $20(a7), d2-d3
007ea2: 4cef00030010 movem.l    $10(a7), d0-d1
007ea8: 4e4f         trap       #$f
007eaa: 00122a01     ori.b      #$1, (a2)
007eae: 2800         move.l     d0, d4
007eb0: 4cef000c0018 movem.l    $18(a7), d2-d3
007eb6: 4cef00030008 movem.l    $8(a7), d0-d1
007ebc: 4e4f         trap       #$f
007ebe: 00122605     ori.b      #$5, (a2)
007ec2: 2404         move.l     d4, d2
007ec4: 4e4f         trap       #$f
007ec6: 001048d7     ori.b      #$d7, (a0)
007eca: 00034a97     ori.b      #$97, d3
007ece: 6f12         ble.b      $7ee2
007ed0: 7600         moveq      #$0, d3
007ed2: 243c3fe00000 move.l     #$3fe00000, d2
007ed8: 4cd70003     movem.l    (a7), d0-d1
007edc: 4e4f         trap       #$f
007ede: 000e         .dc.w      $000e
007ee0: 6010         bra.b      $7ef2
007ee2: 7600         moveq      #$0, d3
007ee4: 243c3fe00000 move.l     #$3fe00000, d2
007eea: 4cd70003     movem.l    (a7), d0-d1
007eee: 4e4f         trap       #$f
007ef0: 00104e4f     ori.b      #$4f, (a0)
007ef4: 0024206f     ori.b      #$6f, -(a4)
007ef8: 004c         .dc.w      $004c
007efa: 21400004     move.l     d0, $4(a0)
007efe: 206f0028     movea.l    $28(a7), a0
007f02: 20280008     move.l     $8(a0), d0
007f06: 4e4f         trap       #$f
007f08: 002048ef     ori.b      #$ef, -(a0)
007f0c: 00030010     ori.b      #$10, d3
007f10: 206f0028     movea.l    $28(a7), a0
007f14: 2028000c     move.l     $c(a0), d0
007f18: 4e4f         trap       #$f
007f1a: 002048ef     ori.b      #$ef, -(a0)
007f1e: 00030008     ori.b      #$8, d3
007f22: 4cef000c0020 movem.l    $20(a7), d2-d3
007f28: 4cef00030008 movem.l    $8(a7), d0-d1
007f2e: 4e4f         trap       #$f
007f30: 00122a01     ori.b      #$1, (a2)
007f34: 2800         move.l     d0, d4
007f36: 4cef000c0018 movem.l    $18(a7), d2-d3
007f3c: 4cef00030010 movem.l    $10(a7), d0-d1
007f42: 4e4f         trap       #$f
007f44: 00122605     ori.b      #$5, (a2)
007f48: 2404         move.l     d4, d2
007f4a: 4e4f         trap       #$f
007f4c: 000e         .dc.w      $000e
007f4e: 48d70003     movem.l    d0-d1, (a7)
007f52: 4a97         tst.l      (a7)
007f54: 6f12         ble.b      $7f68
007f56: 7600         moveq      #$0, d3
007f58: 243c3fe00000 move.l     #$3fe00000, d2
007f5e: 4cd70003     movem.l    (a7), d0-d1
007f62: 4e4f         trap       #$f
007f64: 000e         .dc.w      $000e
007f66: 6010         bra.b      $7f78
007f68: 7600         moveq      #$0, d3
007f6a: 243c3fe00000 move.l     #$3fe00000, d2
007f70: 4cd70003     movem.l    (a7), d0-d1
007f74: 4e4f         trap       #$f
007f76: 00104e4f     ori.b      #$4f, (a0)
007f7a: 0024206f     ori.b      #$6f, -(a4)
007f7e: 004c         .dc.w      $004c
007f80: 21400008     move.l     d0, $8(a0)
007f84: 4cef000c0020 movem.l    $20(a7), d2-d3
007f8a: 4cef00030010 movem.l    $10(a7), d0-d1
007f90: 4e4f         trap       #$f
007f92: 00122a01     ori.b      #$1, (a2)
007f96: 2800         move.l     d0, d4
007f98: 4cef000c0018 movem.l    $18(a7), d2-d3
007f9e: 4cef00030008 movem.l    $8(a7), d0-d1
007fa4: 4e4f         trap       #$f
007fa6: 00122605     ori.b      #$5, (a2)
007faa: 2404         move.l     d4, d2
007fac: 4e4f         trap       #$f
007fae: 001048d7     ori.b      #$d7, (a0)
007fb2: 00034a97     ori.b      #$97, d3
007fb6: 6f12         ble.b      $7fca
007fb8: 7600         moveq      #$0, d3
007fba: 243c3fe00000 move.l     #$3fe00000, d2
007fc0: 4cd70003     movem.l    (a7), d0-d1
007fc4: 4e4f         trap       #$f
007fc6: 000e         .dc.w      $000e
007fc8: 6010         bra.b      $7fda
007fca: 7600         moveq      #$0, d3
007fcc: 243c3fe00000 move.l     #$3fe00000, d2
007fd2: 4cd70003     movem.l    (a7), d0-d1
007fd6: 4e4f         trap       #$f
007fd8: 00104e4f     ori.b      #$4f, (a0)
007fdc: 0024206f     ori.b      #$6f, -(a4)
007fe0: 004c         .dc.w      $004c
007fe2: 2140000c     move.l     d0, $c(a0)
007fe6: 4fef0028     lea.l      $28(a7), a7
007fea: 4ced013cffec movem.l    -$14(a5), d2-d5/a0
007ff0: 4e5d         unlk       a5
007ff2: 4e75         rts        
007ff4: 4e550000     link.w     a5, #$0
007ff8: 48e7f080     movem.l    d0-d3/a0, -(a7)
007ffc: 4fefffe0     lea.l      -$20(a7), a7
008000: 202f0024     move.l     $24(a7), d0
008004: 4e4f         trap       #$f
008006: 002048ef     ori.b      #$ef, -(a0)
00800a: 00030008     ori.b      #$8, d3
00800e: 486f0010     pea.l      $10(a7)
008012: 41ef001c     lea.l      $1c(a7), a0
008016: 2208         move.l     a0, d1
008018: 7000         moveq      #$0, d0
00801a: 302f0026     move.w     $26(a7), d0
00801e: 610009e0     bsr.w      $8a00
008022: 588f         addq.l     #$4, a7
008024: 4cef000c0008 movem.l    $8(a7), d2-d3
00802a: 4cef00030018 movem.l    $18(a7), d0-d1
008030: 4e4f         trap       #$f
008032: 001248d7     ori.b      #$d7, (a2)
008036: 00034a97     ori.b      #$97, d3
00803a: 6f12         ble.b      $804e
00803c: 7600         moveq      #$0, d3
00803e: 243c3fe00000 move.l     #$3fe00000, d2
008044: 4cd70003     movem.l    (a7), d0-d1
008048: 4e4f         trap       #$f
00804a: 000e         .dc.w      $000e
00804c: 6010         bra.b      $805e
00804e: 7600         moveq      #$0, d3
008050: 243c3fe00000 move.l     #$3fe00000, d2
008056: 4cd70003     movem.l    (a7), d0-d1
00805a: 4e4f         trap       #$f
00805c: 00104e4f     ori.b      #$4f, (a0)
008060: 0024206f     ori.b      #$6f, -(a4)
008064: 003c         .dc.w      $003c
008066: 2080         move.l     d0, (a0)
008068: 4cef000c0008 movem.l    $8(a7), d2-d3
00806e: 4cef00030010 movem.l    $10(a7), d0-d1
008074: 4e4f         trap       #$f
008076: 001248d7     ori.b      #$d7, (a2)
00807a: 00034a97     ori.b      #$97, d3
00807e: 6f12         ble.b      $8092
008080: 7600         moveq      #$0, d3
008082: 243c3fe00000 move.l     #$3fe00000, d2
008088: 4cd70003     movem.l    (a7), d0-d1
00808c: 4e4f         trap       #$f
00808e: 000e         .dc.w      $000e
008090: 6010         bra.b      $80a2
008092: 7600         moveq      #$0, d3
008094: 243c3fe00000 move.l     #$3fe00000, d2
00809a: 4cd70003     movem.l    (a7), d0-d1
00809e: 4e4f         trap       #$f
0080a0: 00104e4f     ori.b      #$4f, (a0)
0080a4: 0024206f     ori.b      #$6f, -(a4)
0080a8: 003c         .dc.w      $003c
0080aa: 21400004     move.l     d0, $4(a0)
0080ae: 4fef0020     lea.l      $20(a7), a7
0080b2: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
0080b8: 4e5d         unlk       a5
0080ba: 4e75         rts        
0080bc: 4e550000     link.w     a5, #$0
0080c0: 48e7c080     movem.l    d0-d1/a0, -(a7)
0080c4: 206f0014     movea.l    $14(a7), a0
0080c8: 2097         move.l     (a7), (a0)
0080ca: 206f0014     movea.l    $14(a7), a0
0080ce: 216f00040004 move.l     $4(a7), $4(a0)
0080d4: 4ced0100fffc movem.l    -$4(a5), a0
0080da: 4e5d         unlk       a5
0080dc: 4e75         rts        
0080de: 00000000     ori.b      #$0, d0
0080e2: 00000000     ori.b      #$0, d0
0080e6: 3f91df0b2b89dd1e move.w     (a1), ([a7, a5.l * 8], $2b89dd1e)
0080ee: 3fa1de58     move.w     -(a1), $58(a7, a5.l)
0080f2: c9f7dc27     muls.w     $27(a7, a5.l), d4
0080f6: 3faacbc748ef move.w     -$3439(a2), -$11(a7, d4.l)
0080fc: c90e         abcd.b     -(a6), -(a4)
0080fe: 3fb1db8f6d6a51283fb64fd6b8c28102 move.w     ([], a5.l * 2, $6d6a5128), ([$4fd6b8c2], d3.l * 8, $8102)
00810e: 3fbac2609b3c576c3fbf move.w     $4370(pc), $576c3fbf(a7, a1.l * 2)
008118: 32d4         move.w     (a4), (a1)+
00811a: 4c4f         .dc.w      $4c4f
00811c: 62d3         bhi.b      $80f1
00811e: 3fc1         .dc.w      $3fc1
008120: d06c968d     add.w      -$6973(a4), d0
008124: 9e19         sub.b      (a1)+, d7
008126: 3fc4         .dc.w      $3fc4
008128: 060b         .dc.w      $060b
00812a: 67a8         beq.b      $80d4
00812c: 53753fc6     subq.w     #$1, ([])
008130: 3a1a         move.w     (a2)+, d5
008132: 7e0b         moveq      #$b, d7
008134: 7389         .dc.w      $7389
008136: 3fc8         .dc.w      $3fc8
008138: 6c6d         bge.b      $81a7
00813a: dd76624f     add.w      d6, $4f(a6, d6.w)
00813e: 3fca         .dc.w      $3fca
008140: 9cd9         suba.w     (a1)+, a6
008142: ac42         dc.w       $ac42
008144: 58f63fcc     svc.b      (invalid.w)
008148: cb3236cd     and.b      d5, -$33(a2, d3.w)
00814c: c6753fce     and.w      ([]), d3
008150: f74b         dc.w       $f74b
008152: f2e4b91d3fd0 fbf.l      $b91dc124
008158: 907d         .dc.w      $907d
00815a: c193         and.l      d0, (a3)
00815c: 06903fd1a40a addi.l     #$3fd1a40a, (a0)
008162: dd328e29     add.b      d6, $29(a2, a0.l)
008166: 3fd2         .dc.w      $3fd2
008168: b637cf83d5c83fd3 cmp.b      ([, a4.l * 8], $d5c83fd3), d3
008170: c6ef372f     mulu.w     $372f(a7), d3
008174: e94f         lsl.w      #$4, d7
008176: 3fd4         .dc.w      $3fd4
008178: d61b         add.b      (a3)+, d3
00817a: d000         add.b      d0, d0
00817c: cddc         muls.w     (a4)+, d6
00817e: 3fd5         .dc.w      $3fd5
008180: e3a8         lsl.l      d1, d0
008182: 748a         moveq      #$8a, d2
008184: 0bf53fd6     bset.b     d5, ([])
008188: ef80         asl.l      #$7, d0
00818a: 1fce         .dc.w      $1fce
00818c: d33c         .dc.w      $d33c
00818e: 3fd7         .dc.w      $3fd7
008190: f98d         dc.w       $f98d
008192: eee5         .dc.w      $eee5
008194: 9681         sub.l      d1, d3
008196: 3fd9         .dc.w      $3fd9
008198: 01bd         .dc.w      $01bd
00819a: 2298         move.l     (a0)+, (a1)
00819c: ffab         dc.w       $ffab
00819e: 3fda         .dc.w      $3fda
0081a0: 07f921061ad1 bset.b     d3, $21061ad1.l
0081a6: 3fdb         .dc.w      $3fdb
0081a8: 0c2d77379853 cmpi.b     #$37, -$67ad(a5)
0081ae: 3fdc         .dc.w      $3fdc
0081b0: 0e45         .dc.w      $0e45
0081b2: dabe         .dc.w      $dabe
0081b4: 05c83fdd     movep.l    d2, $3fdd(a0)
0081b8: 0e2e         .dc.w      $0e2e
0081ba: 2b44de00     move.l     d4, -$2200(a5)
0081be: 3fde         .dc.w      $3fde
0081c0: 0bd2         bset.b     d5, (a2)
0081c2: 7424         moveq      #$24, d2
0081c4: 50793fdf071e addq.w     #$8, $3fdf071e.l
0081ca: edef         .dc.w      $edef
0081cc: a0ed         dc.w       $a0ed
0081ce: 3fdf         .dc.w      $3fdf
0081d0: ffff         dc.w       $ffff
0081d2: ffff         dc.w       $ffff
0081d4: ffff         dc.w       $ffff
0081d6: 3fe0         .dc.w      $3fe0
0081d8: 7b31         .dc.w      $7b31
0081da: 20fd         .dc.w      $20fd
0081dc: df13         add.b      d7, (a3)
0081de: 3fe0         .dc.w      $3fe0
0081e0: f519         dc.w       $f519
0081e2: 3eacdd2a     move.w     -$22d6(a4), (a7)
0081e6: 3fe1         .dc.w      $3fe1
0081e8: 6dae         blt.b      $8198
0081ea: d770771d     add.w      d3, ([a0], d7.w * 8)
0081ee: 3fe1         .dc.w      $3fe1
0081f0: e4e88411     roxr.w     -$7bef(a0)
0081f4: fd13         fsave      (a3)
0081f6: 3fe2         .dc.w      $3fe2
0081f8: 5abc         .dc.w      $5abc
0081fa: f87c4978     lpstop     
0081fe: 3fe2         .dc.w      $3fe2
008200: cf23         and.b      d7, -(a3)
008202: 04755a5e3fe342119455beb6 subi.w     #$5a5e, ([$4211], $9455beb6)
00820e: 3fe3         .dc.w      $3fe3
008210: b37f         .dc.w      $b37f
008212: b1bd         .dc.w      $b1bd
008214: c9393fe42364 and.b      d4, $3fe42364.l
00821a: 8448         .dc.w      $8448
00821c: 7abd         moveq      #$bd, d5
00821e: 3fe4         .dc.w      $3fe4
008220: 91b7523c     sub.l      d0, $3c(a7, d5.w)
008224: 161c         move.b     (a4)+, d3
008226: 3fe4         .dc.w      $3fe4
008228: fe6f81384fd4 ftrapogt.b $4fd4(a7)
00822e: 3fe5         .dc.w      $3fe5
008230: 6984         bvs.b      $81b6
008232: 96e2         suba.w     -(a2), a3
008234: 0bd8         bset.b     d5, (a0)+
008236: 3fe5         .dc.w      $3fe5
008238: d2ee398c     adda.w     $398c(a6), a1
00823c: 9c2b3fe6     sub.b      $3fe6(a3), d6
008240: 3aa4         move.w     -(a4), (a5)
008242: 30e0         move.w     -(a0), (a0)+
008244: 7310         .dc.w      $7310
008246: 3fe6         .dc.w      $3fe6
008248: a09e         dc.w       $a09e
00824a: 667f         bne.b      $82cb
00824c: 3bcc         .dc.w      $3bcc
00824e: 3fe7         .dc.w      $3fe7
008250: 04d4         .dc.w      $04d4
008252: e6a5         asr.l      d3, d5
008254: 4d393fe7673f chk.l      $3fe7673f.l, d6
00825a: e0c8         .dc.w      $e0c8
00825c: 6982         bvs.b      $81e0
00825e: 3fe7         .dc.w      $3fe7
008260: c7d7         muls.w     (a7), d3
008262: a833         dc.w       $a833
008264: bec2         cmpa.w     d2, a7
008266: 3fe8         .dc.w      $3fe8
008268: 2694         move.l     (a4), (a3)
00826a: b4a1         cmp.l      -(a1), d2
00826c: 1c373fe8836f move.b     $836f(invalid.w), d6
008272: a2cf         dc.w       $a2cf
008274: 50393fe8de61 addq.b     #$8, $3fe8de61.l
00827a: 3515         move.w     (a5), -(a2)
00827c: a328         dc.w       $a328
00827e: 3fe9         .dc.w      $3fe9
008280: 376253f4     move.w     -(a2), $53f4(a3)
008284: 63d2         bls.b      $8258
008286: 3fe9         .dc.w      $3fe9
008288: 8e6c0ea2     or.w       $ea2(a4), d7
00828c: 7a14         moveq      #$14, d5
00828e: 3fe9         .dc.w      $3fe9
008290: e377         roxl.w     d1, d7
008292: 9b97         sub.l      d5, (a7)
008294: f4a8         cpushl     #$2, a0
008296: 3fea         .dc.w      $3fea
008298: 367e         .dc.w      $367e
00829a: 5915         subq.b     #$4, (a5)
00829c: 87473fea     pack       d7, d3, #$3fea
0082a0: 8779cda8eea5 or.w       d3, $cda8eea5.l
0082a6: 3fea         .dc.w      $3fea
0082a8: d663         add.w      -(a3), d3
0082aa: a8ae         dc.w       $a8ae
0082ac: 2fdc         .dc.w      $2fdc
0082ae: 3feb         .dc.w      $3feb
0082b0: 2335c2cd     move.l     -$33(a5, a4.w), -(a1)
0082b4: a946         dc.w       $a946
0082b6: 3feb         .dc.w      $3feb
0082b8: 6dea         blt.b      $82a4
0082ba: 1e76         .dc.w      $1e76
0082bc: eade         .dc.w      $eade
0082be: 3feb         .dc.w      $3feb
0082c0: b67ae858     cmp.w      $6b1a(pc), d3
0082c4: 4caa3febfce2 movem.w    -$31e(a2), d0-d1/d3/d5-d7/a0-a5
0082ca: 77d3         .dc.w      $77d3
0082cc: 39c6         .dc.w      $39c6
0082ce: 3fec         .dc.w      $3fec
0082d0: 411b         chk.l      (a3)+, d0
0082d2: 4f6d         .dc.w      $4f6d
0082d4: 2707         move.l     d7, -(a3)
0082d6: 3fec         .dc.w      $3fec
0082d8: 8320         or.b       d1, -(a0)
0082da: 1d3d         .dc.w      $1d3d
0082dc: 2c6c3fec     movea.l    $3fec(a4), a6
0082e0: c2ebbb56     mulu.w     -$44aa(a3), d1
0082e4: 38ca         move.w     a2, (a4)+
0082e6: 3fed         .dc.w      $3fed
0082e8: 0079302dd7673fed ori.w      #$302d, $d7673fed.l
0082f0: 3bc3         .dc.w      $3bc3
0082f2: aeff         dc.w       $aeff
0082f4: 7f95         .dc.w      $7f95
0082f6: 3fed         .dc.w      $3fed
0082f8: 74c6         moveq      #$c6, d2
0082fa: 982c666f     sub.b      $666f(a4), d4
0082fe: 3fed         .dc.w      $3fed
008300: ab7d         dc.w       $ab7d
008302: 7997         .dc.w      $7997
008304: cb58         and.w      d5, (a0)+
008306: 3fed         .dc.w      $3fed
008308: dfe4         adda.l     -(a4), a7
00830a: 0eff         .dc.w      $0eff
00830c: b805         cmp.b      d5, d4
00830e: 3fee         .dc.w      $3fee
008310: 11f642522d1b move.b     $52(a6, d4.w), $2d1b.w
008316: 3fee         .dc.w      $3fee
008318: 41b02bfeb4ca3fee chk.w      ([$b4ca3fee]), d0
008320: 6f0e         ble.b      $8330
008322: 134454ff     move.b     d4, $54ff(a1)
008326: 3fee         .dc.w      $3fee
008328: 9a0c         .dc.w      $9a0c
00832a: 6e7b         bgt.b      $83a7
00832c: db1f         add.b      d5, (a7)+
00832e: 3fee         .dc.w      $3fee
008330: c2a7         and.l      -(a7), d1
008332: e35e         rol.w      #$1, d6
008334: 7b80         .dc.w      $7b80
008336: 3fee         .dc.w      $3fee
008338: e8dd         .dc.w      $e8dd
00833a: 4748         .dc.w      $4748
00833c: bf15         eor.b      d7, (a5)
00833e: 3fef         .dc.w      $3fef
008340: 0ca99f79ba253fef cmpi.l     #$9f79ba25, $3fef(a1)
008348: 2e0a         move.l     a2, d7
00834a: 214e870f     move.l     a6, -$78f1(a0)
00834e: 3fef         .dc.w      $3fef
008350: 4cfc         .dc.w      $4cfc
008352: 327a007f     movea.w    $83d3(pc), a1
008356: 3fef         .dc.w      $3fef
008358: 697d         bvs.b      $83d7
00835a: 6938         bvs.b      $8394
00835c: b6c2         cmpa.w     d2, a3
00835e: 3fef         .dc.w      $3fef
008360: 838b8c81     unpk       -(a3), -(a1), #$8c81
008364: 1c17         move.b     (a7), d6
008366: 3fef         .dc.w      $3fef
008368: 9b24         sub.b      d5, -(a4)
00836a: 942fe45c     sub.b      -$1ba4(a7), d2
00836e: 3fef         .dc.w      $3fef
008370: b046         cmp.w      d6, d0
008372: a930         dc.w       $a930
008374: 947a3fef     sub.w      $c365(pc), d2
008378: c2f025a23e8b3fef mulu.w     ([$3e8b, d2.w * 4], $3fef), d1
008380: d31f         add.b      d1, (a7)+
008382: 94f867c6     suba.w     $67c6.w, a2
008386: 3fef         .dc.w      $3fef
008388: e0d3         asr.w      (a3)
00838a: b418         cmp.b      (a0)+, d2
00838c: 15a23fefec0b move.b     -(a2), ([$ec0b])
008392: 7170         .dc.w      $7170
008394: fff6         dc.w       $fff6
008396: 3fef         .dc.w      $3fef
008398: f4c5         dc.w       $f4c5
00839a: ed12         roxl.b     #$6, d2
00839c: e61d         ror.b      #$3, d5
00839e: 3fef         .dc.w      $3fef
0083a0: fb02         dc.w       $fb02
0083a2: 78bf         moveq      #$bf, d4
0083a4: 0567         bchg.b     d2, -(a7)
0083a6: 3fef         .dc.w      $3fef
0083a8: fec097f5af8a fbf.l      $97f63334
0083ae: 3ff0         .dc.w      $3ff0
0083b0: 00000000     ori.b      #$0, d0
0083b4: 0000ffff     ori.b      #$ff, d0
0083b8: f92f0000     fsave      $0(a7)
0083bc: 00000000     ori.b      #$0, d0
0083c0: 06d1         dc.w       $6d1
0083c2: 00000da2     ori.b      #$a2, d0
0083c6: 00001472     ori.b      #$72, d0
0083ca: 00001b40     ori.b      #$40, d0
0083ce: 0000220c     ori.b      #$c, d0
0083d2: 000028d5     ori.b      #$d5, d0
0083d6: 00002f9b     ori.b      #$9b, d0
0083da: 0000365d     ori.b      #$5d, d0
0083de: 00003d1b     ori.b      #$1b, d0
0083e2: 000043d5     ori.b      #$d5, d0
0083e6: 00004a89     ori.b      #$89, d0
0083ea: 00005137     ori.b      #$37, d0
0083ee: 000057df     ori.b      #$df, d0
0083f2: 00005e80     ori.b      #$80, d0
0083f6: 0000651a     ori.b      #$1a, d0
0083fa: 00006bac     ori.b      #$ac, d0
0083fe: 00007235     ori.b      #$35, d0
008402: 000078b6     ori.b      #$b6, d0
008406: 00007f2d     ori.b      #$2d, d0
00840a: 0000859a     ori.b      #$9a, d0
00840e: 00008bfd     ori.b      #$fd, d0
008412: 00009255     ori.b      #$55, d0
008416: 000098a1     ori.b      #$a1, d0
00841a: 00009ee2     ori.b      #$e2, d0
00841e: 0000a516     ori.b      #$16, d0
008422: 0000ab3d     ori.b      #$3d, d0
008426: 0000b157     ori.b      #$57, d0
00842a: 0000b763     ori.b      #$63, d0
00842e: 0000bd61     ori.b      #$61, d0
008432: 0000c350     ori.b      #$50, d0
008436: 0000c930     ori.b      #$30, d0
00843a: 0000cf00     ori.b      #$0, d0
00843e: 0000d4c0     ori.b      #$c0, d0
008442: 0000da6f     ori.b      #$6f, d0
008446: 0000e00e     ori.b      #$e, d0
00844a: 0000e59b     ori.b      #$9b, d0
00844e: 0000eb16     ori.b      #$16, d0
008452: 0000f07e     ori.b      #$7e, d0
008456: 0000f5d4     ori.b      #$d4, d0
00845a: 0000fb17     ori.b      #$17, d0
00845e: 00010046     ori.b      #$46, d1
008462: 00010561     ori.b      #$61, d1
008466: 00010a68     ori.b      #$68, d1
00846a: 00010f5a     ori.b      #$5a, d1
00846e: 00011437     ori.b      #$37, d1
008472: 000118fe     ori.b      #$fe, d1
008476: 00011daf     ori.b      #$af, d1
00847a: 0001224a     ori.b      #$4a, d1
00847e: 000126cf     ori.b      #$cf, d1
008482: 00012b3c     ori.b      #$3c, d1
008486: 00012f93     ori.b      #$93, d1
00848a: 000133d1     ori.b      #$d1, d1
00848e: 000137f8     ori.b      #$f8, d1
008492: 00013c06     ori.b      #$6, d1
008496: 00013ffb     ori.b      #$fb, d1
00849a: 000143d8     ori.b      #$d8, d1
00849e: 0001479b     ori.b      #$9b, d1
0084a2: 00014b45     ori.b      #$45, d1
0084a6: 00014ed5     ori.b      #$d5, d1
0084aa: 0001524b     ori.b      #$4b, d1
0084ae: 000155a6     ori.b      #$a6, d1
0084b2: 000158e7     ori.b      #$e7, d1
0084b6: 00015c0d     ori.b      #$d, d1
0084ba: 00015f17     ori.b      #$17, d1
0084be: 00016207     ori.b      #$7, d1
0084c2: 000164db     ori.b      #$db, d1
0084c6: 00016792     ori.b      #$92, d1
0084ca: 00016a2e     ori.b      #$2e, d1
0084ce: 00016cae     ori.b      #$ae, d1
0084d2: 00016f11     ori.b      #$11, d1
0084d6: 00017158     ori.b      #$58, d1
0084da: 00017382     ori.b      #$82, d1
0084de: 0001758e     ori.b      #$8e, d1
0084e2: 0001777e     ori.b      #$7e, d1
0084e6: 00017951     ori.b      #$51, d1
0084ea: 00017b06     ori.b      #$6, d1
0084ee: 00017c9d     ori.b      #$9d, d1
0084f2: 00017e17     ori.b      #$17, d1
0084f6: 00017f73     ori.b      #$73, d1
0084fa: 000180b1     ori.b      #$b1, d1
0084fe: 000181d1     ori.b      #$d1, d1
008502: 000182d3     ori.b      #$d3, d1
008506: 000183b7     ori.b      #$b7, d1
00850a: 0001847c     ori.b      #$7c, d1
00850e: 00018523     ori.b      #$23, d1
008512: 000185ac     ori.b      #$ac, d1
008516: 00018617     ori.b      #$17, d1
00851a: 00018663     ori.b      #$63, d1
00851e: 00018691     ori.b      #$91, d1
008522: 000186a0     ori.b      #$a0, d1
008526: 00018691     ori.b      #$91, d1
00852a: 0000002d     ori.b      #$2d, d0
00852e: 005a0086     ori.w      #$86, (a2)+
008532: 00b300e0010c013901660192 ori.l      #$e0010c, ([$1660192, a3, d0.w])
00853e: 01bf         .dc.w      $01bf
008540: 01eb0218     bset.b     d0, $218(a3)
008544: 02440270     andi.w     #$270, d4
008548: 029c02c902f5 andi.l     #$2c902f5, (a4)+
00854e: 0320         btst.l     d1, -(a0)
008550: 034c0378     movep.l    $378(a4), d1
008554: 03a4         bclr.b     d1, -(a4)
008556: 03cf03fb     movep.l    d1, $3fb(a7)
00855a: 04260451     subi.b     #$51, -(a6)
00855e: 047c         .dc.w      $047c
008560: 04a704d204fd subi.l     #$4d204fd, -(a7)
008566: 0527         btst.l     d2, -(a7)
008568: 0551         bchg.b     d2, (a1)
00856a: 057c         .dc.w      $057c
00856c: 05a6         bclr.b     d2, -(a6)
00856e: 05d0         bset.b     d2, (a0)
008570: 05f90623064c bset.b     d2, $623064c.l
008576: 0675069f06c7 addi.w     #$69f, -$39(a5, d0.w)
00857c: 06f0         .dc.w      $06f0
00857e: 0719         btst.l     d3, (a1)+
008580: 0741         bchg.b     d3, d1
008582: 07690791     bchg.b     d3, $791(a1)
008586: 07b907e00808 bclr.b     d3, $7e00808.l
00858c: 082f         .dc.w      $082f
00858e: 0856         .dc.w      $0856
008590: 087c         .dc.w      $087c
008592: 08a3         .dc.w      $08a3
008594: 08c9         .dc.w      $08c9
008596: 08ef         .dc.w      $08ef
008598: 0915         btst.l     d4, (a5)
00859a: 093b09600986 btst.l     d4, $986(a16, invalid.w)
0085a0: 09ab09cf     bclr.b     d4, $9cf(a3)
0085a4: 09f40a18     bset.b     d4, $18(a4, d0.l)
0085a8: 0a3d         .dc.w      $0a3d
0085aa: 0a610a84     eori.w     #$a84, -(a1)
0085ae: 0aa80acb0aee0b11 eori.l     #$acb0aee, $b11(a0)
0085b6: 0b330b56     btst.l     d5, ([a3])
0085ba: 0b780b9a     bchg.b     d5, $b9a.w
0085be: 0bbb         .dc.w      $0bbb
0085c0: 0bdd         bset.b     d5, (a5)+
0085c2: 0bfe         .dc.w      $0bfe
0085c4: 0c1f0c40     cmpi.b     #$40, (a7)+
0085c8: 0c600c81     cmpi.w     #$c81, -(a0)
0085cc: 0ca10cc00ce0 cmpi.l     #$cc00ce0, -(a1)
0085d2: 0cff         .dc.w      $0cff
0085d4: 0d1f         btst.l     d6, (a7)+
0085d6: 0d3e         .dc.w      $0d3e
0085d8: 0d5c         bchg.b     d6, (a4)+
0085da: 0d7b         .dc.w      $0d7b
0085dc: 0d99         bclr.b     d6, (a1)+
0085de: 0db70dd5     bclr.b     d6, ([])
0085e2: 0df30e10     bset.b     d6, $10(a3, d0.l)
0085e6: 0e2d         .dc.w      $0e2d
0085e8: 0e4a         .dc.w      $0e4a
0085ea: 0e67         .dc.w      $0e67
0085ec: 0e84         .dc.w      $0e84
0085ee: 0ea0         .dc.w      $0ea0
0085f0: 0ebc         .dc.w      $0ebc
0085f2: 0ed8         .dc.w      $0ed8
0085f4: 0ef4         .dc.w      $0ef4
0085f6: 0f0f0f2a     movep.w    $f2a(a7), d7
0085fa: 0f45         bchg.b     d7, d5
0085fc: 0f60         bchg.b     d7, -(a0)
0085fe: 0f7b         .dc.w      $0f7b
008600: 0f95         bclr.b     d7, (a5)
008602: 0fb00fca0fe3 bclr.b     d7, ([], $fe3)
008608: 0ffd         .dc.w      $0ffd
00860a: 1017         move.b     (a7), d0
00860c: 10301049     move.b     $49(a0, d1.w), d0
008610: 1062         .dc.w      $1062
008612: 107a         .dc.w      $107a
008614: 1093         move.b     (a3), (a0)
008616: 10ab10c3     move.b     $10c3(a3), (a0)
00861a: 10db         move.b     (a3)+, (a0)+
00861c: 10f3110b11221139 move.b     ([a3, d1.w], $11221139), (a0)+
008624: 11501167     move.b     (a0), $1167(a0)
008628: 117e         .dc.w      $117e
00862a: 11944e55     move.b     (a4), $55(a0, d4.l)
00862e: 000048e7     ori.b      #$e7, d0
008632: c080         and.l      d0, d0
008634: 598f         subq.l     #$4, a7
008636: 2eaf0004     move.l     $4(a7), (a7)
00863a: 6006         bra.b      $8642
00863c: 069700000168 addi.l     #$168, (a7)
008642: 4a97         tst.l      (a7)
008644: 6df6         blt.b      $863c
008646: 6006         bra.b      $864e
008648: 049700000168 subi.l     #$168, (a7)
00864e: 0c9700000168 cmpi.l     #$168, (a7)
008654: 6cf2         bge.b      $8648
008656: 705a         moveq      #$5a, d0
008658: b097         cmp.l      (a7), d0
00865a: 6d06         blt.b      $8662
00865c: 705a         moveq      #$5a, d0
00865e: 9097         sub.l      (a7), d0
008660: 603a         bra.b      $869c
008662: 0c97000000b4 cmpi.l     #$b4, (a7)
008668: 6e06         bgt.b      $8670
00866a: 70a6         moveq      #$a6, d0
00866c: d097         add.l      (a7), d0
00866e: 6010         bra.b      $8680
008670: 0c970000010e cmpi.l     #$10e, (a7)
008676: 6e1c         bgt.b      $8694
008678: 203c0000010e move.l     #$10e, d0
00867e: 9097         sub.l      (a7), d0
008680: 41fb0170fffffa5c lea.l      $fffffa5c(a16, invalid.w), a0
008688: 4cf000030e00 movem.l    (a0, d0.l * 8), d0-d1
00868e: 4e4f         trap       #$f
008690: 00156016     ori.b      #$16, (a5)
008694: 203cfffffef2 move.l     #$fffffef2, d0
00869a: d097         add.l      (a7), d0
00869c: 41fb0170fffffa40 lea.l      $fffffa40(a16, invalid.w), a0
0086a4: 4cf000030e00 movem.l    (a0, d0.l * 8), d0-d1
0086aa: 588f         addq.l     #$4, a7
0086ac: 4ced0100fffc movem.l    -$4(a5), a0
0086b2: 4e5d         unlk       a5
0086b4: 4e75         rts        
0086b6: 4e550000     link.w     a5, #$0
0086ba: 48e7c080     movem.l    d0-d1/a0, -(a7)
0086be: 598f         subq.l     #$4, a7
0086c0: 2eaf0004     move.l     $4(a7), (a7)
0086c4: 6006         bra.b      $86cc
0086c6: 069700000168 addi.l     #$168, (a7)
0086cc: 4a97         tst.l      (a7)
0086ce: 6df6         blt.b      $86c6
0086d0: 6006         bra.b      $86d8
0086d2: 049700000168 subi.l     #$168, (a7)
0086d8: 0c9700000168 cmpi.l     #$168, (a7)
0086de: 6cf2         bge.b      $86d2
0086e0: 705a         moveq      #$5a, d0
0086e2: b097         cmp.l      (a7), d0
0086e4: 6d04         blt.b      $86ea
0086e6: 2017         move.l     (a7), d0
0086e8: 6010         bra.b      $86fa
0086ea: 0c97000000b4 cmpi.l     #$b4, (a7)
0086f0: 6e18         bgt.b      $870a
0086f2: 203c000000b4 move.l     #$b4, d0
0086f8: 9097         sub.l      (a7), d0
0086fa: 41fb0170fffff9e2 lea.l      $fffff9e2(a16, invalid.w), a0
008702: 4cf000030e00 movem.l    (a0, d0.l * 8), d0-d1
008708: 602c         bra.b      $8736
00870a: 0c970000010e cmpi.l     #$10e, (a7)
008710: 6e0a         bgt.b      $871c
008712: 203cffffff4c move.l     #$ffffff4c, d0
008718: d097         add.l      (a7), d0
00871a: 6008         bra.b      $8724
00871c: 203c00000168 move.l     #$168, d0
008722: 9097         sub.l      (a7), d0
008724: 41fb0170fffff9b8 lea.l      $fffff9b8(a16, invalid.w), a0
00872c: 4cf000030e00 movem.l    (a0, d0.l * 8), d0-d1
008732: 4e4f         trap       #$f
008734: 0015588f     ori.b      #$8f, (a5)
008738: 4ced0100fffc movem.l    -$4(a5), a0
00873e: 4e5d         unlk       a5
008740: 4e75         rts        
008742: 4e550000     link.w     a5, #$0
008746: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
00874a: 598f         subq.l     #$4, a7
00874c: 2eaf0004     move.l     $4(a7), (a7)
008750: 6006         bra.b      $8758
008752: 069700000168 addi.l     #$168, (a7)
008758: 4a97         tst.l      (a7)
00875a: 6df6         blt.b      $8752
00875c: 6006         bra.b      $8764
00875e: 049700000168 subi.l     #$168, (a7)
008764: 0c9700000168 cmpi.l     #$168, (a7)
00876a: 6cf2         bge.b      $875e
00876c: 705a         moveq      #$5a, d0
00876e: b097         cmp.l      (a7), d0
008770: 6d20         blt.b      $8792
008772: 2017         move.l     (a7), d0
008774: 41fb0170fffff968 lea.l      $fffff968(a16, invalid.w), a0
00877c: 226f0008     movea.l    $8(a7), a1
008780: 23700e040004 move.l     $4(a0, d0.l), $4(a1)
008786: 22b00e00     move.l     (a0, d0.l * 8), (a1)
00878a: 705a         moveq      #$5a, d0
00878c: 9097         sub.l      (a7), d0
00878e: 600000a6     bra.w      $8836
008792: 0c97000000b4 cmpi.l     #$b4, (a7)
008798: 6e3e         bgt.b      $87d8
00879a: 203c000000b4 move.l     #$b4, d0
0087a0: 9097         sub.l      (a7), d0
0087a2: 41fb0170fffff93a lea.l      $fffff93a(a16, invalid.w), a0
0087aa: 226f0008     movea.l    $8(a7), a1
0087ae: 23700e040004 move.l     $4(a0, d0.l), $4(a1)
0087b4: 22b00e00     move.l     (a0, d0.l * 8), (a1)
0087b8: 70a6         moveq      #$a6, d0
0087ba: d097         add.l      (a7), d0
0087bc: 41fb0170fffff920 lea.l      $fffff920(a16, invalid.w), a0
0087c4: 4cf000030e00 movem.l    (a0, d0.l * 8), d0-d1
0087ca: 4e4f         trap       #$f
0087cc: 0015206f     ori.b      #$6f, (a5)
0087d0: 001c48d0     ori.b      #$d0, (a4)+
0087d4: 00036074     ori.b      #$74, d3
0087d8: 0c970000010e cmpi.l     #$10e, (a7)
0087de: 6e2c         bgt.b      $880c
0087e0: 203cffffff4c move.l     #$ffffff4c, d0
0087e6: d097         add.l      (a7), d0
0087e8: 41fb0170fffff8f4 lea.l      $fffff8f4(a16, invalid.w), a0
0087f0: 4cf000030e00 movem.l    (a0, d0.l * 8), d0-d1
0087f6: 4e4f         trap       #$f
0087f8: 0015206f     ori.b      #$6f, (a5)
0087fc: 0008         .dc.w      $0008
0087fe: 48d00003     movem.l    d0-d1, (a0)
008802: 203c0000010e move.l     #$10e, d0
008808: 9097         sub.l      (a7), d0
00880a: 60b0         bra.b      $87bc
00880c: 203c00000168 move.l     #$168, d0
008812: 9097         sub.l      (a7), d0
008814: 41fb0170fffff8c8 lea.l      $fffff8c8(a16, invalid.w), a0
00881c: 4cf000030e00 movem.l    (a0, d0.l * 8), d0-d1
008822: 4e4f         trap       #$f
008824: 0015206f     ori.b      #$6f, (a5)
008828: 0008         .dc.w      $0008
00882a: 48d00003     movem.l    d0-d1, (a0)
00882e: 203cfffffef2 move.l     #$fffffef2, d0
008834: d097         add.l      (a7), d0
008836: 41fb0170fffff8a6 lea.l      $fffff8a6(a16, invalid.w), a0
00883e: 226f001c     movea.l    $1c(a7), a1
008842: 23700e040004 move.l     $4(a0, d0.l), $4(a1)
008848: 22b00e00     move.l     (a0, d0.l * 8), (a1)
00884c: 588f         addq.l     #$4, a7
00884e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
008854: 4e5d         unlk       a5
008856: 4e75         rts        
008858: 4e550000     link.w     a5, #$0
00885c: 48e78000     movem.l    d0, -(a7)
008860: 7064         moveq      #$64, d0
008862: 4c170000     mulu.l     (a7), d0
008866: 4e5d         unlk       a5
008868: 4e75         rts        
00886a: 4e550000     link.w     a5, #$0
00886e: 48e7f000     movem.l    d0-d3, -(a7)
008872: 2017         move.l     (a7), d0
008874: 611a         bsr.b      $8890
008876: 4e4f         trap       #$f
008878: 00207600     ori.b      #$0, -(a0)
00887c: 243c40f86a00 move.l     #$40f86a00, d2
008882: 4e4f         trap       #$f
008884: 00134ced     ori.b      #$ed, (a3)
008888: 000c         .dc.w      $000c
00888a: fff8         dc.w       $fff8
00888c: 4e5d         unlk       a5
00888e: 4e75         rts        
008890: 4e550000     link.w     a5, #$0
008894: 48e7c080     movem.l    d0-d1/a0, -(a7)
008898: 4fefffec     lea.l      -$14(a7), a7
00889c: 2f6f0014000c move.l     $14(a7), $c(a7)
0088a2: 6008         bra.b      $88ac
0088a4: 06af00008ca0000c addi.l     #$8ca0, $c(a7)
0088ac: 4aaf000c     tst.l      $c(a7)
0088b0: 6df2         blt.b      $88a4
0088b2: 6008         bra.b      $88bc
0088b4: 04af00008ca0000c subi.l     #$8ca0, $c(a7)
0088bc: 0caf00008ca0000c cmpi.l     #$8ca0, $c(a7)
0088c4: 6cee         bge.b      $88b4
0088c6: 202f000c     move.l     $c(a7), d0
0088ca: 4c7c080000000064 divs.l     #$64, d0
0088d2: 2f400010     move.l     d0, $10(a7)
0088d6: 7064         moveq      #$64, d0
0088d8: 4c2f00000010 mulu.l     $10(a7), d0
0088de: 222f000c     move.l     $c(a7), d1
0088e2: 9280         sub.l      d0, d1
0088e4: 2f410008     move.l     d1, $8(a7)
0088e8: 705a         moveq      #$5a, d0
0088ea: b0af0010     cmp.l      $10(a7), d0
0088ee: 6d20         blt.b      $8910
0088f0: 705a         moveq      #$5a, d0
0088f2: 90af0010     sub.l      $10(a7), d0
0088f6: 5280         addq.l     #$1, d0
0088f8: 41fb0170fffffabc lea.l      $fffffabc(a16, invalid.w), a0
008900: 2f700c000004 move.l     (a0, d0.l * 4), $4(a7)
008906: 705a         moveq      #$5a, d0
008908: 90af0010     sub.l      $10(a7), d0
00890c: 60000092     bra.w      $89a0
008910: 0caf000000b40010 cmpi.l     #$b4, $10(a7)
008918: 6e30         bgt.b      $894a
00891a: 70a7         moveq      #$a7, d0
00891c: d0af0010     add.l      $10(a7), d0
008920: 41fb0170fffffa94 lea.l      $fffffa94(a16, invalid.w), a0
008928: 20300c00     move.l     (a0, d0.l * 4), d0
00892c: 4480         neg.l      d0
00892e: 2f400004     move.l     d0, $4(a7)
008932: 70a8         moveq      #$a8, d0
008934: d0af0010     add.l      $10(a7), d0
008938: 41fb0170fffffa7c lea.l      $fffffa7c(a16, invalid.w), a0
008940: 20300c00     move.l     (a0, d0.l * 4), d0
008944: 4480         neg.l      d0
008946: 2e80         move.l     d0, (a7)
008948: 6062         bra.b      $89ac
00894a: 0caf0000010e0010 cmpi.l     #$10e, $10(a7)
008952: 6e2a         bgt.b      $897e
008954: 203c0000010e move.l     #$10e, d0
00895a: 90af0010     sub.l      $10(a7), d0
00895e: 5280         addq.l     #$1, d0
008960: 41fb0170fffffa54 lea.l      $fffffa54(a16, invalid.w), a0
008968: 20300c00     move.l     (a0, d0.l * 4), d0
00896c: 4480         neg.l      d0
00896e: 2f400004     move.l     d0, $4(a7)
008972: 203c0000010e move.l     #$10e, d0
008978: 90af0010     sub.l      $10(a7), d0
00897c: 60ba         bra.b      $8938
00897e: 203cfffffef3 move.l     #$fffffef3, d0
008984: d0af0010     add.l      $10(a7), d0
008988: 41fb0170fffffa2c lea.l      $fffffa2c(a16, invalid.w), a0
008990: 2f700c000004 move.l     (a0, d0.l * 4), $4(a7)
008996: 203cfffffef4 move.l     #$fffffef4, d0
00899c: d0af0010     add.l      $10(a7), d0
0089a0: 41fb0170fffffa14 lea.l      $fffffa14(a16, invalid.w), a0
0089a8: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
0089ac: 2017         move.l     (a7), d0
0089ae: 90af0004     sub.l      $4(a7), d0
0089b2: 4c2f00000008 mulu.l     $8(a7), d0
0089b8: 4c7c080000000064 divs.l     #$64, d0
0089c0: d0af0004     add.l      $4(a7), d0
0089c4: 4fef0014     lea.l      $14(a7), a7
0089c8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0089ce: 4e5d         unlk       a5
0089d0: 4e75         rts        
0089d2: 4e550000     link.w     a5, #$0
0089d6: 48e7f000     movem.l    d0-d3, -(a7)
0089da: 203c00002328 move.l     #$2328, d0
0089e0: 9097         sub.l      (a7), d0
0089e2: 6100feac     bsr.w      $8890
0089e6: 4e4f         trap       #$f
0089e8: 00207600     ori.b      #$0, -(a0)
0089ec: 243c40f86a00 move.l     #$40f86a00, d2
0089f2: 4e4f         trap       #$f
0089f4: 00134ced     ori.b      #$ed, (a3)
0089f8: 000c         .dc.w      $000c
0089fa: fff8         dc.w       $fff8
0089fc: 4e5d         unlk       a5
0089fe: 4e75         rts        
008a00: 4e550000     link.w     a5, #$0
008a04: 48e7f080     movem.l    d0-d3/a0, -(a7)
008a08: 4fefffe4     lea.l      -$1c(a7), a7
008a0c: 2f6f001c0014 move.l     $1c(a7), $14(a7)
008a12: 6008         bra.b      $8a1c
008a14: 06af00008ca00014 addi.l     #$8ca0, $14(a7)
008a1c: 4aaf0014     tst.l      $14(a7)
008a20: 6df2         blt.b      $8a14
008a22: 6008         bra.b      $8a2c
008a24: 04af00008ca00014 subi.l     #$8ca0, $14(a7)
008a2c: 0caf00008ca00014 cmpi.l     #$8ca0, $14(a7)
008a34: 6cee         bge.b      $8a24
008a36: 202f0014     move.l     $14(a7), d0
008a3a: 4c7c080000000064 divs.l     #$64, d0
008a42: 2f400018     move.l     d0, $18(a7)
008a46: 7064         moveq      #$64, d0
008a48: 4c2f00000018 mulu.l     $18(a7), d0
008a4e: 222f0014     move.l     $14(a7), d1
008a52: 9280         sub.l      d0, d1
008a54: 2f410010     move.l     d1, $10(a7)
008a58: 705a         moveq      #$5a, d0
008a5a: b0af0018     cmp.l      $18(a7), d0
008a5e: 6d48         blt.b      $8aa8
008a60: 202f0018     move.l     $18(a7), d0
008a64: 5280         addq.l     #$1, d0
008a66: 41fb0170fffff94e lea.l      $fffff94e(a16, invalid.w), a0
008a6e: 2f700c00000c move.l     (a0, d0.l * 4), $c(a7)
008a74: 202f0018     move.l     $18(a7), d0
008a78: 5480         addq.l     #$2, d0
008a7a: 41fb0170fffff93a lea.l      $fffff93a(a16, invalid.w), a0
008a82: 2f700c000008 move.l     (a0, d0.l * 4), $8(a7)
008a88: 705a         moveq      #$5a, d0
008a8a: 90af0018     sub.l      $18(a7), d0
008a8e: 5280         addq.l     #$1, d0
008a90: 41fb0170fffff924 lea.l      $fffff924(a16, invalid.w), a0
008a98: 2f700c000004 move.l     (a0, d0.l * 4), $4(a7)
008a9e: 705a         moveq      #$5a, d0
008aa0: 90af0018     sub.l      $18(a7), d0
008aa4: 6000013a     bra.w      $8be0
008aa8: 0caf000000b40018 cmpi.l     #$b4, $18(a7)
008ab0: 6e64         bgt.b      $8b16
008ab2: 203c000000b4 move.l     #$b4, d0
008ab8: 90af0018     sub.l      $18(a7), d0
008abc: 5280         addq.l     #$1, d0
008abe: 41fb0170fffff8f6 lea.l      $fffff8f6(a16, invalid.w), a0
008ac6: 2f700c00000c move.l     (a0, d0.l * 4), $c(a7)
008acc: 203c000000b4 move.l     #$b4, d0
008ad2: 90af0018     sub.l      $18(a7), d0
008ad6: 41fb0170fffff8de lea.l      $fffff8de(a16, invalid.w), a0
008ade: 2f700c000008 move.l     (a0, d0.l * 4), $8(a7)
008ae4: 70a7         moveq      #$a7, d0
008ae6: d0af0018     add.l      $18(a7), d0
008aea: 41fb0170fffff8ca lea.l      $fffff8ca(a16, invalid.w), a0
008af2: 20300c00     move.l     (a0, d0.l * 4), d0
008af6: 4480         neg.l      d0
008af8: 2f400004     move.l     d0, $4(a7)
008afc: 70a8         moveq      #$a8, d0
008afe: d0af0018     add.l      $18(a7), d0
008b02: 41fb0170fffff8b2 lea.l      $fffff8b2(a16, invalid.w), a0
008b0a: 20300c00     move.l     (a0, d0.l * 4), d0
008b0e: 4480         neg.l      d0
008b10: 2e80         move.l     d0, (a7)
008b12: 600000d8     bra.w      $8bec
008b16: 0caf0000010e0018 cmpi.l     #$10e, $18(a7)
008b1e: 6e64         bgt.b      $8b84
008b20: 203cffffff4d move.l     #$ffffff4d, d0
008b26: d0af0018     add.l      $18(a7), d0
008b2a: 41fb0170fffff88a lea.l      $fffff88a(a16, invalid.w), a0
008b32: 20300c00     move.l     (a0, d0.l * 4), d0
008b36: 4480         neg.l      d0
008b38: 2f40000c     move.l     d0, $c(a7)
008b3c: 203cffffff4e move.l     #$ffffff4e, d0
008b42: d0af0018     add.l      $18(a7), d0
008b46: 41fb0170fffff86e lea.l      $fffff86e(a16, invalid.w), a0
008b4e: 20300c00     move.l     (a0, d0.l * 4), d0
008b52: 4480         neg.l      d0
008b54: 2f400008     move.l     d0, $8(a7)
008b58: 203c0000010e move.l     #$10e, d0
008b5e: 90af0018     sub.l      $18(a7), d0
008b62: 5280         addq.l     #$1, d0
008b64: 41fb0170fffff850 lea.l      $fffff850(a16, invalid.w), a0
008b6c: 20300c00     move.l     (a0, d0.l * 4), d0
008b70: 4480         neg.l      d0
008b72: 2f400004     move.l     d0, $4(a7)
008b76: 203c0000010e move.l     #$10e, d0
008b7c: 90af0018     sub.l      $18(a7), d0
008b80: 6000ff80     bra.w      $8b02
008b84: 203c00000168 move.l     #$168, d0
008b8a: 90af0018     sub.l      $18(a7), d0
008b8e: 5280         addq.l     #$1, d0
008b90: 41fb0170fffff824 lea.l      $fffff824(a16, invalid.w), a0
008b98: 20300c00     move.l     (a0, d0.l * 4), d0
008b9c: 4480         neg.l      d0
008b9e: 2f40000c     move.l     d0, $c(a7)
008ba2: 203c00000168 move.l     #$168, d0
008ba8: 90af0018     sub.l      $18(a7), d0
008bac: 41fb0170fffff808 lea.l      $fffff808(a16, invalid.w), a0
008bb4: 20300c00     move.l     (a0, d0.l * 4), d0
008bb8: 4480         neg.l      d0
008bba: 2f400008     move.l     d0, $8(a7)
008bbe: 203cfffffef3 move.l     #$fffffef3, d0
008bc4: d0af0018     add.l      $18(a7), d0
008bc8: 41fb0170fffff7ec lea.l      $fffff7ec(a16, invalid.w), a0
008bd0: 2f700c000004 move.l     (a0, d0.l * 4), $4(a7)
008bd6: 203cfffffef4 move.l     #$fffffef4, d0
008bdc: d0af0018     add.l      $18(a7), d0
008be0: 41fb0170fffff7d4 lea.l      $fffff7d4(a16, invalid.w), a0
008be8: 2eb00c00     move.l     (a0, d0.l * 4), (a7)
008bec: 202f0008     move.l     $8(a7), d0
008bf0: 90af000c     sub.l      $c(a7), d0
008bf4: 4c2f00000010 mulu.l     $10(a7), d0
008bfa: 4c7c080000000064 divs.l     #$64, d0
008c02: d0af000c     add.l      $c(a7), d0
008c06: 4e4f         trap       #$f
008c08: 00207600     ori.b      #$0, -(a0)
008c0c: 243c40f86a00 move.l     #$40f86a00, d2
008c12: 4e4f         trap       #$f
008c14: 0013206f     ori.b      #$6f, (a3)
008c18: 002048d0     ori.b      #$d0, -(a0)
008c1c: 00032017     ori.b      #$17, d3
008c20: 90af0004     sub.l      $4(a7), d0
008c24: 4c2f00000010 mulu.l     $10(a7), d0
008c2a: 4c7c080000000064 divs.l     #$64, d0
008c32: d0af0004     add.l      $4(a7), d0
008c36: 4e4f         trap       #$f
008c38: 00207600     ori.b      #$0, -(a0)
008c3c: 243c40f86a00 move.l     #$40f86a00, d2
008c42: 4e4f         trap       #$f
008c44: 0013206f     ori.b      #$6f, (a3)
008c48: 003848d00003 ori.b      #$d0, $3.w
008c4e: 4fef001c     lea.l      $1c(a7), a7
008c52: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
008c58: 4e5d         unlk       a5
008c5a: 4e75         rts        
008c5c: 4e550000     link.w     a5, #$0
008c60: 48e78000     movem.l    d0, -(a7)
008c64: 4a97         tst.l      (a7)
008c66: 6f04         ble.b      $8c6c
008c68: 7032         moveq      #$32, d0
008c6a: 6002         bra.b      $8c6e
008c6c: 70ce         moveq      #$ce, d0
008c6e: d097         add.l      (a7), d0
008c70: 4c7c080000000064 divs.l     #$64, d0
008c78: 4e5d         unlk       a5
008c7a: 4e75         rts        
008c7c: 4e550000     link.w     a5, #$0
008c80: 48e78000     movem.l    d0, -(a7)
008c84: 598f         subq.l     #$4, a7
008c86: 2eaf0004     move.l     $4(a7), (a7)
008c8a: 6006         bra.b      $8c92
008c8c: 069700008ca0 addi.l     #$8ca0, (a7)
008c92: 4a97         tst.l      (a7)
008c94: 6df6         blt.b      $8c8c
008c96: 6006         bra.b      $8c9e
008c98: 049700008ca0 subi.l     #$8ca0, (a7)
008c9e: 0c9700008ca0 cmpi.l     #$8ca0, (a7)
008ca4: 6cf2         bge.b      $8c98
008ca6: 302f0002     move.w     $2(a7), d0
008caa: 588f         addq.l     #$4, a7
008cac: 4e5d         unlk       a5
008cae: 4e75         rts        
008cb0: 4e550000     link.w     a5, #$0
008cb4: 48e7c000     movem.l    d0-d1, -(a7)
008cb8: 7000         moveq      #$0, d0
008cba: 302f0002     move.w     $2(a7), d0
008cbe: 7264         moveq      #$64, d1
008cc0: 4c010000     mulu.l     d1, d0
008cc4: 4ced0002fffc movem.l    -$4(a5), d1
008cca: 4e5d         unlk       a5
008ccc: 4e75         rts        
008cce: 4e550000     link.w     a5, #$0
008cd2: 48e7c000     movem.l    d0-d1, -(a7)
008cd6: 598f         subq.l     #$4, a7
008cd8: 7000         moveq      #$0, d0
008cda: 302f0006     move.w     $6(a7), d0
008cde: 7232         moveq      #$32, d1
008ce0: d081         add.l      d1, d0
008ce2: 4c7c080000000064 divs.l     #$64, d0
008cea: 2e80         move.l     d0, (a7)
008cec: 0c9700000168 cmpi.l     #$168, (a7)
008cf2: 6604         bne.b      $8cf8
008cf4: 7000         moveq      #$0, d0
008cf6: 6004         bra.b      $8cfc
008cf8: 302f0002     move.w     $2(a7), d0
008cfc: 588f         addq.l     #$4, a7
008cfe: 4ced0002fffc movem.l    -$4(a5), d1
008d04: 4e5d         unlk       a5
008d06: 4e75         rts        
008d08: 4e550000     link.w     a5, #$0
008d0c: 48e7c000     movem.l    d0-d1, -(a7)
008d10: 7000         moveq      #$0, d0
008d12: 302f0002     move.w     $2(a7), d0
008d16: d0af0004     add.l      $4(a7), d0
008d1a: 6100ff60     bsr.w      $8c7c
008d1e: 4e5d         unlk       a5
008d20: 4e75         rts        
008d22: 4e550000     link.w     a5, #$0
008d26: 48e7c000     movem.l    d0-d1, -(a7)
008d2a: 7000         moveq      #$0, d0
008d2c: 302f0002     move.w     $2(a7), d0
008d30: 90af0004     sub.l      $4(a7), d0
008d34: 6100ff46     bsr.w      $8c7c
008d38: 4e5d         unlk       a5
008d3a: 4e75         rts        
008d3c: 4e550000     link.w     a5, #$0
008d40: 48e7c000     movem.l    d0-d1, -(a7)
008d44: 598f         subq.l     #$4, a7
008d46: 7000         moveq      #$0, d0
008d48: 302f0006     move.w     $6(a7), d0
008d4c: 7200         moveq      #$0, d1
008d4e: 322f000a     move.w     $a(a7), d1
008d52: d081         add.l      d1, d0
008d54: 2e80         move.l     d0, (a7)
008d56: 0c9700008ca0 cmpi.l     #$8ca0, (a7)
008d5c: 6d0a         blt.b      $8d68
008d5e: 303c7360     move.w     #$7360, d0
008d62: d06f0002     add.w      $2(a7), d0
008d66: 6004         bra.b      $8d6c
008d68: 302f0002     move.w     $2(a7), d0
008d6c: 588f         addq.l     #$4, a7
008d6e: 4e5d         unlk       a5
008d70: 4e75         rts        
008d72: 4e550000     link.w     a5, #$0
008d76: 48e7c000     movem.l    d0-d1, -(a7)
008d7a: 598f         subq.l     #$4, a7
008d7c: 7000         moveq      #$0, d0
008d7e: 302f0006     move.w     $6(a7), d0
008d82: 7200         moveq      #$0, d1
008d84: 322f000a     move.w     $a(a7), d1
008d88: d081         add.l      d1, d0
008d8a: 2e80         move.l     d0, (a7)
008d8c: 0c970000d2f0 cmpi.l     #$d2f0, (a7)
008d92: 6d08         blt.b      $8d9c
008d94: 203cfffee6c0 move.l     #$fffee6c0, d0
008d9a: 600e         bra.b      $8daa
008d9c: 0c9700004650 cmpi.l     #$4650, (a7)
008da2: 6d0a         blt.b      $8dae
008da4: 203cffff7360 move.l     #$ffff7360, d0
008daa: d097         add.l      (a7), d0
008dac: 6002         bra.b      $8db0
008dae: 2017         move.l     (a7), d0
008db0: 588f         addq.l     #$4, a7
008db2: 4e5d         unlk       a5
008db4: 4e75         rts        
008db6: 4e550000     link.w     a5, #$0
008dba: 48e7c000     movem.l    d0-d1, -(a7)
008dbe: 518f         subq.l     #$8, a7
008dc0: 7000         moveq      #$0, d0
008dc2: 302f000e     move.w     $e(a7), d0
008dc6: 7200         moveq      #$0, d1
008dc8: 322f000a     move.w     $a(a7), d1
008dcc: 9280         sub.l      d0, d1
008dce: 2f410004     move.l     d1, $4(a7)
008dd2: 7000         moveq      #$0, d0
008dd4: 302f000a     move.w     $a(a7), d0
008dd8: 7200         moveq      #$0, d1
008dda: 322f000e     move.w     $e(a7), d1
008dde: d081         add.l      d1, d0
008de0: e280         asr.l      #$1, d0
008de2: 2e80         move.l     d0, (a7)
008de4: 4aaf0004     tst.l      $4(a7)
008de8: 6c08         bge.b      $8df2
008dea: 202f0004     move.l     $4(a7), d0
008dee: 4480         neg.l      d0
008df0: 6004         bra.b      $8df6
008df2: 202f0004     move.l     $4(a7), d0
008df6: 0c8000004650 cmpi.l     #$4650, d0
008dfc: 6f18         ble.b      $8e16
008dfe: 0c9700004650 cmpi.l     #$4650, (a7)
008e04: 6d06         blt.b      $8e0c
008e06: 303cb9b0     move.w     #$b9b0, d0
008e0a: 6004         bra.b      $8e10
008e0c: 303c4650     move.w     #$4650, d0
008e10: d06f0002     add.w      $2(a7), d0
008e14: 6004         bra.b      $8e1a
008e16: 302f0002     move.w     $2(a7), d0
008e1a: 508f         addq.l     #$8, a7
008e1c: 4e5d         unlk       a5
008e1e: 4e75         rts        
008e20: 4e550000     link.w     a5, #$0
008e24: 48e7c000     movem.l    d0-d1, -(a7)
008e28: 598f         subq.l     #$4, a7
008e2a: 7000         moveq      #$0, d0
008e2c: 302f000a     move.w     $a(a7), d0
008e30: 7200         moveq      #$0, d1
008e32: 322f0006     move.w     $6(a7), d1
008e36: 9280         sub.l      d0, d1
008e38: 2e81         move.l     d1, (a7)
008e3a: 4a97         tst.l      (a7)
008e3c: 6c06         bge.b      $8e44
008e3e: 2017         move.l     (a7), d0
008e40: 4480         neg.l      d0
008e42: 6002         bra.b      $8e46
008e44: 2017         move.l     (a7), d0
008e46: 2e80         move.l     d0, (a7)
008e48: 0c9700004650 cmpi.l     #$4650, (a7)
008e4e: 6f0a         ble.b      $8e5a
008e50: 303c8ca0     move.w     #$8ca0, d0
008e54: 906f0002     sub.w      $2(a7), d0
008e58: 6004         bra.b      $8e5e
008e5a: 302f0002     move.w     $2(a7), d0
008e5e: 588f         addq.l     #$4, a7
008e60: 4e5d         unlk       a5
008e62: 4e75         rts        
008e64: 4e550000     link.w     a5, #$0
008e68: 48e7c000     movem.l    d0-d1, -(a7)
008e6c: 598f         subq.l     #$4, a7
008e6e: 7000         moveq      #$0, d0
008e70: 302f000a     move.w     $a(a7), d0
008e74: 7200         moveq      #$0, d1
008e76: 322f0006     move.w     $6(a7), d1
008e7a: 9280         sub.l      d0, d1
008e7c: 2e81         move.l     d1, (a7)
008e7e: 4a97         tst.l      (a7)
008e80: 6c06         bge.b      $8e88
008e82: 2017         move.l     (a7), d0
008e84: 4480         neg.l      d0
008e86: 6002         bra.b      $8e8a
008e88: 2017         move.l     (a7), d0
008e8a: 2e80         move.l     d0, (a7)
008e8c: 0c9700006978 cmpi.l     #$6978, (a7)
008e92: 6d06         blt.b      $8e9a
008e94: 303c8ca0     move.w     #$8ca0, d0
008e98: 601e         bra.b      $8eb8
008e9a: 0c9700004650 cmpi.l     #$4650, (a7)
008ea0: 6d0a         blt.b      $8eac
008ea2: 303cb9b0     move.w     #$b9b0, d0
008ea6: d06f0002     add.w      $2(a7), d0
008eaa: 6016         bra.b      $8ec2
008eac: 0c9700002328 cmpi.l     #$2328, (a7)
008eb2: 6d0a         blt.b      $8ebe
008eb4: 303c4650     move.w     #$4650, d0
008eb8: 906f0002     sub.w      $2(a7), d0
008ebc: 6004         bra.b      $8ec2
008ebe: 302f0002     move.w     $2(a7), d0
008ec2: 588f         addq.l     #$4, a7
008ec4: 4e5d         unlk       a5
008ec6: 4e75         rts        
008ec8: 4e550000     link.w     a5, #$0
008ecc: 48e7c000     movem.l    d0-d1, -(a7)
008ed0: 302f0006     move.w     $6(a7), d0
008ed4: b06f0002     cmp.w      $2(a7), d0
008ed8: 6314         bls.b      $8eee
008eda: 7000         moveq      #$0, d0
008edc: 302f0006     move.w     $6(a7), d0
008ee0: 7200         moveq      #$0, d1
008ee2: 322f0002     move.w     $2(a7), d1
008ee6: 9240         sub.w      d0, d1
008ee8: 06418ca0     addi.w     #$8ca0, d1
008eec: 600e         bra.b      $8efc
008eee: 7000         moveq      #$0, d0
008ef0: 302f0006     move.w     $6(a7), d0
008ef4: 7200         moveq      #$0, d1
008ef6: 322f0002     move.w     $2(a7), d1
008efa: 9240         sub.w      d0, d1
008efc: 3001         move.w     d1, d0
008efe: 4e5d         unlk       a5
008f00: 4e75         rts        
008f02: 4e550000     link.w     a5, #$0
008f06: 48e7c000     movem.l    d0-d1, -(a7)
008f0a: 598f         subq.l     #$4, a7
008f0c: 7000         moveq      #$0, d0
008f0e: 302f000a     move.w     $a(a7), d0
008f12: 7200         moveq      #$0, d1
008f14: 322f0006     move.w     $6(a7), d1
008f18: 9280         sub.l      d0, d1
008f1a: 2e81         move.l     d1, (a7)
008f1c: 0c9700004650 cmpi.l     #$4650, (a7)
008f22: 6d08         blt.b      $8f2c
008f24: 203cffff7360 move.l     #$ffff7360, d0
008f2a: 600e         bra.b      $8f3a
008f2c: 0c97ffffb9b0 cmpi.l     #$ffffb9b0, (a7)
008f32: 6c0a         bge.b      $8f3e
008f34: 203c00008ca0 move.l     #$8ca0, d0
008f3a: d097         add.l      (a7), d0
008f3c: 6002         bra.b      $8f40
008f3e: 2017         move.l     (a7), d0
008f40: 588f         addq.l     #$4, a7
008f42: 4e5d         unlk       a5
008f44: 4e75         rts        
008f46: 4e550000     link.w     a5, #$0
008f4a: 48e7c000     movem.l    d0-d1, -(a7)
008f4e: 598f         subq.l     #$4, a7
008f50: 302f000a     move.w     $a(a7), d0
008f54: b06f0016     cmp.w      $16(a7), d0
008f58: 6216         bhi.b      $8f70
008f5a: 302f000a     move.w     $a(a7), d0
008f5e: b06f0006     cmp.w      $6(a7), d0
008f62: 6224         bhi.b      $8f88
008f64: 302f0006     move.w     $6(a7), d0
008f68: b06f0016     cmp.w      $16(a7), d0
008f6c: 6316         bls.b      $8f84
008f6e: 6018         bra.b      $8f88
008f70: 302f0006     move.w     $6(a7), d0
008f74: b06f0016     cmp.w      $16(a7), d0
008f78: 630a         bls.b      $8f84
008f7a: 302f0006     move.w     $6(a7), d0
008f7e: b06f000a     cmp.w      $a(a7), d0
008f82: 6504         bcs.b      $8f88
008f84: 7000         moveq      #$0, d0
008f86: 603a         bra.b      $8fc2
008f88: 7000         moveq      #$0, d0
008f8a: 302f000a     move.w     $a(a7), d0
008f8e: 2200         move.l     d0, d1
008f90: 7000         moveq      #$0, d0
008f92: 302f0006     move.w     $6(a7), d0
008f96: 6100fe88     bsr.w      $8e20
008f9a: 3f400002     move.w     d0, $2(a7)
008f9e: 7000         moveq      #$0, d0
008fa0: 302f0016     move.w     $16(a7), d0
008fa4: 2200         move.l     d0, d1
008fa6: 7000         moveq      #$0, d0
008fa8: 302f0006     move.w     $6(a7), d0
008fac: 6100fe72     bsr.w      $8e20
008fb0: 3e80         move.w     d0, (a7)
008fb2: 302f0002     move.w     $2(a7), d0
008fb6: b057         cmp.w      (a7), d0
008fb8: 6406         bcc.b      $8fc0
008fba: 302f0002     move.w     $2(a7), d0
008fbe: 6002         bra.b      $8fc2
008fc0: 3017         move.w     (a7), d0
008fc2: 588f         addq.l     #$4, a7
008fc4: 4e5d         unlk       a5
008fc6: 4e75         rts        
008fc8: 4e550000     link.w     a5, #$0
008fcc: 48e7f080     movem.l    d0-d3/a0, -(a7)
008fd0: 598f         subq.l     #$4, a7
008fd2: 4cef00030020 movem.l    $20(a7), d0-d1
008fd8: 263ca0b5ed8d move.l     #$a0b5ed8d, d3
008fde: 243c3eb0c6f7 move.l     #$3eb0c6f7, d2
008fe4: 4e4f         trap       #$f
008fe6: 00146f00     ori.b      #$0, (a4)
008fea: 013c4aaf0004 btst.l     d0, #$4aaf0004
008ff0: 6d000094     blt.w      $9086
008ff4: 4cef00030020 movem.l    $20(a7), d0-d1
008ffa: 4cef000c0004 movem.l    $4(a7), d2-d3
009000: 4e4f         trap       #$f
009002: 00146d40     ori.b      #$40, (a4)
009006: 7600         moveq      #$0, d3
009008: 243c40600000 move.l     #$40600000, d2
00900e: 4cef00030004 movem.l    $4(a7), d0-d1
009014: 4e4f         trap       #$f
009016: 00124cef     ori.b      #$ef, (a2)
00901a: 000c         .dc.w      $000c
00901c: 00204e4f     ori.b      #$4f, -(a0)
009020: 00137600     ori.b      #$0, (a3)
009024: 243c3fe00000 move.l     #$3fe00000, d2
00902a: 4e4f         trap       #$f
00902c: 000e         .dc.w      $000e
00902e: 4e4f         trap       #$f
009030: 00242e80     ori.b      #$80, -(a4)
009034: 2017         move.l     (a7), d0
009036: 41fb0170fffff4f2 lea.l      $fffff4f2(a16, invalid.w), a0
00903e: 30300a00     move.w     (a0, d0.l * 2), d0
009042: 6000024e     bra.w      $9292
009046: 7600         moveq      #$0, d3
009048: 243c40600000 move.l     #$40600000, d2
00904e: 4cef00030020 movem.l    $20(a7), d0-d1
009054: 4e4f         trap       #$f
009056: 00124cef     ori.b      #$ef, (a2)
00905a: 000c         .dc.w      $000c
00905c: 00044e4f     ori.b      #$4f, d4
009060: 00137600     ori.b      #$0, (a3)
009064: 243c3fe00000 move.l     #$3fe00000, d2
00906a: 4e4f         trap       #$f
00906c: 000e         .dc.w      $000e
00906e: 4e4f         trap       #$f
009070: 00242e80     ori.b      #$80, -(a4)
009074: 2017         move.l     (a7), d0
009076: 41fb0170fffff4b2 lea.l      $fffff4b2(a16, invalid.w), a0
00907e: 323c2328     move.w     #$2328, d1
009082: 600001ec     bra.w      $9270
009086: 4cef00030004 movem.l    $4(a7), d0-d1
00908c: 4e4f         trap       #$f
00908e: 00154cef     ori.b      #$ef, (a5)
009092: 000c         .dc.w      $000c
009094: 00204e4f     ori.b      #$4f, -(a0)
009098: 00146e48     ori.b      #$48, (a4)
00909c: 7600         moveq      #$0, d3
00909e: 243c40600000 move.l     #$40600000, d2
0090a4: 4cef00030004 movem.l    $4(a7), d0-d1
0090aa: 4e4f         trap       #$f
0090ac: 00124cef     ori.b      #$ef, (a2)
0090b0: 000c         .dc.w      $000c
0090b2: 00204e4f     ori.b      #$4f, -(a0)
0090b6: 00137600     ori.b      #$0, (a3)
0090ba: 243c3fe00000 move.l     #$3fe00000, d2
0090c0: 4e4f         trap       #$f
0090c2: 00104e4f     ori.b      #$4f, (a0)
0090c6: 00242e80     ori.b      #$80, -(a4)
0090ca: 4a97         tst.l      (a7)
0090cc: 670001b0     beq.w      $927e
0090d0: 2017         move.l     (a7), d0
0090d2: 4480         neg.l      d0
0090d4: 41fb0170fffff454 lea.l      $fffff454(a16, invalid.w), a0
0090dc: 323c8ca0     move.w     #$8ca0, d1
0090e0: 6000018e     bra.w      $9270
0090e4: 7600         moveq      #$0, d3
0090e6: 243c40600000 move.l     #$40600000, d2
0090ec: 4cef00030020 movem.l    $20(a7), d0-d1
0090f2: 4e4f         trap       #$f
0090f4: 00124cef     ori.b      #$ef, (a2)
0090f8: 000c         .dc.w      $000c
0090fa: 00044e4f     ori.b      #$4f, d4
0090fe: 00137600     ori.b      #$0, (a3)
009102: 243c3fe00000 move.l     #$3fe00000, d2
009108: 4e4f         trap       #$f
00910a: 00104e4f     ori.b      #$4f, (a0)
00910e: 00242e80     ori.b      #$80, -(a4)
009112: 2017         move.l     (a7), d0
009114: 4480         neg.l      d0
009116: 41fb0170fffff412 lea.l      $fffff412(a16, invalid.w), a0
00911e: 323c6978     move.w     #$6978, d1
009122: 6000010a     bra.w      $922e
009126: 4cef00030020 movem.l    $20(a7), d0-d1
00912c: 263ca0b5ed8d move.l     #$a0b5ed8d, d3
009132: 243cbeb0c6f7 move.l     #$beb0c6f7, d2
009138: 4e4f         trap       #$f
00913a: 00146c00     ori.b      #$0, (a4)
00913e: 013a4aaf     btst.l     d0, $dbef(pc)
009142: 00046d00     ori.b      #$0, d4
009146: 009a4cef0003 ori.l      #$4cef0003, (a2)+
00914c: 00204e4f     ori.b      #$4f, -(a0)
009150: 00154cef     ori.b      #$ef, (a5)
009154: 000c         .dc.w      $000c
009156: 00044e4f     ori.b      #$4f, d4
00915a: 00146d42     ori.b      #$42, (a4)
00915e: 7600         moveq      #$0, d3
009160: 243c40600000 move.l     #$40600000, d2
009166: 4cef00030004 movem.l    $4(a7), d0-d1
00916c: 4e4f         trap       #$f
00916e: 00124cef     ori.b      #$ef, (a2)
009172: 000c         .dc.w      $000c
009174: 00204e4f     ori.b      #$4f, -(a0)
009178: 00137600     ori.b      #$0, (a3)
00917c: 243c3fe00000 move.l     #$3fe00000, d2
009182: 4e4f         trap       #$f
009184: 00104e4f     ori.b      #$4f, (a0)
009188: 00242e80     ori.b      #$80, -(a4)
00918c: 2017         move.l     (a7), d0
00918e: 4480         neg.l      d0
009190: 41fb0170fffff398 lea.l      $fffff398(a16, invalid.w), a0
009198: 323c4650     move.w     #$4650, d1
00919c: 600000d2     bra.w      $9270
0091a0: 7600         moveq      #$0, d3
0091a2: 243c40600000 move.l     #$40600000, d2
0091a8: 4cef00030020 movem.l    $20(a7), d0-d1
0091ae: 4e4f         trap       #$f
0091b0: 00124cef     ori.b      #$ef, (a2)
0091b4: 000c         .dc.w      $000c
0091b6: 00044e4f     ori.b      #$4f, d4
0091ba: 00137600     ori.b      #$0, (a3)
0091be: 243c3fe00000 move.l     #$3fe00000, d2
0091c4: 4e4f         trap       #$f
0091c6: 00104e4f     ori.b      #$4f, (a0)
0091ca: 00242e80     ori.b      #$80, -(a4)
0091ce: 2017         move.l     (a7), d0
0091d0: 4480         neg.l      d0
0091d2: 41fb0170fffff356 lea.l      $fffff356(a16, invalid.w), a0
0091da: 323c2328     move.w     #$2328, d1
0091de: 604e         bra.b      $922e
0091e0: 4cef00030020 movem.l    $20(a7), d0-d1
0091e6: 4cef000c0004 movem.l    $4(a7), d2-d3
0091ec: 4e4f         trap       #$f
0091ee: 00146e42     ori.b      #$42, (a4)
0091f2: 7600         moveq      #$0, d3
0091f4: 243c40600000 move.l     #$40600000, d2
0091fa: 4cef00030004 movem.l    $4(a7), d0-d1
009200: 4e4f         trap       #$f
009202: 00124cef     ori.b      #$ef, (a2)
009206: 000c         .dc.w      $000c
009208: 00204e4f     ori.b      #$4f, -(a0)
00920c: 00137600     ori.b      #$0, (a3)
009210: 243c3fe00000 move.l     #$3fe00000, d2
009216: 4e4f         trap       #$f
009218: 000e         .dc.w      $000e
00921a: 4e4f         trap       #$f
00921c: 00242e80     ori.b      #$80, -(a4)
009220: 2017         move.l     (a7), d0
009222: 41fb0170fffff306 lea.l      $fffff306(a16, invalid.w), a0
00922a: 323c4650     move.w     #$4650, d1
00922e: d2700a00     add.w      (a0, d0.l * 2), d1
009232: 6040         bra.b      $9274
009234: 7600         moveq      #$0, d3
009236: 243c40600000 move.l     #$40600000, d2
00923c: 4cef00030020 movem.l    $20(a7), d0-d1
009242: 4e4f         trap       #$f
009244: 00124cef     ori.b      #$ef, (a2)
009248: 000c         .dc.w      $000c
00924a: 00044e4f     ori.b      #$4f, d4
00924e: 00137600     ori.b      #$0, (a3)
009252: 243c3fe00000 move.l     #$3fe00000, d2
009258: 4e4f         trap       #$f
00925a: 000e         .dc.w      $000e
00925c: 4e4f         trap       #$f
00925e: 00242e80     ori.b      #$80, -(a4)
009262: 2017         move.l     (a7), d0
009264: 41fb0170fffff2c4 lea.l      $fffff2c4(a16, invalid.w), a0
00926c: 323c6978     move.w     #$6978, d1
009270: 92700a00     sub.w      (a0, d0.l * 2), d1
009274: 3001         move.w     d1, d0
009276: 601a         bra.b      $9292
009278: 4aaf0004     tst.l      $4(a7)
00927c: 6604         bne.b      $9282
00927e: 7000         moveq      #$0, d0
009280: 6010         bra.b      $9292
009282: 4aaf0004     tst.l      $4(a7)
009286: 6f06         ble.b      $928e
009288: 303c2328     move.w     #$2328, d0
00928c: 6004         bra.b      $9292
00928e: 303c6978     move.w     #$6978, d0
009292: 588f         addq.l     #$4, a7
009294: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
00929a: 4e5d         unlk       a5
00929c: 4e75         rts        
00929e: 4e550000     link.w     a5, #$0
0092a2: 48e7c080     movem.l    d0-d1/a0, -(a7)
0092a6: 598f         subq.l     #$4, a7
0092a8: 4aaf0008     tst.l      $8(a7)
0092ac: 6f00013e     ble.w      $93ec
0092b0: 4aaf0004     tst.l      $4(a7)
0092b4: 6d000094     blt.w      $934a
0092b8: 202f0008     move.l     $8(a7), d0
0092bc: b0af0004     cmp.l      $4(a7), d0
0092c0: 6d44         blt.b      $9306
0092c2: 0caf00ffffff0004 cmpi.l     #$ffffff, $4(a7)
0092ca: 6416         bcc.b      $92e2
0092cc: 202f0004     move.l     $4(a7), d0
0092d0: ef88         lsl.l      #$7, d0
0092d2: 222f0008     move.l     $8(a7), d1
0092d6: e289         lsr.l      #$1, d1
0092d8: d081         add.l      d1, d0
0092da: 4c6f00000008 divu.l     $8(a7), d0
0092e0: 6010         bra.b      $92f2
0092e2: 202f0008     move.l     $8(a7), d0
0092e6: ee88         lsr.l      #$7, d0
0092e8: 222f0004     move.l     $4(a7), d1
0092ec: 4c401001     divu.l     d0, d1
0092f0: 2001         move.l     d1, d0
0092f2: 2e80         move.l     d0, (a7)
0092f4: 2017         move.l     (a7), d0
0092f6: 41fb0170fffff232 lea.l      $fffff232(a16, invalid.w), a0
0092fe: 30300a00     move.w     (a0, d0.l * 2), d0
009302: 6000024e     bra.w      $9552
009306: 0caf00ffffff0008 cmpi.l     #$ffffff, $8(a7)
00930e: 6416         bcc.b      $9326
009310: 202f0008     move.l     $8(a7), d0
009314: ef88         lsl.l      #$7, d0
009316: 222f0004     move.l     $4(a7), d1
00931a: e289         lsr.l      #$1, d1
00931c: d081         add.l      d1, d0
00931e: 4c6f00000004 divu.l     $4(a7), d0
009324: 6010         bra.b      $9336
009326: 202f0004     move.l     $4(a7), d0
00932a: ee88         lsr.l      #$7, d0
00932c: 222f0008     move.l     $8(a7), d1
009330: 4c401001     divu.l     d0, d1
009334: 2001         move.l     d1, d0
009336: 2e80         move.l     d0, (a7)
009338: 2017         move.l     (a7), d0
00933a: 41fb0170fffff1ee lea.l      $fffff1ee(a16, invalid.w), a0
009342: 323c2328     move.w     #$2328, d1
009346: 600001e8     bra.w      $9530
00934a: 202f0004     move.l     $4(a7), d0
00934e: 4480         neg.l      d0
009350: 2f400004     move.l     d0, $4(a7)
009354: 202f0008     move.l     $8(a7), d0
009358: b0af0004     cmp.l      $4(a7), d0
00935c: 6d4a         blt.b      $93a8
00935e: 0caf00ffffff0004 cmpi.l     #$ffffff, $4(a7)
009366: 6416         bcc.b      $937e
009368: 202f0004     move.l     $4(a7), d0
00936c: ef88         lsl.l      #$7, d0
00936e: 222f0008     move.l     $8(a7), d1
009372: e289         lsr.l      #$1, d1
009374: d081         add.l      d1, d0
009376: 4c6f00000008 divu.l     $8(a7), d0
00937c: 6010         bra.b      $938e
00937e: 202f0008     move.l     $8(a7), d0
009382: ee88         lsr.l      #$7, d0
009384: 222f0004     move.l     $4(a7), d1
009388: 4c401001     divu.l     d0, d1
00938c: 2001         move.l     d1, d0
00938e: 2e80         move.l     d0, (a7)
009390: 4a97         tst.l      (a7)
009392: 670001aa     beq.w      $953e
009396: 2017         move.l     (a7), d0
009398: 41fb0170fffff190 lea.l      $fffff190(a16, invalid.w), a0
0093a0: 323c8ca0     move.w     #$8ca0, d1
0093a4: 6000018a     bra.w      $9530
0093a8: 0caf00ffffff0008 cmpi.l     #$ffffff, $8(a7)
0093b0: 6416         bcc.b      $93c8
0093b2: 202f0008     move.l     $8(a7), d0
0093b6: ef88         lsl.l      #$7, d0
0093b8: 222f0004     move.l     $4(a7), d1
0093bc: e289         lsr.l      #$1, d1
0093be: d081         add.l      d1, d0
0093c0: 4c6f00000004 divu.l     $4(a7), d0
0093c6: 6010         bra.b      $93d8
0093c8: 202f0004     move.l     $4(a7), d0
0093cc: ee88         lsr.l      #$7, d0
0093ce: 222f0008     move.l     $8(a7), d1
0093d2: 4c401001     divu.l     d0, d1
0093d6: 2001         move.l     d1, d0
0093d8: 2e80         move.l     d0, (a7)
0093da: 2017         move.l     (a7), d0
0093dc: 41fb0170fffff14c lea.l      $fffff14c(a16, invalid.w), a0
0093e4: 323c6978     move.w     #$6978, d1
0093e8: 60000100     bra.w      $94ea
0093ec: 4aaf0008     tst.l      $8(a7)
0093f0: 6c000146     bge.w      $9538
0093f4: 202f0008     move.l     $8(a7), d0
0093f8: 4480         neg.l      d0
0093fa: 2f400008     move.l     d0, $8(a7)
0093fe: 4aaf0004     tst.l      $4(a7)
009402: 6d000092     blt.w      $9496
009406: 202f0008     move.l     $8(a7), d0
00940a: b0af0004     cmp.l      $4(a7), d0
00940e: 6d44         blt.b      $9454
009410: 0caf00ffffff0004 cmpi.l     #$ffffff, $4(a7)
009418: 6416         bcc.b      $9430
00941a: 202f0004     move.l     $4(a7), d0
00941e: ef88         lsl.l      #$7, d0
009420: 222f0008     move.l     $8(a7), d1
009424: e289         lsr.l      #$1, d1
009426: d081         add.l      d1, d0
009428: 4c6f00000008 divu.l     $8(a7), d0
00942e: 6010         bra.b      $9440
009430: 202f0008     move.l     $8(a7), d0
009434: ee88         lsr.l      #$7, d0
009436: 222f0004     move.l     $4(a7), d1
00943a: 4c401001     divu.l     d0, d1
00943e: 2001         move.l     d1, d0
009440: 2e80         move.l     d0, (a7)
009442: 2017         move.l     (a7), d0
009444: 41fb0170fffff0e4 lea.l      $fffff0e4(a16, invalid.w), a0
00944c: 323c4650     move.w     #$4650, d1
009450: 600000de     bra.w      $9530
009454: 0caf00ffffff0008 cmpi.l     #$ffffff, $8(a7)
00945c: 6416         bcc.b      $9474
00945e: 202f0008     move.l     $8(a7), d0
009462: ef88         lsl.l      #$7, d0
009464: 222f0004     move.l     $4(a7), d1
009468: e289         lsr.l      #$1, d1
00946a: d081         add.l      d1, d0
00946c: 4c6f00000004 divu.l     $4(a7), d0
009472: 6010         bra.b      $9484
009474: 202f0004     move.l     $4(a7), d0
009478: ee88         lsr.l      #$7, d0
00947a: 222f0008     move.l     $8(a7), d1
00947e: 4c401001     divu.l     d0, d1
009482: 2001         move.l     d1, d0
009484: 2e80         move.l     d0, (a7)
009486: 2017         move.l     (a7), d0
009488: 41fb0170fffff0a0 lea.l      $fffff0a0(a16, invalid.w), a0
009490: 323c2328     move.w     #$2328, d1
009494: 6054         bra.b      $94ea
009496: 202f0004     move.l     $4(a7), d0
00949a: 4480         neg.l      d0
00949c: 2f400004     move.l     d0, $4(a7)
0094a0: 202f0008     move.l     $8(a7), d0
0094a4: b0af0004     cmp.l      $4(a7), d0
0094a8: 6d46         blt.b      $94f0
0094aa: 0caf00ffffff0004 cmpi.l     #$ffffff, $4(a7)
0094b2: 6416         bcc.b      $94ca
0094b4: 202f0004     move.l     $4(a7), d0
0094b8: ef88         lsl.l      #$7, d0
0094ba: 222f0008     move.l     $8(a7), d1
0094be: e289         lsr.l      #$1, d1
0094c0: d081         add.l      d1, d0
0094c2: 4c6f00000008 divu.l     $8(a7), d0
0094c8: 6010         bra.b      $94da
0094ca: 202f0008     move.l     $8(a7), d0
0094ce: ee88         lsr.l      #$7, d0
0094d0: 222f0004     move.l     $4(a7), d1
0094d4: 4c401001     divu.l     d0, d1
0094d8: 2001         move.l     d1, d0
0094da: 2e80         move.l     d0, (a7)
0094dc: 2017         move.l     (a7), d0
0094de: 41fb0170fffff04a lea.l      $fffff04a(a16, invalid.w), a0
0094e6: 323c4650     move.w     #$4650, d1
0094ea: d2700a00     add.w      (a0, d0.l * 2), d1
0094ee: 6044         bra.b      $9534
0094f0: 0caf00ffffff0008 cmpi.l     #$ffffff, $8(a7)
0094f8: 6416         bcc.b      $9510
0094fa: 202f0008     move.l     $8(a7), d0
0094fe: ef88         lsl.l      #$7, d0
009500: 222f0004     move.l     $4(a7), d1
009504: e289         lsr.l      #$1, d1
009506: d081         add.l      d1, d0
009508: 4c6f00000004 divu.l     $4(a7), d0
00950e: 6010         bra.b      $9520
009510: 202f0004     move.l     $4(a7), d0
009514: ee88         lsr.l      #$7, d0
009516: 222f0008     move.l     $8(a7), d1
00951a: 4c401001     divu.l     d0, d1
00951e: 2001         move.l     d1, d0
009520: 2e80         move.l     d0, (a7)
009522: 2017         move.l     (a7), d0
009524: 41fb0170fffff004 lea.l      $fffff004(a16, invalid.w), a0
00952c: 323c6978     move.w     #$6978, d1
009530: 92700a00     sub.w      (a0, d0.l * 2), d1
009534: 3001         move.w     d1, d0
009536: 601a         bra.b      $9552
009538: 4aaf0004     tst.l      $4(a7)
00953c: 6604         bne.b      $9542
00953e: 7000         moveq      #$0, d0
009540: 6010         bra.b      $9552
009542: 4aaf0004     tst.l      $4(a7)
009546: 6f06         ble.b      $954e
009548: 303c2328     move.w     #$2328, d0
00954c: 6004         bra.b      $9552
00954e: 303c6978     move.w     #$6978, d0
009552: 588f         addq.l     #$4, a7
009554: 4ced0100fffc movem.l    -$4(a5), a0
00955a: 4e5d         unlk       a5
00955c: 4e75         rts        
00955e: 4e550000     link.w     a5, #$0
009562: 48e7c080     movem.l    d0-d1/a0, -(a7)
009566: 206f0004     movea.l    $4(a7), a0
00956a: 21570004     move.l     (a7), $4(a0)
00956e: 4a97         tst.l      (a7)
009570: 6c04         bge.b      $9576
009572: 70ff         moveq      #$ff, d0
009574: 6002         bra.b      $9578
009576: 7000         moveq      #$0, d0
009578: 206f0004     movea.l    $4(a7), a0
00957c: 2080         move.l     d0, (a0)
00957e: 4ced0100fffc movem.l    -$4(a5), a0
009584: 4e5d         unlk       a5
009586: 4e75         rts        
009588: 4e550000     link.w     a5, #$0
00958c: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
009590: 2800         move.l     d0, d4
009592: 2a01         move.l     d1, d5
009594: 246f001c     movea.l    $1c(a7), a2
009598: 4c045c04     muls.l     d4, d4:d5
00959c: 48d20030     movem.l    d4-d5, (a2)
0095a0: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
0095a6: 4e5d         unlk       a5
0095a8: 4e75         rts        
0095aa: 4e550000     link.w     a5, #$0
0095ae: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
0095b2: 2800         move.l     d0, d4
0095b4: 2a01         move.l     d1, d5
0095b6: 518f         subq.l     #$8, a7
0095b8: 4857         pea.l      (a7)
0095ba: 2f05         move.l     d5, -(a7)
0095bc: 2f05         move.l     d5, -(a7)
0095be: 2204         move.l     d4, d1
0095c0: 2004         move.l     d4, d0
0095c2: 6100007e     bsr.w      $9642
0095c6: 4fef000c     lea.l      $c(a7), a7
0095ca: 41d7         lea.l      (a7), a0
0095cc: 2008         move.l     a0, d0
0095ce: 6100019a     bsr.w      $976a
0095d2: 508f         addq.l     #$8, a7
0095d4: 4ced0130fff4 movem.l    -$c(a5), d4-d5/a0
0095da: 4e5d         unlk       a5
0095dc: 4e75         rts        
0095de: 4e550000     link.w     a5, #$0
0095e2: 48e7ce00     movem.l    d0-d1/d4-d6, -(a7)
0095e6: 2800         move.l     d0, d4
0095e8: 2a01         move.l     d1, d5
0095ea: 2c2f001c     move.l     $1c(a7), d6
0095ee: 4c045c04     muls.l     d4, d4:d5
0095f2: 4c465c04     divs.l     d6, d4:d5
0095f6: 2005         move.l     d5, d0
0095f8: 4ced0070fff4 movem.l    -$c(a5), d4-d6
0095fe: 4e5d         unlk       a5
009600: 4e75         rts        
009602: 4e550000     link.w     a5, #$0
009606: 48e7ce00     movem.l    d0-d1/d4-d6, -(a7)
00960a: 2800         move.l     d0, d4
00960c: 2a01         move.l     d1, d5
00960e: 2c2f001c     move.l     $1c(a7), d6
009612: 48e7c000     movem.l    d0-d1, -(a7)
009616: 2206         move.l     d6, d1
009618: 6a02         bpl.b      $961c
00961a: 4481         neg.l      d1
00961c: e281         asr.l      #$1, d1
00961e: 7000         moveq      #$0, d0
009620: 4c045c04     muls.l     d4, d4:d5
009624: 6a04         bpl.b      $962a
009626: 4481         neg.l      d1
009628: 70ff         moveq      #$ff, d0
00962a: da81         add.l      d1, d5
00962c: d980         addx.l     d0, d4
00962e: 4c465c04     divs.l     d6, d4:d5
009632: 4cdf0003     movem.l    (a7)+, d0-d1
009636: 2005         move.l     d5, d0
009638: 4ced0070fff4 movem.l    -$c(a5), d4-d6
00963e: 4e5d         unlk       a5
009640: 4e75         rts        
009642: 4e550000     link.w     a5, #$0
009646: 48e7cf20     movem.l    d0-d1/d4-d7/a2, -(a7)
00964a: 2800         move.l     d0, d4
00964c: 2a01         move.l     d1, d5
00964e: 2c2f0024     move.l     $24(a7), d6
009652: 2e2f0028     move.l     $28(a7), d7
009656: 246f002c     movea.l    $2c(a7), a2
00965a: 4c045c04     muls.l     d4, d4:d5
00965e: 4c067c06     muls.l     d6, d6:d7
009662: da87         add.l      d7, d5
009664: d986         addx.l     d6, d4
009666: 48d20030     movem.l    d4-d5, (a2)
00966a: 4ced04f0ffec movem.l    -$14(a5), d4-d7/a2
009670: 4e5d         unlk       a5
009672: 4e75         rts        
009674: 4e550000     link.w     a5, #$0
009678: 48e7cf00     movem.l    d0-d1/d4-d7, -(a7)
00967c: 2800         move.l     d0, d4
00967e: 2a01         move.l     d1, d5
009680: 2c2f0020     move.l     $20(a7), d6
009684: 2e2f0024     move.l     $24(a7), d7
009688: 4c045c04     muls.l     d4, d4:d5
00968c: 4c067c06     muls.l     d6, d6:d7
009690: 9a87         sub.l      d7, d5
009692: 9986         subx.l     d6, d4
009694: 4a84         tst.l      d4
009696: 6608         bne.b      $96a0
009698: 4a85         tst.l      d5
00969a: 6704         beq.b      $96a0
00969c: 7001         moveq      #$1, d0
00969e: 6002         bra.b      $96a2
0096a0: 2004         move.l     d4, d0
0096a2: 4ced00f0fff0 movem.l    -$10(a5), d4-d7
0096a8: 4e5d         unlk       a5
0096aa: 4e75         rts        
0096ac: 4e550000     link.w     a5, #$0
0096b0: 48e7cf20     movem.l    d0-d1/d4-d7/a2, -(a7)
0096b4: 2800         move.l     d0, d4
0096b6: 2a01         move.l     d1, d5
0096b8: 2c2f0024     move.l     $24(a7), d6
0096bc: 2e2f0028     move.l     $28(a7), d7
0096c0: 246f002c     movea.l    $2c(a7), a2
0096c4: 4c045c04     muls.l     d4, d4:d5
0096c8: 4c067c06     muls.l     d6, d6:d7
0096cc: 9a87         sub.l      d7, d5
0096ce: 9986         subx.l     d6, d4
0096d0: 48d20030     movem.l    d4-d5, (a2)
0096d4: 4ced04f0ffec movem.l    -$14(a5), d4-d7/a2
0096da: 4e5d         unlk       a5
0096dc: 4e75         rts        
0096de: 4e550000     link.w     a5, #$0
0096e2: 48e7cf00     movem.l    d0-d1/d4-d7, -(a7)
0096e6: 2801         move.l     d1, d4
0096e8: 2a2f0020     move.l     $20(a7), d5
0096ec: 2c2f0024     move.l     $24(a7), d6
0096f0: 2e2f0028     move.l     $28(a7), d7
0096f4: 4c004c00     muls.l     d0, d0:d4
0096f8: 4c056c05     muls.l     d5, d5:d6
0096fc: d886         add.l      d6, d4
0096fe: d185         addx.l     d5, d0
009700: 4c474c00     divs.l     d7, d0:d4
009704: 2004         move.l     d4, d0
009706: 4ced00f0fff0 movem.l    -$10(a5), d4-d7
00970c: 4e5d         unlk       a5
00970e: 4e75         rts        
009710: 4e550000     link.w     a5, #$0
009714: 48e7cf00     movem.l    d0-d1/d4-d7, -(a7)
009718: 2801         move.l     d1, d4
00971a: 2a2f0020     move.l     $20(a7), d5
00971e: 2c2f0024     move.l     $24(a7), d6
009722: 2e2f0028     move.l     $28(a7), d7
009726: 4c004c00     muls.l     d0, d0:d4
00972a: 4c056c05     muls.l     d5, d5:d6
00972e: 9886         sub.l      d6, d4
009730: 9185         subx.l     d5, d0
009732: 4c474c00     divs.l     d7, d0:d4
009736: 2004         move.l     d4, d0
009738: 4ced00f0fff0 movem.l    -$10(a5), d4-d7
00973e: 4e5d         unlk       a5
009740: 4e75         rts        
009742: 4e550000     link.w     a5, #$0
009746: 48e78080     movem.l    d0/a0, -(a7)
00974a: 2057         movea.l    (a7), a0
00974c: 4a90         tst.l      (a0)
00974e: 660c         bne.b      $975c
009750: 2057         movea.l    (a7), a0
009752: 4aa80004     tst.l      $4(a0)
009756: 6704         beq.b      $975c
009758: 7001         moveq      #$1, d0
00975a: 6004         bra.b      $9760
00975c: 2057         movea.l    (a7), a0
00975e: 2010         move.l     (a0), d0
009760: 4ced0100fffc movem.l    -$4(a5), a0
009766: 4e5d         unlk       a5
009768: 4e75         rts        
00976a: 48e77880     movem.l    d1-d4/a0, -(a7)
00976e: 2040         movea.l    d0, a0
009770: 4cd00003     movem.l    (a0), d0-d1
009774: 2801         move.l     d1, d4
009776: 2600         move.l     d0, d3
009778: 660e         bne.b      $9788
00977a: 2001         move.l     d1, d0
00977c: 61000104     bsr.w      $9882
009780: 02800000ffff andi.l     #$ffff, d0
009786: 601e         bra.b      $97a6
009788: 610000f8     bsr.w      $9882
00978c: 74ff         moveq      #$ff, d2
00978e: 3400         move.w     d0, d2
009790: 4842         swap       d2
009792: 2002         move.l     d2, d0
009794: 2203         move.l     d3, d1
009796: 2404         move.l     d4, d2
009798: 4c402401     divu.l     d0, d1:d2
00979c: 6908         bvs.b      $97a6
00979e: d480         add.l      d0, d2
0097a0: e292         roxr.l     #$1, d2
0097a2: b480         cmp.l      d0, d2
0097a4: 65ec         bcs.b      $9792
0097a6: 4cdf011e     movem.l    (a7)+, d1-d4/a0
0097aa: 4e75         rts        
0097ac: 4e550000     link.w     a5, #$0
0097b0: 48e7f080     movem.l    d0-d3/a0, -(a7)
0097b4: 2057         movea.l    (a7), a0
0097b6: 2010         move.l     (a0), d0
0097b8: 4e4f         trap       #$f
0097ba: 00207600     ori.b      #$0, -(a0)
0097be: 243c41f00000 move.l     #$41f00000, d2
0097c4: 4e4f         trap       #$f
0097c6: 00122057     ori.b      #$57, (a2)
0097ca: 2601         move.l     d1, d3
0097cc: 2400         move.l     d0, d2
0097ce: 20280004     move.l     $4(a0), d0
0097d2: 4e4f         trap       #$f
0097d4: 00224e4f     ori.b      #$4f, -(a2)
0097d8: 000e         .dc.w      $000e
0097da: 4ced010cfff4 movem.l    -$c(a5), d2-d3/a0
0097e0: 4e5d         unlk       a5
0097e2: 4e75         rts        
0097e4: 4e550000     link.w     a5, #$0
0097e8: 48e7ce20     movem.l    d0-d1/d4-d6/a2, -(a7)
0097ec: 2440         movea.l    d0, a2
0097ee: 2801         move.l     d1, d4
0097f0: 4cd20060     movem.l    (a2), d5-d6
0097f4: 4c446c05     divs.l     d4, d5:d6
0097f8: 2006         move.l     d6, d0
0097fa: 4ced0470fff0 movem.l    -$10(a5), d4-d6/a2
009800: 4e5d         unlk       a5
009802: 4e75         rts        
009804: 4e550000     link.w     a5, #$0
009808: 48e7ce38     movem.l    d0-d1/d4-d6/a2-a4, -(a7)
00980c: 2440         movea.l    d0, a2
00980e: 2641         movea.l    d1, a3
009810: 286f0028     movea.l    $28(a7), a4
009814: 4cd20030     movem.l    (a2), d4-d5
009818: 2c1b         move.l     (a3)+, d6
00981a: da93         add.l      (a3), d5
00981c: d986         addx.l     d6, d4
00981e: 48d40030     movem.l    d4-d5, (a4)
009822: 4ced1c70ffe8 movem.l    -$18(a5), d4-d6/a2-a4
009828: 4e5d         unlk       a5
00982a: 4e75         rts        
00982c: 4e550000     link.w     a5, #$0
009830: 48e7ce30     movem.l    d0-d1/d4-d6/a2-a3, -(a7)
009834: 2440         movea.l    d0, a2
009836: 2641         movea.l    d1, a3
009838: 4cd20030     movem.l    (a2), d4-d5
00983c: 2c1b         move.l     (a3)+, d6
00983e: 9a93         sub.l      (a3), d5
009840: 9986         subx.l     d6, d4
009842: 4a84         tst.l      d4
009844: 6608         bne.b      $984e
009846: 4a85         tst.l      d5
009848: 6704         beq.b      $984e
00984a: 7001         moveq      #$1, d0
00984c: 6002         bra.b      $9850
00984e: 2004         move.l     d4, d0
009850: 4ced0c70ffec movem.l    -$14(a5), d4-d6/a2-a3
009856: 4e5d         unlk       a5
009858: 4e75         rts        
00985a: 4e550000     link.w     a5, #$0
00985e: 48e7ce38     movem.l    d0-d1/d4-d6/a2-a4, -(a7)
009862: 2440         movea.l    d0, a2
009864: 2641         movea.l    d1, a3
009866: 286f0028     movea.l    $28(a7), a4
00986a: 4cd20030     movem.l    (a2), d4-d5
00986e: 2c1b         move.l     (a3)+, d6
009870: 9a93         sub.l      (a3), d5
009872: 9986         subx.l     d6, d4
009874: 48d40030     movem.l    d4-d5, (a4)
009878: 4ced1c70ffe8 movem.l    -$18(a5), d4-d6/a2-a4
00987e: 4e5d         unlk       a5
009880: 4e75         rts        
009882: 48e77000     movem.l    d1-d3, -(a7)
009886: 2600         move.l     d0, d3
009888: 4843         swap       d3
00988a: 4a43         tst.w      d3
00988c: 56c1         sne.b      d1
00988e: 6602         bne.b      $9892
009890: 4843         swap       d3
009892: b67c0100     cmp.w      #$100, d3
009896: 6530         bcs.b      $98c8
009898: b67c1000     cmp.w      #$1000, d3
00989c: 651c         bcs.b      $98ba
00989e: b67c4000     cmp.w      #$4000, d3
0098a2: 6512         bcs.b      $98b6
0098a4: 243c000000ff move.l     #$ff, d2
0098aa: b0bc40000000 cmp.l      #$40000000, d0
0098b0: 653e         bcs.b      $98f0
0098b2: 6000005c     bra.w      $9910
0098b6: 747f         moveq      #$7f, d2
0098b8: 6036         bra.b      $98f0
0098ba: b67c0400     cmp.w      #$400, d3
0098be: 6504         bcs.b      $98c4
0098c0: 743f         moveq      #$3f, d2
0098c2: 602c         bra.b      $98f0
0098c4: 741f         moveq      #$1f, d2
0098c6: 6028         bra.b      $98f0
0098c8: b67c0010     cmp.w      #$10, d3
0098cc: 650e         bcs.b      $98dc
0098ce: b67c0040     cmp.w      #$40, d3
0098d2: 6504         bcs.b      $98d8
0098d4: 740f         moveq      #$f, d2
0098d6: 6018         bra.b      $98f0
0098d8: 7407         moveq      #$7, d2
0098da: 6014         bra.b      $98f0
0098dc: b67c0004     cmp.w      #$4, d3
0098e0: 6504         bcs.b      $98e6
0098e2: 7403         moveq      #$3, d2
0098e4: 600a         bra.b      $98f0
0098e6: 7401         moveq      #$1, d2
0098e8: 0c8000000001 cmpi.l     #$1, d0
0098ee: 631a         bls.b      $990a
0098f0: 4a01         tst.b      d1
0098f2: 6708         beq.b      $98fc
0098f4: 4843         swap       d3
0098f6: 1f02         move.b     d2, -(a7)
0098f8: 341f         move.w     (a7)+, d2
0098fa: 8401         or.b       d1, d2
0098fc: 3002         move.w     d2, d0
0098fe: 2403         move.l     d3, d2
009900: 84c0         divu.w     d0, d2
009902: d440         add.w      d0, d2
009904: e252         roxr.w     #$1, d2
009906: b440         cmp.w      d0, d2
009908: 65f2         bcs.b      $98fc
00990a: 4cdf000e     movem.l    (a7)+, d1-d3
00990e: 4e75         rts        
009910: 74ff         moveq      #$ff, d2
009912: 2600         move.l     d0, d3
009914: 3002         move.w     d2, d0
009916: 2403         move.l     d3, d2
009918: 84c0         divu.w     d0, d2
00991a: 6908         bvs.b      $9924
00991c: d440         add.w      d0, d2
00991e: e252         roxr.w     #$1, d2
009920: b440         cmp.w      d0, d2
009922: 65f0         bcs.b      $9914
009924: 4cdf000e     movem.l    (a7)+, d1-d3
009928: 4e75         rts        
00992a: 4e550000     link.w     a5, #$0
00992e: 48e78000     movem.l    d0, -(a7)
009932: 7001         moveq      #$1, d0
009934: 4e5d         unlk       a5
009936: 4e75         rts        
009938: 3d06         move.w     d6, -(a6)
00993a: 849b         or.l       (a3)+, d2
00993c: 86a1         or.l       -(a1), d3
00993e: 2b9c3fe00000 move.l     (a4)+, (invalid.w)
009944: 00000000     ori.b      #$0, d0
009948: 48e73000     movem.l    d2-d3, -(a7)
00994c: 4cfa000cffe8 movem.l    $9936(pc), d2-d3
009952: 4e4f         trap       #$f
009954: 002e4cdf000c ori.b      #$df, $c(a6)
00995a: 4e75         rts        
00995c: 48e73000     movem.l    d2-d3, -(a7)
009960: 4cfa000cffd4 movem.l    $9936(pc), d2-d3
009966: 4e4f         trap       #$f
009968: 002f4cdf000c ori.b      #$df, $c(a7)
00996e: 4e75         rts        
009970: 48e73000     movem.l    d2-d3, -(a7)
009974: 4cfa000cffc0 movem.l    $9936(pc), d2-d3
00997a: 4e4f         trap       #$f
00997c: 00304cdf000c ori.b      #$df, $c(a0, d0.w)
009982: 4e75         rts        
009984: 48e73000     movem.l    d2-d3, -(a7)
009988: 4cfa000cffac movem.l    $9936(pc), d2-d3
00998e: 4e4f         trap       #$f
009990: 00314cdf000c ori.b      #$df, $c(a1, d0.w)
009996: 4e75         rts        
009998: 48e73000     movem.l    d2-d3, -(a7)
00999c: 4cfa000cff98 movem.l    $9936(pc), d2-d3
0099a2: 4e4f         trap       #$f
0099a4: 00324cdf000c ori.b      #$df, $c(a2, d0.w)
0099aa: 4e75         rts        
0099ac: 48e73000     movem.l    d2-d3, -(a7)
0099b0: 4cfa000cff84 movem.l    $9936(pc), d2-d3
0099b6: 4e4f         trap       #$f
0099b8: 00334cdf000c ori.b      #$df, $c(a3, d0.w)
0099be: 4e75         rts        
0099c0: 48e73000     movem.l    d2-d3, -(a7)
0099c4: 4cfa000cff70 movem.l    $9936(pc), d2-d3
0099ca: 4e4f         trap       #$f
0099cc: 00374cdf000c ori.b      #$df, $c(a7, d0.w)
0099d2: 4e75         rts        
0099d4: 48e73000     movem.l    d2-d3, -(a7)
0099d8: 4cfa000cff5c movem.l    $9936(pc), d2-d3
0099de: 4e4f         trap       #$f
0099e0: 00344cdf000c ori.b      #$df, $c(a4, d0.w)
0099e6: 4e75         rts        
0099e8: 48e73000     movem.l    d2-d3, -(a7)
0099ec: 4cfa000cff48 movem.l    $9936(pc), d2-d3
0099f2: 4e4f         trap       #$f
0099f4: 00354cdf000c ori.b      #$df, $c(a5, d0.w)
0099fa: 4e75         rts        
0099fc: 48e73c00     movem.l    d2-d5, -(a7)
009a00: 4cef000c0014 movem.l    $14(a7), d2-d3
009a06: 4cfa0030ff2e movem.l    $9936(pc), d4-d5
009a0c: 4e4f         trap       #$f
009a0e: 00384cdf003c ori.b      #$df, $3c.w
009a14: 4e75         rts        
009a16: 48e73000     movem.l    d2-d3, -(a7)
009a1a: 4cfa000cff1a movem.l    $9936(pc), d2-d3
009a20: 4e4f         trap       #$f
009a22: 00364cdf000c ori.b      #$df, $c(a6, d0.w)
009a28: 4e75         rts        
009a2a: 48e73000     movem.l    d2-d3, -(a7)
009a2e: 4a80         tst.l      d0
009a30: 6c0e         bge.b      $9a40
009a32: 4e4f         trap       #$f
009a34: 002a4a82670a ori.b      #$82, $670a(a2)
009a3a: 4e4f         trap       #$f
009a3c: 00116004     ori.b      #$4, (a1)
009a40: 4e4f         trap       #$f
009a42: 002a4cdf000c ori.b      #$df, $c(a2)
009a48: 4e75         rts        
009a4a: 48e73000     movem.l    d2-d3, -(a7)
009a4e: 4a80         tst.l      d0
009a50: 670e         beq.b      $9a60
009a52: 0840001f     bchg.b     #$1f, d0
009a56: 61d2         bsr.b      $9a2a
009a58: 4a80         tst.l      d0
009a5a: 6704         beq.b      $9a60
009a5c: 0840001f     bchg.b     #$1f, d0
009a60: 4cdf000c     movem.l    (a7)+, d2-d3
009a64: 4e75         rts        
009a66: 0880001f     bclr.b     #$1f, d0
009a6a: 4e75         rts        
009a6c: 48e73080     movem.l    d2-d3/a0, -(a7)
009a70: 4e4f         trap       #$f
009a72: 002a206f0010 ori.b      #$6f, $10(a2)
009a78: 48d00003     movem.l    d0-d1, (a0)
009a7c: 2002         move.l     d2, d0
009a7e: 2203         move.l     d3, d1
009a80: 4cdf010c     movem.l    (a7)+, d2-d3/a0
009a84: 4e75         rts        
009a86: 48e73c00     movem.l    d2-d5, -(a7)
009a8a: 4cef000c0014 movem.l    $14(a7), d2-d3
009a90: 0880001f     bclr.b     #$1f, d0
009a94: 0882001f     bclr.b     #$1f, d2
009a98: 4e4f         trap       #$f
009a9a: 00146b04     ori.b      #$4, (a4)
009a9e: c142         exg.l      d0, d2
009aa0: c343         exg.l      d1, d3
009aa2: 48ef000c0014 movem.l    d2-d3, $14(a7)
009aa8: 4a82         tst.l      d2
009aaa: 6606         bne.b      $9ab2
009aac: 2002         move.l     d2, d0
009aae: 2203         move.l     d3, d1
009ab0: 6024         bra.b      $9ad6
009ab2: 4e4f         trap       #$f
009ab4: 00132400     ori.b      #$0, (a3)
009ab8: 2601         move.l     d1, d3
009aba: 4e4f         trap       #$f
009abc: 00124e4f     ori.b      #$4f, (a2)
009ac0: 000f         .dc.w      $000f
009ac2: 4cfa000cfe72 movem.l    $9936(pc), d2-d3
009ac8: 4e4f         trap       #$f
009aca: 00364cef000c ori.b      #$ef, $c(a6, d0.w)
009ad0: 00144e4f     ori.b      #$4f, (a4)
009ad4: 00124cdf     ori.b      #$df, (a2)
009ad8: 003c         .dc.w      $003c
009ada: 4e75         rts        
009adc: 636f         bls.b      $9b4d
009ade: 6f72         ble.b      $9b52
009ae0: 645f         bcc.b      $9b41
009ae2: 7461         moveq      #$61, d2
009ae4: 626c         bhi.b      $9b52
009ae6: 6573         bcs.b      $9b5b
009ae8: 0000         ori.b      #$aa, d0
