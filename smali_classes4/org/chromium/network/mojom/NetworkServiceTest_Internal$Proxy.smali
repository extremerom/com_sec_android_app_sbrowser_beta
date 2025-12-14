.class final Lorg/chromium/network/mojom/NetworkServiceTest_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/NetworkServiceTest$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkServiceTest_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public activateFieldTrial(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestActivateFieldTrialParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestActivateFieldTrialParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestActivateFieldTrialParams;->fieldTrialName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public addRules([Lorg/chromium/network/mojom/Rule;Lorg/chromium/network/mojom/NetworkServiceTest$AddRules_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesParams;->rules:[Lorg/chromium/network/mojom/Rule;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAddRulesResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$AddRules_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public allowsGssapiLibraryLoad(Lorg/chromium/network/mojom/NetworkServiceTest$AllowsGssapiLibraryLoad_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAllowsGssapiLibraryLoadParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAllowsGssapiLibraryLoadParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0x19

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAllowsGssapiLibraryLoadResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestAllowsGssapiLibraryLoadResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$AllowsGssapiLibraryLoad_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public crashOnGetCookieList()V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnGetCookieListParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnGetCookieListParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public crashOnResolveHost(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnResolveHostParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnResolveHostParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCrashOnResolveHostParams;->host:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createSimpleCache(Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;Lorg/chromium/mojo_base/mojom/FilePath;ZLorg/chromium/network/mojom/NetworkServiceTest$CreateSimpleCache_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;->factory:Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iput-boolean p3, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheParams;->reset:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 v1, 0x0

    const/16 v3, 0x15

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestCreateSimpleCacheResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$CreateSimpleCache_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public enumerateFiles(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;Lorg/chromium/network/mojom/NetworkServiceTest$EnumerateFiles_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesParams;->factory:Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/16 v4, 0x14

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestEnumerateFilesResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$EnumerateFiles_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public forceNetworkQualityEstimatorReportWifiAsSlow2G(Lorg/chromium/network/mojom/NetworkServiceTest$ForceNetworkQualityEstimatorReportWifiAsSlow2G_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestForceNetworkQualityEstimatorReportWifiAsSlow2GParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestForceNetworkQualityEstimatorReportWifiAsSlow2GParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestForceNetworkQualityEstimatorReportWifiAsSlow2GResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestForceNetworkQualityEstimatorReportWifiAsSlow2GResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$ForceNetworkQualityEstimatorReportWifiAsSlow2G_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getEnvironmentVariableValue(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkServiceTest$GetEnvironmentVariableValue_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueParams;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0xf

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetEnvironmentVariableValueResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$GetEnvironmentVariableValue_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getLatestMemoryPressureLevel(Lorg/chromium/network/mojom/NetworkServiceTest$GetLatestMemoryPressureLevel_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetLatestMemoryPressureLevelParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetLatestMemoryPressureLevelParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0xd

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetLatestMemoryPressureLevelResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetLatestMemoryPressureLevelResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$GetLatestMemoryPressureLevel_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getPeerToPeerConnectionsCountChange(Lorg/chromium/network/mojom/NetworkServiceTest$GetPeerToPeerConnectionsCountChange_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetPeerToPeerConnectionsCountChangeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetPeerToPeerConnectionsCountChangeParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0xe

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetPeerToPeerConnectionsCountChangeResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestGetPeerToPeerConnectionsCountChangeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$GetPeerToPeerConnectionsCountChange_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public isHappyEyeballsV3Enabled(Lorg/chromium/network/mojom/NetworkServiceTest$IsHappyEyeballsV3Enabled_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestIsHappyEyeballsV3EnabledParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestIsHappyEyeballsV3EnabledParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0x1a

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestIsHappyEyeballsV3EnabledResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestIsHappyEyeballsV3EnabledResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$IsHappyEyeballsV3Enabled_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public log(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkServiceTest$Log_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogParams;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0x10

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestLogResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$Log_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public makeRequestToServer(Lorg/chromium/network/mojom/TransferableSocket;Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/NetworkServiceTest$MakeRequestToServer_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerParams;->s:Lorg/chromium/network/mojom/TransferableSocket;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerParams;->endpoint:Lorg/chromium/network/mojom/IpEndPoint;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/16 v4, 0x16

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMakeRequestToServerResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$MakeRequestToServer_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public mockCertVerifierAddResultForCertAndHost(Lorg/chromium/network/mojom/X509Certificate;Ljava/lang/String;Lorg/chromium/network/mojom/CertVerifyResult;ILorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierAddResultForCertAndHost_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->cert:Lorg/chromium/network/mojom/X509Certificate;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->hostPattern:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->verifyResult:Lorg/chromium/network/mojom/CertVerifyResult;

    iput p4, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostParams;->rv:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 v1, 0x0

    const/4 p4, 0x6

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierAddResultForCertAndHostResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierAddResultForCertAndHost_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public mockCertVerifierSetDefaultResult(ILorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierSetDefaultResult_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultParams;->defaultResult:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestMockCertVerifierSetDefaultResultResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierSetDefaultResult_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public openFile(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/NetworkServiceTest$OpenFile_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileParams;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0x13

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestOpenFileResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$OpenFile_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public replaceSystemDnsConfig(Lorg/chromium/network/mojom/NetworkServiceTest$ReplaceSystemDnsConfig_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestReplaceSystemDnsConfigParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestReplaceSystemDnsConfigParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0x9

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestReplaceSystemDnsConfigResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestReplaceSystemDnsConfigResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$ReplaceSystemDnsConfig_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public resolveOwnHostnameWithSystemDns(Lorg/chromium/network/mojom/NetworkServiceTest$ResolveOwnHostnameWithSystemDns_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestResolveOwnHostnameWithSystemDnsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestResolveOwnHostnameWithSystemDnsParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0x17

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestResolveOwnHostnameWithSystemDnsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestResolveOwnHostnameWithSystemDnsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$ResolveOwnHostnameWithSystemDns_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setAllowNetworkAccessToHostResolutions(Lorg/chromium/network/mojom/NetworkServiceTest$SetAllowNetworkAccessToHostResolutions_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetAllowNetworkAccessToHostResolutionsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetAllowNetworkAccessToHostResolutionsParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetAllowNetworkAccessToHostResolutionsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetAllowNetworkAccessToHostResolutionsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$SetAllowNetworkAccessToHostResolutions_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setIPv6ProbeResult(ZLorg/chromium/network/mojom/NetworkServiceTest$SetIPv6ProbeResult_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultParams;->success:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0x18

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetIPv6ProbeResultResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$SetIPv6ProbeResult_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setSctAuditingRetryDelay(Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/network/mojom/NetworkServiceTest$SetSctAuditingRetryDelay_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayParams;->delay:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0x12

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetSctAuditingRetryDelayResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$SetSctAuditingRetryDelay_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setTestDohConfig(ILorg/chromium/network/mojom/DnsOverHttpsConfig;Lorg/chromium/network/mojom/NetworkServiceTest$SetTestDohConfig_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigParams;->secureDnsMode:I

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigParams;->dohConfig:Lorg/chromium/network/mojom/DnsOverHttpsConfig;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTestDohConfigResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$SetTestDohConfig_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setTransportSecurityStateSource(SLorg/chromium/network/mojom/NetworkServiceTest$SetTransportSecurityStateSource_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceParams;-><init>()V

    iput-short p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceParams;->reportingPort:S

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x7

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSetTransportSecurityStateSourceResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$SetTransportSecurityStateSource_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public simulateCrash()V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateCrashParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateCrashParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public simulateNetworkChange(ILorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkChange_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeParams;->type:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkChangeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkChange_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public simulateNetworkQualityChange(ILorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkQualityChange_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeParams;->type:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkServiceTest_Internal$NetworkServiceTestSimulateNetworkQualityChangeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkQualityChange_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
