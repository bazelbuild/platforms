"""Utility macros."""

def boolean_extension_constraint(name):
    """
    Macro for defining constraints for an extension that is optionally present.

    Defines a `constraint_setting`, <name>_setting and two `constraint_values`,
    no_<name> and <name>.
    The setting defaults to `no_<name>` for maximum compatibility, since
    generally code compiled without extension support can run on a machine with
    the extension present.
    """

    setting_name = "%s_setting" % name
    native.constraint_setting(
        name = setting_name,
        default_constraint_value = "no_%s" % name,
    )

    native.constraint_value(
        name = "no_%s" % name,
        constraint_setting = setting_name,
    )

    native.constraint_value(
        name = name,
        constraint_setting = setting_name,
    )
