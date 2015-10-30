# Copyright (c) 2011 Sirocco Mobile Sp. z o.o.
# Copyright (c) 2013 Redefine Sp. z o.o.
# APP_PLATFORM since android-9 support x86 (all32)
# APP_PLATFORM since android-21 support 64bit (all32 and all64)
APP_PLATFORM := android-9
NDK_TOOLCHAIN_VERSION=4.9
APP_PIE := false
#present, APP_ABI x86 error speex and webrtc
APP_ABI := armeabi armeabi-v7a
APP_STL := gnustl_static

#SIPX_LIBS := libsipXport libsipXmedia
RESIPROCATE_LIBS := libares librutil libresip libdum boost_system reTurn reflow srtp 
#freefonjni
OPENSSL_LIBS:= libz 
OPENSSL_LIBS:= libssl libcrypto
#SIPX_CODEC_LIBS := libcodec_speex libcodec_opus libcodec_pcmapcmu
#SIPX_SPEEX_LIBS := libspeex libspeexdsp
#SIPX_OPUS_LIBS := libopus
#WEBRTC_LIBS := libwebrtc_audio_preprocessing
#MAD_LIBS := commonlib streamtransport  audiomgr AudioStats


APP_MODULES := \
    $(APP_EXTRA_LIBS) \
    $(RESIPROCATE_LIBS) \
    $(OPENSSL_LIBS)
#    $(SIPX_CODEC_LIBS) \
#   $(SIPX_LIBS) \
#    $(SIPX_SPEEX_LIBS) \
#    $(SIPX_OPUS_LIBS) \
#    $(MAD_LIBS) \
#    $(WEBRTC_LIBS) \
#    $(ZLIB_LIBS) 

APP_CFLAGS := \
    -D__pingtel_on_posix__ \
    -DANDROID \
    -DDEFINE_S_IREAD_IWRITE \
    -DSIPX_TMPDIR=\"/sdcard\" \
    -DSIPX_CONFDIR=\"/etc/sipx\" \
    -DTEST_DIR=\"/sdcard\" \
    -DOPENSSL_NO_ENGINE

ifeq ($(SSL),true)
APP_CFLAGS += \
			-DUSE_SSL
endif

ifeq ($(ABI),a64)
APP_ABI += arm64-v8a
endif

# Build with full optimization for non-debug builds.
#ifneq ($(NDK_APP_OPTIM),debug)
APP_CFLAGS += -O3
#endif
APP_CFLAGS += -DDEBUG=1

# These are required to be defined for C++ compilation unit before inclusion of
# inttypes.h or stdint.h to get standard C99 macros.  This is required
# by jni/sipXportLib/include/os/OsIntTypes.h.  Note that these flags need to be
# defined only for C++, hence APP_CPPFLAGS, because C defines these macros
# anyway.
APP_CPPFLAGS := \
    -D__STDC_LIMIT_MACROS \
    -D__STDC_CONSTANT_MACROS \
    -D__STDC_FORMAT_MACROS

# since ndk-7b compiler will no longer forcibly enable exceptions and RTTI by default
# enabling those explicitly
APP_GNUSTL_FORCE_CPP_FEATURES := exceptions rtti
