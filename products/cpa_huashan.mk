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

# Check for target product'

ifeq (cpa_huashan,$(TARGET_PRODUCT))

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

# Inherit AOSP device configuration
$(call inherit-product, device/sony/huashan/full_huashan.mk)

# Override AOSP build properties
PRODUCT_NAME := cpa_huashan
PRODUCT_DEVICE := huashan
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := C5303

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C5303 TARGET_DEVICE=huashan
endif
