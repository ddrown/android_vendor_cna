$(call inherit-product, device/moto/wingray/full_wingray.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_tablet_wifionly.mk)

# Release name
PRODUCT_RELEASE_NAME := XOOM(WiFi)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tervigon BUILD_FINGERPRINT="motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys"

PRODUCT_NAME := cna_stock_wingray
PRODUCT_DEVICE := wingray
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

ifdef WITH_GOOGLE_APPS
$(call inherit-product, vendor/google/noneon.mk)
endif