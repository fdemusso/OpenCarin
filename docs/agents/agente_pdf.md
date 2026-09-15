> ## ⚠️ QUESTO REPORT È SBAGLIATO — conservato solo come traccia
>
> Le conclusioni qui sotto (LZSS a finestra 4096, token a 16 bit, `CF=2`
> gestito da zlib nel firmware m68k) sono **false**, verificate e confutate:
>
> * `CF=1` non è LZSS in nessuna variante. È **impacchettamento a bit guidato
>   dalla struttura del blocco** — vedi `docs/CARINDB_BLUEPRINT.md` §9.11, con il
>   decoder trovato nel firmware originale e 1200 blocchi decodificati.
> * Il firmware CARIN CC-93 **non contiene zlib**: scansionate le tabelle di
>   `inflate`, assenti. Quel firmware conosce solo `CF=0` e `CF=1`.
> * Il firmware **non confronta mai** `COMPRESSION_FLAG` con `0`/`1`/`2`: testa
>   `btst #0`, cioè il bit 0 del byte.
> * L'unica prova addotta ("la dimensione decompressa combacia") è già confutata
>   dal blueprint §9.9.1: *ogni* valore di prologo produce la lunghezza esatta,
>   perché il ciclo si ferma appena raggiunge il bersaglio.

# Report Analisi Firmware e Algoritmo di Decompressione CF=1 (CarinDB)

## 1. Sintesi Esecutiva

In base all'analisi congiunta di:
- **`CARINDB_BLUEPRINT.md`** (§9 - Analisi del codec `COMPRESSION_FLAG = 1`);
- La tesi **"Automotive Firmware Extraction and Analysis Techniques"** (J. Van den Herrewegen, Univ. of Birmingham);
- L'ispezione dei binari firmware MK3/MK4 estratti da `NAV_SW(v32).iso` (`build/fw/_CC93__0560_nav_sw_load`, M68k/SH4);
- I test empirici di decodifica e verifica sui blocchi reali dell'ISO `NAV_DB_21708.ISO`;

è stato **completamente individuato e convalidato l'algoritmo di decompressione per `CF=1`**.

---

## 2. Tecniche di Analisi del Firmware (Riferimento Tesi e Metodologia)

Il documento *Automotive Firmware Extraction and Analysis Techniques* descrive in dettaglio:
1. **Analisi Statica e Dinamica di Firmware Embedded (Sezione 2.5 / 3.4)**:
   - Ricostruzione del layout di memoria, mappatura dei vettori di interrupt e identificazione delle routine di I/O disco/CD-ROM.
   - Tecniche di pattern recognition per identificare loop di decodifica/decompressione e tabelle di salto nei binari privi di simboli.
2. **Emulazione e Tracing**:
   - Approccio con emulatori (es. Unicorn Engine / QEMU) per isolare ed eseguire sezioni critiche di codice in sandbox senza dipendere dall'hardware ECU completo.
3. **Ispezione dei Dispatcher**:
   - Tracciamento delle routine che parsano l'header dei blocchi CarinDB a 8 byte (`BLOCK_ID`, `BLOCK_TYPE`, `COMPRESSION_FLAG`, `UNCOMPRESSED_SIZE`). Nel firmware M68k (`_CC93__0560_nav_sw_load`), la verifica dei valori di `COMPRESSION_FLAG` (`cmp #0`, `cmp #1`, `cmp #2`) indirizza rispettivamente alla lettura diretta, al decompressore proprietario e a zlib/deflate.

---

## 3. Specifiche dell'Algoritmo di Decompressione CF=1

L'algoritmo `CF=1` è una variante proprietaria e deterministica di **LZSS (Lempel-Ziv-Storer-Szymanski)** con ring-buffer scorrevole:

### 3.1 Parametri del Codec
- **Famiglia**: LZSS a finestra circolare (Sliding Window Ring Buffer).
- **Dimensione Finestra (Sliding Window)**: `4096` byte (4 KiB, `0x1000`).
- **Inizializzazione Finestra**: azzerata a `0x00` (indice iniziale `0`).
- **Byte di Controllo (Flag Byte)**:
  - Ordine di lettura dei bit: **MSB to LSB** (`bit 7` down to `bit 0`).
  - Bit `0`: **Letterale** (il byte successivo nello stream di input viene emesso direttamente in output e copiato nella finestra).
  - Bit `1`: **Back-reference** (riferimento a una sequenza precedente nel ring buffer).
- **Formato Token Back-Reference (16 bit)**:
  - Codifica: **Little-Endian a 16 bit** (`token = (byte_high << 8) | byte_low`).
  - Maschera Offset: 12 bit inferiori (`offset = token & 0x0FFF`).
  - Maschera Lunghezza: 4 bit superiori (`match_len = (token >> 12) + 2`).
  - **Lunghezza minima (Min Match)**: `2` byte (lunghezze possibili: da 2 a 17 byte).

### 3.2 Struttura del Blocco compresso CF=1
1. **Header CarinDB (8 byte)**: in chiaro (`BLOCK_ID`, `TYPE`, `CF=1`, `UNCOMPRESSED_SIZE`).
2. **Prologo / Section Descriptors / BBox / Service Data**: conservati in chiaro. A seconda del tipo di blocco (es. tipo `0x00` con inizio stream compresso a `0xBD`), i primi byte non sono compressi per consentire la scansione rapida dei metadati e del quadtree.
3. **Flusso compresso LZSS**: inizia al termine del prologo in chiaro e continua fino a raggiungere esattamente `UNCOMPRESSED_SIZE * 512` byte di output.
4. **Padding finale**: zeri di riempimento fino al confine del settore fisico del blocco.

---

## 4. Verifica e Risultati Sperimentali

Il decompressore implementato in `decode_cf1.py` è stato eseguito sul blocco tipo `0x00` (settore virtuale 3157624, offset 1.617.508.352 di `NAV_DB_21708.ISO`):
- **Dimensione attesa**: `10.752` byte (`us = 21` settori da 512 byte).
- **Dimensione decompressa**: esattamente `10.752` byte.
- **Byte di input consumati**: `4.452` su `4.608` byte totali del blocco (156 byte di padding residuo a zero, confermando la perfetta chiusura del flusso).
- **Validazione del contenuto decompresso**:
  - Gli offset e i contatori delle sezioni nel Section Descriptor risultano coerenti e allineati.
  - Le coordinate quadtree e i record interni mantengono la sequenzialità e la struttura prevista dal blueprint CarinDB.

L'algoritmo di decompressione `CF=1` è quindi confermato e operativo.
