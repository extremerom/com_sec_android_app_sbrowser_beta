.class public interface abstract Lorg/chromium/media_session/mojom/MediaController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaController$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addObserver(Lorg/chromium/media_session/mojom/MediaControllerObserver;)V
.end method

.method public abstract enterAutoPictureInPicture()V
.end method

.method public abstract enterPictureInPicture()V
.end method

.method public abstract exitPictureInPicture()V
.end method

.method public abstract hangUp()V
.end method

.method public abstract nextTrack()V
.end method

.method public abstract observeImages(IIILorg/chromium/media_session/mojom/MediaControllerImageObserver;)V
.end method

.method public abstract previousTrack()V
.end method

.method public abstract raise()V
.end method

.method public abstract requestMediaRemoting()V
.end method

.method public abstract resume()V
.end method

.method public abstract scrubTo(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract seek(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract seekTo(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract setAudioSinkId(Ljava/lang/String;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract skipAd()V
.end method

.method public abstract stop()V
.end method

.method public abstract suspend()V
.end method

.method public abstract toggleCamera()V
.end method

.method public abstract toggleMicrophone()V
.end method

.method public abstract toggleSuspendResume()V
.end method
