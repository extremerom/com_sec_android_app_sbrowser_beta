.class final Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetCaptureHandleConfigParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetCaptureHandleConfigParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetCaptureHandleConfigParams;->config:Lorg/chromium/blink/mojom/CaptureHandleConfig;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->setCaptureHandleConfig(Lorg/chromium/blink/mojom/CaptureHandleConfig;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    iget-boolean v1, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->subscribeAudioInput:Z

    iget-boolean v2, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->subscribeVideoInput:Z

    iget-boolean v4, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->subscribeAudioOutput:Z

    iget-object p1, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostAddMediaDevicesListenerParams;->listener:Lorg/chromium/blink/mojom/MediaDevicesListener;

    invoke-interface {p0, v1, v2, v4, p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->addMediaDevicesListener(ZZZLorg/chromium/blink/mojom/MediaDevicesListener;)V

    return v3

    :cond_4
    sget-object p0, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_9

    if-eqz v3, :cond_8

    if-eq v3, v4, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    if-eq v3, v2, :cond_4

    const/4 v2, 0x7

    if-eq v3, v2, :cond_3

    const/16 v2, 0x8

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputParams;->deviceId:Ljava/lang/String;

    new-instance v3, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSelectAudioOutputResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->selectAudioOutput(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SelectAudioOutput_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdParams;->sinkId:Ljava/lang/String;

    new-instance v3, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostSetPreferredSinkIdResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->setPreferredSinkId(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$SetPreferredSinkId_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    new-instance v2, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAudioInputCapabilitiesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->getAudioInputCapabilities(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAudioInputCapabilities_Response;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsParams;->deviceId:Ljava/lang/String;

    new-instance v3, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAvailableVideoInputDeviceFormatsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->getAvailableVideoInputDeviceFormats(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAvailableVideoInputDeviceFormats_Response;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsParams;->deviceId:Ljava/lang/String;

    new-instance v3, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetAllVideoInputDeviceFormatsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->getAllVideoInputDeviceFormats(Ljava/lang/String;Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetAllVideoInputDeviceFormats_Response;)V

    return v4

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    new-instance v2, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostGetVideoInputCapabilitiesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->getVideoInputCapabilities(Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost$GetVideoInputCapabilities_Response;)V

    return v4

    :cond_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;

    iget-boolean v6, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestAudioInput:Z

    iget-boolean v7, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestVideoInput:Z

    iget-boolean v8, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestAudioOutput:Z

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestVideoInputCapabilities:Z

    iget-boolean v10, p1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesParams;->requestAudioInputCapabilities:Z

    new-instance v11, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal$MediaDevicesDispatcherHostEnumerateDevicesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v11}, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost;->enumerateDevices(ZZZZZLorg/chromium/blink/mojom/MediaDevicesDispatcherHost$EnumerateDevices_Response;)V

    return v4

    :cond_9
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/MediaDevicesDispatcherHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
