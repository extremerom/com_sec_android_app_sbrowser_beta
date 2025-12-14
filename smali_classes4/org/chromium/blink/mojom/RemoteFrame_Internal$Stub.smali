.class final Lorg/chromium/blink/mojom/RemoteFrame_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/RemoteFrame_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/RemoteFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/RemoteFrame;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 12

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

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameForwardFencedFrameEventToEmbedderParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameForwardFencedFrameEventToEmbedderParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameForwardFencedFrameEventToEmbedderParams;->eventType:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->forwardFencedFrameEventToEmbedder(Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildrenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildrenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildrenParams;->params:[Lorg/chromium/blink/mojom/CreateRemoteChildParams;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->createRemoteChildren([Lorg/chromium/blink/mojom/CreateRemoteChildParams;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object v4, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->token:Lorg/chromium/blink/mojom/RemoteFrameToken;

    iget-object v5, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iget v6, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->treeScopeType:I

    iget-object v7, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->replicationState:Lorg/chromium/blink/mojom/FrameReplicationState;

    iget-object v8, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->ownerProperties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->isLoading:Z

    iget-object v10, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->devtoolsFrameToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v11, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCreateRemoteChildParams;->remoteFrameInterfaces:Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;

    invoke-interface/range {v3 .. v11}, Lorg/chromium/blink/mojom/RemoteFrame;->createRemoteChild(Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/blink/mojom/FrameToken;ILorg/chromium/blink/mojom/FrameReplicationState;Lorg/chromium/blink/mojom/FrameOwnerProperties;ZLorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameChildProcessGoneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameChildProcessGoneParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrame;->childProcessGone()V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameSinkIdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameSinkIdParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameSinkIdParams;->frameSinkId:Lorg/chromium/viz/mojom/FrameSinkId;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameSinkIdParams;->allowPaintHolding:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setFrameSinkId(Lorg/chromium/viz/mojom/FrameSinkId;Z)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidUpdateVisualPropertiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidUpdateVisualPropertiesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidUpdateVisualPropertiesParams;->metadata:Lorg/chromium/cc/mojom/RenderFrameMetadata;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->didUpdateVisualProperties(Lorg/chromium/cc/mojom/RenderFrameMetadata;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDisableAutoResizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDisableAutoResizeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrame;->disableAutoResize()V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnableAutoResizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnableAutoResizeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnableAutoResizeParams;->minSize:Lorg/chromium/gfx/mojom/Size;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnableAutoResizeParams;->maxSize:Lorg/chromium/gfx/mojom/Size;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->enableAutoResize(Lorg/chromium/gfx/mojom/Size;Lorg/chromium/gfx/mojom/Size;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDetachAndDisposeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDetachAndDisposeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrame;->detachAndDispose()V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateOpenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateOpenerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateOpenerParams;->openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->updateOpener(Lorg/chromium/blink/mojom/FrameToken;)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidUpdateFramePolicyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidUpdateFramePolicyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidUpdateFramePolicyParams;->framePolicy:Lorg/chromium/blink/mojom/FramePolicy;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->didUpdateFramePolicy(Lorg/chromium/blink/mojom/FramePolicy;)V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidSetFramePolicyHeadersParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidSetFramePolicyHeadersParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget v1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidSetFramePolicyHeadersParams;->sandboxFlags:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidSetFramePolicyHeadersParams;->parsedPermissionsPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->didSetFramePolicyHeaders(I[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;)V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameIntrinsicSizingInfoOfChildChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameIntrinsicSizingInfoOfChildChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameIntrinsicSizingInfoOfChildChangedParams;->sizingInfo:Lorg/chromium/blink/mojom/IntrinsicSizingInfo;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->intrinsicSizingInfoOfChildChanged(Lorg/chromium/blink/mojom/IntrinsicSizingInfo;)V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidStopLoadingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidStopLoadingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrame;->didStopLoading()V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidStartLoadingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDidStartLoadingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrame;->didStartLoading()V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameScrollRectToVisibleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameScrollRectToVisibleParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameScrollRectToVisibleParams;->rect:Lorg/chromium/gfx/mojom/RectF;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameScrollRectToVisibleParams;->params:Lorg/chromium/blink/mojom/ScrollIntoViewParams;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->scrollRectToVisible(Lorg/chromium/gfx/mojom/RectF;Lorg/chromium/blink/mojom/ScrollIntoViewParams;)V

    return v2

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameAddResourceTimingFromChildParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameAddResourceTimingFromChildParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameAddResourceTimingFromChildParams;->timing:Lorg/chromium/blink/mojom/ResourceTimingInfo;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->addResourceTimingFromChild(Lorg/chromium/blink/mojom/ResourceTimingInfo;)V

    return v2

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameRenderFallbackContentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameRenderFallbackContentParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrame;->renderFallbackContent()V

    return v2

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetPageFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetPageFocusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetPageFocusParams;->isFocused:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setPageFocus(Z)V

    return v2

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetEmbeddingTokenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetEmbeddingTokenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetEmbeddingTokenParams;->embeddingToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setEmbeddingToken(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v2

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateUserActivationStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateUserActivationStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget v1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateUserActivationStateParams;->stateUpdateType:I

    iget p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameUpdateUserActivationStateParams;->notificationType:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->updateUserActivationState(II)V

    return v2

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameBubbleLogicalScrollParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameBubbleLogicalScrollParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget v1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameBubbleLogicalScrollParams;->direction:I

    iget p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameBubbleLogicalScrollParams;->granularity:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->bubbleLogicalScroll(II)V

    return v2

    :pswitch_17
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetHadStickyUserActivationBeforeNavigationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetHadStickyUserActivationBeforeNavigationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetHadStickyUserActivationBeforeNavigationParams;->hasGesture:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setHadStickyUserActivationBeforeNavigation(Z)V

    return v2

    :pswitch_18
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameFocusParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrame;->focus()V

    return v2

    :pswitch_19
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCollapseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCollapseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameCollapseParams;->collapsed:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->collapse(Z)V

    return v2

    :pswitch_1a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetNeedsOcclusionTrackingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetNeedsOcclusionTrackingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetNeedsOcclusionTrackingParams;->needsTracking:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setNeedsOcclusionTracking(Z)V

    return v2

    :pswitch_1b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDispatchLoadEventForFrameOwnerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameDispatchLoadEventForFrameOwnerParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/RemoteFrame;->dispatchLoadEventForFrameOwner()V

    return v2

    :pswitch_1c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedNameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedNameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedNameParams;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedNameParams;->uniqueName:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setReplicatedName(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_1d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedIsAdFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedIsAdFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedIsAdFrameParams;->isAdFrame:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setReplicatedIsAdFrame(Z)V

    return v2

    :pswitch_1e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedOriginParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedOriginParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object v1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedOriginParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetReplicatedOriginParams;->isPotentiallyTrustworthyUniqueOrigin:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setReplicatedOrigin(Lorg/chromium/url/internal/mojom/Origin;Z)V

    return v2

    :pswitch_1f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnforceInsecureRequestPolicyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnforceInsecureRequestPolicyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnforceInsecureRequestPolicyParams;->policy:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->enforceInsecureRequestPolicy(I)V

    return v2

    :pswitch_20
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameOwnerPropertiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameOwnerPropertiesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameSetFrameOwnerPropertiesParams;->properties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->setFrameOwnerProperties(Lorg/chromium/blink/mojom/FrameOwnerProperties;)V

    return v2

    :pswitch_21
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnforceInsecureNavigationsSetParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnforceInsecureNavigationsSetParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameEnforceInsecureNavigationsSetParams;->set:[I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->enforceInsecureNavigationsSet([I)V

    return v2

    :pswitch_22
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameWillEnterFullscreenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameWillEnterFullscreenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/RemoteFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/RemoteFrame_Internal$RemoteFrameWillEnterFullscreenParams;->options:Lorg/chromium/blink/mojom/FullscreenOptions;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/RemoteFrame;->willEnterFullscreen(Lorg/chromium/blink/mojom/FullscreenOptions;)V

    return v2

    :pswitch_23
    sget-object p0, Lorg/chromium/blink/mojom/RemoteFrame_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_23
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

    sget-object v1, Lorg/chromium/blink/mojom/RemoteFrame_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
