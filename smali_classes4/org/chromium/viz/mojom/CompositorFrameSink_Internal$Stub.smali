.class final Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/viz/mojom/CompositorFrameSink_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/viz/mojom/CompositorFrameSink;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/viz/mojom/CompositorFrameSink;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 9

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

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetThreadsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetThreadsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/viz/mojom/CompositorFrameSink;

    iget-object p1, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetThreadsParams;->threads:[Lorg/chromium/viz/mojom/Thread;

    invoke-interface {p0, p1}, Lorg/chromium/viz/mojom/CompositorFrameSink;->setThreads([Lorg/chromium/viz/mojom/Thread;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkBindLayerContextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkBindLayerContextParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/viz/mojom/CompositorFrameSink;

    iget-object p1, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkBindLayerContextParams;->context:Lorg/chromium/viz/mojom/PendingLayerContext;

    invoke-interface {p0, p1}, Lorg/chromium/viz/mojom/CompositorFrameSink;->bindLayerContext(Lorg/chromium/viz/mojom/PendingLayerContext;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkInitializeCompositorFrameSinkTypeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkInitializeCompositorFrameSinkTypeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/viz/mojom/CompositorFrameSink;

    iget p1, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkInitializeCompositorFrameSinkTypeParams;->type:I

    invoke-interface {p0, p1}, Lorg/chromium/viz/mojom/CompositorFrameSink;->initializeCompositorFrameSinkType(I)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkDidNotProduceFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkDidNotProduceFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/viz/mojom/CompositorFrameSink;

    iget-object p1, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkDidNotProduceFrameParams;->ack:Lorg/chromium/viz/mojom/BeginFrameAck;

    invoke-interface {p0, p1}, Lorg/chromium/viz/mojom/CompositorFrameSink;->didNotProduceFrame(Lorg/chromium/viz/mojom/BeginFrameAck;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/viz/mojom/CompositorFrameSink;

    iget-object v4, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    iget-object v5, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->frame:Lorg/chromium/viz/mojom/CompositorFrame;

    iget-object v6, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;

    iget-wide v7, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->submitTime:J

    invoke-interface/range {v3 .. v8}, Lorg/chromium/viz/mojom/CompositorFrameSink;->submitCompositorFrame(Lorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;J)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetAutoNeedsBeginFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetAutoNeedsBeginFrameParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/viz/mojom/CompositorFrameSink;

    invoke-interface {p0}, Lorg/chromium/viz/mojom/CompositorFrameSink;->setAutoNeedsBeginFrame()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsBeginFrameAcksParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsBeginFrameAcksParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/viz/mojom/CompositorFrameSink;

    invoke-interface {p0}, Lorg/chromium/viz/mojom/CompositorFrameSink;->setWantsBeginFrameAcks()V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsAnimateOnlyBeginFramesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsAnimateOnlyBeginFramesParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/viz/mojom/CompositorFrameSink;

    invoke-interface {p0}, Lorg/chromium/viz/mojom/CompositorFrameSink;->setWantsAnimateOnlyBeginFrames()V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetNeedsBeginFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetNeedsBeginFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/viz/mojom/CompositorFrameSink;

    iget-boolean p1, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetNeedsBeginFrameParams;->needsBeginFrame:Z

    invoke-interface {p0, p1}, Lorg/chromium/viz/mojom/CompositorFrameSink;->setNeedsBeginFrame(Z)V

    return v2

    :pswitch_a
    sget-object p0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/viz/mojom/CompositorFrameSink;

    iget-object v6, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    iget-object v7, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->frame:Lorg/chromium/viz/mojom/CompositorFrame;

    iget-object v8, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;

    iget-wide v9, p1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->submitTime:J

    new-instance v11, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v11}, Lorg/chromium/viz/mojom/CompositorFrameSink;->submitCompositorFrameSync(Lorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;JLorg/chromium/viz/mojom/CompositorFrameSink$SubmitCompositorFrameSync_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
