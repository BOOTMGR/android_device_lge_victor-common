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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/victor-common/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/lge/victor-common/include

# Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := scorpion
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_LOWMEM := true

ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON :=true
ARCH_ARM_HAVE_VFP := true
TARGET_HAVE_TSLIB := true

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_NO_SECURE_PLAYBACK
# our kernel don't support secure playback

# Display
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_NO_HW_OVERLAY := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_DOESNT_USE_FENCE_SYNC := true
BOARD_EGL_NEEDS_FNW := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := false
TARGET_USES_C2D_COMPOSITION := true
TARGET_NO_HW_VSYNC := true
HWUI_COMPILE_FOR_PERF := true
BOARD_EGL_CFG := device/lge/victor-common/configs/egl.cfg

# QCOM enhanced A/V (require ION)
TARGET_ENABLE_QC_AV_ENHANCEMENTS := false

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_AUDIO_RESETALL := true
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Wifi related defines
WIFI_BAND := 802_11_ABG
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/data/misc/wifi/fw_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
BOARD_LEGACY_NL80211_STA_EVENTS := true
CONFIG_CONTROL_IFACE := true
CONFIG_DRIVER_NL80211 := true

## WE HAVE LEGACY RIL
BOARD_USES_LEGACY_RIL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/victor-common/bluetooth/vnd_msm7x30.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/victor-common/bluetooth/include

# Camera
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_LEGACY_OVERLAY := true
BOARD_CAMERA_USE_MM_HEAP := true
# Needed for camera-victor.so
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_ACDB_ENABLED -DNEEDS_VECTORIMPL_SYMBOLS -DQCOM_LEGACY_CAM_PARAMS

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
TARGET_RECOVERY_FSTAB := device/lge/victor-common/rootdir/fstab.victor
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/victor-common/recovery/recovery_keys.c

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/msm7x30
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=ttyMSM1 androidboot.hardware=victor androidboot.selinux=permissive
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 473956352
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 262144

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
BOARD_WANTS_EMMC_BOOT := true

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHT := true

# Power HAL
TARGET_PROVIDES_POWERHAL := true

BOARD_SEPOLICY_DIRS += \
        device/lge/victor-common/sepolicy

BOARD_SEPOLICY_UNION += \
	genfs_contexts \
	app.te \
	bluetooth.te \
	device.te \
	domain.te \
	drmserver.te \
	file.te \
	file_contexts \
	hci_init.te \
	init_hell.te \
	keystore.te \
	mediaserver.te \
	kickstart.te \
	rild.te \
        cnd.te \
	surfaceflinger.te \
	system.te \
	ueventd.te \
	wpa.te

# We're using classic webkit engine
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
ENABLE_WEBGL := true
TARGET_WEBKIT_USE_MORE_MEMORY := true
TARGET_FORCE_CPU_UPLOAD := true

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# We have enough stable system to disable jnicheck
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false

# Qualcomm bionic Optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH
BOARD_SCREENRECORD_LANDSCAPE_ONLY := true

# HealthHAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.victor

