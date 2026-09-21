import re
import os

asm_file = r"C:\Users\flavi\Desktop\OpenCarin\dbq\dbq.asm"
bin_file = r"C:\Users\flavi\Desktop\OpenCarin\dbq\dbq.bin"

# Regex per catturare l'indirizzo esadecimale e i byte (es: "00004c: 2d468010")
pattern = re.compile(r"^\s*([0-9a-fA-F]+):\s+([0-9a-fA-F]+)\s+")

memory = {}
max_addr = 0

print(f"Lettura di {asm_file}...")
with open(asm_file, 'r') as f:
    for line in f:
        match = pattern.search(line)
        if match:
            addr_str = match.group(1)
            hex_data = match.group(2)
            
            addr = int(addr_str, 16)
            # Ignoriamo stringhe esadecimali di lunghezza dispari (sporcizia)
            if len(hex_data) % 2 != 0:
                continue
                
            try:
                bytes_data = bytes.fromhex(hex_data)
                for i, b in enumerate(bytes_data):
                    memory[addr + i] = b
                    if addr + i > max_addr:
                        max_addr = addr + i
            except ValueError:
                pass

if memory:
    # Creiamo un array di byte riempito di zeri fino all'indirizzo massimo
    bin_data = bytearray(max_addr + 1)
    for addr, b in memory.items():
        bin_data[addr] = b

    with open(bin_file, 'wb') as f:
        f.write(bin_data)
    print(f"SUCCESSO! File binario generato: {bin_file}")
    print(f"Dimensione totale: {max_addr + 1} bytes")
else:
    print("ERRORE: Nessun dato esadecimale trovato. Controlla il formato del file.")
