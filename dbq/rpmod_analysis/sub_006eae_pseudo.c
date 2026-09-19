// Phase 4: Pseudo-C Decompilation of sub_006eae
// Address: 006eae (Called from sub_0066de)
// Note: Stack offsets are relative to SP after 'lea -$e(a7), a7'
// Locals: 0x00 to 0x0d
// Saved Registers: 0x0e to ...

// ==========================================
// CONTROL FLOW GRAPH (CFG) per sub_006eae
// ==========================================
// sub_006eae (Start: 006eae, End: 006fc6)
//   - Conditional Jumps:
//       006ee6 (beq.b da 006edc)
//       006f50 (bne.b da 006ee4)
//       006f1e (bra.b da 006f08)
//       006f0a (bne.b da 006f2c) - Loop continua
//       006f2e (ble.b da 006f20) - Fine Loop / Fallimento
//       006f46 (ble.b da 006f30) - Check fallito
//       006fb6 (bra.b da 006f44) - Ritorno
//       006f72 (bne.b da 006f6c)
//       006f74 (bra.b da 006f70)
//       006fb8 (bra.b da 006f4e) - Ritorno finale
//   - Calls:
//       jsr -$7240(a6) @ 006eee
//           [Args: d0=block_base, d1=block_base + arc->offset, stack_ptr=&local_08]
// ==========================================


uint32_t sub_006eae(void* arg_arc_ptr, void* arg_block_base) 
{
    // PROLOGUE
    // link.w a5, #$0
    // movem.l d0-d2/d4-d5/a0/a2-a4, -(a7) // Saves 9 registers
    // movea.l d0, a2
    // movea.l d1, a3
    // lea.l -$e(a7), a7

    uint8_t local_00[0xe];
    
    void* a2 = arg_arc_ptr;
    void* a3 = arg_block_base;
    
    // Estrazione dell'offset dall'arco e calcolo del puntatore assoluto
    uint32_t d0 = *(uint16_t*)((uint8_t*)a2 + 6); // move.w $6(a2), d0
    d0 += (uint32_t)a3;                           // add.l a3, d0
    void* a4 = (void*)d0;                         // movea.l d0, a4  -> a4 = record S0/S1/S2 nel blocco
    
    // Lettura di un flag/tipo a offset 0xb
    d0 = 0xf;
    d0 &= *(uint8_t*)((uint8_t*)a4 + 0xb);        // and.b $b(a4), d0
    uint32_t d1 = (uint8_t)d0;                    // move.b d0, d1
    local_00[0xd] = (uint8_t)d1;                  // move.b d1, $d(a7)
    
    // Se il flag è 0xE oppure 0xF
    if (local_00[0xd] == 0xe || local_00[0xd] == 0xf) 
    {
        // ----------------------------------------------------
        // RAMO 1: Flag = 0xE o 0xF (Tipi specifici di record)
        // ----------------------------------------------------
        
        // pea.l $8(a7) -> Passa il puntatore a local_08
        d1 = (uint32_t)a4; // record ptr
        d0 = (uint32_t)a3; // block base
        
        // --- SUB-CALL SIGNIFICATIVA ---
        // Questa chiamata riempie i 4 byte a local_08 con due word (offset e count).
        // Indirizzo: jsr -$7240(a6)
        jsr_neg7240(d0, d1, &local_00[0x8], a6); 
        // addq.l #4, a7 (clean up stack)
        
        d0 = *(uint16_t*)&local_00[0x8];          // move.w $8(a7), d0 (Offset ritornato)
        d0 += (uint32_t)a3;                       // add.l a3, d0 (Risoluzione puntatore)
        *(uint32_t*)&local_00[0x4] = d0;          // move.l d0, $4(a7) (Puntatore alla lista)
        
        d0 = *(uint16_t*)&local_00[0xa];          // move.w $a(a7), d0 (Numero di elementi)
        uint32_t d5 = d0;                         // move.l d0, d5
        
        // Loop sulla lista ritornata per cercare l'elemento con byte[1] == 5
        while (d5 > 0) 
        {
            void* a0 = (void*)*(uint32_t*)&local_00[0x4];
            if (*(uint8_t*)((uint8_t*)a0 + 1) == 5) {
                break; // Elemento trovato
            }
            
            // Avanza al prossimo elemento della lista
            d0 = *(uint16_t*)((uint8_t*)a6 - 0x7ebe); // move.w $ffff8142(a6), d0 (Grandezza elemento)
            *(uint32_t*)&local_00[0x4] += d0;         // add.l $4(a7), d0
            d5--;
        }
        
        if (d5 > 0) 
        {
            // Elemento trovato
            void* a0 = (void*)*(uint32_t*)&local_00[0x4];
            d0 = *(uint16_t*)((uint8_t*)a0 + 2);      // move.w $2(a0), d0 (Valore di costo/distanza)
            d0 *= 0x3c00;                             // mulu.l #$3c00, d0
            *(uint32_t*)&local_00[0x0] = d0;
            // goto loc_6fb8;
        } 
        else 
        {
            // Elemento non trovato (ritorna valore di default)
            *(uint32_t*)&local_00[0x0] = *(uint32_t*)((uint8_t*)a6 - 0x5a80); // move.l $ffffa580(a6), (a7)
            // goto loc_6fb8;
        }
    } 
    else 
    {
        // ----------------------------------------------------
        // RAMO 2: Flag diverso da 0xE e 0xF
        // ----------------------------------------------------
        
        d0 = *(uint16_t*)((uint8_t*)a6 - 0x7ed6); // move.w $ffff812a(a6), d0
        d1 = 0x80;
        d1 &= *(uint16_t*)((uint8_t*)a4 + d0 + 2); // and.w $2(a4, d0.l), d1
        
        d0 = (uint16_t)d1;
        d0 >>= 4;                                  // lsr.l #4, d0
        if (d0 == 8) {
            d0 = 1;
        } else {
            d0 = 0;
        }
        d0 <<= 7;                                  // lsl.l #7, d0
        
        d1 = 0xf;
        d1 &= *(uint8_t*)((uint8_t*)a4 + 0xb);
        uint32_t d2 = (uint8_t)d1;
        d1 = (uint8_t)d2;
        d1 <<= 3;
        d0 += d1;                                  // add.l d1, d0
        
        d1 = 0xf;
        d1 &= *(uint8_t*)((uint8_t*)a4 + 0x10);
        d2 = (uint8_t)d1;
        d1 = (uint8_t)d2;
        d0 += d1;                                  // add.l d1, d0
        
        void* a0 = (void*)*(uint32_t*)((uint8_t*)a6 - 0x3efa); // movea.l $ffffc106(a6), a0
        d0 = *(uint32_t*)((uint8_t*)a0 + d0 * 4);             // move.l (a0, d0.l * 4), d0 (Lookup costo base)
        
        d1 = *(uint16_t*)((uint8_t*)a4 + 0xc);                // move.w $c(a4), d1 (Moltiplicatore/Lunghezza)
        d1 *= 100;                                            // mulu.l #$64, d1
        d0 *= d1;                                             // mulu.l d1, d0
        d0 >>= 8;                                             // lsr.l #8, d0
        
        *(uint32_t*)&local_00[0x0] = d0;                      // move.l d0, (a7)
    }

// loc_6fb8:
    d0 = *(uint32_t*)&local_00[0x0]; // move.l (a7), d0
    
    // EPILOGUE
    // lea.l $e(a7), a7
    // movem.l -$1c(a5), d2/d4-d5/a0/a2-a4
    // unlk a5
    // rts
    
    return d0;
}
