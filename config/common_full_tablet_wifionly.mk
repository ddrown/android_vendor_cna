# Inherit common stuff
$(call inherit-product, vendor/cna/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/cna/overlay/tablet

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

