.class public interface abstract Lorg/chromium/network/mojom/NetworkService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/NetworkService$ParseHeaders_Response;,
        Lorg/chromium/network/mojom/NetworkService$SetCtEnforcementEnabled_Response;,
        Lorg/chromium/network/mojom/NetworkService$UpdateCtKnownPopularScTs_Response;,
        Lorg/chromium/network/mojom/NetworkService$UpdateCtLogList_Response;,
        Lorg/chromium/network/mojom/NetworkService$SetTrustTokenKeyCommitments_Response;,
        Lorg/chromium/network/mojom/NetworkService$GetNetworkList_Response;,
        Lorg/chromium/network/mojom/NetworkService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract attachNetLogProxy(Lorg/chromium/network/mojom/NetLogProxySource;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/NetLogProxySource;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/NetLogProxySink;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindTestInterfaceForTesting(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/NetworkServiceTest;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearSctAuditingCache()V
.end method

.method public abstract configureHttpAuthPrefs(Lorg/chromium/network/mojom/HttpAuthDynamicParams;)V
.end method

.method public abstract configureSctAuditing(Lorg/chromium/network/mojom/SctAuditingConfiguration;)V
.end method

.method public abstract configureStubHostResolver(ZZILorg/chromium/network/mojom/DnsOverHttpsConfig;Z)V
.end method

.method public abstract createNetworkContext(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/NetworkContextParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/NetworkContext;",
            ">;",
            "Lorg/chromium/network/mojom/NetworkContextParams;",
            ")V"
        }
    .end annotation
.end method

.method public abstract disableQuic()V
.end method

.method public abstract dumpWithoutCrashing(Lorg/chromium/mojo_base/mojom/Time;)V
.end method

.method public abstract enableDataUseUpdates(Z)V
.end method

.method public abstract getDnsConfigChangeManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/DnsConfigChangeManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getNetworkChangeManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/NetworkChangeManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getNetworkList(ILorg/chromium/network/mojom/NetworkService$GetNetworkList_Response;)V
.end method

.method public abstract getNetworkQualityEstimatorManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/NetworkQualityEstimatorManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract interceptUrlLoaderForBodyDecoding([ILorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/network/mojom/UrlLoader;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UrlLoaderClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            "Lorg/chromium/mojo/system/DataPipe$ProducerHandle;",
            "Lorg/chromium/network/mojom/UrlLoader;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoaderClient;",
            ">;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoader;",
            ">;",
            "Lorg/chromium/network/mojom/UrlLoaderClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onApplicationStateChange(I)V
.end method

.method public abstract onClientCertStoreChanged()V
.end method

.method public abstract onMemoryPressure(I)V
.end method

.method public abstract onPeerToPeerConnectionsCountChange(I)V
.end method

.method public abstract onTrustStoreChanged()V
.end method

.method public abstract parseHeaders(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/HttpResponseHeaders;Lorg/chromium/network/mojom/NetworkService$ParseHeaders_Response;)V
.end method

.method public abstract setCtEnforcementEnabled(ZLorg/chromium/network/mojom/NetworkService$SetCtEnforcementEnabled_Response;)V
.end method

.method public abstract setEncryptionKey(Lorg/chromium/mojo_base/mojom/ByteString;)V
.end method

.method public abstract setExplicitlyAllowedPorts([S)V
.end method

.method public abstract setFirstPartySets(Lorg/chromium/network/mojom/GlobalFirstPartySets;)V
.end method

.method public abstract setIPv6ReachabilityOverride(Z)V
.end method

.method public abstract setMaxConnectionsPerProxyChain(I)V
.end method

.method public abstract setNetworkAnnotationMonitor(Lorg/chromium/network/mojom/NetworkAnnotationMonitor;)V
.end method

.method public abstract setParams(Lorg/chromium/network/mojom/NetworkServiceParams;)V
.end method

.method public abstract setRawHeadersAccess(I[Lorg/chromium/url/internal/mojom/Origin;)V
.end method

.method public abstract setSslKeyLogFile(Lorg/chromium/mojo_base/mojom/File;)V
.end method

.method public abstract setTpcdMetadataGrants([Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;)V
.end method

.method public abstract setTrustTokenKeyCommitments(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkService$SetTrustTokenKeyCommitments_Response;)V
.end method

.method public abstract setUpHttpAuth(Lorg/chromium/network/mojom/HttpAuthStaticParams;)V
.end method

.method public abstract startNetLog(Lorg/chromium/mojo_base/mojom/File;JILorg/chromium/mojo_base/mojom/DictionaryValue;)V
.end method

.method public abstract updateCtKnownPopularScTs([[BLorg/chromium/network/mojom/NetworkService$UpdateCtKnownPopularScTs_Response;)V
.end method

.method public abstract updateCtLogList([Lorg/chromium/network/mojom/CtLogInfo;Lorg/chromium/network/mojom/NetworkService$UpdateCtLogList_Response;)V
.end method

.method public abstract updateKeyPinsList(Lorg/chromium/network/mojom/PinList;Lorg/chromium/mojo_base/mojom/Time;)V
.end method

.method public abstract updateMaskedDomainList(Lorg/chromium/mojo_base/mojom/ProtoWrapper;[Ljava/lang/String;)V
.end method

.method public abstract updateMaskedDomainListFlatbuffer(Lorg/chromium/mojo_base/mojom/File;JLorg/chromium/mojo_base/mojom/File;J)V
.end method

.method public abstract updateProbabilisticRevealTokenRegistry(Lorg/chromium/mojo_base/mojom/DictionaryValue;)V
.end method
