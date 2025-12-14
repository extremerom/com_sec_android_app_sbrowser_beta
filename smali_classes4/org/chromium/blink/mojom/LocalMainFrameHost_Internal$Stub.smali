.class final Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/LocalMainFrameHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/LocalMainFrameHost;)V
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

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_8

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-eq v1, v3, :cond_7

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostOnFirstContentfulPaintParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostOnFirstContentfulPaintParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->onFirstContentfulPaint()V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDraggableRegionsChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDraggableRegionsChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDraggableRegionsChangedParams;->regions:[Lorg/chromium/blink/mojom/DraggableRegion;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->draggableRegionsChanged([Lorg/chromium/blink/mojom/DraggableRegion;)V

    return v4

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetResizableParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetResizableParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetResizableParams;->resizable:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->setResizable(Z)V

    return v4

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostRestoreParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostRestoreParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->restore()V

    return v4

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostMinimizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostMinimizeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->minimize()V

    return v4

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostMaximizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostMaximizeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->maximize()V

    return v4

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDidAccessInitialMainDocumentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDidAccessInitialMainDocumentParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->didAccessInitialMainDocument()V

    return v4

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDidFirstVisuallyNonEmptyPaintParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostDidFirstVisuallyNonEmptyPaintParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->didFirstVisuallyNonEmptyPaint()V

    return v4

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostOnStartContentIntentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostOnStartContentIntentParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostOnStartContentIntentParams;->intent:Lorg/chromium/url/mojom/Url;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostOnStartContentIntentParams;->isMainFrame:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->onStartContentIntent(Lorg/chromium/url/mojom/Url;Z)V

    return v4

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostTakeFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostTakeFocusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostTakeFocusParams;->reverse:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->takeFocus(Z)V

    return v4

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostFocusPageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostFocusPageParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->focusPage()V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostTextAutosizerPageInfoChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostTextAutosizerPageInfoChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostTextAutosizerPageInfoChangedParams;->pageInfo:Lorg/chromium/blink/mojom/TextAutosizerPageInfo;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->textAutosizerPageInfoChanged(Lorg/chromium/blink/mojom/TextAutosizerPageInfo;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostContentsPreferredSizeChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostContentsPreferredSizeChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostContentsPreferredSizeChangedParams;->prefSize:Lorg/chromium/gfx/mojom/Size;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->contentsPreferredSizeChanged(Lorg/chromium/gfx/mojom/Size;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostScaleFactorChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostScaleFactorChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostScaleFactorChangedParams;->scale:F

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->scaleFactorChanged(F)V

    return v4

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostRequestCloseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostRequestCloseParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->requestClose()V

    return v4

    :cond_8
    sget-object p0, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .packed-switch 0x9
        :pswitch_8
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

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectParams;->bounds:Lorg/chromium/gfx/mojom/Rect;

    new-instance v3, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostSetWindowRectResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->setWindowRect(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/LocalMainFrameHost$SetWindowRect_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-object v6, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowParams;->openerFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

    iget v7, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowParams;->disposition:I

    iget-object v8, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowParams;->windowFeatures:Lorg/chromium/blink/mojom/WindowFeatures;

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowParams;->openedByUserGesture:Z

    new-instance v10, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostShowCreatedWindowResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->showCreatedWindow(Lorg/chromium/blink/mojom/LocalFrameToken;ILorg/chromium/blink/mojom/WindowFeatures;ZLorg/chromium/blink/mojom/LocalMainFrameHost$ShowCreatedWindow_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalMainFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlParams;->url:Lorg/chromium/url/mojom/Url;

    new-instance v3, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal$LocalMainFrameHostUpdateTargetUrlResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/LocalMainFrameHost;->updateTargetUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/LocalMainFrameHost$UpdateTargetUrl_Response;)V

    return v4

    :cond_5
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/LocalMainFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
