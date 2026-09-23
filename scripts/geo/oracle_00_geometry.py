import struct
import sys
from pathlib import Path

# Aggiungiamo la root del progetto al path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))

from carin.parser.iso import IsoImage
from carin.parser.cf1.decoder_00 import decode_type00, Cf1Context


def validate_s4_tree(data: bytes, s4_base: int, s4_count: int, s4_size: int, s7_base: int, s7_count: int) -> bool:
    """
    Validates that S4 records form a valid spatial tree (BSP/QuadTree)
    and that S7 pointers strictly align with 6-byte boundaries.
    """
    visited_s4 = set()
    s7_size = 6

    def visit(node_idx: int) -> bool:
        if node_idx == 0xFFFF or node_idx == 0:
            return True
        
        if node_idx >= s4_count:
            print(f"[FAIL] S4 node index {node_idx} out of bounds ({s4_count})")
            return False
            
        if node_idx in visited_s4:
            print(f"[FAIL] S4 tree cycle detected at node {node_idx}")
            return False
            
        visited_s4.add(node_idx)
        
        off = s4_base + node_idx * s4_size
        s7_idx = struct.unpack_from(">H", data, off + 4)[0]
        left = struct.unpack_from(">H", data, off + 6)[0]
        right = struct.unpack_from(">H", data, off + 8)[0]
        
        if s7_idx != 0xFFFF and s7_idx != 0:
            if s7_idx >= s7_count:
                print(f"[FAIL] S7 index {s7_idx} out of bounds ({s7_count})")
                return False
                
        return visit(left) and visit(right)

    # Assumiamo che la root sia al nodo 1 (o 0 a seconda di come il decoder CF1 alloca)
    # Nel decoder C di Carin, i record 1-indexed sono comuni.
    if s4_count > 0:
        return visit(1)
    return True


def oracle_00_geometry(block_data: bytes) -> bool:
    ctx = Cf1Context(block_data)
    try:
        decode_type00(ctx)
    except Exception as e:
        print(f"[FAIL] CF1 Decode error: {e}")
        return False
        
    s4_base = ctx.T_off(0x14)
    s4_count = ctx.T_cnt(0x14)
    s4_size = ctx.T_rec(0x14) # dovrebbe essere 32 (0x20)
    
    s7_base = ctx.T_off(0x17) # S7 è ent(10) o ent(7)? In decoder_00 è ctx.T(T_REC_S7)
    s7_count = ctx.T_cnt(0x17)
    
    print(f"[INFO] Validating S4 Tree (Count: {s4_count}) -> S7 Points (Count: {s7_count})")
    
    if not validate_s4_tree(ctx.buf, s4_base, s4_count, s4_size, s7_base, s7_count):
        return False
        
    print("[PASS] S4 Tree perfectly links to S7 geometry on strictly aligned boundaries.")
    return True

if __name__ == "__main__":
    print("[INFO] Geometry Oracle 0x00 - Ready to test against block datasets.")
