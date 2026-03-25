# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/EEBBK/ums9620_2h10_h260/device.mk)

# Device identifier
PRODUCT_DEVICE := ums9620_2h10_h260
PRODUCT_NAME := twrp_ums9620_2h10_h260
PRODUCT_BRAND := EEBBK
PRODUCT_MODEL := S8
PRODUCT_MANUFACTURER := EEBBK

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true

PRODUCT_GMS_CLIENTID_BASE := android-EEBBK

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums9620_2h10_h260-user 13 TP1A.220624.014 V1.2.0_240903 release-keys"

BUILD_FINGERPRINT := EEBBK/ums9620_2h10_h260/ums9620_2h10_h260:13/TP1A.220624.014/V1.2.0_240903:user/release-keys