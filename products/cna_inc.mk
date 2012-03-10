$(call inherit-product, device/htc/inc/full_inc.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := INC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ADR6300 BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.3.4/GRJ22/185897.2:user/release-keys

PRODUCT_NAME := cna_inc
PRODUCT_DEVICE := inc
PRODUCT_BRAND := verizon_wwe
PRODUCT_MODEL := Droid Incredible
PRODUCT_MANUFACTURER := HTC