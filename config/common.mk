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
    vendor/cnd/prebuilt/common/etc/sysctl.conf:system/bin/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/cnd/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/cnd/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/cnd/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/cnd/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/cnd/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/cnd/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/cnd/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/cnd/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/cnd/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/cnd/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/cnd/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/cnd/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/cnd/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf    

PRODUCT_COPY_FILES += \
    vendor/cnd/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/cnd/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/cnd/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/cnd/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/cnd/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/cnd/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/cnd/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Required packages
PRODUCT_PACKAGES += \
    CNDSettings \
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
PRODUCT_VERSION_MINOR = 3
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
