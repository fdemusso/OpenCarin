003d04: afbf0000  sw       $ra, ($sp)
003d08: 03a04025  move     $t0, $sp
003d0c: 27bdffd8  addiu    $sp, $sp, -0x28
003d10: afa80004  sw       $t0, 4($sp)
003d14: afb60008  sw       $s6, 8($sp)
003d18: afb5000c  sw       $s5, 0xc($sp)
003d1c: afb40010  sw       $s4, 0x10($sp)
003d20: afb30014  sw       $s3, 0x14($sp)
003d24: afb20018  sw       $s2, 0x18($sp)
003d28: 3c080000  lui      $t0, 0
003d2c: afb1001c  sw       $s1, 0x1c($sp)
003d30: 011c4021  addu     $t0, $t0, $gp
003d34: afb00020  sw       $s0, 0x20($sp)
003d38: 8d088700  lw       $t0, -0x7900($t0)
003d3c: 9505001e  lhu      $a1, 0x1e($t0)   ; T[0x0b]
003d40: 3c010000  lui      $at, 0
003d44: 2421948c  addiu    $at, $at, -0x6b74   ; -> copy_raw
003d48: 003e0821  addu     $at, $at, $fp
003d4c: 0020f809  jalr     $at
003d50: 0080b025  move     $s6, $a0
003d54: 3c080000  lui      $t0, 0
003d58: 011c4021  addu     $t0, $t0, $gp
003d5c: 8d088700  lw       $t0, -0x7900($t0)
003d60: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003d64: 3c010000  lui      $at, 0
003d68: 24219454  addiu    $at, $at, -0x6bac   ; -> bits_needed
003d6c: 02c84021  addu     $t0, $s6, $t0
003d70: 003e0821  addu     $at, $at, $fp
003d74: 0020f809  jalr     $at
003d78: 9504000a  lhu      $a0, 0xa($t0)
003d7c: 3c080000  lui      $t0, 0
003d80: 011c4021  addu     $t0, $t0, $gp
003d84: ad029a08  sw       $v0, -0x65f8($t0)
003d88: 3c080000  lui      $t0, 0
003d8c: 011c4021  addu     $t0, $t0, $gp
003d90: 8d088700  lw       $t0, -0x7900($t0)
003d94: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003d98: 02c84021  addu     $t0, $s6, $t0
003d9c: 85080012  lh       $t0, 0x12($t0)   ; T[0x05]
003da0: 3c010000  lui      $at, 0
003da4: 24219454  addiu    $at, $at, -0x6bac   ; -> bits_needed
003da8: 25080001  addiu    $t0, $t0, 1
003dac: 003e0821  addu     $at, $at, $fp
003db0: 0020f809  jalr     $at
003db4: 3104ffff  andi     $a0, $t0, 0xffff
003db8: 3c080000  lui      $t0, 0
003dbc: 011c4021  addu     $t0, $t0, $gp
003dc0: ad029a10  sw       $v0, -0x65f0($t0)
003dc4: 3c080000  lui      $t0, 0
003dc8: 011c4021  addu     $t0, $t0, $gp
003dcc: 8d088700  lw       $t0, -0x7900($t0)
003dd0: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003dd4: 02c84021  addu     $t0, $s6, $t0
003dd8: 8508001e  lh       $t0, 0x1e($t0)   ; T[0x0b]
003ddc: 3c010000  lui      $at, 0
003de0: 24219454  addiu    $at, $at, -0x6bac   ; -> bits_needed
003de4: 25080001  addiu    $t0, $t0, 1
003de8: 003e0821  addu     $at, $at, $fp
003dec: 0020f809  jalr     $at
003df0: 3104ffff  andi     $a0, $t0, 0xffff
003df4: 3c080000  lui      $t0, 0
003df8: 011c4021  addu     $t0, $t0, $gp
003dfc: ad029a0c  sw       $v0, -0x65f4($t0)
003e00: 3c080000  lui      $t0, 0
003e04: 011c4021  addu     $t0, $t0, $gp
003e08: 8d088700  lw       $t0, -0x7900($t0)
003e0c: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003e10: 02c84021  addu     $t0, $s6, $t0
003e14: 8508002a  lh       $t0, 0x2a($t0)   ; T[0x11]
003e18: 3c010000  lui      $at, 0
003e1c: 24219454  addiu    $at, $at, -0x6bac   ; -> bits_needed
003e20: 25080001  addiu    $t0, $t0, 1
003e24: 003e0821  addu     $at, $at, $fp
003e28: 0020f809  jalr     $at
003e2c: 3104ffff  andi     $a0, $t0, 0xffff
003e30: 3c080000  lui      $t0, 0
003e34: 011c4021  addu     $t0, $t0, $gp
003e38: ad029a18  sw       $v0, -0x65e8($t0)
003e3c: 3c080000  lui      $t0, 0
003e40: 011c4021  addu     $t0, $t0, $gp
003e44: 8d088700  lw       $t0, -0x7900($t0)
003e48: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003e4c: 02c84021  addu     $t0, $s6, $t0
003e50: 8508002e  lh       $t0, 0x2e($t0)   ; T[0x13]
003e54: 3c010000  lui      $at, 0
003e58: 24219454  addiu    $at, $at, -0x6bac   ; -> bits_needed
003e5c: 25080001  addiu    $t0, $t0, 1
003e60: 003e0821  addu     $at, $at, $fp
003e64: 0020f809  jalr     $at
003e68: 3104ffff  andi     $a0, $t0, 0xffff
003e6c: 3c080000  lui      $t0, 0
003e70: 011c4021  addu     $t0, $t0, $gp
003e74: ad029a14  sw       $v0, -0x65ec($t0)
003e78: 3c080000  lui      $t0, 0
003e7c: 011c4021  addu     $t0, $t0, $gp
003e80: 8d088700  lw       $t0, -0x7900($t0)
003e84: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003e88: 02c84021  addu     $t0, $s6, $t0
003e8c: 85080032  lh       $t0, 0x32($t0)   ; T[0x15]
003e90: 3c010000  lui      $at, 0
003e94: 24219454  addiu    $at, $at, -0x6bac   ; -> bits_needed
003e98: 25080001  addiu    $t0, $t0, 1
003e9c: 003e0821  addu     $at, $at, $fp
003ea0: 0020f809  jalr     $at
003ea4: 3104ffff  andi     $a0, $t0, 0xffff
003ea8: 3c080000  lui      $t0, 0
003eac: 011c4021  addu     $t0, $t0, $gp
003eb0: ad029a1c  sw       $v0, -0x65e4($t0)
003eb4: 3c010000  lui      $at, 0
003eb8: 3c080000  lui      $t0, 0
003ebc: 2421948c  addiu    $at, $at, -0x6b74   ; -> copy_raw
003ec0: 011c4021  addu     $t0, $t0, $gp
003ec4: 003e0821  addu     $at, $at, $fp
003ec8: 25049a04  addiu    $a0, $t0, -0x65fc
003ecc: 0020f809  jalr     $at
003ed0: 24050002  addiu    $a1, $zero, 2
003ed4: 3c080000  lui      $t0, 0
003ed8: 011c4021  addu     $t0, $t0, $gp
003edc: 8d088700  lw       $t0, -0x7900($t0)
003ee0: 95090012  lhu      $t1, 0x12($t0)   ; T[0x05]
003ee4: 9506002c  lhu      $a2, 0x2c($t0)   ; T[0x12]
003ee8: 3c010000  lui      $at, 0
003eec: 02c94821  addu     $t1, $s6, $t1
003ef0: 242194e8  addiu    $at, $at, -0x6b18   ; -> 0x14d8
003ef4: 02c02025  move     $a0, $s6
003ef8: 2525000c  addiu    $a1, $t1, 0xc
003efc: 003e0821  addu     $at, $at, $fp
003f00: 0020f809  jalr     $at
003f04: 24070001  addiu    $a3, $zero, 1
003f08: 3c080000  lui      $t0, 0
003f0c: 011c4021  addu     $t0, $t0, $gp
003f10: 8d088700  lw       $t0, -0x7900($t0)
003f14: 95090012  lhu      $t1, 0x12($t0)   ; T[0x05]
003f18: 95060026  lhu      $a2, 0x26($t0)   ; T[0x0f]
003f1c: 3c010000  lui      $at, 0
003f20: 02c94821  addu     $t1, $s6, $t1
003f24: 242194e8  addiu    $at, $at, -0x6b18   ; -> 0x14d8
003f28: 02c02025  move     $a0, $s6
003f2c: 25250024  addiu    $a1, $t1, 0x24
003f30: 003e0821  addu     $at, $at, $fp
003f34: 0020f809  jalr     $at
003f38: 00003825  move     $a3, $zero
003f3c: 3c080000  lui      $t0, 0
003f40: 011c4021  addu     $t0, $t0, $gp
003f44: 8d088700  lw       $t0, -0x7900($t0)
003f48: 95090012  lhu      $t1, 0x12($t0)   ; T[0x05]
003f4c: 95060030  lhu      $a2, 0x30($t0)   ; T[0x14]
003f50: 3c010000  lui      $at, 0
003f54: 02c94821  addu     $t1, $s6, $t1
003f58: 242194e8  addiu    $at, $at, -0x6b18   ; -> 0x14d8
003f5c: 02c02025  move     $a0, $s6
003f60: 25250028  addiu    $a1, $t1, 0x28
003f64: 003e0821  addu     $at, $at, $fp
003f68: 0020f809  jalr     $at
003f6c: 00003825  move     $a3, $zero
003f70: 3c080000  lui      $t0, 0
003f74: 011c4021  addu     $t0, $t0, $gp
003f78: 8d098700  lw       $t1, -0x7900($t0)
003f7c: 95280012  lhu      $t0, 0x12($t1)   ; T[0x05]
003f80: 02c84021  addu     $t0, $s6, $t0
003f84: 950a0032  lhu      $t2, 0x32($t0)   ; T[0x15]
003f88: 11400008  beqz     $t2, 0x3fac
003f8c: 02c02025  move     $a0, $s6
003f90: 95260032  lhu      $a2, 0x32($t1)
003f94: 3c010000  lui      $at, 0
003f98: 242194e8  addiu    $at, $at, -0x6b18   ; -> 0x14d8
003f9c: 25050030  addiu    $a1, $t0, 0x30
003fa0: 003e0821  addu     $at, $at, $fp
003fa4: 0020f809  jalr     $at
003fa8: 00003825  move     $a3, $zero
003fac: 3c010000  lui      $at, 0
003fb0: 242197c4  addiu    $at, $at, -0x683c   ; -> bits_init
003fb4: 003e0821  addu     $at, $at, $fp
003fb8: 0020f809  jalr     $at
003fbc: 00000000  nop      
003fc0: 3c080000  lui      $t0, 0
003fc4: 011c4021  addu     $t0, $t0, $gp
003fc8: 8d088700  lw       $t0, -0x7900($t0)
003fcc: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003fd0: 3c010000  lui      $at, 0
003fd4: 2421af40  addiu    $at, $at, -0x50c0   ; -> 0x2f30
003fd8: 02c02025  move     $a0, $s6
003fdc: 02c82821  addu     $a1, $s6, $t0
003fe0: 003e0821  addu     $at, $at, $fp
003fe4: 0020f809  jalr     $at
003fe8: 24060014  addiu    $a2, $zero, 0x14
003fec: 3c080000  lui      $t0, 0
003ff0: 011c4021  addu     $t0, $t0, $gp
003ff4: 8d088700  lw       $t0, -0x7900($t0)
003ff8: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
003ffc: 3c010000  lui      $at, 0
004000: 02c84021  addu     $t0, $s6, $t0
004004: 2421b0ec  addiu    $at, $at, -0x4f14   ; -> 0x30dc
004008: 02c02025  move     $a0, $s6
00400c: 25050004  addiu    $a1, $t0, 4
004010: 003e0821  addu     $at, $at, $fp
004014: 0020f809  jalr     $at
004018: 24060014  addiu    $a2, $zero, 0x14
00401c: 3c080000  lui      $t0, 0
004020: 011c4021  addu     $t0, $t0, $gp
004024: 8d088700  lw       $t0, -0x7900($t0)
004028: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
00402c: 3c010000  lui      $at, 0
004030: 02c84021  addu     $t0, $s6, $t0
004034: 2421b280  addiu    $at, $at, -0x4d80   ; -> 0x3270
004038: 02c02025  move     $a0, $s6
00403c: 25050008  addiu    $a1, $t0, 8
004040: 003e0821  addu     $at, $at, $fp
004044: 0020f809  jalr     $at
004048: 24060014  addiu    $a2, $zero, 0x14
00404c: 3c080000  lui      $t0, 0
004050: 011c4021  addu     $t0, $t0, $gp
004054: 8d088700  lw       $t0, -0x7900($t0)
004058: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
00405c: 3c010000  lui      $at, 0
004060: 02c84021  addu     $t0, $s6, $t0
004064: 2421b49c  addiu    $at, $at, -0x4b64   ; -> dec_B
004068: 02c02025  move     $a0, $s6
00406c: 25050010  addiu    $a1, $t0, 0x10
004070: 003e0821  addu     $at, $at, $fp
004074: 0020f809  jalr     $at
004078: 24060014  addiu    $a2, $zero, 0x14
00407c: 3c080000  lui      $t0, 0
004080: 011c4021  addu     $t0, $t0, $gp
004084: 8d088700  lw       $t0, -0x7900($t0)
004088: 3c0a0000  lui      $t2, 0
00408c: 95090012  lhu      $t1, 0x12($t0)   ; T[0x05]
004090: 015c5021  addu     $t2, $t2, $gp
004094: 8d559a10  lw       $s5, -0x65f0($t2)
004098: 02c94821  addu     $t1, $s6, $t1
00409c: 25290014  addiu    $t1, $t1, 0x14
0040a0: 952a0000  lhu      $t2, ($t1)
0040a4: 95080028  lhu      $t0, 0x28($t0)
0040a8: 95290002  lhu      $t1, 2($t1)
0040ac: 02c0a025  move     $s4, $s6
0040b0: 01284018  .word    0x01284018
0040b4: 028a9021  addu     $s2, $s4, $t2
0040b8: 00008825  move     $s1, $zero
0040bc: 02489821  addu     $s3, $s2, $t0
0040c0: 10000099  b        0x4328
0040c4: 02408025  move     $s0, $s2
0040c8: 3c010000  lui      $at, 0
0040cc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0040d0: 003e0821  addu     $at, $at, $fp
0040d4: 0020f809  jalr     $at
0040d8: 24040001  addiu    $a0, $zero, 1
0040dc: 304800ff  andi     $t0, $v0, 0xff
0040e0: 1100000e  beqz     $t0, 0x411c
0040e4: 24040008  addiu    $a0, $zero, 8
0040e8: 3c010000  lui      $at, 0
0040ec: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0040f0: 003e0821  addu     $at, $at, $fp
0040f4: 0020f809  jalr     $at
0040f8: 00000000  nop      
0040fc: 3c010000  lui      $at, 0
004100: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004104: a2020006  sb       $v0, 6($s0)
004108: 003e0821  addu     $at, $at, $fp
00410c: 0020f809  jalr     $at
004110: 24040003  addiu    $a0, $zero, 3
004114: 10000005  b        0x412c
004118: a2020007  sb       $v0, 7($s0)
00411c: 92280006  lbu      $t0, 6($s1)
004120: a2080006  sb       $t0, 6($s0)
004124: 92280007  lbu      $t0, 7($s1)
004128: a2080007  sb       $t0, 7($s0)
00412c: 1612000e  bne      $s0, $s2, 0x4168
004130: 24040010  addiu    $a0, $zero, 0x10
004134: 3c010000  lui      $at, 0
004138: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
00413c: 003e0821  addu     $at, $at, $fp
004140: 0020f809  jalr     $at
004144: 00000000  nop      
004148: 3c010000  lui      $at, 0
00414c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004150: a6020000  sh       $v0, ($s0)
004154: 003e0821  addu     $at, $at, $fp
004158: 0020f809  jalr     $at
00415c: 24040010  addiu    $a0, $zero, 0x10
004160: 10000059  b        0x42c8
004164: a6020002  sh       $v0, 2($s0)
004168: 3c010000  lui      $at, 0
00416c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004170: 003e0821  addu     $at, $at, $fp
004174: 0020f809  jalr     $at
004178: 24040001  addiu    $a0, $zero, 1
00417c: 304800ff  andi     $t0, $v0, 0xff
004180: 1100001b  beqz     $t0, 0x41f0
004184: 24040001  addiu    $a0, $zero, 1
004188: 3c010000  lui      $at, 0
00418c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004190: 003e0821  addu     $at, $at, $fp
004194: 0020f809  jalr     $at
004198: 00000000  nop      
00419c: 304800ff  andi     $t0, $v0, 0xff
0041a0: 11000008  beqz     $t0, 0x41c4
0041a4: 24040010  addiu    $a0, $zero, 0x10
0041a8: 3c010000  lui      $at, 0
0041ac: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0041b0: 003e0821  addu     $at, $at, $fp
0041b4: 0020f809  jalr     $at
0041b8: 00000000  nop      
0041bc: 10000016  b        0x4218
0041c0: a6020000  sh       $v0, ($s0)
0041c4: 3c010000  lui      $at, 0
0041c8: 3c080000  lui      $t0, 0
0041cc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0041d0: 011c4021  addu     $t0, $t0, $gp
0041d4: 003e0821  addu     $at, $at, $fp
0041d8: 0020f809  jalr     $at
0041dc: 91049a05  lbu      $a0, -0x65fb($t0)
0041e0: 96280000  lhu      $t0, ($s1)
0041e4: 01024023  subu     $t0, $t0, $v0
0041e8: 1000000b  b        0x4218
0041ec: a6080000  sh       $t0, ($s0)
0041f0: 3c010000  lui      $at, 0
0041f4: 3c080000  lui      $t0, 0
0041f8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0041fc: 011c4021  addu     $t0, $t0, $gp
004200: 003e0821  addu     $at, $at, $fp
004204: 0020f809  jalr     $at
004208: 91049a05  lbu      $a0, -0x65fb($t0)
00420c: 96280000  lhu      $t0, ($s1)
004210: 01024021  addu     $t0, $t0, $v0
004214: a6080000  sh       $t0, ($s0)
004218: 3c010000  lui      $at, 0
00421c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004220: 003e0821  addu     $at, $at, $fp
004224: 0020f809  jalr     $at
004228: 24040001  addiu    $a0, $zero, 1
00422c: 304800ff  andi     $t0, $v0, 0xff
004230: 1100001b  beqz     $t0, 0x42a0
004234: 24040001  addiu    $a0, $zero, 1
004238: 3c010000  lui      $at, 0
00423c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004240: 003e0821  addu     $at, $at, $fp
004244: 0020f809  jalr     $at
004248: 00000000  nop      
00424c: 304800ff  andi     $t0, $v0, 0xff
004250: 11000008  beqz     $t0, 0x4274
004254: 24040010  addiu    $a0, $zero, 0x10
004258: 3c010000  lui      $at, 0
00425c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004260: 003e0821  addu     $at, $at, $fp
004264: 0020f809  jalr     $at
004268: 00000000  nop      
00426c: 10000016  b        0x42c8
004270: a6020002  sh       $v0, 2($s0)
004274: 3c010000  lui      $at, 0
004278: 3c080000  lui      $t0, 0
00427c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004280: 011c4021  addu     $t0, $t0, $gp
004284: 003e0821  addu     $at, $at, $fp
004288: 0020f809  jalr     $at
00428c: 91049a05  lbu      $a0, -0x65fb($t0)
004290: 96280002  lhu      $t0, 2($s1)
004294: 01024023  subu     $t0, $t0, $v0
004298: 1000000b  b        0x42c8
00429c: a6080002  sh       $t0, 2($s0)
0042a0: 3c010000  lui      $at, 0
0042a4: 3c080000  lui      $t0, 0
0042a8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0042ac: 011c4021  addu     $t0, $t0, $gp
0042b0: 003e0821  addu     $at, $at, $fp
0042b4: 0020f809  jalr     $at
0042b8: 91049a05  lbu      $a0, -0x65fb($t0)
0042bc: 96280002  lhu      $t0, 2($s1)
0042c0: 01024021  addu     $t0, $t0, $v0
0042c4: a6080002  sh       $t0, 2($s0)
0042c8: 3c010000  lui      $at, 0
0042cc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0042d0: 003e0821  addu     $at, $at, $fp
0042d4: 0020f809  jalr     $at
0042d8: 32a400ff  andi     $a0, $s5, 0xff
0042dc: 3c090000  lui      $t1, 0
0042e0: 013c4821  addu     $t1, $t1, $gp
0042e4: 8d298700  lw       $t1, -0x7900($t1)
0042e8: 3c080000  lui      $t0, 0
0042ec: 011c4021  addu     $t0, $t0, $gp
0042f0: 8d088700  lw       $t0, -0x7900($t0)
0042f4: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
0042f8: 85080018  lh       $t0, 0x18($t0)   ; T[0x08]
0042fc: 02894821  addu     $t1, $s4, $t1
004300: 95290010  lhu      $t1, 0x10($t1)   ; T[0x04]
004304: 00484019  .word    0x00484019
004308: 01284021  addu     $t0, $t1, $t0
00430c: a6080004  sh       $t0, 4($s0)
004310: 3c080000  lui      $t0, 0
004314: 011c4021  addu     $t0, $t0, $gp
004318: 8d088700  lw       $t0, -0x7900($t0)
00431c: 95080028  lhu      $t0, 0x28($t0)   ; T[0x10]
004320: 02008825  move     $s1, $s0
004324: 02088021  addu     $s0, $s0, $t0
004328: 0213402b  sltu     $t0, $s0, $s3
00432c: 5500ff67  bnel     $t0, $zero, 0x40cc
004330: 3c010000  lui      $at, 0
004334: 3c080000  lui      $t0, 0
004338: 011c4021  addu     $t0, $t0, $gp
00433c: 8d088700  lw       $t0, -0x7900($t0)
004340: 3c0a0000  lui      $t2, 0
004344: 95090012  lhu      $t1, 0x12($t0)   ; T[0x05]
004348: 015c5021  addu     $t2, $t2, $gp
00434c: 8d559a10  lw       $s5, -0x65f0($t2)
004350: 02c94821  addu     $t1, $s6, $t1
004354: 25290018  addiu    $t1, $t1, 0x18
004358: 952a0000  lhu      $t2, ($t1)
00435c: 95080014  lhu      $t0, 0x14($t0)
004360: 95290002  lhu      $t1, 2($t1)
004364: 02c0a025  move     $s4, $s6
004368: 01284018  .word    0x01284018
00436c: 028a9021  addu     $s2, $s4, $t2
004370: 00008825  move     $s1, $zero
004374: 02489821  addu     $s3, $s2, $t0
004378: 100000b7  b        0x4658
00437c: 02408025  move     $s0, $s2
004380: 3c010000  lui      $at, 0
004384: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004388: 003e0821  addu     $at, $at, $fp
00438c: 0020f809  jalr     $at
004390: 24040001  addiu    $a0, $zero, 1
004394: 304800ff  andi     $t0, $v0, 0xff
004398: 1100000e  beqz     $t0, 0x43d4
00439c: 24040008  addiu    $a0, $zero, 8
0043a0: 3c010000  lui      $at, 0
0043a4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0043a8: 003e0821  addu     $at, $at, $fp
0043ac: 0020f809  jalr     $at
0043b0: 00000000  nop      
0043b4: 3c010000  lui      $at, 0
0043b8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0043bc: a2020006  sb       $v0, 6($s0)
0043c0: 003e0821  addu     $at, $at, $fp
0043c4: 0020f809  jalr     $at
0043c8: 24040003  addiu    $a0, $zero, 3
0043cc: 10000005  b        0x43e4
0043d0: a2020007  sb       $v0, 7($s0)
0043d4: 92280006  lbu      $t0, 6($s1)
0043d8: a2080006  sb       $t0, 6($s0)
0043dc: 92280007  lbu      $t0, 7($s1)
0043e0: a2080007  sb       $t0, 7($s0)
0043e4: 1612000e  bne      $s0, $s2, 0x4420
0043e8: 00000000  nop      
0043ec: 3c010000  lui      $at, 0
0043f0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0043f4: 003e0821  addu     $at, $at, $fp
0043f8: 0020f809  jalr     $at
0043fc: 24040010  addiu    $a0, $zero, 0x10
004400: 3c010000  lui      $at, 0
004404: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004408: a6020000  sh       $v0, ($s0)
00440c: 003e0821  addu     $at, $at, $fp
004410: 0020f809  jalr     $at
004414: 24040010  addiu    $a0, $zero, 0x10
004418: 10000059  b        0x4580
00441c: a6020002  sh       $v0, 2($s0)
004420: 3c010000  lui      $at, 0
004424: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004428: 003e0821  addu     $at, $at, $fp
00442c: 0020f809  jalr     $at
004430: 24040001  addiu    $a0, $zero, 1
004434: 304800ff  andi     $t0, $v0, 0xff
004438: 1100001b  beqz     $t0, 0x44a8
00443c: 24040001  addiu    $a0, $zero, 1
004440: 3c010000  lui      $at, 0
004444: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004448: 003e0821  addu     $at, $at, $fp
00444c: 0020f809  jalr     $at
004450: 00000000  nop      
004454: 304800ff  andi     $t0, $v0, 0xff
004458: 11000008  beqz     $t0, 0x447c
00445c: 24040010  addiu    $a0, $zero, 0x10
004460: 3c010000  lui      $at, 0
004464: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004468: 003e0821  addu     $at, $at, $fp
00446c: 0020f809  jalr     $at
004470: 00000000  nop      
004474: 10000016  b        0x44d0
004478: a6020000  sh       $v0, ($s0)
00447c: 3c010000  lui      $at, 0
004480: 3c080000  lui      $t0, 0
004484: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004488: 011c4021  addu     $t0, $t0, $gp
00448c: 003e0821  addu     $at, $at, $fp
004490: 0020f809  jalr     $at
004494: 91049a05  lbu      $a0, -0x65fb($t0)
004498: 96280000  lhu      $t0, ($s1)
00449c: 01024023  subu     $t0, $t0, $v0
0044a0: 1000000b  b        0x44d0
0044a4: a6080000  sh       $t0, ($s0)
0044a8: 3c010000  lui      $at, 0
0044ac: 3c080000  lui      $t0, 0
0044b0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0044b4: 011c4021  addu     $t0, $t0, $gp
0044b8: 003e0821  addu     $at, $at, $fp
0044bc: 0020f809  jalr     $at
0044c0: 91049a05  lbu      $a0, -0x65fb($t0)
0044c4: 96280000  lhu      $t0, ($s1)
0044c8: 01024021  addu     $t0, $t0, $v0
0044cc: a6080000  sh       $t0, ($s0)
0044d0: 3c010000  lui      $at, 0
0044d4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0044d8: 003e0821  addu     $at, $at, $fp
0044dc: 0020f809  jalr     $at
0044e0: 24040001  addiu    $a0, $zero, 1
0044e4: 304800ff  andi     $t0, $v0, 0xff
0044e8: 1100001b  beqz     $t0, 0x4558
0044ec: 24040001  addiu    $a0, $zero, 1
0044f0: 3c010000  lui      $at, 0
0044f4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0044f8: 003e0821  addu     $at, $at, $fp
0044fc: 0020f809  jalr     $at
004500: 00000000  nop      
004504: 304800ff  andi     $t0, $v0, 0xff
004508: 11000008  beqz     $t0, 0x452c
00450c: 24040010  addiu    $a0, $zero, 0x10
004510: 3c010000  lui      $at, 0
004514: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004518: 003e0821  addu     $at, $at, $fp
00451c: 0020f809  jalr     $at
004520: 00000000  nop      
004524: 10000016  b        0x4580
004528: a6020002  sh       $v0, 2($s0)
00452c: 3c010000  lui      $at, 0
004530: 3c080000  lui      $t0, 0
004534: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004538: 011c4021  addu     $t0, $t0, $gp
00453c: 003e0821  addu     $at, $at, $fp
004540: 0020f809  jalr     $at
004544: 91049a05  lbu      $a0, -0x65fb($t0)
004548: 96280002  lhu      $t0, 2($s1)
00454c: 01024023  subu     $t0, $t0, $v0
004550: 1000000b  b        0x4580
004554: a6080002  sh       $t0, 2($s0)
004558: 3c010000  lui      $at, 0
00455c: 3c080000  lui      $t0, 0
004560: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004564: 011c4021  addu     $t0, $t0, $gp
004568: 003e0821  addu     $at, $at, $fp
00456c: 0020f809  jalr     $at
004570: 91049a05  lbu      $a0, -0x65fb($t0)
004574: 96280002  lhu      $t0, 2($s1)
004578: 01024021  addu     $t0, $t0, $v0
00457c: a6080002  sh       $t0, 2($s0)
004580: 3c010000  lui      $at, 0
004584: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004588: 003e0821  addu     $at, $at, $fp
00458c: 0020f809  jalr     $at
004590: 32a400ff  andi     $a0, $s5, 0xff
004594: 3c090000  lui      $t1, 0
004598: 013c4821  addu     $t1, $t1, $gp
00459c: 8d298700  lw       $t1, -0x7900($t1)
0045a0: 3c080000  lui      $t0, 0
0045a4: 011c4021  addu     $t0, $t0, $gp
0045a8: 8d088700  lw       $t0, -0x7900($t0)
0045ac: 95290012  lhu      $t1, 0x12($t1)   ; T[0x05]
0045b0: 85080018  lh       $t0, 0x18($t0)   ; T[0x08]
0045b4: 02894821  addu     $t1, $s4, $t1
0045b8: 95290010  lhu      $t1, 0x10($t1)   ; T[0x04]
0045bc: 00484019  .word    0x00484019
0045c0: 3c010000  lui      $at, 0
0045c4: 01284021  addu     $t0, $t1, $t0
0045c8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0045cc: a6080004  sh       $t0, 4($s0)
0045d0: 003e0821  addu     $at, $at, $fp
0045d4: 0020f809  jalr     $at
0045d8: 24040020  addiu    $a0, $zero, 0x20
0045dc: 3c080000  lui      $t0, 0
0045e0: 011c4021  addu     $t0, $t0, $gp
0045e4: 8d088700  lw       $t0, -0x7900($t0)
0045e8: 95080028  lhu      $t0, 0x28($t0)   ; T[0x10]
0045ec: 3c010000  lui      $at, 0
0045f0: 24219174  addiu    $at, $at, -0x6e8c   ; -> 0x1164
0045f4: 02084021  addu     $t0, $s0, $t0
0045f8: 003e0821  addu     $at, $at, $fp
0045fc: 0020f809  jalr     $at
004600: ad020000  sw       $v0, ($t0)
004604: 28480009  slti     $t0, $v0, 9
004608: 55000002  bnel     $t0, $zero, 0x4614
00460c: 2404000e  addiu    $a0, $zero, 0xe
004610: 24040010  addiu    $a0, $zero, 0x10
004614: 3c010000  lui      $at, 0
004618: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
00461c: 003e0821  addu     $at, $at, $fp
004620: 0020f809  jalr     $at
004624: 00000000  nop      
004628: 3c080000  lui      $t0, 0
00462c: 011c4021  addu     $t0, $t0, $gp
004630: 8d088700  lw       $t0, -0x7900($t0)
004634: 95080028  lhu      $t0, 0x28($t0)   ; T[0x10]
004638: 02084021  addu     $t0, $s0, $t0
00463c: a5020004  sh       $v0, 4($t0)
004640: 3c080000  lui      $t0, 0
004644: 011c4021  addu     $t0, $t0, $gp
004648: 8d088700  lw       $t0, -0x7900($t0)
00464c: 95080014  lhu      $t0, 0x14($t0)   ; T[0x06]
004650: 02008825  move     $s1, $s0
004654: 02088021  addu     $s0, $s0, $t0
004658: 0213402b  sltu     $t0, $s0, $s3
00465c: 1500ff48  bnez     $t0, 0x4380
004660: 00000000  nop      
004664: 3c080000  lui      $t0, 0
004668: 011c4021  addu     $t0, $t0, $gp
00466c: 8d088700  lw       $t0, -0x7900($t0)
004670: 95090012  lhu      $t1, 0x12($t0)   ; T[0x05]
004674: 02c94821  addu     $t1, $s6, $t1
004678: 2529001c  addiu    $t1, $t1, 0x1c
00467c: 952a0000  lhu      $t2, ($t1)
004680: 95080020  lhu      $t0, 0x20($t0)
004684: 95290002  lhu      $t1, 2($t1)
004688: 01284018  .word    0x01284018
00468c: 02ca9021  addu     $s2, $s6, $t2
004690: 00008825  move     $s1, $zero
004694: 02489821  addu     $s3, $s2, $t0
004698: 10000074  b        0x486c
00469c: 02408025  move     $s0, $s2
0046a0: 1612000e  bne      $s0, $s2, 0x46dc
0046a4: 24040010  addiu    $a0, $zero, 0x10
0046a8: 3c010000  lui      $at, 0
0046ac: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0046b0: 003e0821  addu     $at, $at, $fp
0046b4: 0020f809  jalr     $at
0046b8: 00000000  nop      
0046bc: 3c010000  lui      $at, 0
0046c0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0046c4: a6020000  sh       $v0, ($s0)
0046c8: 003e0821  addu     $at, $at, $fp
0046cc: 0020f809  jalr     $at
0046d0: 24040010  addiu    $a0, $zero, 0x10
0046d4: 10000059  b        0x483c
0046d8: a6020002  sh       $v0, 2($s0)
0046dc: 3c010000  lui      $at, 0
0046e0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0046e4: 003e0821  addu     $at, $at, $fp
0046e8: 0020f809  jalr     $at
0046ec: 24040001  addiu    $a0, $zero, 1
0046f0: 304800ff  andi     $t0, $v0, 0xff
0046f4: 1100001b  beqz     $t0, 0x4764
0046f8: 24040001  addiu    $a0, $zero, 1
0046fc: 3c010000  lui      $at, 0
004700: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004704: 003e0821  addu     $at, $at, $fp
004708: 0020f809  jalr     $at
00470c: 00000000  nop      
004710: 304800ff  andi     $t0, $v0, 0xff
004714: 11000008  beqz     $t0, 0x4738
004718: 24040010  addiu    $a0, $zero, 0x10
00471c: 3c010000  lui      $at, 0
004720: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004724: 003e0821  addu     $at, $at, $fp
004728: 0020f809  jalr     $at
00472c: 00000000  nop      
004730: 10000016  b        0x478c
004734: a6020000  sh       $v0, ($s0)
004738: 3c010000  lui      $at, 0
00473c: 3c080000  lui      $t0, 0
004740: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004744: 011c4021  addu     $t0, $t0, $gp
004748: 003e0821  addu     $at, $at, $fp
00474c: 0020f809  jalr     $at
004750: 91049a05  lbu      $a0, -0x65fb($t0)
004754: 96280000  lhu      $t0, ($s1)
004758: 01024023  subu     $t0, $t0, $v0
00475c: 1000000b  b        0x478c
004760: a6080000  sh       $t0, ($s0)
004764: 3c010000  lui      $at, 0
004768: 3c080000  lui      $t0, 0
00476c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004770: 011c4021  addu     $t0, $t0, $gp
004774: 003e0821  addu     $at, $at, $fp
004778: 0020f809  jalr     $at
00477c: 91049a05  lbu      $a0, -0x65fb($t0)
004780: 96280000  lhu      $t0, ($s1)
004784: 01024021  addu     $t0, $t0, $v0
004788: a6080000  sh       $t0, ($s0)
00478c: 3c010000  lui      $at, 0
004790: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004794: 003e0821  addu     $at, $at, $fp
004798: 0020f809  jalr     $at
00479c: 24040001  addiu    $a0, $zero, 1
0047a0: 304800ff  andi     $t0, $v0, 0xff
0047a4: 1100001b  beqz     $t0, 0x4814
0047a8: 24040001  addiu    $a0, $zero, 1
0047ac: 3c010000  lui      $at, 0
0047b0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0047b4: 003e0821  addu     $at, $at, $fp
0047b8: 0020f809  jalr     $at
0047bc: 00000000  nop      
0047c0: 304800ff  andi     $t0, $v0, 0xff
0047c4: 11000008  beqz     $t0, 0x47e8
0047c8: 24040010  addiu    $a0, $zero, 0x10
0047cc: 3c010000  lui      $at, 0
0047d0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0047d4: 003e0821  addu     $at, $at, $fp
0047d8: 0020f809  jalr     $at
0047dc: 00000000  nop      
0047e0: 10000016  b        0x483c
0047e4: a6020002  sh       $v0, 2($s0)
0047e8: 3c010000  lui      $at, 0
0047ec: 3c080000  lui      $t0, 0
0047f0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0047f4: 011c4021  addu     $t0, $t0, $gp
0047f8: 003e0821  addu     $at, $at, $fp
0047fc: 0020f809  jalr     $at
004800: 91049a05  lbu      $a0, -0x65fb($t0)
004804: 96280002  lhu      $t0, 2($s1)
004808: 01024023  subu     $t0, $t0, $v0
00480c: 1000000b  b        0x483c
004810: a6080002  sh       $t0, 2($s0)
004814: 3c010000  lui      $at, 0
004818: 3c080000  lui      $t0, 0
00481c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004820: 011c4021  addu     $t0, $t0, $gp
004824: 003e0821  addu     $at, $at, $fp
004828: 0020f809  jalr     $at
00482c: 91049a05  lbu      $a0, -0x65fb($t0)
004830: 96280002  lhu      $t0, 2($s1)
004834: 01024021  addu     $t0, $t0, $v0
004838: a6080002  sh       $t0, 2($s0)
00483c: 3c010000  lui      $at, 0
004840: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004844: 003e0821  addu     $at, $at, $fp
004848: 0020f809  jalr     $at
00484c: 24040003  addiu    $a0, $zero, 3
004850: 3c080000  lui      $t0, 0
004854: a2020004  sb       $v0, 4($s0)
004858: 011c4021  addu     $t0, $t0, $gp
00485c: 8d088700  lw       $t0, -0x7900($t0)
004860: 95080020  lhu      $t0, 0x20($t0)   ; T[0x0c]
004864: 02008825  move     $s1, $s0
004868: 02088021  addu     $s0, $s0, $t0
00486c: 0213402b  sltu     $t0, $s0, $s3
004870: 1500ff8b  bnez     $t0, 0x46a0
004874: 3c080000  lui      $t0, 0
004878: 011c4021  addu     $t0, $t0, $gp
00487c: 8d098700  lw       $t1, -0x7900($t0)
004880: 95280012  lhu      $t0, 0x12($t1)   ; T[0x05]
004884: 02c84021  addu     $t0, $s6, $t0
004888: 950a002e  lhu      $t2, 0x2e($t0)   ; T[0x13]
00488c: 11400027  beqz     $t2, 0x492c
004890: 00000000  nop      
004894: 2508002c  addiu    $t0, $t0, 0x2c
004898: 950a0000  lhu      $t2, ($t0)
00489c: 9529002e  lhu      $t1, 0x2e($t1)
0048a0: 95080002  lhu      $t0, 2($t0)
0048a4: 01094018  .word    0x01094018
0048a8: 02ca8021  addu     $s0, $s6, $t2
0048ac: 1000001d  b        0x4924
0048b0: 02088821  addu     $s1, $s0, $t0
0048b4: 3c010000  lui      $at, 0
0048b8: 3c080000  lui      $t0, 0
0048bc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0048c0: 011c4021  addu     $t0, $t0, $gp
0048c4: 003e0821  addu     $at, $at, $fp
0048c8: 0020f809  jalr     $at
0048cc: 910499cb  lbu      $a0, -0x6635($t0)
0048d0: 3c010000  lui      $at, 0
0048d4: 3c080000  lui      $t0, 0
0048d8: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0048dc: a6020000  sh       $v0, ($s0)
0048e0: 011c4021  addu     $t0, $t0, $gp
0048e4: 003e0821  addu     $at, $at, $fp
0048e8: 0020f809  jalr     $at
0048ec: 910499cb  lbu      $a0, -0x6635($t0)
0048f0: 3c010000  lui      $at, 0
0048f4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
0048f8: a6020002  sh       $v0, 2($s0)
0048fc: 003e0821  addu     $at, $at, $fp
004900: 0020f809  jalr     $at
004904: 24040001  addiu    $a0, $zero, 1
004908: 304800ff  andi     $t0, $v0, 0xff
00490c: a6080004  sh       $t0, 4($s0)
004910: 3c080000  lui      $t0, 0
004914: 011c4021  addu     $t0, $t0, $gp
004918: 8d088700  lw       $t0, -0x7900($t0)
00491c: 9508002e  lhu      $t0, 0x2e($t0)   ; T[0x13]
004920: 02088021  addu     $s0, $s0, $t0
004924: 0211402b  sltu     $t0, $s0, $s1
004928: 1500ffe2  bnez     $t0, 0x48b4
00492c: 02c02025  move     $a0, $s6
004930: 3c010000  lui      $at, 0
004934: 24219548  addiu    $at, $at, -0x6ab8   ; -> 0x1538
004938: 003e0821  addu     $at, $at, $fp
00493c: 0020f809  jalr     $at
004940: 00000000  nop      
004944: 3c010000  lui      $at, 0
004948: 24219160  addiu    $at, $at, -0x6ea0   ; -> 0x1150
00494c: 003e0821  addu     $at, $at, $fp
004950: 0020f809  jalr     $at
004954: 00000000  nop      
004958: 28480015  slti     $t0, $v0, 0x15
00495c: 15000054  bnez     $t0, 0x4ab0
004960: 3c080000  lui      $t0, 0
004964: 011c4021  addu     $t0, $t0, $gp
004968: 8d088700  lw       $t0, -0x7900($t0)
00496c: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
004970: 02c84021  addu     $t0, $s6, $t0
004974: 85080036  lh       $t0, 0x36($t0)   ; T[0x17]
004978: 3c010000  lui      $at, 0
00497c: 24219454  addiu    $at, $at, -0x6bac   ; -> bits_needed
004980: 25080001  addiu    $t0, $t0, 1
004984: 003e0821  addu     $at, $at, $fp
004988: 0020f809  jalr     $at
00498c: 3104ffff  andi     $a0, $t0, 0xffff
004990: 3c080000  lui      $t0, 0
004994: 011c4021  addu     $t0, $t0, $gp
004998: ad029a20  sw       $v0, -0x65e0($t0)
00499c: 3c080000  lui      $t0, 0
0049a0: 011c4021  addu     $t0, $t0, $gp
0049a4: 8d088700  lw       $t0, -0x7900($t0)
0049a8: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
0049ac: 3c010000  lui      $at, 0
0049b0: 2421af40  addiu    $at, $at, -0x50c0   ; -> 0x2f30
0049b4: 02c02025  move     $a0, $s6
0049b8: 02c82821  addu     $a1, $s6, $t0
0049bc: 003e0821  addu     $at, $at, $fp
0049c0: 0020f809  jalr     $at
0049c4: 24060015  addiu    $a2, $zero, 0x15
0049c8: 3c080000  lui      $t0, 0
0049cc: 011c4021  addu     $t0, $t0, $gp
0049d0: 8d088700  lw       $t0, -0x7900($t0)
0049d4: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
0049d8: 3c010000  lui      $at, 0
0049dc: 02c84021  addu     $t0, $s6, $t0
0049e0: 2421b49c  addiu    $at, $at, -0x4b64   ; -> dec_B
0049e4: 02c02025  move     $a0, $s6
0049e8: 25050010  addiu    $a1, $t0, 0x10
0049ec: 003e0821  addu     $at, $at, $fp
0049f0: 0020f809  jalr     $at
0049f4: 24060015  addiu    $a2, $zero, 0x15
0049f8: 3c080000  lui      $t0, 0
0049fc: 011c4021  addu     $t0, $t0, $gp
004a00: 8d088700  lw       $t0, -0x7900($t0)
004a04: 95090012  lhu      $t1, 0x12($t0)   ; T[0x05]
004a08: 02c94821  addu     $t1, $s6, $t1
004a0c: 25290034  addiu    $t1, $t1, 0x34
004a10: 952a0000  lhu      $t2, ($t1)
004a14: 950800a0  lhu      $t0, 0xa0($t0)
004a18: 95290002  lhu      $t1, 2($t1)
004a1c: 01284018  .word    0x01284018
004a20: 02ca8021  addu     $s0, $s6, $t2
004a24: 10000020  b        0x4aa8
004a28: 02088821  addu     $s1, $s0, $t0
004a2c: 3c010000  lui      $at, 0
004a30: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004a34: 003e0821  addu     $at, $at, $fp
004a38: 0020f809  jalr     $at
004a3c: 24040020  addiu    $a0, $zero, 0x20
004a40: 3c010000  lui      $at, 0
004a44: 3c080000  lui      $t0, 0
004a48: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004a4c: ae020000  sw       $v0, ($s0)
004a50: 011c4021  addu     $t0, $t0, $gp
004a54: 003e0821  addu     $at, $at, $fp
004a58: 0020f809  jalr     $at
004a5c: 910499cb  lbu      $a0, -0x6635($t0)
004a60: 3c010000  lui      $at, 0
004a64: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004a68: a6020004  sh       $v0, 4($s0)
004a6c: 003e0821  addu     $at, $at, $fp
004a70: 0020f809  jalr     $at
004a74: 24040008  addiu    $a0, $zero, 8
004a78: 3c010000  lui      $at, 0
004a7c: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004a80: a2020006  sb       $v0, 6($s0)
004a84: 003e0821  addu     $at, $at, $fp
004a88: 0020f809  jalr     $at
004a8c: 24040008  addiu    $a0, $zero, 8
004a90: 3c080000  lui      $t0, 0
004a94: a2020007  sb       $v0, 7($s0)
004a98: 011c4021  addu     $t0, $t0, $gp
004a9c: 8d088700  lw       $t0, -0x7900($t0)
004aa0: 950800a0  lhu      $t0, 0xa0($t0)   ; T[0x4c]
004aa4: 02088021  addu     $s0, $s0, $t0
004aa8: 0211402b  sltu     $t0, $s0, $s1
004aac: 1500ffdf  bnez     $t0, 0x4a2c
004ab0: 3c010000  lui      $at, 0
004ab4: 24219160  addiu    $at, $at, -0x6ea0   ; -> 0x1150
004ab8: 003e0821  addu     $at, $at, $fp
004abc: 0020f809  jalr     $at
004ac0: 00000000  nop      
004ac4: 28480017  slti     $t0, $v0, 0x17
004ac8: 1500008e  bnez     $t0, 0x4d04
004acc: 00000000  nop      
004ad0: 3c080000  lui      $t0, 0
004ad4: 011c4021  addu     $t0, $t0, $gp
004ad8: 8d088700  lw       $t0, -0x7900($t0)
004adc: 95090012  lhu      $t1, 0x12($t0)   ; T[0x05]
004ae0: 02c94821  addu     $t1, $s6, $t1
004ae4: 25290038  addiu    $t1, $t1, 0x38
004ae8: 952a0002  lhu      $t2, 2($t1)
004aec: 11400048  beqz     $t2, 0x4c10
004af0: 00009025  move     $s2, $zero
004af4: 95310000  lhu      $s1, ($t1)
004af8: 85290002  lh       $t1, 2($t1)
004afc: 850800ba  lh       $t0, 0xba($t0)
004b00: 2529ffff  addiu    $t1, $t1, -1
004b04: 01094019  .word    0x01094019
004b08: 02284021  addu     $t0, $s1, $t0
004b0c: 1000003e  b        0x4c08
004b10: 3113ffff  andi     $s3, $t0, 0xffff
004b14: 3c010000  lui      $at, 0
004b18: 02d18021  addu     $s0, $s6, $s1
004b1c: 24040001  addiu    $a0, $zero, 1
004b20: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004b24: 003e0821  addu     $at, $at, $fp
004b28: 0020f809  jalr     $at
004b2c: 00000000  nop      
004b30: 304800ff  andi     $t0, $v0, 0xff
004b34: 11000009  beqz     $t0, 0x4b5c
004b38: 3c080000  lui      $t0, 0
004b3c: 3c010000  lui      $at, 0
004b40: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004b44: 011c4021  addu     $t0, $t0, $gp
004b48: 003e0821  addu     $at, $at, $fp
004b4c: 0020f809  jalr     $at
004b50: 910499cb  lbu      $a0, -0x6635($t0)
004b54: 10000003  b        0x4b64
004b58: a6020000  sh       $v0, ($s0)
004b5c: 96480000  lhu      $t0, ($s2)
004b60: a6080000  sh       $t0, ($s0)
004b64: 3c010000  lui      $at, 0
004b68: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004b6c: 003e0821  addu     $at, $at, $fp
004b70: 0020f809  jalr     $at
004b74: 24040001  addiu    $a0, $zero, 1
004b78: 304800ff  andi     $t0, $v0, 0xff
004b7c: 11000008  beqz     $t0, 0x4ba0
004b80: 24040008  addiu    $a0, $zero, 8
004b84: 3c010000  lui      $at, 0
004b88: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004b8c: 003e0821  addu     $at, $at, $fp
004b90: 0020f809  jalr     $at
004b94: 00000000  nop      
004b98: 10000003  b        0x4ba8
004b9c: a2020002  sb       $v0, 2($s0)
004ba0: 92480002  lbu      $t0, 2($s2)
004ba4: a2080002  sb       $t0, 2($s0)
004ba8: 3c010000  lui      $at, 0
004bac: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004bb0: 003e0821  addu     $at, $at, $fp
004bb4: 0020f809  jalr     $at
004bb8: 24040001  addiu    $a0, $zero, 1
004bbc: 304800ff  andi     $t0, $v0, 0xff
004bc0: 11000008  beqz     $t0, 0x4be4
004bc4: 24040005  addiu    $a0, $zero, 5
004bc8: 3c010000  lui      $at, 0
004bcc: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004bd0: 003e0821  addu     $at, $at, $fp
004bd4: 0020f809  jalr     $at
004bd8: 00000000  nop      
004bdc: 10000003  b        0x4bec
004be0: a2020003  sb       $v0, 3($s0)
004be4: 92480003  lbu      $t0, 3($s2)
004be8: a2080003  sb       $t0, 3($s0)
004bec: 3c080000  lui      $t0, 0
004bf0: 011c4021  addu     $t0, $t0, $gp
004bf4: 8d088700  lw       $t0, -0x7900($t0)
004bf8: 850800ba  lh       $t0, 0xba($t0)   ; T[0x59]
004bfc: 02288821  addu     $s1, $s1, $t0
004c00: 02009025  move     $s2, $s0
004c04: 3231ffff  andi     $s1, $s1, 0xffff
004c08: 0271402b  sltu     $t0, $s3, $s1
004c0c: 1100ffc1  beqz     $t0, 0x4b14
004c10: 02c02025  move     $a0, $s6
004c14: 3c080000  lui      $t0, 0
004c18: 011c4021  addu     $t0, $t0, $gp
004c1c: 8d088700  lw       $t0, -0x7900($t0)
004c20: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
004c24: 3c010000  lui      $at, 0
004c28: 02c84021  addu     $t0, $s6, $t0
004c2c: 2421b280  addiu    $at, $at, -0x4d80   ; -> 0x3270
004c30: 25050008  addiu    $a1, $t0, 8
004c34: 003e0821  addu     $at, $at, $fp
004c38: 0020f809  jalr     $at
004c3c: 24060017  addiu    $a2, $zero, 0x17
004c40: 3c080000  lui      $t0, 0
004c44: 011c4021  addu     $t0, $t0, $gp
004c48: 8d088700  lw       $t0, -0x7900($t0)
004c4c: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
004c50: 3c010000  lui      $at, 0
004c54: 02c84021  addu     $t0, $s6, $t0
004c58: 2421b0ec  addiu    $at, $at, -0x4f14   ; -> 0x30dc
004c5c: 02c02025  move     $a0, $s6
004c60: 25050004  addiu    $a1, $t0, 4
004c64: 003e0821  addu     $at, $at, $fp
004c68: 0020f809  jalr     $at
004c6c: 24060017  addiu    $a2, $zero, 0x17
004c70: 3c080000  lui      $t0, 0
004c74: 011c4021  addu     $t0, $t0, $gp
004c78: 8d088700  lw       $t0, -0x7900($t0)
004c7c: 95080012  lhu      $t0, 0x12($t0)   ; T[0x05]
004c80: 3c010000  lui      $at, 0
004c84: 2421af40  addiu    $at, $at, -0x50c0   ; -> 0x2f30
004c88: 02c02025  move     $a0, $s6
004c8c: 02c82821  addu     $a1, $s6, $t0
004c90: 003e0821  addu     $at, $at, $fp
004c94: 0020f809  jalr     $at
004c98: 24060017  addiu    $a2, $zero, 0x17
004c9c: 3c010000  lui      $at, 0
004ca0: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004ca4: 003e0821  addu     $at, $at, $fp
004ca8: 0020f809  jalr     $at
004cac: 24040001  addiu    $a0, $zero, 1
004cb0: 304800ff  andi     $t0, $v0, 0xff
004cb4: 11000006  beqz     $t0, 0x4cd0
004cb8: 02c02025  move     $a0, $s6
004cbc: 3c010000  lui      $at, 0
004cc0: 24219548  addiu    $at, $at, -0x6ab8   ; -> 0x1538
004cc4: 003e0821  addu     $at, $at, $fp
004cc8: 0020f809  jalr     $at
004ccc: 00000000  nop      
004cd0: 3c010000  lui      $at, 0
004cd4: 2421981c  addiu    $at, $at, -0x67e4   ; -> getbits
004cd8: 003e0821  addu     $at, $at, $fp
004cdc: 0020f809  jalr     $at
004ce0: 24040001  addiu    $a0, $zero, 1
004ce4: 304800ff  andi     $t0, $v0, 0xff
004ce8: 11000006  beqz     $t0, 0x4d04
004cec: 02c02025  move     $a0, $s6
004cf0: 3c010000  lui      $at, 0
004cf4: 24219548  addiu    $at, $at, -0x6ab8   ; -> 0x1538
004cf8: 003e0821  addu     $at, $at, $fp
004cfc: 0020f809  jalr     $at
004d00: 00000000  nop      
004d04: 8fbf0028  lw       $ra, 0x28($sp)
004d08: 8fb60008  lw       $s6, 8($sp)
004d0c: 8fb5000c  lw       $s5, 0xc($sp)
004d10: 8fb40010  lw       $s4, 0x10($sp)
004d14: 8fb30014  lw       $s3, 0x14($sp)
004d18: 8fb20018  lw       $s2, 0x18($sp)
004d1c: 8fb1001c  lw       $s1, 0x1c($sp)
004d20: 8fb00020  lw       $s0, 0x20($sp)
004d24: 03e00008  jr       $ra
004d28: 27bd0028  addiu    $sp, $sp, 0x28
004d2c: 00000000  nop      
004d30: 312e312e  andi     $t6, $t1, 0x312e
004d34: 33000000  andi     $zero, $t8, 0
004d38: afbf0000  sw       $ra, ($sp)
004d3c: 03a04025  move     $t0, $sp
004d40: 27bdffb8  addiu    $sp, $sp, -0x48
