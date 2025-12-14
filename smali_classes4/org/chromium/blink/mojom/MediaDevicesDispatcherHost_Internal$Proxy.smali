.class final Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal;
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
.method public addMediaDevicesListener(ZZZLorg/chromium/blink/mojom/MediaDevicesListener;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->subscribeAudioInput:Z

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->subscribeVideoInput:Z

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->subscribeAudioOutput:Z

    iput-object p4, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->listener:Lorg/chromium/blink/mojom/MediaDevicesListener;

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

.method public enumerateDevices(ZZZZZLorg/chromium/blink/mojom/MediaDevicesDispatcherHost$EnumerateDevices_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestAudioInput:Z

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestVideoInput:Z

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestAudioOutput:Z

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestVideoInputCapabilities:Z

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestAudioInputCapabilities:Z

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

    const-wide/16 p4, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$EnumerateDevices_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getAllVideoInputDeviceFormats(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAllVideoInputDeviceFormats_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsParams;->deviceId:Ljava/lang/String;

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

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAllVideoInputDeviceFormats_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getAudioInputCapabilities(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAudioInputCapabilities_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAudioInputCapabilities_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getAvailableVideoInputDeviceFormats(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAvailableVideoInputDeviceFormats_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsParams;->deviceId:Ljava/lang/String;

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

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAvailableVideoInputDeviceFormats_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getVideoInputCapabilities(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetVideoInputCapabilities_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetVideoInputCapabilities_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public selectAudioOutput(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SelectAudioOutput_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputParams;->deviceId:Ljava/lang/String;

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

    const/16 v5, 0x8

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SelectAudioOutput_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setCaptureHandleConfig(Lorg/chromium/blink/mojom/CaptureHandleConfig;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetCaptureHandleConfigParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetCaptureHandleConfigParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetCaptureHandleConfigParams;->config:Lorg/chromium/blink/mojom/CaptureHandleConfig;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setPreferredSinkId(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SetPreferredSinkId_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdParams;->sinkId:Ljava/lang/String;

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

    new-instance v0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SetPreferredSinkId_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
