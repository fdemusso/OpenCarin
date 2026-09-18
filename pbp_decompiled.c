typedef unsigned char   undefined;

typedef unsigned char    bool;
typedef unsigned int    uint;
typedef unsigned long long    ulonglong;
typedef unsigned char    undefined1;
typedef unsigned short    undefined2;
typedef unsigned int    undefined4;
typedef unsigned long long    undefined8;


string s_****_00000230;
undefined DAT_00000000;
byte DAT_00000039;
undefined1 LAB_00006878+3;

// WARNING: Control flow encountered bad instruction data

void FUN_00000194(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Instruction at (ram,0x00000286) overlaps instruction at (ram,0x00000284)
// 
// WARNING: Possible PIC construction at 0x0000025c: Changing call to branch
// WARNING: Possible PIC construction at 0x0000026a: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000025e)

undefined8 FUN_000001b6(short param_1)

{
  ushort uVar1;
  undefined4 in_D0;
  undefined4 in_D1;
  byte unaff_D6b;
  char *extraout_A0;
  char *pcVar2;
  int in_A1;
  char *pcVar3;
  char *extraout_A1;
  int unaff_A6;
  bool bVar4;
  undefined8 uVar5;
  
  uVar1 = (short)(param_1 + -0x80) >> 2;
  if (uVar1 == 0xf) {
    __m68k_trap(0);
    *(byte *)(in_A1 + -1) = *(byte *)(in_A1 + -1) | 0xc;
  }
  bVar4 = uVar1 < 0xf;
  FUN_0000737c();
  if (!bVar4) {
    return CONCAT44(in_D0,in_D1);
  }
  FUN_00000194();
  pcVar3 = (char *)(unaff_A6 + -0x6f64);
  pcVar2 = s______00000230;
  do {
    *pcVar3 = *pcVar2;
    *pcVar3 = '\r';
    uVar5 = FUN_00000194();
    __m68k_trap(0);
    unaff_D6b = unaff_D6b | 0xd8;
    pcVar2 = extraout_A0;
    pcVar3 = extraout_A1;
  } while (unaff_D6b != 0);
  return uVar5;
}



void FUN_0000028c(void)

{
  return;
}



void FUN_0000031c(void)

{
  int iVar1;
  
  FUN_0000678c();
  iVar1 = FUN_00003372();
  if (iVar1 != 0) {
    FUN_00002976();
    FUN_000067a8();
  }
  FUN_0000678c();
  iVar1 = FUN_00003372();
  if (iVar1 != 0) {
    FUN_00001f1c();
    FUN_000067a8();
  }
  return;
}



void FUN_00000962(void)

{
  byte *in_D0;
  int iVar1;
  bool bVar3;
  undefined4 uVar2;
  int iVar4;
  int unaff_A6;
  undefined8 uVar5;
  int local_58;
  int *local_54;
  undefined4 local_50;
  undefined2 local_4c;
  int iStack_4a;
  undefined2 uStack_46;
  int iStack_44;
  int iStack_40;
  
  iVar4 = 0;
  if (*(int *)(unaff_A6 + -0x6bd4) == 0) {
    iVar1 = FUN_00004a96(4);
    *(int *)(unaff_A6 + -0x6bd4) = iVar1;
    if (*(int *)(unaff_A6 + -0x6bd4) == 0) {
      FUN_00005608();
      FUN_0000562e();
    }
  }
  if (*in_D0 == 0) {
    local_50 = 5;
  }
  else {
    local_50 = 6;
  }
  local_4c = 1;
  bVar3 = FUN_0000237a();
  if (bVar3) {
    if (((*(ushort *)(in_D0 + 10) & 0xff) != 0) && ((*(ushort *)(in_D0 + 10) & 0xff) < 9)) {
      uVar2 = FUN_00002846(&local_58);
      if ((char)uVar2 == '\0') {
        iVar4 = FUN_00001116();
        if (iVar4 == 0) {
          FUN_00003660();
          uVar5 = FUN_00001d9a();
          local_58 = (int)((ulonglong)uVar5 >> 0x20);
          if (local_58 == -1) {
            iVar4 = 4;
          }
          else {
            FUN_00001878();
            FUN_00003698();
            iVar1 = FUN_00001878();
            local_54 = (int *)(local_58 + iVar1);
            if (*local_54 == *(int *)(in_D0 + 8)) {
              FUN_0000259c(*(undefined4 *)(in_D0 + 2),(uint)*in_D0);
            }
            else {
              FUN_0000678c();
              FUN_000016de();
              FUN_00001e0a();
              iVar4 = 3;
            }
          }
        }
      }
      goto LAB_00000b0c;
    }
    iVar4 = 2;
    FUN_0000678c();
  }
  else {
    iVar4 = 7;
    FUN_0000678c();
  }
  FUN_000016de();
LAB_00000b0c:
  iStack_4a = *(int *)(in_D0 + 8);
  uStack_46 = *(undefined2 *)(in_D0 + 0xc);
  iStack_44 = local_58;
  iStack_40 = iVar4;
  FUN_0000226a();
  return;
}



void FUN_00000a84(void)

{
  undefined4 *unaff_A3;
  undefined4 uStack0000000e;
  undefined2 uStack00000012;
  undefined4 uStack00000018;
  
  FUN_0000678c();
  FUN_000016de();
  FUN_00001e0a();
  uStack00000018 = 3;
  uStack0000000e = *unaff_A3;
  uStack00000012 = *(undefined2 *)(unaff_A3 + 1);
  FUN_0000226a();
  return;
}



void FUN_00001044(void)

{
  int unaff_A6;
  
  FUN_000067fc();
  *(undefined4 *)(unaff_A6 + -0x6bce) = 0xffffffff;
  return;
}



undefined4 FUN_00001116(void)

{
  uint *in_D0;
  int iVar1;
  int iVar2;
  int unaff_A6;
  undefined4 local_30;
  undefined4 local_20;
  
  if (*(char *)(unaff_A6 + -0x6bca) == '\x01') {
    FUN_000015ee();
    for (local_20 = 0; local_20 < 5; local_20 = local_20 + 1) {
      iVar1 = func_0x000067f0(0);
      if (iVar1 == -1) {
        FUN_0000678c();
LAB_000012a4:
        FUN_000016de();
      }
      else {
        iVar1 = (*in_D0 & 0xff) << 0xb;
        iVar2 = func_0x000067e0(iVar1);
        if (iVar2 == iVar1) {
          local_30 = 0;
          break;
        }
        if (iVar2 != -1) {
          FUN_0000678c();
          goto LAB_000012a4;
        }
        FUN_0000678c();
        FUN_000016de();
        if (*(int *)(unaff_A6 + -0x7ff4) == 0xd2) {
          FUN_0000678c();
          FUN_000016de();
          FUN_00005608();
          FUN_0000562e();
        }
      }
      local_30 = 8;
    }
    FUN_00001606();
  }
  else {
    local_30 = 5;
  }
  return local_30;
}



undefined4 FUN_00001520(void)

{
  undefined4 uVar1;
  
  FUN_0000252c();
  FUN_00001aa0();
  FUN_00001044();
  FUN_000016a2();
  uVar1 = FUN_00004c3a();
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}



void FUN_000015ee(void)

{
  int unaff_A6;
  
  if (*(char *)(unaff_A6 + -0x6bc6) == '\x01') {
    FUN_00004db2();
  }
  return;
}



void FUN_00001606(void)

{
  undefined4 uVar1;
  int unaff_A6;
  int local_28;
  int local_24 [5];
  
  if (*(char *)(unaff_A6 + -0x6bc6) == '\x01') {
    FUN_00004de2(local_24,&local_28);
    if (*(int *)(unaff_A6 + -0x6bc4) == 0) {
      uVar1 = FUN_00003372();
      *(undefined4 *)(unaff_A6 + -0x6bc4) = uVar1;
    }
    if (*(int *)(unaff_A6 + -0x6bc4) != 0) {
      FUN_00006788();
    }
  }
  return;
}



void FUN_000016a2(void)

{
  int unaff_A6;
  
  FUN_000067a8();
  *(undefined4 *)(unaff_A6 + -0x6bc4) = 0;
  return;
}



void FUN_000016de(void)

{
  char in_D1b;
  int unaff_A6;
  int local_28;
  int local_24 [3];
  int local_18;
  
  if (in_D1b == '\x01') {
    FUN_00006784();
  }
  local_18 = FUN_00003372();
  if (local_18 != 0) {
    if (*(char *)(unaff_A6 + -0x6bbc) == '\x01') {
      *(undefined1 *)(unaff_A6 + -0x6bbc) = 0;
      if (*(int *)(unaff_A6 + -0x6bc0) == -1) {
        FUN_00004d20();
      }
      FUN_00006788();
      FUN_00004db2();
    }
    FUN_00004de2(local_24,&local_28);
    FUN_00006788();
    FUN_000067a8();
  }
  return;
}



undefined4 FUN_00001878(void)

{
  int unaff_A6;
  
  return *(undefined4 *)(unaff_A6 + -0x727c);
}



void FUN_00001aa0(void)

{
  undefined3 extraout_var;
  bool bVar1;
  
  bVar1 = FUN_0000503c();
  if (CONCAT31(extraout_var,bVar1) == 0) {
    FUN_0000678c();
    FUN_000016de();
  }
  return;
}



int FUN_00001aea(void)

{
  int iVar1;
  int in_D0;
  int unaff_A6;
  
  iVar1 = *(int *)(unaff_A6 + -0x7ebc + in_D0 * 8);
  if (*(int *)(unaff_A6 + -0x7ebc + in_D0 * 8) == *(int *)(unaff_A6 + -0x7eb8 + in_D0 * 8)) {
    *(undefined4 *)(unaff_A6 + -0x7ebc + in_D0 * 8) = 0xffffffff;
    *(undefined4 *)(unaff_A6 + -0x7eb8 + in_D0 * 8) = 0xffffffff;
  }
  else {
    *(undefined4 *)(unaff_A6 + -0x7ebc + in_D0 * 8) =
         *(undefined4 *)(unaff_A6 + -0x7e74 + iVar1 * 0x10);
    *(undefined4 *)(unaff_A6 + -0x7e70 + *(int *)(unaff_A6 + -0x7ebc + in_D0 * 8) * 0x10) =
         0xffffffff;
  }
  *(undefined4 *)(unaff_A6 + -0x7e74 + iVar1 * 0x10) = 0xffffffff;
  *(undefined4 *)(unaff_A6 + -0x7e70 + iVar1 * 0x10) = 0xffffffff;
  return iVar1;
}



void FUN_00001b7c(void)

{
  int in_D0;
  int in_D1;
  int unaff_A6;
  
  *(undefined4 *)(unaff_A6 + -0x7e7c + in_D0 * 0x10) = 0;
  *(int *)(unaff_A6 + -0x7e78 + in_D0 * 0x10) = in_D1;
  if (*(int *)(unaff_A6 + -0x7ebc + in_D1 * 8) == -1) {
    *(undefined4 *)(unaff_A6 + -0x7e74 + in_D0 * 0x10) = 0xffffffff;
    *(undefined4 *)(unaff_A6 + -0x7e70 + in_D0 * 0x10) = 0xffffffff;
    *(int *)(unaff_A6 + -0x7ebc + in_D1 * 8) = in_D0;
  }
  else {
    *(undefined4 *)(unaff_A6 + -0x7e74 + in_D0 * 0x10) = 0xffffffff;
    *(undefined4 *)(unaff_A6 + -0x7e70 + in_D0 * 0x10) =
         *(undefined4 *)(unaff_A6 + -0x7eb8 + in_D1 * 8);
    *(int *)(unaff_A6 + -0x7e74 + *(int *)(unaff_A6 + -0x7eb8 + in_D1 * 8) * 0x10) = in_D0;
  }
  *(int *)(unaff_A6 + -0x7eb8 + in_D1 * 8) = in_D0;
  return;
}



void FUN_00001c1c(void)

{
  int in_D0;
  int in_D1;
  int unaff_A6;
  
  if (in_D0 == *(int *)(unaff_A6 + -0x7ebc + in_D1 * 8)) {
    *(undefined4 *)(unaff_A6 + -0x7ebc + in_D1 * 8) =
         *(undefined4 *)(unaff_A6 + -0x7e74 + in_D0 * 0x10);
  }
  else {
    *(undefined4 *)(unaff_A6 + -0x7e74 + *(int *)(unaff_A6 + -0x7e70 + in_D0 * 0x10) * 0x10) =
         *(undefined4 *)(unaff_A6 + -0x7e74 + in_D0 * 0x10);
  }
  if (in_D0 == *(int *)(unaff_A6 + -0x7eb8 + in_D1 * 8)) {
    *(undefined4 *)(unaff_A6 + -0x7eb8 + in_D1 * 8) =
         *(undefined4 *)(unaff_A6 + -0x7e70 + in_D0 * 0x10);
  }
  else {
    *(undefined4 *)(unaff_A6 + -0x7e70 + *(int *)(unaff_A6 + -0x7e74 + in_D0 * 0x10) * 0x10) =
         *(undefined4 *)(unaff_A6 + -0x7e70 + in_D0 * 0x10);
  }
  return;
}



undefined8 FUN_00001cae(void)

{
  ushort in_D0w;
  int iVar1;
  undefined4 in_D1;
  int iVar2;
  int iVar3;
  int unaff_A6;
  int local_24;
  
  if (8 < in_D0w) {
    FUN_000016de();
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
  while ((iVar2 <= *(int *)(unaff_A6 + -0x7274) && (local_24 == -1))) {
    if (*(int *)(unaff_A6 + -0x7ebc + iVar2 * 8) != -1) {
      local_24 = iVar2;
    }
    iVar2 = iVar2 + 1;
  }
  if (local_24 == -1) {
    iVar2 = -1;
  }
  else {
    iVar2 = FUN_00001aea();
    while (iVar3 < local_24) {
      local_24 = local_24 + -1;
      FUN_00001b7c();
    }
    *(undefined4 *)(unaff_A6 + -0x7e7c + iVar2 * 0x10) = 1;
    *(int *)(unaff_A6 + -0x7e78 + iVar2 * 0x10) = iVar3;
    iVar2 = iVar2 << 0xb;
  }
  return CONCAT44(iVar2,in_D1);
}



undefined8 FUN_00001d9a(void)

{
  bool bVar2;
  int iVar1;
  undefined4 in_D1;
  undefined8 uVar3;
  
  do {
    uVar3 = FUN_00001cae();
    iVar1 = (int)((ulonglong)uVar3 >> 0x20);
    if (iVar1 != -1) goto LAB_00001dfc;
    bVar2 = FUN_000020ce();
  } while (bVar2);
  FUN_0000678c();
  FUN_000016de();
  FUN_0000031c();
LAB_00001dfc:
  return CONCAT44(iVar1,in_D1);
}



void FUN_00001e0a(void)

{
  int in_D0;
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  int unaff_A6;
  
  if (in_D0 < 0) {
    in_D0 = in_D0 + 0x7ff;
  }
  uVar4 = in_D0 >> 0xb;
  iVar3 = *(int *)(unaff_A6 + -0x7e78 + uVar4 * 0x10);
  if (0 < iVar3) goto LAB_00001ed6;
  uVar1 = 1;
  while (((uVar1 = uVar4 ^ uVar1, *(int *)(unaff_A6 + -0x7e7c + uVar1 * 0x10) == 0 &&
          (iVar3 == *(int *)(unaff_A6 + -0x7e78 + uVar1 * 0x10))) &&
         (iVar3 < *(int *)(unaff_A6 + -0x7274)))) {
    FUN_00001c1c();
    uVar2 = uVar1;
    if ((int)uVar1 < (int)uVar4) {
      uVar2 = uVar4;
      uVar4 = uVar1;
    }
    *(undefined4 *)(unaff_A6 + -0x7e7c + uVar4 * 0x10) = 0;
    *(undefined4 *)(unaff_A6 + -0x7e74 + uVar4 * 0x10) = 0xffffffff;
    *(undefined4 *)(unaff_A6 + -0x7e70 + uVar4 * 0x10) = 0xffffffff;
    *(int *)(unaff_A6 + -0x7e78 + uVar4 * 0x10) = iVar3 + 1;
    *(undefined4 *)(unaff_A6 + -0x7e7c + uVar2 * 0x10) = 0xffffffff;
    *(undefined4 *)(unaff_A6 + -0x7e74 + uVar2 * 0x10) = 0xffffffff;
    *(undefined4 *)(unaff_A6 + -0x7e70 + uVar2 * 0x10) = 0xffffffff;
    *(undefined4 *)(unaff_A6 + -0x7e78 + uVar2 * 0x10) = 0xffffffff;
    iVar3 = iVar3 + 1;
    if (iVar3 < 1) {
      uVar1 = 1;
    }
    else {
LAB_00001ed6:
      uVar1 = 2 << (iVar3 - 1U & 0x3f);
    }
  }
  FUN_00001b7c();
  return;
}



void FUN_00001f1c(void)

{
  int iVar1;
  int unaff_A6;
  int local_14;
  
  for (local_14 = 0; local_14 < 0xc0; local_14 = local_14 + 1) {
    if (local_14 % 0x10 == 0) {
      FUN_00006788();
    }
    iVar1 = *(int *)(unaff_A6 + -0x7e7c + local_14 * 0x10);
    if ((iVar1 == 0) || (iVar1 != 1)) {
      FUN_00006788();
    }
    else {
      FUN_00006788();
    }
  }
  func_0x000067a4();
  return;
}



bool FUN_000020ce(void)

{
  bool bVar1;
  undefined8 uVar2;
  
  uVar2 = FUN_0000276a();
  bVar1 = (char)((ulonglong)uVar2 >> 0x20) == '\x01';
  if (bVar1) {
    FUN_00001e0a();
  }
  return bVar1;
}



bool FUN_0000226a(void)

{
  int iVar1;
  
  iVar1 = func_0x000067e8(0x34);
  if (iVar1 != 0x34) {
    FUN_00005608();
    FUN_0000562e();
  }
  return iVar1 == 0x34;
}



void FUN_0000230c(void)

{
  undefined4 *in_D0;
  int unaff_A6;
  
  *in_D0 = *(undefined4 *)(unaff_A6 + -0x7204);
  in_D0[1] = unaff_A6 + -0x7204;
  *(undefined4 **)(*(int *)(unaff_A6 + -0x7204) + 4) = in_D0;
  *(undefined4 **)(unaff_A6 + -0x7204) = in_D0;
  return;
}



void FUN_00002338(void)

{
  int *in_D0;
  
  *(int *)(*in_D0 + 4) = in_D0[1];
  *(int *)in_D0[1] = *in_D0;
  return;
}



void FUN_0000235a(void)

{
  int *in_D0;
  
  *(int **)(*in_D0 + 4) = in_D0;
  *(int **)in_D0[1] = in_D0;
  return;
}



bool FUN_0000237a(void)

{
  short in_D0w;
  int unaff_A6;
  
  return in_D0w == *(short *)(*(int *)(unaff_A6 + -0x7208) + 4);
}



undefined8 FUN_0000252c(void)

{
  undefined3 extraout_var;
  bool bVar2;
  undefined4 uVar1;
  undefined4 in_D1;
  undefined8 uVar3;
  
  bVar2 = FUN_0000503c();
  if ((CONCAT31(extraout_var,bVar2) == 0) ||
     (uVar3 = FUN_00004f58(), (int)((ulonglong)uVar3 >> 0x20) == 0)) {
    FUN_0000678c();
    FUN_000016de();
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return CONCAT44(uVar1,in_D1);
}



undefined4 FUN_0000259c(undefined4 param_1,int param_2)

{
  int *piVar1;
  int *in_D0;
  undefined4 uVar2;
  undefined4 in_D1;
  int iVar3;
  int unaff_A6;
  int local_1c;
  
  local_1c = *(int *)(unaff_A6 + -0x7208) + 10;
  iVar3 = 0;
  while (iVar3 < *(int *)(*(int *)(unaff_A6 + -0x7208) + 6)) {
    if ((*(short *)(local_1c + 0xc) == *(short *)(in_D0 + 1)) && (*(int *)(local_1c + 8) == *in_D0))
    goto LAB_000025fc;
    local_1c = local_1c + 0x1a;
    iVar3 = iVar3 + 1;
  }
  if (*(int *)(*(int *)(unaff_A6 + -0x7208) + 6) < 0xc0) {
    FUN_00004f80();
    *(int *)(local_1c + 8) = *in_D0;
    *(undefined2 *)(local_1c + 0xc) = *(undefined2 *)(in_D0 + 1);
    *(undefined4 *)(local_1c + 0x16) = 0;
    *(undefined4 *)(local_1c + 0x12) = 0;
    uVar2 = FUN_00002f2a(param_2);
    if ((char)uVar2 == '\0') {
      FUN_0000678c();
      FUN_000016de();
    }
    *(undefined4 *)(local_1c + 0xe) = in_D1;
    FUN_0000230c();
    piVar1 = (int *)(*(int *)(unaff_A6 + -0x7208) + 6);
    *piVar1 = *piVar1 + 1;
    FUN_00004fb0();
    uVar2 = 1;
  }
  else {
LAB_000025fc:
    FUN_000016de();
    uVar2 = 0;
  }
  return uVar2;
}



undefined8 FUN_0000276a(void)

{
  int *piVar1;
  undefined4 *in_D0;
  short sVar3;
  undefined4 uVar2;
  undefined4 in_D1;
  undefined4 *puVar4;
  undefined4 *puVar6;
  int unaff_A6;
  undefined1 local_19;
  undefined4 *puVar5;
  undefined4 *puVar7;
  
  FUN_00004f80();
  for (puVar6 = *(undefined4 **)(unaff_A6 + -0x71e6);
      ((undefined4 *)(unaff_A6 + -0x7204) != puVar6 &&
      ((*(int *)((int)puVar6 + 0x12) != 0 || (*(int *)((int)puVar6 + 0x16) != 0))));
      puVar6 = (undefined4 *)puVar6[1]) {
  }
  if ((undefined4 *)(unaff_A6 + -0x7204) == puVar6) {
    FUN_0000031c();
    FUN_000016de();
    *in_D0 = 0xffffffff;
    local_19 = 0;
  }
  else {
    *in_D0 = *(undefined4 *)((int)puVar6 + 0xe);
    FUN_00002338();
    piVar1 = (int *)(*(int *)(unaff_A6 + -0x7208) + 6);
    *piVar1 = *piVar1 + -1;
    if ((undefined4 *)
        (*(int *)(*(int *)(unaff_A6 + -0x7208) + 6) * 0x1a + *(int *)(unaff_A6 + -0x7208) + 10) !=
        puVar6) {
      sVar3 = 5;
      puVar4 = (undefined4 *)
               (*(int *)(unaff_A6 + -0x7208) + 10 +
               *(int *)(*(int *)(unaff_A6 + -0x7208) + 6) * 0x1a);
      do {
        puVar5 = puVar4 + 1;
        puVar7 = puVar6 + 1;
        *puVar6 = *puVar4;
        sVar3 = sVar3 + -1;
        puVar4 = puVar5;
        puVar6 = puVar7;
      } while (sVar3 != -1);
      *(undefined2 *)puVar7 = *(undefined2 *)puVar5;
      FUN_0000235a();
    }
    local_19 = 1;
  }
  uVar2 = FUN_00004fb0();
  return CONCAT44(CONCAT31((int3)((uint)uVar2 >> 8),local_19),in_D1);
}



undefined4 FUN_00002846(undefined4 *param_1)

{
  int *in_D0;
  undefined4 uVar1;
  int in_D1;
  int iVar2;
  int iVar3;
  int unaff_A6;
  uint local_20 [2];
  int local_18;
  
  iVar3 = *(int *)(unaff_A6 + -0x7208) + 10;
  iVar2 = 0;
  while( true ) {
    if (*(int *)(*(int *)(unaff_A6 + -0x7208) + 6) <= iVar2) {
      return 0;
    }
    if ((*(short *)(iVar3 + 0xc) == *(short *)(in_D0 + 1)) && (*(int *)(iVar3 + 8) == *in_D0))
    break;
    iVar3 = iVar3 + 0x1a;
    iVar2 = iVar2 + 1;
  }
  local_18 = in_D1;
  FUN_00004f80();
  uVar1 = FUN_00002ed6(local_20);
  if ((char)uVar1 == '\0') {
    FUN_0000678c();
    FUN_000016de();
  }
  uVar1 = FUN_00002f2a(local_18 + local_20[0]);
  if ((char)uVar1 == '\0') {
    FUN_0000678c();
    FUN_000016de();
  }
  if (iVar3 != *(int *)(unaff_A6 + -0x7204)) {
    FUN_00002338();
    FUN_0000230c();
  }
  FUN_00004fb0();
  *param_1 = *(undefined4 *)(iVar3 + 0xe);
  return 1;
}



void FUN_00002976(void)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  int unaff_A6;
  uint local_24 [3];
  
  FUN_00006788();
  FUN_00006788();
  FUN_00006788();
  piVar3 = (int *)(*(int *)(unaff_A6 + -0x7208) + 10);
  for (iVar1 = 0; iVar1 < *(int *)(*(int *)(unaff_A6 + -0x7208) + 6); iVar1 = iVar1 + 1) {
    if (unaff_A6 + -0x71ea == *piVar3) {
      FUN_0000678c();
    }
    else {
      FUN_0000678c();
    }
    if (unaff_A6 + -0x7204 == piVar3[1]) {
      FUN_0000678c();
    }
    else {
      FUN_0000678c();
    }
    FUN_00006788();
    for (iVar2 = 0; iVar2 < 0x10; iVar2 = iVar2 + 1) {
      FUN_00002ed6(local_24);
      if (local_24[0] == 0) {
        FUN_00006788();
      }
      else {
        FUN_00006788();
      }
    }
    FUN_0000679c();
    piVar3 = (int *)((int)piVar3 + 0x1a);
  }
  FUN_00006788();
  for (puVar4 = *(undefined4 **)(unaff_A6 + -0x7204); (undefined4 *)(unaff_A6 + -0x71ea) != puVar4;
      puVar4 = (undefined4 *)*puVar4) {
    FUN_00006788();
  }
  FUN_00006788();
  for (iVar1 = *(int *)(unaff_A6 + -0x71e6); unaff_A6 + -0x7204 != iVar1;
      iVar1 = *(int *)(iVar1 + 4)) {
    FUN_00006788();
  }
  FUN_00006788();
  return;
}



// WARNING: Removing unreachable block (ram,0x00002bcc)

void FUN_00002b8a(void)

{
  bool bVar1;
  int iVar2;
  int unaff_A6;
  
  iVar2 = 0;
  do {
    bVar1 = iVar2 < *(int *)(*(int *)(unaff_A6 + -0x7208) + 6);
    iVar2 = iVar2 + 1;
  } while (bVar1);
  return;
}



undefined4 FUN_00002ed6(uint *param_1)

{
  uint *in_D0;
  undefined4 uVar1;
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
    *(undefined4 *)(unaff_A6 + -0x71d0) = 2;
    uVar1 = 0;
  }
  return uVar1;
}



undefined4 FUN_00002f2a(int param_1)

{
  uint *in_D0;
  undefined4 uVar1;
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
  *(undefined4 *)(unaff_A6 + -0x71d0) = uVar1;
  return 0;
}



void FUN_0000302e(void)

{
  int in_D0;
  
  *(undefined4 *)(in_D0 + 6) = *(undefined4 *)(in_D0 + 2);
  return;
}



undefined4 * FUN_0000304a(void)

{
  int in_D0;
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(in_D0 + 6);
  if (puVar1 == (undefined4 *)0x0) {
    puVar1 = (undefined4 *)0x0;
  }
  else {
    *(undefined4 *)(in_D0 + 6) = *puVar1;
  }
  return puVar1;
}



undefined4 FUN_000030d2(void)

{
  int in_D0;
  undefined4 uVar1;
  int *in_D1;
  
  if (in_D1 == (int *)0x0) {
    uVar1 = 0;
  }
  else {
    if (in_D1[1] == 0) {
      *(int *)(in_D0 + 2) = *in_D1;
    }
    else {
      *(int *)in_D1[1] = *in_D1;
    }
    if (*in_D1 != 0) {
      *(int *)(*in_D1 + 4) = in_D1[1];
    }
    FUN_000032b8();
    uVar1 = 1;
  }
  return uVar1;
}



void FUN_00003138(void)

{
  int in_D0;
  undefined4 uVar1;
  undefined4 *puVar2;
  
  FUN_0000302e();
  while( true ) {
    puVar2 = FUN_0000304a();
    if (puVar2 == (undefined4 *)0x0) break;
    uVar1 = FUN_000030d2();
    if ((char)uVar1 == '\0') {
      FUN_00005608();
      FUN_0000562e();
    }
  }
  *(undefined4 *)(in_D0 + 2) = 0;
  *(undefined4 *)(in_D0 + 6) = 0;
  FUN_00003336();
  return;
}



int FUN_00003194(void)

{
  int in_D0;
  int iVar1;
  
  if (in_D0 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = in_D0 + 8;
  }
  return iVar1;
}



undefined8 FUN_000031e0(void)

{
  undefined8 uVar1;
  
  uVar1 = FUN_000032f6();
  return uVar1;
}



void FUN_000031f4(void)

{
  FUN_0000331c();
  return;
}



void FUN_000032b8(void)

{
  int in_D0;
  int in_D1;
  
  if ((0 < *(short *)(in_D0 + 0x104)) && (in_D1 != 0)) {
    *(undefined1 *)(in_D0 + (in_D1 - *(int *)(in_D0 + 0x106)) / (int)*(short *)(in_D0 + 0x100)) = 1;
    *(short *)(in_D0 + 0x104) = *(short *)(in_D0 + 0x104) + -1;
  }
  return;
}



undefined8 FUN_000032f6(void)

{
  int in_D0;
  undefined4 in_D1;
  
  return CONCAT44((int)*(short *)(in_D0 + 0x102) - (int)*(short *)(in_D0 + 0x104),in_D1);
}



int FUN_0000331c(void)

{
  int in_D0;
  
  return (int)*(short *)(in_D0 + 0x104);
}



void FUN_00003336(void)

{
  FUN_0000684c();
  return;
}



undefined4 FUN_00003372(void)

{
  char *pcVar1;
  undefined4 uVar2;
  char acStack_61 [93];
  
  FUN_000068fe();
  pcVar1 = FUN_000068e0();
  if ((pcVar1 + -0x61)[(int)&stack0x00000000] != '/') {
    FUN_0000691a();
  }
  FUN_0000691a();
  uVar2 = FUN_00006754();
  return uVar2;
}



ulonglong FUN_00003660(void)

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



undefined4 * FUN_00003698(void)

{
  ushort uVar1;
  uint *in_D0;
  undefined4 *puVar2;
  byte bVar3;
  int in_D1;
  undefined8 uVar4;
  
  if ((*(byte *)((int)in_D0 + 6) & 1) == 0) {
    uVar4 = FUN_0000694e((*in_D0 & 0xff) << 0xb);
    return (undefined4 *)((ulonglong)uVar4 >> 0x20);
  }
  FUN_00004798();
  uVar1 = *(ushort *)(in_D0 + 1);
  if (uVar1 == 0x14) {
LAB_000036c8:
    puVar2 = (undefined4 *)FUN_000046aa();
  }
  else {
    if (uVar1 < 0x15) {
      bVar3 = (byte)uVar1;
      if (bVar3 == 0xe) {
        puVar2 = (undefined4 *)FUN_00004320(in_D1);
        goto LAB_0000371c;
      }
      if ((bVar3 < 0xf) && (bVar3 == 0)) {
        puVar2 = (undefined4 *)FUN_00003ea0();
        goto LAB_0000371c;
      }
    }
    else if ((uVar1 == 0x16) || ((uVar1 < 0x17 && (uVar1 == 0x15)))) goto LAB_000036c8;
    puVar2 = FUN_00006a06((*in_D0 & 0xff) << 0xb);
  }
LAB_0000371c:
  *(undefined2 *)(in_D1 + 6) = 0;
  return puVar2;
}



void FUN_0000375e(void)

{
  ushort uVar1;
  ushort uVar2;
  ushort uVar3;
  undefined2 *puVar4;
  int in_D0;
  uint uVar5;
  ushort *in_D1;
  undefined2 *puVar6;
  undefined2 *puVar7;
  int unaff_A6;
  undefined8 uVar8;
  
  uVar1 = *in_D1;
  uVar2 = in_D1[1];
  uVar3 = *(ushort *)(unaff_A6 + -0x714c);
  puVar4 = (undefined2 *)(in_D0 + (uint)uVar1);
  puVar7 = (undefined2 *)0x0;
  while (puVar6 = puVar4,
        puVar6 < (undefined2 *)((int)(in_D0 + (uint)uVar1) + (uint)uVar2 * (uint)uVar3)) {
    uVar5 = FUN_000049d4();
    if (uVar5 == 0) {
      puVar6[1] = puVar7[1];
      puVar6[2] = puVar7[2];
    }
    else {
      uVar8 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
      puVar6[1] = (short)((ulonglong)uVar8 >> 0x20);
      uVar8 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c) + -1);
      puVar6[2] = (short)((ulonglong)uVar8 >> 0x20) << 1;
    }
    uVar8 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
    *puVar6 = (short)((ulonglong)uVar8 >> 0x20);
    puVar7 = puVar6;
    puVar4 = (undefined2 *)((int)puVar6 + (uint)*(ushort *)(unaff_A6 + -0x714c));
  }
  return;
}



void FUN_000037e4(void)

{
  int width;
  int width_00;
  int width_01;
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  short *psVar4;
  int in_D0;
  short sVar6;
  uint uVar5;
  ushort *in_D1;
  short *psVar7;
  short *psVar8;
  int unaff_A6;
  undefined8 uVar9;
  
  width = *(int *)(unaff_A6 + -0x713c);
  width_00 = *(int *)(unaff_A6 + -0x7138);
  width_01 = *(int *)(unaff_A6 + -0x7140);
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(unaff_A6 + -0x71bc);
  *(undefined2 *)(unaff_A6 + -0x7146) = 1;
  *(undefined2 *)(unaff_A6 + -0x7144) = 1;
  psVar4 = psVar3;
  psVar8 = (short *)0x0;
  while (psVar7 = psVar4, psVar7 < (short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2)) {
    if (psVar7 != psVar3) {
      FUN_0000694e((uint)*(ushort *)(unaff_A6 + -0x71bc));
    }
    uVar5 = FUN_000049d4();
    if (uVar5 != 0) {
      uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x7130));
      psVar7[9] = *(short *)(in_D0 + 0x28 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                  *(short *)(unaff_A6 + -0x71a4) * (short)((ulonglong)uVar9 >> 0x20);
      uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x712c));
      psVar7[10] = *(short *)(in_D0 + 0x30 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                   *(short *)(unaff_A6 + -0x71a2) * (short)((ulonglong)uVar9 >> 0x20);
      uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x7134));
      *(short *)((int)psVar7 + *(ushort *)(unaff_A6 + -0x71ba) + 4) =
           *(short *)(in_D0 + 0x2c + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
           *(short *)(unaff_A6 + -0x71a6) * (short)((ulonglong)uVar9 >> 0x20);
    }
    uVar5 = FUN_000049d4();
    if (uVar5 != 0) {
      uVar5 = FUN_00004a24();
      *(char *)(psVar7 + 5) = (char)uVar5;
      uVar5 = FUN_00004a24();
      *(char *)((int)psVar7 + 0xb) = (char)uVar5;
      uVar5 = FUN_00004a24();
      *(char *)(psVar7 + 8) = (char)uVar5;
      uVar5 = FUN_00004a24();
      *(char *)((int)psVar7 + 0x11) = (char)uVar5;
      uVar5 = FUN_00004a38();
      *(short *)((int)psVar7 + *(ushort *)(unaff_A6 + -0x71ba) + 2) = (short)uVar5;
    }
    uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c) + -1);
    *psVar7 = (short)((ulonglong)uVar9 >> 0x20) << 1;
    uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c) + -1);
    psVar7[1] = (short)((ulonglong)uVar9 >> 0x20) << 1;
    uVar5 = FUN_000049d4();
    if (uVar5 != 0) {
      uVar9 = FUN_000049bc(width_00);
      *(short *)(unaff_A6 + -0x7146) =
           *(short *)(in_D0 + 0x1c + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
           *(short *)(unaff_A6 + -0x71b4) * (short)((ulonglong)uVar9 >> 0x20);
    }
    psVar7[2] = *(short *)(unaff_A6 + -0x7146);
    uVar9 = FUN_000049bc(width);
    sVar6 = (short)((ulonglong)uVar9 >> 0x20);
    if (sVar6 == *(short *)(in_D0 + 0x12 + (uint)*(ushort *)(unaff_A6 + -0x71c2))) {
      psVar7[3] = 0;
    }
    else {
      psVar7[3] = sVar6 * *(short *)(unaff_A6 + -0x71bc) +
                  *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(unaff_A6 + -0x71c2));
    }
    uVar9 = FUN_000049bc(width);
    sVar6 = (short)((ulonglong)uVar9 >> 0x20);
    if (sVar6 == *(short *)(in_D0 + 0x12 + (uint)*(ushort *)(unaff_A6 + -0x71c2))) {
      psVar7[4] = 0;
    }
    else {
      psVar7[4] = sVar6 * *(short *)(unaff_A6 + -0x71bc) +
                  *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(unaff_A6 + -0x71c2));
    }
    uVar5 = FUN_000049d4();
    if (uVar5 == 0) {
      uVar5 = (uint)*(byte *)(unaff_A6 + -0x7142);
    }
    else {
      uVar5 = 0x10;
    }
    uVar9 = FUN_000049bc(uVar5);
    psVar7[6] = (short)((ulonglong)uVar9 >> 0x20);
    uVar5 = FUN_00004a24();
    *(char *)(psVar7 + 7) = (char)uVar5;
    uVar5 = FUN_00004a24();
    *(char *)((int)psVar7 + 0xf) = (char)uVar5;
    uVar5 = FUN_000049d4();
    if (uVar5 != 0) {
      uVar9 = FUN_000049bc(width_01);
      *(short *)(unaff_A6 + -0x7144) =
           *(short *)(in_D0 + 8 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
           *(short *)(unaff_A6 + -0x714c) * (short)((ulonglong)uVar9 >> 0x20);
    }
    *(undefined2 *)((int)psVar7 + (uint)*(ushort *)(unaff_A6 + -0x71ba)) =
         *(undefined2 *)(unaff_A6 + -0x7144);
    psVar8 = psVar7;
    psVar4 = (short *)((int)psVar7 + (uint)*(ushort *)(unaff_A6 + -0x71bc));
  }
  uVar5 = FUN_000049d4();
  if (uVar5 == 0) {
    psVar7[9] = psVar8[9];
    psVar7[10] = psVar8[10];
    *(undefined2 *)((int)psVar7 + *(ushort *)(unaff_A6 + -0x71ba) + 4) =
         *(undefined2 *)((int)psVar8 + *(ushort *)(unaff_A6 + -0x71ba) + 4);
  }
  else {
    uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x7130));
    psVar7[9] = *(short *)(in_D0 + 0x28 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                *(short *)(unaff_A6 + -0x71a4) * (short)((ulonglong)uVar9 >> 0x20);
    uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x712c));
    psVar7[10] = *(short *)(in_D0 + 0x30 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                 *(short *)(unaff_A6 + -0x71a2) * (short)((ulonglong)uVar9 >> 0x20);
    uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x7134));
    *(short *)((int)psVar7 + *(ushort *)(unaff_A6 + -0x71ba) + 4) =
         *(short *)(in_D0 + 0x2c + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
         *(short *)(unaff_A6 + -0x71a6) * (short)((ulonglong)uVar9 >> 0x20);
  }
  uVar5 = FUN_000049d4();
  if (uVar5 != 0) {
    uVar9 = FUN_000049bc(width_00);
    *(short *)(unaff_A6 + -0x7146) =
         *(short *)(in_D0 + 0x1c + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
         *(short *)(unaff_A6 + -0x71b4) * (short)((ulonglong)uVar9 >> 0x20);
  }
  psVar7[2] = *(short *)(unaff_A6 + -0x7146);
  return;
}



void FUN_00003ad4(void)

{
  int width;
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  short *psVar4;
  int in_D0;
  uint uVar5;
  ushort *in_D1;
  short sVar6;
  short *psVar7;
  short *psVar8;
  int unaff_A6;
  undefined8 uVar9;
  
  width = *(int *)(unaff_A6 + -0x713c);
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(unaff_A6 + -0x71ac);
  psVar4 = psVar3;
  psVar8 = (short *)0x0;
  do {
    psVar7 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar7) {
      return;
    }
    uVar5 = FUN_000049d4();
    if (uVar5 == 0) {
      *(undefined1 *)(psVar7 + 3) = *(undefined1 *)(psVar8 + 3);
      *(undefined1 *)((int)psVar7 + 7) = *(undefined1 *)((int)psVar8 + 7);
    }
    else {
      uVar5 = FUN_00004a24();
      *(char *)(psVar7 + 3) = (char)uVar5;
      uVar5 = FUN_000049fc();
      *(char *)((int)psVar7 + 7) = (char)uVar5;
    }
    if (psVar7 == psVar3) {
      uVar5 = FUN_00004a38();
      *psVar7 = (short)uVar5;
LAB_00003b8c:
      uVar5 = FUN_00004a38();
      psVar7[1] = (short)uVar5;
    }
    else {
      uVar5 = FUN_000049d4();
      if (uVar5 == 0) {
        uVar9 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar6 = (short)((ulonglong)uVar9 >> 0x20) + (short)uVar9;
LAB_00003b7a:
        *psVar7 = sVar6;
      }
      else {
        uVar5 = FUN_000049d4();
        if (uVar5 == 0) {
          uVar9 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
          sVar6 = *psVar8 - (short)((ulonglong)uVar9 >> 0x20);
          goto LAB_00003b7a;
        }
        uVar5 = FUN_00004a38();
        *psVar7 = (short)uVar5;
      }
      uVar5 = FUN_000049d4();
      if (uVar5 == 0) {
        uVar9 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar6 = (short)((ulonglong)uVar9 >> 0x20) + (short)uVar9;
      }
      else {
        uVar5 = FUN_000049d4();
        if (uVar5 != 0) goto LAB_00003b8c;
        uVar9 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar6 = psVar8[1] - (short)((ulonglong)uVar9 >> 0x20);
      }
      psVar7[1] = sVar6;
    }
    uVar9 = FUN_000049bc(width);
    psVar7[2] = *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                *(short *)(unaff_A6 + -0x71bc) * (short)((ulonglong)uVar9 >> 0x20);
    psVar4 = (short *)((int)psVar7 + (uint)*(ushort *)(unaff_A6 + -0x71ac));
    psVar8 = psVar7;
  } while( true );
}



void FUN_00003bfa(void)

{
  int width;
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  short *psVar4;
  int in_D0;
  uint uVar5;
  undefined4 uVar6;
  ushort *in_D1;
  short sVar7;
  short *psVar8;
  short *psVar9;
  int unaff_A6;
  undefined8 uVar10;
  
  width = *(int *)(unaff_A6 + -0x713c);
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(unaff_A6 + -0x71c0);
  psVar4 = psVar3;
  psVar9 = (short *)0x0;
  do {
    psVar8 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar8) {
      return;
    }
    uVar5 = FUN_000049d4();
    if (uVar5 == 0) {
      *(undefined1 *)(psVar8 + 3) = *(undefined1 *)(psVar9 + 3);
      *(undefined1 *)((int)psVar8 + 7) = *(undefined1 *)((int)psVar9 + 7);
    }
    else {
      uVar5 = FUN_00004a24();
      *(char *)(psVar8 + 3) = (char)uVar5;
      uVar5 = FUN_000049fc();
      *(char *)((int)psVar8 + 7) = (char)uVar5;
    }
    if (psVar8 == psVar3) {
      uVar5 = FUN_00004a38();
      *psVar8 = (short)uVar5;
LAB_00003cb2:
      uVar5 = FUN_00004a38();
      psVar8[1] = (short)uVar5;
    }
    else {
      uVar5 = FUN_000049d4();
      if (uVar5 == 0) {
        uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar7 = (short)((ulonglong)uVar10 >> 0x20) + (short)uVar10;
LAB_00003ca0:
        *psVar8 = sVar7;
      }
      else {
        uVar5 = FUN_000049d4();
        if (uVar5 == 0) {
          uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
          sVar7 = *psVar9 - (short)((ulonglong)uVar10 >> 0x20);
          goto LAB_00003ca0;
        }
        uVar5 = FUN_00004a38();
        *psVar8 = (short)uVar5;
      }
      uVar5 = FUN_000049d4();
      if (uVar5 == 0) {
        uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar7 = (short)((ulonglong)uVar10 >> 0x20) + (short)uVar10;
      }
      else {
        uVar5 = FUN_000049d4();
        if (uVar5 != 0) goto LAB_00003cb2;
        uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar7 = psVar9[1] - (short)((ulonglong)uVar10 >> 0x20);
      }
      psVar8[1] = sVar7;
    }
    uVar10 = FUN_000049bc(width);
    psVar8[2] = *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                *(short *)(unaff_A6 + -0x71bc) * (short)((ulonglong)uVar10 >> 0x20);
    uVar6 = FUN_00004a50();
    *(undefined4 *)((int)psVar8 + (uint)*(ushort *)(unaff_A6 + -0x71ac)) = uVar6;
    uVar10 = FUN_000049bc(0xe);
    *(short *)((int)psVar8 + *(ushort *)(unaff_A6 + -0x71ac) + 4) =
         (short)((ulonglong)uVar10 >> 0x20);
    psVar4 = (short *)((int)psVar8 + (uint)*(ushort *)(unaff_A6 + -0x71c0));
    psVar9 = psVar8;
  } while( true );
}



void FUN_00003d3e(void)

{
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  short *psVar4;
  int in_D0;
  uint uVar5;
  ushort *in_D1;
  short sVar6;
  short *psVar7;
  short *psVar8;
  int unaff_A6;
  undefined8 uVar9;
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(unaff_A6 + -0x71b4);
  psVar4 = psVar3;
  psVar8 = (short *)0x0;
  do {
    psVar7 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar7) {
      return;
    }
    if (psVar7 == psVar3) {
      uVar5 = FUN_00004a38();
      *psVar7 = (short)uVar5;
LAB_00003dc4:
      uVar5 = FUN_00004a38();
      psVar7[1] = (short)uVar5;
    }
    else {
      uVar5 = FUN_000049d4();
      if (uVar5 == 0) {
        uVar9 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar6 = (short)((ulonglong)uVar9 >> 0x20) + (short)uVar9;
LAB_00003db2:
        *psVar7 = sVar6;
      }
      else {
        uVar5 = FUN_000049d4();
        if (uVar5 == 0) {
          uVar9 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
          sVar6 = *psVar8 - (short)((ulonglong)uVar9 >> 0x20);
          goto LAB_00003db2;
        }
        uVar5 = FUN_00004a38();
        *psVar7 = (short)uVar5;
      }
      uVar5 = FUN_000049d4();
      if (uVar5 == 0) {
        uVar9 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar6 = (short)((ulonglong)uVar9 >> 0x20) + (short)uVar9;
      }
      else {
        uVar5 = FUN_000049d4();
        if (uVar5 != 0) goto LAB_00003dc4;
        uVar9 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7141));
        sVar6 = psVar8[1] - (short)((ulonglong)uVar9 >> 0x20);
      }
      psVar7[1] = sVar6;
    }
    uVar5 = FUN_000049fc();
    *(char *)(psVar7 + 2) = (char)uVar5;
    psVar4 = (short *)((int)psVar7 + (uint)*(ushort *)(unaff_A6 + -0x71b4));
    psVar8 = psVar7;
  } while( true );
}



void FUN_00003e1c(void)

{
  undefined2 *puVar1;
  int in_D0;
  uint uVar2;
  ushort *in_D1;
  int unaff_A6;
  undefined8 uVar3;
  undefined2 *local_14;
  
  local_14 = (undefined2 *)(in_D0 + (uint)*in_D1);
  puVar1 = (undefined2 *)((int)local_14 + (uint)in_D1[1] * (uint)*(ushort *)(unaff_A6 + -0x71a6));
  for (; local_14 < puVar1;
      local_14 = (undefined2 *)((int)local_14 + (uint)*(ushort *)(unaff_A6 + -0x71a6))) {
    uVar3 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
    *local_14 = (short)((ulonglong)uVar3 >> 0x20);
    uVar3 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
    local_14[1] = (short)((ulonglong)uVar3 >> 0x20);
    uVar2 = FUN_000049d4();
    local_14[2] = (short)uVar2;
  }
  return;
}



void FUN_00003ea0(void)

{
  int in_D0;
  byte bVar1;
  int unaff_A6;
  
  FUN_000047da(in_D0,(uint)*(ushort *)(unaff_A6 + -0x71b6));
  bVar1 = FUN_00004a68((uint)*(ushort *)(in_D0 + 10 + (uint)*(ushort *)(unaff_A6 + -0x71c2)));
  *(uint *)(unaff_A6 + -0x7140) = (uint)bVar1;
  bVar1 = FUN_00004a68(*(ushort *)(in_D0 + 0x12 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) + 1);
  *(uint *)(unaff_A6 + -0x713c) = (uint)bVar1;
  bVar1 = FUN_00004a68(*(ushort *)(in_D0 + 0x1e + (uint)*(ushort *)(unaff_A6 + -0x71c2)) + 1);
  *(uint *)(unaff_A6 + -0x7138) = (uint)bVar1;
  bVar1 = FUN_00004a68(*(ushort *)(in_D0 + 0x2a + (uint)*(ushort *)(unaff_A6 + -0x71c2)) + 1);
  *(uint *)(unaff_A6 + -0x7130) = (uint)bVar1;
  bVar1 = FUN_00004a68(*(ushort *)(in_D0 + 0x2e + (uint)*(ushort *)(unaff_A6 + -0x71c2)) + 1);
  *(uint *)(unaff_A6 + -0x7134) = (uint)bVar1;
  bVar1 = FUN_00004a68(*(ushort *)(in_D0 + 0x32 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) + 1);
  *(uint *)(unaff_A6 + -0x712c) = (uint)bVar1;
  FUN_000047da(unaff_A6 + -0x7142,2);
  FUN_00004800();
  FUN_00004800();
  FUN_00004800();
  if (*(short *)(in_D0 + 0x32 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) != 0) {
    FUN_00004800();
  }
  FUN_00004994();
  FUN_0000375e();
  FUN_0000375e();
  FUN_0000375e();
  FUN_000037e4();
  FUN_00003ad4();
  FUN_00003bfa();
  FUN_00003d3e();
  if (*(short *)(in_D0 + 0x2e + (uint)*(ushort *)(unaff_A6 + -0x71c2)) != 0) {
    FUN_00003e1c();
  }
  FUN_00004862();
  return;
}



void FUN_000040b0(short param_1,uint param_2)

{
  ushort uVar1;
  ushort uVar2;
  short *psVar3;
  int iVar4;
  int in_D0;
  uint uVar5;
  char cVar6;
  ushort *in_D1;
  ushort uVar7;
  undefined2 *puVar8;
  undefined2 *puVar9;
  int unaff_A6;
  undefined8 uVar10;
  
  if (in_D1[1] != 0) {
    uVar2 = in_D1[1];
    uVar1 = *in_D1;
    puVar9 = (undefined2 *)0x0;
    for (uVar7 = *in_D1; uVar7 <= (ushort)(uVar1 + (uVar2 - 1) * param_1); uVar7 = param_1 + uVar7)
    {
      puVar8 = puVar9;
      if (param_2 < 0x100) {
        cVar6 = (char)param_2;
        if (cVar6 == '\x1c') {
          puVar8 = (undefined2 *)(in_D0 + (uint)uVar7);
          uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
          *puVar8 = (short)((ulonglong)uVar10 >> 0x20);
          uVar5 = FUN_000049e8();
          *(char *)(puVar8 + 1) = (char)uVar5;
          uVar5 = FUN_000049d4();
          *(char *)(puVar8 + 1) = (char)uVar5 * '\x10' + *(char *)(puVar8 + 1);
          uVar5 = FUN_000049d4();
          if (uVar5 == 0) {
            *(undefined1 *)((int)puVar8 + 3) = *(undefined1 *)((int)puVar9 + 3);
            puVar8[2] = puVar9[2];
          }
          else {
            uVar5 = FUN_000049fc();
            *(char *)((int)puVar8 + 3) = (char)uVar5;
            uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
            puVar8[2] = (short)((ulonglong)uVar10 >> 0x20);
          }
          uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x7122));
          puVar8[3] = *(short *)(in_D0 + 4 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                      *(short *)(unaff_A6 + -0x714a) * (short)((ulonglong)uVar10 >> 0x20);
        }
        else if (cVar6 == '\x1f') {
          psVar3 = (short *)(in_D0 + (uint)uVar7);
          uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x7126));
          *psVar3 = *(short *)(in_D0 + 8 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                    *(short *)(unaff_A6 + -29000) * (short)((ulonglong)uVar10 >> 0x20);
          uVar5 = FUN_000049d4();
          if (uVar5 == 0) {
            *(undefined1 *)(psVar3 + 1) = 1;
          }
          else {
            uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x7126));
            *(char *)(psVar3 + 1) = (char)((ulonglong)uVar10 >> 0x20) + '\x02';
          }
          uVar5 = FUN_000049d4();
          *(char *)((int)psVar3 + 3) = (char)uVar5;
        }
        else if (cVar6 == '!') {
          iVar4 = in_D0 + (uint)uVar7;
          FUN_000049bc(*(int *)(unaff_A6 + -0x711e));
          FUN_0000694e(8);
          FUN_0000694e(4);
          uVar5 = FUN_000049d4();
          if (uVar5 == 0) {
            *(undefined2 *)(iVar4 + 8) = 0x7fff;
            *(undefined2 *)(iVar4 + 10) = 0x7fff;
            *(undefined2 *)(iVar4 + 0xc) = 0x7fff;
            *(undefined2 *)(iVar4 + 0xe) = 0x7fff;
          }
          else {
            uVar5 = FUN_000049d4();
            if (uVar5 == 0) {
              uVar5 = (uint)*(byte *)(unaff_A6 + -0x7128);
            }
            else {
              uVar5 = 0x10;
            }
            uVar10 = FUN_000049bc(uVar5);
            *(short *)(iVar4 + 8) = (short)((ulonglong)uVar10 >> 0x20);
            uVar5 = FUN_000049d4();
            if (uVar5 == 0) {
              uVar5 = (uint)*(byte *)(unaff_A6 + -0x7128);
            }
            else {
              uVar5 = 0x10;
            }
            uVar10 = FUN_000049bc(uVar5);
            *(short *)(iVar4 + 10) = (short)((ulonglong)uVar10 >> 0x20);
            uVar5 = FUN_000049d4();
            if (uVar5 == 0) {
              uVar5 = (uint)*(byte *)(unaff_A6 + -0x7128);
            }
            else {
              uVar5 = 0x10;
            }
            uVar10 = FUN_000049bc(uVar5);
            *(short *)(iVar4 + 0xc) = (short)((ulonglong)uVar10 >> 0x20);
            uVar5 = FUN_000049d4();
            if (uVar5 == 0) {
              uVar5 = (uint)*(byte *)(unaff_A6 + -0x7128);
            }
            else {
              uVar5 = 0x10;
            }
            uVar10 = FUN_000049bc(uVar5);
            *(short *)(iVar4 + 0xe) = (short)((ulonglong)uVar10 >> 0x20);
          }
          uVar10 = FUN_000049bc(0xd);
          *(short *)(iVar4 + 0x14) = (short)((ulonglong)uVar10 >> 0x20);
          *(short *)(iVar4 + 0x14) = *(short *)(iVar4 + 0x14) << 1;
          uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x7127));
          *(short *)(iVar4 + 0x16) = (short)((ulonglong)uVar10 >> 0x20);
        }
      }
      puVar9 = puVar8;
    }
  }
  return;
}



// WARNING: Unknown calling convention

void FUN_00004320(int width)

{
  byte bVar1;
  int unaff_A6;
  
  FUN_000047da(width,(uint)*(ushort *)(unaff_A6 + -0x7176));
  bVar1 = FUN_00004a68((uint)*(ushort *)(width + 10 + (uint)*(ushort *)(unaff_A6 + -0x71c2)));
  *(uint *)(unaff_A6 + -0x7126) = (uint)bVar1;
  bVar1 = FUN_00004a68((uint)*(ushort *)(width + 6 + (uint)*(ushort *)(unaff_A6 + -0x71c2)));
  *(uint *)(unaff_A6 + -0x7122) = (uint)bVar1;
  FUN_000047da(unaff_A6 + -0x711a,2);
  FUN_00004842(unaff_A6 + -0x7118,*(short *)(unaff_A6 + -0x711a) * 0xc);
  bVar1 = FUN_00004a68((int)*(short *)(unaff_A6 + -0x711a));
  *(uint *)(unaff_A6 + -0x711e) = (uint)bVar1;
  FUN_000047da(unaff_A6 + -0x7128,2);
  FUN_00004994();
  FUN_000040b0(*(short *)(unaff_A6 + -0x7172),0x1c);
  FUN_000040b0(*(short *)(unaff_A6 + -0x714a),0x1f);
  FUN_000040b0(*(short *)(unaff_A6 + -29000),0x21);
  FUN_00004862();
  return;
}



void FUN_0000441a(short param_1,uint param_2)

{
  undefined1 *puVar1;
  undefined2 *puVar2;
  int in_D0;
  short sVar5;
  undefined4 uVar3;
  uint uVar4;
  ushort *in_D1;
  short sVar6;
  byte bVar7;
  ushort uVar8;
  undefined4 *puVar9;
  short *unaff_A3;
  short *unaff_A4;
  int unaff_A6;
  undefined8 uVar10;
  ushort local_2e;
  
  if (in_D1[1] != 0) {
    local_2e = *in_D1 + (in_D1[1] - 1) * param_1;
    bVar7 = (byte)param_2;
    if ((param_2 < 0x100) && (((bVar7 == 0x24 || (bVar7 == 0x25)) || (bVar7 == 0x26)))) {
      local_2e = param_1 + local_2e;
    }
    if (*(short *)(in_D0 + 0x10 +
                  (uint)*(ushort *)(unaff_A6 + -0x714e) + (uint)*(ushort *)(unaff_A6 + -0x71c2)) ==
        0) {
      sVar5 = 8;
    }
    else {
      sVar5 = 4;
    }
    for (uVar8 = *in_D1; uVar8 <= local_2e; uVar8 = param_1 + uVar8) {
      if (param_2 == 0x24) {
        puVar1 = (undefined1 *)(in_D0 + (uint)uVar8);
        uVar4 = FUN_00004a10();
        *puVar1 = (char)uVar4;
        uVar4 = FUN_000049d4();
        puVar1[1] = (char)uVar4;
        uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c) + -1);
        *(short *)(puVar1 + 2) = (short)((ulonglong)uVar10 >> 0x20) << 1;
      }
      else if (param_2 < 0x25) {
        if (bVar7 == 10) {
          puVar9 = (undefined4 *)(in_D0 + (uint)uVar8);
          uVar3 = FUN_00004a50();
          *puVar9 = uVar3;
          uVar3 = FUN_00004a50();
LAB_00004654:
          puVar9[1] = uVar3;
        }
        else {
          if ((10 < bVar7) || (param_2 != 9)) goto LAB_00004692;
          unaff_A3 = (short *)(in_D0 + (uint)uVar8);
          if (uVar8 == *in_D1) {
            uVar4 = FUN_00004a38();
            *unaff_A3 = (short)uVar4;
LAB_00004524:
            uVar4 = FUN_00004a38();
            unaff_A3[1] = (short)uVar4;
          }
          else {
            uVar4 = FUN_000049d4();
            if (uVar4 == 0) {
              uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x710e));
              sVar6 = (short)((ulonglong)uVar10 >> 0x20) + (short)uVar10;
LAB_00004512:
              *unaff_A3 = sVar6;
            }
            else {
              uVar4 = FUN_000049d4();
              if (uVar4 == 0) {
                uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x710e));
                sVar6 = *unaff_A4 - (short)((ulonglong)uVar10 >> 0x20);
                goto LAB_00004512;
              }
              uVar4 = FUN_00004a38();
              *unaff_A3 = (short)uVar4;
            }
            uVar4 = FUN_000049d4();
            if (uVar4 == 0) {
              uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x710e));
              sVar6 = (short)((ulonglong)uVar10 >> 0x20) + (short)uVar10;
            }
            else {
              uVar4 = FUN_000049d4();
              if (uVar4 != 0) goto LAB_00004524;
              uVar10 = FUN_000049bc((uint)*(byte *)(unaff_A6 + -0x710e));
              sVar6 = unaff_A4[1] - (short)((ulonglong)uVar10 >> 0x20);
            }
            unaff_A3[1] = sVar6;
          }
        }
      }
      else {
        if (param_2 == 0x26) {
          puVar9 = (undefined4 *)(in_D0 + (uint)uVar8);
          uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
          *(short *)puVar9 = (short)((ulonglong)uVar10 >> 0x20);
          uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x7114));
          *(short *)((int)puVar9 + 2) = sVar5 * (short)((ulonglong)uVar10 >> 0x20) + (short)uVar10;
          uVar4 = FUN_000049d4();
          if (uVar4 == 0) {
            uVar4 = (uint)*(byte *)(unaff_A6 + -0x7110);
          }
          else {
            uVar4 = 0x20;
          }
          uVar10 = FUN_000049bc(uVar4);
          uVar3 = (undefined4)((ulonglong)uVar10 >> 0x20);
          goto LAB_00004654;
        }
        if ((param_2 < 0x27) && (param_2 == 0x25)) {
          puVar2 = (undefined2 *)(in_D0 + (uint)uVar8);
          uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
          *puVar2 = (short)((ulonglong)uVar10 >> 0x20);
          uVar10 = FUN_000049bc(*(int *)(unaff_A6 + -0x7114));
          puVar2[1] = sVar5 * (short)((ulonglong)uVar10 >> 0x20) + (short)uVar10;
          uVar4 = FUN_000049d4();
          if (uVar4 == 0) {
            uVar4 = (uint)*(byte *)(unaff_A6 + -0x710f);
          }
          else {
            uVar4 = 0x20;
          }
          uVar10 = FUN_000049bc(uVar4);
          *(int *)(puVar2 + 2) = (int)((ulonglong)uVar10 >> 0x20);
          uVar3 = FUN_00004a50();
          *(undefined4 *)(puVar2 + 4) = uVar3;
          uVar3 = FUN_00004a50();
          *(undefined4 *)(puVar2 + 6) = uVar3;
        }
      }
LAB_00004692:
      unaff_A4 = unaff_A3;
    }
  }
  return;
}



void FUN_000046aa(void)

{
  int in_D0;
  byte bVar1;
  int unaff_A6;
  short sVar2;
  uint uVar3;
  
  FUN_000047da(in_D0,(uint)*(ushort *)(unaff_A6 + -0x7152));
  bVar1 = FUN_00004a68(*(ushort *)(in_D0 + 0xe + (uint)*(ushort *)(unaff_A6 + -0x71c2)) + 1);
  *(uint *)(unaff_A6 + -0x7114) = (uint)bVar1;
  FUN_000047da(unaff_A6 + -0x7110,4);
  FUN_00004994();
  FUN_0000441a(*(short *)(unaff_A6 + -0x7156),0x24);
  FUN_0000441a(*(short *)(unaff_A6 + -0x7158),0x25);
  FUN_0000441a(*(short *)(unaff_A6 + -0x7154),0x26);
  if (*(short *)(in_D0 + 0x10 +
                (uint)*(ushort *)(unaff_A6 + -0x714e) + (uint)*(ushort *)(unaff_A6 + -0x71c2)) == 0)
  {
    uVar3 = 10;
    sVar2 = 8;
  }
  else {
    uVar3 = 9;
    sVar2 = 4;
  }
  FUN_0000441a(sVar2,uVar3);
  FUN_00004862();
  return;
}



void FUN_00004798(void)

{
  int in_D0;
  byte bVar1;
  int unaff_A6;
  
  bVar1 = FUN_00004a68((uint)(*(ushort *)(in_D0 + 6) & 0xff) << 0xb);
  *(uint *)(unaff_A6 + -0x710c) = (uint)bVar1;
  *(int *)(unaff_A6 + -0x7108) = in_D0;
  return;
}



// WARNING: Unknown calling convention

void FUN_000047da(int param_1,int param_2)

{
  int unaff_A6;
  
  FUN_0000694e(param_2);
  *(int *)(unaff_A6 + -0x7108) = param_2 + *(int *)(unaff_A6 + -0x7108);
  return;
}



void FUN_00004800(void)

{
  int in_D0;
  ushort *in_D1;
  ushort in_stack_00000006;
  char in_stack_0000000b;
  int local_14;
  
  local_14 = (uint)in_D1[1] * (uint)in_stack_00000006;
  if (in_stack_0000000b != '\0') {
    local_14 = (uint)in_stack_00000006 + local_14;
  }
  FUN_000047da(in_D0 + (uint)*in_D1,local_14);
  return;
}



// WARNING: Unknown calling convention

void FUN_00004842(int param_1,int param_2)

{
  int unaff_A6;
  
  *(undefined4 *)param_1 = *(undefined4 *)(unaff_A6 + -0x7108);
  *(int *)(unaff_A6 + -0x7108) = param_2 + *(int *)(unaff_A6 + -0x7108);
  return;
}



void FUN_00004862(void)

{
  byte *pbVar1;
  int in_D0;
  uint uVar2;
  uint uVar3;
  char cVar4;
  int extraout_D1;
  byte bVar5;
  byte bVar6;
  int iVar7;
  byte *pbVar8;
  int unaff_A6;
  undefined8 uVar9;
  byte local_e8 [192];
  ushort local_28;
  ushort local_26;
  int local_24;
  
  local_24 = in_D0;
  uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
  local_26 = (ushort)((ulonglong)uVar9 >> 0x20);
  uVar9 = FUN_000049bc(*(int *)(unaff_A6 + -0x710c));
  local_28 = (ushort)((ulonglong)uVar9 >> 0x20);
  if ((local_26 != 0) || (local_28 != 0)) {
    pbVar8 = local_e8;
    for (bVar5 = 0; bVar5 < 6; bVar5 = bVar5 + 1) {
      uVar9 = FUN_000049bc(5);
      *pbVar8 = (byte)((ulonglong)uVar9 >> 0x20);
      for (bVar6 = 0; bVar6 < *pbVar8; bVar6 = bVar6 + 1) {
        uVar2 = FUN_00004a10();
        pbVar8[extraout_D1 + 1] = (byte)uVar2;
      }
      pbVar8 = pbVar8 + 0x20;
    }
    uVar2 = (uint)local_28;
    for (pbVar8 = (byte *)(local_24 + (uint)local_26); pbVar8 <= (byte *)(local_24 + uVar2);
        pbVar8 = pbVar8 + 1) {
      uVar3 = FUN_000049e8();
      if (uVar3 < 0x100) {
        cVar4 = (char)uVar3;
        if (cVar4 == '\0') {
          uVar3 = FUN_000049d4();
          iVar7 = unaff_A6 + -0x6bb0;
        }
        else if (cVar4 == '\x01') {
          uVar3 = FUN_000049e8();
          iVar7 = unaff_A6 + -0x6bae;
        }
        else {
          if (cVar4 != '\x02') goto LAB_00004902;
          uVar3 = FUN_000049fc();
          iVar7 = unaff_A6 + -0x6baa;
        }
LAB_00004954:
        *pbVar8 = *(byte *)(iVar7 + uVar3);
      }
      else {
LAB_00004902:
        uVar3 = FUN_00004a10();
        bVar5 = (byte)uVar3;
        if (bVar5 < 0x27) {
          if (bVar5 < 0x1c) {
            uVar3 = uVar3 & 0xff;
            iVar7 = unaff_A6 + -0x6ba2;
            goto LAB_00004954;
          }
          pbVar1 = local_e8 + (short)(bVar5 - 0x21) * 0x20;
          FUN_0000694e((uint)*pbVar1);
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



void FUN_00004994(void)

{
  FUN_000049a8();
  return;
}



void FUN_000049a8(void)

{
  undefined4 in_D0;
  int unaff_A6;
  
  *(undefined4 *)(unaff_A6 + -0x7100) = in_D0;
  *(undefined4 *)(unaff_A6 + -0x7104) = 0;
  return;
}



// WARNING: Unknown calling convention

undefined8 FUN_000049bc(int width)

{
  int iVar1;
  int *piVar2;
  undefined4 in_D1;
  int unaff_A6;
  
  piVar2 = (int *)(unaff_A6 + -0x7104);
  iVar1 = *piVar2;
  *piVar2 = width + *piVar2;
  return CONCAT44((uint)(**(int **)(unaff_A6 + -0x7100) << iVar1) >> 0x20 - width,in_D1);
}



uint FUN_000049d4(void)

{
  int iVar1;
  int *piVar2;
  int unaff_A6;
  
  piVar2 = (int *)(unaff_A6 + -0x7104);
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + 1;
  return (uint)(**(int **)(unaff_A6 + -0x7100) << iVar1) >> 0x1f;
}



uint FUN_000049e8(void)

{
  int iVar1;
  int *piVar2;
  int unaff_A6;
  
  piVar2 = (int *)(unaff_A6 + -0x7104);
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + 2;
  return (uint)(**(int **)(unaff_A6 + -0x7100) << iVar1) >> 0x1e;
}



uint FUN_000049fc(void)

{
  int iVar1;
  int *piVar2;
  int unaff_A6;
  
  piVar2 = (int *)(unaff_A6 + -0x7104);
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + 3;
  return (uint)(**(int **)(unaff_A6 + -0x7100) << iVar1) >> 0x1d;
}



uint FUN_00004a10(void)

{
  int iVar1;
  int *piVar2;
  int unaff_A6;
  
  piVar2 = (int *)(unaff_A6 + -0x7104);
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + 7;
  return (uint)(**(int **)(unaff_A6 + -0x7100) << iVar1) >> 0x19;
}



uint FUN_00004a24(void)

{
  int iVar1;
  int *piVar2;
  int unaff_A6;
  
  piVar2 = (int *)(unaff_A6 + -0x7104);
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + 8;
  return (uint)(**(int **)(unaff_A6 + -0x7100) << iVar1) >> 0x18;
}



uint FUN_00004a38(void)

{
  int iVar1;
  int *piVar2;
  int unaff_A6;
  
  piVar2 = (int *)(unaff_A6 + -0x7104);
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + 0x10;
  return (uint)(**(int **)(unaff_A6 + -0x7100) << iVar1) >> 0x10;
}



undefined4 FUN_00004a50(void)

{
  int unaff_A6;
  
  *(int *)(unaff_A6 + -0x7104) = *(int *)(unaff_A6 + -0x7104) + 0x20;
  return 0;
}



// WARNING: Unknown calling convention

char FUN_00004a68(int param_1)

{
  ushort uVar1;
  char cVar2;
  
  cVar2 = '\0';
  if ((short)param_1 == 1) {
    cVar2 = '\x01';
  }
  else {
    for (uVar1 = (short)param_1 - 1; uVar1 != 0; uVar1 = uVar1 >> 1) {
      cVar2 = cVar2 + '\x01';
    }
  }
  return cVar2;
}



int FUN_00004a96(int param_1)

{
  int *in_D0;
  int iVar1;
  
  iVar1 = func_0x00006840();
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



undefined4 FUN_00004bbc(void)

{
  int iVar1;
  undefined4 uVar2;
  int unaff_A6;
  
  if (*(int *)(unaff_A6 + -0x6b82) == *(int *)(unaff_A6 + -0x6b7e)) {
    uVar2 = 0xffffffff;
  }
  else {
    iVar1 = *(int *)(unaff_A6 + -0x6b82);
    *(int *)(unaff_A6 + -0x6b82) = *(int *)(unaff_A6 + -0x6b82) + 1;
    uVar2 = *(undefined4 *)(unaff_A6 + -0x70fc + iVar1 * 4);
    if (0x3f < *(int *)(unaff_A6 + -0x6b82)) {
      *(undefined4 *)(unaff_A6 + -0x6b82) = 0;
    }
  }
  return uVar2;
}



undefined4 FUN_00004c3a(void)

{
  return 1;
}



undefined8 FUN_00004c48(void)

{
  int iVar1;
  undefined8 uVar2;
  
  FUN_00005534();
  iVar1 = FUN_00004bbc();
  if (iVar1 < 0) {
    FUN_00006e40();
    iVar1 = FUN_00004bbc();
  }
  uVar2 = FUN_00005560();
  return CONCAT44(iVar1,(int)uVar2);
}



bool FUN_00004c78(void)

{
  int extraout_D0;
  uint *in_D1;
  int unaff_A6;
  undefined2 uStack_1a;
  uint local_18;
  undefined4 auStack_14 [2];
  uint *local_c;
  
  local_c = in_D1;
  FUN_000071ca(auStack_14,&uStack_1a,&local_18);
  if (extraout_D0 != -1) {
    *local_c = local_18 & 0xffff;
  }
  else {
    func_0x000067b0(*(undefined4 *)(unaff_A6 + -0x7ff4));
  }
  return extraout_D0 != -1;
}



undefined8 FUN_00004cda(void)

{
  undefined3 extraout_var;
  int *in_D0;
  bool bVar1;
  undefined4 in_D1;
  int unaff_A6;
  undefined4 local_1c;
  undefined4 local_18;
  
  bVar1 = FUN_00004c78();
  *in_D0 = local_1c + *(int *)(unaff_A6 + -0x6ffc) * (local_18 - *(int *)(unaff_A6 + -0x6b7a));
  return CONCAT44(CONCAT31(extraout_var,bVar1),in_D1);
}



undefined8 FUN_00004d20(void)

{
  undefined3 extraout_var;
  undefined4 *in_D0;
  undefined4 uVar1;
  int extraout_D0;
  bool bVar2;
  undefined4 in_D1;
  int unaff_A6;
  undefined2 uStack_22;
  int local_20 [2];
  undefined4 auStack_18 [2];
  undefined4 *local_10;
  undefined4 local_c;
  
  local_c = in_D1;
  if (*(int *)(unaff_A6 + -0x6b7a) == -1) {
    local_10 = in_D0;
    FUN_000071ca(auStack_18,&uStack_22,local_20);
    if (extraout_D0 == -1) {
      func_0x000067b0(*(undefined4 *)(unaff_A6 + -0x7ff4));
      uVar1 = 0;
    }
    else {
      *(int *)(unaff_A6 + -0x6ffc) = local_20[0] >> 0x10;
      bVar2 = FUN_00004c78();
      uVar1 = CONCAT31(extraout_var,bVar2);
      *local_10 = *(undefined4 *)(unaff_A6 + -0x6b7a);
    }
  }
  else {
    *in_D0 = *(undefined4 *)(unaff_A6 + -0x6b7a);
    uVar1 = 1;
  }
  return CONCAT44(uVar1,local_c);
}



undefined4 FUN_00004db2(void)

{
  undefined4 uVar1;
  int unaff_A6;
  undefined8 uVar2;
  
  if (*(int *)(unaff_A6 + -0x6b7a) == -1) {
    uVar1 = 0;
  }
  else {
    uVar2 = FUN_00004cda();
    uVar1 = (undefined4)((ulonglong)uVar2 >> 0x20);
  }
  return uVar1;
}



undefined4 FUN_00004de2(int *param_1,int *param_2)

{
  int iVar1;
  int *in_D0;
  undefined4 uVar2;
  int *in_D1;
  int unaff_A6;
  undefined8 uVar3;
  undefined4 local_18;
  
  if (*(int *)(unaff_A6 + -0x6b76) == -1) {
    uVar2 = 0;
  }
  else {
    uVar3 = FUN_00004cda();
    uVar2 = (undefined4)((ulonglong)uVar3 >> 0x20);
    iVar1 = local_18 - *(int *)(unaff_A6 + -0x6b76);
    *in_D0 = iVar1 / *(int *)(unaff_A6 + -0x6ffc);
    *in_D1 = ((iVar1 % *(int *)(unaff_A6 + -0x6ffc)) * 100) / *(int *)(unaff_A6 + -0x6ffc);
    *param_1 = local_18 / *(int *)(unaff_A6 + -0x6ffc);
    *param_2 = ((local_18 % *(int *)(unaff_A6 + -0x6ffc)) * 100) / *(int *)(unaff_A6 + -0x6ffc);
  }
  return uVar2;
}



ulonglong FUN_00004f0a(void)

{
  undefined4 in_D1;
  undefined8 uVar1;
  
  uVar1 = FUN_0000701a();
  return (ulonglong)CONCAT14((int)((ulonglong)uVar1 >> 0x20) != -1,in_D1);
}



undefined8 FUN_00004f58(void)

{
  undefined4 uVar1;
  undefined4 uVar2;
  ulonglong uVar3;
  undefined8 uVar4;
  
  uVar3 = FUN_00004f0a();
  uVar2 = (undefined4)uVar3;
  if ((int)(uVar3 >> 0x20) != 0) {
    uVar4 = FUN_00007026();
    uVar2 = 0xffffffff;
    if ((int)((ulonglong)uVar4 >> 0x20) != -1) {
      uVar1 = 1;
      goto LAB_00004f7c;
    }
  }
  uVar1 = 0;
LAB_00004f7c:
  return CONCAT44(uVar1,uVar2);
}



void FUN_00004f80(void)

{
  int iVar1;
  
  do {
    iVar1 = FUN_000070b2();
  } while (iVar1 != 1);
  return;
}



void FUN_00004fb0(void)

{
  FUN_00007042();
  return;
}



bool FUN_0000503c(void)

{
  int in_D1;
  
  if (in_D1 != 0) {
    FUN_0000684c();
  }
  return in_D1 != 0;
}



// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x00005108) overlaps instruction at (ram,0x00005106)
// 

undefined8 FUN_000050ce(void)

{
  short sVar2;
  int iVar1;
  ushort unaff_D7w;
  int in_A0;
  undefined2 *puVar3;
  undefined2 *unaff_A5;
  int unaff_A6;
  undefined8 in_stack_00000000;
  
  *(int *)(unaff_A6 + -0x6b6a) = in_A0 - *(int *)(unaff_A6 + -0x6b62);
  sVar2 = ((ushort)(*(uint *)(unaff_A6 + -0x6b6e) >> 1) & 0x7fff) - 1;
  puVar3 = (undefined2 *)(unaff_A6 + -0x6ff8);
  do {
    *puVar3 = *unaff_A5;
    sVar2 = sVar2 + -1;
    puVar3 = puVar3 + 1;
    unaff_A5 = unaff_A5 + 1;
  } while (sVar2 != -1);
  *(ushort *)(unaff_A6 + -0x6b66) = unaff_D7w >> 2;
  iVar1 = (**(code **)(unaff_A6 + -0x6fb0))();
  if (iVar1 == 0) {
    return in_stack_00000000;
  }
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



undefined8 FUN_00005534(void)

{
  uint in_D1;
  int unaff_A6;
  undefined4 local_4;
  
  __m68k_trap(0);
  local_4 = in_D1 | 0x640c0000;
  *(undefined4 *)(unaff_A6 + -0x7ff4) = 1;
  return CONCAT44(0xffffffff,local_4);
}



undefined8 FUN_00005560(void)

{
  uint in_D1;
  int unaff_A6;
  undefined4 local_4;
  
  __m68k_trap(0);
  local_4 = in_D1 | 0x64e00000;
  *(undefined4 *)(unaff_A6 + -0x7ff4) = 0;
  return CONCAT44(0xffffffff,local_4);
}



// WARNING: Globals starting with '_' overlap smaller symbols at the same address

void FUN_00005592(void)

{
  uint *puVar1;
  uint in_D0;
  
  puVar1 = (uint *)(*(int *)(_DAT_00000000 + 0x4c) + 0x374);
  *puVar1 = in_D0 | *puVar1;
  return;
}



// WARNING: Globals starting with '_' overlap smaller symbols at the same address

void FUN_000055aa(void)

{
  uint *puVar1;
  int in_D0;
  
  puVar1 = (uint *)(*(int *)(_DAT_00000000 + 0x4c) + 0x374);
  *puVar1 = -in_D0 & *puVar1;
  return;
}



undefined8 FUN_000055c4(void)

{
  undefined8 uVar1;
  
  uVar1 = FUN_00005642();
  return uVar1;
}



void FUN_00005608(void)

{
  FUN_000055c4();
  FUN_000056e4();
  return;
}



void FUN_0000562e(void)

{
  do {
    FUN_00006e40();
  } while( true );
}



undefined8 FUN_00005642(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 in_D1;
  int unaff_A6;
  
  if (*(int *)(unaff_A6 + -0x6b5e) < 0) {
    iVar1 = FUN_00005790();
    *(int *)(unaff_A6 + -0x6b5e) = iVar1;
    if (iVar1 < 0) {
      uVar2 = 0xffffffff;
      goto LAB_00005678;
    }
  }
  uVar2 = FUN_000065ee();
LAB_00005678:
  return CONCAT44(uVar2,in_D1);
}



undefined8 FUN_00005688(void)

{
  int iVar1;
  undefined4 in_D1;
  undefined4 local_18;
  
  iVar1 = FUN_00005790();
  if (iVar1 != -1) {
    iVar1 = func_0x000067e0(4);
    if (iVar1 == 4) {
      FUN_000067fc();
      goto LAB_000056d8;
    }
    FUN_000067fc();
  }
  local_18 = 0xffffffff;
LAB_000056d8:
  return CONCAT44(local_18,in_D1);
}



void FUN_000056e4(void)

{
  FUN_00005688();
  FUN_00005ab8();
  return;
}



void FUN_00005790(void)

{
  FUN_000057e2(0);
  return;
}



undefined4 FUN_000057e2(int param_1)

{
  char *pcVar1;
  int iVar2;
  short sVar5;
  byte *pbVar3;
  undefined4 uVar4;
  int extraout_A0;
  int unaff_A6;
  longlong lVar6;
  int local_28;
  
  pcVar1 = FUN_000062ce();
  if (pcVar1 != (char *)0x0) {
    lVar6 = FUN_00006314();
    iVar2 = (int)((ulonglong)lVar6 >> 0x20);
    if ((-1 < lVar6) && (pcVar1 = FUN_0000639a(), pcVar1 != (char *)0x0)) {
      if (*(short *)(unaff_A6 + -0x6b14 + iVar2 * 4) == -1) {
        sVar5 = func_0x000067cc();
        *(short *)(unaff_A6 + -0x6b14 + iVar2 * 4) = sVar5;
        if (sVar5 < 0) {
          return 0xffffffff;
        }
        pbVar3 = (byte *)FUN_0000658a();
        *(ushort *)(extraout_A0 + 2 + iVar2 * 4) = (ushort)*pbVar3;
        if ((-1 < *(short *)(unaff_A6 + -0x6b14 + iVar2 * 4)) &&
           (*(short *)(unaff_A6 + -0x6b14 + iVar2 * 4) < 3)) {
          FUN_000067fc();
          *(undefined2 *)(unaff_A6 + -0x6b14 + iVar2 * 4) = 0xffff;
        }
      }
      if ((*(short *)(unaff_A6 + -0x6b12 + iVar2 * 4) == local_28) && (*pcVar1 == '_')) {
        while (pcVar1 = pcVar1 + 1, *pcVar1 != '_') {
          if (*pcVar1 == '\0') {
            return 0xffffffff;
          }
        }
      }
    }
  }
  uVar4 = (**(code **)(unaff_A6 + -0x6b5a + param_1 * 4))();
  return uVar4;
}



int FUN_00005ab8(void)

{
  uint in_D0;
  undefined4 uVar1;
  short sVar5;
  uint uVar2;
  byte *pbVar3;
  int iVar4;
  short in_D1w;
  int extraout_A0;
  int unaff_A6;
  undefined4 local_50;
  int local_4c;
  undefined4 local_48;
  int local_40;
  short local_12;
  
  local_48._1_1_ = (byte)(in_D0 >> 0x10);
  if (local_48._1_1_ != '\0') {
    local_48 = in_D0;
    local_12 = in_D1w;
    if (*(int *)(unaff_A6 + -0x6b4a) == 0) {
      uVar1 = FUN_00006566();
      *(undefined4 *)(unaff_A6 + -0x6b4a) = uVar1;
    }
    if (*(short *)(unaff_A6 + -0x6b14 + (local_48 >> 0x18) * 4) == -1) {
      FUN_0000678c();
      sVar5 = func_0x000067cc();
      *(short *)(unaff_A6 + -0x6b14 + (uint)local_48._0_1_ * 4) = sVar5;
      if (sVar5 < 0) {
        return -1;
      }
      uVar2 = (uint)local_48._0_1_;
      pbVar3 = (byte *)FUN_0000658a();
      *(ushort *)(extraout_A0 + 2 + uVar2 * 4) = (ushort)*pbVar3;
    }
    if ((ushort)local_48._1_1_ != *(ushort *)(unaff_A6 + -0x6b12 + (local_48 >> 0x18) * 4)) {
      if (*(int *)(unaff_A6 + -0x6b4e) == 0) {
        uVar1 = FUN_000072e4();
        *(undefined4 *)(unaff_A6 + -0x6b4e) = uVar1;
        *(undefined4 *)(unaff_A6 + -0x6fa4) = 0x10000;
        *(undefined4 *)(unaff_A6 + -0x6fa0) = *(undefined4 *)(unaff_A6 + -0x6b4e);
        *(undefined4 *)(unaff_A6 + -0x6fa8) = 0;
      }
      *(undefined4 *)(unaff_A6 + -0x6f88) = 1;
      *(undefined4 *)(unaff_A6 + -0x6f84) = 8;
      *(undefined4 **)(unaff_A6 + -0x6f80) = &local_50;
      *(int *)(unaff_A6 + -0x6f78) = unaff_A6 + -0x6fac;
      *(undefined4 *)(unaff_A6 + -0x6f7c) = 0x18;
      *(uint *)(unaff_A6 + -0x6f9c) = local_48 & 0xffff;
      *(int *)(unaff_A6 + -0x6f98) = (int)local_12;
      *(byte *)(unaff_A6 + -0x6fa9) = local_48._1_1_;
      *(undefined1 *)(unaff_A6 + -0x6fa8) = 0;
      local_40 = FUN_000065ee();
      if ((-1 < local_40) && (iVar4 = FUN_000065ee(), -1 < iVar4)) {
        if (-1 < local_4c) {
          return local_4c;
        }
        *(undefined4 *)(unaff_A6 + -0x7ff4) = local_50;
        return local_4c;
      }
      return -1;
    }
  }
  iVar4 = FUN_00007226();
  return iVar4;
}



char * FUN_000062ce(void)

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



undefined8 FUN_00006314(void)

{
  undefined4 uVar1;
  undefined4 in_D1;
  int iVar2;
  int unaff_A6;
  ulonglong uVar3;
  
  if (*(int *)(unaff_A6 + -0x6b20) == 0) {
    uVar1 = FUN_00006566();
    *(undefined4 *)(unaff_A6 + -0x6b20) = uVar1;
  }
  iVar2 = 0;
  while ((iVar2 < *(short *)(*(int *)(unaff_A6 + -0x6b20) + 0x10) &&
         (uVar3 = FUN_0000686c(), (int)(uVar3 >> 0x20) != 0))) {
    iVar2 = iVar2 + 1;
  }
  if (*(short *)(*(int *)(unaff_A6 + -0x6b20) + 0x10) <= iVar2) {
    iVar2 = -1;
  }
  return CONCAT44(iVar2,in_D1);
}



char * FUN_0000639a(void)

{
  char cVar1;
  char *pcVar2;
  uint *in_D1;
  int iVar3;
  char *pcVar4;
  int unaff_A6;
  ulonglong uVar5;
  undefined8 uVar6;
  uint local_3e;
  char *local_38;
  char local_34 [20];
  int local_20;
  int local_1c;
  uint *local_14;
  
  local_14 = in_D1;
  pcVar2 = (char *)FUN_000064bc();
  if (*pcVar2 == '_') {
    if (pcVar2[1] < 'A') {
      local_3e = 0;
      while( true ) {
        pcVar4 = pcVar2 + 1;
        cVar1 = *pcVar4;
        if ((cVar1 < '0') || ('9' < cVar1)) break;
        uVar6 = FUN_00006abc();
        local_3e = ((int)(short)cVar1 + (int)((ulonglong)uVar6 >> 0x20)) - 0x30;
        pcVar2 = pcVar4;
      }
      if (*pcVar4 == '_') {
        *local_14 = local_3e;
LAB_000064a8:
        return pcVar2 + 2;
      }
    }
    else {
      if (*(int *)(unaff_A6 + -0x6b1c) == 0) {
        local_1c = FUN_000070e6();
        if (local_1c == -1) {
          return (char *)0xffffffff;
        }
        *(int *)(unaff_A6 + -0x6b1c) = local_1c + 0x30;
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
      local_20 = *(int *)(unaff_A6 + -0x6b1c) + 2;
      for (iVar3 = 0; iVar3 < **(short **)(unaff_A6 + -0x6b1c); iVar3 = iVar3 + 1) {
        uVar5 = FUN_0000686c();
        if ((int)(uVar5 >> 0x20) == 0) {
          *local_14 = (uint)*(byte *)(local_20 + 0x13);
          goto LAB_000064a8;
        }
        local_20 = local_20 + 0x14;
      }
    }
  }
  return (char *)0x0;
}



void FUN_000064bc(void)

{
  char *in_D0;
  int iVar1;
  int unaff_A6;
  ulonglong uVar2;
  
  if (((*in_D0 != '_') && (*in_D0 != '@')) && ('@' < *in_D0)) {
    if (*(int *)(unaff_A6 + -0x6b18) == 0) {
      iVar1 = FUN_000070e6();
      if (iVar1 == -1) {
        return;
      }
      *(int *)(unaff_A6 + -0x6b18) = iVar1 + 0x30;
    }
    iVar1 = 0;
    while ((iVar1 < **(short **)(unaff_A6 + -0x6b18) &&
           (uVar2 = FUN_0000686c(), (int)(uVar2 >> 0x20) != 0))) {
      iVar1 = iVar1 + 1;
    }
  }
  return;
}



// WARNING: Globals starting with '_' overlap smaller symbols at the same address

undefined4 FUN_00006566(void)

{
  return *(undefined4 *)(_DAT_00000000 + 0x814);
}



// WARNING: Control flow encountered bad instruction data

void FUN_0000658a(void)

{
  int in_D0;
  
  if ((in_D0 != 2) && (in_D0 != 5)) {
    __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
  }
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_000065ee(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



undefined8 FUN_00006650(void)

{
  undefined4 in_D0;
  undefined4 in_D1;
  ushort *unaff_A4;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A4 = *unaff_A4 | 0x6406;
  *(undefined4 *)(unaff_A6 + -0x7ff4) = in_D0;
  return CONCAT44(0xffffffff,in_D1);
}



// WARNING: Globals starting with '_' overlap smaller symbols at the same address

undefined8 FUN_00006668(void)

{
  ushort *puVar1;
  ushort uVar2;
  undefined4 in_D0;
  undefined4 in_D1;
  int *piVar3;
  
  uVar2 = *(ushort *)(*(int *)(_DAT_00000000 + 0x4c) + 0x168 + (int)(short)((short)in_D0 << 1));
  if ((uVar2 != 0) && (uVar2 <= **(ushort **)(_DAT_00000000 + 0x48))) {
    piVar3 = (int *)((int)(short)(uVar2 << 2) + (int)*(ushort **)(_DAT_00000000 + 0x48));
    if ((*piVar3 != 0) && (puVar1 = (ushort *)*piVar3, (uVar2 & 0x3fff) == *puVar1)) {
      return CONCAT44(*(undefined4 *)(*(int *)(puVar1 + 2) + 8),in_D1);
    }
  }
  return CONCAT44(CONCAT22((short)((uint)in_D0 >> 0x10),0xffff),in_D1);
}



// WARNING: Control flow encountered bad instruction data

void FUN_00006754(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00006784(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00006788(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_0000678c(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_0000679c(void)

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
  DAT_00000039 = DAT_00000039 | 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Read-only address (ram,0x0000687b) is written
  uRam0000687b = 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_000067a8(void)

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
  DAT_00000039 = DAT_00000039 | 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Read-only address (ram,0x0000687b) is written
  uRam0000687b = 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_000067fc(void)

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
  DAT_00000039 = DAT_00000039 | 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Read-only address (ram,0x0000687b) is written
  uRam0000687b = 0x4d;
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_0000684c(void)

{
  __m68k_trap(0xd);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



ulonglong FUN_0000686c(void)

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
LAB_000068b4:
    return CONCAT44(0xffffffff,puVar6);
  }
  puVar5 = in_D0;
  if (((uint)in_D1 & 1) != 0) {
    puVar6 = (ushort *)((int)in_D1 + 1);
    if (*(byte *)in_D0 < *(byte *)in_D1) goto LAB_000068b4;
    if (*(byte *)in_D1 < *(byte *)in_D0) {
LAB_000068a6:
      return CONCAT44(1,puVar6);
    }
    puVar5 = (ushort *)((int)in_D0 + 1);
    in_D1 = puVar6;
    if (*(char *)in_D0 == '\0') goto LAB_000068c2;
  }
  while( true ) {
    uVar4 = *puVar5;
    puVar6 = in_D1 + 1;
    if (uVar4 != *in_D1) break;
    if (((char)uVar4 == '\0') || (puVar5 = puVar5 + 1, in_D1 = puVar6, uVar4 < 0x100))
    goto LAB_000068c2;
  }
  if (uVar4 < *in_D1) {
    if (0xff < uVar4) goto LAB_000068b4;
  }
  else if (0xff < uVar4) goto LAB_000068a6;
  if (*(char *)in_D1 != '\0') goto LAB_000068b4;
LAB_000068c2:
  return ZEXT48(puVar6);
}



char * FUN_000068e0(void)

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



void FUN_000068fe(void)

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



void FUN_0000691a(void)

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



undefined8 FUN_0000694e(int param_1)

{
  undefined4 in_D0;
  undefined4 in_D1;
  
  if (param_1 != 0) {
    FUN_0000696c();
  }
  return CONCAT44(in_D0,in_D1);
}



void FUN_0000696c(void)

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
          FUN_000069de();
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
          FUN_00006994();
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



void FUN_00006994(void)

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



void FUN_000069de(void)

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



undefined4 * FUN_00006a06(uint param_1)

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
    if (uVar5 == 0) goto LAB_00006aa2;
  }
  sVar7 = uVar5 - 1;
  puVar8 = puVar9;
  do {
    puVar9 = puVar8 + 1;
    *puVar8 = uVar6;
    sVar7 = sVar7 + -1;
    puVar8 = puVar9;
  } while (sVar7 != -1);
LAB_00006aa2:
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



undefined8 FUN_00006abc(void)

{
  ushort uVar1;
  ushort uVar2;
  uint in_D0;
  int iVar3;
  ushort uVar4;
  uint in_D1;
  uint uVar5;
  ushort uVar6;
  uint uVar7;
  ushort uVar8;
  
  iVar3 = (in_D0 & 0xffff) * (in_D1 & 0xffff);
  uVar5 = (in_D1 & 0xffff) * (in_D0 >> 0x10);
  uVar7 = (in_D0 & 0xffff) * (in_D1 >> 0x10);
  uVar6 = (ushort)uVar5;
  uVar4 = (ushort)((uint)iVar3 >> 0x10);
  uVar1 = uVar6 + uVar4;
  uVar2 = (ushort)((uint)(iVar3 * 0x10000) >> 0x10);
  uVar8 = (ushort)uVar7;
  return CONCAT44(CONCAT22(uVar2,uVar8 + uVar1) << 0x10 | (uint)uVar2,
                  (in_D0 >> 0x10) * (in_D1 >> 0x10) + (uint)CARRY2(uVar6,uVar4) +
                  (uint)CARRY2(uVar8,uVar1) + (uVar7 >> 0x10) + (uVar5 >> 0x10));
}



int FUN_00006af4(void)

{
  int in_D0;
  int iVar1;
  int in_D1;
  bool bVar2;
  
  bVar2 = in_D0 < 0;
  if (in_D1 < 0) {
    bVar2 = !bVar2;
  }
  iVar1 = FUN_00006b2e();
  if (bVar2) {
    iVar1 = -iVar1;
  }
  return iVar1;
}



void FUN_00006b2e(void)

{
  uint in_D0;
  uint in_D1;
  uint uVar1;
  short sVar2;
  bool bVar3;
  
  if ((((in_D1 != 0) && (in_D1 - 1 != 0)) && (in_D1 < in_D0)) && (-1 < (int)in_D1)) {
    if ((in_D1 - 1 & in_D1) == 0) {
      sVar2 = -1;
      do {
        in_D1 = in_D1 >> 1;
        if ((in_D1 & 1) != 0) {
          return;
        }
        sVar2 = sVar2 + -1;
      } while (sVar2 != -1);
    }
    else {
      sVar2 = -1;
      do {
        uVar1 = in_D1;
        in_D1 = uVar1 << 1;
        if ((int)in_D1 < 0) {
          if (in_D1 <= in_D0) goto LAB_00006b88;
          goto LAB_00006b84;
        }
      } while ((in_D1 < in_D0) && (sVar2 = sVar2 + -1, sVar2 != -1));
      if (in_D1 != in_D0) {
LAB_00006b84:
        sVar2 = sVar2 + 1;
        in_D1 = uVar1 & 0x7fffffff;
      }
LAB_00006b88:
      sVar2 = -sVar2;
      while( true ) {
        bVar3 = in_D0 < in_D1;
        in_D0 = in_D0 - in_D1;
        if (bVar3) {
          do {
            sVar2 = sVar2 + -1;
            if (sVar2 == -1) {
              return;
            }
            in_D1 = in_D1 >> 1;
            bVar3 = CARRY4(in_D1,in_D0);
            in_D0 = in_D1 + in_D0;
          } while (!bVar3);
        }
        sVar2 = sVar2 + -1;
        if (sVar2 == -1) break;
        in_D1 = in_D1 >> 1;
      }
    }
  }
  return;
}



// WARNING: Control flow encountered bad instruction data

void FUN_00006c4c(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_00006ce2(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



void FUN_00006d38(void)

{
  FUN_00006ce2();
  return;
}



// WARNING: Control flow encountered bad instruction data

void FUN_00006e40(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



undefined8 FUN_00007004(void)

{
  undefined4 in_D1;
  ushort *unaff_A3;
  int unaff_A5;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(unaff_A6 + -0x7ff4) = in_D1;
  return CONCAT44(0xffffffff,*(undefined4 *)(unaff_A5 + -0x10));
}



undefined8 FUN_0000701a(void)

{
  undefined8 uVar1;
  
  uVar1 = FUN_00007004();
  return uVar1;
}



undefined8 FUN_00007026(void)

{
  undefined8 uVar1;
  
  uVar1 = FUN_00007004();
  return uVar1;
}



undefined4 FUN_00007042(void)

{
  uint in_D1;
  ushort *unaff_A3;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(uint *)(unaff_A6 + -0x7ff4) = in_D1 | 8;
  return 0xffffffff;
}



undefined4 FUN_000070b2(void)

{
  ushort *unaff_A3;
  int unaff_A6;
  
  __m68k_trap(0);
  *unaff_A3 = *unaff_A3 | 0x6406;
  *(undefined4 *)(unaff_A6 + -0x7ff4) = 4;
  return 0xffffffff;
}



void FUN_000070e6(void)

{
  __m68k_trap(0);
  FUN_00007344();
  return;
}



undefined4 * FUN_000071ca(undefined4 *param_1,undefined2 *param_2,undefined4 *param_3)

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

void FUN_00007226(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



// WARNING: Control flow encountered bad instruction data

void FUN_000072e4(void)

{
  __m68k_trap(0);
                    // WARNING: Bad instruction - Truncating control flow here
  halt_baddata();
}



void FUN_00007344(void)

{
  undefined4 in_D1;
  int unaff_A6;
  bool in_CF;
  
  if (in_CF) {
    *(undefined4 *)(unaff_A6 + -0x7ff4) = in_D1;
  }
  return;
}



void FUN_0000737c(void)

{
  return;
}


