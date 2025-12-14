.class final Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 9

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

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;->lid:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;->value:Lorg/chromium/mojo_base/mojom/ListValue;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->addStandardStats(ILorg/chromium/mojo_base/mojom/ListValue;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;->lid:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;->output:[B

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->webRtcEventLogWrite(I[B)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;->requestId:I

    iget-object v3, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;->error:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;->errorMessage:Ljava/lang/String;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->getDisplayMediaFailure(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->requestId:I

    iget-object v3, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->streamId:Ljava/lang/String;

    iget-object v4, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->audioTrackInfo:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;->videoTrackInfo:Ljava/lang/String;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->getDisplayMediaSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v4, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->requestId:I

    iget-boolean v5, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->audio:Z

    iget-boolean v6, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->video:Z

    iget-object v7, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->audioConstraints:Ljava/lang/String;

    iget-object v8, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;->videoConstraints:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->getDisplayMedia(IZZLjava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;->requestId:I

    iget-object v3, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;->error:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;->errorMessage:Ljava/lang/String;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->getUserMediaFailure(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->requestId:I

    iget-object v3, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->streamId:Ljava/lang/String;

    iget-object v4, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->audioTrackInfo:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;->videoTrackInfo:Ljava/lang/String;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->getUserMediaSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v4, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->requestId:I

    iget-boolean v5, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->audio:Z

    iget-boolean v6, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->video:Z

    iget-object v7, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->audioConstraints:Ljava/lang/String;

    iget-object v8, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;->videoConstraints:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->getUserMedia(IZZLjava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;->lid:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;->sessionId:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->onPeerConnectionSessionIdSet(ILjava/lang/String;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget v1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;->lid:I

    iget-object v3, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;->type:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;->value:Ljava/lang/String;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->updatePeerConnection(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostRemovePeerConnectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostRemovePeerConnectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostRemovePeerConnectionParams;->lid:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->removePeerConnection(I)V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddPeerConnectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddPeerConnectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddPeerConnectionParams;->info:Lorg/chromium/blink/mojom/PeerConnectionInfo;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;->addPeerConnection(Lorg/chromium/blink/mojom/PeerConnectionInfo;)V

    return v2

    :pswitch_d
    sget-object p0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_d
        :pswitch_0
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

    sget-object v1, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
