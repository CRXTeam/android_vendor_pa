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

ifeq (cpa_mako,$(TARGET_PRODUCT))

#HAVE NFC?
HAVE_NFC := true

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := cpa_xhdpi

PREFS_FROM_SOURCE ?= false

ROM_VERSION_TAG := OFFICIAL

# Inherit telephony common stuff
$(call inherit-product, vendor/cpa/configs/telephony.mk)

# Include CPA common configuration
include vendor/cpa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Override AOSP build properties
PRODUCT_NAME := cpa_mako
PRODUCT_DEVICE := mako
PRODUCT_BRAND := Google
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := Nexus 4
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/mako:4.4.4/KTU84P/1227136:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.4.4 KTU84P 1227136 release-keys"

endif
