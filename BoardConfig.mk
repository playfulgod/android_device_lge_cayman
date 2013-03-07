include vendor/lge/cayman/BoardConfigVendor.mk

# Partitions (XXX: check these)
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 422576128
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

# Kernel
BOARD_USE_PREBUILT_KERNEL := false

ifeq ($(BOARD_USE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL_DIR := device/lge/cayman/kernels/q
else
# Build kernel from source
TARGET_KERNEL_SOURCE := kernel/lge/iproj
TARGET_KERNEL_CONFIG := connect_defconfig
endif

BOARD_KERNEL_CMDLINE := androidboot.hardware=iproj
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x40200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x41a00000

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/cayman/bluetooth

include device/lge/iproj/BoardConfig.mk

BOARD_CDMA_NETWORK := true

# Device Assert.. ics, cwm, gb
TARGET_OTA_ASSERT_DEVICE := i_vzw,ms840,MS840,cayman

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/cayman/recovery/graphics.c

