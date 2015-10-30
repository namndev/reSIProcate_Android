
LOCAL_PATH := $(call my-dir)
SRC_PATH := $(LOCAL_PATH)

include $(CLEAR_VARS)

# webrtc
#include $(SRC_PATH)/webrtc/Android.mk

include $(SRC_PATH)/resiprocate/ares/Android.mk

# srtp
include $(SRC_PATH)/resiprocate/srtp/Android.mk

# librutil
include $(SRC_PATH)/resiprocate/rutil/Android.mk

# libresip
include $(SRC_PATH)/resiprocate/resip/stack/Android.mk

# libdum
include $(SRC_PATH)/resiprocate/resip/dum/Android.mk

# boost.system
include $(SRC_PATH)/boost_1_57_0/libs/system/Android.mk

# reTurn
include $(SRC_PATH)/resiprocate/reTurn/Android.mk

# flow
include $(SRC_PATH)/resiprocate/reflow/Android.mk

# commonlib
#include $(SRC_PATH)/commonlib/Android.mk

# AudioStats
#include $(SRC_PATH)/AudioStats/Android.mk

# streamtransport
#include $(SRC_PATH)/streamtransport/Android.mk

# audiomgr
#include $(SRC_PATH)/audiomgr/Android.mk

# zlib
#include $(SRC_PATH)/zlib/Android.mk

# openssl
include $(SRC_PATH)/openssl-1.0.2d/Android.mk

SIPX_HOME := $(SRC_PATH)

# libspeex
#include $(SIPX_HOME)/sipXmediaLib/contrib/libspeex/Android.mk

#include $(SIPX_HOME)/sipXportLib/Android.mk

#include $(SIPX_HOME)/sipXmediaLib/Android.mk

# libopus
#include $(SIPX_HOME)/sipXmediaLib/contrib/libopus/Android.mk

# libandroidwrapper
#include $(SRC_PATH)/resiprocatejni/Android.mk
