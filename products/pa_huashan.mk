# Copyright (C) 2013 ParanoidAndroid Project
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

ifeq (pa_huashan,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/sony/huashan/full_huashan.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_huashan
PRODUCT_DEVICE := huashan
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := C5303
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C5303_1272-3352 BUILD_FINGERPRINT=Sony/C5303_1272-3352/C5303:4.1.2/12.0.A.2.254/Aff_nw:user/release-keys PRIVATE_BUILD_DESC="C5303-user 4.1.2 12.0.A.2.254 Aff_nw test-keys"

endif
