.class public interface abstract Lorg/chromium/viz/mojom/CompositorFrameSinkClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/CompositorFrameSinkClient$Proxy;
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

    sget-object v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract didReceiveCompositorFrameAck([Lorg/chromium/viz/mojom/ReturnedResource;)V
.end method

.method public abstract onBeginFrame(Lorg/chromium/viz/mojom/BeginFrameArgs;Ljava/util/Map;Z[Lorg/chromium/viz/mojom/ReturnedResource;)V
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
.end method

.method public abstract onBeginFramePausedChanged(Z)V
.end method

.method public abstract onCompositorFrameTransitionDirectiveProcessed(I)V
.end method

.method public abstract onSurfaceEvicted(Lorg/chromium/viz/mojom/LocalSurfaceId;)V
.end method

.method public abstract reclaimResources([Lorg/chromium/viz/mojom/ReturnedResource;)V
.end method
