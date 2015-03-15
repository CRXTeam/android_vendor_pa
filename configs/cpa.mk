# CrystalPA Apps
ifneq ($(TARGET_LOW_RAM_DEVICE), true)
PRODUCT_PACKAGES += \
    CPAWallpapers
endif

# Changelog
PRODUCT_COPY_FILES += \
    vendor/cpa/CHANGELOG_lollipop.mkdn:system/CHANGELOG_lollipop.txt
