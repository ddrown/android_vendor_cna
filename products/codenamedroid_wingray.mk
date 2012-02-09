$(call inherit-product, device/moto/wingray/full_wingray.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cnd/config/common_full_tablet.mk)

# Release name
PRODUCT_RELEASE_NAME := XOOM(WiFi)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tervigon BUILD_ID=IML77 BUILD_DISPLAY_ID=IML77 BUILD_FINGERPRINT="motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys"

PRODUCT_NAME := codenamedroid_wingray
PRODUCT_DEVICE := wingray
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola