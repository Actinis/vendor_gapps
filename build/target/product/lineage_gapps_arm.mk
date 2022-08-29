$(call inherit-product, build/target/product/aosp_arm.mk)

include vendor/lineage/build/target/product/lineage_generic_target.mk

TARGET_NO_KERNEL_OVERRIDE := true

PRODUCT_NAME := lineage_gapps_arm

PRODUCT_SOONG_NAMESPACES += vendor/gapps/overlay
