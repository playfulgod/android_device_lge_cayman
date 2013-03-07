$(call inherit-product-if-exists, vendor/lge/cayman/cayman-vendor.mk)

include device/lge/iproj/device.mk

DEVICE_PACKAGE_OVERLAYS += device/lge/cayman/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/root/init.iproj.rc:root/init.iproj.rc \
	$(LOCAL_PATH)/prebuilt/root/init.iproj.usb.rc:root/init.iproj.usb.rc \
	$(LOCAL_PATH)/prebuilt/root/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/prebuilt/root/ueventd.iproj.rc:root/ueventd.iproj.rc \
	$(LOCAL_PATH)/prebuilt/root/fstab.iproj:root/fstab.iproj

# Recovery (i_vzw specific)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Sim ToolKit
# This is normally picked up in vendor/cm/config/gsm.mk.
# Do we want to use that instead?
PRODUCT_PACKAGES += \
	Stk
