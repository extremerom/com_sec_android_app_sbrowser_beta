.class public interface abstract Lorg/chromium/viz/mojom/CompositorFrameSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/CompositorFrameSink$SubmitCompositorFrameSync_Response;,
        Lorg/chromium/viz/mojom/CompositorFrameSink$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindLayerContext(Lorg/chromium/viz/mojom/PendingLayerContext;)V
.end method

.method public abstract didNotProduceFrame(Lorg/chromium/viz/mojom/BeginFrameAck;)V
.end method

.method public abstract initializeCompositorFrameSinkType(I)V
.end method

.method public abstract setAutoNeedsBeginFrame()V
.end method

.method public abstract setNeedsBeginFrame(Z)V
.end method

.method public abstract setThreads([Lorg/chromium/viz/mojom/Thread;)V
.end method

.method public abstract setWantsAnimateOnlyBeginFrames()V
.end method

.method public abstract setWantsBeginFrameAcks()V
.end method

.method public abstract submitCompositorFrame(Lorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;J)V
.end method

.method public abstract submitCompositorFrameSync(Lorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;JLorg/chromium/viz/mojom/CompositorFrameSink$SubmitCompositorFrameSync_Response;)V
.end method
