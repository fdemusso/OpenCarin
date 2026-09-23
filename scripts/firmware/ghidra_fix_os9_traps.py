"""
Ghidra script to fix OS-9 system call traps (Motorola 68000).

Automates the identification and fixing of OS-9 system calls (trap #0 instructions)
during the reverse engineering of firmware modules within Ghidra.

In OS-9/68k:
- 'trap #0' (0x4e40) is followed by a 16-bit syscall function code.
- Execution resumes at PC + 4 (after the 2-byte function code).
- Ghidra defaults to disassembling the function code as an instruction, corrupting disassembly.

This script:
1. Identifies trap #0 instructions (or raw 4e40 patterns).
2. Clears erroneous instructions starting at trap+2.
3. Defines the 16-bit word at trap+2 as data.
4. Adds human-readable OS-9 syscall names as comments (e.g. F$Exit, I$GetStt).
5. Disassembles starting at trap+4 (resume address).
"""

from ghidra.program.model.data import WordDataType
from ghidra.app.cmd.disassemble import DisassembleCommand
from ghidra.app.cmd.clear import ClearCmd
from ghidra.program.model.listing import CodeUnit

# Tabella syscall OS-9 / 68k
OS9_SYSCALLS = {
    0x0000: "F$Link",
    0x0001: "F$PrsNam",
    0x0002: "F$CmpNam",
    0x0003: "F$Crc",
    0x0004: "F$SRqMem",
    0x0005: "F$SRtMem",
    0x0006: "F$Exit",
    0x0007: "F$Mem",
    0x0008: "F$Sleep",
    0x0009: "F$SSig",
    0x000A: "F$ID",
    0x000B: "F$SPrior",
    0x000C: "F$SSWI",
    0x000D: "F$PErr",
    0x000E: "F$Send",
    0x000F: "F$Time",
    0x0010: "F$STime",
    0x0011: "F$Wait",
    0x0012: "F$Chain",
    0x0015: "F$Alarm",
    0x0016: "F$SigRst",
    0x0017: "F$Panic",
    0x0018: "F$Fork",
    0x001A: "F$DatMod",
    0x001B: "F$SetSys",
    0x001C: "F$SRqCMem",
    0x001D: "F$SaProc",
    0x001E: "F$SSvc",
    0x001F: "F$IODel",
    0x0020: "F$SLink",
    0x0021: "F$Unlink",
    0x0022: "F$VModul",
    0x0025: "F$DelMod",
    0x0026: "F$Copy",
    0x0027: "F$CpyMem",
    0x0028: "F$Clear",
    0x002B: "F$AllRAM",
    0x0052: "F$Ev_Create",
    0x0053: "F$Ev_Wait/Sign",
    0x0057: "F$Ev_Unlink",
    # I/O System Calls
    0x0080: "I$Attach",
    0x0081: "I$Detach",
    0x0082: "I$Dup",
    0x0083: "I$Create",
    0x0084: "I$Open",
    0x0085: "I$MakDir",
    0x0086: "I$ChgDir",
    0x0087: "I$Delete",
    0x0088: "I$Seek",
    0x0089: "I$Read",
    0x008A: "I$Write",
    0x008B: "I$ReadLn",
    0x008C: "I$WritLn",
    0x008D: "I$GetStt",
    0x008E: "I$SetStt",
    0x008F: "I$Close",
}

print("=== Inizio scansione e fix OS-9 Trap #0 ===")
listing = currentProgram.getListing()
mem = currentProgram.getMemory()

# 1. Raccoglie tutti i trap #0 esistenti
trap_addresses = []
instructions = listing.getInstructions(True)
for ins in instructions:
    if ins.getMnemonicString() == "trap":
        op0 = ins.getScalar(0)
        if op0 is not None and op0.getUnsignedValue() == 0:
            trap_addresses.append(ins.getAddress())

print("Trovate {} istruzioni TRAP #0. Applicazione correzioni...".format(len(trap_addresses)))

fixed_count = 0
for addr in trap_addresses:
    next_addr = addr.add(2)
    resume_addr = addr.add(4)
    
    # Se a next_addr c'e' una code unit (istruzione errata), puliamo SOLO quella
    # per evitare di toccare trap consecutivi (es. trap #0 seguito da un altro trap #0)
    cu = listing.getCodeUnitAt(next_addr)
    if cu is not None:
        clear_cmd = ClearCmd(cu.getMinAddress(), cu.getMaxAddress())
        clear_cmd.applyTo(currentProgram)
    else:
        # Pulisce esattamente i 2 byte della syscall
        clear_cmd = ClearCmd(next_addr, next_addr.add(1))
        clear_cmd.applyTo(currentProgram)
    
    # Crea il dato a 2 byte per la syscall
    try:
        listing.createData(next_addr, WordDataType())
    except Exception as e:
        print("Avviso su creazione dato a {}: {}".format(next_addr, e))

    # Risolve il nome della syscall e aggiunge i commenti esplicativi
    try:
        val = mem.getShort(next_addr) & 0xFFFF
        name = OS9_SYSCALLS.get(val, "OS9_SYSCALL_0x%04X" % val)
        
        # Commento sulla syscall word
        cu_data = listing.getCodeUnitAt(next_addr)
        if cu_data is not None:
            cu_data.setComment(CodeUnit.EOL_COMMENT, "OS-9 Syscall: %s (0x%04x)" % (name, val))
            
        # Commento anche sull'istruzione TRAP
        cu_trap = listing.getCodeUnitAt(addr)
        if cu_trap is not None:
            cu_trap.setComment(CodeUnit.EOL_COMMENT, "OS-9 %s" % name)
    except Exception as e:
        pass
    
    # Riavvia il disassemblatore all'istruzione successiva (trap + 4)
    dis_cmd = DisassembleCommand(resume_addr, None, True)
    dis_cmd.applyTo(currentProgram)
    fixed_count += 1

print("Completati {} fix! Ora puoi avviare Auto-Analyze in Ghidra.".format(fixed_count))
