$(call inherit-product-if-exists, vendor/lge/i_vzw/i_vzw-vendor.mk)

include device/lge/iproj/device.mk

DEVICE_PACKAGE_OVERLAYS += device/lge/i_vzw/overlay

# XXX: some (most?) of these belong in iproj/device.mk

# XXX: these need cleaned up, they are more like aosp40 than cm10
PRODUCT_COPY_FILES += \
	device/lge/i_vzw/prebuilt/root/init.iproj.rc:root/init.iproj.rc \
	device/lge/i_vzw/prebuilt/root/init.iproj.usb.rc:root/init.iproj.usb.rc \
	device/lge/i_vzw/prebuilt/root/init.qcom.sh:root/init.qcom.sh \
	device/lge/i_vzw/prebuilt/root/init.rc:root/init.rc \
	device/lge/i_vzw/prebuilt/root/init.target.rc:root/init.target.rc \
	device/lge/i_vzw/prebuilt/root/init.usb.rc:root/init.usb.rc \
	device/lge/i_vzw/prebuilt/root/ueventd.iproj.rc:root/ueventd.iproj.rc \
	device/lge/i_vzw/prebuilt/root/ueventd.rc:root/ueventd.rc

PRODUCT_COPY_FILES += \
	device/lge/i_vzw/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	device/lge/i_vzw/prebuilt/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	device/lge/i_vzw/prebuilt/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh

# Configs
PRODUCT_COPY_FILES += \
	device/lge/i_vzw/configs/vold.fstab:system/etc/vold.fstab \
	device/lge/i_vzw/configs/atcmd_virtual_kbd.kl:system/usr/keylayout/atcmd_virtual_kbd.kl \
	device/lge/i_vzw/configs/ffa-keypad_qwerty.kl:system/usr/keylayout/ffa-keypad_qwerty.kl \
	device/lge/i_vzw/configs/i_atnt-keypad.kl:system/usr/keylayout/i_atnt-keypad.kl \
	device/lge/i_vzw/configs/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl \
	device/lge/i_vzw/configs/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
	device/lge/i_vzw/configs/touch_dev.idc:system/usr/idc/touch_dev.idc \
	device/lge/i_vzw/configs/thermald.conf:system/etc/thermald.conf

# Recovery (i_vzw specific)
PRODUCT_COPY_FILES += \
	device/lge/i_vzw/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Sim ToolKit
# This is normally picked up in vendor/cm/config/gsm.mk.
# Do we want to use that instead?
PRODUCT_PACKAGES += \
	Stk
