.class final Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal;
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
.method public cancelRequest(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostCancelRequestParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostCancelRequestParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostCancelRequestParams;->requestId:I

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

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public closeDevice(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostCloseDeviceParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostCloseDeviceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostCloseDeviceParams;->label:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public generateStreams(ILorg/chromium/blink/mojom/StreamControls;ZLorg/chromium/blink/mojom/StreamSelectionInfo;Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$GenerateStreams_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGenerateStreamsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGenerateStreamsParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGenerateStreamsParams;->requestId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGenerateStreamsParams;->controls:Lorg/chromium/blink/mojom/StreamControls;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGenerateStreamsParams;->userGesture:Z

    iput-object p4, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGenerateStreamsParams;->audioStreamSelectionInfo:Lorg/chromium/blink/mojom/StreamSelectionInfo;

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

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGenerateStreamsResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGenerateStreamsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$GenerateStreams_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getOpenDevice(ILorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$GetOpenDevice_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGetOpenDeviceParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGetOpenDeviceParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGetOpenDeviceParams;->requestId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGetOpenDeviceParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p3, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGetOpenDeviceParams;->transferId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const/4 v3, 0x6

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGetOpenDeviceResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostGetOpenDeviceResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$GetOpenDevice_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public keepDeviceAliveForTransfer(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$KeepDeviceAliveForTransfer_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostKeepDeviceAliveForTransferParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostKeepDeviceAliveForTransferParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostKeepDeviceAliveForTransferParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostKeepDeviceAliveForTransferParams;->transferId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const/4 v4, 0x7

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostKeepDeviceAliveForTransferResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostKeepDeviceAliveForTransferResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$KeepDeviceAliveForTransfer_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public openDevice(ILjava/lang/String;ILorg/chromium/blink/mojom/MediaStreamDispatcherHost$OpenDevice_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceParams;->requestId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceParams;->deviceId:Ljava/lang/String;

    iput p3, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceParams;->type:I

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

    new-instance p2, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$OpenDevice_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setCapturingLinkSecured(Lorg/chromium/mojo_base/mojom/UnguessableToken;IZ)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostSetCapturingLinkSecuredParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostSetCapturingLinkSecuredParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostSetCapturingLinkSecuredParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput p2, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostSetCapturingLinkSecuredParams;->type:I

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostSetCapturingLinkSecuredParams;->isSecure:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public stopStreamDevice(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostStopStreamDeviceParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostStopStreamDeviceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostStopStreamDeviceParams;->deviceId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostStopStreamDeviceParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
