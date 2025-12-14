.class public interface abstract Lorg/chromium/media/mojom/VideoDecoderClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoDecoderClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onVideoFrameDecoded(Lorg/chromium/media/mojom/VideoFrame;ZLorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract onWaiting(I)V
.end method

.method public abstract requestOverlayInfo(Z)V
.end method
