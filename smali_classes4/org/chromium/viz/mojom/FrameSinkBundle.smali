.class public interface abstract Lorg/chromium/viz/mojom/FrameSinkBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/FrameSinkBundle$Proxy;
    }
.end annotation


# virtual methods
.method public abstract initializeCompositorFrameSinkType(II)V
.end method

.method public abstract setNeedsBeginFrame(IZ)V
.end method

.method public abstract setThreads(I[Lorg/chromium/viz/mojom/Thread;)V
.end method

.method public abstract setWantsBeginFrameAcks(I)V
.end method

.method public abstract submit([Lorg/chromium/viz/mojom/BundledFrameSubmission;)V
.end method
