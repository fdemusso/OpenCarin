"""
Script to clean and structure the Ghidra-decompiled C output of pbp_m68k.bin.
Translates OS-9 A6 global data offsets to OS9_GDA buffer accesses,
fixes Ghidra syntax artifacts, and annotates CF1 decoder functions.
"""

import re
import sys

def clean_pbp_c(input_path: str, output_path: str):
    with open(input_path, "r", encoding="utf-8", errors="ignore") as f:
        src = f.read()

    # 1. Rimuovi header grezzo di Ghidra (fino alla prima funzione o variabile)
    # Cerchiamo il punto in cui iniziano le stringhe/funzioni
    first_func_or_var = re.search(r'(string\s+s_|void\s+FUN_|undefined\s+FUN_)', src)
    if first_func_or_var:
        body = src[first_func_or_var.start():]
    else:
        body = src

    # 2. Correzione identificatori illegali in C generati da Ghidra
    body = re.sub(r'LAB_00008000\+1', 'LAB_00008001', body)
    body = re.sub(r'LAB_00000038\+1', 'LAB_00000039', body)
    body = re.sub(r'LAB_00000004\+2', 'LAB_00000006', body)

    # 3. Trasformazione accessi A6 (Global Data Pointer OS-9)
    # Esempio: *(uint *)(unaff_A6 + -0x7ff0) -> *(uint *)(&gda->buffer[0x8000 - 0x7ff0])
    body = re.sub(
        r'\*\(([a-zA-Z0-9_\* ]+)\)\s*\(unaff_A6\s*\+\s*-0x([0-9a-fA-F]+)\)',
        r'*(\1)(&gda->buffer[0x8000 - 0x\2])',
        body
    )
    # Indirizzi scalari o puntatori: unaff_A6 + -0x7ffc
    body = re.sub(
        r'unaff_A6\s*\+\s*-0x([0-9a-fA-F]+)',
        r'((intptr_t)&gda->buffer[0x8000 - 0x\1])',
        body
    )

    # 4. Dichiarazioni non necessarie di unaff_A6 all'interno delle funzioni
    # Possiamo commentarle se non più usate o lasciarle come placeholder
    body = re.sub(r'\bint\s+unaff_A6;\n', '  // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]\n', body)

    # 5. Header pulito e strutturato
    clean_header = """/*
 * OpenCarin - pbp (Position Base Process / CF1 Map & Network Decoder)
 * Decompiled from Motorola 68000 binary: dbq/pbp_m68k.bin
 * Target RTOS: Microware OS-9 / 68k (v3.0+)
 *
 * Cleaned and annotated for OpenCarin Project.
 */

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

// ============================================================================
// OS-9 Global Data Area (GDA / GDP via registro A6)
// In OS-9/68k, A6 punta all'area dati del processo. Gli offset negativi
// (-0x8000 .. -0x6B8C) contengono lo stack check, PID, descrittori e buffer CF1.
// ============================================================================

typedef struct {
    uint32_t offset_8000;
    uint32_t offset_7FFC;    // Mem limit per stack check
    uint32_t offset_7FF8;    // Stack low watermark
    uint32_t intercept_code; // -0x7FF4
    uint32_t pid;            // -0x7FF0
    uint32_t offset_7FEC;
    uint16_t offset_7FE8;
    void*    ext_module;     // -0x78FE
    uint8_t  buffer[0x8000]; // Spazio indirizzabile GDA da A6-0x8000 in poi
} OS9_GDA;

extern OS9_GDA* gda;

// Tipi Ghidra mappati su standard C99
typedef uint8_t   undefined;
typedef uint8_t   undefined1;
typedef uint16_t  undefined2;
typedef uint32_t  undefined4;
typedef uint64_t  undefined8;
typedef uint8_t   byte;
typedef uint16_t  ushort;
typedef uint16_t  word;
typedef uint32_t  uint;
typedef char*     string;
typedef void*     BADSPACEBASE;

// Macro ausiliarie Ghidra
#define CONCAT44(hi, lo) ((((uint64_t)(hi)) << 32) | (((uint64_t)(lo)) & 0xFFFFFFFFULL))
#define CONCAT22(hi, lo) ((((uint32_t)(hi)) << 16) | (((uint32_t)(lo)) & 0xFFFFU))
#define CONCAT11(hi, lo) ((((uint16_t)(hi)) << 8)  | (((uint16_t)(lo)) & 0xFFU))

// Chiamate di sistema e stub OS-9
#define __m68k_trap(v)       /* OS-9 Trap Call (0: Kernel Syscall, 13: TrapLib/MathLib) */
#define halt_baddata()       /* Ghidra control flow stub */
#define halt_unimplemented() /* Ghidra unimplemented instruction stub */
#define register0x0000003c   ((BADSPACEBASE*)0)

// Dichiarazioni globali esterne
extern string s_/pipe/pbp_req_0000170e;
extern byte DAT_00007b73;
extern byte LAB_00002002;
extern undefined LAB_00008001;
extern undefined1 LAB_00000039;

// ============================================================================
// OS-9 Module Entry Point (cstart) - Offset 0x0000004c
// ============================================================================
/**
 * @brief Inizializzazione runtime OS-9 (cstart)
 * Configura il Global Data Area (GDA), registra il PID e salta a main() [FUN_0000014e].
 */
void FUN_0000004c(void)
{
    // Inizializza i puntatori di stack e watermark di memoria
    *(uint32_t *)(&gda->buffer[0x8000 - 0x7ff0]) = 0; // PID
    *(uint32_t *)(&gda->buffer[0x8000 - 0x7fec]) = 0;
    *(uint16_t *)(&gda->buffer[0x8000 - 0x7fe8]) = 0;
    
    // Chiama il punto di ingresso dell'applicazione (main)
    // FUN_0000014e();
}

"""

    # 6. Annotazioni per i decodificatori CF1 noti
    # FUN_0000363a: Decoder CF1 Blocchi 0x14, 0x15, 0x16
    body = body.replace(
        "undefined8 FUN_0000363a(short param_1)",
        """/**
 * @brief CF1 Block Decoder for Road Network & Geometry (Types 0x14, 0x15, 0x16)
 * @param param_1 Block Type (0x14, 0x15, 0x16)
 * Decodes network topology, coordinates and section descriptors using bitstream unpacker.
 */
undefined8 FUN_0000363a(short param_1)"""
    )

    # FUN_00004278: Decoder delle sezioni
    body = body.replace(
        "void FUN_00004278(short param_1,uint param_2)",
        """/**
 * @brief CF1 Record Section Decoder
 * @param param_1 Record / Section length
 * @param param_2 Section kind (0x1d, 0x20, 0x22, etc.)
 */
void FUN_00004278(short param_1,uint param_2)"""
    )

    # FUN_00004d66: Bitstream reader (getbits)
    body = body.replace(
        "short FUN_00004d66(void)",
        """/**
 * @brief CF1 Bitstream - Read N Bits (getbits)
 * @return Decoded integer value
 */
short FUN_00004d66(void)"""
    )

    # FUN_00004e54: Bitstream reader (getbit)
    body = body.replace(
        "int FUN_00004e54(void)",
        """/**
 * @brief CF1 Bitstream - Read Single Bit (getbit)
 * @return 0 or 1
 */
int FUN_00004e54(void)"""
    )

    # FUN_00004e9c: Read byte
    body = body.replace(
        "undefined1 FUN_00004e9c(void)",
        """/**
 * @brief CF1 Bitstream - Read Raw Byte
 */
undefined1 FUN_00004e9c(void)"""
    )

    # FUN_00004eae: Read word
    body = body.replace(
        "undefined2 FUN_00004eae(void)",
        """/**
 * @brief CF1 Bitstream - Read Raw 16-bit Word
 */
undefined2 FUN_00004eae(void)"""
    )

    full_output = clean_header + body

    with open(output_path, "w", encoding="utf-8") as f:
        f.write(full_output)

    print(f"Salvataggio completato in: {output_path} ({len(full_output)} bytes)")


if __name__ == "__main__":
    in_file = sys.argv[1] if len(sys.argv) > 1 else "dbq/pbp_m68k.bin.c"
    out_file = sys.argv[2] if len(sys.argv) > 2 else "dbq/pbp_clean.c"
    clean_pbp_c(in_file, out_file)
