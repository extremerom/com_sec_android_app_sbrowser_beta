.class Lorg/chromium/network/mojom/NetworkService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceInterceptUrlLoaderForBodyDecodingParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetTpcdMetadataGrantsParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetNetworkAnnotationMonitorParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetIPv6ReachabilityOverrideParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceEnableDataUseUpdatesParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceParseHeadersResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceParseHeadersResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceParseHeadersResponseParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceParseHeadersParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateProbabilisticRevealTokenRegistryParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateMaskedDomainListFlatbufferParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateMaskedDomainListParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetExplicitlyAllowedPortsParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetFirstPartySetsParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceBindTestInterfaceForTestingParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceDumpWithoutCrashingParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateKeyPinsListParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetCtEnforcementEnabledResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetCtEnforcementEnabledResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetCtEnforcementEnabledResponseParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetCtEnforcementEnabledParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateCtKnownPopularScTsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateCtKnownPopularScTsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateCtKnownPopularScTsResponseParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateCtKnownPopularScTsParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateCtLogListResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateCtLogListResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateCtLogListResponseParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceUpdateCtLogListParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceConfigureSctAuditingParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceClearSctAuditingCacheParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetTrustTokenKeyCommitmentsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetTrustTokenKeyCommitmentsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetTrustTokenKeyCommitmentsResponseParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetTrustTokenKeyCommitmentsParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceOnApplicationStateChangeParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceOnPeerToPeerConnectionsCountChangeParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceOnMemoryPressureParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetEncryptionKeyParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceOnClientCertStoreChangedParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceOnTrustStoreChangedParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceGetNetworkListResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceGetNetworkListResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceGetNetworkListResponseParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceGetNetworkListParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceGetDnsConfigChangeManagerParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceGetNetworkQualityEstimatorManagerParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceGetNetworkChangeManagerParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetMaxConnectionsPerProxyChainParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetRawHeadersAccessParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceConfigureHttpAuthPrefsParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetUpHttpAuthParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceDisableQuicParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceConfigureStubHostResolverParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceCreateNetworkContextParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetSslKeyLogFileParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceAttachNetLogProxyParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceStartNetLogParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$NetworkServiceSetParamsParams;,
        Lorg/chromium/network/mojom/NetworkService_Internal$Stub;,
        Lorg/chromium/network/mojom/NetworkService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/NetworkService;",
            "Lorg/chromium/network/mojom/NetworkService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetworkService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/NetworkService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
