ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),pico)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libutils

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.msm7x27a

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
endif # TARGET_BOOTLOADER_BOARD_NAME
