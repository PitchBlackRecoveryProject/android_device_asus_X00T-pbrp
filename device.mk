#
# Copyright (C) 2016 The Android Open-Source Project
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

$(call inherit-product, build/make/target/product/product_launched_with_o.mk)

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files \
    fs_config_dirs

# b/30349163
# Set default log size on userdebug/eng build to 1M
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
PRODUCT_PROPERTY_OVERRIDES += \
    ro.logd.size=1M
endif

# for stock ROM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.CID=CID_ERROR