.class final Lorg/chromium/blink/mojom/LocalFrameHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalFrameHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/LocalFrameHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/LocalFrameHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
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

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyDocumentInteractiveParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyDocumentInteractiveParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->notifyDocumentInteractive()V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;->targetFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;->accessType:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->recordWindowProxyUsageMetrics(Lorg/chromium/blink/mojom/FrameToken;I)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;->storageType:I

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;->blocked:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->notifyStorageAccessed(IZ)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostIssueKeepAliveHandleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostIssueKeepAliveHandleParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostIssueKeepAliveHandleParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->issueKeepAliveHandle(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->dragData:Lorg/chromium/blink/mojom/DragData;

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->operationsAllowed:Lorg/chromium/blink/mojom/AllowedDragOperations;

    iget-object v6, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->image:Lorg/chromium/skia/mojom/BitmapN32;

    iget-object v7, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->cursorOffsetInDip:Lorg/chromium/gfx/mojom/Vector2d;

    iget-object v8, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->dragObjRectInDip:Lorg/chromium/gfx/mojom/Rect;

    iget-object v9, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->eventInfo:Lorg/chromium/blink/mojom/DragEventSourceInfo;

    invoke-interface/range {v3 .. v9}, Lorg/chromium/blink/mojom/LocalFrameHost;->startDragging(Lorg/chromium/blink/mojom/DragData;Lorg/chromium/blink/mojom/AllowedDragOperations;Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Vector2d;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/DragEventSourceInfo;)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostOnViewTransitionOptInChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostOnViewTransitionOptInChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostOnViewTransitionOptInChangedParams;->viewTransitionOptIn:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->onViewTransitionOptInChanged(I)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardFencedFrameEventAndUserActivationToEmbedderParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardFencedFrameEventAndUserActivationToEmbedderParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardFencedFrameEventAndUserActivationToEmbedderParams;->eventType:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->forwardFencedFrameEventAndUserActivationToEmbedder(Ljava/lang/String;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->fencedFrame:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iget-object v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->remoteFrameInterfaces:Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromRenderer;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->frameToken:Lorg/chromium/blink/mojom/RemoteFrameToken;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->devtoolsFrameToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->createFencedFrame(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromRenderer;Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendPrivateAggregationRequestsForFencedFrameEventParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendPrivateAggregationRequestsForFencedFrameEventParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendPrivateAggregationRequestsForFencedFrameEventParams;->eventType:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->sendPrivateAggregationRequestsForFencedFrameEvent(Ljava/lang/String;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->eventType:I

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->eventData:Ljava/lang/String;

    iget-object v6, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->destinations:[I

    iget-boolean v7, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->once:Z

    iget-boolean v8, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->crossOriginExposed:Z

    invoke-interface/range {v3 .. v8}, Lorg/chromium/blink/mojom/LocalFrameHost;->setFencedFrameAutomaticBeaconReportEventData(ILjava/lang/String;[IZZ)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;->type:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;->codeLocation:Lorg/chromium/blink/mojom/LegacyTechEventCodeLocation;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->sendLegacyTechEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/LegacyTechEventCodeLocation;)V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;->destinationUrl:Lorg/chromium/url/mojom/Url;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;->crossOriginExposed:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->sendFencedFrameReportingBeaconToCustomUrl(Lorg/chromium/url/mojom/Url;Z)V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->eventData:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->eventType:Ljava/lang/String;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->destinations:[I

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->crossOriginExposed:Z

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->sendFencedFrameReportingBeacon(Ljava/lang/String;Ljava/lang/String;[IZ)V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostReceivedDelegatedCapabilityParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostReceivedDelegatedCapabilityParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostReceivedDelegatedCapabilityParams;->delegatedCapability:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->receivedDelegatedCapability(I)V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;->childFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;->srcdocValue:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didChangeSrcDoc(Lorg/chromium/blink/mojom/FrameToken;Ljava/lang/String;)V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidInferColorSchemeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidInferColorSchemeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidInferColorSchemeParams;->colorScheme:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didInferColorScheme(I)V

    return v2

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFrameSizeChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFrameSizeChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFrameSizeChangedParams;->size:Lorg/chromium/gfx/mojom/Size;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->frameSizeChanged(Lorg/chromium/gfx/mojom/Size;)V

    return v2

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->logLevel:I

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->msg:Lorg/chromium/mojo_base/mojom/BigString16;

    iget v6, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->lineNumber:I

    iget-object v7, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->sourceId:Lorg/chromium/mojo_base/mojom/String16;

    iget-object v8, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->untrustedStackTrace:Lorg/chromium/mojo_base/mojom/BigString16;

    invoke-interface/range {v3 .. v8}, Lorg/chromium/blink/mojom/LocalFrameHost;->didAddMessageToConsole(ILorg/chromium/mojo_base/mojom/BigString16;ILorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/BigString16;)V

    return v2

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGetKeepAliveHandleFactoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGetKeepAliveHandleFactoryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGetKeepAliveHandleFactoryParams;->factory:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->getKeepAliveHandleFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v2

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDetachParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDetachParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->detach()V

    return v2

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetCloseListenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetCloseListenerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetCloseListenerParams;->listener:Lorg/chromium/blink/mojom/CloseListener;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->setCloseListener(Lorg/chromium/blink/mojom/CloseListener;)V

    return v2

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;->clipRect:Lorg/chromium/gfx/mojom/Rect;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;->guid:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->capturePaintPreviewOfSubframe(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v2

    :pswitch_17
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;->childFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;->attributes:Lorg/chromium/blink/mojom/IframeAttributes;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didChangeIframeAttributes(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/IframeAttributes;)V

    return v2

    :pswitch_18
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;->childFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;->framePolicy:Lorg/chromium/blink/mojom/FramePolicy;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didChangeFramePolicy(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/FramePolicy;)V

    return v2

    :pswitch_19
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeOpenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeOpenerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeOpenerParams;->openerFrame:Lorg/chromium/blink/mojom/LocalFrameToken;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didChangeOpener(Lorg/chromium/blink/mojom/LocalFrameToken;)V

    return v2

    :pswitch_1a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;->childFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;->frameOwnerProperties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didChangeFrameOwnerProperties(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/FrameOwnerProperties;)V

    return v2

    :pswitch_1b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->httpMethod:Ljava/lang/String;

    iget-object v6, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->mimeType:Ljava/lang/String;

    iget v7, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->requestDestination:I

    iget-boolean v8, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->includeCredentials:Z

    invoke-interface/range {v3 .. v8}, Lorg/chromium/blink/mojom/LocalFrameHost;->didLoadResourceFromMemoryCache(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;IZ)V

    return v2

    :pswitch_1c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;->params:Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->showContextMenu(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;)V

    return v2

    :pswitch_1d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;->popupHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iget-object v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;->blinkWidgetHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;->blinkWidget:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->createNewPopupWidget(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;)V

    return v2

    :pswitch_1e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->popupClient:Lorg/chromium/blink/mojom/PopupMenuClient;

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->bounds:Lorg/chromium/gfx/mojom/Rect;

    iget-wide v6, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->fontSize:D

    iget v8, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->selectedItem:I

    iget-object v9, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->menuItems:[Lorg/chromium/blink/mojom/MenuItem;

    iget-boolean v10, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->rightAligned:Z

    iget-boolean v11, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->allowMultipleSelection:Z

    iget v12, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->advancedImeOptions:I

    invoke-interface/range {v3 .. v12}, Lorg/chromium/blink/mojom/LocalFrameHost;->showPopupMenu(Lorg/chromium/blink/mojom/PopupMenuClient;Lorg/chromium/gfx/mojom/Rect;DI[Lorg/chromium/blink/mojom/MenuItem;ZZI)V

    return v2

    :pswitch_1f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHidePopupMenuParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHidePopupMenuParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->hidePopupMenu()V

    return v2

    :pswitch_20
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;->text:Lorg/chromium/mojo_base/mojom/BigString16;

    iget v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;->offset:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;->range:Lorg/chromium/gfx/mojom/Range;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->textSelectionChanged(Lorg/chromium/mojo_base/mojom/BigString16;ILorg/chromium/gfx/mojom/Range;)V

    return v2

    :pswitch_21
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-boolean v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->isEditableElement:Z

    iget-boolean v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->isRichlyEditableElement:Z

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->boundsInFrameWidget:Lorg/chromium/gfx/mojom/Rect;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->focusType:I

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->focusedElementChanged(ZZLorg/chromium/gfx/mojom/Rect;I)V

    return v2

    :pswitch_22
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDownloadUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDownloadUrlParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDownloadUrlParams;->params:Lorg/chromium/blink/mojom/DownloadUrlParams;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->downloadUrl(Lorg/chromium/blink/mojom/DownloadUrlParams;)V

    return v2

    :pswitch_23
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateFaviconUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateFaviconUrlParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateFaviconUrlParams;->faviconUrls:[Lorg/chromium/blink/mojom/FaviconUrl;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->updateFaviconUrl([Lorg/chromium/blink/mojom/FaviconUrl;)V

    return v2

    :pswitch_24
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDispatchDomContentLoadedEventParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDispatchDomContentLoadedEventParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->didDispatchDomContentLoadedEvent()V

    return v2

    :pswitch_25
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardResourceTimingToParentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardResourceTimingToParentParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardResourceTimingToParentParams;->timing:Lorg/chromium/blink/mojom/ResourceTimingInfo;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->forwardResourceTimingToParent(Lorg/chromium/blink/mojom/ResourceTimingInfo;)V

    return v2

    :pswitch_26
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDocumentOnLoadCompletedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDocumentOnLoadCompletedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->documentOnLoadCompleted()V

    return v2

    :pswitch_27
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageTerminationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageTerminationParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->handleAccessibilityFindInPageTermination()V

    return v2

    :pswitch_28
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageResultParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageResultParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageResultParams;->params:Lorg/chromium/blink/mojom/FindInPageResultAxParams;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->handleAccessibilityFindInPageResult(Lorg/chromium/blink/mojom/FindInPageResultAxParams;)V

    return v2

    :pswitch_29
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidConsumeHistoryUserActivationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidConsumeHistoryUserActivationParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->didConsumeHistoryUserActivation()V

    return v2

    :pswitch_2a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;->updateType:I

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;->notificationType:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->updateUserActivationState(II)V

    return v2

    :pswitch_2b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateApplicationTitleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateApplicationTitleParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateApplicationTitleParams;->applicationTitle:Lorg/chromium/mojo_base/mojom/String16;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->updateApplicationTitle(Lorg/chromium/mojo_base/mojom/String16;)V

    return v2

    :pswitch_2c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;->title:Lorg/chromium/mojo_base/mojom/String16;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;->titleDirection:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->updateTitle(Lorg/chromium/mojo_base/mojom/String16;I)V

    return v2

    :pswitch_2d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateEventHandlerPresenceChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateEventHandlerPresenceChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateEventHandlerPresenceChangedParams;->present:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->navigateEventHandlerPresenceChanged(Z)V

    return v2

    :pswitch_2e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;->key:Ljava/lang/String;

    iget-boolean v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;->hasUserGesture:Z

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;->softNavigationHeuristicsTaskId:Lorg/chromium/blink/mojom/TaskAttributionId;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->navigateToNavigationApiKey(Ljava/lang/String;ZLorg/chromium/blink/mojom/TaskAttributionId;)V

    return v2

    :pswitch_2f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;->offset:I

    iget-boolean v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;->hasUserGesture:Z

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;->softNavigationHeuristicsTaskId:Lorg/chromium/blink/mojom/TaskAttributionId;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->goToEntryAtOffset(IZLorg/chromium/blink/mojom/TaskAttributionId;)V

    return v2

    :pswitch_30
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDispatchLoadParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDispatchLoadParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->dispatchLoad()V

    return v2

    :pswitch_31
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFinishLoadParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFinishLoadParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFinishLoadParams;->validatedUrl:Lorg/chromium/url/mojom/Url;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didFinishLoad(Lorg/chromium/url/mojom/Url;)V

    return v2

    :pswitch_32
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeLoadProgressParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeLoadProgressParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-wide v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeLoadProgressParams;->loadProgress:D

    invoke-interface {p0, v3, v4}, Lorg/chromium/blink/mojom/LocalFrameHost;->didChangeLoadProgress(D)V

    return v2

    :pswitch_33
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;->blockedUrl:Lorg/chromium/url/mojom/Url;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;->reason:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didBlockNavigation(Lorg/chromium/url/mojom/Url;I)V

    return v2

    :pswitch_34
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartLoadingForAsyncNavigationApiCommitParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartLoadingForAsyncNavigationApiCommitParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->startLoadingForAsyncNavigationApiCommit()V

    return v2

    :pswitch_35
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;->direction:I

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;->granularity:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->bubbleLogicalScrollInParentFrame(II)V

    return v2

    :pswitch_36
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;->rectToScroll:Lorg/chromium/gfx/mojom/RectF;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;->params:Lorg/chromium/blink/mojom/ScrollIntoViewParams;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->scrollRectToVisibleInParentFrame(Lorg/chromium/gfx/mojom/RectF;Lorg/chromium/blink/mojom/ScrollIntoViewParams;)V

    return v2

    :pswitch_37
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHadStickyUserActivationBeforeNavigationChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHadStickyUserActivationBeforeNavigationChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHadStickyUserActivationBeforeNavigationChangedParams;->hasGesture:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->hadStickyUserActivationBeforeNavigationChanged(Z)V

    return v2

    :pswitch_38
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-boolean v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;->present:Z

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;->disablerType:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->suddenTerminationDisablerChanged(ZI)V

    return v2

    :pswitch_39
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureNavigationsSetParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureNavigationsSetParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureNavigationsSetParams;->set:[I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->enforceInsecureNavigationsSet([I)V

    return v2

    :pswitch_3a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureRequestPolicyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureRequestPolicyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureRequestPolicyParams;->policyBitmap:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->enforceInsecureRequestPolicy(I)V

    return v2

    :pswitch_3b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidCallFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidCallFocusParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->didCallFocus()V

    return v2

    :pswitch_3c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFocusFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFocusFrameParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->didFocusFrame()V

    return v2

    :pswitch_3d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;->errorCode:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didFailLoadWithError(Lorg/chromium/url/mojom/Url;I)V

    return v2

    :pswitch_3e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;->backgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;->colorAdjust:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didChangeBackgroundColor(Lorg/chromium/skia/mojom/SkColor4f;Z)V

    return v2

    :pswitch_3f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeThemeColorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeThemeColorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeThemeColorParams;->themeColor:Lorg/chromium/skia/mojom/SkColor;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->didChangeThemeColor(Lorg/chromium/skia/mojom/SkColor;)V

    return v2

    :pswitch_40
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostVisibilityChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostVisibilityChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostVisibilityChangedParams;->visibility:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->visibilityChanged(I)V

    return v2

    :pswitch_41
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetVirtualKeyboardModeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetVirtualKeyboardModeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetVirtualKeyboardModeParams;->type:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->setVirtualKeyboardMode(I)V

    return v2

    :pswitch_42
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetNeedsOcclusionTrackingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetNeedsOcclusionTrackingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetNeedsOcclusionTrackingParams;->needsTracking:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->setNeedsOcclusionTracking(Z)V

    return v2

    :pswitch_43
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostMainDocumentElementAvailableParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostMainDocumentElementAvailableParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostMainDocumentElementAvailableParams;->usesTemporaryZoomLevel:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->mainDocumentElementAvailable(Z)V

    return v2

    :pswitch_44
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidContainInsecureFormActionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidContainInsecureFormActionParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->didContainInsecureFormAction()V

    return v2

    :pswitch_45
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDisplayInsecureContentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDisplayInsecureContentParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->didDisplayInsecureContent()V

    return v2

    :pswitch_46
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;->scheme:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;->url:Lorg/chromium/url/mojom/Url;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;->userGesture:Z

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->unregisterProtocolHandler(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Z)V

    return v2

    :pswitch_47
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;->scheme:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;->url:Lorg/chromium/url/mojom/Url;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;->userGesture:Z

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->registerProtocolHandler(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Z)V

    return v2

    :pswitch_48
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-boolean v1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;->isFullscreen:Z

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;->options:Lorg/chromium/blink/mojom/FullscreenOptions;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/LocalFrameHost;->fullscreenStateChanged(ZLorg/chromium/blink/mojom/FullscreenOptions;)V

    return v2

    :pswitch_49
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExitFullscreenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExitFullscreenParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/LocalFrameHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/LocalFrameHost;->exitFullscreen()V

    return v2

    :pswitch_4a
    sget-object p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_4a
        :pswitch_0
        :pswitch_0
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
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
        :pswitch_0
        :pswitch_0
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
    .locals 9

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

    if-eqz v2, :cond_4

    const/16 v4, 0x43

    if-eq v2, v4, :cond_3

    const/16 v4, 0x44

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmParams;->isReload:Z

    new-instance v4, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/LocalFrameHost;->runBeforeUnloadConfirm(ZLorg/chromium/blink/mojom/LocalFrameHost$RunBeforeUnloadConfirm_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;->alertMessage:Lorg/chromium/mojo_base/mojom/String16;

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;->defaultValue:Lorg/chromium/mojo_base/mojom/String16;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;->disableThirdPartySubframeSuppresion:Z

    new-instance v6, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/blink/mojom/LocalFrameHost;->runModalPromptDialog(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalPromptDialog_Response;)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;->alertMessage:Lorg/chromium/mojo_base/mojom/String16;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;->disableThirdPartySubframeSuppresion:Z

    new-instance v5, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/LocalFrameHost;->runModalConfirmDialog(Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalConfirmDialog_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;->alertMessage:Lorg/chromium/mojo_base/mojom/String16;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;->disableThirdPartySubframeSuppresion:Z

    new-instance v5, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/LocalFrameHost;->runModalAlertDialog(Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalAlertDialog_Response;)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingParams;->exemptedUrl:Lorg/chromium/url/mojom/Url;

    new-instance v4, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/LocalFrameHost;->exemptUrlFromNetworkRevocationForTesting(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/LocalFrameHost$ExemptUrlFromNetworkRevocationForTesting_Response;)V

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/LocalFrameHost;

    new-instance v2, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/LocalFrameHost;->disableUntrustedNetworkInFencedFrame(Lorg/chromium/blink/mojom/LocalFrameHost$DisableUntrustedNetworkInFencedFrame_Response;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrameHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenParams;->options:Lorg/chromium/blink/mojom/FullscreenOptions;

    new-instance v4, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/LocalFrameHost;->enterFullscreen(Lorg/chromium/blink/mojom/FullscreenOptions;Lorg/chromium/blink/mojom/LocalFrameHost$EnterFullscreen_Response;)V

    return v3

    :cond_5
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
