.class public interface abstract Lorg/chromium/blink/mojom/SynchronousCompositor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SynchronousCompositor$ZoomBy_Response;,
        Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawSw_Response;,
        Lorg/chromium/blink/mojom/SynchronousCompositor$SetSharedMemory_Response;,
        Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;,
        Lorg/chromium/blink/mojom/SynchronousCompositor$Proxy;
    }
.end annotation


# virtual methods
.method public abstract beginFrame(Lorg/chromium/viz/mojom/BeginFrameArgs;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/viz/mojom/BeginFrameArgs;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/viz/mojom/FrameTimingDetails;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract demandDrawHw(Lorg/chromium/blink/mojom/SyncCompositorDemandDrawHwParams;Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;)V
.end method

.method public abstract demandDrawHwAsync(Lorg/chromium/blink/mojom/SyncCompositorDemandDrawHwParams;)V
.end method

.method public abstract demandDrawSw(Lorg/chromium/blink/mojom/SyncCompositorDemandDrawSwParams;Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawSw_Response;)V
.end method

.method public abstract onCompositorFrameTransitionDirectiveProcessed(II)V
.end method

.method public abstract reclaimResources(I[Lorg/chromium/viz/mojom/ReturnedResource;)V
.end method

.method public abstract setBeginFrameSourcePaused(Z)V
.end method

.method public abstract setMemoryPolicy(I)V
.end method

.method public abstract setScroll(Lorg/chromium/gfx/mojom/PointF;)V
.end method

.method public abstract setSharedMemory(Lorg/chromium/mojo_base/mojom/WritableSharedMemoryRegion;Lorg/chromium/blink/mojom/SynchronousCompositor$SetSharedMemory_Response;)V
.end method

.method public abstract willSkipDraw()V
.end method

.method public abstract zeroSharedMemory()V
.end method

.method public abstract zoomBy(FLorg/chromium/gfx/mojom/Point;Lorg/chromium/blink/mojom/SynchronousCompositor$ZoomBy_Response;)V
.end method
