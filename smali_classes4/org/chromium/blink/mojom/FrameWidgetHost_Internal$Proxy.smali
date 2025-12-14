.class final Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/FrameWidgetHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FrameWidgetHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public animateDoubleTapZoomInMainFrame(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Rect;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;->tapPoint:Lorg/chromium/gfx/mojom/Point;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;->rectToZoom:Lorg/chromium/gfx/mojom/Rect;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public autoscrollEnd()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollEndParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollEndParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public autoscrollFling(Lorg/chromium/gfx/mojom/Vector2dF;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollFlingParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollFlingParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollFlingParams;->velocity:Lorg/chromium/gfx/mojom/Vector2dF;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public autoscrollStart(Lorg/chromium/gfx/mojom/PointF;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollStartParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollStartParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollStartParams;->position:Lorg/chromium/gfx/mojom/PointF;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public cancelImageOrLinkDrag()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostCancelImageOrLinkDragParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostCancelImageOrLinkDragParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public intrinsicSizingInfoChanged(Lorg/chromium/blink/mojom/IntrinsicSizingInfo;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostIntrinsicSizingInfoChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostIntrinsicSizingInfoChangedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostIntrinsicSizingInfoChangedParams;->sizingInfo:Lorg/chromium/blink/mojom/IntrinsicSizingInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyIGestureHandled(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyIGestureHandledParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyIGestureHandledParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyIGestureHandledParams;->didSplit:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyMouseClickSelection(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyMouseClickSelectionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyMouseClickSelectionParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyMouseClickSelectionParams;->selectionType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifySelectionNotAllowed()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifySelectionNotAllowedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifySelectionNotAllowedParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyTextFragmentSearchFinished(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyTextFragmentSearchFinishedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyTextFragmentSearchFinishedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyTextFragmentSearchFinishedParams;->didFindMatch:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public prepareForImageOrLinkDrag(Lorg/chromium/gfx/mojom/Rect;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostPrepareForImageOrLinkDragParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostPrepareForImageOrLinkDragParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostPrepareForImageOrLinkDragParams;->elementBoundsRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public processImageTranslation(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/mojo_base/mojom/String16;IZLorg/chromium/blink/mojom/FrameWidgetHost$ProcessImageTranslation_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->imageBitmap:Lorg/chromium/skia/mojom/BitmapN32;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->bitmapRect:Lorg/chromium/gfx/mojom/Rect;

    iput-object p3, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->imageClassName:Lorg/chromium/mojo_base/mojom/String16;

    iput p4, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->requestType:I

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->isAvailable:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/16 v1, 0xa

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FrameWidgetHost$ProcessImageTranslation_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public selectedMarkupWithStartContentRect(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/gfx/mojom/Rect;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;->markup:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;->selectionStartContentRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0xf

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public sendImageBitmapData(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Rect;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;->imageBitmap:Lorg/chromium/skia/mojom/BitmapN32;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;->bitmapRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x9

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setHasTouchEventConsumers(Lorg/chromium/blink/mojom/TouchEventConsumers;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSetHasTouchEventConsumersParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSetHasTouchEventConsumersParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSetHasTouchEventConsumersParams;->touchEventConsumers:Lorg/chromium/blink/mojom/TouchEventConsumers;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public showDisambiguationPopup(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/gfx/mojom/Size;Lorg/chromium/mojo_base/mojom/WritableSharedMemoryRegion;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;->physicalWindowZoomRect:Lorg/chromium/gfx/mojom/Rect;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;->size:Lorg/chromium/gfx/mojom/Size;

    iput-object p3, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;->sharedMemoryRegion:Lorg/chromium/mojo_base/mojom/WritableSharedMemoryRegion;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x10

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public zoomToFindInPageRectInMainFrame(Lorg/chromium/gfx/mojom/Rect;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostZoomToFindInPageRectInMainFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostZoomToFindInPageRectInMainFrameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostZoomToFindInPageRectInMainFrameParams;->rectToZoom:Lorg/chromium/gfx/mojom/Rect;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
