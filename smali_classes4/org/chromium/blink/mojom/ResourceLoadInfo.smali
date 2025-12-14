.class public final Lorg/chromium/blink/mojom/ResourceLoadInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public finalUrl:Lorg/chromium/url/mojom/Url;

.field public httpStatusCode:I

.field public loadTimingInfo:Lorg/chromium/network/mojom/LoadTimingInfo;

.field public method:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public netError:I

.field public networkInfo:Lorg/chromium/blink/mojom/CommonNetworkInfo;

.field public originalUrl:Lorg/chromium/url/mojom/Url;

.field public proxyChain:Lorg/chromium/network/mojom/ProxyChain;

.field public rawBodyBytes:J

.field public redirectInfoChain:[Lorg/chromium/blink/mojom/RedirectInfo;

.field public referrer:Lorg/chromium/url/mojom/Url;

.field public requestDestination:I

.field public requestId:J

.field public requestPriority:I

.field public totalReceivedBytes:J

.field public wasCached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ResourceLoadInfo;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ResourceLoadInfo;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestId:J

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->finalUrl:Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->referrer:Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->originalUrl:Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x28

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->method:Ljava/lang/String;

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestDestination:I

    invoke-static {v2}, Lorg/chromium/network/mojom/RequestDestination;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestDestination:I

    invoke-static {v2}, Lorg/chromium/network/mojom/RequestDestination;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestDestination:I

    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestPriority:I

    invoke-static {v2}, Lorg/chromium/network/mojom/RequestPriority;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestPriority:I

    invoke-static {v2}, Lorg/chromium/network/mojom/RequestPriority;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestPriority:I

    const/16 v2, 0x38

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->mimeType:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->wasCached:Z

    const/16 v2, 0x44

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->netError:I

    const/16 v2, 0x48

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/blink/mojom/CommonNetworkInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/CommonNetworkInfo;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->networkInfo:Lorg/chromium/blink/mojom/CommonNetworkInfo;

    const/16 v2, 0x50

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/ProxyChain;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ProxyChain;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->proxyChain:Lorg/chromium/network/mojom/ProxyChain;

    const/16 v2, 0x58

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/LoadTimingInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/LoadTimingInfo;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->loadTimingInfo:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v2, 0x60

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->rawBodyBytes:J

    const/16 v2, 0x68

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->totalReceivedBytes:J

    const/16 v2, 0x70

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/blink/mojom/RedirectInfo;

    iput-object v5, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->redirectInfoChain:[Lorg/chromium/blink/mojom/RedirectInfo;

    move v5, v3

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->redirectInfoChain:[Lorg/chromium/blink/mojom/RedirectInfo;

    invoke-static {v6}, Lorg/chromium/blink/mojom/RedirectInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/RedirectInfo;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ResourceLoadInfo;->httpStatusCode:I
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
    .locals 6

    sget-object v0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestId:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->finalUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->referrer:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->originalUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->method:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestDestination:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->requestPriority:I

    const/16 v1, 0x34

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->mimeType:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->wasCached:Z

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->netError:I

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->networkInfo:Lorg/chromium/blink/mojom/CommonNetworkInfo;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->proxyChain:Lorg/chromium/network/mojom/ProxyChain;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->loadTimingInfo:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->rawBodyBytes:J

    const/16 v4, 0x60

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->totalReceivedBytes:J

    const/16 v4, 0x68

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->redirectInfoChain:[Lorg/chromium/blink/mojom/RedirectInfo;

    const/16 v1, 0x70

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->redirectInfoChain:[Lorg/chromium/blink/mojom/RedirectInfo;

    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-object v4, v4, v1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p0, p0, Lorg/chromium/blink/mojom/ResourceLoadInfo;->httpStatusCode:I

    const/16 v0, 0x78

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
