.class Lorg/chromium/blink/mojom/RemoteFrame_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameForwardFencedFrameEventToEmbedderParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildrenParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameChildProcessGoneParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameSinkIdParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidUpdateVisualPropertiesParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDisableAutoResizeParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnableAutoResizeParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDetachAndDisposeParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateOpenerParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidUpdateFramePolicyParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidSetFramePolicyHeadersParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameIntrinsicSizingInfoOfChildChangedParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidStopLoadingParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidStartLoadingParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameScrollRectToVisibleParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameAddResourceTimingFromChildParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameRenderFallbackContentParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetPageFocusParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetEmbeddingTokenParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateUserActivationStateParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameBubbleLogicalScrollParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetHadStickyUserActivationBeforeNavigationParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameFocusParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCollapseParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetNeedsOcclusionTrackingParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDispatchLoadEventForFrameOwnerParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedNameParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedIsAdFrameParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedOriginParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnforceInsecureRequestPolicyParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameOwnerPropertiesParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnforceInsecureNavigationsSetParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameWillEnterFullscreenParams;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$Stub;,
        Lorg/chromium/blink/mojom/RemoteFrame_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/RemoteFrame;",
            "Lorg/chromium/blink/mojom/RemoteFrame$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/RemoteFrame_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/RemoteFrame_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
