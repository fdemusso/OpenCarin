import sys
from decode_modugno import decode_0e
edges, s2_recs = decode_0e(2252227)
for i, r in enumerate(s2_recs[:10]):
    print(f"Rec {i}: {r}")
