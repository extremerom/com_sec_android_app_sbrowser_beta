.class final Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media_session/mojom/AudioFocusManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media_session/mojom/AudioFocusManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media_session/mojom/AudioFocusManager;)V
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

    const/4 v2, -0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStopDuckingAllAudioParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStopDuckingAllAudioParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/AudioFocusManager;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/AudioFocusManager;->stopDuckingAllAudio()V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStartDuckingAllAudioParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStartDuckingAllAudioParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStartDuckingAllAudioParams;->exemptedRequestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/AudioFocusManager;->startDuckingAllAudio(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestIdReleasedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestIdReleasedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestIdReleasedParams;->requestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/AudioFocusManager;->requestIdReleased(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget-object v1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;->sourceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;->observer:Lorg/chromium/media_session/mojom/AudioFocusObserver;

    invoke-interface {p0, v1, p1}, Lorg/chromium/media_session/mojom/AudioFocusManager;->addSourceObserver(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media_session/mojom/AudioFocusObserver;)V

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget-object v1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;->identity:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;->name:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/media_session/mojom/AudioFocusManager;->setSource(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetEnforcementModeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetEnforcementModeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget p1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetEnforcementModeParams;->mode:I

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/AudioFocusManager;->setEnforcementMode(I)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddObserverParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddObserverParams;->observer:Lorg/chromium/media_session/mojom/AudioFocusObserver;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/AudioFocusManager;->addObserver(Lorg/chromium/media_session/mojom/AudioFocusObserver;)V

    return v3

    :cond_6
    sget-object p0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
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

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    if-eq v3, v2, :cond_4

    const/16 v2, 0x8

    if-eq v3, v2, :cond_3

    const/16 v2, 0xc

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/media_session/mojom/AudioFocusManager;

    new-instance v2, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/media_session/mojom/AudioFocusManager;->flushForTesting(Lorg/chromium/media_session/mojom/AudioFocusManager$FlushForTesting_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsParams;->sourceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v3, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/media_session/mojom/AudioFocusManager;->getSourceFocusRequests(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media_session/mojom/AudioFocusManager$GetSourceFocusRequests_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget-object v6, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->requestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v7, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->client:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v8, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->session:Lorg/chromium/media_session/mojom/MediaSession;

    iget-object v9, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->sessionInfo:Lorg/chromium/media_session/mojom/MediaSessionInfo;

    iget v10, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->type:I

    iget-object v11, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v12, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v12, p0, p2, v1, v2}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v12}, Lorg/chromium/media_session/mojom/AudioFocusManager;->requestGroupedAudioFocus(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media_session/mojom/MediaSession;Lorg/chromium/media_session/mojom/MediaSessionInfo;ILorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media_session/mojom/AudioFocusManager$RequestGroupedAudioFocus_Response;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/media_session/mojom/AudioFocusManager;

    new-instance v2, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/media_session/mojom/AudioFocusManager;->getFocusRequests(Lorg/chromium/media_session/mojom/AudioFocusManager$GetFocusRequests_Response;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/media_session/mojom/AudioFocusManager;

    iget-object v6, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->client:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v7, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->session:Lorg/chromium/media_session/mojom/MediaSession;

    iget-object v8, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->sessionInfo:Lorg/chromium/media_session/mojom/MediaSessionInfo;

    iget v9, p1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->type:I

    new-instance v10, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/media_session/mojom/AudioFocusManager;->requestAudioFocus(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media_session/mojom/MediaSession;Lorg/chromium/media_session/mojom/MediaSessionInfo;ILorg/chromium/media_session/mojom/AudioFocusManager$RequestAudioFocus_Response;)V

    return v4

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
