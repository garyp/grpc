# To use grpc, "include external/grpc/libgrpc.mk" in your target.

LOCAL_C_INCLUDES := \
  external/grpc/include \
  external/grpc/third_party/protobuf/src \
  $(LOCAL_C_INCLUDES)
LOCAL_CPPFLAGS += -frtti -Wno-error=non-virtual-dtor -Wno-unused-parameter
LOCAL_LDLIBS += -llog -lz -lgcc
LOCAL_STATIC_LIBRARIES += libgrpc++ libgrpc_unsecure libgrpc libgpr libprotobuf libprotobuf_lite
