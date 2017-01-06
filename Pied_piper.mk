$(call inherit-product, device/linaro/pandaboard/pandaboard.mk)

PRODUCT_COPY_FILES += 	device/utbm/Pied_piper/media/bootanimation.zip:system/media/bootanimation.zip 
DEVICE_PACKAGE_OVERLAYS := device/utbm/Pied_piper/overlay

PRODUCT_PACKAGES+= libusb-pplib mlbin libmlbin_jni com.android.PiedPiper.InitUsb.xml com.android.PiedPiper.InitUsb


PRODUCT_NAME:= Pied_piper
PRODUCT_DEVICE:= Pied_piper
PRODUCT_BRAND:= Android
PRODUCT_MODEL:= Android
