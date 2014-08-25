LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := chargeservice
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES_LOCAL
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := chargeleds.c
LOCAL_MODULE:= chargeleds
LOCAL_STATIC_LIBRARIES := libc libcutils libm libstdc++ libz
LOCAL_SHARED_LIBRARIES := libdl
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := check.c
LOCAL_MODULE:= check
LOCAL_STATIC_LIBRARIES := libc libcutils libm libstdc++ libz
LOCAL_SHARED_LIBRARIES := libdl
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

