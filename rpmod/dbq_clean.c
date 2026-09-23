
#include <stdint.h>
#include <stdbool.h>

// Strutture scoperte nell'assembly
typedef struct {
    uint32_t offset_8000;
    uint32_t offset_7FFC;
    uint32_t offset_7FF8;
    uint32_t intercept_code; // -0x7FF4
    uint32_t pid; // -0x7FF0
    uint32_t offset_7FEC;
    uint16_t offset_7FE8;
    void* ext_module; // -0x78FE
    // Altri campi GDA...
    uint8_t buffer[0x8000]; 
} OS9_GDA;

typedef struct {
    uint16_t offset;
    uint16_t count;
} SECTION_DESCRIPTOR;

typedef struct {
    uint32_t block_id;      // +0x00
    uint16_t block_type;    // +0x04 (deve essere 0x000C)
    uint8_t compression;    // +0x06 (2 = zlib)
    uint8_t decomp_size;    // +0x07 (in sectors)
    SECTION_DESCRIPTOR sections[10]; // +0x08
} BLOCK_0x0C_HEADER;

typedef struct {
    uint32_t block_id;
    uint16_t key;
    uint16_t offset;
    uint16_t count;
    uint16_t flags;
} INDEX_RECORD_0x0D;

typedef struct {
    uint16_t f0;
    uint16_t f2;
    uint16_t f4;
    uint16_t f6;
} RECORD_S0;

// Registri mappati
OS9_GDA* gda;


typedef unsigned char   undefined;

typedef unsigned char    uint8_t;
typedef unsigned short    uint16_t;
typedef unsigned int    uint32_t;
typedef unsigned short    ushort;
typedef unsigned short    word;


undefined LAB_00000000;
string s_****_00000230;
undefined LAB_0001109a;
undefined LAB_0001062c;
undefined FUN_000105bc;
undefined DAT_0000250a;
undefined FUN_00013a50;
ushort LAB_00000004+2;
undefined DAT_0000250b;
string s_NO_STREET_0000250c;
string s_NO_LOCATION_00002516;
undefined LAB_0000151c;
undefined LAB_000110b2;
undefined LAB_000110de;
undefined FUN_0001118a;
undefined LAB_000020d6;
undefined LAB_000112c8;
undefined FUN_000111b6;
undefined LAB_00002522;
undefined LAB_00002588;
undefined LAB_0001111e;
undefined LAB_0001114a;
undefined LAB_00003d52;
undefined LAB_000047a8;
undefined DAT_00006472;
undefined LAB_000112e6;
string s_NO_STREET_0000717e;
string s_NO_LOCATION_00007188;
string s_NO_STREET_00007194;
string s_NO_STREET_0000719e;
string s_NO_STREET_000071a8;
string s_NO_LOCATION_000071b2;
short LAB_00000004;
undefined LAB_00008920;
undefined LAB_00008f58;
undefined LAB_00009e48;
undefined LAB_0000af38;
string s_NO_STREET_0000b962;
string s_NO_STREET_0000b978;
string s_NO_STREET_0000e65c;
byte DAT_00017d77;
uint8_t UNK_0001308a;
uint8_t UNK_000130ba;
uint8_t LAB_00013642;
byte LAB_00000038+1;
byte DAT_000139d1;

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x00000286) overlaps instruction at (ram,0x00000284)
// 
// WARNING: Possible PIC construction at 0x0000025c: Changing call to branch
// WARNING: Possible PIC construction at 0x0000026a: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000025e)
// WARNING: Globals starting with '_' overlap smaller symbols at the same address

void FUN_0000004c(void)

{
  byte bVar1;
  bool bVar2;
  int unaff_D2;
  uint16_t unaff_D3w;
  uint unaff_D5;
  uint unaff_D6;
  int *piVar3;
  int *piVar4;
  char *extraout_A0;
  char *pcVar5;
  int iVar6;
  char *pcVar7;
  char *extraout_A1;
  int unaff_A3;
  int iVar8;
  int unaff_A4;
  int *piVar9;
  int unaff_A5;
  int unaff_A6;
  uint8_t uVar11;
  uint8_t auStack_100 [236];
  uint32_t uStack_14;
  uint32_t uStack_10;
  uint32_t uStack_c;
  int local_8;
  int *local_4;
  int *piVar10;
  
  *(uint *)(&gda->buffer[0x8000 - 0x7ff0]) = unaff_D6;
  *(uint *)(&gda->buffer[0x8000 - 0x7fec]) = unaff_D6;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7fe8]) = unaff_D3w;
  if (((*(byte *)(unaff_A3 + 0x14) & 0x20) != 0) &&
     (*(int *)(&gda->buffer[0x8000 - 0x7fe6]) = unaff_A4, unaff_A4 == 0)) {
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7fe6]) = _LAB_00000000;
  }
  if (unaff_D5 != 0) {
    if (((unaff_D5 & 1) == 0) && (iVar8 = unaff_A5 + unaff_D5, *(short *)(iVar8 + -2) == 0)) {
      bVar2 = true;
      piVar4 = (int *)(iVar8 + -4);
      while( true ) {
        while( true ) {
          piVar3 = piVar4 + -1;
          if (*piVar3 == 0) break;
          iVar6 = unaff_A5 + *piVar3;
          *(uint8_t *)(iVar6 + -1) = 0;
          *piVar3 = iVar6;
          unaff_D2 = unaff_D2 + 1;
          piVar4 = piVar3;
        }
        if (!bVar2) break;
        *(int **)(&gda->buffer[0x8000 - 0x6a16]) = piVar4;
        unaff_D2 = 0;
        bVar2 = false;
        piVar4 = piVar3;
      }
      if ((unaff_D2 == 0) && (*(short *)((int)piVar4 + -6) != 0)) {
        *(uint8_t *)((int)piVar4 + -5) = 0;
        local_8 = 0;
      }
      else {
        *piVar3 = unaff_A5;
        local_8 = unaff_D2 + 1;
        piVar4 = piVar3;
      }
      local_8 = local_8 + 1;
      if (*(int *)(iVar8 + -8) == 0) {
        if (*(char *)(unaff_A5 + 2) != -4) goto LAB_00000110;
        iVar8 = unaff_A5 + *(int *)(unaff_A5 + 4);
      }
      else {
        piVar9 = *(int **)(iVar8 + -8);
        do {
          piVar10 = piVar9;
          piVar9 = (int *)((int)piVar10 + 1);
        } while (*(char *)piVar10 != '\0');
        if ((piVar9 < piVar3) && (*(char *)piVar9 == -4)) {
          iVar8 = unaff_A5 + *(int *)((int)piVar10 + 3);
        }
        else {
LAB_00000110:
          iVar8 = *(int *)(unaff_A3 + 0xc) + unaff_A3;
        }
      }
      local_4 = piVar4 + -1;
      *local_4 = iVar8;
      *(uint8_t *)((int)piVar4 + -5) = 0;
      uVar11 = 0;
      goto LAB_0000011e;
    }
    *(uint8_t *)(unaff_A5 + -1 + unaff_D5) = 0;
  }
  local_8 = *(int *)(unaff_A3 + 0xc) + unaff_A3;
  local_4 = (int *)0x0;
  uVar11 = 0;
  uStack_c = 0xa6;
  FUN_00013d4c();
LAB_0000011e:
  uStack_c = 0x128;
  FUN_00013808();
  if ((bool)uVar11) {
    uStack_10 = 0x250;
    FUN_00000194();
    pcVar7 = (char *)(&gda->buffer[0x8000 - 0x6d9e]);
    pcVar5 = s______00000230;
    uStack_10 = 0x25e;
    do {
      *pcVar7 = *pcVar5;
      *pcVar7 = '\r';
      uStack_14 = 0x27e;
      FUN_00000194();
      __m68k_trap(0);
      bVar1 = (byte)unaff_D6 | 0xd8;
      unaff_D6 = (uint)bVar1;
      pcVar5 = extraout_A0;
      pcVar7 = extraout_A1;
    } while (bVar1 != 0);
    return;
  }
  uStack_c = 0x12e;
  FUN_0000014e();
  local_4 = *(int **)(&gda->buffer[0x8000 - 0x6a16]);
  local_8 = 0x142;
  FUN_000003f0();
  local_8 = 0x14e;
  FUN_00014416();
  *(int *)(&gda->buffer[0x8000 - 0x7ffc]) = &gda->buffer[0x8000 - 0x6340];
  *(int ***)(&gda->buffer[0x8000 - 0x8000]) = &local_4;
  *(int ***)(&gda->buffer[0x8000 - 0x7ff8]) = &local_4;
  if ((char**)(&gda->buffer[0x8000 - 0x7ff8]) <= auStack_100) {
    return;
  }
  if ((char**)(&gda->buffer[0x8000 - 0x7ffc]) <= auStack_100) {
    (char**)(&gda->buffer[0x8000 - 0x7ff8]) = auStack_100;
    return;
  }
  local_8 = 0x184;
  FUN_00000194();
  local_8 = 0x101;
  uStack_c = 0x194;
  FUN_0001442c();
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_0000014e(void)

{
  int unaff_A6;
  uint8_t auStack_fc [244];
  uint32_t uStack_8;
  uint32_t local_4;
  
  *(int *)(&gda->buffer[0x8000 - 0x7ffc]) = &gda->buffer[0x8000 - 0x6340];
  *(BADSPACEBASE **)(&gda->buffer[0x8000 - 0x8000]) = register0x0000003c;
  *(BADSPACEBASE **)(&gda->buffer[0x8000 - 0x7ff8]) = register0x0000003c;
  if ((char**)(&gda->buffer[0x8000 - 0x7ff8]) <= auStack_fc) {
    return;
  }
  if ((char**)(&gda->buffer[0x8000 - 0x7ffc]) <= auStack_fc) {
    (char**)(&gda->buffer[0x8000 - 0x7ff8]) = auStack_fc;
    return;
  }
  local_4 = 0x184;
  FUN_00000194();
  local_4 = 0x101;
  uStack_8 = 0x194;
  FUN_0001442c();
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_00000194(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Instruction at (ram,0x00000286) overlaps instruction at (ram,0x00000284)
// 
// WARNING: Possible PIC construction at 0x0000025c: Changing call to branch
// WARNING: Possible PIC construction at 0x0000026a: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000025e)

uint64_t FUN_000001b6(short param_1)

{
  ushort uVar1;
  uint32_t in_D0;
  uint32_t in_D1;
  byte unaff_D6b;
  uint32_t extraout_A0;
  char *extraout_A0_00;
  char *pcVar2;
  int in_A1;
  char *pcVar3;
  char *extraout_A1;
  int unaff_A6;
  bool bVar4;
  uint64_t uVar5;
  uint32_t uVar6;
  
  uVar1 = (short)(param_1 + -0x80) >> 2;
  if (uVar1 == 0xf) {
    __m68k_trap(0);
    *(byte *)(in_A1 + -1) = *(byte *)(in_A1 + -1) | 0xc;
  }
  bVar4 = uVar1 < 0xf;
  FUN_00014436();
  if (!bVar4) {
    return CONCAT44(in_D0,in_D1);
  }
  FUN_00000194(extraout_A0);
  pcVar3 = (char *)(&gda->buffer[0x8000 - 0x6d9e]);
  pcVar2 = s______00000230;
  uVar6 = 0x25e;
  do {
    *pcVar3 = *pcVar2;
    *pcVar3 = '\r';
    uVar5 = FUN_00000194(uVar6);
    __m68k_trap(0);
    unaff_D6b = unaff_D6b | 0xd8;
    pcVar2 = extraout_A0_00;
    pcVar3 = extraout_A1;
  } while (unaff_D6b != 0);
  return uVar5;
}



void FUN_0000028c(void)

{
  char *pcVar1;
  byte bVar2;
  int in_D0;
  int in_D1;
  int unaff_A6;
  uint8_t local_18 [2];
  uint16_t uStack_16;
  int local_14;
  int local_10;
  int local_c;
  
  local_10 = in_D0;
  local_c = in_D1;
  for (local_14 = 1; local_14 < local_10; local_14 = local_14 + 1) {
    pcVar1 = *(char **)(local_c + local_14 * 4);
    if (*pcVar1 == '-') {
      bVar2 = pcVar1[1];
      if (bVar2 == 0x6f) {
        FUN_00005c60(pcVar1 + 2);
      }
      else if (bVar2 < 0x70) {
        if (bVar2 == 0x61) {
          (**(code **)(&gda->buffer[0x8000 - 0x6604]))(local_18,pcVar1 + 2);
          *(uint16_t*)(&gda->buffer[0x8000 - 0x6a12]) = uStack_16;
        }
        else if (((bVar2 < 0x62) && (bVar2 == 0x4c)) && (pcVar1[2] == 'Q')) {
          (**(code **)(&gda->buffer[0x8000 - 0x6604]))(local_18,pcVar1 + 3);
          (**(code **)(&gda->buffer[0x8000 - 0x6610]))();
        }
      }
      else if (bVar2 == 0x72) {
        *(char **)(&gda->buffer[0x8000 - 0x6a0a]) = pcVar1 + 2;
      }
      else if ((bVar2 < 0x73) && (bVar2 == 0x71)) {
        *(char **)(&gda->buffer[0x8000 - 0x6a0e]) = pcVar1 + 2;
      }
    }
  }
  return;
}



void FUN_000002ae(uint16_t param_1,int param_2,int param_3,int param_4)

{
  byte bVar1;
  int unaff_A6;
  char *in_stack_00000000;
  
  while( true ) {
    if (*in_stack_00000000 == '-') {
      bVar1 = in_stack_00000000[1];
      if (bVar1 == 0x6f) {
        FUN_00005c60();
      }
      else if (bVar1 < 0x70) {
        if (bVar1 == 0x61) {
          (**(code **)(&gda->buffer[0x8000 - 0x6604]))(&stack0x00000004);
          *(uint16_t*)(&gda->buffer[0x8000 - 0x6a12]) = param_1;
        }
        else if (((bVar1 < 0x62) && (bVar1 == 0x4c)) && (in_stack_00000000[2] == 'Q')) {
          (**(code **)(&gda->buffer[0x8000 - 0x6604]))(&stack0x00000004);
          (**(code **)(&gda->buffer[0x8000 - 0x6610]))();
        }
      }
      else if (bVar1 == 0x72) {
        *(char **)(&gda->buffer[0x8000 - 0x6a0a]) = in_stack_00000000 + 2;
      }
      else if ((bVar1 < 0x73) && (bVar1 == 0x71)) {
        *(char **)(&gda->buffer[0x8000 - 0x6a0e]) = in_stack_00000000 + 2;
      }
    }
    param_2 = param_2 + 1;
    if (param_3 <= param_2) break;
    in_stack_00000000 = *(char **)(param_4 + param_2 * 4);
  }
  return;
}



uint32_t FUN_000003f0(void)

{
  bool bVar1;
  uint32_t uVar2;
  char cVar3;
  int unaff_A6;
  
  bVar1 = false;
  (**(code **)(&gda->buffer[0x8000 - 0x661c]))();
  (**(code **)(&gda->buffer[0x8000 - 0x6616]))();
  FUN_0000028c();
  (**(code **)(&gda->buffer[0x8000 - 0x660a]))();
  while (!bVar1) {
    uVar2 = (**(code **)(&gda->buffer[0x8000 - 0x65f8]))();
    cVar3 = FUN_00005a78(uVar2);
    if (cVar3 == '\0') {
      bVar1 = true;
    }
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65fe]))();
  return 0;
}



void FUN_00000500(void)

{
  int in_D0;
  uint8_t *in_D1;
  
  *(int *)(in_D1 + 2) = in_D0;
  *(int *)(in_D1 + 6) = in_D0 + 0x4c;
  *(int *)(in_D1 + 10) = in_D0 + 0x98;
  *(int *)(in_D1 + 0xe) = in_D0 + 0xe4;
  *(int *)(in_D1 + 0x12) = in_D0 + 0x130;
  *(int *)(in_D1 + 0x16) = in_D0 + 0x17c;
  *in_D1 = *(uint8_t *)(in_D0 + 0x214);
  *(int *)(in_D1 + 0x1a) = in_D0 + 0x1c8;
  return;
}



void FUN_00000562(void)

{
  int in_D0;
  uint8_t *in_D1;
  
  *(int *)(in_D1 + 2) = in_D0;
  *(int *)(in_D1 + 6) = in_D0 + 0x98;
  *(int *)(in_D1 + 10) = in_D0 + 0x4c;
  *(int *)(in_D1 + 0xe) = in_D0 + 0x130;
  *(int *)(in_D1 + 0x12) = in_D0 + 0xe4;
  *(int *)(in_D1 + 0x16) = in_D0 + 0x17c;
  *in_D1 = *(uint8_t *)(in_D0 + 0x214);
  *(int *)(in_D1 + 0x1a) = in_D0 + 0x1c8;
  *(uint16_t*)(in_D1 + 0x1e) = *(uint16_t*)(in_D0 + 0x216);
  return;
}



uint32_t FUN_000005ca(void)

{
  uint32_t in_D1;
  
  FUN_00000562();
  FUN_000071be();
  FUN_00004cc4();
  return in_D1;
}



void FUN_00000612(void)

{
  FUN_00000562();
  FUN_000072a2();
  return;
}



void FUN_00000648(void)

{
  int unaff_A6;
  
  FUN_00000562();
  (**(code **)(&gda->buffer[0x8000 - 0x6532]))();
  return;
}



void FUN_0000067c(void)

{
  FUN_00000562();
  FUN_000080ec();
  return;
}



uint64_t FUN_000006b2(void)

{
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  FUN_00000562();
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6538]))();
  if (iVar1 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6f9a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
    FUN_00004cc4();
  }
  return CONCAT44(iVar1,in_D1);
}



void FUN_00000742(void)

{
  int unaff_A6;
  
  FUN_00000562();
  (**(code **)(&gda->buffer[0x8000 - 0x653e]))();
  return;
}



void FUN_00000776(void)

{
  int unaff_A6;
  
  FUN_00000562();
  (**(code **)(&gda->buffer[0x8000 - 0x6544]))();
  return;
}



void FUN_000007aa(void)

{
  int unaff_A6;
  uint8_t auStack_14 [16];
  
  (**(code **)(&gda->buffer[0x8000 - 0x651a]))(auStack_14);
  return;
}



uint32_t FUN_000007ce(void)

{
  uint32_t in_D1;
  
  FUN_00000500();
  func_0x0000648a();
  FUN_00004cc4();
  return in_D1;
}



uint32_t FUN_0000081a(void)

{
  uint32_t in_D1;
  
  FUN_00000500();
  FUN_00006508();
  FUN_00004cc4();
  return in_D1;
}



uint32_t FUN_00000866(void)

{
  uint32_t in_D1;
  
  FUN_00000500();
  FUN_000065ea();
  FUN_00004cc4();
  return in_D1;
}



uint32_t FUN_000008b2(void)

{
  uint32_t in_D1;
  
  FUN_00000500();
  FUN_000066d8();
  FUN_00004cc4();
  return in_D1;
}



uint32_t FUN_000008fe(void)

{
  uint32_t in_D1;
  
  FUN_00000500();
  FUN_00006986();
  FUN_00004cc4();
  return in_D1;
}



uint32_t FUN_0000094a(void)

{
  uint32_t in_D1;
  
  FUN_00000500();
  FUN_00006a12();
  FUN_00004cc4();
  return in_D1;
}



int FUN_00000996(void)

{
  uint in_D1;
  int unaff_A6;
  uint8_t auStack_48 [52];
  int local_14;
  uint uStack_c;
  
  uStack_c = in_D1;
  FUN_00000500();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  local_14 = FUN_00005df4(uStack_c & 0xff,auStack_48);
  if (local_14 == 499) {
    FUN_00004178();
  }
  else if (local_14 == 0x1b6) {
    local_14 = 0x1a1;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return local_14;
}



int FUN_00000a2a(void)

{
  uint in_D1;
  int unaff_A6;
  uint8_t auStack_48 [52];
  int local_14;
  uint uStack_c;
  
  uStack_c = in_D1;
  FUN_00000500();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  local_14 = FUN_00005e80(uStack_c & 0xff,auStack_48);
  if (local_14 == 499) {
    FUN_00004226();
  }
  else if (local_14 == 0x1b6) {
    local_14 = 0x1a2;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return local_14;
}



int FUN_00000abe(void)

{
  uint in_D1;
  int unaff_A6;
  uint8_t auStack_48 [52];
  int local_14;
  uint uStack_c;
  
  uStack_c = in_D1;
  FUN_00000500();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  local_14 = FUN_00005fb6(uStack_c & 0xff,auStack_48);
  if (local_14 == 499) {
    FUN_000042de();
  }
  else if (local_14 == 0x1b6) {
    local_14 = 0x1a5;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return local_14;
}



int FUN_00000b52(void)

{
  uint in_D1;
  int unaff_A6;
  code *pcVar1;
  uint8_t auStack_48 [52];
  int local_14;
  uint32_t uStack_c;
  
  uStack_c = in_D1;
  FUN_00000500();
  if ((char)uStack_c == '\x01') {
    pcVar1 = FUN_000105bc;
  }
  else {
    pcVar1 = (code *)&LAB_0001062c;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(pcVar1);
  local_14 = FUN_000060ec(uStack_c & 0xff,auStack_48);
  if (local_14 == 499) {
    FUN_000042f0();
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return local_14;
}



int FUN_00000be4(void)

{
  uint in_D1;
  int unaff_A6;
  uint8_t auStack_48 [52];
  int local_14;
  uint uStack_c;
  
  uStack_c = in_D1;
  FUN_00000500();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  local_14 = FUN_000062c8(uStack_c & 0xff,auStack_48);
  if (local_14 == 499) {
    FUN_00004400();
  }
  else if (local_14 == 0x1b6) {
    local_14 = 0x1a7;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return local_14;
}



int FUN_00000c78(void)

{
  uint in_D1;
  int unaff_A6;
  uint8_t auStack_48 [52];
  int local_14;
  uint uStack_c;
  
  uStack_c = in_D1;
  FUN_00000500();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  local_14 = FUN_00006364(uStack_c & 0xff,auStack_48);
  if (local_14 == 499) {
    FUN_000044fa();
  }
  else if (local_14 == 0x1b6) {
    local_14 = 0x1a7;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return local_14;
}



uint64_t FUN_00000d0c(void)

{
  uint32_t in_D1;
  uint32_t local_14;
  
  FUN_00000500();
  local_14 = FUN_00006c9e();
  if (local_14 == 0x1b6) {
    local_14 = 499;
  }
  FUN_00004cc4();
  return CONCAT44(local_14,in_D1);
}



uint64_t FUN_00000d68(void)

{
  uint32_t in_D1;
  uint32_t local_14;
  
  FUN_00000500();
  local_14 = FUN_00006d3a();
  if (local_14 == 0x1b6) {
    local_14 = 499;
  }
  FUN_00004cc4();
  return CONCAT44(local_14,in_D1);
}



uint64_t FUN_00000dc4(void)

{
  uint32_t in_D1;
  uint32_t local_14;
  
  FUN_00000500();
  local_14 = FUN_00006e52();
  if (local_14 == 0x1b6) {
    local_14 = 499;
  }
  FUN_00004cc4();
  return CONCAT44(local_14,in_D1);
}



uint64_t FUN_00000e20(void)

{
  uint32_t in_D1;
  uint32_t local_14;
  
  FUN_00000500();
  local_14 = FUN_00006f6a();
  if (local_14 == 0x1b6) {
    local_14 = 499;
  }
  FUN_00004cc4();
  return CONCAT44(local_14,in_D1);
}



uint64_t FUN_00000e7c(void)

{
  uint32_t in_D1;
  uint32_t local_14;
  
  FUN_00000500();
  local_14 = FUN_00007008();
  if (local_14 == 0x1b6) {
    local_14 = 499;
  }
  FUN_00004cc4();
  return CONCAT44(local_14,in_D1);
}



uint64_t FUN_00000ed8(void)

{
  uint32_t in_D1;
  uint32_t local_14;
  
  FUN_00000500();
  local_14 = FUN_000070b4();
  if (local_14 == 0x1b6) {
    local_14 = 499;
  }
  FUN_00004cc4();
  return CONCAT44(local_14,in_D1);
}



uint64_t FUN_00000f34(void)

{
  int iVar1;
  uint uVar2;
  uint32_t in_D1;
  int iVar3;
  int unaff_A6;
  ushort local_54;
  ushort local_52;
  ushort local_50;
  ushort local_4e;
  ushort local_40;
  
  FUN_00000500(0);
  local_54 = 0x7fff;
  local_52 = 0x7fff;
  local_50 = 0x7fff;
  local_4e = 0x7fff;
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6532]))();
  if ((iVar1 == 499) && (iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(), iVar1 == 499)) {
    uVar2 = (uint)*(ushort *)(uint)*(ushort *)(local_40 + 6);
    for (iVar3 = 0; iVar3 < (int)(uint)*(byte *)(*(ushort *)(local_40 + 6) + 2); iVar3 = iVar3 + 1)
    {
      if (local_50 == 0x7fff) {
        local_50 = *(ushort *)(uVar2 + 0xc);
      }
      else if ((*(short *)(uVar2 + 0xc) != 0x7fff) && (*(ushort *)(uVar2 + 0xc) < local_50)) {
        local_50 = *(ushort *)(uVar2 + 0xc);
      }
      if (local_54 == 0x7fff) {
        local_54 = *(ushort *)(uVar2 + 8);
      }
      else if ((*(short *)(uVar2 + 8) != 0x7fff) && (*(ushort *)(uVar2 + 8) < local_54)) {
        local_54 = *(ushort *)(uVar2 + 8);
      }
      if (local_4e == 0x7fff) {
        local_4e = *(ushort *)(uVar2 + 0xe);
      }
      else if ((*(short *)(uVar2 + 0xe) != 0x7fff) && (local_4e < *(ushort *)(uVar2 + 0xe))) {
        local_4e = *(ushort *)(uVar2 + 0xe);
      }
      if (local_52 == 0x7fff) {
        local_52 = *(ushort *)(uVar2 + 10);
      }
      else if ((*(short *)(uVar2 + 10) != 0x7fff) && (local_52 < *(ushort *)(uVar2 + 10))) {
        local_52 = *(ushort *)(uVar2 + 10);
      }
      uVar2 = uVar2 + *(ushort *)(&gda->buffer[0x8000 - 0x7240]);
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    if ((((local_54 == 0x7fff) && (local_52 == 0x7fff)) && (local_50 == 0x7fff)) &&
       (local_4e == 0x7fff)) {
      iVar1 = 0x1ad;
    }
    else {
      FUN_00004cc4();
    }
  }
  return CONCAT44(iVar1,in_D1);
}



uint64_t FUN_00001138(void)

{
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  FUN_00000500();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  iVar1 = FUN_000075d0();
  if (iVar1 == 499) {
    FUN_00003f3c();
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return CONCAT44(iVar1,in_D1);
}



uint64_t FUN_000011a6(void)

{
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  FUN_00000500();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  iVar1 = FUN_000076c2();
  if (iVar1 == 499) {
    FUN_00003f3c();
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return CONCAT44(iVar1,in_D1);
}



uint64_t FUN_00001214(void)

{
  int iVar1;
  char cVar2;
  uint32_t in_D1;
  int unaff_A6;
  int local_6c;
  uint8_t auStack_50 [46];
  undefined *local_22;
  uint32_t local_18;
  
  local_18 = in_D1;
  FUN_00000500();
  local_22 = &DAT_0000250a;
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_00013a50);
  (**(code **)(&gda->buffer[0x8000 - 0x6550]))();
  iVar1 = FUN_000062c8(1,auStack_50);
  if (iVar1 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    do {
      cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar2 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
        (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
        if (iVar1 == 499) {
          FUN_00003fa4();
        }
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
        goto LAB_00001382;
      }
      iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x654a]))();
      if (iVar1 != 499) goto LAB_000012bc;
    } while ((*(short *)(local_6c + (uint)*(ushort *)(local_6c + (uint)uRam00000006 + 6) + 0xc) == 0
             ) || (cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))(), cVar2 != '\0'));
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
    iVar1 = 0x1f2;
  }
  else {
LAB_000012bc:
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
  }
LAB_00001382:
  return CONCAT44(iVar1,local_18);
}



uint64_t FUN_00001390(void)

{
  int iVar1;
  char cVar2;
  uint32_t in_D1;
  int unaff_A6;
  int local_6c;
  uint8_t auStack_50 [34];
  char *local_2e;
  char *local_2a;
  undefined *local_22;
  uint32_t local_18;
  
  local_18 = in_D1;
  FUN_00000500();
  local_22 = &DAT_0000250b;
  local_2e = s_NO_STREET_0000250c;
  local_2a = s_NO_LOCATION_00002516;
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_00013a50);
  (**(code **)(&gda->buffer[0x8000 - 0x6550]))();
  iVar1 = FUN_00006364(1,auStack_50);
  if (iVar1 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    do {
      cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar2 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
        (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
        if (iVar1 == 499) {
          FUN_00003fa4();
        }
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
        goto LAB_0000150e;
      }
      iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x654a]))();
      if (iVar1 != 499) goto LAB_00001448;
    } while ((*(short *)(local_6c + (uint)*(ushort *)(local_6c + (uint)uRam00000006 + 6) + 0xc) == 0
             ) || (cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))(), cVar2 != '\0'));
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
    iVar1 = 0x1f2;
  }
  else {
LAB_00001448:
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
  }
LAB_0000150e:
  return CONCAT44(iVar1,local_18);
}



uint64_t FUN_00001558(void)

{
  int iVar1;
  char cVar2;
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0000151c);
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6520]))();
  if (iVar1 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    FUN_00004cc4();
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    while( true ) {
      cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar2 == '\0') break;
      FUN_00004cc4();
    }
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return CONCAT44(iVar1,in_D1);
}



uint64_t FUN_000015f6(void)

{
  int in_D0;
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  if ((*(int *)(in_D0 + 0x36) < *(int *)(in_D0 + 0x2e)) ||
     (*(int *)(in_D0 + 0x3a) < *(int *)(in_D0 + 0x32))) {
    iVar1 = 0x1b7;
  }
  else {
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110b2);
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65ec]))();
    if (iVar1 == 499) {
      FUN_00003f3c();
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  }
  return CONCAT44(iVar1,in_D1);
}



uint64_t FUN_00001682(void)

{
  int in_D0;
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_2c [20];
  int local_18;
  uint32_t local_10;
  
  local_10 = in_D1;
  if ((*(int *)(in_D0 + 0x36) < *(int *)(in_D0 + 0x2e)) ||
     (*(int *)(in_D0 + 0x3a) < *(int *)(in_D0 + 0x32))) {
    local_18 = 0x1b7;
  }
  else {
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_00013a50);
    local_18 = (**(code **)(&gda->buffer[0x8000 - 0x65f2]))(auStack_2c);
    if (local_18 == 499) {
      FUN_00003fa4();
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  }
  return CONCAT44(local_18,local_10);
}



uint32_t FUN_0000171a(void)

{
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x652c]))();
  FUN_00004cc4();
  return in_D1;
}



uint64_t FUN_00001750(void)

{
  int in_D0;
  int iVar1;
  char cVar2;
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_24 [20];
  int local_10;
  uint32_t local_c;
  
  local_10 = in_D0;
  local_c = in_D1;
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001109a);
  iVar1 = FUN_000090ba(*(uint8_t *)(local_10 + 0x54),local_10 + 8,auStack_24);
  if (iVar1 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    FUN_0000317e();
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    while( true ) {
      cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar2 == '\0') break;
      FUN_000045e0();
    }
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return CONCAT44(iVar1,local_c);
}



uint64_t FUN_0000180e(void)

{
  uint32_t in_D1;
  uint8_t auStack_148 [76];
  uint8_t auStack_fc [76];
  uint8_t auStack_b0 [76];
  uint8_t auStack_64 [76];
  int local_18;
  uint32_t local_10;
  
  local_10 = in_D1;
  local_18 = FUN_000077b4(auStack_fc,auStack_148,auStack_64,auStack_b0);
  if (local_18 == 499) {
    FUN_00004cc4();
  }
  return CONCAT44(local_18,local_10);
}



uint64_t FUN_0000186a(void)

{
  char cVar5;
  int iVar1;
  int iVar2;
  ushort uVar4;
  int iVar3;
  uint32_t in_D1;
  int iVar6;
  int iVar7;
  int unaff_A6;
  short sVar8;
  uint8_t auStack_5e [16];
  uint8_t local_4e;
  uint16_t local_4c;
  int local_4a;
  uint32_t *local_46;
  uint8_t auStack_42 [20];
  short local_2e;
  uint32_t local_28;
  
  local_46 = (uint32_t *)0x0;
  local_4a = 0;
  local_28 = in_D1;
  cVar5 = func_0x00000466();
  if (cVar5 == '\0') {
    iVar1 = 0x1b7;
    goto LAB_00001b16;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110de);
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65c2]))(auStack_42);
  if (iVar1 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    cVar5 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
    if (cVar5 == '\0') {
      sVar8 = 0;
    }
    else {
      iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
      if (iVar1 != 499) goto LAB_00001b0a;
      sVar8 = *(short *)(local_4a + 0x28 +
                        (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a2]) +
                        (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) * 100;
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))(sVar8);
    }
    FUN_00004cc4(sVar8);
    local_4c = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    FUN_00004cc4();
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    while( true ) {
      cVar5 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if ((cVar5 == '\0') || (iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(), iVar1 != 499))
      goto LAB_00001b0a;
      local_4e = *(char *)(local_4a + 0x2d +
                          (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a2]) +
                          (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) == '\x01';
      (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_5e,sVar8,*local_46);
      FUN_00004cc4();
      local_2e = 0;
      iVar3 = local_4a + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]);
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x657a]))();
      if (iVar2 == 0) break;
      iVar6 = 0;
      iVar7 = local_4a + (uint)*(ushort *)(iVar3 + 0x10);
      while (iVar6 < (int)(uint)*(ushort *)(iVar3 + 0x12)) {
        cVar5 = (**(code **)(&gda->buffer[0x8000 - 0x65aa]))();
        if ((cVar5 != '\0') && ((*(byte *)(iVar7 + 0x10) & 0x70) != 0x50)) {
          *(short *)(iVar2 + local_2e * 2) = (short)iVar7 - (short)local_4a;
          local_2e = local_2e + 1;
        }
        iVar6 = iVar6 + 1;
        if (*(short *)(local_4a + 4) == 0) {
          uVar4 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
        }
        else {
          uVar4 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
        }
        iVar7 = iVar7 + (uint)uVar4;
      }
      FUN_00004cc4();
      iVar3 = (int)local_2e;
      while (iVar3 = iVar3 + -1, -1 < iVar3) {
        FUN_00003712();
      }
      (**(code **)(&gda->buffer[0x8000 - 0x6598]))();
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    iVar1 = 0x1f2;
  }
LAB_00001b0a:
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
LAB_00001b16:
  return CONCAT44(iVar1,local_28);
}



uint64_t FUN_00001b24(void)

{
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_30 [8];
  uint32_t local_28;
  uint16_t local_24;
  uint8_t auStack_22 [2];
  uint16_t local_20;
  uint8_t auStack_1e [2];
  uint32_t local_1c;
  uint16_t local_18;
  uint16_t local_16;
  int local_14;
  uint32_t local_c;
  
  local_c = in_D1;
  local_14 = FUN_00009aac(&local_1c);
  if (local_14 == 499) {
    local_14 = (**(code **)(&gda->buffer[0x8000 - 0x659e]))(auStack_30,auStack_22,auStack_1e);
    if (local_14 == 499) {
      local_28 = local_1c;
      local_24 = local_18;
      local_20 = local_16;
      FUN_00004cc4();
    }
  }
  return CONCAT44(local_14,local_c);
}



uint64_t FUN_00001ba8(void)

{
  char cVar2;
  uint32_t uVar1;
  uint32_t in_D1;
  
  cVar2 = FUN_000039aa(0);
  if (cVar2 == '\0') {
    uVar1 = 0x1f2;
  }
  else {
    uVar1 = 499;
  }
  return CONCAT44(uVar1,in_D1);
}



uint64_t FUN_00001be8(void)

{
  int in_D0;
  int iVar1;
  char cVar2;
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_212 [76];
  uint8_t auStack_1c6 [76];
  uint8_t auStack_17a [76];
  uint8_t auStack_12e [152];
  uint32_t local_96;
  uint32_t local_92;
  uint8_t local_8d;
  int local_8c;
  uint32_t local_88;
  uint16_t local_84;
  uint16_t local_82;
  uint32_t *local_80;
  ushort local_7c;
  ushort local_7a;
  int local_78;
  int local_74;
  uint16_t local_70;
  uint8_t auStack_6e [20];
  uint8_t auStack_5a [60];
  uint8_t local_1e [6];
  uint32_t local_18;
  
  local_74 = 0;
  local_78 = 0;
  local_80 = (uint32_t *)0x0;
  local_92 = 0;
  local_96 = 0;
  local_18 = in_D1;
  iVar1 = FUN_000077b4(auStack_12e,auStack_17a,auStack_1c6,auStack_212);
  if (iVar1 != 499) goto LAB_00001f64;
  FUN_00004cc4();
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65a4]))(local_1e);
  if (iVar1 != 499) goto LAB_00001f64;
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_0001118a);
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_0001118a);
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
  if (iVar1 != 499) goto LAB_00001f64;
  local_78 = local_74 + (uint)*(ushort *)(in_D0 + 6);
  (**(code **)(&gda->buffer[0x8000 - 0x65ce]))(&local_7c);
  local_84 = (**(code **)(&gda->buffer[0x8000 - 0x65e0]))();
  local_80 = (uint32_t *)(local_74 + (uint)local_7c);
  for (local_8c = 0; local_8c < (int)(uint)local_7a; local_8c = local_8c + 1) {
    if (((*(char *)(in_D0 + 8) == '\x01') && ((*(byte *)((int)local_80 + 7) & 1) == 0)) ||
       ((*(char *)(in_D0 + 8) == '\x02' && ((*(byte *)((int)local_80 + 7) & 1) != 0)))) {
      local_88 = *local_80;
      local_82 = *(uint16_t*)(local_80 + 1);
      (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
    }
    local_80 = (uint32_t *)((int)local_80 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x729c]));
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_0001118a);
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6580]))(auStack_6e);
  if (iVar1 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_0001118a);
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6586]))(auStack_5a);
    if (iVar1 == 499) {
      local_70 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
      FUN_00004cc4();
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
      do {
        cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
        if (cVar2 == '\0') {
          (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
          goto LAB_00001f24;
        }
        (**(code **)(&gda->buffer[0x8000 - 0x65b0]))();
        cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x658c]))(&local_96);
        if (cVar2 == '\0') {
          cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x658c]))(&local_96);
          if (cVar2 == '\0') {
            local_8d = 0;
          }
          else {
            local_8d = 1;
          }
        }
        else {
          local_8d = 2;
        }
        cVar2 = FUN_000039aa(local_8d);
      } while (cVar2 != '\0');
      goto LAB_00001ef4;
    }
LAB_00001f3a:
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  goto LAB_00001f64;
  while( true ) {
    cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x658c]))(&local_96);
    if (cVar2 == '\0') {
      cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x658c]))(&local_96);
      if (cVar2 == '\0') {
        local_8d = 0;
      }
      else {
        local_8d = 1;
      }
    }
    else {
      local_8d = 2;
    }
    cVar2 = FUN_000039aa(local_8d);
    if (cVar2 == '\0') break;
LAB_00001f24:
    cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
    if (cVar2 == '\0') goto LAB_00001f3a;
  }
LAB_00001ef4:
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  iVar1 = 0x1f2;
LAB_00001f64:
  return CONCAT44(iVar1,local_18);
}



uint64_t FUN_00001f72(void)

{
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  uint32_t local_18;
  
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6526]))();
  if (iVar1 == 499) {
    FUN_00004cc4(0x1e,local_18);
  }
  return CONCAT44(iVar1,in_D1);
}



uint64_t FUN_00001fc2(void)

{
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_3c [20];
  uint32_t local_28;
  uint8_t auStack_24 [20];
  uint32_t local_10;
  
  local_28 = 0;
  local_10 = in_D1;
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_24);
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110de);
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65c8]))(auStack_3c,1);
  if (iVar1 == 499) {
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    if (iVar1 < 1) {
      iVar1 = 0x1a9;
    }
    else {
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
      (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
      if (iVar1 == 499) {
        (**(code **)(&gda->buffer[0x8000 - 0x65e6]))
                  (*(short *)((uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a2]) +
                              (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]) + 0x28) * 100);
        FUN_00004cc4();
        iVar1 = 499;
      }
    }
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return CONCAT44(iVar1,local_10);
}



uint64_t FUN_0000211c(void)

{
  char cVar1;
  uint32_t in_D1;
  int unaff_A6;
  uint16_t local_4c;
  uint8_t local_4a [54];
  int local_14;
  uint32_t local_c;
  
  local_c = in_D1;
  FUN_00000500();
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000020d6);
  local_14 = (**(code **)(&gda->buffer[0x8000 - 0x65d4]))(local_4a,&local_4c);
  if (local_14 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    FUN_00004cc4();
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    while( true ) {
      cVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar1 == '\0') break;
      FUN_00004724(local_4c);
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    }
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return CONCAT44(local_14,local_c);
}



uint64_t FUN_000021ea(void)

{
  uint16_t *in_D0;
  uint32_t in_D1;
  int unaff_A6;
  int local_41c;
  uint8_t auStack_1fe [28];
  uint8_t auStack_1e2 [20];
  uint8_t auStack_1ce [76];
  uint8_t auStack_182 [76];
  uint8_t auStack_136 [76];
  uint8_t auStack_ea [152];
  int local_52;
  uint8_t local_4e;
  uint16_t *local_4c;
  uint16_t *local_48;
  uint16_t *local_44;
  uint16_t *local_40;
  uint16_t *local_3c;
  uint16_t *local_38;
  int local_34;
  uint16_t local_30;
  uint32_t *local_2e;
  uint32_t local_2a;
  uint local_26;
  uint32_t *local_20;
  uint32_t local_1c;
  uint local_18;
  uint32_t local_10;
  
  local_4c = in_D0 + 1;
  local_48 = in_D0 + 0x27;
  local_44 = in_D0 + 0x4d;
  local_40 = in_D0 + 0x73;
  local_3c = in_D0 + 0x99;
  local_38 = in_D0 + 0xc0;
  local_34 = (int)in_D0 + 0x1cd;
  local_4e = *(uint8_t *)(in_D0 + 0xe6);
  local_30 = in_D0[0xbf];
  local_10 = in_D1;
  switch(*in_D0) {
  case 1:
  case 7:
    local_52 = FUN_000072a2();
    break;
  case 2:
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_000111b6);
    local_52 = FUN_0000734e();
    goto LAB_00002370;
  case 3:
    local_52 = FUN_000080ec();
    if (local_52 == 499) {
      local_1c = local_2a;
      local_18 = local_26;
    }
    break;
  default:
    local_52 = 0x1f2;
    break;
  case 5:
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000112c8);
    local_52 = FUN_000074ce(auStack_1fe);
    if (local_52 == 499) {
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
      (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      local_1c = *local_2e;
      local_18 = local_2e[1];
    }
    goto LAB_000023aa;
  case 6:
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_000111b6);
    local_52 = FUN_00008b02(auStack_1e2,0);
LAB_00002370:
    if (local_52 == 499) {
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
      (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      local_1c = *local_20;
      local_18 = local_20[1];
    }
LAB_000023aa:
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  }
  if (local_52 == 499) {
    local_52 = FUN_000077b4(auStack_ea,auStack_136,auStack_182,auStack_1ce);
    local_52 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_52 == 499) {
      (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_1fe,local_41c + (local_18 & 0xffff));
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      (**(code **)(&gda->buffer[0x8000 - 0x655c]))(0x4c);
      (**(code **)(&gda->buffer[0x8000 - 0x655c]))(0x4c);
      (**(code **)(&gda->buffer[0x8000 - 0x655c]))(0x4c);
      (**(code **)(&gda->buffer[0x8000 - 0x655c]))(0x4c);
      (**(code **)(&gda->buffer[0x8000 - 0x655c]))(0x4c);
      FUN_00004cc4();
    }
  }
  return CONCAT44(local_52,local_10);
}



void FUN_0000292a(void)

{
  int unaff_A6;
  uint8_t auStack_18 [20];
  
  (**(code **)(&gda->buffer[0x8000 - 0x6f76]))(auStack_18);
  (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
  (**(code **)(&gda->buffer[0x8000 - 0x6eca]))();
  return;
}



uint32_t FUN_0000296a(uint param_1)

{
  int iVar1;
  uint32_t uVar2;
  byte in_D1b;
  int unaff_A6;
  uint16_t local_14;
  uint16_t local_12;
  
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6502]))();
  if (((iVar1 == 499) && ((short)(ushort)in_D1b <= local_14)) &&
     ((uint)local_12 * 100 < param_1 || (uint)local_12 * 100 - param_1 == 0)) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}



uint64_t FUN_000029be(void)

{
  short *in_D0;
  uint32_t uVar1;
  char cVar2;
  uint32_t in_D1;
  int iVar3;
  int unaff_A6;
  uint8_t auStack_34 [21];
  uint8_t local_1f;
  byte local_1e;
  char local_1d;
  int local_1c;
  uint32_t local_14;
  
  local_1c = 499;
  local_14 = in_D1;
  if ((*(int *)(in_D0 + 0x1b) < *(int *)(in_D0 + 0x17)) ||
     (*(int *)(in_D0 + 0x1d) < *(int *)(in_D0 + 0x19))) {
    local_1c = 0x1b7;
  }
  else {
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7fc6]) = 0;
    while (1 << (*(uint *)(&gda->buffer[0x8000 - 0x7fc6]) & 0x3f) < *(int *)(in_D0 + 0x15)) {
      *(int *)(&gda->buffer[0x8000 - 0x7fc6]) = *(int *)(&gda->buffer[0x8000 - 0x7fc6]) + 1;
    }
    if (*(int *)(in_D0 + 0x15) < 1 << (*(uint *)(&gda->buffer[0x8000 - 0x7fc6]) & 0x3f)) {
      local_1c = 0x1bb;
    }
    else if (*in_D0 == 0) {
      local_1c = 499;
    }
    else {
      local_1e = 0;
      for (iVar3 = 0; iVar3 < *in_D0; iVar3 = iVar3 + 1) {
        if (6 < *(byte *)((int)in_D0 + iVar3 + 2)) {
          local_1c = 0x1be;
          goto LAB_00002c94;
        }
        if (local_1e < *(byte *)((int)in_D0 + iVar3 + 2)) {
          local_1e = *(byte *)((int)in_D0 + iVar3 + 2);
        }
      }
      uVar1 = FUN_0000292a();
      local_1d = '\x14';
      cVar2 = FUN_0000296a(uVar1);
      if (cVar2 == '\0') {
        local_1d = '\x15';
        cVar2 = FUN_0000296a(uVar1);
        if (cVar2 == '\0') {
          local_1d = '\x16';
          cVar2 = FUN_0000296a(uVar1);
          if (cVar2 == '\0') {
            local_1d = '\0';
          }
        }
      }
      if (local_1d == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001111e);
        (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110b2);
        for (iVar3 = 0; iVar3 < *in_D0; iVar3 = iVar3 + 1) {
          cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
          if (cVar2 == '\0') goto LAB_00002c04;
        }
        *(uint32_t*)(&gda->buffer[0x8000 - 0x7fe2]) = 0xffffffff;
        *(uint16_t*)(&gda->buffer[0x8000 - 0x7fde]) = 0xffff;
        local_1c = (**(code **)(&gda->buffer[0x8000 - 0x6514]))(&LAB_00002588,auStack_34);
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
        FUN_000031f4(*(uint16_t*)(&gda->buffer[0x8000 - 0x7fde]),*(uint32_t*)(&gda->buffer[0x8000 - 0x7fc6]));
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      }
      else {
        for (iVar3 = 0; iVar3 < *in_D0; iVar3 = iVar3 + 1) {
          (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001114a);
          (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110b2);
          cVar2 = *(char *)((int)in_D0 + iVar3 + 2);
          if (cVar2 == '\0') {
LAB_00002bca:
            local_1f = 0x68;
          }
          else if (cVar2 == '\x01') {
            local_1f = 0x69;
          }
          else {
            if (cVar2 != '\x02') goto LAB_00002bca;
            local_1f = 0x6a;
          }
          cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
          if (cVar2 == '\0') goto LAB_00002c04;
          *(uint32_t*)(&gda->buffer[0x8000 - 0x7fe2]) = 0xffffffff;
          *(uint8_t *)(&gda->buffer[0x8000 - 0x7fdc]) = *(uint8_t *)((int)in_D0 + iVar3 + 2);
          local_1c = (**(code **)(&gda->buffer[0x8000 - 0x650e]))(&LAB_00002522,auStack_34,1);
          if (local_1c != 499) break;
          (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
          FUN_000033f2(*(uint8_t *)(&gda->buffer[0x8000 - 0x7fdc]),*(uint32_t*)(&gda->buffer[0x8000 - 0x7fc6]));
          (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
        }
      }
    }
  }
LAB_00002c94:
  return CONCAT44(local_1c,local_14);
LAB_00002c04:
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  local_1c = 0x1f2;
  goto LAB_00002c94;
}



uint64_t FUN_00002d0a(void)

{
  short *in_D0;
  char cVar1;
  uint32_t in_D1;
  int unaff_A6;
  uint32_t local_48;
  int local_44;
  uint8_t local_3f;
  int local_3e;
  ushort *local_3a;
  int local_22;
  int local_18;
  uint32_t local_10;
  
  local_22 = 0;
  local_3a = (ushort *)0x0;
  local_3e = 0;
  local_48 = 0;
  local_10 = in_D1;
  if ((*(int *)(in_D0 + 0xc6) < *(int *)(in_D0 + 0xc2)) ||
     (*(int *)(in_D0 + 200) < *(int *)(in_D0 + 0xc4))) {
    local_18 = 0x1b7;
  }
  else {
    local_18 = (**(code **)(&gda->buffer[0x8000 - 0x64f0]))();
    if ((local_18 == 499) && (local_18 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(), local_18 == 499)) {
      (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110b2);
      local_3a = (ushort *)(local_22 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      local_3e = local_22 + (uint)*local_3a;
      for (local_44 = 0; local_44 < (int)(uint)local_3a[1]; local_44 = local_44 + 1) {
        local_3f = *(uint8_t *)(local_3e + 1);
        cVar1 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
        if (cVar1 == '\0') {
          (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
          (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
          local_18 = 0x1f2;
          goto LAB_00002eca;
        }
        local_3e = local_3e + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7298]);
      }
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      for (local_44 = 0; local_44 < *in_D0; local_44 = local_44 + 1) {
        cVar1 = (**(code **)(&gda->buffer[0x8000 - 0x658c]))(&local_48);
        if (cVar1 == '\0') {
          (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
          local_18 = 0x1a8;
          goto LAB_00002eca;
        }
      }
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      for (local_44 = 0; local_44 < *in_D0; local_44 = local_44 + 1) {
        *(int *)(&gda->buffer[0x8000 - 0x7fc2]) = (int)in_D0 + local_44 * 0x4d + 3;
        (**(code **)(&gda->buffer[0x8000 - 0x64fc]))(*(uint8_t *)((int)in_D0 + local_44 * 0x4d + 2));
      }
      local_18 = 499;
    }
  }
LAB_00002eca:
  return CONCAT44(local_18,local_10);
}



void FUN_00002f2e(void)

{
  int unaff_A6;
  uint8_t auStack_18 [20];
  
  (**(code **)(&gda->buffer[0x8000 - 0x6f76]))(auStack_18);
  (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
  (**(code **)(&gda->buffer[0x8000 - 0x6eca]))();
  return;
}



uint64_t FUN_00002f6e(void)

{
  uint32_t uVar1;
  char cVar2;
  uint32_t in_D1;
  
  uVar1 = FUN_00002f2e();
  cVar2 = func_0x00002ee6(uVar1);
  if (cVar2 == '\0') {
    cVar2 = func_0x00002ee6(uVar1);
    if (cVar2 == '\0') {
      uVar1 = 0x16;
    }
    else {
      uVar1 = 0x15;
    }
  }
  else {
    uVar1 = 0x14;
  }
  return CONCAT44(uVar1,in_D1);
}



uint32_t FUN_00002fae(void)

{
  short *in_D0;
  char cVar1;
  uint in_D1;
  int iVar2;
  int unaff_A6;
  uint8_t auStack_30 [20];
  uint32_t local_1c;
  uint uStack_14;
  
  if ((*(int *)(in_D0 + 0x1b) < *(int *)(in_D0 + 0x17)) ||
     (*(int *)(in_D0 + 0x1d) < *(int *)(in_D0 + 0x19))) {
    local_1c = 0x1b7;
  }
  else {
    uStack_14 = in_D1;
    FUN_00002f6e();
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110b2);
    for (iVar2 = 0; iVar2 < *in_D0; iVar2 = iVar2 + 1) {
      cVar1 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
      if (cVar1 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
        return 0x1f2;
      }
    }
    local_1c = (**(code **)(&gda->buffer[0x8000 - 0x650e]))(&LAB_00003d52,auStack_30,uStack_14 & 0xff);
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  }
  return local_1c;
}



uint64_t FUN_00003078(void)

{
  int in_D0;
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_42 [20];
  uint8_t auStack_2e [21];
  uint8_t local_19;
  uint32_t local_18;
  uint32_t local_10;
  
  local_10 = in_D1;
  if ((*(int *)(in_D0 + 0x36) < *(int *)(in_D0 + 0x2e)) ||
     (*(int *)(in_D0 + 0x3a) < *(int *)(in_D0 + 0x32))) {
    local_18 = 0x1b7;
  }
  else {
    local_19 = FUN_00002f6e();
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110b2);
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110b2);
    local_18 = (**(code **)(&gda->buffer[0x8000 - 0x64ea]))(auStack_2e,auStack_42);
    FUN_00003f3c();
    FUN_00003f3c();
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  }
  return CONCAT44(local_18,local_10);
}



void FUN_0000312c(void)

{
  uint16_t in_D1w;
  int unaff_A6;
  
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7fbe]) = in_D1w;
  FUN_00004c6c();
  return;
}



void FUN_00003150(void)

{
  FUN_00004c84();
  return;
}



void FUN_0000316c(void)

{
  FUN_00004ca6();
  return;
}



void FUN_0000317e(void)

{
  FUN_00004d14();
  return;
}



uint32_t FUN_00003194(void)

{
  short in_D0w;
  char cVar1;
  int iVar2;
  
  iVar2 = 0;
  while( true ) {
    if (in_D0w <= iVar2) {
      return 1;
    }
    cVar1 = FUN_00004cc4();
    if (cVar1 == '\0') break;
    iVar2 = iVar2 + 1;
  }
  return 0;
}



void FUN_000031d0(void)

{
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x649c]))();
  FUN_00004cc4();
  return;
}



uint32_t FUN_000031f4(ushort param_1,uint32_t param_2)

{
  uint32_t in_D0;
  int iVar1;
  char cVar3;
  uint32_t uVar2;
  int unaff_A6;
  uint8_t local_46 [4];
  uint8_t local_42 [2];
  int local_40;
  byte local_3c;
  byte local_3b;
  byte local_3a;
  byte local_39;
  int local_38;
  ushort *local_34;
  short local_30;
  uint8_t *local_2e;
  ushort *local_2a;
  int local_26;
  uint32_t local_22;
  uint16_t local_1e;
  uint32_t local_1c;
  
  local_26 = 0;
  local_2a = (ushort *)0x0;
  local_2e = &LAB_000047a8;
  local_34 = (ushort *)0x0;
  local_38 = 0;
  local_1c = in_D0;
  local_30 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  if (local_30 == 0) {
LAB_000033e2:
    uVar2 = 1;
  }
  else {
    local_1e = (**(code **)(&gda->buffer[0x8000 - 0x65e0]))();
    local_22 = local_1c;
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (iVar1 == 499) {
      local_2a = (ushort *)(local_26 + (uint)param_1);
      if (*local_2a != 0) {
        local_2e = (uint8_t *)(local_26 + (uint)*local_2a);
      }
      cVar3 = FUN_000031d0();
      if (cVar3 != '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
        while( true ) {
          cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
          if (cVar3 == '\0') break;
          local_38 = (uint)*(ushort *)(local_26 + (uint)*local_34 + 0xc) * 100 + local_38;
        }
        cVar3 = FUN_00004cc4();
        if (cVar3 != '\0') {
          cVar3 = FUN_00004cc4();
          if (cVar3 != '\0') {
            (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
            while( true ) {
              cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
              if (cVar3 == '\0') break;
              iVar1 = local_26 + (uint)*local_34;
              local_40 = (uint)*(ushort *)(iVar1 + 0xc) * 100;
              local_3c = *(byte *)(iVar1 + 0x10) & 0xf;
              local_3b = *(byte *)(iVar1 + 0xb) & 0xf;
              local_3a = (byte)((ushort)*(uint16_t*)
                                         (iVar1 + 2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72b2])) >> 8) &
                         7;
              local_39 = (byte)*(uint16_t*)(iVar1 + 2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72b2])) &
                         0xe;
              cVar3 = FUN_00004cc4();
              if (cVar3 == '\0') goto LAB_000033b2;
              cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x64cc]))(local_42,local_46,param_2);
              if (cVar3 == '\0') goto LAB_000033b2;
              cVar3 = FUN_00004cc4();
              if (cVar3 == '\0') {
LAB_000033ac:
                (**(code **)(&gda->buffer[0x8000 - 0x6598]))();
                goto LAB_000033b2;
              }
              cVar3 = FUN_00003194();
              if (cVar3 == '\0') goto LAB_000033ac;
              (**(code **)(&gda->buffer[0x8000 - 0x6598]))();
            }
            (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
            goto LAB_000033e2;
          }
        }
      }
LAB_000033b2:
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    }
    uVar2 = 0;
  }
  return uVar2;
}



uint32_t FUN_000033f2(uint8_t param_1,uint32_t param_2)

{
  int iVar1;
  uint32_t in_D0;
  int iVar2;
  char cVar3;
  int unaff_A6;
  uint8_t local_42 [4];
  uint8_t local_3e [2];
  int local_3c;
  uint8_t local_38;
  uint8_t local_37;
  uint8_t local_36;
  uint8_t local_35;
  int local_34;
  short *local_30;
  short local_2c;
  short local_2a;
  short local_28;
  int local_26;
  uint32_t local_22;
  uint16_t local_1e;
  uint32_t local_1c;
  
  local_26 = 0;
  local_30 = (short *)0x0;
  local_34 = 0;
  local_1c = in_D0;
  local_28 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  if (local_28 != 0) {
    local_1e = (**(code **)(&gda->buffer[0x8000 - 0x65e0]))();
    local_22 = local_1c;
    iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    iVar1 = local_26;
    if (iVar2 != 499) {
      return 0;
    }
    local_38 = param_1;
    local_37 = 0xc;
    local_36 = 0;
    local_35 = 0;
    while (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))(), 0 < iVar2) {
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
      (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      local_2a = 1;
      local_2c = *local_30;
      local_34 = *(int *)(iVar1 + (uint)(ushort)local_30[1] + 4) * 100;
      while ((cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))(), cVar3 != '\0' && (local_2c == *local_30))
            ) {
        local_34 = *(int *)(iVar1 + (uint)(ushort)local_30[1] + 4) * 100 + local_34;
        local_2a = local_2a + 1;
      }
      FUN_000031d0();
      FUN_00004cc4();
      FUN_00004cc4();
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
      while ((cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))(), cVar3 != '\0' && (local_2c == *local_30))
            ) {
        local_3c = *(int *)(iVar1 + (uint)(ushort)local_30[1] + 4) * 100;
        FUN_00004cc4();
        (**(code **)(&gda->buffer[0x8000 - 0x64b4]))(local_3e,local_42,param_2);
        FUN_00004cc4();
        FUN_00003194();
        (**(code **)(&gda->buffer[0x8000 - 0x6598]))();
        (**(code **)(&gda->buffer[0x8000 - 0x65b0]))();
      }
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
  }
  return 1;
}



uint32_t FUN_000035c4(void)

{
  int in_D0;
  char cVar2;
  uint32_t *puVar1;
  ushort *in_D1;
  int iVar3;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x65e0]))();
  iVar3 = 0;
  puVar1 = (uint32_t *)(in_D0 + (uint)*in_D1);
  while( true ) {
    if ((int)(uint)in_D1[1] <= iVar3) {
      return 1;
    }
    cVar2 = FUN_00004cc4(*puVar1,*(uint16_t*)(puVar1 + 1));
    if (cVar2 == '\0') break;
    iVar3 = iVar3 + 1;
    puVar1 = (uint32_t *)((int)puVar1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x729c]));
  }
  return 0;
}



uint32_t FUN_00003644(void)

{
  int in_D0;
  char cVar2;
  short *psVar1;
  ushort *in_D1;
  int iVar3;
  int unaff_A6;
  char local_101;
  
  iVar3 = 0;
  psVar1 = (short *)(in_D0 + (uint)*in_D1);
  do {
    if ((int)(uint)in_D1[1] <= iVar3) {
      return 1;
    }
    if (*psVar1 == 0) {
LAB_00003696:
      local_101 = '\0';
    }
    else {
      (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
      if (local_101 == -0x54) {
        (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
        goto LAB_00003696;
      }
    }
    if (psVar1[1] != 0) {
      (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
    }
    cVar2 = FUN_00004cc4();
    if (cVar2 == '\0') {
      return 0;
    }
    iVar3 = iVar3 + 1;
    psVar1 = (short *)((int)psVar1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x729e]));
  } while( true );
}



uint32_t FUN_00003712(void)

{
  short sVar1;
  short sVar2;
  ushort *in_D0;
  int iVar3;
  char cVar5;
  uint32_t uVar4;
  uint32_t *in_D1;
  int unaff_A6;
  uint8_t local_54 [4];
  uint8_t local_50;
  uint8_t uStack_4f;
  uint8_t auStack_4e [14];
  ushort local_40;
  uint32_t local_3e;
  uint16_t local_3a;
  short local_38;
  short local_36;
  short local_34;
  uint32_t local_32;
  short local_2e;
  uint32_t local_2c;
  byte local_28;
  byte local_27;
  byte local_26;
  byte local_25;
  byte local_24;
  byte local_23;
  byte local_22;
  byte local_21;
  uint8_t local_20;
  uint8_t local_1f;
  byte local_1e;
  uint8_t local_1d;
  uint8_t local_1c;
  uint8_t local_1b;
  
  sVar2 = (short)in_D1;
  sVar1 = (short)in_D0;
  local_36 = sVar1 - sVar2;
  local_38 = sVar1 - sVar2;
  local_3a = (**(code **)(&gda->buffer[0x8000 - 0x65e0]))();
  local_3e = *in_D1;
  local_40 = *in_D0;
  iVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6550]))();
  if ((iVar3 == 499) && (iVar3 = (**(code **)(&gda->buffer[0x8000 - 0x64de]))(&local_40,1), iVar3 == 499)) {
    local_34 = local_38;
    local_32 = local_3e;
    local_38 = sVar1 - sVar2;
    local_3a = (**(code **)(&gda->buffer[0x8000 - 0x65e0]))();
    local_3e = *in_D1;
    local_40 = in_D0[1];
    iVar3 = (**(code **)(&gda->buffer[0x8000 - 0x654a]))();
    if ((iVar3 == 499) && (iVar3 = (**(code **)(&gda->buffer[0x8000 - 0x64de]))(&local_40,1), iVar3 == 499)) {
      local_2e = local_38;
      local_2c = local_3e;
      (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
      local_28 = *(byte *)((int)in_D0 + 0x11) & 0xf;
      local_27 = *(byte *)((int)in_D0 + 0x11) >> 4;
      local_26 = (*(byte *)((int)in_D0 + 0xb) & 0x30) >> 4;
      local_25 = *(byte *)(in_D0 + 8) & 0xf;
      local_24 = (byte)*(uint16_t*)((int)in_D0 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) & 0xe;
      local_23 = *(byte *)((int)in_D0 + 0xb) & 0xf;
      local_22 = (byte)((ushort)*(uint16_t*)((int)in_D0 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) >>
                       8) & 7;
      local_21 = ((byte)((ushort)*(uint16_t*)((int)in_D0 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2)
                        >> 8) & 0x70) >> 4;
      if (((*(byte *)((int)in_D1 + *in_D0 + 6) & 8) == 8) ||
         ((*(byte *)((int)in_D1 + *in_D0 + 6) & 8) == 8)) {
        local_20 = 8;
      }
      else {
        local_20 = 0;
      }
      local_1f = (uint8_t)
                 ((*(ushort *)((int)in_D0 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) & 0x80) >> 4);
      local_1e = (byte)((ushort)*(uint16_t*)((int)in_D0 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) >>
                       8) & 8;
      local_1d = (uint8_t)
                 ((*(ushort *)((int)in_D0 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) & 0x70) >> 4);
      local_1c = (*(ushort *)((int)in_D0 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) & 0x8000) == 0;
      (**(code **)(&gda->buffer[0x8000 - 0x65ce]))(auStack_4e);
      cVar5 = (**(code **)(&gda->buffer[0x8000 - 0x64cc]))(&local_50,local_54,0);
      if (cVar5 != '\0') {
        local_1b = uStack_4f;
        cVar5 = FUN_00004cc4();
        if ((cVar5 != '\0') && (cVar5 = FUN_00003194(), cVar5 != '\0')) {
          (**(code **)(&gda->buffer[0x8000 - 0x6598]))();
          uVar4 = FUN_000035c4();
          return uVar4;
        }
        (**(code **)(&gda->buffer[0x8000 - 0x6598]))();
      }
    }
  }
  return 0;
}



uint32_t FUN_000039aa(uint8_t param_1)

{
  ushort *puVar1;
  uint32_t *in_D0;
  int iVar2;
  char cVar4;
  ushort uVar3;
  uint8_t in_D1b;
  int unaff_A6;
  uint8_t auStack_a0 [3];
  uint8_t uStack_9d;
  uint8_t local_9c [4];
  uint8_t local_98;
  uint8_t uStack_97;
  uint32_t local_96;
  uint32_t local_92;
  int local_8e;
  uint16_t local_8a;
  byte local_88;
  byte local_87;
  byte local_86;
  uint16_t local_84;
  byte local_82;
  byte local_81;
  byte local_80;
  uint8_t local_7e;
  byte local_7d;
  byte local_7c;
  byte local_7b;
  byte local_7a;
  byte local_79;
  byte local_78;
  byte local_77;
  byte local_76;
  byte local_75;
  uint8_t local_74;
  uint8_t local_73;
  uint8_t local_72;
  uint8_t local_25;
  uint8_t local_24;
  uint8_t local_23;
  uint8_t local_22;
  uint8_t local_21;
  int local_20;
  uint8_t local_15;
  
  local_20 = 0;
  local_15 = in_D1b;
  iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
  if (iVar2 == 499) {
    puVar1 = (ushort *)(local_20 + (uint)*(ushort *)((int)in_D0 + 6));
    local_96 = *in_D0;
    local_92 = in_D0[1];
    local_8e = (uint)puVar1[6] * 100;
    iVar2 = local_20 + (uint)*puVar1;
    local_8a = (uint16_t)((uint)*(byte *)(puVar1 + 7) * 36000 >> 8);
    local_88 = *(byte *)(iVar2 + 6) & 8;
    local_87 = *(byte *)(iVar2 + 6) & 7;
    local_86 = (*(byte *)(iVar2 + 6) & 0x30) >> 4;
    iVar2 = local_20 + (uint)puVar1[1];
    local_84 = (uint16_t)((uint)*(byte *)((int)puVar1 + 0xf) * 36000 >> 8);
    local_82 = *(byte *)(iVar2 + 6) & 8;
    local_81 = *(byte *)(iVar2 + 6) & 7;
    local_80 = (*(byte *)(iVar2 + 6) & 0x30) >> 4;
    if (((*(byte *)((int)puVar1 + 0x11) & 0xf) == 0) || (*(byte *)((int)puVar1 + 0x11) >> 4 == 4)) {
      local_7d = 0;
      local_7c = 2;
    }
    else {
      local_7d = *(byte *)((int)puVar1 + 0x11) & 0xf;
      local_7c = *(byte *)((int)puVar1 + 0x11) >> 4;
    }
    local_7e = local_15;
    local_24 = param_1;
    local_7b = (*(byte *)((int)puVar1 + 0xb) & 0x30) >> 4;
    local_7a = *(byte *)(puVar1 + 8) & 0xf;
    local_79 = (byte)*(uint16_t*)((int)puVar1 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) & 0xe;
    local_78 = *(byte *)((int)puVar1 + 0xb) & 0xf;
    local_77 = (byte)((ushort)*(uint16_t*)((int)puVar1 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) >>
                     8) & 7;
    local_76 = ((byte)((ushort)*(uint16_t*)((int)puVar1 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) >>
                      8) & 0x70) >> 4;
    local_75 = (*(byte *)(puVar1 + 8) & 0x70) >> 4;
    local_74 = *(uint8_t *)(puVar1 + 5);
    local_73 = (uint8_t)
               ((*(ushort *)((int)puVar1 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) & 0x80) >> 4);
    local_72 = (uint8_t)
               ((*(ushort *)((int)puVar1 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) & 0x70) >> 4);
    (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
    local_25 = (*(ushort *)((int)puVar1 + *(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + 2) & 0x8000) == 0;
    local_23 = (puVar1[8] & 0x8000) != 0x8000;
    cVar4 = (**(code **)(&gda->buffer[0x8000 - 0x64cc]))(&local_98,local_9c,0);
    if (cVar4 != '\0') {
      local_22 = uStack_97;
      (**(code **)(&gda->buffer[0x8000 - 0x64d2]))(auStack_a0);
      uVar3 = (**(code **)(&gda->buffer[0x8000 - 0x64d8]))();
      if (uVar3 < 0x10) {
        local_21 = 0;
      }
      else {
        local_21 = uStack_9d;
      }
      cVar4 = FUN_00004cc4();
      if ((cVar4 == '\0') || (cVar4 = FUN_00003194(), cVar4 == '\0')) {
        (**(code **)(&gda->buffer[0x8000 - 0x6598]))();
      }
      else {
        (**(code **)(&gda->buffer[0x8000 - 0x6598]))();
        uVar3 = (**(code **)(&gda->buffer[0x8000 - 0x64d8]))();
        if ((uVar3 < 0x10) || (cVar4 = FUN_00003644(), cVar4 != '\0')) {
          (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
          return 1;
        }
      }
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
  }
  return 0;
}



bool FUN_00003cda(void)

{
  char cVar1;
  int in_D1;
  int unaff_A6;
  uint8_t auStack_26 [8];
  uint8_t local_1e;
  uint8_t local_1d;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_26);
  local_1e = *(uint8_t *)(in_D1 + 0xb);
  local_1d = *(uint8_t *)(in_D1 + 0xf);
  cVar1 = FUN_00004cc4();
  if (cVar1 != '\0') {
    FUN_000031d0();
  }
  return cVar1 != '\0';
}



uint64_t FUN_00003f3c(void)

{
  char cVar2;
  uint32_t uVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x64a8]))(0);
  (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  cVar2 = FUN_00004cc4();
  if (cVar2 != '\0') {
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    do {
      cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar2 == '\0') {
        uVar1 = 1;
        goto LAB_00003f98;
      }
      cVar2 = FUN_00004cc4();
    } while (cVar2 != '\0');
  }
  uVar1 = 0;
LAB_00003f98:
  return CONCAT44(uVar1,in_D1);
}



uint64_t FUN_00003fa4(void)

{
  char cVar2;
  uint32_t uVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6574]))(0);
  cVar2 = FUN_00004cc4();
  if (cVar2 != '\0') {
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    do {
      cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar2 == '\0') {
        uVar1 = 1;
        goto LAB_00003ff2;
      }
      cVar2 = FUN_000031d0();
    } while (cVar2 != '\0');
  }
  uVar1 = 0;
LAB_00003ff2:
  return CONCAT44(uVar1,in_D1);
}



void FUN_00003ffe(void)

{
  int in_D0;
  
  FUN_00004cc4(*(byte *)(in_D0 + 2) >> 4);
  return;
}



void FUN_00004048(void)

{
  FUN_000031d0();
  return;
}



void FUN_00004078(void)

{
  FUN_000031d0();
  return;
}



void FUN_000040a8(void)

{
  FUN_000031d0();
  return;
}



void FUN_000040dc(void)

{
  FUN_000031d0();
  return;
}



void FUN_00004110(void)

{
  FUN_000031d0();
  return;
}



void FUN_00004144(void)

{
  FUN_000031d0();
  return;
}



uint64_t FUN_00004178(void)

{
  char cVar3;
  int iVar1;
  uint32_t uVar2;
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  cVar3 = FUN_00004cc4();
  if (cVar3 != '\0') {
    (**(code **)(&gda->buffer[0x8000 - 0x6550]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    do {
      cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar3 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
        uVar2 = 1;
        goto LAB_00004218;
      }
      iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x654a]))();
      if (iVar1 != 499) goto LAB_000041fa;
      FUN_000031d0();
      cVar3 = FUN_00003ffe();
    } while (cVar3 != '\0');
    (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
  }
LAB_000041fa:
  uVar2 = 0;
LAB_00004218:
  return CONCAT44(uVar2,in_D1);
}



uint64_t FUN_00004226(void)

{
  char cVar3;
  int iVar1;
  uint32_t uVar2;
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  cVar3 = FUN_00004cc4();
  if (cVar3 != '\0') {
    (**(code **)(&gda->buffer[0x8000 - 0x6550]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    do {
      cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar3 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
        uVar2 = 1;
        goto LAB_000042d0;
      }
      iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x654a]))();
      if (iVar1 != 499) break;
      cVar3 = FUN_000031d0();
      if (cVar3 == '\0') break;
      cVar3 = FUN_00004048();
      if (cVar3 == '\0') break;
      cVar3 = FUN_00003ffe();
    } while (cVar3 != '\0');
  }
  uVar2 = 0;
LAB_000042d0:
  return CONCAT44(uVar2,in_D1);
}



void FUN_000042de(void)

{
  FUN_00004226();
  return;
}



// WARNING: Removing unreachable block (ram,0x00004376)
// WARNING: Removing unreachable block (ram,0x0000437c)

uint64_t FUN_000042f0(void)

{
  char cVar2;
  uint32_t uVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  FUN_00004cc4();
  (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
  do {
    cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
    if (cVar2 == '\0') {
      uVar1 = 1;
      goto LAB_000043f2;
    }
    cVar2 = FUN_000031d0();
    if (cVar2 == '\0') break;
    (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
    cVar2 = FUN_00004cc4();
    if (cVar2 == '\0') break;
    (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(200);
    (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
    cVar2 = FUN_00004cc4();
  } while (cVar2 != '\0');
  uVar1 = 0;
LAB_000043f2:
  return CONCAT44(uVar1,in_D1);
}



uint64_t FUN_00004400(void)

{
  char cVar3;
  int iVar1;
  uint32_t uVar2;
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  cVar3 = FUN_00004cc4();
  if (cVar3 == '\0') {
LAB_00004458:
    uVar2 = 0;
  }
  else {
    (**(code **)(&gda->buffer[0x8000 - 0x6550]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    while( true ) {
      cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar3 == '\0') break;
      iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x654a]))();
      if (iVar1 != 499) goto LAB_00004458;
      FUN_000031d0();
      FUN_00004078();
      FUN_000040dc();
      FUN_00004110();
      FUN_00004144();
      FUN_00004048();
      FUN_00004cc4();
      FUN_00003ffe();
    }
    (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
    uVar2 = 1;
  }
  return CONCAT44(uVar2,in_D1);
}



uint64_t FUN_000044fa(void)

{
  char cVar3;
  int iVar1;
  uint32_t uVar2;
  uint32_t in_D1;
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  cVar3 = FUN_00004cc4();
  if (cVar3 == '\0') {
LAB_00004552:
    uVar2 = 0;
  }
  else {
    (**(code **)(&gda->buffer[0x8000 - 0x6550]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    while( true ) {
      cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
      if (cVar3 == '\0') break;
      iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x654a]))();
      if (iVar1 != 499) goto LAB_00004552;
      FUN_000031d0();
      FUN_00004078();
      FUN_00004144();
      FUN_00004048();
      FUN_00004cc4();
      FUN_00003ffe();
    }
    (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
    uVar2 = 1;
  }
  return CONCAT44(uVar2,in_D1);
}



uint32_t FUN_000045e0(void)

{
  ushort uVar1;
  int in_D0;
  int iVar2;
  uint32_t *puVar3;
  uint32_t uVar4;
  int unaff_A6;
  uint32_t uVar5;
  uint32_t uVar6;
  uint8_t uVar7;
  
  iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
  if (iVar2 == 499) {
    uVar1 = *(ushort *)(in_D0 + 6);
    iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (iVar2 == 499) {
      puVar3 = (uint32_t *)(uint)*(ushort *)(*(ushort *)(uVar1 + 4) + 6);
      FUN_000031d0();
      FUN_00004078();
      FUN_000040a8();
      FUN_000040dc();
      FUN_00004110();
      FUN_00004144();
      FUN_00004048();
      uVar7 = *(uint8_t *)((int)puVar3 + 0x17);
      uVar5 = *puVar3;
      uVar6 = puVar3[1];
      uVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))(uVar5,uVar6);
      FUN_00004cc4(uVar5,uVar6,uVar4,uVar7);
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      return 1;
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
  }
  return 0;
}



uint32_t FUN_00004724(void)

{
  char cVar1;
  int unaff_A6;
  
  FUN_000031d0();
  (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
  FUN_00004cc4();
  (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
  while( true ) {
    cVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
    if (cVar1 == '\0') break;
    FUN_000031d0();
  }
  FUN_00004cc4();
  FUN_00004cc4();
  FUN_00004cc4();
  FUN_00004cc4();
  return 1;
}



uint32_t FUN_000047b4(void)

{
  uint uVar1;
  ushort uVar2;
  int in_D0;
  uint32_t uVar3;
  uint uVar4;
  
  uVar1 = in_D0 - 0x191;
  uVar4 = uVar1;
  if (uVar1 < 99) {
    uVar2 = (ushort)(uVar1 >> 0x10);
    uVar4 = (uint)uVar2 << 0x10;
    switch(uVar1) {
    default:
      goto switchD_0000489c_caseD_0;
    case 2:
    case 7:
      uVar3 = CONCAT22(uVar2,0x26c);
      break;
    case 4:
    case 0xf:
      uVar3 = CONCAT22(uVar2,0x25b);
      break;
    case 5:
      uVar3 = CONCAT22(uVar2,0x26b);
      break;
    case 9:
      uVar3 = CONCAT22(uVar2,0x271);
      break;
    case 10:
    case 0xb:
    case 0xc:
    case 0x21:
      uVar3 = CONCAT22(uVar2,0x26d);
      break;
    case 0x10:
      uVar3 = CONCAT22(uVar2,0x25e);
      break;
    case 0x11:
      uVar3 = CONCAT22(uVar2,0x25f);
      break;
    case 0x12:
      uVar3 = CONCAT22(uVar2,0x262);
      break;
    case 0x13:
      uVar3 = CONCAT22(uVar2,0x261);
      break;
    case 0x14:
      uVar3 = CONCAT22(uVar2,0x263);
      break;
    case 0x15:
      uVar3 = CONCAT22(uVar2,0x265);
      break;
    case 0x16:
      uVar3 = CONCAT22(uVar2,0x267);
      break;
    case 0x17:
      uVar3 = CONCAT22(uVar2,0x273);
      break;
    case 0x18:
      uVar3 = CONCAT22(uVar2,0x26e);
      break;
    case 0x19:
      uVar3 = CONCAT22(uVar2,0x260);
      break;
    case 0x1a:
      uVar3 = CONCAT22(uVar2,0x264);
      break;
    case 0x1b:
      uVar3 = CONCAT22(uVar2,0x268);
      break;
    case 0x1c:
      uVar3 = CONCAT22(uVar2,0x274);
      break;
    case 0x1d:
      uVar3 = CONCAT22(uVar2,0x275);
      break;
    case 0x1e:
      uVar3 = CONCAT22(uVar2,0x266);
      break;
    case 0x23:
      uVar3 = CONCAT22(uVar2,0x269);
      break;
    case 0x26:
      uVar3 = CONCAT22(uVar2,0x26a);
      break;
    case 0x61:
      uVar3 = CONCAT22(uVar2,0x25a);
      break;
    case 0x62:
      uVar3 = CONCAT22(uVar2,0x259);
    }
  }
  else {
switchD_0000489c_caseD_0:
    uVar3 = CONCAT22((short)(uVar4 >> 0x10),0x270);
  }
  return uVar3;
}



uint32_t FUN_0000496a(void)

{
  uint32_t in_D0;
  uint32_t uVar1;
  
  switch(in_D0) {
  default:
    uVar1 = 0x1e;
    break;
  case 0x1a1:
    uVar1 = 1;
    break;
  case 0x1a2:
    uVar1 = 2;
    break;
  case 0x1a4:
    uVar1 = 0x12;
    break;
  case 0x1a5:
    uVar1 = 3;
    break;
  case 0x1a6:
    uVar1 = 0x14;
    break;
  case 0x1a7:
    uVar1 = 0xc;
    break;
  case 0x1a8:
    uVar1 = 9;
    break;
  case 0x1a9:
    uVar1 = 0x11;
    break;
  case 0x1aa:
    uVar1 = 0x13;
    break;
  case 0x1ab:
    uVar1 = 0x15;
    break;
  case 0x1ac:
    uVar1 = 0x18;
    break;
  case 0x1ad:
    uVar1 = 7;
    break;
  case 0x1ae:
    uVar1 = 8;
    break;
  case 0x1af:
    uVar1 = 0x16;
    break;
  case 0x1b7:
    uVar1 = 0xe;
    break;
  case 0x1bb:
    uVar1 = 0x1f;
    break;
  case 0x1bd:
    uVar1 = 0x20;
    break;
  case 0x1be:
    uVar1 = 0xb;
    break;
  case 499:
    uVar1 = 0;
  }
  return uVar1;
}



int FUN_00004ace(void)

{
  int iVar1;
  int unaff_A6;
  
  if (*(short *)(&gda->buffer[0x8000 - 0x77bc]) == 1) {
    iVar1 = &gda->buffer[0x8000 - 0x7bbc];
  }
  else if (*(short *)(&gda->buffer[0x8000 - 0x77bc]) == 2) {
    iVar1 = &gda->buffer[0x8000 - 0x7fbc];
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}



void FUN_00004b06(void)

{
  int iVar1;
  int unaff_A6;
  
  if (*(short *)(&gda->buffer[0x8000 - 0x77bc]) == 2) {
    *(uint32_t*)(&gda->buffer[0x8000 - 0x77ba]) = 8;
    iVar1 = &gda->buffer[0x8000 - 0x7fb4];
  }
  else {
    *(uint32_t*)(&gda->buffer[0x8000 - 0x77ba]) = 8;
    iVar1 = &gda->buffer[0x8000 - 0x7bb4];
  }
  *(int *)(&gda->buffer[0x8000 - 0x77b6]) = iVar1;
  return;
}



void FUN_00004b3a(void)

{
  uint16_t in_D0w;
  int unaff_A6;
  
  if (*(short *)(&gda->buffer[0x8000 - 0x77bc]) == 1) {
    *(uint16_t*)(&gda->buffer[0x8000 - 0x7bb8]) = in_D0w;
    *(uint16_t*)(&gda->buffer[0x8000 - 0x7bbc]) = 0;
  }
  else if (*(short *)(&gda->buffer[0x8000 - 0x77bc]) == 2) {
    *(uint16_t*)(&gda->buffer[0x8000 - 0x7fb8]) = in_D0w;
  }
  return;
}



void FUN_00004b6c(void)

{
  int in_D0;
  uint16_t uVar1;
  char in_D1b;
  int unaff_A6;
  
  if (*(short *)(&gda->buffer[0x8000 - 0x77bc]) == 1) {
    uVar1 = FUN_000047b4();
    *(uint16_t*)(&gda->buffer[0x8000 - 0x7bb6]) = uVar1;
    if (in_D0 != 499) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x77ba]) = 8;
    }
    *(short *)(&gda->buffer[0x8000 - 0x7bbc]) = *(short *)(&gda->buffer[0x8000 - 0x77b8]) + -8;
    if (in_D1b == '\0') {
      *(uint16_t*)(&gda->buffer[0x8000 - 0x7bba]) = 0;
    }
    else {
      *(uint16_t*)(&gda->buffer[0x8000 - 0x7bba]) = 1;
    }
  }
  else if (*(short *)(&gda->buffer[0x8000 - 0x77bc]) == 2) {
    uVar1 = FUN_0000496a();
    *(uint16_t*)(&gda->buffer[0x8000 - 0x7fb6]) = uVar1;
    if (in_D0 != 499) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x77ba]) = 8;
    }
    *(short *)(&gda->buffer[0x8000 - 0x7fbc]) = *(short *)(&gda->buffer[0x8000 - 0x77b8]) + -8;
    if (in_D1b == '\0') {
      *(uint16_t*)(&gda->buffer[0x8000 - 0x7fba]) = 0;
    }
    else {
      *(uint16_t*)(&gda->buffer[0x8000 - 0x7fba]) = 1;
    }
  }
  return;
}



bool FUN_00004bfa(void)

{
  int iVar1;
  int unaff_A6;
  bool bVar2;
  
  FUN_00004b6c();
  FUN_00004ace(*(uint32_t*)(&gda->buffer[0x8000 - 0x77ba]),10);
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6496]))();
  bVar2 = iVar1 == *(int *)(&gda->buffer[0x8000 - 0x77ba]);
  if (bVar2) {
    FUN_00004b06();
  }
  else {
    (**(code **)(&gda->buffer[0x8000 - 0x648a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x648a]))(*(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]));
  }
  return bVar2;
}



uint32_t FUN_00004c6c(void)

{
  uint32_t in_D0;
  uint16_t in_D1w;
  int unaff_A6;
  
  *(uint32_t*)(&gda->buffer[0x8000 - 0x6a06]) = in_D0;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x77bc]) = in_D1w;
  return 1;
}



uint32_t FUN_00004c84(void)

{
  FUN_00004b3a();
  FUN_00004b06();
  return 1;
}



void FUN_00004ca6(void)

{
  FUN_00004bfa();
  return;
}



uint32_t FUN_00004cc4(void)

{
  char cVar1;
  int in_D1;
  int unaff_A6;
  
  if ((0x3ff < in_D1 + *(int *)(&gda->buffer[0x8000 - 0x77ba])) && (cVar1 = FUN_00004bfa(), cVar1 == '\0')) {
    return 0;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x6490]))();
  *(int *)(&gda->buffer[0x8000 - 0x77ba]) = in_D1 + *(int *)(&gda->buffer[0x8000 - 0x77ba]);
  *(int *)(&gda->buffer[0x8000 - 0x77b6]) = in_D1 + *(int *)(&gda->buffer[0x8000 - 0x77b6]);
  return 1;
}



uint32_t FUN_00004d14(void)

{
  char cVar1;
  int in_D1;
  int unaff_A6;
  
  if ((in_D1 + *(int *)(&gda->buffer[0x8000 - 0x77ba]) < 0x400) || (cVar1 = FUN_00004bfa(), cVar1 != '\0')) {
    (**(code **)(&gda->buffer[0x8000 - 0x6490]))();
    *(int *)(&gda->buffer[0x8000 - 0x77ba]) = in_D1 + *(int *)(&gda->buffer[0x8000 - 0x77ba]);
    *(int *)(&gda->buffer[0x8000 - 0x77b6]) = in_D1 + *(int *)(&gda->buffer[0x8000 - 0x77b6]);
    cVar1 = FUN_00004bfa();
    if (cVar1 != '\0') {
      return 1;
    }
  }
  return 0;
}



bool FUN_00004dc4(void)

{
  int in_D0;
  uint16_t in_D1w;
  int unaff_A6;
  
  if (-1 < in_D0) {
    *(int *)(&gda->buffer[0x8000 - 0x77b2]) = in_D0;
    *(uint16_t*)(&gda->buffer[0x8000 - 0x7370]) = in_D1w;
  }
  return -1 < in_D0;
}



void FUN_00004de4(void)

{
  int unaff_A6;
  
  if (*(int *)(&gda->buffer[0x8000 - 0x6a02]) != 0) {
    (**(code **)(&gda->buffer[0x8000 - 0x6472]))();
  }
  return;
}



bool FUN_00004dfe(void)

{
  int iVar1;
  int unaff_A6;
  
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6484]))();
  return 0 < iVar1;
}



ulonglong FUN_00004e1c(void)

{
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x647e]))();
  if (-1 >= iVar1) {
    (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(0xbe);
    (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
  }
  return (ulonglong)CONCAT14(-1 < iVar1,in_D1);
}



uint64_t FUN_00004e6c(void)

{
  uint uVar1;
  int iVar2;
  uint32_t uVar3;
  uint32_t in_D1;
  int unaff_A6;
  
  if (*(short *)(&gda->buffer[0x8000 - 0x7370]) == 1) {
    iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6454]))(0x21a);
    if (iVar2 != 0x21a) {
      if (*(short *)(&gda->buffer[0x8000 - 0x7370]) == 1) {
        uVar3 = 0xc0;
      }
      else {
        uVar3 = 0xc0;
      }
      goto LAB_00004ee6;
    }
  }
  else if ((*(short *)(&gda->buffer[0x8000 - 0x7370]) == 2) &&
          (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6478]))(0x224,10), iVar2 != 0x224)) {
    if (*(short *)(&gda->buffer[0x8000 - 0x7370]) == 1) {
      uVar3 = 0xbf;
    }
    else {
      uVar3 = 0xbf;
    }
LAB_00004ee6:
    (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(uVar3);
    (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
    uVar3 = 0;
    goto LAB_00004fcc;
  }
  uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6460]))();
  if ((uVar1 & 4) != 0) {
    if (*(int *)(&gda->buffer[0x8000 - 0x6a02]) == 0) {
      FUN_00005c70();
      (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x649c]))();
      if (*(char *)(unaff_A6 + iVar2 + -0x736f) != '/') {
        (**(code **)(&gda->buffer[0x8000 - 0x644e]))();
      }
      (**(code **)(&gda->buffer[0x8000 - 0x644e]))();
      uVar3 = (**(code **)(&gda->buffer[0x8000 - 0x645a]))();
      *(uint32_t*)(&gda->buffer[0x8000 - 0x69fe]) = uVar3;
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6466]))();
      *(int *)(&gda->buffer[0x8000 - 0x6a02]) = iVar2;
      if (iVar2 == 0) {
        (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(0xc1);
        (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
        goto LAB_00004fca;
      }
    }
    (**(code **)(&gda->buffer[0x8000 - 0x646c]))();
  }
LAB_00004fca:
  uVar3 = 1;
LAB_00004fcc:
  return CONCAT44(uVar3,in_D1);
}



uint16_t FUN_00004fd6(void)

{
  uint16_t uVar1;
  int unaff_A6;
  
  if (*(short *)(&gda->buffer[0x8000 - 0x7370]) == 1) {
    uVar1 = *(uint16_t*)(&gda->buffer[0x8000 - 0x758a]);
  }
  else if (*(short *)(&gda->buffer[0x8000 - 0x7370]) == 2) {
    uVar1 = *(uint16_t*)(&gda->buffer[0x8000 - 0x77ae]);
  }
  else {
    uVar1 = 0;
  }
  return uVar1;
}



int FUN_00005006(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x7588];
}



int FUN_0000501e(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x7588];
}



int FUN_00005036(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x7588];
}



int FUN_0000504e(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x7588];
}



int FUN_00005066(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x7588];
}



int FUN_0000507e(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x7588];
}



int FUN_00005096(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x77ac];
}



int FUN_000050ae(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x77ac];
}



int FUN_000050c6(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x77ac];
}



int FUN_000050de(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x77ac];
}



int FUN_000050f6(void)

{
  int unaff_A6;
  
  return &gda->buffer[0x8000 - 0x77ac];
}



void FUN_0000510e(void)

{
  return;
}



uint64_t FUN_00005140(void)

{
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  uint32_t uVar2;
  int local_14;
  
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
  if (iVar1 == 0) {
    local_14 = (**(code **)(&gda->buffer[0x8000 - 0x643c]))();
    if (-1 < local_14) goto LAB_00005222;
    if (*(short *)(&gda->buffer[0x8000 - 0x6a12]) == 1) {
      uVar2 = 0xd4;
    }
    else {
      uVar2 = 0xd4;
    }
  }
  else {
    local_14 = (**(code **)(&gda->buffer[0x8000 - 0x6442]))(3,0xc00);
    if (-1 < local_14) {
LAB_000051de:
      while (iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6484]))(), 0 < iVar1) {
        (**(code **)(&gda->buffer[0x8000 - 0x6478]))(1,10);
      }
      goto LAB_00005222;
    }
    if (gda->intercept_code == 0xda) {
      local_14 = (**(code **)(&gda->buffer[0x8000 - 0x643c]))();
      if (-1 < local_14) goto LAB_000051de;
      if (*(short *)(&gda->buffer[0x8000 - 0x6a12]) == 1) {
        uVar2 = 0xd2;
      }
      else {
        uVar2 = 0xd2;
      }
    }
    else if (*(short *)(&gda->buffer[0x8000 - 0x6a12]) == 1) {
      uVar2 = 0xd3;
    }
    else {
      uVar2 = 0xd3;
    }
  }
  (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(uVar2);
  (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
LAB_00005222:
  return CONCAT44(local_14,in_D1);
}



uint32_t FUN_00005234(void)

{
  int iVar1;
  int unaff_A6;
  
  iVar1 = FUN_00005140();
  *(int *)(&gda->buffer[0x8000 - 0x69fa]) = iVar1;
  if (-1 < iVar1) {
    iVar1 = FUN_00005140();
    *(int *)(&gda->buffer[0x8000 - 0x69f6]) = iVar1;
    if (-1 < iVar1) {
      return 1;
    }
  }
  return 0;
}



void FUN_00005260(void)

{
  int unaff_A6;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6448]))();
  (**(code **)(&gda->buffer[0x8000 - 0x6448]))();
  return;
}



uint32_t FUN_0000527c(void)

{
  int unaff_A6;
  
  return *(uint32_t*)(&gda->buffer[0x8000 - 0x69fa]);
}



uint32_t FUN_0000528c(void)

{
  int unaff_A6;
  
  return *(uint32_t*)(&gda->buffer[0x8000 - 0x69f6]);
}



ulonglong FUN_00005322(void)

{
  int in_D0;
  int unaff_A2;
  int unaff_A5;
  int unaff_A6;
  
  *(uint *)(unaff_A2 + -0x6412) = *(uint *)(unaff_A2 + -0x6412) | 0x60204eae;
  if (in_D0 == 499) {
    FUN_0000527c();
    FUN_00004dc4();
    FUN_0000528c();
    FUN_0000312c();
    *(uint8_t *)(&gda->buffer[0x8000 - 0x69ee]) = 1;
  }
  else {
    (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(0xab);
    (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
  }
  return (ulonglong)CONCAT14(in_D0 == 499,*(uint32_t*)(unaff_A5 + -8));
}



ulonglong FUN_00005930(void)

{
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x63ee]))();
  if (-1 < iVar1) {
    (**(code **)(&gda->buffer[0x8000 - 0x641e]))();
    *(uint8_t *)(&gda->buffer[0x8000 - 0x6a10]) = 0;
    FUN_000088ce();
    FUN_00008900();
  }
  else {
    (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(0xac);
    (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
  }
  return (ulonglong)CONCAT14(-1 < iVar1,in_D1);
}



uint32_t FUN_000059f6(void)

{
  uint in_D0;
  ushort uVar1;
  
  if (in_D0 == 0x203f) {
    return 6;
  }
  uVar1 = (ushort)in_D0;
  if (in_D0 < 0x2040) {
    if (uVar1 == 0x202d) {
      return 8;
    }
    if (uVar1 < 0x202e) {
      if (uVar1 == 0x2021) {
        return 3;
      }
      if ((uVar1 < 0x2022) && (uVar1 == 0x2016)) {
        return 1;
      }
    }
    else if (uVar1 == 0x2032) {
      return 2;
    }
  }
  else {
    if (in_D0 == 0x2043) {
      return 5;
    }
    if (in_D0 < 0x2044) {
      if (uVar1 == 0x2040) {
        return 7;
      }
    }
    else if (in_D0 == 0x2044) {
      return 4;
    }
  }
  return 0xffffffff;
}



uint64_t FUN_00005a78(void)

{
  short sVar2;
  char cVar3;
  uint32_t uVar1;
  uint32_t in_D1;
  int iVar4;
  int unaff_A6;
  uint16_t local_1c;
  
  sVar2 = FUN_000059f6();
  if (sVar2 != -1) {
    for (iVar4 = 0; iVar4 < 0x22; iVar4 = iVar4 + 1) {
      if ((*(short *)(&gda->buffer[0x8000 - 0x6854]) == *(short *)(&gda->buffer[0x8000 - 0x69ec] + iVar4 * 10)) &&
         (sVar2 == *(short *)(&gda->buffer[0x8000 - 0x69e8] + iVar4 * 10))) {
        local_1c = *(uint16_t*)(&gda->buffer[0x8000 - 0x69ea] + iVar4 * 10);
        break;
      }
    }
    if (iVar4 == 0x22) {
      (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(0xdc);
      (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
LAB_00005b1a:
      uVar1 = 0;
      goto LAB_00005b62;
    }
    for (; (*(short *)(&gda->buffer[0x8000 - 0x6854]) == *(short *)(&gda->buffer[0x8000 - 0x69ec] + iVar4 * 10) &&
           (((sVar2 == *(short *)(&gda->buffer[0x8000 - 0x69e8] + iVar4 * 10) ||
             (*(short *)(&gda->buffer[0x8000 - 0x69e8] + iVar4 * 10) == 0)) && (iVar4 < 0x22))));
        iVar4 = iVar4 + 1) {
      cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x69e6] + iVar4 * 10))();
      if (cVar3 == '\0') goto LAB_00005b1a;
    }
    *(uint16_t*)(&gda->buffer[0x8000 - 0x6854]) = local_1c;
  }
  uVar1 = 1;
LAB_00005b62:
  return CONCAT44(uVar1,in_D1);
}



void FUN_00005c60(void)

{
  uint32_t in_D0;
  int unaff_A6;
  
  *(uint32_t*)(&gda->buffer[0x8000 - 0x6852]) = in_D0;
  return;
}



uint32_t FUN_00005c70(void)

{
  int unaff_A6;
  
  return *(uint32_t*)(&gda->buffer[0x8000 - 0x6852]);
}



int FUN_00005cf8(uint32_t param_1,char param_2,int param_3)

{
  int *in_D0;
  char cVar1;
  int iVar2;
  int unaff_A6;
  int local_20;
  short local_1c;
  short local_1a;
  int local_18;
  int *local_14;
  
  local_18 = 499;
  local_14 = in_D0;
  if (param_2 == '\0') {
    local_18 = FUN_0000d01e(&local_20);
  }
  else {
    local_18 = FUN_0000d182(&local_20);
  }
  if (local_18 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6550]))();
    for (iVar2 = 0; iVar2 < param_3; iVar2 = iVar2 + 1) {
      cVar1 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
      if (cVar1 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
        return 0x1f2;
      }
      if (((local_1c == *(short *)(local_14 + 1)) && (local_20 == *local_14)) &&
         (local_1a == *(short *)((int)local_14 + 6))) break;
      if (param_2 == '\0') {
        local_18 = (**(code **)(&gda->buffer[0x8000 - 0x63dc]))();
      }
      else {
        local_18 = (**(code **)(&gda->buffer[0x8000 - 0x63e2]))();
      }
      if (local_18 != 499) break;
    }
    (**(code **)(&gda->buffer[0x8000 - 0x6556]))();
  }
  return local_18;
}



int FUN_00005df4(uint8_t param_1,uint32_t param_2)

{
  int in_D0;
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_26 [8];
  uint8_t auStack_1e [10];
  int local_14;
  int local_10;
  uint32_t local_c;
  
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = (**(code **)(&gda->buffer[0x8000 - 0x63d6]))();
  if ((local_14 == 499) &&
     (local_14 = FUN_0000d1f2(*(uint32_t*)(local_10 + 2),auStack_26), local_14 == 499)) {
    local_14 = FUN_00005cf8(auStack_1e,param_1,local_c,param_2);
  }
  return local_14;
}



int FUN_00005e80(uint8_t param_1,uint32_t param_2)

{
  uint32_t *puVar1;
  int in_D0;
  int iVar2;
  uint32_t in_D1;
  int unaff_A6;
  uint32_t local_36;
  uint16_t local_32;
  ushort local_30;
  uint32_t local_2e;
  uint32_t local_2a;
  uint16_t local_26;
  int local_24;
  uint32_t local_1e;
  uint16_t local_1a;
  ushort local_18;
  int local_14;
  int local_10;
  uint32_t local_c;
  
  local_24 = 0;
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000af3c(0,0);
  if ((local_14 == 499) && (local_14 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(), local_14 == 499)) {
    puVar1 = (uint32_t *)(local_24 + (uint)*(ushort *)(local_24 + (uint)local_18 + 6));
    local_26 = local_1a;
    local_2a = *puVar1;
    local_2e = puVar1[1];
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
    if (iVar2 == 0) {
      local_14 = FUN_0000d1f2(*(uint32_t*)(local_10 + 6),&local_36);
      if (local_14 != 499) {
        return local_14;
      }
    }
    else {
      iVar2 = FUN_0000b0f4();
      if (iVar2 != 499) {
        return iVar2;
      }
      local_36 = local_1e;
      local_32 = local_1a;
      local_30 = local_18;
      local_14 = 499;
    }
    local_14 = FUN_00005cf8(&local_2e,param_1,local_c,param_2);
  }
  return local_14;
}



int FUN_00005fb6(uint8_t param_1,uint32_t param_2)

{
  uint32_t *puVar1;
  int in_D0;
  int iVar2;
  uint32_t in_D1;
  int unaff_A6;
  uint32_t local_36;
  uint16_t local_32;
  ushort local_30;
  uint32_t local_2e;
  uint32_t local_2a;
  uint16_t local_26;
  int local_24;
  uint32_t local_1e;
  uint16_t local_1a;
  ushort local_18;
  int local_14;
  int local_10;
  uint32_t local_c;
  
  local_24 = 0;
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000b0f4(0,0);
  if ((local_14 == 499) && (local_14 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(), local_14 == 499)) {
    puVar1 = (uint32_t *)(local_24 + (uint)*(ushort *)(local_24 + (uint)local_18 + 6));
    local_26 = local_1a;
    local_2a = *puVar1;
    local_2e = puVar1[1];
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
    if (iVar2 == 0) {
      local_14 = FUN_0000d1f2(*(uint32_t*)(local_10 + 0xe),&local_36);
      if (local_14 != 499) {
        return local_14;
      }
    }
    else {
      iVar2 = FUN_0000b2b0();
      if (iVar2 != 499) {
        return iVar2;
      }
      local_36 = local_1e;
      local_32 = local_1a;
      local_30 = local_18;
      local_14 = 499;
    }
    local_14 = FUN_00005cf8(&local_2e,param_1,local_c,param_2);
  }
  return local_14;
}



int FUN_000060ec(char param_1)

{
  uint32_t uVar1;
  char cVar3;
  int iVar2;
  int in_D1;
  int unaff_A6;
  int local_4c;
  uint8_t auStack_48 [20];
  int local_34;
  int local_30;
  int local_20;
  int local_18;
  
  local_18 = in_D1;
  local_20 = FUN_0000b2b0();
  if (local_20 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000112e6);
    local_20 = FUN_00008720(&DAT_00006472,auStack_48,0,0);
    if (local_20 == 499) {
      uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x649c]))();
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))(uVar1);
      do {
        cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
        if (cVar3 == '\0') {
          (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
          if (param_1 == '\0') {
            local_30 = 0;
            (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
            while ((cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))(), cVar3 != '\0' &&
                   (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x63e8]))(uVar1), iVar2 == 0))) {
              local_30 = local_30 + 1;
            }
            (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
            for (local_34 = 1; local_34 < local_30; local_34 = local_34 + 1) {
              (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
              (**(code **)(&gda->buffer[0x8000 - 0x65b0]))();
            }
          }
          local_30 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
          if (local_30 <= local_18) {
            return local_20;
          }
          (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
          for (local_34 = 0; local_34 < local_30; local_34 = local_34 + 1) {
            (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
            if (local_18 <= local_34) {
              (**(code **)(&gda->buffer[0x8000 - 0x65b0]))();
            }
          }
          return local_20;
        }
      } while ((((param_1 != '\0') || (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x63e8]))(uVar1), 0 < iVar2))
               && ((param_1 != '\x01' ||
                   (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x63e8]))(uVar1), iVar2 < 0)))) ||
              ((*(char *)(local_4c + 0x4c) != '\0' ||
               (cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))(), cVar3 != '\0'))));
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      local_20 = 0x1f2;
    }
    else {
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    }
  }
  return local_20;
}



int FUN_000062c8(uint8_t param_1,uint32_t param_2)

{
  int in_D0;
  uint32_t in_D1;
  uint8_t auStack_32 [8];
  uint32_t local_2a;
  uint32_t local_26;
  uint16_t local_22;
  uint32_t local_1e;
  uint16_t local_1a;
  uint32_t local_18;
  int local_14;
  int local_10;
  uint32_t local_c;
  
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000b4c2();
  if (local_14 == 499) {
    local_26 = local_1e;
    local_22 = local_1a;
    local_2a = local_18;
    local_14 = FUN_0000d1f2(*(uint32_t*)(local_10 + 0x1a),auStack_32);
    if (local_14 == 499) {
      local_14 = FUN_00005cf8(&local_2a,param_1,local_c,param_2);
    }
  }
  return local_14;
}



int FUN_00006364(uint8_t param_1,uint32_t param_2)

{
  int in_D0;
  int iVar1;
  uint32_t in_D1;
  int unaff_A6;
  uint32_t local_32;
  uint16_t local_2e;
  uint16_t local_2c;
  uint32_t local_2a;
  uint32_t local_26;
  uint16_t local_22;
  uint32_t local_1e;
  uint16_t local_1a;
  uint32_t local_18;
  int local_14;
  int local_10;
  uint32_t local_c;
  
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000b5d2();
  if (local_14 == 499) {
    local_26 = local_1e;
    local_22 = local_1a;
    local_2a = local_18;
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
    if ((iVar1 == 0) && (iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))(), iVar1 == 0)) {
      local_14 = FUN_0000d1f2(*(uint32_t*)(local_10 + 0x1a),&local_32);
      if (local_14 != 499) {
        return local_14;
      }
    }
    else {
      iVar1 = FUN_0000b8bc();
      if (iVar1 != 499) {
        return iVar1;
      }
      local_32 = local_1e;
      local_2e = local_1a;
      local_2c = local_18._0_2_;
      local_14 = 499;
    }
    local_14 = FUN_00005cf8(&local_2a,param_1,local_c,param_2);
  }
  return local_14;
}



int FUN_00006508(void)

{
  uint32_t *puVar1;
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_2e [6];
  uint16_t local_28;
  ushort local_26;
  int local_22;
  uint32_t local_1e;
  uint32_t local_1a;
  uint16_t local_16;
  int local_14;
  uint32_t local_c;
  
  local_14 = 499;
  local_22 = 0;
  local_c = in_D1;
  local_14 = FUN_0000af3c(0,0);
  if (local_14 == 499) {
    local_14 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_14 == 499) {
      puVar1 = (uint32_t *)(local_22 + (uint)*(ushort *)(local_22 + (uint)local_26 + 6));
      local_16 = local_28;
      local_1a = *puVar1;
      local_1e = puVar1[1];
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      local_14 = FUN_0000ce64(&local_1e,auStack_2e,local_c,1);
      if (local_14 == 0x1b6) {
        local_14 = 0x1a2;
      }
    }
  }
  return local_14;
}



int FUN_000065ea(void)

{
  uint32_t *puVar1;
  uint32_t in_D1;
  int unaff_A6;
  uint8_t auStack_34 [2];
  uint32_t local_32;
  uint16_t local_2e;
  ushort local_2c;
  int local_28;
  uint32_t local_24;
  uint32_t local_20;
  uint16_t local_1c;
  uint32_t local_1a;
  uint16_t local_16;
  int local_14;
  uint32_t local_c;
  
  local_14 = 499;
  local_28 = 0;
  local_c = in_D1;
  local_14 = FUN_0000b0f4(0,0);
  if (local_14 == 499) {
    local_20 = local_32;
    local_1c = local_2e;
    local_14 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_14 == 499) {
      puVar1 = (uint32_t *)(local_28 + (uint)*(ushort *)(local_28 + (uint)local_2c + 6));
      local_16 = local_1c;
      local_1a = *puVar1;
      local_24 = puVar1[1];
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      local_14 = FUN_0000ce64(&local_24,auStack_34,local_c,1);
      if (local_14 == 0x1b6) {
        local_14 = 0x1a5;
      }
    }
  }
  return local_14;
}



int FUN_000066d8(void)

{
  bool bVar1;
  int in_D0;
  int iVar2;
  char cVar3;
  char cVar4;
  uint8_t *in_D1;
  int unaff_A6;
  uint64_t uVar5;
  uint8_t auStack_40 [20];
  int local_2c;
  char *local_28;
  int local_24;
  int local_14;
  int local_10;
  uint8_t *local_c;
  
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000b2b0();
  if (local_14 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000112e6);
    local_14 = FUN_00008720(*(uint32_t*)(local_10 + 0x16),auStack_40,0,0);
    if (local_14 == 499) {
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
      if (iVar2 == 0) {
        local_14 = 0x1af;
      }
      else {
        *local_c = 0;
        *(uint16_t*)(local_c + 0x4c) = 0;
        *(uint16_t*)(local_c + 0x4e) = 0;
        local_c[0x50] = 0;
        local_28 = (char *)(**(code **)(&gda->buffer[0x8000 - 0x649c]))();
        local_2c = 0;
        (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
        (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
        while( true ) {
          iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x649c]))();
          if (iVar2 <= (int)local_28) break;
          (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
          (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
          cVar4 = *local_28;
          bVar1 = false;
          do {
            cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
            if (cVar3 == '\0') goto LAB_00006810;
          } while (cVar4 == *local_28);
          bVar1 = true;
LAB_00006810:
          if (bVar1) break;
          local_c[local_2c] = cVar4;
          local_2c = local_2c + 1;
          local_c[local_2c] = 0;
          local_28 = local_28 + 1;
        }
        (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
        while( true ) {
          cVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
          if (cVar4 == '\0') break;
          iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x649c]))();
          if ((int)local_28 < iVar2) {
            for (local_24 = 0;
                (local_24 < *(short *)(local_c + 0x4e) && (*local_28 != local_c[local_24 + 0x50]));
                local_24 = local_24 + 1) {
            }
            if (*(short *)(local_c + 0x4e) == local_24) {
              local_c[*(short *)(local_c + 0x4e) + 0x50] = *local_28;
              *(short *)(local_c + 0x4e) = *(short *)(local_c + 0x4e) + 1;
            }
          }
        }
        local_24 = 0;
        (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
        (**(code **)(&gda->buffer[0x8000 - 0x644e]))();
        (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
        while( true ) {
          cVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
          if (cVar4 == '\0') break;
          (**(code **)(&gda->buffer[0x8000 - 0x649c]))();
          uVar5 = (**(code **)(&gda->buffer[0x8000 - 0x649c]))();
          if ((int)uVar5 == (int)((ulonglong)uVar5 >> 0x20)) {
            local_24 = local_24 + 1;
          }
        }
        if (local_24 == 0) {
          *(uint16_t*)(local_c + 0x4c) = 0;
        }
        else if (local_24 == 1) {
          *(uint16_t*)(local_c + 0x4c) = 2;
        }
        else {
          *(uint16_t*)(local_c + 0x4c) = 1;
        }
      }
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    }
  }
  return local_14;
}



int FUN_00006986(void)

{
  uint32_t in_D1;
  uint8_t auStack_2a [2];
  uint32_t local_28;
  uint16_t local_24;
  uint32_t local_22;
  uint32_t local_1e;
  uint32_t local_1a;
  uint16_t local_16;
  int local_14;
  uint32_t local_c;
  
  local_14 = 499;
  local_c = in_D1;
  local_14 = FUN_0000b4c2();
  if (local_14 == 499) {
    local_1a = local_28;
    local_16 = local_24;
    local_1e = local_22;
    local_14 = FUN_0000ce64(&local_1e,auStack_2a,local_c,1);
    if (local_14 == 0x1b6) {
      local_14 = 0x1a7;
    }
  }
  return local_14;
}



int FUN_00006a12(void)

{
  uint32_t in_D1;
  uint8_t auStack_2a [2];
  uint32_t local_28;
  uint16_t local_24;
  uint32_t local_22;
  uint32_t local_1e;
  uint32_t local_1a;
  uint16_t local_16;
  int local_14;
  uint32_t local_c;
  
  local_14 = 499;
  local_c = in_D1;
  local_14 = FUN_0000b5d2();
  if (local_14 == 499) {
    local_1a = local_28;
    local_16 = local_24;
    local_1e = local_22;
    local_14 = FUN_0000ce64(&local_1e,auStack_2a,local_c,1);
    if (local_14 == 0x1b6) {
      local_14 = 0x1a7;
    }
  }
  return local_14;
}



uint FUN_00006a9e(uint32_t param_1,uint32_t param_2,char param_3)

{
  char *in_D0;
  int iVar1;
  short sVar2;
  uint32_t in_D1;
  int unaff_A6;
  uint32_t uVar3;
  int *local_34;
  int local_20;
  uint local_1c;
  
  local_1c = 0;
  if (*in_D0 == '\x01') {
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
    if ((iVar1 == 0) && (iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))(), iVar1 == 0)) {
      local_1c = (uint)*(ushort *)(in_D0 + 10);
      goto LAB_00006c74;
    }
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (iVar1 != 499) {
      return 0;
    }
    if (param_3 == '\0') {
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    }
    uVar3 = *(uint32_t*)(in_D0 + 2);
    for (local_20 = 0; local_20 < (int)(uint)*(ushort *)(in_D0 + 10); local_20 = local_20 + 1) {
      iVar1 = FUN_0000ddf2(in_D1,param_1,param_2,1,uVar3);
      if (iVar1 == 499) {
        local_1c = local_1c + 1;
      }
    }
  }
  else {
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(0);
    if (iVar1 != 499) {
      return 0;
    }
    if (param_3 == '\0') {
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    }
    iVar1 = *(int *)(in_D0 + 2);
    local_34 = (int *)(uint)*(ushort *)(in_D0 + 8);
    for (local_20 = 0; local_20 < (int)(uint)*(ushort *)(in_D0 + 10); local_20 = local_20 + 1) {
      sVar2 = FUN_00006a9e(param_1,param_2,*local_34 != iVar1);
      local_1c = local_1c + (int)sVar2;
      if ((0x7fff < (int)local_1c) || ((int)local_1c < 0)) break;
      local_34 = (int *)((int)local_34 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7272]));
    }
  }
  if (param_3 != '\0') {
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
  }
LAB_00006c74:
  if ((0x7fff < (int)local_1c) || ((int)local_1c < 0)) {
    local_1c = 0x7fff;
  }
  return local_1c & 0xffff;
}



int FUN_00006c9e(void)

{
  uint16_t uVar1;
  uint16_t *in_D1;
  uint8_t auStack_c6 [156];
  uint8_t auStack_2a [10];
  uint8_t auStack_20 [12];
  int local_14;
  uint16_t *local_c;
  
  local_14 = 499;
  local_c = in_D1;
  local_14 = FUN_0000e668();
  if (local_14 == 499) {
    local_14 = FUN_0000ce64(auStack_2a,auStack_20,auStack_c6,1);
    if (local_14 == 499) {
      uVar1 = FUN_00006a9e(s_NO_LOCATION_00007188,s_NO_STREET_0000717e,1);
      *local_c = uVar1;
    }
  }
  return local_14;
}



int FUN_00006d3a(void)

{
  int in_D0;
  uint16_t uVar1;
  uint16_t *in_D1;
  int unaff_A6;
  uint8_t auStack_d8 [156];
  int local_3c;
  uint32_t *local_38;
  int local_34;
  uint8_t auStack_30 [2];
  uint32_t local_2e;
  uint16_t local_2a;
  ushort local_28;
  uint32_t local_24;
  uint32_t local_20;
  uint16_t local_1c;
  uint32_t local_1a;
  uint16_t local_16;
  int local_14;
  int local_10;
  uint16_t *local_c;
  
  local_14 = 499;
  local_34 = 0;
  local_38 = (uint32_t *)0x0;
  local_3c = 0;
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000af3c();
  if (local_14 == 499) {
    local_1a = local_2e;
    local_16 = local_2a;
    local_14 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_14 == 499) {
      local_34 = local_3c + (uint)local_28;
      local_38 = (uint32_t *)(local_3c + (uint)*(ushort *)(local_34 + 6));
      local_1c = local_16;
      local_20 = *local_38;
      local_24 = local_38[1];
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      local_14 = FUN_0000ce64(&local_24,auStack_30,auStack_d8,1);
      if (local_14 == 499) {
        uVar1 = FUN_00006a9e(*(uint32_t*)(local_10 + 10),s_NO_STREET_00007194,1);
        *local_c = uVar1;
      }
    }
  }
  return local_14;
}



int FUN_00006e52(void)

{
  int in_D0;
  uint16_t uVar1;
  uint16_t *in_D1;
  int unaff_A6;
  uint8_t auStack_d8 [156];
  int local_3c;
  uint32_t *local_38;
  int local_34;
  uint8_t auStack_30 [2];
  uint32_t local_2e;
  uint16_t local_2a;
  ushort local_28;
  uint32_t local_24;
  uint32_t local_20;
  uint16_t local_1c;
  uint32_t local_1a;
  uint16_t local_16;
  int local_14;
  int local_10;
  uint16_t *local_c;
  
  local_14 = 499;
  local_34 = 0;
  local_38 = (uint32_t *)0x0;
  local_3c = 0;
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000b0f4();
  if (local_14 == 499) {
    local_1a = local_2e;
    local_16 = local_2a;
    local_14 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_14 == 499) {
      local_34 = local_3c + (uint)local_28;
      local_38 = (uint32_t *)(local_3c + (uint)*(ushort *)(local_34 + 6));
      local_1c = local_16;
      local_20 = *local_38;
      local_24 = local_38[1];
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      local_14 = FUN_0000ce64(&local_24,auStack_30,auStack_d8,1);
      if (local_14 == 499) {
        uVar1 = FUN_00006a9e(*(uint32_t*)(local_10 + 0x12),s_NO_STREET_0000719e,1);
        *local_c = uVar1;
      }
    }
  }
  return local_14;
}



int FUN_00006f6a(void)

{
  int in_D0;
  uint16_t uVar1;
  uint16_t *in_D1;
  int unaff_A6;
  uint8_t auStack_34 [32];
  int local_14;
  int local_10;
  uint16_t *local_c;
  
  local_14 = 499;
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000b2b0();
  if (local_14 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000112e6);
    local_14 = FUN_00008720(*(uint32_t*)(local_10 + 0x16),auStack_34,0,0);
    if (local_14 == 499) {
      uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
      *local_c = uVar1;
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    }
  }
  return local_14;
}



int FUN_00007008(void)

{
  uint16_t uVar1;
  uint16_t *in_D1;
  uint8_t auStack_c6 [156];
  uint32_t local_2a;
  uint32_t local_26;
  uint16_t local_22;
  uint8_t auStack_20 [2];
  uint32_t local_1e;
  uint16_t local_1a;
  uint32_t local_18;
  int local_14;
  uint16_t *local_c;
  
  local_14 = 499;
  local_c = in_D1;
  local_14 = FUN_0000b4c2();
  if (local_14 == 499) {
    local_26 = local_1e;
    local_22 = local_1a;
    local_2a = local_18;
    local_14 = FUN_0000ce64(&local_2a,auStack_20,auStack_c6,1);
    if (local_14 == 499) {
      uVar1 = FUN_00006a9e(s_NO_LOCATION_000071b2,s_NO_STREET_000071a8,1);
      *local_c = uVar1;
    }
  }
  return local_14;
}



int FUN_000070b4(void)

{
  int in_D0;
  uint16_t uVar1;
  uint16_t *in_D1;
  uint8_t auStack_c6 [156];
  uint32_t local_2a;
  uint32_t local_26;
  uint16_t local_22;
  uint8_t auStack_20 [2];
  uint32_t local_1e;
  uint16_t local_1a;
  uint32_t local_18;
  int local_14;
  int local_10;
  uint16_t *local_c;
  
  local_14 = 499;
  local_10 = in_D0;
  local_c = in_D1;
  local_14 = FUN_0000b5d2();
  if (local_14 == 499) {
    local_26 = local_1e;
    local_22 = local_1a;
    local_2a = local_18;
    local_14 = FUN_0000ce64(&local_2a,auStack_20,auStack_c6,1);
    if (local_14 == 499) {
      uVar1 = FUN_00006a9e(*(uint32_t*)(local_10 + 0x12),*(uint32_t*)(local_10 + 0xe),1);
      *local_c = uVar1;
    }
  }
  return local_14;
}



int FUN_000071be(void)

{
  uint uVar1;
  int *in_D1;
  int unaff_A6;
  ushort local_20;
  int local_1c;
  
  local_1c = FUN_0000af3c(0);
  if ((local_1c == 499) && (local_1c = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(), local_1c == 499)) {
    uVar1 = (uint)*(ushort *)(local_20 + 6);
    *in_D1 = (uint)*(ushort *)(uVar1 + 0x1c) * 100;
    in_D1[1] = (uint)*(ushort *)(uVar1 + 0x1e) * 100;
    in_D1[2] = (uint)*(ushort *)(uVar1 + 0x20) * 100;
    in_D1[3] = (uint)*(ushort *)(uVar1 + 0x22) * 100;
    *(bool *)(in_D1 + 4) = *(short *)(uVar1 + 0x24) == 0;
    *(bool *)((int)in_D1 + 0x11) = *(short *)(uVar1 + 0x26) != 0;
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
  }
  return local_1c;
}



int FUN_000072a2(void)

{
  uint uVar1;
  uint32_t *in_D1;
  int unaff_A6;
  uint16_t local_1e;
  ushort local_1c;
  int local_18;
  
  local_18 = FUN_0000b0f4(0);
  if (local_18 == 499) {
    local_18 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_18 == 499) {
      uVar1 = (uint)*(ushort *)(local_1c + 6);
      if (*(int *)(uVar1 + 0xc) == 0) {
        local_18 = 0x1a3;
      }
      else {
        *(uint16_t*)(in_D1 + 1) = local_1e;
        *in_D1 = *(uint32_t*)(uVar1 + 0xc);
        *(uint16_t*)((int)in_D1 + 6) = *(uint16_t*)(uVar1 + 0x10);
      }
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    }
  }
  return local_18;
}



int FUN_0000734e(void)

{
  byte bVar1;
  uint uVar2;
  char cVar3;
  int iVar4;
  int iVar5;
  int unaff_A6;
  uint16_t local_40;
  uint32_t local_24;
  
  local_24 = FUN_0000b2b0();
  if (local_24 == 499) {
    local_24 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_24 == 499) {
      bVar1 = *(byte *)(*(ushort *)(local_40 + 6) + 2);
      uVar2 = (uint)*(ushort *)(uint)*(ushort *)(local_40 + 6);
      for (iVar4 = 0; iVar4 < (int)(uint)bVar1; iVar4 = iVar4 + 1) {
        for (iVar5 = 0; iVar5 < (int)(uint)*(ushort *)(uVar2 + 0x16); iVar5 = iVar5 + 1) {
          cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
          if (cVar3 == '\0') {
            local_24 = 0x1f2;
            break;
          }
        }
        uVar2 = uVar2 + *(ushort *)(&gda->buffer[0x8000 - 0x7240]);
      }
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    }
  }
  return local_24;
}



int FUN_000074ce(uint32_t *param_1)

{
  uint32_t *puVar1;
  char cVar2;
  int iVar3;
  int unaff_A6;
  uint32_t *puVar4;
  ushort local_32;
  int local_24;
  
  local_24 = FUN_0000b8bc(0,0,0);
  if (local_24 == 499) {
    local_24 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_24 == 499) {
      puVar1 = (uint32_t *)(uint)*(ushort *)(local_32 + 6);
      puVar4 = puVar1 + 2;
      for (iVar3 = 0; iVar3 < (int)(uint)*(ushort *)((int)puVar4 + 2); iVar3 = iVar3 + 1) {
        cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
        if (cVar2 == '\0') {
          local_24 = 0x1f2;
          break;
        }
      }
      *param_1 = *puVar1;
      param_1[1] = puVar1[1];
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
    }
  }
  return local_24;
}



int FUN_000075d0(void)

{
  ushort uVar1;
  int iVar2;
  char cVar3;
  int iVar4;
  int unaff_A6;
  ushort local_24;
  
  iVar2 = FUN_0000af3c();
  if ((iVar2 == 499) && (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(), iVar2 == 499)) {
    uVar1 = *(ushort *)(local_24 + 6);
    for (iVar4 = 0; iVar4 < (int)(uint)*(ushort *)(uVar1 + 0x1a); iVar4 = iVar4 + 1) {
      cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
      if (cVar3 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
        return 0x1f2;
      }
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
  }
  return iVar2;
}



int FUN_000076c2(void)

{
  ushort uVar1;
  int iVar2;
  char cVar3;
  int iVar4;
  int unaff_A6;
  ushort local_24;
  
  iVar2 = FUN_0000b0f4();
  if ((iVar2 == 499) && (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(), iVar2 == 499)) {
    uVar1 = *(ushort *)(local_24 + 6);
    for (iVar4 = 0; iVar4 < (int)(uint)*(ushort *)(uVar1 + 10); iVar4 = iVar4 + 1) {
      cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
      if (cVar3 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
        return 0x1f2;
      }
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
  }
  return iVar2;
}



int FUN_000077b4(void)

{
  int in_D0;
  int iVar1;
  char cVar2;
  int unaff_A6;
  uint uVar3;
  
  uVar3 = 0;
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))(0,0,0);
  if (iVar1 == 499) {
    cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x63d0]))();
    if (cVar2 == '\0') {
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      iVar1 = 0x196;
    }
    else {
      cVar2 = FUN_0000f250();
      if (cVar2 == '\0') {
        (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
        iVar1 = 0x1b2;
      }
      else {
        if (sRam00000004 == 0) {
          uVar3 = (uint)*(ushort *)
                         ((uint)*(ushort *)(&gda->buffer[0x8000 - 0x72b2]) + (uint)*(ushort *)(in_D0 + 6));
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          uVar3 = (uint)*(ushort *)(uVar3 + 4);
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          uVar3 = (uint)*(ushort *)(uVar3 + 4);
        }
        else {
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
        }
        (**(code **)(&gda->buffer[0x8000 - 0x64a2]))(uVar3);
        (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      }
    }
  }
  return iVar1;
}



int FUN_0000798a(uint32_t *param_1,uint32_t *param_2)

{
  byte bVar1;
  bool bVar2;
  bool bVar3;
  int in_D0;
  uint uVar4;
  uint16_t uVar5;
  ushort *in_D1;
  int iVar6;
  int iVar7;
  ushort uVar8;
  ushort uVar9;
  int iVar10;
  int unaff_A6;
  ushort local_34;
  int local_28;
  
  local_34 = 0x7fff;
  if (*in_D1 == 0x7fff) {
    local_28 = 0x1ad;
  }
  else {
    local_28 = (**(code **)(&gda->buffer[0x8000 - 0x65da]))();
    if (local_28 == 499) {
      bVar1 = *(byte *)(*(ushort *)(*(ushort *)(in_D0 + 8) + 6) + 2);
      bVar2 = false;
      uVar4 = (uint)*(ushort *)(uint)*(ushort *)(*(ushort *)(in_D0 + 8) + 6);
      for (iVar10 = 0; iVar10 < (int)(uint)bVar1; iVar10 = iVar10 + 1) {
        if ((*in_D1 & 1) == 0) {
          uVar8 = *(ushort *)(uVar4 + 8);
          uVar9 = *(ushort *)(uVar4 + 10);
        }
        else {
          uVar8 = *(ushort *)(uVar4 + 0xc);
          uVar9 = *(ushort *)(uVar4 + 0xe);
        }
        if ((uVar8 != 0x7fff) && (uVar9 != 0x7fff)) {
          if ((uVar8 <= *in_D1) && (*in_D1 <= uVar9)) {
            local_34 = *in_D1;
            uVar5 = (**(code **)(&gda->buffer[0x8000 - 0x65e0]))();
            *(uint16_t*)(param_1 + 1) = uVar5;
            *param_1 = *(uint32_t*)(uVar4 + 0x10);
            *param_2 = *(uint32_t*)(uVar4 + 0x14);
            bVar2 = true;
            break;
          }
          bVar3 = false;
          if (local_34 == 0x7fff) {
            if (*in_D1 < uVar9) {
              iVar6 = -((uint)*in_D1 - (uint)uVar9);
            }
            else {
              iVar6 = (uint)*in_D1 - (uint)uVar9;
            }
            if (*in_D1 < uVar8) {
              iVar7 = -((uint)*in_D1 - (uint)uVar8);
            }
            else {
              iVar7 = (uint)*in_D1 - (uint)uVar8;
            }
            if (iVar7 < iVar6) {
              bVar3 = true;
              local_34 = uVar8;
            }
            else {
              bVar3 = true;
              local_34 = uVar9;
            }
          }
          else {
            if (*in_D1 < uVar9) {
              iVar6 = -((uint)*in_D1 - (uint)uVar9);
            }
            else {
              iVar6 = (uint)*in_D1 - (uint)uVar9;
            }
            if (*in_D1 < uVar8) {
              iVar7 = -((uint)*in_D1 - (uint)uVar8);
            }
            else {
              iVar7 = (uint)*in_D1 - (uint)uVar8;
            }
            if (iVar7 < iVar6) {
              if (*in_D1 < uVar8) {
                iVar6 = -((uint)*in_D1 - (uint)uVar8);
              }
              else {
                iVar6 = (uint)*in_D1 - (uint)uVar8;
              }
              uVar9 = uVar8;
              if (iVar6 < (int)(uint)local_34) {
LAB_00007b96:
                local_34 = uVar9;
                bVar3 = true;
              }
            }
            else {
              if (*in_D1 < uVar9) {
                iVar6 = -((uint)*in_D1 - (uint)uVar9);
              }
              else {
                iVar6 = (uint)*in_D1 - (uint)uVar9;
              }
              if (iVar6 < (int)(uint)local_34) goto LAB_00007b96;
            }
          }
          if (bVar3) {
            uVar5 = (**(code **)(&gda->buffer[0x8000 - 0x65e0]))();
            *(uint16_t*)(param_1 + 1) = uVar5;
            *param_1 = *(uint32_t*)(uVar4 + 0x10);
            *param_2 = *(uint32_t*)(uVar4 + 0x14);
            bVar2 = true;
          }
        }
        uVar4 = uVar4 + *(ushort *)(&gda->buffer[0x8000 - 0x7240]);
      }
      (**(code **)(&gda->buffer[0x8000 - 0x65e6]))();
      if ((bVar2) && (local_34 != 0x7fff)) {
        if (local_34 != *in_D1) {
          local_28 = 0x1ae;
        }
        if (local_34 != 0x7fff) {
          *in_D1 = local_34;
        }
      }
      else {
        local_28 = 0x1ad;
      }
    }
  }
  return local_28;
}



uint32_t FUN_00007cb4(int param_1,ushort *param_2,int param_3)

{
  ushort *puVar1;
  bool bVar2;
  ushort *in_D0;
  uint32_t uVar3;
  ushort uVar4;
  ushort uVar5;
  int in_D1;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int unaff_A6;
  short local_34;
  uint8_t local_32;
  ushort local_2e;
  
  local_2e = 0x7fff;
  if (*in_D0 == 0x7fff) {
    uVar3 = 0x1ad;
  }
  else {
    iVar8 = 0;
    iVar9 = in_D1 + (uint)*param_2;
    while (iVar8 < (int)(uint)param_2[1]) {
      if (*(short *)(in_D1 + 4) == 0) {
        uVar4 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
      }
      else {
        uVar4 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
      }
      puVar1 = (ushort *)
               (param_1 + (uint)*(ushort *)(param_1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7256]) *
               ((int)(iVar9 - (in_D1 + (uint)*(ushort *)
                                              (in_D1 + 0x10 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]))
                              )) / (int)(uint)uVar4));
      uVar4 = 0x7fff;
      uVar5 = 0x7fff;
      if ((*puVar1 != 0x7fff) && (puVar1[2] == 0x7fff)) {
        puVar1[2] = *puVar1;
      }
      if ((puVar1[2] != 0x7fff) && (*puVar1 == 0x7fff)) {
        *puVar1 = puVar1[2];
      }
      if ((puVar1[1] != 0x7fff) && (puVar1[3] == 0x7fff)) {
        puVar1[3] = puVar1[1];
      }
      if ((puVar1[3] != 0x7fff) && (puVar1[1] == 0x7fff)) {
        puVar1[1] = puVar1[3];
      }
      if ((((((*in_D0 & 1) == 0) && ((*puVar1 & 1) == 0)) && (*puVar1 != 0x7fff)) &&
          (((*(byte *)((int)puVar1 + 5) & 1) == 0 && (puVar1[2] != 0x7fff)))) ||
         (((((*in_D0 & 1) != 0 && (((*puVar1 & 1) != 0 && (*puVar1 != 0x7fff)))) &&
           ((*(byte *)((int)puVar1 + 5) & 1) != 0)) && (puVar1[2] != 0x7fff)))) {
        if (*puVar1 < puVar1[2]) {
          uVar4 = *puVar1;
        }
        else {
          uVar4 = puVar1[2];
        }
        if (puVar1[2] < *puVar1) {
          uVar5 = *puVar1;
        }
        else {
          uVar5 = puVar1[2];
        }
        *(uint8_t *)(param_3 + 8) = 0;
      }
      else if ((((((*in_D0 & 1) == 0) && ((*(byte *)((int)puVar1 + 3) & 1) == 0)) &&
                (puVar1[1] != 0x7fff)) &&
               (((*(byte *)((int)puVar1 + 7) & 1) == 0 && (puVar1[3] != 0x7fff)))) ||
              ((((*in_D0 & 1) != 0 &&
                (((*(byte *)((int)puVar1 + 3) & 1) != 0 && (puVar1[1] != 0x7fff)))) &&
               (((*(byte *)((int)puVar1 + 7) & 1) != 0 && (puVar1[3] != 0x7fff)))))) {
        if (puVar1[1] < puVar1[3]) {
          uVar4 = puVar1[1];
        }
        else {
          uVar4 = puVar1[3];
        }
        if (puVar1[3] < puVar1[1]) {
          uVar5 = puVar1[1];
        }
        else {
          uVar5 = puVar1[3];
        }
        *(uint8_t *)(param_3 + 8) = 1;
      }
      if ((((uVar4 != 0x7fff) && (uVar5 != 0x7fff)) && (uVar4 <= *in_D0)) && (*in_D0 <= uVar5)) {
        *(short *)(param_3 + 6) = (short)iVar9 - (short)in_D1;
        return 499;
      }
      if ((uVar4 != 0x7fff) && (uVar5 != 0x7fff)) {
        bVar2 = false;
        if (local_2e == 0x7fff) {
          if (*in_D0 < uVar5) {
            iVar6 = -((uint)*in_D0 - (uint)uVar5);
          }
          else {
            iVar6 = (uint)*in_D0 - (uint)uVar5;
          }
          if (*in_D0 < uVar4) {
            iVar7 = -((uint)*in_D0 - (uint)uVar4);
          }
          else {
            iVar7 = (uint)*in_D0 - (uint)uVar4;
          }
          if (iVar7 < iVar6) {
            bVar2 = true;
            local_2e = uVar4;
          }
          else {
            bVar2 = true;
            local_2e = uVar5;
          }
        }
        else {
          if (*in_D0 < uVar5) {
            iVar6 = -((uint)*in_D0 - (uint)uVar5);
          }
          else {
            iVar6 = (uint)*in_D0 - (uint)uVar5;
          }
          if (*in_D0 < uVar4) {
            iVar7 = -((uint)*in_D0 - (uint)uVar4);
          }
          else {
            iVar7 = (uint)*in_D0 - (uint)uVar4;
          }
          if (iVar7 < iVar6) {
            if (*in_D0 < uVar4) {
              iVar6 = -((uint)*in_D0 - (uint)uVar4);
            }
            else {
              iVar6 = (uint)*in_D0 - (uint)uVar4;
            }
            uVar5 = uVar4;
            if (iVar6 < (int)(uint)local_2e) {
LAB_00007fe4:
              local_2e = uVar5;
              bVar2 = true;
            }
          }
          else {
            if (*in_D0 < uVar5) {
              iVar6 = -((uint)*in_D0 - (uint)uVar5);
            }
            else {
              iVar6 = (uint)*in_D0 - (uint)uVar5;
            }
            if (iVar6 < (int)(uint)local_2e) goto LAB_00007fe4;
          }
        }
        if (bVar2) {
          local_34 = (short)iVar9 - (short)in_D1;
          local_32 = *(uint8_t *)(param_3 + 8);
        }
      }
      iVar8 = iVar8 + 1;
      if (*(short *)(in_D1 + 4) == 0) {
        uVar4 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
      }
      else {
        uVar4 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
      }
      iVar9 = iVar9 + (uint)uVar4;
    }
    if (local_2e == 0x7fff) {
      uVar3 = 0x1ad;
    }
    else {
      *(uint8_t *)(param_3 + 8) = local_32;
      *(short *)(param_3 + 6) = local_34;
      *in_D0 = local_2e;
      uVar3 = 0x1ae;
    }
  }
  return uVar3;
}



int FUN_000080ec(void)

{
  int iVar1;
  uint32_t *in_D1;
  int unaff_A6;
  uint8_t auStack_38 [4];
  uint32_t local_34;
  int local_30;
  uint32_t local_2c;
  uint16_t local_28;
  uint32_t local_26;
  uint16_t local_22;
  uint32_t *local_10;
  
  local_30 = 0;
  local_34 = 0;
  local_10 = in_D1;
  iVar1 = FUN_0000b2b0();
  if (iVar1 == 499) {
    iVar1 = FUN_0000798a(&local_26,auStack_38);
    if (iVar1 != 0x1ad) {
      iVar1 = FUN_00010138();
      if (iVar1 == 499) {
        if (*(char *)(local_30 + 0x2c +
                     (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a2]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]))
            == '\x01') {
          local_28 = local_22;
          local_2c = *(uint32_t*)
                      (local_30 + 0x10 +
                      (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a2]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]))
          ;
          iVar1 = FUN_00010138();
          if (iVar1 == 499) {
            iVar1 = FUN_00007cb4(local_34,auStack_38,local_10);
            if (iVar1 != 0x1ad) {
              *local_10 = local_26;
              *(uint16_t*)(local_10 + 1) = local_22;
            }
            FUN_00010078();
            FUN_00010078();
          }
          else {
            FUN_00010078();
          }
        }
        else {
          iVar1 = 0x1ad;
        }
      }
    }
  }
  return iVar1;
}



uint32_t FUN_000082ac(uint32_t param_1,uint32_t *param_2,uint16_t param_3,char param_4)

{
  bool bVar1;
  int iVar2;
  char cVar3;
  uint32_t *in_D1;
  int unaff_A6;
  int local_8e [20];
  uint8_t local_3e;
  uint32_t local_3c;
  uint32_t local_38;
  uint32_t local_34;
  uint32_t local_30;
  uint32_t local_2c;
  uint32_t local_28;
  uint16_t local_24;
  char local_22;
  uint32_t local_20;
  uint32_t *local_18;
  
  local_20 = 0;
  local_8e[0] = 0;
  local_18 = in_D1;
  (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
  do {
    cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
    if (cVar3 == '\0') {
      return 1;
    }
    bVar1 = true;
    (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
    do {
      cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x63c4]))(local_8e);
      if (cVar3 == '\0') {
        local_3c = *local_18;
        local_38 = local_18[1];
        local_34 = local_18[2];
        local_30 = local_18[3];
        local_2c = *param_2;
        local_28 = param_2[1];
        local_24 = param_3;
        local_22 = param_4;
        local_3e = !bVar1;
        if (!(bool)local_3e) {
          bVar1 = false;
        }
        cVar3 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
        if (cVar3 == '\0') {
          return 0;
        }
      }
      else {
        (**(code **)(&gda->buffer[0x8000 - 0x6f86]))(local_8e[0] + 0x4e);
        (**(code **)(&gda->buffer[0x8000 - 0x6f86]))(local_8e[0] + 0x4e);
        if ((local_22 != '\0') && (param_4 == '\0')) {
          local_2c = *param_2;
          local_28 = param_2[1];
          local_24 = param_3;
          local_22 = '\0';
        }
        if (bVar1) {
          bVar1 = false;
        }
      }
      func_0x0000822e();
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
    } while (iVar2 != 0);
  } while( true );
}



int FUN_000083ec(uint32_t param_1,char param_2)

{
  char cVar2;
  int iVar1;
  int unaff_A6;
  uint8_t local_b3;
  uint16_t local_b2;
  uint8_t auStack_b0 [84];
  uint32_t local_5c;
  uint8_t auStack_58 [20];
  uint32_t local_44;
  uint32_t local_40;
  uint8_t auStack_3c [20];
  uint8_t auStack_28 [16];
  int local_18;
  
  local_18 = 499;
  local_40 = 0;
  local_44 = 0;
  local_5c = 0;
  cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x63c4]))(&local_40);
  if (cVar2 == '\0') {
    cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
    if (cVar2 == '\0') {
LAB_0000851a:
      local_18 = 0x1f2;
    }
    else {
      (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_00013a50);
      (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(FUN_000111b6);
      local_18 = FUN_0000a27e(auStack_28,auStack_3c,param_2,auStack_58,auStack_b0,&local_b2,
                              &local_b3);
      if (local_18 == 499) {
        if (param_2 == '\0') {
          cVar2 = FUN_000082ac(auStack_3c,auStack_b0,local_b2,local_b3);
          if (cVar2 == '\0') {
            (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
            (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
            return 0;
          }
        }
        else {
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          do {
            cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x63c4]))(&local_44);
            if (cVar2 != '\0') {
              (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
              while (cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))(), cVar2 != '\0') {
                cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
                if (cVar2 == '\0') {
                  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
                  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
                  goto LAB_0000851a;
                }
              }
            }
            func_0x0000822e();
            iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
          } while (iVar1 != 0);
        }
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      }
      else {
        (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      }
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    }
  }
  return local_18;
}



int FUN_000085c4(uint32_t param_1,uint8_t param_2,uint32_t param_3,uint32_t param_4)

{
  uint32_t *in_D0;
  ushort uVar1;
  ushort *in_D1;
  int iVar2;
  int iVar3;
  int unaff_A6;
  uint8_t auStack_44 [20];
  uint32_t local_30;
  uint16_t local_2c;
  short local_2a;
  int local_28;
  int local_24;
  uint32_t *local_20;
  
  local_28 = 0;
  local_20 = in_D0;
  local_24 = FUN_00010138();
  if (local_24 == 499) {
    local_30 = *local_20;
    local_2c = *(uint16_t*)(local_20 + 1);
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_0001111e);
    iVar2 = 0;
    iVar3 = local_28 + (uint)*in_D1;
    while (iVar2 < (int)(uint)in_D1[1]) {
      if ((((*(byte *)(iVar3 + 0x11) & 0xf) != 3) && ((*(byte *)(iVar3 + 0x11) & 0xf) != 4)) ||
         (*(byte *)(iVar3 + 0x11) >> 4 != 1)) {
        local_2a = (short)iVar3 - (short)local_28;
        local_24 = FUN_000083ec(param_1,param_2,param_3,param_4,auStack_44);
        if (local_24 != 499) break;
        local_24 = FUN_000083ec(param_1,param_2,param_3,param_4,auStack_44);
        if (local_24 != 499) break;
      }
      iVar2 = iVar2 + 1;
      if (*(short *)(local_28 + 4) == 0) {
        uVar1 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
      }
      else {
        uVar1 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
      }
      iVar3 = iVar3 + (uint)uVar1;
    }
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    FUN_00010078();
  }
  return local_24;
}



int FUN_00008720(uint32_t param_1,uint32_t param_2,char param_3,uint32_t param_4)

{
  byte bVar1;
  int in_D0;
  int iVar2;
  uint32_t uVar3;
  char cVar4;
  int iVar5;
  int unaff_A6;
  
  iVar2 = FUN_00010138();
  if (iVar2 == 499) {
    bVar1 = *(byte *)(*(ushort *)(*(ushort *)(in_D0 + 8) + 6) + 2);
    for (iVar5 = 0; iVar5 < (int)(uint)bVar1; iVar5 = iVar5 + 1) {
      FUN_0000fd8c();
      iVar2 = FUN_000085c4(param_2,param_3,param_4,param_1);
      if (iVar2 != 499) {
        FUN_00010078();
        return iVar2;
      }
      iVar2 = 499;
    }
    FUN_00010078();
    if (param_3 == '\0') {
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
      uVar3 = (**(code **)(&gda->buffer[0x8000 - 0x649c]))();
      while (cVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))(), cVar4 != '\0') {
        iVar5 = FUN_0001054c(uVar3);
        if (iVar5 == 0) {
          (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
          do {
            iVar5 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
            if (iVar5 == 0) {
              (**(code **)(&gda->buffer[0x8000 - 0x65b0]))();
            }
            func_0x0000822e();
            iVar5 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
          } while (iVar5 != 0);
        }
        else {
          (**(code **)(&gda->buffer[0x8000 - 0x65b0]))();
        }
      }
    }
  }
  return iVar2;
}



void FUN_000088ce(void)

{
  int unaff_A6;
  
  *(uint8_t *)(&gda->buffer[0x8000 - 0x684e]) = 0;
  return;
}



uint8_t FUN_000088de(void)

{
  int unaff_A6;
  
  return *(uint8_t *)(&gda->buffer[0x8000 - 0x684e]);
}



void FUN_00008900(void)

{
  int unaff_A6;
  
  *(uint8_t *)(&gda->buffer[0x8000 - 0x684d]) = 0;
  return;
}



uint32_t FUN_0000895c(void)

{
  int in_D0;
  uint32_t uVar1;
  char in_D1b;
  
  if (((((*(byte *)(in_D0 + 0x11) & 0xf) == 3) || ((*(byte *)(in_D0 + 0x11) & 0xf) == 4)) &&
      (*(byte *)(in_D0 + 0x11) >> 4 == 1)) ||
     ((in_D1b != '\0' && ((*(byte *)(in_D0 + 0x10) & 0x70) == 0x50)))) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}



void FUN_000089c8(uint *param_1)

{
  ushort uVar1;
  uint32_t *in_D0;
  uint uVar2;
  char cVar4;
  ushort uVar3;
  uint32_t in_D1;
  int iVar5;
  int iVar6;
  int unaff_A6;
  uint8_t auStack_3c [8];
  uint8_t auStack_34 [20];
  uint32_t local_20;
  
  local_20 = in_D1;
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_34);
  uVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6f5a]))();
  if ((uVar2 & 1) != 0) {
    (**(code **)(&gda->buffer[0x8000 - 0x6f8a]))(auStack_3c);
    uVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
    if (1000000 < uVar2) {
      return;
    }
  }
  uVar1 = *(ushort *)(&gda->buffer[0x8000 - 0x72ba]);
  iVar5 = 0;
  iVar6 = (int)in_D0 + (uint)*(ushort *)((int)in_D0 + uVar1 + 0x10);
  do {
    if ((int)(uint)*(ushort *)((int)in_D0 + uVar1 + 0x12) <= iVar5) {
      return;
    }
    cVar4 = FUN_0000895c();
    if ((cVar4 != '\0') && (uVar2 = FUN_0000f352(local_20), uVar2 < 0xf4241)) {
      if (uVar2 < *param_1) {
        *param_1 = uVar2;
      }
      FUN_0000fd8c();
      cVar4 = FUN_00010710(*in_D0,(short)iVar6 - (short)in_D0);
      if (cVar4 == '\0') {
        return;
      }
    }
    iVar5 = iVar5 + 1;
    if (*(short *)(in_D0 + 1) == 0) {
      uVar3 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
    }
    else {
      uVar3 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
    }
    iVar6 = iVar6 + (uint)uVar3;
  } while( true );
}



int FUN_00008b02(uint32_t param_1,uint8_t param_2)

{
  byte bVar3;
  uint uVar1;
  int iVar2;
  char cVar4;
  char in_D1b;
  int unaff_A6;
  uint8_t auStack_ac [8];
  uint8_t auStack_a4 [8];
  uint8_t auStack_9c [8];
  uint8_t auStack_94 [16];
  int local_84;
  uint8_t auStack_80 [20];
  int local_6c [4];
  uint8_t auStack_5c [20];
  uint8_t auStack_48 [36];
  uint8_t auStack_24 [16];
  int local_14;
  
  local_6c[3] = 0;
  local_6c[2] = 0;
  local_6c[1] = 0;
  local_6c[0] = -1;
  if ((((in_D1b != '\0') && (in_D1b != '\x01')) && (in_D1b != '\x02')) && (in_D1b != '\x03')) {
    return 0x199;
  }
  local_14 = FUN_0000eb4e();
  if (local_14 != 499) {
    return local_14;
  }
  local_14 = FUN_0000eafe();
  if (local_14 != 499) {
    return local_14;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_24);
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110de);
  do {
    do {
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
      if (iVar2 != 0) {
        cVar4 = FUN_000106c4(10,&LAB_00008920);
        if (cVar4 == '\0') {
          (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
          return 0x1f2;
        }
        (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
        goto LAB_00008dca;
      }
      local_14 = FUN_0000d45a(auStack_48,1);
      if (local_14 != 499) goto LAB_00008d24;
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    } while (iVar2 != 0);
    bVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
    if ((bVar3 & 2) == 2) {
LAB_00008cf8:
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      goto LAB_00008dfa;
    }
    (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_94);
    (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_9c);
    (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_a4);
    (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_ac);
    (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
    uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
    if (((1000000 < uVar1) && (uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))(), 1000000 < uVar1)) &&
       ((uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))(), 1000000 < uVar1 &&
        (uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))(), 1000000 < uVar1)))) goto LAB_00008cf8;
    local_14 = FUN_0000d9dc();
  } while (local_14 == 499);
LAB_00008d24:
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  return local_14;
LAB_00008dca:
  cVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))();
  if (cVar4 == '\0') goto code_r0x00008dde;
  local_14 = FUN_00010138();
  if (local_14 != 499) goto LAB_00008ea4;
  FUN_000089c8(local_6c,auStack_80,param_2);
  FUN_00010078();
  goto LAB_00008dca;
code_r0x00008dde:
  if (local_6c[0] == -1) {
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    FUN_0001080c();
LAB_00008dfa:
    local_14 = 0x1a9;
  }
  else {
    (**(code **)(&gda->buffer[0x8000 - 0x6f56]))(auStack_24);
    (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110de);
    local_14 = FUN_0000d45a(auStack_5c,1);
    if (local_14 == 499) {
      (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
      while (cVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))(), cVar4 != '\0') {
        cVar4 = (**(code **)(&gda->buffer[0x8000 - 0x63c4]))(local_6c + 2);
        if (cVar4 == '\0') {
          local_14 = FUN_00010138();
          if (local_14 != 499) goto LAB_00008e96;
          FUN_000089c8(local_6c,auStack_80,param_2);
          FUN_00010078();
        }
      }
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      do {
        cVar4 = FUN_000107aa();
        if ((cVar4 == '\0') || (local_84 != local_6c[0])) goto LAB_00008f3c;
        cVar4 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
      } while (cVar4 != '\0');
      local_14 = 0x1f2;
    }
    else {
LAB_00008e96:
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
LAB_00008ea4:
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    }
LAB_00008f3c:
    FUN_0001080c();
  }
  return local_14;
}



void FUN_00008f94(char param_1)

{
  ushort *puVar1;
  int in_D0;
  int iVar2;
  char cVar4;
  int iVar3;
  int iVar5;
  int unaff_A6;
  uint8_t auStack_24 [8];
  int local_1c;
  
  puVar1 = (ushort *)(in_D0 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
  local_1c = in_D0;
  FUN_0000fd8c();
  iVar5 = 0;
  iVar3 = local_1c + (uint)*puVar1;
  do {
    if ((int)(uint)puVar1[1] <= iVar5) {
      return;
    }
    if ((param_1 == *(char *)(iVar3 + 0xb)) &&
       ((iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))(), iVar2 == 0 ||
        (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))(), iVar2 == 0)))) {
      (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_24);
      (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
      cVar4 = FUN_00010710();
      if (cVar4 == '\0') {
        return;
      }
    }
    iVar5 = iVar5 + 1;
    iVar3 = iVar3 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7260]);
  } while( true );
}



int FUN_000090ba(uint8_t param_1,uint32_t param_2)

{
  char cVar2;
  byte bVar3;
  uint uVar1;
  int in_D1;
  int unaff_A6;
  uint64_t uVar4;
  uint8_t auStack_8c [8];
  int local_84;
  uint32_t local_78;
  uint32_t local_74;
  uint32_t local_70;
  uint8_t auStack_6c [16];
  uint8_t auStack_5c [36];
  uint8_t auStack_38 [36];
  int local_14;
  int local_c;
  
  local_70 = 0;
  local_74 = 0;
  local_78 = 0;
  local_c = in_D1;
  local_14 = FUN_0000eb4e();
  if (local_14 != 499) {
    return local_14;
  }
  local_14 = FUN_0000eafe();
  if (local_14 != 499) {
    return local_14;
  }
  local_14 = FUN_0000b40e();
  if (local_14 != 499) {
    return local_14;
  }
  if (local_c < 1) {
    return 499;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110de);
  (**(code **)(&gda->buffer[0x8000 - 0x65bc]))(&LAB_000110de);
  cVar2 = FUN_000106c4(local_c,&LAB_00008f58);
  if (cVar2 == '\0') {
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
    return 0x1f2;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_5c);
  do {
    local_14 = FUN_0000d45a(auStack_38,1);
    if (local_14 != 499) break;
    (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    uVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    if ((int)uVar4 == (int)((ulonglong)uVar4 >> 0x20)) {
      bVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
      if ((bVar3 & 2) != 2) goto LAB_0000932a;
LAB_00009382:
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
      goto LAB_000093b4;
    }
    (**(code **)(&gda->buffer[0x8000 - 0x6568]))();
    while ((cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6592]))(), cVar2 != '\0' &&
           (cVar2 = FUN_000088de(), cVar2 == '\0'))) {
      cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x63c4]))(&local_74);
      if (cVar2 == '\0') {
        cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))();
        if (cVar2 == '\0') {
          (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
          (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
          FUN_0001080c();
          return 0x1f2;
        }
        local_14 = FUN_00010138();
        if (local_14 != 499) goto LAB_00009364;
        FUN_00008f94(param_1,param_2,auStack_8c);
        FUN_00010078();
      }
    }
    if (local_84 == local_c) {
      (**(code **)(&gda->buffer[0x8000 - 0x6f56]))(auStack_6c);
      bVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
      if ((bVar3 & 2) == 2) goto LAB_00009382;
    }
LAB_0000932a:
    uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
    if ((20000000 < uVar1) || (cVar2 = FUN_000088de(), cVar2 != '\0')) goto LAB_00009382;
    local_14 = FUN_0000d9dc();
  } while (local_14 == 499);
LAB_00009364:
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  (**(code **)(&gda->buffer[0x8000 - 0x65b6]))();
  goto LAB_000093c8;
  while (cVar2 = (**(code **)(&gda->buffer[0x8000 - 0x656e]))(), cVar2 != '\0') {
LAB_000093b4:
    cVar2 = FUN_000107aa();
    if (cVar2 == '\0') goto LAB_000093c8;
  }
  local_14 = 0x1f2;
LAB_000093c8:
  FUN_0001080c();
  return local_14;
}



uint32_t
FUN_000093e4(uint32_t param_1,char param_2,char param_3,uint *param_4,uint32_t *param_5)

{
  ushort *puVar1;
  uint32_t *in_D0;
  uint uVar2;
  char *pcVar3;
  int in_D1;
  int iVar4;
  int iVar5;
  int unaff_A6;
  ushort local_38;
  ushort local_36;
  ushort local_34;
  ushort local_32;
  
  puVar1 = (ushort *)(in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
  iVar4 = 0;
  pcVar3 = (char *)(in_D1 + (uint)*puVar1);
  while( true ) {
    if ((int)(uint)puVar1[1] <= iVar4) {
      return 499;
    }
    if (param_2 == *pcVar3) break;
    iVar4 = iVar4 + 1;
    pcVar3 = pcVar3 + *(ushort *)(&gda->buffer[0x8000 - 0x724e]);
  }
  if (param_3 == pcVar3[1]) {
    if (pcVar3[1] == '\0') {
      FUN_00010f40();
      iVar4 = in_D1 + (uint)local_34;
      for (iVar5 = 0; iVar5 < (int)(uint)local_32; iVar5 = iVar5 + 1) {
        uVar2 = FUN_0000fc6c(param_1);
        if (uVar2 < *param_4) {
          *param_4 = uVar2;
          *param_5 = *in_D0;
          *(uint16_t*)(param_5 + 1) = *(uint16_t*)(in_D0 + 1);
          *(short *)((int)param_5 + 6) = (short)iVar4 - (short)in_D1;
        }
        iVar4 = iVar4 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7250]);
      }
    }
    else {
      FUN_00010f8c();
      iVar4 = in_D1 + (uint)local_38;
      for (iVar5 = 0; iVar5 < (int)(uint)local_36; iVar5 = iVar5 + 1) {
        uVar2 = FUN_0000fca8(param_1);
        if (uVar2 < *param_4) {
          *param_4 = uVar2;
          *param_5 = *in_D0;
          *(uint16_t*)(param_5 + 1) = *(uint16_t*)(in_D0 + 1);
          *(short *)((int)param_5 + 6) = (short)iVar4 - (short)in_D1;
        }
        iVar4 = iVar4 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x724c]);
      }
    }
    return 499;
  }
  return 0x1bd;
}



uint32_t FUN_000097b2(void)

{
  ushort uVar1;
  short *psVar2;
  bool bVar3;
  int in_D0;
  int in_D1;
  short *local_1c;
  
  bVar3 = false;
  psVar2 = (short *)(in_D0 + (uint)*(ushort *)(in_D1 + 4));
  local_1c = psVar2;
  do {
    if (bVar3) {
      return 1;
    }
    if ((((*(byte *)((int)local_1c + 0x11) & 0xf) != 3) &&
        ((*(byte *)((int)local_1c + 0x11) & 0xf) != 4)) ||
       (*(byte *)((int)local_1c + 0x11) >> 4 != 1)) {
      return 0;
    }
    if ((short)((short)in_D1 - (short)in_D0) == *local_1c) {
      if (local_1c[3] == 0) goto LAB_0000984a;
      uVar1 = local_1c[3];
LAB_0000986e:
      local_1c = (short *)(in_D0 + (uint)uVar1);
    }
    else {
      if (local_1c[4] != 0) {
        uVar1 = local_1c[4];
        goto LAB_0000986e;
      }
LAB_0000984a:
      local_1c = (short *)0x0;
    }
    if ((local_1c == psVar2) || (local_1c == (short *)0x0)) {
      bVar3 = true;
    }
    else {
      bVar3 = false;
    }
  } while( true );
}



void FUN_000098a8(uint32_t param_1,uint *param_2,uint32_t *param_3)

{
  uint32_t *in_D0;
  uint uVar1;
  int iVar2;
  char cVar3;
  int in_D1;
  int iVar4;
  int unaff_A6;
  uint8_t auStack_54 [8];
  uint8_t auStack_4c [8];
  uint8_t auStack_44 [16];
  uint local_34;
  ushort *local_30;
  ushort *local_2c;
  uint32_t *local_28;
  
  local_2c = (ushort *)0x0;
  local_30 = (ushort *)0x0;
  local_28 = in_D0;
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_44);
  uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f5a]))();
  if ((uVar1 & 1) != 0) {
    (**(code **)(&gda->buffer[0x8000 - 0x6f8a]))(auStack_4c);
    uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
    if (1000000 < uVar1) {
      return;
    }
  }
  local_2c = (ushort *)(in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]) + 0x14);
  iVar2 = in_D1 + (uint)*local_2c;
  for (iVar4 = 0; iVar4 < (int)(uint)local_2c[1]; iVar4 = iVar4 + 1) {
    cVar3 = FUN_000097b2();
    if (cVar3 == '\0') {
      (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_54);
      local_34 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
      if ((local_34 < 0xf4241) && (local_34 < *param_2)) {
        *param_2 = local_34;
        *(short *)((int)param_3 + 6) = (short)iVar2 - (short)in_D1;
        *param_3 = *local_28;
        *(uint16_t*)(param_3 + 1) = *(uint16_t*)(local_28 + 1);
      }
    }
    iVar2 = iVar2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a4]);
  }
  local_30 = (ushort *)(in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]) + 0x18);
  iVar2 = in_D1 + (uint)*local_30;
  for (iVar4 = 0; iVar4 < (int)(uint)local_30[1]; iVar4 = iVar4 + 1) {
    cVar3 = FUN_000097b2();
    if (cVar3 == '\0') {
      (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_54);
      local_34 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
      if ((local_34 < 0xf4241) && (local_34 < *param_2)) {
        *param_2 = local_34;
        *(short *)((int)param_3 + 6) = (short)iVar2 - (short)in_D1;
        *param_3 = *local_28;
        *(uint16_t*)(param_3 + 1) = *(uint16_t*)(local_28 + 1);
      }
    }
    iVar2 = iVar2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72b8]);
  }
  return;
}



int FUN_00009aac(uint32_t param_1)

{
  uint32_t in_D0;
  byte bVar3;
  uint uVar1;
  int iVar2;
  char cVar4;
  int unaff_A6;
  uint8_t auStack_8c [8];
  uint8_t auStack_84 [8];
  uint8_t auStack_7c [8];
  uint8_t auStack_74 [8];
  int local_6c [8];
  uint8_t auStack_4c [16];
  uint8_t auStack_3c [20];
  uint8_t auStack_28 [20];
  int local_14;
  uint32_t local_10;
  
  local_6c[3] = 0;
  local_6c[2] = 0;
  local_6c[1] = 0;
  local_6c[0] = -1;
  local_10 = in_D0;
  local_14 = FUN_0000eb4e();
  if (local_14 != 499) {
    return local_14;
  }
  local_14 = FUN_0000eafe();
  if (local_14 != 499) {
    return local_14;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_4c);
  FUN_00011a42(&LAB_000110de);
  do {
    do {
      iVar2 = FUN_00011c7a();
      if (iVar2 != 0) {
        FUN_00011b24();
        goto LAB_00009cfc;
      }
      local_14 = FUN_0000d45a(auStack_28,1);
      if (local_14 != 499) goto LAB_00009dcc;
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6574]))();
    } while (iVar2 != 0);
    bVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
    if ((bVar3 & 2) == 2) goto LAB_00009d18;
    (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_74);
    (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_7c);
    (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_84);
    (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_8c);
    (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
    (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
    uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
    if ((((1000000 < uVar1) && (uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))(), 1000000 < uVar1)) &&
        (uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))(), 1000000 < uVar1)) &&
       (uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))(), 1000000 < uVar1)) goto LAB_00009d18;
    local_14 = FUN_0000d9dc();
  } while (local_14 == 499);
LAB_00009dcc:
  FUN_00011c00();
  return local_14;
LAB_00009cfc:
  cVar4 = FUN_00011b3c();
  if (cVar4 == '\0') goto code_r0x00009d10;
  local_14 = FUN_00010138();
  if (local_14 != 499) goto LAB_00009dcc;
  FUN_000098a8(local_10,local_6c,param_1);
  FUN_00010078();
  goto LAB_00009cfc;
code_r0x00009d10:
  if (local_6c[0] == -1) {
LAB_00009d18:
    FUN_00011c00();
    return 0x1a9;
  }
  (**(code **)(&gda->buffer[0x8000 - 0x6f56]))(auStack_4c);
  FUN_00011a42(&LAB_000110de);
  local_14 = FUN_0000d45a(auStack_3c,1);
  if (local_14 == 499) {
    FUN_00011b24();
    while( true ) {
      do {
        cVar4 = FUN_00011b3c();
        if (cVar4 == '\0') {
          FUN_00011c00();
          FUN_00011c00();
          return 499;
        }
        cVar4 = FUN_00011bb0(local_6c + 2);
      } while (cVar4 != '\0');
      local_14 = FUN_00010138();
      if (local_14 != 499) break;
      FUN_000098a8(local_10,local_6c,param_1);
      FUN_00010078();
    }
  }
  FUN_00011c00();
  goto LAB_00009dcc;
}



uint32_t FUN_00009eac(void)

{
  uint32_t *in_D0;
  char cVar2;
  uint32_t uVar1;
  
  cVar2 = FUN_00011ace(*in_D0,*(uint16_t*)((int)in_D0 + 6));
  if (cVar2 == '\0') {
    uVar1 = 0x1f2;
  }
  else {
    uVar1 = 499;
  }
  return uVar1;
}



int FUN_0000a27e(uint32_t param_1,uint32_t param_2,char param_3,uint32_t param_4,int *param_5,
                uint16_t *param_6,char *param_7)

{
  int iVar1;
  ushort *puVar2;
  bool bVar3;
  bool bVar4;
  int iVar5;
  int *in_D0;
  char cVar6;
  uint in_D1;
  int unaff_A6;
  uint8_t uStack_7f;
  uint8_t auStack_7e [2];
  int local_7c;
  uint8_t auStack_78 [21];
  char local_63;
  int local_62;
  int local_58;
  int local_54;
  uint32_t local_50;
  int local_4c;
  uint32_t local_48;
  uint8_t auStack_44 [8];
  int *local_3c;
  int local_38;
  uint16_t local_34;
  uint16_t local_32;
  uint16_t local_30;
  uint8_t local_2e;
  int local_2c;
  int *local_28;
  uint32_t uStack_24;
  
  local_3c = (int *)0x0;
  local_62 = 0;
  local_7c = 0;
  local_28 = in_D0;
  uStack_24 = in_D1;
  FUN_00011a42(&LAB_00009e48);
  local_30 = uStack_24._2_2_;
  local_38 = *local_28;
  local_34 = *(uint16_t*)(local_28 + 1);
  local_32 = *(uint16_t*)((int)local_28 + 6);
  local_2e = 0;
  *param_5 = *local_28;
  param_5[1] = local_28[1];
  *param_6 = uStack_24._2_2_;
  *param_7 = '\x01';
  cVar6 = FUN_00011ace();
  if (cVar6 == '\0') {
LAB_0000a4f4:
    local_2c = 0x1f2;
  }
  else {
    local_2c = FUN_0000f510(auStack_44,auStack_7e,&uStack_7f);
    if (local_2c == 499) {
      (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(param_1);
      FUN_00010828();
      bVar4 = false;
      while (!bVar4) {
        FUN_00011b24();
        do {
          local_63 = FUN_00011b3c();
          if (local_63 == '\0') break;
        } while (*(char *)((int)local_3c + 10) != '\0');
        if (local_63 == '\0') {
          bVar4 = true;
        }
        else {
          *(uint8_t *)((int)local_3c + 10) = 1;
          local_54 = *local_3c;
          local_50 = local_3c[1];
          uStack_24 = CONCAT22(uStack_24._0_2_,*(uint16_t*)(local_3c + 2));
          bVar3 = false;
          local_4c = local_54;
          local_48 = local_50;
          while (!bVar3) {
            local_2c = FUN_00010880();
            if (local_2c != 499) {
LAB_0000a47e:
              FUN_00011c00();
              FUN_0001091e();
              return local_2c;
            }
            iVar1 = local_58 + (local_48 & 0xffff);
            if ((*param_7 != '\0') && ((*(byte *)(iVar1 + 0x10) & 0x70) != 0x50)) {
              *param_5 = local_4c;
              param_5[1] = local_48;
              *param_7 = '\0';
              *param_6 = uStack_24._2_2_;
            }
            iVar5 = 499;
            if ((((*(byte *)(iVar1 + 0x11) & 0xf) != 0) && (*(byte *)(iVar1 + 0x11) >> 4 != 4)) &&
               (local_2c = FUN_00009eac(uStack_24 & 0xffff,auStack_78), iVar5 = local_2c,
               local_2c != 499)) goto LAB_0000a47e;
            local_2c = iVar5;
            puVar2 = (ushort *)
                     (local_58 + (uint)*(ushort *)(iVar1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72b2])));
            if (*puVar2 != 0) {
              local_7c = local_58 + (uint)*puVar2;
              cVar6 = FUN_00011ace();
              if (cVar6 != '\0') goto LAB_0000a4c8;
LAB_0000a4e0:
              FUN_00011c00();
              FUN_0001091e();
              goto LAB_0000a4f4;
            }
LAB_0000a4c8:
            if ((param_3 != '\0') && (cVar6 = FUN_00011ace(), cVar6 == '\0')) goto LAB_0000a4e0;
            local_2c = FUN_0000c7a6((int)&uStack_24 + 2,0);
            if (local_2c != 499) goto LAB_0000a5a0;
            if (local_48._2_2_ == local_50._2_2_) {
              if ((local_48._0_2_ == local_50._0_2_) && (local_4c == local_54)) {
                bVar3 = true;
              }
            }
          }
          local_62 = local_58 + (uStack_24 & 0xffff);
          (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_44);
          (**(code **)(&gda->buffer[0x8000 - 0x6f86]))(param_1);
        }
      }
      FUN_0001091e();
    }
LAB_0000a5a0:
    FUN_00011c00();
  }
  return local_2c;
}



uint8_t * FUN_0000a5bc(void)

{
  ushort *puVar1;
  int in_D0;
  uint8_t *puVar2;
  int in_D1;
  int unaff_A6;
  
  puVar1 = (ushort *)(in_D0 + (uint)*(ushort *)(in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72b2])));
  if (*puVar1 == 0) {
    puVar2 = &LAB_0000af38;
  }
  else {
    puVar2 = (uint8_t *)(in_D0 + (uint)*puVar1);
  }
  return puVar2;
}



bool FUN_0000a602(uint32_t param_1,uint32_t param_2,int *param_3)

{
  ushort uVar2;
  int iVar1;
  int unaff_A6;
  uint8_t auStack_2a [8];
  uint8_t auStack_22 [8];
  uint16_t local_1a;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_22);
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_2a);
  local_1a = (**(code **)(&gda->buffer[0x8000 - 0x6f2a]))();
  uVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6e02]))();
  if (uVar2 < 0xc9) {
    iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f4a]))();
    *param_3 = iVar1 + *param_3;
  }
  return uVar2 < 0xc9;
}



void FUN_0000a6a6(char param_1)

{
  int in_D0;
  int unaff_A6;
  uint8_t auStack_3c [8];
  uint8_t auStack_34 [8];
  int local_2c;
  ushort local_28;
  ushort local_26;
  
  local_2c = 0;
  FUN_00010d66(&local_28);
  if (0 < (short)local_26) {
    if (param_1 == '\0') {
      local_2c = in_D0 + (uint)local_28;
    }
    else {
      local_2c = in_D0 + (uint)local_28 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ac]) * (local_26 - 1);
    }
  }
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_34);
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_3c);
  (**(code **)(&gda->buffer[0x8000 - 0x6f2a]))();
  return;
}



uint32_t FUN_0000a79c(char param_1,uint16_t param_2,uint *param_3)

{
  int in_D0;
  int iVar1;
  ushort uVar3;
  char cVar4;
  uint32_t uVar2;
  ushort *in_D1;
  int iVar5;
  int iVar6;
  int unaff_A6;
  ushort local_2c;
  ushort local_2a;
  ushort *local_24;
  
  local_24 = in_D1;
  FUN_00010d66(&local_2c,0);
  iVar5 = in_D0 + (uint)local_2c;
  for (iVar6 = 0; iVar6 < (int)(uint)local_2a; iVar6 = iVar6 + 1) {
    if (param_1 == '\0') {
      iVar1 = in_D0 + (uint)local_2c;
      iVar5 = iVar6 * (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ac]);
    }
    else {
      iVar1 = (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ac]) * (((uint)local_2a - iVar6) + -1);
      iVar5 = in_D0 + (uint)local_2c;
    }
    iVar5 = iVar5 + iVar1;
    cVar4 = FUN_0000a602(iVar5,param_2,param_3);
    if (cVar4 == '\0') goto LAB_0000a8a2;
    if (16999 < *param_3) goto LAB_0000a8a6;
    iVar5 = iVar5 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ac]);
  }
  if (param_1 == '\0') {
    uVar3 = local_24[1];
  }
  else {
    uVar3 = *local_24;
  }
  cVar4 = FUN_0000a602(in_D0 + (uint)uVar3,param_2,param_3,iVar5);
  if (cVar4 == '\0') {
LAB_0000a8a2:
    uVar2 = 0;
  }
  else {
LAB_0000a8a6:
    uVar2 = 1;
  }
  return uVar2;
}



uint32_t FUN_0000a8b4(char param_1)

{
  int iVar1;
  int in_D1;
  int unaff_A6;
  
  if (((((*(byte *)(in_D1 + 0x11) & 0xf) == 0) &&
       (((byte)((ushort)*(uint16_t*)(in_D1 + 2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72b2])) >> 8) & 8
        ) != 8)) && ((*(byte *)(in_D1 + 0x10) & 0xf) != 6)) &&
     (((byte)((ushort)*(uint16_t*)(in_D1 + 2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72b2])) >> 8) &
      0x70) == 0x10)) {
    FUN_0000a5bc();
    iVar1 = FUN_000105bc();
    if (iVar1 == 0) {
      FUN_0000a5bc();
      iVar1 = FUN_000105bc();
      if ((((iVar1 != 0) && ((*(byte *)(in_D1 + 0xb) & 0x30) != 0x30)) &&
          (((*(byte *)(in_D1 + 0xb) & 0x30) != 0x10 || (param_1 != '\x01')))) &&
         (((*(byte *)(in_D1 + 0xb) & 0x30) != 0x20 || (param_1 != '\0')))) {
        return 1;
      }
    }
  }
  return 0;
}



uint32_t FUN_0000a99e(uint8_t param_1,int param_2,uint *param_3)

{
  char cVar1;
  
  cVar1 = FUN_0000a8b4(param_1,param_2);
  if ((cVar1 != '\0') &&
     (cVar1 = FUN_0000a79c(param_1,*(uint16_t*)(param_2 + 0x68),param_3), cVar1 != '\0')) {
    if (16999 < *param_3) {
      return 1;
    }
    return 0;
  }
  return 2;
}



uint32_t FUN_0000aa0a(char param_1,int param_2)

{
  int iVar1;
  int iVar2;
  uint16_t *puVar3;
  bool bVar4;
  int in_D0;
  int iVar5;
  uint32_t uVar6;
  int *in_D1;
  int unaff_A6;
  short local_2e;
  short sStack_2c;
  uint16_t local_2a [5];
  
  puVar3 = (uint16_t *)((uint)*(ushort *)((int)in_D1 + 6) + *(int *)(in_D0 + 6));
  if (param_1 == '\0') {
    local_2a[0] = puVar3[1];
  }
  else {
    local_2a[0] = *puVar3;
  }
  iVar1 = *in_D1;
  iVar2 = in_D1[1];
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(param_2 + 0x60,0);
  bVar4 = false;
  while( true ) {
    if (bVar4) {
      return 1;
    }
    iVar5 = FUN_0000c67a(local_2a);
    if (iVar5 != 499) break;
    uVar6 = FUN_0000a5bc();
    iVar5 = FUN_000105bc(uVar6);
    if ((iVar5 != 0) && (iVar5 = FUN_000105bc(uVar6), iVar5 != 0)) {
      FUN_00011ace();
    }
    sStack_2c = (short)iVar2;
    if (((sStack_2c == *(short *)((int)in_D1 + 6)) &&
        (local_2e = (short)((uint)iVar2 >> 0x10), local_2e == *(short *)(in_D1 + 1))) &&
       (iVar1 == *in_D1)) {
      bVar4 = true;
    }
  }
  return 0;
}



uint32_t FUN_0000ab20(char *param_1)

{
  int iVar1;
  uint uVar2;
  short *psVar3;
  bool bVar4;
  int in_D0;
  int iVar5;
  ushort uVar6;
  int *in_D1;
  int unaff_A6;
  short local_2a;
  short sStack_28;
  short local_26 [5];
  
  psVar3 = (short *)((uint)*(ushort *)((int)in_D1 + 6) + *(int *)(in_D0 + 6));
  if (*param_1 == '\0') {
    local_26[0] = psVar3[1];
  }
  else {
    local_26[0] = *psVar3;
  }
  iVar1 = *in_D1;
  uVar2 = in_D1[1];
  bVar4 = false;
  while( true ) {
    if ((bVar4) || (iVar5 = FUN_0000c67a(local_26), iVar5 != 499)) {
      return 0;
    }
    sStack_28 = (short)uVar2;
    if (local_26[0] == *(short *)((uVar2 & 0xffff) + *(int *)(in_D0 + 6))) {
      *param_1 = '\0';
    }
    else {
      *param_1 = '\x01';
    }
    FUN_0000a6a6(*param_1);
    uVar6 = (**(code **)(&gda->buffer[0x8000 - 0x6e02]))();
    if (uVar6 < 0xc9) break;
    if (((sStack_28 == *(short *)((int)in_D1 + 6)) &&
        (local_2a = (short)(uVar2 >> 0x10), local_2a == *(short *)(in_D1 + 1))) && (iVar1 == *in_D1)
       ) {
      bVar4 = true;
    }
  }
  *in_D1 = iVar1;
  in_D1[1] = uVar2;
  return 1;
}



int FUN_0000ac08(int param_1)

{
  uint32_t *in_D0;
  uint16_t uVar3;
  int iVar1;
  char cVar4;
  int iVar2;
  uint in_D1;
  int unaff_A6;
  uint32_t local_36 [3];
  uint32_t local_28;
  uint32_t local_24;
  int local_20;
  uint32_t uStack_18;
  
  local_28 = *in_D0;
  local_24 = in_D0[1];
  uStack_18 = in_D1;
  local_20 = FUN_00010828();
  if (local_20 != 499) {
    return local_20;
  }
  FUN_0000a5bc();
  (**(code **)(&gda->buffer[0x8000 - 0x64a2]))();
  uVar3 = FUN_0000a6a6(uStack_18 & 0xff);
  *(uint16_t*)(param_1 + 0x68) = uVar3;
  local_36[0] = 0;
  iVar1 = FUN_0000a99e(uStack_18 & 0xff,param_1,local_36);
  do {
    cVar4 = FUN_0000aa0a(uStack_18 & 0xff,param_1);
    if (cVar4 == '\0') {
      iVar1 = 2;
    }
    do {
      if ((iVar1 == 2) || ((iVar1 != 0 && (iVar2 = FUN_00011c7a(), iVar2 != 0)))) {
        if (iVar1 != 1) {
          FUN_00011c00();
        }
        FUN_0001091e();
        return 499;
      }
      cVar4 = FUN_0000ab20((int)&uStack_18 + 3,*(uint16_t*)(param_1 + 0x68));
      if (cVar4 == '\0') {
        iVar1 = 2;
      }
      else {
        iVar1 = FUN_0000a99e(uStack_18 & 0xff,param_1,local_36);
      }
      iVar2 = FUN_00011c7a();
    } while (iVar2 != 0);
  } while( true );
}



int FUN_0000af3c(void)

{
  int iVar1;
  uint32_t in_D1;
  uint8_t auStack_ba [76];
  short local_6e;
  uint8_t auStack_1e [14];
  uint32_t local_10;
  
  local_10 = in_D1;
  iVar1 = FUN_0000e668();
  if (iVar1 == 499) {
    iVar1 = FUN_0000ce64(auStack_1e,local_10,auStack_ba,0);
    if ((iVar1 == 0x1b6) || ((iVar1 == 499 && (local_6e == 0)))) {
      iVar1 = 0x1a1;
    }
  }
  return iVar1;
}



int FUN_0000afb4(void)

{
  int iVar1;
  int iVar2;
  char cVar3;
  int in_D1;
  int unaff_A6;
  uint8_t auStack_c6 [76];
  ushort local_7a;
  uint32_t *local_2a;
  int local_26;
  int local_22;
  uint32_t local_1e;
  uint32_t local_1a;
  uint16_t local_16;
  int local_10;
  
  local_22 = 0;
  local_26 = 0;
  local_2a = (uint32_t *)0x0;
  local_10 = in_D1;
  iVar1 = FUN_0000af3c();
  if ((iVar1 == 499) && (iVar1 = FUN_00010138(), iVar1 == 499)) {
    local_26 = local_22 + (uint)*(ushort *)(local_10 + 8);
    local_2a = (uint32_t *)(local_22 + (uint)*(ushort *)(local_26 + 6));
    local_16 = *(uint16_t*)(local_10 + 6);
    local_1a = *local_2a;
    local_1e = local_2a[1];
    FUN_00010078();
    iVar1 = FUN_0000ce64(&local_1e,local_10,auStack_c6,0);
    if (iVar1 == 0x1b6) {
      iVar1 = 0x1a2;
    }
    else if (iVar1 == 499) {
      if (local_7a < 0x100) {
        cVar3 = (char)local_7a;
        if (cVar3 == '\0') {
          return 0x1a2;
        }
        if (cVar3 == '\x01') {
          return 0x1aa;
        }
        if (cVar3 == '\x02') {
          return 499;
        }
      }
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6400]))();
      (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(iVar2 * 0x400 + 0x96);
      (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
    }
  }
  return iVar1;
}



int FUN_0000b0f4(void)

{
  int in_D0;
  int iVar1;
  int iVar2;
  int in_D1;
  int unaff_A6;
  
  iVar1 = FUN_0000afb4();
  if ((iVar1 == 499) || (iVar1 == 0x1aa)) {
    iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
    if (iVar2 != 0) {
      iVar1 = FUN_0000df56(*(uint32_t*)(in_D0 + 10),s_NO_STREET_0000b962,in_D1 + 8);
      if (iVar1 == 0x1b0) {
        iVar1 = 0x1a4;
      }
    }
  }
  return iVar1;
}



int FUN_0000b170(void)

{
  int iVar1;
  int iVar2;
  char cVar3;
  int in_D1;
  int unaff_A6;
  uint8_t auStack_c6 [76];
  ushort local_7a;
  uint32_t *local_2a;
  int local_26;
  int local_22;
  uint32_t local_1e;
  uint32_t local_1a;
  uint16_t local_16;
  int local_10;
  
  local_22 = 0;
  local_26 = 0;
  local_2a = (uint32_t *)0x0;
  local_10 = in_D1;
  iVar1 = FUN_0000b0f4();
  if ((iVar1 == 499) && (iVar1 = FUN_00010138(), iVar1 == 499)) {
    local_26 = local_22 + (uint)*(ushort *)(local_10 + 8);
    local_2a = (uint32_t *)(local_22 + (uint)*(ushort *)(local_26 + 6));
    local_16 = *(uint16_t*)(local_10 + 6);
    local_1a = *local_2a;
    local_1e = local_2a[1];
    FUN_00010078();
    iVar1 = FUN_0000ce64(&local_1e,local_10,auStack_c6,0);
    if (iVar1 == 0x1b6) {
      iVar1 = 0x1a5;
    }
    else if (iVar1 == 499) {
      if (local_7a < 0x100) {
        cVar3 = (char)local_7a;
        if (cVar3 == '\0') {
          return 0x1a5;
        }
        if (cVar3 == '\x01') {
          return 0x1ab;
        }
        if (cVar3 == '\x02') {
          return 499;
        }
      }
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6400]))();
      (**(code **)(&gda->buffer[0x8000 - 0x64c6]))(iVar2 * 0x400 + 0x97);
      (**(code **)(&gda->buffer[0x8000 - 0x64c0]))();
    }
  }
  return iVar1;
}



int FUN_0000b2b0(void)

{
  int in_D0;
  int iVar1;
  int iVar2;
  int in_D1;
  int unaff_A6;
  
  iVar1 = FUN_0000b170();
  if ((iVar1 == 499) || (iVar1 == 0x1ab)) {
    iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
    if (iVar2 != 0) {
      iVar1 = FUN_0000df56(*(uint32_t*)(in_D0 + 0x12),s_NO_STREET_0000b978,in_D1 + 8);
      if (iVar1 == 0x1b0) {
        iVar1 = 0x1a6;
      }
    }
  }
  return iVar1;
}



int FUN_0000b324(void)

{
  int in_D0;
  int iVar1;
  short sVar3;
  char cVar4;
  int iVar2;
  uint32_t *in_D1;
  uint32_t *puVar5;
  uint32_t *puVar7;
  uint32_t *local_3c;
  uint8_t auStack_38 [32];
  int local_18;
  uint32_t *local_14;
  uint32_t *puVar6;
  uint32_t *puVar8;
  
  local_18 = in_D0;
  local_14 = in_D1;
  iVar1 = FUN_0000b2b0();
  if (iVar1 == 499) {
    FUN_00011a42(&LAB_000112e6);
    iVar1 = FUN_00008720(*(uint32_t*)(local_18 + 0x16),auStack_38,0,0);
    if (iVar1 == 499) {
      FUN_00011b24();
      while (cVar4 = FUN_00011b3c(), cVar4 != '\0') {
        iVar2 = FUN_000104ec();
        if (iVar2 == 0) {
          sVar3 = 0x19;
          puVar5 = local_14;
          puVar7 = local_3c;
          do {
            puVar8 = puVar7 + 1;
            puVar6 = puVar5 + 1;
            *puVar5 = *puVar7;
            sVar3 = sVar3 + -1;
            puVar5 = puVar6;
            puVar7 = puVar8;
          } while (sVar3 != -1);
          *(uint16_t*)puVar6 = *(uint16_t*)puVar8;
        }
        else {
          FUN_00011c2a();
        }
      }
      iVar2 = FUN_00011c7a();
      if (iVar2 == 0) {
        iVar1 = 0x1af;
      }
      FUN_00011c00();
    }
  }
  return iVar1;
}



uint64_t FUN_0000b40e(void)

{
  ushort *puVar1;
  char in_D0b;
  int iVar2;
  uint32_t in_D1;
  int iVar3;
  int unaff_A6;
  int local_22;
  
  iVar2 = FUN_0000e6e0();
  if ((iVar2 == 499) && (iVar2 = FUN_00010138(), iVar2 == 499)) {
    puVar1 = (ushort *)(local_22 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
    iVar2 = local_22 + (uint)*puVar1;
    for (iVar3 = 0; iVar3 < (int)(uint)puVar1[1]; iVar3 = iVar3 + 1) {
      if (in_D0b == *(char *)(iVar2 + 1)) {
        FUN_00010078();
        iVar2 = 499;
        goto LAB_0000b4b4;
      }
      iVar2 = iVar2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7298]);
    }
    FUN_00010078();
    iVar2 = 0x1a8;
  }
LAB_0000b4b4:
  return CONCAT44(iVar2,in_D1);
}



int FUN_0000b4c2(void)

{
  uint16_t uVar1;
  char *in_D0;
  int iVar2;
  uint uVar3;
  uint32_t *puVar4;
  int in_D1;
  int iVar5;
  int unaff_A6;
  
  iVar2 = FUN_0000af3c(0,0,0,0);
  if (iVar2 == 499) {
    uVar1 = *(uint16_t*)(in_D1 + 6);
    iVar2 = FUN_00010138();
    if (iVar2 == 499) {
      uVar3 = (uint)*(ushort *)(*(ushort *)(in_D1 + 8) + 6);
      iVar2 = 0x1a8;
      puVar4 = (uint32_t *)(uint)*(ushort *)(uVar3 + 0x18);
      for (iVar5 = 0; iVar5 < (int)(uint)*(ushort *)(uVar3 + 0x1a); iVar5 = iVar5 + 1) {
        if (*(char *)((int)puVar4 + 9) == *in_D0) {
          iVar2 = 499;
          *(uint16_t*)(in_D1 + 6) = uVar1;
          *(uint32_t*)(in_D1 + 2) = *puVar4;
          *(uint32_t*)(in_D1 + 8) = puVar4[1];
          break;
        }
        puVar4 = (uint32_t *)((int)puVar4 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7264]));
      }
      FUN_00010078();
    }
  }
  return iVar2;
}



int FUN_0000b5d2(void)

{
  uint16_t uVar1;
  char *in_D0;
  int iVar2;
  uint uVar3;
  uint32_t *puVar4;
  int in_D1;
  int unaff_A6;
  int local_36;
  
  iVar2 = FUN_0000b0f4();
  if (iVar2 == 499) {
    uVar1 = *(uint16_t*)(in_D1 + 6);
    iVar2 = FUN_00010138();
    if (iVar2 == 499) {
      uVar3 = (uint)*(ushort *)(*(ushort *)(in_D1 + 8) + 6);
      iVar2 = 0x1a8;
      local_36 = 0;
      puVar4 = (uint32_t *)(uint)*(ushort *)(uVar3 + 8);
      for (; local_36 < (int)(uint)*(ushort *)(uVar3 + 10); local_36 = local_36 + 1) {
        if (*(char *)((int)puVar4 + 9) == *in_D0) {
          iVar2 = 499;
          *(uint16_t*)(in_D1 + 6) = uVar1;
          *(uint32_t*)(in_D1 + 2) = *puVar4;
          *(uint32_t*)(in_D1 + 8) = puVar4[1];
          break;
        }
        puVar4 = (uint32_t *)((int)puVar4 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7264]));
      }
      FUN_00010078();
    }
  }
  return iVar2;
}



int FUN_0000b6ee(void)

{
  int iVar1;
  int iVar2;
  char cVar3;
  int in_D1;
  int unaff_A6;
  ushort local_72;
  uint32_t local_22;
  uint32_t local_1e;
  uint16_t local_1a;
  
  iVar1 = FUN_0000b5d2();
  if (iVar1 == 499) {
    local_1e = *(uint32_t*)(in_D1 + 2);
    local_1a = *(uint16_t*)(in_D1 + 6);
    local_22 = *(uint32_t*)(in_D1 + 8);
    iVar1 = FUN_0000ce64(&local_22);
    if (iVar1 == 0x1b6) {
      iVar1 = 0x1a7;
    }
    else if (iVar1 == 499) {
      if (local_72 < 0x100) {
        cVar3 = (char)local_72;
        if (cVar3 == '\0') {
          return 0x1a7;
        }
        if (cVar3 == '\x01') {
          return 0x1ac;
        }
        if (cVar3 == '\x02') {
          return 499;
        }
      }
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6400]))();
      FUN_00013358(iVar2 * 0x400 + 0x98);
      FUN_0001337e();
    }
  }
  return iVar1;
}



int FUN_0000b7cc(void)

{
  int iVar1;
  int iVar2;
  char cVar3;
  int in_D1;
  int unaff_A6;
  ushort local_76;
  uint32_t local_26;
  uint32_t local_22;
  uint16_t local_1e;
  
  iVar1 = FUN_0000b4c2();
  if (iVar1 == 499) {
    local_22 = *(uint32_t*)(in_D1 + 2);
    local_1e = *(uint16_t*)(in_D1 + 6);
    local_26 = *(uint32_t*)(in_D1 + 8);
    iVar1 = FUN_0000ce64(&local_26);
    if (iVar1 == 0x1b6) {
      iVar1 = 0x1a7;
    }
    else if (iVar1 == 499) {
      if (local_76 < 0x100) {
        cVar3 = (char)local_76;
        if (cVar3 == '\0') {
          return 0x1a7;
        }
        if (cVar3 == '\x01') {
          return 0x1ac;
        }
        if (cVar3 == '\x02') {
          return 499;
        }
      }
      iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6400]))();
      FUN_00013358(iVar2 * 0x400 + 0x99);
      FUN_0001337e();
    }
  }
  return iVar1;
}



int FUN_0000b8bc(void)

{
  int in_D0;
  int iVar1;
  int iVar2;
  int in_D1;
  int unaff_A6;
  
  iVar1 = FUN_0000b6ee();
  if ((iVar1 == 499) || (iVar1 == 0x1ac)) {
    iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))();
    if ((iVar2 == 0) && (iVar2 = (**(code **)(&gda->buffer[0x8000 - 0x64f6]))(), iVar2 == 0)) {
      return iVar1;
    }
    iVar1 = FUN_0000df56(*(uint32_t*)(in_D0 + 0x12),*(uint32_t*)(in_D0 + 0xe),in_D1 + 8);
    if (iVar1 == 0x1b0) {
      iVar1 = 0x1a6;
    }
    else if (iVar1 == 0x1b9) {
      iVar1 = 0x1a5;
    }
  }
  return iVar1;
}



void FUN_0000b998(byte param_1,code *param_2)

{
  byte bVar1;
  char cVar2;
  int in_D1;
  int iVar3;
  int unaff_A6;
  uint8_t auStack_44 [16];
  int local_34;
  uint8_t local_30 [2];
  ushort local_2e;
  
  local_34 = 0;
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_44,0);
  bVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
  local_34 = (uint)param_1 * (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a0]) +
             in_D1 + (uint)*(ushort *)(in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]) + 0xc);
  FUN_00010ee4(local_30);
  for (iVar3 = 0; iVar3 < (int)(uint)local_2e; iVar3 = iVar3 + 1) {
    if (((bVar1 & 2) == 2) || (cVar2 = FUN_0000ec1e(), cVar2 != '\0')) {
      (*param_2)();
    }
  }
  return;
}



void FUN_0000c23a(uint32_t param_1,code *param_2)

{
  byte bVar2;
  char cVar3;
  int iVar1;
  int in_D1;
  int iVar4;
  int unaff_A6;
  uint8_t auStack_3c [16];
  ushort local_2c;
  ushort local_2a;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_3c);
  bVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
  FUN_00010f40();
  iVar1 = in_D1 + (uint)local_2c;
  for (iVar4 = 0; iVar4 < (int)(uint)local_2a; iVar4 = iVar4 + 1) {
    if (((bVar2 & 2) == 2) || (cVar3 = FUN_0000f806(), cVar3 != '\0')) {
      (*param_2)(iVar1);
    }
    iVar1 = iVar1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7250]);
  }
  return;
}



void FUN_0000c2fc(uint32_t param_1,code *param_2)

{
  byte bVar2;
  char cVar3;
  int iVar1;
  int in_D1;
  int iVar4;
  int unaff_A6;
  uint8_t auStack_3c [16];
  ushort local_2c;
  ushort local_2a;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_3c);
  bVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
  FUN_00010f8c();
  iVar1 = in_D1 + (uint)local_2c;
  for (iVar4 = 0; iVar4 < (int)(uint)local_2a; iVar4 = iVar4 + 1) {
    if (((bVar2 & 2) == 2) || (cVar3 = FUN_0000f840(), cVar3 != '\0')) {
      (*param_2)(iVar1);
    }
    iVar1 = iVar1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x724c]);
  }
  return;
}



int FUN_0000c67a(ushort *param_1)

{
  ushort uVar1;
  int iVar2;
  ushort *puVar3;
  int in_D0;
  uint16_t uVar4;
  uint32_t *in_D1;
  int iVar5;
  int unaff_A6;
  int local_18;
  
  local_18 = 499;
  iVar2 = (uint)*param_1 + *(int *)(in_D0 + 6);
  puVar3 = (ushort *)((uint)*(ushort *)((int)in_D1 + 6) + *(int *)(in_D0 + 6));
  if (*puVar3 == *param_1) {
    if (puVar3[3] != 0) {
      uVar1 = puVar3[3];
LAB_0000c706:
      iVar5 = *(int *)(in_D0 + 6) + (uint)uVar1;
      goto LAB_0000c712;
    }
  }
  else if (puVar3[4] != 0) {
    uVar1 = puVar3[4];
    goto LAB_0000c706;
  }
  iVar5 = 0;
LAB_0000c712:
  if (iVar5 == 0) {
    *param_1 = *(ushort *)(iVar2 + 4 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a4]));
    uVar4 = FUN_0000fd8c();
    *(uint16_t*)(in_D1 + 1) = uVar4;
    *in_D1 = *(uint32_t*)(iVar2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a4]));
    local_18 = FUN_00010880();
    if (local_18 == 499) {
      *(uint16_t*)((int)in_D1 + 6) = *(uint16_t*)(*(int *)(in_D0 + 6) + 4 + (uint)*param_1);
    }
  }
  else {
    *(short *)((int)in_D1 + 6) = (short)iVar5 - (short)*(uint32_t*)(in_D0 + 6);
  }
  return local_18;
}



int FUN_0000c7a6(uint32_t param_1,char param_2)

{
  int in_D0;
  int iVar1;
  int in_D1;
  
  if ((param_2 == '\0') ||
     ((*(byte *)((uint)*(ushort *)(in_D1 + 6) + *(int *)(in_D0 + 6) + 0x10) & 0x70) != 0x50)) {
    while (iVar1 = FUN_0000c67a(param_1), iVar1 == 499) {
      if (param_2 == '\0') {
        return 499;
      }
      if ((*(byte *)((uint)*(ushort *)(in_D1 + 6) + *(int *)(in_D0 + 6) + 0x10) & 0x70) != 0x50) {
        return 499;
      }
    }
  }
  else {
    iVar1 = 0x1f2;
  }
  return iVar1;
}



uint64_t FUN_0000c86c(void)

{
  int in_D0;
  uint32_t in_D1;
  int unaff_A6;
  uint32_t *puVar1;
  int local_14;
  
  local_14 = 499;
  puVar1 = (uint32_t *)0x0;
  if (*(short *)(&gda->buffer[0x8000 - 0x7300]) == 0) {
LAB_0000c948:
    local_14 = 0x1b6;
  }
  else if (*(short *)(&gda->buffer[0x8000 - 0x72fa]) == 0) {
    FUN_0000fd8c();
    local_14 = FUN_00010880(puVar1,*(uint32_t*)(&gda->buffer[0x8000 - 0x7308]));
    if (((local_14 == 499) && (*(short *)(&gda->buffer[0x8000 - 0x7300]) == 1)) &&
       (puVar1 = (uint32_t *)
                 (*(int *)(&gda->buffer[0x8000 - 0x730c]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7302])),
       *(char *)((int)puVar1 + 5) == '\x01')) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *puVar1;
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7304]) = puVar1[1];
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7300]) = puVar1[2];
    }
  }
  else {
    while ((*(short *)(&gda->buffer[0x8000 - 0x72fc]) < *(short *)(&gda->buffer[0x8000 - 0x72fa]) &&
           (*(char *)(&gda->buffer[0x8000 - 0x7303]) == '\0'))) {
      FUN_0000fd8c(puVar1);
      local_14 = FUN_00010880(puVar1,*(uint32_t*)(&gda->buffer[0x8000 - 0x7308]));
      if (local_14 != 499) break;
      puVar1 = (uint32_t *)FUN_0000e040((int)*(char *)(in_D0 + *(short *)(&gda->buffer[0x8000 - 0x72fc])));
      if (puVar1 == (uint32_t *)0x0) goto LAB_0000c948;
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *puVar1;
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7304]) = puVar1[1];
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7300]) = puVar1[2];
      *(short *)(&gda->buffer[0x8000 - 0x72fc]) = *(short *)(&gda->buffer[0x8000 - 0x72fc]) + 1;
    }
  }
  return CONCAT44(local_14,in_D1);
}



int FUN_0000c98a(int param_1,char param_2)

{
  uint32_t in_D0;
  int iVar1;
  uint32_t *puVar2;
  uint16_t uVar3;
  uint8_t *in_D1;
  int unaff_A6;
  int local_20;
  int local_1c;
  
  local_20 = 0;
  while (*(short *)(&gda->buffer[0x8000 - 0x7300]) == 1) {
    FUN_0000fd8c();
    iVar1 = FUN_00010880();
    if (iVar1 != 499) {
      return iVar1;
    }
    puVar2 = (uint32_t *)((uint)*(ushort *)(&gda->buffer[0x8000 - 0x7302]) + *(int *)(&gda->buffer[0x8000 - 0x730c]));
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *puVar2;
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7304]) = puVar2[1];
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7300]) = puVar2[2];
    *(uint8_t *)(param_1 + *(short *)(&gda->buffer[0x8000 - 0x72f8])) = *(uint8_t *)(&gda->buffer[0x8000 - 0x7304]);
    *(short *)(&gda->buffer[0x8000 - 0x72f8]) = *(short *)(&gda->buffer[0x8000 - 0x72f8]) + 1;
    *(uint8_t *)(param_1 + *(short *)(&gda->buffer[0x8000 - 0x72f8])) = 0;
  }
  FUN_0000fd8c();
  iVar1 = FUN_00010880();
  if (iVar1 != 499) {
    return iVar1;
  }
  FUN_0000e0a6(param_1 + 0x4e,param_1 + 0x50);
  *in_D1 = 0;
  *(uint32_t*)(in_D1 + 2) = *(uint32_t*)(&gda->buffer[0x8000 - 0x7312]);
  *(uint16_t*)(in_D1 + 6) = *(uint16_t*)(&gda->buffer[0x8000 - 0x730e]);
  *(uint32_t*)(in_D1 + 8) = *(uint32_t*)(&gda->buffer[0x8000 - 0x7302]);
  puVar2 = (uint32_t *)FUN_0000e040(0x40);
  if (puVar2 != (uint32_t *)0x0) {
    for (local_1c = 0; local_1c < *(short *)(param_1 + 0x4e); local_1c = local_1c + 1) {
      if (*(char *)(param_1 + 0x50 + local_1c) == '@') {
        local_20 = local_1c;
        break;
      }
    }
    for (local_1c = local_20; local_1c < *(short *)(param_1 + 0x4e) + -1; local_1c = local_1c + 1) {
      *(uint8_t *)(param_1 + 0x50 + local_1c) = *(uint8_t *)(param_1 + local_1c + 0x51);
    }
    *(short *)(param_1 + 0x4e) = *(short *)(param_1 + 0x4e) + -1;
    uVar3 = FUN_0000fd8c();
    if (param_2 == '\0') {
      *(uint32_t*)(in_D1 + 2) = *puVar2;
      *(uint16_t*)(in_D1 + 6) = uVar3;
      *(uint32_t*)(in_D1 + 8) = *(uint32_t*)((int)puVar2 + 6);
    }
    iVar1 = FUN_00010880();
    if (iVar1 != 499) {
      return iVar1;
    }
    iVar1 = FUN_0000e16a(in_D0,param_1,param_2);
    if (iVar1 != 0) {
      if (iVar1 != 1) {
        *(uint16_t*)(param_1 + 0x4c) = 1;
        return 499;
      }
      *(uint16_t*)(param_1 + 0x4c) = 2;
      return 499;
    }
  }
  *(uint16_t*)(param_1 + 0x4c) = 0;
  return 499;
}



int FUN_0000cbcc(int param_1,uint8_t param_2)

{
  ushort uVar1;
  char cVar2;
  uint32_t in_D0;
  int iVar3;
  uint8_t *in_D1;
  uint uVar4;
  int iVar5;
  int unaff_A6;
  uint64_t uVar6;
  uint local_40;
  ushort *local_32;
  uint local_2e;
  uint local_2a;
  uint32_t local_26;
  uint16_t local_22;
  int local_20;
  uint32_t local_1c;
  uint8_t *local_18;
  
  local_20 = 499;
  local_1c = in_D0;
  local_18 = in_D1;
  local_22 = FUN_0000fd8c();
  local_26 = *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]);
  local_20 = FUN_00010880();
  if (local_20 == 499) {
    local_2a = *(uint *)(&gda->buffer[0x8000 - 0x7302]);
    if (*(short *)(&gda->buffer[0x8000 - 0x72fc]) < *(short *)(&gda->buffer[0x8000 - 0x72fa])) {
      FUN_0000e236(local_1c,&local_2e);
      *(uint16_t*)(&gda->buffer[0x8000 - 0x72fc]) = *(uint16_t*)(&gda->buffer[0x8000 - 0x72fa]);
      local_2a = local_2e;
    }
    local_40 = local_2a & 0xffff;
    *local_18 = 1;
    *(uint32_t*)(local_18 + 2) = *(uint32_t*)(&gda->buffer[0x8000 - 0x7312]);
    *(uint16_t*)(local_18 + 6) = *(uint16_t*)(&gda->buffer[0x8000 - 0x730e]);
    *(uint *)(local_18 + 8) = local_2a;
    if (local_40 == 0) {
      local_20 = 0x1b6;
    }
    else {
      uVar1 = *(ushort *)(*(int *)(&gda->buffer[0x8000 - 0x730c]) + (local_2a >> 0x10));
      iVar5 = *(int *)(&gda->buffer[0x8000 - 0x730c]);
      while( true ) {
        iVar3 = FUN_00013ac4();
        if (iVar3 <= *(short *)(&gda->buffer[0x8000 - 0x72fc])) break;
        local_32 = (ushort *)(*(int *)(&gda->buffer[0x8000 - 0x730c]) + (uint)local_2a._0_2_);
        cVar2 = *(char *)(iVar5 + (uint)uVar1 + (int)*(short *)(&gda->buffer[0x8000 - 0x72fc]));
        uVar4 = 1;
        while (((int)uVar4 < (int)local_40 &&
               (local_32 = (ushort *)((int)local_32 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x726a])),
               cVar2 == *(char *)(*(int *)(&gda->buffer[0x8000 - 0x730c]) + (uint)*local_32 +
                                 (int)*(short *)(&gda->buffer[0x8000 - 0x72fc]))))) {
          uVar4 = uVar4 + 1;
        }
        if (uVar4 != local_40) break;
        *(char *)(param_1 + *(short *)(&gda->buffer[0x8000 - 0x72f8])) = cVar2;
        *(short *)(&gda->buffer[0x8000 - 0x72f8]) = *(short *)(&gda->buffer[0x8000 - 0x72f8]) + 1;
        *(uint8_t *)(param_1 + *(short *)(&gda->buffer[0x8000 - 0x72f8])) = 0;
        *(short *)(&gda->buffer[0x8000 - 0x72fc]) = *(short *)(&gda->buffer[0x8000 - 0x72fc]) + 1;
      }
      iVar5 = 0;
      local_32 = (ushort *)(*(int *)(&gda->buffer[0x8000 - 0x730c]) + (uint)local_2a._0_2_);
      while ((iVar5 < (int)local_40 &&
             (uVar6 = FUN_00013ac4(), (int)((ulonglong)uVar6 >> 0x20) <= (int)uVar6))) {
        iVar5 = iVar5 + 1;
        local_32 = (ushort *)((int)local_32 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x726a]));
      }
      for (; iVar5 < (int)local_40; iVar5 = iVar5 + 1) {
        cVar2 = *(char *)(*(int *)(&gda->buffer[0x8000 - 0x730c]) + (uint)*local_32 +
                         (int)*(short *)(&gda->buffer[0x8000 - 0x72fc]));
        for (iVar3 = 0;
            (iVar3 < *(short *)(param_1 + 0x4e) && (cVar2 != *(char *)(param_1 + 0x50 + iVar3)));
            iVar3 = iVar3 + 1) {
        }
        if (*(short *)(param_1 + 0x4e) == iVar3) {
          *(char *)(param_1 + 0x50 + (int)*(short *)(param_1 + 0x4e)) = cVar2;
          *(short *)(param_1 + 0x4e) = *(short *)(param_1 + 0x4e) + 1;
        }
        local_32 = (ushort *)((int)local_32 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x726a]));
      }
      iVar5 = FUN_0000e16a(local_1c,param_1,param_2);
      if (iVar5 == 0) {
        *(uint16_t*)(param_1 + 0x4c) = 0;
      }
      else if (iVar5 == 1) {
        *(uint16_t*)(param_1 + 0x4c) = 2;
      }
      else {
        *(uint16_t*)(param_1 + 0x4c) = 1;
      }
    }
  }
  return local_20;
}



int FUN_0000ce64(uint32_t *param_1,uint32_t param_2,uint8_t *param_3,uint8_t param_4)

{
  uint16_t uVar2;
  int iVar1;
  uint32_t *in_D1;
  int unaff_A6;
  int local_14;
  
  *param_3 = 0;
  *(uint16_t*)(param_3 + 0x4c) = 0;
  *(uint16_t*)(param_3 + 0x4e) = 0;
  param_3[0x50] = 0;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72f8]) = 0;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72fc]) = 0;
  uVar2 = FUN_00013ac4();
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72fa]) = uVar2;
  if (*(short *)((int)param_1 + 2) == 0) {
    local_14 = 0x1b6;
  }
  else {
    local_14 = FUN_00010828();
    if (local_14 == 499) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *in_D1;
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7302]) = *param_1;
      *(uint8_t *)(&gda->buffer[0x8000 - 0x7303]) = 0;
      local_14 = FUN_0000c86c();
      if (local_14 == 499) {
        if (*(short *)(&gda->buffer[0x8000 - 0x7300]) == 0) {
          local_14 = 0x1b6;
        }
        else if (*(char *)(&gda->buffer[0x8000 - 0x7303]) == '\0') {
          local_14 = FUN_0000c98a(param_3,param_4);
        }
        else if (*(char *)(&gda->buffer[0x8000 - 0x7303]) == '\x01') {
          local_14 = FUN_0000cbcc(param_3,param_4);
        }
        else {
          iVar1 = FUN_0001439e();
          FUN_00013358(iVar1 * 0x400 + 0x8c);
          FUN_0001337e();
          local_14 = 0x1f2;
        }
      }
      FUN_0001091e();
    }
  }
  return local_14;
}



uint64_t FUN_0000cf92(void)

{
  uint32_t *in_D0;
  uint16_t uVar1;
  uint32_t in_D1;
  uint32_t *puVar2;
  int unaff_A6;
  int local_14;
  
  local_14 = 499;
  while (*(char *)(&gda->buffer[0x8000 - 0x7303]) == '\0') {
    uVar1 = FUN_0000fd8c();
    *(uint16_t*)(in_D0 + 1) = uVar1;
    *in_D0 = *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]);
    local_14 = FUN_00010880();
    if (local_14 != 499) goto LAB_0000d010;
    puVar2 = (uint32_t *)((uint)*(ushort *)(&gda->buffer[0x8000 - 0x7302]) + *(int *)(&gda->buffer[0x8000 - 0x730c]));
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *puVar2;
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7304]) = puVar2[1];
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7300]) = puVar2[2];
  }
  *in_D0 = *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]);
  uVar1 = FUN_0000fd8c();
  *(uint16_t*)(in_D0 + 1) = uVar1;
  *(uint16_t*)((int)in_D0 + 6) = *(uint16_t*)(&gda->buffer[0x8000 - 0x7302]);
LAB_0000d010:
  return CONCAT44(local_14,in_D1);
}



int FUN_0000d01e(void)

{
  uint32_t *in_D0;
  int iVar1;
  uint32_t *in_D1;
  int unaff_A6;
  
  if (*(short *)((int)in_D1 + 2) == 0) {
    iVar1 = 0x1b6;
  }
  else {
    iVar1 = FUN_00010828();
    if (iVar1 == 499) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *in_D0;
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7302]) = *in_D1;
      *(uint8_t *)(&gda->buffer[0x8000 - 0x7303]) = 0;
      iVar1 = FUN_0000cf92();
      FUN_0001091e();
    }
  }
  return iVar1;
}



uint64_t FUN_0000d08e(void)

{
  uint32_t *in_D0;
  uint16_t uVar2;
  int iVar1;
  uint32_t in_D1;
  uint32_t *puVar3;
  int unaff_A6;
  uint32_t uVar4;
  
  uVar4 = 0;
  while (*(char *)(&gda->buffer[0x8000 - 0x7303]) == '\0') {
    uVar2 = FUN_0000fd8c(uVar4,499);
    *(uint16_t*)(in_D0 + 1) = uVar2;
    *in_D0 = *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]);
    iVar1 = FUN_00010880();
    if (iVar1 != 499) goto LAB_0000d172;
    puVar3 = (uint32_t *)
             ((uint)*(ushort *)(&gda->buffer[0x8000 - 0x7302]) +
              (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7272]) * (*(ushort *)(&gda->buffer[0x8000 - 0x7300]) - 1) +
             *(int *)(&gda->buffer[0x8000 - 0x730c]));
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *puVar3;
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7304]) = puVar3[1];
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7300]) = puVar3[2];
  }
  *in_D0 = *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]);
  uVar2 = FUN_0000fd8c(uVar4,499);
  *(uint16_t*)(in_D0 + 1) = uVar2;
  iVar1 = FUN_00010880();
  if (iVar1 == 499) {
    *(short *)((int)in_D0 + 6) =
         ((short)*(uint32_t*)(&gda->buffer[0x8000 - 0x730c]) +
         *(short *)(&gda->buffer[0x8000 - 0x7302]) +
         *(short *)(&gda->buffer[0x8000 - 0x726a]) * (*(short *)(&gda->buffer[0x8000 - 0x7300]) + -1)) -
         (short)*(uint32_t*)(&gda->buffer[0x8000 - 0x730c]);
  }
  else {
    FUN_0001091e();
  }
LAB_0000d172:
  return CONCAT44(iVar1,in_D1);
}



int FUN_0000d182(void)

{
  uint32_t *in_D0;
  int iVar1;
  uint32_t *in_D1;
  int unaff_A6;
  
  if (*(short *)((int)in_D1 + 2) == 0) {
    iVar1 = 0x1b6;
  }
  else {
    iVar1 = FUN_00010828();
    if (iVar1 == 499) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *in_D0;
      *(uint32_t*)(&gda->buffer[0x8000 - 0x7302]) = *in_D1;
      *(uint8_t *)(&gda->buffer[0x8000 - 0x7303]) = 0;
      iVar1 = FUN_0000d08e();
      FUN_0001091e();
    }
  }
  return iVar1;
}



int FUN_0000d1f2(uint32_t param_1,uint32_t *param_2)

{
  uint32_t *in_D0;
  uint16_t uVar2;
  int iVar1;
  uint32_t *in_D1;
  int unaff_A6;
  int local_14;
  
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72fc]) = 0;
  uVar2 = FUN_00013ac4(0);
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72fa]) = uVar2;
  iVar1 = FUN_00010828();
  if (iVar1 != 499) {
    return iVar1;
  }
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]) = *in_D0;
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7302]) = *in_D1;
  *(uint8_t *)(&gda->buffer[0x8000 - 0x7303]) = 0;
  local_14 = FUN_0000c86c();
  if (local_14 == 499) {
    if (*(char *)(&gda->buffer[0x8000 - 0x7303]) == '\0') {
      local_14 = FUN_0000cf92();
    }
    else {
      *param_2 = *(uint32_t*)(&gda->buffer[0x8000 - 0x7308]);
      uVar2 = FUN_0000fd8c();
      *(uint16_t*)(param_2 + 1) = uVar2;
      iVar1 = FUN_00010880();
      if (iVar1 != 499) {
        return iVar1;
      }
      iVar1 = FUN_0000e328(param_1);
      if (iVar1 == 0) {
        FUN_0001091e();
        return 0x1b6;
      }
      *(short *)((int)param_2 + 6) = (short)iVar1 - (short)*(uint32_t*)(&gda->buffer[0x8000 - 0x730c]);
      local_14 = 499;
    }
  }
  FUN_0001091e();
  return local_14;
}



void FUN_0000d2f2(int *param_1)

{
  int *in_D0;
  byte bVar1;
  int *in_D1;
  int unaff_A6;
  
  bVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
  if ((bVar1 & 8) == 8) {
    FUN_000138da();
  }
  *param_1 = *in_D0;
  param_1[1] = in_D0[1];
  param_1[2] = in_D0[2];
  param_1[3] = in_D0[3];
  if (*in_D0 < *in_D1) {
    *param_1 = *in_D1;
  }
  if (in_D0[1] < in_D1[1]) {
    param_1[1] = in_D1[1];
  }
  if (in_D1[2] < in_D0[2]) {
    param_1[2] = in_D1[2];
  }
  if (in_D1[3] < in_D0[3]) {
    param_1[3] = in_D1[3];
  }
  return;
}



void FUN_0000d378(int param_1,int param_2,uint32_t param_3,int *param_4,int *param_5,int *param_6,
                 int *param_7)

{
  int in_D1;
  int unaff_A6;
  uint64_t uVar1;
  
  (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
  uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
  *param_4 = (((int)((ulonglong)uVar1 >> 0x20) - (int)uVar1) + -1) / in_D1;
  (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
  uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
  *param_5 = (((int)((ulonglong)uVar1 >> 0x20) - (int)uVar1) + -1) / in_D1;
  (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
  uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
  *param_6 = ((int)((ulonglong)uVar1 >> 0x20) - (int)uVar1) / in_D1;
  (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
  uVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
  *param_7 = ((int)((ulonglong)uVar1 >> 0x20) - (int)uVar1) / in_D1;
  if (*param_4 < 0) {
    *param_4 = 0;
  }
  if (*param_5 < 0) {
    *param_5 = 0;
  }
  if (param_2 + -1 < *param_6) {
    *param_6 = param_2 + -1;
  }
  if (param_1 + -1 < *param_7) {
    *param_7 = param_1 + -1;
  }
  return;
}



int FUN_0000d45a(uint32_t param_1,char param_2)

{
  uint32_t in_D0;
  char cVar2;
  int iVar1;
  int iVar3;
  int iVar4;
  int unaff_A6;
  uint64_t uVar5;
  int iVar6;
  uint8_t auStack_94 [8];
  ushort *local_8c;
  ushort *local_88;
  int local_84;
  int local_80;
  int local_7c;
  int local_78;
  int local_74;
  int local_70;
  int local_6c;
  int local_68;
  int local_64;
  int local_60;
  int local_5c;
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_30;
  uint32_t local_2c;
  
  local_4c = 0;
  local_50 = 0;
  local_88 = (ushort *)0x0;
  local_8c = (ushort *)0x0;
  iVar6 = 0;
  local_2c = in_D0;
  local_30 = FUN_0000e8e2(0,0,0);
  if (local_30 == 499) {
    FUN_0000fd8c();
    local_30 = FUN_00010138();
    if (local_30 == 499) {
      if ((param_2 == '\0') && (cVar2 = FUN_00011ace(), cVar2 == '\0')) {
LAB_0000d842:
        FUN_00010078();
        local_30 = 0x1f2;
      }
      else {
        local_54 = *(int *)(local_4c +
                           (uint)*(ushort *)(&gda->buffer[0x8000 - 0x727c]) +
                           (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
        (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        uVar5 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        local_58 = ((int)((ulonglong)uVar5 >> 0x20) - (int)uVar5) / local_54;
        FUN_0000d378(local_58,local_58,local_2c,&local_60,&local_64,&local_68,&local_6c);
        local_88 = (ushort *)(local_4c + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
        for (local_70 = local_60; local_70 <= local_68; local_70 = local_70 + 1) {
          for (local_74 = local_64; local_74 <= local_6c; local_74 = local_74 + 1) {
            iVar1 = -(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]);
            iVar3 = iVar1 + 0x4000;
            if (0x4000 < *(ushort *)(&gda->buffer[0x8000 - 0x7282])) {
              iVar3 = iVar1 + 0x4003;
            }
            iVar1 = (local_58 * local_70 + local_74 + 1) / (iVar3 >> 2);
            iVar4 = -(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]);
            iVar3 = iVar4 + 0x4000;
            if (0x4000 < *(ushort *)(&gda->buffer[0x8000 - 0x7282])) {
              iVar3 = iVar4 + 0x4003;
            }
            iVar3 = (local_58 * local_70 + local_74 + 1) % (iVar3 >> 2);
            if (iVar3 == 0) {
              iVar4 = -(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]);
              iVar3 = iVar4 + 0x4000;
              if (0x4000 < *(ushort *)(&gda->buffer[0x8000 - 0x7282])) {
                iVar3 = iVar4 + 0x4003;
              }
              iVar3 = iVar3 >> 2;
              iVar1 = iVar1 + -1;
            }
            if (iVar6 != iVar1) {
              FUN_00010078();
              local_30 = FUN_00010138();
              if (local_30 != 499) {
                return local_30;
              }
              if ((param_2 == '\0') && (cVar2 = FUN_00011ace(), cVar2 == '\0')) goto LAB_0000d842;
              local_88 = (ushort *)(local_4c + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
              iVar6 = iVar1;
            }
            if (*(int *)(local_4c + (uint)*local_88 +
                        (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7280]) * (iVar3 + -1)) != 0) {
              if (param_2 == '\0') {
                cVar2 = FUN_00011ace();
                if (cVar2 == '\0') goto LAB_0000d842;
              }
              else {
                local_30 = FUN_00010138();
                if (local_30 != 499) goto LAB_0000d890;
                (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_94);
                (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
                (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
                local_5c = *(int *)(local_50 +
                                   (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7276]) +
                                   (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
                iVar1 = local_54 / local_5c;
                FUN_0000d378(iVar1,iVar1,local_2c,&local_78,&local_7c,&local_80,&local_84);
                local_8c = (ushort *)(local_50 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
                for (iVar3 = local_78; iVar4 = local_7c, iVar3 <= local_80; iVar3 = iVar3 + 1) {
                  for (; iVar4 <= local_84; iVar4 = iVar4 + 1) {
                    if ((*(short *)(local_50 + (uint)*local_8c + (iVar1 * iVar3 + iVar4) * 2) != 0)
                       && (cVar2 = FUN_00011ace(), cVar2 == '\0')) {
                      FUN_00010078();
                      goto LAB_0000d842;
                    }
                  }
                }
                FUN_00010078();
              }
            }
          }
        }
LAB_0000d890:
        FUN_00010078();
      }
    }
  }
  return local_30;
}



int FUN_0000d9dc(void)

{
  int *piVar1;
  uint32_t *in_D0;
  int iVar2;
  uint16_t uVar4;
  int iVar3;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int unaff_A6;
  uint64_t uVar9;
  int iVar10;
  int iVar11;
  uint8_t auStack_94 [8];
  uint32_t local_8c;
  uint32_t local_88;
  uint32_t local_84;
  uint32_t local_80;
  uint8_t auStack_7c [8];
  int local_74;
  int local_70;
  uint16_t local_6c;
  ushort *local_6a;
  int local_66;
  int local_62;
  int local_5e;
  int local_5a;
  int local_56;
  int local_52;
  int local_4e;
  uint local_4a;
  uint16_t local_46;
  uint local_44;
  
  local_4e = 0;
  local_6a = (ushort *)0x0;
  local_74 = 0;
  iVar10 = 0;
  iVar2 = FUN_0000e8e2(0,0,0);
  if (iVar2 == 499) {
    local_4a = local_44;
    uVar4 = FUN_0000fd8c();
    local_46 = uVar4;
    iVar2 = FUN_00010138();
    if (iVar2 == 499) {
      local_52 = *(int *)(local_4e +
                         (uint)*(ushort *)(&gda->buffer[0x8000 - 0x727c]) +
                         (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
      uVar9 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
      local_56 = ((int)((ulonglong)uVar9 >> 0x20) - (int)uVar9) / local_52;
      FUN_0000d378(local_56,local_56);
      local_6a = (ushort *)(local_4e + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      local_8c = *in_D0;
      local_88 = in_D0[1];
      local_84 = in_D0[2];
      local_80 = in_D0[3];
      iVar2 = local_52;
      for (iVar7 = local_5a; iVar8 = local_5e, iVar7 <= local_62; iVar7 = iVar7 + 1) {
        for (; iVar8 <= local_66; iVar8 = iVar8 + 1) {
          iVar3 = -(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]);
          iVar5 = iVar3 + 0x4000;
          if (0x4000 < *(ushort *)(&gda->buffer[0x8000 - 0x7282])) {
            iVar5 = iVar3 + 0x4003;
          }
          iVar3 = (local_56 * iVar7 + iVar8 + 1) / (iVar5 >> 2);
          iVar6 = -(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]);
          iVar5 = iVar6 + 0x4000;
          if (0x4000 < *(ushort *)(&gda->buffer[0x8000 - 0x7282])) {
            iVar5 = iVar6 + 0x4003;
          }
          iVar5 = (local_56 * iVar7 + iVar8 + 1) % (iVar5 >> 2);
          if (iVar5 == 0) {
            iVar6 = -(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]);
            iVar5 = iVar6 + 0x4000;
            if (0x4000 < *(ushort *)(&gda->buffer[0x8000 - 0x7282])) {
              iVar5 = iVar6 + 0x4003;
            }
            iVar5 = iVar5 >> 2;
            iVar3 = iVar3 + -1;
          }
          if (iVar10 != iVar3) {
            iVar11 = iVar3;
            FUN_00010078();
            local_4a = local_44 + iVar11 * 0x800;
            iVar6 = -(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]);
            iVar10 = iVar6 + 0x4000;
            if (0x4000 < *(ushort *)(&gda->buffer[0x8000 - 0x7282])) {
              iVar10 = iVar6 + 0x4003;
            }
            if ((local_56 * local_56) / (iVar10 >> 2) == iVar11) {
              iVar6 = -(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]);
              iVar10 = iVar6 + 0x4000;
              if (0x4000 < *(ushort *)(&gda->buffer[0x8000 - 0x7282])) {
                iVar10 = iVar6 + 0x4003;
              }
              iVar10 = (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7282]) +
                       ((local_56 * local_56) % (iVar10 >> 2)) * 4;
              iVar6 = iVar10 + -1;
              if (iVar10 < 1) {
                iVar6 = iVar10 + 0x7fe;
              }
              local_4a = (local_4a & 0xffffff00) + (iVar6 >> 0xb) + 1;
            }
            local_46 = uVar4;
            iVar10 = FUN_00010138();
            if (iVar10 != 499) {
              return iVar10;
            }
            local_6a = (ushort *)(local_4e + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
            iVar10 = iVar3;
          }
          piVar1 = (int *)(local_4e + (uint)*local_6a +
                          (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7280]) * (iVar5 + -1));
          (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_7c);
          (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
          (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
          (**(code **)(&gda->buffer[0x8000 - 0x6f86]))(&local_8c);
          (**(code **)(&gda->buffer[0x8000 - 0x6f62]))(auStack_7c);
          (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
          (**(code **)(&gda->buffer[0x8000 - 0x6f7a]))();
          (**(code **)(&gda->buffer[0x8000 - 0x6f86]))(&local_8c);
          if (*piVar1 != 0) {
            local_70 = *piVar1;
            local_6c = FUN_0000fd8c();
            iVar5 = FUN_00010138();
            if (iVar5 != 499) {
              FUN_00010078();
              return iVar5;
            }
            if (*(int *)(local_74 +
                        (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7276]) +
                        (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) < iVar2) {
              iVar2 = *(int *)(local_74 +
                              (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7276]) +
                              (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
            }
            FUN_00010078();
          }
        }
      }
      FUN_00010078();
      (**(code **)(&gda->buffer[0x8000 - 0x6f76]))(auStack_94);
      (**(code **)(&gda->buffer[0x8000 - 0x6f7e]))();
      FUN_0000d2f2();
      iVar2 = 499;
    }
  }
  return iVar2;
}



uint32_t FUN_0000ddf2(void)

{
  int in_D0;
  int iVar1;
  int in_D1;
  char in_stack_00000013;
  char *pcVar2;
  uint32_t uVar3;
  char *pcVar4;
  uint32_t uVar5;
  
  uVar5 = 0;
  uVar3 = 0;
  pcVar2 = (char *)0x0;
  if (in_stack_00000013 == '\x01') {
    iVar1 = FUN_000104ec();
  }
  else {
    iVar1 = FUN_00013a50(0,0,0);
  }
  if (iVar1 == 0) {
    iVar1 = FUN_00013a50(pcVar2,uVar3,uVar5);
    if ((iVar1 != 0) || (iVar1 = FUN_00013a50(pcVar2,uVar3,uVar5), iVar1 != 0)) {
      iVar1 = FUN_00013a50(pcVar2,uVar3,uVar5);
      if (iVar1 != 0) {
        iVar1 = in_D0 + (uint)*(ushort *)(in_D1 + 6);
        if (*(short *)(iVar1 + 0xe) == 0) {
          pcVar2 = s_NO_STREET_0000e65c + 10;
        }
        else {
          pcVar2 = (char *)(in_D0 + (uint)*(ushort *)(iVar1 + 0xe));
        }
        if (in_stack_00000013 == '\x01') {
          iVar1 = FUN_000104ec();
        }
        else {
          iVar1 = FUN_00013a50(pcVar2);
        }
        if (iVar1 != 0) {
          return 0x1b9;
        }
      }
      if (*(short *)(in_D1 + 4) == 0) {
        pcVar4 = s_NO_STREET_0000e65c + 0xb;
      }
      else {
        pcVar4 = (char *)(in_D0 + (uint)*(ushort *)(in_D1 + 4));
      }
      if (in_stack_00000013 == '\x01') {
        iVar1 = FUN_000104ec();
      }
      else {
        iVar1 = FUN_00013a50(pcVar2,pcVar4);
      }
      if (iVar1 != 0) {
        return 0x1b0;
      }
    }
    uVar3 = 499;
  }
  else {
    uVar3 = 0x1b6;
  }
  return uVar3;
}



int FUN_0000df56(uint32_t param_1,uint32_t param_2,short *param_3)

{
  int in_D0;
  int iVar1;
  short sVar2;
  uint32_t in_D1;
  int iVar3;
  int unaff_A6;
  uint32_t local_1c;
  
  local_1c = FUN_00010138();
  if (local_1c == 499) {
    local_1c = 0x1f2;
    sVar2 = *(short *)(in_D0 + 8);
    for (iVar3 = 0; iVar3 < (int)(uint)*(ushort *)(in_D0 + 10); iVar3 = iVar3 + 1) {
      iVar1 = FUN_0000ddf2(in_D1,param_1,param_2,0);
      if (iVar1 == 499) {
        local_1c = 499;
        *param_3 = sVar2;
        break;
      }
      if ((iVar1 == 0x1b9) && (local_1c != 0x1b0)) {
        local_1c = 0x1b9;
      }
      if (iVar1 == 0x1b0) {
        local_1c = 0x1b0;
      }
      sVar2 = sVar2 + *(short *)(&gda->buffer[0x8000 - 0x726a]);
    }
    FUN_00010078();
  }
  return local_1c;
}



int FUN_0000e040(byte param_1)

{
  int in_D0;
  int iVar1;
  ushort *in_D1;
  int iVar2;
  int unaff_A6;
  
  iVar2 = 0;
  iVar1 = in_D0 + (uint)*in_D1;
  while( true ) {
    if ((int)(uint)in_D1[1] <= iVar2) {
      return 0;
    }
    if (*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*(byte *)(iVar1 + 4)) ==
        *(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)param_1)) break;
    iVar2 = iVar2 + 1;
    iVar1 = iVar1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7272]);
  }
  return iVar1;
}



void FUN_0000e0a6(ushort *param_1,int param_2)

{
  int in_D0;
  int iVar1;
  ushort *in_D1;
  int iVar2;
  int unaff_A6;
  
  *param_1 = in_D1[1];
  iVar1 = in_D0 + (uint)*in_D1;
  for (iVar2 = 0; iVar2 < (short)*param_1; iVar2 = iVar2 + 1) {
    *(uint8_t *)(param_2 + iVar2) = *(uint8_t *)(iVar1 + 4);
    iVar1 = iVar1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7272]);
  }
  *(uint8_t *)(param_2 + iVar2) = 0;
  return;
}



uint32_t FUN_0000e0fe(int param_1,char param_2)

{
  int iVar1;
  
  if (param_2 == '\x01') {
    iVar1 = FUN_00013ac4();
    iVar1 = FUN_0001054c(iVar1,iVar1,iVar1 + param_1);
    if (iVar1 != 0) {
      return 0;
    }
    iVar1 = FUN_00013a50();
  }
  else {
    iVar1 = FUN_00013a50();
  }
  if (iVar1 != 0) {
    return 0;
  }
  return 1;
}



int FUN_0000e16a(uint32_t param_1,uint32_t param_2,uint8_t param_3)

{
  bool bVar1;
  int in_D0;
  ushort *puVar2;
  char cVar3;
  ushort *in_D1;
  int iVar4;
  int unaff_A6;
  int local_20;
  
  bVar1 = false;
  iVar4 = 0;
  puVar2 = (ushort *)(in_D0 + (uint)*in_D1);
  while ((iVar4 < (int)(uint)in_D1[1] && (!bVar1))) {
    cVar3 = FUN_0000e0fe(in_D0 + (uint)*puVar2,param_3);
    if (cVar3 != '\0') {
      bVar1 = true;
      local_20 = 1;
    }
    iVar4 = iVar4 + 1;
    puVar2 = (ushort *)((int)puVar2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x726a]));
  }
  if (bVar1) {
    bVar1 = false;
    while ((iVar4 < (int)(uint)in_D1[1] && (!bVar1))) {
      cVar3 = FUN_0000e0fe(in_D0 + (uint)*puVar2,param_3);
      if (cVar3 == '\0') {
        bVar1 = true;
      }
      else {
        local_20 = local_20 + 1;
      }
      iVar4 = iVar4 + 1;
      puVar2 = (ushort *)((int)puVar2 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x726a]));
    }
  }
  else {
    local_20 = 0;
  }
  return local_20;
}



void FUN_0000e236(uint32_t param_1,short *param_2)

{
  bool bVar1;
  short in_D0w;
  uint32_t uVar2;
  short sVar4;
  int iVar3;
  short *in_D1;
  int iVar5;
  int unaff_A6;
  
  uVar2 = FUN_00013ac4();
  bVar1 = false;
  iVar5 = 0;
  sVar4 = in_D0w + *in_D1;
  while ((iVar5 < (int)(uint)(ushort)in_D1[1] && (!bVar1))) {
    iVar3 = FUN_0001054c(uVar2);
    if (iVar3 == 0) {
      bVar1 = true;
      param_2[1] = 1;
      *param_2 = sVar4 - in_D0w;
    }
    iVar5 = iVar5 + 1;
    sVar4 = sVar4 + *(short *)(&gda->buffer[0x8000 - 0x726a]);
  }
  if (bVar1) {
    bVar1 = false;
    while ((iVar5 < (int)(uint)(ushort)in_D1[1] && (!bVar1))) {
      iVar3 = FUN_0001054c(uVar2);
      if (iVar3 == 0) {
        param_2[1] = param_2[1] + 1;
      }
      else {
        bVar1 = true;
      }
      iVar5 = iVar5 + 1;
    }
  }
  else {
    *param_2 = 0;
    param_2[1] = 0;
  }
  return;
}



int FUN_0000e328(void)

{
  int in_D0;
  uint32_t uVar1;
  int iVar2;
  int iVar3;
  ushort *in_D1;
  int iVar4;
  int unaff_A6;
  
  uVar1 = FUN_00013ac4();
  iVar4 = 0;
  iVar3 = in_D0 + (uint)*in_D1;
  while( true ) {
    if ((int)(uint)in_D1[1] <= iVar4) {
      return 0;
    }
    iVar2 = FUN_0001054c(uVar1);
    if (iVar2 == 0) break;
    iVar4 = iVar4 + 1;
    iVar3 = iVar3 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x726a]);
  }
  return iVar3;
}



int FUN_0000e668(void)

{
  uint32_t *in_D0;
  int iVar1;
  uint16_t uVar2;
  uint32_t *in_D1;
  int local_1c;
  
  FUN_0000fd8c();
  iVar1 = FUN_00010138(8);
  if (iVar1 == 499) {
    FUN_0001040e();
    uVar2 = FUN_0000fd8c();
    *(uint16_t*)(in_D0 + 1) = uVar2;
    *in_D0 = *(uint32_t*)(local_1c + 0xc);
    *in_D1 = *(uint32_t*)(local_1c + 0x10);
    FUN_00010078();
  }
  return iVar1;
}



int FUN_0000e6e0(void)

{
  ushort uVar1;
  ushort uVar2;
  int in_D0;
  int iVar3;
  uint16_t uVar4;
  uint32_t *in_D1;
  int unaff_A6;
  int local_1c;
  
  FUN_0000fd8c();
  iVar3 = FUN_00010138(8);
  if (iVar3 == 499) {
    FUN_0001040e();
    if ((int)(uint)*(ushort *)(local_1c + 10) < in_D0) {
      iVar3 = 0x1b3;
    }
    else {
      uVar2 = *(ushort *)(&gda->buffer[0x8000 - 0x7288]);
      uVar1 = *(ushort *)(local_1c + 8);
      uVar4 = FUN_0000fd8c();
      *(uint16_t*)(in_D1 + 1) = uVar4;
      *in_D1 = *(uint32_t*)(local_1c + (uint)uVar1 + (uint)uVar2 * (in_D0 + -1));
      FUN_00010078();
    }
  }
  return iVar3;
}



int FUN_0000e8e2(void)

{
  uint8_t in_D0b;
  short sVar1;
  uint32_t *in_D1;
  uint32_t *puVar2;
  int unaff_A6;
  int local_2a;
  int local_20;
  
  local_20 = FUN_0000e6e0();
  if ((local_20 == 499) && (local_20 = FUN_00010138(), local_20 == 499)) {
    switch(in_D0b) {
    case 0:
      sVar1 = 5;
      puVar2 = (uint32_t *)
               (local_2a +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7290]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      do {
        *in_D1 = *puVar2;
        sVar1 = sVar1 + -1;
        puVar2 = puVar2 + 1;
        in_D1 = in_D1 + 1;
      } while (sVar1 != -1);
      break;
    case 1:
      sVar1 = 5;
      puVar2 = (uint32_t *)
               ((uint)*(ushort *)(&gda->buffer[0x8000 - 0x7290]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]) +
                local_2a + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7294]) * 2);
      do {
        *in_D1 = *puVar2;
        sVar1 = sVar1 + -1;
        puVar2 = puVar2 + 1;
        in_D1 = in_D1 + 1;
      } while (sVar1 != -1);
      break;
    case 2:
      sVar1 = 5;
      puVar2 = (uint32_t *)
               (local_2a +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7294]) * 3 +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7290]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      do {
        *in_D1 = *puVar2;
        sVar1 = sVar1 + -1;
        puVar2 = puVar2 + 1;
        in_D1 = in_D1 + 1;
      } while (sVar1 != -1);
      break;
    case 3:
      sVar1 = 5;
      puVar2 = (uint32_t *)
               ((uint)*(ushort *)(&gda->buffer[0x8000 - 0x7290]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]) +
                local_2a + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7294]) * 4);
      do {
        *in_D1 = *puVar2;
        sVar1 = sVar1 + -1;
        puVar2 = puVar2 + 1;
        in_D1 = in_D1 + 1;
      } while (sVar1 != -1);
      break;
    default:
      local_20 = 0x199;
      break;
    case 6:
      sVar1 = 5;
      puVar2 = (uint32_t *)
               (local_2a +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7294]) +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7290]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      do {
        *in_D1 = *puVar2;
        sVar1 = sVar1 + -1;
        puVar2 = puVar2 + 1;
        in_D1 = in_D1 + 1;
      } while (sVar1 != -1);
      break;
    case 0x14:
      sVar1 = 5;
      puVar2 = (uint32_t *)
               (local_2a +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7294]) * 5 +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7290]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      do {
        *in_D1 = *puVar2;
        sVar1 = sVar1 + -1;
        puVar2 = puVar2 + 1;
        in_D1 = in_D1 + 1;
      } while (sVar1 != -1);
      break;
    case 0x15:
      sVar1 = 5;
      puVar2 = (uint32_t *)
               (local_2a +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7294]) * 6 +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7290]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      do {
        *in_D1 = *puVar2;
        sVar1 = sVar1 + -1;
        puVar2 = puVar2 + 1;
        in_D1 = in_D1 + 1;
      } while (sVar1 != -1);
      break;
    case 0x16:
      sVar1 = 5;
      puVar2 = (uint32_t *)
               (local_2a +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7294]) * 7 +
               (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7290]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      do {
        *in_D1 = *puVar2;
        sVar1 = sVar1 + -1;
        puVar2 = puVar2 + 1;
        in_D1 = in_D1 + 1;
      } while (sVar1 != -1);
    }
    FUN_00010078();
  }
  return local_20;
}



int FUN_0000eafe(void)

{
  int iVar1;
  int unaff_A6;
  
  iVar1 = FUN_0000e8e2();
  if (iVar1 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))();
  }
  return iVar1;
}



int FUN_0000eb4e(void)

{
  int iVar1;
  byte bVar2;
  int unaff_A6;
  
  iVar1 = FUN_0000eafe();
  if ((iVar1 == 499) && (bVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6f5a]))(), (bVar2 & 1) == 1)) {
    iVar1 = 0x1a9;
  }
  return iVar1;
}



uint32_t FUN_0000ec1e(void)

{
  int in_D0;
  byte bVar1;
  int iVar2;
  int unaff_A6;
  uint8_t auStack_54 [8];
  uint8_t auStack_4c [8];
  uint8_t auStack_44 [8];
  int local_3c;
  ushort local_38;
  ushort local_36;
  uint8_t auStack_34 [24];
  
  local_3c = 0;
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_4c);
  bVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f5a]))();
  if ((bVar1 & 1) == 1) {
    (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_54);
    bVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f5a]))();
    if ((bVar1 & 1) == 1) {
      (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_34);
      bVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
      if ((bVar1 & 4) != 4) {
        FUN_00010d66(&local_38);
        iVar2 = 0;
        local_3c = in_D0 + (uint)local_38;
        while( true ) {
          if ((int)(uint)local_36 <= iVar2) {
            return 0;
          }
          (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(auStack_44);
          (**(code **)(&gda->buffer[0x8000 - 0x6f86]))(auStack_34);
          bVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
          if ((bVar1 & 4) == 4) break;
          iVar2 = iVar2 + 1;
          local_3c = local_3c + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ac]);
        }
      }
    }
  }
  return 1;
}



bool FUN_0000ed80(void)

{
  byte bVar1;
  int unaff_A6;
  uint8_t auStack_20 [28];
  
  (**(code **)(&gda->buffer[0x8000 - 0x6f3a]))(auStack_20);
  bVar1 = (**(code **)(&gda->buffer[0x8000 - 0x6e82]))();
  return (bVar1 & 2) == 2;
}



uint64_t FUN_0000f250(void)

{
  ushort *puVar1;
  int iVar2;
  int in_D0;
  ushort uVar4;
  ushort uVar5;
  uint32_t uVar3;
  ushort in_D1w;
  int iVar6;
  int unaff_A6;
  
  iVar6 = in_D0 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]);
  puVar1 = (ushort *)(iVar6 + 0x10);
  uVar5 = *puVar1;
  if (*(short *)(in_D0 + 4) == 0) {
    uVar4 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
  }
  else {
    uVar4 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
  }
  iVar6 = (uint)uVar4 * (*(ushort *)(iVar6 + 0x12) - 1);
  uVar4 = *puVar1 + (short)iVar6;
  iVar6 = CONCAT22((short)((uint)iVar6 >> 0x10),uVar4);
  if ((uVar5 <= in_D1w) && (in_D1w <= uVar4)) {
    iVar2 = (uint)in_D1w - (uint)uVar5;
    if (*(short *)(in_D0 + 4) == 0) {
      uVar5 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
    }
    else {
      uVar5 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
    }
    iVar6 = iVar2 / (int)(uint)uVar5;
    if (iVar2 % (int)(uint)uVar5 == 0) {
      uVar3 = 1;
      goto LAB_0000f2d8;
    }
  }
  uVar3 = 0;
LAB_0000f2d8:
  return CONCAT44(uVar3,iVar6);
}



uint FUN_0000f352(void)

{
  int in_D0;
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int unaff_A6;
  uint8_t auStack_4c [16];
  uint32_t local_3c;
  uint32_t local_38;
  uint32_t local_34;
  uint32_t local_30;
  ushort local_2c;
  ushort local_2a;
  
  uVar3 = 0x7fffffff;
  FUN_00010d66(&local_2c,0);
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(&local_34);
  if (0 < (short)local_2a) {
    iVar1 = in_D0 + (uint)local_2c;
    for (iVar4 = 0; iVar4 < (int)(uint)local_2a; iVar4 = iVar4 + 1) {
      (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(&local_3c,iVar1);
      (**(code **)(&gda->buffer[0x8000 - 0x6f3a]))(auStack_4c);
      uVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6f1e]))();
      if (uVar2 <= uVar3) {
        uVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f1e]))();
      }
      local_34 = local_3c;
      local_30 = local_38;
      iVar1 = iVar1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ac]);
    }
  }
  (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(&local_3c);
  (**(code **)(&gda->buffer[0x8000 - 0x6f3a]))(auStack_4c);
  uVar2 = (**(code **)(&gda->buffer[0x8000 - 0x6f1e]))();
  if (uVar2 <= uVar3) {
    uVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f1e]))();
  }
  return uVar3;
}



int FUN_0000f510(uint32_t param_1,uint16_t *param_2,uint8_t *param_3)

{
  ushort uVar1;
  int iVar2;
  ushort in_D1w;
  ushort *puVar3;
  int unaff_A6;
  
  iVar2 = FUN_00010138(0,0,0);
  if (iVar2 == 499) {
    (**(code **)(&gda->buffer[0x8000 - 0x6f6e]))(param_1);
    puVar3 = (ushort *)(uint)*(ushort *)(in_D1w + 4);
    do {
      if ((((*(byte *)((int)puVar3 + 0x11) & 0xf) != 3) &&
          ((*(byte *)((int)puVar3 + 0x11) & 0xf) != 4)) || (*(byte *)((int)puVar3 + 0x11) >> 4 != 1)
         ) {
        *param_2 = (short)puVar3;
        if (in_D1w == *puVar3) {
          *param_3 = 1;
        }
        else {
          *param_3 = 2;
        }
        FUN_00010078();
        return 499;
      }
      if (in_D1w == *puVar3) {
        if (puVar3[3] == 0) goto LAB_0000f5ac;
        uVar1 = puVar3[3];
LAB_0000f5d0:
        puVar3 = (ushort *)(uint)uVar1;
      }
      else {
        if (puVar3[4] != 0) {
          uVar1 = puVar3[4];
          goto LAB_0000f5d0;
        }
LAB_0000f5ac:
        puVar3 = (ushort *)0x0;
      }
    } while ((puVar3 != (ushort *)(uint)*(ushort *)(in_D1w + 4)) && (puVar3 != (ushort *)0x0));
    FUN_00010078();
    iVar2 = 0x1f2;
  }
  return iVar2;
}



void FUN_0000f684(int *param_1,ushort param_2)

{
  int *in_D0;
  ushort *in_D1;
  
  *param_1 = ((uint)*in_D1 << (param_2 & 0x3f)) + *in_D0;
  param_1[1] = ((uint)in_D1[1] << (param_2 & 0x3f)) + in_D0[1];
  return;
}



uint32_t FUN_0000f6d0(void)

{
  int in_D0;
  uint16_t uVar3;
  byte bVar4;
  int iVar1;
  uint32_t *puVar2;
  ushort *in_D1;
  int iVar5;
  int unaff_A6;
  uint8_t auStack_3c [16];
  uint32_t local_2c;
  uint32_t local_28;
  ushort *local_20;
  
  iVar5 = 0;
  puVar2 = (uint32_t *)(in_D0 + (uint)*in_D1);
  local_20 = in_D1;
  do {
    if ((int)(uint)local_20[1] <= iVar5) {
      return 0;
    }
    if (*(short *)(in_D0 + 0x10 +
                  (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) ==
        0) {
      local_2c = *puVar2;
      local_28 = puVar2[1];
    }
    else {
      if (*(short *)(in_D0 + 0x12 +
                    (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]))
          == 0) {
        uVar3 = 6;
      }
      else {
        uVar3 = *(uint16_t*)
                 (in_D0 + 0x12 +
                 (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      }
      FUN_0000f684(&local_2c,uVar3);
    }
    if (iVar5 == 0) {
      bVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6f5a]))();
      if ((bVar4 & 1) != 1) {
        return 1;
      }
      (**(code **)(&gda->buffer[0x8000 - 0x6f3e]))(auStack_3c);
    }
    else {
      (**(code **)(&gda->buffer[0x8000 - 0x6f86]))(auStack_3c);
      bVar4 = (**(code **)(&gda->buffer[0x8000 - 0x6f92]))();
      if ((bVar4 & 4) == 4) {
        return 1;
      }
    }
    iVar5 = iVar5 + 1;
    if (*(short *)(in_D0 + 0x10 +
                  (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) ==
        0) {
      iVar1 = 8;
    }
    else {
      iVar1 = 4;
    }
    puVar2 = (uint32_t *)((int)puVar2 + iVar1);
  } while( true );
}



void FUN_0000f806(uint32_t param_1)

{
  uint8_t auStack_14 [16];
  
  FUN_00010fca(auStack_14);
  FUN_0000f6d0(param_1);
  return;
}



void FUN_0000f840(uint32_t param_1)

{
  uint8_t auStack_14 [16];
  
  FUN_00011026(auStack_14);
  FUN_0000f6d0(param_1);
  return;
}



uint32_t FUN_0000f87a(uint16_t *param_1,int *param_2,uint param_3)

{
  int in_D0;
  int iVar1;
  uint32_t uVar2;
  uint16_t uVar5;
  int iVar3;
  uint32_t *puVar4;
  ushort *in_D1;
  uint32_t *puVar6;
  int unaff_A6;
  uint64_t uVar7;
  longlong lVar8;
  
  iVar1 = func_0x00013996();
  *param_2 = iVar1;
  if (*param_2 == 0) {
    uVar2 = 0;
  }
  else {
    puVar6 = (uint32_t *)*param_2;
    iVar1 = 0;
    puVar4 = (uint32_t *)(in_D0 + (uint)*in_D1);
    while (iVar1 < (int)(uint)in_D1[1]) {
      if (*(short *)(in_D0 + 0x10 +
                    (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]))
          == 0) {
        *puVar6 = *puVar4;
        puVar6[1] = puVar4[1];
      }
      else {
        if (*(short *)(in_D0 + 0x12 +
                      (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]))
            == 0) {
          uVar5 = 6;
        }
        else {
          uVar5 = *(uint16_t*)
                   (in_D0 + 0x12 +
                   (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
        }
        FUN_0000f684(puVar6,uVar5);
      }
      if (iVar1 == 0) {
LAB_0000fa2a:
        puVar6 = puVar6 + 2;
      }
      else {
        iVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        if (iVar3 < 0) {
          (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        }
        else {
          (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        }
        iVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        if (iVar3 < 0) {
          uVar7 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
          uVar7 = CONCAT44(-(int)((ulonglong)uVar7 >> 0x20),(int)uVar7);
        }
        else {
          uVar7 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        }
        if ((uint)uVar7 != (uint)((ulonglong)uVar7 >> 0x20) >> (param_3 & 0x3f)) goto LAB_0000fa2a;
        iVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
        if (iVar3 < 0) {
          (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
        }
        else {
          (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
        }
        iVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
        if (iVar3 < 0) {
          uVar7 = (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
          uVar7 = CONCAT44(-(int)((ulonglong)uVar7 >> 0x20),(int)uVar7);
        }
        else {
          uVar7 = (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
        }
        if ((uint)uVar7 != (uint)((ulonglong)uVar7 >> 0x20) >> (param_3 & 0x3f)) goto LAB_0000fa2a;
        (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        lVar8 = (**(code **)(&gda->buffer[0x8000 - 0x6f62]))();
        if (lVar8 < 0) {
          iVar3 = -1;
        }
        else {
          iVar3 = 1;
        }
        if ((int)lVar8 != iVar3) goto LAB_0000fa2a;
        (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
        lVar8 = (**(code **)(&gda->buffer[0x8000 - 0x6f6a]))();
        if (lVar8 < 0) {
          iVar3 = -1;
        }
        else {
          iVar3 = 1;
        }
        if ((int)lVar8 != iVar3) goto LAB_0000fa2a;
      }
      iVar1 = iVar1 + 1;
      if (*(short *)(in_D0 + 0x10 +
                    (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]))
          == 0) {
        iVar3 = 8;
      }
      else {
        iVar3 = 4;
      }
      puVar4 = (uint32_t *)((int)puVar4 + iVar3);
    }
    iVar1 = (int)puVar6 - *param_2;
    if ((int)puVar6 < *param_2) {
      iVar1 = iVar1 + 7;
    }
    *param_1 = (short)(iVar1 >> 3);
    uVar2 = 1;
  }
  return uVar2;
}



uint FUN_0000fb04(uint32_t param_1,int param_2)

{
  int in_D0;
  uint16_t uVar4;
  int iVar1;
  uint32_t *puVar2;
  uint uVar3;
  ushort *in_D1;
  int iVar5;
  int unaff_A6;
  uint local_54;
  uint32_t local_48;
  uint32_t local_44;
  uint32_t local_40;
  uint32_t local_3c;
  uint8_t auStack_38 [24];
  
  local_54 = 0x7fffffff;
  iVar5 = 0;
  puVar2 = (uint32_t *)(in_D0 + (uint)*in_D1);
  while (iVar5 < (int)(uint)in_D1[1]) {
    if (*(short *)(in_D0 + 0x10 +
                  (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) ==
        0) {
      local_48 = *puVar2;
      local_44 = puVar2[1];
    }
    else {
      if (*(short *)(in_D0 + 0x12 +
                    (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]))
          == 0) {
        uVar4 = 6;
      }
      else {
        uVar4 = *(uint16_t*)
                 (in_D0 + 0x12 +
                 (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba]));
      }
      FUN_0000f684(&local_48,uVar4);
    }
    if ((iVar5 == 0) && (param_2 == 0)) {
      local_40 = local_48;
      local_3c = local_44;
    }
    if (0 < iVar5) {
      (**(code **)(&gda->buffer[0x8000 - 0x6f3a]))(auStack_38);
      uVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f1e]))();
      if (uVar3 < local_54) {
        local_54 = uVar3;
      }
    }
    iVar5 = iVar5 + 1;
    if (*(short *)(in_D0 + 0x10 +
                  (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) ==
        0) {
      iVar1 = 8;
    }
    else {
      iVar1 = 4;
    }
    puVar2 = (uint32_t *)((int)puVar2 + iVar1);
  }
  if (param_2 == 0) {
    (**(code **)(&gda->buffer[0x8000 - 0x6f3a]))(auStack_38);
    uVar3 = (**(code **)(&gda->buffer[0x8000 - 0x6f1e]))();
    if (uVar3 < local_54) {
      local_54 = uVar3;
    }
  }
  return local_54;
}



void FUN_0000fc6c(uint32_t param_1)

{
  uint8_t auStack_20 [16];
  
  FUN_00010fca(auStack_20);
  FUN_0000fb04(param_1,0);
  return;
}



void FUN_0000fca8(uint32_t param_1)

{
  uint8_t auStack_20 [16];
  
  FUN_00011026(auStack_20);
  FUN_0000fb04(param_1,1);
  return;
}



uint32_t FUN_0000fce6(void)

{
  uint32_t in_D0;
  uint32_t uVar1;
  
  switch(in_D0) {
  case 0:
    uVar1 = 499;
    break;
  default:
    uVar1 = 0x1f2;
    break;
  case 2:
  case 3:
    uVar1 = 0x196;
    break;
  case 4:
    uVar1 = 0x19a;
    break;
  case 5:
    uVar1 = 0x198;
    break;
  case 7:
    uVar1 = 0x193;
    break;
  case 8:
    uVar1 = 0x194;
    break;
  case 9:
    uVar1 = 0x1a0;
  }
  return uVar1;
}



uint16_t FUN_0000fd8c(void)

{
  int unaff_A6;
  
  return *(uint16_t*)(*(int *)(&gda->buffer[0x8000 - 0x72d8]) + 4);
}



uint32_t FUN_0000fda6(void)

{
  int unaff_A6;
  
  *(uint8_t *)(&gda->buffer[0x8000 - 0x6840]) = 1;
  return 499;
}



uint64_t FUN_0000ff24(void)

{
  int iVar1;
  int in_D0;
  uint32_t uVar2;
  uint32_t in_D1;
  int iVar3;
  int unaff_A6;
  int local_1e;
  uint8_t local_19;
  int local_18;
  uint32_t local_14;
  
  local_19 = 1;
  local_18 = in_D0;
  local_14 = in_D1;
  FUN_00011f02();
  iVar3 = 0;
  while (iVar1 = iVar3 + 1, iVar3 < *(int *)(*(int *)(&gda->buffer[0x8000 - 0x72d8]) + 6)) {
    FUN_00010c40(&local_1e);
    iVar3 = iVar1;
    if ((local_1e != 0) && (local_19 = 0, local_18 != 0)) {
      FUN_00010c94(0);
    }
  }
  uVar2 = FUN_00011f32();
  return CONCAT44(CONCAT31((int3)((uint)uVar2 >> 8),local_19),local_14);
}



uint32_t FUN_0000ffa4(void)

{
  uint *in_D0;
  uint32_t uVar1;
  char cVar3;
  int iVar2;
  int *in_D1;
  int iVar4;
  int unaff_A6;
  
  if (*(char *)(&gda->buffer[0x8000 - 0x6840]) == '\0') {
    uVar1 = 0x195;
  }
  else {
    FUN_00011f02();
    iVar2 = *(int *)(&gda->buffer[0x8000 - 0x72d8]) + 10;
    iVar4 = 0;
    while (iVar4 < *(int *)(*(int *)(&gda->buffer[0x8000 - 0x72d8]) + 6)) {
      if ((*(short *)(iVar2 + 0xc) == *(short *)(in_D0 + 1)) &&
         ((*in_D0 & 0xffffff00) == (*(uint *)(iVar2 + 8) & 0xffffff00))) {
        *in_D1 = *(int *)(&gda->buffer[0x8000 - 0x72d4]) + *(int *)(iVar2 + 0xe);
        cVar3 = FUN_00010bba();
        if (cVar3 == '\0') {
          iVar2 = FUN_0001439e();
          FUN_00013358(iVar2 * 0x400 + 0x7b);
          FUN_0001337e();
        }
        FUN_00011f32();
        return 499;
      }
      iVar2 = iVar2 + 0x1a;
      iVar4 = iVar4 + 1;
    }
    FUN_00011f32();
    *in_D1 = 0;
    uVar1 = 0x191;
  }
  return uVar1;
}



uint64_t FUN_00010078(void)

{
  uint *in_D0;
  char cVar3;
  int iVar1;
  uint32_t uVar2;
  uint32_t in_D1;
  int iVar4;
  int unaff_A6;
  
  FUN_00011f02();
  iVar1 = *(int *)(&gda->buffer[0x8000 - 0x72d8]) + 10;
  iVar4 = 0;
  do {
    if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x72d8]) + 6) <= iVar4) {
      FUN_00011f32();
      uVar2 = 0x191;
LAB_0001012e:
      return CONCAT44(uVar2,in_D1);
    }
    if ((*(short *)(iVar1 + 0xc) == *(short *)(in_D0 + 1)) &&
       ((*in_D0 & 0xffffff00) == (*(uint *)(iVar1 + 8) & 0xffffff00))) {
      cVar3 = FUN_00010c00();
      if (cVar3 == '\0') {
        iVar1 = FUN_0001439e();
        FUN_00013358(iVar1 * 0x400 + 0x7c);
        FUN_0001337e();
        FUN_00011f32();
        uVar2 = 0x192;
      }
      else {
        FUN_00011f32();
        uVar2 = 499;
      }
      goto LAB_0001012e;
    }
    iVar1 = iVar1 + 0x1a;
    iVar4 = iVar4 + 1;
  } while( true );
}



int FUN_00010138(void)

{
  int *in_D0;
  int iVar1;
  int *in_D1;
  int unaff_A6;
  uint8_t auStack_a6 [6];
  int local_a0;
  short local_9c;
  int local_9a;
  uint32_t local_72;
  uint32_t local_6e;
  uint16_t local_6a;
  uint16_t local_68;
  int local_66;
  uint16_t local_62;
  int *local_10;
  
  if (*(char *)(&gda->buffer[0x8000 - 0x6840]) == '\0') {
    iVar1 = 0x195;
  }
  else {
    local_10 = in_D1;
    iVar1 = FUN_0000ffa4(0);
    if ((iVar1 != 0x195) && (iVar1 != 499)) {
      local_72 = 6;
      local_6e = *(uint32_t*)(&gda->buffer[0x8000 - 0x6844]);
      local_6a = 1;
      local_68 = 1;
      local_66 = *in_D0;
      local_62 = *(uint16_t*)(in_D0 + 1);
      FUN_000109ca(auStack_a6);
      if ((*(short *)(in_D0 + 1) == local_9c) && (*in_D0 == local_a0)) {
        *local_10 = local_9a + *(int *)(&gda->buffer[0x8000 - 0x72d4]);
        iVar1 = FUN_0000fce6();
      }
      else {
        iVar1 = FUN_0001439e();
        FUN_00013358(iVar1 * 0x400 + 0x7d);
        FUN_0001337e();
        iVar1 = 0x1f2;
      }
    }
  }
  return iVar1;
}



void FUN_00010276(void)

{
  int unaff_A6;
  
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72ba]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72ae]) = 0x6c;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72a2]) = 0x34;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72a8]) = 0x30;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7244]) = 6;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72a0]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72b2]) = 0x16;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72b0]) = 6;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72b4]) = 0x1c;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72a4]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72b6]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72b8]) = 0x10;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72ac]) = 6;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72a6]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72aa]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x729c]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x729e]) = 6;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x729a]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7258]) = 0x10;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7252]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7254]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7256]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x725e]) = 0x20;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x725a]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x725c]) = 0x10;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7260]) = 0x10;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x724a]) = 0x2c;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7246]) = 0x10;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7248]) = 0x14;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x724e]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7250]) = 0x10;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x724c]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7274]) = 0xc;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7270]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7272]) = 0xc;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x726e]) = 0x24;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7268]) = 0x14;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x726c]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x726a]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7284]) = 0x28;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7286]) = 0x14;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7242]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7240]) = 0x18;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7266]) = 0x1c;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7264]) = 0xc;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7262]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7282]) = 0x10;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x727c]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x727e]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7280]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x727a]) = 0x14;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7276]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7278]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7296]) = 0xcc;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7290]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7292]) = 0xc0;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7294]) = 0x18;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7298]) = 6;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x728e]) = 0x24;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x728a]) = 4;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x728c]) = 0x18;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x7288]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72c0]) = 0x10;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72be]) = 8;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72c2]) = 0xc;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x72bc]) = 0x1c;
  return;
}



void FUN_0001040e(void)

{
  int in_D0;
  int unaff_A6;
  int local_20;
  ushort *local_18;
  
  *(uint16_t*)(&gda->buffer[0x8000 - 0x683e]) = *(uint16_t*)(in_D0 + 0x1a);
  if (*(short *)(&gda->buffer[0x8000 - 0x683e]) != *(short *)(&gda->buffer[0x8000 - 0x683c])) {
    *(uint16_t*)(&gda->buffer[0x8000 - 0x683c]) = *(uint16_t*)(&gda->buffer[0x8000 - 0x683e]);
    FUN_00010276();
    if ((0x11 < *(ushort *)(&gda->buffer[0x8000 - 0x683e])) && (*(short *)(in_D0 + 0x2a) != 0)) {
      local_18 = (ushort *)(in_D0 + (uint)*(ushort *)(in_D0 + 0x28));
      for (local_20 = 0; local_20 < (int)(uint)*(ushort *)(in_D0 + 0x2a); local_20 = local_20 + 1) {
        if ((*local_18 < 0x43) &&
           (local_18[1] != *(ushort *)(&gda->buffer[0x8000 - 0x72c4] + (uint)*local_18 * 2))) {
          *(ushort *)(&gda->buffer[0x8000 - 0x72c4] + (uint)*local_18 * 2) = local_18[1];
        }
        local_18 = local_18 + 2;
      }
    }
  }
  return;
}



int FUN_000104ec(void)

{
  byte *in_D0;
  byte *in_D1;
  int unaff_A6;
  
  while( true ) {
    if (*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D0) != *(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D1)
       ) {
      return (int)(short)((short)*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D0) -
                         (short)*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D1));
    }
    if (*in_D0 == 0) break;
    in_D0 = in_D0 + 1;
    in_D1 = in_D1 + 1;
  }
  return 0;
}



int FUN_0001054c(int param_1)

{
  byte *in_D0;
  byte *in_D1;
  int iVar1;
  int unaff_A6;
  
  iVar1 = 0;
  while ((iVar1 < param_1 &&
         (*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D0) ==
          *(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D1)))) {
    if (*in_D0 == 0) goto LAB_0001058c;
    in_D0 = in_D0 + 1;
    in_D1 = in_D1 + 1;
    iVar1 = iVar1 + 1;
  }
  if (iVar1 == param_1) {
LAB_0001058c:
    iVar1 = 0;
  }
  else {
    iVar1 = (int)(short)((short)*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D0) -
                        (short)*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D1));
  }
  return iVar1;
}



uint64_t FUN_000105bc(void)

{
  byte bVar1;
  ushort uVar2;
  byte *in_D0;
  short sVar4;
  uint32_t uVar3;
  byte *in_D1;
  short sVar6;
  uint uVar5;
  int unaff_A6;
  
  do {
    bVar1 = *(byte *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D0);
    uVar5 = (uint)bVar1;
    if (bVar1 != *(byte *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D1)) {
      sVar4 = (short)*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D1);
      sVar6 = (short)*(char *)(&gda->buffer[0x8000 - 0x683a] + (uint)*in_D0);
      uVar2 = sVar6 - sVar4;
      uVar5 = (uint)uVar2;
      if (uVar2 == 0 || sVar6 < sVar4) {
LAB_00010620:
        uVar3 = 0xffffffff;
      }
      else {
LAB_0001061c:
        uVar3 = 1;
      }
LAB_00010622:
      return CONCAT44(uVar3,uVar5);
    }
    if (*in_D0 == 0) {
      uVar3 = 0;
      goto LAB_00010622;
    }
    if ((char)*in_D1 < (char)*in_D0) goto LAB_0001061c;
    if ((char)*in_D0 < (char)*in_D1) goto LAB_00010620;
    in_D0 = in_D0 + 1;
    in_D1 = in_D1 + 1;
  } while( true );
}



uint32_t FUN_000106c4(int param_1,uint32_t param_2)

{
  uint32_t *in_D0;
  uint32_t uVar1;
  uint32_t in_D1;
  
  if (0 < param_1) {
    *in_D0 = in_D1;
    in_D0[1] = param_1;
    in_D0[2] = 0;
    uVar1 = func_0x00013996();
    in_D0[3] = uVar1;
    if (in_D0[3] != 0) {
      in_D0[4] = param_2;
      return 1;
    }
  }
  return 0;
}



uint32_t FUN_00010710(void)

{
  uint32_t *in_D0;
  uint32_t uVar1;
  int iVar2;
  int in_D1;
  int iVar3;
  
  if (in_D1 == 0) {
    uVar1 = 0;
  }
  else {
    for (iVar3 = 0; iVar3 < (int)in_D0[2]; iVar3 = iVar3 + 1) {
      iVar2 = (*(code *)in_D0[4])();
      if (iVar2 != -1) break;
    }
    if (iVar3 < (int)in_D0[1]) {
      for (iVar2 = in_D0[1] + -2; iVar3 <= iVar2; iVar2 = iVar2 + -1) {
        FUN_00013c94(*in_D0);
      }
      FUN_00013c94(*in_D0);
      if ((int)in_D0[2] < (int)in_D0[1]) {
        in_D0[2] = in_D0[2] + 1;
      }
    }
    uVar1 = 1;
  }
  return uVar1;
}



uint32_t FUN_000107aa(void)

{
  uint32_t *in_D0;
  uint32_t uVar1;
  int iVar2;
  
  if (in_D0[2] == 0) {
    uVar1 = 0;
  }
  else {
    FUN_00013c94(*in_D0);
    for (iVar2 = 1; iVar2 < (int)in_D0[2]; iVar2 = iVar2 + 1) {
      FUN_00013c94(*in_D0);
    }
    in_D0[2] = in_D0[2] + -1;
    uVar1 = 1;
  }
  return uVar1;
}



void FUN_0001080c(void)

{
  FUN_000139a2();
  return;
}



int FUN_00010828(void)

{
  uint32_t *in_D0;
  uint32_t *in_D1;
  int local_18;
  
  local_18 = 499;
  if ((in_D1 != (uint32_t *)0x0) && (local_18 = FUN_00010138(), local_18 == 499)) {
    *in_D0 = *in_D1;
    *(uint16_t*)(in_D0 + 1) = *(uint16_t*)(in_D1 + 1);
    return 499;
  }
  *(uint32_t*)((int)in_D0 + 6) = 0;
  return local_18;
}



int FUN_00010880(void)

{
  int *in_D0;
  int iVar1;
  int *in_D1;
  
  if (*(int *)((int)in_D0 + 6) == 0) {
    iVar1 = FUN_00010138();
  }
  else {
    if ((*(short *)(in_D1 + 1) == *(short *)(in_D0 + 1)) && (*in_D1 == *in_D0)) {
      return 499;
    }
    FUN_00010078();
    iVar1 = FUN_00010138();
  }
  if (iVar1 == 499) {
    *in_D0 = *in_D1;
    *(uint16_t*)(in_D0 + 1) = *(uint16_t*)(in_D1 + 1);
  }
  else {
    *(uint32_t*)((int)in_D0 + 6) = 0;
  }
  return iVar1;
}



uint32_t FUN_0001091e(void)

{
  int in_D0;
  
  if (*(int *)(in_D0 + 6) != 0) {
    FUN_00010078();
  }
  return 499;
}



void FUN_00010944(void)

{
  int iVar1;
  
  iVar1 = func_0x0001393e(0x5e);
  if (iVar1 != 0x5e) {
    FUN_00013358(0xe6);
    FUN_0001337e();
  }
  return;
}



void FUN_0001098a(void)

{
  int iVar1;
  
  iVar1 = func_0x00013936(0x34);
  if (iVar1 != 0x34) {
    FUN_00013358(0xe7);
    FUN_0001337e();
  }
  return;
}



void FUN_000109ca(int *param_1)

{
  int *in_D1;
  
  FUN_00010944();
  FUN_0001098a();
  if (*param_1 != *in_D1) {
    FUN_00013358(0xe8);
    FUN_0001337e();
  }
  return;
}



void FUN_00010a10(void)

{
  int iVar1;
  int unaff_A6;
  
  iVar1 = FUN_000134e0();
  *(int *)(&gda->buffer[0x8000 - 0x673a]) = iVar1;
  if (iVar1 == -1) {
    FUN_00013358(0xe9);
    FUN_0001337e();
  }
  return;
}



void FUN_00010a4e(int *param_1)

{
  int iVar1;
  int *in_D1;
  uint32_t uVar2;
  
  FUN_00013ae2();
  FUN_000139c2();
  iVar1 = FUN_00013684(3,0x400);
  *in_D1 = iVar1;
  if (iVar1 == -1) {
    FUN_00013358(0xea);
    FUN_0001337e();
  }
  uVar2 = 4;
  FUN_00013ae2();
  FUN_00010944();
  while( true ) {
    iVar1 = func_0x00013936(0x34);
    if (iVar1 == 0x34) break;
    if (iVar1 == -1) {
      FUN_00013358(0xed,0xffffffff,uVar2);
      FUN_0001337e();
    }
    FUN_00013fe0();
  }
  if (*param_1 != 4) {
    FUN_00013358(0xee,0x34,uVar2);
    FUN_0001337e();
  }
  return;
}



void FUN_00010b32(void)

{
                    // WARNING: Subroutine does not return
  FUN_00013952();
}



void FUN_00010b4c(void)

{
  uint32_t local_a2;
  
  FUN_00010944();
  do {
    FUN_0001098a();
  } while (local_a2 != 10);
                    // WARNING: Subroutine does not return
  FUN_00013952();
}



uint32_t FUN_00010bba(void)

{
  char cVar2;
  uint32_t uVar1;
  int unaff_A6;
  int local_10 [3];
  
  cVar2 = FUN_00010c40(local_10);
  if (cVar2 != '\0') {
    if (local_10[0] < 0xf) {
      local_10[0] = local_10[0] + 1;
      uVar1 = FUN_00010c94(local_10[0]);
      return uVar1;
    }
    *(uint32_t*)(&gda->buffer[0x8000 - 0x723e]) = 2;
  }
  return 0;
}



uint32_t FUN_00010c00(void)

{
  char cVar2;
  uint32_t uVar1;
  int unaff_A6;
  int local_10 [3];
  
  cVar2 = FUN_00010c40(local_10);
  if (cVar2 != '\0') {
    if (local_10[0] != 0) {
      local_10[0] = local_10[0] + -1;
      uVar1 = FUN_00010c94(local_10[0]);
      return uVar1;
    }
    *(uint32_t*)(&gda->buffer[0x8000 - 0x723e]) = 2;
  }
  return 0;
}



uint32_t FUN_00010c40(uint *param_1)

{
  uint *in_D0;
  uint32_t uVar1;
  uint in_D1;
  uint uVar2;
  int unaff_A6;
  
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
    *(uint32_t*)(&gda->buffer[0x8000 - 0x723e]) = 2;
    uVar1 = 0;
  }
  return uVar1;
}



uint32_t FUN_00010c94(int param_1)

{
  uint *in_D0;
  uint32_t uVar1;
  uint in_D1;
  int unaff_A6;
  
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
  *(uint32_t*)(&gda->buffer[0x8000 - 0x723e]) = uVar1;
  return 0;
}



void FUN_00010d66(ushort *param_1)

{
  int in_D0;
  ushort uVar1;
  int in_D1;
  int unaff_A6;
  
  *param_1 = *(ushort *)(in_D1 + 4);
  if (*(short *)(in_D0 + 4) == 0) {
    uVar1 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
  }
  else {
    uVar1 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
  }
  param_1[1] = (ushort)((int)((uint)*(ushort *)(in_D1 + (uint)uVar1 + 4) - (uint)*param_1) /
                       (int)(uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ac]));
  return;
}



void FUN_00010ee4(ushort *param_1)

{
  ushort uVar1;
  int in_D0;
  ushort *in_D1;
  int iVar2;
  int unaff_A6;
  
  *param_1 = *in_D1;
  if (*(short *)(in_D0 + 4) == 0) {
    iVar2 = (uint)*(ushort *)((int)in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a0])) - (uint)*param_1;
    uVar1 = *(ushort *)(&gda->buffer[0x8000 - 0x72b4]);
  }
  else {
    iVar2 = (uint)*(ushort *)((int)in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72a0])) - (uint)*param_1;
    uVar1 = *(ushort *)(&gda->buffer[0x8000 - 0x72b2]);
  }
  param_1[1] = (ushort)(iVar2 / (int)(uint)uVar1);
  return;
}



void FUN_00010f40(void)

{
  int iVar1;
  int in_D0;
  ushort *in_D1;
  int unaff_A6;
  
  *in_D1 = *(ushort *)(in_D0 + 2);
  iVar1 = in_D0 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x724e]);
  in_D1[1] = (ushort)((int)((uint)*(ushort *)(iVar1 + 2) - (uint)*in_D1) /
                     (int)(uint)*(ushort *)(&gda->buffer[0x8000 - 0x7250]));
  if (*(char *)(in_D0 + 1) != *(char *)(iVar1 + 1)) {
    in_D1[1] = in_D1[1] - 1;
  }
  return;
}



void FUN_00010f8c(void)

{
  int in_D0;
  ushort *in_D1;
  int unaff_A6;
  
  *in_D1 = *(ushort *)(in_D0 + 2);
  in_D1[1] = (ushort)((int)((uint)*(ushort *)(in_D0 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x724e]) + 2) -
                           (uint)*in_D1) / (int)(uint)*(ushort *)(&gda->buffer[0x8000 - 0x724c]));
  return;
}



void FUN_00010fca(ushort *param_1)

{
  int in_D0;
  int iVar1;
  int in_D1;
  int unaff_A6;
  
  *param_1 = *(ushort *)(in_D1 + 2);
  if (*(short *)(in_D0 + 0x10 +
                (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) == 0)
  {
    iVar1 = 8;
  }
  else {
    iVar1 = 4;
  }
  param_1[1] = (ushort)((int)((uint)*(ushort *)(in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7250]) + 2) -
                             (uint)*param_1) / iVar1);
  return;
}



void FUN_00011026(ushort *param_1)

{
  int in_D0;
  int iVar1;
  int in_D1;
  int unaff_A6;
  
  *param_1 = *(ushort *)(in_D1 + 2);
  if (*(short *)(in_D0 + 0x10 +
                (uint)*(ushort *)(&gda->buffer[0x8000 - 0x7246]) + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x72ba])) == 0)
  {
    iVar1 = 8;
  }
  else {
    iVar1 = 4;
  }
  param_1[1] = (ushort)((int)((uint)*(ushort *)(in_D1 + (uint)*(ushort *)(&gda->buffer[0x8000 - 0x724c]) + 2) -
                             (uint)*param_1) / iVar1);
  return;
}



uint32_t FUN_0001118a(void)

{
  int *in_D0;
  uint32_t uVar1;
  int *in_D1;
  
  if ((*in_D0 == *in_D1) && (*(short *)((int)in_D0 + 6) == *(short *)((int)in_D1 + 6))) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}



uint32_t FUN_000111b6(void)

{
  uint *in_D0;
  uint32_t uVar1;
  uint *in_D1;
  
  if (*in_D1 >> 8 < *in_D0 >> 8) {
LAB_000111fc:
    uVar1 = 1;
  }
  else {
    if (*in_D1 >> 8 <= *in_D0 >> 8) {
      if (*(ushort *)((int)in_D1 + 6) < *(ushort *)((int)in_D0 + 6)) goto LAB_000111fc;
      if (*(ushort *)((int)in_D1 + 6) <= *(ushort *)((int)in_D0 + 6)) {
        return 0;
      }
    }
    uVar1 = 0xffffffff;
  }
  return uVar1;
}



uint64_t FUN_00011304(void)

{
  int iVar1;
  uint32_t in_D1;
  uint32_t local_18;
  uint32_t local_14;
  
  local_14 = 0;
  iVar1 = func_0x000116fe();
  if (iVar1 != -1) {
    local_14 = local_18;
  }
  return CONCAT44(local_14,in_D1);
}



uint32_t FUN_000117ee(uint32_t param_1)

{
  uint32_t uVar1;
  int iVar2;
  int unaff_A6;
  
  if (*(int *)(&gda->buffer[0x8000 - 0x66c2]) == -2) {
    uVar1 = FUN_00013126();
    *(uint32_t*)(&gda->buffer[0x8000 - 0x66c2]) = uVar1;
    if (*(int *)(&gda->buffer[0x8000 - 0x66c2]) < 0) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x66c2]) = 1;
    }
  }
  if (*(int *)(&gda->buffer[0x8000 - 0x66c2]) != 0) {
    while (iVar2 = FUN_000125a4(), iVar2 == -1) {
      FUN_00013fda();
    }
  }
  uVar1 = func_0x00013936(param_1);
  if (*(int *)(&gda->buffer[0x8000 - 0x66c2]) != 0) {
    FUN_00012598();
  }
  return uVar1;
}



uint32_t FUN_00011882(uint32_t param_1)

{
  uint32_t uVar1;
  int iVar2;
  int unaff_A6;
  
  if (*(int *)(&gda->buffer[0x8000 - 0x66be]) == -2) {
    uVar1 = FUN_00013126();
    *(uint32_t*)(&gda->buffer[0x8000 - 0x66be]) = uVar1;
    if (*(int *)(&gda->buffer[0x8000 - 0x66be]) < 0) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x66be]) = 1;
    }
  }
  if (*(int *)(&gda->buffer[0x8000 - 0x66be]) != 0) {
    while (iVar2 = FUN_000125a4(), iVar2 == -1) {
      FUN_00013fda();
    }
  }
  uVar1 = func_0x0001393e(param_1);
  if (*(int *)(&gda->buffer[0x8000 - 0x66be]) != 0) {
    FUN_00012598();
  }
  return uVar1;
}



void FUN_00011a42(uint32_t param_1)

{
  uint32_t *in_D0;
  uint32_t in_D1;
  
  *in_D0 = 0;
  in_D0[3] = in_D1;
  in_D0[4] = param_1;
  in_D0[2] = 0;
  in_D0[1] = *in_D0;
  return;
}



uint32_t FUN_00011a6c(int *param_1,uint32_t param_2)

{
  int *in_D0;
  uint32_t *puVar1;
  uint32_t uVar2;
  
  puVar1 = (uint32_t *)func_0x00013996();
  if (puVar1 == (uint32_t *)0x0) {
    uVar2 = 0;
  }
  else {
    FUN_00013c94(in_D0[3]);
    in_D0[2] = in_D0[2] + 1;
    if (param_1 == (int *)0x0) {
      *puVar1 = param_2;
      *in_D0 = (int)puVar1;
    }
    else {
      *param_1 = (int)puVar1;
      *puVar1 = param_2;
    }
    uVar2 = 1;
  }
  return uVar2;
}



uint32_t FUN_00011ace(void)

{
  uint32_t *puVar1;
  uint32_t *in_D0;
  uint32_t uVar2;
  int unaff_D4;
  uint32_t *puVar3;
  uint32_t *local_24;
  
  local_24 = (uint32_t *)0x0;
  puVar1 = (uint32_t *)*in_D0;
  while (puVar3 = puVar1, puVar3 != (uint32_t *)0x0) {
    unaff_D4 = (*(code *)in_D0[4])();
    if (unaff_D4 < 1) break;
    local_24 = puVar3;
    puVar1 = (uint32_t *)*puVar3;
  }
  if ((puVar3 == (uint32_t *)0x0) || (unaff_D4 != 0)) {
    uVar2 = FUN_00011a6c(local_24,puVar3);
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}



void FUN_00011b24(void)

{
  uint32_t *in_D0;
  
  in_D0[1] = *in_D0;
  return;
}



bool FUN_00011b3c(void)

{
  int in_D0;
  int *in_D1;
  bool bVar1;
  
  bVar1 = *(int *)(in_D0 + 4) != 0;
  if (bVar1) {
    *in_D1 = *(int *)(in_D0 + 4) + 4;
    *(uint32_t*)(in_D0 + 4) = **(uint32_t **)(in_D0 + 4);
  }
  return bVar1;
}



uint32_t FUN_00011bb0(uint32_t *param_1)

{
  uint32_t *in_D0;
  int iVar1;
  uint32_t *puVar2;
  
  puVar2 = (uint32_t *)*in_D0;
  do {
    if (puVar2 == (uint32_t *)0x0) {
LAB_00011bee:
      *param_1 = 0;
      return 0;
    }
    iVar1 = (*(code *)in_D0[4])();
    if (iVar1 < 1) {
      if (iVar1 == 0) {
        *param_1 = puVar2 + 1;
        return 1;
      }
      goto LAB_00011bee;
    }
    puVar2 = (uint32_t *)*puVar2;
  } while( true );
}



void FUN_00011c00(void)

{
  int iVar1;
  int *in_D0;
  
  while (*in_D0 != 0) {
    iVar1 = *(int *)*in_D0;
    FUN_000139a2();
    *in_D0 = iVar1;
  }
  in_D0[2] = 0;
  return;
}



uint32_t FUN_00011c2a(void)

{
  uint32_t *in_D0;
  int iVar1;
  uint32_t uVar2;
  uint32_t *puVar3;
  uint32_t *puVar4;
  
  puVar3 = (uint32_t *)0x0;
  for (puVar4 = (uint32_t *)*in_D0; puVar4 != (uint32_t *)0x0; puVar4 = (uint32_t *)*puVar4) {
    iVar1 = (*(code *)in_D0[4])();
    if (iVar1 == 0) break;
    puVar3 = puVar4;
  }
  uVar2 = 0;
  if (puVar4 != (uint32_t *)0x0) {
    if (puVar3 == (uint32_t *)0x0) {
      *in_D0 = *puVar4;
    }
    else {
      *puVar3 = *puVar4;
    }
    in_D0[2] = in_D0[2] + -1;
    uVar2 = FUN_000139a2();
  }
  return uVar2;
}



uint32_t FUN_00011c7a(void)

{
  int in_D0;
  
  return *(uint32_t*)(in_D0 + 8);
}



uint32_t FUN_00011d66(void)

{
  int iVar1;
  uint32_t uVar2;
  int unaff_A6;
  
  if (*(int *)(&gda->buffer[0x8000 - 0x66b6]) == *(int *)(&gda->buffer[0x8000 - 0x66b2])) {
    uVar2 = 0xffffffff;
  }
  else {
    iVar1 = *(int *)(&gda->buffer[0x8000 - 0x66b6]);
    *(int *)(&gda->buffer[0x8000 - 0x66b6]) = *(int *)(&gda->buffer[0x8000 - 0x66b6]) + 1;
    uVar2 = *(uint32_t*)(&gda->buffer[0x8000 - 0x723a] + iVar1 * 4);
    if (0x3f < *(int *)(&gda->buffer[0x8000 - 0x66b6])) {
      *(uint32_t*)(&gda->buffer[0x8000 - 0x66b6]) = 0;
    }
  }
  return uVar2;
}



ulonglong FUN_00011e8c(void)

{
  int iVar1;
  uint32_t in_D1;
  
  iVar1 = FUN_000141b4();
  return (ulonglong)CONCAT14(iVar1 != -1,in_D1);
}



bool FUN_00011eb0(void)

{
  int iVar1;
  int *in_D1;
  
  iVar1 = FUN_00014192();
  *in_D1 = iVar1;
  return iVar1 != -1;
}



void FUN_00011f02(void)

{
  int iVar1;
  
  do {
    iVar1 = FUN_0001424c(1);
  } while (iVar1 != 1);
  return;
}



void FUN_00011f32(void)

{
  FUN_000141dc();
  return;
}



uint32_t FUN_00011f88(void)

{
  return 1;
}



bool FUN_00011f96(void)

{
  int in_D0;
  int *in_D1;
  
  if (in_D0 != 0) {
    *in_D1 = in_D0;
  }
  else {
    *in_D1 = 0;
  }
  return in_D0 != 0;
}



// WARNING: Control flow encountered bad instruction data

void FUN_0001202a(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_00012034(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x0001208a) overlaps instruction at (ram,0x00012088)
// 

uint64_t FUN_00012050(void)

{
  short sVar2;
  int iVar1;
  ushort unaff_D7w;
  int in_A0;
  uint16_t *puVar3;
  uint16_t *unaff_A5;
  int unaff_A6;
  uint64_t in_stack_00000000;
  
  *(int *)(&gda->buffer[0x8000 - 0x66a6]) = in_A0 - *(int *)(&gda->buffer[0x8000 - 0x669e]);
  sVar2 = ((ushort)(*(uint *)(&gda->buffer[0x8000 - 0x66aa]) >> 1) & 0x7fff) - 1;
  puVar3 = (uint16_t *)(&gda->buffer[0x8000 - 0x713a]);
  do {
    *puVar3 = *unaff_A5;
    sVar2 = sVar2 + -1;
    puVar3 = puVar3 + 1;
    unaff_A5 = unaff_A5 + 1;
  } while (sVar2 != -1);
  *(ushort *)(&gda->buffer[0x8000 - 0x66a2]) = unaff_D7w >> 2;
  iVar1 = (**(code **)(&gda->buffer[0x8000 - 0x70f2]))();
  if (iVar1 == 0) {
    return in_stack_00000000;
  }
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



uint64_t FUN_000124b6(void)

{
  uint in_D1;
  int unaff_A6;
  uint32_t local_4;
  
  __m68k_trap(0);
  local_4 = in_D1 | 0x640c0000;
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = 1;
  return CONCAT44(0xffffffff,local_4);
}



uint64_t FUN_000124e2(void)

{
  uint in_D1;
  int unaff_A6;
  uint32_t local_4;
  
  __m68k_trap(0);
  local_4 = in_D1 | 0x64e00000;
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = 0;
  return CONCAT44(0xffffffff,local_4);
}



// WARNING: Globals starting with '_' overlap smaller symbols at the same address

void FUN_00012514(void)

{
  uint *puVar1;
  uint in_D0;
  
  puVar1 = (uint *)(*(int *)(_LAB_00000000 + 0x4c) + 0x374);
  *puVar1 = in_D0 | *puVar1;
  return;
}



// WARNING: Globals starting with '_' overlap smaller symbols at the same address

void FUN_0001252c(void)

{
  uint *puVar1;
  int in_D0;
  
  puVar1 = (uint *)(*(int *)(_LAB_00000000 + 0x4c) + 0x374);
  *puVar1 = -in_D0 & *puVar1;
  return;
}



void FUN_00012546(void)

{
  uint16_t in_D1w;
  int unaff_A6;
  bool in_CF;
  
  if (in_CF) {
    *(uint16_t*)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1w;
  }
  return;
}



uint64_t FUN_00012550(void)

{
  uint32_t uVar1;
  uint16_t in_D1w;
  int unaff_A6;
  bool in_CF;
  uint32_t in_stack_00000000;
  
  if (in_CF) {
    *(uint16_t*)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1w;
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = 0;
  }
  return CONCAT44(uVar1,in_stack_00000000);
}



// WARNING: Removing unreachable block (ram,0x000125c8)

uint32_t FUN_0001255a(void)

{
  ushort *unaff_A6;
  
  __m68k_trap(0);
  *unaff_A6 = *unaff_A6 | 0x60d6;
  __m68k_trap(0);
  *unaff_A6 = *unaff_A6 | 0x60c0;
  __m68k_trap(0);
  *unaff_A6 = *unaff_A6 | 0x60ae;
  __m68k_trap(0);
  *unaff_A6 = *unaff_A6 | 0x60ac;
  __m68k_trap(0);
  *unaff_A6 = *unaff_A6 | 0x6090;
  if (*(int *)(&gda->buffer[0x8000 - 0x3875]) != 0) {
    (**(code **)(&gda->buffer[0x8000 - 0x3875]))();
  }
  return 0;
}



// WARNING: Removing unreachable block (ram,0x000125c8)

uint32_t FUN_00012598(void)

{
  ushort *unaff_A6;
  
  __m68k_trap(0);
  *unaff_A6 = *unaff_A6 | 0x60ac;
  __m68k_trap(0);
  *unaff_A6 = *unaff_A6 | 0x6090;
  if (*(int *)(&gda->buffer[0x8000 - 0x3875]) != 0) {
    (**(code **)(&gda->buffer[0x8000 - 0x3875]))();
  }
  return 0;
}



// WARNING: Removing unreachable block (ram,0x000125c8)

uint32_t FUN_000125a4(void)

{
  ushort *unaff_A6;
  
  __m68k_trap(0);
  *unaff_A6 = *unaff_A6 | 0x6090;
  if (*(int *)(&gda->buffer[0x8000 - 0x3875]) != 0) {
    (**(code **)(&gda->buffer[0x8000 - 0x3875]))();
  }
  return 0;
}



void FUN_00012ac4(void)

{
  uint32_t in_D0;
  int unaff_A6;
  
  *(uint32_t*)(&gda->buffer[0x8000 - 0x6654]) = in_D0;
  FUN_000143d6();
  return;
}



char * FUN_00012b06(void)

{
  char cVar1;
  char *in_D0;
  char *pcVar2;
  char *in_D1;
  
  cVar1 = *in_D0;
  *in_D1 = cVar1;
  if (cVar1 == '/') {
    do {
      pcVar2 = in_D0;
      in_D0 = pcVar2 + 1;
      in_D1 = in_D1 + 1;
      cVar1 = *in_D0;
      *in_D1 = cVar1;
      if (cVar1 == '/') break;
    } while (cVar1 != '\0');
    *in_D1 = '\0';
    pcVar2 = pcVar2 + 2;
  }
  else {
    pcVar2 = (char *)0x0;
  }
  return pcVar2;
}



uint64_t FUN_00012b5c(void)

{
  uint32_t uVar1;
  int iVar2;
  uint32_t in_D1;
  int iVar3;
  int unaff_A6;
  
  if (*(int *)(&gda->buffer[0x8000 - 0x6678]) == 0) {
    uVar1 = FUN_00013070();
    *(uint32_t*)(&gda->buffer[0x8000 - 0x6678]) = uVar1;
    FUN_00013236(*(uint32_t*)(&gda->buffer[0x8000 - 0x6678]));
  }
  for (iVar3 = 0; iVar3 < *(short *)(*(int *)(&gda->buffer[0x8000 - 0x6678]) + 0x10); iVar3 = iVar3 + 1) {
    if (*(int *)(*(int *)(&gda->buffer[0x8000 - 0x6678]) + 0x1a + iVar3 * 4) != 0) {
      FUN_00013236(*(uint32_t*)(*(int *)(&gda->buffer[0x8000 - 0x6678]) + 0x1a + iVar3 * 4));
    }
    iVar2 = FUN_00013a50();
    if (iVar2 == 0) break;
  }
  if (*(short *)(*(int *)(&gda->buffer[0x8000 - 0x6678]) + 0x10) <= iVar3) {
    iVar3 = -1;
  }
  return CONCAT44(iVar3,in_D1);
}



char * FUN_00012c24(void)

{
  char cVar1;
  char *pcVar2;
  int iVar3;
  uint *in_D1;
  int iVar4;
  char *pcVar5;
  int unaff_A6;
  uint local_3e;
  char *local_38;
  char local_34 [20];
  int local_20;
  int local_1c;
  uint *local_14;
  
  local_14 = in_D1;
  pcVar2 = (char *)FUN_00012d7c();
  if (*pcVar2 == '_') {
    if (pcVar2[1] < 'A') {
      local_3e = 0;
      while( true ) {
        pcVar5 = pcVar2 + 1;
        cVar1 = *pcVar5;
        if ((cVar1 < '0') || ('9' < cVar1)) break;
        local_3e = ((int)cVar1 + local_3e * 10) - 0x30;
        pcVar2 = pcVar5;
      }
      if (*pcVar5 == '_') {
        *local_14 = local_3e;
        return pcVar2 + 2;
      }
    }
    else {
      if (*(int *)(&gda->buffer[0x8000 - 0x6674]) == 0) {
        local_1c = FUN_00014280();
        if (local_1c == -1) {
          return (char *)0xffffffff;
        }
        *(int *)(&gda->buffer[0x8000 - 0x6674]) = local_1c + 0x30;
      }
      local_38 = local_34;
      while( true ) {
        cVar1 = pcVar2[1];
        if (cVar1 == '_') break;
        *local_38 = cVar1;
        pcVar2 = pcVar2 + 1;
        local_38 = local_38 + 1;
      }
      *local_38 = '\0';
      local_20 = *(int *)(&gda->buffer[0x8000 - 0x6674]) + 2;
      for (iVar4 = 0; iVar4 < **(short **)(&gda->buffer[0x8000 - 0x6674]); iVar4 = iVar4 + 1) {
        iVar3 = FUN_00013a50();
        if (iVar3 == 0) {
          *local_14 = (uint)*(byte *)(local_20 + 0x13);
          return pcVar2 + 2;
        }
        local_20 = local_20 + 0x14;
      }
    }
  }
  return (char *)0x0;
}



void FUN_00012d7c(void)

{
  char *in_D0;
  int iVar1;
  int iVar2;
  int iVar3;
  int unaff_A6;
  
  if (((*in_D0 != '_') && (*in_D0 != '@')) && ('@' < *in_D0)) {
    if (*(int *)(&gda->buffer[0x8000 - 0x6670]) == 0) {
      iVar1 = FUN_00014280();
      if (iVar1 == -1) {
        return;
      }
      *(int *)(&gda->buffer[0x8000 - 0x6670]) = iVar1 + 0x30;
    }
    iVar1 = *(int *)(&gda->buffer[0x8000 - 0x6670]) + 2;
    iVar3 = 0;
    while ((iVar3 < **(short **)(&gda->buffer[0x8000 - 0x6670]) && (iVar2 = FUN_00013a50(iVar1), iVar2 != 0)))
    {
      iVar1 = iVar1 + 0x32;
      iVar3 = iVar3 + 1;
    }
  }
  return;
}



uint32_t FUN_00012e22(void)

{
  int unaff_A6;
  
  return *(uint32_t*)(&gda->buffer[0x8000 - 0x6654]);
}



int FUN_00012e52(void)

{
  uint uVar1;
  uint in_D0;
  uint32_t uVar2;
  short sVar5;
  byte *pbVar3;
  int iVar4;
  short in_D1w;
  int extraout_A0;
  int unaff_A6;
  uint32_t local_50;
  int local_4c;
  uint32_t local_48;
  int local_44;
  int local_40;
  short local_12;
  
  local_48._1_1_ = (byte)(in_D0 >> 0x10);
  if (local_48._1_1_ == '\0') {
    local_44 = FUN_000142e0();
  }
  else {
    local_48 = in_D0;
    local_12 = in_D1w;
    if (*(int *)(&gda->buffer[0x8000 - 0x6668]) == 0) {
      uVar2 = FUN_00013070();
      *(uint32_t*)(&gda->buffer[0x8000 - 0x6668]) = uVar2;
    }
    if (*(short *)(&gda->buffer[0x8000 - 0x6664] + (uint)local_48._0_1_ * 4) == -1) {
      FUN_000138e2(*(uint32_t*)(*(int *)(&gda->buffer[0x8000 - 0x6668]) + 0x1a + (uint)local_48._0_1_ * 4));
      sVar5 = func_0x00013922();
      *(short *)(&gda->buffer[0x8000 - 0x6664] + (local_48 >> 0x18) * 4) = sVar5;
      if (sVar5 < 0) {
        return -1;
      }
      uVar2 = FUN_00013194(0);
      FUN_00013236(uVar2);
      uVar1 = local_48 >> 0x18;
      pbVar3 = (byte *)FUN_00013194(0);
      *(ushort *)(extraout_A0 + 2 + uVar1 * 4) = (ushort)*pbVar3;
    }
    if ((ushort)local_48._1_1_ == *(ushort *)(&gda->buffer[0x8000 - 0x6662] + (local_48 >> 0x18) * 4)) {
      local_44 = FUN_000142e0();
    }
    else {
      if (*(int *)(&gda->buffer[0x8000 - 0x666c]) == 0) {
        uVar2 = FUN_0001439e();
        *(uint32_t*)(&gda->buffer[0x8000 - 0x666c]) = uVar2;
        *(uint32_t*)(&gda->buffer[0x8000 - 0x70de]) = 0x10000;
        *(uint32_t*)(&gda->buffer[0x8000 - 0x70da]) = *(uint32_t*)(&gda->buffer[0x8000 - 0x666c]);
        *(uint32_t*)(&gda->buffer[0x8000 - 0x70e2]) = 0;
      }
      *(uint32_t*)(&gda->buffer[0x8000 - 0x70c2]) = 1;
      *(uint32_t*)(&gda->buffer[0x8000 - 0x70be]) = 8;
      *(uint32_t **)(&gda->buffer[0x8000 - 0x70ba]) = &local_50;
      *(int *)(&gda->buffer[0x8000 - 0x70b2]) = &gda->buffer[0x8000 - 0x70e6];
      *(uint32_t*)(&gda->buffer[0x8000 - 0x70b6]) = 0x18;
      *(uint *)(&gda->buffer[0x8000 - 0x70d6]) = local_48 & 0xffff;
      *(int *)(&gda->buffer[0x8000 - 0x70d2]) = (int)local_12;
      *(byte *)(&gda->buffer[0x8000 - 0x70e3]) = local_48._1_1_;
      *(uint8_t *)(&gda->buffer[0x8000 - 0x70e2]) = 0;
      local_40 = FUN_000131c4(&gda->buffer[0x8000 - 0x70c2]);
      if (local_40 < 0) {
        local_44 = -1;
      }
      else {
        iVar4 = FUN_000131c4(local_40);
        if (iVar4 < 0) {
          local_44 = -1;
        }
        else {
          local_44 = local_4c;
          if (local_4c < 0) {
            *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = local_50;
          }
        }
      }
    }
  }
  return local_44;
}



uint64_t FUN_00013070(void)

{
  __m68k_trap(0);
                    // WARNING: Read-only address (ram,0x0001308a) is written
  uRam0001308a = 0x7d;
  DAT_00017d77 = DAT_00017d77 | 0x12;
  __m68k_trap(0);
                    // WARNING: Read-only address (ram,0x000130ba) is written
  uRam000130ba = 0x7d;
  return 0xee00000002;
}



ulonglong FUN_000130a0(void)

{
  uint32_t in_D1;
  
  __m68k_trap(0);
                    // WARNING: Read-only address (ram,0x000130ba) is written
  uRam000130ba = 0x7d;
  return CONCAT44(4,in_D1) | 0xea00000000;
}



uint32_t FUN_00013126(void)

{
  int iVar1;
  uint32_t uVar2;
  uint32_t in_D1;
  
  iVar1 = func_0x00013922();
  if (iVar1 == -1) {
    return 0xffffffff;
  }
  uVar2 = FUN_00013194(in_D1);
                    // WARNING: Subroutine does not return
  FUN_00013952(uVar2,iVar1);
}



// WARNING: Control flow encountered bad instruction data

void FUN_00013194(void)

{
  int in_D0;
  
  if ((in_D0 != 2) && (in_D0 != 5)) {
    __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
  }
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_000131c4(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



void FUN_00013212(void)

{
  uint32_t in_D1;
  int unaff_A6;
  bool in_CF;
  
  if (in_CF) {
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1;
  }
  return;
}



void FUN_0001321c(void)

{
  uint32_t in_D1;
  int unaff_A6;
  bool in_CF;
  
  if (in_CF) {
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1;
  }
  return;
}



// WARNING: Removing unreachable block (ram,0x0001324c)

uint32_t FUN_00013236(void)

{
  __m68k_trap(0);
                    // WARNING: Read-only address (ram,0x00013642) is written
  uRam00013642 = 0xff;
  return 0;
}



// WARNING: Removing unreachable block (ram,0x0001324c)

uint32_t FUN_00013252(void)

{
  byte *pbVar1;
  short in_D0w;
  
  __m68k_trap(0);
  pbVar1 = (byte *)(in_D0w * 4 + 0x1325c);
  *pbVar1 = *pbVar1 | 0xdf;
  return 0;
}



void FUN_000132b6(void)

{
  int in_D0;
  int in_D1;
  int unaff_A6;
  uint32_t local_18;
  
  for (local_18 = 0; local_18 < 0xc4; local_18 = local_18 + 1) {
    *(uint *)(&gda->buffer[0x8000 - 0x70ae] + local_18 * 4) = in_D0 + (uint)*(ushort *)(in_D1 + local_18 * 2);
  }
  return;
}



void FUN_00013314(void)

{
  int in_D0;
  
  FUN_00013392(in_D0 + 0x100,0xff);
  return;
}



void FUN_00013358(uint32_t param_1)

{
  FUN_00013314(param_1);
  FUN_00013434();
  return;
}



void FUN_0001337e(void)

{
  do {
    FUN_00013fda();
  } while( true );
}



uint64_t FUN_00013392(void)

{
  uint32_t in_D0;
  int iVar1;
  uint32_t uVar2;
  uint32_t in_D1;
  int unaff_A6;
  
  if (*(int *)(&gda->buffer[0x8000 - 0x6642]) < 0) {
    iVar1 = FUN_000134e0();
    *(int *)(&gda->buffer[0x8000 - 0x6642]) = iVar1;
    if (iVar1 < 0) {
      uVar2 = 0xffffffff;
      goto LAB_000133c8;
    }
  }
  uVar2 = FUN_000131c4(in_D0);
LAB_000133c8:
  return CONCAT44(uVar2,in_D1);
}



uint64_t FUN_000133d8(void)

{
  int iVar1;
  uint32_t in_D1;
  
  iVar1 = FUN_000134e0();
  if (iVar1 == -1) {
    return CONCAT44(0xffffffff,in_D1);
  }
  iVar1 = func_0x00013936(4);
  if (iVar1 != 4) {
                    // WARNING: Subroutine does not return
    FUN_00013952();
  }
                    // WARNING: Subroutine does not return
  FUN_00013952();
}



void FUN_00013434(void)

{
  FUN_000133d8();
  FUN_00012e52();
  return;
}



void FUN_000134e0(void)

{
  FUN_00013532(0);
  return;
}



uint32_t FUN_00013532(int param_1)

{
  int iVar1;
  char *pcVar2;
  short sVar5;
  byte *pbVar3;
  uint32_t uVar4;
  int extraout_A0;
  int unaff_A6;
  int local_28;
  
  iVar1 = FUN_00012b06();
  if (((iVar1 == 0) || (iVar1 = FUN_00012b5c(), iVar1 < 0)) ||
     (pcVar2 = (char *)FUN_00012c24(), pcVar2 == (char *)0x0)) {
LAB_00013662:
    uVar4 = (**(code **)(&gda->buffer[0x8000 - 0x663e] + param_1 * 4))();
  }
  else {
    if (*(short *)(&gda->buffer[0x8000 - 0x6664] + iVar1 * 4) == -1) {
      sVar5 = func_0x00013922();
      *(short *)(&gda->buffer[0x8000 - 0x6664] + iVar1 * 4) = sVar5;
      if (-1 < sVar5) {
        pbVar3 = (byte *)FUN_00013194(0);
        *(ushort *)(extraout_A0 + 2 + iVar1 * 4) = (ushort)*pbVar3;
        if ((-1 < *(short *)(&gda->buffer[0x8000 - 0x6664] + iVar1 * 4)) &&
           (*(short *)(&gda->buffer[0x8000 - 0x6664] + iVar1 * 4) < 3)) {
                    // WARNING: Subroutine does not return
          FUN_00013952();
        }
        goto LAB_00013626;
      }
    }
    else {
LAB_00013626:
      if ((*(short *)(&gda->buffer[0x8000 - 0x6662] + iVar1 * 4) != local_28) || (*pcVar2 != '_'))
      goto LAB_00013662;
      do {
        pcVar2 = pcVar2 + 1;
        if (*pcVar2 == '_') goto LAB_00013662;
      } while (*pcVar2 != '\0');
    }
    uVar4 = 0xffffffff;
  }
  return uVar4;
}



void FUN_00013684(short param_1,uint32_t param_2)

{
  FUN_000136ac((int)param_1,param_2);
  return;
}



uint32_t FUN_000136ac(short param_1,uint32_t param_2)

{
  int iVar1;
  char *pcVar2;
  short sVar5;
  byte *pbVar3;
  uint32_t uVar4;
  int extraout_A0;
  int unaff_A6;
  int local_28;
  
  iVar1 = FUN_00012b06();
  if (((iVar1 == 0) || (iVar1 = FUN_00012b5c(), iVar1 < 0)) ||
     (pcVar2 = (char *)FUN_00012c24(), pcVar2 == (char *)0x0)) {
LAB_000137f0:
    uVar4 = func_0x0001391a((int)param_1,param_2);
  }
  else {
    if (*(short *)(&gda->buffer[0x8000 - 0x6664] + iVar1 * 4) == -1) {
      sVar5 = func_0x00013922();
      *(short *)(&gda->buffer[0x8000 - 0x6664] + iVar1 * 4) = sVar5;
      if (-1 < sVar5) {
        pbVar3 = (byte *)FUN_00013194(0);
        *(ushort *)(extraout_A0 + 2 + iVar1 * 4) = (ushort)*pbVar3;
        if ((-1 < *(short *)(&gda->buffer[0x8000 - 0x6664] + iVar1 * 4)) &&
           (*(short *)(&gda->buffer[0x8000 - 0x6664] + iVar1 * 4) < 3)) {
                    // WARNING: Subroutine does not return
          FUN_00013952();
        }
        goto LAB_000137a0;
      }
    }
    else {
LAB_000137a0:
      if ((*(short *)(&gda->buffer[0x8000 - 0x6662] + iVar1 * 4) != local_28) || (*pcVar2 != '_'))
      goto LAB_000137f0;
      do {
        pcVar2 = pcVar2 + 1;
        if (*pcVar2 == '_') goto LAB_000137f0;
      } while (*pcVar2 != '\0');
    }
    uVar4 = 0xffffffff;
  }
  return uVar4;
}



// WARNING: Control flow encountered bad instruction data

uint64_t FUN_00013808(void)

{
  int in_A1;
  int unaff_A6;
  
  gda->intercept_code = 9;
  __m68k_trap(0);
  *(byte *)(in_A1 + -1) = *(byte *)(in_A1 + -1) | 0x3e;
  if (gda->intercept_code != 0) {
    __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
  }
  *(uint16_t*)(&gda->buffer[0x8000 - 0x6d92]) = 0x41;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x6d90]) = 0;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x6d76]) = 2;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x6d74]) = 1;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x6d5a]) = 2;
  *(uint16_t*)(&gda->buffer[0x8000 - 0x6d58]) = 2;
  return 0xd00000000;
}



// WARNING: Control flow encountered bad instruction data

void FUN_000138aa(void)

{
  __m68k_trap(0xd);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_000138da(void)

{
  __m68k_trap(0xd);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_000138de(void)

{
  __m68k_trap(0xd);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_000138e2(void)

{
  __m68k_trap(0xd);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_000138fe(void)

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
  LAB_00000038_1 = LAB_00000038_1 | 0x4d;
  __m68k_trap(0xd);
  DAT_000139d1 = DAT_000139d1 | 0x4d;
  __m68k_trap(0xd);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_00013952(void)

{
  byte *pbVar1;
  short in_D0w;
  int in_A0;
  int unaff_A2;
  int unaff_A4;
  int unaff_A6;
  
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
  LAB_00000038_1 = LAB_00000038_1 | 0x4d;
  __m68k_trap(0xd);
  DAT_000139d1 = DAT_000139d1 | 0x4d;
  __m68k_trap(0xd);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_00013972(void)

{
  byte *pbVar1;
  short in_D0w;
  int unaff_A2;
  int unaff_A4;
  int unaff_A6;
  
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
  LAB_00000038_1 = LAB_00000038_1 | 0x4d;
  __m68k_trap(0xd);
  DAT_000139d1 = DAT_000139d1 | 0x4d;
  __m68k_trap(0xd);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_000139a2(void)

{
  __m68k_trap(0xd);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



void FUN_000139c2(void)

{
  char *in_D0;
  int iVar1;
  int iVar2;
  char *pcVar3;
  char *pcVar4;
  
  iVar1 = FUN_0001439e();
  do {
    pcVar4 = in_D0;
    in_D0 = pcVar4 + 1;
  } while (*pcVar4 != '\0');
  while (pcVar3 = pcVar4 + -1, *pcVar3 == 'X') {
    *pcVar3 = (char)(iVar1 % 10) + '0';
    iVar1 = iVar1 / 10;
    pcVar4 = pcVar3;
  }
  for (iVar1 = 0x61; (iVar2 = func_0x00013916(), iVar2 != -1 && (iVar1 != 0x7a)); iVar1 = iVar1 + 1)
  {
    *pcVar4 = (char)iVar1;
  }
  return;
}



ulonglong FUN_00013a50(void)

{
  byte bVar1;
  byte bVar2;
  ushort *in_D0;
  uint uVar3;
  ushort uVar4;
  ushort *in_D1;
  ushort *puVar5;
  ushort *puVar6;
  
  if ((((byte)in_D1 ^ (byte)in_D0) & 1) != 0) {
    uVar3 = 0;
    do {
      bVar1 = *(byte *)in_D0;
      uVar4 = (ushort)CONCAT31((int3)(uVar3 >> 8),bVar1);
      puVar6 = (ushort *)((int)in_D1 + 1);
      bVar2 = *(byte *)in_D1;
      if (bVar1 != bVar2) break;
      uVar4 = uVar4 - 1;
      uVar3 = (uint)uVar4;
      in_D0 = (ushort *)((int)in_D0 + 1);
      in_D1 = puVar6;
    } while (uVar4 != 0xffff);
    if (bVar2 <= bVar1) {
      return (ulonglong)CONCAT24(uVar4 + 1,puVar6);
    }
LAB_00013a98:
    return CONCAT44(0xffffffff,puVar6);
  }
  puVar5 = in_D0;
  if (((uint)in_D1 & 1) != 0) {
    puVar6 = (ushort *)((int)in_D1 + 1);
    if (*(byte *)in_D0 < *(byte *)in_D1) goto LAB_00013a98;
    if (*(byte *)in_D1 < *(byte *)in_D0) {
LAB_00013a8a:
      return CONCAT44(1,puVar6);
    }
    puVar5 = (ushort *)((int)in_D0 + 1);
    in_D1 = puVar6;
    if (*(char *)in_D0 == '\0') goto LAB_00013aa6;
  }
  while( true ) {
    uVar4 = *puVar5;
    puVar6 = in_D1 + 1;
    if (uVar4 != *in_D1) break;
    if (((char)uVar4 == '\0') || (puVar5 = puVar5 + 1, in_D1 = puVar6, uVar4 < 0x100))
    goto LAB_00013aa6;
  }
  if (uVar4 < *in_D1) {
    if (0xff < uVar4) goto LAB_00013a98;
  }
  else if (0xff < uVar4) goto LAB_00013a8a;
  if (*(char *)in_D1 != '\0') goto LAB_00013a98;
LAB_00013aa6:
  return ZEXT48(puVar6);
}



char * FUN_00013ac4(void)

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



void FUN_00013ae2(void)

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



uint64_t FUN_00013c94(int param_1)

{
  uint32_t in_D0;
  uint32_t in_D1;
  
  if (param_1 != 0) {
    FUN_00013cb2();
  }
  return CONCAT44(in_D0,in_D1);
}



void FUN_00013cb2(void)

{
  uint unaff_D2;
  uint uVar1;
  uint uVar2;
  uint32_t *in_A0;
  uint32_t *puVar4;
  uint8_t *extraout_A0;
  int extraout_A0_00;
  uint32_t *unaff_A2;
  uint32_t *puVar5;
  short sVar3;
  
  if (unaff_D2 != 0) {
    if (unaff_A2 < in_A0) {
      puVar5 = (uint32_t *)(unaff_D2 + (int)unaff_A2);
      puVar4 = (uint32_t *)(unaff_D2 + (int)in_A0);
      if (((uint)puVar5 & 1) != 0) {
        puVar5 = (uint32_t *)((int)puVar5 + -1);
        puVar4 = (uint32_t *)((int)puVar4 + -1);
        *(uint8_t *)puVar4 = *(uint8_t *)puVar5;
        unaff_D2 = unaff_D2 - 1;
      }
      if (((uint)puVar4 & 1) == 0) {
        if ((unaff_D2 & 1) != 0) {
          FUN_00013d24();
          *(uint8_t *)(extraout_A0_00 + -1) = *(uint8_t *)((int)puVar5 + -1);
          return;
        }
        uVar2 = unaff_D2 >> 2;
        if ((unaff_D2 >> 1 & 1) != 0) {
          puVar5 = (uint32_t *)((int)puVar5 + -2);
          puVar4 = (uint32_t *)((int)puVar4 + -2);
          *(uint16_t*)puVar4 = *(uint16_t*)puVar5;
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
        puVar5 = (uint32_t *)((int)puVar5 + -1);
        puVar4 = (uint32_t *)((int)puVar4 + -1);
        *(uint8_t *)puVar4 = *(uint8_t *)puVar5;
        unaff_D2 = uVar2;
      }
      return;
    }
    if (in_A0 != unaff_A2) {
      puVar4 = in_A0;
      puVar5 = unaff_A2;
      if (((uint)unaff_A2 & 1) != 0) {
        puVar5 = (uint32_t *)((int)unaff_A2 + 1);
        puVar4 = (uint32_t *)((int)in_A0 + 1);
        *(uint8_t *)in_A0 = *(uint8_t *)unaff_A2;
        unaff_D2 = unaff_D2 - 1;
      }
      if (((uint)puVar4 & 1) == 0) {
        if ((unaff_D2 & 1) != 0) {
          FUN_00013cda();
          *extraout_A0 = *(uint8_t *)puVar5;
          return;
        }
        uVar2 = unaff_D2 >> 2;
        if ((unaff_D2 >> 1 & 1) != 0) {
          *(uint16_t*)puVar4 = *(uint16_t*)puVar5;
          puVar4 = (uint32_t *)((int)puVar4 + 2);
          puVar5 = (uint32_t *)((int)puVar5 + 2);
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
        *(uint8_t *)puVar4 = *(uint8_t *)puVar5;
        unaff_D2 = uVar2;
        puVar4 = (uint32_t *)((int)puVar4 + 1);
        puVar5 = (uint32_t *)((int)puVar5 + 1);
      }
    }
  }
  return;
}



void FUN_00013cda(void)

{
  uint unaff_D2;
  uint uVar1;
  uint32_t *in_A0;
  uint32_t *unaff_A2;
  uint uVar2;
  short sVar3;
  
  uVar2 = unaff_D2 >> 1;
  if ((unaff_D2 & 1) != 0) {
    *(uint16_t*)in_A0 = *(uint16_t*)unaff_A2;
    in_A0 = (uint32_t *)((int)in_A0 + 2);
    unaff_A2 = (uint32_t *)((int)unaff_A2 + 2);
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



void FUN_00013d24(void)

{
  uint unaff_D2;
  uint uVar1;
  uint32_t *in_A0;
  uint32_t *unaff_A2;
  uint uVar2;
  short sVar3;
  
  uVar2 = unaff_D2 >> 1;
  if ((unaff_D2 & 1) != 0) {
    unaff_A2 = (uint32_t *)((int)unaff_A2 + -2);
    in_A0 = (uint32_t *)((int)in_A0 + -2);
    *(uint16_t*)in_A0 = *(uint16_t*)unaff_A2;
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



void FUN_00013d4c(void)

{
  uint32_t uVar1;
  char cVar2;
  char cVar3;
  uint8_t *puVar4;
  int unaff_D2;
  uint uVar5;
  int unaff_D5;
  char *in_A0;
  char *pcVar6;
  uint32_t *puVar7;
  uint8_t *puVar8;
  bool bVar9;
  code *UNRECOVERED_JUMPTABLE;
  
  puVar4 = &stack0x00000004;
LAB_00013d4e:
  do {
    puVar8 = puVar4;
    pcVar6 = in_A0;
    bVar9 = unaff_D5 == 0;
    unaff_D5 = unaff_D5 + -1;
    puVar7 = (uint32_t *)puVar8;
    if (bVar9) {
LAB_00013db4:
      puVar7[-1] = puVar7;
      puVar7[-2] = unaff_D2;
      if (unaff_D2 + -1 != 0) {
        uVar5 = (unaff_D2 + -1) * 4;
        do {
          uVar1 = *(uint32_t*)((int)puVar7 + uVar5);
          *(uint32_t*)((int)puVar7 + uVar5) = *puVar7;
          *puVar7 = uVar1;
          bVar9 = 7 < uVar5;
          uVar5 = uVar5 - 8;
          puVar7 = puVar7 + 1;
        } while (bVar9 && uVar5 != 0);
      }
                    // WARNING: Could not recover jumptable at 0x00013dce. Too many branches
                    // WARNING: Treating indirect jump as call
      (*UNRECOVERED_JUMPTABLE)();
      return;
    }
    in_A0 = pcVar6 + 1;
    cVar2 = *pcVar6;
    puVar4 = puVar8;
    if (cVar2 != '\0') {
      if (cVar2 == '\r') goto LAB_00013db4;
      if (((cVar2 != ' ') && (cVar2 != '\t')) && (cVar2 != ',')) {
        unaff_D2 = unaff_D2 + 1;
        if ((cVar2 == '\"') || (cVar2 == '\'')) {
          puVar7 = (uint32_t *)(puVar8 + -4);
          *(char **)(puVar8 + -4) = in_A0;
          do {
            bVar9 = unaff_D5 == 0;
            unaff_D5 = unaff_D5 + -1;
            if (bVar9) goto LAB_00013db4;
            pcVar6 = in_A0 + 1;
            cVar3 = *in_A0;
            in_A0 = pcVar6;
          } while (cVar2 != cVar3);
        }
        else {
          puVar7 = (uint32_t *)(puVar8 + -4);
          *(char **)(puVar8 + -4) = pcVar6;
          do {
            bVar9 = unaff_D5 == 0;
            unaff_D5 = unaff_D5 + -1;
            if (bVar9) goto LAB_00013db4;
            pcVar6 = in_A0 + 1;
            cVar2 = *in_A0;
            in_A0 = pcVar6;
            puVar4 = puVar8 + -4;
            if (cVar2 == '\0') goto LAB_00013d4e;
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

void FUN_00013fda(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_00013fe0(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_00014108(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



uint32_t FUN_00014168(void)

{
  ushort *unaff_A3;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = 2;
  return 0xffffffff;
}



uint64_t FUN_00014192(void)

{
  uint32_t in_D1;
  ushort *unaff_A3;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = 0;
  return CONCAT44(0xffffffff,in_D1);
}



uint64_t FUN_000141b4(void)

{
  uint32_t in_D1;
  ushort *unaff_A3;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = 1;
  return CONCAT44(0xffffffff,in_D1);
}



uint64_t FUN_000141c0(void)

{
  uint32_t in_D1;
  ushort *unaff_A3;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = 3;
  return CONCAT44(0xffffffff,in_D1);
}



uint32_t FUN_000141dc(void)

{
  uint in_D1;
  ushort *unaff_A3;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(uint *)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1 | 8;
  return 0xffffffff;
}



uint32_t FUN_0001424c(void)

{
  ushort *unaff_A3;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = 4;
  return 0xffffffff;
}



void FUN_00014280(void)

{
  __m68k_trap(0);
  FUN_000143fe();
  return;
}



void FUN_000142b6(void)

{
  __m68k_trap(0);
  FUN_000143fe();
  return;
}



// WARNING: Control flow encountered bad instruction data

void FUN_000142e0(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_0001439e(void)

{
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



// WARNING: Control flow encountered bad instruction data

void FUN_000143d6(void)

{
  uint32_t in_D0;
  int unaff_A6;
  
  *(uint32_t*)(&gda->buffer[0x8000 - 0x6a1e]) = in_D0;
  __m68k_trap(0);
                    // [FIXED BY ANTIGRAVITY: Syscall Omitted]
}



void FUN_000143fe(void)

{
  uint32_t in_D1;
  int unaff_A6;
  bool in_CF;
  
  if (in_CF) {
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1;
  }
  return;
}



uint64_t FUN_00014408(void)

{
  uint32_t uVar1;
  uint32_t in_D1;
  int unaff_A5;
  int unaff_A6;
  bool in_CF;
  
  if (in_CF) {
    *(uint32_t*)(&gda->buffer[0x8000 - 0x7ff4]) = in_D1;
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = 0;
  }
  return CONCAT44(uVar1,*(uint32_t*)(unaff_A5 + -0xc));
}



void FUN_00014416(void)

{
  FUN_0001443c();
  func_0x00013956();
  __m68k_trap(0);
  return;
}



void FUN_0001442c(void)

{
  __m68k_trap(0);
  return;
}



void FUN_00014436(void)

{
  return;
}



void FUN_0001443c(void)

{
  return;
}


