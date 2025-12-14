.class final Lorg/chromium/blink/mojom/LocalFrame_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalFrame_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/LocalFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/LocalFrame;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 20

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v5, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->subframeToken:Lorg/chromium/blink/mojom/FrameToken;

    iget-object v6, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->initialUrl:Lorg/chromium/url/mojom/Url;

    iget-object v7, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->startTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    iget-object v8, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->redirectTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    iget-object v9, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->requestStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    iget-object v10, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->responseStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    iget v11, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->responseCode:I

    iget-object v12, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->mimeType:Ljava/lang/String;

    iget-object v13, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->loadTimingInfo:Lorg/chromium/network/mojom/LoadTimingInfo;

    iget v14, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->connectionInfo:I

    iget-object v15, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->alpnNegotiatedProtocol:Ljava/lang/String;

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->isSecureTransport:Z

    iget-boolean v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->isValidated:Z

    iget-object v3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->normalizedServerTiming:Ljava/lang/String;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->completionStatus:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    move/from16 v16, v2

    move/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v0

    invoke-interface/range {v4 .. v19}, Lorg/chromium/blink/mojom/LocalFrame;->addResourceTimingEntryForFailedSubframeNavigation(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;ILjava/lang/String;Lorg/chromium/network/mojom/LoadTimingInfo;ILjava/lang/String;ZZLjava/lang/String;Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchPageSwapParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchPageSwapParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchPageSwapParams;->pageSwapEventParams:Lorg/chromium/blink/mojom/PageSwapEventParams;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->dispatchPageSwap(Lorg/chromium/blink/mojom/PageSwapEventParams;)V

    const/4 v0, 0x1

    return v0

    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyViewTransitionAbortedToOldDocumentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyViewTransitionAbortedToOldDocumentParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/LocalFrame;

    invoke-interface {v0}, Lorg/chromium/blink/mojom/LocalFrame;->notifyViewTransitionAbortedToOldDocument()V

    const/4 v0, 0x1

    return v0

    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;->pageState:Lorg/chromium/mojo_base/mojom/ByteString;

    iget-boolean v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;->isBrowserInitiated:Z

    invoke-interface {v1, v2, v3, v0}, Lorg/chromium/blink/mojom/LocalFrame;->dispatchNavigateEventForCrossDocumentTraversal(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/ByteString;Z)V

    const/4 v0, 0x1

    return v0

    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameTraverseCancelledParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameTraverseCancelledParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameTraverseCancelledParams;->navigationApiKey:Ljava/lang/String;

    iget v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameTraverseCancelledParams;->reason:I

    invoke-interface {v1, v2, v0}, Lorg/chromium/blink/mojom/LocalFrame;->traverseCancelled(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0

    :pswitch_6
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyNavigationApiOfDisposedEntriesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyNavigationApiOfDisposedEntriesParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyNavigationApiOfDisposedEntriesParams;->keys:[Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->notifyNavigationApiOfDisposedEntries([Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :pswitch_7
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetNavigationApiHistoryEntriesForRestoreParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetNavigationApiHistoryEntriesForRestoreParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetNavigationApiHistoryEntriesForRestoreParams;->entryArrays:Lorg/chromium/blink/mojom/NavigationApiHistoryEntryArrays;

    iget v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetNavigationApiHistoryEntriesForRestoreParams;->restoreReason:I

    invoke-interface {v1, v2, v0}, Lorg/chromium/blink/mojom/LocalFrame;->setNavigationApiHistoryEntriesForRestore(Lorg/chromium/blink/mojom/NavigationApiHistoryEntryArrays;I)V

    const/4 v0, 0x1

    return v0

    :pswitch_8
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameHandleRendererDebugUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameHandleRendererDebugUrlParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameHandleRendererDebugUrlParams;->url:Lorg/chromium/url/mojom/Url;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->handleRendererDebugUrl(Lorg/chromium/url/mojom/Url;)V

    const/4 v0, 0x1

    return v0

    :pswitch_9
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindDevToolsAgentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindDevToolsAgentParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindDevToolsAgentParams;->agentHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindDevToolsAgentParams;->agent:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    invoke-interface {v1, v2, v0}, Lorg/chromium/blink/mojom/LocalFrame;->bindDevToolsAgent(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;)V

    const/4 v0, 0x1

    return v0

    :pswitch_a
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->mainResourceUrl:Lorg/chromium/url/mojom/Url;

    iget-object v4, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->mixedContentUrl:Lorg/chromium/url/mojom/Url;

    iget v5, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->requestContext:I

    iget-boolean v6, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->wasAllowed:Z

    iget-object v7, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->urlBeforeRedirects:Lorg/chromium/url/mojom/Url;

    iget-boolean v8, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->hadRedirect:Z

    iget-object v9, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->sourceLocation:Lorg/chromium/network/mojom/SourceLocation;

    invoke-interface/range {v2 .. v9}, Lorg/chromium/blink/mojom/LocalFrame;->mixedContentFound(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;IZLorg/chromium/url/mojom/Url;ZLorg/chromium/network/mojom/SourceLocation;)V

    const/4 v0, 0x1

    return v0

    :pswitch_b
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdateOpenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdateOpenerParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdateOpenerParams;->openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->updateOpener(Lorg/chromium/blink/mojom/FrameToken;)V

    const/4 v0, 0x1

    return v0

    :pswitch_c
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindReportingObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindReportingObserverParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindReportingObserverParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->bindReportingObserver(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 v0, 0x1

    return v0

    :pswitch_d
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->sourceFrameToken:Lorg/chromium/blink/mojom/RemoteFrameToken;

    iget-object v3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->sourceOrigin:Lorg/chromium/mojo_base/mojom/String16;

    iget-object v4, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->targetOrigin:Lorg/chromium/mojo_base/mojom/String16;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->message:Lorg/chromium/blink/mojom/TransferableMessage;

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/chromium/blink/mojom/LocalFrame;->postMessageEvent(Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/TransferableMessage;)V

    const/4 v0, 0x1

    return v0

    :pswitch_e
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameOnFrameVisibilityChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameOnFrameVisibilityChangedParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameOnFrameVisibilityChangedParams;->visibility:I

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->onFrameVisibilityChanged(I)V

    const/4 v0, 0x1

    return v0

    :pswitch_f
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDidUpdateFramePolicyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDidUpdateFramePolicyParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDidUpdateFramePolicyParams;->framePolicy:Lorg/chromium/blink/mojom/FramePolicy;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->didUpdateFramePolicy(Lorg/chromium/blink/mojom/FramePolicy;)V

    const/4 v0, 0x1

    return v0

    :pswitch_10
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportContentSecurityPolicyViolationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportContentSecurityPolicyViolationParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportContentSecurityPolicyViolationParams;->violation:Lorg/chromium/network/mojom/CspViolation;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->reportContentSecurityPolicyViolation(Lorg/chromium/network/mojom/CspViolation;)V

    const/4 v0, 0x1

    return v0

    :pswitch_11
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusForImeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusForImeParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusForImeParams;->focusType:I

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->advanceFocusForIme(I)V

    const/4 v0, 0x1

    return v0

    :pswitch_12
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusInFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusInFrameParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusInFrameParams;->focusType:I

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusInFrameParams;->sourceFrameToken:Lorg/chromium/blink/mojom/RemoteFrameToken;

    invoke-interface {v1, v2, v0}, Lorg/chromium/blink/mojom/LocalFrame;->advanceFocusInFrame(ILorg/chromium/blink/mojom/RemoteFrameToken;)V

    const/4 v0, 0x1

    return v0

    :pswitch_13
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePluginActionAtParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePluginActionAtParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePluginActionAtParams;->location:Lorg/chromium/gfx/mojom/Point;

    iget v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePluginActionAtParams;->action:I

    invoke-interface {v1, v2, v0}, Lorg/chromium/blink/mojom/LocalFrame;->pluginActionAt(Lorg/chromium/gfx/mojom/Point;I)V

    const/4 v0, 0x1

    return v0

    :pswitch_14
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMediaPlayerActionAtParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMediaPlayerActionAtParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMediaPlayerActionAtParams;->location:Lorg/chromium/gfx/mojom/Point;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMediaPlayerActionAtParams;->action:Lorg/chromium/blink/mojom/MediaPlayerAction;

    invoke-interface {v1, v2, v0}, Lorg/chromium/blink/mojom/LocalFrame;->mediaPlayerActionAt(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/blink/mojom/MediaPlayerAction;)V

    const/4 v0, 0x1

    return v0

    :pswitch_15
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRenderFallbackContentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRenderFallbackContentParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/LocalFrame;

    invoke-interface {v0}, Lorg/chromium/blink/mojom/LocalFrame;->renderFallbackContent()V

    const/4 v0, 0x1

    return v0

    :pswitch_16
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->features:[I

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->reportBlinkFeatureUsage([I)V

    const/4 v0, 0x1

    return v0

    :pswitch_17
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSaveImageAtParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSaveImageAtParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSaveImageAtParams;->windowPoint:Lorg/chromium/gfx/mojom/Point;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->saveImageAt(Lorg/chromium/gfx/mojom/Point;)V

    const/4 v0, 0x1

    return v0

    :pswitch_18
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCopyImageAtParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCopyImageAtParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCopyImageAtParams;->windowPoint:Lorg/chromium/gfx/mojom/Point;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->copyImageAt(Lorg/chromium/gfx/mojom/Point;)V

    const/4 v0, 0x1

    return v0

    :pswitch_19
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameClearFocusedElementParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameClearFocusedElementParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/LocalFrame;

    invoke-interface {v0}, Lorg/chromium/blink/mojom/LocalFrame;->clearFocusedElement()V

    const/4 v0, 0x1

    return v0

    :pswitch_1a
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameFocusParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/LocalFrame;

    invoke-interface {v0}, Lorg/chromium/blink/mojom/LocalFrame;->focus()V

    const/4 v0, 0x1

    return v0

    :pswitch_1b
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameEnableViewSourceModeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameEnableViewSourceModeParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/LocalFrame;

    invoke-interface {v0}, Lorg/chromium/blink/mojom/LocalFrame;->enableViewSourceMode()V

    const/4 v0, 0x1

    return v0

    :pswitch_1c
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCollapseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCollapseParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-boolean v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCollapseParams;->collapsed:Z

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->collapse(Z)V

    const/4 v0, 0x1

    return v0

    :pswitch_1d
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameStopLoadingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameStopLoadingParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/LocalFrame;

    invoke-interface {v0}, Lorg/chromium/blink/mojom/LocalFrame;->stopLoading()V

    const/4 v0, 0x1

    return v0

    :pswitch_1e
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCheckCompletedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCheckCompletedParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/LocalFrame;

    invoke-interface {v0}, Lorg/chromium/blink/mojom/LocalFrame;->checkCompleted()V

    const/4 v0, 0x1

    return v0

    :pswitch_1f
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSwapInImmediatelyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSwapInImmediatelyParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/LocalFrame;

    invoke-interface {v0}, Lorg/chromium/blink/mojom/LocalFrame;->swapInImmediately()V

    const/4 v0, 0x1

    return v0

    :pswitch_20
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;->level:I

    iget-object v3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;->message:Ljava/lang/String;

    iget-boolean v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;->discardDuplicates:Z

    invoke-interface {v1, v2, v3, v0}, Lorg/chromium/blink/mojom/LocalFrame;->addMessageToConsole(ILjava/lang/String;Z)V

    const/4 v0, 0x1

    return v0

    :pswitch_21
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyContextMenuInsetsObserversParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyContextMenuInsetsObserversParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyContextMenuInsetsObserversParams;->safeArea:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->notifyContextMenuInsetsObservers(Lorg/chromium/gfx/mojom/Rect;)V

    const/4 v0, 0x1

    return v0

    :pswitch_22
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyVirtualKeyboardOverlayRectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyVirtualKeyboardOverlayRectParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyVirtualKeyboardOverlayRectParams;->keyboardRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->notifyVirtualKeyboardOverlayRect(Lorg/chromium/gfx/mojom/Rect;)V

    const/4 v0, 0x1

    return v0

    :pswitch_23
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyUserActivationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyUserActivationParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyUserActivationParams;->notificationType:I

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->notifyUserActivation(I)V

    const/4 v0, 0x1

    return v0

    :pswitch_24
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetFrameOwnerPropertiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetFrameOwnerPropertiesParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetFrameOwnerPropertiesParams;->properties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

    invoke-interface {v1, v0}, Lorg/chromium/blink/mojom/LocalFrame;->setFrameOwnerProperties(Lorg/chromium/blink/mojom/FrameOwnerProperties;)V

    const/4 v0, 0x1

    return v0

    :pswitch_25
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSendInterventionReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSendInterventionReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSendInterventionReportParams;->id:Ljava/lang/String;

    iget-object v0, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSendInterventionReportParams;->message:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/chromium/blink/mojom/LocalFrame;->sendInterventionReport(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :pswitch_26
    sget-object v1, Lorg/chromium/blink/mojom/LocalFrame_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_24
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
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
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

    if-eq v2, v4, :cond_d

    if-eqz v2, :cond_c

    const/16 v4, 0x12

    if-eq v2, v4, :cond_b

    const/16 v4, 0x14

    if-eq v2, v4, :cond_a

    const/16 v4, 0x22

    if-eq v2, v4, :cond_9

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_8

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_7

    const/16 v4, 0x33

    if-eq v2, v4, :cond_6

    const/16 v4, 0x25

    if-eq v2, v4, :cond_5

    const/16 v4, 0x26

    if-eq v2, v4, :cond_4

    const/16 v4, 0x28

    if-eq v2, v4, :cond_3

    const/16 v4, 0x29

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;->javascript:Lorg/chromium/mojo_base/mojom/BigString16;

    iget-boolean v5, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;->wantsResult:Z

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;->worldId:I

    new-instance v6, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/blink/mojom/LocalFrame;->javaScriptExecuteRequestInIsolatedWorld(Lorg/chromium/mojo_base/mojom/BigString16;ZILorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestInIsolatedWorld_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->javascript:Lorg/chromium/mojo_base/mojom/BigString16;

    iget-boolean v6, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->hasUserGesture:Z

    iget-boolean v7, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->resolvePromises:Z

    iget-boolean v8, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->honorJsContentSettings:Z

    iget v9, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->worldId:I

    new-instance v10, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v10}, Lorg/chromium/blink/mojom/LocalFrame;->javaScriptExecuteRequestForTests(Lorg/chromium/mojo_base/mojom/BigString16;ZZZILorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestForTests_Response;)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestParams;->javascript:Lorg/chromium/mojo_base/mojom/BigString16;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestParams;->wantsResult:Z

    new-instance v5, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/LocalFrame;->javaScriptExecuteRequest(Lorg/chromium/mojo_base/mojom/BigString16;ZLorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequest_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->objectName:Lorg/chromium/mojo_base/mojom/String16;

    iget-object v6, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->methodName:Lorg/chromium/mojo_base/mojom/String16;

    iget-object v7, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->arguments:Lorg/chromium/mojo_base/mojom/ListValue;

    iget-boolean v8, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->wantsResult:Z

    new-instance v9, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/blink/mojom/LocalFrame;->javaScriptMethodExecuteRequest(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/ListValue;ZLorg/chromium/blink/mojom/LocalFrame$JavaScriptMethodExecuteRequest_Response;)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetOpenGraphMetadataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetOpenGraphMetadataParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/LocalFrame;

    new-instance v2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetOpenGraphMetadataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetOpenGraphMetadataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/LocalFrame;->getOpenGraphMetadata(Lorg/chromium/blink/mojom/LocalFrame$GetOpenGraphMetadata_Response;)V

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetCanonicalUrlForSharingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetCanonicalUrlForSharingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/LocalFrame;

    new-instance v2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetCanonicalUrlForSharingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetCanonicalUrlForSharingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/LocalFrame;->getCanonicalUrlForSharing(Lorg/chromium/blink/mojom/LocalFrame$GetCanonicalUrlForSharing_Response;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataParams;->params:Lorg/chromium/blink/mojom/SmartClipImageExtractionParams;

    new-instance v4, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/LocalFrame;->extractSmartClipImageData(Lorg/chromium/blink/mojom/SmartClipImageExtractionParams;Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipImageData_Response;)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataParams;->rect:Lorg/chromium/gfx/mojom/Rect;

    new-instance v4, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/LocalFrame;->extractSmartClipData(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipData_Response;)V

    return v3

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetScrollPositionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetScrollPositionParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/LocalFrame;

    new-instance v2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetScrollPositionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetScrollPositionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/LocalFrame;->getScrollPosition(Lorg/chromium/blink/mojom/LocalFrame$GetScrollPosition_Response;)V

    return v3

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionParams;->transitionToken:Lorg/chromium/blink/mojom/ViewTransitionToken;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionParams;->pageSwapEventParams:Lorg/chromium/blink/mojom/PageSwapEventParams;

    new-instance v5, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/LocalFrame;->snapshotDocumentForViewTransition(Lorg/chromium/blink/mojom/ViewTransitionToken;Lorg/chromium/blink/mojom/PageSwapEventParams;Lorg/chromium/blink/mojom/LocalFrame$SnapshotDocumentForViewTransition_Response;)V

    return v3

    :cond_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlParams;->matchedUrl:Lorg/chromium/url/mojom/Url;

    new-instance v4, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/LocalFrame;->updatePrerenderUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/LocalFrame$UpdatePrerenderUrl_Response;)V

    return v3

    :cond_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetSavableResourceLinksParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetSavableResourceLinksParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/LocalFrame;

    new-instance v2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetSavableResourceLinksResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetSavableResourceLinksResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/LocalFrame;->getSavableResourceLinks(Lorg/chromium/blink/mojom/LocalFrame$GetSavableResourceLinks_Response;)V

    return v3

    :cond_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-object v4, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;->location:Lorg/chromium/gfx/mojom/Point;

    iget-object v5, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;->maxSize:Lorg/chromium/gfx/mojom/Size;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;->maxArea:I

    new-instance v6, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/blink/mojom/LocalFrame;->requestVideoFrameAtWithBoundsHint(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Size;ILorg/chromium/blink/mojom/LocalFrame$RequestVideoFrameAtWithBoundsHint_Response;)V

    return v3

    :cond_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadParams;->isReload:Z

    new-instance v4, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/LocalFrame;->beforeUnload(ZLorg/chromium/blink/mojom/LocalFrame$BeforeUnload_Response;)V

    return v3

    :cond_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/LocalFrame;

    iget p1, p1, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionParams;->maxLength:I

    new-instance v4, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/LocalFrame;->getTextSurroundingSelection(ILorg/chromium/blink/mojom/LocalFrame$GetTextSurroundingSelection_Response;)V

    return v3

    :cond_d
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/LocalFrame_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
