.class final Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/RemoteFrameHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/RemoteFrameHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/RemoteFrameHost;)V
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

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostOpenUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostOpenUrlParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostOpenUrlParams;->params:Lorg/chromium/blink/mojom/OpenUrlParams;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->openUrl(Lorg/chromium/blink/mojom/OpenUrlParams;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSynchronizeVisualPropertiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSynchronizeVisualPropertiesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSynchronizeVisualPropertiesParams;->properties:Lorg/chromium/blink/mojom/FrameVisualProperties;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->synchronizeVisualProperties(Lorg/chromium/blink/mojom/FrameVisualProperties;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateViewportIntersectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateViewportIntersectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateViewportIntersectionParams;->intersectionState:Lorg/chromium/blink/mojom/ViewportIntersectionState;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateViewportIntersectionParams;->visualProperties:Lorg/chromium/blink/mojom/FrameVisualProperties;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->updateViewportIntersection(Lorg/chromium/blink/mojom/ViewportIntersectionState;Lorg/chromium/blink/mojom/FrameVisualProperties;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDetachParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDetachParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrameHost;->detach()V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostPrintCrossProcessSubframeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostPrintCrossProcessSubframeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostPrintCrossProcessSubframeParams;->frameContentRect:Lorg/chromium/gfx/mojom/Rect;

    iget p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostPrintCrossProcessSubframeParams;->documentCookie:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->printCrossProcessSubframe(Lorg/chromium/gfx/mojom/Rect;I)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostRouteMessageEventParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostRouteMessageEventParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostRouteMessageEventParams;->sourceFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

    iget-object v3, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostRouteMessageEventParams;->sourceOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget-object v4, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostRouteMessageEventParams;->targetOrigin:Lorg/chromium/mojo_base/mojom/String16;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostRouteMessageEventParams;->message:Lorg/chromium/blink/mojom/TransferableMessage;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->routeMessageEvent(Lorg/chromium/blink/mojom/LocalFrameToken;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/TransferableMessage;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostAdvanceFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostAdvanceFocusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget v1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostAdvanceFocusParams;->focusType:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostAdvanceFocusParams;->sourceFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->advanceFocus(ILorg/chromium/blink/mojom/LocalFrameToken;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDidChangeOpenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDidChangeOpenerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDidChangeOpenerParams;->openerFrame:Lorg/chromium/blink/mojom/LocalFrameToken;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->didChangeOpener(Lorg/chromium/blink/mojom/LocalFrameToken;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSetIsInertParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSetIsInertParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSetIsInertParams;->inert:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->setIsInert(Z)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostCapturePaintPreviewOfCrossProcessSubframeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostCapturePaintPreviewOfCrossProcessSubframeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostCapturePaintPreviewOfCrossProcessSubframeParams;->clipRect:Lorg/chromium/gfx/mojom/Rect;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostCapturePaintPreviewOfCrossProcessSubframeParams;->guid:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->capturePaintPreviewOfCrossProcessSubframe(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostCheckCompletedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostCheckCompletedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrameHost;->checkCompleted()V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDidFocusFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostDidFocusFrameParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrameHost;->didFocusFrame()V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostVisibilityChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostVisibilityChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostVisibilityChangedParams;->visibility:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->visibilityChanged(I)V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateRenderThrottlingStatusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateRenderThrottlingStatusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget-boolean v1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateRenderThrottlingStatusParams;->isThrottled:Z

    iget-boolean v3, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateRenderThrottlingStatusParams;->subtreeThrottled:Z

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostUpdateRenderThrottlingStatusParams;->displayLocked:Z

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->updateRenderThrottlingStatus(ZZZ)V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSetInheritedEffectiveTouchActionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSetInheritedEffectiveTouchActionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal$RemoteFrameHostSetInheritedEffectiveTouchActionParams;->touchAction:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrameHost;->setInheritedEffectiveTouchAction(I)V

    return v2

    :pswitch_10
    sget-object p0, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    sget-object v1, Lorg/chromium/blink/mojom/RemoteFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
