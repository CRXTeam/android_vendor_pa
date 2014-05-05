# CrystalPA
PRODUCT_PACKAGES += \
    Trebuchet \
    OmniSwitch \
    DSPManager

# Official builds
ifneq ($(filter cpa_huashan cpa_e610 cpa_p700 cpa_honami,$(TARGET_PRODUCT)),)
ROM_VERSION_TAG := OFFICIAL
endif
