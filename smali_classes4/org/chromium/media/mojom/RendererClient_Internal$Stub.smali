.class final Lorg/chromium/media/mojom/RendererClient_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/RendererClient_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media/mojom/RendererClient;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media/mojom/RendererClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

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

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnWaitingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnWaitingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnWaitingParams;->reason:I

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/RendererClient;->onWaiting(I)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnStatisticsUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnStatisticsUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget-object p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnStatisticsUpdateParams;->stats:Lorg/chromium/media/mojom/PipelineStatistics;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/RendererClient;->onStatisticsUpdate(Lorg/chromium/media/mojom/PipelineStatistics;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoOpacityChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoOpacityChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoOpacityChangeParams;->opaque:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/RendererClient;->onVideoOpacityChange(Z)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoNaturalSizeChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoNaturalSizeChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget-object p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoNaturalSizeChangeParams;->size:Lorg/chromium/gfx/mojom/Size;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/RendererClient;->onVideoNaturalSizeChange(Lorg/chromium/gfx/mojom/Size;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoConfigChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoConfigChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget-object p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoConfigChangeParams;->config:Lorg/chromium/media/mojom/VideoDecoderConfig;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/RendererClient;->onVideoConfigChange(Lorg/chromium/media/mojom/VideoDecoderConfig;)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnAudioConfigChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnAudioConfigChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget-object p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnAudioConfigChangeParams;->config:Lorg/chromium/media/mojom/AudioDecoderConfig;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/RendererClient;->onAudioConfigChange(Lorg/chromium/media/mojom/AudioDecoderConfig;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget-object p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnErrorParams;->status:Lorg/chromium/media/mojom/PipelineStatus;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/RendererClient;->onError(Lorg/chromium/media/mojom/PipelineStatus;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnLiveStreamVideoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnLiveStreamVideoParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget-boolean v1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnLiveStreamVideoParams;->seekForward:Z

    iget-boolean p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnLiveStreamVideoParams;->seekBackward:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/RendererClient;->onLiveStreamVideo(ZZ)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnEndedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnEndedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    invoke-interface {p0}, Lorg/chromium/media/mojom/RendererClient;->onEnded()V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnBufferingStateChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnBufferingStateChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget v1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnBufferingStateChangeParams;->state:I

    iget p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnBufferingStateChangeParams;->reason:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/RendererClient;->onBufferingStateChange(II)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnTimeUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnTimeUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/RendererClient;

    iget-object v1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnTimeUpdateParams;->time:Lorg/chromium/mojo_base/mojom/TimeDelta;

    iget-object v3, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnTimeUpdateParams;->maxTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    iget-object p1, p1, Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnTimeUpdateParams;->captureTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/media/mojom/RendererClient;->onTimeUpdate(Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/mojo_base/mojom/TimeTicks;)V

    return v2

    :pswitch_c
    sget-object p0, Lorg/chromium/media/mojom/RendererClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/media/mojom/RendererClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
