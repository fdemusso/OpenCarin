// Phase 4: Pseudo-C Decompilation of sub_004360
// Address: 004360 (Called from sub_0066de)
// Note: Stack offsets are relative to SP after 'movem.l d0-d1/a0/a2, -(a7)'
// Saved Registers: d0 at (a7), d1 at 4(a7)

// ==========================================
// CONTROL FLOW GRAPH (CFG) per sub_004360
// ==========================================
// sub_004360 (Start: 004360, End: 0043c8)
//   - Conditional Jumps:
//       0043be (beq.b da 004384) -> Fallimento / Ignore (Ritorna 0)
//       0043a6 (beq.b da 004394) -> Vai al check avanzato
//       0043ba (bne.b da 0043a4) -> Successo (Ritorna 1)
//       0043be (bne.b da 0043b8) -> Fallimento / Ignore (Ritorna 0)
//   - Unconditional Jumps:
//       0043c0 (bra.b da 0043bc) -> Epilogo
//   - Calls:
//       Nessuna
// ==========================================


uint32_t sub_004360(void* arg_arc_ptr, void* arg_block_base) 
{
    // PROLOGUE
    // link.w a5, #$0
    // movem.l d0-d1/a0/a2, -(a7)  // Salva d0, d1, a0, a2. I parametri sono stati passati in d0 e d1.
    // In questo momento, (a7) contiene d0 (arc_ptr) e 4(a7) contiene d1 (block_base).
    
    // 1. Calcola il puntatore assoluto al record dell'arco nel blocco
    void* a0 = arg_arc_ptr;                       // movea.l (a7), a0
    uint32_t d0 = *(uint16_t*)((uint8_t*)a0 + 6); // move.w $6(a0), d0 (Estrae l'offset)
    d0 += (uint32_t)arg_block_base;               // add.l $4(a7), d0
    void* a2 = (void*)d0;                         // movea.l d0, a2 -> Puntatore S0/S1/S2
    
    // 2. Controllo primario all'offset 0x10 (es. S0.FLAGS o Direction)
    d0 = 0xf;
    d0 &= *(uint8_t*)((uint8_t*)a2 + 0x10);       // and.b $10(a2), d0
    uint32_t d1 = (uint8_t)d0;
    
    // Se il lower nibble a 0x10 è uguale a 6 -> Arco ignorato
    if (d1 == 6) {                                // cmpi.b #6, d1
        goto loc_43be;                            // Ritorna 0
    }
    
    // 3. Controllo secondario all'offset 0x11
    d0 = 0xf;
    d0 &= *(uint8_t*)((uint8_t*)a2 + 0x11);       // and.b $11(a2), d0
    d1 = (uint8_t)d0;
    
    // Se il lower nibble a 0x11 è uguale a 3, vai al check avanzato
    if (d1 == 3) {                                // cmpi.b #3, d1
        goto loc_43a6;
    }
    
    // Se il lower nibble a 0x11 NON è 4, l'arco è valido!
    d0 = 0xf;
    d0 &= *(uint8_t*)((uint8_t*)a2 + 0x11);       // (Lettura ridondante del lower nibble)
    d1 = (uint8_t)d0;
    if (d1 != 4) {                                // cmpi.b #4, d1
        goto loc_43ba;                            // Ritorna 1
    }

loc_43a6:
    // 4. Check avanzato per i casi lower nibble == 3 o == 4 all'offset 0x11
    d0 = 0xf0;
    d0 &= *(uint8_t*)((uint8_t*)a2 + 0x11);       // and.b $11(a2), d0 (Estrae upper nibble)
    d1 = (uint8_t)d0;
    d1 >>= 4;                                     // lsr.l #4, d1
    
    // Se l'upper nibble all'offset 0x11 NON è 4 -> Arco ignorato
    if (d1 != 4) {                                // cmpi.b #4, d1
        goto loc_43be;                            // Ritorna 0
    }

loc_43ba:
    // SUCCESSO
    d0 = 1;                                       // moveq #1, d0
    goto loc_43c0;

loc_43be:
    // FALLIMENTO (Arco ignorato)
    d0 = 0;                                       // moveq #0, d0

loc_43c0:
    // EPILOGUE
    // movem.l -$8(a5), a0/a2
    // unlk a5
    // rts
    
    return d0;
}
