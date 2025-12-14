.class final Lorg/chromium/blink/mojom/WidgetHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WidgetHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/WidgetHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/WidgetHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 10

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

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostOnScrollSyncCreatedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostOnScrollSyncCreatedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostOnScrollSyncCreatedParams;->scrollSync:Lorg/chromium/scroll_sync/mojom/ScrollSync;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetHost;->onScrollSyncCreated(Lorg/chromium/scroll_sync/mojom/ScrollSync;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostRegisterRenderFrameMetadataObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostRegisterRenderFrameMetadataObserverParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostRegisterRenderFrameMetadataObserverParams;->renderFrameMetadataObserverClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostRegisterRenderFrameMetadataObserverParams;->renderFrameMetadataObserver:Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/WidgetHost;->registerRenderFrameMetadataObserver(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;->compositorFrameSinkReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;->compositorFrameSinkClient:Lorg/chromium/viz/mojom/CompositorFrameSinkClient;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;->renderInputRouterClient:Lorg/chromium/blink/mojom/RenderInputRouterClient;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/WidgetHost;->createFrameSink(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/viz/mojom/CompositorFrameSinkClient;Lorg/chromium/blink/mojom/RenderInputRouterClient;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/WidgetHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->anchorRect:Lorg/chromium/gfx/mojom/Rect;

    iget v5, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->anchorDir:I

    iget-object v6, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->focusRect:Lorg/chromium/gfx/mojom/Rect;

    iget v7, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->focusDir:I

    iget-object v8, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->boundingBoxRect:Lorg/chromium/gfx/mojom/Rect;

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->isAnchorFirst:Z

    invoke-interface/range {v3 .. v9}, Lorg/chromium/blink/mojom/WidgetHost;->selectionBoundsChanged(Lorg/chromium/gfx/mojom/Rect;ILorg/chromium/gfx/mojom/Rect;ILorg/chromium/gfx/mojom/Rect;Z)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostTextInputStateChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostTextInputStateChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostTextInputStateChangedParams;->state:Lorg/chromium/ui/mojom/TextInputState;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetHost;->textInputStateChanged(Lorg/chromium/ui/mojom/TextInputState;)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostClearKeyboardTriggeredTooltipParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostClearKeyboardTriggeredTooltipParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/WidgetHost;->clearKeyboardTriggeredTooltip()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;->tooltipText:Lorg/chromium/mojo_base/mojom/String16;

    iget v3, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;->textDirectionHint:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;->bounds:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/WidgetHost;->updateTooltipFromKeyboard(Lorg/chromium/mojo_base/mojom/String16;ILorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipUnderCursorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipUnderCursorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipUnderCursorParams;->tooltipText:Lorg/chromium/mojo_base/mojom/String16;

    iget p1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipUnderCursorParams;->textDirectionHint:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/WidgetHost;->updateTooltipUnderCursor(Lorg/chromium/mojo_base/mojom/String16;I)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSetCursorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSetCursorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSetCursorParams;->cursor:Lorg/chromium/ui/mojom/Cursor;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetHost;->setCursor(Lorg/chromium/ui/mojom/Cursor;)V

    return v2

    :pswitch_a
    sget-object p0, Lorg/chromium/blink/mojom/WidgetHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/WidgetHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
