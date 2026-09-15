00003c: 00640080     ori.w      #$80, -(a4)
000040: 009600ac00c0 ori.l      #$ac00c0, (a6)
000046: 00720112016a01760182 ori.w      #$112, ([$176, a2], $182)
000050: 018e023c     movep.w    d0, $23c(a6)
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
000078: 61000120     bsr.w      $19a
00007c: 588f         addq.l     #$4, a7
00007e: 60d2         bra.b      $52
000080: 2f02         move.l     d2, -(a7)
000082: 2f00         move.l     d0, -(a7)
000084: 2f0d         move.l     a5, -(a7)
000086: 2f0c         move.l     a4, -(a7)
000088: 220a         move.l     a2, d1
00008a: 2009         move.l     a1, d0
00008c: 610000dc     bsr.w      $16a
000090: 4fef0010     lea.l      $10(a7), a7
000094: 60bc         bra.b      $52
000096: 2f02         move.l     d2, -(a7)
000098: 2f00         move.l     d0, -(a7)
00009a: 2f0d         move.l     a5, -(a7)
00009c: 2f0c         move.l     a4, -(a7)
00009e: 220a         move.l     a2, d1
0000a0: 2009         move.l     a1, d0
0000a2: 610000d2     bsr.w      $176
0000a6: 4fef0010     lea.l      $10(a7), a7
0000aa: 60a6         bra.b      $52
0000ac: 2f00         move.l     d0, -(a7)
0000ae: 2f0d         move.l     a5, -(a7)
0000b0: 2f0c         move.l     a4, -(a7)
0000b2: 220a         move.l     a2, d1
0000b4: 2009         move.l     a1, d0
0000b6: 610000ca     bsr.w      $182
0000ba: 4fef000c     lea.l      $c(a7), a7
0000be: 6092         bra.b      $52
0000c0: 2f00         move.l     d0, -(a7)
0000c2: 2f0d         move.l     a5, -(a7)
0000c4: 2f0c         move.l     a4, -(a7)
0000c6: 220a         move.l     a2, d1
0000c8: 2009         move.l     a1, d0
0000ca: 610000c2     bsr.w      $18e
0000ce: 4fef000c     lea.l      $c(a7), a7
0000d2: 6000ff7e     bra.w      $52
0000d6: 2f0e         move.l     a6, -(a7)
0000d8: 220b         move.l     a3, d1
0000da: 200a         move.l     a2, d0
0000dc: 61000074     bsr.w      $152
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
0000fe: 6100005e     bsr.w      $15e
000102: 0c80ffffffff cmpi.l     #$ffffffff, d0
000108: 67e6         beq.b      $f0
00010a: 588f         addq.l     #$4, a7
00010c: 023c         .dc.w      $023c
00010e: fffe         dc.w       $fffe
000110: 4e75         rts        
000112: 4e75         rts        
000114: 4e550000     link.w     a5, #$0
000118: 48e7c8b0     movem.l    d0-d1/d4/a0/a2-a3, -(a7)
00011c: 2441         movea.l    d1, a2
00011e: 7030         moveq      #$30, d0
000120: d097         add.l      (a7), d0
000122: 2640         movea.l    d0, a3
000124: 426a002e     clr.w      $2e(a2)
000128: 42aa0030     clr.l      $30(a2)
00012c: 306b0018     movea.w    $18(a3), a0
000130: 25480034     move.l     a0, $34(a2)
000134: 356b001a003a move.w     $1a(a3), $3a(a2)
00013a: 356b001a0038 move.w     $1a(a3), $38(a2)
000140: 356b0020003c move.w     $20(a3), $3c(a2)
000146: 7000         moveq      #$0, d0
000148: 4ced0d10fff0 movem.l    -$10(a5), d4/a0/a2-a3
00014e: 4e5d         unlk       a5
000150: 4e75         rts        
000152: 4e550000     link.w     a5, #$0
000156: 48e78000     movem.l    d0, -(a7)
00015a: 4e5d         unlk       a5
00015c: 4e75         rts        
00015e: 4e550000     link.w     a5, #$0
000162: 48e78000     movem.l    d0, -(a7)
000166: 4e5d         unlk       a5
000168: 4e75         rts        
00016a: 4e550000     link.w     a5, #$0
00016e: 48e78000     movem.l    d0, -(a7)
000172: 4e5d         unlk       a5
000174: 4e75         rts        
000176: 4e550000     link.w     a5, #$0
00017a: 48e78000     movem.l    d0, -(a7)
00017e: 4e5d         unlk       a5
000180: 4e75         rts        
000182: 4e550000     link.w     a5, #$0
000186: 48e78000     movem.l    d0, -(a7)
00018a: 4e5d         unlk       a5
00018c: 4e75         rts        
00018e: 4e550000     link.w     a5, #$0
000192: 48e78000     movem.l    d0, -(a7)
000196: 4e5d         unlk       a5
000198: 4e75         rts        
00019a: 4e550000     link.w     a5, #$0
00019e: 48e7c0a0     movem.l    d0-d1/a0/a2, -(a7)
0001a2: 2441         movea.l    d1, a2
0001a4: 518f         subq.l     #$8, a7
0001a6: b5ea0030     cmpa.l     $30(a2), a2
0001aa: 674c         beq.b      $1f8
0001ac: 2f6a00300004 move.l     $30(a2), $4(a7)
0001b2: 6042         bra.b      $1f6
0001b4: 206f0004     movea.l    $4(a7), a0
0001b8: 4aa80006     tst.l      $6(a0)
0001bc: 671e         beq.b      $1dc
0001be: 206f0004     movea.l    $4(a7), a0
0001c2: 4aa80002     tst.l      $2(a0)
0001c6: 6714         beq.b      $1dc
0001c8: 206f0004     movea.l    $4(a7), a0
0001cc: 22280002     move.l     $2(a0), d1
0001d0: 206f0004     movea.l    $4(a7), a0
0001d4: 20280006     move.l     $6(a0), d0
0001d8: 610000dc     bsr.w      $2b6
0001dc: 206f0004     movea.l    $4(a7), a0
0001e0: 2ea80052     move.l     $52(a0), (a7)
0001e4: 222f0004     move.l     $4(a7), d1
0001e8: 203c000000ca move.l     #$ca, d0
0001ee: 610000c6     bsr.w      $2b6
0001f2: 2f570004     move.l     (a7), $4(a7)
0001f6: 66bc         bne.b      $1b4
0001f8: 7000         moveq      #$0, d0
0001fa: 508f         addq.l     #$8, a7
0001fc: 4ced0500fff8 movem.l    -$8(a5), a0/a2
000202: 4e5d         unlk       a5
000204: 4e75         rts        
000206: 4280         clr.l      d0
000208: 3001         move.w     d1, d0
00020a: 4480         neg.l      d0
00020c: 4e75         rts        
00020e: 650a         bcs.b      $21a
000210: 4280         clr.l      d0
000212: 4cdf0106     movem.l    (a7)+, d1-d2/a0
000216: 4e75         rts        
000218: 64f8         bcc.b      $212
00021a: 4280         clr.l      d0
00021c: 3001         move.w     d1, d0
00021e: 4480         neg.l      d0
000220: 60f0         bra.b      $212
000222: 2f0a         move.l     a2, -(a7)
000224: 4e40         trap       #$0
000226: 00286506200a ori.b      #$6, $200a(a0)
00022c: 245f         movea.l    (a7)+, a2
00022e: 4e75         rts        
000230: 245f         movea.l    (a7)+, a2
000232: 60d2         bra.b      $206
000234: 48e70020     movem.l    a2, -(a7)
000238: 2440         movea.l    d0, a2
00023a: 4e40         trap       #$0
00023c: 00026506     ori.b      #$6, d2
000240: 4cdf0400     movem.l    (a7)+, a2
000244: 4e75         rts        
000246: 4cdf0400     movem.l    (a7)+, a2
00024a: 60ba         bra.b      $206
00024c: 48e74020     movem.l    d1/a2, -(a7)
000250: 2041         movea.l    d1, a0
000252: 4e40         trap       #$0
000254: 001d650a     ori.b      #$a, (a5)+
000258: 4281         clr.l      d1
00025a: 4280         clr.l      d0
00025c: 4cdf0402     movem.l    (a7)+, d1/a2
000260: 4e75         rts        
000262: 223cffffffff move.l     #$ffffffff, d1
000268: 203cffffffff move.l     #$ffffffff, d0
00026e: 4cdf0402     movem.l    (a7)+, d1/a2
000272: 4e75         rts        
000274: 48e700e0     movem.l    a0-a2, -(a7)
000278: 2041         movea.l    d1, a0
00027a: 4e40         trap       #$0
00027c: 00006508     ori.b      #$8, d0
000280: 200a         move.l     a2, d0
000282: 4cdf0700     movem.l    (a7)+, a0-a2
000286: 4e75         rts        
000288: 4281         clr.l      d1
00028a: 4cdf0700     movem.l    (a7)+, a0-a2
00028e: 6000ff76     bra.w      $206
000292: 48e760e0     movem.l    d1-d2/a0-a2, -(a7)
000296: 242f0018     move.l     $18(a7), d2
00029a: 206f001c     movea.l    $1c(a7), a0
00029e: 4e40         trap       #$0
0002a0: 00256508     ori.b      #$8, -(a5)
0002a4: 200a         move.l     a2, d0
0002a6: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
0002aa: 4e75         rts        
0002ac: 4280         clr.l      d0
0002ae: 2001         move.l     d1, d0
0002b0: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
0002b4: 4e75         rts        
0002b6: 48e76080     movem.l    d1-d2/a0, -(a7)
0002ba: 2f0a         move.l     a2, -(a7)
0002bc: 2441         movea.l    d1, a2
0002be: 4e40         trap       #$0
0002c0: 0029245f6000 ori.b      #$5f, $6000(a1)
0002c6: ff48         dc.w       $ff48
0002c8: 48e76080     movem.l    d1-d2/a0, -(a7)
0002cc: 2040         movea.l    d0, a0
0002ce: 2001         move.l     d1, d0
0002d0: 2f0a         move.l     a2, -(a7)
0002d2: 4e40         trap       #$0
0002d4: 0080204a245f ori.l      #$204a245f, d0
0002da: 6500ff3e     bcs.w      $21a
0002de: 2008         move.l     a0, d0
0002e0: 6000ff36     bra.w      $218
0002e4: 48e76080     movem.l    d1-d2/a0, -(a7)
0002e8: 204a         movea.l    a2, a0
0002ea: 2440         movea.l    d0, a2
0002ec: 4e40         trap       #$0
0002ee: 008124486000 ori.l      #$24486000, d1
0002f4: ff1a         dc.w       $ff1a
0002f6: 48e74080     movem.l    d1/a0, -(a7)
0002fa: 2040         movea.l    d0, a0
0002fc: 2001         move.l     d1, d0
0002fe: 4e40         trap       #$0
000300: 008465064cdf ori.l      #$65064cdf, d4
000306: 0102         btst.l     d0, d2
000308: 4e75         rts        
00030a: 4280         clr.l      d0
00030c: 3001         move.w     d1, d0
00030e: 4480         neg.l      d0
000310: 4cdf0102     movem.l    (a7)+, d1/a0
000314: 4e75         rts        
000316: 48e74080     movem.l    d1/a0, -(a7)
00031a: 2041         movea.l    d1, a0
00031c: 222f000c     move.l     $c(a7), d1
000320: 4e40         trap       #$0
000322: 008a         .dc.w      $008a
000324: 65e4         bcs.b      $30a
000326: 2001         move.l     d1, d0
000328: 4cdf0102     movem.l    (a7)+, d1/a0
00032c: 4e75         rts        
00032e: 4280         clr.l      d0
000330: 3001         move.w     d1, d0
000332: 4480         neg.l      d0
000334: 4cdf0102     movem.l    (a7)+, d1/a0
000338: 4e75         rts        
00033a: 2f01         move.l     d1, -(a7)
00033c: 4e40         trap       #$0
00033e: 008f         .dc.w      $008f
000340: 6504         bcs.b      $346
000342: 221f         move.l     (a7)+, d1
000344: 4e75         rts        
000346: 4280         clr.l      d0
000348: 3001         move.w     d1, d0
00034a: 4480         neg.l      d0
00034c: 221f         move.l     (a7)+, d1
00034e: 4e75         rts        
000350: 48e74000     movem.l    d1, -(a7)
000354: 206f0008     movea.l    $8(a7), a0
000358: 4e40         trap       #$0
00035a: 008e         .dc.w      $008e
00035c: 6508         bcs.b      $366
00035e: 2001         move.l     d1, d0
000360: 4cdf0002     movem.l    (a7)+, d1
000364: 4e75         rts        
000366: 4280         clr.l      d0
000368: 3001         move.w     d1, d0
00036a: 4480         neg.l      d0
00036c: 4cdf0002     movem.l    (a7)+, d1
000370: 4e75         rts        
000372: 48e74000     movem.l    d1, -(a7)
000376: 206f0008     movea.l    $8(a7), a0
00037a: 4e40         trap       #$0
00037c: 008d         .dc.w      $008d
00037e: 65e6         bcs.b      $366
000380: 2001         move.l     d1, d0
000382: 4cdf0002     movem.l    (a7)+, d1
000386: 4e75         rts        
000388: 48e74040     movem.l    d1/a1, -(a7)
00038c: 2240         movea.l    d0, a1
00038e: 4e40         trap       #$0
000390: 003265084280 ori.b      #$8, -$80(a2, d4.w)
000396: 4cdf0202     movem.l    (a7)+, d1/a1
00039a: 4e75         rts        
00039c: 4280         clr.l      d0
00039e: 3001         move.w     d1, d0
0003a0: 4480         neg.l      d0
0003a2: 60f2         bra.b      $396
0003a4: 48e76080     movem.l    d1-d2/a0, -(a7)
0003a8: 4e40         trap       #$0
0003aa: 0008         .dc.w      $0008
0003ac: 6000fe60     bra.w      $20e
0003b0: 48e76080     movem.l    d1-d2/a0, -(a7)
0003b4: 4280         clr.l      d0
0003b6: 4e40         trap       #$0
0003b8: 000a         .dc.w      $000a
0003ba: 6000fe52     bra.w      $20e
0003be: 48e76080     movem.l    d1-d2/a0, -(a7)
0003c2: 4e40         trap       #$0
0003c4: 000a         .dc.w      $000a
0003c6: 6000fe50     bra.w      $218
0003ca: 48e77080     movem.l    d1-d3/a0, -(a7)
0003ce: 7003         moveq      #$3, d0
0003d0: 4e40         trap       #$0
0003d2: 0015650a     ori.b      #$a, (a5)
0003d6: 4280         clr.l      d0
0003d8: 3003         move.w     d3, d0
0003da: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0003de: 4e75         rts        
0003e0: 4280         clr.l      d0
0003e2: 3001         move.w     d1, d0
0003e4: 4480         neg.l      d0
0003e6: 60f2         bra.b      $3da
0003e8: 48e77080     movem.l    d1-d3/a0, -(a7)
0003ec: 7000         moveq      #$0, d0
0003ee: 4e40         trap       #$0
0003f0: 001565ec     ori.b      #$ec, (a5)
0003f4: 3002         move.w     d2, d0
0003f6: 4cdf010e     movem.l    (a7)+, d1-d3/a0
0003fa: 4e75         rts        
0003fc: 48e77080     movem.l    d1-d3/a0, -(a7)
000400: 7000         moveq      #$0, d0
000402: 4e40         trap       #$0
000404: 001565d8     ori.b      #$d8, (a5)
000408: 4cdf010e     movem.l    (a7)+, d1-d3/a0
00040c: 4e75         rts        
00040e: 48e77080     movem.l    d1-d3/a0, -(a7)
000412: 7000         moveq      #$0, d0
000414: 4e40         trap       #$0
000416: 001565c6     ori.b      #$c6, (a5)
00041a: 4280         clr.l      d0
00041c: 2001         move.l     d1, d0
00041e: 4cdf010e     movem.l    (a7)+, d1-d3/a0
000422: 4e75         rts        
000424: 48e76080     movem.l    d1-d2/a0, -(a7)
000428: 4e40         trap       #$0
00042a: 002b6000fde0 ori.b      #$0, -$220(a3)
000430: 48e760f0     movem.l    d1-d2/a0-a3, -(a7)
000434: 206f001c     movea.l    $1c(a7), a0
000438: 246f0020     movea.l    $20(a7), a2
00043c: 266f0024     movea.l    $24(a7), a3
000440: 4e40         trap       #$0
000442: 002a65084280 ori.b      #$8, $4280(a2)
000448: 4cdf0f06     movem.l    (a7)+, d1-d2/a0-a3
00044c: 4e75         rts        
00044e: 4280         clr.l      d0
000450: 3001         move.w     d1, d0
000452: 4480         neg.l      d0
000454: 60f2         bra.b      $448
000456: 48e760e0     movem.l    d1-d2/a0-a2, -(a7)
00045a: 2041         movea.l    d1, a0
00045c: 2400         move.l     d0, d2
00045e: 246f0018     movea.l    $18(a7), a2
000462: 4e40         trap       #$0
000464: 003865084280 ori.b      #$8, $4280.w
00046a: 4cdf0706     movem.l    (a7)+, d1-d2/a0-a2
00046e: 4e75         rts        
000470: 4280         clr.l      d0
000472: 3001         move.w     d1, d0
000474: 4480         neg.l      d0
000476: 60f2         bra.b      $46a
000478: 200e         move.l     a6, d0
00047a: 4e75         rts        
00047c: 48e70080     movem.l    a0, -(a7)
000480: 207900000000 movea.l    $0.l, a0
000486: 41e803e4     lea.l      $3e4(a0), a0
00048a: e588         lsl.l      #$2, d0
00048c: 20700800     movea.l    (a0, d0.l), a0
000490: 20280008     move.l     $8(a0), d0
000494: 4cdf0100     movem.l    (a7)+, a0
000498: 4e75         rts        
00049a: 202e003c     move.l     $3c(a6), d0
00049e: 4e75         rts        
0004a0: 202e0040     move.l     $40(a6), d0
0004a4: 4e75         rts        
0004a6: 48e70080     movem.l    a0, -(a7)
0004aa: 207900000000 movea.l    $0.l, a0
0004b0: 20280044     move.l     $44(a0), d0
0004b4: 4cdf0100     movem.l    (a7)+, a0
0004b8: 4e75         rts        
0004ba: 2f09         move.l     a1, -(a7)
0004bc: 6140         bsr.b      $4fe
0004be: 43e90148     lea.l      $148(a1), a1
0004c2: 2009         move.l     a1, d0
0004c4: 225f         movea.l    (a7)+, a1
0004c6: 4e75         rts        
0004c8: 48e7c080     movem.l    d0-d1/a0, -(a7)
0004cc: 2040         movea.l    d0, a0
0004ce: 303c0001     move.w     #$1, d0
0004d2: 223c00000050 move.l     #$50, d1
0004d8: 4e40         trap       #$0
0004da: 008c         .dc.w      $008c
0004dc: 4cdf0103     movem.l    (a7)+, d0-d1/a0
0004e0: 4e75         rts        
0004e2: 48e740c0     movem.l    d1/a0-a1, -(a7)
0004e6: 2040         movea.l    d0, a0
0004e8: 2241         movea.l    d1, a1
0004ea: 222f0010     move.l     $10(a7), d1
0004ee: 4a81         tst.l      d1
0004f0: 6706         beq.b      $4f8
0004f2: 12d8         move.b     (a0)+, (a1)+
0004f4: 5381         subq.l     #$1, d1
0004f6: 62fa         bhi.b      $4f2
0004f8: 4cdf0302     movem.l    (a7)+, d1/a0-a1
0004fc: 4e75         rts        
0004fe: 206e0044     movea.l    $44(a6), a0
000502: b050         cmp.w      (a0), d0
000504: 6214         bhi.b      $51a
000506: e540         asl.w      #$2, d0
000508: 6710         beq.b      $51a
00050a: d0c0         adda.w     d0, a0
00050c: e448         lsr.w      #$2, d0
00050e: 670a         beq.b      $51a
000510: 2250         movea.l    (a0), a1
000512: 4a90         tst.l      (a0)
000514: 6704         beq.b      $51a
000516: b051         cmp.w      (a1), d0
000518: 6708         beq.b      $522
00051a: 323c00e0     move.w     #$e0, d1
00051e: 003c0001     ori.b      #$1, ccr
000522: 4e75         rts        
000524: 48e7c0e0     movem.l    d0-d1/a0-a2, -(a7)
000528: 2440         movea.l    d0, a2
00052a: 302a02d6     move.w     $2d6(a2), d0
00052e: 6710         beq.b      $540
000530: 426a02d6     clr.w      $2d6(a2)
000534: 7201         moveq      #$1, d1
000536: 4e40         trap       #$0
000538: 0008         .dc.w      $0008
00053a: 61c2         bsr.b      $4fe
00053c: 426902d4     clr.w      $2d4(a1)
000540: 4cdf0703     movem.l    (a7)+, d0-d1/a0-a2
000544: 4e75         rts        
000546: 000600a0     ori.b      #$a0, d6
00054a: 0003018a     ori.b      #$8a, d3
00054e: ffff         dc.w       $ffff
000550: 48e740e0     movem.l    d1/a0-a2, -(a7)
000554: 6100028a     bsr.w      $7e0
000558: 2240         movea.l    d0, a1
00055a: 207900000000 movea.l    $0.l, a0
000560: 206803a4     movea.l    $3a4(a0), a0
000564: 24680018     movea.l    $18(a0), a2
000568: 234a0006     move.l     a2, $6(a1)
00056c: 2468000c     movea.l    $c(a0), a2
000570: 234a000a     move.l     a2, $a(a1)
000574: 43faffd0     lea.l      $546(pc), a1
000578: 4e40         trap       #$0
00057a: 0032203c0000 ori.b      #$3c, (a2, d0.w)
000580: 00004cdf     ori.b      #$df, d0
000584: 0702         btst.l     d3, d2
000586: 4e75         rts        
000588: 4e75         rts        
00058a: 4e75         rts        
00058c: 48e740e0     movem.l    d1/a0-a2, -(a7)
000590: 207900000000 movea.l    $0.l, a0
000596: 206803a4     movea.l    $3a4(a0), a0
00059a: 41e80018     lea.l      $18(a0), a0
00059e: 61000240     bsr.w      $7e0
0005a2: 2240         movea.l    d0, a1
0005a4: 20a90006     move.l     $6(a1), (a0)
0005a8: 207900000000 movea.l    $0.l, a0
0005ae: 206803a8     movea.l    $3a8(a0), a0
0005b2: 41e80018     lea.l      $18(a0), a0
0005b6: 20a90006     move.l     $6(a1), (a0)
0005ba: 207900000000 movea.l    $0.l, a0
0005c0: 206803a4     movea.l    $3a4(a0), a0
0005c4: 41e8000c     lea.l      $c(a0), a0
0005c8: 61000216     bsr.w      $7e0
0005cc: 2240         movea.l    d0, a1
0005ce: 20a9000a     move.l     $a(a1), (a0)
0005d2: 207900000000 movea.l    $0.l, a0
0005d8: 206803a8     movea.l    $3a8(a0), a0
0005dc: 41e8000c     lea.l      $c(a0), a0
0005e0: 20a9000a     move.l     $a(a1), (a0)
0005e4: 4cdf0702     movem.l    (a7)+, d1/a0-a2
0005e8: 4e75         rts        
0005ea: 2f01         move.l     d1, -(a7)
0005ec: 206e0044     movea.l    $44(a6), a0
0005f0: 302c0002     move.w     $2(a4), d0
0005f4: 6742         beq.b      $638
0005f6: 4e40         trap       #$0
0005f8: 002f4a6c0022 ori.b      #$6c, $22(a7)
0005fe: 6738         beq.b      $638
000600: 6144         bsr.b      $646
000602: 0c6c00010022 cmpi.w     #$1, $22(a4)
000608: 660a         bne.b      $614
00060a: 0c2900770020 cmpi.b     #$77, $20(a1)
000610: 6726         beq.b      $638
000612: 6008         bra.b      $61c
000614: 0c6c00020022 cmpi.w     #$2, $22(a4)
00061a: 661c         bne.b      $638
00061c: 204c         movea.l    a4, a0
00061e: 0c6dffff0006 cmpi.w     #$ffff, $6(a5)
000624: 660e         bne.b      $634
000626: 3b7c00000006 move.w     #$0, $6(a5)
00062c: 221f         move.l     (a7)+, d1
00062e: 4281         clr.l      d1
000630: 2f01         move.l     d1, -(a7)
000632: 6004         bra.b      $638
000634: 610000dc     bsr.w      $712
000638: 610001a6     bsr.w      $7e0
00063c: 221f         move.l     (a7)+, d1
00063e: 2440         movea.l    d0, a2
000640: 246a0006     movea.l    $6(a2), a2
000644: 4e92         jsr        (a2)
000646: 48e780e0     movem.l    d0/a0-a2, -(a7)
00064a: 20690008     movea.l    $8(a1), a0
00064e: 45fa0048     lea.l      $698(pc), a2
000652: 200a         move.l     a2, d0
000654: b0a80042     cmp.l      $42(a0), d0
000658: 6738         beq.b      $692
00065a: 0c2900770020 cmpi.b     #$77, $20(a1)
000660: 6730         beq.b      $692
000662: 0cae000109a003c8 cmpi.l     #$109a0, $3c8(a6)
00066a: 6606         bne.b      $672
00066c: 41e8ffba     lea.l      -$46(a0), a0
000670: 600a         bra.b      $67c
000672: 41e8ffb8     lea.l      -$48(a0), a0
000676: 317c00000046 move.w     #$0, $46(a0)
00067c: 23480008     move.l     a0, $8(a1)
000680: 214a0042     move.l     a2, $42(a0)
000684: 317c20000040 move.w     #$2000, $40(a0)
00068a: 21490020     move.l     a1, $20(a0)
00068e: 214e0038     move.l     a6, $38(a0)
000692: 4cdf0701     movem.l    (a7)+, d0/a0-a2
000696: 4e75         rts        
000698: 45e80002     lea.l      $2(a0), a2
00069c: 30280006     move.w     $6(a0), d0
0006a0: 4a40         tst.w      d0
0006a2: 672c         beq.b      $6d0
0006a4: 6100fe58     bsr.w      $4fe
0006a8: 30290004     move.w     $4(a1), d0
0006ac: 08290000001c btst.b     #$0, $1c(a1)
0006b2: 6718         beq.b      $6cc
0006b4: 356900040004 move.w     $4(a1), $4(a2)
0006ba: 3f00         move.w     d0, -(a7)
0006bc: 30290000     move.w     $0(a1), d0
0006c0: 206e0044     movea.l    $44(a6), a0
0006c4: 4e40         trap       #$0
0006c6: 0031301f60d4 ori.b      #$1f, -$2c(a1, d6.w)
0006cc: 2449         movea.l    a1, a2
0006ce: 60d0         bra.b      $6a0
0006d0: 4cdf7fff     movem.l    (a7)+, d0-d7/a0-a6
0006d4: 588f         addq.l     #$4, a7
0006d6: 4e73         rte        
0006d8: 3f03         move.w     d3, -(a7)
0006da: 0243003f     andi.w     #$3f, d3
0006de: 3b43000e     move.w     d3, $e(a5)
0006e2: 2f00         move.l     d0, -(a7)
0006e4: 610000fa     bsr.w      $7e0
0006e8: 2440         movea.l    d0, a2
0006ea: 201f         move.l     (a7)+, d0
0006ec: 246a000a     movea.l    $a(a2), a2
0006f0: 4e92         jsr        (a2)
0006f2: 6516         bcs.b      $70a
0006f4: 4283         clr.l      d3
0006f6: 361f         move.w     (a7)+, d3
0006f8: 302d0002     move.w     $2(a5), d0
0006fc: 6100fe00     bsr.w      $4fe
000700: ec4b         lsr.w      #$6, d3
000702: e04b         lsr.w      #$8, d3
000704: 33430022     move.w     d3, $22(a1)
000708: 4e75         rts        
00070a: 361f         move.w     (a7)+, d3
00070c: 003c0001     ori.b      #$1, ccr
000710: 4e75         rts        
000712: 48e7e000     movem.l    d0-d2, -(a7)
000716: 4aa90028     tst.l      $28(a1)
00071a: 670e         beq.b      $72a
00071c: 342c0000     move.w     $0(a4), d2
000720: 323c8000     move.w     #$8000, d1
000724: d242         add.w      d2, d1
000726: 4e40         trap       #$0
000728: 0008         .dc.w      $0008
00072a: 4cdf0007     movem.l    (a7)+, d0-d2
00072e: 4e75         rts        
000730: 48e76080     movem.l    d1-d2/a0, -(a7)
000734: 2040         movea.l    d0, a0
000736: 4e40         trap       #$0
000738: 001a6500     ori.b      #$0, (a2)+
00073c: fade20016000 fbf.l      $2001673e
000742: fad048e700e0 fbf.l      $48e70824
000748: 2440         movea.l    d0, a2
00074a: 206e0044     movea.l    $44(a6), a0
00074e: 302a0002     move.w     $2(a2), d0
000752: 6716         beq.b      $76a
000754: 4e40         trap       #$0
000756: 002f65102469 ori.b      #$10, $2469(a7)
00075c: 0038d5ea000c ori.b      #$ea, $c.w
000762: 200a         move.l     a2, d0
000764: 4cdf0700     movem.l    (a7)+, a0-a2
000768: 4e75         rts        
00076a: 203c00000000 move.l     #$0, d0
000770: 4cdf0700     movem.l    (a7)+, a0-a2
000774: 4e75         rts        
000776: 48e74080     movem.l    d1/a0, -(a7)
00077a: 206f000c     movea.l    $c(a7), a0
00077e: 4e40         trap       #$0
000780: 00176508     ori.b      #$8, (a7)
000784: 2001         move.l     d1, d0
000786: 4cdf0102     movem.l    (a7)+, d1/a0
00078a: 4e75         rts        
00078c: 4280         clr.l      d0
00078e: 2001         move.l     d1, d0
000790: 4480         neg.l      d0
000792: 4cdf0102     movem.l    (a7)+, d1/a0
000796: 4e75         rts        
000798: 48e778c0     movem.l    d1-d4/a0-a1, -(a7)
00079c: 242f001c     move.l     $1c(a7), d2
0007a0: 262f0020     move.l     $20(a7), d3
0007a4: 282f0024     move.l     $24(a7), d4
0007a8: 206f0028     movea.l    $28(a7), a0
0007ac: 226f002c     movea.l    $2c(a7), a1
0007b0: 4e40         trap       #$0
0007b2: 00036506     ori.b      #$6, d3
0007b6: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
0007ba: 4e75         rts        
0007bc: 3001         move.w     d1, d0
0007be: 4440         neg.w      d0
0007c0: 4cdf031e     movem.l    (a7)+, d1-d4/a0-a1
0007c4: 4e75         rts        
0007c6: 48e70080     movem.l    a0, -(a7)
0007ca: 2041         movea.l    d1, a0
0007cc: 80fc0064     divu.w     #$64, d0
0007d0: 1080         move.b     d0, (a0)
0007d2: e088         lsr.l      #$8, d0
0007d4: e088         lsr.l      #$8, d0
0007d6: 11400001     move.b     d0, $1(a0)
0007da: 4cdf0100     movem.l    (a7)+, a0
0007de: 4e75         rts        
0007e0: 2f08         move.l     a0, -(a7)
0007e2: 207900000000 movea.l    $0.l, a0
0007e8: 41e80814     lea.l      $814(a0), a0
0007ec: 2010         move.l     (a0), d0
0007ee: 205f         movea.l    (a7)+, a0
0007f0: 4e75         rts        
0007f2: 2f08         move.l     a0, -(a7)
0007f4: 207900000000 movea.l    $0.l, a0
0007fa: 41e80814     lea.l      $814(a0), a0
0007fe: 2008         move.l     a0, d0
000800: 205f         movea.l    (a7)+, a0
000802: 4e75         rts        
000804: 7061         moveq      #$61, d0
000806: 636b         bls.b      $873
000808: 6479         bcc.b      $883
00080a: 6e64         bgt.b      $870
00080c: 7200         moveq      #$0, d1
00080e: 00368a16     ori.b      #$16, -$56(a6, a2.l)
