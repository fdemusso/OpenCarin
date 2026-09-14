# CarinCompiler (OpenCarin)

**CarinCompiler** (o OpenCarin) è un tool open source in Python sviluppato per il reverse engineering, la lettura e la ricompilazione dei database cartografici proprietari **Philips/VDO Carin** (formato `CARINDB` / `DB_0` / `CARINET`). 
Questi database sono tipicamente utilizzati nei sistemi di navigazione storici come **BMW MK4**, **Renault Carminat CNI1** e sistemi **VDO Dayton** basati su hardware Hitachi SH-4.

## Obiettivo del Progetto

L'obiettivo principale è superare l'obsolescenza delle mappe (spesso ferme al 2016 o precedenti) fornendo una toolchain completa che consenta di:
1. **Leggere e decodificare** i file binari estratti dai dump originali (es. file `DB_0` e `ET_0` o `CARINET`).
2. **Mappare la struttura** interna del database: Header, Superblock, Node Table, Edge Table, Name Table, ecc.
3. **Ingerire dati moderni** (es. mappe aggiornate in formato OpenStreetMap `.osm.pbf`).
4. **Ricompilare e serializzare** i dati in un formato binario compatibile con i navigatori originali, pronti per essere masterizzati (es. in ISO Mode 2).

## Requisiti

- **Python**: >= 3.9
- **Dipendenze principali**: `osmium` (per il parsing veloce di file `.osm.pbf`), `shapely` (per operazioni geometriche) e `click` (per la CLI).
- **Spazio di archiviazione**: Spazio sufficiente per manipolare dump dei database originali (spesso centinaia di MB o GB) e file `.osm.pbf`.

## Installazione

Puoi installare il progetto e le sue dipendenze in un ambiente virtuale:

```bash
# Creazione e attivazione virtual environment
python -m venv venv
source venv/bin/activate  # Su Linux/macOS
# venv\Scripts\activate   # Su Windows

# Installazione del tool e dipendenze di sviluppo
pip install -e ".[dev]"
```

## Uso Base

```bash
# Esempio di utilizzo (quando la CLI sarà implementata)
carin-cli parse --db0 /path/to/DB_0
carin-cli compile --osm map.osm.pbf --output new_DB_0
```

## Struttura del Repository

- `carin/parser/`: Moduli per decodificare file binari (Header, Superblock, Tabelle Nodi/Archi).
- `carin/serializer/`: Moduli per generare file binari conformi allo standard Carin.
- `carin/osm/`: Strumenti per leggere file PBF di OpenStreetMap e convertire feature geografiche e nodi.
- `carin/cli.py`: Interfaccia a linea di comando (CLI) per orchestrare parsing e compilazione.
- `tests/`: Suite di test unitari.

## Roadmap di Sviluppo

1. **Fase 1: Lettura Header e Superblock (Completata 🚀)**
   - Parsing dei primi 128 byte (Big-Endian) del file `DB_0`.
   - Mappatura dei puntatori alle tabelle sequenziali (16/32 bit) e dimensioni.
2. **Fase 2: Parsing delle Tabelle Strutturali (In corso 🚧)**
   - Decodifica della **Node Table** (coordinate, puntatori archi).
   - Decodifica della **Edge Table** (connessioni stradali, attributi direzionali e restrizioni).
3. **Fase 3: Parsing di Nomi e POI**
   - Estrazione e mappatura della **Name Table** (nomi vie, città, encoding dei caratteri).
   - Gestione dei Point of Interest (POI).
4. **Fase 4: Ingestione Dati OSM**
   - Utilizzo di `osmium` per filtrare la rete stradale da OpenStreetMap (`highway=*`).
   - Normalizzazione dei nodi OSM nel formato compresso o relativo richiesto da Carin.
5. **Fase 5: Serializzazione e Compilazione**
   - Scrittura dei record serializzati e ricalcolo dei puntatori.
   - Generazione dei file finali (`DB_0`, `ET_0` / `CARINET`).
6. **Fase 6: Packaging ISO**
   - Tool o istruzioni per il packaging del nuovo filesystem in un formato ISO 9660 Mode 2 / Form 1, richiesto dai lettori CD/DVD dei navigatori storici.
