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
constraint_setting(name = "os")

constraint_value(
    name = "freebsd",
    constraint_setting = ":os",
)

constraint_value(
    name = "android",
    constraint_setting = ":os",
)

constraint_value(
    name = "linux",
    constraint_setting = ":os",
)

constraint_value(
    name = "windows",
    constraint_setting = ":os",
)

### Apple OS Values

constraint_value(
    name = "ios",
    constraint_setting = ":os",
)

constraint_value(
    name = "macos",
    constraint_setting = ":os",
)

# TODO(b/138656886): Migrate current usages of
# //os:osx to :macos instead.
alias(
    name = "osx",
    actual = ":macos",
)

constraint_value(
    name = "tvos",
    constraint_setting = ":os",
)

constraint_value(
    name = "watchos",
    constraint_setting = ":os",
)
