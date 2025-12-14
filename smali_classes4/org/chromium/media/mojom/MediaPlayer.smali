.class public interface abstract Lorg/chromium/media/mojom/MediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaPlayer$RequestVisibility_Response;,
        Lorg/chromium/media/mojom/MediaPlayer$RequestGetVideoCapture_Response;,
        Lorg/chromium/media/mojom/MediaPlayer$Proxy;
    }
.end annotation


# virtual methods
.method public abstract requestCheckVideoVisible(I)V
.end method

.method public abstract requestEnterPictureInPicture()V
.end method

.method public abstract requestFullscreen()V
.end method

.method public abstract requestGetVideoCapture(Lorg/chromium/gfx/mojom/Size;Lorg/chromium/media/mojom/MediaPlayer$RequestGetVideoCapture_Response;)V
.end method

.method public abstract requestMediaRemoting()V
.end method

.method public abstract requestMute(Z)V
.end method

.method public abstract requestPause(Z)V
.end method

.method public abstract requestPlay()V
.end method

.method public abstract requestSeekBackward(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract requestSeekForward(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract requestSeekTo(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract requestSetClosedCaptionVisibility(Z)V
.end method

.method public abstract requestSetExtensionContainerStatus(Ljava/lang/String;I)V
.end method

.method public abstract requestSetFullscreenFlexMode(ZZ)V
.end method

.method public abstract requestSetFullscreenVideoRatio(I)V
.end method

.method public abstract requestSetIsMediaControlDisplayed(Z)V
.end method

.method public abstract requestSetMuted(Z)V
.end method

.method public abstract requestSetPlaybackRate(D)V
.end method

.method public abstract requestVisibility(Lorg/chromium/media/mojom/MediaPlayer$RequestVisibility_Response;)V
.end method

.method public abstract setAudioSinkId(Ljava/lang/String;)V
.end method

.method public abstract setPersistentState(Z)V
.end method

.method public abstract setPowerExperimentState(Z)V
.end method

.method public abstract setVolumeMultiplier(D)V
.end method

.method public abstract suspendForFrameClosed()V
.end method
