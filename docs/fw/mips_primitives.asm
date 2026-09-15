001444: 00001025  move     $v0, $zero
001448: 24080001  addiu    $t0, $zero, 1
00144c: 50880009  beql     $a0, $t0, 0x1474
001450: 24020001  addiu    $v0, $zero, 1
001454: 2484ffff  addiu    $a0, $a0, -1
001458: 10000004  b        0x146c
00145c: 3084ffff  andi     $a0, $a0, 0xffff
001460: 00042042  srl      $a0, $a0, 1
001464: 24420001  addiu    $v0, $v0, 1
001468: 304200ff  andi     $v0, $v0, 0xff
00146c: 5c80fffd  bgtzl    $a0, 0x1464
001470: 00042042  srl      $a0, $a0, 1
001474: 03e00008  jr       $ra
001478: 00000000  nop      
00147c: afbf0000  sw       $ra, ($sp)
001480: 03a04025  move     $t0, $sp
001484: 27bdfff0  addiu    $sp, $sp, -0x10
001488: afa80004  sw       $t0, 4($sp)
00148c: afb00008  sw       $s0, 8($sp)
001490: 3c080000  lui      $t0, 0
001494: 00a08025  move     $s0, $a1
001498: 011c4021  addu     $t0, $t0, $gp
00149c: 8d0599cc  lw       $a1, -0x6634($t0)
0014a0: 3c010000  lui      $at, 0
0014a4: 24211ac8  addiu    $at, $at, 0x1ac8   ; -> 0x9ab8
0014a8: 003e0821  addu     $at, $at, $fp
0014ac: 0020f809  jalr     $at
0014b0: 02003025  move     $a2, $s0
0014b4: 3c080000  lui      $t0, 0
0014b8: 011c4021  addu     $t0, $t0, $gp
0014bc: 8d0999cc  lw       $t1, -0x6634($t0)
0014c0: 01304821  addu     $t1, $t1, $s0
0014c4: ad0999cc  sw       $t1, -0x6634($t0)
0014c8: 8fbf0010  lw       $ra, 0x10($sp)
0014cc: 8fb00008  lw       $s0, 8($sp)
0014d0: 03e00008  jr       $ra
0014d4: 27bd0010  addiu    $sp, $sp, 0x10
0014d8: afbf0000  sw       $ra, ($sp)
0014dc: 03a04025  move     $t0, $sp
0014e0: 27bdfff8  addiu    $sp, $sp, -8
0014e4: afa80004  sw       $t0, 4($sp)
0014e8: 00a04025  move     $t0, $a1
0014ec: 95090002  lhu      $t1, 2($t0)
0014f0: 01262818  .word    0x01262818
0014f4: 54e00001  bnel     $a3, $zero, 0x14fc
0014f8: 00a62821  addu     $a1, $a1, $a2
0014fc: 95080000  lhu      $t0, ($t0)
001500: 3c010000  lui      $at, 0
001504: 00882021  addu     $a0, $a0, $t0
001508: 100000b3  b        0x17d8
00150c: 2421948c  addiu    $at, $at, -0x6b74   ; -> copy_raw
001510: 3c080000  lui      $t0, 0
001514: 011c4021  addu     $t0, $t0, $gp
001518: 8d0899cc  lw       $t0, -0x6634($t0)
00151c: ac880000  sw       $t0, ($a0)
001520: 3c080000  lui      $t0, 0
001524: 011c4021  addu     $t0, $t0, $gp
001528: 8d0999cc  lw       $t1, -0x6634($t0)
00152c: 01254821  addu     $t1, $t1, $a1
001530: 03e00008  jr       $ra
001534: ad0999cc  sw       $t1, -0x6634($t0)
001538: afbf0000  sw       $ra, ($sp)
00153c: 03a04025  move     $t0, $sp
001540: 27bdff20  addiu    $sp, $sp, -0xe0
001544: afa80004  sw       $t0, 4($sp)
001548: afb500c8  sw       $s5, 0xc8($sp)
00154c: afb400cc  sw       $s4, 0xcc($sp)
001550: afb300d0  sw       $s3, 0xd0($sp)
001554: afb200d4  sw       $s2, 0xd4($sp)
001558: 3c010000  lui      $at, 0
00155c: afb100d8  sw       $s1, 0xd8($sp)
001560: 3c080000  lui      $t0, 0
001564: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
001568: afb000dc  sw       $s0, 0xdc($sp)
00156c: 011c4021  addu     $t0, $t0, $gp
001570: 003e0821  addu     $at, $at, $fp
001574: 00808025  move     $s0, $a0
001578: 0020f809  jalr     $at
00157c: 910499cb  lbu      $a0, -0x6635($t0)
001580: 3c080000  lui      $t0, 0
001584: 011c4021  addu     $t0, $t0, $gp
001588: 910499cb  lbu      $a0, -0x6635($t0)
00158c: 3c010000  lui      $at, 0
001590: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
001594: 003e0821  addu     $at, $at, $fp
001598: 0020f809  jalr     $at
00159c: 3052ffff  andi     $s2, $v0, 0xffff
0015a0: 16400004  bnez     $s2, 0x15b4
0015a4: 3051ffff  andi     $s1, $v0, 0xffff
0015a8: 16200002  bnez     $s1, 0x15b4
0015ac: 00000000  nop      
0015b0: 10000077  b        0x1790
0015b4: 00009825  move     $s3, $zero
0015b8: 1000001a  b        0x1624
0015bc: 27b40008  addiu    $s4, $sp, 8
0015c0: 3c010000  lui      $at, 0
0015c4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0015c8: 003e0821  addu     $at, $at, $fp
0015cc: 0020f809  jalr     $at
0015d0: 24040005  addiu    $a0, $zero, 5
0015d4: a2820000  sb       $v0, ($s4)
0015d8: 1000000b  b        0x1608
0015dc: 0000a825  move     $s5, $zero
0015e0: 3c010000  lui      $at, 0
0015e4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0015e8: 003e0821  addu     $at, $at, $fp
0015ec: 0020f809  jalr     $at
0015f0: 24040007  addiu    $a0, $zero, 7
0015f4: 26880001  addiu    $t0, $s4, 1
0015f8: 01154021  addu     $t0, $t0, $s5
0015fc: 26b50001  addiu    $s5, $s5, 1
001600: a1020000  sb       $v0, ($t0)
001604: 32b500ff  andi     $s5, $s5, 0xff
001608: 92880000  lbu      $t0, ($s4)
00160c: 02a8402b  sltu     $t0, $s5, $t0
001610: 5500fff4  bnel     $t0, $zero, 0x15e4
001614: 3c010000  lui      $at, 0
001618: 26730001  addiu    $s3, $s3, 1
00161c: 26940020  addiu    $s4, $s4, 0x20
001620: 327300ff  andi     $s3, $s3, 0xff
