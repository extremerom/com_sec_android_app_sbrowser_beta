.class public interface abstract Lorg/chromium/blink/mojom/SynchronousCompositorHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SynchronousCompositorHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract layerTreeFrameSinkCreated()V
.end method

.method public abstract setNeedsBeginFrames(Z)V
.end method

.method public abstract setThreads([Lorg/chromium/viz/mojom/Thread;)V
.end method

.method public abstract updateState(Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;)V
.end method
