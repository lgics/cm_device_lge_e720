PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/e720/e720-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/e720/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/alessi_keypad.kcm.bin:system/usr/keychars/alessi_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/alessi_keypad.kl:system/usr/keylayout/alessi_keypad.kl \
    $(LOCAL_PATH)/configs/touch_mcs6000.kl:system/usr/keylayout/touch_mcs6000.kl \
    $(LOCAL_PATH)/configs/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \


# Ambient sensor light
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml 


# Wi-Fi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf


# E720 Audio
PRODUCT_PACKAGES += \
    audio_policy.e720 \
    audio.primary.e720

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := e720
PRODUCT_DEVICE := e720
PRODUCT_MODEL := LG-E720

