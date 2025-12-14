.class Lorg/chromium/media_session/mojom/AudioFocusManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingResponseParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStopDuckingAllAudioParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStartDuckingAllAudioParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestIdReleasedParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsResponseParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetEnforcementModeParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddObserverParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsResponseParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusResponseParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusResponseParamsProxyToResponder;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusResponseParamsForwardToCallback;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusResponseParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$Stub;,
        Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media_session/mojom/AudioFocusManager;",
            "Lorg/chromium/media_session/mojom/AudioFocusManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
