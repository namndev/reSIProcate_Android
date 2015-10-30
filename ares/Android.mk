# Copyright (c) 2011 Sirocco Mobile Sp. z o.o.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libares

LOCAL_CPP_EXTENSION := .cxx

LOCAL_C_INCLUDES += $(LOCAL_PATH)/


LOCAL_SRC_FILES := \
	ares__close_sockets.c ares__get_hostent.c ares__read_line.c \
	ares_destroy.c ares_expand_name.c ares_fds.c ares_free_errmem.c \
	ares_free_hostent.c ares_free_string.c ares_gethostbyaddr.c \
	ares_gethostbyname.c ares_init.c ares_mkquery.c ares_parse_a_reply.c \
	ares_parse_ptr_reply.c ares_process.c ares_query.c ares_search.c \
	ares_send.c ares_strerror.c ares_timeout.c ares_local.c


include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)