#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from android10 device
$(call inherit-product, device/colorfly/android10/device.mk)

PRODUCT_DEVICE := android10
PRODUCT_NAME := omni_android10
PRODUCT_BRAND := colorfly
PRODUCT_MODEL := HB-P106-4G
PRODUCT_MANUFACTURER := colorfly

PRODUCT_GMS_CLIENTID_BASE := android-colorfly

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="android10-user 10 QP1A.190711.020 20200810 release-keys"

BUILD_FINGERPRINT := rockchip/rk312x/rk312x:6.0.1/MXC89K/user.fyl.20170927.202757:userdebug/test-keys
