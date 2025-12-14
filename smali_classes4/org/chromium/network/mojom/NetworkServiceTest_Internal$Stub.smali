.class final Lorg/chromium/network/mojom/NetworkServiceTest_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkServiceTest_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/NetworkServiceTest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/NetworkServiceTest;)V
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

    if-eq v1, v3, :cond_6

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x11

    if-eq v1, v2, :cond_4

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnGetCookieListParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnGetCookieListParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/NetworkServiceTest;

    invoke-interface {p0}, Lorg/chromium/network/mojom/NetworkServiceTest;->crashOnGetCookieList()V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnResolveHostParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnResolveHostParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnResolveHostParams;->host:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest;->crashOnResolveHost(Ljava/lang/String;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestActivateFieldTrialParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestActivateFieldTrialParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestActivateFieldTrialParams;->fieldTrialName:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest;->activateFieldTrial(Ljava/lang/String;)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateCrashParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateCrashParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/NetworkServiceTest;

    invoke-interface {p0}, Lorg/chromium/network/mojom/NetworkServiceTest;->simulateCrash()V

    return v3

    :cond_6
    sget-object p0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 10

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

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestIsHappyEyeballsV3EnabledParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestIsHappyEyeballsV3EnabledParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkServiceTest;

    new-instance v2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestIsHappyEyeballsV3EnabledResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestIsHappyEyeballsV3EnabledResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest;->isHappyEyeballsV3Enabled(Lorg/chromium/network/mojom/NetworkServiceTest$IsHappyEyeballsV3Enabled_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAllowsGssapiLibraryLoadParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAllowsGssapiLibraryLoadParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkServiceTest;

    new-instance v2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAllowsGssapiLibraryLoadResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAllowsGssapiLibraryLoadResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest;->allowsGssapiLibraryLoad(Lorg/chromium/network/mojom/NetworkServiceTest$AllowsGssapiLibraryLoad_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultParams;->success:Z

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->setIPv6ProbeResult(ZLorg/chromium/network/mojom/NetworkServiceTest$SetIPv6ProbeResult_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestResolveOwnHostnameWithSystemDnsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestResolveOwnHostnameWithSystemDnsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkServiceTest;

    new-instance v2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestResolveOwnHostnameWithSystemDnsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestResolveOwnHostnameWithSystemDnsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest;->resolveOwnHostnameWithSystemDns(Lorg/chromium/network/mojom/NetworkServiceTest$ResolveOwnHostnameWithSystemDns_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerParams;->s:Lorg/chromium/network/mojom/TransferableSocket;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerParams;->endpoint:Lorg/chromium/network/mojom/IpEndPoint;

    new-instance v5, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkServiceTest;->makeRequestToServer(Lorg/chromium/network/mojom/TransferableSocket;Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/NetworkServiceTest$MakeRequestToServer_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;->factory:Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;->reset:Z

    new-instance v6, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/NetworkServiceTest;->createSimpleCache(Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;Lorg/chromium/mojo_base/mojom/FilePath;ZLorg/chromium/network/mojom/NetworkServiceTest$CreateSimpleCache_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object v4, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesParams;->factory:Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;

    new-instance v5, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkServiceTest;->enumerateFiles(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;Lorg/chromium/network/mojom/NetworkServiceTest$EnumerateFiles_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->openFile(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/NetworkServiceTest$OpenFile_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayParams;->delay:Lorg/chromium/mojo_base/mojom/TimeDelta;

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->setSctAuditingRetryDelay(Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/network/mojom/NetworkServiceTest$SetSctAuditingRetryDelay_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogParams;->message:Ljava/lang/String;

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->log(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkServiceTest$Log_Response;)V

    return v3

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueParams;->name:Ljava/lang/String;

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->getEnvironmentVariableValue(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkServiceTest$GetEnvironmentVariableValue_Response;)V

    return v3

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetPeerToPeerConnectionsCountChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetPeerToPeerConnectionsCountChangeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkServiceTest;

    new-instance v2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetPeerToPeerConnectionsCountChangeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetPeerToPeerConnectionsCountChangeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest;->getPeerToPeerConnectionsCountChange(Lorg/chromium/network/mojom/NetworkServiceTest$GetPeerToPeerConnectionsCountChange_Response;)V

    return v3

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetLatestMemoryPressureLevelParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetLatestMemoryPressureLevelParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkServiceTest;

    new-instance v2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetLatestMemoryPressureLevelResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetLatestMemoryPressureLevelResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest;->getLatestMemoryPressureLevel(Lorg/chromium/network/mojom/NetworkServiceTest$GetLatestMemoryPressureLevel_Response;)V

    return v3

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget v4, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigParams;->secureDnsMode:I

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigParams;->dohConfig:Lorg/chromium/network/mojom/DnsOverHttpsConfig;

    new-instance v5, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/NetworkServiceTest;->setTestDohConfig(ILorg/chromium/network/mojom/DnsOverHttpsConfig;Lorg/chromium/network/mojom/NetworkServiceTest$SetTestDohConfig_Response;)V

    return v3

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestReplaceSystemDnsConfigParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestReplaceSystemDnsConfigParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkServiceTest;

    new-instance v2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestReplaceSystemDnsConfigResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestReplaceSystemDnsConfigResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest;->replaceSystemDnsConfig(Lorg/chromium/network/mojom/NetworkServiceTest$ReplaceSystemDnsConfig_Response;)V

    return v3

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetAllowNetworkAccessToHostResolutionsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetAllowNetworkAccessToHostResolutionsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkServiceTest;

    new-instance v2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetAllowNetworkAccessToHostResolutionsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetAllowNetworkAccessToHostResolutionsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest;->setAllowNetworkAccessToHostResolutions(Lorg/chromium/network/mojom/NetworkServiceTest$SetAllowNetworkAccessToHostResolutions_Response;)V

    return v3

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-short p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceParams;->reportingPort:S

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->setTransportSecurityStateSource(SLorg/chromium/network/mojom/NetworkServiceTest$SetTransportSecurityStateSource_Response;)V

    return v3

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object v5, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->cert:Lorg/chromium/network/mojom/X509Certificate;

    iget-object v6, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->hostPattern:Ljava/lang/String;

    iget-object v7, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->verifyResult:Lorg/chromium/network/mojom/CertVerifyResult;

    iget v8, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->rv:I

    new-instance v9, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v9, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v9}, Lorg/chromium/network/mojom/NetworkServiceTest;->mockCertVerifierAddResultForCertAndHost(Lorg/chromium/network/mojom/X509Certificate;Ljava/lang/String;Lorg/chromium/network/mojom/CertVerifyResult;ILorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierAddResultForCertAndHost_Response;)V

    return v3

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultParams;->defaultResult:I

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->mockCertVerifierSetDefaultResult(ILorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierSetDefaultResult_Response;)V

    return v3

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestForceNetworkQualityEstimatorReportWifiAsSlow2GParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestForceNetworkQualityEstimatorReportWifiAsSlow2GParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkServiceTest;

    new-instance v2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestForceNetworkQualityEstimatorReportWifiAsSlow2GResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestForceNetworkQualityEstimatorReportWifiAsSlow2GResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkServiceTest;->forceNetworkQualityEstimatorReportWifiAsSlow2G(Lorg/chromium/network/mojom/NetworkServiceTest$ForceNetworkQualityEstimatorReportWifiAsSlow2G_Response;)V

    return v3

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeParams;->type:I

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->simulateNetworkQualityChange(ILorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkQualityChange_Response;)V

    return v3

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeParams;->type:I

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->simulateNetworkChange(ILorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkChange_Response;)V

    return v3

    :pswitch_17
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkServiceTest;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesParams;->rules:[Lorg/chromium/network/mojom/Rule;

    new-instance v4, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/NetworkServiceTest;->addRules([Lorg/chromium/network/mojom/Rule;Lorg/chromium/network/mojom/NetworkServiceTest$AddRules_Response;)V

    return v3

    :pswitch_18
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/NetworkServiceTest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .packed-switch -0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
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
