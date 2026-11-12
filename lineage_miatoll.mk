#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/miatoll/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6250
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Debloat esports: remove 10 requested apps
PRODUCT_PACKAGES := $(filter-out AudioFX ExactCalculator Calculator Calendar CalendarApp Etar Camera2 Snap DeskClock Contacts FMRadio FM2 Messaging messaging Recorder Ymusic,$(PRODUCT_PACKAGES))
