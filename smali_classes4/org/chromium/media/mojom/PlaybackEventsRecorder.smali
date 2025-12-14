.class public interface abstract Lorg/chromium/media/mojom/PlaybackEventsRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/PlaybackEventsRecorder$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onBuffering()V
.end method

.method public abstract onBufferingComplete()V
.end method

.method public abstract onEnded()V
.end method

.method public abstract onError(Lorg/chromium/media/mojom/PipelineStatus;)V
.end method

.method public abstract onNaturalSizeChanged(Lorg/chromium/gfx/mojom/Size;)V
.end method

.method public abstract onPaused()V
.end method

.method public abstract onPipelineStatistics(Lorg/chromium/media/mojom/PipelineStatistics;)V
.end method

.method public abstract onPlaying()V
.end method

.method public abstract onSeeking()V
.end method
