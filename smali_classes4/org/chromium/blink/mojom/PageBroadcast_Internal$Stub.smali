.class final Lorg/chromium/blink/mojom/PageBroadcast_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PageBroadcast_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/PageBroadcast;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/PageBroadcast;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 11

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

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateColorProvidersParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateColorProvidersParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateColorProvidersParams;->colorProviderColors:Lorg/chromium/blink/mojom/ColorProviderColorMaps;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->updateColorProviders(Lorg/chromium/blink/mojom/ColorProviderColorMaps;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageAttributionSupportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageAttributionSupportParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageAttributionSupportParams;->support:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->setPageAttributionSupport(I)V

    return v2

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdatePageBrowsingContextGroupParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdatePageBrowsingContextGroupParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdatePageBrowsingContextGroupParams;->browsingContextGroupInfo:Lorg/chromium/blink/mojom/BrowsingContextGroupInfo;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->updatePageBrowsingContextGroup(Lorg/chromium/blink/mojom/BrowsingContextGroupInfo;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-object v4, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->token:Lorg/chromium/blink/mojom/RemoteFrameToken;

    iget-object v5, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iget-object v6, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->replicationState:Lorg/chromium/blink/mojom/FrameReplicationState;

    iget-boolean v7, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->isLoading:Z

    iget-object v8, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->devtoolsFrameToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v9, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->remoteFrameInterfaces:Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;

    iget-object v10, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->remoteMainFrameInterfaces:Lorg/chromium/blink/mojom/RemoteMainFrameInterfaces;

    invoke-interface/range {v3 .. v10}, Lorg/chromium/blink/mojom/PageBroadcast;->createRemoteMainFrame(Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/FrameReplicationState;ZLorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;Lorg/chromium/blink/mojom/RemoteMainFrameInterfaces;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageBaseBackgroundColorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageBaseBackgroundColorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageBaseBackgroundColorParams;->color:Lorg/chromium/skia/mojom/SkColor;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->setPageBaseBackgroundColor(Lorg/chromium/skia/mojom/SkColor;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget v1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;->index:I

    iget p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;->length:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->setHistoryIndexAndLength(II)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateRendererPreferencesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateRendererPreferencesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateRendererPreferencesParams;->preferences:Lorg/chromium/blink/mojom/RendererPreferences;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->updateRendererPreferences(Lorg/chromium/blink/mojom/RendererPreferences;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetBackgroundPlayEnabledParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetBackgroundPlayEnabledParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetBackgroundPlayEnabledParams;->enabled:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->setBackgroundPlayEnabled(Z)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAdjustNightModeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAdjustNightModeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAdjustNightModeParams;->isNightMode:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->adjustNightMode(Z)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateWebPreferencesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateWebPreferencesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateWebPreferencesParams;->preferences:Lorg/chromium/blink/mojom/WebPreferences;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->updateWebPreferences(Lorg/chromium/blink/mojom/WebPreferences;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAudioStateChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAudioStateChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAudioStateChangedParams;->isAudioPlaying:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PageBroadcast;->audioStateChanged(Z)V

    return v2

    :cond_3
    sget-object p0, Lorg/chromium/blink/mojom/PageBroadcast_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .packed-switch 0x3
        :pswitch_9
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

    if-eq v2, v4, :cond_4

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageParams;->prerenderPageActivationParams:Lorg/chromium/blink/mojom/PrerenderPageActivationParams;

    new-instance v4, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/PageBroadcast;->activatePrerenderedPage(Lorg/chromium/blink/mojom/PrerenderPageActivationParams;Lorg/chromium/blink/mojom/PageBroadcast$ActivatePrerenderedPage_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/PageBroadcast;

    iget-object v4, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;->state:Lorg/chromium/blink/mojom/PageLifecycleState;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;->pageRestoreParams:Lorg/chromium/blink/mojom/PageRestoreParams;

    new-instance v5, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/PageBroadcast;->setPageLifecycleState(Lorg/chromium/blink/mojom/PageLifecycleState;Lorg/chromium/blink/mojom/PageRestoreParams;Lorg/chromium/blink/mojom/PageBroadcast$SetPageLifecycleState_Response;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/PageBroadcast_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
