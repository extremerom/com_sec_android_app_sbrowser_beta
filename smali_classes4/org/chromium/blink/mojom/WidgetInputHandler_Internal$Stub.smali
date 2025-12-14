.class final Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WidgetInputHandler_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/WidgetInputHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/WidgetInputHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

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

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->constraints:I

    iget v3, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->current:I

    iget-boolean v4, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->animate:Z

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->offsetTagModifications:Lorg/chromium/cc/mojom/BrowserControlsOffsetTagModifications;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->updateBrowserControlsState(IIZLorg/chromium/cc/mojom/BrowserControlsOffsetTagModifications;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerGetFrameWidgetInputHandlerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerGetFrameWidgetInputHandlerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerGetFrameWidgetInputHandlerParams;->interfaceRequest:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->getFrameWidgetInputHandler(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-object v1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;->controlHost:Lorg/chromium/blink/mojom/SynchronousCompositorControlHost;

    iget-object v3, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;->host:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;->compositorRequest:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->attachSynchronousCompositor(Lorg/chromium/blink/mojom/SynchronousCompositorControlHost;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchNonBlockingEventParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchNonBlockingEventParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchNonBlockingEventParams;->event:Lorg/chromium/blink/mojom/Event;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->dispatchNonBlockingEvent(Lorg/chromium/blink/mojom/Event;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-boolean v1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;->immediateRequest:Z

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;->monitorRequest:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->requestCompositionUpdates(ZZ)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestTextInputStateUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestTextInputStateUpdateParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/WidgetInputHandler;->requestTextInputStateUpdate()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeFinishComposingTextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeFinishComposingTextParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeFinishComposingTextParams;->keepSelection:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->imeFinishComposingText(Z)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerCursorVisibilityChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerCursorVisibilityChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerCursorVisibilityChangedParams;->visible:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->cursorVisibilityChanged(Z)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetEditCommandsForNextKeyEventParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetEditCommandsForNextKeyEventParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetEditCommandsForNextKeyEventParams;->commands:[Lorg/chromium/blink/mojom/EditCommand;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->setEditCommandsForNextKeyEvent([Lorg/chromium/blink/mojom/EditCommand;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerMouseCaptureLostParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerMouseCaptureLostParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/WidgetInputHandler;->mouseCaptureLost()V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetFocusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetFocusParams;->state:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler;->setFocus(I)V

    return v2

    :pswitch_c
    sget-object p0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    const/16 v6, 0x9

    if-eq v3, v6, :cond_5

    const/16 v6, 0xb

    if-eq v3, v6, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-object v7, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->text:Lorg/chromium/mojo_base/mojom/String16;

    iget-object v8, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->imeTextSpans:[Lorg/chromium/ui/mojom/ImeTextSpan;

    iget-object v9, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->range:Lorg/chromium/gfx/mojom/Range;

    iget v10, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->relativeCursorPosition:I

    new-instance v11, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v11}, Lorg/chromium/blink/mojom/WidgetInputHandler;->imeCommitText(Lorg/chromium/mojo_base/mojom/String16;[Lorg/chromium/ui/mojom/ImeTextSpan;Lorg/chromium/gfx/mojom/Range;ILorg/chromium/blink/mojom/WidgetInputHandler$ImeCommitText_Response;)V

    return v5

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-object v7, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->text:Lorg/chromium/mojo_base/mojom/String16;

    iget-object v8, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->imeTextSpans:[Lorg/chromium/ui/mojom/ImeTextSpan;

    iget-object v9, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->range:Lorg/chromium/gfx/mojom/Range;

    iget v10, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->start:I

    iget v11, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->end:I

    new-instance v12, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v12, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v12}, Lorg/chromium/blink/mojom/WidgetInputHandler;->imeSetComposition(Lorg/chromium/mojo_base/mojom/String16;[Lorg/chromium/ui/mojom/ImeTextSpan;Lorg/chromium/gfx/mojom/Range;IILorg/chromium/blink/mojom/WidgetInputHandler$ImeSetComposition_Response;)V

    return v5

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/WidgetInputHandler;

    new-instance v2, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v3

    invoke-direct {v2, p0, p2, v3, v4}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/WidgetInputHandler;->waitForInputProcessed(Lorg/chromium/blink/mojom/WidgetInputHandler$WaitForInputProcessed_Response;)V

    return v5

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/WidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventParams;->event:Lorg/chromium/blink/mojom/Event;

    new-instance v3, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v3, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/WidgetInputHandler;->dispatchEvent(Lorg/chromium/blink/mojom/Event;Lorg/chromium/blink/mojom/WidgetInputHandler$DispatchEvent_Response;)V

    return v5

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
