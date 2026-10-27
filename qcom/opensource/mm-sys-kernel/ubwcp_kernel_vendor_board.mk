# UBWCP has build targets only for pineapple.
ifeq ($(TARGET_BOARD_PLATFORM),pineapple)
ifneq ($(TARGET_KERNEL_DLKM_DISABLE), true)
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/ubwcp.ko
endif

endif
