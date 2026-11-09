load("//build/kernel/kleaf:kernel.bzl", "ddk_headers")
load("//build/kernel/oplus:oplus_modules_define.bzl", "define_oplus_ddk_module")
load("//build/kernel/oplus:oplus_modules_dist.bzl", "ddk_copy_to_dist_dir")

def define_oplus_local_modules():

    define_oplus_ddk_module(
        name = "horae_shell_temp",
        srcs = native.glob([
            "**/*.h",
            "horae_shell_temp.c",
        ]),
        includes = ["."],
        copts = [],
    )

    define_oplus_ddk_module(
        name = "thermal_pa_adc",
        srcs = native.glob([
            "**/*.h",
            "thermal_pa_adc.c",
        ]),
        includes = ["."],
        copts = [],
    )

    # oplus_ipa_thermal: disabled for 6.12 (see DODGE-6.12-MODULES-HANDOFF.md)

    ddk_copy_to_dist_dir(
        name = "oplus_horae",
        module_list = [
            "horae_shell_temp",
            "thermal_pa_adc",
        ],
    )
