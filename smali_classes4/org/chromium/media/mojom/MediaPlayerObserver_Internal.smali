.class Lorg/chromium/media/mojom/MediaPlayerObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtensionContainerUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtSubtitleUpdatedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEventFiredParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaCheckVideoVisibleResultParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaUrlUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaFullscreenBufferedPercentUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaClosedCaptionStatusUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPlaybackRateUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaClosedCaptionUrlUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaLiveStreamVideoUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaDurationUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaTimeUpdateParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExitFullscreenParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEnterFullscreenParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaErrorParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaSeekParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnVideoVisibilityChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnRemotePlaybackMetadataChangeParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnAudioOutputSinkChangingDisabledParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnUseAudioServiceChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnAudioOutputSinkChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnPictureInPictureAvailabilityChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaSizeChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEffectivelyFullscreenChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPositionStateChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaMetadataChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMutedStatusChangedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPausedParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPlayingParams;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$Stub;,
        Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/MediaPlayerObserver;",
            "Lorg/chromium/media/mojom/MediaPlayerObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
