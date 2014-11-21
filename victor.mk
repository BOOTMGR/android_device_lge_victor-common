# Copyright (C) 2011-2013 The CyanogenMod Project
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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/lge/victor-common/overlay

COMMON_PATH := device/lge/victor-common

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the common hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Common device specific configs
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(COMMON_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(COMMON_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(COMMON_PATH)/rootdir/fstab.victor:root/fstab.victor \
    $(COMMON_PATH)/rootdir/init.lge.rc:root/init.lge.rc \
    $(COMMON_PATH)/rootdir/init.lge.early.rc:root/init.lge.early.rc \
    $(COMMON_PATH)/rootdir/init.victor.rc:root/init.victor.rc \
    $(COMMON_PATH)/rootdir/init.victor.usb.rc:root/init.victor.usb.rc \
    $(COMMON_PATH)/rootdir/fstab.goldfish:root/fstab.goldfish \
    $(COMMON_PATH)/rootdir/ueventd.victor.rc:root/ueventd.victor.rc \
    $(COMMON_PATH)/rootdir/init.goldfish.rc:root/init.goldfish.rc \
    $(COMMON_PATH)/rootdir/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(COMMON_PATH)/rootdir/init.lge.usb.sh:root/init.lge.usb.sh \
    $(COMMON_PATH)/rootdir/sbin/rmt_storage:root/sbin/rmt_storage \
    $(COMMON_PATH)/rootdir/sbin/chargerlogo:root/sbin/chargerlogo \
    $(COMMON_PATH)/rootdir/sbin/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh \
    $(COMMON_PATH)/rootdir/init.recovery.victor.rc:root/init.recovery.victor.rc \
    $(COMMON_PATH)/rootdir/init.lge.usb.sh:root/init.lge.usb.sh \
    $(COMMON_PATH)/rootdir/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh \
    $(COMMON_PATH)/rootdir/init.rc:root/init.rc


# Common device specific scripts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(COMMON_PATH)/rootdir/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(COMMON_PATH)/rootdir/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(COMMON_PATH)/rootdir/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(COMMON_PATH)/rootdir/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(COMMON_PATH)/rootdir/system/etc/logging_android.sh:system/etc/logging_android.sh \
    $(COMMON_PATH)/rootdir/system/etc/logging_android_apart.sh:system/etc/logging_android_apart.sh \
    $(COMMON_PATH)/rootdir/system/etc/logging_kernel.sh:system/etc/logging_kernel.sh \
    $(COMMON_PATH)/rootdir/system/etc/logging_prepare.sh:system/etc/logging_prepare.sh \
    $(COMMON_PATH)/rootdir/system/etc/save_kernel_log.sh:system/etc/save_kernel_log.sh \
    $(COMMON_PATH)/configs/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
    $(COMMON_PATH)/configs/UserPolicy.xml:system/etc/UserPolicy.xml \
    $(COMMON_PATH)/configs/telephony.xml:system/etc/telephony.xml \
    $(COMMON_PATH)/rootdir/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
    $(COMMON_PATH)/rootdir/system/etc/init.qcom.post_boot.sh:root/system/etc/init.qcom.post_boot.sh \
    $(COMMON_PATH)/rootdir/system/etc/init.qcom.fm.sh:root/system/etc/init.qcom.fm.sh \
    $(COMMON_PATH)/configs/thermald.conf:system/etc/thermald.conf

# wifi nvram calibration
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(COMMON_PATH)/configs/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(COMMON_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Common keylayouts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/system/usr/idc/qt602240_ts.idc:system/usr/idc/qt602240_ts.idc \
    $(COMMON_PATH)/rootdir/system/usr/keylayout/qt602240_ts.kl:system/usr/keylayout/qt602240_ts.kl \
    $(COMMON_PATH)/rootdir/system/usr/keylayout/atcmd_virtual_kbd.kl:system/usr/keylayout/atcmd_virtual_kbd.kl \
    $(COMMON_PATH)/rootdir/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(COMMON_PATH)/rootdir/system/usr/keylayout/gpio-side-keypad.kl:system/usr/keylayout/gpio-side-keypad.kl \
    $(COMMON_PATH)/rootdir/system/usr/keylayout/touch_keypad.kl:system/usr/keylayout/touch_keypad.kl \
    $(COMMON_PATH)/rootdir/system/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    $(COMMON_PATH)/rootdir/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl

# Recovery hack needed because reboot recovery hang
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/system/bin/recovery:system/bin/recovery \

# Boot logo
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/bootlogo/$(TARGET_SCREEN_WIDTH)x$(TARGET_SCREEN_HEIGHT).rle:root/initlogo.rle

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    gralloc.msm7x30 \
    copybit.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    hwcomposer.msm7x30

# Hal
PRODUCT_PACKAGES += \
    camera.victor \
    power.victor \
    gps.victor \
    lights.victor \
    sensors.victor

# QCOM OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libmm-omxcore \
    libc2dcolorconvert

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory
    

# WiFi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    hwaddrs

# Support for Browser's saved page feature. This allows
# for pages saved on previous versions of the OS to be
# viewed on the current OS.
PRODUCT_PACKAGES += \
    libskia_legacy

# Charger mode
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# secure defeat
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0

# Fix legacy fb on kitkat
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zygote.disable_gl_preload=1

# For applications to determine if they should turn off specific memory-intensive
# features that work poorly on low-memory devices.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=false \
    ro.zram.default=18

# Extra debugging props
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.strictmode.visual=0 \
    persist.sys.strictmode.disable=1 \
    persist.webview.provider=classic

# Enable MTP mode by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Reduce background apps limit
# From CAF
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=16 \
    ro.config.max_starting_bg=8

# Experimental
PRODUCT_PROPERTY_OVERRIDES += \
    debug.gr.numframebuffers=3


