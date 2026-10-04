"""The RR `gd_man` module: the mapping from a `gd_bjl` junction object to the type of the junction descriptor sent to
`vp_man` (`sub_0193c0`, docs/fw/04 §17.6). The junction object and its items live in `gd_bjl`'s emulated memory; this
copies that memory to the same addresses of a `gd_man` emulator and calls the function there.
"""

from __future__ import annotations

from fwemu import ROOT, USER, FwEmu

FIRMWARE = ROOT / "build" / "fw" / "V_2_RR_0101_BMWC01S_app_sw_bsw2"
JD_TYPE = 0x193C0           # sub_0193c0(J') -> descriptor type
GP_REGION = -0x7B94         # gp-relative pointer to a u16 (a country / region code, compared with 0xe0 and 0x26)


class GdManEmu(FwEmu):
    def __init__(self, debug: bool = False):
        super().__init__(FIRMWARE, "gd_man", debug=debug)
        self.region = self.place(bytes(16))
        self.gp_word(GP_REGION, self.region)
        self.bind_unbound()

    def descriptor_type(self, gd_bjl_emu, junction: int, size: int = 0x80000) -> int:
        """Copy the caller area of a `gd_bjl` emulator, call `sub_0193c0(junction)` and return the type byte."""
        self.write(USER, gd_bjl_emu.read(USER, size))
        return self.call(JD_TYPE, junction) & 0xFF
