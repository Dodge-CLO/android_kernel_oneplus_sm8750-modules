# UBWCP has build targets only for pineapple.
ifeq ($(TARGET_BOARD_PLATFORM),pineapple)
ifneq ($(TARGET_KERNEL_DLKM_DISABLE), true)
PRODUCT_PACKAGES += ubwcp.ko
endif

endif
