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

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cna/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    Launcher2 \
    LatinIME \
    Superuser \
    su

# Required for use without gapps
PRODUCT_PACKAGES += \
    QuickSearchBox \
    Provision

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

BRANCH = STOCK
CNA_BUILD_DISPLAY_ID = CNA01A

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76D

PRODUCT_PROPERTY_OVERRIDES += \
ro.cnaversion=Codename-Android-($(BRANCH))-$(CNA_BUILD_DISPLAY_ID)

ifdef CNA_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Codename-Android-($(BRANCH))-$(CNA_BUILD_DISPLAY_ID)-$(PRODUCT_RELEASE_NAME)
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Codename-Android-($(BRANCH))-$(CNA_BUILD_DISPLAY_ID)-$(PRODUCT_RELEASE_NAME)-UNOFFICIAL
endif

ifdef WITH_GOOGLE_APPS
$(call inherit-product, vendor/google/gapps.mk)
$(call inherit-product, vendor/google/faceUnlock.mk)
endif
