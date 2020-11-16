LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := example-hpvm-sum-prebuilt
LOCAL_SRC_FILES := $(LOCAL_PATH)/libs/libexample-hpvm-sum.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := hpvm-sum
LOCAL_SRC_FILES := main.cpp
LOCAL_SHARED_LIBRARIES := example-hpvm-sum-prebuilt
LOCAL_LDLIBS := -llog -lstdc++
include $(BUILD_SHARED_LIBRARY)
