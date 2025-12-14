.class Lorg/chromium/blink/mojom/FrameWidgetHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyIGestureHandledParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifySelectionNotAllowedParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyTextFragmentSearchFinishedParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyMouseClickSelectionParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationResponseParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostCancelImageOrLinkDragParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostPrepareForImageOrLinkDragParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollEndParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollFlingParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollStartParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostIntrinsicSizingInfoChangedParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSetHasTouchEventConsumersParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostZoomToFindInPageRectInMainFrameParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FrameWidgetHost;",
            "Lorg/chromium/blink/mojom/FrameWidgetHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
