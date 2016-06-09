
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := tox4j
LOCAL_SRC_FILES :=

LOCAL_C_INCLUDES += \
    $(JNI_H_INCLUDE) \
					
LOCAL_SHARED_LIBRARIES := \
    libandroid_runtime \
    libnativehelper \
    libcutils \
    libutils \
    liblog \
    libhardware

LOCAL_LDLIBS := -llog -lm

include $(BUILD_SHARED_LIBRARY)
