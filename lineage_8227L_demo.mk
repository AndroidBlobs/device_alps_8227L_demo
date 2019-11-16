# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from 8227L_demo device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := alps
PRODUCT_DEVICE := 8227L_demo
PRODUCT_MANUFACTURER := alps
PRODUCT_NAME := lineage_8227L_demo
PRODUCT_MODEL := CVD1660-WJ

PRODUCT_GMS_CLIENTID_BASE := android-alps
TARGET_VENDOR := alps
TARGET_VENDOR_PRODUCT_NAME := 8227L_demo
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_8227L_demo-user 8.1.0 O11019 1564460321 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := alps/full_8227L_demo/8227L_demo:8.1.0/O11019/1564460321:user/test-keys
