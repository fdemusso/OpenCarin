# Analisi e Scoperte: Unicorn Engine e Moduli OS-9

Questo documento raccoglie le scoperte fondamentali effettuate durante il tentativo di reverse engineering del codec `CF=1` (CARINdb) presente nel firmware OS-9/68K (`_CC93__0560_nav_sw_load`), supportate dall'introduzione dell'emulazione dinamica tramite **Unicorn Engine**.

## 1. La VERA Struttura del Firmware (Il falso limite di `0x32c46`)

Fino a questo momento, si riteneva erroneamente che tutto il codice eseguibile fosse concentrato nei primi `~0x32c46` byte del binario, e che il resto fosse costituito esclusivamente da dati o stringhe.

Analizzando la firma dei moduli OS-9 (il magic byte `0x4AFC`), ho scritto un parser (`parse_os9_all.py`) che ha svelato una realtà completamente diversa: il file è un "archivio" concatenato di oltre 50 moduli OS-9 indipendenti.
Crucialmente, **dopo** l'offset `0x32c46` sono presenti moduli marcati con `Type/Lang 0x0101` (Programma / Oggetto M68K). 

Questi moduli costituiscono l'applicazione vera e propria del navigatore, e i loro nomi sono inequivocabili:
* `dbpa-F` (offset `0x052f2e`): *Database Physical Access*
* `pbp-F` (offset `0x058ed0`): *Physical Block Parser*
* `dbd-F` (offset `0x060374`): *Database Decoder / Daemon*
* `dbc-F` (offset `0x063b92`): *Database Compression / Controller*
* `dbq-F` (offset `0x067ef4`): *Database Query*

**Conclusione:** Il codice che gestisce e decomprime il database CARIN (incluso il dispatching per `CF=1` e `CF=2`) **non si trova** nel kernel o nei manager di I/O (come `rbf` o `pipeman` analizzati prima), ma all'interno di questi moduli specifici (in particolare `pbp-F` e `dbd-F`).

## 2. Analisi Dinamica con Unicorn Engine: L'Approccio "Fuzzer"

Dal momento che il firmware è composto da moduli OS-9, una esecuzione "lineare" dall'entry point fallirebbe quasi subito a causa delle innumerevoli syscall al kernel operativo (i `trap #0`). Per ovviare a questo problema, abbiamo "usato Unicorn a nostro vantaggio" ideando un approccio mirato: un **Function Fuzzer**.

Invece di tentare un'emulazione completa dell'OS, lo script `unicorn_fuzz.py`:
1. **Mappa l'intero firmware** nella memoria virtuale di Unicorn (per preservare tutti gli offset relativi).
2. **Crea un blocco CF=1 fittizio** (con pattern esatto dal blueprint: `04 81 10 32 08 42 c8 61 0e 21 e4 4c 89 31`) allocato in un buffer sorgente virtuale (`0x300000`).
3. **Alloca un buffer di destinazione** pulito (`0x400000`).
4. **Scansiona** le function candidate (identificate staticamente tramite `link.w a5` o `movem.l`) all'interno dei moduli `db*`.
5. **Invoca** dinamicamente ogni funzione configurando sia i registri (`a0`, `a1`, `d0`, `d1`) sia lo stack (`sp+4`, `sp+8`, ecc.) con i puntatori ai buffer.
6. Osserva se, dopo un timeout di 5000 istruzioni, la funzione ha mutato la memoria nel buffer di destinazione.

Questo bypassa il problema dell'analisi statica dove Capstone finiva per decodificare dati di padding come istruzioni matematiche insensate (es. blocchi di zero tradotti come `ori.b #0, d0` multipli).

## 3. Scoperte Dai Dati e Dalle Stringhe

L'estrazione dei moduli `dbd-F` e `dbc-F` ha rivelato stringhe di log molto chiare che confermano il loro ruolo:
* Percorsi di pipe inter-processo: `/c0/_129_/pipe/dbc_request_pipe`, `/pipe/dbq_req_pipe_XXXXXX`
* Costanti: `CARINDB`, `NAV_DB`, `DB-REL`, `BSW-REL`
* Log diagnostici: `[DBC] %s, %d`, `dbpa -q%s -r%s`

L'architettura del software naviga i blocchi passandoseli attraverso le *pipe* OS-9 (`dbc_request_pipe`). È altamente probabile che il demone `dbc-F` o `dbd-F` riceva il pacchetto, legga l'header da 8 byte, faccia il dispatching in base al `COMPRESSION_FLAG`, allochi dinamicamente il buffer per `UNCOMPRESSED_SIZE * 512` byte usando una costante taggata (es. `move.l #$5350, d1` per "SP" e `move.l #$200, d0` per 512 byte) e chiami la routine di de-compattazione.

## 4. Prossimi Passi

Il setup di Unicorn Engine è ora attivo e funzionante nel workspace. Le prossime iterazioni consisteranno nel:
1. Perfezionare la convenzione di chiamata nel fuzzer Unicorn (passaggio parametri). Molte routine OS-9/68K si aspettano i puntatori in `a2`/`a3` o strutturati.
2. Identificare i wrapper specifici che contengono l'array dei function pointer (jump table), poiché l'analisi statica ha dimostrato che il check tra `CF=1` e `CF=2` potrebbe non avvenire tramite classici `cmpi.b`, ma come indice di un array di decompressori.
3. Hookare attivamente le funzioni di `malloc` interne identificate (`0x1f71a` o simili) tramite Unicorn, iniettando memoria fittizia in modo che i decompressori non vadano in crash cercando di allocare la finestra del dizionario.
