$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cnd/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cnd/prebuilt/common/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GN(CDMA/LTE)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_ID=IML74K  BUILD_FINGERPRINT="google/yakju/toro:4.0.3/IML74K/223971:user/release-keys" PRVIATE_BUILD_DESC="yakju-user 4.0.3 IML74K 223971 release-keys"

PRODUCT_NAME := codenamedroid_toro
PRODUCT_DEVICE := toro
PRODUCT_BRAND := google
PRODUCT_MODEL := GalaxyNexus
PRODUCT_MANUFACTURER := samsung