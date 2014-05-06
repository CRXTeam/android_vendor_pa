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
ifeq (cpa_coconut,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := cpa_mdpi

# Inherit telephony common stuff
$(call inherit-product, vendor/cpa/configs/telephony.mk)

# Include CPA common configuration
include vendor/cpa/main.mk

# Inherit device configuration
$(call inherit-product, device/semc/coconut/full_coconut.mk)

# Override AOSP build properties
PRODUCT_NAME := cpa_coconut
PRODUCT_DEVICE := coconut
PRODUCT_BRAND := SEMC
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_MODEL := WT19i

ROM_VERSION_TAG := OFFICIAL

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WT19i \
    PRODUCT_DEVICE=WT19i \
    BUILD_FINGERPRINT="SEMC/WT19i_1254-2184/WT19i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="WT19i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"
endif
