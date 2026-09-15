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
001624: 2a680006  slti     $t0, $s3, 6
001628: 5500ffe6  bnel     $t0, $zero, 0x15c4
00162c: 3c010000  lui      $at, 0
001630: 02118821  addu     $s1, $s0, $s1
001634: 10000053  b        0x1784
001638: 02128021  addu     $s0, $s0, $s2
00163c: 3c010000  lui      $at, 0
001640: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
001644: 003e0821  addu     $at, $at, $fp
001648: 0020f809  jalr     $at
00164c: 24040002  addiu    $a0, $zero, 2
001650: 304800ff  andi     $t0, $v0, 0xff
001654: 24090002  addiu    $t1, $zero, 2
001658: 11090007  beq      $t0, $t1, 0x1678
00165c: 00000000  nop      
001660: 5100001b  beql     $t0, $zero, 0x16d0
001664: 3c010000  lui      $at, 0
001668: 24090001  addiu    $t1, $zero, 1
00166c: 5109000e  beql     $t0, $t1, 0x16a8
001670: 3c010000  lui      $at, 0
001674: 10000022  b        0x1700
001678: 24040003  addiu    $a0, $zero, 3
00167c: 3c010000  lui      $at, 0
001680: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
001684: 003e0821  addu     $at, $at, $fp
001688: 0020f809  jalr     $at
00168c: 00000000  nop      
001690: 3c080000  lui      $t0, 0
001694: 304900ff  andi     $t1, $v0, 0xff
001698: 011c4021  addu     $t0, $t0, $gp
00169c: 10000014  b        0x16f0
0016a0: 25088716  addiu    $t0, $t0, -0x78ea
0016a4: 3c010000  lui      $at, 0
0016a8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0016ac: 003e0821  addu     $at, $at, $fp
0016b0: 0020f809  jalr     $at
0016b4: 24040002  addiu    $a0, $zero, 2
0016b8: 3c080000  lui      $t0, 0
0016bc: 304900ff  andi     $t1, $v0, 0xff
0016c0: 011c4021  addu     $t0, $t0, $gp
0016c4: 1000000a  b        0x16f0
0016c8: 25088712  addiu    $t0, $t0, -0x78ee
0016cc: 3c010000  lui      $at, 0
0016d0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0016d4: 003e0821  addu     $at, $at, $fp
0016d8: 0020f809  jalr     $at
0016dc: 24040001  addiu    $a0, $zero, 1
0016e0: 3c080000  lui      $t0, 0
0016e4: 011c4021  addu     $t0, $t0, $gp
0016e8: 304900ff  andi     $t1, $v0, 0xff
0016ec: 25088710  addiu    $t0, $t0, -0x78f0
0016f0: 01094021  addu     $t0, $t0, $t1
0016f4: 91080000  lbu      $t0, ($t0)
0016f8: 10000021  b        0x1780
0016fc: a2080000  sb       $t0, ($s0)
001700: 3c010000  lui      $at, 0
001704: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
001708: 003e0821  addu     $at, $at, $fp
00170c: 0020f809  jalr     $at
001710: 24040007  addiu    $a0, $zero, 7
001714: 305200ff  andi     $s2, $v0, 0xff
