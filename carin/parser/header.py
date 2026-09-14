import struct
from dataclasses import dataclass
from typing import BinaryIO


@dataclass
class Superblock:
    """
    Rappresentazione dei metadati e dei puntatori del Superblock (Header)
    di un file DB_0 del database Carin (Big-Endian).
    """
    magic: bytes           # Identificativo o firma del formato
    version: int           # Versione del DB
    volume_name: str       # Nome del volume (es. "BMW_2016")
    creation_date: str     # Data di compilazione (formato stringa o timestamp)
    
    # Esempio di puntatori alle strutture interne.
    # Questi offset (generalmente a 32-bit) indicano dove iniziano le rispettive tabelle nel file.
    node_table_offset: int
    node_table_size: int
    
    edge_table_offset: int
    edge_table_size: int
    
    name_table_offset: int
    name_table_size: int

    # Potrebbero esserci altri puntatori per POI, Geometry, ecc.
    # Aggiungere qui man mano che si avanza nel reverse engineering.

    @classmethod
    def from_bytes(cls, data: bytes) -> "Superblock":
        """
        Parsa i primi N byte del file DB_0 usando la libreria struct.
        Tutti i dati Carin usano Big-Endian (>).
        
        Nota: la stringa di formato (`>...`) e il mapping sono a scopo illustrativo,
        da adattare agli offset esatti identificati nel reverse engineering.
        """
        # Esempio fittizio di layout:
        # 0-3: Magic (4s)
        # 4-7: Versione (I)
        # 8-23: Nome Volume (16s)
        # 24-31: Data (8s)
        # 32-35: Node Table Offset (I)
        # 36-39: Node Table Size (I)
        # 40-43: Edge Table Offset (I)
        # 44-47: Edge Table Size (I)
        # 48-51: Name Table Offset (I)
        # 52-55: Name Table Size (I)
        # 56-127: Padding o altri campi non ancora mappati (72x)
        
        # 4 + 4 + 16 + 8 + 4 + 4 + 4 + 4 + 4 + 4 + 72 = 128 bytes
        fmt = ">4s I 16s 8s I I I I I I 72x"
        
        if len(data) < struct.calcsize(fmt):
            raise ValueError(f"Dati insufficienti: attesi almeno {struct.calcsize(fmt)} byte.")
            
        unpacked = struct.unpack_from(fmt, data)
        
        magic = unpacked[0]
        version = unpacked[1]
        volume_name = unpacked[2].decode('ascii', errors='ignore').strip('\x00')
        creation_date = unpacked[3].decode('ascii', errors='ignore').strip('\x00')
        
        return cls(
            magic=magic,
            version=version,
            volume_name=volume_name,
            creation_date=creation_date,
            node_table_offset=unpacked[4],
            node_table_size=unpacked[5],
            edge_table_offset=unpacked[6],
            edge_table_size=unpacked[7],
            name_table_offset=unpacked[8],
            name_table_size=unpacked[9]
        )


def read_superblock(file_path: str) -> Superblock:
    """
    Apre un file binario (es. DB_0) e ne legge il Superblock.
    """
    with open(file_path, "rb") as f:
        # Leggiamo i primi 128 byte che contengono l'header
        header_data = f.read(128)
        
    return Superblock.from_bytes(header_data)
