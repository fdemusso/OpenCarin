00003c: 00640080     ori.w      #$80, -(a4)
000040: 009600ac00c0 ori.l      #$ac00c0, (a6)
000046: 007201120512067a ori.w      #$112, ([a2, d0.w * 4], $67a)
00004e: 0766         bchg.b     d3, -(a6)
000050: 07da         bset.b     d3, (a2)+
000052: 023c         .dc.w      $023c
000054: fffe         dc.w       $fffe
000056: 2200         move.l     d0, d1
000058: 6b02         bmi.b      $5c
00005a: 4e75         rts        
00005c: 4481         neg.l      d1
00005e: 003c0001     ori.b      #$1, ccr
000062: 4e75         rts        
000064: 2f0c         move.l     a4, -(a7)
000066: 220a         move.l     a2, d1
000068: 2009         move.l     a1, d0
00006a: 610000a8     bsr.w      $114
00006e: 588f         addq.l     #$4, a7
000070: 60e0         bra.b      $52
000072: 2f0c         move.l     a4, -(a7)
000074: 220a         move.l     a2, d1
000076: 2009         move.l     a1, d0
000078: 61000926     bsr.w      $9a0
00007c: 588f         addq.l     #$4, a7
00007e: 60d2         bra.b      $52
000080: 2f02         move.l     d2, -(a7)
000082: 2f00         move.l     d0, -(a7)
000084: 2f0d         move.l     a5, -(a7)
000086: 2f0c         move.l     a4, -(a7)
000088: 220a         move.l     a2, d1
00008a: 2009         move.l     a1, d0
00008c: 61000484     bsr.w      $512
000090: 4fef0010     lea.l      $10(a7), a7
000094: 60bc         bra.b      $52
000096: 2f02         move.l     d2, -(a7)
000098: 2f00         move.l     d0, -(a7)
00009a: 2f0d         move.l     a5, -(a7)
00009c: 2f0c         move.l     a4, -(a7)
00009e: 220a         move.l     a2, d1
0000a0: 2009         move.l     a1, d0
0000a2: 610005d6     bsr.w      $67a
0000a6: 4fef0010     lea.l      $10(a7), a7
0000aa: 60a6         bra.b      $52
0000ac: 2f00         move.l     d0, -(a7)
0000ae: 2f0d         move.l     a5, -(a7)
0000b0: 2f0c         move.l     a4, -(a7)
0000b2: 220a         move.l     a2, d1
0000b4: 2009         move.l     a1, d0
0000b6: 610006ae     bsr.w      $766
0000ba: 4fef000c     lea.l      $c(a7), a7
0000be: 6092         bra.b      $52
0000c0: 2f00         move.l     d0, -(a7)
0000c2: 2f0d         move.l     a5, -(a7)
0000c4: 2f0c         move.l     a4, -(a7)
0000c6: 220a         move.l     a2, d1
0000c8: 2009         move.l     a1, d0
0000ca: 6100070e     bsr.w      $7da
0000ce: 4fef000c     lea.l      $c(a7), a7
0000d2: 6000ff7e     bra.w      $52
0000d6: 2f0e         move.l     a6, -(a7)
0000d8: 220b         move.l     a3, d1
0000da: 200a         move.l     a2, d0
0000dc: 610001fc     bsr.w      $2da
0000e0: 0c80ffffffff cmpi.l     #$ffffffff, d0
0000e6: 6708         beq.b      $f0
0000e8: 588f         addq.l     #$4, a7
0000ea: 023c         .dc.w      $023c
0000ec: fffe         dc.w       $fffe
0000ee: 4e75         rts        
0000f0: 588f         addq.l     #$4, a7
0000f2: 003c0001     ori.b      #$1, ccr
0000f6: 4e75         rts        
0000f8: 2f0e         move.l     a6, -(a7)
0000fa: 220b         move.l     a3, d1
0000fc: 200a         move.l     a2, d0
0000fe: 61000406     bsr.w      $506
000102: 0c80ffffffff cmpi.l     #$ffffffff, d0
000108: 67e6         beq.b      $f0
00010a: 588f         addq.l     #$4, a7
00010c: 023c         .dc.w      $023c
00010e: fffe         dc.w       $fffe
000110: 4e75         rts        
000112: 4e75         rts        
000114: 4e550000     link.w     a5, #$0
000118: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
00011c: 2440         movea.l    d0, a2
00011e: 4fefffea     lea.l      -$16(a7), a7
000122: 2f4a0012     move.l     a2, $12(a7)
000126: 266f001a     movea.l    $1a(a7), a3
00012a: 206f0012     movea.l    $12(a7), a0
00012e: 17680048002e move.b     $48(a0), $2e(a3)
000134: 60ff00000094 bra.l      $1ca
00013a: 41fb017000001308 lea.l      $1308(a16, invalid.w), a0
000142: 27480038     move.l     a0, $38(a3)
000146: 60ff000000ba bra.l      $202
00014c: 41fb017000001304 lea.l      $1304(a16, invalid.w), a0
000154: 27480038     move.l     a0, $38(a3)
000158: 60ff000000a8 bra.l      $202
00015e: 41fb017000001304 lea.l      $1304(a16, invalid.w), a0
000166: 27480038     move.l     a0, $38(a3)
00016a: 60ff00000096 bra.l      $202
000170: 41fb017000001304 lea.l      $1304(a16, invalid.w), a0
000178: 27480038     move.l     a0, $38(a3)
00017c: 60ff00000084 bra.l      $202
000182: 41fb017000001304 lea.l      $1304(a16, invalid.w), a0
00018a: 27480038     move.l     a0, $38(a3)
00018e: 60ff00000072 bra.l      $202
000194: 41fb017000001304 lea.l      $1304(a16, invalid.w), a0
00019c: 27480038     move.l     a0, $38(a3)
0001a0: 60ff00000060 bra.l      $202
0001a6: 41fb017000001304 lea.l      $1304(a16, invalid.w), a0
0001ae: 27480038     move.l     a0, $38(a3)
0001b2: 60ff0000004e bra.l      $202
0001b8: 41fb017000001304 lea.l      $1304(a16, invalid.w), a0
0001c0: 27480038     move.l     a0, $38(a3)
0001c4: 60ff0000003c bra.l      $202
0001ca: 7000         moveq      #$0, d0
0001cc: 102a0035     move.b     $35(a2), d0
0001d0: 0c400007     cmpi.w     #$7, d0
0001d4: 62ff0000002c bhi.l      $202
0001da: 203b0406     move.l     $1e2(pc, d0.w), d0
0001de: 4efb0802     jmp        $1e2(pc, d0.l)
0001e2: ffff         dc.w       $ffff
0001e4: ff58         frestore   (a0)+
0001e6: ffff         dc.w       $ffff
0001e8: ff6affff     frestore   -$1(a2)
0001ec: ff7cffff     frestore   #$ff
0001f0: ff8e         dc.w       $ff8e
0001f2: ffff         dc.w       $ffff
0001f4: ffa0         dc.w       $ffa0
0001f6: ffff         dc.w       $ffff
0001f8: ffb2         dc.w       $ffb2
0001fa: ffff         dc.w       $ffff
0001fc: ffc4         dc.w       $ffc4
0001fe: ffff         dc.w       $ffff
000200: ffd6         dc.w       $ffd6
000202: 277c000000010030 move.l     #$1, $30(a3)
00020a: 426b003c     clr.w      $3c(a3)
00020e: 426b0040     clr.w      $40(a3)
000212: 2f2a0030     move.l     $30(a2), -(a7)
000216: 2f2f001e     move.l     $1e(a7), -(a7)
00021a: 487b0170fffffeba pea.l      $fffffeba(a16, invalid.w)
000222: 7000         moveq      #$0, d0
000224: 102a0036     move.b     $36(a2), d0
000228: 2200         move.l     d0, d1
00022a: 7000         moveq      #$0, d0
00022c: 102a0034     move.b     $34(a2), d0
000230: 61ff00000fbc bsr.l      $11ee
000236: 4fef000c     lea.l      $c(a7), a7
00023a: 4a80         tst.l      d0
00023c: 67ff00000010 beq.l      $24e
000242: 70ff         moveq      #$ff, d0
000244: 4fef0016     lea.l      $16(a7), a7
000248: 60ff00000086 bra.l      $2d0
00024e: 48780001     pea.l      $1.w
000252: 7202         moveq      #$2, d1
000254: 7005         moveq      #$5, d0
000256: 61ff00000be4 bsr.l      $e3c
00025c: 588f         addq.l     #$4, a7
00025e: 2f40000a     move.l     d0, $a(a7)
000262: 4aaf000a     tst.l      $a(a7)
000266: 67ff0000002c beq.l      $294
00026c: 7009         moveq      #$9, d0
00026e: b0af000a     cmp.l      $a(a7), d0
000272: 67ff00000020 beq.l      $294
000278: 222f001a     move.l     $1a(a7), d1
00027c: 7000         moveq      #$0, d0
00027e: 102a0034     move.b     $34(a2), d0
000282: 61ff00000f80 bsr.l      $1204
000288: 70ff         moveq      #$ff, d0
00028a: 4fef0016     lea.l      $16(a7), a7
00028e: 60ff00000040 bra.l      $2d0
000294: 60ff0000000c bra.l      $2a2
00029a: 7005         moveq      #$5, d0
00029c: 61ff000010c4 bsr.l      $1362
0002a2: 4857         pea.l      (a7)
0002a4: 7207         moveq      #$7, d1
0002a6: 7005         moveq      #$5, d0
0002a8: 61ff000007a0 bsr.l      $a4a
0002ae: 588f         addq.l     #$4, a7
0002b0: 4a80         tst.l      d0
0002b2: 66ffffffffe6 bne.l      $29a
0002b8: 41d7         lea.l      (a7), a0
0002ba: 2008         move.l     a0, d0
0002bc: 61ff0000093e bsr.l      $bfc
0002c2: 7000         moveq      #$0, d0
0002c4: 4fef0016     lea.l      $16(a7), a7
0002c8: 60ff00000006 bra.l      $2d0
0002ce: 4e71         nop        
0002d0: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
0002d6: 4e5d         unlk       a5
0002d8: 4e75         rts        
0002da: 4e550000     link.w     a5, #$0
0002de: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
0002e2: 2440         movea.l    d0, a2
0002e4: 4fefffe6     lea.l      -$1a(a7), a7
0002e8: 264a         movea.l    a2, a3
0002ea: 61ff00000e12 bsr.l      $10fe
0002f0: 3f400018     move.w     d0, $18(a7)
0002f4: 0c6f00050018 cmpi.w     #$5, $18(a7)
0002fa: 66ff000001f0 bne.l      $4ec
000300: 61ff00000e2c bsr.l      $112e
000306: 41ef000e     lea.l      $e(a7), a0
00030a: 2208         move.l     a0, d1
00030c: 7005         moveq      #$5, d0
00030e: 61ff00000946 bsr.l      $c56
000314: 4a80         tst.l      d0
000316: 66ff000001a2 bne.l      $4ba
00031c: 41ef0009     lea.l      $9(a7), a0
000320: 2208         move.l     a0, d1
000322: 41ef000e     lea.l      $e(a7), a0
000326: 2008         move.l     a0, d0
000328: 61ff00000ab0 bsr.l      $dda
00032e: 4a80         tst.l      d0
000330: 66ff00000182 bne.l      $4b4
000336: 60ff00000164 bra.l      $49c
00033c: 486f0004     pea.l      $4(a7)
000340: 41ef0004     lea.l      $4(a7), a0
000344: 2208         move.l     a0, d1
000346: 41ef0012     lea.l      $12(a7), a0
00034a: 2008         move.l     a0, d0
00034c: 61ff000009a4 bsr.l      $cf2
000352: 588f         addq.l     #$4, a7
000354: 4a80         tst.l      d0
000356: 66ff000000ca bne.l      $422
00035c: 60ff00000094 bra.l      $3f2
000362: 377c00f4004c move.w     #$f4, $4c(a3)
000368: 60ff000000b8 bra.l      $422
00036e: 377c00f5004e move.w     #$f5, $4e(a3)
000374: 426b004a     clr.w      $4a(a3)
000378: 7201         moveq      #$1, d1
00037a: 306b0046     movea.w    $46(a3), a0
00037e: 2008         move.l     a0, d0
000380: 61ff00000f9e bsr.l      $1320
000386: 60ff0000009a bra.l      $422
00038c: 426b004c     clr.w      $4c(a3)
000390: 4a6b003c     tst.w      $3c(a3)
000394: 67ff00000016 beq.l      $3ac
00039a: 306b003e     movea.w    $3e(a3), a0
00039e: 2208         move.l     a0, d1
0003a0: 306b003c     movea.w    $3c(a3), a0
0003a4: 2008         move.l     a0, d0
0003a6: 61ff00000f78 bsr.l      $1320
0003ac: 60ff00000074 bra.l      $422
0003b2: 4a6b0040     tst.w      $40(a3)
0003b6: 67ff00000016 beq.l      $3ce
0003bc: 306b0042     movea.w    $42(a3), a0
0003c0: 2208         move.l     a0, d1
0003c2: 306b0040     movea.w    $40(a3), a0
0003c6: 2008         move.l     a0, d0
0003c8: 61ff00000f56 bsr.l      $1320
0003ce: 60ff00000052 bra.l      $422
0003d4: 426b004a     clr.w      $4a(a3)
0003d8: 7201         moveq      #$1, d1
0003da: 306b0046     movea.w    $46(a3), a0
0003de: 2008         move.l     a0, d0
0003e0: 61ff00000f3e bsr.l      $1320
0003e6: 60ff0000003a bra.l      $422
0003ec: 60ff00000034 bra.l      $422
0003f2: 2057         movea.l    (a7), a0
0003f4: 1010         move.b     (a0), d0
0003f6: 49c0         extb.l     d0
0003f8: 5380         subq.l     #$1, d0
0003fa: 0c8000000004 cmpi.l     #$4, d0
000400: 62ffffffffea bhi.l      $3ec
000406: 203b0406     move.l     $40e(pc, d0.w), d0
00040a: 4efb0802     jmp        $40e(pc, d0.l)
00040e: ffff         dc.w       $ffff
000410: ff7e         dc.w       $ff7e
000412: ffff         dc.w       $ffff
000414: ffc6         dc.w       $ffc6
000416: ffff         dc.w       $ffff
000418: ffa4         dc.w       $ffa4
00041a: ffff         dc.w       $ffff
00041c: ff54         frestore   (a4)
00041e: ffff         dc.w       $ffff
000420: ff60         dc.w       $ff60
000422: 60ff00000090 bra.l      $4b4
000428: 486f0004     pea.l      $4(a7)
00042c: 41ef0004     lea.l      $4(a7), a0
000430: 2208         move.l     a0, d1
000432: 41ef0012     lea.l      $12(a7), a0
000436: 2008         move.l     a0, d0
000438: 61ff000008b8 bsr.l      $cf2
00043e: 588f         addq.l     #$4, a7
000440: 4a80         tst.l      d0
000442: 66ff00000052 bne.l      $496
000448: 2057         movea.l    (a7), a0
00044a: 1010         move.b     (a0), d0
00044c: 49c0         extb.l     d0
00044e: 27400034     move.l     d0, $34(a3)
000452: 202f0004     move.l     $4(a7), d0
000456: 5380         subq.l     #$1, d0
000458: b0ab0050     cmp.l      $50(a3), d0
00045c: 6cff0000000e bge.l      $46c
000462: 202f0004     move.l     $4(a7), d0
000466: 5380         subq.l     #$1, d0
000468: 27400050     move.l     d0, $50(a3)
00046c: 2f2b0050     move.l     $50(a3), -(a7)
000470: 202f0004     move.l     $4(a7), d0
000474: 5280         addq.l     #$1, d0
000476: 2200         move.l     d0, d1
000478: 202b0054     move.l     $54(a3), d0
00047c: 61ff0000104e bsr.l      $14cc
000482: 588f         addq.l     #$4, a7
000484: 426b0048     clr.w      $48(a3)
000488: 7201         moveq      #$1, d1
00048a: 306b0044     movea.w    $44(a3), a0
00048e: 2008         move.l     a0, d0
000490: 61ff00000e8e bsr.l      $1320
000496: 60ff0000001c bra.l      $4b4
00049c: 7000         moveq      #$0, d0
00049e: 102f0009     move.b     $9(a7), d0
0004a2: 4a40         tst.w      d0
0004a4: 67ffffffff82 beq.l      $428
0004aa: 0c400006     cmpi.w     #$6, d0
0004ae: 67fffffffe8c beq.l      $33c
0004b4: 60ff00000018 bra.l      $4ce
0004ba: 13fc0001009f00fd move.b     #$1, $9f00fd.l
0004c2: 70ff         moveq      #$ff, d0
0004c4: 4fef001a     lea.l      $1a(a7), a7
0004c8: 60ff00000032 bra.l      $4fc
0004ce: 41ef000e     lea.l      $e(a7), a0
0004d2: 2008         move.l     a0, d0
0004d4: 61ff00000944 bsr.l      $e1a
0004da: 7000         moveq      #$0, d0
0004dc: 4fef001a     lea.l      $1a(a7), a7
0004e0: 60ff0000001a bra.l      $4fc
0004e6: 60ff00000010 bra.l      $4f8
0004ec: 70ff         moveq      #$ff, d0
0004ee: 4fef001a     lea.l      $1a(a7), a7
0004f2: 60ff00000008 bra.l      $4fc
0004f8: 4fef001a     lea.l      $1a(a7), a7
0004fc: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
000502: 4e5d         unlk       a5
000504: 4e75         rts        
000506: 4e550000     link.w     a5, #$0
00050a: 48e78000     movem.l    d0, -(a7)
00050e: 4e5d         unlk       a5
000510: 4e75         rts        
000512: 4e550000     link.w     a5, #$0
000516: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00051a: 2441         movea.l    d1, a2
00051c: 4feffff6     lea.l      -$a(a7), a7
000520: 264a         movea.l    a2, a3
000522: 206f002a     movea.l    $2a(a7), a0
000526: 276800040050 move.l     $4(a0), $50(a3)
00052c: 206f002a     movea.l    $2a(a7), a0
000530: 276800200054 move.l     $20(a0), $54(a3)
000536: 206f0026     movea.l    $26(a7), a0
00053a: 37500044     move.w     (a0), $44(a3)
00053e: 60ff0000000c bra.l      $54c
000544: 7005         moveq      #$5, d0
000546: 61ff00000e1a bsr.l      $1362
00054c: 4857         pea.l      (a7)
00054e: 7202         moveq      #$2, d1
000550: 7005         moveq      #$5, d0
000552: 61ff000004f6 bsr.l      $a4a
000558: 588f         addq.l     #$4, a7
00055a: 4a80         tst.l      d0
00055c: 66ffffffffe6 bne.l      $544
000562: 41d7         lea.l      (a7), a0
000564: 2008         move.l     a0, d0
000566: 61ff00000694 bsr.l      $bfc
00056c: 377c00010048 move.w     #$1, $48(a3)
000572: 60ff0000000c bra.l      $580
000578: 7000         moveq      #$0, d0
00057a: 61ff00000dd2 bsr.l      $134e
000580: 4a6b0048     tst.w      $48(a3)
000584: 66fffffffff2 bne.l      $578
00058a: 7001         moveq      #$1, d0
00058c: b0ab0030     cmp.l      $30(a3), d0
000590: 66ff0000003a bne.l      $5cc
000596: 7001         moveq      #$1, d0
000598: b0ab0034     cmp.l      $34(a3), d0
00059c: 66ff00000018 bne.l      $5b6
0005a2: 202b0050     move.l     $50(a3), d0
0005a6: 4fef000a     lea.l      $a(a7), a7
0005aa: 60ff000000c4 bra.l      $670
0005b0: 60ff00000014 bra.l      $5c6
0005b6: 203cffffff06 move.l     #$ffffff06, d0
0005bc: 4fef000a     lea.l      $a(a7), a7
0005c0: 60ff000000ae bra.l      $670
0005c6: 60ff000000a4 bra.l      $66c
0005cc: 7002         moveq      #$2, d0
0005ce: b0ab0030     cmp.l      $30(a3), d0
0005d2: 66ff00000098 bne.l      $66c
0005d8: 60ff00000066 bra.l      $640
0005de: 7001         moveq      #$1, d0
0005e0: 4fef000a     lea.l      $a(a7), a7
0005e4: 60ff0000008a bra.l      $670
0005ea: 60ff00000080 bra.l      $66c
0005f0: 7000         moveq      #$0, d0
0005f2: 4fef000a     lea.l      $a(a7), a7
0005f6: 60ff00000078 bra.l      $670
0005fc: 60ff0000006e bra.l      $66c
000602: 203cfffff7f6 move.l     #$fffff7f6, d0
000608: 4fef000a     lea.l      $a(a7), a7
00060c: 60ff00000062 bra.l      $670
000612: 60ff00000058 bra.l      $66c
000618: 70bf         moveq      #$bf, d0
00061a: 4fef000a     lea.l      $a(a7), a7
00061e: 60ff00000050 bra.l      $670
000624: 60ff00000046 bra.l      $66c
00062a: 203cfffff7f5 move.l     #$fffff7f5, d0
000630: 4fef000a     lea.l      $a(a7), a7
000634: 60ff0000003a bra.l      $670
00063a: 60ff00000030 bra.l      $66c
000640: 202b0034     move.l     $34(a3), d0
000644: 0c8000000004 cmpi.l     #$4, d0
00064a: 62ff00000020 bhi.l      $66c
000650: 203b0406     move.l     $658(pc, d0.w), d0
000654: 4efb0802     jmp        $658(pc, d0.l)
000658: ffff         dc.w       $ffff
00065a: ff86         dc.w       $ff86
00065c: ffff         dc.w       $ffff
00065e: ffaa         dc.w       $ffaa
000660: ffff         dc.w       $ffff
000662: ffc0         dc.w       $ffc0
000664: ffff         dc.w       $ffff
000666: ffd2         dc.w       $ffd2
000668: ffff         dc.w       $ffff
00066a: ff98         dc.w       $ff98
00066c: 4fef000a     lea.l      $a(a7), a7
000670: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
000676: 4e5d         unlk       a5
000678: 4e75         rts        
00067a: 4e550000     link.w     a5, #$0
00067e: 48e7cef8     movem.l    d0-d1/d4-d6/a0-a4, -(a7)
000682: 2440         movea.l    d0, a2
000684: 2641         movea.l    d1, a3
000686: 286f0034     movea.l    $34(a7), a4
00068a: 282f0038     move.l     $38(a7), d4
00068e: 2a2f003c     move.l     $3c(a7), d5
000692: 4fefffee     lea.l      -$12(a7), a7
000696: 2c0b         move.l     a3, d6
000698: 2eac0020     move.l     $20(a4), (a7)
00069c: 2f6c0004000e move.l     $4(a4), $e(a7)
0006a2: 206f0042     movea.l    $42(a7), a0
0006a6: 2246         movea.l    d6, a1
0006a8: 33500046     move.w     (a0), $46(a1)
0006ac: 60ff0000000c bra.l      $6ba
0006b2: 7005         moveq      #$5, d0
0006b4: 61ff00000cac bsr.l      $1362
0006ba: 486f0004     pea.l      $4(a7)
0006be: 7203         moveq      #$3, d1
0006c0: 7005         moveq      #$5, d0
0006c2: 61ff00000386 bsr.l      $a4a
0006c8: 588f         addq.l     #$4, a7
0006ca: 4a80         tst.l      d0
0006cc: 66ffffffffe4 bne.l      $6b2
0006d2: 486f0004     pea.l      $4(a7)
0006d6: 222f0004     move.l     $4(a7), d1
0006da: 202f0012     move.l     $12(a7), d0
0006de: 61ff00000486 bsr.l      $b66
0006e4: 588f         addq.l     #$4, a7
0006e6: 4a80         tst.l      d0
0006e8: 66ff0000003a bne.l      $724
0006ee: 41ef0004     lea.l      $4(a7), a0
0006f2: 2008         move.l     a0, d0
0006f4: 61ff00000506 bsr.l      $bfc
0006fa: 4a80         tst.l      d0
0006fc: 66ff00000026 bne.l      $724
000702: 2046         movea.l    d6, a0
000704: 317c0001004a move.w     #$1, $4a(a0)
00070a: 60ff0000000c bra.l      $718
000710: 7000         moveq      #$0, d0
000712: 61ff00000c3a bsr.l      $134e
000718: 2046         movea.l    d6, a0
00071a: 4a68004a     tst.w      $4a(a0)
00071e: 66fffffffff0 bne.l      $710
000724: 2046         movea.l    d6, a0
000726: 4a68004e     tst.w      $4e(a0)
00072a: 67ff0000001e beq.l      $74a
000730: 2046         movea.l    d6, a0
000732: 3028004e     move.w     $4e(a0), d0
000736: 48c0         ext.l      d0
000738: 4480         neg.l      d0
00073a: 4fef0012     lea.l      $12(a7), a7
00073e: 60ff0000001c bra.l      $75c
000744: 60ff00000012 bra.l      $758
00074a: 202f000e     move.l     $e(a7), d0
00074e: 4fef0012     lea.l      $12(a7), a7
000752: 60ff00000008 bra.l      $75c
000758: 4fef0012     lea.l      $12(a7), a7
00075c: 4ced1f70ffe0 movem.l    -$20(a5), d4-d6/a0-a4
000762: 4e5d         unlk       a5
000764: 4e75         rts        
000766: 4e550000     link.w     a5, #$0
00076a: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
00076e: 2440         movea.l    d0, a2
000770: 2641         movea.l    d1, a3
000772: 4feffff4     lea.l      -$c(a7), a7
000776: 4297         clr.l      (a7)
000778: 2f4b0004     move.l     a3, $4(a7)
00077c: 206f0030     movea.l    $30(a7), a0
000780: 2f6800200008 move.l     $20(a0), $8(a7)
000786: 60ff00000024 bra.l      $7ac
00078c: 41fb017000000294 lea.l      $294(a16, invalid.w), a0
000794: 226f0008     movea.l    $8(a7), a1
000798: 2288         move.l     a0, (a1)
00079a: 60ff00000026 bra.l      $7c2
0007a0: 2ebcffffff30 move.l     #$ffffff30, (a7)
0007a6: 60ff0000001a bra.l      $7c2
0007ac: 202f0034     move.l     $34(a7), d0
0007b0: 0c800000ff31 cmpi.l     #$ff31, d0
0007b6: 67ffffffffd4 beq.l      $78c
0007bc: 60ffffffffe2 bra.l      $7a0
0007c2: 2017         move.l     (a7), d0
0007c4: 4fef000c     lea.l      $c(a7), a7
0007c8: 60ff00000006 bra.l      $7d0
0007ce: 4e71         nop        
0007d0: 4ced0f00fff0 movem.l    -$10(a5), a0-a3
0007d6: 4e5d         unlk       a5
0007d8: 4e75         rts        
0007da: 4e550000     link.w     a5, #$0
0007de: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
0007e2: 2440         movea.l    d0, a2
0007e4: 2641         movea.l    d1, a3
0007e6: 4fefffec     lea.l      -$14(a7), a7
0007ea: 42af000c     clr.l      $c(a7)
0007ee: 284b         movea.l    a3, a4
0007f0: 206f0038     movea.l    $38(a7), a0
0007f4: 2f6800200010 move.l     $20(a0), $10(a7)
0007fa: 60ff0000011c bra.l      $918
000800: 206f0038     movea.l    $38(a7), a0
000804: 3968000a003e move.w     $a(a0), $3e(a4)
00080a: 206f0034     movea.l    $34(a7), a0
00080e: 3950003c     move.w     (a0), $3c(a4)
000812: 60ff00000172 bra.l      $986
000818: 206f0038     movea.l    $38(a7), a0
00081c: 3968000a0042 move.w     $a(a0), $42(a4)
000822: 206f0034     movea.l    $34(a7), a0
000826: 39500040     move.w     (a0), $40(a4)
00082a: 60ff0000015a bra.l      $986
000830: 426c003c     clr.w      $3c(a4)
000834: 426c0040     clr.w      $40(a4)
000838: 60ff0000014c bra.l      $986
00083e: 7001         moveq      #$1, d0
000840: b0ac0030     cmp.l      $30(a4), d0
000844: 67ff00000058 beq.l      $89e
00084a: 1f7c00010001 move.b     #$1, $1(a7)
000850: 60ff0000000c bra.l      $85e
000856: 7005         moveq      #$5, d0
000858: 61ff00000b08 bsr.l      $1362
00085e: 486f0002     pea.l      $2(a7)
000862: 7204         moveq      #$4, d1
000864: 7005         moveq      #$5, d0
000866: 61ff000001e2 bsr.l      $a4a
00086c: 588f         addq.l     #$4, a7
00086e: 4a80         tst.l      d0
000870: 66ffffffffe4 bne.l      $856
000876: 486f0002     pea.l      $2(a7)
00087a: 41ef0005     lea.l      $5(a7), a0
00087e: 2208         move.l     a0, d1
000880: 7001         moveq      #$1, d0
000882: 61ff000002e2 bsr.l      $b66
000888: 588f         addq.l     #$4, a7
00088a: 41ef0002     lea.l      $2(a7), a0
00088e: 2008         move.l     a0, d0
000890: 61ff0000036a bsr.l      $bfc
000896: 297c000000010030 move.l     #$1, $30(a4)
00089e: 60ff000000e6 bra.l      $986
0008a4: 7002         moveq      #$2, d0
0008a6: b0ac0030     cmp.l      $30(a4), d0
0008aa: 67ff00000058 beq.l      $904
0008b0: 1f7c00020001 move.b     #$2, $1(a7)
0008b6: 60ff0000000c bra.l      $8c4
0008bc: 7005         moveq      #$5, d0
0008be: 61ff00000aa2 bsr.l      $1362
0008c4: 486f0002     pea.l      $2(a7)
0008c8: 7204         moveq      #$4, d1
0008ca: 7005         moveq      #$5, d0
0008cc: 61ff0000017c bsr.l      $a4a
0008d2: 588f         addq.l     #$4, a7
0008d4: 4a80         tst.l      d0
0008d6: 66ffffffffe4 bne.l      $8bc
0008dc: 486f0002     pea.l      $2(a7)
0008e0: 41ef0005     lea.l      $5(a7), a0
0008e4: 2208         move.l     a0, d1
0008e6: 7001         moveq      #$1, d0
0008e8: 61ff0000027c bsr.l      $b66
0008ee: 588f         addq.l     #$4, a7
0008f0: 41ef0002     lea.l      $2(a7), a0
0008f4: 2008         move.l     a0, d0
0008f6: 61ff00000304 bsr.l      $bfc
0008fc: 297c000000020030 move.l     #$2, $30(a4)
000904: 60ff00000080 bra.l      $986
00090a: 2f7cffffff30000c move.l     #$ffffff30, $c(a7)
000912: 60ff00000072 bra.l      $986
000918: 202f003c     move.l     $3c(a7), d0
00091c: 0c8000007f41 cmpi.l     #$7f41, d0
000922: 67fffffffef4 beq.l      $818
000928: 62ff00000038 bhi.l      $962
00092e: 0c40001b     cmpi.w     #$1b, d0
000932: 67fffffffefc beq.l      $830
000938: 62ff00000016 bhi.l      $950
00093e: 0c800000001a cmpi.l     #$1a, d0
000944: 67fffffffeba beq.l      $800
00094a: 60ffffffffbe bra.l      $90a
000950: 0c8000007f40 cmpi.l     #$7f40, d0
000956: 67fffffffed8 beq.l      $830
00095c: 60ffffffffac bra.l      $90a
000962: 0c8000007f44 cmpi.l     #$7f44, d0
000968: 67ffffffff3a beq.l      $8a4
00096e: 62ffffffff9a bhi.l      $90a
000974: 0c8000007f43 cmpi.l     #$7f43, d0
00097a: 67fffffffec2 beq.l      $83e
000980: 60ffffffff88 bra.l      $90a
000986: 202f000c     move.l     $c(a7), d0
00098a: 4fef0014     lea.l      $14(a7), a7
00098e: 60ff00000006 bra.l      $996
000994: 4e71         nop        
000996: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
00099c: 4e5d         unlk       a5
00099e: 4e75         rts        
0009a0: 4e550000     link.w     a5, #$0
0009a4: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0009a8: 2441         movea.l    d1, a2
0009aa: 4fefffee     lea.l      -$12(a7), a7
0009ae: 2f4a000e     move.l     a2, $e(a7)
0009b2: 60ff0000000c bra.l      $9c0
0009b8: 7005         moveq      #$5, d0
0009ba: 61ff000009a6 bsr.l      $1362
0009c0: 4857         pea.l      (a7)
0009c2: 7208         moveq      #$8, d1
0009c4: 7005         moveq      #$5, d0
0009c6: 61ff00000082 bsr.l      $a4a
0009cc: 588f         addq.l     #$4, a7
0009ce: 4a80         tst.l      d0
0009d0: 66ffffffffe6 bne.l      $9b8
0009d6: 41d7         lea.l      (a7), a0
0009d8: 2008         move.l     a0, d0
0009da: 61ff00000220 bsr.l      $bfc
0009e0: 220a         move.l     a2, d1
0009e2: 206f0012     movea.l    $12(a7), a0
0009e6: 7000         moveq      #$0, d0
0009e8: 10280034     move.b     $34(a0), d0
0009ec: 61ff00000816 bsr.l      $1204
0009f2: 4a80         tst.l      d0
0009f4: 67ff00000010 beq.l      $a06
0009fa: 70ff         moveq      #$ff, d0
0009fc: 4fef0012     lea.l      $12(a7), a7
000a00: 60ff00000012 bra.l      $a14
000a06: 7000         moveq      #$0, d0
000a08: 4fef0012     lea.l      $12(a7), a7
000a0c: 60ff00000006 bra.l      $a14
000a12: 4e71         nop        
000a14: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000a1a: 4e5d         unlk       a5
000a1c: 4e75         rts        
000a1e: 4afb         .dc.w      $4afb
000a20: 002840282329 ori.b      #$28, $2329(a0)
000a26: 6770         beq.b      $a98
000a28: 7364         .dc.w      $7364
000a2a: 722e         moveq      #$2e, d1
000a2c: 6309         bls.b      $a37
000a2e: 312e3220     move.w     $3220(a6), -(a0)
000a32: 2020         move.l     -(a0), d0
000a34: 2031312f31332f393220 move.l     ([$3133, a1], d3.w, $2f393220), d0
000a3e: 2020         move.l     -(a0), d0
000a40: 2030393a35393a313500 move.l     ([$35393a31, a0, d3.l], $3500), d0
000a4a: 4e550000     link.w     a5, #$0
000a4e: 48e7c080     movem.l    d0-d1/a0, -(a7)
000a52: 4feffff0     lea.l      -$10(a7), a7
000a56: 7000         moveq      #$0, d0
000a58: 102f0013     move.b     $13(a7), d0
000a5c: 610006f0     bsr.w      $114e
000a60: 4a00         tst.b      d0
000a62: 6606         bne.b      $a6a
000a64: 7002         moveq      #$2, d0
000a66: 600000f0     bra.w      $b58
000a6a: 7000         moveq      #$0, d0
000a6c: 102f0017     move.b     $17(a7), d0
000a70: 61000726     bsr.w      $1198
000a74: 4a00         tst.b      d0
000a76: 6606         bne.b      $a7e
000a78: 7003         moveq      #$3, d0
000a7a: 600000dc     bra.w      $b58
000a7e: 2f7c009f0000000c move.l     #$9f0000, $c(a7)
000a86: 7000         moveq      #$0, d0
000a88: 102f0013     move.b     $13(a7), d0
000a8c: 7206         moveq      #$6, d1
000a8e: 61000af4     bsr.w      $1584
000a92: 222f000c     move.l     $c(a7), d1
000a96: 5481         addq.l     #$2, d1
000a98: d081         add.l      d1, d0
000a9a: 2f400008     move.l     d0, $8(a7)
000a9e: 206f0008     movea.l    $8(a7), a0
000aa2: 7000         moveq      #$0, d0
000aa4: 10280003     move.b     $3(a0), d0
000aa8: e188         lsl.l      #$8, d0
000aaa: d0af000c     add.l      $c(a7), d0
000aae: 206f0024     movea.l    $24(a7), a0
000ab2: 2080         move.l     d0, (a0)
000ab4: 206f0008     movea.l    $8(a7), a0
000ab8: 7000         moveq      #$0, d0
000aba: 10280001     move.b     $1(a0), d0
000abe: e188         lsl.l      #$8, d0
000ac0: d0af000c     add.l      $c(a7), d0
000ac4: 206f0024     movea.l    $24(a7), a0
000ac8: 21400004     move.l     d0, $4(a0)
000acc: 206f0008     movea.l    $8(a7), a0
000ad0: 7000         moveq      #$0, d0
000ad2: 10280001     move.b     $1(a0), d0
000ad6: 206f0008     movea.l    $8(a7), a0
000ada: 7200         moveq      #$0, d1
000adc: 12280002     move.b     $2(a0), d1
000ae0: 9240         sub.w      d0, d1
000ae2: 5241         addq.w     #$1, d1
000ae4: e149         lsl.w      #$8, d1
000ae6: 206f0024     movea.l    $24(a7), a0
000aea: 31410008     move.w     d1, $8(a0)
000aee: 206f0024     movea.l    $24(a7), a0
000af2: 2f6800040004 move.l     $4(a0), $4(a7)
000af8: 206f0008     movea.l    $8(a7), a0
000afc: 102f0013     move.b     $13(a7), d0
000b00: b010         cmp.b      (a0), d0
000b02: 6706         beq.b      $b0a
000b04: 7004         moveq      #$4, d0
000b06: 2e80         move.l     d0, (a7)
000b08: 604c         bra.b      $b56
000b0a: 206f0004     movea.l    $4(a7), a0
000b0e: 4a280001     tst.b      $1(a0)
000b12: 6704         beq.b      $b18
000b14: 7001         moveq      #$1, d0
000b16: 60ee         bra.b      $b06
000b18: 206f0004     movea.l    $4(a7), a0
000b1c: 10af0013     move.b     $13(a7), (a0)
000b20: 206f0004     movea.l    $4(a7), a0
000b24: 116f00170002 move.b     $17(a7), $2(a0)
000b2a: 206f0004     movea.l    $4(a7), a0
000b2e: 42280003     clr.b      $3(a0)
000b32: 206f0004     movea.l    $4(a7), a0
000b36: 117c00010001 move.b     #$1, $1(a0)
000b3c: 206f0004     movea.l    $4(a7), a0
000b40: 42280004     clr.b      $4(a0)
000b44: 206f0004     movea.l    $4(a7), a0
000b48: 42280005     clr.b      $5(a0)
000b4c: 206f0004     movea.l    $4(a7), a0
000b50: 42680006     clr.w      $6(a0)
000b54: 4297         clr.l      (a7)
000b56: 2017         move.l     (a7), d0
000b58: 4fef0010     lea.l      $10(a7), a7
000b5c: 4ced0100fffc movem.l    -$4(a5), a0
000b62: 4e5d         unlk       a5
000b64: 4e75         rts        
000b66: 4e550000     link.w     a5, #$0
000b6a: 48e7c080     movem.l    d0-d1/a0, -(a7)
000b6e: 4feffff4     lea.l      -$c(a7), a7
000b72: 206f0020     movea.l    $20(a7), a0
000b76: 2f6800040004 move.l     $4(a0), $4(a7)
000b7c: 206f0004     movea.l    $4(a7), a0
000b80: 0c2800010001 cmpi.b     #$1, $1(a0)
000b86: 6706         beq.b      $b8e
000b88: 7006         moveq      #$6, d0
000b8a: 2e80         move.l     d0, (a7)
000b8c: 605e         bra.b      $bec
000b8e: 206f0020     movea.l    $20(a7), a0
000b92: 30280008     move.w     $8(a0), d0
000b96: 48c0         ext.l      d0
000b98: 206f0004     movea.l    $4(a7), a0
000b9c: 32280006     move.w     $6(a0), d1
000ba0: 48c1         ext.l      d1
000ba2: d2af000c     add.l      $c(a7), d1
000ba6: b081         cmp.l      d1, d0
000ba8: 6c04         bge.b      $bae
000baa: 7005         moveq      #$5, d0
000bac: 60dc         bra.b      $b8a
000bae: 202f0004     move.l     $4(a7), d0
000bb2: 5080         addq.l     #$8, d0
000bb4: 206f0004     movea.l    $4(a7), a0
000bb8: 32280006     move.w     $6(a0), d1
000bbc: 48c1         ext.l      d1
000bbe: d081         add.l      d1, d0
000bc0: 2f400008     move.l     d0, $8(a7)
000bc4: 2f2f0008     move.l     $8(a7), -(a7)
000bc8: 222f0014     move.l     $14(a7), d1
000bcc: 202f0010     move.l     $10(a7), d0
000bd0: 61000644     bsr.w      $1216
000bd4: 588f         addq.l     #$4, a7
000bd6: 206f0004     movea.l    $4(a7), a0
000bda: 30280006     move.w     $6(a0), d0
000bde: d06f000e     add.w      $e(a7), d0
000be2: 206f0004     movea.l    $4(a7), a0
000be6: 31400006     move.w     d0, $6(a0)
000bea: 4297         clr.l      (a7)
000bec: 2017         move.l     (a7), d0
000bee: 4fef000c     lea.l      $c(a7), a7
000bf2: 4ced0100fffc movem.l    -$4(a5), a0
000bf8: 4e5d         unlk       a5
000bfa: 4e75         rts        
000bfc: 4e550000     link.w     a5, #$0
000c00: 48e78880     movem.l    d0/d4/a0, -(a7)
000c04: 518f         subq.l     #$8, a7
000c06: 206f0008     movea.l    $8(a7), a0
000c0a: 2f6800040004 move.l     $4(a0), $4(a7)
000c10: 206f0004     movea.l    $4(a7), a0
000c14: 0c2800010001 cmpi.b     #$1, $1(a0)
000c1a: 670c         beq.b      $c28
000c1c: 7006         moveq      #$6, d0
000c1e: 2e80         move.l     d0, (a7)
000c20: 6026         bra.b      $c48
000c22: 7005         moveq      #$5, d0
000c24: 6100073c     bsr.w      $1362
000c28: 4a3900c00002 tst.b      $c00002.l
000c2e: 66f2         bne.b      $c22
000c30: 206f0004     movea.l    $4(a7), a0
000c34: 117c00030001 move.b     #$3, $1(a0)
000c3a: 206f0004     movea.l    $4(a7), a0
000c3e: 1810         move.b     (a0), d4
000c40: 13c400c00002 move.b     d4, $c00002.l
000c46: 4297         clr.l      (a7)
000c48: 2017         move.l     (a7), d0
000c4a: 508f         addq.l     #$8, a7
000c4c: 4ced0110fff8 movem.l    -$8(a5), d4/a0
000c52: 4e5d         unlk       a5
000c54: 4e75         rts        
000c56: 4e550000     link.w     a5, #$0
000c5a: 48e7c080     movem.l    d0-d1/a0, -(a7)
000c5e: 4feffff0     lea.l      -$10(a7), a7
000c62: 2f7c009f0000000c move.l     #$9f0000, $c(a7)
000c6a: 7000         moveq      #$0, d0
000c6c: 102f0013     move.b     $13(a7), d0
000c70: 7206         moveq      #$6, d1
000c72: 61000910     bsr.w      $1584
000c76: 222f000c     move.l     $c(a7), d1
000c7a: 5481         addq.l     #$2, d1
000c7c: d081         add.l      d1, d0
000c7e: 2f400008     move.l     d0, $8(a7)
000c82: 206f0008     movea.l    $8(a7), a0
000c86: 7000         moveq      #$0, d0
000c88: 10280003     move.b     $3(a0), d0
000c8c: e188         lsl.l      #$8, d0
000c8e: d0af000c     add.l      $c(a7), d0
000c92: 2f400004     move.l     d0, $4(a7)
000c96: 206f0004     movea.l    $4(a7), a0
000c9a: 0c2800030001 cmpi.b     #$3, $1(a0)
000ca0: 6706         beq.b      $ca8
000ca2: 7007         moveq      #$7, d0
000ca4: 2e80         move.l     d0, (a7)
000ca6: 603a         bra.b      $ce2
000ca8: 206f0008     movea.l    $8(a7), a0
000cac: 7000         moveq      #$0, d0
000cae: 10280003     move.b     $3(a0), d0
000cb2: e188         lsl.l      #$8, d0
000cb4: d0af000c     add.l      $c(a7), d0
000cb8: 206f0014     movea.l    $14(a7), a0
000cbc: 2080         move.l     d0, (a0)
000cbe: 206f0008     movea.l    $8(a7), a0
000cc2: 7000         moveq      #$0, d0
000cc4: 10280001     move.b     $1(a0), d0
000cc8: e188         lsl.l      #$8, d0
000cca: d0af000c     add.l      $c(a7), d0
000cce: 206f0014     movea.l    $14(a7), a0
000cd2: 21400004     move.l     d0, $4(a0)
000cd6: 206f0004     movea.l    $4(a7), a0
000cda: 117c00020001 move.b     #$2, $1(a0)
000ce0: 4297         clr.l      (a7)
000ce2: 2017         move.l     (a7), d0
000ce4: 4fef0010     lea.l      $10(a7), a7
000ce8: 4ced0100fffc movem.l    -$4(a5), a0
000cee: 4e5d         unlk       a5
000cf0: 4e75         rts        
000cf2: 4e550000     link.w     a5, #$0
000cf6: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000cfa: 518f         subq.l     #$8, a7
000cfc: 206f0008     movea.l    $8(a7), a0
000d00: 2f500004     move.l     (a0), $4(a7)
000d04: 206f0004     movea.l    $4(a7), a0
000d08: 0c2800020001 cmpi.b     #$2, $1(a0)
000d0e: 6704         beq.b      $d14
000d10: 7001         moveq      #$1, d0
000d12: 6002         bra.b      $d16
000d14: 7000         moveq      #$0, d0
000d16: 206f0004     movea.l    $4(a7), a0
000d1a: 4a680006     tst.w      $6(a0)
000d1e: 6c04         bge.b      $d24
000d20: 7201         moveq      #$1, d1
000d22: 6002         bra.b      $d26
000d24: 7200         moveq      #$0, d1
000d26: 8001         or.b       d1, d0
000d28: 6706         beq.b      $d30
000d2a: 7006         moveq      #$6, d0
000d2c: 2e80         move.l     d0, (a7)
000d2e: 601c         bra.b      $d4c
000d30: 202f0004     move.l     $4(a7), d0
000d34: 5080         addq.l     #$8, d0
000d36: 206f000c     movea.l    $c(a7), a0
000d3a: 2080         move.l     d0, (a0)
000d3c: 206f0004     movea.l    $4(a7), a0
000d40: 30680006     movea.w    $6(a0), a0
000d44: 226f0020     movea.l    $20(a7), a1
000d48: 2288         move.l     a0, (a1)
000d4a: 4297         clr.l      (a7)
000d4c: 2017         move.l     (a7), d0
000d4e: 508f         addq.l     #$8, a7
000d50: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000d56: 4e5d         unlk       a5
000d58: 4e75         rts        
000d5a: 4e550000     link.w     a5, #$0
000d5e: 48e7c080     movem.l    d0-d1/a0, -(a7)
000d62: 518f         subq.l     #$8, a7
000d64: 206f000c     movea.l    $c(a7), a0
000d68: 2f6800040004 move.l     $4(a0), $4(a7)
000d6e: 206f0004     movea.l    $4(a7), a0
000d72: 0c2800010001 cmpi.b     #$1, $1(a0)
000d78: 6706         beq.b      $d80
000d7a: 7006         moveq      #$6, d0
000d7c: 2e80         move.l     d0, (a7)
000d7e: 600c         bra.b      $d8c
000d80: 206f0004     movea.l    $4(a7), a0
000d84: 116f000b0005 move.b     $b(a7), $5(a0)
000d8a: 4297         clr.l      (a7)
000d8c: 2017         move.l     (a7), d0
000d8e: 508f         addq.l     #$8, a7
000d90: 4ced0100fffc movem.l    -$4(a5), a0
000d96: 4e5d         unlk       a5
000d98: 4e75         rts        
000d9a: 4e550000     link.w     a5, #$0
000d9e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000da2: 518f         subq.l     #$8, a7
000da4: 206f0008     movea.l    $8(a7), a0
000da8: 2f500004     move.l     (a0), $4(a7)
000dac: 206f0004     movea.l    $4(a7), a0
000db0: 0c2800020001 cmpi.b     #$2, $1(a0)
000db6: 6706         beq.b      $dbe
000db8: 7006         moveq      #$6, d0
000dba: 2e80         move.l     d0, (a7)
000dbc: 600e         bra.b      $dcc
000dbe: 206f0004     movea.l    $4(a7), a0
000dc2: 226f000c     movea.l    $c(a7), a1
000dc6: 12a80005     move.b     $5(a0), (a1)
000dca: 4297         clr.l      (a7)
000dcc: 2017         move.l     (a7), d0
000dce: 508f         addq.l     #$8, a7
000dd0: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000dd6: 4e5d         unlk       a5
000dd8: 4e75         rts        
000dda: 4e550000     link.w     a5, #$0
000dde: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000de2: 518f         subq.l     #$8, a7
000de4: 206f0008     movea.l    $8(a7), a0
000de8: 2f500004     move.l     (a0), $4(a7)
000dec: 206f0004     movea.l    $4(a7), a0
000df0: 0c2800020001 cmpi.b     #$2, $1(a0)
000df6: 6706         beq.b      $dfe
000df8: 7006         moveq      #$6, d0
000dfa: 2e80         move.l     d0, (a7)
000dfc: 600e         bra.b      $e0c
000dfe: 206f0004     movea.l    $4(a7), a0
000e02: 226f000c     movea.l    $c(a7), a1
000e06: 12a80002     move.b     $2(a0), (a1)
000e0a: 4297         clr.l      (a7)
000e0c: 2017         move.l     (a7), d0
000e0e: 508f         addq.l     #$8, a7
000e10: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000e16: 4e5d         unlk       a5
000e18: 4e75         rts        
000e1a: 4e550000     link.w     a5, #$0
000e1e: 48e78080     movem.l    d0/a0, -(a7)
000e22: 598f         subq.l     #$4, a7
000e24: 206f0004     movea.l    $4(a7), a0
000e28: 2e90         move.l     (a0), (a7)
000e2a: 2057         movea.l    (a7), a0
000e2c: 42280001     clr.b      $1(a0)
000e30: 588f         addq.l     #$4, a7
000e32: 4ced0100fffc movem.l    -$4(a5), a0
000e38: 4e5d         unlk       a5
000e3a: 4e75         rts        
000e3c: 4e550000     link.w     a5, #$0
000e40: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e44: 4fefffe0     lea.l      -$20(a7), a7
000e48: 7000         moveq      #$0, d0
000e4a: 102f0023     move.b     $23(a7), d0
000e4e: 610002fe     bsr.w      $114e
000e52: 4a00         tst.b      d0
000e54: 6606         bne.b      $e5c
000e56: 7002         moveq      #$2, d0
000e58: 600001fa     bra.w      $1054
000e5c: 2f7c009f0000001c move.l     #$9f0000, $1c(a7)
000e64: 206f001c     movea.l    $1c(a7), a0
000e68: 0c2800690001 cmpi.b     #$69, $1(a0)
000e6e: 670000b6     beq.w      $f26
000e72: 4857         pea.l      (a7)
000e74: 223c00005350 move.l     #$5350, d1
000e7a: 70ff         moveq      #$ff, d0
000e7c: 6100043a     bsr.w      $12b8
000e80: 588f         addq.l     #$4, a7
000e82: 2f400018     move.l     d0, $18(a7)
000e86: 4aaf0018     tst.l      $18(a7)
000e8a: 67000174     beq.w      $1000
000e8e: 222f0018     move.l     $18(a7), d1
000e92: 2017         move.l     (a7), d0
000e94: 6100044c     bsr.w      $12e2
000e98: 4a80         tst.l      d0
000e9a: 66000164     bne.w      $1000
000e9e: 486f0004     pea.l      $4(a7)
000ea2: 223c00005350 move.l     #$5350, d1
000ea8: 203cfffffe00 move.l     #$fffffe00, d0
000eae: d0af0004     add.l      $4(a7), d0
000eb2: 61000404     bsr.w      $12b8
000eb6: 588f         addq.l     #$4, a7
000eb8: 2f400018     move.l     d0, $18(a7)
000ebc: 4aaf0018     tst.l      $18(a7)
000ec0: 6700013e     beq.w      $1000
000ec4: 486f0004     pea.l      $4(a7)
000ec8: 223c00005350 move.l     #$5350, d1
000ece: 203c00000200 move.l     #$200, d0
000ed4: 610003e2     bsr.w      $12b8
000ed8: 588f         addq.l     #$4, a7
000eda: 2f40001c     move.l     d0, $1c(a7)
000ede: 4aaf001c     tst.l      $1c(a7)
000ee2: 6700011c     beq.w      $1000
000ee6: 2217         move.l     (a7), d1
000ee8: 202f001c     move.l     $1c(a7), d0
000eec: 610001d6     bsr.w      $10c4
000ef0: 222f0018     move.l     $18(a7), d1
000ef4: 203cfffffe00 move.l     #$fffffe00, d0
000efa: d097         add.l      (a7), d0
000efc: 610003e4     bsr.w      $12e2
000f00: 4a80         tst.l      d0
000f02: 660000fc     bne.w      $1000
000f06: 206f001c     movea.l    $1c(a7), a0
000f0a: 117c00690001 move.b     #$69, $1(a0)
000f10: 13fc009f00c00001 move.b     #$9f, $c00001.l
000f18: 13fc00ff00c00003 move.b     #$ff, $c00003.l
000f20: 423900c00002 clr.b      $c00002.l
000f26: 7000         moveq      #$0, d0
000f28: 102f0023     move.b     $23(a7), d0
000f2c: 7206         moveq      #$6, d1
000f2e: 61000654     bsr.w      $1584
000f32: 222f001c     move.l     $1c(a7), d1
000f36: 5481         addq.l     #$2, d1
000f38: d081         add.l      d1, d0
000f3a: 2f40000c     move.l     d0, $c(a7)
000f3e: 206f000c     movea.l    $c(a7), a0
000f42: 102f0023     move.b     $23(a7), d0
000f46: b010         cmp.b      (a0), d0
000f48: 6644         bne.b      $f8e
000f4a: 206f000c     movea.l    $c(a7), a0
000f4e: 7000         moveq      #$0, d0
000f50: 10280003     move.b     $3(a0), d0
000f54: e188         lsl.l      #$8, d0
000f56: d0af001c     add.l      $1c(a7), d0
000f5a: 2f400010     move.l     d0, $10(a7)
000f5e: 206f000c     movea.l    $c(a7), a0
000f62: 7000         moveq      #$0, d0
000f64: 10280001     move.b     $1(a0), d0
000f68: e188         lsl.l      #$8, d0
000f6a: d0af001c     add.l      $1c(a7), d0
000f6e: 2f400014     move.l     d0, $14(a7)
000f72: 2f2f0024     move.l     $24(a7), -(a7)
000f76: 2f2f0014     move.l     $14(a7), -(a7)
000f7a: 222f003c     move.l     $3c(a7), d1
000f7e: 202f001c     move.l     $1c(a7), d0
000f82: 610000de     bsr.w      $1062
000f86: 508f         addq.l     #$8, a7
000f88: 7009         moveq      #$9, d0
000f8a: 600000c8     bra.w      $1054
000f8e: 486f0004     pea.l      $4(a7)
000f92: 223c00005350 move.l     #$5350, d1
000f98: 202f0038     move.l     $38(a7), d0
000f9c: e188         lsl.l      #$8, d0
000f9e: 61000318     bsr.w      $12b8
000fa2: 588f         addq.l     #$4, a7
000fa4: 2f400014     move.l     d0, $14(a7)
000fa8: 4aaf0014     tst.l      $14(a7)
000fac: 6752         beq.b      $1000
000fae: 202f0014     move.l     $14(a7), d0
000fb2: 90af001c     sub.l      $1c(a7), d0
000fb6: 6c06         bge.b      $fbe
000fb8: 0680000000ff addi.l     #$ff, d0
000fbe: e080         asr.l      #$8, d0
000fc0: 2f400008     move.l     d0, $8(a7)
000fc4: 206f000c     movea.l    $c(a7), a0
000fc8: 116f000b0001 move.b     $b(a7), $1(a0)
000fce: 102f000b     move.b     $b(a7), d0
000fd2: d02f0037     add.b      $37(a7), d0
000fd6: 5300         subq.b     #$1, d0
000fd8: 206f000c     movea.l    $c(a7), a0
000fdc: 11400002     move.b     d0, $2(a0)
000fe0: 486f0004     pea.l      $4(a7)
000fe4: 223c00005350 move.l     #$5350, d1
000fea: 202f0028     move.l     $28(a7), d0
000fee: e188         lsl.l      #$8, d0
000ff0: 610002c6     bsr.w      $12b8
000ff4: 588f         addq.l     #$4, a7
000ff6: 2f400010     move.l     d0, $10(a7)
000ffa: 4aaf0010     tst.l      $10(a7)
000ffe: 6604         bne.b      $1004
001000: 7008         moveq      #$8, d0
001002: 6050         bra.b      $1054
001004: 202f0010     move.l     $10(a7), d0
001008: 90af001c     sub.l      $1c(a7), d0
00100c: 6c06         bge.b      $1014
00100e: 0680000000ff addi.l     #$ff, d0
001014: e080         asr.l      #$8, d0
001016: 2f400008     move.l     d0, $8(a7)
00101a: 206f000c     movea.l    $c(a7), a0
00101e: 116f000b0003 move.b     $b(a7), $3(a0)
001024: 102f000b     move.b     $b(a7), d0
001028: d02f0027     add.b      $27(a7), d0
00102c: 5300         subq.b     #$1, d0
00102e: 206f000c     movea.l    $c(a7), a0
001032: 11400004     move.b     d0, $4(a0)
001036: 206f000c     movea.l    $c(a7), a0
00103a: 10af0023     move.b     $23(a7), (a0)
00103e: 2f2f0024     move.l     $24(a7), -(a7)
001042: 2f2f0014     move.l     $14(a7), -(a7)
001046: 222f003c     move.l     $3c(a7), d1
00104a: 202f001c     move.l     $1c(a7), d0
00104e: 6112         bsr.b      $1062
001050: 508f         addq.l     #$8, a7
001052: 7000         moveq      #$0, d0
001054: 4fef0020     lea.l      $20(a7), a7
001058: 4ced0100fffc movem.l    -$4(a5), a0
00105e: 4e5d         unlk       a5
001060: 4e75         rts        
001062: 4e550000     link.w     a5, #$0
001066: 48e7c080     movem.l    d0-d1/a0, -(a7)
00106a: 518f         subq.l     #$8, a7
00106c: 2f6f001c0004 move.l     $1c(a7), $4(a7)
001072: 202f0020     move.l     $20(a7), d0
001076: e188         lsl.l      #$8, d0
001078: d0af0004     add.l      $4(a7), d0
00107c: 2e80         move.l     d0, (a7)
00107e: 600a         bra.b      $108a
001080: 206f0004     movea.l    $4(a7), a0
001084: 4210         clr.b      (a0)
001086: 52af0004     addq.l     #$1, $4(a7)
00108a: 202f0004     move.l     $4(a7), d0
00108e: b097         cmp.l      (a7), d0
001090: 65ee         bcs.b      $1080
001092: 2f6f00080004 move.l     $8(a7), $4(a7)
001098: 202f000c     move.l     $c(a7), d0
00109c: e188         lsl.l      #$8, d0
00109e: d0af0004     add.l      $4(a7), d0
0010a2: 2e80         move.l     d0, (a7)
0010a4: 600a         bra.b      $10b0
0010a6: 206f0004     movea.l    $4(a7), a0
0010aa: 4210         clr.b      (a0)
0010ac: 52af0004     addq.l     #$1, $4(a7)
0010b0: 202f0004     move.l     $4(a7), d0
0010b4: b097         cmp.l      (a7), d0
0010b6: 65ee         bcs.b      $10a6
0010b8: 508f         addq.l     #$8, a7
0010ba: 4ced0100fffc movem.l    -$4(a5), a0
0010c0: 4e5d         unlk       a5
0010c2: 4e75         rts        
0010c4: 4e550000     link.w     a5, #$0
0010c8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0010cc: 518f         subq.l     #$8, a7
0010ce: 2f6f00080004 move.l     $8(a7), $4(a7)
0010d4: 202f0004     move.l     $4(a7), d0
0010d8: d0af000c     add.l      $c(a7), d0
0010dc: 2e80         move.l     d0, (a7)
0010de: 600a         bra.b      $10ea
0010e0: 206f0004     movea.l    $4(a7), a0
0010e4: 4210         clr.b      (a0)
0010e6: 52af0004     addq.l     #$1, $4(a7)
0010ea: 202f0004     move.l     $4(a7), d0
0010ee: b097         cmp.l      (a7), d0
0010f0: 65ee         bcs.b      $10e0
0010f2: 508f         addq.l     #$8, a7
0010f4: 4ced0100fffc movem.l    -$4(a5), a0
0010fa: 4e5d         unlk       a5
0010fc: 4e75         rts        
0010fe: 4e550000     link.w     a5, #$0
001102: 48e78080     movem.l    d0/a0, -(a7)
001106: 598f         subq.l     #$4, a7
001108: 2ebc009f0000 move.l     #$9f0000, (a7)
00110e: 2057         movea.l    (a7), a0
001110: 4a10         tst.b      (a0)
001112: 6608         bne.b      $111c
001114: 2057         movea.l    (a7), a0
001116: 10b900c00000 move.b     $c00000.l, (a0)
00111c: 2057         movea.l    (a7), a0
00111e: 7000         moveq      #$0, d0
001120: 1010         move.b     (a0), d0
001122: 588f         addq.l     #$4, a7
001124: 4ced0100fffc movem.l    -$4(a5), a0
00112a: 4e5d         unlk       a5
00112c: 4e75         rts        
00112e: 4e550000     link.w     a5, #$0
001132: 48e78080     movem.l    d0/a0, -(a7)
001136: 598f         subq.l     #$4, a7
001138: 2ebc009f0000 move.l     #$9f0000, (a7)
00113e: 2057         movea.l    (a7), a0
001140: 4210         clr.b      (a0)
001142: 588f         addq.l     #$4, a7
001144: 4ced0100fffc movem.l    -$4(a5), a0
00114a: 4e5d         unlk       a5
00114c: 4e75         rts        
00114e: 4e550000     link.w     a5, #$0
001152: 48e78000     movem.l    d0, -(a7)
001156: 558f         subq.l     #$2, a7
001158: 600e         bra.b      $1168
00115a: 1f7c00010001 move.b     #$1, $1(a7)
001160: 602c         bra.b      $118e
001162: 422f0001     clr.b      $1(a7)
001166: 6026         bra.b      $118e
001168: 7000         moveq      #$0, d0
00116a: 102f0005     move.b     $5(a7), d0
00116e: 0c400007     cmpi.w     #$7, d0
001172: 62ee         bhi.b      $1162
001174: d040         add.w      d0, d0
001176: 303b0006     move.w     $117e(pc, d0.w), d0
00117a: 4efb0002     jmp        $117e(pc, d0.w)
00117e: ffdc         dc.w       $ffdc
001180: ffdc         dc.w       $ffdc
001182: ffdc         dc.w       $ffdc
001184: ffdc         dc.w       $ffdc
001186: ffdc         dc.w       $ffdc
001188: ffdc         dc.w       $ffdc
00118a: ffdc         dc.w       $ffdc
00118c: ffdc         dc.w       $ffdc
00118e: 102f0001     move.b     $1(a7), d0
001192: 548f         addq.l     #$2, a7
001194: 4e5d         unlk       a5
001196: 4e75         rts        
001198: 4e550000     link.w     a5, #$0
00119c: 48e78000     movem.l    d0, -(a7)
0011a0: 558f         subq.l     #$2, a7
0011a2: 600e         bra.b      $11b2
0011a4: 1f7c00010001 move.b     #$1, $1(a7)
0011aa: 602e         bra.b      $11da
0011ac: 422f0001     clr.b      $1(a7)
0011b0: 6028         bra.b      $11da
0011b2: 7000         moveq      #$0, d0
0011b4: 102f0005     move.b     $5(a7), d0
0011b8: 0c400008     cmpi.w     #$8, d0
0011bc: 62ee         bhi.b      $11ac
0011be: d040         add.w      d0, d0
0011c0: 303b0006     move.w     $11c8(pc, d0.w), d0
0011c4: 4efb0002     jmp        $11c8(pc, d0.w)
0011c8: ffdc         dc.w       $ffdc
0011ca: ffdc         dc.w       $ffdc
0011cc: ffdc         dc.w       $ffdc
0011ce: ffdc         dc.w       $ffdc
0011d0: ffdc         dc.w       $ffdc
0011d2: ffdc         dc.w       $ffdc
0011d4: ffdc         dc.w       $ffdc
0011d6: ffdc         dc.w       $ffdc
0011d8: ffdc         dc.w       $ffdc
0011da: 102f0001     move.b     $1(a7), d0
0011de: 548f         addq.l     #$2, a7
0011e0: 4e5d         unlk       a5
0011e2: 4e75         rts        
0011e4: 48e74000     movem.l    d1, -(a7)
0011e8: 4e40         trap       #$0
0011ea: 002b604848e7 ori.b      #$48, $48e7(a3)
0011f0: 40b0206f     negx.l     $6f(a0, d2.w)
0011f4: 0014246f     ori.b      #$6f, (a4)
0011f8: 0018266f     ori.b      #$6f, (a0)+
0011fc: 001c4e40     ori.b      #$40, (a4)+
001200: 002a605048e7 ori.b      #$50, $48e7(a2)
001206: 40a0         negx.l     -(a0)
001208: 207c00000000 movea.l    #$0, a0
00120e: 2441         movea.l    d1, a2
001210: 4e40         trap       #$0
001212: 002a603448e7 ori.b      #$34, $48e7(a2)
001218: 60a0         bra.b      $11ba
00121a: 2400         move.l     d0, d2
00121c: 2041         movea.l    d1, a0
00121e: 246f0014     movea.l    $14(a7), a2
001222: 4e40         trap       #$0
001224: 0038603648e7 ori.b      #$36, $48e7.w
00122a: 4050         negx.w     (a0)
00122c: 2240         movea.l    d0, a1
00122e: 2641         movea.l    d1, a3
001230: 4e40         trap       #$0
001232: 0032600a653042804cdf ori.b      #$a, $42804cdf(a2, d6.w * 4)
00123c: 00024e75     ori.b      #$75, d2
001240: 652e         bcs.b      $1270
001242: 4280         clr.l      d0
001244: 4cdf0a02     movem.l    (a7)+, d1/a1/a3
001248: 4e75         rts        
00124a: 652c         bcs.b      $1278
00124c: 4280         clr.l      d0
00124e: 4cdf0502     movem.l    (a7)+, d1/a0/a2
001252: 4e75         rts        
001254: 652a         bcs.b      $1280
001256: 4280         clr.l      d0
001258: 4cdf0d02     movem.l    (a7)+, d1/a0/a2-a3
00125c: 4e75         rts        
00125e: 6528         bcs.b      $1288
001260: 4280         clr.l      d0
001262: 4cdf0506     movem.l    (a7)+, d1-d2/a0/a2
001266: 4e75         rts        
001268: 4280         clr.l      d0
00126a: 3001         move.w     d1, d0
00126c: 4480         neg.l      d0
00126e: 60ca         bra.b      $123a
001270: 4280         clr.l      d0
001272: 3001         move.w     d1, d0
001274: 4480         neg.l      d0
001276: 60cc         bra.b      $1244
001278: 4280         clr.l      d0
00127a: 3001         move.w     d1, d0
00127c: 4480         neg.l      d0
00127e: 60ce         bra.b      $124e
001280: 4280         clr.l      d0
001282: 3001         move.w     d1, d0
001284: 4480         neg.l      d0
001286: 60d0         bra.b      $1258
001288: 4280         clr.l      d0
00128a: 3001         move.w     d1, d0
00128c: 4480         neg.l      d0
00128e: 60d2         bra.b      $1262
001290: 48e700a0     movem.l    a0/a2, -(a7)
001294: 2f01         move.l     d1, -(a7)
001296: 4e40         trap       #$0
001298: 0028650c205f ori.b      #$c, $205f(a0)
00129e: 2080         move.l     d0, (a0)
0012a0: 200a         move.l     a2, d0
0012a2: 4cdf0500     movem.l    (a7)+, a0/a2
0012a6: 4e75         rts        
0012a8: 4280         clr.l      d0
0012aa: 3001         move.w     d1, d0
0012ac: 205f         movea.l    (a7)+, a0
0012ae: 2080         move.l     d0, (a0)
0012b0: 4280         clr.l      d0
0012b2: 4cdf0500     movem.l    (a7)+, a0/a2
0012b6: 4e75         rts        
0012b8: 48e700a0     movem.l    a0/a2, -(a7)
0012bc: 4e40         trap       #$0
0012be: 005c650e     ori.w      #$650e, (a4)+
0012c2: 206f000c     movea.l    $c(a7), a0
0012c6: 2080         move.l     d0, (a0)
0012c8: 200a         move.l     a2, d0
0012ca: 4cdf0500     movem.l    (a7)+, a0/a2
0012ce: 4e75         rts        
0012d0: 4280         clr.l      d0
0012d2: 3001         move.w     d1, d0
0012d4: 206f000c     movea.l    $c(a7), a0
0012d8: 2080         move.l     d0, (a0)
0012da: 4280         clr.l      d0
0012dc: 4cdf0500     movem.l    (a7)+, a0/a2
0012e0: 4e75         rts        
0012e2: 2f0a         move.l     a2, -(a7)
0012e4: 2441         movea.l    d1, a2
0012e6: 4e40         trap       #$0
0012e8: 0029245f6504 ori.b      #$5f, $6504(a1)
0012ee: 4280         clr.l      d0
0012f0: 4e75         rts        
0012f2: 4280         clr.l      d0
0012f4: 3001         move.w     d1, d0
0012f6: 4e75         rts        
0012f8: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
0012fc: 242f001c     move.l     $1c(a7), d2
001300: 262f0020     move.l     $20(a7), d3
001304: 282f0024     move.l     $24(a7), d4
001308: 206f0028     movea.l    $28(a7), a0
00130c: 226f002c     movea.l    $2c(a7), a1
001310: 4e40         trap       #$0
001312: 00036506     ori.b      #$6, d3
001316: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
00131a: 4e75         rts        
00131c: 4280         clr.l      d0
00131e: 60f6         bra.b      $1316
001320: 48e74000     movem.l    d1, -(a7)
001324: 4e40         trap       #$0
001326: 0008         .dc.w      $0008
001328: 600000be     bra.w      $13e8
00132c: 48e76000     movem.l    d1-d2, -(a7)
001330: 008180000000 ori.l      #$80000000, d1
001336: 4e40         trap       #$0
001338: 00276000     ori.b      #$0, -(a7)
00133c: 00a248e76000 ori.l      #$48e76000, -(a2)
001342: 242f000c     move.l     $c(a7), d2
001346: 4e40         trap       #$0
001348: 00276000     ori.b      #$0, -(a7)
00134c: 009248e74000 ori.l      #$48e74000, (a2)
001352: e180         asl.l      #$8, d0
001354: 008080000000 ori.l      #$80000000, d0
00135a: 4e40         trap       #$0
00135c: 000a         .dc.w      $000a
00135e: 60000092     bra.w      $13f2
001362: 48e74000     movem.l    d1, -(a7)
001366: 4e40         trap       #$0
001368: 000a         .dc.w      $000a
00136a: 60000086     bra.w      $13f2
00136e: 48e74080     movem.l    d1/a0, -(a7)
001372: 2040         movea.l    d0, a0
001374: 2001         move.l     d1, d0
001376: 222f000c     move.l     $c(a7), d1
00137a: 4e40         trap       #$0
00137c: 0017607a     ori.b      #$7a, (a7)
001380: 48e77080     movem.l    d1-d3/a0, -(a7)
001384: 2041         movea.l    d1, a0
001386: 4e40         trap       #$0
001388: 0015651c     ori.b      #$1c, (a5)
00138c: 2080         move.l     d0, (a0)
00138e: 206f0014     movea.l    $14(a7), a0
001392: 2081         move.l     d1, (a0)
001394: 206f0018     movea.l    $18(a7), a0
001398: 3082         move.w     d2, (a0)
00139a: 206f001c     movea.l    $1c(a7), a0
00139e: 2083         move.l     d3, (a0)
0013a0: 4280         clr.l      d0
0013a2: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0013a6: 4e75         rts        
0013a8: 4280         clr.l      d0
0013aa: 3001         move.w     d1, d0
0013ac: 60f4         bra.b      $13a2
0013ae: 48e77000     movem.l    d1-d3, -(a7)
0013b2: 7003         moveq      #$3, d0
0013b4: 4e40         trap       #$0
0013b6: 0015604c     ori.b      #$4c, (a5)
0013ba: 48e77000     movem.l    d1-d3, -(a7)
0013be: 7000         moveq      #$0, d0
0013c0: 4e40         trap       #$0
0013c2: 0015604c     ori.b      #$4c, (a5)
0013c6: 48e77000     movem.l    d1-d3, -(a7)
0013ca: 7000         moveq      #$0, d0
0013cc: 4e40         trap       #$0
0013ce: 00156048     ori.b      #$48, (a5)
0013d2: 48e77000     movem.l    d1-d3, -(a7)
0013d6: 7000         moveq      #$0, d0
0013d8: 4e40         trap       #$0
0013da: 00156040     ori.b      #$40, (a5)
0013de: 6544         bcs.b      $1424
0013e0: 2002         move.l     d2, d0
0013e2: 4cdf0006     movem.l    (a7)+, d1-d2
0013e6: 4e75         rts        
0013e8: 654a         bcs.b      $1434
0013ea: 4280         clr.l      d0
0013ec: 4cdf0002     movem.l    (a7)+, d1
0013f0: 4e75         rts        
0013f2: 6540         bcs.b      $1434
0013f4: 4cdf0002     movem.l    (a7)+, d1
0013f8: 4e75         rts        
0013fa: 6530         bcs.b      $142c
0013fc: 2f41000c     move.l     d1, $c(a7)
001400: 4cdf0102     movem.l    (a7)+, d1/a0
001404: 4e75         rts        
001406: 6534         bcs.b      $143c
001408: 4280         clr.l      d0
00140a: 3003         move.w     d3, d0
00140c: 4cdf000e     movem.l    (a7)+, d1-d3
001410: 4e75         rts        
001412: 6528         bcs.b      $143c
001414: 4280         clr.l      d0
001416: 3002         move.w     d2, d0
001418: 60f2         bra.b      $140c
00141a: 6520         bcs.b      $143c
00141c: 60ee         bra.b      $140c
00141e: 651c         bcs.b      $143c
001420: 2001         move.l     d1, d0
001422: 60e8         bra.b      $140c
001424: 203cffffffff move.l     #$ffffffff, d0
00142a: 60b6         bra.b      $13e2
00142c: 4280         clr.l      d0
00142e: 3001         move.w     d1, d0
001430: 4480         neg.l      d0
001432: 60cc         bra.b      $1400
001434: 4280         clr.l      d0
001436: 3001         move.w     d1, d0
001438: 4480         neg.l      d0
00143a: 60b0         bra.b      $13ec
00143c: 4280         clr.l      d0
00143e: 3001         move.w     d1, d0
001440: 4480         neg.l      d0
001442: 60c8         bra.b      $140c
001444: 40c0         move.w     sr, d0
001446: 02800000ffff andi.l     #$ffff, d0
00144c: 027cf8ff     andi.w     #$f8ff, sr
001450: 4e75         rts        
001452: 40c0         move.w     sr, d0
001454: 02800000ffff andi.l     #$ffff, d0
00145a: 007c0700     ori.w      #$700, sr
00145e: 027cf9ff     andi.w     #$f9ff, sr
001462: 4e75         rts        
001464: 40c0         move.w     sr, d0
001466: 02800000ffff andi.l     #$ffff, d0
00146c: 007c0700     ori.w      #$700, sr
001470: 027cfaff     andi.w     #$faff, sr
001474: 4e75         rts        
001476: 40c0         move.w     sr, d0
001478: 02800000ffff andi.l     #$ffff, d0
00147e: 007c0700     ori.w      #$700, sr
001482: 027cfbff     andi.w     #$fbff, sr
001486: 4e75         rts        
001488: 40c0         move.w     sr, d0
00148a: 02800000ffff andi.l     #$ffff, d0
001490: 007c0700     ori.w      #$700, sr
001494: 027cfcff     andi.w     #$fcff, sr
001498: 4e75         rts        
00149a: 40c0         move.w     sr, d0
00149c: 02800000ffff andi.l     #$ffff, d0
0014a2: 007c0700     ori.w      #$700, sr
0014a6: 027cfdff     andi.w     #$fdff, sr
0014aa: 4e75         rts        
0014ac: 40c0         move.w     sr, d0
0014ae: 02800000ffff andi.l     #$ffff, d0
0014b4: 007c0700     ori.w      #$700, sr
0014b8: 027cfeff     andi.w     #$feff, sr
0014bc: 4e75         rts        
0014be: 40c0         move.w     sr, d0
0014c0: 02800000ffff andi.l     #$ffff, d0
0014c6: 007c0700     ori.w      #$700, sr
0014ca: 4e75         rts        
0014cc: 4e550000     link.w     a5, #$0
0014d0: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
0014d4: 2040         movea.l    d0, a0
0014d6: 2441         movea.l    d1, a2
0014d8: 242d0008     move.l     $8(a5), d2
0014dc: 6702         beq.b      $14e0
0014de: 610a         bsr.b      $14ea
0014e0: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
0014e6: 4e5d         unlk       a5
0014e8: 4e75         rts        
0014ea: 4a82         tst.l      d2
0014ec: 674a         beq.b      $1538
0014ee: b1ca         cmpa.l     a2, a0
0014f0: 6248         bhi.b      $153a
0014f2: 6744         beq.b      $1538
0014f4: 300a         move.w     a2, d0
0014f6: 08000000     btst.b     #$0, d0
0014fa: 6704         beq.b      $1500
0014fc: 10da         move.b     (a2)+, (a0)+
0014fe: 5382         subq.l     #$1, d2
001500: 3008         move.w     a0, d0
001502: 08000000     btst.b     #$0, d0
001506: 6624         bne.b      $152c
001508: e28a         lsr.l      #$1, d2
00150a: 6406         bcc.b      $1512
00150c: 6104         bsr.b      $1512
00150e: 10da         move.b     (a2)+, (a0)+
001510: 4e75         rts        
001512: e28a         lsr.l      #$1, d2
001514: 6406         bcc.b      $151c
001516: 30da         move.w     (a2)+, (a0)+
001518: 6002         bra.b      $151c
00151a: 20da         move.l     (a2)+, (a0)+
00151c: 51cafffc     dbra       d2, $151a
001520: 5242         addq.w     #$1, d2
001522: 5382         subq.l     #$1, d2
001524: 64f4         bcc.b      $151a
001526: 7400         moveq      #$0, d2
001528: 4e75         rts        
00152a: 10da         move.b     (a2)+, (a0)+
00152c: 51cafffc     dbra       d2, $152a
001530: 5242         addq.w     #$1, d2
001532: 5382         subq.l     #$1, d2
001534: 64f4         bcc.b      $152a
001536: 7400         moveq      #$0, d2
001538: 4e75         rts        
00153a: d5c2         adda.l     d2, a2
00153c: d1c2         adda.l     d2, a0
00153e: 300a         move.w     a2, d0
001540: 08000000     btst.b     #$0, d0
001544: 6704         beq.b      $154a
001546: 1122         move.b     -(a2), -(a0)
001548: 5382         subq.l     #$1, d2
00154a: 3008         move.w     a0, d0
00154c: 08000000     btst.b     #$0, d0
001550: 6624         bne.b      $1576
001552: e28a         lsr.l      #$1, d2
001554: 6406         bcc.b      $155c
001556: 6104         bsr.b      $155c
001558: 1122         move.b     -(a2), -(a0)
00155a: 4e75         rts        
00155c: e28a         lsr.l      #$1, d2
00155e: 6406         bcc.b      $1566
001560: 3122         move.w     -(a2), -(a0)
001562: 6002         bra.b      $1566
001564: 2122         move.l     -(a2), -(a0)
001566: 51cafffc     dbra       d2, $1564
00156a: 5242         addq.w     #$1, d2
00156c: 5382         subq.l     #$1, d2
00156e: 64f4         bcc.b      $1564
001570: 7400         moveq      #$0, d2
001572: 4e75         rts        
001574: 1122         move.b     -(a2), -(a0)
001576: 51cafffc     dbra       d2, $1574
00157a: 5242         addq.w     #$1, d2
00157c: 5382         subq.l     #$1, d2
00157e: 64f4         bcc.b      $1574
001580: 7400         moveq      #$0, d2
001582: 4e75         rts        
001584: 48e73800     movem.l    d2-d4, -(a7)
001588: 2400         move.l     d0, d2
00158a: 2600         move.l     d0, d3
00158c: 4843         swap       d3
00158e: 2801         move.l     d1, d4
001590: 4844         swap       d4
001592: c0c1         mulu.w     d1, d0
001594: c2c3         mulu.w     d3, d1
001596: c4c4         mulu.w     d4, d2
001598: c6c4         mulu.w     d4, d3
00159a: 4840         swap       d0
00159c: d041         add.w      d1, d0
00159e: 7800         moveq      #$0, d4
0015a0: d784         addx.l     d4, d3
0015a2: d042         add.w      d2, d0
0015a4: d784         addx.l     d4, d3
0015a6: 4840         swap       d0
0015a8: 4241         clr.w      d1
0015aa: 4841         swap       d1
0015ac: 4242         clr.w      d2
0015ae: 4842         swap       d2
0015b0: d282         add.l      d2, d1
0015b2: d283         add.l      d3, d1
0015b4: 4a80         tst.l      d0
0015b6: 4cdf001c     movem.l    (a7)+, d2-d4
0015ba: 4e75         rts        
0015bc: 2f02         move.l     d2, -(a7)
0015be: 7400         moveq      #$0, d2
0015c0: 4a80         tst.l      d0
0015c2: 6a04         bpl.b      $15c8
0015c4: 4480         neg.l      d0
0015c6: 7403         moveq      #$3, d2
0015c8: 4a81         tst.l      d1
0015ca: 6a06         bpl.b      $15d2
0015cc: 4481         neg.l      d1
0015ce: 0a020001     eori.b     #$1, d2
0015d2: 6122         bsr.b      $15f6
0015d4: e20a         lsr.b      #$1, d2
0015d6: 6402         bcc.b      $15da
0015d8: 4480         neg.l      d0
0015da: e20a         lsr.b      #$1, d2
0015dc: 6402         bcc.b      $15e0
0015de: 4481         neg.l      d1
0015e0: 241f         move.l     (a7)+, d2
0015e2: 4a80         tst.l      d0
0015e4: 4e75         rts        
0015e6: 61d4         bsr.b      $15bc
0015e8: c141         exg.l      d0, d1
0015ea: 4a80         tst.l      d0
0015ec: 4e75         rts        
0015ee: 6106         bsr.b      $15f6
0015f0: c141         exg.l      d0, d1
0015f2: 4a80         tst.l      d0
0015f4: 4e75         rts        
0015f6: 48e73800     movem.l    d2-d4, -(a7)
0015fa: 2401         move.l     d1, d2
0015fc: 6606         bne.b      $1604
0015fe: 81fc0000     divs.w     #$0, d0
001602: 606e         bra.b      $1672
001604: 5381         subq.l     #$1, d1
001606: 676a         beq.b      $1672
001608: 2801         move.l     d1, d4
00160a: 2200         move.l     d0, d1
00160c: b481         cmp.l      d1, d2
00160e: 650c         bcs.b      $161c
001610: 6704         beq.b      $1616
001612: 7000         moveq      #$0, d0
001614: 605c         bra.b      $1672
001616: 7001         moveq      #$1, d0
001618: 9282         sub.l      d2, d1
00161a: 6056         bra.b      $1672
00161c: 2602         move.l     d2, d3
00161e: 6bf6         bmi.b      $1616
001620: c684         and.l      d4, d3
001622: 6612         bne.b      $1636
001624: e28a         lsr.l      #$1, d2
001626: 76ff         moveq      #$ff, d3
001628: e28a         lsr.l      #$1, d2
00162a: 55cbfffc     dbcs       d3, $1628
00162e: 4483         neg.l      d3
001630: e6a8         lsr.l      d3, d0
001632: c284         and.l      d4, d1
001634: 603c         bra.b      $1672
001636: 7000         moveq      #$0, d0
001638: 76ff         moveq      #$ff, d3
00163a: e382         asl.l      #$1, d2
00163c: 6a06         bpl.b      $1644
00163e: b481         cmp.l      d1, d2
001640: 620a         bhi.b      $164c
001642: 600c         bra.b      $1650
001644: b481         cmp.l      d1, d2
001646: 54cbfff2     dbcc       d3, $163a
00164a: 6704         beq.b      $1650
00164c: 5283         addq.l     #$1, d3
00164e: e28a         lsr.l      #$1, d2
001650: 4483         neg.l      d3
001652: 6004         bra.b      $1658
001654: e380         asl.l      #$1, d0
001656: e28a         lsr.l      #$1, d2
001658: 9282         sub.l      d2, d1
00165a: 6510         bcs.b      $166c
00165c: 5280         addq.l     #$1, d0
00165e: 51cbfff4     dbra       d3, $1654
001662: 600e         bra.b      $1672
001664: e380         asl.l      #$1, d0
001666: e28a         lsr.l      #$1, d2
001668: d282         add.l      d2, d1
00166a: 65f0         bcs.b      $165c
00166c: 51cbfff6     dbra       d3, $1664
001670: d282         add.l      d2, d1
001672: 4cdf001c     movem.l    (a7)+, d2-d4
001676: 4a80         tst.l      d0
001678: 4e75         rts        
00167a: 6770         beq.b      $16ec
00167c: 7364         .dc.w      $7364
00167e: 725f         moveq      #$5f, d1
001680: 6970         bvs.b      $16f2
001682: 630000ea     bls.w      $176e
001686: 5901         subq.b     #$4, d1
