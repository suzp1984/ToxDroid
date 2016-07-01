LOCAL_PATH := $(call my-dir)

# --- declare prebuild libraries

# ---
ifneq (,$(filter $(TARGET_ARCH_ABI),armeabi-v7a))

include $(CLEAR_VARS)
LOCAL_MODULE := sodium
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libsodium.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := opus
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libopus.so.0.5.2
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := vpx
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libvpx.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := toxcore
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libtoxcore.so.0.0.0
LOCAL_SHARED_LIBRARIES := opus sodium
LOCAL_STATIC_LIBRARIES := vpx
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := toxav
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libtoxav.so.0.0.0
LOCAL_SHARED_LIBRARIES := toxcore
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := toxdns
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libtoxdns.so.0.0.0
LOCAL_SHARED_LIBRARIES := toxcore
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := toxencryptsave
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libtoxencryptsave.so.0.0.0
LOCAL_SHARED_LIBRARIES := toxcore
include $(PREBUILT_SHARED_LIBRARY)

endif

# JNI code begin here ---
include $(CLEAR_VARS)

LOCAL_MODULE    := tox4j
LOCAL_SRC_FILES :=

LOCAL_C_INCLUDES += \
    $(JNI_H_INCLUDE) 


LOCAL_SHARED_LIBRARIES := \
	toxcore \
	toxav \
    libandroid_runtime \
    libnativehelper \
    libcutils \
    libutils \
    liblog \
    libhardware

LOCAL_LDLIBS := -llog -lm

include $(BUILD_SHARED_LIBRARY)
