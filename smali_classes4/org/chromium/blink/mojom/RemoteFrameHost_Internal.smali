.class Lorg/chromium/blink/mojom/RemoteFrameHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostOpenUrlParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSynchronizeVisualPropertiesParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateViewportIntersectionParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDetachParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostPrintCrossProcessSubframeParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostRouteMessageEventParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostAdvanceFocusParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDidChangeOpenerParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSetIsInertParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostCapturePaintPreviewOfCrossProcessSubframeParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostCheckCompletedParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDidFocusFrameParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostVisibilityChangedParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateRenderThrottlingStatusParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSetInheritedEffectiveTouchActionParams;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/RemoteFrameHost;",
            "Lorg/chromium/blink/mojom/RemoteFrameHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
