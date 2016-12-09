LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := libusb-lib

LOCAL_SRC_FILES := mlbin.c
LOCAL_MODULE := mlbin 
LOCAL_C_INCLUDES += 	$(LOCAL_PATH)/../libusbx-1.0.9/libusb/include\
			$(LOCAL_PATH)/../libusbx-1.0.9/libusb/os
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := libusb-lib\
			libutils\
			libcutils

LOCAL_SRC_FILES := mlbin_jni.c
LOCAL_MODULE := libmlbin_jni 
LOCAL_C_INCLUDES += 	$(LOCAL_PATH)/../libusbx-1.0.9/libusb/include\
			$(LOCAL_PATH)/../libusbx-1.0.9/libusb/os\
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

