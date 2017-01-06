LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)



LOCAL_SRC_FILES := mlbin.c

LOCAL_C_INCLUDES += 	device/utbm/Pied_piper/libusb/include\
			device/utbm/Pied_piper/libusb/os

LOCAL_SHARED_LIBRARIES := libusb-pplib

LOCAL_MODULE := mlbin 
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := libusb-pplib\
			libutils\
			libcutils

LOCAL_SRC_FILES := mlbin_jni.c
LOCAL_MODULE := libmlbin_jni 
LOCAL_C_INCLUDES += 	device/utbm/Pied_piper/libusb/include\
			device/utbm/Pied_piper/libusb/os\
			$(JNI_H_INCLUDE)
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := com.android.PiedPiper.InitUsb.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	$(call all-java-files-under, java)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= com.android.PiedPiper.InitUsb
include $(BUILD_JAVA_LIBRARY)

