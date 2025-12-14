.class Lorg/chromium/media/mojom/MediaPlayer_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetExtensionContainerStatusParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestVisibilityResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestVisibilityResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestVisibilityResponseParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestVisibilityParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestMediaRemotingParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSuspendForFrameClosedParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetMutedParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetPlaybackRateParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureResponseParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestCheckVideoVisibleParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenFlexModeParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenVideoRatioParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetIsMediaControlDisplayedParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetClosedCaptionVisibilityParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestFullscreenParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetAudioSinkIdParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetPowerExperimentStateParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetPersistentStateParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetVolumeMultiplierParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestMuteParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestEnterPictureInPictureParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekToParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekBackwardParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekForwardParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestPauseParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestPlayParams;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$Stub;,
        Lorg/chromium/media/mojom/MediaPlayer_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/MediaPlayer;",
            "Lorg/chromium/media/mojom/MediaPlayer$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/MediaPlayer_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/MediaPlayer_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/MediaPlayer_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
