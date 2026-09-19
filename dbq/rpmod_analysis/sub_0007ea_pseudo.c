// Phase 4: Pseudo-C Decompilation of sub_0007ea and sub_0007ac
// Address: 0007ea (Called from sub_0066de)
// Address: 0007ac (Called from sub_0007ea)
// Note: Entrambe le funzioni delegano i check reali a call esterne (dispatch table a6).

// ==========================================
// CONTROL FLOW GRAPH (CFG)
// ==========================================
// sub_0007ea (Start: 0007ea, End: 000820)
//   - Calls:
//       bsr.w $87e0 @ 0007f2
//       bsr.b $7ac @ 000800  (sub_0007ac)
//       jsr -$73ae(a6) @ 000810
//
// sub_0007ac (Start: 0007ac, End: 0007e8)
//   - Calls:
//       jsr -$73c6(a6) @ 0007b4
//       jsr -$73c6(a6) @ 0007bc
//       jsr -$73ae(a6) @ 0007d2
// ==========================================

// Helper function that just returns a global flag
uint32_t sub_0087e0() {
    // move.l $ffffc130(a6), d0
    return *(uint32_t*)((uint8_t*)a6 - 0x3ed0); 
}

// Funzione helper per validare arc_A
uint32_t sub_0007ac(void* arc_A) 
{
    // 1. Chiamata indiretta per ottenere un puntatore associato (es. Node A / C dell'arco)
    void* node_ptr = jsr_neg73c6(arc_A, a6); // jsr -$73c6(a6)
    
    if (node_ptr != NULL) {
        // 2. Seconda chiamata indiretta (es. ottiene le info del nodo)
        void* node_info = jsr_neg73c6(node_ptr, a6);
        
        // Controlla un flag del nodo (es. limitazione o attraversamento)
        if (*(uint8_t*)((uint8_t*)node_info + 8) != 0) { // tst.b $8(a0)
            return 0; // Fallimento / Penalità non applicabile o vietata
        }
    }
    
    // 3. Controlla arc_A contro un ID Globale (es. node_via o restriction ID)
    uint32_t global_id_A = *(uint32_t*)((uint8_t*)a6 - 0x6f76); // move.l $ffff908a(a6), d0
    
    // Chiamata di validazione esterna
    uint32_t res = jsr_neg73ae(global_id_A, arc_A, a6);
    
    if (res == 0) {
        return 0;
    }
    return 1;
}

// Funzione principale richiesta
uint32_t sub_0007ea(void* arc_B, void* arc_A) 
{
    // PROLOGUE
    // link.w a5, #$0
    // movem.l d0-d1, -(a7) // Saves arc_B in (a7), arc_A in 4(a7)
    
    // 1. Controllo flag globale abilitazione penalità
    if (sub_0087e0() == 1) { // cmp.l d0, d1 dove d1=1
        goto loc_81c; // return 0;
    }
    
    // 2. Controllo su arc_A
    if (sub_0007ac(arc_A) == 0) {
        goto loc_81c; // return 0;
    }
    
    // 3. Controllo su arc_B contro un altro ID Globale
    uint32_t global_id_B = *(uint32_t*)((uint8_t*)a6 - 0x6f72); // move.l $ffff908e(a6), d0
    
    // Stessa chiamata di validazione usata per arc_A, ma su arc_B e con global_id_B
    uint32_t res = jsr_neg73ae(global_id_B, arc_B, a6);
    
    if (res == 0) {
        goto loc_81c; // return 0;
    }

// loc_818:
    // Entrambi gli archi sono validati rispetto ai global ID
    // Ritorna 1 (Applica penalità extra in sub_0066de)
    return 1;

loc_81c:
    return 0;
}
