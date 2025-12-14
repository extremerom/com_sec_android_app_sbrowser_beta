.class public final Lorg/chromium/network/mojom/UrlRequest;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public adAuctionHeaders:Z

.field public allowsDeviceBoundSessions:Z

.field public attributionReportingEligibility:I

.field public attributionReportingSrcToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public attributionReportingSupport:I

.field public browsingTopics:Z

.field public clientSideContentDecodingEnabled:Z

.field public corsExemptHeaders:Lorg/chromium/network/mojom/HttpRequestHeaders;

.field public corsPreflightPolicy:I

.field public credentialsMode:I

.field public destination:I

.field public devtoolsAcceptedStreamTypes:[I

.field public devtoolsRequestId:Ljava/lang/String;

.field public devtoolsStackId:Ljava/lang/String;

.field public doNotPromptForLogin:Z

.field public enableLoadTiming:Z

.field public enableUploadProgress:Z

.field public expectedPublicKeys:[Ljava/lang/String;

.field public fetchIntegrity:Ljava/lang/String;

.field public fetchWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public hasUserGesture:Z

.field public headers:Lorg/chromium/network/mojom/HttpRequestHeaders;

.field public isAdTagged:Z

.field public isFavicon:Z

.field public isFetchLaterApi:Z

.field public isFetchLikeApi:Z

.field public isOutermostMainFrame:Z

.field public isRevalidating:Z

.field public isolatedWorldOrigin:Lorg/chromium/url/internal/mojom/Origin;

.field public keepalive:Z

.field public keepaliveToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public loadFlags:I

.field public method:Ljava/lang/String;

.field public mode:I

.field public navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

.field public netLogCreateInfo:Lorg/chromium/network/mojom/NetLogSource;

.field public netLogReferenceInfo:Lorg/chromium/network/mojom/NetLogSource;

.field public originalDestination:I

.field public originatedFromServiceWorker:Z

.field public permissionsPolicy:Lorg/chromium/network/mojom/PermissionsPolicy;

.field public previewsState:I

.field public priority:I

.field public priorityIncremental:Z

.field public recursivePrefetchToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public redirectMode:I

.field public referrer:Lorg/chromium/url/mojom/Url;

.field public referrerPolicy:I

.field public requestBody:Lorg/chromium/network/mojom/UrlRequestBody;

.field public requestInitiator:Lorg/chromium/url/internal/mojom/Origin;

.field public requiredIpAddressSpace:I

.field public resourceType:I

.field public sharedDictionaryWriterEnabled:Z

.field public sharedStorageWritableEligible:Z

.field public siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

.field public skipServiceWorker:Z

.field public socketTag:Lorg/chromium/network/mojom/SocketTag;

.field public storageAccessApiStatus:I

.field public targetIpAddressSpace:I

.field public throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public transitionType:I

.field public trustTokenParams:Lorg/chromium/network/mojom/TrustTokenParams;

.field public trustedParams:Lorg/chromium/network/mojom/TrustedUrlRequestParams;

.field public updateFirstPartyUrlOnRedirect:Z

.field public upgradeIfInsecure:Z

.field public url:Lorg/chromium/url/mojom/Url;

.field public webBundleTokenParams:Lorg/chromium/network/mojom/WebBundleTokenParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x128

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/UrlRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/UrlRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x128

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingEligibility:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlRequest;->isAdTagged:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlRequest;->sharedDictionaryWriterEnabled:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlRequest;->clientSideContentDecodingEnabled:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlRequest;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/UrlRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/UrlRequest;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/UrlRequest;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->method:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->url:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/network/mojom/SiteForCookies;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SiteForCookies;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlRequest;->updateFirstPartyUrlOnRedirect:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/network/mojom/UrlRequest;->priorityIncremental:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/network/mojom/UrlRequest;->originatedFromServiceWorker:Z

    const/4 v6, 0x3

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/network/mojom/UrlRequest;->skipServiceWorker:Z

    const/4 v7, 0x4

    invoke-virtual {p0, v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v8

    iput-boolean v8, v1, Lorg/chromium/network/mojom/UrlRequest;->keepalive:Z

    const/4 v8, 0x5

    invoke-virtual {p0, v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v1, Lorg/chromium/network/mojom/UrlRequest;->browsingTopics:Z

    const/4 v9, 0x6

    invoke-virtual {p0, v3, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/network/mojom/UrlRequest;->adAuctionHeaders:Z

    const/4 v10, 0x7

    invoke-virtual {p0, v3, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/UrlRequest;->sharedStorageWritableEligible:Z

    const/16 v3, 0x21

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v1, Lorg/chromium/network/mojom/UrlRequest;->hasUserGesture:Z

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v1, Lorg/chromium/network/mojom/UrlRequest;->enableLoadTiming:Z

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v1, Lorg/chromium/network/mojom/UrlRequest;->enableUploadProgress:Z

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v1, Lorg/chromium/network/mojom/UrlRequest;->doNotPromptForLogin:Z

    invoke-virtual {p0, v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v1, Lorg/chromium/network/mojom/UrlRequest;->isOutermostMainFrame:Z

    invoke-virtual {p0, v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v11

    iput-boolean v11, v1, Lorg/chromium/network/mojom/UrlRequest;->upgradeIfInsecure:Z

    invoke-virtual {p0, v3, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v1, Lorg/chromium/network/mojom/UrlRequest;->isRevalidating:Z

    invoke-virtual {p0, v3, v10}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/UrlRequest;->isFetchLikeApi:Z

    const/16 v3, 0x22

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v1, Lorg/chromium/network/mojom/UrlRequest;->isFetchLaterApi:Z

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v1, Lorg/chromium/network/mojom/UrlRequest;->isFavicon:Z

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/network/mojom/UrlRequest;->isAdTagged:Z

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/network/mojom/UrlRequest;->sharedDictionaryWriterEnabled:Z

    invoke-virtual {p0, v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/network/mojom/UrlRequest;->clientSideContentDecodingEnabled:Z

    invoke-virtual {p0, v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/UrlRequest;->allowsDeviceBoundSessions:Z

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->referrerPolicy:I

    invoke-static {v3}, Lorg/chromium/network/mojom/UrlRequestReferrerPolicy;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/UrlRequest;->referrerPolicy:I

    invoke-static {v3}, Lorg/chromium/network/mojom/UrlRequestReferrerPolicy;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->referrerPolicy:I

    const/16 v3, 0x28

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->requestInitiator:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/url/mojom/Url;

    iput-object v7, v1, Lorg/chromium/network/mojom/UrlRequest;->navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

    move v7, v2

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/network/mojom/UrlRequest;->navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

    invoke-static {v8}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x38

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->isolatedWorldOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v3, 0x40

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->referrer:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x48

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/network/mojom/HttpRequestHeaders;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HttpRequestHeaders;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->headers:Lorg/chromium/network/mojom/HttpRequestHeaders;

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/network/mojom/HttpRequestHeaders;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HttpRequestHeaders;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->corsExemptHeaders:Lorg/chromium/network/mojom/HttpRequestHeaders;

    const/16 v3, 0x58

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->loadFlags:I

    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->resourceType:I

    const/16 v3, 0x60

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->priority:I

    invoke-static {v3}, Lorg/chromium/network/mojom/RequestPriority;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/UrlRequest;->priority:I

    invoke-static {v3}, Lorg/chromium/network/mojom/RequestPriority;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->priority:I

    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->corsPreflightPolicy:I

    invoke-static {v3}, Lorg/chromium/network/mojom/CorsPreflightPolicy;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/UrlRequest;->corsPreflightPolicy:I

    invoke-static {v3}, Lorg/chromium/network/mojom/CorsPreflightPolicy;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->corsPreflightPolicy:I

    const/16 v3, 0x68

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->mode:I

    invoke-static {v3}, Lorg/chromium/network/mojom/RequestMode;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/UrlRequest;->mode:I

    invoke-static {v3}, Lorg/chromium/network/mojom/RequestMode;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->mode:I

    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->credentialsMode:I

    invoke-static {v3}, Lorg/chromium/network/mojom/CredentialsMode;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/UrlRequest;->credentialsMode:I

    invoke-static {v3}, Lorg/chromium/network/mojom/CredentialsMode;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->credentialsMode:I

    const/16 v3, 0x70

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->redirectMode:I

    invoke-static {v3}, Lorg/chromium/network/mojom/RedirectMode;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/UrlRequest;->redirectMode:I

    invoke-static {v3}, Lorg/chromium/network/mojom/RedirectMode;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->redirectMode:I

    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->destination:I

    invoke-static {v3}, Lorg/chromium/network/mojom/RequestDestination;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/UrlRequest;->destination:I

    invoke-static {v3}, Lorg/chromium/network/mojom/RequestDestination;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/UrlRequest;->destination:I

    const/16 v3, 0x78

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->fetchIntegrity:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v1, Lorg/chromium/network/mojom/UrlRequest;->expectedPublicKeys:[Ljava/lang/String;

    move v7, v2

    :goto_1
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    iget-object v8, v1, Lorg/chromium/network/mojom/UrlRequest;->expectedPublicKeys:[Ljava/lang/String;

    const/16 v9, 0x8

    invoke-static {v7, v9, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x88

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/UrlRequestBody;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlRequestBody;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->requestBody:Lorg/chromium/network/mojom/UrlRequestBody;

    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->transitionType:I

    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->previewsState:I

    const/16 v0, 0x98

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->fetchWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0xa8

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->devtoolsRequestId:Ljava/lang/String;

    const/16 v0, 0xb0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->devtoolsStackId:Ljava/lang/String;

    const/16 v0, 0xb8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->originalDestination:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestDestination;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/UrlRequest;->originalDestination:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestDestination;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->originalDestination:I

    const/16 v0, 0xbc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->targetIpAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/UrlRequest;->targetIpAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->targetIpAddressSpace:I

    const/16 v0, 0xc0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/TrustedUrlRequestParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/TrustedUrlRequestParams;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->trustedParams:Lorg/chromium/network/mojom/TrustedUrlRequestParams;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->recursivePrefetchToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0xd0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/TrustTokenParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/TrustTokenParams;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->trustTokenParams:Lorg/chromium/network/mojom/TrustTokenParams;

    const/16 v0, 0xd8

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/WebBundleTokenParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/WebBundleTokenParams;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->webBundleTokenParams:Lorg/chromium/network/mojom/WebBundleTokenParams;

    const/16 v0, 0xe0

    invoke-virtual {p0, v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->devtoolsAcceptedStreamTypes:[I

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    iget-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->devtoolsAcceptedStreamTypes:[I

    array-length v5, v3

    if-ge v0, v5, :cond_3

    aget v3, v3, v0

    invoke-static {v3}, Lorg/chromium/network/mojom/SourceType;->validate(I)V

    iget-object v3, v1, Lorg/chromium/network/mojom/UrlRequest;->devtoolsAcceptedStreamTypes:[I

    aget v5, v3, v0

    invoke-static {v5}, Lorg/chromium/network/mojom/SourceType;->toKnownValue(I)I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0xe8

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetLogSource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetLogSource;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->netLogCreateInfo:Lorg/chromium/network/mojom/NetLogSource;

    const/16 v0, 0xf0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/NetLogSource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetLogSource;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->netLogReferenceInfo:Lorg/chromium/network/mojom/NetLogSource;

    const/16 v0, 0xf8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->requiredIpAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/UrlRequest;->requiredIpAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->requiredIpAddressSpace:I

    const/16 v0, 0xfc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->storageAccessApiStatus:I

    invoke-static {v0}, Lorg/chromium/network/mojom/StorageAccessApiStatus;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/UrlRequest;->storageAccessApiStatus:I

    invoke-static {v0}, Lorg/chromium/network/mojom/StorageAccessApiStatus;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->storageAccessApiStatus:I

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingSupport:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AttributionSupport;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingSupport:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AttributionSupport;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingSupport:I

    const/16 v0, 0x104

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingEligibility:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AttributionReportingEligibility;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingEligibility:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AttributionReportingEligibility;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingEligibility:I

    const/16 v0, 0x108

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingSrcToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x110

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->keepaliveToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x118

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/SocketTag;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SocketTag;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->socketTag:Lorg/chromium/network/mojom/SocketTag;

    const/16 v0, 0x120

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/PermissionsPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/PermissionsPolicy;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlRequest;->permissionsPolicy:Lorg/chromium/network/mojom/PermissionsPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/network/mojom/UrlRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->method:Ljava/lang/String;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->url:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->updateFirstPartyUrlOnRedirect:Z

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->priorityIncremental:Z

    const/4 v10, 0x1

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->originatedFromServiceWorker:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->skipServiceWorker:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->keepalive:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->browsingTopics:Z

    const/4 v5, 0x5

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->adAuctionHeaders:Z

    const/4 v6, 0x6

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->sharedStorageWritableEligible:Z

    const/4 v7, 0x7

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->hasUserGesture:Z

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->enableLoadTiming:Z

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->enableUploadProgress:Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->doNotPromptForLogin:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->isOutermostMainFrame:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->upgradeIfInsecure:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->isRevalidating:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->isFetchLikeApi:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->isFetchLaterApi:Z

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->isFavicon:Z

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->isAdTagged:Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->sharedDictionaryWriterEnabled:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->clientSideContentDecodingEnabled:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlRequest;->allowsDeviceBoundSessions:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->referrerPolicy:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->requestInitiator:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x30

    const/4 v11, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_0
    iget-object v1, p0, Lorg/chromium/network/mojom/UrlRequest;->navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

    array-length v2, v1

    if-ge v6, v2, :cond_1

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v6

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->isolatedWorldOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->referrer:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->headers:Lorg/chromium/network/mojom/HttpRequestHeaders;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->corsExemptHeaders:Lorg/chromium/network/mojom/HttpRequestHeaders;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->loadFlags:I

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->resourceType:I

    const/16 v1, 0x5c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->priority:I

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->corsPreflightPolicy:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->mode:I

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->credentialsMode:I

    const/16 v1, 0x6c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->redirectMode:I

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->destination:I

    const/16 v1, 0x74

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->fetchIntegrity:Ljava/lang/String;

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->expectedPublicKeys:[Ljava/lang/String;

    const/16 v1, 0x80

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_2
    iget-object v1, p0, Lorg/chromium/network/mojom/UrlRequest;->expectedPublicKeys:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_3

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->requestBody:Lorg/chromium/network/mojom/UrlRequestBody;

    const/16 v1, 0x88

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->transitionType:I

    const/16 v1, 0x90

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->previewsState:I

    const/16 v1, 0x94

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->throttlingProfileId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x98

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->fetchWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0xa0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->devtoolsRequestId:Ljava/lang/String;

    const/16 v1, 0xa8

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->devtoolsStackId:Ljava/lang/String;

    const/16 v1, 0xb0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->originalDestination:I

    const/16 v1, 0xb8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->targetIpAddressSpace:I

    const/16 v1, 0xbc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->trustedParams:Lorg/chromium/network/mojom/TrustedUrlRequestParams;

    const/16 v1, 0xc0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->recursivePrefetchToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->trustTokenParams:Lorg/chromium/network/mojom/TrustTokenParams;

    const/16 v1, 0xd0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->webBundleTokenParams:Lorg/chromium/network/mojom/WebBundleTokenParams;

    const/16 v1, 0xd8

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->devtoolsAcceptedStreamTypes:[I

    const/16 v1, 0xe0

    invoke-virtual {p1, v0, v1, v10, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->netLogCreateInfo:Lorg/chromium/network/mojom/NetLogSource;

    const/16 v1, 0xe8

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->netLogReferenceInfo:Lorg/chromium/network/mojom/NetLogSource;

    const/16 v1, 0xf0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->requiredIpAddressSpace:I

    const/16 v1, 0xf8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->storageAccessApiStatus:I

    const/16 v1, 0xfc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingSupport:I

    const/16 v1, 0x100

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingEligibility:I

    const/16 v1, 0x104

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->attributionReportingSrcToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x108

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->keepaliveToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x110

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlRequest;->socketTag:Lorg/chromium/network/mojom/SocketTag;

    const/16 v1, 0x118

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/UrlRequest;->permissionsPolicy:Lorg/chromium/network/mojom/PermissionsPolicy;

    const/16 v0, 0x120

    invoke-virtual {p1, p0, v0, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
