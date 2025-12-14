.class public interface abstract Lorg/chromium/viz/mojom/FrameSinkBundleClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/FrameSinkBundleClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract flushNotifications([Lorg/chromium/viz/mojom/BundledReturnedResources;[Lorg/chromium/viz/mojom/BeginFrameInfo;[Lorg/chromium/viz/mojom/BundledReturnedResources;)V
.end method

.method public abstract onBeginFramePausedChanged(IZ)V
.end method

.method public abstract onCompositorFrameTransitionDirectiveProcessed(II)V
.end method
