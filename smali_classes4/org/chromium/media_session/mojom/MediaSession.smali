.class public interface abstract Lorg/chromium/media_session/mojom/MediaSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaSession$GetVisibility_Response;,
        Lorg/chromium/media_session/mojom/MediaSession$GetMediaImageBitmap_Response;,
        Lorg/chromium/media_session/mojom/MediaSession$GetDebugInfo_Response;,
        Lorg/chromium/media_session/mojom/MediaSession$GetMediaSessionInfo_Response;,
        Lorg/chromium/media_session/mojom/MediaSession$Proxy;,
        Lorg/chromium/media_session/mojom/MediaSession$SuspendType;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media_session/mojom/MediaSession;",
            "Lorg/chromium/media_session/mojom/MediaSession$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media_session/mojom/MediaSession_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media_session/mojom/MediaSession;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract addObserver(Lorg/chromium/media_session/mojom/MediaSessionObserver;)V
.end method

.method public abstract enterAutoPictureInPicture()V
.end method

.method public abstract enterPictureInPicture()V
.end method

.method public abstract exitPictureInPicture()V
.end method

.method public abstract getDebugInfo(Lorg/chromium/media_session/mojom/MediaSession$GetDebugInfo_Response;)V
.end method

.method public abstract getMediaImageBitmap(Lorg/chromium/media_session/mojom/MediaImage;IILorg/chromium/media_session/mojom/MediaSession$GetMediaImageBitmap_Response;)V
.end method

.method public abstract getMediaSessionInfo(Lorg/chromium/media_session/mojom/MediaSession$GetMediaSessionInfo_Response;)V
.end method

.method public abstract getVisibility(Lorg/chromium/media_session/mojom/MediaSession$GetVisibility_Response;)V
.end method

.method public abstract hangUp()V
.end method

.method public abstract nextSlide()V
.end method

.method public abstract nextTrack()V
.end method

.method public abstract previousSlide()V
.end method

.method public abstract previousTrack()V
.end method

.method public abstract raise()V
.end method

.method public abstract requestMediaRemoting()V
.end method

.method public abstract resume(I)V
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

.method public abstract startDucking()V
.end method

.method public abstract stop(I)V
.end method

.method public abstract stopDucking()V
.end method

.method public abstract suspend(I)V
.end method

.method public abstract toggleCamera()V
.end method

.method public abstract toggleMicrophone()V
.end method
