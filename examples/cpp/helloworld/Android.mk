LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := greeter_client
LOCAL_SRC_FILES := helloworld.pb.cc helloworld.grpc.pb.cc greeter_client.cc
LOCAL_CPP_EXTENSION := cc
LOCAL_CPPFLAGS := -std=c++11 -pthread
include external/libcxx/libcxx.mk
include external/grpc/libgrpc.mk
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := greeter_server
LOCAL_SRC_FILES := helloworld.pb.cc helloworld.grpc.pb.cc greeter_server.cc
LOCAL_CPP_EXTENSION := cc
LOCAL_CPPFLAGS := -std=c++11 -pthread
include external/libcxx/libcxx.mk
include external/grpc/libgrpc.mk
include $(BUILD_EXECUTABLE)
