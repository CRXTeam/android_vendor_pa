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

ifeq (cpa_janice,$(TARGET_PRODUCT))

#HAVE NFC?
HAVE_NFC := true

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := cpa_hdpi

PREFS_FROM_SOURCE ?= false

ROM_VERSION_TAG := OFFICIAL

# Inherit telephony common stuff
$(call inherit-product, vendor/cpa/configs/telephony.mk)

# Include CPA common configuration
include vendor/cpa/main.mk

# Override AOSP build properties
PRODUCT_NAME := cpa_janice
PRODUCT_DEVICE := janice
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9070

## Webkit
PRODUCT_PACKAGES += \
    libwebcore	

# (classic webview provider)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_ARCH_LOWMEM := true
JS_ENGINE	:= v8
HTTP	:= chrome
WITH_JIT	:= true
ENABLE_JSC_JIT	:= true
TARGET_WEBKIT_USE_MORE_MEMORY	:= true
TARGET_FORCE_CPU_UPLOAD	:= true

# Inherit device configuration
$(call inherit-product, device/samsung/janice/full_janice.mk)

# Override AOSP build properties
PRODUCT_NAME := cpa_janice
PRODUCT_DEVICE := janice
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9070

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=janice
endif
