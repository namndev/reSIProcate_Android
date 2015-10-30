# Copyright (c) 2011 Sirocco Mobile Sp. z o.o.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := reTurn

LOCAL_CPP_EXTENSION := .cxx

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../contrib/ares
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../boost_1_57_0
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../boost_1_57_0/boost
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../openssl-1.0.2d/include

#PACKAGES += ASIO RUTIL ARES OPENSSL BOOST PTHREAD
LOCAL_STATIC_LIBRARIES += libcrypto
LOCAL_STATIC_LIBRARIES += libssl
LOCAL_STATIC_LIBRARIES += librutil

LOCAL_CFLAGS := -DUSE_SSL

LOCAL_SRC_FILES := \
        AsyncSocketBase.cxx \
        AsyncUdpSocketBase.cxx \
        AsyncTcpSocketBase.cxx \
        ChannelManager.cxx \
        ConnectionManager.cxx \
        DataBuffer.cxx \
        RemotePeer.cxx \
        RequestHandler.cxx \
        ReTurnConfig.cxx \
        ReTurnSubsystem.cxx \
        StunAuth.cxx \
        StunMessage.cxx \
        StunTuple.cxx \
        TcpConnection.cxx \
        TcpServer.cxx \
        TurnAllocation.cxx \
        TurnAllocationKey.cxx \
        TurnAllocationManager.cxx \
        TurnManager.cxx \
        TurnPermission.cxx \
        UdpRelayServer.cxx \
        UdpServer.cxx \
        UserAuthData.cxx \
		client/TurnAsyncSocket.cxx \
		client/TurnAsyncSocketHandler.cxx \
		client/TurnAsyncTcpSocket.cxx \
		client/TurnAsyncUdpSocket.cxx \
		client/TurnSocket.cxx \
		client/TurnTcpSocket.cxx \
		client/TurnUdpSocket.cxx \
 		client/TurnTlsSocket.cxx \
 		client/TurnAsyncTlsSocket.cxx \
        TlsConnection.cxx \
        AsyncTlsSocketBase.cxx 
        
#TODO       TlsServer.cxx
include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)