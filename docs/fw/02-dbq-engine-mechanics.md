# OS-9 DBQ Engine IPC & Block Resolution

> **Provenance (2026-09-28):** the listings analysed here (`dbq/*.asm`, `rpmod.asm`) are from the **Philips CARIN CC-93** (m68k, 1993) on `NAV_SW(v32).iso`, a CD-only BMW platform. The unit that reads the DB-REL 34 DVDs is the RoadRunner (MIPS), whose `rpmod`/`dbq` live in `/V_2/RR/*/app_sw/bsw2`. See [`03-firmware-provenance.md`](03-firmware-provenance.md).

This document details the mechanics of how the firmware queries and processes navigation data (specifically block type `0x0C`), based on the reverse engineering of the Database Query Client (`dbq/dbc.asm`).

## 1. Disassembler Misidentification of Library Thunks

A critical discovery in analyzing `dbc.asm` is the misidentification of external library calls by the disassembler. Functions like `$386c` and `$3864` were originally assumed to be native subroutines. However, inspecting the instruction stream at `00385e` reveals a jump table to OS-9 `trap #13` calls:

```m68k
00385e: 0021 4e4d    ; (index 21), trap #$d
003862: 0022 4e4d    ; (index 22), trap #$d
003866: 0023 4e4d    ; (index 23), trap #$d
```

The disassembler incorrectly parsed the bytes `00 22 4e 4d` as `ori.b #$4d, -(a2)`. The actual jump targets `$3864` and `$386c` point precisely to the `4e 4d` (`trap #$d`) bytes. 

This proves that `dbc.asm` is delegating these operations to an external **Database Query Engine** module via OS-9 trap/IPC mechanisms, rather than implementing the block loading natively.

## 2. The 0x0C Block Load Process

The process of loading a `0x0C` block in `dbc.asm` acts solely as a "preload and validate" mechanism. It does not return the raw, decompressed payload to the caller.

1. **Query Construction (`001c2c`)**:
   `dbc.asm` allocates a 146-byte (`$92`) local buffer on the stack. 
   It sets `BLOCK_TYPE = 0x0C` at offset `52` (`$34`), and writes the requested `BLOCK_ID` at offset `56` (`$38`).

2. **Query Dispatch (`001c8a`)**:
   It invokes the DB engine (`trap #13` at `$386c`), passing the 94-byte query descriptor (size `0x5e`) starting at offset `52`. This instructs the engine to load the block.

3. **Result Validation (`001cd0`)**:
   It invokes the DB engine again (`trap #13` at `$3864`), this time passing the 52-byte local buffer at offset `0` and size `0x34`. The engine populates this buffer with a **projected DB result struct**.
   `dbc.asm` only checks if the first 4 bytes (`+0x00` of the buffer) match the requested `BLOCK_ID`. 
   If they match, it immediately deallocates the entire 146-byte buffer and returns the `BLOCK_ID` in `D0`.

The raw binary layout (ZLIB compression `CF=0x02`, section descriptors, S0/S1/S3 records) is completely encapsulated inside the DB engine and is never exposed to `dbc.asm`.

*(Note: The previous assumption that `1c8a` loads a `0x08` block was incorrect. The `0x5e` parameter pushed is the 94-byte size of the query struct, not a block type ID).*

## 3. The Address Resolution Chain

Since `dbc.asm` does not parse the binary block sections directly, the complex `0x0D` index to `0x0C` payload resolution happens entirely within the DB engine. `dbc.asm` simply queries the engine using high-level string commands:

1. **String Formatting**: `dbc.asm` uses `sprintf` (`bsr.w $3810`) to format query parameters into CLI-like string flags. The format strings were originally misidentified as code (e.g. `0017c9: -q%s\0`, `0017ce: -r%s\0`, `0017d3: -a%d\0`).
2. **Query Dispatch**: These query strings and relevant parameters are passed to the DB engine via `trap #13` IPC calls (e.g., `002b3c`, `002d50`).
3. **Internal Resolution**: The external DB engine parses the strings, looks up the `0x0D` index record, resolves the `offset/count`, decompresses the `0x0C` block, and finds the target record.
4. **Response**: The DB engine returns a high-level struct or handle back to `dbc.asm`.

## 4. Query State Cache (`-$785e(a6)`)

To manage these queries, `dbc.asm` maintains an array of state structs at offset `-$785e(A6)` in the Global Data Area. The array has a stride of 54 (`0x36`) bytes and acts as a synchronous IN/OUT parameter cache for the DB engine calls:

* **`+0x00` (dword)**: Query Type/Mode (e.g., 0, 1, 4, 5).
* **`+0x04` (dword)**: Node/Record ID passed to the engine.
* **`+0x08` (word)**: Status or query flags.
* **`+0x0A` (dword)**: Output parameter pointer (passed by reference to receive a handle).
* **`+0x0E` (dword)**: Pointer to formatted string buffer 1 (`-q%s`).
* **`+0x12` (dword)**: Pointer to formatted string buffer 2 (`-r%s`).
* **`+0x16` (dword)**: Pointer to formatted string buffer 3 (`-a%d`).

These string pointers refer to temporary stack variables, proving that this cache is only valid synchronously during the execution of the query state machine loop (`001408`), and is not a persistent cache of block binary data.
## 5. dbd.asm: The Database Engine Daemon

The file dbd.asm is the daemon process (the DB Engine) that handles the requests dispatched by dbc.asm. Our previous assumption that the sequence of calls at 000ff4–00100e processes incoming queries is **incorrect**. This sequence is actually the server's initialization routine (main startup):

1. **$d2c**: Parses the server's command-line arguments (argc in d0, argv in d1).
2. **$3622**: A wrapper around OS-9 trap #0 -> F$ID (0x0C) to retrieve the process ID.
3. **$19fc**: Registers the server's PID against a specific IPC message queue/signal ID (d1 = ).
4. **$1f5e**: A wrapper around OS-9 trap #0 -> F$Icpt (0x09) to register the signal intercept handler (the entry point for incoming queries).
5. **$da2**: Opens and mounts the initial database file via I and I.

Once initialized, the daemon enters a loop (001022) waiting for signals (via $1538). When a query signal arrives, it jumps into the dispatch table at 00104e.

### Command Dispatch Table (dbd.asm)

Verified 2026-10-09 against the real `dbd` module — extracted from
`/CC93_/0560/nav_sw_load` inside `dataset/NAV_SW(v32).iso` with
`scripts/firmware/os9_modules.py` (module `dbd`, file offset `0x60374`, size
`0x381e`; its bytes match `dbq/dbd.asm`'s text byte-for-byte at every address
checked) — then loaded into Ghidra and decompiled, rather than hand-computed
from the disassembler's text. That text renders the jump-table words as fake
`ori.b` instructions and, critically, prints the table-read instruction
without its scale factor (`move.w $1066(pc,d0.w),d0`), which previously led
to an unscaled (×1) byte-offset reading. Ghidra's decompiler shows the real
instruction is `move.w (0x1066,PC,D0w*0x2), D0w` — the table is **word-indexed
(×2)**, not byte-indexed — and resolves the whole dispatcher to a clean,
self-consistent C `switch`:

```c
d0 = command_id - 0x202d;
if ((unsigned)d0 > 0x15) goto exit;      // 00104e-0105c
switch (command_id) {
case 0x202d: shutdown();        break;   // 001018 (sets flag $5(a7))
case 0x2033: FUN_00000c08();    break;   // case block 00102a
case 0x2034: FUN_00000c32();    break;   // case block 001030
case 0x2035: FUN_00000b9e();    break;   // case block 00103c
case 0x2036: FUN_00000c64();    break;   // case block 001036
case 0x2037: FUN_00000d0e();    break;   // case block 001042
case 0x2038: FUN_00000cd0();    break;   // case block 001048
}
```

* **$202d**: **Shutdown / Terminate Server** (jumps to `001018`, sets flag `$5(a7)`).
* **$2033**: Unknown (`bsr.w $c08`, case block at `00102a`).
* **$2034**: Unknown (`bsr.w $c32`, case block at `001030`).
* **$2035**: **Search Query** (`bsr.w $b9e`, case block at `00103c`).
* **$2036**: **Retrieve / Open** (`bsr.w $c64`, case block at `001036`).
* **$2037**: **Access by ID** (`bsr.w $d0e`, case block at `001042`).
* **$2038**: Unknown (`bsr.w $cd0`, case block at `001048`).

All six are reachable — there is no off-by-one gap. Command IDs `$202e`–`$2032`
and `$2039`–`$2042` are in bound (`d0` 1–5 and 12–21) but hit a `$002c` table
slot, i.e. jump straight to the shared exit at `001092` as no-ops; `$2043`
and above are rejected by the bound check before the table is even read.

*(This supersedes an earlier pass in this same session that read the command
IDs as `$2039`/`$203b`/`$203d`/`$203f`/`$2041`/`$2043`, spaced by 2 — an
artifact of the missing ×2 scale factor. The semantic labels — Search Query /
Retrieve-Open / Access-by-ID — are unchanged, since they were assigned by
position in the sequence, not by the literal command value.)*

*(Note: The previous assumption that $202d was the search query is false. $202d instructs the daemon to safely shut down. The search query is $203d)*.

### Absence of Raw Block Parsing in dbd.asm

A comprehensive scan of dbd.asm reveals no 0x0C, 0x0D, or 0x0E block-type checks, and no byte-level parsing of the 8-byte (S0) or 24-byte (S1) records. 

The handlers for queries ($b9e, $c64, $d0e) construct request structures and pass them to external shared modules (executed via jsr (a0) at 00367c). The actual DB binary structure layout, zlib decompression, and section descriptor parsing is completely delegated to this external library, not implemented natively in the dbd.asm IPC daemon.
