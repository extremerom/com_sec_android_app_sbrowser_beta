.class Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostOnFirstContentfulPaintParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDraggableRegionsChangedParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetResizableParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostRestoreParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostMinimizeParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostMaximizeParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDidAccessInitialMainDocumentParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDidFirstVisuallyNonEmptyPaintParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostOnStartContentIntentParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectResponseParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowResponseParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostRequestCloseParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlResponseParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostTakeFocusParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostFocusPageParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostTextAutosizerPageInfoChangedParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostContentsPreferredSizeChangedParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostScaleFactorChangedParams;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/LocalMainFrameHost;",
            "Lorg/chromium/blink/mojom/LocalMainFrameHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
