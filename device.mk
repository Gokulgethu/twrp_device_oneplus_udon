#
# Copyright (C) 2023-2026 The LineageOS / OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe \
    set_permissive \
    resetprop \
    fastbootd

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_PACKAGES += \
    bash \
    nano \
    tar \
    sed \
    lptools \
    toolbox \
    toybox
