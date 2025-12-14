.class final Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/viz/mojom/CompositorFrameSinkClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal;
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
.method public didReceiveCompositorFrameAck([Lorg/chromium/viz/mojom/ReturnedResource;)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientDidReceiveCompositorFrameAckParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientDidReceiveCompositorFrameAckParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientDidReceiveCompositorFrameAckParams;->resources:[Lorg/chromium/viz/mojom/ReturnedResource;

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

.method public onBeginFrame(Lorg/chromium/viz/mojom/BeginFrameArgs;Ljava/util/Map;Z[Lorg/chromium/viz/mojom/ReturnedResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/viz/mojom/BeginFrameArgs;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/viz/mojom/FrameTimingDetails;",
            ">;Z[",
            "Lorg/chromium/viz/mojom/ReturnedResource;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->args:Lorg/chromium/viz/mojom/BeginFrameArgs;

    iput-object p2, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->details:Ljava/util/Map;

    iput-boolean p3, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->frameAck:Z

    iput-object p4, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->resources:[Lorg/chromium/viz/mojom/ReturnedResource;

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

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onBeginFramePausedChanged(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFramePausedChangedParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFramePausedChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFramePausedChangedParams;->paused:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onCompositorFrameTransitionDirectiveProcessed(I)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnCompositorFrameTransitionDirectiveProcessedParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnCompositorFrameTransitionDirectiveProcessedParams;-><init>()V

    iput p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnCompositorFrameTransitionDirectiveProcessedParams;->sequenceId:I

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

.method public onSurfaceEvicted(Lorg/chromium/viz/mojom/LocalSurfaceId;)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnSurfaceEvictedParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnSurfaceEvictedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnSurfaceEvictedParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public reclaimResources([Lorg/chromium/viz/mojom/ReturnedResource;)V
    .locals 3

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientReclaimResourcesParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientReclaimResourcesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientReclaimResourcesParams;->resources:[Lorg/chromium/viz/mojom/ReturnedResource;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
