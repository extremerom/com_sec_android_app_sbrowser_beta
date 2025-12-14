.class final Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/ServiceWorkerHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/ServiceWorkerHost;)V
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

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClearCachedMetadataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClearCachedMetadataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClearCachedMetadataParams;->url:Lorg/chromium/url/mojom/Url;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->clearCachedMetadata(Lorg/chromium/url/mojom/Url;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSetCachedMetadataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSetCachedMetadataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSetCachedMetadataParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSetCachedMetadataParams;->data:Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->setCachedMetadata(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostPostMessageToClientParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostPostMessageToClientParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostPostMessageToClientParams;->clientUuid:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostPostMessageToClientParams;->message:Lorg/chromium/blink/mojom/TransferableMessage;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->postMessageToClient(Ljava/lang/String;Lorg/chromium/blink/mojom/TransferableMessage;)V

    return v3

    :cond_5
    sget-object p0, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesParams;->rules:Lorg/chromium/blink/mojom/ServiceWorkerRouterRules;

    new-instance v4, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostAddRoutesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->addRoutes(Lorg/chromium/blink/mojom/ServiceWorkerRouterRules;Lorg/chromium/blink/mojom/ServiceWorkerHost$AddRoutes_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClaimClientsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClaimClientsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    new-instance v2, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClaimClientsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostClaimClientsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->claimClients(Lorg/chromium/blink/mojom/ServiceWorkerHost$ClaimClients_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSkipWaitingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSkipWaitingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    new-instance v2, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSkipWaitingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostSkipWaitingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->skipWaiting(Lorg/chromium/blink/mojom/ServiceWorkerHost$SkipWaiting_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientParams;->clientUuid:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientParams;->url:Lorg/chromium/url/mojom/Url;

    new-instance v5, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostNavigateClientResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->navigateClient(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerHost$NavigateClient_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientParams;->clientUuid:Ljava/lang/String;

    new-instance v4, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostFocusClientResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->focusClient(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorkerHost$FocusClient_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowParams;->url:Lorg/chromium/url/mojom/Url;

    new-instance v4, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenPaymentHandlerWindowResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->openPaymentHandlerWindow(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerHost$OpenPaymentHandlerWindow_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabParams;->url:Lorg/chromium/url/mojom/Url;

    new-instance v4, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostOpenNewTabResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->openNewTab(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerHost$OpenNewTab_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientParams;->clientUuid:Ljava/lang/String;

    new-instance v4, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->getClient(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorkerHost$GetClient_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsParams;->options:Lorg/chromium/blink/mojom/ServiceWorkerClientQueryOptions;

    new-instance v4, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal$ServiceWorkerHostGetClientsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ServiceWorkerHost;->getClients(Lorg/chromium/blink/mojom/ServiceWorkerClientQueryOptions;Lorg/chromium/blink/mojom/ServiceWorkerHost$GetClients_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/ServiceWorkerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
