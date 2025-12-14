.class Lorg/chromium/blink/mojom/Widget_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetBindScrollSyncParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetEnableScrollSyncParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetSetupBrowserRenderInputRouterConnectionsParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetCancelSuccessfulPresentationTimeRequestParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetRequestSuccessfulPresentationTimeForNextFrameParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetResetHoverCursorParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetWasShownParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetWasHiddenParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetUpdateScreenRectsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetUpdateScreenRectsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetUpdateScreenRectsResponseParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetUpdateScreenRectsParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetUpdateVisualPropertiesParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetForceRedrawResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetForceRedrawResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetForceRedrawResponseParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$WidgetForceRedrawParams;,
        Lorg/chromium/blink/mojom/Widget_Internal$Stub;,
        Lorg/chromium/blink/mojom/Widget_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/Widget;",
            "Lorg/chromium/blink/mojom/Widget$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/Widget_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/Widget_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/Widget_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
