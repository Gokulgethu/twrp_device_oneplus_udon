#
# Copyright (C) 2023-2026 The LineageOS / OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/fox_udon.mk \
    $(LOCAL_DIR)/omni_udon.mk \
    $(LOCAL_DIR)/twrp_udon.mk

COMMON_LUNCH_CHOICES := \
    fox_udon-eng \
    fox_udon-userdebug \
    omni_udon-eng \
    omni_udon-userdebug \
    twrp_udon-eng \
    twrp_udon-userdebug
