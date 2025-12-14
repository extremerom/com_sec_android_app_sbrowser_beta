.class Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnSurfaceEvictedParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnCompositorFrameTransitionDirectiveProcessedParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientReclaimResourcesParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFramePausedChangedParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientDidReceiveCompositorFrameAckParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$Stub;,
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/viz/mojom/CompositorFrameSinkClient;",
            "Lorg/chromium/viz/mojom/CompositorFrameSinkClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
