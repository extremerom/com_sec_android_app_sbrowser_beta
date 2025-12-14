.class public interface abstract Lorg/chromium/media/mojom/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/Renderer$SetCdm_Response;,
        Lorg/chromium/media/mojom/Renderer$Flush_Response;,
        Lorg/chromium/media/mojom/Renderer$Initialize_Response;,
        Lorg/chromium/media/mojom/Renderer$Proxy;
    }
.end annotation


# virtual methods
.method public abstract flush(Lorg/chromium/media/mojom/Renderer$Flush_Response;)V
.end method

.method public abstract initialize(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;[Lorg/chromium/media/mojom/DemuxerStream;Lorg/chromium/media/mojom/MediaUrlParams;Lorg/chromium/media/mojom/Renderer$Initialize_Response;)V
.end method

.method public abstract setCdm(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/Renderer$SetCdm_Response;)V
.end method

.method public abstract setLatencyHint(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract setPlaybackRate(D)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract startPlayingFrom(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method
