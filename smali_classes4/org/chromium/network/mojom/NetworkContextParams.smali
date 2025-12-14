.class public final Lorg/chromium/network/mojom/NetworkContextParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public acamPreflightSpecConformant:Z

.field public acceptLanguage:Ljava/lang/String;

.field public allowAnyCorsExemptHeaderForBrowser:Z

.field public blockTrustTokens:Z

.field public boundNetwork:J

.field public certVerifierParams:Lorg/chromium/network/mojom/CertVerifierServiceRemoteParams;

.field public checkClearTextPermitted:Z

.field public cookieDeprecationLabel:Ljava/lang/String;

.field public cookieEncryptionProvider:Lorg/chromium/network/mojom/CookieEncryptionProvider;

.field public cookieManager:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/CookieManager;",
            ">;"
        }
    .end annotation
.end field

.field public cookieManagerParams:Lorg/chromium/network/mojom/CookieManagerParams;

.field public corsExemptHeaderList:[Ljava/lang/String;

.field public corsOriginAccessList:[Lorg/chromium/network/mojom/CorsOriginAccessPatterns;

.field public ctPolicy:Lorg/chromium/network/mojom/CtPolicy;

.field public customProxyConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/CustomProxyConfigClient;",
            ">;"
        }
    .end annotation
.end field

.field public customProxyConnectionObserverRemote:Lorg/chromium/network/mojom/CustomProxyConnectionObserver;

.field public deviceBoundSessionsEnabled:Z

.field public disableIdleSocketsCloseOnMemoryPressure:Z

.field public discardDomainReliablityUploads:Z

.field public domainReliabilityUploadReporter:Ljava/lang/String;

.field public enableBrotli:Z

.field public enableCertificateReporting:Z

.field public enableCrossSiteReferrerStripping:Z

.field public enableDomainReliability:Z

.field public enableEncryptedCookies:Z

.field public enableIpProtection:Z

.field public enableReferrers:Z

.field public enableZstd:Z

.field public enforceChromeCtPolicy:Z

.field public enterpriseReportingEndpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/url/mojom/Url;",
            ">;"
        }
    .end annotation
.end field

.field public filePaths:Lorg/chromium/network/mojom/NetworkContextFilePaths;

.field public firstPartySetsAccessDelegateParams:Lorg/chromium/network/mojom/FirstPartySetsAccessDelegateParams;

.field public firstPartySetsAccessDelegateReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/FirstPartySetsAccessDelegate;",
            ">;"
        }
    .end annotation
.end field

.field public hstsPolicyBypassList:[Ljava/lang/String;

.field public httpAuthStaticNetworkContextParams:Lorg/chromium/network/mojom/HttpAuthStaticNetworkContextParams;

.field public httpCacheEnabled:Z

.field public httpCacheFileOperationsFactory:Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;

.field public httpCacheMaxSize:I

.field public initialCustomProxyConfig:Lorg/chromium/network/mojom/CustomProxyConfig;

.field public initialProxyConfig:Lorg/chromium/network/mojom/ProxyConfigWithAnnotation;

.field public initialSslConfig:Lorg/chromium/network/mojom/SslConfig;

.field public ipProtectionControl:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/ip_protection/mojom/CoreControl;",
            ">;"
        }
    .end annotation
.end field

.field public ipProtectionCoreHost:Lorg/chromium/ip_protection/mojom/CoreHost;

.field public ipProtectionDataDirectory:Lorg/chromium/mojo_base/mojom/FilePath;

.field public ipProtectionIncognito:Z

.field public pacQuickCheckEnabled:Z

.field public persistSessionCookies:Z

.field public proxyConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/ProxyConfigClient;",
            ">;"
        }
    .end annotation
.end field

.field public proxyConfigPollerClient:Lorg/chromium/network/mojom/ProxyConfigPollerClient;

.field public proxyErrorClient:Lorg/chromium/network/mojom/ProxyErrorClient;

.field public proxyResolverFactory:Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactory;

.field public reportingDeliveryInterval:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public requireNetworkAnonymizationKey:Z

.field public resetHttpCacheBackend:Z

.field public restoreOldSessionCookies:Z

.field public sctAuditingMode:I

.field public sharedDictionaryCacheMaxSize:J

.field public sharedDictionaryEnabled:Z

.field public skipReportingSendPermissionCheck:Z

.field public splitAuthCacheByNetworkAnonymizationKey:Z

.field public sslConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/SslConfigClient;",
            ">;"
        }
    .end annotation
.end field

.field public staleDnsEnabled:Z

.field public userAgent:Ljava/lang/String;

.field public validateReferrerPolicyOnInitialRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x110

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/NetworkContextParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/NetworkContextParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    const/16 v0, 0x110

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enableBrotli:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enableZstd:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enableReferrers:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enableCrossSiteReferrerStripping:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->validateReferrerPolicyOnInitialRequest:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enableEncryptedCookies:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->restoreOldSessionCookies:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->persistSessionCookies:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->httpCacheEnabled:Z

    iput v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->httpCacheMaxSize:I

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->checkClearTextPermitted:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->disableIdleSocketsCloseOnMemoryPressure:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enableIpProtection:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionIncognito:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->pacQuickCheckEnabled:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enableCertificateReporting:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enforceChromeCtPolicy:Z

    iput v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->sctAuditingMode:I

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->enableDomainReliability:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->discardDomainReliablityUploads:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->skipReportingSendPermissionCheck:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->allowAnyCorsExemptHeaderForBrowser:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->resetHttpCacheBackend:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->splitAuthCacheByNetworkAnonymizationKey:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->requireNetworkAnonymizationKey:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->sharedDictionaryEnabled:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->sharedDictionaryCacheMaxSize:J

    iput-boolean p1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->acamPreflightSpecConformant:Z

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->deviceBoundSessionsEnabled:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/chromium/network/mojom/NetworkContextParams;->boundNetwork:J

    iput-boolean v0, p0, Lorg/chromium/network/mojom/NetworkContextParams;->staleDnsEnabled:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetworkContextParams;
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/network/mojom/NetworkContextParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/network/mojom/NetworkContextParams;

    invoke-direct {v2, v1}, Lorg/chromium/network/mojom/NetworkContextParams;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/NetworkContextParams;->userAgent:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->acceptLanguage:Ljava/lang/String;

    const/16 v5, 0x18

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enableBrotli:Z

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enableZstd:Z

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v8

    iput-boolean v8, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enableReferrers:Z

    const/4 v8, 0x3

    invoke-virtual {p0, v5, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enableCrossSiteReferrerStripping:Z

    const/4 v9, 0x4

    invoke-virtual {p0, v5, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v2, Lorg/chromium/network/mojom/NetworkContextParams;->validateReferrerPolicyOnInitialRequest:Z

    const/4 v10, 0x5

    invoke-virtual {p0, v5, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enableEncryptedCookies:Z

    const/4 v11, 0x6

    invoke-virtual {p0, v5, v11}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v12

    iput-boolean v12, v2, Lorg/chromium/network/mojom/NetworkContextParams;->restoreOldSessionCookies:Z

    const/4 v12, 0x7

    invoke-virtual {p0, v5, v12}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->persistSessionCookies:Z

    const/16 v5, 0x19

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->httpCacheEnabled:Z

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->checkClearTextPermitted:Z

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->disableIdleSocketsCloseOnMemoryPressure:Z

    invoke-virtual {p0, v5, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enableIpProtection:Z

    invoke-virtual {p0, v5, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionIncognito:Z

    invoke-virtual {p0, v5, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->pacQuickCheckEnabled:Z

    invoke-virtual {p0, v5, v11}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enableCertificateReporting:Z

    invoke-virtual {p0, v5, v12}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enforceChromeCtPolicy:Z

    const/16 v5, 0x1a

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enableDomainReliability:Z

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->discardDomainReliablityUploads:Z

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->skipReportingSendPermissionCheck:Z

    invoke-virtual {p0, v5, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v13

    iput-boolean v13, v2, Lorg/chromium/network/mojom/NetworkContextParams;->allowAnyCorsExemptHeaderForBrowser:Z

    invoke-virtual {p0, v5, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->resetHttpCacheBackend:Z

    invoke-virtual {p0, v5, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->splitAuthCacheByNetworkAnonymizationKey:Z

    invoke-virtual {p0, v5, v11}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->requireNetworkAnonymizationKey:Z

    invoke-virtual {p0, v5, v12}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->blockTrustTokens:Z

    const/16 v5, 0x1b

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->sharedDictionaryEnabled:Z

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->acamPreflightSpecConformant:Z

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/network/mojom/NetworkContextParams;->deviceBoundSessionsEnabled:Z

    invoke-virtual {p0, v5, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->staleDnsEnabled:Z

    sget-object v5, Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v7, 0x1c

    invoke-virtual {p0, v7, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactory;

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->proxyResolverFactory:Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactory;

    const/16 v5, 0x24

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    iput v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->httpCacheMaxSize:I

    sget-object v5, Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v7, 0x28

    invoke-virtual {p0, v7, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->httpCacheFileOperationsFactory:Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;

    const/16 v5, 0x30

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/SslConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SslConfig;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->initialSslConfig:Lorg/chromium/network/mojom/SslConfig;

    const/16 v5, 0x38

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->sslConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v5, 0x3c

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->proxyConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v5, 0x40

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/ProxyConfigWithAnnotation;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ProxyConfigWithAnnotation;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->initialProxyConfig:Lorg/chromium/network/mojom/ProxyConfigWithAnnotation;

    const/16 v5, 0x48

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/CustomProxyConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CustomProxyConfig;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->initialCustomProxyConfig:Lorg/chromium/network/mojom/CustomProxyConfig;

    const/16 v5, 0x50

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->customProxyConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    sget-object v5, Lorg/chromium/network/mojom/CustomProxyConnectionObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v7, 0x54

    invoke-virtual {p0, v7, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/network/mojom/CustomProxyConnectionObserver;

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->customProxyConnectionObserverRemote:Lorg/chromium/network/mojom/CustomProxyConnectionObserver;

    sget-object v5, Lorg/chromium/network/mojom/ProxyConfigPollerClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v7, 0x5c

    invoke-virtual {p0, v7, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/network/mojom/ProxyConfigPollerClient;

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->proxyConfigPollerClient:Lorg/chromium/network/mojom/ProxyConfigPollerClient;

    sget-object v5, Lorg/chromium/network/mojom/ProxyErrorClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v7, 0x64

    invoke-virtual {p0, v7, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/network/mojom/ProxyErrorClient;

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->proxyErrorClient:Lorg/chromium/network/mojom/ProxyErrorClient;

    sget-object v5, Lorg/chromium/ip_protection/mojom/CoreHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v7, 0x6c

    invoke-virtual {p0, v7, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/ip_protection/mojom/CoreHost;

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionCoreHost:Lorg/chromium/ip_protection/mojom/CoreHost;

    const/16 v5, 0x74

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionControl:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v5, 0x78

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionDataDirectory:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v5, 0x80

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    iput v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->sctAuditingMode:I

    invoke-static {v5}, Lorg/chromium/network/mojom/SctAuditingMode;->validate(I)V

    iget v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->sctAuditingMode:I

    invoke-static {v5}, Lorg/chromium/network/mojom/SctAuditingMode;->toKnownValue(I)I

    move-result v5

    iput v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->sctAuditingMode:I

    const/16 v5, 0x84

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->cookieManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v5, 0x88

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/CtPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CtPolicy;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->ctPolicy:Lorg/chromium/network/mojom/CtPolicy;

    const/16 v5, 0x90

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/CertVerifierServiceRemoteParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CertVerifierServiceRemoteParams;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->certVerifierParams:Lorg/chromium/network/mojom/CertVerifierServiceRemoteParams;

    const/16 v5, 0x98

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/CookieManagerParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookieManagerParams;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->cookieManagerParams:Lorg/chromium/network/mojom/CookieManagerParams;

    const/16 v5, 0xa0

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->domainReliabilityUploadReporter:Ljava/lang/String;

    const/16 v5, 0xa8

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->reportingDeliveryInterval:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v5, 0xb0

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v8

    iget v9, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v9, [Lorg/chromium/network/mojom/CorsOriginAccessPatterns;

    iput-object v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->corsOriginAccessList:[Lorg/chromium/network/mojom/CorsOriginAccessPatterns;

    move v9, v3

    :goto_0
    iget v10, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_1

    const/16 v10, 0x8

    invoke-static {v9, v10, v1, v5, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    iget-object v11, v2, Lorg/chromium/network/mojom/NetworkContextParams;->corsOriginAccessList:[Lorg/chromium/network/mojom/CorsOriginAccessPatterns;

    invoke-static {v10}, Lorg/chromium/network/mojom/CorsOriginAccessPatterns;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CorsOriginAccessPatterns;

    move-result-object v10

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    const/16 v5, 0xb8

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v8

    iget v9, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->corsExemptHeaderList:[Ljava/lang/String;

    move v9, v3

    :goto_1
    iget v10, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_2

    iget-object v10, v2, Lorg/chromium/network/mojom/NetworkContextParams;->corsExemptHeaderList:[Ljava/lang/String;

    const/16 v11, 0x8

    invoke-static {v9, v11, v1, v5, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0xc0

    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v8

    iget v9, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v2, Lorg/chromium/network/mojom/NetworkContextParams;->hstsPolicyBypassList:[Ljava/lang/String;

    move v9, v3

    :goto_2
    iget v10, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_3

    iget-object v10, v2, Lorg/chromium/network/mojom/NetworkContextParams;->hstsPolicyBypassList:[Ljava/lang/String;

    const/16 v11, 0x8

    invoke-static {v9, v11, v1, v5, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/16 v5, 0xc8

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/HttpAuthStaticNetworkContextParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HttpAuthStaticNetworkContextParams;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->httpAuthStaticNetworkContextParams:Lorg/chromium/network/mojom/HttpAuthStaticNetworkContextParams;

    const/16 v5, 0xd0

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/NetworkContextFilePaths;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetworkContextFilePaths;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->filePaths:Lorg/chromium/network/mojom/NetworkContextFilePaths;

    const/16 v5, 0xd8

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lorg/chromium/network/mojom/NetworkContextParams;->sharedDictionaryCacheMaxSize:J

    const/16 v5, 0xe0

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/network/mojom/FirstPartySetsAccessDelegateParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/FirstPartySetsAccessDelegateParams;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->firstPartySetsAccessDelegateParams:Lorg/chromium/network/mojom/FirstPartySetsAccessDelegateParams;

    const/16 v5, 0xe8

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->firstPartySetsAccessDelegateReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v5, 0xf0

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->cookieDeprecationLabel:Ljava/lang/String;

    sget-object v5, Lorg/chromium/network/mojom/CookieEncryptionProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v8, 0xf8

    invoke-virtual {p0, v8, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/network/mojom/CookieEncryptionProvider;

    iput-object v5, v2, Lorg/chromium/network/mojom/NetworkContextParams;->cookieEncryptionProvider:Lorg/chromium/network/mojom/CookieEncryptionProvider;

    const/16 v5, 0x100

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lorg/chromium/network/mojom/NetworkContextParams;->boundNetwork:J

    const/16 v5, 0x108

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    if-nez v5, :cond_4

    iput-object v0, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enterpriseReportingEndpoints:Ljava/util/Map;

    goto :goto_6

    :cond_4
    invoke-virtual {v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v5, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Ljava/lang/String;

    move v9, v3

    :goto_3
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_5

    const/16 v10, 0x8

    invoke-static {v9, v10, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/url/mojom/Url;

    move v6, v3

    :goto_4
    iget v9, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v9, :cond_6

    const/16 v9, 0x8

    invoke-static {v6, v9, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v9

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enterpriseReportingEndpoints:Ljava/util/Map;

    :goto_5
    if-ge v3, v7, :cond_7

    iget-object v0, v2, Lorg/chromium/network/mojom/NetworkContextParams;->enterpriseReportingEndpoints:Ljava/util/Map;

    aget-object v1, v8, v3

    aget-object v4, v5, v3

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/network/mojom/NetworkContextParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->userAgent:Ljava/lang/String;

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v10, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->acceptLanguage:Ljava/lang/String;

    const/16 v12, 0x10

    invoke-virtual {v1, v2, v12, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enableBrotli:Z

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enableZstd:Z

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enableReferrers:Z

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enableCrossSiteReferrerStripping:Z

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->validateReferrerPolicyOnInitialRequest:Z

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enableEncryptedCookies:Z

    const/4 v7, 0x5

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->restoreOldSessionCookies:Z

    const/4 v8, 0x6

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->persistSessionCookies:Z

    const/4 v9, 0x7

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->httpCacheEnabled:Z

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->checkClearTextPermitted:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->disableIdleSocketsCloseOnMemoryPressure:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enableIpProtection:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionIncognito:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->pacQuickCheckEnabled:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enableCertificateReporting:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enforceChromeCtPolicy:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enableDomainReliability:Z

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->discardDomainReliablityUploads:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->skipReportingSendPermissionCheck:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->allowAnyCorsExemptHeaderForBrowser:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->resetHttpCacheBackend:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->splitAuthCacheByNetworkAnonymizationKey:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->requireNetworkAnonymizationKey:Z

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->blockTrustTokens:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->sharedDictionaryEnabled:Z

    const/16 v3, 0x1b

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->acamPreflightSpecConformant:Z

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->deviceBoundSessionsEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->staleDnsEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->proxyResolverFactory:Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactory;

    const/16 v3, 0x1c

    sget-object v4, Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v1, v2, v3, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->httpCacheMaxSize:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->httpCacheFileOperationsFactory:Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;

    const/16 v3, 0x28

    sget-object v4, Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v1, v2, v3, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->initialSslConfig:Lorg/chromium/network/mojom/SslConfig;

    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->sslConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->proxyConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->initialProxyConfig:Lorg/chromium/network/mojom/ProxyConfigWithAnnotation;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->initialCustomProxyConfig:Lorg/chromium/network/mojom/CustomProxyConfig;

    const/16 v3, 0x48

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->customProxyConfigClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->customProxyConnectionObserverRemote:Lorg/chromium/network/mojom/CustomProxyConnectionObserver;

    const/16 v3, 0x54

    sget-object v4, Lorg/chromium/network/mojom/CustomProxyConnectionObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v1, v2, v3, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->proxyConfigPollerClient:Lorg/chromium/network/mojom/ProxyConfigPollerClient;

    const/16 v3, 0x5c

    sget-object v4, Lorg/chromium/network/mojom/ProxyConfigPollerClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v1, v2, v3, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->proxyErrorClient:Lorg/chromium/network/mojom/ProxyErrorClient;

    const/16 v3, 0x64

    sget-object v4, Lorg/chromium/network/mojom/ProxyErrorClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v1, v2, v3, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionCoreHost:Lorg/chromium/ip_protection/mojom/CoreHost;

    const/16 v3, 0x6c

    sget-object v4, Lorg/chromium/ip_protection/mojom/CoreHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v1, v2, v3, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionControl:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v3, 0x74

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->ipProtectionDataDirectory:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->sctAuditingMode:I

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->cookieManager:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->ctPolicy:Lorg/chromium/network/mojom/CtPolicy;

    const/16 v3, 0x88

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->certVerifierParams:Lorg/chromium/network/mojom/CertVerifierServiceRemoteParams;

    const/16 v3, 0x90

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->cookieManagerParams:Lorg/chromium/network/mojom/CookieManagerParams;

    const/16 v3, 0x98

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->domainReliabilityUploadReporter:Ljava/lang/String;

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->reportingDeliveryInterval:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v3, 0xa8

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->corsOriginAccessList:[Lorg/chromium/network/mojom/CorsOriginAccessPatterns;

    const/16 v3, 0xb0

    const/4 v14, -0x1

    if-nez v2, :cond_0

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_0
    iget-object v4, v0, Lorg/chromium/network/mojom/NetworkContextParams;->corsOriginAccessList:[Lorg/chromium/network/mojom/CorsOriginAccessPatterns;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->corsExemptHeaderList:[Ljava/lang/String;

    const/16 v3, 0xb8

    if-nez v2, :cond_2

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v11

    :goto_2
    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContextParams;->corsExemptHeaderList:[Ljava/lang/String;

    array-length v4, v3

    if-ge v8, v4, :cond_3

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v2

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->hstsPolicyBypassList:[Ljava/lang/String;

    const/16 v3, 0xc0

    if-nez v2, :cond_4

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v11

    :goto_4
    iget-object v3, v0, Lorg/chromium/network/mojom/NetworkContextParams;->hstsPolicyBypassList:[Ljava/lang/String;

    array-length v4, v3

    if-ge v8, v4, :cond_5

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v2

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->httpAuthStaticNetworkContextParams:Lorg/chromium/network/mojom/HttpAuthStaticNetworkContextParams;

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->filePaths:Lorg/chromium/network/mojom/NetworkContextFilePaths;

    const/16 v3, 0xd0

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->sharedDictionaryCacheMaxSize:J

    const/16 v4, 0xd8

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->firstPartySetsAccessDelegateParams:Lorg/chromium/network/mojom/FirstPartySetsAccessDelegateParams;

    const/16 v3, 0xe0

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->firstPartySetsAccessDelegateReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v3, 0xe8

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->cookieDeprecationLabel:Ljava/lang/String;

    const/16 v3, 0xf0

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->cookieEncryptionProvider:Lorg/chromium/network/mojom/CookieEncryptionProvider;

    const/16 v3, 0xf8

    sget-object v4, Lorg/chromium/network/mojom/CookieEncryptionProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v1, v2, v3, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-wide v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->boundNetwork:J

    const/16 v4, 0x100

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enterpriseReportingEndpoints:Ljava/util/Map;

    const/16 v3, 0x108

    if-nez v2, :cond_6

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enterpriseReportingEndpoints:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v15, v2, [Ljava/lang/String;

    new-array v9, v2, [Lorg/chromium/url/mojom/Url;

    iget-object v0, v0, Lorg/chromium/network/mojom/NetworkContextParams;->enterpriseReportingEndpoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v11

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v15, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/url/mojom/Url;

    aput-object v4, v9, v3

    add-int/2addr v3, v13

    goto :goto_6

    :cond_7
    invoke-virtual {v1, v2, v10, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v8, v11

    :goto_7
    if-ge v8, v2, :cond_8

    aget-object v6, v15, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v13, 0x1

    move v4, v10

    move-object v5, v0

    move v7, v11

    move-object/from16 v16, v9

    move v9, v13

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    move-object/from16 v9, v16

    goto :goto_7

    :cond_8
    move-object/from16 v16, v9

    invoke-virtual {v1, v2, v12, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v8, v11

    :goto_8
    if-ge v8, v2, :cond_9

    aget-object v6, v16, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v0

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v8

    goto :goto_8

    :cond_9
    :goto_9
    return-void
.end method
