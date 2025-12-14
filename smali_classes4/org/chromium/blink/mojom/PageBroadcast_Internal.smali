.class Lorg/chromium/blink/mojom/PageBroadcast_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateColorProvidersParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageAttributionSupportParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdatePageBrowsingContextGroupParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageBaseBackgroundColorParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateRendererPreferencesParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetBackgroundPlayEnabledParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAdjustNightModeParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateWebPreferencesParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageResponseParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAudioStateChangedParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateResponseParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$Stub;,
        Lorg/chromium/blink/mojom/PageBroadcast_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/PageBroadcast;",
            "Lorg/chromium/blink/mojom/PageBroadcast$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
