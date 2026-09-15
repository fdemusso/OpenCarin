000088: 600016b0     bra.w      $173a
00008c: 00000001     ori.b      #$1, d0
000090: 00000001     ori.b      #$1, d0
000094: 4e75         rts        
000096: b0bd         .dc.w      $b0bd
000098: b0bd         .dc.w      $b0bd
00009a: 4e75         rts        
00009c: 4572         .dc.w      $4572
00009e: 726f         moveq      #$6f, d1
0000a0: 723a         moveq      #$3a, d1
0000a2: 2073797374656d2073746174 movea.l    ([$74656d20, a3], $73746174), a0
0000ae: 6520         bcs.b      $d0
0000b0: 6578         bcs.b      $12a
0000b2: 6365         bls.b      $119
0000b4: 7074         moveq      #$74, d0
0000b6: 696f         bvs.b      $127
0000b8: 6e3b         bgt.b      $f5
0000ba: 20766563746f72202324 movea.l    ([$746f, a6], $72202324), a0
0000c4: 00202061     ori.b      #$61, -(a0)
0000c8: 7420         moveq      #$20, d2
0000ca: 6164         bsr.b      $130
0000cc: 6472         bcc.b      $140
0000ce: 2024         move.l     -(a4), d0
0000d0: 002d2d3e2053 ori.b      #$3e, $2053(a5)
0000d6: 7973         .dc.w      $7973
0000d8: 7465         moveq      #$65, d2
0000da: 6d20         blt.b      $fc
0000dc: 5265         addq.w     #$1, -(a5)
0000de: 7365         .dc.w      $7365
0000e0: 7420         moveq      #$20, d2
0000e2: 3c2d2d00     move.w     $2d00(a5), d6
0000e6: 070d0a00     movep.w    $a00(a5), d3
0000ea: 007c0700     ori.w      #$700, sr
0000ee: 48e7fffe     movem.l    d0-d7/a0-a6, -(a7)
0000f2: 4e7ae801     movec      vbr, a6
0000f6: 2c56         movea.l    (a6), a6
0000f8: 7600         moveq      #$0, d3
0000fa: 7a00         moveq      #$0, d5
0000fc: 0cae000109aa03c8 cmpi.l     #$109aa, $3c8(a6)
000104: 673e         beq.b      $144
000106: 0cae00010acc03c8 cmpi.l     #$10acc, $3c8(a6)
00010e: 6744         beq.b      $154
000110: 0cae000109b403c8 cmpi.l     #$109b4, $3c8(a6)
000118: 674a         beq.b      $164
00011a: 0cae000109be03c8 cmpi.l     #$109be, $3c8(a6)
000122: 6740         beq.b      $164
000124: 62000068     bhi.w      $18e
000128: 362f0040     move.w     $40(a7), d3
00012c: 282f0042     move.l     $42(a7), d4
000130: 3a2f0046     move.w     $46(a7), d5
000134: 3f6f00480040 move.w     $48(a7), $40(a7)
00013a: 2f6f004a0042 move.l     $4a(a7), $42(a7)
000140: 60000140     bra.w      $282
000144: 362f0048     move.w     $48(a7), d3
000148: 282f004a     move.l     $4a(a7), d4
00014c: 3a2f0058     move.w     $58(a7), d5
000150: 60000130     bra.w      $282
000154: 362f0056     move.w     $56(a7), d3
000158: 282f0048     move.l     $48(a7), d4
00015c: 2a2f004c     move.l     $4c(a7), d5
000160: 60000120     bra.w      $282
000164: 362f004a     move.w     $4a(a7), d3
000168: 282f0050     move.l     $50(a7), d4
00016c: 2a2f004c     move.l     $4c(a7), d5
000170: 082f00050040 btst.b     #$5, $40(a7)
000176: 6612         bne.b      $18a
000178: 4a2e002f     tst.b      $2f(a6)
00017c: 670c         beq.b      $18a
00017e: 2e2f003c     move.l     $3c(a7), d7
000182: be7c0008     cmp.w      #$8, d7
000186: 6700010a     beq.w      $292
00018a: 600000f6     bra.w      $282
00018e: 362f0048     move.w     $48(a7), d3
000192: 282f0054     move.l     $54(a7), d4
000196: 3a2f005c     move.w     $5c(a7), d5
00019a: 600000e6     bra.w      $282
00019e: 007c0700     ori.w      #$700, sr
0001a2: 0c6e4afc0000 cmpi.w     #$4afc, $0(a6)
0001a8: 6638         bne.b      $1e2
0001aa: 286e004c     movea.l    $4c(a6), a4
0001ae: 4a2e003a     tst.b      $3a(a6)
0001b2: 6a2e         bpl.b      $1e2
0001b4: 202c0140     move.l     $140(a4), d0
0001b8: 206c0144     movea.l    $144(a4), a0
0001bc: 6724         beq.b      $1e2
0001be: 2207         move.l     d7, d1
0001c0: e449         lsr.w      #$2, d1
0001c2: 06410064     addi.w     #$64, d1
0001c6: 003c0001     ori.b      #$1, ccr
0001ca: 2e40         movea.l    d0, a7
0001cc: 027cf8ff     andi.w     #$f8ff, sr
0001d0: 4ed0         jmp        (a0)
0001d2: 598f         subq.l     #$4, a7
0001d4: 40e7         move.w     sr, -(a7)
0001d6: 48e7fffe     movem.l    d0-d7/a0-a6, -(a7)
0001da: 007c0700     ori.w      #$700, sr
0001de: 614a         bsr.b      $22a
0001e0: 601a         bra.b      $1fc
0001e2: 41fafeb8     lea.l      $9c(pc), a0
0001e6: 6148         bsr.b      $230
0001e8: 202f003c     move.l     $3c(a7), d0
0001ec: 615a         bsr.b      $248
0001ee: 41fafed5     lea.l      $c5(pc), a0
0001f2: 613c         bsr.b      $230
0001f4: 202f0042     move.l     $42(a7), d0
0001f8: 6146         bsr.b      $240
0001fa: 6130         bsr.b      $22c
0001fc: 41fafed3     lea.l      $d1(pc), a0
000200: 6128         bsr.b      $22a
000202: 2f6e08ec003e move.l     $8ec(a6), $3e(a7)
000208: 6100000a     bsr.w      $214
00020c: 4cdf7fff     movem.l    (a7)+, d0-d7/a0-a6
000210: 548f         addq.l     #$2, a7
000212: 4e75         rts        
000214: 203c00320000 move.l     #$320000, d0
00021a: 012f0001     btst.l     d0, $1(a7)
00021e: 51c8fffa     dbra       d0, $21a
000222: 5240         addq.w     #$1, d0
000224: 5380         subq.l     #$1, d0
000226: 64f2         bcc.b      $21a
000228: 4e75         rts        
00022a: 6104         bsr.b      $230
00022c: 41fafeb8     lea.l      $e6(pc), a0
000230: 226e0064     movea.l    $64(a6), a1
000234: 6004         bra.b      $23a
000236: 4ea90008     jsr        $8(a1)
00023a: 1018         move.b     (a0)+, d0
00023c: 66f8         bne.b      $236
00023e: 4e75         rts        
000240: 3f00         move.w     d0, -(a7)
000242: 4840         swap       d0
000244: 6102         bsr.b      $248
000246: 301f         move.w     (a7)+, d0
000248: e098         ror.l      #$8, d0
00024a: 6102         bsr.b      $24e
00024c: e198         rol.l      #$8, d0
00024e: e898         ror.l      #$4, d0
000250: 6102         bsr.b      $254
000252: e998         rol.l      #$4, d0
000254: 0200000f     andi.b     #$f, d0
000258: 0c000009     cmpi.b     #$9, d0
00025c: 6302         bls.b      $260
00025e: 5e00         addq.b     #$7, d0
000260: 06000030     addi.b     #$30, d0
000264: 4ee90008     jmp        $8(a1)
000268: 00000400     ori.b      #$0, d0
00026c: 00000000     ori.b      #$0, d0
000270: 320c         move.w     a4, d1
000272: 1854         .dc.w      $1854
000274: 1000         move.b     d0, d0
000276: 001a48e7     ori.b      #$e7, (a2)+
00027a: fffe         dc.w       $fffe
00027c: 4e7ae801     movec      vbr, a6
000280: 2c56         movea.l    (a6), a6
000282: 2e2f003c     move.l     $3c(a7), d7
000286: 0c4700c0     cmpi.w     #$c0, d7
00028a: 6532         bcs.b      $2be
00028c: 0c4700d8     cmpi.w     #$d8, d7
000290: 622c         bhi.b      $2be
000292: 226e004c     movea.l    $4c(a6), a1
000296: 610015c6     bsr.w      $185e
00029a: 0c2e0002002f cmpi.b     #$2, $2f(a6)
0002a0: 661c         bne.b      $2be
0002a2: 7000         moveq      #$0, d0
0002a4: 4a290074     tst.b      $74(a1)
0002a8: 6714         beq.b      $2be
0002aa: 10290075     move.b     $75(a1), d0
0002ae: 0c000038     cmpi.b     #$38, d0
0002b2: 660a         bne.b      $2be
0002b4: 08f10003013000000074 bset.b     #$3, $74(a1, d0.w)
0002be: 082f00050040 btst.b     #$5, $40(a7)
0002c4: 6600fed8     bne.w      $19e
0002c8: 286e004c     movea.l    $4c(a6), a4
0002cc: 0cae000109aa03c8 cmpi.l     #$109aa, $3c8(a6)
0002d4: 640c         bcc.b      $2e2
0002d6: 7400         moveq      #$0, d2
0002d8: be7c000c     cmp.w      #$c, d7
0002dc: 6242         bhi.b      $320
0002de: 7408         moveq      #$8, d2
0002e0: 6022         bra.b      $304
0002e2: 342f0046     move.w     $46(a7), d2
0002e6: c47cf000     and.w      #$f000, d2
0002ea: e95a         rol.w      #$4, d2
0002ec: b43c0002     cmp.b      #$2, d2
0002f0: 6706         beq.b      $2f8
0002f2: b43c0009     cmp.b      #$9, d2
0002f6: 6604         bne.b      $2fc
0002f8: 282f0048     move.l     $48(a7), d4
0002fc: 143b2120ff6a move.b     $ff6a(a16, d2.w), d2
000302: 670e         beq.b      $312
000304: 204f         movea.l    a7, a0
000306: 45f72000     lea.l      (a7, d2.w), a2
00030a: 7446         moveq      #$46, d2
00030c: 6100675a     bsr.w      $6a68
000310: 2e4a         movea.l    a2, a7
000312: 0cae000109a003c8 cmpi.l     #$109a0, $3c8(a6)
00031a: 6704         beq.b      $320
00031c: 426f0046     clr.w      $46(a7)
000320: be7c0010     cmp.w      #$10, d7
000324: 6600008a     bne.w      $3b0
000328: 202c02ac     move.l     $2ac(a4), d0
00032c: 672a         beq.b      $358
00032e: 222c02e8     move.l     $2e8(a4), d1
000332: 6a24         bpl.b      $358
000334: 2040         movea.l    d0, a0
000336: 2a680008     movea.l    $8(a0), a5
00033a: 226d0020     movea.l    $20(a5), a1
00033e: 202f0042     move.l     $42(a7), d0
000342: 6002         bra.b      $346
000344: b099         cmp.l      (a1)+, d0
000346: 57c9fffc     dbeq       d1, $344
00034a: 660c         bne.b      $358
00034c: 2b7c000000010008 move.l     #$1, $8(a5)
000354: 60000342     bra.w      $698
000358: 0cae000109a003c8 cmpi.l     #$109a0, $3c8(a6)
000360: 670a         beq.b      $36c
000362: 0cae000109e603c8 cmpi.l     #$109e6, $3c8(a6)
00036a: 664a         bne.b      $3b6
00036c: 206f0042     movea.l    $42(a7), a0
000370: 3018         move.w     (a0)+, d0
000372: 3200         move.w     d0, d1
000374: c27cffc0     and.w      #$ffc0, d1
000378: b27c42c0     cmp.w      #$42c0, d1
00037c: 6706         beq.b      $384
00037e: b27c46c0     cmp.w      #$46c0, d1
000382: 6632         bne.b      $3b6
000384: 2a4f         movea.l    a7, a5
000386: 6100014a     bsr.w      $4d2
00038a: 652a         bcs.b      $3b6
00038c: 08ae000008f3 bclr.b     #$0, $8f3(a6)
000392: 082f00070040 btst.b     #$7, $40(a7)
000398: 670004f6     beq.w      $890
00039c: 4a6c0026     tst.w      $26(a4)
0003a0: 660004ee     bne.w      $890
0003a4: 4aac02ac     tst.l      $2ac(a4)
0003a8: 670004e6     beq.w      $890
0003ac: 60000232     bra.w      $5e0
0003b0: be7c0020     cmp.w      #$20, d7
0003b4: 67b6         beq.b      $36c
0003b6: be7c0008     cmp.w      #$8, d7
0003ba: 6530         bcs.b      $3ec
0003bc: 22747034     movea.l    $34(a4, d7.w), a1
0003c0: 2a74705c     movea.l    $5c(a4, d7.w), a5
0003c4: be7c002c     cmp.w      #$2c, d7
0003c8: 631e         bls.b      $3e8
0003ca: be7c00c0     cmp.w      #$c0, d7
0003ce: 651c         bcs.b      $3ec
0003d0: be7c00d8     cmp.w      #$d8, d7
0003d4: 6216         bhi.b      $3ec
0003d6: 2207         move.l     d7, d1
0003d8: d27c0278     add.w      #$278, d1
0003dc: 22741000     movea.l    (a4, d1.w), a1
0003e0: d27c001c     add.w      #$1c, d1
0003e4: 2a741000     movea.l    (a4, d1.w), a5
0003e8: 2209         move.l     a1, d1
0003ea: 6644         bne.b      $430
0003ec: 2207         move.l     d7, d1
0003ee: e449         lsr.w      #$2, d1
0003f0: 06410064     addi.w     #$64, d1
0003f4: 4aac02ac     tst.l      $2ac(a4)
0003f8: 67000750     beq.w      $b4a
0003fc: 206c02ac     movea.l    $2ac(a4), a0
000400: 2a680008     movea.l    $8(a0), a5
000404: be7c000c     cmp.w      #$c, d7
000408: 620e         bhi.b      $418
00040a: 206c02ac     movea.l    $2ac(a4), a0
00040e: 2a680008     movea.l    $8(a0), a5
000412: 48ed0038000c movem.l    d3-d5, $c(a5)
000418: 3b410006     move.w     d1, $6(a5)
00041c: 002d00010041 ori.b      #$1, $41(a5)
000422: 2b470008     move.l     d7, $8(a5)
000426: 08ec0001001c bset.b     #$1, $1c(a4)
00042c: 6000026a     bra.w      $698
000430: 220d         move.l     a5, d1
000432: 6602         bne.b      $436
000434: 4e6d         move       usp, a5
000436: 4bedffba     lea.l      -$46(a5), a5
00043a: 244d         movea.l    a5, a2
00043c: 704a         moveq      #$4a, d0
00043e: 7202         moveq      #$2, d1
000440: 610013ec     bsr.w      $182e
000444: 640a         bcc.b      $450
000446: 323c00a6     move.w     #$a6, d1
00044a: 003c0001     ori.b      #$1, ccr
00044e: 60a4         bra.b      $3f4
000450: 4cdf0047     movem.l    (a7)+, d0-d2/d6
000454: 48ed00470000 movem.l    d0-d2/d6, $0(a5)
00045a: 4cdf0047     movem.l    (a7)+, d0-d2/d6
00045e: 48ed00470010 movem.l    d0-d2/d6, $10(a5)
000464: 4cdf0047     movem.l    (a7)+, d0-d2/d6
000468: 48ed00470020 movem.l    d0-d2/d6, $20(a5)
00046e: 4cdf0047     movem.l    (a7)+, d0-d2/d6
000472: 48ed00070030 movem.l    d0-d2, $30(a5)
000478: 3b5f0040     move.w     (a7)+, $40(a5)
00047c: 205f         movea.l    (a7)+, a0
00047e: 2b480042     move.l     a0, $42(a5)
000482: 2f09         move.l     a1, -(a7)
000484: 3f2d0040     move.w     $40(a5), -(a7)
000488: 4e69         move       usp, a1
00048a: 2b49003c     move.l     a1, $3c(a5)
00048e: 4e65         move       a5, usp
000490: 2c6c032c     movea.l    $32c(a4), a6
000494: ddfc00008000 adda.l     #$8000, a6
00049a: 08170007     btst.b     #$7, (a7)
00049e: 6704         beq.b      $4a4
0004a0: 61000148     bsr.w      $5ea
0004a4: 48e7004a     movem.l    a1/a4/a6, -(a7)
0004a8: 4e7ae801     movec      vbr, a6
0004ac: 2c56         movea.l    (a6), a6
0004ae: 286e004c     movea.l    $4c(a6), a4
0004b2: 4a2e002f     tst.b      $2f(a6)
0004b6: 6714         beq.b      $4cc
0004b8: 202e0058     move.l     $58(a6), d0
0004bc: 670a         beq.b      $4c8
0004be: b08c         cmp.l      a4, d0
0004c0: 670a         beq.b      $4cc
0004c2: 2240         movea.l    d0, a1
0004c4: 61001398     bsr.w      $185e
0004c8: 610013e2     bsr.w      $18ac
0004cc: 4cdf5200     movem.l    (a7)+, a1/a4/a6
0004d0: 4e73         rte        
0004d2: 43fafbc0     lea.l      $94(pc), a1
0004d6: 48e78040     movem.l    d0/a1, -(a7)
0004da: 4e69         move       usp, a1
0004dc: 2b49003c     move.l     a1, $3c(a5)
0004e0: 3200         move.w     d0, d1
0004e2: 02400007     andi.w     #$7, d0
0004e6: e540         asl.w      #$2, d0
0004e8: 02410038     andi.w     #$38, d1
0004ec: e441         asr.w      #$2, d1
0004ee: 323b1062     move.w     $552(pc, d1.w), d1
0004f2: 4ebb105e     jsr        $552(pc, d1.w)
0004f6: 4cdf0001     movem.l    (a7)+, d0
0004fa: 6544         bcs.b      $540
0004fc: c07cffc0     and.w      #$ffc0, d0
000500: b07c42c0     cmp.w      #$42c0, d0
000504: 660a         bne.b      $510
000506: 7000         moveq      #$0, d0
000508: 102d0041     move.b     $41(a5), d0
00050c: 3280         move.w     d0, (a1)
00050e: 6030         bra.b      $540
000510: b07c46c0     cmp.w      #$46c0, d0
000514: 6626         bne.b      $53c
000516: 3011         move.w     (a1), d0
000518: 1b400041     move.b     d0, $41(a5)
00051c: c07c000c     and.w      #$c, d0
000520: 0a40000c     eori.w     #$c, d0
000524: 661a         bne.b      $540
000526: 24360054     move.l     $54(a6, d0.w), d2
00052a: d07c091e     add.w      #$91e, d0
00052e: 52b600d2     addq.l     #$1, -$2e(a6, d0.w)
000532: 08ee000008f3 bset.b     #$0, $8f3(a6)
000538: 5c97         addq.l     #$6, (a7)
00053a: 6004         bra.b      $540
00053c: 003c0001     ori.b      #$1, ccr
000540: 48ed01000042 movem.l    a0, $42(a5)
000546: 226d003c     movea.l    $3c(a5), a1
00054a: 4e61         move       a1, usp
00054c: 2949000c     move.l     a1, $c(a4)
000550: 4e75         rts        
000552: 00100078     ori.b      #$78, (a0)
000556: 001a0020     ori.b      #$20, (a2)+
00055a: 0016002a     ori.b      #$2a, (a6)
00055e: 0032005443f500024e75 ori.b      #$54, ([$24e75])
000568: 55b50020     subq.l     #$2, $20(a5, d0.w)
00056c: 22750020     movea.l    $20(a5, d0.w), a1
000570: 4e75         rts        
000572: 22750020     movea.l    $20(a5, d0.w), a1
000576: 54b50020     addq.l     #$2, $20(a5, d0.w)
00057a: 4e75         rts        
00057c: 22750020     movea.l    $20(a5, d0.w), a1
000580: d2d8         adda.w     (a0)+, a1
000582: 4e75         rts        
000584: 22750020     movea.l    $20(a5, d0.w), a1
000588: 7000         moveq      #$0, d0
00058a: 1018         move.b     (a0)+, d0
00058c: 1218         move.b     (a0)+, d1
00058e: 4881         ext.w      d1
000590: e440         asr.w      #$2, d0
000592: 08400001     bchg.b     #$1, d0
000596: 6606         bne.b      $59e
000598: d2f50000     adda.w     (a5, d0.w), a1
00059c: 6004         bra.b      $5a2
00059e: d3f50000     adda.l     (a5, d0.w), a1
0005a2: d2c1         adda.w     d1, a1
0005a4: 4e75         rts        
0005a6: b07c0004     cmp.w      #$4, d0
0005aa: 620a         bhi.b      $5b6
0005ac: 6704         beq.b      $5b2
0005ae: 3258         movea.w    (a0)+, a1
0005b0: 4e75         rts        
0005b2: 2258         movea.l    (a0)+, a1
0005b4: 4e75         rts        
0005b6: 2248         movea.l    a0, a1
0005b8: b07c0008     cmp.w      #$8, d0
0005bc: 67c2         beq.b      $580
0005be: b07c0010     cmp.w      #$10, d0
0005c2: 65c4         bcs.b      $588
0005c4: 6204         bhi.b      $5ca
0005c6: 5488         addq.l     #$2, a0
0005c8: 4e75         rts        
0005ca: 003c0001     ori.b      #$1, ccr
0005ce: 4e75         rts        
0005d0: 082f00050004 btst.b     #$5, $4(a7)
0005d6: 6712         beq.b      $5ea
0005d8: 588f         addq.l     #$4, a7
0005da: 08970007     bclr.b     #$7, (a7)
0005de: 4e73         rte        
0005e0: 08ac0007001c bclr.b     #$7, $1c(a4)
0005e6: 4cdf7fff     movem.l    (a7)+, d0-d7/a0-a6
0005ea: 48e70006     movem.l    a5-a6, -(a7)
0005ee: 4e7ae801     movec      vbr, a6
0005f2: 2c56         movea.l    (a6), a6
0005f4: 2a6e004c     movea.l    $4c(a6), a5
0005f8: 3f2d001c     move.w     $1c(a5), -(a7)
0005fc: 4a6d0026     tst.w      $26(a5)
000600: 6608         bne.b      $60a
000602: 0c2d00610020 cmpi.b     #$61, $20(a5)
000608: 6704         beq.b      $60e
00060a: 08d70004     bset.b     #$4, (a7)
00060e: 52ad02b0     addq.l     #$1, $2b0(a5)
000612: 2c6d02ac     movea.l    $2ac(a5), a6
000616: 4a6e0026     tst.w      $26(a6)
00061a: 2c6e0008     movea.l    $8(a6), a6
00061e: 670a         beq.b      $62a
000620: 2d7c000000030008 move.l     #$3, $8(a6)
000628: 6056         bra.b      $680
00062a: 4a6d02ea     tst.w      $2ea(a5)
00062e: 6728         beq.b      $658
000630: 48e7c002     movem.l    d0-d1/a6, -(a7)
000634: 322d02ea     move.w     $2ea(a5), d1
000638: 202f001c     move.l     $1c(a7), d0
00063c: 2c6e0020     movea.l    $20(a6), a6
000640: 5341         subq.w     #$1, d1
000642: b09e         cmp.l      (a6)+, d0
000644: 54c9fffc     dbcc       d1, $642
000648: 4cdf4003     movem.l    (a7)+, d0-d1/a6
00064c: 660a         bne.b      $658
00064e: 2d7c000000010008 move.l     #$1, $8(a6)
000656: 6028         bra.b      $680
000658: 53ae0004     subq.l     #$1, $4(a6)
00065c: 6206         bhi.b      $664
00065e: 6720         beq.b      $680
000660: 52ae0004     addq.l     #$1, $4(a6)
000664: 025f7fff     andi.w     #$7fff, (a7)+
000668: 6608         bne.b      $672
00066a: 4cdf6000     movem.l    (a7)+, a5-a6
00066e: 588f         addq.l     #$4, a7
000670: 4e73         rte        
000672: 48e7fff8     movem.l    d0-d7/a0-a4, -(a7)
000676: 4e7ae801     movec      vbr, a6
00067a: 2c56         movea.l    (a6), a6
00067c: 60000212     bra.w      $890
000680: 548f         addq.l     #$2, a7
000682: 48e7fff8     movem.l    d0-d7/a0-a4, -(a7)
000686: 4e7ae801     movec      vbr, a6
00068a: 2c56         movea.l    (a6), a6
00068c: 286e004c     movea.l    $4c(a6), a4
000690: 206c02ac     movea.l    $2ac(a4), a0
000694: 2a680008     movea.l    $8(a0), a5
000698: 222c02e8     move.l     $2e8(a4), d1
00069c: 6a78         bpl.b      $716
00069e: 43ec02ec     lea.l      $2ec(a4), a1
0006a2: 246d0020     movea.l    $20(a5), a2
0006a6: 600c         bra.b      $6b4
0006a8: 265a         movea.l    (a2)+, a3
0006aa: 3019         move.w     (a1)+, d0
0006ac: 0c534afc     cmpi.w     #$4afc, (a3)
0006b0: 6602         bne.b      $6b4
0006b2: 3680         move.w     d0, (a3)
0006b4: 51c9fff2     dbra       d1, $6a8
0006b8: 082e000003e0 btst.b     #$0, $3e0(a6)
0006be: 673e         beq.b      $6fe
0006c0: 082e000203e0 btst.b     #$2, $3e0(a6)
0006c6: 664e         bne.b      $716
0006c8: 222e03c8     move.l     $3c8(a6), d1
0006cc: 0c81000109c8 cmpi.l     #$109c8, d1
0006d2: 6726         beq.b      $6fa
0006d4: 0c81000109be cmpi.l     #$109be, d1
0006da: 6708         beq.b      $6e4
0006dc: 0c81000109b4 cmpi.l     #$109b4, d1
0006e2: 6632         bne.b      $716
0006e4: 40e7         move.w     sr, -(a7)
0006e6: 007c0700     ori.w      #$700, sr
0006ea: 4e7a0002     movec      cacr, d0
0006ee: 08c00003     bset.b     #$3, d0
0006f2: 4e7b0002     movec      d0, cacr
0006f6: 46df         move.w     (a7)+, sr
0006f8: 601c         bra.b      $716
0006fa: f440         dc.w       $f440
0006fc: 6018         bra.b      $716
0006fe: 7040         moveq      #$40, d0
000700: 2f0b         move.l     a3, -(a7)
000702: 266e03a4     movea.l    $3a4(a6), a3
000706: 487a000c     pea.l      $714(pc)
00070a: 2f2b0168     move.l     $168(a3), -(a7)
00070e: 266b0568     movea.l    $568(a3), a3
000712: 4e75         rts        
000714: 265f         movea.l    (a7)+, a3
000716: 42ac02e8     clr.l      $2e8(a4)
00071a: 4a2e002f     tst.b      $2f(a6)
00071e: 6732         beq.b      $752
000720: b9ee0058     cmpa.l     $58(a6), a4
000724: 6606         bne.b      $72c
000726: 224c         movea.l    a4, a1
000728: 61001134     bsr.w      $185e
00072c: 226c0334     movea.l    $334(a4), a1
000730: 243c0000006c move.l     #$6c, d2
000736: 45f4016202a8006c lea.l      ([$2a8, a4], $6c), a2
00073e: 15a900742000 move.b     $74(a1), (a2, d2.w)
000744: 670c         beq.b      $752
000746: 41e90008     lea.l      $8(a1), a0
00074a: 6100631c     bsr.w      $6a68
00074e: 206c02ac     movea.l    $2ac(a4), a0
000752: 2b6c02b00000 move.l     $2b0(a4), $0(a5)
000758: 2a6c02a8     movea.l    $2a8(a4), a5
00075c: 4cef00ff0000 movem.l    $0(a7), d0-d7
000762: 48ed00ff0000 movem.l    d0-d7, $0(a5)
000768: 4cef00ff0020 movem.l    $20(a7), d0-d7
00076e: 48ed007f0020 movem.l    d0-d6, $20(a5)
000774: 3b6f00400040 move.w     $40(a7), $40(a5)
00077a: 2b6f00420042 move.l     $42(a7), $42(a5)
000780: 4e69         move       usp, a1
000782: 2949000c     move.l     a1, $c(a4)
000786: 2b49003c     move.l     a1, $3c(a5)
00078a: 294f0008     move.l     a7, $8(a4)
00078e: 197c00640020 move.b     #$64, $20(a4)
000794: 6100119e     bsr.w      $1934
000798: 60001274     bra.w      $1a0e
00079c: 48e7c0b2     movem.l    d0-d1/a0/a2-a3/a6, -(a7)
0007a0: 222f0018     move.l     $18(a7), d1
0007a4: 4e7ae801     movec      vbr, a6
0007a8: 2c56         movea.l    (a6), a6
0007aa: 244f         movea.l    a7, a2
0007ac: 40c0         move.w     sr, d0
0007ae: 007c0700     ori.w      #$700, sr
0007b2: 522e003a     addq.b     #$1, $3a(a6)
0007b6: 6604         bne.b      $7bc
0007b8: 2e6e0060     movea.l    $60(a6), a7
0007bc: 46c0         move.w     d0, sr
0007be: 082e0000002e btst.b     #$0, $2e(a6)
0007c4: 6704         beq.b      $7ca
0007c6: 48e73f4c     movem.l    d2-d7/a1/a4-a5, -(a7)
0007ca: b27c0080     cmp.w      #$80, d1
0007ce: 640a         bcc.b      $7da
0007d0: 47f61000     lea.l      (a6, d1.w), a3
0007d4: d6fc0384     adda.w     #$384, a3
0007d8: 6004         bra.b      $7de
0007da: 47f610a4     lea.l      -$5c(a6, d1.w), a3
0007de: 48e78032     movem.l    d0/a2-a3/a6, -(a7)
0007e2: 59ae005c     subq.l     #$4, $5c(a6)
0007e6: 246e005c     movea.l    $5c(a6), a2
0007ea: 248f         move.l     a7, (a2)
0007ec: 588f         addq.l     #$4, a7
0007ee: 266b0000     movea.l    $0(a3), a3
0007f2: 2f4b0004     move.l     a3, $4(a7)
0007f6: 675c         beq.b      $854
0007f8: 4ceb0d000004 movem.l    $4(a3), a0/a2-a3
0007fe: 4e90         jsr        (a0)
000800: 4cef48000004 movem.l    $4(a7), a3/a6
000806: 65e6         bcs.b      $7ee
000808: 422e003b     clr.b      $3b(a6)
00080c: 082e0000002e btst.b     #$0, $2e(a6)
000812: 6706         beq.b      $81a
000814: 4cef32fc000c movem.l    $c(a7), d2-d7/a1/a4-a5
00081a: 40c0         move.w     sr, d0
00081c: 007c0700     ori.w      #$700, sr
000820: 532e003a     subq.b     #$1, $3a(a6)
000824: 2e57         movea.l    (a7), a7
000826: 46c0         move.w     d0, sr
000828: 58ae005c     addq.l     #$4, $5c(a6)
00082c: 082f0005001c btst.b     #$5, $1c(a7)
000832: 6618         bne.b      $84c
000834: 027cf8ff     andi.w     #$f8ff, sr
000838: 266e004c     movea.l    $4c(a6), a3
00083c: 4a6b0026     tst.w      $26(a3)
000840: 6646         bne.b      $888
000842: 302b001c     move.w     $1c(a3), d0
000846: 02407fff     andi.w     #$7fff, d0
00084a: 663c         bne.b      $888
00084c: 4cdf4d03     movem.l    (a7)+, d0-d1/a0/a2-a3/a6
000850: 588f         addq.l     #$4, a7
000852: 4e73         rte        
000854: 082e0000002e btst.b     #$0, $2e(a6)
00085a: 6706         beq.b      $862
00085c: 4cef32fc000c movem.l    $c(a7), d2-d7/a1/a4-a5
000862: 40c0         move.w     sr, d0
000864: 007c0700     ori.w      #$700, sr
000868: 532e003a     subq.b     #$1, $3a(a6)
00086c: 2e57         movea.l    (a7), a7
00086e: 46c0         move.w     d0, sr
000870: 522e003b     addq.b     #$1, $3b(a6)
000874: 64b2         bcc.b      $828
000876: 40c0         move.w     sr, d0
000878: 02400700     andi.w     #$700, d0
00087c: 026ff8ff001c andi.w     #$f8ff, $1c(a7)
000882: 816f001c     or.w       d0, $1c(a7)
000886: 60a0         bra.b      $828
000888: 4cdf0d03     movem.l    (a7)+, d0-d1/a0/a2-a3
00088c: 48e7fffc     movem.l    d0-d7/a0-a5, -(a7)
000890: 286e004c     movea.l    $4c(a6), a4
000894: 08ac0005001c bclr.b     #$5, $1c(a4)
00089a: 660000de     bne.w      $97a
00089e: 082c0001001c btst.b     #$1, $1c(a4)
0008a4: 660002a8     bne.w      $b4e
0008a8: 322c0026     move.w     $26(a4), d1
0008ac: 6600011a     bne.w      $9c8
0008b0: 202c02ac     move.l     $2ac(a4), d0
0008b4: 67000086     beq.w      $93c
0008b8: 242c02e8     move.l     $2e8(a4), d2
0008bc: 6a7e         bpl.b      $93c
0008be: 2040         movea.l    d0, a0
0008c0: 20680008     movea.l    $8(a0), a0
0008c4: 20680020     movea.l    $20(a0), a0
0008c8: 47ec02ec     lea.l      $2ec(a4), a3
0008cc: 600c         bra.b      $8da
0008ce: 2458         movea.l    (a0)+, a2
0008d0: 3012         move.w     (a2), d0
0008d2: b05b         cmp.w      (a3)+, d0
0008d4: 6604         bne.b      $8da
0008d6: 34bc4afc     move.w     #$4afc, (a2)
0008da: 51cafff2     dbra       d2, $8ce
0008de: 082e000003e0 btst.b     #$0, $3e0(a6)
0008e4: 673e         beq.b      $924
0008e6: 082e000203e0 btst.b     #$2, $3e0(a6)
0008ec: 664e         bne.b      $93c
0008ee: 222e03c8     move.l     $3c8(a6), d1
0008f2: 0c81000109c8 cmpi.l     #$109c8, d1
0008f8: 6726         beq.b      $920
0008fa: 0c81000109be cmpi.l     #$109be, d1
000900: 6708         beq.b      $90a
000902: 0c81000109b4 cmpi.l     #$109b4, d1
000908: 6632         bne.b      $93c
00090a: 40e7         move.w     sr, -(a7)
00090c: 007c0700     ori.w      #$700, sr
000910: 4e7a0002     movec      cacr, d0
000914: 08c00003     bset.b     #$3, d0
000918: 4e7b0002     movec      d0, cacr
00091c: 46df         move.w     (a7)+, sr
00091e: 601c         bra.b      $93c
000920: f440         dc.w       $f440
000922: 6018         bra.b      $93c
000924: 7040         moveq      #$40, d0
000926: 2f0b         move.l     a3, -(a7)
000928: 266e03a4     movea.l    $3a4(a6), a3
00092c: 487a000c     pea.l      $93a(pc)
000930: 2f2b0168     move.l     $168(a3), -(a7)
000934: 266b0568     movea.l    $568(a3), a3
000938: 4e75         rts        
00093a: 265f         movea.l    (a7)+, a3
00093c: 4a2e002f     tst.b      $2f(a6)
000940: 6714         beq.b      $956
000942: 202e0058     move.l     $58(a6), d0
000946: 670a         beq.b      $952
000948: b08c         cmp.l      a4, d0
00094a: 670a         beq.b      $956
00094c: 2240         movea.l    d0, a1
00094e: 61000f0e     bsr.w      $185e
000952: 61000f58     bsr.w      $18ac
000956: 2f0b         move.l     a3, -(a7)
000958: 266e03a4     movea.l    $3a4(a6), a3
00095c: 487a000c     pea.l      $96a(pc)
000960: 2f2b00fc     move.l     $fc(a3), -(a7)
000964: 266b04fc     movea.l    $4fc(a3), a3
000968: 4e75         rts        
00096a: 265f         movea.l    (a7)+, a3
00096c: 08ac0007001c bclr.b     #$7, $1c(a4)
000972: 4cdf7fff     movem.l    (a7)+, d0-d7/a0-a6
000976: 588f         addq.l     #$4, a7
000978: 4e73         rte        
00097a: 202c02ac     move.l     $2ac(a4), d0
00097e: 6718         beq.b      $998
000980: 2040         movea.l    d0, a0
000982: 4a680026     tst.w      $26(a0)
000986: 6710         beq.b      $998
000988: 2a680008     movea.l    $8(a0), a5
00098c: 2b7c000000030008 move.l     #$3, $8(a5)
000994: 6000fd02     bra.w      $698
000998: 41ee037c     lea.l      $37c(a6), a0
00099c: b1e80030     cmpa.l     $30(a0), a0
0009a0: 660c         bne.b      $9ae
0009a2: 302c0018     move.w     $18(a4), d0
0009a6: b06e08a6     cmp.w      $8a6(a6), d0
0009aa: 6400fef2     bcc.w      $89e
0009ae: 294f0008     move.l     a7, $8(a4)
0009b2: 4e68         move       usp, a0
0009b4: 2948000c     move.l     a0, $c(a4)
0009b8: 204c         movea.l    a4, a0
0009ba: 08ac0007001c bclr.b     #$7, $1c(a4)
0009c0: 61000f72     bsr.w      $1934
0009c4: 60001048     bra.w      $1a0e
0009c8: 4a2c0370     tst.b      $370(a4)
0009cc: 6600fee2     bne.w      $8b0
0009d0: 4aac0028     tst.l      $28(a4)
0009d4: 661a         bne.b      $9f0
0009d6: 202c02ac     move.l     $2ac(a4), d0
0009da: 67000172     beq.w      $b4e
0009de: 2040         movea.l    d0, a0
0009e0: 20680008     movea.l    $8(a0), a0
0009e4: 217c000000020008 move.l     #$2, $8(a0)
0009ec: 60000160     bra.w      $b4e
0009f0: 4e6a         move       usp, a2
0009f2: 7048         moveq      #$48, d0
0009f4: d0bc0000000c add.l      #$c, d0
0009fa: 222c0334     move.l     $334(a4), d1
0009fe: 6720         beq.b      $a20
000a00: 2241         movea.l    d1, a1
000a02: 4a290074     tst.b      $74(a1)
000a06: 6614         bne.b      $a1c
000a08: b9ee0058     cmpa.l     $58(a6), a4
000a0c: 660a         bne.b      $a18
000a0e: 61000e50     bsr.w      $1860
000a12: 4a290074     tst.b      $74(a1)
000a16: 6604         bne.b      $a1c
000a18: 5880         addq.l     #$4, d0
000a1a: 6004         bra.b      $a20
000a1c: d0a90000     add.l      $0(a1), d0
000a20: 4e71         nop        
000a22: 224a         movea.l    a2, a1
000a24: 95c0         suba.l     d0, a2
000a26: 4e62         move       a2, usp
000a28: 7202         moveq      #$2, d1
000a2a: 61000e02     bsr.w      $182e
000a2e: 6428         bcc.b      $a58
000a30: 323c00a6     move.w     #$a6, d1
000a34: 39410026     move.w     d1, $26(a4)
000a38: 202c02ac     move.l     $2ac(a4), d0
000a3c: 67000110     beq.w      $b4e
000a40: 2040         movea.l    d0, a0
000a42: 20680008     movea.l    $8(a0), a0
000a46: 217c000000020008 move.l     #$2, $8(a0)
000a4e: 002800010041 ori.b      #$1, $41(a0)
000a54: 600000f8     bra.w      $b4e
000a58: 4cef00ff0000 movem.l    $0(a7), d0-d7
000a5e: 48ea00ff0000 movem.l    d0-d7, $0(a2)
000a64: 4cef007f0020 movem.l    $20(a7), d0-d6
000a6a: 48ea007f0020 movem.l    d0-d6, $20(a2)
000a70: 2549003c     move.l     a1, $3c(a2)
000a74: 4cef00030040 movem.l    $40(a7), d0-d1
000a7a: 48ea00030040 movem.l    d0-d1, $40(a2)
000a80: 4a2e002f     tst.b      $2f(a6)
000a84: 6764         beq.b      $aea
000a86: 0241f000     andi.w     #$f000, d1
000a8a: 0c419000     cmpi.w     #$9000, d1
000a8e: 6622         bne.b      $ab2
000a90: 4cef00070048 movem.l    $48(a7), d0-d2
000a96: 48ea00070048 movem.l    d0-d2, $48(a2)
000a9c: 204f         movea.l    a7, a0
000a9e: 45ef000c     lea.l      $c(a7), a2
000aa2: 7448         moveq      #$48, d2
000aa4: 61005fc2     bsr.w      $6a68
000aa8: 4fef000c     lea.l      $c(a7), a7
000aac: 426f0046     clr.w      $46(a7)
000ab0: 4e6a         move       usp, a2
000ab2: 202e0058     move.l     $58(a6), d0
000ab6: 6714         beq.b      $acc
000ab8: b08c         cmp.l      a4, d0
000aba: 660a         bne.b      $ac6
000abc: 43ea0054     lea.l      $54(a2), a1
000ac0: 61000d9e     bsr.w      $1860
000ac4: 601a         bra.b      $ae0
000ac6: 2240         movea.l    d0, a1
000ac8: 61000d94     bsr.w      $185e
000acc: 43ea0054     lea.l      $54(a2), a1
000ad0: 206c0334     movea.l    $334(a4), a0
000ad4: 4291         clr.l      (a1)
000ad6: 4a280074     tst.b      $74(a0)
000ada: 6706         beq.b      $ae2
000adc: 21490004     move.l     a1, $4(a0)
000ae0: 2289         move.l     a1, (a1)
000ae2: f37a0a8c     frestore   $1570(pc)
000ae6: 2d4c0058     move.l     a4, $58(a6)
000aea: 4e71         nop        
000aec: 206c037c     movea.l    $37c(a4), a0
000af0: 522c0370     addq.b     #$1, $370(a4)
000af4: 202c0378     move.l     $378(a4), d0
000af8: 7200         moveq      #$0, d1
000afa: 3228000a     move.w     $a(a0), d1
000afe: 7400         moveq      #$0, d2
000b00: 48ef00070000 movem.l    d0-d2, $0(a7)
000b06: 2f6c002c0038 move.l     $2c(a4), $38(a7)
000b0c: 2f6c00280042 move.l     $28(a4), $42(a7)
000b12: 40c0         move.w     sr, d0
000b14: 007c0700     ori.w      #$700, sr
000b18: 4268000a     clr.w      $a(a0)
000b1c: 22680000     movea.l    $0(a0), a1
000b20: 2949037c     move.l     a1, $37c(a4)
000b24: 53ac0378     subq.l     #$1, $378(a4)
000b28: 6604         bne.b      $b2e
000b2a: 426c0026     clr.w      $26(a4)
000b2e: 526c0372     addq.w     #$1, $372(a4)
000b32: 46c0         move.w     d0, sr
000b34: 082f00070040 btst.b     #$7, $40(a7)
000b3a: 6700fd74     beq.w      $8b0
000b3e: 4aac02ac     tst.l      $2ac(a4)
000b42: 6700fd6c     beq.w      $8b0
000b46: 6000fa98     bra.w      $5e0
000b4a: 39410026     move.w     d1, $26(a4)
000b4e: 2a4f         movea.l    a7, a5
000b50: 027cf8ff     andi.w     #$f8ff, sr
000b54: 322c0026     move.w     $26(a4), d1
000b58: 426c0026     clr.w      $26(a4)
000b5c: 600002b6     bra.w      $e14
000b60: 48e7fffe     movem.l    d0-d7/a0-a6, -(a7)
000b64: 4e7ae801     movec      vbr, a6
000b68: 2c56         movea.l    (a6), a6
000b6a: 286e004c     movea.l    $4c(a6), a4
000b6e: 422f0041     clr.b      $41(a7)
000b72: 2a6f0042     movea.l    $42(a7), a5
000b76: 3e15         move.w     (a5), d7
000b78: 54af0042     addq.l     #$2, $42(a7)
000b7c: 3f47003c     move.w     d7, $3c(a7)
000b80: 2a2c0140     move.l     $140(a4), d5
000b84: 2c2c0144     move.l     $144(a4), d6
000b88: 266e03a4     movea.l    $3a4(a6), a3
000b8c: 08ec0007001c bset.b     #$7, $1c(a4)
000b92: 082f00050040 btst.b     #$5, $40(a7)
000b98: 6622         bne.b      $bbc
000b9a: 4e6b         move       usp, a3
000b9c: 294b000c     move.l     a3, $c(a4)
000ba0: 294f0008     move.l     a7, $8(a4)
000ba4: 19470021     move.b     d7, $21(a4)
000ba8: 266e03a8     movea.l    $3a8(a6), a3
000bac: be7c0080     cmp.w      #$80, d7
000bb0: 6406         bcc.b      $bb8
000bb2: 52ac02c4     addq.l     #$1, $2c4(a4)
000bb6: 6004         bra.b      $bbc
000bb8: 52ac02c8     addq.l     #$1, $2c8(a4)
000bbc: e547         asl.w      #$2, d7
000bbe: d6c7         adda.w     d7, a3
000bc0: 2a4f         movea.l    a7, a5
000bc2: 2e2f003c     move.l     $3c(a7), d7
000bc6: 48e7060e     movem.l    d5-d6/a4-a6, -(a7)
000bca: 294f0140     move.l     a7, $140(a4)
000bce: 487a000e     pea.l      $bde(pc)
000bd2: 29570144     move.l     (a7), $144(a4)
000bd6: 2f13         move.l     (a3), -(a7)
000bd8: 266b0400     movea.l    $400(a3), a3
000bdc: 4e75         rts        
000bde: 4cdf7060     movem.l    (a7)+, d5-d6/a4-a6
000be2: 640e         bcc.b      $bf2
000be4: 006f00010040 ori.w      #$1, $40(a7)
000bea: 426f0004     clr.w      $4(a7)
000bee: 3f410006     move.w     d1, $6(a7)
000bf2: 29450140     move.l     d5, $140(a4)
000bf6: 29460144     move.l     d6, $144(a4)
000bfa: 082f00050040 btst.b     #$5, $40(a7)
000c00: 6600fd70     bne.w      $972
000c04: 4aac02ac     tst.l      $2ac(a4)
000c08: 6706         beq.b      $c10
000c0a: 08ec0005001c bset.b     #$5, $1c(a4)
000c10: 206c000c     movea.l    $c(a4), a0
000c14: 4e60         move       a0, usp
000c16: 082f00070040 btst.b     #$7, $40(a7)
000c1c: 6700fc72     beq.w      $890
000c20: 4a6c0026     tst.w      $26(a4)
000c24: 6600fc6a     bne.w      $890
000c28: 4aac02ac     tst.l      $2ac(a4)
000c2c: 6700fc62     beq.w      $890
000c30: 6000f9ae     bra.w      $5e0
000c34: 48e7c0c2     movem.l    d0-d1/a0-a1/a6, -(a7)
000c38: 4e7ae801     movec      vbr, a6
000c3c: 2c56         movea.l    (a6), a6
000c3e: 2c6e004c     movea.l    $4c(a6), a6
000c42: 322f0016     move.w     $16(a7), d1
000c46: 20361008     move.l     $8(a6, d1.w), d0
000c4a: 67000096     beq.w      $ce2
000c4e: 4e68         move       usp, a0
000c50: 2d48000c     move.l     a0, $c(a6)
000c54: 2040         movea.l    d0, a0
000c56: dcfc0044     adda.w     #$44, a6
000c5a: 2c761000     movea.l    (a6, d1.w), a6
000c5e: 082800050014 btst.b     #$5, $14(a0)
000c64: d1e80030     adda.l     $30(a0), a0
000c68: 674c         beq.b      $cb6
000c6a: 2017         move.l     (a7), d0
000c6c: 2f480000     move.l     a0, $0(a7)
000c70: 41fa0026     lea.l      $c98(pc), a0
000c74: 2f48000c     move.l     a0, $c(a7)
000c78: 206f001a     movea.l    $1a(a7), a0
000c7c: 3f580014     move.w     (a0)+, $14(a7)
000c80: 2f48001a     move.l     a0, $1a(a7)
000c84: 4cef01020004 movem.l    $4(a7), d1/a0
000c8a: 2f6f00140008 move.l     $14(a7), $8(a7)
000c90: 2f6f00100004 move.l     $10(a7), $4(a7)
000c96: 4e75         rts        
000c98: 4e7ae801     movec      vbr, a6
000c9c: 2c56         movea.l    (a6), a6
000c9e: 48e7fffc     movem.l    d0-d7/a0-a5, -(a7)
000ca2: 40c0         move.w     sr, d0
000ca4: 1f400041     move.b     d0, $41(a7)
000ca8: 286e004c     movea.l    $4c(a6), a4
000cac: 206c000c     movea.l    $c(a4), a0
000cb0: 4e60         move       a0, usp
000cb2: 6000fbdc     bra.w      $890
000cb6: 226f001a     movea.l    $1a(a7), a1
000cba: 2f48001a     move.l     a0, $1a(a7)
000cbe: 3019         move.w     (a1)+, d0
000cc0: 4e68         move       usp, a0
000cc2: 2109         move.l     a1, -(a0)
000cc4: 3101         move.w     d1, -(a0)
000cc6: 3100         move.w     d0, -(a0)
000cc8: 212f0010     move.l     $10(a7), -(a0)
000ccc: 4e60         move       a0, usp
000cce: 4cdf0303     movem.l    (a7)+, d0-d1/a0-a1
000cd2: 588f         addq.l     #$4, a7
000cd4: 082f00070004 btst.b     #$7, $4(a7)
000cda: 6600f8f4     bne.w      $5d0
000cde: 588f         addq.l     #$4, a7
000ce0: 4e73         rte        
000ce2: 206e0038     movea.l    $38(a6), a0
000ce6: 2c6f0010     movea.l    $10(a7), a6
000cea: 20280034     move.l     $34(a0), d0
000cee: d1c0         adda.l     d0, a0
000cf0: 66c4         bne.b      $cb6
000cf2: 54af001a     addq.l     #$2, $1a(a7)
000cf6: 4cdf4303     movem.l    (a7)+, d0-d1/a0-a1/a6
000cfa: 223c00000085 move.l     #$85, d1
000d00: 002f00010005 ori.b      #$1, $5(a7)
000d06: 60cc         bra.b      $cd4
000d08: 202c02ac     move.l     $2ac(a4), d0
000d0c: 6710         beq.b      $d1e
000d0e: 2040         movea.l    d0, a0
000d10: 20680008     movea.l    $8(a0), a0
000d14: 217c000000050008 move.l     #$5, $8(a0)
000d1c: 7000         moveq      #$0, d0
000d1e: 7200         moveq      #$0, d1
000d20: 48e7e000     movem.l    d0-d2, -(a7)
000d24: 2002         move.l     d2, d0
000d26: 6714         beq.b      $d3c
000d28: 61000a68     bsr.w      $1792
000d2c: 650000d4     bcs.w      $e02
000d30: 48ef04010000 movem.l    d0/a2, $0(a7)
000d36: 2049         movea.l    a1, a0
000d38: 61005d2e     bsr.w      $6a68
000d3c: 206d0020     movea.l    $20(a5), a0
000d40: 2a3c000000c8 move.l     #$c8, d5
000d46: 4a18         tst.b      (a0)+
000d48: 57cdfffc     dbeq       d5, $d46
000d4c: 4445         neg.w      d5
000d4e: 064500cb     addi.w     #$cb, d5
000d52: 08850000     bclr.b     #$0, d5
000d56: 206d0020     movea.l    $20(a5), a0
000d5a: 9ec5         suba.w     d5, a7
000d5c: 224f         movea.l    a7, a1
000d5e: 2b490020     move.l     a1, $20(a5)
000d62: 3205         move.w     d5, d1
000d64: 5541         subq.w     #$2, d1
000d66: 12d8         move.b     (a0)+, (a1)+
000d68: 57c9fffc     dbeq       d1, $d66
000d6c: 4219         clr.b      (a1)+
000d6e: 204c         movea.l    a4, a0
000d70: 3203         move.w     d3, d1
000d72: 52ae0794     addq.l     #$1, $794(a6)
000d76: 610001b2     bsr.w      $f2a
000d7a: 7000         moveq      #$0, d0
000d7c: 39400026     move.w     d0, $26(a4)
000d80: 29400028     move.l     d0, $28(a4)
000d84: 323c0027     move.w     #$27, d1
000d88: e449         lsr.w      #$2, d1
000d8a: 41ec003c     lea.l      $3c(a4), a0
000d8e: 20c0         move.l     d0, (a0)+
000d90: 51c9fffc     dbra       d1, $d8e
000d94: 42ac000c     clr.l      $c(a4)
000d98: 204c         movea.l    a4, a0
000d9a: 61000430     bsr.w      $11cc
000d9e: dec5         adda.w     d5, a7
000da0: 6560         bcs.b      $e02
000da2: 206f0004     movea.l    $4(a7), a0
000da6: 246c000c     movea.l    $c(a4), a2
000daa: 242f0008     move.l     $8(a7), d2
000dae: 6710         beq.b      $dc0
000db0: 61005cb6     bsr.w      $6a68
000db4: 246f0004     movea.l    $4(a7), a2
000db8: 202f0000     move.l     $0(a7), d0
000dbc: 61000a44     bsr.w      $1802
000dc0: 2e6c0008     movea.l    $8(a4), a7
000dc4: 206f003c     movea.l    $3c(a7), a0
000dc8: 4e60         move       a0, usp
000dca: 204c         movea.l    a4, a0
000dcc: 7005         moveq      #$5, d0
000dce: 2f0b         move.l     a3, -(a7)
000dd0: 266e03a4     movea.l    $3a4(a6), a3
000dd4: 487a000c     pea.l      $de2(pc)
000dd8: 2f2b0164     move.l     $164(a3), -(a7)
000ddc: 266b0564     movea.l    $564(a3), a3
000de0: 4e75         rts        
000de2: 265f         movea.l    (a7)+, a3
000de4: 652e         bcs.b      $e14
000de6: 4aac02ac     tst.l      $2ac(a4)
000dea: 6608         bne.b      $df4
000dec: 61000b46     bsr.w      $1934
000df0: 60000c1c     bra.w      $1a0e
000df4: 08ef00070040 bset.b     #$7, $40(a7)
000dfa: 206c02ac     movea.l    $2ac(a4), a0
000dfe: 6000f898     bra.w      $698
000e02: 202f0000     move.l     $0(a7), d0
000e06: 670c         beq.b      $e14
000e08: 246f0004     movea.l    $4(a7), a2
000e0c: 3e81         move.w     d1, (a7)
000e0e: 610009f2     bsr.w      $1802
000e12: 3217         move.w     (a7), d1
000e14: 4aac02ac     tst.l      $2ac(a4)
000e18: 6656         bne.b      $e70
000e1a: 4fec07b8     lea.l      $7b8(a4), a7
000e1e: 204c         movea.l    a4, a0
000e20: 39410026     move.w     d1, $26(a4)
000e24: 6174         bsr.b      $e9a
000e26: 39410026     move.w     d1, $26(a4)
000e2a: 197c002d0020 move.b     #$2d, $20(a4)
000e30: 302c0002     move.w     $2(a4), d0
000e34: 6722         beq.b      $e58
000e36: 61005dbc     bsr.w      $6bf4
000e3a: 651c         bcs.b      $e58
000e3c: 0c2900770020 cmpi.b     #$77, $20(a1)
000e42: 6628         bne.b      $e6c
000e44: 2a690008     movea.l    $8(a1), a5
000e48: 2a6d0034     movea.l    $34(a5), a5
000e4c: 2049         movea.l    a1, a0
000e4e: 224c         movea.l    a4, a1
000e50: 61006b92     bsr.w      $79e4
000e54: 61000ade     bsr.w      $1934
000e58: 302c0000     move.w     $0(a4), d0
000e5c: 286e0050     movea.l    $50(a6), a4
000e60: 2d4c004c     move.l     a4, $4c(a6)
000e64: 2e6c0008     movea.l    $8(a4), a7
000e68: 61006bb0     bsr.w      $7a1a
000e6c: 60000ba0     bra.w      $1a0e
000e70: 2e4d         movea.l    a5, a7
000e72: 206c02ac     movea.l    $2ac(a4), a0
000e76: 2a680008     movea.l    $8(a0), a5
000e7a: 0c2c00060021 cmpi.b     #$6, $21(a4)
000e80: 6608         bne.b      $e8a
000e82: 2b7c000000800008 move.l     #$80, $8(a5)
000e8a: 08ec0001001c bset.b     #$1, $1c(a4)
000e90: 6604         bne.b      $e96
000e92: 3b410006     move.w     d1, $6(a5)
000e96: 6000f800     bra.w      $698
000e9a: 48e7e1e0     movem.l    d0-d2/d7/a0-a2, -(a7)
000e9e: 7006         moveq      #$6, d0
000ea0: 2f0b         move.l     a3, -(a7)
000ea2: 266e03a4     movea.l    $3a4(a6), a3
000ea6: 487a000c     pea.l      $eb4(pc)
000eaa: 2f2b0164     move.l     $164(a3), -(a7)
000eae: 266b0564     movea.l    $564(a3), a3
000eb2: 4e75         rts        
000eb4: 265f         movea.l    (a7)+, a3
000eb6: 43e80002     lea.l      $2(a0), a1
000eba: 6032         bra.b      $eee
000ebc: 42690004     clr.w      $4(a1)
000ec0: 61005d32     bsr.w      $6bf4
000ec4: 652e         bcs.b      $ef4
000ec6: 42690002     clr.w      $2(a1)
000eca: 08290000001c btst.b     #$0, $1c(a1)
000ed0: 660a         bne.b      $edc
000ed2: 4aa902ac     tst.l      $2ac(a1)
000ed6: 6716         beq.b      $eee
000ed8: 2049         movea.l    a1, a0
000eda: 61be         bsr.b      $e9a
000edc: 30290000     move.w     $0(a1), d0
000ee0: 34290004     move.w     $4(a1), d2
000ee4: 61006b34     bsr.w      $7a1a
000ee8: 3002         move.w     d2, d0
000eea: 6708         beq.b      $ef4
000eec: 60d2         bra.b      $ec0
000eee: 30290004     move.w     $4(a1), d0
000ef2: 66c8         bne.b      $ebc
000ef4: 206f0010     movea.l    $10(a7), a0
000ef8: 7200         moveq      #$0, d1
000efa: 612e         bsr.b      $f2a
000efc: 4cdf0787     movem.l    (a7)+, d0-d2/d7/a0-a2
000f00: 4e75         rts        
000f02: 61005cf0     bsr.w      $6bf4
000f06: 6520         bcs.b      $f28
000f08: b9e902ac     cmpa.l     $2ac(a1), a4
000f0c: 6612         bne.b      $f20
000f0e: 2049         movea.l    a1, a0
000f10: 6188         bsr.b      $e9a
000f12: 30290000     move.w     $0(a1), d0
000f16: 204c         movea.l    a4, a0
000f18: 61006ade     bsr.w      $79f8
000f1c: 60006afc     bra.w      $7a1a
000f20: 323c00e0     move.w     #$e0, d1
000f24: 003c0001     ori.b      #$1, ccr
000f28: 4e75         rts        
000f2a: 48e740f0     movem.l    d1/a0-a3, -(a7)
000f2e: c14c         exg.l      a0, a4
000f30: 7000         moveq      #$0, d0
000f32: 7200         moveq      #$0, d1
000f34: 6100462e     bsr.w      $5564
000f38: c948         exg.l      a4, a0
000f3a: 47e800c8     lea.l      $c8(a0), a3
000f3e: 700e         moveq      #$e, d0
000f40: 2d48004c     move.l     a0, $4c(a6)
000f44: 4aa3         tst.l      -(a3)
000f46: 56c8fffc     dbne       d0, $f44
000f4a: 6708         beq.b      $f54
000f4c: 61006694     bsr.w      $75e2
000f50: 51c8fff2     dbra       d0, $f44
000f54: 7420         moveq      #$20, d2
000f56: 949f         sub.l      (a7)+, d2
000f58: 43e801a8     lea.l      $1a8(a0), a1
000f5c: 600a         bra.b      $f68
000f5e: 3021         move.w     -(a1), d0
000f60: 6706         beq.b      $f68
000f62: 4251         clr.w      (a1)
000f64: 4e40         trap       #$0
000f66: 008f         .dc.w      $008f
000f68: 51cafff4     dbra       d2, $f5e
000f6c: 4228001c     clr.b      $1c(a0)
000f70: 08e80000001c bset.b     #$0, $1c(a0)
000f76: 61000884     bsr.w      $17fc
000f7a: 2d4c004c     move.l     a4, $4c(a6)
000f7e: 4aa8037c     tst.l      $37c(a0)
000f82: 6724         beq.b      $fa8
000f84: 2268037c     movea.l    $37c(a0), a1
000f88: 45e80380     lea.l      $380(a0), a2
000f8c: 240a         move.l     a2, d2
000f8e: 2449         movea.l    a1, a2
000f90: 226a0000     movea.l    $0(a2), a1
000f94: b48a         cmp.l      a2, d2
000f96: 6706         beq.b      $f9e
000f98: 7010         moveq      #$10, d0
000f9a: 61000866     bsr.w      $1802
000f9e: b3e8037c     cmpa.l     $37c(a0), a1
000fa2: 66ea         bne.b      $f8e
000fa4: 42a8037c     clr.l      $37c(a0)
000fa8: 4a2e002f     tst.b      $2f(a6)
000fac: 6722         beq.b      $fd0
000fae: b1ee0058     cmpa.l     $58(a6), a0
000fb2: 6608         bne.b      $fbc
000fb4: f37a05ba     frestore   $1570(pc)
000fb8: 42ae0058     clr.l      $58(a6)
000fbc: 20280334     move.l     $334(a0), d0
000fc0: 670e         beq.b      $fd0
000fc2: 42a80334     clr.l      $334(a0)
000fc6: 2440         movea.l    d0, a2
000fc8: 202a0000     move.l     $0(a2), d0
000fcc: 61000834     bsr.w      $1802
000fd0: 24680038     movea.l    $38(a0), a2
000fd4: 42a80038     clr.l      $38(a0)
000fd8: c14c         exg.l      a0, a4
000fda: 610057b2     bsr.w      $678e
000fde: 2f0b         move.l     a3, -(a7)
000fe0: 266e03a4     movea.l    $3a4(a6), a3
000fe4: 487a000c     pea.l      $ff2(pc)
000fe8: 2f2b0100     move.l     $100(a3), -(a7)
000fec: 266b0500     movea.l    $500(a3), a3
000ff0: 4e75         rts        
000ff2: 265f         movea.l    (a7)+, a3
000ff4: 0c2800bd0022 cmpi.b     #$bd, $22(a0)
000ffa: 661e         bne.b      $101a
000ffc: 53ae0794     subq.l     #$1, $794(a6)
001000: 6218         bhi.b      $101a
001002: 7001         moveq      #$1, d0
001004: 2f0b         move.l     a3, -(a7)
001006: 266e03a4     movea.l    $3a4(a6), a3
00100a: 487a000c     pea.l      $1018(pc)
00100e: 2f2b0178     move.l     $178(a3), -(a7)
001012: 266b0578     movea.l    $578(a3), a3
001016: 4e75         rts        
001018: 265f         movea.l    (a7)+, a3
00101a: c14c         exg.l      a0, a4
00101c: 4cdf0f00     movem.l    (a7)+, a0-a3
001020: 4e75         rts        
001022: 023c         .dc.w      $023c
001024: fffe         dc.w       $fffe
001026: 4e75         rts        
001028: 6100016e     bsr.w      $1198
00102c: 654a         bcs.b      $1078
00102e: 234c02ac     move.l     a4, $2ac(a1)
001032: 61000082     bsr.w      $10b6
001036: 6540         bcs.b      $1078
001038: 24680038     movea.l    $38(a0), a2
00103c: 082a00050014 btst.b     #$5, $14(a2)
001042: 662a         bne.b      $106e
001044: 4a6a0008     tst.w      $8(a2)
001048: 6606         bne.b      $1050
00104a: 4a6c0014     tst.w      $14(a4)
00104e: 661e         bne.b      $106e
001050: 246d0028     movea.l    $28(a5), a2
001054: 214a02a8     move.l     a2, $2a8(a0)
001058: 117c00640020 move.b     #$64, $20(a0)
00105e: 20680008     movea.l    $8(a0), a0
001062: 08e800070040 bset.b     #$7, $40(a0)
001068: 7446         moveq      #$46, d2
00106a: 600059fc     bra.w      $6a68
00106e: 323c00a4     move.w     #$a4, d1
001072: 2f08         move.l     a0, -(a7)
001074: 6000008a     bra.w      $1100
001078: 4e75         rts        
00107a: 6100011c     bsr.w      $1198
00107e: 65f8         bcs.b      $1078
001080: 6134         bsr.b      $10b6
001082: 65f4         bcs.b      $1078
001084: 08a80007001c bclr.b     #$7, $1c(a0)
00108a: 24680038     movea.l    $38(a0), a2
00108e: 082a00050014 btst.b     #$5, $14(a2)
001094: 6700089e     beq.w      $1934
001098: 4a6a0008     tst.w      $8(a2)
00109c: 66d0         bne.b      $106e
00109e: 22680008     movea.l    $8(a0), a1
0010a2: 234e0030     move.l     a6, $30(a1)
0010a6: 08e900050040 bset.b     #$5, $40(a1)
0010ac: 08e80007001c bset.b     #$7, $1c(a0)
0010b2: 60000880     bra.w      $1934
0010b6: 2f09         move.l     a1, -(a7)
0010b8: 236c00140014 move.l     $14(a4), $14(a1)
0010be: 336c00180018 move.w     $18(a4), $18(a1)
0010c4: 41ec0148     lea.l      $148(a4), a0
0010c8: 43e90148     lea.l      $148(a1), a1
0010cc: 721f         moveq      #$1f, d1
0010ce: e449         lsr.w      #$2, d1
0010d0: 22d8         move.l     (a0)+, (a1)+
0010d2: 51c9fffc     dbra       d1, $10d0
0010d6: 362d000e     move.w     $e(a5), d3
0010da: b67c0020     cmp.w      #$20, d3
0010de: 6314         bls.b      $10f4
0010e0: 323c00c9     move.w     #$c9, d1
0010e4: 601a         bra.b      $1100
0010e6: 3018         move.w     (a0)+, d0
0010e8: 6708         beq.b      $10f2
0010ea: 4e40         trap       #$0
0010ec: 008264024240 ori.l      #$64024240, d2
0010f2: 32c0         move.w     d0, (a1)+
0010f4: 51cbfff0     dbra       d3, $10e6
0010f8: 2057         movea.l    (a7), a0
0010fa: 610000d0     bsr.w      $11cc
0010fe: 642e         bcc.b      $112e
001100: 2057         movea.l    (a7), a0
001102: 2e81         move.l     d1, (a7)
001104: 30280002     move.w     $2(a0), d0
001108: 670a         beq.b      $1114
00110a: 396800040006 move.w     $4(a0), $6(a4)
001110: 42680002     clr.w      $2(a0)
001114: 7200         moveq      #$0, d1
001116: 52ae0794     addq.l     #$1, $794(a6)
00111a: 6100fe0e     bsr.w      $f2a
00111e: 30280000     move.w     $0(a0), d0
001122: 610068f6     bsr.w      $7a1a
001126: 221f         move.l     (a7)+, d1
001128: 003c0001     ori.b      #$1, ccr
00112c: 4e75         rts        
00112e: 242d0008     move.l     $8(a5), d2
001132: 2268000c     movea.l    $c(a0), a1
001136: 206d0024     movea.l    $24(a5), a0
00113a: 2449         movea.l    a1, a2
00113c: 6100592a     bsr.w      $6a68
001140: 2057         movea.l    (a7), a0
001142: 7000         moveq      #$0, d0
001144: 30280000     move.w     $0(a0), d0
001148: 2b400000     move.l     d0, $0(a5)
00114c: 316c00060004 move.w     $6(a4), $4(a0)
001152: 39400006     move.w     d0, $6(a4)
001156: 316c00000002 move.w     $0(a4), $2(a0)
00115c: 7003         moveq      #$3, d0
00115e: 2f0b         move.l     a3, -(a7)
001160: 266e03a4     movea.l    $3a4(a6), a3
001164: 487a000c     pea.l      $1172(pc)
001168: 2f2b0164     move.l     $164(a3), -(a7)
00116c: 266b0564     movea.l    $564(a3), a3
001170: 4e75         rts        
001172: 265f         movea.l    (a7)+, a3
001174: 658a         bcs.b      $1100
001176: 52ae0794     addq.l     #$1, $794(a6)
00117a: 117c00bd0022 move.b     #$bd, $22(a0)
001180: 588f         addq.l     #$4, a7
001182: 4e75         rts        
001184: 023c         .dc.w      $023c
001186: fffe         dc.w       $fffe
001188: 4e75         rts        
00118a: c34a         exg.l      a1, a2
00118c: 610a         bsr.b      $1198
00118e: 6506         bcs.b      $1196
001190: c34a         exg.l      a1, a2
001192: 2b4a0028     move.l     a2, $28(a5)
001196: 4e75         rts        
001198: 48e7a0a0     movem.l    d0/d2/a0/a2, -(a7)
00119c: 206e0044     movea.l    $44(a6), a0
0011a0: 323c00e5     move.w     #$e5, d1
0011a4: 61005a9a     bsr.w      $6c40
0011a8: 651c         bcs.b      $11c6
0011aa: 23490030     move.l     a1, $30(a1)
0011ae: 23490034     move.l     a1, $34(a1)
0011b2: 203c00015180 move.l     #$15180, d0
0011b8: 90ae0034     sub.l      $34(a6), d0
0011bc: 234002c0     move.l     d0, $2c0(a1)
0011c0: 236e003002bc move.l     $30(a6), $2bc(a1)
0011c6: 4cdf0505     movem.l    (a7)+, d0/d2/a0/a2
0011ca: 4e75         rts        
0011cc: 48e7f0fc     movem.l    d0-d3/a0-a5, -(a7)
0011d0: 2648         movea.l    a0, a3
0011d2: 4228001c     clr.b      $1c(a0)
0011d6: 42280370     clr.b      $370(a0)
0011da: 302d0002     move.w     $2(a5), d0
0011de: 206d0020     movea.l    $20(a5), a0
0011e2: c74c         exg.l      a3, a4
0011e4: 61005434     bsr.w      $661a
0011e8: c94b         exg.l      a4, a3
0011ea: 6416         bcc.b      $1202
0011ec: 7000         moveq      #$0, d0
0011ee: 2d4b004c     move.l     a3, $4c(a6)
0011f2: 4e40         trap       #$0
0011f4: 00016406     ori.b      #$6, d1
0011f8: 2d4c004c     move.l     a4, $4c(a6)
0011fc: 601e         bra.b      $121c
0011fe: 2d4c004c     move.l     a4, $4c(a6)
001202: 2609         move.l     a1, d3
001204: 2b480020     move.l     a0, $20(a5)
001208: 274a0038     move.l     a2, $38(a3)
00120c: 0c400101     cmpi.w     #$101, d0
001210: 6718         beq.b      $122a
001212: 0c400101     cmpi.w     #$101, d0
001216: 6712         beq.b      $122a
001218: 323c00ea     move.w     #$ea, d1
00121c: 3f410006     move.w     d1, $6(a7)
001220: 4cdf3f0f     movem.l    (a7)+, d0-d3/a0-a5
001224: 003c0001     ori.b      #$1, ccr
001228: 4e75         rts        
00122a: 276a000803a0 move.l     $8(a2), $3a0(a3)
001230: 7404         moveq      #$4, d2
001232: 61005484     bsr.w      $66b8
001236: 65e4         bcs.b      $121c
001238: 202a0038     move.l     $38(a2), d0
00123c: d0aa003c     add.l      $3c(a2), d0
001240: d0ad0008     add.l      $8(a5), d0
001244: d0ad0004     add.l      $4(a5), d0
001248: 6602         bne.b      $124c
00124a: 7001         moveq      #$1, d0
00124c: 2d4b004c     move.l     a3, $4c(a6)
001250: 4e40         trap       #$0
001252: 00076406     ori.b      #$6, d7
001256: 2d4c004c     move.l     a4, $4c(a6)
00125a: 60c0         bra.b      $121c
00125c: 2d4c004c     move.l     a4, $4c(a6)
001260: 246b032c     movea.l    $32c(a3), a2
001264: 2009         move.l     a1, d0
001266: 2209         move.l     a1, d1
001268: 92ad0008     sub.l      $8(a5), d1
00126c: 0201fffc     andi.b     #$fc, d1
001270: 2741000c     move.l     d1, $c(a3)
001274: 226b0038     movea.l    $38(a3), a1
001278: 082900050014 btst.b     #$5, $14(a1)
00127e: 43eb07b8     lea.l      $7b8(a3), a1
001282: 6706         beq.b      $128a
001284: 2241         movea.l    d1, a1
001286: 43e9ffb8     lea.l      -$48(a1), a1
00128a: 27490008     move.l     a1, $8(a3)
00128e: 42690046     clr.w      $46(a1)
001292: 42690040     clr.w      $40(a1)
001296: 23430042     move.l     d3, $42(a1)
00129a: 234a0038     move.l     a2, $38(a1)
00129e: 06a9000080000038 addi.l     #$8000, $38(a1)
0012a6: 23410034     move.l     d1, $34(a1)
0012aa: 2341003c     move.l     d1, $3c(a1)
0012ae: 236b0038002c move.l     $38(a3), $2c(a1)
0012b4: 23400024     move.l     d0, $24(a1)
0012b8: 236b03300018 move.l     $330(a3), $18(a1)
0012be: 236d00080014 move.l     $8(a5), $14(a1)
0012c4: 236d000c000c move.l     $c(a5), $c(a1)
0012ca: 4a6d0012     tst.w      $12(a5)
0012ce: 6706         beq.b      $12d6
0012d0: 376d00120018 move.w     $12(a5), $18(a3)
0012d6: 42690008     clr.w      $8(a1)
0012da: 336b0018000a move.w     $18(a3), $a(a1)
0012e0: 236b00140004 move.l     $14(a3), $4(a1)
0012e6: 42690000     clr.w      $0(a1)
0012ea: 336b00000002 move.w     $0(a3), $2(a1)
0012f0: 122e002f     move.b     $2f(a6), d1
0012f4: 6730         beq.b      $1326
0012f6: 2f0a         move.l     a2, -(a7)
0012f8: 203c0000012c move.l     #$12c, d0
0012fe: 0c010001     cmpi.b     #$1, d1
001302: 6706         beq.b      $130a
001304: 203c0000014c move.l     #$14c, d0
00130a: 61000486     bsr.w      $1792
00130e: 6510         bcs.b      $1320
001310: 274a0334     move.l     a2, $334(a3)
001314: 25400000     move.l     d0, $0(a2)
001318: 42aa0074     clr.l      $74(a2)
00131c: 42aa0004     clr.l      $4(a2)
001320: 245f         movea.l    (a7)+, a2
001322: 6500fef8     bcs.w      $121c
001326: 226b0038     movea.l    $38(a3), a1
00132a: 6106         bsr.b      $1332
00132c: 4cdf3f0f     movem.l    (a7)+, d0-d3/a0-a5
001330: 4e75         rts        
001332: 48e700e0     movem.l    a0-a2, -(a7)
001336: 204a         movea.l    a2, a0
001338: 240a         move.l     a2, d2
00133a: d4a90038     add.l      $38(a1), d2
00133e: d3e90040     adda.l     $40(a1), a1
001342: 7200         moveq      #$0, d1
001344: 2019         move.l     (a1)+, d0
001346: e488         lsr.l      #$2, d0
001348: 6406         bcc.b      $1350
00134a: 34c1         move.w     d1, (a2)+
00134c: 6002         bra.b      $1350
00134e: 24c1         move.l     d1, (a2)+
001350: 51c8fffc     dbra       d0, $134e
001354: 5240         addq.w     #$1, d0
001356: 5380         subq.l     #$1, d0
001358: 64f4         bcc.b      $134e
00135a: 2019         move.l     (a1)+, d0
00135c: e488         lsr.l      #$2, d0
00135e: 6406         bcc.b      $1366
001360: 34d9         move.w     (a1)+, (a2)+
001362: 6002         bra.b      $1366
001364: 24d9         move.l     (a1)+, (a2)+
001366: 51c8fffc     dbra       d0, $1364
00136a: 5240         addq.w     #$1, d0
00136c: 5380         subq.l     #$1, d0
00136e: 64f4         bcc.b      $1364
001370: 948a         sub.l      a2, d2
001372: 6314         bls.b      $1388
001374: e48a         lsr.l      #$2, d2
001376: 6406         bcc.b      $137e
001378: 34c1         move.w     d1, (a2)+
00137a: 6002         bra.b      $137e
00137c: 24c1         move.l     d1, (a2)+
00137e: 51cafffc     dbra       d2, $137c
001382: 5242         addq.w     #$1, d2
001384: 5382         subq.l     #$1, d2
001386: 64f4         bcc.b      $137c
001388: 222f0004     move.l     $4(a7), d1
00138c: 2419         move.l     (a1)+, d2
00138e: 6704         beq.b      $1394
001390: 61000096     bsr.w      $1428
001394: 2208         move.l     a0, d1
001396: 2419         move.l     (a1)+, d2
001398: 6704         beq.b      $139e
00139a: 6100008c     bsr.w      $1428
00139e: 122e03e0     move.b     $3e0(a6), d1
0013a2: 08010000     btst.b     #$0, d1
0013a6: 675e         beq.b      $1406
0013a8: 08010001     btst.b     #$1, d1
0013ac: 6758         beq.b      $1406
0013ae: 08010002     btst.b     #$2, d1
0013b2: 6706         beq.b      $13ba
0013b4: 08010003     btst.b     #$3, d1
0013b8: 6664         bne.b      $141e
0013ba: 222e03c8     move.l     $3c8(a6), d1
0013be: 0c81000109c8 cmpi.l     #$109c8, d1
0013c4: 673c         beq.b      $1402
0013c6: 0c81000109be cmpi.l     #$109be, d1
0013cc: 671e         beq.b      $13ec
0013ce: 0c81000109b4 cmpi.l     #$109b4, d1
0013d4: 6648         bne.b      $141e
0013d6: 40e7         move.w     sr, -(a7)
0013d8: 007c0700     ori.w      #$700, sr
0013dc: 4e7a0002     movec      cacr, d0
0013e0: 08c00003     bset.b     #$3, d0
0013e4: 4e7b0002     movec      d0, cacr
0013e8: 46df         move.w     (a7)+, sr
0013ea: 6032         bra.b      $141e
0013ec: 40e7         move.w     sr, -(a7)
0013ee: 007c0700     ori.w      #$700, sr
0013f2: 4e7a0002     movec      cacr, d0
0013f6: 00400808     ori.w      #$808, d0
0013fa: 4e7b0002     movec      d0, cacr
0013fe: 46df         move.w     (a7)+, sr
001400: 601c         bra.b      $141e
001402: f4f8         cpusha     #$3
001404: 6018         bra.b      $141e
001406: 7044         moveq      #$44, d0
001408: 2f0b         move.l     a3, -(a7)
00140a: 266e03a4     movea.l    $3a4(a6), a3
00140e: 487a000c     pea.l      $141c(pc)
001412: 2f2b0168     move.l     $168(a3), -(a7)
001416: 266b0568     movea.l    $568(a3), a3
00141a: 4e75         rts        
00141c: 265f         movea.l    (a7)+, a3
00141e: 023c         .dc.w      $023c
001420: fffe         dc.w       $fffe
001422: 4cdf0700     movem.l    (a7)+, a0-a2
001426: 4e75         rts        
001428: 3002         move.w     d2, d0
00142a: 6006         bra.b      $1432
00142c: 3419         move.w     (a1)+, d2
00142e: d3b02800     add.l      d1, (a0, d2.l)
001432: 51c8fff8     dbra       d0, $142c
001436: 2419         move.l     (a1)+, d2
001438: 66ee         bne.b      $1428
00143a: 4e75         rts        
00143c: 2040         movea.l    d0, a0
00143e: 6000ed92     bra.w      $1d2
001442: 48e70028     movem.l    a2/a4, -(a7)
001446: 2440         movea.l    d0, a2
001448: 2841         movea.l    d1, a4
00144a: 610041ac     bsr.w      $55f8
00144e: 4cdf1400     movem.l    (a7)+, a2/a4
001452: 4e75         rts        
001454: 48e73ffe     movem.l    d2-d7/a0-a6, -(a7)
001458: 2440         movea.l    d0, a2
00145a: 286e0050     movea.l    $50(a6), a4
00145e: 296a00080014 move.l     $8(a2), $14(a4)
001464: 4bea002c     lea.l      $2c(a2), a5
001468: 294f0140     move.l     a7, $140(a4)
00146c: 487a0012     pea.l      $1480(pc)
001470: 29570144     move.l     (a7), $144(a4)
001474: 2f2a006e     move.l     $6e(a2), -(a7)
001478: 4ced0fff0000 movem.l    $0(a5), d0-d7/a0-a3
00147e: 4e75         rts        
001480: c340         exg.l      d1, d0
001482: 6502         bcs.b      $1486
001484: 7000         moveq      #$0, d0
001486: 4cdf7ffc     movem.l    (a7)+, d2-d7/a0-a6
00148a: 4e75         rts        
00148c: 48e70092     movem.l    a0/a3/a6, -(a7)
001490: 2040         movea.l    d0, a0
001492: d1e80030     adda.l     $30(a0), a0
001496: 2641         movea.l    d1, a3
001498: 4e90         jsr        (a0)
00149a: c141         exg.l      d0, d1
00149c: 6502         bcs.b      $14a0
00149e: 7000         moveq      #$0, d0
0014a0: 4cdf4900     movem.l    (a7)+, a0/a3/a6
0014a4: 4e75         rts        
0014a6: 48e74020     movem.l    d1/a2, -(a7)
0014aa: 2441         movea.l    d1, a2
0014ac: e488         lsr.l      #$2, d0
0014ae: 5380         subq.l     #$1, d0
0014b0: 222f000c     move.l     $c(a7), d1
0014b4: 24c1         move.l     d1, (a2)+
0014b6: 51c8fffc     dbra       d0, $14b4
0014ba: 5240         addq.w     #$1, d0
0014bc: 5380         subq.l     #$1, d0
0014be: 64f4         bcc.b      $14b4
0014c0: 023c         .dc.w      $023c
0014c2: fffe         dc.w       $fffe
0014c4: 4cdf0402     movem.l    (a7)+, d1/a2
0014c8: 7000         moveq      #$0, d0
0014ca: 4e75         rts        
0014cc: 48e700a0     movem.l    a0/a2, -(a7)
0014d0: 2040         movea.l    d0, a0
0014d2: 2441         movea.l    d1, a2
0014d4: 610041e0     bsr.w      $56b6
0014d8: 4cdf0500     movem.l    (a7)+, a0/a2
0014dc: 7000         moveq      #$0, d0
0014de: 4e75         rts        
0014e0: 027cf8ff     andi.w     #$f8ff, sr
0014e4: 4e75         rts        
0014e6: 4a80         tst.l      d0
0014e8: 40c0         move.w     sr, d0
0014ea: 6704         beq.b      $14f0
0014ec: 007c0700     ori.w      #$700, sr
0014f0: 4e75         rts        
0014f2: 221f         move.l     (a7)+, d1
0014f4: 2e40         movea.l    d0, a7
0014f6: 7000         moveq      #$0, d0
0014f8: 2f01         move.l     d1, -(a7)
0014fa: 4e75         rts        
0014fc: 48e700c0     movem.l    a0-a1, -(a7)
001500: 2040         movea.l    d0, a0
001502: 6100ed26     bsr.w      $22a
001506: 4cdf0300     movem.l    (a7)+, a0-a1
00150a: 4e75         rts        
00150c: 46c1         move.w     d1, sr
00150e: 4e75         rts        
001510: 7000         moveq      #$0, d0
001512: 48e701e0     movem.l    d7/a0-a2, -(a7)
001516: 7000         moveq      #$0, d0
001518: 0cba000109b4eb62 cmpi.l     #$109b4, $7c(pc)
001520: 670a         beq.b      $152c
001522: 0cba000109beeb58 cmpi.l     #$109be, $7c(pc)
00152a: 6650         bne.b      $157c
00152c: 41fa0046     lea.l      $1574(pc), a0
001530: 226e0068     movea.l    $68(a6), a1
001534: 24690060     movea.l    $60(a1), a2
001538: 23480060     move.l     a0, $60(a1)
00153c: f37a0032     frestore   $1570(pc)
001540: f2800000     fnop       
001544: 2e0f         move.l     a7, d7
001546: f327         fsave      -(a7)
001548: 7001         moveq      #$1, d0
00154a: 0c571f18     cmpi.w     #$1f18, (a7)
00154e: 671c         beq.b      $156c
001550: 0c573f18     cmpi.w     #$3f18, (a7)
001554: 6716         beq.b      $156c
001556: 0c573f18     cmpi.w     #$3f18, (a7)
00155a: 6710         beq.b      $156c
00155c: 7002         moveq      #$2, d0
00155e: 0c571f38     cmpi.w     #$1f38, (a7)
001562: 6708         beq.b      $156c
001564: 0c571f38     cmpi.w     #$1f38, (a7)
001568: 6702         beq.b      $156c
00156a: 7000         moveq      #$0, d0
00156c: 2e47         movea.l    d7, a7
00156e: 6008         bra.b      $1578
001570: 00000000     ori.b      #$0, d0
001574: 4fef000c     lea.l      $c(a7), a7
001578: 234a0060     move.l     a2, $60(a1)
00157c: 4cdf0780     movem.l    (a7)+, d7/a0-a2
001580: 4e75         rts        
001582: 48e740a0     movem.l    d1/a0/a2, -(a7)
001586: 2440         movea.l    d0, a2
001588: 7000         moveq      #$0, d0
00158a: 61005284     bsr.w      $6810
00158e: 4cdf0502     movem.l    (a7)+, d1/a0/a2
001592: 55c0         scs.b      d0
001594: 4e75         rts        
001596: 48e73008     movem.l    d2-d3/a4, -(a7)
00159a: 286e0050     movea.l    $50(a6), a4
00159e: 40c1         move.w     sr, d1
0015a0: 61005c8c     bsr.w      $722e
0015a4: 4cdf100c     movem.l    (a7)+, d2-d3/a4
0015a8: 4e75         rts        
0015aa: 48e74088     movem.l    d1/a0/a4, -(a7)
0015ae: 2040         movea.l    d0, a0
0015b0: 286e004c     movea.l    $4c(a6), a4
0015b4: 6100037e     bsr.w      $1934
0015b8: c340         exg.l      d1, d0
0015ba: 4cdf1102     movem.l    (a7)+, d1/a0/a4
0015be: 6502         bcs.b      $15c2
0015c0: 7000         moveq      #$0, d0
0015c2: 4e75         rts        
0015c4: 48e70038     movem.l    a2-a4, -(a7)
0015c8: 286e004c     movea.l    $4c(a6), a4
0015cc: 246c0008     movea.l    $8(a4), a2
0015d0: 082d00050040 btst.b     #$5, $40(a5)
0015d6: 661e         bne.b      $15f6
0015d8: 246f0010     movea.l    $10(a7), a2
0015dc: 2f0b         move.l     a3, -(a7)
0015de: 266e03a4     movea.l    $3a4(a6), a3
0015e2: 487a000c     pea.l      $15f0(pc)
0015e6: 2f2b0160     move.l     $160(a3), -(a7)
0015ea: 266b0560     movea.l    $560(a3), a3
0015ee: 4e75         rts        
0015f0: 265f         movea.l    (a7)+, a3
0015f2: c340         exg.l      d1, d0
0015f4: 6502         bcs.b      $15f8
0015f6: 7000         moveq      #$0, d0
0015f8: 4cdf1c00     movem.l    (a7)+, a2-a4
0015fc: 4e75         rts        
0015fe: 48e738e0     movem.l    d2-d4/a0-a2, -(a7)
001602: 2040         movea.l    d0, a0
001604: 2401         move.l     d1, d2
001606: 4cef0600001c movem.l    $1c(a7), a1-a2
00160c: 303c0101     move.w     #$101, d0
001610: 7200         moveq      #$0, d1
001612: 7603         moveq      #$3, d3
001614: 7800         moveq      #$0, d4
001616: 4e40         trap       #$0
001618: 0003c141     ori.b      #$41, d3
00161c: 6504         bcs.b      $1622
00161e: 2481         move.l     d1, (a2)
001620: 7000         moveq      #$0, d0
001622: 4cdf071c     movem.l    (a7)+, d2-d4/a0-a2
001626: 4e75         rts        
001628: 48e700e8     movem.l    a0-a2/a4, -(a7)
00162c: 2441         movea.l    d1, a2
00162e: 610055c4     bsr.w      $6bf4
001632: 6068         bra.b      $169c
001634: 48e700e8     movem.l    a0-a2/a4, -(a7)
001638: 2041         movea.l    d1, a0
00163a: 61004fc8     bsr.w      $6604
00163e: c141         exg.l      d0, d1
001640: 6508         bcs.b      $164a
001642: 206f0014     movea.l    $14(a7), a0
001646: 208a         move.l     a2, (a0)
001648: 7000         moveq      #$0, d0
00164a: 4cdf1700     movem.l    (a7)+, a0-a2/a4
00164e: 4e75         rts        
001650: 48e7a038     movem.l    d0/d2/a2-a4, -(a7)
001654: 343c00ec     move.w     #$ec, d2
001658: 6008         bra.b      $1662
00165a: 48e7a038     movem.l    d0/d2/a2-a4, -(a7)
00165e: 343c00e8     move.w     #$e8, d2
001662: 4297         clr.l      (a7)
001664: 2440         movea.l    d0, a2
001666: 2001         move.l     d1, d0
001668: 222f0018     move.l     $18(a7), d1
00166c: 286e004c     movea.l    $4c(a6), a4
001670: 266e03a4     movea.l    $3a4(a6), a3
001674: 487a0010     pea.l      $1686(pc)
001678: 2f332000     move.l     (a3, d2.w), -(a7)
00167c: d47c0400     add.w      #$400, d2
001680: 26732000     movea.l    (a3, d2.w), a3
001684: 4e75         rts        
001686: 6402         bcc.b      $168a
001688: 2e81         move.l     d1, (a7)
00168a: 4cdf1c05     movem.l    (a7)+, d0/d2/a2-a4
00168e: 4e75         rts        
001690: 48e700e8     movem.l    a0-a2/a4, -(a7)
001694: 2040         movea.l    d0, a0
001696: 2441         movea.l    d1, a2
001698: 6100561e     bsr.w      $6cb8
00169c: c141         exg.l      d0, d1
00169e: 65aa         bcs.b      $164a
0016a0: 2489         move.l     a1, (a2)
0016a2: 60a4         bra.b      $1648
0016a4: 2f08         move.l     a0, -(a7)
0016a6: 2040         movea.l    d0, a0
0016a8: 61006278     bsr.w      $7922
0016ac: 205f         movea.l    (a7)+, a0
0016ae: c141         exg.l      d0, d1
0016b0: 6502         bcs.b      $16b4
0016b2: 7000         moveq      #$0, d0
0016b4: 4e75         rts        
0016b6: 4e40         trap       #$0
0016b8: 001660f2     ori.b      #$f2, (a6)
0016bc: 48e70050     movem.l    a1/a3, -(a7)
0016c0: 2240         movea.l    d0, a1
0016c2: 264e         movea.l    a6, a3
0016c4: 61003c82     bsr.w      $5348
0016c8: 4cdf0a00     movem.l    (a7)+, a1/a3
0016cc: 60e0         bra.b      $16ae
0016ce: 48e700a8     movem.l    a0/a2/a4, -(a7)
0016d2: 2040         movea.l    d0, a0
0016d4: 202f0010     move.l     $10(a7), d0
0016d8: 286e0050     movea.l    $50(a6), a4
0016dc: 61005f48     bsr.w      $7626
0016e0: 4cdf1500     movem.l    (a7)+, a0/a2/a4
0016e4: 60c8         bra.b      $16ae
0016e6: 2f01         move.l     d1, -(a7)
0016e8: 7200         moveq      #$0, d1
0016ea: 4e40         trap       #$0
0016ec: 008f         .dc.w      $008f
0016ee: 2001         move.l     d1, d0
0016f0: 221f         move.l     (a7)+, d1
0016f2: 4e75         rts        
0016f4: 2f08         move.l     a0, -(a7)
0016f6: 2040         movea.l    d0, a0
0016f8: 2001         move.l     d1, d0
0016fa: 7200         moveq      #$0, d1
0016fc: 4e40         trap       #$0
0016fe: 0086205f2001 ori.l      #$205f2001, d6
001704: 4e75         rts        
001706: 2f08         move.l     a0, -(a7)
001708: 2041         movea.l    d1, a0
00170a: 4e40         trap       #$0
00170c: 0082651a3080 ori.l      #$651a3080, d2
001712: 7200         moveq      #$0, d1
001714: 6014         bra.b      $172a
001716: 2f08         move.l     a0, -(a7)
001718: 2040         movea.l    d0, a0
00171a: 2001         move.l     d1, d0
00171c: 4e40         trap       #$0
00171e: 00846508206f ori.l      #$6508206f, d4
001724: 0008         .dc.w      $0008
001726: 3080         move.w     d0, (a0)
001728: 7200         moveq      #$0, d1
00172a: 2001         move.l     d1, d0
00172c: 205f         movea.l    (a7)+, a0
00172e: 4e75         rts        
001730: 2200         move.l     d0, d1
001732: 7000         moveq      #$0, d0
001734: 4e40         trap       #$0
001736: 000f         .dc.w      $000f
001738: 4e75         rts        
00173a: 007c0700     ori.w      #$700, sr
00173e: 0c8100000014 cmpi.l     #$14, d1
001744: 6708         beq.b      $174e
001746: 0c810000001e cmpi.l     #$1e, d1
00174c: 6606         bne.b      $1754
00174e: 7e08         moveq      #$8, d7
001750: 4e7b7002     movec      d7, cacr
001754: 204f         movea.l    a7, a0
001756: 598f         subq.l     #$4, a7
001758: 244f         movea.l    a7, a2
00175a: 24d8         move.l     (a0)+, (a2)+
00175c: bdc8         cmpa.l     a0, a6
00175e: 62fa         bhi.b      $175a
001760: 4292         clr.l      (a2)
001762: 4857         pea.l      (a7)
001764: 48e7304c     movem.l    d2-d3/a1/a4-a5, -(a7)
001768: d2bc000109a0 add.l      #$109a0, d1
00176e: 61000978     bsr.w      $20e8
001772: 7020         moveq      #$20, d0
001774: d08d         add.l      a5, d0
001776: 2f01         move.l     d1, -(a7)
001778: 220d         move.l     a5, d1
00177a: 61003ae4     bsr.w      $5260
00177e: 588f         addq.l     #$4, a7
001780: 600000a2     bra.w      $1824
001784: 610c         bsr.b      $1792
001786: 6508         bcs.b      $1790
001788: 2b400000     move.l     d0, $0(a5)
00178c: 2b4a0028     move.l     a2, $28(a5)
001790: 4e75         rts        
001792: 48e7c020     movem.l    d0-d1/a2, -(a7)
001796: 7200         moveq      #$0, d1
001798: 200f         move.l     a7, d0
00179a: 486f0008     pea.l      $8(a7)
00179e: 6100228c     bsr.w      $3a2c
0017a2: 588f         addq.l     #$4, a7
0017a4: 4a80         tst.l      d0
0017a6: 6708         beq.b      $17b0
0017a8: 2f400004     move.l     d0, $4(a7)
0017ac: 003c0001     ori.b      #$1, ccr
0017b0: 4cdf0403     movem.l    (a7)+, d0-d1/a2
0017b4: 4e75         rts        
0017b6: 6100ffda     bsr.w      $1792
0017ba: 6512         bcs.b      $17ce
0017bc: 2f00         move.l     d0, -(a7)
0017be: c38a         exg.l      d1, a2
0017c0: 48780000     pea.l      $0.w
0017c4: 6100fce0     bsr.w      $14a6
0017c8: 588f         addq.l     #$4, a7
0017ca: c38a         exg.l      d1, a2
0017cc: 201f         move.l     (a7)+, d0
0017ce: 4e75         rts        
0017d0: 487affb4     pea.l      $1786(pc)
0017d4: 48e7c020     movem.l    d0-d1/a2, -(a7)
0017d8: 60be         bra.b      $1798
0017da: 487affaa     pea.l      $1786(pc)
0017de: 48e7c020     movem.l    d0-d1/a2, -(a7)
0017e2: 7200         moveq      #$0, d1
0017e4: 200f         move.l     a7, d0
0017e6: 486f0008     pea.l      $8(a7)
0017ea: 6100266e     bsr.w      $3e5a
0017ee: 588f         addq.l     #$4, a7
0017f0: 60b2         bra.b      $17a4
0017f2: 487aff92     pea.l      $1786(pc)
0017f6: 48e7c020     movem.l    d0-d1/a2, -(a7)
0017fa: 60e8         bra.b      $17e4
0017fc: 2008         move.l     a0, d0
0017fe: 6000390c     bra.w      $510c
001802: 48e7c020     movem.l    d0-d1/a2, -(a7)
001806: 220a         move.l     a2, d1
001808: 61002a64     bsr.w      $426e
00180c: 6096         bra.b      $17a4
00180e: 48e7c020     movem.l    d0-d1/a2, -(a7)
001812: 220a         move.l     a2, d1
001814: 61003160     bsr.w      $4976
001818: 608a         bra.b      $17a4
00181a: 200d         move.l     a5, d0
00181c: 7224         moveq      #$24, d1
00181e: d28d         add.l      a5, d1
001820: 610033f2     bsr.w      $4c14
001824: 2200         move.l     d0, d1
001826: 6704         beq.b      $182c
001828: 003c0001     ori.b      #$1, ccr
00182c: 4e75         rts        
00182e: 2f00         move.l     d0, -(a7)
001830: 220a         move.l     a2, d1
001832: 610036de     bsr.w      $4f12
001836: 2200         move.l     d0, d1
001838: 4cdf0001     movem.l    (a7)+, d0
00183c: 6704         beq.b      $1842
00183e: 003c0001     ori.b      #$1, ccr
001842: 4e75         rts        
001844: 486d0000     pea.l      $0(a5)
001848: 2f08         move.l     a0, -(a7)
00184a: 610037c6     bsr.w      $5012
00184e: 508f         addq.l     #$8, a7
001850: 2200         move.l     d0, d1
001852: 6704         beq.b      $1858
001854: 003c0001     ori.b      #$1, ccr
001858: 4e75         rts        
00185a: 4a12         tst.b      (a2)
00185c: 4e75         rts        
00185e: 611c         bsr.b      $187c
001860: f3290074     fsave      $74(a1)
001864: 42ae0058     clr.l      $58(a6)
001868: 4a290074     tst.b      $74(a1)
00186c: 670c         beq.b      $187a
00186e: f229f0ff0008 fmovem     fp0-fp7, $8(a1)
001874: f229bc000068 fmove.l    fpcr, $68(a1)
00187a: 4e75         rts        
00187c: 22690334     movea.l    $334(a1), a1
001880: 4a2e002f     tst.b      $2f(a6)
001884: 6724         beq.b      $18aa
001886: 4aa90004     tst.l      $4(a1)
00188a: 671e         beq.b      $18aa
00188c: 48e72060     movem.l    d2/a1-a2, -(a7)
001890: 24690004     movea.l    $4(a1), a2
001894: 24290000     move.l     $0(a1), d2
001898: e48a         lsr.l      #$2, d2
00189a: 5382         subq.l     #$1, d2
00189c: 24d9         move.l     (a1)+, (a2)+
00189e: 51cafffc     dbra       d2, $189c
0018a2: 4cdf0604     movem.l    (a7)+, d2/a1-a2
0018a6: 42a90004     clr.l      $4(a1)
0018aa: 4e75         rts        
0018ac: 226c0334     movea.l    $334(a4), a1
0018b0: 4a290074     tst.b      $74(a1)
0018b4: 670c         beq.b      $18c2
0018b6: f2299c000068 fmove.l    $68(a1), fpcr
0018bc: f229d0ff0008 fmovem     $8(a1), fp0-fp7
0018c2: f3690074     frestore   $74(a1)
0018c6: 2d4c0058     move.l     a4, $58(a6)
0018ca: 4e75         rts        
0018cc: 52ae0054     addq.l     #$1, $54(a6)
0018d0: 536e0774     subq.w     #$1, $774(a6)
0018d4: 661c         bne.b      $18f2
0018d6: 3d6e00280774 move.w     $28(a6), $774(a6)
0018dc: 53ae0034     subq.l     #$1, $34(a6)
0018e0: 6210         bhi.b      $18f2
0018e2: 2d7c000151800034 move.l     #$15180, $34(a6)
0018ea: 52ae0030     addq.l     #$1, $30(a6)
0018ee: 42ae002a     clr.l      $2a(a6)
0018f2: 53ae077c     subq.l     #$1, $77c(a6)
0018f6: 6214         bhi.b      $190c
0018f8: 650e         bcs.b      $1908
0018fa: 206e0050     movea.l    $50(a6), a0
0018fe: 0c2800200020 cmpi.b     #$20, $20(a0)
001904: 6602         bne.b      $1908
001906: 612c         bsr.b      $1934
001908: 42ae077c     clr.l      $77c(a6)
00190c: 266e004c     movea.l    $4c(a6), a3
001910: 082b0007001c btst.b     #$7, $1c(a3)
001916: 6606         bne.b      $191e
001918: 52ab02b4     addq.l     #$1, $2b4(a3)
00191c: 6004         bra.b      $1922
00191e: 52ab02b8     addq.l     #$1, $2b8(a3)
001922: 536e0778     subq.w     #$1, $778(a6)
001926: 620a         bhi.b      $1932
001928: 526e0778     addq.w     #$1, $778(a6)
00192c: 08eb0005001c bset.b     #$5, $1c(a3)
001932: 4e75         rts        
001934: 48e7f070     movem.l    d0-d3/a1-a3, -(a7)
001938: 7000         moveq      #$0, d0
00193a: 40e7         move.w     sr, -(a7)
00193c: 47ee037c     lea.l      $37c(a6), a3
001940: 53ae03c4     subq.l     #$1, $3c4(a6)
001944: 6a30         bpl.b      $1976
001946: 223c7fff0000 move.l     #$7fff0000, d1
00194c: 2d4103c4     move.l     d1, $3c4(a6)
001950: 224b         movea.l    a3, a1
001952: 007c0700     ori.w      #$700, sr
001956: 6014         bra.b      $196c
001958: 242902e0     move.l     $2e0(a1), d2
00195c: 6b0e         bmi.b      $196c
00195e: 670c         beq.b      $196c
001960: d481         add.l      d1, d2
001962: 6a04         bpl.b      $1968
001964: 2401         move.l     d1, d2
001966: 4642         not.w      d2
001968: 234202e0     move.l     d2, $2e0(a1)
00196c: 22690030     movea.l    $30(a1), a1
001970: b7c9         cmpa.l     a1, a3
001972: 66e4         bne.b      $1958
001974: 46d7         move.w     (a7), sr
001976: 302e08aa     move.w     $8aa(a6), d0
00197a: 670a         beq.b      $1986
00197c: b0680000     cmp.w      $0(a0), d0
001980: 6604         bne.b      $1986
001982: 74ff         moveq      #$ff, d2
001984: 602e         bra.b      $19b4
001986: 30280018     move.w     $18(a0), d0
00198a: b06e08a6     cmp.w      $8a6(a6), d0
00198e: 640c         bcc.b      $199c
001990: 08280007001c btst.b     #$7, $1c(a0)
001996: 6604         bne.b      $199c
001998: 7400         moveq      #$0, d2
00199a: 6018         bra.b      $19b4
00199c: 322e08a8     move.w     $8a8(a6), d1
0019a0: 6704         beq.b      $19a6
0019a2: b041         cmp.w      d1, d0
0019a4: 6408         bcc.b      $19ae
0019a6: 242e03c4     move.l     $3c4(a6), d2
0019aa: d480         add.l      d0, d2
0019ac: 6006         bra.b      $19b4
0019ae: 2400         move.l     d0, d2
0019b0: 08c2001f     bset.b     #$1f, d2
0019b4: 007c0700     ori.w      #$700, sr
0019b8: 4ce806000030 movem.l    $30(a0), a1-a2
0019be: 25490030     move.l     a1, $30(a2)
0019c2: 234a0034     move.l     a2, $34(a1)
0019c6: 224b         movea.l    a3, a1
0019c8: 214202e0     move.l     d2, $2e0(a0)
0019cc: 6720         beq.b      $19ee
0019ce: 246e004c     movea.l    $4c(a6), a2
0019d2: b06a0018     cmp.w      $18(a2), d0
0019d6: 630e         bls.b      $19e6
0019d8: 08ea0005001c bset.b     #$5, $1c(a2)
0019de: 6006         bra.b      $19e6
0019e0: b4a902e0     cmp.l      $2e0(a1), d2
0019e4: 6208         bhi.b      $19ee
0019e6: 22690030     movea.l    $30(a1), a1
0019ea: b7c9         cmpa.l     a1, a3
0019ec: 66f2         bne.b      $19e0
0019ee: 24690034     movea.l    $34(a1), a2
0019f2: 48e806000030 movem.l    a1-a2, $30(a0)
0019f8: 25480030     move.l     a0, $30(a2)
0019fc: 23480034     move.l     a0, $34(a1)
001a00: 117c00610020 move.b     #$61, $20(a0)
001a06: 46df         move.w     (a7)+, sr
001a08: 4cdf0e0f     movem.l    (a7)+, d0-d3/a1-a3
001a0c: 4e75         rts        
001a0e: 202c02ac     move.l     $2ac(a4), d0
001a12: 67000086     beq.w      $1a9a
001a16: 222c02e8     move.l     $2e8(a4), d1
001a1a: 6a7e         bpl.b      $1a9a
001a1c: 2040         movea.l    d0, a0
001a1e: 20680008     movea.l    $8(a0), a0
001a22: 20680020     movea.l    $20(a0), a0
001a26: 43ec02ec     lea.l      $2ec(a4), a1
001a2a: 600c         bra.b      $1a38
001a2c: 2458         movea.l    (a0)+, a2
001a2e: 3019         move.w     (a1)+, d0
001a30: 0c524afc     cmpi.w     #$4afc, (a2)
001a34: 6602         bne.b      $1a38
001a36: 3480         move.w     d0, (a2)
001a38: 51c9fff2     dbra       d1, $1a2c
001a3c: 082e000003e0 btst.b     #$0, $3e0(a6)
001a42: 673e         beq.b      $1a82
001a44: 082e000203e0 btst.b     #$2, $3e0(a6)
001a4a: 664e         bne.b      $1a9a
001a4c: 222e03c8     move.l     $3c8(a6), d1
001a50: 0c81000109c8 cmpi.l     #$109c8, d1
001a56: 6726         beq.b      $1a7e
001a58: 0c81000109be cmpi.l     #$109be, d1
001a5e: 6708         beq.b      $1a68
001a60: 0c81000109b4 cmpi.l     #$109b4, d1
001a66: 6632         bne.b      $1a9a
001a68: 40e7         move.w     sr, -(a7)
001a6a: 007c0700     ori.w      #$700, sr
001a6e: 4e7a0002     movec      cacr, d0
001a72: 08c00003     bset.b     #$3, d0
001a76: 4e7b0002     movec      d0, cacr
001a7a: 46df         move.w     (a7)+, sr
001a7c: 601c         bra.b      $1a9a
001a7e: f440         dc.w       $f440
001a80: 6018         bra.b      $1a9a
001a82: 7040         moveq      #$40, d0
001a84: 2f0b         move.l     a3, -(a7)
001a86: 266e03a4     movea.l    $3a4(a6), a3
001a8a: 487a000c     pea.l      $1a98(pc)
001a8e: 2f2b0168     move.l     $168(a3), -(a7)
001a92: 266b0568     movea.l    $568(a3), a3
001a96: 4e75         rts        
001a98: 265f         movea.l    (a7)+, a3
001a9a: 2d6e0050004c move.l     $50(a6), $4c(a6)
001aa0: 027cf8ff     andi.w     #$f8ff, sr
001aa4: 41ee037c     lea.l      $37c(a6), a0
001aa8: 6012         bra.b      $1abc
001aaa: 082e0001002e btst.b     #$1, $2e(a6)
001ab0: 6706         beq.b      $1ab8
001ab2: 027cf8ff     andi.w     #$f8ff, sr
001ab6: 6008         bra.b      $1ac0
001ab8: 4e722000     stop       #$2000
001abc: 007c0700     ori.w      #$700, sr
001ac0: 28680030     movea.l    $30(a0), a4
001ac4: b1cc         cmpa.l     a4, a0
001ac6: 67e2         beq.b      $1aaa
001ac8: 007c0700     ori.w      #$700, sr
001acc: 202c02e0     move.l     $2e0(a4), d0
001ad0: 67d8         beq.b      $1aaa
001ad2: 302e08aa     move.w     $8aa(a6), d0
001ad6: 6708         beq.b      $1ae0
001ad8: b06c0000     cmp.w      $0(a4), d0
001adc: 6726         beq.b      $1b04
001ade: 6018         bra.b      $1af8
001ae0: 302c0018     move.w     $18(a4), d0
001ae4: b06e08a6     cmp.w      $8a6(a6), d0
001ae8: 641a         bcc.b      $1b04
001aea: 08ec0005001c bset.b     #$5, $1c(a4)
001af0: 082c0007001c btst.b     #$7, $1c(a4)
001af6: 660c         bne.b      $1b04
001af8: 027cf8ff     andi.w     #$f8ff, sr
001afc: 204c         movea.l    a4, a0
001afe: 6100fe34     bsr.w      $1934
001b02: 609c         bra.b      $1aa0
001b04: 4cec06000030 movem.l    $30(a4), a1-a2
001b0a: 25490030     move.l     a1, $30(a2)
001b0e: 234a0034     move.l     a2, $34(a1)
001b12: 294c0030     move.l     a4, $30(a4)
001b16: 294c0034     move.l     a4, $34(a4)
001b1a: 2d4c004c     move.l     a4, $4c(a6)
001b1e: 197c002a0020 move.b     #$2a, $20(a4)
001b24: 2e6c0008     movea.l    $8(a4), a7
001b28: 226c000c     movea.l    $c(a4), a1
001b2c: 4e61         move       a1, usp
001b2e: 3d6e07760778 move.w     $776(a6), $778(a6)
001b34: 082f00050040 btst.b     #$5, $40(a7)
001b3a: 6600ee36     bne.w      $972
001b3e: 6000ed5e     bra.w      $89e
001b42: 532c0370     subq.b     #$1, $370(a4)
001b46: 6404         bcc.b      $1b4c
001b48: 422c0370     clr.b      $370(a4)
001b4c: 6618         bne.b      $1b66
001b4e: 4a6c0026     tst.w      $26(a4)
001b52: 6712         beq.b      $1b66
001b54: 4cdf0070     movem.l    (a7)+, d4-d6
001b58: 29450140     move.l     d5, $140(a4)
001b5c: 29460144     move.l     d6, $144(a4)
001b60: 2e4d         movea.l    a5, a7
001b62: 6000ef88     bra.w      $aec
001b66: 206c000c     movea.l    $c(a4), a0
001b6a: 116d00400040 move.b     $40(a5), $40(a0)
001b70: 206c037c     movea.l    $37c(a4), a0
001b74: 322c0372     move.w     $372(a4), d1
001b78: b27c0008     cmp.w      #$8, d1
001b7c: 6322         bls.b      $1ba0
001b7e: 24680004     movea.l    $4(a0), a2
001b82: 43ec0380     lea.l      $380(a4), a1
001b86: b3ca         cmpa.l     a2, a1
001b88: 6716         beq.b      $1ba0
001b8a: 536c0372     subq.w     #$1, $372(a4)
001b8e: 226a0004     movea.l    $4(a2), a1
001b92: 23480000     move.l     a0, $0(a1)
001b96: 21490004     move.l     a1, $4(a0)
001b9a: 7010         moveq      #$10, d0
001b9c: 6100fc64     bsr.w      $1802
001ba0: 4a2e002f     tst.b      $2f(a6)
001ba4: 672a         beq.b      $1bd0
001ba6: 206c0334     movea.l    $334(a4), a0
001baa: 20280004     move.l     $4(a0), d0
001bae: 6618         bne.b      $1bc8
001bb0: 226c000c     movea.l    $c(a4), a1
001bb4: 43e90054     lea.l      $54(a1), a1
001bb8: 4a91         tst.l      (a1)
001bba: 6606         bne.b      $1bc2
001bbc: f37af9b2     frestore   $1570(pc)
001bc0: 600e         bra.b      $1bd0
001bc2: 6100fcec     bsr.w      $18b0
001bc6: 6008         bra.b      $1bd0
001bc8: 6100fce2     bsr.w      $18ac
001bcc: 42a90004     clr.l      $4(a1)
001bd0: 226c000c     movea.l    $c(a4), a1
001bd4: 30290046     move.w     $46(a1), d0
001bd8: 0240f000     andi.w     #$f000, d0
001bdc: 0c409000     cmpi.w     #$9000, d0
001be0: 6620         bne.b      $1c02
001be2: 240d         move.l     a5, d2
001be4: 948f         sub.l      a7, d2
001be6: 204f         movea.l    a7, a0
001be8: 4feffff4     lea.l      -$c(a7), a7
001bec: 244f         movea.l    a7, a2
001bee: 61004e78     bsr.w      $6a68
001bf2: 4bedfff4     lea.l      -$c(a5), a5
001bf6: 4ce900070048 movem.l    $48(a1), d0-d2
001bfc: 48ed00070048 movem.l    d0-d2, $48(a5)
001c02: 4e71         nop        
001c04: 226c000c     movea.l    $c(a4), a1
001c08: 4ce9017f0020 movem.l    $20(a1), d0-d6/a0
001c0e: 48ed007f0020 movem.l    d0-d6, $20(a5)
001c14: 4ce900ff0000 movem.l    $0(a1), d0-d7
001c1a: 48ed00ff0000 movem.l    d0-d7, $0(a5)
001c20: 4e60         move       a0, usp
001c22: 2948000c     move.l     a0, $c(a4)
001c26: 3b6900400040 move.w     $40(a1), $40(a5)
001c2c: 2b6900420042 move.l     $42(a1), $42(a5)
001c32: 3b6900460046 move.w     $46(a1), $46(a5)
001c38: 4e75         rts        
001c3a: 61004fb8     bsr.w      $6bf4
001c3e: 650001a0     bcs.w      $1de0
001c42: b9e902ac     cmpa.l     $2ac(a1), a4
001c46: 66000188     bne.w      $1dd0
001c4a: 08290001001c btst.b     #$1, $1c(a1)
001c50: 6718         beq.b      $1c6a
001c52: 0c2900060021 cmpi.b     #$6, $21(a1)
001c58: 6700017c     beq.w      $1dd6
001c5c: 4aa90038     tst.l      $38(a1)
001c60: 67000174     beq.w      $1dd6
001c64: 08a90001001c bclr.b     #$1, $1c(a1)
001c6a: 022dfffe0041 andi.b     #$fe, $41(a5)
001c70: 206d0020     movea.l    $20(a5), a0
001c74: 4a81         tst.l      d1
001c76: 6a5c         bpl.b      $1cd4
001c78: 5281         addq.l     #$1, d1
001c7a: 6606         bne.b      $1c82
001c7c: b47c0010     cmp.w      #$10, d2
001c80: 6328         bls.b      $1caa
001c82: 323c00e1     move.w     #$e1, d1
001c86: 60000158     bra.w      $1de0
001c8a: 2458         movea.l    (a0)+, a2
001c8c: 7001         moveq      #$1, d0
001c8e: 7201         moveq      #$1, d1
001c90: 2f0b         move.l     a3, -(a7)
001c92: 266e03a4     movea.l    $3a4(a6), a3
001c96: 487a000c     pea.l      $1ca4(pc)
001c9a: 2f2b0160     move.l     $160(a3), -(a7)
001c9e: 266b0560     movea.l    $560(a3), a3
001ca2: 4e75         rts        
001ca4: 265f         movea.l    (a7)+, a3
001ca6: 65000138     bcs.w      $1de0
001caa: 51caffde     dbra       d2, $1c8a
001cae: 342d000a     move.w     $a(a5), d2
001cb2: 206d0020     movea.l    $20(a5), a0
001cb6: 47e902ec     lea.l      $2ec(a1), a3
001cba: 6006         bra.b      $1cc2
001cbc: 2458         movea.l    (a0)+, a2
001cbe: 3692         move.w     (a2), (a3)
001cc0: 349b         move.w     (a3)+, (a2)
001cc2: 51cafff8     dbra       d2, $1cbc
001cc6: 24690008     movea.l    $8(a1), a2
001cca: 08aa00070040 bclr.b     #$7, $40(a2)
001cd0: 6010         bra.b      $1ce2
001cd2: 4a98         tst.l      (a0)+
001cd4: 51cafffc     dbra       d2, $1cd2
001cd8: 24690008     movea.l    $8(a1), a2
001cdc: 08ea00070040 bset.b     #$7, $40(a2)
001ce2: 206902a8     movea.l    $2a8(a1), a0
001ce6: 4ce800ff0000 movem.l    $0(a0), d0-d7
001cec: 48ea00ff0000 movem.l    d0-d7, $0(a2)
001cf2: 4ce800ff0020 movem.l    $20(a0), d0-d7
001cf8: 48ea007f0020 movem.l    d0-d6, $20(a2)
001cfe: 2347000c     move.l     d7, $c(a1)
001d02: 156800410041 move.b     $41(a0), $41(a2)
001d08: 256800420042 move.l     $42(a0), $42(a2)
001d0e: 236d000802e8 move.l     $8(a5), $2e8(a1)
001d14: 136d000402e8 move.b     $4(a5), $2e8(a1)
001d1a: 42ad0008     clr.l      $8(a5)
001d1e: 4a2e002f     tst.b      $2f(a6)
001d22: 671c         beq.b      $1d40
001d24: 41e8006c     lea.l      $6c(a0), a0
001d28: 45f1016203340008 lea.l      ([$334, a1], $8), a2
001d30: 243c0000006c move.l     #$6c, d2
001d36: 4a302000     tst.b      (a0, d2.w)
001d3a: 6704         beq.b      $1d40
001d3c: 61004d2a     bsr.w      $6a68
001d40: 2049         movea.l    a1, a0
001d42: 197c00640020 move.b     #$64, $20(a4)
001d48: 6100fbea     bsr.w      $1934
001d4c: 122e03e0     move.b     $3e0(a6), d1
001d50: 08010000     btst.b     #$0, d1
001d54: 675e         beq.b      $1db4
001d56: 08010001     btst.b     #$1, d1
001d5a: 6758         beq.b      $1db4
001d5c: 08010002     btst.b     #$2, d1
001d60: 6706         beq.b      $1d68
001d62: 08010003     btst.b     #$3, d1
001d66: 6664         bne.b      $1dcc
001d68: 222e03c8     move.l     $3c8(a6), d1
001d6c: 0c81000109c8 cmpi.l     #$109c8, d1
001d72: 673c         beq.b      $1db0
001d74: 0c81000109be cmpi.l     #$109be, d1
001d7a: 671e         beq.b      $1d9a
001d7c: 0c81000109b4 cmpi.l     #$109b4, d1
001d82: 6648         bne.b      $1dcc
001d84: 40e7         move.w     sr, -(a7)
001d86: 007c0700     ori.w      #$700, sr
001d8a: 4e7a0002     movec      cacr, d0
001d8e: 08c00003     bset.b     #$3, d0
001d92: 4e7b0002     movec      d0, cacr
001d96: 46df         move.w     (a7)+, sr
001d98: 6032         bra.b      $1dcc
001d9a: 40e7         move.w     sr, -(a7)
001d9c: 007c0700     ori.w      #$700, sr
001da0: 4e7a0002     movec      cacr, d0
001da4: 00400808     ori.w      #$808, d0
001da8: 4e7b0002     movec      d0, cacr
001dac: 46df         move.w     (a7)+, sr
001dae: 601c         bra.b      $1dcc
001db0: f4f8         cpusha     #$3
001db2: 6018         bra.b      $1dcc
001db4: 7044         moveq      #$44, d0
001db6: 2f0b         move.l     a3, -(a7)
001db8: 266e03a4     movea.l    $3a4(a6), a3
001dbc: 487a000c     pea.l      $1dca(pc)
001dc0: 2f2b0168     move.l     $168(a3), -(a7)
001dc4: 266b0568     movea.l    $568(a3), a3
001dc8: 4e75         rts        
001dca: 265f         movea.l    (a7)+, a3
001dcc: 6000fc40     bra.w      $1a0e
001dd0: 323c00e0     move.w     #$e0, d1
001dd4: 600a         bra.b      $1de0
001dd6: 323c00e4     move.w     #$e4, d1
001dda: 2b6902b00000 move.l     $2b0(a1), $0(a5)
001de0: 003c0001     ori.b      #$1, ccr
001de4: 4e75         rts        
001de6: 4aac0014     tst.l      $14(a4)
001dea: 660000d6     bne.w      $1ec2
001dee: 203c00000022 move.l     #$22, d0
001df4: 2f0b         move.l     a3, -(a7)
001df6: 266e03a4     movea.l    $3a4(a6), a3
001dfa: 487a000c     pea.l      $1e08(pc)
001dfe: 2f2b0168     move.l     $168(a3), -(a7)
001e02: 266b0568     movea.l    $568(a3), a3
001e06: 4e75         rts        
001e08: 265f         movea.l    (a7)+, a3
001e0a: 48e7000e     movem.l    a4-a6, -(a7)
001e0e: 487a0012     pea.l      $1e22(pc)
001e12: 2f2e08ec     move.l     $8ec(a6), -(a7)
001e16: 007c0700     ori.w      #$700, sr
001e1a: 4ced7fff0000 movem.l    $0(a5), d0-d7/a0-a6
001e20: 4e75         rts        
001e22: 4cdf7000     movem.l    (a7)+, a4-a6
001e26: 7055         moveq      #$55, d0
001e28: 2f0b         move.l     a3, -(a7)
001e2a: 266e03a4     movea.l    $3a4(a6), a3
001e2e: 487a000c     pea.l      $1e3c(pc)
001e32: 2f2b0168     move.l     $168(a3), -(a7)
001e36: 266b0568     movea.l    $568(a3), a3
001e3a: 4e75         rts        
001e3c: 265f         movea.l    (a7)+, a3
001e3e: 4e75         rts        
001e40: 61004db2     bsr.w      $6bf4
001e44: 652c         bcs.b      $1e72
001e46: 4a6c0014     tst.w      $14(a4)
001e4a: 670a         beq.b      $1e56
001e4c: 202c0014     move.l     $14(a4), d0
001e50: b0a90014     cmp.l      $14(a1), d0
001e54: 661e         bne.b      $1e74
001e56: 336d00060018 move.w     $6(a5), $18(a1)
001e5c: 336d0006001a move.w     $6(a5), $1a(a1)
001e62: 10290020     move.b     $20(a1), d0
001e66: 2049         movea.l    a1, a0
001e68: b03c0061     cmp.b      #$61, d0
001e6c: 6700fac6     beq.w      $1934
001e70: 7200         moveq      #$0, d1
001e72: 4e75         rts        
001e74: 323c00e0     move.w     #$e0, d1
001e78: 003c0001     ori.b      #$1, ccr
001e7c: 4e75         rts        
001e7e: 426d0000     clr.w      $0(a5)
001e82: 3b6c00000002 move.w     $0(a4), $2(a5)
001e88: 2b6c00140004 move.l     $14(a4), $4(a5)
001e8e: 426d0008     clr.w      $8(a5)
001e92: 3b6c0018000a move.w     $18(a4), $a(a5)
001e98: 4e75         rts        
001e9a: 4a6c0014     tst.w      $14(a4)
001e9e: 671c         beq.b      $1ebc
001ea0: 202c0038     move.l     $38(a4), d0
001ea4: 671c         beq.b      $1ec2
001ea6: 2040         movea.l    d0, a0
001ea8: 20280008     move.l     $8(a0), d0
001eac: b0ac03a0     cmp.l      $3a0(a4), d0
001eb0: 6610         bne.b      $1ec2
001eb2: 4a6c03a0     tst.w      $3a0(a4)
001eb6: 6704         beq.b      $1ebc
001eb8: b280         cmp.l      d0, d1
001eba: 6606         bne.b      $1ec2
001ebc: 29410014     move.l     d1, $14(a4)
001ec0: 4e75         rts        
001ec2: 323c00a4     move.w     #$a4, d1
001ec6: 003c0001     ori.b      #$1, ccr
001eca: 4e75         rts        
001ecc: 95ca         suba.l     a2, a2
001ece: 3219         move.w     (a1)+, d1
001ed0: 6704         beq.b      $1ed6
001ed2: 45f11000     lea.l      (a1, d1.w), a2
001ed6: 0c400008     cmpi.w     #$8, d0
001eda: 654c         bcs.b      $1f28
001edc: 1200         move.b     d0, d1
001ede: 02010003     andi.b     #$3, d1
001ee2: 6644         bne.b      $1f28
001ee4: 0c40002c     cmpi.w     #$2c, d0
001ee8: 6326         bls.b      $1f10
001eea: 0c4000c0     cmpi.w     #$c0, d0
001eee: 6538         bcs.b      $1f28
001ef0: 0c4000d8     cmpi.w     #$d8, d0
001ef4: 6232         bhi.b      $1f28
001ef6: d07c0278     add.w      #$278, d0
001efa: 298a0000     move.l     a2, (a4, d0.w)
001efe: d07c001c     add.w      #$1c, d0
001f02: 6706         beq.b      $1f0a
001f04: 29880000     move.l     a0, (a4, d0.w)
001f08: 6014         bra.b      $1f1e
001f0a: 42b40000     clr.l      (a4, d0.w)
001f0e: 600e         bra.b      $1f1e
001f10: 2988005c     move.l     a0, $5c(a4, d0.w)
001f14: 298a0034     move.l     a2, $34(a4, d0.w)
001f18: 6604         bne.b      $1f1e
001f1a: 298a005c     move.l     a2, $5c(a4, d0.w)
001f1e: 3019         move.w     (a1)+, d0
001f20: 0c40ffff     cmpi.w     #$ffff, d0
001f24: 66a6         bne.b      $1ecc
001f26: 4e75         rts        
001f28: 323c0085     move.w     #$85, d1
001f2c: 003c0001     ori.b      #$1, ccr
001f30: 4e75         rts        
001f32: 4a6c0014     tst.w      $14(a4)
001f36: 6704         beq.b      $1f3c
001f38: 4a81         tst.l      d1
001f3a: 6a86         bpl.b      $1ec2
001f3c: 7600         moveq      #$0, d3
001f3e: 4a81         tst.l      d1
001f40: 6a06         bpl.b      $1f48
001f42: b07c1000     cmp.w      #$1000, d0
001f46: 600c         bra.b      $1f54
001f48: b07c07a4     cmp.w      #$7a4, d0
001f4c: 6500ff74     bcs.w      $1ec2
001f50: b07c08e4     cmp.w      #$8e4, d0
001f54: 6400ff6c     bcc.w      $1ec2
001f58: 0c410002     cmpi.w     #$2, d1
001f5c: 6210         bhi.b      $1f6e
001f5e: 671c         beq.b      $1f7c
001f60: 16360000     move.b     (a6, d0.w), d3
001f64: 4a81         tst.l      d1
001f66: 6b34         bmi.b      $1f9c
001f68: 1d820000     move.b     d2, (a6, d0.w)
001f6c: 602e         bra.b      $1f9c
001f6e: 26360000     move.l     (a6, d0.w), d3
001f72: 4a81         tst.l      d1
001f74: 6b26         bmi.b      $1f9c
001f76: 2d820000     move.l     d2, (a6, d0.w)
001f7a: 6020         bra.b      $1f9c
001f7c: 36360000     move.w     (a6, d0.w), d3
001f80: 4a81         tst.l      d1
001f82: 6b18         bmi.b      $1f9c
001f84: 3d820000     move.w     d2, (a6, d0.w)
001f88: b443         cmp.w      d3, d2
001f8a: 6710         beq.b      $1f9c
001f8c: 47ee037c     lea.l      $37c(a6), a3
001f90: b07c08a6     cmp.w      #$8a6, d0
001f94: 670c         beq.b      $1fa2
001f96: b07c08a8     cmp.w      #$8a8, d0
001f9a: 672e         beq.b      $1fca
001f9c: 2b430008     move.l     d3, $8(a5)
001fa0: 4e75         rts        
001fa2: b443         cmp.w      d3, d2
001fa4: 64f6         bcc.b      $1f9c
001fa6: 202b0034     move.l     $34(a3), d0
001faa: b7c0         cmpa.l     d0, a3
001fac: 677e         beq.b      $202c
001fae: 2040         movea.l    d0, a0
001fb0: 4aa802e0     tst.l      $2e0(a0)
001fb4: 6676         bne.b      $202c
001fb6: 20280034     move.l     $34(a0), d0
001fba: b4680018     cmp.w      $18(a0), d2
001fbe: 62ea         bhi.b      $1faa
001fc0: 217cffffffff02e0 move.l     #$ffffffff, $2e0(a0)
001fc8: 60e0         bra.b      $1faa
001fca: 202b0030     move.l     $30(a3), d0
001fce: 4a42         tst.w      d2
001fd0: 6604         bne.b      $1fd6
001fd2: 08c20010     bset.b     #$10, d2
001fd6: 2203         move.l     d3, d1
001fd8: 6604         bne.b      $1fde
001fda: 08c10010     bset.b     #$10, d1
001fde: b481         cmp.l      d1, d2
001fe0: 6524         bcs.b      $2006
001fe2: 7200         moveq      #$0, d1
001fe4: b7c0         cmpa.l     d0, a3
001fe6: 6744         beq.b      $202c
001fe8: 2040         movea.l    d0, a0
001fea: 4a2802e0     tst.b      $2e0(a0)
001fee: 6a3c         bpl.b      $202c
001ff0: 20280030     move.l     $30(a0), d0
001ff4: 32280018     move.w     $18(a0), d1
001ff8: b481         cmp.l      d1, d2
001ffa: 63e8         bls.b      $1fe4
001ffc: 217cffffffff02e0 move.l     #$ffffffff, $2e0(a0)
002004: 60de         bra.b      $1fe4
002006: 7200         moveq      #$0, d1
002008: b7c0         cmpa.l     d0, a3
00200a: 6720         beq.b      $202c
00200c: 2040         movea.l    d0, a0
00200e: 20280030     move.l     $30(a0), d0
002012: 4aa802e0     tst.l      $2e0(a0)
002016: 6bf0         bmi.b      $2008
002018: 6712         beq.b      $202c
00201a: 32280018     move.w     $18(a0), d1
00201e: b481         cmp.l      d1, d2
002020: 62e6         bhi.b      $2008
002022: 217cffffffff02e0 move.l     #$ffffffff, $2e0(a0)
00202a: 60dc         bra.b      $2008
00202c: 72ff         moveq      #$ff, d1
00202e: 202b0030     move.l     $30(a3), d0
002032: 6010         bra.b      $2044
002034: 2040         movea.l    d0, a0
002036: 20280030     move.l     $30(a0), d0
00203a: b2a802e0     cmp.l      $2e0(a0), d1
00203e: 6604         bne.b      $2044
002040: 6100f8f2     bsr.w      $1934
002044: b7c0         cmpa.l     d0, a3
002046: 66ec         bne.b      $2034
002048: 6000ff52     bra.w      $1f9c
00204c: 010b443e     movep.w    $443e(a3), d0
002050: 0c10011e     cmpi.b     #$1e, (a0)
002054: 17522003     move.b     (a2), $2003(a3)
002058: 04150118     subi.b     #$18, (a5)
00205c: 1752424c     move.b     (a2), $424c(a3)
002060: 2f13         move.l     (a3), -(a7)
002062: 161e         move.b     (a6)+, d3
002064: 1a52         .dc.w      $1a52
002066: 271e         move.l     (a6)+, -(a3)
002068: 021c016c     andi.b     #$6c, (a4)+
00206c: 4cfa0003e01c movem.l    $8a(pc), d0-d1
002072: 242e03c8     move.l     $3c8(a6), d2
002076: 263ae008     move.l     $80(pc), d3
00207a: 7800         moveq      #$0, d4
00207c: 7a00         moveq      #$0, d5
00207e: 7c00         moveq      #$0, d6
002080: 7e00         moveq      #$0, d7
002082: 48ed00ff0000 movem.l    d0-d7, $0(a5)
002088: 7600         moveq      #$0, d3
00208a: 47fadfb4     lea.l      $40(pc), a3
00208e: 6118         bsr.b      $20a8
002090: 6554         bcs.b      $20e6
002092: 2049         movea.l    a1, a0
002094: 47fadfb6     lea.l      $4c(pc), a3
002098: 610e         bsr.b      $20a8
00209a: 654a         bcs.b      $20e6
00209c: 204a         movea.l    a2, a0
00209e: 47faffac     lea.l      $204c(pc), a3
0020a2: 263c72646c63 move.l     #$72646c63, d3
0020a8: 2208         move.l     a0, d1
0020aa: 673a         beq.b      $20e6
0020ac: 082d00050040 btst.b     #$5, $40(a5)
0020b2: 6620         bne.b      $20d4
0020b4: 7050         moveq      #$50, d0
0020b6: 7203         moveq      #$3, d1
0020b8: c14a         exg.l      a0, a2
0020ba: 2f0b         move.l     a3, -(a7)
0020bc: 266e03a4     movea.l    $3a4(a6), a3
0020c0: 487a000c     pea.l      $20ce(pc)
0020c4: 2f2b0160     move.l     $160(a3), -(a7)
0020c8: 266b0560     movea.l    $560(a3), a3
0020cc: 4e75         rts        
0020ce: 265f         movea.l    (a7)+, a3
0020d0: c548         exg.l      a2, a0
0020d2: 6512         bcs.b      $20e6
0020d4: 724f         moveq      #$4f, d1
0020d6: 101b         move.b     (a3)+, d0
0020d8: b700         eor.b      d3, d0
0020da: e19b         rol.l      #$8, d3
0020dc: 10c0         move.b     d0, (a0)+
0020de: 57c9fff6     dbeq       d1, $20d6
0020e2: 6702         beq.b      $20e6
0020e4: 4210         clr.b      (a0)
0020e6: 4e75         rts        
0020e8: 4e550000     link.w     a5, #$0
0020ec: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
0020f0: 4fefffd8     lea.l      -$28(a7), a7
0020f4: 7001         moveq      #$1, d0
0020f6: 2e80         move.l     d0, (a7)
0020f8: 2f7c000003ff0004 move.l     #$3ff, $4(a7)
002100: 41f6017000000000 lea.l      (a6, invalid.w), a0
002108: 203cfffff000 move.l     #$fffff000, d0
00210e: d088         add.l      a0, d0
002110: 2f400008     move.l     d0, $8(a7)
002114: 2f7c00002000000c move.l     #$2000, $c(a7)
00211c: 42a7         clr.l      -(a7)
00211e: 41f6017000000000 lea.l      (a6, invalid.w), a0
002126: 2208         move.l     a0, d1
002128: 203c000007a4 move.l     #$7a4, d0
00212e: 61fffffff376 bsr.l      $14a6
002134: 588f         addq.l     #$4, a7
002136: 2dbc010101010170000008ac move.l     #$1010101, $8ac(a6, invalid.w)
002142: 202f0028     move.l     $28(a7), d0
002146: 2d80017000000798 move.l     d0, $798(a6, invalid.w)
00214e: 2d8001700000006c move.l     d0, $6c(a6, invalid.w)
002156: 1daf005b0170000008f4 move.b     $5b(a7), $8f4(a6, invalid.w)
002160: 2daf0060017000000064 move.l     $60(a7), $64(a6, invalid.w)
00216a: 7010         moveq      #$10, d0
00216c: d0af0060     add.l      $60(a7), d0
002170: 2d800170000008ec move.l     d0, $8ec(a6, invalid.w)
002178: 2daf0068017000000068 move.l     $68(a7), $68(a6, invalid.w)
002182: 41f6017000000000 lea.l      (a6, invalid.w), a0
00218a: 2d88017000000060 move.l     a0, $60(a6, invalid.w)
002192: 203cfffffc00 move.l     #$fffffc00, d0
002198: d0b6017000000060 add.l      $60(a6, invalid.w), d0
0021a0: 2d80017000000790 move.l     d0, $790(a6, invalid.w)
0021a8: 1dbc00ff01700000003a move.b     #$ff, $3a(a6, invalid.w)
0021b2: 7010         moveq      #$10, d0
0021b4: 2d80017000000070 move.l     d0, $70(a6, invalid.w)
0021bc: 2dbc0000010001700000007c move.l     #$100, $7c(a6, invalid.w)
0021c8: 3dbc08000170000003e2 move.w     #$800, $3e2(a6, invalid.w)
0021d2: 41fb0170fffff6f8 lea.l      $fffff6f8(a16, invalid.w), a0
0021da: 2d88017000000024 move.l     a0, $24(a6, invalid.w)
0021e2: 41f6017000000ffc lea.l      $ffc(a6, invalid.w), a0
0021ea: 2d8801700000005c move.l     a0, $5c(a6, invalid.w)
0021f2: 41fb0170ffffdef6 lea.l      $ffffdef6(a16, invalid.w), a0
0021fa: 2d88017000000ffc move.l     a0, $ffc(a6, invalid.w)
002202: 41f601700000037c lea.l      $37c(a6, invalid.w), a0
00220a: 2d880170000003b0 move.l     a0, $3b0(a6, invalid.w)
002212: 2d880170000003ac move.l     a0, $3ac(a6, invalid.w)
00221a: 41f601700000038c lea.l      $38c(a6, invalid.w), a0
002222: 2d880170000003c0 move.l     a0, $3c0(a6, invalid.w)
00222a: 2d880170000003bc move.l     a0, $3bc(a6, invalid.w)
002232: 41f6017000000384 lea.l      $384(a6, invalid.w), a0
00223a: 2d880170000003b8 move.l     a0, $3b8(a6, invalid.w)
002242: 2d880170000003b4 move.l     a0, $3b4(a6, invalid.w)
00224a: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
002252: 2d88017000000408 move.l     a0, $408(a6, invalid.w)
00225a: 2d88017000000404 move.l     a0, $404(a6, invalid.w)
002262: 41f601700000077c lea.l      $77c(a6, invalid.w), a0
00226a: 2d8801700000078c move.l     a0, $78c(a6, invalid.w)
002272: 2d88017000000788 move.l     a0, $788(a6, invalid.w)
00227a: 41f6017000000774 lea.l      $774(a6, invalid.w), a0
002282: 2d88017000000784 move.l     a0, $784(a6, invalid.w)
00228a: 2d88017000000780 move.l     a0, $780(a6, invalid.w)
002292: 202f002c     move.l     $2c(a7), d0
002296: 2d800170000003c8 move.l     d0, $3c8(a6, invalid.w)
00229e: 0c80000109b4 cmpi.l     #$109b4, d0
0022a4: 67ff0000003c beq.l      $22e2
0022aa: 0caf000109be002c cmpi.l     #$109be, $2c(a7)
0022b2: 67ff0000002e beq.l      $22e2
0022b8: 0caf00010acc002c cmpi.l     #$10acc, $2c(a7)
0022c0: 67ff00000020 beq.l      $22e2
0022c6: 0caf000109c8002c cmpi.l     #$109c8, $2c(a7)
0022ce: 67ff00000012 beq.l      $22e2
0022d4: 2f7c000109a0002c move.l     #$109a0, $2c(a7)
0022dc: 60ff0000001a bra.l      $22f8
0022e2: 2f7c000109b4002c move.l     #$109b4, $2c(a7)
0022ea: 61fffffff224 bsr.l      $1510
0022f0: 1d8001700000002f move.b     d0, $2f(a6, invalid.w)
0022f8: 41fb0170ffffdd86 lea.l      $ffffdd86(a16, invalid.w), a0
002300: 202f002c     move.l     $2c(a7), d0
002304: b090         cmp.l      (a0), d0
002306: 67ff00000014 beq.l      $231c
00230c: 41fb017000001140 lea.l      $1140(a16, invalid.w), a0
002314: 2008         move.l     a0, d0
002316: 61fffffff124 bsr.l      $143c
00231c: 2876017000000068 movea.l    $68(a6, invalid.w), a4
002324: 41fb017000003032 lea.l      $3032(a16, invalid.w), a0
00232c: 2808         move.l     a0, d4
00232e: 7a02         moveq      #$2, d5
002330: 60ff00000034 bra.l      $2366
002336: 41fb017000003020 lea.l      $3020(a16, invalid.w), a0
00233e: 2e08         move.l     a0, d7
002340: 2044         movea.l    d4, a0
002342: 5484         addq.l     #$2, d4
002344: 3010         move.w     (a0), d0
002346: 48c0         ext.l      d0
002348: de80         add.l      d0, d7
00234a: 60ff00000012 bra.l      $235e
002350: 29470006     move.l     d7, $6(a4)
002354: d9fc0000000a adda.l     #$a, a4
00235a: 5245         addq.w     #$1, d5
00235c: 5346         subq.w     #$1, d6
00235e: 4a46         tst.w      d6
002360: 66ffffffffee bne.l      $2350
002366: 2044         movea.l    d4, a0
002368: 5484         addq.l     #$2, d4
00236a: 3c10         move.w     (a0), d6
00236c: 66ffffffffc8 bne.l      $2336
002372: 0c450100     cmpi.w     #$100, d5
002376: 67ff00000014 beq.l      $238c
00237c: 41fb0170000010f2 lea.l      $10f2(a16, invalid.w), a0
002384: 2008         move.l     a0, d0
002386: 61fffffff0b4 bsr.l      $143c
00238c: 223c00001a00 move.l     #$1a00, d1
002392: 41ef0064     lea.l      $64(a7), a0
002396: 2008         move.l     a0, d0
002398: 61ff00000808 bsr.l      $2ba2
00239e: 2840         movea.l    d0, a4
0023a0: 2f4c0010     move.l     a4, $10(a7)
0023a4: 2f7c00001a000014 move.l     #$1a00, $14(a7)
0023ac: 264c         movea.l    a4, a3
0023ae: 2d8c01700000004c move.l     a4, $4c(a6, invalid.w)
0023b6: 2d8c017000000050 move.l     a4, $50(a6, invalid.w)
0023be: d9fc00000800 adda.l     #$800, a4
0023c4: 2d8c0170000003a4 move.l     a4, $3a4(a6, invalid.w)
0023cc: d9fc00000800 adda.l     #$800, a4
0023d2: 2d8c0170000003a8 move.l     a4, $3a8(a6, invalid.w)
0023da: d9fc00000800 adda.l     #$800, a4
0023e0: 2d8c01700000003c move.l     a4, $3c(a6, invalid.w)
0023e8: 203c00000200 move.l     #$200, d0
0023ee: d0b601700000003c add.l      $3c(a6, invalid.w), d0
0023f6: 2d80017000000040 move.l     d0, $40(a6, invalid.w)
0023fe: 36bc0001     move.w     #$1, (a3)
002402: 422b001c     clr.b      $1c(a3)
002406: 41fb0170ffffdbf8 lea.l      $ffffdbf8(a16, invalid.w), a0
00240e: 27480038     move.l     a0, $38(a3)
002412: 274b0034     move.l     a3, $34(a3)
002416: 274b0030     move.l     a3, $30(a3)
00241a: 177c002a0020 move.b     #$2a, $20(a3)
002420: 487b01700000401c pea.l      $401c(a16, invalid.w)
002428: 22360170000003a4 move.l     $3a4(a6, invalid.w), d1
002430: 203c00000400 move.l     #$400, d0
002436: 61fffffff06e bsr.l      $14a6
00243c: 588f         addq.l     #$4, a7
00243e: 487b017000003ffe pea.l      $3ffe(a16, invalid.w)
002446: 22360170000003a8 move.l     $3a8(a6, invalid.w), d1
00244e: 203c00000400 move.l     #$400, d0
002454: 61fffffff050 bsr.l      $14a6
00245a: 588f         addq.l     #$4, a7
00245c: 41fb017000002f34 lea.l      $2f34(a16, invalid.w), a0
002464: 2008         move.l     a0, d0
002466: 61fffffff254 bsr.l      $16bc
00246c: 202f006c     move.l     $6c(a7), d0
002470: 61ff00000616 bsr.l      $2a88
002476: 2d80017000000020 move.l     d0, $20(a6, invalid.w)
00247e: 66ff00000014 bne.l      $2494
002484: 41fb017000001002 lea.l      $1002(a16, invalid.w), a0
00248c: 2008         move.l     a0, d0
00248e: 61ffffffefac bsr.l      $143c
002494: 2476017000000020 movea.l    $20(a6, invalid.w), a2
00249c: 376a005c0018 move.w     $5c(a2), $18(a3)
0024a2: 376a005c001a move.w     $5c(a2), $1a(a3)
0024a8: 3daa005e0170000008a6 move.w     $5e(a2), $8a6(a6, invalid.w)
0024b2: 3daa00600170000008a8 move.w     $60(a2), $8a8(a6, invalid.w)
0024bc: 3daa0048017000000776 move.w     $48(a2), $776(a6, invalid.w)
0024c6: 3daa0048017000000778 move.w     $48(a2), $778(a6, invalid.w)
0024d0: 1daa006801700000002e move.b     $68(a2), $2e(a6, invalid.w)
0024da: 1daa00690170000003e0 move.b     $69(a2), $3e0(a6, invalid.w)
0024e4: 083600030170000003e0 btst.b     #$3, $3e0(a6, invalid.w)
0024ee: 67ff0000001e beq.l      $250e
0024f4: 083600010170000003e0 btst.b     #$1, $3e0(a6, invalid.w)
0024fe: 67ff0000000e beq.l      $250e
002504: 1dbc000a0170000003e1 move.b     #$a, $3e1(a6, invalid.w)
00250e: 20360170000003c8 move.l     $3c8(a6, invalid.w), d0
002516: b0aa0052     cmp.l      $52(a2), d0
00251a: 67ff00000036 beq.l      $2552
002520: 0cb6000109a00170000003c8 cmpi.l     #$109a0, $3c8(a6, invalid.w)
00252c: 66ff00000012 bne.l      $2540
002532: 0caa000109a80052 cmpi.l     #$109a8, $52(a2)
00253a: 67ff00000016 beq.l      $2552
002540: 25760170000003c80052 move.l     $3c8(a6, invalid.w), $52(a2)
00254a: 200a         move.l     a2, d0
00254c: 61fffffff156 bsr.l      $16a4
002552: 2f2f006c     move.l     $6c(a7), -(a7)
002556: 41ef0004     lea.l      $4(a7), a0
00255a: 2208         move.l     a0, d1
00255c: 202f0068     move.l     $68(a7), d0
002560: 61ff00000790 bsr.l      $2cf2
002566: 588f         addq.l     #$4, a7
002568: 286f006c     movea.l    $6c(a7), a4
00256c: 60ff0000002e bra.l      $259c
002572: 4a2f005f     tst.b      $5f(a7)
002576: 67ff0000000e beq.l      $2586
00257c: 3dbc6f6b017000000000 move.w     #$6f6b, (a6, invalid.w)
002586: 222c0004     move.l     $4(a4), d1
00258a: 2014         move.l     (a4), d0
00258c: 61ff000006a2 bsr.l      $2c30
002592: 4276017000000000 clr.w      (a6, invalid.w)
00259a: 508c         addq.l     #$8, a4
00259c: 4a94         tst.l      (a4)
00259e: 66ffffffffd2 bne.l      $2572
0025a4: 598f         subq.l     #$4, a7
0025a6: 4857         pea.l      (a7)
0025a8: 41fb017000005482 lea.l      $5482(a16, invalid.w), a0
0025b0: 2208         move.l     a0, d1
0025b2: 203c00000c01 move.l     #$c01, d0
0025b8: 61fffffff07a bsr.l      $1634
0025be: 588f         addq.l     #$4, a7
0025c0: 4a80         tst.l      d0
0025c2: 67ff0000001a beq.l      $25de
0025c8: 41fb017000000ee2 lea.l      $ee2(a16, invalid.w), a0
0025d0: 2008         move.l     a0, d0
0025d2: 61ffffffef28 bsr.l      $14fc
0025d8: 61ffffffdc3a bsr.l      $214
0025de: 588f         addq.l     #$4, a7
0025e0: 4a360170000008f4 tst.b      $8f4(a6, invalid.w)
0025e8: 67ff00000020 beq.l      $260a
0025ee: 41fb0170000003ae lea.l      $3ae(a16, invalid.w), a0
0025f6: 2208         move.l     a0, d1
0025f8: 203601700000003c move.l     $3c(a6, invalid.w), d0
002600: 20760170000008ec movea.l    $8ec(a6, invalid.w), a0
002608: 4e90         jsr        (a0)
00260a: 41f6017000000044 lea.l      $44(a6, invalid.w), a0
002612: 2208         move.l     a0, d1
002614: 7000         moveq      #$0, d0
002616: 302a0038     move.w     $38(a2), d0
00261a: 5280         addq.l     #$1, d0
00261c: e588         lsl.l      #$2, d0
00261e: 61ff000013c0 bsr.l      $39e0
002624: 4a80         tst.l      d0
002626: 66ff00000062 bne.l      $268a
00262c: 41f60170000003e4 lea.l      $3e4(a6, invalid.w), a0
002634: 2208         move.l     a0, d1
002636: 7012         moveq      #$12, d0
002638: c0ea0034     mulu.w     $34(a2), d0
00263c: 61ff000013a2 bsr.l      $39e0
002642: 4a80         tst.l      d0
002644: 66ff00000044 bne.l      $268a
00264a: 41f6017000000080 lea.l      $80(a6, invalid.w), a0
002652: 2208         move.l     a0, d1
002654: 7012         moveq      #$12, d0
002656: c0ea0036     mulu.w     $36(a2), d0
00265a: 61ff00001384 bsr.l      $39e0
002660: 4a80         tst.l      d0
002662: 66ff00000026 bne.l      $268a
002668: 41f6017000000048 lea.l      $48(a6, invalid.w), a0
002670: 2208         move.l     a0, d1
002672: 7000         moveq      #$0, d0
002674: 302a003a     move.w     $3a(a2), d0
002678: 5280         addq.l     #$1, d0
00267a: e588         lsl.l      #$2, d0
00267c: 61ff00001362 bsr.l      $39e0
002682: 4a80         tst.l      d0
002684: 67ff00000014 beq.l      $269a
00268a: 41fb017000000e3d lea.l      $e3d(a16, invalid.w), a0
002692: 2008         move.l     a0, d0
002694: 61ffffffeda6 bsr.l      $143c
00269a: 4a6a006c     tst.w      $6c(a2)
00269e: 67ff00000074 beq.l      $2714
0026a4: 0c6a0100006c cmpi.w     #$100, $6c(a2)
0026aa: 64ff00000020 bcc.l      $26cc
0026b0: 41fb017000000e34 lea.l      $e34(a16, invalid.w), a0
0026b8: 2008         move.l     a0, d0
0026ba: 61ffffffee40 bsr.l      $14fc
0026c0: 61ffffffdb52 bsr.l      $214
0026c6: 60ff0000004c bra.l      $2714
0026cc: 41f6017000000790 lea.l      $790(a6, invalid.w), a0
0026d4: 2208         move.l     a0, d1
0026d6: 7000         moveq      #$0, d0
0026d8: 302a006c     move.w     $6c(a2), d0
0026dc: e588         lsl.l      #$2, d0
0026de: 61ff00001300 bsr.l      $39e0
0026e4: 4a80         tst.l      d0
0026e6: 67ff00000014 beq.l      $26fc
0026ec: 41fb017000000e1f lea.l      $e1f(a16, invalid.w), a0
0026f4: 2008         move.l     a0, d0
0026f6: 61ffffffed44 bsr.l      $143c
0026fc: 7000         moveq      #$0, d0
0026fe: 302a006c     move.w     $6c(a2), d0
002702: e588         lsl.l      #$2, d0
002704: d0b6017000000790 add.l      $790(a6, invalid.w), d0
00270c: 2d80017000000060 move.l     d0, $60(a6, invalid.w)
002714: 2076017000000044 movea.l    $44(a6, invalid.w), a0
00271c: 30aa0038     move.w     $38(a2), (a0)
002720: 2076017000000044 movea.l    $44(a6, invalid.w), a0
002728: 31760170000003e20002 move.w     $3e2(a6, invalid.w), $2(a0)
002732: 2076017000000044 movea.l    $44(a6, invalid.w), a0
00273a: 214b0004     move.l     a3, $4(a0)
00273e: 7000         moveq      #$0, d0
002740: 302a003a     move.w     $3a(a2), d0
002744: 7210         moveq      #$10, d1
002746: e3a8         lsl.l      d1, d0
002748: 068000000100 addi.l     #$100, d0
00274e: 2076017000000048 movea.l    $48(a6, invalid.w), a0
002756: 2080         move.l     d0, (a0)
002758: 28760170000003e4 movea.l    $3e4(a6, invalid.w), a4
002760: 382a0034     move.w     $34(a2), d4
002764: 60ff0000000c bra.l      $2772
00276a: 7012         moveq      #$12, d0
00276c: d08c         add.l      a4, d0
00276e: 2880         move.l     d0, (a4)
002770: 2854         movea.l    (a4), a4
002772: 5344         subq.w     #$1, d4
002774: 66fffffffff4 bne.l      $276a
00277a: 4294         clr.l      (a4)
00277c: 203c00000800 move.l     #$800, d0
002782: d08b         add.l      a3, d0
002784: 61ffffffed6c bsr.l      $14f2
00278a: 61ff00000012 bsr.l      $279e
002790: 4fef0028     lea.l      $28(a7), a7
002794: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
00279a: 4e5d         unlk       a5
00279c: 4e75         rts        
00279e: 4e550000     link.w     a5, #$0
0027a2: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
0027a6: 2476017000000020 movea.l    $20(a6, invalid.w), a2
0027ae: 2676017000000050 movea.l    $50(a6, invalid.w), a3
0027b6: 61ffffffed28 bsr.l      $14e0
0027bc: 4a6a0042     tst.w      $42(a2)
0027c0: 67ff00000064 beq.l      $2826
0027c6: 486b0168     pea.l      $168(a3)
0027ca: 7203         moveq      #$3, d1
0027cc: 7000         moveq      #$0, d0
0027ce: 302a0042     move.w     $42(a2), d0
0027d2: d08a         add.l      a2, d0
0027d4: 61ffffffef40 bsr.l      $1716
0027da: 588f         addq.l     #$4, a7
0027dc: 4a80         tst.l      d0
0027de: 66ff00000036 bne.l      $2816
0027e4: 203c0000016a move.l     #$16a, d0
0027ea: d08b         add.l      a3, d0
0027ec: 2200         move.l     d0, d1
0027ee: 7000         moveq      #$0, d0
0027f0: 302b0168     move.w     $168(a3), d0
0027f4: 61ffffffef10 bsr.l      $1706
0027fa: 203c0000016c move.l     #$16c, d0
002800: d08b         add.l      a3, d0
002802: 2200         move.l     d0, d1
002804: 7000         moveq      #$0, d0
002806: 302b0168     move.w     $168(a3), d0
00280a: 61ffffffeefa bsr.l      $1706
002810: 60ff00000014 bra.l      $2826
002816: 41fb017000000d0e lea.l      $d0e(a16, invalid.w), a0
00281e: 2008         move.l     a0, d0
002820: 61ffffffec1a bsr.l      $143c
002826: 4a6a0040     tst.w      $40(a2)
00282a: 67ff00000040 beq.l      $286c
002830: 7000         moveq      #$0, d0
002832: 302a006e     move.w     $6e(a2), d0
002836: 2800         move.l     d0, d4
002838: 7a01         moveq      #$1, d5
00283a: 7205         moveq      #$5, d1
00283c: 7000         moveq      #$0, d0
00283e: 302a0040     move.w     $40(a2), d0
002842: d08a         add.l      a2, d0
002844: 61ffffffeeae bsr.l      $16f4
00284a: 2a00         move.l     d0, d5
00284c: 4a85         tst.l      d5
00284e: 67ff0000000c beq.l      $285c
002854: 5384         subq.l     #$1, d4
002856: 6effffffffe2 bgt.l      $283a
00285c: 4a85         tst.l      d5
00285e: 67ff0000000c beq.l      $286c
002864: 2005         move.l     d5, d0
002866: 61ffffffeec8 bsr.l      $1730
00286c: 3dbc4afc017000000000 move.w     #$4afc, (a6, invalid.w)
002876: 4a6a0044     tst.w      $44(a2)
00287a: 67ff000000f0 beq.l      $296c
002880: 4feffff4     lea.l      -$c(a7), a7
002884: 7000         moveq      #$0, d0
002886: 302a0044     move.w     $44(a2), d0
00288a: d08a         add.l      a2, d0
00288c: 2840         movea.l    d0, a4
00288e: 60ff000000ba bra.l      $294a
002894: 486f0004     pea.l      $4(a7)
002898: 220c         move.l     a4, d1
00289a: 203c00000c01 move.l     #$c01, d0
0028a0: 61ffffffed92 bsr.l      $1634
0028a6: 588f         addq.l     #$4, a7
0028a8: 2800         move.l     d0, d4
0028aa: 4a84         tst.l      d4
0028ac: 66ff0000007c bne.l      $292a
0028b2: 206f0004     movea.l    $4(a7), a0
0028b6: 4a680008     tst.w      $8(a0)
0028ba: 67ff00000010 beq.l      $28cc
0028c0: 283c000000a4 move.l     #$a4, d4
0028c6: 60ff00000026 bra.l      $28ee
0028cc: 206f0004     movea.l    $4(a7), a0
0028d0: 2ea80038     move.l     $38(a0), (a7)
0028d4: 67ff00000018 beq.l      $28ee
0028da: 41d7         lea.l      (a7), a0
0028dc: 2208         move.l     a0, d1
0028de: 206f0004     movea.l    $4(a7), a0
0028e2: 20280038     move.l     $38(a0), d0
0028e6: 61ff000010f8 bsr.l      $39e0
0028ec: 2800         move.l     d0, d4
0028ee: 4a84         tst.l      d4
0028f0: 66ff00000012 bne.l      $2904
0028f6: 2217         move.l     (a7), d1
0028f8: 202f0004     move.l     $4(a7), d0
0028fc: 61ffffffeb8e bsr.l      $148c
002902: 2800         move.l     d0, d4
002904: 4a84         tst.l      d4
002906: 67ff00000022 beq.l      $292a
00290c: 2004         move.l     d4, d0
00290e: 61ffffffee20 bsr.l      $1730
002914: 61ffffffd8fe bsr.l      $214
00291a: 41fb017000000c26 lea.l      $c26(a16, invalid.w), a0
002922: 2008         move.l     a0, d0
002924: 61ffffffeb16 bsr.l      $143c
00292a: 286f0008     movea.l    $8(a7), a4
00292e: 60ff00000006 bra.l      $2936
002934: 528c         addq.l     #$1, a4
002936: 0c140020     cmpi.b     #$20, (a4)
00293a: 67fffffffff8 beq.l      $2934
002940: 0c14000d     cmpi.b     #$d, (a4)
002944: 67ffffffffee beq.l      $2934
00294a: 4a14         tst.b      (a4)
00294c: 67ff0000001a beq.l      $2968
002952: 41ef0008     lea.l      $8(a7), a0
002956: 2208         move.l     a0, d1
002958: 200c         move.l     a4, d0
00295a: 61ffffffed34 bsr.l      $1690
002960: 4a80         tst.l      d0
002962: 67ffffffff30 beq.l      $2894
002968: 4fef000c     lea.l      $c(a7), a7
00296c: 61ff00002840 bsr.l      $51ae
002972: 518f         subq.l     #$8, a7
002974: 4a6a003c     tst.w      $3c(a2)
002978: 67ff00000020 beq.l      $299a
00297e: 7000         moveq      #$0, d0
002980: 302a003c     move.w     $3c(a2), d0
002984: d08a         add.l      a2, d0
002986: 2840         movea.l    d0, a4
002988: 200c         move.l     a4, d0
00298a: 61ff00000a4e bsr.l      $33da
002990: 5280         addq.l     #$1, d0
002992: 2800         move.l     d0, d4
002994: 60ff00000008 bra.l      $299e
00299a: 99cc         suba.l     a4, a4
00299c: 7800         moveq      #$0, d4
00299e: 486f0004     pea.l      $4(a7)
0029a2: 4854         pea.l      (a4)
0029a4: 2204         move.l     d4, d1
0029a6: 7000         moveq      #$0, d0
0029a8: 302a003e     move.w     $3e(a2), d0
0029ac: d08a         add.l      a2, d0
0029ae: 61ffffffec4e bsr.l      $15fe
0029b4: 508f         addq.l     #$8, a7
0029b6: 2a00         move.l     d0, d5
0029b8: 67ff00000022 beq.l      $29dc
0029be: 2005         move.l     d5, d0
0029c0: 61ffffffed6e bsr.l      $1730
0029c6: 61ffffffd84c bsr.l      $214
0029cc: 41fb017000000b89 lea.l      $b89(a16, invalid.w), a0
0029d4: 2008         move.l     a0, d0
0029d6: 61ffffffea64 bsr.l      $143c
0029dc: 41d7         lea.l      (a7), a0
0029de: 2208         move.l     a0, d1
0029e0: 202f0004     move.l     $4(a7), d0
0029e4: 61ffffffec42 bsr.l      $1628
0029ea: 2a00         move.l     d0, d5
0029ec: 66ff00000010 bne.l      $29fe
0029f2: 2057         movea.l    (a7), a0
0029f4: 42680002     clr.w      $2(a0)
0029f8: 60ff0000000c bra.l      $2a06
0029fe: 2005         move.l     d5, d0
002a00: 61ffffffed2e bsr.l      $1730
002a06: 508f         addq.l     #$8, a7
002a08: 303cffff     move.w     #$ffff, d0
002a0c: 3740001a     move.w     d0, $1a(a3)
002a10: 37400018     move.w     d0, $18(a3)
002a14: 0836000501700000002e btst.b     #$5, $2e(a6, invalid.w)
002a1e: 66ff00000012 bne.l      $2a32
002a24: 223c076c0000 move.l     #$76c0000, d1
002a2a: 7000         moveq      #$0, d0
002a2c: 61ffffffec88 bsr.l      $16b6
002a32: 3dbc0001017000000002 move.w     #$1, $2(a6, invalid.w)
002a3c: 4a6b0168     tst.w      $168(a3)
002a40: 67ff00000036 beq.l      $2a78
002a46: 7000         moveq      #$0, d0
002a48: 302b016c     move.w     $16c(a3), d0
002a4c: 61ffffffec98 bsr.l      $16e6
002a52: 7000         moveq      #$0, d0
002a54: 302b016a     move.w     $16a(a3), d0
002a58: 61ffffffec8c bsr.l      $16e6
002a5e: 7000         moveq      #$0, d0
002a60: 302b0168     move.w     $168(a3), d0
002a64: 61ffffffec80 bsr.l      $16e6
002a6a: 7000         moveq      #$0, d0
002a6c: 3740016c     move.w     d0, $16c(a3)
002a70: 3740016a     move.w     d0, $16a(a3)
002a74: 37400168     move.w     d0, $168(a3)
002a78: 61ff00000b3e bsr.l      $35b8
002a7e: 4ced1d32ffe4 movem.l    -$1c(a5), d1/d4-d5/a0/a2-a4
002a84: 4e5d         unlk       a5
002a86: 4e75         rts        
002a88: 4e550000     link.w     a5, #$0
002a8c: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
002a90: 2440         movea.l    d0, a2
002a92: 78ff         moveq      #$ff, d4
002a94: 99cc         suba.l     a4, a4
002a96: 60ff00000040 bra.l      $2ad8
002a9c: 222a0004     move.l     $4(a2), d1
002aa0: 2012         move.l     (a2), d0
002aa2: 61ff00000050 bsr.l      $2af4
002aa8: 2640         movea.l    d0, a3
002aaa: 4a80         tst.l      d0
002aac: 67ff00000028 beq.l      $2ad6
002ab2: 303c00ff     move.w     #$ff, d0
002ab6: c06b0014     and.w      $14(a3), d0
002aba: 7200         moveq      #$0, d1
002abc: 3200         move.w     d0, d1
002abe: b284         cmp.l      d4, d1
002ac0: 6fff00000014 ble.l      $2ad6
002ac6: 303c00ff     move.w     #$ff, d0
002aca: c06b0014     and.w      $14(a3), d0
002ace: 7200         moveq      #$0, d1
002ad0: 3200         move.w     d0, d1
002ad2: 2801         move.l     d1, d4
002ad4: 284b         movea.l    a3, a4
002ad6: 508a         addq.l     #$8, a2
002ad8: 4a92         tst.l      (a2)
002ada: 66ffffffffc0 bne.l      $2a9c
002ae0: 200c         move.l     a4, d0
002ae2: 60ff00000006 bra.l      $2aea
002ae8: 4e71         nop        
002aea: 4ced1c12ffec movem.l    -$14(a5), d1/d4/a2-a4
002af0: 4e5d         unlk       a5
002af2: 4e75         rts        
002af4: 4e550000     link.w     a5, #$0
002af8: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
002afc: 2440         movea.l    d0, a2
002afe: 2801         move.l     d1, d4
002b00: 7a00         moveq      #$0, d5
002b02: 99cc         suba.l     a4, a4
002b04: 200a         move.l     a2, d0
002b06: d084         add.l      d4, d0
002b08: 2640         movea.l    d0, a3
002b0a: 60ff0000007a bra.l      $2b86
002b10: 0c5a4afc     cmpi.w     #$4afc, (a2)+
002b14: 66ff00000070 bne.l      $2b86
002b1a: 558a         subq.l     #$2, a2
002b1c: 200a         move.l     a2, d0
002b1e: 61ff0000087e bsr.l      $339e
002b24: 4a80         tst.l      d0
002b26: 66ff0000005c bne.l      $2b84
002b2c: 282a0004     move.l     $4(a2), d4
002b30: 200a         move.l     a2, d0
002b32: d084         add.l      d4, d0
002b34: b08b         cmp.l      a3, d0
002b36: 62ff00000040 bhi.l      $2b78
002b3c: 202a000c     move.l     $c(a2), d0
002b40: d08a         add.l      a2, d0
002b42: 2200         move.l     d0, d1
002b44: 41fb017000000a2f lea.l      $a2f(a16, invalid.w), a0
002b4c: 2008         move.l     a0, d0
002b4e: 61ff000008b6 bsr.l      $3406
002b54: 4a80         tst.l      d0
002b56: 66ff00000020 bne.l      $2b78
002b5c: 303c00ff     move.w     #$ff, d0
002b60: c06a0014     and.w      $14(a2), d0
002b64: b045         cmp.w      d5, d0
002b66: 65ff00000010 bcs.l      $2b78
002b6c: 284a         movea.l    a2, a4
002b6e: 303c00ff     move.w     #$ff, d0
002b72: c06a0014     and.w      $14(a2), d0
002b76: 3a00         move.w     d0, d5
002b78: 200a         move.l     a2, d0
002b7a: d084         add.l      d4, d0
002b7c: 2440         movea.l    d0, a2
002b7e: 60ff00000006 bra.l      $2b86
002b84: 548a         addq.l     #$2, a2
002b86: b5cb         cmpa.l     a3, a2
002b88: 65ffffffff86 bcs.l      $2b10
002b8e: 200c         move.l     a4, d0
002b90: 60ff00000006 bra.l      $2b98
002b96: 4e71         nop        
002b98: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
002b9e: 4e5d         unlk       a5
002ba0: 4e75         rts        
002ba2: 4e550000     link.w     a5, #$0
002ba6: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
002baa: 2440         movea.l    d0, a2
002bac: 2801         move.l     d1, d4
002bae: 2004         move.l     d4, d0
002bb0: d0b6017000000070 add.l      $70(a6, invalid.w), d0
002bb8: 5380         subq.l     #$1, d0
002bba: 2236017000000070 move.l     $70(a6, invalid.w), d1
002bc2: 4481         neg.l      d1
002bc4: c081         and.l      d1, d0
002bc6: 2800         move.l     d0, d4
002bc8: 284a         movea.l    a2, a4
002bca: 2654         movea.l    (a4), a3
002bcc: 60ff00000020 bra.l      $2bee
002bd2: 4a93         tst.l      (a3)
002bd4: 66ff00000014 bne.l      $2bea
002bda: 41fb01700000099e lea.l      $99e(a16, invalid.w), a0
002be2: 2008         move.l     a0, d0
002be4: 61ffffffe856 bsr.l      $143c
002bea: 284b         movea.l    a3, a4
002bec: 2653         movea.l    (a3), a3
002bee: b8ab0004     cmp.l      $4(a3), d4
002bf2: 62ffffffffde bhi.l      $2bd2
002bf8: 2014         move.l     (a4), d0
002bfa: d084         add.l      d4, d0
002bfc: 2880         move.l     d0, (a4)
002bfe: 2054         movea.l    (a4), a0
002c00: 2093         move.l     (a3), (a0)
002c02: 202b0004     move.l     $4(a3), d0
002c06: 9084         sub.l      d4, d0
002c08: 2054         movea.l    (a4), a0
002c0a: 21400004     move.l     d0, $4(a0)
002c0e: 42a7         clr.l      -(a7)
002c10: 220b         move.l     a3, d1
002c12: 2004         move.l     d4, d0
002c14: 61ffffffe890 bsr.l      $14a6
002c1a: 588f         addq.l     #$4, a7
002c1c: 200b         move.l     a3, d0
002c1e: 60ff00000006 bra.l      $2c26
002c24: 4e71         nop        
002c26: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
002c2c: 4e5d         unlk       a5
002c2e: 4e75         rts        
002c30: 4e550000     link.w     a5, #$0
002c34: 48e7ce38     movem.l    d0-d1/d4-d6/a2-a4, -(a7)
002c38: 2440         movea.l    d0, a2
002c3a: 2801         move.l     d1, d4
002c3c: 598f         subq.l     #$4, a7
002c3e: 284a         movea.l    a2, a4
002c40: 4297         clr.l      (a7)
002c42: 200a         move.l     a2, d0
002c44: d084         add.l      d4, d0
002c46: 2640         movea.l    d0, a3
002c48: b0b60170000003dc cmp.l      $3dc(a6, invalid.w), d0
002c50: 63ff0000000c bls.l      $2c5e
002c56: 2d8b0170000003dc move.l     a3, $3dc(a6, invalid.w)
002c5e: 60ff00000074 bra.l      $2cd4
002c64: 0c5a4afc     cmpi.w     #$4afc, (a2)+
002c68: 66ff0000006a bne.l      $2cd4
002c6e: 558a         subq.l     #$2, a2
002c70: 2a2a0004     move.l     $4(a2), d5
002c74: 200a         move.l     a2, d0
002c76: d085         add.l      d5, d0
002c78: b08b         cmp.l      a3, d0
002c7a: 62ff00000056 bhi.l      $2cd2
002c80: 4854         pea.l      (a4)
002c82: 2204         move.l     d4, d1
002c84: 200a         move.l     a2, d0
002c86: 61ffffffea46 bsr.l      $16ce
002c8c: 588f         addq.l     #$4, a7
002c8e: 2c00         move.l     d0, d6
002c90: 67ff00000010 beq.l      $2ca2
002c96: 0c86000000e7 cmpi.l     #$e7, d6
002c9c: 66ff00000034 bne.l      $2cd2
002ca2: 4a97         tst.l      (a7)
002ca4: 66ff00000020 bne.l      $2cc6
002caa: 4a86         tst.l      d6
002cac: 66ff00000018 bne.l      $2cc6
002cb2: 4857         pea.l      (a7)
002cb4: 202a000c     move.l     $c(a2), d0
002cb8: d08a         add.l      a2, d0
002cba: 2200         move.l     d0, d1
002cbc: 7000         moveq      #$0, d0
002cbe: 61ffffffe974 bsr.l      $1634
002cc4: 588f         addq.l     #$4, a7
002cc6: 200a         move.l     a2, d0
002cc8: d085         add.l      d5, d0
002cca: 2440         movea.l    d0, a2
002ccc: 60ff00000006 bra.l      $2cd4
002cd2: 548a         addq.l     #$2, a2
002cd4: b5cb         cmpa.l     a3, a2
002cd6: 65ffffffff8c bcs.l      $2c64
002cdc: 7000         moveq      #$0, d0
002cde: 588f         addq.l     #$4, a7
002ce0: 60ff00000006 bra.l      $2ce8
002ce6: 4e71         nop        
002ce8: 4ced1c70ffe8 movem.l    -$18(a5), d4-d6/a2-a4
002cee: 4e5d         unlk       a5
002cf0: 4e75         rts        
002cf2: 4e550000     link.w     a5, #$0
002cf6: 48e7c8f0     movem.l    d0-d1/d4/a0-a3, -(a7)
002cfa: 2076017000000020 movea.l    $20(a6, invalid.w), a0
002d02: 4a68006a     tst.w      $6a(a0)
002d06: 66ff000000bc bne.l      $2dc4
002d0c: 7254         moveq      #$54, d1
002d0e: 41d7         lea.l      (a7), a0
002d10: 2008         move.l     a0, d0
002d12: 61fffffffe8e bsr.l      $2ba2
002d18: 2440         movea.l    d0, a2
002d1a: 357c00010028 move.w     #$1, $28(a2)
002d20: 357c00010024 move.w     #$1, $24(a2)
002d26: 257cffffffff0004 move.l     #$ffffffff, $4(a2)
002d2e: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
002d36: 2208         move.l     a0, d1
002d38: 200a         move.l     a2, d0
002d3a: 61ff000019aa bsr.l      $46e6
002d40: 41d2         lea.l      (a2), a0
002d42: 43ea002a     lea.l      $2a(a2), a1
002d46: 7009         moveq      #$9, d0
002d48: 22d8         move.l     (a0)+, (a1)+
002d4a: 51c8fffc     dbra       d0, $2d48
002d4e: 32d8         move.w     (a0)+, (a1)+
002d50: 203c00000398 move.l     #$398, d0
002d56: d0b6017000000050 add.l      $50(a6, invalid.w), d0
002d5e: 5180         subq.l     #$8, d0
002d60: 2200         move.l     d0, d1
002d62: 702a         moveq      #$2a, d0
002d64: d08a         add.l      a2, d0
002d66: 61ff0000197e bsr.l      $46e6
002d6c: 60ff00000038 bra.l      $2da6
002d72: 2057         movea.l    (a7), a0
002d74: 2650         movea.l    (a0), a3
002d76: 2017         move.l     (a7), d0
002d78: b0b60170000003dc cmp.l      $3dc(a6, invalid.w), d0
002d80: 63ff00000014 bls.l      $2d96
002d86: 2057         movea.l    (a7), a0
002d88: 20280004     move.l     $4(a0), d0
002d8c: d097         add.l      (a7), d0
002d8e: 2d800170000003dc move.l     d0, $3dc(a6, invalid.w)
002d96: 2217         move.l     (a7), d1
002d98: 2057         movea.l    (a7), a0
002d9a: 20280004     move.l     $4(a0), d0
002d9e: 61ff000014ce bsr.l      $426e
002da4: 2e8b         move.l     a3, (a7)
002da6: 4a97         tst.l      (a7)
002da8: 66ffffffffc8 bne.l      $2d72
002dae: 20360170000003dc move.l     $3dc(a6, invalid.w), d0
002db6: 2540002e     move.l     d0, $2e(a2)
002dba: 25400004     move.l     d0, $4(a2)
002dbe: 60ff00000140 bra.l      $2f00
002dc4: 2076017000000020 movea.l    $20(a6, invalid.w), a0
002dcc: 7000         moveq      #$0, d0
002dce: 3028006a     move.w     $6a(a0), d0
002dd2: d0b6017000000020 add.l      $20(a6, invalid.w), d0
002dda: 2640         movea.l    d0, a3
002ddc: 7800         moveq      #$0, d4
002dde: 60ff0000000e bra.l      $2dee
002de4: 7054         moveq      #$54, d0
002de6: d880         add.l      d0, d4
002de8: d7fc00000020 adda.l     #$20, a3
002dee: 4a53         tst.w      (a3)
002df0: 66fffffffff2 bne.l      $2de4
002df6: 4a6b0002     tst.w      $2(a3)
002dfa: 66ffffffffe8 bne.l      $2de4
002e00: 2204         move.l     d4, d1
002e02: 41d7         lea.l      (a7), a0
002e04: 2008         move.l     a0, d0
002e06: 61fffffffd9a bsr.l      $2ba2
002e0c: 2440         movea.l    d0, a2
002e0e: 206f0004     movea.l    $4(a7), a0
002e12: 214a0018     move.l     a2, $18(a0)
002e16: 206f0004     movea.l    $4(a7), a0
002e1a: 2144001c     move.l     d4, $1c(a0)
002e1e: 206f0004     movea.l    $4(a7), a0
002e22: 42a80020     clr.l      $20(a0)
002e26: 42b601700000006c clr.l      $6c(a6, invalid.w)
002e2e: 2076017000000020 movea.l    $20(a6, invalid.w), a0
002e36: 7000         moveq      #$0, d0
002e38: 3028006a     move.w     $6a(a0), d0
002e3c: d0b6017000000020 add.l      $20(a6, invalid.w), d0
002e44: 2640         movea.l    d0, a3
002e46: 60ff000000a6 bra.l      $2eee
002e4c: 35530026     move.w     (a3), $26(a2)
002e50: 356b00020028 move.w     $2(a3), $28(a2)
002e56: 356b00040024 move.w     $4(a3), $24(a2)
002e5c: 24ab0008     move.l     $8(a3), (a2)
002e60: 256b000c0004 move.l     $c(a3), $4(a2)
002e66: 4aab0014     tst.l      $14(a3)
002e6a: 67ff0000000a beq.l      $2e76
002e70: 206b0014     movea.l    $14(a3), a0
002e74: 6004         bra.b      $2e7a
002e76: 206b0008     movea.l    $8(a3), a0
002e7a: 2548001c     move.l     a0, $1c(a2)
002e7e: 2f2f0024     move.l     $24(a7), -(a7)
002e82: 2f2f0008     move.l     $8(a7), -(a7)
002e86: 7000         moveq      #$0, d0
002e88: 302b0006     move.w     $6(a3), d0
002e8c: e988         lsl.l      #$4, d0
002e8e: 2200         move.l     d0, d1
002e90: 200a         move.l     a2, d0
002e92: 61ff00000076 bsr.l      $2f0a
002e98: 508f         addq.l     #$8, a7
002e9a: 4a80         tst.l      d0
002e9c: 67ff00000014 beq.l      $2eb2
002ea2: 41fb0170000006f3 lea.l      $6f3(a16, invalid.w), a0
002eaa: 2008         move.l     a0, d0
002eac: 61ffffffe58e bsr.l      $143c
002eb2: d5fc0000002a adda.l     #$2a, a2
002eb8: 41eaffd6     lea.l      -$2a(a2), a0
002ebc: 43d2         lea.l      (a2), a1
002ebe: 7009         moveq      #$9, d0
002ec0: 22d8         move.l     (a0)+, (a1)+
002ec2: 51c8fffc     dbra       d0, $2ec0
002ec6: 32d8         move.w     (a0)+, (a1)+
002ec8: 203c00000398 move.l     #$398, d0
002ece: d0b6017000000050 add.l      $50(a6, invalid.w), d0
002ed6: 5180         subq.l     #$8, d0
002ed8: 2200         move.l     d0, d1
002eda: 200a         move.l     a2, d0
002edc: 61ff00001808 bsr.l      $46e6
002ee2: d5fc0000002a adda.l     #$2a, a2
002ee8: d7fc00000020 adda.l     #$20, a3
002eee: 4a53         tst.w      (a3)
002ef0: 66ffffffff5a bne.l      $2e4c
002ef6: 4a6b0002     tst.w      $2(a3)
002efa: 66ffffffff50 bne.l      $2e4c
002f00: 4ced0f10ffec movem.l    -$14(a5), d4/a0-a3
002f06: 4e5d         unlk       a5
002f08: 4e75         rts        
002f0a: 4e550000     link.w     a5, #$0
002f0e: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
002f12: 2440         movea.l    d0, a2
002f14: 2801         move.l     d1, d4
002f16: 2012         move.l     (a2), d0
002f18: b0aa0004     cmp.l      $4(a2), d0
002f1c: 64ff0000002e bcc.l      $2f4c
002f22: 2012         move.l     (a2), d0
002f24: 223601700000007c move.l     $7c(a6, invalid.w), d1
002f2c: 5381         subq.l     #$1, d1
002f2e: c081         and.l      d1, d0
002f30: 66ff0000001a bne.l      $2f4c
002f36: 202a0004     move.l     $4(a2), d0
002f3a: 223601700000007c move.l     $7c(a6, invalid.w), d1
002f42: 5381         subq.l     #$1, d1
002f44: c081         and.l      d1, d0
002f46: 67ff00000010 beq.l      $2f58
002f4c: 203c000000d2 move.l     #$d2, d0
002f52: 60ff000002ba bra.l      $320e
002f58: 2676017000000404 movea.l    $404(a6, invalid.w), a3
002f60: 60ff0000002c bra.l      $2f8e
002f66: 2012         move.l     (a2), d0
002f68: b0ab0004     cmp.l      $4(a3), d0
002f6c: 64ff0000001c bcc.l      $2f8a
002f72: 202a0004     move.l     $4(a2), d0
002f76: b093         cmp.l      (a3), d0
002f78: 63ff00000010 bls.l      $2f8a
002f7e: 203c000000d2 move.l     #$d2, d0
002f84: 60ff00000288 bra.l      $320e
002f8a: 266b0008     movea.l    $8(a3), a3
002f8e: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
002f96: b1cb         cmpa.l     a3, a0
002f98: 66ffffffffcc bne.l      $2f66
002f9e: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
002fa6: 2208         move.l     a0, d1
002fa8: 200a         move.l     a2, d0
002faa: 61ff0000173a bsr.l      $46e6
002fb0: 5d8f         subq.l     #$6, a7
002fb2: 082a00020025 btst.b     #$2, $25(a2)
002fb8: 67ff00000008 beq.l      $2fc2
002fbe: 7001         moveq      #$1, d0
002fc0: 6002         bra.b      $2fc4
002fc2: 7000         moveq      #$0, d0
002fc4: 2f400002     move.l     d0, $2(a7)
002fc8: 4a84         tst.l      d4
002fca: 66ff0000000a bne.l      $2fd6
002fd0: 283c00002000 move.l     #$2000, d4
002fd6: b8b601700000007c cmp.l      $7c(a6, invalid.w), d4
002fde: 64ff0000000c bcc.l      $2fec
002fe4: 283601700000007c move.l     $7c(a6, invalid.w), d4
002fec: 2852         movea.l    (a2), a4
002fee: 2f2f003a     move.l     $3a(a7), -(a7)
002ff2: 2f2f003a     move.l     $3a(a7), -(a7)
002ff6: 202a0004     move.l     $4(a2), d0
002ffa: 908c         sub.l      a4, d0
002ffc: 2200         move.l     d0, d1
002ffe: 200c         move.l     a4, d0
003000: 61ff00000216 bsr.l      $3218
003006: 508f         addq.l     #$8, a7
003008: 1f400001     move.b     d0, $1(a7)
00300c: 200c         move.l     a4, d0
00300e: d084         add.l      d4, d0
003010: 5380         subq.l     #$1, d0
003012: 2204         move.l     d4, d1
003014: 4481         neg.l      d1
003016: c081         and.l      d1, d0
003018: 2640         movea.l    d0, a3
00301a: 200b         move.l     a3, d0
00301c: 908c         sub.l      a4, d0
00301e: 2c00         move.l     d0, d6
003020: 2f2f0002     move.l     $2(a7), -(a7)
003024: 2206         move.l     d6, d1
003026: 200c         move.l     a4, d0
003028: 61ff000002aa bsr.l      $32d4
00302e: 588f         addq.l     #$4, a7
003030: 1e00         move.b     d0, d7
003032: 0c00ffff     cmpi.b     #$ff, d0
003036: 67ff0000003e beq.l      $3076
00303c: 0c070001     cmpi.b     #$1, d7
003040: 66ff0000000c bne.l      $304e
003046: ddb601700000006c add.l      d6, $6c(a6, invalid.w)
00304e: 4a2f0001     tst.b      $1(a7)
003052: 67ff00000022 beq.l      $3076
003058: 2f2f003a     move.l     $3a(a7), -(a7)
00305c: 2f2f003a     move.l     $3a(a7), -(a7)
003060: 2206         move.l     d6, d1
003062: 200c         move.l     a4, d0
003064: 61ff000001b2 bsr.l      $3218
00306a: 508f         addq.l     #$8, a7
00306c: 4a80         tst.l      d0
00306e: 67ff00000006 beq.l      $3076
003074: 7eff         moveq      #$ff, d7
003076: 202a0004     move.l     $4(a2), d0
00307a: 908b         sub.l      a3, d0
00307c: 2c00         move.l     d0, d6
00307e: 60ff000000f4 bra.l      $3174
003084: 2f2f0002     move.l     $2(a7), -(a7)
003088: 2206         move.l     d6, d1
00308a: 200b         move.l     a3, d0
00308c: 61ff00000246 bsr.l      $32d4
003092: 588f         addq.l     #$4, a7
003094: 1a00         move.b     d0, d5
003096: 0c00ffff     cmpi.b     #$ff, d0
00309a: 67ff0000004c beq.l      $30e8
0030a0: 0c050001     cmpi.b     #$1, d5
0030a4: 66ff0000001a bne.l      $30c0
0030aa: bc84         cmp.l      d4, d6
0030ac: 6cff00000008 bge.l      $30b6
0030b2: 2006         move.l     d6, d0
0030b4: 6002         bra.b      $30b8
0030b6: 2004         move.l     d4, d0
0030b8: d1b601700000006c add.l      d0, $6c(a6, invalid.w)
0030c0: 4a2f0001     tst.b      $1(a7)
0030c4: 67ff00000022 beq.l      $30e8
0030ca: 2f2f003a     move.l     $3a(a7), -(a7)
0030ce: 2f2f003a     move.l     $3a(a7), -(a7)
0030d2: 2204         move.l     d4, d1
0030d4: 200b         move.l     a3, d0
0030d6: 61ff00000140 bsr.l      $3218
0030dc: 508f         addq.l     #$8, a7
0030de: 4a80         tst.l      d0
0030e0: 67ff00000006 beq.l      $30e8
0030e6: 7aff         moveq      #$ff, d5
0030e8: ba07         cmp.b      d7, d5
0030ea: 67ff00000084 beq.l      $3170
0030f0: 0c070001     cmpi.b     #$1, d7
0030f4: 66ff0000004c bne.l      $3142
0030fa: 082a00010025 btst.b     #$1, $25(a2)
003100: 67ff00000018 beq.l      $311a
003106: 2f3c4c6f7665 move.l     #$4c6f7665, -(a7)
00310c: 220c         move.l     a4, d1
00310e: 200b         move.l     a3, d0
003110: 908c         sub.l      a4, d0
003112: 61ffffffe392 bsr.l      $14a6
003118: 588f         addq.l     #$4, a7
00311a: 220c         move.l     a4, d1
00311c: 200b         move.l     a3, d0
00311e: 908c         sub.l      a4, d0
003120: 61ff0000114c bsr.l      $426e
003126: b7f60170000003dc cmpa.l     $3dc(a6, invalid.w), a3
00312e: 63ff0000000c bls.l      $313c
003134: 2d8b0170000003dc move.l     a3, $3dc(a6, invalid.w)
00313c: 60ff0000002e bra.l      $316c
003142: 0c070002     cmpi.b     #$2, d7
003146: 66ff00000024 bne.l      $316c
00314c: 200b         move.l     a3, d0
00314e: 908c         sub.l      a4, d0
003150: 2200         move.l     d0, d1
003152: 200c         move.l     a4, d0
003154: 61fffffffada bsr.l      $2c30
00315a: 4aaf0002     tst.l      $2(a7)
00315e: 67ff0000000c beq.l      $316c
003164: 200b         move.l     a3, d0
003166: 908c         sub.l      a4, d0
003168: d1aa0020     add.l      d0, $20(a2)
00316c: 1e05         move.b     d5, d7
00316e: 284b         movea.l    a3, a4
003170: d7c4         adda.l     d4, a3
003172: 9c84         sub.l      d4, d6
003174: 4a86         tst.l      d6
003176: 6cffffffff0c bge.l      $3084
00317c: 97c4         suba.l     d4, a3
00317e: ba07         cmp.b      d7, d5
003180: 66ff00000080 bne.l      $3202
003186: 0c070001     cmpi.b     #$1, d7
00318a: 66ff0000004c bne.l      $31d8
003190: 082a00010025 btst.b     #$1, $25(a2)
003196: 67ff00000018 beq.l      $31b0
00319c: 2f3c4c6f7665 move.l     #$4c6f7665, -(a7)
0031a2: 220c         move.l     a4, d1
0031a4: 200b         move.l     a3, d0
0031a6: 908c         sub.l      a4, d0
0031a8: 61ffffffe2fc bsr.l      $14a6
0031ae: 588f         addq.l     #$4, a7
0031b0: 220c         move.l     a4, d1
0031b2: 200b         move.l     a3, d0
0031b4: 908c         sub.l      a4, d0
0031b6: 61ff000010b6 bsr.l      $426e
0031bc: b7f60170000003dc cmpa.l     $3dc(a6, invalid.w), a3
0031c4: 63ff0000000c bls.l      $31d2
0031ca: 2d8b0170000003dc move.l     a3, $3dc(a6, invalid.w)
0031d2: 60ff0000002e bra.l      $3202
0031d8: 0c070002     cmpi.b     #$2, d7
0031dc: 66ff00000024 bne.l      $3202
0031e2: 200b         move.l     a3, d0
0031e4: 908c         sub.l      a4, d0
0031e6: 2200         move.l     d0, d1
0031e8: 200c         move.l     a4, d0
0031ea: 61fffffffa44 bsr.l      $2c30
0031f0: 4aaf0002     tst.l      $2(a7)
0031f4: 67ff0000000c beq.l      $3202
0031fa: 200b         move.l     a3, d0
0031fc: 908c         sub.l      a4, d0
0031fe: d1aa0020     add.l      d0, $20(a2)
003202: 7000         moveq      #$0, d0
003204: 5c8f         addq.l     #$6, a7
003206: 60ff00000006 bra.l      $320e
00320c: 4e71         nop        
00320e: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
003214: 4e5d         unlk       a5
003216: 4e75         rts        
003218: 4e550000     link.w     a5, #$0
00321c: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
003220: 2440         movea.l    d0, a2
003222: 2801         move.l     d1, d4
003224: 266f0020     movea.l    $20(a7), a3
003228: 60ff00000040 bra.l      $326a
00322e: 2853         movea.l    (a3), a4
003230: b9ca         cmpa.l     a2, a4
003232: 62ff00000020 bhi.l      $3254
003238: 202b0004     move.l     $4(a3), d0
00323c: d08c         add.l      a4, d0
00323e: b08a         cmp.l      a2, d0
003240: 63ff0000000c bls.l      $324e
003246: 70ff         moveq      #$ff, d0
003248: 60ff00000080 bra.l      $32ca
00324e: 60ff00000018 bra.l      $3268
003254: 200a         move.l     a2, d0
003256: d084         add.l      d4, d0
003258: b08c         cmp.l      a4, d0
00325a: 63ff0000000c bls.l      $3268
003260: 70ff         moveq      #$ff, d0
003262: 60ff00000066 bra.l      $32ca
003268: 508b         addq.l     #$8, a3
00326a: 4a93         tst.l      (a3)
00326c: 66ffffffffc0 bne.l      $322e
003272: 266f0024     movea.l    $24(a7), a3
003276: 60ff00000040 bra.l      $32b8
00327c: 2853         movea.l    (a3), a4
00327e: b9ca         cmpa.l     a2, a4
003280: 62ff00000020 bhi.l      $32a2
003286: 202b0004     move.l     $4(a3), d0
00328a: d08c         add.l      a4, d0
00328c: b08a         cmp.l      a2, d0
00328e: 63ff0000000c bls.l      $329c
003294: 70ff         moveq      #$ff, d0
003296: 60ff00000032 bra.l      $32ca
00329c: 60ff00000018 bra.l      $32b6
0032a2: 200a         move.l     a2, d0
0032a4: d084         add.l      d4, d0
0032a6: b08c         cmp.l      a4, d0
0032a8: 63ff0000000c bls.l      $32b6
0032ae: 70ff         moveq      #$ff, d0
0032b0: 60ff00000018 bra.l      $32ca
0032b6: 508b         addq.l     #$8, a3
0032b8: 4a93         tst.l      (a3)
0032ba: 66ffffffffc0 bne.l      $327c
0032c0: 7000         moveq      #$0, d0
0032c2: 60ff00000006 bra.l      $32ca
0032c8: 4e71         nop        
0032ca: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
0032d0: 4e5d         unlk       a5
0032d2: 4e75         rts        
0032d4: 4e550000     link.w     a5, #$0
0032d8: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
0032dc: 2440         movea.l    d0, a2
0032de: 7aff         moveq      #$ff, d5
0032e0: 4aaf0004     tst.l      $4(a7)
0032e4: 6fff000000a4 ble.l      $338a
0032ea: 2d4f077c     move.l     a7, $77c(a6)
0032ee: 41fb017000000094 lea.l      $94(a16, invalid.w), a0
0032f6: b1ca         cmpa.l     a2, a0
0032f8: 63ff0000001c bls.l      $3316
0032fe: 41fb017000000030 lea.l      $30(a16, invalid.w), a0
003306: b1ca         cmpa.l     a2, a0
003308: 62ff0000000c bhi.l      $3316
00330e: 45fb017000000074 lea.l      $74(a16, invalid.w), a2
003316: 2036017000000068 move.l     $68(a6, invalid.w), d0
00331e: 5c80         addq.l     #$6, d0
003320: 2640         movea.l    d0, a3
003322: 2853         movea.l    (a3), a4
003324: 41fb01700000000a lea.l      $a(a16, invalid.w), a0
00332c: 2688         move.l     a0, (a3)
00332e: 2812         move.l     (a2), d4
003330: 2e6e077c     movea.l    $77c(a6), a7
003334: 41fb01700000004e lea.l      $4e(a16, invalid.w), a0
00333c: 2688         move.l     a0, (a3)
00333e: 4a2f002b     tst.b      $2b(a7)
003342: 66ff0000002c bne.l      $3370
003348: 24bc5a5a5a5a move.l     #$5a5a5a5a, (a2)
00334e: 0c925a5a5a5a cmpi.l     #$5a5a5a5a, (a2)
003354: 66ff00000018 bne.l      $336e
00335a: 24bca5a5a5a5 move.l     #$a5a5a5a5, (a2)
003360: 0c92a5a5a5a5 cmpi.l     #$a5a5a5a5, (a2)
003366: 66ff00000006 bne.l      $336e
00336c: 7a01         moveq      #$1, d5
00336e: 2484         move.l     d4, (a2)
003370: 7001         moveq      #$1, d0
003372: b085         cmp.l      d5, d0
003374: 67ff00000012 beq.l      $3388
00337a: b892         cmp.l      (a2), d4
00337c: 66ff00000006 bne.l      $3384
003382: 7a02         moveq      #$2, d5
003384: 2e6e077c     movea.l    $77c(a6), a7
003388: 268c         move.l     a4, (a3)
00338a: 2005         move.l     d5, d0
00338c: 60ff00000006 bra.l      $3394
003392: 4e71         nop        
003394: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
00339a: 4e5d         unlk       a5
00339c: 4e75         rts        
00339e: 4e550000     link.w     a5, #$0
0033a2: 48e78c20     movem.l    d0/d4-d5/a2, -(a7)
0033a6: 2440         movea.l    d0, a2
0033a8: 383cffff     move.w     #$ffff, d4
0033ac: 7030         moveq      #$30, d0
0033ae: e288         lsr.l      #$1, d0
0033b0: 2a00         move.l     d0, d5
0033b2: 60ff00000008 bra.l      $33bc
0033b8: 301a         move.w     (a2)+, d0
0033ba: b144         eor.w      d0, d4
0033bc: 5385         subq.l     #$1, d5
0033be: 6cfffffffff8 bge.l      $33b8
0033c4: 7000         moveq      #$0, d0
0033c6: 3004         move.w     d4, d0
0033c8: 60ff00000006 bra.l      $33d0
0033ce: 4e71         nop        
0033d0: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
0033d6: 4e5d         unlk       a5
0033d8: 4e75         rts        
0033da: 4e550000     link.w     a5, #$0
0033de: 48e78030     movem.l    d0/a2-a3, -(a7)
0033e2: 2440         movea.l    d0, a2
0033e4: 264a         movea.l    a2, a3
0033e6: 4a1b         tst.b      (a3)+
0033e8: 66fffffffffc bne.l      $33e6
0033ee: 200b         move.l     a3, d0
0033f0: 908a         sub.l      a2, d0
0033f2: 5380         subq.l     #$1, d0
0033f4: 60ff00000006 bra.l      $33fc
0033fa: 4e71         nop        
0033fc: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
003402: 4e5d         unlk       a5
003404: 4e75         rts        
003406: 4e550000     link.w     a5, #$0
00340a: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
00340e: 2440         movea.l    d0, a2
003410: 2641         movea.l    d1, a3
003412: 60ff00000016 bra.l      $342a
003418: 4a1b         tst.b      (a3)+
00341a: 66ff0000000c bne.l      $3428
003420: 7000         moveq      #$0, d0
003422: 60ff00000020 bra.l      $3444
003428: 528a         addq.l     #$1, a2
00342a: 1012         move.b     (a2), d0
00342c: 1213         move.b     (a3), d1
00342e: b300         eor.b      d1, d0
003430: 0200ffdf     andi.b     #$df, d0
003434: 67ffffffffe2 beq.l      $3418
00343a: 7001         moveq      #$1, d0
00343c: 60ff00000006 bra.l      $3444
003442: 4e71         nop        
003444: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
00344a: 4e5d         unlk       a5
00344c: 4e75         rts        
00344e: 4d50         .dc.w      $4d50
003450: 5520         subq.b     #$2, -(a0)
003452: 696e         bvs.b      $34c2
003454: 636f         bls.b      $34c5
003456: 6d70         blt.b      $34c8
003458: 6174         bsr.b      $34ce
00345a: 6962         bvs.b      $34be
00345c: 6c65         bge.b      $34c3
00345e: 2077697468204f53 movea.l    $68204f53(a7, invalid.w), a0
003466: 2d39206b6572 move.l     $206b6572.l, -(a6)
00346c: 6e65         bgt.b      $34d3
00346e: 6c004261     bge.w      $76d1
003472: 6420         bcc.b      $3494
003474: 7073         moveq      #$73, d0
003476: 7565         .dc.w      $7565
003478: 646f         bcc.b      $34e9
00347a: 2d766563746f72207461626c move.l     ([$746f, a6], $72207461), $626c(a6)
003486: 65004f53     bcs.w      $83db
00348a: 2d3920426f6f move.l     $20426f6f.l, -(a6)
003490: 7420         moveq      #$20, d2
003492: 6661         bne.b      $34f5
003494: 696c         bvs.b      $3502
003496: 6564         bcs.b      $34fc
003498: 3b20         move.w     -(a0), -(a5)
00349a: 6361         bls.b      $34fd
00349c: 6e27         bgt.b      $34c5
00349e: 7420         moveq      #$20, d2
0034a0: 6669         bne.b      $350b
0034a2: 6e64         bgt.b      $3508
0034a4: 2027         move.l     -(a7), d0
0034a6: 696e         bvs.b      $3516
0034a8: 6974         bvs.b      $351e
0034aa: 2700         move.l     d0, -(a3)
0034ac: 5741         subq.w     #$3, d1
0034ae: 524e         addq.w     #$1, a6
0034b0: 494e         .dc.w      $494e
0034b2: 4720         chk.l      -(a0), d3
0034b4: 2d20         move.l     -(a0), -(a6)
0034b6: 6b65         bmi.b      $351d
0034b8: 726e         moveq      #$6e, d1
0034ba: 656c         bcs.b      $3528
0034bc: 20686173     movea.l    $6173(a0), a0
0034c0: 2062         movea.l    -(a2), a0
0034c2: 6164         bsr.b      $3528
0034c4: 2043         movea.l    d3, a0
0034c6: 5243         addq.w     #$1, d3
0034c8: 0043616e     ori.w      #$616e, d3
0034cc: 277420616c6c move.l     $61(a4, d2.w), $6c6c(a3)
0034d2: 6f63         ble.b      $3537
0034d4: 6174         bsr.b      $354a
0034d6: 6520         bcs.b      $34f8
0034d8: 7379         .dc.w      $7379
0034da: 7374         .dc.w      $7374
0034dc: 656d         bcs.b      $354b
0034de: 207461626c657300 movea.l    ([$6c65, a4], $7300), a0
0034e6: 5741         subq.w     #$3, d1
0034e8: 524e         addq.w     #$1, a6
0034ea: 494e         .dc.w      $494e
0034ec: 4720         chk.l      -(a0), d3
0034ee: 2d20         move.l     -(a0), -(a6)
0034f0: 4952         .dc.w      $4952
0034f2: 5120         subq.b     #$8, -(a0)
0034f4: 7374         .dc.w      $7374
0034f6: 6163         bsr.b      $355b
0034f8: 6b20         bmi.b      $351a
0034fa: 746f         moveq      #$6f, d2
0034fc: 6f20         ble.b      $351e
0034fe: 736d         .dc.w      $736d
003500: 616c         bsr.b      $356e
003502: 6c2c         bge.b      $3530
003504: 2069676e     movea.l    $676e(a1), a0
003508: 6f72         ble.b      $357c
00350a: 6564         bcs.b      $3570
00350c: 0043616e     ori.w      #$616e, d3
003510: 277420616c6c move.l     $61(a4, d2.w), $6c6c(a3)
003516: 6f63         ble.b      $357b
003518: 6174         bsr.b      $358e
00351a: 6520         bcs.b      $353c
00351c: 4952         .dc.w      $4952
00351e: 5120         subq.b     #$8, -(a0)
003520: 7374         .dc.w      $7374
003522: 6163         bsr.b      $3587
003524: 6b006361     bmi.w      $9887
003528: 6e27         bgt.b      $3551
00352a: 7420         moveq      #$20, d2
00352c: 6f70         ble.b      $359e
00352e: 656e         bcs.b      $359e
003530: 2063         movea.l    -(a3), a0
003532: 6f6e         ble.b      $35a2
003534: 736f         .dc.w      $736f
003536: 6c65         bge.b      $359d
003538: 207465726d696e616c00 movea.l    ([$6d696e61, a4], $6c00), a0
003542: 4f53         .dc.w      $4f53
003544: 39503220     move.w     (a0), $3220(a4)
003548: 6d6f         blt.b      $35b9
00354a: 6475         bcc.b      $35c1
00354c: 6c65         bge.b      $35b3
00354e: 2061         movea.l    -(a1), a0
003550: 626f         bhi.b      $35c1
003552: 7274         moveq      #$74, d1
003554: 6564         bcs.b      $35ba
003556: 0043616e     ori.w      #$616e, d3
00355a: 277420666f72 move.l     $66(a4, d2.w), $6f72(a3)
003560: 6b20         bmi.b      $3582
003562: 746f         moveq      #$6f, d2
003564: 20696e69     movea.l    $6e69(a1), a0
003568: 7469         moveq      #$69, d2
00356a: 616c         bsr.b      $35d8
00356c: 2070726f     movea.l    $6f(a0, d7.w), a0
003570: 6365         bls.b      $35d7
003572: 7373         .dc.w      $7373
003574: 00696e697400 ori.w      #$6e69, $7400(a1)
00357a: 6361         bls.b      $35dd
00357c: 6e27         bgt.b      $35a5
00357e: 7420         moveq      #$20, d2
003580: 616c         bsr.b      $35ee
003582: 6c6f         bge.b      $35f3
003584: 6361         bls.b      $35e7
003586: 7465         moveq      #$65, d2
003588: 2073797374656d207461626c movea.l    ([$74656d20, a3], $7461626c), a0
003594: 6573         bcs.b      $3609
003596: 00426164     ori.w      #$6164, d2
00359a: 206d656d     movea.l    $656d(a5), a0
00359e: 6f72         ble.b      $3612
0035a0: 7920         .dc.w      $7920
0035a2: 6c69         bge.b      $360d
0035a4: 7374         .dc.w      $7374
0035a6: 20696e20     movea.l    $6e20(a1), a0
0035aa: 27696e697427 move.l     $6e69(a1), $7427(a3)
0035b0: 206d6f64     movea.l    $6f64(a5), a0
0035b4: 756c         .dc.w      $756c
0035b6: 65004e55     bcs.w      $840d
0035ba: 000048e7     ori.b      #$e7, d0
0035be: cfe0         muls.w     -(a0), d7
0035c0: 558f         subq.l     #$2, a7
0035c2: 7c00         moveq      #$0, d6
0035c4: 422f0001     clr.b      $1(a7)
0035c8: 24760170000003b4 movea.l    $3b4(a6, invalid.w), a2
0035d0: 41f6017000000384 lea.l      $384(a6, invalid.w), a0
0035d8: b1ca         cmpa.l     a2, a0
0035da: 67ff0000006c beq.l      $3648
0035e0: 082a0006001c btst.b     #$6, $1c(a2)
0035e6: 67ff00000060 beq.l      $3648
0035ec: 206a0008     movea.l    $8(a2), a0
0035f0: 2210         move.l     (a0), d1
0035f2: 2036017000000054 move.l     $54(a6, invalid.w), d0
0035fa: 61ff000002c6 bsr.l      $38c2
003600: 2800         move.l     d0, d4
003602: 66ff0000001a bne.l      $361e
003608: 022a00bf001c andi.b     #$bf, $1c(a2)
00360e: 200a         move.l     a2, d0
003610: 61ffffffdf98 bsr.l      $15aa
003616: 7c01         moveq      #$1, d6
003618: 60ff0000002e bra.l      $3648
00361e: 1f7c00010001 move.b     #$1, $1(a7)
003624: 4ab601700000077c tst.l      $77c(a6, invalid.w)
00362c: 67ff00000012 beq.l      $3640
003632: b8b601700000077c cmp.l      $77c(a6, invalid.w), d4
00363a: 64ff0000000c bcc.l      $3648
003640: 2d8401700000077c move.l     d4, $77c(a6, invalid.w)
003648: 41f601700000077c lea.l      $77c(a6, invalid.w), a0
003650: 2036017000000788 move.l     $788(a6, invalid.w), d0
003658: 2440         movea.l    d0, a2
00365a: b1c0         cmpa.l     d0, a0
00365c: 67ff000000f2 beq.l      $3750
003662: 7001         moveq      #$1, d0
003664: 61ffffffde80 bsr.l      $14e6
00366a: 3a00         move.w     d0, d5
00366c: 222a0020     move.l     $20(a2), d1
003670: 2036017000000054 move.l     $54(a6, invalid.w), d0
003678: 61ff00000248 bsr.l      $38c2
00367e: 2800         move.l     d0, d4
003680: 66ff00000096 bne.l      $3718
003686: 206a0010     movea.l    $10(a2), a0
00368a: 216a000c000c move.l     $c(a2), $c(a0)
003690: 206a000c     movea.l    $c(a2), a0
003694: 216a00100010 move.l     $10(a2), $10(a0)
00369a: 254a0010     move.l     a2, $10(a2)
00369e: 254a000c     move.l     a2, $c(a2)
0036a2: 7000         moveq      #$0, d0
0036a4: 3005         move.w     d5, d0
0036a6: 2200         move.l     d0, d1
0036a8: 7000         moveq      #$0, d0
0036aa: 61ffffffde60 bsr.l      $150c
0036b0: 4aaa001c     tst.l      $1c(a2)
0036b4: 66ff00000022 bne.l      $36d8
0036ba: 200a         move.l     a2, d0
0036bc: 61ffffffdd96 bsr.l      $1454
0036c2: 2236017000000050 move.l     $50(a6, invalid.w), d1
0036ca: 200a         move.l     a2, d0
0036cc: 61ffffffdd74 bsr.l      $1442
0036d2: 60ff0000003c bra.l      $3710
0036d8: 4fefff8c     lea.l      -$74(a7), a7
0036dc: 41d2         lea.l      (a2), a0
0036de: 43d7         lea.l      (a7), a1
0036e0: 701c         moveq      #$1c, d0
0036e2: 22d8         move.l     (a0)+, (a1)+
0036e4: 51c8fffc     dbra       d0, $36e2
0036e8: 41d7         lea.l      (a7), a0
0036ea: 2008         move.l     a0, d0
0036ec: 61ffffffdd66 bsr.l      $1454
0036f2: 202a001c     move.l     $1c(a2), d0
0036f6: d1aa0020     add.l      d0, $20(a2)
0036fa: 220a         move.l     a2, d1
0036fc: 41f601700000077c lea.l      $77c(a6, invalid.w), a0
003704: 2008         move.l     a0, d0
003706: 61ffffffddc4 bsr.l      $14cc
00370c: 4fef0074     lea.l      $74(a7), a7
003710: 7c01         moveq      #$1, d6
003712: 60ff0000003c bra.l      $3750
003718: 1f7c00010001 move.b     #$1, $1(a7)
00371e: 7000         moveq      #$0, d0
003720: 3005         move.w     d5, d0
003722: 2200         move.l     d0, d1
003724: 7000         moveq      #$0, d0
003726: 61ffffffdde4 bsr.l      $150c
00372c: 4ab601700000077c tst.l      $77c(a6, invalid.w)
003734: 67ff00000012 beq.l      $3748
00373a: b8b601700000077c cmp.l      $77c(a6, invalid.w), d4
003742: 64ff0000000c bcc.l      $3750
003748: 2d8401700000077c move.l     d4, $77c(a6, invalid.w)
003750: 41f6017000000774 lea.l      $774(a6, invalid.w), a0
003758: 2036017000000780 move.l     $780(a6, invalid.w), d0
003760: 2440         movea.l    d0, a2
003762: b1c0         cmpa.l     d0, a0
003764: 67ff000000fc beq.l      $3862
00376a: 598f         subq.l     #$4, a7
00376c: 7001         moveq      #$1, d0
00376e: 61ffffffdd76 bsr.l      $14e6
003774: 3a00         move.w     d0, d5
003776: 202a0024     move.l     $24(a2), d0
00377a: 90b6017000000030 sub.l      $30(a6, invalid.w), d0
003782: 2e00         move.l     d0, d7
003784: 4a87         tst.l      d7
003786: 6dff00000028 blt.l      $37b0
00378c: 4a87         tst.l      d7
00378e: 66ff0000006a bne.l      $37fa
003794: 203c00015180 move.l     #$15180, d0
00379a: 90b6017000000034 sub.l      $34(a6, invalid.w), d0
0037a2: 222a0020     move.l     $20(a2), d1
0037a6: 9280         sub.l      d0, d1
0037a8: 2e81         move.l     d1, (a7)
0037aa: 6eff0000004e bgt.l      $37fa
0037b0: 206a0010     movea.l    $10(a2), a0
0037b4: 216a000c000c move.l     $c(a2), $c(a0)
0037ba: 206a000c     movea.l    $c(a2), a0
0037be: 216a00100010 move.l     $10(a2), $10(a0)
0037c4: 254a0010     move.l     a2, $10(a2)
0037c8: 254a000c     move.l     a2, $c(a2)
0037cc: 7000         moveq      #$0, d0
0037ce: 3005         move.w     d5, d0
0037d0: 2200         move.l     d0, d1
0037d2: 7000         moveq      #$0, d0
0037d4: 61ffffffdd36 bsr.l      $150c
0037da: 200a         move.l     a2, d0
0037dc: 61ffffffdc76 bsr.l      $1454
0037e2: 2236017000000050 move.l     $50(a6, invalid.w), d1
0037ea: 200a         move.l     a2, d0
0037ec: 61ffffffdc54 bsr.l      $1442
0037f2: 7c01         moveq      #$1, d6
0037f4: 60ff0000006a bra.l      $3860
0037fa: 1f7c00010005 move.b     #$1, $5(a7)
003800: 7000         moveq      #$0, d0
003802: 3005         move.w     d5, d0
003804: 2200         move.l     d0, d1
003806: 7000         moveq      #$0, d0
003808: 61ffffffdd02 bsr.l      $150c
00380e: 4a87         tst.l      d7
003810: 6fff0000000a ble.l      $381c
003816: 069700015180 addi.l     #$15180, (a7)
00381c: 0c970000ffff cmpi.l     #$ffff, (a7)
003822: 6fff0000000a ble.l      $382e
003828: 2ebc0000ffff move.l     #$ffff, (a7)
00382e: 302f0002     move.w     $2(a7), d0
003832: c0f6017000000028 mulu.w     $28(a6, invalid.w), d0
00383a: 2800         move.l     d0, d4
00383c: 4ab601700000077c tst.l      $77c(a6, invalid.w)
003844: 67ff00000012 beq.l      $3858
00384a: b8b601700000077c cmp.l      $77c(a6, invalid.w), d4
003852: 64ff0000000c bcc.l      $3860
003858: 2d8401700000077c move.l     d4, $77c(a6, invalid.w)
003860: 588f         addq.l     #$4, a7
003862: 4a06         tst.b      d6
003864: 66fffffffd5c bne.l      $35c2
00386a: 7001         moveq      #$1, d0
00386c: 61ffffffdc78 bsr.l      $14e6
003872: 3a00         move.w     d0, d5
003874: 4ab601700000077c tst.l      $77c(a6, invalid.w)
00387c: 66ff0000000e bne.l      $388c
003882: 4a2f0001     tst.b      $1(a7)
003886: 66ff0000001a bne.l      $38a2
00388c: 2076017000000050 movea.l    $50(a6, invalid.w), a0
003894: 117c00200020 move.b     #$20, $20(a0)
00389a: 7000         moveq      #$0, d0
00389c: 61ffffffdcf8 bsr.l      $1596
0038a2: 7000         moveq      #$0, d0
0038a4: 3005         move.w     d5, d0
0038a6: 2200         move.l     d0, d1
0038a8: 7000         moveq      #$0, d0
0038aa: 61ffffffdc60 bsr.l      $150c
0038b0: 60fffffffd10 bra.l      $35c2
0038b6: 548f         addq.l     #$2, a7
0038b8: 4ced07f2ffe0 movem.l    -$20(a5), d1/d4-d7/a0-a2
0038be: 4e5d         unlk       a5
0038c0: 4e75         rts        
0038c2: 4e550000     link.w     a5, #$0
0038c6: 48e7ce00     movem.l    d0-d1/d4-d6, -(a7)
0038ca: 2800         move.l     d0, d4
0038cc: 2a01         move.l     d1, d5
0038ce: b885         cmp.l      d5, d4
0038d0: 65ff00000026 bcs.l      $38f8
0038d6: 2004         move.l     d4, d0
0038d8: 9085         sub.l      d5, d0
0038da: 2c00         move.l     d0, d6
0038dc: 0c800fffffff cmpi.l     #$fffffff, d0
0038e2: 63ff0000000e bls.l      $38f2
0038e8: 2006         move.l     d6, d0
0038ea: 4480         neg.l      d0
0038ec: 60ff0000002e bra.l      $391c
0038f2: 60ff0000001e bra.l      $3912
0038f8: 2005         move.l     d5, d0
0038fa: 9084         sub.l      d4, d0
0038fc: 2c00         move.l     d0, d6
0038fe: 0c800fffffff cmpi.l     #$fffffff, d0
003904: 64ff0000000c bcc.l      $3912
00390a: 2006         move.l     d6, d0
00390c: 60ff0000000e bra.l      $391c
003912: 7000         moveq      #$0, d0
003914: 60ff00000006 bra.l      $391c
00391a: 4e71         nop        
00391c: 4ced0070fff4 movem.l    -$c(a5), d4-d6
003922: 4e5d         unlk       a5
003924: 4e75         rts        
003926: 4e550000     link.w     a5, #$0
00392a: 48e7ce38     movem.l    d0-d1/d4-d6/a2-a4, -(a7)
00392e: 2800         move.l     d0, d4
003930: 2a01         move.l     d1, d5
003932: 246f0028     movea.l    $28(a7), a2
003936: 2c2f002c     move.l     $2c(a7), d6
00393a: 2006         move.l     d6, d0
00393c: 61ffffffdba8 bsr.l      $14e6
003942: 2c00         move.l     d0, d6
003944: 4aaa0008     tst.l      $8(a2)
003948: 66ff0000000c bne.l      $3956
00394e: 254a000c     move.l     a2, $c(a2)
003952: 254a0008     move.l     a2, $8(a2)
003956: 266a0008     movea.l    $8(a2), a3
00395a: 60ff00000060 bra.l      $39bc
003960: ba6b0026     cmp.w      $26(a3), d5
003964: 67ff00000016 beq.l      $397c
00396a: 4a45         tst.w      d5
00396c: 66ff0000004a bne.l      $39b8
003972: 4a6b0028     tst.w      $28(a3)
003976: 67ff00000040 beq.l      $39b8
00397c: b8ab0020     cmp.l      $20(a3), d4
003980: 62ff00000036 bhi.l      $39b8
003986: 286b0010     movea.l    $10(a3), a4
00398a: 200c         move.l     a4, d0
00398c: 67ff0000002a beq.l      $39b8
003992: 60ff00000014 bra.l      $39a8
003998: b8ac0008     cmp.l      $8(a4), d4
00399c: 64ff00000008 bcc.l      $39a6
0039a2: 282c0008     move.l     $8(a4), d4
0039a6: 2854         movea.l    (a4), a4
0039a8: 7010         moveq      #$10, d0
0039aa: d08b         add.l      a3, d0
0039ac: 7200         moveq      #$0, d1
0039ae: 9081         sub.l      d1, d0
0039b0: b08c         cmp.l      a4, d0
0039b2: 66ffffffffe4 bne.l      $3998
0039b8: 266b0008     movea.l    $8(a3), a3
0039bc: b7ca         cmpa.l     a2, a3
0039be: 66ffffffffa0 bne.l      $3960
0039c4: 2206         move.l     d6, d1
0039c6: 2004         move.l     d4, d0
0039c8: 61ffffffdb42 bsr.l      $150c
0039ce: 60ff00000006 bra.l      $39d6
0039d4: 4e71         nop        
0039d6: 4ced1c70ffe8 movem.l    -$18(a5), d4-d6/a2-a4
0039dc: 4e5d         unlk       a5
0039de: 4e75         rts        
0039e0: 4e550000     link.w     a5, #$0
0039e4: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
0039e8: 2441         movea.l    d1, a2
0039ea: 4852         pea.l      (a2)
0039ec: 7200         moveq      #$0, d1
0039ee: 41ef0004     lea.l      $4(a7), a0
0039f2: 2008         move.l     a0, d0
0039f4: 61ff00000036 bsr.l      $3a2c
0039fa: 588f         addq.l     #$4, a7
0039fc: 2800         move.l     d0, d4
0039fe: 4a84         tst.l      d4
003a00: 66ff00000016 bne.l      $3a18
003a06: 42a7         clr.l      -(a7)
003a08: 2212         move.l     (a2), d1
003a0a: 202f0004     move.l     $4(a7), d0
003a0e: 61ffffffda96 bsr.l      $14a6
003a14: 588f         addq.l     #$4, a7
003a16: 6002         bra.b      $3a1a
003a18: 2004         move.l     d4, d0
003a1a: 60ff00000006 bra.l      $3a22
003a20: 4e71         nop        
003a22: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
003a28: 4e5d         unlk       a5
003a2a: 4e75         rts        
003a2c: 4e550000     link.w     a5, #$0
003a30: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
003a34: 2440         movea.l    d0, a2
003a36: 2801         move.l     d1, d4
003a38: 266f0028     movea.l    $28(a7), a3
003a3c: 598f         subq.l     #$4, a7
003a3e: 70ff         moveq      #$ff, d0
003a40: b092         cmp.l      (a2), d0
003a42: 66ff00000022 bne.l      $3a66
003a48: 48780001     pea.l      $1.w
003a4c: 48760170000003fc pea.l      $3fc(a6, invalid.w)
003a54: 7000         moveq      #$0, d0
003a56: 3004         move.w     d4, d0
003a58: 2200         move.l     d0, d1
003a5a: 7001         moveq      #$1, d0
003a5c: 61fffffffec8 bsr.l      $3926
003a62: 508f         addq.l     #$8, a7
003a64: 2480         move.l     d0, (a2)
003a66: 2012         move.l     (a2), d0
003a68: d0b6017000000070 add.l      $70(a6, invalid.w), d0
003a70: 5380         subq.l     #$1, d0
003a72: 2236017000000070 move.l     $70(a6, invalid.w), d1
003a7a: 4481         neg.l      d1
003a7c: c081         and.l      d1, d0
003a7e: 2480         move.l     d0, (a2)
003a80: 66ff00000010 bne.l      $3a92
003a86: 2a3c000000e1 move.l     #$e1, d5
003a8c: 60ff000000f0 bra.l      $3b7e
003a92: 48780001     pea.l      $1.w
003a96: 2076017000000050 movea.l    $50(a6, invalid.w), a0
003a9e: 48680390     pea.l      $390(a0)
003aa2: 4853         pea.l      (a3)
003aa4: 7000         moveq      #$0, d0
003aa6: 3004         move.w     d4, d0
003aa8: 2200         move.l     d0, d1
003aaa: 2012         move.l     (a2), d0
003aac: 61ff000001f6 bsr.l      $3ca4
003ab2: 4fef000c     lea.l      $c(a7), a7
003ab6: 2a00         move.l     d0, d5
003ab8: 0c80000000ed cmpi.l     #$ed, d0
003abe: 66ff000000be bne.l      $3b7e
003ac4: 2012         move.l     (a2), d0
003ac6: d0b601700000007c add.l      $7c(a6, invalid.w), d0
003ace: 5380         subq.l     #$1, d0
003ad0: 223601700000007c move.l     $7c(a6, invalid.w), d1
003ad8: 4481         neg.l      d1
003ada: c081         and.l      d1, d0
003adc: 2e80         move.l     d0, (a7)
003ade: 48780001     pea.l      $1.w
003ae2: 48760170000003fc pea.l      $3fc(a6, invalid.w)
003aea: 4853         pea.l      (a3)
003aec: 7000         moveq      #$0, d0
003aee: 3004         move.w     d4, d0
003af0: 2200         move.l     d0, d1
003af2: 202f000c     move.l     $c(a7), d0
003af6: 61ff000001ac bsr.l      $3ca4
003afc: 4fef000c     lea.l      $c(a7), a7
003b00: 2a00         move.l     d0, d5
003b02: 0c85000000ed cmpi.l     #$ed, d5
003b08: 66ff00000012 bne.l      $3b1c
003b0e: 61ff00001484 bsr.l      $4f94
003b14: 4a80         tst.l      d0
003b16: 67ffffffffc6 beq.l      $3ade
003b1c: 4a85         tst.l      d5
003b1e: 66ff0000005e bne.l      $3b7e
003b24: 2076017000000050 movea.l    $50(a6, invalid.w), a0
003b2c: 48680390     pea.l      $390(a0)
003b30: 222f0004     move.l     $4(a7), d1
003b34: 2013         move.l     (a3), d0
003b36: 61ff00000090 bsr.l      $3bc8
003b3c: 588f         addq.l     #$4, a7
003b3e: 2e80         move.l     d0, (a7)
003b40: b092         cmp.l      (a2), d0
003b42: 63ff0000003a bls.l      $3b7e
003b48: 2012         move.l     (a2), d0
003b4a: 9197         sub.l      d0, (a7)
003b4c: 2013         move.l     (a3), d0
003b4e: d097         add.l      (a7), d0
003b50: 2840         movea.l    d0, a4
003b52: 48780001     pea.l      $1.w
003b56: 2f36017000000070 move.l     $70(a6, invalid.w), -(a7)
003b5e: 2076017000000050 movea.l    $50(a6, invalid.w), a0
003b66: 48680390     pea.l      $390(a0)
003b6a: 41ef000c     lea.l      $c(a7), a0
003b6e: 2208         move.l     a0, d1
003b70: 200b         move.l     a3, d0
003b72: 61ff00000be2 bsr.l      $4756
003b78: 4fef000c     lea.l      $c(a7), a7
003b7c: 268c         move.l     a4, (a3)
003b7e: 4a85         tst.l      d5
003b80: 67ff0000000e beq.l      $3b90
003b86: 4292         clr.l      (a2)
003b88: 4293         clr.l      (a3)
003b8a: 60ff00000026 bra.l      $3bb2
003b90: 0836000401700000002e btst.b     #$4, $2e(a6, invalid.w)
003b9a: 67ff00000016 beq.l      $3bb2
003ba0: 2f3ca110ca7d move.l     #$a110ca7d, -(a7)
003ba6: 2213         move.l     (a3), d1
003ba8: 2012         move.l     (a2), d0
003baa: 61ffffffd8fa bsr.l      $14a6
003bb0: 588f         addq.l     #$4, a7
003bb2: 2005         move.l     d5, d0
003bb4: 588f         addq.l     #$4, a7
003bb6: 60ff00000006 bra.l      $3bbe
003bbc: 4e71         nop        
003bbe: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
003bc4: 4e5d         unlk       a5
003bc6: 4e75         rts        
003bc8: 4e550000     link.w     a5, #$0
003bcc: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
003bd0: 2440         movea.l    d0, a2
003bd2: 2801         move.l     d1, d4
003bd4: 206f0030     movea.l    $30(a7), a0
003bd8: 26680008     movea.l    $8(a0), a3
003bdc: 200b         move.l     a3, d0
003bde: 67ff000000b0 beq.l      $3c90
003be4: 7001         moveq      #$1, d0
003be6: 61ffffffd8fe bsr.l      $14e6
003bec: 2e00         move.l     d0, d7
003bee: 60ff00000008 bra.l      $3bf8
003bf4: 266b0008     movea.l    $8(a3), a3
003bf8: b7ef0030     cmpa.l     $30(a7), a3
003bfc: 67ff00000016 beq.l      $3c14
003c02: b5d3         cmpa.l     (a3), a2
003c04: 65ffffffffee bcs.l      $3bf4
003c0a: b5eb0004     cmpa.l     $4(a3), a2
003c0e: 64ffffffffe4 bcc.l      $3bf4
003c14: b7ef0030     cmpa.l     $30(a7), a3
003c18: 67ff0000006c beq.l      $3c86
003c1e: 200a         move.l     a2, d0
003c20: d084         add.l      d4, d0
003c22: 2c00         move.l     d0, d6
003c24: 7010         moveq      #$10, d0
003c26: d08b         add.l      a3, d0
003c28: 7200         moveq      #$0, d1
003c2a: 9081         sub.l      d1, d0
003c2c: 2a00         move.l     d0, d5
003c2e: 2045         movea.l    d5, a0
003c30: 28680004     movea.l    $4(a0), a4
003c34: 200c         move.l     a4, d0
003c36: 67ff0000004e beq.l      $3c86
003c3c: 60ff00000008 bra.l      $3c46
003c42: 286c0004     movea.l    $4(a4), a4
003c46: b9c6         cmpa.l     d6, a4
003c48: 63ff0000000c bls.l      $3c56
003c4e: b9c5         cmpa.l     d5, a4
003c50: 66fffffffff0 bne.l      $3c42
003c56: b9c6         cmpa.l     d6, a4
003c58: 66ff0000002c bne.l      $3c86
003c5e: 2054         movea.l    (a4), a0
003c60: 216c00040004 move.l     $4(a4), $4(a0)
003c66: 206c0004     movea.l    $4(a4), a0
003c6a: 2094         move.l     (a4), (a0)
003c6c: d8ac0008     add.l      $8(a4), d4
003c70: 4878ffff     pea.l      $ffff.w
003c74: 2f2f0034     move.l     $34(a7), -(a7)
003c78: 220b         move.l     a3, d1
003c7a: 202c0008     move.l     $8(a4), d0
003c7e: 61ff00000836 bsr.l      $44b6
003c84: 508f         addq.l     #$8, a7
003c86: 2207         move.l     d7, d1
003c88: 7000         moveq      #$0, d0
003c8a: 61ffffffd880 bsr.l      $150c
003c90: 2004         move.l     d4, d0
003c92: 60ff00000006 bra.l      $3c9a
003c98: 4e71         nop        
003c9a: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
003ca0: 4e5d         unlk       a5
003ca2: 4e75         rts        
003ca4: 4e550000     link.w     a5, #$0
003ca8: 48e7cff8     movem.l    d0-d1/d4-d7/a0-a4, -(a7)
003cac: 2800         move.l     d0, d4
003cae: 2a01         move.l     d1, d5
003cb0: 246f0034     movea.l    $34(a7), a2
003cb4: 266f0038     movea.l    $38(a7), a3
003cb8: 2c2f003c     move.l     $3c(a7), d6
003cbc: 4feffff4     lea.l      -$c(a7), a7
003cc0: 4292         clr.l      (a2)
003cc2: 2006         move.l     d6, d0
003cc4: 61ffffffd820 bsr.l      $14e6
003cca: 2c00         move.l     d0, d6
003ccc: 4a84         tst.l      d4
003cce: 66ff0000000c bne.l      $3cdc
003cd4: 203c000000e1 move.l     #$e1, d0
003cda: 6014         bra.b      $3cf0
003cdc: 4aab0008     tst.l      $8(a3)
003ce0: 66ff0000000c bne.l      $3cee
003ce6: 203c000000ed move.l     #$ed, d0
003cec: 6002         bra.b      $3cf0
003cee: 7000         moveq      #$0, d0
003cf0: 2f400004     move.l     d0, $4(a7)
003cf4: 284b         movea.l    a3, a4
003cf6: 60ff0000012e bra.l      $3e26
003cfc: 286c0008     movea.l    $8(a4), a4
003d00: b9cb         cmpa.l     a3, a4
003d02: 66ff00000012 bne.l      $3d16
003d08: 2f7c000000ed0004 move.l     #$ed, $4(a7)
003d10: 60ff00000114 bra.l      $3e26
003d16: ba6c0026     cmp.w      $26(a4), d5
003d1a: 67ff00000016 beq.l      $3d32
003d20: 4a45         tst.w      d5
003d22: 66ff00000102 bne.l      $3e26
003d28: 4a6c0028     tst.w      $28(a4)
003d2c: 67ff000000f8 beq.l      $3e26
003d32: b8ac0020     cmp.l      $20(a4), d4
003d36: 62ff000000ee bhi.l      $3e26
003d3c: 7010         moveq      #$10, d0
003d3e: d08c         add.l      a4, d0
003d40: 7200         moveq      #$0, d1
003d42: 9081         sub.l      d1, d0
003d44: 2f400008     move.l     d0, $8(a7)
003d48: 206f0008     movea.l    $8(a7), a0
003d4c: 2e280004     move.l     $4(a0), d7
003d50: 60ff000000bc bra.l      $3e0e
003d56: 2047         movea.l    d7, a0
003d58: 202f0008     move.l     $8(a7), d0
003d5c: b090         cmp.l      (a0), d0
003d5e: 67ff00000018 beq.l      $3d78
003d64: 2f7c000000ab0004 move.l     #$ab, $4(a7)
003d6c: 60ff000000b8 bra.l      $3e26
003d72: 60ff00000090 bra.l      $3e04
003d78: 7010         moveq      #$10, d0
003d7a: d08c         add.l      a4, d0
003d7c: 7200         moveq      #$0, d1
003d7e: 9081         sub.l      d1, d0
003d80: b0af0008     cmp.l      $8(a7), d0
003d84: 67ff0000002a beq.l      $3db0
003d8a: 2047         movea.l    d7, a0
003d8c: 20280008     move.l     $8(a0), d0
003d90: d087         add.l      d7, d0
003d92: b0af0008     cmp.l      $8(a7), d0
003d96: 65ff00000018 bcs.l      $3db0
003d9c: 2f7c000000ab0004 move.l     #$ab, $4(a7)
003da4: 60ff00000080 bra.l      $3e26
003daa: 60ff00000058 bra.l      $3e04
003db0: 2047         movea.l    d7, a0
003db2: 20280008     move.l     $8(a0), d0
003db6: 9084         sub.l      d4, d0
003db8: 2e80         move.l     d0, (a7)
003dba: 6dff00000048 blt.l      $3e04
003dc0: 4878ffff     pea.l      $ffff.w
003dc4: 4853         pea.l      (a3)
003dc6: 220c         move.l     a4, d1
003dc8: 2004         move.l     d4, d0
003dca: 61ff000006ea bsr.l      $44b6
003dd0: 508f         addq.l     #$8, a7
003dd2: 4a97         tst.l      (a7)
003dd4: 66ff00000022 bne.l      $3df8
003dda: 2047         movea.l    d7, a0
003ddc: 2247         movea.l    d7, a1
003dde: 22690004     movea.l    $4(a1), a1
003de2: 2290         move.l     (a0), (a1)
003de4: 2047         movea.l    d7, a0
003de6: 2247         movea.l    d7, a1
003de8: 2251         movea.l    (a1), a1
003dea: 236800040004 move.l     $4(a0), $4(a1)
003df0: 2487         move.l     d7, (a2)
003df2: 60ff00000010 bra.l      $3e04
003df8: 2047         movea.l    d7, a0
003dfa: 21570008     move.l     (a7), $8(a0)
003dfe: 2007         move.l     d7, d0
003e00: d097         add.l      (a7), d0
003e02: 2480         move.l     d0, (a2)
003e04: 2f470008     move.l     d7, $8(a7)
003e08: 2047         movea.l    d7, a0
003e0a: 2e280004     move.l     $4(a0), d7
003e0e: 7010         moveq      #$10, d0
003e10: d08c         add.l      a4, d0
003e12: 7200         moveq      #$0, d1
003e14: 9081         sub.l      d1, d0
003e16: b087         cmp.l      d7, d0
003e18: 67ff0000000c beq.l      $3e26
003e1e: 4a92         tst.l      (a2)
003e20: 67ffffffff34 beq.l      $3d56
003e26: 4a92         tst.l      (a2)
003e28: 66ff0000000e bne.l      $3e38
003e2e: 4aaf0004     tst.l      $4(a7)
003e32: 67fffffffec8 beq.l      $3cfc
003e38: 2206         move.l     d6, d1
003e3a: 202f0004     move.l     $4(a7), d0
003e3e: 61ffffffd6cc bsr.l      $150c
003e44: 4fef000c     lea.l      $c(a7), a7
003e48: 60ff00000006 bra.l      $3e50
003e4e: 4e71         nop        
003e50: 4ced1ff0ffdc movem.l    -$24(a5), d4-d7/a0-a4
003e56: 4e5d         unlk       a5
003e58: 4e75         rts        
003e5a: 4e550000     link.w     a5, #$0
003e5e: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
003e62: 2440         movea.l    d0, a2
003e64: 2801         move.l     d1, d4
003e66: 266f0028     movea.l    $28(a7), a3
003e6a: 598f         subq.l     #$4, a7
003e6c: 2a12         move.l     (a2), d5
003e6e: 70ff         moveq      #$ff, d0
003e70: b085         cmp.l      d5, d0
003e72: 66ff00000042 bne.l      $3eb6
003e78: 42a7         clr.l      -(a7)
003e7a: 207601700000004c movea.l    $4c(a6, invalid.w), a0
003e82: 48680390     pea.l      $390(a0)
003e86: 7000         moveq      #$0, d0
003e88: 3004         move.w     d4, d0
003e8a: 2200         move.l     d0, d1
003e8c: 7001         moveq      #$1, d0
003e8e: 61fffffffa96 bsr.l      $3926
003e94: 508f         addq.l     #$8, a7
003e96: 2a00         move.l     d0, d5
003e98: 48780001     pea.l      $1.w
003e9c: 48760170000003fc pea.l      $3fc(a6, invalid.w)
003ea4: 7000         moveq      #$0, d0
003ea6: 3004         move.w     d4, d0
003ea8: 2200         move.l     d0, d1
003eaa: 2005         move.l     d5, d0
003eac: 61fffffffa78 bsr.l      $3926
003eb2: 508f         addq.l     #$8, a7
003eb4: 2a00         move.l     d0, d5
003eb6: 2005         move.l     d5, d0
003eb8: d0b6017000000070 add.l      $70(a6, invalid.w), d0
003ec0: 5380         subq.l     #$1, d0
003ec2: 2236017000000070 move.l     $70(a6, invalid.w), d1
003eca: 4481         neg.l      d1
003ecc: c081         and.l      d1, d0
003ece: 2a00         move.l     d0, d5
003ed0: 66ff00000014 bne.l      $3ee6
003ed6: 4293         clr.l      (a3)
003ed8: 203c000000e1 move.l     #$e1, d0
003ede: 588f         addq.l     #$4, a7
003ee0: 60ff000001ae bra.l      $4090
003ee6: 42a7         clr.l      -(a7)
003ee8: 207601700000004c movea.l    $4c(a6, invalid.w), a0
003ef0: 48680390     pea.l      $390(a0)
003ef4: 4853         pea.l      (a3)
003ef6: 7000         moveq      #$0, d0
003ef8: 3004         move.w     d4, d0
003efa: 2200         move.l     d0, d1
003efc: 2005         move.l     d5, d0
003efe: 61fffffffda4 bsr.l      $3ca4
003f04: 4fef000c     lea.l      $c(a7), a7
003f08: 2c00         move.l     d0, d6
003f0a: 66ff00000032 bne.l      $3f3e
003f10: 2485         move.l     d5, (a2)
003f12: 0836000401700000002e btst.b     #$4, $2e(a6, invalid.w)
003f1c: 67ff00000016 beq.l      $3f34
003f22: 2f3ca110ca7d move.l     #$a110ca7d, -(a7)
003f28: 2213         move.l     (a3), d1
003f2a: 2005         move.l     d5, d0
003f2c: 61ffffffd578 bsr.l      $14a6
003f32: 588f         addq.l     #$4, a7
003f34: 7000         moveq      #$0, d0
003f36: 588f         addq.l     #$4, a7
003f38: 60ff00000156 bra.l      $4090
003f3e: 0c86000000ed cmpi.l     #$ed, d6
003f44: 66ff0000013a bne.l      $4080
003f4a: 2005         move.l     d5, d0
003f4c: d0b601700000007c add.l      $7c(a6, invalid.w), d0
003f54: 5380         subq.l     #$1, d0
003f56: 223601700000007c move.l     $7c(a6, invalid.w), d1
003f5e: 4481         neg.l      d1
003f60: c081         and.l      d1, d0
003f62: 2e80         move.l     d0, (a7)
003f64: 48780001     pea.l      $1.w
003f68: 48760170000003fc pea.l      $3fc(a6, invalid.w)
003f70: 4853         pea.l      (a3)
003f72: 7000         moveq      #$0, d0
003f74: 3004         move.w     d4, d0
003f76: 2200         move.l     d0, d1
003f78: 202f000c     move.l     $c(a7), d0
003f7c: 61fffffffd26 bsr.l      $3ca4
003f82: 4fef000c     lea.l      $c(a7), a7
003f86: 2c00         move.l     d0, d6
003f88: 0c86000000ed cmpi.l     #$ed, d6
003f8e: 66ff00000012 bne.l      $3fa2
003f94: 61ff00000ffe bsr.l      $4f94
003f9a: 4a80         tst.l      d0
003f9c: 67ffffffffc6 beq.l      $3f64
003fa2: 4a86         tst.l      d6
003fa4: 66ff000000da bne.l      $4080
003faa: 2217         move.l     (a7), d1
003fac: 2013         move.l     (a3), d0
003fae: 61ff000000ea bsr.l      $409a
003fb4: 2c00         move.l     d0, d6
003fb6: 66ff000000c8 bne.l      $4080
003fbc: 203601700000007c move.l     $7c(a6, invalid.w), d0
003fc4: b0b6017000000070 cmp.l      $70(a6, invalid.w), d0
003fcc: 66ff00000032 bne.l      $4000
003fd2: 2485         move.l     d5, (a2)
003fd4: 0836000401700000002e btst.b     #$4, $2e(a6, invalid.w)
003fde: 67ff00000016 beq.l      $3ff6
003fe4: 2f3ca110ca7d move.l     #$a110ca7d, -(a7)
003fea: 2213         move.l     (a3), d1
003fec: 2005         move.l     d5, d0
003fee: 61ffffffd4b6 bsr.l      $14a6
003ff4: 588f         addq.l     #$4, a7
003ff6: 7000         moveq      #$0, d0
003ff8: 588f         addq.l     #$4, a7
003ffa: 60ff00000094 bra.l      $4090
004000: 42a7         clr.l      -(a7)
004002: 2f36017000000070 move.l     $70(a6, invalid.w), -(a7)
00400a: 207601700000004c movea.l    $4c(a6, invalid.w), a0
004012: 48680390     pea.l      $390(a0)
004016: 41ef000c     lea.l      $c(a7), a0
00401a: 2208         move.l     a0, d1
00401c: 200b         move.l     a3, d0
00401e: 61ff00000736 bsr.l      $4756
004024: 4fef000c     lea.l      $c(a7), a7
004028: 42a7         clr.l      -(a7)
00402a: 207601700000004c movea.l    $4c(a6, invalid.w), a0
004032: 48680390     pea.l      $390(a0)
004036: 4853         pea.l      (a3)
004038: 7000         moveq      #$0, d0
00403a: 3004         move.w     d4, d0
00403c: 2200         move.l     d0, d1
00403e: 2005         move.l     d5, d0
004040: 61fffffffc62 bsr.l      $3ca4
004046: 4fef000c     lea.l      $c(a7), a7
00404a: 2c00         move.l     d0, d6
00404c: 66ff00000032 bne.l      $4080
004052: 2485         move.l     d5, (a2)
004054: 0836000401700000002e btst.b     #$4, $2e(a6, invalid.w)
00405e: 67ff00000016 beq.l      $4076
004064: 2f3ca110ca7d move.l     #$a110ca7d, -(a7)
00406a: 2213         move.l     (a3), d1
00406c: 2005         move.l     d5, d0
00406e: 61ffffffd436 bsr.l      $14a6
004074: 588f         addq.l     #$4, a7
004076: 7000         moveq      #$0, d0
004078: 588f         addq.l     #$4, a7
00407a: 60ff00000014 bra.l      $4090
004080: 4293         clr.l      (a3)
004082: 4292         clr.l      (a2)
004084: 2006         move.l     d6, d0
004086: 588f         addq.l     #$4, a7
004088: 60ff00000006 bra.l      $4090
00408e: 4e71         nop        
004090: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
004096: 4e5d         unlk       a5
004098: 4e75         rts        
00409a: 4e550000     link.w     a5, #$0
00409e: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
0040a2: 2440         movea.l    d0, a2
0040a4: 2801         move.l     d1, d4
0040a6: 598f         subq.l     #$4, a7
0040a8: 203c000001a8 move.l     #$1a8, d0
0040ae: d0b601700000004c add.l      $4c(a6, invalid.w), d0
0040b6: 2a00         move.l     d0, d5
0040b8: 707c         moveq      #$7c, d0
0040ba: d085         add.l      d5, d0
0040bc: 2c00         move.l     d0, d6
0040be: 200a         move.l     a2, d0
0040c0: d084         add.l      d4, d0
0040c2: 2e00         move.l     d0, d7
0040c4: 2645         movea.l    d5, a3
0040c6: 60ff00000050 bra.l      $4118
0040cc: b7c6         cmpa.l     d6, a3
0040ce: 65ff00000046 bcs.l      $4116
0040d4: 518f         subq.l     #$8, a7
0040d6: 2f4a0004     move.l     a2, $4(a7)
0040da: 2e84         move.l     d4, (a7)
0040dc: 48780001     pea.l      $1.w
0040e0: 2f3601700000007c move.l     $7c(a6, invalid.w), -(a7)
0040e8: 48760170000003fc pea.l      $3fc(a6, invalid.w)
0040f0: 41ef000c     lea.l      $c(a7), a0
0040f4: 2208         move.l     a0, d1
0040f6: 41ef0010     lea.l      $10(a7), a0
0040fa: 2008         move.l     a0, d0
0040fc: 61ff00000658 bsr.l      $4756
004102: 4fef000c     lea.l      $c(a7), a7
004106: 203c000000cf move.l     #$cf, d0
00410c: 4fef000c     lea.l      $c(a7), a7
004110: 60ff00000152 bra.l      $4264
004116: 588b         addq.l     #$4, a3
004118: 4a93         tst.l      (a3)
00411a: 67ff0000000c beq.l      $4128
004120: be93         cmp.l      (a3), d7
004122: 62ffffffffa8 bhi.l      $40cc
004128: be93         cmp.l      (a3), d7
00412a: 598b         subq.l     #$4, a3
00412c: 66ff0000005c bne.l      $418a
004132: 274a0004     move.l     a2, $4(a3)
004136: d9ab0084     add.l      d4, $84(a3)
00413a: b7c5         cmpa.l     d5, a3
00413c: 65ff00000046 bcs.l      $4184
004142: 2013         move.l     (a3), d0
004144: d0ab0080     add.l      $80(a3), d0
004148: b08a         cmp.l      a2, d0
00414a: 66ff00000038 bne.l      $4184
004150: 202b0084     move.l     $84(a3), d0
004154: d1ab0080     add.l      d0, $80(a3)
004158: 588b         addq.l     #$4, a3
00415a: 60ff00000010 bra.l      $416c
004160: 26ab0004     move.l     $4(a3), (a3)
004164: 276b00840080 move.l     $84(a3), $80(a3)
00416a: 588b         addq.l     #$4, a3
00416c: b7c6         cmpa.l     d6, a3
00416e: 64ff0000000e bcc.l      $417e
004174: 4aab0004     tst.l      $4(a3)
004178: 66ffffffffe6 bne.l      $4160
00417e: 4293         clr.l      (a3)
004180: 42ab0080     clr.l      $80(a3)
004184: 60ff000000a4 bra.l      $422a
00418a: b7c5         cmpa.l     d5, a3
00418c: 65ff0000001c bcs.l      $41aa
004192: 2013         move.l     (a3), d0
004194: d0ab0080     add.l      $80(a3), d0
004198: b08a         cmp.l      a2, d0
00419a: 66ff0000000e bne.l      $41aa
0041a0: d9ab0080     add.l      d4, $80(a3)
0041a4: 60ff00000084 bra.l      $422a
0041aa: 2046         movea.l    d6, a0
0041ac: 4a90         tst.l      (a0)
0041ae: 67ff00000046 beq.l      $41f6
0041b4: 518f         subq.l     #$8, a7
0041b6: 2f4a0004     move.l     a2, $4(a7)
0041ba: 2e84         move.l     d4, (a7)
0041bc: 48780001     pea.l      $1.w
0041c0: 2f3601700000007c move.l     $7c(a6, invalid.w), -(a7)
0041c8: 48760170000003fc pea.l      $3fc(a6, invalid.w)
0041d0: 41ef000c     lea.l      $c(a7), a0
0041d4: 2208         move.l     a0, d1
0041d6: 41ef0010     lea.l      $10(a7), a0
0041da: 2008         move.l     a0, d0
0041dc: 61ff00000578 bsr.l      $4756
0041e2: 4fef000c     lea.l      $c(a7), a7
0041e6: 203c000000cf move.l     #$cf, d0
0041ec: 4fef000c     lea.l      $c(a7), a7
0041f0: 60ff00000072 bra.l      $4264
0041f6: 588b         addq.l     #$4, a3
0041f8: 284b         movea.l    a3, a4
0041fa: 60ff00000006 bra.l      $4202
004200: 588c         addq.l     #$4, a4
004202: 4a94         tst.l      (a4)
004204: 66fffffffffa bne.l      $4200
00420a: 60ff00000010 bra.l      $421c
004210: 28acfffc     move.l     -$4(a4), (a4)
004214: 296c007c0080 move.l     $7c(a4), $80(a4)
00421a: 598c         subq.l     #$4, a4
00421c: b9cb         cmpa.l     a3, a4
00421e: 62fffffffff0 bhi.l      $4210
004224: 268a         move.l     a2, (a3)
004226: 27440080     move.l     d4, $80(a3)
00422a: 48780003     pea.l      $3.w
00422e: 2204         move.l     d4, d1
004230: 200a         move.l     a2, d0
004232: 61ffffffd426 bsr.l      $165a
004238: 588f         addq.l     #$4, a7
00423a: 2e80         move.l     d0, (a7)
00423c: 67ff0000001a beq.l      $4258
004242: 0c97000000d0 cmpi.l     #$d0, (a7)
004248: 67ff0000000e beq.l      $4258
00424e: 2017         move.l     (a7), d0
004250: 588f         addq.l     #$4, a7
004252: 60ff00000010 bra.l      $4264
004258: 7000         moveq      #$0, d0
00425a: 588f         addq.l     #$4, a7
00425c: 60ff00000006 bra.l      $4264
004262: 4e71         nop        
004264: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
00426a: 4e5d         unlk       a5
00426c: 4e75         rts        
00426e: 4e550000     link.w     a5, #$0
004272: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
004276: 598f         subq.l     #$4, a7
004278: 48780001     pea.l      $1.w
00427c: 2f3601700000007c move.l     $7c(a6, invalid.w), -(a7)
004284: 48760170000003fc pea.l      $3fc(a6, invalid.w)
00428c: 41ef0010     lea.l      $10(a7), a0
004290: 2208         move.l     a0, d1
004292: 41ef0014     lea.l      $14(a7), a0
004296: 2008         move.l     a0, d0
004298: 61ff000004bc bsr.l      $4756
00429e: 4fef000c     lea.l      $c(a7), a7
0042a2: 2a00         move.l     d0, d5
0042a4: 0c80000000db cmpi.l     #$db, d0
0042aa: 67ff0000000e beq.l      $42ba
0042b0: 2005         move.l     d5, d0
0042b2: 588f         addq.l     #$4, a7
0042b4: 60ff000001f6 bra.l      $44ac
0042ba: 202f0004     move.l     $4(a7), d0
0042be: d0b6017000000070 add.l      $70(a6, invalid.w), d0
0042c6: 5380         subq.l     #$1, d0
0042c8: 2236017000000070 move.l     $70(a6, invalid.w), d1
0042d0: 4481         neg.l      d1
0042d2: c081         and.l      d1, d0
0042d4: 2f400004     move.l     d0, $4(a7)
0042d8: 7001         moveq      #$1, d0
0042da: 61ffffffd20a bsr.l      $14e6
0042e0: 2c00         move.l     d0, d6
0042e2: 48780001     pea.l      $1.w
0042e6: 2f36017000000070 move.l     $70(a6, invalid.w), -(a7)
0042ee: 2076017000000050 movea.l    $50(a6, invalid.w), a0
0042f6: 48680390     pea.l      $390(a0)
0042fa: 41ef0010     lea.l      $10(a7), a0
0042fe: 2208         move.l     a0, d1
004300: 41ef0014     lea.l      $14(a7), a0
004304: 2008         move.l     a0, d0
004306: 61ff0000044e bsr.l      $4756
00430c: 4fef000c     lea.l      $c(a7), a7
004310: 2a00         move.l     d0, d5
004312: 67ff00000016 beq.l      $432a
004318: 2206         move.l     d6, d1
00431a: 2005         move.l     d5, d0
00431c: 61ffffffd1ee bsr.l      $150c
004322: 588f         addq.l     #$4, a7
004324: 60ff00000186 bra.l      $44ac
00432a: 202f0004     move.l     $4(a7), d0
00432e: b0b601700000007c cmp.l      $7c(a6, invalid.w), d0
004336: 65ff00000160 bcs.l      $4498
00433c: 203601700000007c move.l     $7c(a6, invalid.w), d0
004344: 5380         subq.l     #$1, d0
004346: c0af0008     and.l      $8(a7), d0
00434a: 66ff00000022 bne.l      $436e
004350: 206f0008     movea.l    $8(a7), a0
004354: 24680004     movea.l    $4(a0), a2
004358: 206f0008     movea.l    $8(a7), a0
00435c: 2490         move.l     (a0), (a2)
00435e: 206f0008     movea.l    $8(a7), a0
004362: 2050         movea.l    (a0), a0
004364: 214a0004     move.l     a2, $4(a0)
004368: 60ff00000062 bra.l      $43cc
00436e: 203601700000007c move.l     $7c(a6, invalid.w), d0
004376: 5380         subq.l     #$1, d0
004378: c0af0008     and.l      $8(a7), d0
00437c: 223601700000007c move.l     $7c(a6, invalid.w), d1
004384: 9280         sub.l      d0, d1
004386: 2801         move.l     d1, d4
004388: 99af0004     sub.l      d4, $4(a7)
00438c: 202f0004     move.l     $4(a7), d0
004390: b0b601700000007c cmp.l      $7c(a6, invalid.w), d0
004398: 64ff00000016 bcc.l      $43b0
00439e: 2206         move.l     d6, d1
0043a0: 7000         moveq      #$0, d0
0043a2: 61ffffffd168 bsr.l      $150c
0043a8: 588f         addq.l     #$4, a7
0043aa: 60ff00000100 bra.l      $44ac
0043b0: 246f0008     movea.l    $8(a7), a2
0043b4: 25440008     move.l     d4, $8(a2)
0043b8: 202f0008     move.l     $8(a7), d0
0043bc: d084         add.l      d4, d0
0043be: 2f400008     move.l     d0, $8(a7)
0043c2: 206f0008     movea.l    $8(a7), a0
0043c6: 216f00040008 move.l     $4(a7), $8(a0)
0043cc: 203601700000007c move.l     $7c(a6, invalid.w), d0
0043d4: 5380         subq.l     #$1, d0
0043d6: c0af0004     and.l      $4(a7), d0
0043da: 2800         move.l     d0, d4
0043dc: 67ff00000024 beq.l      $4402
0043e2: 99af0004     sub.l      d4, $4(a7)
0043e6: 202f0008     move.l     $8(a7), d0
0043ea: d0af0004     add.l      $4(a7), d0
0043ee: 2640         movea.l    d0, a3
0043f0: 27440008     move.l     d4, $8(a3)
0043f4: 274a0004     move.l     a2, $4(a3)
0043f8: 2692         move.l     (a2), (a3)
0043fa: 248b         move.l     a3, (a2)
0043fc: 2053         movea.l    (a3), a0
0043fe: 214b0004     move.l     a3, $4(a0)
004402: 2206         move.l     d6, d1
004404: 7000         moveq      #$0, d0
004406: 61ffffffd104 bsr.l      $150c
00440c: 4857         pea.l      (a7)
00440e: 2076017000000050 movea.l    $50(a6, invalid.w), a0
004416: 48680390     pea.l      $390(a0)
00441a: 222f0010     move.l     $10(a7), d1
00441e: 202f000c     move.l     $c(a7), d0
004422: 61ff00000172 bsr.l      $4596
004428: 508f         addq.l     #$8, a7
00442a: 4a80         tst.l      d0
00442c: 66ff00000038 bne.l      $4466
004432: 7001         moveq      #$1, d0
004434: 61ffffffd0b0 bsr.l      $14e6
00443a: 2c00         move.l     d0, d6
00443c: 4878ffff     pea.l      $ffff.w
004440: 2076017000000050 movea.l    $50(a6, invalid.w), a0
004448: 48680390     pea.l      $390(a0)
00444c: 222f0008     move.l     $8(a7), d1
004450: 202f000c     move.l     $c(a7), d0
004454: 61ff00000060 bsr.l      $44b6
00445a: 508f         addq.l     #$8, a7
00445c: 2206         move.l     d6, d1
00445e: 7000         moveq      #$0, d0
004460: 61ffffffd0aa bsr.l      $150c
004466: 48780001     pea.l      $1.w
00446a: 2f3601700000007c move.l     $7c(a6, invalid.w), -(a7)
004472: 48760170000003fc pea.l      $3fc(a6, invalid.w)
00447a: 41ef0010     lea.l      $10(a7), a0
00447e: 2208         move.l     a0, d1
004480: 41ef0014     lea.l      $14(a7), a0
004484: 2008         move.l     a0, d0
004486: 61ff000002ce bsr.l      $4756
00448c: 4fef000c     lea.l      $c(a7), a7
004490: 588f         addq.l     #$4, a7
004492: 60ff00000018 bra.l      $44ac
004498: 2206         move.l     d6, d1
00449a: 7000         moveq      #$0, d0
00449c: 61ffffffd06e bsr.l      $150c
0044a2: 588f         addq.l     #$4, a7
0044a4: 60ff00000006 bra.l      $44ac
0044aa: 4e71         nop        
0044ac: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
0044b2: 4e5d         unlk       a5
0044b4: 4e75         rts        
0044b6: 4e550000     link.w     a5, #$0
0044ba: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
0044be: 2800         move.l     d0, d4
0044c0: 2441         movea.l    d1, a2
0044c2: 266f0024     movea.l    $24(a7), a3
0044c6: 4aaf0028     tst.l      $28(a7)
0044ca: 6fff00000060 ble.l      $452c
0044d0: d9aa0020     add.l      d4, $20(a2)
0044d4: 60ff00000028 bra.l      $44fe
0044da: 296a00080008 move.l     $8(a2), $8(a4)
0044e0: 206a0008     movea.l    $8(a2), a0
0044e4: 214c000c     move.l     a4, $c(a0)
0044e8: 254c0008     move.l     a4, $8(a2)
0044ec: 256c000c000c move.l     $c(a4), $c(a2)
0044f2: 294a000c     move.l     a2, $c(a4)
0044f6: 206a000c     movea.l    $c(a2), a0
0044fa: 214a0008     move.l     a2, $8(a0)
0044fe: 286a000c     movea.l    $c(a2), a4
004502: b9cb         cmpa.l     a3, a4
004504: 67ff00000020 beq.l      $4526
00450a: 302a0028     move.w     $28(a2), d0
00450e: b06c0028     cmp.w      $28(a4), d0
004512: 66ff00000012 bne.l      $4526
004518: 202a0020     move.l     $20(a2), d0
00451c: b0ac0020     cmp.l      $20(a4), d0
004520: 62ffffffffb8 bhi.l      $44da
004526: 60ff0000005a bra.l      $4582
00452c: 99aa0020     sub.l      d4, $20(a2)
004530: 60ff00000028 bra.l      $455a
004536: 206a000c     movea.l    $c(a2), a0
00453a: 214c0008     move.l     a4, $8(a0)
00453e: 296a000c000c move.l     $c(a2), $c(a4)
004544: 256c00080008 move.l     $8(a4), $8(a2)
00454a: 206a0008     movea.l    $8(a2), a0
00454e: 214a000c     move.l     a2, $c(a0)
004552: 294a0008     move.l     a2, $8(a4)
004556: 254c000c     move.l     a4, $c(a2)
00455a: 286a0008     movea.l    $8(a2), a4
00455e: b9cb         cmpa.l     a3, a4
004560: 67ff00000020 beq.l      $4582
004566: 302a0028     move.w     $28(a2), d0
00456a: b06c0028     cmp.w      $28(a4), d0
00456e: 66ff00000012 bne.l      $4582
004574: 202a0020     move.l     $20(a2), d0
004578: b0ac0020     cmp.l      $20(a4), d0
00457c: 65ffffffffb8 bcs.l      $4536
004582: 7000         moveq      #$0, d0
004584: 60ff00000006 bra.l      $458c
00458a: 4e71         nop        
00458c: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
004592: 4e5d         unlk       a5
004594: 4e75         rts        
004596: 4e550000     link.w     a5, #$0
00459a: 48e7ccf0     movem.l    d0-d1/d4-d5/a0-a3, -(a7)
00459e: 2800         move.l     d0, d4
0045a0: 2441         movea.l    d1, a2
0045a2: 518f         subq.l     #$8, a7
0045a4: 206f0030     movea.l    $30(a7), a0
0045a8: 4aa80008     tst.l      $8(a0)
0045ac: 66ff00000018 bne.l      $45c6
0045b2: 206f0030     movea.l    $30(a7), a0
0045b6: 202f0030     move.l     $30(a7), d0
0045ba: 2140000c     move.l     d0, $c(a0)
0045be: 206f0030     movea.l    $30(a7), a0
0045c2: 21400008     move.l     d0, $8(a0)
0045c6: 206f0030     movea.l    $30(a7), a0
0045ca: 26680008     movea.l    $8(a0), a3
0045ce: 60ff00000008 bra.l      $45d8
0045d4: 266b0008     movea.l    $8(a3), a3
0045d8: b7ef0030     cmpa.l     $30(a7), a3
0045dc: 67ff00000016 beq.l      $45f4
0045e2: b5d3         cmpa.l     (a3), a2
0045e4: 65ffffffffee bcs.l      $45d4
0045ea: b5eb0004     cmpa.l     $4(a3), a2
0045ee: 64ffffffffe4 bcc.l      $45d4
0045f4: b7ef0030     cmpa.l     $30(a7), a3
0045f8: 66ff000000b4 bne.l      $46ae
0045fe: 2676017000000404 movea.l    $404(a6, invalid.w), a3
004606: 60ff00000026 bra.l      $462e
00460c: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
004614: 266b0008     movea.l    $8(a3), a3
004618: b1cb         cmpa.l     a3, a0
00461a: 66ff00000012 bne.l      $462e
004620: 203c000000d2 move.l     #$d2, d0
004626: 508f         addq.l     #$8, a7
004628: 60ff000000b2 bra.l      $46dc
00462e: b5d3         cmpa.l     (a3), a2
004630: 65ffffffffda bcs.l      $460c
004636: b5eb0004     cmpa.l     $4(a3), a2
00463a: 64ffffffffd0 bcc.l      $460c
004640: 200a         move.l     a2, d0
004642: d084         add.l      d4, d0
004644: b0ab0004     cmp.l      $4(a3), d0
004648: 63ff00000012 bls.l      $465c
00464e: 203c000000d2 move.l     #$d2, d0
004654: 508f         addq.l     #$8, a7
004656: 60ff00000084 bra.l      $46dc
00465c: 702a         moveq      #$2a, d0
00465e: 2e80         move.l     d0, (a7)
004660: 486f0004     pea.l      $4(a7)
004664: 7200         moveq      #$0, d1
004666: 41ef0004     lea.l      $4(a7), a0
00466a: 2008         move.l     a0, d0
00466c: 61fffffff3be bsr.l      $3a2c
004672: 588f         addq.l     #$4, a7
004674: 2a00         move.l     d0, d5
004676: 67ff0000000e beq.l      $4686
00467c: 2005         move.l     d5, d0
00467e: 508f         addq.l     #$8, a7
004680: 60ff0000005a bra.l      $46dc
004686: 206f0004     movea.l    $4(a7), a0
00468a: 43d3         lea.l      (a3), a1
00468c: 7009         moveq      #$9, d0
00468e: 20d9         move.l     (a1)+, (a0)+
004690: 51c8fffc     dbra       d0, $468e
004694: 30d9         move.w     (a1)+, (a0)+
004696: 222f0030     move.l     $30(a7), d1
00469a: 202f0004     move.l     $4(a7), d0
00469e: 61ff00000046 bsr.l      $46e6
0046a4: 266f0004     movea.l    $4(a7), a3
0046a8: 60ff00000020 bra.l      $46ca
0046ae: 200a         move.l     a2, d0
0046b0: d084         add.l      d4, d0
0046b2: b0ab0004     cmp.l      $4(a3), d0
0046b6: 63ff00000012 bls.l      $46ca
0046bc: 203c000000d2 move.l     #$d2, d0
0046c2: 508f         addq.l     #$8, a7
0046c4: 60ff00000016 bra.l      $46dc
0046ca: 206f0034     movea.l    $34(a7), a0
0046ce: 208b         move.l     a3, (a0)
0046d0: 7000         moveq      #$0, d0
0046d2: 508f         addq.l     #$8, a7
0046d4: 60ff00000006 bra.l      $46dc
0046da: 4e71         nop        
0046dc: 4ced0f30ffe8 movem.l    -$18(a5), d4-d5/a0-a3
0046e2: 4e5d         unlk       a5
0046e4: 4e75         rts        
0046e6: 4e550000     link.w     a5, #$0
0046ea: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
0046ee: 2440         movea.l    d0, a2
0046f0: 2641         movea.l    d1, a3
0046f2: 4aab0008     tst.l      $8(a3)
0046f6: 66ff0000000c bne.l      $4704
0046fc: 274b000c     move.l     a3, $c(a3)
004700: 274b0008     move.l     a3, $8(a3)
004704: 7000         moveq      #$0, d0
004706: 25400014     move.l     d0, $14(a2)
00470a: 25400010     move.l     d0, $10(a2)
00470e: 42aa0020     clr.l      $20(a2)
004712: 286b0008     movea.l    $8(a3), a4
004716: 60ff00000008 bra.l      $4720
00471c: 286c0008     movea.l    $8(a4), a4
004720: b9cb         cmpa.l     a3, a4
004722: 67ff00000012 beq.l      $4736
004728: 302c0028     move.w     $28(a4), d0
00472c: b06a0028     cmp.w      $28(a2), d0
004730: 64ffffffffea bcc.l      $471c
004736: 254c0008     move.l     a4, $8(a2)
00473a: 256c000c000c move.l     $c(a4), $c(a2)
004740: 206c000c     movea.l    $c(a4), a0
004744: 214a0008     move.l     a2, $8(a0)
004748: 294a000c     move.l     a2, $c(a4)
00474c: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
004752: 4e5d         unlk       a5
004754: 4e75         rts        
004756: 4e550000     link.w     a5, #$0
00475a: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
00475e: 282f0038     move.l     $38(a7), d4
004762: 518f         subq.l     #$8, a7
004764: 206f000c     movea.l    $c(a7), a0
004768: 2a10         move.l     (a0), d5
00476a: 66ff0000000e bne.l      $477a
004770: 7000         moveq      #$0, d0
004772: 508f         addq.l     #$8, a7
004774: 60ff000001f6 bra.l      $496c
00477a: 206f0008     movea.l    $8(a7), a0
00477e: 2650         movea.l    (a0), a3
004780: 200b         move.l     a3, d0
004782: 8085         or.l       d5, d0
004784: 222f003c     move.l     $3c(a7), d1
004788: 5381         subq.l     #$1, d1
00478a: c081         and.l      d1, d0
00478c: 67ff00000012 beq.l      $47a0
004792: 203c000000db move.l     #$db, d0
004798: 508f         addq.l     #$8, a7
00479a: 60ff000001d0 bra.l      $496c
0047a0: 200b         move.l     a3, d0
0047a2: 66ff00000012 bne.l      $47b6
0047a8: 203c000000db move.l     #$db, d0
0047ae: 508f         addq.l     #$8, a7
0047b0: 60ff000001ba bra.l      $496c
0047b6: 2004         move.l     d4, d0
0047b8: 61ffffffcd2c bsr.l      $14e6
0047be: 2800         move.l     d0, d4
0047c0: 4857         pea.l      (a7)
0047c2: 2f2f003c     move.l     $3c(a7), -(a7)
0047c6: 220b         move.l     a3, d1
0047c8: 2005         move.l     d5, d0
0047ca: 61fffffffdca bsr.l      $4596
0047d0: 508f         addq.l     #$8, a7
0047d2: 2f400004     move.l     d0, $4(a7)
0047d6: 67ff00000018 beq.l      $47f0
0047dc: 2204         move.l     d4, d1
0047de: 202f0004     move.l     $4(a7), d0
0047e2: 61ffffffcd28 bsr.l      $150c
0047e8: 508f         addq.l     #$8, a7
0047ea: 60ff00000180 bra.l      $496c
0047f0: 7010         moveq      #$10, d0
0047f2: d097         add.l      (a7), d0
0047f4: 7200         moveq      #$0, d1
0047f6: 9081         sub.l      d1, d0
0047f8: 2440         movea.l    d0, a2
0047fa: 4a92         tst.l      (a2)
0047fc: 66ff00000014 bne.l      $4812
004802: 2c0a         move.l     a2, d6
004804: 284a         movea.l    a2, a4
004806: 254a0004     move.l     a2, $4(a2)
00480a: 248a         move.l     a2, (a2)
00480c: 60ff00000044 bra.l      $4852
004812: 284a         movea.l    a2, a4
004814: 2c14         move.l     (a4), d6
004816: 60ff0000002a bra.l      $4842
00481c: 2046         movea.l    d6, a0
00481e: b9e80004     cmpa.l     $4(a0), a4
004822: 67ff0000001a beq.l      $483e
004828: 2204         move.l     d4, d1
00482a: 203c000000ab move.l     #$ab, d0
004830: 61ffffffccda bsr.l      $150c
004836: 508f         addq.l     #$8, a7
004838: 60ff00000132 bra.l      $496c
00483e: 2846         movea.l    d6, a4
004840: 2c14         move.l     (a4), d6
004842: bc8b         cmp.l      a3, d6
004844: 64ff0000000c bcc.l      $4852
00484a: bc8a         cmp.l      a2, d6
00484c: 66ffffffffce bne.l      $481c
004852: b9ca         cmpa.l     a2, a4
004854: 67ff00000012 beq.l      $4868
00485a: 202c0008     move.l     $8(a4), d0
00485e: d08c         add.l      a4, d0
004860: 2e00         move.l     d0, d7
004862: 60ff00000006 bra.l      $486a
004868: 7e00         moveq      #$0, d7
00486a: be86         cmp.l      d6, d7
00486c: 63ff00000022 bls.l      $4890
004872: bc8a         cmp.l      a2, d6
004874: 67ff0000001a beq.l      $4890
00487a: 2204         move.l     d4, d1
00487c: 203c000000ab move.l     #$ab, d0
004882: 61ffffffcc88 bsr.l      $150c
004888: 508f         addq.l     #$8, a7
00488a: 60ff000000e0 bra.l      $496c
004890: be8b         cmp.l      a3, d7
004892: 62ff00000018 bhi.l      $48ac
004898: 200b         move.l     a3, d0
00489a: d085         add.l      d5, d0
00489c: b086         cmp.l      d6, d0
00489e: 63ff00000022 bls.l      $48c2
0048a4: bc8a         cmp.l      a2, d6
0048a6: 67ff0000001a beq.l      $48c2
0048ac: 2204         move.l     d4, d1
0048ae: 203c000000d2 move.l     #$d2, d0
0048b4: 61ffffffcc56 bsr.l      $150c
0048ba: 508f         addq.l     #$8, a7
0048bc: 60ff000000ae bra.l      $496c
0048c2: 48780001     pea.l      $1.w
0048c6: 2f2f003c     move.l     $3c(a7), -(a7)
0048ca: 222f0008     move.l     $8(a7), d1
0048ce: 2005         move.l     d5, d0
0048d0: 61fffffffbe4 bsr.l      $44b6
0048d6: 508f         addq.l     #$8, a7
0048d8: 0836000401700000002e btst.b     #$4, $2e(a6, invalid.w)
0048e2: 67ff00000016 beq.l      $48fa
0048e8: 2f3c66726565 move.l     #$66726565, -(a7)
0048ee: 220b         move.l     a3, d1
0048f0: 2005         move.l     d5, d0
0048f2: 61ffffffcbb2 bsr.l      $14a6
0048f8: 588f         addq.l     #$4, a7
0048fa: be8b         cmp.l      a3, d7
0048fc: 66ff00000022 bne.l      $4920
004902: 206f0008     movea.l    $8(a7), a0
004906: 208c         move.l     a4, (a0)
004908: 264c         movea.l    a4, a3
00490a: dbab0008     add.l      d5, $8(a3)
00490e: 206f000c     movea.l    $c(a7), a0
004912: 202b0008     move.l     $8(a3), d0
004916: 2080         move.l     d0, (a0)
004918: 2a00         move.l     d0, d5
00491a: 60ff00000016 bra.l      $4932
004920: 27450008     move.l     d5, $8(a3)
004924: 274c0004     move.l     a4, $4(a3)
004928: 2686         move.l     d6, (a3)
00492a: 288b         move.l     a3, (a4)
00492c: 2046         movea.l    d6, a0
00492e: 214b0004     move.l     a3, $4(a0)
004932: 200b         move.l     a3, d0
004934: d085         add.l      d5, d0
004936: b086         cmp.l      d6, d0
004938: 66ff0000001e bne.l      $4958
00493e: 2046         movea.l    d6, a0
004940: 20280008     move.l     $8(a0), d0
004944: 206f000c     movea.l    $c(a7), a0
004948: d190         add.l      d0, (a0)
00494a: 27500008     move.l     (a0), $8(a3)
00494e: 2046         movea.l    d6, a0
004950: 2690         move.l     (a0), (a3)
004952: 2053         movea.l    (a3), a0
004954: 214b0004     move.l     a3, $4(a0)
004958: 2204         move.l     d4, d1
00495a: 7000         moveq      #$0, d0
00495c: 61ffffffcbae bsr.l      $150c
004962: 508f         addq.l     #$8, a7
004964: 60ff00000006 bra.l      $496c
00496a: 4e71         nop        
00496c: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
004972: 4e5d         unlk       a5
004974: 4e75         rts        
004976: 4e550000     link.w     a5, #$0
00497a: 48e7ccf8     movem.l    d0-d1/d4-d5/a0-a4, -(a7)
00497e: 2017         move.l     (a7), d0
004980: d0b6017000000070 add.l      $70(a6, invalid.w), d0
004988: 5380         subq.l     #$1, d0
00498a: 2236017000000070 move.l     $70(a6, invalid.w), d1
004992: 4481         neg.l      d1
004994: c081         and.l      d1, d0
004996: 2e80         move.l     d0, (a7)
004998: 203c000001a8 move.l     #$1a8, d0
00499e: d0b601700000004c add.l      $4c(a6, invalid.w), d0
0049a6: 2640         movea.l    d0, a3
0049a8: 707c         moveq      #$7c, d0
0049aa: d08b         add.l      a3, d0
0049ac: 2840         movea.l    d0, a4
0049ae: 202f0004     move.l     $4(a7), d0
0049b2: d097         add.l      (a7), d0
0049b4: 2800         move.l     d0, d4
0049b6: 60ff00000026 bra.l      $49de
0049bc: b7cc         cmpa.l     a4, a3
0049be: 64ff00000010 bcc.l      $49d0
0049c4: 202f0004     move.l     $4(a7), d0
0049c8: b093         cmp.l      (a3), d0
0049ca: 62ff00000010 bhi.l      $49dc
0049d0: 203c000000d2 move.l     #$d2, d0
0049d6: 60ff00000232 bra.l      $4c0a
0049dc: 588b         addq.l     #$4, a3
0049de: 2013         move.l     (a3), d0
0049e0: d0ab0080     add.l      $80(a3), d0
0049e4: b084         cmp.l      d4, d0
0049e6: 65ffffffffd4 bcs.l      $49bc
0049ec: 42a7         clr.l      -(a7)
0049ee: 2f36017000000070 move.l     $70(a6, invalid.w), -(a7)
0049f6: 207601700000004c movea.l    $4c(a6, invalid.w), a0
0049fe: 48680390     pea.l      $390(a0)
004a02: 41ef000c     lea.l      $c(a7), a0
004a06: 2208         move.l     a0, d1
004a08: 41ef0010     lea.l      $10(a7), a0
004a0c: 2008         move.l     a0, d0
004a0e: 61fffffffd46 bsr.l      $4756
004a14: 4fef000c     lea.l      $c(a7), a7
004a18: 2a00         move.l     d0, d5
004a1a: 67ff0000000c beq.l      $4a28
004a20: 2005         move.l     d5, d0
004a22: 60ff000001e6 bra.l      $4c0a
004a28: 2017         move.l     (a7), d0
004a2a: b0b601700000007c cmp.l      $7c(a6, invalid.w), d0
004a32: 64ff0000000c bcc.l      $4a40
004a38: 7000         moveq      #$0, d0
004a3a: 60ff000001ce bra.l      $4c0a
004a40: 202f0004     move.l     $4(a7), d0
004a44: b093         cmp.l      (a3), d0
004a46: 66ff00000084 bne.l      $4acc
004a4c: 203601700000007c move.l     $7c(a6, invalid.w), d0
004a54: 5380         subq.l     #$1, d0
004a56: c097         and.l      (a7), d0
004a58: 66ff00000028 bne.l      $4a82
004a5e: 206f0004     movea.l    $4(a7), a0
004a62: 226f0004     movea.l    $4(a7), a1
004a66: 22690004     movea.l    $4(a1), a1
004a6a: 2290         move.l     (a0), (a1)
004a6c: 206f0004     movea.l    $4(a7), a0
004a70: 226f0004     movea.l    $4(a7), a1
004a74: 2251         movea.l    (a1), a1
004a76: 236800040004 move.l     $4(a0), $4(a1)
004a7c: 60ff00000044 bra.l      $4ac2
004a82: 203601700000007c move.l     $7c(a6, invalid.w), d0
004a8a: 5380         subq.l     #$1, d0
004a8c: 4680         not.l      d0
004a8e: c197         and.l      d0, (a7)
004a90: 202f0004     move.l     $4(a7), d0
004a94: d097         add.l      (a7), d0
004a96: 2440         movea.l    d0, a2
004a98: 206f0004     movea.l    $4(a7), a0
004a9c: 2490         move.l     (a0), (a2)
004a9e: 206f0004     movea.l    $4(a7), a0
004aa2: 256800040004 move.l     $4(a0), $4(a2)
004aa8: 206f0004     movea.l    $4(a7), a0
004aac: 20280008     move.l     $8(a0), d0
004ab0: 9097         sub.l      (a7), d0
004ab2: 25400008     move.l     d0, $8(a2)
004ab6: 2052         movea.l    (a2), a0
004ab8: 214a0004     move.l     a2, $4(a0)
004abc: 206a0004     movea.l    $4(a2), a0
004ac0: 208a         move.l     a2, (a0)
004ac2: 2017         move.l     (a7), d0
004ac4: d193         add.l      d0, (a3)
004ac6: 60ff0000007e bra.l      $4b46
004acc: 2013         move.l     (a3), d0
004ace: d0ab0080     add.l      $80(a3), d0
004ad2: 222f0004     move.l     $4(a7), d1
004ad6: d297         add.l      (a7), d1
004ad8: b081         cmp.l      d1, d0
004ada: 67ff0000000c beq.l      $4ae8
004ae0: 7000         moveq      #$0, d0
004ae2: 60ff00000126 bra.l      $4c0a
004ae8: 203601700000007c move.l     $7c(a6, invalid.w), d0
004af0: 5380         subq.l     #$1, d0
004af2: c097         and.l      (a7), d0
004af4: 66ff00000028 bne.l      $4b1e
004afa: 206f0004     movea.l    $4(a7), a0
004afe: 226f0004     movea.l    $4(a7), a1
004b02: 22690004     movea.l    $4(a1), a1
004b06: 2290         move.l     (a0), (a1)
004b08: 206f0004     movea.l    $4(a7), a0
004b0c: 226f0004     movea.l    $4(a7), a1
004b10: 2251         movea.l    (a1), a1
004b12: 236800040004 move.l     $4(a0), $4(a1)
004b18: 60ff0000002c bra.l      $4b46
004b1e: 203601700000007c move.l     $7c(a6, invalid.w), d0
004b26: 5380         subq.l     #$1, d0
004b28: 4680         not.l      d0
004b2a: c197         and.l      d0, (a7)
004b2c: 2017         move.l     (a7), d0
004b2e: 206f0004     movea.l    $4(a7), a0
004b32: 91a80008     sub.l      d0, $8(a0)
004b36: 206f0004     movea.l    $4(a7), a0
004b3a: 20280008     move.l     $8(a0), d0
004b3e: d0af0004     add.l      $4(a7), d0
004b42: 2f400004     move.l     d0, $4(a7)
004b46: 2017         move.l     (a7), d0
004b48: 91ab0080     sub.l      d0, $80(a3)
004b4c: 66ff0000002c bne.l      $4b7a
004b52: 60ff00000010 bra.l      $4b64
004b58: 26ab0004     move.l     $4(a3), (a3)
004b5c: 276b00840080 move.l     $84(a3), $80(a3)
004b62: 588b         addq.l     #$4, a3
004b64: b7cc         cmpa.l     a4, a3
004b66: 64ff0000000c bcc.l      $4b74
004b6c: 4a93         tst.l      (a3)
004b6e: 66ffffffffe8 bne.l      $4b58
004b74: 4293         clr.l      (a3)
004b76: 42ab0080     clr.l      $80(a3)
004b7a: 48780003     pea.l      $3.w
004b7e: 222f0004     move.l     $4(a7), d1
004b82: 202f0008     move.l     $8(a7), d0
004b86: 61ffffffcac8 bsr.l      $1650
004b8c: 588f         addq.l     #$4, a7
004b8e: 598f         subq.l     #$4, a7
004b90: 4857         pea.l      (a7)
004b92: 207601700000004c movea.l    $4c(a6, invalid.w), a0
004b9a: 48680390     pea.l      $390(a0)
004b9e: 222f0010     move.l     $10(a7), d1
004ba2: 202f000c     move.l     $c(a7), d0
004ba6: 61fffffff9ee bsr.l      $4596
004bac: 508f         addq.l     #$8, a7
004bae: 4a80         tst.l      d0
004bb0: 66ff00000024 bne.l      $4bd6
004bb6: 4878ffff     pea.l      $ffff.w
004bba: 207601700000004c movea.l    $4c(a6, invalid.w), a0
004bc2: 48680390     pea.l      $390(a0)
004bc6: 222f0008     move.l     $8(a7), d1
004bca: 202f000c     move.l     $c(a7), d0
004bce: 61fffffff8e6 bsr.l      $44b6
004bd4: 508f         addq.l     #$8, a7
004bd6: 588f         addq.l     #$4, a7
004bd8: 48780001     pea.l      $1.w
004bdc: 2f3601700000007c move.l     $7c(a6, invalid.w), -(a7)
004be4: 48760170000003fc pea.l      $3fc(a6, invalid.w)
004bec: 41ef000c     lea.l      $c(a7), a0
004bf0: 2208         move.l     a0, d1
004bf2: 41ef0010     lea.l      $10(a7), a0
004bf6: 2008         move.l     a0, d0
004bf8: 61fffffffb5c bsr.l      $4756
004bfe: 4fef000c     lea.l      $c(a7), a7
004c02: 60ff00000006 bra.l      $4c0a
004c08: 4e71         nop        
004c0a: 4ced1f30ffe4 movem.l    -$1c(a5), d4-d5/a0-a4
004c10: 4e5d         unlk       a5
004c12: 4e75         rts        
004c14: 4e550000     link.w     a5, #$0
004c18: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
004c1c: 287601700000004c movea.l    $4c(a6, invalid.w), a4
004c24: 2057         movea.l    (a7), a0
004c26: 2010         move.l     (a0), d0
004c28: d0b6017000000070 add.l      $70(a6, invalid.w), d0
004c30: 5380         subq.l     #$1, d0
004c32: 2236017000000070 move.l     $70(a6, invalid.w), d1
004c3a: 4481         neg.l      d1
004c3c: c081         and.l      d1, d0
004c3e: 2800         move.l     d0, d4
004c40: 67ff0000012a beq.l      $4d6c
004c46: 4aac0330     tst.l      $330(a4)
004c4a: 66ff000000aa bne.l      $4cf6
004c50: 2004         move.l     d4, d0
004c52: d0b601700000007c add.l      $7c(a6, invalid.w), d0
004c5a: 5380         subq.l     #$1, d0
004c5c: 223601700000007c move.l     $7c(a6, invalid.w), d1
004c64: 4481         neg.l      d1
004c66: c081         and.l      d1, d0
004c68: 29400330     move.l     d0, $330(a4)
004c6c: 203c0000032c move.l     #$32c, d0
004c72: d08c         add.l      a4, d0
004c74: 2200         move.l     d0, d1
004c76: 202c0330     move.l     $330(a4), d0
004c7a: 61ff00000118 bsr.l      $4d94
004c80: 2a00         move.l     d0, d5
004c82: 0c85000000ed cmpi.l     #$ed, d5
004c88: 66ff00000012 bne.l      $4c9c
004c8e: 61ff00000304 bsr.l      $4f94
004c94: 4a80         tst.l      d0
004c96: 67ffffffffd4 beq.l      $4c6c
004c9c: 4a85         tst.l      d5
004c9e: 67ff0000000c beq.l      $4cac
004ca4: 2005         move.l     d5, d0
004ca6: 60ff000000e2 bra.l      $4d8a
004cac: 222c0330     move.l     $330(a4), d1
004cb0: 202c032c     move.l     $32c(a4), d0
004cb4: 61fffffff3e4 bsr.l      $409a
004cba: 2a00         move.l     d0, d5
004cbc: 67ff0000000c beq.l      $4cca
004cc2: 2005         move.l     d5, d0
004cc4: 60ff000000c4 bra.l      $4d8a
004cca: 0836000401700000002e btst.b     #$4, $2e(a6, invalid.w)
004cd4: 67ff0000001a beq.l      $4cf0
004cda: 2f3ca110ca7d move.l     #$a110ca7d, -(a7)
004ce0: 222c032c     move.l     $32c(a4), d1
004ce4: 202c0330     move.l     $330(a4), d0
004ce8: 61ffffffc7bc bsr.l      $14a6
004cee: 588f         addq.l     #$4, a7
004cf0: 60ff0000001a bra.l      $4d0c
004cf6: b8ac0330     cmp.l      $330(a4), d4
004cfa: 63ff00000010 bls.l      $4d0c
004d00: 203c000000ed move.l     #$ed, d0
004d06: 60ff00000082 bra.l      $4d8a
004d0c: b8ac0330     cmp.l      $330(a4), d4
004d10: 64ff0000005a bcc.l      $4d6c
004d16: 202c032c     move.l     $32c(a4), d0
004d1a: d084         add.l      d4, d0
004d1c: b0ac000c     cmp.l      $c(a4), d0
004d20: 64ff00000022 bcc.l      $4d44
004d26: 202c032c     move.l     $32c(a4), d0
004d2a: d0ac0330     add.l      $330(a4), d0
004d2e: b0ac000c     cmp.l      $c(a4), d0
004d32: 65ff00000010 bcs.l      $4d44
004d38: 203c000000df move.l     #$df, d0
004d3e: 60ff0000004a bra.l      $4d8a
004d44: 202c032c     move.l     $32c(a4), d0
004d48: d084         add.l      d4, d0
004d4a: 2200         move.l     d0, d1
004d4c: 202c0330     move.l     $330(a4), d0
004d50: 9084         sub.l      d4, d0
004d52: 61fffffffc22 bsr.l      $4976
004d58: 2a00         move.l     d0, d5
004d5a: 67ff0000000c beq.l      $4d68
004d60: 2005         move.l     d5, d0
004d62: 60ff00000026 bra.l      $4d8a
004d68: 29440330     move.l     d4, $330(a4)
004d6c: 2057         movea.l    (a7), a0
004d6e: 20ac0330     move.l     $330(a4), (a0)
004d72: 202c032c     move.l     $32c(a4), d0
004d76: 2057         movea.l    (a7), a0
004d78: d090         add.l      (a0), d0
004d7a: 206f0004     movea.l    $4(a7), a0
004d7e: 2080         move.l     d0, (a0)
004d80: 7000         moveq      #$0, d0
004d82: 60ff00000006 bra.l      $4d8a
004d88: 4e71         nop        
004d8a: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
004d90: 4e5d         unlk       a5
004d92: 4e75         rts        
004d94: 4e550000     link.w     a5, #$0
004d98: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
004d9c: 2800         move.l     d0, d4
004d9e: 2441         movea.l    d1, a2
004da0: 598f         subq.l     #$4, a7
004da2: 4292         clr.l      (a2)
004da4: 4a84         tst.l      d4
004da6: 66ff0000000c bne.l      $4db4
004dac: 203c000000e1 move.l     #$e1, d0
004db2: 6002         bra.b      $4db6
004db4: 7000         moveq      #$0, d0
004db6: 2c00         move.l     d0, d6
004db8: 7001         moveq      #$1, d0
004dba: 61ffffffc72a bsr.l      $14e6
004dc0: 2e80         move.l     d0, (a7)
004dc2: 47f60170000003fc lea.l      $3fc(a6, invalid.w), a3
004dca: 60ff00000118 bra.l      $4ee4
004dd0: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
004dd8: 266b0008     movea.l    $8(a3), a3
004ddc: b1cb         cmpa.l     a3, a0
004dde: 66ff00000010 bne.l      $4df0
004de4: 2c3c000000ed move.l     #$ed, d6
004dea: 60ff000000f8 bra.l      $4ee4
004df0: 4a6b0028     tst.w      $28(a3)
004df4: 67ff000000ee beq.l      $4ee4
004dfa: b8ab0020     cmp.l      $20(a3), d4
004dfe: 62ff000000e4 bhi.l      $4ee4
004e04: 7010         moveq      #$10, d0
004e06: d08b         add.l      a3, d0
004e08: 7200         moveq      #$0, d1
004e0a: 9081         sub.l      d1, d0
004e0c: 2a00         move.l     d0, d5
004e0e: 2045         movea.l    d5, a0
004e10: 2850         movea.l    (a0), a4
004e12: 60ff000000b8 bra.l      $4ecc
004e18: baac0004     cmp.l      $4(a4), d5
004e1c: 67ff00000016 beq.l      $4e34
004e22: 2c3c000000ab move.l     #$ab, d6
004e28: 60ff000000ba bra.l      $4ee4
004e2e: 60ff00000098 bra.l      $4ec8
004e34: 7010         moveq      #$10, d0
004e36: d08b         add.l      a3, d0
004e38: 7200         moveq      #$0, d1
004e3a: 9081         sub.l      d1, d0
004e3c: b085         cmp.l      d5, d0
004e3e: 67ff00000026 beq.l      $4e66
004e44: 2045         movea.l    d5, a0
004e46: 20280008     move.l     $8(a0), d0
004e4a: d085         add.l      d5, d0
004e4c: b08c         cmp.l      a4, d0
004e4e: 65ff00000016 bcs.l      $4e66
004e54: 2c3c000000ab move.l     #$ab, d6
004e5a: 60ff00000088 bra.l      $4ee4
004e60: 60ff00000066 bra.l      $4ec8
004e66: 202c0008     move.l     $8(a4), d0
004e6a: 9084         sub.l      d4, d0
004e6c: 2e00         move.l     d0, d7
004e6e: 6dff00000058 blt.l      $4ec8
004e74: 4878ffff     pea.l      $ffff.w
004e78: 48760170000003fc pea.l      $3fc(a6, invalid.w)
004e80: 220b         move.l     a3, d1
004e82: 2004         move.l     d4, d0
004e84: 61fffffff630 bsr.l      $44b6
004e8a: 508f         addq.l     #$8, a7
004e8c: 4a87         tst.l      d7
004e8e: 66ff0000001a bne.l      $4eaa
004e94: 206c0004     movea.l    $4(a4), a0
004e98: 2094         move.l     (a4), (a0)
004e9a: 2054         movea.l    (a4), a0
004e9c: 216c00040004 move.l     $4(a4), $4(a0)
004ea2: 248c         move.l     a4, (a2)
004ea4: 60ff00000022 bra.l      $4ec8
004eaa: 248c         move.l     a4, (a2)
004eac: 200c         move.l     a4, d0
004eae: d084         add.l      d4, d0
004eb0: 2840         movea.l    d0, a4
004eb2: 29470008     move.l     d7, $8(a4)
004eb6: 2045         movea.l    d5, a0
004eb8: 208c         move.l     a4, (a0)
004eba: 29450004     move.l     d5, $4(a4)
004ebe: 2052         movea.l    (a2), a0
004ec0: 2890         move.l     (a0), (a4)
004ec2: 2054         movea.l    (a4), a0
004ec4: 214c0004     move.l     a4, $4(a0)
004ec8: 2a0c         move.l     a4, d5
004eca: 2854         movea.l    (a4), a4
004ecc: 7010         moveq      #$10, d0
004ece: d08b         add.l      a3, d0
004ed0: 7200         moveq      #$0, d1
004ed2: 9081         sub.l      d1, d0
004ed4: b08c         cmp.l      a4, d0
004ed6: 67ff0000000c beq.l      $4ee4
004edc: 4a92         tst.l      (a2)
004ede: 67ffffffff38 beq.l      $4e18
004ee4: 4a92         tst.l      (a2)
004ee6: 66ff0000000c bne.l      $4ef4
004eec: 4a86         tst.l      d6
004eee: 67fffffffee0 beq.l      $4dd0
004ef4: 2217         move.l     (a7), d1
004ef6: 2006         move.l     d6, d0
004ef8: 61ffffffc612 bsr.l      $150c
004efe: 588f         addq.l     #$4, a7
004f00: 60ff00000006 bra.l      $4f08
004f06: 4e71         nop        
004f08: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
004f0e: 4e5d         unlk       a5
004f10: 4e75         rts        
004f12: 4e550000     link.w     a5, #$0
004f16: 48e7cc38     movem.l    d0-d1/d4-d5/a2-a4, -(a7)
004f1a: 2800         move.l     d0, d4
004f1c: 2441         movea.l    d1, a2
004f1e: 203c000001a8 move.l     #$1a8, d0
004f24: d0b601700000004c add.l      $4c(a6, invalid.w), d0
004f2c: 2640         movea.l    d0, a3
004f2e: 203c00000080 move.l     #$80, d0
004f34: d08b         add.l      a3, d0
004f36: 2840         movea.l    d0, a4
004f38: 200a         move.l     a2, d0
004f3a: d084         add.l      d4, d0
004f3c: 2a00         move.l     d0, d5
004f3e: ba8a         cmp.l      a2, d5
004f40: 63ff0000003a bls.l      $4f7c
004f46: 60ff0000001c bra.l      $4f64
004f4c: 2013         move.l     (a3), d0
004f4e: d0ab0080     add.l      $80(a3), d0
004f52: b085         cmp.l      d5, d0
004f54: 65ff0000000c bcs.l      $4f62
004f5a: 7000         moveq      #$0, d0
004f5c: 60ff0000002c bra.l      $4f8a
004f62: 588b         addq.l     #$4, a3
004f64: 4a93         tst.l      (a3)
004f66: 67ff00000014 beq.l      $4f7c
004f6c: b7cc         cmpa.l     a4, a3
004f6e: 64ff0000000c bcc.l      $4f7c
004f74: b5d3         cmpa.l     (a3), a2
004f76: 64ffffffffd4 bcc.l      $4f4c
004f7c: 203c000000d2 move.l     #$d2, d0
004f82: 60ff00000006 bra.l      $4f8a
004f88: 4e71         nop        
004f8a: 4ced1c30ffec movem.l    -$14(a5), d4-d5/a2-a4
004f90: 4e5d         unlk       a5
004f92: 4e75         rts        
004f94: 4e550000     link.w     a5, #$0
004f98: 48e78030     movem.l    d0/a2-a3, -(a7)
004f9c: 0836000201700000002e btst.b     #$2, $2e(a6, invalid.w)
004fa6: 66ff00000052 bne.l      $4ffa
004fac: 247601700000003c movea.l    $3c(a6, invalid.w), a2
004fb4: 2676017000000040 movea.l    $40(a6, invalid.w), a3
004fbc: 60ff00000034 bra.l      $4ff2
004fc2: 4a92         tst.l      (a2)
004fc4: 67ff00000026 beq.l      $4fec
004fca: 4a6a000c     tst.w      $c(a2)
004fce: 66ff0000001c bne.l      $4fec
004fd4: 200a         move.l     a2, d0
004fd6: 61ffffffc5aa bsr.l      $1582
004fdc: 4a80         tst.l      d0
004fde: 66ff0000000c bne.l      $4fec
004fe4: 7000         moveq      #$0, d0
004fe6: 60ff00000020 bra.l      $5008
004fec: d5fc00000010 adda.l     #$10, a2
004ff2: b5cb         cmpa.l     a3, a2
004ff4: 65ffffffffcc bcs.l      $4fc2
004ffa: 203c000000ed move.l     #$ed, d0
005000: 60ff00000006 bra.l      $5008
005006: 4e71         nop        
005008: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
00500e: 4e5d         unlk       a5
005010: 4e75         rts        
005012: 4e550000     link.w     a5, #$0
005016: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
00501a: 2801         move.l     d1, d4
00501c: 246f0030     movea.l    $30(a7), a2
005020: 7a00         moveq      #$0, d5
005022: 7c00         moveq      #$0, d6
005024: 4a84         tst.l      d4
005026: 67ff00000024 beq.l      $504c
00502c: 4852         pea.l      (a2)
00502e: 7203         moveq      #$3, d1
005030: 2004         move.l     d4, d0
005032: 61ffffffc590 bsr.l      $15c4
005038: 588f         addq.l     #$4, a7
00503a: 2e00         move.l     d0, d7
00503c: 67ff0000000c beq.l      $504a
005042: 2007         move.l     d7, d0
005044: 60ff000000bc bra.l      $5102
00504a: e68c         lsr.l      #$3, d4
00504c: 2876017000000404 movea.l    $404(a6, invalid.w), a4
005054: 60ff0000005a bra.l      $50b0
00505a: 082c00000025 btst.b     #$0, $25(a4)
005060: 67ff0000004a beq.l      $50ac
005066: 266c0010     movea.l    $10(a4), a3
00506a: 200b         move.l     a3, d0
00506c: 67ff0000003e beq.l      $50ac
005072: 60ff00000028 bra.l      $509c
005078: b7d7         cmpa.l     (a7), a3
00507a: 65ff00000018 bcs.l      $5094
005080: 4a84         tst.l      d4
005082: 67ff00000010 beq.l      $5094
005088: 248b         move.l     a3, (a2)
00508a: 256b00080004 move.l     $8(a3), $4(a2)
005090: 508a         addq.l     #$8, a2
005092: 5384         subq.l     #$1, d4
005094: 5285         addq.l     #$1, d5
005096: dcab0008     add.l      $8(a3), d6
00509a: 2653         movea.l    (a3), a3
00509c: 7010         moveq      #$10, d0
00509e: d08c         add.l      a4, d0
0050a0: 7200         moveq      #$0, d1
0050a2: 9081         sub.l      d1, d0
0050a4: b08b         cmp.l      a3, d0
0050a6: 66ffffffffd0 bne.l      $5078
0050ac: 286c0008     movea.l    $8(a4), a4
0050b0: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
0050b8: b1cc         cmpa.l     a4, a0
0050ba: 66ffffffff9e bne.l      $505a
0050c0: 4a84         tst.l      d4
0050c2: 67ff0000000a beq.l      $50ce
0050c8: 4292         clr.l      (a2)
0050ca: 42aa0004     clr.l      $4(a2)
0050ce: 206f0034     movea.l    $34(a7), a0
0050d2: 20b601700000007c move.l     $7c(a6, invalid.w), (a0)
0050da: 206f0034     movea.l    $34(a7), a0
0050de: 21450004     move.l     d5, $4(a0)
0050e2: 206f0034     movea.l    $34(a7), a0
0050e6: 217601700000006c0008 move.l     $6c(a6, invalid.w), $8(a0)
0050f0: 206f0034     movea.l    $34(a7), a0
0050f4: 2146000c     move.l     d6, $c(a0)
0050f8: 7000         moveq      #$0, d0
0050fa: 60ff00000006 bra.l      $5102
005100: 4e71         nop        
005102: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
005108: 4e5d         unlk       a5
00510a: 4e75         rts        
00510c: 4e550000     link.w     a5, #$0
005110: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
005114: 2440         movea.l    d0, a2
005116: 203c000001a8 move.l     #$1a8, d0
00511c: d08a         add.l      a2, d0
00511e: 2640         movea.l    d0, a3
005120: 707c         moveq      #$7c, d0
005122: d08b         add.l      a3, d0
005124: 2840         movea.l    d0, a4
005126: 60ff00000018 bra.l      $5140
00512c: 2213         move.l     (a3), d1
00512e: 202b0080     move.l     $80(a3), d0
005132: 61fffffff13a bsr.l      $426e
005138: 42ab0080     clr.l      $80(a3)
00513c: 4293         clr.l      (a3)
00513e: 588b         addq.l     #$4, a3
005140: b7cc         cmpa.l     a4, a3
005142: 64ff0000000c bcc.l      $5150
005148: 4a93         tst.l      (a3)
00514a: 66ffffffffe0 bne.l      $512c
005150: 42aa032c     clr.l      $32c(a2)
005154: 42aa0330     clr.l      $330(a2)
005158: 203c00000398 move.l     #$398, d0
00515e: d08a         add.l      a2, d0
005160: 5180         subq.l     #$8, d0
005162: 2800         move.l     d0, d4
005164: 2044         movea.l    d4, a0
005166: 26680008     movea.l    $8(a0), a3
00516a: 200b         move.l     a3, d0
00516c: 67ff00000022 beq.l      $5190
005172: 60ff00000014 bra.l      $5188
005178: 286b0008     movea.l    $8(a3), a4
00517c: 220b         move.l     a3, d1
00517e: 702a         moveq      #$2a, d0
005180: 61fffffff0ec bsr.l      $426e
005186: 264c         movea.l    a4, a3
005188: b7c4         cmpa.l     d4, a3
00518a: 66ffffffffec bne.l      $5178
005190: 7000         moveq      #$0, d0
005192: 2540039c     move.l     d0, $39c(a2)
005196: 25400398     move.l     d0, $398(a2)
00519a: 7000         moveq      #$0, d0
00519c: 60ff00000006 bra.l      $51a4
0051a2: 4e71         nop        
0051a4: 4ced1d12ffe8 movem.l    -$18(a5), d1/d4/a0/a2-a4
0051aa: 4e5d         unlk       a5
0051ac: 4e75         rts        
0051ae: 4e550000     link.w     a5, #$0
0051b2: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
0051b6: 203601700000007c move.l     $7c(a6, invalid.w), d0
0051be: 5380         subq.l     #$1, d0
0051c0: 2800         move.l     d0, d4
0051c2: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
0051ca: 2a08         move.l     a0, d5
0051cc: 2045         movea.l    d5, a0
0051ce: 4aa80008     tst.l      $8(a0)
0051d2: 67ff00000082 beq.l      $5256
0051d8: 2845         movea.l    d5, a4
0051da: 60ff0000006e bra.l      $524a
0051e0: 266c0010     movea.l    $10(a4), a3
0051e4: 200b         move.l     a3, d0
0051e6: 67ff00000062 beq.l      $524a
0051ec: 60ff0000004a bra.l      $5238
0051f2: 2652         movea.l    (a2), a3
0051f4: 202a0008     move.l     $8(a2), d0
0051f8: 220a         move.l     a2, d1
0051fa: 8081         or.l       d1, d0
0051fc: c084         and.l      d4, d0
0051fe: 67ff00000038 beq.l      $5238
005204: 4878ffff     pea.l      $ffff.w
005208: 2f05         move.l     d5, -(a7)
00520a: 220c         move.l     a4, d1
00520c: 202a0008     move.l     $8(a2), d0
005210: 61fffffff2a4 bsr.l      $44b6
005216: 508f         addq.l     #$8, a7
005218: 206a0004     movea.l    $4(a2), a0
00521c: 208b         move.l     a3, (a0)
00521e: 276a00040004 move.l     $4(a2), $4(a3)
005224: 220a         move.l     a2, d1
005226: 202a0008     move.l     $8(a2), d0
00522a: 61fffffff042 bsr.l      $426e
005230: 2845         movea.l    d5, a4
005232: 60ff00000016 bra.l      $524a
005238: 7010         moveq      #$10, d0
00523a: d08c         add.l      a4, d0
00523c: 7200         moveq      #$0, d1
00523e: 9081         sub.l      d1, d0
005240: 244b         movea.l    a3, a2
005242: b08b         cmp.l      a3, d0
005244: 66ffffffffac bne.l      $51f2
00524a: 286c0008     movea.l    $8(a4), a4
00524e: b9c5         cmpa.l     d5, a4
005250: 66ffffffff8e bne.l      $51e0
005256: 4ced1d32ffe4 movem.l    -$1c(a5), d1/d4-d5/a0/a2-a4
00525c: 4e5d         unlk       a5
00525e: 4e75         rts        
005260: 4e550000     link.w     a5, #$0
005264: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
005268: 2441         movea.l    d1, a2
00526a: 282f0024     move.l     $24(a7), d4
00526e: 49f60170000003fc lea.l      $3fc(a6, invalid.w), a4
005276: 60ff00000064 bra.l      $52dc
00527c: 2057         movea.l    (a7), a0
00527e: 2650         movea.l    (a0), a3
005280: 4a04         tst.b      d4
005282: 67ff00000010 beq.l      $5294
005288: 2014         move.l     (a4), d0
00528a: 220b         move.l     a3, d1
00528c: 92ac001c     sub.l      $1c(a4), d1
005290: d081         add.l      d1, d0
005292: 2640         movea.l    d0, a3
005294: b7d4         cmpa.l     (a4), a3
005296: 65ff00000044 bcs.l      $52dc
00529c: b7ec0004     cmpa.l     $4(a4), a3
0052a0: 64ff0000003a bcc.l      $52dc
0052a6: 2012         move.l     (a2), d0
0052a8: d08b         add.l      a3, d0
0052aa: b0ac0004     cmp.l      $4(a4), d0
0052ae: 63ff0000000c bls.l      $52bc
0052b4: 202c0004     move.l     $4(a4), d0
0052b8: 908b         sub.l      a3, d0
0052ba: 2480         move.l     d0, (a2)
0052bc: 4a04         tst.b      d4
0052be: 66ff00000010 bne.l      $52d0
0052c4: 202c001c     move.l     $1c(a4), d0
0052c8: 220b         move.l     a3, d1
0052ca: 9294         sub.l      (a4), d1
0052cc: d081         add.l      d1, d0
0052ce: 2640         movea.l    d0, a3
0052d0: 2057         movea.l    (a7), a0
0052d2: 208b         move.l     a3, (a0)
0052d4: 7000         moveq      #$0, d0
0052d6: 60ff00000026 bra.l      $52fe
0052dc: 41f60170000003fc lea.l      $3fc(a6, invalid.w), a0
0052e4: 286c0008     movea.l    $8(a4), a4
0052e8: b1cc         cmpa.l     a4, a0
0052ea: 66ffffffff90 bne.l      $527c
0052f0: 203c000000db move.l     #$db, d0
0052f6: 60ff00000006 bra.l      $52fe
0052fc: 4e71         nop        
0052fe: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
005304: 4e5d         unlk       a5
005306: 4e75         rts        
005308: 266d002c     movea.l    $2c(a5), a3
00530c: 603a         bra.b      $5348
00530e: 024180ff     andi.w     #$80ff, d1
005312: e589         lsl.l      #$2, d1
005314: 3419         move.w     (a1)+, d2
005316: 6606         bne.b      $531e
005318: 41fa1124     lea.l      $643e(pc), a0
00531c: 6004         bra.b      $5322
00531e: 41f12000     lea.l      (a1, d2.w), a0
005322: 246e03a4     movea.l    $3a4(a6), a2
005326: 25881000     move.l     a0, (a2, d1.w)
00532a: 45ea0400     lea.l      $400(a2), a2
00532e: 258b1000     move.l     a3, (a2, d1.w)
005332: 08010011     btst.b     #$11, d1
005336: 6610         bne.b      $5348
005338: 246e03a8     movea.l    $3a8(a6), a2
00533c: 25881000     move.l     a0, (a2, d1.w)
005340: 45ea0400     lea.l      $400(a2), a2
005344: 258b1000     move.l     a3, (a2, d1.w)
005348: 7200         moveq      #$0, d1
00534a: 3219         move.w     (a1)+, d1
00534c: b27cffff     cmp.w      #$ffff, d1
005350: 66bc         bne.b      $530e
005352: 023c         .dc.w      $023c
005354: fffe         dc.w       $fffe
005356: 4e75         rts        
005358: 0002ad92     ori.b      #$92, d2
00535c: 0005af20     ori.b      #$20, d5
005360: 0001b278     ori.b      #$78, d1
005364: 000f         .dc.w      $000f
005366: af20         dc.w       $af20
005368: 0007b444     ori.b      #$44, d7
00536c: 0001b808     ori.b      #$8, d1
005370: 000f         .dc.w      $000f
005372: b8dc         cmpa.w     (a4)+, a4
005374: 0007af20     ori.b      #$20, d7
005378: 0002af20     ori.b      #$20, d2
00537c: 0007b444     ori.b      #$44, d7
005380: 00c0         .dc.w      $00c0
005382: b444         cmp.w      d4, d2
005384: 00000000     ori.b      #$0, d0
005388: 00010000     ori.b      #$0, d1
00538c: 00010000     ori.b      #$0, d1
005390: 00000002     ori.b      #$2, d0
005394: 13f8800214300003 move.b     $8002.w, $14300003.l
00539c: bcdc         cmpa.w     (a4)+, a6
00539e: 0022bc86     ori.b      #$86, -(a2)
0053a2: 0023c894     ori.b      #$94, -(a3)
0053a6: 0024bb58     ori.b      #$58, -(a4)
0053aa: 00250856     ori.b      #$56, -(a5)
0053ae: 00262570     ori.b      #$70, -(a6)
0053b2: 000425b0     ori.b      #$b0, d4
0053b6: 8004         or.b       d4, d0
0053b8: 25c2         .dc.w      $25c2
0053ba: 0005b94a     ori.b      #$4a, d5
0053be: 0006ba52     ori.b      #$52, d6
0053c2: 0007c454     ori.b      #$54, d7
0053c6: 0008         .dc.w      $0008
0053c8: 1bf6         .dc.w      $1bf6
0053ca: 0009         .dc.w      $0009
0053cc: 1d16         move.b     (a6), -(a6)
0053ce: 000a         .dc.w      $000a
0053d0: 1d5c800a     move.b     (a4)+, -$7ff6(a6)
0053d4: 1d6e000dca66 move.b     $d(a6), -$359a(a6)
0053da: 000c         .dc.w      $000c
0053dc: caa0         and.l      -(a0), d5
0053de: 000e         .dc.w      $000e
0053e0: cb3c         .dc.w      $cb3c
0053e2: 00161ea8     ori.b      #$a8, (a6)
0053e6: 00151fce     ori.b      #$ce, (a5)
0053ea: 00201f3a     ori.b      #$3a, -(a0)
0053ee: 001207a8     ori.b      #$a8, (a2)
0053f2: 8012         or.b       (a2), d0
0053f4: 07aa0013     bclr.b     d3, $13(a2)
0053f8: 06f6         .dc.w      $06f6
0053fa: 8013         or.b       (a3), d0
0053fc: 06f6         dc.w       $6f6
0053fe: 0014074e     ori.b      #$4e, (a4)
005402: 8014         or.b       (a4), d0
005404: 074e0018     movep.l    $18(a6), d3
005408: 16fa0019     move.b     $5423(pc), (a3)+
00540c: c436001a     and.b      $1a(a6, d0.w), d2
005410: 174a         .dc.w      $174a
005412: 001f1762     ori.b      #$62, (a7)+
005416: 001b1778     ori.b      #$78, (a3)+
00541a: 001cca7c     ori.b      #$7c, (a4)+
00541e: 001d13d4     ori.b      #$d4, (a5)+
005422: 801d         or.b       (a5)+, d0
005424: 13d0802f1796 move.b     (a0), $802f1796.l
00542a: 80301800     or.b       (a0, d1.l), d0
00542e: 803117e88037 or.b       $8037(invalid.w), d0
005434: 17ba804bbd50 move.b     $ffffd481(pc), (a3, invalid.w)
00543a: 804c         .dc.w      $804c
00543c: 25dc         .dc.w      $25dc
00543e: 000011d4     ori.b      #$d4, d0
005442: 8000         or.b       d0, d0
005444: 11ac0010185e move.b     $10(a4), $5e(a0, d1.l)
00544a: 001118e8     ori.b      #$e8, (a1)
00544e: 8011         or.b       (a1), d0
005450: 18e4         move.b     -(a4), (a4)+
005452: 001723a8     ori.b      #$a8, (a7)
005456: 0028c3808028 ori.b      #$80, -$7fd8(a0)
00545c: c326         and.b      d1, -(a6)
00545e: 005cc390     ori.w      #$c390, (a4)+
005462: 805c         or.w       (a4)+, d0
005464: c36a0029     and.w      d1, $29(a2)
005468: c3a4         and.l      d1, -(a4)
00546a: 8029c394     or.b       -$3c6c(a1), d0
00546e: 802cc4c2     or.b       -$3b3e(a4), d0
005472: 802dc598     or.b       -$3a68(a5), d0
005476: 802e219a     or.b       $219a(a6), d0
00547a: 8032fe8a     or.b       -$76(a2, a7.l), d0
00547e: 803815e6     or.b       $15e6.w, d0
005482: 804e         .dc.w      $804e
005484: 1260         .dc.w      $1260
005486: 802a1932     or.b       $1932(a2), d0
00548a: 001ec6b4     ori.b      #$b4, (a6)+
00548e: 00212068     ori.b      #$68, -(a1)
005492: 8021         or.b       -(a1), d0
005494: 0fa80027     bclr.b     d7, $27(a0)
005498: ca98         and.l      (a0)+, d5
00549a: 0052c948     ori.w      #$c948, (a2)
00549e: 005308aa     ori.w      #$8aa, (a3)
0054a2: 00541fa0     ori.w      #$1fa0, (a4)
0054a6: 0055cbc2     ori.w      #$cbc2, (a5)
0054aa: 00571c42     ori.w      #$1c42, (a7)
0054ae: 005afea0     ori.w      #$fea0, (a2)+
0054b2: 005600ae     ori.w      #$ae, (a6)
0054b6: 8056         or.w       (a6), d0
0054b8: 00ea         .dc.w      $00ea
0054ba: 0058c39c     ori.w      #$c39c, (a0)+
0054be: 003a         .dc.w      $003a
0054c0: c398         and.l      d1, (a0)+
0054c2: 003b         .dc.w      $003b
0054c4: c394         and.l      d1, (a4)
0054c6: 0040bb58     ori.w      #$bb58, d0
0054ca: 0059bcb6     ori.w      #$bcb6, (a1)+
0054ce: 0060c2a0     ori.w      #$c2a0, -(a0)
0054d2: 000113f0     ori.b      #$f0, d1
0054d6: 8001         or.b       d1, d0
0054d8: 13ec000f19b2802b move.b     $f(a4), $19b2802b.l
0054e0: 109a         move.b     (a2)+, (a0)
0054e2: 80330294     or.b       -$6c(a3, d0.w), d0
0054e6: 008002ce0081 ori.l      #$2ce0081, d0
0054ec: 0500         btst.l     d2, d0
0054ee: 00820bae0083 ori.l      #$bae0083, d2
0054f4: 0c120084     cmpi.b     #$84, (a2)
0054f8: 0c0e         .dc.w      $0c0e
0054fa: 00850c460086 ori.l      #$c460086, d5
005500: 0c8c         .dc.w      $0c8c
005502: 00870cd80088 ori.l      #$cd80088, d7
005508: 0dc4         bset.b     d6, d4
00550a: 0089         .dc.w      $0089
00550c: 0dce008a     movep.l    d6, $8a(a6)
005510: 0e20         .dc.w      $0e20
005512: 008b         .dc.w      $008b
005514: 0dc6         bset.b     d6, d6
005516: 008c         .dc.w      $008c
005518: 0e18         .dc.w      $0e18
00551a: 008d         .dc.w      $008d
00551c: 0e58         .dc.w      $0e58
00551e: 008e         .dc.w      $008e
005520: 0dac008f     bclr.b     d6, $8f(a4)
005524: 0f22         btst.l     d7, -(a2)
005526: 00920ece8082 ori.l      #$ece8082, (a2)
00552c: 0b9e         bclr.b     d5, (a6)+
00552e: 8083         or.l       d3, d0
005530: 0bf68084     bset.b     d5, -$7c(a6, a0.w)
005534: 0bf28085     bset.b     d5, -$7b(a2, a0.w)
005538: 0c0a         .dc.w      $0c0a
00553a: 8086         or.l       d6, d0
00553c: 0c508087     cmpi.w     #$8087, (a0)
005540: 0c9c80880d8c cmpi.l     #$80880d8c, (a4)+
005546: 8089         .dc.w      $8089
005548: 0dce808a     movep.l    d6, -$7f76(a6)
00554c: 0e24         .dc.w      $0e24
00554e: 808b         .dc.w      $808b
005550: 0dc6         bset.b     d6, d6
005552: 808c         .dc.w      $808c
005554: 0e1c         .dc.w      $0e1c
005556: 808d         .dc.w      $808d
005558: 0e22         .dc.w      $0e22
00555a: 808e         .dc.w      $808e
00555c: 0d74808f     bchg.b     d6, -$71(a4, a0.w)
005560: 0ef6         .dc.w      $0ef6
005562: ffff         dc.w       $ffff
005564: 48e72090     movem.l    d2/a0/a3, -(a7)
005568: 4fefffb8     lea.l      -$48(a7), a7
00556c: 204f         movea.l    a7, a0
00556e: 266e03a4     movea.l    $3a4(a6), a3
005572: 216b00200042 move.l     $20(a3), $42(a0)
005578: 216b0420002c move.l     $420(a3), $2c(a0)
00557e: 42680000     clr.w      $0(a0)
005582: 316c00000002 move.w     $0(a4), $2(a0)
005588: 21420004     move.l     d2, $4(a0)
00558c: 7400         moveq      #$0, d2
00558e: 6114         bsr.b      $55a4
005590: 4fef0048     lea.l      $48(a7), a7
005594: 4cdf0904     movem.l    (a7)+, d2/a0/a3
005598: 4e75         rts        
00559a: 004000aa     ori.w      #$aa, d0
00559e: 00ac00e600f2d241 ori.l      #$e600f2, -$2dbf(a4)
0055a6: b27c000a     cmp.w      #$a, d1
0055aa: 64000e92     bcc.w      $643e
0055ae: 48e738e0     movem.l    d2-d4/a0-a2, -(a7)
0055b2: b27c0000     cmp.w      #$0, d1
0055b6: 6606         bne.b      $55be
0055b8: 487a001a     pea.l      $55d4(pc)
0055bc: 6004         bra.b      $55c2
0055be: 487a000e     pea.l      $55ce(pc)
0055c2: 43faffd6     lea.l      $559a(pc), a1
0055c6: 32311000     move.w     (a1, d1.w), d1
0055ca: 4ef11000     jmp        (a1, d1.w)
0055ce: 6504         bcs.b      $55d4
0055d0: 2b400000     move.l     d0, $0(a5)
0055d4: 4cdf071c     movem.l    (a7)+, d2-d4/a0-a2
0055d8: 4e75         rts        
0055da: 2440         movea.l    d0, a2
0055dc: 4a80         tst.l      d0
0055de: 6618         bne.b      $55f8
0055e0: 4aac0390     tst.l      $390(a4)
0055e4: 6710         beq.b      $55f6
0055e6: 43ec037c     lea.l      $37c(a4), a1
0055ea: 6002         bra.b      $55ee
0055ec: 610a         bsr.b      $55f8
0055ee: 24690014     movea.l    $14(a1), a2
0055f2: b3ca         cmpa.l     a2, a1
0055f4: 66f6         bne.b      $55ec
0055f6: 4e75         rts        
0055f8: 0c6ab0bd0000 cmpi.w     #$b0bd, $0(a2)
0055fe: 66001806     bne.w      $6e06
005602: 4a6c0014     tst.w      $14(a4)
005606: 670c         beq.b      $5614
005608: 202c0014     move.l     $14(a4), d0
00560c: b0aa0008     cmp.l      $8(a2), d0
005610: 660017f4     bne.w      $6e06
005614: 426a0000     clr.w      $0(a2)
005618: 48e700c0     movem.l    a0-a1, -(a7)
00561c: 4cea0300000c movem.l    $c(a2), a0-a1
005622: 2348000c     move.l     a0, $c(a1)
005626: 21490010     move.l     a1, $10(a0)
00562a: 4cea03000014 movem.l    $14(a2), a0-a1
005630: 23480014     move.l     a0, $14(a1)
005634: 21490018     move.l     a1, $18(a0)
005638: 4cdf0300     movem.l    (a7)+, a0-a1
00563c: 202a0004     move.l     $4(a2), d0
005640: 6000c1c0     bra.w      $1802
005644: 7200         moveq      #$0, d1
005646: 2003         move.l     d3, d0
005648: 6a08         bpl.b      $5652
00564a: 0880001f     bclr.b     #$1f, d0
00564e: 61001c0c     bsr.w      $725c
005652: 2801         move.l     d1, d4
005654: 670c         beq.b      $5662
005656: 0c8000000001 cmpi.l     #$1, d0
00565c: 650017a8     bcs.w      $6e06
005660: 2800         move.l     d0, d4
005662: 2600         move.l     d0, d3
005664: 610000a2     bsr.w      $5708
005668: 6514         bcs.b      $567e
00566a: d6ae0054     add.l      $54(a6), d3
00566e: 25430020     move.l     d3, $20(a2)
005672: 2544001c     move.l     d4, $1c(a2)
005676: 41ee077c     lea.l      $77c(a6), a0
00567a: 200a         move.l     a2, d0
00567c: 6038         bra.b      $56b6
00567e: 4e75         rts        
005680: 2003         move.l     d3, d0
005682: 2204         move.l     d4, d1
005684: 61001cac     bsr.w      $7332
005688: 2600         move.l     d0, d3
00568a: 2801         move.l     d1, d4
00568c: b8ae0030     cmp.l      $30(a6), d4
005690: 65001774     bcs.w      $6e06
005694: 6210         bhi.b      $56a6
005696: 203c00015180 move.l     #$15180, d0
00569c: 90ae0034     sub.l      $34(a6), d0
0056a0: b680         cmp.l      d0, d3
0056a2: 65001762     bcs.w      $6e06
0056a6: 6160         bsr.b      $5708
0056a8: 655c         bcs.b      $5706
0056aa: 48ea00180020 movem.l    d3-d4, $20(a2)
0056b0: 41ee0774     lea.l      $774(a6), a0
0056b4: 200a         move.l     a2, d0
0056b6: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
0056ba: 4cea00030020 movem.l    $20(a2), d0-d1
0056c0: 40c2         move.w     sr, d2
0056c2: 007c0700     ori.w      #$700, sr
0056c6: 2068000c     movea.l    $c(a0), a0
0056ca: b1ef000c     cmpa.l     $c(a7), a0
0056ce: 670e         beq.b      $56de
0056d0: b2a80024     cmp.l      $24(a0), d1
0056d4: 62f0         bhi.b      $56c6
0056d6: 6506         bcs.b      $56de
0056d8: b0a80020     cmp.l      $20(a0), d0
0056dc: 64e8         bcc.b      $56c6
0056de: 22680010     movea.l    $10(a0), a1
0056e2: 48ea0300000c movem.l    a0-a1, $c(a2)
0056e8: 214a0010     move.l     a2, $10(a0)
0056ec: 234a000c     move.l     a2, $c(a1)
0056f0: 46c2         move.w     d2, sr
0056f2: 206e0050     movea.l    $50(a6), a0
0056f6: 0c2800200020 cmpi.b     #$20, $20(a0)
0056fc: 6604         bne.b      $5702
0056fe: 6100c234     bsr.w      $1934
005702: 4cdf0307     movem.l    (a7)+, d0-d2/a0-a1
005706: 4e75         rts        
005708: 48e780c0     movem.l    d0/a0-a1, -(a7)
00570c: 203c00000074 move.l     #$74, d0
005712: 6100c07e     bsr.w      $1792
005716: 655c         bcs.b      $5774
005718: 357cb0bd0000 move.w     #$b0bd, $0(a2)
00571e: 356c00000002 move.w     $0(a4), $2(a2)
005724: 25400004     move.l     d0, $4(a2)
005728: 256c00140008 move.l     $14(a4), $8(a2)
00572e: 41ec037c     lea.l      $37c(a4), a0
005732: 4aac0390     tst.l      $390(a4)
005736: 6608         bne.b      $5740
005738: 21480014     move.l     a0, $14(a0)
00573c: 21480018     move.l     a0, $18(a0)
005740: 22680018     movea.l    $18(a0), a1
005744: 48ea03000014 movem.l    a0-a1, $14(a2)
00574a: 234a0014     move.l     a2, $14(a1)
00574e: 214a0018     move.l     a2, $18(a0)
005752: 42aa001c     clr.l      $1c(a2)
005756: 42aa0020     clr.l      $20(a2)
00575a: 42aa0024     clr.l      $24(a2)
00575e: 42aa0028     clr.l      $28(a2)
005762: 206f0004     movea.l    $4(a7), a0
005766: 43ea002c     lea.l      $2c(a2), a1
00576a: 7047         moveq      #$47, d0
00576c: e248         lsr.w      #$1, d0
00576e: 32d8         move.w     (a0)+, (a1)+
005770: 51c8fffc     dbra       d0, $576e
005774: 4cdf0301     movem.l    (a7)+, d0/a0-a1
005778: 4e75         rts        
00577a: 246e0020     movea.l    $20(a6), a2
00577e: 322a0036     move.w     $36(a2), d1
005782: 246e0080     movea.l    $80(a6), a2
005786: 601c         bra.b      $57a4
005788: 4aaa0008     tst.l      $8(a2)
00578c: 6712         beq.b      $57a0
00578e: b1ea0008     cmpa.l     $8(a2), a0
005792: 671a         beq.b      $57ae
005794: b1ea0000     cmpa.l     $0(a2), a0
005798: 6714         beq.b      $57ae
00579a: b1ea000c     cmpa.l     $c(a2), a0
00579e: 670e         beq.b      $57ae
0057a0: 45ea0012     lea.l      $12(a2), a2
0057a4: 51c9ffe2     dbra       d1, $5788
0057a8: 023c         .dc.w      $023c
0057aa: fffe         dc.w       $fffe
0057ac: 4e75         rts        
0057ae: 323c00d1     move.w     #$d1, d1
0057b2: 003c0001     ori.b      #$1, ccr
0057b6: 4e75         rts        
0057b8: 720a         moveq      #$a, d1
0057ba: 42a7         clr.l      -(a7)
0057bc: 51c9fffc     dbra       d1, $57ba
0057c0: 2f4d0024     move.l     a5, $24(a7)
0057c4: 1f6d00030014 move.b     $3(a5), $14(a7)
0057ca: 206d0020     movea.l    $20(a5), a0
0057ce: 0c10002f     cmpi.b     #$2f, (a0)
0057d2: 6602         bne.b      $57d6
0057d4: 5288         addq.l     #$1, a0
0057d6: 303c0f00     move.w     #$f00, d0
0057da: 61000e28     bsr.w      $6604
0057de: 654e         bcs.b      $582e
0057e0: 2f4a0008     move.l     a2, $8(a7)
0057e4: 2f480028     move.l     a0, $28(a7)
0057e8: 2f6a00300016 move.l     $30(a2), $16(a7)
0057ee: 302a003a     move.w     $3a(a2), d0
0057f2: 41f20000     lea.l      (a2, d0.w), a0
0057f6: 303c0e00     move.w     #$e00, d0
0057fa: 61000e08     bsr.w      $6604
0057fe: 652e         bcs.b      $582e
005800: 2f4a0000     move.l     a2, $0(a7)
005804: 4a6a0008     tst.w      $8(a2)
005808: 6620         bne.b      $582a
00580a: 246f0008     movea.l    $8(a7), a2
00580e: 302a0038     move.w     $38(a2), d0
005812: 41f20000     lea.l      (a2, d0.w), a0
005816: 303c0d00     move.w     #$d00, d0
00581a: 61000de8     bsr.w      $6604
00581e: 650e         bcs.b      $582e
005820: 2f4a000c     move.l     a2, $c(a7)
005824: 4a6a0008     tst.w      $8(a2)
005828: 6732         beq.b      $585c
00582a: 323c00a4     move.w     #$a4, d1
00582e: 3f41002a     move.w     d1, $2a(a7)
005832: 244f         movea.l    a7, a2
005834: 4e40         trap       #$0
005836: 00814fef002a ori.l      #$4fef002a, d1
00583c: 321f         move.w     (a7)+, d1
00583e: 003c0001     ori.b      #$1, ccr
005842: 4e75         rts        
005844: 3f7c00cb002a move.w     #$cb, $2a(a7)
00584a: 246f001a     movea.l    $1a(a7), a2
00584e: 60e4         bra.b      $5834
005850: 323c00cc     move.w     #$cc, d1
005854: 60d8         bra.b      $582e
005856: 323c00ed     move.w     #$ed, d1
00585a: 60d2         bra.b      $582e
00585c: 206e0020     movea.l    $20(a6), a0
005860: 32280036     move.w     $36(a0), d1
005864: 3001         move.w     d1, d0
005866: 246e0080     movea.l    $80(a6), a2
00586a: 262a0008     move.l     $8(a2), d3
00586e: 674a         beq.b      $58ba
005870: b6af0008     cmp.l      $8(a7), d3
005874: 661e         bne.b      $5894
005876: 4aaa0004     tst.l      $4(a2)
00587a: 6614         bne.b      $5890
00587c: 48e7c000     movem.l    d0-d1, -(a7)
005880: 302a0010     move.w     $10(a2), d0
005884: 6704         beq.b      $588a
005886: 61000cf4     bsr.w      $657c
00588a: 4cdf0003     movem.l    (a7)+, d0-d1
00588e: 60da         bra.b      $586a
005890: 2f4a001a     move.l     a2, $1a(a7)
005894: 206a0008     movea.l    $8(a2), a0
005898: 22680030     movea.l    $30(a0), a1
00589c: b3ef0016     cmpa.l     $16(a7), a1
0058a0: 6618         bne.b      $58ba
0058a2: 206a0000     movea.l    $0(a2), a0
0058a6: b1ef0000     cmpa.l     $0(a7), a0
0058aa: 660e         bne.b      $58ba
0058ac: 2f6a00040004 move.l     $4(a2), $4(a7)
0058b2: 4a6a0010     tst.w      $10(a2)
0058b6: 57ef0015     seq.b      $15(a7)
0058ba: 45ea0012     lea.l      $12(a2), a2
0058be: 5341         subq.w     #$1, d1
0058c0: 66a8         bne.b      $586a
0058c2: 246f001a     movea.l    $1a(a7), a2
0058c6: 4aaf001a     tst.l      $1a(a7)
0058ca: 660000ec     bne.w      $59b8
0058ce: 246e0080     movea.l    $80(a6), a2
0058d2: 45eaffee     lea.l      -$12(a2), a2
0058d6: 5340         subq.w     #$1, d0
0058d8: 45ea0012     lea.l      $12(a2), a2
0058dc: 4aaa0008     tst.l      $8(a2)
0058e0: 57c8fff6     dbeq       d0, $58d8
0058e4: 6600ff6a     bne.w      $5850
0058e8: 206f0004     movea.l    $4(a7), a0
0058ec: 2008         move.l     a0, d0
0058ee: 660000bc     bne.w      $59ac
0058f2: 2f4a001a     move.l     a2, $1a(a7)
0058f6: 206f0000     movea.l    $0(a7), a0
0058fa: 20280038     move.l     $38(a0), d0
0058fe: 6700ff56     beq.w      $5856
005902: 6100beb2     bsr.w      $17b6
005906: 6500ff26     bcs.w      $582e
00590a: 2f4a0004     move.l     a2, $4(a7)
00590e: 256f00160000 move.l     $16(a7), $0(a2)
005914: 226f0008     movea.l    $8(a7), a1
005918: 206f0000     movea.l    $0(a7), a0
00591c: 24280030     move.l     $30(a0), d2
005920: 34302000     move.w     (a0, d2.w), d2
005924: 2f2c0140     move.l     $140(a4), -(a7)
005928: 2f2c0144     move.l     $144(a4), -(a7)
00592c: 48e7000a     movem.l    a4/a6, -(a7)
005930: 294f0140     move.l     a7, $140(a4)
005934: 487a0030     pea.l      $5966(pc)
005938: 29570144     move.l     (a7), $144(a4)
00593c: 082e000703e0 btst.b     #$7, $3e0(a6)
005942: 661e         bne.b      $5962
005944: 4a2e03e1     tst.b      $3e1(a6)
005948: 6618         bne.b      $5962
00594a: 7002         moveq      #$2, d0
00594c: 2f0b         move.l     a3, -(a7)
00594e: 266e03a4     movea.l    $3a4(a6), a3
005952: 487a000c     pea.l      $5960(pc)
005956: 2f2b0168     move.l     $168(a3), -(a7)
00595a: 266b0568     movea.l    $568(a3), a3
00595e: 4e75         rts        
005960: 265f         movea.l    (a7)+, a3
005962: 4ef02000     jmp        (a0, d2.w)
005966: 40c0         move.w     sr, d0
005968: 4cdf5000     movem.l    (a7)+, a4/a6
00596c: 295f0144     move.l     (a7)+, $144(a4)
005970: 295f0140     move.l     (a7)+, $140(a4)
005974: 48e7c000     movem.l    d0-d1, -(a7)
005978: 082e000703e0 btst.b     #$7, $3e0(a6)
00597e: 661e         bne.b      $599e
005980: 4a2e03e1     tst.b      $3e1(a6)
005984: 6618         bne.b      $599e
005986: 7005         moveq      #$5, d0
005988: 2f0b         move.l     a3, -(a7)
00598a: 266e03a4     movea.l    $3a4(a6), a3
00598e: 487a000c     pea.l      $599c(pc)
005992: 2f2b0168     move.l     $168(a3), -(a7)
005996: 266b0568     movea.l    $568(a3), a3
00599a: 4e75         rts        
00599c: 265f         movea.l    (a7)+, a3
00599e: 4cdf0003     movem.l    (a7)+, d0-d1
0059a2: 44c0         move.w     d0, ccr
0059a4: 6500fe88     bcs.w      $582e
0059a8: 246f001a     movea.l    $1a(a7), a2
0059ac: 7211         moveq      #$11, d1
0059ae: 15b718001800 move.b     (a7, d1.l), (a2, d1.l)
0059b4: 51c9fff8     dbra       d1, $59ae
0059b8: 526a0010     addq.w     #$1, $10(a2)
0059bc: 6404         bcc.b      $59c2
0059be: 536a0010     subq.w     #$1, $10(a2)
0059c2: 206a0008     movea.l    $8(a2), a0
0059c6: 12280037     move.b     $37(a0), d1
0059ca: 102f0014     move.b     $14(a7), d0
0059ce: c200         and.b      d0, d1
0059d0: b101         eor.b      d0, d1
0059d2: 020100bf     andi.b     #$bf, d1
0059d6: 6600fe6c     bne.w      $5844
0059da: 2a6f0024     movea.l    $24(a7), a5
0059de: 2b6f00280020 move.l     $28(a7), $20(a5)
0059e4: 2b4a0028     move.l     a2, $28(a5)
0059e8: 4fef002c     lea.l      $2c(a7), a7
0059ec: 4e75         rts        
0059ee: 206a0008     movea.l    $8(a2), a0
0059f2: 4aaa0004     tst.l      $4(a2)
0059f6: 670000cc     beq.w      $5ac4
0059fa: 4a6a0010     tst.w      $10(a2)
0059fe: 6708         beq.b      $5a08
005a00: 536a0010     subq.w     #$1, $10(a2)
005a04: 620000ca     bhi.w      $5ad0
005a08: 206e0020     movea.l    $20(a6), a0
005a0c: 32280036     move.w     $36(a0), d1
005a10: 5341         subq.w     #$1, d1
005a12: 48e74020     movem.l    d1/a2, -(a7)
005a16: 206a0004     movea.l    $4(a2), a0
005a1a: 42aa0004     clr.l      $4(a2)
005a1e: 226e0080     movea.l    $80(a6), a1
005a22: b1e90004     cmpa.l     $4(a1), a0
005a26: 67000098     beq.w      $5ac0
005a2a: 43e90012     lea.l      $12(a1), a1
005a2e: 51c9fff2     dbra       d1, $5a22
005a32: 356c00000010 move.w     $0(a4), $10(a2)
005a38: 226a0008     movea.l    $8(a2), a1
005a3c: 246a0000     movea.l    $0(a2), a2
005a40: c14a         exg.l      a0, a2
005a42: 740a         moveq      #$a, d2
005a44: d4a80030     add.l      $30(a0), d2
005a48: 34302800     move.w     (a0, d2.l), d2
005a4c: 48e7002a     movem.l    a2/a4/a6, -(a7)
005a50: 082e000703e0 btst.b     #$7, $3e0(a6)
005a56: 661e         bne.b      $5a76
005a58: 4a2e03e1     tst.b      $3e1(a6)
005a5c: 6618         bne.b      $5a76
005a5e: 7002         moveq      #$2, d0
005a60: 2f0b         move.l     a3, -(a7)
005a62: 266e03a4     movea.l    $3a4(a6), a3
005a66: 487a000c     pea.l      $5a74(pc)
005a6a: 2f2b0168     move.l     $168(a3), -(a7)
005a6e: 266b0568     movea.l    $568(a3), a3
005a72: 4e75         rts        
005a74: 265f         movea.l    (a7)+, a3
005a76: 4eb02000     jsr        (a0, d2.w)
005a7a: 082e000703e0 btst.b     #$7, $3e0(a6)
005a80: 661e         bne.b      $5aa0
005a82: 4a2e03e1     tst.b      $3e1(a6)
005a86: 6618         bne.b      $5aa0
005a88: 7005         moveq      #$5, d0
005a8a: 2f0b         move.l     a3, -(a7)
005a8c: 266e03a4     movea.l    $3a4(a6), a3
005a90: 487a000c     pea.l      $5a9e(pc)
005a94: 2f2b0168     move.l     $168(a3), -(a7)
005a98: 266b0568     movea.l    $568(a3), a3
005a9c: 4e75         rts        
005a9e: 265f         movea.l    (a7)+, a3
005aa0: 4cdf5400     movem.l    (a7)+, a2/a4/a6
005aa4: 206f0004     movea.l    $4(a7), a0
005aa8: 20680000     movea.l    $0(a0), a0
005aac: 20280038     move.l     $38(a0), d0
005ab0: 222e0070     move.l     $70(a6), d1
005ab4: d081         add.l      d1, d0
005ab6: 5380         subq.l     #$1, d0
005ab8: 4481         neg.l      d1
005aba: c081         and.l      d1, d0
005abc: 6100bd44     bsr.w      $1802
005ac0: 4cdf0402     movem.l    (a7)+, d1/a2
005ac4: 206a0008     movea.l    $8(a2), a0
005ac8: 42aa0008     clr.l      $8(a2)
005acc: 426a0010     clr.w      $10(a2)
005ad0: 2208         move.l     a0, d1
005ad2: 6718         beq.b      $5aec
005ad4: 226a0000     movea.l    $0(a2), a1
005ad8: 246a000c     movea.l    $c(a2), a2
005adc: 61000cec     bsr.w      $67ca
005ae0: 2449         movea.l    a1, a2
005ae2: 61000ce6     bsr.w      $67ca
005ae6: 2448         movea.l    a0, a2
005ae8: 61000ce0     bsr.w      $67ca
005aec: 60000a66     bra.w      $6554
005af0: 6120         bsr.b      $5b12
005af2: 651c         bcs.b      $5b10
005af4: 617e         bsr.b      $5b74
005af6: 8118         or.b       d0, (a0)+
005af8: 70ff         moveq      #$ff, d0
005afa: 1401         move.b     d1, d2
005afc: e649         lsr.w      #$3, d1
005afe: 6002         bra.b      $5b02
005b00: 10c0         move.b     d0, (a0)+
005b02: 51c9fffc     dbra       d1, $5b00
005b06: c47c0007     and.w      #$7, d2
005b0a: e428         lsr.b      d2, d0
005b0c: 4600         not.b      d0
005b0e: 8110         or.b       d0, (a0)
005b10: 4e75         rts        
005b12: c0bc0000ffff and.l      #$ffff, d0
005b18: c2bc0000ffff and.l      #$ffff, d1
005b1e: 48e7c020     movem.l    d0-d1/a2, -(a7)
005b22: 2448         movea.l    a0, a2
005b24: d081         add.l      d1, d0
005b26: e688         lsr.l      #$3, d0
005b28: 7202         moveq      #$2, d1
005b2a: 2f0b         move.l     a3, -(a7)
005b2c: 266e03a4     movea.l    $3a4(a6), a3
005b30: 487a000c     pea.l      $5b3e(pc)
005b34: 2f2b0160     move.l     $160(a3), -(a7)
005b38: 266b0560     movea.l    $560(a3), a3
005b3c: 4e75         rts        
005b3e: 265f         movea.l    (a7)+, a3
005b40: 6408         bcc.b      $5b4a
005b42: 2f410004     move.l     d1, $4(a7)
005b46: 003c0001     ori.b      #$1, ccr
005b4a: 4cdf0403     movem.l    (a7)+, d0-d1/a2
005b4e: 4e75         rts        
005b50: 61c0         bsr.b      $5b12
005b52: 651e         bcs.b      $5b72
005b54: 611e         bsr.b      $5b74
005b56: 4600         not.b      d0
005b58: c118         and.b      d0, (a0)+
005b5a: 7000         moveq      #$0, d0
005b5c: 1401         move.b     d1, d2
005b5e: e649         lsr.w      #$3, d1
005b60: 6002         bra.b      $5b64
005b62: 10c0         move.b     d0, (a0)+
005b64: 51c9fffc     dbra       d1, $5b62
005b68: 70ff         moveq      #$ff, d0
005b6a: c47c0007     and.w      #$7, d2
005b6e: e428         lsr.b      d2, d0
005b70: c110         and.b      d0, (a0)
005b72: 4e75         rts        
005b74: 3400         move.w     d0, d2
005b76: e64a         lsr.w      #$3, d2
005b78: d0c2         adda.w     d2, a0
005b7a: 02400007     andi.w     #$7, d0
005b7e: 7408         moveq      #$8, d2
005b80: 9440         sub.w      d0, d2
005b82: 7000         moveq      #$0, d0
005b84: 05c0         bset.b     d2, d0
005b86: 9242         sub.w      d2, d1
005b88: 6504         bcs.b      $5b8e
005b8a: 5340         subq.w     #$1, d0
005b8c: 600a         bra.b      $5b98
005b8e: 7400         moveq      #$0, d2
005b90: 4441         neg.w      d1
005b92: 03c2         bset.b     d1, d2
005b94: 9042         sub.w      d2, d0
005b96: 7200         moveq      #$0, d1
005b98: 4e75         rts        
005b9a: 6100ff76     bsr.w      $5b12
005b9e: 65f8         bcs.b      $5b98
005ba0: 3401         move.w     d1, d2
005ba2: 3c00         move.w     d0, d6
005ba4: 3640         movea.w    d0, a3
005ba6: 7600         moveq      #$0, d3
005ba8: 3440         movea.w    d0, a2
005baa: 7a00         moveq      #$0, d5
005bac: 1800         move.b     d0, d4
005bae: 4604         not.b      d4
005bb0: c87c0007     and.w      #$7, d4
005bb4: e648         lsr.w      #$3, d0
005bb6: d0c0         adda.w     d0, a0
005bb8: 6022         bra.b      $5bdc
005bba: 1018         move.b     (a0)+, d0
005bbc: 5246         addq.w     #$1, d6
005bbe: 0900         btst.l     d4, d0
005bc0: 6706         beq.b      $5bc8
005bc2: 3646         movea.w    d6, a3
005bc4: 7600         moveq      #$0, d3
005bc6: 600e         bra.b      $5bd6
005bc8: 5243         addq.w     #$1, d3
005bca: b645         cmp.w      d5, d3
005bcc: 6308         bls.b      $5bd6
005bce: 3a03         move.w     d3, d5
005bd0: 344b         movea.w    a3, a2
005bd2: ba42         cmp.w      d2, d5
005bd4: 6410         bcc.b      $5be6
005bd6: 51ccffe4     dbra       d4, $5bbc
005bda: 7807         moveq      #$7, d4
005bdc: b1c9         cmpa.l     a1, a0
005bde: 65da         bcs.b      $5bba
005be0: 3205         move.w     d5, d1
005be2: 003c0001     ori.b      #$1, ccr
005be6: 40e7         move.w     sr, -(a7)
005be8: 426d0000     clr.w      $0(a5)
005bec: 3b4a0002     move.w     a2, $2(a5)
005bf0: 2b450004     move.l     d5, $4(a5)
005bf4: 4e77         rtr        
005bf6: 2d4a004c     move.l     a2, $4c(a6)
005bfa: 6108         bsr.b      $5c04
005bfc: 40e7         move.w     sr, -(a7)
005bfe: 2d4c004c     move.l     a4, $4c(a6)
005c02: 4e77         rtr        
005c04: 48e71800     movem.l    d3-d4, -(a7)
005c08: 0882000f     bclr.b     #$f, d2
005c0c: 660a         bne.b      $5c18
005c0e: 3f7c04000002 move.w     #$400, $2(a7)
005c14: 42af0004     clr.l      $4(a7)
005c18: 610010a8     bsr.w      $6cc2
005c1c: 650000fc     bcs.w      $5d1a
005c20: 7600         moveq      #$0, d3
005c22: 3601         move.w     d1, d3
005c24: 2648         movea.l    a0, a3
005c26: 2049         movea.l    a1, a0
005c28: 6100108e     bsr.w      $6cb8
005c2c: 640000e8     bcc.w      $5d16
005c30: 2b480020     move.l     a0, $20(a5)
005c34: 703b         moveq      #$3b, d0
005c36: d043         add.w      d3, d0
005c38: d0ad0000     add.l      $0(a5), d0
005c3c: 222f0004     move.l     $4(a7), d1
005c40: 2f0b         move.l     a3, -(a7)
005c42: 266e03a4     movea.l    $3a4(a6), a3
005c46: 487a000c     pea.l      $5c54(pc)
005c4a: 2f2b0170     move.l     $170(a3), -(a7)
005c4e: 266b0570     movea.l    $570(a3), a3
005c52: 4e75         rts        
005c54: 265f         movea.l    (a7)+, a3
005c56: 650000c2     bcs.w      $5d1a
005c5a: 224a         movea.l    a2, a1
005c5c: 2400         move.l     d0, d2
005c5e: 5382         subq.l     #$1, d2
005c60: e48a         lsr.l      #$2, d2
005c62: 7200         moveq      #$0, d1
005c64: 24c1         move.l     d1, (a2)+
005c66: 51cafffc     dbra       d2, $5c64
005c6a: 5242         addq.w     #$1, d2
005c6c: 5382         subq.l     #$1, d2
005c6e: 64f4         bcc.b      $5c64
005c70: 337c4afc0000 move.w     #$4afc, $0(a1)
005c76: 337c00010002 move.w     #$1, $2(a1)
005c7c: 23400004     move.l     d0, $4(a1)
005c80: 9083         sub.l      d3, d0
005c82: 5b80         subq.l     #$5, d0
005c84: 08800000     bclr.b     #$0, d0
005c88: 2340000c     move.l     d0, $c(a1)
005c8c: 236c00140008 move.l     $14(a4), $8(a1)
005c92: 302d000a     move.w     $a(a5), d0
005c96: 0880000f     bclr.b     #$f, d0
005c9a: 33400010     move.w     d0, $10(a1)
005c9e: 336f00020012 move.w     $2(a7), $12(a1)
005ca4: 336d00060014 move.w     $6(a5), $14(a1)
005caa: 337c00010016 move.w     #$1, $16(a1)
005cb0: 7234         moveq      #$34, d1
005cb2: 23410030     move.l     d1, $30(a1)
005cb6: 204b         movea.l    a3, a0
005cb8: 2403         move.l     d3, d2
005cba: 2449         movea.l    a1, a2
005cbc: d5e9000c     adda.l     $c(a1), a2
005cc0: 61000da6     bsr.w      $6a68
005cc4: 2049         movea.l    a1, a0
005cc6: 2449         movea.l    a1, a2
005cc8: 7401         moveq      #$1, d2
005cca: 610009ec     bsr.w      $66b8
005cce: 6550         bcs.b      $5d20
005cd0: 61001c50     bsr.w      $7922
005cd4: 2008         move.l     a0, d0
005cd6: 22280004     move.l     $4(a0), d1
005cda: 6100194a     bsr.w      $7626
005cde: 6540         bcs.b      $5d20
005ce0: 206a0000     movea.l    $0(a2), a0
005ce4: 7000         moveq      #$0, d0
005ce6: 7200         moveq      #$0, d1
005ce8: 30280012     move.w     $12(a0), d0
005cec: 32280014     move.w     $14(a0), d1
005cf0: 48ed00030000 movem.l    d0-d1, $0(a5)
005cf6: 082d00050040 btst.b     #$5, $40(a5)
005cfc: 6704         beq.b      $5d02
005cfe: 286e0050     movea.l    $50(a6), a4
005d02: 6100091e     bsr.w      $6622
005d06: 286e004c     movea.l    $4c(a6), a4
005d0a: 6506         bcs.b      $5d12
005d0c: 48ed06000024 movem.l    a1-a2, $24(a5)
005d12: 508f         addq.l     #$8, a7
005d14: 4e75         rts        
005d16: 323c00eb     move.w     #$eb, d1
005d1a: 003c0001     ori.b      #$1, ccr
005d1e: 60f2         bra.b      $5d12
005d20: 2448         movea.l    a0, a2
005d22: 3f01         move.w     d1, -(a7)
005d24: 202a0004     move.l     $4(a2), d0
005d28: 6100bad8     bsr.w      $1802
005d2c: 321f         move.w     (a7)+, d1
005d2e: 003c0001     ori.b      #$1, ccr
005d32: 60de         bra.b      $5d12
005d34: 003c         .dc.w      $003c
005d36: 029001060054 andi.l     #$1060054, (a0)
005d3c: 01f401c4     bset.b     d0, (invalid.w)
005d40: 02a002ac02ea andi.l     #$2ac02ea, -(a0)
005d46: 034a035c     movep.l    $35c(a2), d1
005d4a: 0364         bchg.b     d1, -(a4)
005d4c: 43faffe6     lea.l      $5d34(pc), a1
005d50: d241         add.w      d1, d1
005d52: 55c4         scs.b      d4
005d54: b27c0018     cmp.w      #$18, d1
005d58: 640006e4     bcc.w      $643e
005d5c: 32311000     move.w     (a1, d1.w), d1
005d60: 40c6         move.w     sr, d6
005d62: 4eb11000     jsr        (a1, d1.w)
005d66: 6404         bcc.b      $5d6c
005d68: 00460001     ori.w      #$1, d6
005d6c: 46c6         move.w     d6, sr
005d6e: 4e75         rts        
005d70: 615a         bsr.b      $5dcc
005d72: 6512         bcs.b      $5d86
005d74: 526a0016     addq.w     #$1, $16(a2)
005d78: 6404         bcc.b      $5d7e
005d7a: 536a0016     subq.w     #$1, $16(a2)
005d7e: 2b400000     move.l     d0, $0(a5)
005d82: 2b480020     move.l     a0, $20(a5)
005d86: 4e75         rts        
005d88: 6142         bsr.b      $5dcc
005d8a: 653e         bcs.b      $5dca
005d8c: 0c6a00010016 cmpi.w     #$1, $16(a2)
005d92: 6400015a     bcc.w      $5eee
005d96: 2b480020     move.l     a0, $20(a5)
005d9a: 47eaffe8     lea.l      -$18(a2), a3
005d9e: 260b         move.l     a3, d3
005da0: 266b0030     movea.l    $30(a3), a3
005da4: 601c         bra.b      $5dc2
005da6: 2a6b0008     movea.l    $8(a3), a5
005daa: 006d0001001a ori.w      #$1, $1a(a5)
005db0: 2b7c000000a70004 move.l     #$a7, $4(a5)
005db8: 204b         movea.l    a3, a0
005dba: 266b0030     movea.l    $30(a3), a3
005dbe: 6100bb74     bsr.w      $1934
005dc2: b68b         cmp.l      a3, d3
005dc4: 66e0         bne.b      $5da6
005dc6: 426a0000     clr.w      $0(a2)
005dca: 4e75         rts        
005dcc: 48e71840     movem.l    d3-d4/a1, -(a7)
005dd0: 9683         sub.l      d3, d3
005dd2: 61000eee     bsr.w      $6cc2
005dd6: 6556         bcs.b      $5e2e
005dd8: 2401         move.l     d1, d2
005dda: 246e03cc     movea.l    $3cc(a6), a2
005dde: 282e03d0     move.l     $3d0(a6), d4
005de2: 988a         sub.l      a2, d4
005de4: ea8c         lsr.l      #$5, d4
005de6: b47c000b     cmp.w      #$b, d2
005dea: 633a         bls.b      $5e26
005dec: 323c00eb     move.w     #$eb, d1
005df0: 603c         bra.b      $5e2e
005df2: 4a6a0000     tst.w      $0(a2)
005df6: 6724         beq.b      $5e1c
005df8: 43ea0002     lea.l      $2(a2), a1
005dfc: 2202         move.l     d2, d1
005dfe: 61000f36     bsr.w      $6d36
005e02: 651e         bcs.b      $5e22
005e04: d0c2         adda.w     d2, a0
005e06: 4cdf0218     movem.l    (a7)+, d3-d4/a1
005e0a: 200a         move.l     a2, d0
005e0c: 90ae03cc     sub.l      $3cc(a6), d0
005e10: ea88         lsr.l      #$5, d0
005e12: 4840         swap       d0
005e14: 302a0000     move.w     $0(a2), d0
005e18: 4840         swap       d0
005e1a: 4e75         rts        
005e1c: 4a83         tst.l      d3
005e1e: 6602         bne.b      $5e22
005e20: 260a         move.l     a2, d3
005e22: 45ea0020     lea.l      $20(a2), a2
005e26: 51ccffca     dbra       d4, $5df2
005e2a: 323c00a8     move.w     #$a8, d1
005e2e: 2443         movea.l    d3, a2
005e30: 4cdf0218     movem.l    (a7)+, d3-d4/a1
005e34: 003c0001     ori.b      #$1, ccr
005e38: 4e75         rts        
005e3a: 6190         bsr.b      $5dcc
005e3c: 640000b0     bcc.w      $5eee
005e40: b27c00a8     cmp.w      #$a8, d1
005e44: 660000ac     bne.w      $5ef2
005e48: 200a         move.l     a2, d0
005e4a: 6654         bne.b      $5ea0
005e4c: 206e03cc     movea.l    $3cc(a6), a0
005e50: 202e03d0     move.l     $3d0(a6), d0
005e54: 9088         sub.l      a0, d0
005e56: 007c0700     ori.w      #$700, sr
005e5a: 610018fa     bsr.w      $7756
005e5e: 65000092     bcs.w      $5ef2
005e62: 222e03cc     move.l     $3cc(a6), d1
005e66: b2ae03d0     cmp.l      $3d0(a6), d1
005e6a: 48ee030003cc movem.l    a0-a1, $3cc(a6)
005e70: 672e         beq.b      $5ea0
005e72: 9288         sub.l      a0, d1
005e74: 43f018e8     lea.l      -$18(a0, d1.l), a1
005e78: b3e80018     cmpa.l     $18(a0), a1
005e7c: 660a         bne.b      $5e88
005e7e: 93a80018     sub.l      d1, $18(a0)
005e82: 93a8001c     sub.l      d1, $1c(a0)
005e86: 6010         bra.b      $5e98
005e88: 2268001c     movea.l    $1c(a0), a1
005e8c: 93a90030     sub.l      d1, $30(a1)
005e90: 22680018     movea.l    $18(a0), a1
005e94: 93a90034     sub.l      d1, $34(a1)
005e98: 41e80020     lea.l      $20(a0), a0
005e9c: b1ca         cmpa.l     a2, a0
005e9e: 65d4         bcs.b      $5e74
005ea0: 526e03d4     addq.w     #$1, $3d4(a6)
005ea4: 67fa         beq.b      $5ea0
005ea6: 356e03d40000 move.w     $3d4(a6), $0(a2)
005eac: 206d0020     movea.l    $20(a5), a0
005eb0: 43ea0002     lea.l      $2(a2), a1
005eb4: 5342         subq.w     #$1, d2
005eb6: 12d8         move.b     (a0)+, (a1)+
005eb8: 51cafffc     dbra       d2, $5eb6
005ebc: 4211         clr.b      (a1)
005ebe: 256d0000000e move.l     $0(a5), $e(a2)
005ec4: 356d000a0012 move.w     $a(a5), $12(a2)
005eca: 35430014     move.w     d3, $14(a2)
005ece: 43eaffe8     lea.l      -$18(a2), a1
005ed2: 25490018     move.l     a1, $18(a2)
005ed6: 2549001c     move.l     a1, $1c(a2)
005eda: 357c00010016 move.w     #$1, $16(a2)
005ee0: 6100ff28     bsr.w      $5e0a
005ee4: 2b400000     move.l     d0, $0(a5)
005ee8: 2b480020     move.l     a0, $20(a5)
005eec: 4e75         rts        
005eee: 323c00a9     move.w     #$a9, d1
005ef2: 003c0001     ori.b      #$1, ccr
005ef6: 4e75         rts        
005ef8: 610000a4     bsr.w      $5f9e
005efc: 65000094     bcs.w      $5f92
005f00: d4aa000e     add.l      $e(a2), d2
005f04: 680a         bvc.b      $5f10
005f06: 74ff         moveq      #$ff, d2
005f08: e292         roxr.l     #$1, d2
005f0a: 6a04         bpl.b      $5f10
005f0c: e28a         lsr.l      #$1, d2
005f0e: 4682         not.l      d2
005f10: d6aa000e     add.l      $e(a2), d3
005f14: 680a         bvc.b      $5f20
005f16: 76ff         moveq      #$ff, d3
005f18: e293         roxr.l     #$1, d3
005f1a: 6a04         bpl.b      $5f20
005f1c: e28b         lsr.l      #$1, d3
005f1e: 4683         not.l      d3
005f20: 48ed000c0008 movem.l    d2-d3, $8(a5)
005f26: 6004         bra.b      $5f2c
005f28: 6174         bsr.b      $5f9e
005f2a: 6566         bcs.b      $5f92
005f2c: b682         cmp.l      d2, d3
005f2e: 6d64         blt.b      $5f94
005f30: b4aa000e     cmp.l      $e(a2), d2
005f34: 6e06         bgt.b      $5f3c
005f36: b6aa000e     cmp.l      $e(a2), d3
005f3a: 6c36         bge.b      $5f72
005f3c: 2b6a000e0004 move.l     $e(a2), $4(a5)
005f42: 08ac00070371 bclr.b     #$7, $371(a4)
005f48: 6706         beq.b      $5f50
005f4a: 4a6c0026     tst.w      $26(a4)
005f4e: 6642         bne.b      $5f92
005f50: 206a001c     movea.l    $1c(a2), a0
005f54: 29480034     move.l     a0, $34(a4)
005f58: 296800300030 move.l     $30(a0), $30(a4)
005f5e: 254c001c     move.l     a4, $1c(a2)
005f62: 214c0030     move.l     a4, $30(a0)
005f66: 197c00650020 move.b     #$65, $20(a4)
005f6c: 3206         move.w     d6, d1
005f6e: 600012be     bra.w      $722e
005f72: 342a0012     move.w     $12(a2), d2
005f76: 48c2         ext.l      d2
005f78: d4aa000e     add.l      $e(a2), d2
005f7c: 680a         bvc.b      $5f88
005f7e: 74ff         moveq      #$ff, d2
005f80: e292         roxr.l     #$1, d2
005f82: 6a04         bpl.b      $5f88
005f84: e28a         lsr.l      #$1, d2
005f86: 4682         not.l      d2
005f88: 2b6a000e0004 move.l     $e(a2), $4(a5)
005f8e: 2542000e     move.l     d2, $e(a2)
005f92: 4e75         rts        
005f94: 323c00aa     move.w     #$aa, d1
005f98: 003c0001     ori.b      #$1, ccr
005f9c: 4e75         rts        
005f9e: 246e03cc     movea.l    $3cc(a6), a2
005fa2: 222e03d0     move.l     $3d0(a6), d1
005fa6: 928a         sub.l      a2, d1
005fa8: 48c0         ext.l      d0
005faa: eb80         asl.l      #$5, d0
005fac: b041         cmp.w      d1, d0
005fae: 645a         bcc.b      $600a
005fb0: d5c0         adda.l     d0, a2
005fb2: 007c0700     ori.w      #$700, sr
005fb6: 302a0000     move.w     $0(a2), d0
005fba: 674e         beq.b      $600a
005fbc: b06d0000     cmp.w      $0(a5), d0
005fc0: 6648         bne.b      $600a
005fc2: 4e75         rts        
005fc4: 61d8         bsr.b      $5f9e
005fc6: 650a         bcs.b      $5fd2
005fc8: 536a0016     subq.w     #$1, $16(a2)
005fcc: 6404         bcc.b      $5fd2
005fce: 426a0016     clr.w      $16(a2)
005fd2: 4e75         rts        
005fd4: 61c8         bsr.b      $5f9e
005fd6: 6506         bcs.b      $5fde
005fd8: 2b6a000e0004 move.l     $e(a2), $4(a5)
005fde: 4e75         rts        
005fe0: 246e03cc     movea.l    $3cc(a6), a2
005fe4: 262e03d0     move.l     $3d0(a6), d3
005fe8: 968a         sub.l      a2, d3
005fea: ea8b         lsr.l      #$5, d3
005fec: 9640         sub.w      d0, d3
005fee: 631a         bls.b      $600a
005ff0: 5343         subq.w     #$1, d3
005ff2: 7200         moveq      #$0, d1
005ff4: 3200         move.w     d0, d1
005ff6: eb81         asl.l      #$5, d1
005ff8: d5c1         adda.l     d1, a2
005ffa: 7420         moveq      #$20, d2
005ffc: 4a6a0000     tst.w      $0(a2)
006000: 6612         bne.b      $6014
006002: 5240         addq.w     #$1, d0
006004: d5c2         adda.l     d2, a2
006006: 51cbfff4     dbra       d3, $5ffc
00600a: 323c00a7     move.w     #$a7, d1
00600e: 003c0001     ori.b      #$1, ccr
006012: 4e75         rts        
006014: 2b400000     move.l     d0, $0(a5)
006018: c14a         exg.l      a0, a2
00601a: 60000a4c     bra.w      $6a68
00601e: 6100ff7e     bsr.w      $5f9e
006022: 6558         bcs.b      $607c
006024: 342a0014     move.w     $14(a2), d2
006028: 48c2         ext.l      d2
00602a: d4aa000e     add.l      $e(a2), d2
00602e: 680a         bvc.b      $603a
006030: 74ff         moveq      #$ff, d2
006032: e292         roxr.l     #$1, d2
006034: 6a04         bpl.b      $603a
006036: e28a         lsr.l      #$1, d2
006038: 4682         not.l      d2
00603a: 2b6a000e0004 move.l     $e(a2), $4(a5)
006040: 2542000e     move.l     d2, $e(a2)
006044: 47eaffe8     lea.l      -$18(a2), a3
006048: 260b         move.l     a3, d3
00604a: 6028         bra.b      $6074
00604c: 2a6b0008     movea.l    $8(a3), a5
006050: 2a6d0034     movea.l    $34(a5), a5
006054: b4ad0008     cmp.l      $8(a5), d2
006058: 6d1a         blt.b      $6074
00605a: b4ad000c     cmp.l      $c(a5), d2
00605e: 6e14         bgt.b      $6074
006060: 204b         movea.l    a3, a0
006062: 266b0030     movea.l    $30(a3), a3
006066: 6100ff0a     bsr.w      $5f72
00606a: 6100b8c8     bsr.w      $1934
00606e: 4a04         tst.b      d4
006070: 6606         bne.b      $6078
006072: 4e75         rts        
006074: 266b0030     movea.l    $30(a3), a3
006078: b68b         cmp.l      a3, d3
00607a: 66d0         bne.b      $604c
00607c: 4e75         rts        
00607e: 6100ff1e     bsr.w      $5f9e
006082: 65f8         bcs.b      $607c
006084: 2a2a000e     move.l     $e(a2), d5
006088: 61b0         bsr.b      $603a
00608a: 2545000e     move.l     d5, $e(a2)
00608e: 4e75         rts        
006090: 6100ff0c     bsr.w      $5f9e
006094: 64a4         bcc.b      $603a
006096: 4e75         rts        
006098: 6100ff04     bsr.w      $5f9e
00609c: 648c         bcc.b      $602a
00609e: 4e75         rts        
0060a0: 6142         bsr.b      $60e4
0060a2: 653e         bcs.b      $60e2
0060a4: 48e78080     movem.l    d0/a0, -(a7)
0060a8: 302d0002     move.w     $2(a5), d0
0060ac: e348         lsl.w      #$1, d0
0060ae: 30300000     move.w     (a0, d0.w), d0
0060b2: 6118         bsr.b      $60cc
0060b4: 6510         bcs.b      $60c6
0060b6: 4cdf0102     movem.l    (a7)+, d1/a0
0060ba: 2b410000     move.l     d1, $0(a5)
0060be: e349         lsl.w      #$1, d1
0060c0: 31801000     move.w     d0, (a0, d1.w)
0060c4: 4e75         rts        
0060c6: 4cdf0101     movem.l    (a7)+, d0/a0
0060ca: 4e75         rts        
0060cc: 61000afe     bsr.w      $6bcc
0060d0: 6510         bcs.b      $60e2
0060d2: 5269001a     addq.w     #$1, $1a(a1)
0060d6: 1369001b0003 move.b     $1b(a1), $3(a1)
0060dc: 6604         bne.b      $60e2
0060de: 52290003     addq.b     #$1, $3(a1)
0060e2: 4e75         rts        
0060e4: 41ec0168     lea.l      $168(a4), a0
0060e8: 701f         moveq      #$1f, d0
0060ea: 4a58         tst.w      (a0)+
0060ec: 57c8fffc     dbeq       d0, $60ea
0060f0: 6708         beq.b      $60fa
0060f2: 323c00c8     move.w     #$c8, d1
0060f6: 003c0001     ori.b      #$1, ccr
0060fa: 40e7         move.w     sr, -(a7)
0060fc: 4440         neg.w      d0
0060fe: 0640001f     addi.w     #$1f, d0
006102: 41ec0168     lea.l      $168(a4), a0
006106: 4e77         rtr        
006108: 61da         bsr.b      $60e4
00610a: 651a         bcs.b      $6126
00610c: 48e78084     movem.l    d0/a0/a5, -(a7)
006110: 6116         bsr.b      $6128
006112: 4cdf2101     movem.l    (a7)+, d0/a0/a5
006116: 650e         bcs.b      $6126
006118: 322d0002     move.w     $2(a5), d1
00611c: 2b400000     move.l     d0, $0(a5)
006120: e340         asl.w      #$1, d0
006122: 31810000     move.w     d1, (a0, d0.w)
006126: 4e75         rts        
006128: 122d0003     move.b     $3(a5), d1
00612c: 610000b8     bsr.w      $61e6
006130: 6510         bcs.b      $6142
006132: 61000356     bsr.w      $648a
006136: 651e         bcs.b      $6156
006138: 7000         moveq      #$0, d0
00613a: 30290000     move.w     $0(a1), d0
00613e: 2b400000     move.l     d0, $0(a5)
006142: 4e75         rts        
006144: 02000005     andi.b     #$5, d0
006148: 7282         moveq      #$82, d1
00614a: 8200         or.b       d0, d1
00614c: 61000098     bsr.w      $61e6
006150: 65f0         bcs.b      $6142
006152: 61000336     bsr.w      $648a
006156: 40e7         move.w     sr, -(a7)
006158: 3f01         move.w     d1, -(a7)
00615a: 24690004     movea.l    $4(a1), a2
00615e: 206a0004     movea.l    $4(a2), a0
006162: 41e8fff4     lea.l      -$c(a0), a0
006166: 2008         move.l     a0, d0
006168: 2040         movea.l    d0, a0
00616a: 20280016     move.l     $16(a0), d0
00616e: 670a         beq.b      $617a
006170: b089         cmp.l      a1, d0
006172: 66f4         bne.b      $6168
006174: 216900160016 move.l     $16(a1), $16(a0)
00617a: 4e40         trap       #$0
00617c: 008130290000 ori.l      #$30290000, d1
006182: 206e0048     movea.l    $48(a6), a0
006186: 61000a92     bsr.w      $6c1a
00618a: 321f         move.w     (a7)+, d1
00618c: 4e77         rtr        
00618e: 122d0003     move.b     $3(a5), d1
006192: 00010080     ori.b      #$80, d1
006196: 614e         bsr.b      $61e6
006198: 65a8         bcs.b      $6142
00619a: 610002ee     bsr.w      $648a
00619e: 65b6         bcs.b      $6156
0061a0: 12290002     move.b     $2(a1), d1
0061a4: 02010003     andi.b     #$3, d1
0061a8: 6712         beq.b      $61bc
0061aa: 20690004     movea.l    $4(a1), a0
0061ae: 29480148     move.l     a0, $148(a4)
0061b2: 52680010     addq.w     #$1, $10(a0)
0061b6: 6404         bcc.b      $61bc
0061b8: 53680010     subq.w     #$1, $10(a0)
0061bc: 12290002     move.b     $2(a1), d1
0061c0: c23c0004     and.b      #$4, d1
0061c4: 6712         beq.b      $61d8
0061c6: 20690004     movea.l    $4(a1), a0
0061ca: 29480158     move.l     a0, $158(a4)
0061ce: 52680010     addq.w     #$1, $10(a0)
0061d2: 6404         bcc.b      $61d8
0061d4: 53680010     subq.w     #$1, $10(a0)
0061d8: 4201         clr.b      d1
0061da: 6000ff7a     bra.w      $6156
0061de: 122d0003     move.b     $3(a5), d1
0061e2: 6000ff68     bra.w      $614c
0061e6: 48e7000c     movem.l    a4-a5, -(a7)
0061ea: 206e0048     movea.l    $48(a6), a0
0061ee: 61000a50     bsr.w      $6c40
0061f2: 6500009e     bcs.w      $6292
0061f6: 5269001a     addq.w     #$1, $1a(a1)
0061fa: 52290003     addq.b     #$1, $3(a1)
0061fe: 13410002     move.b     d1, $2(a1)
006202: 236c00140012 move.l     $14(a4), $12(a1)
006208: 206d0020     movea.l    $20(a5), a0
00620c: 0c10002f     cmpi.b     #$2f, (a0)
006210: 671c         beq.b      $622e
006212: 02010004     andi.b     #$4, d1
006216: 6706         beq.b      $621e
006218: 206c0158     movea.l    $158(a4), a0
00621c: 6004         bra.b      $6222
00621e: 206c0148     movea.l    $148(a4), a0
006222: 2008         move.l     a0, d0
006224: 6772         beq.b      $6298
006226: 20680008     movea.l    $8(a0), a0
00622a: d1e8000c     adda.l     $c(a0), a0
00622e: 10290002     move.b     $2(a1), d0
006232: 4e40         trap       #$0
006234: 00806564234a ori.l      #$6564234a, d0
00623a: 0004206a     ori.b      #$6a, d4
00623e: 0008         .dc.w      $0008
006240: 10280037     move.b     $37(a0), d0
006244: 80290002     or.b       $2(a1), d0
006248: 206a0004     movea.l    $4(a2), a0
00624c: 08000006     btst.b     #$6, d0
006250: 6716         beq.b      $6268
006252: 08000007     btst.b     #$7, d0
006256: 6610         bne.b      $6268
006258: 4aa8000a     tst.l      $a(a0)
00625c: 670a         beq.b      $6268
00625e: 4e40         trap       #$0
006260: 0081323c00fd ori.l      #$323c00fd, d1
006266: 6034         bra.b      $629c
006268: 2368000a0016 move.l     $a(a0), $16(a1)
00626e: 2149000a     move.l     a1, $a(a0)
006272: 206a0008     movea.l    $8(a2), a0
006276: 41e80046     lea.l      $46(a0), a0
00627a: 3218         move.w     (a0)+, d1
00627c: 45e90080     lea.l      $80(a1), a2
006280: 0c410080     cmpi.w     #$80, d1
006284: 6304         bls.b      $628a
006286: 727f         moveq      #$7f, d1
006288: 14d8         move.b     (a0)+, (a2)+
00628a: 51c9fffc     dbra       d1, $6288
00628e: 023c         .dc.w      $023c
006290: fffe         dc.w       $fffe
006292: 4cdf3000     movem.l    (a7)+, a4-a5
006296: 4e75         rts        
006298: 323c00d7     move.w     #$d7, d1
00629c: 3f01         move.w     d1, -(a7)
00629e: 30290000     move.w     $0(a1), d0
0062a2: 206e0048     movea.l    $48(a6), a0
0062a6: 61000972     bsr.w      $6c1a
0062aa: 321f         move.w     (a7)+, d1
0062ac: 003c0001     ori.b      #$1, ccr
0062b0: 60e0         bra.b      $6292
0062b2: 0c400020     cmpi.w     #$20, d0
0062b6: 640c         bcc.b      $62c4
0062b8: e340         asl.w      #$1, d0
0062ba: 41ec0168     lea.l      $168(a4), a0
0062be: 30300000     move.w     (a0, d0.w), d0
0062c2: 6608         bne.b      $62cc
0062c4: 323c00c9     move.w     #$c9, d1
0062c8: 003c0001     ori.b      #$1, ccr
0062cc: 4e75         rts        
0062ce: 61e2         bsr.b      $62b2
0062d0: 6508         bcs.b      $62da
0062d2: 610008f8     bsr.w      $6bcc
0062d6: 640001b2     bcc.w      $648a
0062da: 4e75         rts        
0062dc: 2448         movea.l    a0, a2
0062de: 2001         move.l     d1, d0
0062e0: 7202         moveq      #$2, d1
0062e2: 2f0b         move.l     a3, -(a7)
0062e4: 266e03a4     movea.l    $3a4(a6), a3
0062e8: 487a000c     pea.l      $62f6(pc)
0062ec: 2f2b0160     move.l     $160(a3), -(a7)
0062f0: 266b0560     movea.l    $560(a3), a3
0062f4: 4e75         rts        
0062f6: 265f         movea.l    (a7)+, a3
0062f8: 651c         bcs.b      $6316
0062fa: 202d0000     move.l     $0(a5), d0
0062fe: 61b2         bsr.b      $62b2
006300: 6514         bcs.b      $6316
006302: 6114         bsr.b      $6318
006304: 6510         bcs.b      $6316
006306: 222d0004     move.l     $4(a5), d1
00630a: d3ac02cc     add.l      d1, $2cc(a4)
00630e: 6406         bcc.b      $6316
006310: 72ff         moveq      #$ff, d1
006312: 294102cc     move.l     d1, $2cc(a4)
006316: 4e75         rts        
006318: 7205         moveq      #$5, d1
00631a: 610008b0     bsr.w      $6bcc
00631e: 6510         bcs.b      $6330
006320: c2290002     and.b      $2(a1), d1
006324: 66000164     bne.w      $648a
006328: 323c00cb     move.w     #$cb, d1
00632c: 003c0001     ori.b      #$1, ccr
006330: 4e75         rts        
006332: 2448         movea.l    a0, a2
006334: 2001         move.l     d1, d0
006336: 7201         moveq      #$1, d1
006338: 2f0b         move.l     a3, -(a7)
00633a: 266e03a4     movea.l    $3a4(a6), a3
00633e: 487a000c     pea.l      $634c(pc)
006342: 2f2b0160     move.l     $160(a3), -(a7)
006346: 266b0560     movea.l    $560(a3), a3
00634a: 4e75         rts        
00634c: 265f         movea.l    (a7)+, a3
00634e: 6520         bcs.b      $6370
006350: 202d0000     move.l     $0(a5), d0
006354: 6100ff5c     bsr.w      $62b2
006358: 6516         bcs.b      $6370
00635a: 7202         moveq      #$2, d1
00635c: 61bc         bsr.b      $631a
00635e: 6510         bcs.b      $6370
006360: 222d0004     move.l     $4(a5), d1
006364: d3ac02d0     add.l      d1, $2d0(a4)
006368: 6406         bcc.b      $6370
00636a: 72ff         moveq      #$ff, d1
00636c: 294102d0     move.l     d1, $2d0(a4)
006370: 4e75         rts        
006372: 7202         moveq      #$2, d1
006374: 60a4         bra.b      $631a
006376: 6100ff3a     bsr.w      $62b2
00637a: 657a         bcs.b      $63f6
00637c: 6100084e     bsr.w      $6bcc
006380: 6574         bcs.b      $63f6
006382: b27c0000     cmp.w      #$0, d1
006386: 670a         beq.b      $6392
006388: b27c000e     cmp.w      #$e, d1
00638c: 6722         beq.b      $63b0
00638e: 600000fa     bra.w      $648a
006392: 6110         bsr.b      $63a4
006394: 610000f4     bsr.w      $648a
006398: 645c         bcc.b      $63f6
00639a: b27c00d0     cmp.w      #$d0, d1
00639e: 660000a2     bne.w      $6442
0063a2: 4e75         rts        
0063a4: 41e90080     lea.l      $80(a1), a0
0063a8: 243c00000080 move.l     #$80, d2
0063ae: 6012         bra.b      $63c2
0063b0: 487affe2     pea.l      $6394(pc)
0063b4: 20690004     movea.l    $4(a1), a0
0063b8: 20680008     movea.l    $8(a0), a0
0063bc: d1e8000c     adda.l     $c(a0), a0
0063c0: 7420         moveq      #$20, d2
0063c2: 48e70060     movem.l    a1-a2, -(a7)
0063c6: 246d0020     movea.l    $20(a5), a2
0063ca: 082d00050040 btst.b     #$5, $40(a5)
0063d0: 661c         bne.b      $63ee
0063d2: 2002         move.l     d2, d0
0063d4: 7202         moveq      #$2, d1
0063d6: 2f0b         move.l     a3, -(a7)
0063d8: 266e03a4     movea.l    $3a4(a6), a3
0063dc: 487a000c     pea.l      $63ea(pc)
0063e0: 2f2b0160     move.l     $160(a3), -(a7)
0063e4: 266b0560     movea.l    $560(a3), a3
0063e8: 4e75         rts        
0063ea: 265f         movea.l    (a7)+, a3
0063ec: 6504         bcs.b      $63f2
0063ee: 61000678     bsr.w      $6a68
0063f2: 4cdf0600     movem.l    (a7)+, a1-a2
0063f6: 4e75         rts        
0063f8: 610007d2     bsr.w      $6bcc
0063fc: 65f8         bcs.b      $63f6
0063fe: 3b7c008d003c move.w     #$8d, $3c(a5)
006404: 41faffae     lea.l      $63b4(pc), a0
006408: b27c000e     cmp.w      #$e, d1
00640c: 671c         beq.b      $642a
00640e: b27c0000     cmp.w      #$0, d1
006412: 662a         bne.b      $643e
006414: 41faff8e     lea.l      $63a4(pc), a0
006418: 4a6c0014     tst.w      $14(a4)
00641c: 670c         beq.b      $642a
00641e: 222c0014     move.l     $14(a4), d1
006422: b2a90012     cmp.l      $12(a1), d1
006426: 6600ba9a     bne.w      $1ec2
00642a: 083a00079c56 btst.b     #$7, $82(pc)
006430: 670a         beq.b      $643c
006432: 4a690008     tst.w      $8(a1)
006436: 6604         bne.b      $643c
006438: 487aff5a     pea.l      $6394(pc)
00643c: 4ed0         jmp        (a0)
00643e: 323c00d0     move.w     #$d0, d1
006442: 003c0001     ori.b      #$1, ccr
006446: 4e75         rts        
006448: 6100fe68     bsr.w      $62b2
00644c: 653a         bcs.b      $6488
00644e: 322d0002     move.w     $2(a5), d1
006452: e341         asl.w      #$1, d1
006454: 42701000     clr.w      (a0, d1.w)
006458: 61000772     bsr.w      $6bcc
00645c: 652a         bcs.b      $6488
00645e: 5369001a     subq.w     #$1, $1a(a1)
006462: 1369001b0003 move.b     $1b(a1), $3(a1)
006468: 6606         bne.b      $6470
00646a: 1369001a0003 move.b     $1a(a1), $3(a1)
006470: 4a690008     tst.w      $8(a1)
006474: 6612         bne.b      $6488
006476: 6112         bsr.b      $648a
006478: 40e7         move.w     sr, -(a7)
00647a: 4a69001a     tst.w      $1a(a1)
00647e: 6606         bne.b      $6486
006480: 46df         move.w     (a7)+, sr
006482: 6000fcd2     bra.w      $6156
006486: 46df         move.w     (a7)+, sr
006488: 4e75         rts        
00648a: 48e720e0     movem.l    d2/a0-a2, -(a7)
00648e: 30290008     move.w     $8(a1), d0
006492: 6716         beq.b      $64aa
006494: 610000e6     bsr.w      $657c
006498: 226f0008     movea.l    $8(a7), a1
00649c: 322c0026     move.w     $26(a4), d1
0064a0: 67ec         beq.b      $648e
0064a2: 003c0001     ori.b      #$1, ccr
0064a6: 6000008a     bra.w      $6532
0064aa: 336c00000008 move.w     $0(a4), $8(a1)
0064b0: 336c0000001c move.w     $0(a4), $1c(a1)
0064b6: 234d000a     move.l     a5, $a(a1)
0064ba: 20690004     movea.l    $4(a1), a0
0064be: 2068000c     movea.l    $c(a0), a0
0064c2: d1e80030     adda.l     $30(a0), a0
0064c6: 342d003c     move.w     $3c(a5), d2
0064ca: 04420083     subi.w     #$83, d2
0064ce: e342         asl.w      #$1, d2
0064d0: d0f02000     adda.w     (a0, d2.w), a0
0064d4: 082e000703e0 btst.b     #$7, $3e0(a6)
0064da: 661e         bne.b      $64fa
0064dc: 4a2e03e1     tst.b      $3e1(a6)
0064e0: 6618         bne.b      $64fa
0064e2: 7002         moveq      #$2, d0
0064e4: 2f0b         move.l     a3, -(a7)
0064e6: 266e03a4     movea.l    $3a4(a6), a3
0064ea: 487a000c     pea.l      $64f8(pc)
0064ee: 2f2b0168     move.l     $168(a3), -(a7)
0064f2: 266b0568     movea.l    $568(a3), a3
0064f6: 4e75         rts        
0064f8: 265f         movea.l    (a7)+, a3
0064fa: 48e7000a     movem.l    a4/a6, -(a7)
0064fe: 4e90         jsr        (a0)
006500: 4cdf5000     movem.l    (a7)+, a4/a6
006504: 40e7         move.w     sr, -(a7)
006506: 3f01         move.w     d1, -(a7)
006508: 082e000703e0 btst.b     #$7, $3e0(a6)
00650e: 661e         bne.b      $652e
006510: 4a2e03e1     tst.b      $3e1(a6)
006514: 6618         bne.b      $652e
006516: 7005         moveq      #$5, d0
006518: 2f0b         move.l     a3, -(a7)
00651a: 266e03a4     movea.l    $3a4(a6), a3
00651e: 487a000c     pea.l      $652c(pc)
006522: 2f2b0168     move.l     $168(a3), -(a7)
006526: 266b0568     movea.l    $568(a3), a3
00652a: 4e75         rts        
00652c: 265f         movea.l    (a7)+, a3
00652e: 321f         move.w     (a7)+, d1
006530: 46df         move.w     (a7)+, sr
006532: 40e7         move.w     sr, -(a7)
006534: 3f01         move.w     d1, -(a7)
006536: 611c         bsr.b      $6554
006538: 226f000c     movea.l    $c(a7), a1
00653c: 302c0000     move.w     $0(a4), d0
006540: b0690008     cmp.w      $8(a1), d0
006544: 6604         bne.b      $654a
006546: 42690008     clr.w      $8(a1)
00654a: 321f         move.w     (a7)+, d1
00654c: 46df         move.w     (a7)+, sr
00654e: 4cdf0704     movem.l    (a7)+, d2/a0-a2
006552: 4e75         rts        
006554: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
006558: 302c02d6     move.w     $2d6(a4), d0
00655c: 6718         beq.b      $6576
00655e: 426c02d6     clr.w      $2d6(a4)
006562: 7201         moveq      #$1, d1
006564: 61000a5a     bsr.w      $6fc0
006568: 6100068a     bsr.w      $6bf4
00656c: 426902d4     clr.w      $2d4(a1)
006570: 08ec0005001c bset.b     #$5, $1c(a4)
006576: 4cdf0303     movem.l    (a7)+, d0-d1/a0-a1
00657a: 4e75         rts        
00657c: 48e700e0     movem.l    a0-a2, -(a7)
006580: 61d2         bsr.b      $6554
006582: 61000670     bsr.w      $6bf4
006586: 6564         bcs.b      $65ec
006588: 222c02e0     move.l     $2e0(a4), d1
00658c: 2449         movea.l    a1, a2
00658e: 302902d6     move.w     $2d6(a1), d0
006592: 6712         beq.b      $65a6
006594: 6100065e     bsr.w      $6bf4
006598: 6552         bcs.b      $65ec
00659a: b2a902e0     cmp.l      $2e0(a1), d1
00659e: 63ec         bls.b      $658c
0065a0: 336c000002d4 move.w     $0(a4), $2d4(a1)
0065a6: 394002d6     move.w     d0, $2d6(a4)
0065aa: 396a000002d4 move.w     $0(a2), $2d4(a4)
0065b0: 356c000002d6 move.w     $0(a4), $2d6(a2)
0065b6: 7000         moveq      #$0, d0
0065b8: 61000b8a     bsr.w      $7144
0065bc: 302c02d4     move.w     $2d4(a4), d0
0065c0: 6726         beq.b      $65e8
0065c2: 61000630     bsr.w      $6bf4
0065c6: 6520         bcs.b      $65e8
0065c8: 302902d6     move.w     $2d6(a1), d0
0065cc: 671a         beq.b      $65e8
0065ce: 302c02d6     move.w     $2d6(a4), d0
0065d2: 334002d6     move.w     d0, $2d6(a1)
0065d6: 6710         beq.b      $65e8
0065d8: 426c02d6     clr.w      $2d6(a4)
0065dc: 61000616     bsr.w      $6bf4
0065e0: 6506         bcs.b      $65e8
0065e2: 336c02d402d4 move.w     $2d4(a4), $2d4(a1)
0065e8: 426c02d4     clr.w      $2d4(a4)
0065ec: 4cdf0700     movem.l    (a7)+, a0-a2
0065f0: 4e75         rts        
0065f2: 6110         bsr.b      $6604
0065f4: 650c         bcs.b      $6602
0065f6: 48ed00030000 movem.l    d0-d1, $0(a5)
0065fc: 48ed07000020 movem.l    a0-a2, $20(a5)
006602: 4e75         rts        
006604: 610000f4     bsr.w      $66fa
006608: 65f8         bcs.b      $6602
00660a: 286e0050     movea.l    $50(a6), a4
00660e: 6112         bsr.b      $6622
006610: 286e004c     movea.l    $4c(a6), a4
006614: 4e75         rts        
006616: 487affdc     pea.l      $65f4(pc)
00661a: 610000de     bsr.w      $66fa
00661e: 6402         bcc.b      $6622
006620: 4e75         rts        
006622: 48e7f000     movem.l    d0-d3, -(a7)
006626: 0801000f     btst.b     #$f, d1
00662a: 6606         bne.b      $6632
00662c: 4a6a000c     tst.w      $c(a2)
006630: 6678         bne.b      $66aa
006632: 226a0000     movea.l    $0(a2), a1
006636: 722e         moveq      #$2e, d1
006638: e249         lsr.w      #$1, d1
00663a: 74ff         moveq      #$ff, d2
00663c: 7600         moveq      #$0, d3
00663e: 3019         move.w     (a1)+, d0
006640: d640         add.w      d0, d3
006642: e67b         ror.w      d3, d3
006644: b142         eor.w      d0, d2
006646: 51c9fff6     dbra       d1, $663e
00664a: 6658         bne.b      $66a4
00664c: b66a000e     cmp.w      $e(a2), d3
006650: 6652         bne.b      $66a4
006652: 224a         movea.l    a2, a1
006654: 246a0000     movea.l    $0(a2), a2
006658: 7405         moveq      #$5, d2
00665a: 615c         bsr.b      $66b8
00665c: 6550         bcs.b      $66ae
00665e: 08010001     btst.b     #$1, d1
006662: 6706         beq.b      $666a
006664: 123c0007     move.b     #$7, d1
006668: 6004         bra.b      $666e
00666a: 123c0005     move.b     #$5, d1
00666e: 202a0004     move.l     $4(a2), d0
006672: 2f0b         move.l     a3, -(a7)
006674: 266e03a4     movea.l    $3a4(a6), a3
006678: 487a000c     pea.l      $6686(pc)
00667c: 2f2b00e8     move.l     $e8(a3), -(a7)
006680: 266b04e8     movea.l    $4e8(a3), a3
006684: 4e75         rts        
006686: 265f         movea.l    (a7)+, a3
006688: 6524         bcs.b      $66ae
00668a: 5269000c     addq.w     #$1, $c(a1)
00668e: 6404         bcc.b      $6694
006690: 5369000c     subq.w     #$1, $c(a1)
006694: 224a         movea.l    a2, a1
006696: d3ea0030     adda.l     $30(a2), a1
00669a: 023c         .dc.w      $023c
00669c: fffe         dc.w       $fffe
00669e: 4cdf000f     movem.l    (a7)+, d0-d3
0066a2: 4e75         rts        
0066a4: 323c00ec     move.w     #$ec, d1
0066a8: 6004         bra.b      $66ae
0066aa: 323c00d1     move.w     #$d1, d1
0066ae: 3f410006     move.w     d1, $6(a7)
0066b2: 003c0001     ori.b      #$1, ccr
0066b6: 60e6         bra.b      $669e
0066b8: 48e7a000     movem.l    d0/d2, -(a7)
0066bc: 202c0014     move.l     $14(a4), d0
0066c0: 322a0010     move.w     $10(a2), d1
0066c4: b0aa0008     cmp.l      $8(a2), d0
0066c8: 6710         beq.b      $66da
0066ca: 4840         swap       d0
0066cc: 4a40         tst.w      d0
0066ce: 670a         beq.b      $66da
0066d0: e849         lsr.w      #$4, d1
0066d2: b06a0008     cmp.w      $8(a2), d0
0066d6: 6702         beq.b      $66da
0066d8: e849         lsr.w      #$4, d1
0066da: c401         and.b      d1, d2
0066dc: 4cdf0005     movem.l    (a7)+, d0/d2
0066e0: 6700b7e0     beq.w      $1ec2
0066e4: 4e75         rts        
0066e6: 6112         bsr.b      $66fa
0066e8: 650e         bcs.b      $66f8
0066ea: 48ed00030000 movem.l    d0-d1, $0(a5)
0066f0: 2b480020     move.l     a0, $20(a5)
0066f4: 2b4a0028     move.l     a2, $28(a5)
0066f8: 4e75         rts        
0066fa: 95ca         suba.l     a2, a2
0066fc: 48e7f0e0     movem.l    d0-d3/a0-a2, -(a7)
006700: 610005c0     bsr.w      $6cc2
006704: 655a         bcs.b      $6760
006706: 246e003c     movea.l    $3c(a6), a2
00670a: 2601         move.l     d1, d3
00670c: 4aaa0000     tst.l      $0(a2)
006710: 660c         bne.b      $671e
006712: 4aaf0018     tst.l      $18(a7)
006716: 663a         bne.b      $6752
006718: 2f4a0018     move.l     a2, $18(a7)
00671c: 6034         bra.b      $6752
00671e: 226a0000     movea.l    $0(a2), a1
006722: d3e9000c     adda.l     $c(a1), a1
006726: 2203         move.l     d3, d1
006728: 6100060c     bsr.w      $6d36
00672c: 6524         bcs.b      $6752
00672e: 226a0000     movea.l    $0(a2), a1
006732: 10290012     move.b     $12(a1), d0
006736: 14290013     move.b     $13(a1), d2
00673a: 4a2f0002     tst.b      $2(a7)
00673e: 6706         beq.b      $6746
006740: b02f0002     cmp.b      $2(a7), d0
006744: 660c         bne.b      $6752
006746: 4a2f0003     tst.b      $3(a7)
00674a: 671e         beq.b      $676a
00674c: b42f0003     cmp.b      $3(a7), d2
006750: 6718         beq.b      $676a
006752: 45ea0010     lea.l      $10(a2), a2
006756: b5ee0040     cmpa.l     $40(a6), a2
00675a: 65b0         bcs.b      $670c
00675c: 323c00dd     move.w     #$dd, d1
006760: 3f410006     move.w     d1, $6(a7)
006764: 003c0001     ori.b      #$1, ccr
006768: 601e         bra.b      $6788
00676a: 426f0000     clr.w      $0(a7)
00676e: 3f6900120002 move.w     $12(a1), $2(a7)
006774: 426f0004     clr.w      $4(a7)
006778: 3f6900140006 move.w     $14(a1), $6(a7)
00677e: d0c1         adda.w     d1, a0
006780: 2f480010     move.l     a0, $10(a7)
006784: 2f4a0018     move.l     a2, $18(a7)
006788: 4cdf070f     movem.l    (a7)+, d0-d3/a0-a2
00678c: 4e75         rts        
00678e: 7030         moveq      #$30, d0
006790: 7201         moveq      #$1, d1
006792: 2f0b         move.l     a3, -(a7)
006794: 266e03a4     movea.l    $3a4(a6), a3
006798: 487a000c     pea.l      $67a6(pc)
00679c: 2f2b0160     move.l     $160(a3), -(a7)
0067a0: 266b0560     movea.l    $560(a3), a3
0067a4: 4e75         rts        
0067a6: 265f         movea.l    (a7)+, a3
0067a8: 651e         bcs.b      $67c8
0067aa: 202a0004     move.l     $4(a2), d0
0067ae: 611a         bsr.b      $67ca
0067b0: 6516         bcs.b      $67c8
0067b2: 2f0b         move.l     a3, -(a7)
0067b4: 266e03a4     movea.l    $3a4(a6), a3
0067b8: 487a000c     pea.l      $67c6(pc)
0067bc: 2f2b00ec     move.l     $ec(a3), -(a7)
0067c0: 266b04ec     movea.l    $4ec(a3), a3
0067c4: 4e75         rts        
0067c6: 265f         movea.l    (a7)+, a3
0067c8: 4e75         rts        
0067ca: 48e700a0     movem.l    a0/a2, -(a7)
0067ce: 204a         movea.l    a2, a0
0067d0: 246e003c     movea.l    $3c(a6), a2
0067d4: b1ea0000     cmpa.l     $0(a2), a0
0067d8: 6714         beq.b      $67ee
0067da: 45ea0010     lea.l      $10(a2), a2
0067de: b5ee0040     cmpa.l     $40(a6), a2
0067e2: 65f0         bcs.b      $67d4
0067e4: 323c00dd     move.w     #$dd, d1
0067e8: 003c0001     ori.b      #$1, ccr
0067ec: 6002         bra.b      $67f0
0067ee: 6132         bsr.b      $6822
0067f0: 4cdf0500     movem.l    (a7)+, a0/a2
0067f4: 4e75         rts        
0067f6: 6100ff02     bsr.w      $66fa
0067fa: 6512         bcs.b      $680e
0067fc: 2248         movea.l    a0, a1
0067fe: 206a0000     movea.l    $0(a2), a0
006802: 20280004     move.l     $4(a0), d0
006806: 611a         bsr.b      $6822
006808: 6504         bcs.b      $680e
00680a: 2b490020     move.l     a1, $20(a5)
00680e: 4e75         rts        
006810: 206a0000     movea.l    $0(a2), a0
006814: 613e         bsr.b      $6854
006816: 4aaa0000     tst.l      $0(a2)
00681a: 6704         beq.b      $6820
00681c: 003c0001     ori.b      #$1, ccr
006820: 4e75         rts        
006822: 2f02         move.l     d2, -(a7)
006824: 7405         moveq      #$5, d2
006826: c14a         exg.l      a0, a2
006828: 6100fe8e     bsr.w      $66b8
00682c: c548         exg.l      a2, a0
00682e: 4cdf0004     movem.l    (a7)+, d2
006832: 651e         bcs.b      $6852
006834: 536a000c     subq.w     #$1, $c(a2)
006838: 6218         bhi.b      $6852
00683a: 6510         bcs.b      $684c
00683c: 082800060014 btst.b     #$6, $14(a0)
006842: 6708         beq.b      $684c
006844: 082e0002002e btst.b     #$2, $2e(a6)
00684a: 6706         beq.b      $6852
00684c: 426a000c     clr.w      $c(a2)
006850: 6002         bra.b      $6854
006852: 4e75         rts        
006854: 48e780e0     movem.l    d0/a0-a2, -(a7)
006858: 0c28000d0012 cmpi.b     #$d, $12(a0)
00685e: 650e         bcs.b      $686e
006860: 4e40         trap       #$0
006862: 00336408357c0001000c ori.b      #$8, $1000c(a3, invalid.w)
00686c: 6052         bra.b      $68c0
00686e: 226a0004     movea.l    $4(a2), a1
006872: 206e003c     movea.l    $3c(a6), a0
006876: b3e80004     cmpa.l     $4(a0), a1
00687a: 6606         bne.b      $6882
00687c: 4a68000c     tst.w      $c(a0)
006880: 663e         bne.b      $68c0
006882: 41e80010     lea.l      $10(a0), a0
006886: b1ee0040     cmpa.l     $40(a6), a0
00688a: 65ea         bcs.b      $6876
00688c: 206e003c     movea.l    $3c(a6), a0
006890: 202a0008     move.l     $8(a2), d0
006894: 222a0004     move.l     $4(a2), d1
006898: b3e80004     cmpa.l     $4(a0), a1
00689c: 6612         bne.b      $68b0
00689e: 42a80000     clr.l      $0(a0)
0068a2: 42a80004     clr.l      $4(a0)
0068a6: b0a80008     cmp.l      $8(a0), d0
0068aa: 6304         bls.b      $68b0
0068ac: 20280008     move.l     $8(a0), d0
0068b0: 41e80010     lea.l      $10(a0), a0
0068b4: b1ee0040     cmpa.l     $40(a6), a0
0068b8: 65de         bcs.b      $6898
0068ba: 2441         movea.l    d1, a2
0068bc: 6100af44     bsr.w      $1802
0068c0: 4cdf0701     movem.l    (a7)+, d0/a0-a2
0068c4: 4e75         rts        
0068c6: 611c         bsr.b      $68e4
0068c8: 6518         bcs.b      $68e2
0068ca: 2f08         move.l     a0, -(a7)
0068cc: 204a         movea.l    a2, a0
0068ce: 30280012     move.w     $12(a0), d0
0068d2: d1e8000c     adda.l     $c(a0), a0
0068d6: 6100fd3e     bsr.w      $6616
0068da: 205f         movea.l    (a7)+, a0
0068dc: 6504         bcs.b      $68e2
0068de: 2b480020     move.l     a0, $20(a5)
0068e2: 4e75         rts        
0068e4: 95ca         suba.l     a2, a2
0068e6: 48e7f8f0     movem.l    d0-d4/a0-a3, -(a7)
0068ea: 42af0000     clr.l      $0(a7)
0068ee: 7600         moveq      #$0, d3
0068f0: 7800         moveq      #$0, d4
0068f2: 4a00         tst.b      d0
0068f4: 6b04         bmi.b      $68fa
0068f6: 42af0004     clr.l      $4(a7)
0068fa: 02000005     andi.b     #$5, d0
0068fe: 6602         bne.b      $6902
006900: 7004         moveq      #$4, d0
006902: 4e40         trap       #$0
006904: 00846500010a ori.l      #$6500010a, d4
00690a: 3f400002     move.w     d0, $2(a7)
00690e: 2f480014     move.l     a0, $14(a7)
006912: 323c0002     move.w     #$2, d1
006916: 4e40         trap       #$0
006918: 008d         .dc.w      $008d
00691a: 640a         bcc.b      $6926
00691c: b27c00d0     cmp.w      #$d0, d1
006920: 660000f0     bne.w      $6a12
006924: 74ff         moveq      #$ff, d2
006926: b4bc00000034 cmp.l      #$34, d2
00692c: 630000da     bls.w      $6a08
006930: 2002         move.l     d2, d0
006932: 222f0004     move.l     $4(a7), d1
006936: 2f0b         move.l     a3, -(a7)
006938: 266e03a4     movea.l    $3a4(a6), a3
00693c: 487a000c     pea.l      $694a(pc)
006940: 2f2b0170     move.l     $170(a3), -(a7)
006944: 266b0570     movea.l    $570(a3), a3
006948: 4e75         rts        
00694a: 265f         movea.l    (a7)+, a3
00694c: 650000c4     bcs.w      $6a12
006950: 2600         move.l     d0, d3
006952: 264a         movea.l    a2, a3
006954: 302f0002     move.w     $2(a7), d0
006958: 2203         move.l     d3, d1
00695a: 204b         movea.l    a3, a0
00695c: 4e40         trap       #$0
00695e: 0089         .dc.w      $0089
006960: 650000b0     bcs.w      $6a12
006964: 2801         move.l     d1, d4
006966: 0c504afc     cmpi.w     #$4afc, (a0)
00696a: 6600009c     bne.w      $6a08
00696e: 7206         moveq      #$6, d1
006970: 4e40         trap       #$0
006972: 008d         .dc.w      $008d
006974: 64000098     bcc.w      $6a0e
006978: 7200         moveq      #$0, d1
00697a: 0c504afc     cmpi.w     #$4afc, (a0)
00697e: 6616         bne.b      $6996
006980: 4a680008     tst.w      $8(a0)
006984: 57ef0000     seq.b      $0(a7)
006988: d2a80004     add.l      $4(a0), d1
00698c: 41f31800     lea.l      (a3, d1.l), a0
006990: b284         cmp.l      d4, d1
006992: 6274         bhi.b      $6a08
006994: 65e4         bcs.b      $697a
006996: 2801         move.l     d1, d4
006998: 204b         movea.l    a3, a0
00699a: 610000a2     bsr.w      $6a3e
00699e: 4a2f0000     tst.b      $0(a7)
0069a2: 6728         beq.b      $69cc
0069a4: 4a6c0014     tst.w      $14(a4)
0069a8: 6722         beq.b      $69cc
0069aa: 302f0002     move.w     $2(a7), d0
0069ae: 720f         moveq      #$f, d1
0069b0: 7404         moveq      #$4, d2
0069b2: 598f         subq.l     #$4, a7
0069b4: 204f         movea.l    a7, a0
0069b6: 4e40         trap       #$0
0069b8: 008d         .dc.w      $008d
0069ba: 650e         bcs.b      $69ca
0069bc: 4a280001     tst.b      $1(a0)
0069c0: 6708         beq.b      $69ca
0069c2: 588f         addq.l     #$4, a7
0069c4: 323c00a4     move.w     #$a4, d1
0069c8: 6048         bra.b      $6a12
0069ca: 588f         addq.l     #$4, a7
0069cc: 204b         movea.l    a3, a0
0069ce: 200b         move.l     a3, d0
0069d0: 2203         move.l     d3, d1
0069d2: 61000c52     bsr.w      $7626
0069d6: 641a         bcc.b      $69f2
0069d8: 0c4100e7     cmpi.w     #$e7, d1
0069dc: 6634         bne.b      $6a12
0069de: b1cb         cmpa.l     a3, a0
0069e0: 6610         bne.b      $69f2
0069e2: 98a80004     sub.l      $4(a0), d4
0069e6: d1e80004     adda.l     $4(a0), a0
0069ea: 6152         bsr.b      $6a3e
0069ec: 204b         movea.l    a3, a0
0069ee: 7200         moveq      #$0, d1
0069f0: 6006         bra.b      $69f8
0069f2: 22280004     move.l     $4(a0), d1
0069f6: d1c1         adda.l     d1, a0
0069f8: 4aaf001c     tst.l      $1c(a7)
0069fc: 6606         bne.b      $6a04
0069fe: 2f6a0000001c move.l     $0(a2), $1c(a7)
006a04: 9881         sub.l      d1, d4
006a06: 62c6         bhi.b      $69ce
006a08: 323c00cd     move.w     #$cd, d1
006a0c: 6004         bra.b      $6a12
006a0e: 323c00cf     move.w     #$cf, d1
006a12: 3f410006     move.w     d1, $6(a7)
006a16: 426f0004     clr.w      $4(a7)
006a1a: 302f0002     move.w     $2(a7), d0
006a1e: 6704         beq.b      $6a24
006a20: 4e40         trap       #$0
006a22: 008f         .dc.w      $008f
006a24: 4aaf001c     tst.l      $1c(a7)
006a28: 660e         bne.b      $6a38
006a2a: 244b         movea.l    a3, a2
006a2c: 2003         move.l     d3, d0
006a2e: 6704         beq.b      $6a34
006a30: 6100add0     bsr.w      $1802
006a34: 003c0001     ori.b      #$1, ccr
006a38: 4cdf0f1f     movem.l    (a7)+, d0-d4/a0-a3
006a3c: 4e75         rts        
006a3e: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
006a42: 2003         move.l     d3, d0
006a44: 9084         sub.l      d4, d0
006a46: 7200         moveq      #$0, d1
006a48: 92ae0070     sub.l      $70(a6), d1
006a4c: c081         and.l      d1, d0
006a4e: 6712         beq.b      $6a62
006a50: 9680         sub.l      d0, d3
006a52: 45f30800     lea.l      (a3, d0.l), a2
006a56: 2404         move.l     d4, d2
006a58: 6100000e     bsr.w      $6a68
006a5c: c74a         exg.l      a3, a2
006a5e: 6100ada2     bsr.w      $1802
006a62: 4cdf0707     movem.l    (a7)+, d0-d2/a0-a2
006a66: 4e75         rts        
006a68: 48e7a0a0     movem.l    d0/d2/a0/a2, -(a7)
006a6c: b5c8         cmpa.l     a0, a2
006a6e: 6248         bhi.b      $6ab8
006a70: 3008         move.w     a0, d0
006a72: 08000000     btst.b     #$0, d0
006a76: 6706         beq.b      $6a7e
006a78: 5382         subq.l     #$1, d2
006a7a: 6534         bcs.b      $6ab0
006a7c: 14d8         move.b     (a0)+, (a2)+
006a7e: 300a         move.w     a2, d0
006a80: 08000000     btst.b     #$0, d0
006a84: 6620         bne.b      $6aa6
006a86: e28a         lsr.l      #$1, d2
006a88: 55c0         scs.b      d0
006a8a: e28a         lsr.l      #$1, d2
006a8c: 6406         bcc.b      $6a94
006a8e: 34d8         move.w     (a0)+, (a2)+
006a90: 6002         bra.b      $6a94
006a92: 24d8         move.l     (a0)+, (a2)+
006a94: 51cafffc     dbra       d2, $6a92
006a98: 5242         addq.w     #$1, d2
006a9a: 5382         subq.l     #$1, d2
006a9c: 64f4         bcc.b      $6a92
006a9e: 4a00         tst.b      d0
006aa0: 670e         beq.b      $6ab0
006aa2: 7400         moveq      #$0, d2
006aa4: 14d8         move.b     (a0)+, (a2)+
006aa6: 51cafffc     dbra       d2, $6aa4
006aaa: 5242         addq.w     #$1, d2
006aac: 5382         subq.l     #$1, d2
006aae: 64f4         bcc.b      $6aa4
006ab0: 7400         moveq      #$0, d2
006ab2: 4cdf0505     movem.l    (a7)+, d0/d2/a0/a2
006ab6: 4e75         rts        
006ab8: d1c2         adda.l     d2, a0
006aba: d5c2         adda.l     d2, a2
006abc: 3008         move.w     a0, d0
006abe: 08000000     btst.b     #$0, d0
006ac2: 6706         beq.b      $6aca
006ac4: 5382         subq.l     #$1, d2
006ac6: 6534         bcs.b      $6afc
006ac8: 1520         move.b     -(a0), -(a2)
006aca: 300a         move.w     a2, d0
006acc: 08000000     btst.b     #$0, d0
006ad0: 6620         bne.b      $6af2
006ad2: e28a         lsr.l      #$1, d2
006ad4: 55c0         scs.b      d0
006ad6: e28a         lsr.l      #$1, d2
006ad8: 6406         bcc.b      $6ae0
006ada: 3520         move.w     -(a0), -(a2)
006adc: 6002         bra.b      $6ae0
006ade: 2520         move.l     -(a0), -(a2)
006ae0: 51cafffc     dbra       d2, $6ade
006ae4: 5242         addq.w     #$1, d2
006ae6: 5382         subq.l     #$1, d2
006ae8: 64f4         bcc.b      $6ade
006aea: 4a00         tst.b      d0
006aec: 670e         beq.b      $6afc
006aee: 7400         moveq      #$0, d2
006af0: 1520         move.b     -(a0), -(a2)
006af2: 51cafffc     dbra       d2, $6af0
006af6: 5242         addq.w     #$1, d2
006af8: 5382         subq.l     #$1, d2
006afa: 64f4         bcc.b      $6af0
006afc: 7400         moveq      #$0, d2
006afe: 4cdf0505     movem.l    (a7)+, d0/d2/a0/a2
006b02: 4e75         rts        
006b04: 323c00e0     move.w     #$e0, d1
006b08: 610000ea     bsr.w      $6bf4
006b0c: 65f4         bcs.b      $6b02
006b0e: 30290018     move.w     $18(a1), d0
006b12: 12290020     move.b     $20(a1), d1
006b16: b23c0061     cmp.b      #$61, d1
006b1a: 6624         bne.b      $6b40
006b1c: 202902e0     move.l     $2e0(a1), d0
006b20: 6b1e         bmi.b      $6b40
006b22: 671c         beq.b      $6b40
006b24: 90ae03c4     sub.l      $3c4(a6), d0
006b28: b0bc00002710 cmp.l      #$2710, d0
006b2e: 6502         bcs.b      $6b32
006b30: 70ff         moveq      #$ff, d0
006b32: 322e08a8     move.w     $8a8(a6), d1
006b36: 6708         beq.b      $6b40
006b38: b041         cmp.w      d1, d0
006b3a: 6504         bcs.b      $6b40
006b3c: 3001         move.w     d1, d0
006b3e: 5340         subq.w     #$1, d0
006b40: 3340001a     move.w     d0, $1a(a1)
006b44: 7400         moveq      #$0, d2
006b46: 342d0006     move.w     $6(a5), d2
006b4a: b46e03e2     cmp.w      $3e2(a6), d2
006b4e: 6304         bls.b      $6b54
006b50: 342e03e2     move.w     $3e2(a6), d2
006b54: 2049         movea.l    a1, a0
006b56: 246d0020     movea.l    $20(a5), a2
006b5a: 603a         bra.b      $6b96
006b5c: 242e0040     move.l     $40(a6), d2
006b60: 94ae003c     sub.l      $3c(a6), d2
006b64: b481         cmp.l      d1, d2
006b66: 6406         bcc.b      $6b6e
006b68: 2b420004     move.l     d2, $4(a5)
006b6c: 2202         move.l     d2, d1
006b6e: 2401         move.l     d1, d2
006b70: 2448         movea.l    a0, a2
006b72: 206e003c     movea.l    $3c(a6), a0
006b76: 601e         bra.b      $6b96
006b78: 2448         movea.l    a0, a2
006b7a: 206e0044     movea.l    $44(a6), a0
006b7e: 7400         moveq      #$0, d2
006b80: 3410         move.w     (a0), d2
006b82: e582         asl.l      #$2, d2
006b84: b282         cmp.l      d2, d1
006b86: 6306         bls.b      $6b8e
006b88: 2b420004     move.l     d2, $4(a5)
006b8c: 6002         bra.b      $6b90
006b8e: 2401         move.l     d1, d2
006b90: 6004         bra.b      $6b96
006b92: 2401         move.l     d1, d2
006b94: 2449         movea.l    a1, a2
006b96: 082d00050040 btst.b     #$5, $40(a5)
006b9c: 661c         bne.b      $6bba
006b9e: 2002         move.l     d2, d0
006ba0: 7203         moveq      #$3, d1
006ba2: 2f0b         move.l     a3, -(a7)
006ba4: 266e03a4     movea.l    $3a4(a6), a3
006ba8: 487a000c     pea.l      $6bb6(pc)
006bac: 2f2b0160     move.l     $160(a3), -(a7)
006bb0: 266b0560     movea.l    $560(a3), a3
006bb4: 4e75         rts        
006bb6: 265f         movea.l    (a7)+, a3
006bb8: 6504         bcs.b      $6bbe
006bba: 6000feac     bra.w      $6a68
006bbe: 4e75         rts        
006bc0: 2248         movea.l    a0, a1
006bc2: 610c         bsr.b      $6bd0
006bc4: 6504         bcs.b      $6bca
006bc6: 2b490024     move.l     a1, $24(a5)
006bca: 4e75         rts        
006bcc: 226e0048     movea.l    $48(a6), a1
006bd0: b051         cmp.w      (a1), d0
006bd2: 6212         bhi.b      $6be6
006bd4: e540         asl.w      #$2, d0
006bd6: 670e         beq.b      $6be6
006bd8: d2c0         adda.w     d0, a1
006bda: e448         lsr.w      #$2, d0
006bdc: 4a91         tst.l      (a1)
006bde: 6706         beq.b      $6be6
006be0: 2251         movea.l    (a1), a1
006be2: b051         cmp.w      (a1), d0
006be4: 6708         beq.b      $6bee
006be6: 323c00c9     move.w     #$c9, d1
006bea: 003c0001     ori.b      #$1, ccr
006bee: 4e75         rts        
006bf0: 6102         bsr.b      $6bf4
006bf2: 60d0         bra.b      $6bc4
006bf4: 206e0044     movea.l    $44(a6), a0
006bf8: b050         cmp.w      (a0), d0
006bfa: 6214         bhi.b      $6c10
006bfc: e540         asl.w      #$2, d0
006bfe: 6710         beq.b      $6c10
006c00: d0c0         adda.w     d0, a0
006c02: e448         lsr.w      #$2, d0
006c04: 670a         beq.b      $6c10
006c06: 2250         movea.l    (a0), a1
006c08: 4a90         tst.l      (a0)
006c0a: 6704         beq.b      $6c10
006c0c: b051         cmp.w      (a1), d0
006c0e: 6708         beq.b      $6c18
006c10: 323c00e0     move.w     #$e0, d1
006c14: 003c0001     ori.b      #$1, ccr
006c18: 4e75         rts        
006c1a: 32280002     move.w     $2(a0), d1
006c1e: 61d8         bsr.b      $6bf8
006c20: 65f6         bcs.b      $6c18
006c22: 4290         clr.l      (a0)
006c24: 2449         movea.l    a1, a2
006c26: 7000         moveq      #$0, d0
006c28: 3001         move.w     d1, d0
006c2a: 6000abd6     bra.w      $1802
006c2e: 323c00c8     move.w     #$c8, d1
006c32: 610c         bsr.b      $6c40
006c34: 6508         bcs.b      $6c3e
006c36: 2b400000     move.l     d0, $0(a5)
006c3a: 2b490024     move.l     a1, $24(a5)
006c3e: 4e75         rts        
006c40: 48e74030     movem.l    d1/a2-a3, -(a7)
006c44: 2248         movea.l    a0, a1
006c46: 3010         move.w     (a0), d0
006c48: 6002         bra.b      $6c4c
006c4a: 4a99         tst.l      (a1)+
006c4c: 57c8fffc     dbeq       d0, $6c4a
006c50: 6736         beq.b      $6c88
006c52: 47ee0044     lea.l      $44(a6), a3
006c56: b1d3         cmpa.l     (a3), a0
006c58: 670e         beq.b      $6c68
006c5a: 47ee0048     lea.l      $48(a6), a3
006c5e: b1d3         cmpa.l     (a3), a0
006c60: 6706         beq.b      $6c68
006c62: 003c0001     ori.b      #$1, ccr
006c66: 603a         bra.b      $6ca2
006c68: 7000         moveq      #$0, d0
006c6a: 3010         move.w     (a0), d0
006c6c: e580         asl.l      #$2, d0
006c6e: 222e0070     move.l     $70(a6), d1
006c72: 5381         subq.l     #$1, d1
006c74: c280         and.l      d0, d1
006c76: 66ea         bne.b      $6c62
006c78: 61000adc     bsr.w      $7756
006c7c: 65e4         bcs.b      $6c62
006c7e: 2688         move.l     a0, (a3)
006c80: e488         lsr.l      #$2, d0
006c82: 3080         move.w     d0, (a0)
006c84: 43ea0004     lea.l      $4(a2), a1
006c88: 7000         moveq      #$0, d0
006c8a: 30280002     move.w     $2(a0), d0
006c8e: 6100ab26     bsr.w      $17b6
006c92: 650e         bcs.b      $6ca2
006c94: 230a         move.l     a2, -(a1)
006c96: 2009         move.l     a1, d0
006c98: 9088         sub.l      a0, d0
006c9a: e488         lsr.l      #$2, d0
006c9c: 2051         movea.l    (a1), a0
006c9e: 3080         move.w     d0, (a0)
006ca0: c149         exg.l      a0, a1
006ca2: 4cdf0c02     movem.l    (a7)+, d1/a2-a3
006ca6: 4e75         rts        
006ca8: 610e         bsr.b      $6cb8
006caa: 48ed00030000 movem.l    d0-d1, $0(a5)
006cb0: 48ed03000020 movem.l    a0-a1, $20(a5)
006cb6: 4e75         rts        
006cb8: 7000         moveq      #$0, d0
006cba: 1018         move.b     (a0)+, d0
006cbc: 0c00002f     cmpi.b     #$2f, d0
006cc0: 6602         bne.b      $6cc4
006cc2: 1018         move.b     (a0)+, d0
006cc4: 43e8ffff     lea.l      -$1(a0), a1
006cc8: 7200         moveq      #$0, d1
006cca: 6122         bsr.b      $6cee
006ccc: 6512         bcs.b      $6ce0
006cce: 5241         addq.w     #$1, d1
006cd0: 1018         move.b     (a0)+, d0
006cd2: 611a         bsr.b      $6cee
006cd4: 64f8         bcc.b      $6cce
006cd6: 1020         move.b     -(a0), d0
006cd8: 0881001f     bclr.b     #$1f, d1
006cdc: 660c         bne.b      $6cea
006cde: 1011         move.b     (a1), d0
006ce0: 2049         movea.l    a1, a0
006ce2: 323c00eb     move.w     #$eb, d1
006ce6: 003c0001     ori.b      #$1, ccr
006cea: c348         exg.l      a1, a0
006cec: 4e75         rts        
006cee: 0c00007a     cmpi.b     #$7a, d0
006cf2: 623c         bhi.b      $6d30
006cf4: 0c000061     cmpi.b     #$61, d0
006cf8: 6420         bcc.b      $6d1a
006cfa: 0c000041     cmpi.b     #$41, d0
006cfe: 650e         bcs.b      $6d0e
006d00: 0c00005a     cmpi.b     #$5a, d0
006d04: 6314         bls.b      $6d1a
006d06: 0c00005f     cmpi.b     #$5f, d0
006d0a: 6712         beq.b      $6d1e
006d0c: 6022         bra.b      $6d30
006d0e: 0c000030     cmpi.b     #$30, d0
006d12: 6510         bcs.b      $6d24
006d14: 0c000039     cmpi.b     #$39, d0
006d18: 6216         bhi.b      $6d30
006d1a: 08c1001f     bset.b     #$1f, d1
006d1e: 023c         .dc.w      $023c
006d20: fffe         dc.w       $fffe
006d22: 4e75         rts        
006d24: 0c00002e     cmpi.b     #$2e, d0
006d28: 67f4         beq.b      $6d1e
006d2a: 0c000024     cmpi.b     #$24, d0
006d2e: 67ee         beq.b      $6d1e
006d30: 003c0001     ori.b      #$1, ccr
006d34: 4e75         rts        
006d36: 48e7b0c0     movem.l    d0/d2-d3/a0-a1, -(a7)
006d3a: 2601         move.l     d1, d3
006d3c: 7400         moveq      #$0, d2
006d3e: 6064         bra.b      $6da4
006d40: 48e7b0c0     movem.l    d0/d2-d3/a0-a1, -(a7)
006d44: 7400         moveq      #$0, d2
006d46: 605c         bra.b      $6da4
006d48: 1018         move.b     (a0)+, d0
006d4a: b03c002a     cmp.b      #$2a, d0
006d4e: 6644         bne.b      $6d94
006d50: 5343         subq.w     #$1, d3
006d52: b018         cmp.b      (a0)+, d0
006d54: 67fa         beq.b      $6d50
006d56: 5388         subq.l     #$1, a0
006d58: 5243         addq.w     #$1, d3
006d5a: 4a43         tst.w      d3
006d5c: 6758         beq.b      $6db6
006d5e: 4a19         tst.b      (a1)+
006d60: 674c         beq.b      $6dae
006d62: 486c03d4     pea.l      $3d4(a4)
006d66: bfdf         cmpa.l     (a7)+, a7
006d68: 6406         bcc.b      $6d70
006d6a: 323c00a6     move.w     #$a6, d1
006d6e: 6042         bra.b      $6db2
006d70: 61ce         bsr.b      $6d40
006d72: 6442         bcc.b      $6db6
006d74: b27c00a6     cmp.w      #$a6, d1
006d78: 6738         beq.b      $6db2
006d7a: 5243         addq.w     #$1, d3
006d7c: 5388         subq.l     #$1, a0
006d7e: 61c0         bsr.b      $6d40
006d80: 6434         bcc.b      $6db6
006d82: b27c00a6     cmp.w      #$a6, d1
006d86: 672a         beq.b      $6db2
006d88: 5343         subq.w     #$1, d3
006d8a: 5288         addq.l     #$1, a0
006d8c: 5389         subq.l     #$1, a1
006d8e: 61b0         bsr.b      $6d40
006d90: 6424         bcc.b      $6db6
006d92: 601e         bra.b      $6db2
006d94: 1419         move.b     (a1)+, d2
006d96: 6716         beq.b      $6dae
006d98: b03c003f     cmp.b      #$3f, d0
006d9c: 6706         beq.b      $6da4
006d9e: b500         eor.b      d2, d0
006da0: 0200ffdf     andi.b     #$df, d0
006da4: 56cbffa2     dbne       d3, $6d48
006da8: 6604         bne.b      $6dae
006daa: 4a11         tst.b      (a1)
006dac: 6708         beq.b      $6db6
006dae: 323c00a5     move.w     #$a5, d1
006db2: 003c0001     ori.b      #$1, ccr
006db6: 4cdf030d     movem.l    (a7)+, d0/d2-d3/a0-a1
006dba: 4e75         rts        
006dbc: 024000ff     andi.w     #$ff, d0
006dc0: e540         asl.w      #$2, d0
006dc2: b07c0064     cmp.w      #$64, d0
006dc6: 653e         bcs.b      $6e06
006dc8: 41f60000     lea.l      (a6, d0.w), a0
006dcc: d0fc0384     adda.w     #$384, a0
006dd0: b07c0080     cmp.w      #$80, d0
006dd4: 650e         bcs.b      $6de4
006dd6: b07c00e4     cmp.w      #$e4, d0
006dda: 652a         bcs.b      $6e06
006ddc: 41f60000     lea.l      (a6, d0.w), a0
006de0: d0fcffa4     adda.w     #$ffa4, a0
006de4: 4aad0020     tst.l      $20(a5)
006de8: 6700007c     beq.w      $6e66
006dec: 4aa80000     tst.l      $0(a0)
006df0: 671e         beq.b      $6e10
006df2: 4a01         tst.b      d1
006df4: 670a         beq.b      $6e00
006df6: 22680000     movea.l    $0(a0), a1
006dfa: 4a290010     tst.b      $10(a1)
006dfe: 6610         bne.b      $6e10
006e00: 323c00d4     move.w     #$d4, d1
006e04: 6004         bra.b      $6e0a
006e06: 323c00e1     move.w     #$e1, d1
006e0a: 003c0001     ori.b      #$1, ccr
006e0e: 4e75         rts        
006e10: 4aae03e4     tst.l      $3e4(a6)
006e14: 674a         beq.b      $6e60
006e16: 40e7         move.w     sr, -(a7)
006e18: 007c0700     ori.w      #$700, sr
006e1c: 226e03e4     movea.l    $3e4(a6), a1
006e20: 2d69000003e4 move.l     $0(a1), $3e4(a6)
006e26: 46df         move.w     (a7)+, sr
006e28: 13410010     move.b     d1, $10(a1)
006e2c: 236d00200004 move.l     $20(a5), $4(a1)
006e32: 234a0008     move.l     a2, $8(a1)
006e36: 236d002c000c move.l     $2c(a5), $c(a1)
006e3c: 40e7         move.w     sr, -(a7)
006e3e: 007c0700     ori.w      #$700, sr
006e42: 2648         movea.l    a0, a3
006e44: 20280000     move.l     $0(a0), d0
006e48: 6708         beq.b      $6e52
006e4a: 2040         movea.l    d0, a0
006e4c: b2280010     cmp.b      $10(a0), d1
006e50: 64f0         bcc.b      $6e42
006e52: 236b00000000 move.l     $0(a3), $0(a1)
006e58: 27490000     move.l     a1, $0(a3)
006e5c: 46df         move.w     (a7)+, sr
006e5e: 4e75         rts        
006e60: 323c00ca     move.w     #$ca, d1
006e64: 60a4         bra.b      $6e0a
006e66: 2648         movea.l    a0, a3
006e68: 20280000     move.l     $0(a0), d0
006e6c: 6798         beq.b      $6e06
006e6e: 2040         movea.l    d0, a0
006e70: b5e80008     cmpa.l     $8(a0), a2
006e74: 66f0         bne.b      $6e66
006e76: 276800000000 move.l     $0(a0), $0(a3)
006e7c: 40e7         move.w     sr, -(a7)
006e7e: 007c0700     ori.w      #$700, sr
006e82: 216e03e40000 move.l     $3e4(a6), $0(a0)
006e88: 2d4803e4     move.l     a0, $3e4(a6)
006e8c: 46df         move.w     (a7)+, sr
006e8e: 4e75         rts        
006e90: 4a6c016c     tst.w      $16c(a4)
006e94: 670000ba     beq.w      $6f50
006e98: 9efc0062     suba.w     #$62, a7
006e9c: e348         lsl.w      #$1, d0
006e9e: 6708         beq.b      $6ea8
006ea0: d07c0168     add.w      #$168, d0
006ea4: 30340000     move.w     (a4, d0.w), d0
006ea8: 3f400010     move.w     d0, $10(a7)
006eac: 2f7c204572720000 move.l     #$20457272, $0(a7)
006eb4: 2f7c6f7220230004 move.l     #$6f722023, $4(a7)
006ebc: 102d0006     move.b     $6(a5), d0
006ec0: 61000092     bsr.w      $6f54
006ec4: 123c003a     move.b     #$3a, d1
006ec8: 2f410008     move.l     d1, $8(a7)
006ecc: 102d0007     move.b     $7(a5), d0
006ed0: 61000082     bsr.w      $6f54
006ed4: 123c000d     move.b     #$d, d1
006ed8: 4a6f0010     tst.w      $10(a7)
006edc: 6704         beq.b      $6ee2
006ede: 123c0020     move.b     #$20, d1
006ee2: 2f41000c     move.l     d1, $c(a7)
006ee6: 41ef0001     lea.l      $1(a7), a0
006eea: 720f         moveq      #$f, d1
006eec: 302c016c     move.w     $16c(a4), d0
006ef0: 4e40         trap       #$0
006ef2: 008c         .dc.w      $008c
006ef4: 302f0010     move.w     $10(a7), d0
006ef8: 6752         beq.b      $6f4c
006efa: 7200         moveq      #$0, d1
006efc: 4e40         trap       #$0
006efe: 0088         .dc.w      $0088
006f00: 6176         bsr.b      $6f78
006f02: 6410         bcc.b      $6f14
006f04: 10bc000d     move.b     #$d, (a0)
006f08: 7201         moveq      #$1, d1
006f0a: 302c016c     move.w     $16c(a4), d0
006f0e: 4e40         trap       #$0
006f10: 008c         .dc.w      $008c
006f12: 602c         bra.b      $6f40
006f14: 202f0008     move.l     $8(a7), d0
006f18: b098         cmp.l      (a0)+, d0
006f1a: 66e4         bne.b      $6f00
006f1c: 302f000c     move.w     $c(a7), d0
006f20: b058         cmp.w      (a0)+, d0
006f22: 66dc         bne.b      $6f00
006f24: 102f000e     move.b     $e(a7), d0
006f28: b018         cmp.b      (a0)+, d0
006f2a: 66d4         bne.b      $6f00
006f2c: 7250         moveq      #$50, d1
006f2e: 302c016c     move.w     $16c(a4), d0
006f32: 4e40         trap       #$0
006f34: 008c         .dc.w      $008c
006f36: 6140         bsr.b      $6f78
006f38: 6506         bcs.b      $6f40
006f3a: 0c100020     cmpi.b     #$20, (a0)
006f3e: 67ec         beq.b      $6f2c
006f40: 302f0010     move.w     $10(a7), d0
006f44: 7211         moveq      #$11, d1
006f46: 7400         moveq      #$0, d2
006f48: 4e40         trap       #$0
006f4a: 008e         .dc.w      $008e
006f4c: defc0062     adda.w     #$62, a7
006f50: 7200         moveq      #$0, d1
006f52: 4e75         rts        
006f54: 722f         moveq      #$2f, d1
006f56: 5201         addq.b     #$1, d1
006f58: 903c0064     sub.b      #$64, d0
006f5c: 64f8         bcc.b      $6f56
006f5e: e149         lsl.w      #$8, d1
006f60: 123c003a     move.b     #$3a, d1
006f64: 5301         subq.b     #$1, d1
006f66: d03c000a     add.b      #$a, d0
006f6a: 64f8         bcc.b      $6f64
006f6c: 4841         swap       d1
006f6e: d03c0030     add.b      #$30, d0
006f72: 1200         move.b     d0, d1
006f74: e149         lsl.w      #$8, d1
006f76: 4e75         rts        
006f78: 302f0014     move.w     $14(a7), d0
006f7c: 7250         moveq      #$50, d1
006f7e: 41ef0016     lea.l      $16(a7), a0
006f82: 4e40         trap       #$0
006f84: 008b         .dc.w      $008b
006f86: 4e75         rts        
006f88: 48e740c0     movem.l    d1/a0-a1, -(a7)
006f8c: 206e0044     movea.l    $44(a6), a0
006f90: 3010         move.w     (a0), d0
006f92: 601c         bra.b      $6fb0
006f94: b06c0000     cmp.w      $0(a4), d0
006f98: 6716         beq.b      $6fb0
006f9a: 6100fc58     bsr.w      $6bf4
006f9e: 6510         bcs.b      $6fb0
006fa0: 222c0014     move.l     $14(a4), d1
006fa4: b2a90014     cmp.l      $14(a1), d1
006fa8: 6606         bne.b      $6fb0
006faa: 4cd70102     movem.l    (a7), d1/a0
006fae: 6114         bsr.b      $6fc4
006fb0: 5340         subq.w     #$1, d0
006fb2: b07c0002     cmp.w      #$2, d0
006fb6: 64dc         bcc.b      $6f94
006fb8: 4cdf0302     movem.l    (a7)+, d1/a0-a1
006fbc: 7000         moveq      #$0, d0
006fbe: 4e75         rts        
006fc0: 4a40         tst.w      d0
006fc2: 67c4         beq.b      $6f88
006fc4: 48e7f0f0     movem.l    d0-d3/a0-a3, -(a7)
006fc8: 40c3         move.w     sr, d3
006fca: 6100fc28     bsr.w      $6bf4
006fce: 6500010a     bcs.w      $70da
006fd2: 08290000001c btst.b     #$0, $1c(a1)
006fd8: 660000fc     bne.w      $70d6
006fdc: 007c0700     ori.w      #$700, sr
006fe0: 4aa9037c     tst.l      $37c(a1)
006fe4: 661e         bne.b      $7004
006fe6: 41e90380     lea.l      $380(a1), a0
006fea: 2348037c     move.l     a0, $37c(a1)
006fee: 21480000     move.l     a0, $0(a0)
006ff2: 21480004     move.l     a0, $4(a0)
006ff6: 4268000a     clr.w      $a(a0)
006ffa: 42a90378     clr.l      $378(a1)
006ffe: 337c00010372 move.w     #$1, $372(a1)
007004: b27c0020     cmp.w      #$20, d1
007008: 6252         bhi.b      $705c
00700a: b27c0001     cmp.w      #$1, d1
00700e: 670000a2     beq.w      $70b2
007012: b27c0000     cmp.w      #$0, d1
007016: 663c         bne.b      $7054
007018: 323c00e4     move.w     #$e4, d1
00701c: 4a6c0014     tst.w      $14(a4)
007020: 670c         beq.b      $702e
007022: 202c0014     move.l     $14(a4), d0
007026: b0a90014     cmp.l      $14(a1), d0
00702a: 660000aa     bne.w      $70d6
00702e: 08e90001001c bset.b     #$1, $1c(a1)
007034: 2469037c     movea.l    $37c(a1), a2
007038: 4aa902ac     tst.l      $2ac(a1)
00703c: 676c         beq.b      $70aa
00703e: 206902ac     movea.l    $2ac(a1), a0
007042: 20680008     movea.l    $8(a0), a0
007046: 42a80004     clr.l      $4(a0)
00704a: 217c000000020008 move.l     #$2, $8(a0)
007052: 6056         bra.b      $70aa
007054: 20290374     move.l     $374(a1), d0
007058: 0300         btst.l     d1, d0
00705a: 6672         bne.b      $70ce
00705c: 2469037c     movea.l    $37c(a1), a2
007060: 4a6a000a     tst.w      $a(a2)
007064: 673c         beq.b      $70a2
007066: 246a0004     movea.l    $4(a2), a2
00706a: 4a6a000a     tst.w      $a(a2)
00706e: 67f6         beq.b      $7066
007070: 246a0000     movea.l    $0(a2), a2
007074: b5e9037c     cmpa.l     $37c(a1), a2
007078: 6628         bne.b      $70a2
00707a: 46c3         move.w     d3, sr
00707c: 7010         moveq      #$10, d0
00707e: 6100a712     bsr.w      $1792
007082: 6556         bcs.b      $70da
007084: 52690372     addq.w     #$1, $372(a1)
007088: 007c0700     ori.w      #$700, sr
00708c: 2069037c     movea.l    $37c(a1), a0
007090: 26680004     movea.l    $4(a0), a3
007094: 48ea09000000 movem.l    a0/a3, $0(a2)
00709a: 274a0000     move.l     a2, $0(a3)
00709e: 214a0004     move.l     a2, $4(a0)
0070a2: 53690372     subq.w     #$1, $372(a1)
0070a6: 52a90378     addq.l     #$1, $378(a1)
0070aa: 3541000a     move.w     d1, $a(a2)
0070ae: 33410026     move.w     d1, $26(a1)
0070b2: b3e90030     cmpa.l     $30(a1), a1
0070b6: 6708         beq.b      $70c0
0070b8: 0c2900610020 cmpi.b     #$61, $20(a1)
0070be: 6608         bne.b      $70c8
0070c0: 08e900070371 bset.b     #$7, $371(a1)
0070c6: 6006         bra.b      $70ce
0070c8: 2049         movea.l    a1, a0
0070ca: 6100a868     bsr.w      $1934
0070ce: 46c3         move.w     d3, sr
0070d0: 4cdf0f0f     movem.l    (a7)+, d0-d3/a0-a3
0070d4: 4e75         rts        
0070d6: 323c00e0     move.w     #$e0, d1
0070da: 3f410006     move.w     d1, $6(a7)
0070de: 00430001     ori.w      #$1, d3
0070e2: 60ea         bra.b      $70ce
0070e4: 29480028     move.l     a0, $28(a4)
0070e8: 296d0038002c move.l     $38(a5), $2c(a4)
0070ee: 4e75         rts        
0070f0: 4a80         tst.l      d0
0070f2: 6630         bne.b      $7124
0070f4: 4a81         tst.l      d1
0070f6: 671c         beq.b      $7114
0070f8: 6b10         bmi.b      $710a
0070fa: 5381         subq.l     #$1, d1
0070fc: 6226         bhi.b      $7124
0070fe: 522c0370     addq.b     #$1, $370(a4)
007102: 641a         bcc.b      $711e
007104: 532c0370     subq.b     #$1, $370(a4)
007108: 6014         bra.b      $711e
00710a: 5281         addq.l     #$1, d1
00710c: 6616         bne.b      $7124
00710e: 532c0370     subq.b     #$1, $370(a4)
007112: 620a         bhi.b      $711e
007114: 422c0370     clr.b      $370(a4)
007118: 224c         movea.l    a4, a1
00711a: 6100a760     bsr.w      $187c
00711e: 023c         .dc.w      $023c
007120: fffe         dc.w       $fffe
007122: 4e75         rts        
007124: 323c00e1     move.w     #$e1, d1
007128: 003c0001     ori.b      #$1, ccr
00712c: 4e75         rts        
00712e: 6100ffe4     bsr.w      $7114
007132: 08ac00070371 bclr.b     #$7, $371(a4)
007138: 4a6c0026     tst.w      $26(a4)
00713c: 6706         beq.b      $7144
00713e: 08ec00070371 bset.b     #$7, $371(a4)
007144: 48e730e0     movem.l    d2-d3/a0-a2, -(a7)
007148: b9ee0050     cmpa.l     $50(a6), a4
00714c: 6608         bne.b      $7156
00714e: 4a6e0002     tst.w      $2(a6)
007152: 660000ca     bne.w      $721e
007156: 0880001f     bclr.b     #$1f, d0
00715a: 6704         beq.b      $7160
00715c: 610000fe     bsr.w      $725c
007160: 40e7         move.w     sr, -(a7)
007162: 007c0700     ori.w      #$700, sr
007166: 08ac00070371 bclr.b     #$7, $371(a4)
00716c: 6708         beq.b      $7176
00716e: 46df         move.w     (a7)+, sr
007170: 7200         moveq      #$0, d1
007172: 600000a2     bra.w      $7216
007176: 45ee0384     lea.l      $384(a6), a2
00717a: 5380         subq.l     #$1, d0
00717c: 6416         bcc.b      $7194
00717e: 206a0034     movea.l    $34(a2), a0
007182: 29480034     move.l     a0, $34(a4)
007186: 294a0030     move.l     a2, $30(a4)
00718a: 254c0034     move.l     a4, $34(a2)
00718e: 214c0030     move.l     a4, $30(a0)
007192: 600c         bra.b      $71a0
007194: 2b400000     move.l     d0, $0(a5)
007198: 660e         bne.b      $71a8
00719a: 204c         movea.l    a4, a0
00719c: 6100a796     bsr.w      $1934
0071a0: 321f         move.w     (a7)+, d1
0071a2: 61000084     bsr.w      $7228
0071a6: 606e         bra.b      $7216
0071a8: 4a6e0028     tst.w      $28(a6)
0071ac: 676e         beq.b      $721c
0071ae: 204a         movea.l    a2, a0
0071b0: 222e077c     move.l     $77c(a6), d1
0071b4: 6704         beq.b      $71ba
0071b6: b081         cmp.l      d1, d0
0071b8: 6404         bcc.b      $71be
0071ba: 2d40077c     move.l     d0, $77c(a6)
0071be: d0ae0054     add.l      $54(a6), d0
0071c2: 2b400000     move.l     d0, $0(a5)
0071c6: 20680030     movea.l    $30(a0), a0
0071ca: b1ca         cmpa.l     a2, a0
0071cc: 6718         beq.b      $71e6
0071ce: 08280006001c btst.b     #$6, $1c(a0)
0071d4: 6710         beq.b      $71e6
0071d6: 22680008     movea.l    $8(a0), a1
0071da: 22290000     move.l     $0(a1), d1
0071de: b081         cmp.l      d1, d0
0071e0: 64e4         bcc.b      $71c6
0071e2: 9280         sub.l      d0, d1
0071e4: 6be0         bmi.b      $71c6
0071e6: 22680034     movea.l    $34(a0), a1
0071ea: 29480030     move.l     a0, $30(a4)
0071ee: 29490034     move.l     a1, $34(a4)
0071f2: 234c0030     move.l     a4, $30(a1)
0071f6: 214c0034     move.l     a4, $34(a0)
0071fa: 08ec0006001c bset.b     #$6, $1c(a4)
007200: 321f         move.w     (a7)+, d1
007202: 6124         bsr.b      $7228
007204: 90ae0054     sub.l      $54(a6), d0
007208: 6402         bcc.b      $720c
00720a: 7000         moveq      #$0, d0
00720c: 2b400000     move.l     d0, $0(a5)
007210: 08ac0006001c bclr.b     #$6, $1c(a4)
007216: 4cdf070c     movem.l    (a7)+, d2-d3/a0-a2
00721a: 4e75         rts        
00721c: 46df         move.w     (a7)+, sr
00721e: 323c00de     move.w     #$de, d1
007222: 003c0001     ori.b      #$1, ccr
007226: 60ee         bra.b      $7216
007228: 197c00730020 move.b     #$73, $20(a4)
00722e: 242c0008     move.l     $8(a4), d2
007232: 260f         move.l     a7, d3
007234: 4fefffb8     lea.l      -$48(a7), a7
007238: 294f0008     move.l     a7, $8(a4)
00723c: 48d7ffff     movem.l    d0-d7/a0-a7, (a7)
007240: 426f0046     clr.w      $46(a7)
007244: 41fa000e     lea.l      $7254(pc), a0
007248: 2f480042     move.l     a0, $42(a7)
00724c: 3f410040     move.w     d1, $40(a7)
007250: 6000a7bc     bra.w      $1a0e
007254: 29420008     move.l     d2, $8(a4)
007258: 2e43         movea.l    d3, a7
00725a: 4e75         rts        
00725c: 48e76000     movem.l    d1-d2, -(a7)
007260: 2200         move.l     d0, d1
007262: 6724         beq.b      $7288
007264: 342e0028     move.w     $28(a6), d2
007268: 671e         beq.b      $7288
00726a: 4840         swap       d0
00726c: c2c2         mulu.w     d2, d1
00726e: c0c2         mulu.w     d2, d0
007270: e089         lsr.l      #$8, d1
007272: 0c80000fffff cmpi.l     #$fffff, d0
007278: 620c         bhi.b      $7286
00727a: e188         lsl.l      #$8, d0
00727c: d081         add.l      d1, d0
00727e: 6506         bcs.b      $7286
007280: 6606         bne.b      $7288
007282: 7001         moveq      #$1, d0
007284: 6002         bra.b      $7288
007286: 70ff         moveq      #$ff, d0
007288: 4cdf0006     movem.l    (a7)+, d1-d2
00728c: 4e75         rts        
00728e: 4a6c0014     tst.w      $14(a4)
007292: 6600ac2e     bne.w      $1ec2
007296: 2d41002a     move.l     d1, $2a(a6)
00729a: 61000096     bsr.w      $7332
00729e: 2d410030     move.l     d1, $30(a6)
0072a2: 4480         neg.l      d0
0072a4: d0bc00015180 add.l      #$15180, d0
0072aa: 2d400034     move.l     d0, $34(a6)
0072ae: 206e0020     movea.l    $20(a6), a0
0072b2: 32280046     move.w     $46(a0), d1
0072b6: 676a         beq.b      $7322
0072b8: d0c1         adda.w     d1, a0
0072ba: 303c0c01     move.w     #$c01, d0
0072be: 6100f344     bsr.w      $6604
0072c2: 655e         bcs.b      $7322
0072c4: 4a6a0008     tst.w      $8(a2)
0072c8: 6600abf8     bne.w      $1ec2
0072cc: 4e91         jsr        (a1)
0072ce: 6552         bcs.b      $7322
0072d0: 3d6e00280774 move.w     $28(a6), $774(a6)
0072d6: 48e7e0c0     movem.l    d0-d2/a0-a1, -(a7)
0072da: 243c00015180 move.l     #$15180, d2
0072e0: 94ae0034     sub.l      $34(a6), d2
0072e4: 206e0044     movea.l    $44(a6), a0
0072e8: 3210         move.w     (a0), d1
0072ea: 5888         addq.l     #$4, a0
0072ec: 5541         subq.w     #$2, d1
0072ee: 2018         move.l     (a0)+, d0
0072f0: 6712         beq.b      $7304
0072f2: 2240         movea.l    d0, a1
0072f4: 4aa902bc     tst.l      $2bc(a1)
0072f8: 660a         bne.b      $7304
0072fa: 234202c0     move.l     d2, $2c0(a1)
0072fe: 236e003002bc move.l     $30(a6), $2bc(a1)
007304: 51c8ffe8     dbra       d0, $72ee
007308: 206e0050     movea.l    $50(a6), a0
00730c: 0c2800200020 cmpi.b     #$20, $20(a0)
007312: 6604         bne.b      $7318
007314: 6100a61e     bsr.w      $1934
007318: 4cdf0307     movem.l    (a7)+, d0-d2/a0-a1
00731c: 023c         .dc.w      $023c
00731e: fffe         dc.w       $fffe
007320: 6004         bra.b      $7326
007322: 003c0001     ori.b      #$1, ccr
007326: 4e75         rts        
007328: 6108         bsr.b      $7332
00732a: 48ed00030000 movem.l    d0-d1, $0(a5)
007330: 4e75         rts        
007332: 48e7f800     movem.l    d0-d4, -(a7)
007336: 7400         moveq      #$0, d2
007338: 7600         moveq      #$0, d3
00733a: 1601         move.b     d1, d3
00733c: e081         asr.l      #$8, d1
00733e: 1401         move.b     d1, d2
007340: e081         asr.l      #$8, d1
007342: 7000         moveq      #$0, d0
007344: b43c0003     cmp.b      #$3, d2
007348: 6406         bcc.b      $7350
00734a: 5341         subq.w     #$1, d1
00734c: d43c000c     add.b      #$c, d2
007350: b27c062e     cmp.w      #$62e, d1
007354: 6e10         bgt.b      $7366
007356: 6d1e         blt.b      $7376
007358: b43c000a     cmp.b      #$a, d2
00735c: 6208         bhi.b      $7366
00735e: 6516         bcs.b      $7376
007360: b63c000f     cmp.b      #$f, d3
007364: 6310         bls.b      $7376
007366: 2801         move.l     d1, d4
007368: 89fc0064     divs.w     #$64, d4
00736c: 48c4         ext.l      d4
00736e: 7002         moveq      #$2, d0
007370: 9084         sub.l      d4, d0
007372: e484         asr.l      #$2, d4
007374: d084         add.l      d4, d0
007376: c3fc05b5     muls.w     #$5b5, d1
00737a: e481         asr.l      #$2, d1
00737c: d280         add.l      d0, d1
00737e: 5242         addq.w     #$1, d2
007380: c4fc7fa9     mulu.w     #$7fa9, d2
007384: 84fc042c     divu.w     #$42c, d2
007388: 48c2         ext.l      d2
00738a: d282         add.l      d2, d1
00738c: d283         add.l      d3, d1
00738e: d2bc001a42a2 add.l      #$1a42a2, d1
007394: 2f410004     move.l     d1, $4(a7)
007398: 3017         move.w     (a7), d0
00739a: c0fc003c     mulu.w     #$3c, d0
00739e: 7200         moveq      #$0, d1
0073a0: 122f0002     move.b     $2(a7), d1
0073a4: d041         add.w      d1, d0
0073a6: c0fc003c     mulu.w     #$3c, d0
0073aa: 122f0003     move.b     $3(a7), d1
0073ae: d081         add.l      d1, d0
0073b0: 2e80         move.l     d0, (a7)
0073b2: 4cdf001f     movem.l    (a7)+, d0-d4
0073b6: 4e75         rts        
0073b8: 203c00015180 move.l     #$15180, d0
0073be: 362e0028     move.w     $28(a6), d3
0073c2: 40e7         move.w     sr, -(a7)
0073c4: 007c0700     ori.w      #$700, sr
0073c8: 90ae0034     sub.l      $34(a6), d0
0073cc: 222e002a     move.l     $2a(a6), d1
0073d0: 242e0030     move.l     $30(a6), d2
0073d4: 966e0774     sub.w      $774(a6), d3
0073d8: 46df         move.w     (a7)+, sr
0073da: 382d0002     move.w     $2(a5), d4
0073de: 08040000     btst.b     #$0, d4
0073e2: 670a         beq.b      $73ee
0073e4: 2b400000     move.l     d0, $0(a5)
0073e8: 2b420004     move.l     d2, $4(a5)
0073ec: 6030         bra.b      $741e
0073ee: 2b410004     move.l     d1, $4(a5)
0073f2: 6610         bne.b      $7404
0073f4: 2202         move.l     d2, d1
0073f6: 614e         bsr.b      $7446
0073f8: b4ae0030     cmp.l      $30(a6), d2
0073fc: 6620         bne.b      $741e
0073fe: 2d41002a     move.l     d1, $2a(a6)
007402: 601a         bra.b      $741e
007404: 80fc0e10     divu.w     #$e10, d0
007408: 3b400000     move.w     d0, $0(a5)
00740c: 4240         clr.w      d0
00740e: 4840         swap       d0
007410: 80fc003c     divu.w     #$3c, d0
007414: 1b400002     move.b     d0, $2(a5)
007418: 4840         swap       d0
00741a: 1b400003     move.b     d0, $3(a5)
00741e: 5482         addq.l     #$2, d2
007420: 84fc0700     divu.w     #$700, d2
007424: 4242         clr.w      d2
007426: 4842         swap       d2
007428: 84fc0007     divu.w     #$7, d2
00742c: 4242         clr.w      d2
00742e: 4842         swap       d2
007430: 2b420008     move.l     d2, $8(a5)
007434: 08040001     btst.b     #$1, d4
007438: 670a         beq.b      $7444
00743a: 3b6e0028000c move.w     $28(a6), $c(a5)
007440: 3b43000e     move.w     d3, $e(a5)
007444: 4e75         rts        
007446: 48e73800     movem.l    d2-d4, -(a7)
00744a: 80fc0e10     divu.w     #$e10, d0
00744e: 4840         swap       d0
007450: 7600         moveq      #$0, d3
007452: 3600         move.w     d0, d3
007454: 86fc003c     divu.w     #$3c, d3
007458: 1003         move.b     d3, d0
00745a: e148         lsl.w      #$8, d0
00745c: 4843         swap       d3
00745e: 1003         move.b     d3, d0
007460: 2801         move.l     d1, d4
007462: 0684000005f5 addi.l     #$5f5, d4
007468: 0c8100231518 cmpi.l     #$231518, d1
00746e: 6f24         ble.b      $7494
007470: e581         asl.l      #$2, d1
007472: 04810071f73d subi.l     #$71f73d, d1
007478: 82fcbe3b     divu.w     #$be3b, d1
00747c: 02810000ffff andi.l     #$ffff, d1
007482: 82fc0003     divu.w     #$3, d1
007486: 02810000ffff andi.l     #$ffff, d1
00748c: 5284         addq.l     #$1, d4
00748e: d881         add.l      d1, d4
007490: e489         lsr.l      #$2, d1
007492: 9881         sub.l      d1, d4
007494: 2204         move.l     d4, d1
007496: e989         lsl.l      #$4, d1
007498: 0481000007a2 subi.l     #$7a2, d1
00749e: 82fc16d4     divu.w     #$16d4, d1
0074a2: 7600         moveq      #$0, d3
0074a4: 3601         move.w     d1, d3
0074a6: c2fc016d     mulu.w     #$16d, d1
0074aa: 9881         sub.l      d1, d4
0074ac: 2203         move.l     d3, d1
0074ae: e489         lsr.l      #$2, d1
0074b0: 9881         sub.l      d1, d4
0074b2: 223c000007ce move.l     #$7ce, d1
0074b8: c2c4         mulu.w     d4, d1
0074ba: 82fceed3     divu.w     #$eed3, d1
0074be: 3401         move.w     d1, d2
0074c0: c2fceed3     mulu.w     #$eed3, d1
0074c4: 82fc07ce     divu.w     #$7ce, d1
0074c8: 9841         sub.w      d1, d4
0074ca: 0c42000d     cmpi.w     #$d, d2
0074ce: 6304         bls.b      $74d4
0074d0: 947c000c     sub.w      #$c, d2
0074d4: 5342         subq.w     #$1, d2
0074d6: 0c420002     cmpi.w     #$2, d2
0074da: 6f02         ble.b      $74de
0074dc: 5383         subq.l     #$1, d3
0074de: 04830000126b subi.l     #$126b, d3
0074e4: 3203         move.w     d3, d1
0074e6: 4841         swap       d1
0074e8: 1202         move.b     d2, d1
0074ea: e149         lsl.w      #$8, d1
0074ec: 1204         move.b     d4, d1
0074ee: 4cdf001c     movem.l    (a7)+, d2-d4
0074f2: 48ed00030000 movem.l    d0-d1, $0(a5)
0074f8: 4e75         rts        
0074fa: 323c00e3     move.w     #$e3, d1
0074fe: 4a40         tst.w      d0
007500: 674c         beq.b      $754e
007502: b07c000f     cmp.w      #$f, d0
007506: 6246         bhi.b      $754e
007508: e548         lsl.w      #$2, d0
00750a: d07c0088     add.w      #$88, d0
00750e: 47f40000     lea.l      (a4, d0.w), a3
007512: 2008         move.l     a0, d0
007514: 670000cc     beq.w      $75e2
007518: 4a10         tst.b      (a0)
00751a: 670000c6     beq.w      $75e2
00751e: 4a93         tst.l      (a3)
007520: 662c         bne.b      $754e
007522: 303c0b01     move.w     #$b01, d0
007526: 6100f0f2     bsr.w      $661a
00752a: 6408         bcc.b      $7534
00752c: 7000         moveq      #$0, d0
00752e: 4e40         trap       #$0
007530: 0001651a     ori.b      #$1a, d1
007534: 082a00050014 btst.b     #$5, $14(a2)
00753a: 6718         beq.b      $7554
00753c: 4a6a0008     tst.w      $8(a2)
007540: 6712         beq.b      $7554
007542: 323c00a4     move.w     #$a4, d1
007546: 3f01         move.w     d1, -(a7)
007548: 6100f244     bsr.w      $678e
00754c: 321f         move.w     (a7)+, d1
00754e: 003c0001     ori.b      #$1, ccr
007552: 4e75         rts        
007554: 268a         move.l     a2, (a3)
007556: 48ed07000020 movem.l    a0-a2, $20(a5)
00755c: 224a         movea.l    a2, a1
00755e: 246c032c     movea.l    $32c(a4), a2
007562: 20290038     move.l     $38(a1), d0
007566: d0a9003c     add.l      $3c(a1), d0
00756a: d0ad0004     add.l      $4(a5), d0
00756e: 670e         beq.b      $757e
007570: 6100a26c     bsr.w      $17de
007574: 65d0         bcs.b      $7546
007576: 27400078     move.l     d0, $78(a3)
00757a: 61009db6     bsr.w      $1332
00757e: d5fc00008000 adda.l     #$8000, a2
007584: 274a003c     move.l     a2, $3c(a3)
007588: 082900050014 btst.b     #$5, $14(a1)
00758e: d3e90048     adda.l     $48(a1), a1
007592: 661c         bne.b      $75b0
007594: 206c000c     movea.l    $c(a4), a0
007598: 212d0042     move.l     $42(a5), -(a0)
00759c: 42a0         clr.l      -(a0)
00759e: 212d0038     move.l     $38(a5), -(a0)
0075a2: 2948000c     move.l     a0, $c(a4)
0075a6: 2b4a0038     move.l     a2, $38(a5)
0075aa: 2b490042     move.l     a1, $42(a5)
0075ae: 4e75         rts        
0075b0: 2f0d         move.l     a5, -(a7)
0075b2: 487a001e     pea.l      $75d2(pc)
0075b6: 48780000     pea.l      $0.w
0075ba: 2f2d0038     move.l     $38(a5), -(a7)
0075be: 2f09         move.l     a1, -(a7)
0075c0: 224e         movea.l    a6, a1
0075c2: 2c4a         movea.l    a2, a6
0075c4: 4ced01ff0000 movem.l    $0(a5), d0-d7/a0
0075ca: 4ced3c000028 movem.l    $28(a5), a2-a5
0075d0: 4e75         rts        
0075d2: 2c5f         movea.l    (a7)+, a6
0075d4: 48ee3fff0000 movem.l    d0-d7/a0-a5, $0(a6)
0075da: 40c0         move.w     sr, d0
0075dc: 1d400041     move.b     d0, $41(a6)
0075e0: 4e75         rts        
0075e2: 4a93         tst.l      (a3)
0075e4: 6724         beq.b      $760a
0075e6: 48e7e060     movem.l    d0-d2/a1-a2, -(a7)
0075ea: 202b0078     move.l     $78(a3), d0
0075ee: 670e         beq.b      $75fe
0075f0: 246b003c     movea.l    $3c(a3), a2
0075f4: 95fc00008000 suba.l     #$8000, a2
0075fa: 6100a212     bsr.w      $180e
0075fe: 2453         movea.l    (a3), a2
007600: 6100f18c     bsr.w      $678e
007604: 4cdf0607     movem.l    (a7)+, d0-d2/a1-a2
007608: 4293         clr.l      (a3)
00760a: 42ab003c     clr.l      $3c(a3)
00760e: 42ab0078     clr.l      $78(a3)
007612: 4e75         rts        
007614: 6110         bsr.b      $7626
007616: 40e7         move.w     sr, -(a7)
007618: 6406         bcc.b      $7620
00761a: b27c00e7     cmp.w      #$e7, d1
00761e: 6604         bne.b      $7624
007620: 2b4a0028     move.l     a2, $28(a5)
007624: 4e77         rtr        
007626: 48e7f0c0     movem.l    d0-d3/a0-a1, -(a7)
00762a: 61000164     bsr.w      $7790
00762e: 6540         bcs.b      $7670
007630: 30280012     move.w     $12(a0), d0
007634: 14280015     move.b     $15(a0), d2
007638: d1e8000c     adda.l     $c(a0), a0
00763c: 6100f0bc     bsr.w      $66fa
007640: 6542         bcs.b      $7684
007642: b202         cmp.b      d2, d1
007644: 655e         bcs.b      $76a4
007646: 6224         bhi.b      $766c
007648: 082e0002002e btst.b     #$2, $2e(a6)
00764e: 661c         bne.b      $766c
007650: 4a6a000c     tst.w      $c(a2)
007654: 6616         bne.b      $766c
007656: 2017         move.l     (a7), d0
007658: b0aa0004     cmp.l      $4(a2), d0
00765c: 670e         beq.b      $766c
00765e: 0c6e4afc0000 cmpi.w     #$4afc, $0(a6)
007664: 6606         bne.b      $766c
007666: 6100f1a8     bsr.w      $6810
00766a: 6438         bcc.b      $76a4
00766c: 323c00e7     move.w     #$e7, d1
007670: 3f410006     move.w     d1, $6(a7)
007674: 4cdf030f     movem.l    (a7)+, d0-d3/a0-a1
007678: 003c0001     ori.b      #$1, ccr
00767c: 4e75         rts        
00767e: 323c00ce     move.w     #$ce, d1
007682: 60ec         bra.b      $7670
007684: b5fc00000000 cmpa.l     #$0, a2
00768a: 6618         bne.b      $76a4
00768c: 202e0040     move.l     $40(a6), d0
007690: 206e003c     movea.l    $3c(a6), a0
007694: 9088         sub.l      a0, d0
007696: 610000be     bsr.w      $7756
00769a: 65e2         bcs.b      $767e
00769c: 2d48003c     move.l     a0, $3c(a6)
0076a0: 2d490040     move.l     a1, $40(a6)
0076a4: 426a000c     clr.w      $c(a2)
0076a8: 25570004     move.l     (a7), $4(a2)
0076ac: 256f00040008 move.l     $4(a7), $8(a2)
0076b2: 206f0010     movea.l    $10(a7), a0
0076b6: 25480000     move.l     a0, $0(a2)
0076ba: 722e         moveq      #$2e, d1
0076bc: e249         lsr.w      #$1, d1
0076be: 7000         moveq      #$0, d0
0076c0: d058         add.w      (a0)+, d0
0076c2: e078         ror.w      d0, d0
0076c4: 51c9fffa     dbra       d1, $76c0
0076c8: 3540000e     move.w     d0, $e(a2)
0076cc: 122e03e0     move.b     $3e0(a6), d1
0076d0: 08010000     btst.b     #$0, d1
0076d4: 675e         beq.b      $7734
0076d6: 08010001     btst.b     #$1, d1
0076da: 6758         beq.b      $7734
0076dc: 08010002     btst.b     #$2, d1
0076e0: 6706         beq.b      $76e8
0076e2: 08010003     btst.b     #$3, d1
0076e6: 6664         bne.b      $774c
0076e8: 222e03c8     move.l     $3c8(a6), d1
0076ec: 0c81000109c8 cmpi.l     #$109c8, d1
0076f2: 673c         beq.b      $7730
0076f4: 0c81000109be cmpi.l     #$109be, d1
0076fa: 671e         beq.b      $771a
0076fc: 0c81000109b4 cmpi.l     #$109b4, d1
007702: 6648         bne.b      $774c
007704: 40e7         move.w     sr, -(a7)
007706: 007c0700     ori.w      #$700, sr
00770a: 4e7a0002     movec      cacr, d0
00770e: 08c00003     bset.b     #$3, d0
007712: 4e7b0002     movec      d0, cacr
007716: 46df         move.w     (a7)+, sr
007718: 6032         bra.b      $774c
00771a: 40e7         move.w     sr, -(a7)
00771c: 007c0700     ori.w      #$700, sr
007720: 4e7a0002     movec      cacr, d0
007724: 00400808     ori.w      #$808, d0
007728: 4e7b0002     movec      d0, cacr
00772c: 46df         move.w     (a7)+, sr
00772e: 601c         bra.b      $774c
007730: f4f8         cpusha     #$3
007732: 6018         bra.b      $774c
007734: 7044         moveq      #$44, d0
007736: 2f0b         move.l     a3, -(a7)
007738: 266e03a4     movea.l    $3a4(a6), a3
00773c: 487a000c     pea.l      $774a(pc)
007740: 2f2b0168     move.l     $168(a3), -(a7)
007744: 266b0568     movea.l    $568(a3), a3
007748: 4e75         rts        
00774a: 265f         movea.l    (a7)+, a3
00774c: 023c         .dc.w      $023c
00774e: fffe         dc.w       $fffe
007750: 4cdf030f     movem.l    (a7)+, d0-d3/a0-a1
007754: 4e75         rts        
007756: 2f02         move.l     d2, -(a7)
007758: 2400         move.l     d0, d2
00775a: d0bc00000100 add.l      #$100, d0
007760: 6100a030     bsr.w      $1792
007764: 6524         bcs.b      $778a
007766: 6100f300     bsr.w      $6a68
00776a: 43f22800     lea.l      (a2, d2.l), a1
00776e: 2200         move.l     d0, d1
007770: 9282         sub.l      d2, d1
007772: e489         lsr.l      #$2, d1
007774: 5341         subq.w     #$1, d1
007776: 4299         clr.l      (a1)+
007778: 51c9fffc     dbra       d1, $7776
00777c: c14a         exg.l      a0, a2
00777e: c142         exg.l      d0, d2
007780: 6100a080     bsr.w      $1802
007784: 45f00800     lea.l      (a0, d0.l), a2
007788: 2002         move.l     d2, d0
00778a: 4cdf0004     movem.l    (a7)+, d2
00778e: 4e75         rts        
007790: 2f08         move.l     a0, -(a7)
007792: 0c504afc     cmpi.w     #$4afc, (a0)
007796: 665a         bne.b      $77f2
007798: 0c6800010002 cmpi.w     #$1, $2(a0)
00779e: 6616         bne.b      $77b6
0077a0: 722e         moveq      #$2e, d1
0077a2: e249         lsr.w      #$1, d1
0077a4: 74ff         moveq      #$ff, d2
0077a6: 3018         move.w     (a0)+, d0
0077a8: b142         eor.w      d0, d2
0077aa: 51c9fffa     dbra       d1, $77a6
0077ae: 670c         beq.b      $77bc
0077b0: 323c00ec     move.w     #$ec, d1
0077b4: 6040         bra.b      $77f6
0077b6: 323c00ac     move.w     #$ac, d1
0077ba: 603a         bra.b      $77f6
0077bc: 0c6e6f6b0000 cmpi.w     #$6f6b, $0(a6)
0077c2: 6718         beq.b      $77dc
0077c4: 2057         movea.l    (a7), a0
0077c6: 72ff         moveq      #$ff, d1
0077c8: 26280004     move.l     $4(a0), d3
0077cc: 614c         bsr.b      $781a
0077ce: b2bc00800fe3 cmp.l      #$800fe3, d1
0077d4: 6706         beq.b      $77dc
0077d6: 323c00e8     move.w     #$e8, d1
0077da: 601a         bra.b      $77f6
0077dc: 2057         movea.l    (a7), a0
0077de: d1e8000c     adda.l     $c(a0), a0
0077e2: 6100f4de     bsr.w      $6cc2
0077e6: 650e         bcs.b      $77f6
0077e8: 4a00         tst.b      d0
0077ea: 670e         beq.b      $77fa
0077ec: 323c00eb     move.w     #$eb, d1
0077f0: 6004         bra.b      $77f6
0077f2: 323c00cd     move.w     #$cd, d1
0077f6: 003c0001     ori.b      #$1, ccr
0077fa: 205f         movea.l    (a7)+, a0
0077fc: 4e75         rts        
0077fe: 2600         move.l     d0, d3
007800: 2008         move.l     a0, d0
007802: 660a         bne.b      $780e
007804: c2bc00ffffff and.l      #$ffffff, d1
00780a: 6132         bsr.b      $783e
00780c: 6002         bra.b      $7810
00780e: 610a         bsr.b      $781a
007810: 2b410004     move.l     d1, $4(a5)
007814: 50ed0004     st.b       $4(a5)
007818: 4e75         rts        
00781a: 028100ffffff andi.l     #$ffffff, d1
007820: 4a83         tst.l      d3
007822: 67f4         beq.b      $7818
007824: 3008         move.w     a0, d0
007826: 08000000     btst.b     #$0, d0
00782a: 6704         beq.b      $7830
00782c: 610c         bsr.b      $783a
00782e: 5383         subq.l     #$1, d3
007830: e28b         lsr.l      #$1, d3
007832: 6400005a     bcc.w      $788e
007836: 61000056     bsr.w      $788e
00783a: 7000         moveq      #$0, d0
00783c: 1018         move.b     (a0)+, d0
00783e: 4840         swap       d0
007840: b380         eor.l      d1, d0
007842: 4240         clr.w      d0
007844: e189         lsl.l      #$8, d1
007846: 4840         swap       d0
007848: 3400         move.w     d0, d2
00784a: e388         lsl.l      #$1, d0
00784c: b181         eor.l      d0, d1
00784e: eb88         lsl.l      #$5, d0
007850: b181         eor.l      d0, d1
007852: c47c00ff     and.w      #$ff, d2
007856: 3002         move.w     d2, d0
007858: e608         lsr.b      #$3, d0
00785a: 053b0012     btst.l     d2, $786e(pc, d0.w)
00785e: 6706         beq.b      $7866
007860: 0a8100800021 eori.l     #$800021, d1
007866: 028100ffffff andi.l     #$ffffff, d1
00786c: 4e75         rts        
00786e: 96696996     sub.w      $6996(a1), d3
007872: 6996         bvs.b      $780a
007874: 96696996     sub.w      $6996(a1), d3
007878: 96699669     sub.w      -$6997(a1), d3
00787c: 6996         bvs.b      $7814
00787e: 6996         bvs.b      $7816
007880: 96699669     sub.w      -$6997(a1), d3
007884: 6996         bvs.b      $781c
007886: 96696996     sub.w      $6996(a1), d3
00788a: 6996         bvs.b      $7822
00788c: 966948e7     sub.w      $48e7(a1), d3
007890: 0c002a3c     cmpi.b     #$3c, d0
007894: 00800021e28b ori.l      #$21e28b, d0
00789a: 644a         bcc.b      $78e6
00789c: 619c         bsr.b      $783a
00789e: 619a         bsr.b      $783a
0078a0: 6044         bra.b      $78e6
0078a2: e189         lsl.l      #$8, d1
0078a4: 2018         move.l     (a0)+, d0
0078a6: b181         eor.l      d0, d1
0078a8: 2401         move.l     d1, d2
0078aa: 3801         move.w     d1, d4
0078ac: 4242         clr.w      d2
0078ae: 4842         swap       d2
0078b0: 7083         moveq      #$83, d0
0078b2: c042         and.w      d2, d0
0078b4: b144         eor.w      d0, d4
0078b6: 203c007fffff move.l     #$7fffff, d0
0078bc: c081         and.l      d1, d0
0078be: eb88         lsl.l      #$5, d0
0078c0: b181         eor.l      d0, d1
0078c2: 2001         move.l     d1, d0
0078c4: 0242fffc     andi.w     #$fffc, d2
0078c8: e78a         lsl.l      #$3, d2
0078ca: b581         eor.l      d2, d1
0078cc: 7417         moveq      #$17, d2
0078ce: e4a8         lsr.l      d2, d0
0078d0: b181         eor.l      d0, d1
0078d2: d281         add.l      d1, d1
0078d4: 3004         move.w     d4, d0
0078d6: e048         lsr.w      #$8, d0
0078d8: b900         eor.b      d4, d0
0078da: 3800         move.w     d0, d4
0078dc: e60c         lsr.b      #$3, d4
0078de: 013b408e     btst.l     d0, $786e(pc, d4.w)
0078e2: 6702         beq.b      $78e6
0078e4: bb81         eor.l      d5, d1
0078e6: 4a03         tst.b      d3
0078e8: 6622         bne.b      $790c
0078ea: 082c0005001c btst.b     #$5, $1c(a4)
0078f0: 671a         beq.b      $790c
0078f2: 48e7c044     movem.l    d0-d1/a1/a5, -(a7)
0078f6: 43ee037c     lea.l      $37c(a6), a1
0078fa: b3e90030     cmpa.l     $30(a1), a1
0078fe: 6708         beq.b      $7908
007900: 2a4f         movea.l    a7, a5
007902: 7001         moveq      #$1, d0
007904: 6100f83e     bsr.w      $7144
007908: 4cdf2203     movem.l    (a7)+, d0-d1/a1/a5
00790c: 51cbff94     dbra       d3, $78a2
007910: 5243         addq.w     #$1, d3
007912: 5383         subq.l     #$1, d3
007914: 648c         bcc.b      $78a2
007916: 4cdf0030     movem.l    (a7)+, d4-d5
00791a: 028100ffffff andi.l     #$ffffff, d1
007920: 4e75         rts        
007922: 2f08         move.l     a0, -(a7)
007924: 0c504afc     cmpi.w     #$4afc, (a0)
007928: 6600fec8     bne.w      $77f2
00792c: 48e7f000     movem.l    d0-d3, -(a7)
007930: 722d         moveq      #$2d, d1
007932: e249         lsr.w      #$1, d1
007934: 343cffff     move.w     #$ffff, d2
007938: 3018         move.w     (a0)+, d0
00793a: b142         eor.w      d0, d2
00793c: 51c9fffa     dbra       d1, $7938
007940: 3082         move.w     d2, (a0)
007942: 206f0010     movea.l    $10(a7), a0
007946: 72ff         moveq      #$ff, d1
007948: 26280004     move.l     $4(a0), d3
00794c: 5783         subq.l     #$3, d3
00794e: 423038ff     clr.b      -$1(a0, d3.l)
007952: 6100fec6     bsr.w      $781a
007956: 0a8100ffffff eori.l     #$ffffff, d1
00795c: 2141ffff     move.l     d1, -$1(a0)
007960: 4cdf010f     movem.l    (a7)+, d0-d3/a0
007964: 4e75         rts        
007966: 6100f7ac     bsr.w      $7114
00796a: 08ac00070371 bclr.b     #$7, $371(a4)
007970: 4a6c0026     tst.w      $26(a4)
007974: 6706         beq.b      $797c
007976: 08ec00070371 bset.b     #$7, $371(a4)
00797c: 302c0006     move.w     $6(a4), d0
007980: 6758         beq.b      $79da
007982: 6100f270     bsr.w      $6bf4
007986: 6552         bcs.b      $79da
007988: 08290000001c btst.b     #$0, $1c(a1)
00798e: 6708         beq.b      $7998
007990: 204c         movea.l    a4, a0
007992: 6150         bsr.b      $79e4
007994: 60000084     bra.w      $7a1a
007998: 30290004     move.w     $4(a1), d0
00799c: 66e4         bne.b      $7982
00799e: 42ad0000     clr.l      $0(a5)
0079a2: 42ad0004     clr.l      $4(a5)
0079a6: 40c1         move.w     sr, d1
0079a8: 007c0700     ori.w      #$700, sr
0079ac: 08ac00070371 bclr.b     #$7, $371(a4)
0079b2: 6622         bne.b      $79d6
0079b4: 45ee038c     lea.l      $38c(a6), a2
0079b8: 206a0034     movea.l    $34(a2), a0
0079bc: 29480034     move.l     a0, $34(a4)
0079c0: 294a0030     move.l     a2, $30(a4)
0079c4: 254c0034     move.l     a4, $34(a2)
0079c8: 214c0030     move.l     a4, $30(a0)
0079cc: 197c00770020 move.b     #$77, $20(a4)
0079d2: 6000f85a     bra.w      $722e
0079d6: 46c1         move.w     d1, sr
0079d8: 4e75         rts        
0079da: 323c00e2     move.w     #$e2, d1
0079de: 003c0001     ori.b      #$1, ccr
0079e2: 4e75         rts        
0079e4: 426d0000     clr.w      $0(a5)
0079e8: 3b6900000002 move.w     $0(a1), $2(a5)
0079ee: 426d0004     clr.w      $4(a5)
0079f2: 3b6900260006 move.w     $26(a1), $6(a5)
0079f8: 2449         movea.l    a1, a2
0079fa: 43e80002     lea.l      $2(a0), a1
0079fe: 2f08         move.l     a0, -(a7)
007a00: 6004         bra.b      $7a06
007a02: 6100f1f0     bsr.w      $6bf4
007a06: 30290004     move.w     $4(a1), d0
007a0a: b06a0000     cmp.w      $0(a2), d0
007a0e: 66f2         bne.b      $7a02
007a10: 336a00040004 move.w     $4(a2), $4(a1)
007a16: 205f         movea.l    (a7)+, a0
007a18: 4e75         rts        
007a1a: 48e780e0     movem.l    d0/a0-a2, -(a7)
007a1e: 206e0044     movea.l    $44(a6), a0
007a22: 6100f1f6     bsr.w      $6c1a
007a26: 4cdf0701     movem.l    (a7)+, d0/a0-a2
007a2a: 4e75         rts        
007a2c: 6b65         bmi.b      $7a93
007a2e: 726e         moveq      #$6e, d1
007a30: 656c         bcs.b      $7a9e
007a32: 000000ec     ori.b      #$ec, d0
007a36: 4c16         .dc.w      $4c16
