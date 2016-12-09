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



