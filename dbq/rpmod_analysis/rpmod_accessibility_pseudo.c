// File: rpmod_accessibility_pseudo.c
// Funzioni di accessibilità, check FLAGS, e letture arc[2] in rpmod.asm

#include <stdint.h>

#define NULL ((void*)0)

// Helper OS-9/Global fittizi per leggibilità
extern void* a6; // Global Data Pointer
extern void* jsr_neg73c6(void* arg, void* gdp);
extern uint32_t jsr_neg73ae(uint32_t global_id, void* arc, void* gdp);
extern uint32_t sub_0168e(void* arc);

// =====================================================================
// 1. IL "TRAVERSABLE CHECK" (can_traverse / is_one_way)
// Indirizzo: 0x004360
// =====================================================================
uint32_t can_traverse_004360(void* arc_ptr, void* block_base) 
{
    // Risolve il puntatore dell'arco all'interno del blocco
    uint32_t offset = *(uint16_t*)((uint8_t*)arc_ptr + 6);
    void* arc_record = (uint8_t*)block_base + offset;
    
    // Check 1: offset 0x10 (Lower nibble)
    uint8_t flag10_lower = *(uint8_t*)((uint8_t*)arc_record + 0x10) & 0x0F;
    if (flag10_lower == 6) {
        return 0; // 0 = ARCO NON PERCORRIBILE (es. Senso vietato)
    }
    
    // Check 2: offset 0x11 (Lower nibble)
    uint8_t flag11_lower = *(uint8_t*)((uint8_t*)arc_record + 0x11) & 0x0F;
    if (flag11_lower != 3 && flag11_lower != 4) {
        return 1; // 1 = ARCO PERCORRIBILE
    }
    
    // Se flag11_lower è 3 o 4, controlla l'upper nibble all'offset 0x11
    uint8_t flag11_upper = (*(uint8_t*)((uint8_t*)arc_record + 0x11) & 0xF0) >> 4;
    if (flag11_upper != 4) {
        return 0; // ARCO NON PERCORRIBILE
    }
    
    return 1; // ARCO PERCORRIBILE
}

// =====================================================================
// 2. FUNZIONI DI VALIDAZIONE DEL NODO ($776, $7ac, $7ea)
// Indirizzi: 0x000776, 0x0007ac, 0x0007ea
// =====================================================================

// Controlla la restrizione/accessibilità del NODO associato all'arco A
uint32_t is_arc_accessible_000776(void* arc_A) 
{
    // Risolve il nodo associato all'arco tramite la Global Dispatch Table
    void* node_ptr = jsr_neg73c6(arc_A, a6); 
    
    if (node_ptr != NULL) {
        // Ottiene i dati del nodo
        void* node_info = jsr_neg73c6(node_ptr, a6);
        
        // Controlla la restrizione del NODO al byte 8
        if (*(uint8_t*)((uint8_t*)node_info + 8) != 0) {
            return 0; // NODO INTERDETTO
        }
    }
    
    // Check aggiuntivo specifico di 776
    if (sub_0168e(arc_A) == 0) return 0;
    
    return 1; // ACCESSIBILE
}

// Praticamente identica a 776, ma con check di validazione esterno alla fine
uint32_t is_arc_accessible_0007ac(void* arc_A) 
{
    void* node_ptr = jsr_neg73c6(arc_A, a6); 
    
    if (node_ptr != NULL) {
        void* node_info = jsr_neg73c6(node_ptr, a6);
        if (*(uint8_t*)((uint8_t*)node_info + 8) != 0) {
            return 0; // NODO INTERDETTO
        }
    }
    
    // Controlla arc_A contro un ID Globale
    uint32_t global_id_A = *(uint32_t*)((uint8_t*)a6 - 0x6f76); 
    if (jsr_neg73ae(global_id_A, arc_A, a6) == 0) {
        return 0;
    }
    return 1; // ACCESSIBILE
}

// Wrapper principale per determinare l'applicazione di penalità
uint32_t turn_penalty_check_0007ea(void* arc_B, void* arc_A) 
{
    // Check flag globale per disabilitazione penalità
    uint32_t penalty_disabled = *(uint32_t*)((uint8_t*)a6 - 0x3ed0); // ffffc130(a6)
    if (penalty_disabled == 1) return 0; 
    
    // Verifica accessibilità dell'arco di ingresso
    if (is_arc_accessible_0007ac(arc_A) == 0) return 0; 
    
    // Verifica l'arco di uscita contro una restrizione di svolta globale
    uint32_t expected_target_node = *(uint32_t*)((uint8_t*)a6 - 0x6f72);
    if (jsr_neg73ae(expected_target_node, arc_B, a6) == 0) return 0;
    
    return 1; // Ritorna 1 -> Applica la penalità di svolta in sub_0066de
}


// =====================================================================
// 3. ESTRAZIONE DELLA COSTANTE arc[+2] IN sub_006eae (callee di 66de)
// Indirizzo: 0x006eae
// =====================================================================
uint32_t extract_cost_from_list_006eae(void* current_list_ptr, uint16_t elements_count) 
{
    // Questo snippet rappresenta la parte interna del loop di sub_006eae 
    // per la gestione degli archi con flag 0xE / 0xF.
    
    uint32_t element_size = *(uint16_t*)((uint8_t*)a6 - 0x7ebe); // Grandezza elemento lista
    
    while (elements_count > 0) {
        void* list_element = current_list_ptr;
        
        if (*(uint8_t*)((uint8_t*)list_element + 1) == 5) { 
            // Elemento trovato! Legge l'offset +2
            uint32_t d0 = *(uint16_t*)((uint8_t*)list_element + 2); 
            return d0 * 0x3c00; // Usa questo come costo base/distanza
        }
        
        current_list_ptr = (uint8_t*)current_list_ptr + element_size;
        elements_count--;
    }
    
    // Se non trovato, default (ffffa580)
    return *(uint32_t*)((uint8_t*)a6 - 0x5a80);
}
