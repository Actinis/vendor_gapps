$(call inherit-product, build/target/product/aosp_x86_64.mk)

include vendor/lineage/build/target/product/lineage_generic_target.mk

TARGET_NO_KERNEL_OVERRIDE := true

PRODUCT_SDK_ADDON_NAME :=
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP :=

PRODUCT_NAME := lineage_gapps_x86_64

PRODUCT_SOONG_NAMESPACES += vendor/gapps/overlay
