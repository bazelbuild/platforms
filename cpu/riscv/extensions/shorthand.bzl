"""RISC-V shorthand extensions

These are official shorthands for commonly combined sets of extensions.
"""

ZKN = [
    "@platforms//cpu/riscv/extensions:Zbkb",
    "@platforms//cpu/riscv/extensions:Zbkc",
    "@platforms//cpu/riscv/extensions:Zbkx",
    "@platforms//cpu/riscv/extensions:Zkne",
    "@platforms//cpu/riscv/extensions:Zknd",
    "@platforms//cpu/riscv/extensions:Zknh",
]
ZKS = [
    "@platforms//cpu/riscv/extensions:Zbkb",
    "@platforms//cpu/riscv/extensions:Zbkc",
    "@platforms//cpu/riscv/extensions:Zbkx",
    "@platforms//cpu/riscv/extensions:Zksed",
    "@platforms//cpu/riscv/extensions:Zksh",
]
ZK = ZKN + ZKS + ["@platforms//cpu/riscv/extensions:Zkt"]
