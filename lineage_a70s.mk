#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from a70s device
$(call inherit-product, device/samsung/a70s/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a70s
PRODUCT_DEVICE := a70s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A707
PRODUCT_MANUFACTURER := samsung

BUILD_FINGERPRINT := "samsung/a70sdd/a70s:11/RP1A.200720.012/A707FDDS3CWE2:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a70sdd-user 11 RP1A.200720.012 A707FDDS3CWE2 release-keys" \
    PRODUCT_NAME="a70s" \
    TARGET_DEVICE="a70s"

PRODUCT_GMS_CLIENTID_BASE := android-samsung
