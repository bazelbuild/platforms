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
    name = "gnu",
    constraint_setting = ":abi",
)

constraint_value(
    name = "musl",
    constraint_setting = ":abi",
)

constraint_value(
    name = "msvc",
    constraint_setting = ":abi",
)
