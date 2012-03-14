$(call inherit-product, device/asus/tf101/full_tf101.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_tablet.mk)
$(call inherit-product, vendor/google/apps/gapps.mk)
$(call inherit-product, vendor/google/apps/faceUnlock.mk)
$(call inherit-product, vendor/google/apps/noneon.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi-tablet/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := TF-EeePad

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=US_epad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.0.3/IML74K/US_epad-9.2.1.11-20120221:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.0.3 IML74K US_epad-9.2.1.11-20120221 release-keys"

PRODUCT_NAME := cna_tf101g
PRODUCT_DEVICE := tf101
PRODUCT_BRAND := asus
PRODUCT_MODEL := Transformer
PRODUCT_MANUFACTURER := asus

TARGET_3G = true
