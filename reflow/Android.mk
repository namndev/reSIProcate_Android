# Copyright (c) 2011 Sirocco Mobile Sp. z o.o.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := reflow

LOCAL_CPP_EXTENSION := .cxx

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ares
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../srtp/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../srtp/crypto/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../boost_1_57_0
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../boost_1_57_0/boost
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../openssl-1.0.2d/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../reTurn
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../reTurn/client

#PACKAGES += ASIO RUTIL ARES OPENSSL BOOST PTHREAD
#LOCAL_STATIC_LIBRARIES += librutil

LOCAL_STATIC_LIBRARIES += libboost_system
LOCAL_STATIC_LIBRARIES += libcrypto
LOCAL_STATIC_LIBRARIES += libssl
LOCAL_STATIC_LIBRARIES += libreTurn

LOCAL_CFLAGS := -DUSE_SSL
LOCAL_CFLAGS += -DOPENSSL_NO_ENGINE

LOCAL_SRC_FILES := \
        FakeSelectSocketDescriptor.cxx \
        FlowManagerSubsystem.cxx \
        MediaStream.cxx \
        Flow.cxx \
        FlowManager.cxx \
        FlowDtlsSocketContext.cxx \
   
#nie uzywamy DTLS - kompilacja wylaczona
#        FlowDtlsSocketContext.cxx \
#        FlowDtlsTimerContext.cxx \
#        dtls_wrapper/DtlsTimer.cxx \
#        dtls_wrapper/DtlsSocket.cxx \
#        dtls_wrapper/DtlsFactory.cxx \
#        dtls_wrapper/bf_dwrap.c
        
include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)
