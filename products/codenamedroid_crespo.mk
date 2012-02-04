$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cnd/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cnd/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cnd/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := NS

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=IML74K BUILD_FINGERPRINT=google/soju/crespo:4.0.3/IML74K/239410:user/release-keys PRIVATE_BUILD_DESC="soju-user 4.0.3 IML74K 239410 release-keys" BUILD_NUMBER=239410

PRODUCT_NAME := codenamedroid_crespo
PRODUCT_DEVICE := crespo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := Samsung

# Copy crespo specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cnd/proprietary/crespo/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/cnd/proprietary/crespo/app/TagGoogle.apk:system/app/TagGoogle.apk \
    vendor/cnd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/cnd/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/cnd/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/cnd/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/cnd/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/cnd/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/cnd/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/cnd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cnd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd