#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from dada device
$(call inherit-product, device/xiaomi/dada/device.mk)

## Device identifier
PRODUCT_DEVICE := dada
PRODUCT_NAME := lineage_dada
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24129PN74C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dada-user 15 AQ3A.250226.002 OS3.0.6.0.WOCMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/dada_global/dada:15/AQ3A.250226.002/OS3.0.6.0.WOCMIXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


# Lunch banner maintainer variable
RISING_MAINTAINER="ImSolkin"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 8 Elite" \
    RisingMaintainer="ImSolkin"

RISING_MAINTAINER := ImSolkin

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Сборка без тяжелых Google Apps с интеграцией microG
WITH_GMS := false
WITH_MICROG := true

