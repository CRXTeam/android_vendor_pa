# Copyright (C) 2014 CrystalPA Project
# Based on AOSPA
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
ifeq (cpa_codina,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_codina.mk
endif
ifeq (cpa_janice,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_janice.mk
endif
ifeq (cpa_p700,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_p700.mk
endif
ifeq (cpa_p705,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_p705.mk
endif
ifeq (cpa_e610,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_e610.mk
endif
ifeq (cpa_coconut,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_coconut.mk
endif
ifeq (cpa_honami,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_honami.mk
endif
ifeq (cpa_huashan,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_huashan.mk
endif
ifeq (cpa_d605,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_d605.mk
endif
ifeq (cpa_kylessopen,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_kylessopen.mk
endif
ifeq (cpa_mako,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_mako.mk
endif
ifeq (cpa_p760,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_p760.mk
endif
ifeq (cpa_bacon,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cpa_bacon.mk
endif
