.class public interface abstract Lorg/chromium/media/mojom/RendererClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/RendererClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onAudioConfigChange(Lorg/chromium/media/mojom/AudioDecoderConfig;)V
.end method

.method public abstract onBufferingStateChange(II)V
.end method

.method public abstract onEnded()V
.end method

.method public abstract onError(Lorg/chromium/media/mojom/PipelineStatus;)V
.end method

.method public abstract onLiveStreamVideo(ZZ)V
.end method

.method public abstract onStatisticsUpdate(Lorg/chromium/media/mojom/PipelineStatistics;)V
.end method

.method public abstract onTimeUpdate(Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/mojo_base/mojom/TimeTicks;)V
.end method

.method public abstract onVideoConfigChange(Lorg/chromium/media/mojom/VideoDecoderConfig;)V
.end method

.method public abstract onVideoNaturalSizeChange(Lorg/chromium/gfx/mojom/Size;)V
.end method

.method public abstract onVideoOpacityChange(Z)V
.end method

.method public abstract onWaiting(I)V
.end method
