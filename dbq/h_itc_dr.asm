00003c: 00640080     ori.w      #$80, -(a4)
000040: 009600ac00c0 ori.l      #$ac00c0, (a6)
000046: 007201120310 ori.w      #$112, (a2, d0.w * 2)
00004c: 031c         btst.l     d1, (a4)+
00004e: 03280334     btst.l     d1, $334(a0)
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
000078: 610001e6     bsr.w      $260
00007c: 588f         addq.l     #$4, a7
00007e: 60d2         bra.b      $52
000080: 2f02         move.l     d2, -(a7)
000082: 2f00         move.l     d0, -(a7)
000084: 2f0d         move.l     a5, -(a7)
000086: 2f0c         move.l     a4, -(a7)
000088: 220a         move.l     a2, d1
00008a: 2009         move.l     a1, d0
00008c: 61000282     bsr.w      $310
000090: 4fef0010     lea.l      $10(a7), a7
000094: 60bc         bra.b      $52
000096: 2f02         move.l     d2, -(a7)
000098: 2f00         move.l     d0, -(a7)
00009a: 2f0d         move.l     a5, -(a7)
00009c: 2f0c         move.l     a4, -(a7)
00009e: 220a         move.l     a2, d1
0000a0: 2009         move.l     a1, d0
0000a2: 61000278     bsr.w      $31c
0000a6: 4fef0010     lea.l      $10(a7), a7
0000aa: 60a6         bra.b      $52
0000ac: 2f00         move.l     d0, -(a7)
0000ae: 2f0d         move.l     a5, -(a7)
0000b0: 2f0c         move.l     a4, -(a7)
0000b2: 220a         move.l     a2, d1
0000b4: 2009         move.l     a1, d0
0000b6: 61000270     bsr.w      $328
0000ba: 4fef000c     lea.l      $c(a7), a7
0000be: 6092         bra.b      $52
0000c0: 2f00         move.l     d0, -(a7)
0000c2: 2f0d         move.l     a5, -(a7)
0000c4: 2f0c         move.l     a4, -(a7)
0000c6: 220a         move.l     a2, d1
0000c8: 2009         move.l     a1, d0
0000ca: 61000268     bsr.w      $334
0000ce: 4fef000c     lea.l      $c(a7), a7
0000d2: 6000ff7e     bra.w      $52
0000d6: 2f0e         move.l     a6, -(a7)
0000d8: 220b         move.l     a3, d1
0000da: 200a         move.l     a2, d0
0000dc: 61000262     bsr.w      $340
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
0000fe: 610001fc     bsr.w      $2fc
000102: 0c80ffffffff cmpi.l     #$ffffffff, d0
000108: 67e6         beq.b      $f0
00010a: 588f         addq.l     #$4, a7
00010c: 023c         .dc.w      $023c
00010e: fffe         dc.w       $fffe
000110: 4e75         rts        
000112: 4e75         rts        
000114: 4e550000     link.w     a5, #$0
000118: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00011c: 2441         movea.l    d1, a2
00011e: 518f         subq.l     #$8, a7
000120: 42af0004     clr.l      $4(a7)
000124: 6000000e     bra.w      $134
000128: 202f0004     move.l     $4(a7), d0
00012c: 42b20c3e     clr.l      $3e(a2, d0.l)
000130: 52af0004     addq.l     #$1, $4(a7)
000134: 700a         moveq      #$a, d0
000136: b0af0004     cmp.l      $4(a7), d0
00013a: 6e00ffec     bgt.w      $128
00013e: 42af0004     clr.l      $4(a7)
000142: 6000000e     bra.w      $152
000146: 202f0004     move.l     $4(a7), d0
00014a: 42b20c66     clr.l      $66(a2, d0.l)
00014e: 52af0004     addq.l     #$1, $4(a7)
000152: 700a         moveq      #$a, d0
000154: b0af0004     cmp.l      $4(a7), d0
000158: 6e00ffec     bgt.w      $146
00015c: 206f0008     movea.l    $8(a7), a0
000160: 7000         moveq      #$0, d0
000162: 10280035     move.b     $35(a0), d0
000166: 2540002e     move.l     d0, $2e(a2)
00016a: 42aa0032     clr.l      $32(a2)
00016e: 42aa0036     clr.l      $36(a2)
000172: 206f0008     movea.l    $8(a7), a0
000176: 15680048008e move.b     $48(a0), $8e(a2)
00017c: 42aa009c     clr.l      $9c(a2)
000180: 206f0008     movea.l    $8(a7), a0
000184: 7000         moveq      #$0, d0
000186: 10280048     move.b     $48(a0), d0
00018a: e188         lsl.l      #$8, d0
00018c: 0680009f0000 addi.l     #$9f0000, d0
000192: 25400090     move.l     d0, $90(a2)
000196: 257c009ffd000094 move.l     #$9ffd00, $94(a2)
00019e: 257c009ffc0000a0 move.l     #$9ffc00, $a0(a2)
0001a6: 42aa0098     clr.l      $98(a2)
0001aa: 202a002e     move.l     $2e(a2), d0
0001ae: 610011bc     bsr.w      $136c
0001b2: 2800         move.l     d0, d4
0001b4: 206f0008     movea.l    $8(a7), a0
0001b8: 2f280030     move.l     $30(a0), -(a7)
0001bc: 4852         pea.l      (a2)
0001be: 487b0170ffffff16 pea.l      $ffffff16(a16, invalid.w)
0001c6: 206f0014     movea.l    $14(a7), a0
0001ca: 7000         moveq      #$0, d0
0001cc: 10280036     move.b     $36(a0), d0
0001d0: 2200         move.l     d0, d1
0001d2: 206f0014     movea.l    $14(a7), a0
0001d6: 7000         moveq      #$0, d0
0001d8: 10280034     move.b     $34(a0), d0
0001dc: 61000f38     bsr.w      $1116
0001e0: 4fef000c     lea.l      $c(a7), a7
0001e4: 2004         move.l     d4, d0
0001e6: 61001184     bsr.w      $136c
0001ea: 61000282     bsr.w      $46e
0001ee: 2e80         move.l     d0, (a7)
0001f0: 67000012     beq.w      $204
0001f4: 08ea00050035 bset.b     #$5, $35(a2)
0001fa: 2017         move.l     (a7), d0
0001fc: 4480         neg.l      d0
0001fe: 508f         addq.l     #$8, a7
000200: 60000054     bra.w      $256
000204: 48780001     pea.l      $1.w
000208: 7201         moveq      #$1, d1
00020a: 7006         moveq      #$6, d0
00020c: 61000710     bsr.w      $91e
000210: 588f         addq.l     #$4, a7
000212: 2e80         move.l     d0, (a7)
000214: 67000012     beq.w      $228
000218: 08ea00000035 bset.b     #$0, $35(a2)
00021e: 2017         move.l     (a7), d0
000220: 4480         neg.l      d0
000222: 508f         addq.l     #$8, a7
000224: 60000030     bra.w      $256
000228: 48780001     pea.l      $1.w
00022c: 7201         moveq      #$1, d1
00022e: 7007         moveq      #$7, d0
000230: 610006ec     bsr.w      $91e
000234: 588f         addq.l     #$4, a7
000236: 2e80         move.l     d0, (a7)
000238: 67000012     beq.w      $24c
00023c: 08ea00000035 bset.b     #$0, $35(a2)
000242: 2017         move.l     (a7), d0
000244: 4480         neg.l      d0
000246: 508f         addq.l     #$8, a7
000248: 6000000c     bra.w      $256
00024c: 7000         moveq      #$0, d0
00024e: 508f         addq.l     #$8, a7
000250: 60000004     bra.w      $256
000254: 4e71         nop        
000256: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00025c: 4e5d         unlk       a5
00025e: 4e75         rts        
000260: 4e550000     link.w     a5, #$0
000264: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000268: 2441         movea.l    d1, a2
00026a: 598f         subq.l     #$4, a7
00026c: 220a         move.l     a2, d1
00026e: 206f0004     movea.l    $4(a7), a0
000272: 7000         moveq      #$0, d0
000274: 10280034     move.b     $34(a0), d0
000278: 61000eb2     bsr.w      $112c
00027c: 4a80         tst.l      d0
00027e: 6700000a     beq.w      $28a
000282: 70ff         moveq      #$ff, d0
000284: 588f         addq.l     #$4, a7
000286: 6000006a     bra.w      $2f2
00028a: 4297         clr.l      (a7)
00028c: 60000018     bra.w      $2a6
000290: 2017         move.l     (a7), d0
000292: 4ab20c3e     tst.l      $3e(a2, d0.l)
000296: 6700000c     beq.w      $2a4
00029a: 2217         move.l     (a7), d1
00029c: 703e         moveq      #$3e, d0
00029e: d08a         add.l      a2, d0
0002a0: 61000b7a     bsr.w      $e1c
0002a4: 5297         addq.l     #$1, (a7)
0002a6: 700a         moveq      #$a, d0
0002a8: b097         cmp.l      (a7), d0
0002aa: 6e00ffe4     bgt.w      $290
0002ae: 4297         clr.l      (a7)
0002b0: 60000018     bra.w      $2ca
0002b4: 2017         move.l     (a7), d0
0002b6: 4ab20c66     tst.l      $66(a2, d0.l)
0002ba: 6700000c     beq.w      $2c8
0002be: 2217         move.l     (a7), d1
0002c0: 7066         moveq      #$66, d0
0002c2: d08a         add.l      a2, d0
0002c4: 61000dec     bsr.w      $10b2
0002c8: 5297         addq.l     #$1, (a7)
0002ca: 700a         moveq      #$a, d0
0002cc: b097         cmp.l      (a7), d0
0002ce: 6e00ffe4     bgt.w      $2b4
0002d2: 4aaa009c     tst.l      $9c(a2)
0002d6: 67000010     beq.w      $2e8
0002da: 222a009c     move.l     $9c(a2), d1
0002de: 203c00000080 move.l     #$80, d0
0002e4: 61000f24     bsr.w      $120a
0002e8: 7000         moveq      #$0, d0
0002ea: 588f         addq.l     #$4, a7
0002ec: 60000004     bra.w      $2f2
0002f0: 4e71         nop        
0002f2: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0002f8: 4e5d         unlk       a5
0002fa: 4e75         rts        
0002fc: 4e550000     link.w     a5, #$0
000300: 48e7c020     movem.l    d0-d1/a2, -(a7)
000304: 2440         movea.l    d0, a2
000306: 4ced0400fffc movem.l    -$4(a5), a2
00030c: 4e5d         unlk       a5
00030e: 4e75         rts        
000310: 4e550000     link.w     a5, #$0
000314: 48e78000     movem.l    d0, -(a7)
000318: 4e5d         unlk       a5
00031a: 4e75         rts        
00031c: 4e550000     link.w     a5, #$0
000320: 48e78000     movem.l    d0, -(a7)
000324: 4e5d         unlk       a5
000326: 4e75         rts        
000328: 4e550000     link.w     a5, #$0
00032c: 48e78000     movem.l    d0, -(a7)
000330: 4e5d         unlk       a5
000332: 4e75         rts        
000334: 4e550000     link.w     a5, #$0
000338: 48e78000     movem.l    d0, -(a7)
00033c: 4e5d         unlk       a5
00033e: 4e75         rts        
000340: 4e550000     link.w     a5, #$0
000344: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000348: 2440         movea.l    d0, a2
00034a: 4fefffde     lea.l      -$22(a7), a7
00034e: 61000890     bsr.w      $be0
000352: 3f400006     move.w     d0, $6(a7)
000356: 0c6f00060006 cmpi.w     #$6, $6(a7)
00035c: 660000b6     bne.w      $414
000360: 610008ae     bsr.w      $c10
000364: 41ef0018     lea.l      $18(a7), a0
000368: 2208         move.l     a0, d1
00036a: 7006         moveq      #$6, d0
00036c: 610003ca     bsr.w      $738
000370: 4a80         tst.l      d0
000372: 6700001a     beq.w      $38e
000376: 08ea00010035 bset.b     #$1, $35(a2)
00037c: 13fc0001009f00ff move.b     #$1, $9f00ff.l
000384: 70ff         moveq      #$ff, d0
000386: 4fef0022     lea.l      $22(a7), a7
00038a: 600000d8     bra.w      $464
00038e: 41ef0013     lea.l      $13(a7), a0
000392: 2208         move.l     a0, d1
000394: 41ef0018     lea.l      $18(a7), a0
000398: 2008         move.l     a0, d0
00039a: 61000520     bsr.w      $8bc
00039e: 60000054     bra.w      $3f4
0003a2: 486f000e     pea.l      $e(a7)
0003a6: 41ef0004     lea.l      $4(a7), a0
0003aa: 2208         move.l     a0, d1
0003ac: 41ef001c     lea.l      $1c(a7), a0
0003b0: 2008         move.l     a0, d0
0003b2: 61000420     bsr.w      $7d4
0003b6: 588f         addq.l     #$4, a7
0003b8: 2f400014     move.l     d0, $14(a7)
0003bc: 2057         movea.l    (a7), a0
0003be: 1f500005     move.b     (a0), $5(a7)
0003c2: 41ef0018     lea.l      $18(a7), a0
0003c6: 2008         move.l     a0, d0
0003c8: 61000532     bsr.w      $8fc
0003cc: 102f0005     move.b     $5(a7), d0
0003d0: 49c0         extb.l     d0
0003d2: 2200         move.l     d0, d1
0003d4: 703e         moveq      #$3e, d0
0003d6: d08a         add.l      a2, d0
0003d8: 61000a86     bsr.w      $e60
0003dc: 60000028     bra.w      $406
0003e0: 08ea00020035 bset.b     #$2, $35(a2)
0003e6: 41ef0018     lea.l      $18(a7), a0
0003ea: 2008         move.l     a0, d0
0003ec: 6100050e     bsr.w      $8fc
0003f0: 60000014     bra.w      $406
0003f4: 7000         moveq      #$0, d0
0003f6: 102f0013     move.b     $13(a7), d0
0003fa: 0c400006     cmpi.w     #$6, d0
0003fe: 6700ffa2     beq.w      $3a2
000402: 6000ffdc     bra.w      $3e0
000406: 7000         moveq      #$0, d0
000408: 4fef0022     lea.l      $22(a7), a7
00040c: 60000056     bra.w      $464
000410: 60000046     bra.w      $458
000414: 0c6f00070006 cmpi.w     #$7, $6(a7)
00041a: 6600003c     bne.w      $458
00041e: 610007f0     bsr.w      $c10
000422: 4aaa0098     tst.l      $98(a2)
000426: 67000014     beq.w      $43c
00042a: 7201         moveq      #$1, d1
00042c: 202a0098     move.l     $98(a2), d0
000430: 61000e16     bsr.w      $1248
000434: 42aa0098     clr.l      $98(a2)
000438: 60000014     bra.w      $44e
00043c: 13fc0001009f00fc move.b     #$1, $9f00fc.l
000444: 70ff         moveq      #$ff, d0
000446: 4fef0022     lea.l      $22(a7), a7
00044a: 60000018     bra.w      $464
00044e: 7000         moveq      #$0, d0
000450: 4fef0022     lea.l      $22(a7), a7
000454: 6000000e     bra.w      $464
000458: 70ff         moveq      #$ff, d0
00045a: 4fef0022     lea.l      $22(a7), a7
00045e: 60000004     bra.w      $464
000462: 4e71         nop        
000464: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00046a: 4e5d         unlk       a5
00046c: 4e75         rts        
00046e: 4e550000     link.w     a5, #$0
000472: 48e7c000     movem.l    d0-d1, -(a7)
000476: 4feffff0     lea.l      -$10(a7), a7
00047a: 2f7c00007c000004 move.l     #$7c00, $4(a7)
000482: 486f0008     pea.l      $8(a7)
000486: 223c00005350 move.l     #$5350, d1
00048c: 202f0008     move.l     $8(a7), d0
000490: 61000d4e     bsr.w      $11e0
000494: 588f         addq.l     #$4, a7
000496: 2f40000c     move.l     d0, $c(a7)
00049a: 6600000c     bne.w      $4a8
00049e: 7008         moveq      #$8, d0
0004a0: 4fef0010     lea.l      $10(a7), a7
0004a4: 6000007c     bra.w      $522
0004a8: 0caf009f8400000c cmpi.l     #$9f8400, $c(a7)
0004b0: 66000042     bne.w      $4f4
0004b4: 486f0008     pea.l      $8(a7)
0004b8: 223c00005350 move.l     #$5350, d1
0004be: 203c00000400 move.l     #$400, d0
0004c4: 61000d1a     bsr.w      $11e0
0004c8: 588f         addq.l     #$4, a7
0004ca: 2f40000c     move.l     d0, $c(a7)
0004ce: 6600001c     bne.w      $4ec
0004d2: 222f000c     move.l     $c(a7), d1
0004d6: 202f0004     move.l     $4(a7), d0
0004da: 61000d2e     bsr.w      $120a
0004de: 7008         moveq      #$8, d0
0004e0: 4fef0010     lea.l      $10(a7), a7
0004e4: 6000003c     bra.w      $522
0004e8: 6000000a     bra.w      $4f4
0004ec: 06af000004000004 addi.l     #$400, $4(a7)
0004f4: 0caf009f8000000c cmpi.l     #$9f8000, $c(a7)
0004fc: 67000018     beq.w      $516
000500: 222f000c     move.l     $c(a7), d1
000504: 202f0004     move.l     $4(a7), d0
000508: 61000d00     bsr.w      $120a
00050c: 7009         moveq      #$9, d0
00050e: 4fef0010     lea.l      $10(a7), a7
000512: 6000000e     bra.w      $522
000516: 7000         moveq      #$0, d0
000518: 4fef0010     lea.l      $10(a7), a7
00051c: 60000004     bra.w      $522
000520: 4e71         nop        
000522: 4ced0002fffc movem.l    -$4(a5), d1
000528: 4e5d         unlk       a5
00052a: 4e75         rts        
00052c: 4e550000     link.w     a5, #$0
000530: 48e7c080     movem.l    d0-d1/a0, -(a7)
000534: 4feffff0     lea.l      -$10(a7), a7
000538: 7000         moveq      #$0, d0
00053a: 102f0013     move.b     $13(a7), d0
00053e: 610006f0     bsr.w      $c30
000542: 4a00         tst.b      d0
000544: 6606         bne.b      $54c
000546: 7002         moveq      #$2, d0
000548: 600000f0     bra.w      $63a
00054c: 7000         moveq      #$0, d0
00054e: 102f0017     move.b     $17(a7), d0
000552: 61000726     bsr.w      $c7a
000556: 4a00         tst.b      d0
000558: 6606         bne.b      $560
00055a: 7003         moveq      #$3, d0
00055c: 600000dc     bra.w      $63a
000560: 2f7c009f0000000c move.l     #$9f0000, $c(a7)
000568: 7000         moveq      #$0, d0
00056a: 102f0013     move.b     $13(a7), d0
00056e: 7206         moveq      #$6, d1
000570: 61000e18     bsr.w      $138a
000574: 222f000c     move.l     $c(a7), d1
000578: 5481         addq.l     #$2, d1
00057a: d081         add.l      d1, d0
00057c: 2f400008     move.l     d0, $8(a7)
000580: 206f0008     movea.l    $8(a7), a0
000584: 7000         moveq      #$0, d0
000586: 10280003     move.b     $3(a0), d0
00058a: e188         lsl.l      #$8, d0
00058c: d0af000c     add.l      $c(a7), d0
000590: 206f0024     movea.l    $24(a7), a0
000594: 2080         move.l     d0, (a0)
000596: 206f0008     movea.l    $8(a7), a0
00059a: 7000         moveq      #$0, d0
00059c: 10280001     move.b     $1(a0), d0
0005a0: e188         lsl.l      #$8, d0
0005a2: d0af000c     add.l      $c(a7), d0
0005a6: 206f0024     movea.l    $24(a7), a0
0005aa: 21400004     move.l     d0, $4(a0)
0005ae: 206f0008     movea.l    $8(a7), a0
0005b2: 7000         moveq      #$0, d0
0005b4: 10280001     move.b     $1(a0), d0
0005b8: 206f0008     movea.l    $8(a7), a0
0005bc: 7200         moveq      #$0, d1
0005be: 12280002     move.b     $2(a0), d1
0005c2: 9240         sub.w      d0, d1
0005c4: 5241         addq.w     #$1, d1
0005c6: e149         lsl.w      #$8, d1
0005c8: 206f0024     movea.l    $24(a7), a0
0005cc: 31410008     move.w     d1, $8(a0)
0005d0: 206f0024     movea.l    $24(a7), a0
0005d4: 2f6800040004 move.l     $4(a0), $4(a7)
0005da: 206f0008     movea.l    $8(a7), a0
0005de: 102f0013     move.b     $13(a7), d0
0005e2: b010         cmp.b      (a0), d0
0005e4: 6706         beq.b      $5ec
0005e6: 7004         moveq      #$4, d0
0005e8: 2e80         move.l     d0, (a7)
0005ea: 604c         bra.b      $638
0005ec: 206f0004     movea.l    $4(a7), a0
0005f0: 4a280001     tst.b      $1(a0)
0005f4: 6704         beq.b      $5fa
0005f6: 7001         moveq      #$1, d0
0005f8: 60ee         bra.b      $5e8
0005fa: 206f0004     movea.l    $4(a7), a0
0005fe: 10af0013     move.b     $13(a7), (a0)
000602: 206f0004     movea.l    $4(a7), a0
000606: 116f00170002 move.b     $17(a7), $2(a0)
00060c: 206f0004     movea.l    $4(a7), a0
000610: 42280003     clr.b      $3(a0)
000614: 206f0004     movea.l    $4(a7), a0
000618: 117c00010001 move.b     #$1, $1(a0)
00061e: 206f0004     movea.l    $4(a7), a0
000622: 42280004     clr.b      $4(a0)
000626: 206f0004     movea.l    $4(a7), a0
00062a: 42280005     clr.b      $5(a0)
00062e: 206f0004     movea.l    $4(a7), a0
000632: 42680006     clr.w      $6(a0)
000636: 4297         clr.l      (a7)
000638: 2017         move.l     (a7), d0
00063a: 4fef0010     lea.l      $10(a7), a7
00063e: 4ced0100fffc movem.l    -$4(a5), a0
000644: 4e5d         unlk       a5
000646: 4e75         rts        
000648: 4e550000     link.w     a5, #$0
00064c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000650: 4feffff4     lea.l      -$c(a7), a7
000654: 206f0020     movea.l    $20(a7), a0
000658: 2f6800040004 move.l     $4(a0), $4(a7)
00065e: 206f0004     movea.l    $4(a7), a0
000662: 0c2800010001 cmpi.b     #$1, $1(a0)
000668: 6706         beq.b      $670
00066a: 7006         moveq      #$6, d0
00066c: 2e80         move.l     d0, (a7)
00066e: 605e         bra.b      $6ce
000670: 206f0020     movea.l    $20(a7), a0
000674: 30280008     move.w     $8(a0), d0
000678: 48c0         ext.l      d0
00067a: 206f0004     movea.l    $4(a7), a0
00067e: 32280006     move.w     $6(a0), d1
000682: 48c1         ext.l      d1
000684: d2af000c     add.l      $c(a7), d1
000688: b081         cmp.l      d1, d0
00068a: 6c04         bge.b      $690
00068c: 7005         moveq      #$5, d0
00068e: 60dc         bra.b      $66c
000690: 202f0004     move.l     $4(a7), d0
000694: 5080         addq.l     #$8, d0
000696: 206f0004     movea.l    $4(a7), a0
00069a: 32280006     move.w     $6(a0), d1
00069e: 48c1         ext.l      d1
0006a0: d081         add.l      d1, d0
0006a2: 2f400008     move.l     d0, $8(a7)
0006a6: 2f2f0008     move.l     $8(a7), -(a7)
0006aa: 222f0014     move.l     $14(a7), d1
0006ae: 202f0010     move.l     $10(a7), d0
0006b2: 61000a8a     bsr.w      $113e
0006b6: 588f         addq.l     #$4, a7
0006b8: 206f0004     movea.l    $4(a7), a0
0006bc: 30280006     move.w     $6(a0), d0
0006c0: d06f000e     add.w      $e(a7), d0
0006c4: 206f0004     movea.l    $4(a7), a0
0006c8: 31400006     move.w     d0, $6(a0)
0006cc: 4297         clr.l      (a7)
0006ce: 2017         move.l     (a7), d0
0006d0: 4fef000c     lea.l      $c(a7), a7
0006d4: 4ced0100fffc movem.l    -$4(a5), a0
0006da: 4e5d         unlk       a5
0006dc: 4e75         rts        
0006de: 4e550000     link.w     a5, #$0
0006e2: 48e78880     movem.l    d0/d4/a0, -(a7)
0006e6: 518f         subq.l     #$8, a7
0006e8: 206f0008     movea.l    $8(a7), a0
0006ec: 2f6800040004 move.l     $4(a0), $4(a7)
0006f2: 206f0004     movea.l    $4(a7), a0
0006f6: 0c2800010001 cmpi.b     #$1, $1(a0)
0006fc: 670c         beq.b      $70a
0006fe: 7006         moveq      #$6, d0
000700: 2e80         move.l     d0, (a7)
000702: 6026         bra.b      $72a
000704: 7005         moveq      #$5, d0
000706: 61000b82     bsr.w      $128a
00070a: 4a3900c00002 tst.b      $c00002.l
000710: 66f2         bne.b      $704
000712: 206f0004     movea.l    $4(a7), a0
000716: 117c00030001 move.b     #$3, $1(a0)
00071c: 206f0004     movea.l    $4(a7), a0
000720: 1810         move.b     (a0), d4
000722: 13c400c00002 move.b     d4, $c00002.l
000728: 4297         clr.l      (a7)
00072a: 2017         move.l     (a7), d0
00072c: 508f         addq.l     #$8, a7
00072e: 4ced0110fff8 movem.l    -$8(a5), d4/a0
000734: 4e5d         unlk       a5
000736: 4e75         rts        
000738: 4e550000     link.w     a5, #$0
00073c: 48e7c080     movem.l    d0-d1/a0, -(a7)
000740: 4feffff0     lea.l      -$10(a7), a7
000744: 2f7c009f0000000c move.l     #$9f0000, $c(a7)
00074c: 7000         moveq      #$0, d0
00074e: 102f0013     move.b     $13(a7), d0
000752: 7206         moveq      #$6, d1
000754: 61000c34     bsr.w      $138a
000758: 222f000c     move.l     $c(a7), d1
00075c: 5481         addq.l     #$2, d1
00075e: d081         add.l      d1, d0
000760: 2f400008     move.l     d0, $8(a7)
000764: 206f0008     movea.l    $8(a7), a0
000768: 7000         moveq      #$0, d0
00076a: 10280003     move.b     $3(a0), d0
00076e: e188         lsl.l      #$8, d0
000770: d0af000c     add.l      $c(a7), d0
000774: 2f400004     move.l     d0, $4(a7)
000778: 206f0004     movea.l    $4(a7), a0
00077c: 0c2800030001 cmpi.b     #$3, $1(a0)
000782: 6706         beq.b      $78a
000784: 7007         moveq      #$7, d0
000786: 2e80         move.l     d0, (a7)
000788: 603a         bra.b      $7c4
00078a: 206f0008     movea.l    $8(a7), a0
00078e: 7000         moveq      #$0, d0
000790: 10280003     move.b     $3(a0), d0
000794: e188         lsl.l      #$8, d0
000796: d0af000c     add.l      $c(a7), d0
00079a: 206f0014     movea.l    $14(a7), a0
00079e: 2080         move.l     d0, (a0)
0007a0: 206f0008     movea.l    $8(a7), a0
0007a4: 7000         moveq      #$0, d0
0007a6: 10280001     move.b     $1(a0), d0
0007aa: e188         lsl.l      #$8, d0
0007ac: d0af000c     add.l      $c(a7), d0
0007b0: 206f0014     movea.l    $14(a7), a0
0007b4: 21400004     move.l     d0, $4(a0)
0007b8: 206f0004     movea.l    $4(a7), a0
0007bc: 117c00020001 move.b     #$2, $1(a0)
0007c2: 4297         clr.l      (a7)
0007c4: 2017         move.l     (a7), d0
0007c6: 4fef0010     lea.l      $10(a7), a7
0007ca: 4ced0100fffc movem.l    -$4(a5), a0
0007d0: 4e5d         unlk       a5
0007d2: 4e75         rts        
0007d4: 4e550000     link.w     a5, #$0
0007d8: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0007dc: 518f         subq.l     #$8, a7
0007de: 206f0008     movea.l    $8(a7), a0
0007e2: 2f500004     move.l     (a0), $4(a7)
0007e6: 206f0004     movea.l    $4(a7), a0
0007ea: 0c2800020001 cmpi.b     #$2, $1(a0)
0007f0: 6704         beq.b      $7f6
0007f2: 7001         moveq      #$1, d0
0007f4: 6002         bra.b      $7f8
0007f6: 7000         moveq      #$0, d0
0007f8: 206f0004     movea.l    $4(a7), a0
0007fc: 4a680006     tst.w      $6(a0)
000800: 6c04         bge.b      $806
000802: 7201         moveq      #$1, d1
000804: 6002         bra.b      $808
000806: 7200         moveq      #$0, d1
000808: 8001         or.b       d1, d0
00080a: 6706         beq.b      $812
00080c: 7006         moveq      #$6, d0
00080e: 2e80         move.l     d0, (a7)
000810: 601c         bra.b      $82e
000812: 202f0004     move.l     $4(a7), d0
000816: 5080         addq.l     #$8, d0
000818: 206f000c     movea.l    $c(a7), a0
00081c: 2080         move.l     d0, (a0)
00081e: 206f0004     movea.l    $4(a7), a0
000822: 30680006     movea.w    $6(a0), a0
000826: 226f0020     movea.l    $20(a7), a1
00082a: 2288         move.l     a0, (a1)
00082c: 4297         clr.l      (a7)
00082e: 2017         move.l     (a7), d0
000830: 508f         addq.l     #$8, a7
000832: 4ced0300fff8 movem.l    -$8(a5), a0-a1
000838: 4e5d         unlk       a5
00083a: 4e75         rts        
00083c: 4e550000     link.w     a5, #$0
000840: 48e7c080     movem.l    d0-d1/a0, -(a7)
000844: 518f         subq.l     #$8, a7
000846: 206f000c     movea.l    $c(a7), a0
00084a: 2f6800040004 move.l     $4(a0), $4(a7)
000850: 206f0004     movea.l    $4(a7), a0
000854: 0c2800010001 cmpi.b     #$1, $1(a0)
00085a: 6706         beq.b      $862
00085c: 7006         moveq      #$6, d0
00085e: 2e80         move.l     d0, (a7)
000860: 600c         bra.b      $86e
000862: 206f0004     movea.l    $4(a7), a0
000866: 116f000b0005 move.b     $b(a7), $5(a0)
00086c: 4297         clr.l      (a7)
00086e: 2017         move.l     (a7), d0
000870: 508f         addq.l     #$8, a7
000872: 4ced0100fffc movem.l    -$4(a5), a0
000878: 4e5d         unlk       a5
00087a: 4e75         rts        
00087c: 4e550000     link.w     a5, #$0
000880: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000884: 518f         subq.l     #$8, a7
000886: 206f0008     movea.l    $8(a7), a0
00088a: 2f500004     move.l     (a0), $4(a7)
00088e: 206f0004     movea.l    $4(a7), a0
000892: 0c2800020001 cmpi.b     #$2, $1(a0)
000898: 6706         beq.b      $8a0
00089a: 7006         moveq      #$6, d0
00089c: 2e80         move.l     d0, (a7)
00089e: 600e         bra.b      $8ae
0008a0: 206f0004     movea.l    $4(a7), a0
0008a4: 226f000c     movea.l    $c(a7), a1
0008a8: 12a80005     move.b     $5(a0), (a1)
0008ac: 4297         clr.l      (a7)
0008ae: 2017         move.l     (a7), d0
0008b0: 508f         addq.l     #$8, a7
0008b2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0008b8: 4e5d         unlk       a5
0008ba: 4e75         rts        
0008bc: 4e550000     link.w     a5, #$0
0008c0: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
0008c4: 518f         subq.l     #$8, a7
0008c6: 206f0008     movea.l    $8(a7), a0
0008ca: 2f500004     move.l     (a0), $4(a7)
0008ce: 206f0004     movea.l    $4(a7), a0
0008d2: 0c2800020001 cmpi.b     #$2, $1(a0)
0008d8: 6706         beq.b      $8e0
0008da: 7006         moveq      #$6, d0
0008dc: 2e80         move.l     d0, (a7)
0008de: 600e         bra.b      $8ee
0008e0: 206f0004     movea.l    $4(a7), a0
0008e4: 226f000c     movea.l    $c(a7), a1
0008e8: 12a80002     move.b     $2(a0), (a1)
0008ec: 4297         clr.l      (a7)
0008ee: 2017         move.l     (a7), d0
0008f0: 508f         addq.l     #$8, a7
0008f2: 4ced0300fff8 movem.l    -$8(a5), a0-a1
0008f8: 4e5d         unlk       a5
0008fa: 4e75         rts        
0008fc: 4e550000     link.w     a5, #$0
000900: 48e78080     movem.l    d0/a0, -(a7)
000904: 598f         subq.l     #$4, a7
000906: 206f0004     movea.l    $4(a7), a0
00090a: 2e90         move.l     (a0), (a7)
00090c: 2057         movea.l    (a7), a0
00090e: 42280001     clr.b      $1(a0)
000912: 588f         addq.l     #$4, a7
000914: 4ced0100fffc movem.l    -$4(a5), a0
00091a: 4e5d         unlk       a5
00091c: 4e75         rts        
00091e: 4e550000     link.w     a5, #$0
000922: 48e7c080     movem.l    d0-d1/a0, -(a7)
000926: 4fefffe0     lea.l      -$20(a7), a7
00092a: 7000         moveq      #$0, d0
00092c: 102f0023     move.b     $23(a7), d0
000930: 610002fe     bsr.w      $c30
000934: 4a00         tst.b      d0
000936: 6606         bne.b      $93e
000938: 7002         moveq      #$2, d0
00093a: 600001fa     bra.w      $b36
00093e: 2f7c009f0000001c move.l     #$9f0000, $1c(a7)
000946: 206f001c     movea.l    $1c(a7), a0
00094a: 0c2800690001 cmpi.b     #$69, $1(a0)
000950: 670000b6     beq.w      $a08
000954: 4857         pea.l      (a7)
000956: 223c00005350 move.l     #$5350, d1
00095c: 70ff         moveq      #$ff, d0
00095e: 61000880     bsr.w      $11e0
000962: 588f         addq.l     #$4, a7
000964: 2f400018     move.l     d0, $18(a7)
000968: 4aaf0018     tst.l      $18(a7)
00096c: 67000174     beq.w      $ae2
000970: 222f0018     move.l     $18(a7), d1
000974: 2017         move.l     (a7), d0
000976: 61000892     bsr.w      $120a
00097a: 4a80         tst.l      d0
00097c: 66000164     bne.w      $ae2
000980: 486f0004     pea.l      $4(a7)
000984: 223c00005350 move.l     #$5350, d1
00098a: 203cfffffe00 move.l     #$fffffe00, d0
000990: d0af0004     add.l      $4(a7), d0
000994: 6100084a     bsr.w      $11e0
000998: 588f         addq.l     #$4, a7
00099a: 2f400018     move.l     d0, $18(a7)
00099e: 4aaf0018     tst.l      $18(a7)
0009a2: 6700013e     beq.w      $ae2
0009a6: 486f0004     pea.l      $4(a7)
0009aa: 223c00005350 move.l     #$5350, d1
0009b0: 203c00000200 move.l     #$200, d0
0009b6: 61000828     bsr.w      $11e0
0009ba: 588f         addq.l     #$4, a7
0009bc: 2f40001c     move.l     d0, $1c(a7)
0009c0: 4aaf001c     tst.l      $1c(a7)
0009c4: 6700011c     beq.w      $ae2
0009c8: 2217         move.l     (a7), d1
0009ca: 202f001c     move.l     $1c(a7), d0
0009ce: 610001d6     bsr.w      $ba6
0009d2: 222f0018     move.l     $18(a7), d1
0009d6: 203cfffffe00 move.l     #$fffffe00, d0
0009dc: d097         add.l      (a7), d0
0009de: 6100082a     bsr.w      $120a
0009e2: 4a80         tst.l      d0
0009e4: 660000fc     bne.w      $ae2
0009e8: 206f001c     movea.l    $1c(a7), a0
0009ec: 117c00690001 move.b     #$69, $1(a0)
0009f2: 13fc009f00c00001 move.b     #$9f, $c00001.l
0009fa: 13fc00ff00c00003 move.b     #$ff, $c00003.l
000a02: 423900c00002 clr.b      $c00002.l
000a08: 7000         moveq      #$0, d0
000a0a: 102f0023     move.b     $23(a7), d0
000a0e: 7206         moveq      #$6, d1
000a10: 61000978     bsr.w      $138a
000a14: 222f001c     move.l     $1c(a7), d1
000a18: 5481         addq.l     #$2, d1
000a1a: d081         add.l      d1, d0
000a1c: 2f40000c     move.l     d0, $c(a7)
000a20: 206f000c     movea.l    $c(a7), a0
000a24: 102f0023     move.b     $23(a7), d0
000a28: b010         cmp.b      (a0), d0
000a2a: 6644         bne.b      $a70
000a2c: 206f000c     movea.l    $c(a7), a0
000a30: 7000         moveq      #$0, d0
000a32: 10280003     move.b     $3(a0), d0
000a36: e188         lsl.l      #$8, d0
000a38: d0af001c     add.l      $1c(a7), d0
000a3c: 2f400010     move.l     d0, $10(a7)
000a40: 206f000c     movea.l    $c(a7), a0
000a44: 7000         moveq      #$0, d0
000a46: 10280001     move.b     $1(a0), d0
000a4a: e188         lsl.l      #$8, d0
000a4c: d0af001c     add.l      $1c(a7), d0
000a50: 2f400014     move.l     d0, $14(a7)
000a54: 2f2f0024     move.l     $24(a7), -(a7)
000a58: 2f2f0014     move.l     $14(a7), -(a7)
000a5c: 222f003c     move.l     $3c(a7), d1
000a60: 202f001c     move.l     $1c(a7), d0
000a64: 610000de     bsr.w      $b44
000a68: 508f         addq.l     #$8, a7
000a6a: 7009         moveq      #$9, d0
000a6c: 600000c8     bra.w      $b36
000a70: 486f0004     pea.l      $4(a7)
000a74: 223c00005350 move.l     #$5350, d1
000a7a: 202f0038     move.l     $38(a7), d0
000a7e: e188         lsl.l      #$8, d0
000a80: 6100075e     bsr.w      $11e0
000a84: 588f         addq.l     #$4, a7
000a86: 2f400014     move.l     d0, $14(a7)
000a8a: 4aaf0014     tst.l      $14(a7)
000a8e: 6752         beq.b      $ae2
000a90: 202f0014     move.l     $14(a7), d0
000a94: 90af001c     sub.l      $1c(a7), d0
000a98: 6c06         bge.b      $aa0
000a9a: 0680000000ff addi.l     #$ff, d0
000aa0: e080         asr.l      #$8, d0
000aa2: 2f400008     move.l     d0, $8(a7)
000aa6: 206f000c     movea.l    $c(a7), a0
000aaa: 116f000b0001 move.b     $b(a7), $1(a0)
000ab0: 102f000b     move.b     $b(a7), d0
000ab4: d02f0037     add.b      $37(a7), d0
000ab8: 5300         subq.b     #$1, d0
000aba: 206f000c     movea.l    $c(a7), a0
000abe: 11400002     move.b     d0, $2(a0)
000ac2: 486f0004     pea.l      $4(a7)
000ac6: 223c00005350 move.l     #$5350, d1
000acc: 202f0028     move.l     $28(a7), d0
000ad0: e188         lsl.l      #$8, d0
000ad2: 6100070c     bsr.w      $11e0
000ad6: 588f         addq.l     #$4, a7
000ad8: 2f400010     move.l     d0, $10(a7)
000adc: 4aaf0010     tst.l      $10(a7)
000ae0: 6604         bne.b      $ae6
000ae2: 7008         moveq      #$8, d0
000ae4: 6050         bra.b      $b36
000ae6: 202f0010     move.l     $10(a7), d0
000aea: 90af001c     sub.l      $1c(a7), d0
000aee: 6c06         bge.b      $af6
000af0: 0680000000ff addi.l     #$ff, d0
000af6: e080         asr.l      #$8, d0
000af8: 2f400008     move.l     d0, $8(a7)
000afc: 206f000c     movea.l    $c(a7), a0
000b00: 116f000b0003 move.b     $b(a7), $3(a0)
000b06: 102f000b     move.b     $b(a7), d0
000b0a: d02f0027     add.b      $27(a7), d0
000b0e: 5300         subq.b     #$1, d0
000b10: 206f000c     movea.l    $c(a7), a0
000b14: 11400004     move.b     d0, $4(a0)
000b18: 206f000c     movea.l    $c(a7), a0
000b1c: 10af0023     move.b     $23(a7), (a0)
000b20: 2f2f0024     move.l     $24(a7), -(a7)
000b24: 2f2f0014     move.l     $14(a7), -(a7)
000b28: 222f003c     move.l     $3c(a7), d1
000b2c: 202f001c     move.l     $1c(a7), d0
000b30: 6112         bsr.b      $b44
000b32: 508f         addq.l     #$8, a7
000b34: 7000         moveq      #$0, d0
000b36: 4fef0020     lea.l      $20(a7), a7
000b3a: 4ced0100fffc movem.l    -$4(a5), a0
000b40: 4e5d         unlk       a5
000b42: 4e75         rts        
000b44: 4e550000     link.w     a5, #$0
000b48: 48e7c080     movem.l    d0-d1/a0, -(a7)
000b4c: 518f         subq.l     #$8, a7
000b4e: 2f6f001c0004 move.l     $1c(a7), $4(a7)
000b54: 202f0020     move.l     $20(a7), d0
000b58: e188         lsl.l      #$8, d0
000b5a: d0af0004     add.l      $4(a7), d0
000b5e: 2e80         move.l     d0, (a7)
000b60: 600a         bra.b      $b6c
000b62: 206f0004     movea.l    $4(a7), a0
000b66: 4210         clr.b      (a0)
000b68: 52af0004     addq.l     #$1, $4(a7)
000b6c: 202f0004     move.l     $4(a7), d0
000b70: b097         cmp.l      (a7), d0
000b72: 65ee         bcs.b      $b62
000b74: 2f6f00080004 move.l     $8(a7), $4(a7)
000b7a: 202f000c     move.l     $c(a7), d0
000b7e: e188         lsl.l      #$8, d0
000b80: d0af0004     add.l      $4(a7), d0
000b84: 2e80         move.l     d0, (a7)
000b86: 600a         bra.b      $b92
000b88: 206f0004     movea.l    $4(a7), a0
000b8c: 4210         clr.b      (a0)
000b8e: 52af0004     addq.l     #$1, $4(a7)
000b92: 202f0004     move.l     $4(a7), d0
000b96: b097         cmp.l      (a7), d0
000b98: 65ee         bcs.b      $b88
000b9a: 508f         addq.l     #$8, a7
000b9c: 4ced0100fffc movem.l    -$4(a5), a0
000ba2: 4e5d         unlk       a5
000ba4: 4e75         rts        
000ba6: 4e550000     link.w     a5, #$0
000baa: 48e7c080     movem.l    d0-d1/a0, -(a7)
000bae: 518f         subq.l     #$8, a7
000bb0: 2f6f00080004 move.l     $8(a7), $4(a7)
000bb6: 202f0004     move.l     $4(a7), d0
000bba: d0af000c     add.l      $c(a7), d0
000bbe: 2e80         move.l     d0, (a7)
000bc0: 600a         bra.b      $bcc
000bc2: 206f0004     movea.l    $4(a7), a0
000bc6: 4210         clr.b      (a0)
000bc8: 52af0004     addq.l     #$1, $4(a7)
000bcc: 202f0004     move.l     $4(a7), d0
000bd0: b097         cmp.l      (a7), d0
000bd2: 65ee         bcs.b      $bc2
000bd4: 508f         addq.l     #$8, a7
000bd6: 4ced0100fffc movem.l    -$4(a5), a0
000bdc: 4e5d         unlk       a5
000bde: 4e75         rts        
000be0: 4e550000     link.w     a5, #$0
000be4: 48e78080     movem.l    d0/a0, -(a7)
000be8: 598f         subq.l     #$4, a7
000bea: 2ebc009f0000 move.l     #$9f0000, (a7)
000bf0: 2057         movea.l    (a7), a0
000bf2: 4a10         tst.b      (a0)
000bf4: 6608         bne.b      $bfe
000bf6: 2057         movea.l    (a7), a0
000bf8: 10b900c00000 move.b     $c00000.l, (a0)
000bfe: 2057         movea.l    (a7), a0
000c00: 7000         moveq      #$0, d0
000c02: 1010         move.b     (a0), d0
000c04: 588f         addq.l     #$4, a7
000c06: 4ced0100fffc movem.l    -$4(a5), a0
000c0c: 4e5d         unlk       a5
000c0e: 4e75         rts        
000c10: 4e550000     link.w     a5, #$0
000c14: 48e78080     movem.l    d0/a0, -(a7)
000c18: 598f         subq.l     #$4, a7
000c1a: 2ebc009f0000 move.l     #$9f0000, (a7)
000c20: 2057         movea.l    (a7), a0
000c22: 4210         clr.b      (a0)
000c24: 588f         addq.l     #$4, a7
000c26: 4ced0100fffc movem.l    -$4(a5), a0
000c2c: 4e5d         unlk       a5
000c2e: 4e75         rts        
000c30: 4e550000     link.w     a5, #$0
000c34: 48e78000     movem.l    d0, -(a7)
000c38: 558f         subq.l     #$2, a7
000c3a: 600e         bra.b      $c4a
000c3c: 1f7c00010001 move.b     #$1, $1(a7)
000c42: 602c         bra.b      $c70
000c44: 422f0001     clr.b      $1(a7)
000c48: 6026         bra.b      $c70
000c4a: 7000         moveq      #$0, d0
000c4c: 102f0005     move.b     $5(a7), d0
000c50: 0c400007     cmpi.w     #$7, d0
000c54: 62ee         bhi.b      $c44
000c56: d040         add.w      d0, d0
000c58: 303b0006     move.w     $c60(pc, d0.w), d0
000c5c: 4efb0002     jmp        $c60(pc, d0.w)
000c60: ffdc         dc.w       $ffdc
000c62: ffdc         dc.w       $ffdc
000c64: ffdc         dc.w       $ffdc
000c66: ffdc         dc.w       $ffdc
000c68: ffdc         dc.w       $ffdc
000c6a: ffdc         dc.w       $ffdc
000c6c: ffdc         dc.w       $ffdc
000c6e: ffdc         dc.w       $ffdc
000c70: 102f0001     move.b     $1(a7), d0
000c74: 548f         addq.l     #$2, a7
000c76: 4e5d         unlk       a5
000c78: 4e75         rts        
000c7a: 4e550000     link.w     a5, #$0
000c7e: 48e78000     movem.l    d0, -(a7)
000c82: 558f         subq.l     #$2, a7
000c84: 600e         bra.b      $c94
000c86: 1f7c00010001 move.b     #$1, $1(a7)
000c8c: 602e         bra.b      $cbc
000c8e: 422f0001     clr.b      $1(a7)
000c92: 6028         bra.b      $cbc
000c94: 7000         moveq      #$0, d0
000c96: 102f0005     move.b     $5(a7), d0
000c9a: 0c400008     cmpi.w     #$8, d0
000c9e: 62ee         bhi.b      $c8e
000ca0: d040         add.w      d0, d0
000ca2: 303b0006     move.w     $caa(pc, d0.w), d0
000ca6: 4efb0002     jmp        $caa(pc, d0.w)
000caa: ffdc         dc.w       $ffdc
000cac: ffdc         dc.w       $ffdc
000cae: ffdc         dc.w       $ffdc
000cb0: ffdc         dc.w       $ffdc
000cb2: ffdc         dc.w       $ffdc
000cb4: ffdc         dc.w       $ffdc
000cb6: ffdc         dc.w       $ffdc
000cb8: ffdc         dc.w       $ffdc
000cba: ffdc         dc.w       $ffdc
000cbc: 102f0001     move.b     $1(a7), d0
000cc0: 548f         addq.l     #$2, a7
000cc2: 4e5d         unlk       a5
000cc4: 4e75         rts        
000cc6: 4e550000     link.w     a5, #$0
000cca: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000cce: 7000         moveq      #$0, d0
000cd0: 102f0007     move.b     $7(a7), d0
000cd4: 81fc000a     divs.w     #$a, d0
000cd8: 4840         swap       d0
000cda: 48c0         ext.l      d0
000cdc: 2057         movea.l    (a7), a0
000cde: 24700c00     movea.l    (a0, d0.l * 4), a2
000ce2: 60000024     bra.w      $d08
000ce6: 102f0007     move.b     $7(a7), d0
000cea: b02a0014     cmp.b      $14(a2), d0
000cee: 66000016     bne.w      $d06
000cf2: 202f0018     move.l     $18(a7), d0
000cf6: b0aa0008     cmp.l      $8(a2), d0
000cfa: 6600000a     bne.w      $d06
000cfe: 200a         move.l     a2, d0
000d00: 5880         addq.l     #$4, d0
000d02: 60000012     bra.w      $d16
000d06: 2452         movea.l    (a2), a2
000d08: 200a         move.l     a2, d0
000d0a: 6600ffda     bne.w      $ce6
000d0e: 7000         moveq      #$0, d0
000d10: 60000004     bra.w      $d16
000d14: 4e71         nop        
000d16: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000d1c: 4e5d         unlk       a5
000d1e: 4e75         rts        
000d20: 4e550000     link.w     a5, #$0
000d24: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000d28: 518f         subq.l     #$8, a7
000d2a: 2f2f0020     move.l     $20(a7), -(a7)
000d2e: 7000         moveq      #$0, d0
000d30: 102f0013     move.b     $13(a7), d0
000d34: 2200         move.l     d0, d1
000d36: 202f000c     move.l     $c(a7), d0
000d3a: 6100ff8a     bsr.w      $cc6
000d3e: 588f         addq.l     #$4, a7
000d40: 2e80         move.l     d0, (a7)
000d42: 6700000a     beq.w      $d4e
000d46: 2017         move.l     (a7), d0
000d48: 508f         addq.l     #$8, a7
000d4a: 6000005a     bra.w      $da6
000d4e: 7000         moveq      #$0, d0
000d50: 102f000f     move.b     $f(a7), d0
000d54: 81fc000a     divs.w     #$a, d0
000d58: 4840         swap       d0
000d5a: 48c0         ext.l      d0
000d5c: e588         lsl.l      #$2, d0
000d5e: d0af0008     add.l      $8(a7), d0
000d62: 2440         movea.l    d0, a2
000d64: 60000004     bra.w      $d6a
000d68: 2452         movea.l    (a2), a2
000d6a: 4a92         tst.l      (a2)
000d6c: 6600fffa     bne.w      $d68
000d70: 41ef0004     lea.l      $4(a7), a0
000d74: 2208         move.l     a0, d1
000d76: 7016         moveq      #$16, d0
000d78: 6100043e     bsr.w      $11b8
000d7c: 2480         move.l     d0, (a2)
000d7e: 6600000a     bne.w      $d8a
000d82: 7000         moveq      #$0, d0
000d84: 508f         addq.l     #$8, a7
000d86: 6000001e     bra.w      $da6
000d8a: 2452         movea.l    (a2), a2
000d8c: 4292         clr.l      (a2)
000d8e: 156f000f0014 move.b     $f(a7), $14(a2)
000d94: 256f00200008 move.l     $20(a7), $8(a2)
000d9a: 200a         move.l     a2, d0
000d9c: 5880         addq.l     #$4, d0
000d9e: 508f         addq.l     #$8, a7
000da0: 60000004     bra.w      $da6
000da4: 4e71         nop        
000da6: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000dac: 4e5d         unlk       a5
000dae: 4e75         rts        
000db0: 4e550000     link.w     a5, #$0
000db4: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
000db8: 518f         subq.l     #$8, a7
000dba: 7000         moveq      #$0, d0
000dbc: 102f000f     move.b     $f(a7), d0
000dc0: 81fc000a     divs.w     #$a, d0
000dc4: 4840         swap       d0
000dc6: 48c0         ext.l      d0
000dc8: e588         lsl.l      #$2, d0
000dca: d0af0008     add.l      $8(a7), d0
000dce: 2440         movea.l    d0, a2
000dd0: 6000002e     bra.w      $e00
000dd4: 102f000f     move.b     $f(a7), d0
000dd8: b02b0014     cmp.b      $14(a3), d0
000ddc: 66000020     bne.w      $dfe
000de0: 202f0020     move.l     $20(a7), d0
000de4: b0ab0008     cmp.l      $8(a3), d0
000de8: 66000014     bne.w      $dfe
000dec: 2493         move.l     (a3), (a2)
000dee: 220b         move.l     a3, d1
000df0: 7016         moveq      #$16, d0
000df2: 61000416     bsr.w      $120a
000df6: 7000         moveq      #$0, d0
000df8: 508f         addq.l     #$8, a7
000dfa: 60000016     bra.w      $e12
000dfe: 2452         movea.l    (a2), a2
000e00: 2652         movea.l    (a2), a3
000e02: 200b         move.l     a3, d0
000e04: 6600ffce     bne.w      $dd4
000e08: 70ff         moveq      #$ff, d0
000e0a: 508f         addq.l     #$8, a7
000e0c: 60000004     bra.w      $e12
000e10: 4e71         nop        
000e12: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
000e18: 4e5d         unlk       a5
000e1a: 4e75         rts        
000e1c: 4e550000     link.w     a5, #$0
000e20: 48e7c080     movem.l    d0-d1/a0, -(a7)
000e24: 518f         subq.l     #$8, a7
000e26: 206f0008     movea.l    $8(a7), a0
000e2a: 202f000c     move.l     $c(a7), d0
000e2e: 2f700c000004 move.l     (a0, d0.l * 4), $4(a7)
000e34: 60000016     bra.w      $e4c
000e38: 2eaf0004     move.l     $4(a7), (a7)
000e3c: 206f0004     movea.l    $4(a7), a0
000e40: 2f500004     move.l     (a0), $4(a7)
000e44: 2217         move.l     (a7), d1
000e46: 7016         moveq      #$16, d0
000e48: 610003c0     bsr.w      $120a
000e4c: 4aaf0004     tst.l      $4(a7)
000e50: 6600ffe6     bne.w      $e38
000e54: 508f         addq.l     #$8, a7
000e56: 4ced0100fffc movem.l    -$4(a5), a0
000e5c: 4e5d         unlk       a5
000e5e: 4e75         rts        
000e60: 4e550000     link.w     a5, #$0
000e64: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
000e68: 2440         movea.l    d0, a2
000e6a: 7000         moveq      #$0, d0
000e6c: 102f0007     move.b     $7(a7), d0
000e70: 81fc000a     divs.w     #$a, d0
000e74: 4840         swap       d0
000e76: 48c0         ext.l      d0
000e78: 28720c00     movea.l    (a2, d0.l * 4), a4
000e7c: 60000058     bra.w      $ed6
000e80: 102f0007     move.b     $7(a7), d0
000e84: b02c0014     cmp.b      $14(a4), d0
000e88: 6600004a     bne.w      $ed4
000e8c: 4aac0008     tst.l      $8(a4)
000e90: 67000042     beq.w      $ed4
000e94: 200c         move.l     a4, d0
000e96: 5880         addq.l     #$4, d0
000e98: 2640         movea.l    d0, a3
000e9a: 302b000c     move.w     $c(a3), d0
000e9e: 206b0008     movea.l    $8(a3), a0
000ea2: 81680004     or.w       d0, $4(a0)
000ea6: 0c6b0001000e cmpi.w     #$1, $e(a3)
000eac: 66000016     bne.w      $ec4
000eb0: 206b0008     movea.l    $8(a3), a0
000eb4: 30280004     move.w     $4(a0), d0
000eb8: 206b0008     movea.l    $8(a3), a0
000ebc: c0680006     and.w      $6(a0), d0
000ec0: 67000012     beq.w      $ed4
000ec4: 7000         moveq      #$0, d0
000ec6: 302b000e     move.w     $e(a3), d0
000eca: 2200         move.l     d0, d1
000ecc: 202b0004     move.l     $4(a3), d0
000ed0: 61000376     bsr.w      $1248
000ed4: 2854         movea.l    (a4), a4
000ed6: 200c         move.l     a4, d0
000ed8: 6600ffa6     bne.w      $e80
000edc: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
000ee2: 4e5d         unlk       a5
000ee4: 4e75         rts        
000ee6: 4e550000     link.w     a5, #$0
000eea: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
000eee: 2440         movea.l    d0, a2
000ef0: 4feffff4     lea.l      -$c(a7), a7
000ef4: 42af0008     clr.l      $8(a7)
000ef8: 60000054     bra.w      $f4e
000efc: 202f0008     move.l     $8(a7), d0
000f00: e588         lsl.l      #$2, d0
000f02: d08a         add.l      a2, d0
000f04: 2f400004     move.l     d0, $4(a7)
000f08: 60000036     bra.w      $f40
000f0c: 2057         movea.l    (a7), a0
000f0e: 202f0010     move.l     $10(a7), d0
000f12: b0a80008     cmp.l      $8(a0), d0
000f16: 66000020     bne.w      $f38
000f1a: 2057         movea.l    (a7), a0
000f1c: 226f0004     movea.l    $4(a7), a1
000f20: 2290         move.l     (a0), (a1)
000f22: 2217         move.l     (a7), d1
000f24: 7016         moveq      #$16, d0
000f26: 610002e2     bsr.w      $120a
000f2a: 206f0004     movea.l    $4(a7), a0
000f2e: 4a90         tst.l      (a0)
000f30: 66000006     bne.w      $f38
000f34: 60000014     bra.w      $f4a
000f38: 206f0004     movea.l    $4(a7), a0
000f3c: 2f500004     move.l     (a0), $4(a7)
000f40: 206f0004     movea.l    $4(a7), a0
000f44: 2e90         move.l     (a0), (a7)
000f46: 6600ffc4     bne.w      $f0c
000f4a: 52af0008     addq.l     #$1, $8(a7)
000f4e: 700a         moveq      #$a, d0
000f50: b0af0008     cmp.l      $8(a7), d0
000f54: 6e00ffa6     bgt.w      $efc
000f58: 4fef000c     lea.l      $c(a7), a7
000f5c: 4ced0700fff4 movem.l    -$c(a5), a0-a2
000f62: 4e5d         unlk       a5
000f64: 4e75         rts        
000f66: 4e550000     link.w     a5, #$0
000f6a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000f6e: 7000         moveq      #$0, d0
000f70: 102f0007     move.b     $7(a7), d0
000f74: 81fc000a     divs.w     #$a, d0
000f78: 4840         swap       d0
000f7a: 48c0         ext.l      d0
000f7c: 2057         movea.l    (a7), a0
000f7e: 24700c00     movea.l    (a0, d0.l * 4), a2
000f82: 60000018     bra.w      $f9c
000f86: 102f0007     move.b     $7(a7), d0
000f8a: b02a0004     cmp.b      $4(a2), d0
000f8e: 6600000a     bne.w      $f9a
000f92: 200a         move.l     a2, d0
000f94: 5c80         addq.l     #$6, d0
000f96: 60000012     bra.w      $faa
000f9a: 2452         movea.l    (a2), a2
000f9c: 200a         move.l     a2, d0
000f9e: 6600ffe6     bne.w      $f86
000fa2: 7000         moveq      #$0, d0
000fa4: 60000004     bra.w      $faa
000fa8: 4e71         nop        
000faa: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000fb0: 4e5d         unlk       a5
000fb2: 4e75         rts        
000fb4: 4e550000     link.w     a5, #$0
000fb8: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
000fbc: 518f         subq.l     #$8, a7
000fbe: 7000         moveq      #$0, d0
000fc0: 102f000f     move.b     $f(a7), d0
000fc4: 2200         move.l     d0, d1
000fc6: 202f0008     move.l     $8(a7), d0
000fca: 6100ff9a     bsr.w      $f66
000fce: 2e80         move.l     d0, (a7)
000fd0: 6700000a     beq.w      $fdc
000fd4: 2017         move.l     (a7), d0
000fd6: 508f         addq.l     #$8, a7
000fd8: 6000005e     bra.w      $1038
000fdc: 7000         moveq      #$0, d0
000fde: 102f000f     move.b     $f(a7), d0
000fe2: 81fc000a     divs.w     #$a, d0
000fe6: 4840         swap       d0
000fe8: 48c0         ext.l      d0
000fea: e588         lsl.l      #$2, d0
000fec: d0af0008     add.l      $8(a7), d0
000ff0: 2440         movea.l    d0, a2
000ff2: 60000004     bra.w      $ff8
000ff6: 2452         movea.l    (a2), a2
000ff8: 4a92         tst.l      (a2)
000ffa: 6600fffa     bne.w      $ff6
000ffe: 41ef0004     lea.l      $4(a7), a0
001002: 2208         move.l     a0, d1
001004: 700e         moveq      #$e, d0
001006: d0af0020     add.l      $20(a7), d0
00100a: 610001ac     bsr.w      $11b8
00100e: 2480         move.l     d0, (a2)
001010: 6600000a     bne.w      $101c
001014: 7000         moveq      #$0, d0
001016: 508f         addq.l     #$8, a7
001018: 6000001e     bra.w      $1038
00101c: 2452         movea.l    (a2), a2
00101e: 4292         clr.l      (a2)
001020: 156f000f0004 move.b     $f(a7), $4(a2)
001026: 156f00230005 move.b     $23(a7), $5(a2)
00102c: 200a         move.l     a2, d0
00102e: 5c80         addq.l     #$6, d0
001030: 508f         addq.l     #$8, a7
001032: 60000004     bra.w      $1038
001036: 4e71         nop        
001038: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00103e: 4e5d         unlk       a5
001040: 4e75         rts        
001042: 4e550000     link.w     a5, #$0
001046: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
00104a: 4feffff4     lea.l      -$c(a7), a7
00104e: 7000         moveq      #$0, d0
001050: 102f0013     move.b     $13(a7), d0
001054: 81fc000a     divs.w     #$a, d0
001058: 4840         swap       d0
00105a: 48c0         ext.l      d0
00105c: e588         lsl.l      #$2, d0
00105e: d0af000c     add.l      $c(a7), d0
001062: 2440         movea.l    d0, a2
001064: 6000002e     bra.w      $1094
001068: 102f0013     move.b     $13(a7), d0
00106c: b02b0004     cmp.b      $4(a3), d0
001070: 66000020     bne.w      $1092
001074: 2493         move.l     (a3), (a2)
001076: 7000         moveq      #$0, d0
001078: 102b0005     move.b     $5(a3), d0
00107c: 2e80         move.l     d0, (a7)
00107e: 220b         move.l     a3, d1
001080: 700e         moveq      #$e, d0
001082: d097         add.l      (a7), d0
001084: 61000184     bsr.w      $120a
001088: 7000         moveq      #$0, d0
00108a: 4fef000c     lea.l      $c(a7), a7
00108e: 60000018     bra.w      $10a8
001092: 2452         movea.l    (a2), a2
001094: 2652         movea.l    (a2), a3
001096: 200b         move.l     a3, d0
001098: 6600ffce     bne.w      $1068
00109c: 70ff         moveq      #$ff, d0
00109e: 4fef000c     lea.l      $c(a7), a7
0010a2: 60000004     bra.w      $10a8
0010a6: 4e71         nop        
0010a8: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0010ae: 4e5d         unlk       a5
0010b0: 4e75         rts        
0010b2: 4e550000     link.w     a5, #$0
0010b6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0010ba: 4feffff4     lea.l      -$c(a7), a7
0010be: 206f000c     movea.l    $c(a7), a0
0010c2: 202f0010     move.l     $10(a7), d0
0010c6: 2f700c000008 move.l     (a0, d0.l * 4), $8(a7)
0010cc: 60000028     bra.w      $10f6
0010d0: 2f6f00080004 move.l     $8(a7), $4(a7)
0010d6: 206f0008     movea.l    $8(a7), a0
0010da: 2f500008     move.l     (a0), $8(a7)
0010de: 206f0004     movea.l    $4(a7), a0
0010e2: 7000         moveq      #$0, d0
0010e4: 10280005     move.b     $5(a0), d0
0010e8: 2e80         move.l     d0, (a7)
0010ea: 222f0004     move.l     $4(a7), d1
0010ee: 700e         moveq      #$e, d0
0010f0: d097         add.l      (a7), d0
0010f2: 61000116     bsr.w      $120a
0010f6: 4aaf0008     tst.l      $8(a7)
0010fa: 6600ffd4     bne.w      $10d0
0010fe: 4fef000c     lea.l      $c(a7), a7
001102: 4ced0100fffc movem.l    -$4(a5), a0
001108: 4e5d         unlk       a5
00110a: 4e75         rts        
00110c: 48e74000     movem.l    d1, -(a7)
001110: 4e40         trap       #$0
001112: 002b604848e7 ori.b      #$48, $48e7(a3)
001118: 40b0206f     negx.l     $6f(a0, d2.w)
00111c: 0014246f     ori.b      #$6f, (a4)
001120: 0018266f     ori.b      #$6f, (a0)+
001124: 001c4e40     ori.b      #$40, (a4)+
001128: 002a605048e7 ori.b      #$50, $48e7(a2)
00112e: 40a0         negx.l     -(a0)
001130: 207c00000000 movea.l    #$0, a0
001136: 2441         movea.l    d1, a2
001138: 4e40         trap       #$0
00113a: 002a603448e7 ori.b      #$34, $48e7(a2)
001140: 60a0         bra.b      $10e2
001142: 2400         move.l     d0, d2
001144: 2041         movea.l    d1, a0
001146: 246f0014     movea.l    $14(a7), a2
00114a: 4e40         trap       #$0
00114c: 0038603648e7 ori.b      #$36, $48e7.w
001152: 4050         negx.w     (a0)
001154: 2240         movea.l    d0, a1
001156: 2641         movea.l    d1, a3
001158: 4e40         trap       #$0
00115a: 0032600a653042804cdf ori.b      #$a, $42804cdf(a2, d6.w * 4)
001164: 00024e75     ori.b      #$75, d2
001168: 652e         bcs.b      $1198
00116a: 4280         clr.l      d0
00116c: 4cdf0a02     movem.l    (a7)+, d1/a1/a3
001170: 4e75         rts        
001172: 652c         bcs.b      $11a0
001174: 4280         clr.l      d0
001176: 4cdf0502     movem.l    (a7)+, d1/a0/a2
00117a: 4e75         rts        
00117c: 652a         bcs.b      $11a8
00117e: 4280         clr.l      d0
001180: 4cdf0d02     movem.l    (a7)+, d1/a0/a2-a3
001184: 4e75         rts        
001186: 6528         bcs.b      $11b0
001188: 4280         clr.l      d0
00118a: 4cdf0506     movem.l    (a7)+, d1-d2/a0/a2
00118e: 4e75         rts        
001190: 4280         clr.l      d0
001192: 3001         move.w     d1, d0
001194: 4480         neg.l      d0
001196: 60ca         bra.b      $1162
001198: 4280         clr.l      d0
00119a: 3001         move.w     d1, d0
00119c: 4480         neg.l      d0
00119e: 60cc         bra.b      $116c
0011a0: 4280         clr.l      d0
0011a2: 3001         move.w     d1, d0
0011a4: 4480         neg.l      d0
0011a6: 60ce         bra.b      $1176
0011a8: 4280         clr.l      d0
0011aa: 3001         move.w     d1, d0
0011ac: 4480         neg.l      d0
0011ae: 60d0         bra.b      $1180
0011b0: 4280         clr.l      d0
0011b2: 3001         move.w     d1, d0
0011b4: 4480         neg.l      d0
0011b6: 60d2         bra.b      $118a
0011b8: 48e700a0     movem.l    a0/a2, -(a7)
0011bc: 2f01         move.l     d1, -(a7)
0011be: 4e40         trap       #$0
0011c0: 0028650c205f ori.b      #$c, $205f(a0)
0011c6: 2080         move.l     d0, (a0)
0011c8: 200a         move.l     a2, d0
0011ca: 4cdf0500     movem.l    (a7)+, a0/a2
0011ce: 4e75         rts        
0011d0: 4280         clr.l      d0
0011d2: 3001         move.w     d1, d0
0011d4: 205f         movea.l    (a7)+, a0
0011d6: 2080         move.l     d0, (a0)
0011d8: 4280         clr.l      d0
0011da: 4cdf0500     movem.l    (a7)+, a0/a2
0011de: 4e75         rts        
0011e0: 48e700a0     movem.l    a0/a2, -(a7)
0011e4: 4e40         trap       #$0
0011e6: 005c650e     ori.w      #$650e, (a4)+
0011ea: 206f000c     movea.l    $c(a7), a0
0011ee: 2080         move.l     d0, (a0)
0011f0: 200a         move.l     a2, d0
0011f2: 4cdf0500     movem.l    (a7)+, a0/a2
0011f6: 4e75         rts        
0011f8: 4280         clr.l      d0
0011fa: 3001         move.w     d1, d0
0011fc: 206f000c     movea.l    $c(a7), a0
001200: 2080         move.l     d0, (a0)
001202: 4280         clr.l      d0
001204: 4cdf0500     movem.l    (a7)+, a0/a2
001208: 4e75         rts        
00120a: 2f0a         move.l     a2, -(a7)
00120c: 2441         movea.l    d1, a2
00120e: 4e40         trap       #$0
001210: 0029245f6504 ori.b      #$5f, $6504(a1)
001216: 4280         clr.l      d0
001218: 4e75         rts        
00121a: 4280         clr.l      d0
00121c: 3001         move.w     d1, d0
00121e: 4e75         rts        
001220: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
001224: 242f001c     move.l     $1c(a7), d2
001228: 262f0020     move.l     $20(a7), d3
00122c: 282f0024     move.l     $24(a7), d4
001230: 206f0028     movea.l    $28(a7), a0
001234: 226f002c     movea.l    $2c(a7), a1
001238: 4e40         trap       #$0
00123a: 00036506     ori.b      #$6, d3
00123e: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
001242: 4e75         rts        
001244: 4280         clr.l      d0
001246: 60f6         bra.b      $123e
001248: 48e74000     movem.l    d1, -(a7)
00124c: 4e40         trap       #$0
00124e: 0008         .dc.w      $0008
001250: 600000be     bra.w      $1310
001254: 48e76000     movem.l    d1-d2, -(a7)
001258: 008180000000 ori.l      #$80000000, d1
00125e: 4e40         trap       #$0
001260: 00276000     ori.b      #$0, -(a7)
001264: 00a248e76000 ori.l      #$48e76000, -(a2)
00126a: 242f000c     move.l     $c(a7), d2
00126e: 4e40         trap       #$0
001270: 00276000     ori.b      #$0, -(a7)
001274: 009248e74000 ori.l      #$48e74000, (a2)
00127a: e180         asl.l      #$8, d0
00127c: 008080000000 ori.l      #$80000000, d0
001282: 4e40         trap       #$0
001284: 000a         .dc.w      $000a
001286: 60000092     bra.w      $131a
00128a: 48e74000     movem.l    d1, -(a7)
00128e: 4e40         trap       #$0
001290: 000a         .dc.w      $000a
001292: 60000086     bra.w      $131a
001296: 48e74080     movem.l    d1/a0, -(a7)
00129a: 2040         movea.l    d0, a0
00129c: 2001         move.l     d1, d0
00129e: 222f000c     move.l     $c(a7), d1
0012a2: 4e40         trap       #$0
0012a4: 0017607a     ori.b      #$7a, (a7)
0012a8: 48e77080     movem.l    d1-d3/a0, -(a7)
0012ac: 2041         movea.l    d1, a0
0012ae: 4e40         trap       #$0
0012b0: 0015651c     ori.b      #$1c, (a5)
0012b4: 2080         move.l     d0, (a0)
0012b6: 206f0014     movea.l    $14(a7), a0
0012ba: 2081         move.l     d1, (a0)
0012bc: 206f0018     movea.l    $18(a7), a0
0012c0: 3082         move.w     d2, (a0)
0012c2: 206f001c     movea.l    $1c(a7), a0
0012c6: 2083         move.l     d3, (a0)
0012c8: 4280         clr.l      d0
0012ca: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0012ce: 4e75         rts        
0012d0: 4280         clr.l      d0
0012d2: 3001         move.w     d1, d0
0012d4: 60f4         bra.b      $12ca
0012d6: 48e77000     movem.l    d1-d3, -(a7)
0012da: 7003         moveq      #$3, d0
0012dc: 4e40         trap       #$0
0012de: 0015604c     ori.b      #$4c, (a5)
0012e2: 48e77000     movem.l    d1-d3, -(a7)
0012e6: 7000         moveq      #$0, d0
0012e8: 4e40         trap       #$0
0012ea: 0015604c     ori.b      #$4c, (a5)
0012ee: 48e77000     movem.l    d1-d3, -(a7)
0012f2: 7000         moveq      #$0, d0
0012f4: 4e40         trap       #$0
0012f6: 00156048     ori.b      #$48, (a5)
0012fa: 48e77000     movem.l    d1-d3, -(a7)
0012fe: 7000         moveq      #$0, d0
001300: 4e40         trap       #$0
001302: 00156040     ori.b      #$40, (a5)
001306: 6544         bcs.b      $134c
001308: 2002         move.l     d2, d0
00130a: 4cdf0006     movem.l    (a7)+, d1-d2
00130e: 4e75         rts        
001310: 654a         bcs.b      $135c
001312: 4280         clr.l      d0
001314: 4cdf0002     movem.l    (a7)+, d1
001318: 4e75         rts        
00131a: 6540         bcs.b      $135c
00131c: 4cdf0002     movem.l    (a7)+, d1
001320: 4e75         rts        
001322: 6530         bcs.b      $1354
001324: 2f41000c     move.l     d1, $c(a7)
001328: 4cdf0102     movem.l    (a7)+, d1/a0
00132c: 4e75         rts        
00132e: 6534         bcs.b      $1364
001330: 4280         clr.l      d0
001332: 3003         move.w     d3, d0
001334: 4cdf000e     movem.l    (a7)+, d1-d3
001338: 4e75         rts        
00133a: 6528         bcs.b      $1364
00133c: 4280         clr.l      d0
00133e: 3002         move.w     d2, d0
001340: 60f2         bra.b      $1334
001342: 6520         bcs.b      $1364
001344: 60ee         bra.b      $1334
001346: 651c         bcs.b      $1364
001348: 2001         move.l     d1, d0
00134a: 60e8         bra.b      $1334
00134c: 203cffffffff move.l     #$ffffffff, d0
001352: 60b6         bra.b      $130a
001354: 4280         clr.l      d0
001356: 3001         move.w     d1, d0
001358: 4480         neg.l      d0
00135a: 60cc         bra.b      $1328
00135c: 4280         clr.l      d0
00135e: 3001         move.w     d1, d0
001360: 4480         neg.l      d0
001362: 60b0         bra.b      $1314
001364: 4280         clr.l      d0
001366: 3001         move.w     d1, d0
001368: 4480         neg.l      d0
00136a: 60c8         bra.b      $1334
00136c: 48e76000     movem.l    d1-d2, -(a7)
001370: 40c1         move.w     sr, d1
001372: 3401         move.w     d1, d2
001374: c27cf8ff     and.w      #$f8ff, d1
001378: 8240         or.w       d0, d1
00137a: 46c1         move.w     d1, sr
00137c: 028200000700 andi.l     #$700, d2
001382: 2002         move.l     d2, d0
001384: 4cdf0006     movem.l    (a7)+, d1-d2
001388: 4e75         rts        
00138a: 48e73800     movem.l    d2-d4, -(a7)
00138e: 2400         move.l     d0, d2
001390: 2600         move.l     d0, d3
001392: 4843         swap       d3
001394: 2801         move.l     d1, d4
001396: 4844         swap       d4
001398: c0c1         mulu.w     d1, d0
00139a: c2c3         mulu.w     d3, d1
00139c: c4c4         mulu.w     d4, d2
00139e: c6c4         mulu.w     d4, d3
0013a0: 4840         swap       d0
0013a2: d041         add.w      d1, d0
0013a4: 7800         moveq      #$0, d4
0013a6: d784         addx.l     d4, d3
0013a8: d042         add.w      d2, d0
0013aa: d784         addx.l     d4, d3
0013ac: 4840         swap       d0
0013ae: 4241         clr.w      d1
0013b0: 4841         swap       d1
0013b2: 4242         clr.w      d2
0013b4: 4842         swap       d2
0013b6: d282         add.l      d2, d1
0013b8: d283         add.l      d3, d1
0013ba: 4a80         tst.l      d0
0013bc: 4cdf001c     movem.l    (a7)+, d2-d4
0013c0: 4e75         rts        
0013c2: 2f02         move.l     d2, -(a7)
0013c4: 7400         moveq      #$0, d2
0013c6: 4a80         tst.l      d0
0013c8: 6a04         bpl.b      $13ce
0013ca: 4480         neg.l      d0
0013cc: 7403         moveq      #$3, d2
0013ce: 4a81         tst.l      d1
0013d0: 6a06         bpl.b      $13d8
0013d2: 4481         neg.l      d1
0013d4: 0a020001     eori.b     #$1, d2
0013d8: 6122         bsr.b      $13fc
0013da: e20a         lsr.b      #$1, d2
0013dc: 6402         bcc.b      $13e0
0013de: 4480         neg.l      d0
0013e0: e20a         lsr.b      #$1, d2
0013e2: 6402         bcc.b      $13e6
0013e4: 4481         neg.l      d1
0013e6: 241f         move.l     (a7)+, d2
0013e8: 4a80         tst.l      d0
0013ea: 4e75         rts        
0013ec: 61d4         bsr.b      $13c2
0013ee: c141         exg.l      d0, d1
0013f0: 4a80         tst.l      d0
0013f2: 4e75         rts        
0013f4: 6106         bsr.b      $13fc
0013f6: c141         exg.l      d0, d1
0013f8: 4a80         tst.l      d0
0013fa: 4e75         rts        
0013fc: 48e73800     movem.l    d2-d4, -(a7)
001400: 2401         move.l     d1, d2
001402: 6606         bne.b      $140a
001404: 81fc0000     divs.w     #$0, d0
001408: 606e         bra.b      $1478
00140a: 5381         subq.l     #$1, d1
00140c: 676a         beq.b      $1478
00140e: 2801         move.l     d1, d4
001410: 2200         move.l     d0, d1
001412: b481         cmp.l      d1, d2
001414: 650c         bcs.b      $1422
001416: 6704         beq.b      $141c
001418: 7000         moveq      #$0, d0
00141a: 605c         bra.b      $1478
00141c: 7001         moveq      #$1, d0
00141e: 9282         sub.l      d2, d1
001420: 6056         bra.b      $1478
001422: 2602         move.l     d2, d3
001424: 6bf6         bmi.b      $141c
001426: c684         and.l      d4, d3
001428: 6612         bne.b      $143c
00142a: e28a         lsr.l      #$1, d2
00142c: 76ff         moveq      #$ff, d3
00142e: e28a         lsr.l      #$1, d2
001430: 55cbfffc     dbcs       d3, $142e
001434: 4483         neg.l      d3
001436: e6a8         lsr.l      d3, d0
001438: c284         and.l      d4, d1
00143a: 603c         bra.b      $1478
00143c: 7000         moveq      #$0, d0
00143e: 76ff         moveq      #$ff, d3
001440: e382         asl.l      #$1, d2
001442: 6a06         bpl.b      $144a
001444: b481         cmp.l      d1, d2
001446: 620a         bhi.b      $1452
001448: 600c         bra.b      $1456
00144a: b481         cmp.l      d1, d2
00144c: 54cbfff2     dbcc       d3, $1440
001450: 6704         beq.b      $1456
001452: 5283         addq.l     #$1, d3
001454: e28a         lsr.l      #$1, d2
001456: 4483         neg.l      d3
001458: 6004         bra.b      $145e
00145a: e380         asl.l      #$1, d0
00145c: e28a         lsr.l      #$1, d2
00145e: 9282         sub.l      d2, d1
001460: 6510         bcs.b      $1472
001462: 5280         addq.l     #$1, d0
001464: 51cbfff4     dbra       d3, $145a
001468: 600e         bra.b      $1478
00146a: e380         asl.l      #$1, d0
00146c: e28a         lsr.l      #$1, d2
00146e: d282         add.l      d2, d1
001470: 65f0         bcs.b      $1462
001472: 51cbfff6     dbra       d3, $146a
001476: d282         add.l      d2, d1
001478: 4cdf001c     movem.l    (a7)+, d2-d4
00147c: 4a80         tst.l      d0
00147e: 4e75         rts        
001480: 685f         bvc.b      $14e1
001482: 6974         bvs.b      $14f8
001484: 635f         bls.b      $14e5
001486: 6472         bcc.b      $14fa
001488: 000000d5     ori.b      #$d5, d0
00148c: ad1a         dc.w       $ad1a
