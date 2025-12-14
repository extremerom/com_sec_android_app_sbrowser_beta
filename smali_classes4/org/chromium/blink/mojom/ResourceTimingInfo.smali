.class public final Lorg/chromium/blink/mojom/ResourceTimingInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowNegativeValues:Z

.field public allowTimingDetails:Z

.field public alpnNegotiatedProtocol:Ljava/lang/String;

.field public cacheState:I

.field public connectionInfo:Ljava/lang/String;

.field public contentEncoding:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public decodedBodySize:J

.field public didReuseConnection:Z

.field public encodedBodySize:J

.field public isSecureTransport:Z

.field public lastRedirectEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public name:Ljava/lang/String;

.field public renderBlockingStatus:Z

.field public responseEnd:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public responseStatus:S

.field public serverTiming:[Lorg/chromium/blink/mojom/ServerTimingInfo;

.field public serviceWorkerResponseSource:I

.field public serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

.field public startTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public timing:Lorg/chromium/network/mojom/LoadTimingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ResourceTimingInfo;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ResourceTimingInfo;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->name:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->startTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->connectionInfo:Ljava/lang/String;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/network/mojom/LoadTimingInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/LoadTimingInfo;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->timing:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->lastRedirectEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v3, 0x38

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->responseEnd:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->cacheState:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/CacheState;->validate(I)V

    iget v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->cacheState:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/CacheState;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->cacheState:I

    const/16 v3, 0x44

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->didReuseConnection:Z

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->isSecureTransport:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->allowTimingDetails:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->allowNegativeValues:Z

    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->renderBlockingStatus:Z

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v3

    iput-short v3, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->responseStatus:S

    const/16 v3, 0x48

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->encodedBodySize:J

    const/16 v3, 0x50

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->decodedBodySize:J

    const/16 v3, 0x58

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/ServerTimingInfo;

    iput-object v6, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serverTiming:[Lorg/chromium/blink/mojom/ServerTimingInfo;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serverTiming:[Lorg/chromium/blink/mojom/ServerTimingInfo;

    invoke-static {v7}, Lorg/chromium/blink/mojom/ServerTimingInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServerTimingInfo;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->contentType:Ljava/lang/String;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->contentEncoding:Ljava/lang/String;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serviceWorkerResponseSource:I

    invoke-static {v0}, Lorg/chromium/network/mojom/FetchResponseSource;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serviceWorkerResponseSource:I

    invoke-static {v0}, Lorg/chromium/network/mojom/FetchResponseSource;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serviceWorkerResponseSource:I
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
    .locals 7

    sget-object v0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->name:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->startTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->connectionInfo:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->timing:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->lastRedirectEndTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->responseEnd:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->cacheState:I

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->didReuseConnection:Z

    const/16 v3, 0x44

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->isSecureTransport:Z

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->allowTimingDetails:Z

    const/4 v5, 0x2

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->allowNegativeValues:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->renderBlockingStatus:Z

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-short v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->responseStatus:S

    const/16 v3, 0x46

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-wide v5, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->encodedBodySize:J

    const/16 v0, 0x48

    invoke-virtual {p1, v5, v6, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v5, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->decodedBodySize:J

    const/16 v0, 0x50

    invoke-virtual {p1, v5, v6, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serverTiming:[Lorg/chromium/blink/mojom/ServerTimingInfo;

    const/16 v3, 0x58

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serverTiming:[Lorg/chromium/blink/mojom/ServerTimingInfo;

    array-length v6, v5

    if-ge v3, v6, :cond_1

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->contentType:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->contentEncoding:Ljava/lang/String;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget p0, p0, Lorg/chromium/blink/mojom/ResourceTimingInfo;->serviceWorkerResponseSource:I

    const/16 v0, 0x78

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
