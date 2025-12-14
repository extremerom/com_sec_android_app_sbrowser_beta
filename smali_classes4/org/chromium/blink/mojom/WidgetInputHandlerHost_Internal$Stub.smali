.class final Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/WidgetInputHandlerHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/WidgetInputHandlerHost;)V
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

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetAutoscrollSelectionActiveInMainFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetAutoscrollSelectionActiveInMainFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetAutoscrollSelectionActiveInMainFrameParams;->autoscrollSelection:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->setAutoscrollSelectionActiveInMainFrame(Z)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetMouseCaptureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetMouseCaptureParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetMouseCaptureParams;->capture:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->setMouseCapture(Z)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->range:Lorg/chromium/gfx/mojom/Range;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->characterBounds:[Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->imeCompositionRangeChanged(Lorg/chromium/gfx/mojom/Range;[Lorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCancelCompositionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCancelCompositionParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->imeCancelComposition()V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostDidStartScrollingWithScrollbarParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostDidStartScrollingWithScrollbarParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->didStartScrollingWithScrollbar()V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostDidStartScrollingViewportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostDidStartScrollingViewportParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->didStartScrollingViewport()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostDidOverscrollParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostDidOverscrollParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostDidOverscrollParams;->params:Lorg/chromium/blink/mojom/DidOverscrollParams;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->didOverscroll(Lorg/chromium/blink/mojom/DidOverscrollParams;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetPanActionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetPanActionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    iget p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetPanActionParams;->panAction:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->setPanAction(I)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetTouchActionFromMainParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetTouchActionFromMainParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    iget p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostSetTouchActionFromMainParams;->touchAction:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->setTouchActionFromMain(I)V

    return v2

    :pswitch_a
    sget-object p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 8

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

    const/16 v4, 0x9

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostRequestMouseLockParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostRequestMouseLockParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;

    iget-boolean v4, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostRequestMouseLockParams;->fromUserGesture:Z

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostRequestMouseLockParams;->unadjustedMovement:Z

    new-instance v5, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostRequestMouseLockResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostRequestMouseLockResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost;->requestMouseLock(ZZLorg/chromium/blink/mojom/WidgetInputHandlerHost$RequestMouseLock_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
