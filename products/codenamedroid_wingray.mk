$(call inherit-product, device/moto/wingray/full_wingray.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cnd/config/common_full_tablet_wifionly.mk)

# Release name
PRODUCT_RELEASE_NAME := XOOM(WiFi)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tervigon BUILD_ID=IML77 BUILD_DISPLAY_ID=IML77 BUILD_FINGERPRINT="motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys"

PRODUCT_NAME := codenamedroid_wingray
PRODUCT_DEVICE := wingray
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

# Copy stingray specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cnd/proprietary/stingray/app/StingrayQuickOffice.apk:system/app/StingrayQuickOffice.apk \
    vendor/cnd/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/cnd/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/cnd/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/cnd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cnd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd