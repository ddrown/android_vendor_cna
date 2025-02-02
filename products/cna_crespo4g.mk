$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := NS4G

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_ID=IMM26 BUILD_FINGERPRINT=google/sojus/crespo4g:4.0.4/IMM26/255454:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.0.4 IMM26 255454 release-keys" BUILD_NUMBER=255454

PRODUCT_NAME := cna_crespo4g
PRODUCT_DEVICE := crespo4g
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung