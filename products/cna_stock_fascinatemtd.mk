$(call inherit-product, device/samsung/fascinatemtd/full_fascinatemtd.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := Fascinate

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 TARGET_DEVICE=SCH-I500 BUILD_FINGERPRINT=verizon/SCH-I500/SCH-I500:2.3.5/IMM76D/EI20:user/release-keys PRIVATE_BUILD_DESC="SCH-I500-user 2.3.5 IMM76D EI20 release-keys"

PRODUCT_NAME := cna_stock_fascinatemtd
PRODUCT_DEVICE := fascinatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := samsung