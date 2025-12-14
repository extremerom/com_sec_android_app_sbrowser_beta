.class final Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/viz/mojom/CompositorFrameSink$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/viz/mojom/CompositorFrameSink_Internal;
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
.method public bindLayerContext(Lorg/chromium/viz/mojom/PendingLayerContext;)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkBindLayerContextParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkBindLayerContextParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkBindLayerContextParams;->context:Lorg/chromium/viz/mojom/PendingLayerContext;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didNotProduceFrame(Lorg/chromium/viz/mojom/BeginFrameAck;)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkDidNotProduceFrameParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkDidNotProduceFrameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkDidNotProduceFrameParams;->ack:Lorg/chromium/viz/mojom/BeginFrameAck;

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

.method public initializeCompositorFrameSinkType(I)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkInitializeCompositorFrameSinkTypeParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkInitializeCompositorFrameSinkTypeParams;-><init>()V

    iput p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkInitializeCompositorFrameSinkTypeParams;->type:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setAutoNeedsBeginFrame()V
    .locals 4

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetAutoNeedsBeginFrameParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetAutoNeedsBeginFrameParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setNeedsBeginFrame(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetNeedsBeginFrameParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetNeedsBeginFrameParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetNeedsBeginFrameParams;->needsBeginFrame:Z

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

.method public setThreads([Lorg/chromium/viz/mojom/Thread;)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetThreadsParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetThreadsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetThreadsParams;->threads:[Lorg/chromium/viz/mojom/Thread;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setWantsAnimateOnlyBeginFrames()V
    .locals 4

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsAnimateOnlyBeginFramesParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsAnimateOnlyBeginFramesParams;-><init>()V

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

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setWantsBeginFrameAcks()V
    .locals 4

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsBeginFrameAcksParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsBeginFrameAcksParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public submitCompositorFrame(Lorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;J)V
    .locals 1

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    iput-object p2, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->frame:Lorg/chromium/viz/mojom/CompositorFrame;

    iput-object p3, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;

    iput-wide p4, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;->submitTime:J

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public submitCompositorFrameSync(Lorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;JLorg/chromium/viz/mojom/CompositorFrameSink$SubmitCompositorFrameSync_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    iput-object p2, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->frame:Lorg/chromium/viz/mojom/CompositorFrame;

    iput-object p3, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;

    iput-wide p4, v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;->submitTime:J

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

    const/4 v1, 0x5

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncResponseParamsForwardToCallback;-><init>(Lorg/chromium/viz/mojom/CompositorFrameSink$SubmitCompositorFrameSync_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
