#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
#$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X669D device
$(call inherit-product, device/infinix/X669D/device.mk)

PRODUCT_DEVICE := X669D
PRODUCT_NAME := twrp_X669D
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := X669D
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X669D-user 12 SP1A.210812.016 63 release-keys"

BUILD_FINGERPRINT := Infinix/X669D-GL/Infinix-X669D:12/SP1A.210812.016/GL-20240606V416:user/release-keys
