.class final Lorg/chromium/network/mojom/NetworkContext_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkContext_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/NetworkContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/NetworkContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 21

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

    const/4 v3, -0x2

    if-eq v2, v3, :cond_10

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-eq v2, v3, :cond_f

    const/16 v3, 0x40

    if-eq v2, v3, :cond_e

    const/16 v3, 0x44

    if-eq v2, v3, :cond_d

    const/16 v3, 0x57

    if-eq v2, v3, :cond_c

    const/16 v3, 0x59

    if-eq v2, v3, :cond_b

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-eq v2, v3, :cond_8

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_6

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_5

    const/16 v3, 0x4b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    return v1

    :pswitch_0
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCookieDeprecationLabelParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCookieDeprecationLabelParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCookieDeprecationLabelParams;->label:Ljava/lang/String;

    invoke-interface {v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->setCookieDeprecationLabel(Ljava/lang/String;)V

    return v4

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushMatchingCachedClientCertParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushMatchingCachedClientCertParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushMatchingCachedClientCertParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    invoke-interface {v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->flushMatchingCachedClientCert(Lorg/chromium/network/mojom/X509Certificate;)V

    return v4

    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushCachedClientCertIfNeededParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushCachedClientCertIfNeededParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushCachedClientCertIfNeededParams;->host:Lorg/chromium/network/mojom/HostPortPair;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushCachedClientCertIfNeededParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    invoke-interface {v2, v3, v0}, Lorg/chromium/network/mojom/NetworkContext;->flushCachedClientCertIfNeeded(Lorg/chromium/network/mojom/HostPortPair;Lorg/chromium/network/mojom/X509Certificate;)V

    return v4

    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResourceSchedulerClientVisibilityChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResourceSchedulerClientVisibilityChangedParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResourceSchedulerClientVisibilityChangedParams;->clientToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-boolean v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResourceSchedulerClientVisibilityChangedParams;->visible:Z

    invoke-interface {v2, v3, v0}, Lorg/chromium/network/mojom/NetworkContext;->resourceSchedulerClientVisibilityChanged(Lorg/chromium/mojo_base/mojom/UnguessableToken;Z)V

    return v4

    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateHostResolverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateHostResolverParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateHostResolverParams;->configOverrides:Lorg/chromium/network/mojom/DnsConfigOverrides;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateHostResolverParams;->hostResolver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v2, v3, v0}, Lorg/chromium/network/mojom/NetworkContext;->createHostResolver(Lorg/chromium/network/mojom/DnsConfigOverrides;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v4

    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->host:Lorg/chromium/network/mojom/HostResolverHost;

    iget-object v5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iget-object v6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->optionalParameters:Lorg/chromium/network/mojom/ResolveHostParameters;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->responseClient:Lorg/chromium/network/mojom/ResolveHostClient;

    invoke-interface {v2, v3, v5, v6, v0}, Lorg/chromium/network/mojom/NetworkContext;->resolveHost(Lorg/chromium/network/mojom/HostResolverHost;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ResolveHostParameters;Lorg/chromium/network/mojom/ResolveHostClient;)V

    return v4

    :pswitch_6
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateMdnsResponderParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateMdnsResponderParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateMdnsResponderParams;->responderReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->createMdnsResponder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v4

    :pswitch_7
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iget-object v5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->client:Lorg/chromium/network/mojom/P2pTrustedSocketManagerClient;

    iget-object v6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->trustedSocketManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->socketManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v2, v3, v5, v6, v0}, Lorg/chromium/network/mojom/NetworkContext;->createP2pSocketManager(Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/P2pTrustedSocketManagerClient;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v4

    :pswitch_8
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/network/mojom/NetworkContext;

    iget v6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->numStreams:I

    iget-object v7, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->url:Lorg/chromium/url/mojom/Url;

    iget v8, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->credentialsMode:I

    iget-object v9, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iget-object v10, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    invoke-interface/range {v5 .. v10}, Lorg/chromium/network/mojom/NetworkContext;->preconnectSockets(ILorg/chromium/url/mojom/Url;ILorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;)V

    return v4

    :pswitch_9
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateNetLogExporterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateNetLogExporterParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateNetLogExporterParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->createNetLogExporter(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v4

    :pswitch_a
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v7, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iget-object v8, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iget-object v9, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->fingerprints:[Lorg/chromium/network/mojom/WebTransportCertificateFingerprint;

    iget-object v10, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->handshakeClient:Lorg/chromium/network/mojom/WebTransportHandshakeClient;

    invoke-interface/range {v5 .. v10}, Lorg/chromium/network/mojom/NetworkContext;->createWebTransport(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkAnonymizationKey;[Lorg/chromium/network/mojom/WebTransportCertificateFingerprint;Lorg/chromium/network/mojom/WebTransportHandshakeClient;)V

    return v4

    :pswitch_b
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v7, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->requestedProtocols:[Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iget v9, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->storageAccessApiStatus:I

    iget-object v10, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    iget-object v11, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->additionalHeaders:[Lorg/chromium/network/mojom/HttpHeader;

    iget v12, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->processId:I

    iget-object v13, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iget v14, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->options:I

    iget-object v15, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->handshakeClient:Lorg/chromium/network/mojom/WebSocketHandshakeClient;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    iget-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->authHandler:Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;

    iget-object v4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->headerClient:Lorg/chromium/network/mojom/TrustedHeaderClient;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v0

    invoke-interface/range {v5 .. v20}, Lorg/chromium/network/mojom/NetworkContext;->createWebSocket(Lorg/chromium/url/mojom/Url;[Ljava/lang/String;Lorg/chromium/network/mojom/SiteForCookies;ILorg/chromium/network/mojom/IsolationInfo;[Lorg/chromium/network/mojom/HttpHeader;ILorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/WebSocketHandshakeClient;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;Lorg/chromium/network/mojom/TrustedHeaderClient;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    const/4 v0, 0x1

    return v0

    :pswitch_c
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUdpSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUdpSocketParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUdpSocketParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUdpSocketParams;->listener:Lorg/chromium/network/mojom/UdpSocketListener;

    invoke-interface {v1, v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->createUdpSocket(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UdpSocketListener;)V

    const/4 v0, 0x1

    return v0

    :pswitch_d
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCtPolicyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCtPolicyParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCtPolicyParams;->ctPolicy:Lorg/chromium/network/mojom/CtPolicy;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setCtPolicy(Lorg/chromium/network/mojom/CtPolicy;)V

    const/4 v0, 0x1

    return v0

    :pswitch_e
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableCrossSiteReferrerStrippingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableCrossSiteReferrerStrippingParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-boolean v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableCrossSiteReferrerStrippingParams;->enableReferrerStripping:Z

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setEnableCrossSiteReferrerStripping(Z)V

    const/4 v0, 0x1

    return v0

    :pswitch_f
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableReferrersParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableReferrersParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-boolean v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableReferrersParams;->enableReferrers:Z

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setEnableReferrers(Z)V

    const/4 v0, 0x1

    return v0

    :pswitch_10
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetAcceptLanguageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetAcceptLanguageParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetAcceptLanguageParams;->newAcceptLanguage:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setAcceptLanguage(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :pswitch_11
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetNetworkConditionsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetNetworkConditionsParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetNetworkConditionsParams;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetNetworkConditionsParams;->conditions:Lorg/chromium/network/mojom/NetworkConditions;

    invoke-interface {v1, v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->setNetworkConditions(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkConditions;)V

    const/4 v0, 0x1

    return v0

    :pswitch_12
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueSignedExchangeReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueSignedExchangeReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueSignedExchangeReportParams;->report:Lorg/chromium/network/mojom/SignedExchangeReport;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueSignedExchangeReportParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    invoke-interface {v1, v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->queueSignedExchangeReport(Lorg/chromium/network/mojom/SignedExchangeReport;Lorg/chromium/network/mojom/NetworkAnonymizationKey;)V

    const/4 v0, 0x1

    return v0

    :pswitch_13
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->type:Ljava/lang/String;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->group:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->body:Lorg/chromium/mojo_base/mojom/DictionaryValue;

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/chromium/network/mojom/NetworkContext;->queueEnterpriseReport(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/DictionaryValue;)V

    const/4 v0, 0x1

    return v0

    :pswitch_14
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->type:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->group:Ljava/lang/String;

    iget-object v5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->reportingSource:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v7, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iget-object v8, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->body:Lorg/chromium/mojo_base/mojom/DictionaryValue;

    invoke-interface/range {v2 .. v8}, Lorg/chromium/network/mojom/NetworkContext;->queueReport(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/mojo_base/mojom/DictionaryValue;)V

    const/4 v0, 0x1

    return v0

    :pswitch_15
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSendReportsAndRemoveSourceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSendReportsAndRemoveSourceParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSendReportsAndRemoveSourceParams;->reportingSource:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->sendReportsAndRemoveSource(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    const/4 v0, 0x1

    return v0

    :pswitch_16
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnterpriseReportingEndpointsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnterpriseReportingEndpointsParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnterpriseReportingEndpointsParams;->endpoints:Ljava/util/Map;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setEnterpriseReportingEndpoints(Ljava/util/Map;)V

    const/4 v0, 0x1

    return v0

    :pswitch_17
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->reportingSource:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iget-object v4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->endpoints:Ljava/util/Map;

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/chromium/network/mojom/NetworkContext;->setDocumentReportingEndpoints(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/IsolationInfo;Ljava/util/Map;)V

    const/4 v0, 0x1

    return v0

    :pswitch_18
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetTrustTokenQueryAnswererParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetTrustTokenQueryAnswererParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetTrustTokenQueryAnswererParams;->trustTokenQueryAnswerer:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetTrustTokenQueryAnswererParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    invoke-interface {v1, v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->getTrustTokenQueryAnswerer(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/url/internal/mojom/Origin;)V

    const/4 v0, 0x1

    return v0

    :pswitch_19
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->restrictedCookieManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget v4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->role:I

    iget-object v5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iget-object v6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    iget-object v7, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->cookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

    iget-object v8, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->devtoolsCookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

    iget-object v9, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->cookieObserver:Lorg/chromium/network/mojom/CookieAccessObserver;

    invoke-interface/range {v2 .. v9}, Lorg/chromium/network/mojom/NetworkContext;->getRestrictedCookieManager(Lorg/chromium/mojo/bindings/InterfaceRequest;ILorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/IsolationInfo;Lorg/chromium/network/mojom/CookieSettingOverrides;Lorg/chromium/network/mojom/CookieSettingOverrides;Lorg/chromium/network/mojom/CookieAccessObserver;)V

    const/4 v0, 0x1

    return v0

    :pswitch_1a
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetCookieManagerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetCookieManagerParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetCookieManagerParams;->cookieManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->getCookieManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 v0, 0x1

    return v0

    :pswitch_1b
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetViaObliviousHttpParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetViaObliviousHttpParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetViaObliviousHttpParams;->request:Lorg/chromium/network/mojom/ObliviousHttpRequest;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetViaObliviousHttpParams;->client:Lorg/chromium/network/mojom/ObliviousHttpClient;

    invoke-interface {v1, v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->getViaObliviousHttp(Lorg/chromium/network/mojom/ObliviousHttpRequest;Lorg/chromium/network/mojom/ObliviousHttpClient;)V

    const/4 v0, 0x1

    return v0

    :pswitch_1c
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResetUrlLoaderFactoriesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResetUrlLoaderFactoriesParams;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/NetworkContext;

    invoke-interface {v0}, Lorg/chromium/network/mojom/NetworkContext;->resetUrlLoaderFactories()V

    const/4 v0, 0x1

    return v0

    :pswitch_1d
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUrlLoaderFactoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUrlLoaderFactoryParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUrlLoaderFactoryParams;->urlLoaderFactory:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUrlLoaderFactoryParams;->params:Lorg/chromium/network/mojom/UrlLoaderFactoryParams;

    invoke-interface {v1, v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->createUrlLoaderFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UrlLoaderFactoryParams;)V

    const/4 v0, 0x1

    return v0

    :pswitch_1e
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetClientParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetClientParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetClientParams;->client:Lorg/chromium/network/mojom/NetworkContextClient;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setClient(Lorg/chromium/network/mojom/NetworkContextClient;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreloadSharedDictionaryInfoForDocumentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreloadSharedDictionaryInfoForDocumentParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreloadSharedDictionaryInfoForDocumentParams;->urls:[Lorg/chromium/url/mojom/Url;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreloadSharedDictionaryInfoForDocumentParams;->preloadHandle:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v1, v2, v0}, Lorg/chromium/network/mojom/NetworkContext;->preloadSharedDictionaryInfoForDocument([Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSharedDictionaryCacheMaxSizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSharedDictionaryCacheMaxSizeParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-wide v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSharedDictionaryCacheMaxSizeParams;->cacheMaxSize:J

    invoke-interface {v1, v2, v3}, Lorg/chromium/network/mojom/NetworkContext;->setSharedDictionaryCacheMaxSize(J)V

    const/4 v0, 0x1

    return v0

    :cond_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddReportingApiObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddReportingApiObserverParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddReportingApiObserverParams;->observer:Lorg/chromium/network/mojom/ReportingApiObserver;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->addReportingApiObserver(Lorg/chromium/network/mojom/ReportingApiObserver;)V

    const/4 v0, 0x1

    return v0

    :cond_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSctAuditingModeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSctAuditingModeParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSctAuditingModeParams;->mode:I

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setSctAuditingMode(I)V

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;->proxyLookupClient:Lorg/chromium/network/mojom/ProxyLookupClient;

    invoke-interface {v1, v2, v3, v0}, Lorg/chromium/network/mojom/NetworkContext;->lookUpProxyForUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ProxyLookupClient;)V

    const/4 v0, 0x1

    return v0

    :cond_7
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateProxyResolvingSocketFactoryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateProxyResolvingSocketFactoryParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateProxyResolvingSocketFactoryParams;->factory:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->createProxyResolvingSocketFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetTrackingProtectionContentSettingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetTrackingProtectionContentSettingParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetTrackingProtectionContentSettingParams;->settings:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setTrackingProtectionContentSetting([Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;)V

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetBlockTrustTokensParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetBlockTrustTokensParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-boolean v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetBlockTrustTokensParams;->block:Z

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setBlockTrustTokens(Z)V

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetDeviceBoundSessionManagerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetDeviceBoundSessionManagerParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetDeviceBoundSessionManagerParams;->deviceBoundSessionManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->getDeviceBoundSessionManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 v0, 0x1

    return v0

    :cond_b
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->requestId:I

    iget v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->options:I

    iget-object v4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->request:Lorg/chromium/network/mojom/UrlRequest;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/chromium/network/mojom/NetworkContext;->prefetch(IILorg/chromium/network/mojom/UrlRequest;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;)V

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNoncesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNoncesParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNoncesParams;->nonces:[Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->clearNonces([Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsNonWildcardRequestHeadersSupportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsNonWildcardRequestHeadersSupportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-boolean v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsNonWildcardRequestHeadersSupportParams;->value:Z

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setCorsNonWildcardRequestHeadersSupport(Z)V

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSplitAuthCacheByNetworkAnonymizationKeyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSplitAuthCacheByNetworkAnonymizationKeyParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-boolean v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSplitAuthCacheByNetworkAnonymizationKeyParams;->splitAuthCacheByNetworkAnonymizationKey:Z

    invoke-interface {v1, v0}, Lorg/chromium/network/mojom/NetworkContext;->setSplitAuthCacheByNetworkAnonymizationKey(Z)V

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    check-cast v1, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->httpMethod:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->key:Lorg/chromium/network/mojom/NetworkIsolationKey;

    iget-boolean v0, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->includeCredentials:Z

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/chromium/network/mojom/NetworkContext;->notifyExternalCacheHit(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkIsolationKey;Z)V

    const/4 v0, 0x1

    return v0

    :cond_10
    sget-object v1, Lorg/chromium/network/mojom/NetworkContext_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x23
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x31
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x52
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 12

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

    const/16 v4, 0x21

    if-eq v2, v4, :cond_5

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_3

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    new-instance v5, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkContext;->getSharedDictionaryOriginsBetween(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryOriginsBetween_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoParams;->isolationKey:Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->getSharedDictionaryInfo(Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryInfo_Response;)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryUsageInfoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryUsageInfoParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryUsageInfoResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryUsageInfoResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->getSharedDictionaryUsageInfo(Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryUsageInfo_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceDomainReliabilityUploadsForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceDomainReliabilityUploadsForTestingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceDomainReliabilityUploadsForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceDomainReliabilityUploadsForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->forceDomainReliabilityUploadsForTesting(Lorg/chromium/network/mojom/NetworkContext$ForceDomainReliabilityUploadsForTesting_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingParams;->uploadUrl:Lorg/chromium/url/mojom/Url;

    new-instance v5, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkContext;->addDomainReliabilityContextForTesting(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkContext$AddDomainReliabilityContextForTesting_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    iget-object v6, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->hostname:Ljava/lang/String;

    iget-object v7, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->ocspResponse:Ljava/lang/String;

    iget-object v8, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->sctList:Ljava/lang/String;

    new-instance v9, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/network/mojom/NetworkContext;->verifyCertificateForTesting(Lorg/chromium/network/mojom/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCertificateForTesting_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextEnableStaticKeyPinningForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextEnableStaticKeyPinningForTestingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextEnableStaticKeyPinningForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextEnableStaticKeyPinningForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->enableStaticKeyPinningForTesting(Lorg/chromium/network/mojom/NetworkContext$EnableStaticKeyPinningForTesting_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    new-instance v5, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkContext;->lookupServerBasicAuthCredentials(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/NetworkContext$LookupServerBasicAuthCredentials_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;->challenge:Lorg/chromium/network/mojom/AuthChallengeInfo;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;->credentials:Lorg/chromium/network/mojom/AuthCredentials;

    new-instance v6, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/NetworkContext;->addAuthCacheEntry(Lorg/chromium/network/mojom/AuthChallengeInfo;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/AuthCredentials;Lorg/chromium/network/mojom/NetworkContext$AddAuthCacheEntry_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesParams;->cacheKey:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->loadHttpAuthCacheProxyEntries(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$LoadHttpAuthCacheProxyEntries_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSaveHttpAuthCacheProxyEntriesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSaveHttpAuthCacheProxyEntriesParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSaveHttpAuthCacheProxyEntriesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSaveHttpAuthCacheProxyEntriesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->saveHttpAuthCacheProxyEntries(Lorg/chromium/network/mojom/NetworkContext$SaveHttpAuthCacheProxyEntries_Response;)V

    return v3

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostParams;->host:Ljava/lang/String;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->deleteDynamicDataForHost(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$DeleteDynamicDataForHost_Response;)V

    return v3

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;->sourceOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;->allowPatterns:[Lorg/chromium/network/mojom/CorsOriginPattern;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;->blockPatterns:[Lorg/chromium/network/mojom/CorsOriginPattern;

    new-instance v6, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/NetworkContext;->setCorsOriginAccessListsForOrigin(Lorg/chromium/url/internal/mojom/Origin;[Lorg/chromium/network/mojom/CorsOriginPattern;[Lorg/chromium/network/mojom/CorsOriginPattern;Lorg/chromium/network/mojom/NetworkContext$SetCorsOriginAccessListsForOrigin_Response;)V

    return v3

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateParams;->domain:Ljava/lang/String;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->getHstsState(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$GetHstsState_Response;)V

    return v3

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostParams;->host:Ljava/lang/String;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostParams;->isTopLevelNav:Z

    new-instance v5, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkContext;->isHstsActiveForHost(Ljava/lang/String;ZLorg/chromium/network/mojom/NetworkContext$IsHstsActiveForHost_Response;)V

    return v3

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;->host:Ljava/lang/String;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;->expiry:Lorg/chromium/mojo_base/mojom/Time;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;->includeSubdomains:Z

    new-instance v6, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/NetworkContext;->addHsts(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/Time;ZLorg/chromium/network/mojom/NetworkContext$AddHsts_Response;)V

    return v3

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    iget-object v6, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->hostPort:Lorg/chromium/network/mojom/HostPortPair;

    iget-object v7, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->ocspResponse:Ljava/lang/String;

    iget-object v8, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->sctList:Ljava/lang/String;

    new-instance v9, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/network/mojom/NetworkContext;->verifyCertForSignedExchange(Lorg/chromium/network/mojom/X509Certificate;Lorg/chromium/network/mojom/HostPortPair;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCertForSignedExchange_Response;)V

    return v3

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    iget-object v6, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->hostPort:Lorg/chromium/network/mojom/HostPortPair;

    iget-object v7, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->ocspResponse:Ljava/lang/String;

    iget-object v8, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->sctList:Ljava/lang/String;

    new-instance v9, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/network/mojom/NetworkContext;->verifyCert(Lorg/chromium/network/mojom/X509Certificate;Lorg/chromium/network/mojom/HostPortPair;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCert_Response;)V

    return v3

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v6, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/NetworkContext;->createTcpBoundSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/NetworkContext$CreateTcpBoundSocket_Response;)V

    return v3

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iget-object v6, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->remoteAddrList:Lorg/chromium/network/mojom/AddressList;

    iget-object v7, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->tcpConnectedSocketOptions:Lorg/chromium/network/mojom/TcpConnectedSocketOptions;

    iget-object v8, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iget-object v9, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v10, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->observer:Lorg/chromium/network/mojom/SocketObserver;

    new-instance v11, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v11}, Lorg/chromium/network/mojom/NetworkContext;->createTcpConnectedSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/AddressList;Lorg/chromium/network/mojom/TcpConnectedSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/NetworkContext$CreateTcpConnectedSocket_Response;)V

    return v3

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iget-object v6, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->options:Lorg/chromium/network/mojom/TcpServerSocketOptions;

    iget-object v7, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iget-object v8, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v9, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/network/mojom/NetworkContext;->createTcpServerSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/TcpServerSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/NetworkContext$CreateTcpServerSocket_Response;)V

    return v3

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->addr:Lorg/chromium/network/mojom/IpEndPoint;

    iget v6, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->mode:I

    iget-object v7, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iget-object v8, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->params:Lorg/chromium/network/mojom/RestrictedUdpSocketParams;

    iget-object v9, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v10, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->listener:Lorg/chromium/network/mojom/UdpSocketListener;

    new-instance v11, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v11}, Lorg/chromium/network/mojom/NetworkContext;->createRestrictedUdpSocket(Lorg/chromium/network/mojom/IpEndPoint;ILorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/RestrictedUdpSocketParams;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UdpSocketListener;Lorg/chromium/network/mojom/NetworkContext$CreateRestrictedUdpSocket_Response;)V

    return v3

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    new-instance v5, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkContext;->computeHttpCacheSize(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$ComputeHttpCacheSize_Response;)V

    return v3

    :pswitch_17
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v6, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/NetworkContext;->clearHttpCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHttpCache_Response;)V

    return v3

    :pswitch_18
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    new-instance v5, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkContext;->clearNetworkingHistoryBetween(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$ClearNetworkingHistoryBetween_Response;)V

    return v3

    :pswitch_19
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensParams;->issuer:Lorg/chromium/url/internal/mojom/Origin;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->deleteStoredTrustTokens(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContext$DeleteStoredTrustTokens_Response;)V

    return v3

    :pswitch_1a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetPrivateStateTokenRedemptionRecordsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetPrivateStateTokenRedemptionRecordsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetPrivateStateTokenRedemptionRecordsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetPrivateStateTokenRedemptionRecordsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->getPrivateStateTokenRedemptionRecords(Lorg/chromium/network/mojom/NetworkContext$GetPrivateStateTokenRedemptionRecords_Response;)V

    return v3

    :pswitch_1b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetStoredTrustTokenCountsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetStoredTrustTokenCountsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetStoredTrustTokenCountsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetStoredTrustTokenCountsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->getStoredTrustTokenCounts(Lorg/chromium/network/mojom/NetworkContext$GetStoredTrustTokenCounts_Response;)V

    return v3

    :pswitch_1c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenSessionOnlyDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenSessionOnlyDataParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenSessionOnlyDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenSessionOnlyDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->clearTrustTokenSessionOnlyData(Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenSessionOnlyData_Response;)V

    return v3

    :pswitch_1d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->clearTrustTokenData(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenData_Response;)V

    return v3

    :sswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetBoundNetworkForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetBoundNetworkForTestingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetBoundNetworkForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetBoundNetworkForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->getBoundNetworkForTesting(Lorg/chromium/network/mojom/NetworkContext$GetBoundNetworkForTesting_Response;)V

    return v3

    :sswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceParams;->exemptedUrl:Lorg/chromium/url/mojom/Url;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceParams;->nonce:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v5, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkContext;->exemptUrlFromNetworkRevocationForNonce(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$ExemptUrlFromNetworkRevocationForNonce_Response;)V

    return v3

    :sswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesParams;->nonces:[Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->revokeNetworkForNonces([Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$RevokeNetworkForNonces_Response;)V

    return v3

    :sswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextHasPreloadedSharedDictionaryInfoForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextHasPreloadedSharedDictionaryInfoForTestingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextHasPreloadedSharedDictionaryInfoForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextHasPreloadedSharedDictionaryInfoForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->hasPreloadedSharedDictionaryInfoForTesting(Lorg/chromium/network/mojom/NetworkContext$HasPreloadedSharedDictionaryInfoForTesting_Response;)V

    return v3

    :sswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyParams;->isolationKey:Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->clearSharedDictionaryCacheForIsolationKey(Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCacheForIsolationKey_Response;)V

    return v3

    :sswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v6, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/NetworkContext;->clearSharedDictionaryCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCache_Response;)V

    return v3

    :sswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    iget p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityParams;->mode:I

    new-instance v5, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkContext;->clearDomainReliability(Lorg/chromium/network/mojom/ClearDataFilter;ILorg/chromium/network/mojom/NetworkContext$ClearDomainReliability_Response;)V

    return v3

    :sswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->clearNetworkErrorLogging(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearNetworkErrorLogging_Response;)V

    return v3

    :sswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->clearReportingCacheClients(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheClients_Response;)V

    return v3

    :sswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->clearReportingCacheReports(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheReports_Response;)V

    return v3

    :sswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->clearCorsPreflightCache(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearCorsPreflightCache_Response;)V

    return v3

    :sswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v6, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/NetworkContext;->clearHttpAuthCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHttpAuthCache_Response;)V

    return v3

    :sswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContext;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    new-instance v4, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkContext;->clearHostCache(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHostCache_Response;)V

    return v3

    :sswitch_d
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/NetworkContext_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearBadProxiesCacheParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearBadProxiesCacheParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearBadProxiesCacheResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearBadProxiesCacheResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->clearBadProxiesCache(Lorg/chromium/network/mojom/NetworkContext$ClearBadProxiesCache_Response;)V

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceReloadProxyConfigParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceReloadProxyConfigParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceReloadProxyConfigResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceReloadProxyConfigResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->forceReloadProxyConfig(Lorg/chromium/network/mojom/NetworkContext$ForceReloadProxyConfig_Response;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseIdleConnectionsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseIdleConnectionsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseIdleConnectionsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseIdleConnectionsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->closeIdleConnections(Lorg/chromium/network/mojom/NetworkContext$CloseIdleConnections_Response;)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseAllConnectionsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseAllConnectionsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContext;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseAllConnectionsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseAllConnectionsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContext;->closeAllConnections(Lorg/chromium/network/mojom/NetworkContext$CloseAllConnections_Response;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_d
        0x12 -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_a
        0x15 -> :sswitch_9
        0x16 -> :sswitch_8
        0x17 -> :sswitch_7
        0x18 -> :sswitch_6
        0x19 -> :sswitch_5
        0x1a -> :sswitch_4
        0x51 -> :sswitch_3
        0x56 -> :sswitch_2
        0x58 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x29
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x39
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x41
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x45
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
