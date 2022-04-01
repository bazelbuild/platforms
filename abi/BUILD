# Standard constraint_setting and constraint_values to be used in platforms.
licenses(["notice"])

package(
    default_visibility = ["//visibility:public"],
)

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
)

# To add a new constraint_value see https://github.com/bazelbuild/platforms.
constraint_setting(name = "abi")

constraint_value(
    name = "atmega328",
    constraint_setting = ":abi",
)

constraint_value(
    name = "eabi",
    constraint_setting = ":abi",
)

constraint_value(
    name = "eabihf",
    constraint_setting = ":abi",
)

constraint_value(
    name = "elf",
    constraint_setting = ":abi",
)

constraint_value(
    name = "gnu",
    constraint_setting = ":abi",
)

constraint_value(
    name = "gnu_ilp32",
    constraint_setting = ":abi",
)

constraint_value(
    name = "gnueabi",
    constraint_setting = ":abi",
)

constraint_value(
    name = "gnuabi64",
    constraint_setting = ":abi",
)

constraint_value(
    name = "gnueabihf",
    constraint_setting = ":abi",
)

constraint_value(
    name = "gnuspe",
    constraint_setting = ":abi",
)

constraint_value(
    name = "gnux32",
    constraint_setting = ":abi",
)

constraint_value(
    name = "linuxkernel",
    constraint_setting = ":abi",
)

constraint_value(
    name = "macabi",
    constraint_setting = ":abi",
)

constraint_value(
    name = "msvc",
    constraint_setting = ":abi",
)

constraint_value(
    name = "musl",
    constraint_setting = ":abi",
)

constraint_value(
    name = "muslabi64",
    constraint_setting = ":abi",
)

constraint_value(
    name = "musleabi",
    constraint_setting = ":abi",
)

constraint_value(
    name = "musleabihf",
    constraint_setting = ":abi",
)

constraint_value(
    name = "sgx",
    constraint_setting = ":abi",
)

constraint_value(
    name = "sim",
    constraint_setting = ":abi",
)

constraint_value(
    name = "softfloat",
    constraint_setting = ":abi",
)

constraint_value(
    name = "uclibc",
    constraint_setting = ":abi",
)

constraint_value(
    name = "uclibceabi",
    constraint_setting = ":abi",
)

constraint_value(
    name = "uclibceabihf",
    constraint_setting = ":abi",
)
