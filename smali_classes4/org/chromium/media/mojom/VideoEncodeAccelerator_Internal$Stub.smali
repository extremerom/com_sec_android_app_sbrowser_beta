.class final Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media/mojom/VideoEncodeAccelerator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media/mojom/VideoEncodeAccelerator;)V
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

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoEncodeAccelerator;

    iget-object v1, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;->bitrate:Lorg/chromium/media/mojom/Bitrate;

    iget v2, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;->framerate:I

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;->size:Lorg/chromium/gfx/mojom/Size;

    invoke-interface {p0, v1, v2, p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator;->requestEncodingParametersChangeWithBitrate(Lorg/chromium/media/mojom/Bitrate;ILorg/chromium/gfx/mojom/Size;)V

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoEncodeAccelerator;

    iget-object v1, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;->bitrateAllocation:Lorg/chromium/media/mojom/VideoBitrateAllocation;

    iget v2, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;->framerate:I

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;->size:Lorg/chromium/gfx/mojom/Size;

    invoke-interface {p0, v1, v2, p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator;->requestEncodingParametersChangeWithLayers(Lorg/chromium/media/mojom/VideoBitrateAllocation;ILorg/chromium/gfx/mojom/Size;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/VideoEncodeAccelerator;

    iget v1, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;->bitstreamBufferId:I

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;->region:Lorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator;->useOutputBitstreamBuffer(ILorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;)V

    return v4

    :cond_5
    sget-object p0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator;

    new-instance v2, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/media/mojom/VideoEncodeAccelerator;->flush(Lorg/chromium/media/mojom/VideoEncodeAccelerator$Flush_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator;

    new-instance v2, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/media/mojom/VideoEncodeAccelerator;->isFlushSupported(Lorg/chromium/media/mojom/VideoEncodeAccelerator$IsFlushSupported_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/VideoEncodeAccelerator;

    iget-object v3, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;->frame:Lorg/chromium/media/mojom/VideoFrame;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;->options:Lorg/chromium/media/mojom/VideoEncodeOptions;

    new-instance v5, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, p1, v5}, Lorg/chromium/media/mojom/VideoEncodeAccelerator;->encode(Lorg/chromium/media/mojom/VideoFrame;Lorg/chromium/media/mojom/VideoEncodeOptions;Lorg/chromium/media/mojom/VideoEncodeAccelerator$Encode_Response;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/VideoEncodeAccelerator;

    iget-object v3, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;->config:Lorg/chromium/media/mojom/VideoEncodeAcceleratorConfig;

    iget-object v5, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iget-object p1, p1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;->mediaLog:Lorg/chromium/media/mojom/MediaLog;

    new-instance v6, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v5, p1, v6}, Lorg/chromium/media/mojom/VideoEncodeAccelerator;->initialize(Lorg/chromium/media/mojom/VideoEncodeAcceleratorConfig;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/MediaLog;Lorg/chromium/media/mojom/VideoEncodeAccelerator$Initialize_Response;)V

    return v4

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
