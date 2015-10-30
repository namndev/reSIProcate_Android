# Copyright (c) 2011 Sirocco Mobile Sp. z o.o.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libresip

LOCAL_CPP_EXTENSION := .cxx

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../ 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../contrib/ares
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../openssl-1.0.2d/include

LOCAL_CFLAGS := -DUSE_SSL

LOCAL_STATIC_LIBRARIES += librutil
LOCAL_STATIC_LIBRARIES += libcrypto
LOCAL_STATIC_LIBRARIES += libssl

LOCAL_SRC_FILES := \
	SipStack.cxx \
	Auth.cxx \
	CSeqCategory.cxx \
	CallId.cxx \
	DateCategory.cxx \
	DayOfWeekHash.cxx \
	ExpiresCategory.cxx \
	GenericUri.cxx \
	IntegerCategory.cxx \
	InteropHelper.cxx \
	UInt32Category.cxx \
	Mime.cxx \
	NameAddr.cxx \
	RequestLine.cxx \
	StatusLine.cxx \
	StringCategory.cxx \
	Token.cxx \
	Via.cxx \
	WarningCategory.cxx \
	Aor.cxx \
	ApiCheck.cxx \
	ApplicationSip.cxx \
	BasicNonceHelper.cxx \
	BranchParameter.cxx \
	Connection.cxx \
	ConnectionBase.cxx \
	Cookie.cxx \
	ConnectionManager.cxx \
	Contents.cxx \
	ContentsFactoryBase.cxx \
	CpimContents.cxx \
	DataParameter.cxx \
	DeprecatedDialog.cxx \
	DnsInterface.cxx \
	DnsResult.cxx \
	DtlsMessage.cxx \
	Embedded.cxx \
	ExtensionParameter.cxx \
	ExtensionHeader.cxx \
	ExistsOrDataParameter.cxx \
	ExistsParameter.cxx \
	ExternalBodyContents.cxx \
	QValue.cxx \
	QValueParameter.cxx \
	GenericContents.cxx \
	HeaderFieldValue.cxx \
	HeaderFieldValueList.cxx \
	HeaderHash.cxx \
	HeaderTypes.cxx \
	Headers.cxx \
	Helper.cxx \
	IntegerParameter.cxx \
	UInt32Parameter.cxx \
	InternalTransport.cxx \
	LazyParser.cxx \
	Message.cxx \
	MessageWaitingContents.cxx \
	MethodHash.cxx \
	MethodTypes.cxx \
	MonthHash.cxx \
	MsgHeaderScanner.cxx \
	MultipartAlternativeContents.cxx \
	MultipartMixedContents.cxx \
	MultipartRelatedContents.cxx \
	MultipartSignedContents.cxx \
	NonceHelper.cxx \
	OctetContents.cxx \
	Parameter.cxx \
	ParameterHash.cxx \
	ParameterTypes.cxx \
	ParserCategory.cxx \
	ParserContainerBase.cxx \
	Pidf.cxx \
	Pkcs7Contents.cxx \
	Pkcs8Contents.cxx \
	PlainContents.cxx \
	PrivacyCategory.cxx \
	QuotedDataParameter.cxx \
	RAckCategory.cxx \
	Rlmi.cxx \
	RportParameter.cxx \
	SERNonceHelper.cxx \
	SdpContents.cxx \
	SecurityAttributes.cxx \
	Compression.cxx \
	SipFrag.cxx \
	SipMessage.cxx \
	StackThread.cxx \
	InterruptableStackThread.cxx \
	EventStackThread.cxx \
	StatisticsHandler.cxx \
	StatisticsManager.cxx \
	StatisticsMessage.cxx \
	Symbols.cxx \
	TcpBaseTransport.cxx \
	TcpConnection.cxx \
	TcpTransport.cxx \
	TimeAccumulate.cxx \
	TimerMessage.cxx \
	TimerQueue.cxx \
	TokenOrQuotedStringCategory.cxx \
	Tuple.cxx \
	TupleMarkManager.cxx \
	TransactionController.cxx \
	MessageFilterRule.cxx \
	TransactionUser.cxx \
	TransactionUserMessage.cxx \
	TransactionMap.cxx \
	TransactionState.cxx \
	TcpConnectState.cxx \
	Transport.cxx \
	TransportFailure.cxx \
	TransportSelector.cxx \
	TuIM.cxx \
	TuSelector.cxx \
	UdpTransport.cxx \
	UnknownParameter.cxx \
	Uri.cxx \
	X509Contents.cxx \
	KeepAliveMessage.cxx \
	StatelessHandler.cxx \
	InvalidContents.cxx \
	WsCookieContext.cxx \
	WsFrameExtractor.cxx \
	WsConnection.cxx \
	WsConnectionBase.cxx \
	WsBaseTransport.cxx \
	WsDecorator.cxx \
	WsTransport.cxx \
	ssl/Security.cxx  \
	ssl/TlsBaseTransport.cxx \
	ssl/TlsConnection.cxx \
	ssl/TlsTransport.cxx \
	ssl/WssConnection.cxx \
	ssl/WssTransport.cxx
include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)
