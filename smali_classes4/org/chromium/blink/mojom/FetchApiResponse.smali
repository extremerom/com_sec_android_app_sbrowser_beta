.class public final Lorg/chromium/blink/mojom/FetchApiResponse;
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

.field public authChallengeInfo:Lorg/chromium/network/mojom/AuthChallengeInfo;

.field public blob:Lorg/chromium/blink/mojom/SerializedBlob;

.field public cacheStorageCacheName:Ljava/lang/String;

.field public connectionInfo:I

.field public corsExposedHeaderNames:[Ljava/lang/String;

.field public error:I

.field public hasRangeRequested:Z

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;

.field public padding:J

.field public parsedHeaders:Lorg/chromium/network/mojom/ParsedHeaders;

.field public requestIncludeCredentials:Z

.field public requestMethod:Ljava/lang/String;

.field public responseSource:I

.field public responseTime:Lorg/chromium/mojo_base/mojom/Time;

.field public responseType:I

.field public sideDataBlob:Lorg/chromium/blink/mojom/SerializedBlob;

.field public sideDataBlobForCachePut:Lorg/chromium/blink/mojom/SerializedBlob;

.field public statusCode:S

.field public statusText:Ljava/lang/String;

.field public urlList:[Lorg/chromium/url/mojom/Url;

.field public wasFetchedViaSpdy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x98

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/FetchApiResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/FetchApiResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x98

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-short p1, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->statusCode:S

    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->responseType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->padding:J

    iput p1, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->responseSource:I

    iput p1, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->error:I

    const-string v0, "unknown"

    iput-object v0, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->alpnNegotiatedProtocol:Ljava/lang/String;

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->wasFetchedViaSpdy:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->hasRangeRequested:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/FetchApiResponse;->requestIncludeCredentials:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FetchApiResponse;
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/FetchApiResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/FetchApiResponse;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/FetchApiResponse;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/url/mojom/Url;

    iput-object v6, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->urlList:[Lorg/chromium/url/mojom/Url;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->urlList:[Lorg/chromium/url/mojom/Url;

    invoke-static {v7}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v5

    iput-short v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->statusCode:S

    const/16 v5, 0x12

    invoke-virtual {p0, v5, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->wasFetchedViaSpdy:Z

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->hasRangeRequested:Z

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->requestIncludeCredentials:Z

    const/16 v5, 0x14

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    iput v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->responseType:I

    invoke-static {v5}, Lorg/chromium/network/mojom/FetchResponseType;->validate(I)V

    iget v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->responseType:I

    invoke-static {v5}, Lorg/chromium/network/mojom/FetchResponseType;->toKnownValue(I)I

    move-result v5

    iput v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->responseType:I

    const/16 v5, 0x18

    invoke-virtual {p0, v5, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->statusText:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->padding:J

    const/16 v5, 0x28

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    iput v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->responseSource:I

    invoke-static {v5}, Lorg/chromium/network/mojom/FetchResponseSource;->validate(I)V

    iget v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->responseSource:I

    invoke-static {v5}, Lorg/chromium/network/mojom/FetchResponseSource;->toKnownValue(I)I

    move-result v5

    iput v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->responseSource:I

    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    iput v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->error:I

    invoke-static {v5}, Lorg/chromium/blink/mojom/ServiceWorkerResponseError;->validate(I)V

    iget v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->error:I

    invoke-static {v5}, Lorg/chromium/blink/mojom/ServiceWorkerResponseError;->toKnownValue(I)I

    move-result v5

    iput v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->error:I

    const/16 v5, 0x30

    invoke-virtual {p0, v5, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v5, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v8

    iget v9, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v10, v9, [Ljava/lang/String;

    move v11, v2

    :goto_1
    iget v12, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v11, v12, :cond_2

    const/16 v12, 0x8

    invoke-static {v11, v12, v0, v7, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Ljava/lang/String;

    move v8, v2

    :goto_2
    iget v11, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v11, :cond_3

    const/16 v11, 0x8

    invoke-static {v8, v11, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->headers:Ljava/util/Map;

    move v3, v2

    :goto_3
    if-ge v3, v9, :cond_4

    iget-object v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->headers:Ljava/util/Map;

    aget-object v8, v10, v3

    aget-object v11, v7, v3

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/16 v3, 0x38

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->mimeType:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->requestMethod:Ljava/lang/String;

    const/16 v3, 0x48

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/blink/mojom/SerializedBlob;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SerializedBlob;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->responseTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v3, 0x58

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->cacheStorageCacheName:Ljava/lang/String;

    const/16 v3, 0x60

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->corsExposedHeaderNames:[Ljava/lang/String;

    move v5, v2

    :goto_4
    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v7, :cond_5

    iget-object v7, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->corsExposedHeaderNames:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v5, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    const/16 v0, 0x68

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SerializedBlob;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SerializedBlob;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->sideDataBlob:Lorg/chromium/blink/mojom/SerializedBlob;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SerializedBlob;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SerializedBlob;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->sideDataBlobForCachePut:Lorg/chromium/blink/mojom/SerializedBlob;

    const/16 v0, 0x78

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ParsedHeaders;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ParsedHeaders;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->parsedHeaders:Lorg/chromium/network/mojom/ParsedHeaders;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->connectionInfo:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ConnectionInfo;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->connectionInfo:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ConnectionInfo;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->connectionInfo:I

    const/16 v0, 0x88

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v0, 0x90

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/AuthChallengeInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/AuthChallengeInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FetchApiResponse;->authChallengeInfo:Lorg/chromium/network/mojom/AuthChallengeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_5
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/FetchApiResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->urlList:[Lorg/chromium/url/mojom/Url;

    const/4 v3, -0x1

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v11, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v2, v2

    invoke-virtual {v1, v2, v11, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v9, v12

    :goto_0
    iget-object v4, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->urlList:[Lorg/chromium/url/mojom/Url;

    array-length v5, v4

    if-ge v9, v5, :cond_1

    aget-object v7, v4, v9

    mul-int/lit8 v4, v9, 0x8

    const/4 v10, 0x1

    move v5, v11

    move-object v6, v2

    move v8, v12

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v9

    goto :goto_0

    :cond_1
    :goto_1
    iget-short v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->statusCode:S

    const/16 v13, 0x10

    invoke-virtual {v1, v2, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->wasFetchedViaSpdy:Z

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->hasRangeRequested:Z

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->requestIncludeCredentials:Z

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->responseType:I

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->statusText:Ljava/lang/String;

    const/16 v4, 0x18

    invoke-virtual {v1, v2, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v4, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->padding:J

    const/16 v2, 0x20

    invoke-virtual {v1, v4, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->responseSource:I

    const/16 v4, 0x28

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->error:I

    const/16 v4, 0x2c

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->headers:Ljava/util/Map;

    const/16 v4, 0x30

    if-nez v2, :cond_2

    invoke-virtual {v1, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v15

    new-array v10, v15, [Ljava/lang/String;

    new-array v9, v15, [Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v12

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v10, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v9, v5

    add-int/2addr v5, v14

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v15, v11, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v12

    :goto_3
    if-ge v8, v15, :cond_4

    aget-object v7, v10, v8

    mul-int/lit8 v4, v8, 0x8

    const/16 v17, 0x1

    move v5, v11

    move-object/from16 v6, v16

    move/from16 v18, v8

    move v8, v12

    move-object/from16 v19, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move/from16 v10, v17

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    goto :goto_3

    :cond_4
    move-object/from16 v19, v9

    invoke-virtual {v2, v15, v13, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v9, v12

    :goto_4
    if-ge v9, v15, :cond_5

    aget-object v7, v19, v9

    mul-int/lit8 v4, v9, 0x8

    const/4 v10, 0x1

    move v5, v11

    move-object v6, v2

    move v8, v12

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->mimeType:Ljava/lang/String;

    const/16 v4, 0x38

    invoke-virtual {v1, v2, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->requestMethod:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    const/16 v4, 0x48

    invoke-virtual {v1, v2, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->responseTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v4, 0x50

    invoke-virtual {v1, v2, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->cacheStorageCacheName:Ljava/lang/String;

    const/16 v4, 0x58

    invoke-virtual {v1, v2, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->corsExposedHeaderNames:[Ljava/lang/String;

    const/16 v4, 0x60

    if-nez v2, :cond_6

    invoke-virtual {v1, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v2, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v9, v12

    :goto_6
    iget-object v3, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->corsExposedHeaderNames:[Ljava/lang/String;

    array-length v4, v3

    if-ge v9, v4, :cond_7

    aget-object v7, v3, v9

    mul-int/lit8 v4, v9, 0x8

    const/4 v10, 0x1

    move v5, v11

    move-object v6, v2

    move v8, v12

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->sideDataBlob:Lorg/chromium/blink/mojom/SerializedBlob;

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->sideDataBlobForCachePut:Lorg/chromium/blink/mojom/SerializedBlob;

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->parsedHeaders:Lorg/chromium/network/mojom/ParsedHeaders;

    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->connectionInfo:I

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v3, 0x88

    invoke-virtual {v1, v2, v3, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, v0, Lorg/chromium/blink/mojom/FetchApiResponse;->authChallengeInfo:Lorg/chromium/network/mojom/AuthChallengeInfo;

    const/16 v2, 0x90

    invoke-virtual {v1, v0, v2, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
