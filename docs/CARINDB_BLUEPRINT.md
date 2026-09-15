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
| `1` | **UNKNOWN_CODEC** | 96.011 | codec proprietario, non identificato. Vedi §9 per tutto ciò che è stato escluso e misurato. Predominante nei tipi `0x00`,`0x15`,`0x16`,`0x1C`,`0x14`,`0x1D` |
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

## 7. Sistema di coordinate — **RISOLTO**

```
X = (lon + 30.0) * 2_000_000_000 / 360        lon = X / K - 30.0
Y = (lat +  0.0) * 2_000_000_000 / 360        lat = Y / K
K = 2e9 / 360 = 5_555_555.5555…  unità / grado
```

Un giro completo di 360° vale esattamente **2.000.000.000 di unità**: entra in un
`int32` con segno (max 2.147.483.647) con margine. 1 unità = **0,18 µ°** ≈ 2 cm
all'equatore. L'origine è sull'**equatore a 30° Ovest**; l'asse X cresce verso est,
l'asse Y verso nord, la relazione è **lineare in latitudine** (nessuna proiezione
Mercator).

### 7.1 Come è stato determinato

I blocchi di tipo `0x16` contengono record da 20 byte con coordinate assolute a
32 bit e un puntatore al nome (§6.6). Da lì sono stati estratti i punti-etichetta
di 38 città europee (`scripts/extract_anchors.py`) e confrontati con il centro
WGS84 pubblicato (`scripts/optimize_coords.py`).

| Fit | K | Cx | Cy | rms | max |
|---|---|---|---|---|---|
| libero (3 parametri, Levenberg-Marquardt) | 5.556.973 | 29,9891 | −0,0102 | 2,00 km | 4,07 km |
| ipotesi `K = 2e9/360`, `Cx = 30`, `Cy = 0` (0 parametri) | 5.555.556 | 30,0000 | 0,0000 | **2,00 km** | 4,09 km |

Il fit libero converge su `Cx = 29,989` e `Cy = −0,010` — cioè 30 e 0 entro il
rumore — e l'ipotesi a **zero parametri liberi dà lo stesso rms del fit a tre
parametri**. I 2 km residui sono l'offset fra il punto-etichetta della città nel
database e il centro città di riferimento, non un errore di modello.
Lo scarto fra K libero e `2e9/360` è **+0,0255 %**, dentro 1σ.

Residui per le ancore migliori: toulouse 0,17 km · bordeaux 0,28 km · köln 0,37 km ·
praha 0,47 km · amsterdam 0,47 km · zaragoza 0,47 km · helsinki 0,66 km.

### 7.2 Verifiche indipendenti

Nessuna di queste città è stata usata nel fit:

| Blocco / tile | decodifica | realtà |
|---|---|---|
| tile POI più a ovest | lon −29,13…−28,57 · lat 38,44…39,00 | Faial/Pico, Azzorre (−28,7 · 38,58) ✅ |
| tile POI più a sud | lon −18,38…−17,81 · lat 27,68…28,24 | El Hierro / La Palma sud ✅ |
| tile POI più a nord con stringhe | lon −1,39…−0,82 · lat 59,95…60,52 | Shetland, Lerwick (−1,15 · 60,15) ✅ |
| tile POI più a est con stringhe | lon 18,4…19,0 | Ostrava (CZ) / Otranto (IT) ✅ |
| cluster POI Canarie (5 gruppi) | −17,85 / −17,22 / −16,50 / −15,50 / −13,78 | La Palma · La Gomera · Tenerife · Gran Canaria · Fuerteventura+Lanzarote ✅ |
| bbox blocco `0x01` sett. 6117309 | −5,92…−5,35 · 35,61…36,17 | Stretto di Gibilterra ✅ |

I tile POI che arrivano a `X = 920.223.744` (lon ≈ 135° E) sono **celle vuote del
quadtree mondiale** (`COMPRESSION_FLAG=0`, zero record, zero stringhe): struttura,
non copertura.

### 7.3 Griglia quadtree

Tutti i bordi dei tile sono multipli esatti di **98.304 unità** (= 3 · 2^15 =
0,0176896°), con origine in `(0, 0)`, cioè 30° O sull'equatore. I lati osservati
sono `98304 · 2^k` per k = 0…5, con rapporto d'aspetto 1:1, 1:2 o 2:1.

### 7.4 Bounding box per tipo di blocco

La bbox (`4 × int32` = `X_min, Y_min, X_max, Y_max`) segue immediatamente il
section descriptor. **Il numero di voci del descriptor varia da blocco a blocco**,
quindi la bbox va localizzata con un vincolo di griglia (`carin.parser.iso.find_bbox`):
lati multipli di 98.304 e rapporto d'aspetto 1:1 / 1:2 / 2:1.

| Tipo | offset bbox | copertura del locator |
|---|---|---|
| `0x00`–`0x03` | `0x44` | 60/60 |
| `0x06` | `0x10` | 60/60 |
| `0x14`, `0x15`, `0x16`, `0x1C` | `0x20` | 60/60 |
| `0x1D`, `0x1E` | `0x20` | 43/60, 20/39 |
| `0x0C`, `0x0E`, `0x10`, `0x0F`, `0x11`, `0x17`, `0x19` | — | **nessuna bbox**: georeferenziati indirettamente |

### 7.5 Struct Python

```python
CARIN_UNITS_PER_TURN = 2_000_000_000
K = CARIN_UNITS_PER_TURN / 360.0      # 5_555_555.5555...
LON_ORIGIN, LAT_ORIGIN = -30.0, 0.0
QUADTREE_UNIT = 98_304

BBOX_FMT = ">4i"                      # X_min, Y_min, X_max, Y_max

def to_wgs84(x, y):
    return (x / K + LON_ORIGIN, y / K + LAT_ORIGIN)

def to_carin(lon, lat):
    return (round((lon - LON_ORIGIN) * K), round((lat - LAT_ORIGIN) * K))
```

---

## 8. Formati record georeferenziati

### 8.1 Tipo `0x06` — record POI, **28 byte** (non 24)

```
 off  size  campo
 0x00   4   BLOCK_ID del blocco 0x10 (street/name parcel) che contiene il POI
 0x04   2   UNKNOWN (multiplo di 8)
 0x06   2   LOCAL_X    posizione nel tile, passo 64        <- ordinato crescente
 0x08   2   LOCAL_Y    posizione nel tile, passo 64
 0x0A   2   CATEGORY   (0x0016, 0x0017, 0x001F, 0x0023, 0x0030, …)
 0x0C   4   0x00000000
 0x10   4   BRAND_REF  riferimento globale alla catena (ricorrente fra blocchi)
 0x14   4   0x00000000
 0x18   4   0x00000000
```

**Scala locale = 64, esatta:**

```
X_abs = X_min + LOCAL_X * 64
Y_abs = Y_min + LOCAL_Y * 64
```

Verificato su 2.395 blocchi: per ogni dimensione di tile osservata,
`max(LOCAL_X) = (X_max − X_min)/64 − 1` esattamente.

| lato tile (unità) | 98304 | 196608 | 393216 | 786432 | 1572864 | 3145728 |
|---|---|---|---|---|---|---|
| `max(LOCAL_X)` misurato | 1535 | 3071 | 6143 | 12287 | 24575 | 49151 |
| `lato/64 − 1` atteso | 1535 | 3071 | 6143 | 12287 | 24575 | 49151 |

Risoluzione POI: 64 unità = 1,15e−5° ≈ **1,2 m**.
Il blob di nomi (Latin-1, `\0`-terminato) segue i record; contiene **173 nomi
distinti in tutto il DB**, tutti marchi/catene (banche, carburanti, hotel) —
nessun toponimo, nessun aeroporto.

Estratti dall'immagine: **2.048.403 POI**.

### 8.2 Tipo `0x16` — record feature, **20 byte**

Layer delle feature nominate (isole, laghi, fiumi, fjord, etichette di città).
È la sorgente di ancore geografiche del database.

```
 off  size  campo
 0x00   2   NAME_PTR   offset del nome nel blocco stesso, Latin-1, \0-terminato
 0x02   2   UNKNOWN (puntatore interno)
 0x04   4   UNKNOWN
 0x08   4   X          int32 assoluto
 0x0C   4   Y          int32 assoluto
 0x10   2   UNKNOWN
 0x12   2   offset di un'altra sezione del blocco
```

I record stanno nella sezione indicata dalla **voce 1** del descriptor
(`struct.unpack_from(">HH", payload, 12)`), con un record sentinella in coda.

```python
FEATURE_REC = ">HHIiiHH"     # 20 byte
```

Esempio verificato (settore 6326923, bbox Göteborg):
`landvettersjön` → X=234411946 Y=320448230 → **12,196° E · 57,681° N**
(Landvettersjön reale: 12,32 E · 57,68 N).

Lo stesso layout a 20 byte con coordinate assolute vale per i tipi `0x14`,
`0x1C`, `0x1D`, `0x1E` (label di mari, regioni, grandi città).

### 8.3 Dove stanno i nomi

| Tipo | contenuto testuale |
|---|---|
| `0x0C`, `0x0E` | toponimi / comuni (≈3.600 stringhe distinte per campione) |
| `0x10`, `0x17`, `0x19` | odonimi (nomi di strada) |
| `0x15` | comuni / frazioni |
| `0x16` | isole, laghi, corsi d'acqua, etichette città |
| `0x14`, `0x1C`, `0x1D`, `0x1E` | mari, oceani, regioni, grandi città (multilingua) |
| `0x06` | marchi POI |
| `0x07`, `0x0A` | nomi paese |

---

## 9. `COMPRESSION_FLAG = 1` — stato dell'analisi

96.011 blocchi su 315.095 (30 %) usano questo codec. **Non è necessario per il
compilatore**: un database generato può usare solo `CF=0` e `CF=2`. Serve solo a
leggere integralmente il disco originale.

### 9.1 Struttura del blocco

Il prologo è **in chiaro**, identico a un blocco `CF=0`: header di 8 byte,
section descriptor, bbox, service data. Gli offset di sezione del descriptor sono
espressi nello spazio **decompresso** e sono coerenti con `UNCOMPRESSED_SIZE*512`.
Lo stream compresso comincia dopo il service data.

```
tipo 0x1E, settore 6452121, len=4 (2048 B) us=6 (3072 B)
0000: 62 73 99 04  00 1e  01 06        header: sett. 0x627399, 4 sett., tipo 0x1E, CF=1, US=6
0008: 0034 0004 0048 0010 019c 0003 01dc 010d 0000 0000 0610 005a   descriptor
0020: 03198000 107a5000 09198000 167a5000                            bbox
0030: 0001 000b 1300 0a00                                            service (in chiaro)
0038: 02 04 81 41 a8 40 3a 67 ...                                    <- stream compresso
```

### 9.2 Misure

| grandezza | valore |
|---|---|
| rapporto di compressione | 1,33 – 2,65 (mediana ≈ 1,6) |
| entropia dello stream | **7,17 – 7,84 bit/byte** |
| padding di zeri in coda | 0 – 500 byte |
| prologo in chiaro | 48 B (tipo `0x0E`) · 56 B (`0x14`…`0x1E`) · 116 B (`0x00`…`0x03`) |

### 9.3 Codec esclusi sperimentalmente

* **zlib / raw deflate**: scansione esaustiva di *ogni offset di byte e di ogni
  fase di bit* (shift a sinistra e a destra, `wbits` −15/15) sull'intero blocco →
  nessuno stream valido. `scripts/analyze_codec.py`.
* **LZ4 raw block**: output ≤ 1 byte.
* **LZW** 9→12/13/14 bit, MSB e LSB first, con e senza early change: nessun output
  plausibile (score oracolo ≤ 0,80).
* **LZSS/LZ77 byte-allineato**: griglia di 384 combinazioni (bit letterale 0/1,
  ordine LSB/MSB, finestra 1024/2048/4096/8192, offset a 10/11/12/13 bit, tre
  impacchettamenti della coppia back-reference, riempimento iniziale `0x00`/`0x20`).
  Nessuna combinazione produce né la lunghezza attesa né testo leggibile.

### 9.4 Il risultato che indica la strada

Confronto di 8-grammi condivisi fra coppie di blocchi dello **stesso tipo**:

| insieme | blocchi | lunghezza media | 8-grammi condivisi per coppia |
|---|---|---|---|
| tipo `0x16`, `CF=1` | 12 | 14.988 B | **13,0** |
| tipo `0x16`, `CF=2` (zlib) | 12 | 23.638 B | **0,0** |
| tipo `0x15`, `CF=1` | 12 | 7.055 B | **3,0** |
| tipo `0x15`, `CF=2` (zlib) | 12 | 16.594 B | **0,0** |
| tipo `0x1E`, `CF=1` | 12 | 1.672 B | **4,0** |
| controllo casuale | 12 | 2.000 B | **0,0** |

Blocchi zlib più grandi non condividono **nessun** 8-grammo, perché l'albero di
Huffman dinamico distrugge l'allineamento di byte. I blocchi `CF=1` ne condividono
regolarmente. Conseguenze:

1. Il codec è **deterministico e senza stato fra blocchi** — non è cifratura con
   chiave/IV per blocco.
2. Il codice è **allineato al byte** oppure usa una **tabella statica condivisa**:
   sequenze di input identiche producono byte di output identici.
3. Quindi è attaccabile con analisi di frequenza / ricerca di corrispondenze fra
   blocchi, senza dover indovinare il formato a priori.

### 9.5 Layout verificato del tipo `0x1E` (sezioni, offset a offset)

Ricavato confrontando 3 blocchi `CF=0` a schema diverso (`6452125`: 2 settori,
descriptor 6 voci; `6452128`: 1 settore; `6452121` citato in §9.1) e verificato che
tutte le formule tornano esatte sui tre insieme:

```
+0x00  header (8 B)
+0x08  SECTION_DESCRIPTOR[6]  { off, count } x 6   (sempre 6 voci per 0x14..0x1E)
+0x20  BBOX  4 x int32                              (16 B, fisso)
+0x30  SERVICE_DATA  4 B  (osservato: 00 01 00 0b costante sui campioni)
+0x34  SECTION_0  @ entry0.off, entry0.count record  — record size variabile
       (record = (entry1.off - entry0.off) / entry0.count; 6 B nei campioni)
       SECTION_1  @ entry1.off, **(entry1.count + 1) record da 20 B**
       — il +1 è un record sentinella in coda, verificato su 3 blocchi
         indipendenti: entry3.off - entry1.off == (entry1.count+1)*20 esatto
         in tutti e tre (6452121: 0x19c-0x48=0x154=17*20; 6452127: 0x90-0x40=
         0x50=4*20; 6452128: 0x64-0x3c=0x28=2*20). Layout record = FEATURE_REC
         (§8.2): NAME_PTR u16, u16, u32, X i32, Y i32, u16, u16.
       SECTION_3  @ entry3.off, entry3.count record da **4 B** (verificato:
         6452128 (0x74-0x64)/4=4 esatto)
       SECTION_5  @ entry5.off, entry5.count record da **4 B** (verificato:
         6452125 (0x178-0x114)/25=4 esatto; 6452128 (0xa4-0x74)/12=4 esatto)
         — quasi certamente { u16 offset_nel_blob, u16 lang_id }, cioè la
         tabella di look-up nome→lingua che precede il blob di stringhe
+text  blob di stringhe Latin-1 `\0`-terminate, tante quante entry5.count
```

`entry2` e `entry4` sono sempre `{0,0}` nei campioni 0x1E — sezioni non usate da
questo tipo. Questa mappa **non decifra il codec**, ma fissa esattamente la
struttura attesa dell'output decompresso: utile come oracolo più stringente di
`score_output` per un futuro tentativo (lunghezze di sezione, non solo testo
leggibile).

### 9.6 Tentativi aggiuntivi in questa sessione — tutti falliti, con misure

1. **Ricerca di coppie bbox identiche fra `CF=1` e `CF=0`/`CF=2`** (l'idea più
   diretta per ottenere una coppia chiaro/cifrato reale, non un'ipotesi).
   Scansionati tutti i blocchi `CF=0`/`CF=1` dei tipi con bbox noto
   (`0x14,0x15,0x16,0x1C,0x1D,0x1E`, 18.481 blocchi), estratta la bbox dal
   prologo in chiaro (funziona anche su `CF=1`, perché il prologo non è
   compresso), raggruppati per `(type, bbox)`. **Risultato: 18.406 gruppi su
   18.481 blocchi, zero gruppi con CF misto.** Ogni tile del quadtree esiste una
   volta sola con un solo livello di compressione: **non esiste nel database
   una coppia chiaro/cifrato dello stesso contenuto.** Lo script è
   `scripts/find_pairs.py` (spostato da scratchpad se serve rieseguirlo).
2. **Huffman statico globale, ordine 0.** Costruito un albero di Huffman
   canonico dalla frequenza byte aggregata su 4.000 blocchi `CF=0` (troncando
   lo zero-padding finale). Il campione è dominato dai tipi numerici a bassa
   entropia (byte `0x00` = 93% anche dopo il trim), quindi il modello non
   rappresenta il contenuto testuale di `0x1E`: predice un rapporto di
   compressione 5,3x contro l'1,33–2,65x osservato. Decodifica del blocco
   `6452127` con questa tabella (bit-order MSB e LSB): output di lunghezza
   sbagliata e nessun testo leggibile in nessuno dei due ordini. **Non
   conclusivo**: esclude solo un Huffman globale ordine-0 costruito da un
   campione non rappresentativo, non l'ipotesi in sé — servirebbe la tabella
   vera, che non è nel prologo di nessun blocco.
3. **Ricerca di testo in chiaro filtrato nello stream "compresso".** Grep di
   run di 4+ caratteri Latin-1 minuscoli sui 14 blocchi `CF=1` di tipo `0x1E`:
   trovate ~40 corrispondenze, tutte lunghe 4-5 byte, alla frequenza attesa dal
   caso (~(27/256)^4 per posizione, coerente con match casuali su ~5.000 byte
   totali). Un solo match è ASCII puro leggibile (`coth` in `6452200`,
   offset `0x65`) ma non corrisponde a nessuna parola plausibile per un nome di
   mare/oceano e non si ripete in nessun altro blocco alla stessa posizione
   relativa. **Conclusione: nessuna fuga di testo in chiaro nello stream
   compresso**, esclude un'ipotesi mista letterale+compresso a livello di
   byte.
4. **Invarianza dell'entropia a shift di bit** (0–7 bit, rotazione dell'intero
   stream). Testato su 5 blocchi `CF=1` di tipo `0x1E` (da 374 a 4.105 B).
   Risultato: entropia pressoché costante (variazione < 0,2 bit su tutti gli
   shift, sia sui campioni corti che su quelli lunghi). **Non discriminante**:
   un'entropia già alta (7,0–7,8 bit/byte) lascia poco margine per rilevare un
   disallineamento a bit; il test non contraddice la conclusione byte-aligned
   di §9.4 (basata sugli 8-grammi condivisi, un segnale più forte) ma nemmeno
   la conferma in modo indipendente.
5. **Confronto con `/TPD/*.CPR`** (fase 3 del piano). Estratti i 3 file
   `ENG_1.CPR`, `FRE_4.CPR`, `GER_2.CPR` (stesso "Tool 5001", stesso contenuto
   in 3 lingue). Byte 0 identico (`0x03`) su tutti; byte 1 diverge subito
   (probabile campo lunghezza/ID per-file); **byte 2–7 identici su tutti e tre**
   (`00 09 87 25 52 aa`), poi divergenza totale da byte 8. Entropia dei CPR:
   **6,636–6,638 bit/byte**, nettamente più bassa dei blocchi `CF=1` (7,17–7,84).
   Il prefisso comune di 6 byte è compatibile con un semplice magic/versione di
   formato (troppo corto per essere un dizionario), e l'entropia più bassa è
   spiegabile anche solo con la maggiore ridondanza del testo naturale rispetto
   ai dati binari di CARINdb — **non prova né esclude lo stesso codec**.
   Non approfondito oltre per limiti di tempo: servirebbe decifrare il formato
   CPR da zero, che è un sotto-progetto a sé (nessun UNCOMPRESSED_SIZE noto per
   validare un tentativo, a differenza dei blocchi CARINdb).

### 9.7 Prossimi passi (aggiornato)

1. **Il vicolo cieco più importante di questa sessione**: non esiste sul disco
   nessuna coppia chiaro/cifrato dello stesso contenuto (§9.6.1). Qualsiasi
   attacco know-plaintext deve quindi passare da un contenuto *ricostruito per
   somiglianza* (blocco `CF=0` di tile adiacente/stesso tipo), non da un
   duplicato esatto — più debole, ma è l'unica via rimasta sul disco.
2. La mappa di sezione di §9.5 rende possibile costruire un oracolo di
   validazione molto più stringente di `score_output`: lunghezza esatta di
   *ogni* sezione dichiarata dal descriptor (non solo la lunghezza totale del
   blocco). Andrebbe integrato in `compression.py` prima di ogni nuovo
   tentativo di decodifica su tipo `0x1E`.
3. Se si vuole insistere sull'ipotesi Huffman/tabella statica: servirebbe
   ricavare le frequenze vere per-tipo (non un campione globale misto come in
   §9.6.2) e provare a *rompere* il codice alla cieca (algoritmo di Cichelli o
   ricerca golfata sull'albero a partire dalle lunghezze di codice più
   probabili), oppure cercare la tabella tra i dati del root/`0x0D`/`0x18` non
   ancora ispezionati byte per byte in questa sessione (`0x1B`/`0x1A` sono
   stati ispezionati: `0x1B` è quasi tutto a zero con un solo puntatore a
   `0x1A`; `0x1A` è una tabella sequenziale di ~430 `BLOCK_ID` con 4 byte extra
   ciascuno, che sembra un indice di blocchi non una tabella di codifica —
   entrambi *esclusi* come candidati tabella statica).
4. In alternativa, decifrare `/TPD/*.CPR` come corpus indipendente (§9.6.5) resta
   la pista più promettente non ancora battuta, ma richiede di ricostruire il
   formato CPR da zero (nessuna documentazione di lunghezza attesa).

### 9.8 Tentativi sessione 2026-09-15 — anch'essi falliti

Ripartendo dall'ipotesi "i byte più frequenti sono potenze di due ⇒ control-byte
LZSS a 1 bit" (motivazione della sessione): **l'ipotesi era già stata testata ed
esclusa in §9.3** (la griglia di 384 combinazioni copre entrambi gli ordini di
bit di un control-byte a potenza-di-due singola). Verifica aggiuntiva fatta qui:
il dominio delle potenze di due nella frequenza byte **non è un segnale specifico
del codec** — persiste identico se si guarda solo la coda dello stream oltre il
confine di entropia (`0xC0` nel blocco tipo `0x00` esaminato), con conteggi
4–16× l'atteso uniforme (`0x00`≈16×, `0x10`≈5×, `0x80`≈4×), MA tutti i 256 valori
di byte compaiono comunque nello stream (nessuna evidenza di codebook ristretto).
Non decisivo in un senso o nell'altro: è compatibile sia con un control-byte reale
sia con un accumulo di piccoli interi/flag a livello di campo che sopravvivono a
una compressione blanda.

Nuovi tentativi, entrambi fino in fondo:

1. **aPLib / aP_depack** (bitstream intrecciato byte-a-byte con lunghezze
   gamma-codificate, non un control-byte separato con 8 token fissi — quindi
   non coperto dalla griglia di §9.3). Portato fedelmente da
   `https://github.com/snemes/aplib` (adattamento diretto della libreria
   ufficiale di Jørgen Ibsen). Testato su blocco tipo `0x00` (sett. 3157624,
   atteso 10.636 B dopo prologo di 116 B) e tipo `0x1E` (sett. 6452121, atteso
   3.016 B dopo prologo di 56 B): **fallisce entro 3–13 byte**, andando quasi
   subito a sbattere sul marcatore di fine stream di aPLib (`offs==0` nel ramo
   match corto). Sweep del punto di partenza (0–250 B) sul blocco tipo `0x00`:
   il massimo raggiunto è **59 byte su 10.636 attesi** (offset 95) — nessun
   punto di innesco produce un flusso valido. **Escluso.**
2. **Varint / gamma-coding a livello di campo** (ipotesi: non è compressione a
   dizionario ma delta-coding numerico campo-per-campo, dato il rapporto di
   compressione basso — 1,33–2,65× — e l'entropia già quasi massima, atipici
   per LZ ma tipici di interi impacchettati). Verifica preliminare (LEB128
   sullo stream grezzo) non discriminante da sola; non portata a un decoder
   completo per mancanza di un oracolo di validazione a livello di campo
   (servirebbe prima risolvere la semantica dei record del tipo bersaglio).
   **Non conclusivo — resta la pista più promettente non ancora tentata a
   fondo**, da abbinare all'oracolo di sezione di §9.5.
3. **Ricerca di una tabella statica in `0x0D`/`0x18`** (segnalata come da
   ispezionare in §9.7.3). `0x18` (sett. 6452204): confermato indice di
   `BLOCK_ID` + 4 byte extra (nessuna struttura a 256 voci). `0x0D` (sett. 17,
   zlib, 49.152 B decompressi): record variabili `{u32 costante-per-segmento,
   u16 id, u16 flag, u16 offset, u16 count, u16 pad}`, chiaramente un indice
   per range (tipo alfabetico/regionale), non una tabella di 256 lunghezze di
   codice. **Escluso anche questo.**

**Bilancio**: con questa sessione salgono a 6 le famiglie di codec escluse
sperimentalmente (zlib, LZ4, LZW, LZSS byte-allineato a 384 varianti, Huffman
ordine-0 globale, aPLib) più la ricerca di tabella statica nei blocchi di
sistema. Nessuna nuova pista concreta emersa: il codec resta senza identità.
Il blocco reale non è nel percorso critico del compilatore (§9, incipit) —
riguarda solo la lettura completa del disco originale, non la generazione.

### 9.9 Test mirato dell'ipotesi utente (prologo 189 B, LZSS custom) — falsificato con oracolo strutturale

Ripresa dell'ipotesi con parametri specifici proposti dall'utente (prologo in
chiaro 189 B = `0xBD`, finestra 4096, init a zero, control-bit MSB-first,
0=literal/1=backref, token a 2 byte con nibble alto = lunghezza−2, 12 bit bassi
= offset). Testata con un oracolo **molto più forte** della sola lunghezza in
uscita:

1. **La lunghezza esatta non è un oracolo valido.** Sul blocco tipo `0x00`
   sett. 3157624 (atteso 10.752 B), *ogni* valore di prologo da 0 a 421 produce
   un output della lunghezza esatta attesa — il ciclo si ferma appena raggiunge
   il target, quindi centrare la lunghezza non prova nulla sui parametri.
2. **Oracolo strutturale reale**: trovato un blocco `CF=2` (zlib, quindi
   verità nota) dello stesso tipo `0x00` (sett. 3247755) con lo *stesso*
   layout iniziale di descrittore (offset 116/148/180) e le stesse dimensioni
   record di sezione (`S4=32 B`, `S5=8 B`, `S6=16 B`, confermate anche su un
   secondo campione zlib, sett. 3249459). I record reali di `S4` mostrano
   colonne quasi costanti e ID che crescono lentamente (es. byte 19–22 =
   `4688000000` fisso su *tutti* i record, byte 17 incrementa di 1 record in
   record). Score di riferimento: entropia media per colonna `S4=2,43`,
   `S5=3,28` bit (su un alfabeto di 0-255, quindi molto più bassa di 8 =
   dati strutturati).
3. **Test sui parametri dell'utente** (prologo 189, off assoluto, token
   little-endian come proposto): lunghezza esatta raggiunta su 6/8 blocchi
   campione, ma **contenuto della sezione non strutturato** (nessuna colonna
   costante, nessun ID monotono) — falsificato per ispezione diretta, non solo
   per l'oracolo.
4. **Grid search guidato dall'oracolo strutturale** (bit letterale 0/1, ordine
   bit MSB/LSB, endianness token LE/BE, split lunghezza 4/5/6 bit, bias 2/3,
   offset come posizione assoluta vs distanza all'indietro — 96 combinazioni
   a lunghezza esatta): la combinazione più vicina al bersaglio (`lit_bit=0`,
   `MSB`, **token big-endian** — non little come ipotizzato —, lunghezza=nibble
   alto+3, **offset come distanza all'indietro** da `pos` non posizione
   assoluta) eguaglia il bersaglio entro 0,001 sulla somma (`S4=2,44`,
   `S5=3,27` contro `2,43`/`3,28` reali) — ma **l'ispezione byte-per-byte
   mostra comunque rumore**, non i campi costanti/monotoni reali. La vicinanza
   nell'entropia media di colonna è quindi una **coincidenza statistica**
   (probabilmente dovuta alla stessa densità di zeri), non un segnale di
   correttezza: l'oracolo per entropia media aggregata non basta, servirebbe
   un test per colonna-per-colonna sulla moda/varianza, non sulla sola
   entropia media.
5. **8-grammi condivisi anche sul tipo `0x00`** (non ancora verificato in
   §9.4, che copriva solo `0x14`–`0x1E`): confermato — media 9,0 8-grammi
   condivisi per coppia su 66 coppie di blocchi `CF=1` tipo `0x00` (fino a 38
   su una singola coppia), ben sopra il rumore. Trovato anche un frammento
   **non banale** di 14 byte, tutti e 14 distinti (nessuna ripetizione interna,
   quindi non spiegabile con padding/pattern ovvio), identico byte-per-byte
   fra sett. 3157667 (offset 15625 nello stream) e sett. 3157861 (offset
   15774): `04 81 10 32 08 42 c8 61 0e 21 e4 4c 89 31`. Conferma che il codec
   è **byte-allineato e deterministico anche per il tipo `0x00`** (coerente
   con §9.4) — probabilità di una coincidenza casuale su 14 byte tutti diversi
   è trascurabile. È il miglior candidato per un futuro attacco a testo noto
   differenziale (non ancora tentato: servirebbe allineare le due
   decompresse e dedurre struttura token dalla posizione del match), ma non è
   stato sufficiente in questa sessione per determinare i parametri esatti.

**Conclusione**: l'ipotesi del control-byte a singolo bit (in qualunque delle
>480 varianti provate fra le due sessioni: 384 + 96) è **verosimilmente
sbagliata nella sua interezza**, non solo nei dettagli di bit-order/endianness.
Il segnale byte-allineato/deterministico (8-grammi condivisi, frammento di 14
byte) resta valido e va sfruttato con un metodo diverso — differenziale sui
frammenti condivisi, non ricerca a griglia sui parametri di un modello fisso.

### 9.10 Confronto cross-edizione (CD-ID 21708 vs 21734) — metodologia nuova, stesso esito negativo

Resa disponibile una seconda immagine dello stesso formato: `NAV_DB_21734`
("High_2019_WE_SC_SL.bin", build 2018-05-09, DB-REL 34 / BSW-REL 10 11 —
**stesso schema binario** della 21708 del 2015-08-04, quindi confrontabile
byte per byte). A differenza di quanto ipotizzato in §9.7.1, questo *non*
fornisce una coppia chiaro/cifrato esatta (il contenuto cambia fra edizioni
anche a parità di tile), ma fornisce comunque leva concreta:

1. **Metodo**: la bbox del tipo `0x00` sta a offset decompresso `0x44`, **dentro
   il prologo in chiaro** (~0xBD) — quindi leggibile anche su blocchi `CF=1`
   senza decomprimere. Scansionati tutti i blocchi tipo `0x00` di entrambe le
   immagini (36.452 in 21708, 28.008 in 21734), indicizzati per bbox esatta:
   **21.751 bbox in comune**. Distribuzione `(cf_old, cf_new)`:
   `{(1,1): 21363, (0,0): 328, (1,0): 31, (0,1): 29}` — **60 tile con
   compressione diversa fra le due edizioni per lo stesso riquadro
   geografico**, il più vicino possibile a una coppia chiaro/cifrato reale
   ottenibile da questo materiale.
2. **Nessuna coppia è byte-identica**: 0 dei 60 casi con `UNCOMPRESSED_SIZE`
   uguale ha contenuto zlib/raw identico — il tile è quasi sempre stato
   aggiornato fra il 2015 e il 2018 (strade/POI aggiunti), anche quando la
   dimensione non cambia.
3. **Filtro per contenuto verosimilmente stabile**: il `SECTION_DESCRIPTOR`
   (8 coppie `offset,count`) è leggibile in chiaro **indipendentemente dal
   CF**. Filtrando le 60 coppie per descriptor identico su tutte le 8 entry
   fra le due edizioni → 12 coppie con probabile contenuto quasi invariato
   (stesso numero di record per sezione, stessi offset).
4. **Test**: per ciascuna delle 12 coppie "stabili", decompresso il lato
   `CF=1` con la stessa griglia di parametri di §9.9 (bit letterale, ordine,
   endianness token, split lunghezza/offset, distanza vs posizione assoluta)
   e confrontato con `difflib.SequenceMatcher` contro il contenuto reale
   dell'altra edizione (`CF=0`), **escludendo** sia il prologo in chiaro
   (`< 0xBD` su entrambi i lati) sia i blocchi di corrispondenza a bassa
   varietà (`len(set(bytes)) < 3`, cioè run di zeri) per evitare il falso
   segnale già scoperto in §9.9.4. Miglior combinazione: **32–70 byte
   corrispondenti non banali su ~1.024–1.200 byte per blocco** (somma 590 su
   14.336 totali, ~4%) — **al livello del rumore**: gli scarti sono frammenti
   sparsi di 4–14 byte a bassa informazione (`0000000000...` con 1-2 byte
   diversi), non le lunghe corrispondenze ad alta varietà che ci si
   aspetterebbe da una decompressione vera (come il frammento di 14 byte,
   tutto diverso, di §9.8.5).
5. **Conclusione**: anche con un oracolo di verità reale molto più forte
   (contenuto quasi-invariato di una tile fra due edizioni, non solo
   statistica sintetica), **nessuna combinazione della famiglia
   control-byte-LZSS riproduce contenuto reale**. Questo non prova che il
   codec non sia LZSS in senso lato, ma esclude con la massima confidenza
   raggiunta finora l'intera famiglia "control-byte a 1 bit + token a 2 byte"
   testata da §9.3 a qui (>650 combinazioni), qualunque sia l'assegnazione di
   bit/endianness/offset.
6. **Valore per il futuro**: la metodologia stessa (indicizzare bbox tipo
   `0x00`/`0x06`/`0x16` fra edizioni diverse, filtrare per descriptor identico,
   usare `difflib` con esclusione dei run a bassa varietà come oracolo) resta
   valida e riutilizzabile per **qualunque** nuova ipotesi di codec — non solo
   per LZSS. Se si trova o si ottiene una terza edizione, o se si estende la
   scansione a `0x06`/`0x16`/`0x1E` (bbox anch'esse in chiaro, §7.4), la
   probabilità di trovare una coppia CF diversa con contenuto *davvero*
   invariato aumenta. Script di riferimento salvato in
   `build/cross_iso_type0.pkl` (mappa bbox→(sector,length,cf) per entrambe le
   immagini, tipo `0x00`).

### 9.11 — **CODEC IDENTIFICATO** dal firmware originale (2026-09-15)

`CF=1` **non è un codec a dizionario**. Non è LZ, non è Huffman, non è
entropico. È un **impacchettamento a bit guidato dalla struttura del blocco**:
ogni sezione ha un proprio decodificatore che ricostruisce record a dimensione
fissa leggendo campi di larghezza minima da un bitstream MSB-first, e che
converte **indici di record in offset assoluti** dentro il blocco decompresso.

Questo spiega tutte le misure precedenti che sembravano contraddittorie:

| osservazione | spiegazione |
|---|---|
| rapporto 1,33–2,65× soltanto | si risparmiano solo i bit alti dei campi, niente dizionario |
| entropia 7,17–7,84 bit/byte | campi impacchettati a bit, nessuna ridondanza residua |
| 8-grammi condivisi fra blocchi | stessi pattern di campo alla stessa fase di bit |
| zero fughe di testo in chiaro | i nomi hanno un codificatore a prefisso dedicato |
| ogni famiglia LZ/Huffman falsificata | erano tutte l'ipotesi sbagliata |

#### 9.11.1 Dove sta il decoder

| firmware | percorso nella ISO | modulo | CPU | DB-REL |
|---|---|---|---|---|
| CARIN CC-93 0560 | `/CC93_/0560/nav_sw_load` | `pbp` @ `0x58ed0` | m68k (OS-9/68K) | 14–17 |
| Mk2C / Mk2M | `/Mk2C/0211/BMW/app_sw/bsw_load` | `pbp` @ `0x34130` | m68k (OS-9/68K) | 14–22 |
| Mk3 | `/Mk3/0127/BMWC01S/app_sw/bsw_load` | `db_pub` @ `0x7d488` | **MIPS32 BE** (OS-9000) | ≥ 34 |
| RR / V_2 | `/V_2/RR/0101/BMWC01S/app_sw/bsw2` | `db_pub` @ `0x917c8` | MIPS32 BE | ≥ 34 |

Il decoder **non è** in `dbd`, `dbq` o `dbc` (quelli sono demone, query e
cache). I moduli `Mk3`/`RR` marcati `usw_load` sono il lato MMI e non
contengono il codec.

**Firma univoca del codec** — la tabella dei caratteri del decoder di testo,
42 byte, identica in tutti i firmware:

```
61 65 | 73 74 72 00 | 20 64 67 68 69 6c 6e 6f | e0 e1 … fd ac
 a  e |  s  t  r NUL |  SP d  g  h  i  l  n  o | à á … ý ¬
```

Un codice a frequenza cucito addosso ai nomi di strada europei: `a`/`e` in
1 bit, `s t r NUL` in 2, `SP d g h i l n o` in 3, le accentate Latin-1 in 7.
Cercare questi 42 byte è il modo più rapido per trovare il codec in qualunque
altro firmware (`scripts/fw_hunt_charmap.py`).

#### 9.11.2 Primitive (offset del modulo `pbp` del CC-93)

```
0x3660  uncompressed_sectors(hdr)   bit 0 di hdr[6] -> hdr[7] altrimenti blockid&0xff
0x3698  dispatch: se hdr[6]&1 -> init + switch su BLOCK_TYPE, altrimenti memcpy
0x4798  init(src)        PTRBITS = bits_needed(usize * SECTOR)   [CC-93: SECTOR=2048]
0x47da  copy_raw(dst,n)  memcpy dal cursore grezzo, cursore += n
0x4800  copy_section(base, entry, recsize, plus1)
0x49a8  bits_init()      base = cursore corrente, bitpos = 0
0x49bc  getbits(n)       BFEXTU (a0){bitpos:n}  -> MSB-first
0x4a68  bits_needed(n)   bit per rappresentare 0..n-1, aritmetica a 16 bit
```

`getbits` usa le istruzioni **bitfield del 68020** (`BFEXTU`, opcode `E9D0`).
È il motivo per cui le sessioni precedenti non l'hanno vista: capstone in modo
`CS_MODE_M68K_000` le rende come `.dc.w`. **Serve `CS_MODE_M68K_040`.**

`PTRBITS` è la larghezza in bit di un puntatore interno al blocco:
`ceil(log2(UNCOMPRESSED_SIZE * 512))`. Per un blocco da 10.752 B vale 14 —
contro i 16 bit del campo decompresso. Da lì la compressione.

#### 9.11.3 La `RECORD_SIZE_TABLE` del superblock parametrizza il decoder

`pbp+0x3582` legge il superblock: descrittore a `+0x28` = `{u16 offset, u16 count}`,
poi `count` coppie `{u16 id, u16 value}` che **sovrascrivono** i default cablati
(`pbp+0x33ea`, estraibili con `scripts/cf1_defaults.py`). È esattamente la
`RECORD_SIZE_TABLE` di §3.2. Nel firmware MIPS la stessa tabella è puntata da
`-0x7900($gp)` con `campo(X) = T[(X-8)/2]`.

Voci usate dal decoder del tipo `0x00` (default CC-93 → valore reale 21708):

| id | ruolo | CC-93 | DB-REL 34 |
|---|---|---:|---:|
| `0x05` | offset del `SECTION_DESCRIPTOR` nel blocco | 8 | 8 |
| `0x06` | record sezione 6 | 16 | 16 |
| `0x08` | record sezione 4 | 28 | **32** |
| `0x09` | offset dei campi di coda nel record della sezione 4 | 22 | **26** |
| `0x0b` | lunghezza del prologo in chiaro | 108 | **116** |
| `0x0c` | record sezione 7 | 6 | 6 |
| `0x0f` | record sezione 9 (copiata verbatim) | 8 | 8 |
| `0x10` | record sezione 5 | 8 | 8 |
| `0x12` | record sezione 3 (verbatim, +1 record) | 4 | 4 |
| `0x13` | record sezione 11 | 6 | 6 |
| `0x14` | record sezione 10 (verbatim) | 8 | 8 |
| `0x15` | record sezione 12 (verbatim) | 4 | **6** |
| `0x40` | record sezioni 0,1,2 | 6 | **10** |

Verificato su un blocco `CF=0` reale (settore 3169061, DB-REL 34): tutte le
lunghezze di sezione tornano **esatte** con questi valori, incluso il record
sentinella (`e3` = `(count+1)·4`, `e4` = `(count+1)·32`).

#### 9.11.4 `decode_type00` — struttura

```
copy_raw(dst, T[0x0b])                       # prologo in chiaro (header+descr+bbox+service)
PB_s2  = bits_needed(e2.count)               # descriptor[D+0x0a]
PB_s4  = bits_needed(e4.count  + 1)          # [D+0x12]
PB_s7  = bits_needed(e7.count  + 1)          # [D+0x1e]
PB_s10 = bits_needed(e10.count + 1)          # [D+0x2a]
PB_s11 = bits_needed(e11.count + 1)          # [D+0x2e]
PB_s12 = bits_needed(e12.count + 1)          # [D+0x32]
widths = copy_raw(2)                         # due larghezze adattive per blocco
copy_section(e3,  T[0x12], plus1=True)       # sezioni copiate verbatim
copy_section(e9,  T[0x0f])
copy_section(e10, T[0x14])
if e12.count: copy_section(e12, T[0x15])
bits_init()                                  # da qui è bitstream
dec_A(e0); dec_A(e1); dec_A(e2)
dec_B(e4)                                    # + record sentinella in coda
dec_C(e5); dec_D(e6); dec_E(e7)
if e11.count: dec_F(e11)
dec_text()
```

`dec_B` conferma il record sentinella di §9.5: il ciclo copre `count` record e
poi scrive solo alcuni campi del record `count`.

Codifica dei campi ricorrente:

* **puntatore interno**: `off_sezione_bersaglio + getbits(PB_bersaglio) * recsize`
  (indice di record, non offset) — con `indice == count` usato come `NULL`;
* **offset pari**: `getbits(PTRBITS-1) << 1`;
* **ereditarietà**: 1 bit di flag; se 0 il campo si copia dal record precedente
  (in `dec_B` l'intero record parte come copia del precedente);
* **coordinate** (`dec_C`/`dec_D`/`dec_E`): primo record assoluto a 16 bit, poi
  `1 bit` → assoluto/delta, `1 bit` → segno, `getbits(widths[1])` per il modulo;
* **cache di blocco**: due valori (puntatore a `e7` e a `e2`) inizializzati a 1
  e riemessi finché un flag non li aggiorna.

#### 9.11.5 Decoder di testo (`pbp+0x4862`)

```
start = getbits(PTRBITS);  end = getbits(PTRBITS)
if start == 0 and end == 0: return
dizionario = [ bytes(getbits(7) for _ in range(getbits(5))) for _ in range(6) ]
p = start
while p <= end:
    code = getbits(2)
    00 -> CHARMAP[getbits(1)]            # a e
    01 -> CHARMAP[2 + getbits(2)]        # s t r NUL
    10 -> CHARMAP[6 + getbits(3)]        # SP d g h i l n o
    11 -> v = getbits(7)
          v > 0x26  -> carattere letterale
          v > 0x1b  -> voce del dizionario locale al blocco (v-0x21)
          altrimenti-> CHARMAP[14 + v]   # accentate
```

Il blob dei nomi decodificato è l'**oracolo di validazione più forte
disponibile**: sta in fondo al bitstream, quindi se esce testo leggibile tutto
ciò che lo precede è stato decodificato correttamente.

#### 9.11.6 Differenze DB-REL 34 e stato del port

Il decoder m68k (CC-93 / Mk2C) **non basta** per i dischi DB-REL 34: i record
sono cresciuti (`T[0x08]` 28→32, `T[0x40]` 6→10) e i campi in più non vengono
scritti. Il decoder corretto è quello **MIPS di `db_pub`** (Mk3/RR), che ha la
stessa struttura ma organizzata in **passate multiple**: ogni sezione viene
percorsa più volte con un argomento `kind` (`0x14`, `0x15`, `0x17`) che
seleziona il gruppo di campi da leggere. Sequenza di `decode_type00`
(`db_pub+0x3d04`, Mk3 0127):

```
kind 0x14: dec_e0, dec_e1, dec_e2, dec_B, [dec_C/dec_D/dec_E inlined]
kind 0x15: dec_e0, dec_B, ...
kind 0x17: dec_e2, dec_e1, dec_e0
if getbits(1): dec_text()      # due blob di testo, non uno
```

Campi verificati sul blocco `CF=0` reale (settore 3169061):

* sezioni 0/1/2, record da 10 B: `+0,+2,+4` come nel CC-93; `+6` e `+8` sono
  due puntatori a `e14` (`off + idx*4`), scritti nella passata `kind 0x17` come
  `getbits(PTRBITS-1) << 1`;
* sezione 4, record da 32 B: identica al CC-93 per `+0..+0x15`, `+0x1a/+0x1c/+0x1e`
  (via `T[0x09]=26`); i nuovi `+0x16` (puntatore, vale `e13.off`) e `+0x18`
  sono scritti nelle passate successive;
* il descrittore del tipo `0x00` ha **15 voci** in DB-REL 34 (`e0..e14`),
  contro le 13 usate dal CC-93; `e13`/`e14` sono le sezioni nuove.

**Stato**: struttura completa e verificata; resta da trascrivere il corpo delle
passate `0x15`/`0x17` e le inline di `dec_C/D/E` dal MIPS. Implementazione in
`carin/parser/cf1.py` (per ora porta la variante CC-93, cioè la passata
`0x14`), strumenti in `scripts/`:

| script | funzione |
|---|---|
| `os9_modules.py` | enumera i moduli OS-9/OS-9000 (sync `4AFC` e `4DAD`) |
| `m68k_dis.py` | disassembla m68k **in modo 68040** (serve per `BFEXTU`) |
| `fw_xref.py` | xref delle stringhe costanti PC-relative |
| `os9_data.py` | area dati statica e risoluzione dei riferimenti `a6` |
| `cf1_defaults.py` | estrae la tabella di layout di default dal firmware |
| `cf1_super.py` | estrae la `RECORD_SIZE_TABLE` dal superblock del disco |
| `cf1_charmap.py` | estrae la tabella dei caratteri del decoder di testo |
| `fw_hunt_charmap.py` | cerca il codec in tutti i file di una ISO firmware |
| `fw_arch_detect.py` | indovina la CPU di un modulo |
| `mips_dis.py`, `mips_graph.py`, `mips_func.py` | disassemblatore, grafo di chiamata e dump annotato per i moduli MIPS |
| `cf1_layout_probe.py` | ispeziona blocchi `CF=0` reali per dedurre il layout |

#### 9.11.7 Ipotesi da non riprendere

`docs/agents/agente_pdf.md` afferma che `CF=1` sia LZSS a finestra 4096 con
token a 16 bit e che `CF=2` sia gestito da zlib nel firmware m68k. **È falso su
entrambi i punti**: il firmware CC-93 non contiene zlib (nessuna tabella
`inflate` presente) e non confronta mai `COMPRESSION_FLAG` con 0/1/2 — testa
`btst #0`. La sua unica prova è "la lunghezza combacia", già confutata in §9.9.1.

---

## 10. Toolchain

| File | Funzione |
|---|---|
| `carin/parser/iso.py` | lettore ISO 9660 (nessun mount), `CarinVolume` sullo spazio `DB_0+DB_1`, `CarinBlock`, `find_bbox`, `to_wgs84` / `to_carin` |
| `carin/parser/calibration.py` | `GeographicCalibrator` (Levenberg-Marquardt + grid search) |
| `carin/parser/compression.py` | `CompressionAnalyzer`, `LzssSweep`, `sweep_lzss`, `decode_lzw`, `decode_lz4_block`, `entropy`, `plain_prefix`, `score_output` |
| `scripts/extract_anchors.py` | estrae `(nome, X, Y)` dai blocchi `0x16` |
| `scripts/optimize_coords.py` | calibrazione e verifica dei residui |
| `scripts/analyze_codec.py` | analisi del codec `CF=1` su blocchi reali dell'ISO |
| `scripts/find_pairs.py` | scansiona il DB per coppie chiaro/cifrato (bbox identica, CF diverso) — esito: nessuna trovata, §9.6.1 |

```bash
python3 scripts/extract_anchors.py --out build/cities.pkl --names paris london roma
python3 scripts/optimize_coords.py
python3 scripts/analyze_codec.py --type 0x1E --count 1
```

---

## 11. Roadmap di verifica

| # | Blocco | Stato | Priorità |
|---|---|---|---|
| 1 | Sistema di coordinate | ✅ **RISOLTO** — `K = 2e9/360`, origine 30° O sull'equatore, rms 2,0 km su 38 ancore | — |
| 2 | Record POI `0x06` e feature `0x16` | ✅ **RISOLTO** — 28 e 20 byte, scala locale 64 | — |
| 3 | Bounding box per blocco | ✅ **RISOLTO** — `find_bbox`, 60/60 sui tipi georeferenziati | — |
| 4 | `COMPRESSION_FLAG = 1` | ristretto: deterministico, byte-allineato, tabella statica; zlib/LZ4/LZW/LZSS/Huffman-ordine-0-globale/**aPLib** esclusi (§9.8); nessuna coppia chiaro/cifrato esiste sul disco (§9.6.1); nessuna tabella statica in `0x0D`/`0x18`/`0x1A`/`0x1B` (§9.8.3); layout di sezione di `0x1E` risolto (§9.5). **Confronto cross-edizione 21708/21734** (§9.10): stesso schema binario, 60 tile con CF diverso per la stessa bbox, nessuna byte-identica, e anche filtrando per descriptor identico (contenuto quasi-invariato) l'intera famiglia control-byte-LZSS resta al livello del rumore (~4%). Pista non esaurita: varint/gamma per-campo (§9.8.2); riestendere il confronto cross-edizione a `0x06`/`0x16`/`0x1E`. **Non blocca il compilatore** | 🟠 alta |
| 5 | Semantica campi `0x0E` SECTION_0/1/2 (rete stradale) | struttura nota, semantica no | 🔴 critica |
| 6 | Georeferenziazione dei parcel `0x0C`/`0x0E`/`0x10` (via `0x0D`/`0x0F`/`0x11`) | non risolta | 🔴 critica |
| 7 | Mappa `BLOCK_TYPE → section_type[]` | non presente nei dati | 🟠 alta |
| 8 | Risoluzione `NAME_PTR` high16 (tabella paesi) | 6 segmenti non identificati | 🟡 media |
| 9 | Ordine/ruolo dei 5 `u16` del tipo `0x04` | UNKNOWN | 🟡 media |
| 10 | Checksum / CRC di blocco | **nessuno trovato** | 🟢 nessun rischio |
