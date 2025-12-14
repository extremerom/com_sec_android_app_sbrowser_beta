.class public interface abstract Lorg/chromium/cc/mojom/RenderFrameMetadataObserverClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cc/mojom/RenderFrameMetadataObserverClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onFrameSubmissionForTesting(I)V
.end method

.method public abstract onRenderFrameMetadataChanged(ILorg/chromium/cc/mojom/RenderFrameMetadata;)V
.end method

.method public abstract onRootScrollOffsetChanged(Lorg/chromium/gfx/mojom/PointF;)V
.end method
