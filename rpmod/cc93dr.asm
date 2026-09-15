00003c: 00640080     ori.w      #$80, -(a4)
000040: 009600ac00c0 ori.l      #$ac00c0, (a6)
000046: 0072011206e2 ori.w      #$112, -$1e(a2, d0.w)
00004c: 0700         btst.l     d3, d0
00004e: 072c0d06     btst.l     d3, $d06(a4)
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
000078: 610012ac     bsr.w      $1326
00007c: 588f         addq.l     #$4, a7
00007e: 60d2         bra.b      $52
000080: 2f02         move.l     d2, -(a7)
000082: 2f00         move.l     d0, -(a7)
000084: 2f0d         move.l     a5, -(a7)
000086: 2f0c         move.l     a4, -(a7)
000088: 220a         move.l     a2, d1
00008a: 2009         move.l     a1, d0
00008c: 61000654     bsr.w      $6e2
000090: 4fef0010     lea.l      $10(a7), a7
000094: 60bc         bra.b      $52
000096: 2f02         move.l     d2, -(a7)
000098: 2f00         move.l     d0, -(a7)
00009a: 2f0d         move.l     a5, -(a7)
00009c: 2f0c         move.l     a4, -(a7)
00009e: 220a         move.l     a2, d1
0000a0: 2009         move.l     a1, d0
0000a2: 6100065c     bsr.w      $700
0000a6: 4fef0010     lea.l      $10(a7), a7
0000aa: 60a6         bra.b      $52
0000ac: 2f00         move.l     d0, -(a7)
0000ae: 2f0d         move.l     a5, -(a7)
0000b0: 2f0c         move.l     a4, -(a7)
0000b2: 220a         move.l     a2, d1
0000b4: 2009         move.l     a1, d0
0000b6: 61000674     bsr.w      $72c
0000ba: 4fef000c     lea.l      $c(a7), a7
0000be: 6092         bra.b      $52
0000c0: 2f00         move.l     d0, -(a7)
0000c2: 2f0d         move.l     a5, -(a7)
0000c4: 2f0c         move.l     a4, -(a7)
0000c6: 220a         move.l     a2, d1
0000c8: 2009         move.l     a1, d0
0000ca: 61000c3a     bsr.w      $d06
0000ce: 4fef000c     lea.l      $c(a7), a7
0000d2: 6000ff7e     bra.w      $52
0000d6: 2f0e         move.l     a6, -(a7)
0000d8: 220b         move.l     a3, d1
0000da: 200a         move.l     a2, d0
0000dc: 61000302     bsr.w      $3e0
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
0000fe: 610005aa     bsr.w      $6aa
000102: 0c80ffffffff cmpi.l     #$ffffffff, d0
000108: 67e6         beq.b      $f0
00010a: 588f         addq.l     #$4, a7
00010c: 023c         .dc.w      $023c
00010e: fffe         dc.w       $fffe
000110: 4e75         rts        
000112: 4e75         rts        
000114: 4e550000     link.w     a5, #$0
000118: 48e7c0f0     movem.l    d0-d1/a0-a3, -(a7)
00011c: 2441         movea.l    d1, a2
00011e: 518f         subq.l     #$8, a7
000120: 266f0008     movea.l    $8(a7), a3
000124: 2f4a0004     move.l     a2, $4(a7)
000128: 7074         moveq      #$74, d0
00012a: d0af0004     add.l      $4(a7), d0
00012e: 2200         move.l     d0, d1
000130: 7070         moveq      #$70, d0
000132: d0af0004     add.l      $4(a7), d0
000136: 61ff00002a50 bsr.l      $2b88
00013c: 206f0004     movea.l    $4(a7), a0
000140: 116b0048002e move.b     $48(a3), $2e(a0)
000146: 7202         moveq      #$2, d1
000148: 7028         moveq      #$28, d0
00014a: 61ff00002d68 bsr.l      $2eb4
000150: 2e80         move.l     d0, (a7)
000152: 72ff         moveq      #$ff, d1
000154: b280         cmp.l      d0, d1
000156: 66ff0000000e bne.l      $166
00015c: 70ff         moveq      #$ff, d0
00015e: 508f         addq.l     #$8, a7
000160: 60ff00000274 bra.l      $3d6
000166: 206f0004     movea.l    $4(a7), a0
00016a: 2157005c     move.l     (a7), $5c(a0)
00016e: 202b004a     move.l     $4a(a3), d0
000172: 4c170000     mulu.l     (a7), d0
000176: 4c7c0000000003e8 divu.l     #$3e8, d0
00017e: 206f0004     movea.l    $4(a7), a0
000182: 21400050     move.l     d0, $50(a0)
000186: 202b004e     move.l     $4e(a3), d0
00018a: 4c170000     mulu.l     (a7), d0
00018e: 206f0004     movea.l    $4(a7), a0
000192: 21400054     move.l     d0, $54(a0)
000196: 202b0052     move.l     $52(a3), d0
00019a: 4c170000     mulu.l     (a7), d0
00019e: 206f0004     movea.l    $4(a7), a0
0001a2: 21400058     move.l     d0, $58(a0)
0001a6: 203c000001f4 move.l     #$1f4, d0
0001ac: 4c170000     mulu.l     (a7), d0
0001b0: 4c7c0000000003e8 divu.l     #$3e8, d0
0001b8: 206f0004     movea.l    $4(a7), a0
0001bc: 21400048     move.l     d0, $48(a0)
0001c0: 60ff000000b4 bra.l      $276
0001c6: 41fb017000002ec2 lea.l      $2ec2(a16, invalid.w), a0
0001ce: 226f0004     movea.l    $4(a7), a1
0001d2: 2348003a     move.l     a0, $3a(a1)
0001d6: 60ff000000da bra.l      $2b2
0001dc: 41fb017000002eba lea.l      $2eba(a16, invalid.w), a0
0001e4: 226f0004     movea.l    $4(a7), a1
0001e8: 2348003a     move.l     a0, $3a(a1)
0001ec: 60ff000000c4 bra.l      $2b2
0001f2: 41fb017000002eb6 lea.l      $2eb6(a16, invalid.w), a0
0001fa: 226f0004     movea.l    $4(a7), a1
0001fe: 2348003a     move.l     a0, $3a(a1)
000202: 60ff000000ae bra.l      $2b2
000208: 41fb017000002eb2 lea.l      $2eb2(a16, invalid.w), a0
000210: 226f0004     movea.l    $4(a7), a1
000214: 2348003a     move.l     a0, $3a(a1)
000218: 60ff00000098 bra.l      $2b2
00021e: 41fb017000002eae lea.l      $2eae(a16, invalid.w), a0
000226: 226f0004     movea.l    $4(a7), a1
00022a: 2348003a     move.l     a0, $3a(a1)
00022e: 60ff00000082 bra.l      $2b2
000234: 41fb017000002eaa lea.l      $2eaa(a16, invalid.w), a0
00023c: 226f0004     movea.l    $4(a7), a1
000240: 2348003a     move.l     a0, $3a(a1)
000244: 60ff0000006c bra.l      $2b2
00024a: 41fb017000002ea6 lea.l      $2ea6(a16, invalid.w), a0
000252: 226f0004     movea.l    $4(a7), a1
000256: 2348003a     move.l     a0, $3a(a1)
00025a: 60ff00000056 bra.l      $2b2
000260: 41fb017000002ea2 lea.l      $2ea2(a16, invalid.w), a0
000268: 226f0004     movea.l    $4(a7), a1
00026c: 2348003a     move.l     a0, $3a(a1)
000270: 60ff00000040 bra.l      $2b2
000276: 206f0008     movea.l    $8(a7), a0
00027a: 7000         moveq      #$0, d0
00027c: 10280035     move.b     $35(a0), d0
000280: 0c400007     cmpi.w     #$7, d0
000284: 62ff0000002c bhi.l      $2b2
00028a: 203b0406     move.l     $292(pc, d0.w), d0
00028e: 4efb0802     jmp        $292(pc, d0.l)
000292: ffff         dc.w       $ffff
000294: ff34ffffff4affff fsave      ([$ff4affff])
00029c: ff60         dc.w       $ff60
00029e: ffff         dc.w       $ffff
0002a0: ff76ffffff8cffff frestore   ([$ff8cffff])
0002a8: ffa2         dc.w       $ffa2
0002aa: ffff         dc.w       $ffff
0002ac: ffb8         dc.w       $ffb8
0002ae: ffff         dc.w       $ffff
0002b0: ffce         dc.w       $ffce
0002b2: 206f0004     movea.l    $4(a7), a0
0002b6: 117c0001003e move.b     #$1, $3e(a0)
0002bc: 206f0004     movea.l    $4(a7), a0
0002c0: 217c000000010060 move.l     #$1, $60(a0)
0002c8: 206f0004     movea.l    $4(a7), a0
0002cc: 4228003f     clr.b      $3f(a0)
0002d0: 206f0004     movea.l    $4(a7), a0
0002d4: 42280046     clr.b      $46(a0)
0002d8: 7068         moveq      #$68, d0
0002da: d0af0004     add.l      $4(a7), d0
0002de: 61ff00002282 bsr.l      $2562
0002e4: 4a80         tst.l      d0
0002e6: 67ff00000012 beq.l      $2fa
0002ec: 203cfffffee9 move.l     #$fffffee9, d0
0002f2: 508f         addq.l     #$8, a7
0002f4: 60ff000000e0 bra.l      $3d6
0002fa: 706c         moveq      #$6c, d0
0002fc: d0af0004     add.l      $4(a7), d0
000300: 61ff00002260 bsr.l      $2562
000306: 4a80         tst.l      d0
000308: 67ff00000012 beq.l      $31c
00030e: 203cfffffee9 move.l     #$fffffee9, d0
000314: 508f         addq.l     #$8, a7
000316: 60ff000000be bra.l      $3d6
00031c: 206f0004     movea.l    $4(a7), a0
000320: 48680030     pea.l      $30(a0)
000324: 41ee07c4     lea.l      $7c4(a6), a0
000328: 2208         move.l     a0, d1
00032a: 2012         move.l     (a2), d0
00032c: 61ff00002ca4 bsr.l      $2fd2
000332: 588f         addq.l     #$4, a7
000334: 206f0004     movea.l    $4(a7), a0
000338: 217c001000000078 move.l     #$100000, $78(a0)
000340: 206f0004     movea.l    $4(a7), a0
000344: 217c00002000007c move.l     #$2000, $7c(a0)
00034c: 206f0004     movea.l    $4(a7), a0
000350: 42a80080     clr.l      $80(a0)
000354: 206f0008     movea.l    $8(a7), a0
000358: 2f280030     move.l     $30(a0), -(a7)
00035c: 4852         pea.l      (a2)
00035e: 487b0170fffffd76 pea.l      $fffffd76(a16, invalid.w)
000366: 206f0014     movea.l    $14(a7), a0
00036a: 7000         moveq      #$0, d0
00036c: 10280036     move.b     $36(a0), d0
000370: 2200         move.l     d0, d1
000372: 206f0014     movea.l    $14(a7), a0
000376: 7000         moveq      #$0, d0
000378: 10280034     move.b     $34(a0), d0
00037c: 61ff000029f8 bsr.l      $2d76
000382: 4fef000c     lea.l      $c(a7), a7
000386: 4a80         tst.l      d0
000388: 67ff0000000e beq.l      $398
00038e: 70ff         moveq      #$ff, d0
000390: 508f         addq.l     #$8, a7
000392: 60ff00000042 bra.l      $3d6
000398: 206f0008     movea.l    $8(a7), a0
00039c: 2f280030     move.l     $30(a0), -(a7)
0003a0: 4852         pea.l      (a2)
0003a2: 487b0170fffffd54 pea.l      $fffffd54(a16, invalid.w)
0003aa: 7200         moveq      #$0, d1
0003ac: 701f         moveq      #$1f, d0
0003ae: 61ff000029c6 bsr.l      $2d76
0003b4: 4fef000c     lea.l      $c(a7), a7
0003b8: 4a80         tst.l      d0
0003ba: 67ff0000000e beq.l      $3ca
0003c0: 70ff         moveq      #$ff, d0
0003c2: 508f         addq.l     #$8, a7
0003c4: 60ff00000010 bra.l      $3d6
0003ca: 7000         moveq      #$0, d0
0003cc: 508f         addq.l     #$8, a7
0003ce: 60ff00000006 bra.l      $3d6
0003d4: 4e71         nop        
0003d6: 4ced0f00fff0 movem.l    -$10(a5), a0-a3
0003dc: 4e5d         unlk       a5
0003de: 4e75         rts        
0003e0: 4e550000     link.w     a5, #$0
0003e4: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
0003e8: 2440         movea.l    d0, a2
0003ea: 5d8f         subq.l     #$6, a7
0003ec: 264a         movea.l    a2, a3
0003ee: 4a2b003f     tst.b      $3f(a3)
0003f2: 67ff000000a8 beq.l      $49c
0003f8: 202b004c     move.l     $4c(a3), d0
0003fc: 53ab004c     subq.l     #$1, $4c(a3)
000400: 4a80         tst.l      d0
000402: 66ff00000098 bne.l      $49c
000408: 4a2b0046     tst.b      $46(a3)
00040c: 67ff00000018 beq.l      $426
000412: 422b0046     clr.b      $46(a3)
000416: 206b0030     movea.l    $30(a3), a0
00041a: 117c0002000e move.b     #$2, $e(a0)
000420: 60ff00000014 bra.l      $436
000426: 177c00010046 move.b     #$1, $46(a3)
00042c: 206b0030     movea.l    $30(a3), a0
000430: 117c0002000f move.b     #$2, $f(a0)
000436: 276b0048004c move.l     $48(a3), $4c(a3)
00043c: 4a2b0040     tst.b      $40(a3)
000440: 66ff0000000e bne.l      $450
000446: 4a2b0041     tst.b      $41(a3)
00044a: 67ff00000014 beq.l      $460
000450: 202b004c     move.l     $4c(a3), d0
000454: 4c7c000000000003 divu.l     #$3, d0
00045c: 2740004c     move.l     d0, $4c(a3)
000460: 4a2b0041     tst.b      $41(a3)
000464: 67ff00000036 beq.l      $49c
00046a: 202b0042     move.l     $42(a3), d0
00046e: 53ab0042     subq.l     #$1, $42(a3)
000472: 4a80         tst.l      d0
000474: 6eff00000026 bgt.l      $49c
00047a: 4a2b0046     tst.b      $46(a3)
00047e: 66ff0000001c bne.l      $49c
000484: 202b004c     move.l     $4c(a3), d0
000488: 4c3c000000000006 mulu.l     #$6, d0
000490: 2740004c     move.l     d0, $4c(a3)
000494: 277c000000050042 move.l     #$5, $42(a3)
00049c: 7006         moveq      #$6, d0
00049e: b0ab0060     cmp.l      $60(a3), d0
0004a2: 67ff000000ec beq.l      $590
0004a8: 4a2b003e     tst.b      $3e(a3)
0004ac: 67ff00000018 beq.l      $4c6
0004b2: 206b0030     movea.l    $30(a3), a0
0004b6: 117c0001000f move.b     #$1, $f(a0)
0004bc: 422b003e     clr.b      $3e(a3)
0004c0: 60ff00000014 bra.l      $4d6
0004c6: 206b0030     movea.l    $30(a3), a0
0004ca: 117c0001000e move.b     #$1, $e(a0)
0004d0: 177c0001003e move.b     #$1, $3e(a3)
0004d6: 7001         moveq      #$1, d0
0004d8: b0ab0060     cmp.l      $60(a3), d0
0004dc: 66ff00000022 bne.l      $500
0004e2: 206b0030     movea.l    $30(a3), a0
0004e6: 08280000000d btst.b     #$0, $d(a0)
0004ec: 67ff00000012 beq.l      $500
0004f2: 277c000000020060 move.l     #$2, $60(a3)
0004fa: 276b00500064 move.l     $50(a3), $64(a3)
000500: 7002         moveq      #$2, d0
000502: b0ab0060     cmp.l      $60(a3), d0
000506: 67ff0000001c beq.l      $524
00050c: 7003         moveq      #$3, d0
00050e: b0ab0060     cmp.l      $60(a3), d0
000512: 67ff00000010 beq.l      $524
000518: 7004         moveq      #$4, d0
00051a: b0ab0060     cmp.l      $60(a3), d0
00051e: 66ff00000070 bne.l      $590
000524: 206b0030     movea.l    $30(a3), a0
000528: 08280000000d btst.b     #$0, $d(a0)
00052e: 66ff00000060 bne.l      $590
000534: 7004         moveq      #$4, d0
000536: b0ab0060     cmp.l      $60(a3), d0
00053a: 66ff0000004c bne.l      $588
000540: 202b006c     move.l     $6c(a3), d0
000544: 61ff00002096 bsr.l      $25dc
00054a: 60ff0000001a bra.l      $566
000550: 3057         movea.w    (a7), a0
000552: 2208         move.l     a0, d1
000554: 202f0002     move.l     $2(a7), d0
000558: 61ff0000294e bsr.l      $2ea8
00055e: 277c000000010060 move.l     #$1, $60(a3)
000566: 4857         pea.l      (a7)
000568: 41ef0006     lea.l      $6(a7), a0
00056c: 2208         move.l     a0, d1
00056e: 202b006c     move.l     $6c(a3), d0
000572: 61ff00002248 bsr.l      $27bc
000578: 588f         addq.l     #$4, a7
00057a: 4a80         tst.l      d0
00057c: 67ffffffffd2 beq.l      $550
000582: 60ff0000000c bra.l      $590
000588: 277c000000010060 move.l     #$1, $60(a3)
000590: 7001         moveq      #$1, d0
000592: b0ab0060     cmp.l      $60(a3), d0
000596: 66ff0000000e bne.l      $5a6
00059c: 70ff         moveq      #$ff, d0
00059e: 5c8f         addq.l     #$6, a7
0005a0: 60ff000000fe bra.l      $6a0
0005a6: 60ff000000be bra.l      $666
0005ac: 202b0064     move.l     $64(a3), d0
0005b0: 53ab0064     subq.l     #$1, $64(a3)
0005b4: 4a80         tst.l      d0
0005b6: 66ff00000012 bne.l      $5ca
0005bc: 277c000000030060 move.l     #$3, $60(a3)
0005c4: 276b00540064 move.l     $54(a3), $64(a3)
0005ca: 60ff000000c8 bra.l      $694
0005d0: 202b0064     move.l     $64(a3), d0
0005d4: 53ab0064     subq.l     #$1, $64(a3)
0005d8: 4a80         tst.l      d0
0005da: 66ff0000004c bne.l      $628
0005e0: 202b0068     move.l     $68(a3), d0
0005e4: 61ff00001ff6 bsr.l      $25dc
0005ea: 60ff00000012 bra.l      $5fe
0005f0: 3057         movea.w    (a7), a0
0005f2: 2208         move.l     a0, d1
0005f4: 202f0002     move.l     $2(a7), d0
0005f8: 61ff000028ae bsr.l      $2ea8
0005fe: 4857         pea.l      (a7)
000600: 41ef0006     lea.l      $6(a7), a0
000604: 2208         move.l     a0, d1
000606: 202b0068     move.l     $68(a3), d0
00060a: 61ff000021b0 bsr.l      $27bc
000610: 588f         addq.l     #$4, a7
000612: 4a80         tst.l      d0
000614: 67ffffffffda beq.l      $5f0
00061a: 277c000000040060 move.l     #$4, $60(a3)
000622: 276b00580064 move.l     $58(a3), $64(a3)
000628: 60ff0000006a bra.l      $694
00062e: 202b0064     move.l     $64(a3), d0
000632: 53ab0064     subq.l     #$1, $64(a3)
000636: 4a80         tst.l      d0
000638: 66ff0000000c bne.l      $646
00063e: 277c000000060060 move.l     #$6, $60(a3)
000646: 60ff0000004c bra.l      $694
00064c: 61ff000021ea bsr.l      $2838
000652: 08f9000700c0000f bset.b     #$7, $c0000f.l
00065a: 60ff00000038 bra.l      $694
000660: 60ff00000032 bra.l      $694
000666: 202b0060     move.l     $60(a3), d0
00066a: 5580         subq.l     #$2, d0
00066c: 0c8000000004 cmpi.l     #$4, d0
000672: 62ffffffffec bhi.l      $660
000678: 203b0406     move.l     $680(pc, d0.w), d0
00067c: 4efb0802     jmp        $680(pc, d0.l)
000680: ffff         dc.w       $ffff
000682: ff2cffff     fsave      -$1(a4)
000686: ff50         frestore   (a0)
000688: ffff         dc.w       $ffff
00068a: ffae         dc.w       $ffae
00068c: ffff         dc.w       $ffff
00068e: ffe0         dc.w       $ffe0
000690: ffff         dc.w       $ffff
000692: ffcc         dc.w       $ffcc
000694: 70ff         moveq      #$ff, d0
000696: 5c8f         addq.l     #$6, a7
000698: 60ff00000006 bra.l      $6a0
00069e: 4e71         nop        
0006a0: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
0006a6: 4e5d         unlk       a5
0006a8: 4e75         rts        
0006aa: 4e550000     link.w     a5, #$0
0006ae: 48e7c020     movem.l    d0-d1/a2, -(a7)
0006b2: 2440         movea.l    d0, a2
0006b4: 203c00075300 move.l     #$75300, d0
0006ba: 61ff000021a8 bsr.l      $2864
0006c0: 61ff00002176 bsr.l      $2838
0006c6: 08f9000700c0000f bset.b     #$7, $c0000f.l
0006ce: 7000         moveq      #$0, d0
0006d0: 60ff00000006 bra.l      $6d8
0006d6: 4e71         nop        
0006d8: 4ced0400fffc movem.l    -$4(a5), a2
0006de: 4e5d         unlk       a5
0006e0: 4e75         rts        
0006e2: 4e550000     link.w     a5, #$0
0006e6: 48e7c020     movem.l    d0-d1/a2, -(a7)
0006ea: 2441         movea.l    d1, a2
0006ec: 70ff         moveq      #$ff, d0
0006ee: 60ff00000006 bra.l      $6f6
0006f4: 4e71         nop        
0006f6: 4ced0400fffc movem.l    -$4(a5), a2
0006fc: 4e5d         unlk       a5
0006fe: 4e75         rts        
000700: 4e550000     link.w     a5, #$0
000704: 48e7cc38     movem.l    d0-d1/d4-d5/a2-a4, -(a7)
000708: 2440         movea.l    d0, a2
00070a: 2641         movea.l    d1, a3
00070c: 286f0028     movea.l    $28(a7), a4
000710: 282f002c     move.l     $2c(a7), d4
000714: 2a2f0030     move.l     $30(a7), d5
000718: 70ff         moveq      #$ff, d0
00071a: 60ff00000006 bra.l      $722
000720: 4e71         nop        
000722: 4ced1c30ffec movem.l    -$14(a5), d4-d5/a2-a4
000728: 4e5d         unlk       a5
00072a: 4e75         rts        
00072c: 4e550000     link.w     a5, #$0
000730: 48e7c0f8     movem.l    d0-d1/a0-a4, -(a7)
000734: 2440         movea.l    d0, a2
000736: 2641         movea.l    d1, a3
000738: 4fefffea     lea.l      -$16(a7), a7
00073c: 42af000e     clr.l      $e(a7)
000740: 284b         movea.l    a3, a4
000742: 206f003e     movea.l    $3e(a7), a0
000746: 2f6800200012 move.l     $20(a0), $12(a7)
00074c: 60ff00000374 bra.l      $ac2
000752: 41fb017000002144 lea.l      $2144(a16, invalid.w), a0
00075a: 226f0012     movea.l    $12(a7), a1
00075e: 2288         move.l     a0, (a1)
000760: 60ff0000058a bra.l      $cec
000766: 70ff         moveq      #$ff, d0
000768: 2f40000e     move.l     d0, $e(a7)
00076c: 206f003a     movea.l    $3a(a7), a0
000770: 7000         moveq      #$0, d0
000772: 3010         move.w     (a0), d0
000774: 2f400006     move.l     d0, $6(a7)
000778: 222f0006     move.l     $6(a7), d1
00077c: 202c0068     move.l     $68(a4), d0
000780: 61ff00001f2e bsr.l      $26b0
000786: 3e80         move.w     d0, (a7)
000788: 0c40ffff     cmpi.w     #$ffff, d0
00078c: 67ff00000010 beq.l      $79e
000792: 3057         movea.w    (a7), a0
000794: 226f0012     movea.l    $12(a7), a1
000798: 2288         move.l     a0, (a1)
00079a: 42af000e     clr.l      $e(a7)
00079e: 60ff0000054c bra.l      $cec
0007a4: 70ff         moveq      #$ff, d0
0007a6: 2f40000e     move.l     d0, $e(a7)
0007aa: 206f003a     movea.l    $3a(a7), a0
0007ae: 7000         moveq      #$0, d0
0007b0: 3010         move.w     (a0), d0
0007b2: 2f400006     move.l     d0, $6(a7)
0007b6: 222f0006     move.l     $6(a7), d1
0007ba: 202c006c     move.l     $6c(a4), d0
0007be: 61ff00001ef0 bsr.l      $26b0
0007c4: 3e80         move.w     d0, (a7)
0007c6: 0c40ffff     cmpi.w     #$ffff, d0
0007ca: 67ff00000010 beq.l      $7dc
0007d0: 3057         movea.w    (a7), a0
0007d2: 226f0012     movea.l    $12(a7), a1
0007d6: 2288         move.l     a0, (a1)
0007d8: 42af000e     clr.l      $e(a7)
0007dc: 60ff0000050e bra.l      $cec
0007e2: 206c0030     movea.l    $30(a4), a0
0007e6: 08280000000d btst.b     #$0, $d(a0)
0007ec: 67ff00000014 beq.l      $802
0007f2: 206f0012     movea.l    $12(a7), a0
0007f6: 20bc00000001 move.l     #$1, (a0)
0007fc: 60ff0000000a bra.l      $808
000802: 206f0012     movea.l    $12(a7), a0
000806: 4290         clr.l      (a0)
000808: 60ff000004e2 bra.l      $cec
00080e: 206c003a     movea.l    $3a(a4), a0
000812: 4e90         jsr        (a0)
000814: 2f40000a     move.l     d0, $a(a7)
000818: 2f6c0060000e move.l     $60(a4), $e(a7)
00081e: 7002         moveq      #$2, d0
000820: b0af000e     cmp.l      $e(a7), d0
000824: 67ff0000001c beq.l      $842
00082a: 7003         moveq      #$3, d0
00082c: b0af000e     cmp.l      $e(a7), d0
000830: 67ff00000010 beq.l      $842
000836: 7004         moveq      #$4, d0
000838: b0af000e     cmp.l      $e(a7), d0
00083c: 66ff0000001a bne.l      $858
000842: 202c0064     move.l     $64(a4), d0
000846: 4c6c0000005c divu.l     $5c(a4), d0
00084c: 206f0012     movea.l    $12(a7), a0
000850: 2080         move.l     d0, (a0)
000852: 60ff0000000a bra.l      $85e
000858: 206f0012     movea.l    $12(a7), a0
00085c: 4290         clr.l      (a0)
00085e: 202f000a     move.l     $a(a7), d0
000862: 61ff00002814 bsr.l      $3078
000868: 60ff00000482 bra.l      $cec
00086e: 202c0054     move.l     $54(a4), d0
000872: 4c6c0000005c divu.l     $5c(a4), d0
000878: 206f0012     movea.l    $12(a7), a0
00087c: 2080         move.l     d0, (a0)
00087e: 60ff0000046c bra.l      $cec
000884: 202c0080     move.l     $80(a4), d0
000888: 5280         addq.l     #$1, d0
00088a: 4c3c000000001fff mulu.l     #$1fff, d0
000892: 206c0078     movea.l    $78(a4), a0
000896: 7200         moveq      #$0, d1
000898: 12300800     move.b     (a0, d0.l), d1
00089c: 206f0012     movea.l    $12(a7), a0
0008a0: 2081         move.l     d1, (a0)
0008a2: 60ff00000448 bra.l      $cec
0008a8: 7004         moveq      #$4, d0
0008aa: c03900e0000d and.b      $e0000d.l, d0
0008b0: 7200         moveq      #$0, d1
0008b2: 1200         move.b     d0, d1
0008b4: 206f0012     movea.l    $12(a7), a0
0008b8: 2081         move.l     d1, (a0)
0008ba: 60ff00000430 bra.l      $cec
0008c0: 61ff00000cae bsr.l      $1570
0008c6: 2f40000e     move.l     d0, $e(a7)
0008ca: 60ff00000420 bra.l      $cec
0008d0: 61ff00000ce6 bsr.l      $15b8
0008d6: 2f40000e     move.l     d0, $e(a7)
0008da: 60ff00000410 bra.l      $cec
0008e0: 61ff00000d22 bsr.l      $1604
0008e6: 2f40000e     move.l     d0, $e(a7)
0008ea: 60ff00000400 bra.l      $cec
0008f0: 60ff000003fa bra.l      $cec
0008f6: 200c         move.l     a4, d0
0008f8: 61ff00000fc6 bsr.l      $18c0
0008fe: 206f0012     movea.l    $12(a7), a0
000902: 2080         move.l     d0, (a0)
000904: 60ff000003e6 bra.l      $cec
00090a: 200c         move.l     a4, d0
00090c: 61ff00001002 bsr.l      $1910
000912: 206f0012     movea.l    $12(a7), a0
000916: 2080         move.l     d0, (a0)
000918: 60ff000003d2 bra.l      $cec
00091e: 200c         move.l     a4, d0
000920: 61ff000010e0 bsr.l      $1a02
000926: 206f0012     movea.l    $12(a7), a0
00092a: 2080         move.l     d0, (a0)
00092c: 60ff000003be bra.l      $cec
000932: 200c         move.l     a4, d0
000934: 61ff00001110 bsr.l      $1a46
00093a: 206f0012     movea.l    $12(a7), a0
00093e: 2080         move.l     d0, (a0)
000940: 60ff000003aa bra.l      $cec
000946: 200c         move.l     a4, d0
000948: 61ff0000114e bsr.l      $1a98
00094e: 206f0012     movea.l    $12(a7), a0
000952: 2080         move.l     d0, (a0)
000954: 60ff00000396 bra.l      $cec
00095a: 200c         move.l     a4, d0
00095c: 61ff0000118c bsr.l      $1aea
000962: 206f0012     movea.l    $12(a7), a0
000966: 2080         move.l     d0, (a0)
000968: 60ff00000382 bra.l      $cec
00096e: 200c         move.l     a4, d0
000970: 61ff000011bc bsr.l      $1b2e
000976: 206f0012     movea.l    $12(a7), a0
00097a: 2080         move.l     d0, (a0)
00097c: 60ff0000036e bra.l      $cec
000982: 200c         move.l     a4, d0
000984: 61ff000011fa bsr.l      $1b80
00098a: 206f0012     movea.l    $12(a7), a0
00098e: 2080         move.l     d0, (a0)
000990: 60ff0000035a bra.l      $cec
000996: 222c0074     move.l     $74(a4), d1
00099a: 202c0070     move.l     $70(a4), d0
00099e: 61ff0000222e bsr.l      $2bce
0009a4: 2200         move.l     d0, d1
0009a6: 200c         move.l     a4, d0
0009a8: 61ff00000fb8 bsr.l      $1962
0009ae: d280         add.l      d0, d1
0009b0: 206f0012     movea.l    $12(a7), a0
0009b4: 2081         move.l     d1, (a0)
0009b6: 60ff00000334 bra.l      $cec
0009bc: 200c         move.l     a4, d0
0009be: 61ff00000ff2 bsr.l      $19b2
0009c4: 206f0012     movea.l    $12(a7), a0
0009c8: 2080         move.l     d0, (a0)
0009ca: 60ff00000320 bra.l      $cec
0009d0: 48780321     pea.l      $321.w
0009d4: 2f2f0016     move.l     $16(a7), -(a7)
0009d8: 223c000000d9 move.l     #$d9, d1
0009de: 7078         moveq      #$78, d0
0009e0: d08c         add.l      a4, d0
0009e2: 61ff00001fa4 bsr.l      $2988
0009e8: 508f         addq.l     #$8, a7
0009ea: 60ff00000300 bra.l      $cec
0009f0: 222f0012     move.l     $12(a7), d1
0009f4: 7078         moveq      #$78, d0
0009f6: d08c         add.l      a4, d0
0009f8: 61ff000009ee bsr.l      $13e8
0009fe: 60ff000002ec bra.l      $cec
000a04: 222f0012     move.l     $12(a7), d1
000a08: 7078         moveq      #$78, d0
000a0a: d08c         add.l      a4, d0
000a0c: 61ff00001a4a bsr.l      $2458
000a12: 60ff000002d8 bra.l      $cec
000a18: 222f0012     move.l     $12(a7), d1
000a1c: 7078         moveq      #$78, d0
000a1e: d08c         add.l      a4, d0
000a20: 61ff00001a5e bsr.l      $2480
000a26: 60ff000002c4 bra.l      $cec
000a2c: 222f0012     move.l     $12(a7), d1
000a30: 7078         moveq      #$78, d0
000a32: d08c         add.l      a4, d0
000a34: 61ff00000e64 bsr.l      $189a
000a3a: 60ff000002b0 bra.l      $cec
000a40: 202f0012     move.l     $12(a7), d0
000a44: 61ff00001aac bsr.l      $24f2
000a4a: 60ff000002a0 bra.l      $cec
000a50: 202f0012     move.l     $12(a7), d0
000a54: 61ff00001ada bsr.l      $2530
000a5a: 60ff00000290 bra.l      $cec
000a60: 206c0030     movea.l    $30(a4), a0
000a64: 08280003000d btst.b     #$3, $d(a0)
000a6a: 66ff0000000a bne.l      $a76
000a70: 7001         moveq      #$1, d0
000a72: 2f40000e     move.l     d0, $e(a7)
000a76: 60ff00000274 bra.l      $cec
000a7c: 206c0030     movea.l    $30(a4), a0
000a80: 08280003000d btst.b     #$3, $d(a0)
000a86: 67ff0000000a beq.l      $a92
000a8c: 7001         moveq      #$1, d0
000a8e: 2f40000e     move.l     d0, $e(a7)
000a92: 60ff00000258 bra.l      $cec
000a98: 206c0030     movea.l    $30(a4), a0
000a9c: 08280005000d btst.b     #$5, $d(a0)
000aa2: 67ff0000000a beq.l      $aae
000aa8: 7001         moveq      #$1, d0
000aaa: 2f40000e     move.l     d0, $e(a7)
000aae: 60ff0000023c bra.l      $cec
000ab4: 2f7cffffff30000e move.l     #$ffffff30, $e(a7)
000abc: 60ff0000022e bra.l      $cec
000ac2: 202f0042     move.l     $42(a7), d0
000ac6: 0c8000007f1f cmpi.l     #$7f1f, d0
000acc: 67fffffffe78 beq.l      $946
000ad2: 62ff00000114 bhi.l      $be8
000ad8: 0c407f17     cmpi.w     #$7f17, d0
000adc: 67fffffffdf2 beq.l      $8d0
000ae2: 62ff0000008c bhi.l      $b70
000ae8: 0c407f10     cmpi.w     #$7f10, d0
000aec: 67fffffffd20 beq.l      $80e
000af2: 62ff0000004a bhi.l      $b3e
000af8: 0c407f0e     cmpi.w     #$7f0e, d0
000afc: 67ffffffff2e beq.l      $a2c
000b02: 62ff00000028 bhi.l      $b2c
000b08: 0c8000007f0d cmpi.l     #$7f0d, d0
000b0e: 67fffffffc94 beq.l      $7a4
000b14: 62ffffffff9e bhi.l      $ab4
000b1a: 0c8000007f0c cmpi.l     #$7f0c, d0
000b20: 67fffffffc44 beq.l      $766
000b26: 60ffffffff8c bra.l      $ab4
000b2c: 0c8000007f0f cmpi.l     #$7f0f, d0
000b32: 67fffffffcae beq.l      $7e2
000b38: 60ffffffff7a bra.l      $ab4
000b3e: 0c407f13     cmpi.w     #$7f13, d0
000b42: 67fffffffd40 beq.l      $884
000b48: 62ff00000014 bhi.l      $b5e
000b4e: 0c407f11     cmpi.w     #$7f11, d0
000b52: 67fffffffd1a beq.l      $86e
000b58: 60ffffffff5a bra.l      $ab4
000b5e: 0c8000007f16 cmpi.l     #$7f16, d0
000b64: 67fffffffd5a beq.l      $8c0
000b6a: 60ffffffff48 bra.l      $ab4
000b70: 0c407f1b     cmpi.w     #$7f1b, d0
000b74: 67fffffffd80 beq.l      $8f6
000b7a: 62ff00000038 bhi.l      $bb4
000b80: 0c407f19     cmpi.w     #$7f19, d0
000b84: 67fffffffd6a beq.l      $8f0
000b8a: 62ff00000016 bhi.l      $ba2
000b90: 0c8000007f18 cmpi.l     #$7f18, d0
000b96: 67fffffffd48 beq.l      $8e0
000b9c: 60ffffffff16 bra.l      $ab4
000ba2: 0c8000007f1a cmpi.l     #$7f1a, d0
000ba8: 67fffffffcfe beq.l      $8a8
000bae: 60ffffffff04 bra.l      $ab4
000bb4: 0c407f1d     cmpi.w     #$7f1d, d0
000bb8: 67fffffffd64 beq.l      $91e
000bbe: 62ff00000016 bhi.l      $bd6
000bc4: 0c8000007f1c cmpi.l     #$7f1c, d0
000bca: 67fffffffd3e beq.l      $90a
000bd0: 60fffffffee2 bra.l      $ab4
000bd6: 0c8000007f1e cmpi.l     #$7f1e, d0
000bdc: 67fffffffd54 beq.l      $932
000be2: 60fffffffed0 bra.l      $ab4
000be8: 0c8000007f28 cmpi.l     #$7f28, d0
000bee: 67fffffffe60 beq.l      $a50
000bf4: 62ff0000007c bhi.l      $c72
000bfa: 0c407f23     cmpi.w     #$7f23, d0
000bfe: 67fffffffdd0 beq.l      $9d0
000c04: 62ff00000038 bhi.l      $c3e
000c0a: 0c407f21     cmpi.w     #$7f21, d0
000c0e: 67fffffffd86 beq.l      $996
000c14: 62ff00000016 bhi.l      $c2c
000c1a: 0c8000007f20 cmpi.l     #$7f20, d0
000c20: 67fffffffd4c beq.l      $96e
000c26: 60fffffffe8c bra.l      $ab4
000c2c: 0c8000007f22 cmpi.l     #$7f22, d0
000c32: 67fffffffd88 beq.l      $9bc
000c38: 60fffffffe7a bra.l      $ab4
000c3e: 0c407f26     cmpi.w     #$7f26, d0
000c42: 67fffffffdd4 beq.l      $a18
000c48: 62ff00000016 bhi.l      $c60
000c4e: 0c8000007f25 cmpi.l     #$7f25, d0
000c54: 67fffffffdae beq.l      $a04
000c5a: 60fffffffe58 bra.l      $ab4
000c60: 0c8000007f27 cmpi.l     #$7f27, d0
000c66: 67fffffffdd8 beq.l      $a40
000c6c: 60fffffffe46 bra.l      $ab4
000c72: 0c8000007f2d cmpi.l     #$7f2d, d0
000c78: 67fffffffe1e beq.l      $a98
000c7e: 62ff00000038 bhi.l      $cb8
000c84: 0c407f2b     cmpi.w     #$7f2b, d0
000c88: 67fffffffdd6 beq.l      $a60
000c8e: 62ff00000016 bhi.l      $ca6
000c94: 0c8000007f2a cmpi.l     #$7f2a, d0
000c9a: 67fffffffd54 beq.l      $9f0
000ca0: 60fffffffe12 bra.l      $ab4
000ca6: 0c8000007f2c cmpi.l     #$7f2c, d0
000cac: 67fffffffdce beq.l      $a7c
000cb2: 60fffffffe00 bra.l      $ab4
000cb8: 0c8000007f37 cmpi.l     #$7f37, d0
000cbe: 67fffffffc9a beq.l      $95a
000cc4: 62ff00000014 bhi.l      $cda
000cca: 0c407f31     cmpi.w     #$7f31, d0
000cce: 67fffffffcb2 beq.l      $982
000cd4: 60fffffffdde bra.l      $ab4
000cda: 0c800000ff31 cmpi.l     #$ff31, d0
000ce0: 67fffffffa70 beq.l      $752
000ce6: 60fffffffdcc bra.l      $ab4
000cec: 202f000e     move.l     $e(a7), d0
000cf0: 4fef0016     lea.l      $16(a7), a7
000cf4: 60ff00000006 bra.l      $cfc
000cfa: 4e71         nop        
000cfc: 4ced1f00ffec movem.l    -$14(a5), a0-a4
000d02: 4e5d         unlk       a5
000d04: 4e75         rts        
000d06: 4e550000     link.w     a5, #$0
000d0a: 48e7c0b8     movem.l    d0-d1/a0/a2-a4, -(a7)
000d0e: 2440         movea.l    d0, a2
000d10: 2641         movea.l    d1, a3
000d12: 4fefffee     lea.l      -$12(a7), a7
000d16: 42af000e     clr.l      $e(a7)
000d1a: 284b         movea.l    a3, a4
000d1c: 60ff00000390 bra.l      $10ae
000d22: 206f0032     movea.l    $32(a7), a0
000d26: 7000         moveq      #$0, d0
000d28: 3010         move.w     (a0), d0
000d2a: 2f400006     move.l     d0, $6(a7)
000d2e: 222f0006     move.l     $6(a7), d1
000d32: 202c0068     move.l     $68(a4), d0
000d36: 61ff00001978 bsr.l      $26b0
000d3c: 72ff         moveq      #$ff, d1
000d3e: b280         cmp.l      d0, d1
000d40: 67ff00000010 beq.l      $d52
000d46: 70ff         moveq      #$ff, d0
000d48: 4fef0012     lea.l      $12(a7), a7
000d4c: 60ff000005ce bra.l      $131c
000d52: 206f0036     movea.l    $36(a7), a0
000d56: 3f68000a0004 move.w     $a(a0), $4(a7)
000d5c: 306f0004     movea.w    $4(a7), a0
000d60: 2f08         move.l     a0, -(a7)
000d62: 222f000a     move.l     $a(a7), d1
000d66: 202c0068     move.l     $68(a4), d0
000d6a: 61ff000018a4 bsr.l      $2610
000d70: 588f         addq.l     #$4, a7
000d72: 2f40000e     move.l     d0, $e(a7)
000d76: 60ff00000594 bra.l      $130c
000d7c: 206f0032     movea.l    $32(a7), a0
000d80: 7000         moveq      #$0, d0
000d82: 3010         move.w     (a0), d0
000d84: 2f400006     move.l     d0, $6(a7)
000d88: 222f0006     move.l     $6(a7), d1
000d8c: 202c006c     move.l     $6c(a4), d0
000d90: 61ff0000191e bsr.l      $26b0
000d96: 72ff         moveq      #$ff, d1
000d98: b280         cmp.l      d0, d1
000d9a: 67ff00000010 beq.l      $dac
000da0: 70ff         moveq      #$ff, d0
000da2: 4fef0012     lea.l      $12(a7), a7
000da6: 60ff00000574 bra.l      $131c
000dac: 206f0036     movea.l    $36(a7), a0
000db0: 3f68000a0004 move.w     $a(a0), $4(a7)
000db6: 306f0004     movea.w    $4(a7), a0
000dba: 2f08         move.l     a0, -(a7)
000dbc: 222f000a     move.l     $a(a7), d1
000dc0: 202c006c     move.l     $6c(a4), d0
000dc4: 61ff0000184a bsr.l      $2610
000dca: 588f         addq.l     #$4, a7
000dcc: 2f40000e     move.l     d0, $e(a7)
000dd0: 60ff0000053a bra.l      $130c
000dd6: 7001         moveq      #$1, d0
000dd8: b0ac0060     cmp.l      $60(a4), d0
000ddc: 66ff00000016 bne.l      $df4
000de2: 206f0036     movea.l    $36(a7), a0
000de6: 0ca8000002580008 cmpi.l     #$258, $8(a0)
000dee: 63ff00000010 bls.l      $e00
000df4: 70ff         moveq      #$ff, d0
000df6: 2f40000e     move.l     d0, $e(a7)
000dfa: 60ff00000016 bra.l      $e12
000e00: 202c005c     move.l     $5c(a4), d0
000e04: 206f0036     movea.l    $36(a7), a0
000e08: 4c2800000008 mulu.l     $8(a0), d0
000e0e: 29400054     move.l     d0, $54(a4)
000e12: 60ff000004f8 bra.l      $130c
000e18: 206f0032     movea.l    $32(a7), a0
000e1c: 7000         moveq      #$0, d0
000e1e: 3010         move.w     (a0), d0
000e20: 2f40000a     move.l     d0, $a(a7)
000e24: 206c003a     movea.l    $3a(a4), a0
000e28: 4e90         jsr        (a0)
000e2a: 2e80         move.l     d0, (a7)
000e2c: 222f000a     move.l     $a(a7), d1
000e30: 202c0068     move.l     $68(a4), d0
000e34: 61ff000018de bsr.l      $2714
000e3a: 222f000a     move.l     $a(a7), d1
000e3e: 202c006c     move.l     $6c(a4), d0
000e42: 61ff000018d0 bsr.l      $2714
000e48: 2017         move.l     (a7), d0
000e4a: 61ff0000222c bsr.l      $3078
000e50: 60ff000004ba bra.l      $130c
000e56: 7078         moveq      #$78, d0
000e58: d08c         add.l      a4, d0
000e5a: 61ff000006c4 bsr.l      $1520
000e60: 2f40000e     move.l     d0, $e(a7)
000e64: 60ff000004a6 bra.l      $130c
000e6a: 7078         moveq      #$78, d0
000e6c: d08c         add.l      a4, d0
000e6e: 61ff000006b0 bsr.l      $1520
000e74: 4a80         tst.l      d0
000e76: 67ff00000014 beq.l      $e8c
000e7c: 203cfffff7ff move.l     #$fffff7ff, d0
000e82: 4fef0012     lea.l      $12(a7), a7
000e86: 60ff00000494 bra.l      $131c
000e8c: 61ff0000062a bsr.l      $14b8
000e92: 4a80         tst.l      d0
000e94: 67ff00000014 beq.l      $eaa
000e9a: 203cfffff7fe move.l     #$fffff7fe, d0
000ea0: 4fef0012     lea.l      $12(a7), a7
000ea4: 60ff00000476 bra.l      $131c
000eaa: 61ff0000198c bsr.l      $2838
000eb0: 08f9000700c0000f bset.b     #$7, $c0000f.l
000eb8: 70ff         moveq      #$ff, d0
000eba: 4fef0012     lea.l      $12(a7), a7
000ebe: 60ff0000045c bra.l      $131c
000ec4: 60ff00000446 bra.l      $130c
000eca: 61ff0000196c bsr.l      $2838
000ed0: 08f9000700c0000f bset.b     #$7, $c0000f.l
000ed8: 70ff         moveq      #$ff, d0
000eda: 4fef0012     lea.l      $12(a7), a7
000ede: 60ff0000043c bra.l      $131c
000ee4: 60ff00000426 bra.l      $130c
000eea: 42a7         clr.l      -(a7)
000eec: 223c00007f1b move.l     #$7f1b, d1
000ef2: 200c         move.l     a4, d0
000ef4: 61ff00000cdc bsr.l      $1bd2
000efa: 588f         addq.l     #$4, a7
000efc: 42a7         clr.l      -(a7)
000efe: 223c00007f21 move.l     #$7f21, d1
000f04: 200c         move.l     a4, d0
000f06: 61ff00000cca bsr.l      $1bd2
000f0c: 588f         addq.l     #$4, a7
000f0e: 7078         moveq      #$78, d0
000f10: d08c         add.l      a4, d0
000f12: 61ff0000147a bsr.l      $238e
000f18: 0caf00007f33003a cmpi.l     #$7f33, $3a(a7)
000f20: 66ff00000010 bne.l      $f32
000f26: 61ff000020a4 bsr.l      $2fcc
000f2c: 60ff0000000c bra.l      $f3a
000f32: 297c000000060060 move.l     #$6, $60(a4)
000f3a: 60ff000003d0 bra.l      $130c
000f40: 7078         moveq      #$78, d0
000f42: d08c         add.l      a4, d0
000f44: 61ff00001448 bsr.l      $238e
000f4a: 60ff000003c0 bra.l      $130c
000f50: 7247         moveq      #$47, d1
000f52: 7078         moveq      #$78, d0
000f54: d08c         add.l      a4, d0
000f56: 61ff00000446 bsr.l      $139e
000f5c: 2f40000e     move.l     d0, $e(a7)
000f60: 60ff000003aa bra.l      $130c
000f66: 7200         moveq      #$0, d1
000f68: 7078         moveq      #$78, d0
000f6a: d08c         add.l      a4, d0
000f6c: 61ff00000430 bsr.l      $139e
000f72: 2f40000e     move.l     d0, $e(a7)
000f76: 60ff00000394 bra.l      $130c
000f7c: 206f0036     movea.l    $36(a7), a0
000f80: 2f280008     move.l     $8(a0), -(a7)
000f84: 222f003e     move.l     $3e(a7), d1
000f88: 200c         move.l     a4, d0
000f8a: 61ff00000c46 bsr.l      $1bd2
000f90: 588f         addq.l     #$4, a7
000f92: 2f40000e     move.l     d0, $e(a7)
000f96: 60ff00000374 bra.l      $130c
000f9c: 220c         move.l     a4, d1
000f9e: 206f0036     movea.l    $36(a7), a0
000fa2: 20280008     move.l     $8(a0), d0
000fa6: 61ff0000103c bsr.l      $1fe4
000fac: 2f40000e     move.l     d0, $e(a7)
000fb0: 60ff0000035a bra.l      $130c
000fb6: 7078         moveq      #$78, d0
000fb8: d08c         add.l      a4, d0
000fba: 61ff00001194 bsr.l      $2150
000fc0: 2f40000e     move.l     d0, $e(a7)
000fc4: 60ff00000346 bra.l      $130c
000fca: 206f0036     movea.l    $36(a7), a0
000fce: 22280008     move.l     $8(a0), d1
000fd2: 7078         moveq      #$78, d0
000fd4: d08c         add.l      a4, d0
000fd6: 61ff000014d0 bsr.l      $24a8
000fdc: 2f40000e     move.l     d0, $e(a7)
000fe0: 60ff0000032a bra.l      $130c
000fe6: 206f0036     movea.l    $36(a7), a0
000fea: 22280008     move.l     $8(a0), d1
000fee: 7078         moveq      #$78, d0
000ff0: d08c         add.l      a4, d0
000ff2: 61ff00000448 bsr.l      $143c
000ff8: 2f40000e     move.l     d0, $e(a7)
000ffc: 60ff0000030e bra.l      $130c
001002: 206c0030     movea.l    $30(a4), a0
001006: 117c0020000e move.b     #$20, $e(a0)
00100c: 60ff000002fe bra.l      $130c
001012: 206c0030     movea.l    $30(a4), a0
001016: 117c0020000f move.b     #$20, $f(a0)
00101c: 60ff000002ee bra.l      $130c
001022: 42ac004c     clr.l      $4c(a4)
001026: 197c0001003f move.b     #$1, $3f(a4)
00102c: 422c0040     clr.b      $40(a4)
001030: 422c0041     clr.b      $41(a4)
001034: 60ff000002d6 bra.l      $130c
00103a: 42ac004c     clr.l      $4c(a4)
00103e: 197c0001003f move.b     #$1, $3f(a4)
001044: 197c00010040 move.b     #$1, $40(a4)
00104a: 422c0041     clr.b      $41(a4)
00104e: 60ff000002bc bra.l      $130c
001054: 42ac004c     clr.l      $4c(a4)
001058: 197c0001003f move.b     #$1, $3f(a4)
00105e: 422c0040     clr.b      $40(a4)
001062: 197c00010041 move.b     #$1, $41(a4)
001068: 42ac0042     clr.l      $42(a4)
00106c: 60ff0000029e bra.l      $130c
001072: 422c003f     clr.b      $3f(a4)
001076: 206c0030     movea.l    $30(a4), a0
00107a: 117c0002000f move.b     #$2, $f(a0)
001080: 60ff0000028a bra.l      $130c
001086: 422c003f     clr.b      $3f(a4)
00108a: 206c0030     movea.l    $30(a4), a0
00108e: 117c0002000e move.b     #$2, $e(a0)
001094: 60ff00000276 bra.l      $130c
00109a: 60ff00000270 bra.l      $130c
0010a0: 2f7cffffff30000e move.l     #$ffffff30, $e(a7)
0010a8: 60ff00000262 bra.l      $130c
0010ae: 202f003a     move.l     $3a(a7), d0
0010b2: 0c8000007f24 cmpi.l     #$7f24, d0
0010b8: 67fffffffefc beq.l      $fb6
0010be: 62ff00000124 bhi.l      $11e4
0010c4: 0c407f1b     cmpi.w     #$7f1b, d0
0010c8: 67fffffffeb2 beq.l      $f7c
0010ce: 62ff0000008a bhi.l      $115a
0010d4: 0c407f12     cmpi.w     #$7f12, d0
0010d8: 67fffffffd90 beq.l      $e6a
0010de: 62ff00000048 bhi.l      $1128
0010e4: 0c407f0d     cmpi.w     #$7f0d, d0
0010e8: 67fffffffc92 beq.l      $d7c
0010ee: 62ff00000026 bhi.l      $1116
0010f4: 0c8000007f0c cmpi.l     #$7f0c, d0
0010fa: 67fffffffc26 beq.l      $d22
001100: 62ffffffff9e bhi.l      $10a0
001106: 0c40001b     cmpi.w     #$1b, d0
00110a: 67fffffffd0c beq.l      $e18
001110: 60ffffffff8e bra.l      $10a0
001116: 0c8000007f11 cmpi.l     #$7f11, d0
00111c: 67fffffffcb8 beq.l      $dd6
001122: 60ffffffff7c bra.l      $10a0
001128: 0c407f14     cmpi.w     #$7f14, d0
00112c: 67fffffffe38 beq.l      $f66
001132: 62ff00000016 bhi.l      $114a
001138: 0c8000007f13 cmpi.l     #$7f13, d0
00113e: 67fffffffe10 beq.l      $f50
001144: 60ffffffff5a bra.l      $10a0
00114a: 0c407f15     cmpi.w     #$7f15, d0
00114e: 67fffffffd06 beq.l      $e56
001154: 60ffffffff4a bra.l      $10a0
00115a: 0c407f20     cmpi.w     #$7f20, d0
00115e: 67fffffffe1c beq.l      $f7c
001164: 62ff0000004a bhi.l      $11b0
00116a: 0c407f1e     cmpi.w     #$7f1e, d0
00116e: 67fffffffe0c beq.l      $f7c
001174: 62ff00000028 bhi.l      $119e
00117a: 0c8000007f1d cmpi.l     #$7f1d, d0
001180: 67fffffffdfa beq.l      $f7c
001186: 62ffffffff18 bhi.l      $10a0
00118c: 0c8000007f1c cmpi.l     #$7f1c, d0
001192: 67fffffffde8 beq.l      $f7c
001198: 60ffffffff06 bra.l      $10a0
00119e: 0c8000007f1f cmpi.l     #$7f1f, d0
0011a4: 67fffffffdd6 beq.l      $f7c
0011aa: 60fffffffef4 bra.l      $10a0
0011b0: 0c407f22     cmpi.w     #$7f22, d0
0011b4: 67fffffffdc6 beq.l      $f7c
0011ba: 62ff00000016 bhi.l      $11d2
0011c0: 0c8000007f21 cmpi.l     #$7f21, d0
0011c6: 67fffffffdb4 beq.l      $f7c
0011cc: 60fffffffed2 bra.l      $10a0
0011d2: 0c8000007f23 cmpi.l     #$7f23, d0
0011d8: 67fffffffdc2 beq.l      $f9c
0011de: 60fffffffec0 bra.l      $10a0
0011e4: 0c8000007f31 cmpi.l     #$7f31, d0
0011ea: 67fffffffd90 beq.l      $f7c
0011f0: 62ff0000008c bhi.l      $127e
0011f6: 0c407f2c     cmpi.w     #$7f2c, d0
0011fa: 67fffffffe16 beq.l      $1012
001200: 62ff00000048 bhi.l      $124a
001206: 0c407f2a     cmpi.w     #$7f2a, d0
00120a: 67fffffffdda beq.l      $fe6
001210: 62ff00000026 bhi.l      $1238
001216: 0c8000007f29 cmpi.l     #$7f29, d0
00121c: 67fffffffccc beq.l      $eea
001222: 62fffffffe7c bhi.l      $10a0
001228: 0c407f26     cmpi.w     #$7f26, d0
00122c: 67fffffffd9c beq.l      $fca
001232: 60fffffffe6c bra.l      $10a0
001238: 0c8000007f2b cmpi.l     #$7f2b, d0
00123e: 67fffffffdc2 beq.l      $1002
001244: 60fffffffe5a bra.l      $10a0
00124a: 0c407f2f     cmpi.w     #$7f2f, d0
00124e: 67fffffffe22 beq.l      $1072
001254: 62ff00000016 bhi.l      $126c
00125a: 0c8000007f2e cmpi.l     #$7f2e, d0
001260: 67fffffffdc0 beq.l      $1022
001266: 60fffffffe38 bra.l      $10a0
00126c: 0c8000007f30 cmpi.l     #$7f30, d0
001272: 67fffffffe12 beq.l      $1086
001278: 60fffffffe26 bra.l      $10a0
00127e: 0c8000007f36 cmpi.l     #$7f36, d0
001284: 67fffffffdce beq.l      $1054
00128a: 62ff0000004a bhi.l      $12d6
001290: 0c407f34     cmpi.w     #$7f34, d0
001294: 67fffffffcaa beq.l      $f40
00129a: 62ff00000028 bhi.l      $12c4
0012a0: 0c8000007f33 cmpi.l     #$7f33, d0
0012a6: 67fffffffc42 beq.l      $eea
0012ac: 62fffffffdf2 bhi.l      $10a0
0012b2: 0c8000007f32 cmpi.l     #$7f32, d0
0012b8: 67fffffffc10 beq.l      $eca
0012be: 60fffffffde0 bra.l      $10a0
0012c4: 0c8000007f35 cmpi.l     #$7f35, d0
0012ca: 67fffffffd6e beq.l      $103a
0012d0: 60fffffffdce bra.l      $10a0
0012d6: 0c8000007f38 cmpi.l     #$7f38, d0
0012dc: 67fffffffc9e beq.l      $f7c
0012e2: 62ff00000016 bhi.l      $12fa
0012e8: 0c8000007f37 cmpi.l     #$7f37, d0
0012ee: 67fffffffc8c beq.l      $f7c
0012f4: 60fffffffdaa bra.l      $10a0
0012fa: 0c8000007f40 cmpi.l     #$7f40, d0
001300: 67fffffffd98 beq.l      $109a
001306: 60fffffffd98 bra.l      $10a0
00130c: 202f000e     move.l     $e(a7), d0
001310: 4fef0012     lea.l      $12(a7), a7
001314: 60ff00000006 bra.l      $131c
00131a: 4e71         nop        
00131c: 4ced1d00fff0 movem.l    -$10(a5), a0/a2-a4
001322: 4e5d         unlk       a5
001324: 4e75         rts        
001326: 4e550000     link.w     a5, #$0
00132a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
00132e: 2441         movea.l    d1, a2
001330: 518f         subq.l     #$8, a7
001332: 4297         clr.l      (a7)
001334: 2f4a0004     move.l     a2, $4(a7)
001338: 220a         move.l     a2, d1
00133a: 206f0008     movea.l    $8(a7), a0
00133e: 7000         moveq      #$0, d0
001340: 10280034     move.b     $34(a0), d0
001344: 61ff00001a46 bsr.l      $2d8c
00134a: 4a80         tst.l      d0
00134c: 67ff00000008 beq.l      $1356
001352: 70ff         moveq      #$ff, d0
001354: 2e80         move.l     d0, (a7)
001356: 220a         move.l     a2, d1
001358: 701f         moveq      #$1f, d0
00135a: 61ff00001a30 bsr.l      $2d8c
001360: 4a80         tst.l      d0
001362: 67ff00000008 beq.l      $136c
001368: 70ff         moveq      #$ff, d0
00136a: 2e80         move.l     d0, (a7)
00136c: 206f0004     movea.l    $4(a7), a0
001370: 20280068     move.l     $68(a0), d0
001374: 61ff0000140a bsr.l      $2780
00137a: 206f0004     movea.l    $4(a7), a0
00137e: 2028006c     move.l     $6c(a0), d0
001382: 61ff000013fc bsr.l      $2780
001388: 2017         move.l     (a7), d0
00138a: 508f         addq.l     #$8, a7
00138c: 60ff00000006 bra.l      $1394
001392: 4e71         nop        
001394: 4ced0500fff8 movem.l    -$8(a5), a0/a2
00139a: 4e5d         unlk       a5
00139c: 4e75         rts        
00139e: 4e550000     link.w     a5, #$0
0013a2: 48e7c000     movem.l    d0-d1, -(a7)
0013a6: 7000         moveq      #$0, d0
0013a8: 102f0007     move.b     $7(a7), d0
0013ac: 2f00         move.l     d0, -(a7)
0013ae: 223c00001fff move.l     #$1fff, d1
0013b4: 202f0004     move.l     $4(a7), d0
0013b8: 61ff0000150c bsr.l      $28c6
0013be: 588f         addq.l     #$4, a7
0013c0: 72ff         moveq      #$ff, d1
0013c2: b280         cmp.l      d0, d1
0013c4: 66ff00000016 bne.l      $13dc
0013ca: 203cfffff7f9 move.l     #$fffff7f9, d0
0013d0: 60ff00000012 bra.l      $13e4
0013d6: 60ff0000000c bra.l      $13e4
0013dc: 7000         moveq      #$0, d0
0013de: 60ff00000004 bra.l      $13e4
0013e4: 4e5d         unlk       a5
0013e6: 4e75         rts        
0013e8: 4e550000     link.w     a5, #$0
0013ec: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
0013f0: 2440         movea.l    d0, a2
0013f2: 266f0004     movea.l    $4(a7), a3
0013f6: 48780400     pea.l      $400.w
0013fa: 4853         pea.l      (a3)
0013fc: 223c00000400 move.l     #$400, d1
001402: 200a         move.l     a2, d0
001404: 61ff00001582 bsr.l      $2988
00140a: 508f         addq.l     #$8, a7
00140c: d7fc00000400 adda.l     #$400, a3
001412: 487817f0     pea.l      $17f0.w
001416: 4853         pea.l      (a3)
001418: 223c00000800 move.l     #$800, d1
00141e: 200a         move.l     a2, d0
001420: 61ff00001566 bsr.l      $2988
001426: 508f         addq.l     #$8, a7
001428: 7000         moveq      #$0, d0
00142a: 60ff00000006 bra.l      $1432
001430: 4e71         nop        
001432: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
001438: 4e5d         unlk       a5
00143a: 4e75         rts        
00143c: 4e550000     link.w     a5, #$0
001440: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
001444: 2440         movea.l    d0, a2
001446: 266f0004     movea.l    $4(a7), a3
00144a: 48780400     pea.l      $400.w
00144e: 4853         pea.l      (a3)
001450: 223c00000400 move.l     #$400, d1
001456: 200a         move.l     a2, d0
001458: 61ff000014aa bsr.l      $2904
00145e: 508f         addq.l     #$8, a7
001460: 4a80         tst.l      d0
001462: 67ff00000010 beq.l      $1474
001468: 203cfffff7f9 move.l     #$fffff7f9, d0
00146e: 60ff0000003e bra.l      $14ae
001474: d7fc00000400 adda.l     #$400, a3
00147a: 487817f0     pea.l      $17f0.w
00147e: 4853         pea.l      (a3)
001480: 223c00000800 move.l     #$800, d1
001486: 200a         move.l     a2, d0
001488: 61ff0000147a bsr.l      $2904
00148e: 508f         addq.l     #$8, a7
001490: 4a80         tst.l      d0
001492: 67ff00000010 beq.l      $14a4
001498: 203cfffff7f9 move.l     #$fffff7f9, d0
00149e: 60ff0000000e bra.l      $14ae
0014a4: 7000         moveq      #$0, d0
0014a6: 60ff00000006 bra.l      $14ae
0014ac: 4e71         nop        
0014ae: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0014b4: 4e5d         unlk       a5
0014b6: 4e75         rts        
0014b8: 4e550000     link.w     a5, #$0
0014bc: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
0014c0: 7800         moveq      #$0, d4
0014c2: 223c00000081 move.l     #$81, d1
0014c8: 41fb0170000013f6 lea.l      $13f6(a16, invalid.w), a0
0014d0: 2008         move.l     a0, d0
0014d2: 61ff00001878 bsr.l      $2d4c
0014d8: 2a00         move.l     d0, d5
0014da: 6cff0000000c bge.l      $14e8
0014e0: 70ff         moveq      #$ff, d0
0014e2: 60ff00000032 bra.l      $1516
0014e8: 42a7         clr.l      -(a7)
0014ea: 2205         move.l     d5, d1
0014ec: 203c0000ff20 move.l     #$ff20, d0
0014f2: 61ff000017fc bsr.l      $2cf0
0014f8: 588f         addq.l     #$4, a7
0014fa: 4a80         tst.l      d0
0014fc: 6cff00000006 bge.l      $1504
001502: 78ff         moveq      #$ff, d4
001504: 2005         move.l     d5, d0
001506: 61ff0000182c bsr.l      $2d34
00150c: 2004         move.l     d4, d0
00150e: 60ff00000006 bra.l      $1516
001514: 4e71         nop        
001516: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
00151c: 4e5d         unlk       a5
00151e: 4e75         rts        
001520: 4e550000     link.w     a5, #$0
001524: 48e7c020     movem.l    d0-d1/a2, -(a7)
001528: 2440         movea.l    d0, a2
00152a: 48780400     pea.l      $400.w
00152e: 2f3c009ffc00 move.l     #$9ffc00, -(a7)
001534: 223c00000400 move.l     #$400, d1
00153a: 200a         move.l     a2, d0
00153c: 61ff000013c6 bsr.l      $2904
001542: 508f         addq.l     #$8, a7
001544: 4a80         tst.l      d0
001546: 67ff00000016 beq.l      $155e
00154c: 203cfffff7f9 move.l     #$fffff7f9, d0
001552: 60ff00000012 bra.l      $1566
001558: 60ff0000000c bra.l      $1566
00155e: 7000         moveq      #$0, d0
001560: 60ff00000004 bra.l      $1566
001566: 4ced0402fff8 movem.l    -$8(a5), d1/a2
00156c: 4e5d         unlk       a5
00156e: 4e75         rts        
001570: 4e550000     link.w     a5, #$0
001574: 48e7c800     movem.l    d0-d1/d4, -(a7)
001578: 2f3c0000fffc move.l     #$fffc, -(a7)
00157e: 223c00010000 move.l     #$10000, d1
001584: 7000         moveq      #$0, d0
001586: 61ff000016a8 bsr.l      $2c30
00158c: 588f         addq.l     #$4, a7
00158e: 2800         move.l     d0, d4
001590: b8b90000fffc cmp.l      $fffc.l, d4
001596: 67ff0000000c beq.l      $15a4
00159c: 70ff         moveq      #$ff, d0
00159e: 60ff0000000e bra.l      $15ae
0015a4: 7000         moveq      #$0, d0
0015a6: 60ff00000006 bra.l      $15ae
0015ac: 4e71         nop        
0015ae: 4ced0012fff8 movem.l    -$8(a5), d1/d4
0015b4: 4e5d         unlk       a5
0015b6: 4e75         rts        
0015b8: 4e550000     link.w     a5, #$0
0015bc: 48e7c800     movem.l    d0-d1/d4, -(a7)
0015c0: 2f3c002ffffc move.l     #$2ffffc, -(a7)
0015c6: 223c00100000 move.l     #$100000, d1
0015cc: 203c00200000 move.l     #$200000, d0
0015d2: 61ff0000165c bsr.l      $2c30
0015d8: 588f         addq.l     #$4, a7
0015da: 2800         move.l     d0, d4
0015dc: b8b9002ffffc cmp.l      $2ffffc.l, d4
0015e2: 67ff0000000c beq.l      $15f0
0015e8: 70ff         moveq      #$ff, d0
0015ea: 60ff0000000e bra.l      $15fa
0015f0: 7000         moveq      #$0, d0
0015f2: 60ff00000006 bra.l      $15fa
0015f8: 4e71         nop        
0015fa: 4ced0012fff8 movem.l    -$8(a5), d1/d4
001600: 4e5d         unlk       a5
001602: 4e75         rts        
001604: 4e550000     link.w     a5, #$0
001608: 48e7cc80     movem.l    d0-d1/d4-d5/a0, -(a7)
00160c: 4feffefc     lea.l      -$104(a7), a7
001610: 2f7c008000000004 move.l     #$800000, $4(a7)
001618: 2f7c000020000008 move.l     #$2000, $8(a7)
001620: 7800         moveq      #$0, d4
001622: 7a01         moveq      #$1, d5
001624: 60ff00000020 bra.l      $1646
00162a: 2005         move.l     d5, d0
00162c: 5285         addq.l     #$1, d5
00162e: 41ef0004     lea.l      $4(a7), a0
001632: 21970e04     move.l     (a7), $4(a0, d0.l)
001636: 701f         moveq      #$1f, d0
001638: b085         cmp.l      d5, d0
00163a: 6eff0000000a bgt.l      $1646
001640: 60ff00000020 bra.l      $1662
001646: 4857         pea.l      (a7)
001648: 7200         moveq      #$0, d1
00164a: 70ff         moveq      #$ff, d0
00164c: 61ff000017f2 bsr.l      $2e40
001652: 588f         addq.l     #$4, a7
001654: 41ef0004     lea.l      $4(a7), a0
001658: 21805e00     move.l     d0, (a0, d5.l * 8)
00165c: 66ffffffffcc bne.l      $162a
001662: 41ef0004     lea.l      $4(a7), a0
001666: 42b05e04     clr.l      $4(a0, d5.l)
00166a: 41ef0004     lea.l      $4(a7), a0
00166e: 2008         move.l     a0, d0
001670: 61ff0000004a bsr.l      $16bc
001676: 4a80         tst.l      d0
001678: 67ff00000006 beq.l      $1680
00167e: 78ff         moveq      #$ff, d4
001680: 60ff0000001a bra.l      $169c
001686: 41ef0004     lea.l      $4(a7), a0
00168a: 22305e00     move.l     (a0, d5.l * 8), d1
00168e: 41ef0004     lea.l      $4(a7), a0
001692: 20305e04     move.l     $4(a0, d5.l), d0
001696: 61ff000017d2 bsr.l      $2e6a
00169c: 5385         subq.l     #$1, d5
00169e: 6effffffffe6 bgt.l      $1686
0016a4: 2004         move.l     d4, d0
0016a6: 4fef0104     lea.l      $104(a7), a7
0016aa: 60ff00000006 bra.l      $16b2
0016b0: 4e71         nop        
0016b2: 4ced0132fff0 movem.l    -$10(a5), d1/d4-d5/a0
0016b8: 4e5d         unlk       a5
0016ba: 4e75         rts        
0016bc: 4e550000     link.w     a5, #$0
0016c0: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
0016c4: 2440         movea.l    d0, a2
0016c6: 7800         moveq      #$0, d4
0016c8: 60ff0000001c bra.l      $16e6
0016ce: 2f3c55555555 move.l     #$55555555, -(a7)
0016d4: 22324e04     move.l     $4(a2, d4.l), d1
0016d8: 20324e00     move.l     (a2, d4.l * 8), d0
0016dc: 61ff000000c4 bsr.l      $17a2
0016e2: 588f         addq.l     #$4, a7
0016e4: 5284         addq.l     #$1, d4
0016e6: 4ab24e04     tst.l      $4(a2, d4.l)
0016ea: 66ffffffffe2 bne.l      $16ce
0016f0: 7800         moveq      #$0, d4
0016f2: 60ff00000032 bra.l      $1726
0016f8: 2f3caaaaaaaa move.l     #$aaaaaaaa, -(a7)
0016fe: 2f3c55555555 move.l     #$55555555, -(a7)
001704: 22324e04     move.l     $4(a2, d4.l), d1
001708: 20324e00     move.l     (a2, d4.l * 8), d0
00170c: 61ff000000ca bsr.l      $17d8
001712: 508f         addq.l     #$8, a7
001714: 2a00         move.l     d0, d5
001716: 4a85         tst.l      d5
001718: 67ff0000000a beq.l      $1724
00171e: 60ff00000010 bra.l      $1730
001724: 5284         addq.l     #$1, d4
001726: 4ab24e04     tst.l      $4(a2, d4.l)
00172a: 66ffffffffcc bne.l      $16f8
001730: 4a85         tst.l      d5
001732: 67ff0000000c beq.l      $1740
001738: 70ff         moveq      #$ff, d0
00173a: 60ff0000005c bra.l      $1798
001740: 5384         subq.l     #$1, d4
001742: 60ff00000032 bra.l      $1776
001748: 2f3c55555555 move.l     #$55555555, -(a7)
00174e: 2f3caaaaaaaa move.l     #$aaaaaaaa, -(a7)
001754: 22324e04     move.l     $4(a2, d4.l), d1
001758: 20324e00     move.l     (a2, d4.l * 8), d0
00175c: 61ff000000d6 bsr.l      $1834
001762: 508f         addq.l     #$8, a7
001764: 2a00         move.l     d0, d5
001766: 4a85         tst.l      d5
001768: 67ff0000000a beq.l      $1774
00176e: 60ff0000000e bra.l      $177e
001774: 5384         subq.l     #$1, d4
001776: 4a84         tst.l      d4
001778: 6cffffffffce bge.l      $1748
00177e: 4a85         tst.l      d5
001780: 67ff0000000c beq.l      $178e
001786: 70ff         moveq      #$ff, d0
001788: 60ff0000000e bra.l      $1798
00178e: 7000         moveq      #$0, d0
001790: 60ff00000006 bra.l      $1798
001796: 4e71         nop        
001798: 4ced0432fff0 movem.l    -$10(a5), d1/d4-d5/a2
00179e: 4e5d         unlk       a5
0017a0: 4e75         rts        
0017a2: 4e550000     link.w     a5, #$0
0017a6: 48e7cf30     movem.l    d0-d1/d4-d7/a2-a3, -(a7)
0017aa: 2440         movea.l    d0, a2
0017ac: 2801         move.l     d1, d4
0017ae: 2a2f0028     move.l     $28(a7), d5
0017b2: 264a         movea.l    a2, a3
0017b4: 2004         move.l     d4, d0
0017b6: e488         lsr.l      #$2, d0
0017b8: 2e00         move.l     d0, d7
0017ba: 7c00         moveq      #$0, d6
0017bc: 60ff00000008 bra.l      $17c6
0017c2: 26c5         move.l     d5, (a3)+
0017c4: 5286         addq.l     #$1, d6
0017c6: bc87         cmp.l      d7, d6
0017c8: 65fffffffff8 bcs.l      $17c2
0017ce: 4ced0cf0ffe8 movem.l    -$18(a5), d4-d7/a2-a3
0017d4: 4e5d         unlk       a5
0017d6: 4e75         rts        
0017d8: 4e550000     link.w     a5, #$0
0017dc: 48e7cf30     movem.l    d0-d1/d4-d7/a2-a3, -(a7)
0017e0: 2440         movea.l    d0, a2
0017e2: 282f0028     move.l     $28(a7), d4
0017e6: 2a2f002c     move.l     $2c(a7), d5
0017ea: 598f         subq.l     #$4, a7
0017ec: 264a         movea.l    a2, a3
0017ee: 202f0008     move.l     $8(a7), d0
0017f2: e488         lsr.l      #$2, d0
0017f4: 2e00         move.l     d0, d7
0017f6: 4297         clr.l      (a7)
0017f8: 7c00         moveq      #$0, d6
0017fa: 60ff0000001a bra.l      $1816
001800: b893         cmp.l      (a3), d4
001802: 67ff0000000e beq.l      $1812
001808: 70ff         moveq      #$ff, d0
00180a: 2e80         move.l     d0, (a7)
00180c: 60ff00000010 bra.l      $181e
001812: 26c5         move.l     d5, (a3)+
001814: 5286         addq.l     #$1, d6
001816: bc87         cmp.l      d7, d6
001818: 65ffffffffe6 bcs.l      $1800
00181e: 2017         move.l     (a7), d0
001820: 588f         addq.l     #$4, a7
001822: 60ff00000006 bra.l      $182a
001828: 4e71         nop        
00182a: 4ced0cf0ffe8 movem.l    -$18(a5), d4-d7/a2-a3
001830: 4e5d         unlk       a5
001832: 4e75         rts        
001834: 4e550000     link.w     a5, #$0
001838: 48e7cf30     movem.l    d0-d1/d4-d7/a2-a3, -(a7)
00183c: 2440         movea.l    d0, a2
00183e: 282f0028     move.l     $28(a7), d4
001842: 2a2f002c     move.l     $2c(a7), d5
001846: 598f         subq.l     #$4, a7
001848: 202f0008     move.l     $8(a7), d0
00184c: e488         lsr.l      #$2, d0
00184e: 2e00         move.l     d0, d7
001850: 2007         move.l     d7, d0
001852: e588         lsl.l      #$2, d0
001854: d08a         add.l      a2, d0
001856: 5980         subq.l     #$4, d0
001858: 2640         movea.l    d0, a3
00185a: 4297         clr.l      (a7)
00185c: 7c00         moveq      #$0, d6
00185e: 60ff0000001c bra.l      $187c
001864: b893         cmp.l      (a3), d4
001866: 67ff0000000e beq.l      $1876
00186c: 70ff         moveq      #$ff, d0
00186e: 2e80         move.l     d0, (a7)
001870: 60ff00000012 bra.l      $1884
001876: 2685         move.l     d5, (a3)
001878: 598b         subq.l     #$4, a3
00187a: 5286         addq.l     #$1, d6
00187c: bc87         cmp.l      d7, d6
00187e: 65ffffffffe4 bcs.l      $1864
001884: 2017         move.l     (a7), d0
001886: 588f         addq.l     #$4, a7
001888: 60ff00000006 bra.l      $1890
00188e: 4e71         nop        
001890: 4ced0cf0ffe8 movem.l    -$18(a5), d4-d7/a2-a3
001896: 4e5d         unlk       a5
001898: 4e75         rts        
00189a: 4e550000     link.w     a5, #$0
00189e: 48e7c000     movem.l    d0-d1, -(a7)
0018a2: 48780019     pea.l      $19.w
0018a6: 2f2f0008     move.l     $8(a7), -(a7)
0018aa: 223c000000c0 move.l     #$c0, d1
0018b0: 202f0008     move.l     $8(a7), d0
0018b4: 61ff000010d2 bsr.l      $2988
0018ba: 508f         addq.l     #$8, a7
0018bc: 4e5d         unlk       a5
0018be: 4e75         rts        
0018c0: 4e550000     link.w     a5, #$0
0018c4: 48e7c080     movem.l    d0-d1/a0, -(a7)
0018c8: 4fefffe2     lea.l      -$1e(a7), a7
0018cc: 48780019     pea.l      $19.w
0018d0: 486f0009     pea.l      $9(a7)
0018d4: 223c000000c0 move.l     #$c0, d1
0018da: 7078         moveq      #$78, d0
0018dc: d0af0026     add.l      $26(a7), d0
0018e0: 61ff000010a6 bsr.l      $2988
0018e6: 508f         addq.l     #$8, a7
0018e8: 41d7         lea.l      (a7), a0
0018ea: 2208         move.l     a0, d1
0018ec: 41ef0005     lea.l      $5(a7), a0
0018f0: 2008         move.l     a0, d0
0018f2: 61ff000018d6 bsr.l      $31ca
0018f8: 2017         move.l     (a7), d0
0018fa: 4fef001e     lea.l      $1e(a7), a7
0018fe: 60ff00000006 bra.l      $1906
001904: 4e71         nop        
001906: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00190c: 4e5d         unlk       a5
00190e: 4e75         rts        
001910: 4e550000     link.w     a5, #$0
001914: 48e7c080     movem.l    d0-d1/a0, -(a7)
001918: 4fefffe4     lea.l      -$1c(a7), a7
00191c: 48780019     pea.l      $19.w
001920: 486f0007     pea.l      $7(a7)
001924: 223c000000c0 move.l     #$c0, d1
00192a: 7078         moveq      #$78, d0
00192c: d0af0024     add.l      $24(a7), d0
001930: 61ff00001056 bsr.l      $2988
001936: 508f         addq.l     #$8, a7
001938: 41d7         lea.l      (a7), a0
00193a: 2208         move.l     a0, d1
00193c: 41ef0006     lea.l      $6(a7), a0
001940: 2008         move.l     a0, d0
001942: 61ff000018e6 bsr.l      $322a
001948: 7000         moveq      #$0, d0
00194a: 3017         move.w     (a7), d0
00194c: 4fef001c     lea.l      $1c(a7), a7
001950: 60ff00000006 bra.l      $1958
001956: 4e71         nop        
001958: 4ced0102fff8 movem.l    -$8(a5), d1/a0
00195e: 4e5d         unlk       a5
001960: 4e75         rts        
001962: 4e550000     link.w     a5, #$0
001966: 48e7c080     movem.l    d0-d1/a0, -(a7)
00196a: 4fefffe2     lea.l      -$1e(a7), a7
00196e: 48780019     pea.l      $19.w
001972: 486f0009     pea.l      $9(a7)
001976: 223c000000c0 move.l     #$c0, d1
00197c: 7078         moveq      #$78, d0
00197e: d0af0026     add.l      $26(a7), d0
001982: 61ff00001004 bsr.l      $2988
001988: 508f         addq.l     #$8, a7
00198a: 41d7         lea.l      (a7), a0
00198c: 2208         move.l     a0, d1
00198e: 41ef000a     lea.l      $a(a7), a0
001992: 2008         move.l     a0, d0
001994: 61ff00001834 bsr.l      $31ca
00199a: 2017         move.l     (a7), d0
00199c: 4fef001e     lea.l      $1e(a7), a7
0019a0: 60ff00000006 bra.l      $19a8
0019a6: 4e71         nop        
0019a8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0019ae: 4e5d         unlk       a5
0019b0: 4e75         rts        
0019b2: 4e550000     link.w     a5, #$0
0019b6: 48e7c080     movem.l    d0-d1/a0, -(a7)
0019ba: 4fefffe2     lea.l      -$1e(a7), a7
0019be: 48780019     pea.l      $19.w
0019c2: 486f0009     pea.l      $9(a7)
0019c6: 223c000000c0 move.l     #$c0, d1
0019cc: 7078         moveq      #$78, d0
0019ce: d0af0026     add.l      $26(a7), d0
0019d2: 61ff00000fb4 bsr.l      $2988
0019d8: 508f         addq.l     #$8, a7
0019da: 41d7         lea.l      (a7), a0
0019dc: 2208         move.l     a0, d1
0019de: 41ef000d     lea.l      $d(a7), a0
0019e2: 2008         move.l     a0, d0
0019e4: 61ff000017e4 bsr.l      $31ca
0019ea: 2017         move.l     (a7), d0
0019ec: 4fef001e     lea.l      $1e(a7), a7
0019f0: 60ff00000006 bra.l      $19f8
0019f6: 4e71         nop        
0019f8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
0019fe: 4e5d         unlk       a5
001a00: 4e75         rts        
001a02: 4e550000     link.w     a5, #$0
001a06: 48e7c000     movem.l    d0-d1, -(a7)
001a0a: 4fefffe6     lea.l      -$1a(a7), a7
001a0e: 48780019     pea.l      $19.w
001a12: 486f0005     pea.l      $5(a7)
001a16: 223c000000c0 move.l     #$c0, d1
001a1c: 7078         moveq      #$78, d0
001a1e: d0af0022     add.l      $22(a7), d0
001a22: 61ff00000f64 bsr.l      $2988
001a28: 508f         addq.l     #$8, a7
001a2a: 7000         moveq      #$0, d0
001a2c: 102f000c     move.b     $c(a7), d0
001a30: 4fef001a     lea.l      $1a(a7), a7
001a34: 60ff00000006 bra.l      $1a3c
001a3a: 4e71         nop        
001a3c: 4ced0002fffc movem.l    -$4(a5), d1
001a42: 4e5d         unlk       a5
001a44: 4e75         rts        
001a46: 4e550000     link.w     a5, #$0
001a4a: 48e7c080     movem.l    d0-d1/a0, -(a7)
001a4e: 4fefffe4     lea.l      -$1c(a7), a7
001a52: 48780019     pea.l      $19.w
001a56: 486f0007     pea.l      $7(a7)
001a5a: 223c000000c0 move.l     #$c0, d1
001a60: 7078         moveq      #$78, d0
001a62: d0af0024     add.l      $24(a7), d0
001a66: 61ff00000f20 bsr.l      $2988
001a6c: 508f         addq.l     #$8, a7
001a6e: 41d7         lea.l      (a7), a0
001a70: 2208         move.l     a0, d1
001a72: 41ef000f     lea.l      $f(a7), a0
001a76: 2008         move.l     a0, d0
001a78: 61ff000017b0 bsr.l      $322a
001a7e: 7000         moveq      #$0, d0
001a80: 3017         move.w     (a7), d0
001a82: 4fef001c     lea.l      $1c(a7), a7
001a86: 60ff00000006 bra.l      $1a8e
001a8c: 4e71         nop        
001a8e: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001a94: 4e5d         unlk       a5
001a96: 4e75         rts        
001a98: 4e550000     link.w     a5, #$0
001a9c: 48e7c080     movem.l    d0-d1/a0, -(a7)
001aa0: 4fefffe4     lea.l      -$1c(a7), a7
001aa4: 48780019     pea.l      $19.w
001aa8: 486f0007     pea.l      $7(a7)
001aac: 223c000000c0 move.l     #$c0, d1
001ab2: 7078         moveq      #$78, d0
001ab4: d0af0024     add.l      $24(a7), d0
001ab8: 61ff00000ece bsr.l      $2988
001abe: 508f         addq.l     #$8, a7
001ac0: 41d7         lea.l      (a7), a0
001ac2: 2208         move.l     a0, d1
001ac4: 41ef0011     lea.l      $11(a7), a0
001ac8: 2008         move.l     a0, d0
001aca: 61ff0000175e bsr.l      $322a
001ad0: 7000         moveq      #$0, d0
001ad2: 3017         move.w     (a7), d0
001ad4: 4fef001c     lea.l      $1c(a7), a7
001ad8: 60ff00000006 bra.l      $1ae0
001ade: 4e71         nop        
001ae0: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001ae6: 4e5d         unlk       a5
001ae8: 4e75         rts        
001aea: 4e550000     link.w     a5, #$0
001aee: 48e7c000     movem.l    d0-d1, -(a7)
001af2: 4fefffe6     lea.l      -$1a(a7), a7
001af6: 48780019     pea.l      $19.w
001afa: 486f0005     pea.l      $5(a7)
001afe: 223c000000c0 move.l     #$c0, d1
001b04: 7078         moveq      #$78, d0
001b06: d0af0022     add.l      $22(a7), d0
001b0a: 61ff00000e7c bsr.l      $2988
001b10: 508f         addq.l     #$8, a7
001b12: 7000         moveq      #$0, d0
001b14: 102f0015     move.b     $15(a7), d0
001b18: 4fef001a     lea.l      $1a(a7), a7
001b1c: 60ff00000006 bra.l      $1b24
001b22: 4e71         nop        
001b24: 4ced0002fffc movem.l    -$4(a5), d1
001b2a: 4e5d         unlk       a5
001b2c: 4e75         rts        
001b2e: 4e550000     link.w     a5, #$0
001b32: 48e7c080     movem.l    d0-d1/a0, -(a7)
001b36: 4fefffe4     lea.l      -$1c(a7), a7
001b3a: 48780019     pea.l      $19.w
001b3e: 486f0007     pea.l      $7(a7)
001b42: 223c000000c0 move.l     #$c0, d1
001b48: 7078         moveq      #$78, d0
001b4a: d0af0024     add.l      $24(a7), d0
001b4e: 61ff00000e38 bsr.l      $2988
001b54: 508f         addq.l     #$8, a7
001b56: 41d7         lea.l      (a7), a0
001b58: 2208         move.l     a0, d1
001b5a: 41ef0013     lea.l      $13(a7), a0
001b5e: 2008         move.l     a0, d0
001b60: 61ff000016c8 bsr.l      $322a
001b66: 7000         moveq      #$0, d0
001b68: 3017         move.w     (a7), d0
001b6a: 4fef001c     lea.l      $1c(a7), a7
001b6e: 60ff00000006 bra.l      $1b76
001b74: 4e71         nop        
001b76: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001b7c: 4e5d         unlk       a5
001b7e: 4e75         rts        
001b80: 4e550000     link.w     a5, #$0
001b84: 48e7c080     movem.l    d0-d1/a0, -(a7)
001b88: 4fefffe4     lea.l      -$1c(a7), a7
001b8c: 48780019     pea.l      $19.w
001b90: 486f0007     pea.l      $7(a7)
001b94: 223c000000c0 move.l     #$c0, d1
001b9a: 7078         moveq      #$78, d0
001b9c: d0af0024     add.l      $24(a7), d0
001ba0: 61ff00000de6 bsr.l      $2988
001ba6: 508f         addq.l     #$8, a7
001ba8: 41d7         lea.l      (a7), a0
001baa: 2208         move.l     a0, d1
001bac: 41ef0015     lea.l      $15(a7), a0
001bb0: 2008         move.l     a0, d0
001bb2: 61ff00001676 bsr.l      $322a
001bb8: 7000         moveq      #$0, d0
001bba: 3017         move.w     (a7), d0
001bbc: 4fef001c     lea.l      $1c(a7), a7
001bc0: 60ff00000006 bra.l      $1bc8
001bc6: 4e71         nop        
001bc8: 4ced0102fff8 movem.l    -$8(a5), d1/a0
001bce: 4e5d         unlk       a5
001bd0: 4e75         rts        
001bd2: 4e550000     link.w     a5, #$0
001bd6: 48e7c080     movem.l    d0-d1/a0, -(a7)
001bda: 4fefffee     lea.l      -$12(a7), a7
001bde: 42af0004     clr.l      $4(a7)
001be2: 41d7         lea.l      (a7), a0
001be4: 2208         move.l     a0, d1
001be6: 7019         moveq      #$19, d0
001be8: 61ff0000122e bsr.l      $2e18
001bee: 2f40000e     move.l     d0, $e(a7)
001bf2: 4aaf000e     tst.l      $e(a7)
001bf6: 66ff00000012 bne.l      $1c0a
001bfc: 2017         move.l     (a7), d0
001bfe: 4480         neg.l      d0
001c00: 4fef0012     lea.l      $12(a7), a7
001c04: 60ff000003d4 bra.l      $1fda
001c0a: 48780019     pea.l      $19.w
001c0e: 2f2f0012     move.l     $12(a7), -(a7)
001c12: 223c000000c0 move.l     #$c0, d1
001c18: 7078         moveq      #$78, d0
001c1a: d0af001a     add.l      $1a(a7), d0
001c1e: 61ff00000d68 bsr.l      $2988
001c24: 508f         addq.l     #$8, a7
001c26: 60ff000002cc bra.l      $1ef4
001c2c: 41ef0008     lea.l      $8(a7), a0
001c30: 2208         move.l     a0, d1
001c32: 202f000e     move.l     $e(a7), d0
001c36: 61ff00001592 bsr.l      $31ca
001c3c: 0caf00ffffff0008 cmpi.l     #$ffffff, $8(a7)
001c44: 66ff00000014 bne.l      $1c5a
001c4a: 203cfffff7fa move.l     #$fffff7fa, d0
001c50: 4fef0012     lea.l      $12(a7), a7
001c54: 60ff00000384 bra.l      $1fda
001c5a: 52af0008     addq.l     #$1, $8(a7)
001c5e: 222f000e     move.l     $e(a7), d1
001c62: 202f0008     move.l     $8(a7), d0
001c66: 61ff0000152e bsr.l      $3196
001c6c: 60ff0000031c bra.l      $1f8a
001c72: 41ef000c     lea.l      $c(a7), a0
001c76: 2208         move.l     a0, d1
001c78: 202f000e     move.l     $e(a7), d0
001c7c: 5680         addq.l     #$3, d0
001c7e: 61ff000015aa bsr.l      $322a
001c84: 0c6fffff000c cmpi.w     #$ffff, $c(a7)
001c8a: 66ff00000014 bne.l      $1ca0
001c90: 203cfffff7fa move.l     #$fffff7fa, d0
001c96: 4fef0012     lea.l      $12(a7), a7
001c9a: 60ff0000033e bra.l      $1fda
001ca0: 526f000c     addq.w     #$1, $c(a7)
001ca4: 202f000e     move.l     $e(a7), d0
001ca8: 5680         addq.l     #$3, d0
001caa: 2200         move.l     d0, d1
001cac: 7000         moveq      #$0, d0
001cae: 302f000c     move.w     $c(a7), d0
001cb2: 61ff0000154e bsr.l      $3202
001cb8: 60ff000002d0 bra.l      $1f8a
001cbe: 41ef0008     lea.l      $8(a7), a0
001cc2: 2208         move.l     a0, d1
001cc4: 202f000e     move.l     $e(a7), d0
001cc8: 5a80         addq.l     #$5, d0
001cca: 61ff000014fe bsr.l      $31ca
001cd0: 206f0012     movea.l    $12(a7), a0
001cd4: 22280074     move.l     $74(a0), d1
001cd8: 206f0012     movea.l    $12(a7), a0
001cdc: 20280070     move.l     $70(a0), d0
001ce0: 61ff00000eec bsr.l      $2bce
001ce6: d1af0008     add.l      d0, $8(a7)
001cea: 0caf00ffffff0008 cmpi.l     #$ffffff, $8(a7)
001cf2: 63ff00000014 bls.l      $1d08
001cf8: 2f7c00ffffff0008 move.l     #$ffffff, $8(a7)
001d00: 2f7cfffff7fa0004 move.l     #$fffff7fa, $4(a7)
001d08: 7074         moveq      #$74, d0
001d0a: d0af0012     add.l      $12(a7), d0
001d0e: 2200         move.l     d0, d1
001d10: 7070         moveq      #$70, d0
001d12: d0af0012     add.l      $12(a7), d0
001d16: 61ff00000e70 bsr.l      $2b88
001d1c: 202f000e     move.l     $e(a7), d0
001d20: 5a80         addq.l     #$5, d0
001d22: 2200         move.l     d0, d1
001d24: 202f0008     move.l     $8(a7), d0
001d28: 61ff0000146c bsr.l      $3196
001d2e: 60ff0000025a bra.l      $1f8a
001d34: 41ef0008     lea.l      $8(a7), a0
001d38: 2208         move.l     a0, d1
001d3a: 202f000e     move.l     $e(a7), d0
001d3e: 5080         addq.l     #$8, d0
001d40: 61ff00001488 bsr.l      $31ca
001d46: 202f0026     move.l     $26(a7), d0
001d4a: d1af0008     add.l      d0, $8(a7)
001d4e: 0caf00ffffff0008 cmpi.l     #$ffffff, $8(a7)
001d56: 63ff00000014 bls.l      $1d6c
001d5c: 2f7c00ffffff0008 move.l     #$ffffff, $8(a7)
001d64: 2f7cfffff7fa0004 move.l     #$fffff7fa, $4(a7)
001d6c: 202f000e     move.l     $e(a7), d0
001d70: 5080         addq.l     #$8, d0
001d72: 2200         move.l     d0, d1
001d74: 202f0008     move.l     $8(a7), d0
001d78: 61ff0000141c bsr.l      $3196
001d7e: 60ff0000020a bra.l      $1f8a
001d84: 206f000e     movea.l    $e(a7), a0
001d88: 7000         moveq      #$0, d0
001d8a: 1028000b     move.b     $b(a0), d0
001d8e: b0af0026     cmp.l      $26(a7), d0
001d92: 65ff00000014 bcs.l      $1da8
001d98: 203cfffff7f8 move.l     #$fffff7f8, d0
001d9e: 4fef0012     lea.l      $12(a7), a7
001da2: 60ff00000236 bra.l      $1fda
001da8: 206f000e     movea.l    $e(a7), a0
001dac: 116f0029000b move.b     $29(a7), $b(a0)
001db2: 60ff000001d6 bra.l      $1f8a
001db8: 41ef000c     lea.l      $c(a7), a0
001dbc: 2208         move.l     a0, d1
001dbe: 700c         moveq      #$c, d0
001dc0: d0af000e     add.l      $e(a7), d0
001dc4: 61ff00001464 bsr.l      $322a
001dca: 0c6fffff000c cmpi.w     #$ffff, $c(a7)
001dd0: 66ff00000014 bne.l      $1de6
001dd6: 203cfffff7fa move.l     #$fffff7fa, d0
001ddc: 4fef0012     lea.l      $12(a7), a7
001de0: 60ff000001f8 bra.l      $1fda
001de6: 526f000c     addq.w     #$1, $c(a7)
001dea: 700c         moveq      #$c, d0
001dec: d0af000e     add.l      $e(a7), d0
001df0: 2200         move.l     d0, d1
001df2: 7000         moveq      #$0, d0
001df4: 302f000c     move.w     $c(a7), d0
001df8: 61ff00001408 bsr.l      $3202
001dfe: 60ff0000018a bra.l      $1f8a
001e04: 41ef000c     lea.l      $c(a7), a0
001e08: 2208         move.l     a0, d1
001e0a: 700e         moveq      #$e, d0
001e0c: d0af000e     add.l      $e(a7), d0
001e10: 61ff00001418 bsr.l      $322a
001e16: 0c6fffff000c cmpi.w     #$ffff, $c(a7)
001e1c: 66ff00000014 bne.l      $1e32
001e22: 203cfffff7fa move.l     #$fffff7fa, d0
001e28: 4fef0012     lea.l      $12(a7), a7
001e2c: 60ff000001ac bra.l      $1fda
001e32: 526f000c     addq.w     #$1, $c(a7)
001e36: 700e         moveq      #$e, d0
001e38: d0af000e     add.l      $e(a7), d0
001e3c: 2200         move.l     d0, d1
001e3e: 7000         moveq      #$0, d0
001e40: 302f000c     move.w     $c(a7), d0
001e44: 61ff000013bc bsr.l      $3202
001e4a: 60ff0000013e bra.l      $1f8a
001e50: 206f000e     movea.l    $e(a7), a0
001e54: 0c2800ff0014 cmpi.b     #$ff, $14(a0)
001e5a: 66ff00000014 bne.l      $1e70
001e60: 203cfffff7fa move.l     #$fffff7fa, d0
001e66: 4fef0012     lea.l      $12(a7), a7
001e6a: 60ff0000016e bra.l      $1fda
001e70: 206f000e     movea.l    $e(a7), a0
001e74: 52280014     addq.b     #$1, $14(a0)
001e78: 60ff00000110 bra.l      $1f8a
001e7e: 206f000e     movea.l    $e(a7), a0
001e82: 42280014     clr.b      $14(a0)
001e86: 60ff00000102 bra.l      $1f8a
001e8c: 41ef000c     lea.l      $c(a7), a0
001e90: 2208         move.l     a0, d1
001e92: 7010         moveq      #$10, d0
001e94: d0af000e     add.l      $e(a7), d0
001e98: 61ff00001390 bsr.l      $322a
001e9e: 302f0028     move.w     $28(a7), d0
001ea2: d16f000c     add.w      d0, $c(a7)
001ea6: 7010         moveq      #$10, d0
001ea8: d0af000e     add.l      $e(a7), d0
001eac: 2200         move.l     d0, d1
001eae: 7000         moveq      #$0, d0
001eb0: 302f000c     move.w     $c(a7), d0
001eb4: 61ff0000134c bsr.l      $3202
001eba: 60ff000000ce bra.l      $1f8a
001ec0: 41ef000c     lea.l      $c(a7), a0
001ec4: 2208         move.l     a0, d1
001ec6: 7012         moveq      #$12, d0
001ec8: d0af000e     add.l      $e(a7), d0
001ecc: 61ff0000135c bsr.l      $322a
001ed2: 302f0028     move.w     $28(a7), d0
001ed6: d16f000c     add.w      d0, $c(a7)
001eda: 7012         moveq      #$12, d0
001edc: d0af000e     add.l      $e(a7), d0
001ee0: 2200         move.l     d0, d1
001ee2: 7000         moveq      #$0, d0
001ee4: 302f000c     move.w     $c(a7), d0
001ee8: 61ff00001318 bsr.l      $3202
001eee: 60ff0000009a bra.l      $1f8a
001ef4: 202f0016     move.l     $16(a7), d0
001ef8: 048000007f1b subi.l     #$7f1b, d0
001efe: 0c800000001d cmpi.l     #$1d, d0
001f04: 62ff00000084 bhi.l      $1f8a
001f0a: 203b0406     move.l     $1f12(pc, d0.w), d0
001f0e: 4efb0802     jmp        $1f12(pc, d0.l)
001f12: ffff         dc.w       $ffff
001f14: fd1a         dc.w       $fd1a
001f16: ffff         dc.w       $ffff
001f18: fd60         dc.w       $fd60
001f1a: ffff         dc.w       $ffff
001f1c: fe72fffffea6 ftrapueq.b -$5a(a2, a7.l)
001f22: ffff         dc.w       $ffff
001f24: fef2ffffff7a fbf.l      $1ea0
001f2a: ffff         dc.w       $ffff
001f2c: fdac         dc.w       $fdac
001f2e: ffff         dc.w       $ffff
001f30: fe220000     fmove      fp0, fp0
001f34: 007800000078 ori.w      #$0, $78.w
001f3a: 00000078     ori.b      #$78, d0
001f3e: 00000078     ori.b      #$78, d0
001f42: 00000078     ori.b      #$78, d0
001f46: 00000078     ori.b      #$78, d0
001f4a: 00000078     ori.b      #$78, d0
001f4e: 00000078     ori.b      #$78, d0
001f52: 00000078     ori.b      #$78, d0
001f56: 00000078     ori.b      #$78, d0
001f5a: 00000078     ori.b      #$78, d0
001f5e: 00000078     ori.b      #$78, d0
001f62: 00000078     ori.b      #$78, d0
001f66: 00000078     ori.b      #$78, d0
001f6a: ffff         dc.w       $ffff
001f6c: ffae         dc.w       $ffae
001f6e: 00000078     ori.b      #$78, d0
001f72: 00000078     ori.b      #$78, d0
001f76: 00000078     ori.b      #$78, d0
001f7a: 00000078     ori.b      #$78, d0
001f7e: 00000078     ori.b      #$78, d0
001f82: ffff         dc.w       $ffff
001f84: ff3e         dc.w       $ff3e
001f86: ffff         dc.w       $ffff
001f88: ff6c4878     frestore   $4878(a4)
001f8c: 00192f2f     ori.b      #$2f, (a1)+
001f90: 0012223c     ori.b      #$3c, (a2)
001f94: 000000c0     ori.b      #$c0, d0
001f98: 7078         moveq      #$78, d0
001f9a: d0af001a     add.l      $1a(a7), d0
001f9e: 61ff00000964 bsr.l      $2904
001fa4: 508f         addq.l     #$8, a7
001fa6: 4a80         tst.l      d0
001fa8: 67ff00000014 beq.l      $1fbe
001fae: 203cfffff7f9 move.l     #$fffff7f9, d0
001fb4: 4fef0012     lea.l      $12(a7), a7
001fb8: 60ff00000020 bra.l      $1fda
001fbe: 222f000e     move.l     $e(a7), d1
001fc2: 2017         move.l     (a7), d0
001fc4: 61ff00000ea4 bsr.l      $2e6a
001fca: 202f0004     move.l     $4(a7), d0
001fce: 4fef0012     lea.l      $12(a7), a7
001fd2: 60ff00000006 bra.l      $1fda
001fd8: 4e71         nop        
001fda: 4ced0100fffc movem.l    -$4(a5), a0
001fe0: 4e5d         unlk       a5
001fe2: 4e75         rts        
001fe4: 4e550000     link.w     a5, #$0
001fe8: 48e7eca0     movem.l    d0-d2/d4-d5/a0/a2, -(a7)
001fec: 2440         movea.l    d0, a2
001fee: 4feffff4     lea.l      -$c(a7), a7
001ff2: 41d7         lea.l      (a7), a0
001ff4: 2208         move.l     a0, d1
001ff6: 203c00000321 move.l     #$321, d0
001ffc: 61ff00000e1a bsr.l      $2e18
002002: 2f400008     move.l     d0, $8(a7)
002006: 4aaf0008     tst.l      $8(a7)
00200a: 66ff00000012 bne.l      $201e
002010: 2017         move.l     (a7), d0
002012: 4480         neg.l      d0
002014: 4fef000c     lea.l      $c(a7), a7
002018: 60ff0000012c bra.l      $2146
00201e: 206f0010     movea.l    $10(a7), a0
002022: 22280074     move.l     $74(a0), d1
002026: 206f0010     movea.l    $10(a7), a0
00202a: 20280070     move.l     $70(a0), d0
00202e: 61ff00000b9e bsr.l      $2bce
002034: 2200         move.l     d0, d1
002036: 202f0010     move.l     $10(a7), d0
00203a: 61fffffff926 bsr.l      $1962
002040: d280         add.l      d0, d1
002042: 2a01         move.l     d1, d5
002044: 48780321     pea.l      $321.w
002048: 2f2f000c     move.l     $c(a7), -(a7)
00204c: 223c000000d9 move.l     #$d9, d1
002052: 7078         moveq      #$78, d0
002054: d0af0018     add.l      $18(a7), d0
002058: 61ff0000092e bsr.l      $2988
00205e: 508f         addq.l     #$8, a7
002060: 2212         move.l     (a2), d1
002062: 202f0008     move.l     $8(a7), d0
002066: 61ff0000018c bsr.l      $21f4
00206c: 2800         move.l     d0, d4
00206e: 72ff         moveq      #$ff, d1
002070: b280         cmp.l      d0, d1
002072: 67ff00000022 beq.l      $2096
002078: 2f05         move.l     d5, -(a7)
00207a: 220a         move.l     a2, d1
00207c: 202f000c     move.l     $c(a7), d0
002080: 5280         addq.l     #$1, d0
002082: 2404         move.l     d4, d2
002084: e98a         lsl.l      #$4, d2
002086: d082         add.l      d2, d0
002088: 61ff000001b6 bsr.l      $2240
00208e: 588f         addq.l     #$4, a7
002090: 60ff00000066 bra.l      $20f8
002096: 2f05         move.l     d5, -(a7)
002098: 220a         move.l     a2, d1
00209a: 202f000c     move.l     $c(a7), d0
00209e: 61ff0000022c bsr.l      $22cc
0020a4: 588f         addq.l     #$4, a7
0020a6: 2f400004     move.l     d0, $4(a7)
0020aa: 67ff00000012 beq.l      $20be
0020b0: 202f0004     move.l     $4(a7), d0
0020b4: 4fef000c     lea.l      $c(a7), a7
0020b8: 60ff0000008c bra.l      $2146
0020be: 48780321     pea.l      $321.w
0020c2: 2f2f000c     move.l     $c(a7), -(a7)
0020c6: 223c000000d9 move.l     #$d9, d1
0020cc: 7078         moveq      #$78, d0
0020ce: d0af0018     add.l      $18(a7), d0
0020d2: 61ff00000830 bsr.l      $2904
0020d8: 508f         addq.l     #$8, a7
0020da: 4a80         tst.l      d0
0020dc: 67ff00000014 beq.l      $20f2
0020e2: 203cfffff7f9 move.l     #$fffff7f9, d0
0020e8: 4fef000c     lea.l      $c(a7), a7
0020ec: 60ff00000058 bra.l      $2146
0020f2: 206f0008     movea.l    $8(a7), a0
0020f6: 5210         addq.b     #$1, (a0)
0020f8: 48780321     pea.l      $321.w
0020fc: 2f2f000c     move.l     $c(a7), -(a7)
002100: 223c000000d9 move.l     #$d9, d1
002106: 7078         moveq      #$78, d0
002108: d0af0018     add.l      $18(a7), d0
00210c: 61ff000007f6 bsr.l      $2904
002112: 508f         addq.l     #$8, a7
002114: 4a80         tst.l      d0
002116: 67ff00000014 beq.l      $212c
00211c: 203cfffff7f9 move.l     #$fffff7f9, d0
002122: 4fef000c     lea.l      $c(a7), a7
002126: 60ff0000001e bra.l      $2146
00212c: 222f0008     move.l     $8(a7), d1
002130: 2017         move.l     (a7), d0
002132: 61ff00000d36 bsr.l      $2e6a
002138: 4480         neg.l      d0
00213a: 4fef000c     lea.l      $c(a7), a7
00213e: 60ff00000006 bra.l      $2146
002144: 4e71         nop        
002146: 4ced0534ffec movem.l    -$14(a5), d2/d4-d5/a0/a2
00214c: 4e5d         unlk       a5
00214e: 4e75         rts        
002150: 4e550000     link.w     a5, #$0
002154: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
002158: 2440         movea.l    d0, a2
00215a: 518f         subq.l     #$8, a7
00215c: 41d7         lea.l      (a7), a0
00215e: 2208         move.l     a0, d1
002160: 203c00000321 move.l     #$321, d0
002166: 61ff00000cb0 bsr.l      $2e18
00216c: 2f400004     move.l     d0, $4(a7)
002170: 4aaf0004     tst.l      $4(a7)
002174: 66ff00000010 bne.l      $2186
00217a: 2017         move.l     (a7), d0
00217c: 4480         neg.l      d0
00217e: 508f         addq.l     #$8, a7
002180: 60ff00000068 bra.l      $21ea
002186: 48780321     pea.l      $321.w
00218a: 2f2f0008     move.l     $8(a7), -(a7)
00218e: 223c000000d9 move.l     #$d9, d1
002194: 200a         move.l     a2, d0
002196: 61ff000007f0 bsr.l      $2988
00219c: 508f         addq.l     #$8, a7
00219e: 206f0004     movea.l    $4(a7), a0
0021a2: 4210         clr.b      (a0)
0021a4: 48780321     pea.l      $321.w
0021a8: 2f2f0008     move.l     $8(a7), -(a7)
0021ac: 223c000000d9 move.l     #$d9, d1
0021b2: 200a         move.l     a2, d0
0021b4: 61ff0000074e bsr.l      $2904
0021ba: 508f         addq.l     #$8, a7
0021bc: 4a80         tst.l      d0
0021be: 67ff00000012 beq.l      $21d2
0021c4: 203cfffff7f9 move.l     #$fffff7f9, d0
0021ca: 508f         addq.l     #$8, a7
0021cc: 60ff0000001c bra.l      $21ea
0021d2: 222f0004     move.l     $4(a7), d1
0021d6: 2017         move.l     (a7), d0
0021d8: 61ff00000c90 bsr.l      $2e6a
0021de: 4480         neg.l      d0
0021e0: 508f         addq.l     #$8, a7
0021e2: 60ff00000006 bra.l      $21ea
0021e8: 4e71         nop        
0021ea: 4ced0502fff4 movem.l    -$c(a5), d1/a0/a2
0021f0: 4e5d         unlk       a5
0021f2: 4e75         rts        
0021f4: 4e550000     link.w     a5, #$0
0021f8: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
0021fc: 2440         movea.l    d0, a2
0021fe: 2801         move.l     d1, d4
002200: 7a00         moveq      #$0, d5
002202: 60ff0000001c bra.l      $2220
002208: 2005         move.l     d5, d0
00220a: e988         lsl.l      #$4, d0
00220c: b8320801     cmp.b      $1(a2, d0.l), d4
002210: 66ff0000000c bne.l      $221e
002216: 2005         move.l     d5, d0
002218: 60ff0000001c bra.l      $2236
00221e: 5285         addq.l     #$1, d5
002220: 7000         moveq      #$0, d0
002222: 1012         move.b     (a2), d0
002224: b085         cmp.l      d5, d0
002226: 6effffffffe0 bgt.l      $2208
00222c: 70ff         moveq      #$ff, d0
00222e: 60ff00000006 bra.l      $2236
002234: 4e71         nop        
002236: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
00223c: 4e5d         unlk       a5
00223e: 4e75         rts        
002240: 4e550000     link.w     a5, #$0
002244: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
002248: 2440         movea.l    d0, a2
00224a: 2641         movea.l    d1, a3
00224c: 282f001c     move.l     $1c(a7), d4
002250: 0c2a00ff0002 cmpi.b     #$ff, $2(a2)
002256: 66ff0000000c bne.l      $2264
00225c: 7000         moveq      #$0, d0
00225e: 60ff00000062 bra.l      $22c2
002264: 08ea00050001 bset.b     #$5, $1(a2)
00226a: 082a00060001 btst.b     #$6, $1(a2)
002270: 66ff0000000e bne.l      $2280
002276: 522a0002     addq.b     #$1, $2(a2)
00227a: 08ea00060001 bset.b     #$6, $1(a2)
002280: 203c00ff0000 move.l     #$ff0000, d0
002286: c084         and.l      d4, d0
002288: 7210         moveq      #$10, d1
00228a: e2a0         asr.l      d1, d0
00228c: 1540000a     move.b     d0, $a(a2)
002290: 203c0000ff00 move.l     #$ff00, d0
002296: c084         and.l      d4, d0
002298: e080         asr.l      #$8, d0
00229a: 1540000b     move.b     d0, $b(a2)
00229e: 70ff         moveq      #$ff, d0
0022a0: c004         and.b      d4, d0
0022a2: 1540000c     move.b     d0, $c(a2)
0022a6: 156b0004000d move.b     $4(a3), $d(a2)
0022ac: 156b0005000e move.b     $5(a3), $e(a2)
0022b2: 156b0006000f move.b     $6(a3), $f(a2)
0022b8: 7000         moveq      #$0, d0
0022ba: 60ff00000006 bra.l      $22c2
0022c0: 4e71         nop        
0022c2: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
0022c8: 4e5d         unlk       a5
0022ca: 4e75         rts        
0022cc: 4e550000     link.w     a5, #$0
0022d0: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
0022d4: 2441         movea.l    d1, a2
0022d6: 282f0020     move.l     $20(a7), d4
0022da: 598f         subq.l     #$4, a7
0022dc: 206f0004     movea.l    $4(a7), a0
0022e0: 7000         moveq      #$0, d0
0022e2: 1010         move.b     (a0), d0
0022e4: 2e80         move.l     d0, (a7)
0022e6: 7232         moveq      #$32, d1
0022e8: b280         cmp.l      d0, d1
0022ea: 66ff00000012 bne.l      $22fe
0022f0: 203cfffff7f7 move.l     #$fffff7f7, d0
0022f6: 588f         addq.l     #$4, a7
0022f8: 60ff0000008a bra.l      $2384
0022fe: 202f0004     move.l     $4(a7), d0
002302: 5280         addq.l     #$1, d0
002304: 206f0004     movea.l    $4(a7), a0
002308: 7200         moveq      #$0, d1
00230a: 1210         move.b     (a0), d1
00230c: e989         lsl.l      #$4, d1
00230e: d081         add.l      d1, d0
002310: 2640         movea.l    d0, a3
002312: 177c00600001 move.b     #$60, $1(a3)
002318: 177c00010002 move.b     #$1, $2(a3)
00231e: 16aa0003     move.b     $3(a2), (a3)
002322: 203c00ff0000 move.l     #$ff0000, d0
002328: c084         and.l      d4, d0
00232a: 7210         moveq      #$10, d1
00232c: e2a0         asr.l      d1, d0
00232e: 1740000a     move.b     d0, $a(a3)
002332: 17400004     move.b     d0, $4(a3)
002336: 203c0000ff00 move.l     #$ff00, d0
00233c: c084         and.l      d4, d0
00233e: e080         asr.l      #$8, d0
002340: 1740000b     move.b     d0, $b(a3)
002344: 17400005     move.b     d0, $5(a3)
002348: 70ff         moveq      #$ff, d0
00234a: c004         and.b      d4, d0
00234c: 1740000c     move.b     d0, $c(a3)
002350: 17400006     move.b     d0, $6(a3)
002354: 102a0004     move.b     $4(a2), d0
002358: 1740000d     move.b     d0, $d(a3)
00235c: 17400007     move.b     d0, $7(a3)
002360: 102a0005     move.b     $5(a2), d0
002364: 1740000e     move.b     d0, $e(a3)
002368: 17400008     move.b     d0, $8(a3)
00236c: 102a0006     move.b     $6(a2), d0
002370: 1740000f     move.b     d0, $f(a3)
002374: 17400009     move.b     d0, $9(a3)
002378: 7000         moveq      #$0, d0
00237a: 588f         addq.l     #$4, a7
00237c: 60ff00000006 bra.l      $2384
002382: 4e71         nop        
002384: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
00238a: 4e5d         unlk       a5
00238c: 4e75         rts        
00238e: 4e550000     link.w     a5, #$0
002392: 48e7c8b8     movem.l    d0-d1/d4/a0/a2-a4, -(a7)
002396: 2440         movea.l    d0, a2
002398: 598f         subq.l     #$4, a7
00239a: 41d7         lea.l      (a7), a0
00239c: 2208         move.l     a0, d1
00239e: 203c00000321 move.l     #$321, d0
0023a4: 61ff00000a72 bsr.l      $2e18
0023aa: 2640         movea.l    d0, a3
0023ac: 200b         move.l     a3, d0
0023ae: 66ff00000010 bne.l      $23c0
0023b4: 2017         move.l     (a7), d0
0023b6: 4480         neg.l      d0
0023b8: 588f         addq.l     #$4, a7
0023ba: 60ff00000092 bra.l      $244e
0023c0: 48780321     pea.l      $321.w
0023c4: 4853         pea.l      (a3)
0023c6: 223c000000d9 move.l     #$d9, d1
0023cc: 200a         move.l     a2, d0
0023ce: 61ff000005b8 bsr.l      $2988
0023d4: 508f         addq.l     #$8, a7
0023d6: 7800         moveq      #$0, d4
0023d8: 60ff00000026 bra.l      $2400
0023de: 200b         move.l     a3, d0
0023e0: 5280         addq.l     #$1, d0
0023e2: 2204         move.l     d4, d1
0023e4: e989         lsl.l      #$4, d1
0023e6: d081         add.l      d1, d0
0023e8: 5280         addq.l     #$1, d0
0023ea: 2840         movea.l    d0, a4
0023ec: 08140005     btst.b     #$5, (a4)
0023f0: 66ff00000008 bne.l      $23fa
0023f6: 021400bf     andi.b     #$bf, (a4)
0023fa: 021400df     andi.b     #$df, (a4)
0023fe: 5284         addq.l     #$1, d4
002400: 7000         moveq      #$0, d0
002402: 1013         move.b     (a3), d0
002404: b084         cmp.l      d4, d0
002406: 6effffffffd6 bgt.l      $23de
00240c: 48780321     pea.l      $321.w
002410: 4853         pea.l      (a3)
002412: 223c000000d9 move.l     #$d9, d1
002418: 200a         move.l     a2, d0
00241a: 61ff000004e8 bsr.l      $2904
002420: 508f         addq.l     #$8, a7
002422: 4a80         tst.l      d0
002424: 67ff00000012 beq.l      $2438
00242a: 203cfffff7f9 move.l     #$fffff7f9, d0
002430: 588f         addq.l     #$4, a7
002432: 60ff0000001a bra.l      $244e
002438: 220b         move.l     a3, d1
00243a: 2017         move.l     (a7), d0
00243c: 61ff00000a2c bsr.l      $2e6a
002442: 4480         neg.l      d0
002444: 588f         addq.l     #$4, a7
002446: 60ff00000006 bra.l      $244e
00244c: 4e71         nop        
00244e: 4ced1d12ffe8 movem.l    -$18(a5), d1/d4/a0/a2-a4
002454: 4e5d         unlk       a5
002456: 4e75         rts        
002458: 4e550000     link.w     a5, #$0
00245c: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002460: 2440         movea.l    d0, a2
002462: 2641         movea.l    d1, a3
002464: 4878001a     pea.l      $1a.w
002468: 4853         pea.l      (a3)
00246a: 7200         moveq      #$0, d1
00246c: 200a         move.l     a2, d0
00246e: 61ff00000518 bsr.l      $2988
002474: 508f         addq.l     #$8, a7
002476: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
00247c: 4e5d         unlk       a5
00247e: 4e75         rts        
002480: 4e550000     link.w     a5, #$0
002484: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002488: 2440         movea.l    d0, a2
00248a: 2641         movea.l    d1, a3
00248c: 487800a6     pea.l      $a6.w
002490: 4853         pea.l      (a3)
002492: 721a         moveq      #$1a, d1
002494: 200a         move.l     a2, d0
002496: 61ff000004f0 bsr.l      $2988
00249c: 508f         addq.l     #$8, a7
00249e: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0024a4: 4e5d         unlk       a5
0024a6: 4e75         rts        
0024a8: 4e550000     link.w     a5, #$0
0024ac: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
0024b0: 2440         movea.l    d0, a2
0024b2: 2641         movea.l    d1, a3
0024b4: 487800a6     pea.l      $a6.w
0024b8: 4853         pea.l      (a3)
0024ba: 721a         moveq      #$1a, d1
0024bc: 200a         move.l     a2, d0
0024be: 61ff00000444 bsr.l      $2904
0024c4: 508f         addq.l     #$8, a7
0024c6: 4a80         tst.l      d0
0024c8: 67ff00000016 beq.l      $24e0
0024ce: 203cfffff7f9 move.l     #$fffff7f9, d0
0024d4: 60ff00000012 bra.l      $24e8
0024da: 60ff0000000c bra.l      $24e8
0024e0: 7000         moveq      #$0, d0
0024e2: 60ff00000004 bra.l      $24e8
0024e8: 4ced0c00fff8 movem.l    -$8(a5), a2-a3
0024ee: 4e5d         unlk       a5
0024f0: 4e75         rts        
0024f2: 4e550000     link.w     a5, #$0
0024f6: 48e7c020     movem.l    d0-d1/a2, -(a7)
0024fa: 2440         movea.l    d0, a2
0024fc: 598f         subq.l     #$4, a7
0024fe: 2ebc002fffb0 move.l     #$2fffb0, (a7)
002504: 48780004     pea.l      $4.w
002508: 7018         moveq      #$18, d0
00250a: d0af0004     add.l      $4(a7), d0
00250e: 2200         move.l     d0, d1
002510: 200a         move.l     a2, d0
002512: 61ff00000d80 bsr.l      $3294
002518: 588f         addq.l     #$4, a7
00251a: 7000         moveq      #$0, d0
00251c: 588f         addq.l     #$4, a7
00251e: 60ff00000006 bra.l      $2526
002524: 4e71         nop        
002526: 4ced0402fff8 movem.l    -$8(a5), d1/a2
00252c: 4e5d         unlk       a5
00252e: 4e75         rts        
002530: 4e550000     link.w     a5, #$0
002534: 48e7c020     movem.l    d0-d1/a2, -(a7)
002538: 2440         movea.l    d0, a2
00253a: 48780004     pea.l      $4.w
00253e: 223c0000fff8 move.l     #$fff8, d1
002544: 200a         move.l     a2, d0
002546: 61ff00000d4c bsr.l      $3294
00254c: 588f         addq.l     #$4, a7
00254e: 7000         moveq      #$0, d0
002550: 60ff00000006 bra.l      $2558
002556: 4e71         nop        
002558: 4ced0402fff8 movem.l    -$8(a5), d1/a2
00255e: 4e5d         unlk       a5
002560: 4e75         rts        
002562: 4e550000     link.w     a5, #$0
002566: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00256a: 2440         movea.l    d0, a2
00256c: 598f         subq.l     #$4, a7
00256e: 41d7         lea.l      (a7), a0
002570: 2208         move.l     a0, d1
002572: 701e         moveq      #$1e, d0
002574: 61ff000008a2 bsr.l      $2e18
00257a: 2480         move.l     d0, (a2)
00257c: 701e         moveq      #$1e, d0
00257e: b097         cmp.l      (a7), d0
002580: 6fff00000012 ble.l      $2594
002586: 203cfffffee9 move.l     #$fffffee9, d0
00258c: 588f         addq.l     #$4, a7
00258e: 60ff00000042 bra.l      $25d2
002594: 2052         movea.l    (a2), a0
002596: 4250         clr.w      (a0)
002598: 7800         moveq      #$0, d4
00259a: 60ff0000001a bra.l      $25b6
0025a0: 3004         move.w     d4, d0
0025a2: 48c0         ext.l      d0
0025a4: 2052         movea.l    (a2), a0
0025a6: 42b00c02     clr.l      $2(a0, d0.l)
0025aa: 3004         move.w     d4, d0
0025ac: 48c0         ext.l      d0
0025ae: 2052         movea.l    (a2), a0
0025b0: 42700a12     clr.w      $12(a0, d0.l)
0025b4: 5244         addq.w     #$1, d4
0025b6: 0c440003     cmpi.w     #$3, d4
0025ba: 6fffffffffe4 ble.l      $25a0
0025c0: 2052         movea.l    (a2), a0
0025c2: 42a8001a     clr.l      $1a(a0)
0025c6: 7000         moveq      #$0, d0
0025c8: 588f         addq.l     #$4, a7
0025ca: 60ff00000006 bra.l      $25d2
0025d0: 4e71         nop        
0025d2: 4ced0512fff0 movem.l    -$10(a5), d1/d4/a0/a2
0025d8: 4e5d         unlk       a5
0025da: 4e75         rts        
0025dc: 4e550000     link.w     a5, #$0
0025e0: 48e78020     movem.l    d0/a2, -(a7)
0025e4: 2440         movea.l    d0, a2
0025e6: 4252         clr.w      (a2)
0025e8: 4aaa001a     tst.l      $1a(a2)
0025ec: 67ff0000000e beq.l      $25fc
0025f2: 202a001a     move.l     $1a(a2), d0
0025f6: 61ffffffffe4 bsr.l      $25dc
0025fc: 7000         moveq      #$0, d0
0025fe: 60ff00000006 bra.l      $2606
002604: 4e71         nop        
002606: 4ced0400fffc movem.l    -$4(a5), a2
00260c: 4e5d         unlk       a5
00260e: 4e75         rts        
002610: 4e550000     link.w     a5, #$0
002614: 48e7cf20     movem.l    d0-d1/d4-d7/a2, -(a7)
002618: 2440         movea.l    d0, a2
00261a: 2801         move.l     d1, d4
00261c: 2a2f0024     move.l     $24(a7), d5
002620: 7c00         moveq      #$0, d6
002622: 60ff0000004a bra.l      $266e
002628: 3006         move.w     d6, d0
00262a: 48c0         ext.l      d0
00262c: b8b20c02     cmp.l      $2(a2, d0.l), d4
002630: 66ff00000014 bne.l      $2646
002636: 3006         move.w     d6, d0
002638: 48c0         ext.l      d0
00263a: 35850a12     move.w     d5, $12(a2, d0.l)
00263e: 7000         moveq      #$0, d0
002640: 60ff00000064 bra.l      $26a6
002646: 3006         move.w     d6, d0
002648: 48c0         ext.l      d0
00264a: 4ab20c02     tst.l      $2(a2, d0.l)
00264e: 66ff0000001c bne.l      $266c
002654: 3006         move.w     d6, d0
002656: 48c0         ext.l      d0
002658: 25840c02     move.l     d4, $2(a2, d0.l)
00265c: 3006         move.w     d6, d0
00265e: 48c0         ext.l      d0
002660: 35850a12     move.w     d5, $12(a2, d0.l)
002664: 7000         moveq      #$0, d0
002666: 60ff0000003e bra.l      $26a6
00266c: 5246         addq.w     #$1, d6
00266e: 0c460003     cmpi.w     #$3, d6
002672: 6fffffffffb4 ble.l      $2628
002678: 4aaa001a     tst.l      $1a(a2)
00267c: 66ff0000001e bne.l      $269c
002682: 701a         moveq      #$1a, d0
002684: d08a         add.l      a2, d0
002686: 61fffffffeda bsr.l      $2562
00268c: 2e00         move.l     d0, d7
00268e: 67ff0000000c beq.l      $269c
002694: 2007         move.l     d7, d0
002696: 60ff0000000e bra.l      $26a6
00269c: 246a001a     movea.l    $1a(a2), a2
0026a0: 60ffffffff7e bra.l      $2620
0026a6: 4ced04f0ffec movem.l    -$14(a5), d4-d7/a2
0026ac: 4e5d         unlk       a5
0026ae: 4e75         rts        
0026b0: 4e550000     link.w     a5, #$0
0026b4: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
0026b8: 2440         movea.l    d0, a2
0026ba: 2801         move.l     d1, d4
0026bc: 7a00         moveq      #$0, d5
0026be: 60ff00000024 bra.l      $26e4
0026c4: 3005         move.w     d5, d0
0026c6: 48c0         ext.l      d0
0026c8: b8b20c02     cmp.l      $2(a2, d0.l), d4
0026cc: 66ff00000014 bne.l      $26e2
0026d2: 3005         move.w     d5, d0
0026d4: 48c0         ext.l      d0
0026d6: 30320a12     move.w     $12(a2, d0.l), d0
0026da: 48c0         ext.l      d0
0026dc: 60ff0000002c bra.l      $270a
0026e2: 5245         addq.w     #$1, d5
0026e4: 0c450003     cmpi.w     #$3, d5
0026e8: 6fffffffffda ble.l      $26c4
0026ee: 4aaa001a     tst.l      $1a(a2)
0026f2: 66ff0000000c bne.l      $2700
0026f8: 70ff         moveq      #$ff, d0
0026fa: 60ff0000000e bra.l      $270a
002700: 246a001a     movea.l    $1a(a2), a2
002704: 60ffffffffb6 bra.l      $26bc
00270a: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
002710: 4e5d         unlk       a5
002712: 4e75         rts        
002714: 4e550000     link.w     a5, #$0
002718: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
00271c: 2440         movea.l    d0, a2
00271e: 2801         move.l     d1, d4
002720: 7a00         moveq      #$0, d5
002722: 60ff0000002c bra.l      $2750
002728: 3005         move.w     d5, d0
00272a: 48c0         ext.l      d0
00272c: b8b20c02     cmp.l      $2(a2, d0.l), d4
002730: 66ff0000001c bne.l      $274e
002736: 3005         move.w     d5, d0
002738: 48c0         ext.l      d0
00273a: 42b20c02     clr.l      $2(a2, d0.l)
00273e: 3005         move.w     d5, d0
002740: 48c0         ext.l      d0
002742: 42720a12     clr.w      $12(a2, d0.l)
002746: 7000         moveq      #$0, d0
002748: 60ff0000002c bra.l      $2776
00274e: 5245         addq.w     #$1, d5
002750: 0c450003     cmpi.w     #$3, d5
002754: 6fffffffffd2 ble.l      $2728
00275a: 4aaa001a     tst.l      $1a(a2)
00275e: 66ff0000000c bne.l      $276c
002764: 70bd         moveq      #$bd, d0
002766: 60ff0000000e bra.l      $2776
00276c: 246a001a     movea.l    $1a(a2), a2
002770: 60ffffffffae bra.l      $2720
002776: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
00277c: 4e5d         unlk       a5
00277e: 4e75         rts        
002780: 4e550000     link.w     a5, #$0
002784: 48e7c020     movem.l    d0-d1/a2, -(a7)
002788: 2440         movea.l    d0, a2
00278a: 4aaa001a     tst.l      $1a(a2)
00278e: 67ff0000000e beq.l      $279e
002794: 202a001a     move.l     $1a(a2), d0
002798: 61ffffffffe6 bsr.l      $2780
00279e: 220a         move.l     a2, d1
0027a0: 701e         moveq      #$1e, d0
0027a2: 61ff000006c6 bsr.l      $2e6a
0027a8: 7000         moveq      #$0, d0
0027aa: 60ff00000006 bra.l      $27b2
0027b0: 4e71         nop        
0027b2: 4ced0402fff8 movem.l    -$8(a5), d1/a2
0027b8: 4e5d         unlk       a5
0027ba: 4e75         rts        
0027bc: 4e550000     link.w     a5, #$0
0027c0: 48e7c838     movem.l    d0-d1/d4/a2-a4, -(a7)
0027c4: 2440         movea.l    d0, a2
0027c6: 2641         movea.l    d1, a3
0027c8: 286f0020     movea.l    $20(a7), a4
0027cc: 60ff0000002c bra.l      $27fa
0027d2: 5252         addq.w     #$1, (a2)
0027d4: 3004         move.w     d4, d0
0027d6: 48c0         ext.l      d0
0027d8: 4ab20c02     tst.l      $2(a2, d0.l)
0027dc: 67ff0000001c beq.l      $27fa
0027e2: 3004         move.w     d4, d0
0027e4: 48c0         ext.l      d0
0027e6: 26b20c02     move.l     $2(a2, d0.l), (a3)
0027ea: 3004         move.w     d4, d0
0027ec: 48c0         ext.l      d0
0027ee: 38b20a12     move.w     $12(a2, d0.l), (a4)
0027f2: 7000         moveq      #$0, d0
0027f4: 60ff00000038 bra.l      $282e
0027fa: 3812         move.w     (a2), d4
0027fc: 0c440003     cmpi.w     #$3, d4
002800: 6fffffffffd0 ble.l      $27d2
002806: 4aaa001a     tst.l      $1a(a2)
00280a: 66ff00000010 bne.l      $281c
002810: 203cffffff2d move.l     #$ffffff2d, d0
002816: 60ff00000016 bra.l      $282e
00281c: 246a001a     movea.l    $1a(a2), a2
002820: 4854         pea.l      (a4)
002822: 220b         move.l     a3, d1
002824: 200a         move.l     a2, d0
002826: 61ffffffff94 bsr.l      $27bc
00282c: 588f         addq.l     #$4, a7
00282e: 4ced1c10fff0 movem.l    -$10(a5), d4/a2-a4
002834: 4e5d         unlk       a5
002836: 4e75         rts        
002838: 4e550000     link.w     a5, #$0
00283c: 48e78020     movem.l    d0/a2, -(a7)
002840: 247c009f0000 movea.l    #$9f0000, a2
002846: 60ff00000006 bra.l      $284e
00284c: 429a         clr.l      (a2)+
00284e: b5fc009fffff cmpa.l     #$9fffff, a2
002854: 65fffffffff6 bcs.l      $284c
00285a: 4ced0400fffc movem.l    -$4(a5), a2
002860: 4e5d         unlk       a5
002862: 4e75         rts        
002864: 48e74000     movem.l    d1, -(a7)
002868: 2200         move.l     d0, d1
00286a: 02810000ffff andi.l     #$ffff, d1
002870: 0280ffff0000 andi.l     #$ffff0000, d0
002876: e088         lsr.l      #$8, d0
002878: e088         lsr.l      #$8, d0
00287a: 44fc0000     move.w     #$0, ccr
00287e: 55c9fffe     dbcs       d1, $287e
002882: 55c80008     dbcs       d0, $288c
002886: 4cdf0002     movem.l    (a7)+, d1
00288a: 4e75         rts        
00288c: 323cffff     move.w     #$ffff, d1
002890: 6000ffec     bra.w      $287e
002894: 4afb         .dc.w      $4afb
002896: 002d40282329 ori.b      #$28, $2329(a5)
00289c: 6363         bls.b      $2901
00289e: 39336472     move.w     $72(a3, d6.w), -(a4)
0028a2: 2e63         movea.l    -(a3), a7
0028a4: 09312e31     btst.l     d4, $31(a1, d2.l)
0028a8: 3720         move.w     -(a0), -(a3)
0028aa: 2020         move.l     -(a0), d0
0028ac: 20372f322f3933202020 move.l     ([$2f393320, a7, d2.l * 8], $2020), d0
0028b6: 2031323a     move.l     $3a(a1, d3.w), d0
0028ba: 35303a33     move.w     $33(a0, d3.l), -(a2)
0028be: 3600         move.w     d0, d3
0028c0: 2f6e76720000 move.l     $7672(a6), $0(a7)
0028c6: 4e550000     link.w     a5, #$0
0028ca: 48e7c830     movem.l    d0-d1/d4/a2-a3, -(a7)
0028ce: 2440         movea.l    d0, a2
0028d0: 282f001c     move.l     $1c(a7), d4
0028d4: 202a0008     move.l     $8(a2), d0
0028d8: 5280         addq.l     #$1, d0
0028da: 222f0004     move.l     $4(a7), d1
0028de: 61000a6c     bsr.w      $334c
0028e2: d092         add.l      (a2), d0
0028e4: 2640         movea.l    d0, a3
0028e6: 1684         move.b     d4, (a3)
0028e8: 7000         moveq      #$0, d0
0028ea: 1004         move.b     d4, d0
0028ec: 2200         move.l     d0, d1
0028ee: 200b         move.l     a3, d0
0028f0: 6100013e     bsr.w      $2a30
0028f4: 60000004     bra.w      $28fa
0028f8: 4e71         nop        
0028fa: 4ced0c10fff4 movem.l    -$c(a5), d4/a2-a3
002900: 4e5d         unlk       a5
002902: 4e75         rts        
002904: 4e550000     link.w     a5, #$0
002908: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
00290c: 2440         movea.l    d0, a2
00290e: 266f0024     movea.l    $24(a7), a3
002912: 282f0028     move.l     $28(a7), d4
002916: 4fefff3a     lea.l      -$c6(a7), a7
00291a: 60000050     bra.w      $296c
00291e: 701f         moveq      #$1f, d0
002920: c0af00ca     and.l      $ca(a7), d0
002924: 7220         moveq      #$20, d1
002926: 9280         sub.l      d0, d1
002928: 2a01         move.l     d1, d5
00292a: ba84         cmp.l      d4, d5
00292c: 63000004     bls.w      $2932
002930: 2a04         move.l     d4, d5
002932: 4857         pea.l      (a7)
002934: 2f05         move.l     d5, -(a7)
002936: 4853         pea.l      (a3)
002938: 222f00d6     move.l     $d6(a7), d1
00293c: 200a         move.l     a2, d0
00293e: 6100015a     bsr.w      $2a9a
002942: 4fef000c     lea.l      $c(a7), a7
002946: 4a80         tst.l      d0
002948: 6700001a     beq.w      $2964
00294c: 41d7         lea.l      (a7), a0
00294e: 2008         move.l     a0, d0
002950: 610001e8     bsr.w      $2b3a
002954: 4a80         tst.l      d0
002956: 6700000c     beq.w      $2964
00295a: 70ff         moveq      #$ff, d0
00295c: 4fef00c6     lea.l      $c6(a7), a7
002960: 6000001c     bra.w      $297e
002964: dbaf00ca     add.l      d5, $ca(a7)
002968: d7c5         adda.l     d5, a3
00296a: 9885         sub.l      d5, d4
00296c: 4a84         tst.l      d4
00296e: 6600ffae     bne.w      $291e
002972: 7000         moveq      #$0, d0
002974: 4fef00c6     lea.l      $c6(a7), a7
002978: 60000004     bra.w      $297e
00297c: 4e71         nop        
00297e: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
002984: 4e5d         unlk       a5
002986: 4e75         rts        
002988: 4e550000     link.w     a5, #$0
00298c: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
002990: 246f0024     movea.l    $24(a7), a2
002994: 282f0028     move.l     $28(a7), d4
002998: 2057         movea.l    (a7), a0
00299a: 20280008     move.l     $8(a0), d0
00299e: 5280         addq.l     #$1, d0
0029a0: 2a00         move.l     d0, d5
0029a2: 2005         move.l     d5, d0
0029a4: 222f0004     move.l     $4(a7), d1
0029a8: 610009a2     bsr.w      $334c
0029ac: 2057         movea.l    (a7), a0
0029ae: d090         add.l      (a0), d0
0029b0: 2640         movea.l    d0, a3
0029b2: 60000006     bra.w      $29ba
0029b6: 14d3         move.b     (a3), (a2)+
0029b8: d7c5         adda.l     d5, a3
0029ba: 2004         move.l     d4, d0
0029bc: 5384         subq.l     #$1, d4
0029be: 4a80         tst.l      d0
0029c0: 6600fff4     bne.w      $29b6
0029c4: 7000         moveq      #$0, d0
0029c6: 60000004     bra.w      $29cc
0029ca: 4e71         nop        
0029cc: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
0029d2: 4e5d         unlk       a5
0029d4: 4e75         rts        
0029d6: 4e550000     link.w     a5, #$0
0029da: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
0029de: 246f0024     movea.l    $24(a7), a2
0029e2: 282f0028     move.l     $28(a7), d4
0029e6: 2057         movea.l    (a7), a0
0029e8: 20280008     move.l     $8(a0), d0
0029ec: 5280         addq.l     #$1, d0
0029ee: 2a00         move.l     d0, d5
0029f0: 2005         move.l     d5, d0
0029f2: 222f0004     move.l     $4(a7), d1
0029f6: 61000954     bsr.w      $334c
0029fa: 2057         movea.l    (a7), a0
0029fc: d090         add.l      (a0), d0
0029fe: 2640         movea.l    d0, a3
002a00: 60000012     bra.w      $2a14
002a04: 101a         move.b     (a2)+, d0
002a06: b013         cmp.b      (a3), d0
002a08: 67000008     beq.w      $2a12
002a0c: 70ff         moveq      #$ff, d0
002a0e: 60000016     bra.w      $2a26
002a12: d7c5         adda.l     d5, a3
002a14: 2004         move.l     d4, d0
002a16: 5384         subq.l     #$1, d4
002a18: 4a80         tst.l      d0
002a1a: 6600ffe8     bne.w      $2a04
002a1e: 7000         moveq      #$0, d0
002a20: 60000004     bra.w      $2a26
002a24: 4e71         nop        
002a26: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
002a2c: 4e5d         unlk       a5
002a2e: 4e75         rts        
002a30: 4e550000     link.w     a5, #$0
002a34: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
002a38: 2440         movea.l    d0, a2
002a3a: 2801         move.l     d1, d4
002a3c: 610004f8     bsr.w      $2f36
002a40: 2a00         move.l     d0, d5
002a42: 60000014     bra.w      $2a58
002a46: 7001         moveq      #$1, d0
002a48: 610004a0     bsr.w      $2eea
002a4c: b812         cmp.b      (a2), d4
002a4e: 66000008     bne.w      $2a58
002a52: 7000         moveq      #$0, d0
002a54: 6000003a     bra.w      $2a90
002a58: 610004dc     bsr.w      $2f36
002a5c: b085         cmp.l      d5, d0
002a5e: 6700ffe6     beq.w      $2a46
002a62: 610004d2     bsr.w      $2f36
002a66: 2a00         move.l     d0, d5
002a68: 60000014     bra.w      $2a7e
002a6c: 7001         moveq      #$1, d0
002a6e: 6100047a     bsr.w      $2eea
002a72: b812         cmp.b      (a2), d4
002a74: 66000008     bne.w      $2a7e
002a78: 7000         moveq      #$0, d0
002a7a: 60000014     bra.w      $2a90
002a7e: 610004b6     bsr.w      $2f36
002a82: b085         cmp.l      d5, d0
002a84: 6700ffe6     beq.w      $2a6c
002a88: 70ff         moveq      #$ff, d0
002a8a: 60000004     bra.w      $2a90
002a8e: 4e71         nop        
002a90: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
002a96: 4e5d         unlk       a5
002a98: 4e75         rts        
002a9a: 4e550000     link.w     a5, #$0
002a9e: 48e7ccb0     movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
002aa2: 246f002c     movea.l    $2c(a7), a2
002aa6: 518f         subq.l     #$8, a7
002aa8: 7800         moveq      #$0, d4
002aaa: 206f0008     movea.l    $8(a7), a0
002aae: 20280008     move.l     $8(a0), d0
002ab2: 5280         addq.l     #$1, d0
002ab4: 2e80         move.l     d0, (a7)
002ab6: 2017         move.l     (a7), d0
002ab8: 222f000c     move.l     $c(a7), d1
002abc: 6100088e     bsr.w      $334c
002ac0: 206f0008     movea.l    $8(a7), a0
002ac4: d090         add.l      (a0), d0
002ac6: 2640         movea.l    d0, a3
002ac8: 42af0004     clr.l      $4(a7)
002acc: 60000034     bra.w      $2b02
002ad0: 206f002c     movea.l    $2c(a7), a0
002ad4: 52af002c     addq.l     #$1, $2c(a7)
002ad8: 1a10         move.b     (a0), d5
002ada: ba13         cmp.b      (a3), d5
002adc: 6700001c     beq.w      $2afa
002ae0: 2004         move.l     d4, d0
002ae2: 7206         moveq      #$6, d1
002ae4: 61000866     bsr.w      $334c
002ae8: 258b0800     move.l     a3, (a2, d0.l)
002aec: 2004         move.l     d4, d0
002aee: 5284         addq.l     #$1, d4
002af0: 7206         moveq      #$6, d1
002af2: 61000858     bsr.w      $334c
002af6: 15850804     move.b     d5, $4(a2, d0.l)
002afa: 2017         move.l     (a7), d0
002afc: d7c0         adda.l     d0, a3
002afe: 52af0004     addq.l     #$1, $4(a7)
002b02: 202f0004     move.l     $4(a7), d0
002b06: b0af0030     cmp.l      $30(a7), d0
002b0a: 6500ffc4     bcs.w      $2ad0
002b0e: 2004         move.l     d4, d0
002b10: 7206         moveq      #$6, d1
002b12: 61000838     bsr.w      $334c
002b16: 42b20800     clr.l      (a2, d0.l)
002b1a: 4a84         tst.l      d4
002b1c: 67000008     beq.w      $2b26
002b20: 7001         moveq      #$1, d0
002b22: 60000004     bra.w      $2b28
002b26: 7000         moveq      #$0, d0
002b28: 508f         addq.l     #$8, a7
002b2a: 60000004     bra.w      $2b30
002b2e: 4e71         nop        
002b30: 4ced0d30ffec movem.l    -$14(a5), d4-d5/a0/a2-a3
002b36: 4e5d         unlk       a5
002b38: 4e75         rts        
002b3a: 4e550000     link.w     a5, #$0
002b3e: 48e7c030     movem.l    d0-d1/a2-a3, -(a7)
002b42: 598f         subq.l     #$4, a7
002b44: 610005be     bsr.w      $3104
002b48: 2e80         move.l     d0, (a7)
002b4a: 266f0004     movea.l    $4(a7), a3
002b4e: 60000008     bra.w      $2b58
002b52: 14ab0004     move.b     $4(a3), (a2)
002b56: 5c8b         addq.l     #$6, a3
002b58: 2453         movea.l    (a3), a2
002b5a: 200a         move.l     a2, d0
002b5c: 6600fff4     bne.w      $2b52
002b60: 2017         move.l     (a7), d0
002b62: 61000514     bsr.w      $3078
002b66: 5d8b         subq.l     #$6, a3
002b68: 7000         moveq      #$0, d0
002b6a: 102b0004     move.b     $4(a3), d0
002b6e: 2200         move.l     d0, d1
002b70: 2013         move.l     (a3), d0
002b72: 6100febc     bsr.w      $2a30
002b76: 588f         addq.l     #$4, a7
002b78: 60000004     bra.w      $2b7e
002b7c: 4e71         nop        
002b7e: 4ced0c02fff4 movem.l    -$c(a5), d1/a2-a3
002b84: 4e5d         unlk       a5
002b86: 4e75         rts        
002b88: 4e550000     link.w     a5, #$0
002b8c: 48e7c0b0     movem.l    d0-d1/a0/a2-a3, -(a7)
002b90: 2440         movea.l    d0, a2
002b92: 2641         movea.l    d1, a3
002b94: 4feffff6     lea.l      -$a(a7), a7
002b98: 4857         pea.l      (a7)
002b9a: 486f0008     pea.l      $8(a7)
002b9e: 4852         pea.l      (a2)
002ba0: 41ef0012     lea.l      $12(a7), a0
002ba4: 2208         move.l     a0, d1
002ba6: 7001         moveq      #$1, d0
002ba8: 61ff0000035e bsr.l      $2f08
002bae: 4fef000c     lea.l      $c(a7), a7
002bb2: 202f0006     move.l     $6(a7), d0
002bb6: 4c7c08000000003c divs.l     #$3c, d0
002bbe: 2680         move.l     d0, (a3)
002bc0: 4fef000a     lea.l      $a(a7), a7
002bc4: 4ced0d00fff4 movem.l    -$c(a5), a0/a2-a3
002bca: 4e5d         unlk       a5
002bcc: 4e75         rts        
002bce: 4e550000     link.w     a5, #$0
002bd2: 48e7ce80     movem.l    d0-d1/d4-d6/a0, -(a7)
002bd6: 2800         move.l     d0, d4
002bd8: 2a01         move.l     d1, d5
002bda: 4feffff2     lea.l      -$e(a7), a7
002bde: 4857         pea.l      (a7)
002be0: 486f0008     pea.l      $8(a7)
002be4: 486f000e     pea.l      $e(a7)
002be8: 41ef0016     lea.l      $16(a7), a0
002bec: 2208         move.l     a0, d1
002bee: 7001         moveq      #$1, d0
002bf0: 61ff00000316 bsr.l      $2f08
002bf6: 4fef000c     lea.l      $c(a7), a7
002bfa: 202f000a     move.l     $a(a7), d0
002bfe: 4c7c08000000003c divs.l     #$3c, d0
002c06: 2c00         move.l     d0, d6
002c08: 202f0006     move.l     $6(a7), d0
002c0c: 9084         sub.l      d4, d0
002c0e: 4c3c0000000005a0 mulu.l     #$5a0, d0
002c16: d086         add.l      d6, d0
002c18: 9085         sub.l      d5, d0
002c1a: 4fef000e     lea.l      $e(a7), a7
002c1e: 60ff00000006 bra.l      $2c26
002c24: 4e71         nop        
002c26: 4ced0170fff0 movem.l    -$10(a5), d4-d6/a0
002c2c: 4e5d         unlk       a5
002c2e: 4e75         rts        
002c30: 4e550000     link.w     a5, #$0
002c34: 48e7cc20     movem.l    d0-d1/d4-d5/a2, -(a7)
002c38: 2801         move.l     d1, d4
002c3a: 7a00         moveq      #$0, d5
002c3c: 2457         movea.l    (a7), a2
002c3e: 60ff0000000a bra.l      $2c4a
002c44: 7000         moveq      #$0, d0
002c46: 101a         move.b     (a2)+, d0
002c48: da80         add.l      d0, d5
002c4a: 2004         move.l     d4, d0
002c4c: 5384         subq.l     #$1, d4
002c4e: 4a80         tst.l      d0
002c50: 66fffffffff2 bne.l      $2c44
002c56: 4aaf001c     tst.l      $1c(a7)
002c5a: 67ff00000038 beq.l      $2c94
002c60: b5ef001c     cmpa.l     $1c(a7), a2
002c64: 63ff0000002e bls.l      $2c94
002c6a: 202f001c     move.l     $1c(a7), d0
002c6e: b097         cmp.l      (a7), d0
002c70: 65ff00000022 bcs.l      $2c94
002c76: 7804         moveq      #$4, d4
002c78: 246f001c     movea.l    $1c(a7), a2
002c7c: 60ff0000000a bra.l      $2c88
002c82: 7000         moveq      #$0, d0
002c84: 101a         move.b     (a2)+, d0
002c86: 9a80         sub.l      d0, d5
002c88: 2004         move.l     d4, d0
002c8a: 5384         subq.l     #$1, d4
002c8c: 4a80         tst.l      d0
002c8e: 66fffffffff2 bne.l      $2c82
002c94: 2005         move.l     d5, d0
002c96: 60ff00000006 bra.l      $2c9e
002c9c: 4e71         nop        
002c9e: 4ced0430fff4 movem.l    -$c(a5), d4-d5/a2
002ca4: 4e5d         unlk       a5
002ca6: 4e75         rts        
002ca8: 48e76080     movem.l    d1-d2/a0, -(a7)
002cac: c141         exg.l      d0, d1
002cae: 0c8100000002 cmpi.l     #$2, d1
002cb4: 6714         beq.b      $2cca
002cb6: 0c8100000005 cmpi.l     #$5, d1
002cbc: 670c         beq.b      $2cca
002cbe: 206f0010     movea.l    $10(a7), a0
002cc2: 2408         move.l     a0, d2
002cc4: 4e40         trap       #$0
002cc6: 008d         .dc.w      $008d
002cc8: 604e         bra.b      $2d18
002cca: 4e40         trap       #$0
002ccc: 008d         .dc.w      $008d
002cce: 655c         bcs.b      $2d2c
002cd0: 2002         move.l     d2, d0
002cd2: 4cdf0106     movem.l    (a7)+, d1-d2/a0
002cd6: 4e75         rts        
002cd8: 48e77080     movem.l    d1-d3/a0, -(a7)
002cdc: c141         exg.l      d0, d1
002cde: 206f0014     movea.l    $14(a7), a0
002ce2: 242f0018     move.l     $18(a7), d2
002ce6: 262f001c     move.l     $1c(a7), d3
002cea: 4e40         trap       #$0
002cec: 008d         .dc.w      $008d
002cee: 6032         bra.b      $2d22
002cf0: 48e76080     movem.l    d1-d2/a0, -(a7)
002cf4: c141         exg.l      d0, d1
002cf6: 206f0010     movea.l    $10(a7), a0
002cfa: 2408         move.l     a0, d2
002cfc: 4e40         trap       #$0
002cfe: 008e         .dc.w      $008e
002d00: 6016         bra.b      $2d18
002d02: 48e76080     movem.l    d1-d2/a0, -(a7)
002d06: c141         exg.l      d0, d1
002d08: 206f0010     movea.l    $10(a7), a0
002d0c: 242f0014     move.l     $14(a7), d2
002d10: 4e40         trap       #$0
002d12: 008e         .dc.w      $008e
002d14: 60000002     bra.w      $2d18
002d18: 6512         bcs.b      $2d2c
002d1a: 2001         move.l     d1, d0
002d1c: 4cdf0106     movem.l    (a7)+, d1-d2/a0
002d20: 4e75         rts        
002d22: 650c         bcs.b      $2d30
002d24: 2001         move.l     d1, d0
002d26: 4cdf010e     movem.l    (a7)+, d1-d3/a0
002d2a: 4e75         rts        
002d2c: 70ff         moveq      #$ff, d0
002d2e: 60ec         bra.b      $2d1c
002d30: 70ff         moveq      #$ff, d0
002d32: 60f2         bra.b      $2d26
002d34: 2f01         move.l     d1, -(a7)
002d36: 4e40         trap       #$0
002d38: 008f         .dc.w      $008f
002d3a: 6504         bcs.b      $2d40
002d3c: 221f         move.l     (a7)+, d1
002d3e: 4e75         rts        
002d40: 4280         clr.l      d0
002d42: 3001         move.w     d1, d0
002d44: 4480         neg.l      d0
002d46: 4cdf0002     movem.l    (a7)+, d1
002d4a: 4e75         rts        
002d4c: 48e74080     movem.l    d1/a0, -(a7)
002d50: 2040         movea.l    d0, a0
002d52: 2001         move.l     d1, d0
002d54: 4e40         trap       #$0
002d56: 008465064cdf ori.l      #$65064cdf, d4
002d5c: 0102         btst.l     d0, d2
002d5e: 4e75         rts        
002d60: 4280         clr.l      d0
002d62: 3001         move.w     d1, d0
002d64: 4480         neg.l      d0
002d66: 4cdf0102     movem.l    (a7)+, d1/a0
002d6a: 4e75         rts        
002d6c: 48e74000     movem.l    d1, -(a7)
002d70: 4e40         trap       #$0
002d72: 002b604848e7 ori.b      #$48, $48e7(a3)
002d78: 40b0206f     negx.l     $6f(a0, d2.w)
002d7c: 0014246f     ori.b      #$6f, (a4)
002d80: 0018266f     ori.b      #$6f, (a0)+
002d84: 001c4e40     ori.b      #$40, (a4)+
002d88: 002a605048e7 ori.b      #$50, $48e7(a2)
002d8e: 40a0         negx.l     -(a0)
002d90: 207c00000000 movea.l    #$0, a0
002d96: 2441         movea.l    d1, a2
002d98: 4e40         trap       #$0
002d9a: 002a603448e7 ori.b      #$34, $48e7(a2)
002da0: 60a0         bra.b      $2d42
002da2: 2400         move.l     d0, d2
002da4: 2041         movea.l    d1, a0
002da6: 246f0014     movea.l    $14(a7), a2
002daa: 4e40         trap       #$0
002dac: 0038603648e7 ori.b      #$36, $48e7.w
002db2: 4050         negx.w     (a0)
002db4: 2240         movea.l    d0, a1
002db6: 2641         movea.l    d1, a3
002db8: 4e40         trap       #$0
002dba: 0032600a653042804cdf ori.b      #$a, $42804cdf(a2, d6.w * 4)
002dc4: 00024e75     ori.b      #$75, d2
002dc8: 652e         bcs.b      $2df8
002dca: 4280         clr.l      d0
002dcc: 4cdf0a02     movem.l    (a7)+, d1/a1/a3
002dd0: 4e75         rts        
002dd2: 652c         bcs.b      $2e00
002dd4: 4280         clr.l      d0
002dd6: 4cdf0502     movem.l    (a7)+, d1/a0/a2
002dda: 4e75         rts        
002ddc: 652a         bcs.b      $2e08
002dde: 4280         clr.l      d0
002de0: 4cdf0d02     movem.l    (a7)+, d1/a0/a2-a3
002de4: 4e75         rts        
002de6: 6528         bcs.b      $2e10
002de8: 4280         clr.l      d0
002dea: 4cdf0506     movem.l    (a7)+, d1-d2/a0/a2
002dee: 4e75         rts        
002df0: 4280         clr.l      d0
002df2: 3001         move.w     d1, d0
002df4: 4480         neg.l      d0
002df6: 60ca         bra.b      $2dc2
002df8: 4280         clr.l      d0
002dfa: 3001         move.w     d1, d0
002dfc: 4480         neg.l      d0
002dfe: 60cc         bra.b      $2dcc
002e00: 4280         clr.l      d0
002e02: 3001         move.w     d1, d0
002e04: 4480         neg.l      d0
002e06: 60ce         bra.b      $2dd6
002e08: 4280         clr.l      d0
002e0a: 3001         move.w     d1, d0
002e0c: 4480         neg.l      d0
002e0e: 60d0         bra.b      $2de0
002e10: 4280         clr.l      d0
002e12: 3001         move.w     d1, d0
002e14: 4480         neg.l      d0
002e16: 60d2         bra.b      $2dea
002e18: 48e700a0     movem.l    a0/a2, -(a7)
002e1c: 2f01         move.l     d1, -(a7)
002e1e: 4e40         trap       #$0
002e20: 0028650c205f ori.b      #$c, $205f(a0)
002e26: 2080         move.l     d0, (a0)
002e28: 200a         move.l     a2, d0
002e2a: 4cdf0500     movem.l    (a7)+, a0/a2
002e2e: 4e75         rts        
002e30: 4280         clr.l      d0
002e32: 3001         move.w     d1, d0
002e34: 205f         movea.l    (a7)+, a0
002e36: 2080         move.l     d0, (a0)
002e38: 4280         clr.l      d0
002e3a: 4cdf0500     movem.l    (a7)+, a0/a2
002e3e: 4e75         rts        
002e40: 48e700a0     movem.l    a0/a2, -(a7)
002e44: 4e40         trap       #$0
002e46: 005c650e     ori.w      #$650e, (a4)+
002e4a: 206f000c     movea.l    $c(a7), a0
002e4e: 2080         move.l     d0, (a0)
002e50: 200a         move.l     a2, d0
002e52: 4cdf0500     movem.l    (a7)+, a0/a2
002e56: 4e75         rts        
002e58: 4280         clr.l      d0
002e5a: 3001         move.w     d1, d0
002e5c: 206f000c     movea.l    $c(a7), a0
002e60: 2080         move.l     d0, (a0)
002e62: 4280         clr.l      d0
002e64: 4cdf0500     movem.l    (a7)+, a0/a2
002e68: 4e75         rts        
002e6a: 2f0a         move.l     a2, -(a7)
002e6c: 2441         movea.l    d1, a2
002e6e: 4e40         trap       #$0
002e70: 0029245f6504 ori.b      #$5f, $6504(a1)
002e76: 4280         clr.l      d0
002e78: 4e75         rts        
002e7a: 4280         clr.l      d0
002e7c: 3001         move.w     d1, d0
002e7e: 4e75         rts        
002e80: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
002e84: 242f001c     move.l     $1c(a7), d2
002e88: 262f0020     move.l     $20(a7), d3
002e8c: 282f0024     move.l     $24(a7), d4
002e90: 206f0028     movea.l    $28(a7), a0
002e94: 226f002c     movea.l    $2c(a7), a1
002e98: 4e40         trap       #$0
002e9a: 00036506     ori.b      #$6, d3
002e9e: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
002ea2: 4e75         rts        
002ea4: 4280         clr.l      d0
002ea6: 60f6         bra.b      $2e9e
002ea8: 48e74000     movem.l    d1, -(a7)
002eac: 4e40         trap       #$0
002eae: 0008         .dc.w      $0008
002eb0: 600000be     bra.w      $2f70
002eb4: 48e76000     movem.l    d1-d2, -(a7)
002eb8: 008180000000 ori.l      #$80000000, d1
002ebe: 4e40         trap       #$0
002ec0: 00276000     ori.b      #$0, -(a7)
002ec4: 00a248e76000 ori.l      #$48e76000, -(a2)
002eca: 242f000c     move.l     $c(a7), d2
002ece: 4e40         trap       #$0
002ed0: 00276000     ori.b      #$0, -(a7)
002ed4: 009248e74000 ori.l      #$48e74000, (a2)
002eda: e180         asl.l      #$8, d0
002edc: 008080000000 ori.l      #$80000000, d0
002ee2: 4e40         trap       #$0
002ee4: 000a         .dc.w      $000a
002ee6: 60000092     bra.w      $2f7a
002eea: 48e74000     movem.l    d1, -(a7)
002eee: 4e40         trap       #$0
002ef0: 000a         .dc.w      $000a
002ef2: 60000086     bra.w      $2f7a
002ef6: 48e74080     movem.l    d1/a0, -(a7)
002efa: 2040         movea.l    d0, a0
002efc: 2001         move.l     d1, d0
002efe: 222f000c     move.l     $c(a7), d1
002f02: 4e40         trap       #$0
002f04: 0017607a     ori.b      #$7a, (a7)
002f08: 48e77080     movem.l    d1-d3/a0, -(a7)
002f0c: 2041         movea.l    d1, a0
002f0e: 4e40         trap       #$0
002f10: 0015651c     ori.b      #$1c, (a5)
002f14: 2080         move.l     d0, (a0)
002f16: 206f0014     movea.l    $14(a7), a0
002f1a: 2081         move.l     d1, (a0)
002f1c: 206f0018     movea.l    $18(a7), a0
002f20: 3082         move.w     d2, (a0)
002f22: 206f001c     movea.l    $1c(a7), a0
002f26: 2083         move.l     d3, (a0)
002f28: 4280         clr.l      d0
002f2a: 4cdf010e     movem.l    (a7)+, d1-d3/a0
002f2e: 4e75         rts        
002f30: 4280         clr.l      d0
002f32: 3001         move.w     d1, d0
002f34: 60f4         bra.b      $2f2a
002f36: 48e77000     movem.l    d1-d3, -(a7)
002f3a: 7003         moveq      #$3, d0
002f3c: 4e40         trap       #$0
002f3e: 0015604c     ori.b      #$4c, (a5)
002f42: 48e77000     movem.l    d1-d3, -(a7)
002f46: 7000         moveq      #$0, d0
002f48: 4e40         trap       #$0
002f4a: 0015604c     ori.b      #$4c, (a5)
002f4e: 48e77000     movem.l    d1-d3, -(a7)
002f52: 7000         moveq      #$0, d0
002f54: 4e40         trap       #$0
002f56: 00156048     ori.b      #$48, (a5)
002f5a: 48e77000     movem.l    d1-d3, -(a7)
002f5e: 7000         moveq      #$0, d0
002f60: 4e40         trap       #$0
002f62: 00156040     ori.b      #$40, (a5)
002f66: 6544         bcs.b      $2fac
002f68: 2002         move.l     d2, d0
002f6a: 4cdf0006     movem.l    (a7)+, d1-d2
002f6e: 4e75         rts        
002f70: 654a         bcs.b      $2fbc
002f72: 4280         clr.l      d0
002f74: 4cdf0002     movem.l    (a7)+, d1
002f78: 4e75         rts        
002f7a: 6540         bcs.b      $2fbc
002f7c: 4cdf0002     movem.l    (a7)+, d1
002f80: 4e75         rts        
002f82: 6530         bcs.b      $2fb4
002f84: 2f41000c     move.l     d1, $c(a7)
002f88: 4cdf0102     movem.l    (a7)+, d1/a0
002f8c: 4e75         rts        
002f8e: 6534         bcs.b      $2fc4
002f90: 4280         clr.l      d0
002f92: 3003         move.w     d3, d0
002f94: 4cdf000e     movem.l    (a7)+, d1-d3
002f98: 4e75         rts        
002f9a: 6528         bcs.b      $2fc4
002f9c: 4280         clr.l      d0
002f9e: 3002         move.w     d2, d0
002fa0: 60f2         bra.b      $2f94
002fa2: 6520         bcs.b      $2fc4
002fa4: 60ee         bra.b      $2f94
002fa6: 651c         bcs.b      $2fc4
002fa8: 2001         move.l     d1, d0
002faa: 60e8         bra.b      $2f94
002fac: 203cffffffff move.l     #$ffffffff, d0
002fb2: 60b6         bra.b      $2f6a
002fb4: 4280         clr.l      d0
002fb6: 3001         move.w     d1, d0
002fb8: 4480         neg.l      d0
002fba: 60cc         bra.b      $2f88
002fbc: 4280         clr.l      d0
002fbe: 3001         move.w     d1, d0
002fc0: 4480         neg.l      d0
002fc2: 60b0         bra.b      $2f74
002fc4: 4280         clr.l      d0
002fc6: 3001         move.w     d1, d0
002fc8: 4480         neg.l      d0
002fca: 60c8         bra.b      $2f94
002fcc: 4e722700     stop       #$2700
002fd0: 4e75         rts        
002fd2: 4e550000     link.w     a5, #$0
002fd6: 48e7c080     movem.l    d0-d1/a0, -(a7)
002fda: 206f0014     movea.l    $14(a7), a0
002fde: 2097         move.l     (a7), (a0)
002fe0: 206f0014     movea.l    $14(a7), a0
002fe4: 216f00040004 move.l     $4(a7), $4(a0)
002fea: 4ced0100fffc movem.l    -$4(a5), a0
002ff0: 4e5d         unlk       a5
002ff2: 4e75         rts        
002ff4: 4e550000     link.w     a5, #$0
002ff8: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
002ffc: 2440         movea.l    d0, a2
002ffe: 2801         move.l     d1, d4
003000: 7000         moveq      #$0, d0
003002: 1004         move.b     d4, d0
003004: 5440         addq.w     #$2, d0
003006: 48c0         ext.l      d0
003008: 2052         movea.l    (a2), a0
00300a: 11bc00100800 move.b     #$10, (a0, d0.l)
003010: 7000         moveq      #$0, d0
003012: 1004         move.b     d4, d0
003014: 2052         movea.l    (a2), a0
003016: 11af001f0800 move.b     $1f(a7), (a0, d0.l)
00301c: 7000         moveq      #$0, d0
00301e: 1004         move.b     d4, d0
003020: 2052         movea.l    (a2), a0
003022: 11af00230800 move.b     $23(a7), (a0, d0.l)
003028: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
00302e: 4e5d         unlk       a5
003030: 4e75         rts        
003032: 4e550000     link.w     a5, #$0
003036: 48e7c8a0     movem.l    d0-d1/d4/a0/a2, -(a7)
00303a: 2440         movea.l    d0, a2
00303c: 2801         move.l     d1, d4
00303e: 7000         moveq      #$0, d0
003040: 1004         move.b     d4, d0
003042: 5440         addq.w     #$2, d0
003044: 48c0         ext.l      d0
003046: 2052         movea.l    (a2), a0
003048: 11bc00200800 move.b     #$20, (a0, d0.l)
00304e: 7000         moveq      #$0, d0
003050: 1004         move.b     d4, d0
003052: 5440         addq.w     #$2, d0
003054: 48c0         ext.l      d0
003056: 2052         movea.l    (a2), a0
003058: 11bc00300800 move.b     #$30, (a0, d0.l)
00305e: 7000         moveq      #$0, d0
003060: 1004         move.b     d4, d0
003062: 5440         addq.w     #$2, d0
003064: 48c0         ext.l      d0
003066: 2052         movea.l    (a2), a0
003068: 11bc00400800 move.b     #$40, (a0, d0.l)
00306e: 4ced0510fff4 movem.l    -$c(a5), d4/a0/a2
003074: 4e5d         unlk       a5
003076: 4e75         rts        
003078: 46c0         move.w     d0, sr
00307a: 4e75         rts        
00307c: 48a78000     movem.w    d0, -(a7)
003080: 40c0         move.w     sr, d0
003082: 4c9f0002     movem.w    (a7)+, d1
003086: 46c1         move.w     d1, sr
003088: 4e75         rts        
00308a: 40c0         move.w     sr, d0
00308c: 02800000ffff andi.l     #$ffff, d0
003092: 027cf8ff     andi.w     #$f8ff, sr
003096: 4e75         rts        
003098: 40c0         move.w     sr, d0
00309a: 02800000ffff andi.l     #$ffff, d0
0030a0: 007c0700     ori.w      #$700, sr
0030a4: 027cf9ff     andi.w     #$f9ff, sr
0030a8: 4e75         rts        
0030aa: 40c0         move.w     sr, d0
0030ac: 02800000ffff andi.l     #$ffff, d0
0030b2: 007c0700     ori.w      #$700, sr
0030b6: 027cfaff     andi.w     #$faff, sr
0030ba: 4e75         rts        
0030bc: 40c0         move.w     sr, d0
0030be: 02800000ffff andi.l     #$ffff, d0
0030c4: 007c0700     ori.w      #$700, sr
0030c8: 027cfbff     andi.w     #$fbff, sr
0030cc: 4e75         rts        
0030ce: 40c0         move.w     sr, d0
0030d0: 02800000ffff andi.l     #$ffff, d0
0030d6: 007c0700     ori.w      #$700, sr
0030da: 027cfcff     andi.w     #$fcff, sr
0030de: 4e75         rts        
0030e0: 40c0         move.w     sr, d0
0030e2: 02800000ffff andi.l     #$ffff, d0
0030e8: 007c0700     ori.w      #$700, sr
0030ec: 027cfdff     andi.w     #$fdff, sr
0030f0: 4e75         rts        
0030f2: 40c0         move.w     sr, d0
0030f4: 02800000ffff andi.l     #$ffff, d0
0030fa: 007c0700     ori.w      #$700, sr
0030fe: 027cfeff     andi.w     #$feff, sr
003102: 4e75         rts        
003104: 40c0         move.w     sr, d0
003106: 02800000ffff andi.l     #$ffff, d0
00310c: 007c0700     ori.w      #$700, sr
003110: 4e75         rts        
003112: 4e550000     link.w     a5, #$0
003116: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
00311a: 2800         move.l     d0, d4
00311c: 2441         movea.l    d1, a2
00311e: 103c00ff     move.b     #$ff, d0
003122: c004         and.b      d4, d0
003124: 15400003     move.b     d0, $3(a2)
003128: e08c         lsr.l      #$8, d4
00312a: 103c00ff     move.b     #$ff, d0
00312e: c004         and.b      d4, d0
003130: 15400002     move.b     d0, $2(a2)
003134: e08c         lsr.l      #$8, d4
003136: 103c00ff     move.b     #$ff, d0
00313a: c004         and.b      d4, d0
00313c: 15400001     move.b     d0, $1(a2)
003140: e08c         lsr.l      #$8, d4
003142: 1484         move.b     d4, (a2)
003144: 200a         move.l     a2, d0
003146: 5880         addq.l     #$4, d0
003148: 4ced0410fff8 movem.l    -$8(a5), d4/a2
00314e: 4e5d         unlk       a5
003150: 4e75         rts        
003152: 4e550000     link.w     a5, #$0
003156: 48e7e0a0     movem.l    d0-d2/a0/a2, -(a7)
00315a: 2440         movea.l    d0, a2
00315c: 7000         moveq      #$0, d0
00315e: 1012         move.b     (a2), d0
003160: 7218         moveq      #$18, d1
003162: e3a8         lsl.l      d1, d0
003164: 7200         moveq      #$0, d1
003166: 122a0001     move.b     $1(a2), d1
00316a: 7410         moveq      #$10, d2
00316c: e5a9         lsl.l      d2, d1
00316e: d081         add.l      d1, d0
003170: 7200         moveq      #$0, d1
003172: 122a0002     move.b     $2(a2), d1
003176: e189         lsl.l      #$8, d1
003178: d081         add.l      d1, d0
00317a: 7200         moveq      #$0, d1
00317c: 122a0003     move.b     $3(a2), d1
003180: d081         add.l      d1, d0
003182: 206f0004     movea.l    $4(a7), a0
003186: 2080         move.l     d0, (a0)
003188: 200a         move.l     a2, d0
00318a: 5880         addq.l     #$4, d0
00318c: 4ced0504fff4 movem.l    -$c(a5), d2/a0/a2
003192: 4e5d         unlk       a5
003194: 4e75         rts        
003196: 4e550000     link.w     a5, #$0
00319a: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
00319e: 2800         move.l     d0, d4
0031a0: 2441         movea.l    d1, a2
0031a2: 103c00ff     move.b     #$ff, d0
0031a6: c004         and.b      d4, d0
0031a8: 15400002     move.b     d0, $2(a2)
0031ac: e08c         lsr.l      #$8, d4
0031ae: 103c00ff     move.b     #$ff, d0
0031b2: c004         and.b      d4, d0
0031b4: 15400001     move.b     d0, $1(a2)
0031b8: e08c         lsr.l      #$8, d4
0031ba: 1484         move.b     d4, (a2)
0031bc: 200a         move.l     a2, d0
0031be: 5680         addq.l     #$3, d0
0031c0: 4ced0410fff8 movem.l    -$8(a5), d4/a2
0031c6: 4e5d         unlk       a5
0031c8: 4e75         rts        
0031ca: 4e550000     link.w     a5, #$0
0031ce: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0031d2: 2440         movea.l    d0, a2
0031d4: 7000         moveq      #$0, d0
0031d6: 1012         move.b     (a2), d0
0031d8: 7210         moveq      #$10, d1
0031da: e3a8         lsl.l      d1, d0
0031dc: 7200         moveq      #$0, d1
0031de: 122a0001     move.b     $1(a2), d1
0031e2: e189         lsl.l      #$8, d1
0031e4: d081         add.l      d1, d0
0031e6: 7200         moveq      #$0, d1
0031e8: 122a0002     move.b     $2(a2), d1
0031ec: d081         add.l      d1, d0
0031ee: 206f0004     movea.l    $4(a7), a0
0031f2: 2080         move.l     d0, (a0)
0031f4: 200a         move.l     a2, d0
0031f6: 5680         addq.l     #$3, d0
0031f8: 4ced0500fff8 movem.l    -$8(a5), a0/a2
0031fe: 4e5d         unlk       a5
003200: 4e75         rts        
003202: 4e550000     link.w     a5, #$0
003206: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
00320a: 2800         move.l     d0, d4
00320c: 2441         movea.l    d1, a2
00320e: 103c00ff     move.b     #$ff, d0
003212: c004         and.b      d4, d0
003214: 15400001     move.b     d0, $1(a2)
003218: e04c         lsr.w      #$8, d4
00321a: 1484         move.b     d4, (a2)
00321c: 200a         move.l     a2, d0
00321e: 5480         addq.l     #$2, d0
003220: 4ced0410fff8 movem.l    -$8(a5), d4/a2
003226: 4e5d         unlk       a5
003228: 4e75         rts        
00322a: 4e550000     link.w     a5, #$0
00322e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
003232: 2440         movea.l    d0, a2
003234: 7000         moveq      #$0, d0
003236: 1012         move.b     (a2), d0
003238: 7200         moveq      #$0, d1
00323a: 3200         move.w     d0, d1
00323c: e189         lsl.l      #$8, d1
00323e: 7000         moveq      #$0, d0
003240: 102a0001     move.b     $1(a2), d0
003244: d240         add.w      d0, d1
003246: 206f0004     movea.l    $4(a7), a0
00324a: 3081         move.w     d1, (a0)
00324c: 200a         move.l     a2, d0
00324e: 5480         addq.l     #$2, d0
003250: 4ced0500fff8 movem.l    -$8(a5), a0/a2
003256: 4e5d         unlk       a5
003258: 4e75         rts        
00325a: 4e550000     link.w     a5, #$0
00325e: 48e7c820     movem.l    d0-d1/d4/a2, -(a7)
003262: 2800         move.l     d0, d4
003264: 2441         movea.l    d1, a2
003266: 1484         move.b     d4, (a2)
003268: 200a         move.l     a2, d0
00326a: 5280         addq.l     #$1, d0
00326c: 4ced0410fff8 movem.l    -$8(a5), d4/a2
003272: 4e5d         unlk       a5
003274: 4e75         rts        
003276: 4e550000     link.w     a5, #$0
00327a: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
00327e: 2440         movea.l    d0, a2
003280: 206f0004     movea.l    $4(a7), a0
003284: 1092         move.b     (a2), (a0)
003286: 200a         move.l     a2, d0
003288: 5280         addq.l     #$1, d0
00328a: 4ced0500fff8 movem.l    -$8(a5), a0/a2
003290: 4e5d         unlk       a5
003292: 4e75         rts        
003294: 4e550000     link.w     a5, #$0
003298: 48e7e0e0     movem.l    d0-d2/a0-a2, -(a7)
00329c: 2040         movea.l    d0, a0
00329e: 2441         movea.l    d1, a2
0032a0: 242d0008     move.l     $8(a5), d2
0032a4: 6702         beq.b      $32a8
0032a6: 610a         bsr.b      $32b2
0032a8: 4ced0707ffe8 movem.l    -$18(a5), d0-d2/a0-a2
0032ae: 4e5d         unlk       a5
0032b0: 4e75         rts        
0032b2: 4a82         tst.l      d2
0032b4: 674a         beq.b      $3300
0032b6: b1ca         cmpa.l     a2, a0
0032b8: 6248         bhi.b      $3302
0032ba: 6744         beq.b      $3300
0032bc: 300a         move.w     a2, d0
0032be: 08000000     btst.b     #$0, d0
0032c2: 6704         beq.b      $32c8
0032c4: 10da         move.b     (a2)+, (a0)+
0032c6: 5382         subq.l     #$1, d2
0032c8: 3008         move.w     a0, d0
0032ca: 08000000     btst.b     #$0, d0
0032ce: 6624         bne.b      $32f4
0032d0: e28a         lsr.l      #$1, d2
0032d2: 6406         bcc.b      $32da
0032d4: 6104         bsr.b      $32da
0032d6: 10da         move.b     (a2)+, (a0)+
0032d8: 4e75         rts        
0032da: e28a         lsr.l      #$1, d2
0032dc: 6406         bcc.b      $32e4
0032de: 30da         move.w     (a2)+, (a0)+
0032e0: 6002         bra.b      $32e4
0032e2: 20da         move.l     (a2)+, (a0)+
0032e4: 51cafffc     dbra       d2, $32e2
0032e8: 5242         addq.w     #$1, d2
0032ea: 5382         subq.l     #$1, d2
0032ec: 64f4         bcc.b      $32e2
0032ee: 7400         moveq      #$0, d2
0032f0: 4e75         rts        
0032f2: 10da         move.b     (a2)+, (a0)+
0032f4: 51cafffc     dbra       d2, $32f2
0032f8: 5242         addq.w     #$1, d2
0032fa: 5382         subq.l     #$1, d2
0032fc: 64f4         bcc.b      $32f2
0032fe: 7400         moveq      #$0, d2
003300: 4e75         rts        
003302: d5c2         adda.l     d2, a2
003304: d1c2         adda.l     d2, a0
003306: 300a         move.w     a2, d0
003308: 08000000     btst.b     #$0, d0
00330c: 6704         beq.b      $3312
00330e: 1122         move.b     -(a2), -(a0)
003310: 5382         subq.l     #$1, d2
003312: 3008         move.w     a0, d0
003314: 08000000     btst.b     #$0, d0
003318: 6624         bne.b      $333e
00331a: e28a         lsr.l      #$1, d2
00331c: 6406         bcc.b      $3324
00331e: 6104         bsr.b      $3324
003320: 1122         move.b     -(a2), -(a0)
003322: 4e75         rts        
003324: e28a         lsr.l      #$1, d2
003326: 6406         bcc.b      $332e
003328: 3122         move.w     -(a2), -(a0)
00332a: 6002         bra.b      $332e
00332c: 2122         move.l     -(a2), -(a0)
00332e: 51cafffc     dbra       d2, $332c
003332: 5242         addq.w     #$1, d2
003334: 5382         subq.l     #$1, d2
003336: 64f4         bcc.b      $332c
003338: 7400         moveq      #$0, d2
00333a: 4e75         rts        
00333c: 1122         move.b     -(a2), -(a0)
00333e: 51cafffc     dbra       d2, $333c
003342: 5242         addq.w     #$1, d2
003344: 5382         subq.l     #$1, d2
003346: 64f4         bcc.b      $333c
003348: 7400         moveq      #$0, d2
00334a: 4e75         rts        
00334c: 48e73800     movem.l    d2-d4, -(a7)
003350: 2400         move.l     d0, d2
003352: 2600         move.l     d0, d3
003354: 4843         swap       d3
003356: 2801         move.l     d1, d4
003358: 4844         swap       d4
00335a: c0c1         mulu.w     d1, d0
00335c: c2c3         mulu.w     d3, d1
00335e: c4c4         mulu.w     d4, d2
003360: c6c4         mulu.w     d4, d3
003362: 4840         swap       d0
003364: d041         add.w      d1, d0
003366: 7800         moveq      #$0, d4
003368: d784         addx.l     d4, d3
00336a: d042         add.w      d2, d0
00336c: d784         addx.l     d4, d3
00336e: 4840         swap       d0
003370: 4241         clr.w      d1
003372: 4841         swap       d1
003374: 4242         clr.w      d2
003376: 4842         swap       d2
003378: d282         add.l      d2, d1
00337a: d283         add.l      d3, d1
00337c: 4a80         tst.l      d0
00337e: 4cdf001c     movem.l    (a7)+, d2-d4
003382: 4e75         rts        
003384: 2f02         move.l     d2, -(a7)
003386: 7400         moveq      #$0, d2
003388: 4a80         tst.l      d0
00338a: 6a04         bpl.b      $3390
00338c: 4480         neg.l      d0
00338e: 7403         moveq      #$3, d2
003390: 4a81         tst.l      d1
003392: 6a06         bpl.b      $339a
003394: 4481         neg.l      d1
003396: 0a020001     eori.b     #$1, d2
00339a: 6122         bsr.b      $33be
00339c: e20a         lsr.b      #$1, d2
00339e: 6402         bcc.b      $33a2
0033a0: 4480         neg.l      d0
0033a2: e20a         lsr.b      #$1, d2
0033a4: 6402         bcc.b      $33a8
0033a6: 4481         neg.l      d1
0033a8: 241f         move.l     (a7)+, d2
0033aa: 4a80         tst.l      d0
0033ac: 4e75         rts        
0033ae: 61d4         bsr.b      $3384
0033b0: c141         exg.l      d0, d1
0033b2: 4a80         tst.l      d0
0033b4: 4e75         rts        
0033b6: 6106         bsr.b      $33be
0033b8: c141         exg.l      d0, d1
0033ba: 4a80         tst.l      d0
0033bc: 4e75         rts        
0033be: 48e73800     movem.l    d2-d4, -(a7)
0033c2: 2401         move.l     d1, d2
0033c4: 6606         bne.b      $33cc
0033c6: 81fc0000     divs.w     #$0, d0
0033ca: 606e         bra.b      $343a
0033cc: 5381         subq.l     #$1, d1
0033ce: 676a         beq.b      $343a
0033d0: 2801         move.l     d1, d4
0033d2: 2200         move.l     d0, d1
0033d4: b481         cmp.l      d1, d2
0033d6: 650c         bcs.b      $33e4
0033d8: 6704         beq.b      $33de
0033da: 7000         moveq      #$0, d0
0033dc: 605c         bra.b      $343a
0033de: 7001         moveq      #$1, d0
0033e0: 9282         sub.l      d2, d1
0033e2: 6056         bra.b      $343a
0033e4: 2602         move.l     d2, d3
0033e6: 6bf6         bmi.b      $33de
0033e8: c684         and.l      d4, d3
0033ea: 6612         bne.b      $33fe
0033ec: e28a         lsr.l      #$1, d2
0033ee: 76ff         moveq      #$ff, d3
0033f0: e28a         lsr.l      #$1, d2
0033f2: 55cbfffc     dbcs       d3, $33f0
0033f6: 4483         neg.l      d3
0033f8: e6a8         lsr.l      d3, d0
0033fa: c284         and.l      d4, d1
0033fc: 603c         bra.b      $343a
0033fe: 7000         moveq      #$0, d0
003400: 76ff         moveq      #$ff, d3
003402: e382         asl.l      #$1, d2
003404: 6a06         bpl.b      $340c
003406: b481         cmp.l      d1, d2
003408: 620a         bhi.b      $3414
00340a: 600c         bra.b      $3418
00340c: b481         cmp.l      d1, d2
00340e: 54cbfff2     dbcc       d3, $3402
003412: 6704         beq.b      $3418
003414: 5283         addq.l     #$1, d3
003416: e28a         lsr.l      #$1, d2
003418: 4483         neg.l      d3
00341a: 6004         bra.b      $3420
00341c: e380         asl.l      #$1, d0
00341e: e28a         lsr.l      #$1, d2
003420: 9282         sub.l      d2, d1
003422: 6510         bcs.b      $3434
003424: 5280         addq.l     #$1, d0
003426: 51cbfff4     dbra       d3, $341c
00342a: 600e         bra.b      $343a
00342c: e380         asl.l      #$1, d0
00342e: e28a         lsr.l      #$1, d2
003430: d282         add.l      d2, d1
003432: 65f0         bcs.b      $3424
003434: 51cbfff6     dbra       d3, $342c
003438: d282         add.l      d2, d1
00343a: 4cdf001c     movem.l    (a7)+, d2-d4
00343e: 4a80         tst.l      d0
003440: 4e75         rts        
003442: 6363         bls.b      $34a7
003444: 39336472     move.w     $72(a3, d6.w), -(a4)
003448: 00000035     ori.b      #$35, d0
00344c: 4345         .dc.w      $4345
