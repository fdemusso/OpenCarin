# Mapping delle funzioni OS-9 tramite Branch Island in `dbq`

Durante l'analisi della sezione dati, abbiamo scoperto che:
1. In `rpmod`, i target `-$73C6`, `-$73AE`, `-$7318` e `-$7240` cadono nella **BSS** (quindi nascono a zero).
2. Entrambi i moduli (`rpmod` e `dbq`) condividono lo stesso identico layout del Global Data Pointer (GDP), il che significa che includono gli stessi header globali.
3. Nel modulo `dbq`, la Data Initialization Table (DIT) è più grande e **inizializza fisicamente** queste stesse locazioni con istruzioni `JMP` (`4EF9`) verso le funzioni!
4. Calcolando l'offset `Data_Base + 0xC3A` (che equivale a `A6 - 0x73C6`), ho estratto i target esatti a cui puntano le Branch Island.

Ecco il codice de-compilato di queste 4 funzioni, estratto da `dbq.asm`:

### 1. `-$73c6(a6)` (Target: `0x00FDBE`)
Questa funzione è sorprendentemente un semplice stub che resetta un flag e ritorna un hardcoded `#$1F3` (499).
```m68k
00fdbe: link.w     a5, #$0
00fdc2: movem.l    d0, -(a7)
00fdc6: clr.b      -$6840(a6)     ; Azzera una variabile di stato
00fdca: move.l     #$1f3, d0      ; Ritorna 0x1F3 (probabile codice d'errore o stub dummy)
00fdd0: unlk       a5
00fdd2: rts        
```

### 2. `-$73ae(a6)` (Target: `0x0120A6`)
Wrapper che chiama due subroutines interne in base a un flag passato sullo stack.
```m68k
0120a6: link.w     a5, #$0
0120aa: movem.l    d0, -(a7)
0120ae: move.l     (a7), -$70f2(a6) ; Salva parametro in variabile globale
0120b2: bne.b      $120ba           ; Se non zero, salta a 120BA
0120b4: bsr.w      $12034           ; Chiama subroutine A
0120b8: bra.b      $120be
0120ba: bsr.w      $1202a           ; Chiama subroutine B
0120be: unlk       a5
0120c0: rts        
```

### 3. `-$7318(a6)` (Target: `0x00A118`)
Questa funzione è corposa. Inizia chiamando un'altra funzione e verifica se ritorna proprio l'errore/costante `#$1f3`.
```m68k
00a118: link.w     a5, #$0
00a11c: movem.l    d0-d1/d4-d5/a0/a2-a3, -(a7)
00a120: movea.l    $24(a7), a2
00a124: lea.l      -$12(a7), a7
00a128: suba.l     a3, a3
00a12a: move.l     $12(a7), d1
00a12e: lea.l      (a7), a0
00a130: move.l     a0, d0
00a132: bsr.w      $10828           ; Chiama sub_10828
00a136: move.l     d0, d4
00a138: cmpi.l     #$1f3, d0        ; Controlla se ha ritornato 0x1F3!
00a13e: bne.w      $a26e
00a142: movea.l    $12(a7), a0
00a146: moveq      #$0, d0
00a148: move.w     $6(a0), d0
00a14c: add.l      $6(a7), d0
00a150: movea.l    d0, a3
00a152: moveq      #$f, d0
00a154: and.b      $11(a3), d0
00a158: moveq      #$0, d1
00a15a: move.b     d0, d1
... (Continua per gestire restrizioni e validazioni)
```

### 4. `-$7240(a6)` (Target: `0x011C92`)
Una semplice funzione "getter" che estrae una dword (il campo a offset 0xC) dalla struttura passata in `d0`.
```m68k
011c92: link.w     a5, #$0
011c96: movem.l    d0/a2, -(a7)
011c9a: movea.l    d0, a2          ; a2 = pointer passato in d0
011c9c: move.l     $c(a2), d0      ; Legge il campo a offset +12
011ca0: movem.l    -$4(a5), a2
011ca6: unlk       a5
011ca8: rts        
```
