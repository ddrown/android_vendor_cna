$(call inherit-product, device/asus/tf201/full_tf201.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_tablet_wifionly.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi-tablet/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := tf201

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/WW_epad/EeePad:4.0.3/IML74K/WW_epad-9.4.2.11-20120117:user/release-keys PRIVATE_BUILD_DESC="WW_epad-user 4.0.3 IML74K WW_epad-9.4.2.11-20120117 release-keys"

PRODUCT_NAME := cna_stock_tf201
PRODUCT_DEVICE := tf201
PRODUCT_BRAND := asus
PRODUCT_MODEL := Transformer Prime
PRODUCT_MANUFACTURER := asus
