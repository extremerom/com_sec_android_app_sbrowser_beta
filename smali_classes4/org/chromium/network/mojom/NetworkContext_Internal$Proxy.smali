.class final Lorg/chromium/network/mojom/NetworkContext_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/NetworkContext$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkContext_Internal;
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
.method public addAuthCacheEntry(Lorg/chromium/network/mojom/AuthChallengeInfo;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/AuthCredentials;Lorg/chromium/network/mojom/NetworkContext$AddAuthCacheEntry_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;->challenge:Lorg/chromium/network/mojom/AuthChallengeInfo;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryParams;->credentials:Lorg/chromium/network/mojom/AuthCredentials;

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

    const/16 v3, 0x43

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddAuthCacheEntryResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$AddAuthCacheEntry_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public addDomainReliabilityContextForTesting(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkContext$AddDomainReliabilityContextForTesting_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingParams;->uploadUrl:Lorg/chromium/url/mojom/Url;

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

    const/16 v4, 0x48

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddDomainReliabilityContextForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$AddDomainReliabilityContextForTesting_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public addHsts(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/Time;ZLorg/chromium/network/mojom/NetworkContext$AddHsts_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;->host:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;->expiry:Lorg/chromium/mojo_base/mojom/Time;

    iput-boolean p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsParams;->includeSubdomains:Z

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

    const/16 v3, 0x3b

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddHstsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$AddHsts_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public addReportingApiObserver(Lorg/chromium/network/mojom/ReportingApiObserver;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddReportingApiObserverParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddReportingApiObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextAddReportingApiObserverParams;->observer:Lorg/chromium/network/mojom/ReportingApiObserver;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x4b

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public clearBadProxiesCache(Lorg/chromium/network/mojom/NetworkContext$ClearBadProxiesCache_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearBadProxiesCacheParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearBadProxiesCacheParams;-><init>()V

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

    const/16 v6, 0x30

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearBadProxiesCacheResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearBadProxiesCacheResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearBadProxiesCache_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearCorsPreflightCache(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearCorsPreflightCache_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    const/16 v5, 0x14

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearCorsPreflightCacheResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearCorsPreflightCache_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearDomainReliability(Lorg/chromium/network/mojom/ClearDataFilter;ILorg/chromium/network/mojom/NetworkContext$ClearDomainReliability_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

    iput p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityParams;->mode:I

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

    const/16 v4, 0x18

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearDomainReliabilityResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearDomainReliability_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearHostCache(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHostCache_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHostCacheResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearHostCache_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearHttpAuthCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHttpAuthCache_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    const/16 v3, 0x13

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpAuthCacheResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearHttpAuthCache_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearHttpCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHttpCache_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    const/16 v3, 0xf

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearHttpCacheResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearHttpCache_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearNetworkErrorLogging(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearNetworkErrorLogging_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    const/16 v5, 0x17

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkErrorLoggingResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearNetworkErrorLogging_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearNetworkingHistoryBetween(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$ClearNetworkingHistoryBetween_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

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

    const/16 v4, 0xe

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNetworkingHistoryBetweenResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearNetworkingHistoryBetween_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearNonces([Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNoncesParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNoncesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearNoncesParams;->nonces:[Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x57

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public clearReportingCacheClients(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheClients_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    const/16 v5, 0x16

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheClientsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheClients_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearReportingCacheReports(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheReports_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    const/16 v5, 0x15

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearReportingCacheReportsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheReports_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearSharedDictionaryCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCache_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    const/16 v3, 0x19

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCache_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearSharedDictionaryCacheForIsolationKey(Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCacheForIsolationKey_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyParams;->isolationKey:Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;

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

    const/16 v5, 0x1a

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearSharedDictionaryCacheForIsolationKeyResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCacheForIsolationKey_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearTrustTokenData(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenData_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataParams;->filter:Lorg/chromium/network/mojom/ClearDataFilter;

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

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenData_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearTrustTokenSessionOnlyData(Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenSessionOnlyData_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenSessionOnlyDataParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenSessionOnlyDataParams;-><init>()V

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

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenSessionOnlyDataResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextClearTrustTokenSessionOnlyDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenSessionOnlyData_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public closeAllConnections(Lorg/chromium/network/mojom/NetworkContext$CloseAllConnections_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseAllConnectionsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseAllConnectionsParams;-><init>()V

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

    const/16 v6, 0x21

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseAllConnectionsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseAllConnectionsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$CloseAllConnections_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public closeIdleConnections(Lorg/chromium/network/mojom/NetworkContext$CloseIdleConnections_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseIdleConnectionsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseIdleConnectionsParams;-><init>()V

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

    const/16 v6, 0x22

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseIdleConnectionsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCloseIdleConnectionsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$CloseIdleConnections_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public computeHttpCacheSize(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$ComputeHttpCacheSize_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

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

    const/16 v4, 0x10

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextComputeHttpCacheSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ComputeHttpCacheSize_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createHostResolver(Lorg/chromium/network/mojom/DnsConfigOverrides;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/DnsConfigOverrides;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/HostResolver;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateHostResolverParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateHostResolverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateHostResolverParams;->configOverrides:Lorg/chromium/network/mojom/DnsConfigOverrides;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateHostResolverParams;->hostResolver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x38

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createMdnsResponder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/MdnsResponder;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateMdnsResponderParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateMdnsResponderParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateMdnsResponderParams;->responderReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createNetLogExporter(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/NetLogExporter;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateNetLogExporterParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateNetLogExporterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateNetLogExporterParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x33

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createP2pSocketManager(Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/P2pTrustedSocketManagerClient;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/NetworkAnonymizationKey;",
            "Lorg/chromium/network/mojom/P2pTrustedSocketManagerClient;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/P2pTrustedSocketManager;",
            ">;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/P2pSocketManager;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->client:Lorg/chromium/network/mojom/P2pTrustedSocketManagerClient;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->trustedSocketManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateP2pSocketManagerParams;->socketManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x35

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createProxyResolvingSocketFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/ProxyResolvingSocketFactory;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateProxyResolvingSocketFactoryParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateProxyResolvingSocketFactoryParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateProxyResolvingSocketFactoryParams;->factory:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createRestrictedUdpSocket(Lorg/chromium/network/mojom/IpEndPoint;ILorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/RestrictedUdpSocketParams;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UdpSocketListener;Lorg/chromium/network/mojom/NetworkContext$CreateRestrictedUdpSocket_Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/IpEndPoint;",
            "I",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            "Lorg/chromium/network/mojom/RestrictedUdpSocketParams;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/RestrictedUdpSocket;",
            ">;",
            "Lorg/chromium/network/mojom/UdpSocketListener;",
            "Lorg/chromium/network/mojom/NetworkContext$CreateRestrictedUdpSocket_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->addr:Lorg/chromium/network/mojom/IpEndPoint;

    iput p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->mode:I

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->params:Lorg/chromium/network/mojom/RestrictedUdpSocketParams;

    iput-object p5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketParams;->listener:Lorg/chromium/network/mojom/UdpSocketListener;

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

    const-wide/16 p4, 0x0

    const/16 p6, 0x29

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateRestrictedUdpSocketResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$CreateRestrictedUdpSocket_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createTcpBoundSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/NetworkContext$CreateTcpBoundSocket_Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/IpEndPoint;",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/TcpBoundSocket;",
            ">;",
            "Lorg/chromium/network/mojom/NetworkContext$CreateTcpBoundSocket_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

    const/16 v3, 0x2c

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpBoundSocketResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$CreateTcpBoundSocket_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createTcpConnectedSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/AddressList;Lorg/chromium/network/mojom/TcpConnectedSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/NetworkContext$CreateTcpConnectedSocket_Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/IpEndPoint;",
            "Lorg/chromium/network/mojom/AddressList;",
            "Lorg/chromium/network/mojom/TcpConnectedSocketOptions;",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/TcpConnectedSocket;",
            ">;",
            "Lorg/chromium/network/mojom/SocketObserver;",
            "Lorg/chromium/network/mojom/NetworkContext$CreateTcpConnectedSocket_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->remoteAddrList:Lorg/chromium/network/mojom/AddressList;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->tcpConnectedSocketOptions:Lorg/chromium/network/mojom/TcpConnectedSocketOptions;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iput-object p5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketParams;->observer:Lorg/chromium/network/mojom/SocketObserver;

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

    const-wide/16 p4, 0x0

    const/16 p6, 0x2b

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpConnectedSocketResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$CreateTcpConnectedSocket_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createTcpServerSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/TcpServerSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/NetworkContext$CreateTcpServerSocket_Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/IpEndPoint;",
            "Lorg/chromium/network/mojom/TcpServerSocketOptions;",
            "Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/TcpServerSocket;",
            ">;",
            "Lorg/chromium/network/mojom/NetworkContext$CreateTcpServerSocket_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->localAddr:Lorg/chromium/network/mojom/IpEndPoint;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->options:Lorg/chromium/network/mojom/TcpServerSocketOptions;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

    const/16 p4, 0x2a

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateTcpServerSocketResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$CreateTcpServerSocket_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createUdpSocket(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UdpSocketListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UdpSocket;",
            ">;",
            "Lorg/chromium/network/mojom/UdpSocketListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUdpSocketParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUdpSocketParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUdpSocketParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUdpSocketParams;->listener:Lorg/chromium/network/mojom/UdpSocketListener;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x28

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createUrlLoaderFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UrlLoaderFactoryParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoaderFactory;",
            ">;",
            "Lorg/chromium/network/mojom/UrlLoaderFactoryParams;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUrlLoaderFactoryParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUrlLoaderFactoryParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUrlLoaderFactoryParams;->urlLoaderFactory:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateUrlLoaderFactoryParams;->params:Lorg/chromium/network/mojom/UrlLoaderFactoryParams;

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

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createWebSocket(Lorg/chromium/url/mojom/Url;[Ljava/lang/String;Lorg/chromium/network/mojom/SiteForCookies;ILorg/chromium/network/mojom/IsolationInfo;[Lorg/chromium/network/mojom/HttpHeader;ILorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/WebSocketHandshakeClient;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;Lorg/chromium/network/mojom/TrustedHeaderClient;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->url:Lorg/chromium/url/mojom/Url;

    move-object v1, p2

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->requestedProtocols:[Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    move v1, p4

    iput v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->storageAccessApiStatus:I

    move-object v1, p5

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    move-object v1, p6

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->additionalHeaders:[Lorg/chromium/network/mojom/HttpHeader;

    move v1, p7

    iput v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->processId:I

    move-object v1, p8

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    move v1, p9

    iput v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->options:I

    move-object v1, p10

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    move-object/from16 v1, p11

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->handshakeClient:Lorg/chromium/network/mojom/WebSocketHandshakeClient;

    move-object/from16 v1, p12

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->urlLoaderNetworkObserver:Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->authHandler:Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->headerClient:Lorg/chromium/network/mojom/TrustedHeaderClient;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebSocketParams;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v4, 0x31

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createWebTransport(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkAnonymizationKey;[Lorg/chromium/network/mojom/WebTransportCertificateFingerprint;Lorg/chromium/network/mojom/WebTransportHandshakeClient;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->fingerprints:[Lorg/chromium/network/mojom/WebTransportCertificateFingerprint;

    iput-object p5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextCreateWebTransportParams;->handshakeClient:Lorg/chromium/network/mojom/WebTransportHandshakeClient;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x32

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public deleteDynamicDataForHost(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$DeleteDynamicDataForHost_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostParams;->host:Ljava/lang/String;

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

    const/16 v5, 0x3f

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteDynamicDataForHostResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$DeleteDynamicDataForHost_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public deleteStoredTrustTokens(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContext$DeleteStoredTrustTokens_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensParams;->issuer:Lorg/chromium/url/internal/mojom/Origin;

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

    const/16 v5, 0xb

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextDeleteStoredTrustTokensResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$DeleteStoredTrustTokens_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public enableStaticKeyPinningForTesting(Lorg/chromium/network/mojom/NetworkContext$EnableStaticKeyPinningForTesting_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextEnableStaticKeyPinningForTestingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextEnableStaticKeyPinningForTestingParams;-><init>()V

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

    const/16 v6, 0x46

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextEnableStaticKeyPinningForTestingResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextEnableStaticKeyPinningForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$EnableStaticKeyPinningForTesting_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public exemptUrlFromNetworkRevocationForNonce(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$ExemptUrlFromNetworkRevocationForNonce_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceParams;->exemptedUrl:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceParams;->nonce:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const/16 v4, 0x58

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextExemptUrlFromNetworkRevocationForNonceResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ExemptUrlFromNetworkRevocationForNonce_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public flushCachedClientCertIfNeeded(Lorg/chromium/network/mojom/HostPortPair;Lorg/chromium/network/mojom/X509Certificate;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushCachedClientCertIfNeededParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushCachedClientCertIfNeededParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushCachedClientCertIfNeededParams;->host:Lorg/chromium/network/mojom/HostPortPair;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushCachedClientCertIfNeededParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x53

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public flushMatchingCachedClientCert(Lorg/chromium/network/mojom/X509Certificate;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushMatchingCachedClientCertParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushMatchingCachedClientCertParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextFlushMatchingCachedClientCertParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x54

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public forceDomainReliabilityUploadsForTesting(Lorg/chromium/network/mojom/NetworkContext$ForceDomainReliabilityUploadsForTesting_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceDomainReliabilityUploadsForTestingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceDomainReliabilityUploadsForTestingParams;-><init>()V

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

    const/16 v6, 0x49

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceDomainReliabilityUploadsForTestingResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceDomainReliabilityUploadsForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ForceDomainReliabilityUploadsForTesting_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public forceReloadProxyConfig(Lorg/chromium/network/mojom/NetworkContext$ForceReloadProxyConfig_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceReloadProxyConfigParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceReloadProxyConfigParams;-><init>()V

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

    const/16 v6, 0x2f

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceReloadProxyConfigResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextForceReloadProxyConfigResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$ForceReloadProxyConfig_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getBoundNetworkForTesting(Lorg/chromium/network/mojom/NetworkContext$GetBoundNetworkForTesting_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetBoundNetworkForTestingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetBoundNetworkForTestingParams;-><init>()V

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

    const/16 v6, 0x5a

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetBoundNetworkForTestingResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetBoundNetworkForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$GetBoundNetworkForTesting_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getCookieManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/CookieManager;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetCookieManagerParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetCookieManagerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetCookieManagerParams;->cookieManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getDeviceBoundSessionManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/DeviceBoundSessionManager;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetDeviceBoundSessionManagerParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetDeviceBoundSessionManagerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetDeviceBoundSessionManagerParams;->deviceBoundSessionManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x5b

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getHstsState(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$GetHstsState_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateParams;->domain:Ljava/lang/String;

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

    const/16 v5, 0x3d

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetHstsStateResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$GetHstsState_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getPrivateStateTokenRedemptionRecords(Lorg/chromium/network/mojom/NetworkContext$GetPrivateStateTokenRedemptionRecords_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetPrivateStateTokenRedemptionRecordsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetPrivateStateTokenRedemptionRecordsParams;-><init>()V

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

    const/16 v6, 0xa

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetPrivateStateTokenRedemptionRecordsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetPrivateStateTokenRedemptionRecordsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$GetPrivateStateTokenRedemptionRecords_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getRestrictedCookieManager(Lorg/chromium/mojo/bindings/InterfaceRequest;ILorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/IsolationInfo;Lorg/chromium/network/mojom/CookieSettingOverrides;Lorg/chromium/network/mojom/CookieSettingOverrides;Lorg/chromium/network/mojom/CookieAccessObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/RestrictedCookieManager;",
            ">;I",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Lorg/chromium/network/mojom/IsolationInfo;",
            "Lorg/chromium/network/mojom/CookieSettingOverrides;",
            "Lorg/chromium/network/mojom/CookieSettingOverrides;",
            "Lorg/chromium/network/mojom/CookieAccessObserver;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->restrictedCookieManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->role:I

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    iput-object p5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->cookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

    iput-object p6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->devtoolsCookieSettingOverrides:Lorg/chromium/network/mojom/CookieSettingOverrides;

    iput-object p7, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetRestrictedCookieManagerParams;->cookieObserver:Lorg/chromium/network/mojom/CookieAccessObserver;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getSharedDictionaryInfo(Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryInfo_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoParams;->isolationKey:Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;

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

    const/16 v5, 0x4d

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryInfoResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryInfo_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getSharedDictionaryOriginsBetween(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryOriginsBetween_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenParams;->startTime:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenParams;->endTime:Lorg/chromium/mojo_base/mojom/Time;

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

    const/16 v4, 0x4e

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryOriginsBetweenResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryOriginsBetween_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getSharedDictionaryUsageInfo(Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryUsageInfo_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryUsageInfoParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryUsageInfoParams;-><init>()V

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

    const/16 v6, 0x4c

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryUsageInfoResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetSharedDictionaryUsageInfoResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryUsageInfo_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getStoredTrustTokenCounts(Lorg/chromium/network/mojom/NetworkContext$GetStoredTrustTokenCounts_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetStoredTrustTokenCountsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetStoredTrustTokenCountsParams;-><init>()V

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

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetStoredTrustTokenCountsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetStoredTrustTokenCountsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$GetStoredTrustTokenCounts_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getTrustTokenQueryAnswerer(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/url/internal/mojom/Origin;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/TrustTokenQueryAnswerer;",
            ">;",
            "Lorg/chromium/url/internal/mojom/Origin;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetTrustTokenQueryAnswererParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetTrustTokenQueryAnswererParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetTrustTokenQueryAnswererParams;->trustTokenQueryAnswerer:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetTrustTokenQueryAnswererParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getViaObliviousHttp(Lorg/chromium/network/mojom/ObliviousHttpRequest;Lorg/chromium/network/mojom/ObliviousHttpClient;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetViaObliviousHttpParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetViaObliviousHttpParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetViaObliviousHttpParams;->request:Lorg/chromium/network/mojom/ObliviousHttpRequest;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextGetViaObliviousHttpParams;->client:Lorg/chromium/network/mojom/ObliviousHttpClient;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public hasPreloadedSharedDictionaryInfoForTesting(Lorg/chromium/network/mojom/NetworkContext$HasPreloadedSharedDictionaryInfoForTesting_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextHasPreloadedSharedDictionaryInfoForTestingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextHasPreloadedSharedDictionaryInfoForTestingParams;-><init>()V

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

    const/16 v6, 0x51

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextHasPreloadedSharedDictionaryInfoForTestingResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextHasPreloadedSharedDictionaryInfoForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$HasPreloadedSharedDictionaryInfoForTesting_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public isHstsActiveForHost(Ljava/lang/String;ZLorg/chromium/network/mojom/NetworkContext$IsHstsActiveForHost_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostParams;->host:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostParams;->isTopLevelNav:Z

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

    const/16 v4, 0x3c

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextIsHstsActiveForHostResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$IsHstsActiveForHost_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public loadHttpAuthCacheProxyEntries(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$LoadHttpAuthCacheProxyEntries_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesParams;->cacheKey:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const/16 v5, 0x42

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLoadHttpAuthCacheProxyEntriesResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$LoadHttpAuthCacheProxyEntries_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public lookUpProxyForUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ProxyLookupClient;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookUpProxyForUrlParams;->proxyLookupClient:Lorg/chromium/network/mojom/ProxyLookupClient;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x2e

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public lookupServerBasicAuthCredentials(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/NetworkContext$LookupServerBasicAuthCredentials_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

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

    const/16 v4, 0x45

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextLookupServerBasicAuthCredentialsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$LookupServerBasicAuthCredentials_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public notifyExternalCacheHit(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkIsolationKey;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->httpMethod:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->key:Lorg/chromium/network/mojom/NetworkIsolationKey;

    iput-boolean p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextNotifyExternalCacheHitParams;->includeCredentials:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x11

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public preconnectSockets(ILorg/chromium/url/mojom/Url;ILorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->numStreams:I

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->url:Lorg/chromium/url/mojom/Url;

    iput p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->credentialsMode:I

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreconnectSocketsParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x34

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public prefetch(IILorg/chromium/network/mojom/UrlRequest;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->requestId:I

    iput p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->options:I

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->request:Lorg/chromium/network/mojom/UrlRequest;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPrefetchParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x59

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public preloadSharedDictionaryInfoForDocument([Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/chromium/url/mojom/Url;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/PreloadedSharedDictionaryInfoHandle;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreloadSharedDictionaryInfoForDocumentParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreloadSharedDictionaryInfoForDocumentParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreloadSharedDictionaryInfoForDocumentParams;->urls:[Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextPreloadSharedDictionaryInfoForDocumentParams;->preloadHandle:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x50

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public queueEnterpriseReport(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/DictionaryValue;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->type:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->group:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueEnterpriseReportParams;->body:Lorg/chromium/mojo_base/mojom/DictionaryValue;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x1f

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public queueReport(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/mojo_base/mojom/DictionaryValue;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->type:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->group:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->reportingSource:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p5, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p6, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueReportParams;->body:Lorg/chromium/mojo_base/mojom/DictionaryValue;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x1e

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public queueSignedExchangeReport(Lorg/chromium/network/mojom/SignedExchangeReport;Lorg/chromium/network/mojom/NetworkAnonymizationKey;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueSignedExchangeReportParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueSignedExchangeReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueSignedExchangeReportParams;->report:Lorg/chromium/network/mojom/SignedExchangeReport;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextQueueSignedExchangeReportParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x20

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resetUrlLoaderFactories()V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResetUrlLoaderFactoriesParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResetUrlLoaderFactoriesParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resolveHost(Lorg/chromium/network/mojom/HostResolverHost;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ResolveHostParameters;Lorg/chromium/network/mojom/ResolveHostClient;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->host:Lorg/chromium/network/mojom/HostResolverHost;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->optionalParameters:Lorg/chromium/network/mojom/ResolveHostParameters;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResolveHostParams;->responseClient:Lorg/chromium/network/mojom/ResolveHostClient;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x37

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resourceSchedulerClientVisibilityChanged(Lorg/chromium/mojo_base/mojom/UnguessableToken;Z)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResourceSchedulerClientVisibilityChangedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResourceSchedulerClientVisibilityChangedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResourceSchedulerClientVisibilityChangedParams;->clientToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-boolean p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextResourceSchedulerClientVisibilityChangedParams;->visible:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x52

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public revokeNetworkForNonces([Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$RevokeNetworkForNonces_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesParams;->nonces:[Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const/16 v5, 0x56

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextRevokeNetworkForNoncesResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$RevokeNetworkForNonces_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public saveHttpAuthCacheProxyEntries(Lorg/chromium/network/mojom/NetworkContext$SaveHttpAuthCacheProxyEntries_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSaveHttpAuthCacheProxyEntriesParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSaveHttpAuthCacheProxyEntriesParams;-><init>()V

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

    const/16 v6, 0x41

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSaveHttpAuthCacheProxyEntriesResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSaveHttpAuthCacheProxyEntriesResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$SaveHttpAuthCacheProxyEntries_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public sendReportsAndRemoveSource(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSendReportsAndRemoveSourceParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSendReportsAndRemoveSourceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSendReportsAndRemoveSourceParams;->reportingSource:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setAcceptLanguage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetAcceptLanguageParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetAcceptLanguageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetAcceptLanguageParams;->newAcceptLanguage:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setBlockTrustTokens(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetBlockTrustTokensParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetBlockTrustTokensParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetBlockTrustTokensParams;->block:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setClient(Lorg/chromium/network/mojom/NetworkContextClient;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetClientParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetClientParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetClientParams;->client:Lorg/chromium/network/mojom/NetworkContextClient;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setCookieDeprecationLabel(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCookieDeprecationLabelParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCookieDeprecationLabelParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCookieDeprecationLabelParams;->label:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x55

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setCorsNonWildcardRequestHeadersSupport(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsNonWildcardRequestHeadersSupportParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsNonWildcardRequestHeadersSupportParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsNonWildcardRequestHeadersSupportParams;->value:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x44

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setCorsOriginAccessListsForOrigin(Lorg/chromium/url/internal/mojom/Origin;[Lorg/chromium/network/mojom/CorsOriginPattern;[Lorg/chromium/network/mojom/CorsOriginPattern;Lorg/chromium/network/mojom/NetworkContext$SetCorsOriginAccessListsForOrigin_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;->sourceOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;->allowPatterns:[Lorg/chromium/network/mojom/CorsOriginPattern;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginParams;->blockPatterns:[Lorg/chromium/network/mojom/CorsOriginPattern;

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

    const/16 v3, 0x3e

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCorsOriginAccessListsForOriginResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$SetCorsOriginAccessListsForOrigin_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setCtPolicy(Lorg/chromium/network/mojom/CtPolicy;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCtPolicyParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCtPolicyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetCtPolicyParams;->ctPolicy:Lorg/chromium/network/mojom/CtPolicy;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setDocumentReportingEndpoints(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/IsolationInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Lorg/chromium/network/mojom/IsolationInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->reportingSource:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->isolationInfo:Lorg/chromium/network/mojom/IsolationInfo;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetDocumentReportingEndpointsParams;->endpoints:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x1b

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setEnableCrossSiteReferrerStripping(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableCrossSiteReferrerStrippingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableCrossSiteReferrerStrippingParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableCrossSiteReferrerStrippingParams;->enableReferrerStripping:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setEnableReferrers(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableReferrersParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableReferrersParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnableReferrersParams;->enableReferrers:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setEnterpriseReportingEndpoints(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/url/mojom/Url;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnterpriseReportingEndpointsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnterpriseReportingEndpointsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetEnterpriseReportingEndpointsParams;->endpoints:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setNetworkConditions(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkConditions;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetNetworkConditionsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetNetworkConditionsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetNetworkConditionsParams;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetNetworkConditionsParams;->conditions:Lorg/chromium/network/mojom/NetworkConditions;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x23

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setSctAuditingMode(I)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSctAuditingModeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSctAuditingModeParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSctAuditingModeParams;->mode:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x4a

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setSharedDictionaryCacheMaxSize(J)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSharedDictionaryCacheMaxSizeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSharedDictionaryCacheMaxSizeParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSharedDictionaryCacheMaxSizeParams;->cacheMaxSize:J

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x4f

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setSplitAuthCacheByNetworkAnonymizationKey(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSplitAuthCacheByNetworkAnonymizationKeyParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSplitAuthCacheByNetworkAnonymizationKeyParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetSplitAuthCacheByNetworkAnonymizationKeyParams;->splitAuthCacheByNetworkAnonymizationKey:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setTrackingProtectionContentSetting([Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetTrackingProtectionContentSettingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetTrackingProtectionContentSettingParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextSetTrackingProtectionContentSettingParams;->settings:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public verifyCert(Lorg/chromium/network/mojom/X509Certificate;Lorg/chromium/network/mojom/HostPortPair;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCert_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->hostPort:Lorg/chromium/network/mojom/HostPortPair;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->ocspResponse:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertParams;->sctList:Ljava/lang/String;

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

    const/16 p4, 0x39

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$VerifyCert_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public verifyCertForSignedExchange(Lorg/chromium/network/mojom/X509Certificate;Lorg/chromium/network/mojom/HostPortPair;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCertForSignedExchange_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->hostPort:Lorg/chromium/network/mojom/HostPortPair;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->ocspResponse:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeParams;->sctList:Ljava/lang/String;

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

    const/16 p4, 0x3a

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertForSignedExchangeResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$VerifyCertForSignedExchange_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public verifyCertificateForTesting(Lorg/chromium/network/mojom/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCertificateForTesting_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->certificate:Lorg/chromium/network/mojom/X509Certificate;

    iput-object p2, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->hostname:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->ocspResponse:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingParams;->sctList:Ljava/lang/String;

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

    const/16 p4, 0x47

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/NetworkContext_Internal$NetworkContextVerifyCertificateForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContext$VerifyCertificateForTesting_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
