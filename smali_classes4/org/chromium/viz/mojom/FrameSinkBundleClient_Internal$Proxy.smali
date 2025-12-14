.class final Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/viz/mojom/FrameSinkBundleClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal;
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
.method public flushNotifications([Lorg/chromium/viz/mojom/BundledReturnedResources;[Lorg/chromium/viz/mojom/BeginFrameInfo;[Lorg/chromium/viz/mojom/BundledReturnedResources;)V
    .locals 1

    new-instance v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientFlushNotificationsParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientFlushNotificationsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientFlushNotificationsParams;->acks:[Lorg/chromium/viz/mojom/BundledReturnedResources;

    iput-object p2, v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientFlushNotificationsParams;->beginFrames:[Lorg/chromium/viz/mojom/BeginFrameInfo;

    iput-object p3, v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientFlushNotificationsParams;->reclaimedResources:[Lorg/chromium/viz/mojom/BundledReturnedResources;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onBeginFramePausedChanged(IZ)V
    .locals 2

    new-instance v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientOnBeginFramePausedChangedParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientOnBeginFramePausedChangedParams;-><init>()V

    iput p1, v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientOnBeginFramePausedChangedParams;->sinkId:I

    iput-boolean p2, v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientOnBeginFramePausedChangedParams;->paused:Z

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

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onCompositorFrameTransitionDirectiveProcessed(II)V
    .locals 2

    new-instance v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientOnCompositorFrameTransitionDirectiveProcessedParams;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientOnCompositorFrameTransitionDirectiveProcessedParams;-><init>()V

    iput p1, v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientOnCompositorFrameTransitionDirectiveProcessedParams;->sinkId:I

    iput p2, v0, Lorg/chromium/viz/mojom/FrameSinkBundleClient_Internal$FrameSinkBundleClientOnCompositorFrameTransitionDirectiveProcessedParams;->sequenceId:I

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
