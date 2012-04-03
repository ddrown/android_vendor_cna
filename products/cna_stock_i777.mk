$(call inherit-product, device/samsung/i777/full_i777.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := I777

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I777 BUILD_FINGERPRINT=samsung/SGH-I777/SGH-I777:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="SGH-I777-user 4.0.3 IML74K XXLPQ release-keys"

PRODUCT_NAME := cna_stock_i777
PRODUCT_DEVICE := i777
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SGH-I777
PRODUCT_MANUFACTURER := Samsung


