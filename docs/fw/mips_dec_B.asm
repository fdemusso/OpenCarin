00348c: afbf0000  sw       $ra, ($sp)
003490: 03a04025  move     $t0, $sp
003494: 27bdffc0  addiu    $sp, $sp, -0x40
003498: afa80004  sw       $t0, 4($sp)
00349c: afb70020  sw       $s7, 0x20($sp)
0034a0: afb60024  sw       $s6, 0x24($sp)
0034a4: afb50028  sw       $s5, 0x28($sp)
0034a8: afb4002c  sw       $s4, 0x2c($sp)
0034ac: afb30030  sw       $s3, 0x30($sp)
0034b0: afb20034  sw       $s2, 0x34($sp)
0034b4: afb10038  sw       $s1, 0x38($sp)
0034b8: afb0003c  sw       $s0, 0x3c($sp)
0034bc: 3c080000  lui      $t0, 0
0034c0: afa6000c  sw       $a2, 0xc($sp)
0034c4: 011c4021  addu     $t0, $t0, $gp
0034c8: afa00010  sw       $zero, 0x10($sp)
0034cc: 8d139a10  lw       $s3, -0x65f0($t0)
0034d0: 3c080000  lui      $t0, 0
0034d4: 011c4021  addu     $t0, $t0, $gp
0034d8: 8d089a0c  lw       $t0, -0x65f4($t0)
0034dc: afa80014  sw       $t0, 0x14($sp)
0034e0: 3c080000  lui      $t0, 0
0034e4: 011c4021  addu     $t0, $t0, $gp
0034e8: 8d169a08  lw       $s6, -0x65f8($t0)
0034ec: 3c080000  lui      $t0, 0
0034f0: 011c4021  addu     $t0, $t0, $gp
0034f4: 8d088700  lw       $t0, -0x7900($t0)
0034f8: 95170088  lhu      $s7, 0x88($t0)   ; T[0x40]
0034fc: 95110018  lhu      $s1, 0x18($t0)   ; T[0x08]
003500: 94a80000  lhu      $t0, ($a1)
003504: 00809025  move     $s2, $a0
003508: 0248a021  addu     $s4, $s2, $t0
00350c: 94a80002  lhu      $t0, 2($a1)
003510: 02284018  .word    0x02284018
003514: 0288a821  addu     $s5, $s4, $t0
003518: 3c080000  lui      $t0, 0
00351c: 24090001  addiu    $t1, $zero, 1
003520: 011c4021  addu     $t0, $t0, $gp
003524: a5099a02  sh       $t1, -0x65fe($t0)
003528: 3c080000  lui      $t0, 0
00352c: 011c4021  addu     $t0, $t0, $gp
003530: a5099a00  sh       $t1, -0x6600($t0)
003534: 10000148  b        0x3a58
003538: 02808025  move     $s0, $s4
00353c: 8fa9000c  lw       $t1, 0xc($sp)
003540: 24080014  addiu    $t0, $zero, 0x14
003544: 1528011f  bne      $t1, $t0, 0x39c4
003548: 00000000  nop      
00354c: 12140007  beq      $s0, $s4, 0x356c
003550: 02002025  move     $a0, $s0
003554: 8fa50010  lw       $a1, 0x10($sp)
003558: 3c010000  lui      $at, 0
00355c: 24211ac8  addiu    $at, $at, 0x1ac8   ; -> 0x9ab8
003560: 003e0821  addu     $at, $at, $fp
003564: 0020f809  jalr     $at
003568: 02203025  move     $a2, $s1
00356c: 3c010000  lui      $at, 0
003570: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003574: 003e0821  addu     $at, $at, $fp
003578: 0020f809  jalr     $at
00357c: 24040001  addiu    $a0, $zero, 1
003580: 304800ff  andi     $t0, $v0, 0xff
003584: 11000043  beqz     $t0, 0x3694
003588: 00000000  nop      
00358c: 3c010000  lui      $at, 0
003590: 3c080000  lui      $t0, 0
003594: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003598: 011c4021  addu     $t0, $t0, $gp
00359c: 003e0821  addu     $at, $at, $fp
0035a0: 0020f809  jalr     $at
0035a4: 91049a1b  lbu      $a0, -0x65e5($t0)
0035a8: 3c090000  lui      $t1, 0
0035ac: 013c4821  addu     $t1, $t1, $gp
0035b0: 8d298700  lw       $t1, -0x7900($t1)
0035b4: 3c080000  lui      $t0, 0
0035b8: 011c4021  addu     $t0, $t0, $gp
0035bc: 8d088700  lw       $t0, -0x7900($t0)
0035c0: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
0035c4: 85080030  lh       $t0, 0x30($t0)   ; T[0x14]
0035c8: 02494821  addu     $t1, $s2, $t1
0035cc: 95290028  lhu      $t1, 0x28($t1)   ; T[0x10]
0035d0: 00484019  .word    0x00484019
0035d4: 01284021  addu     $t0, $t1, $t0
0035d8: 3c010000  lui      $at, 0
0035dc: a6080012  sh       $t0, 0x12($s0)
0035e0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0035e4: 3c080000  lui      $t0, 0
0035e8: 003e0821  addu     $at, $at, $fp
0035ec: 011c4021  addu     $t0, $t0, $gp
0035f0: 0020f809  jalr     $at
0035f4: 91049a1f  lbu      $a0, -0x65e1($t0)
0035f8: 3c090000  lui      $t1, 0
0035fc: 013c4821  addu     $t1, $t1, $gp
003600: 8d298700  lw       $t1, -0x7900($t1)
003604: 3c080000  lui      $t0, 0
003608: 011c4021  addu     $t0, $t0, $gp
00360c: 8d088700  lw       $t0, -0x7900($t0)
003610: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
003614: 85080032  lh       $t0, 0x32($t0)   ; T[0x15]
003618: 02494821  addu     $t1, $s2, $t1
00361c: 95290030  lhu      $t1, 0x30($t1)   ; T[0x14]
003620: 00484019  .word    0x00484019
003624: 01284021  addu     $t0, $t1, $t0
003628: a6080014  sh       $t0, 0x14($s0)
00362c: 3c080000  lui      $t0, 0
003630: 011c4021  addu     $t0, $t0, $gp
003634: 8d088700  lw       $t0, -0x7900($t0)
003638: afa80008  sw       $t0, 8($sp)
00363c: 3c080000  lui      $t0, 0
003640: 011c4021  addu     $t0, $t0, $gp
003644: 91049a17  lbu      $a0, -0x65e9($t0)
003648: 3c010000  lui      $at, 0
00364c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003650: 003e0821  addu     $at, $at, $fp
003654: 0020f809  jalr     $at
003658: 00000000  nop      
00365c: 3c090000  lui      $t1, 0
003660: 013c4821  addu     $t1, $t1, $gp
003664: 8d298700  lw       $t1, -0x7900($t1)
003668: 8fa80008  lw       $t0, 8($sp)
00366c: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
003670: 8508002e  lh       $t0, 0x2e($t0)   ; T[0x13]
003674: 02494821  addu     $t1, $s2, $t1
003678: 9529002c  lhu      $t1, 0x2c($t1)
00367c: 00484019  .word    0x00484019
003680: 01284021  addu     $t0, $t1, $t0
003684: 8fa90008  lw       $t1, 8($sp)
003688: 9529001a  lhu      $t1, 0x1a($t1)
00368c: 02094821  addu     $t1, $s0, $t1
003690: a5280004  sh       $t0, 4($t1)
003694: 3c010000  lui      $at, 0
003698: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
00369c: 003e0821  addu     $at, $at, $fp
0036a0: 0020f809  jalr     $at
0036a4: 24040001  addiu    $a0, $zero, 1
0036a8: 304800ff  andi     $t0, $v0, 0xff
0036ac: 11000024  beqz     $t0, 0x3740
0036b0: 24040008  addiu    $a0, $zero, 8
0036b4: 3c010000  lui      $at, 0
0036b8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0036bc: 003e0821  addu     $at, $at, $fp
0036c0: 0020f809  jalr     $at
0036c4: 00000000  nop      
0036c8: 3c010000  lui      $at, 0
0036cc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0036d0: a202000a  sb       $v0, 0xa($s0)
0036d4: 003e0821  addu     $at, $at, $fp
0036d8: 0020f809  jalr     $at
0036dc: 24040008  addiu    $a0, $zero, 8
0036e0: 3c010000  lui      $at, 0
0036e4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0036e8: a202000b  sb       $v0, 0xb($s0)
0036ec: 003e0821  addu     $at, $at, $fp
0036f0: 0020f809  jalr     $at
0036f4: 24040008  addiu    $a0, $zero, 8
0036f8: 3c010000  lui      $at, 0
0036fc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003700: a2020010  sb       $v0, 0x10($s0)
003704: 003e0821  addu     $at, $at, $fp
003708: 0020f809  jalr     $at
00370c: 24040008  addiu    $a0, $zero, 8
003710: 3c010000  lui      $at, 0
003714: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003718: a2020011  sb       $v0, 0x11($s0)
00371c: 003e0821  addu     $at, $at, $fp
003720: 0020f809  jalr     $at
003724: 24040010  addiu    $a0, $zero, 0x10
003728: 3c080000  lui      $t0, 0
00372c: 011c4021  addu     $t0, $t0, $gp
003730: 8d088700  lw       $t0, -0x7900($t0)
003734: 9508001a  lhu      $t0, 0x1a($t0)   ; T[0x09]
003738: 02084021  addu     $t0, $s0, $t0
00373c: a5020002  sh       $v0, 2($t0)
003740: 3c080000  lui      $t0, 0
003744: 011c4021  addu     $t0, $t0, $gp
003748: 810899cb  lb       $t0, -0x6635($t0)
00374c: 3c010000  lui      $at, 0
003750: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003754: 2508ffff  addiu    $t0, $t0, -1
003758: 003e0821  addu     $at, $at, $fp
00375c: 0020f809  jalr     $at
003760: 310400ff  andi     $a0, $t0, 0xff
003764: 00024040  sll      $t0, $v0, 1
003768: a6080000  sh       $t0, ($s0)
00376c: 3c080000  lui      $t0, 0
003770: 011c4021  addu     $t0, $t0, $gp
003774: 810899cb  lb       $t0, -0x6635($t0)
003778: 3c010000  lui      $at, 0
00377c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003780: 2508ffff  addiu    $t0, $t0, -1
003784: 003e0821  addu     $at, $at, $fp
003788: 0020f809  jalr     $at
00378c: 310400ff  andi     $a0, $t0, 0xff
003790: 3c010000  lui      $at, 0
003794: 00024040  sll      $t0, $v0, 1
003798: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
00379c: a6080002  sh       $t0, 2($s0)
0037a0: 003e0821  addu     $at, $at, $fp
0037a4: 0020f809  jalr     $at
0037a8: 24040001  addiu    $a0, $zero, 1
0037ac: 304800ff  andi     $t0, $v0, 0xff
0037b0: 51000016  beql     $t0, $zero, 0x380c
0037b4: 3c080000  lui      $t0, 0
0037b8: 3c010000  lui      $at, 0
0037bc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0037c0: 003e0821  addu     $at, $at, $fp
0037c4: 0020f809  jalr     $at
0037c8: 93a40017  lbu      $a0, 0x17($sp)
0037cc: 3c090000  lui      $t1, 0
0037d0: 013c4821  addu     $t1, $t1, $gp
0037d4: 8d298700  lw       $t1, -0x7900($t1)
0037d8: 3c080000  lui      $t0, 0
0037dc: 011c4021  addu     $t0, $t0, $gp
0037e0: 8d088700  lw       $t0, -0x7900($t0)
0037e4: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
0037e8: 85080020  lh       $t0, 0x20($t0)   ; T[0x0c]
0037ec: 02494821  addu     $t1, $s2, $t1
0037f0: 9529001c  lhu      $t1, 0x1c($t1)   ; T[0x0a]
0037f4: 00484019  .word    0x00484019
0037f8: 01284821  addu     $t1, $t1, $t0
0037fc: 3c080000  lui      $t0, 0
003800: 011c4021  addu     $t0, $t0, $gp
003804: a5099a02  sh       $t1, -0x65fe($t0)
003808: 3c080000  lui      $t0, 0
00380c: 011c4021  addu     $t0, $t0, $gp
003810: 95089a02  lhu      $t0, -0x65fe($t0)
003814: 3c010000  lui      $at, 0
003818: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
00381c: a6080004  sh       $t0, 4($s0)
003820: 003e0821  addu     $at, $at, $fp
003824: 0020f809  jalr     $at
003828: 326400ff  andi     $a0, $s3, 0xff
00382c: 3c080000  lui      $t0, 0
003830: 011c4021  addu     $t0, $t0, $gp
003834: 8d088700  lw       $t0, -0x7900($t0)
003838: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
00383c: 02484021  addu     $t0, $s2, $t0
003840: 950a0012  lhu      $t2, 0x12($t0)   ; T[0x05]
003844: 3049ffff  andi     $t1, $v0, 0xffff
003848: 512a0005  beql     $t1, $t2, 0x3860
00384c: a6000006  sh       $zero, 6($s0)
003850: 85080010  lh       $t0, 0x10($t0)
003854: 01314819  .word    0x01314819
003858: 01094021  addu     $t0, $t0, $t1
00385c: a6080006  sh       $t0, 6($s0)
003860: 3c010000  lui      $at, 0
003864: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003868: 003e0821  addu     $at, $at, $fp
00386c: 0020f809  jalr     $at
003870: 326400ff  andi     $a0, $s3, 0xff
003874: 3c080000  lui      $t0, 0
003878: 011c4021  addu     $t0, $t0, $gp
00387c: 8d088700  lw       $t0, -0x7900($t0)
003880: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003884: 02484021  addu     $t0, $s2, $t0
003888: 950a0012  lhu      $t2, 0x12($t0)   ; T[0x05]
00388c: 3049ffff  andi     $t1, $v0, 0xffff
003890: 512a0005  beql     $t1, $t2, 0x38a8
003894: a6000008  sh       $zero, 8($s0)
003898: 85080010  lh       $t0, 0x10($t0)
00389c: 01314819  .word    0x01314819
0038a0: 01094021  addu     $t0, $t0, $t1
0038a4: a6080008  sh       $t0, 8($s0)
0038a8: 3c010000  lui      $at, 0
0038ac: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0038b0: 003e0821  addu     $at, $at, $fp
0038b4: 0020f809  jalr     $at
0038b8: 24040001  addiu    $a0, $zero, 1
0038bc: 304800ff  andi     $t0, $v0, 0xff
0038c0: 11000008  beqz     $t0, 0x38e4
0038c4: 24040010  addiu    $a0, $zero, 0x10
0038c8: 3c010000  lui      $at, 0
0038cc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0038d0: 003e0821  addu     $at, $at, $fp
0038d4: 0020f809  jalr     $at
0038d8: 00000000  nop      
0038dc: 10000009  b        0x3904
0038e0: a7a20018  sh       $v0, 0x18($sp)
0038e4: 3c010000  lui      $at, 0
0038e8: 3c080000  lui      $t0, 0
0038ec: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0038f0: 011c4021  addu     $t0, $t0, $gp
0038f4: 003e0821  addu     $at, $at, $fp
0038f8: 0020f809  jalr     $at
0038fc: 91049a04  lbu      $a0, -0x65fc($t0)
003900: a7a20018  sh       $v0, 0x18($sp)
003904: 97a80018  lhu      $t0, 0x18($sp)
003908: 3c010000  lui      $at, 0
00390c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003910: a608000c  sh       $t0, 0xc($s0)
003914: 003e0821  addu     $at, $at, $fp
003918: 0020f809  jalr     $at
00391c: 24040008  addiu    $a0, $zero, 8
003920: 3c010000  lui      $at, 0
003924: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003928: a202000e  sb       $v0, 0xe($s0)
00392c: 003e0821  addu     $at, $at, $fp
003930: 0020f809  jalr     $at
003934: 24040008  addiu    $a0, $zero, 8
003938: 3c010000  lui      $at, 0
00393c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003940: a202000f  sb       $v0, 0xf($s0)
003944: 003e0821  addu     $at, $at, $fp
003948: 0020f809  jalr     $at
00394c: 24040001  addiu    $a0, $zero, 1
003950: 304800ff  andi     $t0, $v0, 0xff
003954: 11000011  beqz     $t0, 0x399c
003958: 32c400ff  andi     $a0, $s6, 0xff
00395c: 3c010000  lui      $at, 0
003960: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003964: 003e0821  addu     $at, $at, $fp
003968: 0020f809  jalr     $at
00396c: 00000000  nop      
003970: 3c090000  lui      $t1, 0
003974: 013c4821  addu     $t1, $t1, $gp
003978: 8d298700  lw       $t1, -0x7900($t1)
00397c: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
003980: 02494821  addu     $t1, $s2, $t1
003984: 95290008  lhu      $t1, 8($t1)   ; T[0x00]
003988: 00574019  .word    0x00574019
00398c: 01284821  addu     $t1, $t1, $t0
003990: 3c080000  lui      $t0, 0
003994: 011c4021  addu     $t0, $t0, $gp
003998: a5099a00  sh       $t1, -0x6600($t0)
00399c: 3c080000  lui      $t0, 0
0039a0: 011c4021  addu     $t0, $t0, $gp
0039a4: 8d088700  lw       $t0, -0x7900($t0)
0039a8: 3c090000  lui      $t1, 0
0039ac: 9508001a  lhu      $t0, 0x1a($t0)   ; T[0x09]
0039b0: 013c4821  addu     $t1, $t1, $gp
0039b4: 85299a00  lh       $t1, -0x6600($t1)
0039b8: 02084021  addu     $t0, $s0, $t0
0039bc: 10000024  b        0x3a50
0039c0: a5090000  sh       $t1, ($t0)
0039c4: 8fa9000c  lw       $t1, 0xc($sp)
0039c8: 24080015  addiu    $t0, $zero, 0x15
0039cc: 15280020  bne      $t1, $t0, 0x3a50
0039d0: 24040001  addiu    $a0, $zero, 1
0039d4: 3c010000  lui      $at, 0
0039d8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0039dc: 003e0821  addu     $at, $at, $fp
0039e0: 0020f809  jalr     $at
0039e4: 00000000  nop      
0039e8: 304800ff  andi     $t0, $v0, 0xff
0039ec: 11000015  beqz     $t0, 0x3a44
0039f0: 3c080000  lui      $t0, 0
0039f4: 3c010000  lui      $at, 0
0039f8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0039fc: 011c4021  addu     $t0, $t0, $gp
003a00: 003e0821  addu     $at, $at, $fp
003a04: 0020f809  jalr     $at
003a08: 91049a23  lbu      $a0, -0x65dd($t0)
003a0c: 3c090000  lui      $t1, 0
003a10: 013c4821  addu     $t1, $t1, $gp
003a14: 8d298700  lw       $t1, -0x7900($t1)
003a18: 3c080000  lui      $t0, 0
003a1c: 011c4021  addu     $t0, $t0, $gp
003a20: 8d088700  lw       $t0, -0x7900($t0)
003a24: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
003a28: 850800a0  lh       $t0, 0xa0($t0)   ; T[0x4c]
003a2c: 02494821  addu     $t1, $s2, $t1
003a30: 95290034  lhu      $t1, 0x34($t1)   ; T[0x16]
003a34: 00484019  .word    0x00484019
003a38: 01284021  addu     $t0, $t1, $t0
003a3c: 10000004  b        0x3a50
003a40: a6080016  sh       $t0, 0x16($s0)
003a44: 8fa80010  lw       $t0, 0x10($sp)
003a48: 95080016  lhu      $t0, 0x16($t0)
003a4c: a6080016  sh       $t0, 0x16($s0)
003a50: afb00010  sw       $s0, 0x10($sp)
003a54: 02118021  addu     $s0, $s0, $s1
003a58: 0215402b  sltu     $t0, $s0, $s5
003a5c: 1500feb7  bnez     $t0, 0x353c
003a60: 00000000  nop      
003a64: 8fa9000c  lw       $t1, 0xc($sp)
003a68: 24080014  addiu    $t0, $zero, 0x14
003a6c: 15280077  bne      $t1, $t0, 0x3c4c
003a70: 24040001  addiu    $a0, $zero, 1
003a74: 3c010000  lui      $at, 0
003a78: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003a7c: 003e0821  addu     $at, $at, $fp
003a80: 0020f809  jalr     $at
003a84: 00000000  nop      
003a88: 304800ff  andi     $t0, $v0, 0xff
003a8c: 1100003f  beqz     $t0, 0x3b8c
003a90: 3c080000  lui      $t0, 0
003a94: 3c010000  lui      $at, 0
003a98: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003a9c: 011c4021  addu     $t0, $t0, $gp
003aa0: 003e0821  addu     $at, $at, $fp
003aa4: 0020f809  jalr     $at
003aa8: 91049a1b  lbu      $a0, -0x65e5($t0)
003aac: 3c090000  lui      $t1, 0
003ab0: 013c4821  addu     $t1, $t1, $gp
003ab4: 8d298700  lw       $t1, -0x7900($t1)
003ab8: 3c080000  lui      $t0, 0
003abc: 011c4021  addu     $t0, $t0, $gp
003ac0: 8d088700  lw       $t0, -0x7900($t0)
003ac4: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
003ac8: 85080030  lh       $t0, 0x30($t0)   ; T[0x14]
003acc: 02494821  addu     $t1, $s2, $t1
003ad0: 95290028  lhu      $t1, 0x28($t1)   ; T[0x10]
003ad4: 00484019  .word    0x00484019
003ad8: 01284021  addu     $t0, $t1, $t0
003adc: 3c010000  lui      $at, 0
003ae0: a6080012  sh       $t0, 0x12($s0)
003ae4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003ae8: 3c080000  lui      $t0, 0
003aec: 003e0821  addu     $at, $at, $fp
003af0: 011c4021  addu     $t0, $t0, $gp
003af4: 0020f809  jalr     $at
003af8: 91049a1f  lbu      $a0, -0x65e1($t0)
003afc: 3c090000  lui      $t1, 0
003b00: 013c4821  addu     $t1, $t1, $gp
003b04: 8d298700  lw       $t1, -0x7900($t1)
003b08: 3c080000  lui      $t0, 0
003b0c: 011c4021  addu     $t0, $t0, $gp
003b10: 8d088700  lw       $t0, -0x7900($t0)
003b14: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
003b18: 85080032  lh       $t0, 0x32($t0)   ; T[0x15]
003b1c: 02494821  addu     $t1, $s2, $t1
003b20: 95290030  lhu      $t1, 0x30($t1)   ; T[0x14]
003b24: 00484019  .word    0x00484019
003b28: 01284021  addu     $t0, $t1, $t0
003b2c: a6080014  sh       $t0, 0x14($s0)
003b30: 3c080000  lui      $t0, 0
003b34: 011c4021  addu     $t0, $t0, $gp
003b38: 8d118700  lw       $s1, -0x7900($t0)
003b3c: 3c010000  lui      $at, 0
003b40: 3c080000  lui      $t0, 0
003b44: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003b48: 011c4021  addu     $t0, $t0, $gp
003b4c: 003e0821  addu     $at, $at, $fp
003b50: 0020f809  jalr     $at
003b54: 91049a17  lbu      $a0, -0x65e9($t0)
003b58: 3c090000  lui      $t1, 0
003b5c: 013c4821  addu     $t1, $t1, $gp
003b60: 8d298700  lw       $t1, -0x7900($t1)
003b64: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
003b68: 8628002e  lh       $t0, 0x2e($s1)
