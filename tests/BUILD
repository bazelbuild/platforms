load("//:version.bzl", "version")

package(default_visibility = ["//visibility:private"])

# This is a quick hack to make sure that version.bzl agrees with MODULE.bazel
# It only works from Linux, but that is sufficient, becuase we do a presubmit
# run linux, so we will still catch a mismatch.
genrule(
    name = "versions_match",
    cmd = """grep 'version = "%s",' $(location //:MODULE.bazel) >$(location :found_it)""" % version,
    outs = ["found_it"],
    tools = [
        "//:MODULE.bazel",
    ] ,
    target_compatible_with = [
        "//os:linux",
    ],
)
