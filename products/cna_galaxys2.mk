$(call inherit-product, device/samsung/galaxys2/full_galaxys2.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := SGS2

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPB:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPB release-keys"

PRODUCT_NAME := cna_galaxys2
PRODUCT_DEVICE := galaxys2
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung