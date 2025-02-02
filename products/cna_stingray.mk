$(call inherit-product, device/moto/stingray/full_stingray.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_tablet_wifionly.mk)

# Release name
PRODUCT_RELEASE_NAME := XOOM(4G)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=trygon BUILD_FINGERPRINT="verizon/trygon/stingray:3.2.4/HLK75F/221360:user/release-keys" PRVIATE_BUILD_DESC="trygon-user 3.2.4 HLK75F 221360 release-keys"

PRODUCT_NAME := cna_stingray
PRODUCT_DEVICE := stingray
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

ifdef WITH_GOOGLE_APPS
$(call inherit-product, vendor/google/apps/noneon.mk)
endif