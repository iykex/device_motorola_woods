#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/motorola/woods/full_woods.mk)

PRODUCT_NAME := omni_woods

# Ramdisk
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/recovery/root/init.mt6735.power.rc:root/init.mt6735.power.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.service.rc:root/init.recovery.service.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6735.rc:root/ueventd.mt6735.rc

#fix mtp
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/recovery/root/sbin/libtwrpmtp.so:root/sbin/libtwrpmtp.so \
    $(LOCAL_PATH)/recovery/root/sbin/libusbhost.so:root/sbin/libusbhost.so \
    $(LOCAL_PATH)/recovery/root/sbin/healthd:root/sbin/healthd
