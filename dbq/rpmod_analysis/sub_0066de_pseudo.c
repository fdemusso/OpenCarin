// Phase 4: Pseudo-C Decompilation of sub_0066de
// Address: 0066de
// Note: Stack offsets are relative to SP after 'lea -$62(a7), a7'
// Locals: 0x00 to 0x61
// Saved Registers: 0x62 to 0x85
// Arguments: d0, d1, d2... and stack args at 0x8e, 0x92, etc.

void sub_0066de(uint32_t arg_d0, uint32_t arg_d1, uint32_t arg_d2, uint32_t arg_d3,
                void* arg_stk1_8e, void* arg_stk2_92, void* arg_stk3_96, 
                uint32_t arg_stk4_9a, void* arg_stk5_9e, uint32_t arg_stk7_a6) 
{
    // PROLOGUE
    // link.w a5, #$0
    // movem.l d0-d3/a0-a4, -(a7)
    // lea.l -$62(a7), a7
    uint8_t local_00[0x62]; // Representation of local stack
    
    local_00[0x1] = 0; // clr.b $1(a7)
    
    void* a0 = arg_stk2_92;
    *(uint32_t*)&local_00[0x30] = *(uint32_t*)a0;        // move.l (a0), $30(a7)
    *(uint32_t*)&local_00[0x34] = *(uint32_t*)(a0 + 4);  // move.l $4(a0), $34(a7)
    *(uint32_t*)&local_00[0x38] = *(uint32_t*)(a0 + 8);  // move.l $8(a0), $38(a7)
    *(uint32_t*)&local_00[0x3c] = *(uint32_t*)(a0 + 0xc); // move.l $c(a0), $3c(a7)
    *(uint32_t*)&local_00[0x40] = *(uint32_t*)(a0 + 0x10); // move.l $10(a0), $40(a7)
    *(uint16_t*)&local_00[0x44] = *(uint16_t*)(a0 + 0x14); // move.w $14(a0), $44(a7)
    
    void* a3 = &local_00[0x30]; // lea.l $30(a7), a3
    *(uint32_t*)&local_00[0x5a] = 0; // clr.l $5a(a7)
    *(uint32_t*)&local_00[0x46] = 0; // clr.l $46(a7)
    local_00[0x7] = 0; // clr.b $7(a7)
    local_00[0x3] = 0; // clr.b $3(a7)
    
    a0 = arg_stk1_8e;
    uint32_t d0 = *(uint32_t*)(a0 + 0xa); // move.l $a(a0), d0
    
    a0 = arg_d1; // movea.l $66(a7), a0 (66 is arg_d1)
    uint32_t d1 = *(uint16_t*)(a0 + 6);   // move.w $6(a0), d1 (zero extended because of moveq #0, d1)
    
    d0 += d1; // add.l d1, d0
    void* a4 = (void*)d0; // movea.l d0, a4
    
    a0 = arg_d1; // movea.l $66(a7), a0
    if (*(uint8_t*)(a0 + 8) == 0) { // tst.b $8(a0); bne.b $674c
        d0 = *(uint16_t*)a4; // move.w (a4), d0
    } else {
        d0 = *(uint16_t*)(a4 + 2); // move.w $2(a4), d0
    }
    
    d1 = (uint16_t)d0; // moveq #0, d1; move.w d0, d1
    
    a0 = arg_stk1_8e;
    a0 = *(void**)(a0 + 0xa); // movea.l $a(a0), a0
    
    d0 = 7;
    d0 &= *(uint8_t*)(a0 + d1 + 6); // and.b $6(a0, d1.l), d0
    local_00[0x2] = (uint8_t)d0; // move.b d0, $2(a7)
    
    if (local_00[0x2] == 4 || local_00[0x2] == 5) {
        d0 = 1;
    } else {
        d0 = 0;
    }
    local_00[0x4] = (uint8_t)d0; // move.b d0, $4(a7)
    
    d0 = *(uint16_t*)(a4 + 0xc); // move.w $c(a4), d0 (zero extended)
    d1 = 100; // moveq #$64, d1
    d0 = d0 * d1; // mulu.l d1, d0
    *(uint32_t*)&local_00[0x4e] = d0; // move.l d0, $4e(a7)
    
    a0 = arg_stk1_8e;
    d1 = *(uint32_t*)(a0 + 0xa); // move.l $a(a0), d1
    d0 = arg_d1; // move.l $66(a7), d0
    
    // ==========================================
    // CALL 1: sub_006eae (cost/distance check?)
    // ==========================================
    d0 = sub_006eae(d0, d1); // bsr.w $6eae
    *(uint32_t*)&local_00[0x4a] = d0; // move.l d0, $4a(a7)
    
    a0 = arg_d1; // movea.l $66(a7), a0
    void* a1 = arg_d0; // movea.l $62(a7), a1 (62 is arg_d0)
    
    // Check if S1 == S0.D ? (Comparing arcs or nodes)
    if (*(uint16_t*)(a1 + 6) != *(uint16_t*)(a0 + 6)) goto loc_683c;
    if (*(uint16_t*)(a1 + 4) != *(uint16_t*)(a0 + 4)) goto loc_683c;
    if (*(uint32_t*)a1 != *(uint32_t*)a0) goto loc_683c;
    if (*(uint8_t*)(a1 + 8) == *(uint8_t*)(a0 + 8)) goto loc_683c;

    local_00[0x3] = 4; // move.b #$4, $3(a7)
    
    a0 = arg_stk1_8e;
    d1 = *(uint32_t*)(a0 + 0xa);
    d0 = arg_d0; // move.l $62(a7), d0
    
    // EXTERNAL CALL: likely memory or state fetch
    d0 = jsr_neg7318(d0, d1, a6); // jsr -$7318(a6)
    
    if (d0 != 0) goto loc_6870;
    
    a0 = arg_stk1_8e;
    d1 = *(uint32_t*)(a0 + 0xa);
    d0 = arg_d1; // move.l $66(a7), d0
    
    // ==========================================
    // CALL 2: sub_004360 (arc evaluation?)
    // ==========================================
    d0 = sub_004360(d0, d1); // bsr.w $4360
    
    if (d0 == 0) goto loc_6870;
    
    // PUSH ARGUMENTS FOR CALL 3
    // pea.l $5a(a7)
    // pea.l $4a(a7)
    d1 = arg_d2; // move.l $6a(a7), d1
    a0 = arg_stk3_96; // movea.l $96(a7), a0
    d0 = *(uint32_t*)(a0 + 0xa);
    
    // ==========================================
    // CALL 3: sub_0071de (cost aggregation?)
    // ==========================================
    d0 = sub_0071de(d0, d1, &local_00[0x4a], &local_00[0x5a]); // bsr.w $71de
    // addq.l #8, a7 (clears pushed args)
    
    local_00[0x7] = 1; // move.b #$1, $7(a7)
    goto loc_6870;

loc_683c:
    // pea.l $7(a7)
    // pea.l $5e(a7)
    // pea.l $4e(a7)
    d0 = 8 & *(uint8_t*)(a3 + 8); // and.b $8(a3), d0
    d1 = (uint8_t)d0; // moveq #0, d1; move.b d0, d1
    // move.l d1, -(a7) // pushes d1
    
    a0 = arg_stk5_9e; // movea.l $9e(a7), a0
    // move.l $a(a0), -(a7) // pushes $a(a0)
    
    d1 = arg_a2; // move.l $7a(a7), d1 (7a is a2)
    d0 = arg_stk7_a6; // move.l $a6(a7), d0
    
    // CALL TO 73b8
    d0 = sub_0073b8(d0, d1, *(uint32_t*)(a0 + 0xa), d1_pushed, &local_00[0x4e], &local_00[0x5e], &local_00[0x7]); // bsr.w $73b8
    // lea.l $14(a7), a7 (pops 20 bytes = 5 arguments)
    
    local_00[0x3] = (uint8_t)d0; // move.b d0, $3(a7)

loc_6870:
    d1 = arg_d0; // move.l $62(a7), d1
    d0 = arg_d1; // move.l $66(a7), d0
    
    // ==========================================
    // CALL 4: sub_0007ea (post arc validation?)
    // ==========================================
    d0 = sub_0007ea(d0, d1); // bsr.w $7ea
    
    if (d0 == 0) goto loc_6892;
    
    d0 = *(uint32_t*)(a6 - 0x5334); // move.l $ffffaccc(a6), d0
    *(uint32_t*)&local_00[0x5a] += d0; // add.l d0, $5a(a7)
    local_00[0x7] = 1; // move.b #$1, $7(a7)

loc_6892:
    // PUSH: move.l $ffffa594(a6), -(a7)
    d1 = *(uint32_t*)&local_00[0x52]; // move.l $52(a7), d1
    
    d0 = *(uint16_t*)(a6 - 0x7ed6); // move.w $ffff812a(a6), d0
    uint32_t d2 = 0x80; // move.w #$80, d2
    d2 &= *(uint16_t*)(a4 + d0 + 2); // and.w $2(a4, d0.l), d2
    
    d0 = d2; // move.w d2, d0
    d0 >>= 4; // lsr.l #4, d0
    if (d0 == 8) {
        d0 = 1;
    } else {
        d0 = 0;
    }
    d0 <<= 7; // lsl.l #7, d0
    
    d2 = 0xf;
    d2 &= *(uint8_t*)(a4 + 0xb); // and.b $b(a4), d2
    uint32_t d3 = (uint8_t)d2; // move.b d2, d3
    d2 = (uint8_t)d3; // move.b d3, d2
    d2 <<= 3; // lsl.l #3, d2
    d0 += d2; // add.l d2, d0
    
    d2 = 0xf;
    d2 &= *(uint8_t*)(a4 + 0x10); // and.b $10(a4), d2
    d3 = (uint8_t)d2;
    d2 = (uint8_t)d3;
    d0 += d2; // add.l d2, d0
    
    a0 = *(void**)(a6 - 0x3efe); // movea.l $ffffc102(a6), a0
    d0 = *(uint32_t*)(a0 + d0 * 4); // move.l (a0, d0.l * 4), d0
    
    a0 = *(void**)(a6 - 0x7a3e); // movea.l $ffff85c2(a6), a0
    
    // EXTERNAL INDIRECT CALL (possibly cost function lookup)
    d0 = jsr_indirect(a0, d0, pushed_ffffa594); // jsr (a0)
    // addq.l #4, a7
    
    *(uint32_t*)&local_00[0x5e] = d0; // move.l d0, $5e(a7)
    // pea.l $5e(a7)
    
    a0 = arg_stk2_92;
    // push $a(a0)
    
    d1 = *(uint32_t*)&local_00[0x6e]; // saved d3? Wait, 0x6e is d3! So arg_d3.
    d0 = arg_stk4_9a; // move.l $9a(a7), d0
    
    // CALL TO 72ba
    d0 = sub_0072ba(d0, d1, *(uint32_t*)(a0 + 0xa), &local_00[0x5e]); // bsr.w $72ba
    // addq.l #8, a7
    
    *(uint32_t*)&local_00[0x5a] += d0; // add.l d0, $5a(a7)
    
    d0 = *(uint32_t*)(a3 + 0xa); // move.l $a(a3), d0
    d0 += *(uint32_t*)&local_00[0x5e]; // add.l $5e(a7), d0
    
    d1 = *(uint32_t*)(a6 - 0x5368); // move.l $ffffac98(a6), d1
    d1 *= *(uint32_t*)&local_00[0x46]; // mulu.l $46(a7), d1
    d1 = (int32_t)d1 >> 8; // asr.l #8, d1
    d0 += d1; // add.l d1, d0
    d0 += *(uint32_t*)&local_00[0x5a]; // add.l $5a(a7), d0
    
    *(uint32_t*)&local_00[0x56] = d0; // move.l d0, $56(a7)
    d0 = *(uint32_t*)&local_00[0x46]; // move.l $46(a7), d0
    *(uint32_t*)&local_00[0x4a] += d0; // add.l d0, $4a(a7)
}
