.class public interface abstract Lorg/chromium/media/mojom/MediaMetricsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaMetricsProvider$Proxy;
    }
.end annotation


# virtual methods
.method public abstract acquireLearningTaskController(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/learning/mojom/LearningTaskController;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract acquirePlaybackEventsRecorder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/PlaybackEventsRecorder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract acquireVideoDecodeStatsRecorder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/VideoDecodeStatsRecorder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract acquireWatchTimeRecorder(Lorg/chromium/media/mojom/PlaybackProperties;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/mojom/PlaybackProperties;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/WatchTimeRecorder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initialize(ZII)V
.end method

.method public abstract onError(Lorg/chromium/media/mojom/PipelineStatus;)V
.end method

.method public abstract onFallback(Lorg/chromium/media/mojom/PipelineStatus;)V
.end method

.method public abstract onStarted(Lorg/chromium/media/mojom/PipelineStatus;)V
.end method

.method public abstract setAudioPipelineInfo(Lorg/chromium/media/mojom/AudioPipelineInfo;)V
.end method

.method public abstract setContainerName(I)V
.end method

.method public abstract setDemuxerType(I)V
.end method

.method public abstract setHasAudio(I)V
.end method

.method public abstract setHasPlayed()V
.end method

.method public abstract setHasVideo(I)V
.end method

.method public abstract setHasWaitingForKey()V
.end method

.method public abstract setHaveEnough()V
.end method

.method public abstract setIsEme()V
.end method

.method public abstract setIsHardwareSecure()V
.end method

.method public abstract setKeySystem(Ljava/lang/String;)V
.end method

.method public abstract setRendererType(I)V
.end method

.method public abstract setTimeToFirstFrame(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract setTimeToMetadata(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract setTimeToPlayReady(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract setVideoPipelineInfo(Lorg/chromium/media/mojom/VideoPipelineInfo;)V
.end method
