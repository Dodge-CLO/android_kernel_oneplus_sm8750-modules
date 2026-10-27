# Build the Oplus camera extension required by the Dodge module load list.
ifeq ($(TARGET_BOARD_PLATFORM),sun)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := camera_extension.ko
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
LOCAL_MODULE_DDK_BUILD := true
LOCAL_SRC_FILES := $(addprefix $(LOCAL_PATH)/,$(call all-named-files-under,*.c,.) $(call all-named-files-under,*.h,.)) $(LOCAL_PATH)/BUILD.bazel $(LOCAL_PATH)/camera_extension_modules.bzl
KBUILD_REQUIRED_KOS := camera.ko
include device/qcom/common/dlkm/Build_external_kernelmodule.mk
endif
