.class Lorg/chromium/media_session/mojom/MediaSession_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetVisibilityResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetVisibilityResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetVisibilityResponseParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetVisibilityParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionEnterAutoPictureInPictureParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionNextSlideParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionPreviousSlideParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionRequestMediaRemotingParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSetMuteParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionRaiseParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionHangUpParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionToggleCameraParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionToggleMicrophoneParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSetAudioSinkIdParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionExitPictureInPictureParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionEnterPictureInPictureParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionScrubToParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSeekToParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapResponseParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSkipAdParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStopParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSeekParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionNextTrackParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionPreviousTrackParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionAddObserverParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionResumeParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSuspendParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStopDuckingParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStartDuckingParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetDebugInfoResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetDebugInfoResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetDebugInfoResponseParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetDebugInfoParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaSessionInfoResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaSessionInfoResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaSessionInfoResponseParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaSessionInfoParams;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$Stub;,
        Lorg/chromium/media_session/mojom/MediaSession_Internal$Proxy;
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

    new-instance v0, Lorg/chromium/media_session/mojom/MediaSession_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/MediaSession_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media_session/mojom/MediaSession_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
