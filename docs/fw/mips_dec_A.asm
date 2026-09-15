002f30: afbf0000  sw       $ra, ($sp)
002f34: 03a04025  move     $t0, $sp
002f38: 27bdffe0  addiu    $sp, $sp, -0x20
002f3c: afa80004  sw       $t0, 4($sp)
002f40: afb40008  sw       $s4, 8($sp)
002f44: afb3000c  sw       $s3, 0xc($sp)
002f48: afb20010  sw       $s2, 0x10($sp)
002f4c: 3c080000  lui      $t0, 0
002f50: afb10014  sw       $s1, 0x14($sp)
002f54: 011c4021  addu     $t0, $t0, $gp
002f58: afb00018  sw       $s0, 0x18($sp)
002f5c: 8d088700  lw       $t0, -0x7900($t0)
002f60: 95140088  lhu      $s4, 0x88($t0)   ; T[0x40]
002f64: 94a80000  lhu      $t0, ($a1)
002f68: 00888021  addu     $s0, $a0, $t0
002f6c: 94a80002  lhu      $t0, 2($a1)
002f70: 02884018  .word    0x02884018
002f74: 00009025  move     $s2, $zero
002f78: 00c08825  move     $s1, $a2
002f7c: 10000052  b        0x30c8
002f80: 02089821  addu     $s3, $s0, $t0
002f84: 24080014  addiu    $t0, $zero, 0x14
002f88: 16280021  bne      $s1, $t0, 0x3010
002f8c: 24040001  addiu    $a0, $zero, 1
002f90: 3c010000  lui      $at, 0
002f94: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
002f98: 003e0821  addu     $at, $at, $fp
002f9c: 0020f809  jalr     $at
002fa0: 00000000  nop      
002fa4: 304800ff  andi     $t0, $v0, 0xff
002fa8: 11000010  beqz     $t0, 0x2fec
002fac: 3c080000  lui      $t0, 0
002fb0: 3c010000  lui      $at, 0
002fb4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
002fb8: 011c4021  addu     $t0, $t0, $gp
002fbc: 003e0821  addu     $at, $at, $fp
002fc0: 0020f809  jalr     $at
002fc4: 910499cb  lbu      $a0, -0x6635($t0)
002fc8: 3c080000  lui      $t0, 0
002fcc: 011c4021  addu     $t0, $t0, $gp
002fd0: 810899cb  lb       $t0, -0x6635($t0)
002fd4: 3c010000  lui      $at, 0
002fd8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
002fdc: 2508ffff  addiu    $t0, $t0, -1
002fe0: 003e0821  addu     $at, $at, $fp
002fe4: 0020f809  jalr     $at
002fe8: 310400ff  andi     $a0, $t0, 0xff
002fec: 3c010000  lui      $at, 0
002ff0: 3c080000  lui      $t0, 0
002ff4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
002ff8: 011c4021  addu     $t0, $t0, $gp
002ffc: 003e0821  addu     $at, $at, $fp
003000: 0020f809  jalr     $at
003004: 910499cb  lbu      $a0, -0x6635($t0)
003008: 1000002d  b        0x30c0
00300c: a6020000  sh       $v0, ($s0)
003010: 24080015  addiu    $t0, $zero, 0x15
003014: 1628001d  bne      $s1, $t0, 0x308c
003018: 24040001  addiu    $a0, $zero, 1
00301c: 3c010000  lui      $at, 0
003020: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003024: 003e0821  addu     $at, $at, $fp
003028: 0020f809  jalr     $at
00302c: 00000000  nop      
003030: 304800ff  andi     $t0, $v0, 0xff
003034: 11000008  beqz     $t0, 0x3058
003038: 24040010  addiu    $a0, $zero, 0x10
00303c: 3c010000  lui      $at, 0
003040: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003044: 003e0821  addu     $at, $at, $fp
003048: 0020f809  jalr     $at
00304c: 00000000  nop      
003050: 1000001b  b        0x30c0
003054: a6020002  sh       $v0, 2($s0)
003058: 3c010000  lui      $at, 0
00305c: 24219160  addiu    $at, $at, -0x6ea0   ; -> 0x1150
003060: 003e0821  addu     $at, $at, $fp
003064: 0020f809  jalr     $at
003068: 00000000  nop      
00306c: 28480015  slti     $t0, $v0, 0x15
003070: 55000004  bnel     $t0, $zero, 0x3084
003074: 00004025  move     $t0, $zero
003078: 10000002  b        0x3084
00307c: 96480002  lhu      $t0, 2($s2)
003080: 00004025  move     $t0, $zero
003084: 1000000e  b        0x30c0
003088: a6080002  sh       $t0, 2($s0)
00308c: 24080017  addiu    $t0, $zero, 0x17
003090: 1628000b  bne      $s1, $t0, 0x30c0
003094: 3c080000  lui      $t0, 0
003098: 011c4021  addu     $t0, $t0, $gp
00309c: 810899cb  lb       $t0, -0x6635($t0)
0030a0: 3c010000  lui      $at, 0
0030a4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0030a8: 2508ffff  addiu    $t0, $t0, -1
0030ac: 003e0821  addu     $at, $at, $fp
0030b0: 0020f809  jalr     $at
0030b4: 310400ff  andi     $a0, $t0, 0xff
0030b8: 00024040  sll      $t0, $v0, 1
0030bc: a6080004  sh       $t0, 4($s0)
0030c0: 02009025  move     $s2, $s0
0030c4: 02148021  addu     $s0, $s0, $s4
0030c8: 0213402b  sltu     $t0, $s0, $s3
0030cc: 5500ffae  bnel     $t0, $zero, 0x2f88
0030d0: 24080014  addiu    $t0, $zero, 0x14
0030d4: 1000005e  b        0x3250
0030d8: 00000000  nop      
0030dc: afbf0000  sw       $ra, ($sp)
0030e0: 03a04025  move     $t0, $sp
0030e4: 27bdffe0  addiu    $sp, $sp, -0x20
0030e8: afa80004  sw       $t0, 4($sp)
0030ec: afb40008  sw       $s4, 8($sp)
0030f0: afb3000c  sw       $s3, 0xc($sp)
0030f4: afb20010  sw       $s2, 0x10($sp)
0030f8: 3c080000  lui      $t0, 0
0030fc: afb10014  sw       $s1, 0x14($sp)
003100: 011c4021  addu     $t0, $t0, $gp
003104: afb00018  sw       $s0, 0x18($sp)
003108: 8d088700  lw       $t0, -0x7900($t0)
00310c: 95140088  lhu      $s4, 0x88($t0)   ; T[0x40]
003110: 94a80000  lhu      $t0, ($a1)
003114: 00888021  addu     $s0, $a0, $t0
003118: 94a80002  lhu      $t0, 2($a1)
00311c: 02884018  .word    0x02884018
003120: 00c09025  move     $s2, $a2
003124: 00008825  move     $s1, $zero
003128: 10000046  b        0x3244
00312c: 02089821  addu     $s3, $s0, $t0
003130: 24080014  addiu    $t0, $zero, 0x14
003134: 16480029  bne      $s2, $t0, 0x31dc
003138: 24040001  addiu    $a0, $zero, 1
00313c: 3c010000  lui      $at, 0
003140: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003144: 003e0821  addu     $at, $at, $fp
003148: 0020f809  jalr     $at
00314c: 00000000  nop      
003150: 304800ff  andi     $t0, $v0, 0xff
003154: 11000014  beqz     $t0, 0x31a8
003158: 3c080000  lui      $t0, 0
00315c: 3c010000  lui      $at, 0
003160: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003164: 011c4021  addu     $t0, $t0, $gp
003168: 003e0821  addu     $at, $at, $fp
00316c: 0020f809  jalr     $at
003170: 910499cb  lbu      $a0, -0x6635($t0)
003174: 3c080000  lui      $t0, 0
003178: a6020002  sh       $v0, 2($s0)
00317c: 011c4021  addu     $t0, $t0, $gp
003180: 810899cb  lb       $t0, -0x6635($t0)
003184: 3c010000  lui      $at, 0
003188: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
00318c: 2508ffff  addiu    $t0, $t0, -1
003190: 003e0821  addu     $at, $at, $fp
003194: 0020f809  jalr     $at
003198: 310400ff  andi     $a0, $t0, 0xff
00319c: 00024040  sll      $t0, $v0, 1
0031a0: 10000005  b        0x31b8
0031a4: a6080004  sh       $t0, 4($s0)
0031a8: 96280002  lhu      $t0, 2($s1)
0031ac: a6080002  sh       $t0, 2($s0)
0031b0: 96280004  lhu      $t0, 4($s1)
0031b4: a6080004  sh       $t0, 4($s0)
0031b8: 3c010000  lui      $at, 0
0031bc: 3c080000  lui      $t0, 0
0031c0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0031c4: 011c4021  addu     $t0, $t0, $gp
0031c8: 003e0821  addu     $at, $at, $fp
0031cc: 0020f809  jalr     $at
0031d0: 910499cb  lbu      $a0, -0x6635($t0)
0031d4: 10000019  b        0x323c
0031d8: a6020000  sh       $v0, ($s0)
0031dc: 24080017  addiu    $t0, $zero, 0x17
0031e0: 16480016  bne      $s2, $t0, 0x323c
0031e4: 3c080000  lui      $t0, 0
0031e8: 011c4021  addu     $t0, $t0, $gp
0031ec: 810899cb  lb       $t0, -0x6635($t0)
0031f0: 3c010000  lui      $at, 0
0031f4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0031f8: 2508ffff  addiu    $t0, $t0, -1
0031fc: 003e0821  addu     $at, $at, $fp
003200: 0020f809  jalr     $at
003204: 310400ff  andi     $a0, $t0, 0xff
003208: 00024040  sll      $t0, $v0, 1
00320c: a6080006  sh       $t0, 6($s0)
003210: 3c080000  lui      $t0, 0
003214: 011c4021  addu     $t0, $t0, $gp
003218: 810899cb  lb       $t0, -0x6635($t0)
00321c: 3c010000  lui      $at, 0
003220: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
003224: 2508ffff  addiu    $t0, $t0, -1
003228: 003e0821  addu     $at, $at, $fp
00322c: 0020f809  jalr     $at
003230: 310400ff  andi     $a0, $t0, 0xff
003234: 00024040  sll      $t0, $v0, 1
003238: a6080008  sh       $t0, 8($s0)
00323c: 02008825  move     $s1, $s0
003240: 02148021  addu     $s0, $s0, $s4
003244: 0213402b  sltu     $t0, $s0, $s3
003248: 5500ffba  bnel     $t0, $zero, 0x3134
00324c: 24080014  addiu    $t0, $zero, 0x14
