# Copyright (c) 2011 Sirocco Mobile Sp. z o.o.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libdum

LOCAL_CPP_EXTENSION := .cxx

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../ 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../openssl-1.0.2d/include

LOCAL_STATIC_LIBRARIES += librutil libresip 

LOCAL_CFLAGS := -DUSE_SSL

LOCAL_SRC_FILES := \
	AppDialog.cxx \
	AppDialogSet.cxx \
	AppDialogSetFactory.cxx \
	BaseCreator.cxx \
	BaseSubscription.cxx \
	BaseUsage.cxx \
	CertMessage.cxx \
	UserAuthInfo.cxx \
	ChallengeInfo.cxx \
	ClientAuthManager.cxx \
	ClientAuthExtension.cxx \
	ClientInviteSession.cxx \
	ClientOutOfDialogReq.cxx \
	ClientPagerMessage.cxx \
	ClientPublication.cxx \
	ClientRegistration.cxx \
	ClientSubscription.cxx \
	ContactInstanceRecord.cxx \
	DefaultServerReferHandler.cxx \
	DestroyUsage.cxx \
	Dialog.cxx \
	DialogEventInfo.cxx \
	DialogEventStateManager.cxx \
	DialogId.cxx \
	DialogSet.cxx \
	DialogSetId.cxx \
	DialogUsage.cxx \
	DialogUsageManager.cxx \
	DumProcessHandler.cxx \
	DumThread.cxx \
	DumTimeout.cxx \
	HandleException.cxx \
	HandleManager.cxx \
	Handle.cxx \
	Handled.cxx \
	InMemoryRegistrationDatabase.cxx \
	InMemorySyncRegDb.cxx \
	InviteSession.cxx \
	InviteSessionCreator.cxx \
	InviteSessionHandler.cxx \
	MergedRequestKey.cxx \
	NonDialogUsage.cxx \
	OutOfDialogReqCreator.cxx \
	PagerMessageCreator.cxx \
	MasterProfile.cxx \
	UserProfile.cxx \
	Profile.cxx \
	PublicationCreator.cxx \
	RADIUSServerAuthManager.cxx \
	RedirectManager.cxx \
	RegistrationCreator.cxx \
	RegistrationHandler.cxx \
	ServerAuthManager.cxx \
	ServerInviteSession.cxx \
	ServerOutOfDialogReq.cxx \
	ServerPagerMessage.cxx \
	ServerPublication.cxx \
	ServerRegistration.cxx \
	ServerSubscription.cxx \
	SubscriptionHandler.cxx \
	SubscriptionCreator.cxx \
	SubscriptionState.cxx \
	KeepAliveManager.cxx \
	KeepAliveTimeout.cxx \
	NetworkAssociation.cxx \
	DumDecrypted.cxx \
	DumFeatureChain.cxx \
	DumFeatureMessage.cxx \
	IdentityHandler.cxx \
	TargetCommand.cxx \
	DumFeature.cxx \
	OutgoingEvent.cxx \
	HttpProvider.cxx \
	HttpGetMessage.cxx \
	DumHelper.cxx \
	MergedRequestRemovalCommand.cxx \
	WsCookieAuthManager.cxx \
    ssl/EncryptionManager.cxx

include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)
