#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6710 device
$(call inherit-product, device/infinix/X6710/device.mk)

PRODUCT_DEVICE := X6710
PRODUCT_NAME := twrp_X6710
PRODUCT_RELEASE_NAME := X6710
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6710
PRODUCT_MANUFACTURER := infinix
