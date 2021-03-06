#
# Copyright (C) 2021 The LineageOS Project
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
#

LOCAL_PATH := device/samsung/j4lte

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from universal7570-common
$(call inherit-product, device/samsung/universal7570-common/device-common.mk)

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-service

# Audio
PRODUCT_PACKAGES += \
   libtfa98xx \
   audio_amplifier.universal7570 \
   libtinycompress

# Call the proprietary setup
$(call inherit-product, vendor/samsung/j4lte/j4lte-vendor.mk)
