LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LIB_SRC_FILES := \
	json_reader.cpp \
	json_value.cpp \
	json_writer.cpp


LIB_SRC_FILES := $(addprefix $(LOCAL_PATH)/src/, $(LIB_SRC_FILES))
#$(info $(LIB_SRC_FILES))
EXPORT_HEADERS := json.h

# jpegturbo module
include $(CLEAR_VARS)
LOCAL_MODULE:= jsoncpp
LOCAL_CFLAGS := -D__STDC_LIMIT_MACROS -D__STDC_CONSTANT_MACROS -Wno-attributes -fexceptions
LOCAL_SRC_FILES := $(LIB_SRC_FILES)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SHARED_LIBRARIES := gnustl_shared
LOCAL_COPY_HEADERS_TO := ../shared-jpegturbo/includes
LOCAL_COPY_HEADERS := $(addprefix $(LOCAL_PATH)/include, $(EXPORT_HEADERS))
include $(BUILD_SHARED_LIBRARY)



#all: $(LOCAL_PATH)/../lib/$(notdir $(LOCAL_BUILT_MODULE))

#$(LOCAL_PATH)/../lib/$(notdir $(LOCAL_BUILT_MODULE)): $(LOCAL_BUILT_MODULE)
#	cp $(wildcard $(LOCAL_PATH)/include/*.h ../shared-jpegturbo/includes)