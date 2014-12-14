#
# This policy configuration will be used by all products that
# inherit from CM
#

BOARD_SEPOLICY_DIRS += \
    vendor/cpa/sepolicy

BOARD_SEPOLICY_UNION += \
    file.te \
    file_contexts \
    genfs_contexts \
    seapp_contexts \
    auditd.te \
    healthd.te \
    installd.te \
    netd.te \
    sysinit.te \
    system.te \
    ueventd.te \
    su.te \
    vold.te \
    mac_permissions.xml
