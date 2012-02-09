$(call inherit-product, device/moto/stingray/full_stingray.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cnd/config/common_full_tablet.mk)

# Release name
PRODUCT_RELEASE_NAME := XOOM(4G)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=trygon BUILD_ID=HLK75F  BUILD_FINGERPRINT="verizon/trygon/stingray:3.2.4/HLK75F/221360:user/release-keys" PRVIATE_BUILD_DESC="trygon-user 3.2.4 HLK75F 221360 release-keys"

PRODUCT_NAME := codenamedroid_stingray
PRODUCT_DEVICE := stingray
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola