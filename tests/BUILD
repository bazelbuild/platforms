load("//:version.bzl", "version")
load("//host:constraints.bzl", "HOST_CONSTRAINTS")

package(default_visibility = ["//visibility:private"])

# This is a quick hack to make sure that version.bzl agrees with MODULE.bazel
# It only works from Linux, but that is sufficient, becuase we do a presubmit
# run linux, so we will still catch a mismatch.
genrule(
    name = "versions_match",
    outs = ["found_it"],
    cmd = ";\n".join([
        """echo version: %s""" % version,
        """grep 'version = "%s",' $(location //:MODULE.bazel) >$(location :found_it)""" % version,
    ]),
    target_compatible_with = [
        "//os:linux",
    ],
    tools = [
        "//:MODULE.bazel",
    ],
)

sh_test(
    name = "host_constraints_test",
    srcs = ["host_constraints_test.sh"],
    env = {"ACTUAL_HOST_CONSTRAINTS": repr(HOST_CONSTRAINTS)},
    env_inherit = ["EXPECTED_HOST_CONSTRAINTS"],
)
