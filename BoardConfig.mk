-include vendor/lge/e720/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_e720_defconfig

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=e720

TARGET_BOOTLOADER_BOARD_NAME := e720
TARGET_OTA_ASSERT_DEVICE := alessi,e720

TARGET_USES_OLD_LIBSENSORS_HAL:=true

USE_CAMERA_STUB := false

