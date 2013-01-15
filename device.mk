$(call inherit-product-if-exists, vendor/lge/i_vzw/i_vzw-vendor.mk)

include device/lge/iproj/device.mk

DEVICE_PACKAGE_OVERLAYS += device/lge/i_vzw/overlay

# XXX: some (most?) of these belong in iproj/device.mk

# Bluetooth
PRODUCT_COPY_FILES += \
	device/lge/i_vzw/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# XXX: these need cleaned up, they are more like aosp40 than cm10
PRODUCT_COPY_FILES += \
	device/lge/i_vzw/prebuilt/root/init.iproj.rc:root/init.iproj.rc \
	device/lge/i_vzw/prebuilt/root/init.iproj.usb.rc:root/init.iproj.usb.rc \
	device/lge/i_vzw/prebuilt/root/init.qcom.sh:root/init.qcom.sh \
	device/lge/i_vzw/prebuilt/root/init.usb.rc:root/init.usb.rc \
	device/lge/i_vzw/prebuilt/root/ueventd.iproj.rc:root/ueventd.iproj.rc

# Recovery (i_vzw specific)
PRODUCT_COPY_FILES += \
	device/lge/i_vzw/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Sim ToolKit
# This is normally picked up in vendor/cm/config/gsm.mk.
# Do we want to use that instead?
PRODUCT_PACKAGES += \
	Stk
