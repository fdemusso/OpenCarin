000080: 001a001a     ori.b      #$1a, (a2)+
000084: 0112         btst.l     d0, (a2)
000086: 0112         btst.l     d0, (a2)
000088: 010a0104     movep.w    $104(a2), d0
00008c: 029205be02f6 andi.l     #$5be02f6, (a2)
000092: 05b801d6     bclr.b     d2, $1d6.w
000096: 02420122     andi.w     #$122, d2
00009a: 61000482     bsr.w      $51e
00009e: 42290032     clr.b      $32(a1)
0000a2: 20690004     movea.l    $4(a1), a0
0000a6: 2348009c     move.l     a0, $9c(a1)
0000aa: 2f09         move.l     a1, -(a7)
0000ac: 206d0020     movea.l    $20(a5), a0
0000b0: 4e40         trap       #$0
0000b2: 00106500     ori.b      #$0, (a0)
0000b6: 00d0         .dc.w      $00d0
0000b8: 4a00         tst.b      d0
0000ba: 670e         beq.b      $ca
0000bc: b03c000d     cmp.b      #$d, d0
0000c0: 6708         beq.b      $ca
0000c2: b03c0020     cmp.b      #$20, d0
0000c6: 660000c8     bne.w      $190
0000ca: 2049         movea.l    a1, a0
0000cc: 203c00000100 move.l     #$100, d0
0000d2: 4e40         trap       #$0
0000d4: 0028225f6500 ori.b      #$5f, $6500(a0)
0000da: 00bc         .dc.w      $00bc
0000dc: 2b480020     move.l     a0, $20(a5)
0000e0: 234a000e     move.l     a2, $e(a1)
0000e4: 740d         moveq      #$d, d2
0000e6: 323c00fe     move.w     #$fe, d1
0000ea: 6120         bsr.b      $10c
0000ec: 621b         bhi.b      $109
0000ee: 596b6565     subq.w     #$4, $6565(a3)
0000f2: 2a11         move.l     (a1), d5
0000f4: 1c0d         .dc.w      $1c0d
0000f6: 0f42         bchg.b     d7, d2
0000f8: 0c6c626d3113 cmpi.w     #$626d, $3113(a4)
0000fe: 0f0b490c     movep.w    $490c(a3), d7
000102: 727c         moveq      #$7c, d1
000104: 6a2b         bpl.b      $131
000106: 0800         .dc.w      $0800
000108: 02110079     andi.b     #$79, (a1)
00010c: 205f         movea.l    (a7)+, a0
00010e: 7400         moveq      #$0, d2
000110: 1018         move.b     (a0)+, d0
000112: b102         eor.b      d0, d2
000114: 14c2         move.b     d2, (a2)+
000116: 0c02000d     cmpi.b     #$d, d2
00011a: 57c9fff4     dbeq       d1, $110
00011e: 14c2         move.b     d2, (a2)+
000120: 51c9fffc     dbra       d1, $11e
000124: 24690004     movea.l    $4(a1), a2
000128: 206a0004     movea.l    $4(a2), a0
00012c: 116900880033 move.b     $88(a1), $33(a0)
000132: 206a0008     movea.l    $8(a2), a0
000136: 34290096     move.w     $96(a1), d2
00013a: 6716         beq.b      $152
00013c: d0c2         adda.w     d2, a0
00013e: 10290002     move.b     $2(a1), d0
000142: 6b46         bmi.b      $18a
000144: 02000012     andi.b     #$12, d0
000148: 4e40         trap       #$0
00014a: 00806548234a ori.l      #$6548234a, d0
000150: 002a303c002a ori.b      #$3c, $2a(a2)
000156: 4aa90016     tst.l      $16(a1)
00015a: 670a         beq.b      $166
00015c: 24690016     movea.l    $16(a1), a2
000160: 336a00940094 move.w     $94(a2), $94(a1)
000166: 2f2d0004     move.l     $4(a5), -(a7)
00016a: 2b400004     move.l     d0, $4(a5)
00016e: 61000166     bsr.w      $2d6
000172: 40c0         move.w     sr, d0
000174: 2b5f0004     move.l     (a7)+, $4(a5)
000178: 02400001     andi.w     #$1, d0
00017c: 6706         beq.b      $184
00017e: 0c4100d0     cmpi.w     #$d0, d1
000182: 6612         bne.b      $196
000184: 4e75         rts        
000186: 225f         movea.l    (a7)+, a1
000188: 4e75         rts        
00018a: 323c00cb     move.w     #$cb, d1
00018e: 6006         bra.b      $196
000190: 225f         movea.l    (a7)+, a1
000192: 323c00d7     move.w     #$d7, d1
000196: 2f01         move.l     d1, -(a7)
000198: 6134         bsr.b      $1ce
00019a: 221f         move.l     (a7)+, d1
00019c: 003c0001     ori.b      #$1, ccr
0001a0: 4e75         rts        
0001a2: 41ec0168     lea.l      $168(a4), a0
0001a6: 701f         moveq      #$1f, d0
0001a8: 32290000     move.w     $0(a1), d1
0001ac: b258         cmp.w      (a0)+, d1
0001ae: 57c8fffc     dbeq       d0, $1ac
0001b2: 6710         beq.b      $1c4
0001b4: 701b         moveq      #$1b, d0
0001b6: 61ae         bsr.b      $166
0001b8: 20690004     movea.l    $4(a1), a0
0001bc: 614a         bsr.b      $208
0001be: 2069002a     movea.l    $2a(a1), a0
0001c2: 6144         bsr.b      $208
0001c4: 4a69001a     tst.w      $1a(a1)
0001c8: 663c         bne.b      $206
0001ca: 702b         moveq      #$2b, d0
0001cc: 6198         bsr.b      $166
0001ce: 4aa9002a     tst.l      $2a(a1)
0001d2: 6708         beq.b      $1dc
0001d4: 2469002a     movea.l    $2a(a1), a2
0001d8: 4e40         trap       #$0
0001da: 00814aa9000e ori.l      #$4aa9000e, d1
0001e0: 6724         beq.b      $206
0001e2: 2469000e     movea.l    $e(a1), a2
0001e6: 203c00000100 move.l     #$100, d0
0001ec: 42a9000e     clr.l      $e(a1)
0001f0: 2f0b         move.l     a3, -(a7)
0001f2: 266e03a4     movea.l    $3a4(a6), a3
0001f6: 487a000c     pea.l      $204(pc)
0001fa: 2f2b00a4     move.l     $a4(a3), -(a7)
0001fe: 266b04a4     movea.l    $4a4(a3), a3
000202: 4e75         rts        
000204: 265f         movea.l    (a7)+, a3
000206: 4e75         rts        
000208: 2008         move.l     a0, d0
00020a: 67fa         beq.b      $206
00020c: 30290008     move.w     $8(a1), d0
000210: 32290000     move.w     $0(a1), d1
000214: 20680004     movea.l    $4(a0), a0
000218: b0680004     cmp.w      $4(a0), d0
00021c: 6636         bne.b      $254
00021e: 48e7c0c0     movem.l    d0-d1/a0-a1, -(a7)
000222: 4a69001a     tst.w      $1a(a1)
000226: 6720         beq.b      $248
000228: 302c0002     move.w     $2(a4), d0
00022c: 3f400002     move.w     d0, $2(a7)
000230: 4e40         trap       #$0
000232: 00376512322f ori.b      #$12, $2f(a7, d3.w)
000238: 000641e9     ori.b      #$e9, d6
00023c: 0168701f     bchg.b     d0, $701f(a0)
000240: b258         cmp.w      (a0)+, d1
000242: 57c8fffc     dbeq       d0, $240
000246: 6704         beq.b      $24c
000248: 426f0002     clr.w      $2(a7)
00024c: 4cdf0303     movem.l    (a7)+, d0-d1/a0-a1
000250: 31400004     move.w     d0, $4(a0)
000254: 4e75         rts        
000256: 302d0006     move.w     $6(a5), d0
00025a: 0c400000     cmpi.w     #$0, d0
00025e: 663e         bne.b      $29e
000260: 613c         bsr.b      $29e
000262: 6408         bcc.b      $26c
000264: b27c00d0     cmp.w      #$d0, d1
000268: 660000a2     bne.w      $30c
00026c: 2a69000a     movea.l    $a(a1), a5
000270: 206d0020     movea.l    $20(a5), a0
000274: 30290094     move.w     $94(a1), d0
000278: b0680014     cmp.w      $14(a0), d0
00027c: 6742         beq.b      $2c0
00027e: 31400014     move.w     d0, $14(a0)
000282: 24690004     movea.l    $4(a1), a2
000286: 246a0004     movea.l    $4(a2), a2
00028a: 45eafff4     lea.l      -$c(a2), a2
00028e: 246a0016     movea.l    $16(a2), a2
000292: 35400094     move.w     d0, $94(a2)
000296: 4aaa0016     tst.l      $16(a2)
00029a: 66f2         bne.b      $28e
00029c: 4e75         rts        
00029e: 7206         moveq      #$6, d1
0002a0: 20690004     movea.l    $4(a1), a0
0002a4: 24680004     movea.l    $4(a0), a2
0002a8: 20680000     movea.l    $0(a0), a0
0002ac: d2a80030     add.l      $30(a0), d1
0002b0: 32301000     move.w     (a0, d1.w), d1
0002b4: 48e7004e     movem.l    a1/a4-a6, -(a7)
0002b8: 4eb01000     jsr        (a0, d1.w)
0002bc: 4cdf7200     movem.l    (a7)+, a1/a4-a6
0002c0: 4e75         rts        
0002c2: 61000302     bsr.w      $5c6
0002c6: 6548         bcs.b      $310
0002c8: 610c         bsr.b      $2d6
0002ca: 40e7         move.w     sr, -(a7)
0002cc: 3f01         move.w     d1, -(a7)
0002ce: 6100022c     bsr.w      $4fc
0002d2: 321f         move.w     (a7)+, d1
0002d4: 4e77         rtr        
0002d6: 302d0006     move.w     $6(a5), d0
0002da: 7208         moveq      #$8, d1
0002dc: 0c400000     cmpi.w     #$0, d0
0002e0: 66be         bne.b      $2a0
0002e2: 206d0020     movea.l    $20(a5), a0
0002e6: 30280014     move.w     $14(a0), d0
0002ea: b0690094     cmp.w      $94(a1), d0
0002ee: 6602         bne.b      $2f2
0002f0: 6190         bsr.b      $282
0002f2: 45e90080     lea.l      $80(a1), a2
0002f6: 701b         moveq      #$1b, d0
0002f8: 14d8         move.b     (a0)+, (a2)+
0002fa: 51c8fffc     dbra       d0, $2f8
0002fe: 303c0000     move.w     #$0, d0
000302: 619c         bsr.b      $2a0
000304: 640a         bcc.b      $310
000306: b27c00d0     cmp.w      #$d0, d1
00030a: 6704         beq.b      $310
00030c: 003c0001     ori.b      #$1, ccr
000310: 4e75         rts        
000312: 610002b2     bsr.w      $5c6
000316: 65f8         bcs.b      $310
000318: 52290030     addq.b     #$1, $30(a1)
00031c: 242d0004     move.l     $4(a5), d2
000320: 6750         beq.b      $372
000322: 5382         subq.l     #$1, d2
000324: 246d0020     movea.l    $20(a5), a2
000328: 61000180     bsr.w      $4aa
00032c: 650e         bcs.b      $33c
00032e: 4a00         tst.b      d0
000330: 6726         beq.b      $358
000332: b029008c     cmp.b      $8c(a1), d0
000336: 6616         bne.b      $34e
000338: 323c00d3     move.w     #$d3, d1
00033c: 3f01         move.w     d1, -(a7)
00033e: 6128         bsr.b      $368
000340: 321f         move.w     (a7)+, d1
000342: 003c0001     ori.b      #$1, ccr
000346: 4e75         rts        
000348: 61000160     bsr.w      $4aa
00034c: 65ee         bcs.b      $33c
00034e: 4a290084     tst.b      $84(a1)
000352: 6704         beq.b      $358
000354: 61000378     bsr.w      $6ce
000358: 14c0         move.b     d0, (a2)+
00035a: 5382         subq.l     #$1, d2
00035c: 6b0a         bmi.b      $368
00035e: b029008b     cmp.b      $8b(a1), d0
000362: 66e4         bne.b      $348
000364: 4a00         tst.b      d0
000366: 67e0         beq.b      $348
000368: 5282         addq.l     #$1, d2
00036a: 2a69000a     movea.l    $a(a1), a5
00036e: 95ad0004     sub.l      d2, $4(a5)
000372: 60000188     bra.w      $4fc
000376: 6100024e     bsr.w      $5c6
00037a: 6594         bcs.b      $310
00037c: 74ff         moveq      #$ff, d2
00037e: 262d0004     move.l     $4(a5), d3
000382: 67e4         beq.b      $368
000384: 0c8300000100 cmpi.l     #$100, d3
00038a: 6306         bls.b      $392
00038c: 263c00000100 move.l     #$100, d3
000392: 3342002e     move.w     d2, $2e(a1)
000396: 7400         moveq      #$0, d2
000398: 2469000e     movea.l    $e(a1), a2
00039c: 6100010c     bsr.w      $4aa
0003a0: 6500009e     bcs.w      $440
0003a4: 4a00         tst.b      d0
0003a6: 670e         beq.b      $3b6
0003a8: 7208         moveq      #$8, d1
0003aa: 41e90089     lea.l      $89(a1), a0
0003ae: b018         cmp.b      (a0)+, d0
0003b0: 57c9fffc     dbeq       d1, $3ae
0003b4: 673a         beq.b      $3f0
0003b6: b469002e     cmp.w      $2e(a1), d2
0003ba: 6304         bls.b      $3c0
0003bc: 3342002e     move.w     d2, $2e(a1)
0003c0: 5242         addq.w     #$1, d2
0003c2: b443         cmp.w      d3, d2
0003c4: 650c         bcs.b      $3d2
0003c6: 10290093     move.b     $93(a1), d0
0003ca: 61000302     bsr.w      $6ce
0003ce: 5342         subq.w     #$1, d2
0003d0: 60ca         bra.b      $39c
0003d2: 4a290081     tst.b      $81(a1)
0003d6: 6710         beq.b      $3e8
0003d8: 0c000061     cmpi.b     #$61, d0
0003dc: 650a         bcs.b      $3e8
0003de: 0c00007a     cmpi.b     #$7a, d0
0003e2: 6204         bhi.b      $3e8
0003e4: 04000020     subi.b     #$20, d0
0003e8: 14c0         move.b     d0, (a2)+
0003ea: 610000ee     bsr.w      $4da
0003ee: 60ac         bra.b      $39c
0003f0: e341         asl.w      #$1, d1
0003f2: 323b1008     move.w     $3fc(pc, d1.w), d1
0003f6: 4ebb1004     jsr        $3fc(pc, d1.w)
0003fa: 60a0         bra.b      $39c
0003fc: 004e         .dc.w      $004e
0003fe: 004e         .dc.w      $004e
000400: ff14         fsave      (a4)
000402: 0094008a0038 ori.l      #$8a0038, (a4)
000408: 0012004e     ori.b      #$4e, (a2)
00040c: 0062588f     ori.w      #$588f, -(a2)
000410: 1480         move.b     d0, (a2)
000412: 610000c6     bsr.w      $4da
000416: 2602         move.l     d2, d3
000418: 5283         addq.l     #$1, d3
00041a: 2a69000a     movea.l    $a(a1), a5
00041e: 2b430004     move.l     d3, $4(a5)
000422: 206d0020     movea.l    $20(a5), a0
000426: 2469000e     movea.l    $e(a1), a2
00042a: 10da         move.b     (a2)+, (a0)+
00042c: 51cafffc     dbra       d2, $42a
000430: 600000ca     bra.w      $4fc
000434: 588f         addq.l     #$4, a7
000436: 4a42         tst.w      d2
000438: 6700fefe     beq.w      $338
00043c: 6000ff78     bra.w      $3b6
000440: 14bc000d     move.b     #$d, (a2)
000444: 6000fef6     bra.w      $33c
000448: 6114         bsr.b      $45e
00044a: 4a42         tst.w      d2
00044c: 6708         beq.b      $456
00044e: 4a290083     tst.b      $83(a1)
000452: 67f4         beq.b      $448
000454: 612a         bsr.b      $480
000456: 7400         moveq      #$0, d2
000458: 2469000e     movea.l    $e(a1), a2
00045c: 4e75         rts        
00045e: 4a42         tst.w      d2
000460: 671c         beq.b      $47e
000462: 538a         subq.l     #$1, a2
000464: 5342         subq.w     #$1, d2
000466: 4a290082     tst.b      $82(a1)
00046a: 6706         beq.b      $472
00046c: 6104         bsr.b      $472
00046e: 7020         moveq      #$20, d0
000470: 6104         bsr.b      $476
000472: 10290092     move.b     $92(a1), d0
000476: 4a290084     tst.b      $84(a1)
00047a: 66000252     bne.w      $6ce
00047e: 4e75         rts        
000480: 700d         moveq      #$d, d0
000482: 6000024a     bra.w      $6ce
000486: 14a9008b     move.b     $8b(a1), (a2)
00048a: 700d         moveq      #$d, d0
00048c: 61c8         bsr.b      $456
00048e: 6150         bsr.b      $4e0
000490: b469002e     cmp.w      $2e(a1), d2
000494: 6712         beq.b      $4a8
000496: 5242         addq.w     #$1, d2
000498: b443         cmp.w      d3, d2
00049a: 640a         bcc.b      $4a6
00049c: 101a         move.b     (a2)+, d0
00049e: b029008b     cmp.b      $8b(a1), d0
0004a2: 66ea         bne.b      $48e
0004a4: 538a         subq.l     #$1, a2
0004a6: 5342         subq.w     #$1, d2
0004a8: 4e75         rts        
0004aa: 48e730f0     movem.l    d2-d3/a0-a3, -(a7)
0004ae: 20690004     movea.l    $4(a1), a0
0004b2: 2469002a     movea.l    $2a(a1), a2
0004b6: 26680004     movea.l    $4(a0), a3
0004ba: 200a         move.l     a2, d0
0004bc: 6602         bne.b      $4c0
0004be: 2448         movea.l    a0, a2
0004c0: 246a0004     movea.l    $4(a2), a2
0004c4: 156900880033 move.b     $88(a1), $33(a2)
0004ca: 274a002e     move.l     a2, $2e(a3)
0004ce: 7202         moveq      #$2, d1
0004d0: 61000292     bsr.w      $764
0004d4: 4cdf0f0c     movem.l    (a7)+, d2-d3/a0-a3
0004d8: 4e75         rts        
0004da: 4a290084     tst.b      $84(a1)
0004de: 671a         beq.b      $4fa
0004e0: 0c000020     cmpi.b     #$20, d0
0004e4: 640001e8     bcc.w      $6ce
0004e8: 0c00000d     cmpi.b     #$d, d0
0004ec: 670001e0     beq.w      $6ce
0004f0: 1f00         move.b     d0, -(a7)
0004f2: 702e         moveq      #$2e, d0
0004f4: 610001d8     bsr.w      $6ce
0004f8: 101f         move.b     (a7)+, d0
0004fa: 4e75         rts        
0004fc: 30290008     move.w     $8(a1), d0
000500: 22290004     move.l     $4(a1), d1
000504: 6104         bsr.b      $50a
000506: 2229002a     move.l     $2a(a1), d1
00050a: 6710         beq.b      $51c
00050c: 2041         movea.l    d1, a0
00050e: 20680004     movea.l    $4(a0), a0
000512: b0680006     cmp.w      $6(a0), d0
000516: 6604         bne.b      $51c
000518: 42680006     clr.w      $6(a0)
00051c: 4e75         rts        
00051e: 20690004     movea.l    $4(a1), a0
000522: 20680004     movea.l    $4(a0), a0
000526: 4a280046     tst.b      $46(a0)
00052a: 671a         beq.b      $546
00052c: 42280046     clr.b      $46(a0)
000530: 41e8fff4     lea.l      -$c(a0), a0
000534: 22280016     move.l     $16(a0), d1
000538: 2041         movea.l    d1, a0
00053a: 117c00010032 move.b     #$1, $32(a0)
000540: 22280016     move.l     $16(a0), d1
000544: 66f2         bne.b      $538
000546: 4e75         rts        
000548: 48e78080     movem.l    d0/a0, -(a7)
00054c: 20680004     movea.l    $4(a0), a0
000550: 30280006     move.w     $6(a0), d0
000554: 6736         beq.b      $58c
000556: b06f0002     cmp.w      $2(a7), d0
00055a: 6764         beq.b      $5c0
00055c: 3f00         move.w     d0, -(a7)
00055e: 619c         bsr.b      $4fc
000560: 301f         move.w     (a7)+, d0
000562: 2f0b         move.l     a3, -(a7)
000564: 266e03a4     movea.l    $3a4(a6), a3
000568: 487a000c     pea.l      $576(pc)
00056c: 2f2b00ac     move.l     $ac(a3), -(a7)
000570: 266b04ac     movea.l    $4ac(a3), a3
000574: 4e75         rts        
000576: 265f         movea.l    (a7)+, a3
000578: 52290031     addq.b     #$1, $31(a1)
00057c: 4cdf0101     movem.l    (a7)+, d0/a0
000580: 322c0026     move.w     $26(a4), d1
000584: 67c2         beq.b      $548
000586: 003c0001     ori.b      #$1, ccr
00058a: 4e75         rts        
00058c: 302f0002     move.w     $2(a7), d0
000590: 31400006     move.w     d0, $6(a0)
000594: 31400004     move.w     d0, $4(a0)
000598: 1169008f0037 move.b     $8f(a1), $37(a0)
00059e: 116900900035 move.b     $90(a1), $35(a0)
0005a4: 116900910036 move.b     $91(a1), $36(a0)
0005aa: 116900980039 move.b     $98(a1), $39(a0)
0005b0: 11690099003a move.b     $99(a1), $3a(a0)
0005b6: 10290094     move.b     $94(a1), d0
0005ba: 6704         beq.b      $5c0
0005bc: 11400032     move.b     d0, $32(a0)
0005c0: 4cdf0101     movem.l    (a7)+, d0/a0
0005c4: 4e75         rts        
0005c6: 30290008     move.w     $8(a1), d0
0005ca: 6100ff52     bsr.w      $51e
0005ce: 12290032     move.b     $32(a1), d1
0005d2: 673c         beq.b      $610
0005d4: b23c0003     cmp.b      #$3, d1
0005d8: 650a         bcs.b      $5e4
0005da: 137c00010032 move.b     #$1, $32(a1)
0005e0: 7200         moveq      #$0, d1
0005e2: 600c         bra.b      $5f0
0005e4: 52290032     addq.b     #$1, $32(a1)
0005e8: b23c0002     cmp.b      #$2, d1
0005ec: 6518         bcs.b      $606
0005ee: 7204         moveq      #$4, d1
0005f0: 2f0b         move.l     a3, -(a7)
0005f2: 266e03a4     movea.l    $3a4(a6), a3
0005f6: 487a000c     pea.l      $604(pc)
0005fa: 2f2b0020     move.l     $20(a3), -(a7)
0005fe: 266b0420     movea.l    $420(a3), a3
000602: 4e75         rts        
000604: 265f         movea.l    (a7)+, a3
000606: 323c00dc     move.w     #$dc, d1
00060a: 003c0001     ori.b      #$1, ccr
00060e: 4e75         rts        
000610: 42290031     clr.b      $31(a1)
000614: 20690004     movea.l    $4(a1), a0
000618: 6100ff2e     bsr.w      $548
00061c: 6518         bcs.b      $636
00061e: 2229002a     move.l     $2a(a1), d1
000622: 2041         movea.l    d1, a0
000624: 6706         beq.b      $62c
000626: 6100ff20     bsr.w      $548
00062a: 650a         bcs.b      $636
00062c: 4a290031     tst.b      $31(a1)
000630: 6694         bne.b      $5c6
000632: 42290030     clr.b      $30(a1)
000636: 4e75         rts        
000638: 618c         bsr.b      $5c6
00063a: 640a         bcc.b      $646
00063c: 4e75         rts        
00063e: 6186         bsr.b      $5c6
000640: 65fa         bcs.b      $63c
000642: 52290030     addq.b     #$1, $30(a1)
000646: 262d0004     move.l     $4(a5), d3
00064a: 6772         beq.b      $6be
00064c: 246d0020     movea.l    $20(a5), a2
000650: 4a83         tst.l      d3
000652: 6762         beq.b      $6b6
000654: 5383         subq.l     #$1, d3
000656: 101a         move.b     (a2)+, d0
000658: 6746         beq.b      $6a0
00065a: 4a290030     tst.b      $30(a1)
00065e: 6640         bne.b      $6a0
000660: 4a290081     tst.b      $81(a1)
000664: 6710         beq.b      $676
000666: 0c000061     cmpi.b     #$61, d0
00066a: 650a         bcs.b      $676
00066c: 0c00007a     cmpi.b     #$7a, d0
000670: 6204         bhi.b      $676
000672: 04000020     subi.b     #$20, d0
000676: b029009a     cmp.b      $9a(a1), d0
00067a: 6624         bne.b      $6a0
00067c: 7000         moveq      #$0, d0
00067e: 7400         moveq      #$0, d2
000680: 1029009b     move.b     $9b(a1), d0
000684: 670e         beq.b      $694
000686: 342900a0     move.w     $a0(a1), d2
00068a: 84c0         divu.w     d0, d2
00068c: 4842         swap       d2
00068e: 9440         sub.w      d0, d2
000690: 4442         neg.w      d2
000692: 5342         subq.w     #$1, d2
000694: 7020         moveq      #$20, d0
000696: 614c         bsr.b      $6e4
000698: 55cafffa     dbcs       d2, $694
00069c: 6524         bcs.b      $6c2
00069e: 60b0         bra.b      $650
0006a0: 6142         bsr.b      $6e4
0006a2: 651e         bcs.b      $6c2
0006a4: 102affff     move.b     -$1(a2), d0
0006a8: 67a6         beq.b      $650
0006aa: b029008b     cmp.b      $8b(a1), d0
0006ae: 66a0         bne.b      $650
0006b0: 4a290030     tst.b      $30(a1)
0006b4: 669a         bne.b      $650
0006b6: 2a69000a     movea.l    $a(a1), a5
0006ba: 97ad0004     sub.l      d3, $4(a5)
0006be: 6000fe3c     bra.w      $4fc
0006c2: 40e7         move.w     sr, -(a7)
0006c4: 3f01         move.w     d1, -(a7)
0006c6: 61ee         bsr.b      $6b6
0006c8: 4c9f0002     movem.w    (a7)+, d1
0006cc: 4e77         rtr        
0006ce: 48e7a0e0     movem.l    d0/d2/a0-a2, -(a7)
0006d2: 2069002a     movea.l    $2a(a1), a0
0006d6: 2208         move.l     a0, d1
0006d8: 67000082     beq.w      $75c
0006dc: 0c00000d     cmpi.b     #$d, d0
0006e0: 6674         bne.b      $756
0006e2: 6040         bra.b      $724
0006e4: 48e7a0e0     movem.l    d0/d2/a0-a2, -(a7)
0006e8: 2069002a     movea.l    $2a(a1), a0
0006ec: 2208         move.l     a0, d1
0006ee: 676c         beq.b      $75c
0006f0: 0c00000d     cmpi.b     #$d, d0
0006f4: 6660         bne.b      $756
0006f6: 24680004     movea.l    $4(a0), a2
0006fa: 4a2a0034     tst.b      $34(a2)
0006fe: 660e         bne.b      $70e
000700: 4a290087     tst.b      $87(a1)
000704: 671e         beq.b      $724
000706: 532a0033     subq.b     #$1, $33(a2)
00070a: 6618         bne.b      $724
00070c: 600c         bra.b      $71a
00070e: 6100fd9a     bsr.w      $4aa
000712: 6506         bcs.b      $71a
000714: b029008f     cmp.b      $8f(a1), d0
000718: 66f4         bne.b      $70e
00071a: 6100fd8e     bsr.w      $4aa
00071e: b029008f     cmp.b      $8f(a1), d0
000722: 67f6         beq.b      $71a
000724: 24680004     movea.l    $4(a0), a2
000728: 422a0034     clr.b      $34(a2)
00072c: 700d         moveq      #$d, d0
00072e: 6132         bsr.b      $762
000730: 652a         bcs.b      $75c
000732: 426900a0     clr.w      $a0(a1)
000736: 4a290030     tst.b      $30(a1)
00073a: 6620         bne.b      $75c
00073c: 7400         moveq      #$0, d2
00073e: 14290086     move.b     $86(a1), d2
000742: 4a290085     tst.b      $85(a1)
000746: 6706         beq.b      $74e
000748: 700a         moveq      #$a, d0
00074a: 6116         bsr.b      $762
00074c: 650e         bcs.b      $75c
00074e: 7000         moveq      #$0, d0
000750: 51cafff8     dbra       d2, $74a
000754: 6006         bra.b      $75c
000756: 526900a0     addq.w     #$1, $a0(a1)
00075a: 6106         bsr.b      $762
00075c: 4cdf0705     movem.l    (a7)+, d0/d2/a0-a2
000760: 4e75         rts        
000762: 7204         moveq      #$4, d1
000764: 48e730ee     movem.l    d2-d3/a0-a2/a4-a6, -(a7)
000768: 24680004     movea.l    $4(a0), a2
00076c: 426a0008     clr.w      $8(a2)
000770: 20680000     movea.l    $0(a0), a0
000774: d2a80030     add.l      $30(a0), d1
000778: 32301000     move.w     (a0, d1.w), d1
00077c: 4eb01000     jsr        (a0, d1.w)
000780: 4cdf770c     movem.l    (a7)+, d2-d3/a0-a2/a4-a6
000784: 4e75         rts        
000786: 7363         .dc.w      $7363
000788: 660000c8     bne.w      $852
00078c: 442d         neg.b      -$5556(a5)
