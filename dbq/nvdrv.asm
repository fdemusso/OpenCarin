00003c: 00640080     ori.w      #$80, -(a4)
000040: 009600ac00c0 ori.l      #$ac00c0, (a6)
000046: 0072011201fa023402d8027c ori.w      #$112, ([$23402d8], $27c)
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
000078: 6100013a     bsr.w      $1b4
00007c: 588f         addq.l     #$4, a7
00007e: 60d2         bra.b      $52
000080: 2f02         move.l     d2, -(a7)
000082: 2f00         move.l     d0, -(a7)
000084: 2f0d         move.l     a5, -(a7)
000086: 2f0c         move.l     a4, -(a7)
000088: 220a         move.l     a2, d1
00008a: 2009         move.l     a1, d0
00008c: 6100016c     bsr.w      $1fa
000090: 4fef0010     lea.l      $10(a7), a7
000094: 60bc         bra.b      $52
000096: 2f02         move.l     d2, -(a7)
000098: 2f00         move.l     d0, -(a7)
00009a: 2f0d         move.l     a5, -(a7)
00009c: 2f0c         move.l     a4, -(a7)
00009e: 220a         move.l     a2, d1
0000a0: 2009         move.l     a1, d0
0000a2: 61000190     bsr.w      $234
0000a6: 4fef0010     lea.l      $10(a7), a7
0000aa: 60a6         bra.b      $52
0000ac: 2f00         move.l     d0, -(a7)
0000ae: 2f0d         move.l     a5, -(a7)
0000b0: 2f0c         move.l     a4, -(a7)
0000b2: 220a         move.l     a2, d1
0000b4: 2009         move.l     a1, d0
0000b6: 61000220     bsr.w      $2d8
0000ba: 4fef000c     lea.l      $c(a7), a7
0000be: 6092         bra.b      $52
0000c0: 2f00         move.l     d0, -(a7)
0000c2: 2f0d         move.l     a5, -(a7)
0000c4: 2f0c         move.l     a4, -(a7)
0000c6: 220a         move.l     a2, d1
0000c8: 2009         move.l     a1, d0
0000ca: 610001b0     bsr.w      $27c
0000ce: 4fef000c     lea.l      $c(a7), a7
0000d2: 6000ff7e     bra.w      $52
0000d6: 2f0e         move.l     a6, -(a7)
0000d8: 220b         move.l     a3, d1
0000da: 200a         move.l     a2, d0
0000dc: 6100009e     bsr.w      $17c
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
0000fe: 61000098     bsr.w      $198
000102: 0c80ffffffff cmpi.l     #$ffffffff, d0
000108: 67e6         beq.b      $f0
00010a: 588f         addq.l     #$4, a7
00010c: 023c         .dc.w      $023c
00010e: fffe         dc.w       $fffe
000110: 4e75         rts        
000112: 4e75         rts        
000114: 4e550000     link.w     a5, #$0
000118: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00011c: 598f         subq.l     #$4, a7
00011e: 266f0004     movea.l    $4(a7), a3
000122: 246f0008     movea.l    $8(a7), a2
000126: 4a92         tst.l      (a2)
000128: 66000020     bne.w      $14a
00012c: 41d7         lea.l      (a7), a0
00012e: 2208         move.l     a0, d1
000130: 7000         moveq      #$0, d0
000132: 302b004a     move.w     $4a(a3), d0
000136: 610010a2     bsr.w      $11da
00013a: 2480         move.l     d0, (a2)
00013c: 6600000c     bne.w      $14a
000140: 2017         move.l     (a7), d0
000142: 4480         neg.l      d0
000144: 588f         addq.l     #$4, a7
000146: 6000002a     bra.w      $172
00014a: 256b004c0032 move.l     $4c(a3), $32(a2)
000150: 7000         moveq      #$0, d0
000152: 302b004a     move.w     $4a(a3), d0
000156: 25400036     move.l     d0, $36(a2)
00015a: 256b0050003a move.l     $50(a3), $3a(a2)
000160: 422a00ba     clr.b      $ba(a2)
000164: 200a         move.l     a2, d0
000166: 61000808     bsr.w      $970
00016a: 588f         addq.l     #$4, a7
00016c: 60000004     bra.w      $172
000170: 4e71         nop        
000172: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
000178: 4e5d         unlk       a5
00017a: 4e75         rts        
00017c: 4e550000     link.w     a5, #$0
000180: 48e7c020     movem.l    d0-d1/a2, -(a7)
000184: 2440         movea.l    d0, a2
000186: 70ff         moveq      #$ff, d0
000188: 60000004     bra.w      $18e
00018c: 4e71         nop        
00018e: 4ced0400fffc movem.l    -$4(a5), a2
000194: 4e5d         unlk       a5
000196: 4e75         rts        
000198: 4e550000     link.w     a5, #$0
00019c: 48e7c020     movem.l    d0-d1/a2, -(a7)
0001a0: 2440         movea.l    d0, a2
0001a2: 70ff         moveq      #$ff, d0
0001a4: 60000004     bra.w      $1aa
0001a8: 4e71         nop        
0001aa: 4ced0400fffc movem.l    -$4(a5), a2
0001b0: 4e5d         unlk       a5
0001b2: 4e75         rts        
0001b4: 4e550000     link.w     a5, #$0
0001b8: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
0001bc: 2457         movea.l    (a7), a2
0001be: 266f0004     movea.l    $4(a7), a3
0001c2: 60000008     bra.w      $1cc
0001c6: 7001         moveq      #$1, d0
0001c8: 610010e2     bsr.w      $12ac
0001cc: 4a2b00ba     tst.b      $ba(a3)
0001d0: 6600fff4     bne.w      $1c6
0001d4: 4aaa0030     tst.l      $30(a2)
0001d8: 6600000e     bne.w      $1e8
0001dc: 2213         move.l     (a3), d1
0001de: 7000         moveq      #$0, d0
0001e0: 302a004a     move.w     $4a(a2), d0
0001e4: 61001046     bsr.w      $122c
0001e8: 7000         moveq      #$0, d0
0001ea: 60000004     bra.w      $1f0
0001ee: 4e71         nop        
0001f0: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0001f6: 4e5d         unlk       a5
0001f8: 4e75         rts        
0001fa: 4e550000     link.w     a5, #$0
0001fe: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000202: 282f0024     move.l     $24(a7), d4
000206: 246f0004     movea.l    $4(a7), a2
00020a: 2f04         move.l     d4, -(a7)
00020c: 2012         move.l     (a2), d0
00020e: d0af002c     add.l      $2c(a7), d0
000212: 2200         move.l     d0, d1
000214: 206f0004     movea.l    $4(a7), a0
000218: 2028000e     move.l     $e(a0), d0
00021c: 6100120a     bsr.w      $1428
000220: 588f         addq.l     #$4, a7
000222: 2004         move.l     d4, d0
000224: 60000004     bra.w      $22a
000228: 4e71         nop        
00022a: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
000230: 4e5d         unlk       a5
000232: 4e75         rts        
000234: 4e550000     link.w     a5, #$0
000238: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
00023c: 246f0004     movea.l    $4(a7), a2
000240: 60000008     bra.w      $24a
000244: 7001         moveq      #$1, d0
000246: 61001064     bsr.w      $12ac
00024a: 4a2a00ba     tst.b      $ba(a2)
00024e: 6600fff4     bne.w      $244
000252: 2f2f0020     move.l     $20(a7), -(a7)
000256: 206f0004     movea.l    $4(a7), a0
00025a: 2228000e     move.l     $e(a0), d1
00025e: 2012         move.l     (a2), d0
000260: d0af0028     add.l      $28(a7), d0
000264: 610011c2     bsr.w      $1428
000268: 588f         addq.l     #$4, a7
00026a: 7000         moveq      #$0, d0
00026c: 60000004     bra.w      $272
000270: 4e71         nop        
000272: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000278: 4e5d         unlk       a5
00027a: 4e75         rts        
00027c: 4e550000     link.w     a5, #$0
000280: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
000284: 2440         movea.l    d0, a2
000286: 2641         movea.l    d1, a3
000288: 284b         movea.l    a3, a4
00028a: 6000002a     bra.w      $2b6
00028e: 200c         move.l     a4, d0
000290: 61000682     bsr.w      $914
000294: 197c000100ba move.b     #$1, $ba(a4)
00029a: 200c         move.l     a4, d0
00029c: 6100009a     bsr.w      $338
0002a0: 2800         move.l     d0, d4
0002a2: 422c00ba     clr.b      $ba(a4)
0002a6: 2004         move.l     d4, d0
0002a8: 60000024     bra.w      $2ce
0002ac: 203cffffff30 move.l     #$ffffff30, d0
0002b2: 6000001a     bra.w      $2ce
0002b6: 302f002a     move.w     $2a(a7), d0
0002ba: 0c40ff20     cmpi.w     #$ff20, d0
0002be: 6700ffd4     beq.w      $294
0002c2: 0c40ff26     cmpi.w     #$ff26, d0
0002c6: 6700ffc6     beq.w      $28e
0002ca: 6000ffe0     bra.w      $2ac
0002ce: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
0002d4: 4e5d         unlk       a5
0002d6: 4e75         rts        
0002d8: 4e550000     link.w     a5, #$0
0002dc: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
0002e0: 2440         movea.l    d0, a2
0002e2: 2641         movea.l    d1, a3
0002e4: 518f         subq.l     #$8, a7
0002e6: 4297         clr.l      (a7)
0002e8: 2f6a000a002c move.l     $a(a2), $2c(a7)
0002ee: 206f002c     movea.l    $2c(a7), a0
0002f2: 2f6800200004 move.l     $20(a0), $4(a7)
0002f8: 6000001a     bra.w      $314
0002fc: 41fa0bf2     lea.l      $ef0(pc), a0
000300: 226f0004     movea.l    $4(a7), a1
000304: 2288         move.l     a0, (a1)
000306: 6000001c     bra.w      $324
00030a: 2ebcffffff30 move.l     #$ffffff30, (a7)
000310: 60000012     bra.w      $324
000314: 302f0032     move.w     $32(a7), d0
000318: 0c40ff31     cmpi.w     #$ff31, d0
00031c: 6700ffde     beq.w      $2fc
000320: 6000ffe8     bra.w      $30a
000324: 2017         move.l     (a7), d0
000326: 508f         addq.l     #$8, a7
000328: 60000004     bra.w      $32e
00032c: 4e71         nop        
00032e: 4ced0f00fff0 movem.l    -$10(a5), a0-a3
000334: 4e5d         unlk       a5
000336: 4e75         rts        
000338: 4e550000     link.w     a5, #$0
00033c: 48e7ccf8     movem.l    d0-d1/d4-d5/a0-a4, -(a7)
000340: 2440         movea.l    d0, a2
000342: 4fefffde     lea.l      -$22(a7), a7
000346: 422f0021     clr.b      $21(a7)
00034a: 7032         moveq      #$32, d0
00034c: d08a         add.l      a2, d0
00034e: 2640         movea.l    d0, a3
000350: 2852         movea.l    (a2), a4
000352: 703e         moveq      #$3e, d0
000354: d08a         add.l      a2, d0
000356: 2f40000c     move.l     d0, $c(a7)
00035a: 707c         moveq      #$7c, d0
00035c: d08a         add.l      a2, d0
00035e: 2f400008     move.l     d0, $8(a7)
000362: 48780008     pea.l      $8.w
000366: 486f0014     pea.l      $14(a7)
00036a: 7200         moveq      #$0, d1
00036c: 200b         move.l     a3, d0
00036e: 61000c6a     bsr.w      $fda
000372: 508f         addq.l     #$8, a7
000374: 48780008     pea.l      $8.w
000378: 220c         move.l     a4, d1
00037a: 41ef001c     lea.l      $1c(a7), a0
00037e: 2008         move.l     a0, d0
000380: 610010a6     bsr.w      $1428
000384: 588f         addq.l     #$4, a7
000386: 0c2f00de0010 cmpi.b     #$de, $10(a7)
00038c: 6600000c     bne.w      $39a
000390: 0c2f00ad0011 cmpi.b     #$ad, $11(a7)
000396: 6700003e     beq.w      $3d6
00039a: 0c2f00ad0010 cmpi.b     #$ad, $10(a7)
0003a0: 6600000c     bne.w      $3ae
0003a4: 0c2f00de0011 cmpi.b     #$de, $11(a7)
0003aa: 6700002a     beq.w      $3d6
0003ae: 0c2f00de0010 cmpi.b     #$de, $10(a7)
0003b4: 6600000c     bne.w      $3c2
0003b8: 0c2f00de0011 cmpi.b     #$de, $11(a7)
0003be: 67000016     beq.w      $3d6
0003c2: 0c2f00ad0010 cmpi.b     #$ad, $10(a7)
0003c8: 6600005c     bne.w      $426
0003cc: 0c2f00ad0011 cmpi.b     #$ad, $11(a7)
0003d2: 66000052     bne.w      $426
0003d6: 0c2f00c00012 cmpi.b     #$c0, $12(a7)
0003dc: 6600000c     bne.w      $3ea
0003e0: 0c2f00de0013 cmpi.b     #$de, $13(a7)
0003e6: 6700007c     beq.w      $464
0003ea: 0c2f00de0012 cmpi.b     #$de, $12(a7)
0003f0: 6600000c     bne.w      $3fe
0003f4: 0c2f00c00013 cmpi.b     #$c0, $13(a7)
0003fa: 67000068     beq.w      $464
0003fe: 0c2f00c00012 cmpi.b     #$c0, $12(a7)
000404: 6600000c     bne.w      $412
000408: 0c2f00c00013 cmpi.b     #$c0, $13(a7)
00040e: 67000054     beq.w      $464
000412: 0c2f00de0012 cmpi.b     #$de, $12(a7)
000418: 6600000c     bne.w      $426
00041c: 0c2f00de0013 cmpi.b     #$de, $13(a7)
000422: 67000040     beq.w      $464
000426: 1f7c00010021 move.b     #$1, $21(a7)
00042c: 7000         moveq      #$0, d0
00042e: 2800         move.l     d0, d4
000430: 2a00         move.l     d0, d5
000432: 2f7cdedec0c00010 move.l     #$dedec0c0, $10(a7)
00043a: 48780008     pea.l      $8.w
00043e: 486f0014     pea.l      $14(a7)
000442: 7200         moveq      #$0, d1
000444: 200b         move.l     a3, d0
000446: 61000b0e     bsr.w      $f56
00044a: 508f         addq.l     #$8, a7
00044c: 4a80         tst.l      d0
00044e: 67000010     beq.w      $460
000452: 203cfffff7f9 move.l     #$fffff7f9, d0
000458: 4fef0022     lea.l      $22(a7), a7
00045c: 600004ac     bra.w      $90a
000460: 6000012e     bra.w      $590
000464: 7200         moveq      #$0, d1
000466: 200a         move.l     a2, d0
000468: 61000844     bsr.w      $cae
00046c: 2800         move.l     d0, d4
00046e: 7201         moveq      #$1, d1
000470: 200a         move.l     a2, d0
000472: 6100083a     bsr.w      $cae
000476: 2a00         move.l     d0, d5
000478: 6000010a     bra.w      $584
00047c: 4a84         tst.l      d4
00047e: 67000008     beq.w      $488
000482: 4a85         tst.l      d5
000484: 6600000c     bne.w      $492
000488: 1f7c00010021 move.b     #$1, $21(a7)
00048e: 60000100     bra.w      $590
000492: 4878003e     pea.l      $3e.w
000496: 2f2f000c     move.l     $c(a7), -(a7)
00049a: 2205         move.l     d5, d1
00049c: 200b         move.l     a3, d0
00049e: 61000b3a     bsr.w      $fda
0004a2: 508f         addq.l     #$8, a7
0004a4: 4878003e     pea.l      $3e.w
0004a8: 200c         move.l     a4, d0
0004aa: d084         add.l      d4, d0
0004ac: 2200         move.l     d0, d1
0004ae: 202f0010     move.l     $10(a7), d0
0004b2: 61000f74     bsr.w      $1428
0004b6: 588f         addq.l     #$4, a7
0004b8: 206f0008     movea.l    $8(a7), a0
0004bc: 226f000c     movea.l    $c(a7), a1
0004c0: 20290028     move.l     $28(a1), d0
0004c4: b0a80028     cmp.l      $28(a0), d0
0004c8: 6700000c     beq.w      $4d6
0004cc: 1f7c00010021 move.b     #$1, $21(a7)
0004d2: 60000088     bra.w      $55c
0004d6: 206f000c     movea.l    $c(a7), a0
0004da: 2f6800200004 move.l     $20(a0), $4(a7)
0004e0: 206f0008     movea.l    $8(a7), a0
0004e4: 226f000c     movea.l    $c(a7), a1
0004e8: 236800200020 move.l     $20(a0), $20(a1)
0004ee: 206f000c     movea.l    $c(a7), a0
0004f2: 2ea80024     move.l     $24(a0), (a7)
0004f6: 206f0008     movea.l    $8(a7), a0
0004fa: 226f000c     movea.l    $c(a7), a1
0004fe: 236800240024 move.l     $24(a0), $24(a1)
000504: 4878003e     pea.l      $3e.w
000508: 222f0010     move.l     $10(a7), d1
00050c: 200c         move.l     a4, d0
00050e: d084         add.l      d4, d0
000510: 61000f16     bsr.w      $1428
000514: 588f         addq.l     #$4, a7
000516: 206f000c     movea.l    $c(a7), a0
00051a: 2f280028     move.l     $28(a0), -(a7)
00051e: 48744800     pea.l      (a4, d4.l)
000522: 2205         move.l     d5, d1
000524: 200b         move.l     a3, d0
000526: 61000b00     bsr.w      $1028
00052a: 508f         addq.l     #$8, a7
00052c: 4a80         tst.l      d0
00052e: 67000008     beq.w      $538
000532: 1f7c00010021 move.b     #$1, $21(a7)
000538: 206f000c     movea.l    $c(a7), a0
00053c: 216f00040020 move.l     $4(a7), $20(a0)
000542: 206f000c     movea.l    $c(a7), a0
000546: 21570024     move.l     (a7), $24(a0)
00054a: 4878003e     pea.l      $3e.w
00054e: 222f0010     move.l     $10(a7), d1
000552: 200c         move.l     a4, d0
000554: d084         add.l      d4, d0
000556: 61000ed0     bsr.w      $1428
00055a: 588f         addq.l     #$4, a7
00055c: 4a2f0021     tst.b      $21(a7)
000560: 67000006     beq.w      $568
000564: 6000002a     bra.w      $590
000568: 2f04         move.l     d4, -(a7)
00056a: 7200         moveq      #$0, d1
00056c: 200a         move.l     a2, d0
00056e: 610007d6     bsr.w      $d46
000572: 588f         addq.l     #$4, a7
000574: 2800         move.l     d0, d4
000576: 2f05         move.l     d5, -(a7)
000578: 7201         moveq      #$1, d1
00057a: 200a         move.l     a2, d0
00057c: 610007c8     bsr.w      $d46
000580: 588f         addq.l     #$4, a7
000582: 2a00         move.l     d0, d5
000584: 4a84         tst.l      d4
000586: 6600fef4     bne.w      $47c
00058a: 4a85         tst.l      d5
00058c: 6600feee     bne.w      $47c
000590: 4a2f0021     tst.b      $21(a7)
000594: 6600000c     bne.w      $5a2
000598: 7000         moveq      #$0, d0
00059a: 4fef0022     lea.l      $22(a7), a7
00059e: 6000036a     bra.w      $90a
0005a2: 0c2f00de0010 cmpi.b     #$de, $10(a7)
0005a8: 6600000c     bne.w      $5b6
0005ac: 0c2f00ad0011 cmpi.b     #$ad, $11(a7)
0005b2: 67000016     beq.w      $5ca
0005b6: 0c2f00ad0010 cmpi.b     #$ad, $10(a7)
0005bc: 6600004c     bne.w      $60a
0005c0: 0c2f00de0011 cmpi.b     #$de, $11(a7)
0005c6: 66000042     bne.w      $60a
0005ca: 0c2f00de0010 cmpi.b     #$de, $10(a7)
0005d0: 6600000c     bne.w      $5de
0005d4: 1f7c00de0011 move.b     #$de, $11(a7)
0005da: 60000008     bra.w      $5e4
0005de: 1f7c00ad0011 move.b     #$ad, $11(a7)
0005e4: 48780008     pea.l      $8.w
0005e8: 486f0014     pea.l      $14(a7)
0005ec: 7200         moveq      #$0, d1
0005ee: 200b         move.l     a3, d0
0005f0: 61000964     bsr.w      $f56
0005f4: 508f         addq.l     #$8, a7
0005f6: 4a80         tst.l      d0
0005f8: 67000010     beq.w      $60a
0005fc: 203cfffff7f9 move.l     #$fffff7f9, d0
000602: 4fef0022     lea.l      $22(a7), a7
000606: 60000302     bra.w      $90a
00060a: 4a85         tst.l      d5
00060c: 66000010     bne.w      $61e
000610: 7201         moveq      #$1, d1
000612: 200a         move.l     a2, d0
000614: 61000892     bsr.w      $ea8
000618: 2a00         move.l     d0, d5
00061a: 60000010     bra.w      $62c
00061e: 2f05         move.l     d5, -(a7)
000620: 7201         moveq      #$1, d1
000622: 200a         move.l     a2, d0
000624: 61000810     bsr.w      $e36
000628: 588f         addq.l     #$4, a7
00062a: 2a00         move.l     d0, d5
00062c: 4a85         tst.l      d5
00062e: 6600006e     bne.w      $69e
000632: 0c2f00c00012 cmpi.b     #$c0, $12(a7)
000638: 6600000c     bne.w      $646
00063c: 0c2f00de0013 cmpi.b     #$de, $13(a7)
000642: 67000016     beq.w      $65a
000646: 0c2f00de0012 cmpi.b     #$de, $12(a7)
00064c: 6600004c     bne.w      $69a
000650: 0c2f00c00013 cmpi.b     #$c0, $13(a7)
000656: 66000042     bne.w      $69a
00065a: 0c2f00c00012 cmpi.b     #$c0, $12(a7)
000660: 6600000c     bne.w      $66e
000664: 1f7c00c00013 move.b     #$c0, $13(a7)
00066a: 60000008     bra.w      $674
00066e: 1f7c00de0013 move.b     #$de, $13(a7)
000674: 48780008     pea.l      $8.w
000678: 486f0014     pea.l      $14(a7)
00067c: 7200         moveq      #$0, d1
00067e: 200b         move.l     a3, d0
000680: 610008d4     bsr.w      $f56
000684: 508f         addq.l     #$8, a7
000686: 4a80         tst.l      d0
000688: 67000010     beq.w      $69a
00068c: 203cfffff7f9 move.l     #$fffff7f9, d0
000692: 4fef0022     lea.l      $22(a7), a7
000696: 60000272     bra.w      $90a
00069a: 6000006a     bra.w      $706
00069e: 4878003e     pea.l      $3e.w
0006a2: 2f2f000c     move.l     $c(a7), -(a7)
0006a6: 2205         move.l     d5, d1
0006a8: 200b         move.l     a3, d0
0006aa: 6100092e     bsr.w      $fda
0006ae: 508f         addq.l     #$8, a7
0006b0: 206f0008     movea.l    $8(a7), a0
0006b4: 0c2800aa002c cmpi.b     #$aa, $2c(a0)
0006ba: 66000010     bne.w      $6cc
0006be: 206f0008     movea.l    $8(a7), a0
0006c2: 117c0055003d move.b     #$55, $3d(a0)
0006c8: 60000016     bra.w      $6e0
0006cc: 206f0008     movea.l    $8(a7), a0
0006d0: 117c0055002c move.b     #$55, $2c(a0)
0006d6: 206f0008     movea.l    $8(a7), a0
0006da: 117c00aa003d move.b     #$aa, $3d(a0)
0006e0: 4878003e     pea.l      $3e.w
0006e4: 2f2f000c     move.l     $c(a7), -(a7)
0006e8: 2205         move.l     d5, d1
0006ea: 200b         move.l     a3, d0
0006ec: 61000868     bsr.w      $f56
0006f0: 508f         addq.l     #$8, a7
0006f2: 4a80         tst.l      d0
0006f4: 67000010     beq.w      $706
0006f8: 203cfffff7f9 move.l     #$fffff7f9, d0
0006fe: 4fef0022     lea.l      $22(a7), a7
000702: 60000206     bra.w      $90a
000706: 60000144     bra.w      $84c
00070a: 4878003e     pea.l      $3e.w
00070e: 200c         move.l     a4, d0
000710: d084         add.l      d4, d0
000712: 2200         move.l     d0, d1
000714: 202f0010     move.l     $10(a7), d0
000718: 61000d0e     bsr.w      $1428
00071c: 588f         addq.l     #$4, a7
00071e: 206f000c     movea.l    $c(a7), a0
000722: 0c2800aa002c cmpi.b     #$aa, $2c(a0)
000728: 66000010     bne.w      $73a
00072c: 206f000c     movea.l    $c(a7), a0
000730: 117c0055003d move.b     #$55, $3d(a0)
000736: 60000016     bra.w      $74e
00073a: 206f000c     movea.l    $c(a7), a0
00073e: 117c0055002c move.b     #$55, $2c(a0)
000744: 206f000c     movea.l    $c(a7), a0
000748: 117c00aa003d move.b     #$aa, $3d(a0)
00074e: 4878003e     pea.l      $3e.w
000752: 222f0010     move.l     $10(a7), d1
000756: 200c         move.l     a4, d0
000758: d084         add.l      d4, d0
00075a: 61000ccc     bsr.w      $1428
00075e: 588f         addq.l     #$4, a7
000760: 206f000c     movea.l    $c(a7), a0
000764: 2f280028     move.l     $28(a0), -(a7)
000768: 48744800     pea.l      (a4, d4.l)
00076c: 2204         move.l     d4, d1
00076e: 200b         move.l     a3, d0
000770: 610007e4     bsr.w      $f56
000774: 508f         addq.l     #$8, a7
000776: 4a80         tst.l      d0
000778: 67000010     beq.w      $78a
00077c: 203cfffff7f9 move.l     #$fffff7f9, d0
000782: 4fef0022     lea.l      $22(a7), a7
000786: 60000182     bra.w      $90a
00078a: 4a85         tst.l      d5
00078c: 66000046     bne.w      $7d4
000790: 0c2f00c00013 cmpi.b     #$c0, $13(a7)
000796: 6600000c     bne.w      $7a4
00079a: 1f7c00de0012 move.b     #$de, $12(a7)
0007a0: 60000008     bra.w      $7aa
0007a4: 1f7c00c00012 move.b     #$c0, $12(a7)
0007aa: 48780008     pea.l      $8.w
0007ae: 486f0014     pea.l      $14(a7)
0007b2: 7200         moveq      #$0, d1
0007b4: 200b         move.l     a3, d0
0007b6: 6100079e     bsr.w      $f56
0007ba: 508f         addq.l     #$8, a7
0007bc: 4a80         tst.l      d0
0007be: 67000010     beq.w      $7d0
0007c2: 203cfffff7f9 move.l     #$fffff7f9, d0
0007c8: 4fef0022     lea.l      $22(a7), a7
0007cc: 6000013c     bra.w      $90a
0007d0: 6000006a     bra.w      $83c
0007d4: 4878003e     pea.l      $3e.w
0007d8: 2f2f000c     move.l     $c(a7), -(a7)
0007dc: 2205         move.l     d5, d1
0007de: 200b         move.l     a3, d0
0007e0: 610007f8     bsr.w      $fda
0007e4: 508f         addq.l     #$8, a7
0007e6: 206f0008     movea.l    $8(a7), a0
0007ea: 0c280055003d cmpi.b     #$55, $3d(a0)
0007f0: 66000010     bne.w      $802
0007f4: 206f0008     movea.l    $8(a7), a0
0007f8: 117c0055002c move.b     #$55, $2c(a0)
0007fe: 60000016     bra.w      $816
000802: 206f0008     movea.l    $8(a7), a0
000806: 117c00aa002c move.b     #$aa, $2c(a0)
00080c: 206f0008     movea.l    $8(a7), a0
000810: 117c00aa003d move.b     #$aa, $3d(a0)
000816: 4878003e     pea.l      $3e.w
00081a: 2f2f000c     move.l     $c(a7), -(a7)
00081e: 2205         move.l     d5, d1
000820: 200b         move.l     a3, d0
000822: 61000732     bsr.w      $f56
000826: 508f         addq.l     #$8, a7
000828: 4a80         tst.l      d0
00082a: 67000010     beq.w      $83c
00082e: 203cfffff7f9 move.l     #$fffff7f9, d0
000834: 4fef0022     lea.l      $22(a7), a7
000838: 600000d0     bra.w      $90a
00083c: 2a04         move.l     d4, d5
00083e: 2f04         move.l     d4, -(a7)
000840: 7200         moveq      #$0, d1
000842: 200a         move.l     a2, d0
000844: 61000500     bsr.w      $d46
000848: 588f         addq.l     #$4, a7
00084a: 2800         move.l     d0, d4
00084c: 4a84         tst.l      d4
00084e: 6600feba     bne.w      $70a
000852: 4878003e     pea.l      $3e.w
000856: 202f0020     move.l     $20(a7), d0
00085a: 48740800     pea.l      (a4, d0.l)
00085e: 222f0024     move.l     $24(a7), d1
000862: 200b         move.l     a3, d0
000864: 610006f0     bsr.w      $f56
000868: 508f         addq.l     #$8, a7
00086a: 4a80         tst.l      d0
00086c: 67000010     beq.w      $87e
000870: 203cfffff7f9 move.l     #$fffff7f9, d0
000876: 4fef0022     lea.l      $22(a7), a7
00087a: 6000008e     bra.w      $90a
00087e: 2f6f001c0014 move.l     $1c(a7), $14(a7)
000884: 48780008     pea.l      $8.w
000888: 486f0014     pea.l      $14(a7)
00088c: 7200         moveq      #$0, d1
00088e: 200b         move.l     a3, d0
000890: 610006c4     bsr.w      $f56
000894: 508f         addq.l     #$8, a7
000896: 4a80         tst.l      d0
000898: 67000010     beq.w      $8aa
00089c: 203cfffff7f9 move.l     #$fffff7f9, d0
0008a2: 4fef0022     lea.l      $22(a7), a7
0008a6: 60000062     bra.w      $90a
0008aa: 0c2f00de0011 cmpi.b     #$de, $11(a7)
0008b0: 6600000c     bne.w      $8be
0008b4: 1f7c00ad0010 move.b     #$ad, $10(a7)
0008ba: 60000008     bra.w      $8c4
0008be: 1f7c00de0010 move.b     #$de, $10(a7)
0008c4: 48780008     pea.l      $8.w
0008c8: 486f0014     pea.l      $14(a7)
0008cc: 7200         moveq      #$0, d1
0008ce: 200b         move.l     a3, d0
0008d0: 61000684     bsr.w      $f56
0008d4: 508f         addq.l     #$8, a7
0008d6: 4a80         tst.l      d0
0008d8: 67000010     beq.w      $8ea
0008dc: 203cfffff7f9 move.l     #$fffff7f9, d0
0008e2: 4fef0022     lea.l      $22(a7), a7
0008e6: 60000022     bra.w      $90a
0008ea: 703e         moveq      #$3e, d0
0008ec: d0af0014     add.l      $14(a7), d0
0008f0: 2f00         move.l     d0, -(a7)
0008f2: 4854         pea.l      (a4)
0008f4: 7200         moveq      #$0, d1
0008f6: 200b         move.l     a3, d0
0008f8: 610006e0     bsr.w      $fda
0008fc: 508f         addq.l     #$8, a7
0008fe: 7000         moveq      #$0, d0
000900: 4fef0022     lea.l      $22(a7), a7
000904: 60000004     bra.w      $90a
000908: 4e71         nop        
00090a: 4ced1f32ffe0 movem.l    -$20(a5), d1/d4-d5/a0-a4
000910: 4e5d         unlk       a5
000912: 4e75         rts        
000914: 4e550000     link.w     a5, #$0
000918: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
00091c: 598f         subq.l     #$4, a7
00091e: 206f0004     movea.l    $4(a7), a0
000922: 2e90         move.l     (a0), (a7)
000924: 2457         movea.l    (a7), a2
000926: 24bcdeadc0de move.l     #$deadc0de, (a2)
00092c: 257c000000080004 move.l     #$8, $4(a2)
000934: 202a0004     move.l     $4(a2), d0
000938: d097         add.l      (a7), d0
00093a: 2640         movea.l    d0, a3
00093c: 16bc00ff     move.b     #$ff, (a3)
000940: 206f0004     movea.l    $4(a7), a0
000944: 20280036     move.l     $36(a0), d0
000948: 90aa0004     sub.l      $4(a2), d0
00094c: 27400028     move.l     d0, $28(a3)
000950: 276a00040020 move.l     $4(a2), $20(a3)
000956: 276a00040024 move.l     $4(a2), $24(a3)
00095c: 7000         moveq      #$0, d0
00095e: 588f         addq.l     #$4, a7
000960: 60000004     bra.w      $966
000964: 4e71         nop        
000966: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00096c: 4e5d         unlk       a5
00096e: 4e75         rts        
000970: 4e550000     link.w     a5, #$0
000974: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
000978: 2440         movea.l    d0, a2
00097a: 4fefff36     lea.l      -$ca(a7), a7
00097e: 7032         moveq      #$32, d0
000980: d08a         add.l      a2, d0
000982: 2640         movea.l    d0, a3
000984: 2852         movea.l    (a2), a4
000986: 48780008     pea.l      $8.w
00098a: 486f00c6     pea.l      $c6(a7)
00098e: 7200         moveq      #$0, d1
000990: 200b         move.l     a3, d0
000992: 61000646     bsr.w      $fda
000996: 508f         addq.l     #$8, a7
000998: 0c2f00de00c2 cmpi.b     #$de, $c2(a7)
00099e: 6600000c     bne.w      $9ac
0009a2: 0c2f00ad00c3 cmpi.b     #$ad, $c3(a7)
0009a8: 67000016     beq.w      $9c0
0009ac: 0c2f00ad00c2 cmpi.b     #$ad, $c2(a7)
0009b2: 66000052     bne.w      $a06
0009b6: 0c2f00de00c3 cmpi.b     #$de, $c3(a7)
0009bc: 66000048     bne.w      $a06
0009c0: 0c2f00c000c4 cmpi.b     #$c0, $c4(a7)
0009c6: 6600000c     bne.w      $9d4
0009ca: 0c2f00de00c5 cmpi.b     #$de, $c5(a7)
0009d0: 67000016     beq.w      $9e8
0009d4: 0c2f00de00c4 cmpi.b     #$de, $c4(a7)
0009da: 6600002a     bne.w      $a06
0009de: 0c2f00c000c5 cmpi.b     #$c0, $c5(a7)
0009e4: 66000020     bne.w      $a06
0009e8: 703e         moveq      #$3e, d0
0009ea: d0af00c6     add.l      $c6(a7), d0
0009ee: 2f00         move.l     d0, -(a7)
0009f0: 4854         pea.l      (a4)
0009f2: 7200         moveq      #$0, d1
0009f4: 200b         move.l     a3, d0
0009f6: 610005e2     bsr.w      $fda
0009fa: 508f         addq.l     #$8, a7
0009fc: 7000         moveq      #$0, d0
0009fe: 4fef00ca     lea.l      $ca(a7), a7
000a02: 600002a0     bra.w      $ca4
000a06: 0c2f00de00c2 cmpi.b     #$de, $c2(a7)
000a0c: 6600000c     bne.w      $a1a
000a10: 0c2f00ad00c3 cmpi.b     #$ad, $c3(a7)
000a16: 6700003e     beq.w      $a56
000a1a: 0c2f00ad00c2 cmpi.b     #$ad, $c2(a7)
000a20: 6600000c     bne.w      $a2e
000a24: 0c2f00de00c3 cmpi.b     #$de, $c3(a7)
000a2a: 6700002a     beq.w      $a56
000a2e: 0c2f00de00c2 cmpi.b     #$de, $c2(a7)
000a34: 6600000c     bne.w      $a42
000a38: 0c2f00de00c3 cmpi.b     #$de, $c3(a7)
000a3e: 67000016     beq.w      $a56
000a42: 0c2f00ad00c2 cmpi.b     #$ad, $c2(a7)
000a48: 6600006c     bne.w      $ab6
000a4c: 0c2f00ad00c3 cmpi.b     #$ad, $c3(a7)
000a52: 66000062     bne.w      $ab6
000a56: 0c2f00c000c4 cmpi.b     #$c0, $c4(a7)
000a5c: 6600000c     bne.w      $a6a
000a60: 0c2f00de00c5 cmpi.b     #$de, $c5(a7)
000a66: 6700003e     beq.w      $aa6
000a6a: 0c2f00de00c4 cmpi.b     #$de, $c4(a7)
000a70: 6600000c     bne.w      $a7e
000a74: 0c2f00c000c5 cmpi.b     #$c0, $c5(a7)
000a7a: 6700002a     beq.w      $aa6
000a7e: 0c2f00c000c4 cmpi.b     #$c0, $c4(a7)
000a84: 6600000c     bne.w      $a92
000a88: 0c2f00c000c5 cmpi.b     #$c0, $c5(a7)
000a8e: 67000016     beq.w      $aa6
000a92: 0c2f00de00c4 cmpi.b     #$de, $c4(a7)
000a98: 6600001c     bne.w      $ab6
000a9c: 0c2f00de00c5 cmpi.b     #$de, $c5(a7)
000aa2: 66000012     bne.w      $ab6
000aa6: 7201         moveq      #$1, d1
000aa8: 200a         move.l     a2, d0
000aaa: 610003fc     bsr.w      $ea8
000aae: 2f4000ba     move.l     d0, $ba(a7)
000ab2: 66000012     bne.w      $ac6
000ab6: 200a         move.l     a2, d0
000ab8: 6100fe5a     bsr.w      $914
000abc: 7000         moveq      #$0, d0
000abe: 4fef00ca     lea.l      $ca(a7), a7
000ac2: 600001e0     bra.w      $ca4
000ac6: 4878003e     pea.l      $3e.w
000aca: 486f0042     pea.l      $42(a7)
000ace: 222f00c2     move.l     $c2(a7), d1
000ad2: 200b         move.l     a3, d0
000ad4: 61000504     bsr.w      $fda
000ad8: 508f         addq.l     #$8, a7
000ada: 202f00ba     move.l     $ba(a7), d0
000ade: 5180         subq.l     #$8, d0
000ae0: d0af0066     add.l      $66(a7), d0
000ae4: 2f00         move.l     d0, -(a7)
000ae6: 486c0008     pea.l      $8(a4)
000aea: 7208         moveq      #$8, d1
000aec: 200b         move.l     a3, d0
000aee: 610004ea     bsr.w      $fda
000af2: 508f         addq.l     #$8, a7
000af4: 610001b8     bsr.w      $cae
000af8: 2f4000be     move.l     d0, $be(a7)
000afc: 4878003e     pea.l      $3e.w
000b00: 486f0080     pea.l      $80(a7)
000b04: 7208         moveq      #$8, d1
000b06: 200b         move.l     a3, d0
000b08: 610004d0     bsr.w      $fda
000b0c: 508f         addq.l     #$8, a7
000b0e: 202f00ba     move.l     $ba(a7), d0
000b12: d0af0066     add.l      $66(a7), d0
000b16: 2f40005e     move.l     d0, $5e(a7)
000b1a: 2f4000a0     move.l     d0, $a0(a7)
000b1e: 4878003e     pea.l      $3e.w
000b22: 486f0080     pea.l      $80(a7)
000b26: 7208         moveq      #$8, d1
000b28: 200b         move.l     a3, d0
000b2a: 6100042a     bsr.w      $f56
000b2e: 508f         addq.l     #$8, a7
000b30: 4a80         tst.l      d0
000b32: 67000010     beq.w      $b44
000b36: 203cfffff7f9 move.l     #$fffff7f9, d0
000b3c: 4fef00ca     lea.l      $ca(a7), a7
000b40: 60000162     bra.w      $ca4
000b44: 4878003e     pea.l      $3e.w
000b48: 486f0042     pea.l      $42(a7)
000b4c: 222f00c2     move.l     $c2(a7), d1
000b50: 200b         move.l     a3, d0
000b52: 61000402     bsr.w      $f56
000b56: 508f         addq.l     #$8, a7
000b58: 4a80         tst.l      d0
000b5a: 67000010     beq.w      $b6c
000b5e: 203cfffff7f9 move.l     #$fffff7f9, d0
000b64: 4fef00ca     lea.l      $ca(a7), a7
000b68: 6000013a     bra.w      $ca4
000b6c: 0c2f00de00c2 cmpi.b     #$de, $c2(a7)
000b72: 6600000c     bne.w      $b80
000b76: 0c2f00ad00c3 cmpi.b     #$ad, $c3(a7)
000b7c: 6700003e     beq.w      $bbc
000b80: 0c2f00ad00c2 cmpi.b     #$ad, $c2(a7)
000b86: 6600000c     bne.w      $b94
000b8a: 0c2f00de00c3 cmpi.b     #$de, $c3(a7)
000b90: 6700002a     beq.w      $bbc
000b94: 0c2f00de00c2 cmpi.b     #$de, $c2(a7)
000b9a: 6600000c     bne.w      $ba8
000b9e: 0c2f00de00c3 cmpi.b     #$de, $c3(a7)
000ba4: 67000016     beq.w      $bbc
000ba8: 0c2f00ad00c2 cmpi.b     #$ad, $c2(a7)
000bae: 6600005c     bne.w      $c0c
000bb2: 0c2f00ad00c3 cmpi.b     #$ad, $c3(a7)
000bb8: 66000052     bne.w      $c0c
000bbc: 0c2f00c000c4 cmpi.b     #$c0, $c4(a7)
000bc2: 6600000c     bne.w      $bd0
000bc6: 0c2f00de00c5 cmpi.b     #$de, $c5(a7)
000bcc: 67000046     beq.w      $c14
000bd0: 0c2f00de00c4 cmpi.b     #$de, $c4(a7)
000bd6: 6600000c     bne.w      $be4
000bda: 0c2f00c000c5 cmpi.b     #$c0, $c5(a7)
000be0: 67000032     beq.w      $c14
000be4: 0c2f00c000c4 cmpi.b     #$c0, $c4(a7)
000bea: 6600000c     bne.w      $bf8
000bee: 0c2f00c000c5 cmpi.b     #$c0, $c5(a7)
000bf4: 6700001e     beq.w      $c14
000bf8: 0c2f00de00c4 cmpi.b     #$de, $c4(a7)
000bfe: 6600000c     bne.w      $c0c
000c02: 0c2f00de00c5 cmpi.b     #$de, $c5(a7)
000c08: 6700000a     beq.w      $c14
000c0c: 2f7cdedec0c000c2 move.l     #$dedec0c0, $c2(a7)
000c14: 0c2f00c000c5 cmpi.b     #$c0, $c5(a7)
000c1a: 6600000c     bne.w      $c28
000c1e: 1f7c00de00c4 move.b     #$de, $c4(a7)
000c24: 60000008     bra.w      $c2e
000c28: 1f7c00c000c4 move.b     #$c0, $c4(a7)
000c2e: 0c2f00de00c3 cmpi.b     #$de, $c3(a7)
000c34: 6600000c     bne.w      $c42
000c38: 1f7c00ad00c2 move.b     #$ad, $c2(a7)
000c3e: 60000008     bra.w      $c48
000c42: 1f7c00de00c2 move.b     #$de, $c2(a7)
000c48: 202f00ba     move.l     $ba(a7), d0
000c4c: d0af0066     add.l      $66(a7), d0
000c50: 2f4000c6     move.l     d0, $c6(a7)
000c54: 48780008     pea.l      $8.w
000c58: 41ef00c6     lea.l      $c6(a7), a0
000c5c: 2208         move.l     a0, d1
000c5e: 200c         move.l     a4, d0
000c60: 610007c6     bsr.w      $1428
000c64: 588f         addq.l     #$4, a7
000c66: 1ebc00ff     move.b     #$ff, (a7)
000c6a: 202a0036     move.l     $36(a2), d0
000c6e: 90af00c6     sub.l      $c6(a7), d0
000c72: 2f400028     move.l     d0, $28(a7)
000c76: 202f00c6     move.l     $c6(a7), d0
000c7a: 2f400024     move.l     d0, $24(a7)
000c7e: 2f400020     move.l     d0, $20(a7)
000c82: 4878003e     pea.l      $3e.w
000c86: 41ef0004     lea.l      $4(a7), a0
000c8a: 2208         move.l     a0, d1
000c8c: 200c         move.l     a4, d0
000c8e: d0af00ca     add.l      $ca(a7), d0
000c92: 61000794     bsr.w      $1428
000c96: 588f         addq.l     #$4, a7
000c98: 7000         moveq      #$0, d0
000c9a: 4fef00ca     lea.l      $ca(a7), a7
000c9e: 60000004     bra.w      $ca4
000ca2: 4e71         nop        
000ca4: 4ced1d02ffec movem.l    -$14(a5), d1/a0/a2-a4
000caa: 4e5d         unlk       a5
000cac: 4e75         rts        
000cae: 4e550000     link.w     a5, #$0
000cb2: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
000cb6: 2440         movea.l    d0, a2
000cb8: 2801         move.l     d1, d4
000cba: 518f         subq.l     #$8, a7
000cbc: 4a84         tst.l      d4
000cbe: 66000018     bne.w      $cd8
000cc2: 48780008     pea.l      $8.w
000cc6: 2212         move.l     (a2), d1
000cc8: 41ef0004     lea.l      $4(a7), a0
000ccc: 2008         move.l     a0, d0
000cce: 61000758     bsr.w      $1428
000cd2: 588f         addq.l     #$4, a7
000cd4: 60000016     bra.w      $cec
000cd8: 48780008     pea.l      $8.w
000cdc: 486f0004     pea.l      $4(a7)
000ce0: 7200         moveq      #$0, d1
000ce2: 7032         moveq      #$32, d0
000ce4: d08a         add.l      a2, d0
000ce6: 610002f2     bsr.w      $fda
000cea: 508f         addq.l     #$8, a7
000cec: 7001         moveq      #$1, d0
000cee: b084         cmp.l      d4, d0
000cf0: 6600002a     bne.w      $d1c
000cf4: 0c2f00c00002 cmpi.b     #$c0, $2(a7)
000cfa: 6600000c     bne.w      $d08
000cfe: 0c2f00c00003 cmpi.b     #$c0, $3(a7)
000d04: 67000020     beq.w      $d26
000d08: 0c2f00de0002 cmpi.b     #$de, $2(a7)
000d0e: 6600000c     bne.w      $d1c
000d12: 0c2f00de0003 cmpi.b     #$de, $3(a7)
000d18: 6700000c     beq.w      $d26
000d1c: 7008         moveq      #$8, d0
000d1e: b0af0004     cmp.l      $4(a7), d0
000d22: 6600000e     bne.w      $d32
000d26: 7000         moveq      #$0, d0
000d28: 508f         addq.l     #$8, a7
000d2a: 60000010     bra.w      $d3c
000d2e: 6000000a     bra.w      $d3a
000d32: 7008         moveq      #$8, d0
000d34: 508f         addq.l     #$8, a7
000d36: 60000004     bra.w      $d3c
000d3a: 508f         addq.l     #$8, a7
000d3c: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
000d42: 4e5d         unlk       a5
000d44: 4e75         rts        
000d46: 4e550000     link.w     a5, #$0
000d4a: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
000d4e: 2801         move.l     d1, d4
000d50: 2a2f0024     move.l     $24(a7), d5
000d54: 4fefffc2     lea.l      -$3e(a7), a7
000d58: 7032         moveq      #$32, d0
000d5a: d0af003e     add.l      $3e(a7), d0
000d5e: 2440         movea.l    d0, a2
000d60: 206f003e     movea.l    $3e(a7), a0
000d64: 2650         movea.l    (a0), a3
000d66: 4a84         tst.l      d4
000d68: 6600001c     bne.w      $d86
000d6c: 4878003e     pea.l      $3e.w
000d70: 200b         move.l     a3, d0
000d72: d085         add.l      d5, d0
000d74: 2200         move.l     d0, d1
000d76: 41ef0004     lea.l      $4(a7), a0
000d7a: 2008         move.l     a0, d0
000d7c: 610006aa     bsr.w      $1428
000d80: 588f         addq.l     #$4, a7
000d82: 60000014     bra.w      $d98
000d86: 4878003e     pea.l      $3e.w
000d8a: 486f0004     pea.l      $4(a7)
000d8e: 2205         move.l     d5, d1
000d90: 200a         move.l     a2, d0
000d92: 61000246     bsr.w      $fda
000d96: 508f         addq.l     #$8, a7
000d98: 7001         moveq      #$1, d0
000d9a: b084         cmp.l      d4, d0
000d9c: 66000034     bne.w      $dd2
000da0: 0c2f00aa002c cmpi.b     #$aa, $2c(a7)
000da6: 6600000c     bne.w      $db4
000daa: 0c2f00aa003d cmpi.b     #$aa, $3d(a7)
000db0: 67000020     beq.w      $dd2
000db4: 0c2f0055002c cmpi.b     #$55, $2c(a7)
000dba: 6600000c     bne.w      $dc8
000dbe: 0c2f0055003d cmpi.b     #$55, $3d(a7)
000dc4: 6700000c     beq.w      $dd2
000dc8: 7000         moveq      #$0, d0
000dca: 4fef003e     lea.l      $3e(a7), a7
000dce: 6000005c     bra.w      $e2c
000dd2: 2a2f0020     move.l     $20(a7), d5
000dd6: 4a84         tst.l      d4
000dd8: 6600001c     bne.w      $df6
000ddc: 4878003e     pea.l      $3e.w
000de0: 200b         move.l     a3, d0
000de2: d085         add.l      d5, d0
000de4: 2200         move.l     d0, d1
000de6: 41ef0004     lea.l      $4(a7), a0
000dea: 2008         move.l     a0, d0
000dec: 6100063a     bsr.w      $1428
000df0: 588f         addq.l     #$4, a7
000df2: 60000014     bra.w      $e08
000df6: 4878003e     pea.l      $3e.w
000dfa: 486f0004     pea.l      $4(a7)
000dfe: 2205         move.l     d5, d1
000e00: 200a         move.l     a2, d0
000e02: 610001d6     bsr.w      $fda
000e06: 508f         addq.l     #$8, a7
000e08: 0c17ffff     cmpi.b     #$ff, (a7)
000e0c: 66000010     bne.w      $e1e
000e10: 7000         moveq      #$0, d0
000e12: 4fef003e     lea.l      $3e(a7), a7
000e16: 60000014     bra.w      $e2c
000e1a: 6000000c     bra.w      $e28
000e1e: 2005         move.l     d5, d0
000e20: 4fef003e     lea.l      $3e(a7), a7
000e24: 60000006     bra.w      $e2c
000e28: 4fef003e     lea.l      $3e(a7), a7
000e2c: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
000e32: 4e5d         unlk       a5
000e34: 4e75         rts        
000e36: 4e550000     link.w     a5, #$0
000e3a: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
000e3e: 2440         movea.l    d0, a2
000e40: 2801         move.l     d1, d4
000e42: 2a2f0020     move.l     $20(a7), d5
000e46: 4fefffc2     lea.l      -$3e(a7), a7
000e4a: 7008         moveq      #$8, d0
000e4c: b085         cmp.l      d5, d0
000e4e: 6600000c     bne.w      $e5c
000e52: 7000         moveq      #$0, d0
000e54: 4fef003e     lea.l      $3e(a7), a7
000e58: 60000044     bra.w      $e9e
000e5c: 4a84         tst.l      d4
000e5e: 6600001c     bne.w      $e7c
000e62: 4878003e     pea.l      $3e.w
000e66: 2012         move.l     (a2), d0
000e68: d085         add.l      d5, d0
000e6a: 2200         move.l     d0, d1
000e6c: 41ef0004     lea.l      $4(a7), a0
000e70: 2008         move.l     a0, d0
000e72: 610005b4     bsr.w      $1428
000e76: 588f         addq.l     #$4, a7
000e78: 60000016     bra.w      $e90
000e7c: 4878003e     pea.l      $3e.w
000e80: 486f0004     pea.l      $4(a7)
000e84: 2205         move.l     d5, d1
000e86: 7032         moveq      #$32, d0
000e88: d08a         add.l      a2, d0
000e8a: 6100014e     bsr.w      $fda
000e8e: 508f         addq.l     #$8, a7
000e90: 202f0024     move.l     $24(a7), d0
000e94: 4fef003e     lea.l      $3e(a7), a7
000e98: 60000004     bra.w      $e9e
000e9c: 4e71         nop        
000e9e: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
000ea4: 4e5d         unlk       a5
000ea6: 4e75         rts        
000ea8: 4e550000     link.w     a5, #$0
000eac: 48e7ce20     movem.l    d0-d1/d4-d6/a2, -(a7)
000eb0: 2440         movea.l    d0, a2
000eb2: 2801         move.l     d1, d4
000eb4: 7a00         moveq      #$0, d5
000eb6: 2204         move.l     d4, d1
000eb8: 200a         move.l     a2, d0
000eba: 6100fdf2     bsr.w      $cae
000ebe: 2c00         move.l     d0, d6
000ec0: 60000012     bra.w      $ed4
000ec4: 2a06         move.l     d6, d5
000ec6: 2f06         move.l     d6, -(a7)
000ec8: 2204         move.l     d4, d1
000eca: 200a         move.l     a2, d0
000ecc: 6100fe78     bsr.w      $d46
000ed0: 588f         addq.l     #$4, a7
000ed2: 2c00         move.l     d0, d6
000ed4: 4a86         tst.l      d6
000ed6: 6600ffec     bne.w      $ec4
000eda: 2005         move.l     d5, d0
000edc: 60000004     bra.w      $ee2
000ee0: 4e71         nop        
000ee2: 4ced0470fff0 movem.l    -$10(a5), d4-d6/a2
000ee8: 4e5d         unlk       a5
000eea: 4e75         rts        
000eec: 4afb         .dc.w      $4afb
000eee: 00274028     ori.b      #$28, -(a7)
000ef2: 23296e76     move.l     $6e76(a1), -(a1)
000ef6: 6472         bcc.b      $f6a
000ef8: 762e         moveq      #$2e, d3
000efa: 6309         bls.b      $f05
000efc: 392e3120     move.w     $3120(a6), -(a4)
000f00: 2020         move.l     -(a0), d0
000f02: 20362f32322f39352020 move.l     ([$322f3935, a6, d2.l * 8], $2020), d0
000f0c: 2020         move.l     -(a0), d0
000f0e: 31343a33     move.w     $33(a4, d3.l), -(a0)
000f12: 353a3332     move.w     $4246(pc), -(a2)
000f16: 00004e55     ori.b      #$55, d0
000f1a: 000048e7     ori.b      #$e7, d0
000f1e: c8302440     and.b      $40(a0, d2.w), d4
000f22: 282f001c     move.l     $1c(a7), d4
000f26: 202a0008     move.l     $8(a2), d0
000f2a: 5280         addq.l     #$1, d0
000f2c: 222f0004     move.l     $4(a7), d1
000f30: 610005ae     bsr.w      $14e0
000f34: d092         add.l      (a2), d0
000f36: 2640         movea.l    d0, a3
000f38: 1684         move.b     d4, (a3)
000f3a: 7000         moveq      #$0, d0
000f3c: 1004         move.b     d4, d0
000f3e: 2200         move.l     d0, d1
000f40: 200b         move.l     a3, d0
000f42: 6100013e     bsr.w      $1082
000f46: 60000004     bra.w      $f4c
000f4a: 4e71         nop        
000f4c: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
000f52: 4e5d         unlk       a5
000f54: 4e75         rts        
000f56: 4e550000     link.w     a5, #$0
000f5a: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
000f5e: 2440         movea.l    d0, a2
000f60: 266f0024     movea.l    $24(a7), a3
000f64: 282f0028     move.l     $28(a7), d4
000f68: 4fefff3a     lea.l      -$c6(a7), a7
000f6c: 60000050     bra.w      $fbe
000f70: 701f         moveq      #$1f, d0
000f72: c0af00ca     and.l      $ca(a7), d0
000f76: 7220         moveq      #$20, d1
000f78: 9280         sub.l      d0, d1
000f7a: 2a01         move.l     d1, d5
000f7c: ba84         cmp.l      d4, d5
000f7e: 63000004     bls.w      $f84
000f82: 2a04         move.l     d4, d5
000f84: 4857         pea.l      (a7)
000f86: 2f05         move.l     d5, -(a7)
000f88: 4853         pea.l      (a3)
000f8a: 222f00d6     move.l     $d6(a7), d1
000f8e: 200a         move.l     a2, d0
000f90: 6100015a     bsr.w      $10ec
000f94: 4fef000c     lea.l      $c(a7), a7
000f98: 4a80         tst.l      d0
000f9a: 6700001a     beq.w      $fb6
000f9e: 41d7         lea.l      (a7), a0
000fa0: 2008         move.l     a0, d0
000fa2: 610001e8     bsr.w      $118c
000fa6: 4a80         tst.l      d0
000fa8: 6700000c     beq.w      $fb6
000fac: 70ff         moveq      #$ff, d0
000fae: 4fef00c6     lea.l      $c6(a7), a7
000fb2: 6000001c     bra.w      $fd0
000fb6: dbaf00ca     add.l      d5, $ca(a7)
000fba: d7c5         adda.l     d5, a3
000fbc: 9885         sub.l      d5, d4
000fbe: 4a84         tst.l      d4
000fc0: 6600ffae     bne.w      $f70
000fc4: 7000         moveq      #$0, d0
000fc6: 4fef00c6     lea.l      $c6(a7), a7
000fca: 60000004     bra.w      $fd0
000fce: 4e71         nop        
000fd0: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
000fd6: 4e5d         unlk       a5
000fd8: 4e75         rts        
000fda: 4e550000     link.w     a5, #$0
000fde: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
000fe2: 246f0024     movea.l    $24(a7), a2
000fe6: 282f0028     move.l     $28(a7), d4
000fea: 2057         movea.l    (a7), a0
000fec: 20280008     move.l     $8(a0), d0
000ff0: 5280         addq.l     #$1, d0
000ff2: 2a00         move.l     d0, d5
000ff4: 2005         move.l     d5, d0
000ff6: 222f0004     move.l     $4(a7), d1
000ffa: 610004e4     bsr.w      $14e0
000ffe: 2057         movea.l    (a7), a0
001000: d090         add.l      (a0), d0
001002: 2640         movea.l    d0, a3
001004: 60000006     bra.w      $100c
001008: 14d3         move.b     (a3), (a2)+
00100a: d7c5         adda.l     d5, a3
00100c: 2004         move.l     d4, d0
00100e: 5384         subq.l     #$1, d4
001010: 4a80         tst.l      d0
001012: 6600fff4     bne.w      $1008
001016: 7000         moveq      #$0, d0
001018: 60000004     bra.w      $101e
00101c: 4e71         nop        
00101e: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
001024: 4e5d         unlk       a5
001026: 4e75         rts        
001028: 4e550000     link.w     a5, #$0
00102c: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
001030: 246f0024     movea.l    $24(a7), a2
001034: 282f0028     move.l     $28(a7), d4
001038: 2057         movea.l    (a7), a0
00103a: 20280008     move.l     $8(a0), d0
00103e: 5280         addq.l     #$1, d0
001040: 2a00         move.l     d0, d5
001042: 2005         move.l     d5, d0
001044: 222f0004     move.l     $4(a7), d1
001048: 61000496     bsr.w      $14e0
00104c: 2057         movea.l    (a7), a0
00104e: d090         add.l      (a0), d0
001050: 2640         movea.l    d0, a3
001052: 60000012     bra.w      $1066
001056: 101a         move.b     (a2)+, d0
001058: b013         cmp.b      (a3), d0
00105a: 67000008     beq.w      $1064
00105e: 70ff         moveq      #$ff, d0
001060: 60000016     bra.w      $1078
001064: d7c5         adda.l     d5, a3
001066: 2004         move.l     d4, d0
001068: 5384         subq.l     #$1, d4
00106a: 4a80         tst.l      d0
00106c: 6600ffe8     bne.w      $1056
001070: 7000         moveq      #$0, d0
001072: 60000004     bra.w      $1078
001076: 4e71         nop        
001078: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
00107e: 4e5d         unlk       a5
001080: 4e75         rts        
001082: 4e550000     link.w     a5, #$0
001086: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
00108a: 2440         movea.l    d0, a2
00108c: 2801         move.l     d1, d4
00108e: 61000268     bsr.w      $12f8
001092: 2a00         move.l     d0, d5
001094: 60000014     bra.w      $10aa
001098: 7001         moveq      #$1, d0
00109a: 61000210     bsr.w      $12ac
00109e: b812         cmp.b      (a2), d4
0010a0: 66000008     bne.w      $10aa
0010a4: 7000         moveq      #$0, d0
0010a6: 6000003a     bra.w      $10e2
0010aa: 6100024c     bsr.w      $12f8
0010ae: b085         cmp.l      d5, d0
0010b0: 6700ffe6     beq.w      $1098
0010b4: 61000242     bsr.w      $12f8
0010b8: 2a00         move.l     d0, d5
0010ba: 60000014     bra.w      $10d0
0010be: 7001         moveq      #$1, d0
0010c0: 610001ea     bsr.w      $12ac
0010c4: b812         cmp.b      (a2), d4
0010c6: 66000008     bne.w      $10d0
0010ca: 7000         moveq      #$0, d0
0010cc: 60000014     bra.w      $10e2
0010d0: 61000226     bsr.w      $12f8
0010d4: b085         cmp.l      d5, d0
0010d6: 6700ffe6     beq.w      $10be
0010da: 70ff         moveq      #$ff, d0
0010dc: 60000004     bra.w      $10e2
0010e0: 4e71         nop        
0010e2: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
0010e8: 4e5d         unlk       a5
0010ea: 4e75         rts        
0010ec: 4e550000     link.w     a5, #$0
0010f0: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
0010f4: 246f002c     movea.l    $2c(a7), a2
0010f8: 518f         subq.l     #$8, a7
0010fa: 7800         moveq      #$0, d4
0010fc: 206f0008     movea.l    $8(a7), a0
001100: 20280008     move.l     $8(a0), d0
001104: 5280         addq.l     #$1, d0
001106: 2e80         move.l     d0, (a7)
001108: 2017         move.l     (a7), d0
00110a: 222f000c     move.l     $c(a7), d1
00110e: 610003d0     bsr.w      $14e0
001112: 206f0008     movea.l    $8(a7), a0
001116: d090         add.l      (a0), d0
001118: 2640         movea.l    d0, a3
00111a: 42af0004     clr.l      $4(a7)
00111e: 60000034     bra.w      $1154
001122: 206f002c     movea.l    $2c(a7), a0
001126: 52af002c     addq.l     #$1, $2c(a7)
00112a: 1a10         move.b     (a0), d5
00112c: ba13         cmp.b      (a3), d5
00112e: 6700001c     beq.w      $114c
001132: 2004         move.l     d4, d0
001134: 7206         moveq      #$6, d1
001136: 610003a8     bsr.w      $14e0
00113a: 258b0800     move.l     a3, (a2, d0.l)
00113e: 2004         move.l     d4, d0
001140: 5284         addq.l     #$1, d4
001142: 7206         moveq      #$6, d1
001144: 6100039a     bsr.w      $14e0
001148: 15850804     move.b     d5, $4(a2, d0.l)
00114c: 2017         move.l     (a7), d0
00114e: d7c0         adda.l     d0, a3
001150: 52af0004     addq.l     #$1, $4(a7)
001154: 202f0004     move.l     $4(a7), d0
001158: b0af0030     cmp.l      $30(a7), d0
00115c: 6500ffc4     bcs.w      $1122
001160: 2004         move.l     d4, d0
001162: 7206         moveq      #$6, d1
001164: 6100037a     bsr.w      $14e0
001168: 42b20800     clr.l      (a2, d0.l)
00116c: 4a84         tst.l      d4
00116e: 67000008     beq.w      $1178
001172: 7001         moveq      #$1, d0
001174: 60000004     bra.w      $117a
001178: 7000         moveq      #$0, d0
00117a: 508f         addq.l     #$8, a7
00117c: 60000004     bra.w      $1182
001180: 4e71         nop        
001182: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
001188: 4e5d         unlk       a5
00118a: 4e75         rts        
00118c: 4e550000     link.w     a5, #$0
001190: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
001194: 598f         subq.l     #$4, a7
001196: 61000282     bsr.w      $141a
00119a: 2e80         move.l     d0, (a7)
00119c: 266f0004     movea.l    $4(a7), a3
0011a0: 60000008     bra.w      $11aa
0011a4: 14ab0004     move.b     $4(a3), (a2)
0011a8: 5c8b         addq.l     #$6, a3
0011aa: 2453         movea.l    (a3), a2
0011ac: 200a         move.l     a2, d0
0011ae: 6600fff4     bne.w      $11a4
0011b2: 2017         move.l     (a7), d0
0011b4: 610001d8     bsr.w      $138e
0011b8: 5d8b         subq.l     #$6, a3
0011ba: 7000         moveq      #$0, d0
0011bc: 102b0004     move.b     $4(a3), d0
0011c0: 2200         move.l     d0, d1
0011c2: 2013         move.l     (a3), d0
0011c4: 6100febc     bsr.w      $1082
0011c8: 588f         addq.l     #$4, a7
0011ca: 60000004     bra.w      $11d0
0011ce: 4e71         nop        
0011d0: 4ced0c02fff4 movem.l    -$c(a5), d1/a2-a3
0011d6: 4e5d         unlk       a5
0011d8: 4e75         rts        
0011da: 48e700a0     movem.l    a0/a2, -(a7)
0011de: 2f01         move.l     d1, -(a7)
0011e0: 4e40         trap       #$0
0011e2: 0028650c205f ori.b      #$c, $205f(a0)
0011e8: 2080         move.l     d0, (a0)
0011ea: 200a         move.l     a2, d0
0011ec: 4cdf0500     movem.l    (a7)+, a0/a2
0011f0: 4e75         rts        
0011f2: 4280         clr.l      d0
0011f4: 3001         move.w     d1, d0
0011f6: 205f         movea.l    (a7)+, a0
0011f8: 2080         move.l     d0, (a0)
0011fa: 4280         clr.l      d0
0011fc: 4cdf0500     movem.l    (a7)+, a0/a2
001200: 4e75         rts        
001202: 48e700a0     movem.l    a0/a2, -(a7)
001206: 4e40         trap       #$0
001208: 005c650e     ori.w      #$650e, (a4)+
00120c: 206f000c     movea.l    $c(a7), a0
001210: 2080         move.l     d0, (a0)
001212: 200a         move.l     a2, d0
001214: 4cdf0500     movem.l    (a7)+, a0/a2
001218: 4e75         rts        
00121a: 4280         clr.l      d0
00121c: 3001         move.w     d1, d0
00121e: 206f000c     movea.l    $c(a7), a0
001222: 2080         move.l     d0, (a0)
001224: 4280         clr.l      d0
001226: 4cdf0500     movem.l    (a7)+, a0/a2
00122a: 4e75         rts        
00122c: 2f0a         move.l     a2, -(a7)
00122e: 2441         movea.l    d1, a2
001230: 4e40         trap       #$0
001232: 0029245f6504 ori.b      #$5f, $6504(a1)
001238: 4280         clr.l      d0
00123a: 4e75         rts        
00123c: 4280         clr.l      d0
00123e: 3001         move.w     d1, d0
001240: 4e75         rts        
001242: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
001246: 242f001c     move.l     $1c(a7), d2
00124a: 262f0020     move.l     $20(a7), d3
00124e: 282f0024     move.l     $24(a7), d4
001252: 206f0028     movea.l    $28(a7), a0
001256: 226f002c     movea.l    $2c(a7), a1
00125a: 4e40         trap       #$0
00125c: 00036506     ori.b      #$6, d3
001260: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
001264: 4e75         rts        
001266: 4280         clr.l      d0
001268: 60f6         bra.b      $1260
00126a: 48e74000     movem.l    d1, -(a7)
00126e: 4e40         trap       #$0
001270: 0008         .dc.w      $0008
001272: 600000be     bra.w      $1332
001276: 48e76000     movem.l    d1-d2, -(a7)
00127a: 008180000000 ori.l      #$80000000, d1
001280: 4e40         trap       #$0
001282: 00276000     ori.b      #$0, -(a7)
001286: 00a248e76000 ori.l      #$48e76000, -(a2)
00128c: 242f000c     move.l     $c(a7), d2
001290: 4e40         trap       #$0
001292: 00276000     ori.b      #$0, -(a7)
001296: 009248e74000 ori.l      #$48e74000, (a2)
00129c: e180         asl.l      #$8, d0
00129e: 008080000000 ori.l      #$80000000, d0
0012a4: 4e40         trap       #$0
0012a6: 000a         .dc.w      $000a
0012a8: 60000092     bra.w      $133c
0012ac: 48e74000     movem.l    d1, -(a7)
0012b0: 4e40         trap       #$0
0012b2: 000a         .dc.w      $000a
0012b4: 60000086     bra.w      $133c
0012b8: 48e74080     movem.l    d1/a0, -(a7)
0012bc: 2040         movea.l    d0, a0
0012be: 2001         move.l     d1, d0
0012c0: 222f000c     move.l     $c(a7), d1
0012c4: 4e40         trap       #$0
0012c6: 0017607a     ori.b      #$7a, (a7)
0012ca: 48e77080     movem.l    d1-d3/a0, -(a7)
0012ce: 2041         movea.l    d1, a0
0012d0: 4e40         trap       #$0
0012d2: 0015651c     ori.b      #$1c, (a5)
0012d6: 2080         move.l     d0, (a0)
0012d8: 206f0014     movea.l    $14(a7), a0
0012dc: 2081         move.l     d1, (a0)
0012de: 206f0018     movea.l    $18(a7), a0
0012e2: 3082         move.w     d2, (a0)
0012e4: 206f001c     movea.l    $1c(a7), a0
0012e8: 2083         move.l     d3, (a0)
0012ea: 4280         clr.l      d0
0012ec: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0012f0: 4e75         rts        
0012f2: 4280         clr.l      d0
0012f4: 3001         move.w     d1, d0
0012f6: 60f4         bra.b      $12ec
0012f8: 48e77000     movem.l    d1-d3, -(a7)
0012fc: 7003         moveq      #$3, d0
0012fe: 4e40         trap       #$0
001300: 0015604c     ori.b      #$4c, (a5)
001304: 48e77000     movem.l    d1-d3, -(a7)
001308: 7000         moveq      #$0, d0
00130a: 4e40         trap       #$0
00130c: 0015604c     ori.b      #$4c, (a5)
001310: 48e77000     movem.l    d1-d3, -(a7)
001314: 7000         moveq      #$0, d0
001316: 4e40         trap       #$0
001318: 00156048     ori.b      #$48, (a5)
00131c: 48e77000     movem.l    d1-d3, -(a7)
001320: 7000         moveq      #$0, d0
001322: 4e40         trap       #$0
001324: 00156040     ori.b      #$40, (a5)
001328: 6544         bcs.b      $136e
00132a: 2002         move.l     d2, d0
00132c: 4cdf0006     movem.l    (a7)+, d1-d2
001330: 4e75         rts        
001332: 654a         bcs.b      $137e
001334: 4280         clr.l      d0
001336: 4cdf0002     movem.l    (a7)+, d1
00133a: 4e75         rts        
00133c: 6540         bcs.b      $137e
00133e: 4cdf0002     movem.l    (a7)+, d1
001342: 4e75         rts        
001344: 6530         bcs.b      $1376
001346: 2f41000c     move.l     d1, $c(a7)
00134a: 4cdf0102     movem.l    (a7)+, d1/a0
00134e: 4e75         rts        
001350: 6534         bcs.b      $1386
001352: 4280         clr.l      d0
001354: 3003         move.w     d3, d0
001356: 4cdf000e     movem.l    (a7)+, d1-d3
00135a: 4e75         rts        
00135c: 6528         bcs.b      $1386
00135e: 4280         clr.l      d0
001360: 3002         move.w     d2, d0
001362: 60f2         bra.b      $1356
001364: 6520         bcs.b      $1386
001366: 60ee         bra.b      $1356
001368: 651c         bcs.b      $1386
00136a: 2001         move.l     d1, d0
00136c: 60e8         bra.b      $1356
00136e: 203cffffffff move.l     #$ffffffff, d0
001374: 60b6         bra.b      $132c
001376: 4280         clr.l      d0
001378: 3001         move.w     d1, d0
00137a: 4480         neg.l      d0
00137c: 60cc         bra.b      $134a
00137e: 4280         clr.l      d0
001380: 3001         move.w     d1, d0
001382: 4480         neg.l      d0
001384: 60b0         bra.b      $1336
001386: 4280         clr.l      d0
001388: 3001         move.w     d1, d0
00138a: 4480         neg.l      d0
00138c: 60c8         bra.b      $1356
00138e: 46c0         move.w     d0, sr
001390: 4e75         rts        
001392: 48a78000     movem.w    d0, -(a7)
001396: 40c0         move.w     sr, d0
001398: 4c9f0002     movem.w    (a7)+, d1
00139c: 46c1         move.w     d1, sr
00139e: 4e75         rts        
0013a0: 40c0         move.w     sr, d0
0013a2: 02800000ffff andi.l     #$ffff, d0
0013a8: 027cf8ff     andi.w     #$f8ff, sr
0013ac: 4e75         rts        
0013ae: 40c0         move.w     sr, d0
0013b0: 02800000ffff andi.l     #$ffff, d0
0013b6: 007c0700     ori.w      #$700, sr
0013ba: 027cf9ff     andi.w     #$f9ff, sr
0013be: 4e75         rts        
0013c0: 40c0         move.w     sr, d0
0013c2: 02800000ffff andi.l     #$ffff, d0
0013c8: 007c0700     ori.w      #$700, sr
0013cc: 027cfaff     andi.w     #$faff, sr
0013d0: 4e75         rts        
0013d2: 40c0         move.w     sr, d0
0013d4: 02800000ffff andi.l     #$ffff, d0
0013da: 007c0700     ori.w      #$700, sr
0013de: 027cfbff     andi.w     #$fbff, sr
0013e2: 4e75         rts        
0013e4: 40c0         move.w     sr, d0
0013e6: 02800000ffff andi.l     #$ffff, d0
0013ec: 007c0700     ori.w      #$700, sr
0013f0: 027cfcff     andi.w     #$fcff, sr
0013f4: 4e75         rts        
0013f6: 40c0         move.w     sr, d0
0013f8: 02800000ffff andi.l     #$ffff, d0
0013fe: 007c0700     ori.w      #$700, sr
001402: 027cfdff     andi.w     #$fdff, sr
001406: 4e75         rts        
001408: 40c0         move.w     sr, d0
00140a: 02800000ffff andi.l     #$ffff, d0
001410: 007c0700     ori.w      #$700, sr
001414: 027cfeff     andi.w     #$feff, sr
001418: 4e75         rts        
00141a: 40c0         move.w     sr, d0
00141c: 02800000ffff andi.l     #$ffff, d0
001422: 007c0700     ori.w      #$700, sr
001426: 4e75         rts        
001428: 4e550000     link.w     a5, #$0
00142c: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
001430: 2040         movea.l    d0, a0
001432: 2441         movea.l    d1, a2
001434: 242d0008     move.l     $8(a5), d2
001438: 6702         beq.b      $143c
00143a: 610a         bsr.b      $1446
00143c: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
001442: 4e5d         unlk       a5
001444: 4e75         rts        
001446: 4a82         tst.l      d2
001448: 674a         beq.b      $1494
00144a: b1ca         cmpa.l     a2, a0
00144c: 6248         bhi.b      $1496
00144e: 6744         beq.b      $1494
001450: 300a         move.w     a2, d0
001452: 08000000     btst.b     #$0, d0
001456: 6704         beq.b      $145c
001458: 10da         move.b     (a2)+, (a0)+
00145a: 5382         subq.l     #$1, d2
00145c: 3008         move.w     a0, d0
00145e: 08000000     btst.b     #$0, d0
001462: 6624         bne.b      $1488
001464: e28a         lsr.l      #$1, d2
001466: 6406         bcc.b      $146e
001468: 6104         bsr.b      $146e
00146a: 10da         move.b     (a2)+, (a0)+
00146c: 4e75         rts        
00146e: e28a         lsr.l      #$1, d2
001470: 6406         bcc.b      $1478
001472: 30da         move.w     (a2)+, (a0)+
001474: 6002         bra.b      $1478
001476: 20da         move.l     (a2)+, (a0)+
001478: 51cafffc     dbra       d2, $1476
00147c: 5242         addq.w     #$1, d2
00147e: 5382         subq.l     #$1, d2
001480: 64f4         bcc.b      $1476
001482: 7400         moveq      #$0, d2
001484: 4e75         rts        
001486: 10da         move.b     (a2)+, (a0)+
001488: 51cafffc     dbra       d2, $1486
00148c: 5242         addq.w     #$1, d2
00148e: 5382         subq.l     #$1, d2
001490: 64f4         bcc.b      $1486
001492: 7400         moveq      #$0, d2
001494: 4e75         rts        
001496: d5c2         adda.l     d2, a2
001498: d1c2         adda.l     d2, a0
00149a: 300a         move.w     a2, d0
00149c: 08000000     btst.b     #$0, d0
0014a0: 6704         beq.b      $14a6
0014a2: 1122         move.b     -(a2), -(a0)
0014a4: 5382         subq.l     #$1, d2
0014a6: 3008         move.w     a0, d0
0014a8: 08000000     btst.b     #$0, d0
0014ac: 6624         bne.b      $14d2
0014ae: e28a         lsr.l      #$1, d2
0014b0: 6406         bcc.b      $14b8
0014b2: 6104         bsr.b      $14b8
0014b4: 1122         move.b     -(a2), -(a0)
0014b6: 4e75         rts        
0014b8: e28a         lsr.l      #$1, d2
0014ba: 6406         bcc.b      $14c2
0014bc: 3122         move.w     -(a2), -(a0)
0014be: 6002         bra.b      $14c2
0014c0: 2122         move.l     -(a2), -(a0)
0014c2: 51cafffc     dbra       d2, $14c0
0014c6: 5242         addq.w     #$1, d2
0014c8: 5382         subq.l     #$1, d2
0014ca: 64f4         bcc.b      $14c0
0014cc: 7400         moveq      #$0, d2
0014ce: 4e75         rts        
0014d0: 1122         move.b     -(a2), -(a0)
0014d2: 51cafffc     dbra       d2, $14d0
0014d6: 5242         addq.w     #$1, d2
0014d8: 5382         subq.l     #$1, d2
0014da: 64f4         bcc.b      $14d0
0014dc: 7400         moveq      #$0, d2
0014de: 4e75         rts        
0014e0: 48e73800     movem.l    d2-d4, -(a7)
0014e4: 2400         move.l     d0, d2
0014e6: 2600         move.l     d0, d3
0014e8: 4843         swap       d3
0014ea: 2801         move.l     d1, d4
0014ec: 4844         swap       d4
0014ee: c0c1         mulu.w     d1, d0
0014f0: c2c3         mulu.w     d3, d1
0014f2: c4c4         mulu.w     d4, d2
0014f4: c6c4         mulu.w     d4, d3
0014f6: 4840         swap       d0
0014f8: d041         add.w      d1, d0
0014fa: 7800         moveq      #$0, d4
0014fc: d784         addx.l     d4, d3
0014fe: d042         add.w      d2, d0
001500: d784         addx.l     d4, d3
001502: 4840         swap       d0
001504: 4241         clr.w      d1
001506: 4841         swap       d1
001508: 4242         clr.w      d2
00150a: 4842         swap       d2
00150c: d282         add.l      d2, d1
00150e: d283         add.l      d3, d1
001510: 4a80         tst.l      d0
001512: 4cdf001c     movem.l    (a7)+, d2-d4
001516: 4e75         rts        
001518: 2f02         move.l     d2, -(a7)
00151a: 7400         moveq      #$0, d2
00151c: 4a80         tst.l      d0
00151e: 6a04         bpl.b      $1524
001520: 4480         neg.l      d0
001522: 7403         moveq      #$3, d2
001524: 4a81         tst.l      d1
001526: 6a06         bpl.b      $152e
001528: 4481         neg.l      d1
00152a: 0a020001     eori.b     #$1, d2
00152e: 6122         bsr.b      $1552
001530: e20a         lsr.b      #$1, d2
001532: 6402         bcc.b      $1536
001534: 4480         neg.l      d0
001536: e20a         lsr.b      #$1, d2
001538: 6402         bcc.b      $153c
00153a: 4481         neg.l      d1
00153c: 241f         move.l     (a7)+, d2
00153e: 4a80         tst.l      d0
001540: 4e75         rts        
001542: 61d4         bsr.b      $1518
001544: c141         exg.l      d0, d1
001546: 4a80         tst.l      d0
001548: 4e75         rts        
00154a: 6106         bsr.b      $1552
00154c: c141         exg.l      d0, d1
00154e: 4a80         tst.l      d0
001550: 4e75         rts        
001552: 48e73800     movem.l    d2-d4, -(a7)
001556: 2401         move.l     d1, d2
001558: 6606         bne.b      $1560
00155a: 81fc0000     divs.w     #$0, d0
00155e: 606e         bra.b      $15ce
001560: 5381         subq.l     #$1, d1
001562: 676a         beq.b      $15ce
001564: 2801         move.l     d1, d4
001566: 2200         move.l     d0, d1
001568: b481         cmp.l      d1, d2
00156a: 650c         bcs.b      $1578
00156c: 6704         beq.b      $1572
00156e: 7000         moveq      #$0, d0
001570: 605c         bra.b      $15ce
001572: 7001         moveq      #$1, d0
001574: 9282         sub.l      d2, d1
001576: 6056         bra.b      $15ce
001578: 2602         move.l     d2, d3
00157a: 6bf6         bmi.b      $1572
00157c: c684         and.l      d4, d3
00157e: 6612         bne.b      $1592
001580: e28a         lsr.l      #$1, d2
001582: 76ff         moveq      #$ff, d3
001584: e28a         lsr.l      #$1, d2
001586: 55cbfffc     dbcs       d3, $1584
00158a: 4483         neg.l      d3
00158c: e6a8         lsr.l      d3, d0
00158e: c284         and.l      d4, d1
001590: 603c         bra.b      $15ce
001592: 7000         moveq      #$0, d0
001594: 76ff         moveq      #$ff, d3
001596: e382         asl.l      #$1, d2
001598: 6a06         bpl.b      $15a0
00159a: b481         cmp.l      d1, d2
00159c: 620a         bhi.b      $15a8
00159e: 600c         bra.b      $15ac
0015a0: b481         cmp.l      d1, d2
0015a2: 54cbfff2     dbcc       d3, $1596
0015a6: 6704         beq.b      $15ac
0015a8: 5283         addq.l     #$1, d3
0015aa: e28a         lsr.l      #$1, d2
0015ac: 4483         neg.l      d3
0015ae: 6004         bra.b      $15b4
0015b0: e380         asl.l      #$1, d0
0015b2: e28a         lsr.l      #$1, d2
0015b4: 9282         sub.l      d2, d1
0015b6: 6510         bcs.b      $15c8
0015b8: 5280         addq.l     #$1, d0
0015ba: 51cbfff4     dbra       d3, $15b0
0015be: 600e         bra.b      $15ce
0015c0: e380         asl.l      #$1, d0
0015c2: e28a         lsr.l      #$1, d2
0015c4: d282         add.l      d2, d1
0015c6: 65f0         bcs.b      $15b8
0015c8: 51cbfff6     dbra       d3, $15c0
0015cc: d282         add.l      d2, d1
0015ce: 4cdf001c     movem.l    (a7)+, d2-d4
0015d2: 4a80         tst.l      d0
0015d4: 4e75         rts        
0015d6: 6e76         bgt.b      $164e
0015d8: 6472         bcc.b      $164c
0015da: 7600         moveq      #$0, d3
0015dc: 0091b86a     ori.l      #$aaaaaaaa, (a1)
