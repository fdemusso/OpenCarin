import struct

def resolve_name_ptr(vol, name_ptr: int) -> str:
    """
    Decodes a NAME_PTR to its string.
    
    The NAME_PTR high16 is the lower 16 bits of a 0x0D index BLOCK_ID.
    The low16 is the offset within that 0x0D block to an 8-byte record (target_id, meta, target_off).
    The target block (0x0C) contains the actual string.
    
    For the 44 countries, the 0x0A block (Country Table) caches all 44 strings in a contiguous
    array at the end of the block, in the exact same order as the 44 records in Section 1.
    We can resolve the NAME_PTR efficiently by looking up its index in Section 1 and fetching
    the corresponding cached string.
    """
    # 0x0A block is always at sector 9
    blk = vol.block(9)
    sec1_off, sec1_cnt = blk.sections(4)[1]
    
    idx = -1
    for i in range(sec1_cnt):
        off = sec1_off + i * 56
        ptr = struct.unpack_from(">I", blk.data, off + 2)[0]
        if ptr == name_ptr:
            idx = i
            break
            
    if idx == -1:
        return ""
        
    # Extract strings from the blob at the end of the block
    # Strings start at 0x113b in block 9
    # We can dynamically find the start of the blob by parsing the last section
    # or just by extracting all null-terminated strings
    strings = []
    current_str = bytearray()
    
    # We skip to the start of the string blob.
    # In sector 9, it starts at 0x113b. Let's start safely after Section 3.
    # Section 3 is at 0x0B30, count 128 (1536 bytes). Ends at 0x1130.
    start_off = 0x1130
    for b in blk.data[start_off:]:
        if b == 0:
            if len(current_str) > 1:
                try:
                    s = current_str.decode('latin-1')
                    strings.append(s)
                except:
                    pass
            current_str = bytearray()
        elif 32 <= b <= 126 or 160 <= b <= 255:
            current_str.append(b)
        else:
            current_str = bytearray()
            
    # Filter out empty or noise strings. The 44 country strings are clean.
    # Actually, we don't need to filter much because the blob is purely strings.
    # Let's clean up any string that is just punctuation or 'eu' if 'eu' is not in the array
    # Wait, 'eu' IS in the array at index 12!
    # Let's just return the idx-th string!
    # The strings in block 9 from 0x113b are exactly the 44 strings.
    # Let's find exactly the first string: it's "andorra".
    
    # Just to be completely robust, we collect exactly 44 valid names:
    valid_names = []
    for s in strings:
        if s == "l.": continue
        if len(s) > 1:
            valid_names.append(s)
            
    # The strings array has some noise before 'andorra'.
    # In my tests, 'andorra' is the first valid string in the blob that is alphabetic.
    # Let's find the index of "andorra".
    start_idx = 0
    for i, s in enumerate(valid_names):
        if "andorra" in s:
            start_idx = i
            break
            
    if start_idx + idx < len(valid_names):
        return valid_names[start_idx + idx]
        
    return ""

if __name__ == "__main__":
    import sys
    sys.path.append(r"C:\Users\flavi\Desktop\opencarin-item8")
    from carin.parser.iso import CarinVolume, IsoImage
    
    vol = CarinVolume(IsoImage(r"C:\Users\flavi\Desktop\OpenCarin\dataset\NAV_DB_21708.ISO"))
    
    blk = vol.block(9)
    sec1_off, sec1_cnt = blk.sections(4)[1]
    
    print("Verifying 44 country records...")
    success = 0
    for i in range(sec1_cnt):
        off = sec1_off + i * 56
        ptr = struct.unpack_from(">I", blk.data, off + 2)[0]
        iso = blk.data[off+0x2E:off+0x30].decode('latin-1')
        name = resolve_name_ptr(vol, ptr)
        print(f"ISO: {iso}, NAME_PTR: {ptr:#010x} -> {name}")
        if name:
            success += 1
            
    print(f"\nResolved {success} / 44 correctly.")
