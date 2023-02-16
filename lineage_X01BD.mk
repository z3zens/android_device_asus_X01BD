#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some common ricedroidOSS stuff
RICE_BUILDTYPE := COMMUNITY
RICE_PACKAGE_TYPE := PIXEL
SUSHI_BOOTANIMATION := 1080
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_BUILD_GRAPHENEOS_CAMERA := false
TARGET_ENABLE_BLUR := false
TARGET_HAS_UDFPS := false
TARGET_KERNEL_OPTIONAL_LD := false
TARGET_USE_PIXEL_FINGERPRINT := false
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_CORE_GMS := false
TARGET_CORE_GMS_EXTRAS := false

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01BDA
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD_1 \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1 3402 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "asus/WW_X01BD/ASUS_X01BD_1:8.1.0/OPM1/15.2016.1902.192-20190226:user/release-keys"
