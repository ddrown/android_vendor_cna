$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GalaxyS

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/IMM76D/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 IMM76D XXJVT release-keys"

PRODUCT_NAME := cna_stock_galaxysmtd
PRODUCT_DEVICE := galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000
PRODUCT_MANUFACTURER := samsung
