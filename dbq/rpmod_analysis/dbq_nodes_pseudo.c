#include <stdint.h>

// Note: A6 funge da Global Data Pointer (GDP). 
// L'accesso a variabili globali è indicato come *(tipo*)(A6 + offset)

// =====================================================================
// 1. Node Pointer Resolver
// Linee: 20340 - 20345 (Indirizzi: 00fdbe - 00fdd2)
// =====================================================================
uint32_t node_pointer_resolver_00fdbe(uint32_t arg_d0) 
{
    // Azzera il flag o byte globale all'offset -0x6840 dal Global Data Pointer
    *(uint8_t*)((uint8_t*)a6 - 0x6840) = 0;
    
    // Ritorna il codice 0x1F3 (che potrebbe indicare un errore o uno stato specifico)
    return 0x1f3;
}


// =====================================================================
// 2. Node Validator (Main wrapper + 2 subroutines)
// Wrapper (Linee: 23217 - 23225 / Indirizzi: 0120a6 - 0120c0)
// Subroutines (Linee: 23175 - 23187 / Indirizzi: 01202a - 01204e)
// =====================================================================

// System Trap definition (OS-9 style o OpenCarin RTOS)
extern uint32_t trap_0_syscall(uint16_t syscall_num, void* a0, void* a1, uint32_t* out_d1);

void sub_01202a() 
{
    // lea.l $11fde(pc), a1
    void* handler_ptr = (void*)(pc + 0x11fde);
    goto execute_trap;
}

void sub_012034() 
{
    // lea.l $12004(pc), a1
    void* handler_ptr = (void*)(pc + 0x12004);

execute_trap:
    void* a0 = 0; // suba.l a0, a0
    uint32_t d1_out;
    
    // trap #0; .dc.w $000e (Probabile installazione Trap Handler / Exception Vector)
    uint32_t carry_flag = trap_0_syscall(0x000E, a0, handler_ptr, &d1_out);
    
    // Se la syscall fallisce (carry flag impostato, bcc non salta)
    if (carry_flag) {
        // Salva l'error code globale in A6
        *(uint32_t*)((uint8_t*)a6 - 0x7ff4) = d1_out;
        // Ritorna (d0) = 0xFFFFFFFF
    }
}

void node_validator_wrapper_0120a6(uint32_t arg_d0) 
{
    // Salva il parametro nel Global Data Pointer
    *(uint32_t*)((uint8_t*)a6 - 0x70f2) = arg_d0;
    
    if (arg_d0 != 0) {
        sub_012034();
    } else {
        sub_01202a();
    }
}


// =====================================================================
// 3. Restriction Check (Funzione complessa)
// Linee: 12775 - 12890 (Indirizzi: 00a118 - 00a27c)
// =====================================================================
uint32_t restriction_check_00a118(uint32_t arg_d0, uint32_t arg_d1, void* arg_stk1_24, uint32_t arg_stk2_28) 
{
    // allocazione stack e salvataggio registri (d0-d1/d4-d5/a0/a2-a3)
    uint8_t local_00[0x12];
    void* a2 = arg_stk1_24; // Parametro passato sullo stack
    void* a3 = 0;
    
    // Chiama routine esterna 10828 passando local_00 come buffer
    uint32_t d4 = sub_10828(arg_d0, &local_00[0]);
    if (d4 != 0x1f3) {
        goto loc_a26e; // Errore o fine prematura
    }
    
    // Estrazione arc record
    uint32_t d0 = *(uint16_t*)((uint8_t*)arg_d0 + 6);
    d0 += arg_stk2_28; // add.l $6(a7), d0 (parametro dello stack)
    a3 = (void*)d0;
    
    // Legge S0.FLAGS a 0x11
    uint32_t d1 = 0xf & *(uint8_t*)((uint8_t*)a3 + 0x11);
    
    if (d1 != 0) 
    {
        // Se non è zero, controlla l'upper nibble di 0x11
        d1 = 0xf0 & *(uint8_t*)((uint8_t*)a3 + 0x11);
        d1 >>= 4;
        if (d1 != 4) {
            goto loc_a1aa; // branch a1aa
        }
    } 
    else 
    {
        // Se è zero, controlla upper nibble di 0x10
        d1 = 0x70 & *(uint8_t*)((uint8_t*)a3 + 0x10);
        d1 >>= 4;
        if (d1 == 5) {
            goto loc_a1aa; // branch a1aa
        }
        
        // Verifica complessa (sub_11ace)
        if (sub_11ace(a2, arg_d0) == 0) {
            goto loc_a23c;
        }
        
        uint32_t d5 = 0;
        *(uint32_t*)&local_00[0xa] = *(uint32_t*)arg_d0;       // copia campi puntatore
        *(uint32_t*)&local_00[0xe] = *(uint32_t*)((uint8_t*)arg_d0 + 4);
        goto loc_a260;
    }

loc_a1aa:
    uint32_t d5 = 1;

loc_a260:
    if (d5 == 0) {
        // Chiamata a sub_c7a6 con parametri pushati
        d4 = sub_c7a6(arg_d0, &local_00[0x8], &local_00[0x12], &local_00[0x1c], 1);
        if (d4 != 0x1f3) goto loc_a266;
        
        // Check campi 
        if (*(uint16_t*)&local_00[0x10] != *(uint16_t*)((uint8_t*)arg_d0 + 6)) goto loc_a1fe;
        if (*(uint16_t*)&local_00[0xe] != *(uint16_t*)((uint8_t*)arg_d0 + 4)) goto loc_a1fe;
        if (*(uint32_t*)&local_00[0xa] == *(uint32_t*)arg_d0) goto loc_a1aa;
    }

loc_a1fe:
    // ... continua logica di restrizione arco / node evaluation ...
    d0 = *(uint16_t*)&local_00[0x10] + arg_stk2_28;
    a3 = (void*)d0;
    
    d1 = 0xf & *(uint8_t*)((uint8_t*)a3 + 0x11);
    if (d1 == 0) goto loc_a22c;
    
    d1 = 0xf0 & *(uint8_t*)((uint8_t*)a3 + 0x11);
    d1 >>= 4;
    if (d1 != 4) goto loc_a24c;
    
loc_a22c:
    if (sub_11ace(a2, &local_00[0xa]) != 0) goto loc_a260;
    
loc_a23c:
    sub_1091e(&local_00[0]);
    return 0x1f2; // Fallimento o status speciale
    
loc_a24c:
    d0 = *(uint16_t*)&local_00[0x18];
    if (d0 != *(uint16_t*)a3) {
        *(uint16_t*)&local_00[0x18] = *(uint16_t*)((uint8_t*)a3 + 2);
    } else {
        *(uint16_t*)&local_00[0x18] = *(uint16_t*)a3;
    }
    goto loc_a260;

loc_a266:
    sub_1091e(&local_00[0]);

loc_a26e:
    return d4;
}


// =====================================================================
// 4. Special Arc Handler (Getter)
// Linee: 22865 - 22871 (Indirizzi: 011c92 - 011ca8)
// =====================================================================
uint32_t special_arc_handler_011c92(void* arg_d0) 
{
    // Legge semplicemente un puntatore o valore a offset 0xC dall'oggetto passato in D0
    void* a2 = arg_d0;
    return *(uint32_t*)((uint8_t*)a2 + 0xc);
}
