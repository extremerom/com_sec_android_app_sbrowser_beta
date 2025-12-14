.class public interface abstract Lorg/chromium/media/mojom/VideoFrameHandleReleaser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoFrameHandleReleaser$Proxy;
    }
.end annotation


# virtual methods
.method public abstract releaseVideoFrame(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/gpu/mojom/SyncToken;)V
.end method
