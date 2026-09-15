00003c: 002800380048 ori.b      #$38, $48(a0)
000042: 00580068     ori.w      #$68, (a0)+
000046: 007800880098 ori.w      #$88, $98.w
00004c: 00a800b800c800d8 ori.l      #$b800c8, $d8(a0)
000054: 00e8         .dc.w      $00e8
000056: 2200         move.l     d0, d1
000058: 6b06         bmi.b      $60
00005a: 2b410004     move.l     d1, $4(a5)
00005e: 4e75         rts        
000060: 4481         neg.l      d1
000062: 4e75         rts        
000064: 2f0d         move.l     a5, -(a7)
000066: 220c         move.l     a4, d1
000068: 2009         move.l     a1, d0
00006a: 610000c8     bsr.w      $134
00006e: 588f         addq.l     #$4, a7
000070: 6000ffe4     bra.w      $56
000074: 2f0d         move.l     a5, -(a7)
000076: 220c         move.l     a4, d1
000078: 2009         move.l     a1, d0
00007a: 61000304     bsr.w      $380
00007e: 588f         addq.l     #$4, a7
000080: 6000ffd4     bra.w      $56
000084: 2f0d         move.l     a5, -(a7)
000086: 220c         move.l     a4, d1
000088: 2009         move.l     a1, d0
00008a: 6100086e     bsr.w      $8fa
00008e: 588f         addq.l     #$4, a7
000090: 6000ffc4     bra.w      $56
000094: 2f0d         move.l     a5, -(a7)
000096: 220c         move.l     a4, d1
000098: 2009         move.l     a1, d0
00009a: 61000a62     bsr.w      $afe
00009e: 588f         addq.l     #$4, a7
0000a0: 6000ffb4     bra.w      $56
0000a4: 2f0d         move.l     a5, -(a7)
0000a6: 220c         move.l     a4, d1
0000a8: 2009         move.l     a1, d0
0000aa: 61000c7e     bsr.w      $d2a
0000ae: 588f         addq.l     #$4, a7
0000b0: 6000ffa4     bra.w      $56
0000b4: 2f0d         move.l     a5, -(a7)
0000b6: 220c         move.l     a4, d1
0000b8: 2009         move.l     a1, d0
0000ba: 61000e52     bsr.w      $f0e
0000be: 588f         addq.l     #$4, a7
0000c0: 6000ff94     bra.w      $56
0000c4: 2f0d         move.l     a5, -(a7)
0000c6: 220c         move.l     a4, d1
0000c8: 2009         move.l     a1, d0
0000ca: 61000f5e     bsr.w      $102a
0000ce: 588f         addq.l     #$4, a7
0000d0: 6000ff84     bra.w      $56
0000d4: 2f0d         move.l     a5, -(a7)
0000d6: 220c         move.l     a4, d1
0000d8: 2009         move.l     a1, d0
0000da: 61001096     bsr.w      $1172
0000de: 588f         addq.l     #$4, a7
0000e0: 6000ff74     bra.w      $56
0000e4: 2f0d         move.l     a5, -(a7)
0000e6: 220c         move.l     a4, d1
0000e8: 2009         move.l     a1, d0
0000ea: 61001242     bsr.w      $132e
0000ee: 588f         addq.l     #$4, a7
0000f0: 6000ff64     bra.w      $56
0000f4: 2f0d         move.l     a5, -(a7)
0000f6: 220c         move.l     a4, d1
0000f8: 2009         move.l     a1, d0
0000fa: 61001362     bsr.w      $145e
0000fe: 588f         addq.l     #$4, a7
000100: 6000ff54     bra.w      $56
000104: 2f0d         move.l     a5, -(a7)
000106: 220c         move.l     a4, d1
000108: 2009         move.l     a1, d0
00010a: 610014be     bsr.w      $15ca
00010e: 588f         addq.l     #$4, a7
000110: 6000ff44     bra.w      $56
000114: 2f0d         move.l     a5, -(a7)
000116: 220c         move.l     a4, d1
000118: 2009         move.l     a1, d0
00011a: 61001b3a     bsr.w      $1c56
00011e: 588f         addq.l     #$4, a7
000120: 6000ff34     bra.w      $56
000124: 2f0d         move.l     a5, -(a7)
000126: 220c         move.l     a4, d1
000128: 2009         move.l     a1, d0
00012a: 6100295c     bsr.w      $2a88
00012e: 588f         addq.l     #$4, a7
000130: 6000ff24     bra.w      $56
000134: 4e550000     link.w     a5, #$0
000138: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
00013c: 2440         movea.l    d0, a2
00013e: 4fefffe0     lea.l      -$20(a7), a7
000142: 206f0038     movea.l    $38(a7), a0
000146: 20280020     move.l     $20(a0), d0
00014a: 2f400014     move.l     d0, $14(a7)
00014e: 2f400018     move.l     d0, $18(a7)
000152: 206f0038     movea.l    $38(a7), a0
000156: 3f680002000a move.w     $2(a0), $a(a7)
00015c: 206f0038     movea.l    $38(a7), a0
000160: 3f6800060008 move.w     $6(a0), $8(a7)
000166: 206f0038     movea.l    $38(a7), a0
00016a: 2f6800080004 move.l     $8(a0), $4(a7)
000170: 206a0004     movea.l    $4(a2), a0
000174: 20680004     movea.l    $4(a0), a0
000178: 2f68002a001c move.l     $2a(a0), $1c(a7)
00017e: 426a0074     clr.w      $74(a2)
000182: 7056         moveq      #$56, d0
000184: d08a         add.l      a2, d0
000186: 206f0038     movea.l    $38(a7), a0
00018a: 21400020     move.l     d0, $20(a0)
00018e: 42aa002e     clr.l      $2e(a2)
000192: 7032         moveq      #$32, d0
000194: d08a         add.l      a2, d0
000196: 25400066     move.l     d0, $66(a2)
00019a: 257c000000010056 move.l     #$1, $56(a2)
0001a2: 257c00000008005a move.l     #$8, $5a(a2)
0001aa: 702a         moveq      #$2a, d0
0001ac: d08a         add.l      a2, d0
0001ae: 2540005e     move.l     d0, $5e(a2)
0001b2: 257c000000240062 move.l     #$24, $62(a2)
0001ba: 42aa0032     clr.l      $32(a2)
0001be: 422a0036     clr.b      $36(a2)
0001c2: 257c00150000003a move.l     #$150000, $3a(a2)
0001ca: 422a003e     clr.b      $3e(a2)
0001ce: 206f0014     movea.l    $14(a7), a0
0001d2: 0c10002f     cmpi.b     #$2f, (a0)
0001d6: 67000050     beq.w      $228
0001da: 203c00000148 move.l     #$148, d0
0001e0: d0af0024     add.l      $24(a7), d0
0001e4: 2e80         move.l     d0, (a7)
0001e6: 082f0002000b btst.b     #$2, $b(a7)
0001ec: 6700001e     beq.w      $20c
0001f0: 2057         movea.l    (a7), a0
0001f2: 156800180035 move.b     $18(a0), $35(a2)
0001f8: 2057         movea.l    (a7), a0
0001fa: 156800160036 move.b     $16(a0), $36(a2)
000200: 2057         movea.l    (a7), a0
000202: 15680017003e move.b     $17(a0), $3e(a2)
000208: 6000001a     bra.w      $224
00020c: 2057         movea.l    (a7), a0
00020e: 156800080035 move.b     $8(a0), $35(a2)
000214: 2057         movea.l    (a7), a0
000216: 156800060036 move.b     $6(a0), $36(a2)
00021c: 2057         movea.l    (a7), a0
00021e: 15680007003e move.b     $7(a0), $3e(a2)
000224: 60000064     bra.w      $28a
000228: 222f0018     move.l     $18(a7), d1
00022c: 200a         move.l     a2, d0
00022e: 6100037c     bsr.w      $5ac
000232: 2f400014     move.l     d0, $14(a7)
000236: 66000014     bne.w      $24c
00023a: 203cffffff29 move.l     #$ffffff29, d0
000240: 4fef0020     lea.l      $20(a7), a7
000244: 60000130     bra.w      $376
000248: 60000040     bra.w      $28a
00024c: 206f0014     movea.l    $14(a7), a0
000250: 4a10         tst.b      (a0)
000252: 66000036     bne.w      $28a
000256: 206f001c     movea.l    $1c(a7), a0
00025a: 15680012003f move.b     $12(a0), $3f(a2)
000260: 206f0024     movea.l    $24(a7), a0
000264: 35500040     move.w     (a0), $40(a2)
000268: 422a003e     clr.b      $3e(a2)
00026c: 357c00010074 move.w     #$1, $74(a2)
000272: 426a0086     clr.w      $86(a2)
000276: 206f0038     movea.l    $38(a7), a0
00027a: 216f00180020 move.l     $18(a7), $20(a0)
000280: 7000         moveq      #$0, d0
000282: 4fef0020     lea.l      $20(a7), a7
000286: 600000ee     bra.w      $376
00028a: 206f001c     movea.l    $1c(a7), a0
00028e: 15680012003f move.b     $12(a0), $3f(a2)
000294: 206f0024     movea.l    $24(a7), a0
000298: 35500040     move.w     (a0), $40(a2)
00029c: 356f00080044 move.w     $8(a7), $44(a2)
0002a2: 256f00040046 move.l     $4(a7), $46(a2)
0002a8: 356f000a0042 move.w     $a(a7), $42(a2)
0002ae: 202f0014     move.l     $14(a7), d0
0002b2: 6100377c     bsr.w      $3a30
0002b6: 720c         moveq      #$c, d1
0002b8: b280         cmp.l      d0, d1
0002ba: 6f000012     ble.w      $2ce
0002be: 222f0014     move.l     $14(a7), d1
0002c2: 704a         moveq      #$4a, d0
0002c4: d08a         add.l      a2, d0
0002c6: 61003786     bsr.w      $3a4e
0002ca: 6000001e     bra.w      $2ea
0002ce: 257c000000020056 move.l     #$2, $56(a2)
0002d6: 256f0014006e move.l     $14(a7), $6e(a2)
0002dc: 202f0014     move.l     $14(a7), d0
0002e0: 6100374e     bsr.w      $3a30
0002e4: 5280         addq.l     #$1, d0
0002e6: 2540006a     move.l     d0, $6a(a2)
0002ea: 2f2f0038     move.l     $38(a7), -(a7)
0002ee: 2f2f0028     move.l     $28(a7), -(a7)
0002f2: 222f0024     move.l     $24(a7), d1
0002f6: 200a         move.l     a2, d0
0002f8: 61002142     bsr.w      $243c
0002fc: 508f         addq.l     #$8, a7
0002fe: 2f400010     move.l     d0, $10(a7)
000302: 6c00000c     bge.w      $310
000306: 2f6f0010000c move.l     $10(a7), $c(a7)
00030c: 6000002c     bra.w      $33a
000310: 202f0024     move.l     $24(a7), d0
000314: 610032bc     bsr.w      $35d2
000318: 206f0038     movea.l    $38(a7), a0
00031c: 216f00100020 move.l     $10(a7), $20(a0)
000322: 2f2f0038     move.l     $38(a7), -(a7)
000326: 2f2f0028     move.l     $28(a7), -(a7)
00032a: 222f0024     move.l     $24(a7), d1
00032e: 200a         move.l     a2, d0
000330: 61001fde     bsr.w      $2310
000334: 508f         addq.l     #$8, a7
000336: 2f40000c     move.l     d0, $c(a7)
00033a: 7000         moveq      #$0, d0
00033c: 302a0030     move.w     $30(a2), d0
000340: 6c00000c     bge.w      $34e
000344: 202a002a     move.l     $2a(a2), d0
000348: 4480         neg.l      d0
00034a: 2f40000c     move.l     d0, $c(a7)
00034e: 156a002f0035 move.b     $2f(a2), $35(a2)
000354: 156a002e0036 move.b     $2e(a2), $36(a2)
00035a: 426a0086     clr.w      $86(a2)
00035e: 206f0038     movea.l    $38(a7), a0
000362: 216f00180020 move.l     $18(a7), $20(a0)
000368: 202f000c     move.l     $c(a7), d0
00036c: 4fef0020     lea.l      $20(a7), a7
000370: 60000004     bra.w      $376
000374: 4e71         nop        
000376: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00037c: 4e5d         unlk       a5
00037e: 4e75         rts        
000380: 4e550000     link.w     a5, #$0
000384: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000388: 2440         movea.l    d0, a2
00038a: 4fefffe6     lea.l      -$1a(a7), a7
00038e: 206f0032     movea.l    $32(a7), a0
000392: 20280020     move.l     $20(a0), d0
000396: 2f40000e     move.l     d0, $e(a7)
00039a: 2f400012     move.l     d0, $12(a7)
00039e: 206f0032     movea.l    $32(a7), a0
0003a2: 3f6800020004 move.w     $2(a0), $4(a7)
0003a8: 206a0004     movea.l    $4(a2), a0
0003ac: 20680004     movea.l    $4(a0), a0
0003b0: 2f68002a0016 move.l     $2a(a0), $16(a7)
0003b6: 426a0074     clr.w      $74(a2)
0003ba: 7056         moveq      #$56, d0
0003bc: d08a         add.l      a2, d0
0003be: 206f0032     movea.l    $32(a7), a0
0003c2: 21400020     move.l     d0, $20(a0)
0003c6: 42aa002e     clr.l      $2e(a2)
0003ca: 7032         moveq      #$32, d0
0003cc: d08a         add.l      a2, d0
0003ce: 25400066     move.l     d0, $66(a2)
0003d2: 257c000000010056 move.l     #$1, $56(a2)
0003da: 257c00000008005a move.l     #$8, $5a(a2)
0003e2: 702a         moveq      #$2a, d0
0003e4: d08a         add.l      a2, d0
0003e6: 2540005e     move.l     d0, $5e(a2)
0003ea: 257c000000240062 move.l     #$24, $62(a2)
0003f2: 42aa0032     clr.l      $32(a2)
0003f6: 422a0036     clr.b      $36(a2)
0003fa: 257c00030000003a move.l     #$30000, $3a(a2)
000402: 422a003e     clr.b      $3e(a2)
000406: 206f000e     movea.l    $e(a7), a0
00040a: 0c10002f     cmpi.b     #$2f, (a0)
00040e: 67000050     beq.w      $460
000412: 203c00000148 move.l     #$148, d0
000418: d0af001e     add.l      $1e(a7), d0
00041c: 2e80         move.l     d0, (a7)
00041e: 082f00020005 btst.b     #$2, $5(a7)
000424: 6700001e     beq.w      $444
000428: 2057         movea.l    (a7), a0
00042a: 156800180035 move.b     $18(a0), $35(a2)
000430: 2057         movea.l    (a7), a0
000432: 156800160036 move.b     $16(a0), $36(a2)
000438: 2057         movea.l    (a7), a0
00043a: 15680017003e move.b     $17(a0), $3e(a2)
000440: 6000001a     bra.w      $45c
000444: 2057         movea.l    (a7), a0
000446: 156800080035 move.b     $8(a0), $35(a2)
00044c: 2057         movea.l    (a7), a0
00044e: 156800060036 move.b     $6(a0), $36(a2)
000454: 2057         movea.l    (a7), a0
000456: 15680007003e move.b     $7(a0), $3e(a2)
00045c: 60000064     bra.w      $4c2
000460: 222f0012     move.l     $12(a7), d1
000464: 200a         move.l     a2, d0
000466: 61000144     bsr.w      $5ac
00046a: 2f40000e     move.l     d0, $e(a7)
00046e: 66000014     bne.w      $484
000472: 203cffffff29 move.l     #$ffffff29, d0
000478: 4fef001a     lea.l      $1a(a7), a7
00047c: 60000124     bra.w      $5a2
000480: 60000040     bra.w      $4c2
000484: 206f000e     movea.l    $e(a7), a0
000488: 4a10         tst.b      (a0)
00048a: 66000036     bne.w      $4c2
00048e: 206f0016     movea.l    $16(a7), a0
000492: 15680012003f move.b     $12(a0), $3f(a2)
000498: 206f001e     movea.l    $1e(a7), a0
00049c: 35500040     move.w     (a0), $40(a2)
0004a0: 422a003e     clr.b      $3e(a2)
0004a4: 357c00010074 move.w     #$1, $74(a2)
0004aa: 426a0086     clr.w      $86(a2)
0004ae: 206f0032     movea.l    $32(a7), a0
0004b2: 216f00120020 move.l     $12(a7), $20(a0)
0004b8: 7000         moveq      #$0, d0
0004ba: 4fef001a     lea.l      $1a(a7), a7
0004be: 600000e2     bra.w      $5a2
0004c2: 206f0016     movea.l    $16(a7), a0
0004c6: 15680012003f move.b     $12(a0), $3f(a2)
0004cc: 206f001e     movea.l    $1e(a7), a0
0004d0: 35500040     move.w     (a0), $40(a2)
0004d4: 202f000e     move.l     $e(a7), d0
0004d8: 61003556     bsr.w      $3a30
0004dc: 7212         moveq      #$12, d1
0004de: b280         cmp.l      d0, d1
0004e0: 6f000012     ble.w      $4f4
0004e4: 222f000e     move.l     $e(a7), d1
0004e8: 7044         moveq      #$44, d0
0004ea: d08a         add.l      a2, d0
0004ec: 61003560     bsr.w      $3a4e
0004f0: 6000001e     bra.w      $510
0004f4: 257c000000020056 move.l     #$2, $56(a2)
0004fc: 256f000e006e move.l     $e(a7), $6e(a2)
000502: 202f000e     move.l     $e(a7), d0
000506: 61003528     bsr.w      $3a30
00050a: 5280         addq.l     #$1, d0
00050c: 2540006a     move.l     d0, $6a(a2)
000510: 356f00040042 move.w     $4(a7), $42(a2)
000516: 2f2f0032     move.l     $32(a7), -(a7)
00051a: 2f2f0022     move.l     $22(a7), -(a7)
00051e: 222f001e     move.l     $1e(a7), d1
000522: 200a         move.l     a2, d0
000524: 61001f16     bsr.w      $243c
000528: 508f         addq.l     #$8, a7
00052a: 2f40000a     move.l     d0, $a(a7)
00052e: 6c00000c     bge.w      $53c
000532: 2f6f000a0006 move.l     $a(a7), $6(a7)
000538: 6000002c     bra.w      $566
00053c: 202f001e     move.l     $1e(a7), d0
000540: 61003090     bsr.w      $35d2
000544: 206f0032     movea.l    $32(a7), a0
000548: 216f000a0020 move.l     $a(a7), $20(a0)
00054e: 2f2f0032     move.l     $32(a7), -(a7)
000552: 2f2f0022     move.l     $22(a7), -(a7)
000556: 222f001e     move.l     $1e(a7), d1
00055a: 200a         move.l     a2, d0
00055c: 61001db2     bsr.w      $2310
000560: 508f         addq.l     #$8, a7
000562: 2f400006     move.l     d0, $6(a7)
000566: 7000         moveq      #$0, d0
000568: 302a0030     move.w     $30(a2), d0
00056c: 6c00000c     bge.w      $57a
000570: 202a002a     move.l     $2a(a2), d0
000574: 4480         neg.l      d0
000576: 2f400006     move.l     d0, $6(a7)
00057a: 156a002f0035 move.b     $2f(a2), $35(a2)
000580: 156a002e0036 move.b     $2e(a2), $36(a2)
000586: 426a0086     clr.w      $86(a2)
00058a: 206f0032     movea.l    $32(a7), a0
00058e: 216f00120020 move.l     $12(a7), $20(a0)
000594: 202f0006     move.l     $6(a7), d0
000598: 4fef001a     lea.l      $1a(a7), a7
00059c: 60000004     bra.w      $5a2
0005a0: 4e71         nop        
0005a2: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0005a8: 4e5d         unlk       a5
0005aa: 4e75         rts        
0005ac: 4e550000     link.w     a5, #$0
0005b0: 48e7ceb0     movem.l    d0-d1/d4-d6/a0/a2-a3, -(a7)
0005b4: 2440         movea.l    d0, a2
0005b6: 2641         movea.l    d1, a3
0005b8: 4fefffe0     lea.l      -$20(a7), a7
0005bc: 60000012     bra.w      $5d0
0005c0: 4a13         tst.b      (a3)
0005c2: 6600000c     bne.w      $5d0
0005c6: 200b         move.l     a3, d0
0005c8: 4fef0020     lea.l      $20(a7), a7
0005cc: 60000322     bra.w      $8f0
0005d0: 528b         addq.l     #$1, a3
0005d2: 0c13002f     cmpi.b     #$2f, (a3)
0005d6: 6600ffe8     bne.w      $5c0
0005da: 528b         addq.l     #$1, a3
0005dc: 206a0004     movea.l    $4(a2), a0
0005e0: 20680004     movea.l    $4(a0), a0
0005e4: 2f68002a0008 move.l     $2a(a0), $8(a7)
0005ea: 0c130040     cmpi.b     #$40, (a3)
0005ee: 67000080     beq.w      $670
0005f2: 0c13005f     cmpi.b     #$5f, (a3)
0005f6: 67000078     beq.w      $670
0005fa: 206f0008     movea.l    $8(a7), a0
0005fe: 4aa8003c     tst.l      $3c(a0)
000602: 6700006c     beq.w      $670
000606: 1813         move.b     (a3), d4
000608: 0c040041     cmpi.b     #$41, d4
00060c: 6d000062     blt.w      $670
000610: 206f0008     movea.l    $8(a7), a0
000614: 2028003c     move.l     $3c(a0), d0
000618: 5480         addq.l     #$2, d0
00061a: 2e80         move.l     d0, (a7)
00061c: 7c00         moveq      #$0, d6
00061e: 60000022     bra.w      $642
000622: 220b         move.l     a3, d1
000624: 2017         move.l     (a7), d0
000626: 61003394     bsr.w      $39bc
00062a: 4a80         tst.l      d0
00062c: 6600000c     bne.w      $63a
000630: 7014         moveq      #$14, d0
000632: d097         add.l      (a7), d0
000634: 2640         movea.l    d0, a3
000636: 6000001c     bra.w      $654
00063a: 069700000032 addi.l     #$32, (a7)
000640: 5286         addq.l     #$1, d6
000642: 206f0008     movea.l    $8(a7), a0
000646: 2068003c     movea.l    $3c(a0), a0
00064a: 3010         move.w     (a0), d0
00064c: 48c0         ext.l      d0
00064e: b086         cmp.l      d6, d0
000650: 6e00ffd0     bgt.w      $622
000654: 206f0008     movea.l    $8(a7), a0
000658: 2068003c     movea.l    $3c(a0), a0
00065c: 3010         move.w     (a0), d0
00065e: 48c0         ext.l      d0
000660: b086         cmp.l      d6, d0
000662: 6600000c     bne.w      $670
000666: 7000         moveq      #$0, d0
000668: 4fef0020     lea.l      $20(a7), a7
00066c: 60000282     bra.w      $8f0
000670: 6000025a     bra.w      $8cc
000674: 182b0001     move.b     $1(a3), d4
000678: 0c040041     cmpi.b     #$41, d4
00067c: 6d0000d4     blt.w      $752
000680: 206f0008     movea.l    $8(a7), a0
000684: 4aa80038     tst.l      $38(a0)
000688: 6600000c     bne.w      $696
00068c: 7000         moveq      #$0, d0
00068e: 4fef0020     lea.l      $20(a7), a7
000692: 6000025c     bra.w      $8f0
000696: 7c00         moveq      #$0, d6
000698: 6000000e     bra.w      $6a8
00069c: 2006         move.l     d6, d0
00069e: 5286         addq.l     #$1, d6
0006a0: 41ef000c     lea.l      $c(a7), a0
0006a4: 11840800     move.b     d4, (a0, d0.l)
0006a8: 528b         addq.l     #$1, a3
0006aa: 1813         move.b     (a3), d4
0006ac: 0c04005f     cmpi.b     #$5f, d4
0006b0: 6700000a     beq.w      $6bc
0006b4: 7013         moveq      #$13, d0
0006b6: b086         cmp.l      d6, d0
0006b8: 6e00ffe2     bgt.w      $69c
0006bc: 7013         moveq      #$13, d0
0006be: b086         cmp.l      d6, d0
0006c0: 66000014     bne.w      $6d6
0006c4: 0c04005f     cmpi.b     #$5f, d4
0006c8: 6700000c     beq.w      $6d6
0006cc: 7000         moveq      #$0, d0
0006ce: 4fef0020     lea.l      $20(a7), a7
0006d2: 6000021c     bra.w      $8f0
0006d6: 41ef000c     lea.l      $c(a7), a0
0006da: 42306800     clr.b      (a0, d6.l)
0006de: 206f0008     movea.l    $8(a7), a0
0006e2: 20280038     move.l     $38(a0), d0
0006e6: 5480         addq.l     #$2, d0
0006e8: 2f400004     move.l     d0, $4(a7)
0006ec: 7c00         moveq      #$0, d6
0006ee: 60000030     bra.w      $720
0006f2: 41ef000c     lea.l      $c(a7), a0
0006f6: 2208         move.l     a0, d1
0006f8: 202f0004     move.l     $4(a7), d0
0006fc: 610032be     bsr.w      $39bc
000700: 4a80         tst.l      d0
000702: 66000012     bne.w      $716
000706: 206f0004     movea.l    $4(a7), a0
00070a: 7000         moveq      #$0, d0
00070c: 10280013     move.b     $13(a0), d0
000710: 2a00         move.l     d0, d5
000712: 6000001e     bra.w      $732
000716: 06af000000140004 addi.l     #$14, $4(a7)
00071e: 5286         addq.l     #$1, d6
000720: 206f0008     movea.l    $8(a7), a0
000724: 20680038     movea.l    $38(a0), a0
000728: 3010         move.w     (a0), d0
00072a: 48c0         ext.l      d0
00072c: b086         cmp.l      d6, d0
00072e: 6e00ffc2     bgt.w      $6f2
000732: 206f0008     movea.l    $8(a7), a0
000736: 20680038     movea.l    $38(a0), a0
00073a: 3010         move.w     (a0), d0
00073c: 48c0         ext.l      d0
00073e: b086         cmp.l      d6, d0
000740: 6600000c     bne.w      $74e
000744: 7000         moveq      #$0, d0
000746: 4fef0020     lea.l      $20(a7), a7
00074a: 600001a4     bra.w      $8f0
00074e: 60000032     bra.w      $782
000752: 7a00         moveq      #$0, d5
000754: 60000018     bra.w      $76e
000758: 2005         move.l     d5, d0
00075a: 720a         moveq      #$a, d1
00075c: 61003340     bsr.w      $3a9e
000760: 1204         move.b     d4, d1
000762: 4881         ext.w      d1
000764: 48c1         ext.l      d1
000766: d081         add.l      d1, d0
000768: 7230         moveq      #$30, d1
00076a: 9081         sub.l      d1, d0
00076c: 2a00         move.l     d0, d5
00076e: 528b         addq.l     #$1, a3
000770: 1813         move.b     (a3), d4
000772: 0c040030     cmpi.b     #$30, d4
000776: 6d00000a     blt.w      $782
00077a: 0c040039     cmpi.b     #$39, d4
00077e: 6f00ffd8     ble.w      $758
000782: 0c1b005f     cmpi.b     #$5f, (a3)+
000786: 67000010     beq.w      $798
00078a: 7000         moveq      #$0, d0
00078c: 4fef0020     lea.l      $20(a7), a7
000790: 6000015e     bra.w      $8f0
000794: 6000005c     bra.w      $7f2
000798: 1545002f     move.b     d5, $2f(a2)
00079c: 15450035     move.b     d5, $35(a2)
0007a0: 0c13005f     cmpi.b     #$5f, (a3)
0007a4: 6600004c     bne.w      $7f2
0007a8: 7a00         moveq      #$0, d5
0007aa: 60000018     bra.w      $7c4
0007ae: 2005         move.l     d5, d0
0007b0: 720a         moveq      #$a, d1
0007b2: 610032ea     bsr.w      $3a9e
0007b6: 1204         move.b     d4, d1
0007b8: 4881         ext.w      d1
0007ba: 48c1         ext.l      d1
0007bc: d081         add.l      d1, d0
0007be: 7230         moveq      #$30, d1
0007c0: 9081         sub.l      d1, d0
0007c2: 2a00         move.l     d0, d5
0007c4: 528b         addq.l     #$1, a3
0007c6: 1813         move.b     (a3), d4
0007c8: 0c040030     cmpi.b     #$30, d4
0007cc: 6d00000a     blt.w      $7d8
0007d0: 0c040039     cmpi.b     #$39, d4
0007d4: 6f00ffd8     ble.w      $7ae
0007d8: 0c1b005f     cmpi.b     #$5f, (a3)+
0007dc: 67000010     beq.w      $7ee
0007e0: 7000         moveq      #$0, d0
0007e2: 4fef0020     lea.l      $20(a7), a7
0007e6: 60000108     bra.w      $8f0
0007ea: 60000006     bra.w      $7f2
0007ee: 35450072     move.w     d5, $72(a2)
0007f2: 600000f0     bra.w      $8e4
0007f6: 200b         move.l     a3, d0
0007f8: 61003236     bsr.w      $3a30
0007fc: 5380         subq.l     #$1, d0
0007fe: 66000008     bne.w      $808
000802: 528b         addq.l     #$1, a3
000804: 600000bc     bra.w      $8c2
000808: 7a00         moveq      #$0, d5
00080a: 60000018     bra.w      $824
00080e: 2005         move.l     d5, d0
000810: 720a         moveq      #$a, d1
000812: 6100328a     bsr.w      $3a9e
000816: 1204         move.b     d4, d1
000818: 4881         ext.w      d1
00081a: 48c1         ext.l      d1
00081c: d081         add.l      d1, d0
00081e: 7230         moveq      #$30, d1
000820: 9081         sub.l      d1, d0
000822: 2a00         move.l     d0, d5
000824: 528b         addq.l     #$1, a3
000826: 1813         move.b     (a3), d4
000828: 0c040030     cmpi.b     #$30, d4
00082c: 6d00000a     blt.w      $838
000830: 0c040039     cmpi.b     #$39, d4
000834: 6f00ffd8     ble.w      $80e
000838: 1545002f     move.b     d5, $2f(a2)
00083c: 15450035     move.b     d5, $35(a2)
000840: 0c13002c     cmpi.b     #$2c, (a3)
000844: 6600007c     bne.w      $8c2
000848: 7a00         moveq      #$0, d5
00084a: 60000018     bra.w      $864
00084e: 2005         move.l     d5, d0
000850: 720a         moveq      #$a, d1
000852: 6100324a     bsr.w      $3a9e
000856: 1204         move.b     d4, d1
000858: 4881         ext.w      d1
00085a: 48c1         ext.l      d1
00085c: d081         add.l      d1, d0
00085e: 7230         moveq      #$30, d1
000860: 9081         sub.l      d1, d0
000862: 2a00         move.l     d0, d5
000864: 528b         addq.l     #$1, a3
000866: 1813         move.b     (a3), d4
000868: 0c040030     cmpi.b     #$30, d4
00086c: 6d00000a     blt.w      $878
000870: 0c040039     cmpi.b     #$39, d4
000874: 6f00ffd8     ble.w      $84e
000878: 15450036     move.b     d5, $36(a2)
00087c: 1545002e     move.b     d5, $2e(a2)
000880: 0c13002c     cmpi.b     #$2c, (a3)
000884: 66000036     bne.w      $8bc
000888: 7a00         moveq      #$0, d5
00088a: 60000018     bra.w      $8a4
00088e: 2005         move.l     d5, d0
000890: 720a         moveq      #$a, d1
000892: 6100320a     bsr.w      $3a9e
000896: 1204         move.b     d4, d1
000898: 4881         ext.w      d1
00089a: 48c1         ext.l      d1
00089c: d081         add.l      d1, d0
00089e: 7230         moveq      #$30, d1
0008a0: 9081         sub.l      d1, d0
0008a2: 2a00         move.l     d0, d5
0008a4: 528b         addq.l     #$1, a3
0008a6: 1813         move.b     (a3), d4
0008a8: 0c040030     cmpi.b     #$30, d4
0008ac: 6d00000a     blt.w      $8b8
0008b0: 0c040039     cmpi.b     #$39, d4
0008b4: 6f00ffd8     ble.w      $88e
0008b8: 35450030     move.w     d5, $30(a2)
0008bc: 357c00010074 move.w     #$1, $74(a2)
0008c2: 60000020     bra.w      $8e4
0008c6: 97cb         suba.l     a3, a3
0008c8: 6000001a     bra.w      $8e4
0008cc: 1013         move.b     (a3), d0
0008ce: 4880         ext.w      d0
0008d0: 0c400040     cmpi.w     #$40, d0
0008d4: 6700ff20     beq.w      $7f6
0008d8: 0c40005f     cmpi.w     #$5f, d0
0008dc: 6700fd96     beq.w      $674
0008e0: 6000ffe4     bra.w      $8c6
0008e4: 200b         move.l     a3, d0
0008e6: 4fef0020     lea.l      $20(a7), a7
0008ea: 60000004     bra.w      $8f0
0008ee: 4e71         nop        
0008f0: 4ced0d70ffe8 movem.l    -$18(a5), d4-d6/a0/a2-a3
0008f6: 4e5d         unlk       a5
0008f8: 4e75         rts        
0008fa: 4e550000     link.w     a5, #$0
0008fe: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000902: 2440         movea.l    d0, a2
000904: 4fefffd8     lea.l      -$28(a7), a7
000908: 206f0040     movea.l    $40(a7), a0
00090c: 2f6800200020 move.l     $20(a0), $20(a7)
000912: 206f0040     movea.l    $40(a7), a0
000916: 3f680002000e move.w     $2(a0), $e(a7)
00091c: 206f0040     movea.l    $40(a7), a0
000920: 3f680006000c move.w     $6(a0), $c(a7)
000926: 206a0004     movea.l    $4(a2), a0
00092a: 20680004     movea.l    $4(a0), a0
00092e: 2f68002a0024 move.l     $2a(a0), $24(a7)
000934: 257c000000010056 move.l     #$1, $56(a2)
00093c: 257c00000008005a move.l     #$8, $5a(a2)
000944: 41ef0004     lea.l      $4(a7), a0
000948: 2548005e     move.l     a0, $5e(a2)
00094c: 7032         moveq      #$32, d0
00094e: d08a         add.l      a2, d0
000950: 25400066     move.l     d0, $66(a2)
000954: 257c000000240062 move.l     #$24, $62(a2)
00095c: 7056         moveq      #$56, d0
00095e: d08a         add.l      a2, d0
000960: 206f0040     movea.l    $40(a7), a0
000964: 21400020     move.l     d0, $20(a0)
000968: 422a003e     clr.b      $3e(a2)
00096c: 2f6f0020001c move.l     $20(a7), $1c(a7)
000972: 206f001c     movea.l    $1c(a7), a0
000976: 0c10002f     cmpi.b     #$2f, (a0)
00097a: 67000050     beq.w      $9cc
00097e: 203c00000148 move.l     #$148, d0
000984: d0af002c     add.l      $2c(a7), d0
000988: 2e80         move.l     d0, (a7)
00098a: 082f0002000f btst.b     #$2, $f(a7)
000990: 6700001e     beq.w      $9b0
000994: 2057         movea.l    (a7), a0
000996: 156800180035 move.b     $18(a0), $35(a2)
00099c: 2057         movea.l    (a7), a0
00099e: 156800160036 move.b     $16(a0), $36(a2)
0009a4: 2057         movea.l    (a7), a0
0009a6: 15680017003e move.b     $17(a0), $3e(a2)
0009ac: 6000001a     bra.w      $9c8
0009b0: 2057         movea.l    (a7), a0
0009b2: 156800080035 move.b     $8(a0), $35(a2)
0009b8: 2057         movea.l    (a7), a0
0009ba: 156800060036 move.b     $6(a0), $36(a2)
0009c0: 2057         movea.l    (a7), a0
0009c2: 15680007003e move.b     $7(a0), $3e(a2)
0009c8: 60000036     bra.w      $a00
0009cc: 222f0020     move.l     $20(a7), d1
0009d0: 200a         move.l     a2, d0
0009d2: 6100fbd8     bsr.w      $5ac
0009d6: 2f40001c     move.l     d0, $1c(a7)
0009da: 6700000c     beq.w      $9e8
0009de: 206f001c     movea.l    $1c(a7), a0
0009e2: 4a10         tst.b      (a0)
0009e4: 6600001a     bne.w      $a00
0009e8: 206f0040     movea.l    $40(a7), a0
0009ec: 216f00200020 move.l     $20(a7), $20(a0)
0009f2: 203cffffff29 move.l     #$ffffff29, d0
0009f8: 4fef0028     lea.l      $28(a7), a7
0009fc: 600000f6     bra.w      $af4
000a00: 206f0024     movea.l    $24(a7), a0
000a04: 15680012003f move.b     $12(a0), $3f(a2)
000a0a: 206f002c     movea.l    $2c(a7), a0
000a0e: 35500040     move.w     (a0), $40(a2)
000a12: 257c000d0000003a move.l     #$d0000, $3a(a2)
000a1a: 206f0040     movea.l    $40(a7), a0
000a1e: 256800080046 move.l     $8(a0), $46(a2)
000a24: 206f0040     movea.l    $40(a7), a0
000a28: 356800060044 move.w     $6(a0), $44(a2)
000a2e: 202f001c     move.l     $1c(a7), d0
000a32: 61002ffc     bsr.w      $3a30
000a36: 720c         moveq      #$c, d1
000a38: b280         cmp.l      d0, d1
000a3a: 6f000012     ble.w      $a4e
000a3e: 222f001c     move.l     $1c(a7), d1
000a42: 704a         moveq      #$4a, d0
000a44: d08a         add.l      a2, d0
000a46: 61003006     bsr.w      $3a4e
000a4a: 6000001e     bra.w      $a6a
000a4e: 257c000000020056 move.l     #$2, $56(a2)
000a56: 256f001c006e move.l     $1c(a7), $6e(a2)
000a5c: 202f001c     move.l     $1c(a7), d0
000a60: 61002fce     bsr.w      $3a30
000a64: 5280         addq.l     #$1, d0
000a66: 2540006a     move.l     d0, $6a(a2)
000a6a: 356f000e0042 move.w     $e(a7), $42(a2)
000a70: 2f2f0040     move.l     $40(a7), -(a7)
000a74: 2f2f0030     move.l     $30(a7), -(a7)
000a78: 222f002c     move.l     $2c(a7), d1
000a7c: 200a         move.l     a2, d0
000a7e: 610019bc     bsr.w      $243c
000a82: 508f         addq.l     #$8, a7
000a84: 2f400018     move.l     d0, $18(a7)
000a88: 6c00000c     bge.w      $a96
000a8c: 2f6f00180010 move.l     $18(a7), $10(a7)
000a92: 60000048     bra.w      $adc
000a96: 202f002c     move.l     $2c(a7), d0
000a9a: 61002b36     bsr.w      $35d2
000a9e: 206f0040     movea.l    $40(a7), a0
000aa2: 216f00180020 move.l     $18(a7), $20(a0)
000aa8: 2f2f0040     move.l     $40(a7), -(a7)
000aac: 2f2f0030     move.l     $30(a7), -(a7)
000ab0: 222f002c     move.l     $2c(a7), d1
000ab4: 200a         move.l     a2, d0
000ab6: 61001858     bsr.w      $2310
000aba: 508f         addq.l     #$8, a7
000abc: 2f400010     move.l     d0, $10(a7)
000ac0: 6d00001a     blt.w      $adc
000ac4: 2f6f00080010 move.l     $8(a7), $10(a7)
000aca: 4aaf0008     tst.l      $8(a7)
000ace: 6c00000c     bge.w      $adc
000ad2: 202f0004     move.l     $4(a7), d0
000ad6: 4480         neg.l      d0
000ad8: 2f400010     move.l     d0, $10(a7)
000adc: 206f0040     movea.l    $40(a7), a0
000ae0: 216f00200020 move.l     $20(a7), $20(a0)
000ae6: 202f0010     move.l     $10(a7), d0
000aea: 4fef0028     lea.l      $28(a7), a7
000aee: 60000004     bra.w      $af4
000af2: 4e71         nop        
000af4: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000afa: 4e5d         unlk       a5
000afc: 4e75         rts        
000afe: 4e550000     link.w     a5, #$0
000b02: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000b06: 2440         movea.l    d0, a2
000b08: 4fefffd8     lea.l      -$28(a7), a7
000b0c: 206f0040     movea.l    $40(a7), a0
000b10: 20280020     move.l     $20(a0), d0
000b14: 2f40001c     move.l     d0, $1c(a7)
000b18: 2f400020     move.l     d0, $20(a7)
000b1c: 206f0040     movea.l    $40(a7), a0
000b20: 3f680002000e move.w     $2(a0), $e(a7)
000b26: 206a0004     movea.l    $4(a2), a0
000b2a: 20680004     movea.l    $4(a0), a0
000b2e: 2f68002a0024 move.l     $2a(a0), $24(a7)
000b34: 257c000000010056 move.l     #$1, $56(a2)
000b3c: 257c00000008005a move.l     #$8, $5a(a2)
000b44: 41d7         lea.l      (a7), a0
000b46: 2548005e     move.l     a0, $5e(a2)
000b4a: 7032         moveq      #$32, d0
000b4c: d08a         add.l      a2, d0
000b4e: 25400066     move.l     d0, $66(a2)
000b52: 257c000000240062 move.l     #$24, $62(a2)
000b5a: 42aa0032     clr.l      $32(a2)
000b5e: 203c00000148 move.l     #$148, d0
000b64: d0af002c     add.l      $2c(a7), d0
000b68: 2f400008     move.l     d0, $8(a7)
000b6c: 422a003e     clr.b      $3e(a2)
000b70: 206f001c     movea.l    $1c(a7), a0
000b74: 0c10002f     cmpi.b     #$2f, (a0)
000b78: 67000050     beq.w      $bca
000b7c: 082f0002000f btst.b     #$2, $f(a7)
000b82: 67000024     beq.w      $ba8
000b86: 206f0008     movea.l    $8(a7), a0
000b8a: 156800180035 move.b     $18(a0), $35(a2)
000b90: 206f0008     movea.l    $8(a7), a0
000b94: 156800160036 move.b     $16(a0), $36(a2)
000b9a: 206f0008     movea.l    $8(a7), a0
000b9e: 15680017003e move.b     $17(a0), $3e(a2)
000ba4: 60000020     bra.w      $bc6
000ba8: 206f0008     movea.l    $8(a7), a0
000bac: 156800080035 move.b     $8(a0), $35(a2)
000bb2: 206f0008     movea.l    $8(a7), a0
000bb6: 156800060036 move.b     $6(a0), $36(a2)
000bbc: 206f0008     movea.l    $8(a7), a0
000bc0: 15680007003e move.b     $7(a0), $3e(a2)
000bc6: 60000034     bra.w      $bfc
000bca: 222f0020     move.l     $20(a7), d1
000bce: 200a         move.l     a2, d0
000bd0: 6100f9da     bsr.w      $5ac
000bd4: 2f40001c     move.l     d0, $1c(a7)
000bd8: 6700000c     beq.w      $be6
000bdc: 206f001c     movea.l    $1c(a7), a0
000be0: 4a10         tst.b      (a0)
000be2: 66000014     bne.w      $bf8
000be6: 203cffffff29 move.l     #$ffffff29, d0
000bec: 4fef0028     lea.l      $28(a7), a7
000bf0: 6000012e     bra.w      $d20
000bf4: 60000006     bra.w      $bfc
000bf8: 422a0036     clr.b      $36(a2)
000bfc: 257c000b0000003a move.l     #$b0000, $3a(a2)
000c04: 202f001c     move.l     $1c(a7), d0
000c08: 61002e26     bsr.w      $3a30
000c0c: 7212         moveq      #$12, d1
000c0e: b280         cmp.l      d0, d1
000c10: 6f000012     ble.w      $c24
000c14: 222f001c     move.l     $1c(a7), d1
000c18: 7044         moveq      #$44, d0
000c1a: d08a         add.l      a2, d0
000c1c: 61002e30     bsr.w      $3a4e
000c20: 6000001e     bra.w      $c40
000c24: 257c000000020056 move.l     #$2, $56(a2)
000c2c: 256f001c006e move.l     $1c(a7), $6e(a2)
000c32: 202f001c     move.l     $1c(a7), d0
000c36: 61002df8     bsr.w      $3a30
000c3a: 5280         addq.l     #$1, d0
000c3c: 2540006a     move.l     d0, $6a(a2)
000c40: 356f000e0042 move.w     $e(a7), $42(a2)
000c46: 206f0024     movea.l    $24(a7), a0
000c4a: 15680012003f move.b     $12(a0), $3f(a2)
000c50: 206f002c     movea.l    $2c(a7), a0
000c54: 35500040     move.w     (a0), $40(a2)
000c58: 7056         moveq      #$56, d0
000c5a: d08a         add.l      a2, d0
000c5c: 206f0040     movea.l    $40(a7), a0
000c60: 21400020     move.l     d0, $20(a0)
000c64: 2f2f0040     move.l     $40(a7), -(a7)
000c68: 2f2f0030     move.l     $30(a7), -(a7)
000c6c: 222f002c     move.l     $2c(a7), d1
000c70: 200a         move.l     a2, d0
000c72: 610017c8     bsr.w      $243c
000c76: 508f         addq.l     #$8, a7
000c78: 2f400018     move.l     d0, $18(a7)
000c7c: 6c00000c     bge.w      $c8a
000c80: 2f6f00180010 move.l     $18(a7), $10(a7)
000c86: 60000080     bra.w      $d08
000c8a: 202f002c     move.l     $2c(a7), d0
000c8e: 61002942     bsr.w      $35d2
000c92: 206f0040     movea.l    $40(a7), a0
000c96: 216f00180020 move.l     $18(a7), $20(a0)
000c9c: 2f2f0040     move.l     $40(a7), -(a7)
000ca0: 2f2f0030     move.l     $30(a7), -(a7)
000ca4: 222f002c     move.l     $2c(a7), d1
000ca8: 200a         move.l     a2, d0
000caa: 61001664     bsr.w      $2310
000cae: 508f         addq.l     #$8, a7
000cb0: 2f400010     move.l     d0, $10(a7)
000cb4: 6d000052     blt.w      $d08
000cb8: 4aaf0004     tst.l      $4(a7)
000cbc: 6c00000e     bge.w      $ccc
000cc0: 2017         move.l     (a7), d0
000cc2: 4480         neg.l      d0
000cc4: 2f400010     move.l     d0, $10(a7)
000cc8: 6000003e     bra.w      $d08
000ccc: 082f0002000f btst.b     #$2, $f(a7)
000cd2: 6700001a     beq.w      $cee
000cd6: 206f0008     movea.l    $8(a7), a0
000cda: 116a00350018 move.b     $35(a2), $18(a0)
000ce0: 206f0008     movea.l    $8(a7), a0
000ce4: 216f00040014 move.l     $4(a7), $14(a0)
000cea: 60000016     bra.w      $d02
000cee: 206f0008     movea.l    $8(a7), a0
000cf2: 116a00350008 move.b     $35(a2), $8(a0)
000cf8: 206f0008     movea.l    $8(a7), a0
000cfc: 216f00040004 move.l     $4(a7), $4(a0)
000d02: 2f6f00040010 move.l     $4(a7), $10(a7)
000d08: 206f0040     movea.l    $40(a7), a0
000d0c: 216f00200020 move.l     $20(a7), $20(a0)
000d12: 202f0010     move.l     $10(a7), d0
000d16: 4fef0028     lea.l      $28(a7), a7
000d1a: 60000004     bra.w      $d20
000d1e: 4e71         nop        
000d20: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000d26: 4e5d         unlk       a5
000d28: 4e75         rts        
000d2a: 4e550000     link.w     a5, #$0
000d2e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000d32: 2440         movea.l    d0, a2
000d34: 4fefffda     lea.l      -$26(a7), a7
000d38: 206f003e     movea.l    $3e(a7), a0
000d3c: 2f680020001e move.l     $20(a0), $1e(a7)
000d42: 206f003e     movea.l    $3e(a7), a0
000d46: 3f680002000c move.w     $2(a0), $c(a7)
000d4c: 206a0004     movea.l    $4(a2), a0
000d50: 20680004     movea.l    $4(a0), a0
000d54: 2f68002a0022 move.l     $2a(a0), $22(a7)
000d5a: 257c000000010056 move.l     #$1, $56(a2)
000d62: 257c00000008005a move.l     #$8, $5a(a2)
000d6a: 41ef0004     lea.l      $4(a7), a0
000d6e: 2548005e     move.l     a0, $5e(a2)
000d72: 7032         moveq      #$32, d0
000d74: d08a         add.l      a2, d0
000d76: 25400066     move.l     d0, $66(a2)
000d7a: 257c000000240062 move.l     #$24, $62(a2)
000d82: 7056         moveq      #$56, d0
000d84: d08a         add.l      a2, d0
000d86: 206f003e     movea.l    $3e(a7), a0
000d8a: 21400020     move.l     d0, $20(a0)
000d8e: 422a003e     clr.b      $3e(a2)
000d92: 2f6f001e001a move.l     $1e(a7), $1a(a7)
000d98: 206f001a     movea.l    $1a(a7), a0
000d9c: 0c10002f     cmpi.b     #$2f, (a0)
000da0: 67000050     beq.w      $df2
000da4: 203c00000148 move.l     #$148, d0
000daa: d0af002a     add.l      $2a(a7), d0
000dae: 2e80         move.l     d0, (a7)
000db0: 082f0002000d btst.b     #$2, $d(a7)
000db6: 6700001e     beq.w      $dd6
000dba: 2057         movea.l    (a7), a0
000dbc: 156800180035 move.b     $18(a0), $35(a2)
000dc2: 2057         movea.l    (a7), a0
000dc4: 156800160036 move.b     $16(a0), $36(a2)
000dca: 2057         movea.l    (a7), a0
000dcc: 15680017003e move.b     $17(a0), $3e(a2)
000dd2: 6000001a     bra.w      $dee
000dd6: 2057         movea.l    (a7), a0
000dd8: 156800080035 move.b     $8(a0), $35(a2)
000dde: 2057         movea.l    (a7), a0
000de0: 156800060036 move.b     $6(a0), $36(a2)
000de6: 2057         movea.l    (a7), a0
000de8: 15680007003e move.b     $7(a0), $3e(a2)
000dee: 60000036     bra.w      $e26
000df2: 222f001e     move.l     $1e(a7), d1
000df6: 200a         move.l     a2, d0
000df8: 6100f7b2     bsr.w      $5ac
000dfc: 2f40001a     move.l     d0, $1a(a7)
000e00: 6700000c     beq.w      $e0e
000e04: 206f001a     movea.l    $1a(a7), a0
000e08: 4a10         tst.b      (a0)
000e0a: 6600001a     bne.w      $e26
000e0e: 206f003e     movea.l    $3e(a7), a0
000e12: 216f001e0020 move.l     $1e(a7), $20(a0)
000e18: 203cffffff29 move.l     #$ffffff29, d0
000e1e: 4fef0026     lea.l      $26(a7), a7
000e22: 600000e0     bra.w      $f04
000e26: 206f0022     movea.l    $22(a7), a0
000e2a: 15680012003f move.b     $12(a0), $3f(a2)
000e30: 206f002a     movea.l    $2a(a7), a0
000e34: 35500040     move.w     (a0), $40(a2)
000e38: 257c000b0001003a move.l     #$b0001, $3a(a2)
000e40: 202f001a     move.l     $1a(a7), d0
000e44: 61002bea     bsr.w      $3a30
000e48: 7212         moveq      #$12, d1
000e4a: b280         cmp.l      d0, d1
000e4c: 6f000012     ble.w      $e60
000e50: 222f001a     move.l     $1a(a7), d1
000e54: 7044         moveq      #$44, d0
000e56: d08a         add.l      a2, d0
000e58: 61002bf4     bsr.w      $3a4e
000e5c: 6000001e     bra.w      $e7c
000e60: 257c000000020056 move.l     #$2, $56(a2)
000e68: 256f001a006e move.l     $1a(a7), $6e(a2)
000e6e: 202f001a     move.l     $1a(a7), d0
000e72: 61002bbc     bsr.w      $3a30
000e76: 5280         addq.l     #$1, d0
000e78: 2540006a     move.l     d0, $6a(a2)
000e7c: 356f000c0042 move.w     $c(a7), $42(a2)
000e82: 2f2f003e     move.l     $3e(a7), -(a7)
000e86: 2f2f002e     move.l     $2e(a7), -(a7)
000e8a: 222f002a     move.l     $2a(a7), d1
000e8e: 200a         move.l     a2, d0
000e90: 610015aa     bsr.w      $243c
000e94: 508f         addq.l     #$8, a7
000e96: 2f400016     move.l     d0, $16(a7)
000e9a: 6c00000c     bge.w      $ea8
000e9e: 2f6f0016000e move.l     $16(a7), $e(a7)
000ea4: 60000046     bra.w      $eec
000ea8: 202f002a     move.l     $2a(a7), d0
000eac: 61002724     bsr.w      $35d2
000eb0: 206f003e     movea.l    $3e(a7), a0
000eb4: 216f00160020 move.l     $16(a7), $20(a0)
000eba: 2f2f003e     move.l     $3e(a7), -(a7)
000ebe: 2f2f002e     move.l     $2e(a7), -(a7)
000ec2: 222f002a     move.l     $2a(a7), d1
000ec6: 200a         move.l     a2, d0
000ec8: 61001446     bsr.w      $2310
000ecc: 508f         addq.l     #$8, a7
000ece: 2f40000e     move.l     d0, $e(a7)
000ed2: 6d000018     blt.w      $eec
000ed6: 202f0008     move.l     $8(a7), d0
000eda: 2f40000e     move.l     d0, $e(a7)
000ede: 6c00000c     bge.w      $eec
000ee2: 202f0004     move.l     $4(a7), d0
000ee6: 4480         neg.l      d0
000ee8: 2f40000e     move.l     d0, $e(a7)
000eec: 206f003e     movea.l    $3e(a7), a0
000ef0: 216f001e0020 move.l     $1e(a7), $20(a0)
000ef6: 202f000e     move.l     $e(a7), d0
000efa: 4fef0026     lea.l      $26(a7), a7
000efe: 60000004     bra.w      $f04
000f02: 4e71         nop        
000f04: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000f0a: 4e5d         unlk       a5
000f0c: 4e75         rts        
000f0e: 4e550000     link.w     a5, #$0
000f12: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000f16: 2440         movea.l    d0, a2
000f18: 4fefffe4     lea.l      -$1c(a7), a7
000f1c: 4a6a0074     tst.w      $74(a2)
000f20: 66000018     bne.w      $f3a
000f24: 4a6a0086     tst.w      $86(a2)
000f28: 67000010     beq.w      $f3a
000f2c: 203cffffff53 move.l     #$ffffff53, d0
000f32: 4fef001c     lea.l      $1c(a7), a7
000f36: 600000e8     bra.w      $1020
000f3a: 206a0004     movea.l    $4(a2), a0
000f3e: 20680004     movea.l    $4(a0), a0
000f42: 2f68002a0018 move.l     $2a(a0), $18(a7)
000f48: 206f0034     movea.l    $34(a7), a0
000f4c: 2f680020000c move.l     $20(a0), $c(a7)
000f52: 257c000000010056 move.l     #$1, $56(a2)
000f5a: 257c00000008005a move.l     #$8, $5a(a2)
000f62: 41d7         lea.l      (a7), a0
000f64: 2548005e     move.l     a0, $5e(a2)
000f68: 7032         moveq      #$32, d0
000f6a: d08a         add.l      a2, d0
000f6c: 25400066     move.l     d0, $66(a2)
000f70: 257c000000140062 move.l     #$14, $62(a2)
000f78: 257c000c0000003a move.l     #$c0000, $3a(a2)
000f80: 256a002e003e move.l     $2e(a2), $3e(a2)
000f86: 206f0034     movea.l    $34(a7), a0
000f8a: 256800040042 move.l     $4(a0), $42(a2)
000f90: 7056         moveq      #$56, d0
000f92: d08a         add.l      a2, d0
000f94: 206f0034     movea.l    $34(a7), a0
000f98: 21400020     move.l     d0, $20(a0)
000f9c: 2f2f0034     move.l     $34(a7), -(a7)
000fa0: 2f2f0024     move.l     $24(a7), -(a7)
000fa4: 222f0020     move.l     $20(a7), d1
000fa8: 200a         move.l     a2, d0
000faa: 61001490     bsr.w      $243c
000fae: 508f         addq.l     #$8, a7
000fb0: 2f400014     move.l     d0, $14(a7)
000fb4: 6c00000c     bge.w      $fc2
000fb8: 2f6f00140008 move.l     $14(a7), $8(a7)
000fbe: 60000048     bra.w      $1008
000fc2: 202f0020     move.l     $20(a7), d0
000fc6: 6100260a     bsr.w      $35d2
000fca: 206f0034     movea.l    $34(a7), a0
000fce: 216f00140020 move.l     $14(a7), $20(a0)
000fd4: 2f2f0034     move.l     $34(a7), -(a7)
000fd8: 2f2f0024     move.l     $24(a7), -(a7)
000fdc: 222f0020     move.l     $20(a7), d1
000fe0: 200a         move.l     a2, d0
000fe2: 6100132c     bsr.w      $2310
000fe6: 508f         addq.l     #$8, a7
000fe8: 2f400008     move.l     d0, $8(a7)
000fec: 6d00001a     blt.w      $1008
000ff0: 4aaf0004     tst.l      $4(a7)
000ff4: 6c00000a     bge.w      $1000
000ff8: 2017         move.l     (a7), d0
000ffa: 4480         neg.l      d0
000ffc: 60000006     bra.w      $1004
001000: 202f0004     move.l     $4(a7), d0
001004: 2f400008     move.l     d0, $8(a7)
001008: 206f0034     movea.l    $34(a7), a0
00100c: 216f000c0020 move.l     $c(a7), $20(a0)
001012: 202f0008     move.l     $8(a7), d0
001016: 4fef001c     lea.l      $1c(a7), a7
00101a: 60000004     bra.w      $1020
00101e: 4e71         nop        
001020: 4ced0500fff8 movem.l    -$8(a5), a0/a2
001026: 4e5d         unlk       a5
001028: 4e75         rts        
00102a: 4e550000     link.w     a5, #$0
00102e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001032: 2440         movea.l    d0, a2
001034: 4fefffe4     lea.l      -$1c(a7), a7
001038: 4a6a0074     tst.w      $74(a2)
00103c: 66000018     bne.w      $1056
001040: 4a6a0086     tst.w      $86(a2)
001044: 67000010     beq.w      $1056
001048: 203cffffff53 move.l     #$ffffff53, d0
00104e: 4fef001c     lea.l      $1c(a7), a7
001052: 60000114     bra.w      $1168
001056: 206a0004     movea.l    $4(a2), a0
00105a: 20680004     movea.l    $4(a0), a0
00105e: 2f68002a0018 move.l     $2a(a0), $18(a7)
001064: 206f0034     movea.l    $34(a7), a0
001068: 2f6800200014 move.l     $20(a0), $14(a7)
00106e: 206f0034     movea.l    $34(a7), a0
001072: 2f6800040010 move.l     $4(a0), $10(a7)
001078: 4a2a002e     tst.b      $2e(a2)
00107c: 670000dc     beq.w      $115a
001080: 7056         moveq      #$56, d0
001082: d08a         add.l      a2, d0
001084: 206f0034     movea.l    $34(a7), a0
001088: 21400020     move.l     d0, $20(a0)
00108c: 257c000000010056 move.l     #$1, $56(a2)
001094: 256f0014005e move.l     $14(a7), $5e(a2)
00109a: 256f0010005a move.l     $10(a7), $5a(a2)
0010a0: 7032         moveq      #$32, d0
0010a2: d08a         add.l      a2, d0
0010a4: 25400066     move.l     d0, $66(a2)
0010a8: 257c000000140062 move.l     #$14, $62(a2)
0010b0: 257c00040000003a move.l     #$40000, $3a(a2)
0010b8: 256a002e003e move.l     $2e(a2), $3e(a2)
0010be: 256f00100042 move.l     $10(a7), $42(a2)
0010c4: 2f2f0034     move.l     $34(a7), -(a7)
0010c8: 2f2f0024     move.l     $24(a7), -(a7)
0010cc: 222f0020     move.l     $20(a7), d1
0010d0: 200a         move.l     a2, d0
0010d2: 61001368     bsr.w      $243c
0010d6: 508f         addq.l     #$8, a7
0010d8: 2f400008     move.l     d0, $8(a7)
0010dc: 6c00000c     bge.w      $10ea
0010e0: 2f6f00080004 move.l     $8(a7), $4(a7)
0010e6: 6000004e     bra.w      $1136
0010ea: 202f0020     move.l     $20(a7), d0
0010ee: 610024e2     bsr.w      $35d2
0010f2: 206f0034     movea.l    $34(a7), a0
0010f6: 216f00080020 move.l     $8(a7), $20(a0)
0010fc: 2f2f0034     move.l     $34(a7), -(a7)
001100: 2f2f0024     move.l     $24(a7), -(a7)
001104: 222f0020     move.l     $20(a7), d1
001108: 200a         move.l     a2, d0
00110a: 61001204     bsr.w      $2310
00110e: 508f         addq.l     #$8, a7
001110: 2f400004     move.l     d0, $4(a7)
001114: 6d000012     blt.w      $1128
001118: 202f0010     move.l     $10(a7), d0
00111c: 90af0004     sub.l      $4(a7), d0
001120: 2f400004     move.l     d0, $4(a7)
001124: 60000010     bra.w      $1136
001128: 70fe         moveq      #$fe, d0
00112a: b0af0004     cmp.l      $4(a7), d0
00112e: 66000006     bne.w      $1136
001132: 42af0004     clr.l      $4(a7)
001136: 206f0034     movea.l    $34(a7), a0
00113a: 216f00140020 move.l     $14(a7), $20(a0)
001140: 206f0034     movea.l    $34(a7), a0
001144: 216f00100004 move.l     $10(a7), $4(a0)
00114a: 202f0004     move.l     $4(a7), d0
00114e: 4fef001c     lea.l      $1c(a7), a7
001152: 60000014     bra.w      $1168
001156: 6000000c     bra.w      $1164
00115a: 7000         moveq      #$0, d0
00115c: 4fef001c     lea.l      $1c(a7), a7
001160: 60000006     bra.w      $1168
001164: 4fef001c     lea.l      $1c(a7), a7
001168: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00116e: 4e5d         unlk       a5
001170: 4e75         rts        
001172: 4e550000     link.w     a5, #$0
001176: 48e7e0a0     movem.l    d0-d2/a0/a2, -(a7)
00117a: 2440         movea.l    d0, a2
00117c: 4fefffd4     lea.l      -$2c(a7), a7
001180: 4a6a0074     tst.w      $74(a2)
001184: 66000018     bne.w      $119e
001188: 4a6a0086     tst.w      $86(a2)
00118c: 67000010     beq.w      $119e
001190: 203cffffff53 move.l     #$ffffff53, d0
001196: 4fef002c     lea.l      $2c(a7), a7
00119a: 60000188     bra.w      $1324
00119e: 206a0004     movea.l    $4(a2), a0
0011a2: 20680004     movea.l    $4(a0), a0
0011a6: 2f68002a0024 move.l     $2a(a0), $24(a7)
0011ac: 206f0048     movea.l    $48(a7), a0
0011b0: 2f6800200028 move.l     $20(a0), $28(a7)
0011b6: 206f0048     movea.l    $48(a7), a0
0011ba: 2f6800040020 move.l     $4(a0), $20(a7)
0011c0: 4a2a002e     tst.b      $2e(a2)
0011c4: 67000118     beq.w      $12de
0011c8: 7056         moveq      #$56, d0
0011ca: d08a         add.l      a2, d0
0011cc: 206f0048     movea.l    $48(a7), a0
0011d0: 21400020     move.l     d0, $20(a0)
0011d4: 7032         moveq      #$32, d0
0011d6: d08a         add.l      a2, d0
0011d8: 25400066     move.l     d0, $66(a2)
0011dc: 7010         moveq      #$10, d0
0011de: b0af0020     cmp.l      $20(a7), d0
0011e2: 6d00002c     blt.w      $1210
0011e6: 257c000000010056 move.l     #$1, $56(a2)
0011ee: 7014         moveq      #$14, d0
0011f0: d0af0020     add.l      $20(a7), d0
0011f4: 25400062     move.l     d0, $62(a2)
0011f8: 2f2f0020     move.l     $20(a7), -(a7)
0011fc: 7046         moveq      #$46, d0
0011fe: d08a         add.l      a2, d0
001200: 2200         move.l     d0, d1
001202: 202f002c     move.l     $2c(a7), d0
001206: 61002388     bsr.w      $3590
00120a: 588f         addq.l     #$4, a7
00120c: 6000001e     bra.w      $122c
001210: 257c000000020056 move.l     #$2, $56(a2)
001218: 257c000000140062 move.l     #$14, $62(a2)
001220: 256f0028006e move.l     $28(a7), $6e(a2)
001226: 256f0020006a move.l     $20(a7), $6a(a2)
00122c: 41d7         lea.l      (a7), a0
00122e: 2548005e     move.l     a0, $5e(a2)
001232: 257c00000008005a move.l     #$8, $5a(a2)
00123a: 256a002e003e move.l     $2e(a2), $3e(a2)
001240: 256f00200042 move.l     $20(a7), $42(a2)
001246: 257c00050000003a move.l     #$50000, $3a(a2)
00124e: 2f2f0048     move.l     $48(a7), -(a7)
001252: 2f2f0034     move.l     $34(a7), -(a7)
001256: 222f002c     move.l     $2c(a7), d1
00125a: 200a         move.l     a2, d0
00125c: 610011de     bsr.w      $243c
001260: 508f         addq.l     #$8, a7
001262: 2f40000c     move.l     d0, $c(a7)
001266: 6c00000c     bge.w      $1274
00126a: 2f6f000c0010 move.l     $c(a7), $10(a7)
001270: 60000048     bra.w      $12ba
001274: 202f0030     move.l     $30(a7), d0
001278: 61002358     bsr.w      $35d2
00127c: 206f0048     movea.l    $48(a7), a0
001280: 216f000c0020 move.l     $c(a7), $20(a0)
001286: 2f2f0048     move.l     $48(a7), -(a7)
00128a: 2f2f0034     move.l     $34(a7), -(a7)
00128e: 222f002c     move.l     $2c(a7), d1
001292: 200a         move.l     a2, d0
001294: 6100107a     bsr.w      $2310
001298: 508f         addq.l     #$8, a7
00129a: 2f400010     move.l     d0, $10(a7)
00129e: 6d00001a     blt.w      $12ba
0012a2: 4aaf0004     tst.l      $4(a7)
0012a6: 6c00000a     bge.w      $12b2
0012aa: 2017         move.l     (a7), d0
0012ac: 4480         neg.l      d0
0012ae: 60000006     bra.w      $12b6
0012b2: 202f0004     move.l     $4(a7), d0
0012b6: 2f400010     move.l     d0, $10(a7)
0012ba: 206f0048     movea.l    $48(a7), a0
0012be: 216f00280020 move.l     $28(a7), $20(a0)
0012c4: 206f0048     movea.l    $48(a7), a0
0012c8: 216f00200004 move.l     $20(a7), $4(a0)
0012ce: 202f0010     move.l     $10(a7), d0
0012d2: 4fef002c     lea.l      $2c(a7), a7
0012d6: 6000004c     bra.w      $1324
0012da: 60000044     bra.w      $1320
0012de: 42a7         clr.l      -(a7)
0012e0: 42a7         clr.l      -(a7)
0012e2: 2f2f0050     move.l     $50(a7), -(a7)
0012e6: 2f2f003c     move.l     $3c(a7), -(a7)
0012ea: 206a0004     movea.l    $4(a2), a0
0012ee: 22280004     move.l     $4(a0), d1
0012f2: 200a         move.l     a2, d0
0012f4: 206a0004     movea.l    $4(a2), a0
0012f8: 2050         movea.l    (a0), a0
0012fa: 24280030     move.l     $30(a0), d2
0012fe: 206a0004     movea.l    $4(a2), a0
001302: 2050         movea.l    (a0), a0
001304: 34302810     move.w     $10(a0, d2.l), d2
001308: 48c2         ext.l      d2
00130a: 206a0004     movea.l    $4(a2), a0
00130e: 2050         movea.l    (a0), a0
001310: 4eb02800     jsr        (a0, d2.l)
001314: 4fef0010     lea.l      $10(a7), a7
001318: 4fef002c     lea.l      $2c(a7), a7
00131c: 60000006     bra.w      $1324
001320: 4fef002c     lea.l      $2c(a7), a7
001324: 4ced0504fff4 movem.l    -$c(a5), d2/a0/a2
00132a: 4e5d         unlk       a5
00132c: 4e75         rts        
00132e: 4e550000     link.w     a5, #$0
001332: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001336: 2440         movea.l    d0, a2
001338: 4fefffe4     lea.l      -$1c(a7), a7
00133c: 4a6a0074     tst.w      $74(a2)
001340: 66000018     bne.w      $135a
001344: 4a6a0086     tst.w      $86(a2)
001348: 67000010     beq.w      $135a
00134c: 203cffffff53 move.l     #$ffffff53, d0
001352: 4fef001c     lea.l      $1c(a7), a7
001356: 600000fc     bra.w      $1454
00135a: 206a0004     movea.l    $4(a2), a0
00135e: 20680004     movea.l    $4(a0), a0
001362: 2f68002a0018 move.l     $2a(a0), $18(a7)
001368: 206f0034     movea.l    $34(a7), a0
00136c: 2f6800200014 move.l     $20(a0), $14(a7)
001372: 206f0034     movea.l    $34(a7), a0
001376: 2f6800040010 move.l     $4(a0), $10(a7)
00137c: 7056         moveq      #$56, d0
00137e: d08a         add.l      a2, d0
001380: 206f0034     movea.l    $34(a7), a0
001384: 21400020     move.l     d0, $20(a0)
001388: 257c000000010056 move.l     #$1, $56(a2)
001390: 256f0014005e move.l     $14(a7), $5e(a2)
001396: 256f0010005a move.l     $10(a7), $5a(a2)
00139c: 7032         moveq      #$32, d0
00139e: d08a         add.l      a2, d0
0013a0: 25400066     move.l     d0, $66(a2)
0013a4: 257c000000140062 move.l     #$14, $62(a2)
0013ac: 257c00040001003a move.l     #$40001, $3a(a2)
0013b4: 256a002e003e move.l     $2e(a2), $3e(a2)
0013ba: 256f00100042 move.l     $10(a7), $42(a2)
0013c0: 2f2f0034     move.l     $34(a7), -(a7)
0013c4: 2f2f0024     move.l     $24(a7), -(a7)
0013c8: 222f0020     move.l     $20(a7), d1
0013cc: 200a         move.l     a2, d0
0013ce: 6100106c     bsr.w      $243c
0013d2: 508f         addq.l     #$8, a7
0013d4: 2f400008     move.l     d0, $8(a7)
0013d8: 6c00000c     bge.w      $13e6
0013dc: 2f6f00080004 move.l     $8(a7), $4(a7)
0013e2: 6000004e     bra.w      $1432
0013e6: 202f0020     move.l     $20(a7), d0
0013ea: 610021e6     bsr.w      $35d2
0013ee: 206f0034     movea.l    $34(a7), a0
0013f2: 216f00080020 move.l     $8(a7), $20(a0)
0013f8: 2f2f0034     move.l     $34(a7), -(a7)
0013fc: 2f2f0024     move.l     $24(a7), -(a7)
001400: 222f0020     move.l     $20(a7), d1
001404: 200a         move.l     a2, d0
001406: 61000f08     bsr.w      $2310
00140a: 508f         addq.l     #$8, a7
00140c: 2f400004     move.l     d0, $4(a7)
001410: 6d000012     blt.w      $1424
001414: 202f0010     move.l     $10(a7), d0
001418: 90af0004     sub.l      $4(a7), d0
00141c: 2f400004     move.l     d0, $4(a7)
001420: 60000010     bra.w      $1432
001424: 70fe         moveq      #$fe, d0
001426: b0af0004     cmp.l      $4(a7), d0
00142a: 66000006     bne.w      $1432
00142e: 42af0004     clr.l      $4(a7)
001432: 206f0034     movea.l    $34(a7), a0
001436: 216f00140020 move.l     $14(a7), $20(a0)
00143c: 206f0034     movea.l    $34(a7), a0
001440: 216f00100004 move.l     $10(a7), $4(a0)
001446: 202f0004     move.l     $4(a7), d0
00144a: 4fef001c     lea.l      $1c(a7), a7
00144e: 60000004     bra.w      $1454
001452: 4e71         nop        
001454: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00145a: 4e5d         unlk       a5
00145c: 4e75         rts        
00145e: 4e550000     link.w     a5, #$0
001462: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
001466: 2440         movea.l    d0, a2
001468: 4fefffd4     lea.l      -$2c(a7), a7
00146c: 4a6a0074     tst.w      $74(a2)
001470: 66000018     bne.w      $148a
001474: 4a6a0086     tst.w      $86(a2)
001478: 67000010     beq.w      $148a
00147c: 203cffffff53 move.l     #$ffffff53, d0
001482: 4fef002c     lea.l      $2c(a7), a7
001486: 60000138     bra.w      $15c0
00148a: 206a0004     movea.l    $4(a2), a0
00148e: 20680004     movea.l    $4(a0), a0
001492: 2f68002a0024 move.l     $2a(a0), $24(a7)
001498: 206f0044     movea.l    $44(a7), a0
00149c: 2f6800200028 move.l     $20(a0), $28(a7)
0014a2: 206f0044     movea.l    $44(a7), a0
0014a6: 2f6800040020 move.l     $4(a0), $20(a7)
0014ac: 7056         moveq      #$56, d0
0014ae: d08a         add.l      a2, d0
0014b0: 206f0044     movea.l    $44(a7), a0
0014b4: 21400020     move.l     d0, $20(a0)
0014b8: 7032         moveq      #$32, d0
0014ba: d08a         add.l      a2, d0
0014bc: 25400066     move.l     d0, $66(a2)
0014c0: 7010         moveq      #$10, d0
0014c2: b0af0020     cmp.l      $20(a7), d0
0014c6: 6d00002c     blt.w      $14f4
0014ca: 257c000000010056 move.l     #$1, $56(a2)
0014d2: 7014         moveq      #$14, d0
0014d4: d0af0020     add.l      $20(a7), d0
0014d8: 25400062     move.l     d0, $62(a2)
0014dc: 2f2f0020     move.l     $20(a7), -(a7)
0014e0: 7046         moveq      #$46, d0
0014e2: d08a         add.l      a2, d0
0014e4: 2200         move.l     d0, d1
0014e6: 202f002c     move.l     $2c(a7), d0
0014ea: 610020a4     bsr.w      $3590
0014ee: 588f         addq.l     #$4, a7
0014f0: 6000001e     bra.w      $1510
0014f4: 257c000000020056 move.l     #$2, $56(a2)
0014fc: 257c000000140062 move.l     #$14, $62(a2)
001504: 256f0028006e move.l     $28(a7), $6e(a2)
00150a: 256f0020006a move.l     $20(a7), $6a(a2)
001510: 41d7         lea.l      (a7), a0
001512: 2548005e     move.l     a0, $5e(a2)
001516: 257c00000008005a move.l     #$8, $5a(a2)
00151e: 256a002e003e move.l     $2e(a2), $3e(a2)
001524: 256f00200042 move.l     $20(a7), $42(a2)
00152a: 257c00050001003a move.l     #$50001, $3a(a2)
001532: 2f2f0044     move.l     $44(a7), -(a7)
001536: 2f2f0034     move.l     $34(a7), -(a7)
00153a: 222f002c     move.l     $2c(a7), d1
00153e: 200a         move.l     a2, d0
001540: 61000efa     bsr.w      $243c
001544: 508f         addq.l     #$8, a7
001546: 2f40000c     move.l     d0, $c(a7)
00154a: 6c00000c     bge.w      $1558
00154e: 2f6f000c0010 move.l     $c(a7), $10(a7)
001554: 60000048     bra.w      $159e
001558: 202f0030     move.l     $30(a7), d0
00155c: 61002074     bsr.w      $35d2
001560: 206f0044     movea.l    $44(a7), a0
001564: 216f000c0020 move.l     $c(a7), $20(a0)
00156a: 2f2f0044     move.l     $44(a7), -(a7)
00156e: 2f2f0034     move.l     $34(a7), -(a7)
001572: 222f002c     move.l     $2c(a7), d1
001576: 200a         move.l     a2, d0
001578: 61000d96     bsr.w      $2310
00157c: 508f         addq.l     #$8, a7
00157e: 2f400010     move.l     d0, $10(a7)
001582: 6d00001a     blt.w      $159e
001586: 4aaf0004     tst.l      $4(a7)
00158a: 6c00000a     bge.w      $1596
00158e: 2017         move.l     (a7), d0
001590: 4480         neg.l      d0
001592: 60000006     bra.w      $159a
001596: 202f0004     move.l     $4(a7), d0
00159a: 2f400010     move.l     d0, $10(a7)
00159e: 206f0044     movea.l    $44(a7), a0
0015a2: 216f00280020 move.l     $28(a7), $20(a0)
0015a8: 206f0044     movea.l    $44(a7), a0
0015ac: 216f00200004 move.l     $20(a7), $4(a0)
0015b2: 202f0010     move.l     $10(a7), d0
0015b6: 4fef002c     lea.l      $2c(a7), a7
0015ba: 60000004     bra.w      $15c0
0015be: 4e71         nop        
0015c0: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0015c6: 4e5d         unlk       a5
0015c8: 4e75         rts        
0015ca: 4e550000     link.w     a5, #$0
0015ce: 48e7e0b8     movem.l    d0-d2/a0/a2-a4, -(a7)
0015d2: 2440         movea.l    d0, a2
0015d4: 4feffff0     lea.l      -$10(a7), a7
0015d8: 4a6a0074     tst.w      $74(a2)
0015dc: 66000018     bne.w      $15f6
0015e0: 4a6a0086     tst.w      $86(a2)
0015e4: 67000010     beq.w      $15f6
0015e8: 203cffffff53 move.l     #$ffffff53, d0
0015ee: 4fef0010     lea.l      $10(a7), a7
0015f2: 600002ae     bra.w      $18a2
0015f6: 206f0034     movea.l    $34(a7), a0
0015fa: 203c0000ffff move.l     #$ffff, d0
001600: c0a80004     and.l      $4(a0), d0
001604: 2f400008     move.l     d0, $8(a7)
001608: 206f0034     movea.l    $34(a7), a0
00160c: 28680020     movea.l    $20(a0), a4
001610: 206a0004     movea.l    $4(a2), a0
001614: 20680004     movea.l    $4(a0), a0
001618: 2668002a     movea.l    $2a(a0), a3
00161c: 42af0004     clr.l      $4(a7)
001620: 6000024e     bra.w      $1870
001624: 6000018e     bra.w      $17b4
001628: 206f0034     movea.l    $34(a7), a0
00162c: 22280020     move.l     $20(a0), d1
001630: 206b0008     movea.l    $8(a3), a0
001634: 20280002     move.l     $2(a0), d0
001638: 61001b36     bsr.w      $3170
00163c: 4fef0010     lea.l      $10(a7), a7
001640: 60000260     bra.w      $18a2
001644: 600001e6     bra.w      $182c
001648: 302b0006     move.w     $6(a3), d0
00164c: 48c0         ext.l      d0
00164e: 4fef0010     lea.l      $10(a7), a7
001652: 6000024e     bra.w      $18a2
001656: 600001d4     bra.w      $182c
00165a: 302b0004     move.w     $4(a3), d0
00165e: 48c0         ext.l      d0
001660: 4fef0010     lea.l      $10(a7), a7
001664: 6000023c     bra.w      $18a2
001668: 600001c2     bra.w      $182c
00166c: 7012         moveq      #$12, d0
00166e: d08b         add.l      a3, d0
001670: 4fef0010     lea.l      $10(a7), a7
001674: 6000022c     bra.w      $18a2
001678: 600001b2     bra.w      $182c
00167c: 61002210     bsr.w      $388e
001680: 4fef0010     lea.l      $10(a7), a7
001684: 6000021c     bra.w      $18a2
001688: 600001a2     bra.w      $182c
00168c: 202a002e     move.l     $2e(a2), d0
001690: 4fef0010     lea.l      $10(a7), a7
001694: 6000020c     bra.w      $18a2
001698: 60000192     bra.w      $182c
00169c: 206f0034     movea.l    $34(a7), a0
0016a0: 4aa80020     tst.l      $20(a0)
0016a4: 67000016     beq.w      $16bc
0016a8: 206f0014     movea.l    $14(a7), a0
0016ac: 7000         moveq      #$0, d0
0016ae: 3010         move.w     (a0), d0
0016b0: 206f0034     movea.l    $34(a7), a0
0016b4: b0a80020     cmp.l      $20(a0), d0
0016b8: 66000018     bne.w      $16d2
0016bc: 220b         move.l     a3, d1
0016be: 202f0014     move.l     $14(a7), d0
0016c2: 610016c4     bsr.w      $2d88
0016c6: 4fef0010     lea.l      $10(a7), a7
0016ca: 600001d6     bra.w      $18a2
0016ce: 60000036     bra.w      $1706
0016d2: 206f0034     movea.l    $34(a7), a0
0016d6: 20280020     move.l     $20(a0), d0
0016da: 610001d0     bsr.w      $18ac
0016de: 2e80         move.l     d0, (a7)
0016e0: 72ff         moveq      #$ff, d1
0016e2: b280         cmp.l      d0, d1
0016e4: 66000010     bne.w      $16f6
0016e8: 203cffffff20 move.l     #$ffffff20, d0
0016ee: 4fef0010     lea.l      $10(a7), a7
0016f2: 600001ae     bra.w      $18a2
0016f6: 220b         move.l     a3, d1
0016f8: 2017         move.l     (a7), d0
0016fa: 6100168c     bsr.w      $2d88
0016fe: 4fef0010     lea.l      $10(a7), a7
001702: 6000019e     bra.w      $18a2
001706: 60000124     bra.w      $182c
00170a: 302a0072     move.w     $72(a2), d0
00170e: 48c0         ext.l      d0
001710: 4fef0010     lea.l      $10(a7), a7
001714: 6000018c     bra.w      $18a2
001718: 60000112     bra.w      $182c
00171c: 206b0008     movea.l    $8(a3), a0
001720: 3028000e     move.w     $e(a0), d0
001724: 48c0         ext.l      d0
001726: 4fef0010     lea.l      $10(a7), a7
00172a: 60000176     bra.w      $18a2
00172e: 600000fc     bra.w      $182c
001732: 7000         moveq      #$0, d0
001734: 102b0012     move.b     $12(a3), d0
001738: 4fef0010     lea.l      $10(a7), a7
00173c: 60000164     bra.w      $18a2
001740: 600000ea     bra.w      $182c
001744: 206a0004     movea.l    $4(a2), a0
001748: 20680004     movea.l    $4(a0), a0
00174c: 2028002a     move.l     $2a(a0), d0
001750: 4fef0010     lea.l      $10(a7), a7
001754: 6000014c     bra.w      $18a2
001758: 600000d2     bra.w      $182c
00175c: 41fa17aa     lea.l      $2f08(pc), a0
001760: 2008         move.l     a0, d0
001762: 4fef0010     lea.l      $10(a7), a7
001766: 6000013a     bra.w      $18a2
00176a: 600000c0     bra.w      $182c
00176e: 2f2f0008     move.l     $8(a7), -(a7)
001772: 2f2f0038     move.l     $38(a7), -(a7)
001776: 2f2f001c     move.l     $1c(a7), -(a7)
00177a: 206a0004     movea.l    $4(a2), a0
00177e: 22280004     move.l     $4(a0), d1
001782: 200a         move.l     a2, d0
001784: 206a0004     movea.l    $4(a2), a0
001788: 2050         movea.l    (a0), a0
00178a: 24280030     move.l     $30(a0), d2
00178e: 206a0004     movea.l    $4(a2), a0
001792: 2050         movea.l    (a0), a0
001794: 34302812     move.w     $12(a0, d2.l), d2
001798: 48c2         ext.l      d2
00179a: 206a0004     movea.l    $4(a2), a0
00179e: 2050         movea.l    (a0), a0
0017a0: 4eb02800     jsr        (a0, d2.l)
0017a4: 4fef000c     lea.l      $c(a7), a7
0017a8: 4fef0010     lea.l      $10(a7), a7
0017ac: 600000f4     bra.w      $18a2
0017b0: 6000007a     bra.w      $182c
0017b4: 202f0008     move.l     $8(a7), d0
0017b8: 04800000ff06 subi.l     #$ff06, d0
0017be: 0c800000002c cmpi.l     #$2c, d0
0017c4: 6200ffa8     bhi.w      $176e
0017c8: d040         add.w      d0, d0
0017ca: 303b0006     move.w     $17d2(pc, d0.w), d0
0017ce: 4efb0002     jmp        $17d2(pc, d0.w)
0017d2: fe56fe88     fsun.b     (a6)
0017d6: fe76ff9cff9c fsult.b    (a7.l * 8)
0017dc: ff9c         dc.w       $ff9c
0017de: ff9c         dc.w       $ff9c
0017e0: ff9c         dc.w       $ff9c
0017e2: fe9afeba     fbf.w      $169e
0017e6: ff9c         dc.w       $ff9c
0017e8: ff9c         dc.w       $ff9c
0017ea: ff9c         dc.w       $ff9c
0017ec: ff9c         dc.w       $ff9c
0017ee: ff9c         dc.w       $ff9c
0017f0: ff9c         dc.w       $ff9c
0017f2: ff9c         dc.w       $ff9c
0017f4: ff9c         dc.w       $ff9c
0017f6: ff9c         dc.w       $ff9c
0017f8: ff9c         dc.w       $ff9c
0017fa: ff9c         dc.w       $ff9c
0017fc: ff9c         dc.w       $ff9c
0017fe: ff9c         dc.w       $ff9c
001800: ff9c         dc.w       $ff9c
001802: ff9c         dc.w       $ff9c
001804: ff9c         dc.w       $ff9c
001806: fecaff38ff4a fbf.l      $ff391752
00180c: ff60         dc.w       $ff60
00180e: ff9c         dc.w       $ff9c
001810: ff9c         dc.w       $ff9c
001812: ff72feaa     frestore   -$56(a2, a7.l)
001816: ff9c         dc.w       $ff9c
001818: ff9c         dc.w       $ff9c
00181a: ff9c         dc.w       $ff9c
00181c: ff9c         dc.w       $ff9c
00181e: ff9c         dc.w       $ff9c
001820: ff9c         dc.w       $ff9c
001822: ff9c         dc.w       $ff9c
001824: ff9c         dc.w       $ff9c
001826: ff9c         dc.w       $ff9c
001828: ff9c         dc.w       $ff9c
00182a: ff8a         dc.w       $ff8a
00182c: 60000070     bra.w      $189e
001830: 60000020     bra.w      $1852
001834: 2f2f0034     move.l     $34(a7), -(a7)
001838: 2f2f0018     move.l     $18(a7), -(a7)
00183c: 220b         move.l     a3, d1
00183e: 200a         move.l     a2, d0
001840: 610000b8     bsr.w      $18fa
001844: 508f         addq.l     #$8, a7
001846: 4fef0010     lea.l      $10(a7), a7
00184a: 60000056     bra.w      $18a2
00184e: 6000000a     bra.w      $185a
001852: 202f0008     move.l     $8(a7), d0
001856: 6000ffdc     bra.w      $1834
00185a: 60000042     bra.w      $189e
00185e: 6000003e     bra.w      $189e
001862: 70ff         moveq      #$ff, d0
001864: 4fef0010     lea.l      $10(a7), a7
001868: 60000038     bra.w      $18a2
00186c: 60000030     bra.w      $189e
001870: 102f000a     move.b     $a(a7), d0
001874: ec08         lsr.b      #$6, d0
001876: 7200         moveq      #$0, d1
001878: 1200         move.b     d0, d1
00187a: 0c81000000ff cmpi.l     #$ff, d1
001880: 6200ffe0     bhi.w      $1862
001884: 4a01         tst.b      d1
001886: 6700ffa8     beq.w      $1830
00188a: 0c010002     cmpi.b     #$2, d1
00188e: 6700ffce     beq.w      $185e
001892: 0c010003     cmpi.b     #$3, d1
001896: 6700fd8c     beq.w      $1624
00189a: 6000ffc6     bra.w      $1862
00189e: 4fef0010     lea.l      $10(a7), a7
0018a2: 4ced1d04ffec movem.l    -$14(a5), d2/a0/a2-a4
0018a8: 4e5d         unlk       a5
0018aa: 4e75         rts        
0018ac: 4e550000     link.w     a5, #$0
0018b0: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
0018b4: 2800         move.l     d0, d4
0018b6: 61001c9c     bsr.w      $3554
0018ba: 2440         movea.l    d0, a2
0018bc: 3a1a         move.w     (a2)+, d5
0018be: 548a         addq.l     #$2, a2
0018c0: 60000020     bra.w      $18e2
0018c4: 4a92         tst.l      (a2)
0018c6: 67000018     beq.w      $18e0
0018ca: 2052         movea.l    (a2), a0
0018cc: 7000         moveq      #$0, d0
0018ce: 3010         move.w     (a0), d0
0018d0: 3204         move.w     d4, d1
0018d2: 48c1         ext.l      d1
0018d4: b081         cmp.l      d1, d0
0018d6: 66000008     bne.w      $18e0
0018da: 2012         move.l     (a2), d0
0018dc: 60000012     bra.w      $18f0
0018e0: 588a         addq.l     #$4, a2
0018e2: 5345         subq.w     #$1, d5
0018e4: 6c00ffde     bge.w      $18c4
0018e8: 70ff         moveq      #$ff, d0
0018ea: 60000004     bra.w      $18f0
0018ee: 4e71         nop        
0018f0: 4ced0532ffec movem.l    -$14(a5), d1/d4-d5/a0/a2
0018f6: 4e5d         unlk       a5
0018f8: 4e75         rts        
0018fa: 4e550000     link.w     a5, #$0
0018fe: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
001902: 2440         movea.l    d0, a2
001904: 4fefffdc     lea.l      -$24(a7), a7
001908: 206f0044     movea.l    $44(a7), a0
00190c: 2f6800200020 move.l     $20(a0), $20(a7)
001912: 206f0044     movea.l    $44(a7), a0
001916: 2f680004000c move.l     $4(a0), $c(a7)
00191c: 302f000e     move.w     $e(a7), d0
001920: 02403fff     andi.w     #$3fff, d0
001924: 7200         moveq      #$0, d1
001926: 3200         move.w     d0, d1
001928: 6700007a     beq.w      $19a4
00192c: 302f000e     move.w     $e(a7), d0
001930: 02403fff     andi.w     #$3fff, d0
001934: 7200         moveq      #$0, d1
001936: 3200         move.w     d0, d1
001938: 700e         moveq      #$e, d0
00193a: b081         cmp.l      d1, d0
00193c: 67000066     beq.w      $19a4
001940: 302f000e     move.w     $e(a7), d0
001944: 02403fff     andi.w     #$3fff, d0
001948: 7200         moveq      #$0, d1
00194a: 3200         move.w     d0, d1
00194c: 700f         moveq      #$f, d0
00194e: b081         cmp.l      d1, d0
001950: 67000052     beq.w      $19a4
001954: 302f000e     move.w     $e(a7), d0
001958: 02403fff     andi.w     #$3fff, d0
00195c: 7200         moveq      #$0, d1
00195e: 3200         move.w     d0, d1
001960: 7020         moveq      #$20, d0
001962: b081         cmp.l      d1, d0
001964: 6700003e     beq.w      $19a4
001968: 302f000e     move.w     $e(a7), d0
00196c: 02403fff     andi.w     #$3fff, d0
001970: 7200         moveq      #$0, d1
001972: 3200         move.w     d0, d1
001974: 702c         moveq      #$2c, d0
001976: b081         cmp.l      d1, d0
001978: 6700002a     beq.w      $19a4
00197c: 302f000e     move.w     $e(a7), d0
001980: 02403fff     andi.w     #$3fff, d0
001984: 7200         moveq      #$0, d1
001986: 3200         move.w     d0, d1
001988: 702f         moveq      #$2f, d0
00198a: b081         cmp.l      d1, d0
00198c: 67000016     beq.w      $19a4
001990: 302f000e     move.w     $e(a7), d0
001994: 02403fff     andi.w     #$3fff, d0
001998: 7200         moveq      #$0, d1
00199a: 3200         move.w     d0, d1
00199c: 703a         moveq      #$3a, d0
00199e: b081         cmp.l      d1, d0
0019a0: 66000144     bne.w      $1ae6
0019a4: 7001         moveq      #$1, d0
0019a6: 2f400008     move.l     d0, $8(a7)
0019aa: 60000086     bra.w      $1a32
0019ae: 257c000000800046 move.l     #$80, $46(a2)
0019b6: 257c00000080005a move.l     #$80, $5a(a2)
0019be: 600000d6     bra.w      $1a96
0019c2: 206f0044     movea.l    $44(a7), a0
0019c6: 256800080046 move.l     $8(a0), $46(a2)
0019cc: 206f0044     movea.l    $44(a7), a0
0019d0: 25680008005a move.l     $8(a0), $5a(a2)
0019d6: 600000be     bra.w      $1a96
0019da: 257c000000200046 move.l     #$20, $46(a2)
0019e2: 257c00000020005a move.l     #$20, $5a(a2)
0019ea: 600000aa     bra.w      $1a96
0019ee: 206f0044     movea.l    $44(a7), a0
0019f2: 256800080046 move.l     $8(a0), $46(a2)
0019f8: 206f0044     movea.l    $44(a7), a0
0019fc: 25680008005a move.l     $8(a0), $5a(a2)
001a02: 206f0044     movea.l    $44(a7), a0
001a06: 2568000c004a move.l     $c(a0), $4a(a2)
001a0c: 60000088     bra.w      $1a96
001a10: 257c000001fe0046 move.l     #$1fe, $46(a2)
001a18: 257c000001fe005a move.l     #$1fe, $5a(a2)
001a20: 60000074     bra.w      $1a96
001a24: 70ff         moveq      #$ff, d0
001a26: 4fef0024     lea.l      $24(a7), a7
001a2a: 60000220     bra.w      $1c4c
001a2e: 60000066     bra.w      $1a96
001a32: 302f000e     move.w     $e(a7), d0
001a36: 02403fff     andi.w     #$3fff, d0
001a3a: 7200         moveq      #$0, d1
001a3c: 3200         move.w     d0, d1
001a3e: 0c8100000020 cmpi.l     #$20, d1
001a44: 6700ffa8     beq.w      $19ee
001a48: 62000024     bhi.w      $1a6e
001a4c: 0c01000e     cmpi.b     #$e, d1
001a50: 6700ff88     beq.w      $19da
001a54: 6200000c     bhi.w      $1a62
001a58: 4a01         tst.b      d1
001a5a: 6700ff52     beq.w      $19ae
001a5e: 6000ffc4     bra.w      $1a24
001a62: 0c01000f     cmpi.b     #$f, d1
001a66: 6700ff5a     beq.w      $19c2
001a6a: 6000ffb8     bra.w      $1a24
001a6e: 0c810000002f cmpi.l     #$2f, d1
001a74: 6700ff78     beq.w      $19ee
001a78: 6200000e     bhi.w      $1a88
001a7c: 0c01002c     cmpi.b     #$2c, d1
001a80: 6700ff2c     beq.w      $19ae
001a84: 6000ff9e     bra.w      $1a24
001a88: 0c810000003a cmpi.l     #$3a, d1
001a8e: 6700ff80     beq.w      $1a10
001a92: 6000ff90     bra.w      $1a24
001a96: 302f000e     move.w     $e(a7), d0
001a9a: 02403fff     andi.w     #$3fff, d0
001a9e: 7200         moveq      #$0, d1
001aa0: 3200         move.w     d0, d1
001aa2: 2541003e     move.l     d1, $3e(a2)
001aa6: 256a002e0042 move.l     $2e(a2), $42(a2)
001aac: 257c000000010056 move.l     #$1, $56(a2)
001ab4: 7032         moveq      #$32, d0
001ab6: d08a         add.l      a2, d0
001ab8: 25400066     move.l     d0, $66(a2)
001abc: 257c0000001c0062 move.l     #$1c, $62(a2)
001ac4: 206f0044     movea.l    $44(a7), a0
001ac8: 25680020005e move.l     $20(a0), $5e(a2)
001ace: 257c00080000003a move.l     #$80000, $3a(a2)
001ad6: 7056         moveq      #$56, d0
001ad8: d08a         add.l      a2, d0
001ada: 206f0044     movea.l    $44(a7), a0
001ade: 21400020     move.l     d0, $20(a0)
001ae2: 60000082     bra.w      $1b66
001ae6: 42af0008     clr.l      $8(a7)
001aea: 302f000e     move.w     $e(a7), d0
001aee: 02403fff     andi.w     #$3fff, d0
001af2: 7200         moveq      #$0, d1
001af4: 3200         move.w     d0, d1
001af6: 7010         moveq      #$10, d0
001af8: b081         cmp.l      d1, d0
001afa: 66000010     bne.w      $1b0c
001afe: 206f0044     movea.l    $44(a7), a0
001b02: 226f0044     movea.l    $44(a7), a1
001b06: 236800200008 move.l     $20(a0), $8(a1)
001b0c: 302f000e     move.w     $e(a7), d0
001b10: 02403fff     andi.w     #$3fff, d0
001b14: 7200         moveq      #$0, d1
001b16: 3200         move.w     d0, d1
001b18: 2541003e     move.l     d1, $3e(a2)
001b1c: 256a002e0042 move.l     $2e(a2), $42(a2)
001b22: 206f0044     movea.l    $44(a7), a0
001b26: 256800080046 move.l     $8(a0), $46(a2)
001b2c: 257c000000010056 move.l     #$1, $56(a2)
001b34: 7032         moveq      #$32, d0
001b36: d08a         add.l      a2, d0
001b38: 25400066     move.l     d0, $66(a2)
001b3c: 257c000000180062 move.l     #$18, $62(a2)
001b44: 41d7         lea.l      (a7), a0
001b46: 2548005e     move.l     a0, $5e(a2)
001b4a: 257c00000008005a move.l     #$8, $5a(a2)
001b52: 257c00070001003a move.l     #$70001, $3a(a2)
001b5a: 7056         moveq      #$56, d0
001b5c: d08a         add.l      a2, d0
001b5e: 206f0044     movea.l    $44(a7), a0
001b62: 21400020     move.l     d0, $20(a0)
001b66: 2f2f0044     move.l     $44(a7), -(a7)
001b6a: 2f2f0044     move.l     $44(a7), -(a7)
001b6e: 222f0030     move.l     $30(a7), d1
001b72: 200a         move.l     a2, d0
001b74: 610008c6     bsr.w      $243c
001b78: 508f         addq.l     #$8, a7
001b7a: 2f400014     move.l     d0, $14(a7)
001b7e: 6c00000c     bge.w      $1b8c
001b82: 2f6f00140018 move.l     $14(a7), $18(a7)
001b88: 600000aa     bra.w      $1c34
001b8c: 202f0040     move.l     $40(a7), d0
001b90: 61001a40     bsr.w      $35d2
001b94: 206f0044     movea.l    $44(a7), a0
001b98: 216f00140020 move.l     $14(a7), $20(a0)
001b9e: 2f2f0044     move.l     $44(a7), -(a7)
001ba2: 2f2f0044     move.l     $44(a7), -(a7)
001ba6: 222f0030     move.l     $30(a7), d1
001baa: 200a         move.l     a2, d0
001bac: 61000762     bsr.w      $2310
001bb0: 508f         addq.l     #$8, a7
001bb2: 2f400018     move.l     d0, $18(a7)
001bb6: 6d00007c     blt.w      $1c34
001bba: 302f000e     move.w     $e(a7), d0
001bbe: 02403fff     andi.w     #$3fff, d0
001bc2: 7200         moveq      #$0, d1
001bc4: 3200         move.w     d0, d1
001bc6: 7002         moveq      #$2, d0
001bc8: b081         cmp.l      d1, d0
001bca: 67000016     beq.w      $1be2
001bce: 302f000e     move.w     $e(a7), d0
001bd2: 02403fff     andi.w     #$3fff, d0
001bd6: 7200         moveq      #$0, d1
001bd8: 3200         move.w     d0, d1
001bda: 7005         moveq      #$5, d0
001bdc: b081         cmp.l      d1, d0
001bde: 66000024     bne.w      $1c04
001be2: 4aaf0004     tst.l      $4(a7)
001be6: 6c000012     bge.w      $1bfa
001bea: 206f0044     movea.l    $44(a7), a0
001bee: 2017         move.l     (a7), d0
001bf0: 4480         neg.l      d0
001bf2: 21400008     move.l     d0, $8(a0)
001bf6: 6000000c     bra.w      $1c04
001bfa: 206f0044     movea.l    $44(a7), a0
001bfe: 216f00040008 move.l     $4(a7), $8(a0)
001c04: 4aaf0008     tst.l      $8(a7)
001c08: 6600001e     bne.w      $1c28
001c0c: 4aaf0004     tst.l      $4(a7)
001c10: 6c00000a     bge.w      $1c1c
001c14: 2017         move.l     (a7), d0
001c16: 4480         neg.l      d0
001c18: 60000006     bra.w      $1c20
001c1c: 202f0004     move.l     $4(a7), d0
001c20: 2f400018     move.l     d0, $18(a7)
001c24: 6000000e     bra.w      $1c34
001c28: 202a005a     move.l     $5a(a2), d0
001c2c: 90af0018     sub.l      $18(a7), d0
001c30: 2f400018     move.l     d0, $18(a7)
001c34: 206f0044     movea.l    $44(a7), a0
001c38: 216f00200020 move.l     $20(a7), $20(a0)
001c3e: 202f0018     move.l     $18(a7), d0
001c42: 4fef0024     lea.l      $24(a7), a7
001c46: 60000004     bra.w      $1c4c
001c4a: 4e71         nop        
001c4c: 4ced0700fff4 movem.l    -$c(a5), a0-a2
001c52: 4e5d         unlk       a5
001c54: 4e75         rts        
001c56: 4e550000     link.w     a5, #$0
001c5a: 48e7e0f8     movem.l    d0-d2/a0-a4, -(a7)
001c5e: 2440         movea.l    d0, a2
001c60: 4fefffe4     lea.l      -$1c(a7), a7
001c64: 4a6a0074     tst.w      $74(a2)
001c68: 66000018     bne.w      $1c82
001c6c: 4a6a0086     tst.w      $86(a2)
001c70: 67000010     beq.w      $1c82
001c74: 203cffffff53 move.l     #$ffffff53, d0
001c7a: 4fef001c     lea.l      $1c(a7), a7
001c7e: 6000035e     bra.w      $1fde
001c82: 206f0044     movea.l    $44(a7), a0
001c86: 203c0000ffff move.l     #$ffff, d0
001c8c: c0a80004     and.l      $4(a0), d0
001c90: 2f400010     move.l     d0, $10(a7)
001c94: 206a0004     movea.l    $4(a2), a0
001c98: 20680004     movea.l    $4(a0), a0
001c9c: 2668002a     movea.l    $2a(a0), a3
001ca0: 42af0014     clr.l      $14(a7)
001ca4: 60000306     bra.w      $1fac
001ca8: 60000262     bra.w      $1f0c
001cac: 206f0044     movea.l    $44(a7), a0
001cb0: 20680020     movea.l    $20(a0), a0
001cb4: 20680010     movea.l    $10(a0), a0
001cb8: 4a280004     tst.b      $4(a0)
001cbc: 66000014     bne.w      $1cd2
001cc0: 206f0044     movea.l    $44(a7), a0
001cc4: 20680020     movea.l    $20(a0), a0
001cc8: 20680010     movea.l    $10(a0), a0
001ccc: 116a002e0004 move.b     $2e(a2), $4(a0)
001cd2: 2f2f0044     move.l     $44(a7), -(a7)
001cd6: 2f2f0024     move.l     $24(a7), -(a7)
001cda: 220b         move.l     a3, d1
001cdc: 200a         move.l     a2, d0
001cde: 6100075c     bsr.w      $243c
001ce2: 508f         addq.l     #$8, a7
001ce4: 4fef001c     lea.l      $1c(a7), a7
001ce8: 600002f4     bra.w      $1fde
001cec: 6000027a     bra.w      $1f68
001cf0: 2f2f0044     move.l     $44(a7), -(a7)
001cf4: 2f2f0024     move.l     $24(a7), -(a7)
001cf8: 220b         move.l     a3, d1
001cfa: 200a         move.l     a2, d0
001cfc: 61000a60     bsr.w      $275e
001d00: 508f         addq.l     #$8, a7
001d02: 4fef001c     lea.l      $1c(a7), a7
001d06: 600002d6     bra.w      $1fde
001d0a: 6000025c     bra.w      $1f68
001d0e: 2f2f0044     move.l     $44(a7), -(a7)
001d12: 2f2f0024     move.l     $24(a7), -(a7)
001d16: 220b         move.l     a3, d1
001d18: 200a         move.l     a2, d0
001d1a: 610005f4     bsr.w      $2310
001d1e: 508f         addq.l     #$8, a7
001d20: 4fef001c     lea.l      $1c(a7), a7
001d24: 600002b8     bra.w      $1fde
001d28: 6000023e     bra.w      $1f68
001d2c: 2f2f0044     move.l     $44(a7), -(a7)
001d30: 2f2f0024     move.l     $24(a7), -(a7)
001d34: 220b         move.l     a3, d1
001d36: 200a         move.l     a2, d0
001d38: 61000b9e     bsr.w      $28d8
001d3c: 508f         addq.l     #$8, a7
001d3e: 4fef001c     lea.l      $1c(a7), a7
001d42: 6000029a     bra.w      $1fde
001d46: 60000220     bra.w      $1f68
001d4a: 206f0044     movea.l    $44(a7), a0
001d4e: 22280020     move.l     $20(a0), d1
001d52: 206b0008     movea.l    $8(a3), a0
001d56: 20280002     move.l     $2(a0), d0
001d5a: 6100138e     bsr.w      $30ea
001d5e: 4fef001c     lea.l      $1c(a7), a7
001d62: 6000027a     bra.w      $1fde
001d66: 60000200     bra.w      $1f68
001d6a: 426b0004     clr.w      $4(a3)
001d6e: 7000         moveq      #$0, d0
001d70: 4fef001c     lea.l      $1c(a7), a7
001d74: 60000268     bra.w      $1fde
001d78: 600001ee     bra.w      $1f68
001d7c: 206b0008     movea.l    $8(a3), a0
001d80: 20280002     move.l     $2(a0), d0
001d84: 6100125c     bsr.w      $2fe2
001d88: 4fef001c     lea.l      $1c(a7), a7
001d8c: 60000250     bra.w      $1fde
001d90: 600001d6     bra.w      $1f68
001d94: 377c0001000c move.w     #$1, $c(a3)
001d9a: 206f0020     movea.l    $20(a7), a0
001d9e: 7000         moveq      #$0, d0
001da0: 3010         move.w     (a0), d0
001da2: 4fef001c     lea.l      $1c(a7), a7
001da6: 60000236     bra.w      $1fde
001daa: 600001bc     bra.w      $1f68
001dae: 426b000c     clr.w      $c(a3)
001db2: 206f0020     movea.l    $20(a7), a0
001db6: 7000         moveq      #$0, d0
001db8: 3010         move.w     (a0), d0
001dba: 4fef001c     lea.l      $1c(a7), a7
001dbe: 6000021e     bra.w      $1fde
001dc2: 600001a4     bra.w      $1f68
001dc6: 306b0006     movea.w    $6(a3), a0
001dca: 2008         move.l     a0, d0
001dcc: 61001452     bsr.w      $3220
001dd0: 2f40000c     move.l     d0, $c(a7)
001dd4: 206f0044     movea.l    $44(a7), a0
001dd8: 20680020     movea.l    $20(a0), a0
001ddc: 2050         movea.l    (a0), a0
001dde: 226f0044     movea.l    $44(a7), a1
001de2: 22690020     movea.l    $20(a1), a1
001de6: 22690004     movea.l    $4(a1), a1
001dea: 22a80008     move.l     $8(a0), (a1)
001dee: 206f0044     movea.l    $44(a7), a0
001df2: 20680020     movea.l    $20(a0), a0
001df6: 2050         movea.l    (a0), a0
001df8: 20680008     movea.l    $8(a0), a0
001dfc: 226f0044     movea.l    $44(a7), a1
001e00: 22690020     movea.l    $20(a1), a1
001e04: 2251         movea.l    (a1), a1
001e06: 2368000c0008 move.l     $c(a0), $8(a1)
001e0c: 202f000c     move.l     $c(a7), d0
001e10: 61001496     bsr.w      $32a8
001e14: 60000152     bra.w      $1f68
001e18: 2f6b00080004 move.l     $8(a3), $4(a7)
001e1e: 4297         clr.l      (a7)
001e20: 60000026     bra.w      $1e48
001e24: 206f0044     movea.l    $44(a7), a0
001e28: 22280020     move.l     $20(a0), d1
001e2c: 2017         move.l     (a7), d0
001e2e: e588         lsl.l      #$2, d0
001e30: 206f0004     movea.l    $4(a7), a0
001e34: 2030081a     move.l     $1a(a0, d0.l), d0
001e38: 61001b82     bsr.w      $39bc
001e3c: 4a80         tst.l      d0
001e3e: 66000006     bne.w      $1e46
001e42: 60000014     bra.w      $1e58
001e46: 5297         addq.l     #$1, (a7)
001e48: 206f0004     movea.l    $4(a7), a0
001e4c: 30280010     move.w     $10(a0), d0
001e50: 48c0         ext.l      d0
001e52: b097         cmp.l      (a7), d0
001e54: 6e00ffce     bgt.w      $1e24
001e58: 206f0004     movea.l    $4(a7), a0
001e5c: 30280010     move.w     $10(a0), d0
001e60: 48c0         ext.l      d0
001e62: b097         cmp.l      (a7), d0
001e64: 6e00000a     bgt.w      $1e70
001e68: 206f0004     movea.l    $4(a7), a0
001e6c: 52680010     addq.w     #$1, $10(a0)
001e70: 2017         move.l     (a7), d0
001e72: e388         lsl.l      #$1, d0
001e74: 206f0004     movea.l    $4(a7), a0
001e78: 226f0020     movea.l    $20(a7), a1
001e7c: 31910812     move.w     (a1), $12(a0, d0.l)
001e80: 2017         move.l     (a7), d0
001e82: 4fef001c     lea.l      $1c(a7), a7
001e86: 60000156     bra.w      $1fde
001e8a: 600000dc     bra.w      $1f68
001e8e: 206f0044     movea.l    $44(a7), a0
001e92: 2f6800200008 move.l     $20(a0), $8(a7)
001e98: 48780020     pea.l      $20.w
001e9c: 306f000c     movea.w    $c(a7), a0
001ea0: 2008         move.l     a0, d0
001ea2: 610016c4     bsr.w      $3568
001ea6: 2200         move.l     d0, d1
001ea8: 306f000e     movea.w    $e(a7), a0
001eac: 2008         move.l     a0, d0
001eae: 610016b8     bsr.w      $3568
001eb2: 610016dc     bsr.w      $3590
001eb6: 588f         addq.l     #$4, a7
001eb8: 7000         moveq      #$0, d0
001eba: 4fef001c     lea.l      $1c(a7), a7
001ebe: 6000011e     bra.w      $1fde
001ec2: 600000a4     bra.w      $1f68
001ec6: 2f2f0010     move.l     $10(a7), -(a7)
001eca: 2f2f0048     move.l     $48(a7), -(a7)
001ece: 2f2f0028     move.l     $28(a7), -(a7)
001ed2: 206a0004     movea.l    $4(a2), a0
001ed6: 22280004     move.l     $4(a0), d1
001eda: 200a         move.l     a2, d0
001edc: 206a0004     movea.l    $4(a2), a0
001ee0: 2050         movea.l    (a0), a0
001ee2: 24280030     move.l     $30(a0), d2
001ee6: 206a0004     movea.l    $4(a2), a0
001eea: 2050         movea.l    (a0), a0
001eec: 34302814     move.w     $14(a0, d2.l), d2
001ef0: 48c2         ext.l      d2
001ef2: 206a0004     movea.l    $4(a2), a0
001ef6: 2050         movea.l    (a0), a0
001ef8: 4eb02800     jsr        (a0, d2.l)
001efc: 4fef000c     lea.l      $c(a7), a7
001f00: 4fef001c     lea.l      $1c(a7), a7
001f04: 600000d8     bra.w      $1fde
001f08: 6000005e     bra.w      $1f68
001f0c: 202f0010     move.l     $10(a7), d0
001f10: 04800000ff04 subi.l     #$ff04, d0
001f16: 0c800000001e cmpi.l     #$1e, d0
001f1c: 6200ffa8     bhi.w      $1ec6
001f20: d040         add.w      d0, d0
001f22: 303b0006     move.w     $1f2a(pc, d0.w), d0
001f26: 4efb0002     jmp        $1f2a(pc, d0.w)
001f2a: fe40fd82     fsogt.b    d0
001f2e: fde4         dc.w       $fde4
001f30: fe20fdc6     fmovem     invalid, -(a0)
001f34: fe52ff9c     fsult.b    (a2)
001f38: ff9c         dc.w       $ff9c
001f3a: fe02fe6a     fmovem     invalid, d2
001f3e: fe84fe9c     fbf.w      $1ddc
001f42: ff64         dc.w       $ff64
001f44: ff9c         dc.w       $ff9c
001f46: ff9c         dc.w       $ff9c
001f48: ff9c         dc.w       $ff9c
001f4a: ff9c         dc.w       $ff9c
001f4c: ff9c         dc.w       $ff9c
001f4e: ff9c         dc.w       $ff9c
001f50: ff9c         dc.w       $ff9c
001f52: ff9c         dc.w       $ff9c
001f54: ff9c         dc.w       $ff9c
001f56: ff9c         dc.w       $ff9c
001f58: ff9c         dc.w       $ff9c
001f5a: ff9c         dc.w       $ff9c
001f5c: ff9c         dc.w       $ff9c
001f5e: ff9c         dc.w       $ff9c
001f60: ff9c         dc.w       $ff9c
001f62: ff9c         dc.w       $ff9c
001f64: ff9c         dc.w       $ff9c
001f66: feee60000070 fbf.l      $60001fd8
001f6c: 60000020     bra.w      $1f8e
001f70: 2f2f0044     move.l     $44(a7), -(a7)
001f74: 2f2f0024     move.l     $24(a7), -(a7)
001f78: 220b         move.l     a3, d1
001f7a: 200a         move.l     a2, d0
001f7c: 6100006a     bsr.w      $1fe8
001f80: 508f         addq.l     #$8, a7
001f82: 4fef001c     lea.l      $1c(a7), a7
001f86: 60000056     bra.w      $1fde
001f8a: 6000000a     bra.w      $1f96
001f8e: 202f0010     move.l     $10(a7), d0
001f92: 6000ffdc     bra.w      $1f70
001f96: 60000042     bra.w      $1fda
001f9a: 6000003e     bra.w      $1fda
001f9e: 70ff         moveq      #$ff, d0
001fa0: 4fef001c     lea.l      $1c(a7), a7
001fa4: 60000038     bra.w      $1fde
001fa8: 60000030     bra.w      $1fda
001fac: 102f0012     move.b     $12(a7), d0
001fb0: ec08         lsr.b      #$6, d0
001fb2: 7200         moveq      #$0, d1
001fb4: 1200         move.b     d0, d1
001fb6: 0c81000000ff cmpi.l     #$ff, d1
001fbc: 6200ffe0     bhi.w      $1f9e
001fc0: 4a01         tst.b      d1
001fc2: 6700ffa8     beq.w      $1f6c
001fc6: 0c010002     cmpi.b     #$2, d1
001fca: 6700ffce     beq.w      $1f9a
001fce: 0c010003     cmpi.b     #$3, d1
001fd2: 6700fcd4     beq.w      $1ca8
001fd6: 6000ffc6     bra.w      $1f9e
001fda: 4fef001c     lea.l      $1c(a7), a7
001fde: 4ced1f04ffe8 movem.l    -$18(a5), d2/a0-a4
001fe4: 4e5d         unlk       a5
001fe6: 4e75         rts        
001fe8: 4e550000     link.w     a5, #$0
001fec: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
001ff0: 2440         movea.l    d0, a2
001ff2: 4fefffbc     lea.l      -$44(a7), a7
001ff6: 206f0064     movea.l    $64(a7), a0
001ffa: 2f6800200040 move.l     $20(a0), $40(a7)
002000: 206f0064     movea.l    $64(a7), a0
002004: 2f680004002c move.l     $4(a0), $2c(a7)
00200a: 302f002e     move.w     $2e(a7), d0
00200e: 02403fff     andi.w     #$3fff, d0
002012: 7200         moveq      #$0, d1
002014: 3200         move.w     d0, d1
002016: 67000052     beq.w      $206a
00201a: 302f002e     move.w     $2e(a7), d0
00201e: 02403fff     andi.w     #$3fff, d0
002022: 7200         moveq      #$0, d1
002024: 3200         move.w     d0, d1
002026: 7030         moveq      #$30, d0
002028: b081         cmp.l      d1, d0
00202a: 6700003e     beq.w      $206a
00202e: 302f002e     move.w     $2e(a7), d0
002032: 02403fff     andi.w     #$3fff, d0
002036: 7200         moveq      #$0, d1
002038: 3200         move.w     d0, d1
00203a: 7032         moveq      #$32, d0
00203c: b081         cmp.l      d1, d0
00203e: 6700002a     beq.w      $206a
002042: 302f002e     move.w     $2e(a7), d0
002046: 02403fff     andi.w     #$3fff, d0
00204a: 7200         moveq      #$0, d1
00204c: 3200         move.w     d0, d1
00204e: 702d         moveq      #$2d, d0
002050: b081         cmp.l      d1, d0
002052: 67000016     beq.w      $206a
002056: 302f002e     move.w     $2e(a7), d0
00205a: 02403fff     andi.w     #$3fff, d0
00205e: 7200         moveq      #$0, d1
002060: 3200         move.w     d0, d1
002062: 700f         moveq      #$f, d0
002064: b081         cmp.l      d1, d0
002066: 66000110     bne.w      $2178
00206a: 60000064     bra.w      $20d0
00206e: 257c000000800046 move.l     #$80, $46(a2)
002076: 257c00000080006a move.l     #$80, $6a(a2)
00207e: 6000009a     bra.w      $211a
002082: 257c000001000046 move.l     #$100, $46(a2)
00208a: 257c00000100006a move.l     #$100, $6a(a2)
002092: 60000086     bra.w      $211a
002096: 206f0064     movea.l    $64(a7), a0
00209a: 256800080046 move.l     $8(a0), $46(a2)
0020a0: 257c00000004006a move.l     #$4, $6a(a2)
0020a8: 60000070     bra.w      $211a
0020ac: 206f0064     movea.l    $64(a7), a0
0020b0: 256800080046 move.l     $8(a0), $46(a2)
0020b6: 257c0000001a006a move.l     #$1a, $6a(a2)
0020be: 6000005a     bra.w      $211a
0020c2: 70ff         moveq      #$ff, d0
0020c4: 4fef0044     lea.l      $44(a7), a7
0020c8: 6000023c     bra.w      $2306
0020cc: 6000004c     bra.w      $211a
0020d0: 302f002e     move.w     $2e(a7), d0
0020d4: 02403fff     andi.w     #$3fff, d0
0020d8: 7200         moveq      #$0, d1
0020da: 3200         move.w     d0, d1
0020dc: 0c810000002d cmpi.l     #$2d, d1
0020e2: 6700ffc8     beq.w      $20ac
0020e6: 62000018     bhi.w      $2100
0020ea: 0c01000f     cmpi.b     #$f, d1
0020ee: 6700ff92     beq.w      $2082
0020f2: 6200ffce     bhi.w      $20c2
0020f6: 4a01         tst.b      d1
0020f8: 6700ff74     beq.w      $206e
0020fc: 6000ffc4     bra.w      $20c2
002100: 0c8100000032 cmpi.l     #$32, d1
002106: 6700ff8e     beq.w      $2096
00210a: 6200ffb6     bhi.w      $20c2
00210e: 0c010030     cmpi.b     #$30, d1
002112: 6700ff82     beq.w      $2096
002116: 6000ffaa     bra.w      $20c2
00211a: 302f002e     move.w     $2e(a7), d0
00211e: 02403fff     andi.w     #$3fff, d0
002122: 7200         moveq      #$0, d1
002124: 3200         move.w     d0, d1
002126: 2541003e     move.l     d1, $3e(a2)
00212a: 256a002e0042 move.l     $2e(a2), $42(a2)
002130: 257c000000020056 move.l     #$2, $56(a2)
002138: 7032         moveq      #$32, d0
00213a: d08a         add.l      a2, d0
00213c: 25400066     move.l     d0, $66(a2)
002140: 257c000000180062 move.l     #$18, $62(a2)
002148: 206f0064     movea.l    $64(a7), a0
00214c: 25680020006e move.l     $20(a0), $6e(a2)
002152: 41d7         lea.l      (a7), a0
002154: 2548005e     move.l     a0, $5e(a2)
002158: 257c00000008005a move.l     #$8, $5a(a2)
002160: 257c00090000003a move.l     #$90000, $3a(a2)
002168: 7056         moveq      #$56, d0
00216a: d08a         add.l      a2, d0
00216c: 206f0064     movea.l    $64(a7), a0
002170: 21400020     move.l     d0, $20(a0)
002174: 6000010c     bra.w      $2282
002178: 302f002e     move.w     $2e(a7), d0
00217c: 02403fff     andi.w     #$3fff, d0
002180: 7200         moveq      #$0, d1
002182: 3200         move.w     d0, d1
002184: 7004         moveq      #$4, d0
002186: b081         cmp.l      d1, d0
002188: 6600007c     bne.w      $2206
00218c: 256a002e003e move.l     $2e(a2), $3e(a2)
002192: 206f0064     movea.l    $64(a7), a0
002196: 256800080042 move.l     $8(a0), $42(a2)
00219c: 206f0064     movea.l    $64(a7), a0
0021a0: 2568000c0046 move.l     $c(a0), $46(a2)
0021a6: 42aa004a     clr.l      $4a(a2)
0021aa: 7003         moveq      #$3, d0
0021ac: 2f400008     move.l     d0, $8(a7)
0021b0: 7032         moveq      #$32, d0
0021b2: d08a         add.l      a2, d0
0021b4: 2f400018     move.l     d0, $18(a7)
0021b8: 701c         moveq      #$1c, d0
0021ba: 2f400014     move.l     d0, $14(a7)
0021be: 206f0064     movea.l    $64(a7), a0
0021c2: 2f6800200020 move.l     $20(a0), $20(a7)
0021c8: 2f7c00000100001c move.l     #$100, $1c(a7)
0021d0: 206f0064     movea.l    $64(a7), a0
0021d4: 2f6800240028 move.l     $24(a0), $28(a7)
0021da: 2f7c000001000024 move.l     #$100, $24(a7)
0021e2: 41d7         lea.l      (a7), a0
0021e4: 2f480010     move.l     a0, $10(a7)
0021e8: 7008         moveq      #$8, d0
0021ea: 2f40000c     move.l     d0, $c(a7)
0021ee: 257c000a0000003a move.l     #$a0000, $3a(a2)
0021f6: 41ef0008     lea.l      $8(a7), a0
0021fa: 226f0064     movea.l    $64(a7), a1
0021fe: 23480020     move.l     a0, $20(a1)
002202: 6000007e     bra.w      $2282
002206: 302f002e     move.w     $2e(a7), d0
00220a: 02403fff     andi.w     #$3fff, d0
00220e: 7200         moveq      #$0, d1
002210: 3200         move.w     d0, d1
002212: 7010         moveq      #$10, d0
002214: b081         cmp.l      d1, d0
002216: 66000010     bne.w      $2228
00221a: 206f0064     movea.l    $64(a7), a0
00221e: 226f0064     movea.l    $64(a7), a1
002222: 236800200008 move.l     $20(a0), $8(a1)
002228: 302f002e     move.w     $2e(a7), d0
00222c: 02403fff     andi.w     #$3fff, d0
002230: 7200         moveq      #$0, d1
002232: 3200         move.w     d0, d1
002234: 2541003e     move.l     d1, $3e(a2)
002238: 256a002e0042 move.l     $2e(a2), $42(a2)
00223e: 206f0064     movea.l    $64(a7), a0
002242: 256800080046 move.l     $8(a0), $46(a2)
002248: 257c000000010056 move.l     #$1, $56(a2)
002250: 7032         moveq      #$32, d0
002252: d08a         add.l      a2, d0
002254: 25400066     move.l     d0, $66(a2)
002258: 257c000000180062 move.l     #$18, $62(a2)
002260: 41d7         lea.l      (a7), a0
002262: 2548005e     move.l     a0, $5e(a2)
002266: 257c00000008005a move.l     #$8, $5a(a2)
00226e: 257c00070000003a move.l     #$70000, $3a(a2)
002276: 7056         moveq      #$56, d0
002278: d08a         add.l      a2, d0
00227a: 206f0064     movea.l    $64(a7), a0
00227e: 21400020     move.l     d0, $20(a0)
002282: 2f2f0064     move.l     $64(a7), -(a7)
002286: 2f2f0064     move.l     $64(a7), -(a7)
00228a: 222f0050     move.l     $50(a7), d1
00228e: 200a         move.l     a2, d0
002290: 610001aa     bsr.w      $243c
002294: 508f         addq.l     #$8, a7
002296: 2f400034     move.l     d0, $34(a7)
00229a: 6c00000c     bge.w      $22a8
00229e: 2f6f00340038 move.l     $34(a7), $38(a7)
0022a4: 60000048     bra.w      $22ee
0022a8: 202f0060     move.l     $60(a7), d0
0022ac: 61001324     bsr.w      $35d2
0022b0: 206f0064     movea.l    $64(a7), a0
0022b4: 216f00340020 move.l     $34(a7), $20(a0)
0022ba: 2f2f0064     move.l     $64(a7), -(a7)
0022be: 2f2f0064     move.l     $64(a7), -(a7)
0022c2: 222f0050     move.l     $50(a7), d1
0022c6: 200a         move.l     a2, d0
0022c8: 61000046     bsr.w      $2310
0022cc: 508f         addq.l     #$8, a7
0022ce: 2f400038     move.l     d0, $38(a7)
0022d2: 6d00001a     blt.w      $22ee
0022d6: 4aaf0004     tst.l      $4(a7)
0022da: 6c00000a     bge.w      $22e6
0022de: 2017         move.l     (a7), d0
0022e0: 4480         neg.l      d0
0022e2: 60000006     bra.w      $22ea
0022e6: 202f0004     move.l     $4(a7), d0
0022ea: 2f400038     move.l     d0, $38(a7)
0022ee: 206f0064     movea.l    $64(a7), a0
0022f2: 216f00400020 move.l     $40(a7), $20(a0)
0022f8: 202f0038     move.l     $38(a7), d0
0022fc: 4fef0044     lea.l      $44(a7), a7
002300: 60000004     bra.w      $2306
002304: 4e71         nop        
002306: 4ced0700fff4 movem.l    -$c(a5), a0-a2
00230c: 4e5d         unlk       a5
00230e: 4e75         rts        
002310: 4e550000     link.w     a5, #$0
002314: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
002318: 2440         movea.l    d0, a2
00231a: 2641         movea.l    d1, a3
00231c: 518f         subq.l     #$8, a7
00231e: 206f002c     movea.l    $2c(a7), a0
002322: 22280020     move.l     $20(a0), d1
002326: 206b0008     movea.l    $8(a3), a0
00232a: 20280002     move.l     $2(a0), d0
00232e: 61000e40     bsr.w      $3170
002332: 2840         movea.l    d0, a4
002334: 306b0006     movea.w    $6(a3), a0
002338: 2008         move.l     a0, d0
00233a: 61000ee4     bsr.w      $3220
00233e: 2e80         move.l     d0, (a7)
002340: 4a54         tst.w      (a4)
002342: 6c000076     bge.w      $23ba
002346: 60000048     bra.w      $2390
00234a: 2f6c00060004 move.l     $6(a4), $4(a7)
002350: 206f002c     movea.l    $2c(a7), a0
002354: 22280020     move.l     $20(a0), d1
002358: 206b0008     movea.l    $8(a3), a0
00235c: 20280002     move.l     $2(a0), d0
002360: 61000d88     bsr.w      $30ea
002364: 60000040     bra.w      $23a6
002368: 70ff         moveq      #$ff, d0
00236a: 2f400004     move.l     d0, $4(a7)
00236e: 206f002c     movea.l    $2c(a7), a0
002372: 22280020     move.l     $20(a0), d1
002376: 206b0008     movea.l    $8(a3), a0
00237a: 20280002     move.l     $2(a0), d0
00237e: 61000d6a     bsr.w      $30ea
002382: 60000022     bra.w      $23a6
002386: 70ff         moveq      #$ff, d0
002388: 2f400004     move.l     d0, $4(a7)
00238c: 60000018     bra.w      $23a6
002390: 3014         move.w     (a4), d0
002392: 0c40fffe     cmpi.w     #$fffe, d0
002396: 6700ffd0     beq.w      $2368
00239a: 0c40ffff     cmpi.w     #$ffff, d0
00239e: 6700ffaa     beq.w      $234a
0023a2: 6000ffe2     bra.w      $2386
0023a6: 2017         move.l     (a7), d0
0023a8: 61000efe     bsr.w      $32a8
0023ac: 202f0004     move.l     $4(a7), d0
0023b0: 508f         addq.l     #$8, a7
0023b2: 6000007e     bra.w      $2432
0023b6: 60000078     bra.w      $2430
0023ba: 206f0028     movea.l    $28(a7), a0
0023be: 3890         move.w     (a0), (a4)
0023c0: 2017         move.l     (a7), d0
0023c2: 61000ee4     bsr.w      $32a8
0023c6: 306b0006     movea.w    $6(a3), a0
0023ca: 2f08         move.l     a0, -(a7)
0023cc: 42a7         clr.l      -(a7)
0023ce: 220c         move.l     a4, d1
0023d0: 202f0030     move.l     $30(a7), d0
0023d4: 610008a6     bsr.w      $2c7c
0023d8: 508f         addq.l     #$8, a7
0023da: 2f400004     move.l     d0, $4(a7)
0023de: 6c00001a     bge.w      $23fa
0023e2: 38bcfffe     move.w     #$fffe, (a4)
0023e6: 08eb00000005 bset.b     #$0, $5(a3)
0023ec: 202f0004     move.l     $4(a7), d0
0023f0: 508f         addq.l     #$8, a7
0023f2: 6000003e     bra.w      $2432
0023f6: 60000038     bra.w      $2430
0023fa: 2f6c00060004 move.l     $6(a4), $4(a7)
002400: 306b0006     movea.w    $6(a3), a0
002404: 2008         move.l     a0, d0
002406: 61000e18     bsr.w      $3220
00240a: 2e80         move.l     d0, (a7)
00240c: 206f002c     movea.l    $2c(a7), a0
002410: 22280020     move.l     $20(a0), d1
002414: 206b0008     movea.l    $8(a3), a0
002418: 20280002     move.l     $2(a0), d0
00241c: 61000ccc     bsr.w      $30ea
002420: 2017         move.l     (a7), d0
002422: 61000e84     bsr.w      $32a8
002426: 202f0004     move.l     $4(a7), d0
00242a: 508f         addq.l     #$8, a7
00242c: 60000004     bra.w      $2432
002430: 508f         addq.l     #$8, a7
002432: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
002438: 4e5d         unlk       a5
00243a: 4e75         rts        
00243c: 4e550000     link.w     a5, #$0
002440: 48e7e8f8     movem.l    d0-d2/d4/a0-a4, -(a7)
002444: 2441         movea.l    d1, a2
002446: 4fefffe8     lea.l      -$18(a7), a7
00244a: 206f0048     movea.l    $48(a7), a0
00244e: 2f6800200008 move.l     $20(a0), $8(a7)
002454: 206f0008     movea.l    $8(a7), a0
002458: 28680010     movea.l    $10(a0), a4
00245c: 102c0003     move.b     $3(a4), d0
002460: b02a0012     cmp.b      $12(a2), d0
002464: 66000016     bne.w      $247c
002468: 08ea00010004 bset.b     #$1, $4(a2)
00246e: 203cfffffe00 move.l     #$fffffe00, d0
002474: 4fef0018     lea.l      $18(a7), a7
002478: 600002da     bra.w      $2754
00247c: 4a2c0003     tst.b      $3(a4)
002480: 66000016     bne.w      $2498
002484: 08ea00010004 bset.b     #$1, $4(a2)
00248a: 203cfffffe00 move.l     #$fffffe00, d0
002490: 4fef0018     lea.l      $18(a7), a7
002494: 600002be     bra.w      $2754
002498: 306a0006     movea.w    $6(a2), a0
00249c: 2008         move.l     a0, d0
00249e: 61000d80     bsr.w      $3220
0024a2: 2f400010     move.l     d0, $10(a7)
0024a6: 206a0008     movea.l    $8(a2), a0
0024aa: 20280002     move.l     $2(a0), d0
0024ae: 61000be8     bsr.w      $3098
0024b2: 2e80         move.l     d0, (a7)
0024b4: 202f0010     move.l     $10(a7), d0
0024b8: 61000dee     bsr.w      $32a8
0024bc: 4a97         tst.l      (a7)
0024be: 6c00000c     bge.w      $24cc
0024c2: 2017         move.l     (a7), d0
0024c4: 4fef0018     lea.l      $18(a7), a7
0024c8: 6000028a     bra.w      $2754
0024cc: 2217         move.l     (a7), d1
0024ce: 206a0008     movea.l    $8(a2), a0
0024d2: 20280002     move.l     $2(a0), d0
0024d6: 61000c98     bsr.w      $3170
0024da: 2f400004     move.l     d0, $4(a7)
0024de: 206f0008     movea.l    $8(a7), a0
0024e2: 226f0004     movea.l    $4(a7), a1
0024e6: 236800080002 move.l     $8(a0), $2(a1)
0024ec: 206f0008     movea.l    $8(a7), a0
0024f0: 226f0004     movea.l    $4(a7), a1
0024f4: 236800040006 move.l     $4(a0), $6(a1)
0024fa: 206f0004     movea.l    $4(a7), a0
0024fe: 7000         moveq      #$0, d0
002500: 102c0003     move.b     $3(a4), d0
002504: 3140000c     move.w     d0, $c(a0)
002508: 700c         moveq      #$c, d0
00250a: d0af0008     add.l      $8(a7), d0
00250e: 2640         movea.l    d0, a3
002510: 7024         moveq      #$24, d0
002512: b093         cmp.l      (a3), d0
002514: 6c000010     bge.w      $2526
002518: 203cfffffeee move.l     #$fffffeee, d0
00251e: 4fef0018     lea.l      $18(a7), a7
002522: 60000230     bra.w      $2754
002526: 0254f000     andi.w     #$f000, (a4)
00252a: 303c0fff     move.w     #$fff, d0
00252e: c06f0002     and.w      $2(a7), d0
002532: 8154         or.w       d0, (a4)
002534: 0214003f     andi.b     #$3f, (a4)
002538: 08940004     bclr.b     #$4, (a4)
00253c: 196a00120002 move.b     $12(a2), $2(a4)
002542: 42af000c     clr.l      $c(a7)
002546: 206f0044     movea.l    $44(a7), a0
00254a: 196800010008 move.b     $1(a0), $8(a4)
002550: 7801         moveq      #$1, d4
002552: 60000010     bra.w      $2564
002556: 2004         move.l     d4, d0
002558: e788         lsl.l      #$3, d0
00255a: 20330800     move.l     (a3, d0.l), d0
00255e: d1af000c     add.l      d0, $c(a7)
002562: 5284         addq.l     #$1, d4
002564: 206f0008     movea.l    $8(a7), a0
002568: b890         cmp.l      (a0), d4
00256a: 6d00ffea     blt.w      $2556
00256e: 02acff0000000004 andi.l     #$ff000000, $4(a4)
002576: 203c00ffffff move.l     #$ffffff, d0
00257c: c0af000c     and.l      $c(a7), d0
002580: 81ac0004     or.l       d0, $4(a4)
002584: 206f0008     movea.l    $8(a7), a0
002588: 7001         moveq      #$1, d0
00258a: b090         cmp.l      (a0), d0
00258c: 6600000a     bne.w      $2598
002590: 08d40005     bset.b     #$5, (a4)
002594: 60000020     bra.w      $25b6
002598: 4aaf000c     tst.l      $c(a7)
00259c: 6700000a     beq.w      $25a8
0025a0: 08940005     bclr.b     #$5, (a4)
0025a4: 60000010     bra.w      $25b6
0025a8: 08d40005     bset.b     #$5, (a4)
0025ac: 206f0008     movea.l    $8(a7), a0
0025b0: 20bc00000001 move.l     #$1, (a0)
0025b6: 206f0004     movea.l    $4(a7), a0
0025ba: 08e80007000a bset.b     #$7, $a(a0)
0025c0: 42a7         clr.l      -(a7)
0025c2: 42a7         clr.l      -(a7)
0025c4: 4853         pea.l      (a3)
0025c6: 2f2f0054     move.l     $54(a7), -(a7)
0025ca: 2f2f0054     move.l     $54(a7), -(a7)
0025ce: 206f002c     movea.l    $2c(a7), a0
0025d2: 20680004     movea.l    $4(a0), a0
0025d6: 22280004     move.l     $4(a0), d1
0025da: 202f002c     move.l     $2c(a7), d0
0025de: 206f002c     movea.l    $2c(a7), a0
0025e2: 20680004     movea.l    $4(a0), a0
0025e6: 2050         movea.l    (a0), a0
0025e8: 24280030     move.l     $30(a0), d2
0025ec: 206f002c     movea.l    $2c(a7), a0
0025f0: 20680004     movea.l    $4(a0), a0
0025f4: 2050         movea.l    (a0), a0
0025f6: 34302810     move.w     $10(a0, d2.l), d2
0025fa: 48c2         ext.l      d2
0025fc: 206f002c     movea.l    $2c(a7), a0
002600: 20680004     movea.l    $4(a0), a0
002604: 2050         movea.l    (a0), a0
002606: 4eb02800     jsr        (a0, d2.l)
00260a: 4fef0014     lea.l      $14(a7), a7
00260e: 2f400014     move.l     d0, $14(a7)
002612: 6c00002a     bge.w      $263e
002616: 206f0004     movea.l    $4(a7), a0
00261a: 30bcfffe     move.w     #$fffe, (a0)
00261e: 2217         move.l     (a7), d1
002620: 206a0008     movea.l    $8(a2), a0
002624: 20280002     move.l     $2(a0), d0
002628: 61000ac0     bsr.w      $30ea
00262c: 08ea00020005 bset.b     #$2, $5(a2)
002632: 202f0014     move.l     $14(a7), d0
002636: 4fef0018     lea.l      $18(a7), a7
00263a: 60000118     bra.w      $2754
00263e: 206f0008     movea.l    $8(a7), a0
002642: 7001         moveq      #$1, d0
002644: b090         cmp.l      (a0), d0
002646: 6d00000c     blt.w      $2654
00264a: 2017         move.l     (a7), d0
00264c: 4fef0018     lea.l      $18(a7), a7
002650: 60000102     bra.w      $2754
002654: 08d40004     bset.b     #$4, (a4)
002658: 02acff0000000004 andi.l     #$ff000000, $4(a4)
002660: 600000dc     bra.w      $273e
002664: 508b         addq.l     #$8, a3
002666: 600000d0     bra.w      $2738
00266a: 206f0008     movea.l    $8(a7), a0
00266e: 7001         moveq      #$1, d0
002670: b090         cmp.l      (a0), d0
002672: 66000010     bne.w      $2684
002676: 2013         move.l     (a3), d0
002678: b0aa000e     cmp.l      $e(a2), d0
00267c: 6e000006     bgt.w      $2684
002680: 08d40005     bset.b     #$5, (a4)
002684: 4852         pea.l      (a2)
002686: 222f0048     move.l     $48(a7), d1
00268a: 202f0008     move.l     $8(a7), d0
00268e: 61000340     bsr.w      $29d0
002692: 588f         addq.l     #$4, a7
002694: 2f400014     move.l     d0, $14(a7)
002698: 6c00000e     bge.w      $26a8
00269c: 202f0014     move.l     $14(a7), d0
0026a0: 4fef0018     lea.l      $18(a7), a7
0026a4: 600000ae     bra.w      $2754
0026a8: 48780008     pea.l      $8.w
0026ac: 4854         pea.l      (a4)
0026ae: 4853         pea.l      (a3)
0026b0: 2f2f0054     move.l     $54(a7), -(a7)
0026b4: 2f2f0054     move.l     $54(a7), -(a7)
0026b8: 206f002c     movea.l    $2c(a7), a0
0026bc: 20680004     movea.l    $4(a0), a0
0026c0: 22280004     move.l     $4(a0), d1
0026c4: 202f002c     move.l     $2c(a7), d0
0026c8: 206f002c     movea.l    $2c(a7), a0
0026cc: 20680004     movea.l    $4(a0), a0
0026d0: 2050         movea.l    (a0), a0
0026d2: 24280030     move.l     $30(a0), d2
0026d6: 206f002c     movea.l    $2c(a7), a0
0026da: 20680004     movea.l    $4(a0), a0
0026de: 2050         movea.l    (a0), a0
0026e0: 34302810     move.w     $10(a0, d2.l), d2
0026e4: 48c2         ext.l      d2
0026e6: 206f002c     movea.l    $2c(a7), a0
0026ea: 20680004     movea.l    $4(a0), a0
0026ee: 2050         movea.l    (a0), a0
0026f0: 4eb02800     jsr        (a0, d2.l)
0026f4: 4fef0014     lea.l      $14(a7), a7
0026f8: 2f400014     move.l     d0, $14(a7)
0026fc: 6c00001c     bge.w      $271a
002700: 206f0004     movea.l    $4(a7), a0
002704: 30bcfffe     move.w     #$fffe, (a0)
002708: 08ea00020005 bset.b     #$2, $5(a2)
00270e: 202f0014     move.l     $14(a7), d0
002712: 4fef0018     lea.l      $18(a7), a7
002716: 6000003c     bra.w      $2754
00271a: 202c0004     move.l     $4(a4), d0
00271e: 028000ffffff andi.l     #$ffffff, d0
002724: 5280         addq.l     #$1, d0
002726: 02acff0000000004 andi.l     #$ff000000, $4(a4)
00272e: 028000ffffff andi.l     #$ffffff, d0
002734: 81ac0004     or.l       d0, $4(a4)
002738: 4a93         tst.l      (a3)
00273a: 6e00ff2e     bgt.w      $266a
00273e: 206f0008     movea.l    $8(a7), a0
002742: 5390         subq.l     #$1, (a0)
002744: 6600ff1e     bne.w      $2664
002748: 2017         move.l     (a7), d0
00274a: 4fef0018     lea.l      $18(a7), a7
00274e: 60000004     bra.w      $2754
002752: 4e71         nop        
002754: 4ced1f14ffe4 movem.l    -$1c(a5), d2/d4/a0-a4
00275a: 4e5d         unlk       a5
00275c: 4e75         rts        
00275e: 4e550000     link.w     a5, #$0
002762: 48e7e8b8     movem.l    d0-d2/d4/a0/a2-a4, -(a7)
002766: 2441         movea.l    d1, a2
002768: 4fefffe4     lea.l      -$1c(a7), a7
00276c: 4a6a002a     tst.w      $2a(a2)
002770: 6700000c     beq.w      $277e
002774: 70e1         moveq      #$e1, d0
002776: 4fef001c     lea.l      $1c(a7), a7
00277a: 60000152     bra.w      $28ce
00277e: 206f0048     movea.l    $48(a7), a0
002782: 2f6800200014 move.l     $20(a0), $14(a7)
002788: 206f0014     movea.l    $14(a7), a0
00278c: 28680010     movea.l    $10(a0), a4
002790: 700c         moveq      #$c, d0
002792: d0af0014     add.l      $14(a7), d0
002796: 2640         movea.l    d0, a3
002798: 48780008     pea.l      $8.w
00279c: 41ef0008     lea.l      $8(a7), a0
0027a0: 2208         move.l     a0, d1
0027a2: 200c         move.l     a4, d0
0027a4: 61000dea     bsr.w      $3590
0027a8: 588f         addq.l     #$4, a7
0027aa: 206f0014     movea.l    $14(a7), a0
0027ae: 50a80010     addq.l     #$8, $10(a0)
0027b2: 206f0014     movea.l    $14(a7), a0
0027b6: 51a8000c     subq.l     #$8, $c(a0)
0027ba: 022f003f0004 andi.b     #$3f, $4(a7)
0027c0: 002f00400004 ori.b      #$40, $4(a7)
0027c6: 08af00050004 bclr.b     #$5, $4(a7)
0027cc: 1f6c00020007 move.b     $2(a4), $7(a7)
0027d2: 1f6a00120006 move.b     $12(a2), $6(a7)
0027d8: 02aff80000000008 andi.l     #$f8000000, $8(a7)
0027e0: 206f0014     movea.l    $14(a7), a0
0027e4: 08100007     btst.b     #$7, (a0)
0027e8: 67000012     beq.w      $27fc
0027ec: 206f0014     movea.l    $14(a7), a0
0027f0: 02907fffffff andi.l     #$7fffffff, (a0)
0027f6: 4297         clr.l      (a7)
0027f8: 60000006     bra.w      $2800
0027fc: 7001         moveq      #$1, d0
0027fe: 2e80         move.l     d0, (a7)
002800: 600000b2     bra.w      $28b4
002804: 600000a6     bra.w      $28ac
002808: 206f0014     movea.l    $14(a7), a0
00280c: 4a90         tst.l      (a0)
00280e: 66000018     bne.w      $2828
002812: 2013         move.l     (a3), d0
002814: b0aa000e     cmp.l      $e(a2), d0
002818: 6e00000e     bgt.w      $2828
00281c: 4a97         tst.l      (a7)
00281e: 67000008     beq.w      $2828
002822: 08ef00050004 bset.b     #$5, $4(a7)
002828: 48780008     pea.l      $8.w
00282c: 486f0008     pea.l      $8(a7)
002830: 4853         pea.l      (a3)
002832: 2f2f0054     move.l     $54(a7), -(a7)
002836: 2f2f0054     move.l     $54(a7), -(a7)
00283a: 206f0030     movea.l    $30(a7), a0
00283e: 20680004     movea.l    $4(a0), a0
002842: 22280004     move.l     $4(a0), d1
002846: 202f0030     move.l     $30(a7), d0
00284a: 206f0030     movea.l    $30(a7), a0
00284e: 20680004     movea.l    $4(a0), a0
002852: 2050         movea.l    (a0), a0
002854: 24280030     move.l     $30(a0), d2
002858: 206f0030     movea.l    $30(a7), a0
00285c: 20680004     movea.l    $4(a0), a0
002860: 2050         movea.l    (a0), a0
002862: 34302810     move.w     $10(a0, d2.l), d2
002866: 48c2         ext.l      d2
002868: 206f0030     movea.l    $30(a7), a0
00286c: 20680004     movea.l    $4(a0), a0
002870: 2050         movea.l    (a0), a0
002872: 4eb02800     jsr        (a0, d2.l)
002876: 4fef0014     lea.l      $14(a7), a7
00287a: 2f400018     move.l     d0, $18(a7)
00287e: 6c00000e     bge.w      $288e
002882: 202f0018     move.l     $18(a7), d0
002886: 4fef001c     lea.l      $1c(a7), a7
00288a: 60000042     bra.w      $28ce
00288e: 202f0008     move.l     $8(a7), d0
002892: 028007ffffff andi.l     #$7ffffff, d0
002898: 5280         addq.l     #$1, d0
00289a: 02aff80000000008 andi.l     #$f8000000, $8(a7)
0028a2: 028007ffffff andi.l     #$7ffffff, d0
0028a8: 81af0008     or.l       d0, $8(a7)
0028ac: 4a93         tst.l      (a3)
0028ae: 6e00ff58     bgt.w      $2808
0028b2: 508b         addq.l     #$8, a3
0028b4: 206f0014     movea.l    $14(a7), a0
0028b8: 2010         move.l     (a0), d0
0028ba: 5390         subq.l     #$1, (a0)
0028bc: 4a80         tst.l      d0
0028be: 6600ff44     bne.w      $2804
0028c2: 7000         moveq      #$0, d0
0028c4: 4fef001c     lea.l      $1c(a7), a7
0028c8: 60000004     bra.w      $28ce
0028cc: 4e71         nop        
0028ce: 4ced1d14ffe8 movem.l    -$18(a5), d2/d4/a0/a2-a4
0028d4: 4e5d         unlk       a5
0028d6: 4e75         rts        
0028d8: 4e550000     link.w     a5, #$0
0028dc: 48e7e8b8     movem.l    d0-d2/d4/a0/a2-a4, -(a7)
0028e0: 2441         movea.l    d1, a2
0028e2: 4fefffec     lea.l      -$14(a7), a7
0028e6: 4a6a002a     tst.w      $2a(a2)
0028ea: 6700000c     beq.w      $28f8
0028ee: 70e1         moveq      #$e1, d0
0028f0: 4fef0014     lea.l      $14(a7), a7
0028f4: 600000d0     bra.w      $29c6
0028f8: 206f0040     movea.l    $40(a7), a0
0028fc: 2f680020000c move.l     $20(a0), $c(a7)
002902: 206f000c     movea.l    $c(a7), a0
002906: 28680010     movea.l    $10(a0), a4
00290a: 700c         moveq      #$c, d0
00290c: d0af000c     add.l      $c(a7), d0
002910: 2640         movea.l    d0, a3
002912: 2e94         move.l     (a4), (a7)
002914: 206f000c     movea.l    $c(a7), a0
002918: 58a80010     addq.l     #$4, $10(a0)
00291c: 206f000c     movea.l    $c(a7), a0
002920: 59a8000c     subq.l     #$4, $c(a0)
002924: 0217003f     andi.b     #$3f, (a7)
002928: 00170080     ori.b      #$80, (a7)
00292c: 08970005     bclr.b     #$5, (a7)
002930: 1f6c00020003 move.b     $2(a4), $3(a7)
002936: 1f6a00120002 move.b     $12(a2), $2(a7)
00293c: 60000076     bra.w      $29b4
002940: 2013         move.l     (a3), d0
002942: b0aa000e     cmp.l      $e(a2), d0
002946: 6e000006     bgt.w      $294e
00294a: 08d70005     bset.b     #$5, (a7)
00294e: 48780004     pea.l      $4.w
002952: 486f0004     pea.l      $4(a7)
002956: 4853         pea.l      (a3)
002958: 2f2f004c     move.l     $4c(a7), -(a7)
00295c: 2f2f004c     move.l     $4c(a7), -(a7)
002960: 206f0028     movea.l    $28(a7), a0
002964: 20680004     movea.l    $4(a0), a0
002968: 22280004     move.l     $4(a0), d1
00296c: 202f0028     move.l     $28(a7), d0
002970: 206f0028     movea.l    $28(a7), a0
002974: 20680004     movea.l    $4(a0), a0
002978: 2050         movea.l    (a0), a0
00297a: 24280030     move.l     $30(a0), d2
00297e: 206f0028     movea.l    $28(a7), a0
002982: 20680004     movea.l    $4(a0), a0
002986: 2050         movea.l    (a0), a0
002988: 34302810     move.w     $10(a0, d2.l), d2
00298c: 48c2         ext.l      d2
00298e: 206f0028     movea.l    $28(a7), a0
002992: 20680004     movea.l    $4(a0), a0
002996: 2050         movea.l    (a0), a0
002998: 4eb02800     jsr        (a0, d2.l)
00299c: 4fef0014     lea.l      $14(a7), a7
0029a0: 2f400010     move.l     d0, $10(a7)
0029a4: 6c00000e     bge.w      $29b4
0029a8: 202f0010     move.l     $10(a7), d0
0029ac: 4fef0014     lea.l      $14(a7), a7
0029b0: 60000014     bra.w      $29c6
0029b4: 4a93         tst.l      (a3)
0029b6: 6e00ff88     bgt.w      $2940
0029ba: 7000         moveq      #$0, d0
0029bc: 4fef0014     lea.l      $14(a7), a7
0029c0: 60000004     bra.w      $29c6
0029c4: 4e71         nop        
0029c6: 4ced1d14ffe8 movem.l    -$18(a5), d2/d4/a0/a2-a4
0029cc: 4e5d         unlk       a5
0029ce: 4e75         rts        
0029d0: 4e550000     link.w     a5, #$0
0029d4: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0029d8: 518f         subq.l     #$8, a7
0029da: 206f0020     movea.l    $20(a7), a0
0029de: 30680006     movea.w    $6(a0), a0
0029e2: 2008         move.l     a0, d0
0029e4: 6100083a     bsr.w      $3220
0029e8: 2f400004     move.l     d0, $4(a7)
0029ec: 60000068     bra.w      $2a56
0029f0: 206f000c     movea.l    $c(a7), a0
0029f4: 226f0008     movea.l    $8(a7), a1
0029f8: 3290         move.w     (a0), (a1)
0029fa: 202f0004     move.l     $4(a7), d0
0029fe: 610008a8     bsr.w      $32a8
002a02: 202f000c     move.l     $c(a7), d0
002a06: 61000bca     bsr.w      $35d2
002a0a: 206f0020     movea.l    $20(a7), a0
002a0e: 30680006     movea.w    $6(a0), a0
002a12: 2f08         move.l     a0, -(a7)
002a14: 206f0024     movea.l    $24(a7), a0
002a18: 2f10         move.l     (a0), -(a7)
002a1a: 222f0010     move.l     $10(a7), d1
002a1e: 202f0014     move.l     $14(a7), d0
002a22: 61000258     bsr.w      $2c7c
002a26: 508f         addq.l     #$8, a7
002a28: 2e80         move.l     d0, (a7)
002a2a: 6c00001c     bge.w      $2a48
002a2e: 206f0008     movea.l    $8(a7), a0
002a32: 30bcfffe     move.w     #$fffe, (a0)
002a36: 206f0020     movea.l    $20(a7), a0
002a3a: 08e800000005 bset.b     #$0, $5(a0)
002a40: 2017         move.l     (a7), d0
002a42: 508f         addq.l     #$8, a7
002a44: 60000038     bra.w      $2a7e
002a48: 206f0020     movea.l    $20(a7), a0
002a4c: 30680006     movea.w    $6(a0), a0
002a50: 2008         move.l     a0, d0
002a52: 610007cc     bsr.w      $3220
002a56: 206f0008     movea.l    $8(a7), a0
002a5a: 1028000a     move.b     $a(a0), d0
002a5e: ee08         lsr.b      #$7, d0
002a60: 7200         moveq      #$0, d1
002a62: 1200         move.b     d0, d1
002a64: 0c410001     cmpi.w     #$1, d1
002a68: 6700ff86     beq.w      $29f0
002a6c: 202f0004     move.l     $4(a7), d0
002a70: 61000836     bsr.w      $32a8
002a74: 7000         moveq      #$0, d0
002a76: 508f         addq.l     #$8, a7
002a78: 60000004     bra.w      $2a7e
002a7c: 4e71         nop        
002a7e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002a84: 4e5d         unlk       a5
002a86: 4e75         rts        
002a88: 4e550000     link.w     a5, #$0
002a8c: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002a90: 2440         movea.l    d0, a2
002a92: 4fefffe4     lea.l      -$1c(a7), a7
002a96: 206f0034     movea.l    $34(a7), a0
002a9a: 2f680020000c move.l     $20(a0), $c(a7)
002aa0: 206a0004     movea.l    $4(a2), a0
002aa4: 20680004     movea.l    $4(a0), a0
002aa8: 2f68002a0018 move.l     $2a(a0), $18(a7)
002aae: 4a2a0003     tst.b      $3(a2)
002ab2: 660000ca     bne.w      $2b7e
002ab6: 4a2a002e     tst.b      $2e(a2)
002aba: 670000c2     beq.w      $2b7e
002abe: 4a6a0074     tst.w      $74(a2)
002ac2: 660000ba     bne.w      $2b7e
002ac6: 4a6a0086     tst.w      $86(a2)
002aca: 660000b2     bne.w      $2b7e
002ace: 7056         moveq      #$56, d0
002ad0: d08a         add.l      a2, d0
002ad2: 206f0034     movea.l    $34(a7), a0
002ad6: 21400020     move.l     d0, $20(a0)
002ada: 257c000000010056 move.l     #$1, $56(a2)
002ae2: 257c00000008005a move.l     #$8, $5a(a2)
002aea: 41d7         lea.l      (a7), a0
002aec: 2548005e     move.l     a0, $5e(a2)
002af0: 7032         moveq      #$32, d0
002af2: d08a         add.l      a2, d0
002af4: 25400066     move.l     d0, $66(a2)
002af8: 257c000000100062 move.l     #$10, $62(a2)
002b00: 257c00060000003a move.l     #$60000, $3a(a2)
002b08: 256a002e003e move.l     $2e(a2), $3e(a2)
002b0e: 2f2f0034     move.l     $34(a7), -(a7)
002b12: 2f2f0024     move.l     $24(a7), -(a7)
002b16: 222f0020     move.l     $20(a7), d1
002b1a: 200a         move.l     a2, d0
002b1c: 6100f91e     bsr.w      $243c
002b20: 508f         addq.l     #$8, a7
002b22: 2f400014     move.l     d0, $14(a7)
002b26: 6c00000c     bge.w      $2b34
002b2a: 2f6f00140008 move.l     $14(a7), $8(a7)
002b30: 60000048     bra.w      $2b7a
002b34: 202f0020     move.l     $20(a7), d0
002b38: 61000a98     bsr.w      $35d2
002b3c: 206f0034     movea.l    $34(a7), a0
002b40: 216f00140020 move.l     $14(a7), $20(a0)
002b46: 2f2f0034     move.l     $34(a7), -(a7)
002b4a: 2f2f0024     move.l     $24(a7), -(a7)
002b4e: 222f0020     move.l     $20(a7), d1
002b52: 200a         move.l     a2, d0
002b54: 6100f7ba     bsr.w      $2310
002b58: 508f         addq.l     #$8, a7
002b5a: 2f400008     move.l     d0, $8(a7)
002b5e: 6d00001a     blt.w      $2b7a
002b62: 4aaf0004     tst.l      $4(a7)
002b66: 6c00000a     bge.w      $2b72
002b6a: 2017         move.l     (a7), d0
002b6c: 4480         neg.l      d0
002b6e: 60000006     bra.w      $2b76
002b72: 202f0004     move.l     $4(a7), d0
002b76: 2f400008     move.l     d0, $8(a7)
002b7a: 60000006     bra.w      $2b82
002b7e: 42af0008     clr.l      $8(a7)
002b82: 206f0034     movea.l    $34(a7), a0
002b86: 216f000c0020 move.l     $c(a7), $20(a0)
002b8c: 202f0008     move.l     $8(a7), d0
002b90: 4fef001c     lea.l      $1c(a7), a7
002b94: 60000004     bra.w      $2b9a
002b98: 4e71         nop        
002b9a: 4ced0500fff8 movem.l    -$8(a5), a0/a2
002ba0: 4e5d         unlk       a5
002ba2: 4e75         rts        
002ba4: 4e550000     link.w     a5, #$0
002ba8: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
002bac: 60000042     bra.w      $2bf0
002bb0: 206f0004     movea.l    $4(a7), a0
002bb4: 30680006     movea.w    $6(a0), a0
002bb8: 2008         move.l     a0, d0
002bba: 61000916     bsr.w      $34d2
002bbe: 721f         moveq      #$1f, d1
002bc0: 2017         move.l     (a7), d0
002bc2: 61000dac     bsr.w      $3970
002bc6: 4a80         tst.l      d0
002bc8: 6600000e     bne.w      $2bd8
002bcc: 2057         movea.l    (a7), a0
002bce: 08280000001d btst.b     #$0, $1d(a0)
002bd4: 6700001a     beq.w      $2bf0
002bd8: 206f0004     movea.l    $4(a7), a0
002bdc: 2068002a     movea.l    $2a(a0), a0
002be0: 08e800020005 bset.b     #$2, $5(a0)
002be6: 203cffffff1c move.l     #$ffffff1c, d0
002bec: 60000040     bra.w      $2c2e
002bf0: 206f0004     movea.l    $4(a7), a0
002bf4: 4a680006     tst.w      $6(a0)
002bf8: 67000018     beq.w      $2c12
002bfc: 2057         movea.l    (a7), a0
002bfe: 7000         moveq      #$0, d0
002c00: 3010         move.w     (a0), d0
002c02: 206f0004     movea.l    $4(a7), a0
002c06: 32280006     move.w     $6(a0), d1
002c0a: 48c1         ext.l      d1
002c0c: b081         cmp.l      d1, d0
002c0e: 6600ffa0     bne.w      $2bb0
002c12: 2057         movea.l    (a7), a0
002c14: 226f0004     movea.l    $4(a7), a1
002c18: 33500006     move.w     (a0), $6(a1)
002c1c: 2057         movea.l    (a7), a0
002c1e: 226f0004     movea.l    $4(a7), a1
002c22: 33500004     move.w     (a0), $4(a1)
002c26: 7000         moveq      #$0, d0
002c28: 60000004     bra.w      $2c2e
002c2c: 4e71         nop        
002c2e: 4ced0300fff8 movem.l    -$8(a5), a0-a1
002c34: 4e5d         unlk       a5
002c36: 4e75         rts        
002c38: 4e550000     link.w     a5, #$0
002c3c: 48e7c080     movem.l    d0-d1/a0, -(a7)
002c40: 2057         movea.l    (a7), a0
002c42: 7000         moveq      #$0, d0
002c44: 3010         move.w     (a0), d0
002c46: 206f0004     movea.l    $4(a7), a0
002c4a: 32280006     move.w     $6(a0), d1
002c4e: 48c1         ext.l      d1
002c50: b081         cmp.l      d1, d0
002c52: 66000014     bne.w      $2c68
002c56: 206f0004     movea.l    $4(a7), a0
002c5a: 42680006     clr.w      $6(a0)
002c5e: 7000         moveq      #$0, d0
002c60: 60000010     bra.w      $2c72
002c64: 6000000c     bra.w      $2c72
002c68: 203cffffff20 move.l     #$ffffff20, d0
002c6e: 60000002     bra.w      $2c72
002c72: 4ced0100fffc movem.l    -$4(a5), a0
002c78: 4e5d         unlk       a5
002c7a: 4e75         rts        
002c7c: 4e550000     link.w     a5, #$0
002c80: 48e7c080     movem.l    d0-d1/a0, -(a7)
002c84: 4feffff4     lea.l      -$c(a7), a7
002c88: 4aaf0020     tst.l      $20(a7)
002c8c: 67000010     beq.w      $2c9e
002c90: 202f0020     move.l     $20(a7), d0
002c94: 5a80         addq.l     #$5, d0
002c96: 2f400008     move.l     d0, $8(a7)
002c9a: 60000006     bra.w      $2ca2
002c9e: 42af0008     clr.l      $8(a7)
002ca2: 202f0008     move.l     $8(a7), d0
002ca6: 610007c4     bsr.w      $346c
002caa: 2f400008     move.l     d0, $8(a7)
002cae: 202f0024     move.l     $24(a7), d0
002cb2: 6100056c     bsr.w      $3220
002cb6: 2f400004     move.l     d0, $4(a7)
002cba: 721f         moveq      #$1f, d1
002cbc: 202f000c     move.l     $c(a7), d0
002cc0: 61000cae     bsr.w      $3970
002cc4: 4a80         tst.l      d0
002cc6: 67000018     beq.w      $2ce0
002cca: 202f0004     move.l     $4(a7), d0
002cce: 610005d8     bsr.w      $32a8
002cd2: 203cffffff1c move.l     #$ffffff1c, d0
002cd8: 4fef000c     lea.l      $c(a7), a7
002cdc: 600000a0     bra.w      $2d7e
002ce0: 206f000c     movea.l    $c(a7), a0
002ce4: 08280000001d btst.b     #$0, $1d(a0)
002cea: 67000018     beq.w      $2d04
002cee: 202f0004     move.l     $4(a7), d0
002cf2: 610005b4     bsr.w      $32a8
002cf6: 203cffffff1c move.l     #$ffffff1c, d0
002cfc: 4fef000c     lea.l      $c(a7), a7
002d00: 6000007c     bra.w      $2d7e
002d04: 206f0010     movea.l    $10(a7), a0
002d08: 4a50         tst.w      (a0)
002d0a: 66000014     bne.w      $2d20
002d0e: 202f0004     move.l     $4(a7), d0
002d12: 61000594     bsr.w      $32a8
002d16: 7000         moveq      #$0, d0
002d18: 4fef000c     lea.l      $c(a7), a7
002d1c: 60000060     bra.w      $2d7e
002d20: 206f0010     movea.l    $10(a7), a0
002d24: 0c50fffe     cmpi.w     #$fffe, (a0)
002d28: 66000018     bne.w      $2d42
002d2c: 202f0004     move.l     $4(a7), d0
002d30: 61000576     bsr.w      $32a8
002d34: 203cffffff1c move.l     #$ffffff1c, d0
002d3a: 4fef000c     lea.l      $c(a7), a7
002d3e: 6000003e     bra.w      $2d7e
002d42: 4aaf0008     tst.l      $8(a7)
002d46: 6e000026     bgt.w      $2d6e
002d4a: 4aaf0020     tst.l      $20(a7)
002d4e: 6700001e     beq.w      $2d6e
002d52: 206f0010     movea.l    $10(a7), a0
002d56: 4250         clr.w      (a0)
002d58: 202f0004     move.l     $4(a7), d0
002d5c: 6100054a     bsr.w      $32a8
002d60: 203cfffffeef move.l     #$fffffeef, d0
002d66: 4fef000c     lea.l      $c(a7), a7
002d6a: 60000012     bra.w      $2d7e
002d6e: 202f0004     move.l     $4(a7), d0
002d72: 61000534     bsr.w      $32a8
002d76: 6000ff2a     bra.w      $2ca2
002d7a: 4fef000c     lea.l      $c(a7), a7
002d7e: 4ced0100fffc movem.l    -$4(a5), a0
002d84: 4e5d         unlk       a5
002d86: 4e75         rts        
002d88: 4e550000     link.w     a5, #$0
002d8c: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
002d90: 2440         movea.l    d0, a2
002d92: 2641         movea.l    d1, a3
002d94: 4feffff6     lea.l      -$a(a7), a7
002d98: 41fa0187     lea.l      $2f21(pc), a0
002d9c: 2208         move.l     a0, d1
002d9e: 200a         move.l     a2, d0
002da0: 61000a50     bsr.w      $37f2
002da4: 61000c16     bsr.w      $39bc
002da8: 4a80         tst.l      d0
002daa: 660000fe     bne.w      $2eaa
002dae: 2f6b00080004 move.l     $8(a3), $4(a7)
002db4: 426f0008     clr.w      $8(a7)
002db8: 60000028     bra.w      $2de2
002dbc: 302f0008     move.w     $8(a7), d0
002dc0: 48c0         ext.l      d0
002dc2: e388         lsl.l      #$1, d0
002dc4: 206f0004     movea.l    $4(a7), a0
002dc8: 30300812     move.w     $12(a0, d0.l), d0
002dcc: 48c0         ext.l      d0
002dce: 7200         moveq      #$0, d1
002dd0: 322a0002     move.w     $2(a2), d1
002dd4: b081         cmp.l      d1, d0
002dd6: 66000006     bne.w      $2dde
002dda: 60000016     bra.w      $2df2
002dde: 526f0008     addq.w     #$1, $8(a7)
002de2: 206f0004     movea.l    $4(a7), a0
002de6: 302f0008     move.w     $8(a7), d0
002dea: b0680010     cmp.w      $10(a0), d0
002dee: 6d00ffcc     blt.w      $2dbc
002df2: 206f0004     movea.l    $4(a7), a0
002df6: 302f0008     move.w     $8(a7), d0
002dfa: b0680010     cmp.w      $10(a0), d0
002dfe: 6d000062     blt.w      $2e62
002e02: 206f0004     movea.l    $4(a7), a0
002e06: 3f6800100008 move.w     $10(a0), $8(a7)
002e0c: 60000034     bra.w      $2e42
002e10: 7000         moveq      #$0, d0
002e12: 3012         move.w     (a2), d0
002e14: 2200         move.l     d0, d1
002e16: 302f0008     move.w     $8(a7), d0
002e1a: 48c0         ext.l      d0
002e1c: e588         lsl.l      #$2, d0
002e1e: 206f0004     movea.l    $4(a7), a0
002e22: 2070082a     movea.l    $2a(a0, d0.l), a0
002e26: 20280026     move.l     $26(a0), d0
002e2a: 6100009a     bsr.w      $2ec6
002e2e: 2e80         move.l     d0, (a7)
002e30: 67000010     beq.w      $2e42
002e34: 1eaf0009     move.b     $9(a7), (a7)
002e38: 2017         move.l     (a7), d0
002e3a: 4fef000a     lea.l      $a(a7), a7
002e3e: 6000007c     bra.w      $2ebc
002e42: 302f0008     move.w     $8(a7), d0
002e46: 536f0008     subq.w     #$1, $8(a7)
002e4a: 4a40         tst.w      d0
002e4c: 6600ffc2     bne.w      $2e10
002e50: 7000         moveq      #$0, d0
002e52: 302a0002     move.w     $2(a2), d0
002e56: 4fef000a     lea.l      $a(a7), a7
002e5a: 60000060     bra.w      $2ebc
002e5e: 60000046     bra.w      $2ea6
002e62: 7000         moveq      #$0, d0
002e64: 3012         move.w     (a2), d0
002e66: 2200         move.l     d0, d1
002e68: 302f0008     move.w     $8(a7), d0
002e6c: 48c0         ext.l      d0
002e6e: e588         lsl.l      #$2, d0
002e70: 206f0004     movea.l    $4(a7), a0
002e74: 2070082a     movea.l    $2a(a0, d0.l), a0
002e78: 20280026     move.l     $26(a0), d0
002e7c: 61000048     bsr.w      $2ec6
002e80: 2e80         move.l     d0, (a7)
002e82: 67000014     beq.w      $2e98
002e86: 1eaf0009     move.b     $9(a7), (a7)
002e8a: 2017         move.l     (a7), d0
002e8c: 4fef000a     lea.l      $a(a7), a7
002e90: 6000002a     bra.w      $2ebc
002e94: 60000010     bra.w      $2ea6
002e98: 7000         moveq      #$0, d0
002e9a: 302a0002     move.w     $2(a2), d0
002e9e: 4fef000a     lea.l      $a(a7), a7
002ea2: 60000018     bra.w      $2ebc
002ea6: 60000010     bra.w      $2eb8
002eaa: 7000         moveq      #$0, d0
002eac: 302a0002     move.w     $2(a2), d0
002eb0: 4fef000a     lea.l      $a(a7), a7
002eb4: 60000006     bra.w      $2ebc
002eb8: 4fef000a     lea.l      $a(a7), a7
002ebc: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
002ec2: 4e5d         unlk       a5
002ec4: 4e75         rts        
002ec6: 4e550000     link.w     a5, #$0
002eca: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
002ece: 2440         movea.l    d0, a2
002ed0: 2801         move.l     d1, d4
002ed2: 6000001c     bra.w      $2ef0
002ed6: 7000         moveq      #$0, d0
002ed8: 302a000e     move.w     $e(a2), d0
002edc: 3204         move.w     d4, d1
002ede: 48c1         ext.l      d1
002ee0: b081         cmp.l      d1, d0
002ee2: 6600000a     bne.w      $2eee
002ee6: 202a0008     move.l     $8(a2), d0
002eea: 60000012     bra.w      $2efe
002eee: 2452         movea.l    (a2), a2
002ef0: 200a         move.l     a2, d0
002ef2: 6600ffe2     bne.w      $2ed6
002ef6: 7000         moveq      #$0, d0
002ef8: 60000004     bra.w      $2efe
002efc: 4e71         nop        
002efe: 4ced0410fff8 movem.l    -$8(a5), d4/a2
002f04: 4e5d         unlk       a5
002f06: 4e75         rts        
002f08: 40282329     negx.b     $2329(a0)
002f0c: 6361         bls.b      $2f6f
002f0e: 726d         moveq      #$6d, d1
002f10: 6772         beq.b      $2f84
002f12: 2e63         movea.l    -(a3), a7
002f14: 09392e312036 btst.l     d4, $2e312036.l
002f1a: 2f32322f     move.l     $2f(a2, d3.w), -(a7)
002f1e: 39350073     move.w     $73(a5, d0.w), -(a4)
002f22: 6572         bcs.b      $2f96
002f24: 7665         moveq      #$65, d3
002f26: 7200         moveq      #$0, d1
002f28: 4e550000     link.w     a5, #$0
002f2c: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
002f30: 518f         subq.l     #$8, a7
002f32: 203c00000646 move.l     #$646, d0
002f38: 61000396     bsr.w      $32d0
002f3c: 2440         movea.l    d0, a2
002f3e: 4a80         tst.l      d0
002f40: 673e         beq.b      $2f80
002f42: 7800         moveq      #$0, d4
002f44: 6006         bra.b      $2f4c
002f46: 42324800     clr.b      (a2, d4.l)
002f4a: 5284         addq.l     #$1, d4
002f4c: 0c8400000646 cmpi.l     #$646, d4
002f52: 6df2         blt.b      $2f46
002f54: 42af0004     clr.l      $4(a7)
002f58: 206f0008     movea.l    $8(a7), a0
002f5c: 2ea80002     move.l     $2(a0), (a7)
002f60: 6606         bne.b      $2f68
002f62: 206f0008     movea.l    $8(a7), a0
002f66: 6030         bra.b      $2f98
002f68: 52af0004     addq.l     #$1, $4(a7)
002f6c: 6020         bra.b      $2f8e
002f6e: 2057         movea.l    (a7), a0
002f70: 2ea80002     move.l     $2(a0), (a7)
002f74: 52af0004     addq.l     #$1, $4(a7)
002f78: 7003         moveq      #$3, d0
002f7a: b0af0004     cmp.l      $4(a7), d0
002f7e: 6c0e         bge.b      $2f8e
002f80: 206f000c     movea.l    $c(a7), a0
002f84: 20bc00000114 move.l     #$114, (a0)
002f8a: 7000         moveq      #$0, d0
002f8c: 6048         bra.b      $2fd6
002f8e: 2057         movea.l    (a7), a0
002f90: 4aa80002     tst.l      $2(a0)
002f94: 66d8         bne.b      $2f6e
002f96: 2057         movea.l    (a7), a0
002f98: 214a0002     move.l     a2, $2(a0)
002f9c: 2e8a         move.l     a2, (a7)
002f9e: 203c0000057e move.l     #$57e, d0
002fa4: d097         add.l      (a7), d0
002fa6: 2640         movea.l    d0, a3
002fa8: 202f0004     move.l     $4(a7), d0
002fac: 7264         moveq      #$64, d1
002fae: 61000aee     bsr.w      $3a9e
002fb2: 2800         move.l     d0, d4
002fb4: 6004         bra.b      $2fba
002fb6: 36c4         move.w     d4, (a3)+
002fb8: 5284         addq.l     #$1, d4
002fba: 202f0004     move.l     $4(a7), d0
002fbe: 5280         addq.l     #$1, d0
002fc0: 7264         moveq      #$64, d1
002fc2: 61000ada     bsr.w      $3a9e
002fc6: b084         cmp.l      d4, d0
002fc8: 6eec         bgt.b      $2fb6
002fca: 2057         movea.l    (a7), a0
002fcc: 42a80002     clr.l      $2(a0)
002fd0: 2057         movea.l    (a7), a0
002fd2: 4250         clr.w      (a0)
002fd4: 2017         move.l     (a7), d0
002fd6: 508f         addq.l     #$8, a7
002fd8: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
002fde: 4e5d         unlk       a5
002fe0: 4e75         rts        
002fe2: 4e550000     link.w     a5, #$0
002fe6: 48e78080     movem.l    d0/a0, -(a7)
002fea: 518f         subq.l     #$8, a7
002fec: 4297         clr.l      (a7)
002fee: 42af0004     clr.l      $4(a7)
002ff2: 6028         bra.b      $301c
002ff4: 202f0008     move.l     $8(a7), d0
002ff8: 6148         bsr.b      $3042
002ffa: 2e80         move.l     d0, (a7)
002ffc: 6d32         blt.b      $3030
002ffe: 206f0008     movea.l    $8(a7), a0
003002: 2f6800020008 move.l     $2(a0), $8(a7)
003008: 52af0004     addq.l     #$1, $4(a7)
00300c: 7003         moveq      #$3, d0
00300e: b0af0004     cmp.l      $4(a7), d0
003012: 6c08         bge.b      $301c
003014: 203cfffffeec move.l     #$fffffeec, d0
00301a: 601a         bra.b      $3036
00301c: 206f0008     movea.l    $8(a7), a0
003020: 4aa80002     tst.l      $2(a0)
003024: 66ce         bne.b      $2ff4
003026: 202f0008     move.l     $8(a7), d0
00302a: 6116         bsr.b      $3042
00302c: 2e80         move.l     d0, (a7)
00302e: 6c04         bge.b      $3034
003030: 2017         move.l     (a7), d0
003032: 6002         bra.b      $3036
003034: 7000         moveq      #$0, d0
003036: 508f         addq.l     #$8, a7
003038: 4ced0100fffc movem.l    -$4(a5), a0
00303e: 4e5d         unlk       a5
003040: 4e75         rts        
003042: 4e550000     link.w     a5, #$0
003046: 48e78ea0     movem.l    d0/d4-d6/a0/a2, -(a7)
00304a: 2440         movea.l    d0, a2
00304c: 3052         movea.w    (a2), a0
00304e: 2808         move.l     a0, d4
003050: 6034         bra.b      $3086
003052: 2004         move.l     d4, d0
003054: e388         lsl.l      #$1, d0
003056: 41f20800     lea.l      (a2, d0.l), a0
00305a: 3c28057e     move.w     $57e(a0), d6
00305e: 2004         move.l     d4, d0
003060: 5280         addq.l     #$1, d0
003062: 2a00         move.l     d0, d5
003064: 6018         bra.b      $307e
003066: 2005         move.l     d5, d0
003068: e388         lsl.l      #$1, d0
00306a: 41f20800     lea.l      (a2, d0.l), a0
00306e: bc68057e     cmp.w      $57e(a0), d6
003072: 6608         bne.b      $307c
003074: 203cfffffeeb move.l     #$fffffeeb, d0
00307a: 6012         bra.b      $308e
00307c: 5285         addq.l     #$1, d5
00307e: 7064         moveq      #$64, d0
003080: b085         cmp.l      d5, d0
003082: 6ee2         bgt.b      $3066
003084: 5284         addq.l     #$1, d4
003086: 7064         moveq      #$64, d0
003088: b084         cmp.l      d4, d0
00308a: 6ec6         bgt.b      $3052
00308c: 7000         moveq      #$0, d0
00308e: 4ced0570ffec movem.l    -$14(a5), d4-d6/a0/a2
003094: 4e5d         unlk       a5
003096: 4e75         rts        
003098: 4e550000     link.w     a5, #$0
00309c: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0030a0: 2440         movea.l    d0, a2
0030a2: 598f         subq.l     #$4, a7
0030a4: 6020         bra.b      $30c6
0030a6: 246a0002     movea.l    $2(a2), a2
0030aa: 200a         move.l     a2, d0
0030ac: 6618         bne.b      $30c6
0030ae: 41d7         lea.l      (a7), a0
0030b0: 2208         move.l     a0, d1
0030b2: 610007da     bsr.w      $388e
0030b6: 6100fe70     bsr.w      $2f28
0030ba: 2440         movea.l    d0, a2
0030bc: 4a80         tst.l      d0
0030be: 660c         bne.b      $30cc
0030c0: 2017         move.l     (a7), d0
0030c2: 4480         neg.l      d0
0030c4: 6018         bra.b      $30de
0030c6: 0c520064     cmpi.w     #$64, (a2)
0030ca: 67da         beq.b      $30a6
0030cc: 3012         move.w     (a2), d0
0030ce: 5252         addq.w     #$1, (a2)
0030d0: 48c0         ext.l      d0
0030d2: e388         lsl.l      #$1, d0
0030d4: 41f20800     lea.l      (a2, d0.l), a0
0030d8: 3028057e     move.w     $57e(a0), d0
0030dc: 48c0         ext.l      d0
0030de: 588f         addq.l     #$4, a7
0030e0: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
0030e6: 4e5d         unlk       a5
0030e8: 4e75         rts        
0030ea: 4e550000     link.w     a5, #$0
0030ee: 48e7cca0     movem.l    d0-d1/d4-d5/a0/a2, -(a7)
0030f2: 2440         movea.l    d0, a2
0030f4: 7064         moveq      #$64, d0
0030f6: b0af0004     cmp.l      $4(a7), d0
0030fa: 6e18         bgt.b      $3114
0030fc: 7800         moveq      #$0, d4
0030fe: 6006         bra.b      $3106
003100: 246a0002     movea.l    $2(a2), a2
003104: 5284         addq.l     #$1, d4
003106: 202f0004     move.l     $4(a7), d0
00310a: 7264         moveq      #$64, d1
00310c: 610009c8     bsr.w      $3ad6
003110: b084         cmp.l      d4, d0
003112: 6eec         bgt.b      $3100
003114: 5352         subq.w     #$1, (a2)
003116: 3012         move.w     (a2), d0
003118: 48c0         ext.l      d0
00311a: e388         lsl.l      #$1, d0
00311c: 41f20800     lea.l      (a2, d0.l), a0
003120: 316f0006057e move.w     $6(a7), $57e(a0)
003126: 202f0004     move.l     $4(a7), d0
00312a: 7264         moveq      #$64, d1
00312c: 610009d2     bsr.w      $3b00
003130: 2a00         move.l     d0, d5
003132: 2005         move.l     d5, d0
003134: 720e         moveq      #$e, d1
003136: 61000966     bsr.w      $3a9e
00313a: 42720806     clr.w      $6(a2, d0.l)
00313e: 2005         move.l     d5, d0
003140: 720e         moveq      #$e, d1
003142: 6100095a     bsr.w      $3a9e
003146: 42b20808     clr.l      $8(a2, d0.l)
00314a: 2005         move.l     d5, d0
00314c: 720e         moveq      #$e, d1
00314e: 6100094e     bsr.w      $3a9e
003152: 42b2080c     clr.l      $c(a2, d0.l)
003156: 2005         move.l     d5, d0
003158: 720e         moveq      #$e, d1
00315a: 61000942     bsr.w      $3a9e
00315e: 42320810     clr.b      $10(a2, d0.l)
003162: 202f0004     move.l     $4(a7), d0
003166: 4ced0530fff0 movem.l    -$10(a5), d4-d5/a0/a2
00316c: 4e5d         unlk       a5
00316e: 4e75         rts        
003170: 4e550000     link.w     a5, #$0
003174: 48e7c880     movem.l    d0-d1/d4/a0, -(a7)
003178: 7064         moveq      #$64, d0
00317a: b0af0004     cmp.l      $4(a7), d0
00317e: 6e1a         bgt.b      $319a
003180: 7800         moveq      #$0, d4
003182: 6008         bra.b      $318c
003184: 2057         movea.l    (a7), a0
003186: 2ea80002     move.l     $2(a0), (a7)
00318a: 5284         addq.l     #$1, d4
00318c: 202f0004     move.l     $4(a7), d0
003190: 7264         moveq      #$64, d1
003192: 61000942     bsr.w      $3ad6
003196: b084         cmp.l      d4, d0
003198: 6eea         bgt.b      $3184
00319a: 202f0004     move.l     $4(a7), d0
00319e: 7264         moveq      #$64, d1
0031a0: 6100095e     bsr.w      $3b00
0031a4: 720e         moveq      #$e, d1
0031a6: 610008f6     bsr.w      $3a9e
0031aa: 2217         move.l     (a7), d1
0031ac: 5c81         addq.l     #$6, d1
0031ae: d081         add.l      d1, d0
0031b0: 4ced0110fff8 movem.l    -$8(a5), d4/a0
0031b6: 4e5d         unlk       a5
0031b8: 4e75         rts        
0031ba: 4e550000     link.w     a5, #$0
0031be: 48e7c080     movem.l    d0-d1/a0, -(a7)
0031c2: 518f         subq.l     #$8, a7
0031c4: 206f0008     movea.l    $8(a7), a0
0031c8: 2f6800020004 move.l     $2(a0), $4(a7)
0031ce: 6622         bne.b      $31f2
0031d0: 203cfffffeec move.l     #$fffffeec, d0
0031d6: 603c         bra.b      $3214
0031d8: 2eaf0004     move.l     $4(a7), (a7)
0031dc: 206f0004     movea.l    $4(a7), a0
0031e0: 2f6800020004 move.l     $2(a0), $4(a7)
0031e6: 2217         move.l     (a7), d1
0031e8: 203c00000646 move.l     #$646, d0
0031ee: 61000174     bsr.w      $3364
0031f2: 206f0004     movea.l    $4(a7), a0
0031f6: 4aa80002     tst.l      $2(a0)
0031fa: 66dc         bne.b      $31d8
0031fc: 222f0004     move.l     $4(a7), d1
003200: 203c00000646 move.l     #$646, d0
003206: 6100015c     bsr.w      $3364
00320a: 206f0008     movea.l    $8(a7), a0
00320e: 42a80002     clr.l      $2(a0)
003212: 7000         moveq      #$0, d0
003214: 508f         addq.l     #$8, a7
003216: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00321c: 4e5d         unlk       a5
00321e: 4e75         rts        
003220: 40c1         move.w     sr, d1
003222: 48e74000     movem.l    d1, -(a7)
003226: 007c0700     ori.w      #$700, sr
00322a: e148         lsl.w      #$8, d0
00322c: c27cf8ff     and.w      #$f8ff, d1
003230: 8240         or.w       d0, d1
003232: 46c1         move.w     d1, sr
003234: 4cdf0002     movem.l    (a7)+, d1
003238: 2001         move.l     d1, d0
00323a: 4e75         rts        
00323c: 4280         clr.l      d0
00323e: 40c0         move.w     sr, d0
003240: 007c0700     ori.w      #$700, sr
003244: 027cf8ff     andi.w     #$f8ff, sr
003248: 4e75         rts        
00324a: 4280         clr.l      d0
00324c: 40c0         move.w     sr, d0
00324e: 007c0700     ori.w      #$700, sr
003252: 027cf9ff     andi.w     #$f9ff, sr
003256: 4e75         rts        
003258: 4280         clr.l      d0
00325a: 40c0         move.w     sr, d0
00325c: 007c0700     ori.w      #$700, sr
003260: 027cfaff     andi.w     #$faff, sr
003264: 4e75         rts        
003266: 4280         clr.l      d0
003268: 40c0         move.w     sr, d0
00326a: 007c0700     ori.w      #$700, sr
00326e: 027cfbff     andi.w     #$fbff, sr
003272: 4e75         rts        
003274: 4280         clr.l      d0
003276: 40c0         move.w     sr, d0
003278: 007c0700     ori.w      #$700, sr
00327c: 027cfcff     andi.w     #$fcff, sr
003280: 4e75         rts        
003282: 4280         clr.l      d0
003284: 40c0         move.w     sr, d0
003286: 007c0700     ori.w      #$700, sr
00328a: 027cfdff     andi.w     #$fdff, sr
00328e: 4e75         rts        
003290: 4280         clr.l      d0
003292: 40c0         move.w     sr, d0
003294: 007c0700     ori.w      #$700, sr
003298: 027cfeff     andi.w     #$feff, sr
00329c: 4e75         rts        
00329e: 4280         clr.l      d0
0032a0: 40c0         move.w     sr, d0
0032a2: 007c0700     ori.w      #$700, sr
0032a6: 4e75         rts        
0032a8: 2f01         move.l     d1, -(a7)
0032aa: 2200         move.l     d0, d1
0032ac: 40c0         move.w     sr, d0
0032ae: 46c1         move.w     d1, sr
0032b0: 221f         move.l     (a7)+, d1
0032b2: 4e75         rts        
0032b4: 4280         clr.l      d0
0032b6: 3001         move.w     d1, d0
0032b8: 4480         neg.l      d0
0032ba: 4e75         rts        
0032bc: 650a         bcs.b      $32c8
0032be: 4280         clr.l      d0
0032c0: 4cdf0106     movem.l    (a7)+, d1-d2/a0
0032c4: 4e75         rts        
0032c6: 64f8         bcc.b      $32c0
0032c8: 4280         clr.l      d0
0032ca: 3001         move.w     d1, d0
0032cc: 4480         neg.l      d0
0032ce: 60f0         bra.b      $32c0
0032d0: 2f0a         move.l     a2, -(a7)
0032d2: 4e40         trap       #$0
0032d4: 00286506200a ori.b      #$6, $200a(a0)
0032da: 245f         movea.l    (a7)+, a2
0032dc: 4e75         rts        
0032de: 245f         movea.l    (a7)+, a2
0032e0: 60d2         bra.b      $32b4
0032e2: 48e70020     movem.l    a2, -(a7)
0032e6: 2440         movea.l    d0, a2
0032e8: 4e40         trap       #$0
0032ea: 00026506     ori.b      #$6, d2
0032ee: 4cdf0400     movem.l    (a7)+, a2
0032f2: 4e75         rts        
0032f4: 4cdf0400     movem.l    (a7)+, a2
0032f8: 60ba         bra.b      $32b4
0032fa: 48e74020     movem.l    d1/a2, -(a7)
0032fe: 2041         movea.l    d1, a0
003300: 4e40         trap       #$0
003302: 001d650a     ori.b      #$a, (a5)+
003306: 4281         clr.l      d1
003308: 4280         clr.l      d0
00330a: 4cdf0402     movem.l    (a7)+, d1/a2
00330e: 4e75         rts        
003310: 223cffffffff move.l     #$ffffffff, d1
003316: 203cffffffff move.l     #$ffffffff, d0
00331c: 4cdf0402     movem.l    (a7)+, d1/a2
003320: 4e75         rts        
003322: 48e700e0     movem.l    a0-a2, -(a7)
003326: 2041         movea.l    d1, a0
003328: 4e40         trap       #$0
00332a: 00006508     ori.b      #$8, d0
00332e: 200a         move.l     a2, d0
003330: 4cdf0700     movem.l    (a7)+, a0-a2
003334: 4e75         rts        
003336: 4281         clr.l      d1
003338: 4cdf0700     movem.l    (a7)+, a0-a2
00333c: 6000ff76     bra.w      $32b4
003340: 48e760e0     movem.l    d1-d2/a0-a2, -(a7)
003344: 242f0018     move.l     $18(a7), d2
003348: 206f001c     movea.l    $1c(a7), a0
00334c: 4e40         trap       #$0
00334e: 00256508     ori.b      #$8, -(a5)
003352: 200a         move.l     a2, d0
003354: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
003358: 4e75         rts        
00335a: 4280         clr.l      d0
00335c: 2001         move.l     d1, d0
00335e: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
003362: 4e75         rts        
003364: 48e76080     movem.l    d1-d2/a0, -(a7)
003368: 2f0a         move.l     a2, -(a7)
00336a: 2441         movea.l    d1, a2
00336c: 4e40         trap       #$0
00336e: 0029245f6000 ori.b      #$5f, $6000(a1)
003374: ff48         dc.w       $ff48
003376: 48e76080     movem.l    d1-d2/a0, -(a7)
00337a: 2040         movea.l    d0, a0
00337c: 2001         move.l     d1, d0
00337e: 2f0a         move.l     a2, -(a7)
003380: 4e40         trap       #$0
003382: 0080204a245f ori.l      #$204a245f, d0
003388: 6500ff3e     bcs.w      $32c8
00338c: 2008         move.l     a0, d0
00338e: 6000ff36     bra.w      $32c6
003392: 48e76080     movem.l    d1-d2/a0, -(a7)
003396: 204a         movea.l    a2, a0
003398: 2440         movea.l    d0, a2
00339a: 4e40         trap       #$0
00339c: 008124486000 ori.l      #$24486000, d1
0033a2: ff1a         dc.w       $ff1a
0033a4: 48e74080     movem.l    d1/a0, -(a7)
0033a8: 2040         movea.l    d0, a0
0033aa: 2001         move.l     d1, d0
0033ac: 4e40         trap       #$0
0033ae: 008465064cdf ori.l      #$65064cdf, d4
0033b4: 0102         btst.l     d0, d2
0033b6: 4e75         rts        
0033b8: 4280         clr.l      d0
0033ba: 3001         move.w     d1, d0
0033bc: 4480         neg.l      d0
0033be: 4cdf0102     movem.l    (a7)+, d1/a0
0033c2: 4e75         rts        
0033c4: 48e74080     movem.l    d1/a0, -(a7)
0033c8: 2041         movea.l    d1, a0
0033ca: 222f000c     move.l     $c(a7), d1
0033ce: 4e40         trap       #$0
0033d0: 008a         .dc.w      $008a
0033d2: 65e4         bcs.b      $33b8
0033d4: 2001         move.l     d1, d0
0033d6: 4cdf0102     movem.l    (a7)+, d1/a0
0033da: 4e75         rts        
0033dc: 4280         clr.l      d0
0033de: 3001         move.w     d1, d0
0033e0: 4480         neg.l      d0
0033e2: 4cdf0102     movem.l    (a7)+, d1/a0
0033e6: 4e75         rts        
0033e8: 2f01         move.l     d1, -(a7)
0033ea: 4e40         trap       #$0
0033ec: 008f         .dc.w      $008f
0033ee: 6504         bcs.b      $33f4
0033f0: 221f         move.l     (a7)+, d1
0033f2: 4e75         rts        
0033f4: 4280         clr.l      d0
0033f6: 3001         move.w     d1, d0
0033f8: 4480         neg.l      d0
0033fa: 221f         move.l     (a7)+, d1
0033fc: 4e75         rts        
0033fe: 48e74000     movem.l    d1, -(a7)
003402: 206f0008     movea.l    $8(a7), a0
003406: 4e40         trap       #$0
003408: 008e         .dc.w      $008e
00340a: 6508         bcs.b      $3414
00340c: 2001         move.l     d1, d0
00340e: 4cdf0002     movem.l    (a7)+, d1
003412: 4e75         rts        
003414: 4280         clr.l      d0
003416: 3001         move.w     d1, d0
003418: 4480         neg.l      d0
00341a: 4cdf0002     movem.l    (a7)+, d1
00341e: 4e75         rts        
003420: 48e74000     movem.l    d1, -(a7)
003424: 206f0008     movea.l    $8(a7), a0
003428: 4e40         trap       #$0
00342a: 008d         .dc.w      $008d
00342c: 65e6         bcs.b      $3414
00342e: 2001         move.l     d1, d0
003430: 4cdf0002     movem.l    (a7)+, d1
003434: 4e75         rts        
003436: 48e74040     movem.l    d1/a1, -(a7)
00343a: 2240         movea.l    d0, a1
00343c: 4e40         trap       #$0
00343e: 003265084280 ori.b      #$8, -$80(a2, d4.w)
003444: 4cdf0202     movem.l    (a7)+, d1/a1
003448: 4e75         rts        
00344a: 4280         clr.l      d0
00344c: 3001         move.w     d1, d0
00344e: 4480         neg.l      d0
003450: 60f2         bra.b      $3444
003452: 48e76080     movem.l    d1-d2/a0, -(a7)
003456: 4e40         trap       #$0
003458: 0008         .dc.w      $0008
00345a: 6000fe60     bra.w      $32bc
00345e: 48e76080     movem.l    d1-d2/a0, -(a7)
003462: 4280         clr.l      d0
003464: 4e40         trap       #$0
003466: 000a         .dc.w      $000a
003468: 6000fe52     bra.w      $32bc
00346c: 48e76080     movem.l    d1-d2/a0, -(a7)
003470: 4e40         trap       #$0
003472: 000a         .dc.w      $000a
003474: 6000fe50     bra.w      $32c6
003478: 48e77080     movem.l    d1-d3/a0, -(a7)
00347c: 7003         moveq      #$3, d0
00347e: 4e40         trap       #$0
003480: 0015650a     ori.b      #$a, (a5)
003484: 4280         clr.l      d0
003486: 3003         move.w     d3, d0
003488: 4cdf010e     movem.l    (a7)+, d1-d3/a0
00348c: 4e75         rts        
00348e: 4280         clr.l      d0
003490: 3001         move.w     d1, d0
003492: 4480         neg.l      d0
003494: 60f2         bra.b      $3488
003496: 48e77080     movem.l    d1-d3/a0, -(a7)
00349a: 7000         moveq      #$0, d0
00349c: 4e40         trap       #$0
00349e: 001565ec     ori.b      #$ec, (a5)
0034a2: 3002         move.w     d2, d0
0034a4: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0034a8: 4e75         rts        
0034aa: 48e77080     movem.l    d1-d3/a0, -(a7)
0034ae: 7000         moveq      #$0, d0
0034b0: 4e40         trap       #$0
0034b2: 001565d8     ori.b      #$d8, (a5)
0034b6: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0034ba: 4e75         rts        
0034bc: 48e77080     movem.l    d1-d3/a0, -(a7)
0034c0: 7000         moveq      #$0, d0
0034c2: 4e40         trap       #$0
0034c4: 001565c6     ori.b      #$c6, (a5)
0034c8: 4280         clr.l      d0
0034ca: 2001         move.l     d1, d0
0034cc: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0034d0: 4e75         rts        
0034d2: 48e76080     movem.l    d1-d2/a0, -(a7)
0034d6: 4e40         trap       #$0
0034d8: 002b6000fde0 ori.b      #$0, -$220(a3)
0034de: 48e760f0     movem.l    d1-d2/a0-a3, -(a7)
0034e2: 206f001c     movea.l    $1c(a7), a0
0034e6: 246f0020     movea.l    $20(a7), a2
0034ea: 266f0024     movea.l    $24(a7), a3
0034ee: 4e40         trap       #$0
0034f0: 002a65084280 ori.b      #$8, $4280(a2)
0034f6: 4cdf0f06     movem.l    (a7)+, d1-d2/a0-a3
0034fa: 4e75         rts        
0034fc: 4280         clr.l      d0
0034fe: 3001         move.w     d1, d0
003500: 4480         neg.l      d0
003502: 60f2         bra.b      $34f6
003504: 48e760e0     movem.l    d1-d2/a0-a2, -(a7)
003508: 2041         movea.l    d1, a0
00350a: 2400         move.l     d0, d2
00350c: 246f0018     movea.l    $18(a7), a2
003510: 4e40         trap       #$0
003512: 003865084280 ori.b      #$8, $4280.w
003518: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
00351c: 4e75         rts        
00351e: 4280         clr.l      d0
003520: 3001         move.w     d1, d0
003522: 4480         neg.l      d0
003524: 60f2         bra.b      $3518
003526: 200e         move.l     a6, d0
003528: 4e75         rts        
00352a: 48e70080     movem.l    a0, -(a7)
00352e: 207900000000 movea.l    $0.l, a0
003534: 41e803e4     lea.l      $3e4(a0), a0
003538: e588         lsl.l      #$2, d0
00353a: 20700800     movea.l    (a0, d0.l), a0
00353e: 20280008     move.l     $8(a0), d0
003542: 4cdf0100     movem.l    (a7)+, a0
003546: 4e75         rts        
003548: 202e003c     move.l     $3c(a6), d0
00354c: 4e75         rts        
00354e: 202e0040     move.l     $40(a6), d0
003552: 4e75         rts        
003554: 48e70080     movem.l    a0, -(a7)
003558: 207900000000 movea.l    $0.l, a0
00355e: 20280044     move.l     $44(a0), d0
003562: 4cdf0100     movem.l    (a7)+, a0
003566: 4e75         rts        
003568: 2f09         move.l     a1, -(a7)
00356a: 6140         bsr.b      $35ac
00356c: 43e90148     lea.l      $148(a1), a1
003570: 2009         move.l     a1, d0
003572: 225f         movea.l    (a7)+, a1
003574: 4e75         rts        
003576: 48e7c080     movem.l    d0-d1/a0, -(a7)
00357a: 2040         movea.l    d0, a0
00357c: 303c0001     move.w     #$1, d0
003580: 223c00000050 move.l     #$50, d1
003586: 4e40         trap       #$0
003588: 008c         .dc.w      $008c
00358a: 4cdf0103     movem.l    (a7)+, d0-d1/a0
00358e: 4e75         rts        
003590: 48e740c0     movem.l    d1/a0-a1, -(a7)
003594: 2040         movea.l    d0, a0
003596: 2241         movea.l    d1, a1
003598: 222f0010     move.l     $10(a7), d1
00359c: 4a81         tst.l      d1
00359e: 6706         beq.b      $35a6
0035a0: 12d8         move.b     (a0)+, (a1)+
0035a2: 5381         subq.l     #$1, d1
0035a4: 62fa         bhi.b      $35a0
0035a6: 4cdf0302     movem.l    (a7)+, d1/a0-a1
0035aa: 4e75         rts        
0035ac: 206e0044     movea.l    $44(a6), a0
0035b0: b050         cmp.w      (a0), d0
0035b2: 6214         bhi.b      $35c8
0035b4: e540         asl.w      #$2, d0
0035b6: 6710         beq.b      $35c8
0035b8: d0c0         adda.w     d0, a0
0035ba: e448         lsr.w      #$2, d0
0035bc: 670a         beq.b      $35c8
0035be: 2250         movea.l    (a0), a1
0035c0: 4a90         tst.l      (a0)
0035c2: 6704         beq.b      $35c8
0035c4: b051         cmp.w      (a1), d0
0035c6: 6708         beq.b      $35d0
0035c8: 323c00e0     move.w     #$e0, d1
0035cc: 003c0001     ori.b      #$1, ccr
0035d0: 4e75         rts        
0035d2: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
0035d6: 2440         movea.l    d0, a2
0035d8: 302a02d6     move.w     $2d6(a2), d0
0035dc: 6710         beq.b      $35ee
0035de: 426a02d6     clr.w      $2d6(a2)
0035e2: 7201         moveq      #$1, d1
0035e4: 4e40         trap       #$0
0035e6: 0008         .dc.w      $0008
0035e8: 61c2         bsr.b      $35ac
0035ea: 426902d4     clr.w      $2d4(a1)
0035ee: 4cdf0703     movem.l    (a7)+, d0-d1/a0-a2
0035f2: 4e75         rts        
0035f4: 000600a0     ori.b      #$a0, d6
0035f8: 0003018a     ori.b      #$8a, d3
0035fc: ffff         dc.w       $ffff
0035fe: 48e740e0     movem.l    d1/a0-a2, -(a7)
003602: 6100028a     bsr.w      $388e
003606: 2240         movea.l    d0, a1
003608: 207900000000 movea.l    $0.l, a0
00360e: 206803a4     movea.l    $3a4(a0), a0
003612: 24680018     movea.l    $18(a0), a2
003616: 234a0006     move.l     a2, $6(a1)
00361a: 2468000c     movea.l    $c(a0), a2
00361e: 234a000a     move.l     a2, $a(a1)
003622: 43faffd0     lea.l      $35f4(pc), a1
003626: 4e40         trap       #$0
003628: 0032203c0000 ori.b      #$3c, (a2, d0.w)
00362e: 00004cdf     ori.b      #$df, d0
003632: 0702         btst.l     d3, d2
003634: 4e75         rts        
003636: 4e75         rts        
003638: 4e75         rts        
00363a: 48e740e0     movem.l    d1/a0-a2, -(a7)
00363e: 207900000000 movea.l    $0.l, a0
003644: 206803a4     movea.l    $3a4(a0), a0
003648: 41e80018     lea.l      $18(a0), a0
00364c: 61000240     bsr.w      $388e
003650: 2240         movea.l    d0, a1
003652: 20a90006     move.l     $6(a1), (a0)
003656: 207900000000 movea.l    $0.l, a0
00365c: 206803a8     movea.l    $3a8(a0), a0
003660: 41e80018     lea.l      $18(a0), a0
003664: 20a90006     move.l     $6(a1), (a0)
003668: 207900000000 movea.l    $0.l, a0
00366e: 206803a4     movea.l    $3a4(a0), a0
003672: 41e8000c     lea.l      $c(a0), a0
003676: 61000216     bsr.w      $388e
00367a: 2240         movea.l    d0, a1
00367c: 20a9000a     move.l     $a(a1), (a0)
003680: 207900000000 movea.l    $0.l, a0
003686: 206803a8     movea.l    $3a8(a0), a0
00368a: 41e8000c     lea.l      $c(a0), a0
00368e: 20a9000a     move.l     $a(a1), (a0)
003692: 4cdf0702     movem.l    (a7)+, d1/a0-a2
003696: 4e75         rts        
003698: 2f01         move.l     d1, -(a7)
00369a: 206e0044     movea.l    $44(a6), a0
00369e: 302c0002     move.w     $2(a4), d0
0036a2: 6742         beq.b      $36e6
0036a4: 4e40         trap       #$0
0036a6: 002f4a6c0022 ori.b      #$6c, $22(a7)
0036ac: 6738         beq.b      $36e6
0036ae: 6144         bsr.b      $36f4
0036b0: 0c6c00010022 cmpi.w     #$1, $22(a4)
0036b6: 660a         bne.b      $36c2
0036b8: 0c2900770020 cmpi.b     #$77, $20(a1)
0036be: 6726         beq.b      $36e6
0036c0: 6008         bra.b      $36ca
0036c2: 0c6c00020022 cmpi.w     #$2, $22(a4)
0036c8: 661c         bne.b      $36e6
0036ca: 204c         movea.l    a4, a0
0036cc: 0c6dffff0006 cmpi.w     #$ffff, $6(a5)
0036d2: 660e         bne.b      $36e2
0036d4: 3b7c00000006 move.w     #$0, $6(a5)
0036da: 221f         move.l     (a7)+, d1
0036dc: 4281         clr.l      d1
0036de: 2f01         move.l     d1, -(a7)
0036e0: 6004         bra.b      $36e6
0036e2: 610000dc     bsr.w      $37c0
0036e6: 610001a6     bsr.w      $388e
0036ea: 221f         move.l     (a7)+, d1
0036ec: 2440         movea.l    d0, a2
0036ee: 246a0006     movea.l    $6(a2), a2
0036f2: 4e92         jsr        (a2)
0036f4: 48e780e0     movem.l    d0/a0-a2, -(a7)
0036f8: 20690008     movea.l    $8(a1), a0
0036fc: 45fa0048     lea.l      $3746(pc), a2
003700: 200a         move.l     a2, d0
003702: b0a80042     cmp.l      $42(a0), d0
003706: 6738         beq.b      $3740
003708: 0c2900770020 cmpi.b     #$77, $20(a1)
00370e: 6730         beq.b      $3740
003710: 0cae000109a003c8 cmpi.l     #$109a0, $3c8(a6)
003718: 6606         bne.b      $3720
00371a: 41e8ffba     lea.l      -$46(a0), a0
00371e: 600a         bra.b      $372a
003720: 41e8ffb8     lea.l      -$48(a0), a0
003724: 317c00000046 move.w     #$0, $46(a0)
00372a: 23480008     move.l     a0, $8(a1)
00372e: 214a0042     move.l     a2, $42(a0)
003732: 317c20000040 move.w     #$2000, $40(a0)
003738: 21490020     move.l     a1, $20(a0)
00373c: 214e0038     move.l     a6, $38(a0)
003740: 4cdf0701     movem.l    (a7)+, d0/a0-a2
003744: 4e75         rts        
003746: 45e80002     lea.l      $2(a0), a2
00374a: 30280006     move.w     $6(a0), d0
00374e: 4a40         tst.w      d0
003750: 672c         beq.b      $377e
003752: 6100fe58     bsr.w      $35ac
003756: 30290004     move.w     $4(a1), d0
00375a: 08290000001c btst.b     #$0, $1c(a1)
003760: 6718         beq.b      $377a
003762: 356900040004 move.w     $4(a1), $4(a2)
003768: 3f00         move.w     d0, -(a7)
00376a: 30290000     move.w     $0(a1), d0
00376e: 206e0044     movea.l    $44(a6), a0
003772: 4e40         trap       #$0
003774: 0031301f60d4 ori.b      #$1f, -$2c(a1, d6.w)
00377a: 2449         movea.l    a1, a2
00377c: 60d0         bra.b      $374e
00377e: 4cdf7fff     movem.l    (a7)+, d0-d7/a0-a6
003782: 588f         addq.l     #$4, a7
003784: 4e73         rte        
003786: 3f03         move.w     d3, -(a7)
003788: 0243003f     andi.w     #$3f, d3
00378c: 3b43000e     move.w     d3, $e(a5)
003790: 2f00         move.l     d0, -(a7)
003792: 610000fa     bsr.w      $388e
003796: 2440         movea.l    d0, a2
003798: 201f         move.l     (a7)+, d0
00379a: 246a000a     movea.l    $a(a2), a2
00379e: 4e92         jsr        (a2)
0037a0: 6516         bcs.b      $37b8
0037a2: 4283         clr.l      d3
0037a4: 361f         move.w     (a7)+, d3
0037a6: 302d0002     move.w     $2(a5), d0
0037aa: 6100fe00     bsr.w      $35ac
0037ae: ec4b         lsr.w      #$6, d3
0037b0: e04b         lsr.w      #$8, d3
0037b2: 33430022     move.w     d3, $22(a1)
0037b6: 4e75         rts        
0037b8: 361f         move.w     (a7)+, d3
0037ba: 003c0001     ori.b      #$1, ccr
0037be: 4e75         rts        
0037c0: 48e7e000     movem.l    d0-d2, -(a7)
0037c4: 4aa90028     tst.l      $28(a1)
0037c8: 670e         beq.b      $37d8
0037ca: 342c0000     move.w     $0(a4), d2
0037ce: 323c8000     move.w     #$8000, d1
0037d2: d242         add.w      d2, d1
0037d4: 4e40         trap       #$0
0037d6: 0008         .dc.w      $0008
0037d8: 4cdf0007     movem.l    (a7)+, d0-d2
0037dc: 4e75         rts        
0037de: 48e76080     movem.l    d1-d2/a0, -(a7)
0037e2: 2040         movea.l    d0, a0
0037e4: 4e40         trap       #$0
0037e6: 001a6500     ori.b      #$0, (a2)+
0037ea: fade20016000 fbf.l      $200197ec
0037f0: fad048e700e0 fbf.l      $48e738d2
0037f6: 2440         movea.l    d0, a2
0037f8: 206e0044     movea.l    $44(a6), a0
0037fc: 302a0002     move.w     $2(a2), d0
003800: 6716         beq.b      $3818
003802: 4e40         trap       #$0
003804: 002f65102469 ori.b      #$10, $2469(a7)
00380a: 0038d5ea000c ori.b      #$ea, $c.w
003810: 200a         move.l     a2, d0
003812: 4cdf0700     movem.l    (a7)+, a0-a2
003816: 4e75         rts        
003818: 203c00000000 move.l     #$0, d0
00381e: 4cdf0700     movem.l    (a7)+, a0-a2
003822: 4e75         rts        
003824: 48e74080     movem.l    d1/a0, -(a7)
003828: 206f000c     movea.l    $c(a7), a0
00382c: 4e40         trap       #$0
00382e: 00176508     ori.b      #$8, (a7)
003832: 2001         move.l     d1, d0
003834: 4cdf0102     movem.l    (a7)+, d1/a0
003838: 4e75         rts        
00383a: 4280         clr.l      d0
00383c: 2001         move.l     d1, d0
00383e: 4480         neg.l      d0
003840: 4cdf0102     movem.l    (a7)+, d1/a0
003844: 4e75         rts        
003846: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
00384a: 242f001c     move.l     $1c(a7), d2
00384e: 262f0020     move.l     $20(a7), d3
003852: 282f0024     move.l     $24(a7), d4
003856: 206f0028     movea.l    $28(a7), a0
00385a: 226f002c     movea.l    $2c(a7), a1
00385e: 4e40         trap       #$0
003860: 00036506     ori.b      #$6, d3
003864: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
003868: 4e75         rts        
00386a: 3001         move.w     d1, d0
00386c: 4440         neg.w      d0
00386e: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
003872: 4e75         rts        
003874: 48e70080     movem.l    a0, -(a7)
003878: 2041         movea.l    d1, a0
00387a: 80fc0064     divu.w     #$64, d0
00387e: 1080         move.b     d0, (a0)
003880: e088         lsr.l      #$8, d0
003882: e088         lsr.l      #$8, d0
003884: 11400001     move.b     d0, $1(a0)
003888: 4cdf0100     movem.l    (a7)+, a0
00388c: 4e75         rts        
00388e: 2f08         move.l     a0, -(a7)
003890: 207900000000 movea.l    $0.l, a0
003896: 41e80814     lea.l      $814(a0), a0
00389a: 2010         move.l     (a0), d0
00389c: 205f         movea.l    (a7)+, a0
00389e: 4e75         rts        
0038a0: 2f08         move.l     a0, -(a7)
0038a2: 207900000000 movea.l    $0.l, a0
0038a8: 41e80814     lea.l      $814(a0), a0
0038ac: 2008         move.l     a0, d0
0038ae: 205f         movea.l    (a7)+, a0
0038b0: 4e75         rts        
0038b2: 4e550000     link.w     a5, #$0
0038b6: 48e780b0     movem.l    d0/a0/a2-a3, -(a7)
0038ba: 2440         movea.l    d0, a2
0038bc: 203c00000168 move.l     #$168, d0
0038c2: d08a         add.l      a2, d0
0038c4: 2640         movea.l    d0, a3
0038c6: 60000028     bra.w      $38f0
0038ca: 4a53         tst.w      (a3)
0038cc: 67000008     beq.w      $38d6
0038d0: 200b         move.l     a3, d0
0038d2: 6000002a     bra.w      $38fe
0038d6: 203c000001a6 move.l     #$1a6, d0
0038dc: d08a         add.l      a2, d0
0038de: b08b         cmp.l      a3, d0
0038e0: 6300000a     bls.w      $38ec
0038e4: 41eb0002     lea.l      $2(a3), a0
0038e8: 60000004     bra.w      $38ee
0038ec: 91c8         suba.l     a0, a0
0038ee: 2648         movea.l    a0, a3
0038f0: 200b         move.l     a3, d0
0038f2: 6600ffd6     bne.w      $38ca
0038f6: 7000         moveq      #$0, d0
0038f8: 60000004     bra.w      $38fe
0038fc: 4e71         nop        
0038fe: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
003904: 4e5d         unlk       a5
003906: 4e75         rts        
003908: 4e550000     link.w     a5, #$0
00390c: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
003910: 2440         movea.l    d0, a2
003912: 2641         movea.l    d1, a3
003914: 203c000001a6 move.l     #$1a6, d0
00391a: d08a         add.l      a2, d0
00391c: b08b         cmp.l      a3, d0
00391e: 6300000a     bls.w      $392a
003922: 41eb0002     lea.l      $2(a3), a0
003926: 60000004     bra.w      $392c
00392a: 91c8         suba.l     a0, a0
00392c: 2648         movea.l    a0, a3
00392e: 60000028     bra.w      $3958
003932: 4a53         tst.w      (a3)
003934: 67000008     beq.w      $393e
003938: 200b         move.l     a3, d0
00393a: 6000002a     bra.w      $3966
00393e: 203c000001a6 move.l     #$1a6, d0
003944: d08a         add.l      a2, d0
003946: b08b         cmp.l      a3, d0
003948: 6300000a     bls.w      $3954
00394c: 41eb0002     lea.l      $2(a3), a0
003950: 60000004     bra.w      $3956
003954: 91c8         suba.l     a0, a0
003956: 2648         movea.l    a0, a3
003958: 200b         move.l     a3, d0
00395a: 6600ffd6     bne.w      $3932
00395e: 7000         moveq      #$0, d0
003960: 60000004     bra.w      $3966
003964: 4e71         nop        
003966: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
00396c: 4e5d         unlk       a5
00396e: 4e75         rts        
003970: 4e550000     link.w     a5, #$0
003974: 48e7cc30     movem.l    d0-d1/d4-d5/a2-a3, -(a7)
003978: 2440         movea.l    d0, a2
00397a: 282a0378     move.l     $378(a2), d4
00397e: 7a00         moveq      #$0, d5
003980: 266a037c     movea.l    $37c(a2), a3
003984: 6000001e     bra.w      $39a4
003988: 7000         moveq      #$0, d0
00398a: 302b000a     move.w     $a(a3), d0
00398e: b0af0004     cmp.l      $4(a7), d0
003992: 6e00000c     bgt.w      $39a0
003996: 7000         moveq      #$0, d0
003998: 302b000a     move.w     $a(a3), d0
00399c: 60000014     bra.w      $39b2
0039a0: 5285         addq.l     #$1, d5
0039a2: 2653         movea.l    (a3), a3
0039a4: ba84         cmp.l      d4, d5
0039a6: 6d00ffe0     blt.w      $3988
0039aa: 7000         moveq      #$0, d0
0039ac: 60000004     bra.w      $39b2
0039b0: 4e71         nop        
0039b2: 4ced0c30fff0 movem.l    -$10(a5), d4-d5/a2-a3
0039b8: 4e5d         unlk       a5
0039ba: 4e75         rts        
0039bc: 2f08         move.l     a0, -(a7)
0039be: 2040         movea.l    d0, a0
0039c0: b300         eor.b      d1, d0
0039c2: 08000000     btst.b     #$0, d0
0039c6: 6652         bne.b      $3a1a
0039c8: 08010000     btst.b     #$0, d1
0039cc: c389         exg.l      d1, a1
0039ce: 6718         beq.b      $39e8
0039d0: b109         cmpm.b     (a1)+, (a0)+
0039d2: 6530         bcs.b      $3a04
0039d4: 6220         bhi.b      $39f6
0039d6: 4a28ffff     tst.b      -$1(a0)
0039da: 660c         bne.b      $39e8
0039dc: 6034         bra.b      $3a12
0039de: 4a00         tst.b      d0
0039e0: 6730         beq.b      $3a12
0039e2: 0c4000ff     cmpi.w     #$ff, d0
0039e6: 632a         bls.b      $3a12
0039e8: 3018         move.w     (a0)+, d0
0039ea: b059         cmp.w      (a1)+, d0
0039ec: 67f0         beq.b      $39de
0039ee: 650e         bcs.b      $39fe
0039f0: 0c4000ff     cmpi.w     #$ff, d0
0039f4: 6316         bls.b      $3a0c
0039f6: 7001         moveq      #$1, d0
0039f8: 205f         movea.l    (a7)+, a0
0039fa: c389         exg.l      d1, a1
0039fc: 4e75         rts        
0039fe: 0c4000ff     cmpi.w     #$ff, d0
003a02: 6308         bls.b      $3a0c
003a04: 70ff         moveq      #$ff, d0
003a06: 205f         movea.l    (a7)+, a0
003a08: c389         exg.l      d1, a1
003a0a: 4e75         rts        
003a0c: 4a29fffe     tst.b      -$2(a1)
003a10: 66f2         bne.b      $3a04
003a12: 7000         moveq      #$0, d0
003a14: 205f         movea.l    (a7)+, a0
003a16: c389         exg.l      d1, a1
003a18: 4e75         rts        
003a1a: c389         exg.l      d1, a1
003a1c: 7000         moveq      #$0, d0
003a1e: 1018         move.b     (a0)+, d0
003a20: b019         cmp.b      (a1)+, d0
003a22: 56c8fffa     dbne       d0, $3a1e
003a26: 65dc         bcs.b      $3a04
003a28: 5240         addq.w     #$1, d0
003a2a: 205f         movea.l    (a7)+, a0
003a2c: c389         exg.l      d1, a1
003a2e: 4e75         rts        
003a30: 2f08         move.l     a0, -(a7)
003a32: 2040         movea.l    d0, a0
003a34: 4a18         tst.b      (a0)+
003a36: 670c         beq.b      $3a44
003a38: 4a18         tst.b      (a0)+
003a3a: 6708         beq.b      $3a44
003a3c: 4a18         tst.b      (a0)+
003a3e: 6704         beq.b      $3a44
003a40: 4a18         tst.b      (a0)+
003a42: 66f0         bne.b      $3a34
003a44: 91c0         suba.l     d0, a0
003a46: 2008         move.l     a0, d0
003a48: 5380         subq.l     #$1, d0
003a4a: 205f         movea.l    (a7)+, a0
003a4c: 4e75         rts        
003a4e: 2f08         move.l     a0, -(a7)
003a50: 2040         movea.l    d0, a0
003a52: c389         exg.l      d1, a1
003a54: 10d9         move.b     (a1)+, (a0)+
003a56: 670c         beq.b      $3a64
003a58: 10d9         move.b     (a1)+, (a0)+
003a5a: 6708         beq.b      $3a64
003a5c: 10d9         move.b     (a1)+, (a0)+
003a5e: 6704         beq.b      $3a64
003a60: 10d9         move.b     (a1)+, (a0)+
003a62: 66f0         bne.b      $3a54
003a64: 205f         movea.l    (a7)+, a0
003a66: c389         exg.l      d1, a1
003a68: 4e75         rts        
003a6a: 2f08         move.l     a0, -(a7)
003a6c: 2040         movea.l    d0, a0
003a6e: c389         exg.l      d1, a1
003a70: 4a18         tst.b      (a0)+
003a72: 670c         beq.b      $3a80
003a74: 4a18         tst.b      (a0)+
003a76: 6708         beq.b      $3a80
003a78: 4a18         tst.b      (a0)+
003a7a: 6704         beq.b      $3a80
003a7c: 4a18         tst.b      (a0)+
003a7e: 66f0         bne.b      $3a70
003a80: 1159ffff     move.b     (a1)+, -$1(a0)
003a84: 66ce         bne.b      $3a54
003a86: 60dc         bra.b      $3a64
003a88: 2f08         move.l     a0, -(a7)
003a8a: 2040         movea.l    d0, a0
003a8c: c389         exg.l      d1, a1
003a8e: 10d9         move.b     (a1)+, (a0)+
003a90: 6afc         bpl.b      $3a8e
003a92: 4210         clr.b      (a0)
003a94: 0220007f     andi.b     #$7f, -(a0)
003a98: 205f         movea.l    (a7)+, a0
003a9a: c389         exg.l      d1, a1
003a9c: 4e75         rts        
003a9e: 48e73800     movem.l    d2-d4, -(a7)
003aa2: 2400         move.l     d0, d2
003aa4: 2600         move.l     d0, d3
003aa6: 4843         swap       d3
003aa8: 2801         move.l     d1, d4
003aaa: 4844         swap       d4
003aac: c0c1         mulu.w     d1, d0
003aae: c2c3         mulu.w     d3, d1
003ab0: c4c4         mulu.w     d4, d2
003ab2: c6c4         mulu.w     d4, d3
003ab4: 4840         swap       d0
003ab6: d041         add.w      d1, d0
003ab8: 7800         moveq      #$0, d4
003aba: d784         addx.l     d4, d3
003abc: d042         add.w      d2, d0
003abe: d784         addx.l     d4, d3
003ac0: 4840         swap       d0
003ac2: 4241         clr.w      d1
003ac4: 4841         swap       d1
003ac6: 4242         clr.w      d2
003ac8: 4842         swap       d2
003aca: d282         add.l      d2, d1
003acc: d283         add.l      d3, d1
003ace: 4a80         tst.l      d0
003ad0: 4cdf001c     movem.l    (a7)+, d2-d4
003ad4: 4e75         rts        
003ad6: 2f02         move.l     d2, -(a7)
003ad8: 7400         moveq      #$0, d2
003ada: 4a80         tst.l      d0
003adc: 6a04         bpl.b      $3ae2
003ade: 4480         neg.l      d0
003ae0: 7403         moveq      #$3, d2
003ae2: 4a81         tst.l      d1
003ae4: 6a06         bpl.b      $3aec
003ae6: 4481         neg.l      d1
003ae8: 0a020001     eori.b     #$1, d2
003aec: 6122         bsr.b      $3b10
003aee: e20a         lsr.b      #$1, d2
003af0: 6402         bcc.b      $3af4
003af2: 4480         neg.l      d0
003af4: e20a         lsr.b      #$1, d2
003af6: 6402         bcc.b      $3afa
003af8: 4481         neg.l      d1
003afa: 241f         move.l     (a7)+, d2
003afc: 4a80         tst.l      d0
003afe: 4e75         rts        
003b00: 61d4         bsr.b      $3ad6
003b02: c141         exg.l      d0, d1
003b04: 4a80         tst.l      d0
003b06: 4e75         rts        
003b08: 6106         bsr.b      $3b10
003b0a: c141         exg.l      d0, d1
003b0c: 4a80         tst.l      d0
003b0e: 4e75         rts        
003b10: 48e73800     movem.l    d2-d4, -(a7)
003b14: 2401         move.l     d1, d2
003b16: 6606         bne.b      $3b1e
003b18: 81fc0000     divs.w     #$0, d0
003b1c: 606e         bra.b      $3b8c
003b1e: 5381         subq.l     #$1, d1
003b20: 676a         beq.b      $3b8c
003b22: 2801         move.l     d1, d4
003b24: 2200         move.l     d0, d1
003b26: b481         cmp.l      d1, d2
003b28: 650c         bcs.b      $3b36
003b2a: 6704         beq.b      $3b30
003b2c: 7000         moveq      #$0, d0
003b2e: 605c         bra.b      $3b8c
003b30: 7001         moveq      #$1, d0
003b32: 9282         sub.l      d2, d1
003b34: 6056         bra.b      $3b8c
003b36: 2602         move.l     d2, d3
003b38: 6bf6         bmi.b      $3b30
003b3a: c684         and.l      d4, d3
003b3c: 6612         bne.b      $3b50
003b3e: e28a         lsr.l      #$1, d2
003b40: 76ff         moveq      #$ff, d3
003b42: e28a         lsr.l      #$1, d2
003b44: 55cbfffc     dbcs       d3, $3b42
003b48: 4483         neg.l      d3
003b4a: e6a8         lsr.l      d3, d0
003b4c: c284         and.l      d4, d1
003b4e: 603c         bra.b      $3b8c
003b50: 7000         moveq      #$0, d0
003b52: 76ff         moveq      #$ff, d3
003b54: e382         asl.l      #$1, d2
003b56: 6a06         bpl.b      $3b5e
003b58: b481         cmp.l      d1, d2
003b5a: 620a         bhi.b      $3b66
003b5c: 600c         bra.b      $3b6a
003b5e: b481         cmp.l      d1, d2
003b60: 54cbfff2     dbcc       d3, $3b54
003b64: 6704         beq.b      $3b6a
003b66: 5283         addq.l     #$1, d3
003b68: e28a         lsr.l      #$1, d2
003b6a: 4483         neg.l      d3
003b6c: 6004         bra.b      $3b72
003b6e: e380         asl.l      #$1, d0
003b70: e28a         lsr.l      #$1, d2
003b72: 9282         sub.l      d2, d1
003b74: 6510         bcs.b      $3b86
003b76: 5280         addq.l     #$1, d0
003b78: 51cbfff4     dbra       d3, $3b6e
003b7c: 600e         bra.b      $3b8c
003b7e: e380         asl.l      #$1, d0
003b80: e28a         lsr.l      #$1, d2
003b82: d282         add.l      d2, d1
003b84: 65f0         bcs.b      $3b76
003b86: 51cbfff6     dbra       d3, $3b7e
003b8a: d282         add.l      d2, d1
003b8c: 4cdf001c     movem.l    (a7)+, d2-d4
003b90: 4a80         tst.l      d0
003b92: 4e75         rts        
003b94: 6361         bls.b      $3bf7
003b96: 726d         moveq      #$6d, d1
003b98: 6772         beq.b      $3c0c
003b9a: 00000006     ori.b      #$6, d0
003b9e: d0f1         adda.w     -$56(a1, a2.l), a0
