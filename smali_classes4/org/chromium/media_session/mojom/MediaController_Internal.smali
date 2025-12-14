.class Lorg/chromium/media_session/mojom/MediaController_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSkipAdParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerEnterAutoPictureInPictureParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerRequestMediaRemotingParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSetMuteParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerRaiseParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerHangUpParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleCameraParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleMicrophoneParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSetAudioSinkIdParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerExitPictureInPictureParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerEnterPictureInPictureParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerScrubToParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSeekToParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerObserveImagesParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSeekParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerNextTrackParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerPreviousTrackParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerAddObserverParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleSuspendResumeParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerStopParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerResumeParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSuspendParams;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$Stub;,
        Lorg/chromium/media_session/mojom/MediaController_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media_session/mojom/MediaController;",
            "Lorg/chromium/media_session/mojom/MediaController$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media_session/mojom/MediaController_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/MediaController_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media_session/mojom/MediaController_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
