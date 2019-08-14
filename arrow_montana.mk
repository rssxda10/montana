#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from the common product configurations.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device launched with Nougat MR1
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# for specific
$(call inherit-product, device/motorola/montana/device.mk)
$(call inherit-product, vendor/motorola/montana/montana-vendor.mk)
$(call inherit-product, vendor/arrow/config/common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := montana
PRODUCT_NAME := arrow_montana
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := montana
PRODUCT_MODEL := Moto G5S
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="blueline-user 9 PQ3A.190801.002 5670241 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/blueline/blueline:9/PQ3A.190801.002/5670241:user/release-keys \
VENDOR_BUILD_FINGERPRINT := google/blueline/blueline:9/PQ3A.190801.002/5670241:user/release-keys

