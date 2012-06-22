# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/moto/targa/device_targa.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
#$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/targa

# Setup device specific product configuration.
PRODUCT_NAME := aokp_targa
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := targa
PRODUCT_DEVICE_PREFIX := cdma
PRODUCT_MODEL := XT875
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := vzw
ANDROID_VERSION := 4.0.4_r2.1
MOTOROLA_BUILD_ID := IMM76D
MOTOROLA_SOFTWARE_VERSION := 6.7.2231
DATE := $(shell date +%Y%m%d)

# Release name and versioning
PRODUCT_RELEASE_NAME := Droid_RAZR

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} BUILD_ID=${MOTOROLA_BUILD_ID} BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${ANDROID_VERSION}/${MOTOROLA_BUILD_ID}/${DATE}:user/release-keys PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${ANDROID_VERSION} ${MOTOROLA_BUILD_ID} ${DATE} release-keys" BUILD_NUMBER=$(DATE)

# Copy targa specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip

