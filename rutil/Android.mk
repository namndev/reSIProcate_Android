# Copyright (c) 2011 Sirocco Mobile Sp. z o.o.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := librutil

LOCAL_CPP_EXTENSION := .cxx

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../ares
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../openssl-1.0.2d/include

LOCAL_STATIC_LIBRARIES += libares \
	libcrypto \
	libssl \

LOCAL_CFLAGS += -DUSE_ARES
LOCAL_CFLAGS += -DUSE_SSL

LOCAL_SRC_FILES := \
	AbstractFifo.cxx \
	BaseException.cxx \
	Coders.cxx \
	Condition.cxx \
	ConfigParse.cxx \
	CountStream.cxx \
	Data.cxx \
	DataStream.cxx \
	Lock.cxx \
	Mutex.cxx \
	Time.cxx \
	Log.cxx \
	Subsystem.cxx \
	ParseBuffer.cxx \
	vmd5.cxx \
	Random.cxx \
	ThreadIf.cxx \
	SysLogStream.cxx \
	ParseException.cxx \
	SysLogBuf.cxx \
	DnsUtil.cxx \
	FileSystem.cxx \
	HeapInstanceCounter.cxx \
	MD5Stream.cxx \
	Poll.cxx \
	PoolBase.cxx \
	FdPoll.cxx \
	RADIUSDigestAuthenticator.cxx \
	RWMutex.cxx \
	RecursiveMutex.cxx \
	resipfaststreams.cxx \
	Socket.cxx \
	Timer.cxx \
	TransportType.cxx \
	dns/AresDns.cxx \
	dns/DnsCnameRecord.cxx \
	dns/DnsAAAARecord.cxx \
	dns/DnsHostRecord.cxx \
	dns/DnsNaptrRecord.cxx \
	dns/DnsResourceRecord.cxx \
	dns/DnsSrvRecord.cxx \
	dns/DnsStub.cxx \
	dns/ExternalDnsFactory.cxx \
	dns/DnsThread.cxx \
	dns/RRCache.cxx \
	dns/RRList.cxx \
	dns/RRVip.cxx \
	dns/QueryTypes.cxx \
	dns/RROverlay.cxx \
	stun/Stun.cxx \
	stun/Udp.cxx \
	ssl/SHA1Stream.cxx \
	ssl/OpenSSLInit.cxx \
	SelectInterruptor.cxx \
	XMLCursor.cxx \
#	DigestStream.cxx


include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)
