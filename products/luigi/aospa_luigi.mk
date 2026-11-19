# Copyright (C) 2023 Paranoid Android
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

ifeq (aospa_luigi,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/realme/luigi/device.mk)

# Inherit from the AOSPA configuration.
# device/qcom/common needs this during product config, before BoardConfig is loaded
TARGET_BOARD_PLATFORM := holi

$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_BRAND := realme
PRODUCT_DEVICE := luigi
PRODUCT_MANUFACTURER := realme
PRODUCT_MODEL := realme 10 pro 5G
PRODUCT_NAME := aospa_luigi

PRODUCT_SYSTEM_DEVICE := luigi
PRODUCT_SYSTEM_MODEL := RMX3660
PRODUCT_SYSTEM_NAME := luigi

PRODUCT_GMS_CLIENTID_BASE := android-oppo

endif
EOF
