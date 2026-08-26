#
# Copyright (C) 2023-2026 The LineageOS / OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from generic core configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from device configuration
$(call inherit-product, device/oneplus/udon/device.mk)

# Product metadata
PRODUCT_DEVICE := udon
PRODUCT_NAME := fox_udon
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2487
PRODUCT_MANUFACTURER := OnePlus

# OrangeFox Recovery Flags
FOX_BUILD_TYPE := "Unofficial"
FOX_MAINTAINER := "The LineageOS Project"
FOX_MAINTAINER_PATCH_VERSION := 1
FOX_VIRTUAL_AB_DEVICE := 1
FOX_RECOVERY_SYSTEM_PARTITION := "/dev/block/mapper/system"
FOX_RECOVERY_VENDOR_PARTITION := "/dev/block/mapper/vendor"
FOX_INSTALLER_DISABLE_MAGISK_REPLACE := 1
FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := 1

# Additional OFRP Flags
FOX_REPLACE_BUSYBOX_SHELL := 1
FOX_USE_BASH_SHELL := 1
FOX_USE_NANO_EDITOR := 1
FOX_USE_TAR_BINARY := 1
FOX_USE_SED_BINARY := 1
FOX_USE_XZ_UTILS := 1
OF_ENABLE_LPTOOLS := 1
OF_KEEP_FORCED_ENCRYPTION := 1
OF_PATCH_AVB20 := 1
OF_SCREEN_H := 2772
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_CLOCK_POS := 1
OF_HIDE_NOTCH := 1
OF_USE_GREEN_LED := 0
OF_FLASHLIGHT_ENABLE := 1
OF_FL_PATH1 := "/sys/class/leds/led:torch_0"
OF_FL_PATH2 := "/sys/class/leds/led:torch_1"
OF_QUICK_BACKUP_LIST := "/boot;/data;/super;"
OF_TARGET_DEVICES := "udon,aston,CPH2487,OP5961L1"
OF_ALLOW_DISABLE_NAVBAR := 0
