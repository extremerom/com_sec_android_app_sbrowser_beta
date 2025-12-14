.class final Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FrameWidgetHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/FrameWidgetHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/FrameWidgetHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;->physicalWindowZoomRect:Lorg/chromium/gfx/mojom/Rect;

    iget-object v3, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;->size:Lorg/chromium/gfx/mojom/Size;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostShowDisambiguationPopupParams;->sharedMemoryRegion:Lorg/chromium/mojo_base/mojom/WritableSharedMemoryRegion;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->showDisambiguationPopup(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/gfx/mojom/Size;Lorg/chromium/mojo_base/mojom/WritableSharedMemoryRegion;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;->markup:Lorg/chromium/mojo_base/mojom/String16;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSelectedMarkupWithStartContentRectParams;->selectionStartContentRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->selectedMarkupWithStartContentRect(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyIGestureHandledParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyIGestureHandledParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyIGestureHandledParams;->didSplit:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->notifyIGestureHandled(Z)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifySelectionNotAllowedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifySelectionNotAllowedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetHost;->notifySelectionNotAllowed()V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyTextFragmentSearchFinishedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyTextFragmentSearchFinishedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyTextFragmentSearchFinishedParams;->didFindMatch:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->notifyTextFragmentSearchFinished(Z)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyMouseClickSelectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyMouseClickSelectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostNotifyMouseClickSelectionParams;->selectionType:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->notifyMouseClickSelection(I)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;->imageBitmap:Lorg/chromium/skia/mojom/BitmapN32;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSendImageBitmapDataParams;->bitmapRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->sendImageBitmapData(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostCancelImageOrLinkDragParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostCancelImageOrLinkDragParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetHost;->cancelImageOrLinkDrag()V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostPrepareForImageOrLinkDragParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostPrepareForImageOrLinkDragParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostPrepareForImageOrLinkDragParams;->elementBoundsRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->prepareForImageOrLinkDrag(Lorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollEndParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollEndParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetHost;->autoscrollEnd()V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollFlingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollFlingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollFlingParams;->velocity:Lorg/chromium/gfx/mojom/Vector2dF;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->autoscrollFling(Lorg/chromium/gfx/mojom/Vector2dF;)V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollStartParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollStartParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAutoscrollStartParams;->position:Lorg/chromium/gfx/mojom/PointF;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->autoscrollStart(Lorg/chromium/gfx/mojom/PointF;)V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostIntrinsicSizingInfoChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostIntrinsicSizingInfoChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostIntrinsicSizingInfoChangedParams;->sizingInfo:Lorg/chromium/blink/mojom/IntrinsicSizingInfo;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->intrinsicSizingInfoChanged(Lorg/chromium/blink/mojom/IntrinsicSizingInfo;)V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSetHasTouchEventConsumersParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSetHasTouchEventConsumersParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostSetHasTouchEventConsumersParams;->touchEventConsumers:Lorg/chromium/blink/mojom/TouchEventConsumers;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->setHasTouchEventConsumers(Lorg/chromium/blink/mojom/TouchEventConsumers;)V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostZoomToFindInPageRectInMainFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostZoomToFindInPageRectInMainFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostZoomToFindInPageRectInMainFrameParams;->rectToZoom:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->zoomToFindInPageRectInMainFrame(Lorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;->tapPoint:Lorg/chromium/gfx/mojom/Point;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostAnimateDoubleTapZoomInMainFrameParams;->rectToZoom:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetHost;->animateDoubleTapZoomInMainFrame(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_11
    sget-object p0, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/FrameWidgetHost;

    iget-object v5, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->imageBitmap:Lorg/chromium/skia/mojom/BitmapN32;

    iget-object v6, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->bitmapRect:Lorg/chromium/gfx/mojom/Rect;

    iget-object v7, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->imageClassName:Lorg/chromium/mojo_base/mojom/String16;

    iget v8, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->requestType:I

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationParams;->isAvailable:Z

    new-instance v10, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal$FrameWidgetHostProcessImageTranslationResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v10}, Lorg/chromium/blink/mojom/FrameWidgetHost;->processImageTranslation(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/mojo_base/mojom/String16;IZLorg/chromium/blink/mojom/FrameWidgetHost$ProcessImageTranslation_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/FrameWidgetHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
