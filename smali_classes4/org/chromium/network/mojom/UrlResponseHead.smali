.class public final Lorg/chromium/network/mojom/UrlResponseHead;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public alpnNegotiatedProtocol:Ljava/lang/String;

.field public alternateProtocolUsage:I

.field public asyncRevalidationRequested:Z

.field public authChallengeInfo:Lorg/chromium/network/mojom/AuthChallengeInfo;

.field public cacheStorageCacheName:Ljava/lang/String;

.field public certStatus:I

.field public charset:Ljava/lang/String;

.field public clientAddressSpace:I

.field public clientSideContentDecodingTypes:[I

.field public connectionInfo:I

.field public contentLength:J

.field public corsExposedHeaderNames:[Ljava/lang/String;

.field public didMimeSniff:Z

.field public didServiceWorkerNavigationPreload:Z

.field public didUseSharedDictionary:Z

.field public dnsAliases:[Ljava/lang/String;

.field public emittedExtraInfo:Z

.field public encodedBodyLength:Lorg/chromium/network/mojom/EncodedBodyLength;

.field public encodedDataLength:J

.field public hasAuthorizationCoveredByWildcardOnPreflight:Z

.field public hasRangeRequested:Z

.field public headers:Lorg/chromium/network/mojom/HttpResponseHeaders;

.field public initialServiceWorkerStatus:Ljava/lang/Integer;

.field public interceptedByPlugin:Z

.field public isPrefetchWithCrossSiteContamination:Z

.field public isSignedExchangeInnerResponse:Z

.field public isValidated:Z

.field public isWebBundleInnerResponse:Z

.field public loadTiming:Lorg/chromium/network/mojom/LoadTimingInfo;

.field public loadTimingInternalInfo:Lorg/chromium/network/mojom/LoadTimingInternalInfo;

.field public loadWithStorageAccess:Z

.field public mimeType:Ljava/lang/String;

.field public navigationDeliveryType:I

.field public networkAccessed:Z

.field public originalResponseTime:Lorg/chromium/mojo_base/mojom/Time;

.field public padding:J

.field public parsedHeaders:Lorg/chromium/network/mojom/ParsedHeaders;

.field public privateNetworkAccessPreflightResult:I

.field public proxyChain:Lorg/chromium/network/mojom/ProxyChain;

.field public recursivePrefetchToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public remoteEndpoint:Lorg/chromium/network/mojom/IpEndPoint;

.field public requestCookies:[Lorg/chromium/network/mojom/ParsedRequestCookie;

.field public requestIncludeCredentials:Z

.field public requestStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public requestTime:Lorg/chromium/mojo_base/mojom/Time;

.field public responseAddressSpace:I

.field public responseStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public responseTime:Lorg/chromium/mojo_base/mojom/Time;

.field public responseType:I

.field public serviceWorkerResponseSource:I

.field public serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

.field public setCookies:[Ljava/lang/String;

.field public shouldUseSourceHashForJsCodeCache:Z

.field public sslInfo:Lorg/chromium/network/mojom/SslInfo;

.field public timingAllowPassed:Z

.field public urlListViaServiceWorker:[Lorg/chromium/url/mojom/Url;

.field public wasAlpnNegotiated:Z

.field public wasAlternateProtocolAvailable:Z

.field public wasCookieInRequest:Z

.field public wasFetchedViaCache:Z

.field public wasFetchedViaServiceWorker:Z

.field public wasFetchedViaSpdy:Z

.field public wasInPrefetchCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x120

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/UrlResponseHead;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/UrlResponseHead;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x120

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->contentLength:J

    iput-wide v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->encodedDataLength:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->networkAccessed:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->emittedExtraInfo:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaSpdy:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasAlpnNegotiated:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasAlternateProtocolAvailable:Z

    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->clientAddressSpace:I

    iput v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->responseAddressSpace:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->isValidated:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaCache:Z

    iput p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->navigationDeliveryType:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaServiceWorker:Z

    iput p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->serviceWorkerResponseSource:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->responseType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->padding:J

    iput p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->certStatus:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->didServiceWorkerNavigationPreload:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->asyncRevalidationRequested:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->didMimeSniff:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->isSignedExchangeInnerResponse:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->isWebBundleInnerResponse:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasInPrefetchCache:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->isPrefetchWithCrossSiteContamination:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasCookieInRequest:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->interceptedByPlugin:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->hasRangeRequested:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->timingAllowPassed:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->hasAuthorizationCoveredByWildcardOnPreflight:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->requestIncludeCredentials:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->shouldUseSourceHashForJsCodeCache:Z

    iput p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->privateNetworkAccessPreflightResult:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->didUseSharedDictionary:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->loadWithStorageAccess:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlResponseHead;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/network/mojom/UrlResponseHead;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/network/mojom/UrlResponseHead;

    invoke-direct {v2, v1}, Lorg/chromium/network/mojom/UrlResponseHead;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->requestTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->responseTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->originalResponseTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v4, 0x20

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/network/mojom/HttpResponseHeaders;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HttpResponseHeaders;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->headers:Lorg/chromium/network/mojom/HttpResponseHeaders;

    const/16 v4, 0x28

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->mimeType:Ljava/lang/String;

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->charset:Ljava/lang/String;

    const/16 v4, 0x38

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->contentLength:J

    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->encodedDataLength:J

    const/16 v4, 0x48

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/network/mojom/EncodedBodyLength;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/EncodedBodyLength;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->encodedBodyLength:Lorg/chromium/network/mojom/EncodedBodyLength;

    const/16 v4, 0x50

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/UrlResponseHead;->networkAccessed:Z

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/UrlResponseHead;->emittedExtraInfo:Z

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaSpdy:Z

    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v8

    iput-boolean v8, v2, Lorg/chromium/network/mojom/UrlResponseHead;->wasAlpnNegotiated:Z

    const/4 v8, 0x4

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v2, Lorg/chromium/network/mojom/UrlResponseHead;->wasAlternateProtocolAvailable:Z

    const/4 v9, 0x5

    invoke-virtual {p0, v4, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v2, Lorg/chromium/network/mojom/UrlResponseHead;->isValidated:Z

    const/4 v10, 0x6

    invoke-virtual {p0, v4, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v2, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaCache:Z

    const/4 v11, 0x7

    invoke-virtual {p0, v4, v11}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaServiceWorker:Z

    const/16 v4, 0x51

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/16 v12, 0x94

    invoke-virtual {p0, v12}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v12

    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->initialServiceWorkerStatus:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->initialServiceWorkerStatus:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->didServiceWorkerNavigationPreload:Z

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->asyncRevalidationRequested:Z

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->didMimeSniff:Z

    invoke-virtual {p0, v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->isSignedExchangeInnerResponse:Z

    invoke-virtual {p0, v4, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->isWebBundleInnerResponse:Z

    invoke-virtual {p0, v4, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->wasInPrefetchCache:Z

    invoke-virtual {p0, v4, v11}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->isPrefetchWithCrossSiteContamination:Z

    const/16 v0, 0x52

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->wasCookieInRequest:Z

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->interceptedByPlugin:Z

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->hasRangeRequested:Z

    invoke-virtual {p0, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->timingAllowPassed:Z

    invoke-virtual {p0, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->hasAuthorizationCoveredByWildcardOnPreflight:Z

    invoke-virtual {p0, v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->requestIncludeCredentials:Z

    invoke-virtual {p0, v0, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/network/mojom/UrlResponseHead;->shouldUseSourceHashForJsCodeCache:Z

    invoke-virtual {p0, v0, v11}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->didUseSharedDictionary:Z

    const/16 v0, 0x53

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->loadWithStorageAccess:Z

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->connectionInfo:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ConnectionInfo;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->connectionInfo:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ConnectionInfo;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->connectionInfo:I

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/LoadTimingInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/LoadTimingInfo;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->loadTiming:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/LoadTimingInternalInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/LoadTimingInternalInfo;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->loadTimingInternalInfo:Lorg/chromium/network/mojom/LoadTimingInternalInfo;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->alternateProtocolUsage:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AlternateProtocolUsage;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->alternateProtocolUsage:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AlternateProtocolUsage;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->alternateProtocolUsage:I

    const/16 v0, 0x74

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->clientAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->clientAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->clientAddressSpace:I

    const/16 v0, 0x78

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/IpEndPoint;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/IpEndPoint;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->remoteEndpoint:Lorg/chromium/network/mojom/IpEndPoint;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->responseAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->responseAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->responseAddressSpace:I

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->navigationDeliveryType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/NavigationDeliveryType;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->navigationDeliveryType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/NavigationDeliveryType;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->navigationDeliveryType:I

    const/16 v0, 0x88

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ProxyChain;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ProxyChain;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->proxyChain:Lorg/chromium/network/mojom/ProxyChain;

    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->serviceWorkerResponseSource:I

    invoke-static {v0}, Lorg/chromium/network/mojom/FetchResponseSource;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->serviceWorkerResponseSource:I

    invoke-static {v0}, Lorg/chromium/network/mojom/FetchResponseSource;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->serviceWorkerResponseSource:I

    const/16 v0, 0x98

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/url/mojom/Url;

    iput-object v7, v2, Lorg/chromium/network/mojom/UrlResponseHead;->urlListViaServiceWorker:[Lorg/chromium/url/mojom/Url;

    move v7, v3

    :goto_1
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/network/mojom/UrlResponseHead;->urlListViaServiceWorker:[Lorg/chromium/url/mojom/Url;

    invoke-static {v8}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    const/16 v0, 0xa8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->responseType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/FetchResponseType;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->responseType:I

    invoke-static {v0}, Lorg/chromium/network/mojom/FetchResponseType;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->responseType:I

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->certStatus:I

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/chromium/network/mojom/UrlResponseHead;->padding:J

    const/16 v0, 0xb8

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->cacheStorageCacheName:Ljava/lang/String;

    const/16 v0, 0xc0

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/SslInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SslInfo;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->sslInfo:Lorg/chromium/network/mojom/SslInfo;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/network/mojom/ParsedRequestCookie;

    iput-object v7, v2, Lorg/chromium/network/mojom/UrlResponseHead;->requestCookies:[Lorg/chromium/network/mojom/ParsedRequestCookie;

    move v7, v3

    :goto_2
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_3

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/network/mojom/UrlResponseHead;->requestCookies:[Lorg/chromium/network/mojom/ParsedRequestCookie;

    invoke-static {v8}, Lorg/chromium/network/mojom/ParsedRequestCookie;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ParsedRequestCookie;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0xd0

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v2, Lorg/chromium/network/mojom/UrlResponseHead;->corsExposedHeaderNames:[Ljava/lang/String;

    move v7, v3

    :goto_3
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_4

    iget-object v8, v2, Lorg/chromium/network/mojom/UrlResponseHead;->corsExposedHeaderNames:[Ljava/lang/String;

    const/16 v9, 0x8

    invoke-static {v7, v9, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const/16 v0, 0xd8

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/AuthChallengeInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/AuthChallengeInfo;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->authChallengeInfo:Lorg/chromium/network/mojom/AuthChallengeInfo;

    const/16 v0, 0xe0

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->requestStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0xe8

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->responseStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v0, 0xf0

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ParsedHeaders;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ParsedHeaders;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->parsedHeaders:Lorg/chromium/network/mojom/ParsedHeaders;

    const/16 v0, 0xf8

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->recursivePrefetchToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v2, Lorg/chromium/network/mojom/UrlResponseHead;->dnsAliases:[Ljava/lang/String;

    move v6, v3

    :goto_4
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_5

    iget-object v7, v2, Lorg/chromium/network/mojom/UrlResponseHead;->dnsAliases:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/16 v0, 0x108

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->privateNetworkAccessPreflightResult:I

    invoke-static {v0}, Lorg/chromium/network/mojom/PrivateNetworkAccessPreflightResult;->validate(I)V

    iget v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->privateNetworkAccessPreflightResult:I

    invoke-static {v0}, Lorg/chromium/network/mojom/PrivateNetworkAccessPreflightResult;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->privateNetworkAccessPreflightResult:I

    const/16 v0, 0x110

    invoke-virtual {p0, v0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/UrlResponseHead;->clientSideContentDecodingTypes:[I

    move v0, v3

    :goto_5
    iget-object v5, v2, Lorg/chromium/network/mojom/UrlResponseHead;->clientSideContentDecodingTypes:[I

    array-length v6, v5

    if-ge v0, v6, :cond_6

    aget v5, v5, v0

    invoke-static {v5}, Lorg/chromium/network/mojom/SourceType;->validate(I)V

    iget-object v5, v2, Lorg/chromium/network/mojom/UrlResponseHead;->clientSideContentDecodingTypes:[I

    aget v6, v5, v0

    invoke-static {v6}, Lorg/chromium/network/mojom/SourceType;->toKnownValue(I)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/16 v0, 0x118

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v2, Lorg/chromium/network/mojom/UrlResponseHead;->setCookies:[Ljava/lang/String;

    move v5, v3

    :goto_6
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_7

    iget-object v6, v2, Lorg/chromium/network/mojom/UrlResponseHead;->setCookies:[Ljava/lang/String;

    const/16 v7, 0x8

    invoke-static {v5, v7, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/network/mojom/UrlResponseHead;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->requestTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->responseTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->originalResponseTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->headers:Lorg/chromium/network/mojom/HttpResponseHeaders;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->mimeType:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->charset:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->contentLength:J

    const/16 v2, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->encodedDataLength:J

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->encodedBodyLength:Lorg/chromium/network/mojom/EncodedBodyLength;

    const/16 v1, 0x48

    const/4 v10, 0x1

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->networkAccessed:Z

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->emittedExtraInfo:Z

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaSpdy:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasAlpnNegotiated:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasAlternateProtocolAvailable:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->isValidated:Z

    const/4 v5, 0x5

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaCache:Z

    const/4 v6, 0x6

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasFetchedViaServiceWorker:Z

    const/4 v7, 0x7

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->initialServiceWorkerStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    const/16 v11, 0x51

    invoke-virtual {p1, v1, v11, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v1, 0x94

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->didServiceWorkerNavigationPreload:Z

    invoke-virtual {p1, v0, v11, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->asyncRevalidationRequested:Z

    invoke-virtual {p1, v0, v11, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->didMimeSniff:Z

    invoke-virtual {p1, v0, v11, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->isSignedExchangeInnerResponse:Z

    invoke-virtual {p1, v0, v11, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->isWebBundleInnerResponse:Z

    invoke-virtual {p1, v0, v11, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasInPrefetchCache:Z

    invoke-virtual {p1, v0, v11, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->isPrefetchWithCrossSiteContamination:Z

    invoke-virtual {p1, v0, v11, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->wasCookieInRequest:Z

    const/16 v1, 0x52

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->interceptedByPlugin:Z

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->hasRangeRequested:Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->timingAllowPassed:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->hasAuthorizationCoveredByWildcardOnPreflight:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->requestIncludeCredentials:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->shouldUseSourceHashForJsCodeCache:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->didUseSharedDictionary:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->loadWithStorageAccess:Z

    const/16 v1, 0x53

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->connectionInfo:I

    const/16 v1, 0x54

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->loadTiming:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->loadTimingInternalInfo:Lorg/chromium/network/mojom/LoadTimingInternalInfo;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->alternateProtocolUsage:I

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->clientAddressSpace:I

    const/16 v1, 0x74

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->remoteEndpoint:Lorg/chromium/network/mojom/IpEndPoint;

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->responseAddressSpace:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->navigationDeliveryType:I

    const/16 v1, 0x84

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->proxyChain:Lorg/chromium/network/mojom/ProxyChain;

    const/16 v1, 0x88

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->serviceWorkerResponseSource:I

    const/16 v1, 0x90

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->urlListViaServiceWorker:[Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x98

    const/4 v11, -0x1

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_2
    iget-object v1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->urlListViaServiceWorker:[Lorg/chromium/url/mojom/Url;

    array-length v2, v1

    if-ge v6, v2, :cond_3

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v6

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    const/16 v1, 0xa0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->responseType:I

    const/16 v1, 0xa8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->certStatus:I

    const/16 v1, 0xac

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-wide v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->padding:J

    const/16 v2, 0xb0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->cacheStorageCacheName:Ljava/lang/String;

    const/16 v1, 0xb8

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->sslInfo:Lorg/chromium/network/mojom/SslInfo;

    const/16 v1, 0xc0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->requestCookies:[Lorg/chromium/network/mojom/ParsedRequestCookie;

    const/16 v1, 0xc8

    if-nez v0, :cond_4

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_4
    iget-object v2, p0, Lorg/chromium/network/mojom/UrlResponseHead;->requestCookies:[Lorg/chromium/network/mojom/ParsedRequestCookie;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v8

    invoke-virtual {v0, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->corsExposedHeaderNames:[Ljava/lang/String;

    const/16 v1, 0xd0

    if-nez v0, :cond_6

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_6
    iget-object v1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->corsExposedHeaderNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_7

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->authChallengeInfo:Lorg/chromium/network/mojom/AuthChallengeInfo;

    const/16 v1, 0xd8

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->requestStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0xe0

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->responseStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0xe8

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->parsedHeaders:Lorg/chromium/network/mojom/ParsedHeaders;

    const/16 v1, 0xf0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->recursivePrefetchToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0xf8

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->dnsAliases:[Ljava/lang/String;

    const/16 v1, 0x100

    if-nez v0, :cond_8

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_8
    iget-object v1, p0, Lorg/chromium/network/mojom/UrlResponseHead;->dnsAliases:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_9

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_8

    :cond_9
    :goto_9
    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->privateNetworkAccessPreflightResult:I

    const/16 v1, 0x108

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->clientSideContentDecodingTypes:[I

    const/16 v1, 0x110

    invoke-virtual {p1, v0, v1, v9, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->setCookies:[Ljava/lang/String;

    const/16 v1, 0x118

    if-nez v0, :cond_a

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_a
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v6, v9

    :goto_a
    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHead;->setCookies:[Ljava/lang/String;

    array-length v1, v0

    if-ge v6, v1, :cond_b

    aget-object v4, v0, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, p1

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_a

    :cond_b
    :goto_b
    return-void
.end method
