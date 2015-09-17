#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Platform
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405
TARGET_BOOTLOADER_BOARD_NAME := MSM8939

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/zte/P839F30/dt.img
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
#TARGET_PREBUILT_KERNEL := device/zte/P839F30/kernel
TARGET_KERNEL_SOURCE := kernel/zte/msm8916
TARGET_KERNEL_CONFIG := msm8916-zte_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm_P839F30-PV_defconfig

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
#BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4294950912 # (4294967296 - 16384)
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := device/zte/P839F30/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi
TW_TARGET_USES_QCOM_BSP := true
TW_NEW_ION_HEAP := true

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 40
