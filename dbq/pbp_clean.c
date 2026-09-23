/*
 * OpenCarin - pbp (Position Base Process / CF1 Map & Network Decoder)
 * Decompiled from Motorola 68000 binary: dbq/pbp_m68k.bin
 * Target RTOS: Microware OS-9 / 68k (v3.0+)
 *
 * Cleaned and annotated for OpenCarin Project. zona degradata tra 0x7a4c e 0x7b60 era solo la tabella delle funzioni di libreria C/matematica di base di OS-9 (TrapLib)
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

string s_/pipe/pbp_req_0000170e;
undefined FUN_00000000;
undefined LAB_00008001;
byte DAT_00007b73;
undefined1 LAB_00000039;
byte LAB_00002002;

// WARNING: Control flow encountered unimplemented instructions

void FUN_00000000(void)

{
                    // WARNING: Unimplemented instruction - Truncating control flow here
  halt_unimplemented();
}



// WARNING: Control flow encountered bad instruction data

void FUN_0000014e(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined1 auStack_fc [244];
  undefined4 uStack_8;
  undefined4 local_4;
  
  *(int *)(&gda->buffer[0x8000 - 0x7ffc]) = ((intptr_t)&gda->buffer[0x8000 - 0x6b8c]);
  *(BADSPACEBASE **)(&gda->buffer[0x8000 - 0x8000]) = register0x0000003c;
  *(BADSPACEBASE **)(&gda->buffer[0x8000 - 0x7ff8]) = register0x0000003c;
  if (*(undefined1 **)(&gda->buffer[0x8000 - 0x7ff8]) <= auStack_fc) {
    return;
  }
  if (*(undefined1 **)(&gda->buffer[0x8000 - 0x7ffc]) <= auStack_fc) {
    *(undefined1 **)(&gda->buffer[0x8000 - 0x7ff8]) = auStack_fc;
    return;
  }
  local_4 = 0x184;
  FUN_00000194();
  local_4 = 0x101;
  uStack_8 = 0x194;
  FUN_0000853e();
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00000194(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Instruction at (ram,0x00000286) overlaps instruction at (ram,0x00000284)
// 

undefined8 FUN_000001b6(short param_1)

{
  ushort uVar1;
  undefined4 in_D0;
  undefined4 in_D1;
  byte unaff_D6b;
  undefined1 *extraout_A0;
  undefined1 *extraout_A0_00;
  undefined1 *puVar2;
  int in_A1;
  int extraout_A1;
  undefined1 *extraout_A1_00;
  bool bVar3;
  undefined8 uVar4;
  
  uVar1 = (short)(param_1 + -0x80) >> 2;
  if (uVar1 == 0xf) {
    __m68k_trap(0);
    *(byte *)(in_A1 + -1) = *(byte *)(in_A1 + -1) | 0xc;
  }
  bVar3 = uVar1 < 0xf;
  FUN_00008548();
  puVar2 = extraout_A0;
  if (!bVar3) {
    return CONCAT44(in_D0,in_D1);
  }
  while( true ) {
    FUN_00000194(puVar2);
    FUN_00000286();
    FUN_00000286();
    FUN_00000286();
    *(undefined1 *)(extraout_A1 + -1) = 0xd;
    uVar4 = FUN_00000194();
    __m68k_trap(0);
    unaff_D6b = unaff_D6b | 0xd8;
    if (unaff_D6b == 0) break;
    puVar2 = extraout_A0_00 + 1;
    *extraout_A1_00 = *extraout_A0_00;
  }
  return uVar4;
}



void FUN_00000286(void)

{
  char cVar1;
  char *in_A0;
  char *in_A1;
  
  do {
    cVar1 = *in_A0;
    *in_A1 = cVar1;
    in_A0 = in_A0 + 1;
    in_A1 = in_A1 + 1;
  } while (cVar1 != '\0');
  return;
}



void FUN_0000028c(void)

{
  switchD_000002f6::caseD_3();
  return;
}



void FUN_000002ae(int param_1)

{
  int unaff_D4;
  
  for (; unaff_D4 < (int)(uint)*(ushort *)(param_1 + 0xc); unaff_D4 = unaff_D4 + 1) {
  }
  switchD_000002f6::caseD_3();
  return;
}



void switchD_000002f6::caseD_3(void)

{
  return;
}



void FUN_0000031c(void)

{
  undefined4 in_D0;
  int iVar1;
  
  FUN_00007a84();
  iVar1 = FUN_0000326e();
  if (iVar1 != 0) {
    FUN_00002c98(iVar1);
    func_0x00007aa0();
  }
  FUN_00007a84(in_D0);
  iVar1 = FUN_0000326e();
  if (iVar1 != 0) {
    FUN_000020cc(iVar1);
    func_0x00007aa0();
  }
  return;
}



void FUN_000003a2(void)

{
  char *pcVar1;
  int in_D0;
  uint uVar2;
  int in_D1;
  int iVar3;
  undefined1 local_20 [8];
  int local_18;
  
  local_18 = in_D1;
  for (iVar3 = 1; iVar3 < in_D0; iVar3 = iVar3 + 1) {
    pcVar1 = *(char **)(local_18 + iVar3 * 4);
    if (*pcVar1 == '-') {
      if (pcVar1[1] == 'L') {
        if (pcVar1[2] == 'P') {
          func_0x00007ab4(local_20);
          FUN_000069ec();
          uVar2 = FUN_00006a32();
          if ((uVar2 & 1) == 0) {
            FUN_0000187e();
          }
          else {
            FUN_0000186c();
          }
        }
      }
      else if (pcVar1[1] == 'o') {
        FUN_0000324e();
      }
    }
  }
  return;
}



undefined4 FUN_0000042a(void)

{
  undefined4 uVar1;
  char cVar5;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined1 auStack_120 [4];
  undefined4 local_11c;
  undefined4 local_118;
  undefined4 local_114;
  int local_110;
  undefined4 local_10c;
  undefined2 local_108;
  undefined1 local_106;
  undefined1 uStack_105;
  undefined2 uStack_104;
  undefined2 local_102;
  undefined2 uStack_100;
  undefined2 local_fe;
  short sStack_fc;
  int local_fa;
  short local_f6;
  undefined2 uStack_f4;
  undefined2 local_f2;
  int local_f0;
  int local_e8;
  int local_d8;
  int local_d4;
  int local_d0;
  int local_cc;
  undefined4 local_c8;
  ushort local_c4;
  short local_c2;
  int local_c0;
  int local_bc [39];
  undefined4 local_20;
  int local_1c;
  
  local_20 = 0xffffffff;
  FUN_00006e20();
  FUN_000003a2();
  FUN_00001120();
  cVar5 = FUN_000015ee();
  if (cVar5 == '\0') {
    *(undefined1 *)(&gda->buffer[0x8000 - 0x6c56]) = 1;
    FUN_00001890();
  }
  FUN_00004eee(0x16);
  do {
    if (*(char *)(&gda->buffer[0x8000 - 0x6c56]) != '\0') {
      FUN_00004fd4();
      cVar5 = FUN_000016e0();
      if (cVar5 == '\0') {
        FUN_00001890();
      }
      return 0;
    }
    FUN_00002cc2();
    if (local_f0 == 0) {
      FUN_00007f3a();
      FUN_00006b00();
    }
    while ((iVar3 = FUN_00007e4e(), 0 < iVar3 && (5 < local_d4 - local_d8))) {
      local_1c = func_0x00007ad8(0xb0);
      if (local_1c != 0xb0) {
        FUN_00007304(0x119);
        FUN_0000732a();
      }
      FUN_0000028c();
      switch(local_d0) {
      case 3:
        local_e8 = local_f0;
        while (iVar3 = FUN_00005280(), iVar3 != 0) {
          FUN_00000954();
          FUN_00005254();
        }
        FUN_00000cca();
        break;
      case 4:
        FUN_000009d6();
        break;
      case 5:
      case 6:
      case 0xe:
        for (iVar3 = 0; iVar3 < (int)(uint)local_c4; iVar3 = iVar3 + 1) {
          uStack_104 = (undefined2)((uint)local_cc >> 0x10);
          local_102 = (undefined2)local_cc;
          uStack_f4 = (undefined2)((uint)local_c8 >> 0x10);
          local_f2 = (undefined2)local_c8;
          local_106 = local_d0 == 6;
          uStack_100 = (undefined2)((uint)local_d0 >> 0x10);
          local_fe = (undefined2)local_d0;
          sStack_fc = (&local_c2)[iVar3 * 4];
          local_fa = local_bc[iVar3 * 2 + -1];
          local_f6 = *(short *)(local_bc + iVar3 * 2);
          cVar5 = FUN_00002b6a(auStack_120,local_cc,local_c8);
          if (cVar5 == '\0') {
            local_e8 = local_f0;
            while (puVar4 = (undefined4 *)FUN_00005280(), puVar4 != (undefined4 *)0x0) {
              if (*(short *)((int)puVar4 + 10) < sStack_fc) {
                local_11c = *puVar4;
                local_118 = puVar4[1];
                local_114 = puVar4[2];
                local_110 = puVar4[3];
                local_10c = puVar4[4];
                local_108 = *(undefined2 *)(puVar4 + 5);
                *puVar4 = CONCAT22(CONCAT11(local_106,uStack_105),uStack_104);
                puVar4[1] = CONCAT22(local_102,uStack_100);
                puVar4[2] = CONCAT22(local_fe,sStack_fc);
                puVar4[3] = local_fa;
                puVar4[4] = CONCAT22(local_f6,uStack_f4);
                *(undefined2 *)(puVar4 + 5) = local_f2;
                local_106 = (undefined1)((uint)local_11c >> 0x18);
                uStack_105 = (undefined1)((uint)local_11c >> 0x10);
                uStack_104 = (undefined2)local_11c;
                local_102 = (undefined2)((uint)local_118 >> 0x10);
                uStack_100 = (undefined2)local_118;
                local_fe = (undefined2)((uint)local_114 >> 0x10);
                sStack_fc = (short)local_114;
                local_f6 = (short)((uint)local_10c >> 0x10);
                uStack_f4 = (undefined2)local_10c;
                local_fa = local_110;
                local_f2 = local_108;
              }
            }
            iVar2 = FUN_00005086();
            if (iVar2 == 0) {
              FUN_00007304(0x11a);
              FUN_0000732a();
            }
          }
          else if (CONCAT22(uStack_100,local_fe) != 0xe) {
            local_106 = 0;
            FUN_000008dc();
          }
        }
        break;
      default:
        FUN_00007304(0x11f);
        FUN_0000732a();
        break;
      case 8:
        local_e8 = local_f0;
        while (iVar3 = FUN_00005280(), iVar3 != 0) {
          FUN_00000954();
          FUN_00005254();
        }
        *(undefined1 *)(&gda->buffer[0x8000 - 0x6c56]) = 1;
        break;
      case 10:
        local_e8 = local_f0;
        while (iVar3 = FUN_00005280(), iVar3 != 0) {
          if (local_cc == *(int *)(iVar3 + 2)) {
            FUN_00000954();
            FUN_00005254();
          }
        }
        FUN_000009a0();
        break;
      case 0xb:
        FUN_00001854();
        FUN_0000031c();
        break;
      case 0xc:
        FUN_00000dae();
        break;
      case 0xd:
        local_e8 = local_f0;
        while (iVar3 = FUN_00005280(), iVar3 != 0) {
          if (local_cc == *(int *)(iVar3 + 2)) {
            FUN_00000954();
            FUN_00005254();
          }
        }
        uStack_100 = (undefined2)((uint)local_d0 >> 0x10);
        local_fe = (undefined2)local_d0;
        uStack_104 = (undefined2)((uint)local_cc >> 0x10);
        local_102 = (undefined2)local_cc;
        local_fa = 0;
        FUN_00000954();
      }
    }
LAB_00000856:
  } while (local_f0 == 0);
  local_e8 = local_f0;
  puVar4 = (undefined4 *)FUN_00005280();
  uVar1 = *puVar4;
  local_106 = (undefined1)((uint)uVar1 >> 0x18);
  uStack_105 = (undefined1)((uint)uVar1 >> 0x10);
  uStack_104 = (undefined2)uVar1;
  local_102 = (undefined2)((uint)puVar4[1] >> 0x10);
  uStack_100 = (undefined2)puVar4[1];
  local_fe = (undefined2)((uint)puVar4[2] >> 0x10);
  sStack_fc = (short)puVar4[2];
  local_fa = puVar4[3];
  local_f6 = (short)((uint)puVar4[4] >> 0x10);
  uStack_f4 = (undefined2)puVar4[4];
  local_f2 = *(undefined2 *)(puVar4 + 5);
  do {
    FUN_000008dc();
    FUN_00005254();
    do {
      iVar3 = FUN_00005280();
      if (iVar3 == 0) goto LAB_00000856;
    } while (((local_f6 != *(short *)(iVar3 + 0x10)) || (local_fa != *(int *)(iVar3 + 0xc))) ||
            (CONCAT22(uStack_f4,local_f2) != *(int *)(iVar3 + 0x12)));
  } while( true );
}



void FUN_000008dc(void)

{
  undefined1 *in_D0;
  
  FUN_00000e4c(*(undefined4 *)(in_D0 + 2),*in_D0);
  if (*(int *)(in_D0 + 6) != 0xe) {
    FUN_0000241a();
  }
  return;
}



void FUN_00000954(void)

{
  int in_D0;
  
  if (*(int *)(in_D0 + 6) != 0xe) {
    FUN_0000241a(*(undefined4 *)(in_D0 + 6));
  }
  return;
}



void FUN_000009a0(void)

{
  FUN_0000241a(10);
  FUN_000022da();
  return;
}



void FUN_000009d6(void)

{
  FUN_0000233c();
  FUN_0000241a();
  return;
}



int FUN_00000a1a(int param_1)

{
  int iVar1;
  int *in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_14;
  
  local_14 = 0;
  iVar1 = FUN_00001f4a();
  *in_D1 = iVar1;
  if (*in_D1 == -1) {
    FUN_00001890();
    local_14 = 4;
  }
  else {
    iVar1 = FUN_00001a1a();
    *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fd6]) + param_1 * 4) = *in_D1 + iVar1;
    iVar1 = FUN_00001266(0xffffffff,param_1);
    if (iVar1 != 0) {
      FUN_00001890();
      local_14 = iVar1;
    }
  }
  return local_14;
}



undefined8 FUN_00000abc(void)

{
  int in_D0;
  char cVar1;
  undefined4 in_D1;
  int extraout_A0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined6 uVar2;
  int local_20;
  
  uVar2 = FUN_000024e2();
  *(short *)(extraout_A0 + 4 + (int)uVar2) = (short)((uint6)uVar2 >> 0x20);
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fe2]) + in_D0 * 6) = 1;
  local_20 = FUN_00000a1a(in_D0);
  if (local_20 == 0) {
    if ((*(ushort *)(*(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fd6]) + in_D0 * 4) + 2) & 0xff) !=
        (*(ushort *)(((intptr_t)&gda->buffer[0x8000 - 0x7fe0]) + in_D0 * 6) & 0xff)) {
      *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fe2]) + in_D0 * 6) =
           **(undefined4 **)(((intptr_t)&gda->buffer[0x8000 - 0x7fd6]) + in_D0 * 4);
      FUN_00001fba();
      local_20 = FUN_00000a1a(in_D0);
      if (local_20 != 0) goto LAB_00000bc2;
    }
    if ((-1 < *(int *)(&gda->buffer[0x8000 - 0x6c62])) || (local_20 = FUN_0000233c(), local_20 == 0)) {
      cVar1 = FUN_000027fe(*(undefined4 *)(&gda->buffer[0x8000 - 0x6c62]),1,in_D0);
      if (cVar1 == '\0') {
        FUN_00001fba();
        FUN_00001890();
        local_20 = 4;
      }
      else {
        if ((in_D0 == 0) &&
           ((*(ushort *)(*(int *)(&gda->buffer[0x8000 - 0x7fd6]) + 0x1a) < 0xe ||
            (0x16 < *(ushort *)(*(int *)(&gda->buffer[0x8000 - 0x7fd6]) + 0x1a))))) {
          FUN_00001890();
        }
        if (in_D0 == 0) {
          FUN_00003482();
        }
        else if (in_D0 == 1) {
          FUN_00003546();
        }
        local_20 = 0;
      }
      goto LAB_00000c80;
    }
    FUN_00001fba();
  }
LAB_00000bc2:
  FUN_00001890();
LAB_00000c80:
  return CONCAT44(local_20,in_D1);
}



void FUN_00000c8c(void)

{
  char cVar1;
  
  cVar1 = FUN_00002912();
  if (cVar1 == '\0') {
    FUN_00001890();
  }
  return;
}



void FUN_00000cca(void)

{
  int in_D0;
  char cVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  uint uVar2;
  
  if ((*(char *)(in_D0 + 0xaa) == '\0') && (*(char *)(&gda->buffer[0x8000 - 0x6c5e]) == '\0')) {
    uVar2 = 0;
    FUN_00001254();
    FUN_00001890();
  }
  else {
    if (*(char *)(&gda->buffer[0x8000 - 0x6c5e]) == '\0') {
      FUN_00000c8c();
    }
    else {
      *(undefined1 *)(&gda->buffer[0x8000 - 0x6c5e]) = 0;
    }
    if (*(char *)(&gda->buffer[0x8000 - 0x6c5d]) != '\0') {
      FUN_00000c8c();
      *(undefined1 *)(&gda->buffer[0x8000 - 0x6c5d]) = 0;
    }
    FUN_000024fc();
    FUN_00001a2a();
    FUN_00001150();
    cVar1 = FUN_00000dea(0);
    if (cVar1 != '\x01') {
      FUN_00001890();
    }
    uVar2 = (uint)(cVar1 != '\x01');
    if (*(char *)(in_D0 + 0x59) != '\0') {
      FUN_00000dea(1);
      *(undefined1 *)(&gda->buffer[0x8000 - 0x6c5d]) = 1;
    }
  }
  FUN_0000241a(3,uVar2);
  return;
}



void FUN_00000dae(void)

{
  FUN_00001244();
  FUN_00001890();
  FUN_0000241a(0xc);
  return;
}



char FUN_00000dea(void)

{
  int iVar1;
  char local_15;
  
  local_15 = FUN_0000118e();
  if (local_15 == '\x01') {
    iVar1 = FUN_00000abc();
    if (iVar1 != 0) {
      FUN_00001890();
      local_15 = '\0';
    }
  }
  else {
    FUN_00001890();
  }
  return local_15;
}



int FUN_00000e4c(undefined4 param_1,undefined1 param_2,undefined4 param_3)

{
  int *in_D0;
  undefined4 uVar1;
  char cVar3;
  int iVar2;
  int *in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  int local_1c;
  int local_18;
  int *local_10;
  
  local_18 = 0;
  local_1c = 0;
  local_10 = in_D1;
  if (*(int *)(&gda->buffer[0x8000 - 0x6c5c]) == 0) {
    uVar1 = FUN_0000694e(4);
    *(undefined4 *)(&gda->buffer[0x8000 - 0x6c5c]) = uVar1;
    if (*(int *)(&gda->buffer[0x8000 - 0x6c5c]) == 0) {
      FUN_00007304(300);
      FUN_0000732a();
    }
  }
  cVar3 = FUN_000024bc();
  if (cVar3 == '\0') {
    local_18 = 7;
    FUN_00007a84((int)*(short *)(in_D0 + 1),*in_D0,param_1);
    FUN_00001890();
  }
  else {
    if (((*in_D0 & 0xff) == 0) || (0x20 < ((ushort)*in_D0 & 0xff))) {
      local_18 = 2;
    }
    else {
      cVar3 = FUN_00002b6a(&local_1c,param_1,param_3);
      if ((cVar3 == '\0') && (local_18 = FUN_00001266(param_1,param_3), local_18 == 0)) {
        FUN_00003602();
        local_1c = FUN_00001f4a();
        if (local_1c == -1) {
          local_18 = 4;
        }
        else {
          FUN_00001a1a();
          FUN_0000363a();
          iVar2 = FUN_00001a1a();
          if (*(int *)(local_1c + iVar2) == *in_D0) {
            FUN_000027fe(param_1,param_2,param_3);
          }
          else {
            FUN_00001fba();
            local_18 = 3;
          }
        }
      }
    }
    *local_10 = local_1c;
  }
  return local_18;
}



void FUN_00001120(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_10;
  
  for (local_10 = 0; local_10 < 2; local_10 = local_10 + 1) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fc6]) + local_10 * 4) = 0xffffffff;
  }
  return;
}



void FUN_00001150(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_10;
  
  for (local_10 = 0; local_10 < 2; local_10 = local_10 + 1) {
    FUN_00007af4();
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fc6]) + local_10 * 4) = 0xffffffff;
  }
  return;
}



bool FUN_0000118e(void)

{
  undefined4 in_D0;
  undefined4 uVar1;
  int in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  bool bVar2;
  
  if (*(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fc6]) + in_D1 * 4) != -1) {
    FUN_00007af4();
  }
  uVar1 = func_0x00007ac4();
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fc6]) + in_D1 * 4) = uVar1;
  bVar2 = *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fc6]) + in_D1 * 4) != -1;
  if (bVar2) {
    *(undefined1 *)(&gda->buffer[0x8000 - 0x6c58]) = 1;
    FUN_00007a84(in_D0);
    FUN_00001890();
  }
  else {
    FUN_00007a84(in_D0,*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]));
    FUN_00001890();
  }
  return bVar2;
}



void FUN_00001244(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(undefined1 *)(&gda->buffer[0x8000 - 0x6c58]) = 0;
  return;
}



void FUN_00001254(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(undefined1 *)(&gda->buffer[0x8000 - 0x6c58]) = 1;
  return;
}



undefined4 FUN_00001266(undefined4 param_1,int param_2)

{
  uint uVar1;
  uint *in_D0;
  int iVar2;
  int iVar3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_30;
  undefined4 local_20;
  
  if (*(char *)(&gda->buffer[0x8000 - 0x6c58]) == '\x01') {
    if ((param_2 == 1) && (*(int *)(&gda->buffer[0x8000 - 0x7fc2]) == -1)) {
      local_30 = 10;
    }
    else {
      FUN_000017a0();
      for (local_20 = 0; local_20 < 5; local_20 = local_20 + 1) {
        uVar1 = *in_D0;
        iVar2 = func_0x00007ae8(0);
        if (iVar2 == -1) {
          FUN_00007a84((uVar1 >> 8) << 0xb,*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]),param_1);
LAB_00001422:
          FUN_00001890();
        }
        else {
          iVar2 = (*in_D0 & 0xff) << 0xb;
          iVar3 = func_0x00007ad8(iVar2);
          if (iVar3 == iVar2) {
            local_30 = 0;
            break;
          }
          if (iVar3 != -1) {
            FUN_00007a84(*in_D0 >> 8,(ushort)*in_D0 & 0xff,iVar3,param_1);
            goto LAB_00001422;
          }
          FUN_00007a84(*in_D0 >> 8,(ushort)*in_D0 & 0xff,*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]),param_1
                      );
          FUN_00001890();
          if (*(int *)(&gda->buffer[0x8000 - 0x7ff4]) == 0xd2) {
            FUN_00007a84();
            FUN_00001890();
            FUN_00007304(0xfa);
            FUN_0000732a();
          }
        }
        local_30 = 8;
      }
      FUN_000017b8();
    }
  }
  else {
    local_30 = 5;
  }
  return local_30;
}



undefined1 FUN_000015b8(void)

{
  char cVar1;
  undefined1 local_9;
  
  local_9 = 1;
  FUN_000022ae();
  cVar1 = FUN_00002680();
  if (cVar1 != '\0') {
    cVar1 = FUN_00001b6a();
    if (cVar1 != '\0') goto LAB_000015e0;
  }
  local_9 = 0;
LAB_000015e0:
  FUN_00001744();
  return local_9;
}



undefined8 FUN_000015ee(void)

{
  int *in_D0;
  int iVar1;
  undefined4 uVar2;
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  char local_11;
  
  FUN_00006ade();
  iVar1 = func_0x00007abc(3,0x400);
  *in_D0 = iVar1;
  if (*in_D0 == -1) {
    FUN_00007a84(s__pipe_pbp_req_0000170e,*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]));
    FUN_00001890();
    local_11 = '\0';
  }
  else {
    local_11 = FUN_000015b8();
  }
  if (local_11 == '\x01') {
    FUN_000084b0();
    FUN_000071ec();
    uVar2 = FUN_000083f2();
    uVar2 = CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  else {
    FUN_000084b0();
    FUN_000071ec();
    FUN_000083f2();
    uVar2 = 0;
  }
  return CONCAT44(uVar2,in_D1);
}



void FUN_000016c4(void)

{
  FUN_00002786();
  FUN_00001c4a();
  FUN_00001150();
  FUN_00001854();
  return;
}



undefined4 FUN_000016e0(void)

{
  FUN_000016c4();
  FUN_00006af2();
  return 1;
}



void FUN_00001744(void)

{
  int iVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (*(int *)(&gda->buffer[0x8000 - 0x6c4e]) == -1) {
    FUN_00006bd8();
  }
  iVar1 = FUN_0000326e();
  *(int *)(&gda->buffer[0x8000 - 0x6c52]) = iVar1;
  if (iVar1 != 0) {
    FUN_00007a80(*(undefined4 *)(&gda->buffer[0x8000 - 0x6c4e]));
    FUN_00007a80();
  }
  return;
}



void FUN_000017a0(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (*(char *)(&gda->buffer[0x8000 - 0x6c54]) == '\x01') {
    FUN_00006c6a();
  }
  return;
}



void FUN_000017b8(void)

{
  undefined4 uVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined1 local_28 [4];
  undefined1 local_24 [20];
  
  if (*(char *)(&gda->buffer[0x8000 - 0x6c54]) == '\x01') {
    FUN_00006c9a(local_24,local_28);
    if (*(int *)(&gda->buffer[0x8000 - 0x6c52]) == 0) {
      uVar1 = FUN_0000326e();
      *(undefined4 *)(&gda->buffer[0x8000 - 0x6c52]) = uVar1;
    }
    if (*(int *)(&gda->buffer[0x8000 - 0x6c52]) != 0) {
      FUN_00007a80();
    }
  }
  return;
}



void FUN_00001854(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  func_0x00007aa0();
  *(undefined4 *)(&gda->buffer[0x8000 - 0x6c52]) = 0;
  return;
}



void FUN_0000186c(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(undefined1 *)(&gda->buffer[0x8000 - 0x6c54]) = 1;
  return;
}



void FUN_0000187e(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  FUN_00001854();
  *(undefined1 *)(&gda->buffer[0x8000 - 0x6c54]) = 0;
  return;
}



void FUN_00001890(void)

{
  char in_D1b;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_28;
  undefined4 local_24 [3];
  int local_18;
  
  if (in_D1b == '\x01') {
    FUN_00007a7c();
  }
  local_18 = FUN_0000326e();
  if (local_18 != 0) {
    if (*(char *)(&gda->buffer[0x8000 - 0x6c4a]) == '\x01') {
      *(undefined1 *)(&gda->buffer[0x8000 - 0x6c4a]) = 0;
      if (*(int *)(&gda->buffer[0x8000 - 0x6c4e]) == -1) {
        FUN_00006bd8();
      }
      FUN_00007a80(*(undefined4 *)(&gda->buffer[0x8000 - 0x6c4e]));
      FUN_00006c6a();
    }
    FUN_00006c9a(local_24,&local_28);
    FUN_00007a80(local_24[0],local_28);
    func_0x00007aa0();
  }
  return;
}



undefined4 FUN_00001a1a(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  return *(undefined4 *)(&gda->buffer[0x8000 - 0x72be]);
}



void FUN_00001a2a(void)

{
  int iVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  for (iVar1 = 0; iVar1 < *(int *)(&gda->buffer[0x8000 - 0x72b6]); iVar1 = iVar1 + 1) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + iVar1 * 8) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + iVar1 * 8) = 0xffffffff;
  }
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + *(int *)(&gda->buffer[0x8000 - 0x72b6]) * 8) = 0;
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + *(int *)(&gda->buffer[0x8000 - 0x72b6]) * 8) = 0xa0;
  for (iVar1 = 0; iVar1 < 0xc0; iVar1 = iVar1 + 1) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7ebe]) + iVar1 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + iVar1 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + iVar1 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + iVar1 * 0x10) = 0xffffffff;
  }
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ebe]) = 0;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7eba]) = *(undefined4 *)(&gda->buffer[0x8000 - 0x72b6]);
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7eb6]) = 0x20;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7eb2]) = 0xffffffff;
  for (iVar1 = 0x20; iVar1 < 0xa0; iVar1 = iVar1 + 0x20) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7ebe]) + iVar1 * 0x10) = 0;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + iVar1 * 0x10) = *(undefined4 *)(&gda->buffer[0x8000 - 0x72b6]);
    *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + iVar1 * 0x10) = iVar1 + 0x20;
    *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + iVar1 * 0x10) = iVar1 + -0x20;
  }
  *(undefined4 *)(&gda->buffer[0x8000 - 0x74be]) = 0;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x74ba]) = *(undefined4 *)(&gda->buffer[0x8000 - 0x72b6]);
  *(undefined4 *)(&gda->buffer[0x8000 - 0x74b6]) = 0xffffffff;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x74b2]) = 0x80;
  return;
}



// WARNING: Removing unreachable block (ram,0x00001c28)

undefined8 FUN_00001b6a(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_14;
  
  iVar1 = FUN_0000748c(((intptr_t)&gda->buffer[0x8000 - 0x72ba]),((intptr_t)&gda->buffer[0x8000 - 0x72be]));
  if (iVar1 == -1) {
    FUN_00007a84(*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]));
    FUN_00001890();
    uVar2 = 0;
  }
  else {
    if (*(int *)(&gda->buffer[0x8000 - 0x72be]) % 4 != 0) {
      FUN_00001890();
    }
    local_14 = 0;
    while (((int)local_14 < 4 && (*(int *)(&gda->buffer[0x8000 - 0x72be]) % 4 != 0))) {
      local_14 = local_14 + 1;
      *(int *)(&gda->buffer[0x8000 - 0x72be]) = *(int *)(&gda->buffer[0x8000 - 0x72be]) + 1;
    }
    if (*(int *)(&gda->buffer[0x8000 - 0x72be]) % 4 != 0) {
      FUN_00001890();
    }
    *(undefined4 *)(&gda->buffer[0x8000 - 0x72b6]) = 0;
    local_14 = 0x20;
    while (1 < local_14) {
      local_14 = (int)local_14 >> 1;
      *(int *)(&gda->buffer[0x8000 - 0x72b6]) = *(int *)(&gda->buffer[0x8000 - 0x72b6]) + 1;
    }
    FUN_00001a2a();
    uVar2 = 1;
  }
  return CONCAT44(uVar2,in_D1);
}



void FUN_00001c4a(void)

{
  int iVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  iVar1 = FUN_0000759e();
  if (iVar1 == -1) {
    FUN_00007a84(*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]));
    FUN_00001890();
  }
  return;
}



int FUN_00001c9a(void)

{
  int iVar1;
  int in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  iVar1 = *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D0 * 8);
  if (*(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D0 * 8) == *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + in_D0 * 8)) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D0 * 8) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + in_D0 * 8) = 0xffffffff;
  }
  else {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D0 * 8) =
         *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + iVar1 * 0x10);
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D0 * 8) * 0x10) =
         0xffffffff;
  }
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + iVar1 * 0x10) = 0xffffffff;
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + iVar1 * 0x10) = 0xffffffff;
  return iVar1;
}



void FUN_00001d2c(void)

{
  int in_D0;
  int in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7ebe]) + in_D0 * 0x10) = 0;
  *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + in_D0 * 0x10) = in_D1;
  if (*(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D1 * 8) == -1) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + in_D0 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + in_D0 * 0x10) = 0xffffffff;
    *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D1 * 8) = in_D0;
  }
  else {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + in_D0 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + in_D0 * 0x10) =
         *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + in_D1 * 8);
    *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + in_D1 * 8) * 0x10) = in_D0;
  }
  *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + in_D1 * 8) = in_D0;
  return;
}



void FUN_00001dcc(void)

{
  int in_D0;
  int in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (in_D0 == *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D1 * 8)) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + in_D1 * 8) =
         *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + in_D0 * 0x10);
  }
  else {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + in_D0 * 0x10) * 0x10) =
         *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + in_D0 * 0x10);
  }
  if (in_D0 == *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + in_D1 * 8)) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7fba]) + in_D1 * 8) =
         *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + in_D0 * 0x10);
  }
  else {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + in_D0 * 0x10) * 0x10) =
         *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + in_D0 * 0x10);
  }
  return;
}



undefined8 FUN_00001e5e(void)

{
  ushort in_D0w;
  int iVar1;
  undefined4 in_D1;
  int iVar2;
  int iVar3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_24;
  
  if (0x20 < in_D0w) {
    FUN_00001890();
  }
  iVar3 = -1;
  iVar2 = 0;
  while (iVar3 == -1) {
    if (iVar2 < 1) {
      iVar1 = 1;
    }
    else {
      iVar1 = 2 << (iVar2 - 1U & 0x3f);
    }
    if ((int)(uint)in_D0w <= iVar1) {
      iVar3 = iVar2;
    }
    iVar2 = iVar2 + 1;
  }
  local_24 = -1;
  iVar2 = iVar3;
  while ((iVar2 <= *(int *)(&gda->buffer[0x8000 - 0x72b6]) && (local_24 == -1))) {
    if (*(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7fbe]) + iVar2 * 8) != -1) {
      local_24 = iVar2;
    }
    iVar2 = iVar2 + 1;
  }
  if (local_24 == -1) {
    iVar2 = -1;
  }
  else {
    iVar2 = FUN_00001c9a();
    while (iVar3 < local_24) {
      if (local_24 + -1 < 1) {
        iVar1 = 1;
      }
      else {
        iVar1 = 2 << (local_24 - 2U & 0x3f);
      }
      FUN_00001d2c(iVar2 + iVar1);
      local_24 = local_24 + -1;
    }
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7ebe]) + iVar2 * 0x10) = 1;
    *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + iVar2 * 0x10) = iVar3;
    iVar2 = iVar2 << 0xb;
  }
  return CONCAT44(iVar2,in_D1);
}



undefined8 FUN_00001f4a(void)

{
  undefined2 in_D0w;
  char cVar1;
  undefined4 in_D1;
  int iVar2;
  
  iVar2 = -1;
  do {
    iVar2 = FUN_00001e5e(iVar2);
    if (iVar2 != -1) goto LAB_00001fac;
    cVar1 = func_0x0000227e();
  } while (cVar1 != '\0');
  FUN_00007a84(in_D0w);
  FUN_00001890();
  FUN_0000031c();
LAB_00001fac:
  return CONCAT44(iVar2,in_D1);
}



void FUN_00001fba(void)

{
  int in_D0;
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (in_D0 < 0) {
    in_D0 = in_D0 + 0x7ff;
  }
  uVar4 = in_D0 >> 0xb;
  iVar3 = *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + uVar4 * 0x10);
  if (0 < iVar3) goto LAB_00002086;
  uVar1 = 1;
  while (((uVar1 = uVar4 ^ uVar1, *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7ebe]) + uVar1 * 0x10) == 0 &&
          (iVar3 == *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + uVar1 * 0x10))) &&
         (iVar3 < *(int *)(&gda->buffer[0x8000 - 0x72b6])))) {
    FUN_00001dcc();
    uVar2 = uVar1;
    if ((int)uVar1 < (int)uVar4) {
      uVar2 = uVar4;
      uVar4 = uVar1;
    }
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7ebe]) + uVar4 * 0x10) = 0;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + uVar4 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + uVar4 * 0x10) = 0xffffffff;
    *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + uVar4 * 0x10) = iVar3 + 1;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7ebe]) + uVar2 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb6]) + uVar2 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eb2]) + uVar2 * 0x10) = 0xffffffff;
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + uVar2 * 0x10) = 0xffffffff;
    iVar3 = iVar3 + 1;
    if (iVar3 < 1) {
      uVar1 = 1;
    }
    else {
LAB_00002086:
      uVar1 = 2 << (iVar3 - 1U & 0x3f);
    }
  }
  FUN_00001d2c();
  return;
}



void FUN_000020cc(void)

{
  int iVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  int local_14;
  
  for (local_14 = 0; local_14 < 0xc0; local_14 = local_14 + 1) {
    if (local_14 % 0x10 == 0) {
      FUN_00007a80();
    }
    iVar1 = *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7ebe]) + local_14 * 0x10);
    if ((iVar1 == 0) || (iVar1 != 1)) {
      FUN_00007a80();
    }
    else {
      if (*(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + local_14 * 0x10) < 1) {
        iVar1 = 1;
      }
      else {
        iVar1 = 2 << (*(int *)(((intptr_t)&gda->buffer[0x8000 - 0x7eba]) + local_14 * 0x10) - 1U & 0x3f);
      }
      FUN_00007a80(iVar1);
    }
  }
  FUN_00007a9c();
  return;
}



undefined4 FUN_000022ae(void)

{
  int iVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  for (iVar1 = 0; iVar1 < 0x10; iVar1 = iVar1 + 1) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x72b2]) + iVar1 * 4) = 0xffffffff;
  }
  return 1;
}



void FUN_000022da(void)

{
  int in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (0 < *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x72b2]) + in_D0 * 4)) {
    FUN_00007af4();
  }
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x72b2]) + in_D0 * 4) = 0xffffffff;
  FUN_00007a84(in_D0);
  FUN_00001890();
  return;
}



undefined1 FUN_0000233c(void)

{
  int in_D0;
  int iVar1;
  undefined1 uVar2;
  int *in_D1;
  int iVar3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  for (iVar3 = 0; (iVar3 < 0x10 && (*(int *)(((intptr_t)&gda->buffer[0x8000 - 0x72b2]) + iVar3 * 4) != -1));
      iVar3 = iVar3 + 1) {
  }
  if (iVar3 == 0x10) {
    uVar2 = 6;
  }
  else if (in_D0 == 0) {
    *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x72b2]) + iVar3 * 4) = 0;
    *in_D1 = iVar3;
    uVar2 = 0;
  }
  else {
    iVar1 = func_0x00007ac4();
    if (iVar1 != -1) {
      FUN_00007a84(iVar3,in_D0);
      FUN_00001890();
    }
    else {
      FUN_00007a84(in_D0,*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]));
      FUN_00001890();
    }
    uVar2 = iVar1 == -1;
    *(int *)(((intptr_t)&gda->buffer[0x8000 - 0x72b2]) + iVar3 * 4) = iVar1;
    *in_D1 = iVar3;
  }
  return uVar2;
}



bool FUN_0000241a(void)

{
  int iVar1;
  
  iVar1 = func_0x00007ae0(0x14);
  if (iVar1 != 0x14) {
    FUN_00007304(0x122);
    FUN_0000732a();
  }
  return iVar1 == 0x14;
}



bool FUN_000024bc(void)

{
  short in_D0w;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  return in_D0w == *(short *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 4);
}



undefined2 FUN_000024e2(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  return *(undefined2 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 4);
}



undefined8 FUN_000024fc(void)

{
  short in_D0w;
  undefined4 uVar1;
  undefined4 in_D1;
  uint *puVar2;
  int *piVar3;
  int iVar4;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined1 local_19;
  
  local_19 = 1;
  FUN_000078ec();
  if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 6) != -1) {
    iVar4 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 6);
    *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar4;
    if (iVar4 == -1) {
      iVar4 = 0;
      goto LAB_0000262a;
    }
    iVar4 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 6);
    *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar4;
    goto LAB_0000260e;
  }
  puVar2 = (uint *)0x0;
  do {
    while( true ) {
      if (puVar2 == (uint *)0x0) {
        if (in_D0w == -1) {
          FUN_00005ce2();
          *(undefined2 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 4) = 0xffff;
        }
        else {
          FUN_00005ce2();
          *(short *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 4) = in_D0w;
        }
        uVar1 = FUN_0000791a();
        return CONCAT44(CONCAT31((int3)((uint)uVar1 >> 8),local_19),in_D1);
      }
      if ((*(int *)((int)puVar2 + 10) != 0) || (*(int *)((int)puVar2 + 0xe) != 0)) {
        FUN_00007a84(*puVar2 >> 8);
        FUN_00001890();
        FUN_0000031c();
        local_19 = 0;
      }
      if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) != -1) break;
LAB_000025ac:
      puVar2 = (uint *)0x0;
    }
    if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) == -1) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 6 +
                      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2a) *
                      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) +
                      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x32));
    }
    iVar4 = *piVar3;
    *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar4;
    if (iVar4 == -1) goto LAB_000025ac;
    if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) == -1) {
      iVar4 = 0;
    }
    else {
      iVar4 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe);
LAB_0000260e:
      iVar4 = *(int *)(&gda->buffer[0x8000 - 0x726a]) + 6 +
              *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2a) * iVar4 +
              *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x32);
    }
LAB_0000262a:
    puVar2 = (uint *)(iVar4 + 0x1c);
  } while( true );
}



undefined8 FUN_00002680(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  iVar1 = FUN_0000748c(((intptr_t)&gda->buffer[0x8000 - 0x7272]),((intptr_t)&gda->buffer[0x8000 - 0x726a]));
  if (iVar1 == -1) {
    uVar2 = *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]);
  }
  else {
    iVar1 = FUN_000076d0();
    if (iVar1 != -1) {
      *(undefined4 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x1a) = 0xc0;
      *(undefined4 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x1e) = 0x10;
      *(undefined4 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x22) = 0xf;
      *(undefined4 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x26) = 0x12;
      *(undefined4 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2a) = 0x2e;
      *(undefined4 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2e) = 0x36;
      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x32) =
           *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2e) + 0x40;
      FUN_00005bfa();
      *(undefined2 *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 4) = 0xffff;
      **(undefined4 **)(&gda->buffer[0x8000 - 0x726a]) = *(undefined4 *)(&gda->buffer[0x8000 - 0x7272]);
      FUN_000024fc();
      uVar2 = 1;
      goto LAB_0000277a;
    }
    uVar2 = *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]);
  }
  FUN_00007a84(uVar2);
  FUN_00001890();
  uVar2 = 0;
LAB_0000277a:
  return CONCAT44(uVar2,in_D1);
}



undefined8 FUN_00002786(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  iVar1 = FUN_0000759e();
  if (iVar1 == -1) {
    uVar2 = *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]);
  }
  else {
    iVar1 = FUN_0000787c();
    if (iVar1 != -1) {
      uVar2 = 1;
      goto LAB_000027f4;
    }
    uVar2 = *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]);
  }
  FUN_00007a84(uVar2);
  FUN_00001890();
  uVar2 = 0;
LAB_000027f4:
  return CONCAT44(uVar2,in_D1);
}



undefined4 FUN_000027fe(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  uint *in_D0;
  undefined4 uVar1;
  char cVar2;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_20;
  undefined4 local_1c;
  int local_18;
  
  FUN_000078ec();
  local_18 = FUN_0000600a((int)*(short *)(in_D0 + 1),param_3);
  if ((local_18 == 0) && (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x12) != -1)) {
    local_1c = 0;
    local_20 = 0;
    cVar2 = FUN_0000305a(param_2,*in_D0);
    if (cVar2 == '\0') {
      FUN_00007a84(&local_20,param_2,*(undefined4 *)(&gda->buffer[0x8000 - 0x7266]));
      FUN_00001890();
    }
    FUN_00005e0a(*in_D0 >> 8,(int)*(short *)(in_D0 + 1),param_3);
    FUN_0000791a();
    uVar1 = 1;
  }
  else {
    FUN_00001890();
    FUN_0000791a();
    uVar1 = 0;
  }
  return uVar1;
}



undefined4 FUN_00002912(undefined4 param_1)

{
  int in_D0;
  int iVar1;
  char cVar3;
  undefined4 uVar2;
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  FUN_000078ec();
  iVar1 = FUN_0000600a((int)*(short *)(in_D0 + 4),param_1);
  if (iVar1 == 0) {
    FUN_0000791a();
    uVar2 = 0;
  }
  else {
    cVar3 = FUN_00002fc6();
    if (cVar3 == '\0') {
      FUN_00007a84(iVar1 + 10,in_D1,*(undefined4 *)(&gda->buffer[0x8000 - 0x7266]));
      FUN_00001890();
    }
    FUN_0000791a();
    uVar2 = 1;
  }
  return uVar2;
}



undefined8 FUN_000029b6(void)

{
  bool bVar1;
  undefined4 *in_D0;
  undefined4 uVar2;
  undefined4 in_D1;
  int iVar3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_22;
  undefined1 local_1d;
  
  bVar1 = true;
  local_22 = 0xf;
  FUN_000078ec();
  do {
    if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 10) != -1) {
      iVar3 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 10);
      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar3;
      if (iVar3 != -1) {
        iVar3 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 10);
        *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar3;
        goto LAB_00002aae;
      }
      iVar3 = 0;
      goto LAB_00002aca;
    }
    iVar3 = 0;
    while (iVar3 != 0) {
      if ((*(int *)(iVar3 + 10) == 0) && (*(int *)(iVar3 + 0xe) == 0)) {
        bVar1 = false;
        break;
      }
      if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) == -1) {
LAB_00002a4a:
        iVar3 = 0;
      }
      else {
        if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) == -1) {
          iVar3 = 0;
        }
        else {
          iVar3 = *(int *)(&gda->buffer[0x8000 - 0x726a]) + 6 +
                  *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2a) *
                  *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) +
                  *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x32);
        }
        iVar3 = *(int *)(iVar3 + 4);
        *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar3;
        if (iVar3 == -1) goto LAB_00002a4a;
        if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) == -1) {
          iVar3 = 0;
        }
        else {
          iVar3 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe);
LAB_00002aae:
          iVar3 = *(int *)(&gda->buffer[0x8000 - 0x726a]) + 6 +
                  *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2a) * iVar3 +
                  *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x32);
        }
LAB_00002aca:
        iVar3 = iVar3 + 0x1c;
      }
    }
    local_22 = local_22 + -1;
    if (!bVar1) break;
    FUN_0000791a();
    FUN_0000800c();
    FUN_000078ec();
  } while (0 < local_22);
  if (iVar3 == 0) {
    FUN_0000031c();
    FUN_00001890();
    *in_D0 = 0xffffffff;
  }
  else {
    *in_D0 = *(undefined4 *)(iVar3 + 6);
    FUN_00005eda();
  }
  local_1d = iVar3 != 0;
  uVar2 = FUN_0000791a();
  return CONCAT44(CONCAT31((int3)((uint)uVar2 >> 8),local_1d),in_D1);
}



undefined4 FUN_00002b6a(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  int in_D0;
  int iVar1;
  char cVar2;
  int in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 uVar3;
  int local_1c [2];
  int local_14;
  
  uVar3 = 0;
  local_14 = in_D1;
  FUN_000078ec();
  iVar1 = FUN_0000600a((int)*(short *)(in_D0 + 4),param_3);
  if (iVar1 == 0) {
    FUN_0000791a(0,uVar3);
    uVar3 = 0;
  }
  else {
    cVar2 = FUN_00003006(local_1c);
    if (cVar2 == '\0') {
      FUN_00007a84(iVar1 + 10,param_2,local_1c,*(undefined4 *)(&gda->buffer[0x8000 - 0x7266]));
      FUN_00001890();
    }
    cVar2 = FUN_0000305a(local_14 + local_1c[0]);
    if (cVar2 == '\0') {
      FUN_00007a84(iVar1 + 10,param_2,local_14 + local_1c[0],*(undefined4 *)(&gda->buffer[0x8000 - 0x7266]));
      FUN_00001890();
    }
    *param_1 = *(undefined4 *)(iVar1 + 6);
    FUN_00005e9c();
    FUN_0000791a();
    uVar3 = 1;
  }
  return uVar3;
}



void FUN_00002c98(void)

{
  FUN_00006352(0,0);
  return;
}



// WARNING: Removing unreachable block (ram,0x00002dc6)

void FUN_00002cc2(void)

{
  int iVar1;
  int *piVar2;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  FUN_000078ec();
  if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 6) != -1) {
    iVar1 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 6);
    *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar1;
    if (iVar1 != -1) {
      iVar1 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 6);
      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar1;
      goto LAB_00002d96;
    }
    iVar1 = 0;
    goto LAB_00002db2;
  }
  iVar1 = 0;
  do {
    while( true ) {
      if (iVar1 == 0) {
        FUN_0000791a();
        return;
      }
      if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) != -1) break;
LAB_00002d34:
      iVar1 = 0;
    }
    if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) == -1) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = (int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 6 +
                      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2a) *
                      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) +
                      *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x32));
    }
    iVar1 = *piVar2;
    *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) = iVar1;
    if (iVar1 == -1) goto LAB_00002d34;
    if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe) == -1) {
      iVar1 = 0;
    }
    else {
      iVar1 = *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0xe);
LAB_00002d96:
      iVar1 = *(int *)(&gda->buffer[0x8000 - 0x726a]) + 6 +
              *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x2a) * iVar1 +
              *(int *)(*(int *)(&gda->buffer[0x8000 - 0x726a]) + 0x32);
    }
LAB_00002db2:
    iVar1 = iVar1 + 0x1c;
  } while( true );
}



undefined4 FUN_00002fc6(void)

{
  char cVar2;
  undefined4 uVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  int local_10 [3];
  
  cVar2 = FUN_00003006(local_10);
  if (cVar2 != '\0') {
    if (local_10[0] != 0) {
      local_10[0] = local_10[0] + -1;
      uVar1 = FUN_0000305a(local_10[0]);
      return uVar1;
    }
    *(undefined4 *)(&gda->buffer[0x8000 - 0x7266]) = 2;
  }
  return 0;
}



undefined4 FUN_00003006(uint *param_1)

{
  uint *in_D0;
  undefined4 uVar1;
  uint in_D1;
  uint uVar2;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if ((int)in_D1 < 0x11) {
    if ((int)in_D1 < 8) {
      uVar2 = in_D0[1];
    }
    else {
      in_D1 = in_D1 - 8;
      uVar2 = *in_D0;
    }
    *param_1 = uVar2 >> ((in_D1 & 0xf) << 2) & 0xf;
    uVar1 = 1;
  }
  else {
    *(undefined4 *)(&gda->buffer[0x8000 - 0x7266]) = 2;
    uVar1 = 0;
  }
  return uVar1;
}



undefined4 FUN_0000305a(int param_1)

{
  uint *in_D0;
  undefined4 uVar1;
  uint in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if ((int)in_D1 < 0x11) {
    if ((param_1 < 0x10) && (-1 < param_1)) {
      if ((int)in_D1 < 8) {
        in_D0[1] = param_1 << ((in_D1 & 0xf) << 2) | ~(0xf << ((in_D1 & 0xf) << 2)) & in_D0[1];
      }
      else {
        *in_D0 = param_1 << ((in_D1 - 8 & 0xf) << 2) | ~(0xf << ((in_D1 - 8 & 0xf) << 2)) & *in_D0;
      }
      return 1;
    }
    uVar1 = 2;
  }
  else {
    uVar1 = 1;
  }
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7266]) = uVar1;
  return 0;
}



void FUN_0000324e(void)

{
  undefined4 in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(undefined4 *)(&gda->buffer[0x8000 - 0x6c48]) = in_D0;
  return;
}



undefined4 FUN_0000326e(void)

{
  int iVar1;
  undefined4 uVar2;
  char acStack_61 [93];
  
  FUN_00007bf6();
  iVar1 = FUN_00007bd8();
  if (acStack_61[iVar1] != '/') {
    FUN_00007c12();
  }
  FUN_00007c12();
  uVar2 = FUN_00007a4c();
  return uVar2;
}



void FUN_000032e6(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(undefined2 *)(&gda->buffer[0x8000 - 0x6c44]) = 0;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7258]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x724c]) = 0x6c;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7240]) = 0x34;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7246]) = 0x30;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71e2]) = 6;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x723e]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7250]) = 0x16;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x724e]) = 6;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7252]) = 0x1c;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7242]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7254]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7256]) = 0x10;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x724a]) = 6;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7244]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7248]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x723a]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x723c]) = 6;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7238]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71f6]) = 0x10;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71f0]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71f2]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71f4]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71fc]) = 0x20;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71f8]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71fa]) = 0x10;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71fe]) = 0x10;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71e8]) = 0x2c;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71e4]) = 0x10;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71e6]) = 0x14;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71ec]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71ee]) = 0x10;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71ea]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7212]) = 0xc;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x720e]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7210]) = 0xc;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x720c]) = 0x24;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7206]) = 0x14;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x720a]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7208]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7222]) = 0x28;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7224]) = 0x14;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71e0]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x71de]) = 0x18;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7204]) = 0x1c;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7202]) = 0xc;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7200]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7220]) = 0x10;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x721a]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x721c]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x721e]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7218]) = 0x14;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7214]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7216]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7234]) = 0xcc;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x722e]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7230]) = 0xc0;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7232]) = 0x18;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7236]) = 6;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x722c]) = 0x24;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7228]) = 4;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x722a]) = 0x18;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7226]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x725e]) = 0x10;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x725c]) = 8;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7260]) = 0xc;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x725a]) = 0x1c;
  return;
}



void FUN_00003482(void)

{
  int in_D0;
  int iVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  ushort *puVar2;
  
  *(undefined2 *)(&gda->buffer[0x8000 - 0x6c42]) = *(undefined2 *)(in_D0 + 0x1a);
  *(undefined2 *)(&gda->buffer[0x8000 - 0x6c40]) = *(undefined2 *)(in_D0 + 0x22);
  if (*(short *)(&gda->buffer[0x8000 - 0x6c42]) != *(short *)(&gda->buffer[0x8000 - 0x6c44])) {
    *(undefined2 *)(&gda->buffer[0x8000 - 0x6c44]) = *(undefined2 *)(&gda->buffer[0x8000 - 0x6c42]);
    FUN_000032e6(0,0);
    if ((0x11 < *(ushort *)(&gda->buffer[0x8000 - 0x6c42])) && (*(short *)(in_D0 + 0x2a) != 0)) {
      puVar2 = (ushort *)(in_D0 + (uint)*(ushort *)(in_D0 + 0x28));
      for (iVar1 = 0; iVar1 < (int)(uint)*(ushort *)(in_D0 + 0x2a); iVar1 = iVar1 + 1) {
        if ((*puVar2 < 0x59) && (puVar2[1] != *(ushort *)(((intptr_t)&gda->buffer[0x8000 - 0x7262]) + (uint)*puVar2 * 2)))
        {
          *(ushort *)(((intptr_t)&gda->buffer[0x8000 - 0x7262]) + (uint)*puVar2 * 2) = puVar2[1];
        }
        puVar2 = puVar2 + 2;
      }
    }
  }
  return;
}



void FUN_00003546(void)

{
  int iVar1;
  int in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  int local_20;
  ushort *local_18;
  
  iVar1 = in_D0 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258]);
  local_18 = (ushort *)(in_D0 + (uint)*(ushort *)(iVar1 + 0xc));
  for (local_20 = 0; local_20 < (int)(uint)*(ushort *)(iVar1 + 0xe); local_20 = local_20 + 1) {
    if ((*local_18 < 0xf) && (local_18[1] != *(ushort *)(((intptr_t)&gda->buffer[0x8000 - 0x71b0]) + (uint)*local_18 * 2)))
    {
      *(ushort *)(((intptr_t)&gda->buffer[0x8000 - 0x71b0]) + (uint)*local_18 * 2) = local_18[1];
    }
    local_18 = local_18 + 2;
  }
  return;
}



undefined2 FUN_000035e2(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  return *(undefined2 *)(&gda->buffer[0x8000 - 0x6c42]);
}



undefined2 FUN_000035f2(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  return *(undefined2 *)(&gda->buffer[0x8000 - 0x6c40]);
}



ulonglong FUN_00003602(void)

{
  undefined2 uVar1;
  int in_D0;
  undefined4 in_D1;
  
  if ((*(byte *)(in_D0 + 6) & 1) == 0) {
    uVar1 = *(undefined2 *)(in_D0 + 2);
  }
  else {
    uVar1 = *(undefined2 *)(in_D0 + 6);
  }
  return (ulonglong)(CONCAT24(uVar1,in_D1) & 0xffffffffff);
}



void FUN_0000363a(void)

{
  ushort uVar1;
  uint *in_D0;
  byte bVar2;
  int in_D1;
  
  if ((*(byte *)((int)in_D0 + 6) & 1) == 0) {
    FUN_00007c46((*in_D0 & 0xff) << 0xb);
    return;
  }
  FUN_00004b42();
  uVar1 = *(ushort *)(in_D0 + 1);
  if (uVar1 == 0x14) {
LAB_00003674:
    FUN_00004990();
  }
  else {
    if (uVar1 < 0x15) {
      bVar2 = (byte)uVar1;
      if (bVar2 == 0xe) {
        FUN_000044f8();
        goto LAB_000036ca;
      }
      if ((bVar2 < 0xf) && (bVar2 == 0)) {
        FUN_00003ff2();
        goto LAB_000036ca;
      }
    }
    else if ((uVar1 == 0x16) || ((uVar1 < 0x17 && (uVar1 == 0x15)))) goto LAB_00003674;
    FUN_00007cfe((*in_D0 & 0xff) << 0xb);
  }
LAB_000036ca:
  *(undefined2 *)(in_D1 + 6) = 0;
  return;
}



void FUN_00003710(int param_1)

{
  ushort uVar1;
  ushort uVar2;
  ushort uVar3;
  undefined2 *puVar4;
  int in_D0;
  int iVar5;
  undefined2 uVar6;
  ushort uVar7;
  ushort *in_D1;
  undefined2 *puVar8;
  undefined2 *puVar9;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  uVar1 = *in_D1;
  uVar2 = in_D1[1];
  uVar3 = *(ushort *)(&gda->buffer[0x8000 - 0x71e2]);
  puVar4 = (undefined2 *)(in_D0 + (uint)uVar1);
  puVar9 = (undefined2 *)0x0;
  while (puVar8 = puVar4,
        puVar8 < (undefined2 *)((int)(in_D0 + (uint)uVar1) + (uint)uVar2 * (uint)uVar3)) {
    if (param_1 == 0x14) {
      iVar5 = FUN_00004e54();
      if (iVar5 != 0) {
        FUN_00004d66();
        FUN_00004d66();
      }
      uVar6 = FUN_00004d66();
      *puVar8 = uVar6;
    }
    else if (param_1 == 0x15) {
      iVar5 = FUN_00004e54();
      if (iVar5 == 0) {
        uVar7 = FUN_000035e2();
        if (uVar7 < 0x15) {
          uVar6 = 0;
        }
        else {
          uVar6 = puVar9[1];
        }
      }
      else {
        uVar6 = FUN_00004eae();
      }
      puVar8[1] = uVar6;
    }
    puVar9 = puVar8;
    puVar4 = (undefined2 *)((int)puVar8 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x71e2]));
  }
  return;
}



void FUN_000037c4(void)

{
  ushort uVar1;
  ushort uVar2;
  ushort uVar3;
  undefined2 *puVar4;
  int in_D0;
  int iVar5;
  undefined2 uVar6;
  short sVar7;
  ushort *in_D1;
  undefined2 *puVar8;
  undefined2 *puVar9;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  uVar1 = *in_D1;
  uVar2 = in_D1[1];
  uVar3 = *(ushort *)(&gda->buffer[0x8000 - 0x71e2]);
  puVar4 = (undefined2 *)(in_D0 + (uint)uVar1);
  puVar9 = (undefined2 *)0x0;
  while (puVar8 = puVar4,
        puVar8 < (undefined2 *)((int)(in_D0 + (uint)uVar1) + (uint)uVar2 * (uint)uVar3)) {
    iVar5 = FUN_00004e54();
    if (iVar5 == 0) {
      puVar8[1] = puVar9[1];
      puVar8[2] = puVar9[2];
    }
    else {
      uVar6 = FUN_00004d66();
      puVar8[1] = uVar6;
      sVar7 = FUN_00004d66();
      puVar8[2] = sVar7 << 1;
    }
    uVar6 = FUN_00004d66();
    *puVar8 = uVar6;
    puVar9 = puVar8;
    puVar4 = (undefined2 *)((int)puVar8 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x71e2]));
  }
  return;
}



void FUN_0000384a(void)

{
  ushort uVar1;
  ushort uVar2;
  ushort uVar3;
  undefined2 *puVar4;
  int in_D0;
  int iVar5;
  undefined2 uVar6;
  short sVar7;
  ushort *in_D1;
  undefined2 *puVar8;
  undefined2 *puVar9;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  uVar1 = *in_D1;
  uVar2 = in_D1[1];
  uVar3 = *(ushort *)(&gda->buffer[0x8000 - 0x71e2]);
  puVar4 = (undefined2 *)(in_D0 + (uint)uVar1);
  puVar9 = (undefined2 *)0x0;
  while (puVar8 = puVar4,
        puVar8 < (undefined2 *)((int)(in_D0 + (uint)uVar1) + (uint)uVar2 * (uint)uVar3)) {
    iVar5 = FUN_00004e54();
    if (iVar5 == 0) {
      puVar8[1] = puVar9[1];
      puVar8[2] = puVar9[2];
    }
    else {
      uVar6 = FUN_00004d66();
      puVar8[1] = uVar6;
      sVar7 = FUN_00004d66();
      puVar8[2] = sVar7 << 1;
    }
    uVar6 = FUN_00004d66();
    *puVar8 = uVar6;
    puVar9 = puVar8;
    puVar4 = (undefined2 *)((int)puVar8 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x71e2]));
  }
  return;
}



void FUN_000038d0(int param_1)

{
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  short *psVar4;
  int in_D0;
  undefined1 uVar8;
  undefined2 uVar6;
  int iVar5;
  short sVar7;
  ushort *in_D1;
  short *psVar9;
  short *psVar10;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(&gda->buffer[0x8000 - 0x7252]);
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7192]) = 1;
  *(undefined2 *)(&gda->buffer[0x8000 - 0x7190]) = 1;
  psVar4 = psVar3;
  psVar10 = (short *)0x0;
  while (psVar9 = psVar4, psVar9 < (short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2)) {
    if (param_1 == 0x14) {
      if (psVar9 != psVar3) {
        FUN_00007c46(*(undefined2 *)(&gda->buffer[0x8000 - 0x7252]));
      }
      iVar5 = FUN_00004e54();
      if (iVar5 != 0) {
        sVar7 = FUN_00004d66();
        psVar9[9] = *(short *)(in_D0 + 0x28 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
                    *(short *)(&gda->buffer[0x8000 - 0x723a]) * sVar7;
        sVar7 = FUN_00004d66();
        psVar9[10] = *(short *)(in_D0 + 0x30 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
                     *(short *)(&gda->buffer[0x8000 - 0x7238]) * sVar7;
        sVar7 = FUN_00004d66();
        *(short *)((int)psVar9 + *(ushort *)(&gda->buffer[0x8000 - 0x7250]) + 4) =
             *(short *)(in_D0 + 0x2c + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
             *(short *)(&gda->buffer[0x8000 - 0x723c]) * sVar7;
      }
      iVar5 = FUN_00004e54();
      if (iVar5 != 0) {
        uVar8 = FUN_00004e9c();
        *(undefined1 *)(psVar9 + 5) = uVar8;
        uVar8 = FUN_00004e9c();
        *(undefined1 *)((int)psVar9 + 0xb) = uVar8;
        uVar8 = FUN_00004e9c();
        *(undefined1 *)(psVar9 + 8) = uVar8;
        uVar8 = FUN_00004e9c();
        *(undefined1 *)((int)psVar9 + 0x11) = uVar8;
        uVar6 = FUN_00004eae();
        *(undefined2 *)((int)psVar9 + *(ushort *)(&gda->buffer[0x8000 - 0x7250]) + 2) = uVar6;
      }
      sVar7 = FUN_00004d66();
      *psVar9 = sVar7 << 1;
      sVar7 = FUN_00004d66();
      psVar9[1] = sVar7 << 1;
      iVar5 = FUN_00004e54();
      if (iVar5 != 0) {
        sVar7 = FUN_00004d66();
        *(short *)(&gda->buffer[0x8000 - 0x7192]) =
             *(short *)(in_D0 + 0x1c + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
             *(short *)(&gda->buffer[0x8000 - 0x724a]) * sVar7;
      }
      psVar9[2] = *(short *)(&gda->buffer[0x8000 - 0x7192]);
      sVar7 = FUN_00004d66();
      if (sVar7 == *(short *)(in_D0 + 0x12 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258]))) {
        psVar9[3] = 0;
      }
      else {
        psVar9[3] = sVar7 * *(short *)(&gda->buffer[0x8000 - 0x7252]) +
                    *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258]));
      }
      sVar7 = FUN_00004d66();
      if (sVar7 == *(short *)(in_D0 + 0x12 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258]))) {
        psVar9[4] = 0;
      }
      else {
        psVar9[4] = sVar7 * *(short *)(&gda->buffer[0x8000 - 0x7252]) +
                    *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258]));
      }
      FUN_00004e54();
      sVar7 = FUN_00004d66();
      psVar9[6] = sVar7;
      uVar8 = FUN_00004e9c();
      *(undefined1 *)(psVar9 + 7) = uVar8;
      uVar8 = FUN_00004e9c();
      *(undefined1 *)((int)psVar9 + 0xf) = uVar8;
      iVar5 = FUN_00004e54();
      if (iVar5 != 0) {
        sVar7 = FUN_00004d66();
        *(short *)(&gda->buffer[0x8000 - 0x7190]) =
             *(short *)(in_D0 + 8 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
             *(short *)(&gda->buffer[0x8000 - 0x71e2]) * sVar7;
      }
      *(undefined2 *)((int)psVar9 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7250])) =
           *(undefined2 *)(&gda->buffer[0x8000 - 0x7190]);
    }
    else if (param_1 == 0x15) {
      psVar9[0xb] = 0;
    }
    psVar10 = psVar9;
    psVar4 = (short *)((int)psVar9 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7252]));
  }
  if (param_1 == 0x14) {
    iVar5 = FUN_00004e54();
    if (iVar5 == 0) {
      psVar9[9] = psVar10[9];
      psVar9[10] = psVar10[10];
      *(undefined2 *)((int)psVar9 + *(ushort *)(&gda->buffer[0x8000 - 0x7250]) + 4) =
           *(undefined2 *)((int)psVar10 + *(ushort *)(&gda->buffer[0x8000 - 0x7250]) + 4);
    }
    else {
      sVar7 = FUN_00004d66();
      psVar9[9] = *(short *)(in_D0 + 0x28 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
                  *(short *)(&gda->buffer[0x8000 - 0x723a]) * sVar7;
      sVar7 = FUN_00004d66();
      psVar9[10] = *(short *)(in_D0 + 0x30 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
                   *(short *)(&gda->buffer[0x8000 - 0x7238]) * sVar7;
      sVar7 = FUN_00004d66();
      *(short *)((int)psVar9 + *(ushort *)(&gda->buffer[0x8000 - 0x7250]) + 4) =
           *(short *)(in_D0 + 0x2c + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
           *(short *)(&gda->buffer[0x8000 - 0x723c]) * sVar7;
    }
    iVar5 = FUN_00004e54();
    if (iVar5 != 0) {
      sVar7 = FUN_00004d66();
      *(short *)(&gda->buffer[0x8000 - 0x7192]) =
           *(short *)(in_D0 + 0x1c + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
           *(short *)(&gda->buffer[0x8000 - 0x724a]) * sVar7;
    }
    psVar9[2] = *(short *)(&gda->buffer[0x8000 - 0x7192]);
  }
  else if (param_1 == 0x15) {
    psVar9[0xb] = 0;
  }
  return;
}



void FUN_00003bf0(void)

{
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  short *psVar4;
  int in_D0;
  int iVar5;
  undefined1 uVar7;
  short sVar6;
  ushort *in_D1;
  short extraout_D1w;
  short extraout_D1w_00;
  short *psVar8;
  short *psVar9;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(&gda->buffer[0x8000 - 0x7242]);
  psVar4 = psVar3;
  psVar9 = (short *)0x0;
  do {
    psVar8 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar8) {
      return;
    }
    iVar5 = FUN_00004e54();
    if (iVar5 == 0) {
      *(undefined1 *)(psVar8 + 3) = *(undefined1 *)(psVar9 + 3);
      *(undefined1 *)((int)psVar8 + 7) = *(undefined1 *)((int)psVar9 + 7);
    }
    else {
      uVar7 = FUN_00004e9c();
      *(undefined1 *)(psVar8 + 3) = uVar7;
      uVar7 = FUN_00004e78();
      *(undefined1 *)((int)psVar8 + 7) = uVar7;
    }
    if (psVar8 == psVar3) {
      sVar6 = FUN_00004eae();
      *psVar8 = sVar6;
LAB_00003ca8:
      sVar6 = FUN_00004eae();
      psVar8[1] = sVar6;
    }
    else {
      iVar5 = FUN_00004e54();
      if (iVar5 == 0) {
        sVar6 = FUN_00004d66();
        sVar6 = sVar6 + extraout_D1w;
LAB_00003c96:
        *psVar8 = sVar6;
      }
      else {
        iVar5 = FUN_00004e54();
        if (iVar5 == 0) {
          sVar6 = FUN_00004d66();
          sVar6 = *psVar9 - sVar6;
          goto LAB_00003c96;
        }
        sVar6 = FUN_00004eae();
        *psVar8 = sVar6;
      }
      iVar5 = FUN_00004e54();
      if (iVar5 == 0) {
        sVar6 = FUN_00004d66();
        sVar6 = sVar6 + extraout_D1w_00;
      }
      else {
        iVar5 = FUN_00004e54();
        if (iVar5 != 0) goto LAB_00003ca8;
        sVar6 = FUN_00004d66();
        sVar6 = psVar9[1] - sVar6;
      }
      psVar8[1] = sVar6;
    }
    sVar6 = FUN_00004d66();
    psVar8[2] = *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
                *(short *)(&gda->buffer[0x8000 - 0x7252]) * sVar6;
    psVar4 = (short *)((int)psVar8 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7242]));
    psVar9 = psVar8;
  } while( true );
}



void FUN_00003d16(void)

{
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  short *psVar4;
  int in_D0;
  int iVar5;
  undefined1 uVar9;
  short sVar7;
  undefined4 uVar6;
  undefined2 uVar8;
  ushort *in_D1;
  short extraout_D1w;
  short extraout_D1w_00;
  short *psVar10;
  short *psVar11;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(&gda->buffer[0x8000 - 0x7256]);
  psVar4 = psVar3;
  psVar11 = (short *)0x0;
  do {
    psVar10 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar10) {
      return;
    }
    iVar5 = FUN_00004e54();
    if (iVar5 == 0) {
      *(undefined1 *)(psVar10 + 3) = *(undefined1 *)(psVar11 + 3);
      *(undefined1 *)((int)psVar10 + 7) = *(undefined1 *)((int)psVar11 + 7);
    }
    else {
      uVar9 = FUN_00004e9c();
      *(undefined1 *)(psVar10 + 3) = uVar9;
      uVar9 = FUN_00004e78();
      *(undefined1 *)((int)psVar10 + 7) = uVar9;
    }
    if (psVar10 == psVar3) {
      sVar7 = FUN_00004eae();
      *psVar10 = sVar7;
LAB_00003dce:
      sVar7 = FUN_00004eae();
      psVar10[1] = sVar7;
    }
    else {
      iVar5 = FUN_00004e54();
      if (iVar5 == 0) {
        sVar7 = FUN_00004d66();
        sVar7 = sVar7 + extraout_D1w;
LAB_00003dbc:
        *psVar10 = sVar7;
      }
      else {
        iVar5 = FUN_00004e54();
        if (iVar5 == 0) {
          sVar7 = FUN_00004d66();
          sVar7 = *psVar11 - sVar7;
          goto LAB_00003dbc;
        }
        sVar7 = FUN_00004eae();
        *psVar10 = sVar7;
      }
      iVar5 = FUN_00004e54();
      if (iVar5 == 0) {
        sVar7 = FUN_00004d66();
        sVar7 = sVar7 + extraout_D1w_00;
      }
      else {
        iVar5 = FUN_00004e54();
        if (iVar5 != 0) goto LAB_00003dce;
        sVar7 = FUN_00004d66();
        sVar7 = psVar11[1] - sVar7;
      }
      psVar10[1] = sVar7;
    }
    sVar7 = FUN_00004d66();
    psVar10[2] = *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
                 *(short *)(&gda->buffer[0x8000 - 0x7252]) * sVar7;
    uVar6 = FUN_00004e42();
    *(undefined4 *)((int)psVar10 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7242])) = uVar6;
    FUN_000035f2();
    uVar8 = FUN_00004d66();
    *(undefined2 *)((int)psVar10 + *(ushort *)(&gda->buffer[0x8000 - 0x7242]) + 4) = uVar8;
    psVar4 = (short *)((int)psVar10 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7256]));
    psVar11 = psVar10;
  } while( true );
}



void FUN_00003e68(void)

{
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  short *psVar4;
  int in_D0;
  short sVar6;
  int iVar5;
  undefined1 uVar7;
  ushort *in_D1;
  short extraout_D1w;
  short extraout_D1w_00;
  short *psVar8;
  short *psVar9;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(&gda->buffer[0x8000 - 0x724a]);
  psVar4 = psVar3;
  psVar9 = (short *)0x0;
  do {
    psVar8 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar8) {
      return;
    }
    if (psVar8 == psVar3) {
      sVar6 = FUN_00004eae();
      *psVar8 = sVar6;
LAB_00003eee:
      sVar6 = FUN_00004eae();
      psVar8[1] = sVar6;
    }
    else {
      iVar5 = FUN_00004e54();
      if (iVar5 == 0) {
        sVar6 = FUN_00004d66();
        sVar6 = sVar6 + extraout_D1w;
LAB_00003edc:
        *psVar8 = sVar6;
      }
      else {
        iVar5 = FUN_00004e54();
        if (iVar5 == 0) {
          sVar6 = FUN_00004d66();
          sVar6 = *psVar9 - sVar6;
          goto LAB_00003edc;
        }
        sVar6 = FUN_00004eae();
        *psVar8 = sVar6;
      }
      iVar5 = FUN_00004e54();
      if (iVar5 == 0) {
        sVar6 = FUN_00004d66();
        sVar6 = sVar6 + extraout_D1w_00;
      }
      else {
        iVar5 = FUN_00004e54();
        if (iVar5 != 0) goto LAB_00003eee;
        sVar6 = FUN_00004d66();
        sVar6 = psVar9[1] - sVar6;
      }
      psVar8[1] = sVar6;
    }
    uVar7 = FUN_00004e78();
    *(undefined1 *)(psVar8 + 2) = uVar7;
    psVar4 = (short *)((int)psVar8 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x724a]));
    psVar9 = psVar8;
  } while( true );
}



void FUN_00003f46(void)

{
  undefined2 *puVar1;
  int in_D0;
  undefined2 uVar2;
  ushort *in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined2 *local_14;
  
  local_14 = (undefined2 *)(in_D0 + (uint)*in_D1);
  puVar1 = (undefined2 *)((int)local_14 + (uint)in_D1[1] * (uint)*(ushort *)(&gda->buffer[0x8000 - 0x723c]));
  for (; local_14 < puVar1;
      local_14 = (undefined2 *)((int)local_14 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x723c]))) {
    uVar2 = FUN_00004d66();
    *local_14 = uVar2;
    uVar2 = FUN_00004d66();
    local_14[1] = uVar2;
    uVar2 = FUN_00004e54();
    local_14[2] = uVar2;
  }
  return;
}



void FUN_00003fca(void)

{
  undefined2 *in_D1;
  
  *in_D1 = 0;
  in_D1[1] = 0;
  return;
}



void FUN_00003ff2(void)

{
  int in_D0;
  byte bVar2;
  ushort uVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  FUN_00004b84();
  bVar2 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x718c]) = (uint)bVar2;
  bVar2 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x7188]) = (uint)bVar2;
  bVar2 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x7184]) = (uint)bVar2;
  bVar2 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x717c]) = (uint)bVar2;
  bVar2 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x7180]) = (uint)bVar2;
  bVar2 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x7178]) = (uint)bVar2;
  FUN_00004b84();
  FUN_00004baa(*(undefined2 *)(&gda->buffer[0x8000 - 0x723e]),1);
  FUN_00004baa(*(undefined2 *)(&gda->buffer[0x8000 - 0x7244]),0);
  FUN_00004baa(*(undefined2 *)(&gda->buffer[0x8000 - 0x723a]),0);
  if (*(short *)(in_D0 + 0x32 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) != 0) {
    FUN_00004baa(*(undefined2 *)(&gda->buffer[0x8000 - 0x7238]),0);
  }
  FUN_00004d3e();
  FUN_00003710(0x14);
  FUN_000037c4();
  FUN_0000384a();
  FUN_000038d0(0x14);
  FUN_00003bf0();
  FUN_00003d16();
  FUN_00003e68();
  if (*(short *)(in_D0 + 0x2e + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) != 0) {
    FUN_00003f46();
  }
  FUN_00004c0c();
  uVar1 = FUN_000035e2();
  if (0x14 < uVar1) {
    bVar2 = FUN_00004ec0();
    *(uint *)(&gda->buffer[0x8000 - 0x7174]) = (uint)bVar2;
    FUN_00003710(0x15);
    FUN_000038d0(0x15);
    FUN_00003fca();
  }
  return;
}



/**
 * @brief CF1 Record Section Decoder
 * @param param_1 Record / Section length
 * @param param_2 Section kind (0x1d, 0x20, 0x22, etc.)
 */
void FUN_00004278(short param_1,uint param_2)

{
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  int in_D0;
  short sVar6;
  int iVar4;
  char cVar8;
  undefined1 uVar9;
  int iVar5;
  undefined2 uVar7;
  ushort *in_D1;
  ushort uVar10;
  undefined2 *puVar11;
  undefined2 *puVar12;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (in_D1[1] != 0) {
    uVar2 = in_D1[1];
    uVar1 = *in_D1;
    puVar12 = (undefined2 *)0x0;
    for (uVar10 = *in_D1; uVar10 <= (ushort)(uVar1 + (uVar2 - 1) * param_1);
        uVar10 = param_1 + uVar10) {
      puVar11 = puVar12;
      if (param_2 < 0x100) {
        cVar8 = (char)param_2;
        if (cVar8 == '\x1d') {
          puVar11 = (undefined2 *)(in_D0 + (uint)uVar10);
          uVar7 = FUN_00004d66();
          *puVar11 = uVar7;
          uVar9 = FUN_00004e66();
          *(undefined1 *)(puVar11 + 1) = uVar9;
          cVar8 = FUN_00004e54();
          *(char *)(puVar11 + 1) = cVar8 * '\x10' + *(char *)(puVar11 + 1);
          iVar4 = FUN_00004e54();
          if (iVar4 == 0) {
            *(undefined1 *)((int)puVar11 + 3) = *(undefined1 *)((int)puVar12 + 3);
            puVar11[2] = puVar12[2];
          }
          else {
            uVar9 = FUN_00004e78();
            *(undefined1 *)((int)puVar11 + 3) = uVar9;
            uVar7 = FUN_00004d66();
            puVar11[2] = uVar7;
          }
          sVar6 = FUN_00004d66();
          puVar11[3] = *(short *)(in_D0 + 4 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
                       *(short *)(&gda->buffer[0x8000 - 0x71e0]) * sVar6;
        }
        else if (cVar8 == ' ') {
          psVar3 = (short *)(in_D0 + (uint)uVar10);
          sVar6 = FUN_00004d66();
          *psVar3 = *(short *)(in_D0 + 8 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) +
                    *(short *)(&gda->buffer[0x8000 - 0x71de]) * sVar6;
          iVar4 = FUN_00004e54();
          if (iVar4 == 0) {
            *(undefined1 *)(psVar3 + 1) = 1;
          }
          else {
            cVar8 = FUN_00004d66();
            *(char *)(psVar3 + 1) = cVar8 + '\x02';
          }
          uVar9 = FUN_00004e54();
          *(undefined1 *)((int)psVar3 + 3) = uVar9;
        }
        else if (cVar8 == '\"') {
          iVar4 = in_D0 + (uint)uVar10;
          FUN_00004d66();
          FUN_00007c46(8);
          FUN_00007c46(4);
          iVar5 = FUN_00004e54();
          if (iVar5 == 0) {
            *(undefined2 *)(iVar4 + 8) = 0x7fff;
            *(undefined2 *)(iVar4 + 10) = 0x7fff;
            *(undefined2 *)(iVar4 + 0xc) = 0x7fff;
            *(undefined2 *)(iVar4 + 0xe) = 0x7fff;
          }
          else {
            FUN_00004e54();
            uVar7 = FUN_00004d66();
            *(undefined2 *)(iVar4 + 8) = uVar7;
            FUN_00004e54();
            uVar7 = FUN_00004d66();
            *(undefined2 *)(iVar4 + 10) = uVar7;
            FUN_00004e54();
            uVar7 = FUN_00004d66();
            *(undefined2 *)(iVar4 + 0xc) = uVar7;
            FUN_00004e54();
            uVar7 = FUN_00004d66();
            *(undefined2 *)(iVar4 + 0xe) = uVar7;
          }
          FUN_000035f2();
          uVar7 = FUN_00004d66();
          *(undefined2 *)(iVar4 + 0x14) = uVar7;
          *(short *)(iVar4 + 0x14) = *(short *)(iVar4 + 0x14) << 1;
          uVar7 = FUN_00004d66();
          *(undefined2 *)(iVar4 + 0x16) = uVar7;
        }
      }
      puVar12 = puVar11;
    }
  }
  return;
}



void FUN_000044f8(void)

{
  byte bVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  FUN_00004b84();
  bVar1 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x716e]) = (uint)bVar1;
  bVar1 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x716a]) = (uint)bVar1;
  FUN_00004b84();
  FUN_00004bec();
  bVar1 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x7166]) = (uint)bVar1;
  FUN_00004b84();
  FUN_00004d3e();
  FUN_00004278(*(undefined2 *)(&gda->buffer[0x8000 - 0x7208]),0x1d);
  FUN_00004278(*(undefined2 *)(&gda->buffer[0x8000 - 0x71e0]),0x20);
  FUN_00004278(*(undefined2 *)(&gda->buffer[0x8000 - 0x71de]),0x22);
  FUN_00004c0c();
  return;
}



void FUN_000045f2(short param_1,uint param_2,int param_3)

{
  undefined1 *puVar1;
  undefined2 *puVar2;
  int in_D0;
  short sVar5;
  undefined4 uVar3;
  short sVar6;
  int iVar4;
  undefined1 uVar8;
  undefined2 uVar7;
  ushort *in_D1;
  short extraout_D1w;
  short extraout_D1w_00;
  short extraout_D1w_01;
  short extraout_D1w_02;
  byte bVar9;
  ushort uVar10;
  undefined4 *puVar11;
  short *unaff_A3;
  short *unaff_A4;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  ushort local_2e;
  
  if (in_D1[1] != 0) {
    local_2e = *in_D1 + (in_D1[1] - 1) * param_1;
    bVar9 = (byte)param_2;
    if ((param_2 < 0x100) && (((bVar9 == 0x25 || (bVar9 == 0x26)) || (bVar9 == 0x27)))) {
      local_2e = param_1 + local_2e;
    }
    if (*(short *)(in_D0 + 0x10 +
                  (uint)*(ushort *)(&gda->buffer[0x8000 - 0x71e4]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) ==
        0) {
      sVar5 = 8;
    }
    else {
      sVar5 = 4;
    }
    for (uVar10 = *in_D1; uVar10 <= local_2e; uVar10 = param_1 + uVar10) {
      if (param_2 == 0x26) {
        puVar2 = (undefined2 *)(in_D0 + (uint)uVar10);
        if (param_3 == 0xe) {
          uVar7 = FUN_00004d66();
          *puVar2 = uVar7;
          sVar6 = FUN_00004d66();
          puVar2[1] = sVar5 * sVar6 + extraout_D1w_01;
          FUN_00004e54();
          uVar3 = FUN_00004d66();
          *(undefined4 *)(puVar2 + 2) = uVar3;
          uVar3 = FUN_00004e42();
          *(undefined4 *)(puVar2 + 4) = uVar3;
          uVar3 = FUN_00004e42();
          *(undefined4 *)(puVar2 + 6) = uVar3;
        }
        else if (param_3 == 0x14) {
          sVar6 = FUN_00004d66();
          puVar2[8] = sVar6 << 1;
          FUN_00004e54();
          uVar7 = FUN_00004d66();
          puVar2[9] = uVar7;
        }
      }
      else if (param_2 < 0x27) {
        if (bVar9 == 0xb) {
          puVar11 = (undefined4 *)(in_D0 + (uint)uVar10);
          uVar3 = FUN_00004e42();
          *puVar11 = uVar3;
          uVar3 = FUN_00004e42();
LAB_0000487c:
          puVar11[1] = uVar3;
        }
        else if (bVar9 < 0xc) {
          if (param_2 == 10) {
            unaff_A3 = (short *)(in_D0 + (uint)uVar10);
            if (uVar10 == *in_D1) {
              sVar6 = FUN_00004eae();
              *unaff_A3 = sVar6;
LAB_000046fc:
              sVar6 = FUN_00004eae();
              unaff_A3[1] = sVar6;
            }
            else {
              iVar4 = FUN_00004e54();
              if (iVar4 == 0) {
                sVar6 = FUN_00004d66();
                sVar6 = sVar6 + extraout_D1w;
LAB_000046ea:
                *unaff_A3 = sVar6;
              }
              else {
                iVar4 = FUN_00004e54();
                if (iVar4 == 0) {
                  sVar6 = FUN_00004d66();
                  sVar6 = *unaff_A4 - sVar6;
                  goto LAB_000046ea;
                }
                sVar6 = FUN_00004eae();
                *unaff_A3 = sVar6;
              }
              iVar4 = FUN_00004e54();
              if (iVar4 == 0) {
                sVar6 = FUN_00004d66();
                sVar6 = sVar6 + extraout_D1w_00;
              }
              else {
                iVar4 = FUN_00004e54();
                if (iVar4 != 0) goto LAB_000046fc;
                sVar6 = FUN_00004d66();
                sVar6 = unaff_A4[1] - sVar6;
              }
              unaff_A3[1] = sVar6;
            }
          }
        }
        else if (param_2 == 0x25) {
          puVar1 = (undefined1 *)(in_D0 + (uint)uVar10);
          uVar8 = FUN_00004e8a();
          *puVar1 = uVar8;
          uVar8 = FUN_00004e54();
          puVar1[1] = uVar8;
          sVar6 = FUN_00004d66();
          *(short *)(puVar1 + 2) = sVar6 << 1;
        }
      }
      else if (param_2 == 0x28) {
        if (param_3 == 0x14) {
          puVar2 = (undefined2 *)(in_D0 + (uint)uVar10);
          FUN_00004e54();
          uVar7 = FUN_00004d66();
          *puVar2 = uVar7;
          FUN_00004e54();
          uVar7 = FUN_00004d66();
          puVar2[1] = uVar7;
          FUN_00004e54();
          uVar7 = FUN_00004d66();
          puVar2[2] = uVar7;
        }
      }
      else if ((param_2 < 0x29) && (param_2 == 0x27)) {
        puVar11 = (undefined4 *)(in_D0 + (uint)uVar10);
        if (param_3 == 0xe) {
          uVar7 = FUN_00004d66();
          *(undefined2 *)puVar11 = uVar7;
          sVar6 = FUN_00004d66();
          *(short *)((int)puVar11 + 2) = sVar5 * sVar6 + extraout_D1w_02;
          FUN_00004e54();
          uVar3 = FUN_00004d66();
          goto LAB_0000487c;
        }
        if (param_3 == 0x14) {
          sVar6 = FUN_00004d66();
          *(short *)(puVar11 + 2) = sVar6 << 1;
          FUN_00004e54();
          uVar7 = FUN_00004d66();
          *(undefined2 *)((int)puVar11 + 10) = uVar7;
          *(undefined2 *)((int)puVar11 + 10) = 0;
        }
      }
      unaff_A4 = unaff_A3;
    }
  }
  return;
}



void FUN_00004990(void)

{
  int in_D0;
  byte bVar2;
  ushort uVar1;
  undefined1 uVar3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 uVar4;
  undefined4 uVar5;
  
  FUN_00004b84();
  bVar2 = FUN_00004ec0();
  *(uint *)(&gda->buffer[0x8000 - 0x715c]) = (uint)bVar2;
  FUN_00004b84();
  FUN_00004d3e();
  FUN_000045f2(*(undefined2 *)(&gda->buffer[0x8000 - 0x71ec]),0x25,0xe);
  FUN_000045f2(*(undefined2 *)(&gda->buffer[0x8000 - 0x71ee]),0x26,0xe);
  FUN_000045f2(*(undefined2 *)(&gda->buffer[0x8000 - 0x71ea]),0x27,0xe);
  if (*(short *)(in_D0 + 0x10 +
                (uint)*(ushort *)(&gda->buffer[0x8000 - 0x71e4]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7258])) == 0)
  {
    uVar5 = 0xb;
    uVar4 = 8;
  }
  else {
    uVar5 = 10;
    uVar4 = 4;
  }
  FUN_000045f2(uVar4,uVar5,0xe);
  FUN_00004c0c();
  uVar1 = FUN_000035e2();
  if (0x13 < uVar1) {
    uVar3 = FUN_00004e9c();
    *(undefined1 *)(&gda->buffer[0x8000 - 0x7154]) = uVar3;
    uVar3 = FUN_00004e9c();
    *(undefined1 *)(&gda->buffer[0x8000 - 0x7153]) = uVar3;
    uVar3 = FUN_00004e9c();
    *(undefined1 *)(&gda->buffer[0x8000 - 0x7152]) = uVar3;
    uVar3 = FUN_00004e9c();
    *(undefined1 *)(&gda->buffer[0x8000 - 0x7151]) = uVar3;
    uVar3 = FUN_00004e9c();
    *(undefined1 *)(&gda->buffer[0x8000 - 0x7150]) = uVar3;
    FUN_000045f2(*(undefined2 *)(&gda->buffer[0x8000 - 0x7238]),0x28,0x14);
    FUN_000045f2(*(undefined2 *)(&gda->buffer[0x8000 - 0x71ee]),0x26,0x14);
    FUN_000045f2(*(undefined2 *)(&gda->buffer[0x8000 - 0x71ea]),0x27,0x14);
  }
  return;
}



void FUN_00004b42(void)

{
  int in_D0;
  byte bVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  bVar1 = FUN_00004ec0(*(ushort *)(in_D0 + 6) & 0xff);
  *(uint *)(&gda->buffer[0x8000 - 0x714e]) = (uint)bVar1;
  *(int *)(&gda->buffer[0x8000 - 0x714a]) = in_D0;
  return;
}



void FUN_00004b84(void)

{
  int in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  FUN_00007c46();
  *(int *)(&gda->buffer[0x8000 - 0x714a]) = in_D1 + *(int *)(&gda->buffer[0x8000 - 0x714a]);
  return;
}



void FUN_00004baa(ushort param_1,char param_2)

{
  int iVar1;
  int in_D1;
  
  iVar1 = (uint)*(ushort *)(in_D1 + 2) * (uint)param_1;
  if (param_2 != '\0') {
    iVar1 = (uint)param_1 + iVar1;
  }
  FUN_00004b84(iVar1);
  return;
}



void FUN_00004bec(void)

{
  undefined4 *in_D0;
  int in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *in_D0 = *(undefined4 *)(&gda->buffer[0x8000 - 0x714a]);
  *(int *)(&gda->buffer[0x8000 - 0x714a]) = in_D1 + *(int *)(&gda->buffer[0x8000 - 0x714a]);
  return;
}



void FUN_00004c0c(void)

{
  byte *pbVar1;
  int in_D0;
  byte bVar4;
  uint uVar2;
  byte bVar5;
  uint uVar3;
  char cVar6;
  int iVar7;
  byte *pbVar8;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined5 uVar9;
  byte local_e8 [192];
  ushort local_28;
  ushort local_26;
  int local_24;
  
  local_24 = in_D0;
  local_26 = FUN_00004d66();
  local_28 = FUN_00004d66();
  if ((local_26 != 0) || (local_28 != 0)) {
    pbVar8 = local_e8;
    for (bVar5 = 0; bVar5 < 6; bVar5 = bVar5 + 1) {
      bVar4 = FUN_00004d66();
      *pbVar8 = bVar4;
      for (bVar4 = 0; bVar4 < *pbVar8; bVar4 = bVar4 + 1) {
        uVar9 = FUN_00004e8a();
        pbVar8[(int)uVar9 + 1] = (byte)((uint5)uVar9 >> 0x20);
      }
      pbVar8 = pbVar8 + 0x20;
    }
    uVar2 = (uint)local_28;
    for (pbVar8 = (byte *)(local_24 + (uint)local_26); pbVar8 <= (byte *)(local_24 + uVar2);
        pbVar8 = pbVar8 + 1) {
      uVar3 = FUN_00004e66();
      if (uVar3 < 0x100) {
        cVar6 = (char)uVar3;
        if (cVar6 == '\0') {
          uVar3 = FUN_00004e54();
          iVar7 = ((intptr_t)&gda->buffer[0x8000 - 0x6c3c]);
        }
        else if (cVar6 == '\x01') {
          uVar3 = FUN_00004e66();
          iVar7 = ((intptr_t)&gda->buffer[0x8000 - 0x6c3a]);
        }
        else {
          if (cVar6 != '\x02') goto LAB_00004cac;
          uVar3 = FUN_00004e78();
          iVar7 = ((intptr_t)&gda->buffer[0x8000 - 0x6c36]);
        }
LAB_00004cfe:
        *pbVar8 = *(byte *)(iVar7 + uVar3);
      }
      else {
LAB_00004cac:
        bVar5 = FUN_00004e8a();
        if (bVar5 < 0x27) {
          if (bVar5 < 0x1c) {
            uVar3 = (uint)bVar5;
            iVar7 = ((intptr_t)&gda->buffer[0x8000 - 0x6c2e]);
            goto LAB_00004cfe;
          }
          pbVar1 = local_e8 + (short)(bVar5 - 0x21) * 0x20;
          FUN_00007c46(*pbVar1);
          pbVar8 = pbVar8 + (short)(*pbVar1 - 1);
        }
        else {
          *pbVar8 = bVar5;
        }
      }
    }
  }
  return;
}



void FUN_00004d3e(void)

{
  FUN_00004d52();
  return;
}



void FUN_00004d52(void)

{
  undefined4 in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7142]) = in_D0;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7146]) = 0;
  return;
}



undefined8 FUN_00004d66(void)

{
  byte bVar1;
  byte bVar2;
  uint in_D0;
  undefined4 in_D1;
  uint uVar3;
  int iVar4;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  bVar2 = 8 - (char)(*(int *)(&gda->buffer[0x8000 - 0x7146]) % 8);
  iVar4 = *(int *)(&gda->buffer[0x8000 - 0x7146]);
  if (iVar4 < 0) {
    iVar4 = iVar4 + 7;
  }
  iVar4 = iVar4 >> 3;
  bVar1 = *(byte *)(*(int *)(&gda->buffer[0x8000 - 0x7142]) + iVar4);
  if ((byte)in_D0 < bVar2) {
    uVar3 = *(uint *)(((intptr_t)&gda->buffer[0x8000 - 0x6c12]) + (in_D0 & 0xff) * 4) &
            (uint)(bVar1 >> ((ushort)bVar2 - ((ushort)in_D0 & 0xff) & 0x3f));
  }
  else {
    uVar3 = (uint)bVar1 & *(uint *)(((intptr_t)&gda->buffer[0x8000 - 0x6c12]) + (uint)bVar2 * 4);
    bVar2 = (byte)in_D0 - bVar2;
    while( true ) {
      iVar4 = iVar4 + 1;
      if (bVar2 < 9) break;
      uVar3 = (uint)*(byte *)(*(int *)(&gda->buffer[0x8000 - 0x7142]) + iVar4) + uVar3 * 0x100;
      bVar2 = bVar2 - 8;
    }
    uVar3 = (uint)(*(byte *)(((intptr_t)&gda->buffer[0x8000 - 0x6c0f]) + (uint)bVar2 * 4) &
                  *(byte *)(*(int *)(&gda->buffer[0x8000 - 0x7142]) + iVar4) >> (8 - bVar2 & 0x3f)) +
            (uVar3 << (bVar2 & 0x3f));
  }
  *(int *)(&gda->buffer[0x8000 - 0x7146]) = (in_D0 & 0xff) + *(int *)(&gda->buffer[0x8000 - 0x7146]);
  return CONCAT44(uVar3,in_D1);
}



void FUN_00004e42(void)

{
  FUN_00004d66();
  return;
}



void FUN_00004e54(void)

{
  FUN_00004d66();
  return;
}



void FUN_00004e66(void)

{
  FUN_00004d66();
  return;
}



void FUN_00004e78(void)

{
  FUN_00004d66();
  return;
}



void FUN_00004e8a(void)

{
  FUN_00004d66();
  return;
}



void FUN_00004e9c(void)

{
  FUN_00004d66();
  return;
}



void FUN_00004eae(void)

{
  FUN_00004d66();
  return;
}



char FUN_00004ec0(void)

{
  short in_D0w;
  ushort uVar1;
  char cVar2;
  
  cVar2 = '\0';
  if (in_D0w == 1) {
    cVar2 = '\x01';
  }
  else {
    for (uVar1 = in_D0w - 1; uVar1 != 0; uVar1 = uVar1 >> 1) {
      cVar2 = cVar2 + '\x01';
    }
  }
  return cVar2;
}



undefined1 FUN_00004eee(int param_1)

{
  undefined4 *in_D0;
  undefined4 uVar1;
  int in_D1;
  undefined1 local_1d;
  int local_1c;
  int *local_18;
  
  local_1d = 1;
  uVar1 = func_0x00007b38((param_1 + 8) * in_D1);
  in_D0[4] = uVar1;
  if (in_D0[4] == 0) {
    local_1d = 0;
  }
  else {
    local_1c = 1;
    local_18 = (int *)in_D0[4];
    for (; local_1c < in_D1; local_1c = local_1c + 1) {
      *local_18 = param_1 + 8 + (int)local_18;
      local_18[1] = 0;
      local_18 = (int *)*local_18;
    }
    *local_18 = 0;
    local_18[1] = 0;
    *in_D0 = 0;
    in_D0[1] = 0;
    in_D0[2] = 0;
    in_D0[3] = in_D0[4];
    in_D0[5] = param_1;
    in_D0[6] = 0;
    in_D0[7] = in_D1;
  }
  return local_1d;
}



void FUN_00004fd4(void)

{
  undefined4 *in_D0;
  
  FUN_00007b44();
  in_D0[4] = 0;
  *in_D0 = 0;
  in_D0[1] = 0;
  in_D0[2] = 0;
  in_D0[3] = 0;
  in_D0[5] = 0;
  in_D0[6] = 0;
  return;
}



int FUN_00005086(void)

{
  int *in_D0;
  undefined4 local_14;
  
  if (*in_D0 == 0) {
    local_14 = FUN_000050e8();
  }
  else {
    local_14 = FUN_00005660();
    if (local_14 == 0) {
      local_14 = 0;
    }
    else {
      FUN_00005772(local_14);
      local_14 = local_14 + 8;
    }
  }
  return local_14;
}



int FUN_000050e8(void)

{
  int iVar1;
  undefined4 local_10;
  
  local_10 = 0;
  iVar1 = FUN_00005660();
  if (iVar1 != 0) {
    FUN_00005738();
    local_10 = iVar1 + 8;
  }
  return local_10;
}



void FUN_00005254(void)

{
  int in_D1;
  
  FUN_000056b8(in_D1 + -8);
  FUN_00005850();
  return;
}



undefined4 * FUN_00005280(void)

{
  undefined4 *puVar1;
  int in_D0;
  undefined4 *local_14;
  
  local_14 = (undefined4 *)0x0;
  puVar1 = *(undefined4 **)(in_D0 + 8);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)(in_D0 + 8) = *puVar1;
    local_14 = puVar1 + 2;
  }
  return local_14;
}



int FUN_00005350(void)

{
  int *in_D0;
  char cVar1;
  code *in_D1;
  int iVar2;
  
  do {
    in_D0 = (int *)*in_D0;
    if (in_D0 == (int *)0x0) break;
    cVar1 = (*in_D1)();
  } while (cVar1 == '\0');
  if (in_D0 == (int *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = (int)(in_D0 + 2);
  }
  return iVar2;
}



undefined4 * FUN_00005660(void)

{
  int in_D0;
  int in_D1;
  undefined4 local_18;
  
  local_18 = (undefined4 *)0x0;
  if (*(int *)(in_D0 + 0xc) != 0) {
    local_18 = *(undefined4 **)(in_D0 + 0xc);
    *(undefined4 *)(in_D0 + 0xc) = *local_18;
    *local_18 = 0;
    if (in_D1 != 0) {
      FUN_00007c46(*(undefined4 *)(in_D0 + 0x14));
    }
  }
  return local_18;
}



void FUN_000056b8(void)

{
  undefined4 *in_D0;
  undefined4 *in_D1;
  undefined4 *puVar1;
  
  puVar1 = in_D0;
  if (in_D1 != (undefined4 *)*in_D0) {
    puVar1 = (undefined4 *)in_D1[1];
  }
  *puVar1 = *in_D1;
  puVar1 = in_D0;
  if (in_D1 != (undefined4 *)in_D0[1]) {
    puVar1 = (undefined4 *)*in_D1;
  }
  puVar1[1] = in_D1[1];
  if (in_D1 == (undefined4 *)in_D0[2]) {
    in_D0[2] = *in_D1;
  }
  in_D1[1] = 0;
  *in_D1 = 0;
  in_D0[6] = in_D0[6] + -1;
  return;
}



void FUN_00005738(void)

{
  int *in_D0;
  int *in_D1;
  int *piVar1;
  
  piVar1 = in_D0;
  if (*in_D0 != 0) {
    *in_D1 = *in_D0;
    piVar1 = (int *)*in_D0;
  }
  piVar1[1] = (int)in_D1;
  *in_D0 = (int)in_D1;
  in_D0[6] = in_D0[6] + 1;
  return;
}



void FUN_00005772(int *param_1)

{
  int in_D0;
  int *in_D1;
  int iVar1;
  
  param_1[1] = (int)in_D1;
  *param_1 = *in_D1;
  iVar1 = in_D0;
  if (in_D1 != *(int **)(in_D0 + 4)) {
    iVar1 = *param_1;
  }
  *(int **)(iVar1 + 4) = param_1;
  *in_D1 = (int)param_1;
  *(int *)(in_D0 + 0x18) = *(int *)(in_D0 + 0x18) + 1;
  return;
}



void FUN_000057c2(code *param_1)

{
  int *in_D0;
  int iVar1;
  int iVar2;
  undefined4 in_D1;
  
  if (*in_D0 == 0) {
    FUN_00005738();
  }
  else {
    iVar1 = (*param_1)();
    iVar2 = (*param_1)();
    if (iVar1 < iVar2) {
      FUN_00005738();
    }
    else {
      do {
        in_D0 = (int *)*in_D0;
        if (*in_D0 == 0) break;
        iVar2 = (*param_1)();
      } while (iVar2 < iVar1);
      FUN_00005772(in_D1);
    }
  }
  return;
}



void FUN_00005850(void)

{
  int in_D0;
  undefined4 *in_D1;
  
  *in_D1 = *(undefined4 *)(in_D0 + 0xc);
  *(undefined4 **)(in_D0 + 0xc) = in_D1;
  return;
}



void FUN_00005874(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int in_D0;
  int in_D1;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (param_1 < param_2) {
    iVar1 = *(int *)(in_D1 + param_1 * 4);
    local_1c = param_1 + -1;
    local_20 = param_2 + 1;
    while (local_1c < local_20) {
      do {
        local_20 = local_20 + -1;
        if (local_20 < param_1) break;
      } while (iVar1 < *(int *)(in_D1 + local_20 * 4));
      do {
        local_1c = local_1c + 1;
        if (param_2 < local_1c) break;
      } while (*(int *)(in_D1 + local_1c * 4) < iVar1);
      if (local_1c < local_20) {
        uVar2 = *(undefined4 *)(in_D1 + local_1c * 4);
        *(undefined4 *)(in_D1 + local_1c * 4) = *(undefined4 *)(in_D1 + local_20 * 4);
        *(undefined4 *)(in_D1 + local_20 * 4) = uVar2;
        uVar2 = *(undefined4 *)(in_D0 + local_1c * 4);
        *(undefined4 *)(in_D0 + local_1c * 4) = *(undefined4 *)(in_D0 + local_20 * 4);
        *(undefined4 *)(in_D0 + local_20 * 4) = uVar2;
      }
    }
    FUN_00005874(param_1,local_20);
    FUN_00005874(local_20 + 1,param_2);
  }
  return;
}



void FUN_000059a6(int param_1,int param_2)

{
  undefined4 uVar1;
  int in_D0;
  int iVar2;
  code *in_D1;
  undefined4 local_24;
  undefined4 local_20;
  
  if (param_1 < param_2) {
    local_20 = param_1 + -1;
    local_24 = param_2 + 1;
    while (local_20 < local_24) {
      do {
        local_24 = local_24 + -1;
        if (local_24 < param_1) break;
        iVar2 = (*in_D1)();
      } while (0 < iVar2);
      do {
        local_20 = local_20 + 1;
        if (param_2 < local_20) break;
        iVar2 = (*in_D1)();
      } while (iVar2 < 0);
      if (local_20 < local_24) {
        uVar1 = *(undefined4 *)(in_D0 + local_20 * 4);
        *(undefined4 *)(in_D0 + local_20 * 4) = *(undefined4 *)(in_D0 + local_24 * 4);
        *(undefined4 *)(in_D0 + local_24 * 4) = uVar1;
      }
    }
    FUN_000059a6(param_1,local_24);
    FUN_000059a6(local_24 + 1,param_2);
  }
  return;
}



undefined4 FUN_00005bfa(void)

{
  undefined4 *in_D0;
  int *piVar1;
  undefined4 *local_14;
  int local_10;
  
  local_10 = 0;
  local_14 = (undefined4 *)((int)in_D0 + in_D0[10]);
  for (; local_10 < (int)in_D0[6]; local_10 = local_10 + 1) {
    *local_14 = 0xffffffff;
    local_14 = local_14 + 1;
  }
  local_10 = 0;
  piVar1 = (int *)((int)in_D0 + in_D0[0xb]);
  for (; local_10 < (int)in_D0[5]; local_10 = local_10 + 1) {
    piVar1[3] = local_10;
    *piVar1 = local_10 + 1;
    piVar1[1] = -1;
    piVar1[2] = -1;
    piVar1 = (int *)((int)piVar1 + in_D0[9]);
  }
  *(undefined4 *)((int)piVar1 + -0x1e) = 0xffffffff;
  *in_D0 = 0xffffffff;
  in_D0[1] = 0xffffffff;
  in_D0[2] = 0xffffffff;
  in_D0[3] = 0;
  in_D0[4] = 0;
  return 1;
}



void FUN_00005ce2(void)

{
  int *in_D0;
  int *piVar1;
  undefined4 *local_1c;
  int local_18;
  
  if (in_D0[4] != 0) {
    piVar1 = in_D0;
    if (*in_D0 != -1) goto LAB_00005d30;
    piVar1 = (int *)0x0;
    while (piVar1 != (int *)0x0) {
      piVar1[1] = -1;
      piVar1[2] = -1;
      if (*piVar1 == -1) {
        piVar1 = (int *)0x0;
      }
      else {
LAB_00005d30:
        piVar1 = (int *)((int)in_D0 + in_D0[9] * *piVar1 + in_D0[0xb]);
      }
    }
    if (in_D0[1] == -1) {
      piVar1 = (int *)0x0;
    }
    else {
      piVar1 = (int *)((int)in_D0 + in_D0[9] * in_D0[1] + in_D0[0xb]);
    }
    *piVar1 = in_D0[3];
    in_D0[3] = *in_D0;
    *in_D0 = -1;
    in_D0[1] = -1;
    in_D0[2] = -1;
    in_D0[4] = 0;
  }
  local_18 = 0;
  local_1c = (undefined4 *)((int)in_D0 + in_D0[10]);
  for (; local_18 < in_D0[6]; local_18 = local_18 + 1) {
    *local_1c = 0xffffffff;
    local_1c = local_1c + 1;
  }
  return;
}



int FUN_00005e0a(uint param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  int in_D0;
  int iVar2;
  
  iVar2 = FUN_000065ae();
  *(uint *)(iVar2 + 0x10) = param_1;
  *(undefined4 *)(iVar2 + 0x14) = param_2;
  *(undefined4 *)(iVar2 + 0x18) = param_3;
  if (iVar2 == 0) {
    iVar2 = 0;
  }
  else {
    puVar1 = (undefined4 *)
             ((param_1 & *(uint *)(in_D0 + 0x1c)) * 4 + in_D0 + *(int *)(in_D0 + 0x28));
    *(undefined4 *)(iVar2 + 8) = *puVar1;
    *puVar1 = *(undefined4 *)(iVar2 + 0xc);
    FUN_00006720();
    iVar2 = iVar2 + 0x1c;
  }
  return iVar2;
}



void FUN_00005e9c(void)

{
  int in_D0;
  int in_D1;
  
  if (*(int *)(in_D0 + 0x10) != 1) {
    FUN_00006640(in_D1 + -0x1c);
    FUN_00006720();
  }
  return;
}



void FUN_00005eda(void)

{
  int *piVar1;
  uint uVar2;
  int in_D0;
  int in_D1;
  int iVar3;
  
  FUN_00006640();
  uVar2 = *(uint *)(in_D0 + 0x1c) & *(uint *)(in_D1 + -0xc);
  piVar1 = (int *)(uVar2 * 4 + in_D0 + *(int *)(in_D0 + 0x28));
  if (*piVar1 == *(int *)(in_D1 + -0x10)) {
    *piVar1 = *(int *)(in_D1 + -0x14);
  }
  else {
    if (*(int *)(*(int *)(in_D0 + 0x28) + in_D0 + uVar2 * 4) != -1) {
      iVar3 = *(int *)(*(int *)(in_D0 + 0x28) + in_D0 + uVar2 * 4);
      goto LAB_00005fa8;
    }
    iVar3 = 0;
    while (iVar3 != 0) {
      if (*(int *)(iVar3 + 8) == *(int *)(in_D1 + -0x10)) {
        *(undefined4 *)(iVar3 + 8) = *(undefined4 *)(in_D1 + -0x14);
        break;
      }
      if (*(int *)(iVar3 + 8) == -1) {
        iVar3 = 0;
      }
      else {
        iVar3 = *(int *)(iVar3 + 8);
LAB_00005fa8:
        iVar3 = in_D0 + *(int *)(in_D0 + 0x24) * iVar3 + *(int *)(in_D0 + 0x2c);
      }
    }
    if (iVar3 == 0) {
      FUN_00007a7c();
      FUN_00008528();
    }
  }
  *(undefined4 *)(in_D1 + -0x14) = 0xffffffff;
  FUN_0000678a();
  return;
}



int FUN_0000600a(int param_1,int param_2)

{
  int in_D0;
  uint in_D1;
  int iVar1;
  
  if (*(int *)(*(int *)(in_D0 + 0x28) + in_D0 + (in_D1 & *(uint *)(in_D0 + 0x1c)) * 4) != -1) {
    iVar1 = *(int *)(*(int *)(in_D0 + 0x28) + in_D0 + (in_D1 & *(uint *)(in_D0 + 0x1c)) * 4);
    goto LAB_0000609a;
  }
  iVar1 = 0;
  while( true ) {
    if (iVar1 == 0) {
      return 0;
    }
    if (((in_D1 == *(uint *)(iVar1 + 0x10)) && (param_1 == *(int *)(iVar1 + 0x14))) &&
       (param_2 == *(int *)(iVar1 + 0x18))) break;
    if (*(int *)(iVar1 + 8) == -1) {
      iVar1 = 0;
    }
    else {
      iVar1 = *(int *)(iVar1 + 8);
LAB_0000609a:
      iVar1 = in_D0 + *(int *)(in_D0 + 0x24) * iVar1 + *(int *)(in_D0 + 0x2c);
    }
  }
  return iVar1 + 0x1c;
}



void FUN_00006352(void)

{
  int *in_D0;
  int iVar1;
  undefined1 auStack_36 [10];
  undefined1 auStack_2c [10];
  undefined1 auStack_22 [10];
  int local_18;
  int *local_14;
  int *local_10;
  
  local_14 = (int *)0x0;
  local_10 = in_D0;
  FUN_00007a80(in_D0[4]);
  FUN_00007a80();
  local_14 = local_10;
  if (*local_10 != -1) goto LAB_00006490;
  local_14 = (int *)0x0;
  while (local_14 != (int *)0x0) {
    if (*local_14 == -1) {
      FUN_00007a84();
    }
    else {
      FUN_00007a84(*local_14);
    }
    if (local_14[1] == -1) {
      FUN_00007a84();
    }
    else {
      FUN_00007a84(local_14[1]);
    }
    if (local_14[2] == -1) {
      FUN_00007a84();
    }
    else {
      FUN_00007a84(local_14[2]);
    }
    FUN_00007a80(local_14[3],local_14[4],local_14[5],local_14[6],auStack_2c,auStack_22,auStack_36);
    if (*local_14 == -1) {
      local_14 = (int *)0x0;
    }
    else {
LAB_00006490:
      local_14 = (int *)((int)local_10 + local_10[9] * *local_14 + local_10[0xb]);
    }
  }
  FUN_00007a80();
  local_18 = 0;
  while( true ) {
    if (local_10[6] <= local_18) {
      FUN_00007a80();
      return;
    }
    FUN_00007a80(local_18);
    if (*(int *)((int)local_10 + local_18 * 4 + local_10[10]) != -1) break;
    local_14 = (int *)0x0;
    while (local_14 != (int *)0x0) {
      FUN_00007a80(local_14[3]);
      if (local_14[2] == -1) {
        local_14 = (int *)0x0;
      }
      else {
        iVar1 = local_14[2];
LAB_0000654a:
        local_14 = (int *)((int)local_10 + local_10[9] * iVar1 + local_10[0xb]);
      }
    }
    FUN_00007a80();
    local_18 = local_18 + 1;
  }
  iVar1 = *(int *)((int)local_10 + local_18 * 4 + local_10[10]);
  goto LAB_0000654a;
}



undefined4 * FUN_000065ae(void)

{
  int in_D0;
  undefined4 *puVar1;
  
  if (*(int *)(in_D0 + 0xc) == -1) {
    puVar1 = (undefined4 *)0x0;
  }
  else {
    if (*(int *)(in_D0 + 0xc) == -1) {
      puVar1 = (undefined4 *)0x0;
    }
    else {
      puVar1 = (undefined4 *)
               (in_D0 + *(int *)(in_D0 + 0x24) * *(int *)(in_D0 + 0xc) + *(int *)(in_D0 + 0x2c));
    }
    *(undefined4 *)(in_D0 + 0xc) = *puVar1;
    *puVar1 = 0xffffffff;
    *(int *)(in_D0 + 0x10) = *(int *)(in_D0 + 0x10) + 1;
    FUN_00007c46(*(undefined4 *)(in_D0 + 0x20));
  }
  return puVar1;
}



void FUN_00006640(void)

{
  int *in_D0;
  int *in_D1;
  int *piVar1;
  int iVar2;
  
  if (*in_D0 == in_D1[3]) {
    *in_D0 = *in_D1;
  }
  else {
    if (in_D1[1] == -1) {
      piVar1 = (int *)0x0;
    }
    else {
      piVar1 = (int *)((int)in_D0 + in_D0[9] * in_D1[1] + in_D0[0xb]);
    }
    *piVar1 = *in_D1;
  }
  if (in_D0[1] == in_D1[3]) {
    in_D0[1] = in_D1[1];
  }
  else {
    if (*in_D1 == -1) {
      iVar2 = 0;
    }
    else {
      iVar2 = (int)in_D0 + in_D0[9] * *in_D1 + in_D0[0xb];
    }
    *(int *)(iVar2 + 4) = in_D1[1];
  }
  if (in_D0[2] == in_D1[3]) {
    in_D0[2] = *in_D1;
  }
  in_D1[1] = -1;
  *in_D1 = -1;
  return;
}



void FUN_00006720(void)

{
  int *in_D0;
  int *in_D1;
  int iVar1;
  
  if (*in_D0 == -1) {
    in_D0[1] = in_D1[3];
  }
  else {
    *in_D1 = *in_D0;
    if (*in_D0 == -1) {
      iVar1 = 0;
    }
    else {
      iVar1 = (int)in_D0 + in_D0[9] * *in_D0 + in_D0[0xb];
    }
    *(int *)(iVar1 + 4) = in_D1[3];
  }
  *in_D0 = in_D1[3];
  return;
}



void FUN_0000678a(void)

{
  int in_D0;
  undefined4 *in_D1;
  
  *in_D1 = *(undefined4 *)(in_D0 + 0xc);
  *(undefined4 *)(in_D0 + 0xc) = in_D1[3];
  *(int *)(in_D0 + 0x10) = *(int *)(in_D0 + 0x10) + -1;
  return;
}



int FUN_0000694e(int param_1)

{
  int *in_D0;
  int iVar1;
  
  iVar1 = func_0x00007b38();
  *in_D0 = iVar1;
  if (iVar1 == 0) {
    iVar1 = 0;
  }
  else {
    in_D0[1] = *in_D0;
    while (in_D0[1] % param_1 != 0) {
      in_D0[1] = in_D0[1] + 1;
    }
    iVar1 = in_D0[1];
  }
  return iVar1;
}



undefined4 FUN_00006972(void)

{
  undefined4 *in_A0;
  int in_A1;
  int in_stack_00000000;
  int in_stack_00000018;
  
  *(undefined4 *)(in_A1 + 4) = *in_A0;
  while (*(int *)(in_stack_00000000 + 4) % in_stack_00000018 != 0) {
    *(int *)(in_stack_00000000 + 4) = *(int *)(in_stack_00000000 + 4) + 1;
  }
  return *(undefined4 *)(in_stack_00000000 + 4);
}



void FUN_000069ec(void)

{
  uint in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (((int)in_D0 < 0x11) && (0 < (int)in_D0)) {
    *(uint *)(&gda->buffer[0x8000 - 0x6bce]) = in_D0 | *(uint *)(&gda->buffer[0x8000 - 0x6bce]);
  }
  return;
}



undefined4 FUN_00006a32(void)

{
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  return *(undefined4 *)(&gda->buffer[0x8000 - 0x6bce]);
}



void FUN_00006a46(void)

{
  int iVar1;
  undefined4 in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  iVar1 = *(int *)(&gda->buffer[0x8000 - 0x6bc6]);
  *(int *)(&gda->buffer[0x8000 - 0x6bc6]) = *(int *)(&gda->buffer[0x8000 - 0x6bc6]) + 1;
  *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x713e]) + iVar1 * 4) = in_D0;
  if (0x3f < *(int *)(&gda->buffer[0x8000 - 0x6bc6])) {
    *(undefined4 *)(&gda->buffer[0x8000 - 0x6bc6]) = 0;
  }
  return;
}



undefined4 FUN_00006a74(void)

{
  int iVar1;
  undefined4 uVar2;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (*(int *)(&gda->buffer[0x8000 - 0x6bca]) == *(int *)(&gda->buffer[0x8000 - 0x6bc6])) {
    uVar2 = 0xffffffff;
  }
  else {
    iVar1 = *(int *)(&gda->buffer[0x8000 - 0x6bca]);
    *(int *)(&gda->buffer[0x8000 - 0x6bca]) = *(int *)(&gda->buffer[0x8000 - 0x6bca]) + 1;
    uVar2 = *(undefined4 *)(((intptr_t)&gda->buffer[0x8000 - 0x713e]) + iVar1 * 4);
    if (0x3f < *(int *)(&gda->buffer[0x8000 - 0x6bca])) {
      *(undefined4 *)(&gda->buffer[0x8000 - 0x6bca]) = 0;
    }
  }
  return uVar2;
}



undefined4 FUN_00006ade(void)

{
  FUN_000084e8();
  return 1;
}



undefined4 FUN_00006af2(void)

{
  return 1;
}



int FUN_00006b00(void)

{
  int iVar1;
  
  FUN_00007230();
  iVar1 = FUN_00006a74();
  if (iVar1 < 0) {
    FUN_0000800c();
    iVar1 = FUN_00006a74();
  }
  FUN_0000725c();
  return iVar1;
}



bool FUN_00006b30(void)

{
  int iVar1;
  uint *in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined1 auStack_1a [2];
  uint local_18;
  undefined1 auStack_14 [8];
  uint *local_c;
  
  local_c = in_D1;
  iVar1 = FUN_00008396(auStack_14,auStack_1a,&local_18);
  if (iVar1 != -1) {
    *local_c = local_18 & 0xffff;
  }
  else {
    func_0x00007aa8(*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]));
  }
  return iVar1 != -1;
}



undefined4 FUN_00006b92(void)

{
  int *in_D0;
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_1c;
  undefined4 local_18;
  
  FUN_00006b30();
  *in_D0 = local_1c + *(int *)(&gda->buffer[0x8000 - 0x703e]) * (local_18 - *(int *)(&gda->buffer[0x8000 - 0x6bc2]));
  return in_D1;
}



undefined8 FUN_00006bd8(void)

{
  undefined4 *in_D0;
  undefined4 uVar1;
  int iVar2;
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined1 auStack_22 [2];
  int local_20 [2];
  undefined1 auStack_18 [8];
  undefined4 *local_10;
  undefined4 local_c;
  
  local_c = in_D1;
  if (*(int *)(&gda->buffer[0x8000 - 0x6bc2]) == -1) {
    local_10 = in_D0;
    iVar2 = FUN_00008396(auStack_18,auStack_22,local_20);
    if (iVar2 == -1) {
      func_0x00007aa8(*(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]));
      uVar1 = 0;
    }
    else {
      *(int *)(&gda->buffer[0x8000 - 0x703e]) = local_20[0] >> 0x10;
      uVar1 = FUN_00006b30();
      *local_10 = *(undefined4 *)(&gda->buffer[0x8000 - 0x6bc2]);
    }
  }
  else {
    *in_D0 = *(undefined4 *)(&gda->buffer[0x8000 - 0x6bc2]);
    uVar1 = 1;
  }
  return CONCAT44(uVar1,local_c);
}



undefined4 FUN_00006c6a(void)

{
  undefined4 uVar1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (*(int *)(&gda->buffer[0x8000 - 0x6bc2]) == -1) {
    uVar1 = 0;
  }
  else {
    uVar1 = FUN_00006b92();
  }
  return uVar1;
}



undefined4 FUN_00006c9a(int *param_1,int *param_2)

{
  int iVar1;
  int *in_D0;
  undefined4 uVar2;
  int *in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_18;
  
  if (*(int *)(&gda->buffer[0x8000 - 0x6bbe]) == -1) {
    uVar2 = 0;
  }
  else {
    uVar2 = FUN_00006b92();
    iVar1 = local_18 - *(int *)(&gda->buffer[0x8000 - 0x6bbe]);
    *in_D0 = iVar1 / *(int *)(&gda->buffer[0x8000 - 0x703e]);
    *in_D1 = ((iVar1 % *(int *)(&gda->buffer[0x8000 - 0x703e])) * 100) / *(int *)(&gda->buffer[0x8000 - 0x703e]);
    *param_1 = local_18 / *(int *)(&gda->buffer[0x8000 - 0x703e]);
    *param_2 = ((local_18 % *(int *)(&gda->buffer[0x8000 - 0x703e])) * 100) / *(int *)(&gda->buffer[0x8000 - 0x703e]);
  }
  return uVar2;
}



// WARNING: Control flow encountered bad instruction data

void FUN_00006da4(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00006dae(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x00006e04) overlaps instruction at (ram,0x00006e02)
// 

undefined8 FUN_00006dca(void)

{
  short sVar2;
  int iVar1;
  ushort unaff_D7w;
  int in_A0;
  undefined2 *puVar3;
  undefined2 *unaff_A5;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined8 in_stack_00000000;
  
  *(int *)(&gda->buffer[0x8000 - 0x6bb2]) = in_A0 - *(int *)(&gda->buffer[0x8000 - 0x6baa]);
  sVar2 = ((ushort)(*(uint *)(&gda->buffer[0x8000 - 0x6bb6]) >> 1) & 0x7fff) - 1;
  puVar3 = (undefined2 *)(((intptr_t)&gda->buffer[0x8000 - 0x703a]));
  do {
    *puVar3 = *unaff_A5;
    sVar2 = sVar2 + -1;
    puVar3 = puVar3 + 1;
    unaff_A5 = unaff_A5 + 1;
  } while (sVar2 != -1);
  *(ushort *)(&gda->buffer[0x8000 - 0x6bae]) = unaff_D7w >> 2;
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6ff2]))();
  if (iVar1 == 0) {
    return in_stack_00000000;
  }
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



void FUN_00006e20(void)

{
  int in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(int *)(&gda->buffer[0x8000 - 0x6ff2]) = in_D0;
  if (in_D0 == 0) {
    FUN_00006dae();
  }
  else {
    FUN_00006da4();
  }
  return;
}



undefined8 FUN_000071ec(void)

{
  short sVar1;
  short in_D0w;
  int *piVar2;
  undefined4 in_D1;
  short sVar3;
  int *piVar4;
  
  piVar2 = (int *)FUN_0000813a();
  piVar4 = piVar2;
  sVar3 = *(short *)piVar2;
  do {
    piVar4 = piVar4 + 1;
    sVar1 = sVar3 + -1;
    if (sVar3 < 1) goto LAB_00007226;
    sVar3 = sVar1;
  } while ((*piVar4 == 0) ||
          (piVar2 = (int *)(uint)*(ushort *)*piVar4, piVar2 != (int *)(int)in_D0w));
  piVar2 = (int *)(uint)*(ushort *)(*piVar4 + 2);
LAB_00007226:
  return CONCAT44(piVar2,in_D1);
}



undefined8 FUN_00007230(void)

{
  uint in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_4;
  
  __m68k_trap(0);
  local_4 = in_D1 | 0x640c0000;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 1;
  return CONCAT44(0xffffffff,local_4);
}



undefined8 FUN_0000725c(void)

{
  uint in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  undefined4 local_4;
  
  __m68k_trap(0);
  local_4 = in_D1 | 0x64e00000;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 0;
  return CONCAT44(0xffffffff,local_4);
}



// WARNING: Globals starting with '_' overlap smaller symbols at the same address

void FUN_0000728e(void)

{
  uint *puVar1;
  uint in_D0;
  
  puVar1 = (uint *)(*(int *)(_FUN_00000000 + 0x4c) + 0x374);
  *puVar1 = in_D0 | *puVar1;
  return;
}



// WARNING: Globals starting with '_' overlap smaller symbols at the same address

void FUN_000072a6(void)

{
  uint *puVar1;
  int in_D0;
  
  puVar1 = (uint *)(*(int *)(_FUN_00000000 + 0x4c) + 0x374);
  *puVar1 = -in_D0 & *puVar1;
  return;
}



void FUN_000072c0(void)

{
  int in_D0;
  
  FUN_0000733e(in_D0 + 0x100,0xff);
  return;
}



void FUN_00007304(undefined4 param_1)

{
  FUN_000072c0(param_1);
  FUN_000073e0();
  return;
}



void FUN_0000732a(void)

{
  do {
    FUN_0000800c();
  } while( true );
}



undefined8 FUN_0000733e(void)

{
  undefined4 in_D0;
  int iVar1;
  undefined4 uVar2;
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  if (*(int *)(&gda->buffer[0x8000 - 0x6ba6]) < 0) {
    iVar1 = func_0x00007ac4();
    *(int *)(&gda->buffer[0x8000 - 0x6ba6]) = iVar1;
    if (iVar1 < 0) {
      uVar2 = 0xffffffff;
      goto LAB_00007374;
    }
  }
  uVar2 = FUN_00007614(in_D0);
LAB_00007374:
  return CONCAT44(uVar2,in_D1);
}



undefined8 FUN_00007384(void)

{
  int iVar1;
  undefined4 in_D1;
  undefined4 local_18;
  
  iVar1 = func_0x00007ac4();
  if (iVar1 != -1) {
    iVar1 = func_0x00007ad8(4);
    if (iVar1 == 4) {
      FUN_00007af4();
      goto LAB_000073d4;
    }
    FUN_00007af4();
  }
  local_18 = 0xffffffff;
LAB_000073d4:
  return CONCAT44(local_18,in_D1);
}



void FUN_000073e0(void)

{
  FUN_00007384();
  FUN_000083f2();
  return;
}



undefined4 FUN_0000748c(int *param_1,int *param_2)

{
  int iVar1;
  undefined4 local_14;
  
  local_14 = 0xffffffff;
  FUN_00007a84();
  iVar1 = FUN_000080ae(&LAB_00008000_1,3);
  if (iVar1 != -1) {
    *param_1 = iVar1;
    *param_2 = iVar1 + *(int *)(iVar1 + 0x30);
    local_14 = 0;
  }
  return local_14;
}



undefined4 FUN_0000759e(void)

{
  return 0;
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007614(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



void FUN_00007662(void)

{
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  bool in_CF;
  
  if (in_CF) {
    *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1;
  }
  return;
}



void FUN_0000766c(void)

{
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  bool in_CF;
  
  if (in_CF) {
    *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1;
  }
  return;
}



void FUN_000076aa(void)

{
  return;
}



int FUN_000076d0(void)

{
  int *in_D1;
  undefined1 auStack_28 [20];
  int local_14;
  int *local_c;
  
  local_14 = 0xffffffff;
  local_c = in_D1;
  FUN_00007a84();
  local_14 = FUN_0000819a(1,auStack_28);
  if (local_14 != -1) {
    *local_c = local_14;
    local_14 = 0;
  }
  return local_14;
}



int FUN_0000781a(void)

{
  int *in_D1;
  undefined4 local_14;
  
  FUN_00007a84();
  local_14 = FUN_000081c4();
  if (local_14 != -1) {
    *in_D1 = local_14;
    local_14 = 0;
  }
  return local_14;
}



undefined4 FUN_0000787c(void)

{
  int iVar1;
  undefined4 local_14;
  
  local_14 = 0xffffffff;
  FUN_00007a84();
  iVar1 = FUN_000081e6();
  if (iVar1 != -1) {
    iVar1 = FUN_000081f2();
    if (iVar1 == -1) {
      FUN_000081c4();
    }
    else {
      local_14 = 0;
    }
  }
  return local_14;
}



void FUN_000078ec(void)

{
  int iVar1;
  
  do {
    iVar1 = FUN_0000827e(1);
  } while (iVar1 != 1);
  return;
}



void FUN_0000791a(void)

{
  FUN_0000820e();
  return;
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007a4c(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007a7c(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007a80(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007a84(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007a9c(void)

{
  short in_D0w;
  byte *in_A0;
  byte *in_A1;
  byte *unaff_A2;
  byte *unaff_A3;
  byte *unaff_A4;
  byte *unaff_A5;
  byte *unaff_A6;
  
  __m68k_trap(0xd);
  *unaff_A4 = *unaff_A4 | 0x4d;
  *unaff_A5 = *unaff_A5 | 0x4d;
  *unaff_A6 = *unaff_A6 | 0x4d;
  *in_A0 = *in_A0 | 0x4d;
  *in_A1 = *in_A1 | 0x4d;
  *unaff_A2 = *unaff_A2 | 0x4d;
  *unaff_A3 = *unaff_A3 | 0x4d;
  *unaff_A4 = *unaff_A4 | 0x4d;
  *unaff_A5 = *unaff_A5 | 0x4d;
  *unaff_A6 = *unaff_A6 | 0x4d;
  *in_A0 = *in_A0 | 0x4d;
  *in_A1 = *in_A1 | 0x4d;
  *unaff_A2 = *unaff_A2 | 0x4d;
  *unaff_A3 = *unaff_A3 | 0x4d;
  *unaff_A4 = *unaff_A4 | 0x4d;
  *unaff_A5 = *unaff_A5 | 0x4d;
  *unaff_A6 = *unaff_A6 | 0x4d;
  in_A0[0x29] = in_A0[0x29] | 0x4d;
  __m68k_trap(0xd);
  unaff_A2[0x2b] = unaff_A2[0x2b] | 0x4d;
  __m68k_trap(0xd);
  unaff_A4[0x2d] = unaff_A4[0x2d] | 0x4d;
  __m68k_trap(0xd);
  unaff_A6[0x2f] = unaff_A6[0x2f] | 0x4d;
  __m68k_trap(0xd);
  in_A0[in_D0w + 0x31] = in_A0[in_D0w + 0x31] | 0x4d;
  __m68k_trap(0xd);
  unaff_A2[in_D0w + 0x33] = unaff_A2[in_D0w + 0x33] | 0x4d;
  __m68k_trap(0xd);
  unaff_A4[in_D0w + 0x35] = unaff_A4[in_D0w + 0x35] | 0x4d;
  __m68k_trap(0xd);
  unaff_A6[in_D0w + 0x37] = unaff_A6[in_D0w + 0x37] | 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Read-only address (ram,0x00000039) is written
  uRam00000039 = 0x4d;
  __m68k_trap(0xd);
  DAT_00007b73 = DAT_00007b73 | 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007af4(void)

{
  byte *pbVar1;
  short in_D0w;
  int in_A0;
  int unaff_A2;
  int unaff_A4;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0xd);
  *(byte *)(unaff_A2 + 0x2b) = *(byte *)(unaff_A2 + 0x2b) | 0x4d;
  __m68k_trap(0xd);
  *(byte *)(unaff_A4 + 0x2d) = *(byte *)(unaff_A4 + 0x2d) | 0x4d;
  __m68k_trap(0xd);
  *(byte *)(unaff_A6 + 0x2f) = *(byte *)(unaff_A6 + 0x2f) | 0x4d;
  __m68k_trap(0xd);
  pbVar1 = (byte *)(in_A0 + 0x31 + (int)in_D0w);
  *pbVar1 = *pbVar1 | 0x4d;
  __m68k_trap(0xd);
  pbVar1 = (byte *)(unaff_A2 + 0x33 + (int)in_D0w);
  *pbVar1 = *pbVar1 | 0x4d;
  __m68k_trap(0xd);
  pbVar1 = (byte *)(unaff_A4 + 0x35 + (int)in_D0w);
  *pbVar1 = *pbVar1 | 0x4d;
  __m68k_trap(0xd);
  pbVar1 = (byte *)(unaff_A6 + 0x37 + (int)in_D0w);
  *pbVar1 = *pbVar1 | 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Read-only address (ram,0x00000039) is written
  uRam00000039 = 0x4d;
  __m68k_trap(0xd);
  DAT_00007b73 = DAT_00007b73 | 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007b44(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



char * FUN_00007bd8(void)

{
  char *in_D0;
  char *pcVar1;
  char *pcVar2;
  char *pcVar3;
  
  pcVar2 = in_D0;
  do {
    pcVar3 = pcVar2 + 1;
    if (((*pcVar2 == '\0') || (pcVar3 = pcVar2 + 2, pcVar2[1] == '\0')) ||
       (pcVar1 = pcVar2 + 3, pcVar3 = pcVar1, pcVar2[2] == '\0')) break;
    pcVar2 = pcVar2 + 4;
    pcVar3 = pcVar2;
  } while (*pcVar1 != '\0');
  return pcVar3 + (-1 - (int)in_D0);
}



void FUN_00007bf6(void)

{
  char cVar1;
  char *in_D0;
  char *in_D1;
  char *pcVar2;
  char *pcVar3;
  
  do {
    cVar1 = *in_D1;
    *in_D0 = cVar1;
    if (cVar1 == '\0') {
      return;
    }
    cVar1 = in_D1[1];
    in_D0[1] = cVar1;
    if (cVar1 == '\0') {
      return;
    }
    pcVar3 = in_D1 + 3;
    cVar1 = in_D1[2];
    pcVar2 = in_D0 + 3;
    in_D0[2] = cVar1;
    if (cVar1 == '\0') {
      return;
    }
    in_D1 = in_D1 + 4;
    cVar1 = *pcVar3;
    in_D0 = in_D0 + 4;
    *pcVar2 = cVar1;
  } while (cVar1 != '\0');
  return;
}



void FUN_00007c12(void)

{
  char cVar1;
  char *in_D0;
  char *in_D1;
  char *pcVar2;
  char *pcVar3;
  
  do {
    pcVar2 = in_D0 + 1;
    if (((*in_D0 == '\0') || (pcVar2 = in_D0 + 2, in_D0[1] == '\0')) ||
       (pcVar3 = in_D0 + 3, pcVar2 = pcVar3, in_D0[2] == '\0')) break;
    in_D0 = in_D0 + 4;
    pcVar2 = in_D0;
  } while (*pcVar3 != '\0');
  cVar1 = *in_D1;
  pcVar2[-1] = cVar1;
  while( true ) {
    if (cVar1 == '\0') {
      return;
    }
    cVar1 = in_D1[1];
    *pcVar2 = cVar1;
    if (cVar1 == '\0') {
      return;
    }
    pcVar3 = in_D1 + 3;
    cVar1 = in_D1[2];
    pcVar2[1] = cVar1;
    if (cVar1 == '\0') {
      return;
    }
    in_D1 = in_D1 + 4;
    cVar1 = *pcVar3;
    pcVar3 = pcVar2 + 3;
    pcVar2[2] = cVar1;
    if (cVar1 == '\0') break;
    cVar1 = *in_D1;
    pcVar2 = pcVar2 + 4;
    *pcVar3 = cVar1;
  }
  return;
}



undefined8 FUN_00007c46(int param_1)

{
  undefined4 in_D0;
  undefined4 in_D1;
  
  if (param_1 != 0) {
    FUN_00007c64();
  }
  return CONCAT44(in_D0,in_D1);
}



void FUN_00007c64(void)

{
  uint unaff_D2;
  uint uVar1;
  uint uVar2;
  undefined4 *in_A0;
  undefined4 *puVar4;
  undefined1 *extraout_A0;
  int extraout_A0_00;
  undefined4 *unaff_A2;
  undefined4 *puVar5;
  short sVar3;
  
  if (unaff_D2 != 0) {
    if (unaff_A2 < in_A0) {
      puVar5 = (undefined4 *)(unaff_D2 + (int)unaff_A2);
      puVar4 = (undefined4 *)(unaff_D2 + (int)in_A0);
      if (((uint)puVar5 & 1) != 0) {
        puVar5 = (undefined4 *)((int)puVar5 + -1);
        puVar4 = (undefined4 *)((int)puVar4 + -1);
        *(undefined1 *)puVar4 = *(undefined1 *)puVar5;
        unaff_D2 = unaff_D2 - 1;
      }
      if (((uint)puVar4 & 1) == 0) {
        if ((unaff_D2 & 1) != 0) {
          FUN_00007cd6();
          *(undefined1 *)(extraout_A0_00 + -1) = *(undefined1 *)((int)puVar5 + -1);
          return;
        }
        uVar2 = unaff_D2 >> 2;
        if ((unaff_D2 >> 1 & 1) != 0) {
          puVar5 = (undefined4 *)((int)puVar5 + -2);
          puVar4 = (undefined4 *)((int)puVar4 + -2);
          *(undefined2 *)puVar4 = *(undefined2 *)puVar5;
        }
        while ((sVar3 = (short)uVar2 + -1, uVar1 = CONCAT22((short)(uVar2 >> 0x10),sVar3),
               sVar3 != -1 || (uVar1 = uVar2 - 1, uVar2 != 0))) {
          puVar5 = puVar5 + -1;
          puVar4 = puVar4 + -1;
          *puVar4 = *puVar5;
          uVar2 = uVar1;
        }
        return;
      }
      while ((sVar3 = (short)unaff_D2 + -1, uVar2 = CONCAT22((short)(unaff_D2 >> 0x10),sVar3),
             sVar3 != -1 || (uVar2 = unaff_D2 - 1, unaff_D2 != 0))) {
        puVar5 = (undefined4 *)((int)puVar5 + -1);
        puVar4 = (undefined4 *)((int)puVar4 + -1);
        *(undefined1 *)puVar4 = *(undefined1 *)puVar5;
        unaff_D2 = uVar2;
      }
      return;
    }
    if (in_A0 != unaff_A2) {
      puVar4 = in_A0;
      puVar5 = unaff_A2;
      if (((uint)unaff_A2 & 1) != 0) {
        puVar5 = (undefined4 *)((int)unaff_A2 + 1);
        puVar4 = (undefined4 *)((int)in_A0 + 1);
        *(undefined1 *)in_A0 = *(undefined1 *)unaff_A2;
        unaff_D2 = unaff_D2 - 1;
      }
      if (((uint)puVar4 & 1) == 0) {
        if ((unaff_D2 & 1) != 0) {
          FUN_00007c8c();
          *extraout_A0 = *(undefined1 *)puVar5;
          return;
        }
        uVar2 = unaff_D2 >> 2;
        if ((unaff_D2 >> 1 & 1) != 0) {
          *(undefined2 *)puVar4 = *(undefined2 *)puVar5;
          puVar4 = (undefined4 *)((int)puVar4 + 2);
          puVar5 = (undefined4 *)((int)puVar5 + 2);
        }
        while ((sVar3 = (short)uVar2 + -1, uVar1 = CONCAT22((short)(uVar2 >> 0x10),sVar3),
               sVar3 != -1 || (uVar1 = uVar2 - 1, uVar2 != 0))) {
          *puVar4 = *puVar5;
          uVar2 = uVar1;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
        return;
      }
      while ((sVar3 = (short)unaff_D2 + -1, uVar2 = CONCAT22((short)(unaff_D2 >> 0x10),sVar3),
             sVar3 != -1 || (uVar2 = unaff_D2 - 1, unaff_D2 != 0))) {
        *(undefined1 *)puVar4 = *(undefined1 *)puVar5;
        unaff_D2 = uVar2;
        puVar4 = (undefined4 *)((int)puVar4 + 1);
        puVar5 = (undefined4 *)((int)puVar5 + 1);
      }
    }
  }
  return;
}



void FUN_00007c8c(void)

{
  uint unaff_D2;
  uint uVar1;
  undefined4 *in_A0;
  undefined4 *unaff_A2;
  uint uVar2;
  short sVar3;
  
  uVar2 = unaff_D2 >> 1;
  if ((unaff_D2 & 1) != 0) {
    *(undefined2 *)in_A0 = *(undefined2 *)unaff_A2;
    in_A0 = (undefined4 *)((int)in_A0 + 2);
    unaff_A2 = (undefined4 *)((int)unaff_A2 + 2);
  }
  while ((sVar3 = (short)uVar2 + -1, uVar1 = CONCAT22((short)(uVar2 >> 0x10),sVar3), sVar3 != -1 ||
         (uVar1 = uVar2 - 1, uVar2 != 0))) {
    *in_A0 = *unaff_A2;
    uVar2 = uVar1;
    in_A0 = in_A0 + 1;
    unaff_A2 = unaff_A2 + 1;
  }
  return;
}



void FUN_00007cd6(void)

{
  uint unaff_D2;
  uint uVar1;
  undefined4 *in_A0;
  undefined4 *unaff_A2;
  uint uVar2;
  short sVar3;
  
  uVar2 = unaff_D2 >> 1;
  if ((unaff_D2 & 1) != 0) {
    unaff_A2 = (undefined4 *)((int)unaff_A2 + -2);
    in_A0 = (undefined4 *)((int)in_A0 + -2);
    *(undefined2 *)in_A0 = *(undefined2 *)unaff_A2;
  }
  while ((sVar3 = (short)uVar2 + -1, uVar1 = CONCAT22((short)(uVar2 >> 0x10),sVar3), sVar3 != -1 ||
         (uVar1 = uVar2 - 1, uVar2 != 0))) {
    unaff_A2 = unaff_A2 + -1;
    in_A0 = in_A0 + -1;
    *in_A0 = *unaff_A2;
    uVar2 = uVar1;
  }
  return;
}



undefined4 * FUN_00007cfe(uint param_1)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 *in_D0;
  uint uVar3;
  int iVar4;
  ushort uVar5;
  undefined1 in_D1b;
  undefined4 uVar6;
  short sVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  
  if (param_1 < 0xc) {
    sVar7 = (short)param_1 + -1;
    puVar8 = in_D0;
    if ((short)param_1 == 0) {
      return in_D0;
    }
    do {
      *(undefined1 *)puVar8 = in_D1b;
      sVar7 = sVar7 + -1;
      puVar8 = (undefined4 *)((int)puVar8 + 1);
    } while (sVar7 != -1);
    return in_D0;
  }
  uVar1 = CONCAT11(in_D1b,in_D1b);
  puVar8 = in_D0;
  if (((uint)in_D0 & 1) != 0) {
    puVar8 = (undefined4 *)((int)in_D0 + 1);
    *(undefined1 *)in_D0 = in_D1b;
    param_1 = param_1 - 1;
  }
  puVar9 = puVar8;
  if (((uint)puVar8 & 2) != 0) {
    puVar9 = (undefined4 *)((int)puVar8 + 2);
    *(undefined2 *)puVar8 = uVar1;
    param_1 = param_1 - 2;
  }
  uVar6 = CONCAT22(uVar1,uVar1);
  uVar5 = (ushort)param_1;
  if (param_1 < 0x60) {
    uVar5 = uVar5 >> 2;
  }
  else {
    uVar3 = param_1 >> 0x10;
    param_1 = param_1 & 0xffff001f;
    uVar3 = CONCAT22((short)uVar3,(ushort)param_1 ^ uVar5);
    puVar9 = (undefined4 *)((int)puVar9 + uVar3);
    iVar2 = (uVar3 >> 5) - 1;
    puVar8 = puVar9;
    do {
      do {
        iVar4 = iVar2;
        puVar8[-1] = uVar6;
        puVar8[-2] = uVar6;
        puVar8[-3] = uVar6;
        puVar8[-4] = uVar6;
        puVar8[-5] = uVar6;
        puVar8[-6] = uVar6;
        puVar8[-7] = uVar6;
        puVar8 = puVar8 + -8;
        *puVar8 = uVar6;
        sVar7 = (short)iVar4 + -1;
        iVar2 = CONCAT22((short)((uint)iVar4 >> 0x10),sVar7);
      } while (sVar7 != -1);
      iVar2 = iVar4 + -1;
    } while (iVar4 != 0);
    if ((ushort)param_1 == 0) {
      return in_D0;
    }
    uVar5 = (uVar5 & 0x1f) >> 2;
    if (uVar5 == 0) goto LAB_00007d9a;
  }
  sVar7 = uVar5 - 1;
  puVar8 = puVar9;
  do {
    puVar9 = puVar8 + 1;
    *puVar8 = uVar6;
    sVar7 = sVar7 + -1;
    puVar8 = puVar9;
  } while (sVar7 != -1);
LAB_00007d9a:
  puVar8 = puVar9;
  if ((param_1 & 2) != 0) {
    puVar8 = (undefined4 *)((int)puVar9 + 2);
    *(undefined2 *)puVar9 = uVar1;
  }
  if ((param_1 & 1) != 0) {
    *(undefined1 *)puVar8 = in_D1b;
  }
  return in_D0;
}



void FUN_00007db4(void)

{
  undefined4 uVar1;
  char cVar2;
  char cVar3;
  undefined1 *puVar4;
  int unaff_D2;
  uint uVar5;
  int unaff_D5;
  char *in_A0;
  char *pcVar6;
  undefined4 *puVar7;
  undefined1 *puVar8;
  bool bVar9;
  code *UNRECOVERED_JUMPTABLE;
  
  puVar4 = &stack0x00000004;
LAB_00007db6:
  do {
    puVar8 = puVar4;
    pcVar6 = in_A0;
    bVar9 = unaff_D5 == 0;
    unaff_D5 = unaff_D5 + -1;
    puVar7 = (undefined4 *)puVar8;
    if (bVar9) {
LAB_00007e1c:
      puVar7[-1] = puVar7;
      puVar7[-2] = unaff_D2;
      if (unaff_D2 + -1 != 0) {
        uVar5 = (unaff_D2 + -1) * 4;
        do {
          uVar1 = *(undefined4 *)((int)puVar7 + uVar5);
          *(undefined4 *)((int)puVar7 + uVar5) = *puVar7;
          *puVar7 = uVar1;
          bVar9 = 7 < uVar5;
          uVar5 = uVar5 - 8;
          puVar7 = puVar7 + 1;
        } while (bVar9 && uVar5 != 0);
      }
                    // WARNING: Could not recover jumptable at 0x00007e36. Too many branches
                    // WARNING: Treating indirect jump as call
      (*UNRECOVERED_JUMPTABLE)();
      return;
    }
    in_A0 = pcVar6 + 1;
    cVar2 = *pcVar6;
    puVar4 = puVar8;
    if (cVar2 != '\0') {
      if (cVar2 == '\r') goto LAB_00007e1c;
      if (((cVar2 != ' ') && (cVar2 != '\t')) && (cVar2 != ',')) {
        unaff_D2 = unaff_D2 + 1;
        if ((cVar2 == '\"') || (cVar2 == '\'')) {
          puVar7 = (undefined4 *)(puVar8 + -4);
          *(char **)(puVar8 + -4) = in_A0;
          do {
            bVar9 = unaff_D5 == 0;
            unaff_D5 = unaff_D5 + -1;
            if (bVar9) goto LAB_00007e1c;
            pcVar6 = in_A0 + 1;
            cVar3 = *in_A0;
            in_A0 = pcVar6;
          } while (cVar2 != cVar3);
        }
        else {
          puVar7 = (undefined4 *)(puVar8 + -4);
          *(char **)(puVar8 + -4) = pcVar6;
          do {
            bVar9 = unaff_D5 == 0;
            unaff_D5 = unaff_D5 + -1;
            if (bVar9) goto LAB_00007e1c;
            pcVar6 = in_A0 + 1;
            cVar2 = *in_A0;
            in_A0 = pcVar6;
            puVar4 = puVar8 + -4;
            if (cVar2 == '\0') goto LAB_00007db6;
          } while (((cVar2 != '\r') && (cVar2 != ' ')) && ((cVar2 != '\t' && (cVar2 != ','))));
        }
        pcVar6[-1] = '\0';
        in_A0 = pcVar6;
        puVar4 = puVar8 + -4;
      }
    }
  } while( true );
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007e4e(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00007ee4(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



void FUN_00007f3a(void)

{
  FUN_00007ee4();
  return;
}



// WARNING: Control flow encountered bad instruction data

void FUN_0000800c(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



void FUN_000080ae(void)

{
  __m68k_trap(0);
  FUN_00008510();
  return;
}



void FUN_0000813a(void)

{
  uint in_D1;
  
  __m68k_trap(0);
                    // WARNING: Read-only address (ram,0x00002002) is written
  bRam00002002 = ~('\x01' << (in_D1 & 7)) & 0xe9;
  FUN_00008510();
  return;
}



undefined4 FUN_0000819a(void)

{
  ushort *unaff_A3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 2;
  return 0xffffffff;
}



undefined8 FUN_000081c4(void)

{
  undefined4 in_D1;
  ushort *unaff_A3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 0;
  return CONCAT44(0xffffffff,in_D1);
}



undefined8 FUN_000081e6(void)

{
  undefined4 in_D1;
  ushort *unaff_A3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 1;
  return CONCAT44(0xffffffff,in_D1);
}



undefined8 FUN_000081f2(void)

{
  undefined4 in_D1;
  ushort *unaff_A3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 3;
  return CONCAT44(0xffffffff,in_D1);
}



undefined4 FUN_00008200(void)

{
  ushort *unaff_A3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 7;
  return 0xffffffff;
}



undefined4 FUN_0000820e(void)

{
  uint in_D1;
  ushort *unaff_A3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(uint *)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1 | 8;
  return 0xffffffff;
}



undefined8 FUN_00008228(void)

{
  undefined4 in_D1;
  ushort *unaff_A3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 6;
  return CONCAT44(0xffffffff,in_D1);
}



undefined4 FUN_0000827e(void)

{
  ushort *unaff_A3;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = 4;
  return 0xffffffff;
}



void FUN_000082b2(void)

{
  __m68k_trap(0);
  FUN_00008510();
  return;
}



void FUN_000082e8(void)

{
  __m68k_trap(0);
  FUN_00008510();
  return;
}



undefined4 * FUN_00008396(undefined4 *param_1,undefined2 *param_2,undefined4 *param_3)

{
  undefined4 in_D0;
  undefined4 *in_D1;
  undefined4 unaff_D3;
  
  __m68k_trap(0);
  *in_D1 = in_D0;
  *param_1 = in_D1;
  *param_2 = 0;
  *param_3 = unaff_D3;
  return in_D1;
}



// WARNING: Control flow encountered bad instruction data

void FUN_000083f2(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_000084b0(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_000084e8(void)

{
  undefined4 in_D0;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  
  *(undefined4 *)(&gda->buffer[0x8000 - 0x6c6e]) = in_D0;
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



void FUN_00008510(void)

{
  undefined4 in_D1;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  bool in_CF;
  
  if (in_CF) {
    *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1;
  }
  return;
}



undefined8 FUN_0000851a(void)

{
  undefined4 uVar1;
  undefined4 in_D1;
  int unaff_A5;
    // int unaff_A6; // [OS-9 GDP -> mappato su gda->buffer]
  bool in_CF;
  
  if (in_CF) {
    *(undefined4 *)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1;
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = 0;
  }
  return CONCAT44(uVar1,*(undefined4 *)(unaff_A5 + -0xc));
}



void FUN_00008528(void)

{
  FUN_0000854e();
  func_0x00007af8();
  __m68k_trap(0);
  return;
}



void FUN_0000853e(void)

{
  __m68k_trap(0);
  return;
}



void FUN_00008548(void)

{
  return;
}



void FUN_0000854e(void)

{
  return;
}


