$(call inherit-product, device/samsung/captivatemtd/full_captivatemtd.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := Captivate

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I897 TARGET_DEVICE=SGH-I897 BUILD_FINGERPRINT=samsung/SGH-I897/SGH-I897:2.3.5/IMM76D/UCKK4:user/release-keys PRIVATE_BUILD_DESC="SGH-I897-user 2.3.5 IMM76D UCKK4 release-keys"

PRODUCT_NAME := cna_stock_captivatemtd
PRODUCT_DEVICE := captivatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I897
PRODUCT_MANUFACTURER := samsung