.class Lorg/chromium/media/mojom/MediaMetricsProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetAudioPipelineInfoParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetVideoPipelineInfoParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetHasVideoParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetHasAudioParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderAcquirePlaybackEventsRecorderParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderAcquireLearningTaskControllerParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderAcquireVideoDecodeStatsRecorderParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderAcquireWatchTimeRecorderParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetContainerNameParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetIsHardwareSecureParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetHasWaitingForKeyParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetKeySystemParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetDemuxerTypeParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetRendererTypeParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetTimeToPlayReadyParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetTimeToFirstFrameParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetTimeToMetadataParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetIsEmeParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetHaveEnoughParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderSetHasPlayedParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderOnFallbackParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderOnErrorParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderOnStartedParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$MediaMetricsProviderInitializeParams;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$Stub;,
        Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/MediaMetricsProvider;",
            "Lorg/chromium/media/mojom/MediaMetricsProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/MediaMetricsProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/MediaMetricsProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
