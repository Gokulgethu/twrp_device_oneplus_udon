#
# Copyright (C) 2023-2026 The LineageOS / OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, device/oneplus/udon/device.mk)

PRODUCT_DEVICE := udon
PRODUCT_NAME := omni_udon
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2487
PRODUCT_MANUFACTURER := OnePlus
