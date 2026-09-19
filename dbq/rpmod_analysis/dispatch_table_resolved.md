# Analisi Dispatch Table GDP in rpmod.asm (OpenCarin)

## Premessa sul Metodo
L'analisi diretta tramite scansione per pattern di inizializzazione (es. `21c8ffff8c3a` o `move.l Dxx, -$73c6(a6)`) in `rpmod.asm` **non ha prodotto risultati**. Questo indica che `rpmod.asm` **non inizializza esplicitamente** questi offset nel proprio codice tramite costanti letterali. I puntatori nel Global Data Pointer (GDP, `a6`) sono molto probabilmente:
1. Inizializzati dinamicamente durante il caricamento del modulo da parte del loader OS-9.
2. Inizializzati copiando un'intera tabella (es. `move.l (A0)+, (A1)+`) da una sezione dati.
3. Forniti da un modulo esterno (es. Kernel o un'altra libreria CARiN).

Non avendo a disposizione il valore a runtime di `a6` (Metodo 2), gli indirizzi esatti delle funzioni nel disassembly non possono essere determinati matematicamente, ma possiamo dedurre con precisione il loro comportamento analizzando il contesto di chiamata (i *caller* come `sub_0007ac` e `sub_000776`).

---

## Analisi delle Entry

### 1. Node Pointer Resolver
- **Offset:** `-$73c6(a6)`
- **Stato:** UNCONFIRMED (Indirizzo), VERIFIED (Comportamento)
- **Campi letti:** Legge **S0.A** (prima chiamata) e **S0.C** (seconda chiamata).
- **Analisi:**
  In `sub_0007ac` e `sub_000776`, la funzione viene chiamata **due volte consecutive** senza ricaricare i registri degli argomenti:
  ```m68k
  0007b4: 4eae8c3a     jsr        -$73c6(a6)
  0007b8: 4a80         tst.l      d0
  0007ba: 670c         beq.b      $7c8
  0007bc: 4eae8c3a     jsr        -$73c6(a6)
  ```
  Il caller passa all'inizio il puntatore all'arc record nel registro `A0`. Poiché la funzione non viene chiamata con argomenti diversi la seconda volta, essa deve consumare l'input internamente avanzando il puntatore. La prima chiamata accede a `(A0)+` (leggendo l'offset `+0`, ovvero `S0.A`, che rappresenta l'endpoint FROM_NODE_ID, insieme a FLAGS a `+2`), avanza `A0` di 4 byte, risolve il nodo e lo restituisce in `D0`. La seconda chiamata, trovando `A0` avanzato a `+4`, legge `S0.C` (TO_NODE_ID), lo risolve e lo restituisce in `D0`.
- **Valore:** Risolve in modo iterativo gli endpoint dell'arco. Legge SIA S0.A SIA S0.C avanzando un puntatore in `A0`.

### 2. Node Validator
- **Offset:** `-$73ae(a6)`
- **Stato:** UNCONFIRMED (Indirizzo), VERIFIED (Comportamento)
- **Campi letti:** Dipende dallo stato del nodo.
- **Analisi:**
  In `sub_0007ac` (0x7d2), viene chiamata passando in `D0` un puntatore letto da una variabile in `a6` (`$ffff908a(a6)`):
  ```m68k
  0007ca: 20360170ffff908a move.l     $ffff908a(a6, invalid.w), d0
  0007d2: 4eae8c52     jsr        -$73ae(a6)
  ```
  Prende un parametro di validazione in `D0` e restituisce un booleano in `D0` (`tst.b d0`). Si occupa di verificare restrizioni o validità specifiche del nodo appena risolto.

### 3. Restriction Check
- **Offset:** `-$7318(a6)`
- **Stato:** UNCONFIRMED (Indirizzo), VERIFIED (Comportamento)
- **Campi letti:** Accesso all'arc record generico.
- **Analisi:**
  Chiamata da `sub_0066de` (@ `0x6808`) e `003e9e`. Il caller prepara l'argomento caricando il puntatore all'arc record in `A0` e `D0` (`move.l a0, d0; jsr -$7318(a6)`). Restituisce anch'essa un booleano o uno status code in `D0` (`tst.b d0`).

### 4. Special Arc Handler
- **Offset:** `-$7240(a6)`
- **Stato:** UNCONFIRMED (Indirizzo), VERIFIED (Comportamento)
- **Campi letti:** Da determinare.
- **Analisi:**
  Chiamata da `sub_006eae` (@ `0x6eee`). Prende l'input dal registro `A3` (caricato in `D0` prima della chiamata tramite `move.l a3, d0`). La sua esecuzione è seguita da `addq.l #$4, a7`, indicando che potrebbe fare cleanup dello stack o che i parametri sono parzialmente su stack.
