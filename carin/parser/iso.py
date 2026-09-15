"""Minimal ISO 9660 reader + CARINdb virtual volume mapper.

Reads the navigation image directly (no mount required) and exposes the
CARINdb block address space that spans DB_0 + DB_1.

Reference: docs/CARINDB_BLUEPRINT.md sections 1 and 2.
"""

from __future__ import annotations

import struct
import zlib
from dataclasses import dataclass
from typing import Dict, Iterator, Optional

ISO_SECTOR = 2048
CARIN_SECTOR = 512
CARIN_WINDOW = 0x400000  # CARINdb sectors covered by one DB_n file (2 GiB)

BLOCK_HDR = ">IHBB"
BLOCK_HDR_SIZE = 8
SECTION_DESC = ">HH"


@dataclass(frozen=True)
class IsoFile:
    path: str
    lba: int
    size: int

    @property
    def offset(self) -> int:
        return self.lba * ISO_SECTOR


class IsoImage:
    """Just enough ISO 9660 to locate file extents by path."""

    def __init__(self, path: str):
        self._f = open(path, "rb")
        self.files: Dict[str, IsoFile] = {}
        self._read_pvd()

    def _read_pvd(self) -> None:
        self._f.seek(16 * ISO_SECTOR)
        pvd = self._f.read(ISO_SECTOR)
        if pvd[0] != 1 or pvd[1:6] != b"CD001":
            raise ValueError("not an ISO 9660 primary volume descriptor")
        self.volume_id = pvd[40:72].decode("latin-1").strip()
        self.publisher = pvd[318:446].decode("latin-1").strip()
        root = pvd[156:190]
        root_lba = struct.unpack_from("<I", root, 2)[0]
        root_size = struct.unpack_from("<I", root, 10)[0]
        self._walk(root_lba, root_size, "")

    def _walk(self, lba: int, size: int, prefix: str) -> None:
        self._f.seek(lba * ISO_SECTOR)
        data = self._f.read(size)
        pos = 0
        while pos < len(data):
            rec_len = data[pos]
            if rec_len == 0:
                # padding to the next logical sector
                pos = (pos // ISO_SECTOR + 1) * ISO_SECTOR
                if pos >= len(data):
                    break
                continue
            rec = data[pos:pos + rec_len]
            ext_lba = struct.unpack_from("<I", rec, 2)[0]
            ext_size = struct.unpack_from("<I", rec, 10)[0]
            flags = rec[25]
            name_len = rec[32]
            name = rec[33:33 + name_len].decode("latin-1")
            pos += rec_len
            if name_len == 1 and name in ("\x00", "\x01"):
                continue  # '.' and '..'
            name = name.split(";")[0]
            full = f"{prefix}/{name}"
            if flags & 0x02:
                self._walk(ext_lba, ext_size, full)
            else:
                self.files[full] = IsoFile(full, ext_lba, ext_size)

    def read(self, iso_file: IsoFile, offset: int, length: int) -> bytes:
        if offset >= iso_file.size:
            return b""
        length = min(length, iso_file.size - offset)
        self._f.seek(iso_file.offset + offset)
        return self._f.read(length)

    def close(self) -> None:
        self._f.close()


@dataclass
class CarinBlock:
    sector: int          # absolute virtual CARINdb sector
    length: int          # on-disk length, in 512-byte sectors
    type: int
    comp: int            # 0 = raw, 1 = unknown codec, 2 = zlib
    usize: int           # decompressed size, in 512-byte sectors
    raw: bytes           # on-disk bytes, header included
    data: Optional[bytes]  # decompressed bytes, header included (None if comp == 1)

    @property
    def payload(self) -> bytes:
        if self.data is None:
            raise ValueError(f"block {self.sector} uses COMPRESSION_FLAG=1 (unknown codec)")
        return self.data

    def sections(self, n: int):
        return [
            struct.unpack_from(SECTION_DESC, self.payload, BLOCK_HDR_SIZE + 4 * i)
            for i in range(n)
        ]


class CarinVolume:
    """CARINdb block address space spanning DB_0 .. DB_n."""

    def __init__(self, image: IsoImage, db_paths=("/DB/DB_0", "/DB/DB_1")):
        self.image = image
        self.parts = [image.files[p] for p in db_paths]
        self.sectors = [f.size // CARIN_SECTOR for f in self.parts]

    def read_sectors(self, sector: int, count: int) -> bytes:
        idx, local = divmod(sector, CARIN_WINDOW)
        if idx >= len(self.parts):
            raise ValueError(f"sector {sector} outside volume")
        return self.image.read(self.parts[idx], local * CARIN_SECTOR, count * CARIN_SECTOR)

    def block(self, sector: int) -> CarinBlock:
        head = self.read_sectors(sector, 1)
        bid, btype, cf, us = struct.unpack_from(BLOCK_HDR, head)
        if (bid >> 8) != sector:
            raise ValueError(f"sector {sector}: BLOCK_ID says {bid >> 8}")
        length = bid & 0xFF
        raw = head if length == 1 else self.read_sectors(sector, length)
        if cf == 0:
            data = raw
        elif cf == 2:
            data = raw[:BLOCK_HDR_SIZE] + zlib.decompress(raw[BLOCK_HDR_SIZE:])
        else:
            data = None
        return CarinBlock(sector, length, btype, cf, us, raw, data)

    def walk(self, part: Optional[int] = None) -> Iterator[CarinBlock]:
        """Follow the block chain. Yields header-only blocks (raw not sliced)."""
        parts = range(len(self.parts)) if part is None else [part]
        for idx in parts:
            base = idx * CARIN_WINDOW
            nsec = self.sectors[idx]
            sector = 0
            buf, buf_base = b"", -1
            CHUNK = 1 << 22
            while sector < nsec:
                off = sector * CARIN_SECTOR
                if buf_base < 0 or off < buf_base or off + BLOCK_HDR_SIZE > buf_base + len(buf):
                    buf = self.image.read(self.parts[idx], off, CHUNK)
                    buf_base = off
                    if len(buf) < BLOCK_HDR_SIZE:
                        break
                bid, btype, cf, us = struct.unpack_from(BLOCK_HDR, buf, off - buf_base)
                length = bid & 0xFF
                if (bid >> 8) != base + sector or length == 0:
                    sector += 1
                    continue
                yield CarinBlock(base + sector, length, btype, cf, us, b"", None)
                sector += length


# --------------------------------------------------------------------------
# Geographic frame (docs/CARINDB_BLUEPRINT.md section 7)
# A full 360 deg turn is 2_000_000_000 CARIN units; the origin sits on the
# equator at 30 deg West.  Calibrated against 38 city labels, rms 2.0 km.
# --------------------------------------------------------------------------

CARIN_UNITS_PER_TURN = 2_000_000_000
K = CARIN_UNITS_PER_TURN / 360.0          # 5_555_555.5555... units per degree
LON_ORIGIN = -30.0
LAT_ORIGIN = 0.0

# plausible coverage window, used to recognise a bbox inside service data
_X_RANGE = (-60_000_000, 1_000_000_000)
_Y_RANGE = (0, 450_000_000)
QUADTREE_UNIT = 98_304          # smallest observed tile side, in CARIN units


def to_wgs84(x: int, y: int):
    return (x / K + LON_ORIGIN, y / K + LAT_ORIGIN)


def to_carin(lon: float, lat: float):
    return (round((lon - LON_ORIGIN) * K), round((lat - LAT_ORIGIN) * K))


def find_bbox(payload: bytes):
    """Locate the 4 x int32 bounding box that follows the section descriptor.

    The descriptor entry count varies per block, so the bbox is found by
    scanning 4-aligned positions up to the first section offset.  A genuine box
    sits on the CARIN quadtree: both sides are multiples of 98304 units and the
    aspect ratio is 1:1, 1:2 or 2:1.
    Returns (offset, (x0, y0, x1, y1)) or None.
    """
    if len(payload) < 0x30:
        return None
    first = struct.unpack_from(">H", payload, BLOCK_HDR_SIZE)[0]
    limit = min(first if first > 16 else len(payload), len(payload) - 16, 512)
    for off in range(12, limit, 4):
        x0, y0, x1, y1 = struct.unpack_from(">4i", payload, off)
        if not (x0 < x1 and y0 < y1):
            continue
        if not (_X_RANGE[0] <= x0 and x1 <= _X_RANGE[1]):
            continue
        if not (_Y_RANGE[0] <= y0 and y1 <= _Y_RANGE[1]):
            continue
        w, h = x1 - x0, y1 - y0
        if w % QUADTREE_UNIT or h % QUADTREE_UNIT:
            continue
        if w not in (h, 2 * h) and h != 2 * w:
            continue
        if w > 200_000_000:
            continue
        return off, (x0, y0, x1, y1)
    return None
