$(call inherit-product, device/samsung/epic4gtouch/full_epic4gtouch.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/cdma.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := E4GT

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.0.3/IML74K/FB27:user/release-keys  PRIVATE_BUILD_DESC="SPH-D710-user 4.0.3 IML74K FB27 release-keys"

PRODUCT_NAME := cna_stock_epic4gtouch
PRODUCT_DEVICE := epic4gtouch
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SPH-D710
PRODUCT_MANUFACTURER := Samsung
