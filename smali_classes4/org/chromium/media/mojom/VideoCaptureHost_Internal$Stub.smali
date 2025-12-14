.class final Lorg/chromium/media/mojom/VideoCaptureHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/VideoCaptureHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media/mojom/VideoCaptureHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media/mojom/VideoCaptureHost;)V
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

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_9

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eq v1, v3, :cond_8

    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostReleaseBufferParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostReleaseBufferParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object v1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostReleaseBufferParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget v2, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostReleaseBufferParams;->bufferId:I

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostReleaseBufferParams;->feedback:Lorg/chromium/media/mojom/VideoCaptureFeedback;

    invoke-interface {p0, v1, v2, p1}, Lorg/chromium/media/mojom/VideoCaptureHost;->releaseBuffer(Lorg/chromium/mojo_base/mojom/UnguessableToken;ILorg/chromium/media/mojom/VideoCaptureFeedback;)V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostRequestRefreshFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostRequestRefreshFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostRequestRefreshFrameParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/VideoCaptureHost;->requestRefreshFrame(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostResumeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostResumeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object v1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostResumeParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v2, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostResumeParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostResumeParams;->params:Lorg/chromium/media/mojom/VideoCaptureParams;

    invoke-interface {p0, v1, v2, p1}, Lorg/chromium/media/mojom/VideoCaptureHost;->resume(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoCaptureParams;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostPauseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostPauseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostPauseParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/VideoCaptureHost;->pause(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStopParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStopParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStopParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/VideoCaptureHost;->stop(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v4

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStartParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStartParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object v1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStartParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v2, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStartParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v3, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStartParams;->params:Lorg/chromium/media/mojom/VideoCaptureParams;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostStartParams;->observer:Lorg/chromium/media/mojom/VideoCaptureObserver;

    invoke-interface {p0, v1, v2, v3, p1}, Lorg/chromium/media/mojom/VideoCaptureHost;->start(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoCaptureParams;Lorg/chromium/media/mojom/VideoCaptureObserver;)V

    return v4

    :cond_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostOnLogParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostOnLogParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object v1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostOnLogParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostOnLogParams;->message:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/VideoCaptureHost;->onLog(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V

    return v4

    :cond_9
    sget-object p0, Lorg/chromium/media/mojom/VideoCaptureHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    const/4 v4, 0x7

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object v4, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v5, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceFormatsInUseResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/media/mojom/VideoCaptureHost;->getDeviceFormatsInUse(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoCaptureHost$GetDeviceFormatsInUse_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/VideoCaptureHost;

    iget-object v4, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsParams;->deviceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsParams;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v5, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/media/mojom/VideoCaptureHost_Internal$VideoCaptureHostGetDeviceSupportedFormatsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/media/mojom/VideoCaptureHost;->getDeviceSupportedFormats(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoCaptureHost$GetDeviceSupportedFormats_Response;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/media/mojom/VideoCaptureHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
