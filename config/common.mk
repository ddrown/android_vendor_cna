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

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cna/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cna/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/cna/prebuilt/common/etc/init.local.rc:system/bin/init.local.rc \
    vendor/cna/prebuilt/common/etc/sysctl.conf:system/bin/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/cna/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/cna/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/cna/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/cna/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/cna/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/cna/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/cna/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/cna/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/cna/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/cna/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/cna/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/cna/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf    

PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/cna/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/cna/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/cna/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/cna/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/cna/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/cna/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    FileManager \
    Launcher2 \
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
        
PRODUCT_PACKAGE_OVERLAYS += vendor/cna/overlay/common

PRODUCT_PACKAGE_OVERLAYS += vendor/cna/overlay/dictionaries

BRANCH = MOD
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 4
PRODUCT_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K

ifdef CNA_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Codename-Android-($(BRANCH))-$(PRODUCT_VERSION_MAJOR)-$(shell date +%m%d%Y)-NIGHTLY-$(PRODUCT_RELEASE_NAME)
else
    ifdef CNA_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Codename-Android-($(BRANCH))-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Codename-Android-($(BRANCH))-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)-UNOFFICIAL
    endif
endif
