LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
PATH_TO_FFMPEG_SOURCE:=$(LOCAL_PATH)/ffmpeg
LOCAL_C_INCLUDES += $(PATH_TO_FFMPEG_SOURCE)
LOCAL_LDLIBS :=-L$(SYSROOT)/usr/lib -llog -lffmpeg
LOCAL_MODULE    := H264Android
LOCAL_SRC_FILES := H264Android.c g726.c

include $(BUILD_SHARED_LIBRARY)