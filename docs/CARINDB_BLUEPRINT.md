# CarinDB Binary Blueprint

> Media analizzato: `dataset/NAV_DB_21708.ISO` — BMW MK4 / CARiN, CD-ID 21708, compile date 2015-08-04.
> Tutti i valori sono **Big-Endian**. Ogni affermazione in questo documento è stata verificata
> sul dump; ciò che non è stato verificato è marcato `UNKNOWN` / `RESERVED`.

## 0. Correzioni alle note di forum (`dataset/context.md`)

| Affermazione forum | Verifica sul dump | Esito |
|---|---|---|
| "1 settore = 2048 byte" | `BLOCK_ID.sector * 512 == offset` per **315.095** blocchi su 315.095 | ❌ **Il settore CARINdb è 512 byte**, non 2048. 2048 è il settore *ISO*, non quello del DB |
| "blocco da 1 a 8 settori" | lunghezze osservate 1..70 | ❌ campo lunghezza = 1 byte, max osservato 70 settori (35 KiB) |
| "BLOCK_ID = 0x01030000 → blocco #3" | `0x00000304` = settore 3, 4 settori | ⚠️ esempio del forum invertito (little-endian); la regola `sector<<8 \| len` è corretta |
| "UNCOMPRESSED_SIZE" (1 byte) | `us*512 == len(payload)+8` su tutti i blocchi compressi | ✅ è espresso **in settori da 512 B**, non in byte |
| "Settore 0 = character set" | settore 0 = blocco tipo `0x12` (root) | ❌ è il **root/superblock** |
| "Settore 1 = CD info" | il blocco CD-info è a **settore 2**, tipo `0x13`, zlib | ⚠️ off-by-one |

---

## 1. Architettura File System (Volume ISO)

Immagine ISO 9660 standard, **2048 byte/settore logico** (`4385374208 / 2048 = 2141296` esatti).
Nessun Mode 2 Form 2 / subheader: i file estratti sono già "user data" puro.

```
Volume ID       : NAV_DB_21708
Volume Set      : CARIN
System ID       : DVD9_21708_5001
Publisher       : MapScape B.V.
Data Preparer   : Digital Maps
Created         : 2015-08-04 16:09:55
```

| Path | Dim. (byte) | Funzione |
|---|---|---|
| `/ABSTRACT` | 848 | Testo ASCII. Tool 5001, CD number, nome build Navteq (`eur_hw_her_bmw_14q4_20150721a_w`), riga **`Event Texts: carinet16s512.20080318`** |
| `/BIBLIOGR` | 38 | `CD-ID 21708DB-REL 34BSW-REL 10 11` — versione DB e SW minimo |
| `/COPYRIGH` | 622 | Copyright Continental Automotive GmbH |
| `/CARINET` | 750.592 | Catalogo "Event Texts" (stringhe UI / codici evento). **Spazio blocchi separato** da `DB/` (block type `0x0066`) |
| `/DB/DB_0` | 2.147.429.888 | CARINdb, finestra virtuale 0 |
| `/DB/DB_1` | 1.175.287.296 | CARINdb, finestra virtuale 1 |
| `/DVD9/PADDING` | 4.096 | Riempimento per layer break DVD9 |
| `/TPD/TPD3.DIC` | 51 | Dizionario TPD |
| `/TPD/NCCBEUFNM_EUW_20150804/` | — | *Third Party Data*: `INFO.PSC`, `<LANG>.LSC`, `<LANG>_n.CPR`, `ICONS/*.GIF`, `<LANG>/DBPOI/*.HTM`. Contenuti marketing/POI, **non** necessari al routing |

> `carinet16s512` nel file ABSTRACT è la conferma indipendente che l'unità di indirizzamento
> CARIN è **512** byte ("s512").

### 1.1 Spazio di indirizzamento virtuale `DB_0` + `DB_1`

`DB_0` e `DB_1` sono **un unico spazio di settori**. Ogni file copre una finestra di
`0x400000` settori (= 2 GiB):

```
virtual_sector = file_index * 0x400000 + local_sector
byte_offset_in_file = local_sector * 512
```

| File | Settori virtuali | Note |
|---|---|---|
| `DB_0` | `0x000000` .. `0x3FFED6` (0..4.194.198) | |
| *(hole)* | `0x3FFED7` .. `0x3FFFFF` (105 settori) | **non esiste su disco**: padding di allineamento a 2 GiB |
| `DB_1` | `0x400000` .. `0x62FFFB` (4.194.304..6.489.787) | primo blocco: `BLOCK_ID = 0x4000002B` |

Prova: il primo settore di `DB_1` dichiara `BLOCK_ID.sector = 0x400000`, non 0 e non 4.194.199.
Tutti i puntatori a blocco (es. `0x6273EC01` nel blocco 3) risolvono correttamente solo con
questa regola.

### 1.2 Layout fisico per tipo di blocco

La catena dei blocchi copre **il 100%** dei due file (315.095 blocchi, nessun gap).
Il DB è ordinato in regioni contigue per tipo:

| Tipo | Blocchi | Settori totali | Intervallo settori virtuali |
|---|---:|---:|---|
| `0x12` | 1 | 1 | 0 |
| `0x13` | 1 | 1 | 2 |
| `0x07` | 1 | 4 | 3 |
| `0x0B` | 2 | 2 | 7..8 |
| `0x0A` | 2 | 8 | 9..16 |
| `0x0D` | 10 | 390 | 17..406 |
| `0x0C` | 4.537 | 175.452 | 407..175.858 |
| `0x0F` | 1.661 | 59.896 | 175.859..235.754 |
| `0x0E` | 74.247 | 2.472.332 | 235.755..2.708.086 |
| `0x11` | 921 | 26.973 | 2.708.087..2.735.059 |
| `0x10` | 9.518 | 351.452 | 2.735.060..3.086.511 |
| `0x08` | 117 | 10.367 | 3.086.512..6.452.109 *(sparsi)* |
| `0x09` | 13.348 | 13.813 | 3.088.561..6.452.110 *(sparsi)* |
| `0x06` | 2.688 | 48.122 | 3.090.039..3.138.161 |
| `0x00` | 91.756 | 2.623.033 | 3.157.624..5.780.761 |
| `0x04` | 80.825 | 222.948 | 5.780.762..6.003.709 |
| `0x03` | 6.740 | 82.673 | 6.003.936..6.086.608 |
| `0x02` | 3.580 | 30.560 | 6.086.698..6.117.257 |
| `0x01` | 2.710 | 10.022 | 6.117.309..6.127.330 |
| `0x16` | 14.661 | 228.221 | 6.127.713..6.355.933 |
| `0x15` | 4.511 | 70.953 | 6.356.247..6.427.199 |
| `0x1C` | 1.461 | 19.935 | 6.427.316..6.447.250 |
| `0x14` | 358 | 2.897 | 6.447.258..6.450.154 |
| `0x1D` | 172 | 1.949 | 6.450.159..6.452.107 |
| `0x1E` | 53 | 94 | 6.452.110..6.452.203 |
| `0x18` | 13 | 19 | 6.452.204..6.452.222 |
| `0x17` | 920 | 34.279 | 6.452.223..6.486.501 |
| `0x1B` | 1 | 1 | 6.486.502 |
| `0x1A` | 1 | 5 | 6.486.503..6.486.507 |
| `0x19` | 279 | 3.279 | 6.486.508..6.489.786 |

> **Il tipo `0x05` non esiste** in questo DB — e il root block lo omette esplicitamente
> dalla propria lista tipi (§3.1). Conferma incrociata della lettura del root.

---

## 2. Struttura generica di un blocco

Ogni blocco inizia a un confine di 512 byte:

```
+0x00  BLOCK_ID          u32   (sector << 8) | length_in_sectors
+0x04  BLOCK_TYPE        u16
+0x06  COMPRESSION_FLAG  u8
+0x07  UNCOMPRESSED_SIZE u8    dimensione decompressa in settori da 512 B (header incluso)
+0x08  SECTION_DESCRIPTOR[N]   N * { u16 offset, u16 count }
 ...   SERVICE_DATA            (block-type specific, fino al primo offset di sezione)
 ...   SECTION_0 .. SECTION_N-1
```

**Regola d'oro sugli offset:** ogni `offset` nel descrittore, e ogni puntatore interno
al blocco, è **relativo all'inizio del blocco *decompresso*, header di 8 byte incluso**.
Quindi `payload_index = offset - 8`.

### 2.1 `COMPRESSION_FLAG`

| Valore | Codec | Blocchi | Verifica |
|---:|---|---:|---|
| `0` | nessuna compressione | 15.984 | payload usato as-is |
| `1` | **UNKNOWN_CODEC** | 96.011 | non è zlib né raw-deflate (testati `wbits` −15/15/31/47 su ogni offset 8..3000). Byte più frequenti: `0x00,0x10,0x02,0x01,0x80,0x08`. Predominante nei tipi `0x00`,`0x15`,`0x16`,`0x1C`,`0x14`,`0x1D` |
| `2` | **zlib / RFC 1950** (`78 DA`) | 203.100 | `zlib.decompress(raw[8:])` restituisce esattamente `us*512 - 8` byte |

Per `cf==2` il flusso zlib inizia **subito dopo l'header di 8 byte**; il descrittore di sezione
è *dentro* la parte compressa.

### 2.2 Vincolo di scrittura per il compilatore

`UNCOMPRESSED_SIZE` è a 8 bit ⇒ un blocco non può superare **255 settori (130.560 byte)**
una volta decompresso. Massimo osservato: 96 settori (49.152 byte) — di fatto il compilatore
originale limita i blocchi a 48 KiB.
`BLOCK_ID.length` è a 8 bit ⇒ massimo 255 settori su disco; massimo osservato 70.

### 2.3 Struct Python

```python
import struct, zlib
from dataclasses import dataclass

SECTOR = 512
WINDOW = 0x400000          # settori per file DB_n (2 GiB)

BLOCK_HDR = ">IHBB"        # BLOCK_ID, BLOCK_TYPE, COMPRESSION_FLAG, UNCOMPRESSED_SIZE
BLOCK_HDR_SIZE = 8         # struct.calcsize(BLOCK_HDR) == 8

SECTION_DESC = ">HH"       # offset, count   (offset relativo a inizio blocco, header incluso)

@dataclass
class CarinBlock:
    sector: int            # settore virtuale assoluto
    length: int            # lunghezza su disco, in settori da 512 B
    type: int              # BLOCK_TYPE
    comp: int              # 0 = raw, 1 = UNKNOWN, 2 = zlib
    usize: int             # dimensione decompressa in settori da 512 B
    data: bytes            # blocco decompresso, header di 8 byte incluso

    @classmethod
    def parse(cls, raw: bytes, sector: int) -> "CarinBlock":
        bid, btype, cf, us = struct.unpack_from(BLOCK_HDR, raw)
        if (bid >> 8) != sector:
            raise ValueError(f"BLOCK_ID sector {bid >> 8:#x} != {sector:#x}")
        length = bid & 0xFF
        if cf == 2:
            body = zlib.decompress(raw[BLOCK_HDR_SIZE:length * SECTOR])
        elif cf == 0:
            body = raw[BLOCK_HDR_SIZE:length * SECTOR]
        else:
            raise NotImplementedError(f"COMPRESSION_FLAG={cf} (codec sconosciuto)")
        return cls(sector, length, btype, cf, us, raw[:BLOCK_HDR_SIZE] + body)

    def sections(self, n: int):
        """n = numero di voci del descrittore (dipende dal BLOCK_TYPE, cfr. §6)."""
        out = []
        for i in range(n):
            off, cnt = struct.unpack_from(SECTION_DESC, self.data, BLOCK_HDR_SIZE + 4 * i)
            out.append((off, cnt))
        return out

    def section_bytes(self, off: int, end: int) -> bytes:
        return self.data[off:end]          # offset già assoluti nel blocco

def pack_block_id(sector: int, length: int) -> int:
    assert 1 <= length <= 255
    return (sector << 8) | length
```

---

## 3. Superblock — blocco root (settore 0, `BLOCK_TYPE = 0x12`)

Offset assoluto `0x00000000`, 1 settore (512 byte), non compresso.
Il root **non** contiene puntatori a "Node/Edge/Name table": contiene lo *schema* del database.

### 3.1 Mappa byte-per-byte

```
00000000: 0000 0001   BLOCK_ID          -> settore 0, lunghezza 1
00000004: 0012        BLOCK_TYPE        = 0x12
00000006: 00 00       COMPRESSION_FLAG=0, UNCOMPRESSED_SIZE=0
00000008: 0060 0001   SECTION_DESCRIPTOR[0] = { offset 0x0060, count 1 }

--- SERVICE_DATA 0x0C .. 0x5F : elenco dei blocchi indice di primo livello ---
0000000C: 0000 0801   BLOCK_ID  -> settore 8,  1 settore   (tipo 0x0B, indice alfabetico)
00000010: 000C 0012   copia del SECTION_DESCRIPTOR di quel blocco { 0x000C, 18 }
00000014: 0000 0201   BLOCK_ID  -> settore 2,  1 settore   (tipo 0x13, CD info)
00000018: 0001 0022   RESERVED (4 byte)
0000001C: 0000 000C   RESERVED (4 byte)
00000020: 0001 0060   RESERVED (4 byte)
00000024: 0068 001F   RESERVED (4 byte)
00000028: 00A6 005D   RESERVED (4 byte)
0000002C: 0200 0001   RESERVED (4 byte)
00000030: 0000 0000   RESERVED (4 byte)
00000034: 0063 5FAC   RESERVED (4 byte)   \  identico al campo a 0x50
00000038: 0926 F69C   RESERVED (4 byte)   /
0000003C: 36AF 692D   RESERVED (4 byte)
00000040: 1756 9F41   RESERVED (4 byte)
00000044: 0000 0701   BLOCK_ID  -> settore 7,  1 settore   (tipo 0x0B, indice alfabetico #2)
00000048: 000C 0012   copia del SECTION_DESCRIPTOR { 0x000C, 18 }
0000004C: 021C 0019   RESERVED (4 byte)
00000050: 0063 5FAC   RESERVED (4 byte)   \  identico al campo a 0x34
00000054: 0926 F69C   RESERVED (4 byte)   /
00000058: 102D 96F6   RESERVED (4 byte)
0000005C: 1424 A443   RESERVED (4 byte)

--- SECTION_0 @ 0x0060 (1 record, lunghezza variabile) ---
00000060: 0000 0304   BLOCK_ID  -> settore 3, 4 settori    (tipo 0x07, Country Info)
00000064: 0001        UNKNOWN (u16)
00000066: 0000        UNKNOWN (u16)
00000068: 0000 0001 .. 001E   BLOCK_TYPE_LIST: 30 x u16, i tipi di blocco presenti
                              (0x00..0x1E, con 0x05 ASSENTE)  -> 0x0068..0x00A3
000000A4: 0000        terminatore / padding (u16)
000000A6: [ u16 section_type, u16 record_size ] * 93   RECORD_SIZE_TABLE -> 0x00A6..0x0219
                              id 0x01..0x5A contigui, poi 0x8A, 0x97, 0x9D
0000021A: 0000 0000 0000 ...  UNKNOWN_PADDING fino a 0x03FF (zeri)
```

Il file `DB_0` contiene poi al settore 2 (`0x400`) il blocco CD-info e al settore 3 (`0x600`)
il blocco Country-Info: **il superblock occupa i settori 0 e 1**, cioè 1024 byte,
pur dichiarando `length = 1`. Il settore 1 (`0x200`) è la coda della `RECORD_SIZE_TABLE`
e non ha header proprio. È l'unica eccezione osservata alla regola di chaining.

### 3.2 `RECORD_SIZE_TABLE` (estratto verificato)

Coppie `(section_type, record_size_bytes)` a partire da `0x00A6`:

```
01:0x0C  02:0x10  03:0x08  04:0x1C  05:0x08  06:0x10  07:0x08  08:0x20
09:0x1A  0A:0x06  0B:0x74  0C:0x06  0D:0x04  0E:0x30  0F:0x08  10:0x08
11:0x3C  12:0x04  13:0x06  14:0x08  15:0x06  16:0x06  17:0x0174 18:0x1C
19:0x0160 1A:0x0C 1B:0x60  1C:0x54  1D:0x04  1E:0x08  1F:0x18  20:0x38
21:0x10  22:0x04  23:0x04  24:0x04  25:0x14  26:0x04  27:0x08  28:0x0C
29:0x0C  2A:0x04  2B:0x30  2C:0x08  2D:0x08  2E:0x20  2F:0x28  30:0x0C
31:0x08  32:0x1C  33:0x20  34:0x10  35:0x08  36:0x10  37:0x0A  38:0x04
39:0x04  3A:0x14  3B:0x04  3C:0x10  3D:0x34  3E:0x14  3F:0x18  40:0x0A
41:0x06  42:0x18  43:0x1C  44:0x04  45:0x10  46:0x64  47:0x10  48:0x04
49:0x04  4A:0x08  4B:0x14  4C:0x08  4D:0x0C  4E:0x1C  4F:0x04  50:0x10
51:0x28  52:0x10  53:0x04  54:0x04  55:0x08  56:0x18  57:0x0C  58:0x04
59:0x04  5A:0x02  8A:0x01  97:0x10  9D:0x16
```

> **UNKNOWN**: la mappatura `BLOCK_TYPE → lista di section_type` non è stata individuata
> in nessun blocco. Il firmware la ha probabilmente cablata. Le dimensioni record reali
> sono state invece ricavate empiricamente (§6) e vanno usate come riferimento primario.

### 3.3 Struct Python — Superblock

```python
SUPERBLOCK_FMT = ">IHBB HH"        # BLOCK_ID, TYPE, CF, US, sec0_offset, sec0_count
# struct.calcsize(SUPERBLOCK_FMT) == 12

ROOT_ENTRY_FMT = ">IHH"            # BLOCK_ID di un indice di 1° livello + il suo descrittore

@dataclass
class Superblock:
    block: CarinBlock
    country_info: int              # BLOCK_ID (settore 3, tipo 0x07)
    cd_info: int                   # BLOCK_ID (settore 2, tipo 0x13)
    name_index: tuple              # BLOCK_ID dei due blocchi tipo 0x0B (settori 8 e 7)
    block_types: list              # tipi di blocco presenti nel DB
    record_sizes: dict             # section_type -> record size in byte

    @classmethod
    def from_bytes(cls, raw: bytes) -> "Superblock":
        # ATTENZIONE: il root dichiara length=1 ma si estende su 2 settori (1024 byte).
        # Passare almeno 1024 byte e NON troncare a length*512 (cfr. §3.1).
        blk = CarinBlock.parse(raw, 0)
        d = raw[:1024]
        sec0_off, sec0_cnt = struct.unpack_from(">HH", d, 8)          # 0x0060, 1
        idx_a = struct.unpack_from(">I", d, 0x0C)[0]                  # 0x00000801
        cd    = struct.unpack_from(">I", d, 0x14)[0]                  # 0x00000201
        idx_b = struct.unpack_from(">I", d, 0x44)[0]                  # 0x00000701
        ctry  = struct.unpack_from(">I", d, sec0_off)[0]              # 0x00000304

        p = sec0_off + 8
        types = []
        while True:
            v = struct.unpack_from(">H", d, p)[0]
            if types and v <= types[-1]:
                break
            types.append(v); p += 2
        p += 2                                                        # terminatore 0x0000
        sizes = {}
        while p + 4 <= len(d):
            st, rs = struct.unpack_from(">HH", d, p)
            if st == 0:
                break
            sizes[st] = rs; p += 4
        return cls(blk, ctry, cd, (idx_a, idx_b), types, sizes)
```

---

## 4. Blocchi di sistema

### 4.1 `0x13` — CD Info (settore 2, zlib)

Decompresso a 1024 byte. Dopo l'header: descrittore a 2 sezioni
`{0x0010, 1}`, `{0x001C, 1}`, poi un record di 12 byte, poi **testo ASCII
delimitato da `0x00`**:

```
"no label\0no description\0"
"\n1.  name:      eur_hw_her_bmw_14q4_20150721a_w.\n"
"2.  content:    europe (europe)\n"
"3.  oem:        bmw\n"
"4.  supplier:   navteq\n" ...
```

### 4.2 `0x07` — Country Info (settore 3, 4 settori, non compresso)

```
+0x00 header (8)
+0x08 SECTION_DESCRIPTOR[3] = {0x0174, 40}, {0x0264, 13}, {0x0382, 43}
+0x14 SERVICE_DATA (0x14..0x173)
      0x0614: 2FE27160  UNKNOWN (u32)
      0x0618: F1198000 BC7A5000 51198000 1C7A5000   RESERVED (4x i32)
              NON è la bbox geografica dei dati (cfr. §7): i valori non sono
              compatibili con nessuna calibrazione lon/lat trovata.
      seguono 12 record di 24 byte, ognuno con lo stesso quartetto ripetuto
+0x174 SECTION_0: 40 record da 6 byte   -> ">HHH" (country_id, seq_id, 0)
                  seq_id = 0x0734..0x075B, consecutivi
+0x264 SECTION_1: 13 record da 20 byte  -> ">IHHHHHHHH"
                  campo 0 = BLOCK_ID (es. 0x6273EC01 -> DB_1), campo 5 = country_id
+0x382 SECTION_2: 43 record  (dimensione UNKNOWN)
+0x750 circa: nomi paese, ISO-8859-1 minuscolo, delimitatore 0x00:
      "österreich\0schweiz\0deutschland\0ceska republika\0españa\0danmark\0
       italia\0united kingdom\0norge\0nederland\0france\0belgië\0sverige\0"
```

### 4.3 `0x0B` — Indice alfabetico (settori 7 e 8, 1 settore ciascuno)

```
+0x08 SECTION_DESCRIPTOR[1] = {0x000C, 18}
+0x0C 18 record da 12 byte:  ">IHHHH"
      BLOCK_ID(u32) | key(u16) | offset(u16) | count(u16) | flags(u16)
```
`key` osservate: `0x6101 0x6201 0x6301 0x6401 0x6501 0x6601 0x6701 0x6801 0x6901
0x6C01 0x6D01 0x6E01 0xF601 0x6F01 0x7001 0x7201 0x7301 0x7501`
→ byte alto = **iniziale ISO-8859-1** (`a b c d e f g h i l m n ö o p r s u`),
byte basso = lunghezza prefisso (1).
`offset`/`count` indicizzano la SECTION_0 del blocco `0x0A` puntato
(stride 8, verificato: `0x30 +1*8 = 0x38`, `0x38 +4*8 = 0x58`, …).

### 4.4 `0x0A` — Tabella Paesi (settori 9 e 13, 4 settori, zlib → 5120 byte)

```
+0x08 SECTION_DESCRIPTOR[4] = {0x0030,44}, {0x0190,44}, {0x0000,0}, {0x0B30,128}
+0x30  SECTION_0: 44 record da  8 byte  -> ">HHI"  (key, count, ptr-to-SECTION_1)
+0x190 SECTION_1: 44 record da 56 byte  -> record paese (sotto)
+0xB30 SECTION_3: 128 record da 12 byte -> ">IHHHH" riferimenti a blocco
                  BLOCK_ID | offset | count | subtype | group
```

**Record paese (56 byte), verificato su tutti i 44:**

```
 off  size  campo
 0x00   2   UNKNOWN (sempre 0x0000)
 0x02   4   NAME_PTR      (u32) — high16 = segmento nome, low16 = offset. 6 segmenti
                          distinti osservati: 6C2E 9A30 F931 CA2F 112E 12A6
 0x06   2   UNKNOWN (u16) — 0x0006..0x0037
 0x08   4   0x0000000B    costante su tutti i record
 0x0C   4   0x00000016    costante
 0x10   4   0x00000021    costante
 0x14   4   0x0000002C    costante (= 44 = numero di paesi)
 0x18   2   SEC3_OFFSET   offset nella SECTION_3 (0 = nessuna voce)
 0x1A   2   SEC3_COUNT    numero di record da 12 byte
 0x1C   2   0x01F4 (500)  \
 0x1E   2   0x012C (300)   |  DEFAULT_SPEED[4] — costanti in questo DB
 0x20   2   0x03E8 (1000)  |  (unità: presumibilmente 0.1 km/h; UNKNOWN)
 0x22   2   0x01F4 (500)  /
 0x24   4   FLAGS         0x00000000 / 0x00000001 / 0x00010000
                          **0x00010000 solo per `ie` e `gb`** -> guida a sinistra
 0x28   2   COUNTRY_ID    id usato in tutto il DB (at=0x0E, be=0x15, cz=0x38,
                          de=0x51, dk=0x39, es=0xC4, fr=0x49, gb=0xDF, it=0x69,
                          nl=0x96, no=0xA0, ch=0xCD, se=0xCC, …)
 0x2A   2   FLAGS2        0x0000 oppure 0x0004
 0x2C   2   COVERAGE      3 = copertura piena, 1 = copertura ridotta
                          (1 per by, md, al, ua, gi, mc… )
 0x2E   2   ISO_CC        2 char ISO-3166-1 alpha-2 ASCII: "ad","be","de",…
 0x30   2   UNKNOWN (0x0000)
 0x32   2   REGION        "eu"
 0x34   4   UNKNOWN (0x00000000)
```

Verifica di consistenza di `SEC3_OFFSET/COUNT`:
`ad` 0x0B30+2·12 = 0x0B48 = `be`; `be` 0x0B48+8·12 = 0x0BA8 = `cz`;
`cz` 0x0BA8+8·12 = 0x0C08 = `dk`; `de` 0x0C68+9·12 = 0x0CD4 = `es`. ✅

```python
COUNTRY_FMT = ">H I H 4I HH 4H I H H H 2s H 2s I"
# meglio usare offset espliciti:
COUNTRY_RECORD_SIZE = 56
def parse_country(d, off):
    name_ptr  = struct.unpack_from(">I", d, off + 0x02)[0]
    sec3_off, sec3_cnt = struct.unpack_from(">HH", d, off + 0x18)
    speeds    = struct.unpack_from(">4H", d, off + 0x1C)
    flags     = struct.unpack_from(">I",  d, off + 0x24)[0]
    cid       = struct.unpack_from(">H",  d, off + 0x28)[0]
    coverage  = struct.unpack_from(">H",  d, off + 0x2C)[0]
    iso_cc    = d[off + 0x2E: off + 0x30].decode("latin-1")
    region    = d[off + 0x32: off + 0x34].decode("latin-1")
    return dict(name_ptr=name_ptr, sec3=(sec3_off, sec3_cnt), speeds=speeds,
                left_hand_traffic=bool(flags & 0x00010000), country_id=cid,
                coverage=coverage, iso_cc=iso_cc, region=region)
```

### 4.5 `CARINET` — Event Text Catalog (spazio blocchi indipendente)

```
+0x00 BLOCK_ID 0x00000002  (settore 0, 2 settori = 1024 byte)
+0x04 BLOCK_TYPE 0x0066    CF=0  US=0
+0x08 SECTION_DESCRIPTOR[4] = {0x001C,2}, {0x0034,49}, {0x01C4,3}, {0x01CA,14}
+0x34 SECTION_1: 49 record da 8 byte -> ">IHBB" reinterpretato come:
      first_id(u24) | count(u8) | limit(u16) | group(u8) | 0(u8)
```
Catena verificata: `0x25+0x20=0x45`, `0x45+0x20=0x65`, … `0xA5+0x1A=0xBF`, … ✅
`group` = 0,1,2,3,4,5,6,7,0x0A,0x0C,0x0F,0x11 → indice lingua/famiglia di testi.

---

## 5. Codifica del testo (Name Table)

**Verificato**: nessuna compressione dei caratteri, nessun charset custom.

* Encoding: **ISO-8859-1 / Latin-1**.
  `0xF6 = ö` ("österreich"), `0xEB = ë` ("belgië"), `0xF1 = ñ` ("españa"), `0xED = í`.
* Tutte le stringhe del DB sono in **minuscolo** (il rendering in maiuscolo è del firmware).
* Terminatore: `0x00`. Le stringhe sono impacchettate in blob contigui in coda al blocco.
* Recupero: i record puntano al blob con `NAME_PTR` a 32 bit
  (`high16` = segmento, `low16` = offset nel segmento) oppure con un `u16` relativo
  al blocco corrente (usato nei parcel `0x0C`/`0x0E`, cfr. §6.3).

> **UNKNOWN**: la risoluzione del `high16` di `NAME_PTR` (i 6 segmenti `6C2E 9A30 F931
> CA2F 112E 12A6`) non è stata determinata. Non corrisponde a un `BLOCK_ID`.

```python
def carin_str(buf: bytes, off: int) -> str:
    end = buf.index(b"\x00", off)
    return buf[off:end].decode("latin-1")

def encode_carin_str(s: str) -> bytes:
    return s.lower().encode("latin-1", errors="replace") + b"\x00"
```

---

## 6. Node / Edge / Parcel — tabelle della rete stradale

CARINdb **non ha** una Node Table e una Edge Table globali a offset fissi.
La rete è partizionata in *parcel* (blocchi `0x0C`, `0x0E`, `0x10`, `0x0F`, `0x11`),
ciascuno con le proprie sezioni locali e puntatori a 16 bit interni al blocco.

### 6.1 Arietà del descrittore e dimensioni record (derivate empiricamente)

Campionati 40 blocchi per tipo; `~n` = dimensione media non esatta (sezione a record
variabili o con padding).

| Tipo | N sezioni | S0 | S1 | S2 | S3 | S4 | S5 | S6 | S7 | S8 | S9 | S10 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `0x00` | 5–8 (fino a 16) | ~10 | 10 | ~10 | ~4 | ~32 | 8 | 16 | ~6 | | 8 | |
| `0x01` | 15–16 | 10 | 10 | 10 | ~4 | ~26 | 8 | 16 | 6 | 4 | 8 | 8 |
| `0x02` | 15–16 | 10 | 10 | 10 | ~4 | ~26 | 8 | 16 | 6 | 4 | 8 | 8 |
| `0x03` | 15–16 | 10 | 10 | 10 | ~4 | ~26 | 8 | 16 | 6 | 4 | 8 | 8 |
| `0x04` | 1 | ~10 | | | | | | | | | | |
| `0x06` | 6 (a volte 2) | 24 | | | | | | | | | | |
| `0x08` | 2 | var | | | | | | | | | | |
| `0x09` | 3 | 4 | 488 | | | | | | | | | |
| `0x0A` | 10 | 8 | 56 | | 12 | | | | | | | |
| `0x0C` | 10 | 8 | 24 | | ~12 | | ~47 | | | var | var | |
| `0x0E` | 10 | 8 | 6 | var | | | | | | var | var | |
| `0x10` | 10 | 8 | ~8 | | | ~25 | | | | var | var | |
| `0x19` | 1 | ~49 | | | | | | | | | | |
| `0x1B` | 1 | 500 | | | | | | | | | | |

> `0x11`, `0x14`, `0x15`, `0x16`, `0x1C`, `0x1D`, `0x1E` non sono in tabella: la
> maggioranza dei loro blocchi usa `COMPRESSION_FLAG = 1` (codec sconosciuto).

### 6.2 Tipi `0x00`–`0x03`: stesso schema (15–16 sezioni)

Occupano **2,9 GB su 3,3 GB** del database. Lo schema identico di `0x00`, `0x01`, `0x02`,
`0x03` con blocchi separati per regione (vedi §1.2) suggerisce **livelli di dettaglio
diversi della stessa struttura** (`0x00` = livello più fine, 91.756 blocchi;
`0x01` = più grossolano, 2.710 blocchi). Le sezioni ricorrenti a 10, 8, 16, 6 e 4 byte
sono compatibili con liste di nodi/archi/geometrie, ma **la semantica dei campi non è
stata verificata** e non va assunta.

### 6.3 Tipo `0x0E` (74.247 blocchi) — parcel principale

```
+0x08 SECTION_DESCRIPTOR[3 usate su 10] es. {0x0030, 1169}, {0x24B8, 531}, {0x312C, 772}
+0x14 UNKNOWN_PADDING (20 byte, zeri)
+0x28 SERVICE_DATA (8 byte)
+0x30 SECTION_0: record da 8 byte  ">HBBHH"
      A(u16)  FLAGS(u8)  B(u8)  C(u16)  D(u16)
```
Verificato sul campione:
* `D` è un **puntatore alla SECTION_1** e avanza a passi di 6 (= record size S1): il primo
  record ha `D = 0x24B8` = esattamente l'offset della SECTION_1.
* `A` (0x798C, 0x799A, 0x79B1, …) è un **puntatore nella SECTION_2**, monotòno non decrescente.
* `FLAGS` assume `0x00, 0x01, 0x02, 0x10, 0x11` → bit 4 e bit 0/1 indipendenti
  (candidati: senso unico / direzione di digitalizzazione). **NON CONFERMATO**.
* `B` vale `0xFF` nella grande maggioranza dei record (sentinella "assente"),
  altrimenti valori piccoli (`0x05, 0x07, 0x0A, 0x13, 0x15`).
* `C` è `0x0000` nei blocchi `0x0E`; nei blocchi `0x0C` è un puntatore interno
  (es. `0x989F`, `0x98C6`) verso il blob a offset `0x9884` indicato nel SERVICE_DATA.

```python
PARCEL_S0_FMT = ">HBBHH"        # 8 byte
# A, FLAGS, B, C(name/aux ptr o 0), D(ptr a SECTION_1, stride 6)
```

### 6.4 Tipo `0x04` (80.825 blocchi) — tabella a 160 voci

```
+0x08 SECTION_DESCRIPTOR[1] = {0x0010, 160}
+0x0C SERVICE_DATA (4 byte)
+0x10 SECTION_0: 160 record da 10 byte = 5 x u16
      valore sentinella "non definito" = 0x7FFF
```
Il primo blocco campionato ha 22 record tutti a `7FFF 7FFF 7FFF 7FFF 0000` seguiti da
valori piccoli (`000B 000E 000D 0010 0002`). Dimensione e sentinella sono verificate;
**il significato dei 5 campi è UNKNOWN** (candidati: matrice costi di svolta / classi
stradali, non confermato).

### 6.5 Tipo `0x06` (2.688 blocchi) — POI

```
+0x08 SECTION_DESCRIPTOR[1..6], la prima è {0x0020, N}
+0x0C UNKNOWN (4 byte)
+0x10 BOUNDING_BOX: 4 x i32 big-endian = X_min, Y_min, X_max, Y_max   ✅ VERIFICATO
+0x20 SECTION_0: N record da 24 byte
      ">IHHHHIII" es. 2C48F11D | 0E10 | 8512 | B3A8 | 0023 | 00000000 | 419CC638 | 00000000
```
I nomi POI sono in coda al blocco, ISO-8859-1, `0x00`-terminati
(es. `la caixa`, `cepsa`, `deutsche bank`, `caja rural de canarias`).
`X_max - X_min == Y_max - Y_min` sempre, e sempre `98304 * 2^k` → **griglia quadtree**.
Valori osservati: 98.304 / 196.608 / 393.216 / 786.432 / 1.572.864 / 3.145.728.

---

## 7. Sistema di coordinate — **PARZIALMENTE RISOLTO**

### 7.1 Cosa è certo

* Le coordinate sono **2 interi con segno a 32 bit** (`X`, `Y`), Big-Endian.
* `X` cresce verso **est**, `Y` cresce verso **nord** (asse Y non invertito).
* Le celle sono quadrate in unità: `lato = 98304 * 2^k` (98304 = `0x18000`).
* Estensione totale osservata sui blocchi POI:
  `X 4.816.896 … 920.223.744` — `Y 150.622.208 … 389.697.536`.
* Tutte le coordinate osservate sono positive.

### 7.2 Metodo di calibrazione usato

Le stringhe POI identificano il territorio di un tile. Ancore usate:

| Tile (X_min..X_max / Y_min..Y_max) | Stringhe POI | Luogo |
|---|---|---|
| 4.816.896..7.962.624 / 213.536.768..216.682.496 | `bensaude turismo`, `ilha azul`, `investacor` | Azzorre (Faial) |
| 64.585.728..67.731.456 / 153.767.936..156.913.664 | `la caja de canarias`, `parador nacional`, `betacar` | Canarie occidentali (La Palma) |
| 243.892.224..247.037.952 / 222.973.952..226.119.680 | `banco di napoli`, `totalerg` | Napoli |
| 158.957.568..162.103.296 / 333.074.432..336.220.160 | `bank of scotland`, `clydesdale bank` | Shetland/Scozia |

Risolvendo `X = K·(lon + Cx)`, `Y = K·(lat + Cy)` come problema di **appartenenza al tile**
(non fit ai minimi quadrati) su queste 4 ancore:

```
K  ∈ [5.615.590 , 5.646.170]  unità / grado      (≈ 5.63e6)
Cx ∈ [ +29,48 , +30,08 ] gradi                    (origine X ≈ 29,8° W)
Cy ∈ [  −2,34 ,  −0,84 ] gradi
```

Una quinta ancora (Bari/Puglia) è risultata incompatibile: i marchi bancari pugliesi
coprono l'intera regione, quindi la stima di lon/lat era troppo imprecisa.

### 7.3 Cosa resta UNKNOWN

* Il valore **esatto** di `K`. Candidati "tondi" nell'intervallo: `0x560000 = 5.636.096`
  e `2^24/3 = 5.592.405` (quest'ultimo appena fuori dal vincolo su Y, entro l'errore
  delle ancore). **Non usare questi valori come certi.**
* Il significato esatto degli offset `Cx`, `Cy` (perché l'origine non sia a 0°/0°).
* Se ci sia una proiezione (una verifica Mercator su `Y` dà residui *peggiori* del
  modello lineare, quindi `Y` è verosimilmente **lineare in latitudine**).
* I 4 `i32` a `0x618` nel blocco `0x07` **non** sono la bbox globale in questo frame:
  restituirebbero longitudini di −74°..+211°. Marcati `RESERVED`.

### 7.4 Come chiudere il punto (procedura consigliata)

Cercare tile POI di livello fine (`lato = 98304`, ≈ 0,017°) contenenti un marchio
mono-sede, oppure decodificare un record `0x06` con nome di aeroporto. Due ancore
di quel tipo fissano `K` a meglio dello 0,05%.

```python
# calibrazione provvisoria — NON per produzione
K  = 5_636_096          # unità / grado  (incertezza ±0,3%)
CX = 29.8               # gradi
CY = -1.6               # gradi
def to_wgs84(x, y): return (x / K - CX, y / K - CY)     # -> (lon, lat)
def to_carin(lon, lat): return (round((lon + CX) * K), round((lat + CY) * K))
```

---

## 8. Roadmap di verifica (cosa manca per compilare)

| # | Blocco | Stato | Priorità |
|---|---|---|---|
| 1 | `COMPRESSION_FLAG = 1` — codec | **UNKNOWN**, blocca il 30% dei blocchi (91.756 del tipo `0x00`) | 🔴 critica |
| 2 | `K`, `Cx`, `Cy` esatti | vincolati al ±0,3% | 🔴 critica |
| 3 | Semantica campi `0x0E` SECTION_0 / SECTION_1 / SECTION_2 | struttura nota, semantica no | 🔴 critica |
| 4 | Mappa `BLOCK_TYPE → section_type[]` | non presente nei dati | 🟠 alta |
| 5 | Risoluzione `NAME_PTR` high16 | 6 segmenti non identificati | 🟠 alta |
| 6 | Schema `0x00`–`0x03` (15–16 sezioni) | dimensioni record note | 🟠 alta |
| 7 | Ordine/ruolo dei 5 `u16` del tipo `0x04` | UNKNOWN | 🟡 media |
| 8 | Checksum / CRC di blocco | **nessuno trovato** | 🟢 nessun rischio |
