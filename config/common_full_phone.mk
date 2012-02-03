# Inherit common stuff
$(call inherit-product, vendor/cnd/config/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240

PRODUCT_PACKAGES += \
    CNDLauncher \
    CNDSettings \
    Mms \
    SpeakerProximity
