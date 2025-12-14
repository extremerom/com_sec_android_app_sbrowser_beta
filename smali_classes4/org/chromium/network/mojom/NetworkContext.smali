.class public interface abstract Lorg/chromium/network/mojom/NetworkContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/NetworkContext$GetBoundNetworkForTesting_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ExemptUrlFromNetworkRevocationForNonce_Response;,
        Lorg/chromium/network/mojom/NetworkContext$RevokeNetworkForNonces_Response;,
        Lorg/chromium/network/mojom/NetworkContext$HasPreloadedSharedDictionaryInfoForTesting_Response;,
        Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryOriginsBetween_Response;,
        Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryInfo_Response;,
        Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryUsageInfo_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ForceDomainReliabilityUploadsForTesting_Response;,
        Lorg/chromium/network/mojom/NetworkContext$AddDomainReliabilityContextForTesting_Response;,
        Lorg/chromium/network/mojom/NetworkContext$VerifyCertificateForTesting_Response;,
        Lorg/chromium/network/mojom/NetworkContext$EnableStaticKeyPinningForTesting_Response;,
        Lorg/chromium/network/mojom/NetworkContext$LookupServerBasicAuthCredentials_Response;,
        Lorg/chromium/network/mojom/NetworkContext$AddAuthCacheEntry_Response;,
        Lorg/chromium/network/mojom/NetworkContext$LoadHttpAuthCacheProxyEntries_Response;,
        Lorg/chromium/network/mojom/NetworkContext$SaveHttpAuthCacheProxyEntries_Response;,
        Lorg/chromium/network/mojom/NetworkContext$DeleteDynamicDataForHost_Response;,
        Lorg/chromium/network/mojom/NetworkContext$SetCorsOriginAccessListsForOrigin_Response;,
        Lorg/chromium/network/mojom/NetworkContext$GetHstsState_Response;,
        Lorg/chromium/network/mojom/NetworkContext$IsHstsActiveForHost_Response;,
        Lorg/chromium/network/mojom/NetworkContext$AddHsts_Response;,
        Lorg/chromium/network/mojom/NetworkContext$VerifyCertForSignedExchange_Response;,
        Lorg/chromium/network/mojom/NetworkContext$VerifyCert_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearBadProxiesCache_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ForceReloadProxyConfig_Response;,
        Lorg/chromium/network/mojom/NetworkContext$CreateTcpBoundSocket_Response;,
        Lorg/chromium/network/mojom/NetworkContext$CreateTcpConnectedSocket_Response;,
        Lorg/chromium/network/mojom/NetworkContext$CreateTcpServerSocket_Response;,
        Lorg/chromium/network/mojom/NetworkContext$CreateRestrictedUdpSocket_Response;,
        Lorg/chromium/network/mojom/NetworkContext$CloseIdleConnections_Response;,
        Lorg/chromium/network/mojom/NetworkContext$CloseAllConnections_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCacheForIsolationKey_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCache_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearDomainReliability_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearNetworkErrorLogging_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheClients_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheReports_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearCorsPreflightCache_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearHttpAuthCache_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearHostCache_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ComputeHttpCacheSize_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearHttpCache_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearNetworkingHistoryBetween_Response;,
        Lorg/chromium/network/mojom/NetworkContext$DeleteStoredTrustTokens_Response;,
        Lorg/chromium/network/mojom/NetworkContext$GetPrivateStateTokenRedemptionRecords_Response;,
        Lorg/chromium/network/mojom/NetworkContext$GetStoredTrustTokenCounts_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenSessionOnlyData_Response;,
        Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenData_Response;,
        Lorg/chromium/network/mojom/NetworkContext$Proxy;,
        Lorg/chromium/network/mojom/NetworkContext$DomainReliabilityClearMode;
    }
.end annotation


# virtual methods
.method public abstract addAuthCacheEntry(Lorg/chromium/network/mojom/AuthChallengeInfo;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/AuthCredentials;Lorg/chromium/network/mojom/NetworkContext$AddAuthCacheEntry_Response;)V
.end method

.method public abstract addDomainReliabilityContextForTesting(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkContext$AddDomainReliabilityContextForTesting_Response;)V
.end method

.method public abstract addHsts(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/Time;ZLorg/chromium/network/mojom/NetworkContext$AddHsts_Response;)V
.end method

.method public abstract addReportingApiObserver(Lorg/chromium/network/mojom/ReportingApiObserver;)V
.end method

.method public abstract clearBadProxiesCache(Lorg/chromium/network/mojom/NetworkContext$ClearBadProxiesCache_Response;)V
.end method

.method public abstract clearCorsPreflightCache(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearCorsPreflightCache_Response;)V
.end method

.method public abstract clearDomainReliability(Lorg/chromium/network/mojom/ClearDataFilter;ILorg/chromium/network/mojom/NetworkContext$ClearDomainReliability_Response;)V
.end method

.method public abstract clearHostCache(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHostCache_Response;)V
.end method

.method public abstract clearHttpAuthCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHttpAuthCache_Response;)V
.end method

.method public abstract clearHttpCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearHttpCache_Response;)V
.end method

.method public abstract clearNetworkErrorLogging(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearNetworkErrorLogging_Response;)V
.end method

.method public abstract clearNetworkingHistoryBetween(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$ClearNetworkingHistoryBetween_Response;)V
.end method

.method public abstract clearNonces([Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract clearReportingCacheClients(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheClients_Response;)V
.end method

.method public abstract clearReportingCacheReports(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearReportingCacheReports_Response;)V
.end method

.method public abstract clearSharedDictionaryCache(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCache_Response;)V
.end method

.method public abstract clearSharedDictionaryCacheForIsolationKey(Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;Lorg/chromium/network/mojom/NetworkContext$ClearSharedDictionaryCacheForIsolationKey_Response;)V
.end method

.method public abstract clearTrustTokenData(Lorg/chromium/network/mojom/ClearDataFilter;Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenData_Response;)V
.end method

.method public abstract clearTrustTokenSessionOnlyData(Lorg/chromium/network/mojom/NetworkContext$ClearTrustTokenSessionOnlyData_Response;)V
.end method

.method public abstract closeAllConnections(Lorg/chromium/network/mojom/NetworkContext$CloseAllConnections_Response;)V
.end method

.method public abstract closeIdleConnections(Lorg/chromium/network/mojom/NetworkContext$CloseIdleConnections_Response;)V
.end method

.method public abstract computeHttpCacheSize(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$ComputeHttpCacheSize_Response;)V
.end method

.method public abstract createHostResolver(Lorg/chromium/network/mojom/DnsConfigOverrides;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/network/mojom/DnsConfigOverrides;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/HostResolver;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createMdnsResponder(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/MdnsResponder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createNetLogExporter(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/NetLogExporter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createP2pSocketManager(Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/P2pTrustedSocketManagerClient;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
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
.end method

.method public abstract createProxyResolvingSocketFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/ProxyResolvingSocketFactory;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createRestrictedUdpSocket(Lorg/chromium/network/mojom/IpEndPoint;ILorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/RestrictedUdpSocketParams;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UdpSocketListener;Lorg/chromium/network/mojom/NetworkContext$CreateRestrictedUdpSocket_Response;)V
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
.end method

.method public abstract createTcpBoundSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/NetworkContext$CreateTcpBoundSocket_Response;)V
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
.end method

.method public abstract createTcpConnectedSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/AddressList;Lorg/chromium/network/mojom/TcpConnectedSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/SocketObserver;Lorg/chromium/network/mojom/NetworkContext$CreateTcpConnectedSocket_Response;)V
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
.end method

.method public abstract createTcpServerSocket(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/TcpServerSocketOptions;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/NetworkContext$CreateTcpServerSocket_Response;)V
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
.end method

.method public abstract createUdpSocket(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UdpSocketListener;)V
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
.end method

.method public abstract createUrlLoaderFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/network/mojom/UrlLoaderFactoryParams;)V
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
.end method

.method public abstract createWebSocket(Lorg/chromium/url/mojom/Url;[Ljava/lang/String;Lorg/chromium/network/mojom/SiteForCookies;ILorg/chromium/network/mojom/IsolationInfo;[Lorg/chromium/network/mojom/HttpHeader;ILorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/WebSocketHandshakeClient;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;Lorg/chromium/network/mojom/WebSocketAuthenticationHandler;Lorg/chromium/network/mojom/TrustedHeaderClient;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract createWebTransport(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkAnonymizationKey;[Lorg/chromium/network/mojom/WebTransportCertificateFingerprint;Lorg/chromium/network/mojom/WebTransportHandshakeClient;)V
.end method

.method public abstract deleteDynamicDataForHost(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$DeleteDynamicDataForHost_Response;)V
.end method

.method public abstract deleteStoredTrustTokens(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContext$DeleteStoredTrustTokens_Response;)V
.end method

.method public abstract enableStaticKeyPinningForTesting(Lorg/chromium/network/mojom/NetworkContext$EnableStaticKeyPinningForTesting_Response;)V
.end method

.method public abstract exemptUrlFromNetworkRevocationForNonce(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$ExemptUrlFromNetworkRevocationForNonce_Response;)V
.end method

.method public abstract flushCachedClientCertIfNeeded(Lorg/chromium/network/mojom/HostPortPair;Lorg/chromium/network/mojom/X509Certificate;)V
.end method

.method public abstract flushMatchingCachedClientCert(Lorg/chromium/network/mojom/X509Certificate;)V
.end method

.method public abstract forceDomainReliabilityUploadsForTesting(Lorg/chromium/network/mojom/NetworkContext$ForceDomainReliabilityUploadsForTesting_Response;)V
.end method

.method public abstract forceReloadProxyConfig(Lorg/chromium/network/mojom/NetworkContext$ForceReloadProxyConfig_Response;)V
.end method

.method public abstract getBoundNetworkForTesting(Lorg/chromium/network/mojom/NetworkContext$GetBoundNetworkForTesting_Response;)V
.end method

.method public abstract getCookieManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/CookieManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceBoundSessionManager(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/DeviceBoundSessionManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getHstsState(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$GetHstsState_Response;)V
.end method

.method public abstract getPrivateStateTokenRedemptionRecords(Lorg/chromium/network/mojom/NetworkContext$GetPrivateStateTokenRedemptionRecords_Response;)V
.end method

.method public abstract getRestrictedCookieManager(Lorg/chromium/mojo/bindings/InterfaceRequest;ILorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/IsolationInfo;Lorg/chromium/network/mojom/CookieSettingOverrides;Lorg/chromium/network/mojom/CookieSettingOverrides;Lorg/chromium/network/mojom/CookieAccessObserver;)V
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
.end method

.method public abstract getSharedDictionaryInfo(Lorg/chromium/network/mojom/SharedDictionaryIsolationKey;Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryInfo_Response;)V
.end method

.method public abstract getSharedDictionaryOriginsBetween(Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryOriginsBetween_Response;)V
.end method

.method public abstract getSharedDictionaryUsageInfo(Lorg/chromium/network/mojom/NetworkContext$GetSharedDictionaryUsageInfo_Response;)V
.end method

.method public abstract getStoredTrustTokenCounts(Lorg/chromium/network/mojom/NetworkContext$GetStoredTrustTokenCounts_Response;)V
.end method

.method public abstract getTrustTokenQueryAnswerer(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/url/internal/mojom/Origin;)V
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
.end method

.method public abstract getViaObliviousHttp(Lorg/chromium/network/mojom/ObliviousHttpRequest;Lorg/chromium/network/mojom/ObliviousHttpClient;)V
.end method

.method public abstract hasPreloadedSharedDictionaryInfoForTesting(Lorg/chromium/network/mojom/NetworkContext$HasPreloadedSharedDictionaryInfoForTesting_Response;)V
.end method

.method public abstract isHstsActiveForHost(Ljava/lang/String;ZLorg/chromium/network/mojom/NetworkContext$IsHstsActiveForHost_Response;)V
.end method

.method public abstract loadHttpAuthCacheProxyEntries(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$LoadHttpAuthCacheProxyEntries_Response;)V
.end method

.method public abstract lookUpProxyForUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ProxyLookupClient;)V
.end method

.method public abstract lookupServerBasicAuthCredentials(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/NetworkContext$LookupServerBasicAuthCredentials_Response;)V
.end method

.method public abstract notifyExternalCacheHit(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkIsolationKey;Z)V
.end method

.method public abstract preconnectSockets(ILorg/chromium/url/mojom/Url;ILorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;)V
.end method

.method public abstract prefetch(IILorg/chromium/network/mojom/UrlRequest;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;)V
.end method

.method public abstract preloadSharedDictionaryInfoForDocument([Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/chromium/url/mojom/Url;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/PreloadedSharedDictionaryInfoHandle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queueEnterpriseReport(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/DictionaryValue;)V
.end method

.method public abstract queueReport(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/mojo_base/mojom/DictionaryValue;)V
.end method

.method public abstract queueSignedExchangeReport(Lorg/chromium/network/mojom/SignedExchangeReport;Lorg/chromium/network/mojom/NetworkAnonymizationKey;)V
.end method

.method public abstract resetUrlLoaderFactories()V
.end method

.method public abstract resolveHost(Lorg/chromium/network/mojom/HostResolverHost;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ResolveHostParameters;Lorg/chromium/network/mojom/ResolveHostClient;)V
.end method

.method public abstract resourceSchedulerClientVisibilityChanged(Lorg/chromium/mojo_base/mojom/UnguessableToken;Z)V
.end method

.method public abstract revokeNetworkForNonces([Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkContext$RevokeNetworkForNonces_Response;)V
.end method

.method public abstract saveHttpAuthCacheProxyEntries(Lorg/chromium/network/mojom/NetworkContext$SaveHttpAuthCacheProxyEntries_Response;)V
.end method

.method public abstract sendReportsAndRemoveSource(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract setAcceptLanguage(Ljava/lang/String;)V
.end method

.method public abstract setBlockTrustTokens(Z)V
.end method

.method public abstract setClient(Lorg/chromium/network/mojom/NetworkContextClient;)V
.end method

.method public abstract setCookieDeprecationLabel(Ljava/lang/String;)V
.end method

.method public abstract setCorsNonWildcardRequestHeadersSupport(Z)V
.end method

.method public abstract setCorsOriginAccessListsForOrigin(Lorg/chromium/url/internal/mojom/Origin;[Lorg/chromium/network/mojom/CorsOriginPattern;[Lorg/chromium/network/mojom/CorsOriginPattern;Lorg/chromium/network/mojom/NetworkContext$SetCorsOriginAccessListsForOrigin_Response;)V
.end method

.method public abstract setCtPolicy(Lorg/chromium/network/mojom/CtPolicy;)V
.end method

.method public abstract setDocumentReportingEndpoints(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/IsolationInfo;Ljava/util/Map;)V
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
.end method

.method public abstract setEnableCrossSiteReferrerStripping(Z)V
.end method

.method public abstract setEnableReferrers(Z)V
.end method

.method public abstract setEnterpriseReportingEndpoints(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/url/mojom/Url;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNetworkConditions(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/NetworkConditions;)V
.end method

.method public abstract setSctAuditingMode(I)V
.end method

.method public abstract setSharedDictionaryCacheMaxSize(J)V
.end method

.method public abstract setSplitAuthCacheByNetworkAnonymizationKey(Z)V
.end method

.method public abstract setTrackingProtectionContentSetting([Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;)V
.end method

.method public abstract verifyCert(Lorg/chromium/network/mojom/X509Certificate;Lorg/chromium/network/mojom/HostPortPair;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCert_Response;)V
.end method

.method public abstract verifyCertForSignedExchange(Lorg/chromium/network/mojom/X509Certificate;Lorg/chromium/network/mojom/HostPortPair;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCertForSignedExchange_Response;)V
.end method

.method public abstract verifyCertificateForTesting(Lorg/chromium/network/mojom/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContext$VerifyCertificateForTesting_Response;)V
.end method
