#
# Copyright (C) 2024 The AtomX Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (atomx_r5x,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/realme/r5x/device.mk)

 # Inherit from the AtomX configuration.
$(call inherit-product, vendor/atomx/target/product/atomx-target.mk)

# Device identifier
PRODUCT_NAME := atomx_r5x
PRODUCT_DEVICE := r5x
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 5 series
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 720

endif
