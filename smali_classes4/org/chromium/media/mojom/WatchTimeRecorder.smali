.class public interface abstract Lorg/chromium/media/mojom/WatchTimeRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/WatchTimeRecorder$Proxy;
    }
.end annotation


# virtual methods
.method public abstract finalizeWatchTime([I)V
.end method

.method public abstract onDurationChanged(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract onError(Lorg/chromium/media/mojom/PipelineStatus;)V
.end method

.method public abstract recordWatchTime(ILorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract setAutoplayInitiated(Z)V
.end method

.method public abstract updateSecondaryProperties(Lorg/chromium/media/mojom/SecondaryPlaybackProperties;)V
.end method

.method public abstract updateUnderflowCount(I)V
.end method

.method public abstract updateUnderflowDuration(ILorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract updateVideoDecodeStats(II)V
.end method
