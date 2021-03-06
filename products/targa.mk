# Inherit device configuration for Droid Bionic.
$(call inherit-product, device/motorola/targa/full_targa.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/moto-lte-common
DEVICE_PACKAGE_OVERLAYS += device/motorola/targa/overlay/aokp

# Setup device specific product configuration.
PRODUCT_NAME := aokp_targa
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := targa
PRODUCT_DEVICE_PREFIX := cdma
PRODUCT_MODEL := XT875
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := vzw
ANDROID_VERSION := 4.1.1_r4
MOTOROLA_BUILD_ID := JRO03L
MOTOROLA_SOFTWARE_VERSION := 6.7.2231
DEVELOPER_NAME := hashcode
DEVELOPER_HOST := hashcode-unn
DEVELOPMENT_STAGE := Alpha
# Release name and versioning
PRODUCT_RELEASE_NAME := DROID_BIONIC

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_ID=${MOTOROLA_BUILD_ID} \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   TARGET_BUILD_TYPE=user \
   BUILD_VERSION_TAGS=release-keys \
   BUILD_DISPLAY_ID=JB_${DEVELOPMENT_STAGE}_${MOTOROLA_BUILD_ID} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${ANDROID_VERSION}/${MOTOROLA_BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${ANDROID_VERSION} ${MOTOROLA_BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   USER=${DEVELOPER_NAME} \
   BUILD_HOST=${DEVELOPER_HOST} \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip

