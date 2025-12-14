.class final Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/SynchronousCompositor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/SynchronousCompositor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/SynchronousCompositor;)V
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

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetBeginFrameSourcePausedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetBeginFrameSourcePausedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetBeginFrameSourcePausedParams;->paused:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/SynchronousCompositor;->setBeginFrameSourcePaused(Z)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorBeginFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorBeginFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget-object v1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorBeginFrameParams;->args:Lorg/chromium/viz/mojom/BeginFrameArgs;

    iget-object p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorBeginFrameParams;->timingDetails:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/SynchronousCompositor;->beginFrame(Lorg/chromium/viz/mojom/BeginFrameArgs;Ljava/util/Map;)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetScrollParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetScrollParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget-object p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetScrollParams;->offset:Lorg/chromium/gfx/mojom/PointF;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/SynchronousCompositor;->setScroll(Lorg/chromium/gfx/mojom/PointF;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorOnCompositorFrameTransitionDirectiveProcessedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorOnCompositorFrameTransitionDirectiveProcessedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget v1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorOnCompositorFrameTransitionDirectiveProcessedParams;->layerTreeFrameSinkId:I

    iget p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorOnCompositorFrameTransitionDirectiveProcessedParams;->sequenceId:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/SynchronousCompositor;->onCompositorFrameTransitionDirectiveProcessed(II)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorReclaimResourcesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorReclaimResourcesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget v1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorReclaimResourcesParams;->layerTreeFrameSinkId:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorReclaimResourcesParams;->resources:[Lorg/chromium/viz/mojom/ReturnedResource;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/SynchronousCompositor;->reclaimResources(I[Lorg/chromium/viz/mojom/ReturnedResource;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetMemoryPolicyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetMemoryPolicyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetMemoryPolicyParams;->bytesLimit:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/SynchronousCompositor;->setMemoryPolicy(I)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZeroSharedMemoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZeroSharedMemoryParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/SynchronousCompositor;->zeroSharedMemory()V

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorWillSkipDrawParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorWillSkipDrawParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/SynchronousCompositor;->willSkipDraw()V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwAsyncParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwAsyncParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget-object p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwAsyncParams;->drawParams:Lorg/chromium/blink/mojom/SyncCompositorDemandDrawHwParams;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/SynchronousCompositor;->demandDrawHwAsync(Lorg/chromium/blink/mojom/SyncCompositorDemandDrawHwParams;)V

    return v3

    :cond_5
    sget-object p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    if-eq v2, v4, :cond_6

    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget-object p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwParams;->drawParams:Lorg/chromium/blink/mojom/SyncCompositorDemandDrawSwParams;

    new-instance v4, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/SynchronousCompositor;->demandDrawSw(Lorg/chromium/blink/mojom/SyncCompositorDemandDrawSwParams;Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawSw_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget-object p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryParams;->shmRegion:Lorg/chromium/mojo_base/mojom/WritableSharedMemoryRegion;

    new-instance v4, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/SynchronousCompositor;->setSharedMemory(Lorg/chromium/mojo_base/mojom/WritableSharedMemoryRegion;Lorg/chromium/blink/mojom/SynchronousCompositor$SetSharedMemory_Response;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget-object p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwParams;->drawParams:Lorg/chromium/blink/mojom/SyncCompositorDemandDrawHwParams;

    new-instance v4, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/SynchronousCompositor;->demandDrawHw(Lorg/chromium/blink/mojom/SyncCompositorDemandDrawHwParams;Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/SynchronousCompositor;

    iget v4, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByParams;->delta:F

    iget-object p1, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByParams;->anchor:Lorg/chromium/gfx/mojom/Point;

    new-instance v5, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/SynchronousCompositor;->zoomBy(FLorg/chromium/gfx/mojom/Point;Lorg/chromium/blink/mojom/SynchronousCompositor$ZoomBy_Response;)V

    return v3

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
