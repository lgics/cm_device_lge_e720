# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for e720.
$(call inherit-product, device/lge/e720/e720.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_e720
PRODUCT_BRAND := lge
PRODUCT_DEVICE := e720
PRODUCT_MODEL := LG-E720
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_e720 \
    BUILD_FINGERPRINT="lge/alessi/alessi:2.2.1/GRI40/LG-E720-V10b.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="alessi-user 2.2.1 GRI40 LG-E720-V10b.19C11F164C release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusChic
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
