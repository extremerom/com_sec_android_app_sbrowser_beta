.class Lorg/chromium/blink/mojom/LocalMainFrame_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameRecognizeArticleResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameRecognizeArticleResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameRecognizeArticleResponseParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameRecognizeArticleParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameFinalizeNavigationConfidenceParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameDiscardParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetV8CompileHintsParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameUpdateBrowserControlsStateParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameInstallCoopAccessMonitorParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameZoomToFindInPageRectParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameEnablePreferredSizeChangedModeParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetInitialFocusParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameGetFullPageSizeResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameGetFullPageSizeResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameGetFullPageSizeResponseParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameGetFullPageSizeParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetScaleFactorParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameAnimateDoubleTapZoomParams;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$Stub;,
        Lorg/chromium/blink/mojom/LocalMainFrame_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/LocalMainFrame;",
            "Lorg/chromium/blink/mojom/LocalMainFrame$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
