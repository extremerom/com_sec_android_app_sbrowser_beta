.class final Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;)V
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

    const/4 v2, -0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->requestUrl:Lorg/chromium/url/mojom/Url;

    iget v2, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->responseAddressSpace:I

    iget v4, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->clientAddressSpace:I

    iget p1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnUrlLoaderConnectedToPrivateNetworkParams;->targetAddressSpace:I

    invoke-interface {p0, v1, v2, v4, p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onUrlLoaderConnectedToPrivateNetwork(Lorg/chromium/url/mojom/Url;III)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnWebSocketConnectedToPrivateNetworkParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnWebSocketConnectedToPrivateNetworkParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget p1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnWebSocketConnectedToPrivateNetworkParams;->ipAddressSpace:I

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onWebSocketConnectedToPrivateNetwork(I)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverCloneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverCloneParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object p1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverCloneParams;->listener:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAdAuctionEventRecordHeaderReceivedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAdAuctionEventRecordHeaderReceivedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object p1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAdAuctionEventRecordHeaderReceivedParams;->adAuctionEventRecord:Lorg/chromium/network/mojom/AdAuctionEventRecord;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onAdAuctionEventRecordHeaderReceived(Lorg/chromium/network/mojom/AdAuctionEventRecord;)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object v5, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->windowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget v6, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->requestId:I

    iget-object v7, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->url:Lorg/chromium/url/mojom/Url;

    iget-boolean v8, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->firstAuthAttempt:Z

    iget-object v9, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->authInfo:Lorg/chromium/network/mojom/AuthChallengeInfo;

    iget-object v10, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->headHeaders:Lorg/chromium/network/mojom/HttpResponseHeaders;

    iget-object v11, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnAuthRequiredParams;->authChallengeResponder:Lorg/chromium/network/mojom/AuthChallengeResponder;

    invoke-interface/range {v4 .. v11}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onAuthRequired(Lorg/chromium/mojo_base/mojom/UnguessableToken;ILorg/chromium/url/mojom/Url;ZLorg/chromium/network/mojom/AuthChallengeInfo;Lorg/chromium/network/mojom/HttpResponseHeaders;Lorg/chromium/network/mojom/AuthChallengeResponder;)V

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;->windowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v2, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;->certInfo:Lorg/chromium/network/mojom/SslCertRequestInfo;

    iget-object p1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnCertificateRequestedParams;->certResponder:Lorg/chromium/network/mojom/ClientCertificateResponder;

    invoke-interface {p0, v1, v2, p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onCertificateRequested(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/SslCertRequestInfo;Lorg/chromium/network/mojom/ClientCertificateResponder;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget v5, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;->networkTrafficAnnotationIdHash:I

    iget-wide v6, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;->recvBytes:J

    iget-wide v8, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnDataUseUpdateParams;->sentBytes:J

    invoke-interface/range {v4 .. v9}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onDataUseUpdate(IJJ)V

    return v3

    :cond_5
    sget-object p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_3
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

    if-eq v3, v6, :cond_8

    if-eqz v3, :cond_7

    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    if-eq v3, v2, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v2, 0x6

    if-eq v3, v2, :cond_3

    const/16 v2, 0x8

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object v3, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;->requestOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget-object v4, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;->methodsWithOptions:Lorg/chromium/network/mojom/SharedStorageBatchUpdateMethodsArgument;

    iget-object p1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedParams;->withLock:Lorg/chromium/network/mojom/LockName;

    new-instance v6, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSharedStorageHeaderReceivedResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v4, p1, v6}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onSharedStorageHeaderReceived(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/SharedStorageBatchUpdateMethodsArgument;Lorg/chromium/network/mojom/LockName;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSharedStorageHeaderReceived_Response;)V

    return v5

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object p1, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateParams;->info:Lorg/chromium/network/mojom/LoadInfo;

    new-instance v3, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v3, p0, p2, v6, v7}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLoadingStateUpdateResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onLoadingStateUpdate(Lorg/chromium/network/mojom/LoadInfo;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLoadingStateUpdate_Response;)V

    return v5

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object v7, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v8, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->headerValue:Ljava/lang/String;

    iget v9, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->loadFlags:I

    iget-object v10, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->cookiePartitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

    iget-boolean v11, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataParams;->partitionedStateAllowedOnly:Z

    new-instance v12, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v12, p0, p2, v1, v2}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnClearSiteDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v12}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onClearSiteData(Lorg/chromium/url/mojom/Url;Ljava/lang/String;ILorg/chromium/network/mojom/CookiePartitionKey;ZLorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnClearSiteData_Response;)V

    return v5

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLocalNetworkAccessPermissionRequiredParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLocalNetworkAccessPermissionRequiredParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    new-instance v2, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLocalNetworkAccessPermissionRequiredResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v3

    invoke-direct {v2, p0, p2, v3, v4}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnLocalNetworkAccessPermissionRequiredResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onLocalNetworkAccessPermissionRequired(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLocalNetworkAccessPermissionRequired_Response;)V

    return v5

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object v7, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v8, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->ipAddress:Lorg/chromium/network/mojom/IpAddress;

    iget-object v9, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->privateNetworkDeviceId:Ljava/lang/String;

    iget-object v10, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->privateNetworkDeviceName:Ljava/lang/String;

    new-instance v11, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v11}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onPrivateNetworkAccessPermissionRequired(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/IpAddress;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnPrivateNetworkAccessPermissionRequired_Response;)V

    return v5

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object v7, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iget v8, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->netError:I

    iget-object v9, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->sslInfo:Lorg/chromium/network/mojom/SslInfo;

    iget-boolean v10, p1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorParams;->fatal:Z

    new-instance v11, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnSslCertificateErrorResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v11}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->onSslCertificateError(Lorg/chromium/url/mojom/Url;ILorg/chromium/network/mojom/SslInfo;ZLorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSslCertificateError_Response;)V

    return v5

    :cond_8
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
