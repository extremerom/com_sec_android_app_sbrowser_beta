.class Lorg/chromium/viz/mojom/CompositorFrameSink_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetThreadsParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkBindLayerContextParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkInitializeCompositorFrameSinkTypeParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkDidNotProduceFrameParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncResponseParamsProxyToResponder;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncResponseParamsForwardToCallback;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncResponseParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameSyncParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSubmitCompositorFrameParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetAutoNeedsBeginFrameParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsBeginFrameAcksParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetWantsAnimateOnlyBeginFramesParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$CompositorFrameSinkSetNeedsBeginFrameParams;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$Stub;,
        Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/viz/mojom/CompositorFrameSink;",
            "Lorg/chromium/viz/mojom/CompositorFrameSink$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$1;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/viz/mojom/CompositorFrameSink_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
