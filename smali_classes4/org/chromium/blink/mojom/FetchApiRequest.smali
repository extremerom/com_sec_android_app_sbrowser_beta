.class public final Lorg/chromium/blink/mojom/FetchApiRequest;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public attributionReportingEligibility:I

.field public attributionReportingSupport:I

.field public blob:Lorg/chromium/blink/mojom/SerializedBlob;

.field public body:Lorg/chromium/blink/mojom/FetchApiRequestBody;

.field public cacheMode:I

.field public credentialsMode:I

.field public destination:I

.field public devtoolsStackId:Ljava/lang/String;

.field public fetchWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public frameType:I

.field public headers:Lorg/chromium/blink/mojom/FetchApiRequestHeaders;

.field public integrity:Ljava/lang/String;

.field public isHistoryNavigation:Z

.field public isMainResourceLoad:Z

.field public isReload:Z

.field public keepalive:Z

.field public method:Ljava/lang/String;

.field public mode:I

.field public navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

.field public priority:I

.field public redirectMode:I

.field public referrer:Lorg/chromium/blink/mojom/Referrer;

.field public requestInitiator:Lorg/chromium/url/internal/mojom/Origin;

.field public serviceWorkerRaceNetworkRequestToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public targetAddressSpace:I

.field public trustTokenParams:Lorg/chromium/network/mojom/TrustTokenParams;

.field public url:Lorg/chromium/url/mojom/Url;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/FetchApiRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/FetchApiRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0xa0

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->mode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->isMainResourceLoad:Z

    iput v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->destination:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->frameType:I

    iput v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->credentialsMode:I

    iput v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->cacheMode:I

    iput v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->redirectMode:I

    iput p1, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->priority:I

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->keepalive:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->isReload:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->isHistoryNavigation:Z

    const/4 p1, 0x3

    iput p1, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->targetAddressSpace:I

    iput v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingEligibility:I

    const/4 p1, 0x4

    iput p1, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingSupport:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FetchApiRequest;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/FetchApiRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/FetchApiRequest;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/FetchApiRequest;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->mode:I

    invoke-static {v2}, Lorg/chromium/network/mojom/RequestMode;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->mode:I

    invoke-static {v2}, Lorg/chromium/network/mojom/RequestMode;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->mode:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->isMainResourceLoad:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->keepalive:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->isReload:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->isHistoryNavigation:Z

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->destination:I

    invoke-static {v2}, Lorg/chromium/network/mojom/RequestDestination;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->destination:I

    invoke-static {v2}, Lorg/chromium/network/mojom/RequestDestination;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->destination:I

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->frameType:I

    invoke-static {v2}, Lorg/chromium/blink/mojom/RequestContextFrameType;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->frameType:I

    invoke-static {v2}, Lorg/chromium/blink/mojom/RequestContextFrameType;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->frameType:I

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->url:Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->method:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/blink/mojom/FetchApiRequestHeaders;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FetchApiRequestHeaders;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->headers:Lorg/chromium/blink/mojom/FetchApiRequestHeaders;

    const/16 v2, 0x30

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/blink/mojom/SerializedBlob;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SerializedBlob;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    const/16 v2, 0x38

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/blink/mojom/FetchApiRequestBody;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FetchApiRequestBody;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->body:Lorg/chromium/blink/mojom/FetchApiRequestBody;

    const/16 v2, 0x40

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->requestInitiator:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v2, 0x48

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/url/mojom/Url;

    iput-object v6, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

    move v6, v3

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

    invoke-static {v7}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x50

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/Referrer;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/Referrer;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->referrer:Lorg/chromium/blink/mojom/Referrer;

    const/16 v0, 0x58

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->credentialsMode:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CredentialsMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->credentialsMode:I

    invoke-static {v0}, Lorg/chromium/network/mojom/CredentialsMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->credentialsMode:I

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->cacheMode:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/FetchCacheMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->cacheMode:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/FetchCacheMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->cacheMode:I

    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->redirectMode:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RedirectMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->redirectMode:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RedirectMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->redirectMode:I

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->priority:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestPriority;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->priority:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RequestPriority;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->priority:I

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->integrity:Ljava/lang/String;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->fetchWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x78

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->devtoolsStackId:Ljava/lang/String;

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/TrustTokenParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/TrustTokenParams;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->trustTokenParams:Lorg/chromium/network/mojom/TrustTokenParams;

    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->targetAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->targetAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->targetAddressSpace:I

    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingEligibility:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AttributionReportingEligibility;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingEligibility:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AttributionReportingEligibility;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingEligibility:I

    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingSupport:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AttributionSupport;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingSupport:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AttributionSupport;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingSupport:I

    const/16 v0, 0x98

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiRequest;->serviceWorkerRaceNetworkRequestToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 11

    sget-object v0, Lorg/chromium/blink/mojom/FetchApiRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->mode:I

    const/16 v8, 0x8

    invoke-virtual {p1, v0, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->isMainResourceLoad:Z

    const/16 v1, 0xc

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->keepalive:Z

    const/4 v10, 0x1

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->isReload:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->isHistoryNavigation:Z

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->destination:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->frameType:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->url:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->method:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->headers:Lorg/chromium/blink/mojom/FetchApiRequestHeaders;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->body:Lorg/chromium/blink/mojom/FetchApiRequestBody;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->requestInitiator:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x48

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_0
    iget-object v1, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->navigationRedirectChain:[Lorg/chromium/url/mojom/Url;

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
    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->referrer:Lorg/chromium/blink/mojom/Referrer;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->credentialsMode:I

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->cacheMode:I

    const/16 v1, 0x5c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->redirectMode:I

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->priority:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->integrity:Ljava/lang/String;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->fetchWindowId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->devtoolsStackId:Ljava/lang/String;

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->trustTokenParams:Lorg/chromium/network/mojom/TrustTokenParams;

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->targetAddressSpace:I

    const/16 v1, 0x88

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingEligibility:I

    const/16 v1, 0x8c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->attributionReportingSupport:I

    const/16 v1, 0x90

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/FetchApiRequest;->serviceWorkerRaceNetworkRequestToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x98

    invoke-virtual {p1, p0, v0, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
