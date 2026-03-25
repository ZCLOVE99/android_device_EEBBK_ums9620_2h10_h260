PRODUCT_SHIPPING_API_LEVEL := 33
DEVICE_PATH := device/EEBBK/ums9620_2h10_h260

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    init_boot \
    uboot \
    system \
    product \
    vendor \
    odm \
    vbmeta \
    vbmeta_rs \
    vbmeta_odm \
    vbmeta_product \
    vbmeta_system \
    vbmeta_system_ext \
    vbmeta_vendor \
    vendor_boot \
    vendor_dlkm

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl

PRODUCT_PACKAGES += \
    bootctrl

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    checkpoint_gc

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)