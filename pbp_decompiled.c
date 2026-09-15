typedef unsigned char   undefined;

typedef unsigned char    undefined1;
typedef unsigned short    undefined2;
typedef unsigned int    undefined4;


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
  undefined4 extraout_A0;
  char *extraout_A0_00;
  char *pcVar2;
  int in_A1;
  char *pcVar3;
  char *extraout_A1;
  int unaff_A6;
  bool bVar4;
  undefined8 uVar5;
  undefined4 uVar6;
  
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
  FUN_00000194(extraout_A0);
  pcVar3 = (char *)(unaff_A6 + -0x6f64);
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
  return;
}



void FUN_0000031c(void)

{
  undefined4 in_D0;
  int iVar1;
  
  FUN_0000678c();
  iVar1 = FUN_00003372();
  if (iVar1 != 0) {
    FUN_00002976(iVar1);
    FUN_000067a8();
  }
  FUN_0000678c(in_D0);
  iVar1 = FUN_00003372();
  if (iVar1 != 0) {
    FUN_00001f1c(iVar1);
    FUN_000067a8();
  }
  return;
}



void FUN_00000962(void)

{
  int *piVar1;
  char *in_D0;
  undefined4 uVar2;
  char cVar4;
  int iVar3;
  int iVar5;
  int unaff_A6;
  int local_58;
  int *local_54;
  undefined4 local_50;
  undefined2 local_4c;
  int iStack_4a;
  undefined2 uStack_46;
  int iStack_44;
  int iStack_40;
  
  iVar5 = 0;
  if (*(int *)(unaff_A6 + -0x6bd4) == 0) {
    uVar2 = FUN_00004a96(4);
    *(undefined4 *)(unaff_A6 + -0x6bd4) = uVar2;
    if (*(int *)(unaff_A6 + -0x6bd4) == 0) {
      FUN_00005608(300);
      FUN_0000562e();
    }
  }
  if (*in_D0 == '\0') {
    local_50 = 5;
  }
  else {
    local_50 = 6;
  }
  local_4c = 1;
  piVar1 = (int *)(in_D0 + 8);
  cVar4 = FUN_0000237a();
  if (cVar4 == '\0') {
    iVar5 = 7;
    FUN_0000678c((int)*(short *)(in_D0 + 0xc),*piVar1,*(undefined4 *)(in_D0 + 2));
  }
  else {
    if (((*(ushort *)(in_D0 + 10) & 0xff) != 0) && ((*(ushort *)(in_D0 + 10) & 0xff) < 9)) {
      cVar4 = FUN_00002846(&local_58,*(undefined4 *)(in_D0 + 2));
      if (cVar4 == '\0') {
        iVar5 = FUN_00001116(*(undefined4 *)(in_D0 + 2));
        if (iVar5 == 0) {
          FUN_00003660();
          local_58 = FUN_00001d9a();
          if (local_58 == -1) {
            iVar5 = 4;
          }
          else {
            FUN_00001878();
            FUN_00003698();
            iVar3 = FUN_00001878();
            local_54 = (int *)(local_58 + iVar3);
            if (*local_54 == *piVar1) {
              FUN_0000259c(*(undefined4 *)(in_D0 + 2),*in_D0);
            }
            else {
              FUN_0000678c(*piVar1,*(undefined4 *)(in_D0 + 2));
              FUN_000016de();
              FUN_00001e0a();
              iVar5 = 3;
            }
          }
        }
      }
      goto LAB_00000b0c;
    }
    iVar5 = 2;
    FUN_0000678c(*piVar1,*(undefined4 *)(in_D0 + 2));
  }
  FUN_000016de();
LAB_00000b0c:
  iStack_4a = *piVar1;
  uStack_46 = *(undefined2 *)(in_D0 + 0xc);
  iStack_44 = local_58;
  iStack_40 = iVar5;
  FUN_0000226a();
  return;
}



void FUN_00000a84(void)

{
  int unaff_A2;
  undefined4 *unaff_A3;
  undefined4 uStack0000000e;
  
  FUN_0000678c(*unaff_A3,*(undefined4 *)(unaff_A2 + 2));
  FUN_000016de();
  FUN_00001e0a();
  uStack0000000e = *unaff_A3;
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



undefined4 FUN_00001116(undefined4 param_1)

{
  uint uVar1;
  uint *in_D0;
  int iVar2;
  int iVar3;
  int unaff_A6;
  undefined4 local_30;
  undefined4 local_20;
  
  if (*(char *)(unaff_A6 + -0x6bca) == '\x01') {
    FUN_000015ee();
    for (local_20 = 0; local_20 < 5; local_20 = local_20 + 1) {
      uVar1 = *in_D0;
      iVar2 = func_0x000067f0(0);
      if (iVar2 == -1) {
        FUN_0000678c((uVar1 >> 8) << 0xb,*(undefined4 *)(unaff_A6 + -0x7ff4),param_1);
LAB_000012a4:
        FUN_000016de();
      }
      else {
        iVar2 = (*in_D0 & 0xff) << 0xb;
        iVar3 = func_0x000067e0(iVar2);
        if (iVar3 == iVar2) {
          local_30 = 0;
          break;
        }
        if (iVar3 != -1) {
          FUN_0000678c(*in_D0 >> 8,(ushort)*in_D0 & 0xff,iVar3,param_1);
          goto LAB_000012a4;
        }
        FUN_0000678c(*in_D0 >> 8,(ushort)*in_D0 & 0xff,*(undefined4 *)(unaff_A6 + -0x7ff4),param_1);
        FUN_000016de();
        if (*(int *)(unaff_A6 + -0x7ff4) == 0xd2) {
          FUN_0000678c();
          FUN_000016de();
          FUN_00005608(0xfa);
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
  FUN_0000252c();
  FUN_00001aa0();
  FUN_00001044();
  FUN_000016a2();
  FUN_00004c3a();
  return 1;
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
  undefined1 local_28 [4];
  undefined1 local_24 [20];
  
  if (*(char *)(unaff_A6 + -0x6bc6) == '\x01') {
    FUN_00004de2(local_24,local_28);
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
  undefined4 local_28;
  undefined4 local_24 [3];
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
      FUN_00006788(*(undefined4 *)(unaff_A6 + -0x6bc0));
      FUN_00004db2();
    }
    FUN_00004de2(local_24,&local_28);
    FUN_00006788(local_24[0],local_28);
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
  int iVar1;
  int unaff_A6;
  
  iVar1 = FUN_0000503c();
  if (iVar1 == 0) {
    FUN_0000678c(*(undefined4 *)(unaff_A6 + -0x7ff4));
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
  undefined4 local_24;
  
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
      if (local_24 + -1 < 1) {
        iVar1 = 1;
      }
      else {
        iVar1 = 2 << (local_24 - 2U & 0x3f);
      }
      FUN_00001b7c(iVar2 + iVar1);
      local_24 = local_24 + -1;
    }
    *(undefined4 *)(unaff_A6 + -0x7e7c + iVar2 * 0x10) = 1;
    *(int *)(unaff_A6 + -0x7e78 + iVar2 * 0x10) = iVar3;
    iVar2 = iVar2 << 0xb;
  }
  return CONCAT44(iVar2,in_D1);
}



undefined8 FUN_00001d9a(void)

{
  undefined2 in_D0w;
  char cVar1;
  undefined4 in_D1;
  int iVar2;
  
  iVar2 = -1;
  do {
    iVar2 = FUN_00001cae(iVar2);
    if (iVar2 != -1) goto LAB_00001dfc;
    cVar1 = FUN_000020ce();
  } while (cVar1 != '\0');
  FUN_0000678c(in_D0w);
  FUN_000016de();
  FUN_0000031c();
LAB_00001dfc:
  return CONCAT44(iVar2,in_D1);
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
      if (*(int *)(unaff_A6 + -0x7e78 + local_14 * 0x10) < 1) {
        iVar1 = 1;
      }
      else {
        iVar1 = 2 << (*(int *)(unaff_A6 + -0x7e78 + local_14 * 0x10) - 1U & 0x3f);
      }
      FUN_00006788(iVar1);
    }
  }
  func_0x000067a4();
  return;
}



bool FUN_000020ce(void)

{
  char cVar1;
  
  cVar1 = FUN_0000276a();
  if (cVar1 == '\x01') {
    FUN_00001e0a();
  }
  return cVar1 == '\x01';
}



bool FUN_0000226a(void)

{
  int iVar1;
  
  iVar1 = func_0x000067e8(0x34);
  if (iVar1 != 0x34) {
    FUN_00005608(0x122);
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
  int iVar1;
  undefined4 uVar2;
  undefined4 in_D1;
  int unaff_A6;
  
  iVar1 = FUN_0000503c();
  if (iVar1 == 0) {
    uVar2 = *(undefined4 *)(unaff_A6 + -0x7ff4);
  }
  else {
    iVar1 = FUN_00004f58();
    if (iVar1 != 0) {
      uVar2 = 1;
      goto LAB_00002592;
    }
    uVar2 = *(undefined4 *)(unaff_A6 + -0x7ff4);
  }
  FUN_0000678c(uVar2);
  FUN_000016de();
  uVar2 = 0;
LAB_00002592:
  return CONCAT44(uVar2,in_D1);
}



undefined4 FUN_0000259c(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  int *in_D0;
  undefined4 uVar2;
  char cVar3;
  undefined4 in_D1;
  int iVar4;
  int unaff_A6;
  int local_1c;
  
  local_1c = *(int *)(unaff_A6 + -0x7208) + 10;
  iVar4 = 0;
  while (iVar4 < *(int *)(*(int *)(unaff_A6 + -0x7208) + 6)) {
    if ((*(short *)(local_1c + 0xc) == *(short *)(in_D0 + 1)) && (*(int *)(local_1c + 8) == *in_D0))
    goto LAB_000025fc;
    local_1c = local_1c + 0x1a;
    iVar4 = iVar4 + 1;
  }
  if (*(int *)(*(int *)(unaff_A6 + -0x7208) + 6) < 0xc0) {
    FUN_00004f80();
    *(int *)(local_1c + 8) = *in_D0;
    *(undefined2 *)(local_1c + 0xc) = *(undefined2 *)(in_D0 + 1);
    *(undefined4 *)(local_1c + 0x16) = 0;
    *(undefined4 *)(local_1c + 0x12) = 0;
    cVar3 = FUN_00002f2a(param_2);
    if (cVar3 == '\0') {
      FUN_0000678c(local_1c + 0x12,iVar4 + 1,param_2,*(undefined4 *)(unaff_A6 + -0x71d0));
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
  
  FUN_00004f80(0);
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



undefined4 FUN_00002846(undefined4 *param_1,undefined4 param_2)

{
  int *in_D0;
  char cVar1;
  int in_D1;
  int iVar2;
  int iVar3;
  int unaff_A6;
  int local_20 [2];
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
  cVar1 = FUN_00002ed6(local_20);
  if (cVar1 == '\0') {
    FUN_0000678c(iVar3 + 0x12,param_2,local_20,*(undefined4 *)(unaff_A6 + -0x71d0));
    FUN_000016de();
  }
  cVar1 = FUN_00002f2a(local_18 + local_20[0]);
  if (cVar1 == '\0') {
    FUN_0000678c(iVar3 + 0x12,param_2,local_18 + local_20[0],*(undefined4 *)(unaff_A6 + -0x71d0));
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
  undefined1 auStack_40 [10];
  undefined1 auStack_36 [10];
  undefined4 local_2c;
  int local_28;
  int local_24 [3];
  
  local_28 = 0;
  local_2c = 0;
  FUN_00006788(*(undefined4 *)(*(int *)(unaff_A6 + -0x7208) + 6));
  FUN_00006788((int)*(short *)(*(int *)(unaff_A6 + -0x7208) + 4));
  FUN_00006788();
  piVar3 = (int *)(*(int *)(unaff_A6 + -0x7208) + 10);
  for (iVar1 = 0; iVar1 < *(int *)(*(int *)(unaff_A6 + -0x7208) + 6); iVar1 = iVar1 + 1) {
    local_28 = (piVar3[2] & 0xffU) + local_28;
    if (unaff_A6 + -0x71ea == *piVar3) {
      FUN_0000678c();
    }
    else {
      FUN_0000678c((*piVar3 - (*(int *)(unaff_A6 + -0x7208) + 10)) / 0x1a);
    }
    if (unaff_A6 + -0x7204 == piVar3[1]) {
      FUN_0000678c();
    }
    else {
      FUN_0000678c((piVar3[1] - (*(int *)(unaff_A6 + -0x7208) + 10)) / 0x1a);
    }
    FUN_00006788(iVar1,(int)*(short *)(piVar3 + 3),(uint)piVar3[2] >> 8,
                 *(ushort *)((int)piVar3 + 10) & 0xff,auStack_36,auStack_40);
    for (iVar2 = 0; iVar2 < 0x10; iVar2 = iVar2 + 1) {
      FUN_00002ed6(local_24);
      if (local_24[0] == 0) {
        FUN_00006788();
      }
      else {
        FUN_00006788(local_24[0]);
      }
    }
    FUN_0000679c();
    piVar3 = (int *)((int)piVar3 + 0x1a);
  }
  FUN_00006788();
  for (puVar4 = *(undefined4 **)(unaff_A6 + -0x7204); (undefined4 *)(unaff_A6 + -0x71ea) != puVar4;
      puVar4 = (undefined4 *)*puVar4) {
    FUN_00006788((uint)puVar4[2] >> 8);
  }
  FUN_00006788();
  for (iVar1 = *(int *)(unaff_A6 + -0x71e6); unaff_A6 + -0x7204 != iVar1;
      iVar1 = *(int *)(iVar1 + 4)) {
    FUN_00006788(*(uint *)(iVar1 + 8) >> 8);
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
  char cVar2;
  int iVar1;
  
  FUN_0000302e();
  while( true ) {
    iVar1 = FUN_0000304a();
    if (iVar1 == 0) break;
    cVar2 = FUN_000030d2();
    if (cVar2 == '\0') {
      FUN_00005608(0x10e);
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



void FUN_000031e0(void)

{
  FUN_000032f6();
  return;
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
  int iVar1;
  undefined4 uVar2;
  char acStack_61 [93];
  
  FUN_000068fe();
  iVar1 = FUN_000068e0();
  if (acStack_61[iVar1] != '/') {
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



void FUN_00003698(void)

{
  ushort uVar1;
  uint *in_D0;
  byte bVar2;
  int in_D1;
  
  if ((*(byte *)((int)in_D0 + 6) & 1) == 0) {
    FUN_0000694e((*in_D0 & 0xff) << 0xb);
    return;
  }
  FUN_00004798();
  uVar1 = *(ushort *)(in_D0 + 1);
  if (uVar1 == 0x14) {
LAB_000036c8:
    FUN_000046aa();
  }
  else {
    if (uVar1 < 0x15) {
      bVar2 = (byte)uVar1;
      if (bVar2 == 0xe) {
        FUN_00004320();
        goto LAB_0000371c;
      }
      if ((bVar2 < 0xf) && (bVar2 == 0)) {
        FUN_00003ea0();
        goto LAB_0000371c;
      }
    }
    else if ((uVar1 == 0x16) || ((uVar1 < 0x17 && (uVar1 == 0x15)))) goto LAB_000036c8;
    FUN_00006a06((*in_D0 & 0xff) << 0xb);
  }
LAB_0000371c:
  *(undefined2 *)(in_D1 + 6) = 0;
  return;
}



void FUN_0000375e(void)

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
  int unaff_A6;
  
  uVar1 = *in_D1;
  uVar2 = in_D1[1];
  uVar3 = *(ushort *)(unaff_A6 + -0x714c);
  puVar4 = (undefined2 *)(in_D0 + (uint)uVar1);
  puVar9 = (undefined2 *)0x0;
  while (puVar8 = puVar4,
        puVar8 < (undefined2 *)((int)(in_D0 + (uint)uVar1) + (uint)uVar2 * (uint)uVar3)) {
    iVar5 = FUN_000049d4();
    if (iVar5 == 0) {
      puVar8[1] = puVar9[1];
      puVar8[2] = puVar9[2];
    }
    else {
      uVar6 = FUN_000049bc();
      puVar8[1] = uVar6;
      sVar7 = FUN_000049bc();
      puVar8[2] = sVar7 << 1;
    }
    uVar6 = FUN_000049bc();
    *puVar8 = uVar6;
    puVar9 = puVar8;
    puVar4 = (undefined2 *)((int)puVar8 + (uint)*(ushort *)(unaff_A6 + -0x714c));
  }
  return;
}



void FUN_000037e4(void)

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
  int unaff_A6;
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(unaff_A6 + -0x71bc);
  *(undefined2 *)(unaff_A6 + -0x7146) = 1;
  *(undefined2 *)(unaff_A6 + -0x7144) = 1;
  psVar4 = psVar3;
  psVar10 = (short *)0x0;
  while (psVar9 = psVar4, psVar9 < (short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2)) {
    if (psVar9 != psVar3) {
      FUN_0000694e(*(undefined2 *)(unaff_A6 + -0x71bc));
    }
    iVar5 = FUN_000049d4();
    if (iVar5 != 0) {
      sVar7 = FUN_000049bc();
      psVar9[9] = *(short *)(in_D0 + 0x28 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                  *(short *)(unaff_A6 + -0x71a4) * sVar7;
      sVar7 = FUN_000049bc();
      psVar9[10] = *(short *)(in_D0 + 0x30 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                   *(short *)(unaff_A6 + -0x71a2) * sVar7;
      sVar7 = FUN_000049bc();
      *(short *)((int)psVar9 + *(ushort *)(unaff_A6 + -0x71ba) + 4) =
           *(short *)(in_D0 + 0x2c + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
           *(short *)(unaff_A6 + -0x71a6) * sVar7;
    }
    iVar5 = FUN_000049d4();
    if (iVar5 != 0) {
      uVar8 = FUN_00004a24();
      *(undefined1 *)(psVar9 + 5) = uVar8;
      uVar8 = FUN_00004a24();
      *(undefined1 *)((int)psVar9 + 0xb) = uVar8;
      uVar8 = FUN_00004a24();
      *(undefined1 *)(psVar9 + 8) = uVar8;
      uVar8 = FUN_00004a24();
      *(undefined1 *)((int)psVar9 + 0x11) = uVar8;
      uVar6 = FUN_00004a38();
      *(undefined2 *)((int)psVar9 + *(ushort *)(unaff_A6 + -0x71ba) + 2) = uVar6;
    }
    sVar7 = FUN_000049bc();
    *psVar9 = sVar7 << 1;
    sVar7 = FUN_000049bc();
    psVar9[1] = sVar7 << 1;
    iVar5 = FUN_000049d4();
    if (iVar5 != 0) {
      sVar7 = FUN_000049bc();
      *(short *)(unaff_A6 + -0x7146) =
           *(short *)(in_D0 + 0x1c + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
           *(short *)(unaff_A6 + -0x71b4) * sVar7;
    }
    psVar9[2] = *(short *)(unaff_A6 + -0x7146);
    sVar7 = FUN_000049bc();
    if (sVar7 == *(short *)(in_D0 + 0x12 + (uint)*(ushort *)(unaff_A6 + -0x71c2))) {
      psVar9[3] = 0;
    }
    else {
      psVar9[3] = sVar7 * *(short *)(unaff_A6 + -0x71bc) +
                  *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(unaff_A6 + -0x71c2));
    }
    sVar7 = FUN_000049bc();
    if (sVar7 == *(short *)(in_D0 + 0x12 + (uint)*(ushort *)(unaff_A6 + -0x71c2))) {
      psVar9[4] = 0;
    }
    else {
      psVar9[4] = sVar7 * *(short *)(unaff_A6 + -0x71bc) +
                  *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(unaff_A6 + -0x71c2));
    }
    FUN_000049d4();
    sVar7 = FUN_000049bc();
    psVar9[6] = sVar7;
    uVar8 = FUN_00004a24();
    *(undefined1 *)(psVar9 + 7) = uVar8;
    uVar8 = FUN_00004a24();
    *(undefined1 *)((int)psVar9 + 0xf) = uVar8;
    iVar5 = FUN_000049d4();
    if (iVar5 != 0) {
      sVar7 = FUN_000049bc();
      *(short *)(unaff_A6 + -0x7144) =
           *(short *)(in_D0 + 8 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
           *(short *)(unaff_A6 + -0x714c) * sVar7;
    }
    *(undefined2 *)((int)psVar9 + (uint)*(ushort *)(unaff_A6 + -0x71ba)) =
         *(undefined2 *)(unaff_A6 + -0x7144);
    psVar10 = psVar9;
    psVar4 = (short *)((int)psVar9 + (uint)*(ushort *)(unaff_A6 + -0x71bc));
  }
  iVar5 = FUN_000049d4();
  if (iVar5 == 0) {
    psVar9[9] = psVar10[9];
    psVar9[10] = psVar10[10];
    *(undefined2 *)((int)psVar9 + *(ushort *)(unaff_A6 + -0x71ba) + 4) =
         *(undefined2 *)((int)psVar10 + *(ushort *)(unaff_A6 + -0x71ba) + 4);
  }
  else {
    sVar7 = FUN_000049bc();
    psVar9[9] = *(short *)(in_D0 + 0x28 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                *(short *)(unaff_A6 + -0x71a4) * sVar7;
    sVar7 = FUN_000049bc();
    psVar9[10] = *(short *)(in_D0 + 0x30 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                 *(short *)(unaff_A6 + -0x71a2) * sVar7;
    sVar7 = FUN_000049bc();
    *(short *)((int)psVar9 + *(ushort *)(unaff_A6 + -0x71ba) + 4) =
         *(short *)(in_D0 + 0x2c + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
         *(short *)(unaff_A6 + -0x71a6) * sVar7;
  }
  iVar5 = FUN_000049d4();
  if (iVar5 != 0) {
    sVar7 = FUN_000049bc();
    *(short *)(unaff_A6 + -0x7146) =
         *(short *)(in_D0 + 0x1c + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
         *(short *)(unaff_A6 + -0x71b4) * sVar7;
  }
  psVar9[2] = *(short *)(unaff_A6 + -0x7146);
  return;
}



void FUN_00003ad4(void)

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
  int unaff_A6;
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(unaff_A6 + -0x71ac);
  psVar4 = psVar3;
  psVar9 = (short *)0x0;
  do {
    psVar8 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar8) {
      return;
    }
    iVar5 = FUN_000049d4();
    if (iVar5 == 0) {
      *(undefined1 *)(psVar8 + 3) = *(undefined1 *)(psVar9 + 3);
      *(undefined1 *)((int)psVar8 + 7) = *(undefined1 *)((int)psVar9 + 7);
    }
    else {
      uVar7 = FUN_00004a24();
      *(undefined1 *)(psVar8 + 3) = uVar7;
      uVar7 = FUN_000049fc();
      *(undefined1 *)((int)psVar8 + 7) = uVar7;
    }
    if (psVar8 == psVar3) {
      sVar6 = FUN_00004a38();
      *psVar8 = sVar6;
LAB_00003b8c:
      sVar6 = FUN_00004a38();
      psVar8[1] = sVar6;
    }
    else {
      iVar5 = FUN_000049d4();
      if (iVar5 == 0) {
        sVar6 = FUN_000049bc();
        sVar6 = sVar6 + extraout_D1w;
LAB_00003b7a:
        *psVar8 = sVar6;
      }
      else {
        iVar5 = FUN_000049d4();
        if (iVar5 == 0) {
          sVar6 = FUN_000049bc();
          sVar6 = *psVar9 - sVar6;
          goto LAB_00003b7a;
        }
        sVar6 = FUN_00004a38();
        *psVar8 = sVar6;
      }
      iVar5 = FUN_000049d4();
      if (iVar5 == 0) {
        sVar6 = FUN_000049bc();
        sVar6 = sVar6 + extraout_D1w_00;
      }
      else {
        iVar5 = FUN_000049d4();
        if (iVar5 != 0) goto LAB_00003b8c;
        sVar6 = FUN_000049bc();
        sVar6 = psVar9[1] - sVar6;
      }
      psVar8[1] = sVar6;
    }
    sVar6 = FUN_000049bc();
    psVar8[2] = *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                *(short *)(unaff_A6 + -0x71bc) * sVar6;
    psVar4 = (short *)((int)psVar8 + (uint)*(ushort *)(unaff_A6 + -0x71ac));
    psVar9 = psVar8;
  } while( true );
}



void FUN_00003bfa(void)

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
  int unaff_A6;
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(unaff_A6 + -0x71c0);
  psVar4 = psVar3;
  psVar11 = (short *)0x0;
  do {
    psVar10 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar10) {
      return;
    }
    iVar5 = FUN_000049d4();
    if (iVar5 == 0) {
      *(undefined1 *)(psVar10 + 3) = *(undefined1 *)(psVar11 + 3);
      *(undefined1 *)((int)psVar10 + 7) = *(undefined1 *)((int)psVar11 + 7);
    }
    else {
      uVar9 = FUN_00004a24();
      *(undefined1 *)(psVar10 + 3) = uVar9;
      uVar9 = FUN_000049fc();
      *(undefined1 *)((int)psVar10 + 7) = uVar9;
    }
    if (psVar10 == psVar3) {
      sVar7 = FUN_00004a38();
      *psVar10 = sVar7;
LAB_00003cb2:
      sVar7 = FUN_00004a38();
      psVar10[1] = sVar7;
    }
    else {
      iVar5 = FUN_000049d4();
      if (iVar5 == 0) {
        sVar7 = FUN_000049bc();
        sVar7 = sVar7 + extraout_D1w;
LAB_00003ca0:
        *psVar10 = sVar7;
      }
      else {
        iVar5 = FUN_000049d4();
        if (iVar5 == 0) {
          sVar7 = FUN_000049bc();
          sVar7 = *psVar11 - sVar7;
          goto LAB_00003ca0;
        }
        sVar7 = FUN_00004a38();
        *psVar10 = sVar7;
      }
      iVar5 = FUN_000049d4();
      if (iVar5 == 0) {
        sVar7 = FUN_000049bc();
        sVar7 = sVar7 + extraout_D1w_00;
      }
      else {
        iVar5 = FUN_000049d4();
        if (iVar5 != 0) goto LAB_00003cb2;
        sVar7 = FUN_000049bc();
        sVar7 = psVar11[1] - sVar7;
      }
      psVar10[1] = sVar7;
    }
    sVar7 = FUN_000049bc();
    psVar10[2] = *(short *)(in_D0 + 0x10 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                 *(short *)(unaff_A6 + -0x71bc) * sVar7;
    uVar6 = FUN_00004a50();
    *(undefined4 *)((int)psVar10 + (uint)*(ushort *)(unaff_A6 + -0x71ac)) = uVar6;
    uVar8 = FUN_000049bc();
    *(undefined2 *)((int)psVar10 + *(ushort *)(unaff_A6 + -0x71ac) + 4) = uVar8;
    psVar4 = (short *)((int)psVar10 + (uint)*(ushort *)(unaff_A6 + -0x71c0));
    psVar11 = psVar10;
  } while( true );
}



void FUN_00003d3e(void)

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
  int unaff_A6;
  
  psVar3 = (short *)(in_D0 + (uint)*in_D1);
  uVar1 = in_D1[1];
  uVar2 = *(ushort *)(unaff_A6 + -0x71b4);
  psVar4 = psVar3;
  psVar9 = (short *)0x0;
  do {
    psVar8 = psVar4;
    if ((short *)((int)psVar3 + (uint)uVar1 * (uint)uVar2) <= psVar8) {
      return;
    }
    if (psVar8 == psVar3) {
      sVar6 = FUN_00004a38();
      *psVar8 = sVar6;
LAB_00003dc4:
      sVar6 = FUN_00004a38();
      psVar8[1] = sVar6;
    }
    else {
      iVar5 = FUN_000049d4();
      if (iVar5 == 0) {
        sVar6 = FUN_000049bc();
        sVar6 = sVar6 + extraout_D1w;
LAB_00003db2:
        *psVar8 = sVar6;
      }
      else {
        iVar5 = FUN_000049d4();
        if (iVar5 == 0) {
          sVar6 = FUN_000049bc();
          sVar6 = *psVar9 - sVar6;
          goto LAB_00003db2;
        }
        sVar6 = FUN_00004a38();
        *psVar8 = sVar6;
      }
      iVar5 = FUN_000049d4();
      if (iVar5 == 0) {
        sVar6 = FUN_000049bc();
        sVar6 = sVar6 + extraout_D1w_00;
      }
      else {
        iVar5 = FUN_000049d4();
        if (iVar5 != 0) goto LAB_00003dc4;
        sVar6 = FUN_000049bc();
        sVar6 = psVar9[1] - sVar6;
      }
      psVar8[1] = sVar6;
    }
    uVar7 = FUN_000049fc();
    *(undefined1 *)(psVar8 + 2) = uVar7;
    psVar4 = (short *)((int)psVar8 + (uint)*(ushort *)(unaff_A6 + -0x71b4));
    psVar9 = psVar8;
  } while( true );
}



void FUN_00003e1c(void)

{
  undefined2 *puVar1;
  int in_D0;
  undefined2 uVar2;
  ushort *in_D1;
  int unaff_A6;
  undefined2 *local_14;
  
  local_14 = (undefined2 *)(in_D0 + (uint)*in_D1);
  puVar1 = (undefined2 *)((int)local_14 + (uint)in_D1[1] * (uint)*(ushort *)(unaff_A6 + -0x71a6));
  for (; local_14 < puVar1;
      local_14 = (undefined2 *)((int)local_14 + (uint)*(ushort *)(unaff_A6 + -0x71a6))) {
    uVar2 = FUN_000049bc();
    *local_14 = uVar2;
    uVar2 = FUN_000049bc();
    local_14[1] = uVar2;
    uVar2 = FUN_000049d4();
    local_14[2] = uVar2;
  }
  return;
}



void FUN_00003ea0(void)

{
  int in_D0;
  byte bVar1;
  int unaff_A6;
  
  FUN_000047da();
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x7140) = (uint)bVar1;
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x713c) = (uint)bVar1;
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x7138) = (uint)bVar1;
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x7130) = (uint)bVar1;
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x7134) = (uint)bVar1;
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x712c) = (uint)bVar1;
  FUN_000047da();
  FUN_00004800(*(undefined2 *)(unaff_A6 + -0x71a8),1);
  FUN_00004800(*(undefined2 *)(unaff_A6 + -0x71ae),0);
  FUN_00004800(*(undefined2 *)(unaff_A6 + -0x71a4),0);
  if (*(short *)(in_D0 + 0x32 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) != 0) {
    FUN_00004800(*(undefined2 *)(unaff_A6 + -0x71a2),0);
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



/* WORK HERE: decode_modugno.py still emits idx_N>=count_N warnings on
 * ~29% of section-2 (geometry) records (sector 2252227), scattered not
 * clustered - i.e. it self-corrects a few records later, consistent with
 * an occasional wrong bit-width on a DATA-DEPENDENT conditional read, not
 * a constant offset (verified: sweeping a fixed bit shift at every
 * section boundary never reaches 0 bad). Ghidra dropped every getbits()
 * width argument here (all show as `FUN_000049bc();` with no operand -
 * they're passed in D0, set by an immediately-preceding moveq/move.b that
 * got optimized out of this decompile), so this file can't settle it by
 * itself - cross-check against raw rpmod/pbp.asm at the two conditional
 * branches below:
 *   - '\x1c' (section 0) `inherit` branch (getbits(3) then getbits(ptrbits))
 *   - '\x1f' (section 1) `inherit2` branch (getbits(s2bits) for count2)
 * The '\x1f' branch is the top suspect: count2 = getbits(s2bits)+2 was
 * seen decoding to 258-930 for a handful of edges when e2.count=556 (now
 * clamped defensively in decode_modugno.py, but that hides the desync
 * rather than fixing it). Check whether s2bits (bits_needed(e2.count),
 * loaded from *(unaff_A6-0x7126)) is really reused unchanged for BOTH the
 * s2_idx read and the count2 read, or whether the real firmware reloads/
 * recomputes it - a stale value would explain an intermittent, self-
 * healing drift like this. */
void FUN_000040b0(short param_1,uint param_2)

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
  int unaff_A6;
  
  if (in_D1[1] != 0) {
    uVar2 = in_D1[1];
    uVar1 = *in_D1;
    puVar12 = (undefined2 *)0x0;
    for (uVar10 = *in_D1; uVar10 <= (ushort)(uVar1 + (uVar2 - 1) * param_1);
        uVar10 = param_1 + uVar10) {
      puVar11 = puVar12;
      if (param_2 < 0x100) {
        cVar8 = (char)param_2;
        if (cVar8 == '\x1c') {
          puVar11 = (undefined2 *)(in_D0 + (uint)uVar10);
          uVar7 = FUN_000049bc();
          *puVar11 = uVar7;
          uVar9 = FUN_000049e8();
          *(undefined1 *)(puVar11 + 1) = uVar9;
          cVar8 = FUN_000049d4();
          *(char *)(puVar11 + 1) = cVar8 * '\x10' + *(char *)(puVar11 + 1);
          iVar4 = FUN_000049d4();
          if (iVar4 == 0) {
            *(undefined1 *)((int)puVar11 + 3) = *(undefined1 *)((int)puVar12 + 3);
            puVar11[2] = puVar12[2];
          }
          else {
            uVar9 = FUN_000049fc();
            *(undefined1 *)((int)puVar11 + 3) = uVar9;
            uVar7 = FUN_000049bc();
            puVar11[2] = uVar7;
          }
          sVar6 = FUN_000049bc();
          puVar11[3] = *(short *)(in_D0 + 4 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                       *(short *)(unaff_A6 + -0x714a) * sVar6;
        }
        else if (cVar8 == '\x1f') {
          psVar3 = (short *)(in_D0 + (uint)uVar10);
          sVar6 = FUN_000049bc();
          *psVar3 = *(short *)(in_D0 + 8 + (uint)*(ushort *)(unaff_A6 + -0x71c2)) +
                    *(short *)(unaff_A6 + -29000) * sVar6;
          iVar4 = FUN_000049d4();
          if (iVar4 == 0) {
            *(undefined1 *)(psVar3 + 1) = 1;
          }
          else {
            cVar8 = FUN_000049bc();
            *(char *)(psVar3 + 1) = cVar8 + '\x02';
          }
          uVar9 = FUN_000049d4();
          *(undefined1 *)((int)psVar3 + 3) = uVar9;
        }
        else if (cVar8 == '!') {
          iVar4 = in_D0 + (uint)uVar10;
          FUN_000049bc();
          FUN_0000694e(8);
          FUN_0000694e(4);
          iVar5 = FUN_000049d4();
          if (iVar5 == 0) {
            *(undefined2 *)(iVar4 + 8) = 0x7fff;
            *(undefined2 *)(iVar4 + 10) = 0x7fff;
            *(undefined2 *)(iVar4 + 0xc) = 0x7fff;
            *(undefined2 *)(iVar4 + 0xe) = 0x7fff;
          }
          else {
            FUN_000049d4();
            uVar7 = FUN_000049bc();
            *(undefined2 *)(iVar4 + 8) = uVar7;
            FUN_000049d4();
            uVar7 = FUN_000049bc();
            *(undefined2 *)(iVar4 + 10) = uVar7;
            FUN_000049d4();
            uVar7 = FUN_000049bc();
            *(undefined2 *)(iVar4 + 0xc) = uVar7;
            FUN_000049d4();
            uVar7 = FUN_000049bc();
            *(undefined2 *)(iVar4 + 0xe) = uVar7;
          }
          uVar7 = FUN_000049bc();
          *(undefined2 *)(iVar4 + 0x14) = uVar7;
          *(short *)(iVar4 + 0x14) = *(short *)(iVar4 + 0x14) << 1;
          uVar7 = FUN_000049bc();
          *(undefined2 *)(iVar4 + 0x16) = uVar7;
        }
      }
      puVar12 = puVar11;
    }
  }
  return;
}



void FUN_00004320(void)

{
  byte bVar1;
  int unaff_A6;
  
  FUN_000047da();
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x7126) = (uint)bVar1;
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x7122) = (uint)bVar1;
  FUN_000047da();
  FUN_00004842();
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x711e) = (uint)bVar1;
  FUN_000047da();
  FUN_00004994();
  FUN_000040b0(*(undefined2 *)(unaff_A6 + -0x7172),0x1c);
  FUN_000040b0(*(undefined2 *)(unaff_A6 + -0x714a),0x1f);
  FUN_000040b0(*(undefined2 *)(unaff_A6 + -29000),0x21);
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
  int unaff_A6;
  ushort local_2e;
  
  if (in_D1[1] != 0) {
    local_2e = *in_D1 + (in_D1[1] - 1) * param_1;
    bVar9 = (byte)param_2;
    if ((param_2 < 0x100) && (((bVar9 == 0x24 || (bVar9 == 0x25)) || (bVar9 == 0x26)))) {
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
    for (uVar10 = *in_D1; uVar10 <= local_2e; uVar10 = param_1 + uVar10) {
      if (param_2 == 0x24) {
        puVar1 = (undefined1 *)(in_D0 + (uint)uVar10);
        uVar8 = FUN_00004a10();
        *puVar1 = uVar8;
        uVar8 = FUN_000049d4();
        puVar1[1] = uVar8;
        sVar6 = FUN_000049bc();
        *(short *)(puVar1 + 2) = sVar6 << 1;
      }
      else if (param_2 < 0x25) {
        if (bVar9 == 10) {
          puVar11 = (undefined4 *)(in_D0 + (uint)uVar10);
          uVar3 = FUN_00004a50();
          *puVar11 = uVar3;
          uVar3 = FUN_00004a50();
LAB_00004654:
          puVar11[1] = uVar3;
        }
        else {
          if ((10 < bVar9) || (param_2 != 9)) goto LAB_00004692;
          unaff_A3 = (short *)(in_D0 + (uint)uVar10);
          if (uVar10 == *in_D1) {
            sVar6 = FUN_00004a38();
            *unaff_A3 = sVar6;
LAB_00004524:
            sVar6 = FUN_00004a38();
            unaff_A3[1] = sVar6;
          }
          else {
            iVar4 = FUN_000049d4();
            if (iVar4 == 0) {
              sVar6 = FUN_000049bc();
              sVar6 = sVar6 + extraout_D1w;
LAB_00004512:
              *unaff_A3 = sVar6;
            }
            else {
              iVar4 = FUN_000049d4();
              if (iVar4 == 0) {
                sVar6 = FUN_000049bc();
                sVar6 = *unaff_A4 - sVar6;
                goto LAB_00004512;
              }
              sVar6 = FUN_00004a38();
              *unaff_A3 = sVar6;
            }
            iVar4 = FUN_000049d4();
            if (iVar4 == 0) {
              sVar6 = FUN_000049bc();
              sVar6 = sVar6 + extraout_D1w_00;
            }
            else {
              iVar4 = FUN_000049d4();
              if (iVar4 != 0) goto LAB_00004524;
              sVar6 = FUN_000049bc();
              sVar6 = unaff_A4[1] - sVar6;
            }
            unaff_A3[1] = sVar6;
          }
        }
      }
      else {
        if (param_2 == 0x26) {
          puVar11 = (undefined4 *)(in_D0 + (uint)uVar10);
          uVar7 = FUN_000049bc();
          *(undefined2 *)puVar11 = uVar7;
          sVar6 = FUN_000049bc();
          *(short *)((int)puVar11 + 2) = sVar5 * sVar6 + extraout_D1w_02;
          FUN_000049d4();
          uVar3 = FUN_000049bc();
          goto LAB_00004654;
        }
        if ((param_2 < 0x27) && (param_2 == 0x25)) {
          puVar2 = (undefined2 *)(in_D0 + (uint)uVar10);
          uVar7 = FUN_000049bc();
          *puVar2 = uVar7;
          sVar6 = FUN_000049bc();
          puVar2[1] = sVar5 * sVar6 + extraout_D1w_01;
          FUN_000049d4();
          uVar3 = FUN_000049bc();
          *(undefined4 *)(puVar2 + 2) = uVar3;
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
  undefined4 uVar2;
  undefined4 uVar3;
  
  FUN_000047da();
  bVar1 = FUN_00004a68();
  *(uint *)(unaff_A6 + -0x7114) = (uint)bVar1;
  FUN_000047da();
  FUN_00004994();
  FUN_0000441a(*(undefined2 *)(unaff_A6 + -0x7156),0x24);
  FUN_0000441a(*(undefined2 *)(unaff_A6 + -0x7158),0x25);
  FUN_0000441a(*(undefined2 *)(unaff_A6 + -0x7154),0x26);
  if (*(short *)(in_D0 + 0x10 +
                (uint)*(ushort *)(unaff_A6 + -0x714e) + (uint)*(ushort *)(unaff_A6 + -0x71c2)) == 0)
  {
    uVar3 = 10;
    uVar2 = 8;
  }
  else {
    uVar3 = 9;
    uVar2 = 4;
  }
  FUN_0000441a(uVar2,uVar3);
  FUN_00004862();
  return;
}



void FUN_00004798(void)

{
  int in_D0;
  byte bVar1;
  int unaff_A6;
  
  bVar1 = FUN_00004a68(*(ushort *)(in_D0 + 6) & 0xff);
  *(uint *)(unaff_A6 + -0x710c) = (uint)bVar1;
  *(int *)(unaff_A6 + -0x7108) = in_D0;
  return;
}



void FUN_000047da(void)

{
  int in_D1;
  int unaff_A6;
  
  FUN_0000694e();
  *(int *)(unaff_A6 + -0x7108) = in_D1 + *(int *)(unaff_A6 + -0x7108);
  return;
}



void FUN_00004800(ushort param_1,char param_2)

{
  int iVar1;
  int in_D1;
  
  iVar1 = (uint)*(ushort *)(in_D1 + 2) * (uint)param_1;
  if (param_2 != '\0') {
    iVar1 = (uint)param_1 + iVar1;
  }
  FUN_000047da(iVar1);
  return;
}



void FUN_00004842(void)

{
  undefined4 *in_D0;
  int in_D1;
  int unaff_A6;
  
  *in_D0 = *(undefined4 *)(unaff_A6 + -0x7108);
  *(int *)(unaff_A6 + -0x7108) = in_D1 + *(int *)(unaff_A6 + -0x7108);
  return;
}



void FUN_00004862(void)

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
  int unaff_A6;
  undefined5 uVar9;
  byte local_e8 [192];
  ushort local_28;
  ushort local_26;
  int local_24;
  
  local_24 = in_D0;
  local_26 = FUN_000049bc();
  local_28 = FUN_000049bc();
  if ((local_26 != 0) || (local_28 != 0)) {
    pbVar8 = local_e8;
    for (bVar5 = 0; bVar5 < 6; bVar5 = bVar5 + 1) {
      bVar4 = FUN_000049bc();
      *pbVar8 = bVar4;
      for (bVar4 = 0; bVar4 < *pbVar8; bVar4 = bVar4 + 1) {
        uVar9 = FUN_00004a10();
        pbVar8[(int)uVar9 + 1] = (byte)((uint5)uVar9 >> 0x20);
      }
      pbVar8 = pbVar8 + 0x20;
    }
    uVar2 = (uint)local_28;
    for (pbVar8 = (byte *)(local_24 + (uint)local_26); pbVar8 <= (byte *)(local_24 + uVar2);
        pbVar8 = pbVar8 + 1) {
      uVar3 = FUN_000049e8();
      if (uVar3 < 0x100) {
        cVar6 = (char)uVar3;
        if (cVar6 == '\0') {
          uVar3 = FUN_000049d4();
          iVar7 = unaff_A6 + -0x6bb0;
        }
        else if (cVar6 == '\x01') {
          uVar3 = FUN_000049e8();
          iVar7 = unaff_A6 + -0x6bae;
        }
        else {
          if (cVar6 != '\x02') goto LAB_00004902;
          uVar3 = FUN_000049fc();
          iVar7 = unaff_A6 + -0x6baa;
        }
LAB_00004954:
        *pbVar8 = *(byte *)(iVar7 + uVar3);
      }
      else {
LAB_00004902:
        bVar5 = FUN_00004a10();
        if (bVar5 < 0x27) {
          if (bVar5 < 0x1c) {
            uVar3 = (uint)bVar5;
            iVar7 = unaff_A6 + -0x6ba2;
            goto LAB_00004954;
          }
          pbVar1 = local_e8 + (short)(bVar5 - 0x21) * 0x20;
          FUN_0000694e(*pbVar1);
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



undefined8 FUN_000049bc(void)

{
  int iVar1;
  int *piVar2;
  int in_D0;
  undefined4 in_D1;
  int unaff_A6;
  
  piVar2 = (int *)(unaff_A6 + -0x7104);
  iVar1 = *piVar2;
  *piVar2 = in_D0 + *piVar2;
  return CONCAT44((uint)(**(int **)(unaff_A6 + -0x7100) << iVar1) >> 0x20 - in_D0,in_D1);
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



char FUN_00004a68(void)

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



int FUN_00004c48(void)

{
  int iVar1;
  
  FUN_00005534();
  iVar1 = FUN_00004bbc();
  if (iVar1 < 0) {
    FUN_00006e40();
    iVar1 = FUN_00004bbc();
  }
  FUN_00005560();
  return iVar1;
}



bool FUN_00004c78(void)

{
  int iVar1;
  uint *in_D1;
  int unaff_A6;
  undefined1 auStack_1a [2];
  uint local_18;
  undefined1 auStack_14 [8];
  uint *local_c;
  
  local_c = in_D1;
  iVar1 = FUN_000071ca(auStack_14,auStack_1a,&local_18);
  if (iVar1 != -1) {
    *local_c = local_18 & 0xffff;
  }
  else {
    func_0x000067b0(*(undefined4 *)(unaff_A6 + -0x7ff4));
  }
  return iVar1 != -1;
}



undefined4 FUN_00004cda(void)

{
  int *in_D0;
  undefined4 in_D1;
  int unaff_A6;
  undefined4 local_1c;
  undefined4 local_18;
  
  FUN_00004c78();
  *in_D0 = local_1c + *(int *)(unaff_A6 + -0x6ffc) * (local_18 - *(int *)(unaff_A6 + -0x6b7a));
  return in_D1;
}



undefined8 FUN_00004d20(void)

{
  undefined4 *in_D0;
  undefined4 uVar1;
  int iVar2;
  undefined4 in_D1;
  int unaff_A6;
  undefined1 auStack_22 [2];
  int local_20 [2];
  undefined1 auStack_18 [8];
  undefined4 *local_10;
  undefined4 local_c;
  
  local_c = in_D1;
  if (*(int *)(unaff_A6 + -0x6b7a) == -1) {
    local_10 = in_D0;
    iVar2 = FUN_000071ca(auStack_18,auStack_22,local_20);
    if (iVar2 == -1) {
      func_0x000067b0(*(undefined4 *)(unaff_A6 + -0x7ff4));
      uVar1 = 0;
    }
    else {
      *(int *)(unaff_A6 + -0x6ffc) = local_20[0] >> 0x10;
      uVar1 = FUN_00004c78();
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
  
  if (*(int *)(unaff_A6 + -0x6b7a) == -1) {
    uVar1 = 0;
  }
  else {
    uVar1 = FUN_00004cda();
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
  undefined4 local_18;
  
  if (*(int *)(unaff_A6 + -0x6b76) == -1) {
    uVar2 = 0;
  }
  else {
    uVar2 = FUN_00004cda();
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
  int iVar1;
  undefined4 in_D1;
  
  iVar1 = FUN_0000701a();
  return (ulonglong)CONCAT14(iVar1 != -1,in_D1);
}



undefined4 FUN_00004f58(void)

{
  int iVar1;
  
  iVar1 = FUN_00004f0a();
  if ((iVar1 != 0) && (iVar1 = FUN_00007026(), iVar1 != -1)) {
    return 1;
  }
  return 0;
}



void FUN_00004f80(void)

{
  int iVar1;
  
  do {
    iVar1 = FUN_000070b2(1);
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



void FUN_000055c4(void)

{
  int in_D0;
  
  FUN_00005642(in_D0 + 0x100,0xff);
  return;
}



void FUN_00005608(undefined4 param_1)

{
  FUN_000055c4(param_1);
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
  undefined4 in_D0;
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
  uVar2 = FUN_000065ee(in_D0);
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
  int iVar1;
  char *pcVar2;
  short sVar5;
  byte *pbVar3;
  undefined4 uVar4;
  int extraout_A0;
  int unaff_A6;
  int local_28;
  
  iVar1 = FUN_000062ce();
  if (((iVar1 == 0) || (iVar1 = FUN_00006314(), iVar1 < 0)) ||
     (pcVar2 = (char *)FUN_0000639a(), pcVar2 == (char *)0x0)) {
LAB_00005912:
    uVar4 = (**(code **)(unaff_A6 + -0x6b5a + param_1 * 4))();
  }
  else {
    if (*(short *)(unaff_A6 + -0x6b14 + iVar1 * 4) == -1) {
      sVar5 = func_0x000067cc();
      *(short *)(unaff_A6 + -0x6b14 + iVar1 * 4) = sVar5;
      if (-1 < sVar5) {
        pbVar3 = (byte *)FUN_0000658a(0);
        *(ushort *)(extraout_A0 + 2 + iVar1 * 4) = (ushort)*pbVar3;
        if ((-1 < *(short *)(unaff_A6 + -0x6b14 + iVar1 * 4)) &&
           (*(short *)(unaff_A6 + -0x6b14 + iVar1 * 4) < 3)) {
          FUN_000067fc();
          *(undefined2 *)(unaff_A6 + -0x6b14 + iVar1 * 4) = 0xffff;
        }
        goto LAB_000058d6;
      }
    }
    else {
LAB_000058d6:
      if ((*(short *)(unaff_A6 + -0x6b12 + iVar1 * 4) != local_28) || (*pcVar2 != '_'))
      goto LAB_00005912;
      do {
        pcVar2 = pcVar2 + 1;
        if (*pcVar2 == '_') goto LAB_00005912;
      } while (*pcVar2 != '\0');
    }
    uVar4 = 0xffffffff;
  }
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
    if (*(short *)(unaff_A6 + -0x6b14 + (uint)local_48._0_1_ * 4) == -1) {
      FUN_0000678c(*(undefined4 *)(*(int *)(unaff_A6 + -0x6b4a) + 0x1a + (uint)local_48._0_1_ * 4));
      sVar5 = func_0x000067cc();
      *(short *)(unaff_A6 + -0x6b14 + (uint)local_48._0_1_ * 4) = sVar5;
      if (sVar5 < 0) {
        return -1;
      }
      uVar2 = (uint)local_48._0_1_;
      pbVar3 = (byte *)FUN_0000658a(0);
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
      local_40 = FUN_000065ee(unaff_A6 + -0x6f88);
      if ((-1 < local_40) && (iVar4 = FUN_000065ee(local_40), -1 < iVar4)) {
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
  int iVar2;
  undefined4 in_D1;
  int iVar3;
  int unaff_A6;
  
  if (*(int *)(unaff_A6 + -0x6b20) == 0) {
    uVar1 = FUN_00006566();
    *(undefined4 *)(unaff_A6 + -0x6b20) = uVar1;
  }
  iVar3 = 0;
  while ((iVar3 < *(short *)(*(int *)(unaff_A6 + -0x6b20) + 0x10) &&
         (iVar2 = FUN_0000686c(), iVar2 != 0))) {
    iVar3 = iVar3 + 1;
  }
  if (*(short *)(*(int *)(unaff_A6 + -0x6b20) + 0x10) <= iVar3) {
    iVar3 = -1;
  }
  return CONCAT44(iVar3,in_D1);
}



char * FUN_0000639a(void)

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
  pcVar2 = (char *)FUN_000064bc();
  if (*pcVar2 == '_') {
    if (pcVar2[1] < 'A') {
      local_3e = 0;
      while( true ) {
        pcVar5 = pcVar2 + 1;
        cVar1 = *pcVar5;
        if ((cVar1 < '0') || ('9' < cVar1)) break;
        iVar4 = FUN_00006abc();
        local_3e = ((short)cVar1 + iVar4) - 0x30;
        pcVar2 = pcVar5;
      }
      if (*pcVar5 == '_') {
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
      for (iVar4 = 0; iVar4 < **(short **)(unaff_A6 + -0x6b1c); iVar4 = iVar4 + 1) {
        iVar3 = FUN_0000686c();
        if (iVar3 == 0) {
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
  int iVar2;
  int iVar3;
  int unaff_A6;
  
  if (((*in_D0 != '_') && (*in_D0 != '@')) && ('@' < *in_D0)) {
    if (*(int *)(unaff_A6 + -0x6b18) == 0) {
      iVar1 = FUN_000070e6();
      if (iVar1 == -1) {
        return;
      }
      *(int *)(unaff_A6 + -0x6b18) = iVar1 + 0x30;
    }
    iVar1 = *(int *)(unaff_A6 + -0x6b18) + 2;
    iVar3 = 0;
    while ((iVar3 < **(short **)(unaff_A6 + -0x6b18) && (iVar2 = FUN_0000686c(iVar1), iVar2 != 0)))
    {
      iVar1 = iVar1 + 0x32;
      iVar3 = iVar3 + 1;
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



void FUN_0000701a(void)

{
  FUN_00007004();
  return;
}



void FUN_00007026(void)

{
  FUN_00007004();
  return;
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


