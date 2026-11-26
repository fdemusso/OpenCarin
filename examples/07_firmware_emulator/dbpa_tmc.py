"""Check the v32 RoadRunner TMC row matcher with a synthetic two-link parcel."""

import argparse
import hashlib
import struct

from fwemu import FwEmu

DBPA_SHA256 = "5eb23395ecd7153ca47a93c727775dd1979e1bd40a5b416e84b878ed6fc64454"
MATCH = 0x2A930
FETCH = 0x2B4BC
RELEASE = 0x2B35C
OK, RING_EXHAUSTED = 0x1F3, 0x1B2

BLOCK_ID = 0x10001
START_LINK, TARGET_LINK, END_LINK = 0x80, 0xA0, 0xC0
SHARED_NODE = 0xE0
ROW_OFFSET = 0x100
LOCATION_CODE, COUNTRY_CODE, TABLE_NUMBER = 0x1234, 0xE, 17


def synthetic_tile(row_type, flags):
    """Make a two-link ring around one node, with an S12 row on the second link."""
    tile = bytearray(512)
    struct.pack_into(">IHBB", tile, 0, BLOCK_ID, 0, 0, 0)
    struct.pack_into(">HH", tile, 0x18, START_LINK, 2)
    struct.pack_into(">5H", tile, START_LINK, SHARED_NODE, 0xE8, 0, TARGET_LINK, 0)
    struct.pack_into(">5H", tile, TARGET_LINK, SHARED_NODE, 0xF0, 0, START_LINK, 0)
    # S12 bounds are stored on each S4 record and its successor (the sentinel here).
    struct.pack_into(">H", tile, START_LINK + 0x14, ROW_OFFSET)
    struct.pack_into(">H", tile, TARGET_LINK + 0x14, ROW_OFFSET)
    struct.pack_into(">H", tile, END_LINK + 0x14, ROW_OFFSET + 6)
    struct.pack_into(">HHH", tile, ROW_OFFSET, row_type, LOCATION_CODE, flags)
    return bytes(tile)


def check(firmware):
    emu = FwEmu(firmware, "dbpa")
    digest = hashlib.sha256(emu.image).hexdigest()
    if digest != DBPA_SHA256:
        raise ValueError(f"unexpected dbpa module SHA-256: {digest}")

    layout = bytearray(0x300)
    struct.pack_into(">HH", layout, 0x2E, 32, 26)  # S4 strides in the two layouts
    struct.pack_into(">H", layout, 0x48, 6)       # S12 row stride
    emu.gp_word(-0x72C4, emu.place(bytes(layout)))
    tile, request, result, direction, extend = (emu.alloc(n) for n in (512, 16, 16, 1, 1))
    handle = emu.place(struct.pack(">IHHHH", BLOCK_ID, 1, 0, START_LINK, 0))

    def fetch(machine):
        block_id = machine.u32(machine.reg("a0"))
        if block_id != BLOCK_ID:
            raise RuntimeError(f"unexpected tile lookup: {block_id:#x}")
        machine.put32(machine.reg("a2"), tile)
        return OK

    emu.stub(FETCH, fetch, "tile fetch")
    emu.stub(RELEASE, lambda _machine: OK, "tile release")

    # Values are the output direction for requests 1 and 2, for bit 10 clear and set.
    direction_table = {6: ((1, None), (None, 1)),
                       7: ((2, None), (None, 2)),
                       8: ((1, 2), (2, 1))}
    cases = 0
    for row_type, by_bit10 in direction_table.items():
        for bit10, by_request in enumerate(by_bit10):
            for bit11, expected_extend in enumerate((1, 0)):
                for upper_bits in (0, 0xF000):
                    flags = TABLE_NUMBER << 4 | COUNTRY_CODE
                    flags |= bit10 << 10 | bit11 << 11 | upper_bits
                    emu.write(tile, synthetic_tile(row_type, flags))
                    for request_direction, expected_direction in enumerate(by_request, 1):
                        req = struct.pack(">BxHHHH", COUNTRY_CODE, TABLE_NUMBER,
                                          LOCATION_CODE, request_direction, 5)
                        emu.write(request, req)
                        emu.write(direction, b"\xff")
                        emu.write(extend, b"\xff")
                        status = emu.call(MATCH, request, handle, SHARED_NODE, request_direction,
                                          stack=(result, direction, extend), max_insn=10_000)
                        observed = (status, emu.read(direction, 1)[0], emu.read(extend, 1)[0])
                        expected = ((RING_EXHAUSTED, 255, 255) if expected_direction is None
                                    else (OK, expected_direction, expected_extend))
                        if observed != expected:
                            raise RuntimeError(
                                f"type {row_type}, flags {flags:#06x}, request {request_direction}: "
                                f"received {observed}, expected {expected}"
                            )
                        if status == OK and emu.u16(result + 8) != TARGET_LINK:
                            raise RuntimeError("matched a link other than the synthetic target")
                        cases += 1
    return cases


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("firmware", help="local v32 bsw2 container or extracted dbpa module")
    args = parser.parse_args()
    print(f"Passed {check(args.firmware)} synthetic dbpa S12 cases.")
