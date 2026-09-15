00003c: 002800360044 ori.b      #$36, $44(a0)
000042: 00520060     ori.w      #$60, (a2)
000046: 006e007c008a ori.w      #$7c, $8a(a6)
00004c: 009800a800b8 ori.l      #$a800b8, (a0)+
000052: 00c8         .dc.w      $00c8
000054: 00d8         .dc.w      $00d8
000056: 2200         move.l     d0, d1
000058: 6b06         bmi.b      $60
00005a: 2b410004     move.l     d1, $4(a5)
00005e: 4e75         rts        
000060: 4481         neg.l      d1
000062: 4e75         rts        
000064: 2f0d         move.l     a5, -(a7)
000066: 220c         move.l     a4, d1
000068: 2009         move.l     a1, d0
00006a: 610000b8     bsr.w      $124
00006e: 588f         addq.l     #$4, a7
000070: 60e4         bra.b      $56
000072: 2f0d         move.l     a5, -(a7)
000074: 220c         move.l     a4, d1
000076: 2009         move.l     a1, d0
000078: 610000ca     bsr.w      $144
00007c: 588f         addq.l     #$4, a7
00007e: 60d6         bra.b      $56
000080: 2f0d         move.l     a5, -(a7)
000082: 220c         move.l     a4, d1
000084: 2009         move.l     a1, d0
000086: 61000108     bsr.w      $190
00008a: 588f         addq.l     #$4, a7
00008c: 60c8         bra.b      $56
00008e: 2f0d         move.l     a5, -(a7)
000090: 220c         move.l     a4, d1
000092: 2009         move.l     a1, d0
000094: 61000112     bsr.w      $1a8
000098: 588f         addq.l     #$4, a7
00009a: 60ba         bra.b      $56
00009c: 2f0d         move.l     a5, -(a7)
00009e: 220c         move.l     a4, d1
0000a0: 2009         move.l     a1, d0
0000a2: 6100011c     bsr.w      $1c0
0000a6: 588f         addq.l     #$4, a7
0000a8: 60ac         bra.b      $56
0000aa: 2f0d         move.l     a5, -(a7)
0000ac: 220c         move.l     a4, d1
0000ae: 2009         move.l     a1, d0
0000b0: 61000126     bsr.w      $1d8
0000b4: 588f         addq.l     #$4, a7
0000b6: 609e         bra.b      $56
0000b8: 2f0d         move.l     a5, -(a7)
0000ba: 220c         move.l     a4, d1
0000bc: 2009         move.l     a1, d0
0000be: 61000130     bsr.w      $1f0
0000c2: 588f         addq.l     #$4, a7
0000c4: 6090         bra.b      $56
0000c6: 2f0d         move.l     a5, -(a7)
0000c8: 220c         move.l     a4, d1
0000ca: 2009         move.l     a1, d0
0000cc: 6100016e     bsr.w      $23c
0000d0: 588f         addq.l     #$4, a7
0000d2: 6082         bra.b      $56
0000d4: 2f0d         move.l     a5, -(a7)
0000d6: 220c         move.l     a4, d1
0000d8: 2009         move.l     a1, d0
0000da: 610001ac     bsr.w      $288
0000de: 588f         addq.l     #$4, a7
0000e0: 6000ff74     bra.w      $56
0000e4: 2f0d         move.l     a5, -(a7)
0000e6: 220c         move.l     a4, d1
0000e8: 2009         move.l     a1, d0
0000ea: 610001b4     bsr.w      $2a0
0000ee: 588f         addq.l     #$4, a7
0000f0: 6000ff64     bra.w      $56
0000f4: 2f0d         move.l     a5, -(a7)
0000f6: 220c         move.l     a4, d1
0000f8: 2009         move.l     a1, d0
0000fa: 610001bc     bsr.w      $2b8
0000fe: 588f         addq.l     #$4, a7
000100: 6000ff54     bra.w      $56
000104: 2f0d         move.l     a5, -(a7)
000106: 220c         move.l     a4, d1
000108: 2009         move.l     a1, d0
00010a: 61000274     bsr.w      $380
00010e: 588f         addq.l     #$4, a7
000110: 6000ff44     bra.w      $56
000114: 2f0d         move.l     a5, -(a7)
000116: 220c         move.l     a4, d1
000118: 2009         move.l     a1, d0
00011a: 610002c6     bsr.w      $3e2
00011e: 588f         addq.l     #$4, a7
000120: 6000ff34     bra.w      $56
000124: 4e550000     link.w     a5, #$0
000128: 48e7c020     movem.l    d0-d1/a2, -(a7)
00012c: 2440         movea.l    d0, a2
00012e: 203cffffff29 move.l     #$ffffff29, d0
000134: 60000004     bra.w      $13a
000138: 4e71         nop        
00013a: 4ced0400fffc movem.l    -$4(a5), a2
000140: 4e5d         unlk       a5
000142: 4e75         rts        
000144: 4e550000     link.w     a5, #$0
000148: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
00014c: 2440         movea.l    d0, a2
00014e: 206f001c     movea.l    $1c(a7), a0
000152: 26680020     movea.l    $20(a0), a3
000156: 0c13002f     cmpi.b     #$2f, (a3)
00015a: 66000006     bne.w      $162
00015e: 60000006     bra.w      $166
000162: 60000016     bra.w      $17a
000166: 200b         move.l     a3, d0
000168: 610002f2     bsr.w      $45c
00016c: 2640         movea.l    d0, a3
00016e: 4a13         tst.b      (a3)
000170: 66000008     bne.w      $17a
000174: 7000         moveq      #$0, d0
000176: 6000000e     bra.w      $186
00017a: 203cffffff29 move.l     #$ffffff29, d0
000180: 60000004     bra.w      $186
000184: 4e71         nop        
000186: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00018c: 4e5d         unlk       a5
00018e: 4e75         rts        
000190: 4e550000     link.w     a5, #$0
000194: 48e7c000     movem.l    d0-d1, -(a7)
000198: 203cffffff29 move.l     #$ffffff29, d0
00019e: 60000004     bra.w      $1a4
0001a2: 4e71         nop        
0001a4: 4e5d         unlk       a5
0001a6: 4e75         rts        
0001a8: 4e550000     link.w     a5, #$0
0001ac: 48e7c000     movem.l    d0-d1, -(a7)
0001b0: 203cffffff29 move.l     #$ffffff29, d0
0001b6: 60000004     bra.w      $1bc
0001ba: 4e71         nop        
0001bc: 4e5d         unlk       a5
0001be: 4e75         rts        
0001c0: 4e550000     link.w     a5, #$0
0001c4: 48e7c000     movem.l    d0-d1, -(a7)
0001c8: 203cffffff29 move.l     #$ffffff29, d0
0001ce: 60000004     bra.w      $1d4
0001d2: 4e71         nop        
0001d4: 4e5d         unlk       a5
0001d6: 4e75         rts        
0001d8: 4e550000     link.w     a5, #$0
0001dc: 48e7c000     movem.l    d0-d1, -(a7)
0001e0: 203cffffff09 move.l     #$ffffff09, d0
0001e6: 60000004     bra.w      $1ec
0001ea: 4e71         nop        
0001ec: 4e5d         unlk       a5
0001ee: 4e75         rts        
0001f0: 4e550000     link.w     a5, #$0
0001f4: 48e7e0b0     movem.l    d0-d2/a0/a2-a3, -(a7)
0001f8: 2440         movea.l    d0, a2
0001fa: 206a0004     movea.l    $4(a2), a0
0001fe: 26680004     movea.l    $4(a0), a3
000202: 42a7         clr.l      -(a7)
000204: 42a7         clr.l      -(a7)
000206: 2f2f0028     move.l     $28(a7), -(a7)
00020a: 2f2f0010     move.l     $10(a7), -(a7)
00020e: 220b         move.l     a3, d1
000210: 200a         move.l     a2, d0
000212: 206a0004     movea.l    $4(a2), a0
000216: 2050         movea.l    (a0), a0
000218: 3428004a     move.w     $4a(a0), d2
00021c: 48c2         ext.l      d2
00021e: 206a0004     movea.l    $4(a2), a0
000222: 2050         movea.l    (a0), a0
000224: 4eb02800     jsr        (a0, d2.l)
000228: 4fef0010     lea.l      $10(a7), a7
00022c: 60000004     bra.w      $232
000230: 4e71         nop        
000232: 4ced0d04fff0 movem.l    -$10(a5), d2/a0/a2-a3
000238: 4e5d         unlk       a5
00023a: 4e75         rts        
00023c: 4e550000     link.w     a5, #$0
000240: 48e7e0b0     movem.l    d0-d2/a0/a2-a3, -(a7)
000244: 2440         movea.l    d0, a2
000246: 206a0004     movea.l    $4(a2), a0
00024a: 26680004     movea.l    $4(a0), a3
00024e: 42a7         clr.l      -(a7)
000250: 42a7         clr.l      -(a7)
000252: 2f2f0028     move.l     $28(a7), -(a7)
000256: 2f2f0010     move.l     $10(a7), -(a7)
00025a: 220b         move.l     a3, d1
00025c: 200a         move.l     a2, d0
00025e: 206a0004     movea.l    $4(a2), a0
000262: 2050         movea.l    (a0), a0
000264: 3428004c     move.w     $4c(a0), d2
000268: 48c2         ext.l      d2
00026a: 206a0004     movea.l    $4(a2), a0
00026e: 2050         movea.l    (a0), a0
000270: 4eb02800     jsr        (a0, d2.l)
000274: 4fef0010     lea.l      $10(a7), a7
000278: 60000004     bra.w      $27e
00027c: 4e71         nop        
00027e: 4ced0d04fff0 movem.l    -$10(a5), d2/a0/a2-a3
000284: 4e5d         unlk       a5
000286: 4e75         rts        
000288: 4e550000     link.w     a5, #$0
00028c: 48e7c000     movem.l    d0-d1, -(a7)
000290: 203cffffff0c move.l     #$ffffff0c, d0
000296: 60000004     bra.w      $29c
00029a: 4e71         nop        
00029c: 4e5d         unlk       a5
00029e: 4e75         rts        
0002a0: 4e550000     link.w     a5, #$0
0002a4: 48e7c000     movem.l    d0-d1, -(a7)
0002a8: 203cffffff0b move.l     #$ffffff0b, d0
0002ae: 60000004     bra.w      $2b4
0002b2: 4e71         nop        
0002b4: 4e5d         unlk       a5
0002b6: 4e75         rts        
0002b8: 4e550000     link.w     a5, #$0
0002bc: 48e7e8f8     movem.l    d0-d2/d4/a0-a4, -(a7)
0002c0: 2440         movea.l    d0, a2
0002c2: 266f002c     movea.l    $2c(a7), a3
0002c6: 518f         subq.l     #$8, a7
0002c8: 2eaa0004     move.l     $4(a2), (a7)
0002cc: 2057         movea.l    (a7), a0
0002ce: 28680004     movea.l    $4(a0), a4
0002d2: 203c0000ffff move.l     #$ffff, d0
0002d8: c0ab0004     and.l      $4(a3), d0
0002dc: 2800         move.l     d0, d4
0002de: 2f6b00200004 move.l     $20(a3), $4(a7)
0002e4: 60000068     bra.w      $34e
0002e8: 41fa014a     lea.l      $434(pc), a0
0002ec: 226f0004     movea.l    $4(a7), a1
0002f0: 2288         move.l     a0, (a1)
0002f2: 7000         moveq      #$0, d0
0002f4: 508f         addq.l     #$8, a7
0002f6: 6000007e     bra.w      $376
0002fa: 60000078     bra.w      $374
0002fe: 206f0004     movea.l    $4(a7), a0
000302: 208c         move.l     a4, (a0)
000304: 6000006e     bra.w      $374
000308: 2057         movea.l    (a7), a0
00030a: 226f0004     movea.l    $4(a7), a1
00030e: 22a80008     move.l     $8(a0), (a1)
000312: 7000         moveq      #$0, d0
000314: 508f         addq.l     #$8, a7
000316: 6000005e     bra.w      $376
00031a: 60000058     bra.w      $374
00031e: 2f04         move.l     d4, -(a7)
000320: 4853         pea.l      (a3)
000322: 2f2f0014     move.l     $14(a7), -(a7)
000326: 220c         move.l     a4, d1
000328: 200a         move.l     a2, d0
00032a: 206a0004     movea.l    $4(a2), a0
00032e: 2050         movea.l    (a0), a0
000330: 3428004e     move.w     $4e(a0), d2
000334: 48c2         ext.l      d2
000336: 206a0004     movea.l    $4(a2), a0
00033a: 2050         movea.l    (a0), a0
00033c: 4eb02800     jsr        (a0, d2.l)
000340: 4fef000c     lea.l      $c(a7), a7
000344: 508f         addq.l     #$8, a7
000346: 6000002e     bra.w      $376
00034a: 60000028     bra.w      $374
00034e: 0c840000ffff cmpi.l     #$ffff, d4
000354: 6200ffc8     bhi.w      $31e
000358: 0c447f03     cmpi.w     #$7f03, d4
00035c: 6700ffa0     beq.w      $2fe
000360: 0c447f04     cmpi.w     #$7f04, d4
000364: 6700ffa2     beq.w      $308
000368: 0c44ff32     cmpi.w     #$ff32, d4
00036c: 6700ff7a     beq.w      $2e8
000370: 6000ffac     bra.w      $31e
000374: 508f         addq.l     #$8, a7
000376: 4ced1f14ffe4 movem.l    -$1c(a5), d2/d4/a0-a4
00037c: 4e5d         unlk       a5
00037e: 4e75         rts        
000380: 4e550000     link.w     a5, #$0
000384: 48e7e8b8     movem.l    d0-d2/d4/a0/a2-a4, -(a7)
000388: 2440         movea.l    d0, a2
00038a: 266f0028     movea.l    $28(a7), a3
00038e: 206a0004     movea.l    $4(a2), a0
000392: 28680004     movea.l    $4(a0), a4
000396: 203c0000ffff move.l     #$ffff, d0
00039c: c0ab0004     and.l      $4(a3), d0
0003a0: 2800         move.l     d0, d4
0003a2: 60000030     bra.w      $3d4
0003a6: 2f04         move.l     d4, -(a7)
0003a8: 4853         pea.l      (a3)
0003aa: 2f2f000c     move.l     $c(a7), -(a7)
0003ae: 220c         move.l     a4, d1
0003b0: 200a         move.l     a2, d0
0003b2: 206a0004     movea.l    $4(a2), a0
0003b6: 2050         movea.l    (a0), a0
0003b8: 34280050     move.w     $50(a0), d2
0003bc: 48c2         ext.l      d2
0003be: 206a0004     movea.l    $4(a2), a0
0003c2: 2050         movea.l    (a0), a0
0003c4: 4eb02800     jsr        (a0, d2.l)
0003c8: 4fef000c     lea.l      $c(a7), a7
0003cc: 6000000a     bra.w      $3d8
0003d0: 60000006     bra.w      $3d8
0003d4: 6000ffd0     bra.w      $3a6
0003d8: 4ced1d14ffe8 movem.l    -$18(a5), d2/d4/a0/a2-a4
0003de: 4e5d         unlk       a5
0003e0: 4e75         rts        
0003e2: 4e550000     link.w     a5, #$0
0003e6: 48e7e0b0     movem.l    d0-d2/a0/a2-a3, -(a7)
0003ea: 2440         movea.l    d0, a2
0003ec: 206a0004     movea.l    $4(a2), a0
0003f0: 26680004     movea.l    $4(a0), a3
0003f4: 48787f40     pea.l      $7f40.w
0003f8: 2f2f0024     move.l     $24(a7), -(a7)
0003fc: 2f2f000c     move.l     $c(a7), -(a7)
000400: 220b         move.l     a3, d1
000402: 200a         move.l     a2, d0
000404: 206a0004     movea.l    $4(a2), a0
000408: 2050         movea.l    (a0), a0
00040a: 34280050     move.w     $50(a0), d2
00040e: 48c2         ext.l      d2
000410: 206a0004     movea.l    $4(a2), a0
000414: 2050         movea.l    (a0), a0
000416: 4eb02800     jsr        (a0, d2.l)
00041a: 4fef000c     lea.l      $c(a7), a7
00041e: 7000         moveq      #$0, d0
000420: 60000004     bra.w      $426
000424: 4e71         nop        
000426: 4ced0d04fff0 movem.l    -$10(a5), d2/a0/a2-a3
00042c: 4e5d         unlk       a5
00042e: 4e75         rts        
000430: 4afb         .dc.w      $4afb
000432: 00274028     ori.b      #$28, -(a7)
000436: 23296765     move.l     $6765(a1), -(a1)
00043a: 6e66         bgt.b      $4a2
00043c: 6d2e         blt.b      $46c
00043e: 6309         bls.b      $449
000440: 392e3120     move.w     $3120(a6), -(a4)
000444: 2020         move.l     -(a0), d0
000446: 20362f32322f39352020 move.l     ([$322f3935, a6, d2.l * 8], $2020), d0
000450: 2020         move.l     -(a0), d0
000452: 31343a33     move.w     $33(a4, d3.l), -(a0)
000456: 343a3435     move.w     $388d(pc), d2
00045a: 00004e55     ori.b      #$55, d0
00045e: 000048e7     ori.b      #$e7, d0
000462: 8020         or.b       -(a0), d0
000464: 2440         movea.l    d0, a2
000466: 528a         addq.l     #$1, a2
000468: 4a12         tst.b      (a2)
00046a: 6700000a     beq.w      $476
00046e: 0c12002f     cmpi.b     #$2f, (a2)
000472: 6600fff2     bne.w      $466
000476: 200a         move.l     a2, d0
000478: 60000004     bra.w      $47e
00047c: 4e71         nop        
00047e: 4ced0400fffc movem.l    -$4(a5), a2
000484: 4e5d         unlk       a5
000486: 4e75         rts        
000488: 4e550000     link.w     a5, #$0
00048c: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
000490: 2440         movea.l    d0, a2
000492: 2641         movea.l    d1, a3
000494: 60000004     bra.w      $49a
000498: 16d2         move.b     (a2), (a3)+
00049a: 528a         addq.l     #$1, a2
00049c: 4a12         tst.b      (a2)
00049e: 6700000a     beq.w      $4aa
0004a2: 0c12002f     cmpi.b     #$2f, (a2)
0004a6: 6600fff0     bne.w      $498
0004aa: 4213         clr.b      (a3)
0004ac: 200a         move.l     a2, d0
0004ae: 60000004     bra.w      $4b4
0004b2: 4e71         nop        
0004b4: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0004ba: 4e5d         unlk       a5
0004bc: 4e75         rts        
0004be: 6765         beq.b      $525
0004c0: 6e66         bgt.b      $528
0004c2: 6d0000b8     blt.w      $57c
0004c6: dc08         .dc.w      $dc08
