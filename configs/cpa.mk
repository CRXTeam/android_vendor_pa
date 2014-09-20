# CrystalPA
PRODUCT_PACKAGES += \
    OmniSwitch \
    CMFileManager

# Prebuild apps
PRODUCT_COPY_FILES += \
    vendor/cpa/prebuilt/apk/ViPER4Android_FX_A4.x.apk:system/app/ViPER4Android_FX_A4.x.apk \
    vendor/cpa/prebuilt/apk/wallpapers.apk:system/app/wallpapers.apk \
    vendor/cpa/prebuilt/apk/Nova.apk:system/app/Nova.apk \
    vendor/cpa/CHANGELOG.mkdn:system/etc/CHANGELOG.mkdn
