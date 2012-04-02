$(call inherit-product, device/samsung/vibrantmtd/full_vibrantmtd.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := Vibrant

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T959 TARGET_DEVICE=SGH-T959 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/IMM76D/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 IMM76D 121341 release-keys"

PRODUCT_NAME := cna_stock_vibrantmtd
PRODUCT_DEVICE := vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-T959
PRODUCT_MANUFACTURER := samsung