.class final Lorg/chromium/blink/mojom/LocalMainFrame_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalMainFrame_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/LocalMainFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/LocalMainFrame;)V
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

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameFinalizeNavigationConfidenceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameFinalizeNavigationConfidenceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    iget-wide v3, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameFinalizeNavigationConfidenceParams;->randomizedTriggerRate:D

    iget p1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameFinalizeNavigationConfidenceParams;->confidence:I

    invoke-interface {p0, v3, v4, p1}, Lorg/chromium/blink/mojom/LocalMainFrame;->finalizeNavigationConfidence(DI)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameDiscardParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameDiscardParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrame;->discard()V

    return v2

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetV8CompileHintsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetV8CompileHintsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetV8CompileHintsParams;->data:Lorg/chromium/mojo_base/mojom/ReadOnlySharedMemoryRegion;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrame;->setV8CompileHints(Lorg/chromium/mojo_base/mojom/ReadOnlySharedMemoryRegion;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameUpdateBrowserControlsStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameUpdateBrowserControlsStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    iget v1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameUpdateBrowserControlsStateParams;->constraints:I

    iget v3, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameUpdateBrowserControlsStateParams;->current:I

    iget-boolean v4, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameUpdateBrowserControlsStateParams;->animate:Z

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameUpdateBrowserControlsStateParams;->offsetTagModifications:Lorg/chromium/cc/mojom/BrowserControlsOffsetTagModifications;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/LocalMainFrame;->updateBrowserControlsState(IIZLorg/chromium/cc/mojom/BrowserControlsOffsetTagModifications;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameInstallCoopAccessMonitorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameInstallCoopAccessMonitorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameInstallCoopAccessMonitorParams;->accessedWindow:Lorg/chromium/blink/mojom/FrameToken;

    iget-object v3, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameInstallCoopAccessMonitorParams;->coopReporterInfo:Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameInstallCoopAccessMonitorParams;->isInSameVirtualCoopRelatedGroup:Z

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/LocalMainFrame;->installCoopAccessMonitor(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/network/mojom/CrossOriginOpenerPolicyReporterParams;Z)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameZoomToFindInPageRectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameZoomToFindInPageRectParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameZoomToFindInPageRectParams;->rectInRootFrame:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrame;->zoomToFindInPageRect(Lorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameEnablePreferredSizeChangedModeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameEnablePreferredSizeChangedModeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrame;->enablePreferredSizeChangedMode()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetInitialFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetInitialFocusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetInitialFocusParams;->reverse:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrame;->setInitialFocus(Z)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetScaleFactorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetScaleFactorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameSetScaleFactorParams;->scale:F

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrame;->setScaleFactor(F)V

    return v2

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameAnimateDoubleTapZoomParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameAnimateDoubleTapZoomParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrame;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameAnimateDoubleTapZoomParams;->point:Lorg/chromium/gfx/mojom/Point;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameAnimateDoubleTapZoomParams;->rect:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalMainFrame;->animateDoubleTapZoom(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Rect;)V

    return v2

    :cond_4
    sget-object p0, Lorg/chromium/blink/mojom/LocalMainFrame_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 6

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

    if-eq v2, v4, :cond_5

    const/16 v4, 0xc

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameGetFullPageSizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameGetFullPageSizeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/LocalMainFrame;

    new-instance v2, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameGetFullPageSizeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameGetFullPageSizeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/LocalMainFrame;->getFullPageSize(Lorg/chromium/blink/mojom/LocalMainFrame$GetFullPageSize_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/LocalMainFrame;

    new-instance v2, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameClosePageResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/LocalMainFrame;->closePage(Lorg/chromium/blink/mojom/LocalMainFrame$ClosePage_Response;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameRecognizeArticleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameRecognizeArticleParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/LocalMainFrame;

    new-instance v2, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameRecognizeArticleResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/LocalMainFrame_Internal$LocalMainFrameRecognizeArticleResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/LocalMainFrame;->recognizeArticle(Lorg/chromium/blink/mojom/LocalMainFrame$RecognizeArticle_Response;)V

    return v3

    :cond_5
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/LocalMainFrame_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
