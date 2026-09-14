import struct
import pytest
from carin.parser.header import Superblock

def test_superblock_parsing():
    # Creiamo un finto header di 128 byte in formato Big-Endian (>).
    # Layout fittizio:
    # 4s magic "CARI"
    # I version 1
    # 16s volume "TEST_VOL"
    # 8s date "20240101"
    # I node_offset 100
    # I node_size 50
    # I edge_offset 200
    # I edge_size 150
    # I name_offset 400
    # I name_size 100
    # 72x padding
    
    fmt = ">4s I 16s 8s I I I I I I 72x"
    
    mock_data = struct.pack(
        fmt,
        b"CARI",
        1,
        b"TEST_VOL",
        b"20240101",
        100,
        50,
        200,
        150,
        400,
        100
    )
    
    assert len(mock_data) == 128
    
    sb = Superblock.from_bytes(mock_data)
    
    assert sb.magic == b"CARI"
    assert sb.version == 1
    assert sb.volume_name == "TEST_VOL"
    assert sb.creation_date == "20240101"
    assert sb.node_table_offset == 100
    assert sb.edge_table_offset == 200
    assert sb.name_table_offset == 400
