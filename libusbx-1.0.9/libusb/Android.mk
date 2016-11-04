LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := core.c descriptor.c io.c sync.c
LOCAL_MODULE :=libusb-lib 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include\
$(LOCAL_PATH)/os
LOCAL_MODULE_TAGS :=otpional
include(BUILD_SHARED_LIBRARY)

