PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=codenamedroid

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bring in camera effects & videos
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)


PRODUCT_COPY_FILES += \
    vendor/cnd/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/cnd/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cnd/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/cnd/prebuilt/common/etc/force_backuptool:system/bin/force_backuptool \
    vendor/cnd/prebuilt/common/etc/init.local.rc:system/bin/init.local.rc \
    vendor/cnd/prebuilt/common/etc/sysctl.conf:system/bin/sysctl.conf \
    vendor/cnd/prebuilt/common/etc/init.d/_placeholder_:system/bin/init.d/_placeholder_

# Required packages
PRODUCT_PACKAGES += \
    LatinIME \
    Superuser \
    su

# Optional packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam
        
PRODUCT_PACKAGE_OVERLAYS += vendor/cnd/overlay/common

PRODUCT_PACKAGE_OVERLAYS += vendor/cnd/overlay/dictionaries

$(call inherit-product, vendor/cnd/products/common_gapps.mk)
$(call inherit-product, vendor/cnd/products/common_facelock.mk)
$(call inherit-product, vendor/cnd/products/common_drm.mk)

BRANCH = MOD
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 2
PRODUCT_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K

ifdef CND_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CodenameDroid-($(BRANCH))-$(PRODUCT_VERSION_MAJOR)-$(shell date +%m%d%Y)-NIGHTLY-$(PRODUCT_RELEASE_NAME)
else
    ifdef CND_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CodenameDroid-($(BRANCH))-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CodenameDroid-($(BRANCH))-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)-UNOFFICIAL
    endif
endif
