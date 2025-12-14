.class final Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/ContentDecryptionModule$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/ContentDecryptionModule_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public closeSession(Ljava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$CloseSession_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionParams;->sessionId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/ContentDecryptionModule$CloseSession_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createSessionAndGenerateRequest(II[BLorg/chromium/media/mojom/ContentDecryptionModule$CreateSessionAndGenerateRequest_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;->sessionType:I

    iput p2, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;->initDataType:I

    iput-object p3, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;->initData:[B

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/ContentDecryptionModule$CreateSessionAndGenerateRequest_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getStatusForPolicy(ILorg/chromium/media/mojom/ContentDecryptionModule$GetStatusForPolicy_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyParams;->minHdcpVersion:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/ContentDecryptionModule$GetStatusForPolicy_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public loadSession(ILjava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$LoadSession_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionParams;->sessionType:I

    iput-object p2, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionParams;->sessionId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/ContentDecryptionModule$LoadSession_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public removeSession(Ljava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$RemoveSession_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionParams;->sessionId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x7

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/ContentDecryptionModule$RemoveSession_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setClient(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;)V
    .locals 3

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetClientParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetClientParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetClientParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setServerCertificate([BLorg/chromium/media/mojom/ContentDecryptionModule$SetServerCertificate_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateParams;->certificateData:[B

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/ContentDecryptionModule$SetServerCertificate_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateSession(Ljava/lang/String;[BLorg/chromium/media/mojom/ContentDecryptionModule$UpdateSession_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionParams;->sessionId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionParams;->response:[B

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/ContentDecryptionModule$UpdateSession_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
