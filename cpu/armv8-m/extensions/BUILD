# ARMv8-m Extension Definitions

load("//:utils.bzl", "boolean_extension_constraint")

package(
    default_visibility = ["//visibility:public"],
    default_applicable_licenses = ["//:license"],
)

# Armv8-m Extenstions defined in:
# https://developer.arm.com/documentation/107656/0100/Introduction-to-Armv8-M-architecture/Baseline-and-Mainline

# Main extension.
boolean_extension_constraint("m")

# Floating point extension.
boolean_extension_constraint("fp")

# M-Profile Vector Extension.
boolean_extension_constraint("mve")

# Memory Protection Unit.
boolean_extension_constraint("mpu")

# Digital Signal Processing.
boolean_extension_constraint("dsp")

# Debug.
boolean_extension_constraint("db")

# Security aka Trustzone.
boolean_extension_constraint("s")

# Reliability, Availability, and Serviceability.
boolean_extension_constraint("ras")
