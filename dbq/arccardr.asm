00003c: 00640080     ori.w      #$80, -(a4)
000040: 009600ac00c0 ori.l      #$ac00c0, (a6)
000046: 0072011212da ori.w      #$112, -$26(a2, d1.w)
00004c: 130a         .dc.w      $130a
00004e: 15dc         .dc.w      $15dc
000050: 1678         .dc.w      $1678
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
00006a: 61000228     bsr.w      $294
00006e: 588f         addq.l     #$4, a7
000070: 60e0         bra.b      $52
000072: 2f0c         move.l     a4, -(a7)
000074: 220a         move.l     a2, d1
000076: 2009         move.l     a1, d0
000078: 61001a5a     bsr.w      $1ad4
00007c: 588f         addq.l     #$4, a7
00007e: 60d2         bra.b      $52
000080: 2f02         move.l     d2, -(a7)
000082: 2f00         move.l     d0, -(a7)
000084: 2f0d         move.l     a5, -(a7)
000086: 2f0c         move.l     a4, -(a7)
000088: 220a         move.l     a2, d1
00008a: 2009         move.l     a1, d0
00008c: 6100124c     bsr.w      $12da
000090: 4fef0010     lea.l      $10(a7), a7
000094: 60bc         bra.b      $52
000096: 2f02         move.l     d2, -(a7)
000098: 2f00         move.l     d0, -(a7)
00009a: 2f0d         move.l     a5, -(a7)
00009c: 2f0c         move.l     a4, -(a7)
00009e: 220a         move.l     a2, d1
0000a0: 2009         move.l     a1, d0
0000a2: 61001266     bsr.w      $130a
0000a6: 4fef0010     lea.l      $10(a7), a7
0000aa: 60a6         bra.b      $52
0000ac: 2f00         move.l     d0, -(a7)
0000ae: 2f0d         move.l     a5, -(a7)
0000b0: 2f0c         move.l     a4, -(a7)
0000b2: 220a         move.l     a2, d1
0000b4: 2009         move.l     a1, d0
0000b6: 61001524     bsr.w      $15dc
0000ba: 4fef000c     lea.l      $c(a7), a7
0000be: 6092         bra.b      $52
0000c0: 2f00         move.l     d0, -(a7)
0000c2: 2f0d         move.l     a5, -(a7)
0000c4: 2f0c         move.l     a4, -(a7)
0000c6: 220a         move.l     a2, d1
0000c8: 2009         move.l     a1, d0
0000ca: 610015ac     bsr.w      $1678
0000ce: 4fef000c     lea.l      $c(a7), a7
0000d2: 6000ff7e     bra.w      $52
0000d6: 2f0e         move.l     a6, -(a7)
0000d8: 220b         move.l     a3, d1
0000da: 200a         move.l     a2, d0
0000dc: 61000dd6     bsr.w      $eb4
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
0000fe: 610011ce     bsr.w      $12ce
000102: 0c80ffffffff cmpi.l     #$ffffffff, d0
000108: 67e6         beq.b      $f0
00010a: 588f         addq.l     #$4, a7
00010c: 023c         .dc.w      $023c
00010e: fffe         dc.w       $fffe
000110: 4e75         rts        
000112: 4e75         rts        
000114: 4e550000     link.w     a5, #$0
000118: 48e7c080     movem.l    d0-d1/a0, -(a7)
00011c: 4fefffe4     lea.l      -$1c(a7), a7
000120: 202f001c     move.l     $1c(a7), d0
000124: 7234         moveq      #$34, d1
000126: 61003328     bsr.w      $3450
00012a: 5880         addq.l     #$4, d0
00012c: 2f400018     move.l     d0, $18(a7)
000130: 202f001c     move.l     $1c(a7), d0
000134: e788         lsl.l      #$3, d0
000136: 5080         addq.l     #$8, d0
000138: 2f400014     move.l     d0, $14(a7)
00013c: 7036         moveq      #$36, d0
00013e: 6100257e     bsr.w      $26be
000142: 2f400008     move.l     d0, $8(a7)
000146: 6600000c     bne.w      $154
00014a: 70ff         moveq      #$ff, d0
00014c: 4fef001c     lea.l      $1c(a7), a7
000150: 60000138     bra.w      $28a
000154: 202f0018     move.l     $18(a7), d0
000158: 61002564     bsr.w      $26be
00015c: 206f0008     movea.l    $8(a7), a0
000160: 2080         move.l     d0, (a0)
000162: 67000026     beq.w      $18a
000166: 202f0014     move.l     $14(a7), d0
00016a: 61002552     bsr.w      $26be
00016e: 206f0008     movea.l    $8(a7), a0
000172: 21400018     move.l     d0, $18(a0)
000176: 206f0008     movea.l    $8(a7), a0
00017a: 21400014     move.l     d0, $14(a0)
00017e: 206f0008     movea.l    $8(a7), a0
000182: 21400010     move.l     d0, $10(a0)
000186: 66000016     bne.w      $19e
00018a: 222f0008     move.l     $8(a7), d1
00018e: 7036         moveq      #$36, d0
000190: 610025c0     bsr.w      $2752
000194: 70ff         moveq      #$ff, d0
000196: 4fef001c     lea.l      $1c(a7), a7
00019a: 600000ee     bra.w      $28a
00019e: 206f0008     movea.l    $8(a7), a0
0001a2: 2050         movea.l    (a0), a0
0001a4: 4290         clr.l      (a0)
0001a6: 206f0008     movea.l    $8(a7), a0
0001aa: 2010         move.l     (a0), d0
0001ac: 5880         addq.l     #$4, d0
0001ae: 2e80         move.l     d0, (a7)
0001b0: 2f400004     move.l     d0, $4(a7)
0001b4: 7001         moveq      #$1, d0
0001b6: 2f40000c     move.l     d0, $c(a7)
0001ba: 6000001a     bra.w      $1d6
0001be: 2057         movea.l    (a7), a0
0001c0: 4290         clr.l      (a0)
0001c2: 7034         moveq      #$34, d0
0001c4: d097         add.l      (a7), d0
0001c6: 2057         movea.l    (a7), a0
0001c8: 2140000c     move.l     d0, $c(a0)
0001cc: 069700000034 addi.l     #$34, (a7)
0001d2: 52af000c     addq.l     #$1, $c(a7)
0001d6: 202f000c     move.l     $c(a7), d0
0001da: b0af001c     cmp.l      $1c(a7), d0
0001de: 6d00ffde     blt.w      $1be
0001e2: 2057         movea.l    (a7), a0
0001e4: 4290         clr.l      (a0)
0001e6: 2057         movea.l    (a7), a0
0001e8: 42a8000c     clr.l      $c(a0)
0001ec: 206f0008     movea.l    $8(a7), a0
0001f0: 216f00040004 move.l     $4(a7), $4(a0)
0001f6: 206f0008     movea.l    $8(a7), a0
0001fa: 216f00040008 move.l     $4(a7), $8(a0)
000200: 206f0008     movea.l    $8(a7), a0
000204: 2157000c     move.l     (a7), $c(a0)
000208: 206f0008     movea.l    $8(a7), a0
00020c: 20280010     move.l     $10(a0), d0
000210: 5080         addq.l     #$8, d0
000212: 206f0008     movea.l    $8(a7), a0
000216: 2140001c     move.l     d0, $1c(a0)
00021a: 206f0008     movea.l    $8(a7), a0
00021e: 20280010     move.l     $10(a0), d0
000222: 5080         addq.l     #$8, d0
000224: 206f0008     movea.l    $8(a7), a0
000228: 21400020     move.l     d0, $20(a0)
00022c: 206f0008     movea.l    $8(a7), a0
000230: 216f001c0024 move.l     $1c(a7), $24(a0)
000236: 206f0008     movea.l    $8(a7), a0
00023a: 20680010     movea.l    $10(a0), a0
00023e: 4290         clr.l      (a0)
000240: 206f0008     movea.l    $8(a7), a0
000244: 20280010     move.l     $10(a0), d0
000248: 5080         addq.l     #$8, d0
00024a: 222f001c     move.l     $1c(a7), d1
00024e: 5381         subq.l     #$1, d1
000250: e789         lsl.l      #$3, d1
000252: d081         add.l      d1, d0
000254: 206f0008     movea.l    $8(a7), a0
000258: 20680010     movea.l    $10(a0), a0
00025c: 21400004     move.l     d0, $4(a0)
000260: 206f0008     movea.l    $8(a7), a0
000264: 216f001c0028 move.l     $1c(a7), $28(a0)
00026a: 206f0008     movea.l    $8(a7), a0
00026e: 42a8002c     clr.l      $2c(a0)
000272: 206f0008     movea.l    $8(a7), a0
000276: 216f001c0030 move.l     $1c(a7), $30(a0)
00027c: 202f0008     move.l     $8(a7), d0
000280: 4fef001c     lea.l      $1c(a7), a7
000284: 60000004     bra.w      $28a
000288: 4e71         nop        
00028a: 4ced0102fff8 movem.l    -$8(a5), d1/a0
000290: 4e5d         unlk       a5
000292: 4e75         rts        
000294: 4e550000     link.w     a5, #$0
000298: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
00029c: 2441         movea.l    d1, a2
00029e: 4fefffe4     lea.l      -$1c(a7), a7
0002a2: 7030         moveq      #$30, d0
0002a4: d0af001c     add.l      $1c(a7), d0
0002a8: 2f400018     move.l     d0, $18(a7)
0002ac: 7030         moveq      #$30, d0
0002ae: d08a         add.l      a2, d0
0002b0: 2540002a     move.l     d0, $2a(a2)
0002b4: 2f2f001c     move.l     $1c(a7), -(a7)
0002b8: 222a002a     move.l     $2a(a2), d1
0002bc: 200a         move.l     a2, d0
0002be: 61001df6     bsr.w      $20b6
0002c2: 588f         addq.l     #$4, a7
0002c4: 7202         moveq      #$2, d1
0002c6: 7028         moveq      #$28, d0
0002c8: 61002ed4     bsr.w      $319e
0002cc: 25400108     move.l     d0, $108(a2)
0002d0: 202a0108     move.l     $108(a2), d0
0002d4: 7205         moveq      #$5, d1
0002d6: 61003178     bsr.w      $3450
0002da: 25400030     move.l     d0, $30(a2)
0002de: 426a005a     clr.w      $5a(a2)
0002e2: 42aa010c     clr.l      $10c(a2)
0002e6: 61002b68     bsr.w      $2e50
0002ea: 2f400014     move.l     d0, $14(a7)
0002ee: 206f0018     movea.l    $18(a7), a0
0002f2: 25680030003e move.l     $30(a0), $3e(a2)
0002f8: 206f0018     movea.l    $18(a7), a0
0002fc: 4aa80020     tst.l      $20(a0)
000300: 6700001a     beq.w      $31c
000304: 206f0018     movea.l    $18(a7), a0
000308: 20680020     movea.l    $20(a0), a0
00030c: 08d00000     bset.b     #$0, (a0)
000310: 206f0018     movea.l    $18(a7), a0
000314: 20680020     movea.l    $20(a0), a0
000318: 0210fffe     andi.b     #$fe, (a0)
00031c: 206f0018     movea.l    $18(a7), a0
000320: 0c28ffff0019 cmpi.b     #$ff, $19(a0)
000326: 67000010     beq.w      $338
00032a: 206f0018     movea.l    $18(a7), a0
00032e: 156800190042 move.b     $19(a0), $42(a2)
000334: 60000010     bra.w      $346
000338: 203cfffffeed move.l     #$fffffeed, d0
00033e: 4fef001c     lea.l      $1c(a7), a7
000342: 60000260     bra.w      $5a4
000346: 206f0018     movea.l    $18(a7), a0
00034a: 4a68002c     tst.w      $2c(a0)
00034e: 6700000c     beq.w      $35c
000352: 357c020000fc move.w     #$200, $fc(a2)
000358: 60000008     bra.w      $362
00035c: 357c010000fc move.w     #$100, $fc(a2)
000362: 206f0018     movea.l    $18(a7), a0
000366: 10280018     move.b     $18(a0), d0
00036a: 4880         ext.w      d0
00036c: 3540002e     move.w     d0, $2e(a2)
000370: 206f0018     movea.l    $18(a7), a0
000374: 2568000c0100 move.l     $c(a0), $100(a2)
00037a: 206f0018     movea.l    $18(a7), a0
00037e: 10280005     move.b     $5(a0), d0
000382: 4880         ext.w      d0
000384: 35400036     move.w     d0, $36(a2)
000388: 206f0018     movea.l    $18(a7), a0
00038c: 3568001a00f6 move.w     $1a(a0), $f6(a2)
000392: 206f0018     movea.l    $18(a7), a0
000396: 2568002400f8 move.l     $24(a0), $f8(a2)
00039c: 206f0018     movea.l    $18(a7), a0
0003a0: 20680024     movea.l    $24(a0), a0
0003a4: 103c00fc     move.b     #$fc, d0
0003a8: c0280006     and.b      $6(a0), d0
0003ac: 08c00000     bset.b     #$0, d0
0003b0: 206f0018     movea.l    $18(a7), a0
0003b4: 20680024     movea.l    $24(a0), a0
0003b8: 11400006     move.b     d0, $6(a0)
0003bc: 206f0018     movea.l    $18(a7), a0
0003c0: 20680024     movea.l    $24(a0), a0
0003c4: 116a00420007 move.b     $42(a2), $7(a0)
0003ca: 206f0018     movea.l    $18(a7), a0
0003ce: 20680024     movea.l    $24(a0), a0
0003d2: 10280006     move.b     $6(a0), d0
0003d6: 08c00007     bset.b     #$7, d0
0003da: 206f0018     movea.l    $18(a7), a0
0003de: 20680024     movea.l    $24(a0), a0
0003e2: 11400006     move.b     d0, $6(a0)
0003e6: 206f0018     movea.l    $18(a7), a0
0003ea: 20680024     movea.l    $24(a0), a0
0003ee: 707f         moveq      #$7f, d0
0003f0: c0280006     and.b      $6(a0), d0
0003f4: 206f0018     movea.l    $18(a7), a0
0003f8: 20680024     movea.l    $24(a0), a0
0003fc: 11400006     move.b     d0, $6(a0)
000400: 206f0018     movea.l    $18(a7), a0
000404: 20680024     movea.l    $24(a0), a0
000408: 10280006     move.b     $6(a0), d0
00040c: 08c00005     bset.b     #$5, d0
000410: 206f0018     movea.l    $18(a7), a0
000414: 20680024     movea.l    $24(a0), a0
000418: 11400006     move.b     d0, $6(a0)
00041c: 206f0018     movea.l    $18(a7), a0
000420: 20680024     movea.l    $24(a0), a0
000424: 4210         clr.b      (a0)
000426: 422a00fe     clr.b      $fe(a2)
00042a: 206f0018     movea.l    $18(a7), a0
00042e: 20680024     movea.l    $24(a0), a0
000432: 117c00010001 move.b     #$1, $1(a0)
000438: 206f0018     movea.l    $18(a7), a0
00043c: 20680024     movea.l    $24(a0), a0
000440: 117c00020001 move.b     #$2, $1(a0)
000446: 206f0018     movea.l    $18(a7), a0
00044a: 20680024     movea.l    $24(a0), a0
00044e: 117c001e0001 move.b     #$1e, $1(a0)
000454: 206f0018     movea.l    $18(a7), a0
000458: 4a68002c     tst.w      $2c(a0)
00045c: 67000014     beq.w      $472
000460: 206f0018     movea.l    $18(a7), a0
000464: 20680024     movea.l    $24(a0), a0
000468: 117c000d0001 move.b     #$d, $1(a0)
00046e: 60000010     bra.w      $480
000472: 206f0018     movea.l    $18(a7), a0
000476: 20680024     movea.l    $24(a0), a0
00047a: 117c00050001 move.b     #$5, $1(a0)
000480: 426a00f0     clr.w      $f0(a2)
000484: 426a00f2     clr.w      $f2(a2)
000488: 357cffff00d0 move.w     #$ffff, $d0(a2)
00048e: 357cffff00d2 move.w     #$ffff, $d2(a2)
000494: 42af000c     clr.l      $c(a7)
000498: 60000050     bra.w      $4ea
00049c: 202f000c     move.l     $c(a7), d0
0004a0: e388         lsl.l      #$1, d0
0004a2: 41f20800     lea.l      (a2, d0.l), a0
0004a6: 426800d4     clr.w      $d4(a0)
0004aa: 202f000c     move.l     $c(a7), d0
0004ae: e388         lsl.l      #$1, d0
0004b0: 41f20800     lea.l      (a2, d0.l), a0
0004b4: 426800da     clr.w      $da(a0)
0004b8: 202f000c     move.l     $c(a7), d0
0004bc: e388         lsl.l      #$1, d0
0004be: 41f20800     lea.l      (a2, d0.l), a0
0004c2: 226f0018     movea.l    $18(a7), a1
0004c6: 3169001a00e0 move.w     $1a(a1), $e0(a0)
0004cc: 202f000c     move.l     $c(a7), d0
0004d0: e388         lsl.l      #$1, d0
0004d2: 41f20800     lea.l      (a2, d0.l), a0
0004d6: 426800e6     clr.w      $e6(a0)
0004da: 202f000c     move.l     $c(a7), d0
0004de: 41f20800     lea.l      (a2, d0.l), a0
0004e2: 422800ec     clr.b      $ec(a0)
0004e6: 52af000c     addq.l     #$1, $c(a7)
0004ea: 7002         moveq      #$2, d0
0004ec: b0af000c     cmp.l      $c(a7), d0
0004f0: 6e00ffaa     bgt.w      $49c
0004f4: 200a         move.l     a2, d0
0004f6: 61001a2c     bsr.w      $1f24
0004fa: 206f001c     movea.l    $1c(a7), a0
0004fe: 2f280030     move.l     $30(a0), -(a7)
000502: 4852         pea.l      (a2)
000504: 487afbd0     pea.l      $d6(pc)
000508: 206f0024     movea.l    $24(a7), a0
00050c: 10280006     move.b     $6(a0), d0
000510: 4880         ext.w      d0
000512: 48c0         ext.l      d0
000514: 2200         move.l     d0, d1
000516: 206f0024     movea.l    $24(a7), a0
00051a: 10280004     move.b     $4(a0), d0
00051e: 4880         ext.w      d0
000520: 48c0         ext.l      d0
000522: 610023a8     bsr.w      $28cc
000526: 4fef000c     lea.l      $c(a7), a7
00052a: 41fafbcc     lea.l      $f8(pc), a0
00052e: 2008         move.l     a0, d0
000530: 610024f2     bsr.w      $2a24
000534: 206f0018     movea.l    $18(a7), a0
000538: 4aa8001c     tst.l      $1c(a0)
00053c: 67000012     beq.w      $550
000540: 206f0018     movea.l    $18(a7), a0
000544: 226f0018     movea.l    $18(a7), a1
000548: 2269001c     movea.l    $1c(a1), a1
00054c: 12a80004     move.b     $4(a0), (a1)
000550: 357c000200d0 move.w     #$2, $d0(a2)
000556: 206f0018     movea.l    $18(a7), a0
00055a: 4aa80020     tst.l      $20(a0)
00055e: 6700000e     beq.w      $56e
000562: 206f0018     movea.l    $18(a7), a0
000566: 20680020     movea.l    $20(a0), a0
00056a: 08d00001     bset.b     #$1, (a0)
00056e: 700a         moveq      #$a, d0
000570: 6100fba2     bsr.w      $114
000574: 206a004e     movea.l    $4e(a2), a0
000578: 2080         move.l     d0, (a0)
00057a: 200a         move.l     a2, d0
00057c: 61000030     bsr.w      $5ae
000580: 206a00f8     movea.l    $f8(a2), a0
000584: 117c00140001 move.b     #$14, $1(a0)
00058a: 002a008400fe ori.b      #$84, $fe(a2)
000590: 206a00f8     movea.l    $f8(a2), a0
000594: 10aa00fe     move.b     $fe(a2), (a0)
000598: 7000         moveq      #$0, d0
00059a: 4fef001c     lea.l      $1c(a7), a7
00059e: 60000004     bra.w      $5a4
0005a2: 4e71         nop        
0005a4: 4ced0700fff4 movem.l    -$c(a5), a0-a2
0005aa: 4e5d         unlk       a5
0005ac: 4e75         rts        
0005ae: 4e550000     link.w     a5, #$0
0005b2: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
0005b6: 4feffff6     lea.l      -$a(a7), a7
0005ba: 42af0002     clr.l      $2(a7)
0005be: 022f003f0002 andi.b     #$3f, $2(a7)
0005c4: 002f00800002 ori.b      #$80, $2(a7)
0005ca: 08ef00050002 bset.b     #$5, $2(a7)
0005d0: 206f000a     movea.l    $a(a7), a0
0005d4: 1f6800420004 move.b     $42(a0), $4(a7)
0005da: 42af0006     clr.l      $6(a7)
0005de: 08ef00070007 bset.b     #$7, $7(a7)
0005e4: 206f000a     movea.l    $a(a7), a0
0005e8: 28280108     move.l     $108(a0), d4
0005ec: 206f000a     movea.l    $a(a7), a0
0005f0: 206800f8     movea.l    $f8(a0), a0
0005f4: 1f6800010001 move.b     $1(a0), $1(a7)
0005fa: 082f00040001 btst.b     #$4, $1(a7)
000600: 67000006     beq.w      $608
000604: 6000001e     bra.w      $624
000608: 5d84         subq.l     #$6, d4
00060a: 4a84         tst.l      d4
00060c: 6e00000c     bgt.w      $61a
000610: 70ff         moveq      #$ff, d0
000612: 4fef000a     lea.l      $a(a7), a7
000616: 6000007c     bra.w      $694
00061a: 7006         moveq      #$6, d0
00061c: 6100223c     bsr.w      $285a
000620: 6000ffca     bra.w      $5ec
000624: 1f7c001c0005 move.b     #$1c, $5(a7)
00062a: 41ef0002     lea.l      $2(a7), a0
00062e: 2208         move.l     a0, d1
000630: 202f000a     move.l     $a(a7), d0
000634: 61000068     bsr.w      $69e
000638: 1f7c007e0005 move.b     #$7e, $5(a7)
00063e: 41ef0002     lea.l      $2(a7), a0
000642: 2208         move.l     a0, d1
000644: 202f000a     move.l     $a(a7), d0
000648: 61000054     bsr.w      $69e
00064c: 1f7c007f0005 move.b     #$7f, $5(a7)
000652: 41ef0002     lea.l      $2(a7), a0
000656: 2208         move.l     a0, d1
000658: 202f000a     move.l     $a(a7), d0
00065c: 61000040     bsr.w      $69e
000660: 1f7c00800005 move.b     #$80, $5(a7)
000666: 41ef0002     lea.l      $2(a7), a0
00066a: 2208         move.l     a0, d1
00066c: 202f000a     move.l     $a(a7), d0
000670: 6100002c     bsr.w      $69e
000674: 1f7c00810005 move.b     #$81, $5(a7)
00067a: 41ef0002     lea.l      $2(a7), a0
00067e: 2208         move.l     a0, d1
000680: 202f000a     move.l     $a(a7), d0
000684: 61000018     bsr.w      $69e
000688: 7000         moveq      #$0, d0
00068a: 4fef000a     lea.l      $a(a7), a7
00068e: 60000004     bra.w      $694
000692: 4e71         nop        
000694: 4ced0112fff4 movem.l    -$c(a5), d1/d4/a0
00069a: 4e5d         unlk       a5
00069c: 4e75         rts        
00069e: 4e550000     link.w     a5, #$0
0006a2: 48e7cec0     movem.l    d0-d1/d4-d6/a0-a1, -(a7)
0006a6: 4feffff6     lea.l      -$a(a7), a7
0006aa: 7800         moveq      #$0, d4
0006ac: 422f0002     clr.b      $2(a7)
0006b0: 7c05         moveq      #$5, d6
0006b2: 206f000a     movea.l    $a(a7), a0
0006b6: 226f000e     movea.l    $e(a7), a1
0006ba: 10290003     move.b     $3(a1), d0
0006be: b0280042     cmp.b      $42(a0), d0
0006c2: 6600000c     bne.w      $6d0
0006c6: 7000         moveq      #$0, d0
0006c8: 4fef000a     lea.l      $a(a7), a7
0006cc: 6000015a     bra.w      $828
0006d0: 206f000e     movea.l    $e(a7), a0
0006d4: 1f6800020006 move.b     $2(a0), $6(a7)
0006da: 206f000e     movea.l    $e(a7), a0
0006de: 1f6800030007 move.b     $3(a0), $7(a7)
0006e4: 3a3c01f8     move.w     #$1f8, d5
0006e8: 0c450100     cmpi.w     #$100, d5
0006ec: 6300000e     bls.w      $6fc
0006f0: 04450100     subi.w     #$100, d5
0006f4: 1f450008     move.b     d5, $8(a7)
0006f8: 6000000a     bra.w      $704
0006fc: 422f0008     clr.b      $8(a7)
000700: 1f450009     move.b     d5, $9(a7)
000704: 48780004     pea.l      $4.w
000708: 486f000a     pea.l      $a(a7)
00070c: 42a7         clr.l      -(a7)
00070e: 2204         move.l     d4, d1
000710: 202f0016     move.l     $16(a7), d0
000714: 6100148a     bsr.w      $1ba0
000718: 4fef000c     lea.l      $c(a7), a7
00071c: 48780008     pea.l      $8.w
000720: 2f2f0012     move.l     $12(a7), -(a7)
000724: 7000         moveq      #$0, d0
000726: 3005         move.w     d5, d0
000728: 2f00         move.l     d0, -(a7)
00072a: 2204         move.l     d4, d1
00072c: 202f0016     move.l     $16(a7), d0
000730: 6100146e     bsr.w      $1ba0
000734: 4fef000c     lea.l      $c(a7), a7
000738: 206f000a     movea.l    $a(a7), a0
00073c: 3f6800f60004 move.w     $f6(a0), $4(a7)
000742: 1004         move.b     d4, d0
000744: e708         lsl.b      #$3, d0
000746: 5600         addq.b     #$3, d0
000748: 206f000a     movea.l    $a(a7), a0
00074c: 206800f8     movea.l    $f8(a0), a0
000750: 11400001     move.b     d0, $1(a0)
000754: 206f000a     movea.l    $a(a7), a0
000758: 206800f8     movea.l    $f8(a0), a0
00075c: 1f500003     move.b     (a0), $3(a7)
000760: 082f00000003 btst.b     #$0, $3(a7)
000766: 67000016     beq.w      $77e
00076a: 082f00010003 btst.b     #$1, $3(a7)
000770: 6700000c     beq.w      $77e
000774: 7000         moveq      #$0, d0
000776: 4fef000a     lea.l      $a(a7), a7
00077a: 600000ac     bra.w      $828
00077e: 082f00000003 btst.b     #$0, $3(a7)
000784: 67000026     beq.w      $7ac
000788: 082f00010003 btst.b     #$1, $3(a7)
00078e: 6600001c     bne.w      $7ac
000792: 536f0004     subq.w     #$1, $4(a7)
000796: 6d000014     blt.w      $7ac
00079a: 1004         move.b     d4, d0
00079c: e708         lsl.b      #$3, d0
00079e: 5600         addq.b     #$3, d0
0007a0: 206f000a     movea.l    $a(a7), a0
0007a4: 206800f8     movea.l    $f8(a0), a0
0007a8: 11400001     move.b     d0, $1(a0)
0007ac: 206f000a     movea.l    $a(a7), a0
0007b0: 206800f8     movea.l    $f8(a0), a0
0007b4: 1f6800010001 move.b     $1(a0), $1(a7)
0007ba: 082f00030001 btst.b     #$3, $1(a7)
0007c0: 67000016     beq.w      $7d8
0007c4: 206f000a     movea.l    $a(a7), a0
0007c8: 206800f8     movea.l    $f8(a0), a0
0007cc: 117c000e0001 move.b     #$e, $1(a0)
0007d2: 1f7c00010002 move.b     #$1, $2(a7)
0007d8: 082f00040001 btst.b     #$4, $1(a7)
0007de: 66000012     bne.w      $7f2
0007e2: 2006         move.l     d6, d0
0007e4: 5386         subq.l     #$1, d6
0007e6: 4a80         tst.l      d0
0007e8: 6e000008     bgt.w      $7f2
0007ec: 1f7c00010002 move.b     #$1, $2(a7)
0007f2: 4a6f0004     tst.w      $4(a7)
0007f6: 6f00000a     ble.w      $802
0007fa: 4a2f0002     tst.b      $2(a7)
0007fe: 6700001a     beq.w      $81a
000802: 206f000a     movea.l    $a(a7), a0
000806: 206800f8     movea.l    $f8(a0), a0
00080a: 117c00010001 move.b     #$1, $1(a0)
000810: 70ff         moveq      #$ff, d0
000812: 4fef000a     lea.l      $a(a7), a7
000816: 60000010     bra.w      $828
00081a: 7002         moveq      #$2, d0
00081c: 6100203c     bsr.w      $285a
000820: 6000ff32     bra.w      $754
000824: 4fef000a     lea.l      $a(a7), a7
000828: 4ced0370ffec movem.l    -$14(a5), d4-d6/a0-a1
00082e: 4e5d         unlk       a5
000830: 4e75         rts        
000832: 4e550000     link.w     a5, #$0
000836: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
00083a: 2440         movea.l    d0, a2
00083c: 4fefffc6     lea.l      -$3a(a7), a7
000840: 48780002     pea.l      $2.w
000844: 486f000c     pea.l      $c(a7)
000848: 48780002     pea.l      $2.w
00084c: 222f004a     move.l     $4a(a7), d1
000850: 200a         move.l     a2, d0
000852: 610013d2     bsr.w      $1c26
000856: 4fef000c     lea.l      $c(a7), a7
00085a: 0c6f01000008 cmpi.w     #$100, $8(a7)
000860: 63000022     bls.w      $884
000864: 302f0008     move.w     $8(a7), d0
000868: e048         lsr.w      #$8, d0
00086a: 3f400008     move.w     d0, $8(a7)
00086e: 7000         moveq      #$0, d0
000870: 302f0008     move.w     $8(a7), d0
000874: 223c00000100 move.l     #$100, d1
00087a: 9280         sub.l      d0, d1
00087c: 2f410012     move.l     d1, $12(a7)
000880: 60000014     bra.w      $896
000884: 7000         moveq      #$0, d0
000886: 302f0008     move.w     $8(a7), d0
00088a: 223c00000200 move.l     #$200, d1
000890: 9280         sub.l      d0, d1
000892: 2f410012     move.l     d1, $12(a7)
000896: 48780008     pea.l      $8.w
00089a: 486f0004     pea.l      $4(a7)
00089e: 7000         moveq      #$0, d0
0008a0: 302f0010     move.w     $10(a7), d0
0008a4: 2f00         move.l     d0, -(a7)
0008a6: 222f004a     move.l     $4a(a7), d1
0008aa: 200a         move.l     a2, d0
0008ac: 61001378     bsr.w      $1c26
0008b0: 4fef000c     lea.l      $c(a7), a7
0008b4: 6000035c     bra.w      $c12
0008b8: 3017         move.w     (a7), d0
0008ba: 02400fff     andi.w     #$fff, d0
0008be: 7200         moveq      #$0, d1
0008c0: 3200         move.w     d0, d1
0008c2: 2f41000e     move.l     d1, $e(a7)
0008c6: 222f000e     move.l     $e(a7), d1
0008ca: 206a0038     movea.l    $38(a2), a0
0008ce: 20280002     move.l     $2(a0), d0
0008d2: 61001c8a     bsr.w      $255e
0008d6: 2640         movea.l    d0, a3
0008d8: 4aab0002     tst.l      $2(a3)
0008dc: 6600000c     bne.w      $8ea
0008e0: 7000         moveq      #$0, d0
0008e2: 4fef003a     lea.l      $3a(a7), a7
0008e6: 60000362     bra.w      $c4a
0008ea: 4a53         tst.w      (a3)
0008ec: 6c00001e     bge.w      $90c
0008f0: 08170005     btst.b     #$5, (a7)
0008f4: 67000012     beq.w      $908
0008f8: 222f000e     move.l     $e(a7), d1
0008fc: 206a0038     movea.l    $38(a2), a0
000900: 20280002     move.l     $2(a0), d0
000904: 61001bd2     bsr.w      $24d8
000908: 60000084     bra.w      $98e
00090c: 202f0012     move.l     $12(a7), d0
000910: 5180         subq.l     #$8, d0
000912: 2c00         move.l     d0, d6
000914: bcab0006     cmp.l      $6(a3), d6
000918: 6f000026     ble.w      $940
00091c: 4a53         tst.w      (a3)
00091e: 6f00000c     ble.w      $92c
000922: 7201         moveq      #$1, d1
000924: 3053         movea.w    (a3), a0
000926: 2008         move.l     a0, d0
000928: 61001f16     bsr.w      $2840
00092c: 08ea00030035 bset.b     #$3, $35(a2)
000932: 36bcfffe     move.w     #$fffe, (a3)
000936: 7001         moveq      #$1, d0
000938: 4fef003a     lea.l      $3a(a7), a7
00093c: 6000030c     bra.w      $c4a
000940: 7000         moveq      #$0, d0
000942: 3006         move.w     d6, d0
000944: 2f00         move.l     d0, -(a7)
000946: 2f2b0002     move.l     $2(a3), -(a7)
00094a: 302f0010     move.w     $10(a7), d0
00094e: 5040         addq.w     #$8, d0
000950: 7200         moveq      #$0, d1
000952: 3200         move.w     d0, d1
000954: 2f01         move.l     d1, -(a7)
000956: 222f004a     move.l     $4a(a7), d1
00095a: 200a         move.l     a2, d0
00095c: 610012c8     bsr.w      $1c26
000960: 4fef000c     lea.l      $c(a7), a7
000964: ddab0002     add.l      d6, $2(a3)
000968: 9dab0006     sub.l      d6, $6(a3)
00096c: 08170005     btst.b     #$5, (a7)
000970: 6700001c     beq.w      $98e
000974: 4a53         tst.w      (a3)
000976: 67000012     beq.w      $98a
00097a: 7201         moveq      #$1, d1
00097c: 3053         movea.w    (a3), a0
00097e: 2008         move.l     a0, d0
000980: 61001ebe     bsr.w      $2840
000984: 4253         clr.w      (a3)
000986: 60000006     bra.w      $98e
00098a: 36bcffff     move.w     #$ffff, (a3)
00098e: 7001         moveq      #$1, d0
000990: 4fef003a     lea.l      $3a(a7), a7
000994: 600002b4     bra.w      $c4a
000998: 600002a4     bra.w      $c3e
00099c: 3017         move.w     (a7), d0
00099e: 02400fff     andi.w     #$fff, d0
0009a2: 7200         moveq      #$0, d1
0009a4: 3200         move.w     d0, d1
0009a6: 2f41000e     move.l     d1, $e(a7)
0009aa: 222f000e     move.l     $e(a7), d1
0009ae: 206a0038     movea.l    $38(a2), a0
0009b2: 20280002     move.l     $2(a0), d0
0009b6: 61001ba6     bsr.w      $255e
0009ba: 2640         movea.l    d0, a3
0009bc: 082f00070004 btst.b     #$7, $4(a7)
0009c2: 6700002c     beq.w      $9f0
0009c6: 102b000a     move.b     $a(a3), d0
0009ca: ee08         lsr.b      #$7, d0
0009cc: 7200         moveq      #$0, d1
0009ce: 1200         move.b     d0, d1
0009d0: 0c410001     cmpi.w     #$1, d1
0009d4: 6600001a     bne.w      $9f0
0009d8: 08ab0007000a bclr.b     #$7, $a(a3)
0009de: 4a53         tst.w      (a3)
0009e0: 6f00000e     ble.w      $9f0
0009e4: 7201         moveq      #$1, d1
0009e6: 3053         movea.w    (a3), a0
0009e8: 2008         move.l     a0, d0
0009ea: 61001e54     bsr.w      $2840
0009ee: 4253         clr.w      (a3)
0009f0: 082f00040004 btst.b     #$4, $4(a7)
0009f6: 67000024     beq.w      $a1c
0009fa: 277cfffffffe0006 move.l     #$fffffffe, $6(a3)
000a02: 4a53         tst.w      (a3)
000a04: 67000012     beq.w      $a18
000a08: 7201         moveq      #$1, d1
000a0a: 3053         movea.w    (a3), a0
000a0c: 2008         move.l     a0, d0
000a0e: 61001e30     bsr.w      $2840
000a12: 4253         clr.w      (a3)
000a14: 60000006     bra.w      $a1c
000a18: 36bcffff     move.w     #$ffff, (a3)
000a1c: 082f00050004 btst.b     #$5, $4(a7)
000a22: 67000022     beq.w      $a46
000a26: 08ab0007000a bclr.b     #$7, $a(a3)
000a2c: 4a53         tst.w      (a3)
000a2e: 6f00000c     ble.w      $a3c
000a32: 7201         moveq      #$1, d1
000a34: 3053         movea.w    (a3), a0
000a36: 2008         move.l     a0, d0
000a38: 61001e06     bsr.w      $2840
000a3c: 36bcfffe     move.w     #$fffe, (a3)
000a40: 08ea00070035 bset.b     #$7, $35(a2)
000a46: 082f00060004 btst.b     #$6, $4(a7)
000a4c: 67000008     beq.w      $a56
000a50: 08eb0007000a bset.b     #$7, $a(a3)
000a56: 082f00070005 btst.b     #$7, $5(a7)
000a5c: 67000038     beq.w      $a96
000a60: 7000         moveq      #$0, d0
000a62: 102f0002     move.b     $2(a7), d0
000a66: 2200         move.l     d0, d1
000a68: 200a         move.l     a2, d0
000a6a: 6100154e     bsr.w      $1fba
000a6e: 4a80         tst.l      d0
000a70: 66000016     bne.w      $a88
000a74: 7000         moveq      #$0, d0
000a76: 102f0002     move.b     $2(a7), d0
000a7a: 3540005a     move.w     d0, $5a(a2)
000a7e: 200a         move.l     a2, d0
000a80: 610001d2     bsr.w      $c54
000a84: 60000010     bra.w      $a96
000a88: 7000         moveq      #$0, d0
000a8a: 102f0002     move.b     $2(a7), d0
000a8e: 2200         move.l     d0, d1
000a90: 200a         move.l     a2, d0
000a92: 610014c0     bsr.w      $1f54
000a96: 7001         moveq      #$1, d0
000a98: 4fef003a     lea.l      $3a(a7), a7
000a9c: 600001ac     bra.w      $c4a
000aa0: 6000019c     bra.w      $c3e
000aa4: 7000         moveq      #$0, d0
000aa6: 102f0004     move.b     $4(a7), d0
000aaa: 3f40000c     move.w     d0, $c(a7)
000aae: 3f40000a     move.w     d0, $a(a7)
000ab2: 66000008     bne.w      $abc
000ab6: 3f6a0044000c move.w     $44(a2), $c(a7)
000abc: 1017         move.b     (a7), d0
000abe: e708         lsl.b      #$3, d0
000ac0: ee08         lsr.b      #$7, d0
000ac2: 7200         moveq      #$0, d1
000ac4: 1200         move.b     d0, d1
000ac6: 660000cc     bne.w      $b94
000aca: 48780024     pea.l      $24.w
000ace: 486f001a     pea.l      $1a(a7)
000ad2: 7000         moveq      #$0, d0
000ad4: 302f0010     move.w     $10(a7), d0
000ad8: 2f00         move.l     d0, -(a7)
000ada: 222f004a     move.l     $4a(a7), d1
000ade: 200a         move.l     a2, d0
000ae0: 61001144     bsr.w      $1c26
000ae4: 4fef000c     lea.l      $c(a7), a7
000ae8: 7000         moveq      #$0, d0
000aea: 102f0002     move.b     $2(a7), d0
000aee: 2200         move.l     d0, d1
000af0: 200a         move.l     a2, d0
000af2: 61001460     bsr.w      $1f54
000af6: 302f000a     move.w     $a(a7), d0
000afa: 48c0         ext.l      d0
000afc: e588         lsl.l      #$2, d0
000afe: 206a004e     movea.l    $4e(a2), a0
000b02: 4ab00800     tst.l      (a0, d0.l)
000b06: 67000048     beq.w      $b50
000b0a: 41ef0016     lea.l      $16(a7), a0
000b0e: 2208         move.l     a0, d1
000b10: 302f000a     move.w     $a(a7), d0
000b14: 48c0         ext.l      d0
000b16: e588         lsl.l      #$2, d0
000b18: 206a004e     movea.l    $4e(a2), a0
000b1c: 20300800     move.l     (a0, d0.l), d0
000b20: 6100215a     bsr.w      $2c7c
000b24: 4a80         tst.l      d0
000b26: 6600001e     bne.w      $b46
000b2a: 4a6a003c     tst.w      $3c(a2)
000b2e: 67000012     beq.w      $b42
000b32: 223c00000104 move.l     #$104, d1
000b38: 306f000c     movea.w    $c(a7), a0
000b3c: 2008         move.l     a0, d0
000b3e: 61001d00     bsr.w      $2840
000b42: 60000008     bra.w      $b4c
000b46: 08ea00060035 bset.b     #$6, $35(a2)
000b4c: 60000042     bra.w      $b90
000b50: 4a6a0044     tst.w      $44(a2)
000b54: 67000034     beq.w      $b8a
000b58: 41ef0016     lea.l      $16(a7), a0
000b5c: 2208         move.l     a0, d1
000b5e: 206a004e     movea.l    $4e(a2), a0
000b62: 2010         move.l     (a0), d0
000b64: 61002116     bsr.w      $2c7c
000b68: 4a80         tst.l      d0
000b6a: 6600001e     bne.w      $b8a
000b6e: 4a6a003c     tst.w      $3c(a2)
000b72: 67000012     beq.w      $b86
000b76: 223c00000104 move.l     #$104, d1
000b7c: 306a0044     movea.w    $44(a2), a0
000b80: 2008         move.l     a0, d0
000b82: 61001cbc     bsr.w      $2840
000b86: 60000008     bra.w      $b90
000b8a: 08ea00060035 bset.b     #$6, $35(a2)
000b90: 60000068     bra.w      $bfa
000b94: 302f0014     move.w     $14(a7), d0
000b98: 5140         subq.w     #$8, d0
000b9a: 7200         moveq      #$0, d1
000b9c: 3200         move.w     d0, d1
000b9e: 2f01         move.l     d1, -(a7)
000ba0: 302f000c     move.w     $c(a7), d0
000ba4: 5040         addq.w     #$8, d0
000ba6: 7200         moveq      #$0, d1
000ba8: 3200         move.w     d0, d1
000baa: 2f01         move.l     d1, -(a7)
000bac: 2f2f0046     move.l     $46(a7), -(a7)
000bb0: 4852         pea.l      (a2)
000bb2: 222f0010     move.l     $10(a7), d1
000bb6: 302f001a     move.w     $1a(a7), d0
000bba: 48c0         ext.l      d0
000bbc: e588         lsl.l      #$2, d0
000bbe: 206a004e     movea.l    $4e(a2), a0
000bc2: 20300800     move.l     (a0, d0.l), d0
000bc6: 61002168     bsr.w      $2d30
000bca: 4fef0010     lea.l      $10(a7), a7
000bce: 4a80         tst.l      d0
000bd0: 6c000008     bge.w      $bda
000bd4: 08ea00050035 bset.b     #$5, $35(a2)
000bda: 08170005     btst.b     #$5, (a7)
000bde: 6700001a     beq.w      $bfa
000be2: 4a6a003c     tst.w      $3c(a2)
000be6: 67000012     beq.w      $bfa
000bea: 223c00000105 move.l     #$105, d1
000bf0: 306f000c     movea.w    $c(a7), a0
000bf4: 2008         move.l     a0, d0
000bf6: 61001c48     bsr.w      $2840
000bfa: 7001         moveq      #$1, d0
000bfc: 4fef003a     lea.l      $3a(a7), a7
000c00: 60000048     bra.w      $c4a
000c04: 60000038     bra.w      $c3e
000c08: 7000         moveq      #$0, d0
000c0a: 4fef003a     lea.l      $3a(a7), a7
000c0e: 6000003a     bra.w      $c4a
000c12: 1017         move.b     (a7), d0
000c14: ec08         lsr.b      #$6, d0
000c16: 7200         moveq      #$0, d1
000c18: 1200         move.b     d0, d1
000c1a: 0c81000000ff cmpi.l     #$ff, d1
000c20: 6200ffe6     bhi.w      $c08
000c24: 4a01         tst.b      d1
000c26: 6700fe7c     beq.w      $aa4
000c2a: 0c010001     cmpi.b     #$1, d1
000c2e: 6700fc88     beq.w      $8b8
000c32: 0c010002     cmpi.b     #$2, d1
000c36: 6700fd64     beq.w      $99c
000c3a: 6000ffcc     bra.w      $c08
000c3e: 7000         moveq      #$0, d0
000c40: 4fef003a     lea.l      $3a(a7), a7
000c44: 60000004     bra.w      $c4a
000c48: 4e71         nop        
000c4a: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
000c50: 4e5d         unlk       a5
000c52: 4e75         rts        
000c54: 4e550000     link.w     a5, #$0
000c58: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
000c5c: 2440         movea.l    d0, a2
000c5e: 4fefff86     lea.l      -$7a(a7), a7
000c62: 306a005a     movea.w    $5a(a2), a0
000c66: 2008         move.l     a0, d0
000c68: 610013ac     bsr.w      $2016
000c6c: 42af000e     clr.l      $e(a7)
000c70: 206a0038     movea.l    $38(a2), a0
000c74: 2f6800020076 move.l     $2(a0), $76(a7)
000c7a: 60000216     bra.w      $e92
000c7e: 7a00         moveq      #$0, d5
000c80: 6000000e     bra.w      $c90
000c84: 41ef0012     lea.l      $12(a7), a0
000c88: 11bc00015800 move.b     #$1, (a0, d5.l)
000c8e: 5285         addq.l     #$1, d5
000c90: 7064         moveq      #$64, d0
000c92: b085         cmp.l      d5, d0
000c94: 6e00ffee     bgt.w      $c84
000c98: 202f000e     move.l     $e(a7), d0
000c9c: 7264         moveq      #$64, d1
000c9e: 610027b0     bsr.w      $3450
000ca2: 2800         move.l     d0, d4
000ca4: 206f0076     movea.l    $76(a7), a0
000ca8: 3050         movea.w    (a0), a0
000caa: 2a08         move.l     a0, d5
000cac: 6000001e     bra.w      $ccc
000cb0: 2005         move.l     d5, d0
000cb2: e388         lsl.l      #$1, d0
000cb4: 206f0076     movea.l    $76(a7), a0
000cb8: d1c0         adda.l     d0, a0
000cba: 3028057e     move.w     $57e(a0), d0
000cbe: 48c0         ext.l      d0
000cc0: 9084         sub.l      d4, d0
000cc2: 41ef0012     lea.l      $12(a7), a0
000cc6: 42300800     clr.b      (a0, d0.l)
000cca: 5285         addq.l     #$1, d5
000ccc: 7064         moveq      #$64, d0
000cce: b085         cmp.l      d5, d0
000cd0: 6e00ffde     bgt.w      $cb0
000cd4: 7a00         moveq      #$0, d5
000cd6: 6000007c     bra.w      $d54
000cda: 41ef0012     lea.l      $12(a7), a0
000cde: 0c3000015800 cmpi.b     #$1, (a0, d5.l)
000ce4: 6600006c     bne.w      $d52
000ce8: 2005         move.l     d5, d0
000cea: 720e         moveq      #$e, d1
000cec: 61002762     bsr.w      $3450
000cf0: 222f0076     move.l     $76(a7), d1
000cf4: 5c81         addq.l     #$6, d1
000cf6: d081         add.l      d1, d0
000cf8: 2f40000a     move.l     d0, $a(a7)
000cfc: 206f000a     movea.l    $a(a7), a0
000d00: 3028000c     move.w     $c(a0), d0
000d04: b06a005a     cmp.w      $5a(a2), d0
000d08: 67000006     beq.w      $d10
000d0c: 60000044     bra.w      $d52
000d10: 206f000a     movea.l    $a(a7), a0
000d14: 0c50fffe     cmpi.w     #$fffe, (a0)
000d18: 66000018     bne.w      $d32
000d1c: 2005         move.l     d5, d0
000d1e: d084         add.l      d4, d0
000d20: 2200         move.l     d0, d1
000d22: 206a0038     movea.l    $38(a2), a0
000d26: 20280002     move.l     $2(a0), d0
000d2a: 610017ac     bsr.w      $24d8
000d2e: 60000022     bra.w      $d52
000d32: 206f000a     movea.l    $a(a7), a0
000d36: 4a50         tst.w      (a0)
000d38: 6f000018     ble.w      $d52
000d3c: 7201         moveq      #$1, d1
000d3e: 206f000a     movea.l    $a(a7), a0
000d42: 3050         movea.w    (a0), a0
000d44: 2008         move.l     a0, d0
000d46: 61001af8     bsr.w      $2840
000d4a: 206f000a     movea.l    $a(a7), a0
000d4e: 30bcfffe     move.w     #$fffe, (a0)
000d52: 5285         addq.l     #$1, d5
000d54: 7064         moveq      #$64, d0
000d56: b085         cmp.l      d5, d0
000d58: 6e00ff80     bgt.w      $cda
000d5c: 42af0006     clr.l      $6(a7)
000d60: 60000118     bra.w      $e7a
000d64: 302a00d2     move.w     $d2(a2), d0
000d68: 48c0         ext.l      d0
000d6a: b0af0006     cmp.l      $6(a7), d0
000d6e: 66000006     bne.w      $d76
000d72: 60000102     bra.w      $e76
000d76: 202f0006     move.l     $6(a7), d0
000d7a: e388         lsl.l      #$1, d0
000d7c: 41f20800     lea.l      (a2, d0.l), a0
000d80: 4a6800da     tst.w      $da(a0)
000d84: 670000f0     beq.w      $e76
000d88: 48780002     pea.l      $2.w
000d8c: 486f0008     pea.l      $8(a7)
000d90: 48780002     pea.l      $2.w
000d94: 222f0012     move.l     $12(a7), d1
000d98: 200a         move.l     a2, d0
000d9a: 61000e8a     bsr.w      $1c26
000d9e: 4fef000c     lea.l      $c(a7), a7
000da2: 0c6f01000004 cmpi.w     #$100, $4(a7)
000da8: 6300000c     bls.w      $db6
000dac: 302f0004     move.w     $4(a7), d0
000db0: e048         lsr.w      #$8, d0
000db2: 3f400004     move.w     d0, $4(a7)
000db6: 48780004     pea.l      $4.w
000dba: 486f0004     pea.l      $4(a7)
000dbe: 7000         moveq      #$0, d0
000dc0: 302f000c     move.w     $c(a7), d0
000dc4: 2f00         move.l     d0, -(a7)
000dc6: 222f0012     move.l     $12(a7), d1
000dca: 200a         move.l     a2, d0
000dcc: 61000e58     bsr.w      $1c26
000dd0: 4fef000c     lea.l      $c(a7), a7
000dd4: 7000         moveq      #$0, d0
000dd6: 102f0003     move.b     $3(a7), d0
000dda: b06a005a     cmp.w      $5a(a2), d0
000dde: 66000096     bne.w      $e76
000de2: 1017         move.b     (a7), d0
000de4: ec08         lsr.b      #$6, d0
000de6: 7200         moveq      #$0, d1
000de8: 1200         move.b     d0, d1
000dea: 6600003e     bne.w      $e2a
000dee: 3017         move.w     (a7), d0
000df0: 02400fff     andi.w     #$fff, d0
000df4: 7200         moveq      #$0, d1
000df6: 3200         move.w     d0, d1
000df8: 206a0038     movea.l    $38(a2), a0
000dfc: 20280002     move.l     $2(a0), d0
000e00: 6100175c     bsr.w      $255e
000e04: 2f40000a     move.l     d0, $a(a7)
000e08: 7201         moveq      #$1, d1
000e0a: 202f0006     move.l     $6(a7), d0
000e0e: e388         lsl.l      #$1, d0
000e10: 41f20800     lea.l      (a2, d0.l), a0
000e14: 306800d4     movea.w    $d4(a0), a0
000e18: 2008         move.l     a0, d0
000e1a: 61001a24     bsr.w      $2840
000e1e: 206f000a     movea.l    $a(a7), a0
000e22: 30bcfffe     move.w     #$fffe, (a0)
000e26: 60000018     bra.w      $e40
000e2a: 721f         moveq      #$1f, d1
000e2c: 202f0006     move.l     $6(a7), d0
000e30: e388         lsl.l      #$1, d0
000e32: 41f20800     lea.l      (a2, d0.l), a0
000e36: 306800d4     movea.w    $d4(a0), a0
000e3a: 2008         move.l     a0, d0
000e3c: 61001a02     bsr.w      $2840
000e40: 202f0006     move.l     $6(a7), d0
000e44: e388         lsl.l      #$1, d0
000e46: 41f20800     lea.l      (a2, d0.l), a0
000e4a: 426800da     clr.w      $da(a0)
000e4e: 202f0006     move.l     $6(a7), d0
000e52: e388         lsl.l      #$1, d0
000e54: 41f20800     lea.l      (a2, d0.l), a0
000e58: 426800e6     clr.w      $e6(a0)
000e5c: 202f0006     move.l     $6(a7), d0
000e60: e388         lsl.l      #$1, d0
000e62: 41f20800     lea.l      (a2, d0.l), a0
000e66: 426800d4     clr.w      $d4(a0)
000e6a: 202f0006     move.l     $6(a7), d0
000e6e: 41f20800     lea.l      (a2, d0.l), a0
000e72: 422800ec     clr.b      $ec(a0)
000e76: 52af0006     addq.l     #$1, $6(a7)
000e7a: 7002         moveq      #$2, d0
000e7c: b0af0006     cmp.l      $6(a7), d0
000e80: 6e00fee2     bgt.w      $d64
000e84: 52af000e     addq.l     #$1, $e(a7)
000e88: 206f0076     movea.l    $76(a7), a0
000e8c: 2f6800020076 move.l     $2(a0), $76(a7)
000e92: 4aaf0076     tst.l      $76(a7)
000e96: 6600fde6     bne.w      $c7e
000e9a: 721f         moveq      #$1f, d1
000e9c: 306a0044     movea.w    $44(a2), a0
000ea0: 2008         move.l     a0, d0
000ea2: 6100199c     bsr.w      $2840
000ea6: 4fef007a     lea.l      $7a(a7), a7
000eaa: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
000eb0: 4e5d         unlk       a5
000eb2: 4e75         rts        
000eb4: 4e550000     link.w     a5, #$0
000eb8: 48e7cee0     movem.l    d0-d1/d4-d6/a0-a2, -(a7)
000ebc: 2440         movea.l    d0, a2
000ebe: 4fefffda     lea.l      -$26(a7), a7
000ec2: 422f001e     clr.b      $1e(a7)
000ec6: 422f001d     clr.b      $1d(a7)
000eca: 206a00f8     movea.l    $f8(a2), a0
000ece: 4210         clr.b      (a0)
000ed0: 6000005a     bra.w      $f2c
000ed4: 306a00d0     movea.w    $d0(a2), a0
000ed8: 2a08         move.l     a0, d5
000eda: 526a00d0     addq.w     #$1, $d0(a2)
000ede: 302a00d0     move.w     $d0(a2), d0
000ee2: 48c0         ext.l      d0
000ee4: 81fc0004     divs.w     #$4, d0
000ee8: 4840         swap       d0
000eea: 354000d0     move.w     d0, $d0(a2)
000eee: 66000008     bne.w      $ef8
000ef2: 357c000200d0 move.w     #$2, $d0(a2)
000ef8: 102a00d1     move.b     $d1(a2), d0
000efc: e708         lsl.b      #$3, d0
000efe: 5800         addq.b     #$4, d0
000f00: 206a00f8     movea.l    $f8(a2), a0
000f04: 11400001     move.b     d0, $1(a0)
000f08: 2205         move.l     d5, d1
000f0a: 200a         move.l     a2, d0
000f0c: 6100f924     bsr.w      $832
000f10: 6000001a     bra.w      $f2c
000f14: 2205         move.l     d5, d1
000f16: 200a         move.l     a2, d0
000f18: 6100f918     bsr.w      $832
000f1c: 102a00d1     move.b     $d1(a2), d0
000f20: e708         lsl.b      #$3, d0
000f22: 5800         addq.b     #$4, d0
000f24: 206a00f8     movea.l    $f8(a2), a0
000f28: 11400001     move.b     d0, $1(a0)
000f2c: 206a00f8     movea.l    $f8(a2), a0
000f30: 1810         move.b     (a0), d4
000f32: 08040007     btst.b     #$7, d4
000f36: 6700000a     beq.w      $f42
000f3a: 4a6a005a     tst.w      $5a(a2)
000f3e: 6700ff94     beq.w      $ed4
000f42: 306a00d2     movea.w    $d2(a2), a0
000f46: 2a08         move.l     a0, d5
000f48: 70ff         moveq      #$ff, d0
000f4a: b085         cmp.l      d5, d0
000f4c: 67000342     beq.w      $1290
000f50: 08040000     btst.b     #$0, d4
000f54: 660000ac     bne.w      $1002
000f58: 4a2f001e     tst.b      $1e(a7)
000f5c: 66000012     bne.w      $f70
000f60: 206a00f8     movea.l    $f8(a2), a0
000f64: 1f680001001f move.b     $1(a0), $1f(a7)
000f6a: 1f7c0001001e move.b     #$1, $1e(a7)
000f70: 082f0003001f btst.b     #$3, $1f(a7)
000f76: 6600000a     bne.w      $f82
000f7a: 08040002     btst.b     #$2, d4
000f7e: 67000082     beq.w      $1002
000f82: 082f0003001f btst.b     #$3, $1f(a7)
000f88: 6700000c     beq.w      $f96
000f8c: 206a00f8     movea.l    $f8(a2), a0
000f90: 117c000e0001 move.b     #$e, $1(a0)
000f96: 4aaa0030     tst.l      $30(a2)
000f9a: 67000066     beq.w      $1002
000f9e: 486f0004     pea.l      $4(a7)
000fa2: 486f000c     pea.l      $c(a7)
000fa6: 486f0012     pea.l      $12(a7)
000faa: 41ef001a     lea.l      $1a(a7), a0
000fae: 2208         move.l     a0, d1
000fb0: 7003         moveq      #$3, d0
000fb2: 6100223e     bsr.w      $31f2
000fb6: 4fef000c     lea.l      $c(a7), a7
000fba: 202a0108     move.l     $108(a2), d0
000fbe: 222f000e     move.l     $e(a7), d1
000fc2: 6100248c     bsr.w      $3450
000fc6: 223c0000ffff move.l     #$ffff, d1
000fcc: c2af0004     and.l      $4(a7), d1
000fd0: d081         add.l      d1, d0
000fd2: 2e80         move.l     d0, (a7)
000fd4: 2017         move.l     (a7), d0
000fd6: b0aa0104     cmp.l      $104(a2), d0
000fda: 64000012     bcc.w      $fee
000fde: 202a0108     move.l     $108(a2), d0
000fe2: 223c00015180 move.l     #$15180, d1
000fe8: 61002466     bsr.w      $3450
000fec: d197         add.l      d0, (a7)
000fee: 202a0104     move.l     $104(a2), d0
000ff2: d0aa0030     add.l      $30(a2), d0
000ff6: b097         cmp.l      (a7), d0
000ff8: 64000008     bcc.w      $1002
000ffc: 1f7c0001001d move.b     #$1, $1d(a7)
001002: 08040000     btst.b     #$0, d4
001006: 6600000a     bne.w      $1012
00100a: 4a2f001d     tst.b      $1d(a7)
00100e: 6700027c     beq.w      $128c
001012: 4a2f001d     tst.b      $1d(a7)
001016: 66000066     bne.w      $107e
00101a: 08040001     btst.b     #$1, d4
00101e: 6700005e     beq.w      $107e
001022: 2005         move.l     d5, d0
001024: e388         lsl.l      #$1, d0
001026: 41f20800     lea.l      (a2, d0.l), a0
00102a: 426800da     clr.w      $da(a0)
00102e: 2005         move.l     d5, d0
001030: e388         lsl.l      #$1, d0
001032: 41f20800     lea.l      (a2, d0.l), a0
001036: 426800d4     clr.w      $d4(a0)
00103a: 41f25800     lea.l      (a2, d5.l), a0
00103e: 422800ec     clr.b      $ec(a0)
001042: 2005         move.l     d5, d0
001044: e388         lsl.l      #$1, d0
001046: 41f20800     lea.l      (a2, d0.l), a0
00104a: 306800e6     movea.w    $e6(a0), a0
00104e: 2208         move.l     a0, d1
001050: 200a         move.l     a2, d0
001052: 61000f00     bsr.w      $1f54
001056: 2005         move.l     d5, d0
001058: e388         lsl.l      #$1, d0
00105a: 41f20800     lea.l      (a2, d0.l), a0
00105e: 426800e6     clr.w      $e6(a0)
001062: 4a6a00f2     tst.w      $f2(a2)
001066: 67000012     beq.w      $107a
00106a: 7201         moveq      #$1, d1
00106c: 306a00f2     movea.w    $f2(a2), a0
001070: 2008         move.l     a0, d0
001072: 610017cc     bsr.w      $2840
001076: 426a00f2     clr.w      $f2(a2)
00107a: 6000013e     bra.w      $11ba
00107e: 2005         move.l     d5, d0
001080: e388         lsl.l      #$1, d0
001082: 41f20800     lea.l      (a2, d0.l), a0
001086: 43f25800     lea.l      (a2, d5.l), a1
00108a: 136800d500ec move.b     $d5(a0), $ec(a1)
001090: 4a2f001d     tst.b      $1d(a7)
001094: 66000012     bne.w      $10a8
001098: 2005         move.l     d5, d0
00109a: e388         lsl.l      #$1, d0
00109c: 41f20800     lea.l      (a2, d0.l), a0
0010a0: 536800e0     subq.w     #$1, $e0(a0)
0010a4: 660000f4     bne.w      $119a
0010a8: 4a2f001d     tst.b      $1d(a7)
0010ac: 6700000c     beq.w      $10ba
0010b0: 206a00f8     movea.l    $f8(a2), a0
0010b4: 117c00010001 move.b     #$1, $1(a0)
0010ba: 2005         move.l     d5, d0
0010bc: e388         lsl.l      #$1, d0
0010be: 41f20800     lea.l      (a2, d0.l), a0
0010c2: 426800d4     clr.w      $d4(a0)
0010c6: 2005         move.l     d5, d0
0010c8: e388         lsl.l      #$1, d0
0010ca: 41f20800     lea.l      (a2, d0.l), a0
0010ce: 426800da     clr.w      $da(a0)
0010d2: 2005         move.l     d5, d0
0010d4: e388         lsl.l      #$1, d0
0010d6: 41f20800     lea.l      (a2, d0.l), a0
0010da: 426800e6     clr.w      $e6(a0)
0010de: 41f25800     lea.l      (a2, d5.l), a0
0010e2: 422800ec     clr.b      $ec(a0)
0010e6: 4a6a00f2     tst.w      $f2(a2)
0010ea: 67000012     beq.w      $10fe
0010ee: 7201         moveq      #$1, d1
0010f0: 306a00f2     movea.w    $f2(a2), a0
0010f4: 2008         move.l     a0, d0
0010f6: 61001748     bsr.w      $2840
0010fa: 426a00f2     clr.w      $f2(a2)
0010fe: 48780002     pea.l      $2.w
001102: 486f001e     pea.l      $1e(a7)
001106: 48780002     pea.l      $2.w
00110a: 2205         move.l     d5, d1
00110c: 200a         move.l     a2, d0
00110e: 61000b16     bsr.w      $1c26
001112: 4fef000c     lea.l      $c(a7), a7
001116: 0c6f0100001a cmpi.w     #$100, $1a(a7)
00111c: 6300000c     bls.w      $112a
001120: 302f001a     move.w     $1a(a7), d0
001124: e048         lsr.w      #$8, d0
001126: 3f40001a     move.w     d0, $1a(a7)
00112a: 48780004     pea.l      $4.w
00112e: 486f001a     pea.l      $1a(a7)
001132: 7000         moveq      #$0, d0
001134: 302f0022     move.w     $22(a7), d0
001138: 2f00         move.l     d0, -(a7)
00113a: 2205         move.l     d5, d1
00113c: 200a         move.l     a2, d0
00113e: 61000ae6     bsr.w      $1c26
001142: 4fef000c     lea.l      $c(a7), a7
001146: 102f0016     move.b     $16(a7), d0
00114a: ec08         lsr.b      #$6, d0
00114c: 7200         moveq      #$0, d1
00114e: 1200         move.b     d0, d1
001150: 66000044     bne.w      $1196
001154: 302f0016     move.w     $16(a7), d0
001158: 02400fff     andi.w     #$fff, d0
00115c: 7200         moveq      #$0, d1
00115e: 3200         move.w     d0, d1
001160: 206a0038     movea.l    $38(a2), a0
001164: 20280002     move.l     $2(a0), d0
001168: 610013f4     bsr.w      $255e
00116c: 2f400012     move.l     d0, $12(a7)
001170: 206f0012     movea.l    $12(a7), a0
001174: 4a50         tst.w      (a0)
001176: 6f000010     ble.w      $1188
00117a: 7201         moveq      #$1, d1
00117c: 206f0012     movea.l    $12(a7), a0
001180: 3050         movea.w    (a0), a0
001182: 2008         move.l     a0, d0
001184: 610016ba     bsr.w      $2840
001188: 206f0012     movea.l    $12(a7), a0
00118c: 30bcfffe     move.w     #$fffe, (a0)
001190: 08ea00000034 bset.b     #$0, $34(a2)
001196: 60000022     bra.w      $11ba
00119a: 2005         move.l     d5, d0
00119c: e388         lsl.l      #$1, d0
00119e: 41f20800     lea.l      (a2, d0.l), a0
0011a2: 302800e0     move.w     $e0(a0), d0
0011a6: 48c0         ext.l      d0
0011a8: 322a00f6     move.w     $f6(a2), d1
0011ac: 48c1         ext.l      d1
0011ae: 5581         subq.l     #$2, d1
0011b0: b081         cmp.l      d1, d0
0011b2: 66000006     bne.w      $11ba
0011b6: 52aa010c     addq.l     #$1, $10c(a2)
0011ba: 3f7cffff0020 move.w     #$ffff, $20(a7)
0011c0: 7a00         moveq      #$0, d5
0011c2: 60000060     bra.w      $1224
0011c6: 2005         move.l     d5, d0
0011c8: e388         lsl.l      #$1, d0
0011ca: 41f20800     lea.l      (a2, d0.l), a0
0011ce: 4a6800da     tst.w      $da(a0)
0011d2: 6700004e     beq.w      $1222
0011d6: 2005         move.l     d5, d0
0011d8: e388         lsl.l      #$1, d0
0011da: 41f20800     lea.l      (a2, d0.l), a0
0011de: 3f6800d40022 move.w     $d4(a0), $22(a7)
0011e4: 7c00         moveq      #$0, d6
0011e6: 60000022     bra.w      $120a
0011ea: 41f26800     lea.l      (a2, d6.l), a0
0011ee: 7000         moveq      #$0, d0
0011f0: 102800ec     move.b     $ec(a0), d0
0011f4: b06f0022     cmp.w      $22(a7), d0
0011f8: 6600000e     bne.w      $1208
0011fc: 3f460020     move.w     d6, $20(a7)
001200: 426f0022     clr.w      $22(a7)
001204: 6000000c     bra.w      $1212
001208: 5286         addq.l     #$1, d6
00120a: 7002         moveq      #$2, d0
00120c: b086         cmp.l      d6, d0
00120e: 6e00ffda     bgt.w      $11ea
001212: 4a6f0022     tst.w      $22(a7)
001216: 6700000a     beq.w      $1222
00121a: 3f450020     move.w     d5, $20(a7)
00121e: 6000000c     bra.w      $122c
001222: 5285         addq.l     #$1, d5
001224: 7002         moveq      #$2, d0
001226: b085         cmp.l      d5, d0
001228: 6e00ff9c     bgt.w      $11c6
00122c: 356f002000d2 move.w     $20(a7), $d2(a2)
001232: 4a6f0020     tst.w      $20(a7)
001236: 6d00004e     blt.w      $1286
00123a: 486f0004     pea.l      $4(a7)
00123e: 486f000c     pea.l      $c(a7)
001242: 486f0012     pea.l      $12(a7)
001246: 41ef001a     lea.l      $1a(a7), a0
00124a: 2208         move.l     a0, d1
00124c: 7003         moveq      #$3, d0
00124e: 61001fa2     bsr.w      $31f2
001252: 4fef000c     lea.l      $c(a7), a7
001256: 202a0108     move.l     $108(a2), d0
00125a: 222f000e     move.l     $e(a7), d1
00125e: 610021f0     bsr.w      $3450
001262: 223c0000ffff move.l     #$ffff, d1
001268: c2af0004     and.l      $4(a7), d1
00126c: d081         add.l      d1, d0
00126e: 25400104     move.l     d0, $104(a2)
001272: 102f0021     move.b     $21(a7), d0
001276: e708         lsl.b      #$3, d0
001278: 5600         addq.b     #$3, d0
00127a: 206a00f8     movea.l    $f8(a2), a0
00127e: 11400001     move.b     d0, $1(a0)
001282: 60000008     bra.w      $128c
001286: 022a00f600fe andi.b     #$f6, $fe(a2)
00128c: 60000008     bra.w      $1296
001290: 022a00f600fe andi.b     #$f6, $fe(a2)
001296: 08040002     btst.b     #$2, d4
00129a: 6700000c     beq.w      $12a8
00129e: 206a00f8     movea.l    $f8(a2), a0
0012a2: 117c00160001 move.b     #$16, $1(a0)
0012a8: 4a6a005a     tst.w      $5a(a2)
0012ac: 6600000a     bne.w      $12b8
0012b0: 206a00f8     movea.l    $f8(a2), a0
0012b4: 10aa00fe     move.b     $fe(a2), (a0)
0012b8: 70ff         moveq      #$ff, d0
0012ba: 4fef0026     lea.l      $26(a7), a7
0012be: 60000004     bra.w      $12c4
0012c2: 4e71         nop        
0012c4: 4ced0770ffe8 movem.l    -$18(a5), d4-d6/a0-a2
0012ca: 4e5d         unlk       a5
0012cc: 4e75         rts        
0012ce: 4e550000     link.w     a5, #$0
0012d2: 48e78000     movem.l    d0, -(a7)
0012d6: 4e5d         unlk       a5
0012d8: 4e75         rts        
0012da: 4e550000     link.w     a5, #$0
0012de: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0012e2: 2441         movea.l    d1, a2
0012e4: 306a0036     movea.w    $36(a2), a0
0012e8: 2f08         move.l     a0, -(a7)
0012ea: 42a7         clr.l      -(a7)
0012ec: 222f0028     move.l     $28(a7), d1
0012f0: 202f0020     move.l     $20(a7), d0
0012f4: 61000afc     bsr.w      $1df2
0012f8: 508f         addq.l     #$8, a7
0012fa: 60000004     bra.w      $1300
0012fe: 4e71         nop        
001300: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001306: 4e5d         unlk       a5
001308: 4e75         rts        
00130a: 4e550000     link.w     a5, #$0
00130e: 48e7cfb8     movem.l    d0-d1/d4-d7/a0/a2-a4, -(a7)
001312: 2440         movea.l    d0, a2
001314: 2641         movea.l    d1, a3
001316: 286f0034     movea.l    $34(a7), a4
00131a: 282f0038     move.l     $38(a7), d4
00131e: 2a2f003c     move.l     $3c(a7), d5
001322: 2c2f0040     move.l     $40(a7), d6
001326: 4feffff4     lea.l      -$c(a7), a7
00132a: 2044         movea.l    d4, a0
00132c: 2010         move.l     (a0), d0
00132e: b0ab003e     cmp.l      $3e(a3), d0
001332: 6f00000a     ble.w      $133e
001336: 2e2b003e     move.l     $3e(a3), d7
00133a: 60000006     bra.w      $1342
00133e: 2044         movea.l    d4, a0
001340: 2e10         move.l     (a0), d7
001342: 2007         move.l     d7, d0
001344: d086         add.l      d6, d0
001346: 0c80000000fe cmpi.l     #$fe, d0
00134c: 6d000034     blt.w      $1382
001350: 2007         move.l     d7, d0
001352: d086         add.l      d6, d0
001354: 0c8000000100 cmpi.l     #$100, d0
00135a: 6e000026     bgt.w      $1382
00135e: 4a86         tst.l      d6
001360: 6700000c     beq.w      $136e
001364: 2045         movea.l    d5, a0
001366: 08900005     bclr.b     #$5, (a0)
00136a: 6000000c     bra.w      $1378
00136e: 2044         movea.l    d4, a0
001370: 20680004     movea.l    $4(a0), a0
001374: 08900005     bclr.b     #$5, (a0)
001378: 203c000000fc move.l     #$fc, d0
00137e: 9086         sub.l      d6, d0
001380: 2e00         move.l     d0, d7
001382: 220b         move.l     a3, d1
001384: 202f003c     move.l     $3c(a7), d0
001388: 6100090c     bsr.w      $1c96
00138c: 2f400008     move.l     d0, $8(a7)
001390: 6c000018     bge.w      $13aa
001394: 220b         move.l     a3, d1
001396: 202f003c     move.l     $3c(a7), d0
00139a: 61000b50     bsr.w      $1eec
00139e: 202f0008     move.l     $8(a7), d0
0013a2: 4fef000c     lea.l      $c(a7), a7
0013a6: 6000005a     bra.w      $1402
0013aa: 2f06         move.l     d6, -(a7)
0013ac: 2f05         move.l     d5, -(a7)
0013ae: 2f07         move.l     d7, -(a7)
0013b0: 2044         movea.l    d4, a0
0013b2: 2f280004     move.l     $4(a0), -(a7)
0013b6: 222f0018     move.l     $18(a7), d1
0013ba: 200b         move.l     a3, d0
0013bc: 6100004e     bsr.w      $140c
0013c0: 4fef0010     lea.l      $10(a7), a7
0013c4: 2f400004     move.l     d0, $4(a7)
0013c8: 220b         move.l     a3, d1
0013ca: 202f003c     move.l     $3c(a7), d0
0013ce: 61000b1c     bsr.w      $1eec
0013d2: 2e80         move.l     d0, (a7)
0013d4: 6c00000c     bge.w      $13e2
0013d8: 2017         move.l     (a7), d0
0013da: 4fef000c     lea.l      $c(a7), a7
0013de: 60000022     bra.w      $1402
0013e2: 2044         movea.l    d4, a0
0013e4: 20280004     move.l     $4(a0), d0
0013e8: d087         add.l      d7, d0
0013ea: 2044         movea.l    d4, a0
0013ec: 21400004     move.l     d0, $4(a0)
0013f0: 2044         movea.l    d4, a0
0013f2: 9f90         sub.l      d7, (a0)
0013f4: 202f0004     move.l     $4(a7), d0
0013f8: 4fef000c     lea.l      $c(a7), a7
0013fc: 60000004     bra.w      $1402
001400: 4e71         nop        
001402: 4ced1df0ffe0 movem.l    -$20(a5), d4-d7/a0/a2-a4
001408: 4e5d         unlk       a5
00140a: 4e75         rts        
00140c: 4e550000     link.w     a5, #$0
001410: 48e7ccb8     movem.l    d0-d1/d4-d5/a0/a2-a4, -(a7)
001414: 2440         movea.l    d0, a2
001416: 2801         move.l     d1, d4
001418: 266f0028     movea.l    $28(a7), a3
00141c: 286f0030     movea.l    $30(a7), a4
001420: 4fefffe2     lea.l      -$1e(a7), a7
001424: 302f004c     move.w     $4c(a7), d0
001428: d06f0054     add.w      $54(a7), d0
00142c: 323c0200     move.w     #$200, d1
001430: 9240         sub.w      d0, d1
001432: 3a01         move.w     d1, d5
001434: 4aaf0052     tst.l      $52(a7)
001438: 67000082     beq.w      $14bc
00143c: 1f6c0002000e move.b     $2(a4), $e(a7)
001442: 1f6c0003000f move.b     $3(a4), $f(a7)
001448: 0c450100     cmpi.w     #$100, d5
00144c: 6300000e     bls.w      $145c
001450: 04450100     subi.w     #$100, d5
001454: 1f450010     move.b     d5, $10(a7)
001458: 6000000a     bra.w      $1464
00145c: 422f0010     clr.b      $10(a7)
001460: 1f450011     move.b     d5, $11(a7)
001464: 48780004     pea.l      $4.w
001468: 486f0012     pea.l      $12(a7)
00146c: 42a7         clr.l      -(a7)
00146e: 2204         move.l     d4, d1
001470: 200a         move.l     a2, d0
001472: 6100072c     bsr.w      $1ba0
001476: 4fef000c     lea.l      $c(a7), a7
00147a: 7000         moveq      #$0, d0
00147c: 302f0054     move.w     $54(a7), d0
001480: 2f00         move.l     d0, -(a7)
001482: 4854         pea.l      (a4)
001484: 7000         moveq      #$0, d0
001486: 3005         move.w     d5, d0
001488: 2f00         move.l     d0, -(a7)
00148a: 2204         move.l     d4, d1
00148c: 200a         move.l     a2, d0
00148e: 61000710     bsr.w      $1ba0
001492: 4fef000c     lea.l      $c(a7), a7
001496: 7000         moveq      #$0, d0
001498: 302f004c     move.w     $4c(a7), d0
00149c: 2f00         move.l     d0, -(a7)
00149e: 4853         pea.l      (a3)
0014a0: 302f005c     move.w     $5c(a7), d0
0014a4: d045         add.w      d5, d0
0014a6: 7200         moveq      #$0, d1
0014a8: 3200         move.w     d0, d1
0014aa: 2f01         move.l     d1, -(a7)
0014ac: 2204         move.l     d4, d1
0014ae: 200a         move.l     a2, d0
0014b0: 610006ee     bsr.w      $1ba0
0014b4: 4fef000c     lea.l      $c(a7), a7
0014b8: 6000005c     bra.w      $1516
0014bc: 1f6b0002000e move.b     $2(a3), $e(a7)
0014c2: 1f6b0003000f move.b     $3(a3), $f(a7)
0014c8: 0c450100     cmpi.w     #$100, d5
0014cc: 6300000e     bls.w      $14dc
0014d0: 04450100     subi.w     #$100, d5
0014d4: 1f450010     move.b     d5, $10(a7)
0014d8: 6000000a     bra.w      $14e4
0014dc: 422f0010     clr.b      $10(a7)
0014e0: 1f450011     move.b     d5, $11(a7)
0014e4: 48780004     pea.l      $4.w
0014e8: 486f0012     pea.l      $12(a7)
0014ec: 42a7         clr.l      -(a7)
0014ee: 2204         move.l     d4, d1
0014f0: 200a         move.l     a2, d0
0014f2: 610006ac     bsr.w      $1ba0
0014f6: 4fef000c     lea.l      $c(a7), a7
0014fa: 7000         moveq      #$0, d0
0014fc: 302f004c     move.w     $4c(a7), d0
001500: 2f00         move.l     d0, -(a7)
001502: 4853         pea.l      (a3)
001504: 7000         moveq      #$0, d0
001506: 3005         move.w     d5, d0
001508: 2f00         move.l     d0, -(a7)
00150a: 2204         move.l     d4, d1
00150c: 200a         move.l     a2, d0
00150e: 61000690     bsr.w      $1ba0
001512: 4fef000c     lea.l      $c(a7), a7
001516: 2004         move.l     d4, d0
001518: e388         lsl.l      #$1, d0
00151a: 41f20800     lea.l      (a2, d0.l), a0
00151e: 316a00f600e0 move.w     $f6(a2), $e0(a0)
001524: 41f24800     lea.l      (a2, d4.l), a0
001528: 422800ec     clr.b      $ec(a0)
00152c: 2004         move.l     d4, d0
00152e: e388         lsl.l      #$1, d0
001530: 41f20800     lea.l      (a2, d0.l), a0
001534: 7000         moveq      #$0, d0
001536: 102f000f     move.b     $f(a7), d0
00153a: 314000e6     move.w     d0, $e6(a0)
00153e: 306a0036     movea.w    $36(a2), a0
001542: 2008         move.l     a0, d0
001544: 610010c8     bsr.w      $260e
001548: 2f40001a     move.l     d0, $1a(a7)
00154c: 2004         move.l     d4, d0
00154e: e388         lsl.l      #$1, d0
001550: 41f20800     lea.l      (a2, d0.l), a0
001554: 317c000100da move.w     #$1, $da(a0)
00155a: 0c6affff00d2 cmpi.w     #$ffff, $d2(a2)
001560: 66000056     bne.w      $15b8
001564: 354400d2     move.w     d4, $d2(a2)
001568: 4857         pea.l      (a7)
00156a: 486f0008     pea.l      $8(a7)
00156e: 486f000e     pea.l      $e(a7)
001572: 41ef0016     lea.l      $16(a7), a0
001576: 2208         move.l     a0, d1
001578: 7003         moveq      #$3, d0
00157a: 61001c76     bsr.w      $31f2
00157e: 4fef000c     lea.l      $c(a7), a7
001582: 202a0108     move.l     $108(a2), d0
001586: 222f000a     move.l     $a(a7), d1
00158a: 61001ec4     bsr.w      $3450
00158e: 223c0000ffff move.l     #$ffff, d1
001594: c297         and.l      (a7), d1
001596: d081         add.l      d1, d0
001598: 25400104     move.l     d0, $104(a2)
00159c: 1004         move.b     d4, d0
00159e: e708         lsl.b      #$3, d0
0015a0: 5600         addq.b     #$3, d0
0015a2: 206a00f8     movea.l    $f8(a2), a0
0015a6: 11400001     move.b     d0, $1(a0)
0015aa: 002a000900fe ori.b      #$9, $fe(a2)
0015b0: 206a00f8     movea.l    $f8(a2), a0
0015b4: 10aa00fe     move.b     $fe(a2), (a0)
0015b8: 202f001a     move.l     $1a(a7), d0
0015bc: 610010d8     bsr.w      $2696
0015c0: 202f004a     move.l     $4a(a7), d0
0015c4: d0af0052     add.l      $52(a7), d0
0015c8: 4fef001e     lea.l      $1e(a7), a7
0015cc: 60000004     bra.w      $15d2
0015d0: 4e71         nop        
0015d2: 4ced1d30ffe8 movem.l    -$18(a5), d4-d5/a0/a2-a4
0015d8: 4e5d         unlk       a5
0015da: 4e75         rts        
0015dc: 4e550000     link.w     a5, #$0
0015e0: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
0015e4: 2440         movea.l    d0, a2
0015e6: 2641         movea.l    d1, a3
0015e8: 60000046     bra.w      $1630
0015ec: 302b00f0     move.w     $f0(a3), d0
0015f0: 48c0         ext.l      d0
0015f2: 6000007a     bra.w      $166e
0015f6: 60000076     bra.w      $166e
0015fa: 302b00f4     move.w     $f4(a3), d0
0015fe: 48c0         ext.l      d0
001600: 6000006c     bra.w      $166e
001604: 60000068     bra.w      $166e
001608: 41fa09f0     lea.l      $1ffa(pc), a0
00160c: 2008         move.l     a0, d0
00160e: 6000005e     bra.w      $166e
001612: 6000005a     bra.w      $166e
001616: 202b010c     move.l     $10c(a3), d0
00161a: 60000052     bra.w      $166e
00161e: 6000004e     bra.w      $166e
001622: 203cffffff30 move.l     #$ffffff30, d0
001628: 60000044     bra.w      $166e
00162c: 60000040     bra.w      $166e
001630: 203c0000ffff move.l     #$ffff, d0
001636: c0af0024     and.l      $24(a7), d0
00163a: 0c800000ff31 cmpi.l     #$ff31, d0
001640: 6700ffc6     beq.w      $1608
001644: 6200001a     bhi.w      $1660
001648: 0c40ff24     cmpi.w     #$ff24, d0
00164c: 6700ffac     beq.w      $15fa
001650: 6200ffd0     bhi.w      $1622
001654: 0c40ff04     cmpi.w     #$ff04, d0
001658: 6700ff92     beq.w      $15ec
00165c: 6000ffc4     bra.w      $1622
001660: 0c800000ff44 cmpi.l     #$ff44, d0
001666: 6700ffae     beq.w      $1616
00166a: 6000ffb6     bra.w      $1622
00166e: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
001674: 4e5d         unlk       a5
001676: 4e75         rts        
001678: 4e550000     link.w     a5, #$0
00167c: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
001680: 2440         movea.l    d0, a2
001682: 2641         movea.l    d1, a3
001684: 4feffff6     lea.l      -$a(a7), a7
001688: 60000174     bra.w      $17fe
00168c: 206f002e     movea.l    $2e(a7), a0
001690: 20280020     move.l     $20(a0), d0
001694: 61001028     bsr.w      $26be
001698: 4fef000a     lea.l      $a(a7), a7
00169c: 600001e4     bra.w      $1882
0016a0: 600001dc     bra.w      $187e
0016a4: 206f002e     movea.l    $2e(a7), a0
0016a8: 22280020     move.l     $20(a0), d1
0016ac: 206f002e     movea.l    $2e(a7), a0
0016b0: 20280008     move.l     $8(a0), d0
0016b4: 6100109c     bsr.w      $2752
0016b8: 4fef000a     lea.l      $a(a7), a7
0016bc: 600001c4     bra.w      $1882
0016c0: 600001bc     bra.w      $187e
0016c4: 222f002a     move.l     $2a(a7), d1
0016c8: 200b         move.l     a3, d0
0016ca: 610001c0     bsr.w      $188c
0016ce: 4fef000a     lea.l      $a(a7), a7
0016d2: 600001ae     bra.w      $1882
0016d6: 600001a6     bra.w      $187e
0016da: 306b0036     movea.w    $36(a3), a0
0016de: 2008         move.l     a0, d0
0016e0: 61000f2c     bsr.w      $260e
0016e4: 2f400002     move.l     d0, $2(a7)
0016e8: 022b007f00fe andi.b     #$7f, $fe(a3)
0016ee: 206b00f8     movea.l    $f8(a3), a0
0016f2: 10ab00fe     move.b     $fe(a3), (a0)
0016f6: 202f0002     move.l     $2(a7), d0
0016fa: 61000f9a     bsr.w      $2696
0016fe: 7000         moveq      #$0, d0
001700: 102b00fe     move.b     $fe(a3), d0
001704: 4fef000a     lea.l      $a(a7), a7
001708: 60000178     bra.w      $1882
00170c: 60000170     bra.w      $187e
001710: 306b0036     movea.w    $36(a3), a0
001714: 2008         move.l     a0, d0
001716: 61000ef6     bsr.w      $260e
00171a: 2f400002     move.l     d0, $2(a7)
00171e: 08eb000700fe bset.b     #$7, $fe(a3)
001724: 206b00f8     movea.l    $f8(a3), a0
001728: 10ab00fe     move.b     $fe(a3), (a0)
00172c: 202f0002     move.l     $2(a7), d0
001730: 61000f64     bsr.w      $2696
001734: 7000         moveq      #$0, d0
001736: 102b00fe     move.b     $fe(a3), d0
00173a: 4fef000a     lea.l      $a(a7), a7
00173e: 60000142     bra.w      $1882
001742: 6000013a     bra.w      $187e
001746: 206b00f8     movea.l    $f8(a3), a0
00174a: 4210         clr.b      (a0)
00174c: 7000         moveq      #$0, d0
00174e: 4fef000a     lea.l      $a(a7), a7
001752: 6000012e     bra.w      $1882
001756: 60000126     bra.w      $187e
00175a: 206b00f8     movea.l    $f8(a3), a0
00175e: 10ab00fe     move.b     $fe(a3), (a0)
001762: 7000         moveq      #$0, d0
001764: 102b00fe     move.b     $fe(a3), d0
001768: 4fef000a     lea.l      $a(a7), a7
00176c: 60000114     bra.w      $1882
001770: 6000010c     bra.w      $187e
001774: 202b0030     move.l     $30(a3), d0
001778: 222b0108     move.l     $108(a3), d1
00177c: 61001d44     bsr.w      $34c2
001780: 2800         move.l     d0, d4
001782: 206f002e     movea.l    $2e(a7), a0
001786: 20280020     move.l     $20(a0), d0
00178a: 222b0108     move.l     $108(a3), d1
00178e: 61001cc0     bsr.w      $3450
001792: 27400030     move.l     d0, $30(a3)
001796: 2004         move.l     d4, d0
001798: 4fef000a     lea.l      $a(a7), a7
00179c: 600000e4     bra.w      $1882
0017a0: 600000dc     bra.w      $187e
0017a4: 206b00f8     movea.l    $f8(a3), a0
0017a8: 1f6800010001 move.b     $1(a0), $1(a7)
0017ae: 082f00050001 btst.b     #$5, $1(a7)
0017b4: 66000010     bne.w      $17c6
0017b8: 7002         moveq      #$2, d0
0017ba: 4fef000a     lea.l      $a(a7), a7
0017be: 600000c2     bra.w      $1882
0017c2: 60000024     bra.w      $17e8
0017c6: 082f00040001 btst.b     #$4, $1(a7)
0017cc: 66000010     bne.w      $17de
0017d0: 7001         moveq      #$1, d0
0017d2: 4fef000a     lea.l      $a(a7), a7
0017d6: 600000aa     bra.w      $1882
0017da: 6000000c     bra.w      $17e8
0017de: 7000         moveq      #$0, d0
0017e0: 4fef000a     lea.l      $a(a7), a7
0017e4: 6000009c     bra.w      $1882
0017e8: 60000094     bra.w      $187e
0017ec: 203cffffff30 move.l     #$ffffff30, d0
0017f2: 4fef000a     lea.l      $a(a7), a7
0017f6: 6000008a     bra.w      $1882
0017fa: 60000082     bra.w      $187e
0017fe: 203c0000ffff move.l     #$ffff, d0
001804: c0af0032     and.l      $32(a7), d0
001808: 0c800000ff11 cmpi.l     #$ff11, d0
00180e: 6700feca     beq.w      $16da
001812: 62000032     bhi.w      $1846
001816: 0c40ff0a     cmpi.w     #$ff0a, d0
00181a: 6700fe70     beq.w      $168c
00181e: 6200001a     bhi.w      $183a
001822: 0c40ff03     cmpi.w     #$ff03, d0
001826: 6700ff4c     beq.w      $1774
00182a: 6200ffc0     bhi.w      $17ec
00182e: 0c400400     cmpi.w     #$400, d0
001832: 6700fe90     beq.w      $16c4
001836: 6000ffb4     bra.w      $17ec
00183a: 0c40ff0b     cmpi.w     #$ff0b, d0
00183e: 6700fe64     beq.w      $16a4
001842: 6000ffa8     bra.w      $17ec
001846: 0c800000ff14 cmpi.l     #$ff14, d0
00184c: 6700ff0c     beq.w      $175a
001850: 6200001e     bhi.w      $1870
001854: 0c800000ff13 cmpi.l     #$ff13, d0
00185a: 6700feea     beq.w      $1746
00185e: 6200ff8c     bhi.w      $17ec
001862: 0c800000ff12 cmpi.l     #$ff12, d0
001868: 6700fea6     beq.w      $1710
00186c: 6000ff7e     bra.w      $17ec
001870: 0c800000ff4b cmpi.l     #$ff4b, d0
001876: 6700ff2c     beq.w      $17a4
00187a: 6000ff70     bra.w      $17ec
00187e: 4fef000a     lea.l      $a(a7), a7
001882: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
001888: 4e5d         unlk       a5
00188a: 4e75         rts        
00188c: 4e550000     link.w     a5, #$0
001890: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
001894: 2440         movea.l    d0, a2
001896: 357cffff00d2 move.w     #$ffff, $d2(a2)
00189c: 7800         moveq      #$0, d4
00189e: 60000014     bra.w      $18b4
0018a2: 42a7         clr.l      -(a7)
0018a4: 2f04         move.l     d4, -(a7)
0018a6: 222f000c     move.l     $c(a7), d1
0018aa: 200a         move.l     a2, d0
0018ac: 61000020     bsr.w      $18ce
0018b0: 508f         addq.l     #$8, a7
0018b2: 5284         addq.l     #$1, d4
0018b4: 7002         moveq      #$2, d0
0018b6: b084         cmp.l      d4, d0
0018b8: 6e00ffe8     bgt.w      $18a2
0018bc: 7000         moveq      #$0, d0
0018be: 60000004     bra.w      $18c4
0018c2: 4e71         nop        
0018c4: 4ced0410fff8 movem.l    -$8(a5), d4/a2
0018ca: 4e5d         unlk       a5
0018cc: 4e75         rts        
0018ce: 4e550000     link.w     a5, #$0
0018d2: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0018d6: 2440         movea.l    d0, a2
0018d8: 4fefffe8     lea.l      -$18(a7), a7
0018dc: 202f0030     move.l     $30(a7), d0
0018e0: e388         lsl.l      #$1, d0
0018e2: 41f20800     lea.l      (a2, d0.l), a0
0018e6: 4a6800d4     tst.w      $d4(a0)
0018ea: 670001c8     beq.w      $1ab4
0018ee: 4aaf0034     tst.l      $34(a7)
0018f2: 67000002     beq.w      $18f6
0018f6: 306a0036     movea.w    $36(a2), a0
0018fa: 2008         move.l     a0, d0
0018fc: 61000d10     bsr.w      $260e
001900: 2f400006     move.l     d0, $6(a7)
001904: 022a00fe00fe andi.b     #$fe, $fe(a2)
00190a: 206a00f8     movea.l    $f8(a2), a0
00190e: 10aa00fe     move.b     $fe(a2), (a0)
001912: 206a00f8     movea.l    $f8(a2), a0
001916: 117c00010001 move.b     #$1, $1(a0)
00191c: 202f0030     move.l     $30(a7), d0
001920: e388         lsl.l      #$1, d0
001922: 41f20800     lea.l      (a2, d0.l), a0
001926: 426800da     clr.w      $da(a0)
00192a: 202f0006     move.l     $6(a7), d0
00192e: 61000d66     bsr.w      $2696
001932: 306a0036     movea.w    $36(a2), a0
001936: 2008         move.l     a0, d0
001938: 61000cd4     bsr.w      $260e
00193c: 2f400006     move.l     d0, $6(a7)
001940: 48780002     pea.l      $2.w
001944: 486f001a     pea.l      $1a(a7)
001948: 48780002     pea.l      $2.w
00194c: 222f003c     move.l     $3c(a7), d1
001950: 200a         move.l     a2, d0
001952: 610002d2     bsr.w      $1c26
001956: 4fef000c     lea.l      $c(a7), a7
00195a: 202f0006     move.l     $6(a7), d0
00195e: 61000d36     bsr.w      $2696
001962: 0c6f01000016 cmpi.w     #$100, $16(a7)
001968: 63000020     bls.w      $198a
00196c: 302f0016     move.w     $16(a7), d0
001970: e048         lsr.w      #$8, d0
001972: 3f400016     move.w     d0, $16(a7)
001976: 7000         moveq      #$0, d0
001978: 302f0016     move.w     $16(a7), d0
00197c: 223c00000100 move.l     #$100, d1
001982: 9280         sub.l      d0, d1
001984: 2e81         move.l     d1, (a7)
001986: 60000012     bra.w      $199a
00198a: 7000         moveq      #$0, d0
00198c: 302f0016     move.w     $16(a7), d0
001990: 223c00000200 move.l     #$200, d1
001996: 9280         sub.l      d0, d1
001998: 2e81         move.l     d1, (a7)
00199a: 306a0036     movea.w    $36(a2), a0
00199e: 2008         move.l     a0, d0
0019a0: 61000c6c     bsr.w      $260e
0019a4: 2f400006     move.l     d0, $6(a7)
0019a8: 48780008     pea.l      $8.w
0019ac: 486f0012     pea.l      $12(a7)
0019b0: 7000         moveq      #$0, d0
0019b2: 302f001e     move.w     $1e(a7), d0
0019b6: 2f00         move.l     d0, -(a7)
0019b8: 222f003c     move.l     $3c(a7), d1
0019bc: 200a         move.l     a2, d0
0019be: 61000266     bsr.w      $1c26
0019c2: 4fef000c     lea.l      $c(a7), a7
0019c6: 202f0006     move.l     $6(a7), d0
0019ca: 61000cca     bsr.w      $2696
0019ce: 60000062     bra.w      $1a32
0019d2: 302f000e     move.w     $e(a7), d0
0019d6: 02400fff     andi.w     #$fff, d0
0019da: 7200         moveq      #$0, d1
0019dc: 3200         move.w     d0, d1
0019de: 206a0038     movea.l    $38(a2), a0
0019e2: 20280002     move.l     $2(a0), d0
0019e6: 61000b76     bsr.w      $255e
0019ea: 2f40000a     move.l     d0, $a(a7)
0019ee: 306a0036     movea.w    $36(a2), a0
0019f2: 2008         move.l     a0, d0
0019f4: 61000c18     bsr.w      $260e
0019f8: 2f400006     move.l     d0, $6(a7)
0019fc: 206f000a     movea.l    $a(a7), a0
001a00: 4a50         tst.w      (a0)
001a02: 6f000010     ble.w      $1a14
001a06: 7201         moveq      #$1, d1
001a08: 206f000a     movea.l    $a(a7), a0
001a0c: 3050         movea.w    (a0), a0
001a0e: 2008         move.l     a0, d0
001a10: 61000e2e     bsr.w      $2840
001a14: 206f000a     movea.l    $a(a7), a0
001a18: 30bcfffe     move.w     #$fffe, (a0)
001a1c: 202f0006     move.l     $6(a7), d0
001a20: 61000c74     bsr.w      $2696
001a24: 08ea00000035 bset.b     #$0, $35(a2)
001a2a: 6000001a     bra.w      $1a46
001a2e: 60000016     bra.w      $1a46
001a32: 102f000e     move.b     $e(a7), d0
001a36: ec08         lsr.b      #$6, d0
001a38: 7200         moveq      #$0, d1
001a3a: 1200         move.b     d0, d1
001a3c: 4a81         tst.l      d1
001a3e: 6700ff92     beq.w      $19d2
001a42: 6000ffea     bra.w      $1a2e
001a46: 202f0030     move.l     $30(a7), d0
001a4a: e388         lsl.l      #$1, d0
001a4c: 41f20800     lea.l      (a2, d0.l), a0
001a50: 426800d4     clr.w      $d4(a0)
001a54: 202f0030     move.l     $30(a7), d0
001a58: 41f20800     lea.l      (a2, d0.l), a0
001a5c: 422800ec     clr.b      $ec(a0)
001a60: 202f0030     move.l     $30(a7), d0
001a64: e388         lsl.l      #$1, d0
001a66: 41f20800     lea.l      (a2, d0.l), a0
001a6a: 426800e6     clr.w      $e6(a0)
001a6e: 306a0036     movea.w    $36(a2), a0
001a72: 2008         move.l     a0, d0
001a74: 61000b98     bsr.w      $260e
001a78: 2f400006     move.l     d0, $6(a7)
001a7c: 4a6a00f2     tst.w      $f2(a2)
001a80: 67000026     beq.w      $1aa8
001a84: 206f001c     movea.l    $1c(a7), a0
001a88: 7000         moveq      #$0, d0
001a8a: 3010         move.w     (a0), d0
001a8c: 322a00f2     move.w     $f2(a2), d1
001a90: 48c1         ext.l      d1
001a92: b081         cmp.l      d1, d0
001a94: 67000012     beq.w      $1aa8
001a98: 7201         moveq      #$1, d1
001a9a: 306a00f2     movea.w    $f2(a2), a0
001a9e: 2008         move.l     a0, d0
001aa0: 61000d9e     bsr.w      $2840
001aa4: 426a00f2     clr.w      $f2(a2)
001aa8: 202f0006     move.l     $6(a7), d0
001aac: 61000be8     bsr.w      $2696
001ab0: 6000000c     bra.w      $1abe
001ab4: 70ff         moveq      #$ff, d0
001ab6: 4fef0018     lea.l      $18(a7), a7
001aba: 6000000e     bra.w      $1aca
001abe: 7000         moveq      #$0, d0
001ac0: 4fef0018     lea.l      $18(a7), a7
001ac4: 60000004     bra.w      $1aca
001ac8: 4e71         nop        
001aca: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001ad0: 4e5d         unlk       a5
001ad2: 4e75         rts        
001ad4: 4e550000     link.w     a5, #$0
001ad8: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001adc: 2441         movea.l    d1, a2
001ade: 4fefffe0     lea.l      -$20(a7), a7
001ae2: 7030         moveq      #$30, d0
001ae4: d0af0020     add.l      $20(a7), d0
001ae8: 2f400008     move.l     d0, $8(a7)
001aec: 206a00f8     movea.l    $f8(a2), a0
001af0: 117c00010001 move.b     #$1, $1(a0)
001af6: 206a00f8     movea.l    $f8(a2), a0
001afa: 117c00020001 move.b     #$2, $1(a0)
001b00: 206a00f8     movea.l    $f8(a2), a0
001b04: 4210         clr.b      (a0)
001b06: 206a00f8     movea.l    $f8(a2), a0
001b0a: 103c00df     move.b     #$df, d0
001b0e: c0280006     and.b      $6(a0), d0
001b12: 206a00f8     movea.l    $f8(a2), a0
001b16: 11400006     move.b     d0, $6(a0)
001b1a: 61001334     bsr.w      $2e50
001b1e: 2f00         move.l     d0, -(a7)
001b20: 2f2f0024     move.l     $24(a7), -(a7)
001b24: 222a002a     move.l     $2a(a2), d1
001b28: 200a         move.l     a2, d0
001b2a: 6100076a     bsr.w      $2296
001b2e: 508f         addq.l     #$8, a7
001b30: 206f0020     movea.l    $20(a7), a0
001b34: 2f280030     move.l     $30(a0), -(a7)
001b38: 4852         pea.l      (a2)
001b3a: 42a7         clr.l      -(a7)
001b3c: 206f0014     movea.l    $14(a7), a0
001b40: 10280006     move.b     $6(a0), d0
001b44: 4880         ext.w      d0
001b46: 48c0         ext.l      d0
001b48: 2200         move.l     d0, d1
001b4a: 206f0014     movea.l    $14(a7), a0
001b4e: 10280004     move.b     $4(a0), d0
001b52: 4880         ext.w      d0
001b54: 48c0         ext.l      d0
001b56: 61000d74     bsr.w      $28cc
001b5a: 4fef000c     lea.l      $c(a7), a7
001b5e: 7000         moveq      #$0, d0
001b60: 4fef0020     lea.l      $20(a7), a7
001b64: 60000004     bra.w      $1b6a
001b68: 4e71         nop        
001b6a: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
001b70: 4e5d         unlk       a5
001b72: 4e75         rts        
001b74: 4e550000     link.w     a5, #$0
001b78: 48e78080     movem.l    d0/a0, -(a7)
001b7c: 598f         subq.l     #$4, a7
001b7e: 206f0004     movea.l    $4(a7), a0
001b82: 30680036     movea.w    $36(a0), a0
001b86: 2008         move.l     a0, d0
001b88: 61000a84     bsr.w      $260e
001b8c: 2e80         move.l     d0, (a7)
001b8e: 2017         move.l     (a7), d0
001b90: 61000b04     bsr.w      $2696
001b94: 588f         addq.l     #$4, a7
001b96: 4ced0100fffc movem.l    -$4(a5), a0
001b9c: 4e5d         unlk       a5
001b9e: 4e75         rts        
001ba0: 4e550000     link.w     a5, #$0
001ba4: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001ba8: 246f0020     movea.l    $20(a7), a2
001bac: 282f0024     move.l     $24(a7), d4
001bb0: 5d8f         subq.l     #$6, a7
001bb2: 302f000c     move.w     $c(a7), d0
001bb6: 7209         moveq      #$9, d1
001bb8: e368         lsl.w      d1, d0
001bba: d06f0024     add.w      $24(a7), d0
001bbe: 3f400004     move.w     d0, $4(a7)
001bc2: 206f0006     movea.l    $6(a7), a0
001bc6: 30680036     movea.w    $36(a0), a0
001bca: 2008         move.l     a0, d0
001bcc: 61000a40     bsr.w      $260e
001bd0: 2e80         move.l     d0, (a7)
001bd2: 302f0004     move.w     $4(a7), d0
001bd6: e048         lsr.w      #$8, d0
001bd8: 08c00006     bset.b     #$6, d0
001bdc: 206f0006     movea.l    $6(a7), a0
001be0: 206800f8     movea.l    $f8(a0), a0
001be4: 11400002     move.b     d0, $2(a0)
001be8: 103c00ff     move.b     #$ff, d0
001bec: c02f0005     and.b      $5(a7), d0
001bf0: 206f0006     movea.l    $6(a7), a0
001bf4: 206800f8     movea.l    $f8(a0), a0
001bf8: 11400003     move.b     d0, $3(a0)
001bfc: 5244         addq.w     #$1, d4
001bfe: 6000000e     bra.w      $1c0e
001c02: 206f0006     movea.l    $6(a7), a0
001c06: 206800f8     movea.l    $f8(a0), a0
001c0a: 115a0004     move.b     (a2)+, $4(a0)
001c0e: 5344         subq.w     #$1, d4
001c10: 6600fff0     bne.w      $1c02
001c14: 2017         move.l     (a7), d0
001c16: 61000a7e     bsr.w      $2696
001c1a: 5c8f         addq.l     #$6, a7
001c1c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
001c22: 4e5d         unlk       a5
001c24: 4e75         rts        
001c26: 4e550000     link.w     a5, #$0
001c2a: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
001c2e: 246f0020     movea.l    $20(a7), a2
001c32: 282f0024     move.l     $24(a7), d4
001c36: 558f         subq.l     #$2, a7
001c38: 302f0008     move.w     $8(a7), d0
001c3c: 7209         moveq      #$9, d1
001c3e: e368         lsl.w      d1, d0
001c40: d06f0020     add.w      $20(a7), d0
001c44: 3e80         move.w     d0, (a7)
001c46: 3017         move.w     (a7), d0
001c48: e048         lsr.w      #$8, d0
001c4a: 08c00006     bset.b     #$6, d0
001c4e: 08c00007     bset.b     #$7, d0
001c52: 206f0002     movea.l    $2(a7), a0
001c56: 206800f8     movea.l    $f8(a0), a0
001c5a: 11400002     move.b     d0, $2(a0)
001c5e: 103c00ff     move.b     #$ff, d0
001c62: c02f0001     and.b      $1(a7), d0
001c66: 206f0002     movea.l    $2(a7), a0
001c6a: 206800f8     movea.l    $f8(a0), a0
001c6e: 11400003     move.b     d0, $3(a0)
001c72: 5244         addq.w     #$1, d4
001c74: 6000000e     bra.w      $1c84
001c78: 206f0002     movea.l    $2(a7), a0
001c7c: 206800f8     movea.l    $f8(a0), a0
001c80: 14e80004     move.b     $4(a0), (a2)+
001c84: 5344         subq.w     #$1, d4
001c86: 6600fff0     bne.w      $1c78
001c8a: 548f         addq.l     #$2, a7
001c8c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
001c92: 4e5d         unlk       a5
001c94: 4e75         rts        
001c96: 4e550000     link.w     a5, #$0
001c9a: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
001c9e: 4feffff4     lea.l      -$c(a7), a7
001ca2: 60000046     bra.w      $1cea
001ca6: 206f0010     movea.l    $10(a7), a0
001caa: 306800f0     movea.w    $f0(a0), a0
001cae: 2008         move.l     a0, d0
001cb0: 61000c0e     bsr.w      $28c0
001cb4: 721f         moveq      #$1f, d1
001cb6: 202f000c     move.l     $c(a7), d0
001cba: 610013f0     bsr.w      $30ac
001cbe: 4a80         tst.l      d0
001cc0: 66000010     bne.w      $1cd2
001cc4: 206f000c     movea.l    $c(a7), a0
001cc8: 08280000001d btst.b     #$0, $1d(a0)
001cce: 6700001a     beq.w      $1cea
001cd2: 206f0010     movea.l    $10(a7), a0
001cd6: 08e800020035 bset.b     #$2, $35(a0)
001cdc: 203cffffff1c move.l     #$ffffff1c, d0
001ce2: 4fef000c     lea.l      $c(a7), a7
001ce6: 60000100     bra.w      $1de8
001cea: 206f0010     movea.l    $10(a7), a0
001cee: 4a6800f0     tst.w      $f0(a0)
001cf2: 6700001a     beq.w      $1d0e
001cf6: 206f000c     movea.l    $c(a7), a0
001cfa: 7000         moveq      #$0, d0
001cfc: 3010         move.w     (a0), d0
001cfe: 206f0010     movea.l    $10(a7), a0
001d02: 322800f0     move.w     $f0(a0), d1
001d06: 48c1         ext.l      d1
001d08: b081         cmp.l      d1, d0
001d0a: 6600ff9a     bne.w      $1ca6
001d0e: 206f000c     movea.l    $c(a7), a0
001d12: 226f0010     movea.l    $10(a7), a1
001d16: 335000f0     move.w     (a0), $f0(a1)
001d1a: 206f0010     movea.l    $10(a7), a0
001d1e: 30680036     movea.w    $36(a0), a0
001d22: 2008         move.l     a0, d0
001d24: 610008e8     bsr.w      $260e
001d28: 2e80         move.l     d0, (a7)
001d2a: 42af0004     clr.l      $4(a7)
001d2e: 60000040     bra.w      $1d70
001d32: 202f0004     move.l     $4(a7), d0
001d36: e388         lsl.l      #$1, d0
001d38: 206f0010     movea.l    $10(a7), a0
001d3c: d1c0         adda.l     d0, a0
001d3e: 4a6800d4     tst.w      $d4(a0)
001d42: 66000028     bne.w      $1d6c
001d46: 202f0004     move.l     $4(a7), d0
001d4a: e388         lsl.l      #$1, d0
001d4c: 206f0010     movea.l    $10(a7), a0
001d50: d1c0         adda.l     d0, a0
001d52: 226f000c     movea.l    $c(a7), a1
001d56: 315100d4     move.w     (a1), $d4(a0)
001d5a: 2017         move.l     (a7), d0
001d5c: 61000938     bsr.w      $2696
001d60: 202f0004     move.l     $4(a7), d0
001d64: 4fef000c     lea.l      $c(a7), a7
001d68: 6000007e     bra.w      $1de8
001d6c: 52af0004     addq.l     #$1, $4(a7)
001d70: 7002         moveq      #$2, d0
001d72: b0af0004     cmp.l      $4(a7), d0
001d76: 6e00ffba     bgt.w      $1d32
001d7a: 206f000c     movea.l    $c(a7), a0
001d7e: 226f0010     movea.l    $10(a7), a1
001d82: 335000f2     move.w     (a0), $f2(a1)
001d86: 2017         move.l     (a7), d0
001d88: 6100090c     bsr.w      $2696
001d8c: 206f0010     movea.l    $10(a7), a0
001d90: 30680036     movea.w    $36(a0), a0
001d94: 2f08         move.l     a0, -(a7)
001d96: 206f0014     movea.l    $14(a7), a0
001d9a: 2f280030     move.l     $30(a0), -(a7)
001d9e: 203c000000f2 move.l     #$f2, d0
001da4: d0af0018     add.l      $18(a7), d0
001da8: 2200         move.l     d0, d1
001daa: 202f0014     move.l     $14(a7), d0
001dae: 61000042     bsr.w      $1df2
001db2: 508f         addq.l     #$8, a7
001db4: 2f400008     move.l     d0, $8(a7)
001db8: 6c00001e     bge.w      $1dd8
001dbc: 0caffffffeef0008 cmpi.l     #$fffffeef, $8(a7)
001dc4: 66000006     bne.w      $1dcc
001dc8: 6000000e     bra.w      $1dd8
001dcc: 202f0008     move.l     $8(a7), d0
001dd0: 4fef000c     lea.l      $c(a7), a7
001dd4: 60000012     bra.w      $1de8
001dd8: 6000ff40     bra.w      $1d1a
001ddc: 70ff         moveq      #$ff, d0
001dde: 4fef000c     lea.l      $c(a7), a7
001de2: 60000004     bra.w      $1de8
001de6: 4e71         nop        
001de8: 4ced0300fff8 movem.l    -$8(a5), a0-a1
001dee: 4e5d         unlk       a5
001df0: 4e75         rts        
001df2: 4e550000     link.w     a5, #$0
001df6: 48e7c080     movem.l    d0-d1/a0, -(a7)
001dfa: 4feffff0     lea.l      -$10(a7), a7
001dfe: 2eaf0024     move.l     $24(a7), (a7)
001e02: 202f0024     move.l     $24(a7), d0
001e06: 61000a52     bsr.w      $285a
001e0a: 2f40000c     move.l     d0, $c(a7)
001e0e: 202f0028     move.l     $28(a7), d0
001e12: 610007fa     bsr.w      $260e
001e16: 2f400008     move.l     d0, $8(a7)
001e1a: 721f         moveq      #$1f, d1
001e1c: 202f0010     move.l     $10(a7), d0
001e20: 6100128a     bsr.w      $30ac
001e24: 4a80         tst.l      d0
001e26: 67000018     beq.w      $1e40
001e2a: 202f0008     move.l     $8(a7), d0
001e2e: 61000866     bsr.w      $2696
001e32: 203cffffff1c move.l     #$ffffff1c, d0
001e38: 4fef0010     lea.l      $10(a7), a7
001e3c: 600000a4     bra.w      $1ee2
001e40: 206f0010     movea.l    $10(a7), a0
001e44: 08280000001d btst.b     #$0, $1d(a0)
001e4a: 67000018     beq.w      $1e64
001e4e: 202f0008     move.l     $8(a7), d0
001e52: 61000842     bsr.w      $2696
001e56: 203cffffff1c move.l     #$ffffff1c, d0
001e5c: 4fef0010     lea.l      $10(a7), a7
001e60: 60000080     bra.w      $1ee2
001e64: 206f0014     movea.l    $14(a7), a0
001e68: 4a50         tst.w      (a0)
001e6a: 66000014     bne.w      $1e80
001e6e: 202f0008     move.l     $8(a7), d0
001e72: 61000822     bsr.w      $2696
001e76: 7000         moveq      #$0, d0
001e78: 4fef0010     lea.l      $10(a7), a7
001e7c: 60000064     bra.w      $1ee2
001e80: 206f0014     movea.l    $14(a7), a0
001e84: 0c50fffe     cmpi.w     #$fffe, (a0)
001e88: 66000018     bne.w      $1ea2
001e8c: 202f0008     move.l     $8(a7), d0
001e90: 61000804     bsr.w      $2696
001e94: 203cffffff1c move.l     #$ffffff1c, d0
001e9a: 4fef0010     lea.l      $10(a7), a7
001e9e: 60000042     bra.w      $1ee2
001ea2: 4aaf000c     tst.l      $c(a7)
001ea6: 6e000024     bgt.w      $1ecc
001eaa: 4a97         tst.l      (a7)
001eac: 6700001e     beq.w      $1ecc
001eb0: 206f0014     movea.l    $14(a7), a0
001eb4: 4250         clr.w      (a0)
001eb6: 202f0008     move.l     $8(a7), d0
001eba: 610007da     bsr.w      $2696
001ebe: 203cfffffeef move.l     #$fffffeef, d0
001ec4: 4fef0010     lea.l      $10(a7), a7
001ec8: 60000018     bra.w      $1ee2
001ecc: 2f6f000c0024 move.l     $c(a7), $24(a7)
001ed2: 202f0008     move.l     $8(a7), d0
001ed6: 610007be     bsr.w      $2696
001eda: 6000ff26     bra.w      $1e02
001ede: 4fef0010     lea.l      $10(a7), a7
001ee2: 4ced0100fffc movem.l    -$4(a5), a0
001ee8: 4e5d         unlk       a5
001eea: 4e75         rts        
001eec: 4e550000     link.w     a5, #$0
001ef0: 48e7c080     movem.l    d0-d1/a0, -(a7)
001ef4: 2057         movea.l    (a7), a0
001ef6: 7000         moveq      #$0, d0
001ef8: 3010         move.w     (a0), d0
001efa: 206f0004     movea.l    $4(a7), a0
001efe: 322800f0     move.w     $f0(a0), d1
001f02: 48c1         ext.l      d1
001f04: b081         cmp.l      d1, d0
001f06: 6600000a     bne.w      $1f12
001f0a: 206f0004     movea.l    $4(a7), a0
001f0e: 426800f0     clr.w      $f0(a0)
001f12: 7000         moveq      #$0, d0
001f14: 60000004     bra.w      $1f1a
001f18: 4e71         nop        
001f1a: 4ced0100fffc movem.l    -$4(a5), a0
001f20: 4e5d         unlk       a5
001f22: 4e75         rts        
001f24: 4e550000     link.w     a5, #$0
001f28: 48e788a0     movem.l    d0/d4/a0/a2, -(a7)
001f2c: 2440         movea.l    d0, a2
001f2e: 7800         moveq      #$0, d4
001f30: 60000010     bra.w      $1f42
001f34: 2004         move.l     d4, d0
001f36: e388         lsl.l      #$1, d0
001f38: 41f20800     lea.l      (a2, d0.l), a0
001f3c: 42680110     clr.w      $110(a0)
001f40: 5284         addq.l     #$1, d4
001f42: 7007         moveq      #$7, d0
001f44: b084         cmp.l      d4, d0
001f46: 6c00ffec     bge.w      $1f34
001f4a: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
001f50: 4e5d         unlk       a5
001f52: 4e75         rts        
001f54: 4e550000     link.w     a5, #$0
001f58: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
001f5c: 2440         movea.l    d0, a2
001f5e: 2801         move.l     d1, d4
001f60: 203c00000110 move.l     #$110, d0
001f66: d08a         add.l      a2, d0
001f68: 2640         movea.l    d0, a3
001f6a: 60000010     bra.w      $1f7c
001f6e: b853         cmp.w      (a3), d4
001f70: 66000008     bne.w      $1f7a
001f74: 7000         moveq      #$0, d0
001f76: 60000038     bra.w      $1fb0
001f7a: 548b         addq.l     #$2, a3
001f7c: 4a53         tst.w      (a3)
001f7e: 6600ffee     bne.w      $1f6e
001f82: 203c00000110 move.l     #$110, d0
001f88: d08a         add.l      a2, d0
001f8a: 220b         move.l     a3, d1
001f8c: 9280         sub.l      d0, d1
001f8e: 6c000004     bge.w      $1f94
001f92: 5281         addq.l     #$1, d1
001f94: e281         asr.l      #$1, d1
001f96: 7007         moveq      #$7, d0
001f98: b081         cmp.l      d1, d0
001f9a: 6600000c     bne.w      $1fa8
001f9e: 70ff         moveq      #$ff, d0
001fa0: 6000000e     bra.w      $1fb0
001fa4: 6000000a     bra.w      $1fb0
001fa8: 3684         move.w     d4, (a3)
001faa: 7000         moveq      #$0, d0
001fac: 60000002     bra.w      $1fb0
001fb0: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
001fb6: 4e5d         unlk       a5
001fb8: 4e75         rts        
001fba: 4e550000     link.w     a5, #$0
001fbe: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
001fc2: 2440         movea.l    d0, a2
001fc4: 2801         move.l     d1, d4
001fc6: 203c00000110 move.l     #$110, d0
001fcc: d08a         add.l      a2, d0
001fce: 2640         movea.l    d0, a3
001fd0: 60000010     bra.w      $1fe2
001fd4: b853         cmp.w      (a3), d4
001fd6: 66000008     bne.w      $1fe0
001fda: 7000         moveq      #$0, d0
001fdc: 60000012     bra.w      $1ff0
001fe0: 548b         addq.l     #$2, a3
001fe2: 4a53         tst.w      (a3)
001fe4: 6600ffee     bne.w      $1fd4
001fe8: 70ff         moveq      #$ff, d0
001fea: 60000004     bra.w      $1ff0
001fee: 4e71         nop        
001ff0: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
001ff6: 4e5d         unlk       a5
001ff8: 4e75         rts        
001ffa: 40282329     negx.b     $2329(a0)
001ffe: 6172         bsr.b      $2072
002000: 6363         bls.b      $2065
002002: 6172         bsr.b      $2076
002004: 6472         bcc.b      $2078
002006: 2e63         movea.l    -(a3), a7
002008: 09312e38     btst.l     d4, $38(a1, d2.l)
00200c: 20312f32342f39300000 move.l     ([$342f3930, a1, d2.l * 8]), d0
002016: 4e550000     link.w     a5, #$0
00201a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00201e: 4feffff0     lea.l      -$10(a7), a7
002022: 7204         moveq      #$4, d1
002024: 7048         moveq      #$48, d0
002026: 61001176     bsr.w      $319e
00202a: 2f40000c     move.l     d0, $c(a7)
00202e: 202f000c     move.l     $c(a7), d0
002032: 61000e40     bsr.w      $2e74
002036: 2f400008     move.l     d0, $8(a7)
00203a: 60000060     bra.w      $209c
00203e: 206f0008     movea.l    $8(a7), a0
002042: 2f500004     move.l     (a0), $4(a7)
002046: 206f0004     movea.l    $4(a7), a0
00204a: 20680004     movea.l    $4(a0), a0
00204e: 2ea80008     move.l     $8(a0), (a7)
002052: 4a97         tst.l      (a7)
002054: 67000036     beq.w      $208c
002058: 41fa0058     lea.l      $20b2(pc), a0
00205c: 2208         move.l     a0, d1
00205e: 2057         movea.l    (a7), a0
002060: 2028000c     move.l     $c(a0), d0
002064: d097         add.l      (a7), d0
002066: 6100124e     bsr.w      $32b6
00206a: 4a80         tst.l      d0
00206c: 6600001e     bne.w      $208c
002070: 206f0004     movea.l    $4(a7), a0
002074: 7000         moveq      #$0, d0
002076: 10280035     move.b     $35(a0), d0
00207a: b06f0012     cmp.w      $12(a7), d0
00207e: 6600000c     bne.w      $208c
002082: 206f0004     movea.l    $4(a7), a0
002086: 317c00010086 move.w     #$1, $86(a0)
00208c: 222f0008     move.l     $8(a7), d1
002090: 202f000c     move.l     $c(a7), d0
002094: 61000e56     bsr.w      $2eec
002098: 2f400008     move.l     d0, $8(a7)
00209c: 4aaf0008     tst.l      $8(a7)
0020a0: 6600ff9c     bne.w      $203e
0020a4: 4fef0010     lea.l      $10(a7), a7
0020a8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0020ae: 4e5d         unlk       a5
0020b0: 4e75         rts        
0020b2: 6330         bls.b      $20e4
0020b4: 00004e55     ori.b      #$55, d0
0020b8: 000048e7     ori.b      #$e7, d0
0020bc: c8b82440     and.l      $2440.w, d4
0020c0: 2641         movea.l    d1, a3
0020c2: 4fefffe0     lea.l      -$20(a7), a7
0020c6: 61000d9a     bsr.w      $2e62
0020ca: 2f400004     move.l     d0, $4(a7)
0020ce: 206f0004     movea.l    $4(a7), a0
0020d2: 0ca84afa4afa0004 cmpi.l     #$4afa4afa, $4(a0)
0020da: 67000080     beq.w      $215c
0020de: 206f0004     movea.l    $4(a7), a0
0020e2: 4aa80004     tst.l      $4(a0)
0020e6: 6608         bne.b      $20f0
0020e8: 206f0004     movea.l    $4(a7), a0
0020ec: 4a90         tst.l      (a0)
0020ee: 670a         beq.b      $20fa
0020f0: 203cfffffeed move.l     #$fffffeed, d0
0020f6: 60000190     bra.w      $2288
0020fa: 206f0004     movea.l    $4(a7), a0
0020fe: 217c4afa4afa0004 move.l     #$4afa4afa, $4(a0)
002106: 7062         moveq      #$62, d0
002108: 610005b4     bsr.w      $26be
00210c: 2e80         move.l     d0, (a7)
00210e: 206f0004     movea.l    $4(a7), a0
002112: 2080         move.l     d0, (a0)
002114: 2840         movea.l    d0, a4
002116: 42af001c     clr.l      $1c(a7)
00211a: 600c         bra.b      $2128
00211c: 202f001c     move.l     $1c(a7), d0
002120: 42340800     clr.b      (a4, d0.l)
002124: 52af001c     addq.l     #$1, $1c(a7)
002128: 7062         moveq      #$62, d0
00212a: b0af001c     cmp.l      $1c(a7), d0
00212e: 6eec         bgt.b      $211c
002130: 41ef001c     lea.l      $1c(a7), a0
002134: 2208         move.l     a0, d1
002136: 2017         move.l     (a7), d0
002138: 610001dc     bsr.w      $2316
00213c: 4a80         tst.l      d0
00213e: 660a         bne.b      $214a
002140: 202f001c     move.l     $1c(a7), d0
002144: 4480         neg.l      d0
002146: 60000140     bra.w      $2288
00214a: 610008a0     bsr.w      $29ec
00214e: 4a80         tst.l      d0
002150: 6c10         bge.b      $2162
002152: 203cffffff2a move.l     #$ffffff2a, d0
002158: 6000012e     bra.w      $2288
00215c: 61000cf2     bsr.w      $2e50
002160: 2e80         move.l     d0, (a7)
002162: 2057         movea.l    (a7), a0
002164: 5250         addq.w     #$1, (a0)
002166: 27570008     move.l     (a7), $8(a3)
00216a: 426b0004     clr.w      $4(a3)
00216e: 426b000c     clr.w      $c(a3)
002172: 08eb0007002c bset.b     #$7, $2c(a3)
002178: 42ab0038     clr.l      $38(a3)
00217c: 42af0018     clr.l      $18(a7)
002180: 206f0044     movea.l    $44(a7), a0
002184: 2028000c     move.l     $c(a0), d0
002188: d0af0044     add.l      $44(a7), d0
00218c: 2f400014     move.l     d0, $14(a7)
002190: 601c         bra.b      $21ae
002192: 222f0014     move.l     $14(a7), d1
002196: 202f0018     move.l     $18(a7), d0
00219a: e588         lsl.l      #$2, d0
00219c: 2057         movea.l    (a7), a0
00219e: 2030081a     move.l     $1a(a0, d0.l), d0
0021a2: 61001112     bsr.w      $32b6
0021a6: 4a80         tst.l      d0
0021a8: 6712         beq.b      $21bc
0021aa: 52af0018     addq.l     #$1, $18(a7)
0021ae: 2057         movea.l    (a7), a0
0021b0: 30280010     move.w     $10(a0), d0
0021b4: 48c0         ext.l      d0
0021b6: b0af0018     cmp.l      $18(a7), d0
0021ba: 6ed6         bgt.b      $2192
0021bc: 2057         movea.l    (a7), a0
0021be: 30280010     move.w     $10(a0), d0
0021c2: 48c0         ext.l      d0
0021c4: b0af0018     cmp.l      $18(a7), d0
0021c8: 6e06         bgt.b      $21d0
0021ca: 2057         movea.l    (a7), a0
0021cc: 52680010     addq.w     #$1, $10(a0)
0021d0: 202f0018     move.l     $18(a7), d0
0021d4: e588         lsl.l      #$2, d0
0021d6: 2057         movea.l    (a7), a0
0021d8: 21af0014081a move.l     $14(a7), $1a(a0, d0.l)
0021de: 202f0018     move.l     $18(a7), d0
0021e2: e588         lsl.l      #$2, d0
0021e4: 2057         movea.l    (a7), a0
0021e6: 21aa002a082a move.l     $2a(a2), $2a(a0, d0.l)
0021ec: 376f001a0040 move.w     $1a(a7), $40(a3)
0021f2: 7012         moveq      #$12, d0
0021f4: d08b         add.l      a3, d0
0021f6: 2840         movea.l    d0, a4
0021f8: 7001         moveq      #$1, d0
0021fa: 2f40001c     move.l     d0, $1c(a7)
0021fe: 6006         bra.b      $2206
002200: 421c         clr.b      (a4)+
002202: 52af001c     addq.l     #$1, $1c(a7)
002206: 701a         moveq      #$1a, d0
002208: b0af001c     cmp.l      $1c(a7), d0
00220c: 6ef2         bgt.b      $2200
00220e: 203c00000400 move.l     #$400, d0
002214: 610004a8     bsr.w      $26be
002218: 2740001e     move.l     d0, $1e(a3)
00221c: 286b001e     movea.l    $1e(a3), a4
002220: 42af001c     clr.l      $1c(a7)
002224: 600c         bra.b      $2232
002226: 202f001c     move.l     $1c(a7), d0
00222a: 42340800     clr.b      (a4, d0.l)
00222e: 52af001c     addq.l     #$1, $1c(a7)
002232: 0caf00000400001c cmpi.l     #$400, $1c(a7)
00223a: 6dea         blt.b      $2226
00223c: 41fa00c2     lea.l      $2300(pc), a0
002240: 2208         move.l     a0, d1
002242: 7000         moveq      #$0, d0
002244: 610004ca     bsr.w      $2710
002248: 2f400010     move.l     d0, $10(a7)
00224c: 670c         beq.b      $225a
00224e: 7030         moveq      #$30, d0
002250: d0af0010     add.l      $10(a7), d0
002254: 27400038     move.l     d0, $38(a3)
002258: 6004         bra.b      $225e
00225a: 42ab0038     clr.l      $38(a3)
00225e: 41fa00aa     lea.l      $230a(pc), a0
002262: 2208         move.l     a0, d1
002264: 7000         moveq      #$0, d0
002266: 610004a8     bsr.w      $2710
00226a: 2f40000c     move.l     d0, $c(a7)
00226e: 670c         beq.b      $227c
002270: 7030         moveq      #$30, d0
002272: d0af000c     add.l      $c(a7), d0
002276: 2740003c     move.l     d0, $3c(a3)
00227a: 6004         bra.b      $2280
00227c: 42ab003c     clr.l      $3c(a3)
002280: 2057         movea.l    (a7), a0
002282: 42a8003a     clr.l      $3a(a0)
002286: 7000         moveq      #$0, d0
002288: 4fef0020     lea.l      $20(a7), a7
00228c: 4ced1d10ffec movem.l    -$14(a5), d4/a0/a2-a4
002292: 4e5d         unlk       a5
002294: 4e75         rts        
002296: 4e550000     link.w     a5, #$0
00229a: 48e7c080     movem.l    d0-d1/a0, -(a7)
00229e: 598f         subq.l     #$4, a7
0022a0: 206f0008     movea.l    $8(a7), a0
0022a4: 4aa8001e     tst.l      $1e(a0)
0022a8: 6712         beq.b      $22bc
0022aa: 206f0008     movea.l    $8(a7), a0
0022ae: 2228001e     move.l     $1e(a0), d1
0022b2: 203c00000400 move.l     #$400, d0
0022b8: 61000498     bsr.w      $2752
0022bc: 206f0008     movea.l    $8(a7), a0
0022c0: 42a8001e     clr.l      $1e(a0)
0022c4: 206f001c     movea.l    $1c(a7), a0
0022c8: 5350         subq.w     #$1, (a0)
0022ca: 6626         bne.b      $22f2
0022cc: 6100075a     bsr.w      $2a28
0022d0: 202f001c     move.l     $1c(a7), d0
0022d4: 610002d2     bsr.w      $25a8
0022d8: 222f001c     move.l     $1c(a7), d1
0022dc: 7062         moveq      #$62, d0
0022de: 61000472     bsr.w      $2752
0022e2: 61000b7e     bsr.w      $2e62
0022e6: 2e80         move.l     d0, (a7)
0022e8: 2057         movea.l    (a7), a0
0022ea: 42a80004     clr.l      $4(a0)
0022ee: 2057         movea.l    (a7), a0
0022f0: 4290         clr.l      (a0)
0022f2: 7000         moveq      #$0, d0
0022f4: 588f         addq.l     #$4, a7
0022f6: 4ced0100fffc movem.l    -$4(a5), a0
0022fc: 4e5d         unlk       a5
0022fe: 4e75         rts        
002300: 6361         bls.b      $2363
002302: 725f         moveq      #$5f, d1
002304: 6e65         bgt.b      $236b
002306: 7464         moveq      #$64, d2
002308: 62006361     bhi.w      $866b
00230c: 725f         moveq      #$5f, d1
00230e: 6465         bcc.b      $2375
002310: 7669         moveq      #$69, d3
002312: 6365         bls.b      $2379
002314: 00004e55     ori.b      #$55, d0
002318: 000048e7     ori.b      #$e7, d0
00231c: c8b0518f203c0000 and.l      ([], d5.w, $203c0000), d4
002324: 06466100     addi.w     #$6100, d6
002328: 0396         bclr.b     d1, (a6)
00232a: 2440         movea.l    d0, a2
00232c: 4a80         tst.l      d0
00232e: 673e         beq.b      $236e
002330: 7800         moveq      #$0, d4
002332: 6006         bra.b      $233a
002334: 42324800     clr.b      (a2, d4.l)
002338: 5284         addq.l     #$1, d4
00233a: 0c8400000646 cmpi.l     #$646, d4
002340: 6df2         blt.b      $2334
002342: 42af0004     clr.l      $4(a7)
002346: 206f0008     movea.l    $8(a7), a0
00234a: 2ea80002     move.l     $2(a0), (a7)
00234e: 6606         bne.b      $2356
002350: 206f0008     movea.l    $8(a7), a0
002354: 6030         bra.b      $2386
002356: 52af0004     addq.l     #$1, $4(a7)
00235a: 6020         bra.b      $237c
00235c: 2057         movea.l    (a7), a0
00235e: 2ea80002     move.l     $2(a0), (a7)
002362: 52af0004     addq.l     #$1, $4(a7)
002366: 7003         moveq      #$3, d0
002368: b0af0004     cmp.l      $4(a7), d0
00236c: 6c0e         bge.b      $237c
00236e: 206f000c     movea.l    $c(a7), a0
002372: 20bc00000114 move.l     #$114, (a0)
002378: 7000         moveq      #$0, d0
00237a: 6048         bra.b      $23c4
00237c: 2057         movea.l    (a7), a0
00237e: 4aa80002     tst.l      $2(a0)
002382: 66d8         bne.b      $235c
002384: 2057         movea.l    (a7), a0
002386: 214a0002     move.l     a2, $2(a0)
00238a: 2e8a         move.l     a2, (a7)
00238c: 203c0000057e move.l     #$57e, d0
002392: d097         add.l      (a7), d0
002394: 2640         movea.l    d0, a3
002396: 202f0004     move.l     $4(a7), d0
00239a: 7264         moveq      #$64, d1
00239c: 610010b2     bsr.w      $3450
0023a0: 2800         move.l     d0, d4
0023a2: 6004         bra.b      $23a8
0023a4: 36c4         move.w     d4, (a3)+
0023a6: 5284         addq.l     #$1, d4
0023a8: 202f0004     move.l     $4(a7), d0
0023ac: 5280         addq.l     #$1, d0
0023ae: 7264         moveq      #$64, d1
0023b0: 6100109e     bsr.w      $3450
0023b4: b084         cmp.l      d4, d0
0023b6: 6eec         bgt.b      $23a4
0023b8: 2057         movea.l    (a7), a0
0023ba: 42a80002     clr.l      $2(a0)
0023be: 2057         movea.l    (a7), a0
0023c0: 4250         clr.w      (a0)
0023c2: 2017         move.l     (a7), d0
0023c4: 508f         addq.l     #$8, a7
0023c6: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
0023cc: 4e5d         unlk       a5
0023ce: 4e75         rts        
0023d0: 4e550000     link.w     a5, #$0
0023d4: 48e78080     movem.l    d0/a0, -(a7)
0023d8: 518f         subq.l     #$8, a7
0023da: 4297         clr.l      (a7)
0023dc: 42af0004     clr.l      $4(a7)
0023e0: 6028         bra.b      $240a
0023e2: 202f0008     move.l     $8(a7), d0
0023e6: 6148         bsr.b      $2430
0023e8: 2e80         move.l     d0, (a7)
0023ea: 6d32         blt.b      $241e
0023ec: 206f0008     movea.l    $8(a7), a0
0023f0: 2f6800020008 move.l     $2(a0), $8(a7)
0023f6: 52af0004     addq.l     #$1, $4(a7)
0023fa: 7003         moveq      #$3, d0
0023fc: b0af0004     cmp.l      $4(a7), d0
002400: 6c08         bge.b      $240a
002402: 203cfffffeec move.l     #$fffffeec, d0
002408: 601a         bra.b      $2424
00240a: 206f0008     movea.l    $8(a7), a0
00240e: 4aa80002     tst.l      $2(a0)
002412: 66ce         bne.b      $23e2
002414: 202f0008     move.l     $8(a7), d0
002418: 6116         bsr.b      $2430
00241a: 2e80         move.l     d0, (a7)
00241c: 6c04         bge.b      $2422
00241e: 2017         move.l     (a7), d0
002420: 6002         bra.b      $2424
002422: 7000         moveq      #$0, d0
002424: 508f         addq.l     #$8, a7
002426: 4ced0100fffc movem.l    -$4(a5), a0
00242c: 4e5d         unlk       a5
00242e: 4e75         rts        
002430: 4e550000     link.w     a5, #$0
002434: 48e78ea0     movem.l    d0/d4-d6/a0/a2, -(a7)
002438: 2440         movea.l    d0, a2
00243a: 3052         movea.w    (a2), a0
00243c: 2808         move.l     a0, d4
00243e: 6034         bra.b      $2474
002440: 2004         move.l     d4, d0
002442: e388         lsl.l      #$1, d0
002444: 41f20800     lea.l      (a2, d0.l), a0
002448: 3c28057e     move.w     $57e(a0), d6
00244c: 2004         move.l     d4, d0
00244e: 5280         addq.l     #$1, d0
002450: 2a00         move.l     d0, d5
002452: 6018         bra.b      $246c
002454: 2005         move.l     d5, d0
002456: e388         lsl.l      #$1, d0
002458: 41f20800     lea.l      (a2, d0.l), a0
00245c: bc68057e     cmp.w      $57e(a0), d6
002460: 6608         bne.b      $246a
002462: 203cfffffeeb move.l     #$fffffeeb, d0
002468: 6012         bra.b      $247c
00246a: 5285         addq.l     #$1, d5
00246c: 7064         moveq      #$64, d0
00246e: b085         cmp.l      d5, d0
002470: 6ee2         bgt.b      $2454
002472: 5284         addq.l     #$1, d4
002474: 7064         moveq      #$64, d0
002476: b084         cmp.l      d4, d0
002478: 6ec6         bgt.b      $2440
00247a: 7000         moveq      #$0, d0
00247c: 4ced0570ffec movem.l    -$14(a5), d4-d6/a0/a2
002482: 4e5d         unlk       a5
002484: 4e75         rts        
002486: 4e550000     link.w     a5, #$0
00248a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
00248e: 2440         movea.l    d0, a2
002490: 598f         subq.l     #$4, a7
002492: 6020         bra.b      $24b4
002494: 246a0002     movea.l    $2(a2), a2
002498: 200a         move.l     a2, d0
00249a: 6618         bne.b      $24b4
00249c: 41d7         lea.l      (a7), a0
00249e: 2208         move.l     a0, d1
0024a0: 610009ae     bsr.w      $2e50
0024a4: 6100fe70     bsr.w      $2316
0024a8: 2440         movea.l    d0, a2
0024aa: 4a80         tst.l      d0
0024ac: 660c         bne.b      $24ba
0024ae: 2017         move.l     (a7), d0
0024b0: 4480         neg.l      d0
0024b2: 6018         bra.b      $24cc
0024b4: 0c520064     cmpi.w     #$64, (a2)
0024b8: 67da         beq.b      $2494
0024ba: 3012         move.w     (a2), d0
0024bc: 5252         addq.w     #$1, (a2)
0024be: 48c0         ext.l      d0
0024c0: e388         lsl.l      #$1, d0
0024c2: 41f20800     lea.l      (a2, d0.l), a0
0024c6: 3028057e     move.w     $57e(a0), d0
0024ca: 48c0         ext.l      d0
0024cc: 588f         addq.l     #$4, a7
0024ce: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
0024d4: 4e5d         unlk       a5
0024d6: 4e75         rts        
0024d8: 4e550000     link.w     a5, #$0
0024dc: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
0024e0: 2440         movea.l    d0, a2
0024e2: 7064         moveq      #$64, d0
0024e4: b0af0004     cmp.l      $4(a7), d0
0024e8: 6e18         bgt.b      $2502
0024ea: 7800         moveq      #$0, d4
0024ec: 6006         bra.b      $24f4
0024ee: 246a0002     movea.l    $2(a2), a2
0024f2: 5284         addq.l     #$1, d4
0024f4: 202f0004     move.l     $4(a7), d0
0024f8: 7264         moveq      #$64, d1
0024fa: 61000f8c     bsr.w      $3488
0024fe: b084         cmp.l      d4, d0
002500: 6eec         bgt.b      $24ee
002502: 5352         subq.w     #$1, (a2)
002504: 3012         move.w     (a2), d0
002506: 48c0         ext.l      d0
002508: e388         lsl.l      #$1, d0
00250a: 41f20800     lea.l      (a2, d0.l), a0
00250e: 316f0006057e move.w     $6(a7), $57e(a0)
002514: 202f0004     move.l     $4(a7), d0
002518: 7264         moveq      #$64, d1
00251a: 61000f96     bsr.w      $34b2
00251e: 2a00         move.l     d0, d5
002520: 2005         move.l     d5, d0
002522: 720e         moveq      #$e, d1
002524: 61000f2a     bsr.w      $3450
002528: 42720806     clr.w      $6(a2, d0.l)
00252c: 2005         move.l     d5, d0
00252e: 720e         moveq      #$e, d1
002530: 61000f1e     bsr.w      $3450
002534: 42b20808     clr.l      $8(a2, d0.l)
002538: 2005         move.l     d5, d0
00253a: 720e         moveq      #$e, d1
00253c: 61000f12     bsr.w      $3450
002540: 42b2080c     clr.l      $c(a2, d0.l)
002544: 2005         move.l     d5, d0
002546: 720e         moveq      #$e, d1
002548: 61000f06     bsr.w      $3450
00254c: 42320810     clr.b      $10(a2, d0.l)
002550: 202f0004     move.l     $4(a7), d0
002554: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
00255a: 4e5d         unlk       a5
00255c: 4e75         rts        
00255e: 4e550000     link.w     a5, #$0
002562: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
002566: 7064         moveq      #$64, d0
002568: b0af0004     cmp.l      $4(a7), d0
00256c: 6e1a         bgt.b      $2588
00256e: 7800         moveq      #$0, d4
002570: 6008         bra.b      $257a
002572: 2057         movea.l    (a7), a0
002574: 2ea80002     move.l     $2(a0), (a7)
002578: 5284         addq.l     #$1, d4
00257a: 202f0004     move.l     $4(a7), d0
00257e: 7264         moveq      #$64, d1
002580: 61000f06     bsr.w      $3488
002584: b084         cmp.l      d4, d0
002586: 6eea         bgt.b      $2572
002588: 202f0004     move.l     $4(a7), d0
00258c: 7264         moveq      #$64, d1
00258e: 61000f22     bsr.w      $34b2
002592: 720e         moveq      #$e, d1
002594: 61000eba     bsr.w      $3450
002598: 2217         move.l     (a7), d1
00259a: 5c81         addq.l     #$6, d1
00259c: d081         add.l      d1, d0
00259e: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0025a4: 4e5d         unlk       a5
0025a6: 4e75         rts        
0025a8: 4e550000     link.w     a5, #$0
0025ac: 48e7c080     movem.l    d0-d1/a0, -(a7)
0025b0: 518f         subq.l     #$8, a7
0025b2: 206f0008     movea.l    $8(a7), a0
0025b6: 2f6800020004 move.l     $2(a0), $4(a7)
0025bc: 6622         bne.b      $25e0
0025be: 203cfffffeec move.l     #$fffffeec, d0
0025c4: 603c         bra.b      $2602
0025c6: 2eaf0004     move.l     $4(a7), (a7)
0025ca: 206f0004     movea.l    $4(a7), a0
0025ce: 2f6800020004 move.l     $2(a0), $4(a7)
0025d4: 2217         move.l     (a7), d1
0025d6: 203c00000646 move.l     #$646, d0
0025dc: 61000174     bsr.w      $2752
0025e0: 206f0004     movea.l    $4(a7), a0
0025e4: 4aa80002     tst.l      $2(a0)
0025e8: 66dc         bne.b      $25c6
0025ea: 222f0004     move.l     $4(a7), d1
0025ee: 203c00000646 move.l     #$646, d0
0025f4: 6100015c     bsr.w      $2752
0025f8: 206f0008     movea.l    $8(a7), a0
0025fc: 42a80002     clr.l      $2(a0)
002600: 7000         moveq      #$0, d0
002602: 508f         addq.l     #$8, a7
002604: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00260a: 4e5d         unlk       a5
00260c: 4e75         rts        
00260e: 40c1         move.w     sr, d1
002610: 48e74000     movem.l    d1, -(a7)
002614: 007c0700     ori.w      #$700, sr
002618: e148         lsl.w      #$8, d0
00261a: c27cf8ff     and.w      #$f8ff, d1
00261e: 8240         or.w       d0, d1
002620: 46c1         move.w     d1, sr
002622: 4cdf0002     movem.l    (a7)+, d1
002626: 2001         move.l     d1, d0
002628: 4e75         rts        
00262a: 4280         clr.l      d0
00262c: 40c0         move.w     sr, d0
00262e: 007c0700     ori.w      #$700, sr
002632: 027cf8ff     andi.w     #$f8ff, sr
002636: 4e75         rts        
002638: 4280         clr.l      d0
00263a: 40c0         move.w     sr, d0
00263c: 007c0700     ori.w      #$700, sr
002640: 027cf9ff     andi.w     #$f9ff, sr
002644: 4e75         rts        
002646: 4280         clr.l      d0
002648: 40c0         move.w     sr, d0
00264a: 007c0700     ori.w      #$700, sr
00264e: 027cfaff     andi.w     #$faff, sr
002652: 4e75         rts        
002654: 4280         clr.l      d0
002656: 40c0         move.w     sr, d0
002658: 007c0700     ori.w      #$700, sr
00265c: 027cfbff     andi.w     #$fbff, sr
002660: 4e75         rts        
002662: 4280         clr.l      d0
002664: 40c0         move.w     sr, d0
002666: 007c0700     ori.w      #$700, sr
00266a: 027cfcff     andi.w     #$fcff, sr
00266e: 4e75         rts        
002670: 4280         clr.l      d0
002672: 40c0         move.w     sr, d0
002674: 007c0700     ori.w      #$700, sr
002678: 027cfdff     andi.w     #$fdff, sr
00267c: 4e75         rts        
00267e: 4280         clr.l      d0
002680: 40c0         move.w     sr, d0
002682: 007c0700     ori.w      #$700, sr
002686: 027cfeff     andi.w     #$feff, sr
00268a: 4e75         rts        
00268c: 4280         clr.l      d0
00268e: 40c0         move.w     sr, d0
002690: 007c0700     ori.w      #$700, sr
002694: 4e75         rts        
002696: 2f01         move.l     d1, -(a7)
002698: 2200         move.l     d0, d1
00269a: 40c0         move.w     sr, d0
00269c: 46c1         move.w     d1, sr
00269e: 221f         move.l     (a7)+, d1
0026a0: 4e75         rts        
0026a2: 4280         clr.l      d0
0026a4: 3001         move.w     d1, d0
0026a6: 4480         neg.l      d0
0026a8: 4e75         rts        
0026aa: 650a         bcs.b      $26b6
0026ac: 4280         clr.l      d0
0026ae: 4cdf0106     movem.l    (a7)+, d1-d2/a0
0026b2: 4e75         rts        
0026b4: 64f8         bcc.b      $26ae
0026b6: 4280         clr.l      d0
0026b8: 3001         move.w     d1, d0
0026ba: 4480         neg.l      d0
0026bc: 60f0         bra.b      $26ae
0026be: 2f0a         move.l     a2, -(a7)
0026c0: 4e40         trap       #$0
0026c2: 00286506200a ori.b      #$6, $200a(a0)
0026c8: 245f         movea.l    (a7)+, a2
0026ca: 4e75         rts        
0026cc: 245f         movea.l    (a7)+, a2
0026ce: 60d2         bra.b      $26a2
0026d0: 48e70020     movem.l    a2, -(a7)
0026d4: 2440         movea.l    d0, a2
0026d6: 4e40         trap       #$0
0026d8: 00026506     ori.b      #$6, d2
0026dc: 4cdf0400     movem.l    (a7)+, a2
0026e0: 4e75         rts        
0026e2: 4cdf0400     movem.l    (a7)+, a2
0026e6: 60ba         bra.b      $26a2
0026e8: 48e74020     movem.l    d1/a2, -(a7)
0026ec: 2041         movea.l    d1, a0
0026ee: 4e40         trap       #$0
0026f0: 001d650a     ori.b      #$a, (a5)+
0026f4: 4281         clr.l      d1
0026f6: 4280         clr.l      d0
0026f8: 4cdf0402     movem.l    (a7)+, d1/a2
0026fc: 4e75         rts        
0026fe: 223cffffffff move.l     #$ffffffff, d1
002704: 203cffffffff move.l     #$ffffffff, d0
00270a: 4cdf0402     movem.l    (a7)+, d1/a2
00270e: 4e75         rts        
002710: 48e700e0     movem.l    a0-a2, -(a7)
002714: 2041         movea.l    d1, a0
002716: 4e40         trap       #$0
002718: 00006508     ori.b      #$8, d0
00271c: 200a         move.l     a2, d0
00271e: 4cdf0700     movem.l    (a7)+, a0-a2
002722: 4e75         rts        
002724: 4281         clr.l      d1
002726: 4cdf0700     movem.l    (a7)+, a0-a2
00272a: 6000ff76     bra.w      $26a2
00272e: 48e760e0     movem.l    d1-d2/a0-a2, -(a7)
002732: 242f0018     move.l     $18(a7), d2
002736: 206f001c     movea.l    $1c(a7), a0
00273a: 4e40         trap       #$0
00273c: 00256508     ori.b      #$8, -(a5)
002740: 200a         move.l     a2, d0
002742: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
002746: 4e75         rts        
002748: 4280         clr.l      d0
00274a: 2001         move.l     d1, d0
00274c: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
002750: 4e75         rts        
002752: 48e76080     movem.l    d1-d2/a0, -(a7)
002756: 2f0a         move.l     a2, -(a7)
002758: 2441         movea.l    d1, a2
00275a: 4e40         trap       #$0
00275c: 0029245f6000 ori.b      #$5f, $6000(a1)
002762: ff48         dc.w       $ff48
002764: 48e76080     movem.l    d1-d2/a0, -(a7)
002768: 2040         movea.l    d0, a0
00276a: 2001         move.l     d1, d0
00276c: 2f0a         move.l     a2, -(a7)
00276e: 4e40         trap       #$0
002770: 0080204a245f ori.l      #$204a245f, d0
002776: 6500ff3e     bcs.w      $26b6
00277a: 2008         move.l     a0, d0
00277c: 6000ff36     bra.w      $26b4
002780: 48e76080     movem.l    d1-d2/a0, -(a7)
002784: 204a         movea.l    a2, a0
002786: 2440         movea.l    d0, a2
002788: 4e40         trap       #$0
00278a: 008124486000 ori.l      #$24486000, d1
002790: ff1a         dc.w       $ff1a
002792: 48e74080     movem.l    d1/a0, -(a7)
002796: 2040         movea.l    d0, a0
002798: 2001         move.l     d1, d0
00279a: 4e40         trap       #$0
00279c: 008465064cdf ori.l      #$65064cdf, d4
0027a2: 0102         btst.l     d0, d2
0027a4: 4e75         rts        
0027a6: 4280         clr.l      d0
0027a8: 3001         move.w     d1, d0
0027aa: 4480         neg.l      d0
0027ac: 4cdf0102     movem.l    (a7)+, d1/a0
0027b0: 4e75         rts        
0027b2: 48e74080     movem.l    d1/a0, -(a7)
0027b6: 2041         movea.l    d1, a0
0027b8: 222f000c     move.l     $c(a7), d1
0027bc: 4e40         trap       #$0
0027be: 008a         .dc.w      $008a
0027c0: 65e4         bcs.b      $27a6
0027c2: 2001         move.l     d1, d0
0027c4: 4cdf0102     movem.l    (a7)+, d1/a0
0027c8: 4e75         rts        
0027ca: 4280         clr.l      d0
0027cc: 3001         move.w     d1, d0
0027ce: 4480         neg.l      d0
0027d0: 4cdf0102     movem.l    (a7)+, d1/a0
0027d4: 4e75         rts        
0027d6: 2f01         move.l     d1, -(a7)
0027d8: 4e40         trap       #$0
0027da: 008f         .dc.w      $008f
0027dc: 6504         bcs.b      $27e2
0027de: 221f         move.l     (a7)+, d1
0027e0: 4e75         rts        
0027e2: 4280         clr.l      d0
0027e4: 3001         move.w     d1, d0
0027e6: 4480         neg.l      d0
0027e8: 221f         move.l     (a7)+, d1
0027ea: 4e75         rts        
0027ec: 48e74000     movem.l    d1, -(a7)
0027f0: 206f0008     movea.l    $8(a7), a0
0027f4: 4e40         trap       #$0
0027f6: 008e         .dc.w      $008e
0027f8: 6508         bcs.b      $2802
0027fa: 2001         move.l     d1, d0
0027fc: 4cdf0002     movem.l    (a7)+, d1
002800: 4e75         rts        
002802: 4280         clr.l      d0
002804: 3001         move.w     d1, d0
002806: 4480         neg.l      d0
002808: 4cdf0002     movem.l    (a7)+, d1
00280c: 4e75         rts        
00280e: 48e74000     movem.l    d1, -(a7)
002812: 206f0008     movea.l    $8(a7), a0
002816: 4e40         trap       #$0
002818: 008d         .dc.w      $008d
00281a: 65e6         bcs.b      $2802
00281c: 2001         move.l     d1, d0
00281e: 4cdf0002     movem.l    (a7)+, d1
002822: 4e75         rts        
002824: 48e74040     movem.l    d1/a1, -(a7)
002828: 2240         movea.l    d0, a1
00282a: 4e40         trap       #$0
00282c: 003265084280 ori.b      #$8, -$80(a2, d4.w)
002832: 4cdf0202     movem.l    (a7)+, d1/a1
002836: 4e75         rts        
002838: 4280         clr.l      d0
00283a: 3001         move.w     d1, d0
00283c: 4480         neg.l      d0
00283e: 60f2         bra.b      $2832
002840: 48e76080     movem.l    d1-d2/a0, -(a7)
002844: 4e40         trap       #$0
002846: 0008         .dc.w      $0008
002848: 6000fe60     bra.w      $26aa
00284c: 48e76080     movem.l    d1-d2/a0, -(a7)
002850: 4280         clr.l      d0
002852: 4e40         trap       #$0
002854: 000a         .dc.w      $000a
002856: 6000fe52     bra.w      $26aa
00285a: 48e76080     movem.l    d1-d2/a0, -(a7)
00285e: 4e40         trap       #$0
002860: 000a         .dc.w      $000a
002862: 6000fe50     bra.w      $26b4
002866: 48e77080     movem.l    d1-d3/a0, -(a7)
00286a: 7003         moveq      #$3, d0
00286c: 4e40         trap       #$0
00286e: 0015650a     ori.b      #$a, (a5)
002872: 4280         clr.l      d0
002874: 3003         move.w     d3, d0
002876: 4cdf010e     movem.l    (a7)+, d1-d3/a0
00287a: 4e75         rts        
00287c: 4280         clr.l      d0
00287e: 3001         move.w     d1, d0
002880: 4480         neg.l      d0
002882: 60f2         bra.b      $2876
002884: 48e77080     movem.l    d1-d3/a0, -(a7)
002888: 7000         moveq      #$0, d0
00288a: 4e40         trap       #$0
00288c: 001565ec     ori.b      #$ec, (a5)
002890: 3002         move.w     d2, d0
002892: 4cdf010e     movem.l    (a7)+, d1-d3/a0
002896: 4e75         rts        
002898: 48e77080     movem.l    d1-d3/a0, -(a7)
00289c: 7000         moveq      #$0, d0
00289e: 4e40         trap       #$0
0028a0: 001565d8     ori.b      #$d8, (a5)
0028a4: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0028a8: 4e75         rts        
0028aa: 48e77080     movem.l    d1-d3/a0, -(a7)
0028ae: 7000         moveq      #$0, d0
0028b0: 4e40         trap       #$0
0028b2: 001565c6     ori.b      #$c6, (a5)
0028b6: 4280         clr.l      d0
0028b8: 2001         move.l     d1, d0
0028ba: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0028be: 4e75         rts        
0028c0: 48e76080     movem.l    d1-d2/a0, -(a7)
0028c4: 4e40         trap       #$0
0028c6: 002b6000fde0 ori.b      #$0, -$220(a3)
0028cc: 48e760f0     movem.l    d1-d2/a0-a3, -(a7)
0028d0: 206f001c     movea.l    $1c(a7), a0
0028d4: 246f0020     movea.l    $20(a7), a2
0028d8: 266f0024     movea.l    $24(a7), a3
0028dc: 4e40         trap       #$0
0028de: 002a65084280 ori.b      #$8, $4280(a2)
0028e4: 4cdf0f06     movem.l    (a7)+, d1-d2/a0-a3
0028e8: 4e75         rts        
0028ea: 4280         clr.l      d0
0028ec: 3001         move.w     d1, d0
0028ee: 4480         neg.l      d0
0028f0: 60f2         bra.b      $28e4
0028f2: 48e760e0     movem.l    d1-d2/a0-a2, -(a7)
0028f6: 2041         movea.l    d1, a0
0028f8: 2400         move.l     d0, d2
0028fa: 246f0018     movea.l    $18(a7), a2
0028fe: 4e40         trap       #$0
002900: 003865084280 ori.b      #$8, $4280.w
002906: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
00290a: 4e75         rts        
00290c: 4280         clr.l      d0
00290e: 3001         move.w     d1, d0
002910: 4480         neg.l      d0
002912: 60f2         bra.b      $2906
002914: 200e         move.l     a6, d0
002916: 4e75         rts        
002918: 48e70080     movem.l    a0, -(a7)
00291c: 207900000000 movea.l    $0.l, a0
002922: 41e803e4     lea.l      $3e4(a0), a0
002926: e588         lsl.l      #$2, d0
002928: 20700800     movea.l    (a0, d0.l), a0
00292c: 20280008     move.l     $8(a0), d0
002930: 4cdf0100     movem.l    (a7)+, a0
002934: 4e75         rts        
002936: 202e003c     move.l     $3c(a6), d0
00293a: 4e75         rts        
00293c: 202e0040     move.l     $40(a6), d0
002940: 4e75         rts        
002942: 48e70080     movem.l    a0, -(a7)
002946: 207900000000 movea.l    $0.l, a0
00294c: 20280044     move.l     $44(a0), d0
002950: 4cdf0100     movem.l    (a7)+, a0
002954: 4e75         rts        
002956: 2f09         move.l     a1, -(a7)
002958: 6140         bsr.b      $299a
00295a: 43e90148     lea.l      $148(a1), a1
00295e: 2009         move.l     a1, d0
002960: 225f         movea.l    (a7)+, a1
002962: 4e75         rts        
002964: 48e7c080     movem.l    d0-d1/a0, -(a7)
002968: 2040         movea.l    d0, a0
00296a: 303c0001     move.w     #$1, d0
00296e: 223c00000050 move.l     #$50, d1
002974: 4e40         trap       #$0
002976: 008c         .dc.w      $008c
002978: 4cdf0103     movem.l    (a7)+, d0-d1/a0
00297c: 4e75         rts        
00297e: 48e740c0     movem.l    d1/a0-a1, -(a7)
002982: 2040         movea.l    d0, a0
002984: 2241         movea.l    d1, a1
002986: 222f0010     move.l     $10(a7), d1
00298a: 4a81         tst.l      d1
00298c: 6706         beq.b      $2994
00298e: 12d8         move.b     (a0)+, (a1)+
002990: 5381         subq.l     #$1, d1
002992: 62fa         bhi.b      $298e
002994: 4cdf0302     movem.l    (a7)+, d1/a0-a1
002998: 4e75         rts        
00299a: 206e0044     movea.l    $44(a6), a0
00299e: b050         cmp.w      (a0), d0
0029a0: 6214         bhi.b      $29b6
0029a2: e540         asl.w      #$2, d0
0029a4: 6710         beq.b      $29b6
0029a6: d0c0         adda.w     d0, a0
0029a8: e448         lsr.w      #$2, d0
0029aa: 670a         beq.b      $29b6
0029ac: 2250         movea.l    (a0), a1
0029ae: 4a90         tst.l      (a0)
0029b0: 6704         beq.b      $29b6
0029b2: b051         cmp.w      (a1), d0
0029b4: 6708         beq.b      $29be
0029b6: 323c00e0     move.w     #$e0, d1
0029ba: 003c0001     ori.b      #$1, ccr
0029be: 4e75         rts        
0029c0: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
0029c4: 2440         movea.l    d0, a2
0029c6: 302a02d6     move.w     $2d6(a2), d0
0029ca: 6710         beq.b      $29dc
0029cc: 426a02d6     clr.w      $2d6(a2)
0029d0: 7201         moveq      #$1, d1
0029d2: 4e40         trap       #$0
0029d4: 0008         .dc.w      $0008
0029d6: 61c2         bsr.b      $299a
0029d8: 426902d4     clr.w      $2d4(a1)
0029dc: 4cdf0703     movem.l    (a7)+, d0-d1/a0-a2
0029e0: 4e75         rts        
0029e2: 000600a0     ori.b      #$a0, d6
0029e6: 0003018a     ori.b      #$8a, d3
0029ea: ffff         dc.w       $ffff
0029ec: 48e740e0     movem.l    d1/a0-a2, -(a7)
0029f0: 6100045e     bsr.w      $2e50
0029f4: 2240         movea.l    d0, a1
0029f6: 207900000000 movea.l    $0.l, a0
0029fc: 206803a4     movea.l    $3a4(a0), a0
002a00: 24680018     movea.l    $18(a0), a2
002a04: 234a0006     move.l     a2, $6(a1)
002a08: 2468000c     movea.l    $c(a0), a2
002a0c: 234a000a     move.l     a2, $a(a1)
002a10: 43faffd0     lea.l      $29e2(pc), a1
002a14: 4e40         trap       #$0
002a16: 0032203c0000 ori.b      #$3c, (a2, d0.w)
002a1c: 00004cdf     ori.b      #$df, d0
002a20: 0702         btst.l     d3, d2
002a22: 4e75         rts        
002a24: 4e75         rts        
002a26: 4e75         rts        
002a28: 48e740e0     movem.l    d1/a0-a2, -(a7)
002a2c: 207900000000 movea.l    $0.l, a0
002a32: 206803a4     movea.l    $3a4(a0), a0
002a36: 41e80018     lea.l      $18(a0), a0
002a3a: 61000414     bsr.w      $2e50
002a3e: 2240         movea.l    d0, a1
002a40: 20a90006     move.l     $6(a1), (a0)
002a44: 207900000000 movea.l    $0.l, a0
002a4a: 206803a8     movea.l    $3a8(a0), a0
002a4e: 41e80018     lea.l      $18(a0), a0
002a52: 20a90006     move.l     $6(a1), (a0)
002a56: 207900000000 movea.l    $0.l, a0
002a5c: 206803a4     movea.l    $3a4(a0), a0
002a60: 41e8000c     lea.l      $c(a0), a0
002a64: 610003ea     bsr.w      $2e50
002a68: 2240         movea.l    d0, a1
002a6a: 20a9000a     move.l     $a(a1), (a0)
002a6e: 207900000000 movea.l    $0.l, a0
002a74: 206803a8     movea.l    $3a8(a0), a0
002a78: 41e8000c     lea.l      $c(a0), a0
002a7c: 20a9000a     move.l     $a(a1), (a0)
002a80: 4cdf0702     movem.l    (a7)+, d1/a0-a2
002a84: 4e75         rts        
002a86: 2f01         move.l     d1, -(a7)
002a88: 206e0044     movea.l    $44(a6), a0
002a8c: 302c0002     move.w     $2(a4), d0
002a90: 6742         beq.b      $2ad4
002a92: 4e40         trap       #$0
002a94: 002f4a6c0022 ori.b      #$6c, $22(a7)
002a9a: 6738         beq.b      $2ad4
002a9c: 6144         bsr.b      $2ae2
002a9e: 0c6c00010022 cmpi.w     #$1, $22(a4)
002aa4: 660a         bne.b      $2ab0
002aa6: 0c2900770020 cmpi.b     #$77, $20(a1)
002aac: 6726         beq.b      $2ad4
002aae: 6008         bra.b      $2ab8
002ab0: 0c6c00020022 cmpi.w     #$2, $22(a4)
002ab6: 661c         bne.b      $2ad4
002ab8: 204c         movea.l    a4, a0
002aba: 0c6dffff0006 cmpi.w     #$ffff, $6(a5)
002ac0: 660e         bne.b      $2ad0
002ac2: 3b7c00000006 move.w     #$0, $6(a5)
002ac8: 221f         move.l     (a7)+, d1
002aca: 4281         clr.l      d1
002acc: 2f01         move.l     d1, -(a7)
002ace: 6004         bra.b      $2ad4
002ad0: 610000dc     bsr.w      $2bae
002ad4: 6100037a     bsr.w      $2e50
002ad8: 221f         move.l     (a7)+, d1
002ada: 2440         movea.l    d0, a2
002adc: 246a0006     movea.l    $6(a2), a2
002ae0: 4e92         jsr        (a2)
002ae2: 48e780e0     movem.l    d0/a0-a2, -(a7)
002ae6: 20690008     movea.l    $8(a1), a0
002aea: 45fa0048     lea.l      $2b34(pc), a2
002aee: 200a         move.l     a2, d0
002af0: b0a80042     cmp.l      $42(a0), d0
002af4: 6738         beq.b      $2b2e
002af6: 0c2900770020 cmpi.b     #$77, $20(a1)
002afc: 6730         beq.b      $2b2e
002afe: 0cae000109a003c8 cmpi.l     #$109a0, $3c8(a6)
002b06: 6606         bne.b      $2b0e
002b08: 41e8ffba     lea.l      -$46(a0), a0
002b0c: 600a         bra.b      $2b18
002b0e: 41e8ffb8     lea.l      -$48(a0), a0
002b12: 317c00000046 move.w     #$0, $46(a0)
002b18: 23480008     move.l     a0, $8(a1)
002b1c: 214a0042     move.l     a2, $42(a0)
002b20: 317c20000040 move.w     #$2000, $40(a0)
002b26: 21490020     move.l     a1, $20(a0)
002b2a: 214e0038     move.l     a6, $38(a0)
002b2e: 4cdf0701     movem.l    (a7)+, d0/a0-a2
002b32: 4e75         rts        
002b34: 45e80002     lea.l      $2(a0), a2
002b38: 30280006     move.w     $6(a0), d0
002b3c: 4a40         tst.w      d0
002b3e: 672c         beq.b      $2b6c
002b40: 6100fe58     bsr.w      $299a
002b44: 30290004     move.w     $4(a1), d0
002b48: 08290000001c btst.b     #$0, $1c(a1)
002b4e: 6718         beq.b      $2b68
002b50: 356900040004 move.w     $4(a1), $4(a2)
002b56: 3f00         move.w     d0, -(a7)
002b58: 30290000     move.w     $0(a1), d0
002b5c: 206e0044     movea.l    $44(a6), a0
002b60: 4e40         trap       #$0
002b62: 0031301f60d4 ori.b      #$1f, -$2c(a1, d6.w)
002b68: 2449         movea.l    a1, a2
002b6a: 60d0         bra.b      $2b3c
002b6c: 4cdf7fff     movem.l    (a7)+, d0-d7/a0-a6
002b70: 588f         addq.l     #$4, a7
002b72: 4e73         rte        
002b74: 3f03         move.w     d3, -(a7)
002b76: 0243003f     andi.w     #$3f, d3
002b7a: 3b43000e     move.w     d3, $e(a5)
002b7e: 2f00         move.l     d0, -(a7)
002b80: 610002ce     bsr.w      $2e50
002b84: 2440         movea.l    d0, a2
002b86: 201f         move.l     (a7)+, d0
002b88: 246a000a     movea.l    $a(a2), a2
002b8c: 4e92         jsr        (a2)
002b8e: 6516         bcs.b      $2ba6
002b90: 4283         clr.l      d3
002b92: 361f         move.w     (a7)+, d3
002b94: 302d0002     move.w     $2(a5), d0
002b98: 6100fe00     bsr.w      $299a
002b9c: ec4b         lsr.w      #$6, d3
002b9e: e04b         lsr.w      #$8, d3
002ba0: 33430022     move.w     d3, $22(a1)
002ba4: 4e75         rts        
002ba6: 361f         move.w     (a7)+, d3
002ba8: 003c0001     ori.b      #$1, ccr
002bac: 4e75         rts        
002bae: 48e7e000     movem.l    d0-d2, -(a7)
002bb2: 4aa90028     tst.l      $28(a1)
002bb6: 670e         beq.b      $2bc6
002bb8: 342c0000     move.w     $0(a4), d2
002bbc: 323c8000     move.w     #$8000, d1
002bc0: d242         add.w      d2, d1
002bc2: 4e40         trap       #$0
002bc4: 0008         .dc.w      $0008
002bc6: 4cdf0007     movem.l    (a7)+, d0-d2
002bca: 4e75         rts        
002bcc: 48e76080     movem.l    d1-d2/a0, -(a7)
002bd0: 2040         movea.l    d0, a0
002bd2: 4e40         trap       #$0
002bd4: 001a6500     ori.b      #$0, (a2)+
002bd8: fade20016000 fbf.l      $20018bda
002bde: fad048e700e0 fbf.l      $48e72cc0
002be4: 2440         movea.l    d0, a2
002be6: 206e0044     movea.l    $44(a6), a0
002bea: 302a0002     move.w     $2(a2), d0
002bee: 6716         beq.b      $2c06
002bf0: 4e40         trap       #$0
002bf2: 002f65102469 ori.b      #$10, $2469(a7)
002bf8: 0038d5ea000c ori.b      #$ea, $c.w
002bfe: 200a         move.l     a2, d0
002c00: 4cdf0700     movem.l    (a7)+, a0-a2
002c04: 4e75         rts        
002c06: 203c00000000 move.l     #$0, d0
002c0c: 4cdf0700     movem.l    (a7)+, a0-a2
002c10: 4e75         rts        
002c12: 48e74080     movem.l    d1/a0, -(a7)
002c16: 206f000c     movea.l    $c(a7), a0
002c1a: 4e40         trap       #$0
002c1c: 00176508     ori.b      #$8, (a7)
002c20: 2001         move.l     d1, d0
002c22: 4cdf0102     movem.l    (a7)+, d1/a0
002c26: 4e75         rts        
002c28: 4280         clr.l      d0
002c2a: 2001         move.l     d1, d0
002c2c: 4480         neg.l      d0
002c2e: 4cdf0102     movem.l    (a7)+, d1/a0
002c32: 4e75         rts        
002c34: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
002c38: 242f001c     move.l     $1c(a7), d2
002c3c: 262f0020     move.l     $20(a7), d3
002c40: 282f0024     move.l     $24(a7), d4
002c44: 206f0028     movea.l    $28(a7), a0
002c48: 226f002c     movea.l    $2c(a7), a1
002c4c: 4e40         trap       #$0
002c4e: 00036506     ori.b      #$6, d3
002c52: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
002c56: 4e75         rts        
002c58: 3001         move.w     d1, d0
002c5a: 4440         neg.w      d0
002c5c: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
002c60: 4e75         rts        
002c62: 48e70080     movem.l    a0, -(a7)
002c66: 2041         movea.l    d1, a0
002c68: 80fc0064     divu.w     #$64, d0
002c6c: 1080         move.b     d0, (a0)
002c6e: e088         lsr.l      #$8, d0
002c70: e088         lsr.l      #$8, d0
002c72: 11400001     move.b     d0, $1(a0)
002c76: 4cdf0100     movem.l    (a7)+, a0
002c7a: 4e75         rts        
002c7c: 4e550000     link.w     a5, #$0
002c80: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002c84: 4fefffec     lea.l      -$14(a7), a7
002c88: 206f0014     movea.l    $14(a7), a0
002c8c: 7005         moveq      #$5, d0
002c8e: b0a80028     cmp.l      $28(a0), d0
002c92: 6f0a         ble.b      $2c9e
002c94: 206f0014     movea.l    $14(a7), a0
002c98: 08e800070034 bset.b     #$7, $34(a0)
002c9e: 206f0014     movea.l    $14(a7), a0
002ca2: 20280028     move.l     $28(a0), d0
002ca6: 5380         subq.l     #$1, d0
002ca8: 6716         beq.b      $2cc0
002caa: 206f0018     movea.l    $18(a7), a0
002cae: 08100005     btst.b     #$5, (a0)
002cb2: 6610         bne.b      $2cc4
002cb4: 206f0014     movea.l    $14(a7), a0
002cb8: 7001         moveq      #$1, d0
002cba: b0a80024     cmp.l      $24(a0), d0
002cbe: 6d04         blt.b      $2cc4
002cc0: 70ff         moveq      #$ff, d0
002cc2: 605e         bra.b      $2d22
002cc4: 206f0014     movea.l    $14(a7), a0
002cc8: 53a80028     subq.l     #$1, $28(a0)
002ccc: 206f0014     movea.l    $14(a7), a0
002cd0: 2f680008000c move.l     $8(a0), $c(a7)
002cd6: 206f0014     movea.l    $14(a7), a0
002cda: 20680008     movea.l    $8(a0), a0
002cde: 226f0014     movea.l    $14(a7), a1
002ce2: 2368000c0008 move.l     $c(a0), $8(a1)
002ce8: 48780024     pea.l      $24.w
002cec: 222f001c     move.l     $1c(a7), d1
002cf0: 7010         moveq      #$10, d0
002cf2: d0af0010     add.l      $10(a7), d0
002cf6: 610006a0     bsr.w      $3398
002cfa: 588f         addq.l     #$4, a7
002cfc: 206f0014     movea.l    $14(a7), a0
002d00: 52a8002c     addq.l     #$1, $2c(a0)
002d04: 206f0018     movea.l    $18(a7), a0
002d08: 08100005     btst.b     #$5, (a0)
002d0c: 6612         bne.b      $2d20
002d0e: 2f2f000c     move.l     $c(a7), -(a7)
002d12: 222f001c     move.l     $1c(a7), d1
002d16: 202f0018     move.l     $18(a7), d0
002d1a: 610000a4     bsr.w      $2dc0
002d1e: 588f         addq.l     #$4, a7
002d20: 7000         moveq      #$0, d0
002d22: 4fef0014     lea.l      $14(a7), a7
002d26: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002d2c: 4e5d         unlk       a5
002d2e: 4e75         rts        
002d30: 4e550000     link.w     a5, #$0
002d34: 48e7c038     movem.l    d0-d1/a2-a4, -(a7)
002d38: 2440         movea.l    d0, a2
002d3a: 598f         subq.l     #$4, a7
002d3c: 70ff         moveq      #$ff, d0
002d3e: 2e80         move.l     d0, (a7)
002d40: 08970005     bclr.b     #$5, (a7)
002d44: 08970004     bclr.b     #$4, (a7)
002d48: 286a0004     movea.l    $4(a2), a4
002d4c: 4aaa002c     tst.l      $2c(a2)
002d50: 6728         beq.b      $2d7a
002d52: 6014         bra.b      $2d68
002d54: 4aac000c     tst.l      $c(a4)
002d58: 6720         beq.b      $2d7a
002d5a: 202c000c     move.l     $c(a4), d0
002d5e: b0aa0008     cmp.l      $8(a2), d0
002d62: 6716         beq.b      $2d7a
002d64: 286c000c     movea.l    $c(a4), a4
002d68: 202c0010     move.l     $10(a4), d0
002d6c: c097         and.l      (a7), d0
002d6e: 222f0008     move.l     $8(a7), d1
002d72: c297         and.l      (a7), d1
002d74: b081         cmp.l      d1, d0
002d76: 66dc         bne.b      $2d54
002d78: 6004         bra.b      $2d7e
002d7a: 70ff         moveq      #$ff, d0
002d7c: 6036         bra.b      $2db4
002d7e: 7000         moveq      #$0, d0
002d80: 302f002e     move.w     $2e(a7), d0
002d84: 2f00         move.l     d0, -(a7)
002d86: 2f2c0004     move.l     $4(a4), -(a7)
002d8a: 7000         moveq      #$0, d0
002d8c: 302f0032     move.w     $32(a7), d0
002d90: 2f00         move.l     d0, -(a7)
002d92: 222f0030     move.l     $30(a7), d1
002d96: 202f002c     move.l     $2c(a7), d0
002d9a: 6100ee8a     bsr.w      $1c26
002d9e: 4fef000c     lea.l      $c(a7), a7
002da2: 7000         moveq      #$0, d0
002da4: 302f002e     move.w     $2e(a7), d0
002da8: d1ac0004     add.l      d0, $4(a4)
002dac: 296f00080010 move.l     $8(a7), $10(a4)
002db2: 7000         moveq      #$0, d0
002db4: 588f         addq.l     #$4, a7
002db6: 4ced1c00fff4 movem.l    -$c(a5), a2-a4
002dbc: 4e5d         unlk       a5
002dbe: 4e75         rts        
002dc0: 4e550000     link.w     a5, #$0
002dc4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002dc8: 598f         subq.l     #$4, a7
002dca: 206f0008     movea.l    $8(a7), a0
002dce: 226f0004     movea.l    $4(a7), a1
002dd2: 22690020     movea.l    $20(a1), a1
002dd6: 2290         move.l     (a0), (a1)
002dd8: 206f0004     movea.l    $4(a7), a0
002ddc: 20680020     movea.l    $20(a0), a0
002de0: 216f001c0004 move.l     $1c(a7), $4(a0)
002de6: 206f0004     movea.l    $4(a7), a0
002dea: 50a80020     addq.l     #$8, $20(a0)
002dee: 206f0004     movea.l    $4(a7), a0
002df2: 20680018     movea.l    $18(a0), a0
002df6: 226f0004     movea.l    $4(a7), a1
002dfa: 20290020     move.l     $20(a1), d0
002dfe: b0a80004     cmp.l      $4(a0), d0
002e02: 6338         bls.b      $2e3c
002e04: 206f0004     movea.l    $4(a7), a0
002e08: 20680018     movea.l    $18(a0), a0
002e0c: 4a90         tst.l      (a0)
002e0e: 671a         beq.b      $2e2a
002e10: 206f0004     movea.l    $4(a7), a0
002e14: 20680018     movea.l    $18(a0), a0
002e18: 226f0004     movea.l    $4(a7), a1
002e1c: 23500018     move.l     (a0), $18(a1)
002e20: 206f0004     movea.l    $4(a7), a0
002e24: 20280018     move.l     $18(a0), d0
002e28: 6008         bra.b      $2e32
002e2a: 206f0004     movea.l    $4(a7), a0
002e2e: 20280010     move.l     $10(a0), d0
002e32: 5080         addq.l     #$8, d0
002e34: 206f0004     movea.l    $4(a7), a0
002e38: 21400020     move.l     d0, $20(a0)
002e3c: 206f0004     movea.l    $4(a7), a0
002e40: 53a80024     subq.l     #$1, $24(a0)
002e44: 588f         addq.l     #$4, a7
002e46: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002e4c: 4e5d         unlk       a5
002e4e: 4e75         rts        
002e50: 2f08         move.l     a0, -(a7)
002e52: 207900000000 movea.l    $0.l, a0
002e58: 41e80814     lea.l      $814(a0), a0
002e5c: 2010         move.l     (a0), d0
002e5e: 205f         movea.l    (a7)+, a0
002e60: 4e75         rts        
002e62: 2f08         move.l     a0, -(a7)
002e64: 207900000000 movea.l    $0.l, a0
002e6a: 41e80814     lea.l      $814(a0), a0
002e6e: 2008         move.l     a0, d0
002e70: 205f         movea.l    (a7)+, a0
002e72: 4e75         rts        
002e74: 4e550000     link.w     a5, #$0
002e78: 48e7c080     movem.l    d0-d1/a0, -(a7)
002e7c: 598f         subq.l     #$4, a7
002e7e: 202f0004     move.l     $4(a7), d0
002e82: 5880         addq.l     #$4, d0
002e84: 2e80         move.l     d0, (a7)
002e86: 60ff00000046 bra.l      $2ece
002e8c: 2057         movea.l    (a7), a0
002e8e: 4a90         tst.l      (a0)
002e90: 67ff0000000e beq.l      $2ea0
002e96: 2017         move.l     (a7), d0
002e98: 588f         addq.l     #$4, a7
002e9a: 60ff00000046 bra.l      $2ee2
002ea0: 202f0004     move.l     $4(a7), d0
002ea4: 5880         addq.l     #$4, d0
002ea6: 206f0004     movea.l    $4(a7), a0
002eaa: 3210         move.w     (a0), d1
002eac: 48c1         ext.l      d1
002eae: 5381         subq.l     #$1, d1
002eb0: e589         lsl.l      #$2, d1
002eb2: d081         add.l      d1, d0
002eb4: 2217         move.l     (a7), d1
002eb6: 5881         addq.l     #$4, d1
002eb8: b081         cmp.l      d1, d0
002eba: 63ff0000000e bls.l      $2eca
002ec0: 2057         movea.l    (a7), a0
002ec2: 41e80004     lea.l      $4(a0), a0
002ec6: 60000004     bra.w      $2ecc
002eca: 91c8         suba.l     a0, a0
002ecc: 2e88         move.l     a0, (a7)
002ece: 4a97         tst.l      (a7)
002ed0: 66ffffffffba bne.l      $2e8c
002ed6: 7000         moveq      #$0, d0
002ed8: 588f         addq.l     #$4, a7
002eda: 60ff00000006 bra.l      $2ee2
002ee0: 4e71         nop        
002ee2: 4ced0102fff8 movem.l    -$8(a5), d1/a0
002ee8: 4e5d         unlk       a5
002eea: 4e75         rts        
002eec: 4e550000     link.w     a5, #$0
002ef0: 48e7c080     movem.l    d0-d1/a0, -(a7)
002ef4: 2017         move.l     (a7), d0
002ef6: 5880         addq.l     #$4, d0
002ef8: 2057         movea.l    (a7), a0
002efa: 3210         move.w     (a0), d1
002efc: 48c1         ext.l      d1
002efe: 5381         subq.l     #$1, d1
002f00: e589         lsl.l      #$2, d1
002f02: d081         add.l      d1, d0
002f04: 222f0004     move.l     $4(a7), d1
002f08: 5881         addq.l     #$4, d1
002f0a: b081         cmp.l      d1, d0
002f0c: 63ff00000010 bls.l      $2f1e
002f12: 206f0004     movea.l    $4(a7), a0
002f16: 41e80004     lea.l      $4(a0), a0
002f1a: 60000004     bra.w      $2f20
002f1e: 91c8         suba.l     a0, a0
002f20: 2f480004     move.l     a0, $4(a7)
002f24: 60ff0000004a bra.l      $2f70
002f2a: 206f0004     movea.l    $4(a7), a0
002f2e: 4a90         tst.l      (a0)
002f30: 67ff0000000e beq.l      $2f40
002f36: 202f0004     move.l     $4(a7), d0
002f3a: 60ff00000048 bra.l      $2f84
002f40: 2017         move.l     (a7), d0
002f42: 5880         addq.l     #$4, d0
002f44: 2057         movea.l    (a7), a0
002f46: 3210         move.w     (a0), d1
002f48: 48c1         ext.l      d1
002f4a: 5381         subq.l     #$1, d1
002f4c: e589         lsl.l      #$2, d1
002f4e: d081         add.l      d1, d0
002f50: 222f0004     move.l     $4(a7), d1
002f54: 5881         addq.l     #$4, d1
002f56: b081         cmp.l      d1, d0
002f58: 63ff00000010 bls.l      $2f6a
002f5e: 206f0004     movea.l    $4(a7), a0
002f62: 41e80004     lea.l      $4(a0), a0
002f66: 60000004     bra.w      $2f6c
002f6a: 91c8         suba.l     a0, a0
002f6c: 2f480004     move.l     a0, $4(a7)
002f70: 4aaf0004     tst.l      $4(a7)
002f74: 66ffffffffb4 bne.l      $2f2a
002f7a: 7000         moveq      #$0, d0
002f7c: 60ff00000006 bra.l      $2f84
002f82: 4e71         nop        
002f84: 4ced0100fffc movem.l    -$4(a5), a0
002f8a: 4e5d         unlk       a5
002f8c: 4e75         rts        
002f8e: 4e550000     link.w     a5, #$0
002f92: 48e7c000     movem.l    d0-d1, -(a7)
002f96: 518f         subq.l     #$8, a7
002f98: 42af0004     clr.l      $4(a7)
002f9c: 202f0008     move.l     $8(a7), d0
002fa0: 61fffffffed2 bsr.l      $2e74
002fa6: 2e80         move.l     d0, (a7)
002fa8: 60ff00000016 bra.l      $2fc0
002fae: 52af0004     addq.l     #$1, $4(a7)
002fb2: 2217         move.l     (a7), d1
002fb4: 202f0008     move.l     $8(a7), d0
002fb8: 61ffffffff32 bsr.l      $2eec
002fbe: 2e80         move.l     d0, (a7)
002fc0: 4a97         tst.l      (a7)
002fc2: 66ffffffffea bne.l      $2fae
002fc8: 508f         addq.l     #$8, a7
002fca: 4ced0002fffc movem.l    -$4(a5), d1
002fd0: 4e5d         unlk       a5
002fd2: 4e75         rts        
002fd4: 4e550000     link.w     a5, #$0
002fd8: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
002fdc: 2440         movea.l    d0, a2
002fde: 203c00000168 move.l     #$168, d0
002fe4: d08a         add.l      a2, d0
002fe6: 2640         movea.l    d0, a3
002fe8: 60ff00000030 bra.l      $301a
002fee: 4a53         tst.w      (a3)
002ff0: 67ff0000000c beq.l      $2ffe
002ff6: 200b         move.l     a3, d0
002ff8: 60ff00000032 bra.l      $302c
002ffe: 203c000001a6 move.l     #$1a6, d0
003004: d08a         add.l      a2, d0
003006: b08b         cmp.l      a3, d0
003008: 63ff0000000c bls.l      $3016
00300e: 41eb0002     lea.l      $2(a3), a0
003012: 60000004     bra.w      $3018
003016: 91c8         suba.l     a0, a0
003018: 2648         movea.l    a0, a3
00301a: 200b         move.l     a3, d0
00301c: 66ffffffffd0 bne.l      $2fee
003022: 7000         moveq      #$0, d0
003024: 60ff00000006 bra.l      $302c
00302a: 4e71         nop        
00302c: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
003032: 4e5d         unlk       a5
003034: 4e75         rts        
003036: 4e550000     link.w     a5, #$0
00303a: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00303e: 2440         movea.l    d0, a2
003040: 2641         movea.l    d1, a3
003042: 203c000001a6 move.l     #$1a6, d0
003048: d08a         add.l      a2, d0
00304a: b08b         cmp.l      a3, d0
00304c: 63ff0000000c bls.l      $305a
003052: 41eb0002     lea.l      $2(a3), a0
003056: 60000004     bra.w      $305c
00305a: 91c8         suba.l     a0, a0
00305c: 2648         movea.l    a0, a3
00305e: 60ff00000030 bra.l      $3090
003064: 4a53         tst.w      (a3)
003066: 67ff0000000c beq.l      $3074
00306c: 200b         move.l     a3, d0
00306e: 60ff00000032 bra.l      $30a2
003074: 203c000001a6 move.l     #$1a6, d0
00307a: d08a         add.l      a2, d0
00307c: b08b         cmp.l      a3, d0
00307e: 63ff0000000c bls.l      $308c
003084: 41eb0002     lea.l      $2(a3), a0
003088: 60000004     bra.w      $308e
00308c: 91c8         suba.l     a0, a0
00308e: 2648         movea.l    a0, a3
003090: 200b         move.l     a3, d0
003092: 66ffffffffd0 bne.l      $3064
003098: 7000         moveq      #$0, d0
00309a: 60ff00000006 bra.l      $30a2
0030a0: 4e71         nop        
0030a2: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0030a8: 4e5d         unlk       a5
0030aa: 4e75         rts        
0030ac: 4e550000     link.w     a5, #$0
0030b0: 48e7cc30     movem.l    d0-d1/d4-d5/a2-a3, -(a7)
0030b4: 2440         movea.l    d0, a2
0030b6: 282a0378     move.l     $378(a2), d4
0030ba: 7a00         moveq      #$0, d5
0030bc: 266a037c     movea.l    $37c(a2), a3
0030c0: 60ff00000024 bra.l      $30e6
0030c6: 7000         moveq      #$0, d0
0030c8: 302b000a     move.w     $a(a3), d0
0030cc: b0af0004     cmp.l      $4(a7), d0
0030d0: 6eff00000010 bgt.l      $30e2
0030d6: 7000         moveq      #$0, d0
0030d8: 302b000a     move.w     $a(a3), d0
0030dc: 60ff0000001a bra.l      $30f8
0030e2: 5285         addq.l     #$1, d5
0030e4: 2653         movea.l    (a3), a3
0030e6: ba84         cmp.l      d4, d5
0030e8: 6dffffffffdc blt.l      $30c6
0030ee: 7000         moveq      #$0, d0
0030f0: 60ff00000006 bra.l      $30f8
0030f6: 4e71         nop        
0030f8: 4ced0c30fff0 movem.l    -$10(a5), d4-d5/a2-a3
0030fe: 4e5d         unlk       a5
003100: 4e75         rts        
003102: 48e700a0     movem.l    a0/a2, -(a7)
003106: 2f01         move.l     d1, -(a7)
003108: 4e40         trap       #$0
00310a: 0028650c205f ori.b      #$c, $205f(a0)
003110: 2080         move.l     d0, (a0)
003112: 200a         move.l     a2, d0
003114: 4cdf0500     movem.l    (a7)+, a0/a2
003118: 4e75         rts        
00311a: 4280         clr.l      d0
00311c: 3001         move.w     d1, d0
00311e: 205f         movea.l    (a7)+, a0
003120: 2080         move.l     d0, (a0)
003122: 4280         clr.l      d0
003124: 4cdf0500     movem.l    (a7)+, a0/a2
003128: 4e75         rts        
00312a: 48e700a0     movem.l    a0/a2, -(a7)
00312e: 4e40         trap       #$0
003130: 005c650e     ori.w      #$650e, (a4)+
003134: 206f000c     movea.l    $c(a7), a0
003138: 2080         move.l     d0, (a0)
00313a: 200a         move.l     a2, d0
00313c: 4cdf0500     movem.l    (a7)+, a0/a2
003140: 4e75         rts        
003142: 4280         clr.l      d0
003144: 3001         move.w     d1, d0
003146: 206f000c     movea.l    $c(a7), a0
00314a: 2080         move.l     d0, (a0)
00314c: 4280         clr.l      d0
00314e: 4cdf0500     movem.l    (a7)+, a0/a2
003152: 4e75         rts        
003154: 2f0a         move.l     a2, -(a7)
003156: 2441         movea.l    d1, a2
003158: 4e40         trap       #$0
00315a: 0029245f6504 ori.b      #$5f, $6504(a1)
003160: 4280         clr.l      d0
003162: 4e75         rts        
003164: 4280         clr.l      d0
003166: 3001         move.w     d1, d0
003168: 4e75         rts        
00316a: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
00316e: 242f001c     move.l     $1c(a7), d2
003172: 262f0020     move.l     $20(a7), d3
003176: 282f0024     move.l     $24(a7), d4
00317a: 206f0028     movea.l    $28(a7), a0
00317e: 226f002c     movea.l    $2c(a7), a1
003182: 4e40         trap       #$0
003184: 00036506     ori.b      #$6, d3
003188: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
00318c: 4e75         rts        
00318e: 4280         clr.l      d0
003190: 60f6         bra.b      $3188
003192: 48e74000     movem.l    d1, -(a7)
003196: 4e40         trap       #$0
003198: 0008         .dc.w      $0008
00319a: 600000be     bra.w      $325a
00319e: 48e76000     movem.l    d1-d2, -(a7)
0031a2: 008180000000 ori.l      #$80000000, d1
0031a8: 4e40         trap       #$0
0031aa: 00276000     ori.b      #$0, -(a7)
0031ae: 00a248e76000 ori.l      #$48e76000, -(a2)
0031b4: 242f000c     move.l     $c(a7), d2
0031b8: 4e40         trap       #$0
0031ba: 00276000     ori.b      #$0, -(a7)
0031be: 009248e74000 ori.l      #$48e74000, (a2)
0031c4: e180         asl.l      #$8, d0
0031c6: 008080000000 ori.l      #$80000000, d0
0031cc: 4e40         trap       #$0
0031ce: 000a         .dc.w      $000a
0031d0: 60000092     bra.w      $3264
0031d4: 48e74000     movem.l    d1, -(a7)
0031d8: 4e40         trap       #$0
0031da: 000a         .dc.w      $000a
0031dc: 60000086     bra.w      $3264
0031e0: 48e74080     movem.l    d1/a0, -(a7)
0031e4: 2040         movea.l    d0, a0
0031e6: 2001         move.l     d1, d0
0031e8: 222f000c     move.l     $c(a7), d1
0031ec: 4e40         trap       #$0
0031ee: 0017607a     ori.b      #$7a, (a7)
0031f2: 48e77080     movem.l    d1-d3/a0, -(a7)
0031f6: 2041         movea.l    d1, a0
0031f8: 4e40         trap       #$0
0031fa: 0015651c     ori.b      #$1c, (a5)
0031fe: 2080         move.l     d0, (a0)
003200: 206f0014     movea.l    $14(a7), a0
003204: 2081         move.l     d1, (a0)
003206: 206f0018     movea.l    $18(a7), a0
00320a: 3082         move.w     d2, (a0)
00320c: 206f001c     movea.l    $1c(a7), a0
003210: 2083         move.l     d3, (a0)
003212: 4280         clr.l      d0
003214: 4cdf010e     movem.l    (a7)+, d1-d3/a0
003218: 4e75         rts        
00321a: 4280         clr.l      d0
00321c: 3001         move.w     d1, d0
00321e: 60f4         bra.b      $3214
003220: 48e77000     movem.l    d1-d3, -(a7)
003224: 7003         moveq      #$3, d0
003226: 4e40         trap       #$0
003228: 0015604c     ori.b      #$4c, (a5)
00322c: 48e77000     movem.l    d1-d3, -(a7)
003230: 7000         moveq      #$0, d0
003232: 4e40         trap       #$0
003234: 0015604c     ori.b      #$4c, (a5)
003238: 48e77000     movem.l    d1-d3, -(a7)
00323c: 7000         moveq      #$0, d0
00323e: 4e40         trap       #$0
003240: 00156048     ori.b      #$48, (a5)
003244: 48e77000     movem.l    d1-d3, -(a7)
003248: 7000         moveq      #$0, d0
00324a: 4e40         trap       #$0
00324c: 00156040     ori.b      #$40, (a5)
003250: 6544         bcs.b      $3296
003252: 2002         move.l     d2, d0
003254: 4cdf0006     movem.l    (a7)+, d1-d2
003258: 4e75         rts        
00325a: 654a         bcs.b      $32a6
00325c: 4280         clr.l      d0
00325e: 4cdf0002     movem.l    (a7)+, d1
003262: 4e75         rts        
003264: 6540         bcs.b      $32a6
003266: 4cdf0002     movem.l    (a7)+, d1
00326a: 4e75         rts        
00326c: 6530         bcs.b      $329e
00326e: 2f41000c     move.l     d1, $c(a7)
003272: 4cdf0102     movem.l    (a7)+, d1/a0
003276: 4e75         rts        
003278: 6534         bcs.b      $32ae
00327a: 4280         clr.l      d0
00327c: 3003         move.w     d3, d0
00327e: 4cdf000e     movem.l    (a7)+, d1-d3
003282: 4e75         rts        
003284: 6528         bcs.b      $32ae
003286: 4280         clr.l      d0
003288: 3002         move.w     d2, d0
00328a: 60f2         bra.b      $327e
00328c: 6520         bcs.b      $32ae
00328e: 60ee         bra.b      $327e
003290: 651c         bcs.b      $32ae
003292: 2001         move.l     d1, d0
003294: 60e8         bra.b      $327e
003296: 203cffffffff move.l     #$ffffffff, d0
00329c: 60b6         bra.b      $3254
00329e: 4280         clr.l      d0
0032a0: 3001         move.w     d1, d0
0032a2: 4480         neg.l      d0
0032a4: 60cc         bra.b      $3272
0032a6: 4280         clr.l      d0
0032a8: 3001         move.w     d1, d0
0032aa: 4480         neg.l      d0
0032ac: 60b0         bra.b      $325e
0032ae: 4280         clr.l      d0
0032b0: 3001         move.w     d1, d0
0032b2: 4480         neg.l      d0
0032b4: 60c8         bra.b      $327e
0032b6: 2f08         move.l     a0, -(a7)
0032b8: 2040         movea.l    d0, a0
0032ba: b300         eor.b      d1, d0
0032bc: 08000000     btst.b     #$0, d0
0032c0: 6652         bne.b      $3314
0032c2: 08010000     btst.b     #$0, d1
0032c6: c389         exg.l      d1, a1
0032c8: 6718         beq.b      $32e2
0032ca: b109         cmpm.b     (a1)+, (a0)+
0032cc: 6530         bcs.b      $32fe
0032ce: 6220         bhi.b      $32f0
0032d0: 4a28ffff     tst.b      -$1(a0)
0032d4: 660c         bne.b      $32e2
0032d6: 6034         bra.b      $330c
0032d8: 4a00         tst.b      d0
0032da: 6730         beq.b      $330c
0032dc: 0c4000ff     cmpi.w     #$ff, d0
0032e0: 632a         bls.b      $330c
0032e2: 3018         move.w     (a0)+, d0
0032e4: b059         cmp.w      (a1)+, d0
0032e6: 67f0         beq.b      $32d8
0032e8: 650e         bcs.b      $32f8
0032ea: 0c4000ff     cmpi.w     #$ff, d0
0032ee: 6316         bls.b      $3306
0032f0: 7001         moveq      #$1, d0
0032f2: 205f         movea.l    (a7)+, a0
0032f4: c389         exg.l      d1, a1
0032f6: 4e75         rts        
0032f8: 0c4000ff     cmpi.w     #$ff, d0
0032fc: 6308         bls.b      $3306
0032fe: 70ff         moveq      #$ff, d0
003300: 205f         movea.l    (a7)+, a0
003302: c389         exg.l      d1, a1
003304: 4e75         rts        
003306: 4a29fffe     tst.b      -$2(a1)
00330a: 66f2         bne.b      $32fe
00330c: 7000         moveq      #$0, d0
00330e: 205f         movea.l    (a7)+, a0
003310: c389         exg.l      d1, a1
003312: 4e75         rts        
003314: c389         exg.l      d1, a1
003316: 7000         moveq      #$0, d0
003318: 1018         move.b     (a0)+, d0
00331a: b019         cmp.b      (a1)+, d0
00331c: 56c8fffa     dbne       d0, $3318
003320: 65dc         bcs.b      $32fe
003322: 5240         addq.w     #$1, d0
003324: 205f         movea.l    (a7)+, a0
003326: c389         exg.l      d1, a1
003328: 4e75         rts        
00332a: 2f08         move.l     a0, -(a7)
00332c: 2040         movea.l    d0, a0
00332e: 4a18         tst.b      (a0)+
003330: 670c         beq.b      $333e
003332: 4a18         tst.b      (a0)+
003334: 6708         beq.b      $333e
003336: 4a18         tst.b      (a0)+
003338: 6704         beq.b      $333e
00333a: 4a18         tst.b      (a0)+
00333c: 66f0         bne.b      $332e
00333e: 91c0         suba.l     d0, a0
003340: 2008         move.l     a0, d0
003342: 5380         subq.l     #$1, d0
003344: 205f         movea.l    (a7)+, a0
003346: 4e75         rts        
003348: 2f08         move.l     a0, -(a7)
00334a: 2040         movea.l    d0, a0
00334c: c389         exg.l      d1, a1
00334e: 10d9         move.b     (a1)+, (a0)+
003350: 670c         beq.b      $335e
003352: 10d9         move.b     (a1)+, (a0)+
003354: 6708         beq.b      $335e
003356: 10d9         move.b     (a1)+, (a0)+
003358: 6704         beq.b      $335e
00335a: 10d9         move.b     (a1)+, (a0)+
00335c: 66f0         bne.b      $334e
00335e: 205f         movea.l    (a7)+, a0
003360: c389         exg.l      d1, a1
003362: 4e75         rts        
003364: 2f08         move.l     a0, -(a7)
003366: 2040         movea.l    d0, a0
003368: c389         exg.l      d1, a1
00336a: 4a18         tst.b      (a0)+
00336c: 670c         beq.b      $337a
00336e: 4a18         tst.b      (a0)+
003370: 6708         beq.b      $337a
003372: 4a18         tst.b      (a0)+
003374: 6704         beq.b      $337a
003376: 4a18         tst.b      (a0)+
003378: 66f0         bne.b      $336a
00337a: 1159ffff     move.b     (a1)+, -$1(a0)
00337e: 66ce         bne.b      $334e
003380: 60dc         bra.b      $335e
003382: 2f08         move.l     a0, -(a7)
003384: 2040         movea.l    d0, a0
003386: c389         exg.l      d1, a1
003388: 10d9         move.b     (a1)+, (a0)+
00338a: 6afc         bpl.b      $3388
00338c: 4210         clr.b      (a0)
00338e: 0220007f     andi.b     #$7f, -(a0)
003392: 205f         movea.l    (a7)+, a0
003394: c389         exg.l      d1, a1
003396: 4e75         rts        
003398: 4e550000     link.w     a5, #$0
00339c: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
0033a0: 2040         movea.l    d0, a0
0033a2: 2441         movea.l    d1, a2
0033a4: 242d0008     move.l     $8(a5), d2
0033a8: 6702         beq.b      $33ac
0033aa: 610a         bsr.b      $33b6
0033ac: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
0033b2: 4e5d         unlk       a5
0033b4: 4e75         rts        
0033b6: 4a82         tst.l      d2
0033b8: 674a         beq.b      $3404
0033ba: b1ca         cmpa.l     a2, a0
0033bc: 6248         bhi.b      $3406
0033be: 6744         beq.b      $3404
0033c0: 300a         move.w     a2, d0
0033c2: 08000000     btst.b     #$0, d0
0033c6: 6704         beq.b      $33cc
0033c8: 10da         move.b     (a2)+, (a0)+
0033ca: 5382         subq.l     #$1, d2
0033cc: 3008         move.w     a0, d0
0033ce: 08000000     btst.b     #$0, d0
0033d2: 6624         bne.b      $33f8
0033d4: e28a         lsr.l      #$1, d2
0033d6: 6406         bcc.b      $33de
0033d8: 6104         bsr.b      $33de
0033da: 10da         move.b     (a2)+, (a0)+
0033dc: 4e75         rts        
0033de: e28a         lsr.l      #$1, d2
0033e0: 6406         bcc.b      $33e8
0033e2: 30da         move.w     (a2)+, (a0)+
0033e4: 6002         bra.b      $33e8
0033e6: 20da         move.l     (a2)+, (a0)+
0033e8: 51cafffc     dbra       d2, $33e6
0033ec: 5242         addq.w     #$1, d2
0033ee: 5382         subq.l     #$1, d2
0033f0: 64f4         bcc.b      $33e6
0033f2: 7400         moveq      #$0, d2
0033f4: 4e75         rts        
0033f6: 10da         move.b     (a2)+, (a0)+
0033f8: 51cafffc     dbra       d2, $33f6
0033fc: 5242         addq.w     #$1, d2
0033fe: 5382         subq.l     #$1, d2
003400: 64f4         bcc.b      $33f6
003402: 7400         moveq      #$0, d2
003404: 4e75         rts        
003406: d5c2         adda.l     d2, a2
003408: d1c2         adda.l     d2, a0
00340a: 300a         move.w     a2, d0
00340c: 08000000     btst.b     #$0, d0
003410: 6704         beq.b      $3416
003412: 1122         move.b     -(a2), -(a0)
003414: 5382         subq.l     #$1, d2
003416: 3008         move.w     a0, d0
003418: 08000000     btst.b     #$0, d0
00341c: 6624         bne.b      $3442
00341e: e28a         lsr.l      #$1, d2
003420: 6406         bcc.b      $3428
003422: 6104         bsr.b      $3428
003424: 1122         move.b     -(a2), -(a0)
003426: 4e75         rts        
003428: e28a         lsr.l      #$1, d2
00342a: 6406         bcc.b      $3432
00342c: 3122         move.w     -(a2), -(a0)
00342e: 6002         bra.b      $3432
003430: 2122         move.l     -(a2), -(a0)
003432: 51cafffc     dbra       d2, $3430
003436: 5242         addq.w     #$1, d2
003438: 5382         subq.l     #$1, d2
00343a: 64f4         bcc.b      $3430
00343c: 7400         moveq      #$0, d2
00343e: 4e75         rts        
003440: 1122         move.b     -(a2), -(a0)
003442: 51cafffc     dbra       d2, $3440
003446: 5242         addq.w     #$1, d2
003448: 5382         subq.l     #$1, d2
00344a: 64f4         bcc.b      $3440
00344c: 7400         moveq      #$0, d2
00344e: 4e75         rts        
003450: 48e73800     movem.l    d2-d4, -(a7)
003454: 2400         move.l     d0, d2
003456: 2600         move.l     d0, d3
003458: 4843         swap       d3
00345a: 2801         move.l     d1, d4
00345c: 4844         swap       d4
00345e: c0c1         mulu.w     d1, d0
003460: c2c3         mulu.w     d3, d1
003462: c4c4         mulu.w     d4, d2
003464: c6c4         mulu.w     d4, d3
003466: 4840         swap       d0
003468: d041         add.w      d1, d0
00346a: 7800         moveq      #$0, d4
00346c: d784         addx.l     d4, d3
00346e: d042         add.w      d2, d0
003470: d784         addx.l     d4, d3
003472: 4840         swap       d0
003474: 4241         clr.w      d1
003476: 4841         swap       d1
003478: 4242         clr.w      d2
00347a: 4842         swap       d2
00347c: d282         add.l      d2, d1
00347e: d283         add.l      d3, d1
003480: 4a80         tst.l      d0
003482: 4cdf001c     movem.l    (a7)+, d2-d4
003486: 4e75         rts        
003488: 2f02         move.l     d2, -(a7)
00348a: 7400         moveq      #$0, d2
00348c: 4a80         tst.l      d0
00348e: 6a04         bpl.b      $3494
003490: 4480         neg.l      d0
003492: 7403         moveq      #$3, d2
003494: 4a81         tst.l      d1
003496: 6a06         bpl.b      $349e
003498: 4481         neg.l      d1
00349a: 0a020001     eori.b     #$1, d2
00349e: 6122         bsr.b      $34c2
0034a0: e20a         lsr.b      #$1, d2
0034a2: 6402         bcc.b      $34a6
0034a4: 4480         neg.l      d0
0034a6: e20a         lsr.b      #$1, d2
0034a8: 6402         bcc.b      $34ac
0034aa: 4481         neg.l      d1
0034ac: 241f         move.l     (a7)+, d2
0034ae: 4a80         tst.l      d0
0034b0: 4e75         rts        
0034b2: 61d4         bsr.b      $3488
0034b4: c141         exg.l      d0, d1
0034b6: 4a80         tst.l      d0
0034b8: 4e75         rts        
0034ba: 6106         bsr.b      $34c2
0034bc: c141         exg.l      d0, d1
0034be: 4a80         tst.l      d0
0034c0: 4e75         rts        
0034c2: 48e73800     movem.l    d2-d4, -(a7)
0034c6: 2401         move.l     d1, d2
0034c8: 6606         bne.b      $34d0
0034ca: 81fc0000     divs.w     #$0, d0
0034ce: 606e         bra.b      $353e
0034d0: 5381         subq.l     #$1, d1
0034d2: 676a         beq.b      $353e
0034d4: 2801         move.l     d1, d4
0034d6: 2200         move.l     d0, d1
0034d8: b481         cmp.l      d1, d2
0034da: 650c         bcs.b      $34e8
0034dc: 6704         beq.b      $34e2
0034de: 7000         moveq      #$0, d0
0034e0: 605c         bra.b      $353e
0034e2: 7001         moveq      #$1, d0
0034e4: 9282         sub.l      d2, d1
0034e6: 6056         bra.b      $353e
0034e8: 2602         move.l     d2, d3
0034ea: 6bf6         bmi.b      $34e2
0034ec: c684         and.l      d4, d3
0034ee: 6612         bne.b      $3502
0034f0: e28a         lsr.l      #$1, d2
0034f2: 76ff         moveq      #$ff, d3
0034f4: e28a         lsr.l      #$1, d2
0034f6: 55cbfffc     dbcs       d3, $34f4
0034fa: 4483         neg.l      d3
0034fc: e6a8         lsr.l      d3, d0
0034fe: c284         and.l      d4, d1
003500: 603c         bra.b      $353e
003502: 7000         moveq      #$0, d0
003504: 76ff         moveq      #$ff, d3
003506: e382         asl.l      #$1, d2
003508: 6a06         bpl.b      $3510
00350a: b481         cmp.l      d1, d2
00350c: 620a         bhi.b      $3518
00350e: 600c         bra.b      $351c
003510: b481         cmp.l      d1, d2
003512: 54cbfff2     dbcc       d3, $3506
003516: 6704         beq.b      $351c
003518: 5283         addq.l     #$1, d3
00351a: e28a         lsr.l      #$1, d2
00351c: 4483         neg.l      d3
00351e: 6004         bra.b      $3524
003520: e380         asl.l      #$1, d0
003522: e28a         lsr.l      #$1, d2
003524: 9282         sub.l      d2, d1
003526: 6510         bcs.b      $3538
003528: 5280         addq.l     #$1, d0
00352a: 51cbfff4     dbra       d3, $3520
00352e: 600e         bra.b      $353e
003530: e380         asl.l      #$1, d0
003532: e28a         lsr.l      #$1, d2
003534: d282         add.l      d2, d1
003536: 65f0         bcs.b      $3528
003538: 51cbfff6     dbra       d3, $3530
00353c: d282         add.l      d2, d1
00353e: 4cdf001c     movem.l    (a7)+, d2-d4
003542: 4a80         tst.l      d0
003544: 4e75         rts        
003546: 6172         bsr.b      $35ba
003548: 6363         bls.b      $35ad
00354a: 6172         bsr.b      $35be
00354c: 6472         bcc.b      $35c0
00354e: 000000fa     ori.b      #$fa, d0
003552: c811         and.b      (a1), d4
