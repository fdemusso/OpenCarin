// Fixes OS-9 TRAP #0 calls by defining the next 2 bytes as data and resuming disassembly
// @category OS9
// @author Antigravity

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.WordDataType;
import ghidra.program.model.scalar.Scalar;
import ghidra.app.cmd.disassemble.DisassembleCommand;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class FixOS9Traps extends GhidraScript {

    private static final Map<Integer, String> OS9_SYSCALLS = new HashMap<>();

    static {
        // OS-9 / 68k System Calls
        OS9_SYSCALLS.put(0x0000, "F$Link");
        OS9_SYSCALLS.put(0x0001, "F$PrsNam");
        OS9_SYSCALLS.put(0x0002, "F$CmpNam");
        OS9_SYSCALLS.put(0x0003, "F$Crc");
        OS9_SYSCALLS.put(0x0004, "F$SRqMem");
        OS9_SYSCALLS.put(0x0005, "F$SRtMem");
        OS9_SYSCALLS.put(0x0006, "F$Exit");
        OS9_SYSCALLS.put(0x0007, "F$Mem");
        OS9_SYSCALLS.put(0x0008, "F$Sleep");
        OS9_SYSCALLS.put(0x0009, "F$SSig");
        OS9_SYSCALLS.put(0x000A, "F$ID");
        OS9_SYSCALLS.put(0x000B, "F$SPrior");
        OS9_SYSCALLS.put(0x000C, "F$SSWI");
        OS9_SYSCALLS.put(0x000D, "F$PErr");
        OS9_SYSCALLS.put(0x000E, "F$Send");
        OS9_SYSCALLS.put(0x000F, "F$Time");
        OS9_SYSCALLS.put(0x0010, "F$STime");
        OS9_SYSCALLS.put(0x0011, "F$Wait");
        OS9_SYSCALLS.put(0x0012, "F$Chain");
        OS9_SYSCALLS.put(0x0015, "F$Alarm");
        OS9_SYSCALLS.put(0x0016, "F$SigRst");
        OS9_SYSCALLS.put(0x0017, "F$Panic");
        OS9_SYSCALLS.put(0x0018, "F$Fork");
        OS9_SYSCALLS.put(0x001A, "F$DatMod");
        OS9_SYSCALLS.put(0x001B, "F$SetSys");
        OS9_SYSCALLS.put(0x001C, "F$SRqCMem");
        OS9_SYSCALLS.put(0x001D, "F$SaProc");
        OS9_SYSCALLS.put(0x001E, "F$SSvc");
        OS9_SYSCALLS.put(0x001F, "F$IODel");
        OS9_SYSCALLS.put(0x0020, "F$SLink");
        OS9_SYSCALLS.put(0x0021, "F$Unlink");
        OS9_SYSCALLS.put(0x0022, "F$VModul");
        OS9_SYSCALLS.put(0x0025, "F$DelMod");
        OS9_SYSCALLS.put(0x0026, "F$Copy");
        OS9_SYSCALLS.put(0x0027, "F$CpyMem");
        OS9_SYSCALLS.put(0x0028, "F$Clear");
        OS9_SYSCALLS.put(0x002B, "F$AllRAM");
        OS9_SYSCALLS.put(0x0052, "F$Ev_Create");
        OS9_SYSCALLS.put(0x0053, "F$Ev_Wait/Sign");
        OS9_SYSCALLS.put(0x0057, "F$Ev_Unlink");

        // OS-9 / 68k I/O Calls
        OS9_SYSCALLS.put(0x0080, "I$Attach");
        OS9_SYSCALLS.put(0x0081, "I$Detach");
        OS9_SYSCALLS.put(0x0082, "I$Dup");
        OS9_SYSCALLS.put(0x0083, "I$Create");
        OS9_SYSCALLS.put(0x0084, "I$Open");
        OS9_SYSCALLS.put(0x0085, "I$MakDir");
        OS9_SYSCALLS.put(0x0086, "I$ChgDir");
        OS9_SYSCALLS.put(0x0087, "I$Delete");
        OS9_SYSCALLS.put(0x0088, "I$Seek");
        OS9_SYSCALLS.put(0x0089, "I$Read");
        OS9_SYSCALLS.put(0x008A, "I$Write");
        OS9_SYSCALLS.put(0x008B, "I$ReadLn");
        OS9_SYSCALLS.put(0x008C, "I$WritLn");
        OS9_SYSCALLS.put(0x008D, "I$GetStt");
        OS9_SYSCALLS.put(0x008E, "I$SetStt");
        OS9_SYSCALLS.put(0x008F, "I$Close");
    }

    @Override
    public void run() throws Exception {
        Listing listing = currentProgram.getListing();
        int totalFixed = 0;
        int pass = 1;

        println("=== Inizio scansione e fix OS-9 TRAP #0 (Java) ===");

        // Ciclo a passaggi multipli per gestire anche trap consecutivi e catene di disassemblaggio
        while (true) {
            ArrayList<Address> trapAddresses = new ArrayList<>();
            InstructionIterator instructions = listing.getInstructions(true);

            while (instructions.hasNext()) {
                Instruction ins = instructions.next();
                if (ins.getMnemonicString().equalsIgnoreCase("trap")) {
                    Object[] opObjects = ins.getOpObjects(0);
                    if (opObjects.length > 0 && opObjects[0] instanceof Scalar) {
                        long vec = ((Scalar) opObjects[0]).getUnsignedValue();
                        if (vec == 0 || vec == 13) {
                            Address nextAddr = ins.getAddress().add(2);
                            Data d = listing.getDataAt(nextAddr);
                            // Se i 2 byte successivi non sono già definiti come Word, è da fixare
                            if (d == null || !(d.getDataType() instanceof WordDataType)) {
                                trapAddresses.add(ins.getAddress());
                            }
                        }
                    }
                }
            }

            if (trapAddresses.isEmpty()) {
                break;
            }

            println(String.format("Passaggio %d: trovate %d chiamate TRAP #0 / #13 da sistemare...", pass++, trapAddresses.size()));

            for (Address addr : trapAddresses) {
                Address nextAddr = addr.add(2);
                Address resumeAddr = addr.add(4);

                // Determina il vettore trap (0 o 13)
                Instruction trapIns = listing.getInstructionAt(addr);
                long vec = 0;
                if (trapIns != null) {
                    Object[] ops = trapIns.getOpObjects(0);
                    if (ops.length > 0 && ops[0] instanceof Scalar) {
                        vec = ((Scalar) ops[0]).getUnsignedValue();
                    }
                }

                // Pulizia sicura: elimina SOLTANTO l'eventuale istruzione spuria a nextAddr
                CodeUnit cu = listing.getCodeUnitContaining(nextAddr);
                if (cu != null) {
                    listing.clearCodeUnits(cu.getMinAddress(), cu.getMaxAddress(), false);
                } else {
                    listing.clearCodeUnits(nextAddr, nextAddr.add(1), false);
                }

                // Crea la word a 2 byte per il codice della syscall
                try {
                    listing.createData(nextAddr, new WordDataType());
                } catch (Exception e) {
                    listing.clearCodeUnits(nextAddr, nextAddr.add(1), false);
                    listing.createData(nextAddr, new WordDataType());
                }

                // Risoluzione nome syscall / traplib e inserimento commenti
                try {
                    short val = currentProgram.getMemory().getShort(nextAddr);
                    int code = val & 0xFFFF;
                    if (vec == 0) {
                        String name = OS9_SYSCALLS.getOrDefault(code, String.format("OS9_SYSCALL_0x%04X", code));
                        setEOLComment(nextAddr, String.format("OS-9 Syscall: %s (0x%04X)", name, code));
                        setEOLComment(addr, "OS-9 " + name);
                    } else {
                        setEOLComment(nextAddr, String.format("OS-9 TrapLib #%d func 0x%04X", vec, code));
                        setEOLComment(addr, String.format("OS-9 TrapLib #%d (0x%04X)", vec, code));
                    }
                } catch (Exception e) {
                    // Ignora errori di lettura memoria
                }

                // Riavvia il disassemblatore all'indirizzo corretto (trap + 4)
                DisassembleCommand disCmd = new DisassembleCommand(resumeAddr, null, true);
                disCmd.applyTo(currentProgram);

                totalFixed++;
            }
        }

        println(String.format("Fix completato! Sistemate %d chiamate TRAP #0 / #13. Ora puoi lanciare Auto-Analyze.", totalFixed));
    }
}
