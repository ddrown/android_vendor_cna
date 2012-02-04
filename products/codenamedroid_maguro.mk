$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cnd/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cnd/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cnd/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GN-GSM

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT="google/yakju/maguro:4.0.2/ICL53F/235179:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.0.2 ICL53F 235179 release-keys"

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Codename Android for your Galaxy Nexus\nPlease visit us at \#codenameandroid on irc.freenode.net\nFollow @codenamedroid for the latest Codename Android updates\nGet the latest rom at codenameandroid.com\n------------------------------------------------\n"


PRODUCT_NAME := codenamedroid_maguro
PRODUCT_DEVICE := maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cnd/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/cnd/proprietary/tuna/app/TagGoogle.apk:system/app/TagGoogle.apk \
    vendor/cnd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/cnd/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/cnd/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/cnd/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/cnd/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/cnd/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/cnd/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/cnd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cnd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
