$(call inherit-product, device/asus/tf101/full_tf101.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_tablet.mk)

# Release name
PRODUCT_RELEASE_NAME := EEE-PAD

PRODUCT_NAME := cna_tf101
PRODUCT_DEVICE := tf101
PRODUCT_BRAND := asus
PRODUCT_MODEL := Transformer TF101
PRODUCT_MANUFACTURER := Asus