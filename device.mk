#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/infinix/X6710

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Api level
PRODUCT_SHIPPING_API_LEVEL := 32
# Platform
PRODUCT_PLATFORM := mt6893

# A/B
ENABLE_VIRTUAL_AB := true

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \ 
     android.hardware.boot@1.2-impl \
     android.hardware.boot@1.2-mtkimpl.recovery \
     android.hardware.boot@1.2-mtkimpl

PRODUCT_PACKAGES += \
    bootctrl.mt6893\
    bootctrl.recovery \
    libmtk_bsg \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES_DEBUG += \
    bootctrl

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
