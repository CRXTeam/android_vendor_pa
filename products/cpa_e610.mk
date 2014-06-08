# Copyright (C) 2014 CrystalPA Project
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

# Check for target product

ifeq (cpa_e610,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := cpa_hdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/cpa/configs/telephony.mk)

# Include CPA common configuration
include vendor/cpa/main.mk

ROM_VERSION_TAG := OFFICIAL

# Inherit device configuration
$(call inherit-product, device/lge/e610/full_e610.mk)

PRODUCT_PACKAGES += Trebuchet

# Override AOSP build properties
PRODUCT_DEVICE := e610
PRODUCT_NAME := cpa_e610
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-e610
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=m4_open_eu \
    BUILD_FINGERPRINT="lge/m4_open_eu/m4:4.1.2/JZO54K/E61020c-EUR-XX.1367460723:user/release-keys" \
    PRIVATE_BUILD_DESC="m4_open_eu-user 4.1.2 JZO54K E61020c-EUR-XX.1367460723 release-keys"
endif