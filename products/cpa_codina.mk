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

ifeq (cpa_codina,$(TARGET_PRODUCT))

#HAVE NFC?
HAVE_NFC := false

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := cpa_hdpi

PREFS_FROM_SOURCE ?= false

ROM_VERSION_TAG := OFFICIAL

# Inherit telephony common stuff
$(call inherit-product, vendor/cpa/configs/telephony.mk)

# Include CPA common configuration
include vendor/cpa/main.mk

# Inherit device configuration
$(call inherit-product, device/samsung/codina/full_codina.mk)

# Override AOSP build properties
PRODUCT_NAME := cpa_codina
PRODUCT_DEVICE := codina
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I8160


# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I8160 TARGET_DEVICE=codina
endif
