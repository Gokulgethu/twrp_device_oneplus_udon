#
# Copyright (C) 2023-2026 The LineageOS / OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),udon)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
